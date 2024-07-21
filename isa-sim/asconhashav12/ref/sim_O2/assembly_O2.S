
sim_O2/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	316040ef          	jal	143b4 <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1f8d8 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	1c60b0ef          	jal	1b272 <_exit>

000100b0 <main>:
   100b0:	67f9                	lui	a5,0x1e
   100b2:	94478793          	addi	a5,a5,-1724 # 1d944 <__clzsi2+0x70>
   100b6:	0007a883          	lw	a7,0(a5)
   100ba:	0047a803          	lw	a6,4(a5)
   100be:	4798                	lw	a4,8(a5)
   100c0:	00c7d783          	lhu	a5,12(a5)
   100c4:	715d                	addi	sp,sp,-80
   100c6:	4635                	li	a2,13
   100c8:	4681                	li	a3,0
   100ca:	858a                	mv	a1,sp
   100cc:	0808                	addi	a0,sp,16
   100ce:	c686                	sw	ra,76(sp)
   100d0:	de4e                	sw	s3,60(sp)
   100d2:	c046                	sw	a7,0(sp)
   100d4:	c242                	sw	a6,4(sp)
   100d6:	c43a                	sw	a4,8(sp)
   100d8:	00f11623          	sh	a5,12(sp)
   100dc:	2211                	jal	101e0 <crypto_hash>
   100de:	e921                	bnez	a0,1012e <main+0x7e>
   100e0:	89aa                	mv	s3,a0
   100e2:	6579                	lui	a0,0x1e
   100e4:	858a                	mv	a1,sp
   100e6:	92850513          	addi	a0,a0,-1752 # 1d928 <__clzsi2+0x54>
   100ea:	c4a2                	sw	s0,72(sp)
   100ec:	c2a6                	sw	s1,68(sp)
   100ee:	c0ca                	sw	s2,64(sp)
   100f0:	72d030ef          	jal	1401c <printf>
   100f4:	6579                	lui	a0,0x1e
   100f6:	93450513          	addi	a0,a0,-1740 # 1d934 <__clzsi2+0x60>
   100fa:	723030ef          	jal	1401c <printf>
   100fe:	0800                	addi	s0,sp,16
   10100:	03010913          	addi	s2,sp,48
   10104:	64f9                	lui	s1,0x1e
   10106:	00044583          	lbu	a1,0(s0)
   1010a:	93c48513          	addi	a0,s1,-1732 # 1d93c <__clzsi2+0x68>
   1010e:	0405                	addi	s0,s0,1
   10110:	70d030ef          	jal	1401c <printf>
   10114:	ff2419e3          	bne	s0,s2,10106 <main+0x56>
   10118:	4529                	li	a0,10
   1011a:	735030ef          	jal	1404e <putchar>
   1011e:	4426                	lw	s0,72(sp)
   10120:	4496                	lw	s1,68(sp)
   10122:	4906                	lw	s2,64(sp)
   10124:	40b6                	lw	ra,76(sp)
   10126:	854e                	mv	a0,s3
   10128:	59f2                	lw	s3,60(sp)
   1012a:	6161                	addi	sp,sp,80
   1012c:	8082                	ret
   1012e:	f141a783          	lw	a5,-236(gp) # 1f8cc <_impure_ptr>
   10132:	6579                	lui	a0,0x1e
   10134:	4655                	li	a2,21
   10136:	47d4                	lw	a3,12(a5)
   10138:	4585                	li	a1,1
   1013a:	91050513          	addi	a0,a0,-1776 # 1d910 <__clzsi2+0x3c>
   1013e:	625030ef          	jal	13f62 <fwrite>
   10142:	4985                	li	s3,1
   10144:	b7c5                	j	10124 <main+0x74>

00010146 <register_fini>:
   10146:	00000793          	li	a5,0
   1014a:	c791                	beqz	a5,10156 <register_fini+0x10>
   1014c:	655d                	lui	a0,0x17
   1014e:	39250513          	addi	a0,a0,914 # 17392 <__libc_fini_array>
   10152:	3300406f          	j	14482 <atexit>
   10156:	8082                	ret

00010158 <_start>:
   10158:	00010197          	auipc	gp,0x10
   1015c:	86018193          	addi	gp,gp,-1952 # 1f9b8 <__global_pointer$>
   10160:	f2018513          	addi	a0,gp,-224 # 1f8d8 <__stdio_exit_handler>
   10164:	24c18613          	addi	a2,gp,588 # 1fc04 <__BSS_END__>
   10168:	8e09                	sub	a2,a2,a0
   1016a:	4581                	li	a1,0
   1016c:	1a0040ef          	jal	1430c <memset>
   10170:	00004517          	auipc	a0,0x4
   10174:	31250513          	addi	a0,a0,786 # 14482 <atexit>
   10178:	c519                	beqz	a0,10186 <_start+0x2e>
   1017a:	00007517          	auipc	a0,0x7
   1017e:	21850513          	addi	a0,a0,536 # 17392 <__libc_fini_array>
   10182:	300040ef          	jal	14482 <atexit>
   10186:	114040ef          	jal	1429a <__libc_init_array>
   1018a:	4502                	lw	a0,0(sp)
   1018c:	004c                	addi	a1,sp,4
   1018e:	4601                	li	a2,0
   10190:	3705                	jal	100b0 <main>
   10192:	b709                	j	10094 <exit>

00010194 <__do_global_dtors_aux>:
   10194:	1141                	addi	sp,sp,-16
   10196:	c422                	sw	s0,8(sp)
   10198:	f401c783          	lbu	a5,-192(gp) # 1f8f8 <completed.1>
   1019c:	c606                	sw	ra,12(sp)
   1019e:	ef99                	bnez	a5,101bc <__do_global_dtors_aux+0x28>
   101a0:	00000793          	li	a5,0
   101a4:	cb89                	beqz	a5,101b6 <__do_global_dtors_aux+0x22>
   101a6:	0001f537          	lui	a0,0x1f
   101aa:	1a850513          	addi	a0,a0,424 # 1f1a8 <__EH_FRAME_BEGIN__>
   101ae:	00000097          	auipc	ra,0x0
   101b2:	000000e7          	jalr	zero # 0 <exit-0x10094>
   101b6:	4785                	li	a5,1
   101b8:	f4f18023          	sb	a5,-192(gp) # 1f8f8 <completed.1>
   101bc:	40b2                	lw	ra,12(sp)
   101be:	4422                	lw	s0,8(sp)
   101c0:	0141                	addi	sp,sp,16
   101c2:	8082                	ret

000101c4 <frame_dummy>:
   101c4:	00000793          	li	a5,0
   101c8:	cb99                	beqz	a5,101de <frame_dummy+0x1a>
   101ca:	0001f537          	lui	a0,0x1f
   101ce:	f4418593          	addi	a1,gp,-188 # 1f8fc <object.0>
   101d2:	1a850513          	addi	a0,a0,424 # 1f1a8 <__EH_FRAME_BEGIN__>
   101d6:	00000317          	auipc	t1,0x0
   101da:	00000067          	jr	zero # 0 <exit-0x10094>
   101de:	8082                	ret

000101e0 <crypto_hash>:
   101e0:	7159                	addi	sp,sp,-112
   101e2:	d6a2                	sw	s0,108(sp)
   101e4:	d4a6                	sw	s1,104(sp)
   101e6:	d2ca                	sw	s2,100(sp)
   101e8:	d0ce                	sw	s3,96(sp)
   101ea:	ced2                	sw	s4,92(sp)
   101ec:	ccd6                	sw	s5,88(sp)
   101ee:	cada                	sw	s6,84(sp)
   101f0:	c8de                	sw	s7,80(sp)
   101f2:	c6e2                	sw	s8,76(sp)
   101f4:	c4e6                	sw	s9,72(sp)
   101f6:	c2ea                	sw	s10,68(sp)
   101f8:	c0ee                	sw	s11,64(sp)
   101fa:	da2a                	sw	a0,52(sp)
   101fc:	de2e                	sw	a1,60(sp)
   101fe:	dc32                	sw	a2,56(sp)
   10200:	8836                	mv	a6,a3
   10202:	e299                	bnez	a3,10208 <crypto_hash+0x28>
   10204:	12d0306f          	j	13b30 <crypto_hash+0x3950>
   10208:	55e2                	lw	a1,56(sp)
   1020a:	23be9437          	lui	s0,0x23be9
   1020e:	a13c4937          	lui	s2,0xa13c4
   10212:	c62e                	sw	a1,12(sp)
   10214:	55f2                	lw	a1,60(sp)
   10216:	7f523ab7          	lui	s5,0x7f523
   1021a:	d6f6a3b7          	lui	t2,0xd6f6a
   1021e:	6c764fb7          	lui	t6,0x6c764
   10222:	2ec8e4b7          	lui	s1,0x2ec8e
   10226:	c0ae0737          	lui	a4,0xc0ae0
   1022a:	738ec7b7          	lui	a5,0x738ec
   1022e:	fc653637          	lui	a2,0xfc653
   10232:	014706b7          	lui	a3,0x1470
   10236:	ca42                	sw	a6,20(sp)
   10238:	c82e                	sw	a1,16(sp)
   1023a:	d8740413          	addi	s0,s0,-633 # 23be8d87 <__BSS_END__+0x23bc9183>
   1023e:	2a290913          	addi	s2,s2,674 # a13c42a2 <__BSS_END__+0xa13a469e>
   10242:	77da8a93          	addi	s5,s5,1917 # 7f52377d <__BSS_END__+0x7f503b79>
   10246:	54d38393          	addi	t2,t2,1357 # d6f6a54d <__BSS_END__+0xd6f4a949>
   1024a:	84cf8f93          	addi	t6,t6,-1972 # 6c76384c <__BSS_END__+0x6c743c48>
   1024e:	32948493          	addi	s1,s1,809 # 2ec8e329 <__BSS_END__+0x2ec6e725>
   10252:	fa770713          	addi	a4,a4,-89 # c0adffa7 <__BSS_END__+0xc0ac03a3>
   10256:	38a78793          	addi	a5,a5,906 # 738ec38a <__BSS_END__+0x738cc786>
   1025a:	8a660613          	addi	a2,a2,-1882 # fc6528a6 <__BSS_END__+0xfc632ca2>
   1025e:	19468693          	addi	a3,a3,404 # 1470194 <__BSS_END__+0x1450590>
   10262:	4f7d                	li	t5,31
   10264:	5b61                	li	s6,-8
   10266:	4ec2                	lw	t4,16(sp)
   10268:	03800293          	li	t0,56
   1026c:	4881                	li	a7,0
   1026e:	4b81                	li	s7,0
   10270:	a821                	j	10288 <crypto_hash+0xa8>
   10272:	4801                	li	a6,0
   10274:	00a595b3          	sll	a1,a1,a0
   10278:	12e1                	addi	t0,t0,-8
   1027a:	0108e8b3          	or	a7,a7,a6
   1027e:	00bbebb3          	or	s7,s7,a1
   10282:	0e85                	addi	t4,t4,1
   10284:	03628863          	beq	t0,s6,102b4 <crypto_hash+0xd4>
   10288:	fe028513          	addi	a0,t0,-32
   1028c:	000ec583          	lbu	a1,0(t4)
   10290:	405f0333          	sub	t1,t5,t0
   10294:	fc055fe3          	bgez	a0,10272 <crypto_hash+0x92>
   10298:	0015d513          	srli	a0,a1,0x1
   1029c:	00559833          	sll	a6,a1,t0
   102a0:	006555b3          	srl	a1,a0,t1
   102a4:	12e1                	addi	t0,t0,-8
   102a6:	0108e8b3          	or	a7,a7,a6
   102aa:	00bbebb3          	or	s7,s7,a1
   102ae:	0e85                	addi	t4,t4,1
   102b0:	fd629ce3          	bne	t0,s6,10288 <crypto_hash+0xa8>
   102b4:	01f745b3          	xor	a1,a4,t6
   102b8:	8e21                	xor	a2,a2,s0
   102ba:	8cbd                	xor	s1,s1,a5
   102bc:	011649b3          	xor	s3,a2,a7
   102c0:	0b45ce93          	xori	t4,a1,180
   102c4:	fff74e13          	not	t3,a4
   102c8:	00d946b3          	xor	a3,s2,a3
   102cc:	f4b5c593          	xori	a1,a1,-181
   102d0:	0176c6b3          	xor	a3,a3,s7
   102d4:	0155f5b3          	and	a1,a1,s5
   102d8:	01de7a33          	and	s4,t3,t4
   102dc:	fff7c313          	not	t1,a5
   102e0:	fff9c893          	not	a7,s3
   102e4:	fff4c613          	not	a2,s1
   102e8:	01544533          	xor	a0,s0,s5
   102ec:	013a4e33          	xor	t3,s4,s3
   102f0:	00937333          	and	t1,t1,s1
   102f4:	fffac413          	not	s0,s5
   102f8:	fff6c813          	not	a6,a3
   102fc:	00e8f8b3          	and	a7,a7,a4
   10300:	00767633          	and	a2,a2,t2
   10304:	8f2d                	xor	a4,a4,a1
   10306:	00a8c8b3          	xor	a7,a7,a0
   1030a:	00794933          	xor	s2,s2,t2
   1030e:	8c69                	and	s0,s0,a0
   10310:	00f87833          	and	a6,a6,a5
   10314:	fff54f93          	not	t6,a0
   10318:	8e3d                	xor	a2,a2,a5
   1031a:	00d34533          	xor	a0,t1,a3
   1031e:	01c747b3          	xor	a5,a4,t3
   10322:	8e29                	xor	a2,a2,a0
   10324:	01d44433          	xor	s0,s0,t4
   10328:	85be                	mv	a1,a5
   1032a:	fff94e93          	not	t4,s2
   1032e:	00defeb3          	and	t4,t4,a3
   10332:	01d7d713          	srli	a4,a5,0x1d
   10336:	86ae                	mv	a3,a1
   10338:	00361793          	slli	a5,a2,0x3
   1033c:	058e                	slli	a1,a1,0x3
   1033e:	cc2e                	sw	a1,24(sp)
   10340:	8f5d                	or	a4,a4,a5
   10342:	d23a                	sw	a4,36(sp)
   10344:	4762                	lw	a4,24(sp)
   10346:	01284833          	xor	a6,a6,s2
   1034a:	01054db3          	xor	s11,a0,a6
   1034e:	01d65793          	srli	a5,a2,0x1d
   10352:	0076d513          	srli	a0,a3,0x7
   10356:	ce2a                	sw	a0,28(sp)
   10358:	8fd9                	or	a5,a5,a4
   1035a:	fff3c293          	not	t0,t2
   1035e:	cc3e                	sw	a5,24(sp)
   10360:	0122f2b3          	and	t0,t0,s2
   10364:	47f2                	lw	a5,28(sp)
   10366:	0092c2b3          	xor	t0,t0,s1
   1036a:	0053c333          	xor	t1,t2,t0
   1036e:	008acab3          	xor	s5,s5,s0
   10372:	013fffb3          	and	t6,t6,s3
   10376:	01961d13          	slli	s10,a2,0x19
   1037a:	015fcfb3          	xor	t6,t6,s5
   1037e:	006eceb3          	xor	t4,t4,t1
   10382:	fff44c93          	not	s9,s0
   10386:	01a7ed33          	or	s10,a5,s10
   1038a:	01969413          	slli	s0,a3,0x19
   1038e:	00765793          	srli	a5,a2,0x7
   10392:	00afd393          	srli	t2,t6,0xa
   10396:	8c5d                	or	s0,s0,a5
   10398:	016e9793          	slli	a5,t4,0x16
   1039c:	fff2ca93          	not	s5,t0
   103a0:	0077e3b3          	or	t2,a5,t2
   103a4:	00aed293          	srli	t0,t4,0xa
   103a8:	016f9793          	slli	a5,t6,0x16
   103ac:	011fd713          	srli	a4,t6,0x11
   103b0:	0057e2b3          	or	t0,a5,t0
   103b4:	00fe9793          	slli	a5,t4,0xf
   103b8:	8fd9                	or	a5,a5,a4
   103ba:	ce3e                	sw	a5,28(sp)
   103bc:	011ed713          	srli	a4,t4,0x11
   103c0:	00ff9793          	slli	a5,t6,0xf
   103c4:	8fd9                	or	a5,a5,a4
   103c6:	d43e                	sw	a5,40(sp)
   103c8:	0078d513          	srli	a0,a7,0x7
   103cc:	01981793          	slli	a5,a6,0x19
   103d0:	00785593          	srli	a1,a6,0x7
   103d4:	8d5d                	or	a0,a0,a5
   103d6:	01989793          	slli	a5,a7,0x19
   103da:	01781713          	slli	a4,a6,0x17
   103de:	8ddd                	or	a1,a1,a5
   103e0:	0098d793          	srli	a5,a7,0x9
   103e4:	8fd9                	or	a5,a5,a4
   103e6:	d63e                	sw	a5,44(sp)
   103e8:	01789b93          	slli	s7,a7,0x17
   103ec:	00985793          	srli	a5,a6,0x9
   103f0:	0177ebb3          	or	s7,a5,s7
   103f4:	001cd713          	srli	a4,s9,0x1
   103f8:	01fa9793          	slli	a5,s5,0x1f
   103fc:	01fc9993          	slli	s3,s9,0x1f
   10400:	8fd9                	or	a5,a5,a4
   10402:	001ad713          	srli	a4,s5,0x1
   10406:	00e9e9b3          	or	s3,s3,a4
   1040a:	006cda13          	srli	s4,s9,0x6
   1040e:	01aa9713          	slli	a4,s5,0x1a
   10412:	011e4c33          	xor	s8,t3,a7
   10416:	01476a33          	or	s4,a4,s4
   1041a:	006ad313          	srli	t1,s5,0x6
   1041e:	01ac9713          	slli	a4,s9,0x1a
   10422:	013c5913          	srli	s2,s8,0x13
   10426:	00676333          	or	t1,a4,t1
   1042a:	00dd9713          	slli	a4,s11,0xd
   1042e:	01276933          	or	s2,a4,s2
   10432:	013dd493          	srli	s1,s11,0x13
   10436:	00dc1713          	slli	a4,s8,0xd
   1043a:	8cd9                	or	s1,s1,a4
   1043c:	01cc5e13          	srli	t3,s8,0x1c
   10440:	004d9713          	slli	a4,s11,0x4
   10444:	d036                	sw	a3,32(sp)
   10446:	01c76e33          	or	t3,a4,t3
   1044a:	01cdd693          	srli	a3,s11,0x1c
   1044e:	004c1713          	slli	a4,s8,0x4
   10452:	8ed9                	or	a3,a3,a4
   10454:	4762                	lw	a4,24(sp)
   10456:	0147c7b3          	xor	a5,a5,s4
   1045a:	01754533          	xor	a0,a0,s7
   1045e:	8c39                	xor	s0,s0,a4
   10460:	5712                	lw	a4,36(sp)
   10462:	0069c333          	xor	t1,s3,t1
   10466:	01c94e33          	xor	t3,s2,t3
   1046a:	01a74d33          	xor	s10,a4,s10
   1046e:	4772                	lw	a4,28(sp)
   10470:	8ea5                	xor	a3,a3,s1
   10472:	0197c7b3          	xor	a5,a5,s9
   10476:	00e3c3b3          	xor	t2,t2,a4
   1047a:	5722                	lw	a4,40(sp)
   1047c:	00cd4d33          	xor	s10,s10,a2
   10480:	01f3c3b3          	xor	t2,t2,t6
   10484:	00e2c2b3          	xor	t0,t0,a4
   10488:	5732                	lw	a4,44(sp)
   1048a:	01d2c2b3          	xor	t0,t0,t4
   1048e:	01154533          	xor	a0,a0,a7
   10492:	8db9                	xor	a1,a1,a4
   10494:	5702                	lw	a4,32(sp)
   10496:	0105c5b3          	xor	a1,a1,a6
   1049a:	01534333          	xor	t1,t1,s5
   1049e:	8c39                	xor	s0,s0,a4
   104a0:	8fa1                	xor	a5,a5,s0
   104a2:	018e4e33          	xor	t3,t3,s8
   104a6:	01b6c6b3          	xor	a3,a3,s11
   104aa:	01a34333          	xor	t1,t1,s10
   104ae:	8ead                	xor	a3,a3,a1
   104b0:	00ae4e33          	xor	t3,t3,a0
   104b4:	00b2c5b3          	xor	a1,t0,a1
   104b8:	00a3c533          	xor	a0,t2,a0
   104bc:	0a57c993          	xori	s3,a5,165
   104c0:	fff44a13          	not	s4,s0
   104c4:	fffd4893          	not	a7,s10
   104c8:	fff2c713          	not	a4,t0
   104cc:	f5a7c793          	xori	a5,a5,-166
   104d0:	013a7a33          	and	s4,s4,s3
   104d4:	8f6d                	and	a4,a4,a1
   104d6:	0077f7b3          	and	a5,a5,t2
   104da:	fffe4f93          	not	t6,t3
   104de:	fff34913          	not	s2,t1
   104e2:	fff54493          	not	s1,a0
   104e6:	fff5c613          	not	a2,a1
   104ea:	0068f8b3          	and	a7,a7,t1
   104ee:	00d8c8b3          	xor	a7,a7,a3
   104f2:	00597933          	and	s2,s2,t0
   104f6:	01c4f4b3          	and	s1,s1,t3
   104fa:	fff3c813          	not	a6,t2
   104fe:	01ca4e33          	xor	t3,s4,t3
   10502:	fff6ce93          	not	t4,a3
   10506:	008fffb3          	and	t6,t6,s0
   1050a:	8e75                	and	a2,a2,a3
   1050c:	006746b3          	xor	a3,a4,t1
   10510:	0087c733          	xor	a4,a5,s0
   10514:	00afcfb3          	xor	t6,t6,a0
   10518:	01c747b3          	xor	a5,a4,t3
   1051c:	00a87833          	and	a6,a6,a0
   10520:	01a94533          	xor	a0,s2,s10
   10524:	01154533          	xor	a0,a0,a7
   10528:	843e                	mv	s0,a5
   1052a:	00564633          	xor	a2,a2,t0
   1052e:	8e35                	xor	a2,a2,a3
   10530:	fff6cc13          	not	s8,a3
   10534:	01d7d713          	srli	a4,a5,0x1d
   10538:	86a2                	mv	a3,s0
   1053a:	00351793          	slli	a5,a0,0x3
   1053e:	040e                	slli	s0,s0,0x3
   10540:	cc22                	sw	s0,24(sp)
   10542:	8f5d                	or	a4,a4,a5
   10544:	d23a                	sw	a4,36(sp)
   10546:	4762                	lw	a4,24(sp)
   10548:	01aefeb3          	and	t4,t4,s10
   1054c:	00beceb3          	xor	t4,t4,a1
   10550:	01d55793          	srli	a5,a0,0x1d
   10554:	0074c5b3          	xor	a1,s1,t2
   10558:	0076d493          	srli	s1,a3,0x7
   1055c:	ce26                	sw	s1,28(sp)
   1055e:	8fd9                	or	a5,a5,a4
   10560:	cc3e                	sw	a5,24(sp)
   10562:	47f2                	lw	a5,28(sp)
   10564:	01384833          	xor	a6,a6,s3
   10568:	01951d13          	slli	s10,a0,0x19
   1056c:	0105c5b3          	xor	a1,a1,a6
   10570:	01969413          	slli	s0,a3,0x19
   10574:	01a7ed33          	or	s10,a5,s10
   10578:	00755793          	srli	a5,a0,0x7
   1057c:	00a5d393          	srli	t2,a1,0xa
   10580:	8c5d                	or	s0,s0,a5
   10582:	01661793          	slli	a5,a2,0x16
   10586:	00a65293          	srli	t0,a2,0xa
   1058a:	0077e3b3          	or	t2,a5,t2
   1058e:	01659793          	slli	a5,a1,0x16
   10592:	0115d713          	srli	a4,a1,0x11
   10596:	0057e2b3          	or	t0,a5,t0
   1059a:	00f61793          	slli	a5,a2,0xf
   1059e:	8fd9                	or	a5,a5,a4
   105a0:	ce3e                	sw	a5,28(sp)
   105a2:	01165713          	srli	a4,a2,0x11
   105a6:	00f59793          	slli	a5,a1,0xf
   105aa:	8fd9                	or	a5,a5,a4
   105ac:	01d8cdb3          	xor	s11,a7,t4
   105b0:	d43e                	sw	a5,40(sp)
   105b2:	007fd893          	srli	a7,t6,0x7
   105b6:	019e9793          	slli	a5,t4,0x19
   105ba:	fff84c93          	not	s9,a6
   105be:	0117e8b3          	or	a7,a5,a7
   105c2:	007ed813          	srli	a6,t4,0x7
   105c6:	019f9793          	slli	a5,t6,0x19
   105ca:	017e9713          	slli	a4,t4,0x17
   105ce:	0107e833          	or	a6,a5,a6
   105d2:	009fd793          	srli	a5,t6,0x9
   105d6:	8fd9                	or	a5,a5,a4
   105d8:	d63e                	sw	a5,44(sp)
   105da:	017f9b93          	slli	s7,t6,0x17
   105de:	009ed793          	srli	a5,t4,0x9
   105e2:	0177ebb3          	or	s7,a5,s7
   105e6:	001cd713          	srli	a4,s9,0x1
   105ea:	01fc1793          	slli	a5,s8,0x1f
   105ee:	01fc9993          	slli	s3,s9,0x1f
   105f2:	8fd9                	or	a5,a5,a4
   105f4:	001c5713          	srli	a4,s8,0x1
   105f8:	00e9e9b3          	or	s3,s3,a4
   105fc:	006cda13          	srli	s4,s9,0x6
   10600:	01ac1713          	slli	a4,s8,0x1a
   10604:	01fe4ab3          	xor	s5,t3,t6
   10608:	01476a33          	or	s4,a4,s4
   1060c:	006c5313          	srli	t1,s8,0x6
   10610:	01ac9713          	slli	a4,s9,0x1a
   10614:	013ad913          	srli	s2,s5,0x13
   10618:	00676333          	or	t1,a4,t1
   1061c:	00dd9713          	slli	a4,s11,0xd
   10620:	01276933          	or	s2,a4,s2
   10624:	013dd493          	srli	s1,s11,0x13
   10628:	00da9713          	slli	a4,s5,0xd
   1062c:	8cd9                	or	s1,s1,a4
   1062e:	01cade13          	srli	t3,s5,0x1c
   10632:	004d9713          	slli	a4,s11,0x4
   10636:	d036                	sw	a3,32(sp)
   10638:	01c76e33          	or	t3,a4,t3
   1063c:	01cdd693          	srli	a3,s11,0x1c
   10640:	004a9713          	slli	a4,s5,0x4
   10644:	8ed9                	or	a3,a3,a4
   10646:	4762                	lw	a4,24(sp)
   10648:	0178c8b3          	xor	a7,a7,s7
   1064c:	0147c7b3          	xor	a5,a5,s4
   10650:	8c39                	xor	s0,s0,a4
   10652:	5712                	lw	a4,36(sp)
   10654:	01c94e33          	xor	t3,s2,t3
   10658:	8ea5                	xor	a3,a3,s1
   1065a:	01a74d33          	xor	s10,a4,s10
   1065e:	4772                	lw	a4,28(sp)
   10660:	01f8c8b3          	xor	a7,a7,t6
   10664:	0069c333          	xor	t1,s3,t1
   10668:	00e3c3b3          	xor	t2,t2,a4
   1066c:	5722                	lw	a4,40(sp)
   1066e:	0197c7b3          	xor	a5,a5,s9
   10672:	015e4e33          	xor	t3,t3,s5
   10676:	00e2c2b3          	xor	t0,t0,a4
   1067a:	5732                	lw	a4,44(sp)
   1067c:	01b6c6b3          	xor	a3,a3,s11
   10680:	00ad4d33          	xor	s10,s10,a0
   10684:	00e84833          	xor	a6,a6,a4
   10688:	5702                	lw	a4,32(sp)
   1068a:	01d84833          	xor	a6,a6,t4
   1068e:	00b3c3b3          	xor	t2,t2,a1
   10692:	8c39                	xor	s0,s0,a4
   10694:	00c2c2b3          	xor	t0,t0,a2
   10698:	0106c6b3          	xor	a3,a3,a6
   1069c:	011e4e33          	xor	t3,t3,a7
   106a0:	8fa1                	xor	a5,a5,s0
   106a2:	01834333          	xor	t1,t1,s8
   106a6:	01a34333          	xor	t1,t1,s10
   106aa:	0113c8b3          	xor	a7,t2,a7
   106ae:	0102c833          	xor	a6,t0,a6
   106b2:	0967c913          	xori	s2,a5,150
   106b6:	fff44a13          	not	s4,s0
   106ba:	fffd4993          	not	s3,s10
   106be:	fff2c713          	not	a4,t0
   106c2:	fffe4f93          	not	t6,t3
   106c6:	fff6ce93          	not	t4,a3
   106ca:	f697c793          	xori	a5,a5,-151
   106ce:	012a7a33          	and	s4,s4,s2
   106d2:	01077733          	and	a4,a4,a6
   106d6:	0077f7b3          	and	a5,a5,t2
   106da:	fff3c613          	not	a2,t2
   106de:	fff34493          	not	s1,t1
   106e2:	fff8c593          	not	a1,a7
   106e6:	fff84513          	not	a0,a6
   106ea:	0069f9b3          	and	s3,s3,t1
   106ee:	008fffb3          	and	t6,t6,s0
   106f2:	01aefeb3          	and	t4,t4,s10
   106f6:	011fcfb3          	xor	t6,t6,a7
   106fa:	010eceb3          	xor	t4,t4,a6
   106fe:	00d9c9b3          	xor	s3,s3,a3
   10702:	0054f4b3          	and	s1,s1,t0
   10706:	01c5f5b3          	and	a1,a1,t3
   1070a:	01167633          	and	a2,a2,a7
   1070e:	01ca4e33          	xor	t3,s4,t3
   10712:	8d75                	and	a0,a0,a3
   10714:	006746b3          	xor	a3,a4,t1
   10718:	0087c733          	xor	a4,a5,s0
   1071c:	01c74733          	xor	a4,a4,t3
   10720:	01264633          	xor	a2,a2,s2
   10724:	01a4c8b3          	xor	a7,s1,s10
   10728:	8972                	mv	s2,t3
   1072a:	0075c833          	xor	a6,a1,t2
   1072e:	007fd493          	srli	s1,t6,0x7
   10732:	007ed413          	srli	s0,t4,0x7
   10736:	017e9593          	slli	a1,t4,0x17
   1073a:	017f9793          	slli	a5,t6,0x17
   1073e:	00554533          	xor	a0,a0,t0
   10742:	019e9393          	slli	t2,t4,0x19
   10746:	019f9e13          	slli	t3,t6,0x19
   1074a:	009fd313          	srli	t1,t6,0x9
   1074e:	009ed293          	srli	t0,t4,0x9
   10752:	0138c8b3          	xor	a7,a7,s3
   10756:	0093e3b3          	or	t2,t2,s1
   1075a:	008e6e33          	or	t3,t3,s0
   1075e:	00b36333          	or	t1,t1,a1
   10762:	00f2e2b3          	or	t0,t0,a5
   10766:	0053c2b3          	xor	t0,t2,t0
   1076a:	006e4333          	xor	t1,t3,t1
   1076e:	01d75393          	srli	t2,a4,0x1d
   10772:	00389e13          	slli	t3,a7,0x3
   10776:	d04a                	sw	s2,32(sp)
   10778:	cc16                	sw	t0,24(sp)
   1077a:	01c3e2b3          	or	t0,t2,t3
   1077e:	00371e13          	slli	t3,a4,0x3
   10782:	01d8d393          	srli	t2,a7,0x1d
   10786:	01989a13          	slli	s4,a7,0x19
   1078a:	01c3e3b3          	or	t2,t2,t3
   1078e:	00775e13          	srli	t3,a4,0x7
   10792:	00c84833          	xor	a6,a6,a2
   10796:	8d35                	xor	a0,a0,a3
   10798:	014e6a33          	or	s4,t3,s4
   1079c:	0078da93          	srli	s5,a7,0x7
   107a0:	01971e13          	slli	t3,a4,0x19
   107a4:	ce1a                	sw	t1,28(sp)
   107a6:	01caeab3          	or	s5,s5,t3
   107aa:	00a85313          	srli	t1,a6,0xa
   107ae:	01651e13          	slli	t3,a0,0x16
   107b2:	d476                	sw	t4,40(sp)
   107b4:	01d9cdb3          	xor	s11,s3,t4
   107b8:	006e6e33          	or	t3,t3,t1
   107bc:	00a55e93          	srli	t4,a0,0xa
   107c0:	01681313          	slli	t1,a6,0x16
   107c4:	d24e                	sw	s3,36(sp)
   107c6:	01d36333          	or	t1,t1,t4
   107ca:	01185993          	srli	s3,a6,0x11
   107ce:	00f51e93          	slli	t4,a0,0xf
   107d2:	01f94cb3          	xor	s9,s2,t6
   107d6:	fff64613          	not	a2,a2
   107da:	fff6c693          	not	a3,a3
   107de:	013ee9b3          	or	s3,t4,s3
   107e2:	01155913          	srli	s2,a0,0x11
   107e6:	00f81e93          	slli	t4,a6,0xf
   107ea:	0066db93          	srli	s7,a3,0x6
   107ee:	012ee933          	or	s2,t4,s2
   107f2:	0016d413          	srli	s0,a3,0x1
   107f6:	01f61e93          	slli	t4,a2,0x1f
   107fa:	01a61593          	slli	a1,a2,0x1a
   107fe:	01f69d13          	slli	s10,a3,0x1f
   10802:	01a69c13          	slli	s8,a3,0x1a
   10806:	008ee433          	or	s0,t4,s0
   1080a:	00165493          	srli	s1,a2,0x1
   1080e:	00dc9e93          	slli	t4,s9,0xd
   10812:	00665793          	srli	a5,a2,0x6
   10816:	0175e5b3          	or	a1,a1,s7
   1081a:	013ddb93          	srli	s7,s11,0x13
   1081e:	009d64b3          	or	s1,s10,s1
   10822:	00fc67b3          	or	a5,s8,a5
   10826:	00dd9d13          	slli	s10,s11,0xd
   1082a:	013cdc13          	srli	s8,s9,0x13
   1082e:	013e4e33          	xor	t3,t3,s3
   10832:	017eebb3          	or	s7,t4,s7
   10836:	5992                	lw	s3,36(sp)
   10838:	4ef2                	lw	t4,28(sp)
   1083a:	018d6c33          	or	s8,s10,s8
   1083e:	01234333          	xor	t1,t1,s2
   10842:	4d62                	lw	s10,24(sp)
   10844:	5902                	lw	s2,32(sp)
   10846:	0153c3b3          	xor	t2,t2,s5
   1084a:	00e3c3b3          	xor	t2,t2,a4
   1084e:	013ec9b3          	xor	s3,t4,s3
   10852:	8776                	mv	a4,t4
   10854:	5ea2                	lw	t4,40(sp)
   10856:	01cdda93          	srli	s5,s11,0x1c
   1085a:	0142c2b3          	xor	t0,t0,s4
   1085e:	8fa5                	xor	a5,a5,s1
   10860:	8da1                	xor	a1,a1,s0
   10862:	004d9493          	slli	s1,s11,0x4
   10866:	012d4433          	xor	s0,s10,s2
   1086a:	004c9a13          	slli	s4,s9,0x4
   1086e:	01ccd913          	srli	s2,s9,0x1c
   10872:	0112c2b3          	xor	t0,t0,a7
   10876:	0124e4b3          	or	s1,s1,s2
   1087a:	015a6a33          	or	s4,s4,s5
   1087e:	8fb1                	xor	a5,a5,a2
   10880:	8db5                	xor	a1,a1,a3
   10882:	008c4433          	xor	s0,s8,s0
   10886:	013bcbb3          	xor	s7,s7,s3
   1088a:	010e4e33          	xor	t3,t3,a6
   1088e:	00a34333          	xor	t1,t1,a0
   10892:	0055c5b3          	xor	a1,a1,t0
   10896:	014bcbb3          	xor	s7,s7,s4
   1089a:	8c25                	xor	s0,s0,s1
   1089c:	01fd4933          	xor	s2,s10,t6
   108a0:	01d74733          	xor	a4,a4,t4
   108a4:	0077c7b3          	xor	a5,a5,t2
   108a8:	006744b3          	xor	s1,a4,t1
   108ac:	01c94933          	xor	s2,s2,t3
   108b0:	0877c713          	xori	a4,a5,135
   108b4:	fff3ca13          	not	s4,t2
   108b8:	fff2c993          	not	s3,t0
   108bc:	fffe4613          	not	a2,t3
   108c0:	fff44f93          	not	t6,s0
   108c4:	fffbce93          	not	t4,s7
   108c8:	fff5c893          	not	a7,a1
   108cc:	f787c793          	xori	a5,a5,-136
   108d0:	00ea7a33          	and	s4,s4,a4
   108d4:	00b9f9b3          	and	s3,s3,a1
   108d8:	01c7f7b3          	and	a5,a5,t3
   108dc:	fff34693          	not	a3,t1
   108e0:	fff94813          	not	a6,s2
   108e4:	fff4c513          	not	a0,s1
   108e8:	01267633          	and	a2,a2,s2
   108ec:	007fffb3          	and	t6,t6,t2
   108f0:	005efeb3          	and	t4,t4,t0
   108f4:	0068f8b3          	and	a7,a7,t1
   108f8:	012fcfb3          	xor	t6,t6,s2
   108fc:	009eceb3          	xor	t4,t4,s1
   10900:	8e39                	xor	a2,a2,a4
   10902:	8ee5                	and	a3,a3,s1
   10904:	0077c733          	xor	a4,a5,t2
   10908:	0179c4b3          	xor	s1,s3,s7
   1090c:	00887833          	and	a6,a6,s0
   10910:	01757533          	and	a0,a0,s7
   10914:	008a4433          	xor	s0,s4,s0
   10918:	0058c8b3          	xor	a7,a7,t0
   1091c:	8f21                	xor	a4,a4,s0
   1091e:	0098c8b3          	xor	a7,a7,s1
   10922:	8922                	mv	s2,s0
   10924:	89a6                	mv	s3,s1
   10926:	8ead                	xor	a3,a3,a1
   10928:	007fd493          	srli	s1,t6,0x7
   1092c:	007ed413          	srli	s0,t4,0x7
   10930:	017e9593          	slli	a1,t4,0x17
   10934:	017f9793          	slli	a5,t6,0x17
   10938:	01c84833          	xor	a6,a6,t3
   1093c:	00654533          	xor	a0,a0,t1
   10940:	019e9393          	slli	t2,t4,0x19
   10944:	019f9e13          	slli	t3,t6,0x19
   10948:	009fd313          	srli	t1,t6,0x9
   1094c:	009ed293          	srli	t0,t4,0x9
   10950:	0093e3b3          	or	t2,t2,s1
   10954:	008e6e33          	or	t3,t3,s0
   10958:	00b36333          	or	t1,t1,a1
   1095c:	00f2e2b3          	or	t0,t0,a5
   10960:	0053c2b3          	xor	t0,t2,t0
   10964:	006e4333          	xor	t1,t3,t1
   10968:	00389393          	slli	t2,a7,0x3
   1096c:	01d75e13          	srli	t3,a4,0x1d
   10970:	cc16                	sw	t0,24(sp)
   10972:	007e62b3          	or	t0,t3,t2
   10976:	01d8de13          	srli	t3,a7,0x1d
   1097a:	00371393          	slli	t2,a4,0x3
   1097e:	01989a13          	slli	s4,a7,0x19
   10982:	007e63b3          	or	t2,t3,t2
   10986:	00775e13          	srli	t3,a4,0x7
   1098a:	00c84833          	xor	a6,a6,a2
   1098e:	8d35                	xor	a0,a0,a3
   10990:	014e6a33          	or	s4,t3,s4
   10994:	0078da93          	srli	s5,a7,0x7
   10998:	01971e13          	slli	t3,a4,0x19
   1099c:	ce1a                	sw	t1,28(sp)
   1099e:	01caeab3          	or	s5,s5,t3
   109a2:	00a85313          	srli	t1,a6,0xa
   109a6:	01651e13          	slli	t3,a0,0x16
   109aa:	01d9cdb3          	xor	s11,s3,t4
   109ae:	d476                	sw	t4,40(sp)
   109b0:	006e6e33          	or	t3,t3,t1
   109b4:	00a55e93          	srli	t4,a0,0xa
   109b8:	01681313          	slli	t1,a6,0x16
   109bc:	fff64613          	not	a2,a2
   109c0:	fff6c693          	not	a3,a3
   109c4:	d24e                	sw	s3,36(sp)
   109c6:	01d36333          	or	t1,t1,t4
   109ca:	01185993          	srli	s3,a6,0x11
   109ce:	00f51e93          	slli	t4,a0,0xf
   109d2:	01f94cb3          	xor	s9,s2,t6
   109d6:	d04a                	sw	s2,32(sp)
   109d8:	01f69d13          	slli	s10,a3,0x1f
   109dc:	01a69c13          	slli	s8,a3,0x1a
   109e0:	013ee9b3          	or	s3,t4,s3
   109e4:	01155913          	srli	s2,a0,0x11
   109e8:	00f81e93          	slli	t4,a6,0xf
   109ec:	00165493          	srli	s1,a2,0x1
   109f0:	00665793          	srli	a5,a2,0x6
   109f4:	0066db93          	srli	s7,a3,0x6
   109f8:	012ee933          	or	s2,t4,s2
   109fc:	009d64b3          	or	s1,s10,s1
   10a00:	01f61e93          	slli	t4,a2,0x1f
   10a04:	00dd9d13          	slli	s10,s11,0xd
   10a08:	0016d413          	srli	s0,a3,0x1
   10a0c:	01a61593          	slli	a1,a2,0x1a
   10a10:	00fc67b3          	or	a5,s8,a5
   10a14:	013cdc13          	srli	s8,s9,0x13
   10a18:	008ee433          	or	s0,t4,s0
   10a1c:	018d6c33          	or	s8,s10,s8
   10a20:	00dc9e93          	slli	t4,s9,0xd
   10a24:	4d62                	lw	s10,24(sp)
   10a26:	0175e5b3          	or	a1,a1,s7
   10a2a:	01234333          	xor	t1,t1,s2
   10a2e:	013ddb93          	srli	s7,s11,0x13
   10a32:	5902                	lw	s2,32(sp)
   10a34:	013e4e33          	xor	t3,t3,s3
   10a38:	017eebb3          	or	s7,t4,s7
   10a3c:	5992                	lw	s3,36(sp)
   10a3e:	4ef2                	lw	t4,28(sp)
   10a40:	8fa5                	xor	a5,a5,s1
   10a42:	8da1                	xor	a1,a1,s0
   10a44:	004d9493          	slli	s1,s11,0x4
   10a48:	012d4433          	xor	s0,s10,s2
   10a4c:	01ccd913          	srli	s2,s9,0x1c
   10a50:	013ec9b3          	xor	s3,t4,s3
   10a54:	0124e4b3          	or	s1,s1,s2
   10a58:	8976                	mv	s2,t4
   10a5a:	5ea2                	lw	t4,40(sp)
   10a5c:	0153c3b3          	xor	t2,t2,s5
   10a60:	0142c2b3          	xor	t0,t0,s4
   10a64:	01cdda93          	srli	s5,s11,0x1c
   10a68:	004c9a13          	slli	s4,s9,0x4
   10a6c:	00e3c3b3          	xor	t2,t2,a4
   10a70:	0112c2b3          	xor	t0,t0,a7
   10a74:	010e4e33          	xor	t3,t3,a6
   10a78:	8db5                	xor	a1,a1,a3
   10a7a:	015a6a33          	or	s4,s4,s5
   10a7e:	01fd46b3          	xor	a3,s10,t6
   10a82:	8fb1                	xor	a5,a5,a2
   10a84:	008c4433          	xor	s0,s8,s0
   10a88:	013bcbb3          	xor	s7,s7,s3
   10a8c:	00a34333          	xor	t1,t1,a0
   10a90:	01c6c833          	xor	a6,a3,t3
   10a94:	014bcbb3          	xor	s7,s7,s4
   10a98:	8c25                	xor	s0,s0,s1
   10a9a:	01d94733          	xor	a4,s2,t4
   10a9e:	0077c7b3          	xor	a5,a5,t2
   10aa2:	0055c933          	xor	s2,a1,t0
   10aa6:	00674733          	xor	a4,a4,t1
   10aaa:	0787c493          	xori	s1,a5,120
   10aae:	fff3ca13          	not	s4,t2
   10ab2:	fff2c993          	not	s3,t0
   10ab6:	fffe4513          	not	a0,t3
   10aba:	fff44613          	not	a2,s0
   10abe:	fffbc693          	not	a3,s7
   10ac2:	fff94e93          	not	t4,s2
   10ac6:	fff84f93          	not	t6,a6
   10aca:	f877c793          	xori	a5,a5,-121
   10ace:	009a7a33          	and	s4,s4,s1
   10ad2:	01c7f7b3          	and	a5,a5,t3
   10ad6:	008fffb3          	and	t6,t6,s0
   10ada:	fff34593          	not	a1,t1
   10ade:	fff74893          	not	a7,a4
   10ae2:	0129f9b3          	and	s3,s3,s2
   10ae6:	01057533          	and	a0,a0,a6
   10aea:	00767633          	and	a2,a2,t2
   10aee:	0056f6b3          	and	a3,a3,t0
   10af2:	006efeb3          	and	t4,t4,t1
   10af6:	8eb9                	xor	a3,a3,a4
   10af8:	01064633          	xor	a2,a2,a6
   10afc:	0179c9b3          	xor	s3,s3,s7
   10b00:	008a4433          	xor	s0,s4,s0
   10b04:	01cfc833          	xor	a6,t6,t3
   10b08:	8d25                	xor	a0,a0,s1
   10b0a:	005eceb3          	xor	t4,t4,t0
   10b0e:	8df9                	and	a1,a1,a4
   10b10:	0178f8b3          	and	a7,a7,s7
   10b14:	0077c733          	xor	a4,a5,t2
   10b18:	013ece33          	xor	t3,t4,s3
   10b1c:	8f21                	xor	a4,a4,s0
   10b1e:	0125c5b3          	xor	a1,a1,s2
   10b22:	00765493          	srli	s1,a2,0x7
   10b26:	8922                	mv	s2,s0
   10b28:	01761793          	slli	a5,a2,0x17
   10b2c:	0076d413          	srli	s0,a3,0x7
   10b30:	0068c8b3          	xor	a7,a7,t1
   10b34:	01969393          	slli	t2,a3,0x19
   10b38:	00a84333          	xor	t1,a6,a0
   10b3c:	01961f93          	slli	t6,a2,0x19
   10b40:	01769813          	slli	a6,a3,0x17
   10b44:	00965e93          	srli	t4,a2,0x9
   10b48:	0096d293          	srli	t0,a3,0x9
   10b4c:	0093e3b3          	or	t2,t2,s1
   10b50:	008fefb3          	or	t6,t6,s0
   10b54:	010eeeb3          	or	t4,t4,a6
   10b58:	00f2e2b3          	or	t0,t0,a5
   10b5c:	0053c2b3          	xor	t0,t2,t0
   10b60:	01dfceb3          	xor	t4,t6,t4
   10b64:	003e1393          	slli	t2,t3,0x3
   10b68:	01d75f93          	srli	t6,a4,0x1d
   10b6c:	d216                	sw	t0,36(sp)
   10b6e:	007fe2b3          	or	t0,t6,t2
   10b72:	01de5f93          	srli	t6,t3,0x1d
   10b76:	00371393          	slli	t2,a4,0x3
   10b7a:	019e1a13          	slli	s4,t3,0x19
   10b7e:	007fe3b3          	or	t2,t6,t2
   10b82:	00775f93          	srli	t6,a4,0x7
   10b86:	00b8c8b3          	xor	a7,a7,a1
   10b8a:	014fea33          	or	s4,t6,s4
   10b8e:	007e5a93          	srli	s5,t3,0x7
   10b92:	01971f93          	slli	t6,a4,0x19
   10b96:	d476                	sw	t4,40(sp)
   10b98:	01faeab3          	or	s5,s5,t6
   10b9c:	00a35e93          	srli	t4,t1,0xa
   10ba0:	01689f93          	slli	t6,a7,0x16
   10ba4:	00d9cdb3          	xor	s11,s3,a3
   10ba8:	d036                	sw	a3,32(sp)
   10baa:	01dfefb3          	or	t6,t6,t4
   10bae:	00a8d693          	srli	a3,a7,0xa
   10bb2:	01631e93          	slli	t4,t1,0x16
   10bb6:	ce4e                	sw	s3,28(sp)
   10bb8:	00deeeb3          	or	t4,t4,a3
   10bbc:	01135993          	srli	s3,t1,0x11
   10bc0:	00f89693          	slli	a3,a7,0xf
   10bc4:	00c94cb3          	xor	s9,s2,a2
   10bc8:	fff54513          	not	a0,a0
   10bcc:	fff5c593          	not	a1,a1
   10bd0:	cc4a                	sw	s2,24(sp)
   10bd2:	0136e9b3          	or	s3,a3,s3
   10bd6:	0118d913          	srli	s2,a7,0x11
   10bda:	00f31693          	slli	a3,t1,0xf
   10bde:	0065db93          	srli	s7,a1,0x6
   10be2:	0126e933          	or	s2,a3,s2
   10be6:	0015d413          	srli	s0,a1,0x1
   10bea:	01f51693          	slli	a3,a0,0x1f
   10bee:	01a51813          	slli	a6,a0,0x1a
   10bf2:	01f59d13          	slli	s10,a1,0x1f
   10bf6:	01a59c13          	slli	s8,a1,0x1a
   10bfa:	8c55                	or	s0,s0,a3
   10bfc:	00155493          	srli	s1,a0,0x1
   10c00:	00dc9693          	slli	a3,s9,0xd
   10c04:	00655793          	srli	a5,a0,0x6
   10c08:	01786833          	or	a6,a6,s7
   10c0c:	013ddb93          	srli	s7,s11,0x13
   10c10:	009d64b3          	or	s1,s10,s1
   10c14:	00fc67b3          	or	a5,s8,a5
   10c18:	00dd9d13          	slli	s10,s11,0xd
   10c1c:	013cdc13          	srli	s8,s9,0x13
   10c20:	013fcfb3          	xor	t6,t6,s3
   10c24:	0176ebb3          	or	s7,a3,s7
   10c28:	49f2                	lw	s3,28(sp)
   10c2a:	56a2                	lw	a3,40(sp)
   10c2c:	018d6c33          	or	s8,s10,s8
   10c30:	012eceb3          	xor	t4,t4,s2
   10c34:	5d12                	lw	s10,36(sp)
   10c36:	4962                	lw	s2,24(sp)
   10c38:	0153c3b3          	xor	t2,t2,s5
   10c3c:	00e3c3b3          	xor	t2,t2,a4
   10c40:	00d9c9b3          	xor	s3,s3,a3
   10c44:	8736                	mv	a4,a3
   10c46:	5682                	lw	a3,32(sp)
   10c48:	01cdda93          	srli	s5,s11,0x1c
   10c4c:	0142c2b3          	xor	t0,t0,s4
   10c50:	8fa5                	xor	a5,a5,s1
   10c52:	01044833          	xor	a6,s0,a6
   10c56:	004d9493          	slli	s1,s11,0x4
   10c5a:	01a94433          	xor	s0,s2,s10
   10c5e:	004c9a13          	slli	s4,s9,0x4
   10c62:	01ccd913          	srli	s2,s9,0x1c
   10c66:	01c2c2b3          	xor	t0,t0,t3
   10c6a:	0124e4b3          	or	s1,s1,s2
   10c6e:	015a6a33          	or	s4,s4,s5
   10c72:	8fa9                	xor	a5,a5,a0
   10c74:	00b84833          	xor	a6,a6,a1
   10c78:	008c4433          	xor	s0,s8,s0
   10c7c:	013bcbb3          	xor	s7,s7,s3
   10c80:	006fcfb3          	xor	t6,t6,t1
   10c84:	011eceb3          	xor	t4,t4,a7
   10c88:	00584833          	xor	a6,a6,t0
   10c8c:	014bcbb3          	xor	s7,s7,s4
   10c90:	8c25                	xor	s0,s0,s1
   10c92:	01a64633          	xor	a2,a2,s10
   10c96:	8eb9                	xor	a3,a3,a4
   10c98:	0077c7b3          	xor	a5,a5,t2
   10c9c:	01f64933          	xor	s2,a2,t6
   10ca0:	01d6c4b3          	xor	s1,a3,t4
   10ca4:	0697c713          	xori	a4,a5,105
   10ca8:	fff3ca13          	not	s4,t2
   10cac:	fff2c993          	not	s3,t0
   10cb0:	ffffc513          	not	a0,t6
   10cb4:	fff44613          	not	a2,s0
   10cb8:	fffbc693          	not	a3,s7
   10cbc:	fff84e13          	not	t3,a6
   10cc0:	f967c793          	xori	a5,a5,-106
   10cc4:	00ea7a33          	and	s4,s4,a4
   10cc8:	0109f9b3          	and	s3,s3,a6
   10ccc:	01f7f7b3          	and	a5,a5,t6
   10cd0:	fffec593          	not	a1,t4
   10cd4:	fff94313          	not	t1,s2
   10cd8:	fff4c893          	not	a7,s1
   10cdc:	01257533          	and	a0,a0,s2
   10ce0:	00767633          	and	a2,a2,t2
   10ce4:	0056f6b3          	and	a3,a3,t0
   10ce8:	01de7e33          	and	t3,t3,t4
   10cec:	8ea5                	xor	a3,a3,s1
   10cee:	01264633          	xor	a2,a2,s2
   10cf2:	8d39                	xor	a0,a0,a4
   10cf4:	8de5                	and	a1,a1,s1
   10cf6:	0077c733          	xor	a4,a5,t2
   10cfa:	0179c4b3          	xor	s1,s3,s7
   10cfe:	00837333          	and	t1,t1,s0
   10d02:	0178f8b3          	and	a7,a7,s7
   10d06:	008a4433          	xor	s0,s4,s0
   10d0a:	005e4e33          	xor	t3,t3,t0
   10d0e:	8f21                	xor	a4,a4,s0
   10d10:	009e4e33          	xor	t3,t3,s1
   10d14:	8922                	mv	s2,s0
   10d16:	89a6                	mv	s3,s1
   10d18:	0105c5b3          	xor	a1,a1,a6
   10d1c:	00765493          	srli	s1,a2,0x7
   10d20:	0076d413          	srli	s0,a3,0x7
   10d24:	01769813          	slli	a6,a3,0x17
   10d28:	01761793          	slli	a5,a2,0x17
   10d2c:	01f34333          	xor	t1,t1,t6
   10d30:	01d8c8b3          	xor	a7,a7,t4
   10d34:	01969393          	slli	t2,a3,0x19
   10d38:	01961f93          	slli	t6,a2,0x19
   10d3c:	00965e93          	srli	t4,a2,0x9
   10d40:	0096d293          	srli	t0,a3,0x9
   10d44:	0093e3b3          	or	t2,t2,s1
   10d48:	008fefb3          	or	t6,t6,s0
   10d4c:	010eeeb3          	or	t4,t4,a6
   10d50:	00f2e2b3          	or	t0,t0,a5
   10d54:	0053c2b3          	xor	t0,t2,t0
   10d58:	01dfceb3          	xor	t4,t6,t4
   10d5c:	003e1393          	slli	t2,t3,0x3
   10d60:	01d75f93          	srli	t6,a4,0x1d
   10d64:	cc4a                	sw	s2,24(sp)
   10d66:	ce4e                	sw	s3,28(sp)
   10d68:	d036                	sw	a3,32(sp)
   10d6a:	d216                	sw	t0,36(sp)
   10d6c:	007fe2b3          	or	t0,t6,t2
   10d70:	01de5f93          	srli	t6,t3,0x1d
   10d74:	00371393          	slli	t2,a4,0x3
   10d78:	019e1a13          	slli	s4,t3,0x19
   10d7c:	007fe3b3          	or	t2,t6,t2
   10d80:	00775f93          	srli	t6,a4,0x7
   10d84:	00a34333          	xor	t1,t1,a0
   10d88:	00b8c8b3          	xor	a7,a7,a1
   10d8c:	014fea33          	or	s4,t6,s4
   10d90:	007e5a93          	srli	s5,t3,0x7
   10d94:	01971f93          	slli	t6,a4,0x19
   10d98:	d476                	sw	t4,40(sp)
   10d9a:	01faeab3          	or	s5,s5,t6
   10d9e:	00a35e93          	srli	t4,t1,0xa
   10da2:	01689f93          	slli	t6,a7,0x16
   10da6:	00d9cdb3          	xor	s11,s3,a3
   10daa:	01dfefb3          	or	t6,t6,t4
   10dae:	00a8d693          	srli	a3,a7,0xa
   10db2:	01631e93          	slli	t4,t1,0x16
   10db6:	01135993          	srli	s3,t1,0x11
   10dba:	00deeeb3          	or	t4,t4,a3
   10dbe:	00f89693          	slli	a3,a7,0xf
   10dc2:	00c94cb3          	xor	s9,s2,a2
   10dc6:	fff54513          	not	a0,a0
   10dca:	fff5c593          	not	a1,a1
   10dce:	0136e9b3          	or	s3,a3,s3
   10dd2:	0118d913          	srli	s2,a7,0x11
   10dd6:	00f31693          	slli	a3,t1,0xf
   10dda:	0065db93          	srli	s7,a1,0x6
   10dde:	0126e933          	or	s2,a3,s2
   10de2:	0015d413          	srli	s0,a1,0x1
   10de6:	01f51693          	slli	a3,a0,0x1f
   10dea:	01a51813          	slli	a6,a0,0x1a
   10dee:	01f59d13          	slli	s10,a1,0x1f
   10df2:	01a59c13          	slli	s8,a1,0x1a
   10df6:	8c55                	or	s0,s0,a3
   10df8:	00155493          	srli	s1,a0,0x1
   10dfc:	00dc9693          	slli	a3,s9,0xd
   10e00:	00655793          	srli	a5,a0,0x6
   10e04:	01786833          	or	a6,a6,s7
   10e08:	013ddb93          	srli	s7,s11,0x13
   10e0c:	009d64b3          	or	s1,s10,s1
   10e10:	00fc67b3          	or	a5,s8,a5
   10e14:	00dd9d13          	slli	s10,s11,0xd
   10e18:	013cdc13          	srli	s8,s9,0x13
   10e1c:	013fcfb3          	xor	t6,t6,s3
   10e20:	0176ebb3          	or	s7,a3,s7
   10e24:	49f2                	lw	s3,28(sp)
   10e26:	56a2                	lw	a3,40(sp)
   10e28:	018d6c33          	or	s8,s10,s8
   10e2c:	012eceb3          	xor	t4,t4,s2
   10e30:	5d12                	lw	s10,36(sp)
   10e32:	4962                	lw	s2,24(sp)
   10e34:	0153c3b3          	xor	t2,t2,s5
   10e38:	00e3c3b3          	xor	t2,t2,a4
   10e3c:	00d9c9b3          	xor	s3,s3,a3
   10e40:	8736                	mv	a4,a3
   10e42:	5682                	lw	a3,32(sp)
   10e44:	01cdda93          	srli	s5,s11,0x1c
   10e48:	0142c2b3          	xor	t0,t0,s4
   10e4c:	8fa5                	xor	a5,a5,s1
   10e4e:	01044833          	xor	a6,s0,a6
   10e52:	004d9493          	slli	s1,s11,0x4
   10e56:	01a94433          	xor	s0,s2,s10
   10e5a:	004c9a13          	slli	s4,s9,0x4
   10e5e:	01ccd913          	srli	s2,s9,0x1c
   10e62:	01c2c2b3          	xor	t0,t0,t3
   10e66:	0124e4b3          	or	s1,s1,s2
   10e6a:	015a6a33          	or	s4,s4,s5
   10e6e:	8fa9                	xor	a5,a5,a0
   10e70:	00b84833          	xor	a6,a6,a1
   10e74:	008c4433          	xor	s0,s8,s0
   10e78:	013bcbb3          	xor	s7,s7,s3
   10e7c:	006fcfb3          	xor	t6,t6,t1
   10e80:	011eceb3          	xor	t4,t4,a7
   10e84:	00584833          	xor	a6,a6,t0
   10e88:	8c25                	xor	s0,s0,s1
   10e8a:	014bcbb3          	xor	s7,s7,s4
   10e8e:	01a64633          	xor	a2,a2,s10
   10e92:	0077c7b3          	xor	a5,a5,t2
   10e96:	8eb9                	xor	a3,a3,a4
   10e98:	01f644b3          	xor	s1,a2,t6
   10e9c:	01d6c733          	xor	a4,a3,t4
   10ea0:	05a7c913          	xori	s2,a5,90
   10ea4:	fff3ca13          	not	s4,t2
   10ea8:	fff2c993          	not	s3,t0
   10eac:	fff44613          	not	a2,s0
   10eb0:	fffbc693          	not	a3,s7
   10eb4:	fff84e13          	not	t3,a6
   10eb8:	fa57c793          	xori	a5,a5,-91
   10ebc:	012a7a33          	and	s4,s4,s2
   10ec0:	0109f9b3          	and	s3,s3,a6
   10ec4:	ffffc513          	not	a0,t6
   10ec8:	fffec593          	not	a1,t4
   10ecc:	fff4c313          	not	t1,s1
   10ed0:	fff74893          	not	a7,a4
   10ed4:	00767633          	and	a2,a2,t2
   10ed8:	0056f6b3          	and	a3,a3,t0
   10edc:	01f7f7b3          	and	a5,a5,t6
   10ee0:	01de7e33          	and	t3,t3,t4
   10ee4:	8eb9                	xor	a3,a3,a4
   10ee6:	8e25                	xor	a2,a2,s1
   10ee8:	8d65                	and	a0,a0,s1
   10eea:	8df9                	and	a1,a1,a4
   10eec:	00837333          	and	t1,t1,s0
   10ef0:	008a4733          	xor	a4,s4,s0
   10ef4:	0178f8b3          	and	a7,a7,s7
   10ef8:	0179c433          	xor	s0,s3,s7
   10efc:	0077c7b3          	xor	a5,a5,t2
   10f00:	005e4e33          	xor	t3,t3,t0
   10f04:	8fb9                	xor	a5,a5,a4
   10f06:	008e4e33          	xor	t3,t3,s0
   10f0a:	89a2                	mv	s3,s0
   10f0c:	01254533          	xor	a0,a0,s2
   10f10:	0105c5b3          	xor	a1,a1,a6
   10f14:	893a                	mv	s2,a4
   10f16:	00765493          	srli	s1,a2,0x7
   10f1a:	0076d413          	srli	s0,a3,0x7
   10f1e:	01769813          	slli	a6,a3,0x17
   10f22:	01761713          	slli	a4,a2,0x17
   10f26:	01f34333          	xor	t1,t1,t6
   10f2a:	01d8c8b3          	xor	a7,a7,t4
   10f2e:	01969393          	slli	t2,a3,0x19
   10f32:	01961f93          	slli	t6,a2,0x19
   10f36:	00965e93          	srli	t4,a2,0x9
   10f3a:	0096d293          	srli	t0,a3,0x9
   10f3e:	0093e3b3          	or	t2,t2,s1
   10f42:	008fefb3          	or	t6,t6,s0
   10f46:	010eeeb3          	or	t4,t4,a6
   10f4a:	00e2e2b3          	or	t0,t0,a4
   10f4e:	0053c2b3          	xor	t0,t2,t0
   10f52:	01dfceb3          	xor	t4,t6,t4
   10f56:	003e1393          	slli	t2,t3,0x3
   10f5a:	01d7df93          	srli	t6,a5,0x1d
   10f5e:	d216                	sw	t0,36(sp)
   10f60:	007fe2b3          	or	t0,t6,t2
   10f64:	01de5f93          	srli	t6,t3,0x1d
   10f68:	00379393          	slli	t2,a5,0x3
   10f6c:	019e1a13          	slli	s4,t3,0x19
   10f70:	007fe3b3          	or	t2,t6,t2
   10f74:	0077df93          	srli	t6,a5,0x7
   10f78:	00a34333          	xor	t1,t1,a0
   10f7c:	00b8c8b3          	xor	a7,a7,a1
   10f80:	014fea33          	or	s4,t6,s4
   10f84:	007e5a93          	srli	s5,t3,0x7
   10f88:	01979f93          	slli	t6,a5,0x19
   10f8c:	d476                	sw	t4,40(sp)
   10f8e:	01faeab3          	or	s5,s5,t6
   10f92:	00a35e93          	srli	t4,t1,0xa
   10f96:	01689f93          	slli	t6,a7,0x16
   10f9a:	00d9cdb3          	xor	s11,s3,a3
   10f9e:	d036                	sw	a3,32(sp)
   10fa0:	01dfefb3          	or	t6,t6,t4
   10fa4:	00a8d693          	srli	a3,a7,0xa
   10fa8:	01631e93          	slli	t4,t1,0x16
   10fac:	ce4e                	sw	s3,28(sp)
   10fae:	00deeeb3          	or	t4,t4,a3
   10fb2:	01135993          	srli	s3,t1,0x11
   10fb6:	00f89693          	slli	a3,a7,0xf
   10fba:	00c94cb3          	xor	s9,s2,a2
   10fbe:	fff54513          	not	a0,a0
   10fc2:	fff5c593          	not	a1,a1
   10fc6:	cc4a                	sw	s2,24(sp)
   10fc8:	0136e9b3          	or	s3,a3,s3
   10fcc:	0118d913          	srli	s2,a7,0x11
   10fd0:	00f31693          	slli	a3,t1,0xf
   10fd4:	0065db93          	srli	s7,a1,0x6
   10fd8:	0126e933          	or	s2,a3,s2
   10fdc:	0015d413          	srli	s0,a1,0x1
   10fe0:	01f51693          	slli	a3,a0,0x1f
   10fe4:	01a51813          	slli	a6,a0,0x1a
   10fe8:	8c55                	or	s0,s0,a3
   10fea:	01786833          	or	a6,a6,s7
   10fee:	00dc9693          	slli	a3,s9,0xd
   10ff2:	013ddb93          	srli	s7,s11,0x13
   10ff6:	01f59d13          	slli	s10,a1,0x1f
   10ffa:	01a59c13          	slli	s8,a1,0x1a
   10ffe:	00155493          	srli	s1,a0,0x1
   11002:	00655713          	srli	a4,a0,0x6
   11006:	013fcfb3          	xor	t6,t6,s3
   1100a:	0176ebb3          	or	s7,a3,s7
   1100e:	49f2                	lw	s3,28(sp)
   11010:	56a2                	lw	a3,40(sp)
   11012:	009d64b3          	or	s1,s10,s1
   11016:	00ec6733          	or	a4,s8,a4
   1101a:	00dd9d13          	slli	s10,s11,0xd
   1101e:	013cdc13          	srli	s8,s9,0x13
   11022:	018d6c33          	or	s8,s10,s8
   11026:	012eceb3          	xor	t4,t4,s2
   1102a:	5d12                	lw	s10,36(sp)
   1102c:	4962                	lw	s2,24(sp)
   1102e:	01044833          	xor	a6,s0,a6
   11032:	00d9c9b3          	xor	s3,s3,a3
   11036:	00b84833          	xor	a6,a6,a1
   1103a:	85b6                	mv	a1,a3
   1103c:	5682                	lw	a3,32(sp)
   1103e:	0142c2b3          	xor	t0,t0,s4
   11042:	01a94433          	xor	s0,s2,s10
   11046:	0153c3b3          	xor	t2,t2,s5
   1104a:	01ccd913          	srli	s2,s9,0x1c
   1104e:	8f25                	xor	a4,a4,s1
   11050:	004d9493          	slli	s1,s11,0x4
   11054:	00f3c3b3          	xor	t2,t2,a5
   11058:	011eceb3          	xor	t4,t4,a7
   1105c:	01c2c7b3          	xor	a5,t0,t3
   11060:	01cdda93          	srli	s5,s11,0x1c
   11064:	008c4433          	xor	s0,s8,s0
   11068:	0124e4b3          	or	s1,s1,s2
   1106c:	004c9a13          	slli	s4,s9,0x4
   11070:	8ead                	xor	a3,a3,a1
   11072:	00f84933          	xor	s2,a6,a5
   11076:	01d6c5b3          	xor	a1,a3,t4
   1107a:	015a6a33          	or	s4,s4,s5
   1107e:	013bcbb3          	xor	s7,s7,s3
   11082:	009449b3          	xor	s3,s0,s1
   11086:	006fcfb3          	xor	t6,t6,t1
   1108a:	014bcbb3          	xor	s7,s7,s4
   1108e:	01a64633          	xor	a2,a2,s10
   11092:	8f29                	xor	a4,a4,a0
   11094:	fffec813          	not	a6,t4
   11098:	fff9c413          	not	s0,s3
   1109c:	fff94493          	not	s1,s2
   110a0:	fff5c313          	not	t1,a1
   110a4:	01f64533          	xor	a0,a2,t6
   110a8:	00774733          	xor	a4,a4,t2
   110ac:	01d4f4b3          	and	s1,s1,t4
   110b0:	01737333          	and	t1,t1,s7
   110b4:	fff7c693          	not	a3,a5
   110b8:	ffffc893          	not	a7,t6
   110bc:	fffbc293          	not	t0,s7
   110c0:	00b87833          	and	a6,a6,a1
   110c4:	00747433          	and	s0,s0,t2
   110c8:	8c29                	xor	s0,s0,a0
   110ca:	04b74a13          	xori	s4,a4,75
   110ce:	01284833          	xor	a6,a6,s2
   110d2:	fff3c613          	not	a2,t2
   110d6:	fff54e13          	not	t3,a0
   110da:	0126f6b3          	and	a3,a3,s2
   110de:	00a8f8b3          	and	a7,a7,a0
   110e2:	00f2f2b3          	and	t0,t0,a5
   110e6:	00f4c533          	xor	a0,s1,a5
   110ea:	fb474713          	xori	a4,a4,-76
   110ee:	01d347b3          	xor	a5,t1,t4
   110f2:	0176c6b3          	xor	a3,a3,s7
   110f6:	01467633          	and	a2,a2,s4
   110fa:	0107cbb3          	xor	s7,a5,a6
   110fe:	01f77733          	and	a4,a4,t6
   11102:	47b2                	lw	a5,12(sp)
   11104:	00b2c2b3          	xor	t0,t0,a1
   11108:	01364633          	xor	a2,a2,s3
   1110c:	00774733          	xor	a4,a4,t2
   11110:	00c74933          	xor	s2,a4,a2
   11114:	013e7e33          	and	t3,t3,s3
   11118:	0056c733          	xor	a4,a3,t0
   1111c:	00d543b3          	xor	t2,a0,a3
   11120:	0148c8b3          	xor	a7,a7,s4
   11124:	01fe45b3          	xor	a1,t3,t6
   11128:	ff878693          	addi	a3,a5,-8
   1112c:	87ba                	mv	a5,a4
   1112e:	0115cc33          	xor	s8,a1,a7
   11132:	fff8cd93          	not	s11,a7
   11136:	00479d13          	slli	s10,a5,0x4
   1113a:	01c7d893          	srli	a7,a5,0x1c
   1113e:	d03e                	sw	a5,32(sp)
   11140:	47b2                	lw	a5,12(sp)
   11142:	8e21                	xor	a2,a2,s0
   11144:	fff84493          	not	s1,a6
   11148:	00f6b7b3          	sltu	a5,a3,a5
   1114c:	00d71813          	slli	a6,a4,0xd
   11150:	d836                	sw	a3,48(sp)
   11152:	834d                	srli	a4,a4,0x13
   11154:	00d61693          	slli	a3,a2,0xd
   11158:	ce46                	sw	a7,28(sp)
   1115a:	8f55                	or	a4,a4,a3
   1115c:	01c65693          	srli	a3,a2,0x1c
   11160:	00dd6d33          	or	s10,s10,a3
   11164:	46f2                	lw	a3,28(sp)
   11166:	00461c93          	slli	s9,a2,0x4
   1116a:	00339f93          	slli	t6,t2,0x3
   1116e:	00dcecb3          	or	s9,s9,a3
   11172:	01d95693          	srli	a3,s2,0x1d
   11176:	00391e93          	slli	t4,s2,0x3
   1117a:	01f6efb3          	or	t6,a3,t6
   1117e:	01d3d693          	srli	a3,t2,0x1d
   11182:	01939a13          	slli	s4,t2,0x19
   11186:	c63e                	sw	a5,12(sp)
   11188:	01d6eeb3          	or	t4,a3,t4
   1118c:	01365793          	srli	a5,a2,0x13
   11190:	00795693          	srli	a3,s2,0x7
   11194:	00f867b3          	or	a5,a6,a5
   11198:	0146e833          	or	a6,a3,s4
   1119c:	0073da13          	srli	s4,t2,0x7
   111a0:	01991693          	slli	a3,s2,0x19
   111a4:	00da66b3          	or	a3,s4,a3
   111a8:	001dd593          	srli	a1,s11,0x1
   111ac:	01f49a13          	slli	s4,s1,0x1f
   111b0:	0014de13          	srli	t3,s1,0x1
   111b4:	00ba65b3          	or	a1,s4,a1
   111b8:	01fd9a13          	slli	s4,s11,0x1f
   111bc:	01a49a93          	slli	s5,s1,0x1a
   111c0:	01ca6e33          	or	t3,s4,t3
   111c4:	006dda13          	srli	s4,s11,0x6
   111c8:	cc36                	sw	a3,24(sp)
   111ca:	014aeab3          	or	s5,s5,s4
   111ce:	0064d693          	srli	a3,s1,0x6
   111d2:	01ad9a13          	slli	s4,s11,0x1a
   111d6:	00da6a33          	or	s4,s4,a3
   111da:	d252                	sw	s4,36(sp)
   111dc:	00ac5893          	srli	a7,s8,0xa
   111e0:	016b9a13          	slli	s4,s7,0x16
   111e4:	011a68b3          	or	a7,s4,a7
   111e8:	00abd313          	srli	t1,s7,0xa
   111ec:	016c1a13          	slli	s4,s8,0x16
   111f0:	006a6333          	or	t1,s4,t1
   111f4:	00fb9693          	slli	a3,s7,0xf
   111f8:	011c5a13          	srli	s4,s8,0x11
   111fc:	ce42                	sw	a6,28(sp)
   111fe:	0146ea33          	or	s4,a3,s4
   11202:	011bd813          	srli	a6,s7,0x11
   11206:	00fc1693          	slli	a3,s8,0xf
   1120a:	0106e833          	or	a6,a3,a6
   1120e:	00745513          	srli	a0,s0,0x7
   11212:	d442                	sw	a6,40(sp)
   11214:	01929813          	slli	a6,t0,0x19
   11218:	00a86533          	or	a0,a6,a0
   1121c:	0072d693          	srli	a3,t0,0x7
   11220:	01941813          	slli	a6,s0,0x19
   11224:	00d86833          	or	a6,a6,a3
   11228:	d642                	sw	a6,44(sp)
   1122a:	01729693          	slli	a3,t0,0x17
   1122e:	00945813          	srli	a6,s0,0x9
   11232:	01741993          	slli	s3,s0,0x17
   11236:	00d86833          	or	a6,a6,a3
   1123a:	0092d693          	srli	a3,t0,0x9
   1123e:	0136e9b3          	or	s3,a3,s3
   11242:	01a7c7b3          	xor	a5,a5,s10
   11246:	01974733          	xor	a4,a4,s9
   1124a:	46d2                	lw	a3,20(sp)
   1124c:	4cf2                	lw	s9,28(sp)
   1124e:	0155c5b3          	xor	a1,a1,s5
   11252:	01354533          	xor	a0,a0,s3
   11256:	5a92                	lw	s5,36(sp)
   11258:	4d62                	lw	s10,24(sp)
   1125a:	0148c8b3          	xor	a7,a7,s4
   1125e:	8e3d                	xor	a2,a2,a5
   11260:	5a22                	lw	s4,40(sp)
   11262:	49b2                	lw	s3,12(sp)
   11264:	5782                	lw	a5,32(sp)
   11266:	16fd                	addi	a3,a3,-1
   11268:	019fcfb3          	xor	t6,t6,s9
   1126c:	8c29                	xor	s0,s0,a0
   1126e:	4542                	lw	a0,16(sp)
   11270:	01434333          	xor	t1,t1,s4
   11274:	99b6                	add	s3,s3,a3
   11276:	5a32                	lw	s4,44(sp)
   11278:	00f746b3          	xor	a3,a4,a5
   1127c:	007fc7b3          	xor	a5,t6,t2
   11280:	01b5cfb3          	xor	t6,a1,s11
   11284:	55c2                	lw	a1,48(sp)
   11286:	0521                	addi	a0,a0,8
   11288:	015e4e33          	xor	t3,t3,s5
   1128c:	01aeceb3          	xor	t4,t4,s10
   11290:	010a4833          	xor	a6,s4,a6
   11294:	ca4e                	sw	s3,20(sp)
   11296:	c82a                	sw	a0,16(sp)
   11298:	c62e                	sw	a1,12(sp)
   1129a:	012ec733          	xor	a4,t4,s2
   1129e:	009e44b3          	xor	s1,t3,s1
   112a2:	0188cab3          	xor	s5,a7,s8
   112a6:	017343b3          	xor	t2,t1,s7
   112aa:	00584933          	xor	s2,a6,t0
   112ae:	00098463          	beqz	s3,112b6 <crypto_hash+0x10d6>
   112b2:	fb5fe06f          	j	10266 <crypto_hash+0x86>
   112b6:	451d                	li	a0,7
   112b8:	00b57463          	bgeu	a0,a1,112c0 <crypto_hash+0x10e0>
   112bc:	fabfe06f          	j	10266 <crypto_hash+0x86>
   112c0:	5e62                	lw	t3,56(sp)
   112c2:	0123c333          	xor	t1,t2,s2
   112c6:	fff3c813          	not	a6,t2
   112ca:	5ef2                	lw	t4,60(sp)
   112cc:	c81a                	sw	t1,16(sp)
   112ce:	00687833          	and	a6,a6,t1
   112d2:	ff8e0313          	addi	t1,t3,-8
   112d6:	ff837313          	andi	t1,t1,-8
   112da:	0321                	addi	t1,t1,8 # 101de <frame_dummy+0x1a>
   112dc:	01f745b3          	xor	a1,a4,t6
   112e0:	9376                	add	t1,t1,t4
   112e2:	008acfb3          	xor	t6,s5,s0
   112e6:	fffac893          	not	a7,s5
   112ea:	0097c533          	xor	a0,a5,s1
   112ee:	01f8f8b3          	and	a7,a7,t6
   112f2:	0f05c493          	xori	s1,a1,240
   112f6:	de1a                	sw	t1,60(sp)
   112f8:	5362                	lw	t1,56(sp)
   112fa:	0098c8b3          	xor	a7,a7,s1
   112fe:	00a84833          	xor	a6,a6,a0
   11302:	fff54e13          	not	t3,a0
   11306:	fff8cc13          	not	s8,a7
   1130a:	fff84d93          	not	s11,a6
   1130e:	fff74293          	not	t0,a4
   11312:	007e7e33          	and	t3,t3,t2
   11316:	f0f5c593          	xori	a1,a1,-241
   1131a:	00737e93          	andi	t4,t1,7
   1131e:	0155f5b3          	and	a1,a1,s5
   11322:	0092f333          	and	t1,t0,s1
   11326:	001c5d13          	srli	s10,s8,0x1
   1132a:	01fc1c93          	slli	s9,s8,0x1f
   1132e:	001ddb13          	srli	s6,s11,0x1
   11332:	00fe42b3          	xor	t0,t3,a5
   11336:	01fd9e13          	slli	t3,s11,0x1f
   1133a:	01ad9b93          	slli	s7,s11,0x1a
   1133e:	006c5f13          	srli	t5,s8,0x6
   11342:	00e5c4b3          	xor	s1,a1,a4
   11346:	01ae6d33          	or	s10,t3,s10
   1134a:	45c2                	lw	a1,16(sp)
   1134c:	016cee33          	or	t3,s9,s6
   11350:	01ac1a13          	slli	s4,s8,0x1a
   11354:	006dd993          	srli	s3,s11,0x6
   11358:	dc76                	sw	t4,56(sp)
   1135a:	cc72                	sw	t3,24(sp)
   1135c:	fff7ce93          	not	t4,a5
   11360:	01ebee33          	or	t3,s7,t5
   11364:	00aef533          	and	a0,t4,a0
   11368:	c672                	sw	t3,12(sp)
   1136a:	ffffce93          	not	t4,t6
   1136e:	013a6e33          	or	t3,s4,s3
   11372:	ca76                	sw	t4,20(sp)
   11374:	fff5c593          	not	a1,a1
   11378:	ce72                	sw	t3,28(sp)
   1137a:	011ac9b3          	xor	s3,s5,a7
   1137e:	0103ca33          	xor	s4,t2,a6
   11382:	8c31                	xor	s0,s0,a2
   11384:	0126c933          	xor	s2,a3,s2
   11388:	56e2                	lw	a3,56(sp)
   1138a:	e299                	bnez	a3,11390 <crypto_hash+0x11b0>
   1138c:	79c0206f          	j	13b28 <crypto_hash+0x3948>
   11390:	5872                	lw	a6,60(sp)
   11392:	4cb2                	lw	s9,12(sp)
   11394:	4e81                	li	t4,0
   11396:	00d80bb3          	add	s7,a6,a3
   1139a:	4e01                	li	t3,0
   1139c:	03800693          	li	a3,56
   113a0:	4b7d                	li	s6,31
   113a2:	a821                	j	113ba <crypto_hash+0x11da>
   113a4:	4f01                	li	t5,0
   113a6:	01161633          	sll	a2,a2,a7
   113aa:	0805                	addi	a6,a6,1
   113ac:	01eeeeb3          	or	t4,t4,t5
   113b0:	00ce6e33          	or	t3,t3,a2
   113b4:	16e1                	addi	a3,a3,-8
   113b6:	030b8863          	beq	s7,a6,113e6 <crypto_hash+0x1206>
   113ba:	fe068893          	addi	a7,a3,-32
   113be:	00084603          	lbu	a2,0(a6)
   113c2:	40db03b3          	sub	t2,s6,a3
   113c6:	fc08dfe3          	bgez	a7,113a4 <crypto_hash+0x11c4>
   113ca:	00165893          	srli	a7,a2,0x1
   113ce:	00d61f33          	sll	t5,a2,a3
   113d2:	0805                	addi	a6,a6,1
   113d4:	0078d633          	srl	a2,a7,t2
   113d8:	01eeeeb3          	or	t4,t4,t5
   113dc:	00ce6e33          	or	t3,t3,a2
   113e0:	16e1                	addi	a3,a3,-8
   113e2:	fd0b9ce3          	bne	s7,a6,113ba <crypto_hash+0x11da>
   113e6:	c666                	sw	s9,12(sp)
   113e8:	5662                	lw	a2,56(sp)
   113ea:	469d                	li	a3,7
   113ec:	8e91                	sub	a3,a3,a2
   113ee:	068e                	slli	a3,a3,0x3
   113f0:	fe068813          	addi	a6,a3,-32
   113f4:	00085463          	bgez	a6,113fc <crypto_hash+0x121c>
   113f8:	7160206f          	j	13b0e <crypto_hash+0x392e>
   113fc:	08000613          	li	a2,128
   11400:	01061633          	sll	a2,a2,a6
   11404:	4681                	li	a3,0
   11406:	01264633          	xor	a2,a2,s2
   1140a:	01c64633          	xor	a2,a2,t3
   1140e:	fff64e13          	not	t3,a2
   11412:	00fe7e33          	and	t3,t3,a5
   11416:	47c2                	lw	a5,16(sp)
   11418:	8ea1                	xor	a3,a3,s0
   1141a:	01d6c6b3          	xor	a3,a3,t4
   1141e:	00fe4e33          	xor	t3,t3,a5
   11422:	47d2                	lw	a5,20(sp)
   11424:	0066c8b3          	xor	a7,a3,t1
   11428:	0098c3b3          	xor	t2,a7,s1
   1142c:	00a64833          	xor	a6,a2,a0
   11430:	fff6ce93          	not	t4,a3
   11434:	005842b3          	xor	t0,a6,t0
   11438:	00eefeb3          	and	t4,t4,a4
   1143c:	00f6f733          	and	a4,a3,a5
   11440:	01d3d693          	srli	a3,t2,0x1d
   11444:	01374733          	xor	a4,a4,s3
   11448:	00b677b3          	and	a5,a2,a1
   1144c:	00329993          	slli	s3,t0,0x3
   11450:	85b6                	mv	a1,a3
   11452:	0135e9b3          	or	s3,a1,s3
   11456:	01d2d313          	srli	t1,t0,0x1d
   1145a:	00339593          	slli	a1,t2,0x3
   1145e:	0073d913          	srli	s2,t2,0x7
   11462:	00b36333          	or	t1,t1,a1
   11466:	01929593          	slli	a1,t0,0x19
   1146a:	0147c7b3          	xor	a5,a5,s4
   1146e:	01939b93          	slli	s7,t2,0x19
   11472:	00b96933          	or	s2,s2,a1
   11476:	0072d593          	srli	a1,t0,0x7
   1147a:	01feceb3          	xor	t4,t4,t6
   1147e:	0175ebb3          	or	s7,a1,s7
   11482:	00a75f93          	srli	t6,a4,0xa
   11486:	01679593          	slli	a1,a5,0x16
   1148a:	00a7da93          	srli	s5,a5,0xa
   1148e:	01f5efb3          	or	t6,a1,t6
   11492:	01671593          	slli	a1,a4,0x16
   11496:	0155eab3          	or	s5,a1,s5
   1149a:	01175b13          	srli	s6,a4,0x11
   1149e:	00f79593          	slli	a1,a5,0xf
   114a2:	01c84833          	xor	a6,a6,t3
   114a6:	0165eb33          	or	s6,a1,s6
   114aa:	0117df13          	srli	t5,a5,0x11
   114ae:	00f71593          	slli	a1,a4,0xf
   114b2:	01c85493          	srli	s1,a6,0x1c
   114b6:	007eda13          	srli	s4,t4,0x7
   114ba:	01e5ef33          	or	t5,a1,t5
   114be:	019e1593          	slli	a1,t3,0x19
   114c2:	8ca6                	mv	s9,s1
   114c4:	0145ea33          	or	s4,a1,s4
   114c8:	007e5493          	srli	s1,t3,0x7
   114cc:	019e9593          	slli	a1,t4,0x19
   114d0:	8ccd                	or	s1,s1,a1
   114d2:	c826                	sw	s1,16(sp)
   114d4:	009ed593          	srli	a1,t4,0x9
   114d8:	017e1693          	slli	a3,t3,0x17
   114dc:	0129c933          	xor	s2,s3,s2
   114e0:	49c2                	lw	s3,16(sp)
   114e2:	009e5613          	srli	a2,t3,0x9
   114e6:	8ecd                	or	a3,a3,a1
   114e8:	017e9593          	slli	a1,t4,0x17
   114ec:	01d8c8b3          	xor	a7,a7,t4
   114f0:	8e4d                	or	a2,a2,a1
   114f2:	00d9c6b3          	xor	a3,s3,a3
   114f6:	0138d593          	srli	a1,a7,0x13
   114fa:	00d81493          	slli	s1,a6,0xd
   114fe:	016fcfb3          	xor	t6,t6,s6
   11502:	01eacf33          	xor	t5,s5,t5
   11506:	00ca4633          	xor	a2,s4,a2
   1150a:	4a62                	lw	s4,24(sp)
   1150c:	00efcfb3          	xor	t6,t6,a4
   11510:	00ff4f33          	xor	t5,t5,a5
   11514:	01c6c733          	xor	a4,a3,t3
   11518:	47b2                	lw	a5,12(sp)
   1151a:	46f2                	lw	a3,28(sp)
   1151c:	8ccd                	or	s1,s1,a1
   1151e:	00d89413          	slli	s0,a7,0xd
   11522:	01385593          	srli	a1,a6,0x13
   11526:	8c4d                	or	s0,s0,a1
   11528:	00481513          	slli	a0,a6,0x4
   1152c:	01c8d593          	srli	a1,a7,0x1c
   11530:	01ac49b3          	xor	s3,s8,s10
   11534:	8d4d                	or	a0,a0,a1
   11536:	01734333          	xor	t1,t1,s7
   1153a:	85e6                	mv	a1,s9
   1153c:	014dca33          	xor	s4,s11,s4
   11540:	00489c93          	slli	s9,a7,0x4
   11544:	00734333          	xor	t1,t1,t2
   11548:	00594933          	xor	s2,s2,t0
   1154c:	00da4a33          	xor	s4,s4,a3
   11550:	00bce5b3          	or	a1,s9,a1
   11554:	8d25                	xor	a0,a0,s1
   11556:	00f9c7b3          	xor	a5,s3,a5
   1155a:	01d64633          	xor	a2,a2,t4
   1155e:	01154533          	xor	a0,a0,a7
   11562:	0067c7b3          	xor	a5,a5,t1
   11566:	012a48b3          	xor	a7,s4,s2
   1156a:	8da1                	xor	a1,a1,s0
   1156c:	00c543b3          	xor	t2,a0,a2
   11570:	0e17ca13          	xori	s4,a5,225
   11574:	0105c5b3          	xor	a1,a1,a6
   11578:	fff94693          	not	a3,s2
   1157c:	00cfc833          	xor	a6,t6,a2
   11580:	fff8ce93          	not	t4,a7
   11584:	fff34613          	not	a2,t1
   11588:	f1e7c793          	xori	a5,a5,-226
   1158c:	00e5c2b3          	xor	t0,a1,a4
   11590:	01467633          	and	a2,a2,s4
   11594:	00ef4733          	xor	a4,t5,a4
   11598:	0116f6b3          	and	a3,a3,a7
   1159c:	01f7f7b3          	and	a5,a5,t6
   115a0:	01eefeb3          	and	t4,t4,t5
   115a4:	00764633          	xor	a2,a2,t2
   115a8:	0056c6b3          	xor	a3,a3,t0
   115ac:	fff3c493          	not	s1,t2
   115b0:	fff74993          	not	s3,a4
   115b4:	0067c7b3          	xor	a5,a5,t1
   115b8:	012eceb3          	xor	t4,t4,s2
   115bc:	8fb1                	xor	a5,a5,a2
   115be:	00deceb3          	xor	t4,t4,a3
   115c2:	0059f9b3          	and	s3,s3,t0
   115c6:	ffffc513          	not	a0,t6
   115ca:	fff84e13          	not	t3,a6
   115ce:	0064f4b3          	and	s1,s1,t1
   115d2:	0104c4b3          	xor	s1,s1,a6
   115d6:	01e9c333          	xor	t1,s3,t5
   115da:	ffff4593          	not	a1,t5
   115de:	01057533          	and	a0,a0,a6
   115e2:	007e7e33          	and	t3,t3,t2
   115e6:	003e9813          	slli	a6,t4,0x3
   115ea:	01d7df13          	srli	t5,a5,0x1d
   115ee:	8df9                	and	a1,a1,a4
   115f0:	01fe4e33          	xor	t3,t3,t6
   115f4:	010f6f33          	or	t5,t5,a6
   115f8:	01dedf93          	srli	t6,t4,0x1d
   115fc:	00379813          	slli	a6,a5,0x3
   11600:	01454533          	xor	a0,a0,s4
   11604:	0115c5b3          	xor	a1,a1,a7
   11608:	0077d993          	srli	s3,a5,0x7
   1160c:	010fefb3          	or	t6,t6,a6
   11610:	019e9813          	slli	a6,t4,0x19
   11614:	00ae4e33          	xor	t3,t3,a0
   11618:	00b34333          	xor	t1,t1,a1
   1161c:	0109e9b3          	or	s3,s3,a6
   11620:	007eda13          	srli	s4,t4,0x7
   11624:	01979813          	slli	a6,a5,0x19
   11628:	010a6a33          	or	s4,s4,a6
   1162c:	00ae5a93          	srli	s5,t3,0xa
   11630:	01631813          	slli	a6,t1,0x16
   11634:	01586ab3          	or	s5,a6,s5
   11638:	00a35b93          	srli	s7,t1,0xa
   1163c:	016e1813          	slli	a6,t3,0x16
   11640:	01786bb3          	or	s7,a6,s7
   11644:	c65e                	sw	s7,12(sp)
   11646:	00f31813          	slli	a6,t1,0xf
   1164a:	fff2c413          	not	s0,t0
   1164e:	011e5b93          	srli	s7,t3,0x11
   11652:	01786bb3          	or	s7,a6,s7
   11656:	01247433          	and	s0,s0,s2
   1165a:	c85e                	sw	s7,16(sp)
   1165c:	8c39                	xor	s0,s0,a4
   1165e:	00fe1813          	slli	a6,t3,0xf
   11662:	01135b93          	srli	s7,t1,0x11
   11666:	01786bb3          	or	s7,a6,s7
   1166a:	0074dd13          	srli	s10,s1,0x7
   1166e:	01941813          	slli	a6,s0,0x19
   11672:	01a86d33          	or	s10,a6,s10
   11676:	00745c93          	srli	s9,s0,0x7
   1167a:	01949813          	slli	a6,s1,0x19
   1167e:	01986cb3          	or	s9,a6,s9
   11682:	01741293          	slli	t0,s0,0x17
   11686:	0094d813          	srli	a6,s1,0x9
   1168a:	fff54513          	not	a0,a0
   1168e:	fff5c593          	not	a1,a1
   11692:	01749393          	slli	t2,s1,0x17
   11696:	005862b3          	or	t0,a6,t0
   1169a:	00945813          	srli	a6,s0,0x9
   1169e:	00155c13          	srli	s8,a0,0x1
   116a2:	007863b3          	or	t2,a6,t2
   116a6:	01f59813          	slli	a6,a1,0x1f
   116aa:	ca5e                	sw	s7,20(sp)
   116ac:	01886c33          	or	s8,a6,s8
   116b0:	0015db93          	srli	s7,a1,0x1
   116b4:	01f51813          	slli	a6,a0,0x1f
   116b8:	01786bb3          	or	s7,a6,s7
   116bc:	00655713          	srli	a4,a0,0x6
   116c0:	01a59813          	slli	a6,a1,0x1a
   116c4:	8e25                	xor	a2,a2,s1
   116c6:	8ea1                	xor	a3,a3,s0
   116c8:	00e86733          	or	a4,a6,a4
   116cc:	0065d913          	srli	s2,a1,0x6
   116d0:	01a51813          	slli	a6,a0,0x1a
   116d4:	0136d893          	srli	a7,a3,0x13
   116d8:	01365b13          	srli	s6,a2,0x13
   116dc:	01286933          	or	s2,a6,s2
   116e0:	00d69813          	slli	a6,a3,0xd
   116e4:	01686b33          	or	s6,a6,s6
   116e8:	8dc6                	mv	s11,a7
   116ea:	00d61813          	slli	a6,a2,0xd
   116ee:	013f4f33          	xor	t5,t5,s3
   116f2:	49c2                	lw	s3,16(sp)
   116f4:	01b86db3          	or	s11,a6,s11
   116f8:	01c65893          	srli	a7,a2,0x1c
   116fc:	00469813          	slli	a6,a3,0x4
   11700:	cc3a                	sw	a4,24(sp)
   11702:	011868b3          	or	a7,a6,a7
   11706:	00461713          	slli	a4,a2,0x4
   1170a:	01c6d813          	srli	a6,a3,0x1c
   1170e:	01076833          	or	a6,a4,a6
   11712:	014fcfb3          	xor	t6,t6,s4
   11716:	4762                	lw	a4,24(sp)
   11718:	4a32                	lw	s4,12(sp)
   1171a:	013ac9b3          	xor	s3,s5,s3
   1171e:	4ad2                	lw	s5,20(sp)
   11720:	005cc2b3          	xor	t0,s9,t0
   11724:	00ec4733          	xor	a4,s8,a4
   11728:	015a4a33          	xor	s4,s4,s5
   1172c:	007d43b3          	xor	t2,s10,t2
   11730:	011b48b3          	xor	a7,s6,a7
   11734:	010dc833          	xor	a6,s11,a6
   11738:	00ffcfb3          	xor	t6,t6,a5
   1173c:	006a4a33          	xor	s4,s4,t1
   11740:	0093c3b3          	xor	t2,t2,s1
   11744:	0082c333          	xor	t1,t0,s0
   11748:	00a747b3          	xor	a5,a4,a0
   1174c:	012bc933          	xor	s2,s7,s2
   11750:	00c8c8b3          	xor	a7,a7,a2
   11754:	00d84833          	xor	a6,a6,a3
   11758:	01df4f33          	xor	t5,t5,t4
   1175c:	0078c8b3          	xor	a7,a7,t2
   11760:	00684833          	xor	a6,a6,t1
   11764:	01f7c7b3          	xor	a5,a5,t6
   11768:	00b94933          	xor	s2,s2,a1
   1176c:	01c9c9b3          	xor	s3,s3,t3
   11770:	006a4733          	xor	a4,s4,t1
   11774:	01e94933          	xor	s2,s2,t5
   11778:	0d27c293          	xori	t0,a5,210
   1177c:	ffffc493          	not	s1,t6
   11780:	fff8c613          	not	a2,a7
   11784:	fff84693          	not	a3,a6
   11788:	f2d7c793          	xori	a5,a5,-211
   1178c:	0079c3b3          	xor	t2,s3,t2
   11790:	0137f7b3          	and	a5,a5,s3
   11794:	ffff4413          	not	s0,t5
   11798:	fff9c513          	not	a0,s3
   1179c:	fffa4593          	not	a1,s4
   117a0:	fff94e13          	not	t3,s2
   117a4:	fff74e93          	not	t4,a4
   117a8:	0054f4b3          	and	s1,s1,t0
   117ac:	01f67633          	and	a2,a2,t6
   117b0:	01e6f6b3          	and	a3,a3,t5
   117b4:	00764633          	xor	a2,a2,t2
   117b8:	8eb9                	xor	a3,a3,a4
   117ba:	0114c4b3          	xor	s1,s1,a7
   117be:	01247433          	and	s0,s0,s2
   117c2:	010efeb3          	and	t4,t4,a6
   117c6:	fff3c313          	not	t1,t2
   117ca:	00757533          	and	a0,a0,t2
   117ce:	8df9                	and	a1,a1,a4
   117d0:	014e7e33          	and	t3,t3,s4
   117d4:	01f7c733          	xor	a4,a5,t6
   117d8:	8f25                	xor	a4,a4,s1
   117da:	01044bb3          	xor	s7,s0,a6
   117de:	00554533          	xor	a0,a0,t0
   117e2:	0125c5b3          	xor	a1,a1,s2
   117e6:	8426                	mv	s0,s1
   117e8:	00765393          	srli	t2,a2,0x7
   117ec:	0076d293          	srli	t0,a3,0x7
   117f0:	01769813          	slli	a6,a3,0x17
   117f4:	01761793          	slli	a5,a2,0x17
   117f8:	01137333          	and	t1,t1,a7
   117fc:	01ee4e33          	xor	t3,t3,t5
   11800:	014ec8b3          	xor	a7,t4,s4
   11804:	01969913          	slli	s2,a3,0x19
   11808:	01961493          	slli	s1,a2,0x19
   1180c:	00965e93          	srli	t4,a2,0x9
   11810:	0096db13          	srli	s6,a3,0x9
   11814:	017e4e33          	xor	t3,t3,s7
   11818:	010eeeb3          	or	t4,t4,a6
   1181c:	00fb6b33          	or	s6,s6,a5
   11820:	00796933          	or	s2,s2,t2
   11824:	0054e4b3          	or	s1,s1,t0
   11828:	01694933          	xor	s2,s2,s6
   1182c:	01d4c4b3          	xor	s1,s1,t4
   11830:	003e1b13          	slli	s6,t3,0x3
   11834:	01d75e93          	srli	t4,a4,0x1d
   11838:	016eeb33          	or	s6,t4,s6
   1183c:	01de5c93          	srli	s9,t3,0x1d
   11840:	00371e93          	slli	t4,a4,0x3
   11844:	01dcecb3          	or	s9,s9,t4
   11848:	01334333          	xor	t1,t1,s3
   1184c:	019e1e93          	slli	t4,t3,0x19
   11850:	00775c13          	srli	s8,a4,0x7
   11854:	00a34333          	xor	t1,t1,a0
   11858:	00b8c8b3          	xor	a7,a7,a1
   1185c:	01971f93          	slli	t6,a4,0x19
   11860:	01dc6c33          	or	s8,s8,t4
   11864:	007e5e93          	srli	t4,t3,0x7
   11868:	fff5c593          	not	a1,a1
   1186c:	fff54513          	not	a0,a0
   11870:	00a35f13          	srli	t5,t1,0xa
   11874:	01feefb3          	or	t6,t4,t6
   11878:	01689e93          	slli	t4,a7,0x16
   1187c:	c85a                	sw	s6,16(sp)
   1187e:	0015dd13          	srli	s10,a1,0x1
   11882:	0065d293          	srli	t0,a1,0x6
   11886:	01f51a13          	slli	s4,a0,0x1f
   1188a:	01a51813          	slli	a6,a0,0x1a
   1188e:	01eeef33          	or	t5,t4,t5
   11892:	00a8db13          	srli	s6,a7,0xa
   11896:	01631e93          	slli	t4,t1,0x16
   1189a:	c622                	sw	s0,12(sp)
   1189c:	01135d93          	srli	s11,t1,0x11
   118a0:	016eeb33          	or	s6,t4,s6
   118a4:	01aa6a33          	or	s4,s4,s10
   118a8:	00f89e93          	slli	t4,a7,0xf
   118ac:	00586833          	or	a6,a6,t0
   118b0:	01fccfb3          	xor	t6,s9,t6
   118b4:	4cc2                	lw	s9,16(sp)
   118b6:	00155393          	srli	t2,a0,0x1
   118ba:	01beeeb3          	or	t4,t4,s11
   118be:	01f59a93          	slli	s5,a1,0x1f
   118c2:	010a4833          	xor	a6,s4,a6
   118c6:	4a32                	lw	s4,12(sp)
   118c8:	ca76                	sw	t4,20(sp)
   118ca:	00dbc9b3          	xor	s3,s7,a3
   118ce:	8c31                	xor	s0,s0,a2
   118d0:	0118dd93          	srli	s11,a7,0x11
   118d4:	007aeab3          	or	s5,s5,t2
   118d8:	00655793          	srli	a5,a0,0x6
   118dc:	01a59393          	slli	t2,a1,0x1a
   118e0:	00f31e93          	slli	t4,t1,0xf
   118e4:	00d41d13          	slli	s10,s0,0xd
   118e8:	01beeeb3          	or	t4,t4,s11
   118ec:	00f3e7b3          	or	a5,t2,a5
   118f0:	00d99d93          	slli	s11,s3,0xd
   118f4:	01345393          	srli	t2,s0,0x13
   118f8:	0139d293          	srli	t0,s3,0x13
   118fc:	018ccc33          	xor	s8,s9,s8
   11900:	4cd2                	lw	s9,20(sp)
   11902:	00fac7b3          	xor	a5,s5,a5
   11906:	009bcbb3          	xor	s7,s7,s1
   1190a:	01c45a93          	srli	s5,s0,0x1c
   1190e:	01db4eb3          	xor	t4,s6,t4
   11912:	007de3b3          	or	t2,s11,t2
   11916:	012a4b33          	xor	s6,s4,s2
   1191a:	005d62b3          	or	t0,s10,t0
   1191e:	00499a13          	slli	s4,s3,0x4
   11922:	0412                	slli	s0,s0,0x4
   11924:	01c9d993          	srli	s3,s3,0x1c
   11928:	00efcfb3          	xor	t6,t6,a4
   1192c:	011eceb3          	xor	t4,t4,a7
   11930:	8d3d                	xor	a0,a0,a5
   11932:	015a6a33          	or	s4,s4,s5
   11936:	01346433          	or	s0,s0,s3
   1193a:	8ea5                	xor	a3,a3,s1
   1193c:	0163c3b3          	xor	t2,t2,s6
   11940:	0172c2b3          	xor	t0,t0,s7
   11944:	01cc4c33          	xor	s8,s8,t3
   11948:	01d6c7b3          	xor	a5,a3,t4
   1194c:	0143c3b3          	xor	t2,t2,s4
   11950:	0082c2b3          	xor	t0,t0,s0
   11954:	01f546b3          	xor	a3,a0,t6
   11958:	00b84833          	xor	a6,a6,a1
   1195c:	019f4f33          	xor	t5,t5,s9
   11960:	006f4f33          	xor	t5,t5,t1
   11964:	018844b3          	xor	s1,a6,s8
   11968:	01264733          	xor	a4,a2,s2
   1196c:	ffffca13          	not	s4,t6
   11970:	0c36c913          	xori	s2,a3,195
   11974:	fff3c613          	not	a2,t2
   11978:	fff2c813          	not	a6,t0
   1197c:	f3c6c693          	xori	a3,a3,-196
   11980:	01e74733          	xor	a4,a4,t5
   11984:	01e6f433          	and	s0,a3,t5
   11988:	012a7a33          	and	s4,s4,s2
   1198c:	01887833          	and	a6,a6,s8
   11990:	fffc4993          	not	s3,s8
   11994:	ffff4513          	not	a0,t5
   11998:	fffec593          	not	a1,t4
   1199c:	fff4ce13          	not	t3,s1
   119a0:	fff7c893          	not	a7,a5
   119a4:	01f67633          	and	a2,a2,t6
   119a8:	8e39                	xor	a2,a2,a4
   119aa:	00f846b3          	xor	a3,a6,a5
   119ae:	0099f9b3          	and	s3,s3,s1
   119b2:	fff74313          	not	t1,a4
   119b6:	8d79                	and	a0,a0,a4
   119b8:	8dfd                	and	a1,a1,a5
   119ba:	01f44733          	xor	a4,s0,t6
   119be:	007a47b3          	xor	a5,s4,t2
   119c2:	01de7e33          	and	t3,t3,t4
   119c6:	0058f8b3          	and	a7,a7,t0
   119ca:	8f3d                	xor	a4,a4,a5
   119cc:	0059cbb3          	xor	s7,s3,t0
   119d0:	01254533          	xor	a0,a0,s2
   119d4:	8da5                	xor	a1,a1,s1
   119d6:	843e                	mv	s0,a5
   119d8:	0076d293          	srli	t0,a3,0x7
   119dc:	01769813          	slli	a6,a3,0x17
   119e0:	01761793          	slli	a5,a2,0x17
   119e4:	00737333          	and	t1,t1,t2
   119e8:	018e4e33          	xor	t3,t3,s8
   119ec:	00765393          	srli	t2,a2,0x7
   119f0:	01d8c8b3          	xor	a7,a7,t4
   119f4:	01969913          	slli	s2,a3,0x19
   119f8:	01961493          	slli	s1,a2,0x19
   119fc:	00965e93          	srli	t4,a2,0x9
   11a00:	0096db13          	srli	s6,a3,0x9
   11a04:	017e4e33          	xor	t3,t3,s7
   11a08:	010eeeb3          	or	t4,t4,a6
   11a0c:	00fb6b33          	or	s6,s6,a5
   11a10:	00796933          	or	s2,s2,t2
   11a14:	0054e4b3          	or	s1,s1,t0
   11a18:	01694933          	xor	s2,s2,s6
   11a1c:	01d4c4b3          	xor	s1,s1,t4
   11a20:	003e1b13          	slli	s6,t3,0x3
   11a24:	01d75e93          	srli	t4,a4,0x1d
   11a28:	016eeb33          	or	s6,t4,s6
   11a2c:	01de5c93          	srli	s9,t3,0x1d
   11a30:	00371e93          	slli	t4,a4,0x3
   11a34:	01dcecb3          	or	s9,s9,t4
   11a38:	01e34333          	xor	t1,t1,t5
   11a3c:	019e1e93          	slli	t4,t3,0x19
   11a40:	00775c13          	srli	s8,a4,0x7
   11a44:	00a34333          	xor	t1,t1,a0
   11a48:	00b8c8b3          	xor	a7,a7,a1
   11a4c:	01971f93          	slli	t6,a4,0x19
   11a50:	01dc6c33          	or	s8,s8,t4
   11a54:	007e5e93          	srli	t4,t3,0x7
   11a58:	fff5c593          	not	a1,a1
   11a5c:	fff54513          	not	a0,a0
   11a60:	00a35f13          	srli	t5,t1,0xa
   11a64:	01feefb3          	or	t6,t4,t6
   11a68:	01689e93          	slli	t4,a7,0x16
   11a6c:	c85a                	sw	s6,16(sp)
   11a6e:	0015dd13          	srli	s10,a1,0x1
   11a72:	0065d293          	srli	t0,a1,0x6
   11a76:	01f51a13          	slli	s4,a0,0x1f
   11a7a:	01a51813          	slli	a6,a0,0x1a
   11a7e:	01eeef33          	or	t5,t4,t5
   11a82:	00a8db13          	srli	s6,a7,0xa
   11a86:	01631e93          	slli	t4,t1,0x16
   11a8a:	c622                	sw	s0,12(sp)
   11a8c:	01135d93          	srli	s11,t1,0x11
   11a90:	016eeb33          	or	s6,t4,s6
   11a94:	01aa6a33          	or	s4,s4,s10
   11a98:	00f89e93          	slli	t4,a7,0xf
   11a9c:	00586833          	or	a6,a6,t0
   11aa0:	01fccfb3          	xor	t6,s9,t6
   11aa4:	4cc2                	lw	s9,16(sp)
   11aa6:	00155393          	srli	t2,a0,0x1
   11aaa:	01beeeb3          	or	t4,t4,s11
   11aae:	01f59a93          	slli	s5,a1,0x1f
   11ab2:	010a4833          	xor	a6,s4,a6
   11ab6:	4a32                	lw	s4,12(sp)
   11ab8:	00dbc9b3          	xor	s3,s7,a3
   11abc:	8c31                	xor	s0,s0,a2
   11abe:	ca76                	sw	t4,20(sp)
   11ac0:	0118dd93          	srli	s11,a7,0x11
   11ac4:	007aeab3          	or	s5,s5,t2
   11ac8:	00655793          	srli	a5,a0,0x6
   11acc:	01a59393          	slli	t2,a1,0x1a
   11ad0:	00f31e93          	slli	t4,t1,0xf
   11ad4:	00d41d13          	slli	s10,s0,0xd
   11ad8:	01beeeb3          	or	t4,t4,s11
   11adc:	00f3e7b3          	or	a5,t2,a5
   11ae0:	00d99d93          	slli	s11,s3,0xd
   11ae4:	01345393          	srli	t2,s0,0x13
   11ae8:	0139d293          	srli	t0,s3,0x13
   11aec:	018ccc33          	xor	s8,s9,s8
   11af0:	4cd2                	lw	s9,20(sp)
   11af2:	00fac7b3          	xor	a5,s5,a5
   11af6:	009bcbb3          	xor	s7,s7,s1
   11afa:	01c45a93          	srli	s5,s0,0x1c
   11afe:	01db4eb3          	xor	t4,s6,t4
   11b02:	007de3b3          	or	t2,s11,t2
   11b06:	012a4b33          	xor	s6,s4,s2
   11b0a:	005d62b3          	or	t0,s10,t0
   11b0e:	00499a13          	slli	s4,s3,0x4
   11b12:	0412                	slli	s0,s0,0x4
   11b14:	01c9d993          	srli	s3,s3,0x1c
   11b18:	00efcfb3          	xor	t6,t6,a4
   11b1c:	011eceb3          	xor	t4,t4,a7
   11b20:	8d3d                	xor	a0,a0,a5
   11b22:	015a6a33          	or	s4,s4,s5
   11b26:	01346433          	or	s0,s0,s3
   11b2a:	8ea5                	xor	a3,a3,s1
   11b2c:	0163c3b3          	xor	t2,t2,s6
   11b30:	0172c2b3          	xor	t0,t0,s7
   11b34:	01cc4c33          	xor	s8,s8,t3
   11b38:	01d6c7b3          	xor	a5,a3,t4
   11b3c:	0143c3b3          	xor	t2,t2,s4
   11b40:	0082c2b3          	xor	t0,t0,s0
   11b44:	01f546b3          	xor	a3,a0,t6
   11b48:	00b84833          	xor	a6,a6,a1
   11b4c:	019f4f33          	xor	t5,t5,s9
   11b50:	006f4f33          	xor	t5,t5,t1
   11b54:	018844b3          	xor	s1,a6,s8
   11b58:	01264733          	xor	a4,a2,s2
   11b5c:	ffffca13          	not	s4,t6
   11b60:	0b46c913          	xori	s2,a3,180
   11b64:	fff3c613          	not	a2,t2
   11b68:	fff2c813          	not	a6,t0
   11b6c:	f4b6c693          	xori	a3,a3,-181
   11b70:	01e74733          	xor	a4,a4,t5
   11b74:	01e6f433          	and	s0,a3,t5
   11b78:	012a7a33          	and	s4,s4,s2
   11b7c:	01887833          	and	a6,a6,s8
   11b80:	fffc4993          	not	s3,s8
   11b84:	ffff4513          	not	a0,t5
   11b88:	fffec593          	not	a1,t4
   11b8c:	fff4ce13          	not	t3,s1
   11b90:	fff7c893          	not	a7,a5
   11b94:	01f67633          	and	a2,a2,t6
   11b98:	8e39                	xor	a2,a2,a4
   11b9a:	00f846b3          	xor	a3,a6,a5
   11b9e:	0099f9b3          	and	s3,s3,s1
   11ba2:	fff74313          	not	t1,a4
   11ba6:	8d79                	and	a0,a0,a4
   11ba8:	8dfd                	and	a1,a1,a5
   11baa:	01f44733          	xor	a4,s0,t6
   11bae:	007a47b3          	xor	a5,s4,t2
   11bb2:	01de7e33          	and	t3,t3,t4
   11bb6:	0058f8b3          	and	a7,a7,t0
   11bba:	8f3d                	xor	a4,a4,a5
   11bbc:	0059cbb3          	xor	s7,s3,t0
   11bc0:	01254533          	xor	a0,a0,s2
   11bc4:	8da5                	xor	a1,a1,s1
   11bc6:	843e                	mv	s0,a5
   11bc8:	0076d293          	srli	t0,a3,0x7
   11bcc:	01769813          	slli	a6,a3,0x17
   11bd0:	01761793          	slli	a5,a2,0x17
   11bd4:	00737333          	and	t1,t1,t2
   11bd8:	018e4e33          	xor	t3,t3,s8
   11bdc:	00765393          	srli	t2,a2,0x7
   11be0:	01d8c8b3          	xor	a7,a7,t4
   11be4:	01969913          	slli	s2,a3,0x19
   11be8:	01961493          	slli	s1,a2,0x19
   11bec:	00965e93          	srli	t4,a2,0x9
   11bf0:	0096db13          	srli	s6,a3,0x9
   11bf4:	017e4e33          	xor	t3,t3,s7
   11bf8:	010eeeb3          	or	t4,t4,a6
   11bfc:	00fb6b33          	or	s6,s6,a5
   11c00:	00796933          	or	s2,s2,t2
   11c04:	0054e4b3          	or	s1,s1,t0
   11c08:	01694933          	xor	s2,s2,s6
   11c0c:	01d4c4b3          	xor	s1,s1,t4
   11c10:	003e1b13          	slli	s6,t3,0x3
   11c14:	01d75e93          	srli	t4,a4,0x1d
   11c18:	016eeb33          	or	s6,t4,s6
   11c1c:	01de5c93          	srli	s9,t3,0x1d
   11c20:	00371e93          	slli	t4,a4,0x3
   11c24:	01dcecb3          	or	s9,s9,t4
   11c28:	01e34333          	xor	t1,t1,t5
   11c2c:	019e1e93          	slli	t4,t3,0x19
   11c30:	00775c13          	srli	s8,a4,0x7
   11c34:	00a34333          	xor	t1,t1,a0
   11c38:	00b8c8b3          	xor	a7,a7,a1
   11c3c:	01971f93          	slli	t6,a4,0x19
   11c40:	01dc6c33          	or	s8,s8,t4
   11c44:	007e5e93          	srli	t4,t3,0x7
   11c48:	00a35f13          	srli	t5,t1,0xa
   11c4c:	01feefb3          	or	t6,t4,t6
   11c50:	01689e93          	slli	t4,a7,0x16
   11c54:	c85a                	sw	s6,16(sp)
   11c56:	01eeef33          	or	t5,t4,t5
   11c5a:	00a8db13          	srli	s6,a7,0xa
   11c5e:	01631e93          	slli	t4,t1,0x16
   11c62:	fff5c593          	not	a1,a1
   11c66:	fff54513          	not	a0,a0
   11c6a:	01135d93          	srli	s11,t1,0x11
   11c6e:	016eeb33          	or	s6,t4,s6
   11c72:	01fccfb3          	xor	t6,s9,t6
   11c76:	00f89e93          	slli	t4,a7,0xf
   11c7a:	4cc2                	lw	s9,16(sp)
   11c7c:	0015dd13          	srli	s10,a1,0x1
   11c80:	0065d293          	srli	t0,a1,0x6
   11c84:	01beeeb3          	or	t4,t4,s11
   11c88:	01f51a13          	slli	s4,a0,0x1f
   11c8c:	01a51813          	slli	a6,a0,0x1a
   11c90:	ca76                	sw	t4,20(sp)
   11c92:	01aa6a33          	or	s4,s4,s10
   11c96:	c622                	sw	s0,12(sp)
   11c98:	00586833          	or	a6,a6,t0
   11c9c:	00155393          	srli	t2,a0,0x1
   11ca0:	01f59a93          	slli	s5,a1,0x1f
   11ca4:	018ccc33          	xor	s8,s9,s8
   11ca8:	010a4833          	xor	a6,s4,a6
   11cac:	4cd2                	lw	s9,20(sp)
   11cae:	4a32                	lw	s4,12(sp)
   11cb0:	00dbc9b3          	xor	s3,s7,a3
   11cb4:	8c31                	xor	s0,s0,a2
   11cb6:	0118dd93          	srli	s11,a7,0x11
   11cba:	007aeab3          	or	s5,s5,t2
   11cbe:	00655793          	srli	a5,a0,0x6
   11cc2:	01a59393          	slli	t2,a1,0x1a
   11cc6:	00f31e93          	slli	t4,t1,0xf
   11cca:	00d41d13          	slli	s10,s0,0xd
   11cce:	01beeeb3          	or	t4,t4,s11
   11cd2:	00f3e7b3          	or	a5,t2,a5
   11cd6:	00d99d93          	slli	s11,s3,0xd
   11cda:	01345393          	srli	t2,s0,0x13
   11cde:	0139d293          	srli	t0,s3,0x13
   11ce2:	00fac7b3          	xor	a5,s5,a5
   11ce6:	009bcbb3          	xor	s7,s7,s1
   11cea:	01c45a93          	srli	s5,s0,0x1c
   11cee:	01db4eb3          	xor	t4,s6,t4
   11cf2:	007de3b3          	or	t2,s11,t2
   11cf6:	012a4b33          	xor	s6,s4,s2
   11cfa:	005d62b3          	or	t0,s10,t0
   11cfe:	00499a13          	slli	s4,s3,0x4
   11d02:	0412                	slli	s0,s0,0x4
   11d04:	01c9d993          	srli	s3,s3,0x1c
   11d08:	00efcfb3          	xor	t6,t6,a4
   11d0c:	011eceb3          	xor	t4,t4,a7
   11d10:	8d3d                	xor	a0,a0,a5
   11d12:	015a6a33          	or	s4,s4,s5
   11d16:	01346433          	or	s0,s0,s3
   11d1a:	8ea5                	xor	a3,a3,s1
   11d1c:	0163c3b3          	xor	t2,t2,s6
   11d20:	0172c2b3          	xor	t0,t0,s7
   11d24:	01cc4c33          	xor	s8,s8,t3
   11d28:	01d6c7b3          	xor	a5,a3,t4
   11d2c:	0143c3b3          	xor	t2,t2,s4
   11d30:	0082c2b3          	xor	t0,t0,s0
   11d34:	01f546b3          	xor	a3,a0,t6
   11d38:	00b84833          	xor	a6,a6,a1
   11d3c:	019f4f33          	xor	t5,t5,s9
   11d40:	006f4f33          	xor	t5,t5,t1
   11d44:	018844b3          	xor	s1,a6,s8
   11d48:	01264733          	xor	a4,a2,s2
   11d4c:	ffffca13          	not	s4,t6
   11d50:	0a56c913          	xori	s2,a3,165
   11d54:	fff3c613          	not	a2,t2
   11d58:	fff2c813          	not	a6,t0
   11d5c:	f5a6c693          	xori	a3,a3,-166
   11d60:	01e74733          	xor	a4,a4,t5
   11d64:	01e6f433          	and	s0,a3,t5
   11d68:	012a7a33          	and	s4,s4,s2
   11d6c:	01887833          	and	a6,a6,s8
   11d70:	fffc4993          	not	s3,s8
   11d74:	ffff4513          	not	a0,t5
   11d78:	fffec593          	not	a1,t4
   11d7c:	fff4ce13          	not	t3,s1
   11d80:	fff7c893          	not	a7,a5
   11d84:	01f67633          	and	a2,a2,t6
   11d88:	8e39                	xor	a2,a2,a4
   11d8a:	00f846b3          	xor	a3,a6,a5
   11d8e:	0099f9b3          	and	s3,s3,s1
   11d92:	fff74313          	not	t1,a4
   11d96:	8d79                	and	a0,a0,a4
   11d98:	8dfd                	and	a1,a1,a5
   11d9a:	01f44733          	xor	a4,s0,t6
   11d9e:	007a47b3          	xor	a5,s4,t2
   11da2:	01de7e33          	and	t3,t3,t4
   11da6:	0058f8b3          	and	a7,a7,t0
   11daa:	8f3d                	xor	a4,a4,a5
   11dac:	0059cbb3          	xor	s7,s3,t0
   11db0:	01254533          	xor	a0,a0,s2
   11db4:	8da5                	xor	a1,a1,s1
   11db6:	843e                	mv	s0,a5
   11db8:	0076d293          	srli	t0,a3,0x7
   11dbc:	01769813          	slli	a6,a3,0x17
   11dc0:	01761793          	slli	a5,a2,0x17
   11dc4:	00737333          	and	t1,t1,t2
   11dc8:	018e4e33          	xor	t3,t3,s8
   11dcc:	00765393          	srli	t2,a2,0x7
   11dd0:	01d8c8b3          	xor	a7,a7,t4
   11dd4:	01969913          	slli	s2,a3,0x19
   11dd8:	01961493          	slli	s1,a2,0x19
   11ddc:	00965e93          	srli	t4,a2,0x9
   11de0:	0096db13          	srli	s6,a3,0x9
   11de4:	017e4e33          	xor	t3,t3,s7
   11de8:	010eeeb3          	or	t4,t4,a6
   11dec:	00fb6b33          	or	s6,s6,a5
   11df0:	00796933          	or	s2,s2,t2
   11df4:	0054e4b3          	or	s1,s1,t0
   11df8:	01694933          	xor	s2,s2,s6
   11dfc:	01d4c4b3          	xor	s1,s1,t4
   11e00:	003e1b13          	slli	s6,t3,0x3
   11e04:	01d75e93          	srli	t4,a4,0x1d
   11e08:	016eeb33          	or	s6,t4,s6
   11e0c:	01de5c93          	srli	s9,t3,0x1d
   11e10:	00371e93          	slli	t4,a4,0x3
   11e14:	01dcecb3          	or	s9,s9,t4
   11e18:	01e34333          	xor	t1,t1,t5
   11e1c:	019e1e93          	slli	t4,t3,0x19
   11e20:	00775c13          	srli	s8,a4,0x7
   11e24:	00a34333          	xor	t1,t1,a0
   11e28:	00b8c8b3          	xor	a7,a7,a1
   11e2c:	01971f93          	slli	t6,a4,0x19
   11e30:	01dc6c33          	or	s8,s8,t4
   11e34:	007e5e93          	srli	t4,t3,0x7
   11e38:	fff5c593          	not	a1,a1
   11e3c:	fff54513          	not	a0,a0
   11e40:	00a35f13          	srli	t5,t1,0xa
   11e44:	01feefb3          	or	t6,t4,t6
   11e48:	01689e93          	slli	t4,a7,0x16
   11e4c:	c85a                	sw	s6,16(sp)
   11e4e:	0015dd13          	srli	s10,a1,0x1
   11e52:	0065d293          	srli	t0,a1,0x6
   11e56:	01f51a13          	slli	s4,a0,0x1f
   11e5a:	01a51813          	slli	a6,a0,0x1a
   11e5e:	01eeef33          	or	t5,t4,t5
   11e62:	00a8db13          	srli	s6,a7,0xa
   11e66:	01631e93          	slli	t4,t1,0x16
   11e6a:	c622                	sw	s0,12(sp)
   11e6c:	01135d93          	srli	s11,t1,0x11
   11e70:	016eeb33          	or	s6,t4,s6
   11e74:	01aa6a33          	or	s4,s4,s10
   11e78:	00f89e93          	slli	t4,a7,0xf
   11e7c:	00586833          	or	a6,a6,t0
   11e80:	01fccfb3          	xor	t6,s9,t6
   11e84:	4cc2                	lw	s9,16(sp)
   11e86:	00155393          	srli	t2,a0,0x1
   11e8a:	01beeeb3          	or	t4,t4,s11
   11e8e:	01f59a93          	slli	s5,a1,0x1f
   11e92:	010a4833          	xor	a6,s4,a6
   11e96:	4a32                	lw	s4,12(sp)
   11e98:	ca76                	sw	t4,20(sp)
   11e9a:	00dbc9b3          	xor	s3,s7,a3
   11e9e:	8c31                	xor	s0,s0,a2
   11ea0:	0118dd93          	srli	s11,a7,0x11
   11ea4:	007aeab3          	or	s5,s5,t2
   11ea8:	00655793          	srli	a5,a0,0x6
   11eac:	01a59393          	slli	t2,a1,0x1a
   11eb0:	00f31e93          	slli	t4,t1,0xf
   11eb4:	00d41d13          	slli	s10,s0,0xd
   11eb8:	01beeeb3          	or	t4,t4,s11
   11ebc:	00f3e7b3          	or	a5,t2,a5
   11ec0:	00d99d93          	slli	s11,s3,0xd
   11ec4:	01345393          	srli	t2,s0,0x13
   11ec8:	0139d293          	srli	t0,s3,0x13
   11ecc:	018ccc33          	xor	s8,s9,s8
   11ed0:	4cd2                	lw	s9,20(sp)
   11ed2:	00fac7b3          	xor	a5,s5,a5
   11ed6:	009bcbb3          	xor	s7,s7,s1
   11eda:	01c45a93          	srli	s5,s0,0x1c
   11ede:	01db4eb3          	xor	t4,s6,t4
   11ee2:	007de3b3          	or	t2,s11,t2
   11ee6:	012a4b33          	xor	s6,s4,s2
   11eea:	005d62b3          	or	t0,s10,t0
   11eee:	00499a13          	slli	s4,s3,0x4
   11ef2:	0412                	slli	s0,s0,0x4
   11ef4:	01c9d993          	srli	s3,s3,0x1c
   11ef8:	00efcfb3          	xor	t6,t6,a4
   11efc:	011eceb3          	xor	t4,t4,a7
   11f00:	8d3d                	xor	a0,a0,a5
   11f02:	015a6a33          	or	s4,s4,s5
   11f06:	01346433          	or	s0,s0,s3
   11f0a:	8ea5                	xor	a3,a3,s1
   11f0c:	0163c3b3          	xor	t2,t2,s6
   11f10:	0172c2b3          	xor	t0,t0,s7
   11f14:	01cc4c33          	xor	s8,s8,t3
   11f18:	01d6c7b3          	xor	a5,a3,t4
   11f1c:	0143c3b3          	xor	t2,t2,s4
   11f20:	0082c2b3          	xor	t0,t0,s0
   11f24:	01f546b3          	xor	a3,a0,t6
   11f28:	00b84833          	xor	a6,a6,a1
   11f2c:	019f4f33          	xor	t5,t5,s9
   11f30:	006f4f33          	xor	t5,t5,t1
   11f34:	018844b3          	xor	s1,a6,s8
   11f38:	01264733          	xor	a4,a2,s2
   11f3c:	ffffca13          	not	s4,t6
   11f40:	0966c913          	xori	s2,a3,150
   11f44:	fff3c613          	not	a2,t2
   11f48:	fff2c813          	not	a6,t0
   11f4c:	f696c693          	xori	a3,a3,-151
   11f50:	01e74733          	xor	a4,a4,t5
   11f54:	01e6f433          	and	s0,a3,t5
   11f58:	012a7a33          	and	s4,s4,s2
   11f5c:	01887833          	and	a6,a6,s8
   11f60:	fffc4993          	not	s3,s8
   11f64:	ffff4513          	not	a0,t5
   11f68:	fffec593          	not	a1,t4
   11f6c:	fff4ce13          	not	t3,s1
   11f70:	fff7c893          	not	a7,a5
   11f74:	01f67633          	and	a2,a2,t6
   11f78:	8e39                	xor	a2,a2,a4
   11f7a:	00f846b3          	xor	a3,a6,a5
   11f7e:	0099f9b3          	and	s3,s3,s1
   11f82:	fff74313          	not	t1,a4
   11f86:	8d79                	and	a0,a0,a4
   11f88:	8dfd                	and	a1,a1,a5
   11f8a:	01f44733          	xor	a4,s0,t6
   11f8e:	007a47b3          	xor	a5,s4,t2
   11f92:	01de7e33          	and	t3,t3,t4
   11f96:	0058f8b3          	and	a7,a7,t0
   11f9a:	8f3d                	xor	a4,a4,a5
   11f9c:	0059cbb3          	xor	s7,s3,t0
   11fa0:	01254533          	xor	a0,a0,s2
   11fa4:	8da5                	xor	a1,a1,s1
   11fa6:	843e                	mv	s0,a5
   11fa8:	0076d293          	srli	t0,a3,0x7
   11fac:	01769813          	slli	a6,a3,0x17
   11fb0:	01761793          	slli	a5,a2,0x17
   11fb4:	00737333          	and	t1,t1,t2
   11fb8:	018e4e33          	xor	t3,t3,s8
   11fbc:	00765393          	srli	t2,a2,0x7
   11fc0:	01d8c8b3          	xor	a7,a7,t4
   11fc4:	01969913          	slli	s2,a3,0x19
   11fc8:	01961493          	slli	s1,a2,0x19
   11fcc:	00965e93          	srli	t4,a2,0x9
   11fd0:	0096db13          	srli	s6,a3,0x9
   11fd4:	017e4e33          	xor	t3,t3,s7
   11fd8:	010eeeb3          	or	t4,t4,a6
   11fdc:	00fb6b33          	or	s6,s6,a5
   11fe0:	00796933          	or	s2,s2,t2
   11fe4:	0054e4b3          	or	s1,s1,t0
   11fe8:	01694933          	xor	s2,s2,s6
   11fec:	01d4c4b3          	xor	s1,s1,t4
   11ff0:	003e1b13          	slli	s6,t3,0x3
   11ff4:	01d75e93          	srli	t4,a4,0x1d
   11ff8:	016eeb33          	or	s6,t4,s6
   11ffc:	01de5c93          	srli	s9,t3,0x1d
   12000:	00371e93          	slli	t4,a4,0x3
   12004:	01dcecb3          	or	s9,s9,t4
   12008:	01e34333          	xor	t1,t1,t5
   1200c:	019e1e93          	slli	t4,t3,0x19
   12010:	00775c13          	srli	s8,a4,0x7
   12014:	00a34333          	xor	t1,t1,a0
   12018:	00b8c8b3          	xor	a7,a7,a1
   1201c:	01971f93          	slli	t6,a4,0x19
   12020:	01dc6c33          	or	s8,s8,t4
   12024:	007e5e93          	srli	t4,t3,0x7
   12028:	fff5c593          	not	a1,a1
   1202c:	fff54513          	not	a0,a0
   12030:	00a35f13          	srli	t5,t1,0xa
   12034:	01feefb3          	or	t6,t4,t6
   12038:	01689e93          	slli	t4,a7,0x16
   1203c:	c85a                	sw	s6,16(sp)
   1203e:	0015dd13          	srli	s10,a1,0x1
   12042:	0065d293          	srli	t0,a1,0x6
   12046:	01f51a13          	slli	s4,a0,0x1f
   1204a:	01a51813          	slli	a6,a0,0x1a
   1204e:	01eeef33          	or	t5,t4,t5
   12052:	00a8db13          	srli	s6,a7,0xa
   12056:	01631e93          	slli	t4,t1,0x16
   1205a:	c622                	sw	s0,12(sp)
   1205c:	01135d93          	srli	s11,t1,0x11
   12060:	016eeb33          	or	s6,t4,s6
   12064:	01aa6a33          	or	s4,s4,s10
   12068:	00f89e93          	slli	t4,a7,0xf
   1206c:	00586833          	or	a6,a6,t0
   12070:	01fccfb3          	xor	t6,s9,t6
   12074:	4cc2                	lw	s9,16(sp)
   12076:	00155393          	srli	t2,a0,0x1
   1207a:	01beeeb3          	or	t4,t4,s11
   1207e:	01f59a93          	slli	s5,a1,0x1f
   12082:	010a4833          	xor	a6,s4,a6
   12086:	4a32                	lw	s4,12(sp)
   12088:	ca76                	sw	t4,20(sp)
   1208a:	00dbc9b3          	xor	s3,s7,a3
   1208e:	8c31                	xor	s0,s0,a2
   12090:	0118dd93          	srli	s11,a7,0x11
   12094:	007aeab3          	or	s5,s5,t2
   12098:	00655793          	srli	a5,a0,0x6
   1209c:	01a59393          	slli	t2,a1,0x1a
   120a0:	00f31e93          	slli	t4,t1,0xf
   120a4:	00d41d13          	slli	s10,s0,0xd
   120a8:	01beeeb3          	or	t4,t4,s11
   120ac:	00f3e7b3          	or	a5,t2,a5
   120b0:	00d99d93          	slli	s11,s3,0xd
   120b4:	01345393          	srli	t2,s0,0x13
   120b8:	0139d293          	srli	t0,s3,0x13
   120bc:	018ccc33          	xor	s8,s9,s8
   120c0:	4cd2                	lw	s9,20(sp)
   120c2:	00fac7b3          	xor	a5,s5,a5
   120c6:	009bcbb3          	xor	s7,s7,s1
   120ca:	01c45a93          	srli	s5,s0,0x1c
   120ce:	01db4eb3          	xor	t4,s6,t4
   120d2:	007de3b3          	or	t2,s11,t2
   120d6:	012a4b33          	xor	s6,s4,s2
   120da:	005d62b3          	or	t0,s10,t0
   120de:	00499a13          	slli	s4,s3,0x4
   120e2:	0412                	slli	s0,s0,0x4
   120e4:	01c9d993          	srli	s3,s3,0x1c
   120e8:	00efcfb3          	xor	t6,t6,a4
   120ec:	011eceb3          	xor	t4,t4,a7
   120f0:	8d3d                	xor	a0,a0,a5
   120f2:	015a6a33          	or	s4,s4,s5
   120f6:	01346433          	or	s0,s0,s3
   120fa:	8ea5                	xor	a3,a3,s1
   120fc:	0163c3b3          	xor	t2,t2,s6
   12100:	0172c2b3          	xor	t0,t0,s7
   12104:	01cc4c33          	xor	s8,s8,t3
   12108:	01d6c7b3          	xor	a5,a3,t4
   1210c:	0143c3b3          	xor	t2,t2,s4
   12110:	0082c2b3          	xor	t0,t0,s0
   12114:	01f546b3          	xor	a3,a0,t6
   12118:	00b84833          	xor	a6,a6,a1
   1211c:	019f4f33          	xor	t5,t5,s9
   12120:	006f4f33          	xor	t5,t5,t1
   12124:	018844b3          	xor	s1,a6,s8
   12128:	01264733          	xor	a4,a2,s2
   1212c:	ffffca13          	not	s4,t6
   12130:	0876c913          	xori	s2,a3,135
   12134:	fff3c613          	not	a2,t2
   12138:	fff2c813          	not	a6,t0
   1213c:	f786c693          	xori	a3,a3,-136
   12140:	01e74733          	xor	a4,a4,t5
   12144:	01e6f433          	and	s0,a3,t5
   12148:	012a7a33          	and	s4,s4,s2
   1214c:	01887833          	and	a6,a6,s8
   12150:	fffc4993          	not	s3,s8
   12154:	ffff4513          	not	a0,t5
   12158:	fffec593          	not	a1,t4
   1215c:	fff4ce13          	not	t3,s1
   12160:	fff7c893          	not	a7,a5
   12164:	01f67633          	and	a2,a2,t6
   12168:	8e39                	xor	a2,a2,a4
   1216a:	00f846b3          	xor	a3,a6,a5
   1216e:	0099f9b3          	and	s3,s3,s1
   12172:	fff74313          	not	t1,a4
   12176:	8d79                	and	a0,a0,a4
   12178:	8dfd                	and	a1,a1,a5
   1217a:	01f44733          	xor	a4,s0,t6
   1217e:	007a47b3          	xor	a5,s4,t2
   12182:	01de7e33          	and	t3,t3,t4
   12186:	0058f8b3          	and	a7,a7,t0
   1218a:	8f3d                	xor	a4,a4,a5
   1218c:	0059cbb3          	xor	s7,s3,t0
   12190:	01254533          	xor	a0,a0,s2
   12194:	8da5                	xor	a1,a1,s1
   12196:	843e                	mv	s0,a5
   12198:	0076d293          	srli	t0,a3,0x7
   1219c:	01769813          	slli	a6,a3,0x17
   121a0:	01761793          	slli	a5,a2,0x17
   121a4:	00737333          	and	t1,t1,t2
   121a8:	018e4e33          	xor	t3,t3,s8
   121ac:	00765393          	srli	t2,a2,0x7
   121b0:	01d8c8b3          	xor	a7,a7,t4
   121b4:	01969913          	slli	s2,a3,0x19
   121b8:	01961493          	slli	s1,a2,0x19
   121bc:	00965e93          	srli	t4,a2,0x9
   121c0:	0096db13          	srli	s6,a3,0x9
   121c4:	017e4e33          	xor	t3,t3,s7
   121c8:	010eeeb3          	or	t4,t4,a6
   121cc:	00fb6b33          	or	s6,s6,a5
   121d0:	00796933          	or	s2,s2,t2
   121d4:	0054e4b3          	or	s1,s1,t0
   121d8:	01694933          	xor	s2,s2,s6
   121dc:	01d4c4b3          	xor	s1,s1,t4
   121e0:	003e1b13          	slli	s6,t3,0x3
   121e4:	01d75e93          	srli	t4,a4,0x1d
   121e8:	016eeb33          	or	s6,t4,s6
   121ec:	01de5c93          	srli	s9,t3,0x1d
   121f0:	00371e93          	slli	t4,a4,0x3
   121f4:	01dcecb3          	or	s9,s9,t4
   121f8:	01e34333          	xor	t1,t1,t5
   121fc:	019e1e93          	slli	t4,t3,0x19
   12200:	00775c13          	srli	s8,a4,0x7
   12204:	00a34333          	xor	t1,t1,a0
   12208:	00b8c8b3          	xor	a7,a7,a1
   1220c:	01971f93          	slli	t6,a4,0x19
   12210:	01dc6c33          	or	s8,s8,t4
   12214:	007e5e93          	srli	t4,t3,0x7
   12218:	fff5c593          	not	a1,a1
   1221c:	fff54513          	not	a0,a0
   12220:	00a35f13          	srli	t5,t1,0xa
   12224:	01feefb3          	or	t6,t4,t6
   12228:	01689e93          	slli	t4,a7,0x16
   1222c:	c85a                	sw	s6,16(sp)
   1222e:	0015dd13          	srli	s10,a1,0x1
   12232:	0065d293          	srli	t0,a1,0x6
   12236:	01f51a13          	slli	s4,a0,0x1f
   1223a:	01a51813          	slli	a6,a0,0x1a
   1223e:	01eeef33          	or	t5,t4,t5
   12242:	00a8db13          	srli	s6,a7,0xa
   12246:	01631e93          	slli	t4,t1,0x16
   1224a:	c622                	sw	s0,12(sp)
   1224c:	01135d93          	srli	s11,t1,0x11
   12250:	016eeb33          	or	s6,t4,s6
   12254:	01aa6a33          	or	s4,s4,s10
   12258:	00f89e93          	slli	t4,a7,0xf
   1225c:	00586833          	or	a6,a6,t0
   12260:	01fccfb3          	xor	t6,s9,t6
   12264:	4cc2                	lw	s9,16(sp)
   12266:	00155393          	srli	t2,a0,0x1
   1226a:	01beeeb3          	or	t4,t4,s11
   1226e:	01f59a93          	slli	s5,a1,0x1f
   12272:	010a4833          	xor	a6,s4,a6
   12276:	4a32                	lw	s4,12(sp)
   12278:	ca76                	sw	t4,20(sp)
   1227a:	00dbc9b3          	xor	s3,s7,a3
   1227e:	8c31                	xor	s0,s0,a2
   12280:	0118dd93          	srli	s11,a7,0x11
   12284:	007aeab3          	or	s5,s5,t2
   12288:	00655793          	srli	a5,a0,0x6
   1228c:	01a59393          	slli	t2,a1,0x1a
   12290:	00f31e93          	slli	t4,t1,0xf
   12294:	00d41d13          	slli	s10,s0,0xd
   12298:	01beeeb3          	or	t4,t4,s11
   1229c:	00f3e7b3          	or	a5,t2,a5
   122a0:	00d99d93          	slli	s11,s3,0xd
   122a4:	01345393          	srli	t2,s0,0x13
   122a8:	0139d293          	srli	t0,s3,0x13
   122ac:	018ccc33          	xor	s8,s9,s8
   122b0:	4cd2                	lw	s9,20(sp)
   122b2:	00fac7b3          	xor	a5,s5,a5
   122b6:	009bcbb3          	xor	s7,s7,s1
   122ba:	01c45a93          	srli	s5,s0,0x1c
   122be:	01db4eb3          	xor	t4,s6,t4
   122c2:	007de3b3          	or	t2,s11,t2
   122c6:	012a4b33          	xor	s6,s4,s2
   122ca:	005d62b3          	or	t0,s10,t0
   122ce:	00499a13          	slli	s4,s3,0x4
   122d2:	0412                	slli	s0,s0,0x4
   122d4:	01c9d993          	srli	s3,s3,0x1c
   122d8:	00efcfb3          	xor	t6,t6,a4
   122dc:	011eceb3          	xor	t4,t4,a7
   122e0:	8d3d                	xor	a0,a0,a5
   122e2:	015a6a33          	or	s4,s4,s5
   122e6:	01346433          	or	s0,s0,s3
   122ea:	8ea5                	xor	a3,a3,s1
   122ec:	0163c3b3          	xor	t2,t2,s6
   122f0:	0172c2b3          	xor	t0,t0,s7
   122f4:	01cc4c33          	xor	s8,s8,t3
   122f8:	01d6c7b3          	xor	a5,a3,t4
   122fc:	0143c3b3          	xor	t2,t2,s4
   12300:	0082c2b3          	xor	t0,t0,s0
   12304:	01f546b3          	xor	a3,a0,t6
   12308:	00b84833          	xor	a6,a6,a1
   1230c:	019f4f33          	xor	t5,t5,s9
   12310:	006f4f33          	xor	t5,t5,t1
   12314:	018844b3          	xor	s1,a6,s8
   12318:	01264733          	xor	a4,a2,s2
   1231c:	ffffca13          	not	s4,t6
   12320:	0786c913          	xori	s2,a3,120
   12324:	fff3c613          	not	a2,t2
   12328:	fff2c813          	not	a6,t0
   1232c:	f876c693          	xori	a3,a3,-121
   12330:	01e74733          	xor	a4,a4,t5
   12334:	01e6f433          	and	s0,a3,t5
   12338:	012a7a33          	and	s4,s4,s2
   1233c:	01887833          	and	a6,a6,s8
   12340:	fffc4993          	not	s3,s8
   12344:	ffff4513          	not	a0,t5
   12348:	fffec593          	not	a1,t4
   1234c:	fff4ce13          	not	t3,s1
   12350:	fff7c893          	not	a7,a5
   12354:	01f67633          	and	a2,a2,t6
   12358:	8e39                	xor	a2,a2,a4
   1235a:	00f846b3          	xor	a3,a6,a5
   1235e:	0099f9b3          	and	s3,s3,s1
   12362:	fff74313          	not	t1,a4
   12366:	8d79                	and	a0,a0,a4
   12368:	8dfd                	and	a1,a1,a5
   1236a:	01f44733          	xor	a4,s0,t6
   1236e:	007a47b3          	xor	a5,s4,t2
   12372:	01de7e33          	and	t3,t3,t4
   12376:	0058f8b3          	and	a7,a7,t0
   1237a:	8f3d                	xor	a4,a4,a5
   1237c:	0059cbb3          	xor	s7,s3,t0
   12380:	01254533          	xor	a0,a0,s2
   12384:	8da5                	xor	a1,a1,s1
   12386:	843e                	mv	s0,a5
   12388:	0076d293          	srli	t0,a3,0x7
   1238c:	01769813          	slli	a6,a3,0x17
   12390:	01761793          	slli	a5,a2,0x17
   12394:	00737333          	and	t1,t1,t2
   12398:	018e4e33          	xor	t3,t3,s8
   1239c:	00765393          	srli	t2,a2,0x7
   123a0:	01d8c8b3          	xor	a7,a7,t4
   123a4:	01969913          	slli	s2,a3,0x19
   123a8:	01961493          	slli	s1,a2,0x19
   123ac:	00965e93          	srli	t4,a2,0x9
   123b0:	0096db13          	srli	s6,a3,0x9
   123b4:	017e4e33          	xor	t3,t3,s7
   123b8:	010eeeb3          	or	t4,t4,a6
   123bc:	00fb6b33          	or	s6,s6,a5
   123c0:	00796933          	or	s2,s2,t2
   123c4:	0054e4b3          	or	s1,s1,t0
   123c8:	01694933          	xor	s2,s2,s6
   123cc:	01d4c4b3          	xor	s1,s1,t4
   123d0:	003e1b13          	slli	s6,t3,0x3
   123d4:	01d75e93          	srli	t4,a4,0x1d
   123d8:	016eeb33          	or	s6,t4,s6
   123dc:	01de5c93          	srli	s9,t3,0x1d
   123e0:	00371e93          	slli	t4,a4,0x3
   123e4:	01dcecb3          	or	s9,s9,t4
   123e8:	01e34333          	xor	t1,t1,t5
   123ec:	019e1e93          	slli	t4,t3,0x19
   123f0:	00775c13          	srli	s8,a4,0x7
   123f4:	00a34333          	xor	t1,t1,a0
   123f8:	00b8c8b3          	xor	a7,a7,a1
   123fc:	01971f93          	slli	t6,a4,0x19
   12400:	01dc6c33          	or	s8,s8,t4
   12404:	007e5e93          	srli	t4,t3,0x7
   12408:	fff5c593          	not	a1,a1
   1240c:	fff54513          	not	a0,a0
   12410:	00a35f13          	srli	t5,t1,0xa
   12414:	01feefb3          	or	t6,t4,t6
   12418:	01689e93          	slli	t4,a7,0x16
   1241c:	c85a                	sw	s6,16(sp)
   1241e:	0015dd13          	srli	s10,a1,0x1
   12422:	0065d293          	srli	t0,a1,0x6
   12426:	01f51a13          	slli	s4,a0,0x1f
   1242a:	01a51813          	slli	a6,a0,0x1a
   1242e:	01eeef33          	or	t5,t4,t5
   12432:	00a8db13          	srli	s6,a7,0xa
   12436:	01631e93          	slli	t4,t1,0x16
   1243a:	c622                	sw	s0,12(sp)
   1243c:	01135d93          	srli	s11,t1,0x11
   12440:	016eeb33          	or	s6,t4,s6
   12444:	01aa6a33          	or	s4,s4,s10
   12448:	00f89e93          	slli	t4,a7,0xf
   1244c:	00586833          	or	a6,a6,t0
   12450:	01fccfb3          	xor	t6,s9,t6
   12454:	4cc2                	lw	s9,16(sp)
   12456:	00155393          	srli	t2,a0,0x1
   1245a:	01beeeb3          	or	t4,t4,s11
   1245e:	01f59a93          	slli	s5,a1,0x1f
   12462:	010a4833          	xor	a6,s4,a6
   12466:	4a32                	lw	s4,12(sp)
   12468:	00dbc9b3          	xor	s3,s7,a3
   1246c:	8c31                	xor	s0,s0,a2
   1246e:	ca76                	sw	t4,20(sp)
   12470:	0118dd93          	srli	s11,a7,0x11
   12474:	007aeab3          	or	s5,s5,t2
   12478:	00655793          	srli	a5,a0,0x6
   1247c:	01a59393          	slli	t2,a1,0x1a
   12480:	00f31e93          	slli	t4,t1,0xf
   12484:	00d41d13          	slli	s10,s0,0xd
   12488:	01beeeb3          	or	t4,t4,s11
   1248c:	00f3e7b3          	or	a5,t2,a5
   12490:	00d99d93          	slli	s11,s3,0xd
   12494:	01345393          	srli	t2,s0,0x13
   12498:	0139d293          	srli	t0,s3,0x13
   1249c:	018ccc33          	xor	s8,s9,s8
   124a0:	4cd2                	lw	s9,20(sp)
   124a2:	00fac7b3          	xor	a5,s5,a5
   124a6:	009bcbb3          	xor	s7,s7,s1
   124aa:	01c45a93          	srli	s5,s0,0x1c
   124ae:	01db4eb3          	xor	t4,s6,t4
   124b2:	007de3b3          	or	t2,s11,t2
   124b6:	012a4b33          	xor	s6,s4,s2
   124ba:	005d62b3          	or	t0,s10,t0
   124be:	00499a13          	slli	s4,s3,0x4
   124c2:	0412                	slli	s0,s0,0x4
   124c4:	01c9d993          	srli	s3,s3,0x1c
   124c8:	00efcfb3          	xor	t6,t6,a4
   124cc:	011eceb3          	xor	t4,t4,a7
   124d0:	8d3d                	xor	a0,a0,a5
   124d2:	015a6a33          	or	s4,s4,s5
   124d6:	01346433          	or	s0,s0,s3
   124da:	8ea5                	xor	a3,a3,s1
   124dc:	0163c3b3          	xor	t2,t2,s6
   124e0:	0172c2b3          	xor	t0,t0,s7
   124e4:	01cc4c33          	xor	s8,s8,t3
   124e8:	01d6c7b3          	xor	a5,a3,t4
   124ec:	0143c3b3          	xor	t2,t2,s4
   124f0:	0082c2b3          	xor	t0,t0,s0
   124f4:	01f546b3          	xor	a3,a0,t6
   124f8:	00b84833          	xor	a6,a6,a1
   124fc:	019f4f33          	xor	t5,t5,s9
   12500:	006f4f33          	xor	t5,t5,t1
   12504:	018844b3          	xor	s1,a6,s8
   12508:	01264733          	xor	a4,a2,s2
   1250c:	ffffca13          	not	s4,t6
   12510:	0696c913          	xori	s2,a3,105
   12514:	fff3c613          	not	a2,t2
   12518:	fff2c813          	not	a6,t0
   1251c:	f966c693          	xori	a3,a3,-106
   12520:	01e74733          	xor	a4,a4,t5
   12524:	01e6f433          	and	s0,a3,t5
   12528:	012a7a33          	and	s4,s4,s2
   1252c:	01887833          	and	a6,a6,s8
   12530:	fffc4993          	not	s3,s8
   12534:	ffff4513          	not	a0,t5
   12538:	fffec593          	not	a1,t4
   1253c:	fff4ce13          	not	t3,s1
   12540:	fff7c893          	not	a7,a5
   12544:	01f67633          	and	a2,a2,t6
   12548:	8e39                	xor	a2,a2,a4
   1254a:	00f846b3          	xor	a3,a6,a5
   1254e:	0099f9b3          	and	s3,s3,s1
   12552:	fff74313          	not	t1,a4
   12556:	8d79                	and	a0,a0,a4
   12558:	8dfd                	and	a1,a1,a5
   1255a:	01f44733          	xor	a4,s0,t6
   1255e:	007a47b3          	xor	a5,s4,t2
   12562:	01de7e33          	and	t3,t3,t4
   12566:	0058f8b3          	and	a7,a7,t0
   1256a:	8f3d                	xor	a4,a4,a5
   1256c:	0059cbb3          	xor	s7,s3,t0
   12570:	01254533          	xor	a0,a0,s2
   12574:	8da5                	xor	a1,a1,s1
   12576:	843e                	mv	s0,a5
   12578:	0076d293          	srli	t0,a3,0x7
   1257c:	01769813          	slli	a6,a3,0x17
   12580:	01761793          	slli	a5,a2,0x17
   12584:	00737333          	and	t1,t1,t2
   12588:	018e4e33          	xor	t3,t3,s8
   1258c:	00765393          	srli	t2,a2,0x7
   12590:	01d8c8b3          	xor	a7,a7,t4
   12594:	01969913          	slli	s2,a3,0x19
   12598:	01961493          	slli	s1,a2,0x19
   1259c:	00965e93          	srli	t4,a2,0x9
   125a0:	0096db13          	srli	s6,a3,0x9
   125a4:	017e4e33          	xor	t3,t3,s7
   125a8:	010eeeb3          	or	t4,t4,a6
   125ac:	00fb6b33          	or	s6,s6,a5
   125b0:	00796933          	or	s2,s2,t2
   125b4:	0054e4b3          	or	s1,s1,t0
   125b8:	01694933          	xor	s2,s2,s6
   125bc:	01d4c4b3          	xor	s1,s1,t4
   125c0:	003e1b13          	slli	s6,t3,0x3
   125c4:	01d75e93          	srli	t4,a4,0x1d
   125c8:	016eeb33          	or	s6,t4,s6
   125cc:	01de5c93          	srli	s9,t3,0x1d
   125d0:	00371e93          	slli	t4,a4,0x3
   125d4:	01dcecb3          	or	s9,s9,t4
   125d8:	01e34333          	xor	t1,t1,t5
   125dc:	019e1e93          	slli	t4,t3,0x19
   125e0:	00775c13          	srli	s8,a4,0x7
   125e4:	00a34333          	xor	t1,t1,a0
   125e8:	00b8c8b3          	xor	a7,a7,a1
   125ec:	01971f93          	slli	t6,a4,0x19
   125f0:	01dc6c33          	or	s8,s8,t4
   125f4:	007e5e93          	srli	t4,t3,0x7
   125f8:	fff5c593          	not	a1,a1
   125fc:	fff54513          	not	a0,a0
   12600:	00a35f13          	srli	t5,t1,0xa
   12604:	01feefb3          	or	t6,t4,t6
   12608:	01689e93          	slli	t4,a7,0x16
   1260c:	0015dd13          	srli	s10,a1,0x1
   12610:	0065d293          	srli	t0,a1,0x6
   12614:	c85a                	sw	s6,16(sp)
   12616:	01f51a13          	slli	s4,a0,0x1f
   1261a:	01a51813          	slli	a6,a0,0x1a
   1261e:	01eeef33          	or	t5,t4,t5
   12622:	00a8db13          	srli	s6,a7,0xa
   12626:	01631e93          	slli	t4,t1,0x16
   1262a:	c622                	sw	s0,12(sp)
   1262c:	01135d93          	srli	s11,t1,0x11
   12630:	016eeb33          	or	s6,t4,s6
   12634:	01aa6a33          	or	s4,s4,s10
   12638:	00f89e93          	slli	t4,a7,0xf
   1263c:	00586833          	or	a6,a6,t0
   12640:	01fccfb3          	xor	t6,s9,t6
   12644:	4cc2                	lw	s9,16(sp)
   12646:	00155393          	srli	t2,a0,0x1
   1264a:	01beeeb3          	or	t4,t4,s11
   1264e:	01f59a93          	slli	s5,a1,0x1f
   12652:	010a4833          	xor	a6,s4,a6
   12656:	4a32                	lw	s4,12(sp)
   12658:	00dbc9b3          	xor	s3,s7,a3
   1265c:	8c31                	xor	s0,s0,a2
   1265e:	ca76                	sw	t4,20(sp)
   12660:	0118dd93          	srli	s11,a7,0x11
   12664:	007aeab3          	or	s5,s5,t2
   12668:	00655793          	srli	a5,a0,0x6
   1266c:	01a59393          	slli	t2,a1,0x1a
   12670:	00f31e93          	slli	t4,t1,0xf
   12674:	00d41d13          	slli	s10,s0,0xd
   12678:	01beeeb3          	or	t4,t4,s11
   1267c:	00f3e7b3          	or	a5,t2,a5
   12680:	00d99d93          	slli	s11,s3,0xd
   12684:	01345393          	srli	t2,s0,0x13
   12688:	0139d293          	srli	t0,s3,0x13
   1268c:	018ccc33          	xor	s8,s9,s8
   12690:	4cd2                	lw	s9,20(sp)
   12692:	00fac7b3          	xor	a5,s5,a5
   12696:	009bcbb3          	xor	s7,s7,s1
   1269a:	01c45a93          	srli	s5,s0,0x1c
   1269e:	01db4eb3          	xor	t4,s6,t4
   126a2:	007de3b3          	or	t2,s11,t2
   126a6:	012a4b33          	xor	s6,s4,s2
   126aa:	005d62b3          	or	t0,s10,t0
   126ae:	00499a13          	slli	s4,s3,0x4
   126b2:	0412                	slli	s0,s0,0x4
   126b4:	01c9d993          	srli	s3,s3,0x1c
   126b8:	00efcfb3          	xor	t6,t6,a4
   126bc:	011eceb3          	xor	t4,t4,a7
   126c0:	8d3d                	xor	a0,a0,a5
   126c2:	015a6a33          	or	s4,s4,s5
   126c6:	01346433          	or	s0,s0,s3
   126ca:	8ea5                	xor	a3,a3,s1
   126cc:	0163c3b3          	xor	t2,t2,s6
   126d0:	0172c2b3          	xor	t0,t0,s7
   126d4:	01cc4c33          	xor	s8,s8,t3
   126d8:	01d6c7b3          	xor	a5,a3,t4
   126dc:	0143c3b3          	xor	t2,t2,s4
   126e0:	0082c2b3          	xor	t0,t0,s0
   126e4:	01f546b3          	xor	a3,a0,t6
   126e8:	00b84833          	xor	a6,a6,a1
   126ec:	019f4f33          	xor	t5,t5,s9
   126f0:	006f4f33          	xor	t5,t5,t1
   126f4:	018844b3          	xor	s1,a6,s8
   126f8:	01264733          	xor	a4,a2,s2
   126fc:	ffffca13          	not	s4,t6
   12700:	05a6c913          	xori	s2,a3,90
   12704:	fff3c613          	not	a2,t2
   12708:	fff2c813          	not	a6,t0
   1270c:	fa56c693          	xori	a3,a3,-91
   12710:	01e74733          	xor	a4,a4,t5
   12714:	01e6f433          	and	s0,a3,t5
   12718:	012a7a33          	and	s4,s4,s2
   1271c:	01887833          	and	a6,a6,s8
   12720:	fffc4993          	not	s3,s8
   12724:	ffff4513          	not	a0,t5
   12728:	fffec593          	not	a1,t4
   1272c:	fff4ce13          	not	t3,s1
   12730:	fff7c893          	not	a7,a5
   12734:	01f67633          	and	a2,a2,t6
   12738:	8e39                	xor	a2,a2,a4
   1273a:	00f846b3          	xor	a3,a6,a5
   1273e:	0099f9b3          	and	s3,s3,s1
   12742:	fff74313          	not	t1,a4
   12746:	8d79                	and	a0,a0,a4
   12748:	8dfd                	and	a1,a1,a5
   1274a:	01f44733          	xor	a4,s0,t6
   1274e:	007a47b3          	xor	a5,s4,t2
   12752:	01de7e33          	and	t3,t3,t4
   12756:	0058f8b3          	and	a7,a7,t0
   1275a:	8f3d                	xor	a4,a4,a5
   1275c:	0059cbb3          	xor	s7,s3,t0
   12760:	01254533          	xor	a0,a0,s2
   12764:	8da5                	xor	a1,a1,s1
   12766:	843e                	mv	s0,a5
   12768:	0076d293          	srli	t0,a3,0x7
   1276c:	01769813          	slli	a6,a3,0x17
   12770:	01761793          	slli	a5,a2,0x17
   12774:	00737333          	and	t1,t1,t2
   12778:	018e4e33          	xor	t3,t3,s8
   1277c:	00765393          	srli	t2,a2,0x7
   12780:	01d8c8b3          	xor	a7,a7,t4
   12784:	01969913          	slli	s2,a3,0x19
   12788:	01961493          	slli	s1,a2,0x19
   1278c:	00965e93          	srli	t4,a2,0x9
   12790:	0096db13          	srli	s6,a3,0x9
   12794:	017e4e33          	xor	t3,t3,s7
   12798:	010eeeb3          	or	t4,t4,a6
   1279c:	00fb6b33          	or	s6,s6,a5
   127a0:	00796933          	or	s2,s2,t2
   127a4:	0054e4b3          	or	s1,s1,t0
   127a8:	01694933          	xor	s2,s2,s6
   127ac:	01d4c4b3          	xor	s1,s1,t4
   127b0:	003e1b13          	slli	s6,t3,0x3
   127b4:	01d75e93          	srli	t4,a4,0x1d
   127b8:	016eeb33          	or	s6,t4,s6
   127bc:	01de5c93          	srli	s9,t3,0x1d
   127c0:	00371e93          	slli	t4,a4,0x3
   127c4:	01dcecb3          	or	s9,s9,t4
   127c8:	01e34333          	xor	t1,t1,t5
   127cc:	019e1e93          	slli	t4,t3,0x19
   127d0:	00775c13          	srli	s8,a4,0x7
   127d4:	00a34333          	xor	t1,t1,a0
   127d8:	00b8c8b3          	xor	a7,a7,a1
   127dc:	01971f93          	slli	t6,a4,0x19
   127e0:	01dc6c33          	or	s8,s8,t4
   127e4:	007e5e93          	srli	t4,t3,0x7
   127e8:	c622                	sw	s0,12(sp)
   127ea:	00a35f13          	srli	t5,t1,0xa
   127ee:	01feefb3          	or	t6,t4,t6
   127f2:	01689e93          	slli	t4,a7,0x16
   127f6:	c85a                	sw	s6,16(sp)
   127f8:	fff5c593          	not	a1,a1
   127fc:	fff54513          	not	a0,a0
   12800:	01eeef33          	or	t5,t4,t5
   12804:	00a8db13          	srli	s6,a7,0xa
   12808:	01631e93          	slli	t4,t1,0x16
   1280c:	01135d93          	srli	s11,t1,0x11
   12810:	0015dd13          	srli	s10,a1,0x1
   12814:	0065d293          	srli	t0,a1,0x6
   12818:	016eeb33          	or	s6,t4,s6
   1281c:	01f51a13          	slli	s4,a0,0x1f
   12820:	01a51813          	slli	a6,a0,0x1a
   12824:	00f89e93          	slli	t4,a7,0xf
   12828:	01fccfb3          	xor	t6,s9,t6
   1282c:	4cc2                	lw	s9,16(sp)
   1282e:	01beeeb3          	or	t4,t4,s11
   12832:	01aa6a33          	or	s4,s4,s10
   12836:	00586833          	or	a6,a6,t0
   1283a:	ca76                	sw	t4,20(sp)
   1283c:	00155393          	srli	t2,a0,0x1
   12840:	01f59a93          	slli	s5,a1,0x1f
   12844:	010a4833          	xor	a6,s4,a6
   12848:	4a32                	lw	s4,12(sp)
   1284a:	00dbc9b3          	xor	s3,s7,a3
   1284e:	8c31                	xor	s0,s0,a2
   12850:	0118dd93          	srli	s11,a7,0x11
   12854:	007aeab3          	or	s5,s5,t2
   12858:	00655793          	srli	a5,a0,0x6
   1285c:	01a59393          	slli	t2,a1,0x1a
   12860:	00f31e93          	slli	t4,t1,0xf
   12864:	018ccc33          	xor	s8,s9,s8
   12868:	4cd2                	lw	s9,20(sp)
   1286a:	01beeeb3          	or	t4,t4,s11
   1286e:	00f3e7b3          	or	a5,t2,a5
   12872:	00d99d93          	slli	s11,s3,0xd
   12876:	01345393          	srli	t2,s0,0x13
   1287a:	00d41d13          	slli	s10,s0,0xd
   1287e:	00fac7b3          	xor	a5,s5,a5
   12882:	0139d293          	srli	t0,s3,0x13
   12886:	01c45a93          	srli	s5,s0,0x1c
   1288a:	01db4eb3          	xor	t4,s6,t4
   1288e:	007de3b3          	or	t2,s11,t2
   12892:	012a4b33          	xor	s6,s4,s2
   12896:	00499a13          	slli	s4,s3,0x4
   1289a:	00efcfb3          	xor	t6,t6,a4
   1289e:	011eceb3          	xor	t4,t4,a7
   128a2:	009bcbb3          	xor	s7,s7,s1
   128a6:	8d3d                	xor	a0,a0,a5
   128a8:	0163c3b3          	xor	t2,t2,s6
   128ac:	015a6a33          	or	s4,s4,s5
   128b0:	8ea5                	xor	a3,a3,s1
   128b2:	019f4f33          	xor	t5,t5,s9
   128b6:	005d62b3          	or	t0,s10,t0
   128ba:	01c9d993          	srli	s3,s3,0x1c
   128be:	0412                	slli	s0,s0,0x4
   128c0:	01d6c7b3          	xor	a5,a3,t4
   128c4:	006f4f33          	xor	t5,t5,t1
   128c8:	0143c8b3          	xor	a7,t2,s4
   128cc:	01f546b3          	xor	a3,a0,t6
   128d0:	0172c2b3          	xor	t0,t0,s7
   128d4:	01346433          	or	s0,s0,s3
   128d8:	01264733          	xor	a4,a2,s2
   128dc:	01cc4c33          	xor	s8,s8,t3
   128e0:	01e74733          	xor	a4,a4,t5
   128e4:	04b6ce13          	xori	t3,a3,75
   128e8:	00b84833          	xor	a6,a6,a1
   128ec:	ffff4313          	not	t1,t5
   128f0:	0082c5b3          	xor	a1,t0,s0
   128f4:	fff8ca13          	not	s4,a7
   128f8:	ffffc293          	not	t0,t6
   128fc:	fb46c693          	xori	a3,a3,-76
   12900:	01884833          	xor	a6,a6,s8
   12904:	01e6f6b3          	and	a3,a3,t5
   12908:	fffc4613          	not	a2,s8
   1290c:	fff5c993          	not	s3,a1
   12910:	fff74493          	not	s1,a4
   12914:	01c2f2b3          	and	t0,t0,t3
   12918:	00e37333          	and	t1,t1,a4
   1291c:	01fa7a33          	and	s4,s4,t6
   12920:	00ea4a33          	xor	s4,s4,a4
   12924:	0112c2b3          	xor	t0,t0,a7
   12928:	01c34733          	xor	a4,t1,t3
   1292c:	fffec513          	not	a0,t4
   12930:	01f6ce33          	xor	t3,a3,t6
   12934:	fff7c393          	not	t2,a5
   12938:	01067633          	and	a2,a2,a6
   1293c:	0189f9b3          	and	s3,s3,s8
   12940:	0114f4b3          	and	s1,s1,a7
   12944:	00f9c9b3          	xor	s3,s3,a5
   12948:	005e4e33          	xor	t3,t3,t0
   1294c:	8e2d                	xor	a2,a2,a1
   1294e:	0142c2b3          	xor	t0,t0,s4
   12952:	8d7d                	and	a0,a0,a5
   12954:	00b3f3b3          	and	t2,t2,a1
   12958:	01e4c4b3          	xor	s1,s1,t5
   1295c:	01364fb3          	xor	t6,a2,s3
   12960:	8cb9                	xor	s1,s1,a4
   12962:	fff74f13          	not	t5,a4
   12966:	010547b3          	xor	a5,a0,a6
   1296a:	0132d713          	srli	a4,t0,0x13
   1296e:	fff84913          	not	s2,a6
   12972:	01d3c3b3          	xor	t2,t2,t4
   12976:	00f3c3b3          	xor	t2,t2,a5
   1297a:	85ba                	mv	a1,a4
   1297c:	01d97933          	and	s2,s2,t4
   12980:	fff7ce93          	not	t4,a5
   12984:	00df9793          	slli	a5,t6,0xd
   12988:	8fcd                	or	a5,a5,a1
   1298a:	00d29713          	slli	a4,t0,0xd
   1298e:	013fd593          	srli	a1,t6,0x13
   12992:	01894933          	xor	s2,s2,s8
   12996:	004f9413          	slli	s0,t6,0x4
   1299a:	8f4d                	or	a4,a4,a1
   1299c:	01c2d593          	srli	a1,t0,0x1c
   129a0:	00c94933          	xor	s2,s2,a2
   129a4:	8c4d                	or	s0,s0,a1
   129a6:	01cfdb13          	srli	s6,t6,0x1c
   129aa:	00429593          	slli	a1,t0,0x4
   129ae:	0165eb33          	or	s6,a1,s6
   129b2:	00391893          	slli	a7,s2,0x3
   129b6:	01de5593          	srli	a1,t3,0x1d
   129ba:	0115e8b3          	or	a7,a1,a7
   129be:	ca46                	sw	a7,20(sp)
   129c0:	01d95593          	srli	a1,s2,0x1d
   129c4:	003e1893          	slli	a7,t3,0x3
   129c8:	0115e8b3          	or	a7,a1,a7
   129cc:	01991d93          	slli	s11,s2,0x19
   129d0:	007e5593          	srli	a1,t3,0x7
   129d4:	01b5edb3          	or	s11,a1,s11
   129d8:	019e1513          	slli	a0,t3,0x19
   129dc:	00795593          	srli	a1,s2,0x7
   129e0:	8d4d                	or	a0,a0,a1
   129e2:	001f5d13          	srli	s10,t5,0x1
   129e6:	01fe9593          	slli	a1,t4,0x1f
   129ea:	01a5ed33          	or	s10,a1,s10
   129ee:	001edc93          	srli	s9,t4,0x1
   129f2:	01ff1593          	slli	a1,t5,0x1f
   129f6:	0195ecb3          	or	s9,a1,s9
   129fa:	006f5693          	srli	a3,t5,0x6
   129fe:	01ae9593          	slli	a1,t4,0x1a
   12a02:	8ecd                	or	a3,a3,a1
   12a04:	006ed813          	srli	a6,t4,0x6
   12a08:	01af1593          	slli	a1,t5,0x1a
   12a0c:	00a4d313          	srli	t1,s1,0xa
   12a10:	0105e833          	or	a6,a1,a6
   12a14:	01639593          	slli	a1,t2,0x16
   12a18:	00a3db93          	srli	s7,t2,0xa
   12a1c:	0065e333          	or	t1,a1,t1
   12a20:	01649593          	slli	a1,s1,0x16
   12a24:	0114dc13          	srli	s8,s1,0x11
   12a28:	0175ebb3          	or	s7,a1,s7
   12a2c:	00f39593          	slli	a1,t2,0xf
   12a30:	007a5613          	srli	a2,s4,0x7
   12a34:	c63e                	sw	a5,12(sp)
   12a36:	0185ec33          	or	s8,a1,s8
   12a3a:	0113d793          	srli	a5,t2,0x11
   12a3e:	00f49593          	slli	a1,s1,0xf
   12a42:	8ab2                	mv	s5,a2
   12a44:	c846                	sw	a7,16(sp)
   12a46:	00f5e8b3          	or	a7,a1,a5
   12a4a:	01999593          	slli	a1,s3,0x19
   12a4e:	0155eab3          	or	s5,a1,s5
   12a52:	cc56                	sw	s5,24(sp)
   12a54:	019a1593          	slli	a1,s4,0x19
   12a58:	0079da93          	srli	s5,s3,0x7
   12a5c:	0155eab3          	or	s5,a1,s5
   12a60:	01799613          	slli	a2,s3,0x17
   12a64:	009a5593          	srli	a1,s4,0x9
   12a68:	8e4d                	or	a2,a2,a1
   12a6a:	0099d793          	srli	a5,s3,0x9
   12a6e:	017a1593          	slli	a1,s4,0x17
   12a72:	8ddd                	or	a1,a1,a5
   12a74:	47b2                	lw	a5,12(sp)
   12a76:	01674733          	xor	a4,a4,s6
   12a7a:	00dd46b3          	xor	a3,s10,a3
   12a7e:	8fa1                	xor	a5,a5,s0
   12a80:	4452                	lw	s0,20(sp)
   12a82:	4b42                	lw	s6,16(sp)
   12a84:	01f74733          	xor	a4,a4,t6
   12a88:	01b44db3          	xor	s11,s0,s11
   12a8c:	01e6cfb3          	xor	t6,a3,t5
   12a90:	4462                	lw	s0,24(sp)
   12a92:	56d2                	lw	a3,52(sp)
   12a94:	00cacab3          	xor	s5,s5,a2
   12a98:	01834333          	xor	t1,t1,s8
   12a9c:	8da1                	xor	a1,a1,s0
   12a9e:	00ab4533          	xor	a0,s6,a0
   12aa2:	010cc833          	xor	a6,s9,a6
   12aa6:	011bc8b3          	xor	a7,s7,a7
   12aaa:	00934633          	xor	a2,t1,s1
   12aae:	06e1                	addi	a3,a3,24
   12ab0:	013ac4b3          	xor	s1,s5,s3
   12ab4:	0057c7b3          	xor	a5,a5,t0
   12ab8:	012dc933          	xor	s2,s11,s2
   12abc:	01c54433          	xor	s0,a0,t3
   12ac0:	0145cdb3          	xor	s11,a1,s4
   12ac4:	01d842b3          	xor	t0,a6,t4
   12ac8:	0078c3b3          	xor	t2,a7,t2
   12acc:	d036                	sw	a3,32(sp)
   12ace:	85a6                	mv	a1,s1
   12ad0:	58d2                	lw	a7,52(sp)
   12ad2:	03800693          	li	a3,56
   12ad6:	00171e13          	slli	t3,a4,0x1
   12ada:	457d                	li	a0,31
   12adc:	8d15                	sub	a0,a0,a3
   12ade:	00d7d833          	srl	a6,a5,a3
   12ae2:	00ae1533          	sll	a0,t3,a0
   12ae6:	fe068313          	addi	t1,a3,-32
   12aea:	01056833          	or	a6,a0,a6
   12aee:	00034463          	bltz	t1,12af6 <crypto_hash+0x2916>
   12af2:	00675833          	srl	a6,a4,t1
   12af6:	01088023          	sb	a6,0(a7)
   12afa:	16e1                	addi	a3,a3,-8
   12afc:	5561                	li	a0,-8
   12afe:	0885                	addi	a7,a7,1
   12b00:	fca69de3          	bne	a3,a0,12ada <crypto_hash+0x28fa>
   12b04:	005942b3          	xor	t0,s2,t0
   12b08:	8f2d                	xor	a4,a4,a1
   12b0a:	01f44fb3          	xor	t6,s0,t6
   12b0e:	0075c5b3          	xor	a1,a1,t2
   12b12:	0b4fce93          	xori	t4,t6,180
   12b16:	fff3c813          	not	a6,t2
   12b1a:	fff44513          	not	a0,s0
   12b1e:	fff94693          	not	a3,s2
   12b22:	fff74493          	not	s1,a4
   12b26:	f4bfc313          	xori	t1,t6,-181
   12b2a:	fff2ce13          	not	t3,t0
   12b2e:	00fdc7b3          	xor	a5,s11,a5
   12b32:	00c37333          	and	t1,t1,a2
   12b36:	007e7e33          	and	t3,t3,t2
   12b3a:	0056f6b3          	and	a3,a3,t0
   12b3e:	00b87833          	and	a6,a6,a1
   12b42:	fff5cf13          	not	t5,a1
   12b46:	0124f4b3          	and	s1,s1,s2
   12b4a:	01d57533          	and	a0,a0,t4
   12b4e:	8cad                	xor	s1,s1,a1
   12b50:	00cdcab3          	xor	s5,s11,a2
   12b54:	00e6c5b3          	xor	a1,a3,a4
   12b58:	00584833          	xor	a6,a6,t0
   12b5c:	8d3d                	xor	a0,a0,a5
   12b5e:	012e42b3          	xor	t0,t3,s2
   12b62:	00ef7f33          	and	t5,t5,a4
   12b66:	00834733          	xor	a4,t1,s0
   12b6a:	8f29                	xor	a4,a4,a0
   12b6c:	00b2c2b3          	xor	t0,t0,a1
   12b70:	fff64893          	not	a7,a2
   12b74:	fffacf93          	not	t6,s5
   12b78:	0158f8b3          	and	a7,a7,s5
   12b7c:	fff7c993          	not	s3,a5
   12b80:	00ffffb3          	and	t6,t6,a5
   12b84:	01d75e13          	srli	t3,a4,0x1d
   12b88:	00329793          	slli	a5,t0,0x3
   12b8c:	01d8c8b3          	xor	a7,a7,t4
   12b90:	00fe6e33          	or	t3,t3,a5
   12b94:	01d2dd93          	srli	s11,t0,0x1d
   12b98:	00371793          	slli	a5,a4,0x3
   12b9c:	00fdedb3          	or	s11,s11,a5
   12ba0:	011fcfb3          	xor	t6,t6,a7
   12ba4:	01929793          	slli	a5,t0,0x19
   12ba8:	010f4f33          	xor	t5,t5,a6
   12bac:	00775d13          	srli	s10,a4,0x7
   12bb0:	00cfcfb3          	xor	t6,t6,a2
   12bb4:	007f4f33          	xor	t5,t5,t2
   12bb8:	00fd6d33          	or	s10,s10,a5
   12bbc:	01971393          	slli	t2,a4,0x19
   12bc0:	0072d793          	srli	a5,t0,0x7
   12bc4:	016f1c93          	slli	s9,t5,0x16
   12bc8:	0077e3b3          	or	t2,a5,t2
   12bcc:	00afd793          	srli	a5,t6,0xa
   12bd0:	c672                	sw	t3,12(sp)
   12bd2:	00fcecb3          	or	s9,s9,a5
   12bd6:	00af5e13          	srli	t3,t5,0xa
   12bda:	016f9793          	slli	a5,t6,0x16
   12bde:	01c7ee33          	or	t3,a5,t3
   12be2:	c872                	sw	t3,16(sp)
   12be4:	00ff1793          	slli	a5,t5,0xf
   12be8:	011fde13          	srli	t3,t6,0x11
   12bec:	01c7e7b3          	or	a5,a5,t3
   12bf0:	0089f9b3          	and	s3,s3,s0
   12bf4:	ca3e                	sw	a5,20(sp)
   12bf6:	0159c9b3          	xor	s3,s3,s5
   12bfa:	00ff9793          	slli	a5,t6,0xf
   12bfe:	011f5c13          	srli	s8,t5,0x11
   12c02:	0079db93          	srli	s7,s3,0x7
   12c06:	0187ec33          	or	s8,a5,s8
   12c0a:	01949793          	slli	a5,s1,0x19
   12c0e:	0177ebb3          	or	s7,a5,s7
   12c12:	0074db13          	srli	s6,s1,0x7
   12c16:	01999793          	slli	a5,s3,0x19
   12c1a:	0167eb33          	or	s6,a5,s6
   12c1e:	01749693          	slli	a3,s1,0x17
   12c22:	0099d793          	srli	a5,s3,0x9
   12c26:	fff8c893          	not	a7,a7
   12c2a:	fff84813          	not	a6,a6
   12c2e:	01799613          	slli	a2,s3,0x17
   12c32:	8edd                	or	a3,a3,a5
   12c34:	0094d793          	srli	a5,s1,0x9
   12c38:	01f81a93          	slli	s5,a6,0x1f
   12c3c:	8e5d                	or	a2,a2,a5
   12c3e:	0018d793          	srli	a5,a7,0x1
   12c42:	00faeab3          	or	s5,s5,a5
   12c46:	00185a13          	srli	s4,a6,0x1
   12c4a:	01f89793          	slli	a5,a7,0x1f
   12c4e:	0147ea33          	or	s4,a5,s4
   12c52:	0068de13          	srli	t3,a7,0x6
   12c56:	01a81793          	slli	a5,a6,0x1a
   12c5a:	01354533          	xor	a0,a0,s3
   12c5e:	8da5                	xor	a1,a1,s1
   12c60:	01c7e7b3          	or	a5,a5,t3
   12c64:	00685313          	srli	t1,a6,0x6
   12c68:	01a89e13          	slli	t3,a7,0x1a
   12c6c:	007dc3b3          	xor	t2,s11,t2
   12c70:	4db2                	lw	s11,12(sp)
   12c72:	00d59913          	slli	s2,a1,0xd
   12c76:	006e6333          	or	t1,t3,t1
   12c7a:	01355e13          	srli	t3,a0,0x13
   12c7e:	01c96933          	or	s2,s2,t3
   12c82:	00d51413          	slli	s0,a0,0xd
   12c86:	0135de13          	srli	t3,a1,0x13
   12c8a:	01c46433          	or	s0,s0,t3
   12c8e:	01c55e93          	srli	t4,a0,0x1c
   12c92:	00459e13          	slli	t3,a1,0x4
   12c96:	01adcd33          	xor	s10,s11,s10
   12c9a:	4dd2                	lw	s11,20(sp)
   12c9c:	cc3e                	sw	a5,24(sp)
   12c9e:	01de6eb3          	or	t4,t3,t4
   12ca2:	01c5d793          	srli	a5,a1,0x1c
   12ca6:	00451e13          	slli	t3,a0,0x4
   12caa:	00fe6e33          	or	t3,t3,a5
   12cae:	47e2                	lw	a5,24(sp)
   12cb0:	01bcccb3          	xor	s9,s9,s11
   12cb4:	4dc2                	lw	s11,16(sp)
   12cb6:	00cbc633          	xor	a2,s7,a2
   12cba:	00db46b3          	xor	a3,s6,a3
   12cbe:	00fac7b3          	xor	a5,s5,a5
   12cc2:	006a4333          	xor	t1,s4,t1
   12cc6:	01d94eb3          	xor	t4,s2,t4
   12cca:	01c44e33          	xor	t3,s0,t3
   12cce:	00e3c3b3          	xor	t2,t2,a4
   12cd2:	005d4d33          	xor	s10,s10,t0
   12cd6:	01364633          	xor	a2,a2,s3
   12cda:	8ea5                	xor	a3,a3,s1
   12cdc:	01034333          	xor	t1,t1,a6
   12ce0:	00be4e33          	xor	t3,t3,a1
   12ce4:	018dcc33          	xor	s8,s11,s8
   12ce8:	0117c7b3          	xor	a5,a5,a7
   12cec:	00aeceb3          	xor	t4,t4,a0
   12cf0:	01fcccb3          	xor	s9,s9,t6
   12cf4:	01ec4c33          	xor	s8,s8,t5
   12cf8:	01a34733          	xor	a4,t1,s10
   12cfc:	00de4fb3          	xor	t6,t3,a3
   12d00:	00ceceb3          	xor	t4,t4,a2
   12d04:	0077c7b3          	xor	a5,a5,t2
   12d08:	00cccf33          	xor	t5,s9,a2
   12d0c:	00dc4833          	xor	a6,s8,a3
   12d10:	0a57c493          	xori	s1,a5,165
   12d14:	fff3c413          	not	s0,t2
   12d18:	fffd4293          	not	t0,s10
   12d1c:	fffc4593          	not	a1,s8
   12d20:	fffec613          	not	a2,t4
   12d24:	ffffc693          	not	a3,t6
   12d28:	fff74e13          	not	t3,a4
   12d2c:	f5a7c793          	xori	a5,a5,-166
   12d30:	00e2f2b3          	and	t0,t0,a4
   12d34:	0197f7b3          	and	a5,a5,s9
   12d38:	fffcc513          	not	a0,s9
   12d3c:	8c65                	and	s0,s0,s1
   12d3e:	0105f5b3          	and	a1,a1,a6
   12d42:	00767633          	and	a2,a2,t2
   12d46:	01a6f6b3          	and	a3,a3,s10
   12d4a:	018e7e33          	and	t3,t3,s8
   12d4e:	0106c6b3          	xor	a3,a3,a6
   12d52:	01e64633          	xor	a2,a2,t5
   12d56:	01d44433          	xor	s0,s0,t4
   12d5a:	8db9                	xor	a1,a1,a4
   12d5c:	ffff4313          	not	t1,t5
   12d60:	0077c733          	xor	a4,a5,t2
   12d64:	fff84893          	not	a7,a6
   12d68:	01e57533          	and	a0,a0,t5
   12d6c:	01f2c833          	xor	a6,t0,t6
   12d70:	01ae4e33          	xor	t3,t3,s10
   12d74:	8f21                	xor	a4,a4,s0
   12d76:	010e4e33          	xor	t3,t3,a6
   12d7a:	82c2                	mv	t0,a6
   12d7c:	8d25                	xor	a0,a0,s1
   12d7e:	00765993          	srli	s3,a2,0x7
   12d82:	0076d913          	srli	s2,a3,0x7
   12d86:	01769813          	slli	a6,a3,0x17
   12d8a:	01761793          	slli	a5,a2,0x17
   12d8e:	01d37333          	and	t1,t1,t4
   12d92:	01f8f8b3          	and	a7,a7,t6
   12d96:	8ea2                	mv	t4,s0
   12d98:	01969493          	slli	s1,a3,0x19
   12d9c:	01961413          	slli	s0,a2,0x19
   12da0:	00965f13          	srli	t5,a2,0x9
   12da4:	0096df93          	srli	t6,a3,0x9
   12da8:	010f6f33          	or	t5,t5,a6
   12dac:	00ffefb3          	or	t6,t6,a5
   12db0:	0134e4b3          	or	s1,s1,s3
   12db4:	01246433          	or	s0,s0,s2
   12db8:	01f4c4b3          	xor	s1,s1,t6
   12dbc:	01e44433          	xor	s0,s0,t5
   12dc0:	003e1f93          	slli	t6,t3,0x3
   12dc4:	01d75f13          	srli	t5,a4,0x1d
   12dc8:	c816                	sw	t0,16(sp)
   12dca:	019e1d13          	slli	s10,t3,0x19
   12dce:	01934333          	xor	t1,t1,s9
   12dd2:	01ff6fb3          	or	t6,t5,t6
   12dd6:	00d2ccb3          	xor	s9,t0,a3
   12dda:	01de5f13          	srli	t5,t3,0x1d
   12dde:	00371293          	slli	t0,a4,0x3
   12de2:	8aea                	mv	s5,s10
   12de4:	005f62b3          	or	t0,t5,t0
   12de8:	00775f13          	srli	t5,a4,0x7
   12dec:	015f6f33          	or	t5,t5,s5
   12df0:	0188c8b3          	xor	a7,a7,s8
   12df4:	ca7a                	sw	t5,20(sp)
   12df6:	00a34333          	xor	t1,t1,a0
   12dfa:	00b8c8b3          	xor	a7,a7,a1
   12dfe:	007e5f13          	srli	t5,t3,0x7
   12e02:	01971d13          	slli	s10,a4,0x19
   12e06:	fff54513          	not	a0,a0
   12e0a:	fff5c593          	not	a1,a1
   12e0e:	01af6d33          	or	s10,t5,s10
   12e12:	00a35a93          	srli	s5,t1,0xa
   12e16:	01689f13          	slli	t5,a7,0x16
   12e1a:	0015db93          	srli	s7,a1,0x1
   12e1e:	0065d913          	srli	s2,a1,0x6
   12e22:	00a8db13          	srli	s6,a7,0xa
   12e26:	01f51a13          	slli	s4,a0,0x1f
   12e2a:	01a51813          	slli	a6,a0,0x1a
   12e2e:	015f6f33          	or	t5,t5,s5
   12e32:	01631a93          	slli	s5,t1,0x16
   12e36:	c676                	sw	t4,12(sp)
   12e38:	016aeb33          	or	s6,s5,s6
   12e3c:	017a6a33          	or	s4,s4,s7
   12e40:	00f89a93          	slli	s5,a7,0xf
   12e44:	01135c13          	srli	s8,t1,0x11
   12e48:	01286833          	or	a6,a6,s2
   12e4c:	00cec3b3          	xor	t2,t4,a2
   12e50:	018aec33          	or	s8,s5,s8
   12e54:	0118de93          	srli	t4,a7,0x11
   12e58:	00f31a93          	slli	s5,t1,0xf
   12e5c:	010a4833          	xor	a6,s4,a6
   12e60:	4a32                	lw	s4,12(sp)
   12e62:	00155d93          	srli	s11,a0,0x1
   12e66:	00655993          	srli	s3,a0,0x6
   12e6a:	01a59793          	slli	a5,a1,0x1a
   12e6e:	01daeeb3          	or	t4,s5,t4
   12e72:	01f59a93          	slli	s5,a1,0x1f
   12e76:	01baeab3          	or	s5,s5,s11
   12e7a:	0137e7b3          	or	a5,a5,s3
   12e7e:	01a2c2b3          	xor	t0,t0,s10
   12e82:	00fac7b3          	xor	a5,s5,a5
   12e86:	4d52                	lw	s10,20(sp)
   12e88:	009a4ab3          	xor	s5,s4,s1
   12e8c:	4a42                	lw	s4,16(sp)
   12e8e:	00dc9d93          	slli	s11,s9,0xd
   12e92:	00d39b93          	slli	s7,t2,0xd
   12e96:	0133d993          	srli	s3,t2,0x13
   12e9a:	013cd913          	srli	s2,s9,0x13
   12e9e:	013de9b3          	or	s3,s11,s3
   12ea2:	012be933          	or	s2,s7,s2
   12ea6:	01afcfb3          	xor	t6,t6,s10
   12eaa:	01c3db93          	srli	s7,t2,0x1c
   12eae:	018f4f33          	xor	t5,t5,s8
   12eb2:	01db4eb3          	xor	t4,s6,t4
   12eb6:	01ccdc13          	srli	s8,s9,0x1c
   12eba:	008a4a33          	xor	s4,s4,s0
   12ebe:	004c9b13          	slli	s6,s9,0x4
   12ec2:	0392                	slli	t2,t2,0x4
   12ec4:	00e2c2b3          	xor	t0,t0,a4
   12ec8:	01cfcfb3          	xor	t6,t6,t3
   12ecc:	017b6b33          	or	s6,s6,s7
   12ed0:	0183e3b3          	or	t2,t2,s8
   12ed4:	8fa9                	xor	a5,a5,a0
   12ed6:	00b84833          	xor	a6,a6,a1
   12eda:	013acab3          	xor	s5,s5,s3
   12ede:	012a4a33          	xor	s4,s4,s2
   12ee2:	006f4f33          	xor	t5,t5,t1
   12ee6:	011eceb3          	xor	t4,t4,a7
   12eea:	01f84833          	xor	a6,a6,t6
   12eee:	016acab3          	xor	s5,s5,s6
   12ef2:	007a4a33          	xor	s4,s4,t2
   12ef6:	8e25                	xor	a2,a2,s1
   12ef8:	8ea1                	xor	a3,a3,s0
   12efa:	0057c7b3          	xor	a5,a5,t0
   12efe:	01e64433          	xor	s0,a2,t5
   12f02:	01d6c3b3          	xor	t2,a3,t4
   12f06:	0967c913          	xori	s2,a5,150
   12f0a:	fff2c493          	not	s1,t0
   12f0e:	ffffc713          	not	a4,t6
   12f12:	fffac613          	not	a2,s5
   12f16:	fffa4693          	not	a3,s4
   12f1a:	fff84e13          	not	t3,a6
   12f1e:	f697c793          	xori	a5,a5,-151
   12f22:	0124f4b3          	and	s1,s1,s2
   12f26:	01077733          	and	a4,a4,a6
   12f2a:	01e7f7b3          	and	a5,a5,t5
   12f2e:	ffff4513          	not	a0,t5
   12f32:	fffec593          	not	a1,t4
   12f36:	fff44313          	not	t1,s0
   12f3a:	fff3c893          	not	a7,t2
   12f3e:	00567633          	and	a2,a2,t0
   12f42:	01f6f6b3          	and	a3,a3,t6
   12f46:	01de7e33          	and	t3,t3,t4
   12f4a:	8e21                	xor	a2,a2,s0
   12f4c:	0076c6b3          	xor	a3,a3,t2
   12f50:	8d61                	and	a0,a0,s0
   12f52:	0075f5b3          	and	a1,a1,t2
   12f56:	0154c433          	xor	s0,s1,s5
   12f5a:	01537333          	and	t1,t1,s5
   12f5e:	014744b3          	xor	s1,a4,s4
   12f62:	0148f8b3          	and	a7,a7,s4
   12f66:	0057c733          	xor	a4,a5,t0
   12f6a:	01fe4e33          	xor	t3,t3,t6
   12f6e:	8f21                	xor	a4,a4,s0
   12f70:	009e4e33          	xor	t3,t3,s1
   12f74:	82a6                	mv	t0,s1
   12f76:	01254533          	xor	a0,a0,s2
   12f7a:	0105c5b3          	xor	a1,a1,a6
   12f7e:	00765993          	srli	s3,a2,0x7
   12f82:	0076d913          	srli	s2,a3,0x7
   12f86:	01769813          	slli	a6,a3,0x17
   12f8a:	01761793          	slli	a5,a2,0x17
   12f8e:	01e34333          	xor	t1,t1,t5
   12f92:	01d8c8b3          	xor	a7,a7,t4
   12f96:	01969493          	slli	s1,a3,0x19
   12f9a:	8ea2                	mv	t4,s0
   12f9c:	00965f13          	srli	t5,a2,0x9
   12fa0:	01961413          	slli	s0,a2,0x19
   12fa4:	0096df93          	srli	t6,a3,0x9
   12fa8:	010f6f33          	or	t5,t5,a6
   12fac:	00ffefb3          	or	t6,t6,a5
   12fb0:	0134e4b3          	or	s1,s1,s3
   12fb4:	01246433          	or	s0,s0,s2
   12fb8:	01f4c4b3          	xor	s1,s1,t6
   12fbc:	01e44433          	xor	s0,s0,t5
   12fc0:	003e1f93          	slli	t6,t3,0x3
   12fc4:	01d75f13          	srli	t5,a4,0x1d
   12fc8:	c816                	sw	t0,16(sp)
   12fca:	00d2ccb3          	xor	s9,t0,a3
   12fce:	019e1d13          	slli	s10,t3,0x19
   12fd2:	00371293          	slli	t0,a4,0x3
   12fd6:	01ff6fb3          	or	t6,t5,t6
   12fda:	01de5f13          	srli	t5,t3,0x1d
   12fde:	8aea                	mv	s5,s10
   12fe0:	005f62b3          	or	t0,t5,t0
   12fe4:	00775f13          	srli	t5,a4,0x7
   12fe8:	015f6f33          	or	t5,t5,s5
   12fec:	00a34333          	xor	t1,t1,a0
   12ff0:	00b8c8b3          	xor	a7,a7,a1
   12ff4:	ca7a                	sw	t5,20(sp)
   12ff6:	01971d13          	slli	s10,a4,0x19
   12ffa:	007e5f13          	srli	t5,t3,0x7
   12ffe:	fff54513          	not	a0,a0
   13002:	fff5c593          	not	a1,a1
   13006:	01af6d33          	or	s10,t5,s10
   1300a:	00a35a93          	srli	s5,t1,0xa
   1300e:	01689f13          	slli	t5,a7,0x16
   13012:	0015db93          	srli	s7,a1,0x1
   13016:	0065d913          	srli	s2,a1,0x6
   1301a:	00a8db13          	srli	s6,a7,0xa
   1301e:	01f51a13          	slli	s4,a0,0x1f
   13022:	01a51813          	slli	a6,a0,0x1a
   13026:	015f6f33          	or	t5,t5,s5
   1302a:	01631a93          	slli	s5,t1,0x16
   1302e:	c676                	sw	t4,12(sp)
   13030:	016aeb33          	or	s6,s5,s6
   13034:	017a6a33          	or	s4,s4,s7
   13038:	00f89a93          	slli	s5,a7,0xf
   1303c:	01135c13          	srli	s8,t1,0x11
   13040:	01286833          	or	a6,a6,s2
   13044:	00cec3b3          	xor	t2,t4,a2
   13048:	018aec33          	or	s8,s5,s8
   1304c:	0118de93          	srli	t4,a7,0x11
   13050:	00f31a93          	slli	s5,t1,0xf
   13054:	010a4833          	xor	a6,s4,a6
   13058:	4a32                	lw	s4,12(sp)
   1305a:	00155d93          	srli	s11,a0,0x1
   1305e:	00655993          	srli	s3,a0,0x6
   13062:	01a59793          	slli	a5,a1,0x1a
   13066:	01daeeb3          	or	t4,s5,t4
   1306a:	01f59a93          	slli	s5,a1,0x1f
   1306e:	01baeab3          	or	s5,s5,s11
   13072:	0137e7b3          	or	a5,a5,s3
   13076:	01a2c2b3          	xor	t0,t0,s10
   1307a:	00fac7b3          	xor	a5,s5,a5
   1307e:	4d52                	lw	s10,20(sp)
   13080:	009a4ab3          	xor	s5,s4,s1
   13084:	4a42                	lw	s4,16(sp)
   13086:	00dc9d93          	slli	s11,s9,0xd
   1308a:	00d39b93          	slli	s7,t2,0xd
   1308e:	0133d993          	srli	s3,t2,0x13
   13092:	013cd913          	srli	s2,s9,0x13
   13096:	013de9b3          	or	s3,s11,s3
   1309a:	012be933          	or	s2,s7,s2
   1309e:	01afcfb3          	xor	t6,t6,s10
   130a2:	01c3db93          	srli	s7,t2,0x1c
   130a6:	018f4f33          	xor	t5,t5,s8
   130aa:	01db4eb3          	xor	t4,s6,t4
   130ae:	01ccdc13          	srli	s8,s9,0x1c
   130b2:	008a4a33          	xor	s4,s4,s0
   130b6:	004c9b13          	slli	s6,s9,0x4
   130ba:	0392                	slli	t2,t2,0x4
   130bc:	00e2c2b3          	xor	t0,t0,a4
   130c0:	01cfcfb3          	xor	t6,t6,t3
   130c4:	017b6b33          	or	s6,s6,s7
   130c8:	0183e3b3          	or	t2,t2,s8
   130cc:	8fa9                	xor	a5,a5,a0
   130ce:	00b84833          	xor	a6,a6,a1
   130d2:	013acab3          	xor	s5,s5,s3
   130d6:	012a4a33          	xor	s4,s4,s2
   130da:	006f4f33          	xor	t5,t5,t1
   130de:	011eceb3          	xor	t4,t4,a7
   130e2:	01f84833          	xor	a6,a6,t6
   130e6:	016acab3          	xor	s5,s5,s6
   130ea:	007a4a33          	xor	s4,s4,t2
   130ee:	8e25                	xor	a2,a2,s1
   130f0:	8ea1                	xor	a3,a3,s0
   130f2:	0057c7b3          	xor	a5,a5,t0
   130f6:	01e64433          	xor	s0,a2,t5
   130fa:	01d6c3b3          	xor	t2,a3,t4
   130fe:	0877c913          	xori	s2,a5,135
   13102:	fff2c493          	not	s1,t0
   13106:	ffffc713          	not	a4,t6
   1310a:	fffac613          	not	a2,s5
   1310e:	fffa4693          	not	a3,s4
   13112:	fff84e13          	not	t3,a6
   13116:	f787c793          	xori	a5,a5,-136
   1311a:	0124f4b3          	and	s1,s1,s2
   1311e:	01077733          	and	a4,a4,a6
   13122:	01e7f7b3          	and	a5,a5,t5
   13126:	ffff4513          	not	a0,t5
   1312a:	fffec593          	not	a1,t4
   1312e:	fff44313          	not	t1,s0
   13132:	fff3c893          	not	a7,t2
   13136:	00567633          	and	a2,a2,t0
   1313a:	01f6f6b3          	and	a3,a3,t6
   1313e:	01de7e33          	and	t3,t3,t4
   13142:	8e21                	xor	a2,a2,s0
   13144:	0076c6b3          	xor	a3,a3,t2
   13148:	8d61                	and	a0,a0,s0
   1314a:	0075f5b3          	and	a1,a1,t2
   1314e:	0154c433          	xor	s0,s1,s5
   13152:	01537333          	and	t1,t1,s5
   13156:	014744b3          	xor	s1,a4,s4
   1315a:	0148f8b3          	and	a7,a7,s4
   1315e:	0057c733          	xor	a4,a5,t0
   13162:	01fe4e33          	xor	t3,t3,t6
   13166:	8f21                	xor	a4,a4,s0
   13168:	009e4e33          	xor	t3,t3,s1
   1316c:	82a6                	mv	t0,s1
   1316e:	01254533          	xor	a0,a0,s2
   13172:	0105c5b3          	xor	a1,a1,a6
   13176:	00765993          	srli	s3,a2,0x7
   1317a:	0076d913          	srli	s2,a3,0x7
   1317e:	01769813          	slli	a6,a3,0x17
   13182:	01761793          	slli	a5,a2,0x17
   13186:	01e34333          	xor	t1,t1,t5
   1318a:	01d8c8b3          	xor	a7,a7,t4
   1318e:	01969493          	slli	s1,a3,0x19
   13192:	8ea2                	mv	t4,s0
   13194:	00965f13          	srli	t5,a2,0x9
   13198:	01961413          	slli	s0,a2,0x19
   1319c:	0096df93          	srli	t6,a3,0x9
   131a0:	010f6f33          	or	t5,t5,a6
   131a4:	00ffefb3          	or	t6,t6,a5
   131a8:	0134e4b3          	or	s1,s1,s3
   131ac:	01246433          	or	s0,s0,s2
   131b0:	01f4c4b3          	xor	s1,s1,t6
   131b4:	01e44433          	xor	s0,s0,t5
   131b8:	003e1f93          	slli	t6,t3,0x3
   131bc:	01d75f13          	srli	t5,a4,0x1d
   131c0:	00d2ccb3          	xor	s9,t0,a3
   131c4:	c816                	sw	t0,16(sp)
   131c6:	019e1d13          	slli	s10,t3,0x19
   131ca:	00371293          	slli	t0,a4,0x3
   131ce:	01ff6fb3          	or	t6,t5,t6
   131d2:	01de5f13          	srli	t5,t3,0x1d
   131d6:	8aea                	mv	s5,s10
   131d8:	005f62b3          	or	t0,t5,t0
   131dc:	00775f13          	srli	t5,a4,0x7
   131e0:	015f6f33          	or	t5,t5,s5
   131e4:	00a34333          	xor	t1,t1,a0
   131e8:	00b8c8b3          	xor	a7,a7,a1
   131ec:	ca7a                	sw	t5,20(sp)
   131ee:	01971d13          	slli	s10,a4,0x19
   131f2:	007e5f13          	srli	t5,t3,0x7
   131f6:	fff54513          	not	a0,a0
   131fa:	fff5c593          	not	a1,a1
   131fe:	01af6d33          	or	s10,t5,s10
   13202:	00a35a93          	srli	s5,t1,0xa
   13206:	01689f13          	slli	t5,a7,0x16
   1320a:	0015db93          	srli	s7,a1,0x1
   1320e:	0065d913          	srli	s2,a1,0x6
   13212:	00a8db13          	srli	s6,a7,0xa
   13216:	01f51a13          	slli	s4,a0,0x1f
   1321a:	01a51813          	slli	a6,a0,0x1a
   1321e:	015f6f33          	or	t5,t5,s5
   13222:	01631a93          	slli	s5,t1,0x16
   13226:	c676                	sw	t4,12(sp)
   13228:	016aeb33          	or	s6,s5,s6
   1322c:	017a6a33          	or	s4,s4,s7
   13230:	00f89a93          	slli	s5,a7,0xf
   13234:	01135c13          	srli	s8,t1,0x11
   13238:	01286833          	or	a6,a6,s2
   1323c:	00cec3b3          	xor	t2,t4,a2
   13240:	018aec33          	or	s8,s5,s8
   13244:	0118de93          	srli	t4,a7,0x11
   13248:	00f31a93          	slli	s5,t1,0xf
   1324c:	010a4833          	xor	a6,s4,a6
   13250:	4a32                	lw	s4,12(sp)
   13252:	00155d93          	srli	s11,a0,0x1
   13256:	00655993          	srli	s3,a0,0x6
   1325a:	01a59793          	slli	a5,a1,0x1a
   1325e:	01daeeb3          	or	t4,s5,t4
   13262:	01f59a93          	slli	s5,a1,0x1f
   13266:	01baeab3          	or	s5,s5,s11
   1326a:	0137e7b3          	or	a5,a5,s3
   1326e:	00fac7b3          	xor	a5,s5,a5
   13272:	009a4ab3          	xor	s5,s4,s1
   13276:	4a42                	lw	s4,16(sp)
   13278:	01a2c2b3          	xor	t0,t0,s10
   1327c:	4d52                	lw	s10,20(sp)
   1327e:	00dc9d93          	slli	s11,s9,0xd
   13282:	00d39b93          	slli	s7,t2,0xd
   13286:	0133d993          	srli	s3,t2,0x13
   1328a:	013cd913          	srli	s2,s9,0x13
   1328e:	013de9b3          	or	s3,s11,s3
   13292:	012be933          	or	s2,s7,s2
   13296:	018f4f33          	xor	t5,t5,s8
   1329a:	01c3db93          	srli	s7,t2,0x1c
   1329e:	01ccdc13          	srli	s8,s9,0x1c
   132a2:	01db4eb3          	xor	t4,s6,t4
   132a6:	008a4a33          	xor	s4,s4,s0
   132aa:	004c9b13          	slli	s6,s9,0x4
   132ae:	0392                	slli	t2,t2,0x4
   132b0:	017b6b33          	or	s6,s6,s7
   132b4:	0183e3b3          	or	t2,t2,s8
   132b8:	01afcfb3          	xor	t6,t6,s10
   132bc:	013acab3          	xor	s5,s5,s3
   132c0:	012a4a33          	xor	s4,s4,s2
   132c4:	00e2c2b3          	xor	t0,t0,a4
   132c8:	01cfcfb3          	xor	t6,t6,t3
   132cc:	006f4f33          	xor	t5,t5,t1
   132d0:	011eceb3          	xor	t4,t4,a7
   132d4:	007a4a33          	xor	s4,s4,t2
   132d8:	016acab3          	xor	s5,s5,s6
   132dc:	8e25                	xor	a2,a2,s1
   132de:	8ea1                	xor	a3,a3,s0
   132e0:	8fa9                	xor	a5,a5,a0
   132e2:	00b84833          	xor	a6,a6,a1
   132e6:	01e64433          	xor	s0,a2,t5
   132ea:	01d6c3b3          	xor	t2,a3,t4
   132ee:	01f84833          	xor	a6,a6,t6
   132f2:	0057c7b3          	xor	a5,a5,t0
   132f6:	fffac613          	not	a2,s5
   132fa:	fffa4693          	not	a3,s4
   132fe:	0787c913          	xori	s2,a5,120
   13302:	fff2c493          	not	s1,t0
   13306:	ffffc713          	not	a4,t6
   1330a:	ffff4513          	not	a0,t5
   1330e:	fffec593          	not	a1,t4
   13312:	fff84e13          	not	t3,a6
   13316:	fff44313          	not	t1,s0
   1331a:	fff3c893          	not	a7,t2
   1331e:	00567633          	and	a2,a2,t0
   13322:	01f6f6b3          	and	a3,a3,t6
   13326:	f877c793          	xori	a5,a5,-121
   1332a:	8e21                	xor	a2,a2,s0
   1332c:	0076c6b3          	xor	a3,a3,t2
   13330:	0124f4b3          	and	s1,s1,s2
   13334:	01077733          	and	a4,a4,a6
   13338:	01e7f7b3          	and	a5,a5,t5
   1333c:	8d61                	and	a0,a0,s0
   1333e:	0075f5b3          	and	a1,a1,t2
   13342:	01de7e33          	and	t3,t3,t4
   13346:	01537333          	and	t1,t1,s5
   1334a:	0148f8b3          	and	a7,a7,s4
   1334e:	01474bb3          	xor	s7,a4,s4
   13352:	0154cb33          	xor	s6,s1,s5
   13356:	01254533          	xor	a0,a0,s2
   1335a:	0105c5b3          	xor	a1,a1,a6
   1335e:	0057c733          	xor	a4,a5,t0
   13362:	01769813          	slli	a6,a3,0x17
   13366:	01761793          	slli	a5,a2,0x17
   1336a:	01fe4e33          	xor	t3,t3,t6
   1336e:	01e34333          	xor	t1,t1,t5
   13372:	01d8c8b3          	xor	a7,a7,t4
   13376:	00765f13          	srli	t5,a2,0x7
   1337a:	0076de93          	srli	t4,a3,0x7
   1337e:	01969993          	slli	s3,a3,0x19
   13382:	01961913          	slli	s2,a2,0x19
   13386:	00965293          	srli	t0,a2,0x9
   1338a:	0096d393          	srli	t2,a3,0x9
   1338e:	01674733          	xor	a4,a4,s6
   13392:	017e4e33          	xor	t3,t3,s7
   13396:	0102e2b3          	or	t0,t0,a6
   1339a:	00f3e3b3          	or	t2,t2,a5
   1339e:	01e9e9b3          	or	s3,s3,t5
   133a2:	01d96933          	or	s2,s2,t4
   133a6:	0079c9b3          	xor	s3,s3,t2
   133aa:	00594933          	xor	s2,s2,t0
   133ae:	003e1393          	slli	t2,t3,0x3
   133b2:	01d75293          	srli	t0,a4,0x1d
   133b6:	019e1c13          	slli	s8,t3,0x19
   133ba:	00371413          	slli	s0,a4,0x3
   133be:	0072e3b3          	or	t2,t0,t2
   133c2:	01de5293          	srli	t0,t3,0x1d
   133c6:	8a62                	mv	s4,s8
   133c8:	0082e433          	or	s0,t0,s0
   133cc:	00775293          	srli	t0,a4,0x7
   133d0:	0142e2b3          	or	t0,t0,s4
   133d4:	00a34333          	xor	t1,t1,a0
   133d8:	00b8c8b3          	xor	a7,a7,a1
   133dc:	c616                	sw	t0,12(sp)
   133de:	01971d13          	slli	s10,a4,0x19
   133e2:	007e5293          	srli	t0,t3,0x7
   133e6:	01a2ed33          	or	s10,t0,s10
   133ea:	00a35a13          	srli	s4,t1,0xa
   133ee:	01689293          	slli	t0,a7,0x16
   133f2:	00a8df93          	srli	t6,a7,0xa
   133f6:	0142e2b3          	or	t0,t0,s4
   133fa:	01631a13          	slli	s4,t1,0x16
   133fe:	01fa6fb3          	or	t6,s4,t6
   13402:	00f89c13          	slli	s8,a7,0xf
   13406:	01135a13          	srli	s4,t1,0x11
   1340a:	c87e                	sw	t6,16(sp)
   1340c:	014c6c33          	or	s8,s8,s4
   13410:	0118df93          	srli	t6,a7,0x11
   13414:	00f31a13          	slli	s4,t1,0xf
   13418:	fff54513          	not	a0,a0
   1341c:	fff5c593          	not	a1,a1
   13420:	01fa6a33          	or	s4,s4,t6
   13424:	ca52                	sw	s4,20(sp)
   13426:	0015df93          	srli	t6,a1,0x1
   1342a:	01f51a13          	slli	s4,a0,0x1f
   1342e:	01fa6a33          	or	s4,s4,t6
   13432:	4fb2                	lw	t6,12(sp)
   13434:	0065de93          	srli	t4,a1,0x6
   13438:	01a51813          	slli	a6,a0,0x1a
   1343c:	01f3c3b3          	xor	t2,t2,t6
   13440:	0182c2b3          	xor	t0,t0,s8
   13444:	4fd2                	lw	t6,20(sp)
   13446:	4c42                	lw	s8,16(sp)
   13448:	00dbccb3          	xor	s9,s7,a3
   1344c:	00cb44b3          	xor	s1,s6,a2
   13450:	00155d93          	srli	s11,a0,0x1
   13454:	00655f13          	srli	t5,a0,0x6
   13458:	01f59a93          	slli	s5,a1,0x1f
   1345c:	01a59793          	slli	a5,a1,0x1a
   13460:	01d86833          	or	a6,a6,t4
   13464:	01baeab3          	or	s5,s5,s11
   13468:	01e7e7b3          	or	a5,a5,t5
   1346c:	00dc9d93          	slli	s11,s9,0xd
   13470:	0134df13          	srli	t5,s1,0x13
   13474:	013cde93          	srli	t4,s9,0x13
   13478:	010a4833          	xor	a6,s4,a6
   1347c:	00d49a13          	slli	s4,s1,0xd
   13480:	013b4b33          	xor	s6,s6,s3
   13484:	012bcbb3          	xor	s7,s7,s2
   13488:	01fc4fb3          	xor	t6,s8,t6
   1348c:	00fac7b3          	xor	a5,s5,a5
   13490:	01ccdc13          	srli	s8,s9,0x1c
   13494:	01c4da93          	srli	s5,s1,0x1c
   13498:	01edef33          	or	t5,s11,t5
   1349c:	01da6eb3          	or	t4,s4,t4
   134a0:	0492                	slli	s1,s1,0x4
   134a2:	004c9a13          	slli	s4,s9,0x4
   134a6:	016f4f33          	xor	t5,t5,s6
   134aa:	017eceb3          	xor	t4,t4,s7
   134ae:	015a6a33          	or	s4,s4,s5
   134b2:	0184e4b3          	or	s1,s1,s8
   134b6:	01a44433          	xor	s0,s0,s10
   134ba:	8c39                	xor	s0,s0,a4
   134bc:	01c3c3b3          	xor	t2,t2,t3
   134c0:	0062c2b3          	xor	t0,t0,t1
   134c4:	011fcfb3          	xor	t6,t6,a7
   134c8:	009ec733          	xor	a4,t4,s1
   134cc:	8fa9                	xor	a5,a5,a0
   134ce:	00b84833          	xor	a6,a6,a1
   134d2:	01364633          	xor	a2,a2,s3
   134d6:	0126c6b3          	xor	a3,a3,s2
   134da:	014f4933          	xor	s2,t5,s4
   134de:	00784833          	xor	a6,a6,t2
   134e2:	00564633          	xor	a2,a2,t0
   134e6:	01f6c6b3          	xor	a3,a3,t6
   134ea:	8fa1                	xor	a5,a5,s0
   134ec:	fff94f13          	not	t5,s2
   134f0:	fff74e93          	not	t4,a4
   134f4:	0697ca13          	xori	s4,a5,105
   134f8:	fff44993          	not	s3,s0
   134fc:	fff3c493          	not	s1,t2
   13500:	ffffc593          	not	a1,t6
   13504:	fff84e13          	not	t3,a6
   13508:	fff64313          	not	t1,a2
   1350c:	fff6c893          	not	a7,a3
   13510:	008f7f33          	and	t5,t5,s0
   13514:	007efeb3          	and	t4,t4,t2
   13518:	f967c793          	xori	a5,a5,-106
   1351c:	00cf4f33          	xor	t5,t5,a2
   13520:	00deceb3          	xor	t4,t4,a3
   13524:	0149f9b3          	and	s3,s3,s4
   13528:	0104f4b3          	and	s1,s1,a6
   1352c:	0057f7b3          	and	a5,a5,t0
   13530:	fff2c513          	not	a0,t0
   13534:	8df5                	and	a1,a1,a3
   13536:	01fe7e33          	and	t3,t3,t6
   1353a:	01237333          	and	t1,t1,s2
   1353e:	00e8f8b3          	and	a7,a7,a4
   13542:	00e4cbb3          	xor	s7,s1,a4
   13546:	0129cb33          	xor	s6,s3,s2
   1354a:	0105c5b3          	xor	a1,a1,a6
   1354e:	0087c733          	xor	a4,a5,s0
   13552:	017e9813          	slli	a6,t4,0x17
   13556:	017f1793          	slli	a5,t5,0x17
   1355a:	8d71                	and	a0,a0,a2
   1355c:	007e4e33          	xor	t3,t3,t2
   13560:	00534333          	xor	t1,t1,t0
   13564:	01f8c8b3          	xor	a7,a7,t6
   13568:	007f5293          	srli	t0,t5,0x7
   1356c:	007edf93          	srli	t6,t4,0x7
   13570:	019e9613          	slli	a2,t4,0x19
   13574:	019f1693          	slli	a3,t5,0x19
   13578:	009f5413          	srli	s0,t5,0x9
   1357c:	009ed493          	srli	s1,t4,0x9
   13580:	01674733          	xor	a4,a4,s6
   13584:	017e4e33          	xor	t3,t3,s7
   13588:	01046433          	or	s0,s0,a6
   1358c:	8cdd                	or	s1,s1,a5
   1358e:	00566633          	or	a2,a2,t0
   13592:	01f6e6b3          	or	a3,a3,t6
   13596:	8e25                	xor	a2,a2,s1
   13598:	8ea1                	xor	a3,a3,s0
   1359a:	003e1493          	slli	s1,t3,0x3
   1359e:	01d75413          	srli	s0,a4,0x1d
   135a2:	019e1c13          	slli	s8,t3,0x19
   135a6:	00371913          	slli	s2,a4,0x3
   135aa:	8cc1                	or	s1,s1,s0
   135ac:	01de5413          	srli	s0,t3,0x1d
   135b0:	01454533          	xor	a0,a0,s4
   135b4:	01246933          	or	s2,s0,s2
   135b8:	8a62                	mv	s4,s8
   135ba:	00775413          	srli	s0,a4,0x7
   135be:	01446433          	or	s0,s0,s4
   135c2:	c622                	sw	s0,12(sp)
   135c4:	00a34333          	xor	t1,t1,a0
   135c8:	00b8c8b3          	xor	a7,a7,a1
   135cc:	007e5413          	srli	s0,t3,0x7
   135d0:	01971d13          	slli	s10,a4,0x19
   135d4:	01a46d33          	or	s10,s0,s10
   135d8:	00a35a13          	srli	s4,t1,0xa
   135dc:	01689413          	slli	s0,a7,0x16
   135e0:	00a8d393          	srli	t2,a7,0xa
   135e4:	01446433          	or	s0,s0,s4
   135e8:	01631a13          	slli	s4,t1,0x16
   135ec:	007a63b3          	or	t2,s4,t2
   135f0:	00f89c13          	slli	s8,a7,0xf
   135f4:	01135a13          	srli	s4,t1,0x11
   135f8:	c81e                	sw	t2,16(sp)
   135fa:	014c6c33          	or	s8,s8,s4
   135fe:	0118d393          	srli	t2,a7,0x11
   13602:	00f31a13          	slli	s4,t1,0xf
   13606:	fff54513          	not	a0,a0
   1360a:	fff5c593          	not	a1,a1
   1360e:	007a6a33          	or	s4,s4,t2
   13612:	ca52                	sw	s4,20(sp)
   13614:	0015d393          	srli	t2,a1,0x1
   13618:	01f51a13          	slli	s4,a0,0x1f
   1361c:	007a6a33          	or	s4,s4,t2
   13620:	43b2                	lw	t2,12(sp)
   13622:	0065df93          	srli	t6,a1,0x6
   13626:	01a51813          	slli	a6,a0,0x1a
   1362a:	0074c4b3          	xor	s1,s1,t2
   1362e:	01844433          	xor	s0,s0,s8
   13632:	43d2                	lw	t2,20(sp)
   13634:	4c42                	lw	s8,16(sp)
   13636:	01dbccb3          	xor	s9,s7,t4
   1363a:	01eb49b3          	xor	s3,s6,t5
   1363e:	00155d93          	srli	s11,a0,0x1
   13642:	00655293          	srli	t0,a0,0x6
   13646:	01f59a93          	slli	s5,a1,0x1f
   1364a:	01a59793          	slli	a5,a1,0x1a
   1364e:	01f86833          	or	a6,a6,t6
   13652:	01baeab3          	or	s5,s5,s11
   13656:	0057e7b3          	or	a5,a5,t0
   1365a:	00dc9d93          	slli	s11,s9,0xd
   1365e:	0139d293          	srli	t0,s3,0x13
   13662:	013cdf93          	srli	t6,s9,0x13
   13666:	010a4833          	xor	a6,s4,a6
   1366a:	00d99a13          	slli	s4,s3,0xd
   1366e:	01664b33          	xor	s6,a2,s6
   13672:	0176cbb3          	xor	s7,a3,s7
   13676:	007c43b3          	xor	t2,s8,t2
   1367a:	00fac7b3          	xor	a5,s5,a5
   1367e:	01ccdc13          	srli	s8,s9,0x1c
   13682:	01c9da93          	srli	s5,s3,0x1c
   13686:	005de2b3          	or	t0,s11,t0
   1368a:	01fa6fb3          	or	t6,s4,t6
   1368e:	0992                	slli	s3,s3,0x4
   13690:	004c9a13          	slli	s4,s9,0x4
   13694:	015a6a33          	or	s4,s4,s5
   13698:	0189e9b3          	or	s3,s3,s8
   1369c:	01a94933          	xor	s2,s2,s10
   136a0:	0162c2b3          	xor	t0,t0,s6
   136a4:	017fcfb3          	xor	t6,t6,s7
   136a8:	00e94933          	xor	s2,s2,a4
   136ac:	01c4c4b3          	xor	s1,s1,t3
   136b0:	0113c3b3          	xor	t2,t2,a7
   136b4:	013fcfb3          	xor	t6,t6,s3
   136b8:	0142c2b3          	xor	t0,t0,s4
   136bc:	8fa9                	xor	a5,a5,a0
   136be:	00b84833          	xor	a6,a6,a1
   136c2:	01d6c6b3          	xor	a3,a3,t4
   136c6:	00644433          	xor	s0,s0,t1
   136ca:	00984833          	xor	a6,a6,s1
   136ce:	0076c6b3          	xor	a3,a3,t2
   136d2:	0127c7b3          	xor	a5,a5,s2
   136d6:	01e64633          	xor	a2,a2,t5
   136da:	fff2ca13          	not	s4,t0
   136de:	ffffcf13          	not	t5,t6
   136e2:	8e21                	xor	a2,a2,s0
   136e4:	05a7c993          	xori	s3,a5,90
   136e8:	012a7a33          	and	s4,s4,s2
   136ec:	009f7f33          	and	t5,t5,s1
   136f0:	fff94e93          	not	t4,s2
   136f4:	fff4c713          	not	a4,s1
   136f8:	fff44513          	not	a0,s0
   136fc:	fff3c593          	not	a1,t2
   13700:	fff84e13          	not	t3,a6
   13704:	fff6c893          	not	a7,a3
   13708:	fa57c793          	xori	a5,a5,-91
   1370c:	013efeb3          	and	t4,t4,s3
   13710:	01077733          	and	a4,a4,a6
   13714:	fff64313          	not	t1,a2
   13718:	8d71                	and	a0,a0,a2
   1371a:	8df5                	and	a1,a1,a3
   1371c:	00ca4633          	xor	a2,s4,a2
   13720:	00df46b3          	xor	a3,t5,a3
   13724:	8fe1                	and	a5,a5,s0
   13726:	007e7e33          	and	t3,t3,t2
   1372a:	01f8f8b3          	and	a7,a7,t6
   1372e:	005ecb33          	xor	s6,t4,t0
   13732:	01f74bb3          	xor	s7,a4,t6
   13736:	01354533          	xor	a0,a0,s3
   1373a:	0105c5b3          	xor	a1,a1,a6
   1373e:	00765f13          	srli	t5,a2,0x7
   13742:	0076de93          	srli	t4,a3,0x7
   13746:	01769813          	slli	a6,a3,0x17
   1374a:	01761713          	slli	a4,a2,0x17
   1374e:	00537333          	and	t1,t1,t0
   13752:	0127c7b3          	xor	a5,a5,s2
   13756:	009e4e33          	xor	t3,t3,s1
   1375a:	0078c8b3          	xor	a7,a7,t2
   1375e:	01969993          	slli	s3,a3,0x19
   13762:	01961913          	slli	s2,a2,0x19
   13766:	00965293          	srli	t0,a2,0x9
   1376a:	0096d393          	srli	t2,a3,0x9
   1376e:	0167c7b3          	xor	a5,a5,s6
   13772:	017e4e33          	xor	t3,t3,s7
   13776:	0102e2b3          	or	t0,t0,a6
   1377a:	00e3e3b3          	or	t2,t2,a4
   1377e:	01e9e9b3          	or	s3,s3,t5
   13782:	01d96933          	or	s2,s2,t4
   13786:	0079c9b3          	xor	s3,s3,t2
   1378a:	00594933          	xor	s2,s2,t0
   1378e:	003e1393          	slli	t2,t3,0x3
   13792:	01d7d293          	srli	t0,a5,0x1d
   13796:	019e1c13          	slli	s8,t3,0x19
   1379a:	00834333          	xor	t1,t1,s0
   1379e:	0072e3b3          	or	t2,t0,t2
   137a2:	00379413          	slli	s0,a5,0x3
   137a6:	01de5293          	srli	t0,t3,0x1d
   137aa:	8a62                	mv	s4,s8
   137ac:	0082e433          	or	s0,t0,s0
   137b0:	0077d293          	srli	t0,a5,0x7
   137b4:	0142e2b3          	or	t0,t0,s4
   137b8:	00a34333          	xor	t1,t1,a0
   137bc:	00b8c8b3          	xor	a7,a7,a1
   137c0:	c616                	sw	t0,12(sp)
   137c2:	01979d13          	slli	s10,a5,0x19
   137c6:	007e5293          	srli	t0,t3,0x7
   137ca:	01a2ed33          	or	s10,t0,s10
   137ce:	00a35a13          	srli	s4,t1,0xa
   137d2:	01689293          	slli	t0,a7,0x16
   137d6:	00a8df93          	srli	t6,a7,0xa
   137da:	0142e2b3          	or	t0,t0,s4
   137de:	01631a13          	slli	s4,t1,0x16
   137e2:	01fa6fb3          	or	t6,s4,t6
   137e6:	01135c13          	srli	s8,t1,0x11
   137ea:	00f89a13          	slli	s4,a7,0xf
   137ee:	c87e                	sw	t6,16(sp)
   137f0:	018a6c33          	or	s8,s4,s8
   137f4:	0118df93          	srli	t6,a7,0x11
   137f8:	00f31a13          	slli	s4,t1,0xf
   137fc:	fff54513          	not	a0,a0
   13800:	fff5c593          	not	a1,a1
   13804:	01fa6a33          	or	s4,s4,t6
   13808:	ca52                	sw	s4,20(sp)
   1380a:	0015df93          	srli	t6,a1,0x1
   1380e:	01f51a13          	slli	s4,a0,0x1f
   13812:	01fa6a33          	or	s4,s4,t6
   13816:	4fb2                	lw	t6,12(sp)
   13818:	0065de93          	srli	t4,a1,0x6
   1381c:	01a51813          	slli	a6,a0,0x1a
   13820:	01f3c3b3          	xor	t2,t2,t6
   13824:	0182c2b3          	xor	t0,t0,s8
   13828:	4fd2                	lw	t6,20(sp)
   1382a:	4c42                	lw	s8,16(sp)
   1382c:	00dbccb3          	xor	s9,s7,a3
   13830:	00cb44b3          	xor	s1,s6,a2
   13834:	00155d93          	srli	s11,a0,0x1
   13838:	00655f13          	srli	t5,a0,0x6
   1383c:	01f59a93          	slli	s5,a1,0x1f
   13840:	01a59713          	slli	a4,a1,0x1a
   13844:	01d86833          	or	a6,a6,t4
   13848:	01baeab3          	or	s5,s5,s11
   1384c:	01e76733          	or	a4,a4,t5
   13850:	00dc9d93          	slli	s11,s9,0xd
   13854:	0134df13          	srli	t5,s1,0x13
   13858:	013cde93          	srli	t4,s9,0x13
   1385c:	010a4833          	xor	a6,s4,a6
   13860:	00d49a13          	slli	s4,s1,0xd
   13864:	013b4b33          	xor	s6,s6,s3
   13868:	012bcbb3          	xor	s7,s7,s2
   1386c:	01a44433          	xor	s0,s0,s10
   13870:	01fc4fb3          	xor	t6,s8,t6
   13874:	00eac733          	xor	a4,s5,a4
   13878:	01ccdc13          	srli	s8,s9,0x1c
   1387c:	01c4da93          	srli	s5,s1,0x1c
   13880:	01edef33          	or	t5,s11,t5
   13884:	01da6eb3          	or	t4,s4,t4
   13888:	0492                	slli	s1,s1,0x4
   1388a:	004c9a13          	slli	s4,s9,0x4
   1388e:	8c3d                	xor	s0,s0,a5
   13890:	01c3c3b3          	xor	t2,t2,t3
   13894:	016f4f33          	xor	t5,t5,s6
   13898:	017eceb3          	xor	t4,t4,s7
   1389c:	015a67b3          	or	a5,s4,s5
   138a0:	0184e4b3          	or	s1,s1,s8
   138a4:	8f29                	xor	a4,a4,a0
   138a6:	00b84833          	xor	a6,a6,a1
   138aa:	0062c2b3          	xor	t0,t0,t1
   138ae:	011fcfb3          	xor	t6,t6,a7
   138b2:	007845b3          	xor	a1,a6,t2
   138b6:	00ff4a33          	xor	s4,t5,a5
   138ba:	0126c6b3          	xor	a3,a3,s2
   138be:	8f21                	xor	a4,a4,s0
   138c0:	009ec933          	xor	s2,t4,s1
   138c4:	01364633          	xor	a2,a2,s3
   138c8:	01f6c7b3          	xor	a5,a3,t6
   138cc:	00564633          	xor	a2,a2,t0
   138d0:	04b74693          	xori	a3,a4,75
   138d4:	fff44313          	not	t1,s0
   138d8:	fff3c893          	not	a7,t2
   138dc:	fff2c813          	not	a6,t0
   138e0:	fffa4993          	not	s3,s4
   138e4:	fff94493          	not	s1,s2
   138e8:	fff5cf13          	not	t5,a1
   138ec:	fb474713          	xori	a4,a4,-76
   138f0:	00577733          	and	a4,a4,t0
   138f4:	fff64e93          	not	t4,a2
   138f8:	00d37333          	and	t1,t1,a3
   138fc:	00b8f8b3          	and	a7,a7,a1
   13900:	00c87833          	and	a6,a6,a2
   13904:	0089f9b3          	and	s3,s3,s0
   13908:	0074f4b3          	and	s1,s1,t2
   1390c:	01ff7f33          	and	t5,t5,t6
   13910:	00c9c9b3          	xor	s3,s3,a2
   13914:	8cbd                	xor	s1,s1,a5
   13916:	01434333          	xor	t1,t1,s4
   1391a:	0128c8b3          	xor	a7,a7,s2
   1391e:	00d84833          	xor	a6,a6,a3
   13922:	014efeb3          	and	t4,t4,s4
   13926:	008746b3          	xor	a3,a4,s0
   1392a:	007f4f33          	xor	t5,t5,t2
   1392e:	011f4f33          	xor	t5,t5,a7
   13932:	ffffc513          	not	a0,t6
   13936:	0098c8b3          	xor	a7,a7,s1
   1393a:	005eceb3          	xor	t4,t4,t0
   1393e:	0066c2b3          	xor	t0,a3,t1
   13942:	01334333          	xor	t1,t1,s3
   13946:	fff7ce13          	not	t3,a5
   1394a:	8d7d                	and	a0,a0,a5
   1394c:	00d89693          	slli	a3,a7,0xd
   13950:	01335793          	srli	a5,t1,0x13
   13954:	8fd5                	or	a5,a5,a3
   13956:	012e7e33          	and	t3,t3,s2
   1395a:	cc3e                	sw	a5,24(sp)
   1395c:	00d31713          	slli	a4,t1,0xd
   13960:	0138d793          	srli	a5,a7,0x13
   13964:	01fe4e33          	xor	t3,t3,t6
   13968:	8f5d                	or	a4,a4,a5
   1396a:	01c35f93          	srli	t6,t1,0x1c
   1396e:	00489793          	slli	a5,a7,0x4
   13972:	01f7e7b3          	or	a5,a5,t6
   13976:	00431693          	slli	a3,t1,0x4
   1397a:	01c8df93          	srli	t6,a7,0x1c
   1397e:	0072d913          	srli	s2,t0,0x7
   13982:	01f6efb3          	or	t6,a3,t6
   13986:	01d2dd93          	srli	s11,t0,0x1d
   1398a:	003f1693          	slli	a3,t5,0x3
   1398e:	c64a                	sw	s2,12(sp)
   13990:	01929a93          	slli	s5,t0,0x19
   13994:	00ddedb3          	or	s11,s11,a3
   13998:	00329393          	slli	t2,t0,0x3
   1399c:	01df5693          	srli	a3,t5,0x1d
   139a0:	c856                	sw	s5,16(sp)
   139a2:	0076e3b3          	or	t2,a3,t2
   139a6:	46b2                	lw	a3,12(sp)
   139a8:	ce7e                	sw	t6,28(sp)
   139aa:	4fc2                	lw	t6,16(sp)
   139ac:	8d2d                	xor	a0,a0,a1
   139ae:	019f1d13          	slli	s10,t5,0x19
   139b2:	010eceb3          	xor	t4,t4,a6
   139b6:	00ae4e33          	xor	t3,t3,a0
   139ba:	fff84813          	not	a6,a6
   139be:	fff54513          	not	a0,a0
   139c2:	01a6ed33          	or	s10,a3,s10
   139c6:	007f5693          	srli	a3,t5,0x7
   139ca:	01f6efb3          	or	t6,a3,t6
   139ce:	00185c93          	srli	s9,a6,0x1
   139d2:	01f51693          	slli	a3,a0,0x1f
   139d6:	0196ecb3          	or	s9,a3,s9
   139da:	00155c13          	srli	s8,a0,0x1
   139de:	01f81693          	slli	a3,a6,0x1f
   139e2:	0186ec33          	or	s8,a3,s8
   139e6:	00685613          	srli	a2,a6,0x6
   139ea:	01a51693          	slli	a3,a0,0x1a
   139ee:	ca16                	sw	t0,20(sp)
   139f0:	8e55                	or	a2,a2,a3
   139f2:	00655293          	srli	t0,a0,0x6
   139f6:	01a81693          	slli	a3,a6,0x1a
   139fa:	0056e2b3          	or	t0,a3,t0
   139fe:	00aedb93          	srli	s7,t4,0xa
   13a02:	016e1693          	slli	a3,t3,0x16
   13a06:	0176ebb3          	or	s7,a3,s7
   13a0a:	00ae5b13          	srli	s6,t3,0xa
   13a0e:	016e9693          	slli	a3,t4,0x16
   13a12:	0166eb33          	or	s6,a3,s6
   13a16:	011ed413          	srli	s0,t4,0x11
   13a1a:	00fe1693          	slli	a3,t3,0xf
   13a1e:	8c55                	or	s0,s0,a3
   13a20:	011e5913          	srli	s2,t3,0x11
   13a24:	00fe9693          	slli	a3,t4,0xf
   13a28:	0126e933          	or	s2,a3,s2
   13a2c:	0079da93          	srli	s5,s3,0x7
   13a30:	01949693          	slli	a3,s1,0x19
   13a34:	0156eab3          	or	s5,a3,s5
   13a38:	0074da13          	srli	s4,s1,0x7
   13a3c:	01999693          	slli	a3,s3,0x19
   13a40:	0146ea33          	or	s4,a3,s4
   13a44:	01749593          	slli	a1,s1,0x17
   13a48:	0099d693          	srli	a3,s3,0x9
   13a4c:	c67e                	sw	t6,12(sp)
   13a4e:	8dd5                	or	a1,a1,a3
   13a50:	01799f93          	slli	t6,s3,0x17
   13a54:	0094d693          	srli	a3,s1,0x9
   13a58:	01f6efb3          	or	t6,a3,t6
   13a5c:	46e2                	lw	a3,24(sp)
   13a5e:	00ba45b3          	xor	a1,s4,a1
   13a62:	008bcbb3          	xor	s7,s7,s0
   13a66:	8fb5                	xor	a5,a5,a3
   13a68:	46f2                	lw	a3,28(sp)
   13a6a:	01adcd33          	xor	s10,s11,s10
   13a6e:	00ccc633          	xor	a2,s9,a2
   13a72:	8f35                	xor	a4,a4,a3
   13a74:	46b2                	lw	a3,12(sp)
   13a76:	012b4b33          	xor	s6,s6,s2
   13a7a:	01facab3          	xor	s5,s5,t6
   13a7e:	00d3c3b3          	xor	t2,t2,a3
   13a82:	56d2                	lw	a3,52(sp)
   13a84:	005c42b3          	xor	t0,s8,t0
   13a88:	01064fb3          	xor	t6,a2,a6
   13a8c:	00868a13          	addi	s4,a3,8
   13a90:	46d2                	lw	a3,20(sp)
   13a92:	da52                	sw	s4,52(sp)
   13a94:	0067c7b3          	xor	a5,a5,t1
   13a98:	00d3c433          	xor	s0,t2,a3
   13a9c:	5682                	lw	a3,32(sp)
   13a9e:	01174733          	xor	a4,a4,a7
   13aa2:	01ed4933          	xor	s2,s10,t5
   13aa6:	00a2c2b3          	xor	t0,t0,a0
   13aaa:	01dbc633          	xor	a2,s7,t4
   13aae:	01cb43b3          	xor	t2,s6,t3
   13ab2:	013acdb3          	xor	s11,s5,s3
   13ab6:	8da5                	xor	a1,a1,s1
   13ab8:	80da1c63          	bne	s4,a3,12ad0 <crypto_hash+0x28f0>
   13abc:	85d2                	mv	a1,s4
   13abe:	03800693          	li	a3,56
   13ac2:	00171e13          	slli	t3,a4,0x1
   13ac6:	437d                	li	t1,31
   13ac8:	58e1                	li	a7,-8
   13aca:	40d30633          	sub	a2,t1,a3
   13ace:	00d7d533          	srl	a0,a5,a3
   13ad2:	00ce1633          	sll	a2,t3,a2
   13ad6:	fe068813          	addi	a6,a3,-32
   13ada:	8d51                	or	a0,a0,a2
   13adc:	00084463          	bltz	a6,13ae4 <crypto_hash+0x3904>
   13ae0:	01075533          	srl	a0,a4,a6
   13ae4:	00a58023          	sb	a0,0(a1)
   13ae8:	16e1                	addi	a3,a3,-8
   13aea:	0585                	addi	a1,a1,1
   13aec:	fd169fe3          	bne	a3,a7,13aca <crypto_hash+0x38ea>
   13af0:	5436                	lw	s0,108(sp)
   13af2:	54a6                	lw	s1,104(sp)
   13af4:	5916                	lw	s2,100(sp)
   13af6:	5986                	lw	s3,96(sp)
   13af8:	4a76                	lw	s4,92(sp)
   13afa:	4ae6                	lw	s5,88(sp)
   13afc:	4b56                	lw	s6,84(sp)
   13afe:	4bc6                	lw	s7,80(sp)
   13b00:	4c36                	lw	s8,76(sp)
   13b02:	4ca6                	lw	s9,72(sp)
   13b04:	4d16                	lw	s10,68(sp)
   13b06:	4d86                	lw	s11,64(sp)
   13b08:	4501                	li	a0,0
   13b0a:	6165                	addi	sp,sp,112
   13b0c:	8082                	ret
   13b0e:	487d                	li	a6,31
   13b10:	40d80833          	sub	a6,a6,a3
   13b14:	04000613          	li	a2,64
   13b18:	01065633          	srl	a2,a2,a6
   13b1c:	08000813          	li	a6,128
   13b20:	00d816b3          	sll	a3,a6,a3
   13b24:	8e3fd06f          	j	11406 <crypto_hash+0x1226>
   13b28:	4e81                	li	t4,0
   13b2a:	4e01                	li	t3,0
   13b2c:	8bdfd06f          	j	113e8 <crypto_hash+0x1208>
   13b30:	479d                	li	a5,7
   13b32:	00c7f463          	bgeu	a5,a2,13b3a <crypto_hash+0x395a>
   13b36:	ed2fc06f          	j	10208 <crypto_hash+0x28>
   13b3a:	9a0ec6b7          	lui	a3,0x9a0ec
   13b3e:	67768693          	addi	a3,a3,1655 # 9a0ec677 <__BSS_END__+0x9a0cca73>
   13b42:	41d8d637          	lui	a2,0x41d8d
   13b46:	a3134837          	lui	a6,0xa3134
   13b4a:	ce36                	sw	a3,28(sp)
   13b4c:	eff60693          	addi	a3,a2,-257 # 41d8ceff <__BSS_END__+0x41d6d2fb>
   13b50:	77cae8b7          	lui	a7,0x77cae
   13b54:	f94e2e37          	lui	t3,0xf94e2
   13b58:	cc36                	sw	a3,24(sp)
   13b5a:	50580693          	addi	a3,a6,1285 # a3134505 <__BSS_END__+0xa3114901>
   13b5e:	dfdba437          	lui	s0,0xdfdba
   13b62:	a07b4937          	lui	s2,0xa07b4
   13b66:	d32589b7          	lui	s3,0xd3258
   13b6a:	aab8ca37          	lui	s4,0xaab8c
   13b6e:	29c46d37          	lui	s10,0x29c46
   13b72:	5388bc37          	lui	s8,0x5388b
   13b76:	83b1adb7          	lui	s11,0x83b1a
   13b7a:	883525b7          	lui	a1,0x88352
   13b7e:	93add4b7          	lui	s1,0x93add
   13b82:	f13e42b7          	lui	t0,0xf13e4
   13b86:	2c520337          	lui	t1,0x2c520
   13b8a:	0c402537          	lui	a0,0xc402
   13b8e:	5ceccfb7          	lui	t6,0x5cecc
   13b92:	c0ae0737          	lui	a4,0xc0ae0
   13b96:	738ec7b7          	lui	a5,0x738ec
   13b9a:	2c1e0e13          	addi	t3,t3,705 # f94e22c1 <__BSS_END__+0xf94c26bd>
   13b9e:	ca36                	sw	a3,20(sp)
   13ba0:	7ef88693          	addi	a3,a7,2031 # 77cae7ef <__BSS_END__+0x77c8ebeb>
   13ba4:	52140413          	addi	s0,s0,1313 # dfdba521 <__BSS_END__+0xdfd9a91d>
   13ba8:	33690913          	addi	s2,s2,822 # a07b4336 <__BSS_END__+0xa0794732>
   13bac:	8e498993          	addi	s3,s3,-1820 # d32578e4 <__BSS_END__+0xd3237ce0>
   13bb0:	74ca0a13          	addi	s4,s4,1868 # aab8c74c <__BSS_END__+0xaab6cb48>
   13bb4:	c672                	sw	t3,12(sp)
   13bb6:	833d0d13          	addi	s10,s10,-1997 # 29c45833 <__BSS_END__+0x29c25c2f>
   13bba:	066c0c13          	addi	s8,s8,102 # 5388b066 <__BSS_END__+0x5386b462>
   13bbe:	dfed8d93          	addi	s11,s11,-514 # 83b19dfe <__BSS_END__+0x83afa1fa>
   13bc2:	81058593          	addi	a1,a1,-2032 # 88351810 <__BSS_END__+0x88331c0c>
   13bc6:	fc348493          	addi	s1,s1,-61 # 93adcfc3 <__BSS_END__+0x93abd3bf>
   13bca:	6c628293          	addi	t0,t0,1734 # f13e46c6 <__BSS_END__+0xf13c4ac2>
   13bce:	0361                	addi	t1,t1,24 # 2c520018 <__BSS_END__+0x2c500414>
   13bd0:	02150513          	addi	a0,a0,33 # c402021 <__BSS_END__+0xc3e241d>
   13bd4:	afaf8f93          	addi	t6,t6,-1286 # 5cecbafa <__BSS_END__+0x5ceabef6>
   13bd8:	c836                	sw	a3,16(sp)
   13bda:	fa770713          	addi	a4,a4,-89 # c0adffa7 <__BSS_END__+0xc0ac03a3>
   13bde:	38a78793          	addi	a5,a5,906 # 738ec38a <__BSS_END__+0x738cc786>
   13be2:	fa6fd06f          	j	11388 <crypto_hash+0x11a8>

00013be6 <__fp_lock>:
   13be6:	4501                	li	a0,0
   13be8:	8082                	ret

00013bea <stdio_exit_handler>:
   13bea:	0001f637          	lui	a2,0x1f
   13bee:	65dd                	lui	a1,0x17
   13bf0:	0001f537          	lui	a0,0x1f
   13bf4:	1b860613          	addi	a2,a2,440 # 1f1b8 <__sglue>
   13bf8:	9a858593          	addi	a1,a1,-1624 # 169a8 <_fclose_r>
   13bfc:	1c850513          	addi	a0,a0,456 # 1f1c8 <_impure_data>
   13c00:	a485                	j	13e60 <_fwalk_sglue>

00013c02 <cleanup_stdio>:
   13c02:	414c                	lw	a1,4(a0)
   13c04:	1141                	addi	sp,sp,-16
   13c06:	c422                	sw	s0,8(sp)
   13c08:	c606                	sw	ra,12(sp)
   13c0a:	f5c18793          	addi	a5,gp,-164 # 1f914 <__sf>
   13c0e:	842a                	mv	s0,a0
   13c10:	00f58463          	beq	a1,a5,13c18 <cleanup_stdio+0x16>
   13c14:	595020ef          	jal	169a8 <_fclose_r>
   13c18:	440c                	lw	a1,8(s0)
   13c1a:	fc418793          	addi	a5,gp,-60 # 1f97c <__sf+0x68>
   13c1e:	00f58563          	beq	a1,a5,13c28 <cleanup_stdio+0x26>
   13c22:	8522                	mv	a0,s0
   13c24:	585020ef          	jal	169a8 <_fclose_r>
   13c28:	444c                	lw	a1,12(s0)
   13c2a:	02c18793          	addi	a5,gp,44 # 1f9e4 <__global_pointer$+0x2c>
   13c2e:	00f58863          	beq	a1,a5,13c3e <cleanup_stdio+0x3c>
   13c32:	8522                	mv	a0,s0
   13c34:	4422                	lw	s0,8(sp)
   13c36:	40b2                	lw	ra,12(sp)
   13c38:	0141                	addi	sp,sp,16
   13c3a:	56f0206f          	j	169a8 <_fclose_r>
   13c3e:	40b2                	lw	ra,12(sp)
   13c40:	4422                	lw	s0,8(sp)
   13c42:	0141                	addi	sp,sp,16
   13c44:	8082                	ret

00013c46 <__fp_unlock>:
   13c46:	4501                	li	a0,0
   13c48:	8082                	ret

00013c4a <global_stdio_init.part.0>:
   13c4a:	1101                	addi	sp,sp,-32
   13c4c:	67d1                	lui	a5,0x14
   13c4e:	cc22                	sw	s0,24(sp)
   13c50:	bea78793          	addi	a5,a5,-1046 # 13bea <stdio_exit_handler>
   13c54:	f5c18413          	addi	s0,gp,-164 # 1f914 <__sf>
   13c58:	ce06                	sw	ra,28(sp)
   13c5a:	ca26                	sw	s1,20(sp)
   13c5c:	c84a                	sw	s2,16(sp)
   13c5e:	c64e                	sw	s3,12(sp)
   13c60:	c452                	sw	s4,8(sp)
   13c62:	f2f1a023          	sw	a5,-224(gp) # 1f8d8 <__stdio_exit_handler>
   13c66:	4621                	li	a2,8
   13c68:	4791                	li	a5,4
   13c6a:	4581                	li	a1,0
   13c6c:	fb818513          	addi	a0,gp,-72 # 1f970 <__sf+0x5c>
   13c70:	c45c                	sw	a5,12(s0)
   13c72:	00042023          	sw	zero,0(s0)
   13c76:	00042223          	sw	zero,4(s0)
   13c7a:	00042423          	sw	zero,8(s0)
   13c7e:	06042223          	sw	zero,100(s0)
   13c82:	00042823          	sw	zero,16(s0)
   13c86:	00042a23          	sw	zero,20(s0)
   13c8a:	00042c23          	sw	zero,24(s0)
   13c8e:	2dbd                	jal	1430c <memset>
   13c90:	67c1                	lui	a5,0x10
   13c92:	6a51                	lui	s4,0x14
   13c94:	69d1                	lui	s3,0x14
   13c96:	6951                	lui	s2,0x14
   13c98:	64d1                	lui	s1,0x14
   13c9a:	05ca0a13          	addi	s4,s4,92 # 1405c <__sread>
   13c9e:	09698993          	addi	s3,s3,150 # 14096 <__swrite>
   13ca2:	0e690913          	addi	s2,s2,230 # 140e6 <__sseek>
   13ca6:	12e48493          	addi	s1,s1,302 # 1412e <__sclose>
   13caa:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   13cac:	4621                	li	a2,8
   13cae:	4581                	li	a1,0
   13cb0:	02018513          	addi	a0,gp,32 # 1f9d8 <__global_pointer$+0x20>
   13cb4:	03442023          	sw	s4,32(s0)
   13cb8:	03342223          	sw	s3,36(s0)
   13cbc:	03242423          	sw	s2,40(s0)
   13cc0:	d444                	sw	s1,44(s0)
   13cc2:	d87c                	sw	a5,116(s0)
   13cc4:	cc40                	sw	s0,28(s0)
   13cc6:	06042423          	sw	zero,104(s0)
   13cca:	06042623          	sw	zero,108(s0)
   13cce:	06042823          	sw	zero,112(s0)
   13cd2:	0c042623          	sw	zero,204(s0)
   13cd6:	06042c23          	sw	zero,120(s0)
   13cda:	06042e23          	sw	zero,124(s0)
   13cde:	08042023          	sw	zero,128(s0)
   13ce2:	252d                	jal	1430c <memset>
   13ce4:	000207b7          	lui	a5,0x20
   13ce8:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x40e>
   13cea:	fc418713          	addi	a4,gp,-60 # 1f97c <__sf+0x68>
   13cee:	4621                	li	a2,8
   13cf0:	4581                	li	a1,0
   13cf2:	08818513          	addi	a0,gp,136 # 1fa40 <__global_pointer$+0x88>
   13cf6:	09442423          	sw	s4,136(s0)
   13cfa:	09342623          	sw	s3,140(s0)
   13cfe:	09242823          	sw	s2,144(s0)
   13d02:	08942a23          	sw	s1,148(s0)
   13d06:	0cf42e23          	sw	a5,220(s0)
   13d0a:	08e42223          	sw	a4,132(s0)
   13d0e:	0c042823          	sw	zero,208(s0)
   13d12:	0c042a23          	sw	zero,212(s0)
   13d16:	0c042c23          	sw	zero,216(s0)
   13d1a:	12042a23          	sw	zero,308(s0)
   13d1e:	0e042023          	sw	zero,224(s0)
   13d22:	0e042223          	sw	zero,228(s0)
   13d26:	0e042423          	sw	zero,232(s0)
   13d2a:	23cd                	jal	1430c <memset>
   13d2c:	02c18793          	addi	a5,gp,44 # 1f9e4 <__global_pointer$+0x2c>
   13d30:	0f442823          	sw	s4,240(s0)
   13d34:	0f342a23          	sw	s3,244(s0)
   13d38:	0f242c23          	sw	s2,248(s0)
   13d3c:	0e942e23          	sw	s1,252(s0)
   13d40:	40f2                	lw	ra,28(sp)
   13d42:	0ef42623          	sw	a5,236(s0)
   13d46:	4462                	lw	s0,24(sp)
   13d48:	44d2                	lw	s1,20(sp)
   13d4a:	4942                	lw	s2,16(sp)
   13d4c:	49b2                	lw	s3,12(sp)
   13d4e:	4a22                	lw	s4,8(sp)
   13d50:	6105                	addi	sp,sp,32
   13d52:	8082                	ret

00013d54 <__sfp>:
   13d54:	f201a783          	lw	a5,-224(gp) # 1f8d8 <__stdio_exit_handler>
   13d58:	1101                	addi	sp,sp,-32
   13d5a:	c64e                	sw	s3,12(sp)
   13d5c:	ce06                	sw	ra,28(sp)
   13d5e:	cc22                	sw	s0,24(sp)
   13d60:	ca26                	sw	s1,20(sp)
   13d62:	c84a                	sw	s2,16(sp)
   13d64:	89aa                	mv	s3,a0
   13d66:	c7d5                	beqz	a5,13e12 <__sfp+0xbe>
   13d68:	0001f937          	lui	s2,0x1f
   13d6c:	1b890913          	addi	s2,s2,440 # 1f1b8 <__sglue>
   13d70:	54fd                	li	s1,-1
   13d72:	00492783          	lw	a5,4(s2)
   13d76:	00892403          	lw	s0,8(s2)
   13d7a:	17fd                	addi	a5,a5,-1
   13d7c:	0007d763          	bgez	a5,13d8a <__sfp+0x36>
   13d80:	a8b9                	j	13dde <__sfp+0x8a>
   13d82:	06840413          	addi	s0,s0,104
   13d86:	04978c63          	beq	a5,s1,13dde <__sfp+0x8a>
   13d8a:	00c41703          	lh	a4,12(s0)
   13d8e:	17fd                	addi	a5,a5,-1
   13d90:	fb6d                	bnez	a4,13d82 <__sfp+0x2e>
   13d92:	77c1                	lui	a5,0xffff0
   13d94:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd03fd>
   13d96:	c45c                	sw	a5,12(s0)
   13d98:	06042223          	sw	zero,100(s0)
   13d9c:	00042023          	sw	zero,0(s0)
   13da0:	00042423          	sw	zero,8(s0)
   13da4:	00042223          	sw	zero,4(s0)
   13da8:	00042823          	sw	zero,16(s0)
   13dac:	00042a23          	sw	zero,20(s0)
   13db0:	00042c23          	sw	zero,24(s0)
   13db4:	4621                	li	a2,8
   13db6:	4581                	li	a1,0
   13db8:	05c40513          	addi	a0,s0,92
   13dbc:	2b81                	jal	1430c <memset>
   13dbe:	02042823          	sw	zero,48(s0)
   13dc2:	02042a23          	sw	zero,52(s0)
   13dc6:	04042223          	sw	zero,68(s0)
   13dca:	04042423          	sw	zero,72(s0)
   13dce:	40f2                	lw	ra,28(sp)
   13dd0:	8522                	mv	a0,s0
   13dd2:	4462                	lw	s0,24(sp)
   13dd4:	44d2                	lw	s1,20(sp)
   13dd6:	4942                	lw	s2,16(sp)
   13dd8:	49b2                	lw	s3,12(sp)
   13dda:	6105                	addi	sp,sp,32
   13ddc:	8082                	ret
   13dde:	00092403          	lw	s0,0(s2)
   13de2:	c019                	beqz	s0,13de8 <__sfp+0x94>
   13de4:	8922                	mv	s2,s0
   13de6:	b771                	j	13d72 <__sfp+0x1e>
   13de8:	1ac00593          	li	a1,428
   13dec:	854e                	mv	a0,s3
   13dee:	197000ef          	jal	14784 <_malloc_r>
   13df2:	842a                	mv	s0,a0
   13df4:	c10d                	beqz	a0,13e16 <__sfp+0xc2>
   13df6:	0531                	addi	a0,a0,12
   13df8:	4791                	li	a5,4
   13dfa:	00042023          	sw	zero,0(s0)
   13dfe:	c05c                	sw	a5,4(s0)
   13e00:	c408                	sw	a0,8(s0)
   13e02:	1a000613          	li	a2,416
   13e06:	4581                	li	a1,0
   13e08:	2311                	jal	1430c <memset>
   13e0a:	00892023          	sw	s0,0(s2)
   13e0e:	8922                	mv	s2,s0
   13e10:	b78d                	j	13d72 <__sfp+0x1e>
   13e12:	3d25                	jal	13c4a <global_stdio_init.part.0>
   13e14:	bf91                	j	13d68 <__sfp+0x14>
   13e16:	00092023          	sw	zero,0(s2)
   13e1a:	47b1                	li	a5,12
   13e1c:	00f9a023          	sw	a5,0(s3)
   13e20:	b77d                	j	13dce <__sfp+0x7a>

00013e22 <__sinit>:
   13e22:	595c                	lw	a5,52(a0)
   13e24:	c391                	beqz	a5,13e28 <__sinit+0x6>
   13e26:	8082                	ret
   13e28:	f201a703          	lw	a4,-224(gp) # 1f8d8 <__stdio_exit_handler>
   13e2c:	67d1                	lui	a5,0x14
   13e2e:	c0278793          	addi	a5,a5,-1022 # 13c02 <cleanup_stdio>
   13e32:	d95c                	sw	a5,52(a0)
   13e34:	fb6d                	bnez	a4,13e26 <__sinit+0x4>
   13e36:	bd11                	j	13c4a <global_stdio_init.part.0>

00013e38 <__sfp_lock_acquire>:
   13e38:	8082                	ret

00013e3a <__sfp_lock_release>:
   13e3a:	8082                	ret

00013e3c <__fp_lock_all>:
   13e3c:	0001f637          	lui	a2,0x1f
   13e40:	65d1                	lui	a1,0x14
   13e42:	1b860613          	addi	a2,a2,440 # 1f1b8 <__sglue>
   13e46:	be658593          	addi	a1,a1,-1050 # 13be6 <__fp_lock>
   13e4a:	4501                	li	a0,0
   13e4c:	a811                	j	13e60 <_fwalk_sglue>

00013e4e <__fp_unlock_all>:
   13e4e:	0001f637          	lui	a2,0x1f
   13e52:	65d1                	lui	a1,0x14
   13e54:	1b860613          	addi	a2,a2,440 # 1f1b8 <__sglue>
   13e58:	c4658593          	addi	a1,a1,-954 # 13c46 <__fp_unlock>
   13e5c:	4501                	li	a0,0
   13e5e:	a009                	j	13e60 <_fwalk_sglue>

00013e60 <_fwalk_sglue>:
   13e60:	7179                	addi	sp,sp,-48
   13e62:	d04a                	sw	s2,32(sp)
   13e64:	ce4e                	sw	s3,28(sp)
   13e66:	cc52                	sw	s4,24(sp)
   13e68:	ca56                	sw	s5,20(sp)
   13e6a:	c85a                	sw	s6,16(sp)
   13e6c:	c65e                	sw	s7,12(sp)
   13e6e:	d606                	sw	ra,44(sp)
   13e70:	d422                	sw	s0,40(sp)
   13e72:	d226                	sw	s1,36(sp)
   13e74:	8b2a                	mv	s6,a0
   13e76:	8bae                	mv	s7,a1
   13e78:	8ab2                	mv	s5,a2
   13e7a:	4a01                	li	s4,0
   13e7c:	4985                	li	s3,1
   13e7e:	597d                	li	s2,-1
   13e80:	004aa483          	lw	s1,4(s5)
   13e84:	008aa403          	lw	s0,8(s5)
   13e88:	14fd                	addi	s1,s1,-1
   13e8a:	0204c463          	bltz	s1,13eb2 <_fwalk_sglue+0x52>
   13e8e:	00c45783          	lhu	a5,12(s0)
   13e92:	00f9fb63          	bgeu	s3,a5,13ea8 <_fwalk_sglue+0x48>
   13e96:	00e41783          	lh	a5,14(s0)
   13e9a:	85a2                	mv	a1,s0
   13e9c:	855a                	mv	a0,s6
   13e9e:	01278563          	beq	a5,s2,13ea8 <_fwalk_sglue+0x48>
   13ea2:	9b82                	jalr	s7
   13ea4:	00aa6a33          	or	s4,s4,a0
   13ea8:	14fd                	addi	s1,s1,-1
   13eaa:	06840413          	addi	s0,s0,104
   13eae:	ff2490e3          	bne	s1,s2,13e8e <_fwalk_sglue+0x2e>
   13eb2:	000aaa83          	lw	s5,0(s5)
   13eb6:	fc0a95e3          	bnez	s5,13e80 <_fwalk_sglue+0x20>
   13eba:	50b2                	lw	ra,44(sp)
   13ebc:	5422                	lw	s0,40(sp)
   13ebe:	5492                	lw	s1,36(sp)
   13ec0:	5902                	lw	s2,32(sp)
   13ec2:	49f2                	lw	s3,28(sp)
   13ec4:	4ad2                	lw	s5,20(sp)
   13ec6:	4b42                	lw	s6,16(sp)
   13ec8:	4bb2                	lw	s7,12(sp)
   13eca:	8552                	mv	a0,s4
   13ecc:	4a62                	lw	s4,24(sp)
   13ece:	6145                	addi	sp,sp,48
   13ed0:	8082                	ret

00013ed2 <_fwrite_r>:
   13ed2:	715d                	addi	sp,sp,-80
   13ed4:	de4e                	sw	s3,60(sp)
   13ed6:	02c689b3          	mul	s3,a3,a2
   13eda:	087c                	addi	a5,sp,28
   13edc:	d23e                	sw	a5,36(sp)
   13ede:	4785                	li	a5,1
   13ee0:	c4a2                	sw	s0,72(sp)
   13ee2:	c2a6                	sw	s1,68(sp)
   13ee4:	c0ca                	sw	s2,64(sp)
   13ee6:	ce2e                	sw	a1,28(sp)
   13ee8:	c686                	sw	ra,76(sp)
   13eea:	d43e                	sw	a5,40(sp)
   13eec:	d04e                	sw	s3,32(sp)
   13eee:	d64e                	sw	s3,44(sp)
   13ef0:	8932                	mv	s2,a2
   13ef2:	84b6                	mv	s1,a3
   13ef4:	842a                	mv	s0,a0
   13ef6:	85ba                	mv	a1,a4
   13ef8:	c119                	beqz	a0,13efe <_fwrite_r+0x2c>
   13efa:	595c                	lw	a5,52(a0)
   13efc:	cfb9                	beqz	a5,13f5a <_fwrite_r+0x88>
   13efe:	00c59703          	lh	a4,12(a1)
   13f02:	51fc                	lw	a5,100(a1)
   13f04:	01271693          	slli	a3,a4,0x12
   13f08:	0006ca63          	bltz	a3,13f1c <_fwrite_r+0x4a>
   13f0c:	76f9                	lui	a3,0xffffe
   13f0e:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffde3fb>
   13f10:	6609                	lui	a2,0x2
   13f12:	8f51                	or	a4,a4,a2
   13f14:	8ff5                	and	a5,a5,a3
   13f16:	00e59623          	sh	a4,12(a1)
   13f1a:	d1fc                	sw	a5,100(a1)
   13f1c:	01279713          	slli	a4,a5,0x12
   13f20:	4501                	li	a0,0
   13f22:	00075963          	bgez	a4,13f34 <_fwrite_r+0x62>
   13f26:	40b6                	lw	ra,76(sp)
   13f28:	4426                	lw	s0,72(sp)
   13f2a:	4496                	lw	s1,68(sp)
   13f2c:	4906                	lw	s2,64(sp)
   13f2e:	59f2                	lw	s3,60(sp)
   13f30:	6161                	addi	sp,sp,80
   13f32:	8082                	ret
   13f34:	1050                	addi	a2,sp,36
   13f36:	8522                	mv	a0,s0
   13f38:	53d020ef          	jal	16c74 <__sfvwrite_r>
   13f3c:	87aa                	mv	a5,a0
   13f3e:	8526                	mv	a0,s1
   13f40:	d3fd                	beqz	a5,13f26 <_fwrite_r+0x54>
   13f42:	57b2                	lw	a5,44(sp)
   13f44:	40b6                	lw	ra,76(sp)
   13f46:	4426                	lw	s0,72(sp)
   13f48:	40f989b3          	sub	s3,s3,a5
   13f4c:	0329d533          	divu	a0,s3,s2
   13f50:	4496                	lw	s1,68(sp)
   13f52:	4906                	lw	s2,64(sp)
   13f54:	59f2                	lw	s3,60(sp)
   13f56:	6161                	addi	sp,sp,80
   13f58:	8082                	ret
   13f5a:	c63a                	sw	a4,12(sp)
   13f5c:	35d9                	jal	13e22 <__sinit>
   13f5e:	45b2                	lw	a1,12(sp)
   13f60:	bf79                	j	13efe <_fwrite_r+0x2c>

00013f62 <fwrite>:
   13f62:	715d                	addi	sp,sp,-80
   13f64:	c0ca                	sw	s2,64(sp)
   13f66:	02c58933          	mul	s2,a1,a2
   13f6a:	de4e                	sw	s3,60(sp)
   13f6c:	f141a983          	lw	s3,-236(gp) # 1f8cc <_impure_ptr>
   13f70:	087c                	addi	a5,sp,28
   13f72:	d23e                	sw	a5,36(sp)
   13f74:	4785                	li	a5,1
   13f76:	c4a2                	sw	s0,72(sp)
   13f78:	c2a6                	sw	s1,68(sp)
   13f7a:	c686                	sw	ra,76(sp)
   13f7c:	ce2a                	sw	a0,28(sp)
   13f7e:	d43e                	sw	a5,40(sp)
   13f80:	d04a                	sw	s2,32(sp)
   13f82:	d64a                	sw	s2,44(sp)
   13f84:	84ae                	mv	s1,a1
   13f86:	8432                	mv	s0,a2
   13f88:	85b6                	mv	a1,a3
   13f8a:	00098563          	beqz	s3,13f94 <fwrite+0x32>
   13f8e:	0349a783          	lw	a5,52(s3)
   13f92:	cfb9                	beqz	a5,13ff0 <fwrite+0x8e>
   13f94:	00c59703          	lh	a4,12(a1)
   13f98:	51fc                	lw	a5,100(a1)
   13f9a:	01271693          	slli	a3,a4,0x12
   13f9e:	0006ca63          	bltz	a3,13fb2 <fwrite+0x50>
   13fa2:	76f9                	lui	a3,0xffffe
   13fa4:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffde3fb>
   13fa6:	6609                	lui	a2,0x2
   13fa8:	8f51                	or	a4,a4,a2
   13faa:	8ff5                	and	a5,a5,a3
   13fac:	00e59623          	sh	a4,12(a1)
   13fb0:	d1fc                	sw	a5,100(a1)
   13fb2:	01279713          	slli	a4,a5,0x12
   13fb6:	4501                	li	a0,0
   13fb8:	00075963          	bgez	a4,13fca <fwrite+0x68>
   13fbc:	40b6                	lw	ra,76(sp)
   13fbe:	4426                	lw	s0,72(sp)
   13fc0:	4496                	lw	s1,68(sp)
   13fc2:	4906                	lw	s2,64(sp)
   13fc4:	59f2                	lw	s3,60(sp)
   13fc6:	6161                	addi	sp,sp,80
   13fc8:	8082                	ret
   13fca:	1050                	addi	a2,sp,36
   13fcc:	854e                	mv	a0,s3
   13fce:	4a7020ef          	jal	16c74 <__sfvwrite_r>
   13fd2:	87aa                	mv	a5,a0
   13fd4:	8522                	mv	a0,s0
   13fd6:	d3fd                	beqz	a5,13fbc <fwrite+0x5a>
   13fd8:	57b2                	lw	a5,44(sp)
   13fda:	40b6                	lw	ra,76(sp)
   13fdc:	4426                	lw	s0,72(sp)
   13fde:	40f90933          	sub	s2,s2,a5
   13fe2:	02995533          	divu	a0,s2,s1
   13fe6:	59f2                	lw	s3,60(sp)
   13fe8:	4496                	lw	s1,68(sp)
   13fea:	4906                	lw	s2,64(sp)
   13fec:	6161                	addi	sp,sp,80
   13fee:	8082                	ret
   13ff0:	854e                	mv	a0,s3
   13ff2:	c636                	sw	a3,12(sp)
   13ff4:	353d                	jal	13e22 <__sinit>
   13ff6:	45b2                	lw	a1,12(sp)
   13ff8:	bf71                	j	13f94 <fwrite+0x32>

00013ffa <_printf_r>:
   13ffa:	7139                	addi	sp,sp,-64
   13ffc:	d432                	sw	a2,40(sp)
   13ffe:	d636                	sw	a3,44(sp)
   14000:	d83a                	sw	a4,48(sp)
   14002:	da3e                	sw	a5,52(sp)
   14004:	dc42                	sw	a6,56(sp)
   14006:	de46                	sw	a7,60(sp)
   14008:	862e                	mv	a2,a1
   1400a:	450c                	lw	a1,8(a0)
   1400c:	1034                	addi	a3,sp,40
   1400e:	ce06                	sw	ra,28(sp)
   14010:	c636                	sw	a3,12(sp)
   14012:	521000ef          	jal	14d32 <_vfprintf_r>
   14016:	40f2                	lw	ra,28(sp)
   14018:	6121                	addi	sp,sp,64
   1401a:	8082                	ret

0001401c <printf>:
   1401c:	f141a303          	lw	t1,-236(gp) # 1f8cc <_impure_ptr>
   14020:	7139                	addi	sp,sp,-64
   14022:	d432                	sw	a2,40(sp)
   14024:	d636                	sw	a3,44(sp)
   14026:	d22e                	sw	a1,36(sp)
   14028:	d83a                	sw	a4,48(sp)
   1402a:	da3e                	sw	a5,52(sp)
   1402c:	dc42                	sw	a6,56(sp)
   1402e:	de46                	sw	a7,60(sp)
   14030:	00832583          	lw	a1,8(t1)
   14034:	1054                	addi	a3,sp,36
   14036:	862a                	mv	a2,a0
   14038:	851a                	mv	a0,t1
   1403a:	ce06                	sw	ra,28(sp)
   1403c:	c636                	sw	a3,12(sp)
   1403e:	4f5000ef          	jal	14d32 <_vfprintf_r>
   14042:	40f2                	lw	ra,28(sp)
   14044:	6121                	addi	sp,sp,64
   14046:	8082                	ret

00014048 <_putchar_r>:
   14048:	4510                	lw	a2,8(a0)
   1404a:	7730206f          	j	16fbc <_putc_r>

0001404e <putchar>:
   1404e:	f141a783          	lw	a5,-236(gp) # 1f8cc <_impure_ptr>
   14052:	85aa                	mv	a1,a0
   14054:	4790                	lw	a2,8(a5)
   14056:	853e                	mv	a0,a5
   14058:	7650206f          	j	16fbc <_putc_r>

0001405c <__sread>:
   1405c:	1141                	addi	sp,sp,-16
   1405e:	c422                	sw	s0,8(sp)
   14060:	842e                	mv	s0,a1
   14062:	00e59583          	lh	a1,14(a1)
   14066:	c606                	sw	ra,12(sp)
   14068:	2a6d                	jal	14222 <_read_r>
   1406a:	00054963          	bltz	a0,1407c <__sread+0x20>
   1406e:	483c                	lw	a5,80(s0)
   14070:	40b2                	lw	ra,12(sp)
   14072:	97aa                	add	a5,a5,a0
   14074:	c83c                	sw	a5,80(s0)
   14076:	4422                	lw	s0,8(sp)
   14078:	0141                	addi	sp,sp,16
   1407a:	8082                	ret
   1407c:	00c45783          	lhu	a5,12(s0)
   14080:	777d                	lui	a4,0xfffff
   14082:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdf3fb>
   14084:	8ff9                	and	a5,a5,a4
   14086:	40b2                	lw	ra,12(sp)
   14088:	00f41623          	sh	a5,12(s0)
   1408c:	4422                	lw	s0,8(sp)
   1408e:	0141                	addi	sp,sp,16
   14090:	8082                	ret

00014092 <__seofread>:
   14092:	4501                	li	a0,0
   14094:	8082                	ret

00014096 <__swrite>:
   14096:	00c59783          	lh	a5,12(a1)
   1409a:	1101                	addi	sp,sp,-32
   1409c:	cc22                	sw	s0,24(sp)
   1409e:	ca26                	sw	s1,20(sp)
   140a0:	c84a                	sw	s2,16(sp)
   140a2:	c64e                	sw	s3,12(sp)
   140a4:	ce06                	sw	ra,28(sp)
   140a6:	1007f713          	andi	a4,a5,256
   140aa:	842e                	mv	s0,a1
   140ac:	84aa                	mv	s1,a0
   140ae:	8932                	mv	s2,a2
   140b0:	89b6                	mv	s3,a3
   140b2:	e315                	bnez	a4,140d6 <__swrite+0x40>
   140b4:	777d                	lui	a4,0xfffff
   140b6:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdf3fb>
   140b8:	8ff9                	and	a5,a5,a4
   140ba:	00e41583          	lh	a1,14(s0)
   140be:	00f41623          	sh	a5,12(s0)
   140c2:	4462                	lw	s0,24(sp)
   140c4:	40f2                	lw	ra,28(sp)
   140c6:	86ce                	mv	a3,s3
   140c8:	864a                	mv	a2,s2
   140ca:	49b2                	lw	s3,12(sp)
   140cc:	4942                	lw	s2,16(sp)
   140ce:	8526                	mv	a0,s1
   140d0:	44d2                	lw	s1,20(sp)
   140d2:	6105                	addi	sp,sp,32
   140d4:	a269                	j	1425e <_write_r>
   140d6:	00e59583          	lh	a1,14(a1)
   140da:	4689                	li	a3,2
   140dc:	4601                	li	a2,0
   140de:	2221                	jal	141e6 <_lseek_r>
   140e0:	00c41783          	lh	a5,12(s0)
   140e4:	bfc1                	j	140b4 <__swrite+0x1e>

000140e6 <__sseek>:
   140e6:	1141                	addi	sp,sp,-16
   140e8:	c422                	sw	s0,8(sp)
   140ea:	842e                	mv	s0,a1
   140ec:	00e59583          	lh	a1,14(a1)
   140f0:	c606                	sw	ra,12(sp)
   140f2:	28d5                	jal	141e6 <_lseek_r>
   140f4:	57fd                	li	a5,-1
   140f6:	00f50f63          	beq	a0,a5,14114 <__sseek+0x2e>
   140fa:	00c45783          	lhu	a5,12(s0)
   140fe:	6705                	lui	a4,0x1
   14100:	40b2                	lw	ra,12(sp)
   14102:	8fd9                	or	a5,a5,a4
   14104:	07c2                	slli	a5,a5,0x10
   14106:	87c1                	srai	a5,a5,0x10
   14108:	c828                	sw	a0,80(s0)
   1410a:	00f41623          	sh	a5,12(s0)
   1410e:	4422                	lw	s0,8(sp)
   14110:	0141                	addi	sp,sp,16
   14112:	8082                	ret
   14114:	00c45783          	lhu	a5,12(s0)
   14118:	777d                	lui	a4,0xfffff
   1411a:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdf3fb>
   1411c:	8ff9                	and	a5,a5,a4
   1411e:	07c2                	slli	a5,a5,0x10
   14120:	87c1                	srai	a5,a5,0x10
   14122:	40b2                	lw	ra,12(sp)
   14124:	00f41623          	sh	a5,12(s0)
   14128:	4422                	lw	s0,8(sp)
   1412a:	0141                	addi	sp,sp,16
   1412c:	8082                	ret

0001412e <__sclose>:
   1412e:	00e59583          	lh	a1,14(a1)
   14132:	a009                	j	14134 <_close_r>

00014134 <_close_r>:
   14134:	1141                	addi	sp,sp,-16
   14136:	c422                	sw	s0,8(sp)
   14138:	c226                	sw	s1,4(sp)
   1413a:	842a                	mv	s0,a0
   1413c:	852e                	mv	a0,a1
   1413e:	c606                	sw	ra,12(sp)
   14140:	f201a223          	sw	zero,-220(gp) # 1f8dc <errno>
   14144:	102070ef          	jal	1b246 <_close>
   14148:	57fd                	li	a5,-1
   1414a:	00f50763          	beq	a0,a5,14158 <_close_r+0x24>
   1414e:	40b2                	lw	ra,12(sp)
   14150:	4422                	lw	s0,8(sp)
   14152:	4492                	lw	s1,4(sp)
   14154:	0141                	addi	sp,sp,16
   14156:	8082                	ret
   14158:	f241a783          	lw	a5,-220(gp) # 1f8dc <errno>
   1415c:	dbed                	beqz	a5,1414e <_close_r+0x1a>
   1415e:	40b2                	lw	ra,12(sp)
   14160:	c01c                	sw	a5,0(s0)
   14162:	4422                	lw	s0,8(sp)
   14164:	4492                	lw	s1,4(sp)
   14166:	0141                	addi	sp,sp,16
   14168:	8082                	ret

0001416a <_reclaim_reent>:
   1416a:	f141a783          	lw	a5,-236(gp) # 1f8cc <_impure_ptr>
   1416e:	06a78b63          	beq	a5,a0,141e4 <_reclaim_reent+0x7a>
   14172:	416c                	lw	a1,68(a0)
   14174:	1101                	addi	sp,sp,-32
   14176:	ca26                	sw	s1,20(sp)
   14178:	ce06                	sw	ra,28(sp)
   1417a:	cc22                	sw	s0,24(sp)
   1417c:	84aa                	mv	s1,a0
   1417e:	c59d                	beqz	a1,141ac <_reclaim_reent+0x42>
   14180:	c84a                	sw	s2,16(sp)
   14182:	c64e                	sw	s3,12(sp)
   14184:	4901                	li	s2,0
   14186:	08000993          	li	s3,128
   1418a:	012587b3          	add	a5,a1,s2
   1418e:	4380                	lw	s0,0(a5)
   14190:	c419                	beqz	s0,1419e <_reclaim_reent+0x34>
   14192:	85a2                	mv	a1,s0
   14194:	4000                	lw	s0,0(s0)
   14196:	8526                	mv	a0,s1
   14198:	26d1                	jal	1455c <_free_r>
   1419a:	fc65                	bnez	s0,14192 <_reclaim_reent+0x28>
   1419c:	40ec                	lw	a1,68(s1)
   1419e:	0911                	addi	s2,s2,4
   141a0:	ff3915e3          	bne	s2,s3,1418a <_reclaim_reent+0x20>
   141a4:	8526                	mv	a0,s1
   141a6:	2e5d                	jal	1455c <_free_r>
   141a8:	4942                	lw	s2,16(sp)
   141aa:	49b2                	lw	s3,12(sp)
   141ac:	5c8c                	lw	a1,56(s1)
   141ae:	c199                	beqz	a1,141b4 <_reclaim_reent+0x4a>
   141b0:	8526                	mv	a0,s1
   141b2:	266d                	jal	1455c <_free_r>
   141b4:	40a0                	lw	s0,64(s1)
   141b6:	c411                	beqz	s0,141c2 <_reclaim_reent+0x58>
   141b8:	85a2                	mv	a1,s0
   141ba:	4000                	lw	s0,0(s0)
   141bc:	8526                	mv	a0,s1
   141be:	2e79                	jal	1455c <_free_r>
   141c0:	fc65                	bnez	s0,141b8 <_reclaim_reent+0x4e>
   141c2:	44ec                	lw	a1,76(s1)
   141c4:	c199                	beqz	a1,141ca <_reclaim_reent+0x60>
   141c6:	8526                	mv	a0,s1
   141c8:	2e51                	jal	1455c <_free_r>
   141ca:	58dc                	lw	a5,52(s1)
   141cc:	c799                	beqz	a5,141da <_reclaim_reent+0x70>
   141ce:	4462                	lw	s0,24(sp)
   141d0:	40f2                	lw	ra,28(sp)
   141d2:	8526                	mv	a0,s1
   141d4:	44d2                	lw	s1,20(sp)
   141d6:	6105                	addi	sp,sp,32
   141d8:	8782                	jr	a5
   141da:	40f2                	lw	ra,28(sp)
   141dc:	4462                	lw	s0,24(sp)
   141de:	44d2                	lw	s1,20(sp)
   141e0:	6105                	addi	sp,sp,32
   141e2:	8082                	ret
   141e4:	8082                	ret

000141e6 <_lseek_r>:
   141e6:	1141                	addi	sp,sp,-16
   141e8:	872e                	mv	a4,a1
   141ea:	c422                	sw	s0,8(sp)
   141ec:	c226                	sw	s1,4(sp)
   141ee:	85b2                	mv	a1,a2
   141f0:	842a                	mv	s0,a0
   141f2:	8636                	mv	a2,a3
   141f4:	853a                	mv	a0,a4
   141f6:	c606                	sw	ra,12(sp)
   141f8:	f201a223          	sw	zero,-220(gp) # 1f8dc <errno>
   141fc:	10e070ef          	jal	1b30a <_lseek>
   14200:	57fd                	li	a5,-1
   14202:	00f50763          	beq	a0,a5,14210 <_lseek_r+0x2a>
   14206:	40b2                	lw	ra,12(sp)
   14208:	4422                	lw	s0,8(sp)
   1420a:	4492                	lw	s1,4(sp)
   1420c:	0141                	addi	sp,sp,16
   1420e:	8082                	ret
   14210:	f241a783          	lw	a5,-220(gp) # 1f8dc <errno>
   14214:	dbed                	beqz	a5,14206 <_lseek_r+0x20>
   14216:	40b2                	lw	ra,12(sp)
   14218:	c01c                	sw	a5,0(s0)
   1421a:	4422                	lw	s0,8(sp)
   1421c:	4492                	lw	s1,4(sp)
   1421e:	0141                	addi	sp,sp,16
   14220:	8082                	ret

00014222 <_read_r>:
   14222:	1141                	addi	sp,sp,-16
   14224:	872e                	mv	a4,a1
   14226:	c422                	sw	s0,8(sp)
   14228:	c226                	sw	s1,4(sp)
   1422a:	85b2                	mv	a1,a2
   1422c:	842a                	mv	s0,a0
   1422e:	8636                	mv	a2,a3
   14230:	853a                	mv	a0,a4
   14232:	c606                	sw	ra,12(sp)
   14234:	f201a223          	sw	zero,-220(gp) # 1f8dc <errno>
   14238:	0fe070ef          	jal	1b336 <_read>
   1423c:	57fd                	li	a5,-1
   1423e:	00f50763          	beq	a0,a5,1424c <_read_r+0x2a>
   14242:	40b2                	lw	ra,12(sp)
   14244:	4422                	lw	s0,8(sp)
   14246:	4492                	lw	s1,4(sp)
   14248:	0141                	addi	sp,sp,16
   1424a:	8082                	ret
   1424c:	f241a783          	lw	a5,-220(gp) # 1f8dc <errno>
   14250:	dbed                	beqz	a5,14242 <_read_r+0x20>
   14252:	40b2                	lw	ra,12(sp)
   14254:	c01c                	sw	a5,0(s0)
   14256:	4422                	lw	s0,8(sp)
   14258:	4492                	lw	s1,4(sp)
   1425a:	0141                	addi	sp,sp,16
   1425c:	8082                	ret

0001425e <_write_r>:
   1425e:	1141                	addi	sp,sp,-16
   14260:	872e                	mv	a4,a1
   14262:	c422                	sw	s0,8(sp)
   14264:	c226                	sw	s1,4(sp)
   14266:	85b2                	mv	a1,a2
   14268:	842a                	mv	s0,a0
   1426a:	8636                	mv	a2,a3
   1426c:	853a                	mv	a0,a4
   1426e:	c606                	sw	ra,12(sp)
   14270:	f201a223          	sw	zero,-220(gp) # 1f8dc <errno>
   14274:	142070ef          	jal	1b3b6 <_write>
   14278:	57fd                	li	a5,-1
   1427a:	00f50763          	beq	a0,a5,14288 <_write_r+0x2a>
   1427e:	40b2                	lw	ra,12(sp)
   14280:	4422                	lw	s0,8(sp)
   14282:	4492                	lw	s1,4(sp)
   14284:	0141                	addi	sp,sp,16
   14286:	8082                	ret
   14288:	f241a783          	lw	a5,-220(gp) # 1f8dc <errno>
   1428c:	dbed                	beqz	a5,1427e <_write_r+0x20>
   1428e:	40b2                	lw	ra,12(sp)
   14290:	c01c                	sw	a5,0(s0)
   14292:	4422                	lw	s0,8(sp)
   14294:	4492                	lw	s1,4(sp)
   14296:	0141                	addi	sp,sp,16
   14298:	8082                	ret

0001429a <__libc_init_array>:
   1429a:	1141                	addi	sp,sp,-16
   1429c:	c422                	sw	s0,8(sp)
   1429e:	0001f7b7          	lui	a5,0x1f
   142a2:	0001f437          	lui	s0,0x1f
   142a6:	c04a                	sw	s2,0(sp)
   142a8:	1ac78793          	addi	a5,a5,428 # 1f1ac <__init_array_start>
   142ac:	1ac40713          	addi	a4,s0,428 # 1f1ac <__init_array_start>
   142b0:	c606                	sw	ra,12(sp)
   142b2:	c226                	sw	s1,4(sp)
   142b4:	40e78933          	sub	s2,a5,a4
   142b8:	00e78d63          	beq	a5,a4,142d2 <__libc_init_array+0x38>
   142bc:	40295913          	srai	s2,s2,0x2
   142c0:	1ac40413          	addi	s0,s0,428
   142c4:	4481                	li	s1,0
   142c6:	401c                	lw	a5,0(s0)
   142c8:	0485                	addi	s1,s1,1
   142ca:	0411                	addi	s0,s0,4
   142cc:	9782                	jalr	a5
   142ce:	ff24ece3          	bltu	s1,s2,142c6 <__libc_init_array+0x2c>
   142d2:	0001f437          	lui	s0,0x1f
   142d6:	0001f7b7          	lui	a5,0x1f
   142da:	1b478793          	addi	a5,a5,436 # 1f1b4 <__do_global_dtors_aux_fini_array_entry>
   142de:	1ac40713          	addi	a4,s0,428 # 1f1ac <__init_array_start>
   142e2:	40e78933          	sub	s2,a5,a4
   142e6:	40295913          	srai	s2,s2,0x2
   142ea:	00e78b63          	beq	a5,a4,14300 <__libc_init_array+0x66>
   142ee:	1ac40413          	addi	s0,s0,428
   142f2:	4481                	li	s1,0
   142f4:	401c                	lw	a5,0(s0)
   142f6:	0485                	addi	s1,s1,1
   142f8:	0411                	addi	s0,s0,4
   142fa:	9782                	jalr	a5
   142fc:	ff24ece3          	bltu	s1,s2,142f4 <__libc_init_array+0x5a>
   14300:	40b2                	lw	ra,12(sp)
   14302:	4422                	lw	s0,8(sp)
   14304:	4492                	lw	s1,4(sp)
   14306:	4902                	lw	s2,0(sp)
   14308:	0141                	addi	sp,sp,16
   1430a:	8082                	ret

0001430c <memset>:
   1430c:	433d                	li	t1,15
   1430e:	872a                	mv	a4,a0
   14310:	02c37363          	bgeu	t1,a2,14336 <memset+0x2a>
   14314:	00f77793          	andi	a5,a4,15
   14318:	efbd                	bnez	a5,14396 <memset+0x8a>
   1431a:	e5ad                	bnez	a1,14384 <memset+0x78>
   1431c:	ff067693          	andi	a3,a2,-16
   14320:	8a3d                	andi	a2,a2,15
   14322:	96ba                	add	a3,a3,a4
   14324:	c30c                	sw	a1,0(a4)
   14326:	c34c                	sw	a1,4(a4)
   14328:	c70c                	sw	a1,8(a4)
   1432a:	c74c                	sw	a1,12(a4)
   1432c:	0741                	addi	a4,a4,16
   1432e:	fed76be3          	bltu	a4,a3,14324 <memset+0x18>
   14332:	e211                	bnez	a2,14336 <memset+0x2a>
   14334:	8082                	ret
   14336:	40c306b3          	sub	a3,t1,a2
   1433a:	068a                	slli	a3,a3,0x2
   1433c:	00000297          	auipc	t0,0x0
   14340:	9696                	add	a3,a3,t0
   14342:	00a68067          	jr	10(a3)
   14346:	00b70723          	sb	a1,14(a4)
   1434a:	00b706a3          	sb	a1,13(a4)
   1434e:	00b70623          	sb	a1,12(a4)
   14352:	00b705a3          	sb	a1,11(a4)
   14356:	00b70523          	sb	a1,10(a4)
   1435a:	00b704a3          	sb	a1,9(a4)
   1435e:	00b70423          	sb	a1,8(a4)
   14362:	00b703a3          	sb	a1,7(a4)
   14366:	00b70323          	sb	a1,6(a4)
   1436a:	00b702a3          	sb	a1,5(a4)
   1436e:	00b70223          	sb	a1,4(a4)
   14372:	00b701a3          	sb	a1,3(a4)
   14376:	00b70123          	sb	a1,2(a4)
   1437a:	00b700a3          	sb	a1,1(a4)
   1437e:	00b70023          	sb	a1,0(a4)
   14382:	8082                	ret
   14384:	0ff5f593          	zext.b	a1,a1
   14388:	00859693          	slli	a3,a1,0x8
   1438c:	8dd5                	or	a1,a1,a3
   1438e:	01059693          	slli	a3,a1,0x10
   14392:	8dd5                	or	a1,a1,a3
   14394:	b761                	j	1431c <memset+0x10>
   14396:	00279693          	slli	a3,a5,0x2
   1439a:	00000297          	auipc	t0,0x0
   1439e:	9696                	add	a3,a3,t0
   143a0:	8286                	mv	t0,ra
   143a2:	fa8680e7          	jalr	-88(a3)
   143a6:	8096                	mv	ra,t0
   143a8:	17c1                	addi	a5,a5,-16
   143aa:	8f1d                	sub	a4,a4,a5
   143ac:	963e                	add	a2,a2,a5
   143ae:	f8c374e3          	bgeu	t1,a2,14336 <memset+0x2a>
   143b2:	b7a5                	j	1431a <memset+0xe>

000143b4 <__call_exitprocs>:
   143b4:	7179                	addi	sp,sp,-48
   143b6:	cc52                	sw	s4,24(sp)
   143b8:	d04a                	sw	s2,32(sp)
   143ba:	f281a903          	lw	s2,-216(gp) # 1f8e0 <__atexit>
   143be:	d606                	sw	ra,44(sp)
   143c0:	06090c63          	beqz	s2,14438 <__call_exitprocs+0x84>
   143c4:	ce4e                	sw	s3,28(sp)
   143c6:	ca56                	sw	s5,20(sp)
   143c8:	c85a                	sw	s6,16(sp)
   143ca:	c65e                	sw	s7,12(sp)
   143cc:	d422                	sw	s0,40(sp)
   143ce:	d226                	sw	s1,36(sp)
   143d0:	c462                	sw	s8,8(sp)
   143d2:	8b2a                	mv	s6,a0
   143d4:	8bae                	mv	s7,a1
   143d6:	59fd                	li	s3,-1
   143d8:	4a85                	li	s5,1
   143da:	00492483          	lw	s1,4(s2)
   143de:	fff48413          	addi	s0,s1,-1
   143e2:	04044463          	bltz	s0,1442a <__call_exitprocs+0x76>
   143e6:	048a                	slli	s1,s1,0x2
   143e8:	94ca                	add	s1,s1,s2
   143ea:	040b9c63          	bnez	s7,14442 <__call_exitprocs+0x8e>
   143ee:	00492783          	lw	a5,4(s2)
   143f2:	40d4                	lw	a3,4(s1)
   143f4:	17fd                	addi	a5,a5,-1
   143f6:	08878063          	beq	a5,s0,14476 <__call_exitprocs+0xc2>
   143fa:	0004a223          	sw	zero,4(s1)
   143fe:	c295                	beqz	a3,14422 <__call_exitprocs+0x6e>
   14400:	18892783          	lw	a5,392(s2)
   14404:	008a9733          	sll	a4,s5,s0
   14408:	00492c03          	lw	s8,4(s2)
   1440c:	8ff9                	and	a5,a5,a4
   1440e:	e3b9                	bnez	a5,14454 <__call_exitprocs+0xa0>
   14410:	9682                	jalr	a3
   14412:	00492703          	lw	a4,4(s2)
   14416:	f281a783          	lw	a5,-216(gp) # 1f8e0 <__atexit>
   1441a:	05871b63          	bne	a4,s8,14470 <__call_exitprocs+0xbc>
   1441e:	05279963          	bne	a5,s2,14470 <__call_exitprocs+0xbc>
   14422:	147d                	addi	s0,s0,-1
   14424:	14f1                	addi	s1,s1,-4
   14426:	fd3412e3          	bne	s0,s3,143ea <__call_exitprocs+0x36>
   1442a:	5422                	lw	s0,40(sp)
   1442c:	5492                	lw	s1,36(sp)
   1442e:	49f2                	lw	s3,28(sp)
   14430:	4ad2                	lw	s5,20(sp)
   14432:	4b42                	lw	s6,16(sp)
   14434:	4bb2                	lw	s7,12(sp)
   14436:	4c22                	lw	s8,8(sp)
   14438:	50b2                	lw	ra,44(sp)
   1443a:	5902                	lw	s2,32(sp)
   1443c:	4a62                	lw	s4,24(sp)
   1443e:	6145                	addi	sp,sp,48
   14440:	8082                	ret
   14442:	1044a783          	lw	a5,260(s1)
   14446:	fb7784e3          	beq	a5,s7,143ee <__call_exitprocs+0x3a>
   1444a:	147d                	addi	s0,s0,-1
   1444c:	14f1                	addi	s1,s1,-4
   1444e:	ff341ae3          	bne	s0,s3,14442 <__call_exitprocs+0x8e>
   14452:	bfe1                	j	1442a <__call_exitprocs+0x76>
   14454:	18c92783          	lw	a5,396(s2)
   14458:	0844a583          	lw	a1,132(s1)
   1445c:	8f7d                	and	a4,a4,a5
   1445e:	ef19                	bnez	a4,1447c <__call_exitprocs+0xc8>
   14460:	855a                	mv	a0,s6
   14462:	9682                	jalr	a3
   14464:	00492703          	lw	a4,4(s2)
   14468:	f281a783          	lw	a5,-216(gp) # 1f8e0 <__atexit>
   1446c:	fb8709e3          	beq	a4,s8,1441e <__call_exitprocs+0x6a>
   14470:	dfcd                	beqz	a5,1442a <__call_exitprocs+0x76>
   14472:	893e                	mv	s2,a5
   14474:	b79d                	j	143da <__call_exitprocs+0x26>
   14476:	00892223          	sw	s0,4(s2)
   1447a:	b751                	j	143fe <__call_exitprocs+0x4a>
   1447c:	852e                	mv	a0,a1
   1447e:	9682                	jalr	a3
   14480:	bf49                	j	14412 <__call_exitprocs+0x5e>

00014482 <atexit>:
   14482:	85aa                	mv	a1,a0
   14484:	4681                	li	a3,0
   14486:	4601                	li	a2,0
   14488:	4501                	li	a0,0
   1448a:	2a60306f          	j	17730 <__register_exitproc>

0001448e <_malloc_trim_r>:
   1448e:	1101                	addi	sp,sp,-32
   14490:	c64e                	sw	s3,12(sp)
   14492:	0001f9b7          	lui	s3,0x1f
   14496:	cc22                	sw	s0,24(sp)
   14498:	ca26                	sw	s1,20(sp)
   1449a:	c84a                	sw	s2,16(sp)
   1449c:	c452                	sw	s4,8(sp)
   1449e:	ce06                	sw	ra,28(sp)
   144a0:	8a2e                	mv	s4,a1
   144a2:	892a                	mv	s2,a0
   144a4:	2e898993          	addi	s3,s3,744 # 1f2e8 <__malloc_av_>
   144a8:	087000ef          	jal	14d2e <__malloc_lock>
   144ac:	0089a703          	lw	a4,8(s3)
   144b0:	6785                	lui	a5,0x1
   144b2:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   144b4:	4344                	lw	s1,4(a4)
   144b6:	6705                	lui	a4,0x1
   144b8:	98f1                	andi	s1,s1,-4
   144ba:	00f48433          	add	s0,s1,a5
   144be:	41440433          	sub	s0,s0,s4
   144c2:	8031                	srli	s0,s0,0xc
   144c4:	147d                	addi	s0,s0,-1
   144c6:	0432                	slli	s0,s0,0xc
   144c8:	00e44b63          	blt	s0,a4,144de <_malloc_trim_r+0x50>
   144cc:	4581                	li	a1,0
   144ce:	854a                	mv	a0,s2
   144d0:	68d020ef          	jal	1735c <_sbrk_r>
   144d4:	0089a783          	lw	a5,8(s3)
   144d8:	97a6                	add	a5,a5,s1
   144da:	00f50e63          	beq	a0,a5,144f6 <_malloc_trim_r+0x68>
   144de:	854a                	mv	a0,s2
   144e0:	051000ef          	jal	14d30 <__malloc_unlock>
   144e4:	40f2                	lw	ra,28(sp)
   144e6:	4462                	lw	s0,24(sp)
   144e8:	44d2                	lw	s1,20(sp)
   144ea:	4942                	lw	s2,16(sp)
   144ec:	49b2                	lw	s3,12(sp)
   144ee:	4a22                	lw	s4,8(sp)
   144f0:	4501                	li	a0,0
   144f2:	6105                	addi	sp,sp,32
   144f4:	8082                	ret
   144f6:	408005b3          	neg	a1,s0
   144fa:	854a                	mv	a0,s2
   144fc:	661020ef          	jal	1735c <_sbrk_r>
   14500:	57fd                	li	a5,-1
   14502:	02f50963          	beq	a0,a5,14534 <_malloc_trim_r+0xa6>
   14506:	09418793          	addi	a5,gp,148 # 1fa4c <__malloc_current_mallinfo>
   1450a:	4398                	lw	a4,0(a5)
   1450c:	0089a683          	lw	a3,8(s3)
   14510:	8c81                	sub	s1,s1,s0
   14512:	0014e493          	ori	s1,s1,1
   14516:	8f01                	sub	a4,a4,s0
   14518:	854a                	mv	a0,s2
   1451a:	c2c4                	sw	s1,4(a3)
   1451c:	c398                	sw	a4,0(a5)
   1451e:	013000ef          	jal	14d30 <__malloc_unlock>
   14522:	40f2                	lw	ra,28(sp)
   14524:	4462                	lw	s0,24(sp)
   14526:	44d2                	lw	s1,20(sp)
   14528:	4942                	lw	s2,16(sp)
   1452a:	49b2                	lw	s3,12(sp)
   1452c:	4a22                	lw	s4,8(sp)
   1452e:	4505                	li	a0,1
   14530:	6105                	addi	sp,sp,32
   14532:	8082                	ret
   14534:	4581                	li	a1,0
   14536:	854a                	mv	a0,s2
   14538:	625020ef          	jal	1735c <_sbrk_r>
   1453c:	0089a703          	lw	a4,8(s3)
   14540:	46bd                	li	a3,15
   14542:	40e507b3          	sub	a5,a0,a4
   14546:	f8f6dce3          	bge	a3,a5,144de <_malloc_trim_r+0x50>
   1454a:	f181a683          	lw	a3,-232(gp) # 1f8d0 <__malloc_sbrk_base>
   1454e:	0017e793          	ori	a5,a5,1
   14552:	c35c                	sw	a5,4(a4)
   14554:	8d15                	sub	a0,a0,a3
   14556:	08a1aa23          	sw	a0,148(gp) # 1fa4c <__malloc_current_mallinfo>
   1455a:	b751                	j	144de <_malloc_trim_r+0x50>

0001455c <_free_r>:
   1455c:	10058c63          	beqz	a1,14674 <_free_r+0x118>
   14560:	1141                	addi	sp,sp,-16
   14562:	c422                	sw	s0,8(sp)
   14564:	c226                	sw	s1,4(sp)
   14566:	842e                	mv	s0,a1
   14568:	84aa                	mv	s1,a0
   1456a:	c606                	sw	ra,12(sp)
   1456c:	7c2000ef          	jal	14d2e <__malloc_lock>
   14570:	ffc42503          	lw	a0,-4(s0)
   14574:	ff840713          	addi	a4,s0,-8
   14578:	0001f5b7          	lui	a1,0x1f
   1457c:	ffe57793          	andi	a5,a0,-2
   14580:	00f70633          	add	a2,a4,a5
   14584:	2e858593          	addi	a1,a1,744 # 1f2e8 <__malloc_av_>
   14588:	4254                	lw	a3,4(a2)
   1458a:	0085a803          	lw	a6,8(a1)
   1458e:	9af1                	andi	a3,a3,-4
   14590:	12c80563          	beq	a6,a2,146ba <_free_r+0x15e>
   14594:	c254                	sw	a3,4(a2)
   14596:	8905                	andi	a0,a0,1
   14598:	00d60833          	add	a6,a2,a3
   1459c:	e93d                	bnez	a0,14612 <_free_r+0xb6>
   1459e:	ff842303          	lw	t1,-8(s0)
   145a2:	00482803          	lw	a6,4(a6)
   145a6:	0001f537          	lui	a0,0x1f
   145aa:	40670733          	sub	a4,a4,t1
   145ae:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   145b2:	2f050513          	addi	a0,a0,752 # 1f2f0 <__malloc_av_+0x8>
   145b6:	979a                	add	a5,a5,t1
   145b8:	00187813          	andi	a6,a6,1
   145bc:	0ea88263          	beq	a7,a0,146a0 <_free_r+0x144>
   145c0:	00c72303          	lw	t1,12(a4)
   145c4:	0068a623          	sw	t1,12(a7)
   145c8:	01132423          	sw	a7,8(t1)
   145cc:	10080f63          	beqz	a6,146ea <_free_r+0x18e>
   145d0:	0017e693          	ori	a3,a5,1
   145d4:	c354                	sw	a3,4(a4)
   145d6:	c21c                	sw	a5,0(a2)
   145d8:	1ff00693          	li	a3,511
   145dc:	04f6e863          	bltu	a3,a5,1462c <_free_r+0xd0>
   145e0:	ff87f693          	andi	a3,a5,-8
   145e4:	06a1                	addi	a3,a3,8
   145e6:	41c8                	lw	a0,4(a1)
   145e8:	96ae                	add	a3,a3,a1
   145ea:	4290                	lw	a2,0(a3)
   145ec:	0057d813          	srli	a6,a5,0x5
   145f0:	4785                	li	a5,1
   145f2:	010797b3          	sll	a5,a5,a6
   145f6:	8fc9                	or	a5,a5,a0
   145f8:	ff868513          	addi	a0,a3,-8
   145fc:	c748                	sw	a0,12(a4)
   145fe:	c710                	sw	a2,8(a4)
   14600:	c1dc                	sw	a5,4(a1)
   14602:	c298                	sw	a4,0(a3)
   14604:	c658                	sw	a4,12(a2)
   14606:	4422                	lw	s0,8(sp)
   14608:	40b2                	lw	ra,12(sp)
   1460a:	8526                	mv	a0,s1
   1460c:	4492                	lw	s1,4(sp)
   1460e:	0141                	addi	sp,sp,16
   14610:	a705                	j	14d30 <__malloc_unlock>
   14612:	00482503          	lw	a0,4(a6)
   14616:	8905                	andi	a0,a0,1
   14618:	cd39                	beqz	a0,14676 <_free_r+0x11a>
   1461a:	0017e693          	ori	a3,a5,1
   1461e:	fed42e23          	sw	a3,-4(s0)
   14622:	c21c                	sw	a5,0(a2)
   14624:	1ff00693          	li	a3,511
   14628:	faf6fce3          	bgeu	a3,a5,145e0 <_free_r+0x84>
   1462c:	0097d693          	srli	a3,a5,0x9
   14630:	4611                	li	a2,4
   14632:	0ad66e63          	bltu	a2,a3,146ee <_free_r+0x192>
   14636:	0067d693          	srli	a3,a5,0x6
   1463a:	03968513          	addi	a0,a3,57
   1463e:	03868613          	addi	a2,a3,56
   14642:	050e                	slli	a0,a0,0x3
   14644:	952e                	add	a0,a0,a1
   14646:	4114                	lw	a3,0(a0)
   14648:	1561                	addi	a0,a0,-8
   1464a:	00d51663          	bne	a0,a3,14656 <_free_r+0xfa>
   1464e:	a8f9                	j	1472c <_free_r+0x1d0>
   14650:	4694                	lw	a3,8(a3)
   14652:	00d50663          	beq	a0,a3,1465e <_free_r+0x102>
   14656:	42d0                	lw	a2,4(a3)
   14658:	9a71                	andi	a2,a2,-4
   1465a:	fec7ebe3          	bltu	a5,a2,14650 <_free_r+0xf4>
   1465e:	46c8                	lw	a0,12(a3)
   14660:	c748                	sw	a0,12(a4)
   14662:	c714                	sw	a3,8(a4)
   14664:	4422                	lw	s0,8(sp)
   14666:	c518                	sw	a4,8(a0)
   14668:	40b2                	lw	ra,12(sp)
   1466a:	8526                	mv	a0,s1
   1466c:	4492                	lw	s1,4(sp)
   1466e:	c6d8                	sw	a4,12(a3)
   14670:	0141                	addi	sp,sp,16
   14672:	ad7d                	j	14d30 <__malloc_unlock>
   14674:	8082                	ret
   14676:	0001f537          	lui	a0,0x1f
   1467a:	97b6                	add	a5,a5,a3
   1467c:	2f050513          	addi	a0,a0,752 # 1f2f0 <__malloc_av_+0x8>
   14680:	4614                	lw	a3,8(a2)
   14682:	08a68b63          	beq	a3,a0,14718 <_free_r+0x1bc>
   14686:	00c62803          	lw	a6,12(a2) # 200c <exit-0xe088>
   1468a:	0017e513          	ori	a0,a5,1
   1468e:	00f70633          	add	a2,a4,a5
   14692:	0106a623          	sw	a6,12(a3)
   14696:	00d82423          	sw	a3,8(a6)
   1469a:	c348                	sw	a0,4(a4)
   1469c:	c21c                	sw	a5,0(a2)
   1469e:	bf2d                	j	145d8 <_free_r+0x7c>
   146a0:	0c081d63          	bnez	a6,1477a <_free_r+0x21e>
   146a4:	460c                	lw	a1,8(a2)
   146a6:	4650                	lw	a2,12(a2)
   146a8:	96be                	add	a3,a3,a5
   146aa:	0016e793          	ori	a5,a3,1
   146ae:	c5d0                	sw	a2,12(a1)
   146b0:	c60c                	sw	a1,8(a2)
   146b2:	c35c                	sw	a5,4(a4)
   146b4:	9736                	add	a4,a4,a3
   146b6:	c314                	sw	a3,0(a4)
   146b8:	b7b9                	j	14606 <_free_r+0xaa>
   146ba:	8905                	andi	a0,a0,1
   146bc:	96be                	add	a3,a3,a5
   146be:	e909                	bnez	a0,146d0 <_free_r+0x174>
   146c0:	ff842503          	lw	a0,-8(s0)
   146c4:	8f09                	sub	a4,a4,a0
   146c6:	475c                	lw	a5,12(a4)
   146c8:	4710                	lw	a2,8(a4)
   146ca:	96aa                	add	a3,a3,a0
   146cc:	c65c                	sw	a5,12(a2)
   146ce:	c790                	sw	a2,8(a5)
   146d0:	0016e613          	ori	a2,a3,1
   146d4:	f1c1a783          	lw	a5,-228(gp) # 1f8d4 <__malloc_trim_threshold>
   146d8:	c350                	sw	a2,4(a4)
   146da:	c598                	sw	a4,8(a1)
   146dc:	f2f6e5e3          	bltu	a3,a5,14606 <_free_r+0xaa>
   146e0:	f341a583          	lw	a1,-204(gp) # 1f8ec <__malloc_top_pad>
   146e4:	8526                	mv	a0,s1
   146e6:	3365                	jal	1448e <_malloc_trim_r>
   146e8:	bf39                	j	14606 <_free_r+0xaa>
   146ea:	97b6                	add	a5,a5,a3
   146ec:	bf51                	j	14680 <_free_r+0x124>
   146ee:	4651                	li	a2,20
   146f0:	00d67e63          	bgeu	a2,a3,1470c <_free_r+0x1b0>
   146f4:	05400613          	li	a2,84
   146f8:	04d66463          	bltu	a2,a3,14740 <_free_r+0x1e4>
   146fc:	00c7d693          	srli	a3,a5,0xc
   14700:	06f68513          	addi	a0,a3,111
   14704:	06e68613          	addi	a2,a3,110
   14708:	050e                	slli	a0,a0,0x3
   1470a:	bf2d                	j	14644 <_free_r+0xe8>
   1470c:	05c68513          	addi	a0,a3,92
   14710:	05b68613          	addi	a2,a3,91
   14714:	050e                	slli	a0,a0,0x3
   14716:	b73d                	j	14644 <_free_r+0xe8>
   14718:	c9d8                	sw	a4,20(a1)
   1471a:	c998                	sw	a4,16(a1)
   1471c:	0017e693          	ori	a3,a5,1
   14720:	c748                	sw	a0,12(a4)
   14722:	c708                	sw	a0,8(a4)
   14724:	c354                	sw	a3,4(a4)
   14726:	973e                	add	a4,a4,a5
   14728:	c31c                	sw	a5,0(a4)
   1472a:	bdf1                	j	14606 <_free_r+0xaa>
   1472c:	0045a803          	lw	a6,4(a1)
   14730:	8609                	srai	a2,a2,0x2
   14732:	4785                	li	a5,1
   14734:	00c797b3          	sll	a5,a5,a2
   14738:	0107e7b3          	or	a5,a5,a6
   1473c:	c1dc                	sw	a5,4(a1)
   1473e:	b70d                	j	14660 <_free_r+0x104>
   14740:	15400613          	li	a2,340
   14744:	00d66a63          	bltu	a2,a3,14758 <_free_r+0x1fc>
   14748:	00f7d693          	srli	a3,a5,0xf
   1474c:	07868513          	addi	a0,a3,120
   14750:	07768613          	addi	a2,a3,119
   14754:	050e                	slli	a0,a0,0x3
   14756:	b5fd                	j	14644 <_free_r+0xe8>
   14758:	55400613          	li	a2,1364
   1475c:	00d66a63          	bltu	a2,a3,14770 <_free_r+0x214>
   14760:	0127d693          	srli	a3,a5,0x12
   14764:	07d68513          	addi	a0,a3,125
   14768:	07c68613          	addi	a2,a3,124
   1476c:	050e                	slli	a0,a0,0x3
   1476e:	bdd9                	j	14644 <_free_r+0xe8>
   14770:	3f800513          	li	a0,1016
   14774:	07e00613          	li	a2,126
   14778:	b5f1                	j	14644 <_free_r+0xe8>
   1477a:	0017e693          	ori	a3,a5,1
   1477e:	c354                	sw	a3,4(a4)
   14780:	c21c                	sw	a5,0(a2)
   14782:	b551                	j	14606 <_free_r+0xaa>

00014784 <_malloc_r>:
   14784:	7179                	addi	sp,sp,-48
   14786:	ce4e                	sw	s3,28(sp)
   14788:	d606                	sw	ra,44(sp)
   1478a:	d422                	sw	s0,40(sp)
   1478c:	d226                	sw	s1,36(sp)
   1478e:	d04a                	sw	s2,32(sp)
   14790:	00b58793          	addi	a5,a1,11
   14794:	4759                	li	a4,22
   14796:	89aa                	mv	s3,a0
   14798:	04f76963          	bltu	a4,a5,147ea <_malloc_r+0x66>
   1479c:	47c1                	li	a5,16
   1479e:	16b7eb63          	bltu	a5,a1,14914 <_malloc_r+0x190>
   147a2:	2371                	jal	14d2e <__malloc_lock>
   147a4:	47e1                	li	a5,24
   147a6:	4589                	li	a1,2
   147a8:	44c1                	li	s1,16
   147aa:	0001f937          	lui	s2,0x1f
   147ae:	2e890913          	addi	s2,s2,744 # 1f2e8 <__malloc_av_>
   147b2:	97ca                	add	a5,a5,s2
   147b4:	43c0                	lw	s0,4(a5)
   147b6:	ff878713          	addi	a4,a5,-8
   147ba:	24e40f63          	beq	s0,a4,14a18 <_malloc_r+0x294>
   147be:	405c                	lw	a5,4(s0)
   147c0:	4454                	lw	a3,12(s0)
   147c2:	4410                	lw	a2,8(s0)
   147c4:	9bf1                	andi	a5,a5,-4
   147c6:	97a2                	add	a5,a5,s0
   147c8:	43d8                	lw	a4,4(a5)
   147ca:	c654                	sw	a3,12(a2)
   147cc:	c690                	sw	a2,8(a3)
   147ce:	00176713          	ori	a4,a4,1
   147d2:	854e                	mv	a0,s3
   147d4:	c3d8                	sw	a4,4(a5)
   147d6:	2ba9                	jal	14d30 <__malloc_unlock>
   147d8:	00840513          	addi	a0,s0,8
   147dc:	50b2                	lw	ra,44(sp)
   147de:	5422                	lw	s0,40(sp)
   147e0:	5492                	lw	s1,36(sp)
   147e2:	5902                	lw	s2,32(sp)
   147e4:	49f2                	lw	s3,28(sp)
   147e6:	6145                	addi	sp,sp,48
   147e8:	8082                	ret
   147ea:	ff87f493          	andi	s1,a5,-8
   147ee:	1207c363          	bltz	a5,14914 <_malloc_r+0x190>
   147f2:	12b4e163          	bltu	s1,a1,14914 <_malloc_r+0x190>
   147f6:	2b25                	jal	14d2e <__malloc_lock>
   147f8:	1f700793          	li	a5,503
   147fc:	2c97fd63          	bgeu	a5,s1,14ad6 <_malloc_r+0x352>
   14800:	0094d793          	srli	a5,s1,0x9
   14804:	10078d63          	beqz	a5,1491e <_malloc_r+0x19a>
   14808:	4711                	li	a4,4
   1480a:	24f76c63          	bltu	a4,a5,14a62 <_malloc_r+0x2de>
   1480e:	0064d793          	srli	a5,s1,0x6
   14812:	03978593          	addi	a1,a5,57
   14816:	03878813          	addi	a6,a5,56
   1481a:	00359613          	slli	a2,a1,0x3
   1481e:	0001f937          	lui	s2,0x1f
   14822:	2e890913          	addi	s2,s2,744 # 1f2e8 <__malloc_av_>
   14826:	964a                	add	a2,a2,s2
   14828:	4240                	lw	s0,4(a2)
   1482a:	1661                	addi	a2,a2,-8
   1482c:	02860163          	beq	a2,s0,1484e <_malloc_r+0xca>
   14830:	453d                	li	a0,15
   14832:	a039                	j	14840 <_malloc_r+0xbc>
   14834:	4454                	lw	a3,12(s0)
   14836:	1c075f63          	bgez	a4,14a14 <_malloc_r+0x290>
   1483a:	00d60a63          	beq	a2,a3,1484e <_malloc_r+0xca>
   1483e:	8436                	mv	s0,a3
   14840:	405c                	lw	a5,4(s0)
   14842:	9bf1                	andi	a5,a5,-4
   14844:	40978733          	sub	a4,a5,s1
   14848:	fee556e3          	bge	a0,a4,14834 <_malloc_r+0xb0>
   1484c:	85c2                	mv	a1,a6
   1484e:	01092403          	lw	s0,16(s2)
   14852:	0001f837          	lui	a6,0x1f
   14856:	2f080813          	addi	a6,a6,752 # 1f2f0 <__malloc_av_+0x8>
   1485a:	1b040a63          	beq	s0,a6,14a0e <_malloc_r+0x28a>
   1485e:	405c                	lw	a5,4(s0)
   14860:	46bd                	li	a3,15
   14862:	9bf1                	andi	a5,a5,-4
   14864:	40978733          	sub	a4,a5,s1
   14868:	26e6cc63          	blt	a3,a4,14ae0 <_malloc_r+0x35c>
   1486c:	01092a23          	sw	a6,20(s2)
   14870:	01092823          	sw	a6,16(s2)
   14874:	24075763          	bgez	a4,14ac2 <_malloc_r+0x33e>
   14878:	1ff00713          	li	a4,511
   1487c:	00492503          	lw	a0,4(s2)
   14880:	1af76163          	bltu	a4,a5,14a22 <_malloc_r+0x29e>
   14884:	ff87f713          	andi	a4,a5,-8
   14888:	0721                	addi	a4,a4,8
   1488a:	974a                	add	a4,a4,s2
   1488c:	4314                	lw	a3,0(a4)
   1488e:	0057d613          	srli	a2,a5,0x5
   14892:	4785                	li	a5,1
   14894:	00c797b3          	sll	a5,a5,a2
   14898:	8d5d                	or	a0,a0,a5
   1489a:	ff870793          	addi	a5,a4,-8
   1489e:	c45c                	sw	a5,12(s0)
   148a0:	c414                	sw	a3,8(s0)
   148a2:	00a92223          	sw	a0,4(s2)
   148a6:	c300                	sw	s0,0(a4)
   148a8:	c6c0                	sw	s0,12(a3)
   148aa:	4025d793          	srai	a5,a1,0x2
   148ae:	4605                	li	a2,1
   148b0:	00f61633          	sll	a2,a2,a5
   148b4:	06c56c63          	bltu	a0,a2,1492c <_malloc_r+0x1a8>
   148b8:	00a677b3          	and	a5,a2,a0
   148bc:	ef81                	bnez	a5,148d4 <_malloc_r+0x150>
   148be:	0606                	slli	a2,a2,0x1
   148c0:	99f1                	andi	a1,a1,-4
   148c2:	00a677b3          	and	a5,a2,a0
   148c6:	0591                	addi	a1,a1,4
   148c8:	e791                	bnez	a5,148d4 <_malloc_r+0x150>
   148ca:	0606                	slli	a2,a2,0x1
   148cc:	00a677b3          	and	a5,a2,a0
   148d0:	0591                	addi	a1,a1,4
   148d2:	dfe5                	beqz	a5,148ca <_malloc_r+0x146>
   148d4:	48bd                	li	a7,15
   148d6:	00359313          	slli	t1,a1,0x3
   148da:	934a                	add	t1,t1,s2
   148dc:	851a                	mv	a0,t1
   148de:	455c                	lw	a5,12(a0)
   148e0:	8e2e                	mv	t3,a1
   148e2:	1af50063          	beq	a0,a5,14a82 <_malloc_r+0x2fe>
   148e6:	43d8                	lw	a4,4(a5)
   148e8:	843e                	mv	s0,a5
   148ea:	47dc                	lw	a5,12(a5)
   148ec:	9b71                	andi	a4,a4,-4
   148ee:	409706b3          	sub	a3,a4,s1
   148f2:	18d8cf63          	blt	a7,a3,14a90 <_malloc_r+0x30c>
   148f6:	fe06c6e3          	bltz	a3,148e2 <_malloc_r+0x15e>
   148fa:	9722                	add	a4,a4,s0
   148fc:	4354                	lw	a3,4(a4)
   148fe:	4410                	lw	a2,8(s0)
   14900:	854e                	mv	a0,s3
   14902:	0016e693          	ori	a3,a3,1
   14906:	c354                	sw	a3,4(a4)
   14908:	c65c                	sw	a5,12(a2)
   1490a:	c790                	sw	a2,8(a5)
   1490c:	2115                	jal	14d30 <__malloc_unlock>
   1490e:	00840513          	addi	a0,s0,8
   14912:	b5e9                	j	147dc <_malloc_r+0x58>
   14914:	47b1                	li	a5,12
   14916:	00f9a023          	sw	a5,0(s3)
   1491a:	4501                	li	a0,0
   1491c:	b5c1                	j	147dc <_malloc_r+0x58>
   1491e:	20000613          	li	a2,512
   14922:	04000593          	li	a1,64
   14926:	03f00813          	li	a6,63
   1492a:	bdd5                	j	1481e <_malloc_r+0x9a>
   1492c:	00892403          	lw	s0,8(s2)
   14930:	c85a                	sw	s6,16(sp)
   14932:	405c                	lw	a5,4(s0)
   14934:	ffc7fb13          	andi	s6,a5,-4
   14938:	009b6763          	bltu	s6,s1,14946 <_malloc_r+0x1c2>
   1493c:	409b0733          	sub	a4,s6,s1
   14940:	47bd                	li	a5,15
   14942:	0ae7c163          	blt	a5,a4,149e4 <_malloc_r+0x260>
   14946:	c266                	sw	s9,4(sp)
   14948:	ca56                	sw	s5,20(sp)
   1494a:	f181a703          	lw	a4,-232(gp) # 1f8d0 <__malloc_sbrk_base>
   1494e:	f341aa83          	lw	s5,-204(gp) # 1f8ec <__malloc_top_pad>
   14952:	cc52                	sw	s4,24(sp)
   14954:	c65e                	sw	s7,12(sp)
   14956:	57fd                	li	a5,-1
   14958:	01640a33          	add	s4,s0,s6
   1495c:	9aa6                	add	s5,s5,s1
   1495e:	2cf70763          	beq	a4,a5,14c2c <_malloc_r+0x4a8>
   14962:	6785                	lui	a5,0x1
   14964:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   14966:	9abe                	add	s5,s5,a5
   14968:	77fd                	lui	a5,0xfffff
   1496a:	00fafab3          	and	s5,s5,a5
   1496e:	85d6                	mv	a1,s5
   14970:	854e                	mv	a0,s3
   14972:	1eb020ef          	jal	1735c <_sbrk_r>
   14976:	57fd                	li	a5,-1
   14978:	8baa                	mv	s7,a0
   1497a:	32f50963          	beq	a0,a5,14cac <_malloc_r+0x528>
   1497e:	c462                	sw	s8,8(sp)
   14980:	19456e63          	bltu	a0,s4,14b1c <_malloc_r+0x398>
   14984:	09418c13          	addi	s8,gp,148 # 1fa4c <__malloc_current_mallinfo>
   14988:	000c2583          	lw	a1,0(s8)
   1498c:	95d6                	add	a1,a1,s5
   1498e:	00bc2023          	sw	a1,0(s8)
   14992:	872e                	mv	a4,a1
   14994:	1eaa1863          	bne	s4,a0,14b84 <_malloc_r+0x400>
   14998:	01451793          	slli	a5,a0,0x14
   1499c:	1e079463          	bnez	a5,14b84 <_malloc_r+0x400>
   149a0:	00892b83          	lw	s7,8(s2)
   149a4:	015b07b3          	add	a5,s6,s5
   149a8:	0017e793          	ori	a5,a5,1
   149ac:	00fba223          	sw	a5,4(s7)
   149b0:	f301a683          	lw	a3,-208(gp) # 1f8e8 <__malloc_max_sbrked_mem>
   149b4:	00b6f463          	bgeu	a3,a1,149bc <_malloc_r+0x238>
   149b8:	f2b1a823          	sw	a1,-208(gp) # 1f8e8 <__malloc_max_sbrked_mem>
   149bc:	f2c1a683          	lw	a3,-212(gp) # 1f8e4 <__malloc_max_total_mem>
   149c0:	00b6f463          	bgeu	a3,a1,149c8 <_malloc_r+0x244>
   149c4:	f2b1a623          	sw	a1,-212(gp) # 1f8e4 <__malloc_max_total_mem>
   149c8:	4c22                	lw	s8,8(sp)
   149ca:	845e                	mv	s0,s7
   149cc:	9bf1                	andi	a5,a5,-4
   149ce:	40978733          	sub	a4,a5,s1
   149d2:	2897eb63          	bltu	a5,s1,14c68 <_malloc_r+0x4e4>
   149d6:	47bd                	li	a5,15
   149d8:	28e7d863          	bge	a5,a4,14c68 <_malloc_r+0x4e4>
   149dc:	4a62                	lw	s4,24(sp)
   149de:	4ad2                	lw	s5,20(sp)
   149e0:	4bb2                	lw	s7,12(sp)
   149e2:	4c92                	lw	s9,4(sp)
   149e4:	0014e793          	ori	a5,s1,1
   149e8:	c05c                	sw	a5,4(s0)
   149ea:	94a2                	add	s1,s1,s0
   149ec:	00992423          	sw	s1,8(s2)
   149f0:	00176713          	ori	a4,a4,1
   149f4:	854e                	mv	a0,s3
   149f6:	c0d8                	sw	a4,4(s1)
   149f8:	2e25                	jal	14d30 <__malloc_unlock>
   149fa:	50b2                	lw	ra,44(sp)
   149fc:	00840513          	addi	a0,s0,8
   14a00:	5422                	lw	s0,40(sp)
   14a02:	4b42                	lw	s6,16(sp)
   14a04:	5492                	lw	s1,36(sp)
   14a06:	5902                	lw	s2,32(sp)
   14a08:	49f2                	lw	s3,28(sp)
   14a0a:	6145                	addi	sp,sp,48
   14a0c:	8082                	ret
   14a0e:	00492503          	lw	a0,4(s2)
   14a12:	bd61                	j	148aa <_malloc_r+0x126>
   14a14:	4410                	lw	a2,8(s0)
   14a16:	bb45                	j	147c6 <_malloc_r+0x42>
   14a18:	47c0                	lw	s0,12(a5)
   14a1a:	0589                	addi	a1,a1,2
   14a1c:	e28789e3          	beq	a5,s0,1484e <_malloc_r+0xca>
   14a20:	bb79                	j	147be <_malloc_r+0x3a>
   14a22:	0097d713          	srli	a4,a5,0x9
   14a26:	4691                	li	a3,4
   14a28:	0ee6f263          	bgeu	a3,a4,14b0c <_malloc_r+0x388>
   14a2c:	46d1                	li	a3,20
   14a2e:	24e6e663          	bltu	a3,a4,14c7a <_malloc_r+0x4f6>
   14a32:	05c70613          	addi	a2,a4,92
   14a36:	05b70693          	addi	a3,a4,91
   14a3a:	060e                	slli	a2,a2,0x3
   14a3c:	964a                	add	a2,a2,s2
   14a3e:	4218                	lw	a4,0(a2)
   14a40:	1661                	addi	a2,a2,-8
   14a42:	00e61663          	bne	a2,a4,14a4e <_malloc_r+0x2ca>
   14a46:	a2ed                	j	14c30 <_malloc_r+0x4ac>
   14a48:	4718                	lw	a4,8(a4)
   14a4a:	00e60663          	beq	a2,a4,14a56 <_malloc_r+0x2d2>
   14a4e:	4354                	lw	a3,4(a4)
   14a50:	9af1                	andi	a3,a3,-4
   14a52:	fed7ebe3          	bltu	a5,a3,14a48 <_malloc_r+0x2c4>
   14a56:	4750                	lw	a2,12(a4)
   14a58:	c450                	sw	a2,12(s0)
   14a5a:	c418                	sw	a4,8(s0)
   14a5c:	c600                	sw	s0,8(a2)
   14a5e:	c740                	sw	s0,12(a4)
   14a60:	b5a9                	j	148aa <_malloc_r+0x126>
   14a62:	4751                	li	a4,20
   14a64:	0cf77363          	bgeu	a4,a5,14b2a <_malloc_r+0x3a6>
   14a68:	05400713          	li	a4,84
   14a6c:	22f76363          	bltu	a4,a5,14c92 <_malloc_r+0x50e>
   14a70:	00c4d793          	srli	a5,s1,0xc
   14a74:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffdf46b>
   14a78:	06e78813          	addi	a6,a5,110
   14a7c:	00359613          	slli	a2,a1,0x3
   14a80:	bb79                	j	1481e <_malloc_r+0x9a>
   14a82:	0e05                	addi	t3,t3,1
   14a84:	003e7793          	andi	a5,t3,3
   14a88:	0521                	addi	a0,a0,8
   14a8a:	cfc5                	beqz	a5,14b42 <_malloc_r+0x3be>
   14a8c:	455c                	lw	a5,12(a0)
   14a8e:	bd91                	j	148e2 <_malloc_r+0x15e>
   14a90:	4410                	lw	a2,8(s0)
   14a92:	0014e593          	ori	a1,s1,1
   14a96:	c04c                	sw	a1,4(s0)
   14a98:	c65c                	sw	a5,12(a2)
   14a9a:	c790                	sw	a2,8(a5)
   14a9c:	94a2                	add	s1,s1,s0
   14a9e:	00992a23          	sw	s1,20(s2)
   14aa2:	00992823          	sw	s1,16(s2)
   14aa6:	0016e793          	ori	a5,a3,1
   14aaa:	0104a623          	sw	a6,12(s1)
   14aae:	0104a423          	sw	a6,8(s1)
   14ab2:	c0dc                	sw	a5,4(s1)
   14ab4:	9722                	add	a4,a4,s0
   14ab6:	854e                	mv	a0,s3
   14ab8:	c314                	sw	a3,0(a4)
   14aba:	2c9d                	jal	14d30 <__malloc_unlock>
   14abc:	00840513          	addi	a0,s0,8
   14ac0:	bb31                	j	147dc <_malloc_r+0x58>
   14ac2:	97a2                	add	a5,a5,s0
   14ac4:	43d8                	lw	a4,4(a5)
   14ac6:	854e                	mv	a0,s3
   14ac8:	00176713          	ori	a4,a4,1
   14acc:	c3d8                	sw	a4,4(a5)
   14ace:	248d                	jal	14d30 <__malloc_unlock>
   14ad0:	00840513          	addi	a0,s0,8
   14ad4:	b321                	j	147dc <_malloc_r+0x58>
   14ad6:	0034d593          	srli	a1,s1,0x3
   14ada:	00848793          	addi	a5,s1,8
   14ade:	b1f1                	j	147aa <_malloc_r+0x26>
   14ae0:	0014e693          	ori	a3,s1,1
   14ae4:	c054                	sw	a3,4(s0)
   14ae6:	94a2                	add	s1,s1,s0
   14ae8:	00992a23          	sw	s1,20(s2)
   14aec:	00992823          	sw	s1,16(s2)
   14af0:	00176693          	ori	a3,a4,1
   14af4:	0104a623          	sw	a6,12(s1)
   14af8:	0104a423          	sw	a6,8(s1)
   14afc:	c0d4                	sw	a3,4(s1)
   14afe:	97a2                	add	a5,a5,s0
   14b00:	854e                	mv	a0,s3
   14b02:	c398                	sw	a4,0(a5)
   14b04:	2435                	jal	14d30 <__malloc_unlock>
   14b06:	00840513          	addi	a0,s0,8
   14b0a:	b9c9                	j	147dc <_malloc_r+0x58>
   14b0c:	0067d713          	srli	a4,a5,0x6
   14b10:	03970613          	addi	a2,a4,57
   14b14:	03870693          	addi	a3,a4,56
   14b18:	060e                	slli	a2,a2,0x3
   14b1a:	b70d                	j	14a3c <_malloc_r+0x2b8>
   14b1c:	05240d63          	beq	s0,s2,14b76 <_malloc_r+0x3f2>
   14b20:	00892403          	lw	s0,8(s2)
   14b24:	4c22                	lw	s8,8(sp)
   14b26:	405c                	lw	a5,4(s0)
   14b28:	b555                	j	149cc <_malloc_r+0x248>
   14b2a:	05c78593          	addi	a1,a5,92
   14b2e:	05b78813          	addi	a6,a5,91
   14b32:	00359613          	slli	a2,a1,0x3
   14b36:	b1e5                	j	1481e <_malloc_r+0x9a>
   14b38:	00832783          	lw	a5,8(t1)
   14b3c:	15fd                	addi	a1,a1,-1
   14b3e:	1e679563          	bne	a5,t1,14d28 <_malloc_r+0x5a4>
   14b42:	0035f793          	andi	a5,a1,3
   14b46:	1361                	addi	t1,t1,-8
   14b48:	fbe5                	bnez	a5,14b38 <_malloc_r+0x3b4>
   14b4a:	00492703          	lw	a4,4(s2)
   14b4e:	fff64793          	not	a5,a2
   14b52:	8ff9                	and	a5,a5,a4
   14b54:	00f92223          	sw	a5,4(s2)
   14b58:	0606                	slli	a2,a2,0x1
   14b5a:	dcc7e9e3          	bltu	a5,a2,1492c <_malloc_r+0x1a8>
   14b5e:	dc0607e3          	beqz	a2,1492c <_malloc_r+0x1a8>
   14b62:	00f67733          	and	a4,a2,a5
   14b66:	e711                	bnez	a4,14b72 <_malloc_r+0x3ee>
   14b68:	0606                	slli	a2,a2,0x1
   14b6a:	00f67733          	and	a4,a2,a5
   14b6e:	0e11                	addi	t3,t3,4
   14b70:	df65                	beqz	a4,14b68 <_malloc_r+0x3e4>
   14b72:	85f2                	mv	a1,t3
   14b74:	b38d                	j	148d6 <_malloc_r+0x152>
   14b76:	09418c13          	addi	s8,gp,148 # 1fa4c <__malloc_current_mallinfo>
   14b7a:	000c2703          	lw	a4,0(s8)
   14b7e:	9756                	add	a4,a4,s5
   14b80:	00ec2023          	sw	a4,0(s8)
   14b84:	f181a683          	lw	a3,-232(gp) # 1f8d0 <__malloc_sbrk_base>
   14b88:	57fd                	li	a5,-1
   14b8a:	12f68563          	beq	a3,a5,14cb4 <_malloc_r+0x530>
   14b8e:	414b87b3          	sub	a5,s7,s4
   14b92:	97ba                	add	a5,a5,a4
   14b94:	00fc2023          	sw	a5,0(s8)
   14b98:	007bfc93          	andi	s9,s7,7
   14b9c:	0a0c8263          	beqz	s9,14c40 <_malloc_r+0x4bc>
   14ba0:	419b8bb3          	sub	s7,s7,s9
   14ba4:	6785                	lui	a5,0x1
   14ba6:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   14ba8:	0ba1                	addi	s7,s7,8
   14baa:	419785b3          	sub	a1,a5,s9
   14bae:	9ade                	add	s5,s5,s7
   14bb0:	415585b3          	sub	a1,a1,s5
   14bb4:	05d2                	slli	a1,a1,0x14
   14bb6:	0145da13          	srli	s4,a1,0x14
   14bba:	85d2                	mv	a1,s4
   14bbc:	854e                	mv	a0,s3
   14bbe:	79e020ef          	jal	1735c <_sbrk_r>
   14bc2:	57fd                	li	a5,-1
   14bc4:	12f50463          	beq	a0,a5,14cec <_malloc_r+0x568>
   14bc8:	41750533          	sub	a0,a0,s7
   14bcc:	01450ab3          	add	s5,a0,s4
   14bd0:	000c2703          	lw	a4,0(s8)
   14bd4:	01792423          	sw	s7,8(s2)
   14bd8:	001ae793          	ori	a5,s5,1
   14bdc:	00ea05b3          	add	a1,s4,a4
   14be0:	00bc2023          	sw	a1,0(s8)
   14be4:	00fba223          	sw	a5,4(s7)
   14be8:	dd2404e3          	beq	s0,s2,149b0 <_malloc_r+0x22c>
   14bec:	46bd                	li	a3,15
   14bee:	0766f963          	bgeu	a3,s6,14c60 <_malloc_r+0x4dc>
   14bf2:	4058                	lw	a4,4(s0)
   14bf4:	ff4b0793          	addi	a5,s6,-12
   14bf8:	9be1                	andi	a5,a5,-8
   14bfa:	8b05                	andi	a4,a4,1
   14bfc:	8f5d                	or	a4,a4,a5
   14bfe:	c058                	sw	a4,4(s0)
   14c00:	4615                	li	a2,5
   14c02:	00f40733          	add	a4,s0,a5
   14c06:	c350                	sw	a2,4(a4)
   14c08:	c710                	sw	a2,8(a4)
   14c0a:	00f6e563          	bltu	a3,a5,14c14 <_malloc_r+0x490>
   14c0e:	004ba783          	lw	a5,4(s7)
   14c12:	bb79                	j	149b0 <_malloc_r+0x22c>
   14c14:	00840593          	addi	a1,s0,8
   14c18:	854e                	mv	a0,s3
   14c1a:	943ff0ef          	jal	1455c <_free_r>
   14c1e:	00892b83          	lw	s7,8(s2)
   14c22:	000c2583          	lw	a1,0(s8)
   14c26:	004ba783          	lw	a5,4(s7)
   14c2a:	b359                	j	149b0 <_malloc_r+0x22c>
   14c2c:	0ac1                	addi	s5,s5,16
   14c2e:	b381                	j	1496e <_malloc_r+0x1ea>
   14c30:	8689                	srai	a3,a3,0x2
   14c32:	4785                	li	a5,1
   14c34:	00d797b3          	sll	a5,a5,a3
   14c38:	8d5d                	or	a0,a0,a5
   14c3a:	00a92223          	sw	a0,4(s2)
   14c3e:	bd29                	j	14a58 <_malloc_r+0x2d4>
   14c40:	015b85b3          	add	a1,s7,s5
   14c44:	40b005b3          	neg	a1,a1
   14c48:	05d2                	slli	a1,a1,0x14
   14c4a:	0145da13          	srli	s4,a1,0x14
   14c4e:	85d2                	mv	a1,s4
   14c50:	854e                	mv	a0,s3
   14c52:	70a020ef          	jal	1735c <_sbrk_r>
   14c56:	57fd                	li	a5,-1
   14c58:	f6f518e3          	bne	a0,a5,14bc8 <_malloc_r+0x444>
   14c5c:	4a01                	li	s4,0
   14c5e:	bf8d                	j	14bd0 <_malloc_r+0x44c>
   14c60:	4c22                	lw	s8,8(sp)
   14c62:	4785                	li	a5,1
   14c64:	00fba223          	sw	a5,4(s7)
   14c68:	854e                	mv	a0,s3
   14c6a:	20d9                	jal	14d30 <__malloc_unlock>
   14c6c:	4501                	li	a0,0
   14c6e:	4a62                	lw	s4,24(sp)
   14c70:	4ad2                	lw	s5,20(sp)
   14c72:	4b42                	lw	s6,16(sp)
   14c74:	4bb2                	lw	s7,12(sp)
   14c76:	4c92                	lw	s9,4(sp)
   14c78:	b695                	j	147dc <_malloc_r+0x58>
   14c7a:	05400693          	li	a3,84
   14c7e:	02e6ee63          	bltu	a3,a4,14cba <_malloc_r+0x536>
   14c82:	00c7d713          	srli	a4,a5,0xc
   14c86:	06f70613          	addi	a2,a4,111
   14c8a:	06e70693          	addi	a3,a4,110
   14c8e:	060e                	slli	a2,a2,0x3
   14c90:	b375                	j	14a3c <_malloc_r+0x2b8>
   14c92:	15400713          	li	a4,340
   14c96:	02f76e63          	bltu	a4,a5,14cd2 <_malloc_r+0x54e>
   14c9a:	00f4d793          	srli	a5,s1,0xf
   14c9e:	07878593          	addi	a1,a5,120
   14ca2:	07778813          	addi	a6,a5,119
   14ca6:	00359613          	slli	a2,a1,0x3
   14caa:	be95                	j	1481e <_malloc_r+0x9a>
   14cac:	00892403          	lw	s0,8(s2)
   14cb0:	405c                	lw	a5,4(s0)
   14cb2:	bb29                	j	149cc <_malloc_r+0x248>
   14cb4:	f171ac23          	sw	s7,-232(gp) # 1f8d0 <__malloc_sbrk_base>
   14cb8:	b5c5                	j	14b98 <_malloc_r+0x414>
   14cba:	15400693          	li	a3,340
   14cbe:	02e6ed63          	bltu	a3,a4,14cf8 <_malloc_r+0x574>
   14cc2:	00f7d713          	srli	a4,a5,0xf
   14cc6:	07870613          	addi	a2,a4,120
   14cca:	07770693          	addi	a3,a4,119
   14cce:	060e                	slli	a2,a2,0x3
   14cd0:	b3b5                	j	14a3c <_malloc_r+0x2b8>
   14cd2:	55400713          	li	a4,1364
   14cd6:	02f76d63          	bltu	a4,a5,14d10 <_malloc_r+0x58c>
   14cda:	0124d793          	srli	a5,s1,0x12
   14cde:	07d78593          	addi	a1,a5,125
   14ce2:	07c78813          	addi	a6,a5,124
   14ce6:	00359613          	slli	a2,a1,0x3
   14cea:	be15                	j	1481e <_malloc_r+0x9a>
   14cec:	1ce1                	addi	s9,s9,-8
   14cee:	9ae6                	add	s5,s5,s9
   14cf0:	417a8ab3          	sub	s5,s5,s7
   14cf4:	4a01                	li	s4,0
   14cf6:	bde9                	j	14bd0 <_malloc_r+0x44c>
   14cf8:	55400693          	li	a3,1364
   14cfc:	02e6e163          	bltu	a3,a4,14d1e <_malloc_r+0x59a>
   14d00:	0127d713          	srli	a4,a5,0x12
   14d04:	07d70613          	addi	a2,a4,125
   14d08:	07c70693          	addi	a3,a4,124
   14d0c:	060e                	slli	a2,a2,0x3
   14d0e:	b33d                	j	14a3c <_malloc_r+0x2b8>
   14d10:	3f800613          	li	a2,1016
   14d14:	07f00593          	li	a1,127
   14d18:	07e00813          	li	a6,126
   14d1c:	b609                	j	1481e <_malloc_r+0x9a>
   14d1e:	3f800613          	li	a2,1016
   14d22:	07e00693          	li	a3,126
   14d26:	bb19                	j	14a3c <_malloc_r+0x2b8>
   14d28:	00492783          	lw	a5,4(s2)
   14d2c:	b535                	j	14b58 <_malloc_r+0x3d4>

00014d2e <__malloc_lock>:
   14d2e:	8082                	ret

00014d30 <__malloc_unlock>:
   14d30:	8082                	ret

00014d32 <_vfprintf_r>:
   14d32:	7145                	addi	sp,sp,-464
   14d34:	1c112623          	sw	ra,460(sp)
   14d38:	1c812423          	sw	s0,456(sp)
   14d3c:	1c912223          	sw	s1,452(sp)
   14d40:	1b612823          	sw	s6,432(sp)
   14d44:	84ae                	mv	s1,a1
   14d46:	8b32                	mv	s6,a2
   14d48:	ca36                	sw	a3,20(sp)
   14d4a:	842a                	mv	s0,a0
   14d4c:	c42a                	sw	a0,8(sp)
   14d4e:	602020ef          	jal	17350 <_localeconv_r>
   14d52:	411c                	lw	a5,0(a0)
   14d54:	853e                	mv	a0,a5
   14d56:	d83e                	sw	a5,48(sp)
   14d58:	085020ef          	jal	175dc <strlen>
   14d5c:	d62a                	sw	a0,44(sp)
   14d5e:	c982                	sw	zero,208(sp)
   14d60:	cb82                	sw	zero,212(sp)
   14d62:	cd82                	sw	zero,216(sp)
   14d64:	cf82                	sw	zero,220(sp)
   14d66:	c409                	beqz	s0,14d70 <_vfprintf_r+0x3e>
   14d68:	5858                	lw	a4,52(s0)
   14d6a:	e319                	bnez	a4,14d70 <_vfprintf_r+0x3e>
   14d6c:	1960106f          	j	15f02 <_vfprintf_r+0x11d0>
   14d70:	00c49683          	lh	a3,12(s1)
   14d74:	50f8                	lw	a4,100(s1)
   14d76:	01269613          	slli	a2,a3,0x12
   14d7a:	00064a63          	bltz	a2,14d8e <_vfprintf_r+0x5c>
   14d7e:	7679                	lui	a2,0xffffe
   14d80:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffde3fb>
   14d82:	6589                	lui	a1,0x2
   14d84:	8ecd                	or	a3,a3,a1
   14d86:	8f71                	and	a4,a4,a2
   14d88:	00d49623          	sh	a3,12(s1)
   14d8c:	d0f8                	sw	a4,100(s1)
   14d8e:	01271693          	slli	a3,a4,0x12
   14d92:	0006d463          	bgez	a3,14d9a <_vfprintf_r+0x68>
   14d96:	07b0106f          	j	16610 <_vfprintf_r+0x18de>
   14d9a:	00c49703          	lh	a4,12(s1)
   14d9e:	00877693          	andi	a3,a4,8
   14da2:	22068a63          	beqz	a3,14fd6 <_vfprintf_r+0x2a4>
   14da6:	4894                	lw	a3,16(s1)
   14da8:	22068763          	beqz	a3,14fd6 <_vfprintf_r+0x2a4>
   14dac:	8b69                	andi	a4,a4,26
   14dae:	46a9                	li	a3,10
   14db0:	24d70063          	beq	a4,a3,14ff0 <_vfprintf_r+0x2be>
   14db4:	1b312e23          	sw	s3,444(sp)
   14db8:	1b412c23          	sw	s4,440(sp)
   14dbc:	1ba12023          	sw	s10,416(sp)
   14dc0:	6779                	lui	a4,0x1e
   14dc2:	1d212023          	sw	s2,448(sp)
   14dc6:	1b512a23          	sw	s5,436(sp)
   14dca:	1b712623          	sw	s7,428(sp)
   14dce:	1b812423          	sw	s8,424(sp)
   14dd2:	1b912223          	sw	s9,420(sp)
   14dd6:	19b12e23          	sw	s11,412(sp)
   14dda:	8d5a                	mv	s10,s6
   14ddc:	abc70793          	addi	a5,a4,-1348 # 1dabc <__clzsi2+0x1e8>
   14de0:	000d4703          	lbu	a4,0(s10)
   14de4:	0ec10993          	addi	s3,sp,236
   14de8:	6a79                	lui	s4,0x1e
   14dea:	c3ce                	sw	s3,196(sp)
   14dec:	c782                	sw	zero,204(sp)
   14dee:	c582                	sw	zero,200(sp)
   14df0:	d002                	sw	zero,32(sp)
   14df2:	da02                	sw	zero,52(sp)
   14df4:	c082                	sw	zero,64(sp)
   14df6:	de02                	sw	zero,60(sp)
   14df8:	c482                	sw	zero,72(sp)
   14dfa:	c282                	sw	zero,68(sp)
   14dfc:	c602                	sw	zero,12(sp)
   14dfe:	cc3e                	sw	a5,24(sp)
   14e00:	844e                	mv	s0,s3
   14e02:	cc0a0a13          	addi	s4,s4,-832 # 1dcc0 <zeroes.0>
   14e06:	18070063          	beqz	a4,14f86 <_vfprintf_r+0x254>
   14e0a:	896a                	mv	s2,s10
   14e0c:	02500693          	li	a3,37
   14e10:	2ed70a63          	beq	a4,a3,15104 <_vfprintf_r+0x3d2>
   14e14:	00194703          	lbu	a4,1(s2)
   14e18:	0905                	addi	s2,s2,1
   14e1a:	fb7d                	bnez	a4,14e10 <_vfprintf_r+0xde>
   14e1c:	41a90ab3          	sub	s5,s2,s10
   14e20:	17a90363          	beq	s2,s10,14f86 <_vfprintf_r+0x254>
   14e24:	46be                	lw	a3,204(sp)
   14e26:	472e                	lw	a4,200(sp)
   14e28:	01a42023          	sw	s10,0(s0)
   14e2c:	96d6                	add	a3,a3,s5
   14e2e:	0705                	addi	a4,a4,1
   14e30:	01542223          	sw	s5,4(s0)
   14e34:	c7b6                	sw	a3,204(sp)
   14e36:	c5ba                	sw	a4,200(sp)
   14e38:	469d                	li	a3,7
   14e3a:	0421                	addi	s0,s0,8
   14e3c:	2ce6cb63          	blt	a3,a4,15112 <_vfprintf_r+0x3e0>
   14e40:	47b2                	lw	a5,12(sp)
   14e42:	00094703          	lbu	a4,0(s2)
   14e46:	97d6                	add	a5,a5,s5
   14e48:	c63e                	sw	a5,12(sp)
   14e4a:	12070e63          	beqz	a4,14f86 <_vfprintf_r+0x254>
   14e4e:	00194883          	lbu	a7,1(s2)
   14e52:	0a0103a3          	sb	zero,167(sp)
   14e56:	0905                	addi	s2,s2,1
   14e58:	5afd                	li	s5,-1
   14e5a:	4b81                	li	s7,0
   14e5c:	4c81                	li	s9,0
   14e5e:	05a00b13          	li	s6,90
   14e62:	0905                	addi	s2,s2,1
   14e64:	fe088793          	addi	a5,a7,-32
   14e68:	02fb6b63          	bltu	s6,a5,14e9e <_vfprintf_r+0x16c>
   14e6c:	4762                	lw	a4,24(sp)
   14e6e:	078a                	slli	a5,a5,0x2
   14e70:	97ba                	add	a5,a5,a4
   14e72:	439c                	lw	a5,0(a5)
   14e74:	8782                	jr	a5
   14e76:	4b81                	li	s7,0
   14e78:	fd088793          	addi	a5,a7,-48
   14e7c:	46a5                	li	a3,9
   14e7e:	00094883          	lbu	a7,0(s2)
   14e82:	002b9713          	slli	a4,s7,0x2
   14e86:	9bba                	add	s7,s7,a4
   14e88:	0b86                	slli	s7,s7,0x1
   14e8a:	9bbe                	add	s7,s7,a5
   14e8c:	fd088793          	addi	a5,a7,-48
   14e90:	0905                	addi	s2,s2,1
   14e92:	fef6f6e3          	bgeu	a3,a5,14e7e <_vfprintf_r+0x14c>
   14e96:	fe088793          	addi	a5,a7,-32
   14e9a:	fcfb79e3          	bgeu	s6,a5,14e6c <_vfprintf_r+0x13a>
   14e9e:	0e088463          	beqz	a7,14f86 <_vfprintf_r+0x254>
   14ea2:	13110623          	sb	a7,300(sp)
   14ea6:	0a0103a3          	sb	zero,167(sp)
   14eaa:	4d85                	li	s11,1
   14eac:	4b05                	li	s6,1
   14eae:	12c10d13          	addi	s10,sp,300
   14eb2:	c802                	sw	zero,16(sp)
   14eb4:	4a81                	li	s5,0
   14eb6:	d402                	sw	zero,40(sp)
   14eb8:	d202                	sw	zero,36(sp)
   14eba:	ce02                	sw	zero,28(sp)
   14ebc:	002cf293          	andi	t0,s9,2
   14ec0:	00028363          	beqz	t0,14ec6 <_vfprintf_r+0x194>
   14ec4:	0d89                	addi	s11,s11,2
   14ec6:	084cff93          	andi	t6,s9,132
   14eca:	463e                	lw	a2,204(sp)
   14ecc:	000f9663          	bnez	t6,14ed8 <_vfprintf_r+0x1a6>
   14ed0:	41bb8733          	sub	a4,s7,s11
   14ed4:	0ce047e3          	bgtz	a4,157a2 <_vfprintf_r+0xa70>
   14ed8:	0a714703          	lbu	a4,167(sp)
   14edc:	cf19                	beqz	a4,14efa <_vfprintf_r+0x1c8>
   14ede:	472e                	lw	a4,200(sp)
   14ee0:	0a710593          	addi	a1,sp,167
   14ee4:	c00c                	sw	a1,0(s0)
   14ee6:	0605                	addi	a2,a2,1
   14ee8:	4585                	li	a1,1
   14eea:	0705                	addi	a4,a4,1
   14eec:	c04c                	sw	a1,4(s0)
   14eee:	c7b2                	sw	a2,204(sp)
   14ef0:	c5ba                	sw	a4,200(sp)
   14ef2:	459d                	li	a1,7
   14ef4:	0421                	addi	s0,s0,8
   14ef6:	2ee5c763          	blt	a1,a4,151e4 <_vfprintf_r+0x4b2>
   14efa:	00028f63          	beqz	t0,14f18 <_vfprintf_r+0x1e6>
   14efe:	472e                	lw	a4,200(sp)
   14f00:	4589                	li	a1,2
   14f02:	0609                	addi	a2,a2,2
   14f04:	0705                	addi	a4,a4,1
   14f06:	113c                	addi	a5,sp,168
   14f08:	c04c                	sw	a1,4(s0)
   14f0a:	c01c                	sw	a5,0(s0)
   14f0c:	c7b2                	sw	a2,204(sp)
   14f0e:	c5ba                	sw	a4,200(sp)
   14f10:	459d                	li	a1,7
   14f12:	0421                	addi	s0,s0,8
   14f14:	12e5cae3          	blt	a1,a4,15848 <_vfprintf_r+0xb16>
   14f18:	08000713          	li	a4,128
   14f1c:	72ef8e63          	beq	t6,a4,15658 <_vfprintf_r+0x926>
   14f20:	416a8ab3          	sub	s5,s5,s6
   14f24:	7d504a63          	bgtz	s5,156f8 <_vfprintf_r+0x9c6>
   14f28:	100cf713          	andi	a4,s9,256
   14f2c:	60071e63          	bnez	a4,15548 <_vfprintf_r+0x816>
   14f30:	47ae                	lw	a5,200(sp)
   14f32:	965a                	add	a2,a2,s6
   14f34:	01a42023          	sw	s10,0(s0)
   14f38:	0785                	addi	a5,a5,1
   14f3a:	01642223          	sw	s6,4(s0)
   14f3e:	c7b2                	sw	a2,204(sp)
   14f40:	c5be                	sw	a5,200(sp)
   14f42:	471d                	li	a4,7
   14f44:	36f74563          	blt	a4,a5,152ae <_vfprintf_r+0x57c>
   14f48:	0421                	addi	s0,s0,8
   14f4a:	004cfe13          	andi	t3,s9,4
   14f4e:	000e0663          	beqz	t3,14f5a <_vfprintf_r+0x228>
   14f52:	41bb8ab3          	sub	s5,s7,s11
   14f56:	115047e3          	bgtz	s5,15864 <_vfprintf_r+0xb32>
   14f5a:	835e                	mv	t1,s7
   14f5c:	01bbd363          	bge	s7,s11,14f62 <_vfprintf_r+0x230>
   14f60:	836e                	mv	t1,s11
   14f62:	47b2                	lw	a5,12(sp)
   14f64:	979a                	add	a5,a5,t1
   14f66:	c63e                	sw	a5,12(sp)
   14f68:	00061ce3          	bnez	a2,15780 <_vfprintf_r+0xa4e>
   14f6c:	47c2                	lw	a5,16(sp)
   14f6e:	c582                	sw	zero,200(sp)
   14f70:	c789                	beqz	a5,14f7a <_vfprintf_r+0x248>
   14f72:	45c2                	lw	a1,16(sp)
   14f74:	4522                	lw	a0,8(sp)
   14f76:	de6ff0ef          	jal	1455c <_free_r>
   14f7a:	844e                	mv	s0,s3
   14f7c:	8d4a                	mv	s10,s2
   14f7e:	000d4703          	lbu	a4,0(s10)
   14f82:	e80714e3          	bnez	a4,14e0a <_vfprintf_r+0xd8>
   14f86:	47be                	lw	a5,204(sp)
   14f88:	c399                	beqz	a5,14f8e <_vfprintf_r+0x25c>
   14f8a:	31a0106f          	j	162a4 <_vfprintf_r+0x1572>
   14f8e:	00c4d783          	lhu	a5,12(s1)
   14f92:	1c012903          	lw	s2,448(sp)
   14f96:	1bc12983          	lw	s3,444(sp)
   14f9a:	0407f793          	andi	a5,a5,64
   14f9e:	1b812a03          	lw	s4,440(sp)
   14fa2:	1b412a83          	lw	s5,436(sp)
   14fa6:	1ac12b83          	lw	s7,428(sp)
   14faa:	1a812c03          	lw	s8,424(sp)
   14fae:	1a412c83          	lw	s9,420(sp)
   14fb2:	1a012d03          	lw	s10,416(sp)
   14fb6:	19c12d83          	lw	s11,412(sp)
   14fba:	c399                	beqz	a5,14fc0 <_vfprintf_r+0x28e>
   14fbc:	6540106f          	j	16610 <_vfprintf_r+0x18de>
   14fc0:	1cc12083          	lw	ra,460(sp)
   14fc4:	1c812403          	lw	s0,456(sp)
   14fc8:	4532                	lw	a0,12(sp)
   14fca:	1c412483          	lw	s1,452(sp)
   14fce:	1b012b03          	lw	s6,432(sp)
   14fd2:	6179                	addi	sp,sp,464
   14fd4:	8082                	ret
   14fd6:	4522                	lw	a0,8(sp)
   14fd8:	85a6                	mv	a1,s1
   14fda:	18e020ef          	jal	17168 <__swsetup_r>
   14fde:	c119                	beqz	a0,14fe4 <_vfprintf_r+0x2b2>
   14fe0:	6300106f          	j	16610 <_vfprintf_r+0x18de>
   14fe4:	00c49703          	lh	a4,12(s1)
   14fe8:	46a9                	li	a3,10
   14fea:	8b69                	andi	a4,a4,26
   14fec:	dcd714e3          	bne	a4,a3,14db4 <_vfprintf_r+0x82>
   14ff0:	00e49703          	lh	a4,14(s1)
   14ff4:	dc0740e3          	bltz	a4,14db4 <_vfprintf_r+0x82>
   14ff8:	46d2                	lw	a3,20(sp)
   14ffa:	4522                	lw	a0,8(sp)
   14ffc:	865a                	mv	a2,s6
   14ffe:	85a6                	mv	a1,s1
   15000:	0e9010ef          	jal	168e8 <__sbprintf>
   15004:	c62a                	sw	a0,12(sp)
   15006:	bf6d                	j	14fc0 <_vfprintf_r+0x28e>
   15008:	4c22                	lw	s8,8(sp)
   1500a:	8562                	mv	a0,s8
   1500c:	344020ef          	jal	17350 <_localeconv_r>
   15010:	415c                	lw	a5,4(a0)
   15012:	853e                	mv	a0,a5
   15014:	c2be                	sw	a5,68(sp)
   15016:	5c6020ef          	jal	175dc <strlen>
   1501a:	87aa                	mv	a5,a0
   1501c:	8562                	mv	a0,s8
   1501e:	c4be                	sw	a5,72(sp)
   15020:	8c3e                	mv	s8,a5
   15022:	32e020ef          	jal	17350 <_localeconv_r>
   15026:	451c                	lw	a5,8(a0)
   15028:	de3e                	sw	a5,60(sp)
   1502a:	280c16e3          	bnez	s8,15ab6 <_vfprintf_r+0xd84>
   1502e:	00094883          	lbu	a7,0(s2)
   15032:	bd05                	j	14e62 <_vfprintf_r+0x130>
   15034:	00094883          	lbu	a7,0(s2)
   15038:	020cec93          	ori	s9,s9,32
   1503c:	b51d                	j	14e62 <_vfprintf_r+0x130>
   1503e:	010cec93          	ori	s9,s9,16
   15042:	020cf793          	andi	a5,s9,32
   15046:	26078e63          	beqz	a5,152c2 <_vfprintf_r+0x590>
   1504a:	47d2                	lw	a5,20(sp)
   1504c:	00778c13          	addi	s8,a5,7
   15050:	ff8c7c13          	andi	s8,s8,-8
   15054:	004c2783          	lw	a5,4(s8)
   15058:	000c2b03          	lw	s6,0(s8)
   1505c:	008c0713          	addi	a4,s8,8
   15060:	ca3a                	sw	a4,20(sp)
   15062:	8dbe                	mv	s11,a5
   15064:	2807c463          	bltz	a5,152ec <_vfprintf_r+0x5ba>
   15068:	8ee6                	mv	t4,s9
   1506a:	380ac563          	bltz	s5,153f4 <_vfprintf_r+0x6c2>
   1506e:	01bb67b3          	or	a5,s6,s11
   15072:	f7fcfe93          	andi	t4,s9,-129
   15076:	36079f63          	bnez	a5,153f4 <_vfprintf_r+0x6c2>
   1507a:	380a9263          	bnez	s5,153fe <_vfprintf_r+0x6cc>
   1507e:	4b01                	li	s6,0
   15080:	8cf6                	mv	s9,t4
   15082:	19010d13          	addi	s10,sp,400
   15086:	0a714703          	lbu	a4,167(sp)
   1508a:	8dd6                	mv	s11,s5
   1508c:	016ad363          	bge	s5,s6,15092 <_vfprintf_r+0x360>
   15090:	8dda                	mv	s11,s6
   15092:	c802                	sw	zero,16(sp)
   15094:	d402                	sw	zero,40(sp)
   15096:	d202                	sw	zero,36(sp)
   15098:	ce02                	sw	zero,28(sp)
   1509a:	e20701e3          	beqz	a4,14ebc <_vfprintf_r+0x18a>
   1509e:	0d85                	addi	s11,s11,1
   150a0:	bd31                	j	14ebc <_vfprintf_r+0x18a>
   150a2:	010cec93          	ori	s9,s9,16
   150a6:	020cf793          	andi	a5,s9,32
   150aa:	2a078d63          	beqz	a5,15364 <_vfprintf_r+0x632>
   150ae:	47d2                	lw	a5,20(sp)
   150b0:	00778c13          	addi	s8,a5,7
   150b4:	ff8c7c13          	andi	s8,s8,-8
   150b8:	000c2b03          	lw	s6,0(s8)
   150bc:	004c2d83          	lw	s11,4(s8)
   150c0:	008c0793          	addi	a5,s8,8
   150c4:	ca3e                	sw	a5,20(sp)
   150c6:	bffcfe93          	andi	t4,s9,-1025
   150ca:	4781                	li	a5,0
   150cc:	4701                	li	a4,0
   150ce:	0ae103a3          	sb	a4,167(sp)
   150d2:	220acd63          	bltz	s5,1530c <_vfprintf_r+0x5da>
   150d6:	01bb6733          	or	a4,s6,s11
   150da:	f7fefc93          	andi	s9,t4,-129
   150de:	6c071063          	bnez	a4,1579e <_vfprintf_r+0xa6c>
   150e2:	520a9763          	bnez	s5,15610 <_vfprintf_r+0x8de>
   150e6:	180790e3          	bnez	a5,15a66 <_vfprintf_r+0xd34>
   150ea:	001efb13          	andi	s6,t4,1
   150ee:	19010d13          	addi	s10,sp,400
   150f2:	f80b0ae3          	beqz	s6,15086 <_vfprintf_r+0x354>
   150f6:	03000793          	li	a5,48
   150fa:	18f107a3          	sb	a5,399(sp)
   150fe:	18f10d13          	addi	s10,sp,399
   15102:	b751                	j	15086 <_vfprintf_r+0x354>
   15104:	41a90ab3          	sub	s5,s2,s10
   15108:	d1a91ee3          	bne	s2,s10,14e24 <_vfprintf_r+0xf2>
   1510c:	00094703          	lbu	a4,0(s2)
   15110:	bb2d                	j	14e4a <_vfprintf_r+0x118>
   15112:	4522                	lw	a0,8(sp)
   15114:	01d0                	addi	a2,sp,196
   15116:	85a6                	mv	a1,s1
   15118:	065010ef          	jal	1697c <__sprint_r>
   1511c:	e60519e3          	bnez	a0,14f8e <_vfprintf_r+0x25c>
   15120:	844e                	mv	s0,s3
   15122:	bb39                	j	14e40 <_vfprintf_r+0x10e>
   15124:	008cf713          	andi	a4,s9,8
   15128:	1c0716e3          	bnez	a4,15af4 <_vfprintf_r+0xdc2>
   1512c:	47d2                	lw	a5,20(sp)
   1512e:	0908                	addi	a0,sp,144
   15130:	c846                	sw	a7,16(sp)
   15132:	00778c13          	addi	s8,a5,7
   15136:	ff8c7c13          	andi	s8,s8,-8
   1513a:	000c2583          	lw	a1,0(s8)
   1513e:	004c2603          	lw	a2,4(s8)
   15142:	008c0793          	addi	a5,s8,8
   15146:	ca3e                	sw	a5,20(sp)
   15148:	600080ef          	jal	1d748 <__extenddftf2>
   1514c:	45ca                	lw	a1,144(sp)
   1514e:	465a                	lw	a2,148(sp)
   15150:	46ea                	lw	a3,152(sp)
   15152:	477a                	lw	a4,156(sp)
   15154:	48c2                	lw	a7,16(sp)
   15156:	0988                	addi	a0,sp,208
   15158:	c846                	sw	a7,16(sp)
   1515a:	cfba                	sw	a4,220(sp)
   1515c:	c9ae                	sw	a1,208(sp)
   1515e:	cbb2                	sw	a2,212(sp)
   15160:	cdb6                	sw	a3,216(sp)
   15162:	7da020ef          	jal	1793c <_ldcheck>
   15166:	d72a                	sw	a0,172(sp)
   15168:	4709                	li	a4,2
   1516a:	48c2                	lw	a7,16(sp)
   1516c:	5ce50be3          	beq	a0,a4,15f42 <_vfprintf_r+0x1210>
   15170:	4705                	li	a4,1
   15172:	6ae505e3          	beq	a0,a4,1601c <_vfprintf_r+0x12ea>
   15176:	06100713          	li	a4,97
   1517a:	2ae88ce3          	beq	a7,a4,15c32 <_vfprintf_r+0xf00>
   1517e:	04100713          	li	a4,65
   15182:	05800793          	li	a5,88
   15186:	2ae888e3          	beq	a7,a4,15c36 <_vfprintf_r+0xf04>
   1518a:	577d                	li	a4,-1
   1518c:	00ea9463          	bne	s5,a4,15194 <_vfprintf_r+0x462>
   15190:	6260106f          	j	167b6 <_vfprintf_r+0x1a84>
   15194:	fdf8f713          	andi	a4,a7,-33
   15198:	04700693          	li	a3,71
   1519c:	c802                	sw	zero,16(sp)
   1519e:	00d71563          	bne	a4,a3,151a8 <_vfprintf_r+0x476>
   151a2:	000a9363          	bnez	s5,151a8 <_vfprintf_r+0x476>
   151a6:	4a85                	li	s5,1
   151a8:	4c7e                	lw	s8,220(sp)
   151aa:	100ce793          	ori	a5,s9,256
   151ae:	c6be                	sw	a5,76(sp)
   151b0:	dc02                	sw	zero,56(sp)
   151b2:	4fce                	lw	t6,208(sp)
   151b4:	4f5e                	lw	t5,212(sp)
   151b6:	4eee                	lw	t4,216(sp)
   151b8:	000c5963          	bgez	s8,151ca <_vfprintf_r+0x498>
   151bc:	80000737          	lui	a4,0x80000
   151c0:	02d00793          	li	a5,45
   151c4:	01874c33          	xor	s8,a4,s8
   151c8:	dc3e                	sw	a5,56(sp)
   151ca:	fbf88713          	addi	a4,a7,-65
   151ce:	02500693          	li	a3,37
   151d2:	28e6eee3          	bltu	a3,a4,15c6e <_vfprintf_r+0xf3c>
   151d6:	66f9                	lui	a3,0x1e
   151d8:	070a                	slli	a4,a4,0x2
   151da:	c2868693          	addi	a3,a3,-984 # 1dc28 <__clzsi2+0x354>
   151de:	9736                	add	a4,a4,a3
   151e0:	4318                	lw	a4,0(a4)
   151e2:	8702                	jr	a4
   151e4:	4522                	lw	a0,8(sp)
   151e6:	01d0                	addi	a2,sp,196
   151e8:	85a6                	mv	a1,s1
   151ea:	c8c6                	sw	a7,80(sp)
   151ec:	c6fe                	sw	t6,76(sp)
   151ee:	dc16                	sw	t0,56(sp)
   151f0:	78c010ef          	jal	1697c <__sprint_r>
   151f4:	58051d63          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   151f8:	463e                	lw	a2,204(sp)
   151fa:	48c6                	lw	a7,80(sp)
   151fc:	4fb6                	lw	t6,76(sp)
   151fe:	52e2                	lw	t0,56(sp)
   15200:	844e                	mv	s0,s3
   15202:	b9e5                	j	14efa <_vfprintf_r+0x1c8>
   15204:	4aae                	lw	s5,200(sp)
   15206:	5782                	lw	a5,32(sp)
   15208:	4705                	li	a4,1
   1520a:	01a42023          	sw	s10,0(s0)
   1520e:	00160c13          	addi	s8,a2,1
   15212:	0a85                	addi	s5,s5,1
   15214:	00840b13          	addi	s6,s0,8
   15218:	7af75763          	bge	a4,a5,159c6 <_vfprintf_r+0xc94>
   1521c:	4705                	li	a4,1
   1521e:	c058                	sw	a4,4(s0)
   15220:	c7e2                	sw	s8,204(sp)
   15222:	c5d6                	sw	s5,200(sp)
   15224:	471d                	li	a4,7
   15226:	395741e3          	blt	a4,s5,15da8 <_vfprintf_r+0x1076>
   1522a:	57b2                	lw	a5,44(sp)
   1522c:	5742                	lw	a4,48(sp)
   1522e:	0a85                	addi	s5,s5,1
   15230:	9c3e                	add	s8,s8,a5
   15232:	00eb2023          	sw	a4,0(s6)
   15236:	00fb2223          	sw	a5,4(s6)
   1523a:	c7e2                	sw	s8,204(sp)
   1523c:	c5d6                	sw	s5,200(sp)
   1523e:	471d                	li	a4,7
   15240:	0b21                	addi	s6,s6,8
   15242:	37574fe3          	blt	a4,s5,15dc0 <_vfprintf_r+0x108e>
   15246:	474e                	lw	a4,208(sp)
   15248:	5782                	lw	a5,32(sp)
   1524a:	010c                	addi	a1,sp,128
   1524c:	c93a                	sw	a4,144(sp)
   1524e:	475e                	lw	a4,212(sp)
   15250:	0908                	addi	a0,sp,144
   15252:	c102                	sw	zero,128(sp)
   15254:	cb3a                	sw	a4,148(sp)
   15256:	476e                	lw	a4,216(sp)
   15258:	c302                	sw	zero,132(sp)
   1525a:	c502                	sw	zero,136(sp)
   1525c:	cd3a                	sw	a4,152(sp)
   1525e:	477e                	lw	a4,220(sp)
   15260:	c702                	sw	zero,140(sp)
   15262:	fff78413          	addi	s0,a5,-1
   15266:	cf3a                	sw	a4,156(sp)
   15268:	1fc060ef          	jal	1b464 <__eqtf2>
   1526c:	78050263          	beqz	a0,159f0 <_vfprintf_r+0xcbe>
   15270:	001d0793          	addi	a5,s10,1
   15274:	0a85                	addi	s5,s5,1
   15276:	9c22                	add	s8,s8,s0
   15278:	00fb2023          	sw	a5,0(s6)
   1527c:	008b2223          	sw	s0,4(s6)
   15280:	c7e2                	sw	s8,204(sp)
   15282:	c5d6                	sw	s5,200(sp)
   15284:	479d                	li	a5,7
   15286:	0b21                	addi	s6,s6,8
   15288:	7557c963          	blt	a5,s5,159da <_vfprintf_r+0xca8>
   1528c:	4686                	lw	a3,64(sp)
   1528e:	1958                	addi	a4,sp,180
   15290:	001a8793          	addi	a5,s5,1
   15294:	01868633          	add	a2,a3,s8
   15298:	00eb2023          	sw	a4,0(s6)
   1529c:	00db2223          	sw	a3,4(s6)
   152a0:	c7b2                	sw	a2,204(sp)
   152a2:	c5be                	sw	a5,200(sp)
   152a4:	471d                	li	a4,7
   152a6:	008b0413          	addi	s0,s6,8
   152aa:	caf750e3          	bge	a4,a5,14f4a <_vfprintf_r+0x218>
   152ae:	4522                	lw	a0,8(sp)
   152b0:	01d0                	addi	a2,sp,196
   152b2:	85a6                	mv	a1,s1
   152b4:	6c8010ef          	jal	1697c <__sprint_r>
   152b8:	4c051b63          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   152bc:	463e                	lw	a2,204(sp)
   152be:	844e                	mv	s0,s3
   152c0:	b169                	j	14f4a <_vfprintf_r+0x218>
   152c2:	4752                	lw	a4,20(sp)
   152c4:	010cf793          	andi	a5,s9,16
   152c8:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe03fc>
   152cc:	0711                	addi	a4,a4,4
   152ce:	ca3a                	sw	a4,20(sp)
   152d0:	7c079e63          	bnez	a5,15aac <_vfprintf_r+0xd7a>
   152d4:	040cf793          	andi	a5,s9,64
   152d8:	7c078663          	beqz	a5,15aa4 <_vfprintf_r+0xd72>
   152dc:	0b42                	slli	s6,s6,0x10
   152de:	410b5b13          	srai	s6,s6,0x10
   152e2:	41fb5d93          	srai	s11,s6,0x1f
   152e6:	87ee                	mv	a5,s11
   152e8:	d807d0e3          	bgez	a5,15068 <_vfprintf_r+0x336>
   152ec:	02d00713          	li	a4,45
   152f0:	016037b3          	snez	a5,s6
   152f4:	41b00db3          	neg	s11,s11
   152f8:	0ae103a3          	sb	a4,167(sp)
   152fc:	40fd8db3          	sub	s11,s11,a5
   15300:	41600b33          	neg	s6,s6
   15304:	8ee6                	mv	t4,s9
   15306:	4785                	li	a5,1
   15308:	dc0ad7e3          	bgez	s5,150d6 <_vfprintf_r+0x3a4>
   1530c:	4705                	li	a4,1
   1530e:	0ee78363          	beq	a5,a4,153f4 <_vfprintf_r+0x6c2>
   15312:	4709                	li	a4,2
   15314:	30e78763          	beq	a5,a4,15622 <_vfprintf_r+0x8f0>
   15318:	19010d13          	addi	s10,sp,400
   1531c:	01dd9793          	slli	a5,s11,0x1d
   15320:	007b7713          	andi	a4,s6,7
   15324:	003b5b13          	srli	s6,s6,0x3
   15328:	03070713          	addi	a4,a4,48
   1532c:	0167eb33          	or	s6,a5,s6
   15330:	003ddd93          	srli	s11,s11,0x3
   15334:	feed0fa3          	sb	a4,-1(s10)
   15338:	01bb67b3          	or	a5,s6,s11
   1533c:	866a                	mv	a2,s10
   1533e:	1d7d                	addi	s10,s10,-1
   15340:	fff1                	bnez	a5,1531c <_vfprintf_r+0x5ea>
   15342:	001ef693          	andi	a3,t4,1
   15346:	30068463          	beqz	a3,1564e <_vfprintf_r+0x91c>
   1534a:	03000693          	li	a3,48
   1534e:	30d70063          	beq	a4,a3,1564e <_vfprintf_r+0x91c>
   15352:	1679                	addi	a2,a2,-2
   15354:	0b1c                	addi	a5,sp,400
   15356:	fedd0fa3          	sb	a3,-1(s10)
   1535a:	40c78b33          	sub	s6,a5,a2
   1535e:	8cf6                	mv	s9,t4
   15360:	8d32                	mv	s10,a2
   15362:	b315                	j	15086 <_vfprintf_r+0x354>
   15364:	4752                	lw	a4,20(sp)
   15366:	010cf793          	andi	a5,s9,16
   1536a:	00072b03          	lw	s6,0(a4)
   1536e:	0711                	addi	a4,a4,4
   15370:	ca3a                	sw	a4,20(sp)
   15372:	72079663          	bnez	a5,15a9e <_vfprintf_r+0xd6c>
   15376:	040cf793          	andi	a5,s9,64
   1537a:	70078e63          	beqz	a5,15a96 <_vfprintf_r+0xd64>
   1537e:	0b42                	slli	s6,s6,0x10
   15380:	010b5b13          	srli	s6,s6,0x10
   15384:	4d81                	li	s11,0
   15386:	b381                	j	150c6 <_vfprintf_r+0x394>
   15388:	4752                	lw	a4,20(sp)
   1538a:	0a0103a3          	sb	zero,167(sp)
   1538e:	4d85                	li	s11,1
   15390:	431c                	lw	a5,0(a4)
   15392:	0711                	addi	a4,a4,4
   15394:	ca3a                	sw	a4,20(sp)
   15396:	12f10623          	sb	a5,300(sp)
   1539a:	4b05                	li	s6,1
   1539c:	12c10d13          	addi	s10,sp,300
   153a0:	be09                	j	14eb2 <_vfprintf_r+0x180>
   153a2:	47d2                	lw	a5,20(sp)
   153a4:	0a0103a3          	sb	zero,167(sp)
   153a8:	0007ad03          	lw	s10,0(a5)
   153ac:	00478c13          	addi	s8,a5,4
   153b0:	7e0d0a63          	beqz	s10,15ba4 <_vfprintf_r+0xe72>
   153b4:	420ac4e3          	bltz	s5,15fdc <_vfprintf_r+0x12aa>
   153b8:	8656                	mv	a2,s5
   153ba:	4581                	li	a1,0
   153bc:	856a                	mv	a0,s10
   153be:	ca46                	sw	a7,20(sp)
   153c0:	683010ef          	jal	17242 <memchr>
   153c4:	c82a                	sw	a0,16(sp)
   153c6:	48d2                	lw	a7,20(sp)
   153c8:	e119                	bnez	a0,153ce <_vfprintf_r+0x69c>
   153ca:	25c0106f          	j	16626 <_vfprintf_r+0x18f4>
   153ce:	47c2                	lw	a5,16(sp)
   153d0:	0a714703          	lbu	a4,167(sp)
   153d4:	ca62                	sw	s8,20(sp)
   153d6:	41a78b33          	sub	s6,a5,s10
   153da:	fffb4693          	not	a3,s6
   153de:	86fd                	srai	a3,a3,0x1f
   153e0:	c802                	sw	zero,16(sp)
   153e2:	d402                	sw	zero,40(sp)
   153e4:	d202                	sw	zero,36(sp)
   153e6:	ce02                	sw	zero,28(sp)
   153e8:	00db7db3          	and	s11,s6,a3
   153ec:	4a81                	li	s5,0
   153ee:	ca0718e3          	bnez	a4,1509e <_vfprintf_r+0x36c>
   153f2:	b4e9                	j	14ebc <_vfprintf_r+0x18a>
   153f4:	1e0d98e3          	bnez	s11,15de4 <_vfprintf_r+0x10b2>
   153f8:	47a5                	li	a5,9
   153fa:	1f67e5e3          	bltu	a5,s6,15de4 <_vfprintf_r+0x10b2>
   153fe:	030b0b13          	addi	s6,s6,48
   15402:	196107a3          	sb	s6,399(sp)
   15406:	8cf6                	mv	s9,t4
   15408:	4b05                	li	s6,1
   1540a:	18f10d13          	addi	s10,sp,399
   1540e:	b9a5                	j	15086 <_vfprintf_r+0x354>
   15410:	47d2                	lw	a5,20(sp)
   15412:	0007ab83          	lw	s7,0(a5)
   15416:	0791                	addi	a5,a5,4
   15418:	660bd163          	bgez	s7,15a7a <_vfprintf_r+0xd48>
   1541c:	41700bb3          	neg	s7,s7
   15420:	ca3e                	sw	a5,20(sp)
   15422:	00094883          	lbu	a7,0(s2)
   15426:	004cec93          	ori	s9,s9,4
   1542a:	bc25                	j	14e62 <_vfprintf_r+0x130>
   1542c:	02b00793          	li	a5,43
   15430:	00094883          	lbu	a7,0(s2)
   15434:	0af103a3          	sb	a5,167(sp)
   15438:	b42d                	j	14e62 <_vfprintf_r+0x130>
   1543a:	00094883          	lbu	a7,0(s2)
   1543e:	080cec93          	ori	s9,s9,128
   15442:	b405                	j	14e62 <_vfprintf_r+0x130>
   15444:	00094883          	lbu	a7,0(s2)
   15448:	02a00793          	li	a5,42
   1544c:	00190693          	addi	a3,s2,1
   15450:	00f89463          	bne	a7,a5,15458 <_vfprintf_r+0x726>
   15454:	44c0106f          	j	168a0 <_vfprintf_r+0x1b6e>
   15458:	fd088793          	addi	a5,a7,-48
   1545c:	4725                	li	a4,9
   1545e:	4a81                	li	s5,0
   15460:	4625                	li	a2,9
   15462:	02f76063          	bltu	a4,a5,15482 <_vfprintf_r+0x750>
   15466:	0006c883          	lbu	a7,0(a3)
   1546a:	002a9713          	slli	a4,s5,0x2
   1546e:	9aba                	add	s5,s5,a4
   15470:	0a86                	slli	s5,s5,0x1
   15472:	9abe                	add	s5,s5,a5
   15474:	fd088793          	addi	a5,a7,-48
   15478:	0685                	addi	a3,a3,1
   1547a:	fef676e3          	bgeu	a2,a5,15466 <_vfprintf_r+0x734>
   1547e:	680ac963          	bltz	s5,15b10 <_vfprintf_r+0xdde>
   15482:	8936                	mv	s2,a3
   15484:	b2c5                	j	14e64 <_vfprintf_r+0x132>
   15486:	00094883          	lbu	a7,0(s2)
   1548a:	001cec93          	ori	s9,s9,1
   1548e:	bad1                	j	14e62 <_vfprintf_r+0x130>
   15490:	0a714783          	lbu	a5,167(sp)
   15494:	00094883          	lbu	a7,0(s2)
   15498:	9c0795e3          	bnez	a5,14e62 <_vfprintf_r+0x130>
   1549c:	02000793          	li	a5,32
   154a0:	0af103a3          	sb	a5,167(sp)
   154a4:	ba7d                	j	14e62 <_vfprintf_r+0x130>
   154a6:	010cee93          	ori	t4,s9,16
   154aa:	020ef793          	andi	a5,t4,32
   154ae:	58078a63          	beqz	a5,15a42 <_vfprintf_r+0xd10>
   154b2:	47d2                	lw	a5,20(sp)
   154b4:	00778c13          	addi	s8,a5,7
   154b8:	ff8c7c13          	andi	s8,s8,-8
   154bc:	008c0793          	addi	a5,s8,8
   154c0:	ca3e                	sw	a5,20(sp)
   154c2:	000c2b03          	lw	s6,0(s8)
   154c6:	004c2d83          	lw	s11,4(s8)
   154ca:	4785                	li	a5,1
   154cc:	b101                	j	150cc <_vfprintf_r+0x39a>
   154ce:	00094883          	lbu	a7,0(s2)
   154d2:	008cec93          	ori	s9,s9,8
   154d6:	b271                	j	14e62 <_vfprintf_r+0x130>
   154d8:	4752                	lw	a4,20(sp)
   154da:	67a1                	lui	a5,0x8
   154dc:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   154e0:	0af11423          	sh	a5,168(sp)
   154e4:	00470793          	addi	a5,a4,4
   154e8:	ca3e                	sw	a5,20(sp)
   154ea:	67f9                	lui	a5,0x1e
   154ec:	96478793          	addi	a5,a5,-1692 # 1d964 <__clzsi2+0x90>
   154f0:	da3e                	sw	a5,52(sp)
   154f2:	00072b03          	lw	s6,0(a4)
   154f6:	4d81                	li	s11,0
   154f8:	002cee93          	ori	t4,s9,2
   154fc:	4789                	li	a5,2
   154fe:	07800893          	li	a7,120
   15502:	b6e9                	j	150cc <_vfprintf_r+0x39a>
   15504:	020cf793          	andi	a5,s9,32
   15508:	5c078463          	beqz	a5,15ad0 <_vfprintf_r+0xd9e>
   1550c:	47d2                	lw	a5,20(sp)
   1550e:	46b2                	lw	a3,12(sp)
   15510:	439c                	lw	a5,0(a5)
   15512:	41f6d713          	srai	a4,a3,0x1f
   15516:	c394                	sw	a3,0(a5)
   15518:	c3d8                	sw	a4,4(a5)
   1551a:	47d2                	lw	a5,20(sp)
   1551c:	8d4a                	mv	s10,s2
   1551e:	0791                	addi	a5,a5,4
   15520:	ca3e                	sw	a5,20(sp)
   15522:	bcb1                	j	14f7e <_vfprintf_r+0x24c>
   15524:	00094883          	lbu	a7,0(s2)
   15528:	06c00793          	li	a5,108
   1552c:	64f88b63          	beq	a7,a5,15b82 <_vfprintf_r+0xe50>
   15530:	010cec93          	ori	s9,s9,16
   15534:	b23d                	j	14e62 <_vfprintf_r+0x130>
   15536:	00094883          	lbu	a7,0(s2)
   1553a:	06800793          	li	a5,104
   1553e:	62f88b63          	beq	a7,a5,15b74 <_vfprintf_r+0xe42>
   15542:	040cec93          	ori	s9,s9,64
   15546:	ba31                	j	14e62 <_vfprintf_r+0x130>
   15548:	06500713          	li	a4,101
   1554c:	cb175ce3          	bge	a4,a7,15204 <_vfprintf_r+0x4d2>
   15550:	474e                	lw	a4,208(sp)
   15552:	010c                	addi	a1,sp,128
   15554:	0908                	addi	a0,sp,144
   15556:	c93a                	sw	a4,144(sp)
   15558:	475e                	lw	a4,212(sp)
   1555a:	dc32                	sw	a2,56(sp)
   1555c:	c102                	sw	zero,128(sp)
   1555e:	cb3a                	sw	a4,148(sp)
   15560:	476e                	lw	a4,216(sp)
   15562:	c302                	sw	zero,132(sp)
   15564:	c502                	sw	zero,136(sp)
   15566:	cd3a                	sw	a4,152(sp)
   15568:	477e                	lw	a4,220(sp)
   1556a:	c702                	sw	zero,140(sp)
   1556c:	cf3a                	sw	a4,156(sp)
   1556e:	6f7050ef          	jal	1b464 <__eqtf2>
   15572:	5662                	lw	a2,56(sp)
   15574:	36051363          	bnez	a0,158da <_vfprintf_r+0xba8>
   15578:	47ae                	lw	a5,200(sp)
   1557a:	6779                	lui	a4,0x1e
   1557c:	99470713          	addi	a4,a4,-1644 # 1d994 <__clzsi2+0xc0>
   15580:	c018                	sw	a4,0(s0)
   15582:	0605                	addi	a2,a2,1
   15584:	4705                	li	a4,1
   15586:	0785                	addi	a5,a5,1
   15588:	c058                	sw	a4,4(s0)
   1558a:	c7b2                	sw	a2,204(sp)
   1558c:	c5be                	sw	a5,200(sp)
   1558e:	471d                	li	a4,7
   15590:	0421                	addi	s0,s0,8
   15592:	16f74de3          	blt	a4,a5,15f0c <_vfprintf_r+0x11da>
   15596:	57ba                	lw	a5,172(sp)
   15598:	5702                	lw	a4,32(sp)
   1559a:	4ce7db63          	bge	a5,a4,15a70 <_vfprintf_r+0xd3e>
   1559e:	57c2                	lw	a5,48(sp)
   155a0:	5732                	lw	a4,44(sp)
   155a2:	0421                	addi	s0,s0,8
   155a4:	fef42c23          	sw	a5,-8(s0)
   155a8:	47ae                	lw	a5,200(sp)
   155aa:	963a                	add	a2,a2,a4
   155ac:	fee42e23          	sw	a4,-4(s0)
   155b0:	0785                	addi	a5,a5,1
   155b2:	c7b2                	sw	a2,204(sp)
   155b4:	c5be                	sw	a5,200(sp)
   155b6:	471d                	li	a4,7
   155b8:	5cf74c63          	blt	a4,a5,15b90 <_vfprintf_r+0xe5e>
   155bc:	5782                	lw	a5,32(sp)
   155be:	fff78a93          	addi	s5,a5,-1
   155c2:	995054e3          	blez	s5,14f4a <_vfprintf_r+0x218>
   155c6:	6879                	lui	a6,0x1e
   155c8:	cc080813          	addi	a6,a6,-832 # 1dcc0 <zeroes.0>
   155cc:	4741                	li	a4,16
   155ce:	47ae                	lw	a5,200(sp)
   155d0:	4b41                	li	s6,16
   155d2:	4c1d                	li	s8,7
   155d4:	8d42                	mv	s10,a6
   155d6:	01574763          	blt	a4,s5,155e4 <_vfprintf_r+0x8b2>
   155da:	14b0006f          	j	15f24 <_vfprintf_r+0x11f2>
   155de:	1ac1                	addi	s5,s5,-16
   155e0:	155b51e3          	bge	s6,s5,15f22 <_vfprintf_r+0x11f0>
   155e4:	0641                	addi	a2,a2,16
   155e6:	0785                	addi	a5,a5,1
   155e8:	01a42023          	sw	s10,0(s0)
   155ec:	01642223          	sw	s6,4(s0)
   155f0:	c7b2                	sw	a2,204(sp)
   155f2:	c5be                	sw	a5,200(sp)
   155f4:	0421                	addi	s0,s0,8
   155f6:	fefc54e3          	bge	s8,a5,155de <_vfprintf_r+0x8ac>
   155fa:	4522                	lw	a0,8(sp)
   155fc:	01d0                	addi	a2,sp,196
   155fe:	85a6                	mv	a1,s1
   15600:	37c010ef          	jal	1697c <__sprint_r>
   15604:	18051563          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15608:	463e                	lw	a2,204(sp)
   1560a:	47ae                	lw	a5,200(sp)
   1560c:	844e                	mv	s0,s3
   1560e:	bfc1                	j	155de <_vfprintf_r+0x8ac>
   15610:	4705                	li	a4,1
   15612:	00e79463          	bne	a5,a4,1561a <_vfprintf_r+0x8e8>
   15616:	0f20106f          	j	16708 <_vfprintf_r+0x19d6>
   1561a:	4709                	li	a4,2
   1561c:	8ee6                	mv	t4,s9
   1561e:	cee79de3          	bne	a5,a4,15318 <_vfprintf_r+0x5e6>
   15622:	56d2                	lw	a3,52(sp)
   15624:	19010d13          	addi	s10,sp,400
   15628:	00fb7793          	andi	a5,s6,15
   1562c:	97b6                	add	a5,a5,a3
   1562e:	0007c703          	lbu	a4,0(a5)
   15632:	004b5b13          	srli	s6,s6,0x4
   15636:	01cd9793          	slli	a5,s11,0x1c
   1563a:	0167eb33          	or	s6,a5,s6
   1563e:	004ddd93          	srli	s11,s11,0x4
   15642:	feed0fa3          	sb	a4,-1(s10)
   15646:	01bb67b3          	or	a5,s6,s11
   1564a:	1d7d                	addi	s10,s10,-1
   1564c:	fff1                	bnez	a5,15628 <_vfprintf_r+0x8f6>
   1564e:	0b1c                	addi	a5,sp,400
   15650:	41a78b33          	sub	s6,a5,s10
   15654:	8cf6                	mv	s9,t4
   15656:	bc05                	j	15086 <_vfprintf_r+0x354>
   15658:	41bb8c33          	sub	s8,s7,s11
   1565c:	8d8052e3          	blez	s8,14f20 <_vfprintf_r+0x1ee>
   15660:	6879                	lui	a6,0x1e
   15662:	4541                	li	a0,16
   15664:	45ae                	lw	a1,200(sp)
   15666:	cc080813          	addi	a6,a6,-832 # 1dcc0 <zeroes.0>
   1566a:	05855f63          	bge	a0,s8,156c8 <_vfprintf_r+0x996>
   1566e:	dc4a                	sw	s2,56(sp)
   15670:	87a2                	mv	a5,s0
   15672:	4ec1                	li	t4,16
   15674:	8462                	mv	s0,s8
   15676:	4f9d                	li	t6,7
   15678:	8c5a                	mv	s8,s6
   1567a:	8942                	mv	s2,a6
   1567c:	8b56                	mv	s6,s5
   1567e:	8ac6                	mv	s5,a7
   15680:	a021                	j	15688 <_vfprintf_r+0x956>
   15682:	1441                	addi	s0,s0,-16
   15684:	028edb63          	bge	t4,s0,156ba <_vfprintf_r+0x988>
   15688:	0641                	addi	a2,a2,16
   1568a:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   1568c:	0127a023          	sw	s2,0(a5)
   15690:	01d7a223          	sw	t4,4(a5)
   15694:	c7b2                	sw	a2,204(sp)
   15696:	c5ae                	sw	a1,200(sp)
   15698:	07a1                	addi	a5,a5,8
   1569a:	febfd4e3          	bge	t6,a1,15682 <_vfprintf_r+0x950>
   1569e:	4522                	lw	a0,8(sp)
   156a0:	01d0                	addi	a2,sp,196
   156a2:	85a6                	mv	a1,s1
   156a4:	2d8010ef          	jal	1697c <__sprint_r>
   156a8:	e17d                	bnez	a0,1578e <_vfprintf_r+0xa5c>
   156aa:	4ec1                	li	t4,16
   156ac:	1441                	addi	s0,s0,-16
   156ae:	463e                	lw	a2,204(sp)
   156b0:	45ae                	lw	a1,200(sp)
   156b2:	87ce                	mv	a5,s3
   156b4:	4f9d                	li	t6,7
   156b6:	fc8ec9e3          	blt	t4,s0,15688 <_vfprintf_r+0x956>
   156ba:	884a                	mv	a6,s2
   156bc:	5962                	lw	s2,56(sp)
   156be:	88d6                	mv	a7,s5
   156c0:	8ada                	mv	s5,s6
   156c2:	8b62                	mv	s6,s8
   156c4:	8c22                	mv	s8,s0
   156c6:	843e                	mv	s0,a5
   156c8:	9662                	add	a2,a2,s8
   156ca:	0585                	addi	a1,a1,1
   156cc:	01042023          	sw	a6,0(s0)
   156d0:	01842223          	sw	s8,4(s0)
   156d4:	c7b2                	sw	a2,204(sp)
   156d6:	c5ae                	sw	a1,200(sp)
   156d8:	471d                	li	a4,7
   156da:	0421                	addi	s0,s0,8
   156dc:	84b752e3          	bge	a4,a1,14f20 <_vfprintf_r+0x1ee>
   156e0:	4522                	lw	a0,8(sp)
   156e2:	01d0                	addi	a2,sp,196
   156e4:	85a6                	mv	a1,s1
   156e6:	dc46                	sw	a7,56(sp)
   156e8:	294010ef          	jal	1697c <__sprint_r>
   156ec:	e14d                	bnez	a0,1578e <_vfprintf_r+0xa5c>
   156ee:	463e                	lw	a2,204(sp)
   156f0:	58e2                	lw	a7,56(sp)
   156f2:	844e                	mv	s0,s3
   156f4:	82dff06f          	j	14f20 <_vfprintf_r+0x1ee>
   156f8:	6879                	lui	a6,0x1e
   156fa:	4741                	li	a4,16
   156fc:	45ae                	lw	a1,200(sp)
   156fe:	cc080813          	addi	a6,a6,-832 # 1dcc0 <zeroes.0>
   15702:	05575763          	bge	a4,s5,15750 <_vfprintf_r+0xa1e>
   15706:	87a2                	mv	a5,s0
   15708:	4741                	li	a4,16
   1570a:	8456                	mv	s0,s5
   1570c:	4c1d                	li	s8,7
   1570e:	dc46                	sw	a7,56(sp)
   15710:	8ad2                	mv	s5,s4
   15712:	a021                	j	1571a <_vfprintf_r+0x9e8>
   15714:	1441                	addi	s0,s0,-16
   15716:	02875963          	bge	a4,s0,15748 <_vfprintf_r+0xa16>
   1571a:	0641                	addi	a2,a2,16
   1571c:	0585                	addi	a1,a1,1
   1571e:	0147a023          	sw	s4,0(a5)
   15722:	c3d8                	sw	a4,4(a5)
   15724:	c7b2                	sw	a2,204(sp)
   15726:	c5ae                	sw	a1,200(sp)
   15728:	07a1                	addi	a5,a5,8
   1572a:	febc55e3          	bge	s8,a1,15714 <_vfprintf_r+0x9e2>
   1572e:	4522                	lw	a0,8(sp)
   15730:	01d0                	addi	a2,sp,196
   15732:	85a6                	mv	a1,s1
   15734:	248010ef          	jal	1697c <__sprint_r>
   15738:	e939                	bnez	a0,1578e <_vfprintf_r+0xa5c>
   1573a:	4741                	li	a4,16
   1573c:	1441                	addi	s0,s0,-16
   1573e:	463e                	lw	a2,204(sp)
   15740:	45ae                	lw	a1,200(sp)
   15742:	87ce                	mv	a5,s3
   15744:	fc874be3          	blt	a4,s0,1571a <_vfprintf_r+0x9e8>
   15748:	58e2                	lw	a7,56(sp)
   1574a:	8856                	mv	a6,s5
   1574c:	8aa2                	mv	s5,s0
   1574e:	843e                	mv	s0,a5
   15750:	9656                	add	a2,a2,s5
   15752:	0585                	addi	a1,a1,1
   15754:	01042023          	sw	a6,0(s0)
   15758:	01542223          	sw	s5,4(s0)
   1575c:	c7b2                	sw	a2,204(sp)
   1575e:	c5ae                	sw	a1,200(sp)
   15760:	471d                	li	a4,7
   15762:	0421                	addi	s0,s0,8
   15764:	fcb75263          	bge	a4,a1,14f28 <_vfprintf_r+0x1f6>
   15768:	4522                	lw	a0,8(sp)
   1576a:	01d0                	addi	a2,sp,196
   1576c:	85a6                	mv	a1,s1
   1576e:	dc46                	sw	a7,56(sp)
   15770:	20c010ef          	jal	1697c <__sprint_r>
   15774:	ed09                	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15776:	463e                	lw	a2,204(sp)
   15778:	58e2                	lw	a7,56(sp)
   1577a:	844e                	mv	s0,s3
   1577c:	facff06f          	j	14f28 <_vfprintf_r+0x1f6>
   15780:	4522                	lw	a0,8(sp)
   15782:	01d0                	addi	a2,sp,196
   15784:	85a6                	mv	a1,s1
   15786:	1f6010ef          	jal	1697c <__sprint_r>
   1578a:	fe050163          	beqz	a0,14f6c <_vfprintf_r+0x23a>
   1578e:	45c2                	lw	a1,16(sp)
   15790:	fe058f63          	beqz	a1,14f8e <_vfprintf_r+0x25c>
   15794:	4522                	lw	a0,8(sp)
   15796:	dc7fe0ef          	jal	1455c <_free_r>
   1579a:	ff4ff06f          	j	14f8e <_vfprintf_r+0x25c>
   1579e:	8ee6                	mv	t4,s9
   157a0:	b6b5                	j	1530c <_vfprintf_r+0x5da>
   157a2:	6879                	lui	a6,0x1e
   157a4:	4541                	li	a0,16
   157a6:	45ae                	lw	a1,200(sp)
   157a8:	cd080c13          	addi	s8,a6,-816 # 1dcd0 <blanks.1>
   157ac:	06e55363          	bge	a0,a4,15812 <_vfprintf_r+0xae0>
   157b0:	c8ca                	sw	s2,80(sp)
   157b2:	87a2                	mv	a5,s0
   157b4:	8962                	mv	s2,s8
   157b6:	4ec1                	li	t4,16
   157b8:	8c5a                	mv	s8,s6
   157ba:	439d                	li	t2,7
   157bc:	8b56                	mv	s6,s5
   157be:	dc16                	sw	t0,56(sp)
   157c0:	c6fe                	sw	t6,76(sp)
   157c2:	843a                	mv	s0,a4
   157c4:	8ac6                	mv	s5,a7
   157c6:	a021                	j	157ce <_vfprintf_r+0xa9c>
   157c8:	1441                	addi	s0,s0,-16
   157ca:	028edb63          	bge	t4,s0,15800 <_vfprintf_r+0xace>
   157ce:	0641                	addi	a2,a2,16
   157d0:	0585                	addi	a1,a1,1
   157d2:	0127a023          	sw	s2,0(a5)
   157d6:	01d7a223          	sw	t4,4(a5)
   157da:	c7b2                	sw	a2,204(sp)
   157dc:	c5ae                	sw	a1,200(sp)
   157de:	07a1                	addi	a5,a5,8
   157e0:	feb3d4e3          	bge	t2,a1,157c8 <_vfprintf_r+0xa96>
   157e4:	4522                	lw	a0,8(sp)
   157e6:	01d0                	addi	a2,sp,196
   157e8:	85a6                	mv	a1,s1
   157ea:	192010ef          	jal	1697c <__sprint_r>
   157ee:	f145                	bnez	a0,1578e <_vfprintf_r+0xa5c>
   157f0:	4ec1                	li	t4,16
   157f2:	1441                	addi	s0,s0,-16
   157f4:	463e                	lw	a2,204(sp)
   157f6:	45ae                	lw	a1,200(sp)
   157f8:	87ce                	mv	a5,s3
   157fa:	439d                	li	t2,7
   157fc:	fc8ec9e3          	blt	t4,s0,157ce <_vfprintf_r+0xa9c>
   15800:	88d6                	mv	a7,s5
   15802:	52e2                	lw	t0,56(sp)
   15804:	8ada                	mv	s5,s6
   15806:	4fb6                	lw	t6,76(sp)
   15808:	8b62                	mv	s6,s8
   1580a:	8c4a                	mv	s8,s2
   1580c:	4946                	lw	s2,80(sp)
   1580e:	8722                	mv	a4,s0
   15810:	843e                	mv	s0,a5
   15812:	963a                	add	a2,a2,a4
   15814:	0585                	addi	a1,a1,1
   15816:	c058                	sw	a4,4(s0)
   15818:	01842023          	sw	s8,0(s0)
   1581c:	c7b2                	sw	a2,204(sp)
   1581e:	c5ae                	sw	a1,200(sp)
   15820:	471d                	li	a4,7
   15822:	0421                	addi	s0,s0,8
   15824:	eab75a63          	bge	a4,a1,14ed8 <_vfprintf_r+0x1a6>
   15828:	4522                	lw	a0,8(sp)
   1582a:	01d0                	addi	a2,sp,196
   1582c:	85a6                	mv	a1,s1
   1582e:	c8c6                	sw	a7,80(sp)
   15830:	c6fe                	sw	t6,76(sp)
   15832:	dc16                	sw	t0,56(sp)
   15834:	148010ef          	jal	1697c <__sprint_r>
   15838:	f939                	bnez	a0,1578e <_vfprintf_r+0xa5c>
   1583a:	463e                	lw	a2,204(sp)
   1583c:	48c6                	lw	a7,80(sp)
   1583e:	4fb6                	lw	t6,76(sp)
   15840:	52e2                	lw	t0,56(sp)
   15842:	844e                	mv	s0,s3
   15844:	e94ff06f          	j	14ed8 <_vfprintf_r+0x1a6>
   15848:	4522                	lw	a0,8(sp)
   1584a:	01d0                	addi	a2,sp,196
   1584c:	85a6                	mv	a1,s1
   1584e:	c6c6                	sw	a7,76(sp)
   15850:	dc7e                	sw	t6,56(sp)
   15852:	12a010ef          	jal	1697c <__sprint_r>
   15856:	fd05                	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15858:	463e                	lw	a2,204(sp)
   1585a:	48b6                	lw	a7,76(sp)
   1585c:	5fe2                	lw	t6,56(sp)
   1585e:	844e                	mv	s0,s3
   15860:	eb8ff06f          	j	14f18 <_vfprintf_r+0x1e6>
   15864:	6879                	lui	a6,0x1e
   15866:	4741                	li	a4,16
   15868:	47ae                	lw	a5,200(sp)
   1586a:	cd080c13          	addi	s8,a6,-816 # 1dcd0 <blanks.1>
   1586e:	05575163          	bge	a4,s5,158b0 <_vfprintf_r+0xb7e>
   15872:	4d22                	lw	s10,8(sp)
   15874:	4b41                	li	s6,16
   15876:	4c9d                	li	s9,7
   15878:	a021                	j	15880 <_vfprintf_r+0xb4e>
   1587a:	1ac1                	addi	s5,s5,-16
   1587c:	035b5a63          	bge	s6,s5,158b0 <_vfprintf_r+0xb7e>
   15880:	0641                	addi	a2,a2,16
   15882:	0785                	addi	a5,a5,1
   15884:	01842023          	sw	s8,0(s0)
   15888:	01642223          	sw	s6,4(s0)
   1588c:	c7b2                	sw	a2,204(sp)
   1588e:	c5be                	sw	a5,200(sp)
   15890:	0421                	addi	s0,s0,8
   15892:	fefcd4e3          	bge	s9,a5,1587a <_vfprintf_r+0xb48>
   15896:	01d0                	addi	a2,sp,196
   15898:	85a6                	mv	a1,s1
   1589a:	856a                	mv	a0,s10
   1589c:	0e0010ef          	jal	1697c <__sprint_r>
   158a0:	ee0517e3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   158a4:	1ac1                	addi	s5,s5,-16
   158a6:	463e                	lw	a2,204(sp)
   158a8:	47ae                	lw	a5,200(sp)
   158aa:	844e                	mv	s0,s3
   158ac:	fd5b4ae3          	blt	s6,s5,15880 <_vfprintf_r+0xb4e>
   158b0:	9656                	add	a2,a2,s5
   158b2:	0785                	addi	a5,a5,1
   158b4:	01842023          	sw	s8,0(s0)
   158b8:	01542223          	sw	s5,4(s0)
   158bc:	c7b2                	sw	a2,204(sp)
   158be:	c5be                	sw	a5,200(sp)
   158c0:	471d                	li	a4,7
   158c2:	e8f75c63          	bge	a4,a5,14f5a <_vfprintf_r+0x228>
   158c6:	4522                	lw	a0,8(sp)
   158c8:	01d0                	addi	a2,sp,196
   158ca:	85a6                	mv	a1,s1
   158cc:	0b0010ef          	jal	1697c <__sprint_r>
   158d0:	ea051fe3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   158d4:	463e                	lw	a2,204(sp)
   158d6:	e84ff06f          	j	14f5a <_vfprintf_r+0x228>
   158da:	553a                	lw	a0,172(sp)
   158dc:	5ca05e63          	blez	a0,15eb8 <_vfprintf_r+0x1186>
   158e0:	47f2                	lw	a5,28(sp)
   158e2:	5702                	lw	a4,32(sp)
   158e4:	8abe                	mv	s5,a5
   158e6:	22f74163          	blt	a4,a5,15b08 <_vfprintf_r+0xdd6>
   158ea:	01505f63          	blez	s5,15908 <_vfprintf_r+0xbd6>
   158ee:	472e                	lw	a4,200(sp)
   158f0:	9656                	add	a2,a2,s5
   158f2:	01a42023          	sw	s10,0(s0)
   158f6:	0705                	addi	a4,a4,1
   158f8:	01542223          	sw	s5,4(s0)
   158fc:	c7b2                	sw	a2,204(sp)
   158fe:	c5ba                	sw	a4,200(sp)
   15900:	459d                	li	a1,7
   15902:	0421                	addi	s0,s0,8
   15904:	14e5c5e3          	blt	a1,a4,1624e <_vfprintf_r+0x151c>
   15908:	fffac713          	not	a4,s5
   1590c:	47f2                	lw	a5,28(sp)
   1590e:	877d                	srai	a4,a4,0x1f
   15910:	00eafab3          	and	s5,s5,a4
   15914:	41578ab3          	sub	s5,a5,s5
   15918:	2b504163          	bgtz	s5,15bba <_vfprintf_r+0xe88>
   1591c:	47f2                	lw	a5,28(sp)
   1591e:	400cf713          	andi	a4,s9,1024
   15922:	00fd0c33          	add	s8,s10,a5
   15926:	7a071e63          	bnez	a4,160e2 <_vfprintf_r+0x13b0>
   1592a:	5aba                	lw	s5,172(sp)
   1592c:	5782                	lw	a5,32(sp)
   1592e:	2cfaca63          	blt	s5,a5,15c02 <_vfprintf_r+0xed0>
   15932:	001cf713          	andi	a4,s9,1
   15936:	2c071663          	bnez	a4,15c02 <_vfprintf_r+0xed0>
   1593a:	5702                	lw	a4,32(sp)
   1593c:	00ed07b3          	add	a5,s10,a4
   15940:	41570ab3          	sub	s5,a4,s5
   15944:	41878b33          	sub	s6,a5,s8
   15948:	016ad363          	bge	s5,s6,1594e <_vfprintf_r+0xc1c>
   1594c:	8b56                	mv	s6,s5
   1594e:	01605f63          	blez	s6,1596c <_vfprintf_r+0xc3a>
   15952:	47ae                	lw	a5,200(sp)
   15954:	965a                	add	a2,a2,s6
   15956:	01842023          	sw	s8,0(s0)
   1595a:	0785                	addi	a5,a5,1
   1595c:	01642223          	sw	s6,4(s0)
   15960:	c7b2                	sw	a2,204(sp)
   15962:	c5be                	sw	a5,200(sp)
   15964:	471d                	li	a4,7
   15966:	0421                	addi	s0,s0,8
   15968:	4cf74de3          	blt	a4,a5,16642 <_vfprintf_r+0x1910>
   1596c:	fffb4793          	not	a5,s6
   15970:	87fd                	srai	a5,a5,0x1f
   15972:	00fb7b33          	and	s6,s6,a5
   15976:	416a8ab3          	sub	s5,s5,s6
   1597a:	dd505863          	blez	s5,14f4a <_vfprintf_r+0x218>
   1597e:	6879                	lui	a6,0x1e
   15980:	cc080813          	addi	a6,a6,-832 # 1dcc0 <zeroes.0>
   15984:	4741                	li	a4,16
   15986:	47ae                	lw	a5,200(sp)
   15988:	4b41                	li	s6,16
   1598a:	4c1d                	li	s8,7
   1598c:	8d42                	mv	s10,a6
   1598e:	01574663          	blt	a4,s5,1599a <_vfprintf_r+0xc68>
   15992:	ab49                	j	15f24 <_vfprintf_r+0x11f2>
   15994:	1ac1                	addi	s5,s5,-16
   15996:	595b5663          	bge	s6,s5,15f22 <_vfprintf_r+0x11f0>
   1599a:	0641                	addi	a2,a2,16
   1599c:	0785                	addi	a5,a5,1
   1599e:	01a42023          	sw	s10,0(s0)
   159a2:	01642223          	sw	s6,4(s0)
   159a6:	c7b2                	sw	a2,204(sp)
   159a8:	c5be                	sw	a5,200(sp)
   159aa:	0421                	addi	s0,s0,8
   159ac:	fefc54e3          	bge	s8,a5,15994 <_vfprintf_r+0xc62>
   159b0:	4522                	lw	a0,8(sp)
   159b2:	01d0                	addi	a2,sp,196
   159b4:	85a6                	mv	a1,s1
   159b6:	7c7000ef          	jal	1697c <__sprint_r>
   159ba:	dc051ae3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   159be:	463e                	lw	a2,204(sp)
   159c0:	47ae                	lw	a5,200(sp)
   159c2:	844e                	mv	s0,s3
   159c4:	bfc1                	j	15994 <_vfprintf_r+0xc62>
   159c6:	001cf593          	andi	a1,s9,1
   159ca:	840599e3          	bnez	a1,1521c <_vfprintf_r+0x4ea>
   159ce:	c058                	sw	a4,4(s0)
   159d0:	c7e2                	sw	s8,204(sp)
   159d2:	c5d6                	sw	s5,200(sp)
   159d4:	479d                	li	a5,7
   159d6:	8b57dbe3          	bge	a5,s5,1528c <_vfprintf_r+0x55a>
   159da:	4522                	lw	a0,8(sp)
   159dc:	01d0                	addi	a2,sp,196
   159de:	85a6                	mv	a1,s1
   159e0:	79d000ef          	jal	1697c <__sprint_r>
   159e4:	da0515e3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   159e8:	4c3e                	lw	s8,204(sp)
   159ea:	4aae                	lw	s5,200(sp)
   159ec:	8b4e                	mv	s6,s3
   159ee:	b879                	j	1528c <_vfprintf_r+0x55a>
   159f0:	5702                	lw	a4,32(sp)
   159f2:	4785                	li	a5,1
   159f4:	88e7dce3          	bge	a5,a4,1528c <_vfprintf_r+0x55a>
   159f8:	6879                	lui	a6,0x1e
   159fa:	47c5                	li	a5,17
   159fc:	cc080813          	addi	a6,a6,-832 # 1dcc0 <zeroes.0>
   15a00:	60e7d863          	bge	a5,a4,16010 <_vfprintf_r+0x12de>
   15a04:	ce4a                	sw	s2,28(sp)
   15a06:	47c1                	li	a5,16
   15a08:	4d1d                	li	s10,7
   15a0a:	8942                	mv	s2,a6
   15a0c:	a021                	j	15a14 <_vfprintf_r+0xce2>
   15a0e:	1441                	addi	s0,s0,-16
   15a10:	5e87de63          	bge	a5,s0,1600c <_vfprintf_r+0x12da>
   15a14:	0c41                	addi	s8,s8,16
   15a16:	0a85                	addi	s5,s5,1
   15a18:	012b2023          	sw	s2,0(s6)
   15a1c:	00fb2223          	sw	a5,4(s6)
   15a20:	c7e2                	sw	s8,204(sp)
   15a22:	c5d6                	sw	s5,200(sp)
   15a24:	0b21                	addi	s6,s6,8
   15a26:	ff5d54e3          	bge	s10,s5,15a0e <_vfprintf_r+0xcdc>
   15a2a:	4522                	lw	a0,8(sp)
   15a2c:	01d0                	addi	a2,sp,196
   15a2e:	85a6                	mv	a1,s1
   15a30:	74d000ef          	jal	1697c <__sprint_r>
   15a34:	d4051de3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15a38:	4c3e                	lw	s8,204(sp)
   15a3a:	4aae                	lw	s5,200(sp)
   15a3c:	8b4e                	mv	s6,s3
   15a3e:	47c1                	li	a5,16
   15a40:	b7f9                	j	15a0e <_vfprintf_r+0xcdc>
   15a42:	4752                	lw	a4,20(sp)
   15a44:	010ef793          	andi	a5,t4,16
   15a48:	00072b03          	lw	s6,0(a4)
   15a4c:	0711                	addi	a4,a4,4
   15a4e:	ca3a                	sw	a4,20(sp)
   15a50:	ef9d                	bnez	a5,15a8e <_vfprintf_r+0xd5c>
   15a52:	040ef793          	andi	a5,t4,64
   15a56:	c79d                	beqz	a5,15a84 <_vfprintf_r+0xd52>
   15a58:	0b42                	slli	s6,s6,0x10
   15a5a:	010b5b13          	srli	s6,s6,0x10
   15a5e:	4d81                	li	s11,0
   15a60:	4785                	li	a5,1
   15a62:	e6aff06f          	j	150cc <_vfprintf_r+0x39a>
   15a66:	4b01                	li	s6,0
   15a68:	19010d13          	addi	s10,sp,400
   15a6c:	e1aff06f          	j	15086 <_vfprintf_r+0x354>
   15a70:	001cf793          	andi	a5,s9,1
   15a74:	cc078b63          	beqz	a5,14f4a <_vfprintf_r+0x218>
   15a78:	b61d                	j	1559e <_vfprintf_r+0x86c>
   15a7a:	00094883          	lbu	a7,0(s2)
   15a7e:	ca3e                	sw	a5,20(sp)
   15a80:	be2ff06f          	j	14e62 <_vfprintf_r+0x130>
   15a84:	200ef793          	andi	a5,t4,512
   15a88:	c399                	beqz	a5,15a8e <_vfprintf_r+0xd5c>
   15a8a:	0ffb7b13          	zext.b	s6,s6
   15a8e:	4d81                	li	s11,0
   15a90:	4785                	li	a5,1
   15a92:	e3aff06f          	j	150cc <_vfprintf_r+0x39a>
   15a96:	200cf793          	andi	a5,s9,512
   15a9a:	7e079563          	bnez	a5,16284 <_vfprintf_r+0x1552>
   15a9e:	4d81                	li	s11,0
   15aa0:	e26ff06f          	j	150c6 <_vfprintf_r+0x394>
   15aa4:	200cf793          	andi	a5,s9,512
   15aa8:	7c079663          	bnez	a5,16274 <_vfprintf_r+0x1542>
   15aac:	41fb5d93          	srai	s11,s6,0x1f
   15ab0:	87ee                	mv	a5,s11
   15ab2:	db2ff06f          	j	15064 <_vfprintf_r+0x332>
   15ab6:	57f2                	lw	a5,60(sp)
   15ab8:	00094883          	lbu	a7,0(s2)
   15abc:	ba078363          	beqz	a5,14e62 <_vfprintf_r+0x130>
   15ac0:	0007c783          	lbu	a5,0(a5)
   15ac4:	b8078f63          	beqz	a5,14e62 <_vfprintf_r+0x130>
   15ac8:	400cec93          	ori	s9,s9,1024
   15acc:	b96ff06f          	j	14e62 <_vfprintf_r+0x130>
   15ad0:	010cf793          	andi	a5,s9,16
   15ad4:	4c079063          	bnez	a5,15f94 <_vfprintf_r+0x1262>
   15ad8:	040cf793          	andi	a5,s9,64
   15adc:	78079563          	bnez	a5,16266 <_vfprintf_r+0x1534>
   15ae0:	200cfe13          	andi	t3,s9,512
   15ae4:	4a0e0863          	beqz	t3,15f94 <_vfprintf_r+0x1262>
   15ae8:	47d2                	lw	a5,20(sp)
   15aea:	4732                	lw	a4,12(sp)
   15aec:	439c                	lw	a5,0(a5)
   15aee:	00e78023          	sb	a4,0(a5)
   15af2:	b425                	j	1551a <_vfprintf_r+0x7e8>
   15af4:	47d2                	lw	a5,20(sp)
   15af6:	4398                	lw	a4,0(a5)
   15af8:	0791                	addi	a5,a5,4
   15afa:	ca3e                	sw	a5,20(sp)
   15afc:	430c                	lw	a1,0(a4)
   15afe:	4350                	lw	a2,4(a4)
   15b00:	4714                	lw	a3,8(a4)
   15b02:	4758                	lw	a4,12(a4)
   15b04:	e52ff06f          	j	15156 <_vfprintf_r+0x424>
   15b08:	8aba                	mv	s5,a4
   15b0a:	df5042e3          	bgtz	s5,158ee <_vfprintf_r+0xbbc>
   15b0e:	bbed                	j	15908 <_vfprintf_r+0xbd6>
   15b10:	5afd                	li	s5,-1
   15b12:	8936                	mv	s2,a3
   15b14:	b50ff06f          	j	14e64 <_vfprintf_r+0x132>
   15b18:	67f9                	lui	a5,0x1e
   15b1a:	97878793          	addi	a5,a5,-1672 # 1d978 <__clzsi2+0xa4>
   15b1e:	da3e                	sw	a5,52(sp)
   15b20:	020cf793          	andi	a5,s9,32
   15b24:	26078263          	beqz	a5,15d88 <_vfprintf_r+0x1056>
   15b28:	47d2                	lw	a5,20(sp)
   15b2a:	00778c13          	addi	s8,a5,7
   15b2e:	ff8c7c13          	andi	s8,s8,-8
   15b32:	000c2b03          	lw	s6,0(s8)
   15b36:	004c2d83          	lw	s11,4(s8)
   15b3a:	008c0793          	addi	a5,s8,8
   15b3e:	ca3e                	sw	a5,20(sp)
   15b40:	001cf793          	andi	a5,s9,1
   15b44:	cf81                	beqz	a5,15b5c <_vfprintf_r+0xe2a>
   15b46:	01bb67b3          	or	a5,s6,s11
   15b4a:	cb89                	beqz	a5,15b5c <_vfprintf_r+0xe2a>
   15b4c:	03000793          	li	a5,48
   15b50:	0af10423          	sb	a5,168(sp)
   15b54:	0b1104a3          	sb	a7,169(sp)
   15b58:	002cec93          	ori	s9,s9,2
   15b5c:	bffcfe93          	andi	t4,s9,-1025
   15b60:	4789                	li	a5,2
   15b62:	d6aff06f          	j	150cc <_vfprintf_r+0x39a>
   15b66:	8ee6                	mv	t4,s9
   15b68:	b289                	j	154aa <_vfprintf_r+0x778>
   15b6a:	67f9                	lui	a5,0x1e
   15b6c:	96478793          	addi	a5,a5,-1692 # 1d964 <__clzsi2+0x90>
   15b70:	da3e                	sw	a5,52(sp)
   15b72:	b77d                	j	15b20 <_vfprintf_r+0xdee>
   15b74:	00194883          	lbu	a7,1(s2)
   15b78:	200cec93          	ori	s9,s9,512
   15b7c:	0905                	addi	s2,s2,1
   15b7e:	ae4ff06f          	j	14e62 <_vfprintf_r+0x130>
   15b82:	00194883          	lbu	a7,1(s2)
   15b86:	020cec93          	ori	s9,s9,32
   15b8a:	0905                	addi	s2,s2,1
   15b8c:	ad6ff06f          	j	14e62 <_vfprintf_r+0x130>
   15b90:	4522                	lw	a0,8(sp)
   15b92:	01d0                	addi	a2,sp,196
   15b94:	85a6                	mv	a1,s1
   15b96:	5e7000ef          	jal	1697c <__sprint_r>
   15b9a:	be051ae3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15b9e:	463e                	lw	a2,204(sp)
   15ba0:	844e                	mv	s0,s3
   15ba2:	bc29                	j	155bc <_vfprintf_r+0x88a>
   15ba4:	4799                	li	a5,6
   15ba6:	8b56                	mv	s6,s5
   15ba8:	6b57ed63          	bltu	a5,s5,16262 <_vfprintf_r+0x1530>
   15bac:	67f9                	lui	a5,0x1e
   15bae:	8dda                	mv	s11,s6
   15bb0:	ca62                	sw	s8,20(sp)
   15bb2:	98c78d13          	addi	s10,a5,-1652 # 1d98c <__clzsi2+0xb8>
   15bb6:	afcff06f          	j	14eb2 <_vfprintf_r+0x180>
   15bba:	6879                	lui	a6,0x1e
   15bbc:	45c1                	li	a1,16
   15bbe:	472e                	lw	a4,200(sp)
   15bc0:	cc080813          	addi	a6,a6,-832 # 1dcc0 <zeroes.0>
   15bc4:	4755db63          	bge	a1,s5,1603a <_vfprintf_r+0x1308>
   15bc8:	87a2                	mv	a5,s0
   15bca:	4c41                	li	s8,16
   15bcc:	4b1d                	li	s6,7
   15bce:	8442                	mv	s0,a6
   15bd0:	a021                	j	15bd8 <_vfprintf_r+0xea6>
   15bd2:	1ac1                	addi	s5,s5,-16
   15bd4:	475c5163          	bge	s8,s5,16036 <_vfprintf_r+0x1304>
   15bd8:	0641                	addi	a2,a2,16
   15bda:	0705                	addi	a4,a4,1
   15bdc:	c380                	sw	s0,0(a5)
   15bde:	0187a223          	sw	s8,4(a5)
   15be2:	c7b2                	sw	a2,204(sp)
   15be4:	c5ba                	sw	a4,200(sp)
   15be6:	07a1                	addi	a5,a5,8
   15be8:	feeb55e3          	bge	s6,a4,15bd2 <_vfprintf_r+0xea0>
   15bec:	4522                	lw	a0,8(sp)
   15bee:	01d0                	addi	a2,sp,196
   15bf0:	85a6                	mv	a1,s1
   15bf2:	58b000ef          	jal	1697c <__sprint_r>
   15bf6:	b8051ce3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15bfa:	463e                	lw	a2,204(sp)
   15bfc:	472e                	lw	a4,200(sp)
   15bfe:	87ce                	mv	a5,s3
   15c00:	bfc9                	j	15bd2 <_vfprintf_r+0xea0>
   15c02:	5742                	lw	a4,48(sp)
   15c04:	57b2                	lw	a5,44(sp)
   15c06:	459d                	li	a1,7
   15c08:	c018                	sw	a4,0(s0)
   15c0a:	472e                	lw	a4,200(sp)
   15c0c:	963e                	add	a2,a2,a5
   15c0e:	c05c                	sw	a5,4(s0)
   15c10:	0705                	addi	a4,a4,1
   15c12:	c7b2                	sw	a2,204(sp)
   15c14:	c5ba                	sw	a4,200(sp)
   15c16:	0421                	addi	s0,s0,8
   15c18:	d2e5d1e3          	bge	a1,a4,1593a <_vfprintf_r+0xc08>
   15c1c:	4522                	lw	a0,8(sp)
   15c1e:	01d0                	addi	a2,sp,196
   15c20:	85a6                	mv	a1,s1
   15c22:	55b000ef          	jal	1697c <__sprint_r>
   15c26:	b60514e3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15c2a:	5aba                	lw	s5,172(sp)
   15c2c:	463e                	lw	a2,204(sp)
   15c2e:	844e                	mv	s0,s3
   15c30:	b329                	j	1593a <_vfprintf_r+0xc08>
   15c32:	07800793          	li	a5,120
   15c36:	03000713          	li	a4,48
   15c3a:	0ae10423          	sb	a4,168(sp)
   15c3e:	0af104a3          	sb	a5,169(sp)
   15c42:	06300713          	li	a4,99
   15c46:	c802                	sw	zero,16(sp)
   15c48:	002cec93          	ori	s9,s9,2
   15c4c:	12c10d13          	addi	s10,sp,300
   15c50:	d5575c63          	bge	a4,s5,151a8 <_vfprintf_r+0x476>
   15c54:	4522                	lw	a0,8(sp)
   15c56:	001a8593          	addi	a1,s5,1
   15c5a:	c846                	sw	a7,16(sp)
   15c5c:	b29fe0ef          	jal	14784 <_malloc_r>
   15c60:	48c2                	lw	a7,16(sp)
   15c62:	8d2a                	mv	s10,a0
   15c64:	460502e3          	beqz	a0,168c8 <_vfprintf_r+0x1b96>
   15c68:	c82a                	sw	a0,16(sp)
   15c6a:	d3eff06f          	j	151a8 <_vfprintf_r+0x476>
   15c6e:	4522                	lw	a0,8(sp)
   15c70:	09010b13          	addi	s6,sp,144
   15c74:	1178                	addi	a4,sp,172
   15c76:	0bc10813          	addi	a6,sp,188
   15c7a:	191c                	addi	a5,sp,176
   15c7c:	86d6                	mv	a3,s5
   15c7e:	4609                	li	a2,2
   15c80:	85da                	mv	a1,s6
   15c82:	d446                	sw	a7,40(sp)
   15c84:	c97e                	sw	t6,144(sp)
   15c86:	d27e                	sw	t6,36(sp)
   15c88:	cb7a                	sw	t5,148(sp)
   15c8a:	d07a                	sw	t5,32(sp)
   15c8c:	cd76                	sw	t4,152(sp)
   15c8e:	ce76                	sw	t4,28(sp)
   15c90:	cf62                	sw	s8,156(sp)
   15c92:	30b010ef          	jal	1779c <_ldtoa_r>
   15c96:	001cf713          	andi	a4,s9,1
   15c9a:	4ef2                	lw	t4,28(sp)
   15c9c:	5f02                	lw	t5,32(sp)
   15c9e:	5f92                	lw	t6,36(sp)
   15ca0:	58a2                	lw	a7,40(sp)
   15ca2:	8d2a                	mv	s10,a0
   15ca4:	62071163          	bnez	a4,162c6 <_vfprintf_r+0x1594>
   15ca8:	57ba                	lw	a5,172(sp)
   15caa:	ce3e                	sw	a5,28(sp)
   15cac:	57fa                	lw	a5,188(sp)
   15cae:	8f89                	sub	a5,a5,a0
   15cb0:	d03e                	sw	a5,32(sp)
   15cb2:	47f2                	lw	a5,28(sp)
   15cb4:	5775                	li	a4,-3
   15cb6:	00e7c463          	blt	a5,a4,15cbe <_vfprintf_r+0xf8c>
   15cba:	0efadbe3          	bge	s5,a5,165b0 <_vfprintf_r+0x187e>
   15cbe:	47f2                	lw	a5,28(sp)
   15cc0:	18f9                	addi	a7,a7,-2
   15cc2:	fff78713          	addi	a4,a5,-1
   15cc6:	d73a                	sw	a4,172(sp)
   15cc8:	0ff8f693          	zext.b	a3,a7
   15ccc:	4601                	li	a2,0
   15cce:	0ad10a23          	sb	a3,180(sp)
   15cd2:	02b00693          	li	a3,43
   15cd6:	00075763          	bgez	a4,15ce4 <_vfprintf_r+0xfb2>
   15cda:	47f2                	lw	a5,28(sp)
   15cdc:	4705                	li	a4,1
   15cde:	02d00693          	li	a3,45
   15ce2:	8f1d                	sub	a4,a4,a5
   15ce4:	0ad10aa3          	sb	a3,181(sp)
   15ce8:	46a5                	li	a3,9
   15cea:	2ae6d1e3          	bge	a3,a4,1678c <_vfprintf_r+0x1a5a>
   15cee:	0c310813          	addi	a6,sp,195
   15cf2:	85c2                	mv	a1,a6
   15cf4:	4529                	li	a0,10
   15cf6:	06300f13          	li	t5,99
   15cfa:	02a767b3          	rem	a5,a4,a0
   15cfe:	862e                	mv	a2,a1
   15d00:	86ba                	mv	a3,a4
   15d02:	15fd                	addi	a1,a1,-1
   15d04:	03078793          	addi	a5,a5,48
   15d08:	fef60fa3          	sb	a5,-1(a2)
   15d0c:	02a74733          	div	a4,a4,a0
   15d10:	fedf45e3          	blt	t5,a3,15cfa <_vfprintf_r+0xfc8>
   15d14:	03070713          	addi	a4,a4,48
   15d18:	ffe60693          	addi	a3,a2,-2
   15d1c:	fee58fa3          	sb	a4,-1(a1)
   15d20:	3706fce3          	bgeu	a3,a6,16898 <_vfprintf_r+0x1b66>
   15d24:	0b610713          	addi	a4,sp,182
   15d28:	0006c783          	lbu	a5,0(a3)
   15d2c:	0685                	addi	a3,a3,1
   15d2e:	0705                	addi	a4,a4,1
   15d30:	fef70fa3          	sb	a5,-1(a4)
   15d34:	ff069ae3          	bne	a3,a6,15d28 <_vfprintf_r+0xff6>
   15d38:	0b1c                	addi	a5,sp,400
   15d3a:	40c78733          	sub	a4,a5,a2
   15d3e:	f3770793          	addi	a5,a4,-201
   15d42:	c0be                	sw	a5,64(sp)
   15d44:	5782                	lw	a5,32(sp)
   15d46:	4686                	lw	a3,64(sp)
   15d48:	4705                	li	a4,1
   15d4a:	00d78b33          	add	s6,a5,a3
   15d4e:	26f758e3          	bge	a4,a5,167be <_vfprintf_r+0x1a8c>
   15d52:	57b2                	lw	a5,44(sp)
   15d54:	9b3e                	add	s6,s6,a5
   15d56:	fffb4693          	not	a3,s6
   15d5a:	bffcfe13          	andi	t3,s9,-1025
   15d5e:	86fd                	srai	a3,a3,0x1f
   15d60:	100e6793          	ori	a5,t3,256
   15d64:	c6be                	sw	a5,76(sp)
   15d66:	00db7db3          	and	s11,s6,a3
   15d6a:	d402                	sw	zero,40(sp)
   15d6c:	d202                	sw	zero,36(sp)
   15d6e:	ce02                	sw	zero,28(sp)
   15d70:	57e2                	lw	a5,56(sp)
   15d72:	020786e3          	beqz	a5,1659e <_vfprintf_r+0x186c>
   15d76:	02d00713          	li	a4,45
   15d7a:	4cb6                	lw	s9,76(sp)
   15d7c:	0ae103a3          	sb	a4,167(sp)
   15d80:	4a81                	li	s5,0
   15d82:	0d85                	addi	s11,s11,1
   15d84:	938ff06f          	j	14ebc <_vfprintf_r+0x18a>
   15d88:	4752                	lw	a4,20(sp)
   15d8a:	010cf793          	andi	a5,s9,16
   15d8e:	00072b03          	lw	s6,0(a4)
   15d92:	0711                	addi	a4,a4,4
   15d94:	ca3a                	sw	a4,20(sp)
   15d96:	e7a9                	bnez	a5,15de0 <_vfprintf_r+0x10ae>
   15d98:	040cf793          	andi	a5,s9,64
   15d9c:	cf95                	beqz	a5,15dd8 <_vfprintf_r+0x10a6>
   15d9e:	0b42                	slli	s6,s6,0x10
   15da0:	010b5b13          	srli	s6,s6,0x10
   15da4:	4d81                	li	s11,0
   15da6:	bb69                	j	15b40 <_vfprintf_r+0xe0e>
   15da8:	4522                	lw	a0,8(sp)
   15daa:	01d0                	addi	a2,sp,196
   15dac:	85a6                	mv	a1,s1
   15dae:	3cf000ef          	jal	1697c <__sprint_r>
   15db2:	9c051ee3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15db6:	4c3e                	lw	s8,204(sp)
   15db8:	4aae                	lw	s5,200(sp)
   15dba:	8b4e                	mv	s6,s3
   15dbc:	c6eff06f          	j	1522a <_vfprintf_r+0x4f8>
   15dc0:	4522                	lw	a0,8(sp)
   15dc2:	01d0                	addi	a2,sp,196
   15dc4:	85a6                	mv	a1,s1
   15dc6:	3b7000ef          	jal	1697c <__sprint_r>
   15dca:	9c0512e3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15dce:	4c3e                	lw	s8,204(sp)
   15dd0:	4aae                	lw	s5,200(sp)
   15dd2:	8b4e                	mv	s6,s3
   15dd4:	c72ff06f          	j	15246 <_vfprintf_r+0x514>
   15dd8:	200cf793          	andi	a5,s9,512
   15ddc:	4a079963          	bnez	a5,1628e <_vfprintf_r+0x155c>
   15de0:	4d81                	li	s11,0
   15de2:	bbb9                	j	15b40 <_vfprintf_r+0xe0e>
   15de4:	ccccd837          	lui	a6,0xccccd
   15de8:	ccccdcb7          	lui	s9,0xccccd
   15dec:	5772                	lw	a4,60(sp)
   15dee:	400eff13          	andi	t5,t4,1024
   15df2:	4601                	li	a2,0
   15df4:	0b0c                	addi	a1,sp,400
   15df6:	4e15                	li	t3,5
   15df8:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccad0c9>
   15dfc:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccad0c8>
   15e00:	0ff00c13          	li	s8,255
   15e04:	a081                	j	15e44 <_vfprintf_r+0x1112>
   15e06:	016d37b3          	sltu	a5,s10,s6
   15e0a:	97ea                	add	a5,a5,s10
   15e0c:	03c7f7b3          	remu	a5,a5,t3
   15e10:	40fb07b3          	sub	a5,s6,a5
   15e14:	00fb35b3          	sltu	a1,s6,a5
   15e18:	40bd85b3          	sub	a1,s11,a1
   15e1c:	03978333          	mul	t1,a5,s9
   15e20:	030585b3          	mul	a1,a1,a6
   15e24:	0307b533          	mulhu	a0,a5,a6
   15e28:	959a                	add	a1,a1,t1
   15e2a:	030787b3          	mul	a5,a5,a6
   15e2e:	95aa                	add	a1,a1,a0
   15e30:	01f59513          	slli	a0,a1,0x1f
   15e34:	8185                	srli	a1,a1,0x1
   15e36:	8385                	srli	a5,a5,0x1
   15e38:	8fc9                	or	a5,a5,a0
   15e3a:	7c0d8763          	beqz	s11,16608 <_vfprintf_r+0x18d6>
   15e3e:	8dae                	mv	s11,a1
   15e40:	8b3e                	mv	s6,a5
   15e42:	85b6                	mv	a1,a3
   15e44:	01bb0d33          	add	s10,s6,s11
   15e48:	016d37b3          	sltu	a5,s10,s6
   15e4c:	97ea                	add	a5,a5,s10
   15e4e:	03c7f7b3          	remu	a5,a5,t3
   15e52:	fff58693          	addi	a3,a1,-1
   15e56:	0605                	addi	a2,a2,1
   15e58:	40fb07b3          	sub	a5,s6,a5
   15e5c:	00fb3533          	sltu	a0,s6,a5
   15e60:	40ad8533          	sub	a0,s11,a0
   15e64:	0307b333          	mulhu	t1,a5,a6
   15e68:	03050533          	mul	a0,a0,a6
   15e6c:	030787b3          	mul	a5,a5,a6
   15e70:	951a                	add	a0,a0,t1
   15e72:	057e                	slli	a0,a0,0x1f
   15e74:	8385                	srli	a5,a5,0x1
   15e76:	8fc9                	or	a5,a5,a0
   15e78:	00279513          	slli	a0,a5,0x2
   15e7c:	97aa                	add	a5,a5,a0
   15e7e:	0786                	slli	a5,a5,0x1
   15e80:	40fb07b3          	sub	a5,s6,a5
   15e84:	03078793          	addi	a5,a5,48
   15e88:	fef58fa3          	sb	a5,-1(a1)
   15e8c:	f60f0de3          	beqz	t5,15e06 <_vfprintf_r+0x10d4>
   15e90:	00074783          	lbu	a5,0(a4)
   15e94:	f6f619e3          	bne	a2,a5,15e06 <_vfprintf_r+0x10d4>
   15e98:	f78607e3          	beq	a2,s8,15e06 <_vfprintf_r+0x10d4>
   15e9c:	1c0d9563          	bnez	s11,16066 <_vfprintf_r+0x1334>
   15ea0:	47a5                	li	a5,9
   15ea2:	1d67e263          	bltu	a5,s6,16066 <_vfprintf_r+0x1334>
   15ea6:	8d36                	mv	s10,a3
   15ea8:	0b1c                	addi	a5,sp,400
   15eaa:	d032                	sw	a2,32(sp)
   15eac:	de3a                	sw	a4,60(sp)
   15eae:	41a78b33          	sub	s6,a5,s10
   15eb2:	8cf6                	mv	s9,t4
   15eb4:	9d2ff06f          	j	15086 <_vfprintf_r+0x354>
   15eb8:	472e                	lw	a4,200(sp)
   15eba:	65f9                	lui	a1,0x1e
   15ebc:	99458593          	addi	a1,a1,-1644 # 1d994 <__clzsi2+0xc0>
   15ec0:	c00c                	sw	a1,0(s0)
   15ec2:	0605                	addi	a2,a2,1
   15ec4:	4585                	li	a1,1
   15ec6:	0705                	addi	a4,a4,1
   15ec8:	c04c                	sw	a1,4(s0)
   15eca:	c7b2                	sw	a2,204(sp)
   15ecc:	c5ba                	sw	a4,200(sp)
   15ece:	459d                	li	a1,7
   15ed0:	0421                	addi	s0,s0,8
   15ed2:	36e5c063          	blt	a1,a4,16232 <_vfprintf_r+0x1500>
   15ed6:	e569                	bnez	a0,15fa0 <_vfprintf_r+0x126e>
   15ed8:	5782                	lw	a5,32(sp)
   15eda:	001cf713          	andi	a4,s9,1
   15ede:	8f5d                	or	a4,a4,a5
   15ee0:	e319                	bnez	a4,15ee6 <_vfprintf_r+0x11b4>
   15ee2:	868ff06f          	j	14f4a <_vfprintf_r+0x218>
   15ee6:	5742                	lw	a4,48(sp)
   15ee8:	57b2                	lw	a5,44(sp)
   15eea:	459d                	li	a1,7
   15eec:	c018                	sw	a4,0(s0)
   15eee:	472e                	lw	a4,200(sp)
   15ef0:	963e                	add	a2,a2,a5
   15ef2:	c05c                	sw	a5,4(s0)
   15ef4:	0705                	addi	a4,a4,1
   15ef6:	c7b2                	sw	a2,204(sp)
   15ef8:	c5ba                	sw	a4,200(sp)
   15efa:	3ae5cb63          	blt	a1,a4,162b0 <_vfprintf_r+0x157e>
   15efe:	0421                	addi	s0,s0,8
   15f00:	a87d                	j	15fbe <_vfprintf_r+0x128c>
   15f02:	4522                	lw	a0,8(sp)
   15f04:	f1ffd0ef          	jal	13e22 <__sinit>
   15f08:	e69fe06f          	j	14d70 <_vfprintf_r+0x3e>
   15f0c:	4522                	lw	a0,8(sp)
   15f0e:	01d0                	addi	a2,sp,196
   15f10:	85a6                	mv	a1,s1
   15f12:	26b000ef          	jal	1697c <__sprint_r>
   15f16:	86051ce3          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   15f1a:	463e                	lw	a2,204(sp)
   15f1c:	844e                	mv	s0,s3
   15f1e:	e78ff06f          	j	15596 <_vfprintf_r+0x864>
   15f22:	886a                	mv	a6,s10
   15f24:	01042023          	sw	a6,0(s0)
   15f28:	01542223          	sw	s5,4(s0)
   15f2c:	9656                	add	a2,a2,s5
   15f2e:	0785                	addi	a5,a5,1
   15f30:	c7b2                	sw	a2,204(sp)
   15f32:	c5be                	sw	a5,200(sp)
   15f34:	471d                	li	a4,7
   15f36:	00f74463          	blt	a4,a5,15f3e <_vfprintf_r+0x120c>
   15f3a:	80eff06f          	j	14f48 <_vfprintf_r+0x216>
   15f3e:	b70ff06f          	j	152ae <_vfprintf_r+0x57c>
   15f42:	47ce                	lw	a5,208(sp)
   15f44:	010c                	addi	a1,sp,128
   15f46:	0908                	addi	a0,sp,144
   15f48:	c93e                	sw	a5,144(sp)
   15f4a:	47de                	lw	a5,212(sp)
   15f4c:	c102                	sw	zero,128(sp)
   15f4e:	c302                	sw	zero,132(sp)
   15f50:	cb3e                	sw	a5,148(sp)
   15f52:	47ee                	lw	a5,216(sp)
   15f54:	c502                	sw	zero,136(sp)
   15f56:	c702                	sw	zero,140(sp)
   15f58:	cd3e                	sw	a5,152(sp)
   15f5a:	47fe                	lw	a5,220(sp)
   15f5c:	cf3e                	sw	a5,156(sp)
   15f5e:	6de050ef          	jal	1b63c <__letf2>
   15f62:	48c2                	lw	a7,16(sp)
   15f64:	6a054a63          	bltz	a0,16618 <_vfprintf_r+0x18e6>
   15f68:	0a714703          	lbu	a4,167(sp)
   15f6c:	04700793          	li	a5,71
   15f70:	2d17db63          	bge	a5,a7,16246 <_vfprintf_r+0x1514>
   15f74:	67f9                	lui	a5,0x1e
   15f76:	95878d13          	addi	s10,a5,-1704 # 1d958 <__clzsi2+0x84>
   15f7a:	c802                	sw	zero,16(sp)
   15f7c:	d402                	sw	zero,40(sp)
   15f7e:	d202                	sw	zero,36(sp)
   15f80:	ce02                	sw	zero,28(sp)
   15f82:	f7fcfc93          	andi	s9,s9,-129
   15f86:	4d8d                	li	s11,3
   15f88:	4b0d                	li	s6,3
   15f8a:	4a81                	li	s5,0
   15f8c:	90071963          	bnez	a4,1509e <_vfprintf_r+0x36c>
   15f90:	f2dfe06f          	j	14ebc <_vfprintf_r+0x18a>
   15f94:	47d2                	lw	a5,20(sp)
   15f96:	4732                	lw	a4,12(sp)
   15f98:	439c                	lw	a5,0(a5)
   15f9a:	c398                	sw	a4,0(a5)
   15f9c:	d7eff06f          	j	1551a <_vfprintf_r+0x7e8>
   15fa0:	5742                	lw	a4,48(sp)
   15fa2:	57b2                	lw	a5,44(sp)
   15fa4:	459d                	li	a1,7
   15fa6:	c018                	sw	a4,0(s0)
   15fa8:	472e                	lw	a4,200(sp)
   15faa:	963e                	add	a2,a2,a5
   15fac:	c05c                	sw	a5,4(s0)
   15fae:	0705                	addi	a4,a4,1
   15fb0:	c7b2                	sw	a2,204(sp)
   15fb2:	c5ba                	sw	a4,200(sp)
   15fb4:	0421                	addi	s0,s0,8
   15fb6:	2ee5cd63          	blt	a1,a4,162b0 <_vfprintf_r+0x157e>
   15fba:	74054a63          	bltz	a0,1670e <_vfprintf_r+0x19dc>
   15fbe:	5782                	lw	a5,32(sp)
   15fc0:	0705                	addi	a4,a4,1
   15fc2:	01a42023          	sw	s10,0(s0)
   15fc6:	963e                	add	a2,a2,a5
   15fc8:	c05c                	sw	a5,4(s0)
   15fca:	c7b2                	sw	a2,204(sp)
   15fcc:	c5ba                	sw	a4,200(sp)
   15fce:	479d                	li	a5,7
   15fd0:	00e7c463          	blt	a5,a4,15fd8 <_vfprintf_r+0x12a6>
   15fd4:	f75fe06f          	j	14f48 <_vfprintf_r+0x216>
   15fd8:	ad6ff06f          	j	152ae <_vfprintf_r+0x57c>
   15fdc:	856a                	mv	a0,s10
   15fde:	dc46                	sw	a7,56(sp)
   15fe0:	5fc010ef          	jal	175dc <strlen>
   15fe4:	0a714703          	lbu	a4,167(sp)
   15fe8:	fff54693          	not	a3,a0
   15fec:	86fd                	srai	a3,a3,0x1f
   15fee:	ca62                	sw	s8,20(sp)
   15ff0:	c802                	sw	zero,16(sp)
   15ff2:	d402                	sw	zero,40(sp)
   15ff4:	d202                	sw	zero,36(sp)
   15ff6:	ce02                	sw	zero,28(sp)
   15ff8:	58e2                	lw	a7,56(sp)
   15ffa:	8b2a                	mv	s6,a0
   15ffc:	00d57db3          	and	s11,a0,a3
   16000:	4a81                	li	s5,0
   16002:	c319                	beqz	a4,16008 <_vfprintf_r+0x12d6>
   16004:	89aff06f          	j	1509e <_vfprintf_r+0x36c>
   16008:	eb5fe06f          	j	14ebc <_vfprintf_r+0x18a>
   1600c:	884a                	mv	a6,s2
   1600e:	4972                	lw	s2,28(sp)
   16010:	9c22                	add	s8,s8,s0
   16012:	0a85                	addi	s5,s5,1
   16014:	010b2023          	sw	a6,0(s6)
   16018:	a64ff06f          	j	1527c <_vfprintf_r+0x54a>
   1601c:	47fe                	lw	a5,220(sp)
   1601e:	2607cc63          	bltz	a5,16296 <_vfprintf_r+0x1564>
   16022:	0a714703          	lbu	a4,167(sp)
   16026:	04700793          	li	a5,71
   1602a:	6317ca63          	blt	a5,a7,1665e <_vfprintf_r+0x192c>
   1602e:	67f9                	lui	a5,0x1e
   16030:	95c78d13          	addi	s10,a5,-1700 # 1d95c <__clzsi2+0x88>
   16034:	b799                	j	15f7a <_vfprintf_r+0x1248>
   16036:	8822                	mv	a6,s0
   16038:	843e                	mv	s0,a5
   1603a:	9656                	add	a2,a2,s5
   1603c:	0705                	addi	a4,a4,1
   1603e:	01042023          	sw	a6,0(s0)
   16042:	01542223          	sw	s5,4(s0)
   16046:	c7b2                	sw	a2,204(sp)
   16048:	c5ba                	sw	a4,200(sp)
   1604a:	459d                	li	a1,7
   1604c:	0421                	addi	s0,s0,8
   1604e:	8ce5d7e3          	bge	a1,a4,1591c <_vfprintf_r+0xbea>
   16052:	4522                	lw	a0,8(sp)
   16054:	01d0                	addi	a2,sp,196
   16056:	85a6                	mv	a1,s1
   16058:	125000ef          	jal	1697c <__sprint_r>
   1605c:	f2051963          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   16060:	463e                	lw	a2,204(sp)
   16062:	844e                	mv	s0,s3
   16064:	b865                	j	1591c <_vfprintf_r+0xbea>
   16066:	47a6                	lw	a5,72(sp)
   16068:	4596                	lw	a1,68(sp)
   1606a:	dc42                	sw	a6,56(sp)
   1606c:	8e9d                	sub	a3,a3,a5
   1606e:	863e                	mv	a2,a5
   16070:	8536                	mv	a0,a3
   16072:	d47a                	sw	t5,40(sp)
   16074:	d276                	sw	t4,36(sp)
   16076:	d046                	sw	a7,32(sp)
   16078:	ce3a                	sw	a4,28(sp)
   1607a:	c836                	sw	a3,16(sp)
   1607c:	254010ef          	jal	172d0 <strncpy>
   16080:	016d37b3          	sltu	a5,s10,s6
   16084:	4615                	li	a2,5
   16086:	97ea                	add	a5,a5,s10
   16088:	02c7f7b3          	remu	a5,a5,a2
   1608c:	4772                	lw	a4,28(sp)
   1608e:	ccccd337          	lui	t1,0xccccd
   16092:	ccccd537          	lui	a0,0xccccd
   16096:	00174583          	lbu	a1,1(a4)
   1609a:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccad0c9>
   1609e:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccad0c8>
   160a2:	00b035b3          	snez	a1,a1
   160a6:	972e                	add	a4,a4,a1
   160a8:	46c2                	lw	a3,16(sp)
   160aa:	5882                	lw	a7,32(sp)
   160ac:	5e92                	lw	t4,36(sp)
   160ae:	5f22                	lw	t5,40(sp)
   160b0:	5862                	lw	a6,56(sp)
   160b2:	4601                	li	a2,0
   160b4:	4e15                	li	t3,5
   160b6:	40fb07b3          	sub	a5,s6,a5
   160ba:	00fb35b3          	sltu	a1,s6,a5
   160be:	40bd85b3          	sub	a1,s11,a1
   160c2:	02a78533          	mul	a0,a5,a0
   160c6:	026585b3          	mul	a1,a1,t1
   160ca:	0267bfb3          	mulhu	t6,a5,t1
   160ce:	95aa                	add	a1,a1,a0
   160d0:	02678533          	mul	a0,a5,t1
   160d4:	95fe                	add	a1,a1,t6
   160d6:	01f59793          	slli	a5,a1,0x1f
   160da:	8185                	srli	a1,a1,0x1
   160dc:	8105                	srli	a0,a0,0x1
   160de:	8fc9                	or	a5,a5,a0
   160e0:	bbb9                	j	15e3e <_vfprintf_r+0x110c>
   160e2:	5782                	lw	a5,32(sp)
   160e4:	5b12                	lw	s6,36(sp)
   160e6:	68f9                	lui	a7,0x1e
   160e8:	97ea                	add	a5,a5,s10
   160ea:	dc4a                	sw	s2,56(sp)
   160ec:	c6e6                	sw	s9,76(sp)
   160ee:	c8de                	sw	s7,80(sp)
   160f0:	d26e                	sw	s11,36(sp)
   160f2:	5da2                	lw	s11,40(sp)
   160f4:	d46a                	sw	s10,40(sp)
   160f6:	5cf2                	lw	s9,60(sp)
   160f8:	8d62                	mv	s10,s8
   160fa:	4922                	lw	s2,8(sp)
   160fc:	4c26                	lw	s8,72(sp)
   160fe:	481d                	li	a6,7
   16100:	4741                	li	a4,16
   16102:	cc088a93          	addi	s5,a7,-832 # 1dcc0 <zeroes.0>
   16106:	85a2                	mv	a1,s0
   16108:	8bbe                	mv	s7,a5
   1610a:	07605363          	blez	s6,16170 <_vfprintf_r+0x143e>
   1610e:	0fb05663          	blez	s11,161fa <_vfprintf_r+0x14c8>
   16112:	1dfd                	addi	s11,s11,-1
   16114:	4796                	lw	a5,68(sp)
   16116:	9662                	add	a2,a2,s8
   16118:	0185a223          	sw	s8,4(a1)
   1611c:	c19c                	sw	a5,0(a1)
   1611e:	47ae                	lw	a5,200(sp)
   16120:	c7b2                	sw	a2,204(sp)
   16122:	05a1                	addi	a1,a1,8
   16124:	0785                	addi	a5,a5,1
   16126:	c5be                	sw	a5,200(sp)
   16128:	0cf84c63          	blt	a6,a5,16200 <_vfprintf_r+0x14ce>
   1612c:	000cc683          	lbu	a3,0(s9)
   16130:	41ab8433          	sub	s0,s7,s10
   16134:	0086d363          	bge	a3,s0,1613a <_vfprintf_r+0x1408>
   16138:	8436                	mv	s0,a3
   1613a:	00805f63          	blez	s0,16158 <_vfprintf_r+0x1426>
   1613e:	46ae                	lw	a3,200(sp)
   16140:	9622                	add	a2,a2,s0
   16142:	01a5a023          	sw	s10,0(a1)
   16146:	0685                	addi	a3,a3,1
   16148:	c1c0                	sw	s0,4(a1)
   1614a:	c7b2                	sw	a2,204(sp)
   1614c:	c5b6                	sw	a3,200(sp)
   1614e:	0cd84563          	blt	a6,a3,16218 <_vfprintf_r+0x14e6>
   16152:	000cc683          	lbu	a3,0(s9)
   16156:	05a1                	addi	a1,a1,8
   16158:	fff44513          	not	a0,s0
   1615c:	857d                	srai	a0,a0,0x1f
   1615e:	00a477b3          	and	a5,s0,a0
   16162:	40f68433          	sub	s0,a3,a5
   16166:	02804763          	bgtz	s0,16194 <_vfprintf_r+0x1462>
   1616a:	9d36                	add	s10,s10,a3
   1616c:	fb6041e3          	bgtz	s6,1610e <_vfprintf_r+0x13dc>
   16170:	fbb041e3          	bgtz	s11,16112 <_vfprintf_r+0x13e0>
   16174:	5782                	lw	a5,32(sp)
   16176:	8c6a                	mv	s8,s10
   16178:	5d22                	lw	s10,40(sp)
   1617a:	de66                	sw	s9,60(sp)
   1617c:	5962                	lw	s2,56(sp)
   1617e:	00fd0733          	add	a4,s10,a5
   16182:	4cb6                	lw	s9,76(sp)
   16184:	4bc6                	lw	s7,80(sp)
   16186:	5d92                	lw	s11,36(sp)
   16188:	842e                	mv	s0,a1
   1618a:	fb877063          	bgeu	a4,s8,1592a <_vfprintf_r+0xbf8>
   1618e:	8c3a                	mv	s8,a4
   16190:	f9aff06f          	j	1592a <_vfprintf_r+0xbf8>
   16194:	6f79                	lui	t5,0x1e
   16196:	46ae                	lw	a3,200(sp)
   16198:	cc0f0f13          	addi	t5,t5,-832 # 1dcc0 <zeroes.0>
   1619c:	04875163          	bge	a4,s0,161de <_vfprintf_r+0x14ac>
   161a0:	ce56                	sw	s5,28(sp)
   161a2:	a021                	j	161aa <_vfprintf_r+0x1478>
   161a4:	1441                	addi	s0,s0,-16
   161a6:	02875b63          	bge	a4,s0,161dc <_vfprintf_r+0x14aa>
   161aa:	0641                	addi	a2,a2,16
   161ac:	0685                	addi	a3,a3,1
   161ae:	0155a023          	sw	s5,0(a1)
   161b2:	c1d8                	sw	a4,4(a1)
   161b4:	c7b2                	sw	a2,204(sp)
   161b6:	c5b6                	sw	a3,200(sp)
   161b8:	05a1                	addi	a1,a1,8
   161ba:	fed855e3          	bge	a6,a3,161a4 <_vfprintf_r+0x1472>
   161be:	01d0                	addi	a2,sp,196
   161c0:	85a6                	mv	a1,s1
   161c2:	854a                	mv	a0,s2
   161c4:	7b8000ef          	jal	1697c <__sprint_r>
   161c8:	dc051363          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   161cc:	4741                	li	a4,16
   161ce:	1441                	addi	s0,s0,-16
   161d0:	463e                	lw	a2,204(sp)
   161d2:	46ae                	lw	a3,200(sp)
   161d4:	85ce                	mv	a1,s3
   161d6:	481d                	li	a6,7
   161d8:	fc8749e3          	blt	a4,s0,161aa <_vfprintf_r+0x1478>
   161dc:	4f72                	lw	t5,28(sp)
   161de:	9622                	add	a2,a2,s0
   161e0:	0685                	addi	a3,a3,1
   161e2:	01e5a023          	sw	t5,0(a1)
   161e6:	c1c0                	sw	s0,4(a1)
   161e8:	c7b2                	sw	a2,204(sp)
   161ea:	c5b6                	sw	a3,200(sp)
   161ec:	40d84063          	blt	a6,a3,165ec <_vfprintf_r+0x18ba>
   161f0:	000cc683          	lbu	a3,0(s9)
   161f4:	05a1                	addi	a1,a1,8
   161f6:	9d36                	add	s10,s10,a3
   161f8:	bf95                	j	1616c <_vfprintf_r+0x143a>
   161fa:	1cfd                	addi	s9,s9,-1
   161fc:	1b7d                	addi	s6,s6,-1
   161fe:	bf19                	j	16114 <_vfprintf_r+0x13e2>
   16200:	01d0                	addi	a2,sp,196
   16202:	85a6                	mv	a1,s1
   16204:	854a                	mv	a0,s2
   16206:	776000ef          	jal	1697c <__sprint_r>
   1620a:	d8051263          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   1620e:	463e                	lw	a2,204(sp)
   16210:	85ce                	mv	a1,s3
   16212:	4741                	li	a4,16
   16214:	481d                	li	a6,7
   16216:	bf19                	j	1612c <_vfprintf_r+0x13fa>
   16218:	01d0                	addi	a2,sp,196
   1621a:	85a6                	mv	a1,s1
   1621c:	854a                	mv	a0,s2
   1621e:	2fb9                	jal	1697c <__sprint_r>
   16220:	d6051763          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   16224:	000cc683          	lbu	a3,0(s9)
   16228:	463e                	lw	a2,204(sp)
   1622a:	85ce                	mv	a1,s3
   1622c:	4741                	li	a4,16
   1622e:	481d                	li	a6,7
   16230:	b725                	j	16158 <_vfprintf_r+0x1426>
   16232:	4522                	lw	a0,8(sp)
   16234:	01d0                	addi	a2,sp,196
   16236:	85a6                	mv	a1,s1
   16238:	2791                	jal	1697c <__sprint_r>
   1623a:	d4051a63          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   1623e:	553a                	lw	a0,172(sp)
   16240:	463e                	lw	a2,204(sp)
   16242:	844e                	mv	s0,s3
   16244:	b949                	j	15ed6 <_vfprintf_r+0x11a4>
   16246:	67f9                	lui	a5,0x1e
   16248:	95478d13          	addi	s10,a5,-1708 # 1d954 <__clzsi2+0x80>
   1624c:	b33d                	j	15f7a <_vfprintf_r+0x1248>
   1624e:	4522                	lw	a0,8(sp)
   16250:	01d0                	addi	a2,sp,196
   16252:	85a6                	mv	a1,s1
   16254:	2725                	jal	1697c <__sprint_r>
   16256:	d2051c63          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   1625a:	463e                	lw	a2,204(sp)
   1625c:	844e                	mv	s0,s3
   1625e:	eaaff06f          	j	15908 <_vfprintf_r+0xbd6>
   16262:	4b19                	li	s6,6
   16264:	b2a1                	j	15bac <_vfprintf_r+0xe7a>
   16266:	47d2                	lw	a5,20(sp)
   16268:	4732                	lw	a4,12(sp)
   1626a:	439c                	lw	a5,0(a5)
   1626c:	00e79023          	sh	a4,0(a5)
   16270:	aaaff06f          	j	1551a <_vfprintf_r+0x7e8>
   16274:	0b62                	slli	s6,s6,0x18
   16276:	418b5b13          	srai	s6,s6,0x18
   1627a:	41fb5d93          	srai	s11,s6,0x1f
   1627e:	87ee                	mv	a5,s11
   16280:	de5fe06f          	j	15064 <_vfprintf_r+0x332>
   16284:	0ffb7b13          	zext.b	s6,s6
   16288:	4d81                	li	s11,0
   1628a:	e3dfe06f          	j	150c6 <_vfprintf_r+0x394>
   1628e:	0ffb7b13          	zext.b	s6,s6
   16292:	4d81                	li	s11,0
   16294:	b075                	j	15b40 <_vfprintf_r+0xe0e>
   16296:	02d00793          	li	a5,45
   1629a:	0af103a3          	sb	a5,167(sp)
   1629e:	02d00713          	li	a4,45
   162a2:	b351                	j	16026 <_vfprintf_r+0x12f4>
   162a4:	4522                	lw	a0,8(sp)
   162a6:	01d0                	addi	a2,sp,196
   162a8:	85a6                	mv	a1,s1
   162aa:	2dc9                	jal	1697c <__sprint_r>
   162ac:	ce3fe06f          	j	14f8e <_vfprintf_r+0x25c>
   162b0:	4522                	lw	a0,8(sp)
   162b2:	01d0                	addi	a2,sp,196
   162b4:	85a6                	mv	a1,s1
   162b6:	25d9                	jal	1697c <__sprint_r>
   162b8:	cc051b63          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   162bc:	553a                	lw	a0,172(sp)
   162be:	463e                	lw	a2,204(sp)
   162c0:	472e                	lw	a4,200(sp)
   162c2:	844e                	mv	s0,s3
   162c4:	b9dd                	j	15fba <_vfprintf_r+0x1288>
   162c6:	01550733          	add	a4,a0,s5
   162ca:	04700613          	li	a2,71
   162ce:	010c                	addi	a1,sp,128
   162d0:	855a                	mv	a0,s6
   162d2:	d23a                	sw	a4,36(sp)
   162d4:	d032                	sw	a2,32(sp)
   162d6:	ce46                	sw	a7,28(sp)
   162d8:	c97e                	sw	t6,144(sp)
   162da:	cb7a                	sw	t5,148(sp)
   162dc:	cd76                	sw	t4,152(sp)
   162de:	cf62                	sw	s8,156(sp)
   162e0:	c102                	sw	zero,128(sp)
   162e2:	c302                	sw	zero,132(sp)
   162e4:	c502                	sw	zero,136(sp)
   162e6:	c702                	sw	zero,140(sp)
   162e8:	17c050ef          	jal	1b464 <__eqtf2>
   162ec:	48f2                	lw	a7,28(sp)
   162ee:	5602                	lw	a2,32(sp)
   162f0:	5712                	lw	a4,36(sp)
   162f2:	36050a63          	beqz	a0,16666 <_vfprintf_r+0x1934>
   162f6:	57fa                	lw	a5,188(sp)
   162f8:	00e7fc63          	bgeu	a5,a4,16310 <_vfprintf_r+0x15de>
   162fc:	03000593          	li	a1,48
   16300:	00178693          	addi	a3,a5,1
   16304:	df36                	sw	a3,188(sp)
   16306:	00b78023          	sb	a1,0(a5)
   1630a:	57fa                	lw	a5,188(sp)
   1630c:	fee7eae3          	bltu	a5,a4,16300 <_vfprintf_r+0x15ce>
   16310:	573a                	lw	a4,172(sp)
   16312:	ce3a                	sw	a4,28(sp)
   16314:	41a787b3          	sub	a5,a5,s10
   16318:	04700713          	li	a4,71
   1631c:	d03e                	sw	a5,32(sp)
   1631e:	98e60ae3          	beq	a2,a4,15cb2 <_vfprintf_r+0xf80>
   16322:	04600713          	li	a4,70
   16326:	38e60863          	beq	a2,a4,166b6 <_vfprintf_r+0x1984>
   1632a:	47f2                	lw	a5,28(sp)
   1632c:	fff78713          	addi	a4,a5,-1
   16330:	ba59                	j	15cc6 <_vfprintf_r+0xf94>
   16332:	001a8693          	addi	a3,s5,1
   16336:	4609                	li	a2,2
   16338:	4522                	lw	a0,8(sp)
   1633a:	09010b13          	addi	s6,sp,144
   1633e:	1178                	addi	a4,sp,172
   16340:	85da                	mv	a1,s6
   16342:	0bc10813          	addi	a6,sp,188
   16346:	191c                	addi	a5,sp,176
   16348:	c8c6                	sw	a7,80(sp)
   1634a:	d436                	sw	a3,40(sp)
   1634c:	c97e                	sw	t6,144(sp)
   1634e:	d27e                	sw	t6,36(sp)
   16350:	cb7a                	sw	t5,148(sp)
   16352:	d07a                	sw	t5,32(sp)
   16354:	cd76                	sw	t4,152(sp)
   16356:	ce76                	sw	t4,28(sp)
   16358:	cf62                	sw	s8,156(sp)
   1635a:	442010ef          	jal	1779c <_ldtoa_r>
   1635e:	48c6                	lw	a7,80(sp)
   16360:	56a2                	lw	a3,40(sp)
   16362:	04600593          	li	a1,70
   16366:	fdf8f613          	andi	a2,a7,-33
   1636a:	4ef2                	lw	t4,28(sp)
   1636c:	5f02                	lw	t5,32(sp)
   1636e:	5f92                	lw	t6,36(sp)
   16370:	8d2a                	mv	s10,a0
   16372:	00d50733          	add	a4,a0,a3
   16376:	54b61563          	bne	a2,a1,168c0 <_vfprintf_r+0x1b8e>
   1637a:	000d4503          	lbu	a0,0(s10)
   1637e:	03000593          	li	a1,48
   16382:	2eb50663          	beq	a0,a1,1666e <_vfprintf_r+0x193c>
   16386:	56ba                	lw	a3,172(sp)
   16388:	010c                	addi	a1,sp,128
   1638a:	9736                	add	a4,a4,a3
   1638c:	b791                	j	162d0 <_vfprintf_r+0x159e>
   1638e:	09010b13          	addi	s6,sp,144
   16392:	010c                	addi	a1,sp,128
   16394:	1170                	addi	a2,sp,172
   16396:	855a                	mv	a0,s6
   16398:	c0c6                	sw	a7,64(sp)
   1639a:	c17e                	sw	t6,128(sp)
   1639c:	c37a                	sw	t5,132(sp)
   1639e:	c576                	sw	t4,136(sp)
   163a0:	ce2e                	sw	a1,28(sp)
   163a2:	c762                	sw	s8,140(sp)
   163a4:	29c010ef          	jal	17640 <frexpl>
   163a8:	474a                	lw	a4,144(sp)
   163aa:	45f2                	lw	a1,28(sp)
   163ac:	1890                	addi	a2,sp,112
   163ae:	c13a                	sw	a4,128(sp)
   163b0:	475a                	lw	a4,148(sp)
   163b2:	855a                	mv	a0,s6
   163b4:	d882                	sw	zero,112(sp)
   163b6:	c33a                	sw	a4,132(sp)
   163b8:	476a                	lw	a4,152(sp)
   163ba:	da82                	sw	zero,116(sp)
   163bc:	dc82                	sw	zero,120(sp)
   163be:	c53a                	sw	a4,136(sp)
   163c0:	477a                	lw	a4,156(sp)
   163c2:	c73a                	sw	a4,140(sp)
   163c4:	3ffc0737          	lui	a4,0x3ffc0
   163c8:	deba                	sw	a4,124(sp)
   163ca:	35e050ef          	jal	1b728 <__multf3>
   163ce:	45f2                	lw	a1,28(sp)
   163d0:	4f4a                	lw	t5,144(sp)
   163d2:	4eda                	lw	t4,148(sp)
   163d4:	486a                	lw	a6,152(sp)
   163d6:	855a                	mv	a0,s6
   163d8:	d42e                	sw	a1,40(sp)
   163da:	d27a                	sw	t5,36(sp)
   163dc:	d076                	sw	t4,32(sp)
   163de:	ce42                	sw	a6,28(sp)
   163e0:	c102                	sw	zero,128(sp)
   163e2:	c302                	sw	zero,132(sp)
   163e4:	c502                	sw	zero,136(sp)
   163e6:	c702                	sw	zero,140(sp)
   163e8:	07c050ef          	jal	1b464 <__eqtf2>
   163ec:	4dfa                	lw	s11,156(sp)
   163ee:	4872                	lw	a6,28(sp)
   163f0:	5e82                	lw	t4,32(sp)
   163f2:	5f12                	lw	t5,36(sp)
   163f4:	55a2                	lw	a1,40(sp)
   163f6:	4886                	lw	a7,64(sp)
   163f8:	e119                	bnez	a0,163fe <_vfprintf_r+0x16cc>
   163fa:	4705                	li	a4,1
   163fc:	d73a                	sw	a4,172(sp)
   163fe:	06100713          	li	a4,97
   16402:	44e88d63          	beq	a7,a4,1685c <_vfprintf_r+0x1b2a>
   16406:	6779                	lui	a4,0x1e
   16408:	97870793          	addi	a5,a4,-1672 # 1d978 <__clzsi2+0xa4>
   1640c:	ce3e                	sw	a5,28(sp)
   1640e:	d04a                	sw	s2,32(sp)
   16410:	d466                	sw	s9,40(sp)
   16412:	c0de                	sw	s7,64(sp)
   16414:	c6a2                	sw	s0,76(sp)
   16416:	896a                	mv	s2,s10
   16418:	c8a6                	sw	s1,80(sp)
   1641a:	caea                	sw	s10,84(sp)
   1641c:	44f2                	lw	s1,28(sp)
   1641e:	1afd                	addi	s5,s5,-1
   16420:	d246                	sw	a7,36(sp)
   16422:	8bfa                	mv	s7,t5
   16424:	8c76                	mv	s8,t4
   16426:	8cc2                	mv	s9,a6
   16428:	8d6e                	mv	s10,s11
   1642a:	842e                	mv	s0,a1
   1642c:	a015                	j	16450 <_vfprintf_r+0x171e>
   1642e:	85a2                	mv	a1,s0
   16430:	855a                	mv	a0,s6
   16432:	c95e                	sw	s7,144(sp)
   16434:	cb62                	sw	s8,148(sp)
   16436:	cd66                	sw	s9,152(sp)
   16438:	cf6a                	sw	s10,156(sp)
   1643a:	c102                	sw	zero,128(sp)
   1643c:	c302                	sw	zero,132(sp)
   1643e:	c502                	sw	zero,136(sp)
   16440:	c702                	sw	zero,140(sp)
   16442:	fffa8d93          	addi	s11,s5,-1
   16446:	01e050ef          	jal	1b464 <__eqtf2>
   1644a:	3c050c63          	beqz	a0,16822 <_vfprintf_r+0x1af0>
   1644e:	8aee                	mv	s5,s11
   16450:	400307b7          	lui	a5,0x40030
   16454:	1890                	addi	a2,sp,112
   16456:	85a2                	mv	a1,s0
   16458:	855a                	mv	a0,s6
   1645a:	debe                	sw	a5,124(sp)
   1645c:	c15e                	sw	s7,128(sp)
   1645e:	c362                	sw	s8,132(sp)
   16460:	c566                	sw	s9,136(sp)
   16462:	c76a                	sw	s10,140(sp)
   16464:	d882                	sw	zero,112(sp)
   16466:	da82                	sw	zero,116(sp)
   16468:	dc82                	sw	zero,120(sp)
   1646a:	2be050ef          	jal	1b728 <__multf3>
   1646e:	855a                	mv	a0,s6
   16470:	0e2070ef          	jal	1d552 <__fixtfsi>
   16474:	85aa                	mv	a1,a0
   16476:	8daa                	mv	s11,a0
   16478:	855a                	mv	a0,s6
   1647a:	4d4a                	lw	s10,144(sp)
   1647c:	4cda                	lw	s9,148(sp)
   1647e:	4c6a                	lw	s8,152(sp)
   16480:	4bfa                	lw	s7,156(sp)
   16482:	1f4070ef          	jal	1d676 <__floatsitf>
   16486:	46ca                	lw	a3,144(sp)
   16488:	1090                	addi	a2,sp,96
   1648a:	188c                	addi	a1,sp,112
   1648c:	d0b6                	sw	a3,96(sp)
   1648e:	46da                	lw	a3,148(sp)
   16490:	8522                	mv	a0,s0
   16492:	d8ea                	sw	s10,112(sp)
   16494:	d2b6                	sw	a3,100(sp)
   16496:	46ea                	lw	a3,152(sp)
   16498:	dae6                	sw	s9,116(sp)
   1649a:	dce2                	sw	s8,120(sp)
   1649c:	d4b6                	sw	a3,104(sp)
   1649e:	46fa                	lw	a3,156(sp)
   164a0:	dede                	sw	s7,124(sp)
   164a2:	d6b6                	sw	a3,108(sp)
   164a4:	721050ef          	jal	1c3c4 <__subtf3>
   164a8:	01b486b3          	add	a3,s1,s11
   164ac:	0006c603          	lbu	a2,0(a3)
   164b0:	8fca                	mv	t6,s2
   164b2:	0905                	addi	s2,s2,1
   164b4:	4b8a                	lw	s7,128(sp)
   164b6:	4c1a                	lw	s8,132(sp)
   164b8:	4caa                	lw	s9,136(sp)
   164ba:	4d3a                	lw	s10,140(sp)
   164bc:	57fd                	li	a5,-1
   164be:	fec90fa3          	sb	a2,-1(s2)
   164c2:	f6fa96e3          	bne	s5,a5,1642e <_vfprintf_r+0x16fc>
   164c6:	5892                	lw	a7,36(sp)
   164c8:	8f5e                	mv	t5,s7
   164ca:	8ee2                	mv	t4,s8
   164cc:	8866                	mv	a6,s9
   164ce:	85a2                	mv	a1,s0
   164d0:	ccee                	sw	s11,88(sp)
   164d2:	3ffe0ab7          	lui	s5,0x3ffe0
   164d6:	8dea                	mv	s11,s10
   164d8:	855a                	mv	a0,s6
   164da:	cec6                	sw	a7,92(sp)
   164dc:	d27e                	sw	t6,36(sp)
   164de:	44c6                	lw	s1,80(sp)
   164e0:	4b86                	lw	s7,64(sp)
   164e2:	5ca2                	lw	s9,40(sp)
   164e4:	4436                	lw	s0,76(sp)
   164e6:	c97a                	sw	t5,144(sp)
   164e8:	c8fa                	sw	t5,80(sp)
   164ea:	cb76                	sw	t4,148(sp)
   164ec:	c6f6                	sw	t4,76(sp)
   164ee:	cd42                	sw	a6,152(sp)
   164f0:	c0c2                	sw	a6,64(sp)
   164f2:	cf6e                	sw	s11,156(sp)
   164f4:	c102                	sw	zero,128(sp)
   164f6:	c302                	sw	zero,132(sp)
   164f8:	c502                	sw	zero,136(sp)
   164fa:	c756                	sw	s5,140(sp)
   164fc:	d42e                	sw	a1,40(sp)
   164fe:	052050ef          	jal	1b550 <__getf2>
   16502:	8c4a                	mv	s8,s2
   16504:	4d56                	lw	s10,84(sp)
   16506:	5902                	lw	s2,32(sp)
   16508:	5f92                	lw	t6,36(sp)
   1650a:	48f6                	lw	a7,92(sp)
   1650c:	00a04e63          	bgtz	a0,16528 <_vfprintf_r+0x17f6>
   16510:	55a2                	lw	a1,40(sp)
   16512:	855a                	mv	a0,s6
   16514:	d046                	sw	a7,32(sp)
   16516:	74f040ef          	jal	1b464 <__eqtf2>
   1651a:	5882                	lw	a7,32(sp)
   1651c:	e529                	bnez	a0,16566 <_vfprintf_r+0x1834>
   1651e:	47e6                	lw	a5,88(sp)
   16520:	5f92                	lw	t6,36(sp)
   16522:	0017f693          	andi	a3,a5,1
   16526:	c2a1                	beqz	a3,16566 <_vfprintf_r+0x1834>
   16528:	47f2                	lw	a5,28(sp)
   1652a:	df7e                	sw	t6,188(sp)
   1652c:	fffc4603          	lbu	a2,-1(s8)
   16530:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x4001040b>
   16534:	86e2                	mv	a3,s8
   16536:	00b61e63          	bne	a2,a1,16552 <_vfprintf_r+0x1820>
   1653a:	03000513          	li	a0,48
   1653e:	fea68fa3          	sb	a0,-1(a3)
   16542:	56fa                	lw	a3,188(sp)
   16544:	fff68793          	addi	a5,a3,-1
   16548:	df3e                	sw	a5,188(sp)
   1654a:	fff6c603          	lbu	a2,-1(a3)
   1654e:	fec588e3          	beq	a1,a2,1653e <_vfprintf_r+0x180c>
   16552:	00160593          	addi	a1,a2,1
   16556:	03900513          	li	a0,57
   1655a:	0ff5f593          	zext.b	a1,a1
   1655e:	02a60c63          	beq	a2,a0,16596 <_vfprintf_r+0x1864>
   16562:	feb68fa3          	sb	a1,-1(a3)
   16566:	57ba                	lw	a5,172(sp)
   16568:	41ac0733          	sub	a4,s8,s10
   1656c:	d03a                	sw	a4,32(sp)
   1656e:	fff78713          	addi	a4,a5,-1
   16572:	ce3e                	sw	a5,28(sp)
   16574:	06100613          	li	a2,97
   16578:	d73a                	sw	a4,172(sp)
   1657a:	07000693          	li	a3,112
   1657e:	00c88663          	beq	a7,a2,1658a <_vfprintf_r+0x1858>
   16582:	05000693          	li	a3,80
   16586:	04100893          	li	a7,65
   1658a:	4605                	li	a2,1
   1658c:	f42ff06f          	j	15cce <_vfprintf_r+0xf9c>
   16590:	86d6                	mv	a3,s5
   16592:	460d                	li	a2,3
   16594:	b355                	j	16338 <_vfprintf_r+0x1606>
   16596:	47f2                	lw	a5,28(sp)
   16598:	00a7c583          	lbu	a1,10(a5)
   1659c:	b7d9                	j	16562 <_vfprintf_r+0x1830>
   1659e:	0a714703          	lbu	a4,167(sp)
   165a2:	4cb6                	lw	s9,76(sp)
   165a4:	4a81                	li	s5,0
   165a6:	c319                	beqz	a4,165ac <_vfprintf_r+0x187a>
   165a8:	af7fe06f          	j	1509e <_vfprintf_r+0x36c>
   165ac:	911fe06f          	j	14ebc <_vfprintf_r+0x18a>
   165b0:	5782                	lw	a5,32(sp)
   165b2:	4772                	lw	a4,28(sp)
   165b4:	12f74763          	blt	a4,a5,166e2 <_vfprintf_r+0x19b0>
   165b8:	47f2                	lw	a5,28(sp)
   165ba:	001cf713          	andi	a4,s9,1
   165be:	8b3e                	mv	s6,a5
   165c0:	c701                	beqz	a4,165c8 <_vfprintf_r+0x1896>
   165c2:	5732                	lw	a4,44(sp)
   165c4:	00e78b33          	add	s6,a5,a4
   165c8:	400cfe13          	andi	t3,s9,1024
   165cc:	000e0563          	beqz	t3,165d6 <_vfprintf_r+0x18a4>
   165d0:	47f2                	lw	a5,28(sp)
   165d2:	1ef04c63          	bgtz	a5,167ca <_vfprintf_r+0x1a98>
   165d6:	fffb4693          	not	a3,s6
   165da:	86fd                	srai	a3,a3,0x1f
   165dc:	00db7db3          	and	s11,s6,a3
   165e0:	06700893          	li	a7,103
   165e4:	d402                	sw	zero,40(sp)
   165e6:	d202                	sw	zero,36(sp)
   165e8:	f88ff06f          	j	15d70 <_vfprintf_r+0x103e>
   165ec:	01d0                	addi	a2,sp,196
   165ee:	85a6                	mv	a1,s1
   165f0:	854a                	mv	a0,s2
   165f2:	2669                	jal	1697c <__sprint_r>
   165f4:	98051d63          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   165f8:	000cc683          	lbu	a3,0(s9)
   165fc:	463e                	lw	a2,204(sp)
   165fe:	85ce                	mv	a1,s3
   16600:	4741                	li	a4,16
   16602:	481d                	li	a6,7
   16604:	9d36                	add	s10,s10,a3
   16606:	b69d                	j	1616c <_vfprintf_r+0x143a>
   16608:	4525                	li	a0,9
   1660a:	83656ae3          	bltu	a0,s6,15e3e <_vfprintf_r+0x110c>
   1660e:	b861                	j	15ea6 <_vfprintf_r+0x1174>
   16610:	57fd                	li	a5,-1
   16612:	c63e                	sw	a5,12(sp)
   16614:	9adfe06f          	j	14fc0 <_vfprintf_r+0x28e>
   16618:	02d00793          	li	a5,45
   1661c:	0af103a3          	sb	a5,167(sp)
   16620:	02d00713          	li	a4,45
   16624:	b2a1                	j	15f6c <_vfprintf_r+0x123a>
   16626:	0a714703          	lbu	a4,167(sp)
   1662a:	ca62                	sw	s8,20(sp)
   1662c:	d402                	sw	zero,40(sp)
   1662e:	d202                	sw	zero,36(sp)
   16630:	ce02                	sw	zero,28(sp)
   16632:	8dd6                	mv	s11,s5
   16634:	8b56                	mv	s6,s5
   16636:	4a81                	li	s5,0
   16638:	c319                	beqz	a4,1663e <_vfprintf_r+0x190c>
   1663a:	a65fe06f          	j	1509e <_vfprintf_r+0x36c>
   1663e:	87ffe06f          	j	14ebc <_vfprintf_r+0x18a>
   16642:	4522                	lw	a0,8(sp)
   16644:	01d0                	addi	a2,sp,196
   16646:	85a6                	mv	a1,s1
   16648:	2e15                	jal	1697c <__sprint_r>
   1664a:	94051263          	bnez	a0,1578e <_vfprintf_r+0xa5c>
   1664e:	5aba                	lw	s5,172(sp)
   16650:	5782                	lw	a5,32(sp)
   16652:	463e                	lw	a2,204(sp)
   16654:	844e                	mv	s0,s3
   16656:	41578ab3          	sub	s5,a5,s5
   1665a:	b12ff06f          	j	1596c <_vfprintf_r+0xc3a>
   1665e:	67f9                	lui	a5,0x1e
   16660:	96078d13          	addi	s10,a5,-1696 # 1d960 <__clzsi2+0x8c>
   16664:	ba19                	j	15f7a <_vfprintf_r+0x1248>
   16666:	57ba                	lw	a5,172(sp)
   16668:	ce3e                	sw	a5,28(sp)
   1666a:	87ba                	mv	a5,a4
   1666c:	b165                	j	16314 <_vfprintf_r+0x15e2>
   1666e:	010c                	addi	a1,sp,128
   16670:	855a                	mv	a0,s6
   16672:	ceba                	sw	a4,92(sp)
   16674:	ccb2                	sw	a2,88(sp)
   16676:	cac6                	sw	a7,84(sp)
   16678:	c8b6                	sw	a3,80(sp)
   1667a:	c97e                	sw	t6,144(sp)
   1667c:	d47e                	sw	t6,40(sp)
   1667e:	cb7a                	sw	t5,148(sp)
   16680:	d27a                	sw	t5,36(sp)
   16682:	cd76                	sw	t4,152(sp)
   16684:	d076                	sw	t4,32(sp)
   16686:	ce2e                	sw	a1,28(sp)
   16688:	cf62                	sw	s8,156(sp)
   1668a:	c102                	sw	zero,128(sp)
   1668c:	c302                	sw	zero,132(sp)
   1668e:	c502                	sw	zero,136(sp)
   16690:	c702                	sw	zero,140(sp)
   16692:	5d3040ef          	jal	1b464 <__eqtf2>
   16696:	45f2                	lw	a1,28(sp)
   16698:	5e82                	lw	t4,32(sp)
   1669a:	5f12                	lw	t5,36(sp)
   1669c:	5fa2                	lw	t6,40(sp)
   1669e:	46c6                	lw	a3,80(sp)
   166a0:	48d6                	lw	a7,84(sp)
   166a2:	4666                	lw	a2,88(sp)
   166a4:	4776                	lw	a4,92(sp)
   166a6:	1c051063          	bnez	a0,16866 <_vfprintf_r+0x1b34>
   166aa:	57ba                	lw	a5,172(sp)
   166ac:	973e                	add	a4,a4,a5
   166ae:	ce3e                	sw	a5,28(sp)
   166b0:	41a707b3          	sub	a5,a4,s10
   166b4:	d03e                	sw	a5,32(sp)
   166b6:	47f2                	lw	a5,28(sp)
   166b8:	001cf713          	andi	a4,s9,1
   166bc:	01576733          	or	a4,a4,s5
   166c0:	1af05963          	blez	a5,16872 <_vfprintf_r+0x1b40>
   166c4:	18071463          	bnez	a4,1684c <_vfprintf_r+0x1b1a>
   166c8:	4b72                	lw	s6,28(sp)
   166ca:	06600893          	li	a7,102
   166ce:	400cfe13          	andi	t3,s9,1024
   166d2:	0e0e1e63          	bnez	t3,167ce <_vfprintf_r+0x1a9c>
   166d6:	fffb4693          	not	a3,s6
   166da:	86fd                	srai	a3,a3,0x1f
   166dc:	00db7db3          	and	s11,s6,a3
   166e0:	b711                	j	165e4 <_vfprintf_r+0x18b2>
   166e2:	5782                	lw	a5,32(sp)
   166e4:	5732                	lw	a4,44(sp)
   166e6:	06700893          	li	a7,103
   166ea:	00e78b33          	add	s6,a5,a4
   166ee:	47f2                	lw	a5,28(sp)
   166f0:	fcf04fe3          	bgtz	a5,166ce <_vfprintf_r+0x199c>
   166f4:	40fb0f33          	sub	t5,s6,a5
   166f8:	001f0b13          	addi	s6,t5,1
   166fc:	fffb4693          	not	a3,s6
   16700:	86fd                	srai	a3,a3,0x1f
   16702:	00db7db3          	and	s11,s6,a3
   16706:	bdf9                	j	165e4 <_vfprintf_r+0x18b2>
   16708:	8ee6                	mv	t4,s9
   1670a:	cf5fe06f          	j	153fe <_vfprintf_r+0x6cc>
   1670e:	6879                	lui	a6,0x1e
   16710:	55c1                	li	a1,-16
   16712:	40a00ab3          	neg	s5,a0
   16716:	cc080813          	addi	a6,a6,-832 # 1dcc0 <zeroes.0>
   1671a:	04b55263          	bge	a0,a1,1675e <_vfprintf_r+0x1a2c>
   1671e:	ce4a                	sw	s2,28(sp)
   16720:	4b41                	li	s6,16
   16722:	4c1d                	li	s8,7
   16724:	8942                	mv	s2,a6
   16726:	a021                	j	1672e <_vfprintf_r+0x19fc>
   16728:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc03ec>
   1672a:	035b5863          	bge	s6,s5,1675a <_vfprintf_r+0x1a28>
   1672e:	0641                	addi	a2,a2,16
   16730:	0705                	addi	a4,a4,1
   16732:	01242023          	sw	s2,0(s0)
   16736:	01642223          	sw	s6,4(s0)
   1673a:	c7b2                	sw	a2,204(sp)
   1673c:	c5ba                	sw	a4,200(sp)
   1673e:	0421                	addi	s0,s0,8
   16740:	feec54e3          	bge	s8,a4,16728 <_vfprintf_r+0x19f6>
   16744:	4522                	lw	a0,8(sp)
   16746:	01d0                	addi	a2,sp,196
   16748:	85a6                	mv	a1,s1
   1674a:	2c0d                	jal	1697c <__sprint_r>
   1674c:	c119                	beqz	a0,16752 <_vfprintf_r+0x1a20>
   1674e:	840ff06f          	j	1578e <_vfprintf_r+0xa5c>
   16752:	463e                	lw	a2,204(sp)
   16754:	472e                	lw	a4,200(sp)
   16756:	844e                	mv	s0,s3
   16758:	bfc1                	j	16728 <_vfprintf_r+0x19f6>
   1675a:	884a                	mv	a6,s2
   1675c:	4972                	lw	s2,28(sp)
   1675e:	9656                	add	a2,a2,s5
   16760:	0705                	addi	a4,a4,1
   16762:	01042023          	sw	a6,0(s0)
   16766:	01542223          	sw	s5,4(s0)
   1676a:	c7b2                	sw	a2,204(sp)
   1676c:	c5ba                	sw	a4,200(sp)
   1676e:	459d                	li	a1,7
   16770:	f8e5d763          	bge	a1,a4,15efe <_vfprintf_r+0x11cc>
   16774:	4522                	lw	a0,8(sp)
   16776:	01d0                	addi	a2,sp,196
   16778:	85a6                	mv	a1,s1
   1677a:	2409                	jal	1697c <__sprint_r>
   1677c:	c119                	beqz	a0,16782 <_vfprintf_r+0x1a50>
   1677e:	810ff06f          	j	1578e <_vfprintf_r+0xa5c>
   16782:	463e                	lw	a2,204(sp)
   16784:	472e                	lw	a4,200(sp)
   16786:	844e                	mv	s0,s3
   16788:	837ff06f          	j	15fbe <_vfprintf_r+0x128c>
   1678c:	0b610693          	addi	a3,sp,182
   16790:	e619                	bnez	a2,1679e <_vfprintf_r+0x1a6c>
   16792:	03000693          	li	a3,48
   16796:	0ad10b23          	sb	a3,182(sp)
   1679a:	0b710693          	addi	a3,sp,183
   1679e:	0b1c                	addi	a5,sp,400
   167a0:	40f68633          	sub	a2,a3,a5
   167a4:	03070713          	addi	a4,a4,48
   167a8:	0dd60793          	addi	a5,a2,221
   167ac:	00e68023          	sb	a4,0(a3)
   167b0:	c0be                	sw	a5,64(sp)
   167b2:	d92ff06f          	j	15d44 <_vfprintf_r+0x1012>
   167b6:	c802                	sw	zero,16(sp)
   167b8:	4a99                	li	s5,6
   167ba:	9effe06f          	j	151a8 <_vfprintf_r+0x476>
   167be:	001cf713          	andi	a4,s9,1
   167c2:	d8070a63          	beqz	a4,15d56 <_vfprintf_r+0x1024>
   167c6:	d8cff06f          	j	15d52 <_vfprintf_r+0x1020>
   167ca:	06700893          	li	a7,103
   167ce:	5672                	lw	a2,60(sp)
   167d0:	0ff00693          	li	a3,255
   167d4:	00064703          	lbu	a4,0(a2)
   167d8:	0ed70163          	beq	a4,a3,168ba <_vfprintf_r+0x1b88>
   167dc:	47f2                	lw	a5,28(sp)
   167de:	4501                	li	a0,0
   167e0:	4581                	li	a1,0
   167e2:	00f75a63          	bge	a4,a5,167f6 <_vfprintf_r+0x1ac4>
   167e6:	8f99                	sub	a5,a5,a4
   167e8:	00164703          	lbu	a4,1(a2)
   167ec:	c71d                	beqz	a4,1681a <_vfprintf_r+0x1ae8>
   167ee:	0585                	addi	a1,a1,1
   167f0:	0605                	addi	a2,a2,1
   167f2:	fed718e3          	bne	a4,a3,167e2 <_vfprintf_r+0x1ab0>
   167f6:	de32                	sw	a2,60(sp)
   167f8:	d22e                	sw	a1,36(sp)
   167fa:	d42a                	sw	a0,40(sp)
   167fc:	ce3e                	sw	a5,28(sp)
   167fe:	57a2                	lw	a5,40(sp)
   16800:	5712                	lw	a4,36(sp)
   16802:	973e                	add	a4,a4,a5
   16804:	47a6                	lw	a5,72(sp)
   16806:	02f70733          	mul	a4,a4,a5
   1680a:	9b3a                	add	s6,s6,a4
   1680c:	fffb4693          	not	a3,s6
   16810:	86fd                	srai	a3,a3,0x1f
   16812:	00db7db3          	and	s11,s6,a3
   16816:	d5aff06f          	j	15d70 <_vfprintf_r+0x103e>
   1681a:	00064703          	lbu	a4,0(a2)
   1681e:	0505                	addi	a0,a0,1
   16820:	bfc9                	j	167f2 <_vfprintf_r+0x1ac0>
   16822:	8c4a                	mv	s8,s2
   16824:	001a8693          	addi	a3,s5,1
   16828:	5892                	lw	a7,36(sp)
   1682a:	5ca2                	lw	s9,40(sp)
   1682c:	4b86                	lw	s7,64(sp)
   1682e:	4436                	lw	s0,76(sp)
   16830:	5902                	lw	s2,32(sp)
   16832:	44c6                	lw	s1,80(sp)
   16834:	4d56                	lw	s10,84(sp)
   16836:	96e2                	add	a3,a3,s8
   16838:	03000613          	li	a2,48
   1683c:	d20ac5e3          	bltz	s5,16566 <_vfprintf_r+0x1834>
   16840:	0c05                	addi	s8,s8,1
   16842:	fecc0fa3          	sb	a2,-1(s8)
   16846:	fedc1de3          	bne	s8,a3,16840 <_vfprintf_r+0x1b0e>
   1684a:	bb31                	j	16566 <_vfprintf_r+0x1834>
   1684c:	5732                	lw	a4,44(sp)
   1684e:	06600893          	li	a7,102
   16852:	00ea8f33          	add	t5,s5,a4
   16856:	00ff0b33          	add	s6,t5,a5
   1685a:	bd95                	j	166ce <_vfprintf_r+0x199c>
   1685c:	6779                	lui	a4,0x1e
   1685e:	96470793          	addi	a5,a4,-1692 # 1d964 <__clzsi2+0x90>
   16862:	ce3e                	sw	a5,28(sp)
   16864:	b66d                	j	1640e <_vfprintf_r+0x16dc>
   16866:	4505                	li	a0,1
   16868:	40d506b3          	sub	a3,a0,a3
   1686c:	d736                	sw	a3,172(sp)
   1686e:	9736                	add	a4,a4,a3
   16870:	b485                	j	162d0 <_vfprintf_r+0x159e>
   16872:	e711                	bnez	a4,1687e <_vfprintf_r+0x1b4c>
   16874:	4d85                	li	s11,1
   16876:	06600893          	li	a7,102
   1687a:	4b05                	li	s6,1
   1687c:	b3a5                	j	165e4 <_vfprintf_r+0x18b2>
   1687e:	57b2                	lw	a5,44(sp)
   16880:	06600893          	li	a7,102
   16884:	00178f13          	addi	t5,a5,1
   16888:	015f0b33          	add	s6,t5,s5
   1688c:	fffb4693          	not	a3,s6
   16890:	86fd                	srai	a3,a3,0x1f
   16892:	00db7db3          	and	s11,s6,a3
   16896:	b3b9                	j	165e4 <_vfprintf_r+0x18b2>
   16898:	4789                	li	a5,2
   1689a:	c0be                	sw	a5,64(sp)
   1689c:	ca8ff06f          	j	15d44 <_vfprintf_r+0x1012>
   168a0:	47d2                	lw	a5,20(sp)
   168a2:	0007aa83          	lw	s5,0(a5)
   168a6:	0791                	addi	a5,a5,4
   168a8:	000ad363          	bgez	s5,168ae <_vfprintf_r+0x1b7c>
   168ac:	5afd                	li	s5,-1
   168ae:	00194883          	lbu	a7,1(s2)
   168b2:	ca3e                	sw	a5,20(sp)
   168b4:	8936                	mv	s2,a3
   168b6:	dacfe06f          	j	14e62 <_vfprintf_r+0x130>
   168ba:	d402                	sw	zero,40(sp)
   168bc:	d202                	sw	zero,36(sp)
   168be:	b781                	j	167fe <_vfprintf_r+0x1acc>
   168c0:	04500613          	li	a2,69
   168c4:	010c                	addi	a1,sp,128
   168c6:	b429                	j	162d0 <_vfprintf_r+0x159e>
   168c8:	00c4d783          	lhu	a5,12(s1)
   168cc:	0407e793          	ori	a5,a5,64
   168d0:	00f49623          	sh	a5,12(s1)
   168d4:	ebafe06f          	j	14f8e <_vfprintf_r+0x25c>

000168d8 <vfprintf>:
   168d8:	87aa                	mv	a5,a0
   168da:	f141a503          	lw	a0,-236(gp) # 1f8cc <_impure_ptr>
   168de:	86b2                	mv	a3,a2
   168e0:	862e                	mv	a2,a1
   168e2:	85be                	mv	a1,a5
   168e4:	c4efe06f          	j	14d32 <_vfprintf_r>

000168e8 <__sbprintf>:
   168e8:	b8010113          	addi	sp,sp,-1152
   168ec:	00c59783          	lh	a5,12(a1)
   168f0:	00e5d703          	lhu	a4,14(a1)
   168f4:	46812c23          	sw	s0,1144(sp)
   168f8:	842e                	mv	s0,a1
   168fa:	65c1                	lui	a1,0x10
   168fc:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   168fe:	06442e03          	lw	t3,100(s0)
   16902:	01c42303          	lw	t1,28(s0)
   16906:	02442883          	lw	a7,36(s0)
   1690a:	0742                	slli	a4,a4,0x10
   1690c:	8fed                	and	a5,a5,a1
   1690e:	8fd9                	or	a5,a5,a4
   16910:	40000813          	li	a6,1024
   16914:	ca3e                	sw	a5,20(sp)
   16916:	002c                	addi	a1,sp,8
   16918:	189c                	addi	a5,sp,112
   1691a:	46912a23          	sw	s1,1140(sp)
   1691e:	47212823          	sw	s2,1136(sp)
   16922:	46112e23          	sw	ra,1148(sp)
   16926:	892a                	mv	s2,a0
   16928:	d6f2                	sw	t3,108(sp)
   1692a:	d21a                	sw	t1,36(sp)
   1692c:	d646                	sw	a7,44(sp)
   1692e:	c43e                	sw	a5,8(sp)
   16930:	cc3e                	sw	a5,24(sp)
   16932:	c842                	sw	a6,16(sp)
   16934:	ce42                	sw	a6,28(sp)
   16936:	d002                	sw	zero,32(sp)
   16938:	bfafe0ef          	jal	14d32 <_vfprintf_r>
   1693c:	84aa                	mv	s1,a0
   1693e:	02055963          	bgez	a0,16970 <__sbprintf+0x88>
   16942:	01415783          	lhu	a5,20(sp)
   16946:	0407f793          	andi	a5,a5,64
   1694a:	c799                	beqz	a5,16958 <__sbprintf+0x70>
   1694c:	00c45783          	lhu	a5,12(s0)
   16950:	0407e793          	ori	a5,a5,64
   16954:	00f41623          	sh	a5,12(s0)
   16958:	47c12083          	lw	ra,1148(sp)
   1695c:	47812403          	lw	s0,1144(sp)
   16960:	47012903          	lw	s2,1136(sp)
   16964:	8526                	mv	a0,s1
   16966:	47412483          	lw	s1,1140(sp)
   1696a:	48010113          	addi	sp,sp,1152
   1696e:	8082                	ret
   16970:	002c                	addi	a1,sp,8
   16972:	854a                	mv	a0,s2
   16974:	2c9d                	jal	16bea <_fflush_r>
   16976:	d571                	beqz	a0,16942 <__sbprintf+0x5a>
   16978:	54fd                	li	s1,-1
   1697a:	b7e1                	j	16942 <__sbprintf+0x5a>

0001697c <__sprint_r>:
   1697c:	461c                	lw	a5,8(a2)
   1697e:	1141                	addi	sp,sp,-16
   16980:	c422                	sw	s0,8(sp)
   16982:	c606                	sw	ra,12(sp)
   16984:	8432                	mv	s0,a2
   16986:	eb81                	bnez	a5,16996 <__sprint_r+0x1a>
   16988:	40b2                	lw	ra,12(sp)
   1698a:	00042223          	sw	zero,4(s0)
   1698e:	4422                	lw	s0,8(sp)
   16990:	4501                	li	a0,0
   16992:	0141                	addi	sp,sp,16
   16994:	8082                	ret
   16996:	2cf9                	jal	16c74 <__sfvwrite_r>
   16998:	40b2                	lw	ra,12(sp)
   1699a:	00042423          	sw	zero,8(s0)
   1699e:	00042223          	sw	zero,4(s0)
   169a2:	4422                	lw	s0,8(sp)
   169a4:	0141                	addi	sp,sp,16
   169a6:	8082                	ret

000169a8 <_fclose_r>:
   169a8:	1141                	addi	sp,sp,-16
   169aa:	c606                	sw	ra,12(sp)
   169ac:	c04a                	sw	s2,0(sp)
   169ae:	cd89                	beqz	a1,169c8 <_fclose_r+0x20>
   169b0:	c422                	sw	s0,8(sp)
   169b2:	c226                	sw	s1,4(sp)
   169b4:	842e                	mv	s0,a1
   169b6:	84aa                	mv	s1,a0
   169b8:	c119                	beqz	a0,169be <_fclose_r+0x16>
   169ba:	595c                	lw	a5,52(a0)
   169bc:	c7d1                	beqz	a5,16a48 <_fclose_r+0xa0>
   169be:	00c41783          	lh	a5,12(s0)
   169c2:	eb89                	bnez	a5,169d4 <_fclose_r+0x2c>
   169c4:	4422                	lw	s0,8(sp)
   169c6:	4492                	lw	s1,4(sp)
   169c8:	40b2                	lw	ra,12(sp)
   169ca:	4901                	li	s2,0
   169cc:	854a                	mv	a0,s2
   169ce:	4902                	lw	s2,0(sp)
   169d0:	0141                	addi	sp,sp,16
   169d2:	8082                	ret
   169d4:	85a2                	mv	a1,s0
   169d6:	8526                	mv	a0,s1
   169d8:	28bd                	jal	16a56 <__sflush_r>
   169da:	545c                	lw	a5,44(s0)
   169dc:	892a                	mv	s2,a0
   169de:	c791                	beqz	a5,169ea <_fclose_r+0x42>
   169e0:	4c4c                	lw	a1,28(s0)
   169e2:	8526                	mv	a0,s1
   169e4:	9782                	jalr	a5
   169e6:	04054663          	bltz	a0,16a32 <_fclose_r+0x8a>
   169ea:	00c45783          	lhu	a5,12(s0)
   169ee:	0807f793          	andi	a5,a5,128
   169f2:	e7b1                	bnez	a5,16a3e <_fclose_r+0x96>
   169f4:	580c                	lw	a1,48(s0)
   169f6:	c991                	beqz	a1,16a0a <_fclose_r+0x62>
   169f8:	04040793          	addi	a5,s0,64
   169fc:	00f58563          	beq	a1,a5,16a06 <_fclose_r+0x5e>
   16a00:	8526                	mv	a0,s1
   16a02:	b5bfd0ef          	jal	1455c <_free_r>
   16a06:	02042823          	sw	zero,48(s0)
   16a0a:	406c                	lw	a1,68(s0)
   16a0c:	c591                	beqz	a1,16a18 <_fclose_r+0x70>
   16a0e:	8526                	mv	a0,s1
   16a10:	b4dfd0ef          	jal	1455c <_free_r>
   16a14:	04042223          	sw	zero,68(s0)
   16a18:	c20fd0ef          	jal	13e38 <__sfp_lock_acquire>
   16a1c:	00041623          	sh	zero,12(s0)
   16a20:	c1afd0ef          	jal	13e3a <__sfp_lock_release>
   16a24:	40b2                	lw	ra,12(sp)
   16a26:	4422                	lw	s0,8(sp)
   16a28:	4492                	lw	s1,4(sp)
   16a2a:	854a                	mv	a0,s2
   16a2c:	4902                	lw	s2,0(sp)
   16a2e:	0141                	addi	sp,sp,16
   16a30:	8082                	ret
   16a32:	00c45783          	lhu	a5,12(s0)
   16a36:	597d                	li	s2,-1
   16a38:	0807f793          	andi	a5,a5,128
   16a3c:	dfc5                	beqz	a5,169f4 <_fclose_r+0x4c>
   16a3e:	480c                	lw	a1,16(s0)
   16a40:	8526                	mv	a0,s1
   16a42:	b1bfd0ef          	jal	1455c <_free_r>
   16a46:	b77d                	j	169f4 <_fclose_r+0x4c>
   16a48:	bdafd0ef          	jal	13e22 <__sinit>
   16a4c:	bf8d                	j	169be <_fclose_r+0x16>

00016a4e <fclose>:
   16a4e:	85aa                	mv	a1,a0
   16a50:	f141a503          	lw	a0,-236(gp) # 1f8cc <_impure_ptr>
   16a54:	bf91                	j	169a8 <_fclose_r>

00016a56 <__sflush_r>:
   16a56:	00c59703          	lh	a4,12(a1)
   16a5a:	1101                	addi	sp,sp,-32
   16a5c:	cc22                	sw	s0,24(sp)
   16a5e:	c64e                	sw	s3,12(sp)
   16a60:	ce06                	sw	ra,28(sp)
   16a62:	00877793          	andi	a5,a4,8
   16a66:	842e                	mv	s0,a1
   16a68:	89aa                	mv	s3,a0
   16a6a:	e7e1                	bnez	a5,16b32 <__sflush_r+0xdc>
   16a6c:	6785                	lui	a5,0x1
   16a6e:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   16a72:	41d4                	lw	a3,4(a1)
   16a74:	8fd9                	or	a5,a5,a4
   16a76:	00f59623          	sh	a5,12(a1)
   16a7a:	10d05563          	blez	a3,16b84 <__sflush_r+0x12e>
   16a7e:	02842803          	lw	a6,40(s0)
   16a82:	0a080263          	beqz	a6,16b26 <__sflush_r+0xd0>
   16a86:	ca26                	sw	s1,20(sp)
   16a88:	01371693          	slli	a3,a4,0x13
   16a8c:	0009a483          	lw	s1,0(s3)
   16a90:	0009a023          	sw	zero,0(s3)
   16a94:	4c4c                	lw	a1,28(s0)
   16a96:	0e06ce63          	bltz	a3,16b92 <__sflush_r+0x13c>
   16a9a:	4601                	li	a2,0
   16a9c:	4685                	li	a3,1
   16a9e:	854e                	mv	a0,s3
   16aa0:	9802                	jalr	a6
   16aa2:	57fd                	li	a5,-1
   16aa4:	862a                	mv	a2,a0
   16aa6:	10f50f63          	beq	a0,a5,16bc4 <__sflush_r+0x16e>
   16aaa:	00c41783          	lh	a5,12(s0)
   16aae:	02842803          	lw	a6,40(s0)
   16ab2:	4c4c                	lw	a1,28(s0)
   16ab4:	8b91                	andi	a5,a5,4
   16ab6:	c799                	beqz	a5,16ac4 <__sflush_r+0x6e>
   16ab8:	4058                	lw	a4,4(s0)
   16aba:	581c                	lw	a5,48(s0)
   16abc:	8e19                	sub	a2,a2,a4
   16abe:	c399                	beqz	a5,16ac4 <__sflush_r+0x6e>
   16ac0:	5c5c                	lw	a5,60(s0)
   16ac2:	8e1d                	sub	a2,a2,a5
   16ac4:	4681                	li	a3,0
   16ac6:	854e                	mv	a0,s3
   16ac8:	9802                	jalr	a6
   16aca:	57fd                	li	a5,-1
   16acc:	0cf51563          	bne	a0,a5,16b96 <__sflush_r+0x140>
   16ad0:	0009a683          	lw	a3,0(s3)
   16ad4:	47f5                	li	a5,29
   16ad6:	00c41703          	lh	a4,12(s0)
   16ada:	10d7e163          	bltu	a5,a3,16bdc <__sflush_r+0x186>
   16ade:	204007b7          	lui	a5,0x20400
   16ae2:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e03fd>
   16ae4:	00d7d7b3          	srl	a5,a5,a3
   16ae8:	8b85                	andi	a5,a5,1
   16aea:	cbed                	beqz	a5,16bdc <__sflush_r+0x186>
   16aec:	4810                	lw	a2,16(s0)
   16aee:	77fd                	lui	a5,0xfffff
   16af0:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffdfbfb>
   16af4:	8ff9                	and	a5,a5,a4
   16af6:	00f41623          	sh	a5,12(s0)
   16afa:	00042223          	sw	zero,4(s0)
   16afe:	c010                	sw	a2,0(s0)
   16b00:	01371793          	slli	a5,a4,0x13
   16b04:	0007d363          	bgez	a5,16b0a <__sflush_r+0xb4>
   16b08:	c6dd                	beqz	a3,16bb6 <__sflush_r+0x160>
   16b0a:	580c                	lw	a1,48(s0)
   16b0c:	0099a023          	sw	s1,0(s3)
   16b10:	c9c5                	beqz	a1,16bc0 <__sflush_r+0x16a>
   16b12:	04040793          	addi	a5,s0,64
   16b16:	00f58563          	beq	a1,a5,16b20 <__sflush_r+0xca>
   16b1a:	854e                	mv	a0,s3
   16b1c:	a41fd0ef          	jal	1455c <_free_r>
   16b20:	44d2                	lw	s1,20(sp)
   16b22:	02042823          	sw	zero,48(s0)
   16b26:	4501                	li	a0,0
   16b28:	40f2                	lw	ra,28(sp)
   16b2a:	4462                	lw	s0,24(sp)
   16b2c:	49b2                	lw	s3,12(sp)
   16b2e:	6105                	addi	sp,sp,32
   16b30:	8082                	ret
   16b32:	c84a                	sw	s2,16(sp)
   16b34:	0105a903          	lw	s2,16(a1)
   16b38:	04090b63          	beqz	s2,16b8e <__sflush_r+0x138>
   16b3c:	ca26                	sw	s1,20(sp)
   16b3e:	4184                	lw	s1,0(a1)
   16b40:	8b0d                	andi	a4,a4,3
   16b42:	0125a023          	sw	s2,0(a1)
   16b46:	412484b3          	sub	s1,s1,s2
   16b4a:	4781                	li	a5,0
   16b4c:	e311                	bnez	a4,16b50 <__sflush_r+0xfa>
   16b4e:	49dc                	lw	a5,20(a1)
   16b50:	c41c                	sw	a5,8(s0)
   16b52:	00904663          	bgtz	s1,16b5e <__sflush_r+0x108>
   16b56:	a81d                	j	16b8c <__sflush_r+0x136>
   16b58:	992a                	add	s2,s2,a0
   16b5a:	02905963          	blez	s1,16b8c <__sflush_r+0x136>
   16b5e:	505c                	lw	a5,36(s0)
   16b60:	4c4c                	lw	a1,28(s0)
   16b62:	86a6                	mv	a3,s1
   16b64:	864a                	mv	a2,s2
   16b66:	854e                	mv	a0,s3
   16b68:	9782                	jalr	a5
   16b6a:	8c89                	sub	s1,s1,a0
   16b6c:	fea046e3          	bgtz	a0,16b58 <__sflush_r+0x102>
   16b70:	00c41703          	lh	a4,12(s0)
   16b74:	4942                	lw	s2,16(sp)
   16b76:	04076713          	ori	a4,a4,64
   16b7a:	44d2                	lw	s1,20(sp)
   16b7c:	00e41623          	sh	a4,12(s0)
   16b80:	557d                	li	a0,-1
   16b82:	b75d                	j	16b28 <__sflush_r+0xd2>
   16b84:	5dd4                	lw	a3,60(a1)
   16b86:	eed04ce3          	bgtz	a3,16a7e <__sflush_r+0x28>
   16b8a:	bf71                	j	16b26 <__sflush_r+0xd0>
   16b8c:	44d2                	lw	s1,20(sp)
   16b8e:	4942                	lw	s2,16(sp)
   16b90:	bf59                	j	16b26 <__sflush_r+0xd0>
   16b92:	4830                	lw	a2,80(s0)
   16b94:	b705                	j	16ab4 <__sflush_r+0x5e>
   16b96:	00c41703          	lh	a4,12(s0)
   16b9a:	4814                	lw	a3,16(s0)
   16b9c:	77fd                	lui	a5,0xfffff
   16b9e:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffdfbfb>
   16ba2:	8ff9                	and	a5,a5,a4
   16ba4:	00f41623          	sh	a5,12(s0)
   16ba8:	00042223          	sw	zero,4(s0)
   16bac:	c014                	sw	a3,0(s0)
   16bae:	01371793          	slli	a5,a4,0x13
   16bb2:	f407dce3          	bgez	a5,16b0a <__sflush_r+0xb4>
   16bb6:	580c                	lw	a1,48(s0)
   16bb8:	c828                	sw	a0,80(s0)
   16bba:	0099a023          	sw	s1,0(s3)
   16bbe:	f9b1                	bnez	a1,16b12 <__sflush_r+0xbc>
   16bc0:	44d2                	lw	s1,20(sp)
   16bc2:	b795                	j	16b26 <__sflush_r+0xd0>
   16bc4:	0009a783          	lw	a5,0(s3)
   16bc8:	ee0781e3          	beqz	a5,16aaa <__sflush_r+0x54>
   16bcc:	4775                	li	a4,29
   16bce:	00e78a63          	beq	a5,a4,16be2 <__sflush_r+0x18c>
   16bd2:	4759                	li	a4,22
   16bd4:	00e78763          	beq	a5,a4,16be2 <__sflush_r+0x18c>
   16bd8:	00c41703          	lh	a4,12(s0)
   16bdc:	04076713          	ori	a4,a4,64
   16be0:	bf69                	j	16b7a <__sflush_r+0x124>
   16be2:	0099a023          	sw	s1,0(s3)
   16be6:	44d2                	lw	s1,20(sp)
   16be8:	bf3d                	j	16b26 <__sflush_r+0xd0>

00016bea <_fflush_r>:
   16bea:	1101                	addi	sp,sp,-32
   16bec:	cc22                	sw	s0,24(sp)
   16bee:	ce06                	sw	ra,28(sp)
   16bf0:	842a                	mv	s0,a0
   16bf2:	c119                	beqz	a0,16bf8 <_fflush_r+0xe>
   16bf4:	595c                	lw	a5,52(a0)
   16bf6:	cf91                	beqz	a5,16c12 <_fflush_r+0x28>
   16bf8:	00c59783          	lh	a5,12(a1)
   16bfc:	e791                	bnez	a5,16c08 <_fflush_r+0x1e>
   16bfe:	40f2                	lw	ra,28(sp)
   16c00:	4462                	lw	s0,24(sp)
   16c02:	4501                	li	a0,0
   16c04:	6105                	addi	sp,sp,32
   16c06:	8082                	ret
   16c08:	8522                	mv	a0,s0
   16c0a:	4462                	lw	s0,24(sp)
   16c0c:	40f2                	lw	ra,28(sp)
   16c0e:	6105                	addi	sp,sp,32
   16c10:	b599                	j	16a56 <__sflush_r>
   16c12:	c62e                	sw	a1,12(sp)
   16c14:	a0efd0ef          	jal	13e22 <__sinit>
   16c18:	45b2                	lw	a1,12(sp)
   16c1a:	bff9                	j	16bf8 <_fflush_r+0xe>

00016c1c <fflush>:
   16c1c:	cd05                	beqz	a0,16c54 <fflush+0x38>
   16c1e:	85aa                	mv	a1,a0
   16c20:	f141a503          	lw	a0,-236(gp) # 1f8cc <_impure_ptr>
   16c24:	c119                	beqz	a0,16c2a <fflush+0xe>
   16c26:	595c                	lw	a5,52(a0)
   16c28:	c799                	beqz	a5,16c36 <fflush+0x1a>
   16c2a:	00c59783          	lh	a5,12(a1)
   16c2e:	e399                	bnez	a5,16c34 <fflush+0x18>
   16c30:	4501                	li	a0,0
   16c32:	8082                	ret
   16c34:	b50d                	j	16a56 <__sflush_r>
   16c36:	1101                	addi	sp,sp,-32
   16c38:	c62e                	sw	a1,12(sp)
   16c3a:	c42a                	sw	a0,8(sp)
   16c3c:	ce06                	sw	ra,28(sp)
   16c3e:	9e4fd0ef          	jal	13e22 <__sinit>
   16c42:	45b2                	lw	a1,12(sp)
   16c44:	4522                	lw	a0,8(sp)
   16c46:	00c59783          	lh	a5,12(a1)
   16c4a:	e395                	bnez	a5,16c6e <fflush+0x52>
   16c4c:	40f2                	lw	ra,28(sp)
   16c4e:	4501                	li	a0,0
   16c50:	6105                	addi	sp,sp,32
   16c52:	8082                	ret
   16c54:	0001f637          	lui	a2,0x1f
   16c58:	65dd                	lui	a1,0x17
   16c5a:	0001f537          	lui	a0,0x1f
   16c5e:	1b860613          	addi	a2,a2,440 # 1f1b8 <__sglue>
   16c62:	bea58593          	addi	a1,a1,-1046 # 16bea <_fflush_r>
   16c66:	1c850513          	addi	a0,a0,456 # 1f1c8 <_impure_data>
   16c6a:	9f6fd06f          	j	13e60 <_fwalk_sglue>
   16c6e:	40f2                	lw	ra,28(sp)
   16c70:	6105                	addi	sp,sp,32
   16c72:	b3d5                	j	16a56 <__sflush_r>

00016c74 <__sfvwrite_r>:
   16c74:	461c                	lw	a5,8(a2)
   16c76:	1c078c63          	beqz	a5,16e4e <__sfvwrite_r+0x1da>
   16c7a:	00c59683          	lh	a3,12(a1)
   16c7e:	7179                	addi	sp,sp,-48
   16c80:	d422                	sw	s0,40(sp)
   16c82:	cc52                	sw	s4,24(sp)
   16c84:	c85a                	sw	s6,16(sp)
   16c86:	d606                	sw	ra,44(sp)
   16c88:	0086f793          	andi	a5,a3,8
   16c8c:	8b32                	mv	s6,a2
   16c8e:	8a2a                	mv	s4,a0
   16c90:	842e                	mv	s0,a1
   16c92:	c7ad                	beqz	a5,16cfc <__sfvwrite_r+0x88>
   16c94:	499c                	lw	a5,16(a1)
   16c96:	c3bd                	beqz	a5,16cfc <__sfvwrite_r+0x88>
   16c98:	d226                	sw	s1,36(sp)
   16c9a:	d04a                	sw	s2,32(sp)
   16c9c:	ce4e                	sw	s3,28(sp)
   16c9e:	ca56                	sw	s5,20(sp)
   16ca0:	0026f793          	andi	a5,a3,2
   16ca4:	000b2483          	lw	s1,0(s6)
   16ca8:	cbb5                	beqz	a5,16d1c <__sfvwrite_r+0xa8>
   16caa:	505c                	lw	a5,36(s0)
   16cac:	4c4c                	lw	a1,28(s0)
   16cae:	80000ab7          	lui	s5,0x80000
   16cb2:	4981                	li	s3,0
   16cb4:	4901                	li	s2,0
   16cb6:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffdfffc>
   16cba:	864e                	mv	a2,s3
   16cbc:	8552                	mv	a0,s4
   16cbe:	02090963          	beqz	s2,16cf0 <__sfvwrite_r+0x7c>
   16cc2:	86ca                	mv	a3,s2
   16cc4:	012af363          	bgeu	s5,s2,16cca <__sfvwrite_r+0x56>
   16cc8:	86d6                	mv	a3,s5
   16cca:	9782                	jalr	a5
   16ccc:	2ca05c63          	blez	a0,16fa4 <__sfvwrite_r+0x330>
   16cd0:	008b2783          	lw	a5,8(s6)
   16cd4:	99aa                	add	s3,s3,a0
   16cd6:	40a90933          	sub	s2,s2,a0
   16cda:	8f89                	sub	a5,a5,a0
   16cdc:	00fb2423          	sw	a5,8(s6)
   16ce0:	12078563          	beqz	a5,16e0a <__sfvwrite_r+0x196>
   16ce4:	505c                	lw	a5,36(s0)
   16ce6:	4c4c                	lw	a1,28(s0)
   16ce8:	864e                	mv	a2,s3
   16cea:	8552                	mv	a0,s4
   16cec:	fc091be3          	bnez	s2,16cc2 <__sfvwrite_r+0x4e>
   16cf0:	0004a983          	lw	s3,0(s1)
   16cf4:	0044a903          	lw	s2,4(s1)
   16cf8:	04a1                	addi	s1,s1,8
   16cfa:	b7c1                	j	16cba <__sfvwrite_r+0x46>
   16cfc:	85a2                	mv	a1,s0
   16cfe:	8552                	mv	a0,s4
   16d00:	21a5                	jal	17168 <__swsetup_r>
   16d02:	12051f63          	bnez	a0,16e40 <__sfvwrite_r+0x1cc>
   16d06:	00c41683          	lh	a3,12(s0)
   16d0a:	d226                	sw	s1,36(sp)
   16d0c:	d04a                	sw	s2,32(sp)
   16d0e:	ce4e                	sw	s3,28(sp)
   16d10:	ca56                	sw	s5,20(sp)
   16d12:	0026f793          	andi	a5,a3,2
   16d16:	000b2483          	lw	s1,0(s6)
   16d1a:	fbc1                	bnez	a5,16caa <__sfvwrite_r+0x36>
   16d1c:	c65e                	sw	s7,12(sp)
   16d1e:	c462                	sw	s8,8(sp)
   16d20:	0016f793          	andi	a5,a3,1
   16d24:	12079763          	bnez	a5,16e52 <__sfvwrite_r+0x1de>
   16d28:	401c                	lw	a5,0(s0)
   16d2a:	4418                	lw	a4,8(s0)
   16d2c:	80000ab7          	lui	s5,0x80000
   16d30:	c266                	sw	s9,4(sp)
   16d32:	4b81                	li	s7,0
   16d34:	4981                	li	s3,0
   16d36:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe03fb>
   16d38:	853e                	mv	a0,a5
   16d3a:	8c3a                	mv	s8,a4
   16d3c:	0a098e63          	beqz	s3,16df8 <__sfvwrite_r+0x184>
   16d40:	2006f613          	andi	a2,a3,512
   16d44:	1a060563          	beqz	a2,16eee <__sfvwrite_r+0x27a>
   16d48:	8cba                	mv	s9,a4
   16d4a:	20e9e563          	bltu	s3,a4,16f54 <__sfvwrite_r+0x2e0>
   16d4e:	4806f713          	andi	a4,a3,1152
   16d52:	c73d                	beqz	a4,16dc0 <__sfvwrite_r+0x14c>
   16d54:	4850                	lw	a2,20(s0)
   16d56:	480c                	lw	a1,16(s0)
   16d58:	00161713          	slli	a4,a2,0x1
   16d5c:	9732                	add	a4,a4,a2
   16d5e:	40b78933          	sub	s2,a5,a1
   16d62:	01f75c13          	srli	s8,a4,0x1f
   16d66:	9c3a                	add	s8,s8,a4
   16d68:	00190793          	addi	a5,s2,1
   16d6c:	401c5c13          	srai	s8,s8,0x1
   16d70:	97ce                	add	a5,a5,s3
   16d72:	8662                	mv	a2,s8
   16d74:	00fc7463          	bgeu	s8,a5,16d7c <__sfvwrite_r+0x108>
   16d78:	8c3e                	mv	s8,a5
   16d7a:	863e                	mv	a2,a5
   16d7c:	4006f693          	andi	a3,a3,1024
   16d80:	1e068963          	beqz	a3,16f72 <__sfvwrite_r+0x2fe>
   16d84:	85b2                	mv	a1,a2
   16d86:	8552                	mv	a0,s4
   16d88:	9fdfd0ef          	jal	14784 <_malloc_r>
   16d8c:	8caa                	mv	s9,a0
   16d8e:	20050e63          	beqz	a0,16faa <__sfvwrite_r+0x336>
   16d92:	480c                	lw	a1,16(s0)
   16d94:	864a                	mv	a2,s2
   16d96:	2701                	jal	17496 <memcpy>
   16d98:	00c45783          	lhu	a5,12(s0)
   16d9c:	b7f7f793          	andi	a5,a5,-1153
   16da0:	0807e793          	ori	a5,a5,128
   16da4:	00f41623          	sh	a5,12(s0)
   16da8:	012c8533          	add	a0,s9,s2
   16dac:	412c07b3          	sub	a5,s8,s2
   16db0:	01942823          	sw	s9,16(s0)
   16db4:	01842a23          	sw	s8,20(s0)
   16db8:	c008                	sw	a0,0(s0)
   16dba:	8c4e                	mv	s8,s3
   16dbc:	c41c                	sw	a5,8(s0)
   16dbe:	8cce                	mv	s9,s3
   16dc0:	8666                	mv	a2,s9
   16dc2:	85de                	mv	a1,s7
   16dc4:	2519                	jal	173ca <memmove>
   16dc6:	4418                	lw	a4,8(s0)
   16dc8:	401c                	lw	a5,0(s0)
   16dca:	894e                	mv	s2,s3
   16dcc:	41870733          	sub	a4,a4,s8
   16dd0:	97e6                	add	a5,a5,s9
   16dd2:	c418                	sw	a4,8(s0)
   16dd4:	c01c                	sw	a5,0(s0)
   16dd6:	4981                	li	s3,0
   16dd8:	008b2783          	lw	a5,8(s6)
   16ddc:	9bca                	add	s7,s7,s2
   16dde:	412787b3          	sub	a5,a5,s2
   16de2:	00fb2423          	sw	a5,8(s6)
   16de6:	cf99                	beqz	a5,16e04 <__sfvwrite_r+0x190>
   16de8:	401c                	lw	a5,0(s0)
   16dea:	4418                	lw	a4,8(s0)
   16dec:	00c41683          	lh	a3,12(s0)
   16df0:	853e                	mv	a0,a5
   16df2:	8c3a                	mv	s8,a4
   16df4:	f40996e3          	bnez	s3,16d40 <__sfvwrite_r+0xcc>
   16df8:	0004ab83          	lw	s7,0(s1)
   16dfc:	0044a983          	lw	s3,4(s1)
   16e00:	04a1                	addi	s1,s1,8
   16e02:	bf1d                	j	16d38 <__sfvwrite_r+0xc4>
   16e04:	4bb2                	lw	s7,12(sp)
   16e06:	4c22                	lw	s8,8(sp)
   16e08:	4c92                	lw	s9,4(sp)
   16e0a:	50b2                	lw	ra,44(sp)
   16e0c:	5422                	lw	s0,40(sp)
   16e0e:	5492                	lw	s1,36(sp)
   16e10:	5902                	lw	s2,32(sp)
   16e12:	49f2                	lw	s3,28(sp)
   16e14:	4ad2                	lw	s5,20(sp)
   16e16:	4a62                	lw	s4,24(sp)
   16e18:	4b42                	lw	s6,16(sp)
   16e1a:	4501                	li	a0,0
   16e1c:	6145                	addi	sp,sp,48
   16e1e:	8082                	ret
   16e20:	85a2                	mv	a1,s0
   16e22:	8552                	mv	a0,s4
   16e24:	33d9                	jal	16bea <_fflush_r>
   16e26:	c93d                	beqz	a0,16e9c <__sfvwrite_r+0x228>
   16e28:	00c41783          	lh	a5,12(s0)
   16e2c:	4bb2                	lw	s7,12(sp)
   16e2e:	4c22                	lw	s8,8(sp)
   16e30:	5492                	lw	s1,36(sp)
   16e32:	5902                	lw	s2,32(sp)
   16e34:	49f2                	lw	s3,28(sp)
   16e36:	4ad2                	lw	s5,20(sp)
   16e38:	0407e793          	ori	a5,a5,64
   16e3c:	00f41623          	sh	a5,12(s0)
   16e40:	50b2                	lw	ra,44(sp)
   16e42:	5422                	lw	s0,40(sp)
   16e44:	4a62                	lw	s4,24(sp)
   16e46:	4b42                	lw	s6,16(sp)
   16e48:	557d                	li	a0,-1
   16e4a:	6145                	addi	sp,sp,48
   16e4c:	8082                	ret
   16e4e:	4501                	li	a0,0
   16e50:	8082                	ret
   16e52:	4a81                	li	s5,0
   16e54:	4501                	li	a0,0
   16e56:	4c01                	li	s8,0
   16e58:	4981                	li	s3,0
   16e5a:	04098e63          	beqz	s3,16eb6 <__sfvwrite_r+0x242>
   16e5e:	c525                	beqz	a0,16ec6 <__sfvwrite_r+0x252>
   16e60:	87d6                	mv	a5,s5
   16e62:	8bce                	mv	s7,s3
   16e64:	0137f363          	bgeu	a5,s3,16e6a <__sfvwrite_r+0x1f6>
   16e68:	8bbe                	mv	s7,a5
   16e6a:	4008                	lw	a0,0(s0)
   16e6c:	481c                	lw	a5,16(s0)
   16e6e:	00842903          	lw	s2,8(s0)
   16e72:	4854                	lw	a3,20(s0)
   16e74:	00a7f563          	bgeu	a5,a0,16e7e <__sfvwrite_r+0x20a>
   16e78:	9936                	add	s2,s2,a3
   16e7a:	05794f63          	blt	s2,s7,16ed8 <__sfvwrite_r+0x264>
   16e7e:	0cdbce63          	blt	s7,a3,16f5a <__sfvwrite_r+0x2e6>
   16e82:	505c                	lw	a5,36(s0)
   16e84:	4c4c                	lw	a1,28(s0)
   16e86:	8662                	mv	a2,s8
   16e88:	8552                	mv	a0,s4
   16e8a:	9782                	jalr	a5
   16e8c:	892a                	mv	s2,a0
   16e8e:	f8a05de3          	blez	a0,16e28 <__sfvwrite_r+0x1b4>
   16e92:	412a8ab3          	sub	s5,s5,s2
   16e96:	4505                	li	a0,1
   16e98:	f80a84e3          	beqz	s5,16e20 <__sfvwrite_r+0x1ac>
   16e9c:	008b2783          	lw	a5,8(s6)
   16ea0:	9c4a                	add	s8,s8,s2
   16ea2:	412989b3          	sub	s3,s3,s2
   16ea6:	412787b3          	sub	a5,a5,s2
   16eaa:	00fb2423          	sw	a5,8(s6)
   16eae:	f7d5                	bnez	a5,16e5a <__sfvwrite_r+0x1e6>
   16eb0:	4bb2                	lw	s7,12(sp)
   16eb2:	4c22                	lw	s8,8(sp)
   16eb4:	bf99                	j	16e0a <__sfvwrite_r+0x196>
   16eb6:	0044a983          	lw	s3,4(s1)
   16eba:	87a6                	mv	a5,s1
   16ebc:	04a1                	addi	s1,s1,8
   16ebe:	fe098ce3          	beqz	s3,16eb6 <__sfvwrite_r+0x242>
   16ec2:	0007ac03          	lw	s8,0(a5)
   16ec6:	864e                	mv	a2,s3
   16ec8:	45a9                	li	a1,10
   16eca:	8562                	mv	a0,s8
   16ecc:	2e9d                	jal	17242 <memchr>
   16ece:	c579                	beqz	a0,16f9c <__sfvwrite_r+0x328>
   16ed0:	0505                	addi	a0,a0,1
   16ed2:	41850ab3          	sub	s5,a0,s8
   16ed6:	b769                	j	16e60 <__sfvwrite_r+0x1ec>
   16ed8:	85e2                	mv	a1,s8
   16eda:	864a                	mv	a2,s2
   16edc:	21fd                	jal	173ca <memmove>
   16ede:	401c                	lw	a5,0(s0)
   16ee0:	85a2                	mv	a1,s0
   16ee2:	8552                	mv	a0,s4
   16ee4:	97ca                	add	a5,a5,s2
   16ee6:	c01c                	sw	a5,0(s0)
   16ee8:	3309                	jal	16bea <_fflush_r>
   16eea:	d545                	beqz	a0,16e92 <__sfvwrite_r+0x21e>
   16eec:	bf35                	j	16e28 <__sfvwrite_r+0x1b4>
   16eee:	4814                	lw	a3,16(s0)
   16ef0:	02f6e863          	bltu	a3,a5,16f20 <__sfvwrite_r+0x2ac>
   16ef4:	4850                	lw	a2,20(s0)
   16ef6:	02c9e563          	bltu	s3,a2,16f20 <__sfvwrite_r+0x2ac>
   16efa:	87ce                	mv	a5,s3
   16efc:	013af363          	bgeu	s5,s3,16f02 <__sfvwrite_r+0x28e>
   16f00:	87d6                	mv	a5,s5
   16f02:	02c7e6b3          	rem	a3,a5,a2
   16f06:	5058                	lw	a4,36(s0)
   16f08:	4c4c                	lw	a1,28(s0)
   16f0a:	865e                	mv	a2,s7
   16f0c:	8552                	mv	a0,s4
   16f0e:	40d786b3          	sub	a3,a5,a3
   16f12:	9702                	jalr	a4
   16f14:	892a                	mv	s2,a0
   16f16:	02a05963          	blez	a0,16f48 <__sfvwrite_r+0x2d4>
   16f1a:	412989b3          	sub	s3,s3,s2
   16f1e:	bd6d                	j	16dd8 <__sfvwrite_r+0x164>
   16f20:	893a                	mv	s2,a4
   16f22:	00e9f363          	bgeu	s3,a4,16f28 <__sfvwrite_r+0x2b4>
   16f26:	894e                	mv	s2,s3
   16f28:	853e                	mv	a0,a5
   16f2a:	864a                	mv	a2,s2
   16f2c:	85de                	mv	a1,s7
   16f2e:	2971                	jal	173ca <memmove>
   16f30:	4418                	lw	a4,8(s0)
   16f32:	401c                	lw	a5,0(s0)
   16f34:	41270733          	sub	a4,a4,s2
   16f38:	97ca                	add	a5,a5,s2
   16f3a:	c418                	sw	a4,8(s0)
   16f3c:	c01c                	sw	a5,0(s0)
   16f3e:	ff71                	bnez	a4,16f1a <__sfvwrite_r+0x2a6>
   16f40:	85a2                	mv	a1,s0
   16f42:	8552                	mv	a0,s4
   16f44:	315d                	jal	16bea <_fflush_r>
   16f46:	d971                	beqz	a0,16f1a <__sfvwrite_r+0x2a6>
   16f48:	00c41783          	lh	a5,12(s0)
   16f4c:	4bb2                	lw	s7,12(sp)
   16f4e:	4c22                	lw	s8,8(sp)
   16f50:	4c92                	lw	s9,4(sp)
   16f52:	bdf9                	j	16e30 <__sfvwrite_r+0x1bc>
   16f54:	8c4e                	mv	s8,s3
   16f56:	8cce                	mv	s9,s3
   16f58:	b5a5                	j	16dc0 <__sfvwrite_r+0x14c>
   16f5a:	865e                	mv	a2,s7
   16f5c:	85e2                	mv	a1,s8
   16f5e:	21b5                	jal	173ca <memmove>
   16f60:	4418                	lw	a4,8(s0)
   16f62:	401c                	lw	a5,0(s0)
   16f64:	895e                	mv	s2,s7
   16f66:	41770733          	sub	a4,a4,s7
   16f6a:	97de                	add	a5,a5,s7
   16f6c:	c418                	sw	a4,8(s0)
   16f6e:	c01c                	sw	a5,0(s0)
   16f70:	b70d                	j	16e92 <__sfvwrite_r+0x21e>
   16f72:	8552                	mv	a0,s4
   16f74:	113020ef          	jal	19886 <_realloc_r>
   16f78:	8caa                	mv	s9,a0
   16f7a:	e20517e3          	bnez	a0,16da8 <__sfvwrite_r+0x134>
   16f7e:	480c                	lw	a1,16(s0)
   16f80:	8552                	mv	a0,s4
   16f82:	ddafd0ef          	jal	1455c <_free_r>
   16f86:	00c41783          	lh	a5,12(s0)
   16f8a:	4731                	li	a4,12
   16f8c:	4bb2                	lw	s7,12(sp)
   16f8e:	4c22                	lw	s8,8(sp)
   16f90:	4c92                	lw	s9,4(sp)
   16f92:	00ea2023          	sw	a4,0(s4)
   16f96:	f7f7f793          	andi	a5,a5,-129
   16f9a:	bd59                	j	16e30 <__sfvwrite_r+0x1bc>
   16f9c:	00198793          	addi	a5,s3,1
   16fa0:	8abe                	mv	s5,a5
   16fa2:	b5c1                	j	16e62 <__sfvwrite_r+0x1ee>
   16fa4:	00c41783          	lh	a5,12(s0)
   16fa8:	b561                	j	16e30 <__sfvwrite_r+0x1bc>
   16faa:	4731                	li	a4,12
   16fac:	00c41783          	lh	a5,12(s0)
   16fb0:	4bb2                	lw	s7,12(sp)
   16fb2:	4c22                	lw	s8,8(sp)
   16fb4:	4c92                	lw	s9,4(sp)
   16fb6:	00ea2023          	sw	a4,0(s4)
   16fba:	bd9d                	j	16e30 <__sfvwrite_r+0x1bc>

00016fbc <_putc_r>:
   16fbc:	1101                	addi	sp,sp,-32
   16fbe:	cc22                	sw	s0,24(sp)
   16fc0:	ce06                	sw	ra,28(sp)
   16fc2:	842a                	mv	s0,a0
   16fc4:	c119                	beqz	a0,16fca <_putc_r+0xe>
   16fc6:	595c                	lw	a5,52(a0)
   16fc8:	cf9d                	beqz	a5,17006 <_putc_r+0x4a>
   16fca:	461c                	lw	a5,8(a2)
   16fcc:	17fd                	addi	a5,a5,-1
   16fce:	c61c                	sw	a5,8(a2)
   16fd0:	0007da63          	bgez	a5,16fe4 <_putc_r+0x28>
   16fd4:	4e18                	lw	a4,24(a2)
   16fd6:	02e7c363          	blt	a5,a4,16ffc <_putc_r+0x40>
   16fda:	0ff5f793          	zext.b	a5,a1
   16fde:	4729                	li	a4,10
   16fe0:	00e78e63          	beq	a5,a4,16ffc <_putc_r+0x40>
   16fe4:	421c                	lw	a5,0(a2)
   16fe6:	0ff5f513          	zext.b	a0,a1
   16fea:	00178713          	addi	a4,a5,1
   16fee:	c218                	sw	a4,0(a2)
   16ff0:	00b78023          	sb	a1,0(a5)
   16ff4:	40f2                	lw	ra,28(sp)
   16ff6:	4462                	lw	s0,24(sp)
   16ff8:	6105                	addi	sp,sp,32
   16ffa:	8082                	ret
   16ffc:	8522                	mv	a0,s0
   16ffe:	4462                	lw	s0,24(sp)
   17000:	40f2                	lw	ra,28(sp)
   17002:	6105                	addi	sp,sp,32
   17004:	a8a5                	j	1707c <__swbuf_r>
   17006:	c632                	sw	a2,12(sp)
   17008:	c42e                	sw	a1,8(sp)
   1700a:	e19fc0ef          	jal	13e22 <__sinit>
   1700e:	4632                	lw	a2,12(sp)
   17010:	45a2                	lw	a1,8(sp)
   17012:	bf65                	j	16fca <_putc_r+0xe>

00017014 <putc>:
   17014:	1101                	addi	sp,sp,-32
   17016:	ca4a                	sw	s2,20(sp)
   17018:	f141a903          	lw	s2,-236(gp) # 1f8cc <_impure_ptr>
   1701c:	cc26                	sw	s1,24(sp)
   1701e:	ce06                	sw	ra,28(sp)
   17020:	84aa                	mv	s1,a0
   17022:	00090563          	beqz	s2,1702c <putc+0x18>
   17026:	03492783          	lw	a5,52(s2)
   1702a:	c3b9                	beqz	a5,17070 <putc+0x5c>
   1702c:	459c                	lw	a5,8(a1)
   1702e:	17fd                	addi	a5,a5,-1
   17030:	c59c                	sw	a5,8(a1)
   17032:	0007da63          	bgez	a5,17046 <putc+0x32>
   17036:	4d98                	lw	a4,24(a1)
   17038:	02e7c463          	blt	a5,a4,17060 <putc+0x4c>
   1703c:	0ff4f793          	zext.b	a5,s1
   17040:	4729                	li	a4,10
   17042:	00e78f63          	beq	a5,a4,17060 <putc+0x4c>
   17046:	419c                	lw	a5,0(a1)
   17048:	0ff4f513          	zext.b	a0,s1
   1704c:	00178713          	addi	a4,a5,1
   17050:	c198                	sw	a4,0(a1)
   17052:	00978023          	sb	s1,0(a5)
   17056:	40f2                	lw	ra,28(sp)
   17058:	44e2                	lw	s1,24(sp)
   1705a:	4952                	lw	s2,20(sp)
   1705c:	6105                	addi	sp,sp,32
   1705e:	8082                	ret
   17060:	40f2                	lw	ra,28(sp)
   17062:	862e                	mv	a2,a1
   17064:	854a                	mv	a0,s2
   17066:	85a6                	mv	a1,s1
   17068:	4952                	lw	s2,20(sp)
   1706a:	44e2                	lw	s1,24(sp)
   1706c:	6105                	addi	sp,sp,32
   1706e:	a039                	j	1707c <__swbuf_r>
   17070:	854a                	mv	a0,s2
   17072:	c62e                	sw	a1,12(sp)
   17074:	daffc0ef          	jal	13e22 <__sinit>
   17078:	45b2                	lw	a1,12(sp)
   1707a:	bf4d                	j	1702c <putc+0x18>

0001707c <__swbuf_r>:
   1707c:	1101                	addi	sp,sp,-32
   1707e:	cc22                	sw	s0,24(sp)
   17080:	ca26                	sw	s1,20(sp)
   17082:	c84a                	sw	s2,16(sp)
   17084:	ce06                	sw	ra,28(sp)
   17086:	892a                	mv	s2,a0
   17088:	84ae                	mv	s1,a1
   1708a:	8432                	mv	s0,a2
   1708c:	c119                	beqz	a0,17092 <__swbuf_r+0x16>
   1708e:	595c                	lw	a5,52(a0)
   17090:	c3f9                	beqz	a5,17156 <__swbuf_r+0xda>
   17092:	4c18                	lw	a4,24(s0)
   17094:	00c41783          	lh	a5,12(s0)
   17098:	c418                	sw	a4,8(s0)
   1709a:	0087f713          	andi	a4,a5,8
   1709e:	c325                	beqz	a4,170fe <__swbuf_r+0x82>
   170a0:	4818                	lw	a4,16(s0)
   170a2:	cf31                	beqz	a4,170fe <__swbuf_r+0x82>
   170a4:	c64e                	sw	s3,12(sp)
   170a6:	01279693          	slli	a3,a5,0x12
   170aa:	0ff4f993          	zext.b	s3,s1
   170ae:	5078                	lw	a4,100(s0)
   170b0:	0ff4f493          	zext.b	s1,s1
   170b4:	0606d563          	bgez	a3,1711e <__swbuf_r+0xa2>
   170b8:	01271793          	slli	a5,a4,0x12
   170bc:	0807c263          	bltz	a5,17140 <__swbuf_r+0xc4>
   170c0:	4018                	lw	a4,0(s0)
   170c2:	481c                	lw	a5,16(s0)
   170c4:	4854                	lw	a3,20(s0)
   170c6:	40f707b3          	sub	a5,a4,a5
   170ca:	06d7de63          	bge	a5,a3,17146 <__swbuf_r+0xca>
   170ce:	0785                	addi	a5,a5,1
   170d0:	4414                	lw	a3,8(s0)
   170d2:	00170613          	addi	a2,a4,1
   170d6:	c010                	sw	a2,0(s0)
   170d8:	16fd                	addi	a3,a3,-1
   170da:	c414                	sw	a3,8(s0)
   170dc:	01370023          	sb	s3,0(a4)
   170e0:	4858                	lw	a4,20(s0)
   170e2:	04f70a63          	beq	a4,a5,17136 <__swbuf_r+0xba>
   170e6:	00c45783          	lhu	a5,12(s0)
   170ea:	8b85                	andi	a5,a5,1
   170ec:	e3b1                	bnez	a5,17130 <__swbuf_r+0xb4>
   170ee:	49b2                	lw	s3,12(sp)
   170f0:	40f2                	lw	ra,28(sp)
   170f2:	4462                	lw	s0,24(sp)
   170f4:	4942                	lw	s2,16(sp)
   170f6:	8526                	mv	a0,s1
   170f8:	44d2                	lw	s1,20(sp)
   170fa:	6105                	addi	sp,sp,32
   170fc:	8082                	ret
   170fe:	85a2                	mv	a1,s0
   17100:	854a                	mv	a0,s2
   17102:	209d                	jal	17168 <__swsetup_r>
   17104:	ed1d                	bnez	a0,17142 <__swbuf_r+0xc6>
   17106:	00c41783          	lh	a5,12(s0)
   1710a:	c64e                	sw	s3,12(sp)
   1710c:	5078                	lw	a4,100(s0)
   1710e:	01279693          	slli	a3,a5,0x12
   17112:	0ff4f993          	zext.b	s3,s1
   17116:	0ff4f493          	zext.b	s1,s1
   1711a:	f806cfe3          	bltz	a3,170b8 <__swbuf_r+0x3c>
   1711e:	76f9                	lui	a3,0xffffe
   17120:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffde3fb>
   17122:	6609                	lui	a2,0x2
   17124:	8fd1                	or	a5,a5,a2
   17126:	8f75                	and	a4,a4,a3
   17128:	00f41623          	sh	a5,12(s0)
   1712c:	d078                	sw	a4,100(s0)
   1712e:	b769                	j	170b8 <__swbuf_r+0x3c>
   17130:	47a9                	li	a5,10
   17132:	faf49ee3          	bne	s1,a5,170ee <__swbuf_r+0x72>
   17136:	85a2                	mv	a1,s0
   17138:	854a                	mv	a0,s2
   1713a:	ab1ff0ef          	jal	16bea <_fflush_r>
   1713e:	d945                	beqz	a0,170ee <__swbuf_r+0x72>
   17140:	49b2                	lw	s3,12(sp)
   17142:	54fd                	li	s1,-1
   17144:	b775                	j	170f0 <__swbuf_r+0x74>
   17146:	85a2                	mv	a1,s0
   17148:	854a                	mv	a0,s2
   1714a:	aa1ff0ef          	jal	16bea <_fflush_r>
   1714e:	f96d                	bnez	a0,17140 <__swbuf_r+0xc4>
   17150:	4018                	lw	a4,0(s0)
   17152:	4785                	li	a5,1
   17154:	bfb5                	j	170d0 <__swbuf_r+0x54>
   17156:	ccdfc0ef          	jal	13e22 <__sinit>
   1715a:	bf25                	j	17092 <__swbuf_r+0x16>

0001715c <__swbuf>:
   1715c:	87aa                	mv	a5,a0
   1715e:	f141a503          	lw	a0,-236(gp) # 1f8cc <_impure_ptr>
   17162:	862e                	mv	a2,a1
   17164:	85be                	mv	a1,a5
   17166:	bf19                	j	1707c <__swbuf_r>

00017168 <__swsetup_r>:
   17168:	f141a783          	lw	a5,-236(gp) # 1f8cc <_impure_ptr>
   1716c:	1141                	addi	sp,sp,-16
   1716e:	c422                	sw	s0,8(sp)
   17170:	c226                	sw	s1,4(sp)
   17172:	c606                	sw	ra,12(sp)
   17174:	84aa                	mv	s1,a0
   17176:	842e                	mv	s0,a1
   17178:	c399                	beqz	a5,1717e <__swsetup_r+0x16>
   1717a:	5bd8                	lw	a4,52(a5)
   1717c:	c75d                	beqz	a4,1722a <__swsetup_r+0xc2>
   1717e:	00c41783          	lh	a5,12(s0)
   17182:	0087f713          	andi	a4,a5,8
   17186:	c721                	beqz	a4,171ce <__swsetup_r+0x66>
   17188:	4818                	lw	a4,16(s0)
   1718a:	cf31                	beqz	a4,171e6 <__swsetup_r+0x7e>
   1718c:	0017f693          	andi	a3,a5,1
   17190:	ce91                	beqz	a3,171ac <__swsetup_r+0x44>
   17192:	4854                	lw	a3,20(s0)
   17194:	00042423          	sw	zero,8(s0)
   17198:	4501                	li	a0,0
   1719a:	40d006b3          	neg	a3,a3
   1719e:	cc14                	sw	a3,24(s0)
   171a0:	cf11                	beqz	a4,171bc <__swsetup_r+0x54>
   171a2:	40b2                	lw	ra,12(sp)
   171a4:	4422                	lw	s0,8(sp)
   171a6:	4492                	lw	s1,4(sp)
   171a8:	0141                	addi	sp,sp,16
   171aa:	8082                	ret
   171ac:	0027f693          	andi	a3,a5,2
   171b0:	4601                	li	a2,0
   171b2:	e291                	bnez	a3,171b6 <__swsetup_r+0x4e>
   171b4:	4850                	lw	a2,20(s0)
   171b6:	c410                	sw	a2,8(s0)
   171b8:	4501                	li	a0,0
   171ba:	f765                	bnez	a4,171a2 <__swsetup_r+0x3a>
   171bc:	0807f713          	andi	a4,a5,128
   171c0:	d36d                	beqz	a4,171a2 <__swsetup_r+0x3a>
   171c2:	0407e793          	ori	a5,a5,64
   171c6:	00f41623          	sh	a5,12(s0)
   171ca:	557d                	li	a0,-1
   171cc:	bfd9                	j	171a2 <__swsetup_r+0x3a>
   171ce:	0107f713          	andi	a4,a5,16
   171d2:	c325                	beqz	a4,17232 <__swsetup_r+0xca>
   171d4:	0047f713          	andi	a4,a5,4
   171d8:	e70d                	bnez	a4,17202 <__swsetup_r+0x9a>
   171da:	4818                	lw	a4,16(s0)
   171dc:	0087e793          	ori	a5,a5,8
   171e0:	00f41623          	sh	a5,12(s0)
   171e4:	f745                	bnez	a4,1718c <__swsetup_r+0x24>
   171e6:	2807f693          	andi	a3,a5,640
   171ea:	20000613          	li	a2,512
   171ee:	f8c68fe3          	beq	a3,a2,1718c <__swsetup_r+0x24>
   171f2:	85a2                	mv	a1,s0
   171f4:	8526                	mv	a0,s1
   171f6:	26d020ef          	jal	19c62 <__smakebuf_r>
   171fa:	00c41783          	lh	a5,12(s0)
   171fe:	4818                	lw	a4,16(s0)
   17200:	b771                	j	1718c <__swsetup_r+0x24>
   17202:	580c                	lw	a1,48(s0)
   17204:	cd81                	beqz	a1,1721c <__swsetup_r+0xb4>
   17206:	04040713          	addi	a4,s0,64
   1720a:	00e58763          	beq	a1,a4,17218 <__swsetup_r+0xb0>
   1720e:	8526                	mv	a0,s1
   17210:	b4cfd0ef          	jal	1455c <_free_r>
   17214:	00c41783          	lh	a5,12(s0)
   17218:	02042823          	sw	zero,48(s0)
   1721c:	4818                	lw	a4,16(s0)
   1721e:	fdb7f793          	andi	a5,a5,-37
   17222:	00042223          	sw	zero,4(s0)
   17226:	c018                	sw	a4,0(s0)
   17228:	bf55                	j	171dc <__swsetup_r+0x74>
   1722a:	853e                	mv	a0,a5
   1722c:	bf7fc0ef          	jal	13e22 <__sinit>
   17230:	b7b9                	j	1717e <__swsetup_r+0x16>
   17232:	4725                	li	a4,9
   17234:	c098                	sw	a4,0(s1)
   17236:	0407e793          	ori	a5,a5,64
   1723a:	00f41623          	sh	a5,12(s0)
   1723e:	557d                	li	a0,-1
   17240:	b78d                	j	171a2 <__swsetup_r+0x3a>

00017242 <memchr>:
   17242:	00357793          	andi	a5,a0,3
   17246:	0ff5f693          	zext.b	a3,a1
   1724a:	c395                	beqz	a5,1726e <memchr+0x2c>
   1724c:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   17250:	c605                	beqz	a2,17278 <memchr+0x36>
   17252:	567d                	li	a2,-1
   17254:	a801                	j	17264 <memchr+0x22>
   17256:	0505                	addi	a0,a0,1
   17258:	00357713          	andi	a4,a0,3
   1725c:	cb11                	beqz	a4,17270 <memchr+0x2e>
   1725e:	17fd                	addi	a5,a5,-1
   17260:	00c78c63          	beq	a5,a2,17278 <memchr+0x36>
   17264:	00054703          	lbu	a4,0(a0)
   17268:	fed717e3          	bne	a4,a3,17256 <memchr+0x14>
   1726c:	8082                	ret
   1726e:	87b2                	mv	a5,a2
   17270:	470d                	li	a4,3
   17272:	00f76563          	bltu	a4,a5,1727c <memchr+0x3a>
   17276:	e3b9                	bnez	a5,172bc <memchr+0x7a>
   17278:	4501                	li	a0,0
   1727a:	8082                	ret
   1727c:	0ff5f593          	zext.b	a1,a1
   17280:	00859713          	slli	a4,a1,0x8
   17284:	95ba                	add	a1,a1,a4
   17286:	01059713          	slli	a4,a1,0x10
   1728a:	feff08b7          	lui	a7,0xfeff0
   1728e:	80808837          	lui	a6,0x80808
   17292:	95ba                	add	a1,a1,a4
   17294:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd02fb>
   17298:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807e847c>
   1729c:	430d                	li	t1,3
   1729e:	a029                	j	172a8 <memchr+0x66>
   172a0:	17f1                	addi	a5,a5,-4
   172a2:	0511                	addi	a0,a0,4
   172a4:	fcf379e3          	bgeu	t1,a5,17276 <memchr+0x34>
   172a8:	4118                	lw	a4,0(a0)
   172aa:	8f2d                	xor	a4,a4,a1
   172ac:	01170633          	add	a2,a4,a7
   172b0:	fff74713          	not	a4,a4
   172b4:	8f71                	and	a4,a4,a2
   172b6:	01077733          	and	a4,a4,a6
   172ba:	d37d                	beqz	a4,172a0 <memchr+0x5e>
   172bc:	97aa                	add	a5,a5,a0
   172be:	a021                	j	172c6 <memchr+0x84>
   172c0:	0505                	addi	a0,a0,1
   172c2:	faa78be3          	beq	a5,a0,17278 <memchr+0x36>
   172c6:	00054703          	lbu	a4,0(a0)
   172ca:	fed71be3          	bne	a4,a3,172c0 <memchr+0x7e>
   172ce:	8082                	ret

000172d0 <strncpy>:
   172d0:	00a5e7b3          	or	a5,a1,a0
   172d4:	8b8d                	andi	a5,a5,3
   172d6:	e781                	bnez	a5,172de <strncpy+0xe>
   172d8:	478d                	li	a5,3
   172da:	02c7eb63          	bltu	a5,a2,17310 <strncpy+0x40>
   172de:	872a                	mv	a4,a0
   172e0:	a811                	j	172f4 <strncpy+0x24>
   172e2:	fff5c683          	lbu	a3,-1(a1)
   172e6:	fff60813          	addi	a6,a2,-1
   172ea:	fed78fa3          	sb	a3,-1(a5)
   172ee:	ca81                	beqz	a3,172fe <strncpy+0x2e>
   172f0:	873e                	mv	a4,a5
   172f2:	8642                	mv	a2,a6
   172f4:	0585                	addi	a1,a1,1
   172f6:	00170793          	addi	a5,a4,1
   172fa:	f665                	bnez	a2,172e2 <strncpy+0x12>
   172fc:	8082                	ret
   172fe:	9732                	add	a4,a4,a2
   17300:	04080463          	beqz	a6,17348 <strncpy+0x78>
   17304:	0785                	addi	a5,a5,1
   17306:	fe078fa3          	sb	zero,-1(a5)
   1730a:	fee79de3          	bne	a5,a4,17304 <strncpy+0x34>
   1730e:	8082                	ret
   17310:	feff0337          	lui	t1,0xfeff0
   17314:	808088b7          	lui	a7,0x80808
   17318:	872a                	mv	a4,a0
   1731a:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd02fb>
   1731e:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e847c>
   17322:	4e0d                	li	t3,3
   17324:	a039                	j	17332 <strncpy+0x62>
   17326:	c314                	sw	a3,0(a4)
   17328:	1671                	addi	a2,a2,-4
   1732a:	0711                	addi	a4,a4,4
   1732c:	0591                	addi	a1,a1,4
   1732e:	fcce73e3          	bgeu	t3,a2,172f4 <strncpy+0x24>
   17332:	4194                	lw	a3,0(a1)
   17334:	006687b3          	add	a5,a3,t1
   17338:	fff6c813          	not	a6,a3
   1733c:	0107f7b3          	and	a5,a5,a6
   17340:	0117f7b3          	and	a5,a5,a7
   17344:	d3ed                	beqz	a5,17326 <strncpy+0x56>
   17346:	b77d                	j	172f4 <strncpy+0x24>
   17348:	8082                	ret

0001734a <__localeconv_l>:
   1734a:	0f050513          	addi	a0,a0,240
   1734e:	8082                	ret

00017350 <_localeconv_r>:
   17350:	e2818513          	addi	a0,gp,-472 # 1f7e0 <__global_locale+0xf0>
   17354:	8082                	ret

00017356 <localeconv>:
   17356:	e2818513          	addi	a0,gp,-472 # 1f7e0 <__global_locale+0xf0>
   1735a:	8082                	ret

0001735c <_sbrk_r>:
   1735c:	1141                	addi	sp,sp,-16
   1735e:	c422                	sw	s0,8(sp)
   17360:	c226                	sw	s1,4(sp)
   17362:	842a                	mv	s0,a0
   17364:	852e                	mv	a0,a1
   17366:	c606                	sw	ra,12(sp)
   17368:	f201a223          	sw	zero,-220(gp) # 1f8dc <errno>
   1736c:	7f7030ef          	jal	1b362 <_sbrk>
   17370:	57fd                	li	a5,-1
   17372:	00f50763          	beq	a0,a5,17380 <_sbrk_r+0x24>
   17376:	40b2                	lw	ra,12(sp)
   17378:	4422                	lw	s0,8(sp)
   1737a:	4492                	lw	s1,4(sp)
   1737c:	0141                	addi	sp,sp,16
   1737e:	8082                	ret
   17380:	f241a783          	lw	a5,-220(gp) # 1f8dc <errno>
   17384:	dbed                	beqz	a5,17376 <_sbrk_r+0x1a>
   17386:	40b2                	lw	ra,12(sp)
   17388:	c01c                	sw	a5,0(s0)
   1738a:	4422                	lw	s0,8(sp)
   1738c:	4492                	lw	s1,4(sp)
   1738e:	0141                	addi	sp,sp,16
   17390:	8082                	ret

00017392 <__libc_fini_array>:
   17392:	1141                	addi	sp,sp,-16
   17394:	c422                	sw	s0,8(sp)
   17396:	0001f7b7          	lui	a5,0x1f
   1739a:	0001f437          	lui	s0,0x1f
   1739e:	1b478793          	addi	a5,a5,436 # 1f1b4 <__do_global_dtors_aux_fini_array_entry>
   173a2:	1b840413          	addi	s0,s0,440 # 1f1b8 <__sglue>
   173a6:	8c1d                	sub	s0,s0,a5
   173a8:	c226                	sw	s1,4(sp)
   173aa:	c606                	sw	ra,12(sp)
   173ac:	40245493          	srai	s1,s0,0x2
   173b0:	c881                	beqz	s1,173c0 <__libc_fini_array+0x2e>
   173b2:	1471                	addi	s0,s0,-4
   173b4:	943e                	add	s0,s0,a5
   173b6:	401c                	lw	a5,0(s0)
   173b8:	14fd                	addi	s1,s1,-1
   173ba:	1471                	addi	s0,s0,-4
   173bc:	9782                	jalr	a5
   173be:	fce5                	bnez	s1,173b6 <__libc_fini_array+0x24>
   173c0:	40b2                	lw	ra,12(sp)
   173c2:	4422                	lw	s0,8(sp)
   173c4:	4492                	lw	s1,4(sp)
   173c6:	0141                	addi	sp,sp,16
   173c8:	8082                	ret

000173ca <memmove>:
   173ca:	02a5f263          	bgeu	a1,a0,173ee <memmove+0x24>
   173ce:	00c58733          	add	a4,a1,a2
   173d2:	00e57e63          	bgeu	a0,a4,173ee <memmove+0x24>
   173d6:	00c507b3          	add	a5,a0,a2
   173da:	ca1d                	beqz	a2,17410 <memmove+0x46>
   173dc:	fff74683          	lbu	a3,-1(a4)
   173e0:	17fd                	addi	a5,a5,-1
   173e2:	177d                	addi	a4,a4,-1
   173e4:	00d78023          	sb	a3,0(a5)
   173e8:	fef51ae3          	bne	a0,a5,173dc <memmove+0x12>
   173ec:	8082                	ret
   173ee:	47bd                	li	a5,15
   173f0:	02c7e163          	bltu	a5,a2,17412 <memmove+0x48>
   173f4:	87aa                	mv	a5,a0
   173f6:	fff60693          	addi	a3,a2,-1
   173fa:	ca59                	beqz	a2,17490 <memmove+0xc6>
   173fc:	0685                	addi	a3,a3,1
   173fe:	96be                	add	a3,a3,a5
   17400:	0005c703          	lbu	a4,0(a1)
   17404:	0785                	addi	a5,a5,1
   17406:	0585                	addi	a1,a1,1
   17408:	fee78fa3          	sb	a4,-1(a5)
   1740c:	fed79ae3          	bne	a5,a3,17400 <memmove+0x36>
   17410:	8082                	ret
   17412:	00b567b3          	or	a5,a0,a1
   17416:	8b8d                	andi	a5,a5,3
   17418:	eba5                	bnez	a5,17488 <memmove+0xbe>
   1741a:	ff060893          	addi	a7,a2,-16
   1741e:	ff08f893          	andi	a7,a7,-16
   17422:	08c1                	addi	a7,a7,16
   17424:	011506b3          	add	a3,a0,a7
   17428:	872e                	mv	a4,a1
   1742a:	87aa                	mv	a5,a0
   1742c:	00072803          	lw	a6,0(a4)
   17430:	0741                	addi	a4,a4,16
   17432:	07c1                	addi	a5,a5,16
   17434:	ff07a823          	sw	a6,-16(a5)
   17438:	ff472803          	lw	a6,-12(a4)
   1743c:	ff07aa23          	sw	a6,-12(a5)
   17440:	ff872803          	lw	a6,-8(a4)
   17444:	ff07ac23          	sw	a6,-8(a5)
   17448:	ffc72803          	lw	a6,-4(a4)
   1744c:	ff07ae23          	sw	a6,-4(a5)
   17450:	fcd79ee3          	bne	a5,a3,1742c <memmove+0x62>
   17454:	00c67813          	andi	a6,a2,12
   17458:	95c6                	add	a1,a1,a7
   1745a:	00f67713          	andi	a4,a2,15
   1745e:	02080a63          	beqz	a6,17492 <memmove+0xc8>
   17462:	ffc70813          	addi	a6,a4,-4
   17466:	ffc87813          	andi	a6,a6,-4
   1746a:	0811                	addi	a6,a6,4
   1746c:	010687b3          	add	a5,a3,a6
   17470:	872e                	mv	a4,a1
   17472:	00072883          	lw	a7,0(a4)
   17476:	0691                	addi	a3,a3,4
   17478:	0711                	addi	a4,a4,4
   1747a:	ff16ae23          	sw	a7,-4(a3)
   1747e:	fef69ae3          	bne	a3,a5,17472 <memmove+0xa8>
   17482:	8a0d                	andi	a2,a2,3
   17484:	95c2                	add	a1,a1,a6
   17486:	bf85                	j	173f6 <memmove+0x2c>
   17488:	fff60693          	addi	a3,a2,-1
   1748c:	87aa                	mv	a5,a0
   1748e:	b7bd                	j	173fc <memmove+0x32>
   17490:	8082                	ret
   17492:	863a                	mv	a2,a4
   17494:	b78d                	j	173f6 <memmove+0x2c>

00017496 <memcpy>:
   17496:	00a5c7b3          	xor	a5,a1,a0
   1749a:	8b8d                	andi	a5,a5,3
   1749c:	00c508b3          	add	a7,a0,a2
   174a0:	e7b1                	bnez	a5,174ec <memcpy+0x56>
   174a2:	478d                	li	a5,3
   174a4:	04c7f463          	bgeu	a5,a2,174ec <memcpy+0x56>
   174a8:	00357793          	andi	a5,a0,3
   174ac:	872a                	mv	a4,a0
   174ae:	ebb9                	bnez	a5,17504 <memcpy+0x6e>
   174b0:	ffc8f613          	andi	a2,a7,-4
   174b4:	40e606b3          	sub	a3,a2,a4
   174b8:	02000793          	li	a5,32
   174bc:	06d7c863          	blt	a5,a3,1752c <memcpy+0x96>
   174c0:	86ae                	mv	a3,a1
   174c2:	87ba                	mv	a5,a4
   174c4:	02c77163          	bgeu	a4,a2,174e6 <memcpy+0x50>
   174c8:	0006a803          	lw	a6,0(a3)
   174cc:	0791                	addi	a5,a5,4
   174ce:	0691                	addi	a3,a3,4
   174d0:	ff07ae23          	sw	a6,-4(a5)
   174d4:	fec7eae3          	bltu	a5,a2,174c8 <memcpy+0x32>
   174d8:	fff60793          	addi	a5,a2,-1
   174dc:	8f99                	sub	a5,a5,a4
   174de:	9bf1                	andi	a5,a5,-4
   174e0:	0791                	addi	a5,a5,4
   174e2:	973e                	add	a4,a4,a5
   174e4:	95be                	add	a1,a1,a5
   174e6:	01176663          	bltu	a4,a7,174f2 <memcpy+0x5c>
   174ea:	8082                	ret
   174ec:	872a                	mv	a4,a0
   174ee:	03157e63          	bgeu	a0,a7,1752a <memcpy+0x94>
   174f2:	0005c783          	lbu	a5,0(a1)
   174f6:	0705                	addi	a4,a4,1
   174f8:	0585                	addi	a1,a1,1
   174fa:	fef70fa3          	sb	a5,-1(a4)
   174fe:	fee89ae3          	bne	a7,a4,174f2 <memcpy+0x5c>
   17502:	8082                	ret
   17504:	0005c683          	lbu	a3,0(a1)
   17508:	0705                	addi	a4,a4,1
   1750a:	00377793          	andi	a5,a4,3
   1750e:	fed70fa3          	sb	a3,-1(a4)
   17512:	0585                	addi	a1,a1,1
   17514:	dfd1                	beqz	a5,174b0 <memcpy+0x1a>
   17516:	0005c683          	lbu	a3,0(a1)
   1751a:	0705                	addi	a4,a4,1
   1751c:	00377793          	andi	a5,a4,3
   17520:	fed70fa3          	sb	a3,-1(a4)
   17524:	0585                	addi	a1,a1,1
   17526:	fff9                	bnez	a5,17504 <memcpy+0x6e>
   17528:	b761                	j	174b0 <memcpy+0x1a>
   1752a:	8082                	ret
   1752c:	1141                	addi	sp,sp,-16
   1752e:	c622                	sw	s0,12(sp)
   17530:	02000413          	li	s0,32
   17534:	0005a383          	lw	t2,0(a1)
   17538:	0045a283          	lw	t0,4(a1)
   1753c:	0085af83          	lw	t6,8(a1)
   17540:	00c5af03          	lw	t5,12(a1)
   17544:	0105ae83          	lw	t4,16(a1)
   17548:	0145ae03          	lw	t3,20(a1)
   1754c:	0185a303          	lw	t1,24(a1)
   17550:	01c5a803          	lw	a6,28(a1)
   17554:	5194                	lw	a3,32(a1)
   17556:	02470713          	addi	a4,a4,36
   1755a:	40e607b3          	sub	a5,a2,a4
   1755e:	fc772e23          	sw	t2,-36(a4)
   17562:	fe572023          	sw	t0,-32(a4)
   17566:	fff72223          	sw	t6,-28(a4)
   1756a:	ffe72423          	sw	t5,-24(a4)
   1756e:	ffd72623          	sw	t4,-20(a4)
   17572:	ffc72823          	sw	t3,-16(a4)
   17576:	fe672a23          	sw	t1,-12(a4)
   1757a:	ff072c23          	sw	a6,-8(a4)
   1757e:	fed72e23          	sw	a3,-4(a4)
   17582:	02458593          	addi	a1,a1,36
   17586:	faf447e3          	blt	s0,a5,17534 <memcpy+0x9e>
   1758a:	86ae                	mv	a3,a1
   1758c:	87ba                	mv	a5,a4
   1758e:	02c77163          	bgeu	a4,a2,175b0 <memcpy+0x11a>
   17592:	0006a803          	lw	a6,0(a3)
   17596:	0791                	addi	a5,a5,4
   17598:	0691                	addi	a3,a3,4
   1759a:	ff07ae23          	sw	a6,-4(a5)
   1759e:	fec7eae3          	bltu	a5,a2,17592 <memcpy+0xfc>
   175a2:	fff60793          	addi	a5,a2,-1
   175a6:	8f99                	sub	a5,a5,a4
   175a8:	9bf1                	andi	a5,a5,-4
   175aa:	0791                	addi	a5,a5,4
   175ac:	973e                	add	a4,a4,a5
   175ae:	95be                	add	a1,a1,a5
   175b0:	01176563          	bltu	a4,a7,175ba <memcpy+0x124>
   175b4:	4432                	lw	s0,12(sp)
   175b6:	0141                	addi	sp,sp,16
   175b8:	8082                	ret
   175ba:	0005c783          	lbu	a5,0(a1)
   175be:	0705                	addi	a4,a4,1
   175c0:	0585                	addi	a1,a1,1
   175c2:	fef70fa3          	sb	a5,-1(a4)
   175c6:	fee887e3          	beq	a7,a4,175b4 <memcpy+0x11e>
   175ca:	0005c783          	lbu	a5,0(a1)
   175ce:	0705                	addi	a4,a4,1
   175d0:	0585                	addi	a1,a1,1
   175d2:	fef70fa3          	sb	a5,-1(a4)
   175d6:	fee892e3          	bne	a7,a4,175ba <memcpy+0x124>
   175da:	bfe9                	j	175b4 <memcpy+0x11e>

000175dc <strlen>:
   175dc:	00357793          	andi	a5,a0,3
   175e0:	872a                	mv	a4,a0
   175e2:	ef9d                	bnez	a5,17620 <strlen+0x44>
   175e4:	7f7f86b7          	lui	a3,0x7f7f8
   175e8:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d837b>
   175ec:	55fd                	li	a1,-1
   175ee:	4310                	lw	a2,0(a4)
   175f0:	0711                	addi	a4,a4,4
   175f2:	00d677b3          	and	a5,a2,a3
   175f6:	97b6                	add	a5,a5,a3
   175f8:	8fd1                	or	a5,a5,a2
   175fa:	8fd5                	or	a5,a5,a3
   175fc:	feb789e3          	beq	a5,a1,175ee <strlen+0x12>
   17600:	ffc74683          	lbu	a3,-4(a4)
   17604:	40a707b3          	sub	a5,a4,a0
   17608:	ca8d                	beqz	a3,1763a <strlen+0x5e>
   1760a:	ffd74683          	lbu	a3,-3(a4)
   1760e:	c29d                	beqz	a3,17634 <strlen+0x58>
   17610:	ffe74503          	lbu	a0,-2(a4)
   17614:	00a03533          	snez	a0,a0
   17618:	953e                	add	a0,a0,a5
   1761a:	1579                	addi	a0,a0,-2
   1761c:	8082                	ret
   1761e:	d2f9                	beqz	a3,175e4 <strlen+0x8>
   17620:	00074783          	lbu	a5,0(a4)
   17624:	0705                	addi	a4,a4,1
   17626:	00377693          	andi	a3,a4,3
   1762a:	fbf5                	bnez	a5,1761e <strlen+0x42>
   1762c:	8f09                	sub	a4,a4,a0
   1762e:	fff70513          	addi	a0,a4,-1
   17632:	8082                	ret
   17634:	ffd78513          	addi	a0,a5,-3
   17638:	8082                	ret
   1763a:	ffc78513          	addi	a0,a5,-4
   1763e:	8082                	ret

00017640 <frexpl>:
   17640:	7159                	addi	sp,sp,-112
   17642:	d0ca                	sw	s2,96(sp)
   17644:	00c5a903          	lw	s2,12(a1)
   17648:	ccd2                	sw	s4,88(sp)
   1764a:	cad6                	sw	s5,84(sp)
   1764c:	c8da                	sw	s6,80(sp)
   1764e:	0045aa83          	lw	s5,4(a1)
   17652:	0005ab03          	lw	s6,0(a1)
   17656:	0085aa03          	lw	s4,8(a1)
   1765a:	cece                	sw	s3,92(sp)
   1765c:	69a1                	lui	s3,0x8
   1765e:	d4a2                	sw	s0,104(sp)
   17660:	d2a6                	sw	s1,100(sp)
   17662:	d686                	sw	ra,108(sp)
   17664:	01095493          	srli	s1,s2,0x10
   17668:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   1766a:	d85a                	sw	s6,48(sp)
   1766c:	da56                	sw	s5,52(sp)
   1766e:	dc52                	sw	s4,56(sp)
   17670:	de4a                	sw	s2,60(sp)
   17672:	0134f4b3          	and	s1,s1,s3
   17676:	00062023          	sw	zero,0(a2)
   1767a:	842a                	mv	s0,a0
   1767c:	05348763          	beq	s1,s3,176ca <frexpl+0x8a>
   17680:	080c                	addi	a1,sp,16
   17682:	1008                	addi	a0,sp,32
   17684:	c6de                	sw	s7,76(sp)
   17686:	d05a                	sw	s6,32(sp)
   17688:	8bb2                	mv	s7,a2
   1768a:	d256                	sw	s5,36(sp)
   1768c:	d452                	sw	s4,40(sp)
   1768e:	d64a                	sw	s2,44(sp)
   17690:	c802                	sw	zero,16(sp)
   17692:	ca02                	sw	zero,20(sp)
   17694:	cc02                	sw	zero,24(sp)
   17696:	ce02                	sw	zero,28(sp)
   17698:	5cd030ef          	jal	1b464 <__eqtf2>
   1769c:	c941                	beqz	a0,1772c <frexpl+0xec>
   1769e:	4681                	li	a3,0
   176a0:	c8a1                	beqz	s1,176f0 <frexpl+0xb0>
   176a2:	7771                	lui	a4,0xffffc
   176a4:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffdc3fe>
   176a6:	5972                	lw	s2,60(sp)
   176a8:	94ba                	add	s1,s1,a4
   176aa:	800107b7          	lui	a5,0x80010
   176ae:	94b6                	add	s1,s1,a3
   176b0:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff03fb>
   176b2:	009ba023          	sw	s1,0(s7)
   176b6:	5b42                	lw	s6,48(sp)
   176b8:	5ad2                	lw	s5,52(sp)
   176ba:	5a62                	lw	s4,56(sp)
   176bc:	4bb6                	lw	s7,76(sp)
   176be:	00f97933          	and	s2,s2,a5
   176c2:	3ffe07b7          	lui	a5,0x3ffe0
   176c6:	00f96933          	or	s2,s2,a5
   176ca:	01642023          	sw	s6,0(s0)
   176ce:	01542223          	sw	s5,4(s0)
   176d2:	01442423          	sw	s4,8(s0)
   176d6:	01242623          	sw	s2,12(s0)
   176da:	50b6                	lw	ra,108(sp)
   176dc:	8522                	mv	a0,s0
   176de:	5426                	lw	s0,104(sp)
   176e0:	5496                	lw	s1,100(sp)
   176e2:	5906                	lw	s2,96(sp)
   176e4:	49f6                	lw	s3,92(sp)
   176e6:	4a66                	lw	s4,88(sp)
   176e8:	4ad6                	lw	s5,84(sp)
   176ea:	4b46                	lw	s6,80(sp)
   176ec:	6165                	addi	sp,sp,112
   176ee:	8082                	ret
   176f0:	407107b7          	lui	a5,0x40710
   176f4:	860a                	mv	a2,sp
   176f6:	080c                	addi	a1,sp,16
   176f8:	1008                	addi	a0,sp,32
   176fa:	c63e                	sw	a5,12(sp)
   176fc:	c85a                	sw	s6,16(sp)
   176fe:	ca56                	sw	s5,20(sp)
   17700:	cc52                	sw	s4,24(sp)
   17702:	ce4a                	sw	s2,28(sp)
   17704:	c002                	sw	zero,0(sp)
   17706:	c202                	sw	zero,4(sp)
   17708:	c402                	sw	zero,8(sp)
   1770a:	01e040ef          	jal	1b728 <__multf3>
   1770e:	5702                	lw	a4,32(sp)
   17710:	57b2                	lw	a5,44(sp)
   17712:	f8e00693          	li	a3,-114
   17716:	d83a                	sw	a4,48(sp)
   17718:	5712                	lw	a4,36(sp)
   1771a:	0107d493          	srli	s1,a5,0x10
   1771e:	de3e                	sw	a5,60(sp)
   17720:	da3a                	sw	a4,52(sp)
   17722:	5722                	lw	a4,40(sp)
   17724:	0134f4b3          	and	s1,s1,s3
   17728:	dc3a                	sw	a4,56(sp)
   1772a:	bfa5                	j	176a2 <frexpl+0x62>
   1772c:	4bb6                	lw	s7,76(sp)
   1772e:	bf71                	j	176ca <frexpl+0x8a>

00017730 <__register_exitproc>:
   17730:	f281a783          	lw	a5,-216(gp) # 1f8e0 <__atexit>
   17734:	c3a1                	beqz	a5,17774 <__register_exitproc+0x44>
   17736:	43d8                	lw	a4,4(a5)
   17738:	487d                	li	a6,31
   1773a:	04e84f63          	blt	a6,a4,17798 <__register_exitproc+0x68>
   1773e:	00271813          	slli	a6,a4,0x2
   17742:	c11d                	beqz	a0,17768 <__register_exitproc+0x38>
   17744:	01078333          	add	t1,a5,a6
   17748:	08c32423          	sw	a2,136(t1)
   1774c:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f0584>
   17750:	4605                	li	a2,1
   17752:	00e61633          	sll	a2,a2,a4
   17756:	00c8e8b3          	or	a7,a7,a2
   1775a:	1917a423          	sw	a7,392(a5)
   1775e:	10d32423          	sw	a3,264(t1)
   17762:	4689                	li	a3,2
   17764:	00d50f63          	beq	a0,a3,17782 <__register_exitproc+0x52>
   17768:	0705                	addi	a4,a4,1
   1776a:	c3d8                	sw	a4,4(a5)
   1776c:	97c2                	add	a5,a5,a6
   1776e:	c78c                	sw	a1,8(a5)
   17770:	4501                	li	a0,0
   17772:	8082                	ret
   17774:	0bc18813          	addi	a6,gp,188 # 1fa74 <__atexit0>
   17778:	f301a423          	sw	a6,-216(gp) # 1f8e0 <__atexit>
   1777c:	0bc18793          	addi	a5,gp,188 # 1fa74 <__atexit0>
   17780:	bf5d                	j	17736 <__register_exitproc+0x6>
   17782:	18c7a683          	lw	a3,396(a5)
   17786:	0705                	addi	a4,a4,1
   17788:	c3d8                	sw	a4,4(a5)
   1778a:	8ed1                	or	a3,a3,a2
   1778c:	18d7a623          	sw	a3,396(a5)
   17790:	97c2                	add	a5,a5,a6
   17792:	c78c                	sw	a1,8(a5)
   17794:	4501                	li	a0,0
   17796:	8082                	ret
   17798:	557d                	li	a0,-1
   1779a:	8082                	ret

0001779c <_ldtoa_r>:
   1779c:	68f9                	lui	a7,0x1e
   1779e:	ce088893          	addi	a7,a7,-800 # 1dce0 <blanks.1+0x10>
   177a2:	0008af83          	lw	t6,0(a7)
   177a6:	0048af03          	lw	t5,4(a7)
   177aa:	0088ae83          	lw	t4,8(a7)
   177ae:	00c8ae03          	lw	t3,12(a7)
   177b2:	0108a303          	lw	t1,16(a7)
   177b6:	03852883          	lw	a7,56(a0)
   177ba:	7171                	addi	sp,sp,-176
   177bc:	d14a                	sw	s2,160(sp)
   177be:	cf4e                	sw	s3,156(sp)
   177c0:	cd52                	sw	s4,152(sp)
   177c2:	c95a                	sw	s6,144(sp)
   177c4:	c75e                	sw	s7,140(sp)
   177c6:	c562                	sw	s8,136(sp)
   177c8:	c366                	sw	s9,132(sp)
   177ca:	c16a                	sw	s10,128(sp)
   177cc:	d706                	sw	ra,172(sp)
   177ce:	d522                	sw	s0,168(sp)
   177d0:	d326                	sw	s1,164(sp)
   177d2:	cb56                	sw	s5,148(sp)
   177d4:	deee                	sw	s11,124(sp)
   177d6:	cefe                	sw	t6,92(sp)
   177d8:	d0fa                	sw	t5,96(sp)
   177da:	d2f6                	sw	t4,100(sp)
   177dc:	d4f2                	sw	t3,104(sp)
   177de:	d69a                	sw	t1,108(sp)
   177e0:	cc32                	sw	a2,24(sp)
   177e2:	ce36                	sw	a3,28(sp)
   177e4:	0005aa03          	lw	s4,0(a1)
   177e8:	0045a983          	lw	s3,4(a1)
   177ec:	0085a903          	lw	s2,8(a1)
   177f0:	00c5ac03          	lw	s8,12(a1)
   177f4:	8b2a                	mv	s6,a0
   177f6:	8bba                	mv	s7,a4
   177f8:	8cbe                	mv	s9,a5
   177fa:	8d42                	mv	s10,a6
   177fc:	00088763          	beqz	a7,1780a <_ldtoa_r+0x6e>
   17800:	85c6                	mv	a1,a7
   17802:	246010ef          	jal	18a48 <__freedtoa>
   17806:	020b2c23          	sw	zero,56(s6)
   1780a:	5626                	lw	a2,104(sp)
   1780c:	01fc5693          	srli	a3,s8,0x1f
   17810:	001c1a93          	slli	s5,s8,0x1
   17814:	40165713          	srai	a4,a2,0x1
   17818:	74f1                	lui	s1,0xffffc
   1781a:	001c1413          	slli	s0,s8,0x1
   1781e:	8f75                	and	a4,a4,a3
   17820:	011ada93          	srli	s5,s5,0x11
   17824:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffdc38d>
   17828:	010c1d93          	slli	s11,s8,0x10
   1782c:	00dca023          	sw	a3,0(s9)
   17830:	8005                	srli	s0,s0,0x1
   17832:	8f31                	xor	a4,a4,a2
   17834:	010ddd93          	srli	s11,s11,0x10
   17838:	009a87b3          	add	a5,s5,s1
   1783c:	100c                	addi	a1,sp,32
   1783e:	1808                	addi	a0,sp,48
   17840:	d852                	sw	s4,48(sp)
   17842:	da4e                	sw	s3,52(sp)
   17844:	dc4a                	sw	s2,56(sp)
   17846:	de22                	sw	s0,60(sp)
   17848:	d052                	sw	s4,32(sp)
   1784a:	d24e                	sw	s3,36(sp)
   1784c:	d44a                	sw	s2,40(sp)
   1784e:	d622                	sw	s0,44(sp)
   17850:	d4ba                	sw	a4,104(sp)
   17852:	ca3e                	sw	a5,20(sp)
   17854:	c6d2                	sw	s4,76(sp)
   17856:	c8ce                	sw	s3,80(sp)
   17858:	caca                	sw	s2,84(sp)
   1785a:	ccee                	sw	s11,88(sp)
   1785c:	44b050ef          	jal	1d4a6 <__unordtf2>
   17860:	e979                	bnez	a0,17936 <_ldtoa_r+0x19a>
   17862:	7fff0cb7          	lui	s9,0x7fff0
   17866:	54fd                	li	s1,-1
   17868:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd03fb>
   1786a:	100c                	addi	a1,sp,32
   1786c:	1808                	addi	a0,sp,48
   1786e:	d852                	sw	s4,48(sp)
   17870:	da4e                	sw	s3,52(sp)
   17872:	dc4a                	sw	s2,56(sp)
   17874:	de22                	sw	s0,60(sp)
   17876:	d026                	sw	s1,32(sp)
   17878:	d226                	sw	s1,36(sp)
   1787a:	d426                	sw	s1,40(sp)
   1787c:	d666                	sw	s9,44(sp)
   1787e:	429050ef          	jal	1d4a6 <__unordtf2>
   17882:	ed21                	bnez	a0,178da <_ldtoa_r+0x13e>
   17884:	100c                	addi	a1,sp,32
   17886:	1808                	addi	a0,sp,48
   17888:	5b5030ef          	jal	1b63c <__letf2>
   1788c:	04a05763          	blez	a0,178da <_ldtoa_r+0x13e>
   17890:	478d                	li	a5,3
   17892:	c4be                	sw	a5,72(sp)
   17894:	47e2                	lw	a5,24(sp)
   17896:	4872                	lw	a6,28(sp)
   17898:	4652                	lw	a2,20(sp)
   1789a:	00b8                	addi	a4,sp,72
   1789c:	c06a                	sw	s10,0(sp)
   1789e:	88de                	mv	a7,s7
   178a0:	00f4                	addi	a3,sp,76
   178a2:	08ec                	addi	a1,sp,92
   178a4:	855a                	mv	a0,s6
   178a6:	2235                	jal	179d2 <__gdtoa>
   178a8:	000ba703          	lw	a4,0(s7)
   178ac:	77e1                	lui	a5,0xffff8
   178ae:	00f71763          	bne	a4,a5,178bc <_ldtoa_r+0x120>
   178b2:	800007b7          	lui	a5,0x80000
   178b6:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe03fb>
   178b8:	00fba023          	sw	a5,0(s7)
   178bc:	50ba                	lw	ra,172(sp)
   178be:	542a                	lw	s0,168(sp)
   178c0:	549a                	lw	s1,164(sp)
   178c2:	590a                	lw	s2,160(sp)
   178c4:	49fa                	lw	s3,156(sp)
   178c6:	4a6a                	lw	s4,152(sp)
   178c8:	4ada                	lw	s5,148(sp)
   178ca:	4b4a                	lw	s6,144(sp)
   178cc:	4bba                	lw	s7,140(sp)
   178ce:	4c2a                	lw	s8,136(sp)
   178d0:	4c9a                	lw	s9,132(sp)
   178d2:	4d0a                	lw	s10,128(sp)
   178d4:	5df6                	lw	s11,124(sp)
   178d6:	614d                	addi	sp,sp,176
   178d8:	8082                	ret
   178da:	67c1                	lui	a5,0x10
   178dc:	100c                	addi	a1,sp,32
   178de:	1808                	addi	a0,sp,48
   178e0:	d852                	sw	s4,48(sp)
   178e2:	da4e                	sw	s3,52(sp)
   178e4:	dc4a                	sw	s2,56(sp)
   178e6:	de22                	sw	s0,60(sp)
   178e8:	d002                	sw	zero,32(sp)
   178ea:	d202                	sw	zero,36(sp)
   178ec:	d402                	sw	zero,40(sp)
   178ee:	d63e                	sw	a5,44(sp)
   178f0:	461030ef          	jal	1b550 <__getf2>
   178f4:	00054963          	bltz	a0,17906 <_ldtoa_r+0x16a>
   178f8:	67c1                	lui	a5,0x10
   178fa:	00fdedb3          	or	s11,s11,a5
   178fe:	4785                	li	a5,1
   17900:	c4be                	sw	a5,72(sp)
   17902:	ccee                	sw	s11,88(sp)
   17904:	bf41                	j	17894 <_ldtoa_r+0xf8>
   17906:	100c                	addi	a1,sp,32
   17908:	1808                	addi	a0,sp,48
   1790a:	d852                	sw	s4,48(sp)
   1790c:	da4e                	sw	s3,52(sp)
   1790e:	dc4a                	sw	s2,56(sp)
   17910:	de62                	sw	s8,60(sp)
   17912:	d002                	sw	zero,32(sp)
   17914:	d202                	sw	zero,36(sp)
   17916:	d402                	sw	zero,40(sp)
   17918:	d602                	sw	zero,44(sp)
   1791a:	34b030ef          	jal	1b464 <__eqtf2>
   1791e:	e119                	bnez	a0,17924 <_ldtoa_r+0x188>
   17920:	c482                	sw	zero,72(sp)
   17922:	bf8d                	j	17894 <_ldtoa_r+0xf8>
   17924:	74f1                	lui	s1,0xffffc
   17926:	4789                	li	a5,2
   17928:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffdc38e>
   1792c:	c4be                	sw	a5,72(sp)
   1792e:	009a87b3          	add	a5,s5,s1
   17932:	ca3e                	sw	a5,20(sp)
   17934:	b785                	j	17894 <_ldtoa_r+0xf8>
   17936:	4791                	li	a5,4
   17938:	c4be                	sw	a5,72(sp)
   1793a:	bfa9                	j	17894 <_ldtoa_r+0xf8>

0001793c <_ldcheck>:
   1793c:	7139                	addi	sp,sp,-64
   1793e:	da26                	sw	s1,52(sp)
   17940:	4544                	lw	s1,12(a0)
   17942:	d64e                	sw	s3,44(sp)
   17944:	d452                	sw	s4,40(sp)
   17946:	00852983          	lw	s3,8(a0)
   1794a:	00452a03          	lw	s4,4(a0)
   1794e:	d256                	sw	s5,36(sp)
   17950:	00052a83          	lw	s5,0(a0)
   17954:	0486                	slli	s1,s1,0x1
   17956:	8085                	srli	s1,s1,0x1
   17958:	858a                	mv	a1,sp
   1795a:	0808                	addi	a0,sp,16
   1795c:	de06                	sw	ra,60(sp)
   1795e:	c856                	sw	s5,16(sp)
   17960:	ca52                	sw	s4,20(sp)
   17962:	cc4e                	sw	s3,24(sp)
   17964:	ce26                	sw	s1,28(sp)
   17966:	c056                	sw	s5,0(sp)
   17968:	c252                	sw	s4,4(sp)
   1796a:	c44e                	sw	s3,8(sp)
   1796c:	c626                	sw	s1,12(sp)
   1796e:	339050ef          	jal	1d4a6 <__unordtf2>
   17972:	e921                	bnez	a0,179c2 <_ldcheck+0x86>
   17974:	d05a                	sw	s6,32(sp)
   17976:	7fff0b37          	lui	s6,0x7fff0
   1797a:	d84a                	sw	s2,48(sp)
   1797c:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd03fb>
   1797e:	597d                	li	s2,-1
   17980:	858a                	mv	a1,sp
   17982:	0808                	addi	a0,sp,16
   17984:	dc22                	sw	s0,56(sp)
   17986:	c04a                	sw	s2,0(sp)
   17988:	c24a                	sw	s2,4(sp)
   1798a:	c44a                	sw	s2,8(sp)
   1798c:	c65a                	sw	s6,12(sp)
   1798e:	4405                	li	s0,1
   17990:	317050ef          	jal	1d4a6 <__unordtf2>
   17994:	c105                	beqz	a0,179b4 <_ldcheck+0x78>
   17996:	50f2                	lw	ra,60(sp)
   17998:	00144513          	xori	a0,s0,1
   1799c:	5462                	lw	s0,56(sp)
   1799e:	0ff57513          	zext.b	a0,a0
   179a2:	5942                	lw	s2,48(sp)
   179a4:	5b02                	lw	s6,32(sp)
   179a6:	54d2                	lw	s1,52(sp)
   179a8:	59b2                	lw	s3,44(sp)
   179aa:	5a22                	lw	s4,40(sp)
   179ac:	5a92                	lw	s5,36(sp)
   179ae:	0506                	slli	a0,a0,0x1
   179b0:	6121                	addi	sp,sp,64
   179b2:	8082                	ret
   179b4:	858a                	mv	a1,sp
   179b6:	0808                	addi	a0,sp,16
   179b8:	485030ef          	jal	1b63c <__letf2>
   179bc:	00152413          	slti	s0,a0,1
   179c0:	bfd9                	j	17996 <_ldcheck+0x5a>
   179c2:	50f2                	lw	ra,60(sp)
   179c4:	54d2                	lw	s1,52(sp)
   179c6:	59b2                	lw	s3,44(sp)
   179c8:	5a22                	lw	s4,40(sp)
   179ca:	5a92                	lw	s5,36(sp)
   179cc:	4505                	li	a0,1
   179ce:	6121                	addi	sp,sp,64
   179d0:	8082                	ret

000179d2 <__gdtoa>:
   179d2:	7171                	addi	sp,sp,-176
   179d4:	cb56                	sw	s5,148(sp)
   179d6:	00072a83          	lw	s5,0(a4)
   179da:	d326                	sw	s1,164(sp)
   179dc:	c75e                	sw	s7,140(sp)
   179de:	fcfafe13          	andi	t3,s5,-49
   179e2:	d706                	sw	ra,172(sp)
   179e4:	01c72023          	sw	t3,0(a4)
   179e8:	8bba                	mv	s7,a4
   179ea:	574a                	lw	a4,176(sp)
   179ec:	00fafe13          	andi	t3,s5,15
   179f0:	4e8d                	li	t4,3
   179f2:	c63a                	sw	a4,12(sp)
   179f4:	c832                	sw	a2,16(sp)
   179f6:	d442                	sw	a6,40(sp)
   179f8:	84c6                	mv	s1,a7
   179fa:	4fde0263          	beq	t3,t4,17ede <__gdtoa+0x50c>
   179fe:	c95a                	sw	s6,144(sp)
   17a00:	00cafb13          	andi	s6,s5,12
   17a04:	460b1b63          	bnez	s6,17e7a <__gdtoa+0x4a8>
   17a08:	d522                	sw	s0,168(sp)
   17a0a:	842a                	mv	s0,a0
   17a0c:	4a0e0563          	beqz	t3,17eb6 <__gdtoa+0x4e4>
   17a10:	c16a                	sw	s10,128(sp)
   17a12:	0005ad03          	lw	s10,0(a1)
   17a16:	d14a                	sw	s2,160(sp)
   17a18:	cf4e                	sw	s3,156(sp)
   17a1a:	cd52                	sw	s4,152(sp)
   17a1c:	c366                	sw	s9,132(sp)
   17a1e:	02000613          	li	a2,32
   17a22:	8a2e                	mv	s4,a1
   17a24:	893e                	mv	s2,a5
   17a26:	89b6                	mv	s3,a3
   17a28:	4581                	li	a1,0
   17a2a:	02000793          	li	a5,32
   17a2e:	01a65663          	bge	a2,s10,17a3a <__gdtoa+0x68>
   17a32:	0786                	slli	a5,a5,0x1
   17a34:	0585                	addi	a1,a1,1
   17a36:	ffa7cee3          	blt	a5,s10,17a32 <__gdtoa+0x60>
   17a3a:	8522                	mv	a0,s0
   17a3c:	24e010ef          	jal	18c8a <_Balloc>
   17a40:	8caa                	mv	s9,a0
   17a42:	68050163          	beqz	a0,180c4 <__gdtoa+0x6f2>
   17a46:	fffd0893          	addi	a7,s10,-1
   17a4a:	4058d893          	srai	a7,a7,0x5
   17a4e:	00289513          	slli	a0,a7,0x2
   17a52:	c562                	sw	s8,136(sp)
   17a54:	deee                	sw	s11,124(sp)
   17a56:	954e                	add	a0,a0,s3
   17a58:	014c8613          	addi	a2,s9,20
   17a5c:	87ce                	mv	a5,s3
   17a5e:	4398                	lw	a4,0(a5)
   17a60:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   17a62:	0611                	addi	a2,a2,4
   17a64:	fee62e23          	sw	a4,-4(a2)
   17a68:	fef57be3          	bgeu	a0,a5,17a5e <__gdtoa+0x8c>
   17a6c:	0505                	addi	a0,a0,1
   17a6e:	00198793          	addi	a5,s3,1
   17a72:	4611                	li	a2,4
   17a74:	00f56563          	bltu	a0,a5,17a7e <__gdtoa+0xac>
   17a78:	088a                	slli	a7,a7,0x2
   17a7a:	00488613          	addi	a2,a7,4
   17a7e:	40265d93          	srai	s11,a2,0x2
   17a82:	9666                	add	a2,a2,s9
   17a84:	a021                	j	17a8c <__gdtoa+0xba>
   17a86:	1671                	addi	a2,a2,-4
   17a88:	480d8f63          	beqz	s11,17f26 <__gdtoa+0x554>
   17a8c:	4a1c                	lw	a5,16(a2)
   17a8e:	8c6e                	mv	s8,s11
   17a90:	1dfd                	addi	s11,s11,-1
   17a92:	dbf5                	beqz	a5,17a86 <__gdtoa+0xb4>
   17a94:	004d8793          	addi	a5,s11,4
   17a98:	078a                	slli	a5,a5,0x2
   17a9a:	97e6                	add	a5,a5,s9
   17a9c:	43c8                	lw	a0,4(a5)
   17a9e:	018ca823          	sw	s8,16(s9)
   17aa2:	0c16                	slli	s8,s8,0x5
   17aa4:	408010ef          	jal	18eac <__hi0bits>
   17aa8:	40ac0db3          	sub	s11,s8,a0
   17aac:	8566                	mv	a0,s9
   17aae:	1a2010ef          	jal	18c50 <__trailz_D2A>
   17ab2:	d6aa                	sw	a0,108(sp)
   17ab4:	4c42                	lw	s8,16(sp)
   17ab6:	48051c63          	bnez	a0,17f4e <__gdtoa+0x57c>
   17aba:	010ca603          	lw	a2,16(s9)
   17abe:	3e060163          	beqz	a2,17ea0 <__gdtoa+0x4ce>
   17ac2:	10ec                	addi	a1,sp,108
   17ac4:	8566                	mv	a0,s9
   17ac6:	2d9010ef          	jal	1959e <__b2d>
   17aca:	00c59613          	slli	a2,a1,0xc
   17ace:	8231                	srli	a2,a2,0xc
   17ad0:	3ff005b7          	lui	a1,0x3ff00
   17ad4:	8f2a                	mv	t5,a0
   17ad6:	8e4d                	or	a2,a2,a1
   17ad8:	cc7a                	sw	t5,24(sp)
   17ada:	ce32                	sw	a2,28(sp)
   17adc:	ea81b707          	fld	fa4,-344(gp) # 1f860 <__SDATA_BEGIN__>
   17ae0:	27e2                	fld	fa5,24(sp)
   17ae2:	eb01b687          	fld	fa3,-336(gp) # 1f868 <__SDATA_BEGIN__+0x8>
   17ae6:	0ae7f753          	fsub.d	fa4,fa5,fa4
   17aea:	eb81b787          	fld	fa5,-328(gp) # 1f870 <__SDATA_BEGIN__+0x10>
   17aee:	01bc08b3          	add	a7,s8,s11
   17af2:	fff88593          	addi	a1,a7,-1
   17af6:	852e                	mv	a0,a1
   17af8:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   17afc:	d20587d3          	fcvt.d.w	fa5,a1
   17b00:	ec01b687          	fld	fa3,-320(gp) # 1f878 <__SDATA_BEGIN__+0x18>
   17b04:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   17b08:	0005d563          	bgez	a1,17b12 <__gdtoa+0x140>
   17b0c:	4505                	li	a0,1
   17b0e:	41150533          	sub	a0,a0,a7
   17b12:	bcb50513          	addi	a0,a0,-1077
   17b16:	00a05863          	blez	a0,17b26 <__gdtoa+0x154>
   17b1a:	d20506d3          	fcvt.d.w	fa3,a0
   17b1e:	ec81b707          	fld	fa4,-312(gp) # 1f880 <__SDATA_BEGIN__+0x20>
   17b22:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   17b26:	d2000753          	fcvt.d.w	fa4,zero
   17b2a:	c2079853          	fcvt.w.d	a6,fa5,rtz
   17b2e:	a2e79553          	flt.d	a0,fa5,fa4
   17b32:	c909                	beqz	a0,17b44 <__gdtoa+0x172>
   17b34:	d2080753          	fcvt.d.w	fa4,a6
   17b38:	a2f72553          	feq.d	a0,fa4,fa5
   17b3c:	00153513          	seqz	a0,a0
   17b40:	40a80833          	sub	a6,a6,a0
   17b44:	01459e93          	slli	t4,a1,0x14
   17b48:	40bd8533          	sub	a0,s11,a1
   17b4c:	45d9                	li	a1,22
   17b4e:	00ce8fb3          	add	t6,t4,a2
   17b52:	fff50e93          	addi	t4,a0,-1
   17b56:	3d05eb63          	bltu	a1,a6,17f2c <__gdtoa+0x55a>
   17b5a:	65f9                	lui	a1,0x1e
   17b5c:	00381613          	slli	a2,a6,0x3
   17b60:	d5058593          	addi	a1,a1,-688 # 1dd50 <__mprec_tens>
   17b64:	962e                	add	a2,a2,a1
   17b66:	cc7a                	sw	t5,24(sp)
   17b68:	ce7e                	sw	t6,28(sp)
   17b6a:	221c                	fld	fa5,0(a2)
   17b6c:	2762                	fld	fa4,24(sp)
   17b6e:	a2f71653          	flt.d	a2,fa4,fa5
   17b72:	58061163          	bnez	a2,180f4 <__gdtoa+0x722>
   17b76:	ca82                	sw	zero,84(sp)
   17b78:	cc02                	sw	zero,24(sp)
   17b7a:	00a04763          	bgtz	a0,17b88 <__gdtoa+0x1b6>
   17b7e:	4605                	li	a2,1
   17b80:	40a607b3          	sub	a5,a2,a0
   17b84:	cc3e                	sw	a5,24(sp)
   17b86:	4e81                	li	t4,0
   17b88:	9ec2                	add	t4,t4,a6
   17b8a:	da42                	sw	a6,52(sp)
   17b8c:	d802                	sw	zero,48(sp)
   17b8e:	4625                	li	a2,9
   17b90:	3d266a63          	bltu	a2,s2,17f64 <__gdtoa+0x592>
   17b94:	4615                	li	a2,5
   17b96:	57264263          	blt	a2,s2,180fa <__gdtoa+0x728>
   17b9a:	3fd88893          	addi	a7,a7,1021
   17b9e:	7f88b793          	sltiu	a5,a7,2040
   17ba2:	4591                	li	a1,4
   17ba4:	ccbe                	sw	a5,88(sp)
   17ba6:	18b909e3          	beq	s2,a1,18538 <__gdtoa+0xb66>
   17baa:	18c903e3          	beq	s2,a2,18530 <__gdtoa+0xb5e>
   17bae:	4609                	li	a2,2
   17bb0:	18c907e3          	beq	s2,a2,1853e <__gdtoa+0xb6c>
   17bb4:	460d                	li	a2,3
   17bb6:	c882                	sw	zero,80(sp)
   17bb8:	3ac91c63          	bne	s2,a2,17f70 <__gdtoa+0x59e>
   17bbc:	57d2                	lw	a5,52(sp)
   17bbe:	5722                	lw	a4,40(sp)
   17bc0:	97ba                	add	a5,a5,a4
   17bc2:	cebe                	sw	a5,92(sp)
   17bc4:	0785                	addi	a5,a5,1
   17bc6:	d63e                	sw	a5,44(sp)
   17bc8:	00f05ce3          	blez	a5,183e0 <__gdtoa+0xa0e>
   17bcc:	863e                	mv	a2,a5
   17bce:	85be                	mv	a1,a5
   17bd0:	8522                	mv	a0,s0
   17bd2:	c4fa                	sw	t5,72(sp)
   17bd4:	c6fe                	sw	t6,76(sp)
   17bd6:	c0f6                	sw	t4,64(sp)
   17bd8:	dc42                	sw	a6,56(sp)
   17bda:	d6b2                	sw	a2,108(sp)
   17bdc:	5bd000ef          	jal	18998 <__rv_alloc_D2A>
   17be0:	88aa                	mv	a7,a0
   17be2:	32050863          	beqz	a0,17f12 <__gdtoa+0x540>
   17be6:	00ca2783          	lw	a5,12(s4)
   17bea:	5862                	lw	a6,56(sp)
   17bec:	4e86                	lw	t4,64(sp)
   17bee:	17fd                	addi	a5,a5,-1
   17bf0:	d03e                	sw	a5,32(sp)
   17bf2:	4f26                	lw	t5,72(sp)
   17bf4:	4fb6                	lw	t6,76(sp)
   17bf6:	3a078363          	beqz	a5,17f9c <__gdtoa+0x5ca>
   17bfa:	4e07ca63          	bltz	a5,180ee <__gdtoa+0x71c>
   17bfe:	100af313          	andi	t1,s5,256
   17c02:	38031863          	bnez	t1,17f92 <__gdtoa+0x5c0>
   17c06:	000c4663          	bltz	s8,17c12 <__gdtoa+0x240>
   17c0a:	57d2                	lw	a5,52(sp)
   17c0c:	4639                	li	a2,14
   17c0e:	50f65363          	bge	a2,a5,18114 <__gdtoa+0x742>
   17c12:	47c6                	lw	a5,80(sp)
   17c14:	4c078863          	beqz	a5,180e4 <__gdtoa+0x712>
   17c18:	41bd06b3          	sub	a3,s10,s11
   17c1c:	004a2603          	lw	a2,4(s4)
   17c20:	00168593          	addi	a1,a3,1
   17c24:	d6ae                	sw	a1,108(sp)
   17c26:	40dc06b3          	sub	a3,s8,a3
   17c2a:	7ec6dd63          	bge	a3,a2,18424 <__gdtoa+0xa52>
   17c2e:	ffd90693          	addi	a3,s2,-3
   17c32:	9af5                	andi	a3,a3,-3
   17c34:	72068863          	beqz	a3,18364 <__gdtoa+0x992>
   17c38:	40cc06b3          	sub	a3,s8,a2
   17c3c:	0685                	addi	a3,a3,1
   17c3e:	d6b6                	sw	a3,108(sp)
   17c40:	4605                	li	a2,1
   17c42:	01265863          	bge	a2,s2,17c52 <__gdtoa+0x280>
   17c46:	57b2                	lw	a5,44(sp)
   17c48:	00f05563          	blez	a5,17c52 <__gdtoa+0x280>
   17c4c:	57b2                	lw	a5,44(sp)
   17c4e:	40d7c1e3          	blt	a5,a3,18850 <__gdtoa+0xe7e>
   17c52:	47e2                	lw	a5,24(sp)
   17c54:	5d42                	lw	s10,48(sp)
   17c56:	9eb6                	add	t4,t4,a3
   17c58:	dc3e                	sw	a5,56(sp)
   17c5a:	97b6                	add	a5,a5,a3
   17c5c:	cc3e                	sw	a5,24(sp)
   17c5e:	4585                	li	a1,1
   17c60:	8522                	mv	a0,s0
   17c62:	ccc6                	sw	a7,88(sp)
   17c64:	c4f6                	sw	t4,72(sp)
   17c66:	c0c2                	sw	a6,64(sp)
   17c68:	322010ef          	jal	18f8a <__i2b>
   17c6c:	4806                	lw	a6,64(sp)
   17c6e:	4ea6                	lw	t4,72(sp)
   17c70:	48e6                	lw	a7,88(sp)
   17c72:	8c2a                	mv	s8,a0
   17c74:	28050f63          	beqz	a0,17f12 <__gdtoa+0x540>
   17c78:	57e2                	lw	a5,56(sp)
   17c7a:	c385                	beqz	a5,17c9a <__gdtoa+0x2c8>
   17c7c:	01d05f63          	blez	t4,17c9a <__gdtoa+0x2c8>
   17c80:	86be                	mv	a3,a5
   17c82:	00fed363          	bge	t4,a5,17c88 <__gdtoa+0x2b6>
   17c86:	86f6                	mv	a3,t4
   17c88:	47e2                	lw	a5,24(sp)
   17c8a:	d6b6                	sw	a3,108(sp)
   17c8c:	40de8eb3          	sub	t4,t4,a3
   17c90:	8f95                	sub	a5,a5,a3
   17c92:	cc3e                	sw	a5,24(sp)
   17c94:	57e2                	lw	a5,56(sp)
   17c96:	8f95                	sub	a5,a5,a3
   17c98:	dc3e                	sw	a5,56(sp)
   17c9a:	57c2                	lw	a5,48(sp)
   17c9c:	c39d                	beqz	a5,17cc2 <__gdtoa+0x2f0>
   17c9e:	47c6                	lw	a5,80(sp)
   17ca0:	c399                	beqz	a5,17ca6 <__gdtoa+0x2d4>
   17ca2:	7e0d1863          	bnez	s10,18492 <__gdtoa+0xac0>
   17ca6:	5642                	lw	a2,48(sp)
   17ca8:	85e6                	mv	a1,s9
   17caa:	8522                	mv	a0,s0
   17cac:	ccc6                	sw	a7,88(sp)
   17cae:	c4f6                	sw	t4,72(sp)
   17cb0:	c0c2                	sw	a6,64(sp)
   17cb2:	4d6010ef          	jal	19188 <__pow5mult>
   17cb6:	4806                	lw	a6,64(sp)
   17cb8:	4ea6                	lw	t4,72(sp)
   17cba:	48e6                	lw	a7,88(sp)
   17cbc:	8caa                	mv	s9,a0
   17cbe:	24050a63          	beqz	a0,17f12 <__gdtoa+0x540>
   17cc2:	4585                	li	a1,1
   17cc4:	8522                	mv	a0,s0
   17cc6:	c4c6                	sw	a7,72(sp)
   17cc8:	c0f6                	sw	t4,64(sp)
   17cca:	d842                	sw	a6,48(sp)
   17ccc:	2be010ef          	jal	18f8a <__i2b>
   17cd0:	8d2a                	mv	s10,a0
   17cd2:	24050063          	beqz	a0,17f12 <__gdtoa+0x540>
   17cd6:	5842                	lw	a6,48(sp)
   17cd8:	4e86                	lw	t4,64(sp)
   17cda:	48a6                	lw	a7,72(sp)
   17cdc:	70081663          	bnez	a6,183e8 <__gdtoa+0xa16>
   17ce0:	4685                	li	a3,1
   17ce2:	5126d263          	bge	a3,s2,181e6 <__gdtoa+0x814>
   17ce6:	4a7d                	li	s4,31
   17ce8:	47e2                	lw	a5,24(sp)
   17cea:	41da0a33          	sub	s4,s4,t4
   17cee:	1a71                	addi	s4,s4,-4
   17cf0:	01fa7a13          	andi	s4,s4,31
   17cf4:	00fa0633          	add	a2,s4,a5
   17cf8:	d6d2                	sw	s4,108(sp)
   17cfa:	87d2                	mv	a5,s4
   17cfc:	58c04d63          	bgtz	a2,18296 <__gdtoa+0x8c4>
   17d00:	00fe8633          	add	a2,t4,a5
   17d04:	1ec04c63          	bgtz	a2,17efc <__gdtoa+0x52a>
   17d08:	47d6                	lw	a5,84(sp)
   17d0a:	5a079563          	bnez	a5,182b4 <__gdtoa+0x8e2>
   17d0e:	57b2                	lw	a5,44(sp)
   17d10:	66f05a63          	blez	a5,18384 <__gdtoa+0x9b2>
   17d14:	47c6                	lw	a5,80(sp)
   17d16:	5c078d63          	beqz	a5,182f0 <__gdtoa+0x91e>
   17d1a:	57e2                	lw	a5,56(sp)
   17d1c:	00fa0633          	add	a2,s4,a5
   17d20:	7ec04763          	bgtz	a2,1850e <__gdtoa+0xb3c>
   17d24:	8a62                	mv	s4,s8
   17d26:	02081ce3          	bnez	a6,1855e <__gdtoa+0xb8c>
   17d2a:	5b32                	lw	s6,44(sp)
   17d2c:	8dc6                	mv	s11,a7
   17d2e:	4685                	li	a3,1
   17d30:	d446                	sw	a7,40(sp)
   17d32:	cc5e                	sw	s7,24(sp)
   17d34:	d626                	sw	s1,44(sp)
   17d36:	a885                	j	17da6 <__gdtoa+0x3d4>
   17d38:	8522                	mv	a0,s0
   17d3a:	7bd000ef          	jal	18cf6 <_Bfree>
   17d3e:	100ac3e3          	bltz	s5,18644 <__gdtoa+0xc72>
   17d42:	01596ab3          	or	s5,s2,s5
   17d46:	000a9763          	bnez	s5,17d54 <__gdtoa+0x382>
   17d4a:	0009a783          	lw	a5,0(s3)
   17d4e:	8b85                	andi	a5,a5,1
   17d50:	0e078ae3          	beqz	a5,18644 <__gdtoa+0xc72>
   17d54:	5782                	lw	a5,32(sp)
   17d56:	4709                	li	a4,2
   17d58:	26e798e3          	bne	a5,a4,187c8 <__gdtoa+0xdf6>
   17d5c:	017d8023          	sb	s7,0(s11)
   17d60:	57b6                	lw	a5,108(sp)
   17d62:	0d85                	addi	s11,s11,1
   17d64:	1efb0fe3          	beq	s6,a5,18762 <__gdtoa+0xd90>
   17d68:	85e6                	mv	a1,s9
   17d6a:	4681                	li	a3,0
   17d6c:	4629                	li	a2,10
   17d6e:	8522                	mv	a0,s0
   17d70:	799000ef          	jal	18d08 <__multadd>
   17d74:	8caa                	mv	s9,a0
   17d76:	18050e63          	beqz	a0,17f12 <__gdtoa+0x540>
   17d7a:	4681                	li	a3,0
   17d7c:	4629                	li	a2,10
   17d7e:	85e2                	mv	a1,s8
   17d80:	8522                	mv	a0,s0
   17d82:	494c0c63          	beq	s8,s4,1821a <__gdtoa+0x848>
   17d86:	783000ef          	jal	18d08 <__multadd>
   17d8a:	8c2a                	mv	s8,a0
   17d8c:	18050363          	beqz	a0,17f12 <__gdtoa+0x540>
   17d90:	85d2                	mv	a1,s4
   17d92:	4681                	li	a3,0
   17d94:	4629                	li	a2,10
   17d96:	8522                	mv	a0,s0
   17d98:	771000ef          	jal	18d08 <__multadd>
   17d9c:	8a2a                	mv	s4,a0
   17d9e:	16050a63          	beqz	a0,17f12 <__gdtoa+0x540>
   17da2:	56b6                	lw	a3,108(sp)
   17da4:	0685                	addi	a3,a3,1
   17da6:	85ea                	mv	a1,s10
   17da8:	8566                	mv	a0,s9
   17daa:	d6b6                	sw	a3,108(sp)
   17dac:	4ab000ef          	jal	18a56 <__quorem_D2A>
   17db0:	84aa                	mv	s1,a0
   17db2:	85e2                	mv	a1,s8
   17db4:	8566                	mv	a0,s9
   17db6:	5b4010ef          	jal	1936a <__mcmp>
   17dba:	85ea                	mv	a1,s10
   17dbc:	8aaa                	mv	s5,a0
   17dbe:	8652                	mv	a2,s4
   17dc0:	8522                	mv	a0,s0
   17dc2:	5e4010ef          	jal	193a6 <__mdiff>
   17dc6:	03048b93          	addi	s7,s1,48
   17dca:	85aa                	mv	a1,a0
   17dcc:	14050363          	beqz	a0,17f12 <__gdtoa+0x540>
   17dd0:	455c                	lw	a5,12(a0)
   17dd2:	f3bd                	bnez	a5,17d38 <__gdtoa+0x366>
   17dd4:	c82a                	sw	a0,16(sp)
   17dd6:	8566                	mv	a0,s9
   17dd8:	592010ef          	jal	1936a <__mcmp>
   17ddc:	45c2                	lw	a1,16(sp)
   17dde:	86aa                	mv	a3,a0
   17de0:	8522                	mv	a0,s0
   17de2:	c836                	sw	a3,16(sp)
   17de4:	713000ef          	jal	18cf6 <_Bfree>
   17de8:	46c2                	lw	a3,16(sp)
   17dea:	00d96733          	or	a4,s2,a3
   17dee:	340711e3          	bnez	a4,18930 <__gdtoa+0xf5e>
   17df2:	0009a783          	lw	a5,0(s3)
   17df6:	8b85                	andi	a5,a5,1
   17df8:	42079863          	bnez	a5,18228 <__gdtoa+0x856>
   17dfc:	5782                	lw	a5,32(sp)
   17dfe:	280787e3          	beqz	a5,1888c <__gdtoa+0xeba>
   17e02:	f5504de3          	bgtz	s5,17d5c <__gdtoa+0x38a>
   17e06:	010ca603          	lw	a2,16(s9)
   17e0a:	4685                	li	a3,1
   17e0c:	835e                	mv	t1,s7
   17e0e:	58a2                	lw	a7,40(sp)
   17e10:	4be2                	lw	s7,24(sp)
   17e12:	54b2                	lw	s1,44(sp)
   17e14:	8b3a                	mv	s6,a4
   17e16:	2ec6dae3          	bge	a3,a2,1890a <__gdtoa+0xf38>
   17e1a:	5782                	lw	a5,32(sp)
   17e1c:	4689                	li	a3,2
   17e1e:	8a9a                	mv	s5,t1
   17e20:	8b46                	mv	s6,a7
   17e22:	02d79063          	bne	a5,a3,17e42 <__gdtoa+0x470>
   17e26:	2cb0006f          	j	188f0 <__gdtoa+0xf1e>
   17e2a:	6df000ef          	jal	18d08 <__multadd>
   17e2e:	85ea                	mv	a1,s10
   17e30:	8caa                	mv	s9,a0
   17e32:	0e050063          	beqz	a0,17f12 <__gdtoa+0x540>
   17e36:	421000ef          	jal	18a56 <__quorem_D2A>
   17e3a:	03050a93          	addi	s5,a0,48
   17e3e:	8dca                	mv	s11,s2
   17e40:	8a4e                	mv	s4,s3
   17e42:	85d2                	mv	a1,s4
   17e44:	856a                	mv	a0,s10
   17e46:	524010ef          	jal	1936a <__mcmp>
   17e4a:	87aa                	mv	a5,a0
   17e4c:	4681                	li	a3,0
   17e4e:	4629                	li	a2,10
   17e50:	85d2                	mv	a1,s4
   17e52:	8522                	mv	a0,s0
   17e54:	001d8913          	addi	s2,s11,1
   17e58:	28f052e3          	blez	a5,188dc <__gdtoa+0xf0a>
   17e5c:	ff590fa3          	sb	s5,-1(s2)
   17e60:	6a9000ef          	jal	18d08 <__multadd>
   17e64:	89aa                	mv	s3,a0
   17e66:	4681                	li	a3,0
   17e68:	4629                	li	a2,10
   17e6a:	85e6                	mv	a1,s9
   17e6c:	8522                	mv	a0,s0
   17e6e:	0a098263          	beqz	s3,17f12 <__gdtoa+0x540>
   17e72:	fb4c1ce3          	bne	s8,s4,17e2a <__gdtoa+0x458>
   17e76:	8c4e                	mv	s8,s3
   17e78:	bf4d                	j	17e2a <__gdtoa+0x458>
   17e7a:	4791                	li	a5,4
   17e7c:	0afe1363          	bne	t3,a5,17f22 <__gdtoa+0x550>
   17e80:	4632                	lw	a2,12(sp)
   17e82:	4b4a                	lw	s6,144(sp)
   17e84:	50ba                	lw	ra,172(sp)
   17e86:	549a                	lw	s1,164(sp)
   17e88:	4ada                	lw	s5,148(sp)
   17e8a:	4bba                	lw	s7,140(sp)
   17e8c:	77e1                	lui	a5,0xffff8
   17e8e:	00f8a023          	sw	a5,0(a7)
   17e92:	65f9                	lui	a1,0x1e
   17e94:	468d                	li	a3,3
   17e96:	9a458593          	addi	a1,a1,-1628 # 1d9a4 <__clzsi2+0xd0>
   17e9a:	614d                	addi	sp,sp,176
   17e9c:	33b0006f          	j	189d6 <__nrv_alloc_D2A>
   17ea0:	85e6                	mv	a1,s9
   17ea2:	8522                	mv	a0,s0
   17ea4:	653000ef          	jal	18cf6 <_Bfree>
   17ea8:	590a                	lw	s2,160(sp)
   17eaa:	49fa                	lw	s3,156(sp)
   17eac:	4a6a                	lw	s4,152(sp)
   17eae:	4c2a                	lw	s8,136(sp)
   17eb0:	4c9a                	lw	s9,132(sp)
   17eb2:	4d0a                	lw	s10,128(sp)
   17eb4:	5df6                	lw	s11,124(sp)
   17eb6:	4632                	lw	a2,12(sp)
   17eb8:	4785                	li	a5,1
   17eba:	65f9                	lui	a1,0x1e
   17ebc:	8522                	mv	a0,s0
   17ebe:	c09c                	sw	a5,0(s1)
   17ec0:	4685                	li	a3,1
   17ec2:	99458593          	addi	a1,a1,-1644 # 1d994 <__clzsi2+0xc0>
   17ec6:	311000ef          	jal	189d6 <__nrv_alloc_D2A>
   17eca:	542a                	lw	s0,168(sp)
   17ecc:	88aa                	mv	a7,a0
   17ece:	50ba                	lw	ra,172(sp)
   17ed0:	4b4a                	lw	s6,144(sp)
   17ed2:	549a                	lw	s1,164(sp)
   17ed4:	4ada                	lw	s5,148(sp)
   17ed6:	4bba                	lw	s7,140(sp)
   17ed8:	8546                	mv	a0,a7
   17eda:	614d                	addi	sp,sp,176
   17edc:	8082                	ret
   17ede:	4632                	lw	a2,12(sp)
   17ee0:	50ba                	lw	ra,172(sp)
   17ee2:	549a                	lw	s1,164(sp)
   17ee4:	4ada                	lw	s5,148(sp)
   17ee6:	4bba                	lw	s7,140(sp)
   17ee8:	77e1                	lui	a5,0xffff8
   17eea:	00f8a023          	sw	a5,0(a7)
   17eee:	65f9                	lui	a1,0x1e
   17ef0:	46a1                	li	a3,8
   17ef2:	99858593          	addi	a1,a1,-1640 # 1d998 <__clzsi2+0xc4>
   17ef6:	614d                	addi	sp,sp,176
   17ef8:	2df0006f          	j	189d6 <__nrv_alloc_D2A>
   17efc:	85ea                	mv	a1,s10
   17efe:	8522                	mv	a0,s0
   17f00:	cc46                	sw	a7,24(sp)
   17f02:	c842                	sw	a6,16(sp)
   17f04:	358010ef          	jal	1925c <__lshift>
   17f08:	4842                	lw	a6,16(sp)
   17f0a:	48e2                	lw	a7,24(sp)
   17f0c:	8d2a                	mv	s10,a0
   17f0e:	de051de3          	bnez	a0,17d08 <__gdtoa+0x336>
   17f12:	542a                	lw	s0,168(sp)
   17f14:	590a                	lw	s2,160(sp)
   17f16:	49fa                	lw	s3,156(sp)
   17f18:	4a6a                	lw	s4,152(sp)
   17f1a:	4c2a                	lw	s8,136(sp)
   17f1c:	4c9a                	lw	s9,132(sp)
   17f1e:	4d0a                	lw	s10,128(sp)
   17f20:	5df6                	lw	s11,124(sp)
   17f22:	4881                	li	a7,0
   17f24:	b76d                	j	17ece <__gdtoa+0x4fc>
   17f26:	000ca823          	sw	zero,16(s9)
   17f2a:	b649                	j	17aac <__gdtoa+0xda>
   17f2c:	4785                	li	a5,1
   17f2e:	cabe                	sw	a5,84(sp)
   17f30:	cc02                	sw	zero,24(sp)
   17f32:	1a0ec163          	bltz	t4,180d4 <__gdtoa+0x702>
   17f36:	c40859e3          	bgez	a6,17b88 <__gdtoa+0x1b6>
   17f3a:	47e2                	lw	a5,24(sp)
   17f3c:	da42                	sw	a6,52(sp)
   17f3e:	410787b3          	sub	a5,a5,a6
   17f42:	cc3e                	sw	a5,24(sp)
   17f44:	410007b3          	neg	a5,a6
   17f48:	d83e                	sw	a5,48(sp)
   17f4a:	4801                	li	a6,0
   17f4c:	b189                	j	17b8e <__gdtoa+0x1bc>
   17f4e:	85aa                	mv	a1,a0
   17f50:	8566                	mv	a0,s9
   17f52:	45b000ef          	jal	18bac <__rshift_D2A>
   17f56:	5636                	lw	a2,108(sp)
   17f58:	47c2                	lw	a5,16(sp)
   17f5a:	40cd8db3          	sub	s11,s11,a2
   17f5e:	00f60c33          	add	s8,a2,a5
   17f62:	bea1                	j	17aba <__gdtoa+0xe8>
   17f64:	3fd88893          	addi	a7,a7,1021
   17f68:	7f88b793          	sltiu	a5,a7,2040
   17f6c:	ccbe                	sw	a5,88(sp)
   17f6e:	4901                	li	s2,0
   17f70:	ed01b707          	fld	fa4,-304(gp) # 1f888 <__SDATA_BEGIN__+0x28>
   17f74:	d20d07d3          	fcvt.d.w	fa5,s10
   17f78:	4785                	li	a5,1
   17f7a:	c8be                	sw	a5,80(sp)
   17f7c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   17f80:	57fd                	li	a5,-1
   17f82:	d402                	sw	zero,40(sp)
   17f84:	cebe                	sw	a5,92(sp)
   17f86:	d63e                	sw	a5,44(sp)
   17f88:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   17f8c:	058d                	addi	a1,a1,3
   17f8e:	862e                	mv	a2,a1
   17f90:	b181                	j	17bd0 <__gdtoa+0x1fe>
   17f92:	5782                	lw	a5,32(sp)
   17f94:	460d                	li	a2,3
   17f96:	40f607b3          	sub	a5,a2,a5
   17f9a:	d03e                	sw	a5,32(sp)
   17f9c:	57b2                	lw	a5,44(sp)
   17f9e:	4639                	li	a2,14
   17fa0:	c6f663e3          	bltu	a2,a5,17c06 <__gdtoa+0x234>
   17fa4:	4766                	lw	a4,88(sp)
   17fa6:	c60700e3          	beqz	a4,17c06 <__gdtoa+0x234>
   17faa:	5752                	lw	a4,52(sp)
   17fac:	5682                	lw	a3,32(sp)
   17fae:	00d76633          	or	a2,a4,a3
   17fb2:	c4061ae3          	bnez	a2,17c06 <__gdtoa+0x234>
   17fb6:	4756                	lw	a4,84(sp)
   17fb8:	d682                	sw	zero,108(sp)
   17fba:	d07a                	sw	t5,32(sp)
   17fbc:	d27e                	sw	t6,36(sp)
   17fbe:	cb11                	beqz	a4,17fd2 <__gdtoa+0x600>
   17fc0:	dc7a                	sw	t5,56(sp)
   17fc2:	de7e                	sw	t6,60(sp)
   17fc4:	ed81b787          	fld	fa5,-296(gp) # 1f890 <__SDATA_BEGIN__+0x30>
   17fc8:	3762                	fld	fa4,56(sp)
   17fca:	a2f71653          	flt.d	a2,fa4,fa5
   17fce:	7a061163          	bnez	a2,18770 <__gdtoa+0xd9e>
   17fd2:	ef81b707          	fld	fa4,-264(gp) # 1f8b0 <__SDATA_BEGIN__+0x50>
   17fd6:	ef01b787          	fld	fa5,-272(gp) # 1f8a8 <__SDATA_BEGIN__+0x48>
   17fda:	3682                	fld	fa3,32(sp)
   17fdc:	57b2                	lw	a5,44(sp)
   17fde:	fcc00637          	lui	a2,0xfcc00
   17fe2:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   17fe6:	bc3e                	fsd	fa5,56(sp)
   17fe8:	5562                	lw	a0,56(sp)
   17fea:	55f2                	lw	a1,60(sp)
   17fec:	832a                	mv	t1,a0
   17fee:	962e                	add	a2,a2,a1
   17ff0:	5c078063          	beqz	a5,185b0 <__gdtoa+0xbde>
   17ff4:	3782                	fld	fa5,32(sp)
   17ff6:	5532                	lw	a0,44(sp)
   17ff8:	4381                	li	t2,0
   17ffa:	bc3e                	fsd	fa5,56(sp)
   17ffc:	65f9                	lui	a1,0x1e
   17ffe:	fff50793          	addi	a5,a0,-1
   18002:	078e                	slli	a5,a5,0x3
   18004:	d5058293          	addi	t0,a1,-688 # 1dd50 <__mprec_tens>
   18008:	005786b3          	add	a3,a5,t0
   1800c:	229c                	fld	fa5,0(a3)
   1800e:	46c6                	lw	a3,80(sp)
   18010:	871a                	mv	a4,t1
   18012:	87b2                	mv	a5,a2
   18014:	6c068163          	beqz	a3,186d6 <__gdtoa+0xd04>
   18018:	3762                	fld	fa4,56(sp)
   1801a:	36e2                	fld	fa3,56(sp)
   1801c:	c2071353          	fcvt.w.d	t1,fa4,rtz
   18020:	f081b707          	fld	fa4,-248(gp) # 1f8c0 <__SDATA_BEGIN__+0x60>
   18024:	dc3a                	sw	a4,56(sp)
   18026:	de3e                	sw	a5,60(sp)
   18028:	1af77753          	fdiv.d	fa4,fa4,fa5
   1802c:	d20307d3          	fcvt.d.w	fa5,t1
   18030:	03030313          	addi	t1,t1,48
   18034:	00688023          	sb	t1,0(a7)
   18038:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   1803c:	36e2                	fld	fa3,56(sp)
   1803e:	00188613          	addi	a2,a7,1
   18042:	0ad77753          	fsub.d	fa4,fa4,fa3
   18046:	a2e79353          	flt.d	t1,fa5,fa4
   1804a:	7c031e63          	bnez	t1,18826 <__gdtoa+0xe54>
   1804e:	ed81b587          	fld	fa1,-296(gp) # 1f890 <__SDATA_BEGIN__+0x30>
   18052:	ee01b607          	fld	fa2,-288(gp) # 1f898 <__SDATA_BEGIN__+0x38>
   18056:	a80d                	j	18088 <__gdtoa+0x6b6>
   18058:	57b6                	lw	a5,108(sp)
   1805a:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe03fd>
   1805c:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffd83fd>
   1805e:	d6be                	sw	a5,108(sp)
   18060:	7ea7d163          	bge	a5,a0,18842 <__gdtoa+0xe70>
   18064:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   18068:	12c77753          	fmul.d	fa4,fa4,fa2
   1806c:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   18070:	d20786d3          	fcvt.d.w	fa3,a5
   18074:	03078793          	addi	a5,a5,48
   18078:	fef60fa3          	sb	a5,-1(a2)
   1807c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   18080:	a2e797d3          	flt.d	a5,fa5,fa4
   18084:	7a079163          	bnez	a5,18826 <__gdtoa+0xe54>
   18088:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   1808c:	a2e697d3          	flt.d	a5,fa3,fa4
   18090:	d7e1                	beqz	a5,18058 <__gdtoa+0x686>
   18092:	fff64683          	lbu	a3,-1(a2)
   18096:	00138513          	addi	a0,t2,1
   1809a:	03900593          	li	a1,57
   1809e:	a031                	j	180aa <__gdtoa+0x6d8>
   180a0:	62f88763          	beq	a7,a5,186ce <__gdtoa+0xcfc>
   180a4:	fff7c683          	lbu	a3,-1(a5)
   180a8:	863e                	mv	a2,a5
   180aa:	fff60793          	addi	a5,a2,-1
   180ae:	feb689e3          	beq	a3,a1,180a0 <__gdtoa+0x6ce>
   180b2:	0685                	addi	a3,a3,1
   180b4:	0ff6f693          	zext.b	a3,a3
   180b8:	00d78023          	sb	a3,0(a5)
   180bc:	892a                	mv	s2,a0
   180be:	02000b13          	li	s6,32
   180c2:	a0e5                	j	181aa <__gdtoa+0x7d8>
   180c4:	542a                	lw	s0,168(sp)
   180c6:	590a                	lw	s2,160(sp)
   180c8:	49fa                	lw	s3,156(sp)
   180ca:	4a6a                	lw	s4,152(sp)
   180cc:	4c9a                	lw	s9,132(sp)
   180ce:	4d0a                	lw	s10,128(sp)
   180d0:	4881                	li	a7,0
   180d2:	bbf5                	j	17ece <__gdtoa+0x4fc>
   180d4:	4605                	li	a2,1
   180d6:	40a607b3          	sub	a5,a2,a0
   180da:	cc3e                	sw	a5,24(sp)
   180dc:	4e81                	li	t4,0
   180de:	e4084ee3          	bltz	a6,17f3a <__gdtoa+0x568>
   180e2:	b45d                	j	17b88 <__gdtoa+0x1b6>
   180e4:	47e2                	lw	a5,24(sp)
   180e6:	5d42                	lw	s10,48(sp)
   180e8:	4c01                	li	s8,0
   180ea:	dc3e                	sw	a5,56(sp)
   180ec:	b671                	j	17c78 <__gdtoa+0x2a6>
   180ee:	4789                	li	a5,2
   180f0:	d03e                	sw	a5,32(sp)
   180f2:	b631                	j	17bfe <__gdtoa+0x22c>
   180f4:	187d                	addi	a6,a6,-1
   180f6:	ca82                	sw	zero,84(sp)
   180f8:	bd25                	j	17f30 <__gdtoa+0x55e>
   180fa:	1971                	addi	s2,s2,-4
   180fc:	4591                	li	a1,4
   180fe:	10b90263          	beq	s2,a1,18202 <__gdtoa+0x830>
   18102:	42c90263          	beq	s2,a2,18526 <__gdtoa+0xb54>
   18106:	4609                	li	a2,2
   18108:	cc82                	sw	zero,88(sp)
   1810a:	c882                	sw	zero,80(sp)
   1810c:	0ec90e63          	beq	s2,a2,18208 <__gdtoa+0x836>
   18110:	490d                	li	s2,3
   18112:	b46d                	j	17bbc <__gdtoa+0x1ea>
   18114:	66f9                	lui	a3,0x1e
   18116:	078e                	slli	a5,a5,0x3
   18118:	d5068693          	addi	a3,a3,-688 # 1dd50 <__mprec_tens>
   1811c:	97b6                	add	a5,a5,a3
   1811e:	2398                	fld	fa4,0(a5)
   18120:	57a2                	lw	a5,40(sp)
   18122:	3207c263          	bltz	a5,18446 <__gdtoa+0xa74>
   18126:	c87a                	sw	t5,16(sp)
   18128:	ca7e                	sw	t6,20(sp)
   1812a:	27c2                	fld	fa5,16(sp)
   1812c:	4785                	li	a5,1
   1812e:	d6be                	sw	a5,108(sp)
   18130:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   18134:	57d2                	lw	a5,52(sp)
   18136:	26c2                	fld	fa3,16(sp)
   18138:	00188613          	addi	a2,a7,1
   1813c:	00178513          	addi	a0,a5,1
   18140:	892a                	mv	s2,a0
   18142:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   18146:	d20787d3          	fcvt.d.w	fa5,a5
   1814a:	03078693          	addi	a3,a5,48
   1814e:	00d88023          	sb	a3,0(a7)
   18152:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   18156:	d20006d3          	fcvt.d.w	fa3,zero
   1815a:	a2d7a6d3          	feq.d	a3,fa5,fa3
   1815e:	e6b1                	bnez	a3,181aa <__gdtoa+0x7d8>
   18160:	ee01b587          	fld	fa1,-288(gp) # 1f898 <__SDATA_BEGIN__+0x38>
   18164:	22d68653          	fmv.d	fa2,fa3
   18168:	55b2                	lw	a1,44(sp)
   1816a:	a025                	j	18192 <__gdtoa+0x7c0>
   1816c:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   18170:	d6b6                	sw	a3,108(sp)
   18172:	0605                	addi	a2,a2,1
   18174:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   18178:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   1817c:	d20786d3          	fcvt.d.w	fa3,a5
   18180:	03078713          	addi	a4,a5,48
   18184:	fee60fa3          	sb	a4,-1(a2)
   18188:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   1818c:	a2c7a753          	feq.d	a4,fa5,fa2
   18190:	ef09                	bnez	a4,181aa <__gdtoa+0x7d8>
   18192:	5736                	lw	a4,108(sp)
   18194:	00170693          	addi	a3,a4,1
   18198:	fcb71ae3          	bne	a4,a1,1816c <__gdtoa+0x79a>
   1819c:	5702                	lw	a4,32(sp)
   1819e:	4e070e63          	beqz	a4,1869a <__gdtoa+0xcc8>
   181a2:	4785                	li	a5,1
   181a4:	4b41                	li	s6,16
   181a6:	60f70263          	beq	a4,a5,187aa <__gdtoa+0xdd8>
   181aa:	85e6                	mv	a1,s9
   181ac:	8522                	mv	a0,s0
   181ae:	d446                	sw	a7,40(sp)
   181b0:	c832                	sw	a2,16(sp)
   181b2:	345000ef          	jal	18cf6 <_Bfree>
   181b6:	4642                	lw	a2,16(sp)
   181b8:	47b2                	lw	a5,12(sp)
   181ba:	58a2                	lw	a7,40(sp)
   181bc:	00060023          	sb	zero,0(a2)
   181c0:	0124a023          	sw	s2,0(s1)
   181c4:	c391                	beqz	a5,181c8 <__gdtoa+0x7f6>
   181c6:	c390                	sw	a2,0(a5)
   181c8:	000ba783          	lw	a5,0(s7)
   181cc:	542a                	lw	s0,168(sp)
   181ce:	590a                	lw	s2,160(sp)
   181d0:	0167e7b3          	or	a5,a5,s6
   181d4:	49fa                	lw	s3,156(sp)
   181d6:	4a6a                	lw	s4,152(sp)
   181d8:	4c2a                	lw	s8,136(sp)
   181da:	4c9a                	lw	s9,132(sp)
   181dc:	4d0a                	lw	s10,128(sp)
   181de:	5df6                	lw	s11,124(sp)
   181e0:	00fba023          	sw	a5,0(s7)
   181e4:	b1ed                	j	17ece <__gdtoa+0x4fc>
   181e6:	b0dd90e3          	bne	s11,a3,17ce6 <__gdtoa+0x314>
   181ea:	004a2783          	lw	a5,4(s4)
   181ee:	4742                	lw	a4,16(sp)
   181f0:	0785                	addi	a5,a5,1
   181f2:	aee7dae3          	bge	a5,a4,17ce6 <__gdtoa+0x314>
   181f6:	47e2                	lw	a5,24(sp)
   181f8:	0e85                	addi	t4,t4,1
   181fa:	4805                	li	a6,1
   181fc:	0785                	addi	a5,a5,1
   181fe:	cc3e                	sw	a5,24(sp)
   18200:	b4dd                	j	17ce6 <__gdtoa+0x314>
   18202:	4785                	li	a5,1
   18204:	cc82                	sw	zero,88(sp)
   18206:	c8be                	sw	a5,80(sp)
   18208:	55a2                	lw	a1,40(sp)
   1820a:	00b04363          	bgtz	a1,18210 <__gdtoa+0x83e>
   1820e:	4585                	li	a1,1
   18210:	862e                	mv	a2,a1
   18212:	ceae                	sw	a1,92(sp)
   18214:	d62e                	sw	a1,44(sp)
   18216:	d42e                	sw	a1,40(sp)
   18218:	ba65                	j	17bd0 <__gdtoa+0x1fe>
   1821a:	2ef000ef          	jal	18d08 <__multadd>
   1821e:	8c2a                	mv	s8,a0
   18220:	ce0509e3          	beqz	a0,17f12 <__gdtoa+0x540>
   18224:	8a2a                	mv	s4,a0
   18226:	beb5                	j	17da2 <__gdtoa+0x3d0>
   18228:	b20adae3          	bgez	s5,17d5c <__gdtoa+0x38a>
   1822c:	5782                	lw	a5,32(sp)
   1822e:	835e                	mv	t1,s7
   18230:	58a2                	lw	a7,40(sp)
   18232:	4be2                	lw	s7,24(sp)
   18234:	54b2                	lw	s1,44(sp)
   18236:	8b3a                	mv	s6,a4
   18238:	6c079463          	bnez	a5,18900 <__gdtoa+0xf2e>
   1823c:	010ca603          	lw	a2,16(s9)
   18240:	4685                	li	a3,1
   18242:	4b41                	li	s6,16
   18244:	001d8913          	addi	s2,s11,1
   18248:	68c6d463          	bge	a3,a2,188d0 <__gdtoa+0xefe>
   1824c:	89e2                	mv	s3,s8
   1824e:	864a                	mv	a2,s2
   18250:	006d8023          	sb	t1,0(s11)
   18254:	8c52                	mv	s8,s4
   18256:	85ea                	mv	a1,s10
   18258:	8522                	mv	a0,s0
   1825a:	d446                	sw	a7,40(sp)
   1825c:	c832                	sw	a2,16(sp)
   1825e:	299000ef          	jal	18cf6 <_Bfree>
   18262:	57d2                	lw	a5,52(sp)
   18264:	4642                	lw	a2,16(sp)
   18266:	58a2                	lw	a7,40(sp)
   18268:	00178913          	addi	s2,a5,1
   1826c:	f20c0fe3          	beqz	s8,181aa <__gdtoa+0x7d8>
   18270:	00098a63          	beqz	s3,18284 <__gdtoa+0x8b2>
   18274:	01898863          	beq	s3,s8,18284 <__gdtoa+0x8b2>
   18278:	85ce                	mv	a1,s3
   1827a:	8522                	mv	a0,s0
   1827c:	27b000ef          	jal	18cf6 <_Bfree>
   18280:	58a2                	lw	a7,40(sp)
   18282:	4642                	lw	a2,16(sp)
   18284:	85e2                	mv	a1,s8
   18286:	8522                	mv	a0,s0
   18288:	d446                	sw	a7,40(sp)
   1828a:	c832                	sw	a2,16(sp)
   1828c:	26b000ef          	jal	18cf6 <_Bfree>
   18290:	58a2                	lw	a7,40(sp)
   18292:	4642                	lw	a2,16(sp)
   18294:	bf19                	j	181aa <__gdtoa+0x7d8>
   18296:	85e6                	mv	a1,s9
   18298:	8522                	mv	a0,s0
   1829a:	d846                	sw	a7,48(sp)
   1829c:	cc76                	sw	t4,24(sp)
   1829e:	c842                	sw	a6,16(sp)
   182a0:	7bd000ef          	jal	1925c <__lshift>
   182a4:	8caa                	mv	s9,a0
   182a6:	c60506e3          	beqz	a0,17f12 <__gdtoa+0x540>
   182aa:	57b6                	lw	a5,108(sp)
   182ac:	58c2                	lw	a7,48(sp)
   182ae:	4ee2                	lw	t4,24(sp)
   182b0:	4842                	lw	a6,16(sp)
   182b2:	b4b9                	j	17d00 <__gdtoa+0x32e>
   182b4:	85ea                	mv	a1,s10
   182b6:	8566                	mv	a0,s9
   182b8:	cc46                	sw	a7,24(sp)
   182ba:	c842                	sw	a6,16(sp)
   182bc:	0ae010ef          	jal	1936a <__mcmp>
   182c0:	4842                	lw	a6,16(sp)
   182c2:	48e2                	lw	a7,24(sp)
   182c4:	a40555e3          	bgez	a0,17d0e <__gdtoa+0x33c>
   182c8:	57d2                	lw	a5,52(sp)
   182ca:	85e6                	mv	a1,s9
   182cc:	4681                	li	a3,0
   182ce:	17fd                	addi	a5,a5,-1
   182d0:	4629                	li	a2,10
   182d2:	8522                	mv	a0,s0
   182d4:	da3e                	sw	a5,52(sp)
   182d6:	233000ef          	jal	18d08 <__multadd>
   182da:	8caa                	mv	s9,a0
   182dc:	c2050be3          	beqz	a0,17f12 <__gdtoa+0x540>
   182e0:	47c6                	lw	a5,80(sp)
   182e2:	48e2                	lw	a7,24(sp)
   182e4:	50079a63          	bnez	a5,187f8 <__gdtoa+0xe26>
   182e8:	47f6                	lw	a5,92(sp)
   182ea:	14f05863          	blez	a5,1843a <__gdtoa+0xa68>
   182ee:	d63e                	sw	a5,44(sp)
   182f0:	5932                	lw	s2,44(sp)
   182f2:	8dc6                	mv	s11,a7
   182f4:	4685                	li	a3,1
   182f6:	89c6                	mv	s3,a7
   182f8:	a801                	j	18308 <__gdtoa+0x936>
   182fa:	20f000ef          	jal	18d08 <__multadd>
   182fe:	8caa                	mv	s9,a0
   18300:	c00509e3          	beqz	a0,17f12 <__gdtoa+0x540>
   18304:	56b6                	lw	a3,108(sp)
   18306:	0685                	addi	a3,a3,1
   18308:	85ea                	mv	a1,s10
   1830a:	8566                	mv	a0,s9
   1830c:	d6b6                	sw	a3,108(sp)
   1830e:	27a1                	jal	18a56 <__quorem_D2A>
   18310:	03050313          	addi	t1,a0,48
   18314:	006d8023          	sb	t1,0(s11)
   18318:	57b6                	lw	a5,108(sp)
   1831a:	4681                	li	a3,0
   1831c:	4629                	li	a2,10
   1831e:	85e6                	mv	a1,s9
   18320:	8522                	mv	a0,s0
   18322:	0d85                	addi	s11,s11,1
   18324:	fd27cbe3          	blt	a5,s2,182fa <__gdtoa+0x928>
   18328:	88ce                	mv	a7,s3
   1832a:	4981                	li	s3,0
   1832c:	5782                	lw	a5,32(sp)
   1832e:	2c078263          	beqz	a5,185f2 <__gdtoa+0xc20>
   18332:	4689                	li	a3,2
   18334:	010ca603          	lw	a2,16(s9)
   18338:	2ed78363          	beq	a5,a3,1861e <__gdtoa+0xc4c>
   1833c:	4685                	li	a3,1
   1833e:	1ac6c763          	blt	a3,a2,184ec <__gdtoa+0xb1a>
   18342:	014ca683          	lw	a3,20(s9)
   18346:	1a069363          	bnez	a3,184ec <__gdtoa+0xb1a>
   1834a:	00d036b3          	snez	a3,a3
   1834e:	00469b13          	slli	s6,a3,0x4
   18352:	03000593          	li	a1,48
   18356:	fffdc783          	lbu	a5,-1(s11)
   1835a:	866e                	mv	a2,s11
   1835c:	1dfd                	addi	s11,s11,-1
   1835e:	feb78ce3          	beq	a5,a1,18356 <__gdtoa+0x984>
   18362:	bdd5                	j	18256 <__gdtoa+0x884>
   18364:	57b2                	lw	a5,44(sp)
   18366:	5742                	lw	a4,48(sp)
   18368:	fff78693          	addi	a3,a5,-1
   1836c:	10d74463          	blt	a4,a3,18474 <__gdtoa+0xaa2>
   18370:	40d70d33          	sub	s10,a4,a3
   18374:	4407d263          	bgez	a5,187b8 <__gdtoa+0xde6>
   18378:	47e2                	lw	a5,24(sp)
   1837a:	5732                	lw	a4,44(sp)
   1837c:	d682                	sw	zero,108(sp)
   1837e:	8f99                	sub	a5,a5,a4
   18380:	dc3e                	sw	a5,56(sp)
   18382:	b8f1                	j	17c5e <__gdtoa+0x28c>
   18384:	4789                	li	a5,2
   18386:	9927d7e3          	bge	a5,s2,17d14 <__gdtoa+0x342>
   1838a:	85ea                	mv	a1,s10
   1838c:	4681                	li	a3,0
   1838e:	4615                	li	a2,5
   18390:	8522                	mv	a0,s0
   18392:	c846                	sw	a7,16(sp)
   18394:	175000ef          	jal	18d08 <__multadd>
   18398:	85aa                	mv	a1,a0
   1839a:	b6050ce3          	beqz	a0,17f12 <__gdtoa+0x540>
   1839e:	57b2                	lw	a5,44(sp)
   183a0:	48c2                	lw	a7,16(sp)
   183a2:	e3f9                	bnez	a5,18468 <__gdtoa+0xa96>
   183a4:	c82a                	sw	a0,16(sp)
   183a6:	8566                	mv	a0,s9
   183a8:	cc46                	sw	a7,24(sp)
   183aa:	7c1000ef          	jal	1936a <__mcmp>
   183ae:	45c2                	lw	a1,16(sp)
   183b0:	48e2                	lw	a7,24(sp)
   183b2:	0aa05b63          	blez	a0,18468 <__gdtoa+0xa96>
   183b6:	57d2                	lw	a5,52(sp)
   183b8:	00278913          	addi	s2,a5,2
   183bc:	03100793          	li	a5,49
   183c0:	00188613          	addi	a2,a7,1
   183c4:	00f88023          	sb	a5,0(a7)
   183c8:	02000b13          	li	s6,32
   183cc:	8522                	mv	a0,s0
   183ce:	d446                	sw	a7,40(sp)
   183d0:	c832                	sw	a2,16(sp)
   183d2:	125000ef          	jal	18cf6 <_Bfree>
   183d6:	4642                	lw	a2,16(sp)
   183d8:	58a2                	lw	a7,40(sp)
   183da:	dc0c08e3          	beqz	s8,181aa <__gdtoa+0x7d8>
   183de:	b55d                	j	18284 <__gdtoa+0x8b2>
   183e0:	4605                	li	a2,1
   183e2:	4585                	li	a1,1
   183e4:	fecff06f          	j	17bd0 <__gdtoa+0x1fe>
   183e8:	85aa                	mv	a1,a0
   183ea:	8642                	mv	a2,a6
   183ec:	8522                	mv	a0,s0
   183ee:	c0c6                	sw	a7,64(sp)
   183f0:	d876                	sw	t4,48(sp)
   183f2:	597000ef          	jal	19188 <__pow5mult>
   183f6:	8d2a                	mv	s10,a0
   183f8:	b0050de3          	beqz	a0,17f12 <__gdtoa+0x540>
   183fc:	4685                	li	a3,1
   183fe:	5ec2                	lw	t4,48(sp)
   18400:	4886                	lw	a7,64(sp)
   18402:	1526d063          	bge	a3,s2,18542 <__gdtoa+0xb70>
   18406:	010d2783          	lw	a5,16(s10)
   1840a:	d846                	sw	a7,48(sp)
   1840c:	c876                	sw	t4,16(sp)
   1840e:	078d                	addi	a5,a5,3
   18410:	078a                	slli	a5,a5,0x2
   18412:	97ea                	add	a5,a5,s10
   18414:	43c8                	lw	a0,4(a5)
   18416:	297000ef          	jal	18eac <__hi0bits>
   1841a:	58c2                	lw	a7,48(sp)
   1841c:	4ec2                	lw	t4,16(sp)
   1841e:	8a2a                	mv	s4,a0
   18420:	885a                	mv	a6,s6
   18422:	b0d9                	j	17ce8 <__gdtoa+0x316>
   18424:	4685                	li	a3,1
   18426:	f326cfe3          	blt	a3,s2,18364 <__gdtoa+0x992>
   1842a:	47e2                	lw	a5,24(sp)
   1842c:	5d42                	lw	s10,48(sp)
   1842e:	9eae                	add	t4,t4,a1
   18430:	dc3e                	sw	a5,56(sp)
   18432:	97ae                	add	a5,a5,a1
   18434:	cc3e                	sw	a5,24(sp)
   18436:	829ff06f          	j	17c5e <__gdtoa+0x28c>
   1843a:	4789                	li	a5,2
   1843c:	4727ce63          	blt	a5,s2,188b8 <__gdtoa+0xee6>
   18440:	47f6                	lw	a5,92(sp)
   18442:	d63e                	sw	a5,44(sp)
   18444:	b575                	j	182f0 <__gdtoa+0x91e>
   18446:	57b2                	lw	a5,44(sp)
   18448:	ccf04fe3          	bgtz	a5,18126 <__gdtoa+0x754>
   1844c:	ef81                	bnez	a5,18464 <__gdtoa+0xa92>
   1844e:	f001b787          	fld	fa5,-256(gp) # 1f8b8 <__SDATA_BEGIN__+0x58>
   18452:	c87a                	sw	t5,16(sp)
   18454:	ca7e                	sw	t6,20(sp)
   18456:	12f77753          	fmul.d	fa4,fa4,fa5
   1845a:	27c2                	fld	fa5,16(sp)
   1845c:	a2e787d3          	fle.d	a5,fa5,fa4
   18460:	38078663          	beqz	a5,187ec <__gdtoa+0xe1a>
   18464:	4581                	li	a1,0
   18466:	4c01                	li	s8,0
   18468:	57a2                	lw	a5,40(sp)
   1846a:	8646                	mv	a2,a7
   1846c:	4b41                	li	s6,16
   1846e:	40f00933          	neg	s2,a5
   18472:	bfa9                	j	183cc <__gdtoa+0x9fa>
   18474:	57c2                	lw	a5,48(sp)
   18476:	4762                	lw	a4,24(sp)
   18478:	4d01                	li	s10,0
   1847a:	40f68633          	sub	a2,a3,a5
   1847e:	57b2                	lw	a5,44(sp)
   18480:	dc3a                	sw	a4,56(sp)
   18482:	9832                	add	a6,a6,a2
   18484:	d6be                	sw	a5,108(sp)
   18486:	9ebe                	add	t4,t4,a5
   18488:	97ba                	add	a5,a5,a4
   1848a:	cc3e                	sw	a5,24(sp)
   1848c:	d836                	sw	a3,48(sp)
   1848e:	fd0ff06f          	j	17c5e <__gdtoa+0x28c>
   18492:	85e2                	mv	a1,s8
   18494:	866a                	mv	a2,s10
   18496:	8522                	mv	a0,s0
   18498:	ccc6                	sw	a7,88(sp)
   1849a:	c4f6                	sw	t4,72(sp)
   1849c:	c0c2                	sw	a6,64(sp)
   1849e:	4eb000ef          	jal	19188 <__pow5mult>
   184a2:	8c2a                	mv	s8,a0
   184a4:	a60507e3          	beqz	a0,17f12 <__gdtoa+0x540>
   184a8:	85aa                	mv	a1,a0
   184aa:	8666                	mv	a2,s9
   184ac:	8522                	mv	a0,s0
   184ae:	345000ef          	jal	18ff2 <__multiply>
   184b2:	8aaa                	mv	s5,a0
   184b4:	a4050fe3          	beqz	a0,17f12 <__gdtoa+0x540>
   184b8:	85e6                	mv	a1,s9
   184ba:	8522                	mv	a0,s0
   184bc:	03b000ef          	jal	18cf6 <_Bfree>
   184c0:	57c2                	lw	a5,48(sp)
   184c2:	4806                	lw	a6,64(sp)
   184c4:	4ea6                	lw	t4,72(sp)
   184c6:	41a787b3          	sub	a5,a5,s10
   184ca:	d83e                	sw	a5,48(sp)
   184cc:	48e6                	lw	a7,88(sp)
   184ce:	8cd6                	mv	s9,s5
   184d0:	fe078963          	beqz	a5,17cc2 <__gdtoa+0x2f0>
   184d4:	fd2ff06f          	j	17ca6 <__gdtoa+0x2d4>
   184d8:	89e2                	mv	s3,s8
   184da:	86ee                	mv	a3,s11
   184dc:	001d8913          	addi	s2,s11,1
   184e0:	8c52                	mv	s8,s4
   184e2:	03900613          	li	a2,57
   184e6:	8dca                	mv	s11,s2
   184e8:	00c68023          	sb	a2,0(a3)
   184ec:	03900593          	li	a1,57
   184f0:	a019                	j	184f6 <__gdtoa+0xb24>
   184f2:	13b88f63          	beq	a7,s11,18630 <__gdtoa+0xc5e>
   184f6:	fffdc683          	lbu	a3,-1(s11)
   184fa:	866e                	mv	a2,s11
   184fc:	1dfd                	addi	s11,s11,-1
   184fe:	feb68ae3          	beq	a3,a1,184f2 <__gdtoa+0xb20>
   18502:	0685                	addi	a3,a3,1
   18504:	00dd8023          	sb	a3,0(s11)
   18508:	02000b13          	li	s6,32
   1850c:	b3a9                	j	18256 <__gdtoa+0x884>
   1850e:	85e2                	mv	a1,s8
   18510:	8522                	mv	a0,s0
   18512:	d446                	sw	a7,40(sp)
   18514:	c842                	sw	a6,16(sp)
   18516:	547000ef          	jal	1925c <__lshift>
   1851a:	4842                	lw	a6,16(sp)
   1851c:	58a2                	lw	a7,40(sp)
   1851e:	8c2a                	mv	s8,a0
   18520:	800512e3          	bnez	a0,17d24 <__gdtoa+0x352>
   18524:	b2fd                	j	17f12 <__gdtoa+0x540>
   18526:	4785                	li	a5,1
   18528:	cc82                	sw	zero,88(sp)
   1852a:	c8be                	sw	a5,80(sp)
   1852c:	e90ff06f          	j	17bbc <__gdtoa+0x1ea>
   18530:	4785                	li	a5,1
   18532:	c8be                	sw	a5,80(sp)
   18534:	e88ff06f          	j	17bbc <__gdtoa+0x1ea>
   18538:	4785                	li	a5,1
   1853a:	c8be                	sw	a5,80(sp)
   1853c:	b1f1                	j	18208 <__gdtoa+0x836>
   1853e:	c882                	sw	zero,80(sp)
   18540:	b1e1                	j	18208 <__gdtoa+0x836>
   18542:	ecdd92e3          	bne	s11,a3,18406 <__gdtoa+0xa34>
   18546:	004a2783          	lw	a5,4(s4)
   1854a:	4742                	lw	a4,16(sp)
   1854c:	0785                	addi	a5,a5,1
   1854e:	eae7dce3          	bge	a5,a4,18406 <__gdtoa+0xa34>
   18552:	47e2                	lw	a5,24(sp)
   18554:	0e85                	addi	t4,t4,1
   18556:	4b05                	li	s6,1
   18558:	0785                	addi	a5,a5,1
   1855a:	cc3e                	sw	a5,24(sp)
   1855c:	b56d                	j	18406 <__gdtoa+0xa34>
   1855e:	004c2583          	lw	a1,4(s8)
   18562:	8522                	mv	a0,s0
   18564:	c846                	sw	a7,16(sp)
   18566:	2715                	jal	18c8a <_Balloc>
   18568:	8a2a                	mv	s4,a0
   1856a:	9a0504e3          	beqz	a0,17f12 <__gdtoa+0x540>
   1856e:	010c2603          	lw	a2,16(s8)
   18572:	00cc0593          	addi	a1,s8,12
   18576:	0531                	addi	a0,a0,12
   18578:	0609                	addi	a2,a2,2
   1857a:	060a                	slli	a2,a2,0x2
   1857c:	f1bfe0ef          	jal	17496 <memcpy>
   18580:	85d2                	mv	a1,s4
   18582:	4605                	li	a2,1
   18584:	8522                	mv	a0,s0
   18586:	4d7000ef          	jal	1925c <__lshift>
   1858a:	48c2                	lw	a7,16(sp)
   1858c:	8a2a                	mv	s4,a0
   1858e:	f8051e63          	bnez	a0,17d2a <__gdtoa+0x358>
   18592:	b241                	j	17f12 <__gdtoa+0x540>
   18594:	ef81b707          	fld	fa4,-264(gp) # 1f8b0 <__SDATA_BEGIN__+0x50>
   18598:	ef01b787          	fld	fa5,-272(gp) # 1f8a8 <__SDATA_BEGIN__+0x48>
   1859c:	3682                	fld	fa3,32(sp)
   1859e:	fcc00637          	lui	a2,0xfcc00
   185a2:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   185a6:	bc3e                	fsd	fa5,56(sp)
   185a8:	5562                	lw	a0,56(sp)
   185aa:	55f2                	lw	a1,60(sp)
   185ac:	832a                	mv	t1,a0
   185ae:	962e                	add	a2,a2,a1
   185b0:	de32                	sw	a2,60(sp)
   185b2:	f001b707          	fld	fa4,-256(gp) # 1f8b8 <__SDATA_BEGIN__+0x58>
   185b6:	3782                	fld	fa5,32(sp)
   185b8:	dc1a                	sw	t1,56(sp)
   185ba:	0ae7f753          	fsub.d	fa4,fa5,fa4
   185be:	37e2                	fld	fa5,56(sp)
   185c0:	a2e79653          	flt.d	a2,fa5,fa4
   185c4:	1e061663          	bnez	a2,187b0 <__gdtoa+0xdde>
   185c8:	22f797d3          	fneg.d	fa5,fa5
   185cc:	a2f71653          	flt.d	a2,fa4,fa5
   185d0:	e8061ae3          	bnez	a2,18464 <__gdtoa+0xa92>
   185d4:	5f02                	lw	t5,32(sp)
   185d6:	5f92                	lw	t6,36(sp)
   185d8:	65f9                	lui	a1,0x1e
   185da:	280c4b63          	bltz	s8,18870 <__gdtoa+0xe9e>
   185de:	57a2                	lw	a5,40(sp)
   185e0:	d002                	sw	zero,32(sp)
   185e2:	d505b707          	fld	fa4,-688(a1) # 1dd50 <__mprec_tens>
   185e6:	b407d0e3          	bgez	a5,18126 <__gdtoa+0x754>
   185ea:	57b2                	lw	a5,44(sp)
   185ec:	b2079de3          	bnez	a5,18126 <__gdtoa+0x754>
   185f0:	bdb9                	j	1844e <__gdtoa+0xa7c>
   185f2:	85e6                	mv	a1,s9
   185f4:	4605                	li	a2,1
   185f6:	8522                	mv	a0,s0
   185f8:	c846                	sw	a7,16(sp)
   185fa:	d41a                	sw	t1,40(sp)
   185fc:	461000ef          	jal	1925c <__lshift>
   18600:	8caa                	mv	s9,a0
   18602:	900508e3          	beqz	a0,17f12 <__gdtoa+0x540>
   18606:	85ea                	mv	a1,s10
   18608:	563000ef          	jal	1936a <__mcmp>
   1860c:	48c2                	lw	a7,16(sp)
   1860e:	eca04fe3          	bgtz	a0,184ec <__gdtoa+0xb1a>
   18612:	e511                	bnez	a0,1861e <__gdtoa+0xc4c>
   18614:	5322                	lw	t1,40(sp)
   18616:	00137313          	andi	t1,t1,1
   1861a:	ec0319e3          	bnez	t1,184ec <__gdtoa+0xb1a>
   1861e:	010ca603          	lw	a2,16(s9)
   18622:	4685                	li	a3,1
   18624:	4b41                	li	s6,16
   18626:	d2c6c6e3          	blt	a3,a2,18352 <__gdtoa+0x980>
   1862a:	014ca683          	lw	a3,20(s9)
   1862e:	bb31                	j	1834a <__gdtoa+0x978>
   18630:	57d2                	lw	a5,52(sp)
   18632:	02000b13          	li	s6,32
   18636:	0785                	addi	a5,a5,1
   18638:	da3e                	sw	a5,52(sp)
   1863a:	03100793          	li	a5,49
   1863e:	00f88023          	sb	a5,0(a7)
   18642:	b911                	j	18256 <__gdtoa+0x884>
   18644:	5782                	lw	a5,32(sp)
   18646:	8926                	mv	s2,s1
   18648:	835e                	mv	t1,s7
   1864a:	58a2                	lw	a7,40(sp)
   1864c:	4be2                	lw	s7,24(sp)
   1864e:	54b2                	lw	s1,44(sp)
   18650:	cb91                	beqz	a5,18664 <__gdtoa+0xc92>
   18652:	010ca603          	lw	a2,16(s9)
   18656:	4685                	li	a3,1
   18658:	fcc6c163          	blt	a3,a2,17e1a <__gdtoa+0x448>
   1865c:	014ca683          	lw	a3,20(s9)
   18660:	fa069d63          	bnez	a3,17e1a <__gdtoa+0x448>
   18664:	85e6                	mv	a1,s9
   18666:	4605                	li	a2,1
   18668:	8522                	mv	a0,s0
   1866a:	d446                	sw	a7,40(sp)
   1866c:	c81a                	sw	t1,16(sp)
   1866e:	3ef000ef          	jal	1925c <__lshift>
   18672:	8caa                	mv	s9,a0
   18674:	88050fe3          	beqz	a0,17f12 <__gdtoa+0x540>
   18678:	85ea                	mv	a1,s10
   1867a:	4f1000ef          	jal	1936a <__mcmp>
   1867e:	4342                	lw	t1,16(sp)
   18680:	58a2                	lw	a7,40(sp)
   18682:	22a05e63          	blez	a0,188be <__gdtoa+0xeec>
   18686:	03900693          	li	a3,57
   1868a:	e4d307e3          	beq	t1,a3,184d8 <__gdtoa+0xb06>
   1868e:	02000793          	li	a5,32
   18692:	03190313          	addi	t1,s2,49
   18696:	d03e                	sw	a5,32(sp)
   18698:	b655                	j	1823c <__gdtoa+0x86a>
   1869a:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   1869e:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe03fb>
   186a2:	a2f715d3          	flt.d	a1,fa4,fa5
   186a6:	9e059ae3          	bnez	a1,1809a <__gdtoa+0x6c8>
   186aa:	a2e7a5d3          	feq.d	a1,fa5,fa4
   186ae:	c581                	beqz	a1,186b6 <__gdtoa+0xce4>
   186b0:	8b85                	andi	a5,a5,1
   186b2:	9e0794e3          	bnez	a5,1809a <__gdtoa+0x6c8>
   186b6:	87b2                	mv	a5,a2
   186b8:	4b41                	li	s6,16
   186ba:	03000593          	li	a1,48
   186be:	fff7c703          	lbu	a4,-1(a5)
   186c2:	863e                	mv	a2,a5
   186c4:	17fd                	addi	a5,a5,-1
   186c6:	feb70ce3          	beq	a4,a1,186be <__gdtoa+0xcec>
   186ca:	892a                	mv	s2,a0
   186cc:	bcf9                	j	181aa <__gdtoa+0x7d8>
   186ce:	03100693          	li	a3,49
   186d2:	0505                	addi	a0,a0,1
   186d4:	b2d5                	j	180b8 <__gdtoa+0x6e6>
   186d6:	de32                	sw	a2,60(sp)
   186d8:	dc1a                	sw	t1,56(sp)
   186da:	3762                	fld	fa4,56(sp)
   186dc:	de7e                	sw	t6,60(sp)
   186de:	dc7a                	sw	t5,56(sp)
   186e0:	35e2                	fld	fa1,56(sp)
   186e2:	12e7f653          	fmul.d	fa2,fa5,fa4
   186e6:	ee01b707          	fld	fa4,-288(gp) # 1f898 <__SDATA_BEGIN__+0x38>
   186ea:	4685                	li	a3,1
   186ec:	22b587d3          	fmv.d	fa5,fa1
   186f0:	d6b6                	sw	a3,108(sp)
   186f2:	8646                	mv	a2,a7
   186f4:	4f81                	li	t6,0
   186f6:	a029                	j	18700 <__gdtoa+0xd2e>
   186f8:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   186fc:	d6ba                	sw	a4,108(sp)
   186fe:	4f85                	li	t6,1
   18700:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   18704:	0605                	addi	a2,a2,1
   18706:	03078693          	addi	a3,a5,48
   1870a:	0ff6f693          	zext.b	a3,a3
   1870e:	c791                	beqz	a5,1871a <__gdtoa+0xd48>
   18710:	d20786d3          	fcvt.d.w	fa3,a5
   18714:	4f85                	li	t6,1
   18716:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   1871a:	fed60fa3          	sb	a3,-1(a2)
   1871e:	57b6                	lw	a5,108(sp)
   18720:	00178713          	addi	a4,a5,1
   18724:	fca79ae3          	bne	a5,a0,186f8 <__gdtoa+0xd26>
   18728:	000f8463          	beqz	t6,18730 <__gdtoa+0xd5e>
   1872c:	22f785d3          	fmv.d	fa1,fa5
   18730:	f081b787          	fld	fa5,-248(gp) # 1f8c0 <__SDATA_BEGIN__+0x60>
   18734:	02f67753          	fadd.d	fa4,fa2,fa5
   18738:	a2b71553          	flt.d	a0,fa4,fa1
   1873c:	0e051f63          	bnez	a0,1883a <__gdtoa+0xe68>
   18740:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   18744:	a2f596d3          	flt.d	a3,fa1,fa5
   18748:	12069763          	bnez	a3,18876 <__gdtoa+0xea4>
   1874c:	5f02                	lw	t5,32(sp)
   1874e:	5f92                	lw	t6,36(sp)
   18750:	e80c57e3          	bgez	s8,185de <__gdtoa+0xc0c>
   18754:	47e2                	lw	a5,24(sp)
   18756:	5d42                	lw	s10,48(sp)
   18758:	d002                	sw	zero,32(sp)
   1875a:	dc3e                	sw	a5,56(sp)
   1875c:	4c01                	li	s8,0
   1875e:	d1aff06f          	j	17c78 <__gdtoa+0x2a6>
   18762:	835e                	mv	t1,s7
   18764:	89e2                	mv	s3,s8
   18766:	58a2                	lw	a7,40(sp)
   18768:	4be2                	lw	s7,24(sp)
   1876a:	54b2                	lw	s1,44(sp)
   1876c:	8c52                	mv	s8,s4
   1876e:	be7d                	j	1832c <__gdtoa+0x95a>
   18770:	e20782e3          	beqz	a5,18594 <__gdtoa+0xbc2>
   18774:	4576                	lw	a0,92(sp)
   18776:	e4a05fe3          	blez	a0,185d4 <__gdtoa+0xc02>
   1877a:	ee01b787          	fld	fa5,-288(gp) # 1f898 <__SDATA_BEGIN__+0x38>
   1877e:	53fd                	li	t2,-1
   18780:	12f777d3          	fmul.d	fa5,fa4,fa5
   18784:	ee81b707          	fld	fa4,-280(gp) # 1f8a0 <__SDATA_BEGIN__+0x40>
   18788:	bc3e                	fsd	fa5,56(sp)
   1878a:	36e2                	fld	fa3,56(sp)
   1878c:	ef01b787          	fld	fa5,-272(gp) # 1f8a8 <__SDATA_BEGIN__+0x48>
   18790:	fcc00637          	lui	a2,0xfcc00
   18794:	5f62                	lw	t5,56(sp)
   18796:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   1879a:	5ff2                	lw	t6,60(sp)
   1879c:	a0be                	fsd	fa5,64(sp)
   1879e:	4706                	lw	a4,64(sp)
   187a0:	4796                	lw	a5,68(sp)
   187a2:	833a                	mv	t1,a4
   187a4:	963e                	add	a2,a2,a5
   187a6:	857ff06f          	j	17ffc <__gdtoa+0x62a>
   187aa:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe03fb>
   187ae:	b0f5                	j	1809a <__gdtoa+0x6c8>
   187b0:	4909                	li	s2,2
   187b2:	4581                	li	a1,0
   187b4:	4c01                	li	s8,0
   187b6:	b119                	j	183bc <__gdtoa+0x9ea>
   187b8:	4762                	lw	a4,24(sp)
   187ba:	d6be                	sw	a5,108(sp)
   187bc:	9ebe                	add	t4,t4,a5
   187be:	97ba                	add	a5,a5,a4
   187c0:	dc3a                	sw	a4,56(sp)
   187c2:	cc3e                	sw	a5,24(sp)
   187c4:	c9aff06f          	j	17c5e <__gdtoa+0x28c>
   187c8:	835e                	mv	t1,s7
   187ca:	03900693          	li	a3,57
   187ce:	58a2                	lw	a7,40(sp)
   187d0:	4be2                	lw	s7,24(sp)
   187d2:	54b2                	lw	s1,44(sp)
   187d4:	d0d302e3          	beq	t1,a3,184d8 <__gdtoa+0xb06>
   187d8:	0305                	addi	t1,t1,1
   187da:	89e2                	mv	s3,s8
   187dc:	001d8613          	addi	a2,s11,1
   187e0:	006d8023          	sb	t1,0(s11)
   187e4:	8c52                	mv	s8,s4
   187e6:	02000b13          	li	s6,32
   187ea:	b4b5                	j	18256 <__gdtoa+0x884>
   187ec:	57d2                	lw	a5,52(sp)
   187ee:	4581                	li	a1,0
   187f0:	4c01                	li	s8,0
   187f2:	00278913          	addi	s2,a5,2
   187f6:	b6d9                	j	183bc <__gdtoa+0x9ea>
   187f8:	85e2                	mv	a1,s8
   187fa:	4681                	li	a3,0
   187fc:	4629                	li	a2,10
   187fe:	8522                	mv	a0,s0
   18800:	2321                	jal	18d08 <__multadd>
   18802:	8c2a                	mv	s8,a0
   18804:	f0050763          	beqz	a0,17f12 <__gdtoa+0x540>
   18808:	47f6                	lw	a5,92(sp)
   1880a:	4842                	lw	a6,16(sp)
   1880c:	48e2                	lw	a7,24(sp)
   1880e:	00f05563          	blez	a5,18818 <__gdtoa+0xe46>
   18812:	d63e                	sw	a5,44(sp)
   18814:	d06ff06f          	j	17d1a <__gdtoa+0x348>
   18818:	4789                	li	a5,2
   1881a:	0927cf63          	blt	a5,s2,188b8 <__gdtoa+0xee6>
   1881e:	47f6                	lw	a5,92(sp)
   18820:	d63e                	sw	a5,44(sp)
   18822:	cf8ff06f          	j	17d1a <__gdtoa+0x348>
   18826:	d2000753          	fcvt.d.w	fa4,zero
   1882a:	00138913          	addi	s2,t2,1
   1882e:	a2e7ab53          	feq.d	s6,fa5,fa4
   18832:	001b3b13          	seqz	s6,s6
   18836:	0b12                	slli	s6,s6,0x4
   18838:	ba8d                	j	181aa <__gdtoa+0x7d8>
   1883a:	00138513          	addi	a0,t2,1
   1883e:	85dff06f          	j	1809a <__gdtoa+0x6c8>
   18842:	5f02                	lw	t5,32(sp)
   18844:	5f92                	lw	t6,36(sp)
   18846:	d80c5ce3          	bgez	s8,185de <__gdtoa+0xc0c>
   1884a:	d002                	sw	zero,32(sp)
   1884c:	bccff06f          	j	17c18 <__gdtoa+0x246>
   18850:	57b2                	lw	a5,44(sp)
   18852:	5742                	lw	a4,48(sp)
   18854:	fff78693          	addi	a3,a5,-1
   18858:	c0d74ee3          	blt	a4,a3,18474 <__gdtoa+0xaa2>
   1885c:	4662                	lw	a2,24(sp)
   1885e:	9ebe                	add	t4,t4,a5
   18860:	d6be                	sw	a5,108(sp)
   18862:	97b2                	add	a5,a5,a2
   18864:	dc32                	sw	a2,56(sp)
   18866:	40d70d33          	sub	s10,a4,a3
   1886a:	cc3e                	sw	a5,24(sp)
   1886c:	bf2ff06f          	j	17c5e <__gdtoa+0x28c>
   18870:	d002                	sw	zero,32(sp)
   18872:	ba0ff06f          	j	17c12 <__gdtoa+0x240>
   18876:	d20007d3          	fcvt.d.w	fa5,zero
   1887a:	87b2                	mv	a5,a2
   1887c:	00138513          	addi	a0,t2,1
   18880:	a2f5ab53          	feq.d	s6,fa1,fa5
   18884:	001b3b13          	seqz	s6,s6
   18888:	0b12                	slli	s6,s6,0x4
   1888a:	bd05                	j	186ba <__gdtoa+0xce8>
   1888c:	835e                	mv	t1,s7
   1888e:	03900693          	li	a3,57
   18892:	8926                	mv	s2,s1
   18894:	58a2                	lw	a7,40(sp)
   18896:	4be2                	lw	s7,24(sp)
   18898:	54b2                	lw	s1,44(sp)
   1889a:	c2d30fe3          	beq	t1,a3,184d8 <__gdtoa+0xb06>
   1889e:	07505d63          	blez	s5,18918 <__gdtoa+0xf46>
   188a2:	03190313          	addi	t1,s2,49
   188a6:	02000b13          	li	s6,32
   188aa:	89e2                	mv	s3,s8
   188ac:	001d8613          	addi	a2,s11,1
   188b0:	006d8023          	sb	t1,0(s11)
   188b4:	8c52                	mv	s8,s4
   188b6:	b245                	j	18256 <__gdtoa+0x884>
   188b8:	47f6                	lw	a5,92(sp)
   188ba:	d63e                	sw	a5,44(sp)
   188bc:	b4f9                	j	1838a <__gdtoa+0x9b8>
   188be:	e509                	bnez	a0,188c8 <__gdtoa+0xef6>
   188c0:	00137693          	andi	a3,t1,1
   188c4:	dc0691e3          	bnez	a3,18686 <__gdtoa+0xcb4>
   188c8:	02000793          	li	a5,32
   188cc:	d03e                	sw	a5,32(sp)
   188ce:	b2bd                	j	1823c <__gdtoa+0x86a>
   188d0:	014ca683          	lw	a3,20(s9)
   188d4:	96069ce3          	bnez	a3,1824c <__gdtoa+0x87a>
   188d8:	5b02                	lw	s6,32(sp)
   188da:	ba8d                	j	1824c <__gdtoa+0x87a>
   188dc:	03900693          	li	a3,57
   188e0:	88da                	mv	a7,s6
   188e2:	00da8b63          	beq	s5,a3,188f8 <__gdtoa+0xf26>
   188e6:	001a8313          	addi	t1,s5,1
   188ea:	02000b13          	li	s6,32
   188ee:	bab9                	j	1824c <__gdtoa+0x87a>
   188f0:	4b41                	li	s6,16
   188f2:	001d8913          	addi	s2,s11,1
   188f6:	ba99                	j	1824c <__gdtoa+0x87a>
   188f8:	89e2                	mv	s3,s8
   188fa:	86ee                	mv	a3,s11
   188fc:	8c52                	mv	s8,s4
   188fe:	b6d5                	j	184e2 <__gdtoa+0xb10>
   18900:	010ca603          	lw	a2,16(s9)
   18904:	4685                	li	a3,1
   18906:	d0c6ca63          	blt	a3,a2,17e1a <__gdtoa+0x448>
   1890a:	014ca683          	lw	a3,20(s9)
   1890e:	d0069663          	bnez	a3,17e1a <__gdtoa+0x448>
   18912:	001d8913          	addi	s2,s11,1
   18916:	ba1d                	j	1824c <__gdtoa+0x87a>
   18918:	010ca603          	lw	a2,16(s9)
   1891c:	4685                	li	a3,1
   1891e:	4b41                	li	s6,16
   18920:	f8c6c5e3          	blt	a3,a2,188aa <__gdtoa+0xed8>
   18924:	014cab03          	lw	s6,20(s9)
   18928:	01603b33          	snez	s6,s6
   1892c:	0b12                	slli	s6,s6,0x4
   1892e:	bfb5                	j	188aa <__gdtoa+0xed8>
   18930:	000ace63          	bltz	s5,1894c <__gdtoa+0xf7a>
   18934:	01596ab3          	or	s5,s2,s5
   18938:	000a9663          	bnez	s5,18944 <__gdtoa+0xf72>
   1893c:	0009a783          	lw	a5,0(s3)
   18940:	8b85                	andi	a5,a5,1
   18942:	c789                	beqz	a5,1894c <__gdtoa+0xf7a>
   18944:	c0d05c63          	blez	a3,17d5c <__gdtoa+0x38a>
   18948:	c0cff06f          	j	17d54 <__gdtoa+0x382>
   1894c:	5782                	lw	a5,32(sp)
   1894e:	8926                	mv	s2,s1
   18950:	835e                	mv	t1,s7
   18952:	58a2                	lw	a7,40(sp)
   18954:	4be2                	lw	s7,24(sp)
   18956:	54b2                	lw	s1,44(sp)
   18958:	c385                	beqz	a5,18978 <__gdtoa+0xfa6>
   1895a:	010ca583          	lw	a1,16(s9)
   1895e:	4605                	li	a2,1
   18960:	cab64d63          	blt	a2,a1,17e1a <__gdtoa+0x448>
   18964:	014ca603          	lw	a2,20(s9)
   18968:	ca061963          	bnez	a2,17e1a <__gdtoa+0x448>
   1896c:	ced04ce3          	bgtz	a3,18664 <__gdtoa+0xc92>
   18970:	4b01                	li	s6,0
   18972:	001d8913          	addi	s2,s11,1
   18976:	b8d9                	j	1824c <__gdtoa+0x87a>
   18978:	8cd052e3          	blez	a3,1823c <__gdtoa+0x86a>
   1897c:	b1e5                	j	18664 <__gdtoa+0xc92>

0001897e <__rv_alloc_D2A.part.0>:
   1897e:	66f9                	lui	a3,0x1e
   18980:	6579                	lui	a0,0x1e
   18982:	1141                	addi	sp,sp,-16
   18984:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   18988:	4601                	li	a2,0
   1898a:	03900593          	li	a1,57
   1898e:	9bc50513          	addi	a0,a0,-1604 # 1d9bc <__clzsi2+0xe8>
   18992:	c606                	sw	ra,12(sp)
   18994:	684010ef          	jal	1a018 <__assert_func>

00018998 <__rv_alloc_D2A>:
   18998:	1141                	addi	sp,sp,-16
   1899a:	c422                	sw	s0,8(sp)
   1899c:	c606                	sw	ra,12(sp)
   1899e:	46dd                	li	a3,23
   189a0:	842a                	mv	s0,a0
   189a2:	4705                	li	a4,1
   189a4:	4791                	li	a5,4
   189a6:	02b6f363          	bgeu	a3,a1,189cc <__rv_alloc_D2A+0x34>
   189aa:	0786                	slli	a5,a5,0x1
   189ac:	01478693          	addi	a3,a5,20
   189b0:	863a                	mv	a2,a4
   189b2:	0705                	addi	a4,a4,1
   189b4:	fed5fbe3          	bgeu	a1,a3,189aa <__rv_alloc_D2A+0x12>
   189b8:	85b2                	mv	a1,a2
   189ba:	dc50                	sw	a2,60(s0)
   189bc:	8522                	mv	a0,s0
   189be:	24f1                	jal	18c8a <_Balloc>
   189c0:	c911                	beqz	a0,189d4 <__rv_alloc_D2A+0x3c>
   189c2:	40b2                	lw	ra,12(sp)
   189c4:	dc08                	sw	a0,56(s0)
   189c6:	4422                	lw	s0,8(sp)
   189c8:	0141                	addi	sp,sp,16
   189ca:	8082                	ret
   189cc:	02052e23          	sw	zero,60(a0)
   189d0:	4581                	li	a1,0
   189d2:	b7ed                	j	189bc <__rv_alloc_D2A+0x24>
   189d4:	376d                	jal	1897e <__rv_alloc_D2A.part.0>

000189d6 <__nrv_alloc_D2A>:
   189d6:	1141                	addi	sp,sp,-16
   189d8:	c422                	sw	s0,8(sp)
   189da:	c226                	sw	s1,4(sp)
   189dc:	c04a                	sw	s2,0(sp)
   189de:	c606                	sw	ra,12(sp)
   189e0:	485d                	li	a6,23
   189e2:	84aa                	mv	s1,a0
   189e4:	842e                	mv	s0,a1
   189e6:	8932                	mv	s2,a2
   189e8:	4705                	li	a4,1
   189ea:	4791                	li	a5,4
   189ec:	04d87763          	bgeu	a6,a3,18a3a <__nrv_alloc_D2A+0x64>
   189f0:	0786                	slli	a5,a5,0x1
   189f2:	01478813          	addi	a6,a5,20
   189f6:	85ba                	mv	a1,a4
   189f8:	0705                	addi	a4,a4,1
   189fa:	ff06fbe3          	bgeu	a3,a6,189f0 <__nrv_alloc_D2A+0x1a>
   189fe:	dccc                	sw	a1,60(s1)
   18a00:	8526                	mv	a0,s1
   18a02:	2461                	jal	18c8a <_Balloc>
   18a04:	c129                	beqz	a0,18a46 <__nrv_alloc_D2A+0x70>
   18a06:	dc88                	sw	a0,56(s1)
   18a08:	00044783          	lbu	a5,0(s0)
   18a0c:	00140593          	addi	a1,s0,1
   18a10:	00f50023          	sb	a5,0(a0)
   18a14:	c79d                	beqz	a5,18a42 <__nrv_alloc_D2A+0x6c>
   18a16:	87aa                	mv	a5,a0
   18a18:	0005c703          	lbu	a4,0(a1)
   18a1c:	0785                	addi	a5,a5,1
   18a1e:	0585                	addi	a1,a1,1
   18a20:	00e78023          	sb	a4,0(a5)
   18a24:	fb75                	bnez	a4,18a18 <__nrv_alloc_D2A+0x42>
   18a26:	00090463          	beqz	s2,18a2e <__nrv_alloc_D2A+0x58>
   18a2a:	00f92023          	sw	a5,0(s2)
   18a2e:	40b2                	lw	ra,12(sp)
   18a30:	4422                	lw	s0,8(sp)
   18a32:	4492                	lw	s1,4(sp)
   18a34:	4902                	lw	s2,0(sp)
   18a36:	0141                	addi	sp,sp,16
   18a38:	8082                	ret
   18a3a:	02052e23          	sw	zero,60(a0)
   18a3e:	4581                	li	a1,0
   18a40:	b7c1                	j	18a00 <__nrv_alloc_D2A+0x2a>
   18a42:	87aa                	mv	a5,a0
   18a44:	b7cd                	j	18a26 <__nrv_alloc_D2A+0x50>
   18a46:	3f25                	jal	1897e <__rv_alloc_D2A.part.0>

00018a48 <__freedtoa>:
   18a48:	5d54                	lw	a3,60(a0)
   18a4a:	4705                	li	a4,1
   18a4c:	00d71733          	sll	a4,a4,a3
   18a50:	c1d4                	sw	a3,4(a1)
   18a52:	c598                	sw	a4,8(a1)
   18a54:	a44d                	j	18cf6 <_Bfree>

00018a56 <__quorem_D2A>:
   18a56:	1101                	addi	sp,sp,-32
   18a58:	ca26                	sw	s1,20(sp)
   18a5a:	491c                	lw	a5,16(a0)
   18a5c:	4984                	lw	s1,16(a1)
   18a5e:	ce06                	sw	ra,28(sp)
   18a60:	1497c163          	blt	a5,s1,18ba2 <__quorem_D2A+0x14c>
   18a64:	14fd                	addi	s1,s1,-1
   18a66:	00249313          	slli	t1,s1,0x2
   18a6a:	cc22                	sw	s0,24(sp)
   18a6c:	01458413          	addi	s0,a1,20
   18a70:	c64e                	sw	s3,12(sp)
   18a72:	c452                	sw	s4,8(sp)
   18a74:	006409b3          	add	s3,s0,t1
   18a78:	01450a13          	addi	s4,a0,20
   18a7c:	0009a783          	lw	a5,0(s3)
   18a80:	9352                	add	t1,t1,s4
   18a82:	00032703          	lw	a4,0(t1)
   18a86:	c84a                	sw	s2,16(sp)
   18a88:	c256                	sw	s5,4(sp)
   18a8a:	0785                	addi	a5,a5,1
   18a8c:	02f75933          	divu	s2,a4,a5
   18a90:	8aaa                	mv	s5,a0
   18a92:	08f76663          	bltu	a4,a5,18b1e <__quorem_D2A+0xc8>
   18a96:	6541                	lui	a0,0x10
   18a98:	88a2                	mv	a7,s0
   18a9a:	8852                	mv	a6,s4
   18a9c:	4f01                	li	t5,0
   18a9e:	4e81                	li	t4,0
   18aa0:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   18aa2:	0008a783          	lw	a5,0(a7)
   18aa6:	00082603          	lw	a2,0(a6)
   18aaa:	0811                	addi	a6,a6,4
   18aac:	00a7f6b3          	and	a3,a5,a0
   18ab0:	83c1                	srli	a5,a5,0x10
   18ab2:	00a67733          	and	a4,a2,a0
   18ab6:	01065e13          	srli	t3,a2,0x10
   18aba:	0891                	addi	a7,a7,4
   18abc:	032686b3          	mul	a3,a3,s2
   18ac0:	032787b3          	mul	a5,a5,s2
   18ac4:	96fa                	add	a3,a3,t5
   18ac6:	00a6f633          	and	a2,a3,a0
   18aca:	8f11                	sub	a4,a4,a2
   18acc:	41d70733          	sub	a4,a4,t4
   18ad0:	82c1                	srli	a3,a3,0x10
   18ad2:	01075613          	srli	a2,a4,0x10
   18ad6:	8a05                	andi	a2,a2,1
   18ad8:	8f69                	and	a4,a4,a0
   18ada:	97b6                	add	a5,a5,a3
   18adc:	00a7f6b3          	and	a3,a5,a0
   18ae0:	9636                	add	a2,a2,a3
   18ae2:	40ce06b3          	sub	a3,t3,a2
   18ae6:	01069613          	slli	a2,a3,0x10
   18aea:	8f51                	or	a4,a4,a2
   18aec:	82c1                	srli	a3,a3,0x10
   18aee:	fee82e23          	sw	a4,-4(a6)
   18af2:	0107df13          	srli	t5,a5,0x10
   18af6:	0016fe93          	andi	t4,a3,1
   18afa:	fb19f4e3          	bgeu	s3,a7,18aa2 <__quorem_D2A+0x4c>
   18afe:	00032783          	lw	a5,0(t1)
   18b02:	ef91                	bnez	a5,18b1e <__quorem_D2A+0xc8>
   18b04:	1371                	addi	t1,t1,-4
   18b06:	006a6663          	bltu	s4,t1,18b12 <__quorem_D2A+0xbc>
   18b0a:	a801                	j	18b1a <__quorem_D2A+0xc4>
   18b0c:	14fd                	addi	s1,s1,-1
   18b0e:	006a7663          	bgeu	s4,t1,18b1a <__quorem_D2A+0xc4>
   18b12:	00032783          	lw	a5,0(t1)
   18b16:	1371                	addi	t1,t1,-4
   18b18:	dbf5                	beqz	a5,18b0c <__quorem_D2A+0xb6>
   18b1a:	009aa823          	sw	s1,16(s5)
   18b1e:	8556                	mv	a0,s5
   18b20:	04b000ef          	jal	1936a <__mcmp>
   18b24:	06054563          	bltz	a0,18b8e <__quorem_D2A+0x138>
   18b28:	6541                	lui	a0,0x10
   18b2a:	85d2                	mv	a1,s4
   18b2c:	4681                	li	a3,0
   18b2e:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   18b30:	419c                	lw	a5,0(a1)
   18b32:	4010                	lw	a2,0(s0)
   18b34:	0591                	addi	a1,a1,4
   18b36:	00a7f733          	and	a4,a5,a0
   18b3a:	00a67833          	and	a6,a2,a0
   18b3e:	41070733          	sub	a4,a4,a6
   18b42:	8f15                	sub	a4,a4,a3
   18b44:	01075693          	srli	a3,a4,0x10
   18b48:	8a85                	andi	a3,a3,1
   18b4a:	8241                	srli	a2,a2,0x10
   18b4c:	96b2                	add	a3,a3,a2
   18b4e:	83c1                	srli	a5,a5,0x10
   18b50:	8f95                	sub	a5,a5,a3
   18b52:	01079693          	slli	a3,a5,0x10
   18b56:	8f69                	and	a4,a4,a0
   18b58:	8f55                	or	a4,a4,a3
   18b5a:	83c1                	srli	a5,a5,0x10
   18b5c:	0411                	addi	s0,s0,4
   18b5e:	fee5ae23          	sw	a4,-4(a1)
   18b62:	0017f693          	andi	a3,a5,1
   18b66:	fc89f5e3          	bgeu	s3,s0,18b30 <__quorem_D2A+0xda>
   18b6a:	00249793          	slli	a5,s1,0x2
   18b6e:	97d2                	add	a5,a5,s4
   18b70:	4398                	lw	a4,0(a5)
   18b72:	ef09                	bnez	a4,18b8c <__quorem_D2A+0x136>
   18b74:	17f1                	addi	a5,a5,-4
   18b76:	00fa6663          	bltu	s4,a5,18b82 <__quorem_D2A+0x12c>
   18b7a:	a039                	j	18b88 <__quorem_D2A+0x132>
   18b7c:	14fd                	addi	s1,s1,-1
   18b7e:	00fa7563          	bgeu	s4,a5,18b88 <__quorem_D2A+0x132>
   18b82:	4398                	lw	a4,0(a5)
   18b84:	17f1                	addi	a5,a5,-4
   18b86:	db7d                	beqz	a4,18b7c <__quorem_D2A+0x126>
   18b88:	009aa823          	sw	s1,16(s5)
   18b8c:	0905                	addi	s2,s2,1
   18b8e:	4462                	lw	s0,24(sp)
   18b90:	40f2                	lw	ra,28(sp)
   18b92:	49b2                	lw	s3,12(sp)
   18b94:	4a22                	lw	s4,8(sp)
   18b96:	4a92                	lw	s5,4(sp)
   18b98:	44d2                	lw	s1,20(sp)
   18b9a:	854a                	mv	a0,s2
   18b9c:	4942                	lw	s2,16(sp)
   18b9e:	6105                	addi	sp,sp,32
   18ba0:	8082                	ret
   18ba2:	40f2                	lw	ra,28(sp)
   18ba4:	44d2                	lw	s1,20(sp)
   18ba6:	4501                	li	a0,0
   18ba8:	6105                	addi	sp,sp,32
   18baa:	8082                	ret

00018bac <__rshift_D2A>:
   18bac:	01052803          	lw	a6,16(a0)
   18bb0:	4055de13          	srai	t3,a1,0x5
   18bb4:	010e4763          	blt	t3,a6,18bc2 <__rshift_D2A+0x16>
   18bb8:	00052823          	sw	zero,16(a0)
   18bbc:	00052a23          	sw	zero,20(a0)
   18bc0:	8082                	ret
   18bc2:	01450313          	addi	t1,a0,20
   18bc6:	00281613          	slli	a2,a6,0x2
   18bca:	002e1793          	slli	a5,t3,0x2
   18bce:	89fd                	andi	a1,a1,31
   18bd0:	961a                	add	a2,a2,t1
   18bd2:	979a                	add	a5,a5,t1
   18bd4:	c5a1                	beqz	a1,18c1c <__rshift_D2A+0x70>
   18bd6:	4394                	lw	a3,0(a5)
   18bd8:	02000e93          	li	t4,32
   18bdc:	0791                	addi	a5,a5,4
   18bde:	40be8eb3          	sub	t4,t4,a1
   18be2:	00b6d6b3          	srl	a3,a3,a1
   18be6:	06c7f063          	bgeu	a5,a2,18c46 <__rshift_D2A+0x9a>
   18bea:	889a                	mv	a7,t1
   18bec:	4398                	lw	a4,0(a5)
   18bee:	0891                	addi	a7,a7,4
   18bf0:	0791                	addi	a5,a5,4
   18bf2:	01d71733          	sll	a4,a4,t4
   18bf6:	8f55                	or	a4,a4,a3
   18bf8:	fee8ae23          	sw	a4,-4(a7)
   18bfc:	ffc7a683          	lw	a3,-4(a5)
   18c00:	00b6d6b3          	srl	a3,a3,a1
   18c04:	fec7e4e3          	bltu	a5,a2,18bec <__rshift_D2A+0x40>
   18c08:	41c80833          	sub	a6,a6,t3
   18c0c:	080a                	slli	a6,a6,0x2
   18c0e:	1871                	addi	a6,a6,-4
   18c10:	981a                	add	a6,a6,t1
   18c12:	00d82023          	sw	a3,0(a6)
   18c16:	c28d                	beqz	a3,18c38 <__rshift_D2A+0x8c>
   18c18:	0811                	addi	a6,a6,4
   18c1a:	a839                	j	18c38 <__rshift_D2A+0x8c>
   18c1c:	871a                	mv	a4,t1
   18c1e:	f8c7fde3          	bgeu	a5,a2,18bb8 <__rshift_D2A+0xc>
   18c22:	4394                	lw	a3,0(a5)
   18c24:	0791                	addi	a5,a5,4
   18c26:	0711                	addi	a4,a4,4
   18c28:	fed72e23          	sw	a3,-4(a4)
   18c2c:	fec7ebe3          	bltu	a5,a2,18c22 <__rshift_D2A+0x76>
   18c30:	41c80833          	sub	a6,a6,t3
   18c34:	080a                	slli	a6,a6,0x2
   18c36:	981a                	add	a6,a6,t1
   18c38:	406807b3          	sub	a5,a6,t1
   18c3c:	8789                	srai	a5,a5,0x2
   18c3e:	c91c                	sw	a5,16(a0)
   18c40:	f6680ee3          	beq	a6,t1,18bbc <__rshift_D2A+0x10>
   18c44:	8082                	ret
   18c46:	c954                	sw	a3,20(a0)
   18c48:	daa5                	beqz	a3,18bb8 <__rshift_D2A+0xc>
   18c4a:	881a                	mv	a6,t1
   18c4c:	0811                	addi	a6,a6,4
   18c4e:	b7ed                	j	18c38 <__rshift_D2A+0x8c>

00018c50 <__trailz_D2A>:
   18c50:	4918                	lw	a4,16(a0)
   18c52:	1101                	addi	sp,sp,-32
   18c54:	0551                	addi	a0,a0,20
   18c56:	070a                	slli	a4,a4,0x2
   18c58:	cc22                	sw	s0,24(sp)
   18c5a:	ce06                	sw	ra,28(sp)
   18c5c:	972a                	add	a4,a4,a0
   18c5e:	4401                	li	s0,0
   18c60:	00e56863          	bltu	a0,a4,18c70 <__trailz_D2A+0x20>
   18c64:	a831                	j	18c80 <__trailz_D2A+0x30>
   18c66:	0511                	addi	a0,a0,4
   18c68:	02040413          	addi	s0,s0,32
   18c6c:	00e57a63          	bgeu	a0,a4,18c80 <__trailz_D2A+0x30>
   18c70:	411c                	lw	a5,0(a0)
   18c72:	dbf5                	beqz	a5,18c66 <__trailz_D2A+0x16>
   18c74:	00e57663          	bgeu	a0,a4,18c80 <__trailz_D2A+0x30>
   18c78:	0068                	addi	a0,sp,12
   18c7a:	c63e                	sw	a5,12(sp)
   18c7c:	2451                	jal	18f00 <__lo0bits>
   18c7e:	942a                	add	s0,s0,a0
   18c80:	40f2                	lw	ra,28(sp)
   18c82:	8522                	mv	a0,s0
   18c84:	4462                	lw	s0,24(sp)
   18c86:	6105                	addi	sp,sp,32
   18c88:	8082                	ret

00018c8a <_Balloc>:
   18c8a:	417c                	lw	a5,68(a0)
   18c8c:	1141                	addi	sp,sp,-16
   18c8e:	c422                	sw	s0,8(sp)
   18c90:	c226                	sw	s1,4(sp)
   18c92:	c606                	sw	ra,12(sp)
   18c94:	842a                	mv	s0,a0
   18c96:	84ae                	mv	s1,a1
   18c98:	c38d                	beqz	a5,18cba <_Balloc+0x30>
   18c9a:	00249713          	slli	a4,s1,0x2
   18c9e:	97ba                	add	a5,a5,a4
   18ca0:	4388                	lw	a0,0(a5)
   18ca2:	c515                	beqz	a0,18cce <_Balloc+0x44>
   18ca4:	4118                	lw	a4,0(a0)
   18ca6:	c398                	sw	a4,0(a5)
   18ca8:	00052823          	sw	zero,16(a0)
   18cac:	00052623          	sw	zero,12(a0)
   18cb0:	40b2                	lw	ra,12(sp)
   18cb2:	4422                	lw	s0,8(sp)
   18cb4:	4492                	lw	s1,4(sp)
   18cb6:	0141                	addi	sp,sp,16
   18cb8:	8082                	ret
   18cba:	02100613          	li	a2,33
   18cbe:	4591                	li	a1,4
   18cc0:	39c010ef          	jal	1a05c <_calloc_r>
   18cc4:	c068                	sw	a0,68(s0)
   18cc6:	87aa                	mv	a5,a0
   18cc8:	f969                	bnez	a0,18c9a <_Balloc+0x10>
   18cca:	4501                	li	a0,0
   18ccc:	b7d5                	j	18cb0 <_Balloc+0x26>
   18cce:	c04a                	sw	s2,0(sp)
   18cd0:	4905                	li	s2,1
   18cd2:	00991933          	sll	s2,s2,s1
   18cd6:	00590613          	addi	a2,s2,5
   18cda:	060a                	slli	a2,a2,0x2
   18cdc:	4585                	li	a1,1
   18cde:	8522                	mv	a0,s0
   18ce0:	37c010ef          	jal	1a05c <_calloc_r>
   18ce4:	c511                	beqz	a0,18cf0 <_Balloc+0x66>
   18ce6:	01252423          	sw	s2,8(a0)
   18cea:	c144                	sw	s1,4(a0)
   18cec:	4902                	lw	s2,0(sp)
   18cee:	bf6d                	j	18ca8 <_Balloc+0x1e>
   18cf0:	4902                	lw	s2,0(sp)
   18cf2:	4501                	li	a0,0
   18cf4:	bf75                	j	18cb0 <_Balloc+0x26>

00018cf6 <_Bfree>:
   18cf6:	c981                	beqz	a1,18d06 <_Bfree+0x10>
   18cf8:	41d8                	lw	a4,4(a1)
   18cfa:	417c                	lw	a5,68(a0)
   18cfc:	070a                	slli	a4,a4,0x2
   18cfe:	97ba                	add	a5,a5,a4
   18d00:	4398                	lw	a4,0(a5)
   18d02:	c198                	sw	a4,0(a1)
   18d04:	c38c                	sw	a1,0(a5)
   18d06:	8082                	ret

00018d08 <__multadd>:
   18d08:	1101                	addi	sp,sp,-32
   18d0a:	ca26                	sw	s1,20(sp)
   18d0c:	4984                	lw	s1,16(a1)
   18d0e:	6341                	lui	t1,0x10
   18d10:	cc22                	sw	s0,24(sp)
   18d12:	c84a                	sw	s2,16(sp)
   18d14:	c64e                	sw	s3,12(sp)
   18d16:	ce06                	sw	ra,28(sp)
   18d18:	892e                	mv	s2,a1
   18d1a:	89aa                	mv	s3,a0
   18d1c:	8436                	mv	s0,a3
   18d1e:	01458813          	addi	a6,a1,20
   18d22:	4881                	li	a7,0
   18d24:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   18d26:	00082783          	lw	a5,0(a6)
   18d2a:	0811                	addi	a6,a6,4
   18d2c:	0885                	addi	a7,a7,1
   18d2e:	0067f733          	and	a4,a5,t1
   18d32:	02c70733          	mul	a4,a4,a2
   18d36:	0107d693          	srli	a3,a5,0x10
   18d3a:	02c686b3          	mul	a3,a3,a2
   18d3e:	008707b3          	add	a5,a4,s0
   18d42:	0107d713          	srli	a4,a5,0x10
   18d46:	0067f7b3          	and	a5,a5,t1
   18d4a:	96ba                	add	a3,a3,a4
   18d4c:	01069713          	slli	a4,a3,0x10
   18d50:	97ba                	add	a5,a5,a4
   18d52:	fef82e23          	sw	a5,-4(a6)
   18d56:	0106d413          	srli	s0,a3,0x10
   18d5a:	fc98c6e3          	blt	a7,s1,18d26 <__multadd+0x1e>
   18d5e:	cc09                	beqz	s0,18d78 <__multadd+0x70>
   18d60:	00892783          	lw	a5,8(s2)
   18d64:	02f4d263          	bge	s1,a5,18d88 <__multadd+0x80>
   18d68:	00448793          	addi	a5,s1,4
   18d6c:	078a                	slli	a5,a5,0x2
   18d6e:	97ca                	add	a5,a5,s2
   18d70:	c3c0                	sw	s0,4(a5)
   18d72:	0485                	addi	s1,s1,1
   18d74:	00992823          	sw	s1,16(s2)
   18d78:	40f2                	lw	ra,28(sp)
   18d7a:	4462                	lw	s0,24(sp)
   18d7c:	44d2                	lw	s1,20(sp)
   18d7e:	49b2                	lw	s3,12(sp)
   18d80:	854a                	mv	a0,s2
   18d82:	4942                	lw	s2,16(sp)
   18d84:	6105                	addi	sp,sp,32
   18d86:	8082                	ret
   18d88:	00492583          	lw	a1,4(s2)
   18d8c:	854e                	mv	a0,s3
   18d8e:	c452                	sw	s4,8(sp)
   18d90:	0585                	addi	a1,a1,1
   18d92:	3de5                	jal	18c8a <_Balloc>
   18d94:	8a2a                	mv	s4,a0
   18d96:	c121                	beqz	a0,18dd6 <__multadd+0xce>
   18d98:	01092603          	lw	a2,16(s2)
   18d9c:	00c90593          	addi	a1,s2,12
   18da0:	0531                	addi	a0,a0,12
   18da2:	0609                	addi	a2,a2,2
   18da4:	060a                	slli	a2,a2,0x2
   18da6:	ef0fe0ef          	jal	17496 <memcpy>
   18daa:	00492703          	lw	a4,4(s2)
   18dae:	0449a783          	lw	a5,68(s3)
   18db2:	070a                	slli	a4,a4,0x2
   18db4:	97ba                	add	a5,a5,a4
   18db6:	4398                	lw	a4,0(a5)
   18db8:	00e92023          	sw	a4,0(s2)
   18dbc:	0127a023          	sw	s2,0(a5)
   18dc0:	00448793          	addi	a5,s1,4
   18dc4:	8952                	mv	s2,s4
   18dc6:	078a                	slli	a5,a5,0x2
   18dc8:	97ca                	add	a5,a5,s2
   18dca:	4a22                	lw	s4,8(sp)
   18dcc:	0485                	addi	s1,s1,1
   18dce:	c3c0                	sw	s0,4(a5)
   18dd0:	00992823          	sw	s1,16(s2)
   18dd4:	b755                	j	18d78 <__multadd+0x70>
   18dd6:	66f9                	lui	a3,0x1e
   18dd8:	6579                	lui	a0,0x1e
   18dda:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   18dde:	4601                	li	a2,0
   18de0:	0ba00593          	li	a1,186
   18de4:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   18de8:	230010ef          	jal	1a018 <__assert_func>

00018dec <__s2b>:
   18dec:	1101                	addi	sp,sp,-32
   18dee:	cc22                	sw	s0,24(sp)
   18df0:	ca26                	sw	s1,20(sp)
   18df2:	c84a                	sw	s2,16(sp)
   18df4:	c64e                	sw	s3,12(sp)
   18df6:	c452                	sw	s4,8(sp)
   18df8:	89b6                	mv	s3,a3
   18dfa:	47a5                	li	a5,9
   18dfc:	06a1                	addi	a3,a3,8
   18dfe:	ce06                	sw	ra,28(sp)
   18e00:	02f6c6b3          	div	a3,a3,a5
   18e04:	892a                	mv	s2,a0
   18e06:	842e                	mv	s0,a1
   18e08:	8a32                	mv	s4,a2
   18e0a:	84ba                	mv	s1,a4
   18e0c:	0937d263          	bge	a5,s3,18e90 <__s2b+0xa4>
   18e10:	4785                	li	a5,1
   18e12:	4581                	li	a1,0
   18e14:	0786                	slli	a5,a5,0x1
   18e16:	0585                	addi	a1,a1,1
   18e18:	fed7cee3          	blt	a5,a3,18e14 <__s2b+0x28>
   18e1c:	854a                	mv	a0,s2
   18e1e:	35b5                	jal	18c8a <_Balloc>
   18e20:	85aa                	mv	a1,a0
   18e22:	c92d                	beqz	a0,18e94 <__s2b+0xa8>
   18e24:	4785                	li	a5,1
   18e26:	c91c                	sw	a5,16(a0)
   18e28:	c944                	sw	s1,20(a0)
   18e2a:	47a5                	li	a5,9
   18e2c:	0547df63          	bge	a5,s4,18e8a <__s2b+0x9e>
   18e30:	c256                	sw	s5,4(sp)
   18e32:	00940a93          	addi	s5,s0,9
   18e36:	84d6                	mv	s1,s5
   18e38:	9452                	add	s0,s0,s4
   18e3a:	0004c683          	lbu	a3,0(s1)
   18e3e:	4629                	li	a2,10
   18e40:	854a                	mv	a0,s2
   18e42:	fd068693          	addi	a3,a3,-48
   18e46:	35c9                	jal	18d08 <__multadd>
   18e48:	0485                	addi	s1,s1,1
   18e4a:	85aa                	mv	a1,a0
   18e4c:	fe8497e3          	bne	s1,s0,18e3a <__s2b+0x4e>
   18e50:	ff8a0413          	addi	s0,s4,-8
   18e54:	9456                	add	s0,s0,s5
   18e56:	4a92                	lw	s5,4(sp)
   18e58:	033a5063          	bge	s4,s3,18e78 <__s2b+0x8c>
   18e5c:	414989b3          	sub	s3,s3,s4
   18e60:	99a2                	add	s3,s3,s0
   18e62:	00044683          	lbu	a3,0(s0)
   18e66:	4629                	li	a2,10
   18e68:	854a                	mv	a0,s2
   18e6a:	fd068693          	addi	a3,a3,-48
   18e6e:	3d69                	jal	18d08 <__multadd>
   18e70:	0405                	addi	s0,s0,1
   18e72:	85aa                	mv	a1,a0
   18e74:	ff3417e3          	bne	s0,s3,18e62 <__s2b+0x76>
   18e78:	40f2                	lw	ra,28(sp)
   18e7a:	4462                	lw	s0,24(sp)
   18e7c:	44d2                	lw	s1,20(sp)
   18e7e:	4942                	lw	s2,16(sp)
   18e80:	49b2                	lw	s3,12(sp)
   18e82:	4a22                	lw	s4,8(sp)
   18e84:	852e                	mv	a0,a1
   18e86:	6105                	addi	sp,sp,32
   18e88:	8082                	ret
   18e8a:	0429                	addi	s0,s0,10
   18e8c:	4a25                	li	s4,9
   18e8e:	b7e9                	j	18e58 <__s2b+0x6c>
   18e90:	4581                	li	a1,0
   18e92:	b769                	j	18e1c <__s2b+0x30>
   18e94:	66f9                	lui	a3,0x1e
   18e96:	6579                	lui	a0,0x1e
   18e98:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   18e9c:	4601                	li	a2,0
   18e9e:	0d300593          	li	a1,211
   18ea2:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   18ea6:	c256                	sw	s5,4(sp)
   18ea8:	170010ef          	jal	1a018 <__assert_func>

00018eac <__hi0bits>:
   18eac:	87aa                	mv	a5,a0
   18eae:	6741                	lui	a4,0x10
   18eb0:	4501                	li	a0,0
   18eb2:	00e7f463          	bgeu	a5,a4,18eba <__hi0bits+0xe>
   18eb6:	07c2                	slli	a5,a5,0x10
   18eb8:	4541                	li	a0,16
   18eba:	01000737          	lui	a4,0x1000
   18ebe:	00e7f463          	bgeu	a5,a4,18ec6 <__hi0bits+0x1a>
   18ec2:	0521                	addi	a0,a0,8
   18ec4:	07a2                	slli	a5,a5,0x8
   18ec6:	10000737          	lui	a4,0x10000
   18eca:	00e7f463          	bgeu	a5,a4,18ed2 <__hi0bits+0x26>
   18ece:	0511                	addi	a0,a0,4
   18ed0:	0792                	slli	a5,a5,0x4
   18ed2:	40000737          	lui	a4,0x40000
   18ed6:	00e7e763          	bltu	a5,a4,18ee4 <__hi0bits+0x38>
   18eda:	fff7c793          	not	a5,a5
   18ede:	83fd                	srli	a5,a5,0x1f
   18ee0:	953e                	add	a0,a0,a5
   18ee2:	8082                	ret
   18ee4:	078a                	slli	a5,a5,0x2
   18ee6:	0007c963          	bltz	a5,18ef8 <__hi0bits+0x4c>
   18eea:	00179713          	slli	a4,a5,0x1
   18eee:	00074763          	bltz	a4,18efc <__hi0bits+0x50>
   18ef2:	02000513          	li	a0,32
   18ef6:	8082                	ret
   18ef8:	0509                	addi	a0,a0,2
   18efa:	8082                	ret
   18efc:	050d                	addi	a0,a0,3
   18efe:	8082                	ret

00018f00 <__lo0bits>:
   18f00:	411c                	lw	a5,0(a0)
   18f02:	872a                	mv	a4,a0
   18f04:	0077f693          	andi	a3,a5,7
   18f08:	ce81                	beqz	a3,18f20 <__lo0bits+0x20>
   18f0a:	0017f693          	andi	a3,a5,1
   18f0e:	4501                	li	a0,0
   18f10:	ee95                	bnez	a3,18f4c <__lo0bits+0x4c>
   18f12:	0027f693          	andi	a3,a5,2
   18f16:	c6b5                	beqz	a3,18f82 <__lo0bits+0x82>
   18f18:	8385                	srli	a5,a5,0x1
   18f1a:	c31c                	sw	a5,0(a4)
   18f1c:	4505                	li	a0,1
   18f1e:	8082                	ret
   18f20:	01079693          	slli	a3,a5,0x10
   18f24:	82c1                	srli	a3,a3,0x10
   18f26:	4501                	li	a0,0
   18f28:	c6b9                	beqz	a3,18f76 <__lo0bits+0x76>
   18f2a:	0ff7f693          	zext.b	a3,a5
   18f2e:	ce95                	beqz	a3,18f6a <__lo0bits+0x6a>
   18f30:	00f7f693          	andi	a3,a5,15
   18f34:	c68d                	beqz	a3,18f5e <__lo0bits+0x5e>
   18f36:	0037f693          	andi	a3,a5,3
   18f3a:	ce81                	beqz	a3,18f52 <__lo0bits+0x52>
   18f3c:	0017f693          	andi	a3,a5,1
   18f40:	e699                	bnez	a3,18f4e <__lo0bits+0x4e>
   18f42:	8385                	srli	a5,a5,0x1
   18f44:	0505                	addi	a0,a0,1
   18f46:	e781                	bnez	a5,18f4e <__lo0bits+0x4e>
   18f48:	02000513          	li	a0,32
   18f4c:	8082                	ret
   18f4e:	c31c                	sw	a5,0(a4)
   18f50:	8082                	ret
   18f52:	8389                	srli	a5,a5,0x2
   18f54:	0017f693          	andi	a3,a5,1
   18f58:	0509                	addi	a0,a0,2
   18f5a:	faf5                	bnez	a3,18f4e <__lo0bits+0x4e>
   18f5c:	b7dd                	j	18f42 <__lo0bits+0x42>
   18f5e:	8391                	srli	a5,a5,0x4
   18f60:	0037f693          	andi	a3,a5,3
   18f64:	0511                	addi	a0,a0,4
   18f66:	faf9                	bnez	a3,18f3c <__lo0bits+0x3c>
   18f68:	b7ed                	j	18f52 <__lo0bits+0x52>
   18f6a:	83a1                	srli	a5,a5,0x8
   18f6c:	00f7f693          	andi	a3,a5,15
   18f70:	0521                	addi	a0,a0,8
   18f72:	f2f1                	bnez	a3,18f36 <__lo0bits+0x36>
   18f74:	b7ed                	j	18f5e <__lo0bits+0x5e>
   18f76:	83c1                	srli	a5,a5,0x10
   18f78:	0ff7f693          	zext.b	a3,a5
   18f7c:	4541                	li	a0,16
   18f7e:	facd                	bnez	a3,18f30 <__lo0bits+0x30>
   18f80:	b7ed                	j	18f6a <__lo0bits+0x6a>
   18f82:	8389                	srli	a5,a5,0x2
   18f84:	c31c                	sw	a5,0(a4)
   18f86:	4509                	li	a0,2
   18f88:	8082                	ret

00018f8a <__i2b>:
   18f8a:	417c                	lw	a5,68(a0)
   18f8c:	1141                	addi	sp,sp,-16
   18f8e:	c422                	sw	s0,8(sp)
   18f90:	c226                	sw	s1,4(sp)
   18f92:	c606                	sw	ra,12(sp)
   18f94:	842a                	mv	s0,a0
   18f96:	84ae                	mv	s1,a1
   18f98:	cf99                	beqz	a5,18fb6 <__i2b+0x2c>
   18f9a:	43c8                	lw	a0,4(a5)
   18f9c:	c121                	beqz	a0,18fdc <__i2b+0x52>
   18f9e:	4118                	lw	a4,0(a0)
   18fa0:	c3d8                	sw	a4,4(a5)
   18fa2:	40b2                	lw	ra,12(sp)
   18fa4:	4422                	lw	s0,8(sp)
   18fa6:	4785                	li	a5,1
   18fa8:	c944                	sw	s1,20(a0)
   18faa:	00052623          	sw	zero,12(a0)
   18fae:	c91c                	sw	a5,16(a0)
   18fb0:	4492                	lw	s1,4(sp)
   18fb2:	0141                	addi	sp,sp,16
   18fb4:	8082                	ret
   18fb6:	02100613          	li	a2,33
   18fba:	4591                	li	a1,4
   18fbc:	0a0010ef          	jal	1a05c <_calloc_r>
   18fc0:	c068                	sw	a0,68(s0)
   18fc2:	87aa                	mv	a5,a0
   18fc4:	f979                	bnez	a0,18f9a <__i2b+0x10>
   18fc6:	66f9                	lui	a3,0x1e
   18fc8:	6579                	lui	a0,0x1e
   18fca:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   18fce:	4601                	li	a2,0
   18fd0:	14500593          	li	a1,325
   18fd4:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   18fd8:	040010ef          	jal	1a018 <__assert_func>
   18fdc:	4671                	li	a2,28
   18fde:	4585                	li	a1,1
   18fe0:	8522                	mv	a0,s0
   18fe2:	07a010ef          	jal	1a05c <_calloc_r>
   18fe6:	d165                	beqz	a0,18fc6 <__i2b+0x3c>
   18fe8:	4785                	li	a5,1
   18fea:	c15c                	sw	a5,4(a0)
   18fec:	4789                	li	a5,2
   18fee:	c51c                	sw	a5,8(a0)
   18ff0:	bf4d                	j	18fa2 <__i2b+0x18>

00018ff2 <__multiply>:
   18ff2:	1101                	addi	sp,sp,-32
   18ff4:	c84a                	sw	s2,16(sp)
   18ff6:	c64e                	sw	s3,12(sp)
   18ff8:	0105a903          	lw	s2,16(a1)
   18ffc:	01062983          	lw	s3,16(a2)
   19000:	ca26                	sw	s1,20(sp)
   19002:	c452                	sw	s4,8(sp)
   19004:	ce06                	sw	ra,28(sp)
   19006:	cc22                	sw	s0,24(sp)
   19008:	8a2e                	mv	s4,a1
   1900a:	84b2                	mv	s1,a2
   1900c:	01394763          	blt	s2,s3,1901a <__multiply+0x28>
   19010:	874e                	mv	a4,s3
   19012:	84ae                	mv	s1,a1
   19014:	89ca                	mv	s3,s2
   19016:	8a32                	mv	s4,a2
   19018:	893a                	mv	s2,a4
   1901a:	449c                	lw	a5,8(s1)
   1901c:	40cc                	lw	a1,4(s1)
   1901e:	01298433          	add	s0,s3,s2
   19022:	0087a7b3          	slt	a5,a5,s0
   19026:	95be                	add	a1,a1,a5
   19028:	c63ff0ef          	jal	18c8a <_Balloc>
   1902c:	14050363          	beqz	a0,19172 <__multiply+0x180>
   19030:	01450313          	addi	t1,a0,20
   19034:	00241893          	slli	a7,s0,0x2
   19038:	989a                	add	a7,a7,t1
   1903a:	879a                	mv	a5,t1
   1903c:	01137763          	bgeu	t1,a7,1904a <__multiply+0x58>
   19040:	0007a023          	sw	zero,0(a5)
   19044:	0791                	addi	a5,a5,4
   19046:	ff17ede3          	bltu	a5,a7,19040 <__multiply+0x4e>
   1904a:	014a0813          	addi	a6,s4,20
   1904e:	00291e13          	slli	t3,s2,0x2
   19052:	01448e93          	addi	t4,s1,20
   19056:	00299593          	slli	a1,s3,0x2
   1905a:	9e42                	add	t3,t3,a6
   1905c:	95f6                	add	a1,a1,t4
   1905e:	0fc87163          	bgeu	a6,t3,19140 <__multiply+0x14e>
   19062:	01548793          	addi	a5,s1,21
   19066:	4f11                	li	t5,4
   19068:	0ef5fe63          	bgeu	a1,a5,19164 <__multiply+0x172>
   1906c:	66c1                	lui	a3,0x10
   1906e:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   19070:	a809                	j	19082 <__multiply+0x90>
   19072:	010fdf93          	srli	t6,t6,0x10
   19076:	060f9863          	bnez	t6,190e6 <__multiply+0xf4>
   1907a:	0811                	addi	a6,a6,4
   1907c:	0311                	addi	t1,t1,4
   1907e:	0dc87163          	bgeu	a6,t3,19140 <__multiply+0x14e>
   19082:	00082f83          	lw	t6,0(a6)
   19086:	00dff3b3          	and	t2,t6,a3
   1908a:	fe0384e3          	beqz	t2,19072 <__multiply+0x80>
   1908e:	829a                	mv	t0,t1
   19090:	8ff6                	mv	t6,t4
   19092:	4481                	li	s1,0
   19094:	000fa783          	lw	a5,0(t6)
   19098:	0002a603          	lw	a2,0(t0) # 1439a <memset+0x8e>
   1909c:	0291                	addi	t0,t0,4
   1909e:	00d7f733          	and	a4,a5,a3
   190a2:	02770733          	mul	a4,a4,t2
   190a6:	83c1                	srli	a5,a5,0x10
   190a8:	00d67933          	and	s2,a2,a3
   190ac:	8241                	srli	a2,a2,0x10
   190ae:	0f91                	addi	t6,t6,4
   190b0:	027787b3          	mul	a5,a5,t2
   190b4:	974a                	add	a4,a4,s2
   190b6:	9726                	add	a4,a4,s1
   190b8:	01075493          	srli	s1,a4,0x10
   190bc:	8f75                	and	a4,a4,a3
   190be:	97b2                	add	a5,a5,a2
   190c0:	97a6                	add	a5,a5,s1
   190c2:	01079613          	slli	a2,a5,0x10
   190c6:	8f51                	or	a4,a4,a2
   190c8:	fee2ae23          	sw	a4,-4(t0)
   190cc:	0107d493          	srli	s1,a5,0x10
   190d0:	fcbfe2e3          	bltu	t6,a1,19094 <__multiply+0xa2>
   190d4:	01e307b3          	add	a5,t1,t5
   190d8:	c384                	sw	s1,0(a5)
   190da:	00082f83          	lw	t6,0(a6)
   190de:	010fdf93          	srli	t6,t6,0x10
   190e2:	f80f8ce3          	beqz	t6,1907a <__multiply+0x88>
   190e6:	00032703          	lw	a4,0(t1)
   190ea:	829a                	mv	t0,t1
   190ec:	8676                	mv	a2,t4
   190ee:	84ba                	mv	s1,a4
   190f0:	4381                	li	t2,0
   190f2:	421c                	lw	a5,0(a2)
   190f4:	0104d993          	srli	s3,s1,0x10
   190f8:	8f75                	and	a4,a4,a3
   190fa:	8ff5                	and	a5,a5,a3
   190fc:	03f787b3          	mul	a5,a5,t6
   19100:	0042a483          	lw	s1,4(t0)
   19104:	0291                	addi	t0,t0,4
   19106:	0611                	addi	a2,a2,4
   19108:	00d4f933          	and	s2,s1,a3
   1910c:	979e                	add	a5,a5,t2
   1910e:	97ce                	add	a5,a5,s3
   19110:	01079393          	slli	t2,a5,0x10
   19114:	00e3e733          	or	a4,t2,a4
   19118:	fee2ae23          	sw	a4,-4(t0)
   1911c:	ffe65703          	lhu	a4,-2(a2)
   19120:	83c1                	srli	a5,a5,0x10
   19122:	03f70733          	mul	a4,a4,t6
   19126:	974a                	add	a4,a4,s2
   19128:	973e                	add	a4,a4,a5
   1912a:	01075393          	srli	t2,a4,0x10
   1912e:	fcb662e3          	bltu	a2,a1,190f2 <__multiply+0x100>
   19132:	01e307b3          	add	a5,t1,t5
   19136:	c398                	sw	a4,0(a5)
   19138:	0811                	addi	a6,a6,4
   1913a:	0311                	addi	t1,t1,4
   1913c:	f5c863e3          	bltu	a6,t3,19082 <__multiply+0x90>
   19140:	00804563          	bgtz	s0,1914a <__multiply+0x158>
   19144:	a039                	j	19152 <__multiply+0x160>
   19146:	147d                	addi	s0,s0,-1
   19148:	c409                	beqz	s0,19152 <__multiply+0x160>
   1914a:	ffc8a783          	lw	a5,-4(a7)
   1914e:	18f1                	addi	a7,a7,-4
   19150:	dbfd                	beqz	a5,19146 <__multiply+0x154>
   19152:	40f2                	lw	ra,28(sp)
   19154:	c900                	sw	s0,16(a0)
   19156:	4462                	lw	s0,24(sp)
   19158:	44d2                	lw	s1,20(sp)
   1915a:	4942                	lw	s2,16(sp)
   1915c:	49b2                	lw	s3,12(sp)
   1915e:	4a22                	lw	s4,8(sp)
   19160:	6105                	addi	sp,sp,32
   19162:	8082                	ret
   19164:	409587b3          	sub	a5,a1,s1
   19168:	17ad                	addi	a5,a5,-21
   1916a:	9bf1                	andi	a5,a5,-4
   1916c:	00478f13          	addi	t5,a5,4
   19170:	bdf5                	j	1906c <__multiply+0x7a>
   19172:	66f9                	lui	a3,0x1e
   19174:	6579                	lui	a0,0x1e
   19176:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   1917a:	4601                	li	a2,0
   1917c:	16200593          	li	a1,354
   19180:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   19184:	695000ef          	jal	1a018 <__assert_func>

00019188 <__pow5mult>:
   19188:	1101                	addi	sp,sp,-32
   1918a:	cc22                	sw	s0,24(sp)
   1918c:	c84a                	sw	s2,16(sp)
   1918e:	c64e                	sw	s3,12(sp)
   19190:	ce06                	sw	ra,28(sp)
   19192:	00367793          	andi	a5,a2,3
   19196:	8432                	mv	s0,a2
   19198:	89aa                	mv	s3,a0
   1919a:	892e                	mv	s2,a1
   1919c:	ebad                	bnez	a5,1920e <__pow5mult+0x86>
   1919e:	8409                	srai	s0,s0,0x2
   191a0:	c431                	beqz	s0,191ec <__pow5mult+0x64>
   191a2:	ca26                	sw	s1,20(sp)
   191a4:	0409a483          	lw	s1,64(s3)
   191a8:	ccbd                	beqz	s1,19226 <__pow5mult+0x9e>
   191aa:	00147793          	andi	a5,s0,1
   191ae:	eb89                	bnez	a5,191c0 <__pow5mult+0x38>
   191b0:	8405                	srai	s0,s0,0x1
   191b2:	cc05                	beqz	s0,191ea <__pow5mult+0x62>
   191b4:	4088                	lw	a0,0(s1)
   191b6:	c131                	beqz	a0,191fa <__pow5mult+0x72>
   191b8:	84aa                	mv	s1,a0
   191ba:	00147793          	andi	a5,s0,1
   191be:	dbed                	beqz	a5,191b0 <__pow5mult+0x28>
   191c0:	8626                	mv	a2,s1
   191c2:	85ca                	mv	a1,s2
   191c4:	854e                	mv	a0,s3
   191c6:	e2dff0ef          	jal	18ff2 <__multiply>
   191ca:	00090d63          	beqz	s2,191e4 <__pow5mult+0x5c>
   191ce:	00492703          	lw	a4,4(s2)
   191d2:	0449a783          	lw	a5,68(s3)
   191d6:	070a                	slli	a4,a4,0x2
   191d8:	97ba                	add	a5,a5,a4
   191da:	4398                	lw	a4,0(a5)
   191dc:	00e92023          	sw	a4,0(s2)
   191e0:	0127a023          	sw	s2,0(a5)
   191e4:	8405                	srai	s0,s0,0x1
   191e6:	892a                	mv	s2,a0
   191e8:	f471                	bnez	s0,191b4 <__pow5mult+0x2c>
   191ea:	44d2                	lw	s1,20(sp)
   191ec:	40f2                	lw	ra,28(sp)
   191ee:	4462                	lw	s0,24(sp)
   191f0:	49b2                	lw	s3,12(sp)
   191f2:	854a                	mv	a0,s2
   191f4:	4942                	lw	s2,16(sp)
   191f6:	6105                	addi	sp,sp,32
   191f8:	8082                	ret
   191fa:	8626                	mv	a2,s1
   191fc:	85a6                	mv	a1,s1
   191fe:	854e                	mv	a0,s3
   19200:	df3ff0ef          	jal	18ff2 <__multiply>
   19204:	c088                	sw	a0,0(s1)
   19206:	00052023          	sw	zero,0(a0)
   1920a:	84aa                	mv	s1,a0
   1920c:	b77d                	j	191ba <__pow5mult+0x32>
   1920e:	17fd                	addi	a5,a5,-1
   19210:	6779                	lui	a4,0x1e
   19212:	cf470713          	addi	a4,a4,-780 # 1dcf4 <p05.0>
   19216:	078a                	slli	a5,a5,0x2
   19218:	97ba                	add	a5,a5,a4
   1921a:	4390                	lw	a2,0(a5)
   1921c:	4681                	li	a3,0
   1921e:	aebff0ef          	jal	18d08 <__multadd>
   19222:	892a                	mv	s2,a0
   19224:	bfad                	j	1919e <__pow5mult+0x16>
   19226:	4585                	li	a1,1
   19228:	854e                	mv	a0,s3
   1922a:	a61ff0ef          	jal	18c8a <_Balloc>
   1922e:	84aa                	mv	s1,a0
   19230:	c919                	beqz	a0,19246 <__pow5mult+0xbe>
   19232:	27100793          	li	a5,625
   19236:	c95c                	sw	a5,20(a0)
   19238:	4785                	li	a5,1
   1923a:	c91c                	sw	a5,16(a0)
   1923c:	04a9a023          	sw	a0,64(s3)
   19240:	00052023          	sw	zero,0(a0)
   19244:	b79d                	j	191aa <__pow5mult+0x22>
   19246:	66f9                	lui	a3,0x1e
   19248:	6579                	lui	a0,0x1e
   1924a:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   1924e:	4601                	li	a2,0
   19250:	14500593          	li	a1,325
   19254:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   19258:	5c1000ef          	jal	1a018 <__assert_func>

0001925c <__lshift>:
   1925c:	1101                	addi	sp,sp,-32
   1925e:	c256                	sw	s5,4(sp)
   19260:	0105aa83          	lw	s5,16(a1)
   19264:	459c                	lw	a5,8(a1)
   19266:	c64e                	sw	s3,12(sp)
   19268:	40565993          	srai	s3,a2,0x5
   1926c:	9ace                	add	s5,s5,s3
   1926e:	cc22                	sw	s0,24(sp)
   19270:	ca26                	sw	s1,20(sp)
   19272:	c84a                	sw	s2,16(sp)
   19274:	c452                	sw	s4,8(sp)
   19276:	ce06                	sw	ra,28(sp)
   19278:	001a8913          	addi	s2,s5,1
   1927c:	84ae                	mv	s1,a1
   1927e:	8432                	mv	s0,a2
   19280:	41cc                	lw	a1,4(a1)
   19282:	8a2a                	mv	s4,a0
   19284:	0127d663          	bge	a5,s2,19290 <__lshift+0x34>
   19288:	0786                	slli	a5,a5,0x1
   1928a:	0585                	addi	a1,a1,1
   1928c:	ff27cee3          	blt	a5,s2,19288 <__lshift+0x2c>
   19290:	8552                	mv	a0,s4
   19292:	9f9ff0ef          	jal	18c8a <_Balloc>
   19296:	cd5d                	beqz	a0,19354 <__lshift+0xf8>
   19298:	01450813          	addi	a6,a0,20
   1929c:	01305e63          	blez	s3,192b8 <__lshift+0x5c>
   192a0:	0995                	addi	s3,s3,5
   192a2:	098a                	slli	s3,s3,0x2
   192a4:	01350733          	add	a4,a0,s3
   192a8:	87c2                	mv	a5,a6
   192aa:	0791                	addi	a5,a5,4
   192ac:	fe07ae23          	sw	zero,-4(a5)
   192b0:	fee79de3          	bne	a5,a4,192aa <__lshift+0x4e>
   192b4:	19b1                	addi	s3,s3,-20
   192b6:	984e                	add	a6,a6,s3
   192b8:	0104a883          	lw	a7,16(s1)
   192bc:	01448793          	addi	a5,s1,20
   192c0:	01f47613          	andi	a2,s0,31
   192c4:	088a                	slli	a7,a7,0x2
   192c6:	98be                	add	a7,a7,a5
   192c8:	c63d                	beqz	a2,19336 <__lshift+0xda>
   192ca:	02000593          	li	a1,32
   192ce:	8d91                	sub	a1,a1,a2
   192d0:	8342                	mv	t1,a6
   192d2:	4681                	li	a3,0
   192d4:	4398                	lw	a4,0(a5)
   192d6:	0311                	addi	t1,t1,4
   192d8:	0791                	addi	a5,a5,4
   192da:	00c71733          	sll	a4,a4,a2
   192de:	8f55                	or	a4,a4,a3
   192e0:	fee32e23          	sw	a4,-4(t1)
   192e4:	ffc7a683          	lw	a3,-4(a5)
   192e8:	00b6d6b3          	srl	a3,a3,a1
   192ec:	ff17e4e3          	bltu	a5,a7,192d4 <__lshift+0x78>
   192f0:	01548793          	addi	a5,s1,21
   192f4:	4711                	li	a4,4
   192f6:	00f8e863          	bltu	a7,a5,19306 <__lshift+0xaa>
   192fa:	409887b3          	sub	a5,a7,s1
   192fe:	17ad                	addi	a5,a5,-21
   19300:	9bf1                	andi	a5,a5,-4
   19302:	00478713          	addi	a4,a5,4
   19306:	983a                	add	a6,a6,a4
   19308:	00d82023          	sw	a3,0(a6)
   1930c:	e291                	bnez	a3,19310 <__lshift+0xb4>
   1930e:	8956                	mv	s2,s5
   19310:	40d8                	lw	a4,4(s1)
   19312:	044a2783          	lw	a5,68(s4)
   19316:	40f2                	lw	ra,28(sp)
   19318:	070a                	slli	a4,a4,0x2
   1931a:	97ba                	add	a5,a5,a4
   1931c:	4398                	lw	a4,0(a5)
   1931e:	01252823          	sw	s2,16(a0)
   19322:	4462                	lw	s0,24(sp)
   19324:	c098                	sw	a4,0(s1)
   19326:	c384                	sw	s1,0(a5)
   19328:	4942                	lw	s2,16(sp)
   1932a:	44d2                	lw	s1,20(sp)
   1932c:	49b2                	lw	s3,12(sp)
   1932e:	4a22                	lw	s4,8(sp)
   19330:	4a92                	lw	s5,4(sp)
   19332:	6105                	addi	sp,sp,32
   19334:	8082                	ret
   19336:	4398                	lw	a4,0(a5)
   19338:	0791                	addi	a5,a5,4
   1933a:	0811                	addi	a6,a6,4
   1933c:	fee82e23          	sw	a4,-4(a6)
   19340:	fd17f7e3          	bgeu	a5,a7,1930e <__lshift+0xb2>
   19344:	4398                	lw	a4,0(a5)
   19346:	0791                	addi	a5,a5,4
   19348:	0811                	addi	a6,a6,4
   1934a:	fee82e23          	sw	a4,-4(a6)
   1934e:	ff17e4e3          	bltu	a5,a7,19336 <__lshift+0xda>
   19352:	bf75                	j	1930e <__lshift+0xb2>
   19354:	66f9                	lui	a3,0x1e
   19356:	6579                	lui	a0,0x1e
   19358:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   1935c:	4601                	li	a2,0
   1935e:	1de00593          	li	a1,478
   19362:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   19366:	4b3000ef          	jal	1a018 <__assert_func>

0001936a <__mcmp>:
   1936a:	4918                	lw	a4,16(a0)
   1936c:	499c                	lw	a5,16(a1)
   1936e:	882a                	mv	a6,a0
   19370:	40f70533          	sub	a0,a4,a5
   19374:	02f71863          	bne	a4,a5,193a4 <__mcmp+0x3a>
   19378:	078a                	slli	a5,a5,0x2
   1937a:	0851                	addi	a6,a6,20
   1937c:	05d1                	addi	a1,a1,20
   1937e:	00f80733          	add	a4,a6,a5
   19382:	97ae                	add	a5,a5,a1
   19384:	a019                	j	1938a <__mcmp+0x20>
   19386:	00e87f63          	bgeu	a6,a4,193a4 <__mcmp+0x3a>
   1938a:	ffc72603          	lw	a2,-4(a4)
   1938e:	ffc7a683          	lw	a3,-4(a5)
   19392:	1771                	addi	a4,a4,-4
   19394:	17f1                	addi	a5,a5,-4
   19396:	fed608e3          	beq	a2,a3,19386 <__mcmp+0x1c>
   1939a:	4505                	li	a0,1
   1939c:	00d67463          	bgeu	a2,a3,193a4 <__mcmp+0x3a>
   193a0:	557d                	li	a0,-1
   193a2:	8082                	ret
   193a4:	8082                	ret

000193a6 <__mdiff>:
   193a6:	4998                	lw	a4,16(a1)
   193a8:	4a1c                	lw	a5,16(a2)
   193aa:	1141                	addi	sp,sp,-16
   193ac:	c422                	sw	s0,8(sp)
   193ae:	c226                	sw	s1,4(sp)
   193b0:	c606                	sw	ra,12(sp)
   193b2:	c04a                	sw	s2,0(sp)
   193b4:	842e                	mv	s0,a1
   193b6:	84b2                	mv	s1,a2
   193b8:	40f706b3          	sub	a3,a4,a5
   193bc:	12f71863          	bne	a4,a5,194ec <__mdiff+0x146>
   193c0:	00279693          	slli	a3,a5,0x2
   193c4:	01458613          	addi	a2,a1,20
   193c8:	01448713          	addi	a4,s1,20
   193cc:	00d607b3          	add	a5,a2,a3
   193d0:	9736                	add	a4,a4,a3
   193d2:	a019                	j	193d8 <__mdiff+0x32>
   193d4:	12f67463          	bgeu	a2,a5,194fc <__mdiff+0x156>
   193d8:	ffc7a583          	lw	a1,-4(a5)
   193dc:	ffc72683          	lw	a3,-4(a4)
   193e0:	17f1                	addi	a5,a5,-4
   193e2:	1771                	addi	a4,a4,-4
   193e4:	fed588e3          	beq	a1,a3,193d4 <__mdiff+0x2e>
   193e8:	4905                	li	s2,1
   193ea:	00d5e663          	bltu	a1,a3,193f6 <__mdiff+0x50>
   193ee:	87a6                	mv	a5,s1
   193f0:	4901                	li	s2,0
   193f2:	84a2                	mv	s1,s0
   193f4:	843e                	mv	s0,a5
   193f6:	40cc                	lw	a1,4(s1)
   193f8:	893ff0ef          	jal	18c8a <_Balloc>
   193fc:	12050763          	beqz	a0,1952a <__mdiff+0x184>
   19400:	0104a883          	lw	a7,16(s1)
   19404:	01042283          	lw	t0,16(s0)
   19408:	01448f93          	addi	t6,s1,20
   1940c:	00289313          	slli	t1,a7,0x2
   19410:	01440813          	addi	a6,s0,20
   19414:	028a                	slli	t0,t0,0x2
   19416:	01450593          	addi	a1,a0,20
   1941a:	6e41                	lui	t3,0x10
   1941c:	01252623          	sw	s2,12(a0)
   19420:	937e                	add	t1,t1,t6
   19422:	92c2                	add	t0,t0,a6
   19424:	8f2e                	mv	t5,a1
   19426:	8efe                	mv	t4,t6
   19428:	4681                	li	a3,0
   1942a:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   1942c:	000ea703          	lw	a4,0(t4)
   19430:	00082603          	lw	a2,0(a6)
   19434:	0f11                	addi	t5,t5,4
   19436:	01c777b3          	and	a5,a4,t3
   1943a:	01c673b3          	and	t2,a2,t3
   1943e:	407787b3          	sub	a5,a5,t2
   19442:	97b6                	add	a5,a5,a3
   19444:	8341                	srli	a4,a4,0x10
   19446:	8241                	srli	a2,a2,0x10
   19448:	4107d693          	srai	a3,a5,0x10
   1944c:	8f11                	sub	a4,a4,a2
   1944e:	9736                	add	a4,a4,a3
   19450:	01071693          	slli	a3,a4,0x10
   19454:	01c7f7b3          	and	a5,a5,t3
   19458:	8fd5                	or	a5,a5,a3
   1945a:	0811                	addi	a6,a6,4
   1945c:	feff2e23          	sw	a5,-4(t5)
   19460:	0e91                	addi	t4,t4,4
   19462:	41075693          	srai	a3,a4,0x10
   19466:	fc5863e3          	bltu	a6,t0,1942c <__mdiff+0x86>
   1946a:	01540713          	addi	a4,s0,21
   1946e:	40828433          	sub	s0,t0,s0
   19472:	142d                	addi	s0,s0,-21
   19474:	00e2b2b3          	sltu	t0,t0,a4
   19478:	0012cf13          	xori	t5,t0,1
   1947c:	8009                	srli	s0,s0,0x2
   1947e:	4711                	li	a4,4
   19480:	06028a63          	beqz	t0,194f4 <__mdiff+0x14e>
   19484:	9fba                	add	t6,t6,a4
   19486:	00e58833          	add	a6,a1,a4
   1948a:	6ec1                	lui	t4,0x10
   1948c:	8e42                	mv	t3,a6
   1948e:	867e                	mv	a2,t6
   19490:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   19492:	086ff363          	bgeu	t6,t1,19518 <__mdiff+0x172>
   19496:	421c                	lw	a5,0(a2)
   19498:	0e11                	addi	t3,t3,4
   1949a:	0611                	addi	a2,a2,4
   1949c:	01d7f733          	and	a4,a5,t4
   194a0:	9736                	add	a4,a4,a3
   194a2:	0107d593          	srli	a1,a5,0x10
   194a6:	8741                	srai	a4,a4,0x10
   194a8:	972e                	add	a4,a4,a1
   194aa:	97b6                	add	a5,a5,a3
   194ac:	01d7f7b3          	and	a5,a5,t4
   194b0:	01071693          	slli	a3,a4,0x10
   194b4:	8fd5                	or	a5,a5,a3
   194b6:	fefe2e23          	sw	a5,-4(t3)
   194ba:	41075693          	srai	a3,a4,0x10
   194be:	fc666ce3          	bltu	a2,t1,19496 <__mdiff+0xf0>
   194c2:	137d                	addi	t1,t1,-1
   194c4:	41f30333          	sub	t1,t1,t6
   194c8:	ffc37313          	andi	t1,t1,-4
   194cc:	00680733          	add	a4,a6,t1
   194d0:	e791                	bnez	a5,194dc <__mdiff+0x136>
   194d2:	ffc72783          	lw	a5,-4(a4)
   194d6:	18fd                	addi	a7,a7,-1
   194d8:	1771                	addi	a4,a4,-4
   194da:	dfe5                	beqz	a5,194d2 <__mdiff+0x12c>
   194dc:	40b2                	lw	ra,12(sp)
   194de:	4422                	lw	s0,8(sp)
   194e0:	01152823          	sw	a7,16(a0)
   194e4:	4492                	lw	s1,4(sp)
   194e6:	4902                	lw	s2,0(sp)
   194e8:	0141                	addi	sp,sp,16
   194ea:	8082                	ret
   194ec:	4905                	li	s2,1
   194ee:	f006d0e3          	bgez	a3,193ee <__mdiff+0x48>
   194f2:	b711                	j	193f6 <__mdiff+0x50>
   194f4:	00140713          	addi	a4,s0,1
   194f8:	070a                	slli	a4,a4,0x2
   194fa:	b769                	j	19484 <__mdiff+0xde>
   194fc:	4581                	li	a1,0
   194fe:	f8cff0ef          	jal	18c8a <_Balloc>
   19502:	cd1d                	beqz	a0,19540 <__mdiff+0x19a>
   19504:	40b2                	lw	ra,12(sp)
   19506:	4422                	lw	s0,8(sp)
   19508:	4785                	li	a5,1
   1950a:	c91c                	sw	a5,16(a0)
   1950c:	00052a23          	sw	zero,20(a0)
   19510:	4492                	lw	s1,4(sp)
   19512:	4902                	lw	s2,0(sp)
   19514:	0141                	addi	sp,sp,16
   19516:	8082                	ret
   19518:	4701                	li	a4,0
   1951a:	000f1463          	bnez	t5,19522 <__mdiff+0x17c>
   1951e:	972e                	add	a4,a4,a1
   19520:	bf45                	j	194d0 <__mdiff+0x12a>
   19522:	00241713          	slli	a4,s0,0x2
   19526:	972e                	add	a4,a4,a1
   19528:	b765                	j	194d0 <__mdiff+0x12a>
   1952a:	66f9                	lui	a3,0x1e
   1952c:	6579                	lui	a0,0x1e
   1952e:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   19532:	4601                	li	a2,0
   19534:	24500593          	li	a1,581
   19538:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   1953c:	2dd000ef          	jal	1a018 <__assert_func>
   19540:	66f9                	lui	a3,0x1e
   19542:	6579                	lui	a0,0x1e
   19544:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   19548:	4601                	li	a2,0
   1954a:	23700593          	li	a1,567
   1954e:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   19552:	2c7000ef          	jal	1a018 <__assert_func>

00019556 <__ulp>:
   19556:	7ff007b7          	lui	a5,0x7ff00
   1955a:	8dfd                	and	a1,a1,a5
   1955c:	fcc007b7          	lui	a5,0xfcc00
   19560:	95be                	add	a1,a1,a5
   19562:	4781                	li	a5,0
   19564:	00b05463          	blez	a1,1956c <__ulp+0x16>
   19568:	853e                	mv	a0,a5
   1956a:	8082                	ret
   1956c:	40b005b3          	neg	a1,a1
   19570:	85d1                	srai	a1,a1,0x14
   19572:	47cd                	li	a5,19
   19574:	00b7c963          	blt	a5,a1,19586 <__ulp+0x30>
   19578:	000807b7          	lui	a5,0x80
   1957c:	40b7d5b3          	sra	a1,a5,a1
   19580:	4781                	li	a5,0
   19582:	853e                	mv	a0,a5
   19584:	8082                	ret
   19586:	15b1                	addi	a1,a1,-20
   19588:	4779                	li	a4,30
   1958a:	4785                	li	a5,1
   1958c:	00b74663          	blt	a4,a1,19598 <__ulp+0x42>
   19590:	800007b7          	lui	a5,0x80000
   19594:	00b7d7b3          	srl	a5,a5,a1
   19598:	4581                	li	a1,0
   1959a:	853e                	mv	a0,a5
   1959c:	8082                	ret

0001959e <__b2d>:
   1959e:	1101                	addi	sp,sp,-32
   195a0:	ca26                	sw	s1,20(sp)
   195a2:	4904                	lw	s1,16(a0)
   195a4:	cc22                	sw	s0,24(sp)
   195a6:	01450413          	addi	s0,a0,20
   195aa:	048a                	slli	s1,s1,0x2
   195ac:	94a2                	add	s1,s1,s0
   195ae:	c84a                	sw	s2,16(sp)
   195b0:	ffc4a903          	lw	s2,-4(s1)
   195b4:	c64e                	sw	s3,12(sp)
   195b6:	c452                	sw	s4,8(sp)
   195b8:	854a                	mv	a0,s2
   195ba:	89ae                	mv	s3,a1
   195bc:	ce06                	sw	ra,28(sp)
   195be:	8efff0ef          	jal	18eac <__hi0bits>
   195c2:	02000713          	li	a4,32
   195c6:	40a707b3          	sub	a5,a4,a0
   195ca:	00f9a023          	sw	a5,0(s3)
   195ce:	47a9                	li	a5,10
   195d0:	ffc48a13          	addi	s4,s1,-4
   195d4:	06a7db63          	bge	a5,a0,1964a <__b2d+0xac>
   195d8:	ff550613          	addi	a2,a0,-11
   195dc:	03447d63          	bgeu	s0,s4,19616 <__b2d+0x78>
   195e0:	ff84a783          	lw	a5,-8(s1)
   195e4:	c629                	beqz	a2,1962e <__b2d+0x90>
   195e6:	40c706b3          	sub	a3,a4,a2
   195ea:	00d7d733          	srl	a4,a5,a3
   195ee:	00c91933          	sll	s2,s2,a2
   195f2:	00e96933          	or	s2,s2,a4
   195f6:	ff848593          	addi	a1,s1,-8
   195fa:	3ff00737          	lui	a4,0x3ff00
   195fe:	00e96733          	or	a4,s2,a4
   19602:	00c797b3          	sll	a5,a5,a2
   19606:	02b47863          	bgeu	s0,a1,19636 <__b2d+0x98>
   1960a:	ff44a603          	lw	a2,-12(s1)
   1960e:	00d656b3          	srl	a3,a2,a3
   19612:	8fd5                	or	a5,a5,a3
   19614:	a00d                	j	19636 <__b2d+0x98>
   19616:	47ad                	li	a5,11
   19618:	00f50a63          	beq	a0,a5,1962c <__b2d+0x8e>
   1961c:	00c91933          	sll	s2,s2,a2
   19620:	3ff00737          	lui	a4,0x3ff00
   19624:	00e96733          	or	a4,s2,a4
   19628:	4781                	li	a5,0
   1962a:	a031                	j	19636 <__b2d+0x98>
   1962c:	4781                	li	a5,0
   1962e:	3ff00737          	lui	a4,0x3ff00
   19632:	00e96733          	or	a4,s2,a4
   19636:	40f2                	lw	ra,28(sp)
   19638:	4462                	lw	s0,24(sp)
   1963a:	44d2                	lw	s1,20(sp)
   1963c:	4942                	lw	s2,16(sp)
   1963e:	49b2                	lw	s3,12(sp)
   19640:	4a22                	lw	s4,8(sp)
   19642:	853e                	mv	a0,a5
   19644:	85ba                	mv	a1,a4
   19646:	6105                	addi	sp,sp,32
   19648:	8082                	ret
   1964a:	46ad                	li	a3,11
   1964c:	8e89                	sub	a3,a3,a0
   1964e:	3ff007b7          	lui	a5,0x3ff00
   19652:	00d95733          	srl	a4,s2,a3
   19656:	8f5d                	or	a4,a4,a5
   19658:	4781                	li	a5,0
   1965a:	01447663          	bgeu	s0,s4,19666 <__b2d+0xc8>
   1965e:	ff84a783          	lw	a5,-8(s1)
   19662:	00d7d7b3          	srl	a5,a5,a3
   19666:	0555                	addi	a0,a0,21
   19668:	00a91933          	sll	s2,s2,a0
   1966c:	00f967b3          	or	a5,s2,a5
   19670:	b7d9                	j	19636 <__b2d+0x98>

00019672 <__d2b>:
   19672:	7179                	addi	sp,sp,-48
   19674:	ca56                	sw	s5,20(sp)
   19676:	8aae                	mv	s5,a1
   19678:	4585                	li	a1,1
   1967a:	d226                	sw	s1,36(sp)
   1967c:	ce4e                	sw	s3,28(sp)
   1967e:	cc52                	sw	s4,24(sp)
   19680:	d606                	sw	ra,44(sp)
   19682:	d422                	sw	s0,40(sp)
   19684:	d04a                	sw	s2,32(sp)
   19686:	84b2                	mv	s1,a2
   19688:	8a36                	mv	s4,a3
   1968a:	89ba                	mv	s3,a4
   1968c:	dfeff0ef          	jal	18c8a <_Balloc>
   19690:	c955                	beqz	a0,19744 <__d2b+0xd2>
   19692:	00100737          	lui	a4,0x100
   19696:	0144d913          	srli	s2,s1,0x14
   1969a:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe03fb>
   1969e:	7ff97913          	andi	s2,s2,2047
   196a2:	842a                	mv	s0,a0
   196a4:	8fe5                	and	a5,a5,s1
   196a6:	00090363          	beqz	s2,196ac <__d2b+0x3a>
   196aa:	8fd9                	or	a5,a5,a4
   196ac:	c63e                	sw	a5,12(sp)
   196ae:	040a9263          	bnez	s5,196f2 <__d2b+0x80>
   196b2:	0068                	addi	a0,sp,12
   196b4:	84dff0ef          	jal	18f00 <__lo0bits>
   196b8:	4732                	lw	a4,12(sp)
   196ba:	4485                	li	s1,1
   196bc:	c804                	sw	s1,16(s0)
   196be:	c858                	sw	a4,20(s0)
   196c0:	02050793          	addi	a5,a0,32
   196c4:	06090063          	beqz	s2,19724 <__d2b+0xb2>
   196c8:	bcd90913          	addi	s2,s2,-1075
   196cc:	993e                	add	s2,s2,a5
   196ce:	03500493          	li	s1,53
   196d2:	012a2023          	sw	s2,0(s4)
   196d6:	40f48533          	sub	a0,s1,a5
   196da:	00a9a023          	sw	a0,0(s3)
   196de:	50b2                	lw	ra,44(sp)
   196e0:	8522                	mv	a0,s0
   196e2:	5422                	lw	s0,40(sp)
   196e4:	5492                	lw	s1,36(sp)
   196e6:	5902                	lw	s2,32(sp)
   196e8:	49f2                	lw	s3,28(sp)
   196ea:	4a62                	lw	s4,24(sp)
   196ec:	4ad2                	lw	s5,20(sp)
   196ee:	6145                	addi	sp,sp,48
   196f0:	8082                	ret
   196f2:	0028                	addi	a0,sp,8
   196f4:	c456                	sw	s5,8(sp)
   196f6:	80bff0ef          	jal	18f00 <__lo0bits>
   196fa:	4732                	lw	a4,12(sp)
   196fc:	87aa                	mv	a5,a0
   196fe:	c129                	beqz	a0,19740 <__d2b+0xce>
   19700:	4622                	lw	a2,8(sp)
   19702:	02000693          	li	a3,32
   19706:	8e89                	sub	a3,a3,a0
   19708:	00d716b3          	sll	a3,a4,a3
   1970c:	00a75733          	srl	a4,a4,a0
   19710:	8ed1                	or	a3,a3,a2
   19712:	c63a                	sw	a4,12(sp)
   19714:	00e034b3          	snez	s1,a4
   19718:	0485                	addi	s1,s1,1
   1971a:	c854                	sw	a3,20(s0)
   1971c:	cc18                	sw	a4,24(s0)
   1971e:	c804                	sw	s1,16(s0)
   19720:	fa0914e3          	bnez	s2,196c8 <__d2b+0x56>
   19724:	00249713          	slli	a4,s1,0x2
   19728:	9722                	add	a4,a4,s0
   1972a:	4b08                	lw	a0,16(a4)
   1972c:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fedffca>
   19730:	00fa2023          	sw	a5,0(s4)
   19734:	f78ff0ef          	jal	18eac <__hi0bits>
   19738:	0496                	slli	s1,s1,0x5
   1973a:	40a48533          	sub	a0,s1,a0
   1973e:	bf71                	j	196da <__d2b+0x68>
   19740:	46a2                	lw	a3,8(sp)
   19742:	bfc9                	j	19714 <__d2b+0xa2>
   19744:	66f9                	lui	a3,0x1e
   19746:	6579                	lui	a0,0x1e
   19748:	9a868693          	addi	a3,a3,-1624 # 1d9a8 <__clzsi2+0xd4>
   1974c:	4601                	li	a2,0
   1974e:	30f00593          	li	a1,783
   19752:	a1850513          	addi	a0,a0,-1512 # 1da18 <__clzsi2+0x144>
   19756:	0c3000ef          	jal	1a018 <__assert_func>

0001975a <__ratio>:
   1975a:	7179                	addi	sp,sp,-48
   1975c:	d422                	sw	s0,40(sp)
   1975e:	842e                	mv	s0,a1
   19760:	082c                	addi	a1,sp,24
   19762:	d606                	sw	ra,44(sp)
   19764:	d226                	sw	s1,36(sp)
   19766:	84aa                	mv	s1,a0
   19768:	e37ff0ef          	jal	1959e <__b2d>
   1976c:	c02a                	sw	a0,0(sp)
   1976e:	c22e                	sw	a1,4(sp)
   19770:	2782                	fld	fa5,0(sp)
   19772:	086c                	addi	a1,sp,28
   19774:	8522                	mv	a0,s0
   19776:	a43e                	fsd	fa5,8(sp)
   19778:	e27ff0ef          	jal	1959e <__b2d>
   1977c:	4818                	lw	a4,16(s0)
   1977e:	489c                	lw	a5,16(s1)
   19780:	46f2                	lw	a3,28(sp)
   19782:	c02a                	sw	a0,0(sp)
   19784:	8f99                	sub	a5,a5,a4
   19786:	4762                	lw	a4,24(sp)
   19788:	0796                	slli	a5,a5,0x5
   1978a:	c22e                	sw	a1,4(sp)
   1978c:	8f15                	sub	a4,a4,a3
   1978e:	97ba                	add	a5,a5,a4
   19790:	02f05263          	blez	a5,197b4 <__ratio+0x5a>
   19794:	46b2                	lw	a3,12(sp)
   19796:	07d2                	slli	a5,a5,0x14
   19798:	97b6                	add	a5,a5,a3
   1979a:	c63e                	sw	a5,12(sp)
   1979c:	2702                	fld	fa4,0(sp)
   1979e:	27a2                	fld	fa5,8(sp)
   197a0:	50b2                	lw	ra,44(sp)
   197a2:	5422                	lw	s0,40(sp)
   197a4:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   197a8:	5492                	lw	s1,36(sp)
   197aa:	a03e                	fsd	fa5,0(sp)
   197ac:	4502                	lw	a0,0(sp)
   197ae:	4592                	lw	a1,4(sp)
   197b0:	6145                	addi	sp,sp,48
   197b2:	8082                	ret
   197b4:	4692                	lw	a3,4(sp)
   197b6:	07d2                	slli	a5,a5,0x14
   197b8:	40f687b3          	sub	a5,a3,a5
   197bc:	c23e                	sw	a5,4(sp)
   197be:	bff9                	j	1979c <__ratio+0x42>

000197c0 <_mprec_log10>:
   197c0:	47dd                	li	a5,23
   197c2:	1141                	addi	sp,sp,-16
   197c4:	00a7df63          	bge	a5,a0,197e2 <_mprec_log10+0x22>
   197c8:	ed81b787          	fld	fa5,-296(gp) # 1f890 <__SDATA_BEGIN__+0x30>
   197cc:	ee01b707          	fld	fa4,-288(gp) # 1f898 <__SDATA_BEGIN__+0x38>
   197d0:	157d                	addi	a0,a0,-1
   197d2:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   197d6:	fd6d                	bnez	a0,197d0 <_mprec_log10+0x10>
   197d8:	a43e                	fsd	fa5,8(sp)
   197da:	4522                	lw	a0,8(sp)
   197dc:	45b2                	lw	a1,12(sp)
   197de:	0141                	addi	sp,sp,16
   197e0:	8082                	ret
   197e2:	67f9                	lui	a5,0x1e
   197e4:	050e                	slli	a0,a0,0x3
   197e6:	d5078793          	addi	a5,a5,-688 # 1dd50 <__mprec_tens>
   197ea:	97aa                	add	a5,a5,a0
   197ec:	239c                	fld	fa5,0(a5)
   197ee:	a43e                	fsd	fa5,8(sp)
   197f0:	4522                	lw	a0,8(sp)
   197f2:	45b2                	lw	a1,12(sp)
   197f4:	0141                	addi	sp,sp,16
   197f6:	8082                	ret

000197f8 <__copybits>:
   197f8:	4a14                	lw	a3,16(a2)
   197fa:	15fd                	addi	a1,a1,-1
   197fc:	8595                	srai	a1,a1,0x5
   197fe:	0585                	addi	a1,a1,1
   19800:	01460793          	addi	a5,a2,20
   19804:	068a                	slli	a3,a3,0x2
   19806:	058a                	slli	a1,a1,0x2
   19808:	96be                	add	a3,a3,a5
   1980a:	95aa                	add	a1,a1,a0
   1980c:	02d7f163          	bgeu	a5,a3,1982e <__copybits+0x36>
   19810:	872a                	mv	a4,a0
   19812:	0007a803          	lw	a6,0(a5)
   19816:	0791                	addi	a5,a5,4
   19818:	0711                	addi	a4,a4,4
   1981a:	ff072e23          	sw	a6,-4(a4)
   1981e:	fed7eae3          	bltu	a5,a3,19812 <__copybits+0x1a>
   19822:	40c687b3          	sub	a5,a3,a2
   19826:	17ad                	addi	a5,a5,-21
   19828:	9bf1                	andi	a5,a5,-4
   1982a:	0791                	addi	a5,a5,4
   1982c:	953e                	add	a0,a0,a5
   1982e:	00b57763          	bgeu	a0,a1,1983c <__copybits+0x44>
   19832:	0511                	addi	a0,a0,4
   19834:	fe052e23          	sw	zero,-4(a0)
   19838:	feb56de3          	bltu	a0,a1,19832 <__copybits+0x3a>
   1983c:	8082                	ret

0001983e <__any_on>:
   1983e:	4918                	lw	a4,16(a0)
   19840:	4055d613          	srai	a2,a1,0x5
   19844:	01450693          	addi	a3,a0,20
   19848:	00c75d63          	bge	a4,a2,19862 <__any_on+0x24>
   1984c:	070a                	slli	a4,a4,0x2
   1984e:	00e687b3          	add	a5,a3,a4
   19852:	02f6f863          	bgeu	a3,a5,19882 <__any_on+0x44>
   19856:	ffc7a703          	lw	a4,-4(a5)
   1985a:	17f1                	addi	a5,a5,-4
   1985c:	db7d                	beqz	a4,19852 <__any_on+0x14>
   1985e:	4505                	li	a0,1
   19860:	8082                	ret
   19862:	00261793          	slli	a5,a2,0x2
   19866:	97b6                	add	a5,a5,a3
   19868:	fee655e3          	bge	a2,a4,19852 <__any_on+0x14>
   1986c:	89fd                	andi	a1,a1,31
   1986e:	d1f5                	beqz	a1,19852 <__any_on+0x14>
   19870:	4390                	lw	a2,0(a5)
   19872:	4505                	li	a0,1
   19874:	00b65733          	srl	a4,a2,a1
   19878:	00b71733          	sll	a4,a4,a1
   1987c:	fce60be3          	beq	a2,a4,19852 <__any_on+0x14>
   19880:	8082                	ret
   19882:	4501                	li	a0,0
   19884:	8082                	ret

00019886 <_realloc_r>:
   19886:	7179                	addi	sp,sp,-48
   19888:	d226                	sw	s1,36(sp)
   1988a:	d606                	sw	ra,44(sp)
   1988c:	84b2                	mv	s1,a2
   1988e:	14058e63          	beqz	a1,199ea <_realloc_r+0x164>
   19892:	d422                	sw	s0,40(sp)
   19894:	d04a                	sw	s2,32(sp)
   19896:	842e                	mv	s0,a1
   19898:	ce4e                	sw	s3,28(sp)
   1989a:	ca56                	sw	s5,20(sp)
   1989c:	cc52                	sw	s4,24(sp)
   1989e:	892a                	mv	s2,a0
   198a0:	c8efb0ef          	jal	14d2e <__malloc_lock>
   198a4:	ffc42703          	lw	a4,-4(s0)
   198a8:	00b48793          	addi	a5,s1,11
   198ac:	46d9                	li	a3,22
   198ae:	ff840a93          	addi	s5,s0,-8
   198b2:	ffc77993          	andi	s3,a4,-4
   198b6:	0cf6f063          	bgeu	a3,a5,19976 <_realloc_r+0xf0>
   198ba:	ff87fa13          	andi	s4,a5,-8
   198be:	0a07cf63          	bltz	a5,1997c <_realloc_r+0xf6>
   198c2:	0a9a6d63          	bltu	s4,s1,1997c <_realloc_r+0xf6>
   198c6:	0d49d663          	bge	s3,s4,19992 <_realloc_r+0x10c>
   198ca:	0001f7b7          	lui	a5,0x1f
   198ce:	c462                	sw	s8,8(sp)
   198d0:	2e878c13          	addi	s8,a5,744 # 1f2e8 <__malloc_av_>
   198d4:	008c2603          	lw	a2,8(s8)
   198d8:	013a86b3          	add	a3,s5,s3
   198dc:	42dc                	lw	a5,4(a3)
   198de:	12d60e63          	beq	a2,a3,19a1a <_realloc_r+0x194>
   198e2:	ffe7f613          	andi	a2,a5,-2
   198e6:	9636                	add	a2,a2,a3
   198e8:	4250                	lw	a2,4(a2)
   198ea:	8a05                	andi	a2,a2,1
   198ec:	e27d                	bnez	a2,199d2 <_realloc_r+0x14c>
   198ee:	9bf1                	andi	a5,a5,-4
   198f0:	00f98633          	add	a2,s3,a5
   198f4:	09465963          	bge	a2,s4,19986 <_realloc_r+0x100>
   198f8:	8b05                	andi	a4,a4,1
   198fa:	e70d                	bnez	a4,19924 <_realloc_r+0x9e>
   198fc:	c65e                	sw	s7,12(sp)
   198fe:	ff842b83          	lw	s7,-8(s0)
   19902:	c85a                	sw	s6,16(sp)
   19904:	417a8bb3          	sub	s7,s5,s7
   19908:	004ba703          	lw	a4,4(s7)
   1990c:	9b71                	andi	a4,a4,-4
   1990e:	97ba                	add	a5,a5,a4
   19910:	01378b33          	add	s6,a5,s3
   19914:	234b5f63          	bge	s6,s4,19b52 <_realloc_r+0x2cc>
   19918:	00e98b33          	add	s6,s3,a4
   1991c:	1d4b5463          	bge	s6,s4,19ae4 <_realloc_r+0x25e>
   19920:	4b42                	lw	s6,16(sp)
   19922:	4bb2                	lw	s7,12(sp)
   19924:	85a6                	mv	a1,s1
   19926:	854a                	mv	a0,s2
   19928:	e5dfa0ef          	jal	14784 <_malloc_r>
   1992c:	84aa                	mv	s1,a0
   1992e:	2e050063          	beqz	a0,19c0e <_realloc_r+0x388>
   19932:	ffc42783          	lw	a5,-4(s0)
   19936:	ff850713          	addi	a4,a0,-8
   1993a:	9bf9                	andi	a5,a5,-2
   1993c:	97d6                	add	a5,a5,s5
   1993e:	18e78d63          	beq	a5,a4,19ad8 <_realloc_r+0x252>
   19942:	ffc98613          	addi	a2,s3,-4
   19946:	02400793          	li	a5,36
   1994a:	20c7e063          	bltu	a5,a2,19b4a <_realloc_r+0x2c4>
   1994e:	474d                	li	a4,19
   19950:	16c76863          	bltu	a4,a2,19ac0 <_realloc_r+0x23a>
   19954:	87aa                	mv	a5,a0
   19956:	8722                	mv	a4,s0
   19958:	4314                	lw	a3,0(a4)
   1995a:	c394                	sw	a3,0(a5)
   1995c:	4354                	lw	a3,4(a4)
   1995e:	c3d4                	sw	a3,4(a5)
   19960:	4718                	lw	a4,8(a4)
   19962:	c798                	sw	a4,8(a5)
   19964:	85a2                	mv	a1,s0
   19966:	854a                	mv	a0,s2
   19968:	bf5fa0ef          	jal	1455c <_free_r>
   1996c:	854a                	mv	a0,s2
   1996e:	bc2fb0ef          	jal	14d30 <__malloc_unlock>
   19972:	4c22                	lw	s8,8(sp)
   19974:	a0a9                	j	199be <_realloc_r+0x138>
   19976:	4a41                	li	s4,16
   19978:	f49a77e3          	bgeu	s4,s1,198c6 <_realloc_r+0x40>
   1997c:	47b1                	li	a5,12
   1997e:	00f92023          	sw	a5,0(s2)
   19982:	4481                	li	s1,0
   19984:	a82d                	j	199be <_realloc_r+0x138>
   19986:	46dc                	lw	a5,12(a3)
   19988:	4698                	lw	a4,8(a3)
   1998a:	4c22                	lw	s8,8(sp)
   1998c:	89b2                	mv	s3,a2
   1998e:	c75c                	sw	a5,12(a4)
   19990:	c798                	sw	a4,8(a5)
   19992:	004aa783          	lw	a5,4(s5)
   19996:	414986b3          	sub	a3,s3,s4
   1999a:	463d                	li	a2,15
   1999c:	8b85                	andi	a5,a5,1
   1999e:	013a8733          	add	a4,s5,s3
   199a2:	04d66a63          	bltu	a2,a3,199f6 <_realloc_r+0x170>
   199a6:	0137e7b3          	or	a5,a5,s3
   199aa:	00faa223          	sw	a5,4(s5)
   199ae:	435c                	lw	a5,4(a4)
   199b0:	0017e793          	ori	a5,a5,1
   199b4:	c35c                	sw	a5,4(a4)
   199b6:	854a                	mv	a0,s2
   199b8:	b78fb0ef          	jal	14d30 <__malloc_unlock>
   199bc:	84a2                	mv	s1,s0
   199be:	5422                	lw	s0,40(sp)
   199c0:	50b2                	lw	ra,44(sp)
   199c2:	5902                	lw	s2,32(sp)
   199c4:	49f2                	lw	s3,28(sp)
   199c6:	4a62                	lw	s4,24(sp)
   199c8:	4ad2                	lw	s5,20(sp)
   199ca:	8526                	mv	a0,s1
   199cc:	5492                	lw	s1,36(sp)
   199ce:	6145                	addi	sp,sp,48
   199d0:	8082                	ret
   199d2:	8b05                	andi	a4,a4,1
   199d4:	fb21                	bnez	a4,19924 <_realloc_r+0x9e>
   199d6:	c65e                	sw	s7,12(sp)
   199d8:	ff842b83          	lw	s7,-8(s0)
   199dc:	c85a                	sw	s6,16(sp)
   199de:	417a8bb3          	sub	s7,s5,s7
   199e2:	004ba703          	lw	a4,4(s7)
   199e6:	9b71                	andi	a4,a4,-4
   199e8:	bf05                	j	19918 <_realloc_r+0x92>
   199ea:	50b2                	lw	ra,44(sp)
   199ec:	5492                	lw	s1,36(sp)
   199ee:	85b2                	mv	a1,a2
   199f0:	6145                	addi	sp,sp,48
   199f2:	d93fa06f          	j	14784 <_malloc_r>
   199f6:	0147e7b3          	or	a5,a5,s4
   199fa:	00faa223          	sw	a5,4(s5)
   199fe:	014a85b3          	add	a1,s5,s4
   19a02:	0016e693          	ori	a3,a3,1
   19a06:	c1d4                	sw	a3,4(a1)
   19a08:	435c                	lw	a5,4(a4)
   19a0a:	05a1                	addi	a1,a1,8
   19a0c:	854a                	mv	a0,s2
   19a0e:	0017e793          	ori	a5,a5,1
   19a12:	c35c                	sw	a5,4(a4)
   19a14:	b49fa0ef          	jal	1455c <_free_r>
   19a18:	bf79                	j	199b6 <_realloc_r+0x130>
   19a1a:	9bf1                	andi	a5,a5,-4
   19a1c:	013786b3          	add	a3,a5,s3
   19a20:	010a0613          	addi	a2,s4,16
   19a24:	1ac6db63          	bge	a3,a2,19bda <_realloc_r+0x354>
   19a28:	8b05                	andi	a4,a4,1
   19a2a:	ee071de3          	bnez	a4,19924 <_realloc_r+0x9e>
   19a2e:	c65e                	sw	s7,12(sp)
   19a30:	ff842b83          	lw	s7,-8(s0)
   19a34:	c85a                	sw	s6,16(sp)
   19a36:	417a8bb3          	sub	s7,s5,s7
   19a3a:	004ba703          	lw	a4,4(s7)
   19a3e:	9b71                	andi	a4,a4,-4
   19a40:	97ba                	add	a5,a5,a4
   19a42:	01378b33          	add	s6,a5,s3
   19a46:	eccb49e3          	blt	s6,a2,19918 <_realloc_r+0x92>
   19a4a:	00cba783          	lw	a5,12(s7)
   19a4e:	008ba703          	lw	a4,8(s7)
   19a52:	ffc98613          	addi	a2,s3,-4
   19a56:	02400693          	li	a3,36
   19a5a:	c75c                	sw	a5,12(a4)
   19a5c:	c798                	sw	a4,8(a5)
   19a5e:	008b8493          	addi	s1,s7,8
   19a62:	1cc6e563          	bltu	a3,a2,19c2c <_realloc_r+0x3a6>
   19a66:	474d                	li	a4,19
   19a68:	87a6                	mv	a5,s1
   19a6a:	00c77e63          	bgeu	a4,a2,19a86 <_realloc_r+0x200>
   19a6e:	4018                	lw	a4,0(s0)
   19a70:	47ed                	li	a5,27
   19a72:	00eba423          	sw	a4,8(s7)
   19a76:	4058                	lw	a4,4(s0)
   19a78:	00eba623          	sw	a4,12(s7)
   19a7c:	1ac7ed63          	bltu	a5,a2,19c36 <_realloc_r+0x3b0>
   19a80:	0421                	addi	s0,s0,8
   19a82:	010b8793          	addi	a5,s7,16
   19a86:	4018                	lw	a4,0(s0)
   19a88:	c398                	sw	a4,0(a5)
   19a8a:	4058                	lw	a4,4(s0)
   19a8c:	c3d8                	sw	a4,4(a5)
   19a8e:	4418                	lw	a4,8(s0)
   19a90:	c798                	sw	a4,8(a5)
   19a92:	014b8733          	add	a4,s7,s4
   19a96:	414b0b33          	sub	s6,s6,s4
   19a9a:	00ec2423          	sw	a4,8(s8)
   19a9e:	001b6793          	ori	a5,s6,1
   19aa2:	c35c                	sw	a5,4(a4)
   19aa4:	004ba783          	lw	a5,4(s7)
   19aa8:	854a                	mv	a0,s2
   19aaa:	8b85                	andi	a5,a5,1
   19aac:	0147e7b3          	or	a5,a5,s4
   19ab0:	00fba223          	sw	a5,4(s7)
   19ab4:	a7cfb0ef          	jal	14d30 <__malloc_unlock>
   19ab8:	4b42                	lw	s6,16(sp)
   19aba:	4bb2                	lw	s7,12(sp)
   19abc:	4c22                	lw	s8,8(sp)
   19abe:	b701                	j	199be <_realloc_r+0x138>
   19ac0:	4014                	lw	a3,0(s0)
   19ac2:	476d                	li	a4,27
   19ac4:	c114                	sw	a3,0(a0)
   19ac6:	4054                	lw	a3,4(s0)
   19ac8:	c154                	sw	a3,4(a0)
   19aca:	0ec76d63          	bltu	a4,a2,19bc4 <_realloc_r+0x33e>
   19ace:	00840713          	addi	a4,s0,8
   19ad2:	00850793          	addi	a5,a0,8
   19ad6:	b549                	j	19958 <_realloc_r+0xd2>
   19ad8:	ffc52783          	lw	a5,-4(a0)
   19adc:	4c22                	lw	s8,8(sp)
   19ade:	9bf1                	andi	a5,a5,-4
   19ae0:	99be                	add	s3,s3,a5
   19ae2:	bd45                	j	19992 <_realloc_r+0x10c>
   19ae4:	00cba783          	lw	a5,12(s7)
   19ae8:	008ba703          	lw	a4,8(s7)
   19aec:	ffc98613          	addi	a2,s3,-4
   19af0:	02400693          	li	a3,36
   19af4:	c75c                	sw	a5,12(a4)
   19af6:	c798                	sw	a4,8(a5)
   19af8:	008b8493          	addi	s1,s7,8
   19afc:	0ac6ef63          	bltu	a3,a2,19bba <_realloc_r+0x334>
   19b00:	474d                	li	a4,19
   19b02:	87a6                	mv	a5,s1
   19b04:	02c77663          	bgeu	a4,a2,19b30 <_realloc_r+0x2aa>
   19b08:	4018                	lw	a4,0(s0)
   19b0a:	47ed                	li	a5,27
   19b0c:	00eba423          	sw	a4,8(s7)
   19b10:	4058                	lw	a4,4(s0)
   19b12:	00eba623          	sw	a4,12(s7)
   19b16:	0ec7f863          	bgeu	a5,a2,19c06 <_realloc_r+0x380>
   19b1a:	441c                	lw	a5,8(s0)
   19b1c:	00fba823          	sw	a5,16(s7)
   19b20:	445c                	lw	a5,12(s0)
   19b22:	00fbaa23          	sw	a5,20(s7)
   19b26:	06d60f63          	beq	a2,a3,19ba4 <_realloc_r+0x31e>
   19b2a:	0441                	addi	s0,s0,16
   19b2c:	018b8793          	addi	a5,s7,24
   19b30:	4018                	lw	a4,0(s0)
   19b32:	c398                	sw	a4,0(a5)
   19b34:	4058                	lw	a4,4(s0)
   19b36:	c3d8                	sw	a4,4(a5)
   19b38:	4418                	lw	a4,8(s0)
   19b3a:	c798                	sw	a4,8(a5)
   19b3c:	89da                	mv	s3,s6
   19b3e:	8ade                	mv	s5,s7
   19b40:	4b42                	lw	s6,16(sp)
   19b42:	4bb2                	lw	s7,12(sp)
   19b44:	4c22                	lw	s8,8(sp)
   19b46:	8426                	mv	s0,s1
   19b48:	b5a9                	j	19992 <_realloc_r+0x10c>
   19b4a:	85a2                	mv	a1,s0
   19b4c:	87ffd0ef          	jal	173ca <memmove>
   19b50:	bd11                	j	19964 <_realloc_r+0xde>
   19b52:	46dc                	lw	a5,12(a3)
   19b54:	4698                	lw	a4,8(a3)
   19b56:	ffc98613          	addi	a2,s3,-4
   19b5a:	02400693          	li	a3,36
   19b5e:	c75c                	sw	a5,12(a4)
   19b60:	c798                	sw	a4,8(a5)
   19b62:	008ba703          	lw	a4,8(s7)
   19b66:	00cba783          	lw	a5,12(s7)
   19b6a:	008b8493          	addi	s1,s7,8
   19b6e:	c75c                	sw	a5,12(a4)
   19b70:	c798                	sw	a4,8(a5)
   19b72:	04c6e463          	bltu	a3,a2,19bba <_realloc_r+0x334>
   19b76:	474d                	li	a4,19
   19b78:	87a6                	mv	a5,s1
   19b7a:	fac77be3          	bgeu	a4,a2,19b30 <_realloc_r+0x2aa>
   19b7e:	4018                	lw	a4,0(s0)
   19b80:	47ed                	li	a5,27
   19b82:	00eba423          	sw	a4,8(s7)
   19b86:	4058                	lw	a4,4(s0)
   19b88:	00eba623          	sw	a4,12(s7)
   19b8c:	06c7fd63          	bgeu	a5,a2,19c06 <_realloc_r+0x380>
   19b90:	4418                	lw	a4,8(s0)
   19b92:	02400793          	li	a5,36
   19b96:	00eba823          	sw	a4,16(s7)
   19b9a:	4458                	lw	a4,12(s0)
   19b9c:	00ebaa23          	sw	a4,20(s7)
   19ba0:	f8f615e3          	bne	a2,a5,19b2a <_realloc_r+0x2a4>
   19ba4:	4818                	lw	a4,16(s0)
   19ba6:	020b8793          	addi	a5,s7,32
   19baa:	0461                	addi	s0,s0,24
   19bac:	00ebac23          	sw	a4,24(s7)
   19bb0:	ffc42703          	lw	a4,-4(s0)
   19bb4:	00ebae23          	sw	a4,28(s7)
   19bb8:	bfa5                	j	19b30 <_realloc_r+0x2aa>
   19bba:	85a2                	mv	a1,s0
   19bbc:	8526                	mv	a0,s1
   19bbe:	80dfd0ef          	jal	173ca <memmove>
   19bc2:	bfad                	j	19b3c <_realloc_r+0x2b6>
   19bc4:	4418                	lw	a4,8(s0)
   19bc6:	c518                	sw	a4,8(a0)
   19bc8:	4458                	lw	a4,12(s0)
   19bca:	c558                	sw	a4,12(a0)
   19bcc:	04f60763          	beq	a2,a5,19c1a <_realloc_r+0x394>
   19bd0:	01040713          	addi	a4,s0,16
   19bd4:	01050793          	addi	a5,a0,16
   19bd8:	b341                	j	19958 <_realloc_r+0xd2>
   19bda:	9ad2                	add	s5,s5,s4
   19bdc:	414686b3          	sub	a3,a3,s4
   19be0:	015c2423          	sw	s5,8(s8)
   19be4:	0016e793          	ori	a5,a3,1
   19be8:	00faa223          	sw	a5,4(s5)
   19bec:	ffc42783          	lw	a5,-4(s0)
   19bf0:	854a                	mv	a0,s2
   19bf2:	84a2                	mv	s1,s0
   19bf4:	8b85                	andi	a5,a5,1
   19bf6:	0147e7b3          	or	a5,a5,s4
   19bfa:	fef42e23          	sw	a5,-4(s0)
   19bfe:	932fb0ef          	jal	14d30 <__malloc_unlock>
   19c02:	4c22                	lw	s8,8(sp)
   19c04:	bb6d                	j	199be <_realloc_r+0x138>
   19c06:	0421                	addi	s0,s0,8
   19c08:	010b8793          	addi	a5,s7,16
   19c0c:	b715                	j	19b30 <_realloc_r+0x2aa>
   19c0e:	854a                	mv	a0,s2
   19c10:	920fb0ef          	jal	14d30 <__malloc_unlock>
   19c14:	4481                	li	s1,0
   19c16:	4c22                	lw	s8,8(sp)
   19c18:	b35d                	j	199be <_realloc_r+0x138>
   19c1a:	4814                	lw	a3,16(s0)
   19c1c:	01840713          	addi	a4,s0,24
   19c20:	01850793          	addi	a5,a0,24
   19c24:	c914                	sw	a3,16(a0)
   19c26:	4854                	lw	a3,20(s0)
   19c28:	c954                	sw	a3,20(a0)
   19c2a:	b33d                	j	19958 <_realloc_r+0xd2>
   19c2c:	85a2                	mv	a1,s0
   19c2e:	8526                	mv	a0,s1
   19c30:	f9afd0ef          	jal	173ca <memmove>
   19c34:	bdb9                	j	19a92 <_realloc_r+0x20c>
   19c36:	441c                	lw	a5,8(s0)
   19c38:	00fba823          	sw	a5,16(s7)
   19c3c:	445c                	lw	a5,12(s0)
   19c3e:	00fbaa23          	sw	a5,20(s7)
   19c42:	00d60663          	beq	a2,a3,19c4e <_realloc_r+0x3c8>
   19c46:	0441                	addi	s0,s0,16
   19c48:	018b8793          	addi	a5,s7,24
   19c4c:	bd2d                	j	19a86 <_realloc_r+0x200>
   19c4e:	4818                	lw	a4,16(s0)
   19c50:	020b8793          	addi	a5,s7,32
   19c54:	00ebac23          	sw	a4,24(s7)
   19c58:	4858                	lw	a4,20(s0)
   19c5a:	0461                	addi	s0,s0,24
   19c5c:	00ebae23          	sw	a4,28(s7)
   19c60:	b51d                	j	19a86 <_realloc_r+0x200>

00019c62 <__smakebuf_r>:
   19c62:	00c59783          	lh	a5,12(a1)
   19c66:	7119                	addi	sp,sp,-128
   19c68:	dca2                	sw	s0,120(sp)
   19c6a:	de86                	sw	ra,124(sp)
   19c6c:	0027f713          	andi	a4,a5,2
   19c70:	842e                	mv	s0,a1
   19c72:	cb19                	beqz	a4,19c88 <__smakebuf_r+0x26>
   19c74:	04358793          	addi	a5,a1,67
   19c78:	c19c                	sw	a5,0(a1)
   19c7a:	c99c                	sw	a5,16(a1)
   19c7c:	4785                	li	a5,1
   19c7e:	c9dc                	sw	a5,20(a1)
   19c80:	50f6                	lw	ra,124(sp)
   19c82:	5466                	lw	s0,120(sp)
   19c84:	6109                	addi	sp,sp,128
   19c86:	8082                	ret
   19c88:	00e59583          	lh	a1,14(a1)
   19c8c:	daa6                	sw	s1,116(sp)
   19c8e:	d8ca                	sw	s2,112(sp)
   19c90:	d6ce                	sw	s3,108(sp)
   19c92:	d4d2                	sw	s4,104(sp)
   19c94:	84aa                	mv	s1,a0
   19c96:	0605c263          	bltz	a1,19cfa <__smakebuf_r+0x98>
   19c9a:	0030                	addi	a2,sp,8
   19c9c:	22fd                	jal	19e8a <_fstat_r>
   19c9e:	04054c63          	bltz	a0,19cf6 <__smakebuf_r+0x94>
   19ca2:	47b2                	lw	a5,12(sp)
   19ca4:	693d                	lui	s2,0xf
   19ca6:	6985                	lui	s3,0x1
   19ca8:	00f97933          	and	s2,s2,a5
   19cac:	77f9                	lui	a5,0xffffe
   19cae:	993e                	add	s2,s2,a5
   19cb0:	00193913          	seqz	s2,s2
   19cb4:	40000a13          	li	s4,1024
   19cb8:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   19cbc:	85d2                	mv	a1,s4
   19cbe:	8526                	mv	a0,s1
   19cc0:	ac5fa0ef          	jal	14784 <_malloc_r>
   19cc4:	00c41783          	lh	a5,12(s0)
   19cc8:	c539                	beqz	a0,19d16 <__smakebuf_r+0xb4>
   19cca:	0807e793          	ori	a5,a5,128
   19cce:	c008                	sw	a0,0(s0)
   19cd0:	c808                	sw	a0,16(s0)
   19cd2:	00f41623          	sh	a5,12(s0)
   19cd6:	01442a23          	sw	s4,20(s0)
   19cda:	06091563          	bnez	s2,19d44 <__smakebuf_r+0xe2>
   19cde:	0137e7b3          	or	a5,a5,s3
   19ce2:	50f6                	lw	ra,124(sp)
   19ce4:	00f41623          	sh	a5,12(s0)
   19ce8:	5466                	lw	s0,120(sp)
   19cea:	54d6                	lw	s1,116(sp)
   19cec:	5946                	lw	s2,112(sp)
   19cee:	59b6                	lw	s3,108(sp)
   19cf0:	5a26                	lw	s4,104(sp)
   19cf2:	6109                	addi	sp,sp,128
   19cf4:	8082                	ret
   19cf6:	00c41783          	lh	a5,12(s0)
   19cfa:	0807f793          	andi	a5,a5,128
   19cfe:	4901                	li	s2,0
   19d00:	cf95                	beqz	a5,19d3c <__smakebuf_r+0xda>
   19d02:	04000a13          	li	s4,64
   19d06:	85d2                	mv	a1,s4
   19d08:	8526                	mv	a0,s1
   19d0a:	a7bfa0ef          	jal	14784 <_malloc_r>
   19d0e:	00c41783          	lh	a5,12(s0)
   19d12:	4981                	li	s3,0
   19d14:	f95d                	bnez	a0,19cca <__smakebuf_r+0x68>
   19d16:	2007f713          	andi	a4,a5,512
   19d1a:	ef0d                	bnez	a4,19d54 <__smakebuf_r+0xf2>
   19d1c:	9bf1                	andi	a5,a5,-4
   19d1e:	0027e793          	ori	a5,a5,2
   19d22:	04340713          	addi	a4,s0,67
   19d26:	00f41623          	sh	a5,12(s0)
   19d2a:	4785                	li	a5,1
   19d2c:	54d6                	lw	s1,116(sp)
   19d2e:	5946                	lw	s2,112(sp)
   19d30:	59b6                	lw	s3,108(sp)
   19d32:	5a26                	lw	s4,104(sp)
   19d34:	c018                	sw	a4,0(s0)
   19d36:	c818                	sw	a4,16(s0)
   19d38:	c85c                	sw	a5,20(s0)
   19d3a:	b799                	j	19c80 <__smakebuf_r+0x1e>
   19d3c:	40000a13          	li	s4,1024
   19d40:	4981                	li	s3,0
   19d42:	bfad                	j	19cbc <__smakebuf_r+0x5a>
   19d44:	00e41583          	lh	a1,14(s0)
   19d48:	8526                	mv	a0,s1
   19d4a:	2aad                	jal	19ec4 <_isatty_r>
   19d4c:	e909                	bnez	a0,19d5e <__smakebuf_r+0xfc>
   19d4e:	00c41783          	lh	a5,12(s0)
   19d52:	b771                	j	19cde <__smakebuf_r+0x7c>
   19d54:	54d6                	lw	s1,116(sp)
   19d56:	5946                	lw	s2,112(sp)
   19d58:	59b6                	lw	s3,108(sp)
   19d5a:	5a26                	lw	s4,104(sp)
   19d5c:	b715                	j	19c80 <__smakebuf_r+0x1e>
   19d5e:	00c45783          	lhu	a5,12(s0)
   19d62:	9bf1                	andi	a5,a5,-4
   19d64:	0017e793          	ori	a5,a5,1
   19d68:	07c2                	slli	a5,a5,0x10
   19d6a:	87c1                	srai	a5,a5,0x10
   19d6c:	bf8d                	j	19cde <__smakebuf_r+0x7c>

00019d6e <__swhatbuf_r>:
   19d6e:	7159                	addi	sp,sp,-112
   19d70:	d4a2                	sw	s0,104(sp)
   19d72:	842e                	mv	s0,a1
   19d74:	00e59583          	lh	a1,14(a1)
   19d78:	d2a6                	sw	s1,100(sp)
   19d7a:	d0ca                	sw	s2,96(sp)
   19d7c:	d686                	sw	ra,108(sp)
   19d7e:	84b2                	mv	s1,a2
   19d80:	8936                	mv	s2,a3
   19d82:	0205cb63          	bltz	a1,19db8 <__swhatbuf_r+0x4a>
   19d86:	0030                	addi	a2,sp,8
   19d88:	2209                	jal	19e8a <_fstat_r>
   19d8a:	02054763          	bltz	a0,19db8 <__swhatbuf_r+0x4a>
   19d8e:	4732                	lw	a4,12(sp)
   19d90:	67bd                	lui	a5,0xf
   19d92:	50b6                	lw	ra,108(sp)
   19d94:	8ff9                	and	a5,a5,a4
   19d96:	7779                	lui	a4,0xffffe
   19d98:	97ba                	add	a5,a5,a4
   19d9a:	5426                	lw	s0,104(sp)
   19d9c:	0017b793          	seqz	a5,a5
   19da0:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   19da4:	40000713          	li	a4,1024
   19da8:	c098                	sw	a4,0(s1)
   19daa:	6505                	lui	a0,0x1
   19dac:	5496                	lw	s1,100(sp)
   19dae:	5906                	lw	s2,96(sp)
   19db0:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   19db4:	6165                	addi	sp,sp,112
   19db6:	8082                	ret
   19db8:	00c45783          	lhu	a5,12(s0)
   19dbc:	0807f793          	andi	a5,a5,128
   19dc0:	cf91                	beqz	a5,19ddc <__swhatbuf_r+0x6e>
   19dc2:	50b6                	lw	ra,108(sp)
   19dc4:	5426                	lw	s0,104(sp)
   19dc6:	4781                	li	a5,0
   19dc8:	00f92023          	sw	a5,0(s2)
   19dcc:	04000713          	li	a4,64
   19dd0:	c098                	sw	a4,0(s1)
   19dd2:	5906                	lw	s2,96(sp)
   19dd4:	5496                	lw	s1,100(sp)
   19dd6:	4501                	li	a0,0
   19dd8:	6165                	addi	sp,sp,112
   19dda:	8082                	ret
   19ddc:	50b6                	lw	ra,108(sp)
   19dde:	5426                	lw	s0,104(sp)
   19de0:	00f92023          	sw	a5,0(s2)
   19de4:	40000713          	li	a4,1024
   19de8:	c098                	sw	a4,0(s1)
   19dea:	5906                	lw	s2,96(sp)
   19dec:	5496                	lw	s1,100(sp)
   19dee:	4501                	li	a0,0
   19df0:	6165                	addi	sp,sp,112
   19df2:	8082                	ret

00019df4 <_setlocale_r>:
   19df4:	1141                	addi	sp,sp,-16
   19df6:	c606                	sw	ra,12(sp)
   19df8:	c226                	sw	s1,4(sp)
   19dfa:	c20d                	beqz	a2,19e1c <_setlocale_r+0x28>
   19dfc:	65f9                	lui	a1,0x1e
   19dfe:	a7058593          	addi	a1,a1,-1424 # 1da70 <__clzsi2+0x19c>
   19e02:	8532                	mv	a0,a2
   19e04:	c422                	sw	s0,8(sp)
   19e06:	8432                	mv	s0,a2
   19e08:	28cd                	jal	19efa <strcmp>
   19e0a:	64f9                	lui	s1,0x1e
   19e0c:	e911                	bnez	a0,19e20 <_setlocale_r+0x2c>
   19e0e:	4422                	lw	s0,8(sp)
   19e10:	a6c48513          	addi	a0,s1,-1428 # 1da6c <__clzsi2+0x198>
   19e14:	40b2                	lw	ra,12(sp)
   19e16:	4492                	lw	s1,4(sp)
   19e18:	0141                	addi	sp,sp,16
   19e1a:	8082                	ret
   19e1c:	64f9                	lui	s1,0x1e
   19e1e:	bfcd                	j	19e10 <_setlocale_r+0x1c>
   19e20:	a6c48593          	addi	a1,s1,-1428 # 1da6c <__clzsi2+0x198>
   19e24:	8522                	mv	a0,s0
   19e26:	28d1                	jal	19efa <strcmp>
   19e28:	d17d                	beqz	a0,19e0e <_setlocale_r+0x1a>
   19e2a:	65f9                	lui	a1,0x1e
   19e2c:	a8858593          	addi	a1,a1,-1400 # 1da88 <__clzsi2+0x1b4>
   19e30:	8522                	mv	a0,s0
   19e32:	20e1                	jal	19efa <strcmp>
   19e34:	dd69                	beqz	a0,19e0e <_setlocale_r+0x1a>
   19e36:	4422                	lw	s0,8(sp)
   19e38:	4501                	li	a0,0
   19e3a:	bfe9                	j	19e14 <_setlocale_r+0x20>

00019e3c <__locale_mb_cur_max>:
   19e3c:	e601c503          	lbu	a0,-416(gp) # 1f818 <__global_locale+0x128>
   19e40:	8082                	ret

00019e42 <setlocale>:
   19e42:	1141                	addi	sp,sp,-16
   19e44:	c606                	sw	ra,12(sp)
   19e46:	c226                	sw	s1,4(sp)
   19e48:	c18d                	beqz	a1,19e6a <setlocale+0x28>
   19e4a:	c422                	sw	s0,8(sp)
   19e4c:	842e                	mv	s0,a1
   19e4e:	65f9                	lui	a1,0x1e
   19e50:	a7058593          	addi	a1,a1,-1424 # 1da70 <__clzsi2+0x19c>
   19e54:	8522                	mv	a0,s0
   19e56:	2055                	jal	19efa <strcmp>
   19e58:	64f9                	lui	s1,0x1e
   19e5a:	e911                	bnez	a0,19e6e <setlocale+0x2c>
   19e5c:	4422                	lw	s0,8(sp)
   19e5e:	a6c48513          	addi	a0,s1,-1428 # 1da6c <__clzsi2+0x198>
   19e62:	40b2                	lw	ra,12(sp)
   19e64:	4492                	lw	s1,4(sp)
   19e66:	0141                	addi	sp,sp,16
   19e68:	8082                	ret
   19e6a:	64f9                	lui	s1,0x1e
   19e6c:	bfcd                	j	19e5e <setlocale+0x1c>
   19e6e:	a6c48593          	addi	a1,s1,-1428 # 1da6c <__clzsi2+0x198>
   19e72:	8522                	mv	a0,s0
   19e74:	2059                	jal	19efa <strcmp>
   19e76:	d17d                	beqz	a0,19e5c <setlocale+0x1a>
   19e78:	65f9                	lui	a1,0x1e
   19e7a:	a8858593          	addi	a1,a1,-1400 # 1da88 <__clzsi2+0x1b4>
   19e7e:	8522                	mv	a0,s0
   19e80:	28ad                	jal	19efa <strcmp>
   19e82:	dd69                	beqz	a0,19e5c <setlocale+0x1a>
   19e84:	4422                	lw	s0,8(sp)
   19e86:	4501                	li	a0,0
   19e88:	bfe9                	j	19e62 <setlocale+0x20>

00019e8a <_fstat_r>:
   19e8a:	1141                	addi	sp,sp,-16
   19e8c:	872e                	mv	a4,a1
   19e8e:	c422                	sw	s0,8(sp)
   19e90:	c226                	sw	s1,4(sp)
   19e92:	842a                	mv	s0,a0
   19e94:	85b2                	mv	a1,a2
   19e96:	853a                	mv	a0,a4
   19e98:	c606                	sw	ra,12(sp)
   19e9a:	f201a223          	sw	zero,-220(gp) # 1f8dc <errno>
   19e9e:	3f6010ef          	jal	1b294 <_fstat>
   19ea2:	57fd                	li	a5,-1
   19ea4:	00f50763          	beq	a0,a5,19eb2 <_fstat_r+0x28>
   19ea8:	40b2                	lw	ra,12(sp)
   19eaa:	4422                	lw	s0,8(sp)
   19eac:	4492                	lw	s1,4(sp)
   19eae:	0141                	addi	sp,sp,16
   19eb0:	8082                	ret
   19eb2:	f241a783          	lw	a5,-220(gp) # 1f8dc <errno>
   19eb6:	dbed                	beqz	a5,19ea8 <_fstat_r+0x1e>
   19eb8:	40b2                	lw	ra,12(sp)
   19eba:	c01c                	sw	a5,0(s0)
   19ebc:	4422                	lw	s0,8(sp)
   19ebe:	4492                	lw	s1,4(sp)
   19ec0:	0141                	addi	sp,sp,16
   19ec2:	8082                	ret

00019ec4 <_isatty_r>:
   19ec4:	1141                	addi	sp,sp,-16
   19ec6:	c422                	sw	s0,8(sp)
   19ec8:	c226                	sw	s1,4(sp)
   19eca:	842a                	mv	s0,a0
   19ecc:	852e                	mv	a0,a1
   19ece:	c606                	sw	ra,12(sp)
   19ed0:	f201a223          	sw	zero,-220(gp) # 1f8dc <errno>
   19ed4:	3fe010ef          	jal	1b2d2 <_isatty>
   19ed8:	57fd                	li	a5,-1
   19eda:	00f50763          	beq	a0,a5,19ee8 <_isatty_r+0x24>
   19ede:	40b2                	lw	ra,12(sp)
   19ee0:	4422                	lw	s0,8(sp)
   19ee2:	4492                	lw	s1,4(sp)
   19ee4:	0141                	addi	sp,sp,16
   19ee6:	8082                	ret
   19ee8:	f241a783          	lw	a5,-220(gp) # 1f8dc <errno>
   19eec:	dbed                	beqz	a5,19ede <_isatty_r+0x1a>
   19eee:	40b2                	lw	ra,12(sp)
   19ef0:	c01c                	sw	a5,0(s0)
   19ef2:	4422                	lw	s0,8(sp)
   19ef4:	4492                	lw	s1,4(sp)
   19ef6:	0141                	addi	sp,sp,16
   19ef8:	8082                	ret

00019efa <strcmp>:
   19efa:	00b56733          	or	a4,a0,a1
   19efe:	53fd                	li	t2,-1
   19f00:	8b0d                	andi	a4,a4,3
   19f02:	e779                	bnez	a4,19fd0 <strcmp+0xd6>
   19f04:	7f7f87b7          	lui	a5,0x7f7f8
   19f08:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d837b>
   19f0c:	4110                	lw	a2,0(a0)
   19f0e:	4194                	lw	a3,0(a1)
   19f10:	00f672b3          	and	t0,a2,a5
   19f14:	00f66333          	or	t1,a2,a5
   19f18:	92be                	add	t0,t0,a5
   19f1a:	0062e2b3          	or	t0,t0,t1
   19f1e:	0c729763          	bne	t0,t2,19fec <strcmp+0xf2>
   19f22:	06d61863          	bne	a2,a3,19f92 <strcmp+0x98>
   19f26:	4150                	lw	a2,4(a0)
   19f28:	41d4                	lw	a3,4(a1)
   19f2a:	00f672b3          	and	t0,a2,a5
   19f2e:	00f66333          	or	t1,a2,a5
   19f32:	92be                	add	t0,t0,a5
   19f34:	0062e2b3          	or	t0,t0,t1
   19f38:	0a729863          	bne	t0,t2,19fe8 <strcmp+0xee>
   19f3c:	04d61b63          	bne	a2,a3,19f92 <strcmp+0x98>
   19f40:	4510                	lw	a2,8(a0)
   19f42:	4594                	lw	a3,8(a1)
   19f44:	00f672b3          	and	t0,a2,a5
   19f48:	00f66333          	or	t1,a2,a5
   19f4c:	92be                	add	t0,t0,a5
   19f4e:	0062e2b3          	or	t0,t0,t1
   19f52:	0a729163          	bne	t0,t2,19ff4 <strcmp+0xfa>
   19f56:	02d61e63          	bne	a2,a3,19f92 <strcmp+0x98>
   19f5a:	4550                	lw	a2,12(a0)
   19f5c:	45d4                	lw	a3,12(a1)
   19f5e:	00f672b3          	and	t0,a2,a5
   19f62:	00f66333          	or	t1,a2,a5
   19f66:	92be                	add	t0,t0,a5
   19f68:	0062e2b3          	or	t0,t0,t1
   19f6c:	08729a63          	bne	t0,t2,1a000 <strcmp+0x106>
   19f70:	02d61163          	bne	a2,a3,19f92 <strcmp+0x98>
   19f74:	4910                	lw	a2,16(a0)
   19f76:	4994                	lw	a3,16(a1)
   19f78:	00f672b3          	and	t0,a2,a5
   19f7c:	00f66333          	or	t1,a2,a5
   19f80:	92be                	add	t0,t0,a5
   19f82:	0062e2b3          	or	t0,t0,t1
   19f86:	08729363          	bne	t0,t2,1a00c <strcmp+0x112>
   19f8a:	0551                	addi	a0,a0,20
   19f8c:	05d1                	addi	a1,a1,20
   19f8e:	f6d60fe3          	beq	a2,a3,19f0c <strcmp+0x12>
   19f92:	01061713          	slli	a4,a2,0x10
   19f96:	01069793          	slli	a5,a3,0x10
   19f9a:	00f71c63          	bne	a4,a5,19fb2 <strcmp+0xb8>
   19f9e:	01065713          	srli	a4,a2,0x10
   19fa2:	0106d793          	srli	a5,a3,0x10
   19fa6:	40f70533          	sub	a0,a4,a5
   19faa:	0ff57593          	zext.b	a1,a0
   19fae:	e991                	bnez	a1,19fc2 <strcmp+0xc8>
   19fb0:	8082                	ret
   19fb2:	8341                	srli	a4,a4,0x10
   19fb4:	83c1                	srli	a5,a5,0x10
   19fb6:	40f70533          	sub	a0,a4,a5
   19fba:	0ff57593          	zext.b	a1,a0
   19fbe:	e191                	bnez	a1,19fc2 <strcmp+0xc8>
   19fc0:	8082                	ret
   19fc2:	0ff77713          	zext.b	a4,a4
   19fc6:	0ff7f793          	zext.b	a5,a5
   19fca:	40f70533          	sub	a0,a4,a5
   19fce:	8082                	ret
   19fd0:	00054603          	lbu	a2,0(a0)
   19fd4:	0005c683          	lbu	a3,0(a1)
   19fd8:	0505                	addi	a0,a0,1
   19fda:	0585                	addi	a1,a1,1
   19fdc:	00d61363          	bne	a2,a3,19fe2 <strcmp+0xe8>
   19fe0:	fa65                	bnez	a2,19fd0 <strcmp+0xd6>
   19fe2:	40d60533          	sub	a0,a2,a3
   19fe6:	8082                	ret
   19fe8:	0511                	addi	a0,a0,4
   19fea:	0591                	addi	a1,a1,4
   19fec:	fed612e3          	bne	a2,a3,19fd0 <strcmp+0xd6>
   19ff0:	4501                	li	a0,0
   19ff2:	8082                	ret
   19ff4:	0521                	addi	a0,a0,8
   19ff6:	05a1                	addi	a1,a1,8
   19ff8:	fcd61ce3          	bne	a2,a3,19fd0 <strcmp+0xd6>
   19ffc:	4501                	li	a0,0
   19ffe:	8082                	ret
   1a000:	0531                	addi	a0,a0,12
   1a002:	05b1                	addi	a1,a1,12
   1a004:	fcd616e3          	bne	a2,a3,19fd0 <strcmp+0xd6>
   1a008:	4501                	li	a0,0
   1a00a:	8082                	ret
   1a00c:	0541                	addi	a0,a0,16
   1a00e:	05c1                	addi	a1,a1,16
   1a010:	fcd610e3          	bne	a2,a3,19fd0 <strcmp+0xd6>
   1a014:	4501                	li	a0,0
   1a016:	8082                	ret

0001a018 <__assert_func>:
   1a018:	f141a703          	lw	a4,-236(gp) # 1f8cc <_impure_ptr>
   1a01c:	1141                	addi	sp,sp,-16
   1a01e:	87b6                	mv	a5,a3
   1a020:	8832                	mv	a6,a2
   1a022:	c606                	sw	ra,12(sp)
   1a024:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffde408>
   1a028:	86aa                	mv	a3,a0
   1a02a:	872e                	mv	a4,a1
   1a02c:	863e                	mv	a2,a5
   1a02e:	00080c63          	beqz	a6,1a046 <__assert_func+0x2e>
   1a032:	67f9                	lui	a5,0x1e
   1a034:	a7c78793          	addi	a5,a5,-1412 # 1da7c <__clzsi2+0x1a8>
   1a038:	65f9                	lui	a1,0x1e
   1a03a:	a8c58593          	addi	a1,a1,-1396 # 1da8c <__clzsi2+0x1b8>
   1a03e:	8546                	mv	a0,a7
   1a040:	22b9                	jal	1a18e <fiprintf>
   1a042:	68f000ef          	jal	1aed0 <abort>
   1a046:	6879                	lui	a6,0x1e
   1a048:	a8880793          	addi	a5,a6,-1400 # 1da88 <__clzsi2+0x1b4>
   1a04c:	a8880813          	addi	a6,a6,-1400
   1a050:	b7e5                	j	1a038 <__assert_func+0x20>

0001a052 <__assert>:
   1a052:	1141                	addi	sp,sp,-16
   1a054:	86b2                	mv	a3,a2
   1a056:	4601                	li	a2,0
   1a058:	c606                	sw	ra,12(sp)
   1a05a:	3f7d                	jal	1a018 <__assert_func>

0001a05c <_calloc_r>:
   1a05c:	02c5b7b3          	mulhu	a5,a1,a2
   1a060:	1141                	addi	sp,sp,-16
   1a062:	c606                	sw	ra,12(sp)
   1a064:	c422                	sw	s0,8(sp)
   1a066:	02c585b3          	mul	a1,a1,a2
   1a06a:	efa5                	bnez	a5,1a0e2 <_calloc_r+0x86>
   1a06c:	f18fa0ef          	jal	14784 <_malloc_r>
   1a070:	842a                	mv	s0,a0
   1a072:	cd25                	beqz	a0,1a0ea <_calloc_r+0x8e>
   1a074:	ffc52603          	lw	a2,-4(a0)
   1a078:	02400713          	li	a4,36
   1a07c:	9a71                	andi	a2,a2,-4
   1a07e:	1671                	addi	a2,a2,-4
   1a080:	04c76063          	bltu	a4,a2,1a0c0 <_calloc_r+0x64>
   1a084:	46cd                	li	a3,19
   1a086:	87aa                	mv	a5,a0
   1a088:	02c6f163          	bgeu	a3,a2,1a0aa <_calloc_r+0x4e>
   1a08c:	00052023          	sw	zero,0(a0)
   1a090:	00052223          	sw	zero,4(a0)
   1a094:	47ed                	li	a5,27
   1a096:	02c7fd63          	bgeu	a5,a2,1a0d0 <_calloc_r+0x74>
   1a09a:	00052423          	sw	zero,8(a0)
   1a09e:	00052623          	sw	zero,12(a0)
   1a0a2:	01050793          	addi	a5,a0,16
   1a0a6:	04e60863          	beq	a2,a4,1a0f6 <_calloc_r+0x9a>
   1a0aa:	0007a023          	sw	zero,0(a5)
   1a0ae:	0007a223          	sw	zero,4(a5)
   1a0b2:	0007a423          	sw	zero,8(a5)
   1a0b6:	40b2                	lw	ra,12(sp)
   1a0b8:	8522                	mv	a0,s0
   1a0ba:	4422                	lw	s0,8(sp)
   1a0bc:	0141                	addi	sp,sp,16
   1a0be:	8082                	ret
   1a0c0:	4581                	li	a1,0
   1a0c2:	a4afa0ef          	jal	1430c <memset>
   1a0c6:	40b2                	lw	ra,12(sp)
   1a0c8:	8522                	mv	a0,s0
   1a0ca:	4422                	lw	s0,8(sp)
   1a0cc:	0141                	addi	sp,sp,16
   1a0ce:	8082                	ret
   1a0d0:	00850793          	addi	a5,a0,8
   1a0d4:	0007a023          	sw	zero,0(a5)
   1a0d8:	0007a223          	sw	zero,4(a5)
   1a0dc:	0007a423          	sw	zero,8(a5)
   1a0e0:	bfd9                	j	1a0b6 <_calloc_r+0x5a>
   1a0e2:	5e9000ef          	jal	1aeca <__errno>
   1a0e6:	47b1                	li	a5,12
   1a0e8:	c11c                	sw	a5,0(a0)
   1a0ea:	4401                	li	s0,0
   1a0ec:	40b2                	lw	ra,12(sp)
   1a0ee:	8522                	mv	a0,s0
   1a0f0:	4422                	lw	s0,8(sp)
   1a0f2:	0141                	addi	sp,sp,16
   1a0f4:	8082                	ret
   1a0f6:	00052823          	sw	zero,16(a0)
   1a0fa:	01850793          	addi	a5,a0,24
   1a0fe:	00052a23          	sw	zero,20(a0)
   1a102:	b765                	j	1a0aa <_calloc_r+0x4e>

0001a104 <_mbtowc_r>:
   1a104:	e1c1a783          	lw	a5,-484(gp) # 1f7d4 <__global_locale+0xe4>
   1a108:	8782                	jr	a5

0001a10a <__ascii_mbtowc>:
   1a10a:	c999                	beqz	a1,1a120 <__ascii_mbtowc+0x16>
   1a10c:	c61d                	beqz	a2,1a13a <__ascii_mbtowc+0x30>
   1a10e:	ca95                	beqz	a3,1a142 <__ascii_mbtowc+0x38>
   1a110:	00064783          	lbu	a5,0(a2)
   1a114:	c19c                	sw	a5,0(a1)
   1a116:	00064503          	lbu	a0,0(a2)
   1a11a:	00a03533          	snez	a0,a0
   1a11e:	8082                	ret
   1a120:	1141                	addi	sp,sp,-16
   1a122:	006c                	addi	a1,sp,12
   1a124:	ce09                	beqz	a2,1a13e <__ascii_mbtowc+0x34>
   1a126:	c285                	beqz	a3,1a146 <__ascii_mbtowc+0x3c>
   1a128:	00064783          	lbu	a5,0(a2)
   1a12c:	c19c                	sw	a5,0(a1)
   1a12e:	00064503          	lbu	a0,0(a2)
   1a132:	00a03533          	snez	a0,a0
   1a136:	0141                	addi	sp,sp,16
   1a138:	8082                	ret
   1a13a:	4501                	li	a0,0
   1a13c:	8082                	ret
   1a13e:	4501                	li	a0,0
   1a140:	bfdd                	j	1a136 <__ascii_mbtowc+0x2c>
   1a142:	5579                	li	a0,-2
   1a144:	8082                	ret
   1a146:	5579                	li	a0,-2
   1a148:	b7fd                	j	1a136 <__ascii_mbtowc+0x2c>

0001a14a <_wctomb_r>:
   1a14a:	e181a783          	lw	a5,-488(gp) # 1f7d0 <__global_locale+0xe0>
   1a14e:	8782                	jr	a5

0001a150 <__ascii_wctomb>:
   1a150:	cd91                	beqz	a1,1a16c <__ascii_wctomb+0x1c>
   1a152:	0ff00793          	li	a5,255
   1a156:	00c7e663          	bltu	a5,a2,1a162 <__ascii_wctomb+0x12>
   1a15a:	00c58023          	sb	a2,0(a1)
   1a15e:	4505                	li	a0,1
   1a160:	8082                	ret
   1a162:	08a00793          	li	a5,138
   1a166:	c11c                	sw	a5,0(a0)
   1a168:	557d                	li	a0,-1
   1a16a:	8082                	ret
   1a16c:	4501                	li	a0,0
   1a16e:	8082                	ret

0001a170 <_fiprintf_r>:
   1a170:	7139                	addi	sp,sp,-64
   1a172:	02c10313          	addi	t1,sp,44
   1a176:	d636                	sw	a3,44(sp)
   1a178:	869a                	mv	a3,t1
   1a17a:	ce06                	sw	ra,28(sp)
   1a17c:	d83a                	sw	a4,48(sp)
   1a17e:	da3e                	sw	a5,52(sp)
   1a180:	dc42                	sw	a6,56(sp)
   1a182:	de46                	sw	a7,60(sp)
   1a184:	c61a                	sw	t1,12(sp)
   1a186:	280d                	jal	1a1b8 <_vfiprintf_r>
   1a188:	40f2                	lw	ra,28(sp)
   1a18a:	6121                	addi	sp,sp,64
   1a18c:	8082                	ret

0001a18e <fiprintf>:
   1a18e:	8e2a                	mv	t3,a0
   1a190:	7139                	addi	sp,sp,-64
   1a192:	f141a503          	lw	a0,-236(gp) # 1f8cc <_impure_ptr>
   1a196:	02810313          	addi	t1,sp,40
   1a19a:	d432                	sw	a2,40(sp)
   1a19c:	d636                	sw	a3,44(sp)
   1a19e:	862e                	mv	a2,a1
   1a1a0:	869a                	mv	a3,t1
   1a1a2:	85f2                	mv	a1,t3
   1a1a4:	ce06                	sw	ra,28(sp)
   1a1a6:	d83a                	sw	a4,48(sp)
   1a1a8:	da3e                	sw	a5,52(sp)
   1a1aa:	dc42                	sw	a6,56(sp)
   1a1ac:	de46                	sw	a7,60(sp)
   1a1ae:	c61a                	sw	t1,12(sp)
   1a1b0:	2021                	jal	1a1b8 <_vfiprintf_r>
   1a1b2:	40f2                	lw	ra,28(sp)
   1a1b4:	6121                	addi	sp,sp,64
   1a1b6:	8082                	ret

0001a1b8 <_vfiprintf_r>:
   1a1b8:	7169                	addi	sp,sp,-304
   1a1ba:	11312e23          	sw	s3,284(sp)
   1a1be:	11512a23          	sw	s5,276(sp)
   1a1c2:	11612823          	sw	s6,272(sp)
   1a1c6:	11712623          	sw	s7,268(sp)
   1a1ca:	12112623          	sw	ra,300(sp)
   1a1ce:	11a12023          	sw	s10,256(sp)
   1a1d2:	8baa                	mv	s7,a0
   1a1d4:	8aae                	mv	s5,a1
   1a1d6:	89b2                	mv	s3,a2
   1a1d8:	8b36                	mv	s6,a3
   1a1da:	c501                	beqz	a0,1a1e2 <_vfiprintf_r+0x2a>
   1a1dc:	595c                	lw	a5,52(a0)
   1a1de:	300783e3          	beqz	a5,1ace4 <_vfiprintf_r+0xb2c>
   1a1e2:	00ca9703          	lh	a4,12(s5)
   1a1e6:	064aa783          	lw	a5,100(s5)
   1a1ea:	01271693          	slli	a3,a4,0x12
   1a1ee:	0006cb63          	bltz	a3,1a204 <_vfiprintf_r+0x4c>
   1a1f2:	76f9                	lui	a3,0xffffe
   1a1f4:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffde3fb>
   1a1f6:	6609                	lui	a2,0x2
   1a1f8:	8f51                	or	a4,a4,a2
   1a1fa:	8ff5                	and	a5,a5,a3
   1a1fc:	00ea9623          	sh	a4,12(s5)
   1a200:	06faa223          	sw	a5,100(s5)
   1a204:	01279713          	slli	a4,a5,0x12
   1a208:	400740e3          	bltz	a4,1ae08 <_vfiprintf_r+0xc50>
   1a20c:	00ca9783          	lh	a5,12(s5)
   1a210:	0087f713          	andi	a4,a5,8
   1a214:	22070363          	beqz	a4,1a43a <_vfiprintf_r+0x282>
   1a218:	010aa703          	lw	a4,16(s5)
   1a21c:	20070f63          	beqz	a4,1a43a <_vfiprintf_r+0x282>
   1a220:	8be9                	andi	a5,a5,26
   1a222:	4729                	li	a4,10
   1a224:	22e78763          	beq	a5,a4,1a452 <_vfiprintf_r+0x29a>
   1a228:	67f9                	lui	a5,0x1e
   1a22a:	4d01                	li	s10,0
   1a22c:	11812423          	sw	s8,264(sp)
   1a230:	11912223          	sw	s9,260(sp)
   1a234:	04c10c13          	addi	s8,sp,76
   1a238:	f1c78793          	addi	a5,a5,-228 # 1df1c <_ctype_+0x104>
   1a23c:	6cf9                	lui	s9,0x1e
   1a23e:	12812423          	sw	s0,296(sp)
   1a242:	13212023          	sw	s2,288(sp)
   1a246:	11412c23          	sw	s4,280(sp)
   1a24a:	896a                	mv	s2,s10
   1a24c:	12912223          	sw	s1,292(sp)
   1a250:	dfee                	sw	s11,252(sp)
   1a252:	c0e2                	sw	s8,64(sp)
   1a254:	c482                	sw	zero,72(sp)
   1a256:	c282                	sw	zero,68(sp)
   1a258:	8462                	mv	s0,s8
   1a25a:	c202                	sw	zero,4(sp)
   1a25c:	ca02                	sw	zero,20(sp)
   1a25e:	cc02                	sw	zero,24(sp)
   1a260:	ce02                	sw	zero,28(sp)
   1a262:	c03e                	sw	a5,0(sp)
   1a264:	4a41                	li	s4,16
   1a266:	088c8c93          	addi	s9,s9,136 # 1e088 <zeroes.0>
   1a26a:	8d5a                	mv	s10,s6
   1a26c:	0009c783          	lbu	a5,0(s3)
   1a270:	14078563          	beqz	a5,1a3ba <_vfiprintf_r+0x202>
   1a274:	84ce                	mv	s1,s3
   1a276:	02500713          	li	a4,37
   1a27a:	20e78363          	beq	a5,a4,1a480 <_vfiprintf_r+0x2c8>
   1a27e:	0014c783          	lbu	a5,1(s1)
   1a282:	0485                	addi	s1,s1,1
   1a284:	fbfd                	bnez	a5,1a27a <_vfiprintf_r+0xc2>
   1a286:	41348b33          	sub	s6,s1,s3
   1a28a:	13348863          	beq	s1,s3,1a3ba <_vfiprintf_r+0x202>
   1a28e:	4726                	lw	a4,72(sp)
   1a290:	4796                	lw	a5,68(sp)
   1a292:	01342023          	sw	s3,0(s0)
   1a296:	975a                	add	a4,a4,s6
   1a298:	0785                	addi	a5,a5,1
   1a29a:	01642223          	sw	s6,4(s0)
   1a29e:	c4ba                	sw	a4,72(sp)
   1a2a0:	c2be                	sw	a5,68(sp)
   1a2a2:	471d                	li	a4,7
   1a2a4:	0421                	addi	s0,s0,8
   1a2a6:	1ef74463          	blt	a4,a5,1a48e <_vfiprintf_r+0x2d6>
   1a2aa:	0004c783          	lbu	a5,0(s1)
   1a2ae:	995a                	add	s2,s2,s6
   1a2b0:	10078563          	beqz	a5,1a3ba <_vfiprintf_r+0x202>
   1a2b4:	0014c783          	lbu	a5,1(s1)
   1a2b8:	00148993          	addi	s3,s1,1
   1a2bc:	02010da3          	sb	zero,59(sp)
   1a2c0:	5dfd                	li	s11,-1
   1a2c2:	4b01                	li	s6,0
   1a2c4:	4801                	li	a6,0
   1a2c6:	05a00493          	li	s1,90
   1a2ca:	0985                	addi	s3,s3,1
   1a2cc:	863e                	mv	a2,a5
   1a2ce:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   1a2d2:	02e4eb63          	bltu	s1,a4,1a308 <_vfiprintf_r+0x150>
   1a2d6:	4782                	lw	a5,0(sp)
   1a2d8:	070a                	slli	a4,a4,0x2
   1a2da:	973e                	add	a4,a4,a5
   1a2dc:	431c                	lw	a5,0(a4)
   1a2de:	8782                	jr	a5
   1a2e0:	4b01                	li	s6,0
   1a2e2:	fd060793          	addi	a5,a2,-48
   1a2e6:	46a5                	li	a3,9
   1a2e8:	0009c603          	lbu	a2,0(s3)
   1a2ec:	002b1713          	slli	a4,s6,0x2
   1a2f0:	9b3a                	add	s6,s6,a4
   1a2f2:	0b06                	slli	s6,s6,0x1
   1a2f4:	9b3e                	add	s6,s6,a5
   1a2f6:	fd060793          	addi	a5,a2,-48
   1a2fa:	0985                	addi	s3,s3,1
   1a2fc:	fef6f6e3          	bgeu	a3,a5,1a2e8 <_vfiprintf_r+0x130>
   1a300:	fe060713          	addi	a4,a2,-32
   1a304:	fce4f9e3          	bgeu	s1,a4,1a2d6 <_vfiprintf_r+0x11e>
   1a308:	ca4d                	beqz	a2,1a3ba <_vfiprintf_r+0x202>
   1a30a:	08c10623          	sb	a2,140(sp)
   1a30e:	02010da3          	sb	zero,59(sp)
   1a312:	4885                	li	a7,1
   1a314:	4e05                	li	t3,1
   1a316:	0164                	addi	s1,sp,140
   1a318:	4d81                	li	s11,0
   1a31a:	4281                	li	t0,0
   1a31c:	08487f93          	andi	t6,a6,132
   1a320:	4726                	lw	a4,72(sp)
   1a322:	4796                	lw	a5,68(sp)
   1a324:	000f9663          	bnez	t6,1a330 <_vfiprintf_r+0x178>
   1a328:	411b0eb3          	sub	t4,s6,a7
   1a32c:	71d04b63          	bgtz	t4,1aa42 <_vfiprintf_r+0x88a>
   1a330:	03b14603          	lbu	a2,59(sp)
   1a334:	ce11                	beqz	a2,1a350 <_vfiprintf_r+0x198>
   1a336:	03b10613          	addi	a2,sp,59
   1a33a:	c010                	sw	a2,0(s0)
   1a33c:	0785                	addi	a5,a5,1
   1a33e:	4605                	li	a2,1
   1a340:	0705                	addi	a4,a4,1
   1a342:	c050                	sw	a2,4(s0)
   1a344:	c4ba                	sw	a4,72(sp)
   1a346:	c2be                	sw	a5,68(sp)
   1a348:	461d                	li	a2,7
   1a34a:	0421                	addi	s0,s0,8
   1a34c:	1af64363          	blt	a2,a5,1a4f2 <_vfiprintf_r+0x33a>
   1a350:	00028e63          	beqz	t0,1a36c <_vfiprintf_r+0x1b4>
   1a354:	1870                	addi	a2,sp,60
   1a356:	c010                	sw	a2,0(s0)
   1a358:	0785                	addi	a5,a5,1
   1a35a:	4609                	li	a2,2
   1a35c:	0709                	addi	a4,a4,2
   1a35e:	c050                	sw	a2,4(s0)
   1a360:	c4ba                	sw	a4,72(sp)
   1a362:	c2be                	sw	a5,68(sp)
   1a364:	461d                	li	a2,7
   1a366:	0421                	addi	s0,s0,8
   1a368:	78f64663          	blt	a2,a5,1aaf4 <_vfiprintf_r+0x93c>
   1a36c:	08000613          	li	a2,128
   1a370:	52cf8a63          	beq	t6,a2,1a8a4 <_vfiprintf_r+0x6ec>
   1a374:	41cd8db3          	sub	s11,s11,t3
   1a378:	5db04d63          	bgtz	s11,1a952 <_vfiprintf_r+0x79a>
   1a37c:	9772                	add	a4,a4,t3
   1a37e:	0785                	addi	a5,a5,1
   1a380:	c004                	sw	s1,0(s0)
   1a382:	01c42223          	sw	t3,4(s0)
   1a386:	c4ba                	sw	a4,72(sp)
   1a388:	c2be                	sw	a5,68(sp)
   1a38a:	461d                	li	a2,7
   1a38c:	0421                	addi	s0,s0,8
   1a38e:	64f64e63          	blt	a2,a5,1a9ea <_vfiprintf_r+0x832>
   1a392:	00487813          	andi	a6,a6,4
   1a396:	00080663          	beqz	a6,1a3a2 <_vfiprintf_r+0x1ea>
   1a39a:	411b04b3          	sub	s1,s6,a7
   1a39e:	16904e63          	bgtz	s1,1a51a <_vfiprintf_r+0x362>
   1a3a2:	011b5363          	bge	s6,a7,1a3a8 <_vfiprintf_r+0x1f0>
   1a3a6:	8b46                	mv	s6,a7
   1a3a8:	995a                	add	s2,s2,s6
   1a3aa:	0e071a63          	bnez	a4,1a49e <_vfiprintf_r+0x2e6>
   1a3ae:	0009c783          	lbu	a5,0(s3)
   1a3b2:	c282                	sw	zero,68(sp)
   1a3b4:	8462                	mv	s0,s8
   1a3b6:	ea079fe3          	bnez	a5,1a274 <_vfiprintf_r+0xbc>
   1a3ba:	47a6                	lw	a5,72(sp)
   1a3bc:	8d4a                	mv	s10,s2
   1a3be:	0e078863          	beqz	a5,1a4ae <_vfiprintf_r+0x2f6>
   1a3c2:	0090                	addi	a2,sp,64
   1a3c4:	85d6                	mv	a1,s5
   1a3c6:	855e                	mv	a0,s7
   1a3c8:	db4fc0ef          	jal	1697c <__sprint_r>
   1a3cc:	a0cd                	j	1a4ae <_vfiprintf_r+0x2f6>
   1a3ce:	000d2b03          	lw	s6,0(s10)
   1a3d2:	0d11                	addi	s10,s10,4
   1a3d4:	280b4c63          	bltz	s6,1a66c <_vfiprintf_r+0x4b4>
   1a3d8:	0009c783          	lbu	a5,0(s3)
   1a3dc:	b5fd                	j	1a2ca <_vfiprintf_r+0x112>
   1a3de:	0009c783          	lbu	a5,0(s3)
   1a3e2:	02086813          	ori	a6,a6,32
   1a3e6:	b5d5                	j	1a2ca <_vfiprintf_r+0x112>
   1a3e8:	01086813          	ori	a6,a6,16
   1a3ec:	02087793          	andi	a5,a6,32
   1a3f0:	1a078363          	beqz	a5,1a596 <_vfiprintf_r+0x3de>
   1a3f4:	0d1d                	addi	s10,s10,7
   1a3f6:	ff8d7d13          	andi	s10,s10,-8
   1a3fa:	004d2703          	lw	a4,4(s10)
   1a3fe:	000d2783          	lw	a5,0(s10)
   1a402:	0d21                	addi	s10,s10,8
   1a404:	88ba                	mv	a7,a4
   1a406:	1a074863          	bltz	a4,1a5b6 <_vfiprintf_r+0x3fe>
   1a40a:	1c0dc663          	bltz	s11,1a5d6 <_vfiprintf_r+0x41e>
   1a40e:	0117e733          	or	a4,a5,a7
   1a412:	f7f87813          	andi	a6,a6,-129
   1a416:	1c071063          	bnez	a4,1a5d6 <_vfiprintf_r+0x41e>
   1a41a:	1e0d93e3          	bnez	s11,1ae00 <_vfiprintf_r+0xc48>
   1a41e:	03b14783          	lbu	a5,59(sp)
   1a422:	4881                	li	a7,0
   1a424:	4e01                	li	t3,0
   1a426:	1984                	addi	s1,sp,240
   1a428:	c391                	beqz	a5,1a42c <_vfiprintf_r+0x274>
   1a42a:	0885                	addi	a7,a7,1
   1a42c:	00287293          	andi	t0,a6,2
   1a430:	ee0286e3          	beqz	t0,1a31c <_vfiprintf_r+0x164>
   1a434:	0889                	addi	a7,a7,2
   1a436:	4289                	li	t0,2
   1a438:	b5d5                	j	1a31c <_vfiprintf_r+0x164>
   1a43a:	85d6                	mv	a1,s5
   1a43c:	855e                	mv	a0,s7
   1a43e:	d2bfc0ef          	jal	17168 <__swsetup_r>
   1a442:	1c0513e3          	bnez	a0,1ae08 <_vfiprintf_r+0xc50>
   1a446:	00ca9783          	lh	a5,12(s5)
   1a44a:	4729                	li	a4,10
   1a44c:	8be9                	andi	a5,a5,26
   1a44e:	dce79de3          	bne	a5,a4,1a228 <_vfiprintf_r+0x70>
   1a452:	00ea9783          	lh	a5,14(s5)
   1a456:	dc07c9e3          	bltz	a5,1a228 <_vfiprintf_r+0x70>
   1a45a:	12c12083          	lw	ra,300(sp)
   1a45e:	10012d03          	lw	s10,256(sp)
   1a462:	86da                	mv	a3,s6
   1a464:	864e                	mv	a2,s3
   1a466:	11012b03          	lw	s6,272(sp)
   1a46a:	11c12983          	lw	s3,284(sp)
   1a46e:	85d6                	mv	a1,s5
   1a470:	855e                	mv	a0,s7
   1a472:	11412a83          	lw	s5,276(sp)
   1a476:	10c12b83          	lw	s7,268(sp)
   1a47a:	6155                	addi	sp,sp,304
   1a47c:	1b90006f          	j	1ae34 <__sbprintf>
   1a480:	41348b33          	sub	s6,s1,s3
   1a484:	e13495e3          	bne	s1,s3,1a28e <_vfiprintf_r+0xd6>
   1a488:	0004c783          	lbu	a5,0(s1)
   1a48c:	b515                	j	1a2b0 <_vfiprintf_r+0xf8>
   1a48e:	0090                	addi	a2,sp,64
   1a490:	85d6                	mv	a1,s5
   1a492:	855e                	mv	a0,s7
   1a494:	ce8fc0ef          	jal	1697c <__sprint_r>
   1a498:	e911                	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a49a:	8462                	mv	s0,s8
   1a49c:	b539                	j	1a2aa <_vfiprintf_r+0xf2>
   1a49e:	0090                	addi	a2,sp,64
   1a4a0:	85d6                	mv	a1,s5
   1a4a2:	855e                	mv	a0,s7
   1a4a4:	cd8fc0ef          	jal	1697c <__sprint_r>
   1a4a8:	f00503e3          	beqz	a0,1a3ae <_vfiprintf_r+0x1f6>
   1a4ac:	8d4a                	mv	s10,s2
   1a4ae:	00cad783          	lhu	a5,12(s5)
   1a4b2:	12812403          	lw	s0,296(sp)
   1a4b6:	12412483          	lw	s1,292(sp)
   1a4ba:	0407f793          	andi	a5,a5,64
   1a4be:	12012903          	lw	s2,288(sp)
   1a4c2:	11812a03          	lw	s4,280(sp)
   1a4c6:	10812c03          	lw	s8,264(sp)
   1a4ca:	10412c83          	lw	s9,260(sp)
   1a4ce:	5dfe                	lw	s11,252(sp)
   1a4d0:	12079ce3          	bnez	a5,1ae08 <_vfiprintf_r+0xc50>
   1a4d4:	12c12083          	lw	ra,300(sp)
   1a4d8:	11c12983          	lw	s3,284(sp)
   1a4dc:	11412a83          	lw	s5,276(sp)
   1a4e0:	11012b03          	lw	s6,272(sp)
   1a4e4:	10c12b83          	lw	s7,268(sp)
   1a4e8:	856a                	mv	a0,s10
   1a4ea:	10012d03          	lw	s10,256(sp)
   1a4ee:	6155                	addi	sp,sp,304
   1a4f0:	8082                	ret
   1a4f2:	0090                	addi	a2,sp,64
   1a4f4:	85d6                	mv	a1,s5
   1a4f6:	855e                	mv	a0,s7
   1a4f8:	d246                	sw	a7,36(sp)
   1a4fa:	d072                	sw	t3,32(sp)
   1a4fc:	c842                	sw	a6,16(sp)
   1a4fe:	c67e                	sw	t6,12(sp)
   1a500:	c416                	sw	t0,8(sp)
   1a502:	c7afc0ef          	jal	1697c <__sprint_r>
   1a506:	f15d                	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a508:	4726                	lw	a4,72(sp)
   1a50a:	4796                	lw	a5,68(sp)
   1a50c:	5892                	lw	a7,36(sp)
   1a50e:	5e02                	lw	t3,32(sp)
   1a510:	4842                	lw	a6,16(sp)
   1a512:	4fb2                	lw	t6,12(sp)
   1a514:	42a2                	lw	t0,8(sp)
   1a516:	8462                	mv	s0,s8
   1a518:	bd25                	j	1a350 <_vfiprintf_r+0x198>
   1a51a:	6379                	lui	t1,0x1e
   1a51c:	4641                	li	a2,16
   1a51e:	4796                	lw	a5,68(sp)
   1a520:	09830313          	addi	t1,t1,152 # 1e098 <blanks.1>
   1a524:	04965563          	bge	a2,s1,1a56e <_vfiprintf_r+0x3b6>
   1a528:	86a2                	mv	a3,s0
   1a52a:	4dc1                	li	s11,16
   1a52c:	481d                	li	a6,7
   1a52e:	c446                	sw	a7,8(sp)
   1a530:	841a                	mv	s0,t1
   1a532:	a021                	j	1a53a <_vfiprintf_r+0x382>
   1a534:	14c1                	addi	s1,s1,-16
   1a536:	029dd963          	bge	s11,s1,1a568 <_vfiprintf_r+0x3b0>
   1a53a:	0741                	addi	a4,a4,16
   1a53c:	0785                	addi	a5,a5,1
   1a53e:	c280                	sw	s0,0(a3)
   1a540:	01b6a223          	sw	s11,4(a3)
   1a544:	c4ba                	sw	a4,72(sp)
   1a546:	c2be                	sw	a5,68(sp)
   1a548:	06a1                	addi	a3,a3,8
   1a54a:	fef855e3          	bge	a6,a5,1a534 <_vfiprintf_r+0x37c>
   1a54e:	0090                	addi	a2,sp,64
   1a550:	85d6                	mv	a1,s5
   1a552:	855e                	mv	a0,s7
   1a554:	c28fc0ef          	jal	1697c <__sprint_r>
   1a558:	f931                	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a55a:	14c1                	addi	s1,s1,-16
   1a55c:	4726                	lw	a4,72(sp)
   1a55e:	4796                	lw	a5,68(sp)
   1a560:	86e2                	mv	a3,s8
   1a562:	481d                	li	a6,7
   1a564:	fc9dcbe3          	blt	s11,s1,1a53a <_vfiprintf_r+0x382>
   1a568:	48a2                	lw	a7,8(sp)
   1a56a:	8322                	mv	t1,s0
   1a56c:	8436                	mv	s0,a3
   1a56e:	9726                	add	a4,a4,s1
   1a570:	0785                	addi	a5,a5,1
   1a572:	00642023          	sw	t1,0(s0)
   1a576:	c044                	sw	s1,4(s0)
   1a578:	c4ba                	sw	a4,72(sp)
   1a57a:	c2be                	sw	a5,68(sp)
   1a57c:	461d                	li	a2,7
   1a57e:	e2f652e3          	bge	a2,a5,1a3a2 <_vfiprintf_r+0x1ea>
   1a582:	0090                	addi	a2,sp,64
   1a584:	85d6                	mv	a1,s5
   1a586:	855e                	mv	a0,s7
   1a588:	c446                	sw	a7,8(sp)
   1a58a:	bf2fc0ef          	jal	1697c <__sprint_r>
   1a58e:	fd19                	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a590:	4726                	lw	a4,72(sp)
   1a592:	48a2                	lw	a7,8(sp)
   1a594:	b539                	j	1a3a2 <_vfiprintf_r+0x1ea>
   1a596:	01087713          	andi	a4,a6,16
   1a59a:	000d2783          	lw	a5,0(s10)
   1a59e:	0d11                	addi	s10,s10,4
   1a5a0:	e371                	bnez	a4,1a664 <_vfiprintf_r+0x4ac>
   1a5a2:	04087713          	andi	a4,a6,64
   1a5a6:	cb5d                	beqz	a4,1a65c <_vfiprintf_r+0x4a4>
   1a5a8:	07c2                	slli	a5,a5,0x10
   1a5aa:	87c1                	srai	a5,a5,0x10
   1a5ac:	41f7d893          	srai	a7,a5,0x1f
   1a5b0:	8746                	mv	a4,a7
   1a5b2:	e4075ce3          	bgez	a4,1a40a <_vfiprintf_r+0x252>
   1a5b6:	02d00613          	li	a2,45
   1a5ba:	00f03733          	snez	a4,a5
   1a5be:	411008b3          	neg	a7,a7
   1a5c2:	02c10da3          	sb	a2,59(sp)
   1a5c6:	40e888b3          	sub	a7,a7,a4
   1a5ca:	40f007b3          	neg	a5,a5
   1a5ce:	000dc463          	bltz	s11,1a5d6 <_vfiprintf_r+0x41e>
   1a5d2:	f7f87813          	andi	a6,a6,-129
   1a5d6:	62089c63          	bnez	a7,1ac0e <_vfiprintf_r+0xa56>
   1a5da:	4725                	li	a4,9
   1a5dc:	62f76963          	bltu	a4,a5,1ac0e <_vfiprintf_r+0xa56>
   1a5e0:	03078793          	addi	a5,a5,48
   1a5e4:	0ff7f793          	zext.b	a5,a5
   1a5e8:	0ef107a3          	sb	a5,239(sp)
   1a5ec:	88ee                	mv	a7,s11
   1a5ee:	01b04363          	bgtz	s11,1a5f4 <_vfiprintf_r+0x43c>
   1a5f2:	4885                	li	a7,1
   1a5f4:	4e05                	li	t3,1
   1a5f6:	0ef10493          	addi	s1,sp,239
   1a5fa:	03b14783          	lbu	a5,59(sp)
   1a5fe:	e20796e3          	bnez	a5,1a42a <_vfiprintf_r+0x272>
   1a602:	b52d                	j	1a42c <_vfiprintf_r+0x274>
   1a604:	000d2483          	lw	s1,0(s10)
   1a608:	02010da3          	sb	zero,59(sp)
   1a60c:	0d11                	addi	s10,s10,4
   1a60e:	70048463          	beqz	s1,1ad16 <_vfiprintf_r+0xb5e>
   1a612:	c442                	sw	a6,8(sp)
   1a614:	5e0dc163          	bltz	s11,1abf6 <_vfiprintf_r+0xa3e>
   1a618:	866e                	mv	a2,s11
   1a61a:	4581                	li	a1,0
   1a61c:	8526                	mv	a0,s1
   1a61e:	c25fc0ef          	jal	17242 <memchr>
   1a622:	4822                	lw	a6,8(sp)
   1a624:	8e6e                	mv	t3,s11
   1a626:	c119                	beqz	a0,1a62c <_vfiprintf_r+0x474>
   1a628:	40950e33          	sub	t3,a0,s1
   1a62c:	03b14783          	lbu	a5,59(sp)
   1a630:	fffe4893          	not	a7,t3
   1a634:	41f8d893          	srai	a7,a7,0x1f
   1a638:	011e78b3          	and	a7,t3,a7
   1a63c:	4d81                	li	s11,0
   1a63e:	4281                	li	t0,0
   1a640:	de0795e3          	bnez	a5,1a42a <_vfiprintf_r+0x272>
   1a644:	b9e1                	j	1a31c <_vfiprintf_r+0x164>
   1a646:	000d2783          	lw	a5,0(s10)
   1a64a:	02010da3          	sb	zero,59(sp)
   1a64e:	0d11                	addi	s10,s10,4
   1a650:	08f10623          	sb	a5,140(sp)
   1a654:	4885                	li	a7,1
   1a656:	4e05                	li	t3,1
   1a658:	0164                	addi	s1,sp,140
   1a65a:	b97d                	j	1a318 <_vfiprintf_r+0x160>
   1a65c:	20087713          	andi	a4,a6,512
   1a660:	76071e63          	bnez	a4,1addc <_vfiprintf_r+0xc24>
   1a664:	41f7d893          	srai	a7,a5,0x1f
   1a668:	8746                	mv	a4,a7
   1a66a:	bb71                	j	1a406 <_vfiprintf_r+0x24e>
   1a66c:	41600b33          	neg	s6,s6
   1a670:	0009c783          	lbu	a5,0(s3)
   1a674:	00486813          	ori	a6,a6,4
   1a678:	b989                	j	1a2ca <_vfiprintf_r+0x112>
   1a67a:	02b00713          	li	a4,43
   1a67e:	0009c783          	lbu	a5,0(s3)
   1a682:	02e10da3          	sb	a4,59(sp)
   1a686:	b191                	j	1a2ca <_vfiprintf_r+0x112>
   1a688:	0009c783          	lbu	a5,0(s3)
   1a68c:	08086813          	ori	a6,a6,128
   1a690:	b92d                	j	1a2ca <_vfiprintf_r+0x112>
   1a692:	0009c603          	lbu	a2,0(s3)
   1a696:	02a00793          	li	a5,42
   1a69a:	00198693          	addi	a3,s3,1
   1a69e:	76f60863          	beq	a2,a5,1ae0e <_vfiprintf_r+0xc56>
   1a6a2:	fd060793          	addi	a5,a2,-48
   1a6a6:	4725                	li	a4,9
   1a6a8:	4d81                	li	s11,0
   1a6aa:	45a5                	li	a1,9
   1a6ac:	02f76063          	bltu	a4,a5,1a6cc <_vfiprintf_r+0x514>
   1a6b0:	0006c603          	lbu	a2,0(a3)
   1a6b4:	002d9713          	slli	a4,s11,0x2
   1a6b8:	9dba                	add	s11,s11,a4
   1a6ba:	0d86                	slli	s11,s11,0x1
   1a6bc:	9dbe                	add	s11,s11,a5
   1a6be:	fd060793          	addi	a5,a2,-48
   1a6c2:	0685                	addi	a3,a3,1
   1a6c4:	fef5f6e3          	bgeu	a1,a5,1a6b0 <_vfiprintf_r+0x4f8>
   1a6c8:	4a0dcb63          	bltz	s11,1ab7e <_vfiprintf_r+0x9c6>
   1a6cc:	89b6                	mv	s3,a3
   1a6ce:	b101                	j	1a2ce <_vfiprintf_r+0x116>
   1a6d0:	855e                	mv	a0,s7
   1a6d2:	c442                	sw	a6,8(sp)
   1a6d4:	c7dfc0ef          	jal	17350 <_localeconv_r>
   1a6d8:	415c                	lw	a5,4(a0)
   1a6da:	853e                	mv	a0,a5
   1a6dc:	ce3e                	sw	a5,28(sp)
   1a6de:	efffc0ef          	jal	175dc <strlen>
   1a6e2:	87aa                	mv	a5,a0
   1a6e4:	855e                	mv	a0,s7
   1a6e6:	cc3e                	sw	a5,24(sp)
   1a6e8:	c69fc0ef          	jal	17350 <_localeconv_r>
   1a6ec:	4518                	lw	a4,8(a0)
   1a6ee:	47e2                	lw	a5,24(sp)
   1a6f0:	4822                	lw	a6,8(sp)
   1a6f2:	ca3a                	sw	a4,20(sp)
   1a6f4:	ce0782e3          	beqz	a5,1a3d8 <_vfiprintf_r+0x220>
   1a6f8:	4752                	lw	a4,20(sp)
   1a6fa:	0009c783          	lbu	a5,0(s3)
   1a6fe:	bc0706e3          	beqz	a4,1a2ca <_vfiprintf_r+0x112>
   1a702:	00074703          	lbu	a4,0(a4)
   1a706:	bc0702e3          	beqz	a4,1a2ca <_vfiprintf_r+0x112>
   1a70a:	40086813          	ori	a6,a6,1024
   1a70e:	be75                	j	1a2ca <_vfiprintf_r+0x112>
   1a710:	0009c783          	lbu	a5,0(s3)
   1a714:	00186813          	ori	a6,a6,1
   1a718:	be4d                	j	1a2ca <_vfiprintf_r+0x112>
   1a71a:	03b14703          	lbu	a4,59(sp)
   1a71e:	0009c783          	lbu	a5,0(s3)
   1a722:	ba0714e3          	bnez	a4,1a2ca <_vfiprintf_r+0x112>
   1a726:	02000713          	li	a4,32
   1a72a:	02e10da3          	sb	a4,59(sp)
   1a72e:	be71                	j	1a2ca <_vfiprintf_r+0x112>
   1a730:	01086713          	ori	a4,a6,16
   1a734:	02077793          	andi	a5,a4,32
   1a738:	40078063          	beqz	a5,1ab38 <_vfiprintf_r+0x980>
   1a73c:	0d1d                	addi	s10,s10,7
   1a73e:	ff8d7d13          	andi	s10,s10,-8
   1a742:	000d2783          	lw	a5,0(s10)
   1a746:	004d2583          	lw	a1,4(s10)
   1a74a:	0d21                	addi	s10,s10,8
   1a74c:	02010da3          	sb	zero,59(sp)
   1a750:	bff77813          	andi	a6,a4,-1025
   1a754:	0a0dc163          	bltz	s11,1a7f6 <_vfiprintf_r+0x63e>
   1a758:	00b7e633          	or	a2,a5,a1
   1a75c:	b7f77713          	andi	a4,a4,-1153
   1a760:	56061d63          	bnez	a2,1acda <_vfiprintf_r+0xb22>
   1a764:	8e42                	mv	t3,a6
   1a766:	4781                	li	a5,0
   1a768:	883a                	mv	a6,a4
   1a76a:	060d9e63          	bnez	s11,1a7e6 <_vfiprintf_r+0x62e>
   1a76e:	ca0798e3          	bnez	a5,1a41e <_vfiprintf_r+0x266>
   1a772:	001e7e13          	andi	t3,t3,1
   1a776:	3e0e0463          	beqz	t3,1ab5e <_vfiprintf_r+0x9a6>
   1a77a:	03000793          	li	a5,48
   1a77e:	0ef107a3          	sb	a5,239(sp)
   1a782:	88f2                	mv	a7,t3
   1a784:	0ef10493          	addi	s1,sp,239
   1a788:	bd8d                	j	1a5fa <_vfiprintf_r+0x442>
   1a78a:	0009c783          	lbu	a5,0(s3)
   1a78e:	06c00713          	li	a4,108
   1a792:	56e78463          	beq	a5,a4,1acfa <_vfiprintf_r+0xb42>
   1a796:	01086813          	ori	a6,a6,16
   1a79a:	be05                	j	1a2ca <_vfiprintf_r+0x112>
   1a79c:	0009c783          	lbu	a5,0(s3)
   1a7a0:	06800713          	li	a4,104
   1a7a4:	54e78463          	beq	a5,a4,1acec <_vfiprintf_r+0xb34>
   1a7a8:	04086813          	ori	a6,a6,64
   1a7ac:	be39                	j	1a2ca <_vfiprintf_r+0x112>
   1a7ae:	01086e13          	ori	t3,a6,16
   1a7b2:	020e7793          	andi	a5,t3,32
   1a7b6:	36078363          	beqz	a5,1ab1c <_vfiprintf_r+0x964>
   1a7ba:	0d1d                	addi	s10,s10,7
   1a7bc:	ff8d7d13          	andi	s10,s10,-8
   1a7c0:	000d2783          	lw	a5,0(s10)
   1a7c4:	004d2883          	lw	a7,4(s10)
   1a7c8:	0d21                	addi	s10,s10,8
   1a7ca:	02010da3          	sb	zero,59(sp)
   1a7ce:	8872                	mv	a6,t3
   1a7d0:	e00dc3e3          	bltz	s11,1a5d6 <_vfiprintf_r+0x41e>
   1a7d4:	0117e733          	or	a4,a5,a7
   1a7d8:	f7fe7813          	andi	a6,t3,-129
   1a7dc:	de071de3          	bnez	a4,1a5d6 <_vfiprintf_r+0x41e>
   1a7e0:	4785                	li	a5,1
   1a7e2:	f80d86e3          	beqz	s11,1a76e <_vfiprintf_r+0x5b6>
   1a7e6:	4705                	li	a4,1
   1a7e8:	60e78c63          	beq	a5,a4,1ae00 <_vfiprintf_r+0xc48>
   1a7ec:	4709                	li	a4,2
   1a7ee:	54e78663          	beq	a5,a4,1ad3a <_vfiprintf_r+0xb82>
   1a7f2:	4781                	li	a5,0
   1a7f4:	4581                	li	a1,0
   1a7f6:	1984                	addi	s1,sp,240
   1a7f8:	01d59693          	slli	a3,a1,0x1d
   1a7fc:	0077f713          	andi	a4,a5,7
   1a800:	838d                	srli	a5,a5,0x3
   1a802:	03070713          	addi	a4,a4,48
   1a806:	8fd5                	or	a5,a5,a3
   1a808:	818d                	srli	a1,a1,0x3
   1a80a:	fee48fa3          	sb	a4,-1(s1)
   1a80e:	00b7e6b3          	or	a3,a5,a1
   1a812:	8526                	mv	a0,s1
   1a814:	14fd                	addi	s1,s1,-1
   1a816:	f2ed                	bnez	a3,1a7f8 <_vfiprintf_r+0x640>
   1a818:	00187793          	andi	a5,a6,1
   1a81c:	20078b63          	beqz	a5,1aa32 <_vfiprintf_r+0x87a>
   1a820:	03000793          	li	a5,48
   1a824:	20f70763          	beq	a4,a5,1aa32 <_vfiprintf_r+0x87a>
   1a828:	1579                	addi	a0,a0,-2
   1a82a:	fef48fa3          	sb	a5,-1(s1)
   1a82e:	199c                	addi	a5,sp,240
   1a830:	40a78e33          	sub	t3,a5,a0
   1a834:	88ee                	mv	a7,s11
   1a836:	35cdc163          	blt	s11,t3,1ab78 <_vfiprintf_r+0x9c0>
   1a83a:	84aa                	mv	s1,a0
   1a83c:	bb7d                	j	1a5fa <_vfiprintf_r+0x442>
   1a83e:	6721                	lui	a4,0x8
   1a840:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   1a844:	02e11e23          	sh	a4,60(sp)
   1a848:	6779                	lui	a4,0x1e
   1a84a:	96470713          	addi	a4,a4,-1692 # 1d964 <__clzsi2+0x90>
   1a84e:	000d2783          	lw	a5,0(s10)
   1a852:	4581                	li	a1,0
   1a854:	00286813          	ori	a6,a6,2
   1a858:	0d11                	addi	s10,s10,4
   1a85a:	c23a                	sw	a4,4(sp)
   1a85c:	02010da3          	sb	zero,59(sp)
   1a860:	1a0dc763          	bltz	s11,1aa0e <_vfiprintf_r+0x856>
   1a864:	00b7e733          	or	a4,a5,a1
   1a868:	f7f87613          	andi	a2,a6,-129
   1a86c:	18071d63          	bnez	a4,1aa06 <_vfiprintf_r+0x84e>
   1a870:	8e42                	mv	t3,a6
   1a872:	4789                	li	a5,2
   1a874:	8832                	mv	a6,a2
   1a876:	bdd5                	j	1a76a <_vfiprintf_r+0x5b2>
   1a878:	02087793          	andi	a5,a6,32
   1a87c:	2e079463          	bnez	a5,1ab64 <_vfiprintf_r+0x9ac>
   1a880:	01087793          	andi	a5,a6,16
   1a884:	48079263          	bnez	a5,1ad08 <_vfiprintf_r+0xb50>
   1a888:	04087793          	andi	a5,a6,64
   1a88c:	54079f63          	bnez	a5,1adea <_vfiprintf_r+0xc32>
   1a890:	20087813          	andi	a6,a6,512
   1a894:	46080a63          	beqz	a6,1ad08 <_vfiprintf_r+0xb50>
   1a898:	000d2783          	lw	a5,0(s10)
   1a89c:	0d11                	addi	s10,s10,4
   1a89e:	01278023          	sb	s2,0(a5)
   1a8a2:	b2e9                	j	1a26c <_vfiprintf_r+0xb4>
   1a8a4:	411b0333          	sub	t1,s6,a7
   1a8a8:	ac6056e3          	blez	t1,1a374 <_vfiprintf_r+0x1bc>
   1a8ac:	6f79                	lui	t5,0x1e
   1a8ae:	4641                	li	a2,16
   1a8b0:	088f0f13          	addi	t5,t5,136 # 1e088 <zeroes.0>
   1a8b4:	04665f63          	bge	a2,t1,1a912 <_vfiprintf_r+0x75a>
   1a8b8:	c426                	sw	s1,8(sp)
   1a8ba:	86a2                	mv	a3,s0
   1a8bc:	4ec1                	li	t4,16
   1a8be:	4f9d                	li	t6,7
   1a8c0:	c642                	sw	a6,12(sp)
   1a8c2:	c872                	sw	t3,16(sp)
   1a8c4:	841a                	mv	s0,t1
   1a8c6:	d046                	sw	a7,32(sp)
   1a8c8:	84fa                	mv	s1,t5
   1a8ca:	a021                	j	1a8d2 <_vfiprintf_r+0x71a>
   1a8cc:	1441                	addi	s0,s0,-16
   1a8ce:	028edb63          	bge	t4,s0,1a904 <_vfiprintf_r+0x74c>
   1a8d2:	0741                	addi	a4,a4,16
   1a8d4:	0785                	addi	a5,a5,1
   1a8d6:	c284                	sw	s1,0(a3)
   1a8d8:	01d6a223          	sw	t4,4(a3)
   1a8dc:	c4ba                	sw	a4,72(sp)
   1a8de:	c2be                	sw	a5,68(sp)
   1a8e0:	06a1                	addi	a3,a3,8
   1a8e2:	feffd5e3          	bge	t6,a5,1a8cc <_vfiprintf_r+0x714>
   1a8e6:	0090                	addi	a2,sp,64
   1a8e8:	85d6                	mv	a1,s5
   1a8ea:	855e                	mv	a0,s7
   1a8ec:	890fc0ef          	jal	1697c <__sprint_r>
   1a8f0:	ba051ee3          	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a8f4:	4ec1                	li	t4,16
   1a8f6:	1441                	addi	s0,s0,-16
   1a8f8:	4726                	lw	a4,72(sp)
   1a8fa:	4796                	lw	a5,68(sp)
   1a8fc:	86e2                	mv	a3,s8
   1a8fe:	4f9d                	li	t6,7
   1a900:	fc8ec9e3          	blt	t4,s0,1a8d2 <_vfiprintf_r+0x71a>
   1a904:	8f26                	mv	t5,s1
   1a906:	4832                	lw	a6,12(sp)
   1a908:	4e42                	lw	t3,16(sp)
   1a90a:	5882                	lw	a7,32(sp)
   1a90c:	44a2                	lw	s1,8(sp)
   1a90e:	8322                	mv	t1,s0
   1a910:	8436                	mv	s0,a3
   1a912:	971a                	add	a4,a4,t1
   1a914:	0785                	addi	a5,a5,1
   1a916:	01e42023          	sw	t5,0(s0)
   1a91a:	00642223          	sw	t1,4(s0)
   1a91e:	c4ba                	sw	a4,72(sp)
   1a920:	c2be                	sw	a5,68(sp)
   1a922:	461d                	li	a2,7
   1a924:	0421                	addi	s0,s0,8
   1a926:	a4f657e3          	bge	a2,a5,1a374 <_vfiprintf_r+0x1bc>
   1a92a:	0090                	addi	a2,sp,64
   1a92c:	85d6                	mv	a1,s5
   1a92e:	855e                	mv	a0,s7
   1a930:	c846                	sw	a7,16(sp)
   1a932:	c672                	sw	t3,12(sp)
   1a934:	c442                	sw	a6,8(sp)
   1a936:	846fc0ef          	jal	1697c <__sprint_r>
   1a93a:	b60519e3          	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a93e:	4e32                	lw	t3,12(sp)
   1a940:	4726                	lw	a4,72(sp)
   1a942:	4796                	lw	a5,68(sp)
   1a944:	41cd8db3          	sub	s11,s11,t3
   1a948:	48c2                	lw	a7,16(sp)
   1a94a:	4822                	lw	a6,8(sp)
   1a94c:	8462                	mv	s0,s8
   1a94e:	a3b057e3          	blez	s11,1a37c <_vfiprintf_r+0x1c4>
   1a952:	6f79                	lui	t5,0x1e
   1a954:	088f0f13          	addi	t5,t5,136 # 1e088 <zeroes.0>
   1a958:	05ba5c63          	bge	s4,s11,1a9b0 <_vfiprintf_r+0x7f8>
   1a95c:	86a2                	mv	a3,s0
   1a95e:	431d                	li	t1,7
   1a960:	846e                	mv	s0,s11
   1a962:	c442                	sw	a6,8(sp)
   1a964:	c672                	sw	t3,12(sp)
   1a966:	c846                	sw	a7,16(sp)
   1a968:	8de6                	mv	s11,s9
   1a96a:	a021                	j	1a972 <_vfiprintf_r+0x7ba>
   1a96c:	1441                	addi	s0,s0,-16
   1a96e:	028a5b63          	bge	s4,s0,1a9a4 <_vfiprintf_r+0x7ec>
   1a972:	0741                	addi	a4,a4,16
   1a974:	0785                	addi	a5,a5,1
   1a976:	0196a023          	sw	s9,0(a3)
   1a97a:	0146a223          	sw	s4,4(a3)
   1a97e:	c4ba                	sw	a4,72(sp)
   1a980:	c2be                	sw	a5,68(sp)
   1a982:	06a1                	addi	a3,a3,8
   1a984:	fef354e3          	bge	t1,a5,1a96c <_vfiprintf_r+0x7b4>
   1a988:	0090                	addi	a2,sp,64
   1a98a:	85d6                	mv	a1,s5
   1a98c:	855e                	mv	a0,s7
   1a98e:	feffb0ef          	jal	1697c <__sprint_r>
   1a992:	b0051de3          	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a996:	1441                	addi	s0,s0,-16
   1a998:	4726                	lw	a4,72(sp)
   1a99a:	4796                	lw	a5,68(sp)
   1a99c:	86e2                	mv	a3,s8
   1a99e:	431d                	li	t1,7
   1a9a0:	fc8a49e3          	blt	s4,s0,1a972 <_vfiprintf_r+0x7ba>
   1a9a4:	4822                	lw	a6,8(sp)
   1a9a6:	4e32                	lw	t3,12(sp)
   1a9a8:	48c2                	lw	a7,16(sp)
   1a9aa:	8f6e                	mv	t5,s11
   1a9ac:	8da2                	mv	s11,s0
   1a9ae:	8436                	mv	s0,a3
   1a9b0:	976e                	add	a4,a4,s11
   1a9b2:	0785                	addi	a5,a5,1
   1a9b4:	01e42023          	sw	t5,0(s0)
   1a9b8:	01b42223          	sw	s11,4(s0)
   1a9bc:	c4ba                	sw	a4,72(sp)
   1a9be:	c2be                	sw	a5,68(sp)
   1a9c0:	461d                	li	a2,7
   1a9c2:	0421                	addi	s0,s0,8
   1a9c4:	9af65ce3          	bge	a2,a5,1a37c <_vfiprintf_r+0x1c4>
   1a9c8:	0090                	addi	a2,sp,64
   1a9ca:	85d6                	mv	a1,s5
   1a9cc:	855e                	mv	a0,s7
   1a9ce:	c846                	sw	a7,16(sp)
   1a9d0:	c672                	sw	t3,12(sp)
   1a9d2:	c442                	sw	a6,8(sp)
   1a9d4:	fa9fb0ef          	jal	1697c <__sprint_r>
   1a9d8:	ac051ae3          	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a9dc:	4726                	lw	a4,72(sp)
   1a9de:	4796                	lw	a5,68(sp)
   1a9e0:	48c2                	lw	a7,16(sp)
   1a9e2:	4e32                	lw	t3,12(sp)
   1a9e4:	4822                	lw	a6,8(sp)
   1a9e6:	8462                	mv	s0,s8
   1a9e8:	ba51                	j	1a37c <_vfiprintf_r+0x1c4>
   1a9ea:	0090                	addi	a2,sp,64
   1a9ec:	85d6                	mv	a1,s5
   1a9ee:	855e                	mv	a0,s7
   1a9f0:	c646                	sw	a7,12(sp)
   1a9f2:	c442                	sw	a6,8(sp)
   1a9f4:	f89fb0ef          	jal	1697c <__sprint_r>
   1a9f8:	aa051ae3          	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1a9fc:	4726                	lw	a4,72(sp)
   1a9fe:	48b2                	lw	a7,12(sp)
   1aa00:	4822                	lw	a6,8(sp)
   1aa02:	8462                	mv	s0,s8
   1aa04:	b279                	j	1a392 <_vfiprintf_r+0x1da>
   1aa06:	4709                	li	a4,2
   1aa08:	8832                	mv	a6,a2
   1aa0a:	de0706e3          	beqz	a4,1a7f6 <_vfiprintf_r+0x63e>
   1aa0e:	4612                	lw	a2,4(sp)
   1aa10:	1984                	addi	s1,sp,240
   1aa12:	00f7f713          	andi	a4,a5,15
   1aa16:	9732                	add	a4,a4,a2
   1aa18:	00074683          	lbu	a3,0(a4)
   1aa1c:	8391                	srli	a5,a5,0x4
   1aa1e:	01c59713          	slli	a4,a1,0x1c
   1aa22:	8fd9                	or	a5,a5,a4
   1aa24:	8191                	srli	a1,a1,0x4
   1aa26:	fed48fa3          	sb	a3,-1(s1)
   1aa2a:	00b7e733          	or	a4,a5,a1
   1aa2e:	14fd                	addi	s1,s1,-1
   1aa30:	f36d                	bnez	a4,1aa12 <_vfiprintf_r+0x85a>
   1aa32:	199c                	addi	a5,sp,240
   1aa34:	40978e33          	sub	t3,a5,s1
   1aa38:	88ee                	mv	a7,s11
   1aa3a:	bdcdd0e3          	bge	s11,t3,1a5fa <_vfiprintf_r+0x442>
   1aa3e:	88f2                	mv	a7,t3
   1aa40:	be6d                	j	1a5fa <_vfiprintf_r+0x442>
   1aa42:	6379                	lui	t1,0x1e
   1aa44:	4641                	li	a2,16
   1aa46:	09830313          	addi	t1,t1,152 # 1e098 <blanks.1>
   1aa4a:	07d65363          	bge	a2,t4,1aab0 <_vfiprintf_r+0x8f8>
   1aa4e:	c826                	sw	s1,16(sp)
   1aa50:	86a2                	mv	a3,s0
   1aa52:	4f41                	li	t5,16
   1aa54:	439d                	li	t2,7
   1aa56:	c416                	sw	t0,8(sp)
   1aa58:	c67e                	sw	t6,12(sp)
   1aa5a:	d042                	sw	a6,32(sp)
   1aa5c:	d272                	sw	t3,36(sp)
   1aa5e:	8476                	mv	s0,t4
   1aa60:	d446                	sw	a7,40(sp)
   1aa62:	849a                	mv	s1,t1
   1aa64:	a021                	j	1aa6c <_vfiprintf_r+0x8b4>
   1aa66:	1441                	addi	s0,s0,-16
   1aa68:	028f5b63          	bge	t5,s0,1aa9e <_vfiprintf_r+0x8e6>
   1aa6c:	0741                	addi	a4,a4,16
   1aa6e:	0785                	addi	a5,a5,1
   1aa70:	c284                	sw	s1,0(a3)
   1aa72:	01e6a223          	sw	t5,4(a3)
   1aa76:	c4ba                	sw	a4,72(sp)
   1aa78:	c2be                	sw	a5,68(sp)
   1aa7a:	06a1                	addi	a3,a3,8
   1aa7c:	fef3d5e3          	bge	t2,a5,1aa66 <_vfiprintf_r+0x8ae>
   1aa80:	0090                	addi	a2,sp,64
   1aa82:	85d6                	mv	a1,s5
   1aa84:	855e                	mv	a0,s7
   1aa86:	ef7fb0ef          	jal	1697c <__sprint_r>
   1aa8a:	a20511e3          	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1aa8e:	4f41                	li	t5,16
   1aa90:	1441                	addi	s0,s0,-16
   1aa92:	4726                	lw	a4,72(sp)
   1aa94:	4796                	lw	a5,68(sp)
   1aa96:	86e2                	mv	a3,s8
   1aa98:	439d                	li	t2,7
   1aa9a:	fc8f49e3          	blt	t5,s0,1aa6c <_vfiprintf_r+0x8b4>
   1aa9e:	8326                	mv	t1,s1
   1aaa0:	42a2                	lw	t0,8(sp)
   1aaa2:	4fb2                	lw	t6,12(sp)
   1aaa4:	5802                	lw	a6,32(sp)
   1aaa6:	5e12                	lw	t3,36(sp)
   1aaa8:	58a2                	lw	a7,40(sp)
   1aaaa:	44c2                	lw	s1,16(sp)
   1aaac:	8ea2                	mv	t4,s0
   1aaae:	8436                	mv	s0,a3
   1aab0:	9776                	add	a4,a4,t4
   1aab2:	0785                	addi	a5,a5,1
   1aab4:	00642023          	sw	t1,0(s0)
   1aab8:	01d42223          	sw	t4,4(s0)
   1aabc:	c4ba                	sw	a4,72(sp)
   1aabe:	c2be                	sw	a5,68(sp)
   1aac0:	461d                	li	a2,7
   1aac2:	0421                	addi	s0,s0,8
   1aac4:	86f656e3          	bge	a2,a5,1a330 <_vfiprintf_r+0x178>
   1aac8:	0090                	addi	a2,sp,64
   1aaca:	85d6                	mv	a1,s5
   1aacc:	855e                	mv	a0,s7
   1aace:	d246                	sw	a7,36(sp)
   1aad0:	d072                	sw	t3,32(sp)
   1aad2:	c842                	sw	a6,16(sp)
   1aad4:	c67e                	sw	t6,12(sp)
   1aad6:	c416                	sw	t0,8(sp)
   1aad8:	ea5fb0ef          	jal	1697c <__sprint_r>
   1aadc:	9c0518e3          	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1aae0:	4726                	lw	a4,72(sp)
   1aae2:	4796                	lw	a5,68(sp)
   1aae4:	5892                	lw	a7,36(sp)
   1aae6:	5e02                	lw	t3,32(sp)
   1aae8:	4842                	lw	a6,16(sp)
   1aaea:	4fb2                	lw	t6,12(sp)
   1aaec:	42a2                	lw	t0,8(sp)
   1aaee:	8462                	mv	s0,s8
   1aaf0:	841ff06f          	j	1a330 <_vfiprintf_r+0x178>
   1aaf4:	0090                	addi	a2,sp,64
   1aaf6:	85d6                	mv	a1,s5
   1aaf8:	855e                	mv	a0,s7
   1aafa:	d046                	sw	a7,32(sp)
   1aafc:	c872                	sw	t3,16(sp)
   1aafe:	c642                	sw	a6,12(sp)
   1ab00:	c47e                	sw	t6,8(sp)
   1ab02:	e7bfb0ef          	jal	1697c <__sprint_r>
   1ab06:	9a0513e3          	bnez	a0,1a4ac <_vfiprintf_r+0x2f4>
   1ab0a:	4726                	lw	a4,72(sp)
   1ab0c:	4796                	lw	a5,68(sp)
   1ab0e:	5882                	lw	a7,32(sp)
   1ab10:	4e42                	lw	t3,16(sp)
   1ab12:	4832                	lw	a6,12(sp)
   1ab14:	4fa2                	lw	t6,8(sp)
   1ab16:	8462                	mv	s0,s8
   1ab18:	855ff06f          	j	1a36c <_vfiprintf_r+0x1b4>
   1ab1c:	010e7713          	andi	a4,t3,16
   1ab20:	000d2783          	lw	a5,0(s10)
   1ab24:	0d11                	addi	s10,s10,4
   1ab26:	e719                	bnez	a4,1ab34 <_vfiprintf_r+0x97c>
   1ab28:	040e7713          	andi	a4,t3,64
   1ab2c:	1e070f63          	beqz	a4,1ad2a <_vfiprintf_r+0xb72>
   1ab30:	07c2                	slli	a5,a5,0x10
   1ab32:	83c1                	srli	a5,a5,0x10
   1ab34:	4881                	li	a7,0
   1ab36:	b951                	j	1a7ca <_vfiprintf_r+0x612>
   1ab38:	01077613          	andi	a2,a4,16
   1ab3c:	000d2783          	lw	a5,0(s10)
   1ab40:	0d11                	addi	s10,s10,4
   1ab42:	ee01                	bnez	a2,1ab5a <_vfiprintf_r+0x9a2>
   1ab44:	04077613          	andi	a2,a4,64
   1ab48:	c609                	beqz	a2,1ab52 <_vfiprintf_r+0x99a>
   1ab4a:	07c2                	slli	a5,a5,0x10
   1ab4c:	83c1                	srli	a5,a5,0x10
   1ab4e:	4581                	li	a1,0
   1ab50:	bef5                	j	1a74c <_vfiprintf_r+0x594>
   1ab52:	20077613          	andi	a2,a4,512
   1ab56:	2a061163          	bnez	a2,1adf8 <_vfiprintf_r+0xc40>
   1ab5a:	4581                	li	a1,0
   1ab5c:	bec5                	j	1a74c <_vfiprintf_r+0x594>
   1ab5e:	4881                	li	a7,0
   1ab60:	1984                	addi	s1,sp,240
   1ab62:	bc61                	j	1a5fa <_vfiprintf_r+0x442>
   1ab64:	000d2783          	lw	a5,0(s10)
   1ab68:	41f95713          	srai	a4,s2,0x1f
   1ab6c:	0d11                	addi	s10,s10,4
   1ab6e:	0127a023          	sw	s2,0(a5)
   1ab72:	c3d8                	sw	a4,4(a5)
   1ab74:	ef8ff06f          	j	1a26c <_vfiprintf_r+0xb4>
   1ab78:	88f2                	mv	a7,t3
   1ab7a:	84aa                	mv	s1,a0
   1ab7c:	bcbd                	j	1a5fa <_vfiprintf_r+0x442>
   1ab7e:	5dfd                	li	s11,-1
   1ab80:	89b6                	mv	s3,a3
   1ab82:	f4cff06f          	j	1a2ce <_vfiprintf_r+0x116>
   1ab86:	8e42                	mv	t3,a6
   1ab88:	b12d                	j	1a7b2 <_vfiprintf_r+0x5fa>
   1ab8a:	8742                	mv	a4,a6
   1ab8c:	b665                	j	1a734 <_vfiprintf_r+0x57c>
   1ab8e:	67f9                	lui	a5,0x1e
   1ab90:	97878793          	addi	a5,a5,-1672 # 1d978 <__clzsi2+0xa4>
   1ab94:	c23e                	sw	a5,4(sp)
   1ab96:	02087793          	andi	a5,a6,32
   1ab9a:	c3a9                	beqz	a5,1abdc <_vfiprintf_r+0xa24>
   1ab9c:	0d1d                	addi	s10,s10,7
   1ab9e:	ff8d7d13          	andi	s10,s10,-8
   1aba2:	000d2783          	lw	a5,0(s10)
   1aba6:	004d2583          	lw	a1,4(s10)
   1abaa:	0d21                	addi	s10,s10,8
   1abac:	00187713          	andi	a4,a6,1
   1abb0:	cf01                	beqz	a4,1abc8 <_vfiprintf_r+0xa10>
   1abb2:	00b7e733          	or	a4,a5,a1
   1abb6:	cb09                	beqz	a4,1abc8 <_vfiprintf_r+0xa10>
   1abb8:	03000713          	li	a4,48
   1abbc:	02e10e23          	sb	a4,60(sp)
   1abc0:	02c10ea3          	sb	a2,61(sp)
   1abc4:	00286813          	ori	a6,a6,2
   1abc8:	bff87813          	andi	a6,a6,-1025
   1abcc:	b941                	j	1a85c <_vfiprintf_r+0x6a4>
   1abce:	67f9                	lui	a5,0x1e
   1abd0:	96478793          	addi	a5,a5,-1692 # 1d964 <__clzsi2+0x90>
   1abd4:	c23e                	sw	a5,4(sp)
   1abd6:	02087793          	andi	a5,a6,32
   1abda:	f3e9                	bnez	a5,1ab9c <_vfiprintf_r+0x9e4>
   1abdc:	01087713          	andi	a4,a6,16
   1abe0:	000d2783          	lw	a5,0(s10)
   1abe4:	0d11                	addi	s10,s10,4
   1abe6:	e315                	bnez	a4,1ac0a <_vfiprintf_r+0xa52>
   1abe8:	04087713          	andi	a4,a6,64
   1abec:	cb19                	beqz	a4,1ac02 <_vfiprintf_r+0xa4a>
   1abee:	07c2                	slli	a5,a5,0x10
   1abf0:	83c1                	srli	a5,a5,0x10
   1abf2:	4581                	li	a1,0
   1abf4:	bf65                	j	1abac <_vfiprintf_r+0x9f4>
   1abf6:	8526                	mv	a0,s1
   1abf8:	9e5fc0ef          	jal	175dc <strlen>
   1abfc:	4822                	lw	a6,8(sp)
   1abfe:	8e2a                	mv	t3,a0
   1ac00:	b435                	j	1a62c <_vfiprintf_r+0x474>
   1ac02:	20087713          	andi	a4,a6,512
   1ac06:	1c071763          	bnez	a4,1add4 <_vfiprintf_r+0xc1c>
   1ac0a:	4581                	li	a1,0
   1ac0c:	b745                	j	1abac <_vfiprintf_r+0x9f4>
   1ac0e:	ccccdf37          	lui	t5,0xccccd
   1ac12:	ccccdfb7          	lui	t6,0xccccd
   1ac16:	42d2                	lw	t0,20(sp)
   1ac18:	40087e13          	andi	t3,a6,1024
   1ac1c:	4581                	li	a1,0
   1ac1e:	1988                	addi	a0,sp,240
   1ac20:	4315                	li	t1,5
   1ac22:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccad0c9>
   1ac26:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccad0c8>
   1ac2a:	0ff00e93          	li	t4,255
   1ac2e:	a081                	j	1ac6e <_vfiprintf_r+0xab6>
   1ac30:	00f4b733          	sltu	a4,s1,a5
   1ac34:	9726                	add	a4,a4,s1
   1ac36:	02677733          	remu	a4,a4,t1
   1ac3a:	40e78733          	sub	a4,a5,a4
   1ac3e:	00e7b633          	sltu	a2,a5,a4
   1ac42:	40c88633          	sub	a2,a7,a2
   1ac46:	03f703b3          	mul	t2,a4,t6
   1ac4a:	03e60633          	mul	a2,a2,t5
   1ac4e:	03e73533          	mulhu	a0,a4,t5
   1ac52:	961e                	add	a2,a2,t2
   1ac54:	03e70733          	mul	a4,a4,t5
   1ac58:	962a                	add	a2,a2,a0
   1ac5a:	01f61513          	slli	a0,a2,0x1f
   1ac5e:	8205                	srli	a2,a2,0x1
   1ac60:	8305                	srli	a4,a4,0x1
   1ac62:	8f49                	or	a4,a4,a0
   1ac64:	16088263          	beqz	a7,1adc8 <_vfiprintf_r+0xc10>
   1ac68:	87ba                	mv	a5,a4
   1ac6a:	88b2                	mv	a7,a2
   1ac6c:	8536                	mv	a0,a3
   1ac6e:	011784b3          	add	s1,a5,a7
   1ac72:	00f4b733          	sltu	a4,s1,a5
   1ac76:	9726                	add	a4,a4,s1
   1ac78:	02677733          	remu	a4,a4,t1
   1ac7c:	fff50693          	addi	a3,a0,-1
   1ac80:	0585                	addi	a1,a1,1
   1ac82:	40e78733          	sub	a4,a5,a4
   1ac86:	00e7b3b3          	sltu	t2,a5,a4
   1ac8a:	407883b3          	sub	t2,a7,t2
   1ac8e:	03e73633          	mulhu	a2,a4,t5
   1ac92:	03e383b3          	mul	t2,t2,t5
   1ac96:	03e70733          	mul	a4,a4,t5
   1ac9a:	93b2                	add	t2,t2,a2
   1ac9c:	03fe                	slli	t2,t2,0x1f
   1ac9e:	00175613          	srli	a2,a4,0x1
   1aca2:	00c3e633          	or	a2,t2,a2
   1aca6:	00261713          	slli	a4,a2,0x2
   1acaa:	9732                	add	a4,a4,a2
   1acac:	0706                	slli	a4,a4,0x1
   1acae:	40e78733          	sub	a4,a5,a4
   1acb2:	03070713          	addi	a4,a4,48
   1acb6:	fee50fa3          	sb	a4,-1(a0)
   1acba:	f60e0be3          	beqz	t3,1ac30 <_vfiprintf_r+0xa78>
   1acbe:	0002c703          	lbu	a4,0(t0)
   1acc2:	f6b717e3          	bne	a4,a1,1ac30 <_vfiprintf_r+0xa78>
   1acc6:	f7d585e3          	beq	a1,t4,1ac30 <_vfiprintf_r+0xa78>
   1acca:	06089b63          	bnez	a7,1ad40 <_vfiprintf_r+0xb88>
   1acce:	4725                	li	a4,9
   1acd0:	06f76863          	bltu	a4,a5,1ad40 <_vfiprintf_r+0xb88>
   1acd4:	84b6                	mv	s1,a3
   1acd6:	ca16                	sw	t0,20(sp)
   1acd8:	bba9                	j	1aa32 <_vfiprintf_r+0x87a>
   1acda:	883a                	mv	a6,a4
   1acdc:	4701                	li	a4,0
   1acde:	b0070ce3          	beqz	a4,1a7f6 <_vfiprintf_r+0x63e>
   1ace2:	b335                	j	1aa0e <_vfiprintf_r+0x856>
   1ace4:	93ef90ef          	jal	13e22 <__sinit>
   1ace8:	cfaff06f          	j	1a1e2 <_vfiprintf_r+0x2a>
   1acec:	0019c783          	lbu	a5,1(s3)
   1acf0:	20086813          	ori	a6,a6,512
   1acf4:	0985                	addi	s3,s3,1
   1acf6:	dd4ff06f          	j	1a2ca <_vfiprintf_r+0x112>
   1acfa:	0019c783          	lbu	a5,1(s3)
   1acfe:	02086813          	ori	a6,a6,32
   1ad02:	0985                	addi	s3,s3,1
   1ad04:	dc6ff06f          	j	1a2ca <_vfiprintf_r+0x112>
   1ad08:	000d2783          	lw	a5,0(s10)
   1ad0c:	0d11                	addi	s10,s10,4
   1ad0e:	0127a023          	sw	s2,0(a5)
   1ad12:	d5aff06f          	j	1a26c <_vfiprintf_r+0xb4>
   1ad16:	4799                	li	a5,6
   1ad18:	8e6e                	mv	t3,s11
   1ad1a:	0bb7eb63          	bltu	a5,s11,1add0 <_vfiprintf_r+0xc18>
   1ad1e:	64f9                	lui	s1,0x1e
   1ad20:	88f2                	mv	a7,t3
   1ad22:	98c48493          	addi	s1,s1,-1652 # 1d98c <__clzsi2+0xb8>
   1ad26:	df2ff06f          	j	1a318 <_vfiprintf_r+0x160>
   1ad2a:	200e7713          	andi	a4,t3,512
   1ad2e:	e00703e3          	beqz	a4,1ab34 <_vfiprintf_r+0x97c>
   1ad32:	0ff7f793          	zext.b	a5,a5
   1ad36:	4881                	li	a7,0
   1ad38:	bc49                	j	1a7ca <_vfiprintf_r+0x612>
   1ad3a:	4781                	li	a5,0
   1ad3c:	4581                	li	a1,0
   1ad3e:	b9c1                	j	1aa0e <_vfiprintf_r+0x856>
   1ad40:	d43e                	sw	a5,40(sp)
   1ad42:	47e2                	lw	a5,24(sp)
   1ad44:	45f2                	lw	a1,28(sp)
   1ad46:	d646                	sw	a7,44(sp)
   1ad48:	8e9d                	sub	a3,a3,a5
   1ad4a:	863e                	mv	a2,a5
   1ad4c:	8536                	mv	a0,a3
   1ad4e:	d27e                	sw	t6,36(sp)
   1ad50:	d07a                	sw	t5,32(sp)
   1ad52:	ca72                	sw	t3,20(sp)
   1ad54:	c842                	sw	a6,16(sp)
   1ad56:	c616                	sw	t0,12(sp)
   1ad58:	c436                	sw	a3,8(sp)
   1ad5a:	d76fc0ef          	jal	172d0 <strncpy>
   1ad5e:	57a2                	lw	a5,40(sp)
   1ad60:	4615                	li	a2,5
   1ad62:	42b2                	lw	t0,12(sp)
   1ad64:	00f4b733          	sltu	a4,s1,a5
   1ad68:	9726                	add	a4,a4,s1
   1ad6a:	02c77733          	remu	a4,a4,a2
   1ad6e:	0012c603          	lbu	a2,1(t0)
   1ad72:	58b2                	lw	a7,44(sp)
   1ad74:	ccccd537          	lui	a0,0xccccd
   1ad78:	00c03633          	snez	a2,a2
   1ad7c:	ccccd3b7          	lui	t2,0xccccd
   1ad80:	92b2                	add	t0,t0,a2
   1ad82:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccad0c9>
   1ad86:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccad0c8>
   1ad8a:	46a2                	lw	a3,8(sp)
   1ad8c:	4842                	lw	a6,16(sp)
   1ad8e:	4e52                	lw	t3,20(sp)
   1ad90:	5f02                	lw	t5,32(sp)
   1ad92:	5f92                	lw	t6,36(sp)
   1ad94:	4581                	li	a1,0
   1ad96:	4315                	li	t1,5
   1ad98:	0ff00e93          	li	t4,255
   1ad9c:	40e78733          	sub	a4,a5,a4
   1ada0:	00e7b633          	sltu	a2,a5,a4
   1ada4:	40c88633          	sub	a2,a7,a2
   1ada8:	027703b3          	mul	t2,a4,t2
   1adac:	02a60633          	mul	a2,a2,a0
   1adb0:	02a738b3          	mulhu	a7,a4,a0
   1adb4:	961e                	add	a2,a2,t2
   1adb6:	02a707b3          	mul	a5,a4,a0
   1adba:	9646                	add	a2,a2,a7
   1adbc:	01f61713          	slli	a4,a2,0x1f
   1adc0:	8205                	srli	a2,a2,0x1
   1adc2:	8385                	srli	a5,a5,0x1
   1adc4:	8f5d                	or	a4,a4,a5
   1adc6:	b54d                	j	1ac68 <_vfiprintf_r+0xab0>
   1adc8:	4525                	li	a0,9
   1adca:	e8f56fe3          	bltu	a0,a5,1ac68 <_vfiprintf_r+0xab0>
   1adce:	b719                	j	1acd4 <_vfiprintf_r+0xb1c>
   1add0:	4e19                	li	t3,6
   1add2:	b7b1                	j	1ad1e <_vfiprintf_r+0xb66>
   1add4:	0ff7f793          	zext.b	a5,a5
   1add8:	4581                	li	a1,0
   1adda:	bbc9                	j	1abac <_vfiprintf_r+0x9f4>
   1addc:	07e2                	slli	a5,a5,0x18
   1adde:	87e1                	srai	a5,a5,0x18
   1ade0:	41f7d893          	srai	a7,a5,0x1f
   1ade4:	8746                	mv	a4,a7
   1ade6:	e20ff06f          	j	1a406 <_vfiprintf_r+0x24e>
   1adea:	000d2783          	lw	a5,0(s10)
   1adee:	0d11                	addi	s10,s10,4
   1adf0:	01279023          	sh	s2,0(a5)
   1adf4:	c78ff06f          	j	1a26c <_vfiprintf_r+0xb4>
   1adf8:	0ff7f793          	zext.b	a5,a5
   1adfc:	4581                	li	a1,0
   1adfe:	b2b9                	j	1a74c <_vfiprintf_r+0x594>
   1ae00:	03000793          	li	a5,48
   1ae04:	fe4ff06f          	j	1a5e8 <_vfiprintf_r+0x430>
   1ae08:	5d7d                	li	s10,-1
   1ae0a:	ecaff06f          	j	1a4d4 <_vfiprintf_r+0x31c>
   1ae0e:	000d2d83          	lw	s11,0(s10)
   1ae12:	0d11                	addi	s10,s10,4
   1ae14:	000dd363          	bgez	s11,1ae1a <_vfiprintf_r+0xc62>
   1ae18:	5dfd                	li	s11,-1
   1ae1a:	0019c783          	lbu	a5,1(s3)
   1ae1e:	89b6                	mv	s3,a3
   1ae20:	caaff06f          	j	1a2ca <_vfiprintf_r+0x112>

0001ae24 <vfiprintf>:
   1ae24:	87aa                	mv	a5,a0
   1ae26:	f141a503          	lw	a0,-236(gp) # 1f8cc <_impure_ptr>
   1ae2a:	86b2                	mv	a3,a2
   1ae2c:	862e                	mv	a2,a1
   1ae2e:	85be                	mv	a1,a5
   1ae30:	b88ff06f          	j	1a1b8 <_vfiprintf_r>

0001ae34 <__sbprintf>:
   1ae34:	b8010113          	addi	sp,sp,-1152
   1ae38:	00c59783          	lh	a5,12(a1)
   1ae3c:	00e5d703          	lhu	a4,14(a1)
   1ae40:	46812c23          	sw	s0,1144(sp)
   1ae44:	842e                	mv	s0,a1
   1ae46:	65c1                	lui	a1,0x10
   1ae48:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   1ae4a:	06442e03          	lw	t3,100(s0)
   1ae4e:	01c42303          	lw	t1,28(s0)
   1ae52:	02442883          	lw	a7,36(s0)
   1ae56:	0742                	slli	a4,a4,0x10
   1ae58:	8fed                	and	a5,a5,a1
   1ae5a:	8fd9                	or	a5,a5,a4
   1ae5c:	40000813          	li	a6,1024
   1ae60:	ca3e                	sw	a5,20(sp)
   1ae62:	002c                	addi	a1,sp,8
   1ae64:	189c                	addi	a5,sp,112
   1ae66:	46912a23          	sw	s1,1140(sp)
   1ae6a:	47212823          	sw	s2,1136(sp)
   1ae6e:	46112e23          	sw	ra,1148(sp)
   1ae72:	892a                	mv	s2,a0
   1ae74:	d6f2                	sw	t3,108(sp)
   1ae76:	d21a                	sw	t1,36(sp)
   1ae78:	d646                	sw	a7,44(sp)
   1ae7a:	c43e                	sw	a5,8(sp)
   1ae7c:	cc3e                	sw	a5,24(sp)
   1ae7e:	c842                	sw	a6,16(sp)
   1ae80:	ce42                	sw	a6,28(sp)
   1ae82:	d002                	sw	zero,32(sp)
   1ae84:	b34ff0ef          	jal	1a1b8 <_vfiprintf_r>
   1ae88:	84aa                	mv	s1,a0
   1ae8a:	02055963          	bgez	a0,1aebc <__sbprintf+0x88>
   1ae8e:	01415783          	lhu	a5,20(sp)
   1ae92:	0407f793          	andi	a5,a5,64
   1ae96:	c799                	beqz	a5,1aea4 <__sbprintf+0x70>
   1ae98:	00c45783          	lhu	a5,12(s0)
   1ae9c:	0407e793          	ori	a5,a5,64
   1aea0:	00f41623          	sh	a5,12(s0)
   1aea4:	47c12083          	lw	ra,1148(sp)
   1aea8:	47812403          	lw	s0,1144(sp)
   1aeac:	47012903          	lw	s2,1136(sp)
   1aeb0:	8526                	mv	a0,s1
   1aeb2:	47412483          	lw	s1,1140(sp)
   1aeb6:	48010113          	addi	sp,sp,1152
   1aeba:	8082                	ret
   1aebc:	002c                	addi	a1,sp,8
   1aebe:	854a                	mv	a0,s2
   1aec0:	d2bfb0ef          	jal	16bea <_fflush_r>
   1aec4:	d569                	beqz	a0,1ae8e <__sbprintf+0x5a>
   1aec6:	54fd                	li	s1,-1
   1aec8:	b7d9                	j	1ae8e <__sbprintf+0x5a>

0001aeca <__errno>:
   1aeca:	f141a503          	lw	a0,-236(gp) # 1f8cc <_impure_ptr>
   1aece:	8082                	ret

0001aed0 <abort>:
   1aed0:	1141                	addi	sp,sp,-16
   1aed2:	4519                	li	a0,6
   1aed4:	c606                	sw	ra,12(sp)
   1aed6:	2a59                	jal	1b06c <raise>
   1aed8:	4505                	li	a0,1
   1aeda:	2e61                	jal	1b272 <_exit>

0001aedc <_init_signal_r>:
   1aedc:	11852783          	lw	a5,280(a0)
   1aee0:	c399                	beqz	a5,1aee6 <_init_signal_r+0xa>
   1aee2:	4501                	li	a0,0
   1aee4:	8082                	ret
   1aee6:	1141                	addi	sp,sp,-16
   1aee8:	08000593          	li	a1,128
   1aeec:	c422                	sw	s0,8(sp)
   1aeee:	c606                	sw	ra,12(sp)
   1aef0:	842a                	mv	s0,a0
   1aef2:	893f90ef          	jal	14784 <_malloc_r>
   1aef6:	10a42c23          	sw	a0,280(s0)
   1aefa:	cd09                	beqz	a0,1af14 <_init_signal_r+0x38>
   1aefc:	08050793          	addi	a5,a0,128
   1af00:	00052023          	sw	zero,0(a0)
   1af04:	0511                	addi	a0,a0,4
   1af06:	fef51de3          	bne	a0,a5,1af00 <_init_signal_r+0x24>
   1af0a:	4501                	li	a0,0
   1af0c:	40b2                	lw	ra,12(sp)
   1af0e:	4422                	lw	s0,8(sp)
   1af10:	0141                	addi	sp,sp,16
   1af12:	8082                	ret
   1af14:	557d                	li	a0,-1
   1af16:	bfdd                	j	1af0c <_init_signal_r+0x30>

0001af18 <_signal_r>:
   1af18:	1101                	addi	sp,sp,-32
   1af1a:	ca26                	sw	s1,20(sp)
   1af1c:	ce06                	sw	ra,28(sp)
   1af1e:	47fd                	li	a5,31
   1af20:	84aa                	mv	s1,a0
   1af22:	02b7e063          	bltu	a5,a1,1af42 <_signal_r+0x2a>
   1af26:	11852783          	lw	a5,280(a0)
   1af2a:	cc22                	sw	s0,24(sp)
   1af2c:	842e                	mv	s0,a1
   1af2e:	cf91                	beqz	a5,1af4a <_signal_r+0x32>
   1af30:	040a                	slli	s0,s0,0x2
   1af32:	97a2                	add	a5,a5,s0
   1af34:	4462                	lw	s0,24(sp)
   1af36:	4388                	lw	a0,0(a5)
   1af38:	c390                	sw	a2,0(a5)
   1af3a:	40f2                	lw	ra,28(sp)
   1af3c:	44d2                	lw	s1,20(sp)
   1af3e:	6105                	addi	sp,sp,32
   1af40:	8082                	ret
   1af42:	47d9                	li	a5,22
   1af44:	c11c                	sw	a5,0(a0)
   1af46:	557d                	li	a0,-1
   1af48:	bfcd                	j	1af3a <_signal_r+0x22>
   1af4a:	08000593          	li	a1,128
   1af4e:	c632                	sw	a2,12(sp)
   1af50:	835f90ef          	jal	14784 <_malloc_r>
   1af54:	10a4ac23          	sw	a0,280(s1)
   1af58:	4632                	lw	a2,12(sp)
   1af5a:	87aa                	mv	a5,a0
   1af5c:	872a                	mv	a4,a0
   1af5e:	08050693          	addi	a3,a0,128
   1af62:	c519                	beqz	a0,1af70 <_signal_r+0x58>
   1af64:	00072023          	sw	zero,0(a4)
   1af68:	0711                	addi	a4,a4,4
   1af6a:	fed71de3          	bne	a4,a3,1af64 <_signal_r+0x4c>
   1af6e:	b7c9                	j	1af30 <_signal_r+0x18>
   1af70:	4462                	lw	s0,24(sp)
   1af72:	557d                	li	a0,-1
   1af74:	b7d9                	j	1af3a <_signal_r+0x22>

0001af76 <_raise_r>:
   1af76:	1141                	addi	sp,sp,-16
   1af78:	c226                	sw	s1,4(sp)
   1af7a:	c606                	sw	ra,12(sp)
   1af7c:	47fd                	li	a5,31
   1af7e:	84aa                	mv	s1,a0
   1af80:	04b7ee63          	bltu	a5,a1,1afdc <_raise_r+0x66>
   1af84:	11852783          	lw	a5,280(a0)
   1af88:	c422                	sw	s0,8(sp)
   1af8a:	842e                	mv	s0,a1
   1af8c:	c795                	beqz	a5,1afb8 <_raise_r+0x42>
   1af8e:	00259713          	slli	a4,a1,0x2
   1af92:	97ba                	add	a5,a5,a4
   1af94:	4398                	lw	a4,0(a5)
   1af96:	c30d                	beqz	a4,1afb8 <_raise_r+0x42>
   1af98:	4685                	li	a3,1
   1af9a:	00d70963          	beq	a4,a3,1afac <_raise_r+0x36>
   1af9e:	56fd                	li	a3,-1
   1afa0:	02d70663          	beq	a4,a3,1afcc <_raise_r+0x56>
   1afa4:	0007a023          	sw	zero,0(a5)
   1afa8:	852e                	mv	a0,a1
   1afaa:	9702                	jalr	a4
   1afac:	4422                	lw	s0,8(sp)
   1afae:	4501                	li	a0,0
   1afb0:	40b2                	lw	ra,12(sp)
   1afb2:	4492                	lw	s1,4(sp)
   1afb4:	0141                	addi	sp,sp,16
   1afb6:	8082                	ret
   1afb8:	8526                	mv	a0,s1
   1afba:	2469                	jal	1b244 <_getpid_r>
   1afbc:	8622                	mv	a2,s0
   1afbe:	4422                	lw	s0,8(sp)
   1afc0:	40b2                	lw	ra,12(sp)
   1afc2:	85aa                	mv	a1,a0
   1afc4:	8526                	mv	a0,s1
   1afc6:	4492                	lw	s1,4(sp)
   1afc8:	0141                	addi	sp,sp,16
   1afca:	a489                	j	1b20c <_kill_r>
   1afcc:	4422                	lw	s0,8(sp)
   1afce:	40b2                	lw	ra,12(sp)
   1afd0:	47d9                	li	a5,22
   1afd2:	c11c                	sw	a5,0(a0)
   1afd4:	4492                	lw	s1,4(sp)
   1afd6:	4505                	li	a0,1
   1afd8:	0141                	addi	sp,sp,16
   1afda:	8082                	ret
   1afdc:	47d9                	li	a5,22
   1afde:	c11c                	sw	a5,0(a0)
   1afe0:	557d                	li	a0,-1
   1afe2:	b7f9                	j	1afb0 <_raise_r+0x3a>

0001afe4 <__sigtramp_r>:
   1afe4:	47fd                	li	a5,31
   1afe6:	08b7e163          	bltu	a5,a1,1b068 <__sigtramp_r+0x84>
   1afea:	11852783          	lw	a5,280(a0)
   1afee:	1141                	addi	sp,sp,-16
   1aff0:	c422                	sw	s0,8(sp)
   1aff2:	c226                	sw	s1,4(sp)
   1aff4:	c606                	sw	ra,12(sp)
   1aff6:	842e                	mv	s0,a1
   1aff8:	84aa                	mv	s1,a0
   1affa:	c7a1                	beqz	a5,1b042 <__sigtramp_r+0x5e>
   1affc:	00241713          	slli	a4,s0,0x2
   1b000:	97ba                	add	a5,a5,a4
   1b002:	4398                	lw	a4,0(a5)
   1b004:	c30d                	beqz	a4,1b026 <__sigtramp_r+0x42>
   1b006:	56fd                	li	a3,-1
   1b008:	02d70b63          	beq	a4,a3,1b03e <__sigtramp_r+0x5a>
   1b00c:	4685                	li	a3,1
   1b00e:	02d70263          	beq	a4,a3,1b032 <__sigtramp_r+0x4e>
   1b012:	8522                	mv	a0,s0
   1b014:	0007a023          	sw	zero,0(a5)
   1b018:	9702                	jalr	a4
   1b01a:	4501                	li	a0,0
   1b01c:	40b2                	lw	ra,12(sp)
   1b01e:	4422                	lw	s0,8(sp)
   1b020:	4492                	lw	s1,4(sp)
   1b022:	0141                	addi	sp,sp,16
   1b024:	8082                	ret
   1b026:	40b2                	lw	ra,12(sp)
   1b028:	4422                	lw	s0,8(sp)
   1b02a:	4492                	lw	s1,4(sp)
   1b02c:	4505                	li	a0,1
   1b02e:	0141                	addi	sp,sp,16
   1b030:	8082                	ret
   1b032:	40b2                	lw	ra,12(sp)
   1b034:	4422                	lw	s0,8(sp)
   1b036:	4492                	lw	s1,4(sp)
   1b038:	450d                	li	a0,3
   1b03a:	0141                	addi	sp,sp,16
   1b03c:	8082                	ret
   1b03e:	4509                	li	a0,2
   1b040:	bff1                	j	1b01c <__sigtramp_r+0x38>
   1b042:	08000593          	li	a1,128
   1b046:	f3ef90ef          	jal	14784 <_malloc_r>
   1b04a:	10a4ac23          	sw	a0,280(s1)
   1b04e:	87aa                	mv	a5,a0
   1b050:	c911                	beqz	a0,1b064 <__sigtramp_r+0x80>
   1b052:	872a                	mv	a4,a0
   1b054:	08050693          	addi	a3,a0,128
   1b058:	00072023          	sw	zero,0(a4)
   1b05c:	0711                	addi	a4,a4,4
   1b05e:	fed71de3          	bne	a4,a3,1b058 <__sigtramp_r+0x74>
   1b062:	bf69                	j	1affc <__sigtramp_r+0x18>
   1b064:	557d                	li	a0,-1
   1b066:	bf5d                	j	1b01c <__sigtramp_r+0x38>
   1b068:	557d                	li	a0,-1
   1b06a:	8082                	ret

0001b06c <raise>:
   1b06c:	1141                	addi	sp,sp,-16
   1b06e:	c226                	sw	s1,4(sp)
   1b070:	c606                	sw	ra,12(sp)
   1b072:	47fd                	li	a5,31
   1b074:	f141a483          	lw	s1,-236(gp) # 1f8cc <_impure_ptr>
   1b078:	04a7ed63          	bltu	a5,a0,1b0d2 <raise+0x66>
   1b07c:	1184a783          	lw	a5,280(s1)
   1b080:	c422                	sw	s0,8(sp)
   1b082:	842a                	mv	s0,a0
   1b084:	c78d                	beqz	a5,1b0ae <raise+0x42>
   1b086:	00251713          	slli	a4,a0,0x2
   1b08a:	97ba                	add	a5,a5,a4
   1b08c:	4398                	lw	a4,0(a5)
   1b08e:	c305                	beqz	a4,1b0ae <raise+0x42>
   1b090:	4685                	li	a3,1
   1b092:	00d70863          	beq	a4,a3,1b0a2 <raise+0x36>
   1b096:	56fd                	li	a3,-1
   1b098:	02d70563          	beq	a4,a3,1b0c2 <raise+0x56>
   1b09c:	0007a023          	sw	zero,0(a5)
   1b0a0:	9702                	jalr	a4
   1b0a2:	4422                	lw	s0,8(sp)
   1b0a4:	4501                	li	a0,0
   1b0a6:	40b2                	lw	ra,12(sp)
   1b0a8:	4492                	lw	s1,4(sp)
   1b0aa:	0141                	addi	sp,sp,16
   1b0ac:	8082                	ret
   1b0ae:	8526                	mv	a0,s1
   1b0b0:	2a51                	jal	1b244 <_getpid_r>
   1b0b2:	8622                	mv	a2,s0
   1b0b4:	4422                	lw	s0,8(sp)
   1b0b6:	40b2                	lw	ra,12(sp)
   1b0b8:	85aa                	mv	a1,a0
   1b0ba:	8526                	mv	a0,s1
   1b0bc:	4492                	lw	s1,4(sp)
   1b0be:	0141                	addi	sp,sp,16
   1b0c0:	a2b1                	j	1b20c <_kill_r>
   1b0c2:	4422                	lw	s0,8(sp)
   1b0c4:	40b2                	lw	ra,12(sp)
   1b0c6:	47d9                	li	a5,22
   1b0c8:	c09c                	sw	a5,0(s1)
   1b0ca:	4505                	li	a0,1
   1b0cc:	4492                	lw	s1,4(sp)
   1b0ce:	0141                	addi	sp,sp,16
   1b0d0:	8082                	ret
   1b0d2:	47d9                	li	a5,22
   1b0d4:	c09c                	sw	a5,0(s1)
   1b0d6:	557d                	li	a0,-1
   1b0d8:	b7f9                	j	1b0a6 <raise+0x3a>

0001b0da <signal>:
   1b0da:	1141                	addi	sp,sp,-16
   1b0dc:	c04a                	sw	s2,0(sp)
   1b0de:	c606                	sw	ra,12(sp)
   1b0e0:	47fd                	li	a5,31
   1b0e2:	f141a903          	lw	s2,-236(gp) # 1f8cc <_impure_ptr>
   1b0e6:	02a7e463          	bltu	a5,a0,1b10e <signal+0x34>
   1b0ea:	c422                	sw	s0,8(sp)
   1b0ec:	842a                	mv	s0,a0
   1b0ee:	11892503          	lw	a0,280(s2)
   1b0f2:	c226                	sw	s1,4(sp)
   1b0f4:	84ae                	mv	s1,a1
   1b0f6:	c10d                	beqz	a0,1b118 <signal+0x3e>
   1b0f8:	040a                	slli	s0,s0,0x2
   1b0fa:	008507b3          	add	a5,a0,s0
   1b0fe:	4388                	lw	a0,0(a5)
   1b100:	4422                	lw	s0,8(sp)
   1b102:	c384                	sw	s1,0(a5)
   1b104:	4492                	lw	s1,4(sp)
   1b106:	40b2                	lw	ra,12(sp)
   1b108:	4902                	lw	s2,0(sp)
   1b10a:	0141                	addi	sp,sp,16
   1b10c:	8082                	ret
   1b10e:	47d9                	li	a5,22
   1b110:	00f92023          	sw	a5,0(s2)
   1b114:	557d                	li	a0,-1
   1b116:	bfc5                	j	1b106 <signal+0x2c>
   1b118:	08000593          	li	a1,128
   1b11c:	854a                	mv	a0,s2
   1b11e:	e66f90ef          	jal	14784 <_malloc_r>
   1b122:	10a92c23          	sw	a0,280(s2)
   1b126:	87aa                	mv	a5,a0
   1b128:	08050713          	addi	a4,a0,128
   1b12c:	c519                	beqz	a0,1b13a <signal+0x60>
   1b12e:	0007a023          	sw	zero,0(a5)
   1b132:	0791                	addi	a5,a5,4
   1b134:	fef71de3          	bne	a4,a5,1b12e <signal+0x54>
   1b138:	b7c1                	j	1b0f8 <signal+0x1e>
   1b13a:	4422                	lw	s0,8(sp)
   1b13c:	4492                	lw	s1,4(sp)
   1b13e:	557d                	li	a0,-1
   1b140:	b7d9                	j	1b106 <signal+0x2c>

0001b142 <_init_signal>:
   1b142:	1141                	addi	sp,sp,-16
   1b144:	c422                	sw	s0,8(sp)
   1b146:	f141a403          	lw	s0,-236(gp) # 1f8cc <_impure_ptr>
   1b14a:	c606                	sw	ra,12(sp)
   1b14c:	11842783          	lw	a5,280(s0)
   1b150:	c791                	beqz	a5,1b15c <_init_signal+0x1a>
   1b152:	4501                	li	a0,0
   1b154:	40b2                	lw	ra,12(sp)
   1b156:	4422                	lw	s0,8(sp)
   1b158:	0141                	addi	sp,sp,16
   1b15a:	8082                	ret
   1b15c:	08000593          	li	a1,128
   1b160:	8522                	mv	a0,s0
   1b162:	e22f90ef          	jal	14784 <_malloc_r>
   1b166:	10a42c23          	sw	a0,280(s0)
   1b16a:	c909                	beqz	a0,1b17c <_init_signal+0x3a>
   1b16c:	08050793          	addi	a5,a0,128
   1b170:	00052023          	sw	zero,0(a0)
   1b174:	0511                	addi	a0,a0,4
   1b176:	fef51de3          	bne	a0,a5,1b170 <_init_signal+0x2e>
   1b17a:	bfe1                	j	1b152 <_init_signal+0x10>
   1b17c:	557d                	li	a0,-1
   1b17e:	bfd9                	j	1b154 <_init_signal+0x12>

0001b180 <__sigtramp>:
   1b180:	1141                	addi	sp,sp,-16
   1b182:	c226                	sw	s1,4(sp)
   1b184:	c606                	sw	ra,12(sp)
   1b186:	47fd                	li	a5,31
   1b188:	f141a483          	lw	s1,-236(gp) # 1f8cc <_impure_ptr>
   1b18c:	06a7ee63          	bltu	a5,a0,1b208 <__sigtramp+0x88>
   1b190:	1184a783          	lw	a5,280(s1)
   1b194:	c422                	sw	s0,8(sp)
   1b196:	842a                	mv	s0,a0
   1b198:	c7a9                	beqz	a5,1b1e2 <__sigtramp+0x62>
   1b19a:	00241713          	slli	a4,s0,0x2
   1b19e:	97ba                	add	a5,a5,a4
   1b1a0:	4398                	lw	a4,0(a5)
   1b1a2:	c30d                	beqz	a4,1b1c4 <__sigtramp+0x44>
   1b1a4:	56fd                	li	a3,-1
   1b1a6:	02d70b63          	beq	a4,a3,1b1dc <__sigtramp+0x5c>
   1b1aa:	4685                	li	a3,1
   1b1ac:	02d70263          	beq	a4,a3,1b1d0 <__sigtramp+0x50>
   1b1b0:	8522                	mv	a0,s0
   1b1b2:	0007a023          	sw	zero,0(a5)
   1b1b6:	9702                	jalr	a4
   1b1b8:	4422                	lw	s0,8(sp)
   1b1ba:	4501                	li	a0,0
   1b1bc:	40b2                	lw	ra,12(sp)
   1b1be:	4492                	lw	s1,4(sp)
   1b1c0:	0141                	addi	sp,sp,16
   1b1c2:	8082                	ret
   1b1c4:	4422                	lw	s0,8(sp)
   1b1c6:	40b2                	lw	ra,12(sp)
   1b1c8:	4492                	lw	s1,4(sp)
   1b1ca:	4505                	li	a0,1
   1b1cc:	0141                	addi	sp,sp,16
   1b1ce:	8082                	ret
   1b1d0:	4422                	lw	s0,8(sp)
   1b1d2:	40b2                	lw	ra,12(sp)
   1b1d4:	4492                	lw	s1,4(sp)
   1b1d6:	450d                	li	a0,3
   1b1d8:	0141                	addi	sp,sp,16
   1b1da:	8082                	ret
   1b1dc:	4422                	lw	s0,8(sp)
   1b1de:	4509                	li	a0,2
   1b1e0:	bff1                	j	1b1bc <__sigtramp+0x3c>
   1b1e2:	08000593          	li	a1,128
   1b1e6:	8526                	mv	a0,s1
   1b1e8:	d9cf90ef          	jal	14784 <_malloc_r>
   1b1ec:	10a4ac23          	sw	a0,280(s1)
   1b1f0:	87aa                	mv	a5,a0
   1b1f2:	c911                	beqz	a0,1b206 <__sigtramp+0x86>
   1b1f4:	872a                	mv	a4,a0
   1b1f6:	08050693          	addi	a3,a0,128
   1b1fa:	00072023          	sw	zero,0(a4)
   1b1fe:	0711                	addi	a4,a4,4
   1b200:	fee69de3          	bne	a3,a4,1b1fa <__sigtramp+0x7a>
   1b204:	bf59                	j	1b19a <__sigtramp+0x1a>
   1b206:	4422                	lw	s0,8(sp)
   1b208:	557d                	li	a0,-1
   1b20a:	bf4d                	j	1b1bc <__sigtramp+0x3c>

0001b20c <_kill_r>:
   1b20c:	1141                	addi	sp,sp,-16
   1b20e:	872e                	mv	a4,a1
   1b210:	c422                	sw	s0,8(sp)
   1b212:	c226                	sw	s1,4(sp)
   1b214:	842a                	mv	s0,a0
   1b216:	85b2                	mv	a1,a2
   1b218:	853a                	mv	a0,a4
   1b21a:	c606                	sw	ra,12(sp)
   1b21c:	f201a223          	sw	zero,-220(gp) # 1f8dc <errno>
   1b220:	28d9                	jal	1b2f6 <_kill>
   1b222:	57fd                	li	a5,-1
   1b224:	00f50763          	beq	a0,a5,1b232 <_kill_r+0x26>
   1b228:	40b2                	lw	ra,12(sp)
   1b22a:	4422                	lw	s0,8(sp)
   1b22c:	4492                	lw	s1,4(sp)
   1b22e:	0141                	addi	sp,sp,16
   1b230:	8082                	ret
   1b232:	f241a783          	lw	a5,-220(gp) # 1f8dc <errno>
   1b236:	dbed                	beqz	a5,1b228 <_kill_r+0x1c>
   1b238:	40b2                	lw	ra,12(sp)
   1b23a:	c01c                	sw	a5,0(s0)
   1b23c:	4422                	lw	s0,8(sp)
   1b23e:	4492                	lw	s1,4(sp)
   1b240:	0141                	addi	sp,sp,16
   1b242:	8082                	ret

0001b244 <_getpid_r>:
   1b244:	a069                	j	1b2ce <_getpid>

0001b246 <_close>:
   1b246:	1141                	addi	sp,sp,-16
   1b248:	c606                	sw	ra,12(sp)
   1b24a:	c422                	sw	s0,8(sp)
   1b24c:	03900893          	li	a7,57
   1b250:	00000073          	ecall
   1b254:	842a                	mv	s0,a0
   1b256:	00054763          	bltz	a0,1b264 <_close+0x1e>
   1b25a:	40b2                	lw	ra,12(sp)
   1b25c:	8522                	mv	a0,s0
   1b25e:	4422                	lw	s0,8(sp)
   1b260:	0141                	addi	sp,sp,16
   1b262:	8082                	ret
   1b264:	40800433          	neg	s0,s0
   1b268:	c63ff0ef          	jal	1aeca <__errno>
   1b26c:	c100                	sw	s0,0(a0)
   1b26e:	547d                	li	s0,-1
   1b270:	b7ed                	j	1b25a <_close+0x14>

0001b272 <_exit>:
   1b272:	05d00893          	li	a7,93
   1b276:	00000073          	ecall
   1b27a:	00054363          	bltz	a0,1b280 <_exit+0xe>
   1b27e:	a001                	j	1b27e <_exit+0xc>
   1b280:	1141                	addi	sp,sp,-16
   1b282:	c422                	sw	s0,8(sp)
   1b284:	842a                	mv	s0,a0
   1b286:	c606                	sw	ra,12(sp)
   1b288:	40800433          	neg	s0,s0
   1b28c:	c3fff0ef          	jal	1aeca <__errno>
   1b290:	c100                	sw	s0,0(a0)
   1b292:	a001                	j	1b292 <_exit+0x20>

0001b294 <_fstat>:
   1b294:	7175                	addi	sp,sp,-144
   1b296:	c326                	sw	s1,132(sp)
   1b298:	c706                	sw	ra,140(sp)
   1b29a:	84ae                	mv	s1,a1
   1b29c:	c522                	sw	s0,136(sp)
   1b29e:	05000893          	li	a7,80
   1b2a2:	858a                	mv	a1,sp
   1b2a4:	00000073          	ecall
   1b2a8:	842a                	mv	s0,a0
   1b2aa:	00054b63          	bltz	a0,1b2c0 <_fstat+0x2c>
   1b2ae:	8526                	mv	a0,s1
   1b2b0:	858a                	mv	a1,sp
   1b2b2:	2a05                	jal	1b3e2 <_conv_stat>
   1b2b4:	40ba                	lw	ra,140(sp)
   1b2b6:	8522                	mv	a0,s0
   1b2b8:	442a                	lw	s0,136(sp)
   1b2ba:	449a                	lw	s1,132(sp)
   1b2bc:	6149                	addi	sp,sp,144
   1b2be:	8082                	ret
   1b2c0:	40800433          	neg	s0,s0
   1b2c4:	c07ff0ef          	jal	1aeca <__errno>
   1b2c8:	c100                	sw	s0,0(a0)
   1b2ca:	547d                	li	s0,-1
   1b2cc:	b7cd                	j	1b2ae <_fstat+0x1a>

0001b2ce <_getpid>:
   1b2ce:	4505                	li	a0,1
   1b2d0:	8082                	ret

0001b2d2 <_isatty>:
   1b2d2:	7159                	addi	sp,sp,-112
   1b2d4:	002c                	addi	a1,sp,8
   1b2d6:	d686                	sw	ra,108(sp)
   1b2d8:	fbdff0ef          	jal	1b294 <_fstat>
   1b2dc:	57fd                	li	a5,-1
   1b2de:	00f50863          	beq	a0,a5,1b2ee <_isatty+0x1c>
   1b2e2:	4532                	lw	a0,12(sp)
   1b2e4:	50b6                	lw	ra,108(sp)
   1b2e6:	8135                	srli	a0,a0,0xd
   1b2e8:	8905                	andi	a0,a0,1
   1b2ea:	6165                	addi	sp,sp,112
   1b2ec:	8082                	ret
   1b2ee:	50b6                	lw	ra,108(sp)
   1b2f0:	4501                	li	a0,0
   1b2f2:	6165                	addi	sp,sp,112
   1b2f4:	8082                	ret

0001b2f6 <_kill>:
   1b2f6:	1141                	addi	sp,sp,-16
   1b2f8:	c606                	sw	ra,12(sp)
   1b2fa:	bd1ff0ef          	jal	1aeca <__errno>
   1b2fe:	40b2                	lw	ra,12(sp)
   1b300:	47d9                	li	a5,22
   1b302:	c11c                	sw	a5,0(a0)
   1b304:	557d                	li	a0,-1
   1b306:	0141                	addi	sp,sp,16
   1b308:	8082                	ret

0001b30a <_lseek>:
   1b30a:	1141                	addi	sp,sp,-16
   1b30c:	c606                	sw	ra,12(sp)
   1b30e:	c422                	sw	s0,8(sp)
   1b310:	03e00893          	li	a7,62
   1b314:	00000073          	ecall
   1b318:	842a                	mv	s0,a0
   1b31a:	00054763          	bltz	a0,1b328 <_lseek+0x1e>
   1b31e:	40b2                	lw	ra,12(sp)
   1b320:	8522                	mv	a0,s0
   1b322:	4422                	lw	s0,8(sp)
   1b324:	0141                	addi	sp,sp,16
   1b326:	8082                	ret
   1b328:	40800433          	neg	s0,s0
   1b32c:	b9fff0ef          	jal	1aeca <__errno>
   1b330:	c100                	sw	s0,0(a0)
   1b332:	547d                	li	s0,-1
   1b334:	b7ed                	j	1b31e <_lseek+0x14>

0001b336 <_read>:
   1b336:	1141                	addi	sp,sp,-16
   1b338:	c606                	sw	ra,12(sp)
   1b33a:	c422                	sw	s0,8(sp)
   1b33c:	03f00893          	li	a7,63
   1b340:	00000073          	ecall
   1b344:	842a                	mv	s0,a0
   1b346:	00054763          	bltz	a0,1b354 <_read+0x1e>
   1b34a:	40b2                	lw	ra,12(sp)
   1b34c:	8522                	mv	a0,s0
   1b34e:	4422                	lw	s0,8(sp)
   1b350:	0141                	addi	sp,sp,16
   1b352:	8082                	ret
   1b354:	40800433          	neg	s0,s0
   1b358:	b73ff0ef          	jal	1aeca <__errno>
   1b35c:	c100                	sw	s0,0(a0)
   1b35e:	547d                	li	s0,-1
   1b360:	b7ed                	j	1b34a <_read+0x14>

0001b362 <_sbrk>:
   1b362:	f3c1a703          	lw	a4,-196(gp) # 1f8f4 <heap_end.0>
   1b366:	1141                	addi	sp,sp,-16
   1b368:	c606                	sw	ra,12(sp)
   1b36a:	87aa                	mv	a5,a0
   1b36c:	ef01                	bnez	a4,1b384 <_sbrk+0x22>
   1b36e:	0d600893          	li	a7,214
   1b372:	4501                	li	a0,0
   1b374:	00000073          	ecall
   1b378:	567d                	li	a2,-1
   1b37a:	872a                	mv	a4,a0
   1b37c:	02c50563          	beq	a0,a2,1b3a6 <_sbrk+0x44>
   1b380:	f2a1ae23          	sw	a0,-196(gp) # 1f8f4 <heap_end.0>
   1b384:	0d600893          	li	a7,214
   1b388:	00e78533          	add	a0,a5,a4
   1b38c:	00000073          	ecall
   1b390:	f3c1a703          	lw	a4,-196(gp) # 1f8f4 <heap_end.0>
   1b394:	97ba                	add	a5,a5,a4
   1b396:	00f51863          	bne	a0,a5,1b3a6 <_sbrk+0x44>
   1b39a:	40b2                	lw	ra,12(sp)
   1b39c:	f2a1ae23          	sw	a0,-196(gp) # 1f8f4 <heap_end.0>
   1b3a0:	853a                	mv	a0,a4
   1b3a2:	0141                	addi	sp,sp,16
   1b3a4:	8082                	ret
   1b3a6:	b25ff0ef          	jal	1aeca <__errno>
   1b3aa:	40b2                	lw	ra,12(sp)
   1b3ac:	47b1                	li	a5,12
   1b3ae:	c11c                	sw	a5,0(a0)
   1b3b0:	557d                	li	a0,-1
   1b3b2:	0141                	addi	sp,sp,16
   1b3b4:	8082                	ret

0001b3b6 <_write>:
   1b3b6:	1141                	addi	sp,sp,-16
   1b3b8:	c606                	sw	ra,12(sp)
   1b3ba:	c422                	sw	s0,8(sp)
   1b3bc:	04000893          	li	a7,64
   1b3c0:	00000073          	ecall
   1b3c4:	842a                	mv	s0,a0
   1b3c6:	00054763          	bltz	a0,1b3d4 <_write+0x1e>
   1b3ca:	40b2                	lw	ra,12(sp)
   1b3cc:	8522                	mv	a0,s0
   1b3ce:	4422                	lw	s0,8(sp)
   1b3d0:	0141                	addi	sp,sp,16
   1b3d2:	8082                	ret
   1b3d4:	40800433          	neg	s0,s0
   1b3d8:	af3ff0ef          	jal	1aeca <__errno>
   1b3dc:	c100                	sw	s0,0(a0)
   1b3de:	547d                	li	s0,-1
   1b3e0:	b7ed                	j	1b3ca <_write+0x14>

0001b3e2 <_conv_stat>:
   1b3e2:	0185d703          	lhu	a4,24(a1)
   1b3e6:	0145d783          	lhu	a5,20(a1)
   1b3ea:	1141                	addi	sp,sp,-16
   1b3ec:	01c5a283          	lw	t0,28(a1)
   1b3f0:	0205af83          	lw	t6,32(a1)
   1b3f4:	0305af03          	lw	t5,48(a1)
   1b3f8:	0405ae83          	lw	t4,64(a1)
   1b3fc:	0385ae03          	lw	t3,56(a1)
   1b400:	0485a303          	lw	t1,72(a1)
   1b404:	04c5a383          	lw	t2,76(a1)
   1b408:	0585a803          	lw	a6,88(a1)
   1b40c:	05c5a883          	lw	a7,92(a1)
   1b410:	c622                	sw	s0,12(sp)
   1b412:	c426                	sw	s1,8(sp)
   1b414:	4980                	lw	s0,16(a1)
   1b416:	4584                	lw	s1,8(a1)
   1b418:	c24a                	sw	s2,4(sp)
   1b41a:	0005a903          	lw	s2,0(a1)
   1b41e:	55b0                	lw	a2,104(a1)
   1b420:	0742                	slli	a4,a4,0x10
   1b422:	8fd9                	or	a5,a5,a4
   1b424:	55f4                	lw	a3,108(a1)
   1b426:	01251023          	sh	s2,0(a0)
   1b42a:	00951123          	sh	s1,2(a0)
   1b42e:	c140                	sw	s0,4(a0)
   1b430:	c51c                	sw	a5,8(a0)
   1b432:	00551623          	sh	t0,12(a0)
   1b436:	01f51723          	sh	t6,14(a0)
   1b43a:	01e52823          	sw	t5,16(a0)
   1b43e:	05d52623          	sw	t4,76(a0)
   1b442:	05c52423          	sw	t3,72(a0)
   1b446:	00652c23          	sw	t1,24(a0)
   1b44a:	00752e23          	sw	t2,28(a0)
   1b44e:	03052423          	sw	a6,40(a0)
   1b452:	03152623          	sw	a7,44(a0)
   1b456:	dd10                	sw	a2,56(a0)
   1b458:	4432                	lw	s0,12(sp)
   1b45a:	dd54                	sw	a3,60(a0)
   1b45c:	44a2                	lw	s1,8(sp)
   1b45e:	4912                	lw	s2,4(sp)
   1b460:	0141                	addi	sp,sp,16
   1b462:	8082                	ret

0001b464 <__eqtf2>:
   1b464:	411c                	lw	a5,0(a0)
   1b466:	00452e03          	lw	t3,4(a0)
   1b46a:	00852e83          	lw	t4,8(a0)
   1b46e:	4554                	lw	a3,12(a0)
   1b470:	4198                	lw	a4,0(a1)
   1b472:	0045af83          	lw	t6,4(a1)
   1b476:	0085af03          	lw	t5,8(a1)
   1b47a:	00c5a883          	lw	a7,12(a1)
   1b47e:	1141                	addi	sp,sp,-16
   1b480:	00202673          	frrm	a2
   1b484:	6521                	lui	a0,0x8
   1b486:	0106d613          	srli	a2,a3,0x10
   1b48a:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1b48c:	01069313          	slli	t1,a3,0x10
   1b490:	01089593          	slli	a1,a7,0x10
   1b494:	01f6d813          	srli	a6,a3,0x1f
   1b498:	8e69                	and	a2,a2,a0
   1b49a:	0108d693          	srli	a3,a7,0x10
   1b49e:	01035313          	srli	t1,t1,0x10
   1b4a2:	81c1                	srli	a1,a1,0x10
   1b4a4:	8ee9                	and	a3,a3,a0
   1b4a6:	01f8d893          	srli	a7,a7,0x1f
   1b4aa:	00a61c63          	bne	a2,a0,1b4c2 <__eqtf2+0x5e>
   1b4ae:	01c7e533          	or	a0,a5,t3
   1b4b2:	01d56533          	or	a0,a0,t4
   1b4b6:	00656533          	or	a0,a0,t1
   1b4ba:	e51d                	bnez	a0,1b4e8 <__eqtf2+0x84>
   1b4bc:	04c69b63          	bne	a3,a2,1b512 <__eqtf2+0xae>
   1b4c0:	a019                	j	1b4c6 <__eqtf2+0x62>
   1b4c2:	04a69a63          	bne	a3,a0,1b516 <__eqtf2+0xb2>
   1b4c6:	01f76533          	or	a0,a4,t6
   1b4ca:	01e56533          	or	a0,a0,t5
   1b4ce:	8d4d                	or	a0,a0,a1
   1b4d0:	c139                	beqz	a0,1b516 <__eqtf2+0xb2>
   1b4d2:	6521                	lui	a0,0x8
   1b4d4:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1b4d6:	02a61a63          	bne	a2,a0,1b50a <__eqtf2+0xa6>
   1b4da:	01c7e7b3          	or	a5,a5,t3
   1b4de:	01d7e7b3          	or	a5,a5,t4
   1b4e2:	0067e7b3          	or	a5,a5,t1
   1b4e6:	cb99                	beqz	a5,1b4fc <__eqtf2+0x98>
   1b4e8:	0342                	slli	t1,t1,0x10
   1b4ea:	41035313          	srai	t1,t1,0x10
   1b4ee:	04035c63          	bgez	t1,1b546 <__eqtf2+0xe2>
   1b4f2:	67a1                	lui	a5,0x8
   1b4f4:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b4f6:	4505                	li	a0,1
   1b4f8:	04f69563          	bne	a3,a5,1b542 <__eqtf2+0xde>
   1b4fc:	01f76733          	or	a4,a4,t6
   1b500:	01e76733          	or	a4,a4,t5
   1b504:	8f4d                	or	a4,a4,a1
   1b506:	4505                	li	a0,1
   1b508:	cf0d                	beqz	a4,1b542 <__eqtf2+0xde>
   1b50a:	05c2                	slli	a1,a1,0x10
   1b50c:	85c1                	srai	a1,a1,0x10
   1b50e:	0205dc63          	bgez	a1,1b546 <__eqtf2+0xe2>
   1b512:	4505                	li	a0,1
   1b514:	a03d                	j	1b542 <__eqtf2+0xde>
   1b516:	4505                	li	a0,1
   1b518:	02c69563          	bne	a3,a2,1b542 <__eqtf2+0xde>
   1b51c:	02e79363          	bne	a5,a4,1b542 <__eqtf2+0xde>
   1b520:	03fe1163          	bne	t3,t6,1b542 <__eqtf2+0xde>
   1b524:	01ee9f63          	bne	t4,t5,1b542 <__eqtf2+0xde>
   1b528:	00b31d63          	bne	t1,a1,1b542 <__eqtf2+0xde>
   1b52c:	03180063          	beq	a6,a7,1b54c <__eqtf2+0xe8>
   1b530:	ea89                	bnez	a3,1b542 <__eqtf2+0xde>
   1b532:	01c7e533          	or	a0,a5,t3
   1b536:	01d56533          	or	a0,a0,t4
   1b53a:	00656533          	or	a0,a0,t1
   1b53e:	00a03533          	snez	a0,a0
   1b542:	0141                	addi	sp,sp,16
   1b544:	8082                	ret
   1b546:	00186073          	csrsi	fflags,16
   1b54a:	b7e1                	j	1b512 <__eqtf2+0xae>
   1b54c:	4501                	li	a0,0
   1b54e:	bfd5                	j	1b542 <__eqtf2+0xde>

0001b550 <__getf2>:
   1b550:	00052883          	lw	a7,0(a0)
   1b554:	00452303          	lw	t1,4(a0)
   1b558:	00852e03          	lw	t3,8(a0)
   1b55c:	455c                	lw	a5,12(a0)
   1b55e:	0005ae83          	lw	t4,0(a1)
   1b562:	0045af03          	lw	t5,4(a1)
   1b566:	0085af83          	lw	t6,8(a1)
   1b56a:	45d4                	lw	a3,12(a1)
   1b56c:	1141                	addi	sp,sp,-16
   1b56e:	00202773          	frrm	a4
   1b572:	6721                	lui	a4,0x8
   1b574:	0107d613          	srli	a2,a5,0x10
   1b578:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b57a:	01079813          	slli	a6,a5,0x10
   1b57e:	01069293          	slli	t0,a3,0x10
   1b582:	0106d513          	srli	a0,a3,0x10
   1b586:	8e79                	and	a2,a2,a4
   1b588:	01085813          	srli	a6,a6,0x10
   1b58c:	83fd                	srli	a5,a5,0x1f
   1b58e:	0102d293          	srli	t0,t0,0x10
   1b592:	8d79                	and	a0,a0,a4
   1b594:	82fd                	srli	a3,a3,0x1f
   1b596:	00e61963          	bne	a2,a4,1b5a8 <__getf2+0x58>
   1b59a:	01136733          	or	a4,t1,a7
   1b59e:	01c76733          	or	a4,a4,t3
   1b5a2:	01076733          	or	a4,a4,a6
   1b5a6:	ef35                	bnez	a4,1b622 <__getf2+0xd2>
   1b5a8:	6721                	lui	a4,0x8
   1b5aa:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b5ac:	00e51963          	bne	a0,a4,1b5be <__getf2+0x6e>
   1b5b0:	01eee733          	or	a4,t4,t5
   1b5b4:	01f76733          	or	a4,a4,t6
   1b5b8:	00576733          	or	a4,a4,t0
   1b5bc:	e33d                	bnez	a4,1b622 <__getf2+0xd2>
   1b5be:	4701                	li	a4,0
   1b5c0:	ea09                	bnez	a2,1b5d2 <__getf2+0x82>
   1b5c2:	01136733          	or	a4,t1,a7
   1b5c6:	01c76733          	or	a4,a4,t3
   1b5ca:	01076733          	or	a4,a4,a6
   1b5ce:	00173713          	seqz	a4,a4
   1b5d2:	ed21                	bnez	a0,1b62a <__getf2+0xda>
   1b5d4:	01eee5b3          	or	a1,t4,t5
   1b5d8:	01f5e5b3          	or	a1,a1,t6
   1b5dc:	0055e5b3          	or	a1,a1,t0
   1b5e0:	c711                	beqz	a4,1b5ec <__getf2+0x9c>
   1b5e2:	c981                	beqz	a1,1b5f2 <__getf2+0xa2>
   1b5e4:	4505                	li	a0,1
   1b5e6:	e691                	bnez	a3,1b5f2 <__getf2+0xa2>
   1b5e8:	557d                	li	a0,-1
   1b5ea:	a021                	j	1b5f2 <__getf2+0xa2>
   1b5ec:	e1a1                	bnez	a1,1b62c <__getf2+0xdc>
   1b5ee:	557d                	li	a0,-1
   1b5f0:	c7a1                	beqz	a5,1b638 <__getf2+0xe8>
   1b5f2:	0141                	addi	sp,sp,16
   1b5f4:	8082                	ret
   1b5f6:	fea647e3          	blt	a2,a0,1b5e4 <__getf2+0x94>
   1b5fa:	ff02eae3          	bltu	t0,a6,1b5ee <__getf2+0x9e>
   1b5fe:	00581f63          	bne	a6,t0,1b61c <__getf2+0xcc>
   1b602:	ffcfe6e3          	bltu	t6,t3,1b5ee <__getf2+0x9e>
   1b606:	01fe1b63          	bne	t3,t6,1b61c <__getf2+0xcc>
   1b60a:	fe6f62e3          	bltu	t5,t1,1b5ee <__getf2+0x9e>
   1b60e:	01e31763          	bne	t1,t5,1b61c <__getf2+0xcc>
   1b612:	fd1eeee3          	bltu	t4,a7,1b5ee <__getf2+0x9e>
   1b616:	4501                	li	a0,0
   1b618:	fdd8fde3          	bgeu	a7,t4,1b5f2 <__getf2+0xa2>
   1b61c:	4505                	li	a0,1
   1b61e:	fbf1                	bnez	a5,1b5f2 <__getf2+0xa2>
   1b620:	b7e1                	j	1b5e8 <__getf2+0x98>
   1b622:	00186073          	csrsi	fflags,16
   1b626:	5579                	li	a0,-2
   1b628:	b7e9                	j	1b5f2 <__getf2+0xa2>
   1b62a:	ff4d                	bnez	a4,1b5e4 <__getf2+0x94>
   1b62c:	fcf691e3          	bne	a3,a5,1b5ee <__getf2+0x9e>
   1b630:	fcc553e3          	bge	a0,a2,1b5f6 <__getf2+0xa6>
   1b634:	557d                	li	a0,-1
   1b636:	fed5                	bnez	a3,1b5f2 <__getf2+0xa2>
   1b638:	4505                	li	a0,1
   1b63a:	bf65                	j	1b5f2 <__getf2+0xa2>

0001b63c <__letf2>:
   1b63c:	00052883          	lw	a7,0(a0)
   1b640:	00452303          	lw	t1,4(a0)
   1b644:	00852e03          	lw	t3,8(a0)
   1b648:	455c                	lw	a5,12(a0)
   1b64a:	0005ae83          	lw	t4,0(a1)
   1b64e:	0045af03          	lw	t5,4(a1)
   1b652:	0085af83          	lw	t6,8(a1)
   1b656:	45d4                	lw	a3,12(a1)
   1b658:	1141                	addi	sp,sp,-16
   1b65a:	00202773          	frrm	a4
   1b65e:	6721                	lui	a4,0x8
   1b660:	0107d613          	srli	a2,a5,0x10
   1b664:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b666:	01079813          	slli	a6,a5,0x10
   1b66a:	01069293          	slli	t0,a3,0x10
   1b66e:	0106d513          	srli	a0,a3,0x10
   1b672:	8e79                	and	a2,a2,a4
   1b674:	01085813          	srli	a6,a6,0x10
   1b678:	83fd                	srli	a5,a5,0x1f
   1b67a:	0102d293          	srli	t0,t0,0x10
   1b67e:	8d79                	and	a0,a0,a4
   1b680:	82fd                	srli	a3,a3,0x1f
   1b682:	00e61963          	bne	a2,a4,1b694 <__letf2+0x58>
   1b686:	01136733          	or	a4,t1,a7
   1b68a:	01c76733          	or	a4,a4,t3
   1b68e:	01076733          	or	a4,a4,a6
   1b692:	ef35                	bnez	a4,1b70e <__letf2+0xd2>
   1b694:	6721                	lui	a4,0x8
   1b696:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b698:	00e51963          	bne	a0,a4,1b6aa <__letf2+0x6e>
   1b69c:	01eee733          	or	a4,t4,t5
   1b6a0:	01f76733          	or	a4,a4,t6
   1b6a4:	00576733          	or	a4,a4,t0
   1b6a8:	e33d                	bnez	a4,1b70e <__letf2+0xd2>
   1b6aa:	4701                	li	a4,0
   1b6ac:	ea09                	bnez	a2,1b6be <__letf2+0x82>
   1b6ae:	01136733          	or	a4,t1,a7
   1b6b2:	01c76733          	or	a4,a4,t3
   1b6b6:	01076733          	or	a4,a4,a6
   1b6ba:	00173713          	seqz	a4,a4
   1b6be:	ed21                	bnez	a0,1b716 <__letf2+0xda>
   1b6c0:	01eee5b3          	or	a1,t4,t5
   1b6c4:	01f5e5b3          	or	a1,a1,t6
   1b6c8:	0055e5b3          	or	a1,a1,t0
   1b6cc:	c711                	beqz	a4,1b6d8 <__letf2+0x9c>
   1b6ce:	c981                	beqz	a1,1b6de <__letf2+0xa2>
   1b6d0:	4505                	li	a0,1
   1b6d2:	e691                	bnez	a3,1b6de <__letf2+0xa2>
   1b6d4:	557d                	li	a0,-1
   1b6d6:	a021                	j	1b6de <__letf2+0xa2>
   1b6d8:	e1a1                	bnez	a1,1b718 <__letf2+0xdc>
   1b6da:	557d                	li	a0,-1
   1b6dc:	c7a1                	beqz	a5,1b724 <__letf2+0xe8>
   1b6de:	0141                	addi	sp,sp,16
   1b6e0:	8082                	ret
   1b6e2:	fea647e3          	blt	a2,a0,1b6d0 <__letf2+0x94>
   1b6e6:	ff02eae3          	bltu	t0,a6,1b6da <__letf2+0x9e>
   1b6ea:	00581f63          	bne	a6,t0,1b708 <__letf2+0xcc>
   1b6ee:	ffcfe6e3          	bltu	t6,t3,1b6da <__letf2+0x9e>
   1b6f2:	01fe1b63          	bne	t3,t6,1b708 <__letf2+0xcc>
   1b6f6:	fe6f62e3          	bltu	t5,t1,1b6da <__letf2+0x9e>
   1b6fa:	01e31763          	bne	t1,t5,1b708 <__letf2+0xcc>
   1b6fe:	fd1eeee3          	bltu	t4,a7,1b6da <__letf2+0x9e>
   1b702:	4501                	li	a0,0
   1b704:	fdd8fde3          	bgeu	a7,t4,1b6de <__letf2+0xa2>
   1b708:	4505                	li	a0,1
   1b70a:	fbf1                	bnez	a5,1b6de <__letf2+0xa2>
   1b70c:	b7e1                	j	1b6d4 <__letf2+0x98>
   1b70e:	00186073          	csrsi	fflags,16
   1b712:	4509                	li	a0,2
   1b714:	b7e9                	j	1b6de <__letf2+0xa2>
   1b716:	ff4d                	bnez	a4,1b6d0 <__letf2+0x94>
   1b718:	fcf691e3          	bne	a3,a5,1b6da <__letf2+0x9e>
   1b71c:	fcc553e3          	bge	a0,a2,1b6e2 <__letf2+0xa6>
   1b720:	557d                	li	a0,-1
   1b722:	fed5                	bnez	a3,1b6de <__letf2+0xa2>
   1b724:	4505                	li	a0,1
   1b726:	bf65                	j	1b6de <__letf2+0xa2>

0001b728 <__multf3>:
   1b728:	7131                	addi	sp,sp,-192
   1b72a:	d552                	sw	s4,168(sp)
   1b72c:	d356                	sw	s5,164(sp)
   1b72e:	d15a                	sw	s6,160(sp)
   1b730:	cf5e                	sw	s7,156(sp)
   1b732:	c62a                	sw	a0,12(sp)
   1b734:	419c                	lw	a5,0(a1)
   1b736:	41c8                	lw	a0,4(a1)
   1b738:	4594                	lw	a3,8(a1)
   1b73a:	45d8                	lw	a4,12(a1)
   1b73c:	00062a83          	lw	s5,0(a2)
   1b740:	00462b83          	lw	s7,4(a2)
   1b744:	00862b03          	lw	s6,8(a2)
   1b748:	00c62a03          	lw	s4,12(a2)
   1b74c:	df06                	sw	ra,188(sp)
   1b74e:	dd22                	sw	s0,184(sp)
   1b750:	db26                	sw	s1,180(sp)
   1b752:	d94a                	sw	s2,176(sp)
   1b754:	d74e                	sw	s3,172(sp)
   1b756:	cd62                	sw	s8,152(sp)
   1b758:	cb66                	sw	s9,148(sp)
   1b75a:	c96a                	sw	s10,144(sp)
   1b75c:	c76e                	sw	s11,140(sp)
   1b75e:	002024f3          	frrm	s1
   1b762:	6621                	lui	a2,0x8
   1b764:	01071413          	slli	s0,a4,0x10
   1b768:	8041                	srli	s0,s0,0x10
   1b76a:	01075913          	srli	s2,a4,0x10
   1b76e:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   1b770:	d0be                	sw	a5,96(sp)
   1b772:	d2aa                	sw	a0,100(sp)
   1b774:	d4b6                	sw	a3,104(sp)
   1b776:	d6ba                	sw	a4,108(sp)
   1b778:	d83e                	sw	a5,48(sp)
   1b77a:	da2a                	sw	a0,52(sp)
   1b77c:	dc36                	sw	a3,56(sp)
   1b77e:	de22                	sw	s0,60(sp)
   1b780:	00c97933          	and	s2,s2,a2
   1b784:	01f75993          	srli	s3,a4,0x1f
   1b788:	02090a63          	beqz	s2,1b7bc <__multf3+0x94>
   1b78c:	10c90d63          	beq	s2,a2,1b8a6 <__multf3+0x17e>
   1b790:	6741                	lui	a4,0x10
   1b792:	8c59                	or	s0,s0,a4
   1b794:	de22                	sw	s0,60(sp)
   1b796:	1818                	addi	a4,sp,48
   1b798:	104c                	addi	a1,sp,36
   1b79a:	4754                	lw	a3,12(a4)
   1b79c:	4710                	lw	a2,8(a4)
   1b79e:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1b7a0:	068e                	slli	a3,a3,0x3
   1b7a2:	8275                	srli	a2,a2,0x1d
   1b7a4:	8ed1                	or	a3,a3,a2
   1b7a6:	cb14                	sw	a3,16(a4)
   1b7a8:	fee599e3          	bne	a1,a4,1b79a <__multf3+0x72>
   1b7ac:	078e                	slli	a5,a5,0x3
   1b7ae:	d83e                	sw	a5,48(sp)
   1b7b0:	77f1                	lui	a5,0xffffc
   1b7b2:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffdc3fd>
   1b7b4:	993e                	add	s2,s2,a5
   1b7b6:	4c01                	li	s8,0
   1b7b8:	4401                	li	s0,0
   1b7ba:	a211                	j	1b8be <__multf3+0x196>
   1b7bc:	00a7e733          	or	a4,a5,a0
   1b7c0:	8f55                	or	a4,a4,a3
   1b7c2:	8f41                	or	a4,a4,s0
   1b7c4:	70070d63          	beqz	a4,1bede <__multf3+0x7b6>
   1b7c8:	cc2d                	beqz	s0,1b842 <__multf3+0x11a>
   1b7ca:	8522                	mv	a0,s0
   1b7cc:	108020ef          	jal	1d8d4 <__clzsi2>
   1b7d0:	ff450693          	addi	a3,a0,-12
   1b7d4:	4056d793          	srai	a5,a3,0x5
   1b7d8:	8afd                	andi	a3,a3,31
   1b7da:	c6d9                	beqz	a3,1b868 <__multf3+0x140>
   1b7dc:	5671                	li	a2,-4
   1b7de:	02c78633          	mul	a2,a5,a2
   1b7e2:	02000813          	li	a6,32
   1b7e6:	03010313          	addi	t1,sp,48
   1b7ea:	40d80833          	sub	a6,a6,a3
   1b7ee:	00c60713          	addi	a4,a2,12
   1b7f2:	971a                	add	a4,a4,t1
   1b7f4:	40c00633          	neg	a2,a2
   1b7f8:	08e31863          	bne	t1,a4,1b888 <__multf3+0x160>
   1b7fc:	fff78713          	addi	a4,a5,-1
   1b800:	078a                	slli	a5,a5,0x2
   1b802:	1810                	addi	a2,sp,48
   1b804:	05078793          	addi	a5,a5,80
   1b808:	97b2                	add	a5,a5,a2
   1b80a:	5642                	lw	a2,48(sp)
   1b80c:	00d616b3          	sll	a3,a2,a3
   1b810:	fad7a823          	sw	a3,-80(a5)
   1b814:	00170793          	addi	a5,a4,1
   1b818:	078a                	slli	a5,a5,0x2
   1b81a:	46a1                	li	a3,8
   1b81c:	1818                	addi	a4,sp,48
   1b81e:	00d7e863          	bltu	a5,a3,1b82e <__multf3+0x106>
   1b822:	00072023          	sw	zero,0(a4)
   1b826:	00072223          	sw	zero,4(a4)
   1b82a:	17e1                	addi	a5,a5,-8
   1b82c:	1838                	addi	a4,sp,56
   1b82e:	4691                	li	a3,4
   1b830:	00d7e463          	bltu	a5,a3,1b838 <__multf3+0x110>
   1b834:	00072023          	sw	zero,0(a4)
   1b838:	7971                	lui	s2,0xffffc
   1b83a:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffdc40d>
   1b83c:	40a90933          	sub	s2,s2,a0
   1b840:	bf9d                	j	1b7b6 <__multf3+0x8e>
   1b842:	c699                	beqz	a3,1b850 <__multf3+0x128>
   1b844:	8536                	mv	a0,a3
   1b846:	08e020ef          	jal	1d8d4 <__clzsi2>
   1b84a:	02050513          	addi	a0,a0,32
   1b84e:	b749                	j	1b7d0 <__multf3+0xa8>
   1b850:	c511                	beqz	a0,1b85c <__multf3+0x134>
   1b852:	082020ef          	jal	1d8d4 <__clzsi2>
   1b856:	04050513          	addi	a0,a0,64
   1b85a:	bf9d                	j	1b7d0 <__multf3+0xa8>
   1b85c:	853e                	mv	a0,a5
   1b85e:	076020ef          	jal	1d8d4 <__clzsi2>
   1b862:	06050513          	addi	a0,a0,96
   1b866:	b7ad                	j	1b7d0 <__multf3+0xa8>
   1b868:	5671                	li	a2,-4
   1b86a:	02c78633          	mul	a2,a5,a2
   1b86e:	1878                	addi	a4,sp,60
   1b870:	468d                	li	a3,3
   1b872:	00c705b3          	add	a1,a4,a2
   1b876:	418c                	lw	a1,0(a1)
   1b878:	16fd                	addi	a3,a3,-1
   1b87a:	1771                	addi	a4,a4,-4
   1b87c:	c34c                	sw	a1,4(a4)
   1b87e:	fef6dae3          	bge	a3,a5,1b872 <__multf3+0x14a>
   1b882:	fff78713          	addi	a4,a5,-1
   1b886:	b779                	j	1b814 <__multf3+0xec>
   1b888:	430c                	lw	a1,0(a4)
   1b88a:	ffc72883          	lw	a7,-4(a4)
   1b88e:	00c70e33          	add	t3,a4,a2
   1b892:	00d595b3          	sll	a1,a1,a3
   1b896:	0108d8b3          	srl	a7,a7,a6
   1b89a:	0115e5b3          	or	a1,a1,a7
   1b89e:	00be2023          	sw	a1,0(t3)
   1b8a2:	1771                	addi	a4,a4,-4
   1b8a4:	bf91                	j	1b7f8 <__multf3+0xd0>
   1b8a6:	8fc9                	or	a5,a5,a0
   1b8a8:	8fd5                	or	a5,a5,a3
   1b8aa:	8fc1                	or	a5,a5,s0
   1b8ac:	62078c63          	beqz	a5,1bee4 <__multf3+0x7bc>
   1b8b0:	0442                	slli	s0,s0,0x10
   1b8b2:	8441                	srai	s0,s0,0x10
   1b8b4:	fff44413          	not	s0,s0
   1b8b8:	807d                	srli	s0,s0,0x1f
   1b8ba:	0412                	slli	s0,s0,0x4
   1b8bc:	4c0d                	li	s8,3
   1b8be:	010a1513          	slli	a0,s4,0x10
   1b8c2:	6721                	lui	a4,0x8
   1b8c4:	010a5793          	srli	a5,s4,0x10
   1b8c8:	8141                	srli	a0,a0,0x10
   1b8ca:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b8cc:	d6d2                	sw	s4,108(sp)
   1b8ce:	d0d6                	sw	s5,96(sp)
   1b8d0:	d2de                	sw	s7,100(sp)
   1b8d2:	d4da                	sw	s6,104(sp)
   1b8d4:	c0d6                	sw	s5,64(sp)
   1b8d6:	c2de                	sw	s7,68(sp)
   1b8d8:	c4da                	sw	s6,72(sp)
   1b8da:	c6aa                	sw	a0,76(sp)
   1b8dc:	8ff9                	and	a5,a5,a4
   1b8de:	01fa5a13          	srli	s4,s4,0x1f
   1b8e2:	60078363          	beqz	a5,1bee8 <__multf3+0x7c0>
   1b8e6:	6ee78863          	beq	a5,a4,1bfd6 <__multf3+0x8ae>
   1b8ea:	6741                	lui	a4,0x10
   1b8ec:	8d59                	or	a0,a0,a4
   1b8ee:	c6aa                	sw	a0,76(sp)
   1b8f0:	0098                	addi	a4,sp,64
   1b8f2:	184c                	addi	a1,sp,52
   1b8f4:	4754                	lw	a3,12(a4)
   1b8f6:	4710                	lw	a2,8(a4)
   1b8f8:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1b8fa:	068e                	slli	a3,a3,0x3
   1b8fc:	8275                	srli	a2,a2,0x1d
   1b8fe:	8ed1                	or	a3,a3,a2
   1b900:	cb14                	sw	a3,16(a4)
   1b902:	fee599e3          	bne	a1,a4,1b8f4 <__multf3+0x1cc>
   1b906:	7771                	lui	a4,0xffffc
   1b908:	0a8e                	slli	s5,s5,0x3
   1b90a:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffdc3fd>
   1b90c:	c0d6                	sw	s5,64(sp)
   1b90e:	97ba                	add	a5,a5,a4
   1b910:	4681                	li	a3,0
   1b912:	97ca                	add	a5,a5,s2
   1b914:	ca3e                	sw	a5,20(sp)
   1b916:	0785                	addi	a5,a5,1
   1b918:	c83e                	sw	a5,16(sp)
   1b91a:	002c1793          	slli	a5,s8,0x2
   1b91e:	8fd5                	or	a5,a5,a3
   1b920:	4729                	li	a4,10
   1b922:	70f74363          	blt	a4,a5,1c028 <__multf3+0x900>
   1b926:	4609                	li	a2,2
   1b928:	0149c733          	xor	a4,s3,s4
   1b92c:	6cf64863          	blt	a2,a5,1bffc <__multf3+0x8d4>
   1b930:	17fd                	addi	a5,a5,-1
   1b932:	4605                	li	a2,1
   1b934:	70f67263          	bgeu	a2,a5,1c038 <__multf3+0x910>
   1b938:	5542                	lw	a0,48(sp)
   1b93a:	4306                	lw	t1,64(sp)
   1b93c:	6841                	lui	a6,0x10
   1b93e:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   1b942:	01055913          	srli	s2,a0,0x10
   1b946:	01035393          	srli	t2,t1,0x10
   1b94a:	8d6d                	and	a0,a0,a1
   1b94c:	00b37333          	and	t1,t1,a1
   1b950:	02a30633          	mul	a2,t1,a0
   1b954:	026908b3          	mul	a7,s2,t1
   1b958:	01065793          	srli	a5,a2,0x10
   1b95c:	02a386b3          	mul	a3,t2,a0
   1b960:	96c6                	add	a3,a3,a7
   1b962:	97b6                	add	a5,a5,a3
   1b964:	02790bb3          	mul	s7,s2,t2
   1b968:	0117f363          	bgeu	a5,a7,1b96e <__multf3+0x246>
   1b96c:	9bc2                	add	s7,s7,a6
   1b96e:	4896                	lw	a7,68(sp)
   1b970:	0107d693          	srli	a3,a5,0x10
   1b974:	8fed                	and	a5,a5,a1
   1b976:	8e6d                	and	a2,a2,a1
   1b978:	07c2                	slli	a5,a5,0x10
   1b97a:	97b2                	add	a5,a5,a2
   1b97c:	0108df93          	srli	t6,a7,0x10
   1b980:	00b8f8b3          	and	a7,a7,a1
   1b984:	031905b3          	mul	a1,s2,a7
   1b988:	d03e                	sw	a5,32(sp)
   1b98a:	d0be                	sw	a5,96(sp)
   1b98c:	02af8633          	mul	a2,t6,a0
   1b990:	02a887b3          	mul	a5,a7,a0
   1b994:	962e                	add	a2,a2,a1
   1b996:	0107d813          	srli	a6,a5,0x10
   1b99a:	9832                	add	a6,a6,a2
   1b99c:	03f90b33          	mul	s6,s2,t6
   1b9a0:	00b87463          	bgeu	a6,a1,1b9a8 <__multf3+0x280>
   1b9a4:	6641                	lui	a2,0x10
   1b9a6:	9b32                	add	s6,s6,a2
   1b9a8:	01085613          	srli	a2,a6,0x10
   1b9ac:	55d2                	lw	a1,52(sp)
   1b9ae:	cc32                	sw	a2,24(sp)
   1b9b0:	6641                	lui	a2,0x10
   1b9b2:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   1b9b6:	01d87833          	and	a6,a6,t4
   1b9ba:	01d7f7b3          	and	a5,a5,t4
   1b9be:	0105d293          	srli	t0,a1,0x10
   1b9c2:	0842                	slli	a6,a6,0x10
   1b9c4:	01d5f5b3          	and	a1,a1,t4
   1b9c8:	983e                	add	a6,a6,a5
   1b9ca:	02628a33          	mul	s4,t0,t1
   1b9ce:	96c2                	add	a3,a3,a6
   1b9d0:	026587b3          	mul	a5,a1,t1
   1b9d4:	02b38eb3          	mul	t4,t2,a1
   1b9d8:	0107d993          	srli	s3,a5,0x10
   1b9dc:	9ed2                	add	t4,t4,s4
   1b9de:	99f6                	add	s3,s3,t4
   1b9e0:	02538f33          	mul	t5,t2,t0
   1b9e4:	0149f363          	bgeu	s3,s4,1b9ea <__multf3+0x2c2>
   1b9e8:	9f32                	add	t5,t5,a2
   1b9ea:	6c41                	lui	s8,0x10
   1b9ec:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   1b9f0:	8ff1                	and	a5,a5,a2
   1b9f2:	0109da13          	srli	s4,s3,0x10
   1b9f6:	00c9f9b3          	and	s3,s3,a2
   1b9fa:	09c2                	slli	s3,s3,0x10
   1b9fc:	99be                	add	s3,s3,a5
   1b9fe:	02b88eb3          	mul	t4,a7,a1
   1ba02:	9a7a                	add	s4,s4,t5
   1ba04:	03128633          	mul	a2,t0,a7
   1ba08:	010ed793          	srli	a5,t4,0x10
   1ba0c:	02bf8ab3          	mul	s5,t6,a1
   1ba10:	9ab2                	add	s5,s5,a2
   1ba12:	97d6                	add	a5,a5,s5
   1ba14:	025f8f33          	mul	t5,t6,t0
   1ba18:	00c7f363          	bgeu	a5,a2,1ba1e <__multf3+0x2f6>
   1ba1c:	9f62                	add	t5,t5,s8
   1ba1e:	0107d613          	srli	a2,a5,0x10
   1ba22:	967a                	add	a2,a2,t5
   1ba24:	6ac1                	lui	s5,0x10
   1ba26:	ce32                	sw	a2,28(sp)
   1ba28:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   1ba2c:	8ff1                	and	a5,a5,a2
   1ba2e:	00cefeb3          	and	t4,t4,a2
   1ba32:	07c2                	slli	a5,a5,0x10
   1ba34:	97f6                	add	a5,a5,t4
   1ba36:	d23e                	sw	a5,36(sp)
   1ba38:	47a6                	lw	a5,72(sp)
   1ba3a:	0107dd93          	srli	s11,a5,0x10
   1ba3e:	00c7fd33          	and	s10,a5,a2
   1ba42:	02ad0633          	mul	a2,s10,a0
   1ba46:	03a90c33          	mul	s8,s2,s10
   1ba4a:	01065793          	srli	a5,a2,0x10
   1ba4e:	02ad8f33          	mul	t5,s11,a0
   1ba52:	9f62                	add	t5,t5,s8
   1ba54:	97fa                	add	a5,a5,t5
   1ba56:	03b90eb3          	mul	t4,s2,s11
   1ba5a:	0187f363          	bgeu	a5,s8,1ba60 <__multf3+0x338>
   1ba5e:	9ed6                	add	t4,t4,s5
   1ba60:	0107df13          	srli	t5,a5,0x10
   1ba64:	6cc1                	lui	s9,0x10
   1ba66:	01df0e33          	add	t3,t5,t4
   1ba6a:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   1ba6e:	01d7f7b3          	and	a5,a5,t4
   1ba72:	01d67633          	and	a2,a2,t4
   1ba76:	07c2                	slli	a5,a5,0x10
   1ba78:	97b2                	add	a5,a5,a2
   1ba7a:	5662                	lw	a2,56(sp)
   1ba7c:	d472                	sw	t3,40(sp)
   1ba7e:	d63e                	sw	a5,44(sp)
   1ba80:	01065f13          	srli	t5,a2,0x10
   1ba84:	01d67633          	and	a2,a2,t4
   1ba88:	02660ab3          	mul	s5,a2,t1
   1ba8c:	026f0e33          	mul	t3,t5,t1
   1ba90:	010ad793          	srli	a5,s5,0x10
   1ba94:	02c38eb3          	mul	t4,t2,a2
   1ba98:	9ef2                	add	t4,t4,t3
   1ba9a:	9ebe                	add	t4,t4,a5
   1ba9c:	03e38c33          	mul	s8,t2,t5
   1baa0:	01cef363          	bgeu	t4,t3,1baa6 <__multf3+0x37e>
   1baa4:	9c66                	add	s8,s8,s9
   1baa6:	47e2                	lw	a5,24(sp)
   1baa8:	96de                	add	a3,a3,s7
   1baaa:	0106b833          	sltu	a6,a3,a6
   1baae:	010edc93          	srli	s9,t4,0x10
   1bab2:	6e41                	lui	t3,0x10
   1bab4:	9c66                	add	s8,s8,s9
   1bab6:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   1baba:	01078e33          	add	t3,a5,a6
   1babe:	013687b3          	add	a5,a3,s3
   1bac2:	9e5a                	add	t3,t3,s6
   1bac4:	00d7b6b3          	sltu	a3,a5,a3
   1bac8:	cc3e                	sw	a5,24(sp)
   1baca:	d2be                	sw	a5,100(sp)
   1bacc:	5792                	lw	a5,36(sp)
   1bace:	9a72                	add	s4,s4,t3
   1bad0:	96d2                	add	a3,a3,s4
   1bad2:	01ca39b3          	sltu	s3,s4,t3
   1bad6:	0146ba33          	sltu	s4,a3,s4
   1bada:	010e3e33          	sltu	t3,t3,a6
   1bade:	00f68833          	add	a6,a3,a5
   1bae2:	47f2                	lw	a5,28(sp)
   1bae4:	0149e9b3          	or	s3,s3,s4
   1bae8:	9e4e                	add	t3,t3,s3
   1baea:	00fe09b3          	add	s3,t3,a5
   1baee:	57b2                	lw	a5,44(sp)
   1baf0:	5a22                	lw	s4,40(sp)
   1baf2:	00d836b3          	sltu	a3,a6,a3
   1baf6:	019efeb3          	and	t4,t4,s9
   1bafa:	96ce                	add	a3,a3,s3
   1bafc:	97c2                	add	a5,a5,a6
   1bafe:	0ec2                	slli	t4,t4,0x10
   1bb00:	019afab3          	and	s5,s5,s9
   1bb04:	9a36                	add	s4,s4,a3
   1bb06:	0107b833          	sltu	a6,a5,a6
   1bb0a:	9ed6                	add	t4,t4,s5
   1bb0c:	9ebe                	add	t4,t4,a5
   1bb0e:	9852                	add	a6,a6,s4
   1bb10:	9c42                	add	s8,s8,a6
   1bb12:	00feb7b3          	sltu	a5,t4,a5
   1bb16:	ce76                	sw	t4,28(sp)
   1bb18:	d4f6                	sw	t4,104(sp)
   1bb1a:	4eb6                	lw	t4,76(sp)
   1bb1c:	01c9be33          	sltu	t3,s3,t3
   1bb20:	97e2                	add	a5,a5,s8
   1bb22:	0136b9b3          	sltu	s3,a3,s3
   1bb26:	00da36b3          	sltu	a3,s4,a3
   1bb2a:	01483a33          	sltu	s4,a6,s4
   1bb2e:	013e69b3          	or	s3,t3,s3
   1bb32:	0146e6b3          	or	a3,a3,s4
   1bb36:	010c3833          	sltu	a6,s8,a6
   1bb3a:	0187bc33          	sltu	s8,a5,s8
   1bb3e:	96ce                	add	a3,a3,s3
   1bb40:	01886833          	or	a6,a6,s8
   1bb44:	010ed993          	srli	s3,t4,0x10
   1bb48:	019efeb3          	and	t4,t4,s9
   1bb4c:	03d90a33          	mul	s4,s2,t4
   1bb50:	00d80e33          	add	t3,a6,a3
   1bb54:	02ae86b3          	mul	a3,t4,a0
   1bb58:	02a98533          	mul	a0,s3,a0
   1bb5c:	0106d813          	srli	a6,a3,0x10
   1bb60:	9552                	add	a0,a0,s4
   1bb62:	982a                	add	a6,a6,a0
   1bb64:	03390933          	mul	s2,s2,s3
   1bb68:	01487463          	bgeu	a6,s4,1bb70 <__multf3+0x448>
   1bb6c:	6541                	lui	a0,0x10
   1bb6e:	992a                	add	s2,s2,a0
   1bb70:	01085513          	srli	a0,a6,0x10
   1bb74:	954a                	add	a0,a0,s2
   1bb76:	5a72                	lw	s4,60(sp)
   1bb78:	6ac1                	lui	s5,0x10
   1bb7a:	d22a                	sw	a0,36(sp)
   1bb7c:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   1bb80:	00a87833          	and	a6,a6,a0
   1bb84:	010a5913          	srli	s2,s4,0x10
   1bb88:	0842                	slli	a6,a6,0x10
   1bb8a:	8ee9                	and	a3,a3,a0
   1bb8c:	00aa7a33          	and	s4,s4,a0
   1bb90:	96c2                	add	a3,a3,a6
   1bb92:	026a0533          	mul	a0,s4,t1
   1bb96:	d436                	sw	a3,40(sp)
   1bb98:	02690333          	mul	t1,s2,t1
   1bb9c:	01055693          	srli	a3,a0,0x10
   1bba0:	03238833          	mul	a6,t2,s2
   1bba4:	034383b3          	mul	t2,t2,s4
   1bba8:	939a                	add	t2,t2,t1
   1bbaa:	969e                	add	a3,a3,t2
   1bbac:	0066f363          	bgeu	a3,t1,1bbb2 <__multf3+0x48a>
   1bbb0:	9856                	add	a6,a6,s5
   1bbb2:	0106da93          	srli	s5,a3,0x10
   1bbb6:	6bc1                	lui	s7,0x10
   1bbb8:	9ac2                	add	s5,s5,a6
   1bbba:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   1bbbe:	01057533          	and	a0,a0,a6
   1bbc2:	0106f6b3          	and	a3,a3,a6
   1bbc6:	03a28333          	mul	t1,t0,s10
   1bbca:	06c2                	slli	a3,a3,0x10
   1bbcc:	96aa                	add	a3,a3,a0
   1bbce:	03a58833          	mul	a6,a1,s10
   1bbd2:	02bd83b3          	mul	t2,s11,a1
   1bbd6:	01085513          	srli	a0,a6,0x10
   1bbda:	939a                	add	t2,t2,t1
   1bbdc:	951e                	add	a0,a0,t2
   1bbde:	03b28b33          	mul	s6,t0,s11
   1bbe2:	00657363          	bgeu	a0,t1,1bbe8 <__multf3+0x4c0>
   1bbe6:	9b5e                	add	s6,s6,s7
   1bbe8:	6c41                	lui	s8,0x10
   1bbea:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   1bbee:	01055393          	srli	t2,a0,0x10
   1bbf2:	00657533          	and	a0,a0,t1
   1bbf6:	00687833          	and	a6,a6,t1
   1bbfa:	0542                	slli	a0,a0,0x10
   1bbfc:	93da                	add	t2,t2,s6
   1bbfe:	02cf8333          	mul	t1,t6,a2
   1bc02:	9542                	add	a0,a0,a6
   1bc04:	031f0b33          	mul	s6,t5,a7
   1bc08:	02c88833          	mul	a6,a7,a2
   1bc0c:	935a                	add	t1,t1,s6
   1bc0e:	01085c93          	srli	s9,a6,0x10
   1bc12:	9366                	add	t1,t1,s9
   1bc14:	03ef8bb3          	mul	s7,t6,t5
   1bc18:	01637363          	bgeu	t1,s6,1bc1e <__multf3+0x4f6>
   1bc1c:	9be2                	add	s7,s7,s8
   1bc1e:	01035b13          	srli	s6,t1,0x10
   1bc22:	9b5e                	add	s6,s6,s7
   1bc24:	6bc1                	lui	s7,0x10
   1bc26:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   1bc2a:	01837333          	and	t1,t1,s8
   1bc2e:	0342                	slli	t1,t1,0x10
   1bc30:	01887833          	and	a6,a6,s8
   1bc34:	981a                	add	a6,a6,t1
   1bc36:	5322                	lw	t1,40(sp)
   1bc38:	5c12                	lw	s8,36(sp)
   1bc3a:	933e                	add	t1,t1,a5
   1bc3c:	9c72                	add	s8,s8,t3
   1bc3e:	00f337b3          	sltu	a5,t1,a5
   1bc42:	97e2                	add	a5,a5,s8
   1bc44:	969a                	add	a3,a3,t1
   1bc46:	9abe                	add	s5,s5,a5
   1bc48:	0066b333          	sltu	t1,a3,t1
   1bc4c:	9356                	add	t1,t1,s5
   1bc4e:	9536                	add	a0,a0,a3
   1bc50:	939a                	add	t2,t2,t1
   1bc52:	00d536b3          	sltu	a3,a0,a3
   1bc56:	969e                	add	a3,a3,t2
   1bc58:	982a                	add	a6,a6,a0
   1bc5a:	01cc3e33          	sltu	t3,s8,t3
   1bc5e:	9b36                	add	s6,s6,a3
   1bc60:	0187bc33          	sltu	s8,a5,s8
   1bc64:	00a83533          	sltu	a0,a6,a0
   1bc68:	00fab7b3          	sltu	a5,s5,a5
   1bc6c:	01533ab3          	sltu	s5,t1,s5
   1bc70:	018e6c33          	or	s8,t3,s8
   1bc74:	0157e7b3          	or	a5,a5,s5
   1bc78:	0063b333          	sltu	t1,t2,t1
   1bc7c:	955a                	add	a0,a0,s6
   1bc7e:	0076b3b3          	sltu	t2,a3,t2
   1bc82:	97e2                	add	a5,a5,s8
   1bc84:	00736333          	or	t1,t1,t2
   1bc88:	00db36b3          	sltu	a3,s6,a3
   1bc8c:	01653b33          	sltu	s6,a0,s6
   1bc90:	00f303b3          	add	t2,t1,a5
   1bc94:	0166e6b3          	or	a3,a3,s6
   1bc98:	00768333          	add	t1,a3,t2
   1bc9c:	03af0e33          	mul	t3,t5,s10
   1bca0:	d6c2                	sw	a6,108(sp)
   1bca2:	03a606b3          	mul	a3,a2,s10
   1bca6:	02cd8ab3          	mul	s5,s11,a2
   1bcaa:	0106d793          	srli	a5,a3,0x10
   1bcae:	9af2                	add	s5,s5,t3
   1bcb0:	97d6                	add	a5,a5,s5
   1bcb2:	03ed83b3          	mul	t2,s11,t5
   1bcb6:	01c7f363          	bgeu	a5,t3,1bcbc <__multf3+0x594>
   1bcba:	93de                	add	t2,t2,s7
   1bcbc:	0107de13          	srli	t3,a5,0x10
   1bcc0:	6ac1                	lui	s5,0x10
   1bcc2:	9e1e                	add	t3,t3,t2
   1bcc4:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   1bcc8:	0077f7b3          	and	a5,a5,t2
   1bccc:	0076f6b3          	and	a3,a3,t2
   1bcd0:	07c2                	slli	a5,a5,0x10
   1bcd2:	03d28b33          	mul	s6,t0,t4
   1bcd6:	97b6                	add	a5,a5,a3
   1bcd8:	02be86b3          	mul	a3,t4,a1
   1bcdc:	02b985b3          	mul	a1,s3,a1
   1bce0:	0106d393          	srli	t2,a3,0x10
   1bce4:	95da                	add	a1,a1,s6
   1bce6:	93ae                	add	t2,t2,a1
   1bce8:	033282b3          	mul	t0,t0,s3
   1bcec:	0163f363          	bgeu	t2,s6,1bcf2 <__multf3+0x5ca>
   1bcf0:	92d6                	add	t0,t0,s5
   1bcf2:	0103d593          	srli	a1,t2,0x10
   1bcf6:	6b41                	lui	s6,0x10
   1bcf8:	92ae                	add	t0,t0,a1
   1bcfa:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   1bcfe:	8eed                	and	a3,a3,a1
   1bd00:	00b3f3b3          	and	t2,t2,a1
   1bd04:	03c2                	slli	t2,t2,0x10
   1bd06:	031a05b3          	mul	a1,s4,a7
   1bd0a:	93b6                	add	t2,t2,a3
   1bd0c:	031908b3          	mul	a7,s2,a7
   1bd10:	0105d693          	srli	a3,a1,0x10
   1bd14:	032f8ab3          	mul	s5,t6,s2
   1bd18:	034f8fb3          	mul	t6,t6,s4
   1bd1c:	9fc6                	add	t6,t6,a7
   1bd1e:	96fe                	add	a3,a3,t6
   1bd20:	0116f363          	bgeu	a3,a7,1bd26 <__multf3+0x5fe>
   1bd24:	9ada                	add	s5,s5,s6
   1bd26:	0106df93          	srli	t6,a3,0x10
   1bd2a:	68c1                	lui	a7,0x10
   1bd2c:	9fd6                	add	t6,t6,s5
   1bd2e:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   1bd32:	0156f6b3          	and	a3,a3,s5
   1bd36:	0155f5b3          	and	a1,a1,s5
   1bd3a:	06c2                	slli	a3,a3,0x10
   1bd3c:	03df0ab3          	mul	s5,t5,t4
   1bd40:	96ae                	add	a3,a3,a1
   1bd42:	03d605b3          	mul	a1,a2,t4
   1bd46:	02c98633          	mul	a2,s3,a2
   1bd4a:	01560b33          	add	s6,a2,s5
   1bd4e:	0105d613          	srli	a2,a1,0x10
   1bd52:	965a                	add	a2,a2,s6
   1bd54:	033f0f33          	mul	t5,t5,s3
   1bd58:	01567363          	bgeu	a2,s5,1bd5e <__multf3+0x636>
   1bd5c:	9f46                	add	t5,t5,a7
   1bd5e:	6ac1                	lui	s5,0x10
   1bd60:	01065893          	srli	a7,a2,0x10
   1bd64:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   1bd68:	9f46                	add	t5,t5,a7
   1bd6a:	016678b3          	and	a7,a2,s6
   1bd6e:	0165f5b3          	and	a1,a1,s6
   1bd72:	08c2                	slli	a7,a7,0x10
   1bd74:	03aa0633          	mul	a2,s4,s10
   1bd78:	98ae                	add	a7,a7,a1
   1bd7a:	03a90bb3          	mul	s7,s2,s10
   1bd7e:	01065c13          	srli	s8,a2,0x10
   1bd82:	034d85b3          	mul	a1,s11,s4
   1bd86:	95de                	add	a1,a1,s7
   1bd88:	95e2                	add	a1,a1,s8
   1bd8a:	032d8b33          	mul	s6,s11,s2
   1bd8e:	0175f363          	bgeu	a1,s7,1bd94 <__multf3+0x66c>
   1bd92:	9b56                	add	s6,s6,s5
   1bd94:	97aa                	add	a5,a5,a0
   1bd96:	9e1a                	add	t3,t3,t1
   1bd98:	00a7b533          	sltu	a0,a5,a0
   1bd9c:	9572                	add	a0,a0,t3
   1bd9e:	93be                	add	t2,t2,a5
   1bda0:	92aa                	add	t0,t0,a0
   1bda2:	00f3b7b3          	sltu	a5,t2,a5
   1bda6:	9796                	add	a5,a5,t0
   1bda8:	006e3333          	sltu	t1,t3,t1
   1bdac:	01c53e33          	sltu	t3,a0,t3
   1bdb0:	00a2b533          	sltu	a0,t0,a0
   1bdb4:	0057b2b3          	sltu	t0,a5,t0
   1bdb8:	00556533          	or	a0,a0,t0
   1bdbc:	01c36333          	or	t1,t1,t3
   1bdc0:	932a                	add	t1,t1,a0
   1bdc2:	03da0533          	mul	a0,s4,t4
   1bdc6:	969e                	add	a3,a3,t2
   1bdc8:	9fbe                	add	t6,t6,a5
   1bdca:	0105da93          	srli	s5,a1,0x10
   1bdce:	d8b6                	sw	a3,112(sp)
   1bdd0:	0076b6b3          	sltu	a3,a3,t2
   1bdd4:	96fe                	add	a3,a3,t6
   1bdd6:	9ada                	add	s5,s5,s6
   1bdd8:	6b41                	lui	s6,0x10
   1bdda:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   1bdde:	03d90eb3          	mul	t4,s2,t4
   1bde2:	00ffb7b3          	sltu	a5,t6,a5
   1bde6:	01f6bfb3          	sltu	t6,a3,t6
   1bdea:	0175f5b3          	and	a1,a1,s7
   1bdee:	01f7e7b3          	or	a5,a5,t6
   1bdf2:	98b6                	add	a7,a7,a3
   1bdf4:	05c2                	slli	a1,a1,0x10
   1bdf6:	979a                	add	a5,a5,t1
   1bdf8:	01767633          	and	a2,a2,s7
   1bdfc:	9f3e                	add	t5,t5,a5
   1bdfe:	03298933          	mul	s2,s3,s2
   1be02:	962e                	add	a2,a2,a1
   1be04:	00d8b6b3          	sltu	a3,a7,a3
   1be08:	96fa                	add	a3,a3,t5
   1be0a:	9646                	add	a2,a2,a7
   1be0c:	00ff37b3          	sltu	a5,t5,a5
   1be10:	9ab6                	add	s5,s5,a3
   1be12:	01e6bf33          	sltu	t5,a3,t5
   1be16:	dab2                	sw	a2,116(sp)
   1be18:	01163633          	sltu	a2,a2,a7
   1be1c:	034989b3          	mul	s3,s3,s4
   1be20:	01e7e5b3          	or	a1,a5,t5
   1be24:	9656                	add	a2,a2,s5
   1be26:	01055793          	srli	a5,a0,0x10
   1be2a:	00dab6b3          	sltu	a3,s5,a3
   1be2e:	01563ab3          	sltu	s5,a2,s5
   1be32:	0156e6b3          	or	a3,a3,s5
   1be36:	99f6                	add	s3,s3,t4
   1be38:	97ce                	add	a5,a5,s3
   1be3a:	01d7f363          	bgeu	a5,t4,1be40 <__multf3+0x718>
   1be3e:	995a                	add	s2,s2,s6
   1be40:	0107d893          	srli	a7,a5,0x10
   1be44:	95c6                	add	a1,a1,a7
   1be46:	68c1                	lui	a7,0x10
   1be48:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   1be4a:	0117f7b3          	and	a5,a5,a7
   1be4e:	07c2                	slli	a5,a5,0x10
   1be50:	01157533          	and	a0,a0,a7
   1be54:	97aa                	add	a5,a5,a0
   1be56:	97b2                	add	a5,a5,a2
   1be58:	96ae                	add	a3,a3,a1
   1be5a:	00c7b633          	sltu	a2,a5,a2
   1be5e:	9636                	add	a2,a2,a3
   1be60:	dcbe                	sw	a5,120(sp)
   1be62:	46e2                	lw	a3,24(sp)
   1be64:	5782                	lw	a5,32(sp)
   1be66:	964a                	add	a2,a2,s2
   1be68:	0836                	slli	a6,a6,0xd
   1be6a:	8fd5                	or	a5,a5,a3
   1be6c:	46f2                	lw	a3,28(sp)
   1be6e:	deb2                	sw	a2,124(sp)
   1be70:	188c                	addi	a1,sp,112
   1be72:	8fd5                	or	a5,a5,a3
   1be74:	00f86833          	or	a6,a6,a5
   1be78:	109c                	addi	a5,sp,96
   1be7a:	47d4                	lw	a3,12(a5)
   1be7c:	4b90                	lw	a2,16(a5)
   1be7e:	82cd                	srli	a3,a3,0x13
   1be80:	0636                	slli	a2,a2,0xd
   1be82:	8ed1                	or	a3,a3,a2
   1be84:	c394                	sw	a3,0(a5)
   1be86:	0791                	addi	a5,a5,4
   1be88:	fef599e3          	bne	a1,a5,1be7a <__multf3+0x752>
   1be8c:	5786                	lw	a5,96(sp)
   1be8e:	01003833          	snez	a6,a6
   1be92:	56b6                	lw	a3,108(sp)
   1be94:	00f86833          	or	a6,a6,a5
   1be98:	57a6                	lw	a5,104(sp)
   1be9a:	ceb6                	sw	a3,92(sp)
   1be9c:	c8c2                	sw	a6,80(sp)
   1be9e:	ccbe                	sw	a5,88(sp)
   1bea0:	5796                	lw	a5,100(sp)
   1bea2:	cabe                	sw	a5,84(sp)
   1bea4:	00b69793          	slli	a5,a3,0xb
   1bea8:	0207d863          	bgez	a5,1bed8 <__multf3+0x7b0>
   1beac:	087e                	slli	a6,a6,0x1f
   1beae:	089c                	addi	a5,sp,80
   1beb0:	08e8                	addi	a0,sp,92
   1beb2:	4390                	lw	a2,0(a5)
   1beb4:	43cc                	lw	a1,4(a5)
   1beb6:	8205                	srli	a2,a2,0x1
   1beb8:	05fe                	slli	a1,a1,0x1f
   1beba:	8e4d                	or	a2,a2,a1
   1bebc:	c390                	sw	a2,0(a5)
   1bebe:	0791                	addi	a5,a5,4
   1bec0:	fef519e3          	bne	a0,a5,1beb2 <__multf3+0x78a>
   1bec4:	47c6                	lw	a5,80(sp)
   1bec6:	01003833          	snez	a6,a6
   1beca:	8285                	srli	a3,a3,0x1
   1becc:	0107e7b3          	or	a5,a5,a6
   1bed0:	c8be                	sw	a5,80(sp)
   1bed2:	47c2                	lw	a5,16(sp)
   1bed4:	ceb6                	sw	a3,92(sp)
   1bed6:	ca3e                	sw	a5,20(sp)
   1bed8:	47d2                	lw	a5,20(sp)
   1beda:	c83e                	sw	a5,16(sp)
   1bedc:	aa41                	j	1c06c <__multf3+0x944>
   1bede:	4901                	li	s2,0
   1bee0:	4c05                	li	s8,1
   1bee2:	b8d9                	j	1b7b8 <__multf3+0x90>
   1bee4:	4c09                	li	s8,2
   1bee6:	b8c9                	j	1b7b8 <__multf3+0x90>
   1bee8:	017ae7b3          	or	a5,s5,s7
   1beec:	0167e7b3          	or	a5,a5,s6
   1bef0:	8fc9                	or	a5,a5,a0
   1bef2:	10078263          	beqz	a5,1bff6 <__multf3+0x8ce>
   1bef6:	c93d                	beqz	a0,1bf6c <__multf3+0x844>
   1bef8:	1dd010ef          	jal	1d8d4 <__clzsi2>
   1befc:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   1bf00:	4056d793          	srai	a5,a3,0x5
   1bf04:	8afd                	andi	a3,a3,31
   1bf06:	cac9                	beqz	a3,1bf98 <__multf3+0x870>
   1bf08:	5671                	li	a2,-4
   1bf0a:	02c78633          	mul	a2,a5,a2
   1bf0e:	02000813          	li	a6,32
   1bf12:	04010313          	addi	t1,sp,64
   1bf16:	40d80833          	sub	a6,a6,a3
   1bf1a:	00c60713          	addi	a4,a2,12
   1bf1e:	971a                	add	a4,a4,t1
   1bf20:	40c00633          	neg	a2,a2
   1bf24:	08e31a63          	bne	t1,a4,1bfb8 <__multf3+0x890>
   1bf28:	fff78713          	addi	a4,a5,-1
   1bf2c:	078a                	slli	a5,a5,0x2
   1bf2e:	1810                	addi	a2,sp,48
   1bf30:	05078793          	addi	a5,a5,80
   1bf34:	97b2                	add	a5,a5,a2
   1bf36:	4606                	lw	a2,64(sp)
   1bf38:	00d616b3          	sll	a3,a2,a3
   1bf3c:	fcd7a023          	sw	a3,-64(a5)
   1bf40:	00170793          	addi	a5,a4,1
   1bf44:	078a                	slli	a5,a5,0x2
   1bf46:	46a1                	li	a3,8
   1bf48:	0098                	addi	a4,sp,64
   1bf4a:	00d7e863          	bltu	a5,a3,1bf5a <__multf3+0x832>
   1bf4e:	00072023          	sw	zero,0(a4)
   1bf52:	00072223          	sw	zero,4(a4)
   1bf56:	17e1                	addi	a5,a5,-8
   1bf58:	00b8                	addi	a4,sp,72
   1bf5a:	4691                	li	a3,4
   1bf5c:	00d7e463          	bltu	a5,a3,1bf64 <__multf3+0x83c>
   1bf60:	00072023          	sw	zero,0(a4)
   1bf64:	77f1                	lui	a5,0xffffc
   1bf66:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffdc40d>
   1bf68:	8f89                	sub	a5,a5,a0
   1bf6a:	b25d                	j	1b910 <__multf3+0x1e8>
   1bf6c:	000b0863          	beqz	s6,1bf7c <__multf3+0x854>
   1bf70:	855a                	mv	a0,s6
   1bf72:	163010ef          	jal	1d8d4 <__clzsi2>
   1bf76:	02050513          	addi	a0,a0,32
   1bf7a:	b749                	j	1befc <__multf3+0x7d4>
   1bf7c:	000b8863          	beqz	s7,1bf8c <__multf3+0x864>
   1bf80:	855e                	mv	a0,s7
   1bf82:	153010ef          	jal	1d8d4 <__clzsi2>
   1bf86:	04050513          	addi	a0,a0,64
   1bf8a:	bf8d                	j	1befc <__multf3+0x7d4>
   1bf8c:	8556                	mv	a0,s5
   1bf8e:	147010ef          	jal	1d8d4 <__clzsi2>
   1bf92:	06050513          	addi	a0,a0,96
   1bf96:	b79d                	j	1befc <__multf3+0x7d4>
   1bf98:	5671                	li	a2,-4
   1bf9a:	02c78633          	mul	a2,a5,a2
   1bf9e:	00f8                	addi	a4,sp,76
   1bfa0:	468d                	li	a3,3
   1bfa2:	00c705b3          	add	a1,a4,a2
   1bfa6:	418c                	lw	a1,0(a1)
   1bfa8:	16fd                	addi	a3,a3,-1
   1bfaa:	1771                	addi	a4,a4,-4
   1bfac:	c34c                	sw	a1,4(a4)
   1bfae:	fef6dae3          	bge	a3,a5,1bfa2 <__multf3+0x87a>
   1bfb2:	fff78713          	addi	a4,a5,-1
   1bfb6:	b769                	j	1bf40 <__multf3+0x818>
   1bfb8:	430c                	lw	a1,0(a4)
   1bfba:	ffc72883          	lw	a7,-4(a4)
   1bfbe:	00c70e33          	add	t3,a4,a2
   1bfc2:	00d595b3          	sll	a1,a1,a3
   1bfc6:	0108d8b3          	srl	a7,a7,a6
   1bfca:	0115e5b3          	or	a1,a1,a7
   1bfce:	00be2023          	sw	a1,0(t3)
   1bfd2:	1771                	addi	a4,a4,-4
   1bfd4:	bf81                	j	1bf24 <__multf3+0x7fc>
   1bfd6:	017aeab3          	or	s5,s5,s7
   1bfda:	016aeab3          	or	s5,s5,s6
   1bfde:	00aaeab3          	or	s5,s5,a0
   1bfe2:	4689                	li	a3,2
   1bfe4:	920a87e3          	beqz	s5,1b912 <__multf3+0x1ea>
   1bfe8:	0542                	slli	a0,a0,0x10
   1bfea:	8541                	srai	a0,a0,0x10
   1bfec:	468d                	li	a3,3
   1bfee:	920542e3          	bltz	a0,1b912 <__multf3+0x1ea>
   1bff2:	4441                	li	s0,16
   1bff4:	ba39                	j	1b912 <__multf3+0x1ea>
   1bff6:	4781                	li	a5,0
   1bff8:	4685                	li	a3,1
   1bffa:	ba21                	j	1b912 <__multf3+0x1ea>
   1bffc:	4605                	li	a2,1
   1bffe:	00f617b3          	sll	a5,a2,a5
   1c002:	5307f613          	andi	a2,a5,1328
   1c006:	e231                	bnez	a2,1c04a <__multf3+0x922>
   1c008:	0887f613          	andi	a2,a5,136
   1c00c:	e60d                	bnez	a2,1c036 <__multf3+0x90e>
   1c00e:	2407f793          	andi	a5,a5,576
   1c012:	920783e3          	beqz	a5,1b938 <__multf3+0x210>
   1c016:	4441                	li	s0,16
   1c018:	67a1                	lui	a5,0x8
   1c01a:	cebe                	sw	a5,92(sp)
   1c01c:	cc82                	sw	zero,88(sp)
   1c01e:	ca82                	sw	zero,84(sp)
   1c020:	c882                	sw	zero,80(sp)
   1c022:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c024:	4701                	li	a4,0
   1c026:	a8e1                	j	1c0fe <__multf3+0x9d6>
   1c028:	473d                	li	a4,15
   1c02a:	fee787e3          	beq	a5,a4,1c018 <__multf3+0x8f0>
   1c02e:	462d                	li	a2,11
   1c030:	874e                	mv	a4,s3
   1c032:	00c79c63          	bne	a5,a2,1c04a <__multf3+0x922>
   1c036:	8752                	mv	a4,s4
   1c038:	4786                	lw	a5,64(sp)
   1c03a:	8c36                	mv	s8,a3
   1c03c:	c8be                	sw	a5,80(sp)
   1c03e:	4796                	lw	a5,68(sp)
   1c040:	cabe                	sw	a5,84(sp)
   1c042:	47a6                	lw	a5,72(sp)
   1c044:	ccbe                	sw	a5,88(sp)
   1c046:	47b6                	lw	a5,76(sp)
   1c048:	a801                	j	1c058 <__multf3+0x930>
   1c04a:	57c2                	lw	a5,48(sp)
   1c04c:	c8be                	sw	a5,80(sp)
   1c04e:	57d2                	lw	a5,52(sp)
   1c050:	cabe                	sw	a5,84(sp)
   1c052:	57e2                	lw	a5,56(sp)
   1c054:	ccbe                	sw	a5,88(sp)
   1c056:	57f2                	lw	a5,60(sp)
   1c058:	cebe                	sw	a5,92(sp)
   1c05a:	4789                	li	a5,2
   1c05c:	34fc0d63          	beq	s8,a5,1c3b6 <__multf3+0xc8e>
   1c060:	478d                	li	a5,3
   1c062:	fafc0be3          	beq	s8,a5,1c018 <__multf3+0x8f0>
   1c066:	4785                	li	a5,1
   1c068:	34fc0263          	beq	s8,a5,1c3ac <__multf3+0xc84>
   1c06c:	46c2                	lw	a3,16(sp)
   1c06e:	6791                	lui	a5,0x4
   1c070:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   1c072:	97b6                	add	a5,a5,a3
   1c074:	10f05763          	blez	a5,1c182 <__multf3+0xa5a>
   1c078:	4646                	lw	a2,80(sp)
   1c07a:	00767693          	andi	a3,a2,7
   1c07e:	c2a1                	beqz	a3,1c0be <__multf3+0x996>
   1c080:	4509                	li	a0,2
   1c082:	46d6                	lw	a3,84(sp)
   1c084:	45f6                	lw	a1,92(sp)
   1c086:	0ca48563          	beq	s1,a0,1c150 <__multf3+0xa28>
   1c08a:	450d                	li	a0,3
   1c08c:	0aa48c63          	beq	s1,a0,1c144 <__multf3+0xa1c>
   1c090:	e48d                	bnez	s1,1c0ba <__multf3+0x992>
   1c092:	00f67513          	andi	a0,a2,15
   1c096:	4811                	li	a6,4
   1c098:	03050163          	beq	a0,a6,1c0ba <__multf3+0x992>
   1c09c:	0611                	addi	a2,a2,4
   1c09e:	c8b2                	sw	a2,80(sp)
   1c0a0:	00463613          	sltiu	a2,a2,4
   1c0a4:	96b2                	add	a3,a3,a2
   1c0a6:	cab6                	sw	a3,84(sp)
   1c0a8:	00c6b6b3          	sltu	a3,a3,a2
   1c0ac:	4666                	lw	a2,88(sp)
   1c0ae:	96b2                	add	a3,a3,a2
   1c0b0:	ccb6                	sw	a3,88(sp)
   1c0b2:	00c6b6b3          	sltu	a3,a3,a2
   1c0b6:	96ae                	add	a3,a3,a1
   1c0b8:	ceb6                	sw	a3,92(sp)
   1c0ba:	00146413          	ori	s0,s0,1
   1c0be:	46f6                	lw	a3,92(sp)
   1c0c0:	00b69613          	slli	a2,a3,0xb
   1c0c4:	00065a63          	bgez	a2,1c0d8 <__multf3+0x9b0>
   1c0c8:	fff007b7          	lui	a5,0xfff00
   1c0cc:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee03fb>
   1c0ce:	8efd                	and	a3,a3,a5
   1c0d0:	ceb6                	sw	a3,92(sp)
   1c0d2:	46c2                	lw	a3,16(sp)
   1c0d4:	6791                	lui	a5,0x4
   1c0d6:	97b6                	add	a5,a5,a3
   1c0d8:	0894                	addi	a3,sp,80
   1c0da:	08e8                	addi	a0,sp,92
   1c0dc:	4290                	lw	a2,0(a3)
   1c0de:	42cc                	lw	a1,4(a3)
   1c0e0:	820d                	srli	a2,a2,0x3
   1c0e2:	05f6                	slli	a1,a1,0x1d
   1c0e4:	8e4d                	or	a2,a2,a1
   1c0e6:	c290                	sw	a2,0(a3)
   1c0e8:	0691                	addi	a3,a3,4
   1c0ea:	fed519e3          	bne	a0,a3,1c0dc <__multf3+0x9b4>
   1c0ee:	6621                	lui	a2,0x8
   1c0f0:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   1c0f2:	46f6                	lw	a3,92(sp)
   1c0f4:	65a1                	lui	a1,0x8
   1c0f6:	04f64f63          	blt	a2,a5,1c154 <__multf3+0xa2c>
   1c0fa:	828d                	srli	a3,a3,0x3
   1c0fc:	ceb6                	sw	a3,92(sp)
   1c0fe:	4576                	lw	a0,92(sp)
   1c100:	073e                	slli	a4,a4,0xf
   1c102:	8f5d                	or	a4,a4,a5
   1c104:	06a11623          	sh	a0,108(sp)
   1c108:	06e11723          	sh	a4,110(sp)
   1c10c:	45c6                	lw	a1,80(sp)
   1c10e:	4656                	lw	a2,84(sp)
   1c110:	46e6                	lw	a3,88(sp)
   1c112:	57b6                	lw	a5,108(sp)
   1c114:	c019                	beqz	s0,1c11a <__multf3+0x9f2>
   1c116:	00142073          	csrs	fflags,s0
   1c11a:	4732                	lw	a4,12(sp)
   1c11c:	50fa                	lw	ra,188(sp)
   1c11e:	546a                	lw	s0,184(sp)
   1c120:	c30c                	sw	a1,0(a4)
   1c122:	c350                	sw	a2,4(a4)
   1c124:	c714                	sw	a3,8(a4)
   1c126:	c75c                	sw	a5,12(a4)
   1c128:	54da                	lw	s1,180(sp)
   1c12a:	594a                	lw	s2,176(sp)
   1c12c:	59ba                	lw	s3,172(sp)
   1c12e:	5a2a                	lw	s4,168(sp)
   1c130:	5a9a                	lw	s5,164(sp)
   1c132:	5b0a                	lw	s6,160(sp)
   1c134:	4bfa                	lw	s7,156(sp)
   1c136:	4c6a                	lw	s8,152(sp)
   1c138:	4cda                	lw	s9,148(sp)
   1c13a:	4d4a                	lw	s10,144(sp)
   1c13c:	4dba                	lw	s11,140(sp)
   1c13e:	853a                	mv	a0,a4
   1c140:	6129                	addi	sp,sp,192
   1c142:	8082                	ret
   1c144:	fb3d                	bnez	a4,1c0ba <__multf3+0x992>
   1c146:	0621                	addi	a2,a2,8
   1c148:	c8b2                	sw	a2,80(sp)
   1c14a:	00863613          	sltiu	a2,a2,8
   1c14e:	bf99                	j	1c0a4 <__multf3+0x97c>
   1c150:	d72d                	beqz	a4,1c0ba <__multf3+0x992>
   1c152:	bfd5                	j	1c146 <__multf3+0xa1e>
   1c154:	4789                	li	a5,2
   1c156:	02f48463          	beq	s1,a5,1c17e <__multf3+0xa56>
   1c15a:	478d                	li	a5,3
   1c15c:	00f48763          	beq	s1,a5,1c16a <__multf3+0xa42>
   1c160:	e491                	bnez	s1,1c16c <__multf3+0xa44>
   1c162:	4681                	li	a3,0
   1c164:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   1c168:	a021                	j	1c170 <__multf3+0xa48>
   1c16a:	df65                	beqz	a4,1c162 <__multf3+0xa3a>
   1c16c:	56fd                	li	a3,-1
   1c16e:	87b2                	mv	a5,a2
   1c170:	ceb6                	sw	a3,92(sp)
   1c172:	ccb6                	sw	a3,88(sp)
   1c174:	cab6                	sw	a3,84(sp)
   1c176:	c8b6                	sw	a3,80(sp)
   1c178:	00546413          	ori	s0,s0,5
   1c17c:	b749                	j	1c0fe <__multf3+0x9d6>
   1c17e:	f375                	bnez	a4,1c162 <__multf3+0xa3a>
   1c180:	b7f5                	j	1c16c <__multf3+0xa44>
   1c182:	4685                	li	a3,1
   1c184:	ebb9                	bnez	a5,1c1da <__multf3+0xab2>
   1c186:	4646                	lw	a2,80(sp)
   1c188:	46f6                	lw	a3,92(sp)
   1c18a:	00767593          	andi	a1,a2,7
   1c18e:	c1b1                	beqz	a1,1c1d2 <__multf3+0xaaa>
   1c190:	4809                	li	a6,2
   1c192:	45d6                	lw	a1,84(sp)
   1c194:	4566                	lw	a0,88(sp)
   1c196:	00146413          	ori	s0,s0,1
   1c19a:	03048b63          	beq	s1,a6,1c1d0 <__multf3+0xaa8>
   1c19e:	480d                	li	a6,3
   1c1a0:	03048363          	beq	s1,a6,1c1c6 <__multf3+0xa9e>
   1c1a4:	e49d                	bnez	s1,1c1d2 <__multf3+0xaaa>
   1c1a6:	00f67813          	andi	a6,a2,15
   1c1aa:	4891                	li	a7,4
   1c1ac:	03180363          	beq	a6,a7,1c1d2 <__multf3+0xaaa>
   1c1b0:	0611                	addi	a2,a2,4
   1c1b2:	00463613          	sltiu	a2,a2,4
   1c1b6:	95b2                	add	a1,a1,a2
   1c1b8:	00c5b5b3          	sltu	a1,a1,a2
   1c1bc:	952e                	add	a0,a0,a1
   1c1be:	00b53533          	sltu	a0,a0,a1
   1c1c2:	96aa                	add	a3,a3,a0
   1c1c4:	a039                	j	1c1d2 <__multf3+0xaaa>
   1c1c6:	e711                	bnez	a4,1c1d2 <__multf3+0xaaa>
   1c1c8:	0621                	addi	a2,a2,8
   1c1ca:	00863613          	sltiu	a2,a2,8
   1c1ce:	b7e5                	j	1c1b6 <__multf3+0xa8e>
   1c1d0:	ff65                	bnez	a4,1c1c8 <__multf3+0xaa0>
   1c1d2:	82d1                	srli	a3,a3,0x14
   1c1d4:	0016c693          	xori	a3,a3,1
   1c1d8:	8a85                	andi	a3,a3,1
   1c1da:	4605                	li	a2,1
   1c1dc:	40f607b3          	sub	a5,a2,a5
   1c1e0:	07400593          	li	a1,116
   1c1e4:	18f5c163          	blt	a1,a5,1c366 <__multf3+0xc3e>
   1c1e8:	0890                	addi	a2,sp,80
   1c1ea:	4057d593          	srai	a1,a5,0x5
   1c1ee:	01f7f513          	andi	a0,a5,31
   1c1f2:	88b2                	mv	a7,a2
   1c1f4:	4781                	li	a5,0
   1c1f6:	4801                	li	a6,0
   1c1f8:	02b81763          	bne	a6,a1,1c226 <__multf3+0xafe>
   1c1fc:	480d                	li	a6,3
   1c1fe:	40b80833          	sub	a6,a6,a1
   1c202:	00259893          	slli	a7,a1,0x2
   1c206:	e51d                	bnez	a0,1c234 <__multf3+0xb0c>
   1c208:	8332                	mv	t1,a2
   1c20a:	01130e33          	add	t3,t1,a7
   1c20e:	000e2e03          	lw	t3,0(t3)
   1c212:	0505                	addi	a0,a0,1
   1c214:	0311                	addi	t1,t1,4
   1c216:	ffc32e23          	sw	t3,-4(t1)
   1c21a:	fea858e3          	bge	a6,a0,1c20a <__multf3+0xae2>
   1c21e:	4511                	li	a0,4
   1c220:	40b505b3          	sub	a1,a0,a1
   1c224:	a8a1                	j	1c27c <__multf3+0xb54>
   1c226:	0008a303          	lw	t1,0(a7)
   1c22a:	0805                	addi	a6,a6,1
   1c22c:	0891                	addi	a7,a7,4
   1c22e:	0067e7b3          	or	a5,a5,t1
   1c232:	b7d9                	j	1c1f8 <__multf3+0xad0>
   1c234:	05088313          	addi	t1,a7,80
   1c238:	03010e13          	addi	t3,sp,48
   1c23c:	9372                	add	t1,t1,t3
   1c23e:	fd032303          	lw	t1,-48(t1)
   1c242:	02000e93          	li	t4,32
   1c246:	40ae8eb3          	sub	t4,t4,a0
   1c24a:	01d31333          	sll	t1,t1,t4
   1c24e:	0067e7b3          	or	a5,a5,t1
   1c252:	4f01                	li	t5,0
   1c254:	01160333          	add	t1,a2,a7
   1c258:	411008b3          	neg	a7,a7
   1c25c:	0b0f4d63          	blt	t5,a6,1c316 <__multf3+0xbee>
   1c260:	4891                	li	a7,4
   1c262:	080a                	slli	a6,a6,0x2
   1c264:	40b885b3          	sub	a1,a7,a1
   1c268:	05080813          	addi	a6,a6,80
   1c26c:	03010893          	addi	a7,sp,48
   1c270:	9846                	add	a6,a6,a7
   1c272:	48f6                	lw	a7,92(sp)
   1c274:	00a8d533          	srl	a0,a7,a0
   1c278:	fca82823          	sw	a0,-48(a6)
   1c27c:	4511                	li	a0,4
   1c27e:	8d0d                	sub	a0,a0,a1
   1c280:	050a                	slli	a0,a0,0x2
   1c282:	058a                	slli	a1,a1,0x2
   1c284:	4821                	li	a6,8
   1c286:	95b2                	add	a1,a1,a2
   1c288:	01056863          	bltu	a0,a6,1c298 <__multf3+0xb70>
   1c28c:	0005a023          	sw	zero,0(a1)
   1c290:	0005a223          	sw	zero,4(a1)
   1c294:	1561                	addi	a0,a0,-8
   1c296:	05a1                	addi	a1,a1,8
   1c298:	4811                	li	a6,4
   1c29a:	01056463          	bltu	a0,a6,1c2a2 <__multf3+0xb7a>
   1c29e:	0005a023          	sw	zero,0(a1)
   1c2a2:	45c6                	lw	a1,80(sp)
   1c2a4:	00f037b3          	snez	a5,a5
   1c2a8:	8fcd                	or	a5,a5,a1
   1c2aa:	c8be                	sw	a5,80(sp)
   1c2ac:	0077f593          	andi	a1,a5,7
   1c2b0:	c1a1                	beqz	a1,1c2f0 <__multf3+0xbc8>
   1c2b2:	4509                	li	a0,2
   1c2b4:	45f6                	lw	a1,92(sp)
   1c2b6:	08a48763          	beq	s1,a0,1c344 <__multf3+0xc1c>
   1c2ba:	450d                	li	a0,3
   1c2bc:	06a48e63          	beq	s1,a0,1c338 <__multf3+0xc10>
   1c2c0:	e495                	bnez	s1,1c2ec <__multf3+0xbc4>
   1c2c2:	00f7f513          	andi	a0,a5,15
   1c2c6:	4811                	li	a6,4
   1c2c8:	03050263          	beq	a0,a6,1c2ec <__multf3+0xbc4>
   1c2cc:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   1c2ce:	c8be                	sw	a5,80(sp)
   1c2d0:	0047b793          	sltiu	a5,a5,4
   1c2d4:	4556                	lw	a0,84(sp)
   1c2d6:	97aa                	add	a5,a5,a0
   1c2d8:	cabe                	sw	a5,84(sp)
   1c2da:	00a7b7b3          	sltu	a5,a5,a0
   1c2de:	4566                	lw	a0,88(sp)
   1c2e0:	97aa                	add	a5,a5,a0
   1c2e2:	ccbe                	sw	a5,88(sp)
   1c2e4:	00a7b7b3          	sltu	a5,a5,a0
   1c2e8:	97ae                	add	a5,a5,a1
   1c2ea:	cebe                	sw	a5,92(sp)
   1c2ec:	00146413          	ori	s0,s0,1
   1c2f0:	45f6                	lw	a1,92(sp)
   1c2f2:	00c59793          	slli	a5,a1,0xc
   1c2f6:	0407d963          	bgez	a5,1c348 <__multf3+0xc20>
   1c2fa:	ce82                	sw	zero,92(sp)
   1c2fc:	cc82                	sw	zero,88(sp)
   1c2fe:	ca82                	sw	zero,84(sp)
   1c300:	c882                	sw	zero,80(sp)
   1c302:	00146413          	ori	s0,s0,1
   1c306:	4785                	li	a5,1
   1c308:	de068be3          	beqz	a3,1c0fe <__multf3+0x9d6>
   1c30c:	00147693          	andi	a3,s0,1
   1c310:	0686                	slli	a3,a3,0x1
   1c312:	8c55                	or	s0,s0,a3
   1c314:	b3ed                	j	1c0fe <__multf3+0x9d6>
   1c316:	00032e03          	lw	t3,0(t1)
   1c31a:	00432f83          	lw	t6,4(t1)
   1c31e:	011302b3          	add	t0,t1,a7
   1c322:	00ae5e33          	srl	t3,t3,a0
   1c326:	01df9fb3          	sll	t6,t6,t4
   1c32a:	01fe6e33          	or	t3,t3,t6
   1c32e:	01c2a023          	sw	t3,0(t0)
   1c332:	0f05                	addi	t5,t5,1
   1c334:	0311                	addi	t1,t1,4
   1c336:	b71d                	j	1c25c <__multf3+0xb34>
   1c338:	fb55                	bnez	a4,1c2ec <__multf3+0xbc4>
   1c33a:	07a1                	addi	a5,a5,8
   1c33c:	c8be                	sw	a5,80(sp)
   1c33e:	0087b793          	sltiu	a5,a5,8
   1c342:	bf49                	j	1c2d4 <__multf3+0xbac>
   1c344:	d745                	beqz	a4,1c2ec <__multf3+0xbc4>
   1c346:	bfd5                	j	1c33a <__multf3+0xc12>
   1c348:	00c60813          	addi	a6,a2,12
   1c34c:	421c                	lw	a5,0(a2)
   1c34e:	4248                	lw	a0,4(a2)
   1c350:	838d                	srli	a5,a5,0x3
   1c352:	0576                	slli	a0,a0,0x1d
   1c354:	8fc9                	or	a5,a5,a0
   1c356:	c21c                	sw	a5,0(a2)
   1c358:	0611                	addi	a2,a2,4
   1c35a:	fec819e3          	bne	a6,a2,1c34c <__multf3+0xc24>
   1c35e:	818d                	srli	a1,a1,0x3
   1c360:	ceae                	sw	a1,92(sp)
   1c362:	4781                	li	a5,0
   1c364:	b755                	j	1c308 <__multf3+0xbe0>
   1c366:	46d6                	lw	a3,84(sp)
   1c368:	47c6                	lw	a5,80(sp)
   1c36a:	8fd5                	or	a5,a5,a3
   1c36c:	46e6                	lw	a3,88(sp)
   1c36e:	8fd5                	or	a5,a5,a3
   1c370:	46f6                	lw	a3,92(sp)
   1c372:	8fd5                	or	a5,a5,a3
   1c374:	c395                	beqz	a5,1c398 <__multf3+0xc70>
   1c376:	ce82                	sw	zero,92(sp)
   1c378:	cc82                	sw	zero,88(sp)
   1c37a:	ca82                	sw	zero,84(sp)
   1c37c:	c8b2                	sw	a2,80(sp)
   1c37e:	4789                	li	a5,2
   1c380:	00146413          	ori	s0,s0,1
   1c384:	02f48263          	beq	s1,a5,1c3a8 <__multf3+0xc80>
   1c388:	478d                	li	a5,3
   1c38a:	00f48b63          	beq	s1,a5,1c3a0 <__multf3+0xc78>
   1c38e:	4795                	li	a5,5
   1c390:	c891                	beqz	s1,1c3a4 <__multf3+0xc7c>
   1c392:	47c6                	lw	a5,80(sp)
   1c394:	838d                	srli	a5,a5,0x3
   1c396:	c8be                	sw	a5,80(sp)
   1c398:	00246413          	ori	s0,s0,2
   1c39c:	4781                	li	a5,0
   1c39e:	b385                	j	1c0fe <__multf3+0x9d6>
   1c3a0:	fb6d                	bnez	a4,1c392 <__multf3+0xc6a>
   1c3a2:	47a5                	li	a5,9
   1c3a4:	c8be                	sw	a5,80(sp)
   1c3a6:	b7f5                	j	1c392 <__multf3+0xc6a>
   1c3a8:	ff6d                	bnez	a4,1c3a2 <__multf3+0xc7a>
   1c3aa:	b7e5                	j	1c392 <__multf3+0xc6a>
   1c3ac:	ce82                	sw	zero,92(sp)
   1c3ae:	cc82                	sw	zero,88(sp)
   1c3b0:	ca82                	sw	zero,84(sp)
   1c3b2:	c882                	sw	zero,80(sp)
   1c3b4:	b7e5                	j	1c39c <__multf3+0xc74>
   1c3b6:	67a1                	lui	a5,0x8
   1c3b8:	ce82                	sw	zero,92(sp)
   1c3ba:	cc82                	sw	zero,88(sp)
   1c3bc:	ca82                	sw	zero,84(sp)
   1c3be:	c882                	sw	zero,80(sp)
   1c3c0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c3c2:	bb35                	j	1c0fe <__multf3+0x9d6>

0001c3c4 <__subtf3>:
   1c3c4:	7159                	addi	sp,sp,-112
   1c3c6:	d2a6                	sw	s1,100(sp)
   1c3c8:	d0ca                	sw	s2,96(sp)
   1c3ca:	cece                	sw	s3,92(sp)
   1c3cc:	c2e6                	sw	s9,68(sp)
   1c3ce:	d686                	sw	ra,108(sp)
   1c3d0:	d4a2                	sw	s0,104(sp)
   1c3d2:	ccd2                	sw	s4,88(sp)
   1c3d4:	cad6                	sw	s5,84(sp)
   1c3d6:	c8da                	sw	s6,80(sp)
   1c3d8:	c6de                	sw	s7,76(sp)
   1c3da:	c4e2                	sw	s8,72(sp)
   1c3dc:	892a                	mv	s2,a0
   1c3de:	4198                	lw	a4,0(a1)
   1c3e0:	41d4                	lw	a3,4(a1)
   1c3e2:	459c                	lw	a5,8(a1)
   1c3e4:	00c5a983          	lw	s3,12(a1)
   1c3e8:	4204                	lw	s1,0(a2)
   1c3ea:	00462883          	lw	a7,4(a2)
   1c3ee:	00862803          	lw	a6,8(a2)
   1c3f2:	00c62c83          	lw	s9,12(a2)
   1c3f6:	00202a73          	frrm	s4
   1c3fa:	dc3e                	sw	a5,56(sp)
   1c3fc:	c43e                	sw	a5,8(sp)
   1c3fe:	01099793          	slli	a5,s3,0x10
   1c402:	83c1                	srli	a5,a5,0x10
   1c404:	00199413          	slli	s0,s3,0x1
   1c408:	858a                	mv	a1,sp
   1c40a:	de4e                	sw	s3,60(sp)
   1c40c:	c63e                	sw	a5,12(sp)
   1c40e:	d83a                	sw	a4,48(sp)
   1c410:	da36                	sw	a3,52(sp)
   1c412:	c03a                	sw	a4,0(sp)
   1c414:	c236                	sw	a3,4(sp)
   1c416:	8045                	srli	s0,s0,0x11
   1c418:	01f9d993          	srli	s3,s3,0x1f
   1c41c:	ff410313          	addi	t1,sp,-12
   1c420:	87ae                	mv	a5,a1
   1c422:	852e                	mv	a0,a1
   1c424:	47d4                	lw	a3,12(a5)
   1c426:	4790                	lw	a2,8(a5)
   1c428:	17f1                	addi	a5,a5,-4
   1c42a:	068e                	slli	a3,a3,0x3
   1c42c:	8275                	srli	a2,a2,0x1d
   1c42e:	8ed1                	or	a3,a3,a2
   1c430:	cb94                	sw	a3,16(a5)
   1c432:	fef319e3          	bne	t1,a5,1c424 <__subtf3+0x60>
   1c436:	010c9793          	slli	a5,s9,0x10
   1c43a:	83c1                	srli	a5,a5,0x10
   1c43c:	001c9a93          	slli	s5,s9,0x1
   1c440:	070e                	slli	a4,a4,0x3
   1c442:	dc42                	sw	a6,56(sp)
   1c444:	cc42                	sw	a6,24(sp)
   1c446:	01010813          	addi	a6,sp,16
   1c44a:	da46                	sw	a7,52(sp)
   1c44c:	de66                	sw	s9,60(sp)
   1c44e:	ca46                	sw	a7,20(sp)
   1c450:	ce3e                	sw	a5,28(sp)
   1c452:	c03a                	sw	a4,0(sp)
   1c454:	d826                	sw	s1,48(sp)
   1c456:	c826                	sw	s1,16(sp)
   1c458:	011ada93          	srli	s5,s5,0x11
   1c45c:	01fcdc93          	srli	s9,s9,0x1f
   1c460:	00410893          	addi	a7,sp,4
   1c464:	87c2                	mv	a5,a6
   1c466:	8e42                	mv	t3,a6
   1c468:	47d4                	lw	a3,12(a5)
   1c46a:	4790                	lw	a2,8(a5)
   1c46c:	17f1                	addi	a5,a5,-4
   1c46e:	068e                	slli	a3,a3,0x3
   1c470:	8275                	srli	a2,a2,0x1d
   1c472:	8ed1                	or	a3,a3,a2
   1c474:	cb94                	sw	a3,16(a5)
   1c476:	fef899e3          	bne	a7,a5,1c468 <__subtf3+0xa4>
   1c47a:	048e                	slli	s1,s1,0x3
   1c47c:	67a1                	lui	a5,0x8
   1c47e:	c826                	sw	s1,16(sp)
   1c480:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c482:	00fa9963          	bne	s5,a5,1c494 <__subtf3+0xd0>
   1c486:	46e2                	lw	a3,24(sp)
   1c488:	47d2                	lw	a5,20(sp)
   1c48a:	8fd5                	or	a5,a5,a3
   1c48c:	46f2                	lw	a3,28(sp)
   1c48e:	8fd5                	or	a5,a5,a3
   1c490:	8fc5                	or	a5,a5,s1
   1c492:	e399                	bnez	a5,1c498 <__subtf3+0xd4>
   1c494:	001ccc93          	xori	s9,s9,1
   1c498:	415407b3          	sub	a5,s0,s5
   1c49c:	5d3c9c63          	bne	s9,s3,1ca74 <__subtf3+0x6b0>
   1c4a0:	24f05963          	blez	a5,1c6f2 <__subtf3+0x32e>
   1c4a4:	4312                	lw	t1,4(sp)
   1c4a6:	48a2                	lw	a7,8(sp)
   1c4a8:	45b2                	lw	a1,12(sp)
   1c4aa:	080a9963          	bnez	s5,1c53c <__subtf3+0x178>
   1c4ae:	4552                	lw	a0,20(sp)
   1c4b0:	46e2                	lw	a3,24(sp)
   1c4b2:	4ef2                	lw	t4,28(sp)
   1c4b4:	00d56633          	or	a2,a0,a3
   1c4b8:	01d66633          	or	a2,a2,t4
   1c4bc:	8e45                	or	a2,a2,s1
   1c4be:	e61d                	bnez	a2,1c4ec <__subtf3+0x128>
   1c4c0:	66a1                	lui	a3,0x8
   1c4c2:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c4c4:	00d79e63          	bne	a5,a3,1c4e0 <__subtf3+0x11c>
   1c4c8:	011366b3          	or	a3,t1,a7
   1c4cc:	8ecd                	or	a3,a3,a1
   1c4ce:	8ed9                	or	a3,a3,a4
   1c4d0:	ca81                	beqz	a3,1c4e0 <__subtf3+0x11c>
   1c4d2:	0125da93          	srli	s5,a1,0x12
   1c4d6:	001aca93          	xori	s5,s5,1
   1c4da:	001afa93          	andi	s5,s5,1
   1c4de:	0a92                	slli	s5,s5,0x4
   1c4e0:	d03a                	sw	a4,32(sp)
   1c4e2:	d21a                	sw	t1,36(sp)
   1c4e4:	d446                	sw	a7,40(sp)
   1c4e6:	d62e                	sw	a1,44(sp)
   1c4e8:	8456                	mv	s0,s5
   1c4ea:	ac99                	j	1c740 <__subtf3+0x37c>
   1c4ec:	fff78613          	addi	a2,a5,-1
   1c4f0:	ea0d                	bnez	a2,1c522 <__subtf3+0x15e>
   1c4f2:	94ba                	add	s1,s1,a4
   1c4f4:	932a                	add	t1,t1,a0
   1c4f6:	d026                	sw	s1,32(sp)
   1c4f8:	00e4b4b3          	sltu	s1,s1,a4
   1c4fc:	949a                	add	s1,s1,t1
   1c4fe:	d226                	sw	s1,36(sp)
   1c500:	00a33533          	sltu	a0,t1,a0
   1c504:	0064b4b3          	sltu	s1,s1,t1
   1c508:	98b6                	add	a7,a7,a3
   1c50a:	8d45                	or	a0,a0,s1
   1c50c:	9546                	add	a0,a0,a7
   1c50e:	d42a                	sw	a0,40(sp)
   1c510:	00d8b733          	sltu	a4,a7,a3
   1c514:	01153533          	sltu	a0,a0,a7
   1c518:	8f49                	or	a4,a4,a0
   1c51a:	9eae                	add	t4,t4,a1
   1c51c:	9776                	add	a4,a4,t4
   1c51e:	4785                	li	a5,1
   1c520:	a299                	j	1c666 <__subtf3+0x2a2>
   1c522:	66a1                	lui	a3,0x8
   1c524:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c526:	fad781e3          	beq	a5,a3,1c4c8 <__subtf3+0x104>
   1c52a:	07400793          	li	a5,116
   1c52e:	04c7d863          	bge	a5,a2,1c57e <__subtf3+0x1ba>
   1c532:	ce02                	sw	zero,28(sp)
   1c534:	cc02                	sw	zero,24(sp)
   1c536:	ca02                	sw	zero,20(sp)
   1c538:	4785                	li	a5,1
   1c53a:	a8dd                	j	1c630 <__subtf3+0x26c>
   1c53c:	66a1                	lui	a3,0x8
   1c53e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c540:	02d41563          	bne	s0,a3,1c56a <__subtf3+0x1a6>
   1c544:	011367b3          	or	a5,t1,a7
   1c548:	8fcd                	or	a5,a5,a1
   1c54a:	8fd9                	or	a5,a5,a4
   1c54c:	4681                	li	a3,0
   1c54e:	c799                	beqz	a5,1c55c <__subtf3+0x198>
   1c550:	0125d693          	srli	a3,a1,0x12
   1c554:	0016c693          	xori	a3,a3,1
   1c558:	8a85                	andi	a3,a3,1
   1c55a:	0692                	slli	a3,a3,0x4
   1c55c:	d03a                	sw	a4,32(sp)
   1c55e:	d21a                	sw	t1,36(sp)
   1c560:	d446                	sw	a7,40(sp)
   1c562:	d62e                	sw	a1,44(sp)
   1c564:	87a2                	mv	a5,s0
   1c566:	8436                	mv	s0,a3
   1c568:	aae1                	j	1c740 <__subtf3+0x37c>
   1c56a:	46f2                	lw	a3,28(sp)
   1c56c:	00080637          	lui	a2,0x80
   1c570:	8ed1                	or	a3,a3,a2
   1c572:	ce36                	sw	a3,28(sp)
   1c574:	07400693          	li	a3,116
   1c578:	faf6cde3          	blt	a3,a5,1c532 <__subtf3+0x16e>
   1c57c:	863e                	mv	a2,a5
   1c57e:	40565693          	srai	a3,a2,0x5
   1c582:	8ec2                	mv	t4,a6
   1c584:	8a7d                	andi	a2,a2,31
   1c586:	4781                	li	a5,0
   1c588:	4501                	li	a0,0
   1c58a:	02d51563          	bne	a0,a3,1c5b4 <__subtf3+0x1f0>
   1c58e:	450d                	li	a0,3
   1c590:	8d15                	sub	a0,a0,a3
   1c592:	00269e93          	slli	t4,a3,0x2
   1c596:	e615                	bnez	a2,1c5c2 <__subtf3+0x1fe>
   1c598:	01d80f33          	add	t5,a6,t4
   1c59c:	000f2f03          	lw	t5,0(t5)
   1c5a0:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x603fd>
   1c5a2:	0811                	addi	a6,a6,4
   1c5a4:	ffe82e23          	sw	t5,-4(a6)
   1c5a8:	fec558e3          	bge	a0,a2,1c598 <__subtf3+0x1d4>
   1c5ac:	4611                	li	a2,4
   1c5ae:	40d606b3          	sub	a3,a2,a3
   1c5b2:	a881                	j	1c602 <__subtf3+0x23e>
   1c5b4:	000eaf03          	lw	t5,0(t4)
   1c5b8:	0505                	addi	a0,a0,1
   1c5ba:	0e91                	addi	t4,t4,4
   1c5bc:	01e7e7b3          	or	a5,a5,t5
   1c5c0:	b7e9                	j	1c58a <__subtf3+0x1c6>
   1c5c2:	040e8493          	addi	s1,t4,64
   1c5c6:	00248f33          	add	t5,s1,sp
   1c5ca:	fd0f2f03          	lw	t5,-48(t5)
   1c5ce:	02000393          	li	t2,32
   1c5d2:	40c383b3          	sub	t2,t2,a2
   1c5d6:	007f1f33          	sll	t5,t5,t2
   1c5da:	9876                	add	a6,a6,t4
   1c5dc:	01e7e7b3          	or	a5,a5,t5
   1c5e0:	41d00eb3          	neg	t4,t4
   1c5e4:	4f81                	li	t6,0
   1c5e6:	0eafc563          	blt	t6,a0,1c6d0 <__subtf3+0x30c>
   1c5ea:	4811                	li	a6,4
   1c5ec:	40d806b3          	sub	a3,a6,a3
   1c5f0:	4872                	lw	a6,28(sp)
   1c5f2:	050a                	slli	a0,a0,0x2
   1c5f4:	04050513          	addi	a0,a0,64
   1c5f8:	950a                	add	a0,a0,sp
   1c5fa:	00c85633          	srl	a2,a6,a2
   1c5fe:	fcc52823          	sw	a2,-48(a0)
   1c602:	4611                	li	a2,4
   1c604:	8e15                	sub	a2,a2,a3
   1c606:	060a                	slli	a2,a2,0x2
   1c608:	068a                	slli	a3,a3,0x2
   1c60a:	4521                	li	a0,8
   1c60c:	96f2                	add	a3,a3,t3
   1c60e:	00a66863          	bltu	a2,a0,1c61e <__subtf3+0x25a>
   1c612:	0006a023          	sw	zero,0(a3)
   1c616:	0006a223          	sw	zero,4(a3)
   1c61a:	1661                	addi	a2,a2,-8
   1c61c:	06a1                	addi	a3,a3,8
   1c61e:	4511                	li	a0,4
   1c620:	00a66463          	bltu	a2,a0,1c628 <__subtf3+0x264>
   1c624:	0006a023          	sw	zero,0(a3)
   1c628:	46c2                	lw	a3,16(sp)
   1c62a:	00f037b3          	snez	a5,a5
   1c62e:	8fd5                	or	a5,a5,a3
   1c630:	46d2                	lw	a3,20(sp)
   1c632:	c83e                	sw	a5,16(sp)
   1c634:	97ba                	add	a5,a5,a4
   1c636:	9336                	add	t1,t1,a3
   1c638:	d03e                	sw	a5,32(sp)
   1c63a:	00e7b7b3          	sltu	a5,a5,a4
   1c63e:	4762                	lw	a4,24(sp)
   1c640:	979a                	add	a5,a5,t1
   1c642:	d23e                	sw	a5,36(sp)
   1c644:	00d336b3          	sltu	a3,t1,a3
   1c648:	0067b7b3          	sltu	a5,a5,t1
   1c64c:	98ba                	add	a7,a7,a4
   1c64e:	8fd5                	or	a5,a5,a3
   1c650:	97c6                	add	a5,a5,a7
   1c652:	d43e                	sw	a5,40(sp)
   1c654:	00e8b733          	sltu	a4,a7,a4
   1c658:	0117b7b3          	sltu	a5,a5,a7
   1c65c:	8f5d                	or	a4,a4,a5
   1c65e:	47f2                	lw	a5,28(sp)
   1c660:	97ae                	add	a5,a5,a1
   1c662:	973e                	add	a4,a4,a5
   1c664:	87a2                	mv	a5,s0
   1c666:	d63a                	sw	a4,44(sp)
   1c668:	00c71693          	slli	a3,a4,0xc
   1c66c:	4401                	li	s0,0
   1c66e:	0c06d963          	bgez	a3,1c740 <__subtf3+0x37c>
   1c672:	5602                	lw	a2,32(sp)
   1c674:	fff806b7          	lui	a3,0xfff80
   1c678:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff603fb>
   1c67a:	8f75                	and	a4,a4,a3
   1c67c:	d63a                	sw	a4,44(sp)
   1c67e:	0785                	addi	a5,a5,1
   1c680:	067e                	slli	a2,a2,0x1f
   1c682:	1014                	addi	a3,sp,32
   1c684:	02c10813          	addi	a6,sp,44
   1c688:	428c                	lw	a1,0(a3)
   1c68a:	42c8                	lw	a0,4(a3)
   1c68c:	8185                	srli	a1,a1,0x1
   1c68e:	057e                	slli	a0,a0,0x1f
   1c690:	8dc9                	or	a1,a1,a0
   1c692:	c28c                	sw	a1,0(a3)
   1c694:	0691                	addi	a3,a3,4
   1c696:	fed819e3          	bne	a6,a3,1c688 <__subtf3+0x2c4>
   1c69a:	5682                	lw	a3,32(sp)
   1c69c:	8305                	srli	a4,a4,0x1
   1c69e:	d63a                	sw	a4,44(sp)
   1c6a0:	00c03733          	snez	a4,a2
   1c6a4:	8f55                	or	a4,a4,a3
   1c6a6:	d03a                	sw	a4,32(sp)
   1c6a8:	6721                	lui	a4,0x8
   1c6aa:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c6ac:	4401                	li	s0,0
   1c6ae:	08e79963          	bne	a5,a4,1c740 <__subtf3+0x37c>
   1c6b2:	3a0a0963          	beqz	s4,1ca64 <__subtf3+0x6a0>
   1c6b6:	478d                	li	a5,3
   1c6b8:	3afa1163          	bne	s4,a5,1ca5a <__subtf3+0x696>
   1c6bc:	3a098463          	beqz	s3,1ca64 <__subtf3+0x6a0>
   1c6c0:	57fd                	li	a5,-1
   1c6c2:	d63e                	sw	a5,44(sp)
   1c6c4:	d43e                	sw	a5,40(sp)
   1c6c6:	d23e                	sw	a5,36(sp)
   1c6c8:	d03e                	sw	a5,32(sp)
   1c6ca:	67a1                	lui	a5,0x8
   1c6cc:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1c6ce:	a64d                	j	1ca70 <__subtf3+0x6ac>
   1c6d0:	00082f03          	lw	t5,0(a6)
   1c6d4:	00482283          	lw	t0,4(a6)
   1c6d8:	01d804b3          	add	s1,a6,t4
   1c6dc:	00cf5f33          	srl	t5,t5,a2
   1c6e0:	007292b3          	sll	t0,t0,t2
   1c6e4:	005f6f33          	or	t5,t5,t0
   1c6e8:	01e4a023          	sw	t5,0(s1)
   1c6ec:	0f85                	addi	t6,t6,1
   1c6ee:	0811                	addi	a6,a6,4
   1c6f0:	bddd                	j	1c5e6 <__subtf3+0x222>
   1c6f2:	4bd2                	lw	s7,20(sp)
   1c6f4:	4c62                	lw	s8,24(sp)
   1c6f6:	4b72                	lw	s6,28(sp)
   1c6f8:	1e078363          	beqz	a5,1c8de <__subtf3+0x51a>
   1c6fc:	408a87b3          	sub	a5,s5,s0
   1c700:	e859                	bnez	s0,1c796 <__subtf3+0x3d2>
   1c702:	4612                	lw	a2,4(sp)
   1c704:	46a2                	lw	a3,8(sp)
   1c706:	48b2                	lw	a7,12(sp)
   1c708:	00d66833          	or	a6,a2,a3
   1c70c:	01186833          	or	a6,a6,a7
   1c710:	00e86833          	or	a6,a6,a4
   1c714:	02081963          	bnez	a6,1c746 <__subtf3+0x382>
   1c718:	6721                	lui	a4,0x8
   1c71a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c71c:	00e79e63          	bne	a5,a4,1c738 <__subtf3+0x374>
   1c720:	018be733          	or	a4,s7,s8
   1c724:	01676733          	or	a4,a4,s6
   1c728:	8f45                	or	a4,a4,s1
   1c72a:	c719                	beqz	a4,1c738 <__subtf3+0x374>
   1c72c:	012b5413          	srli	s0,s6,0x12
   1c730:	00144413          	xori	s0,s0,1
   1c734:	8805                	andi	s0,s0,1
   1c736:	0412                	slli	s0,s0,0x4
   1c738:	d026                	sw	s1,32(sp)
   1c73a:	d25e                	sw	s7,36(sp)
   1c73c:	d462                	sw	s8,40(sp)
   1c73e:	d65a                	sw	s6,44(sp)
   1c740:	4681                	li	a3,0
   1c742:	3fb0006f          	j	1d33c <__subtf3+0xf78>
   1c746:	fff78813          	addi	a6,a5,-1
   1c74a:	02081963          	bnez	a6,1c77c <__subtf3+0x3b8>
   1c74e:	94ba                	add	s1,s1,a4
   1c750:	9bb2                	add	s7,s7,a2
   1c752:	d026                	sw	s1,32(sp)
   1c754:	00e4b4b3          	sltu	s1,s1,a4
   1c758:	94de                	add	s1,s1,s7
   1c75a:	d226                	sw	s1,36(sp)
   1c75c:	00cbb633          	sltu	a2,s7,a2
   1c760:	0174b4b3          	sltu	s1,s1,s7
   1c764:	9c36                	add	s8,s8,a3
   1c766:	8e45                	or	a2,a2,s1
   1c768:	9662                	add	a2,a2,s8
   1c76a:	d432                	sw	a2,40(sp)
   1c76c:	00dc3733          	sltu	a4,s8,a3
   1c770:	01863633          	sltu	a2,a2,s8
   1c774:	8f51                	or	a4,a4,a2
   1c776:	98da                	add	a7,a7,s6
   1c778:	9746                	add	a4,a4,a7
   1c77a:	b355                	j	1c51e <__subtf3+0x15a>
   1c77c:	6721                	lui	a4,0x8
   1c77e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c780:	fae780e3          	beq	a5,a4,1c720 <__subtf3+0x35c>
   1c784:	07400793          	li	a5,116
   1c788:	0507d863          	bge	a5,a6,1c7d8 <__subtf3+0x414>
   1c78c:	c602                	sw	zero,12(sp)
   1c78e:	c402                	sw	zero,8(sp)
   1c790:	c202                	sw	zero,4(sp)
   1c792:	4785                	li	a5,1
   1c794:	a8cd                	j	1c886 <__subtf3+0x4c2>
   1c796:	6721                	lui	a4,0x8
   1c798:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c79a:	02ea9563          	bne	s5,a4,1c7c4 <__subtf3+0x400>
   1c79e:	018be7b3          	or	a5,s7,s8
   1c7a2:	0167e7b3          	or	a5,a5,s6
   1c7a6:	8fc5                	or	a5,a5,s1
   1c7a8:	4401                	li	s0,0
   1c7aa:	c799                	beqz	a5,1c7b8 <__subtf3+0x3f4>
   1c7ac:	012b5413          	srli	s0,s6,0x12
   1c7b0:	00144413          	xori	s0,s0,1
   1c7b4:	8805                	andi	s0,s0,1
   1c7b6:	0412                	slli	s0,s0,0x4
   1c7b8:	d026                	sw	s1,32(sp)
   1c7ba:	d25e                	sw	s7,36(sp)
   1c7bc:	d462                	sw	s8,40(sp)
   1c7be:	d65a                	sw	s6,44(sp)
   1c7c0:	87d6                	mv	a5,s5
   1c7c2:	bfbd                	j	1c740 <__subtf3+0x37c>
   1c7c4:	4732                	lw	a4,12(sp)
   1c7c6:	000806b7          	lui	a3,0x80
   1c7ca:	8f55                	or	a4,a4,a3
   1c7cc:	c63a                	sw	a4,12(sp)
   1c7ce:	07400713          	li	a4,116
   1c7d2:	faf74de3          	blt	a4,a5,1c78c <__subtf3+0x3c8>
   1c7d6:	883e                	mv	a6,a5
   1c7d8:	02000713          	li	a4,32
   1c7dc:	02e84733          	div	a4,a6,a4
   1c7e0:	86ae                	mv	a3,a1
   1c7e2:	4401                	li	s0,0
   1c7e4:	4781                	li	a5,0
   1c7e6:	02e7c663          	blt	a5,a4,1c812 <__subtf3+0x44e>
   1c7ea:	478d                	li	a5,3
   1c7ec:	01f87893          	andi	a7,a6,31
   1c7f0:	8f99                	sub	a5,a5,a4
   1c7f2:	00271613          	slli	a2,a4,0x2
   1c7f6:	02089363          	bnez	a7,1c81c <__subtf3+0x458>
   1c7fa:	00c586b3          	add	a3,a1,a2
   1c7fe:	4294                	lw	a3,0(a3)
   1c800:	0885                	addi	a7,a7,1
   1c802:	c194                	sw	a3,0(a1)
   1c804:	0591                	addi	a1,a1,4
   1c806:	ff17dae3          	bge	a5,a7,1c7fa <__subtf3+0x436>
   1c80a:	4791                	li	a5,4
   1c80c:	40e78733          	sub	a4,a5,a4
   1c810:	a899                	j	1c866 <__subtf3+0x4a2>
   1c812:	4290                	lw	a2,0(a3)
   1c814:	0785                	addi	a5,a5,1
   1c816:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x60400>
   1c818:	8c51                	or	s0,s0,a2
   1c81a:	b7f1                	j	1c7e6 <__subtf3+0x422>
   1c81c:	02000693          	li	a3,32
   1c820:	02d86833          	rem	a6,a6,a3
   1c824:	41068833          	sub	a6,a3,a6
   1c828:	86ba                	mv	a3,a4
   1c82a:	00075363          	bgez	a4,1c830 <__subtf3+0x46c>
   1c82e:	4681                	li	a3,0
   1c830:	068a                	slli	a3,a3,0x2
   1c832:	04068693          	addi	a3,a3,64
   1c836:	968a                	add	a3,a3,sp
   1c838:	fc06a683          	lw	a3,-64(a3)
   1c83c:	95b2                	add	a1,a1,a2
   1c83e:	4301                	li	t1,0
   1c840:	010696b3          	sll	a3,a3,a6
   1c844:	8c55                	or	s0,s0,a3
   1c846:	40c00633          	neg	a2,a2
   1c84a:	06f34a63          	blt	t1,a5,1c8be <__subtf3+0x4fa>
   1c84e:	4691                	li	a3,4
   1c850:	40e68733          	sub	a4,a3,a4
   1c854:	46b2                	lw	a3,12(sp)
   1c856:	078a                	slli	a5,a5,0x2
   1c858:	04078793          	addi	a5,a5,64
   1c85c:	978a                	add	a5,a5,sp
   1c85e:	0116d6b3          	srl	a3,a3,a7
   1c862:	fcd7a023          	sw	a3,-64(a5)
   1c866:	00572793          	slti	a5,a4,5
   1c86a:	4601                	li	a2,0
   1c86c:	c781                	beqz	a5,1c874 <__subtf3+0x4b0>
   1c86e:	4611                	li	a2,4
   1c870:	8e19                	sub	a2,a2,a4
   1c872:	060a                	slli	a2,a2,0x2
   1c874:	070a                	slli	a4,a4,0x2
   1c876:	953a                	add	a0,a0,a4
   1c878:	4581                	li	a1,0
   1c87a:	a93f70ef          	jal	1430c <memset>
   1c87e:	4702                	lw	a4,0(sp)
   1c880:	008037b3          	snez	a5,s0
   1c884:	8fd9                	or	a5,a5,a4
   1c886:	4692                	lw	a3,4(sp)
   1c888:	c03e                	sw	a5,0(sp)
   1c88a:	97a6                	add	a5,a5,s1
   1c88c:	9bb6                	add	s7,s7,a3
   1c88e:	4722                	lw	a4,8(sp)
   1c890:	d03e                	sw	a5,32(sp)
   1c892:	0097b7b3          	sltu	a5,a5,s1
   1c896:	97de                	add	a5,a5,s7
   1c898:	d23e                	sw	a5,36(sp)
   1c89a:	00dbb6b3          	sltu	a3,s7,a3
   1c89e:	0177b7b3          	sltu	a5,a5,s7
   1c8a2:	9c3a                	add	s8,s8,a4
   1c8a4:	8fd5                	or	a5,a5,a3
   1c8a6:	97e2                	add	a5,a5,s8
   1c8a8:	d43e                	sw	a5,40(sp)
   1c8aa:	00ec3733          	sltu	a4,s8,a4
   1c8ae:	0187b7b3          	sltu	a5,a5,s8
   1c8b2:	8f5d                	or	a4,a4,a5
   1c8b4:	47b2                	lw	a5,12(sp)
   1c8b6:	97da                	add	a5,a5,s6
   1c8b8:	973e                	add	a4,a4,a5
   1c8ba:	87d6                	mv	a5,s5
   1c8bc:	b36d                	j	1c666 <__subtf3+0x2a2>
   1c8be:	4194                	lw	a3,0(a1)
   1c8c0:	0045ae03          	lw	t3,4(a1)
   1c8c4:	00c58eb3          	add	t4,a1,a2
   1c8c8:	0116d6b3          	srl	a3,a3,a7
   1c8cc:	010e1e33          	sll	t3,t3,a6
   1c8d0:	01c6e6b3          	or	a3,a3,t3
   1c8d4:	00dea023          	sw	a3,0(t4)
   1c8d8:	0305                	addi	t1,t1,1
   1c8da:	0591                	addi	a1,a1,4
   1c8dc:	b7bd                	j	1c84a <__subtf3+0x486>
   1c8de:	00140793          	addi	a5,s0,1
   1c8e2:	01179513          	slli	a0,a5,0x11
   1c8e6:	8149                	srli	a0,a0,0x12
   1c8e8:	4612                	lw	a2,4(sp)
   1c8ea:	46a2                	lw	a3,8(sp)
   1c8ec:	45b2                	lw	a1,12(sp)
   1c8ee:	10051c63          	bnez	a0,1ca06 <__subtf3+0x642>
   1c8f2:	00d667b3          	or	a5,a2,a3
   1c8f6:	8fcd                	or	a5,a5,a1
   1c8f8:	8fd9                	or	a5,a5,a4
   1c8fa:	e049                	bnez	s0,1c97c <__subtf3+0x5b8>
   1c8fc:	e785                	bnez	a5,1c924 <__subtf3+0x560>
   1c8fe:	d026                	sw	s1,32(sp)
   1c900:	d25e                	sw	s7,36(sp)
   1c902:	d462                	sw	s8,40(sp)
   1c904:	d65a                	sw	s6,44(sp)
   1c906:	5782                	lw	a5,32(sp)
   1c908:	5592                	lw	a1,36(sp)
   1c90a:	5622                	lw	a2,40(sp)
   1c90c:	56b2                	lw	a3,44(sp)
   1c90e:	00b7e733          	or	a4,a5,a1
   1c912:	8f51                	or	a4,a4,a2
   1c914:	8f55                	or	a4,a4,a3
   1c916:	1a071de3          	bnez	a4,1d2d0 <__subtf3+0xf0c>
   1c91a:	4781                	li	a5,0
   1c91c:	4681                	li	a3,0
   1c91e:	4401                	li	s0,0
   1c920:	21d0006f          	j	1d33c <__subtf3+0xf78>
   1c924:	018be7b3          	or	a5,s7,s8
   1c928:	0167e7b3          	or	a5,a5,s6
   1c92c:	8fc5                	or	a5,a5,s1
   1c92e:	e791                	bnez	a5,1c93a <__subtf3+0x576>
   1c930:	d03a                	sw	a4,32(sp)
   1c932:	d232                	sw	a2,36(sp)
   1c934:	d436                	sw	a3,40(sp)
   1c936:	d62e                	sw	a1,44(sp)
   1c938:	b7f9                	j	1c906 <__subtf3+0x542>
   1c93a:	94ba                	add	s1,s1,a4
   1c93c:	9bb2                	add	s7,s7,a2
   1c93e:	d026                	sw	s1,32(sp)
   1c940:	00e4b4b3          	sltu	s1,s1,a4
   1c944:	94de                	add	s1,s1,s7
   1c946:	d226                	sw	s1,36(sp)
   1c948:	00cbb633          	sltu	a2,s7,a2
   1c94c:	0174b4b3          	sltu	s1,s1,s7
   1c950:	9c36                	add	s8,s8,a3
   1c952:	8e45                	or	a2,a2,s1
   1c954:	9662                	add	a2,a2,s8
   1c956:	d432                	sw	a2,40(sp)
   1c958:	00dc36b3          	sltu	a3,s8,a3
   1c95c:	01863633          	sltu	a2,a2,s8
   1c960:	8ed1                	or	a3,a3,a2
   1c962:	95da                	add	a1,a1,s6
   1c964:	96ae                	add	a3,a3,a1
   1c966:	00c69793          	slli	a5,a3,0xc
   1c96a:	3207d2e3          	bgez	a5,1d48e <__subtf3+0x10ca>
   1c96e:	fff807b7          	lui	a5,0xfff80
   1c972:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff603fb>
   1c974:	8efd                	and	a3,a3,a5
   1c976:	d636                	sw	a3,44(sp)
   1c978:	4785                	li	a5,1
   1c97a:	b3d9                	j	1c740 <__subtf3+0x37c>
   1c97c:	6521                	lui	a0,0x8
   1c97e:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1c980:	04a41363          	bne	s0,a0,1c9c6 <__subtf3+0x602>
   1c984:	300788e3          	beqz	a5,1d494 <__subtf3+0x10d0>
   1c988:	0125d413          	srli	s0,a1,0x12
   1c98c:	00144413          	xori	s0,s0,1
   1c990:	8805                	andi	s0,s0,1
   1c992:	0412                	slli	s0,s0,0x4
   1c994:	02aa9d63          	bne	s5,a0,1c9ce <__subtf3+0x60a>
   1c998:	018be533          	or	a0,s7,s8
   1c99c:	01656533          	or	a0,a0,s6
   1c9a0:	8d45                	or	a0,a0,s1
   1c9a2:	c50d                	beqz	a0,1c9cc <__subtf3+0x608>
   1c9a4:	00db1513          	slli	a0,s6,0xd
   1c9a8:	02054263          	bltz	a0,1c9cc <__subtf3+0x608>
   1c9ac:	4441                	li	s0,16
   1c9ae:	eb85                	bnez	a5,1c9de <__subtf3+0x61a>
   1c9b0:	8726                	mv	a4,s1
   1c9b2:	865e                	mv	a2,s7
   1c9b4:	86e2                	mv	a3,s8
   1c9b6:	85da                	mv	a1,s6
   1c9b8:	d03a                	sw	a4,32(sp)
   1c9ba:	d232                	sw	a2,36(sp)
   1c9bc:	d436                	sw	a3,40(sp)
   1c9be:	d62e                	sw	a1,44(sp)
   1c9c0:	67a1                	lui	a5,0x8
   1c9c2:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c9c4:	bbb5                	j	1c740 <__subtf3+0x37c>
   1c9c6:	4401                	li	s0,0
   1c9c8:	fcaa88e3          	beq	s5,a0,1c998 <__subtf3+0x5d4>
   1c9cc:	d3f5                	beqz	a5,1c9b0 <__subtf3+0x5ec>
   1c9ce:	018bebb3          	or	s7,s7,s8
   1c9d2:	016bebb3          	or	s7,s7,s6
   1c9d6:	009bebb3          	or	s7,s7,s1
   1c9da:	fc0b8fe3          	beqz	s7,1c9b8 <__subtf3+0x5f4>
   1c9de:	67a1                	lui	a5,0x8
   1c9e0:	d63e                	sw	a5,44(sp)
   1c9e2:	d402                	sw	zero,40(sp)
   1c9e4:	d202                	sw	zero,36(sp)
   1c9e6:	d002                	sw	zero,32(sp)
   1c9e8:	101c                	addi	a5,sp,32
   1c9ea:	0850                	addi	a2,sp,20
   1c9ec:	47d8                	lw	a4,12(a5)
   1c9ee:	4794                	lw	a3,8(a5)
   1c9f0:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1c9f2:	070e                	slli	a4,a4,0x3
   1c9f4:	82f5                	srli	a3,a3,0x1d
   1c9f6:	8f55                	or	a4,a4,a3
   1c9f8:	cb98                	sw	a4,16(a5)
   1c9fa:	fef619e3          	bne	a2,a5,1c9ec <__subtf3+0x628>
   1c9fe:	4981                	li	s3,0
   1ca00:	b7c1                	j	1c9c0 <__subtf3+0x5fc>
   1ca02:	4401                	li	s0,0
   1ca04:	bf51                	j	1c998 <__subtf3+0x5d4>
   1ca06:	94ba                	add	s1,s1,a4
   1ca08:	9bb2                	add	s7,s7,a2
   1ca0a:	d026                	sw	s1,32(sp)
   1ca0c:	00e4b4b3          	sltu	s1,s1,a4
   1ca10:	94de                	add	s1,s1,s7
   1ca12:	d226                	sw	s1,36(sp)
   1ca14:	00cbb633          	sltu	a2,s7,a2
   1ca18:	0174b4b3          	sltu	s1,s1,s7
   1ca1c:	9c36                	add	s8,s8,a3
   1ca1e:	8e45                	or	a2,a2,s1
   1ca20:	9662                	add	a2,a2,s8
   1ca22:	d432                	sw	a2,40(sp)
   1ca24:	00dc36b3          	sltu	a3,s8,a3
   1ca28:	01863633          	sltu	a2,a2,s8
   1ca2c:	8ed1                	or	a3,a3,a2
   1ca2e:	95da                	add	a1,a1,s6
   1ca30:	96ae                	add	a3,a3,a1
   1ca32:	d636                	sw	a3,44(sp)
   1ca34:	1018                	addi	a4,sp,32
   1ca36:	1068                	addi	a0,sp,44
   1ca38:	4310                	lw	a2,0(a4)
   1ca3a:	434c                	lw	a1,4(a4)
   1ca3c:	8205                	srli	a2,a2,0x1
   1ca3e:	05fe                	slli	a1,a1,0x1f
   1ca40:	8e4d                	or	a2,a2,a1
   1ca42:	c310                	sw	a2,0(a4)
   1ca44:	0711                	addi	a4,a4,4
   1ca46:	fee519e3          	bne	a0,a4,1ca38 <__subtf3+0x674>
   1ca4a:	6721                	lui	a4,0x8
   1ca4c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1ca4e:	c6e782e3          	beq	a5,a4,1c6b2 <__subtf3+0x2ee>
   1ca52:	8285                	srli	a3,a3,0x1
   1ca54:	d636                	sw	a3,44(sp)
   1ca56:	4401                	li	s0,0
   1ca58:	b1e5                	j	1c740 <__subtf3+0x37c>
   1ca5a:	4789                	li	a5,2
   1ca5c:	c6fa12e3          	bne	s4,a5,1c6c0 <__subtf3+0x2fc>
   1ca60:	c60980e3          	beqz	s3,1c6c0 <__subtf3+0x2fc>
   1ca64:	67a1                	lui	a5,0x8
   1ca66:	d602                	sw	zero,44(sp)
   1ca68:	d402                	sw	zero,40(sp)
   1ca6a:	d202                	sw	zero,36(sp)
   1ca6c:	d002                	sw	zero,32(sp)
   1ca6e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1ca70:	4415                	li	s0,5
   1ca72:	b1f9                	j	1c740 <__subtf3+0x37c>
   1ca74:	22f05b63          	blez	a5,1ccaa <__subtf3+0x8e6>
   1ca78:	4592                	lw	a1,4(sp)
   1ca7a:	4522                	lw	a0,8(sp)
   1ca7c:	48b2                	lw	a7,12(sp)
   1ca7e:	0a0a9563          	bnez	s5,1cb28 <__subtf3+0x764>
   1ca82:	4ed2                	lw	t4,20(sp)
   1ca84:	4fe2                	lw	t6,24(sp)
   1ca86:	4672                	lw	a2,28(sp)
   1ca88:	01fee6b3          	or	a3,t4,t6
   1ca8c:	8ed1                	or	a3,a3,a2
   1ca8e:	8ec5                	or	a3,a3,s1
   1ca90:	e69d                	bnez	a3,1cabe <__subtf3+0x6fa>
   1ca92:	66a1                	lui	a3,0x8
   1ca94:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1ca96:	00d79f63          	bne	a5,a3,1cab4 <__subtf3+0x6f0>
   1ca9a:	00a5e6b3          	or	a3,a1,a0
   1ca9e:	0116e6b3          	or	a3,a3,a7
   1caa2:	8ed9                	or	a3,a3,a4
   1caa4:	ca81                	beqz	a3,1cab4 <__subtf3+0x6f0>
   1caa6:	0128da93          	srli	s5,a7,0x12
   1caaa:	001aca93          	xori	s5,s5,1
   1caae:	001afa93          	andi	s5,s5,1
   1cab2:	0a92                	slli	s5,s5,0x4
   1cab4:	d03a                	sw	a4,32(sp)
   1cab6:	d22e                	sw	a1,36(sp)
   1cab8:	d42a                	sw	a0,40(sp)
   1caba:	d646                	sw	a7,44(sp)
   1cabc:	b435                	j	1c4e8 <__subtf3+0x124>
   1cabe:	fff78f13          	addi	t5,a5,-1
   1cac2:	040f1663          	bnez	t5,1cb0e <__subtf3+0x74a>
   1cac6:	409706b3          	sub	a3,a4,s1
   1caca:	41d58833          	sub	a6,a1,t4
   1cace:	00d73333          	sltu	t1,a4,a3
   1cad2:	0105b7b3          	sltu	a5,a1,a6
   1cad6:	40680833          	sub	a6,a6,t1
   1cada:	4301                	li	t1,0
   1cadc:	00d77663          	bgeu	a4,a3,1cae8 <__subtf3+0x724>
   1cae0:	40be8eb3          	sub	t4,t4,a1
   1cae4:	001eb313          	seqz	t1,t4
   1cae8:	00f36733          	or	a4,t1,a5
   1caec:	41f505b3          	sub	a1,a0,t6
   1caf0:	00b53333          	sltu	t1,a0,a1
   1caf4:	8d99                	sub	a1,a1,a4
   1caf6:	c709                	beqz	a4,1cb00 <__subtf3+0x73c>
   1caf8:	40af87b3          	sub	a5,t6,a0
   1cafc:	0017bf13          	seqz	t5,a5
   1cb00:	40c88733          	sub	a4,a7,a2
   1cb04:	006f67b3          	or	a5,t5,t1
   1cb08:	8f1d                	sub	a4,a4,a5
   1cb0a:	4785                	li	a5,1
   1cb0c:	aab9                	j	1cc6a <__subtf3+0x8a6>
   1cb0e:	66a1                	lui	a3,0x8
   1cb10:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1cb12:	f8d784e3          	beq	a5,a3,1ca9a <__subtf3+0x6d6>
   1cb16:	07400793          	li	a5,116
   1cb1a:	05e7d763          	bge	a5,t5,1cb68 <__subtf3+0x7a4>
   1cb1e:	ce02                	sw	zero,28(sp)
   1cb20:	cc02                	sw	zero,24(sp)
   1cb22:	ca02                	sw	zero,20(sp)
   1cb24:	4685                	li	a3,1
   1cb26:	a8e5                	j	1cc1e <__subtf3+0x85a>
   1cb28:	66a1                	lui	a3,0x8
   1cb2a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1cb2c:	02d41463          	bne	s0,a3,1cb54 <__subtf3+0x790>
   1cb30:	00a5e7b3          	or	a5,a1,a0
   1cb34:	0117e7b3          	or	a5,a5,a7
   1cb38:	8fd9                	or	a5,a5,a4
   1cb3a:	4681                	li	a3,0
   1cb3c:	c799                	beqz	a5,1cb4a <__subtf3+0x786>
   1cb3e:	0128d693          	srli	a3,a7,0x12
   1cb42:	0016c693          	xori	a3,a3,1
   1cb46:	8a85                	andi	a3,a3,1
   1cb48:	0692                	slli	a3,a3,0x4
   1cb4a:	d03a                	sw	a4,32(sp)
   1cb4c:	d22e                	sw	a1,36(sp)
   1cb4e:	d42a                	sw	a0,40(sp)
   1cb50:	d646                	sw	a7,44(sp)
   1cb52:	bc09                	j	1c564 <__subtf3+0x1a0>
   1cb54:	46f2                	lw	a3,28(sp)
   1cb56:	00080637          	lui	a2,0x80
   1cb5a:	8ed1                	or	a3,a3,a2
   1cb5c:	ce36                	sw	a3,28(sp)
   1cb5e:	07400693          	li	a3,116
   1cb62:	faf6cee3          	blt	a3,a5,1cb1e <__subtf3+0x75a>
   1cb66:	8f3e                	mv	t5,a5
   1cb68:	405f5793          	srai	a5,t5,0x5
   1cb6c:	8342                	mv	t1,a6
   1cb6e:	01ff7f13          	andi	t5,t5,31
   1cb72:	4681                	li	a3,0
   1cb74:	4601                	li	a2,0
   1cb76:	02f61663          	bne	a2,a5,1cba2 <__subtf3+0x7de>
   1cb7a:	460d                	li	a2,3
   1cb7c:	8e1d                	sub	a2,a2,a5
   1cb7e:	00279313          	slli	t1,a5,0x2
   1cb82:	020f1763          	bnez	t5,1cbb0 <__subtf3+0x7ec>
   1cb86:	00680eb3          	add	t4,a6,t1
   1cb8a:	000eae83          	lw	t4,0(t4)
   1cb8e:	0f05                	addi	t5,t5,1
   1cb90:	0811                	addi	a6,a6,4
   1cb92:	ffd82e23          	sw	t4,-4(a6)
   1cb96:	ffe658e3          	bge	a2,t5,1cb86 <__subtf3+0x7c2>
   1cb9a:	4611                	li	a2,4
   1cb9c:	40f607b3          	sub	a5,a2,a5
   1cba0:	a881                	j	1cbf0 <__subtf3+0x82c>
   1cba2:	00032e83          	lw	t4,0(t1)
   1cba6:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x603fd>
   1cba8:	0311                	addi	t1,t1,4
   1cbaa:	01d6e6b3          	or	a3,a3,t4
   1cbae:	b7e1                	j	1cb76 <__subtf3+0x7b2>
   1cbb0:	04030493          	addi	s1,t1,64
   1cbb4:	00248eb3          	add	t4,s1,sp
   1cbb8:	fd0eae83          	lw	t4,-48(t4)
   1cbbc:	02000393          	li	t2,32
   1cbc0:	41e383b3          	sub	t2,t2,t5
   1cbc4:	007e9eb3          	sll	t4,t4,t2
   1cbc8:	981a                	add	a6,a6,t1
   1cbca:	01d6e6b3          	or	a3,a3,t4
   1cbce:	40600333          	neg	t1,t1
   1cbd2:	4f81                	li	t6,0
   1cbd4:	0acfca63          	blt	t6,a2,1cc88 <__subtf3+0x8c4>
   1cbd8:	4811                	li	a6,4
   1cbda:	40f807b3          	sub	a5,a6,a5
   1cbde:	4872                	lw	a6,28(sp)
   1cbe0:	060a                	slli	a2,a2,0x2
   1cbe2:	04060613          	addi	a2,a2,64
   1cbe6:	960a                	add	a2,a2,sp
   1cbe8:	01e85833          	srl	a6,a6,t5
   1cbec:	fd062823          	sw	a6,-48(a2)
   1cbf0:	4611                	li	a2,4
   1cbf2:	8e1d                	sub	a2,a2,a5
   1cbf4:	060a                	slli	a2,a2,0x2
   1cbf6:	078a                	slli	a5,a5,0x2
   1cbf8:	4821                	li	a6,8
   1cbfa:	97f2                	add	a5,a5,t3
   1cbfc:	01066863          	bltu	a2,a6,1cc0c <__subtf3+0x848>
   1cc00:	0007a023          	sw	zero,0(a5)
   1cc04:	0007a223          	sw	zero,4(a5)
   1cc08:	1661                	addi	a2,a2,-8
   1cc0a:	07a1                	addi	a5,a5,8
   1cc0c:	4811                	li	a6,4
   1cc0e:	01066463          	bltu	a2,a6,1cc16 <__subtf3+0x852>
   1cc12:	0007a023          	sw	zero,0(a5)
   1cc16:	47c2                	lw	a5,16(sp)
   1cc18:	00d036b3          	snez	a3,a3
   1cc1c:	8edd                	or	a3,a3,a5
   1cc1e:	4652                	lw	a2,20(sp)
   1cc20:	c836                	sw	a3,16(sp)
   1cc22:	40d706b3          	sub	a3,a4,a3
   1cc26:	40c58833          	sub	a6,a1,a2
   1cc2a:	00d737b3          	sltu	a5,a4,a3
   1cc2e:	0105b333          	sltu	t1,a1,a6
   1cc32:	40f80833          	sub	a6,a6,a5
   1cc36:	4781                	li	a5,0
   1cc38:	00d77563          	bgeu	a4,a3,1cc42 <__subtf3+0x87e>
   1cc3c:	8e0d                	sub	a2,a2,a1
   1cc3e:	00163793          	seqz	a5,a2
   1cc42:	4762                	lw	a4,24(sp)
   1cc44:	0067e7b3          	or	a5,a5,t1
   1cc48:	4601                	li	a2,0
   1cc4a:	40e505b3          	sub	a1,a0,a4
   1cc4e:	00b53333          	sltu	t1,a0,a1
   1cc52:	8d9d                	sub	a1,a1,a5
   1cc54:	c781                	beqz	a5,1cc5c <__subtf3+0x898>
   1cc56:	8f09                	sub	a4,a4,a0
   1cc58:	00173613          	seqz	a2,a4
   1cc5c:	4772                	lw	a4,28(sp)
   1cc5e:	00666633          	or	a2,a2,t1
   1cc62:	87a2                	mv	a5,s0
   1cc64:	40e88733          	sub	a4,a7,a4
   1cc68:	8f11                	sub	a4,a4,a2
   1cc6a:	d036                	sw	a3,32(sp)
   1cc6c:	d63a                	sw	a4,44(sp)
   1cc6e:	d42e                	sw	a1,40(sp)
   1cc70:	d242                	sw	a6,36(sp)
   1cc72:	00c71693          	slli	a3,a4,0xc
   1cc76:	de06d0e3          	bgez	a3,1ca56 <__subtf3+0x692>
   1cc7a:	000806b7          	lui	a3,0x80
   1cc7e:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x603fb>
   1cc80:	8f75                	and	a4,a4,a3
   1cc82:	d63a                	sw	a4,44(sp)
   1cc84:	843e                	mv	s0,a5
   1cc86:	a1bd                	j	1d0f4 <__subtf3+0xd30>
   1cc88:	00082e83          	lw	t4,0(a6)
   1cc8c:	00482283          	lw	t0,4(a6)
   1cc90:	006804b3          	add	s1,a6,t1
   1cc94:	01eedeb3          	srl	t4,t4,t5
   1cc98:	007292b3          	sll	t0,t0,t2
   1cc9c:	005eeeb3          	or	t4,t4,t0
   1cca0:	01d4a023          	sw	t4,0(s1)
   1cca4:	0f85                	addi	t6,t6,1
   1cca6:	0811                	addi	a6,a6,4
   1cca8:	b735                	j	1cbd4 <__subtf3+0x810>
   1ccaa:	4bd2                	lw	s7,20(sp)
   1ccac:	4b62                	lw	s6,24(sp)
   1ccae:	4c72                	lw	s8,28(sp)
   1ccb0:	20078763          	beqz	a5,1cebe <__subtf3+0xafa>
   1ccb4:	408a87b3          	sub	a5,s5,s0
   1ccb8:	e05d                	bnez	s0,1cd5e <__subtf3+0x99a>
   1ccba:	4892                	lw	a7,4(sp)
   1ccbc:	4e22                	lw	t3,8(sp)
   1ccbe:	4632                	lw	a2,12(sp)
   1ccc0:	01c8e6b3          	or	a3,a7,t3
   1ccc4:	8ed1                	or	a3,a3,a2
   1ccc6:	8ed9                	or	a3,a3,a4
   1ccc8:	e69d                	bnez	a3,1ccf6 <__subtf3+0x932>
   1ccca:	6721                	lui	a4,0x8
   1cccc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1ccce:	00e79e63          	bne	a5,a4,1ccea <__subtf3+0x926>
   1ccd2:	016be733          	or	a4,s7,s6
   1ccd6:	01876733          	or	a4,a4,s8
   1ccda:	8f45                	or	a4,a4,s1
   1ccdc:	c719                	beqz	a4,1ccea <__subtf3+0x926>
   1ccde:	012c5413          	srli	s0,s8,0x12
   1cce2:	00144413          	xori	s0,s0,1
   1cce6:	8805                	andi	s0,s0,1
   1cce8:	0412                	slli	s0,s0,0x4
   1ccea:	d026                	sw	s1,32(sp)
   1ccec:	d25e                	sw	s7,36(sp)
   1ccee:	d45a                	sw	s6,40(sp)
   1ccf0:	d662                	sw	s8,44(sp)
   1ccf2:	89e6                	mv	s3,s9
   1ccf4:	b4b1                	j	1c740 <__subtf3+0x37c>
   1ccf6:	fff78313          	addi	t1,a5,-1
   1ccfa:	04031563          	bnez	t1,1cd44 <__subtf3+0x980>
   1ccfe:	40e486b3          	sub	a3,s1,a4
   1cd02:	411b8833          	sub	a6,s7,a7
   1cd06:	00d4b733          	sltu	a4,s1,a3
   1cd0a:	010bb7b3          	sltu	a5,s7,a6
   1cd0e:	40e80833          	sub	a6,a6,a4
   1cd12:	4701                	li	a4,0
   1cd14:	00d4f663          	bgeu	s1,a3,1cd20 <__subtf3+0x95c>
   1cd18:	417888b3          	sub	a7,a7,s7
   1cd1c:	0018b713          	seqz	a4,a7
   1cd20:	41cb05b3          	sub	a1,s6,t3
   1cd24:	8f5d                	or	a4,a4,a5
   1cd26:	00bb3533          	sltu	a0,s6,a1
   1cd2a:	8d99                	sub	a1,a1,a4
   1cd2c:	c709                	beqz	a4,1cd36 <__subtf3+0x972>
   1cd2e:	416e07b3          	sub	a5,t3,s6
   1cd32:	0017b313          	seqz	t1,a5
   1cd36:	40cc0733          	sub	a4,s8,a2
   1cd3a:	00a367b3          	or	a5,t1,a0
   1cd3e:	8f1d                	sub	a4,a4,a5
   1cd40:	89e6                	mv	s3,s9
   1cd42:	b3e1                	j	1cb0a <__subtf3+0x746>
   1cd44:	6721                	lui	a4,0x8
   1cd46:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1cd48:	f8e785e3          	beq	a5,a4,1ccd2 <__subtf3+0x90e>
   1cd4c:	07400793          	li	a5,116
   1cd50:	0467d863          	bge	a5,t1,1cda0 <__subtf3+0x9dc>
   1cd54:	c602                	sw	zero,12(sp)
   1cd56:	c402                	sw	zero,8(sp)
   1cd58:	c202                	sw	zero,4(sp)
   1cd5a:	4685                	li	a3,1
   1cd5c:	a8cd                	j	1ce4e <__subtf3+0xa8a>
   1cd5e:	6721                	lui	a4,0x8
   1cd60:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1cd62:	02ea9563          	bne	s5,a4,1cd8c <__subtf3+0x9c8>
   1cd66:	016be7b3          	or	a5,s7,s6
   1cd6a:	0187e7b3          	or	a5,a5,s8
   1cd6e:	8fc5                	or	a5,a5,s1
   1cd70:	4401                	li	s0,0
   1cd72:	c799                	beqz	a5,1cd80 <__subtf3+0x9bc>
   1cd74:	012c5413          	srli	s0,s8,0x12
   1cd78:	00144413          	xori	s0,s0,1
   1cd7c:	8805                	andi	s0,s0,1
   1cd7e:	0412                	slli	s0,s0,0x4
   1cd80:	d026                	sw	s1,32(sp)
   1cd82:	d25e                	sw	s7,36(sp)
   1cd84:	d45a                	sw	s6,40(sp)
   1cd86:	d662                	sw	s8,44(sp)
   1cd88:	87d6                	mv	a5,s5
   1cd8a:	b7a5                	j	1ccf2 <__subtf3+0x92e>
   1cd8c:	4732                	lw	a4,12(sp)
   1cd8e:	000806b7          	lui	a3,0x80
   1cd92:	8f55                	or	a4,a4,a3
   1cd94:	c63a                	sw	a4,12(sp)
   1cd96:	07400713          	li	a4,116
   1cd9a:	faf74de3          	blt	a4,a5,1cd54 <__subtf3+0x990>
   1cd9e:	833e                	mv	t1,a5
   1cda0:	02000793          	li	a5,32
   1cda4:	02f347b3          	div	a5,t1,a5
   1cda8:	86ae                	mv	a3,a1
   1cdaa:	4401                	li	s0,0
   1cdac:	4701                	li	a4,0
   1cdae:	02f74663          	blt	a4,a5,1cdda <__subtf3+0xa16>
   1cdb2:	470d                	li	a4,3
   1cdb4:	01f37813          	andi	a6,t1,31
   1cdb8:	8f1d                	sub	a4,a4,a5
   1cdba:	00279613          	slli	a2,a5,0x2
   1cdbe:	02081363          	bnez	a6,1cde4 <__subtf3+0xa20>
   1cdc2:	00c586b3          	add	a3,a1,a2
   1cdc6:	4294                	lw	a3,0(a3)
   1cdc8:	0805                	addi	a6,a6,1
   1cdca:	c194                	sw	a3,0(a1)
   1cdcc:	0591                	addi	a1,a1,4
   1cdce:	ff075ae3          	bge	a4,a6,1cdc2 <__subtf3+0x9fe>
   1cdd2:	4711                	li	a4,4
   1cdd4:	40f707b3          	sub	a5,a4,a5
   1cdd8:	a899                	j	1ce2e <__subtf3+0xa6a>
   1cdda:	4290                	lw	a2,0(a3)
   1cddc:	0705                	addi	a4,a4,1
   1cdde:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x60400>
   1cde0:	8c51                	or	s0,s0,a2
   1cde2:	b7f1                	j	1cdae <__subtf3+0x9ea>
   1cde4:	02000693          	li	a3,32
   1cde8:	02d36333          	rem	t1,t1,a3
   1cdec:	40668333          	sub	t1,a3,t1
   1cdf0:	86be                	mv	a3,a5
   1cdf2:	0007d363          	bgez	a5,1cdf8 <__subtf3+0xa34>
   1cdf6:	4681                	li	a3,0
   1cdf8:	068a                	slli	a3,a3,0x2
   1cdfa:	04068693          	addi	a3,a3,64
   1cdfe:	968a                	add	a3,a3,sp
   1ce00:	fc06a683          	lw	a3,-64(a3)
   1ce04:	95b2                	add	a1,a1,a2
   1ce06:	4881                	li	a7,0
   1ce08:	006696b3          	sll	a3,a3,t1
   1ce0c:	8c55                	or	s0,s0,a3
   1ce0e:	40c00633          	neg	a2,a2
   1ce12:	08e8c663          	blt	a7,a4,1ce9e <__subtf3+0xada>
   1ce16:	4691                	li	a3,4
   1ce18:	40f687b3          	sub	a5,a3,a5
   1ce1c:	46b2                	lw	a3,12(sp)
   1ce1e:	070a                	slli	a4,a4,0x2
   1ce20:	04070713          	addi	a4,a4,64
   1ce24:	970a                	add	a4,a4,sp
   1ce26:	0106d6b3          	srl	a3,a3,a6
   1ce2a:	fcd72023          	sw	a3,-64(a4)
   1ce2e:	0057a713          	slti	a4,a5,5
   1ce32:	4601                	li	a2,0
   1ce34:	c701                	beqz	a4,1ce3c <__subtf3+0xa78>
   1ce36:	4611                	li	a2,4
   1ce38:	8e1d                	sub	a2,a2,a5
   1ce3a:	060a                	slli	a2,a2,0x2
   1ce3c:	078a                	slli	a5,a5,0x2
   1ce3e:	953e                	add	a0,a0,a5
   1ce40:	4581                	li	a1,0
   1ce42:	ccaf70ef          	jal	1430c <memset>
   1ce46:	4782                	lw	a5,0(sp)
   1ce48:	008036b3          	snez	a3,s0
   1ce4c:	8edd                	or	a3,a3,a5
   1ce4e:	4712                	lw	a4,4(sp)
   1ce50:	c036                	sw	a3,0(sp)
   1ce52:	40d486b3          	sub	a3,s1,a3
   1ce56:	40eb8833          	sub	a6,s7,a4
   1ce5a:	00d4b7b3          	sltu	a5,s1,a3
   1ce5e:	010bb633          	sltu	a2,s7,a6
   1ce62:	40f80833          	sub	a6,a6,a5
   1ce66:	4781                	li	a5,0
   1ce68:	00d4f663          	bgeu	s1,a3,1ce74 <__subtf3+0xab0>
   1ce6c:	41770733          	sub	a4,a4,s7
   1ce70:	00173793          	seqz	a5,a4
   1ce74:	4722                	lw	a4,8(sp)
   1ce76:	8fd1                	or	a5,a5,a2
   1ce78:	4601                	li	a2,0
   1ce7a:	40eb05b3          	sub	a1,s6,a4
   1ce7e:	00bb3533          	sltu	a0,s6,a1
   1ce82:	8d9d                	sub	a1,a1,a5
   1ce84:	c789                	beqz	a5,1ce8e <__subtf3+0xaca>
   1ce86:	41670733          	sub	a4,a4,s6
   1ce8a:	00173613          	seqz	a2,a4
   1ce8e:	4732                	lw	a4,12(sp)
   1ce90:	8e49                	or	a2,a2,a0
   1ce92:	87d6                	mv	a5,s5
   1ce94:	40ec0733          	sub	a4,s8,a4
   1ce98:	8f11                	sub	a4,a4,a2
   1ce9a:	89e6                	mv	s3,s9
   1ce9c:	b3f9                	j	1cc6a <__subtf3+0x8a6>
   1ce9e:	4194                	lw	a3,0(a1)
   1cea0:	0045ae03          	lw	t3,4(a1)
   1cea4:	00c58eb3          	add	t4,a1,a2
   1cea8:	0106d6b3          	srl	a3,a3,a6
   1ceac:	006e1e33          	sll	t3,t3,t1
   1ceb0:	01c6e6b3          	or	a3,a3,t3
   1ceb4:	00dea023          	sw	a3,0(t4)
   1ceb8:	0885                	addi	a7,a7,1
   1ceba:	0591                	addi	a1,a1,4
   1cebc:	bf99                	j	1ce12 <__subtf3+0xa4e>
   1cebe:	00140693          	addi	a3,s0,1
   1cec2:	01169813          	slli	a6,a3,0x11
   1cec6:	01285813          	srli	a6,a6,0x12
   1ceca:	4612                	lw	a2,4(sp)
   1cecc:	45a2                	lw	a1,8(sp)
   1cece:	4532                	lw	a0,12(sp)
   1ced0:	18081363          	bnez	a6,1d056 <__subtf3+0xc92>
   1ced4:	016be7b3          	or	a5,s7,s6
   1ced8:	00b666b3          	or	a3,a2,a1
   1cedc:	0187e7b3          	or	a5,a5,s8
   1cee0:	8ec9                	or	a3,a3,a0
   1cee2:	8fc5                	or	a5,a5,s1
   1cee4:	8ed9                	or	a3,a3,a4
   1cee6:	e869                	bnez	s0,1cfb8 <__subtf3+0xbf4>
   1cee8:	ea99                	bnez	a3,1cefe <__subtf3+0xb3a>
   1ceea:	d026                	sw	s1,32(sp)
   1ceec:	d25e                	sw	s7,36(sp)
   1ceee:	d45a                	sw	s6,40(sp)
   1cef0:	d662                	sw	s8,44(sp)
   1cef2:	ebcd                	bnez	a5,1cfa4 <__subtf3+0xbe0>
   1cef4:	ffea0993          	addi	s3,s4,-2
   1cef8:	0019b993          	seqz	s3,s3
   1cefc:	b429                	j	1c906 <__subtf3+0x542>
   1cefe:	e791                	bnez	a5,1cf0a <__subtf3+0xb46>
   1cf00:	d03a                	sw	a4,32(sp)
   1cf02:	d232                	sw	a2,36(sp)
   1cf04:	d42e                	sw	a1,40(sp)
   1cf06:	d62a                	sw	a0,44(sp)
   1cf08:	bafd                	j	1c906 <__subtf3+0x542>
   1cf0a:	409707b3          	sub	a5,a4,s1
   1cf0e:	41760e33          	sub	t3,a2,s7
   1cf12:	00f73833          	sltu	a6,a4,a5
   1cf16:	01c638b3          	sltu	a7,a2,t3
   1cf1a:	410e0833          	sub	a6,t3,a6
   1cf1e:	4681                	li	a3,0
   1cf20:	00f77463          	bgeu	a4,a5,1cf28 <__subtf3+0xb64>
   1cf24:	001e3693          	seqz	a3,t3
   1cf28:	0116e6b3          	or	a3,a3,a7
   1cf2c:	416588b3          	sub	a7,a1,s6
   1cf30:	0115bf33          	sltu	t5,a1,a7
   1cf34:	40d88eb3          	sub	t4,a7,a3
   1cf38:	4301                	li	t1,0
   1cf3a:	c299                	beqz	a3,1cf40 <__subtf3+0xb7c>
   1cf3c:	0018b313          	seqz	t1,a7
   1cf40:	01e36333          	or	t1,t1,t5
   1cf44:	418506b3          	sub	a3,a0,s8
   1cf48:	406686b3          	sub	a3,a3,t1
   1cf4c:	d636                	sw	a3,44(sp)
   1cf4e:	d476                	sw	t4,40(sp)
   1cf50:	d242                	sw	a6,36(sp)
   1cf52:	d03e                	sw	a5,32(sp)
   1cf54:	00c69313          	slli	t1,a3,0xc
   1cf58:	04035863          	bgez	t1,1cfa8 <__subtf3+0xbe4>
   1cf5c:	40e48733          	sub	a4,s1,a4
   1cf60:	40cb8633          	sub	a2,s7,a2
   1cf64:	00e4b7b3          	sltu	a5,s1,a4
   1cf68:	00cbbbb3          	sltu	s7,s7,a2
   1cf6c:	8e1d                	sub	a2,a2,a5
   1cf6e:	4781                	li	a5,0
   1cf70:	00e4f463          	bgeu	s1,a4,1cf78 <__subtf3+0xbb4>
   1cf74:	001e3793          	seqz	a5,t3
   1cf78:	40bb05b3          	sub	a1,s6,a1
   1cf7c:	0177ebb3          	or	s7,a5,s7
   1cf80:	00bb3b33          	sltu	s6,s6,a1
   1cf84:	417585b3          	sub	a1,a1,s7
   1cf88:	000b8463          	beqz	s7,1cf90 <__subtf3+0xbcc>
   1cf8c:	0018b413          	seqz	s0,a7
   1cf90:	40ac0533          	sub	a0,s8,a0
   1cf94:	01646b33          	or	s6,s0,s6
   1cf98:	41650533          	sub	a0,a0,s6
   1cf9c:	d62a                	sw	a0,44(sp)
   1cf9e:	d42e                	sw	a1,40(sp)
   1cfa0:	d232                	sw	a2,36(sp)
   1cfa2:	d03a                	sw	a4,32(sp)
   1cfa4:	89e6                	mv	s3,s9
   1cfa6:	b285                	j	1c906 <__subtf3+0x542>
   1cfa8:	0107e7b3          	or	a5,a5,a6
   1cfac:	01d7e7b3          	or	a5,a5,t4
   1cfb0:	8fd5                	or	a5,a5,a3
   1cfb2:	94079ae3          	bnez	a5,1c906 <__subtf3+0x542>
   1cfb6:	bf3d                	j	1cef4 <__subtf3+0xb30>
   1cfb8:	6821                	lui	a6,0x8
   1cfba:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   1cfbc:	03041263          	bne	s0,a6,1cfe0 <__subtf3+0xc1c>
   1cfc0:	4c068f63          	beqz	a3,1d49e <__subtf3+0x10da>
   1cfc4:	01255413          	srli	s0,a0,0x12
   1cfc8:	00144413          	xori	s0,s0,1
   1cfcc:	8805                	andi	s0,s0,1
   1cfce:	0412                	slli	s0,s0,0x4
   1cfd0:	010a8b63          	beq	s5,a6,1cfe6 <__subtf3+0xc22>
   1cfd4:	ebb1                	bnez	a5,1d028 <__subtf3+0xc64>
   1cfd6:	d03a                	sw	a4,32(sp)
   1cfd8:	d232                	sw	a2,36(sp)
   1cfda:	d42e                	sw	a1,40(sp)
   1cfdc:	d62a                	sw	a0,44(sp)
   1cfde:	b2cd                	j	1c9c0 <__subtf3+0x5fc>
   1cfe0:	4401                	li	s0,0
   1cfe2:	010a9363          	bne	s5,a6,1cfe8 <__subtf3+0xc24>
   1cfe6:	eb9d                	bnez	a5,1d01c <__subtf3+0xc58>
   1cfe8:	f6f5                	bnez	a3,1cfd4 <__subtf3+0xc10>
   1cfea:	e3a5                	bnez	a5,1d04a <__subtf3+0xc86>
   1cfec:	67a1                	lui	a5,0x8
   1cfee:	d63e                	sw	a5,44(sp)
   1cff0:	d402                	sw	zero,40(sp)
   1cff2:	d202                	sw	zero,36(sp)
   1cff4:	d002                	sw	zero,32(sp)
   1cff6:	101c                	addi	a5,sp,32
   1cff8:	0850                	addi	a2,sp,20
   1cffa:	47d8                	lw	a4,12(a5)
   1cffc:	4794                	lw	a3,8(a5)
   1cffe:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1d000:	070e                	slli	a4,a4,0x3
   1d002:	82f5                	srli	a3,a3,0x1d
   1d004:	8f55                	or	a4,a4,a3
   1d006:	cb98                	sw	a4,16(a5)
   1d008:	fef619e3          	bne	a2,a5,1cffa <__subtf3+0xc36>
   1d00c:	67a1                	lui	a5,0x8
   1d00e:	4981                	li	s3,0
   1d010:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1d012:	4441                	li	s0,16
   1d014:	f2cff06f          	j	1c740 <__subtf3+0x37c>
   1d018:	4401                	li	s0,0
   1d01a:	b7f1                	j	1cfe6 <__subtf3+0xc22>
   1d01c:	00dc1813          	slli	a6,s8,0xd
   1d020:	fc0844e3          	bltz	a6,1cfe8 <__subtf3+0xc24>
   1d024:	4441                	li	s0,16
   1d026:	c295                	beqz	a3,1d04a <__subtf3+0xc86>
   1d028:	67a1                	lui	a5,0x8
   1d02a:	d63e                	sw	a5,44(sp)
   1d02c:	d402                	sw	zero,40(sp)
   1d02e:	d202                	sw	zero,36(sp)
   1d030:	d002                	sw	zero,32(sp)
   1d032:	101c                	addi	a5,sp,32
   1d034:	0850                	addi	a2,sp,20
   1d036:	47d8                	lw	a4,12(a5)
   1d038:	4794                	lw	a3,8(a5)
   1d03a:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1d03c:	070e                	slli	a4,a4,0x3
   1d03e:	82f5                	srli	a3,a3,0x1d
   1d040:	8f55                	or	a4,a4,a3
   1d042:	cb98                	sw	a4,16(a5)
   1d044:	fef619e3          	bne	a2,a5,1d036 <__subtf3+0xc72>
   1d048:	ba5d                	j	1c9fe <__subtf3+0x63a>
   1d04a:	d026                	sw	s1,32(sp)
   1d04c:	d25e                	sw	s7,36(sp)
   1d04e:	d45a                	sw	s6,40(sp)
   1d050:	d662                	sw	s8,44(sp)
   1d052:	89e6                	mv	s3,s9
   1d054:	b2b5                	j	1c9c0 <__subtf3+0x5fc>
   1d056:	409706b3          	sub	a3,a4,s1
   1d05a:	41760e33          	sub	t3,a2,s7
   1d05e:	00d73eb3          	sltu	t4,a4,a3
   1d062:	01c638b3          	sltu	a7,a2,t3
   1d066:	41de0eb3          	sub	t4,t3,t4
   1d06a:	4801                	li	a6,0
   1d06c:	00d77463          	bgeu	a4,a3,1d074 <__subtf3+0xcb0>
   1d070:	001e3813          	seqz	a6,t3
   1d074:	01186833          	or	a6,a6,a7
   1d078:	416588b3          	sub	a7,a1,s6
   1d07c:	0115bf33          	sltu	t5,a1,a7
   1d080:	41088fb3          	sub	t6,a7,a6
   1d084:	4301                	li	t1,0
   1d086:	00080463          	beqz	a6,1d08e <__subtf3+0xcca>
   1d08a:	0018b313          	seqz	t1,a7
   1d08e:	01e36333          	or	t1,t1,t5
   1d092:	41850833          	sub	a6,a0,s8
   1d096:	40680833          	sub	a6,a6,t1
   1d09a:	d642                	sw	a6,44(sp)
   1d09c:	d47e                	sw	t6,40(sp)
   1d09e:	d276                	sw	t4,36(sp)
   1d0a0:	d036                	sw	a3,32(sp)
   1d0a2:	00c81313          	slli	t1,a6,0xc
   1d0a6:	10035163          	bgez	t1,1d1a8 <__subtf3+0xde4>
   1d0aa:	40e48733          	sub	a4,s1,a4
   1d0ae:	40cb8633          	sub	a2,s7,a2
   1d0b2:	00e4b6b3          	sltu	a3,s1,a4
   1d0b6:	00cbbbb3          	sltu	s7,s7,a2
   1d0ba:	8e15                	sub	a2,a2,a3
   1d0bc:	4681                	li	a3,0
   1d0be:	00e4f463          	bgeu	s1,a4,1d0c6 <__subtf3+0xd02>
   1d0c2:	001e3693          	seqz	a3,t3
   1d0c6:	40bb05b3          	sub	a1,s6,a1
   1d0ca:	0176ebb3          	or	s7,a3,s7
   1d0ce:	00bb3b33          	sltu	s6,s6,a1
   1d0d2:	417585b3          	sub	a1,a1,s7
   1d0d6:	000b8463          	beqz	s7,1d0de <__subtf3+0xd1a>
   1d0da:	0018b793          	seqz	a5,a7
   1d0de:	40ac0533          	sub	a0,s8,a0
   1d0e2:	0167eb33          	or	s6,a5,s6
   1d0e6:	41650533          	sub	a0,a0,s6
   1d0ea:	d62a                	sw	a0,44(sp)
   1d0ec:	d42e                	sw	a1,40(sp)
   1d0ee:	d232                	sw	a2,36(sp)
   1d0f0:	d03a                	sw	a4,32(sp)
   1d0f2:	89e6                	mv	s3,s9
   1d0f4:	5532                	lw	a0,44(sp)
   1d0f6:	c169                	beqz	a0,1d1b8 <__subtf3+0xdf4>
   1d0f8:	7dc000ef          	jal	1d8d4 <__clzsi2>
   1d0fc:	ff450793          	addi	a5,a0,-12
   1d100:	02000693          	li	a3,32
   1d104:	01f7f813          	andi	a6,a5,31
   1d108:	02d7c733          	div	a4,a5,a3
   1d10c:	0c080763          	beqz	a6,1d1da <__subtf3+0xe16>
   1d110:	02010313          	addi	t1,sp,32
   1d114:	02d7e633          	rem	a2,a5,a3
   1d118:	40c685b3          	sub	a1,a3,a2
   1d11c:	5671                	li	a2,-4
   1d11e:	02c70633          	mul	a2,a4,a2
   1d122:	00c60693          	addi	a3,a2,12
   1d126:	969a                	add	a3,a3,t1
   1d128:	40c00633          	neg	a2,a2
   1d12c:	0cd31763          	bne	t1,a3,1d1fa <__subtf3+0xe36>
   1d130:	5602                	lw	a2,32(sp)
   1d132:	fff70693          	addi	a3,a4,-1
   1d136:	070a                	slli	a4,a4,0x2
   1d138:	04070713          	addi	a4,a4,64
   1d13c:	970a                	add	a4,a4,sp
   1d13e:	01061633          	sll	a2,a2,a6
   1d142:	fec72023          	sw	a2,-32(a4)
   1d146:	00168713          	addi	a4,a3,1
   1d14a:	070a                	slli	a4,a4,0x2
   1d14c:	1014                	addi	a3,sp,32
   1d14e:	4621                	li	a2,8
   1d150:	88b6                	mv	a7,a3
   1d152:	00c76863          	bltu	a4,a2,1d162 <__subtf3+0xd9e>
   1d156:	0006a023          	sw	zero,0(a3)
   1d15a:	0006a223          	sw	zero,4(a3)
   1d15e:	1761                	addi	a4,a4,-8
   1d160:	1034                	addi	a3,sp,40
   1d162:	4611                	li	a2,4
   1d164:	00c76463          	bltu	a4,a2,1d16c <__subtf3+0xda8>
   1d168:	0006a023          	sw	zero,0(a3)
   1d16c:	1487c863          	blt	a5,s0,1d2bc <__subtf3+0xef8>
   1d170:	8f81                	sub	a5,a5,s0
   1d172:	0785                	addi	a5,a5,1
   1d174:	4057d713          	srai	a4,a5,0x5
   1d178:	85c6                	mv	a1,a7
   1d17a:	8bfd                	andi	a5,a5,31
   1d17c:	8646                	mv	a2,a7
   1d17e:	4301                	li	t1,0
   1d180:	4681                	li	a3,0
   1d182:	08e69b63          	bne	a3,a4,1d218 <__subtf3+0xe54>
   1d186:	468d                	li	a3,3
   1d188:	8e99                	sub	a3,a3,a4
   1d18a:	00271613          	slli	a2,a4,0x2
   1d18e:	ebd9                	bnez	a5,1d224 <__subtf3+0xe60>
   1d190:	00c58533          	add	a0,a1,a2
   1d194:	4108                	lw	a0,0(a0)
   1d196:	0785                	addi	a5,a5,1
   1d198:	c188                	sw	a0,0(a1)
   1d19a:	0591                	addi	a1,a1,4
   1d19c:	fef6dae3          	bge	a3,a5,1d190 <__subtf3+0xdcc>
   1d1a0:	4791                	li	a5,4
   1d1a2:	40e78733          	sub	a4,a5,a4
   1d1a6:	a87d                	j	1d264 <__subtf3+0xea0>
   1d1a8:	01d6e6b3          	or	a3,a3,t4
   1d1ac:	01f6e6b3          	or	a3,a3,t6
   1d1b0:	0106e6b3          	or	a3,a3,a6
   1d1b4:	f2a1                	bnez	a3,1d0f4 <__subtf3+0xd30>
   1d1b6:	bb3d                	j	1cef4 <__subtf3+0xb30>
   1d1b8:	5522                	lw	a0,40(sp)
   1d1ba:	c509                	beqz	a0,1d1c4 <__subtf3+0xe00>
   1d1bc:	2f21                	jal	1d8d4 <__clzsi2>
   1d1be:	02050513          	addi	a0,a0,32
   1d1c2:	bf2d                	j	1d0fc <__subtf3+0xd38>
   1d1c4:	5512                	lw	a0,36(sp)
   1d1c6:	c509                	beqz	a0,1d1d0 <__subtf3+0xe0c>
   1d1c8:	2731                	jal	1d8d4 <__clzsi2>
   1d1ca:	04050513          	addi	a0,a0,64
   1d1ce:	b73d                	j	1d0fc <__subtf3+0xd38>
   1d1d0:	5502                	lw	a0,32(sp)
   1d1d2:	2709                	jal	1d8d4 <__clzsi2>
   1d1d4:	06050513          	addi	a0,a0,96
   1d1d8:	b715                	j	1d0fc <__subtf3+0xd38>
   1d1da:	55f1                	li	a1,-4
   1d1dc:	02b705b3          	mul	a1,a4,a1
   1d1e0:	1074                	addi	a3,sp,44
   1d1e2:	460d                	li	a2,3
   1d1e4:	00b68533          	add	a0,a3,a1
   1d1e8:	4108                	lw	a0,0(a0)
   1d1ea:	167d                	addi	a2,a2,-1
   1d1ec:	16f1                	addi	a3,a3,-4
   1d1ee:	c2c8                	sw	a0,4(a3)
   1d1f0:	fee65ae3          	bge	a2,a4,1d1e4 <__subtf3+0xe20>
   1d1f4:	fff70693          	addi	a3,a4,-1
   1d1f8:	b7b9                	j	1d146 <__subtf3+0xd82>
   1d1fa:	4288                	lw	a0,0(a3)
   1d1fc:	ffc6a883          	lw	a7,-4(a3)
   1d200:	00c68e33          	add	t3,a3,a2
   1d204:	01051533          	sll	a0,a0,a6
   1d208:	00b8d8b3          	srl	a7,a7,a1
   1d20c:	01156533          	or	a0,a0,a7
   1d210:	00ae2023          	sw	a0,0(t3)
   1d214:	16f1                	addi	a3,a3,-4
   1d216:	bf19                	j	1d12c <__subtf3+0xd68>
   1d218:	4208                	lw	a0,0(a2)
   1d21a:	0685                	addi	a3,a3,1
   1d21c:	0611                	addi	a2,a2,4
   1d21e:	00a36333          	or	t1,t1,a0
   1d222:	b785                	j	1d182 <__subtf3+0xdbe>
   1d224:	04060593          	addi	a1,a2,64
   1d228:	958a                	add	a1,a1,sp
   1d22a:	fe05a583          	lw	a1,-32(a1)
   1d22e:	02000813          	li	a6,32
   1d232:	40f80833          	sub	a6,a6,a5
   1d236:	010595b3          	sll	a1,a1,a6
   1d23a:	00b36333          	or	t1,t1,a1
   1d23e:	4e01                	li	t3,0
   1d240:	00c885b3          	add	a1,a7,a2
   1d244:	40c00633          	neg	a2,a2
   1d248:	04de4a63          	blt	t3,a3,1d29c <__subtf3+0xed8>
   1d24c:	4611                	li	a2,4
   1d24e:	40e60733          	sub	a4,a2,a4
   1d252:	5632                	lw	a2,44(sp)
   1d254:	068a                	slli	a3,a3,0x2
   1d256:	04068693          	addi	a3,a3,64
   1d25a:	968a                	add	a3,a3,sp
   1d25c:	00f657b3          	srl	a5,a2,a5
   1d260:	fef6a023          	sw	a5,-32(a3)
   1d264:	4691                	li	a3,4
   1d266:	8e99                	sub	a3,a3,a4
   1d268:	070a                	slli	a4,a4,0x2
   1d26a:	00e887b3          	add	a5,a7,a4
   1d26e:	00269713          	slli	a4,a3,0x2
   1d272:	46a1                	li	a3,8
   1d274:	00d76863          	bltu	a4,a3,1d284 <__subtf3+0xec0>
   1d278:	0007a023          	sw	zero,0(a5)
   1d27c:	0007a223          	sw	zero,4(a5)
   1d280:	1761                	addi	a4,a4,-8
   1d282:	07a1                	addi	a5,a5,8
   1d284:	4691                	li	a3,4
   1d286:	00d76463          	bltu	a4,a3,1d28e <__subtf3+0xeca>
   1d28a:	0007a023          	sw	zero,0(a5)
   1d28e:	5702                	lw	a4,32(sp)
   1d290:	006037b3          	snez	a5,t1
   1d294:	8fd9                	or	a5,a5,a4
   1d296:	d03e                	sw	a5,32(sp)
   1d298:	e6eff06f          	j	1c906 <__subtf3+0x542>
   1d29c:	4188                	lw	a0,0(a1)
   1d29e:	0045ae83          	lw	t4,4(a1)
   1d2a2:	00c58f33          	add	t5,a1,a2
   1d2a6:	00f55533          	srl	a0,a0,a5
   1d2aa:	010e9eb3          	sll	t4,t4,a6
   1d2ae:	01d56533          	or	a0,a0,t4
   1d2b2:	00af2023          	sw	a0,0(t5)
   1d2b6:	0e05                	addi	t3,t3,1
   1d2b8:	0591                	addi	a1,a1,4
   1d2ba:	b779                	j	1d248 <__subtf3+0xe84>
   1d2bc:	5732                	lw	a4,44(sp)
   1d2be:	fff806b7          	lui	a3,0xfff80
   1d2c2:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff603fb>
   1d2c4:	8f75                	and	a4,a4,a3
   1d2c6:	40f407b3          	sub	a5,s0,a5
   1d2ca:	d63a                	sw	a4,44(sp)
   1d2cc:	f8aff06f          	j	1ca56 <__subtf3+0x692>
   1d2d0:	da2e                	sw	a1,52(sp)
   1d2d2:	d83e                	sw	a5,48(sp)
   1d2d4:	dc32                	sw	a2,56(sp)
   1d2d6:	de36                	sw	a3,60(sp)
   1d2d8:	1818                	addi	a4,sp,48
   1d2da:	104c                	addi	a1,sp,36
   1d2dc:	4754                	lw	a3,12(a4)
   1d2de:	4710                	lw	a2,8(a4)
   1d2e0:	1771                	addi	a4,a4,-4
   1d2e2:	0686                	slli	a3,a3,0x1
   1d2e4:	827d                	srli	a2,a2,0x1f
   1d2e6:	8ed1                	or	a3,a3,a2
   1d2e8:	cb14                	sw	a3,16(a4)
   1d2ea:	fee599e3          	bne	a1,a4,1d2dc <__subtf3+0xf18>
   1d2ee:	0786                	slli	a5,a5,0x1
   1d2f0:	0077f713          	andi	a4,a5,7
   1d2f4:	4401                	li	s0,0
   1d2f6:	cf0d                	beqz	a4,1d330 <__subtf3+0xf6c>
   1d2f8:	4709                	li	a4,2
   1d2fa:	56f2                	lw	a3,60(sp)
   1d2fc:	14ea0463          	beq	s4,a4,1d444 <__subtf3+0x1080>
   1d300:	470d                	li	a4,3
   1d302:	12ea0b63          	beq	s4,a4,1d438 <__subtf3+0x1074>
   1d306:	020a1463          	bnez	s4,1d32e <__subtf3+0xf6a>
   1d30a:	00f7f713          	andi	a4,a5,15
   1d30e:	4611                	li	a2,4
   1d310:	00c70f63          	beq	a4,a2,1d32e <__subtf3+0xf6a>
   1d314:	0791                	addi	a5,a5,4
   1d316:	0047b793          	sltiu	a5,a5,4
   1d31a:	5752                	lw	a4,52(sp)
   1d31c:	973e                	add	a4,a4,a5
   1d31e:	00f73733          	sltu	a4,a4,a5
   1d322:	57e2                	lw	a5,56(sp)
   1d324:	97ba                	add	a5,a5,a4
   1d326:	00e7b7b3          	sltu	a5,a5,a4
   1d32a:	97b6                	add	a5,a5,a3
   1d32c:	de3e                	sw	a5,60(sp)
   1d32e:	4405                	li	s0,1
   1d330:	56f2                	lw	a3,60(sp)
   1d332:	4781                	li	a5,0
   1d334:	82d1                	srli	a3,a3,0x14
   1d336:	0016c693          	xori	a3,a3,1
   1d33a:	8a85                	andi	a3,a3,1
   1d33c:	5702                	lw	a4,32(sp)
   1d33e:	00777613          	andi	a2,a4,7
   1d342:	c229                	beqz	a2,1d384 <__subtf3+0xfc0>
   1d344:	4589                	li	a1,2
   1d346:	5632                	lw	a2,44(sp)
   1d348:	10ba0863          	beq	s4,a1,1d458 <__subtf3+0x1094>
   1d34c:	458d                	li	a1,3
   1d34e:	0eba0e63          	beq	s4,a1,1d44a <__subtf3+0x1086>
   1d352:	020a1763          	bnez	s4,1d380 <__subtf3+0xfbc>
   1d356:	00f77593          	andi	a1,a4,15
   1d35a:	4511                	li	a0,4
   1d35c:	02a58263          	beq	a1,a0,1d380 <__subtf3+0xfbc>
   1d360:	0711                	addi	a4,a4,4
   1d362:	d03a                	sw	a4,32(sp)
   1d364:	00473713          	sltiu	a4,a4,4
   1d368:	5592                	lw	a1,36(sp)
   1d36a:	972e                	add	a4,a4,a1
   1d36c:	d23a                	sw	a4,36(sp)
   1d36e:	00b73733          	sltu	a4,a4,a1
   1d372:	55a2                	lw	a1,40(sp)
   1d374:	972e                	add	a4,a4,a1
   1d376:	d43a                	sw	a4,40(sp)
   1d378:	00b73733          	sltu	a4,a4,a1
   1d37c:	9732                	add	a4,a4,a2
   1d37e:	d63a                	sw	a4,44(sp)
   1d380:	00146413          	ori	s0,s0,1
   1d384:	c689                	beqz	a3,1d38e <__subtf3+0xfca>
   1d386:	00147713          	andi	a4,s0,1
   1d38a:	0706                	slli	a4,a4,0x1
   1d38c:	8c59                	or	s0,s0,a4
   1d38e:	5732                	lw	a4,44(sp)
   1d390:	00c71693          	slli	a3,a4,0xc
   1d394:	0006dc63          	bgez	a3,1d3ac <__subtf3+0xfe8>
   1d398:	66a1                	lui	a3,0x8
   1d39a:	0785                	addi	a5,a5,1
   1d39c:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1d39e:	0cd78063          	beq	a5,a3,1d45e <__subtf3+0x109a>
   1d3a2:	fff806b7          	lui	a3,0xfff80
   1d3a6:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff603fb>
   1d3a8:	8f75                	and	a4,a4,a3
   1d3aa:	d63a                	sw	a4,44(sp)
   1d3ac:	1018                	addi	a4,sp,32
   1d3ae:	106c                	addi	a1,sp,44
   1d3b0:	4314                	lw	a3,0(a4)
   1d3b2:	4350                	lw	a2,4(a4)
   1d3b4:	828d                	srli	a3,a3,0x3
   1d3b6:	0676                	slli	a2,a2,0x1d
   1d3b8:	8ed1                	or	a3,a3,a2
   1d3ba:	c314                	sw	a3,0(a4)
   1d3bc:	0711                	addi	a4,a4,4
   1d3be:	feb719e3          	bne	a4,a1,1d3b0 <__subtf3+0xfec>
   1d3c2:	56b2                	lw	a3,44(sp)
   1d3c4:	6621                	lui	a2,0x8
   1d3c6:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   1d3ca:	828d                	srli	a3,a3,0x3
   1d3cc:	d636                	sw	a3,44(sp)
   1d3ce:	00e79e63          	bne	a5,a4,1d3ea <__subtf3+0x1026>
   1d3d2:	5592                	lw	a1,36(sp)
   1d3d4:	5702                	lw	a4,32(sp)
   1d3d6:	8f4d                	or	a4,a4,a1
   1d3d8:	55a2                	lw	a1,40(sp)
   1d3da:	8f4d                	or	a4,a4,a1
   1d3dc:	8f55                	or	a4,a4,a3
   1d3de:	c711                	beqz	a4,1d3ea <__subtf3+0x1026>
   1d3e0:	d632                	sw	a2,44(sp)
   1d3e2:	d402                	sw	zero,40(sp)
   1d3e4:	d202                	sw	zero,36(sp)
   1d3e6:	d002                	sw	zero,32(sp)
   1d3e8:	4981                	li	s3,0
   1d3ea:	55b2                	lw	a1,44(sp)
   1d3ec:	07c6                	slli	a5,a5,0x11
   1d3ee:	83c5                	srli	a5,a5,0x11
   1d3f0:	09be                	slli	s3,s3,0xf
   1d3f2:	00f9e9b3          	or	s3,s3,a5
   1d3f6:	02b11e23          	sh	a1,60(sp)
   1d3fa:	03311f23          	sh	s3,62(sp)
   1d3fe:	5602                	lw	a2,32(sp)
   1d400:	5692                	lw	a3,36(sp)
   1d402:	5722                	lw	a4,40(sp)
   1d404:	57f2                	lw	a5,60(sp)
   1d406:	c019                	beqz	s0,1d40c <__subtf3+0x1048>
   1d408:	00142073          	csrs	fflags,s0
   1d40c:	50b6                	lw	ra,108(sp)
   1d40e:	5426                	lw	s0,104(sp)
   1d410:	00c92023          	sw	a2,0(s2)
   1d414:	00d92223          	sw	a3,4(s2)
   1d418:	00e92423          	sw	a4,8(s2)
   1d41c:	00f92623          	sw	a5,12(s2)
   1d420:	5496                	lw	s1,100(sp)
   1d422:	49f6                	lw	s3,92(sp)
   1d424:	4a66                	lw	s4,88(sp)
   1d426:	4ad6                	lw	s5,84(sp)
   1d428:	4b46                	lw	s6,80(sp)
   1d42a:	4bb6                	lw	s7,76(sp)
   1d42c:	4c26                	lw	s8,72(sp)
   1d42e:	4c96                	lw	s9,68(sp)
   1d430:	854a                	mv	a0,s2
   1d432:	5906                	lw	s2,96(sp)
   1d434:	6165                	addi	sp,sp,112
   1d436:	8082                	ret
   1d438:	ee099be3          	bnez	s3,1d32e <__subtf3+0xf6a>
   1d43c:	07a1                	addi	a5,a5,8
   1d43e:	0087b793          	sltiu	a5,a5,8
   1d442:	bde1                	j	1d31a <__subtf3+0xf56>
   1d444:	ee0985e3          	beqz	s3,1d32e <__subtf3+0xf6a>
   1d448:	bfd5                	j	1d43c <__subtf3+0x1078>
   1d44a:	f2099be3          	bnez	s3,1d380 <__subtf3+0xfbc>
   1d44e:	0721                	addi	a4,a4,8
   1d450:	d03a                	sw	a4,32(sp)
   1d452:	00873713          	sltiu	a4,a4,8
   1d456:	bf09                	j	1d368 <__subtf3+0xfa4>
   1d458:	f20984e3          	beqz	s3,1d380 <__subtf3+0xfbc>
   1d45c:	bfcd                	j	1d44e <__subtf3+0x108a>
   1d45e:	4701                	li	a4,0
   1d460:	020a0063          	beqz	s4,1d480 <__subtf3+0x10bc>
   1d464:	468d                	li	a3,3
   1d466:	00da1863          	bne	s4,a3,1d476 <__subtf3+0x10b2>
   1d46a:	00098b63          	beqz	s3,1d480 <__subtf3+0x10bc>
   1d46e:	67a1                	lui	a5,0x8
   1d470:	577d                	li	a4,-1
   1d472:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1d474:	a031                	j	1d480 <__subtf3+0x10bc>
   1d476:	4689                	li	a3,2
   1d478:	feda1be3          	bne	s4,a3,1d46e <__subtf3+0x10aa>
   1d47c:	fe0989e3          	beqz	s3,1d46e <__subtf3+0x10aa>
   1d480:	d63a                	sw	a4,44(sp)
   1d482:	d43a                	sw	a4,40(sp)
   1d484:	d23a                	sw	a4,36(sp)
   1d486:	d03a                	sw	a4,32(sp)
   1d488:	00546413          	ori	s0,s0,5
   1d48c:	b705                	j	1d3ac <__subtf3+0xfe8>
   1d48e:	d636                	sw	a3,44(sp)
   1d490:	c76ff06f          	j	1c906 <__subtf3+0x542>
   1d494:	d68a8763          	beq	s5,s0,1ca02 <__subtf3+0x63e>
   1d498:	4401                	li	s0,0
   1d49a:	d16ff06f          	j	1c9b0 <__subtf3+0x5ec>
   1d49e:	b68a8de3          	beq	s5,s0,1d018 <__subtf3+0xc54>
   1d4a2:	4401                	li	s0,0
   1d4a4:	b699                	j	1cfea <__subtf3+0xc26>

0001d4a6 <__unordtf2>:
   1d4a6:	4114                	lw	a3,0(a0)
   1d4a8:	00452f03          	lw	t5,4(a0)
   1d4ac:	00852e83          	lw	t4,8(a0)
   1d4b0:	4550                	lw	a2,12(a0)
   1d4b2:	419c                	lw	a5,0(a1)
   1d4b4:	0045ae03          	lw	t3,4(a1)
   1d4b8:	0085a303          	lw	t1,8(a1)
   1d4bc:	45d8                	lw	a4,12(a1)
   1d4be:	1141                	addi	sp,sp,-16
   1d4c0:	002025f3          	frrm	a1
   1d4c4:	6521                	lui	a0,0x8
   1d4c6:	01061813          	slli	a6,a2,0x10
   1d4ca:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1d4cc:	8241                	srli	a2,a2,0x10
   1d4ce:	01071593          	slli	a1,a4,0x10
   1d4d2:	8e69                	and	a2,a2,a0
   1d4d4:	8341                	srli	a4,a4,0x10
   1d4d6:	01085813          	srli	a6,a6,0x10
   1d4da:	81c1                	srli	a1,a1,0x10
   1d4dc:	8f69                	and	a4,a4,a0
   1d4de:	00a61963          	bne	a2,a0,1d4f0 <__unordtf2+0x4a>
   1d4e2:	01e6e533          	or	a0,a3,t5
   1d4e6:	01d56533          	or	a0,a0,t4
   1d4ea:	01056533          	or	a0,a0,a6
   1d4ee:	e51d                	bnez	a0,1d51c <__unordtf2+0x76>
   1d4f0:	68a1                	lui	a7,0x8
   1d4f2:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   1d4f4:	4501                	li	a0,0
   1d4f6:	05171c63          	bne	a4,a7,1d54e <__unordtf2+0xa8>
   1d4fa:	01c7e8b3          	or	a7,a5,t3
   1d4fe:	0068e8b3          	or	a7,a7,t1
   1d502:	00b8e8b3          	or	a7,a7,a1
   1d506:	04088463          	beqz	a7,1d54e <__unordtf2+0xa8>
   1d50a:	02e61a63          	bne	a2,a4,1d53e <__unordtf2+0x98>
   1d50e:	01e6e6b3          	or	a3,a3,t5
   1d512:	01d6e6b3          	or	a3,a3,t4
   1d516:	0106e6b3          	or	a3,a3,a6
   1d51a:	ca99                	beqz	a3,1d530 <__unordtf2+0x8a>
   1d51c:	0842                	slli	a6,a6,0x10
   1d51e:	41085813          	srai	a6,a6,0x10
   1d522:	02085363          	bgez	a6,1d548 <__unordtf2+0xa2>
   1d526:	66a1                	lui	a3,0x8
   1d528:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1d52a:	4505                	li	a0,1
   1d52c:	02d71163          	bne	a4,a3,1d54e <__unordtf2+0xa8>
   1d530:	01c7e7b3          	or	a5,a5,t3
   1d534:	0067e7b3          	or	a5,a5,t1
   1d538:	8fcd                	or	a5,a5,a1
   1d53a:	4505                	li	a0,1
   1d53c:	cb89                	beqz	a5,1d54e <__unordtf2+0xa8>
   1d53e:	05c2                	slli	a1,a1,0x10
   1d540:	85c1                	srai	a1,a1,0x10
   1d542:	4505                	li	a0,1
   1d544:	0005c563          	bltz	a1,1d54e <__unordtf2+0xa8>
   1d548:	00186073          	csrsi	fflags,16
   1d54c:	4505                	li	a0,1
   1d54e:	0141                	addi	sp,sp,16
   1d550:	8082                	ret

0001d552 <__fixtfsi>:
   1d552:	411c                	lw	a5,0(a0)
   1d554:	00452803          	lw	a6,4(a0)
   1d558:	4518                	lw	a4,8(a0)
   1d55a:	4550                	lw	a2,12(a0)
   1d55c:	1101                	addi	sp,sp,-32
   1d55e:	002026f3          	frrm	a3
   1d562:	01061693          	slli	a3,a2,0x10
   1d566:	00161593          	slli	a1,a2,0x1
   1d56a:	c632                	sw	a2,12(sp)
   1d56c:	01f65893          	srli	a7,a2,0x1f
   1d570:	6611                	lui	a2,0x4
   1d572:	c03e                	sw	a5,0(sp)
   1d574:	c242                	sw	a6,4(sp)
   1d576:	c43a                	sw	a4,8(sp)
   1d578:	c83e                	sw	a5,16(sp)
   1d57a:	ca42                	sw	a6,20(sp)
   1d57c:	cc3a                	sw	a4,24(sp)
   1d57e:	81c5                	srli	a1,a1,0x11
   1d580:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   1d582:	82c1                	srli	a3,a3,0x10
   1d584:	00b64a63          	blt	a2,a1,1d598 <__fixtfsi+0x46>
   1d588:	e9f9                	bnez	a1,1d65e <__fixtfsi+0x10c>
   1d58a:	0107e533          	or	a0,a5,a6
   1d58e:	8d59                	or	a0,a0,a4
   1d590:	8d55                	or	a0,a0,a3
   1d592:	e571                	bnez	a0,1d65e <__fixtfsi+0x10c>
   1d594:	6105                	addi	sp,sp,32
   1d596:	8082                	ret
   1d598:	6511                	lui	a0,0x4
   1d59a:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   1d59c:	8646                	mv	a2,a7
   1d59e:	02b55763          	bge	a0,a1,1d5cc <__fixtfsi+0x7a>
   1d5a2:	0c088163          	beqz	a7,1d664 <__fixtfsi+0x112>
   1d5a6:	6511                	lui	a0,0x4
   1d5a8:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   1d5aa:	0ca59263          	bne	a1,a0,1d66e <__fixtfsi+0x11c>
   1d5ae:	01175593          	srli	a1,a4,0x11
   1d5b2:	06be                	slli	a3,a3,0xf
   1d5b4:	8ecd                	or	a3,a3,a1
   1d5b6:	eec5                	bnez	a3,1d66e <__fixtfsi+0x11c>
   1d5b8:	0107e7b3          	or	a5,a5,a6
   1d5bc:	073e                	slli	a4,a4,0xf
   1d5be:	8f5d                	or	a4,a4,a5
   1d5c0:	80000537          	lui	a0,0x80000
   1d5c4:	db61                	beqz	a4,1d594 <__fixtfsi+0x42>
   1d5c6:	00162073          	csrs	fflags,a2
   1d5ca:	b7e9                	j	1d594 <__fixtfsi+0x42>
   1d5cc:	67c1                	lui	a5,0x10
   1d5ce:	8fd5                	or	a5,a5,a3
   1d5d0:	6691                	lui	a3,0x4
   1d5d2:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   1d5d6:	8e8d                	sub	a3,a3,a1
   1d5d8:	4056d513          	srai	a0,a3,0x5
   1d5dc:	ce3e                	sw	a5,28(sp)
   1d5de:	8afd                	andi	a3,a3,31
   1d5e0:	080c                	addi	a1,sp,16
   1d5e2:	4801                	li	a6,0
   1d5e4:	4601                	li	a2,0
   1d5e6:	0005a303          	lw	t1,0(a1)
   1d5ea:	0605                	addi	a2,a2,1
   1d5ec:	0591                	addi	a1,a1,4
   1d5ee:	00686833          	or	a6,a6,t1
   1d5f2:	fec51ae3          	bne	a0,a2,1d5e6 <__fixtfsi+0x94>
   1d5f6:	00251613          	slli	a2,a0,0x2
   1d5fa:	e28d                	bnez	a3,1d61c <__fixtfsi+0xca>
   1d5fc:	02060793          	addi	a5,a2,32
   1d600:	00278633          	add	a2,a5,sp
   1d604:	ff062783          	lw	a5,-16(a2)
   1d608:	c83e                	sw	a5,16(sp)
   1d60a:	4542                	lw	a0,16(sp)
   1d60c:	00088463          	beqz	a7,1d614 <__fixtfsi+0xc2>
   1d610:	40a00533          	neg	a0,a0
   1d614:	4605                	li	a2,1
   1d616:	fa0818e3          	bnez	a6,1d5c6 <__fixtfsi+0x74>
   1d61a:	bfad                	j	1d594 <__fixtfsi+0x42>
   1d61c:	02060613          	addi	a2,a2,32
   1d620:	960a                	add	a2,a2,sp
   1d622:	ff062603          	lw	a2,-16(a2)
   1d626:	02000593          	li	a1,32
   1d62a:	8d95                	sub	a1,a1,a3
   1d62c:	00b61633          	sll	a2,a2,a1
   1d630:	4309                	li	t1,2
   1d632:	00c86833          	or	a6,a6,a2
   1d636:	4601                	li	a2,0
   1d638:	00651963          	bne	a0,t1,1d64a <__fixtfsi+0xf8>
   1d63c:	00d75733          	srl	a4,a4,a3
   1d640:	00b795b3          	sll	a1,a5,a1
   1d644:	8f4d                	or	a4,a4,a1
   1d646:	c83a                	sw	a4,16(sp)
   1d648:	4605                	li	a2,1
   1d64a:	060a                	slli	a2,a2,0x2
   1d64c:	02060713          	addi	a4,a2,32
   1d650:	00270633          	add	a2,a4,sp
   1d654:	00d7d7b3          	srl	a5,a5,a3
   1d658:	fef62823          	sw	a5,-16(a2)
   1d65c:	b77d                	j	1d60a <__fixtfsi+0xb8>
   1d65e:	4605                	li	a2,1
   1d660:	4501                	li	a0,0
   1d662:	b795                	j	1d5c6 <__fixtfsi+0x74>
   1d664:	80000537          	lui	a0,0x80000
   1d668:	4641                	li	a2,16
   1d66a:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe03fb>
   1d66c:	bfa9                	j	1d5c6 <__fixtfsi+0x74>
   1d66e:	4641                	li	a2,16
   1d670:	80000537          	lui	a0,0x80000
   1d674:	bf89                	j	1d5c6 <__fixtfsi+0x74>

0001d676 <__floatsitf>:
   1d676:	7179                	addi	sp,sp,-48
   1d678:	d226                	sw	s1,36(sp)
   1d67a:	d606                	sw	ra,44(sp)
   1d67c:	d422                	sw	s0,40(sp)
   1d67e:	d04a                	sw	s2,32(sp)
   1d680:	84aa                	mv	s1,a0
   1d682:	cdcd                	beqz	a1,1d73c <__floatsitf+0xc6>
   1d684:	41f5d793          	srai	a5,a1,0x1f
   1d688:	00b7c433          	xor	s0,a5,a1
   1d68c:	8c1d                	sub	s0,s0,a5
   1d68e:	8522                	mv	a0,s0
   1d690:	01f5d913          	srli	s2,a1,0x1f
   1d694:	2481                	jal	1d8d4 <__clzsi2>
   1d696:	6711                	lui	a4,0x4
   1d698:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1d69a:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe044d>
   1d69e:	40a70633          	sub	a2,a4,a0
   1d6a2:	c822                	sw	s0,16(sp)
   1d6a4:	4057d713          	srai	a4,a5,0x5
   1d6a8:	ca02                	sw	zero,20(sp)
   1d6aa:	cc02                	sw	zero,24(sp)
   1d6ac:	ce02                	sw	zero,28(sp)
   1d6ae:	8bfd                	andi	a5,a5,31
   1d6b0:	c78d                	beqz	a5,1d6da <__floatsitf+0x64>
   1d6b2:	4689                	li	a3,2
   1d6b4:	08d71263          	bne	a4,a3,1d738 <__floatsitf+0xc2>
   1d6b8:	02000693          	li	a3,32
   1d6bc:	8e9d                	sub	a3,a3,a5
   1d6be:	00d456b3          	srl	a3,s0,a3
   1d6c2:	ce36                	sw	a3,28(sp)
   1d6c4:	fff70693          	addi	a3,a4,-1
   1d6c8:	070a                	slli	a4,a4,0x2
   1d6ca:	02070713          	addi	a4,a4,32
   1d6ce:	970a                	add	a4,a4,sp
   1d6d0:	00f41433          	sll	s0,s0,a5
   1d6d4:	fe872823          	sw	s0,-16(a4)
   1d6d8:	a005                	j	1d6f8 <__floatsitf+0x82>
   1d6da:	478d                	li	a5,3
   1d6dc:	8f99                	sub	a5,a5,a4
   1d6de:	078a                	slli	a5,a5,0x2
   1d6e0:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1d6e4:	978a                	add	a5,a5,sp
   1d6e6:	ff07a783          	lw	a5,-16(a5)
   1d6ea:	4689                	li	a3,2
   1d6ec:	ce3e                	sw	a5,28(sp)
   1d6ee:	4789                	li	a5,2
   1d6f0:	00f71463          	bne	a4,a5,1d6f8 <__floatsitf+0x82>
   1d6f4:	cc22                	sw	s0,24(sp)
   1d6f6:	4685                	li	a3,1
   1d6f8:	068a                	slli	a3,a3,0x2
   1d6fa:	c802                	sw	zero,16(sp)
   1d6fc:	ca02                	sw	zero,20(sp)
   1d6fe:	16f1                	addi	a3,a3,-4
   1d700:	4791                	li	a5,4
   1d702:	00f6e363          	bltu	a3,a5,1d708 <__floatsitf+0x92>
   1d706:	cc02                	sw	zero,24(sp)
   1d708:	85ca                	mv	a1,s2
   1d70a:	47f2                	lw	a5,28(sp)
   1d70c:	00f59413          	slli	s0,a1,0xf
   1d710:	8c51                	or	s0,s0,a2
   1d712:	00811723          	sh	s0,14(sp)
   1d716:	00f11623          	sh	a5,12(sp)
   1d71a:	4542                	lw	a0,16(sp)
   1d71c:	46d2                	lw	a3,20(sp)
   1d71e:	4762                	lw	a4,24(sp)
   1d720:	47b2                	lw	a5,12(sp)
   1d722:	50b2                	lw	ra,44(sp)
   1d724:	5422                	lw	s0,40(sp)
   1d726:	c088                	sw	a0,0(s1)
   1d728:	c0d4                	sw	a3,4(s1)
   1d72a:	c498                	sw	a4,8(s1)
   1d72c:	c4dc                	sw	a5,12(s1)
   1d72e:	5902                	lw	s2,32(sp)
   1d730:	8526                	mv	a0,s1
   1d732:	5492                	lw	s1,36(sp)
   1d734:	6145                	addi	sp,sp,48
   1d736:	8082                	ret
   1d738:	470d                	li	a4,3
   1d73a:	b769                	j	1d6c4 <__floatsitf+0x4e>
   1d73c:	ce02                	sw	zero,28(sp)
   1d73e:	cc02                	sw	zero,24(sp)
   1d740:	ca02                	sw	zero,20(sp)
   1d742:	c802                	sw	zero,16(sp)
   1d744:	4601                	li	a2,0
   1d746:	b7d1                	j	1d70a <__floatsitf+0x94>

0001d748 <__extenddftf2>:
   1d748:	7139                	addi	sp,sp,-64
   1d74a:	d84a                	sw	s2,48(sp)
   1d74c:	d64e                	sw	s3,44(sp)
   1d74e:	de06                	sw	ra,60(sp)
   1d750:	dc22                	sw	s0,56(sp)
   1d752:	da26                	sw	s1,52(sp)
   1d754:	89aa                	mv	s3,a0
   1d756:	892e                	mv	s2,a1
   1d758:	002027f3          	frrm	a5
   1d75c:	01465413          	srli	s0,a2,0x14
   1d760:	00c61793          	slli	a5,a2,0xc
   1d764:	7ff47413          	andi	s0,s0,2047
   1d768:	83b1                	srli	a5,a5,0xc
   1d76a:	00140713          	addi	a4,s0,1
   1d76e:	c82e                	sw	a1,16(sp)
   1d770:	ca3e                	sw	a5,20(sp)
   1d772:	ce02                	sw	zero,28(sp)
   1d774:	cc02                	sw	zero,24(sp)
   1d776:	7fe77713          	andi	a4,a4,2046
   1d77a:	01f65493          	srli	s1,a2,0x1f
   1d77e:	c325                	beqz	a4,1d7de <__extenddftf2+0x96>
   1d780:	0047d693          	srli	a3,a5,0x4
   1d784:	6711                	lui	a4,0x4
   1d786:	ce36                	sw	a3,28(sp)
   1d788:	07f2                	slli	a5,a5,0x1c
   1d78a:	0045d693          	srli	a3,a1,0x4
   1d78e:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1d792:	8fd5                	or	a5,a5,a3
   1d794:	01c59913          	slli	s2,a1,0x1c
   1d798:	9722                	add	a4,a4,s0
   1d79a:	cc3e                	sw	a5,24(sp)
   1d79c:	ca4a                	sw	s2,20(sp)
   1d79e:	c802                	sw	zero,16(sp)
   1d7a0:	4401                	li	s0,0
   1d7a2:	47f2                	lw	a5,28(sp)
   1d7a4:	04be                	slli	s1,s1,0xf
   1d7a6:	8cd9                	or	s1,s1,a4
   1d7a8:	00f11623          	sh	a5,12(sp)
   1d7ac:	00911723          	sh	s1,14(sp)
   1d7b0:	45c2                	lw	a1,16(sp)
   1d7b2:	4652                	lw	a2,20(sp)
   1d7b4:	46e2                	lw	a3,24(sp)
   1d7b6:	47b2                	lw	a5,12(sp)
   1d7b8:	c019                	beqz	s0,1d7be <__extenddftf2+0x76>
   1d7ba:	00186073          	csrsi	fflags,16
   1d7be:	50f2                	lw	ra,60(sp)
   1d7c0:	5462                	lw	s0,56(sp)
   1d7c2:	00b9a023          	sw	a1,0(s3)
   1d7c6:	00c9a223          	sw	a2,4(s3)
   1d7ca:	00d9a423          	sw	a3,8(s3)
   1d7ce:	00f9a623          	sw	a5,12(s3)
   1d7d2:	54d2                	lw	s1,52(sp)
   1d7d4:	5942                	lw	s2,48(sp)
   1d7d6:	854e                	mv	a0,s3
   1d7d8:	59b2                	lw	s3,44(sp)
   1d7da:	6121                	addi	sp,sp,64
   1d7dc:	8082                	ret
   1d7de:	00b7e533          	or	a0,a5,a1
   1d7e2:	e061                	bnez	s0,1d8a2 <__extenddftf2+0x15a>
   1d7e4:	4701                	li	a4,0
   1d7e6:	dd55                	beqz	a0,1d7a2 <__extenddftf2+0x5a>
   1d7e8:	c7a1                	beqz	a5,1d830 <__extenddftf2+0xe8>
   1d7ea:	853e                	mv	a0,a5
   1d7ec:	20e5                	jal	1d8d4 <__clzsi2>
   1d7ee:	03150693          	addi	a3,a0,49
   1d7f2:	4056d793          	srai	a5,a3,0x5
   1d7f6:	8afd                	andi	a3,a3,31
   1d7f8:	c2a1                	beqz	a3,1d838 <__extenddftf2+0xf0>
   1d7fa:	5671                	li	a2,-4
   1d7fc:	02c78633          	mul	a2,a5,a2
   1d800:	02000813          	li	a6,32
   1d804:	01010313          	addi	t1,sp,16
   1d808:	40d80833          	sub	a6,a6,a3
   1d80c:	00c60713          	addi	a4,a2,12
   1d810:	971a                	add	a4,a4,t1
   1d812:	40c00633          	neg	a2,a2
   1d816:	06e31763          	bne	t1,a4,1d884 <__extenddftf2+0x13c>
   1d81a:	fff78713          	addi	a4,a5,-1
   1d81e:	078a                	slli	a5,a5,0x2
   1d820:	02078793          	addi	a5,a5,32
   1d824:	978a                	add	a5,a5,sp
   1d826:	00d916b3          	sll	a3,s2,a3
   1d82a:	fed7a823          	sw	a3,-16(a5)
   1d82e:	a025                	j	1d856 <__extenddftf2+0x10e>
   1d830:	2055                	jal	1d8d4 <__clzsi2>
   1d832:	02050513          	addi	a0,a0,32
   1d836:	bf65                	j	1d7ee <__extenddftf2+0xa6>
   1d838:	5671                	li	a2,-4
   1d83a:	02c78633          	mul	a2,a5,a2
   1d83e:	0878                	addi	a4,sp,28
   1d840:	468d                	li	a3,3
   1d842:	00c705b3          	add	a1,a4,a2
   1d846:	418c                	lw	a1,0(a1)
   1d848:	16fd                	addi	a3,a3,-1
   1d84a:	1771                	addi	a4,a4,-4
   1d84c:	c34c                	sw	a1,4(a4)
   1d84e:	fef6dae3          	bge	a3,a5,1d842 <__extenddftf2+0xfa>
   1d852:	fff78713          	addi	a4,a5,-1
   1d856:	00170793          	addi	a5,a4,1
   1d85a:	078a                	slli	a5,a5,0x2
   1d85c:	46a1                	li	a3,8
   1d85e:	0818                	addi	a4,sp,16
   1d860:	00d7e863          	bltu	a5,a3,1d870 <__extenddftf2+0x128>
   1d864:	00072023          	sw	zero,0(a4)
   1d868:	00072223          	sw	zero,4(a4)
   1d86c:	17e1                	addi	a5,a5,-8
   1d86e:	0838                	addi	a4,sp,24
   1d870:	4691                	li	a3,4
   1d872:	00d7e463          	bltu	a5,a3,1d87a <__extenddftf2+0x132>
   1d876:	00072023          	sw	zero,0(a4)
   1d87a:	6711                	lui	a4,0x4
   1d87c:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1d880:	8f09                	sub	a4,a4,a0
   1d882:	b705                	j	1d7a2 <__extenddftf2+0x5a>
   1d884:	430c                	lw	a1,0(a4)
   1d886:	ffc72883          	lw	a7,-4(a4)
   1d88a:	00c70e33          	add	t3,a4,a2
   1d88e:	00d595b3          	sll	a1,a1,a3
   1d892:	0108d8b3          	srl	a7,a7,a6
   1d896:	0115e5b3          	or	a1,a1,a7
   1d89a:	00be2023          	sw	a1,0(t3)
   1d89e:	1771                	addi	a4,a4,-4
   1d8a0:	bf9d                	j	1d816 <__extenddftf2+0xce>
   1d8a2:	c515                	beqz	a0,1d8ce <__extenddftf2+0x186>
   1d8a4:	01c79713          	slli	a4,a5,0x1c
   1d8a8:	0045d693          	srli	a3,a1,0x4
   1d8ac:	8f55                	or	a4,a4,a3
   1d8ae:	00080437          	lui	s0,0x80
   1d8b2:	0087b433          	sltu	s0,a5,s0
   1d8b6:	cc3a                	sw	a4,24(sp)
   1d8b8:	8391                	srli	a5,a5,0x4
   1d8ba:	6721                	lui	a4,0x8
   1d8bc:	01c59913          	slli	s2,a1,0x1c
   1d8c0:	8fd9                	or	a5,a5,a4
   1d8c2:	0412                	slli	s0,s0,0x4
   1d8c4:	ca4a                	sw	s2,20(sp)
   1d8c6:	c802                	sw	zero,16(sp)
   1d8c8:	ce3e                	sw	a5,28(sp)
   1d8ca:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1d8cc:	bdd9                	j	1d7a2 <__extenddftf2+0x5a>
   1d8ce:	4401                	li	s0,0
   1d8d0:	6721                	lui	a4,0x8
   1d8d2:	bfe5                	j	1d8ca <__extenddftf2+0x182>

0001d8d4 <__clzsi2>:
   1d8d4:	67c1                	lui	a5,0x10
   1d8d6:	02f57563          	bgeu	a0,a5,1d900 <__clzsi2+0x2c>
   1d8da:	10053793          	sltiu	a5,a0,256
   1d8de:	0017b793          	seqz	a5,a5
   1d8e2:	078e                	slli	a5,a5,0x3
   1d8e4:	6779                	lui	a4,0x1e
   1d8e6:	02000693          	li	a3,32
   1d8ea:	8e9d                	sub	a3,a3,a5
   1d8ec:	00f55533          	srl	a0,a0,a5
   1d8f0:	0a870793          	addi	a5,a4,168 # 1e0a8 <__clz_tab>
   1d8f4:	97aa                	add	a5,a5,a0
   1d8f6:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1d8fa:	40a68533          	sub	a0,a3,a0
   1d8fe:	8082                	ret
   1d900:	01000737          	lui	a4,0x1000
   1d904:	47e1                	li	a5,24
   1d906:	fce57fe3          	bgeu	a0,a4,1d8e4 <__clzsi2+0x10>
   1d90a:	47c1                	li	a5,16
   1d90c:	bfe1                	j	1d8e4 <__clzsi2+0x10>
