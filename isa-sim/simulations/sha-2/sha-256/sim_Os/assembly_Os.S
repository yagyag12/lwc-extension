
sim_Os/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	5ad000ef          	jal	10e4a <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	105070ef          	jal	179b0 <_exit>

000100b0 <main>:
   100b0:	1141                	addi	sp,sp,-16
   100b2:	c606                	sw	ra,12(sp)
   100b4:	286d                	jal	1016e <sha256_test>
   100b6:	cd09                	beqz	a0,100d0 <main+0x20>
   100b8:	65e9                	lui	a1,0x1a
   100ba:	0b058593          	addi	a1,a1,176 # 1a0b0 <__clzsi2+0x9e>
   100be:	6569                	lui	a0,0x1a
   100c0:	0c450513          	addi	a0,a0,196 # 1a0c4 <__clzsi2+0xb2>
   100c4:	00d000ef          	jal	108d0 <printf>
   100c8:	40b2                	lw	ra,12(sp)
   100ca:	4501                	li	a0,0
   100cc:	0141                	addi	sp,sp,16
   100ce:	8082                	ret
   100d0:	65e9                	lui	a1,0x1a
   100d2:	0bc58593          	addi	a1,a1,188 # 1a0bc <__clzsi2+0xaa>
   100d6:	b7e5                	j	100be <main+0xe>

000100d8 <register_fini>:
   100d8:	00000793          	li	a5,0
   100dc:	c791                	beqz	a5,100e8 <register_fini+0x10>
   100de:	6551                	lui	a0,0x14
   100e0:	c6850513          	addi	a0,a0,-920 # 13c68 <__libc_fini_array>
   100e4:	6350006f          	j	10f18 <atexit>
   100e8:	8082                	ret

000100ea <_start>:
   100ea:	0000b197          	auipc	gp,0xb
   100ee:	72618193          	addi	gp,gp,1830 # 1b810 <__global_pointer$>
   100f2:	f2018513          	addi	a0,gp,-224 # 1b730 <__stdio_exit_handler>
   100f6:	24c18613          	addi	a2,gp,588 # 1ba5c <__BSS_END__>
   100fa:	8e09                	sub	a2,a2,a0
   100fc:	4581                	li	a1,0
   100fe:	2fb000ef          	jal	10bf8 <memset>
   10102:	00001517          	auipc	a0,0x1
   10106:	e1650513          	addi	a0,a0,-490 # 10f18 <atexit>
   1010a:	c519                	beqz	a0,10118 <_start+0x2e>
   1010c:	00004517          	auipc	a0,0x4
   10110:	b5c50513          	addi	a0,a0,-1188 # 13c68 <__libc_fini_array>
   10114:	605000ef          	jal	10f18 <atexit>
   10118:	277000ef          	jal	10b8e <__libc_init_array>
   1011c:	4502                	lw	a0,0(sp)
   1011e:	004c                	addi	a1,sp,4
   10120:	4601                	li	a2,0
   10122:	3779                	jal	100b0 <main>
   10124:	bf85                	j	10094 <exit>

00010126 <__do_global_dtors_aux>:
   10126:	1141                	addi	sp,sp,-16
   10128:	c422                	sw	s0,8(sp)
   1012a:	f401c783          	lbu	a5,-192(gp) # 1b750 <completed.1>
   1012e:	c606                	sw	ra,12(sp)
   10130:	ef91                	bnez	a5,1014c <__do_global_dtors_aux+0x26>
   10132:	00000793          	li	a5,0
   10136:	cb81                	beqz	a5,10146 <__do_global_dtors_aux+0x20>
   10138:	656d                	lui	a0,0x1b
   1013a:	00050513          	mv	a0,a0
   1013e:	00000097          	auipc	ra,0x0
   10142:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10146:	4785                	li	a5,1
   10148:	f4f18023          	sb	a5,-192(gp) # 1b750 <completed.1>
   1014c:	40b2                	lw	ra,12(sp)
   1014e:	4422                	lw	s0,8(sp)
   10150:	0141                	addi	sp,sp,16
   10152:	8082                	ret

00010154 <frame_dummy>:
   10154:	00000793          	li	a5,0
   10158:	cb91                	beqz	a5,1016c <frame_dummy+0x18>
   1015a:	656d                	lui	a0,0x1b
   1015c:	f4418593          	addi	a1,gp,-188 # 1b754 <object.0>
   10160:	00050513          	mv	a0,a0
   10164:	00000317          	auipc	t1,0x0
   10168:	00000067          	jr	zero # 0 <exit-0x10094>
   1016c:	8082                	ret

0001016e <sha256_test>:
   1016e:	712d                	addi	sp,sp,-288
   10170:	006367b7          	lui	a5,0x636
   10174:	65e9                	lui	a1,0x1a
   10176:	26178793          	addi	a5,a5,609 # 636261 <__BSS_END__+0x61a805>
   1017a:	03900613          	li	a2,57
   1017e:	05058593          	addi	a1,a1,80 # 1a050 <__clzsi2+0x3e>
   10182:	10c8                	addi	a0,sp,100
   10184:	10112e23          	sw	ra,284(sp)
   10188:	c03e                	sw	a5,0(sp)
   1018a:	10812c23          	sw	s0,280(sp)
   1018e:	313000ef          	jal	10ca0 <memcpy>
   10192:	65e9                	lui	a1,0x1a
   10194:	02000613          	li	a2,32
   10198:	24858593          	addi	a1,a1,584 # 1a248 <__clzsi2+0x236>
   1019c:	0048                	addi	a0,sp,4
   1019e:	303000ef          	jal	10ca0 <memcpy>
   101a2:	65e9                	lui	a1,0x1a
   101a4:	02000613          	li	a2,32
   101a8:	08c58593          	addi	a1,a1,140 # 1a08c <__clzsi2+0x7a>
   101ac:	1048                	addi	a0,sp,36
   101ae:	2f3000ef          	jal	10ca0 <memcpy>
   101b2:	1108                	addi	a0,sp,160
   101b4:	2481                	jal	103f4 <sha256_init>
   101b6:	850a                	mv	a0,sp
   101b8:	42f000ef          	jal	10de6 <strlen>
   101bc:	862a                	mv	a2,a0
   101be:	858a                	mv	a1,sp
   101c0:	1108                	addi	a0,sp,160
   101c2:	2c49                	jal	10454 <sha256_update>
   101c4:	00cc                	addi	a1,sp,68
   101c6:	1108                	addi	a0,sp,160
   101c8:	24f5                	jal	104b4 <sha256_final>
   101ca:	02000613          	li	a2,32
   101ce:	00cc                	addi	a1,sp,68
   101d0:	0048                	addi	a0,sp,4
   101d2:	003000ef          	jal	109d4 <memcmp>
   101d6:	842a                	mv	s0,a0
   101d8:	1108                	addi	a0,sp,160
   101da:	2c29                	jal	103f4 <sha256_init>
   101dc:	10c8                	addi	a0,sp,100
   101de:	409000ef          	jal	10de6 <strlen>
   101e2:	862a                	mv	a2,a0
   101e4:	10cc                	addi	a1,sp,100
   101e6:	1108                	addi	a0,sp,160
   101e8:	24b5                	jal	10454 <sha256_update>
   101ea:	1108                	addi	a0,sp,160
   101ec:	00cc                	addi	a1,sp,68
   101ee:	24d9                	jal	104b4 <sha256_final>
   101f0:	4501                	li	a0,0
   101f2:	e809                	bnez	s0,10204 <sha256_test+0x96>
   101f4:	02000613          	li	a2,32
   101f8:	00cc                	addi	a1,sp,68
   101fa:	1048                	addi	a0,sp,36
   101fc:	7d8000ef          	jal	109d4 <memcmp>
   10200:	00153513          	seqz	a0,a0
   10204:	11c12083          	lw	ra,284(sp)
   10208:	11812403          	lw	s0,280(sp)
   1020c:	6115                	addi	sp,sp,288
   1020e:	8082                	ret

00010210 <sha256_transform>:
   10210:	7169                	addi	sp,sp,-304
   10212:	878a                	mv	a5,sp
   10214:	11612a23          	sw	s6,276(sp)
   10218:	12812623          	sw	s0,300(sp)
   1021c:	12912423          	sw	s1,296(sp)
   10220:	13212223          	sw	s2,292(sp)
   10224:	13312023          	sw	s3,288(sp)
   10228:	11412e23          	sw	s4,284(sp)
   1022c:	11512c23          	sw	s5,280(sp)
   10230:	11712823          	sw	s7,272(sp)
   10234:	11812623          	sw	s8,268(sp)
   10238:	04058813          	addi	a6,a1,64
   1023c:	86be                	mv	a3,a5
   1023e:	8b3e                	mv	s6,a5
   10240:	0005c703          	lbu	a4,0(a1)
   10244:	0015c603          	lbu	a2,1(a1)
   10248:	0591                	addi	a1,a1,4
   1024a:	0762                	slli	a4,a4,0x18
   1024c:	0642                	slli	a2,a2,0x10
   1024e:	8f51                	or	a4,a4,a2
   10250:	fff5c603          	lbu	a2,-1(a1)
   10254:	8f51                	or	a4,a4,a2
   10256:	ffe5c603          	lbu	a2,-2(a1)
   1025a:	0622                	slli	a2,a2,0x8
   1025c:	8f51                	or	a4,a4,a2
   1025e:	c298                	sw	a4,0(a3)
   10260:	0691                	addi	a3,a3,4
   10262:	fcb81fe3          	bne	a6,a1,10240 <sha256_transform+0x30>
   10266:	0c078813          	addi	a6,a5,192
   1026a:	5f94                	lw	a3,56(a5)
   1026c:	43d0                	lw	a2,4(a5)
   1026e:	0116d593          	srli	a1,a3,0x11
   10272:	00f69713          	slli	a4,a3,0xf
   10276:	0136d893          	srli	a7,a3,0x13
   1027a:	8f4d                	or	a4,a4,a1
   1027c:	00d69593          	slli	a1,a3,0xd
   10280:	0115e5b3          	or	a1,a1,a7
   10284:	8f2d                	xor	a4,a4,a1
   10286:	82a9                	srli	a3,a3,0xa
   10288:	438c                	lw	a1,0(a5)
   1028a:	8f35                	xor	a4,a4,a3
   1028c:	53d4                	lw	a3,36(a5)
   1028e:	01265893          	srli	a7,a2,0x12
   10292:	0791                	addi	a5,a5,4
   10294:	96ae                	add	a3,a3,a1
   10296:	9736                	add	a4,a4,a3
   10298:	01961593          	slli	a1,a2,0x19
   1029c:	00765693          	srli	a3,a2,0x7
   102a0:	8ecd                	or	a3,a3,a1
   102a2:	00e61593          	slli	a1,a2,0xe
   102a6:	0115e5b3          	or	a1,a1,a7
   102aa:	8ead                	xor	a3,a3,a1
   102ac:	820d                	srli	a2,a2,0x3
   102ae:	8eb1                	xor	a3,a3,a2
   102b0:	9736                	add	a4,a4,a3
   102b2:	dfd8                	sw	a4,60(a5)
   102b4:	faf81be3          	bne	a6,a5,1026a <sha256_transform+0x5a>
   102b8:	4924                	lw	s1,80(a0)
   102ba:	4960                	lw	s0,84(a0)
   102bc:	05852383          	lw	t2,88(a0) # 1b058 <_impure_data+0x38>
   102c0:	05c52283          	lw	t0,92(a0)
   102c4:	06052f83          	lw	t6,96(a0)
   102c8:	06452f03          	lw	t5,100(a0)
   102cc:	06852e03          	lw	t3,104(a0)
   102d0:	06c52883          	lw	a7,108(a0)
   102d4:	6969                	lui	s2,0x1a
   102d6:	8372                	mv	t1,t3
   102d8:	89c6                	mv	s3,a7
   102da:	8efa                	mv	t4,t5
   102dc:	877e                	mv	a4,t6
   102de:	8a16                	mv	s4,t0
   102e0:	861e                	mv	a2,t2
   102e2:	85a2                	mv	a1,s0
   102e4:	86a6                	mv	a3,s1
   102e6:	4801                	li	a6,0
   102e8:	26890913          	addi	s2,s2,616 # 1a268 <k>
   102ec:	10000a93          	li	s5,256
   102f0:	01a71b93          	slli	s7,a4,0x1a
   102f4:	00675793          	srli	a5,a4,0x6
   102f8:	0177e7b3          	or	a5,a5,s7
   102fc:	01571c13          	slli	s8,a4,0x15
   10300:	00b75b93          	srli	s7,a4,0xb
   10304:	018bebb3          	or	s7,s7,s8
   10308:	0177c7b3          	xor	a5,a5,s7
   1030c:	01975c13          	srli	s8,a4,0x19
   10310:	00771b93          	slli	s7,a4,0x7
   10314:	018bebb3          	or	s7,s7,s8
   10318:	0177c7b3          	xor	a5,a5,s7
   1031c:	010b0c33          	add	s8,s6,a6
   10320:	01090bb3          	add	s7,s2,a6
   10324:	000c2c03          	lw	s8,0(s8)
   10328:	000bab83          	lw	s7,0(s7)
   1032c:	0811                	addi	a6,a6,4
   1032e:	9be2                	add	s7,s7,s8
   10330:	97de                	add	a5,a5,s7
   10332:	fff74b93          	not	s7,a4
   10336:	01d77c33          	and	s8,a4,t4
   1033a:	006bfbb3          	and	s7,s7,t1
   1033e:	018bcbb3          	xor	s7,s7,s8
   10342:	97de                	add	a5,a5,s7
   10344:	97ce                	add	a5,a5,s3
   10346:	01e69b93          	slli	s7,a3,0x1e
   1034a:	0026d993          	srli	s3,a3,0x2
   1034e:	0179e9b3          	or	s3,s3,s7
   10352:	01369c13          	slli	s8,a3,0x13
   10356:	00d6db93          	srli	s7,a3,0xd
   1035a:	018bebb3          	or	s7,s7,s8
   1035e:	0179c9b3          	xor	s3,s3,s7
   10362:	0166dc13          	srli	s8,a3,0x16
   10366:	00a69b93          	slli	s7,a3,0xa
   1036a:	018bebb3          	or	s7,s7,s8
   1036e:	0179c9b3          	xor	s3,s3,s7
   10372:	00c5cbb3          	xor	s7,a1,a2
   10376:	00dbfbb3          	and	s7,s7,a3
   1037a:	00c5fc33          	and	s8,a1,a2
   1037e:	018bcbb3          	xor	s7,s7,s8
   10382:	99de                	add	s3,s3,s7
   10384:	01478bb3          	add	s7,a5,s4
   10388:	97ce                	add	a5,a5,s3
   1038a:	8a32                	mv	s4,a2
   1038c:	899a                	mv	s3,t1
   1038e:	05581c63          	bne	a6,s5,103e6 <sha256_transform+0x1d6>
   10392:	9436                	add	s0,s0,a3
   10394:	c960                	sw	s0,84(a0)
   10396:	12c12403          	lw	s0,300(sp)
   1039a:	94be                	add	s1,s1,a5
   1039c:	9fde                	add	t6,t6,s7
   1039e:	93ae                	add	t2,t2,a1
   103a0:	92b2                	add	t0,t0,a2
   103a2:	9f3a                	add	t5,t5,a4
   103a4:	9e76                	add	t3,t3,t4
   103a6:	989a                	add	a7,a7,t1
   103a8:	c924                	sw	s1,80(a0)
   103aa:	04752c23          	sw	t2,88(a0)
   103ae:	04552e23          	sw	t0,92(a0)
   103b2:	07f52023          	sw	t6,96(a0)
   103b6:	07e52223          	sw	t5,100(a0)
   103ba:	07c52423          	sw	t3,104(a0)
   103be:	07152623          	sw	a7,108(a0)
   103c2:	12812483          	lw	s1,296(sp)
   103c6:	12412903          	lw	s2,292(sp)
   103ca:	12012983          	lw	s3,288(sp)
   103ce:	11c12a03          	lw	s4,284(sp)
   103d2:	11812a83          	lw	s5,280(sp)
   103d6:	11412b03          	lw	s6,276(sp)
   103da:	11012b83          	lw	s7,272(sp)
   103de:	10c12c03          	lw	s8,268(sp)
   103e2:	6155                	addi	sp,sp,304
   103e4:	8082                	ret
   103e6:	8376                	mv	t1,t4
   103e8:	862e                	mv	a2,a1
   103ea:	8eba                	mv	t4,a4
   103ec:	85b6                	mv	a1,a3
   103ee:	875e                	mv	a4,s7
   103f0:	86be                	mv	a3,a5
   103f2:	bdfd                	j	102f0 <sha256_transform+0xe0>

000103f4 <sha256_init>:
   103f4:	4781                	li	a5,0
   103f6:	c53c                	sw	a5,72(a0)
   103f8:	6a09e7b7          	lui	a5,0x6a09e
   103fc:	66778793          	addi	a5,a5,1639 # 6a09e667 <__BSS_END__+0x6a082c0b>
   10400:	c93c                	sw	a5,80(a0)
   10402:	bb67b7b7          	lui	a5,0xbb67b
   10406:	e8578793          	addi	a5,a5,-379 # bb67ae85 <__BSS_END__+0xbb65f429>
   1040a:	c97c                	sw	a5,84(a0)
   1040c:	3c6ef7b7          	lui	a5,0x3c6ef
   10410:	37278793          	addi	a5,a5,882 # 3c6ef372 <__BSS_END__+0x3c6d3916>
   10414:	cd3c                	sw	a5,88(a0)
   10416:	a54ff7b7          	lui	a5,0xa54ff
   1041a:	53a78793          	addi	a5,a5,1338 # a54ff53a <__BSS_END__+0xa54e3ade>
   1041e:	cd7c                	sw	a5,92(a0)
   10420:	510e57b7          	lui	a5,0x510e5
   10424:	27f78793          	addi	a5,a5,639 # 510e527f <__BSS_END__+0x510c9823>
   10428:	d13c                	sw	a5,96(a0)
   1042a:	9b0577b7          	lui	a5,0x9b057
   1042e:	88c78793          	addi	a5,a5,-1908 # 9b05688c <__BSS_END__+0x9b03ae30>
   10432:	d17c                	sw	a5,100(a0)
   10434:	1f83e7b7          	lui	a5,0x1f83e
   10438:	9ab78793          	addi	a5,a5,-1621 # 1f83d9ab <__BSS_END__+0x1f821f4f>
   1043c:	d53c                	sw	a5,104(a0)
   1043e:	5be0d7b7          	lui	a5,0x5be0d
   10442:	4801                	li	a6,0
   10444:	d1978793          	addi	a5,a5,-743 # 5be0cd19 <__BSS_END__+0x5bdf12bd>
   10448:	04052023          	sw	zero,64(a0)
   1044c:	05052623          	sw	a6,76(a0)
   10450:	d57c                	sw	a5,108(a0)
   10452:	8082                	ret

00010454 <sha256_update>:
   10454:	1101                	addi	sp,sp,-32
   10456:	cc22                	sw	s0,24(sp)
   10458:	ca26                	sw	s1,20(sp)
   1045a:	c84a                	sw	s2,16(sp)
   1045c:	c64e                	sw	s3,12(sp)
   1045e:	ce06                	sw	ra,28(sp)
   10460:	842a                	mv	s0,a0
   10462:	84ae                	mv	s1,a1
   10464:	00c58933          	add	s2,a1,a2
   10468:	04000993          	li	s3,64
   1046c:	01249963          	bne	s1,s2,1047e <sha256_update+0x2a>
   10470:	40f2                	lw	ra,28(sp)
   10472:	4462                	lw	s0,24(sp)
   10474:	44d2                	lw	s1,20(sp)
   10476:	4942                	lw	s2,16(sp)
   10478:	49b2                	lw	s3,12(sp)
   1047a:	6105                	addi	sp,sp,32
   1047c:	8082                	ret
   1047e:	403c                	lw	a5,64(s0)
   10480:	0004c683          	lbu	a3,0(s1)
   10484:	00f40733          	add	a4,s0,a5
   10488:	00d70023          	sb	a3,0(a4)
   1048c:	0785                	addi	a5,a5,1
   1048e:	c03c                	sw	a5,64(s0)
   10490:	03379063          	bne	a5,s3,104b0 <sha256_update+0x5c>
   10494:	85a2                	mv	a1,s0
   10496:	8522                	mv	a0,s0
   10498:	3ba5                	jal	10210 <sha256_transform>
   1049a:	443c                	lw	a5,72(s0)
   1049c:	4474                	lw	a3,76(s0)
   1049e:	04042023          	sw	zero,64(s0)
   104a2:	20078713          	addi	a4,a5,512
   104a6:	00f737b3          	sltu	a5,a4,a5
   104aa:	97b6                	add	a5,a5,a3
   104ac:	c438                	sw	a4,72(s0)
   104ae:	c47c                	sw	a5,76(s0)
   104b0:	0485                	addi	s1,s1,1
   104b2:	bf6d                	j	1046c <sha256_update+0x18>

000104b4 <sha256_final>:
   104b4:	1141                	addi	sp,sp,-16
   104b6:	c226                	sw	s1,4(sp)
   104b8:	4124                	lw	s1,64(a0)
   104ba:	c422                	sw	s0,8(sp)
   104bc:	c04a                	sw	s2,0(sp)
   104be:	00148793          	addi	a5,s1,1
   104c2:	c606                	sw	ra,12(sp)
   104c4:	03700613          	li	a2,55
   104c8:	842a                	mv	s0,a0
   104ca:	00950733          	add	a4,a0,s1
   104ce:	892e                	mv	s2,a1
   104d0:	953e                	add	a0,a0,a5
   104d2:	0c966863          	bltu	a2,s1,105a2 <sha256_final+0xee>
   104d6:	f8000793          	li	a5,-128
   104da:	00f70023          	sb	a5,0(a4)
   104de:	8e05                	sub	a2,a2,s1
   104e0:	4581                	li	a1,0
   104e2:	716000ef          	jal	10bf8 <memset>
   104e6:	443c                	lw	a5,72(s0)
   104e8:	048e                	slli	s1,s1,0x3
   104ea:	4478                	lw	a4,76(s0)
   104ec:	97a6                	add	a5,a5,s1
   104ee:	01079693          	slli	a3,a5,0x10
   104f2:	0097b4b3          	sltu	s1,a5,s1
   104f6:	82c1                	srli	a3,a3,0x10
   104f8:	94ba                	add	s1,s1,a4
   104fa:	82a1                	srli	a3,a3,0x8
   104fc:	00879713          	slli	a4,a5,0x8
   10500:	8f55                	or	a4,a4,a3
   10502:	c43c                	sw	a5,72(s0)
   10504:	02e41f23          	sh	a4,62(s0)
   10508:	0107d713          	srli	a4,a5,0x10
   1050c:	83e1                	srli	a5,a5,0x18
   1050e:	02f40e23          	sb	a5,60(s0)
   10512:	0084d793          	srli	a5,s1,0x8
   10516:	c464                	sw	s1,76(s0)
   10518:	02940da3          	sb	s1,59(s0)
   1051c:	02f40d23          	sb	a5,58(s0)
   10520:	0104d793          	srli	a5,s1,0x10
   10524:	80e1                	srli	s1,s1,0x18
   10526:	02f40ca3          	sb	a5,57(s0)
   1052a:	85a2                	mv	a1,s0
   1052c:	02e40ea3          	sb	a4,61(s0)
   10530:	02940c23          	sb	s1,56(s0)
   10534:	8522                	mv	a0,s0
   10536:	39e9                	jal	10210 <sha256_transform>
   10538:	85ca                	mv	a1,s2
   1053a:	47e1                	li	a5,24
   1053c:	56e1                	li	a3,-8
   1053e:	4838                	lw	a4,80(s0)
   10540:	0585                	addi	a1,a1,1
   10542:	00f75733          	srl	a4,a4,a5
   10546:	fee58fa3          	sb	a4,-1(a1)
   1054a:	4878                	lw	a4,84(s0)
   1054c:	00f75733          	srl	a4,a4,a5
   10550:	00e581a3          	sb	a4,3(a1)
   10554:	4c38                	lw	a4,88(s0)
   10556:	00f75733          	srl	a4,a4,a5
   1055a:	00e583a3          	sb	a4,7(a1)
   1055e:	4c78                	lw	a4,92(s0)
   10560:	00f75733          	srl	a4,a4,a5
   10564:	00e585a3          	sb	a4,11(a1)
   10568:	5038                	lw	a4,96(s0)
   1056a:	00f75733          	srl	a4,a4,a5
   1056e:	00e587a3          	sb	a4,15(a1)
   10572:	5078                	lw	a4,100(s0)
   10574:	00f75733          	srl	a4,a4,a5
   10578:	00e589a3          	sb	a4,19(a1)
   1057c:	5438                	lw	a4,104(s0)
   1057e:	00f75733          	srl	a4,a4,a5
   10582:	00e58ba3          	sb	a4,23(a1)
   10586:	5478                	lw	a4,108(s0)
   10588:	00f75733          	srl	a4,a4,a5
   1058c:	00e58da3          	sb	a4,27(a1)
   10590:	17e1                	addi	a5,a5,-8
   10592:	fad796e3          	bne	a5,a3,1053e <sha256_final+0x8a>
   10596:	40b2                	lw	ra,12(sp)
   10598:	4422                	lw	s0,8(sp)
   1059a:	4492                	lw	s1,4(sp)
   1059c:	4902                	lw	s2,0(sp)
   1059e:	0141                	addi	sp,sp,16
   105a0:	8082                	ret
   105a2:	f8000693          	li	a3,-128
   105a6:	00d70023          	sb	a3,0(a4)
   105aa:	0417b793          	sltiu	a5,a5,65
   105ae:	4601                	li	a2,0
   105b0:	c781                	beqz	a5,105b8 <sha256_final+0x104>
   105b2:	03f00613          	li	a2,63
   105b6:	8e05                	sub	a2,a2,s1
   105b8:	4581                	li	a1,0
   105ba:	2d3d                	jal	10bf8 <memset>
   105bc:	85a2                	mv	a1,s0
   105be:	8522                	mv	a0,s0
   105c0:	3981                	jal	10210 <sha256_transform>
   105c2:	03800613          	li	a2,56
   105c6:	4581                	li	a1,0
   105c8:	8522                	mv	a0,s0
   105ca:	bf21                	j	104e2 <sha256_final+0x2e>

000105cc <__fp_lock>:
   105cc:	4501                	li	a0,0
   105ce:	8082                	ret

000105d0 <stdio_exit_handler>:
   105d0:	666d                	lui	a2,0x1b
   105d2:	65cd                	lui	a1,0x13
   105d4:	656d                	lui	a0,0x1b
   105d6:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   105da:	42c58593          	addi	a1,a1,1068 # 1342c <_fclose_r>
   105de:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   105e2:	aca9                	j	1083c <_fwalk_sglue>

000105e4 <cleanup_stdio>:
   105e4:	414c                	lw	a1,4(a0)
   105e6:	1141                	addi	sp,sp,-16
   105e8:	c422                	sw	s0,8(sp)
   105ea:	c606                	sw	ra,12(sp)
   105ec:	f5c18793          	addi	a5,gp,-164 # 1b76c <__sf>
   105f0:	842a                	mv	s0,a0
   105f2:	00f58463          	beq	a1,a5,105fa <cleanup_stdio+0x16>
   105f6:	637020ef          	jal	1342c <_fclose_r>
   105fa:	440c                	lw	a1,8(s0)
   105fc:	fc418793          	addi	a5,gp,-60 # 1b7d4 <__sf+0x68>
   10600:	00f58563          	beq	a1,a5,1060a <cleanup_stdio+0x26>
   10604:	8522                	mv	a0,s0
   10606:	627020ef          	jal	1342c <_fclose_r>
   1060a:	444c                	lw	a1,12(s0)
   1060c:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   10610:	00f58863          	beq	a1,a5,10620 <cleanup_stdio+0x3c>
   10614:	8522                	mv	a0,s0
   10616:	4422                	lw	s0,8(sp)
   10618:	40b2                	lw	ra,12(sp)
   1061a:	0141                	addi	sp,sp,16
   1061c:	6110206f          	j	1342c <_fclose_r>
   10620:	40b2                	lw	ra,12(sp)
   10622:	4422                	lw	s0,8(sp)
   10624:	0141                	addi	sp,sp,16
   10626:	8082                	ret

00010628 <__fp_unlock>:
   10628:	4501                	li	a0,0
   1062a:	8082                	ret

0001062c <global_stdio_init.part.0>:
   1062c:	1101                	addi	sp,sp,-32
   1062e:	67c1                	lui	a5,0x10
   10630:	cc22                	sw	s0,24(sp)
   10632:	5d078793          	addi	a5,a5,1488 # 105d0 <stdio_exit_handler>
   10636:	f5c18413          	addi	s0,gp,-164 # 1b76c <__sf>
   1063a:	ce06                	sw	ra,28(sp)
   1063c:	ca26                	sw	s1,20(sp)
   1063e:	c84a                	sw	s2,16(sp)
   10640:	c64e                	sw	s3,12(sp)
   10642:	c452                	sw	s4,8(sp)
   10644:	f2f1a023          	sw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   10648:	4621                	li	a2,8
   1064a:	4791                	li	a5,4
   1064c:	4581                	li	a1,0
   1064e:	fb818513          	addi	a0,gp,-72 # 1b7c8 <__sf+0x5c>
   10652:	c45c                	sw	a5,12(s0)
   10654:	00042023          	sw	zero,0(s0)
   10658:	00042223          	sw	zero,4(s0)
   1065c:	00042423          	sw	zero,8(s0)
   10660:	06042223          	sw	zero,100(s0)
   10664:	00042823          	sw	zero,16(s0)
   10668:	00042a23          	sw	zero,20(s0)
   1066c:	00042c23          	sw	zero,24(s0)
   10670:	2361                	jal	10bf8 <memset>
   10672:	67c1                	lui	a5,0x10
   10674:	6a45                	lui	s4,0x11
   10676:	69c5                	lui	s3,0x11
   10678:	6945                	lui	s2,0x11
   1067a:	64c5                	lui	s1,0x11
   1067c:	8fca0a13          	addi	s4,s4,-1796 # 108fc <__sread>
   10680:	93698993          	addi	s3,s3,-1738 # 10936 <__swrite>
   10684:	98690913          	addi	s2,s2,-1658 # 10986 <__sseek>
   10688:	9ce48493          	addi	s1,s1,-1586 # 109ce <__sclose>
   1068c:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   1068e:	4621                	li	a2,8
   10690:	4581                	li	a1,0
   10692:	02018513          	addi	a0,gp,32 # 1b830 <__global_pointer$+0x20>
   10696:	03442023          	sw	s4,32(s0)
   1069a:	03342223          	sw	s3,36(s0)
   1069e:	03242423          	sw	s2,40(s0)
   106a2:	d444                	sw	s1,44(s0)
   106a4:	d87c                	sw	a5,116(s0)
   106a6:	cc40                	sw	s0,28(s0)
   106a8:	06042423          	sw	zero,104(s0)
   106ac:	06042623          	sw	zero,108(s0)
   106b0:	06042823          	sw	zero,112(s0)
   106b4:	0c042623          	sw	zero,204(s0)
   106b8:	06042c23          	sw	zero,120(s0)
   106bc:	06042e23          	sw	zero,124(s0)
   106c0:	08042023          	sw	zero,128(s0)
   106c4:	2b15                	jal	10bf8 <memset>
   106c6:	000207b7          	lui	a5,0x20
   106ca:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x45b6>
   106cc:	fc418713          	addi	a4,gp,-60 # 1b7d4 <__sf+0x68>
   106d0:	4621                	li	a2,8
   106d2:	4581                	li	a1,0
   106d4:	08818513          	addi	a0,gp,136 # 1b898 <__global_pointer$+0x88>
   106d8:	09442423          	sw	s4,136(s0)
   106dc:	09342623          	sw	s3,140(s0)
   106e0:	09242823          	sw	s2,144(s0)
   106e4:	08942a23          	sw	s1,148(s0)
   106e8:	0cf42e23          	sw	a5,220(s0)
   106ec:	08e42223          	sw	a4,132(s0)
   106f0:	0c042823          	sw	zero,208(s0)
   106f4:	0c042a23          	sw	zero,212(s0)
   106f8:	0c042c23          	sw	zero,216(s0)
   106fc:	12042a23          	sw	zero,308(s0)
   10700:	0e042023          	sw	zero,224(s0)
   10704:	0e042223          	sw	zero,228(s0)
   10708:	0e042423          	sw	zero,232(s0)
   1070c:	21f5                	jal	10bf8 <memset>
   1070e:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   10712:	0f442823          	sw	s4,240(s0)
   10716:	0f342a23          	sw	s3,244(s0)
   1071a:	0f242c23          	sw	s2,248(s0)
   1071e:	0e942e23          	sw	s1,252(s0)
   10722:	40f2                	lw	ra,28(sp)
   10724:	0ef42623          	sw	a5,236(s0)
   10728:	4462                	lw	s0,24(sp)
   1072a:	44d2                	lw	s1,20(sp)
   1072c:	4942                	lw	s2,16(sp)
   1072e:	49b2                	lw	s3,12(sp)
   10730:	4a22                	lw	s4,8(sp)
   10732:	6105                	addi	sp,sp,32
   10734:	8082                	ret

00010736 <__sfp>:
   10736:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   1073a:	1101                	addi	sp,sp,-32
   1073c:	c64e                	sw	s3,12(sp)
   1073e:	ce06                	sw	ra,28(sp)
   10740:	cc22                	sw	s0,24(sp)
   10742:	ca26                	sw	s1,20(sp)
   10744:	c84a                	sw	s2,16(sp)
   10746:	89aa                	mv	s3,a0
   10748:	c7cd                	beqz	a5,107f2 <__sfp+0xbc>
   1074a:	696d                	lui	s2,0x1b
   1074c:	01090913          	addi	s2,s2,16 # 1b010 <__sglue>
   10750:	54fd                	li	s1,-1
   10752:	00492783          	lw	a5,4(s2)
   10756:	00892403          	lw	s0,8(s2)
   1075a:	17fd                	addi	a5,a5,-1
   1075c:	0007d763          	bgez	a5,1076a <__sfp+0x34>
   10760:	a8b9                	j	107be <__sfp+0x88>
   10762:	06840413          	addi	s0,s0,104
   10766:	04978c63          	beq	a5,s1,107be <__sfp+0x88>
   1076a:	00c41703          	lh	a4,12(s0)
   1076e:	17fd                	addi	a5,a5,-1
   10770:	fb6d                	bnez	a4,10762 <__sfp+0x2c>
   10772:	77c1                	lui	a5,0xffff0
   10774:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd45a5>
   10776:	c45c                	sw	a5,12(s0)
   10778:	06042223          	sw	zero,100(s0)
   1077c:	00042023          	sw	zero,0(s0)
   10780:	00042423          	sw	zero,8(s0)
   10784:	00042223          	sw	zero,4(s0)
   10788:	00042823          	sw	zero,16(s0)
   1078c:	00042a23          	sw	zero,20(s0)
   10790:	00042c23          	sw	zero,24(s0)
   10794:	4621                	li	a2,8
   10796:	4581                	li	a1,0
   10798:	05c40513          	addi	a0,s0,92
   1079c:	29b1                	jal	10bf8 <memset>
   1079e:	02042823          	sw	zero,48(s0)
   107a2:	02042a23          	sw	zero,52(s0)
   107a6:	04042223          	sw	zero,68(s0)
   107aa:	04042423          	sw	zero,72(s0)
   107ae:	40f2                	lw	ra,28(sp)
   107b0:	8522                	mv	a0,s0
   107b2:	4462                	lw	s0,24(sp)
   107b4:	44d2                	lw	s1,20(sp)
   107b6:	4942                	lw	s2,16(sp)
   107b8:	49b2                	lw	s3,12(sp)
   107ba:	6105                	addi	sp,sp,32
   107bc:	8082                	ret
   107be:	00092403          	lw	s0,0(s2)
   107c2:	c019                	beqz	s0,107c8 <__sfp+0x92>
   107c4:	8922                	mv	s2,s0
   107c6:	b771                	j	10752 <__sfp+0x1c>
   107c8:	1ac00593          	li	a1,428
   107cc:	854e                	mv	a0,s3
   107ce:	245000ef          	jal	11212 <_malloc_r>
   107d2:	842a                	mv	s0,a0
   107d4:	c10d                	beqz	a0,107f6 <__sfp+0xc0>
   107d6:	0531                	addi	a0,a0,12
   107d8:	4791                	li	a5,4
   107da:	00042023          	sw	zero,0(s0)
   107de:	c05c                	sw	a5,4(s0)
   107e0:	c408                	sw	a0,8(s0)
   107e2:	1a000613          	li	a2,416
   107e6:	4581                	li	a1,0
   107e8:	2901                	jal	10bf8 <memset>
   107ea:	00892023          	sw	s0,0(s2)
   107ee:	8922                	mv	s2,s0
   107f0:	b78d                	j	10752 <__sfp+0x1c>
   107f2:	3d2d                	jal	1062c <global_stdio_init.part.0>
   107f4:	bf99                	j	1074a <__sfp+0x14>
   107f6:	00092023          	sw	zero,0(s2)
   107fa:	47b1                	li	a5,12
   107fc:	00f9a023          	sw	a5,0(s3)
   10800:	b77d                	j	107ae <__sfp+0x78>

00010802 <__sinit>:
   10802:	595c                	lw	a5,52(a0)
   10804:	c391                	beqz	a5,10808 <__sinit+0x6>
   10806:	8082                	ret
   10808:	f201a703          	lw	a4,-224(gp) # 1b730 <__stdio_exit_handler>
   1080c:	67c1                	lui	a5,0x10
   1080e:	5e478793          	addi	a5,a5,1508 # 105e4 <cleanup_stdio>
   10812:	d95c                	sw	a5,52(a0)
   10814:	fb6d                	bnez	a4,10806 <__sinit+0x4>
   10816:	bd19                	j	1062c <global_stdio_init.part.0>

00010818 <__sfp_lock_acquire>:
   10818:	8082                	ret

0001081a <__sfp_lock_release>:
   1081a:	8082                	ret

0001081c <__fp_lock_all>:
   1081c:	666d                	lui	a2,0x1b
   1081e:	65c1                	lui	a1,0x10
   10820:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   10824:	5cc58593          	addi	a1,a1,1484 # 105cc <__fp_lock>
   10828:	4501                	li	a0,0
   1082a:	a809                	j	1083c <_fwalk_sglue>

0001082c <__fp_unlock_all>:
   1082c:	666d                	lui	a2,0x1b
   1082e:	65c1                	lui	a1,0x10
   10830:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   10834:	62858593          	addi	a1,a1,1576 # 10628 <__fp_unlock>
   10838:	4501                	li	a0,0
   1083a:	a009                	j	1083c <_fwalk_sglue>

0001083c <_fwalk_sglue>:
   1083c:	7179                	addi	sp,sp,-48
   1083e:	d04a                	sw	s2,32(sp)
   10840:	ce4e                	sw	s3,28(sp)
   10842:	cc52                	sw	s4,24(sp)
   10844:	ca56                	sw	s5,20(sp)
   10846:	c85a                	sw	s6,16(sp)
   10848:	c65e                	sw	s7,12(sp)
   1084a:	d606                	sw	ra,44(sp)
   1084c:	d422                	sw	s0,40(sp)
   1084e:	d226                	sw	s1,36(sp)
   10850:	8b2a                	mv	s6,a0
   10852:	8bae                	mv	s7,a1
   10854:	8ab2                	mv	s5,a2
   10856:	4a01                	li	s4,0
   10858:	4985                	li	s3,1
   1085a:	597d                	li	s2,-1
   1085c:	004aa483          	lw	s1,4(s5)
   10860:	008aa403          	lw	s0,8(s5)
   10864:	14fd                	addi	s1,s1,-1
   10866:	0204c463          	bltz	s1,1088e <_fwalk_sglue+0x52>
   1086a:	00c45783          	lhu	a5,12(s0)
   1086e:	00f9fb63          	bgeu	s3,a5,10884 <_fwalk_sglue+0x48>
   10872:	00e41783          	lh	a5,14(s0)
   10876:	85a2                	mv	a1,s0
   10878:	855a                	mv	a0,s6
   1087a:	01278563          	beq	a5,s2,10884 <_fwalk_sglue+0x48>
   1087e:	9b82                	jalr	s7
   10880:	00aa6a33          	or	s4,s4,a0
   10884:	14fd                	addi	s1,s1,-1
   10886:	06840413          	addi	s0,s0,104
   1088a:	ff2490e3          	bne	s1,s2,1086a <_fwalk_sglue+0x2e>
   1088e:	000aaa83          	lw	s5,0(s5)
   10892:	fc0a95e3          	bnez	s5,1085c <_fwalk_sglue+0x20>
   10896:	50b2                	lw	ra,44(sp)
   10898:	5422                	lw	s0,40(sp)
   1089a:	5492                	lw	s1,36(sp)
   1089c:	5902                	lw	s2,32(sp)
   1089e:	49f2                	lw	s3,28(sp)
   108a0:	4ad2                	lw	s5,20(sp)
   108a2:	4b42                	lw	s6,16(sp)
   108a4:	4bb2                	lw	s7,12(sp)
   108a6:	8552                	mv	a0,s4
   108a8:	4a62                	lw	s4,24(sp)
   108aa:	6145                	addi	sp,sp,48
   108ac:	8082                	ret

000108ae <_printf_r>:
   108ae:	7139                	addi	sp,sp,-64
   108b0:	d432                	sw	a2,40(sp)
   108b2:	d636                	sw	a3,44(sp)
   108b4:	d83a                	sw	a4,48(sp)
   108b6:	da3e                	sw	a5,52(sp)
   108b8:	dc42                	sw	a6,56(sp)
   108ba:	de46                	sw	a7,60(sp)
   108bc:	862e                	mv	a2,a1
   108be:	450c                	lw	a1,8(a0)
   108c0:	1034                	addi	a3,sp,40
   108c2:	ce06                	sw	ra,28(sp)
   108c4:	c636                	sw	a3,12(sp)
   108c6:	6f5000ef          	jal	117ba <_vfprintf_r>
   108ca:	40f2                	lw	ra,28(sp)
   108cc:	6121                	addi	sp,sp,64
   108ce:	8082                	ret

000108d0 <printf>:
   108d0:	f141a303          	lw	t1,-236(gp) # 1b724 <_impure_ptr>
   108d4:	7139                	addi	sp,sp,-64
   108d6:	d432                	sw	a2,40(sp)
   108d8:	d636                	sw	a3,44(sp)
   108da:	d22e                	sw	a1,36(sp)
   108dc:	d83a                	sw	a4,48(sp)
   108de:	da3e                	sw	a5,52(sp)
   108e0:	dc42                	sw	a6,56(sp)
   108e2:	de46                	sw	a7,60(sp)
   108e4:	00832583          	lw	a1,8(t1) # 1016c <frame_dummy+0x18>
   108e8:	1054                	addi	a3,sp,36
   108ea:	862a                	mv	a2,a0
   108ec:	851a                	mv	a0,t1
   108ee:	ce06                	sw	ra,28(sp)
   108f0:	c636                	sw	a3,12(sp)
   108f2:	6c9000ef          	jal	117ba <_vfprintf_r>
   108f6:	40f2                	lw	ra,28(sp)
   108f8:	6121                	addi	sp,sp,64
   108fa:	8082                	ret

000108fc <__sread>:
   108fc:	1141                	addi	sp,sp,-16
   108fe:	c422                	sw	s0,8(sp)
   10900:	842e                	mv	s0,a1
   10902:	00e59583          	lh	a1,14(a1)
   10906:	c606                	sw	ra,12(sp)
   10908:	2439                	jal	10b16 <_read_r>
   1090a:	00054963          	bltz	a0,1091c <__sread+0x20>
   1090e:	483c                	lw	a5,80(s0)
   10910:	40b2                	lw	ra,12(sp)
   10912:	97aa                	add	a5,a5,a0
   10914:	c83c                	sw	a5,80(s0)
   10916:	4422                	lw	s0,8(sp)
   10918:	0141                	addi	sp,sp,16
   1091a:	8082                	ret
   1091c:	00c45783          	lhu	a5,12(s0)
   10920:	777d                	lui	a4,0xfffff
   10922:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10924:	8ff9                	and	a5,a5,a4
   10926:	40b2                	lw	ra,12(sp)
   10928:	00f41623          	sh	a5,12(s0)
   1092c:	4422                	lw	s0,8(sp)
   1092e:	0141                	addi	sp,sp,16
   10930:	8082                	ret

00010932 <__seofread>:
   10932:	4501                	li	a0,0
   10934:	8082                	ret

00010936 <__swrite>:
   10936:	00c59783          	lh	a5,12(a1)
   1093a:	1101                	addi	sp,sp,-32
   1093c:	cc22                	sw	s0,24(sp)
   1093e:	ca26                	sw	s1,20(sp)
   10940:	c84a                	sw	s2,16(sp)
   10942:	c64e                	sw	s3,12(sp)
   10944:	ce06                	sw	ra,28(sp)
   10946:	1007f713          	andi	a4,a5,256
   1094a:	842e                	mv	s0,a1
   1094c:	84aa                	mv	s1,a0
   1094e:	8932                	mv	s2,a2
   10950:	89b6                	mv	s3,a3
   10952:	e315                	bnez	a4,10976 <__swrite+0x40>
   10954:	777d                	lui	a4,0xfffff
   10956:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10958:	8ff9                	and	a5,a5,a4
   1095a:	00e41583          	lh	a1,14(s0)
   1095e:	00f41623          	sh	a5,12(s0)
   10962:	4462                	lw	s0,24(sp)
   10964:	40f2                	lw	ra,28(sp)
   10966:	86ce                	mv	a3,s3
   10968:	864a                	mv	a2,s2
   1096a:	49b2                	lw	s3,12(sp)
   1096c:	4942                	lw	s2,16(sp)
   1096e:	8526                	mv	a0,s1
   10970:	44d2                	lw	s1,20(sp)
   10972:	6105                	addi	sp,sp,32
   10974:	aaf9                	j	10b52 <_write_r>
   10976:	00e59583          	lh	a1,14(a1)
   1097a:	4689                	li	a3,2
   1097c:	4601                	li	a2,0
   1097e:	2ab1                	jal	10ada <_lseek_r>
   10980:	00c41783          	lh	a5,12(s0)
   10984:	bfc1                	j	10954 <__swrite+0x1e>

00010986 <__sseek>:
   10986:	1141                	addi	sp,sp,-16
   10988:	c422                	sw	s0,8(sp)
   1098a:	842e                	mv	s0,a1
   1098c:	00e59583          	lh	a1,14(a1)
   10990:	c606                	sw	ra,12(sp)
   10992:	22a1                	jal	10ada <_lseek_r>
   10994:	57fd                	li	a5,-1
   10996:	00f50f63          	beq	a0,a5,109b4 <__sseek+0x2e>
   1099a:	00c45783          	lhu	a5,12(s0)
   1099e:	6705                	lui	a4,0x1
   109a0:	40b2                	lw	ra,12(sp)
   109a2:	8fd9                	or	a5,a5,a4
   109a4:	07c2                	slli	a5,a5,0x10
   109a6:	87c1                	srai	a5,a5,0x10
   109a8:	c828                	sw	a0,80(s0)
   109aa:	00f41623          	sh	a5,12(s0)
   109ae:	4422                	lw	s0,8(sp)
   109b0:	0141                	addi	sp,sp,16
   109b2:	8082                	ret
   109b4:	00c45783          	lhu	a5,12(s0)
   109b8:	777d                	lui	a4,0xfffff
   109ba:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   109bc:	8ff9                	and	a5,a5,a4
   109be:	07c2                	slli	a5,a5,0x10
   109c0:	87c1                	srai	a5,a5,0x10
   109c2:	40b2                	lw	ra,12(sp)
   109c4:	00f41623          	sh	a5,12(s0)
   109c8:	4422                	lw	s0,8(sp)
   109ca:	0141                	addi	sp,sp,16
   109cc:	8082                	ret

000109ce <__sclose>:
   109ce:	00e59583          	lh	a1,14(a1)
   109d2:	a899                	j	10a28 <_close_r>

000109d4 <memcmp>:
   109d4:	478d                	li	a5,3
   109d6:	02c7f463          	bgeu	a5,a2,109fe <memcmp+0x2a>
   109da:	00a5e7b3          	or	a5,a1,a0
   109de:	8b8d                	andi	a5,a5,3
   109e0:	ef81                	bnez	a5,109f8 <memcmp+0x24>
   109e2:	468d                	li	a3,3
   109e4:	a031                	j	109f0 <memcmp+0x1c>
   109e6:	1671                	addi	a2,a2,-4
   109e8:	0511                	addi	a0,a0,4
   109ea:	0591                	addi	a1,a1,4
   109ec:	00c6f963          	bgeu	a3,a2,109fe <memcmp+0x2a>
   109f0:	4118                	lw	a4,0(a0)
   109f2:	419c                	lw	a5,0(a1)
   109f4:	fef709e3          	beq	a4,a5,109e6 <memcmp+0x12>
   109f8:	fff60693          	addi	a3,a2,-1
   109fc:	a021                	j	10a04 <memcmp+0x30>
   109fe:	fff60693          	addi	a3,a2,-1
   10a02:	c20d                	beqz	a2,10a24 <memcmp+0x50>
   10a04:	0685                	addi	a3,a3,1
   10a06:	96aa                	add	a3,a3,a0
   10a08:	a019                	j	10a0e <memcmp+0x3a>
   10a0a:	00a68d63          	beq	a3,a0,10a24 <memcmp+0x50>
   10a0e:	00054783          	lbu	a5,0(a0)
   10a12:	0005c703          	lbu	a4,0(a1)
   10a16:	0505                	addi	a0,a0,1
   10a18:	0585                	addi	a1,a1,1
   10a1a:	fee788e3          	beq	a5,a4,10a0a <memcmp+0x36>
   10a1e:	40e78533          	sub	a0,a5,a4
   10a22:	8082                	ret
   10a24:	4501                	li	a0,0
   10a26:	8082                	ret

00010a28 <_close_r>:
   10a28:	1141                	addi	sp,sp,-16
   10a2a:	c422                	sw	s0,8(sp)
   10a2c:	c226                	sw	s1,4(sp)
   10a2e:	842a                	mv	s0,a0
   10a30:	852e                	mv	a0,a1
   10a32:	c606                	sw	ra,12(sp)
   10a34:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10a38:	74d060ef          	jal	17984 <_close>
   10a3c:	57fd                	li	a5,-1
   10a3e:	00f50763          	beq	a0,a5,10a4c <_close_r+0x24>
   10a42:	40b2                	lw	ra,12(sp)
   10a44:	4422                	lw	s0,8(sp)
   10a46:	4492                	lw	s1,4(sp)
   10a48:	0141                	addi	sp,sp,16
   10a4a:	8082                	ret
   10a4c:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10a50:	dbed                	beqz	a5,10a42 <_close_r+0x1a>
   10a52:	40b2                	lw	ra,12(sp)
   10a54:	c01c                	sw	a5,0(s0)
   10a56:	4422                	lw	s0,8(sp)
   10a58:	4492                	lw	s1,4(sp)
   10a5a:	0141                	addi	sp,sp,16
   10a5c:	8082                	ret

00010a5e <_reclaim_reent>:
   10a5e:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10a62:	06a78b63          	beq	a5,a0,10ad8 <_reclaim_reent+0x7a>
   10a66:	416c                	lw	a1,68(a0)
   10a68:	1101                	addi	sp,sp,-32
   10a6a:	ca26                	sw	s1,20(sp)
   10a6c:	ce06                	sw	ra,28(sp)
   10a6e:	cc22                	sw	s0,24(sp)
   10a70:	84aa                	mv	s1,a0
   10a72:	c59d                	beqz	a1,10aa0 <_reclaim_reent+0x42>
   10a74:	c84a                	sw	s2,16(sp)
   10a76:	c64e                	sw	s3,12(sp)
   10a78:	4901                	li	s2,0
   10a7a:	08000993          	li	s3,128
   10a7e:	012587b3          	add	a5,a1,s2
   10a82:	4380                	lw	s0,0(a5)
   10a84:	c419                	beqz	s0,10a92 <_reclaim_reent+0x34>
   10a86:	85a2                	mv	a1,s0
   10a88:	4000                	lw	s0,0(s0)
   10a8a:	8526                	mv	a0,s1
   10a8c:	2395                	jal	10ff0 <_free_r>
   10a8e:	fc65                	bnez	s0,10a86 <_reclaim_reent+0x28>
   10a90:	40ec                	lw	a1,68(s1)
   10a92:	0911                	addi	s2,s2,4
   10a94:	ff3915e3          	bne	s2,s3,10a7e <_reclaim_reent+0x20>
   10a98:	8526                	mv	a0,s1
   10a9a:	2b99                	jal	10ff0 <_free_r>
   10a9c:	4942                	lw	s2,16(sp)
   10a9e:	49b2                	lw	s3,12(sp)
   10aa0:	5c8c                	lw	a1,56(s1)
   10aa2:	c199                	beqz	a1,10aa8 <_reclaim_reent+0x4a>
   10aa4:	8526                	mv	a0,s1
   10aa6:	23a9                	jal	10ff0 <_free_r>
   10aa8:	40a0                	lw	s0,64(s1)
   10aaa:	c411                	beqz	s0,10ab6 <_reclaim_reent+0x58>
   10aac:	85a2                	mv	a1,s0
   10aae:	4000                	lw	s0,0(s0)
   10ab0:	8526                	mv	a0,s1
   10ab2:	2b3d                	jal	10ff0 <_free_r>
   10ab4:	fc65                	bnez	s0,10aac <_reclaim_reent+0x4e>
   10ab6:	44ec                	lw	a1,76(s1)
   10ab8:	c199                	beqz	a1,10abe <_reclaim_reent+0x60>
   10aba:	8526                	mv	a0,s1
   10abc:	2b15                	jal	10ff0 <_free_r>
   10abe:	58dc                	lw	a5,52(s1)
   10ac0:	c799                	beqz	a5,10ace <_reclaim_reent+0x70>
   10ac2:	4462                	lw	s0,24(sp)
   10ac4:	40f2                	lw	ra,28(sp)
   10ac6:	8526                	mv	a0,s1
   10ac8:	44d2                	lw	s1,20(sp)
   10aca:	6105                	addi	sp,sp,32
   10acc:	8782                	jr	a5
   10ace:	40f2                	lw	ra,28(sp)
   10ad0:	4462                	lw	s0,24(sp)
   10ad2:	44d2                	lw	s1,20(sp)
   10ad4:	6105                	addi	sp,sp,32
   10ad6:	8082                	ret
   10ad8:	8082                	ret

00010ada <_lseek_r>:
   10ada:	1141                	addi	sp,sp,-16
   10adc:	872e                	mv	a4,a1
   10ade:	c422                	sw	s0,8(sp)
   10ae0:	c226                	sw	s1,4(sp)
   10ae2:	85b2                	mv	a1,a2
   10ae4:	842a                	mv	s0,a0
   10ae6:	8636                	mv	a2,a3
   10ae8:	853a                	mv	a0,a4
   10aea:	c606                	sw	ra,12(sp)
   10aec:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10af0:	759060ef          	jal	17a48 <_lseek>
   10af4:	57fd                	li	a5,-1
   10af6:	00f50763          	beq	a0,a5,10b04 <_lseek_r+0x2a>
   10afa:	40b2                	lw	ra,12(sp)
   10afc:	4422                	lw	s0,8(sp)
   10afe:	4492                	lw	s1,4(sp)
   10b00:	0141                	addi	sp,sp,16
   10b02:	8082                	ret
   10b04:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10b08:	dbed                	beqz	a5,10afa <_lseek_r+0x20>
   10b0a:	40b2                	lw	ra,12(sp)
   10b0c:	c01c                	sw	a5,0(s0)
   10b0e:	4422                	lw	s0,8(sp)
   10b10:	4492                	lw	s1,4(sp)
   10b12:	0141                	addi	sp,sp,16
   10b14:	8082                	ret

00010b16 <_read_r>:
   10b16:	1141                	addi	sp,sp,-16
   10b18:	872e                	mv	a4,a1
   10b1a:	c422                	sw	s0,8(sp)
   10b1c:	c226                	sw	s1,4(sp)
   10b1e:	85b2                	mv	a1,a2
   10b20:	842a                	mv	s0,a0
   10b22:	8636                	mv	a2,a3
   10b24:	853a                	mv	a0,a4
   10b26:	c606                	sw	ra,12(sp)
   10b28:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10b2c:	749060ef          	jal	17a74 <_read>
   10b30:	57fd                	li	a5,-1
   10b32:	00f50763          	beq	a0,a5,10b40 <_read_r+0x2a>
   10b36:	40b2                	lw	ra,12(sp)
   10b38:	4422                	lw	s0,8(sp)
   10b3a:	4492                	lw	s1,4(sp)
   10b3c:	0141                	addi	sp,sp,16
   10b3e:	8082                	ret
   10b40:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10b44:	dbed                	beqz	a5,10b36 <_read_r+0x20>
   10b46:	40b2                	lw	ra,12(sp)
   10b48:	c01c                	sw	a5,0(s0)
   10b4a:	4422                	lw	s0,8(sp)
   10b4c:	4492                	lw	s1,4(sp)
   10b4e:	0141                	addi	sp,sp,16
   10b50:	8082                	ret

00010b52 <_write_r>:
   10b52:	1141                	addi	sp,sp,-16
   10b54:	872e                	mv	a4,a1
   10b56:	c422                	sw	s0,8(sp)
   10b58:	c226                	sw	s1,4(sp)
   10b5a:	85b2                	mv	a1,a2
   10b5c:	842a                	mv	s0,a0
   10b5e:	8636                	mv	a2,a3
   10b60:	853a                	mv	a0,a4
   10b62:	c606                	sw	ra,12(sp)
   10b64:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10b68:	78d060ef          	jal	17af4 <_write>
   10b6c:	57fd                	li	a5,-1
   10b6e:	00f50763          	beq	a0,a5,10b7c <_write_r+0x2a>
   10b72:	40b2                	lw	ra,12(sp)
   10b74:	4422                	lw	s0,8(sp)
   10b76:	4492                	lw	s1,4(sp)
   10b78:	0141                	addi	sp,sp,16
   10b7a:	8082                	ret
   10b7c:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10b80:	dbed                	beqz	a5,10b72 <_write_r+0x20>
   10b82:	40b2                	lw	ra,12(sp)
   10b84:	c01c                	sw	a5,0(s0)
   10b86:	4422                	lw	s0,8(sp)
   10b88:	4492                	lw	s1,4(sp)
   10b8a:	0141                	addi	sp,sp,16
   10b8c:	8082                	ret

00010b8e <__libc_init_array>:
   10b8e:	1141                	addi	sp,sp,-16
   10b90:	c422                	sw	s0,8(sp)
   10b92:	67ed                	lui	a5,0x1b
   10b94:	646d                	lui	s0,0x1b
   10b96:	c04a                	sw	s2,0(sp)
   10b98:	00478793          	addi	a5,a5,4 # 1b004 <__init_array_start>
   10b9c:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   10ba0:	c606                	sw	ra,12(sp)
   10ba2:	c226                	sw	s1,4(sp)
   10ba4:	40e78933          	sub	s2,a5,a4
   10ba8:	00e78d63          	beq	a5,a4,10bc2 <__libc_init_array+0x34>
   10bac:	40295913          	srai	s2,s2,0x2
   10bb0:	00440413          	addi	s0,s0,4
   10bb4:	4481                	li	s1,0
   10bb6:	401c                	lw	a5,0(s0)
   10bb8:	0485                	addi	s1,s1,1
   10bba:	0411                	addi	s0,s0,4
   10bbc:	9782                	jalr	a5
   10bbe:	ff24ece3          	bltu	s1,s2,10bb6 <__libc_init_array+0x28>
   10bc2:	646d                	lui	s0,0x1b
   10bc4:	67ed                	lui	a5,0x1b
   10bc6:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   10bca:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   10bce:	40e78933          	sub	s2,a5,a4
   10bd2:	40295913          	srai	s2,s2,0x2
   10bd6:	00e78b63          	beq	a5,a4,10bec <__libc_init_array+0x5e>
   10bda:	00440413          	addi	s0,s0,4
   10bde:	4481                	li	s1,0
   10be0:	401c                	lw	a5,0(s0)
   10be2:	0485                	addi	s1,s1,1
   10be4:	0411                	addi	s0,s0,4
   10be6:	9782                	jalr	a5
   10be8:	ff24ece3          	bltu	s1,s2,10be0 <__libc_init_array+0x52>
   10bec:	40b2                	lw	ra,12(sp)
   10bee:	4422                	lw	s0,8(sp)
   10bf0:	4492                	lw	s1,4(sp)
   10bf2:	4902                	lw	s2,0(sp)
   10bf4:	0141                	addi	sp,sp,16
   10bf6:	8082                	ret

00010bf8 <memset>:
   10bf8:	433d                	li	t1,15
   10bfa:	872a                	mv	a4,a0
   10bfc:	02c37363          	bgeu	t1,a2,10c22 <memset+0x2a>
   10c00:	00f77793          	andi	a5,a4,15
   10c04:	efbd                	bnez	a5,10c82 <memset+0x8a>
   10c06:	e5ad                	bnez	a1,10c70 <memset+0x78>
   10c08:	ff067693          	andi	a3,a2,-16
   10c0c:	8a3d                	andi	a2,a2,15
   10c0e:	96ba                	add	a3,a3,a4
   10c10:	c30c                	sw	a1,0(a4)
   10c12:	c34c                	sw	a1,4(a4)
   10c14:	c70c                	sw	a1,8(a4)
   10c16:	c74c                	sw	a1,12(a4)
   10c18:	0741                	addi	a4,a4,16
   10c1a:	fed76be3          	bltu	a4,a3,10c10 <memset+0x18>
   10c1e:	e211                	bnez	a2,10c22 <memset+0x2a>
   10c20:	8082                	ret
   10c22:	40c306b3          	sub	a3,t1,a2
   10c26:	068a                	slli	a3,a3,0x2
   10c28:	00000297          	auipc	t0,0x0
   10c2c:	9696                	add	a3,a3,t0
   10c2e:	00a68067          	jr	10(a3)
   10c32:	00b70723          	sb	a1,14(a4)
   10c36:	00b706a3          	sb	a1,13(a4)
   10c3a:	00b70623          	sb	a1,12(a4)
   10c3e:	00b705a3          	sb	a1,11(a4)
   10c42:	00b70523          	sb	a1,10(a4)
   10c46:	00b704a3          	sb	a1,9(a4)
   10c4a:	00b70423          	sb	a1,8(a4)
   10c4e:	00b703a3          	sb	a1,7(a4)
   10c52:	00b70323          	sb	a1,6(a4)
   10c56:	00b702a3          	sb	a1,5(a4)
   10c5a:	00b70223          	sb	a1,4(a4)
   10c5e:	00b701a3          	sb	a1,3(a4)
   10c62:	00b70123          	sb	a1,2(a4)
   10c66:	00b700a3          	sb	a1,1(a4)
   10c6a:	00b70023          	sb	a1,0(a4)
   10c6e:	8082                	ret
   10c70:	0ff5f593          	zext.b	a1,a1
   10c74:	00859693          	slli	a3,a1,0x8
   10c78:	8dd5                	or	a1,a1,a3
   10c7a:	01059693          	slli	a3,a1,0x10
   10c7e:	8dd5                	or	a1,a1,a3
   10c80:	b761                	j	10c08 <memset+0x10>
   10c82:	00279693          	slli	a3,a5,0x2
   10c86:	00000297          	auipc	t0,0x0
   10c8a:	9696                	add	a3,a3,t0
   10c8c:	8286                	mv	t0,ra
   10c8e:	fa8680e7          	jalr	-88(a3)
   10c92:	8096                	mv	ra,t0
   10c94:	17c1                	addi	a5,a5,-16
   10c96:	8f1d                	sub	a4,a4,a5
   10c98:	963e                	add	a2,a2,a5
   10c9a:	f8c374e3          	bgeu	t1,a2,10c22 <memset+0x2a>
   10c9e:	b7a5                	j	10c06 <memset+0xe>

00010ca0 <memcpy>:
   10ca0:	00a5c7b3          	xor	a5,a1,a0
   10ca4:	8b8d                	andi	a5,a5,3
   10ca6:	00c508b3          	add	a7,a0,a2
   10caa:	e7b1                	bnez	a5,10cf6 <memcpy+0x56>
   10cac:	478d                	li	a5,3
   10cae:	04c7f463          	bgeu	a5,a2,10cf6 <memcpy+0x56>
   10cb2:	00357793          	andi	a5,a0,3
   10cb6:	872a                	mv	a4,a0
   10cb8:	ebb9                	bnez	a5,10d0e <memcpy+0x6e>
   10cba:	ffc8f613          	andi	a2,a7,-4
   10cbe:	40e606b3          	sub	a3,a2,a4
   10cc2:	02000793          	li	a5,32
   10cc6:	06d7c863          	blt	a5,a3,10d36 <memcpy+0x96>
   10cca:	86ae                	mv	a3,a1
   10ccc:	87ba                	mv	a5,a4
   10cce:	02c77163          	bgeu	a4,a2,10cf0 <memcpy+0x50>
   10cd2:	0006a803          	lw	a6,0(a3)
   10cd6:	0791                	addi	a5,a5,4
   10cd8:	0691                	addi	a3,a3,4
   10cda:	ff07ae23          	sw	a6,-4(a5)
   10cde:	fec7eae3          	bltu	a5,a2,10cd2 <memcpy+0x32>
   10ce2:	fff60793          	addi	a5,a2,-1
   10ce6:	8f99                	sub	a5,a5,a4
   10ce8:	9bf1                	andi	a5,a5,-4
   10cea:	0791                	addi	a5,a5,4
   10cec:	973e                	add	a4,a4,a5
   10cee:	95be                	add	a1,a1,a5
   10cf0:	01176663          	bltu	a4,a7,10cfc <memcpy+0x5c>
   10cf4:	8082                	ret
   10cf6:	872a                	mv	a4,a0
   10cf8:	03157e63          	bgeu	a0,a7,10d34 <memcpy+0x94>
   10cfc:	0005c783          	lbu	a5,0(a1)
   10d00:	0705                	addi	a4,a4,1
   10d02:	0585                	addi	a1,a1,1
   10d04:	fef70fa3          	sb	a5,-1(a4)
   10d08:	fee89ae3          	bne	a7,a4,10cfc <memcpy+0x5c>
   10d0c:	8082                	ret
   10d0e:	0005c683          	lbu	a3,0(a1)
   10d12:	0705                	addi	a4,a4,1
   10d14:	00377793          	andi	a5,a4,3
   10d18:	fed70fa3          	sb	a3,-1(a4)
   10d1c:	0585                	addi	a1,a1,1
   10d1e:	dfd1                	beqz	a5,10cba <memcpy+0x1a>
   10d20:	0005c683          	lbu	a3,0(a1)
   10d24:	0705                	addi	a4,a4,1
   10d26:	00377793          	andi	a5,a4,3
   10d2a:	fed70fa3          	sb	a3,-1(a4)
   10d2e:	0585                	addi	a1,a1,1
   10d30:	fff9                	bnez	a5,10d0e <memcpy+0x6e>
   10d32:	b761                	j	10cba <memcpy+0x1a>
   10d34:	8082                	ret
   10d36:	1141                	addi	sp,sp,-16
   10d38:	c622                	sw	s0,12(sp)
   10d3a:	02000413          	li	s0,32
   10d3e:	0005a383          	lw	t2,0(a1)
   10d42:	0045a283          	lw	t0,4(a1)
   10d46:	0085af83          	lw	t6,8(a1)
   10d4a:	00c5af03          	lw	t5,12(a1)
   10d4e:	0105ae83          	lw	t4,16(a1)
   10d52:	0145ae03          	lw	t3,20(a1)
   10d56:	0185a303          	lw	t1,24(a1)
   10d5a:	01c5a803          	lw	a6,28(a1)
   10d5e:	5194                	lw	a3,32(a1)
   10d60:	02470713          	addi	a4,a4,36
   10d64:	40e607b3          	sub	a5,a2,a4
   10d68:	fc772e23          	sw	t2,-36(a4)
   10d6c:	fe572023          	sw	t0,-32(a4)
   10d70:	fff72223          	sw	t6,-28(a4)
   10d74:	ffe72423          	sw	t5,-24(a4)
   10d78:	ffd72623          	sw	t4,-20(a4)
   10d7c:	ffc72823          	sw	t3,-16(a4)
   10d80:	fe672a23          	sw	t1,-12(a4)
   10d84:	ff072c23          	sw	a6,-8(a4)
   10d88:	fed72e23          	sw	a3,-4(a4)
   10d8c:	02458593          	addi	a1,a1,36
   10d90:	faf447e3          	blt	s0,a5,10d3e <memcpy+0x9e>
   10d94:	86ae                	mv	a3,a1
   10d96:	87ba                	mv	a5,a4
   10d98:	02c77163          	bgeu	a4,a2,10dba <memcpy+0x11a>
   10d9c:	0006a803          	lw	a6,0(a3)
   10da0:	0791                	addi	a5,a5,4
   10da2:	0691                	addi	a3,a3,4
   10da4:	ff07ae23          	sw	a6,-4(a5)
   10da8:	fec7eae3          	bltu	a5,a2,10d9c <memcpy+0xfc>
   10dac:	fff60793          	addi	a5,a2,-1
   10db0:	8f99                	sub	a5,a5,a4
   10db2:	9bf1                	andi	a5,a5,-4
   10db4:	0791                	addi	a5,a5,4
   10db6:	973e                	add	a4,a4,a5
   10db8:	95be                	add	a1,a1,a5
   10dba:	01176563          	bltu	a4,a7,10dc4 <memcpy+0x124>
   10dbe:	4432                	lw	s0,12(sp)
   10dc0:	0141                	addi	sp,sp,16
   10dc2:	8082                	ret
   10dc4:	0005c783          	lbu	a5,0(a1)
   10dc8:	0705                	addi	a4,a4,1
   10dca:	0585                	addi	a1,a1,1
   10dcc:	fef70fa3          	sb	a5,-1(a4)
   10dd0:	fee887e3          	beq	a7,a4,10dbe <memcpy+0x11e>
   10dd4:	0005c783          	lbu	a5,0(a1)
   10dd8:	0705                	addi	a4,a4,1
   10dda:	0585                	addi	a1,a1,1
   10ddc:	fef70fa3          	sb	a5,-1(a4)
   10de0:	fee892e3          	bne	a7,a4,10dc4 <memcpy+0x124>
   10de4:	bfe9                	j	10dbe <memcpy+0x11e>

00010de6 <strlen>:
   10de6:	00357793          	andi	a5,a0,3
   10dea:	872a                	mv	a4,a0
   10dec:	ef9d                	bnez	a5,10e2a <strlen+0x44>
   10dee:	7f7f86b7          	lui	a3,0x7f7f8
   10df2:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   10df6:	55fd                	li	a1,-1
   10df8:	4310                	lw	a2,0(a4)
   10dfa:	0711                	addi	a4,a4,4
   10dfc:	00d677b3          	and	a5,a2,a3
   10e00:	97b6                	add	a5,a5,a3
   10e02:	8fd1                	or	a5,a5,a2
   10e04:	8fd5                	or	a5,a5,a3
   10e06:	feb789e3          	beq	a5,a1,10df8 <strlen+0x12>
   10e0a:	ffc74683          	lbu	a3,-4(a4)
   10e0e:	40a707b3          	sub	a5,a4,a0
   10e12:	ca8d                	beqz	a3,10e44 <strlen+0x5e>
   10e14:	ffd74683          	lbu	a3,-3(a4)
   10e18:	c29d                	beqz	a3,10e3e <strlen+0x58>
   10e1a:	ffe74503          	lbu	a0,-2(a4)
   10e1e:	00a03533          	snez	a0,a0
   10e22:	953e                	add	a0,a0,a5
   10e24:	1579                	addi	a0,a0,-2
   10e26:	8082                	ret
   10e28:	d2f9                	beqz	a3,10dee <strlen+0x8>
   10e2a:	00074783          	lbu	a5,0(a4)
   10e2e:	0705                	addi	a4,a4,1
   10e30:	00377693          	andi	a3,a4,3
   10e34:	fbf5                	bnez	a5,10e28 <strlen+0x42>
   10e36:	8f09                	sub	a4,a4,a0
   10e38:	fff70513          	addi	a0,a4,-1
   10e3c:	8082                	ret
   10e3e:	ffd78513          	addi	a0,a5,-3
   10e42:	8082                	ret
   10e44:	ffc78513          	addi	a0,a5,-4
   10e48:	8082                	ret

00010e4a <__call_exitprocs>:
   10e4a:	7179                	addi	sp,sp,-48
   10e4c:	cc52                	sw	s4,24(sp)
   10e4e:	d04a                	sw	s2,32(sp)
   10e50:	f281a903          	lw	s2,-216(gp) # 1b738 <__atexit>
   10e54:	d606                	sw	ra,44(sp)
   10e56:	06090c63          	beqz	s2,10ece <__call_exitprocs+0x84>
   10e5a:	ce4e                	sw	s3,28(sp)
   10e5c:	ca56                	sw	s5,20(sp)
   10e5e:	c85a                	sw	s6,16(sp)
   10e60:	c65e                	sw	s7,12(sp)
   10e62:	d422                	sw	s0,40(sp)
   10e64:	d226                	sw	s1,36(sp)
   10e66:	c462                	sw	s8,8(sp)
   10e68:	8b2a                	mv	s6,a0
   10e6a:	8bae                	mv	s7,a1
   10e6c:	59fd                	li	s3,-1
   10e6e:	4a85                	li	s5,1
   10e70:	00492483          	lw	s1,4(s2)
   10e74:	fff48413          	addi	s0,s1,-1
   10e78:	04044463          	bltz	s0,10ec0 <__call_exitprocs+0x76>
   10e7c:	048a                	slli	s1,s1,0x2
   10e7e:	94ca                	add	s1,s1,s2
   10e80:	040b9c63          	bnez	s7,10ed8 <__call_exitprocs+0x8e>
   10e84:	00492783          	lw	a5,4(s2)
   10e88:	40d4                	lw	a3,4(s1)
   10e8a:	17fd                	addi	a5,a5,-1
   10e8c:	08878063          	beq	a5,s0,10f0c <__call_exitprocs+0xc2>
   10e90:	0004a223          	sw	zero,4(s1)
   10e94:	c295                	beqz	a3,10eb8 <__call_exitprocs+0x6e>
   10e96:	18892783          	lw	a5,392(s2)
   10e9a:	008a9733          	sll	a4,s5,s0
   10e9e:	00492c03          	lw	s8,4(s2)
   10ea2:	8ff9                	and	a5,a5,a4
   10ea4:	e3b9                	bnez	a5,10eea <__call_exitprocs+0xa0>
   10ea6:	9682                	jalr	a3
   10ea8:	00492703          	lw	a4,4(s2)
   10eac:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   10eb0:	05871b63          	bne	a4,s8,10f06 <__call_exitprocs+0xbc>
   10eb4:	05279963          	bne	a5,s2,10f06 <__call_exitprocs+0xbc>
   10eb8:	147d                	addi	s0,s0,-1
   10eba:	14f1                	addi	s1,s1,-4
   10ebc:	fd3412e3          	bne	s0,s3,10e80 <__call_exitprocs+0x36>
   10ec0:	5422                	lw	s0,40(sp)
   10ec2:	5492                	lw	s1,36(sp)
   10ec4:	49f2                	lw	s3,28(sp)
   10ec6:	4ad2                	lw	s5,20(sp)
   10ec8:	4b42                	lw	s6,16(sp)
   10eca:	4bb2                	lw	s7,12(sp)
   10ecc:	4c22                	lw	s8,8(sp)
   10ece:	50b2                	lw	ra,44(sp)
   10ed0:	5902                	lw	s2,32(sp)
   10ed2:	4a62                	lw	s4,24(sp)
   10ed4:	6145                	addi	sp,sp,48
   10ed6:	8082                	ret
   10ed8:	1044a783          	lw	a5,260(s1)
   10edc:	fb7784e3          	beq	a5,s7,10e84 <__call_exitprocs+0x3a>
   10ee0:	147d                	addi	s0,s0,-1
   10ee2:	14f1                	addi	s1,s1,-4
   10ee4:	ff341ae3          	bne	s0,s3,10ed8 <__call_exitprocs+0x8e>
   10ee8:	bfe1                	j	10ec0 <__call_exitprocs+0x76>
   10eea:	18c92783          	lw	a5,396(s2)
   10eee:	0844a583          	lw	a1,132(s1)
   10ef2:	8f7d                	and	a4,a4,a5
   10ef4:	ef19                	bnez	a4,10f12 <__call_exitprocs+0xc8>
   10ef6:	855a                	mv	a0,s6
   10ef8:	9682                	jalr	a3
   10efa:	00492703          	lw	a4,4(s2)
   10efe:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   10f02:	fb8709e3          	beq	a4,s8,10eb4 <__call_exitprocs+0x6a>
   10f06:	dfcd                	beqz	a5,10ec0 <__call_exitprocs+0x76>
   10f08:	893e                	mv	s2,a5
   10f0a:	b79d                	j	10e70 <__call_exitprocs+0x26>
   10f0c:	00892223          	sw	s0,4(s2)
   10f10:	b751                	j	10e94 <__call_exitprocs+0x4a>
   10f12:	852e                	mv	a0,a1
   10f14:	9682                	jalr	a3
   10f16:	bf49                	j	10ea8 <__call_exitprocs+0x5e>

00010f18 <atexit>:
   10f18:	85aa                	mv	a1,a0
   10f1a:	4681                	li	a3,0
   10f1c:	4601                	li	a2,0
   10f1e:	4501                	li	a0,0
   10f20:	7390206f          	j	13e58 <__register_exitproc>

00010f24 <_malloc_trim_r>:
   10f24:	1101                	addi	sp,sp,-32
   10f26:	c64e                	sw	s3,12(sp)
   10f28:	69ed                	lui	s3,0x1b
   10f2a:	cc22                	sw	s0,24(sp)
   10f2c:	ca26                	sw	s1,20(sp)
   10f2e:	c84a                	sw	s2,16(sp)
   10f30:	c452                	sw	s4,8(sp)
   10f32:	ce06                	sw	ra,28(sp)
   10f34:	8a2e                	mv	s4,a1
   10f36:	892a                	mv	s2,a0
   10f38:	14098993          	addi	s3,s3,320 # 1b140 <__malloc_av_>
   10f3c:	07b000ef          	jal	117b6 <__malloc_lock>
   10f40:	0089a703          	lw	a4,8(s3)
   10f44:	6785                	lui	a5,0x1
   10f46:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   10f48:	4344                	lw	s1,4(a4)
   10f4a:	6705                	lui	a4,0x1
   10f4c:	98f1                	andi	s1,s1,-4
   10f4e:	00f48433          	add	s0,s1,a5
   10f52:	41440433          	sub	s0,s0,s4
   10f56:	8031                	srli	s0,s0,0xc
   10f58:	147d                	addi	s0,s0,-1
   10f5a:	0432                	slli	s0,s0,0xc
   10f5c:	00e44b63          	blt	s0,a4,10f72 <_malloc_trim_r+0x4e>
   10f60:	4581                	li	a1,0
   10f62:	854a                	mv	a0,s2
   10f64:	4cf020ef          	jal	13c32 <_sbrk_r>
   10f68:	0089a783          	lw	a5,8(s3)
   10f6c:	97a6                	add	a5,a5,s1
   10f6e:	00f50e63          	beq	a0,a5,10f8a <_malloc_trim_r+0x66>
   10f72:	854a                	mv	a0,s2
   10f74:	045000ef          	jal	117b8 <__malloc_unlock>
   10f78:	40f2                	lw	ra,28(sp)
   10f7a:	4462                	lw	s0,24(sp)
   10f7c:	44d2                	lw	s1,20(sp)
   10f7e:	4942                	lw	s2,16(sp)
   10f80:	49b2                	lw	s3,12(sp)
   10f82:	4a22                	lw	s4,8(sp)
   10f84:	4501                	li	a0,0
   10f86:	6105                	addi	sp,sp,32
   10f88:	8082                	ret
   10f8a:	408005b3          	neg	a1,s0
   10f8e:	854a                	mv	a0,s2
   10f90:	4a3020ef          	jal	13c32 <_sbrk_r>
   10f94:	57fd                	li	a5,-1
   10f96:	02f50963          	beq	a0,a5,10fc8 <_malloc_trim_r+0xa4>
   10f9a:	09418793          	addi	a5,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   10f9e:	4398                	lw	a4,0(a5)
   10fa0:	0089a683          	lw	a3,8(s3)
   10fa4:	8c81                	sub	s1,s1,s0
   10fa6:	0014e493          	ori	s1,s1,1
   10faa:	8f01                	sub	a4,a4,s0
   10fac:	854a                	mv	a0,s2
   10fae:	c2c4                	sw	s1,4(a3)
   10fb0:	c398                	sw	a4,0(a5)
   10fb2:	007000ef          	jal	117b8 <__malloc_unlock>
   10fb6:	40f2                	lw	ra,28(sp)
   10fb8:	4462                	lw	s0,24(sp)
   10fba:	44d2                	lw	s1,20(sp)
   10fbc:	4942                	lw	s2,16(sp)
   10fbe:	49b2                	lw	s3,12(sp)
   10fc0:	4a22                	lw	s4,8(sp)
   10fc2:	4505                	li	a0,1
   10fc4:	6105                	addi	sp,sp,32
   10fc6:	8082                	ret
   10fc8:	4581                	li	a1,0
   10fca:	854a                	mv	a0,s2
   10fcc:	467020ef          	jal	13c32 <_sbrk_r>
   10fd0:	0089a703          	lw	a4,8(s3)
   10fd4:	46bd                	li	a3,15
   10fd6:	40e507b3          	sub	a5,a0,a4
   10fda:	f8f6dce3          	bge	a3,a5,10f72 <_malloc_trim_r+0x4e>
   10fde:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   10fe2:	0017e793          	ori	a5,a5,1
   10fe6:	c35c                	sw	a5,4(a4)
   10fe8:	8d15                	sub	a0,a0,a3
   10fea:	08a1aa23          	sw	a0,148(gp) # 1b8a4 <__malloc_current_mallinfo>
   10fee:	b751                	j	10f72 <_malloc_trim_r+0x4e>

00010ff0 <_free_r>:
   10ff0:	10058a63          	beqz	a1,11104 <_free_r+0x114>
   10ff4:	1141                	addi	sp,sp,-16
   10ff6:	c422                	sw	s0,8(sp)
   10ff8:	c226                	sw	s1,4(sp)
   10ffa:	842e                	mv	s0,a1
   10ffc:	84aa                	mv	s1,a0
   10ffe:	c606                	sw	ra,12(sp)
   11000:	7b6000ef          	jal	117b6 <__malloc_lock>
   11004:	ffc42503          	lw	a0,-4(s0)
   11008:	ff840713          	addi	a4,s0,-8
   1100c:	65ed                	lui	a1,0x1b
   1100e:	ffe57793          	andi	a5,a0,-2
   11012:	00f70633          	add	a2,a4,a5
   11016:	14058593          	addi	a1,a1,320 # 1b140 <__malloc_av_>
   1101a:	4254                	lw	a3,4(a2)
   1101c:	0085a803          	lw	a6,8(a1)
   11020:	9af1                	andi	a3,a3,-4
   11022:	12c80363          	beq	a6,a2,11148 <_free_r+0x158>
   11026:	c254                	sw	a3,4(a2)
   11028:	8905                	andi	a0,a0,1
   1102a:	00d60833          	add	a6,a2,a3
   1102e:	e935                	bnez	a0,110a2 <_free_r+0xb2>
   11030:	ff842303          	lw	t1,-8(s0)
   11034:	00482803          	lw	a6,4(a6)
   11038:	656d                	lui	a0,0x1b
   1103a:	40670733          	sub	a4,a4,t1
   1103e:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   11042:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   11046:	979a                	add	a5,a5,t1
   11048:	00187813          	andi	a6,a6,1
   1104c:	0ea88163          	beq	a7,a0,1112e <_free_r+0x13e>
   11050:	00c72303          	lw	t1,12(a4)
   11054:	0068a623          	sw	t1,12(a7)
   11058:	01132423          	sw	a7,8(t1)
   1105c:	10080e63          	beqz	a6,11178 <_free_r+0x188>
   11060:	0017e693          	ori	a3,a5,1
   11064:	c354                	sw	a3,4(a4)
   11066:	c21c                	sw	a5,0(a2)
   11068:	1ff00693          	li	a3,511
   1106c:	04f6e863          	bltu	a3,a5,110bc <_free_r+0xcc>
   11070:	ff87f693          	andi	a3,a5,-8
   11074:	06a1                	addi	a3,a3,8
   11076:	41c8                	lw	a0,4(a1)
   11078:	96ae                	add	a3,a3,a1
   1107a:	4290                	lw	a2,0(a3)
   1107c:	0057d813          	srli	a6,a5,0x5
   11080:	4785                	li	a5,1
   11082:	010797b3          	sll	a5,a5,a6
   11086:	8fc9                	or	a5,a5,a0
   11088:	ff868513          	addi	a0,a3,-8
   1108c:	c748                	sw	a0,12(a4)
   1108e:	c710                	sw	a2,8(a4)
   11090:	c1dc                	sw	a5,4(a1)
   11092:	c298                	sw	a4,0(a3)
   11094:	c658                	sw	a4,12(a2)
   11096:	4422                	lw	s0,8(sp)
   11098:	40b2                	lw	ra,12(sp)
   1109a:	8526                	mv	a0,s1
   1109c:	4492                	lw	s1,4(sp)
   1109e:	0141                	addi	sp,sp,16
   110a0:	af21                	j	117b8 <__malloc_unlock>
   110a2:	00482503          	lw	a0,4(a6)
   110a6:	8905                	andi	a0,a0,1
   110a8:	cd39                	beqz	a0,11106 <_free_r+0x116>
   110aa:	0017e693          	ori	a3,a5,1
   110ae:	fed42e23          	sw	a3,-4(s0)
   110b2:	c21c                	sw	a5,0(a2)
   110b4:	1ff00693          	li	a3,511
   110b8:	faf6fce3          	bgeu	a3,a5,11070 <_free_r+0x80>
   110bc:	0097d693          	srli	a3,a5,0x9
   110c0:	4611                	li	a2,4
   110c2:	0ad66d63          	bltu	a2,a3,1117c <_free_r+0x18c>
   110c6:	0067d693          	srli	a3,a5,0x6
   110ca:	03968513          	addi	a0,a3,57
   110ce:	03868613          	addi	a2,a3,56
   110d2:	050e                	slli	a0,a0,0x3
   110d4:	952e                	add	a0,a0,a1
   110d6:	4114                	lw	a3,0(a0)
   110d8:	1561                	addi	a0,a0,-8
   110da:	00d51663          	bne	a0,a3,110e6 <_free_r+0xf6>
   110de:	a8f1                	j	111ba <_free_r+0x1ca>
   110e0:	4694                	lw	a3,8(a3)
   110e2:	00d50663          	beq	a0,a3,110ee <_free_r+0xfe>
   110e6:	42d0                	lw	a2,4(a3)
   110e8:	9a71                	andi	a2,a2,-4
   110ea:	fec7ebe3          	bltu	a5,a2,110e0 <_free_r+0xf0>
   110ee:	46c8                	lw	a0,12(a3)
   110f0:	c748                	sw	a0,12(a4)
   110f2:	c714                	sw	a3,8(a4)
   110f4:	4422                	lw	s0,8(sp)
   110f6:	c518                	sw	a4,8(a0)
   110f8:	40b2                	lw	ra,12(sp)
   110fa:	8526                	mv	a0,s1
   110fc:	4492                	lw	s1,4(sp)
   110fe:	c6d8                	sw	a4,12(a3)
   11100:	0141                	addi	sp,sp,16
   11102:	ad5d                	j	117b8 <__malloc_unlock>
   11104:	8082                	ret
   11106:	656d                	lui	a0,0x1b
   11108:	97b6                	add	a5,a5,a3
   1110a:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   1110e:	4614                	lw	a3,8(a2)
   11110:	08a68b63          	beq	a3,a0,111a6 <_free_r+0x1b6>
   11114:	00c62803          	lw	a6,12(a2)
   11118:	0017e513          	ori	a0,a5,1
   1111c:	00f70633          	add	a2,a4,a5
   11120:	0106a623          	sw	a6,12(a3)
   11124:	00d82423          	sw	a3,8(a6)
   11128:	c348                	sw	a0,4(a4)
   1112a:	c21c                	sw	a5,0(a2)
   1112c:	bf35                	j	11068 <_free_r+0x78>
   1112e:	0c081d63          	bnez	a6,11208 <_free_r+0x218>
   11132:	460c                	lw	a1,8(a2)
   11134:	4650                	lw	a2,12(a2)
   11136:	96be                	add	a3,a3,a5
   11138:	0016e793          	ori	a5,a3,1
   1113c:	c5d0                	sw	a2,12(a1)
   1113e:	c60c                	sw	a1,8(a2)
   11140:	c35c                	sw	a5,4(a4)
   11142:	9736                	add	a4,a4,a3
   11144:	c314                	sw	a3,0(a4)
   11146:	bf81                	j	11096 <_free_r+0xa6>
   11148:	8905                	andi	a0,a0,1
   1114a:	96be                	add	a3,a3,a5
   1114c:	e909                	bnez	a0,1115e <_free_r+0x16e>
   1114e:	ff842503          	lw	a0,-8(s0)
   11152:	8f09                	sub	a4,a4,a0
   11154:	475c                	lw	a5,12(a4)
   11156:	4710                	lw	a2,8(a4)
   11158:	96aa                	add	a3,a3,a0
   1115a:	c65c                	sw	a5,12(a2)
   1115c:	c790                	sw	a2,8(a5)
   1115e:	0016e613          	ori	a2,a3,1
   11162:	f1c1a783          	lw	a5,-228(gp) # 1b72c <__malloc_trim_threshold>
   11166:	c350                	sw	a2,4(a4)
   11168:	c598                	sw	a4,8(a1)
   1116a:	f2f6e6e3          	bltu	a3,a5,11096 <_free_r+0xa6>
   1116e:	f341a583          	lw	a1,-204(gp) # 1b744 <__malloc_top_pad>
   11172:	8526                	mv	a0,s1
   11174:	3b45                	jal	10f24 <_malloc_trim_r>
   11176:	b705                	j	11096 <_free_r+0xa6>
   11178:	97b6                	add	a5,a5,a3
   1117a:	bf51                	j	1110e <_free_r+0x11e>
   1117c:	4651                	li	a2,20
   1117e:	00d67e63          	bgeu	a2,a3,1119a <_free_r+0x1aa>
   11182:	05400613          	li	a2,84
   11186:	04d66463          	bltu	a2,a3,111ce <_free_r+0x1de>
   1118a:	00c7d693          	srli	a3,a5,0xc
   1118e:	06f68513          	addi	a0,a3,111
   11192:	06e68613          	addi	a2,a3,110
   11196:	050e                	slli	a0,a0,0x3
   11198:	bf35                	j	110d4 <_free_r+0xe4>
   1119a:	05c68513          	addi	a0,a3,92
   1119e:	05b68613          	addi	a2,a3,91
   111a2:	050e                	slli	a0,a0,0x3
   111a4:	bf05                	j	110d4 <_free_r+0xe4>
   111a6:	c9d8                	sw	a4,20(a1)
   111a8:	c998                	sw	a4,16(a1)
   111aa:	0017e693          	ori	a3,a5,1
   111ae:	c748                	sw	a0,12(a4)
   111b0:	c708                	sw	a0,8(a4)
   111b2:	c354                	sw	a3,4(a4)
   111b4:	973e                	add	a4,a4,a5
   111b6:	c31c                	sw	a5,0(a4)
   111b8:	bdf9                	j	11096 <_free_r+0xa6>
   111ba:	0045a803          	lw	a6,4(a1)
   111be:	8609                	srai	a2,a2,0x2
   111c0:	4785                	li	a5,1
   111c2:	00c797b3          	sll	a5,a5,a2
   111c6:	0107e7b3          	or	a5,a5,a6
   111ca:	c1dc                	sw	a5,4(a1)
   111cc:	b715                	j	110f0 <_free_r+0x100>
   111ce:	15400613          	li	a2,340
   111d2:	00d66a63          	bltu	a2,a3,111e6 <_free_r+0x1f6>
   111d6:	00f7d693          	srli	a3,a5,0xf
   111da:	07868513          	addi	a0,a3,120
   111de:	07768613          	addi	a2,a3,119
   111e2:	050e                	slli	a0,a0,0x3
   111e4:	bdc5                	j	110d4 <_free_r+0xe4>
   111e6:	55400613          	li	a2,1364
   111ea:	00d66a63          	bltu	a2,a3,111fe <_free_r+0x20e>
   111ee:	0127d693          	srli	a3,a5,0x12
   111f2:	07d68513          	addi	a0,a3,125
   111f6:	07c68613          	addi	a2,a3,124
   111fa:	050e                	slli	a0,a0,0x3
   111fc:	bde1                	j	110d4 <_free_r+0xe4>
   111fe:	3f800513          	li	a0,1016
   11202:	07e00613          	li	a2,126
   11206:	b5f9                	j	110d4 <_free_r+0xe4>
   11208:	0017e693          	ori	a3,a5,1
   1120c:	c354                	sw	a3,4(a4)
   1120e:	c21c                	sw	a5,0(a2)
   11210:	b559                	j	11096 <_free_r+0xa6>

00011212 <_malloc_r>:
   11212:	7179                	addi	sp,sp,-48
   11214:	ce4e                	sw	s3,28(sp)
   11216:	d606                	sw	ra,44(sp)
   11218:	d422                	sw	s0,40(sp)
   1121a:	d226                	sw	s1,36(sp)
   1121c:	d04a                	sw	s2,32(sp)
   1121e:	00b58793          	addi	a5,a1,11
   11222:	4759                	li	a4,22
   11224:	89aa                	mv	s3,a0
   11226:	04f76863          	bltu	a4,a5,11276 <_malloc_r+0x64>
   1122a:	47c1                	li	a5,16
   1122c:	16b7e863          	bltu	a5,a1,1139c <_malloc_r+0x18a>
   11230:	2359                	jal	117b6 <__malloc_lock>
   11232:	47e1                	li	a5,24
   11234:	4589                	li	a1,2
   11236:	44c1                	li	s1,16
   11238:	696d                	lui	s2,0x1b
   1123a:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   1123e:	97ca                	add	a5,a5,s2
   11240:	43c0                	lw	s0,4(a5)
   11242:	ff878713          	addi	a4,a5,-8
   11246:	24e40d63          	beq	s0,a4,114a0 <_malloc_r+0x28e>
   1124a:	405c                	lw	a5,4(s0)
   1124c:	4454                	lw	a3,12(s0)
   1124e:	4410                	lw	a2,8(s0)
   11250:	9bf1                	andi	a5,a5,-4
   11252:	97a2                	add	a5,a5,s0
   11254:	43d8                	lw	a4,4(a5)
   11256:	c654                	sw	a3,12(a2)
   11258:	c690                	sw	a2,8(a3)
   1125a:	00176713          	ori	a4,a4,1
   1125e:	854e                	mv	a0,s3
   11260:	c3d8                	sw	a4,4(a5)
   11262:	2b99                	jal	117b8 <__malloc_unlock>
   11264:	00840513          	addi	a0,s0,8
   11268:	50b2                	lw	ra,44(sp)
   1126a:	5422                	lw	s0,40(sp)
   1126c:	5492                	lw	s1,36(sp)
   1126e:	5902                	lw	s2,32(sp)
   11270:	49f2                	lw	s3,28(sp)
   11272:	6145                	addi	sp,sp,48
   11274:	8082                	ret
   11276:	ff87f493          	andi	s1,a5,-8
   1127a:	1207c163          	bltz	a5,1139c <_malloc_r+0x18a>
   1127e:	10b4ef63          	bltu	s1,a1,1139c <_malloc_r+0x18a>
   11282:	2b15                	jal	117b6 <__malloc_lock>
   11284:	1f700793          	li	a5,503
   11288:	2c97fb63          	bgeu	a5,s1,1155e <_malloc_r+0x34c>
   1128c:	0094d793          	srli	a5,s1,0x9
   11290:	10078b63          	beqz	a5,113a6 <_malloc_r+0x194>
   11294:	4711                	li	a4,4
   11296:	24f76a63          	bltu	a4,a5,114ea <_malloc_r+0x2d8>
   1129a:	0064d793          	srli	a5,s1,0x6
   1129e:	03978593          	addi	a1,a5,57
   112a2:	03878813          	addi	a6,a5,56
   112a6:	00359613          	slli	a2,a1,0x3
   112aa:	696d                	lui	s2,0x1b
   112ac:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   112b0:	964a                	add	a2,a2,s2
   112b2:	4240                	lw	s0,4(a2)
   112b4:	1661                	addi	a2,a2,-8
   112b6:	02860163          	beq	a2,s0,112d8 <_malloc_r+0xc6>
   112ba:	453d                	li	a0,15
   112bc:	a039                	j	112ca <_malloc_r+0xb8>
   112be:	4454                	lw	a3,12(s0)
   112c0:	1c075e63          	bgez	a4,1149c <_malloc_r+0x28a>
   112c4:	00d60a63          	beq	a2,a3,112d8 <_malloc_r+0xc6>
   112c8:	8436                	mv	s0,a3
   112ca:	405c                	lw	a5,4(s0)
   112cc:	9bf1                	andi	a5,a5,-4
   112ce:	40978733          	sub	a4,a5,s1
   112d2:	fee556e3          	bge	a0,a4,112be <_malloc_r+0xac>
   112d6:	85c2                	mv	a1,a6
   112d8:	01092403          	lw	s0,16(s2)
   112dc:	686d                	lui	a6,0x1b
   112de:	14880813          	addi	a6,a6,328 # 1b148 <__malloc_av_+0x8>
   112e2:	1b040a63          	beq	s0,a6,11496 <_malloc_r+0x284>
   112e6:	405c                	lw	a5,4(s0)
   112e8:	46bd                	li	a3,15
   112ea:	9bf1                	andi	a5,a5,-4
   112ec:	40978733          	sub	a4,a5,s1
   112f0:	26e6cc63          	blt	a3,a4,11568 <_malloc_r+0x356>
   112f4:	01092a23          	sw	a6,20(s2)
   112f8:	01092823          	sw	a6,16(s2)
   112fc:	24075763          	bgez	a4,1154a <_malloc_r+0x338>
   11300:	1ff00713          	li	a4,511
   11304:	00492503          	lw	a0,4(s2)
   11308:	1af76163          	bltu	a4,a5,114aa <_malloc_r+0x298>
   1130c:	ff87f713          	andi	a4,a5,-8
   11310:	0721                	addi	a4,a4,8
   11312:	974a                	add	a4,a4,s2
   11314:	4314                	lw	a3,0(a4)
   11316:	0057d613          	srli	a2,a5,0x5
   1131a:	4785                	li	a5,1
   1131c:	00c797b3          	sll	a5,a5,a2
   11320:	8d5d                	or	a0,a0,a5
   11322:	ff870793          	addi	a5,a4,-8
   11326:	c45c                	sw	a5,12(s0)
   11328:	c414                	sw	a3,8(s0)
   1132a:	00a92223          	sw	a0,4(s2)
   1132e:	c300                	sw	s0,0(a4)
   11330:	c6c0                	sw	s0,12(a3)
   11332:	4025d793          	srai	a5,a1,0x2
   11336:	4605                	li	a2,1
   11338:	00f61633          	sll	a2,a2,a5
   1133c:	06c56c63          	bltu	a0,a2,113b4 <_malloc_r+0x1a2>
   11340:	00a677b3          	and	a5,a2,a0
   11344:	ef81                	bnez	a5,1135c <_malloc_r+0x14a>
   11346:	0606                	slli	a2,a2,0x1
   11348:	99f1                	andi	a1,a1,-4
   1134a:	00a677b3          	and	a5,a2,a0
   1134e:	0591                	addi	a1,a1,4
   11350:	e791                	bnez	a5,1135c <_malloc_r+0x14a>
   11352:	0606                	slli	a2,a2,0x1
   11354:	00a677b3          	and	a5,a2,a0
   11358:	0591                	addi	a1,a1,4
   1135a:	dfe5                	beqz	a5,11352 <_malloc_r+0x140>
   1135c:	48bd                	li	a7,15
   1135e:	00359313          	slli	t1,a1,0x3
   11362:	934a                	add	t1,t1,s2
   11364:	851a                	mv	a0,t1
   11366:	455c                	lw	a5,12(a0)
   11368:	8e2e                	mv	t3,a1
   1136a:	1af50063          	beq	a0,a5,1150a <_malloc_r+0x2f8>
   1136e:	43d8                	lw	a4,4(a5)
   11370:	843e                	mv	s0,a5
   11372:	47dc                	lw	a5,12(a5)
   11374:	9b71                	andi	a4,a4,-4
   11376:	409706b3          	sub	a3,a4,s1
   1137a:	18d8cf63          	blt	a7,a3,11518 <_malloc_r+0x306>
   1137e:	fe06c6e3          	bltz	a3,1136a <_malloc_r+0x158>
   11382:	9722                	add	a4,a4,s0
   11384:	4354                	lw	a3,4(a4)
   11386:	4410                	lw	a2,8(s0)
   11388:	854e                	mv	a0,s3
   1138a:	0016e693          	ori	a3,a3,1
   1138e:	c354                	sw	a3,4(a4)
   11390:	c65c                	sw	a5,12(a2)
   11392:	c790                	sw	a2,8(a5)
   11394:	2115                	jal	117b8 <__malloc_unlock>
   11396:	00840513          	addi	a0,s0,8
   1139a:	b5f9                	j	11268 <_malloc_r+0x56>
   1139c:	47b1                	li	a5,12
   1139e:	00f9a023          	sw	a5,0(s3)
   113a2:	4501                	li	a0,0
   113a4:	b5d1                	j	11268 <_malloc_r+0x56>
   113a6:	20000613          	li	a2,512
   113aa:	04000593          	li	a1,64
   113ae:	03f00813          	li	a6,63
   113b2:	bde5                	j	112aa <_malloc_r+0x98>
   113b4:	00892403          	lw	s0,8(s2)
   113b8:	c85a                	sw	s6,16(sp)
   113ba:	405c                	lw	a5,4(s0)
   113bc:	ffc7fb13          	andi	s6,a5,-4
   113c0:	009b6763          	bltu	s6,s1,113ce <_malloc_r+0x1bc>
   113c4:	409b0733          	sub	a4,s6,s1
   113c8:	47bd                	li	a5,15
   113ca:	0ae7c163          	blt	a5,a4,1146c <_malloc_r+0x25a>
   113ce:	c266                	sw	s9,4(sp)
   113d0:	ca56                	sw	s5,20(sp)
   113d2:	f181a703          	lw	a4,-232(gp) # 1b728 <__malloc_sbrk_base>
   113d6:	f341aa83          	lw	s5,-204(gp) # 1b744 <__malloc_top_pad>
   113da:	cc52                	sw	s4,24(sp)
   113dc:	c65e                	sw	s7,12(sp)
   113de:	57fd                	li	a5,-1
   113e0:	01640a33          	add	s4,s0,s6
   113e4:	9aa6                	add	s5,s5,s1
   113e6:	2cf70763          	beq	a4,a5,116b4 <_malloc_r+0x4a2>
   113ea:	6785                	lui	a5,0x1
   113ec:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   113ee:	9abe                	add	s5,s5,a5
   113f0:	77fd                	lui	a5,0xfffff
   113f2:	00fafab3          	and	s5,s5,a5
   113f6:	85d6                	mv	a1,s5
   113f8:	854e                	mv	a0,s3
   113fa:	039020ef          	jal	13c32 <_sbrk_r>
   113fe:	57fd                	li	a5,-1
   11400:	8baa                	mv	s7,a0
   11402:	32f50963          	beq	a0,a5,11734 <_malloc_r+0x522>
   11406:	c462                	sw	s8,8(sp)
   11408:	19456e63          	bltu	a0,s4,115a4 <_malloc_r+0x392>
   1140c:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   11410:	000c2583          	lw	a1,0(s8)
   11414:	95d6                	add	a1,a1,s5
   11416:	00bc2023          	sw	a1,0(s8)
   1141a:	872e                	mv	a4,a1
   1141c:	1eaa1863          	bne	s4,a0,1160c <_malloc_r+0x3fa>
   11420:	01451793          	slli	a5,a0,0x14
   11424:	1e079463          	bnez	a5,1160c <_malloc_r+0x3fa>
   11428:	00892b83          	lw	s7,8(s2)
   1142c:	015b07b3          	add	a5,s6,s5
   11430:	0017e793          	ori	a5,a5,1
   11434:	00fba223          	sw	a5,4(s7)
   11438:	f301a683          	lw	a3,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   1143c:	00b6f463          	bgeu	a3,a1,11444 <_malloc_r+0x232>
   11440:	f2b1a823          	sw	a1,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   11444:	f2c1a683          	lw	a3,-212(gp) # 1b73c <__malloc_max_total_mem>
   11448:	00b6f463          	bgeu	a3,a1,11450 <_malloc_r+0x23e>
   1144c:	f2b1a623          	sw	a1,-212(gp) # 1b73c <__malloc_max_total_mem>
   11450:	4c22                	lw	s8,8(sp)
   11452:	845e                	mv	s0,s7
   11454:	9bf1                	andi	a5,a5,-4
   11456:	40978733          	sub	a4,a5,s1
   1145a:	2897eb63          	bltu	a5,s1,116f0 <_malloc_r+0x4de>
   1145e:	47bd                	li	a5,15
   11460:	28e7d863          	bge	a5,a4,116f0 <_malloc_r+0x4de>
   11464:	4a62                	lw	s4,24(sp)
   11466:	4ad2                	lw	s5,20(sp)
   11468:	4bb2                	lw	s7,12(sp)
   1146a:	4c92                	lw	s9,4(sp)
   1146c:	0014e793          	ori	a5,s1,1
   11470:	c05c                	sw	a5,4(s0)
   11472:	94a2                	add	s1,s1,s0
   11474:	00992423          	sw	s1,8(s2)
   11478:	00176713          	ori	a4,a4,1
   1147c:	854e                	mv	a0,s3
   1147e:	c0d8                	sw	a4,4(s1)
   11480:	2e25                	jal	117b8 <__malloc_unlock>
   11482:	50b2                	lw	ra,44(sp)
   11484:	00840513          	addi	a0,s0,8
   11488:	5422                	lw	s0,40(sp)
   1148a:	4b42                	lw	s6,16(sp)
   1148c:	5492                	lw	s1,36(sp)
   1148e:	5902                	lw	s2,32(sp)
   11490:	49f2                	lw	s3,28(sp)
   11492:	6145                	addi	sp,sp,48
   11494:	8082                	ret
   11496:	00492503          	lw	a0,4(s2)
   1149a:	bd61                	j	11332 <_malloc_r+0x120>
   1149c:	4410                	lw	a2,8(s0)
   1149e:	bb55                	j	11252 <_malloc_r+0x40>
   114a0:	47c0                	lw	s0,12(a5)
   114a2:	0589                	addi	a1,a1,2
   114a4:	e2878ae3          	beq	a5,s0,112d8 <_malloc_r+0xc6>
   114a8:	b34d                	j	1124a <_malloc_r+0x38>
   114aa:	0097d713          	srli	a4,a5,0x9
   114ae:	4691                	li	a3,4
   114b0:	0ee6f263          	bgeu	a3,a4,11594 <_malloc_r+0x382>
   114b4:	46d1                	li	a3,20
   114b6:	24e6e663          	bltu	a3,a4,11702 <_malloc_r+0x4f0>
   114ba:	05c70613          	addi	a2,a4,92
   114be:	05b70693          	addi	a3,a4,91
   114c2:	060e                	slli	a2,a2,0x3
   114c4:	964a                	add	a2,a2,s2
   114c6:	4218                	lw	a4,0(a2)
   114c8:	1661                	addi	a2,a2,-8
   114ca:	00e61663          	bne	a2,a4,114d6 <_malloc_r+0x2c4>
   114ce:	a2ed                	j	116b8 <_malloc_r+0x4a6>
   114d0:	4718                	lw	a4,8(a4)
   114d2:	00e60663          	beq	a2,a4,114de <_malloc_r+0x2cc>
   114d6:	4354                	lw	a3,4(a4)
   114d8:	9af1                	andi	a3,a3,-4
   114da:	fed7ebe3          	bltu	a5,a3,114d0 <_malloc_r+0x2be>
   114de:	4750                	lw	a2,12(a4)
   114e0:	c450                	sw	a2,12(s0)
   114e2:	c418                	sw	a4,8(s0)
   114e4:	c600                	sw	s0,8(a2)
   114e6:	c740                	sw	s0,12(a4)
   114e8:	b5a9                	j	11332 <_malloc_r+0x120>
   114ea:	4751                	li	a4,20
   114ec:	0cf77363          	bgeu	a4,a5,115b2 <_malloc_r+0x3a0>
   114f0:	05400713          	li	a4,84
   114f4:	22f76363          	bltu	a4,a5,1171a <_malloc_r+0x508>
   114f8:	00c4d793          	srli	a5,s1,0xc
   114fc:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe3613>
   11500:	06e78813          	addi	a6,a5,110
   11504:	00359613          	slli	a2,a1,0x3
   11508:	b34d                	j	112aa <_malloc_r+0x98>
   1150a:	0e05                	addi	t3,t3,1
   1150c:	003e7793          	andi	a5,t3,3
   11510:	0521                	addi	a0,a0,8
   11512:	cfc5                	beqz	a5,115ca <_malloc_r+0x3b8>
   11514:	455c                	lw	a5,12(a0)
   11516:	bd91                	j	1136a <_malloc_r+0x158>
   11518:	4410                	lw	a2,8(s0)
   1151a:	0014e593          	ori	a1,s1,1
   1151e:	c04c                	sw	a1,4(s0)
   11520:	c65c                	sw	a5,12(a2)
   11522:	c790                	sw	a2,8(a5)
   11524:	94a2                	add	s1,s1,s0
   11526:	00992a23          	sw	s1,20(s2)
   1152a:	00992823          	sw	s1,16(s2)
   1152e:	0016e793          	ori	a5,a3,1
   11532:	0104a623          	sw	a6,12(s1)
   11536:	0104a423          	sw	a6,8(s1)
   1153a:	c0dc                	sw	a5,4(s1)
   1153c:	9722                	add	a4,a4,s0
   1153e:	854e                	mv	a0,s3
   11540:	c314                	sw	a3,0(a4)
   11542:	2c9d                	jal	117b8 <__malloc_unlock>
   11544:	00840513          	addi	a0,s0,8
   11548:	b305                	j	11268 <_malloc_r+0x56>
   1154a:	97a2                	add	a5,a5,s0
   1154c:	43d8                	lw	a4,4(a5)
   1154e:	854e                	mv	a0,s3
   11550:	00176713          	ori	a4,a4,1
   11554:	c3d8                	sw	a4,4(a5)
   11556:	248d                	jal	117b8 <__malloc_unlock>
   11558:	00840513          	addi	a0,s0,8
   1155c:	b331                	j	11268 <_malloc_r+0x56>
   1155e:	0034d593          	srli	a1,s1,0x3
   11562:	00848793          	addi	a5,s1,8
   11566:	b9c9                	j	11238 <_malloc_r+0x26>
   11568:	0014e693          	ori	a3,s1,1
   1156c:	c054                	sw	a3,4(s0)
   1156e:	94a2                	add	s1,s1,s0
   11570:	00992a23          	sw	s1,20(s2)
   11574:	00992823          	sw	s1,16(s2)
   11578:	00176693          	ori	a3,a4,1
   1157c:	0104a623          	sw	a6,12(s1)
   11580:	0104a423          	sw	a6,8(s1)
   11584:	c0d4                	sw	a3,4(s1)
   11586:	97a2                	add	a5,a5,s0
   11588:	854e                	mv	a0,s3
   1158a:	c398                	sw	a4,0(a5)
   1158c:	2435                	jal	117b8 <__malloc_unlock>
   1158e:	00840513          	addi	a0,s0,8
   11592:	b9d9                	j	11268 <_malloc_r+0x56>
   11594:	0067d713          	srli	a4,a5,0x6
   11598:	03970613          	addi	a2,a4,57
   1159c:	03870693          	addi	a3,a4,56
   115a0:	060e                	slli	a2,a2,0x3
   115a2:	b70d                	j	114c4 <_malloc_r+0x2b2>
   115a4:	05240d63          	beq	s0,s2,115fe <_malloc_r+0x3ec>
   115a8:	00892403          	lw	s0,8(s2)
   115ac:	4c22                	lw	s8,8(sp)
   115ae:	405c                	lw	a5,4(s0)
   115b0:	b555                	j	11454 <_malloc_r+0x242>
   115b2:	05c78593          	addi	a1,a5,92
   115b6:	05b78813          	addi	a6,a5,91
   115ba:	00359613          	slli	a2,a1,0x3
   115be:	b1f5                	j	112aa <_malloc_r+0x98>
   115c0:	00832783          	lw	a5,8(t1)
   115c4:	15fd                	addi	a1,a1,-1
   115c6:	1e679563          	bne	a5,t1,117b0 <_malloc_r+0x59e>
   115ca:	0035f793          	andi	a5,a1,3
   115ce:	1361                	addi	t1,t1,-8
   115d0:	fbe5                	bnez	a5,115c0 <_malloc_r+0x3ae>
   115d2:	00492703          	lw	a4,4(s2)
   115d6:	fff64793          	not	a5,a2
   115da:	8ff9                	and	a5,a5,a4
   115dc:	00f92223          	sw	a5,4(s2)
   115e0:	0606                	slli	a2,a2,0x1
   115e2:	dcc7e9e3          	bltu	a5,a2,113b4 <_malloc_r+0x1a2>
   115e6:	dc0607e3          	beqz	a2,113b4 <_malloc_r+0x1a2>
   115ea:	00f67733          	and	a4,a2,a5
   115ee:	e711                	bnez	a4,115fa <_malloc_r+0x3e8>
   115f0:	0606                	slli	a2,a2,0x1
   115f2:	00f67733          	and	a4,a2,a5
   115f6:	0e11                	addi	t3,t3,4
   115f8:	df65                	beqz	a4,115f0 <_malloc_r+0x3de>
   115fa:	85f2                	mv	a1,t3
   115fc:	b38d                	j	1135e <_malloc_r+0x14c>
   115fe:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   11602:	000c2703          	lw	a4,0(s8)
   11606:	9756                	add	a4,a4,s5
   11608:	00ec2023          	sw	a4,0(s8)
   1160c:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   11610:	57fd                	li	a5,-1
   11612:	12f68563          	beq	a3,a5,1173c <_malloc_r+0x52a>
   11616:	414b87b3          	sub	a5,s7,s4
   1161a:	97ba                	add	a5,a5,a4
   1161c:	00fc2023          	sw	a5,0(s8)
   11620:	007bfc93          	andi	s9,s7,7
   11624:	0a0c8263          	beqz	s9,116c8 <_malloc_r+0x4b6>
   11628:	419b8bb3          	sub	s7,s7,s9
   1162c:	6785                	lui	a5,0x1
   1162e:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   11630:	0ba1                	addi	s7,s7,8
   11632:	419785b3          	sub	a1,a5,s9
   11636:	9ade                	add	s5,s5,s7
   11638:	415585b3          	sub	a1,a1,s5
   1163c:	05d2                	slli	a1,a1,0x14
   1163e:	0145da13          	srli	s4,a1,0x14
   11642:	85d2                	mv	a1,s4
   11644:	854e                	mv	a0,s3
   11646:	5ec020ef          	jal	13c32 <_sbrk_r>
   1164a:	57fd                	li	a5,-1
   1164c:	12f50463          	beq	a0,a5,11774 <_malloc_r+0x562>
   11650:	41750533          	sub	a0,a0,s7
   11654:	01450ab3          	add	s5,a0,s4
   11658:	000c2703          	lw	a4,0(s8)
   1165c:	01792423          	sw	s7,8(s2)
   11660:	001ae793          	ori	a5,s5,1
   11664:	00ea05b3          	add	a1,s4,a4
   11668:	00bc2023          	sw	a1,0(s8)
   1166c:	00fba223          	sw	a5,4(s7)
   11670:	dd2404e3          	beq	s0,s2,11438 <_malloc_r+0x226>
   11674:	46bd                	li	a3,15
   11676:	0766f963          	bgeu	a3,s6,116e8 <_malloc_r+0x4d6>
   1167a:	4058                	lw	a4,4(s0)
   1167c:	ff4b0793          	addi	a5,s6,-12
   11680:	9be1                	andi	a5,a5,-8
   11682:	8b05                	andi	a4,a4,1
   11684:	8f5d                	or	a4,a4,a5
   11686:	c058                	sw	a4,4(s0)
   11688:	4615                	li	a2,5
   1168a:	00f40733          	add	a4,s0,a5
   1168e:	c350                	sw	a2,4(a4)
   11690:	c710                	sw	a2,8(a4)
   11692:	00f6e563          	bltu	a3,a5,1169c <_malloc_r+0x48a>
   11696:	004ba783          	lw	a5,4(s7)
   1169a:	bb79                	j	11438 <_malloc_r+0x226>
   1169c:	00840593          	addi	a1,s0,8
   116a0:	854e                	mv	a0,s3
   116a2:	94fff0ef          	jal	10ff0 <_free_r>
   116a6:	00892b83          	lw	s7,8(s2)
   116aa:	000c2583          	lw	a1,0(s8)
   116ae:	004ba783          	lw	a5,4(s7)
   116b2:	b359                	j	11438 <_malloc_r+0x226>
   116b4:	0ac1                	addi	s5,s5,16
   116b6:	b381                	j	113f6 <_malloc_r+0x1e4>
   116b8:	8689                	srai	a3,a3,0x2
   116ba:	4785                	li	a5,1
   116bc:	00d797b3          	sll	a5,a5,a3
   116c0:	8d5d                	or	a0,a0,a5
   116c2:	00a92223          	sw	a0,4(s2)
   116c6:	bd29                	j	114e0 <_malloc_r+0x2ce>
   116c8:	015b85b3          	add	a1,s7,s5
   116cc:	40b005b3          	neg	a1,a1
   116d0:	05d2                	slli	a1,a1,0x14
   116d2:	0145da13          	srli	s4,a1,0x14
   116d6:	85d2                	mv	a1,s4
   116d8:	854e                	mv	a0,s3
   116da:	558020ef          	jal	13c32 <_sbrk_r>
   116de:	57fd                	li	a5,-1
   116e0:	f6f518e3          	bne	a0,a5,11650 <_malloc_r+0x43e>
   116e4:	4a01                	li	s4,0
   116e6:	bf8d                	j	11658 <_malloc_r+0x446>
   116e8:	4c22                	lw	s8,8(sp)
   116ea:	4785                	li	a5,1
   116ec:	00fba223          	sw	a5,4(s7)
   116f0:	854e                	mv	a0,s3
   116f2:	20d9                	jal	117b8 <__malloc_unlock>
   116f4:	4501                	li	a0,0
   116f6:	4a62                	lw	s4,24(sp)
   116f8:	4ad2                	lw	s5,20(sp)
   116fa:	4b42                	lw	s6,16(sp)
   116fc:	4bb2                	lw	s7,12(sp)
   116fe:	4c92                	lw	s9,4(sp)
   11700:	b6a5                	j	11268 <_malloc_r+0x56>
   11702:	05400693          	li	a3,84
   11706:	02e6ee63          	bltu	a3,a4,11742 <_malloc_r+0x530>
   1170a:	00c7d713          	srli	a4,a5,0xc
   1170e:	06f70613          	addi	a2,a4,111
   11712:	06e70693          	addi	a3,a4,110
   11716:	060e                	slli	a2,a2,0x3
   11718:	b375                	j	114c4 <_malloc_r+0x2b2>
   1171a:	15400713          	li	a4,340
   1171e:	02f76e63          	bltu	a4,a5,1175a <_malloc_r+0x548>
   11722:	00f4d793          	srli	a5,s1,0xf
   11726:	07878593          	addi	a1,a5,120
   1172a:	07778813          	addi	a6,a5,119
   1172e:	00359613          	slli	a2,a1,0x3
   11732:	bea5                	j	112aa <_malloc_r+0x98>
   11734:	00892403          	lw	s0,8(s2)
   11738:	405c                	lw	a5,4(s0)
   1173a:	bb29                	j	11454 <_malloc_r+0x242>
   1173c:	f171ac23          	sw	s7,-232(gp) # 1b728 <__malloc_sbrk_base>
   11740:	b5c5                	j	11620 <_malloc_r+0x40e>
   11742:	15400693          	li	a3,340
   11746:	02e6ed63          	bltu	a3,a4,11780 <_malloc_r+0x56e>
   1174a:	00f7d713          	srli	a4,a5,0xf
   1174e:	07870613          	addi	a2,a4,120
   11752:	07770693          	addi	a3,a4,119
   11756:	060e                	slli	a2,a2,0x3
   11758:	b3b5                	j	114c4 <_malloc_r+0x2b2>
   1175a:	55400713          	li	a4,1364
   1175e:	02f76d63          	bltu	a4,a5,11798 <_malloc_r+0x586>
   11762:	0124d793          	srli	a5,s1,0x12
   11766:	07d78593          	addi	a1,a5,125
   1176a:	07c78813          	addi	a6,a5,124
   1176e:	00359613          	slli	a2,a1,0x3
   11772:	be25                	j	112aa <_malloc_r+0x98>
   11774:	1ce1                	addi	s9,s9,-8
   11776:	9ae6                	add	s5,s5,s9
   11778:	417a8ab3          	sub	s5,s5,s7
   1177c:	4a01                	li	s4,0
   1177e:	bde9                	j	11658 <_malloc_r+0x446>
   11780:	55400693          	li	a3,1364
   11784:	02e6e163          	bltu	a3,a4,117a6 <_malloc_r+0x594>
   11788:	0127d713          	srli	a4,a5,0x12
   1178c:	07d70613          	addi	a2,a4,125
   11790:	07c70693          	addi	a3,a4,124
   11794:	060e                	slli	a2,a2,0x3
   11796:	b33d                	j	114c4 <_malloc_r+0x2b2>
   11798:	3f800613          	li	a2,1016
   1179c:	07f00593          	li	a1,127
   117a0:	07e00813          	li	a6,126
   117a4:	b619                	j	112aa <_malloc_r+0x98>
   117a6:	3f800613          	li	a2,1016
   117aa:	07e00693          	li	a3,126
   117ae:	bb19                	j	114c4 <_malloc_r+0x2b2>
   117b0:	00492783          	lw	a5,4(s2)
   117b4:	b535                	j	115e0 <_malloc_r+0x3ce>

000117b6 <__malloc_lock>:
   117b6:	8082                	ret

000117b8 <__malloc_unlock>:
   117b8:	8082                	ret

000117ba <_vfprintf_r>:
   117ba:	7145                	addi	sp,sp,-464
   117bc:	1c112623          	sw	ra,460(sp)
   117c0:	1c812423          	sw	s0,456(sp)
   117c4:	1c912223          	sw	s1,452(sp)
   117c8:	1b612823          	sw	s6,432(sp)
   117cc:	84ae                	mv	s1,a1
   117ce:	8b32                	mv	s6,a2
   117d0:	ca36                	sw	a3,20(sp)
   117d2:	842a                	mv	s0,a0
   117d4:	c42a                	sw	a0,8(sp)
   117d6:	450020ef          	jal	13c26 <_localeconv_r>
   117da:	411c                	lw	a5,0(a0)
   117dc:	853e                	mv	a0,a5
   117de:	d83e                	sw	a5,48(sp)
   117e0:	e06ff0ef          	jal	10de6 <strlen>
   117e4:	d62a                	sw	a0,44(sp)
   117e6:	c982                	sw	zero,208(sp)
   117e8:	cb82                	sw	zero,212(sp)
   117ea:	cd82                	sw	zero,216(sp)
   117ec:	cf82                	sw	zero,220(sp)
   117ee:	c409                	beqz	s0,117f8 <_vfprintf_r+0x3e>
   117f0:	5858                	lw	a4,52(s0)
   117f2:	e319                	bnez	a4,117f8 <_vfprintf_r+0x3e>
   117f4:	1920106f          	j	12986 <_vfprintf_r+0x11cc>
   117f8:	00c49683          	lh	a3,12(s1)
   117fc:	50f8                	lw	a4,100(s1)
   117fe:	01269613          	slli	a2,a3,0x12
   11802:	00064a63          	bltz	a2,11816 <_vfprintf_r+0x5c>
   11806:	7679                	lui	a2,0xffffe
   11808:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   1180a:	6589                	lui	a1,0x2
   1180c:	8ecd                	or	a3,a3,a1
   1180e:	8f71                	and	a4,a4,a2
   11810:	00d49623          	sh	a3,12(s1)
   11814:	d0f8                	sw	a4,100(s1)
   11816:	01271693          	slli	a3,a4,0x12
   1181a:	0006d463          	bgez	a3,11822 <_vfprintf_r+0x68>
   1181e:	0770106f          	j	13094 <_vfprintf_r+0x18da>
   11822:	00c49703          	lh	a4,12(s1)
   11826:	00877693          	andi	a3,a4,8
   1182a:	22068a63          	beqz	a3,11a5e <_vfprintf_r+0x2a4>
   1182e:	4894                	lw	a3,16(s1)
   11830:	22068763          	beqz	a3,11a5e <_vfprintf_r+0x2a4>
   11834:	8b69                	andi	a4,a4,26
   11836:	46a9                	li	a3,10
   11838:	24d70063          	beq	a4,a3,11a78 <_vfprintf_r+0x2be>
   1183c:	1b312e23          	sw	s3,444(sp)
   11840:	1b412c23          	sw	s4,440(sp)
   11844:	1ba12023          	sw	s10,416(sp)
   11848:	6769                	lui	a4,0x1a
   1184a:	1d212023          	sw	s2,448(sp)
   1184e:	1b512a23          	sw	s5,436(sp)
   11852:	1b712623          	sw	s7,428(sp)
   11856:	1b812423          	sw	s8,424(sp)
   1185a:	1b912223          	sw	s9,420(sp)
   1185e:	19b12e23          	sw	s11,412(sp)
   11862:	8d5a                	mv	s10,s6
   11864:	36870793          	addi	a5,a4,872 # 1a368 <k+0x100>
   11868:	000d4703          	lbu	a4,0(s10)
   1186c:	0ec10993          	addi	s3,sp,236
   11870:	6a69                	lui	s4,0x1a
   11872:	c3ce                	sw	s3,196(sp)
   11874:	c782                	sw	zero,204(sp)
   11876:	c582                	sw	zero,200(sp)
   11878:	d002                	sw	zero,32(sp)
   1187a:	da02                	sw	zero,52(sp)
   1187c:	c082                	sw	zero,64(sp)
   1187e:	de02                	sw	zero,60(sp)
   11880:	c482                	sw	zero,72(sp)
   11882:	c282                	sw	zero,68(sp)
   11884:	c602                	sw	zero,12(sp)
   11886:	cc3e                	sw	a5,24(sp)
   11888:	844e                	mv	s0,s3
   1188a:	56ca0a13          	addi	s4,s4,1388 # 1a56c <zeroes.0>
   1188e:	18070063          	beqz	a4,11a0e <_vfprintf_r+0x254>
   11892:	896a                	mv	s2,s10
   11894:	02500693          	li	a3,37
   11898:	2ed70a63          	beq	a4,a3,11b8c <_vfprintf_r+0x3d2>
   1189c:	00194703          	lbu	a4,1(s2)
   118a0:	0905                	addi	s2,s2,1
   118a2:	fb7d                	bnez	a4,11898 <_vfprintf_r+0xde>
   118a4:	41a90ab3          	sub	s5,s2,s10
   118a8:	17a90363          	beq	s2,s10,11a0e <_vfprintf_r+0x254>
   118ac:	46be                	lw	a3,204(sp)
   118ae:	472e                	lw	a4,200(sp)
   118b0:	01a42023          	sw	s10,0(s0)
   118b4:	96d6                	add	a3,a3,s5
   118b6:	0705                	addi	a4,a4,1
   118b8:	01542223          	sw	s5,4(s0)
   118bc:	c7b6                	sw	a3,204(sp)
   118be:	c5ba                	sw	a4,200(sp)
   118c0:	469d                	li	a3,7
   118c2:	0421                	addi	s0,s0,8
   118c4:	2ce6cb63          	blt	a3,a4,11b9a <_vfprintf_r+0x3e0>
   118c8:	47b2                	lw	a5,12(sp)
   118ca:	00094703          	lbu	a4,0(s2)
   118ce:	97d6                	add	a5,a5,s5
   118d0:	c63e                	sw	a5,12(sp)
   118d2:	12070e63          	beqz	a4,11a0e <_vfprintf_r+0x254>
   118d6:	00194883          	lbu	a7,1(s2)
   118da:	0a0103a3          	sb	zero,167(sp)
   118de:	0905                	addi	s2,s2,1
   118e0:	5afd                	li	s5,-1
   118e2:	4b81                	li	s7,0
   118e4:	4c81                	li	s9,0
   118e6:	05a00b13          	li	s6,90
   118ea:	0905                	addi	s2,s2,1
   118ec:	fe088793          	addi	a5,a7,-32
   118f0:	02fb6b63          	bltu	s6,a5,11926 <_vfprintf_r+0x16c>
   118f4:	4762                	lw	a4,24(sp)
   118f6:	078a                	slli	a5,a5,0x2
   118f8:	97ba                	add	a5,a5,a4
   118fa:	439c                	lw	a5,0(a5)
   118fc:	8782                	jr	a5
   118fe:	4b81                	li	s7,0
   11900:	fd088793          	addi	a5,a7,-48
   11904:	46a5                	li	a3,9
   11906:	00094883          	lbu	a7,0(s2)
   1190a:	002b9713          	slli	a4,s7,0x2
   1190e:	9bba                	add	s7,s7,a4
   11910:	0b86                	slli	s7,s7,0x1
   11912:	9bbe                	add	s7,s7,a5
   11914:	fd088793          	addi	a5,a7,-48
   11918:	0905                	addi	s2,s2,1
   1191a:	fef6f6e3          	bgeu	a3,a5,11906 <_vfprintf_r+0x14c>
   1191e:	fe088793          	addi	a5,a7,-32
   11922:	fcfb79e3          	bgeu	s6,a5,118f4 <_vfprintf_r+0x13a>
   11926:	0e088463          	beqz	a7,11a0e <_vfprintf_r+0x254>
   1192a:	13110623          	sb	a7,300(sp)
   1192e:	0a0103a3          	sb	zero,167(sp)
   11932:	4d85                	li	s11,1
   11934:	4b05                	li	s6,1
   11936:	12c10d13          	addi	s10,sp,300
   1193a:	c802                	sw	zero,16(sp)
   1193c:	4a81                	li	s5,0
   1193e:	d402                	sw	zero,40(sp)
   11940:	d202                	sw	zero,36(sp)
   11942:	ce02                	sw	zero,28(sp)
   11944:	002cf293          	andi	t0,s9,2
   11948:	00028363          	beqz	t0,1194e <_vfprintf_r+0x194>
   1194c:	0d89                	addi	s11,s11,2
   1194e:	084cff93          	andi	t6,s9,132
   11952:	463e                	lw	a2,204(sp)
   11954:	000f9663          	bnez	t6,11960 <_vfprintf_r+0x1a6>
   11958:	41bb8733          	sub	a4,s7,s11
   1195c:	0ce045e3          	bgtz	a4,12226 <_vfprintf_r+0xa6c>
   11960:	0a714703          	lbu	a4,167(sp)
   11964:	cf19                	beqz	a4,11982 <_vfprintf_r+0x1c8>
   11966:	472e                	lw	a4,200(sp)
   11968:	0a710593          	addi	a1,sp,167
   1196c:	c00c                	sw	a1,0(s0)
   1196e:	0605                	addi	a2,a2,1
   11970:	4585                	li	a1,1
   11972:	0705                	addi	a4,a4,1
   11974:	c04c                	sw	a1,4(s0)
   11976:	c7b2                	sw	a2,204(sp)
   11978:	c5ba                	sw	a4,200(sp)
   1197a:	459d                	li	a1,7
   1197c:	0421                	addi	s0,s0,8
   1197e:	2ee5c563          	blt	a1,a4,11c68 <_vfprintf_r+0x4ae>
   11982:	00028f63          	beqz	t0,119a0 <_vfprintf_r+0x1e6>
   11986:	472e                	lw	a4,200(sp)
   11988:	4589                	li	a1,2
   1198a:	0609                	addi	a2,a2,2
   1198c:	0705                	addi	a4,a4,1
   1198e:	113c                	addi	a5,sp,168
   11990:	c04c                	sw	a1,4(s0)
   11992:	c01c                	sw	a5,0(s0)
   11994:	c7b2                	sw	a2,204(sp)
   11996:	c5ba                	sw	a4,200(sp)
   11998:	459d                	li	a1,7
   1199a:	0421                	addi	s0,s0,8
   1199c:	12e5c8e3          	blt	a1,a4,122cc <_vfprintf_r+0xb12>
   119a0:	08000713          	li	a4,128
   119a4:	72ef8c63          	beq	t6,a4,120dc <_vfprintf_r+0x922>
   119a8:	416a8ab3          	sub	s5,s5,s6
   119ac:	7d504863          	bgtz	s5,1217c <_vfprintf_r+0x9c2>
   119b0:	100cf713          	andi	a4,s9,256
   119b4:	60071c63          	bnez	a4,11fcc <_vfprintf_r+0x812>
   119b8:	47ae                	lw	a5,200(sp)
   119ba:	965a                	add	a2,a2,s6
   119bc:	01a42023          	sw	s10,0(s0)
   119c0:	0785                	addi	a5,a5,1
   119c2:	01642223          	sw	s6,4(s0)
   119c6:	c7b2                	sw	a2,204(sp)
   119c8:	c5be                	sw	a5,200(sp)
   119ca:	471d                	li	a4,7
   119cc:	36f74363          	blt	a4,a5,11d32 <_vfprintf_r+0x578>
   119d0:	0421                	addi	s0,s0,8
   119d2:	004cfe13          	andi	t3,s9,4
   119d6:	000e0663          	beqz	t3,119e2 <_vfprintf_r+0x228>
   119da:	41bb8ab3          	sub	s5,s7,s11
   119de:	115045e3          	bgtz	s5,122e8 <_vfprintf_r+0xb2e>
   119e2:	835e                	mv	t1,s7
   119e4:	01bbd363          	bge	s7,s11,119ea <_vfprintf_r+0x230>
   119e8:	836e                	mv	t1,s11
   119ea:	47b2                	lw	a5,12(sp)
   119ec:	979a                	add	a5,a5,t1
   119ee:	c63e                	sw	a5,12(sp)
   119f0:	00061ae3          	bnez	a2,12204 <_vfprintf_r+0xa4a>
   119f4:	47c2                	lw	a5,16(sp)
   119f6:	c582                	sw	zero,200(sp)
   119f8:	c789                	beqz	a5,11a02 <_vfprintf_r+0x248>
   119fa:	45c2                	lw	a1,16(sp)
   119fc:	4522                	lw	a0,8(sp)
   119fe:	df2ff0ef          	jal	10ff0 <_free_r>
   11a02:	844e                	mv	s0,s3
   11a04:	8d4a                	mv	s10,s2
   11a06:	000d4703          	lbu	a4,0(s10)
   11a0a:	e80714e3          	bnez	a4,11892 <_vfprintf_r+0xd8>
   11a0e:	47be                	lw	a5,204(sp)
   11a10:	c399                	beqz	a5,11a16 <_vfprintf_r+0x25c>
   11a12:	3160106f          	j	12d28 <_vfprintf_r+0x156e>
   11a16:	00c4d783          	lhu	a5,12(s1)
   11a1a:	1c012903          	lw	s2,448(sp)
   11a1e:	1bc12983          	lw	s3,444(sp)
   11a22:	0407f793          	andi	a5,a5,64
   11a26:	1b812a03          	lw	s4,440(sp)
   11a2a:	1b412a83          	lw	s5,436(sp)
   11a2e:	1ac12b83          	lw	s7,428(sp)
   11a32:	1a812c03          	lw	s8,424(sp)
   11a36:	1a412c83          	lw	s9,420(sp)
   11a3a:	1a012d03          	lw	s10,416(sp)
   11a3e:	19c12d83          	lw	s11,412(sp)
   11a42:	c399                	beqz	a5,11a48 <_vfprintf_r+0x28e>
   11a44:	6500106f          	j	13094 <_vfprintf_r+0x18da>
   11a48:	1cc12083          	lw	ra,460(sp)
   11a4c:	1c812403          	lw	s0,456(sp)
   11a50:	4532                	lw	a0,12(sp)
   11a52:	1c412483          	lw	s1,452(sp)
   11a56:	1b012b03          	lw	s6,432(sp)
   11a5a:	6179                	addi	sp,sp,464
   11a5c:	8082                	ret
   11a5e:	4522                	lw	a0,8(sp)
   11a60:	85a6                	mv	a1,s1
   11a62:	7dd010ef          	jal	13a3e <__swsetup_r>
   11a66:	c119                	beqz	a0,11a6c <_vfprintf_r+0x2b2>
   11a68:	62c0106f          	j	13094 <_vfprintf_r+0x18da>
   11a6c:	00c49703          	lh	a4,12(s1)
   11a70:	46a9                	li	a3,10
   11a72:	8b69                	andi	a4,a4,26
   11a74:	dcd714e3          	bne	a4,a3,1183c <_vfprintf_r+0x82>
   11a78:	00e49703          	lh	a4,14(s1)
   11a7c:	dc0740e3          	bltz	a4,1183c <_vfprintf_r+0x82>
   11a80:	46d2                	lw	a3,20(sp)
   11a82:	4522                	lw	a0,8(sp)
   11a84:	865a                	mv	a2,s6
   11a86:	85a6                	mv	a1,s1
   11a88:	0e5010ef          	jal	1336c <__sbprintf>
   11a8c:	c62a                	sw	a0,12(sp)
   11a8e:	bf6d                	j	11a48 <_vfprintf_r+0x28e>
   11a90:	4c22                	lw	s8,8(sp)
   11a92:	8562                	mv	a0,s8
   11a94:	192020ef          	jal	13c26 <_localeconv_r>
   11a98:	415c                	lw	a5,4(a0)
   11a9a:	853e                	mv	a0,a5
   11a9c:	c2be                	sw	a5,68(sp)
   11a9e:	b48ff0ef          	jal	10de6 <strlen>
   11aa2:	87aa                	mv	a5,a0
   11aa4:	8562                	mv	a0,s8
   11aa6:	c4be                	sw	a5,72(sp)
   11aa8:	8c3e                	mv	s8,a5
   11aaa:	17c020ef          	jal	13c26 <_localeconv_r>
   11aae:	451c                	lw	a5,8(a0)
   11ab0:	de3e                	sw	a5,60(sp)
   11ab2:	280c14e3          	bnez	s8,1253a <_vfprintf_r+0xd80>
   11ab6:	00094883          	lbu	a7,0(s2)
   11aba:	bd05                	j	118ea <_vfprintf_r+0x130>
   11abc:	00094883          	lbu	a7,0(s2)
   11ac0:	020cec93          	ori	s9,s9,32
   11ac4:	b51d                	j	118ea <_vfprintf_r+0x130>
   11ac6:	010cec93          	ori	s9,s9,16
   11aca:	020cf793          	andi	a5,s9,32
   11ace:	26078c63          	beqz	a5,11d46 <_vfprintf_r+0x58c>
   11ad2:	47d2                	lw	a5,20(sp)
   11ad4:	00778c13          	addi	s8,a5,7
   11ad8:	ff8c7c13          	andi	s8,s8,-8
   11adc:	004c2783          	lw	a5,4(s8)
   11ae0:	000c2b03          	lw	s6,0(s8)
   11ae4:	008c0713          	addi	a4,s8,8
   11ae8:	ca3a                	sw	a4,20(sp)
   11aea:	8dbe                	mv	s11,a5
   11aec:	2807c263          	bltz	a5,11d70 <_vfprintf_r+0x5b6>
   11af0:	8ee6                	mv	t4,s9
   11af2:	380ac363          	bltz	s5,11e78 <_vfprintf_r+0x6be>
   11af6:	01bb67b3          	or	a5,s6,s11
   11afa:	f7fcfe93          	andi	t4,s9,-129
   11afe:	36079d63          	bnez	a5,11e78 <_vfprintf_r+0x6be>
   11b02:	380a9063          	bnez	s5,11e82 <_vfprintf_r+0x6c8>
   11b06:	4b01                	li	s6,0
   11b08:	8cf6                	mv	s9,t4
   11b0a:	19010d13          	addi	s10,sp,400
   11b0e:	0a714703          	lbu	a4,167(sp)
   11b12:	8dd6                	mv	s11,s5
   11b14:	016ad363          	bge	s5,s6,11b1a <_vfprintf_r+0x360>
   11b18:	8dda                	mv	s11,s6
   11b1a:	c802                	sw	zero,16(sp)
   11b1c:	d402                	sw	zero,40(sp)
   11b1e:	d202                	sw	zero,36(sp)
   11b20:	ce02                	sw	zero,28(sp)
   11b22:	e20701e3          	beqz	a4,11944 <_vfprintf_r+0x18a>
   11b26:	0d85                	addi	s11,s11,1
   11b28:	bd31                	j	11944 <_vfprintf_r+0x18a>
   11b2a:	010cec93          	ori	s9,s9,16
   11b2e:	020cf793          	andi	a5,s9,32
   11b32:	2a078b63          	beqz	a5,11de8 <_vfprintf_r+0x62e>
   11b36:	47d2                	lw	a5,20(sp)
   11b38:	00778c13          	addi	s8,a5,7
   11b3c:	ff8c7c13          	andi	s8,s8,-8
   11b40:	000c2b03          	lw	s6,0(s8)
   11b44:	004c2d83          	lw	s11,4(s8)
   11b48:	008c0793          	addi	a5,s8,8
   11b4c:	ca3e                	sw	a5,20(sp)
   11b4e:	bffcfe93          	andi	t4,s9,-1025
   11b52:	4781                	li	a5,0
   11b54:	4701                	li	a4,0
   11b56:	0ae103a3          	sb	a4,167(sp)
   11b5a:	220acb63          	bltz	s5,11d90 <_vfprintf_r+0x5d6>
   11b5e:	01bb6733          	or	a4,s6,s11
   11b62:	f7fefc93          	andi	s9,t4,-129
   11b66:	6a071e63          	bnez	a4,12222 <_vfprintf_r+0xa68>
   11b6a:	520a9563          	bnez	s5,12094 <_vfprintf_r+0x8da>
   11b6e:	16079ee3          	bnez	a5,124ea <_vfprintf_r+0xd30>
   11b72:	001efb13          	andi	s6,t4,1
   11b76:	19010d13          	addi	s10,sp,400
   11b7a:	f80b0ae3          	beqz	s6,11b0e <_vfprintf_r+0x354>
   11b7e:	03000793          	li	a5,48
   11b82:	18f107a3          	sb	a5,399(sp)
   11b86:	18f10d13          	addi	s10,sp,399
   11b8a:	b751                	j	11b0e <_vfprintf_r+0x354>
   11b8c:	41a90ab3          	sub	s5,s2,s10
   11b90:	d1a91ee3          	bne	s2,s10,118ac <_vfprintf_r+0xf2>
   11b94:	00094703          	lbu	a4,0(s2)
   11b98:	bb2d                	j	118d2 <_vfprintf_r+0x118>
   11b9a:	4522                	lw	a0,8(sp)
   11b9c:	01d0                	addi	a2,sp,196
   11b9e:	85a6                	mv	a1,s1
   11ba0:	061010ef          	jal	13400 <__sprint_r>
   11ba4:	e60519e3          	bnez	a0,11a16 <_vfprintf_r+0x25c>
   11ba8:	844e                	mv	s0,s3
   11baa:	bb39                	j	118c8 <_vfprintf_r+0x10e>
   11bac:	008cf713          	andi	a4,s9,8
   11bb0:	1c0714e3          	bnez	a4,12578 <_vfprintf_r+0xdbe>
   11bb4:	47d2                	lw	a5,20(sp)
   11bb6:	0908                	addi	a0,sp,144
   11bb8:	c846                	sw	a7,16(sp)
   11bba:	00778c13          	addi	s8,a5,7
   11bbe:	ff8c7c13          	andi	s8,s8,-8
   11bc2:	000c3507          	fld	fa0,0(s8)
   11bc6:	008c0793          	addi	a5,s8,8
   11bca:	ca3e                	sw	a5,20(sp)
   11bcc:	2ba080ef          	jal	19e86 <__extenddftf2>
   11bd0:	45ca                	lw	a1,144(sp)
   11bd2:	465a                	lw	a2,148(sp)
   11bd4:	46ea                	lw	a3,152(sp)
   11bd6:	477a                	lw	a4,156(sp)
   11bd8:	48c2                	lw	a7,16(sp)
   11bda:	0988                	addi	a0,sp,208
   11bdc:	c846                	sw	a7,16(sp)
   11bde:	cfba                	sw	a4,220(sp)
   11be0:	c9ae                	sw	a1,208(sp)
   11be2:	cbb2                	sw	a2,212(sp)
   11be4:	cdb6                	sw	a3,216(sp)
   11be6:	47e020ef          	jal	14064 <_ldcheck>
   11bea:	d72a                	sw	a0,172(sp)
   11bec:	4709                	li	a4,2
   11bee:	48c2                	lw	a7,16(sp)
   11bf0:	5ce50be3          	beq	a0,a4,129c6 <_vfprintf_r+0x120c>
   11bf4:	4705                	li	a4,1
   11bf6:	6ae505e3          	beq	a0,a4,12aa0 <_vfprintf_r+0x12e6>
   11bfa:	06100713          	li	a4,97
   11bfe:	2ae88ce3          	beq	a7,a4,126b6 <_vfprintf_r+0xefc>
   11c02:	04100713          	li	a4,65
   11c06:	05800793          	li	a5,88
   11c0a:	2ae888e3          	beq	a7,a4,126ba <_vfprintf_r+0xf00>
   11c0e:	577d                	li	a4,-1
   11c10:	00ea9463          	bne	s5,a4,11c18 <_vfprintf_r+0x45e>
   11c14:	6260106f          	j	1323a <_vfprintf_r+0x1a80>
   11c18:	fdf8f713          	andi	a4,a7,-33
   11c1c:	04700693          	li	a3,71
   11c20:	c802                	sw	zero,16(sp)
   11c22:	00d71563          	bne	a4,a3,11c2c <_vfprintf_r+0x472>
   11c26:	000a9363          	bnez	s5,11c2c <_vfprintf_r+0x472>
   11c2a:	4a85                	li	s5,1
   11c2c:	4c7e                	lw	s8,220(sp)
   11c2e:	100ce793          	ori	a5,s9,256
   11c32:	c6be                	sw	a5,76(sp)
   11c34:	dc02                	sw	zero,56(sp)
   11c36:	4fce                	lw	t6,208(sp)
   11c38:	4f5e                	lw	t5,212(sp)
   11c3a:	4eee                	lw	t4,216(sp)
   11c3c:	000c5963          	bgez	s8,11c4e <_vfprintf_r+0x494>
   11c40:	80000737          	lui	a4,0x80000
   11c44:	02d00793          	li	a5,45
   11c48:	01874c33          	xor	s8,a4,s8
   11c4c:	dc3e                	sw	a5,56(sp)
   11c4e:	fbf88713          	addi	a4,a7,-65
   11c52:	02500693          	li	a3,37
   11c56:	28e6eee3          	bltu	a3,a4,126f2 <_vfprintf_r+0xf38>
   11c5a:	66e9                	lui	a3,0x1a
   11c5c:	070a                	slli	a4,a4,0x2
   11c5e:	4d468693          	addi	a3,a3,1236 # 1a4d4 <k+0x26c>
   11c62:	9736                	add	a4,a4,a3
   11c64:	4318                	lw	a4,0(a4)
   11c66:	8702                	jr	a4
   11c68:	4522                	lw	a0,8(sp)
   11c6a:	01d0                	addi	a2,sp,196
   11c6c:	85a6                	mv	a1,s1
   11c6e:	c8c6                	sw	a7,80(sp)
   11c70:	c6fe                	sw	t6,76(sp)
   11c72:	dc16                	sw	t0,56(sp)
   11c74:	78c010ef          	jal	13400 <__sprint_r>
   11c78:	58051d63          	bnez	a0,12212 <_vfprintf_r+0xa58>
   11c7c:	463e                	lw	a2,204(sp)
   11c7e:	48c6                	lw	a7,80(sp)
   11c80:	4fb6                	lw	t6,76(sp)
   11c82:	52e2                	lw	t0,56(sp)
   11c84:	844e                	mv	s0,s3
   11c86:	b9f5                	j	11982 <_vfprintf_r+0x1c8>
   11c88:	4aae                	lw	s5,200(sp)
   11c8a:	5782                	lw	a5,32(sp)
   11c8c:	4705                	li	a4,1
   11c8e:	01a42023          	sw	s10,0(s0)
   11c92:	00160c13          	addi	s8,a2,1
   11c96:	0a85                	addi	s5,s5,1
   11c98:	00840b13          	addi	s6,s0,8
   11c9c:	7af75763          	bge	a4,a5,1244a <_vfprintf_r+0xc90>
   11ca0:	4705                	li	a4,1
   11ca2:	c058                	sw	a4,4(s0)
   11ca4:	c7e2                	sw	s8,204(sp)
   11ca6:	c5d6                	sw	s5,200(sp)
   11ca8:	471d                	li	a4,7
   11caa:	395741e3          	blt	a4,s5,1282c <_vfprintf_r+0x1072>
   11cae:	57b2                	lw	a5,44(sp)
   11cb0:	5742                	lw	a4,48(sp)
   11cb2:	0a85                	addi	s5,s5,1
   11cb4:	9c3e                	add	s8,s8,a5
   11cb6:	00eb2023          	sw	a4,0(s6)
   11cba:	00fb2223          	sw	a5,4(s6)
   11cbe:	c7e2                	sw	s8,204(sp)
   11cc0:	c5d6                	sw	s5,200(sp)
   11cc2:	471d                	li	a4,7
   11cc4:	0b21                	addi	s6,s6,8
   11cc6:	37574fe3          	blt	a4,s5,12844 <_vfprintf_r+0x108a>
   11cca:	474e                	lw	a4,208(sp)
   11ccc:	5782                	lw	a5,32(sp)
   11cce:	010c                	addi	a1,sp,128
   11cd0:	c93a                	sw	a4,144(sp)
   11cd2:	475e                	lw	a4,212(sp)
   11cd4:	0908                	addi	a0,sp,144
   11cd6:	c102                	sw	zero,128(sp)
   11cd8:	cb3a                	sw	a4,148(sp)
   11cda:	476e                	lw	a4,216(sp)
   11cdc:	c302                	sw	zero,132(sp)
   11cde:	c502                	sw	zero,136(sp)
   11ce0:	cd3a                	sw	a4,152(sp)
   11ce2:	477e                	lw	a4,220(sp)
   11ce4:	c702                	sw	zero,140(sp)
   11ce6:	fff78413          	addi	s0,a5,-1
   11cea:	cf3a                	sw	a4,156(sp)
   11cec:	6b7050ef          	jal	17ba2 <__eqtf2>
   11cf0:	78050263          	beqz	a0,12474 <_vfprintf_r+0xcba>
   11cf4:	001d0793          	addi	a5,s10,1
   11cf8:	0a85                	addi	s5,s5,1
   11cfa:	9c22                	add	s8,s8,s0
   11cfc:	00fb2023          	sw	a5,0(s6)
   11d00:	008b2223          	sw	s0,4(s6)
   11d04:	c7e2                	sw	s8,204(sp)
   11d06:	c5d6                	sw	s5,200(sp)
   11d08:	479d                	li	a5,7
   11d0a:	0b21                	addi	s6,s6,8
   11d0c:	7557c963          	blt	a5,s5,1245e <_vfprintf_r+0xca4>
   11d10:	4686                	lw	a3,64(sp)
   11d12:	1958                	addi	a4,sp,180
   11d14:	001a8793          	addi	a5,s5,1
   11d18:	01868633          	add	a2,a3,s8
   11d1c:	00eb2023          	sw	a4,0(s6)
   11d20:	00db2223          	sw	a3,4(s6)
   11d24:	c7b2                	sw	a2,204(sp)
   11d26:	c5be                	sw	a5,200(sp)
   11d28:	471d                	li	a4,7
   11d2a:	008b0413          	addi	s0,s6,8
   11d2e:	caf752e3          	bge	a4,a5,119d2 <_vfprintf_r+0x218>
   11d32:	4522                	lw	a0,8(sp)
   11d34:	01d0                	addi	a2,sp,196
   11d36:	85a6                	mv	a1,s1
   11d38:	6c8010ef          	jal	13400 <__sprint_r>
   11d3c:	4c051b63          	bnez	a0,12212 <_vfprintf_r+0xa58>
   11d40:	463e                	lw	a2,204(sp)
   11d42:	844e                	mv	s0,s3
   11d44:	b179                	j	119d2 <_vfprintf_r+0x218>
   11d46:	4752                	lw	a4,20(sp)
   11d48:	010cf793          	andi	a5,s9,16
   11d4c:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe45a4>
   11d50:	0711                	addi	a4,a4,4
   11d52:	ca3a                	sw	a4,20(sp)
   11d54:	7c079e63          	bnez	a5,12530 <_vfprintf_r+0xd76>
   11d58:	040cf793          	andi	a5,s9,64
   11d5c:	7c078663          	beqz	a5,12528 <_vfprintf_r+0xd6e>
   11d60:	0b42                	slli	s6,s6,0x10
   11d62:	410b5b13          	srai	s6,s6,0x10
   11d66:	41fb5d93          	srai	s11,s6,0x1f
   11d6a:	87ee                	mv	a5,s11
   11d6c:	d807d2e3          	bgez	a5,11af0 <_vfprintf_r+0x336>
   11d70:	02d00713          	li	a4,45
   11d74:	016037b3          	snez	a5,s6
   11d78:	41b00db3          	neg	s11,s11
   11d7c:	0ae103a3          	sb	a4,167(sp)
   11d80:	40fd8db3          	sub	s11,s11,a5
   11d84:	41600b33          	neg	s6,s6
   11d88:	8ee6                	mv	t4,s9
   11d8a:	4785                	li	a5,1
   11d8c:	dc0ad9e3          	bgez	s5,11b5e <_vfprintf_r+0x3a4>
   11d90:	4705                	li	a4,1
   11d92:	0ee78363          	beq	a5,a4,11e78 <_vfprintf_r+0x6be>
   11d96:	4709                	li	a4,2
   11d98:	30e78763          	beq	a5,a4,120a6 <_vfprintf_r+0x8ec>
   11d9c:	19010d13          	addi	s10,sp,400
   11da0:	01dd9793          	slli	a5,s11,0x1d
   11da4:	007b7713          	andi	a4,s6,7
   11da8:	003b5b13          	srli	s6,s6,0x3
   11dac:	03070713          	addi	a4,a4,48
   11db0:	0167eb33          	or	s6,a5,s6
   11db4:	003ddd93          	srli	s11,s11,0x3
   11db8:	feed0fa3          	sb	a4,-1(s10)
   11dbc:	01bb67b3          	or	a5,s6,s11
   11dc0:	866a                	mv	a2,s10
   11dc2:	1d7d                	addi	s10,s10,-1
   11dc4:	fff1                	bnez	a5,11da0 <_vfprintf_r+0x5e6>
   11dc6:	001ef693          	andi	a3,t4,1
   11dca:	30068463          	beqz	a3,120d2 <_vfprintf_r+0x918>
   11dce:	03000693          	li	a3,48
   11dd2:	30d70063          	beq	a4,a3,120d2 <_vfprintf_r+0x918>
   11dd6:	1679                	addi	a2,a2,-2
   11dd8:	0b1c                	addi	a5,sp,400
   11dda:	fedd0fa3          	sb	a3,-1(s10)
   11dde:	40c78b33          	sub	s6,a5,a2
   11de2:	8cf6                	mv	s9,t4
   11de4:	8d32                	mv	s10,a2
   11de6:	b325                	j	11b0e <_vfprintf_r+0x354>
   11de8:	4752                	lw	a4,20(sp)
   11dea:	010cf793          	andi	a5,s9,16
   11dee:	00072b03          	lw	s6,0(a4)
   11df2:	0711                	addi	a4,a4,4
   11df4:	ca3a                	sw	a4,20(sp)
   11df6:	72079663          	bnez	a5,12522 <_vfprintf_r+0xd68>
   11dfa:	040cf793          	andi	a5,s9,64
   11dfe:	70078e63          	beqz	a5,1251a <_vfprintf_r+0xd60>
   11e02:	0b42                	slli	s6,s6,0x10
   11e04:	010b5b13          	srli	s6,s6,0x10
   11e08:	4d81                	li	s11,0
   11e0a:	b391                	j	11b4e <_vfprintf_r+0x394>
   11e0c:	4752                	lw	a4,20(sp)
   11e0e:	0a0103a3          	sb	zero,167(sp)
   11e12:	4d85                	li	s11,1
   11e14:	431c                	lw	a5,0(a4)
   11e16:	0711                	addi	a4,a4,4
   11e18:	ca3a                	sw	a4,20(sp)
   11e1a:	12f10623          	sb	a5,300(sp)
   11e1e:	4b05                	li	s6,1
   11e20:	12c10d13          	addi	s10,sp,300
   11e24:	be19                	j	1193a <_vfprintf_r+0x180>
   11e26:	47d2                	lw	a5,20(sp)
   11e28:	0a0103a3          	sb	zero,167(sp)
   11e2c:	0007ad03          	lw	s10,0(a5)
   11e30:	00478c13          	addi	s8,a5,4
   11e34:	7e0d0a63          	beqz	s10,12628 <_vfprintf_r+0xe6e>
   11e38:	420ac4e3          	bltz	s5,12a60 <_vfprintf_r+0x12a6>
   11e3c:	8656                	mv	a2,s5
   11e3e:	4581                	li	a1,0
   11e40:	856a                	mv	a0,s10
   11e42:	ca46                	sw	a7,20(sp)
   11e44:	4d5010ef          	jal	13b18 <memchr>
   11e48:	c82a                	sw	a0,16(sp)
   11e4a:	48d2                	lw	a7,20(sp)
   11e4c:	e119                	bnez	a0,11e52 <_vfprintf_r+0x698>
   11e4e:	25c0106f          	j	130aa <_vfprintf_r+0x18f0>
   11e52:	47c2                	lw	a5,16(sp)
   11e54:	0a714703          	lbu	a4,167(sp)
   11e58:	ca62                	sw	s8,20(sp)
   11e5a:	41a78b33          	sub	s6,a5,s10
   11e5e:	fffb4693          	not	a3,s6
   11e62:	86fd                	srai	a3,a3,0x1f
   11e64:	c802                	sw	zero,16(sp)
   11e66:	d402                	sw	zero,40(sp)
   11e68:	d202                	sw	zero,36(sp)
   11e6a:	ce02                	sw	zero,28(sp)
   11e6c:	00db7db3          	and	s11,s6,a3
   11e70:	4a81                	li	s5,0
   11e72:	ca071ae3          	bnez	a4,11b26 <_vfprintf_r+0x36c>
   11e76:	b4f9                	j	11944 <_vfprintf_r+0x18a>
   11e78:	1e0d98e3          	bnez	s11,12868 <_vfprintf_r+0x10ae>
   11e7c:	47a5                	li	a5,9
   11e7e:	1f67e5e3          	bltu	a5,s6,12868 <_vfprintf_r+0x10ae>
   11e82:	030b0b13          	addi	s6,s6,48
   11e86:	196107a3          	sb	s6,399(sp)
   11e8a:	8cf6                	mv	s9,t4
   11e8c:	4b05                	li	s6,1
   11e8e:	18f10d13          	addi	s10,sp,399
   11e92:	b9b5                	j	11b0e <_vfprintf_r+0x354>
   11e94:	47d2                	lw	a5,20(sp)
   11e96:	0007ab83          	lw	s7,0(a5)
   11e9a:	0791                	addi	a5,a5,4
   11e9c:	660bd163          	bgez	s7,124fe <_vfprintf_r+0xd44>
   11ea0:	41700bb3          	neg	s7,s7
   11ea4:	ca3e                	sw	a5,20(sp)
   11ea6:	00094883          	lbu	a7,0(s2)
   11eaa:	004cec93          	ori	s9,s9,4
   11eae:	bc35                	j	118ea <_vfprintf_r+0x130>
   11eb0:	02b00793          	li	a5,43
   11eb4:	00094883          	lbu	a7,0(s2)
   11eb8:	0af103a3          	sb	a5,167(sp)
   11ebc:	b43d                	j	118ea <_vfprintf_r+0x130>
   11ebe:	00094883          	lbu	a7,0(s2)
   11ec2:	080cec93          	ori	s9,s9,128
   11ec6:	b415                	j	118ea <_vfprintf_r+0x130>
   11ec8:	00094883          	lbu	a7,0(s2)
   11ecc:	02a00793          	li	a5,42
   11ed0:	00190693          	addi	a3,s2,1
   11ed4:	00f89463          	bne	a7,a5,11edc <_vfprintf_r+0x722>
   11ed8:	44c0106f          	j	13324 <_vfprintf_r+0x1b6a>
   11edc:	fd088793          	addi	a5,a7,-48
   11ee0:	4725                	li	a4,9
   11ee2:	4a81                	li	s5,0
   11ee4:	4625                	li	a2,9
   11ee6:	02f76063          	bltu	a4,a5,11f06 <_vfprintf_r+0x74c>
   11eea:	0006c883          	lbu	a7,0(a3)
   11eee:	002a9713          	slli	a4,s5,0x2
   11ef2:	9aba                	add	s5,s5,a4
   11ef4:	0a86                	slli	s5,s5,0x1
   11ef6:	9abe                	add	s5,s5,a5
   11ef8:	fd088793          	addi	a5,a7,-48
   11efc:	0685                	addi	a3,a3,1
   11efe:	fef676e3          	bgeu	a2,a5,11eea <_vfprintf_r+0x730>
   11f02:	680ac963          	bltz	s5,12594 <_vfprintf_r+0xdda>
   11f06:	8936                	mv	s2,a3
   11f08:	b2d5                	j	118ec <_vfprintf_r+0x132>
   11f0a:	00094883          	lbu	a7,0(s2)
   11f0e:	001cec93          	ori	s9,s9,1
   11f12:	bae1                	j	118ea <_vfprintf_r+0x130>
   11f14:	0a714783          	lbu	a5,167(sp)
   11f18:	00094883          	lbu	a7,0(s2)
   11f1c:	9c0797e3          	bnez	a5,118ea <_vfprintf_r+0x130>
   11f20:	02000793          	li	a5,32
   11f24:	0af103a3          	sb	a5,167(sp)
   11f28:	b2c9                	j	118ea <_vfprintf_r+0x130>
   11f2a:	010cee93          	ori	t4,s9,16
   11f2e:	020ef793          	andi	a5,t4,32
   11f32:	58078a63          	beqz	a5,124c6 <_vfprintf_r+0xd0c>
   11f36:	47d2                	lw	a5,20(sp)
   11f38:	00778c13          	addi	s8,a5,7
   11f3c:	ff8c7c13          	andi	s8,s8,-8
   11f40:	008c0793          	addi	a5,s8,8
   11f44:	ca3e                	sw	a5,20(sp)
   11f46:	000c2b03          	lw	s6,0(s8)
   11f4a:	004c2d83          	lw	s11,4(s8)
   11f4e:	4785                	li	a5,1
   11f50:	b111                	j	11b54 <_vfprintf_r+0x39a>
   11f52:	00094883          	lbu	a7,0(s2)
   11f56:	008cec93          	ori	s9,s9,8
   11f5a:	ba41                	j	118ea <_vfprintf_r+0x130>
   11f5c:	4752                	lw	a4,20(sp)
   11f5e:	67a1                	lui	a5,0x8
   11f60:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   11f64:	0af11423          	sh	a5,168(sp)
   11f68:	00470793          	addi	a5,a4,4
   11f6c:	ca3e                	sw	a5,20(sp)
   11f6e:	67e9                	lui	a5,0x1a
   11f70:	0e878793          	addi	a5,a5,232 # 1a0e8 <__clzsi2+0xd6>
   11f74:	da3e                	sw	a5,52(sp)
   11f76:	00072b03          	lw	s6,0(a4)
   11f7a:	4d81                	li	s11,0
   11f7c:	002cee93          	ori	t4,s9,2
   11f80:	4789                	li	a5,2
   11f82:	07800893          	li	a7,120
   11f86:	b6f9                	j	11b54 <_vfprintf_r+0x39a>
   11f88:	020cf793          	andi	a5,s9,32
   11f8c:	5c078463          	beqz	a5,12554 <_vfprintf_r+0xd9a>
   11f90:	47d2                	lw	a5,20(sp)
   11f92:	46b2                	lw	a3,12(sp)
   11f94:	439c                	lw	a5,0(a5)
   11f96:	41f6d713          	srai	a4,a3,0x1f
   11f9a:	c394                	sw	a3,0(a5)
   11f9c:	c3d8                	sw	a4,4(a5)
   11f9e:	47d2                	lw	a5,20(sp)
   11fa0:	8d4a                	mv	s10,s2
   11fa2:	0791                	addi	a5,a5,4
   11fa4:	ca3e                	sw	a5,20(sp)
   11fa6:	b485                	j	11a06 <_vfprintf_r+0x24c>
   11fa8:	00094883          	lbu	a7,0(s2)
   11fac:	06c00793          	li	a5,108
   11fb0:	64f88b63          	beq	a7,a5,12606 <_vfprintf_r+0xe4c>
   11fb4:	010cec93          	ori	s9,s9,16
   11fb8:	ba0d                	j	118ea <_vfprintf_r+0x130>
   11fba:	00094883          	lbu	a7,0(s2)
   11fbe:	06800793          	li	a5,104
   11fc2:	62f88b63          	beq	a7,a5,125f8 <_vfprintf_r+0xe3e>
   11fc6:	040cec93          	ori	s9,s9,64
   11fca:	b205                	j	118ea <_vfprintf_r+0x130>
   11fcc:	06500713          	li	a4,101
   11fd0:	cb175ce3          	bge	a4,a7,11c88 <_vfprintf_r+0x4ce>
   11fd4:	474e                	lw	a4,208(sp)
   11fd6:	010c                	addi	a1,sp,128
   11fd8:	0908                	addi	a0,sp,144
   11fda:	c93a                	sw	a4,144(sp)
   11fdc:	475e                	lw	a4,212(sp)
   11fde:	dc32                	sw	a2,56(sp)
   11fe0:	c102                	sw	zero,128(sp)
   11fe2:	cb3a                	sw	a4,148(sp)
   11fe4:	476e                	lw	a4,216(sp)
   11fe6:	c302                	sw	zero,132(sp)
   11fe8:	c502                	sw	zero,136(sp)
   11fea:	cd3a                	sw	a4,152(sp)
   11fec:	477e                	lw	a4,220(sp)
   11fee:	c702                	sw	zero,140(sp)
   11ff0:	cf3a                	sw	a4,156(sp)
   11ff2:	3b1050ef          	jal	17ba2 <__eqtf2>
   11ff6:	5662                	lw	a2,56(sp)
   11ff8:	36051363          	bnez	a0,1235e <_vfprintf_r+0xba4>
   11ffc:	47ae                	lw	a5,200(sp)
   11ffe:	6769                	lui	a4,0x1a
   12000:	11870713          	addi	a4,a4,280 # 1a118 <__clzsi2+0x106>
   12004:	c018                	sw	a4,0(s0)
   12006:	0605                	addi	a2,a2,1
   12008:	4705                	li	a4,1
   1200a:	0785                	addi	a5,a5,1
   1200c:	c058                	sw	a4,4(s0)
   1200e:	c7b2                	sw	a2,204(sp)
   12010:	c5be                	sw	a5,200(sp)
   12012:	471d                	li	a4,7
   12014:	0421                	addi	s0,s0,8
   12016:	16f74de3          	blt	a4,a5,12990 <_vfprintf_r+0x11d6>
   1201a:	57ba                	lw	a5,172(sp)
   1201c:	5702                	lw	a4,32(sp)
   1201e:	4ce7db63          	bge	a5,a4,124f4 <_vfprintf_r+0xd3a>
   12022:	57c2                	lw	a5,48(sp)
   12024:	5732                	lw	a4,44(sp)
   12026:	0421                	addi	s0,s0,8
   12028:	fef42c23          	sw	a5,-8(s0)
   1202c:	47ae                	lw	a5,200(sp)
   1202e:	963a                	add	a2,a2,a4
   12030:	fee42e23          	sw	a4,-4(s0)
   12034:	0785                	addi	a5,a5,1
   12036:	c7b2                	sw	a2,204(sp)
   12038:	c5be                	sw	a5,200(sp)
   1203a:	471d                	li	a4,7
   1203c:	5cf74c63          	blt	a4,a5,12614 <_vfprintf_r+0xe5a>
   12040:	5782                	lw	a5,32(sp)
   12042:	fff78a93          	addi	s5,a5,-1
   12046:	995056e3          	blez	s5,119d2 <_vfprintf_r+0x218>
   1204a:	6869                	lui	a6,0x1a
   1204c:	56c80813          	addi	a6,a6,1388 # 1a56c <zeroes.0>
   12050:	4741                	li	a4,16
   12052:	47ae                	lw	a5,200(sp)
   12054:	4b41                	li	s6,16
   12056:	4c1d                	li	s8,7
   12058:	8d42                	mv	s10,a6
   1205a:	01574763          	blt	a4,s5,12068 <_vfprintf_r+0x8ae>
   1205e:	14b0006f          	j	129a8 <_vfprintf_r+0x11ee>
   12062:	1ac1                	addi	s5,s5,-16
   12064:	155b51e3          	bge	s6,s5,129a6 <_vfprintf_r+0x11ec>
   12068:	0641                	addi	a2,a2,16
   1206a:	0785                	addi	a5,a5,1
   1206c:	01a42023          	sw	s10,0(s0)
   12070:	01642223          	sw	s6,4(s0)
   12074:	c7b2                	sw	a2,204(sp)
   12076:	c5be                	sw	a5,200(sp)
   12078:	0421                	addi	s0,s0,8
   1207a:	fefc54e3          	bge	s8,a5,12062 <_vfprintf_r+0x8a8>
   1207e:	4522                	lw	a0,8(sp)
   12080:	01d0                	addi	a2,sp,196
   12082:	85a6                	mv	a1,s1
   12084:	37c010ef          	jal	13400 <__sprint_r>
   12088:	18051563          	bnez	a0,12212 <_vfprintf_r+0xa58>
   1208c:	463e                	lw	a2,204(sp)
   1208e:	47ae                	lw	a5,200(sp)
   12090:	844e                	mv	s0,s3
   12092:	bfc1                	j	12062 <_vfprintf_r+0x8a8>
   12094:	4705                	li	a4,1
   12096:	00e79463          	bne	a5,a4,1209e <_vfprintf_r+0x8e4>
   1209a:	0f20106f          	j	1318c <_vfprintf_r+0x19d2>
   1209e:	4709                	li	a4,2
   120a0:	8ee6                	mv	t4,s9
   120a2:	cee79de3          	bne	a5,a4,11d9c <_vfprintf_r+0x5e2>
   120a6:	56d2                	lw	a3,52(sp)
   120a8:	19010d13          	addi	s10,sp,400
   120ac:	00fb7793          	andi	a5,s6,15
   120b0:	97b6                	add	a5,a5,a3
   120b2:	0007c703          	lbu	a4,0(a5)
   120b6:	004b5b13          	srli	s6,s6,0x4
   120ba:	01cd9793          	slli	a5,s11,0x1c
   120be:	0167eb33          	or	s6,a5,s6
   120c2:	004ddd93          	srli	s11,s11,0x4
   120c6:	feed0fa3          	sb	a4,-1(s10)
   120ca:	01bb67b3          	or	a5,s6,s11
   120ce:	1d7d                	addi	s10,s10,-1
   120d0:	fff1                	bnez	a5,120ac <_vfprintf_r+0x8f2>
   120d2:	0b1c                	addi	a5,sp,400
   120d4:	41a78b33          	sub	s6,a5,s10
   120d8:	8cf6                	mv	s9,t4
   120da:	bc15                	j	11b0e <_vfprintf_r+0x354>
   120dc:	41bb8c33          	sub	s8,s7,s11
   120e0:	8d8054e3          	blez	s8,119a8 <_vfprintf_r+0x1ee>
   120e4:	6869                	lui	a6,0x1a
   120e6:	4541                	li	a0,16
   120e8:	45ae                	lw	a1,200(sp)
   120ea:	56c80813          	addi	a6,a6,1388 # 1a56c <zeroes.0>
   120ee:	05855f63          	bge	a0,s8,1214c <_vfprintf_r+0x992>
   120f2:	dc4a                	sw	s2,56(sp)
   120f4:	87a2                	mv	a5,s0
   120f6:	4ec1                	li	t4,16
   120f8:	8462                	mv	s0,s8
   120fa:	4f9d                	li	t6,7
   120fc:	8c5a                	mv	s8,s6
   120fe:	8942                	mv	s2,a6
   12100:	8b56                	mv	s6,s5
   12102:	8ac6                	mv	s5,a7
   12104:	a021                	j	1210c <_vfprintf_r+0x952>
   12106:	1441                	addi	s0,s0,-16
   12108:	028edb63          	bge	t4,s0,1213e <_vfprintf_r+0x984>
   1210c:	0641                	addi	a2,a2,16
   1210e:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   12110:	0127a023          	sw	s2,0(a5)
   12114:	01d7a223          	sw	t4,4(a5)
   12118:	c7b2                	sw	a2,204(sp)
   1211a:	c5ae                	sw	a1,200(sp)
   1211c:	07a1                	addi	a5,a5,8
   1211e:	febfd4e3          	bge	t6,a1,12106 <_vfprintf_r+0x94c>
   12122:	4522                	lw	a0,8(sp)
   12124:	01d0                	addi	a2,sp,196
   12126:	85a6                	mv	a1,s1
   12128:	2d8010ef          	jal	13400 <__sprint_r>
   1212c:	e17d                	bnez	a0,12212 <_vfprintf_r+0xa58>
   1212e:	4ec1                	li	t4,16
   12130:	1441                	addi	s0,s0,-16
   12132:	463e                	lw	a2,204(sp)
   12134:	45ae                	lw	a1,200(sp)
   12136:	87ce                	mv	a5,s3
   12138:	4f9d                	li	t6,7
   1213a:	fc8ec9e3          	blt	t4,s0,1210c <_vfprintf_r+0x952>
   1213e:	884a                	mv	a6,s2
   12140:	5962                	lw	s2,56(sp)
   12142:	88d6                	mv	a7,s5
   12144:	8ada                	mv	s5,s6
   12146:	8b62                	mv	s6,s8
   12148:	8c22                	mv	s8,s0
   1214a:	843e                	mv	s0,a5
   1214c:	9662                	add	a2,a2,s8
   1214e:	0585                	addi	a1,a1,1
   12150:	01042023          	sw	a6,0(s0)
   12154:	01842223          	sw	s8,4(s0)
   12158:	c7b2                	sw	a2,204(sp)
   1215a:	c5ae                	sw	a1,200(sp)
   1215c:	471d                	li	a4,7
   1215e:	0421                	addi	s0,s0,8
   12160:	84b754e3          	bge	a4,a1,119a8 <_vfprintf_r+0x1ee>
   12164:	4522                	lw	a0,8(sp)
   12166:	01d0                	addi	a2,sp,196
   12168:	85a6                	mv	a1,s1
   1216a:	dc46                	sw	a7,56(sp)
   1216c:	294010ef          	jal	13400 <__sprint_r>
   12170:	e14d                	bnez	a0,12212 <_vfprintf_r+0xa58>
   12172:	463e                	lw	a2,204(sp)
   12174:	58e2                	lw	a7,56(sp)
   12176:	844e                	mv	s0,s3
   12178:	831ff06f          	j	119a8 <_vfprintf_r+0x1ee>
   1217c:	6869                	lui	a6,0x1a
   1217e:	4741                	li	a4,16
   12180:	45ae                	lw	a1,200(sp)
   12182:	56c80813          	addi	a6,a6,1388 # 1a56c <zeroes.0>
   12186:	05575763          	bge	a4,s5,121d4 <_vfprintf_r+0xa1a>
   1218a:	87a2                	mv	a5,s0
   1218c:	4741                	li	a4,16
   1218e:	8456                	mv	s0,s5
   12190:	4c1d                	li	s8,7
   12192:	dc46                	sw	a7,56(sp)
   12194:	8ad2                	mv	s5,s4
   12196:	a021                	j	1219e <_vfprintf_r+0x9e4>
   12198:	1441                	addi	s0,s0,-16
   1219a:	02875963          	bge	a4,s0,121cc <_vfprintf_r+0xa12>
   1219e:	0641                	addi	a2,a2,16
   121a0:	0585                	addi	a1,a1,1
   121a2:	0147a023          	sw	s4,0(a5)
   121a6:	c3d8                	sw	a4,4(a5)
   121a8:	c7b2                	sw	a2,204(sp)
   121aa:	c5ae                	sw	a1,200(sp)
   121ac:	07a1                	addi	a5,a5,8
   121ae:	febc55e3          	bge	s8,a1,12198 <_vfprintf_r+0x9de>
   121b2:	4522                	lw	a0,8(sp)
   121b4:	01d0                	addi	a2,sp,196
   121b6:	85a6                	mv	a1,s1
   121b8:	248010ef          	jal	13400 <__sprint_r>
   121bc:	e939                	bnez	a0,12212 <_vfprintf_r+0xa58>
   121be:	4741                	li	a4,16
   121c0:	1441                	addi	s0,s0,-16
   121c2:	463e                	lw	a2,204(sp)
   121c4:	45ae                	lw	a1,200(sp)
   121c6:	87ce                	mv	a5,s3
   121c8:	fc874be3          	blt	a4,s0,1219e <_vfprintf_r+0x9e4>
   121cc:	58e2                	lw	a7,56(sp)
   121ce:	8856                	mv	a6,s5
   121d0:	8aa2                	mv	s5,s0
   121d2:	843e                	mv	s0,a5
   121d4:	9656                	add	a2,a2,s5
   121d6:	0585                	addi	a1,a1,1
   121d8:	01042023          	sw	a6,0(s0)
   121dc:	01542223          	sw	s5,4(s0)
   121e0:	c7b2                	sw	a2,204(sp)
   121e2:	c5ae                	sw	a1,200(sp)
   121e4:	471d                	li	a4,7
   121e6:	0421                	addi	s0,s0,8
   121e8:	fcb75463          	bge	a4,a1,119b0 <_vfprintf_r+0x1f6>
   121ec:	4522                	lw	a0,8(sp)
   121ee:	01d0                	addi	a2,sp,196
   121f0:	85a6                	mv	a1,s1
   121f2:	dc46                	sw	a7,56(sp)
   121f4:	20c010ef          	jal	13400 <__sprint_r>
   121f8:	ed09                	bnez	a0,12212 <_vfprintf_r+0xa58>
   121fa:	463e                	lw	a2,204(sp)
   121fc:	58e2                	lw	a7,56(sp)
   121fe:	844e                	mv	s0,s3
   12200:	fb0ff06f          	j	119b0 <_vfprintf_r+0x1f6>
   12204:	4522                	lw	a0,8(sp)
   12206:	01d0                	addi	a2,sp,196
   12208:	85a6                	mv	a1,s1
   1220a:	1f6010ef          	jal	13400 <__sprint_r>
   1220e:	fe050363          	beqz	a0,119f4 <_vfprintf_r+0x23a>
   12212:	45c2                	lw	a1,16(sp)
   12214:	800581e3          	beqz	a1,11a16 <_vfprintf_r+0x25c>
   12218:	4522                	lw	a0,8(sp)
   1221a:	dd7fe0ef          	jal	10ff0 <_free_r>
   1221e:	ff8ff06f          	j	11a16 <_vfprintf_r+0x25c>
   12222:	8ee6                	mv	t4,s9
   12224:	b6b5                	j	11d90 <_vfprintf_r+0x5d6>
   12226:	6869                	lui	a6,0x1a
   12228:	4541                	li	a0,16
   1222a:	45ae                	lw	a1,200(sp)
   1222c:	57c80c13          	addi	s8,a6,1404 # 1a57c <blanks.1>
   12230:	06e55363          	bge	a0,a4,12296 <_vfprintf_r+0xadc>
   12234:	c8ca                	sw	s2,80(sp)
   12236:	87a2                	mv	a5,s0
   12238:	8962                	mv	s2,s8
   1223a:	4ec1                	li	t4,16
   1223c:	8c5a                	mv	s8,s6
   1223e:	439d                	li	t2,7
   12240:	8b56                	mv	s6,s5
   12242:	dc16                	sw	t0,56(sp)
   12244:	c6fe                	sw	t6,76(sp)
   12246:	843a                	mv	s0,a4
   12248:	8ac6                	mv	s5,a7
   1224a:	a021                	j	12252 <_vfprintf_r+0xa98>
   1224c:	1441                	addi	s0,s0,-16
   1224e:	028edb63          	bge	t4,s0,12284 <_vfprintf_r+0xaca>
   12252:	0641                	addi	a2,a2,16
   12254:	0585                	addi	a1,a1,1
   12256:	0127a023          	sw	s2,0(a5)
   1225a:	01d7a223          	sw	t4,4(a5)
   1225e:	c7b2                	sw	a2,204(sp)
   12260:	c5ae                	sw	a1,200(sp)
   12262:	07a1                	addi	a5,a5,8
   12264:	feb3d4e3          	bge	t2,a1,1224c <_vfprintf_r+0xa92>
   12268:	4522                	lw	a0,8(sp)
   1226a:	01d0                	addi	a2,sp,196
   1226c:	85a6                	mv	a1,s1
   1226e:	192010ef          	jal	13400 <__sprint_r>
   12272:	f145                	bnez	a0,12212 <_vfprintf_r+0xa58>
   12274:	4ec1                	li	t4,16
   12276:	1441                	addi	s0,s0,-16
   12278:	463e                	lw	a2,204(sp)
   1227a:	45ae                	lw	a1,200(sp)
   1227c:	87ce                	mv	a5,s3
   1227e:	439d                	li	t2,7
   12280:	fc8ec9e3          	blt	t4,s0,12252 <_vfprintf_r+0xa98>
   12284:	88d6                	mv	a7,s5
   12286:	52e2                	lw	t0,56(sp)
   12288:	8ada                	mv	s5,s6
   1228a:	4fb6                	lw	t6,76(sp)
   1228c:	8b62                	mv	s6,s8
   1228e:	8c4a                	mv	s8,s2
   12290:	4946                	lw	s2,80(sp)
   12292:	8722                	mv	a4,s0
   12294:	843e                	mv	s0,a5
   12296:	963a                	add	a2,a2,a4
   12298:	0585                	addi	a1,a1,1
   1229a:	c058                	sw	a4,4(s0)
   1229c:	01842023          	sw	s8,0(s0)
   122a0:	c7b2                	sw	a2,204(sp)
   122a2:	c5ae                	sw	a1,200(sp)
   122a4:	471d                	li	a4,7
   122a6:	0421                	addi	s0,s0,8
   122a8:	eab75c63          	bge	a4,a1,11960 <_vfprintf_r+0x1a6>
   122ac:	4522                	lw	a0,8(sp)
   122ae:	01d0                	addi	a2,sp,196
   122b0:	85a6                	mv	a1,s1
   122b2:	c8c6                	sw	a7,80(sp)
   122b4:	c6fe                	sw	t6,76(sp)
   122b6:	dc16                	sw	t0,56(sp)
   122b8:	148010ef          	jal	13400 <__sprint_r>
   122bc:	f939                	bnez	a0,12212 <_vfprintf_r+0xa58>
   122be:	463e                	lw	a2,204(sp)
   122c0:	48c6                	lw	a7,80(sp)
   122c2:	4fb6                	lw	t6,76(sp)
   122c4:	52e2                	lw	t0,56(sp)
   122c6:	844e                	mv	s0,s3
   122c8:	e98ff06f          	j	11960 <_vfprintf_r+0x1a6>
   122cc:	4522                	lw	a0,8(sp)
   122ce:	01d0                	addi	a2,sp,196
   122d0:	85a6                	mv	a1,s1
   122d2:	c6c6                	sw	a7,76(sp)
   122d4:	dc7e                	sw	t6,56(sp)
   122d6:	12a010ef          	jal	13400 <__sprint_r>
   122da:	fd05                	bnez	a0,12212 <_vfprintf_r+0xa58>
   122dc:	463e                	lw	a2,204(sp)
   122de:	48b6                	lw	a7,76(sp)
   122e0:	5fe2                	lw	t6,56(sp)
   122e2:	844e                	mv	s0,s3
   122e4:	ebcff06f          	j	119a0 <_vfprintf_r+0x1e6>
   122e8:	6869                	lui	a6,0x1a
   122ea:	4741                	li	a4,16
   122ec:	47ae                	lw	a5,200(sp)
   122ee:	57c80c13          	addi	s8,a6,1404 # 1a57c <blanks.1>
   122f2:	05575163          	bge	a4,s5,12334 <_vfprintf_r+0xb7a>
   122f6:	4d22                	lw	s10,8(sp)
   122f8:	4b41                	li	s6,16
   122fa:	4c9d                	li	s9,7
   122fc:	a021                	j	12304 <_vfprintf_r+0xb4a>
   122fe:	1ac1                	addi	s5,s5,-16
   12300:	035b5a63          	bge	s6,s5,12334 <_vfprintf_r+0xb7a>
   12304:	0641                	addi	a2,a2,16
   12306:	0785                	addi	a5,a5,1
   12308:	01842023          	sw	s8,0(s0)
   1230c:	01642223          	sw	s6,4(s0)
   12310:	c7b2                	sw	a2,204(sp)
   12312:	c5be                	sw	a5,200(sp)
   12314:	0421                	addi	s0,s0,8
   12316:	fefcd4e3          	bge	s9,a5,122fe <_vfprintf_r+0xb44>
   1231a:	01d0                	addi	a2,sp,196
   1231c:	85a6                	mv	a1,s1
   1231e:	856a                	mv	a0,s10
   12320:	0e0010ef          	jal	13400 <__sprint_r>
   12324:	ee0517e3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12328:	1ac1                	addi	s5,s5,-16
   1232a:	463e                	lw	a2,204(sp)
   1232c:	47ae                	lw	a5,200(sp)
   1232e:	844e                	mv	s0,s3
   12330:	fd5b4ae3          	blt	s6,s5,12304 <_vfprintf_r+0xb4a>
   12334:	9656                	add	a2,a2,s5
   12336:	0785                	addi	a5,a5,1
   12338:	01842023          	sw	s8,0(s0)
   1233c:	01542223          	sw	s5,4(s0)
   12340:	c7b2                	sw	a2,204(sp)
   12342:	c5be                	sw	a5,200(sp)
   12344:	471d                	li	a4,7
   12346:	e8f75e63          	bge	a4,a5,119e2 <_vfprintf_r+0x228>
   1234a:	4522                	lw	a0,8(sp)
   1234c:	01d0                	addi	a2,sp,196
   1234e:	85a6                	mv	a1,s1
   12350:	0b0010ef          	jal	13400 <__sprint_r>
   12354:	ea051fe3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12358:	463e                	lw	a2,204(sp)
   1235a:	e88ff06f          	j	119e2 <_vfprintf_r+0x228>
   1235e:	553a                	lw	a0,172(sp)
   12360:	5ca05e63          	blez	a0,1293c <_vfprintf_r+0x1182>
   12364:	47f2                	lw	a5,28(sp)
   12366:	5702                	lw	a4,32(sp)
   12368:	8abe                	mv	s5,a5
   1236a:	22f74163          	blt	a4,a5,1258c <_vfprintf_r+0xdd2>
   1236e:	01505f63          	blez	s5,1238c <_vfprintf_r+0xbd2>
   12372:	472e                	lw	a4,200(sp)
   12374:	9656                	add	a2,a2,s5
   12376:	01a42023          	sw	s10,0(s0)
   1237a:	0705                	addi	a4,a4,1
   1237c:	01542223          	sw	s5,4(s0)
   12380:	c7b2                	sw	a2,204(sp)
   12382:	c5ba                	sw	a4,200(sp)
   12384:	459d                	li	a1,7
   12386:	0421                	addi	s0,s0,8
   12388:	14e5c5e3          	blt	a1,a4,12cd2 <_vfprintf_r+0x1518>
   1238c:	fffac713          	not	a4,s5
   12390:	47f2                	lw	a5,28(sp)
   12392:	877d                	srai	a4,a4,0x1f
   12394:	00eafab3          	and	s5,s5,a4
   12398:	41578ab3          	sub	s5,a5,s5
   1239c:	2b504163          	bgtz	s5,1263e <_vfprintf_r+0xe84>
   123a0:	47f2                	lw	a5,28(sp)
   123a2:	400cf713          	andi	a4,s9,1024
   123a6:	00fd0c33          	add	s8,s10,a5
   123aa:	7a071e63          	bnez	a4,12b66 <_vfprintf_r+0x13ac>
   123ae:	5aba                	lw	s5,172(sp)
   123b0:	5782                	lw	a5,32(sp)
   123b2:	2cfaca63          	blt	s5,a5,12686 <_vfprintf_r+0xecc>
   123b6:	001cf713          	andi	a4,s9,1
   123ba:	2c071663          	bnez	a4,12686 <_vfprintf_r+0xecc>
   123be:	5702                	lw	a4,32(sp)
   123c0:	00ed07b3          	add	a5,s10,a4
   123c4:	41570ab3          	sub	s5,a4,s5
   123c8:	41878b33          	sub	s6,a5,s8
   123cc:	016ad363          	bge	s5,s6,123d2 <_vfprintf_r+0xc18>
   123d0:	8b56                	mv	s6,s5
   123d2:	01605f63          	blez	s6,123f0 <_vfprintf_r+0xc36>
   123d6:	47ae                	lw	a5,200(sp)
   123d8:	965a                	add	a2,a2,s6
   123da:	01842023          	sw	s8,0(s0)
   123de:	0785                	addi	a5,a5,1
   123e0:	01642223          	sw	s6,4(s0)
   123e4:	c7b2                	sw	a2,204(sp)
   123e6:	c5be                	sw	a5,200(sp)
   123e8:	471d                	li	a4,7
   123ea:	0421                	addi	s0,s0,8
   123ec:	4cf74de3          	blt	a4,a5,130c6 <_vfprintf_r+0x190c>
   123f0:	fffb4793          	not	a5,s6
   123f4:	87fd                	srai	a5,a5,0x1f
   123f6:	00fb7b33          	and	s6,s6,a5
   123fa:	416a8ab3          	sub	s5,s5,s6
   123fe:	dd505a63          	blez	s5,119d2 <_vfprintf_r+0x218>
   12402:	6869                	lui	a6,0x1a
   12404:	56c80813          	addi	a6,a6,1388 # 1a56c <zeroes.0>
   12408:	4741                	li	a4,16
   1240a:	47ae                	lw	a5,200(sp)
   1240c:	4b41                	li	s6,16
   1240e:	4c1d                	li	s8,7
   12410:	8d42                	mv	s10,a6
   12412:	01574663          	blt	a4,s5,1241e <_vfprintf_r+0xc64>
   12416:	ab49                	j	129a8 <_vfprintf_r+0x11ee>
   12418:	1ac1                	addi	s5,s5,-16
   1241a:	595b5663          	bge	s6,s5,129a6 <_vfprintf_r+0x11ec>
   1241e:	0641                	addi	a2,a2,16
   12420:	0785                	addi	a5,a5,1
   12422:	01a42023          	sw	s10,0(s0)
   12426:	01642223          	sw	s6,4(s0)
   1242a:	c7b2                	sw	a2,204(sp)
   1242c:	c5be                	sw	a5,200(sp)
   1242e:	0421                	addi	s0,s0,8
   12430:	fefc54e3          	bge	s8,a5,12418 <_vfprintf_r+0xc5e>
   12434:	4522                	lw	a0,8(sp)
   12436:	01d0                	addi	a2,sp,196
   12438:	85a6                	mv	a1,s1
   1243a:	7c7000ef          	jal	13400 <__sprint_r>
   1243e:	dc051ae3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12442:	463e                	lw	a2,204(sp)
   12444:	47ae                	lw	a5,200(sp)
   12446:	844e                	mv	s0,s3
   12448:	bfc1                	j	12418 <_vfprintf_r+0xc5e>
   1244a:	001cf593          	andi	a1,s9,1
   1244e:	840599e3          	bnez	a1,11ca0 <_vfprintf_r+0x4e6>
   12452:	c058                	sw	a4,4(s0)
   12454:	c7e2                	sw	s8,204(sp)
   12456:	c5d6                	sw	s5,200(sp)
   12458:	479d                	li	a5,7
   1245a:	8b57dbe3          	bge	a5,s5,11d10 <_vfprintf_r+0x556>
   1245e:	4522                	lw	a0,8(sp)
   12460:	01d0                	addi	a2,sp,196
   12462:	85a6                	mv	a1,s1
   12464:	79d000ef          	jal	13400 <__sprint_r>
   12468:	da0515e3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   1246c:	4c3e                	lw	s8,204(sp)
   1246e:	4aae                	lw	s5,200(sp)
   12470:	8b4e                	mv	s6,s3
   12472:	b879                	j	11d10 <_vfprintf_r+0x556>
   12474:	5702                	lw	a4,32(sp)
   12476:	4785                	li	a5,1
   12478:	88e7dce3          	bge	a5,a4,11d10 <_vfprintf_r+0x556>
   1247c:	6869                	lui	a6,0x1a
   1247e:	47c5                	li	a5,17
   12480:	56c80813          	addi	a6,a6,1388 # 1a56c <zeroes.0>
   12484:	60e7d863          	bge	a5,a4,12a94 <_vfprintf_r+0x12da>
   12488:	ce4a                	sw	s2,28(sp)
   1248a:	47c1                	li	a5,16
   1248c:	4d1d                	li	s10,7
   1248e:	8942                	mv	s2,a6
   12490:	a021                	j	12498 <_vfprintf_r+0xcde>
   12492:	1441                	addi	s0,s0,-16
   12494:	5e87de63          	bge	a5,s0,12a90 <_vfprintf_r+0x12d6>
   12498:	0c41                	addi	s8,s8,16
   1249a:	0a85                	addi	s5,s5,1
   1249c:	012b2023          	sw	s2,0(s6)
   124a0:	00fb2223          	sw	a5,4(s6)
   124a4:	c7e2                	sw	s8,204(sp)
   124a6:	c5d6                	sw	s5,200(sp)
   124a8:	0b21                	addi	s6,s6,8
   124aa:	ff5d54e3          	bge	s10,s5,12492 <_vfprintf_r+0xcd8>
   124ae:	4522                	lw	a0,8(sp)
   124b0:	01d0                	addi	a2,sp,196
   124b2:	85a6                	mv	a1,s1
   124b4:	74d000ef          	jal	13400 <__sprint_r>
   124b8:	d4051de3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   124bc:	4c3e                	lw	s8,204(sp)
   124be:	4aae                	lw	s5,200(sp)
   124c0:	8b4e                	mv	s6,s3
   124c2:	47c1                	li	a5,16
   124c4:	b7f9                	j	12492 <_vfprintf_r+0xcd8>
   124c6:	4752                	lw	a4,20(sp)
   124c8:	010ef793          	andi	a5,t4,16
   124cc:	00072b03          	lw	s6,0(a4)
   124d0:	0711                	addi	a4,a4,4
   124d2:	ca3a                	sw	a4,20(sp)
   124d4:	ef9d                	bnez	a5,12512 <_vfprintf_r+0xd58>
   124d6:	040ef793          	andi	a5,t4,64
   124da:	c79d                	beqz	a5,12508 <_vfprintf_r+0xd4e>
   124dc:	0b42                	slli	s6,s6,0x10
   124de:	010b5b13          	srli	s6,s6,0x10
   124e2:	4d81                	li	s11,0
   124e4:	4785                	li	a5,1
   124e6:	e6eff06f          	j	11b54 <_vfprintf_r+0x39a>
   124ea:	4b01                	li	s6,0
   124ec:	19010d13          	addi	s10,sp,400
   124f0:	e1eff06f          	j	11b0e <_vfprintf_r+0x354>
   124f4:	001cf793          	andi	a5,s9,1
   124f8:	cc078d63          	beqz	a5,119d2 <_vfprintf_r+0x218>
   124fc:	b61d                	j	12022 <_vfprintf_r+0x868>
   124fe:	00094883          	lbu	a7,0(s2)
   12502:	ca3e                	sw	a5,20(sp)
   12504:	be6ff06f          	j	118ea <_vfprintf_r+0x130>
   12508:	200ef793          	andi	a5,t4,512
   1250c:	c399                	beqz	a5,12512 <_vfprintf_r+0xd58>
   1250e:	0ffb7b13          	zext.b	s6,s6
   12512:	4d81                	li	s11,0
   12514:	4785                	li	a5,1
   12516:	e3eff06f          	j	11b54 <_vfprintf_r+0x39a>
   1251a:	200cf793          	andi	a5,s9,512
   1251e:	7e079563          	bnez	a5,12d08 <_vfprintf_r+0x154e>
   12522:	4d81                	li	s11,0
   12524:	e2aff06f          	j	11b4e <_vfprintf_r+0x394>
   12528:	200cf793          	andi	a5,s9,512
   1252c:	7c079663          	bnez	a5,12cf8 <_vfprintf_r+0x153e>
   12530:	41fb5d93          	srai	s11,s6,0x1f
   12534:	87ee                	mv	a5,s11
   12536:	db6ff06f          	j	11aec <_vfprintf_r+0x332>
   1253a:	57f2                	lw	a5,60(sp)
   1253c:	00094883          	lbu	a7,0(s2)
   12540:	ba078563          	beqz	a5,118ea <_vfprintf_r+0x130>
   12544:	0007c783          	lbu	a5,0(a5)
   12548:	ba078163          	beqz	a5,118ea <_vfprintf_r+0x130>
   1254c:	400cec93          	ori	s9,s9,1024
   12550:	b9aff06f          	j	118ea <_vfprintf_r+0x130>
   12554:	010cf793          	andi	a5,s9,16
   12558:	4c079063          	bnez	a5,12a18 <_vfprintf_r+0x125e>
   1255c:	040cf793          	andi	a5,s9,64
   12560:	78079563          	bnez	a5,12cea <_vfprintf_r+0x1530>
   12564:	200cfe13          	andi	t3,s9,512
   12568:	4a0e0863          	beqz	t3,12a18 <_vfprintf_r+0x125e>
   1256c:	47d2                	lw	a5,20(sp)
   1256e:	4732                	lw	a4,12(sp)
   12570:	439c                	lw	a5,0(a5)
   12572:	00e78023          	sb	a4,0(a5)
   12576:	b425                	j	11f9e <_vfprintf_r+0x7e4>
   12578:	47d2                	lw	a5,20(sp)
   1257a:	4398                	lw	a4,0(a5)
   1257c:	0791                	addi	a5,a5,4
   1257e:	ca3e                	sw	a5,20(sp)
   12580:	430c                	lw	a1,0(a4)
   12582:	4350                	lw	a2,4(a4)
   12584:	4714                	lw	a3,8(a4)
   12586:	4758                	lw	a4,12(a4)
   12588:	e52ff06f          	j	11bda <_vfprintf_r+0x420>
   1258c:	8aba                	mv	s5,a4
   1258e:	df5042e3          	bgtz	s5,12372 <_vfprintf_r+0xbb8>
   12592:	bbed                	j	1238c <_vfprintf_r+0xbd2>
   12594:	5afd                	li	s5,-1
   12596:	8936                	mv	s2,a3
   12598:	b54ff06f          	j	118ec <_vfprintf_r+0x132>
   1259c:	67e9                	lui	a5,0x1a
   1259e:	0fc78793          	addi	a5,a5,252 # 1a0fc <__clzsi2+0xea>
   125a2:	da3e                	sw	a5,52(sp)
   125a4:	020cf793          	andi	a5,s9,32
   125a8:	26078263          	beqz	a5,1280c <_vfprintf_r+0x1052>
   125ac:	47d2                	lw	a5,20(sp)
   125ae:	00778c13          	addi	s8,a5,7
   125b2:	ff8c7c13          	andi	s8,s8,-8
   125b6:	000c2b03          	lw	s6,0(s8)
   125ba:	004c2d83          	lw	s11,4(s8)
   125be:	008c0793          	addi	a5,s8,8
   125c2:	ca3e                	sw	a5,20(sp)
   125c4:	001cf793          	andi	a5,s9,1
   125c8:	cf81                	beqz	a5,125e0 <_vfprintf_r+0xe26>
   125ca:	01bb67b3          	or	a5,s6,s11
   125ce:	cb89                	beqz	a5,125e0 <_vfprintf_r+0xe26>
   125d0:	03000793          	li	a5,48
   125d4:	0af10423          	sb	a5,168(sp)
   125d8:	0b1104a3          	sb	a7,169(sp)
   125dc:	002cec93          	ori	s9,s9,2
   125e0:	bffcfe93          	andi	t4,s9,-1025
   125e4:	4789                	li	a5,2
   125e6:	d6eff06f          	j	11b54 <_vfprintf_r+0x39a>
   125ea:	8ee6                	mv	t4,s9
   125ec:	b289                	j	11f2e <_vfprintf_r+0x774>
   125ee:	67e9                	lui	a5,0x1a
   125f0:	0e878793          	addi	a5,a5,232 # 1a0e8 <__clzsi2+0xd6>
   125f4:	da3e                	sw	a5,52(sp)
   125f6:	b77d                	j	125a4 <_vfprintf_r+0xdea>
   125f8:	00194883          	lbu	a7,1(s2)
   125fc:	200cec93          	ori	s9,s9,512
   12600:	0905                	addi	s2,s2,1
   12602:	ae8ff06f          	j	118ea <_vfprintf_r+0x130>
   12606:	00194883          	lbu	a7,1(s2)
   1260a:	020cec93          	ori	s9,s9,32
   1260e:	0905                	addi	s2,s2,1
   12610:	adaff06f          	j	118ea <_vfprintf_r+0x130>
   12614:	4522                	lw	a0,8(sp)
   12616:	01d0                	addi	a2,sp,196
   12618:	85a6                	mv	a1,s1
   1261a:	5e7000ef          	jal	13400 <__sprint_r>
   1261e:	be051ae3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12622:	463e                	lw	a2,204(sp)
   12624:	844e                	mv	s0,s3
   12626:	bc29                	j	12040 <_vfprintf_r+0x886>
   12628:	4799                	li	a5,6
   1262a:	8b56                	mv	s6,s5
   1262c:	6b57ed63          	bltu	a5,s5,12ce6 <_vfprintf_r+0x152c>
   12630:	67e9                	lui	a5,0x1a
   12632:	8dda                	mv	s11,s6
   12634:	ca62                	sw	s8,20(sp)
   12636:	11078d13          	addi	s10,a5,272 # 1a110 <__clzsi2+0xfe>
   1263a:	b00ff06f          	j	1193a <_vfprintf_r+0x180>
   1263e:	6869                	lui	a6,0x1a
   12640:	45c1                	li	a1,16
   12642:	472e                	lw	a4,200(sp)
   12644:	56c80813          	addi	a6,a6,1388 # 1a56c <zeroes.0>
   12648:	4755db63          	bge	a1,s5,12abe <_vfprintf_r+0x1304>
   1264c:	87a2                	mv	a5,s0
   1264e:	4c41                	li	s8,16
   12650:	4b1d                	li	s6,7
   12652:	8442                	mv	s0,a6
   12654:	a021                	j	1265c <_vfprintf_r+0xea2>
   12656:	1ac1                	addi	s5,s5,-16
   12658:	475c5163          	bge	s8,s5,12aba <_vfprintf_r+0x1300>
   1265c:	0641                	addi	a2,a2,16
   1265e:	0705                	addi	a4,a4,1
   12660:	c380                	sw	s0,0(a5)
   12662:	0187a223          	sw	s8,4(a5)
   12666:	c7b2                	sw	a2,204(sp)
   12668:	c5ba                	sw	a4,200(sp)
   1266a:	07a1                	addi	a5,a5,8
   1266c:	feeb55e3          	bge	s6,a4,12656 <_vfprintf_r+0xe9c>
   12670:	4522                	lw	a0,8(sp)
   12672:	01d0                	addi	a2,sp,196
   12674:	85a6                	mv	a1,s1
   12676:	58b000ef          	jal	13400 <__sprint_r>
   1267a:	b8051ce3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   1267e:	463e                	lw	a2,204(sp)
   12680:	472e                	lw	a4,200(sp)
   12682:	87ce                	mv	a5,s3
   12684:	bfc9                	j	12656 <_vfprintf_r+0xe9c>
   12686:	5742                	lw	a4,48(sp)
   12688:	57b2                	lw	a5,44(sp)
   1268a:	459d                	li	a1,7
   1268c:	c018                	sw	a4,0(s0)
   1268e:	472e                	lw	a4,200(sp)
   12690:	963e                	add	a2,a2,a5
   12692:	c05c                	sw	a5,4(s0)
   12694:	0705                	addi	a4,a4,1
   12696:	c7b2                	sw	a2,204(sp)
   12698:	c5ba                	sw	a4,200(sp)
   1269a:	0421                	addi	s0,s0,8
   1269c:	d2e5d1e3          	bge	a1,a4,123be <_vfprintf_r+0xc04>
   126a0:	4522                	lw	a0,8(sp)
   126a2:	01d0                	addi	a2,sp,196
   126a4:	85a6                	mv	a1,s1
   126a6:	55b000ef          	jal	13400 <__sprint_r>
   126aa:	b60514e3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   126ae:	5aba                	lw	s5,172(sp)
   126b0:	463e                	lw	a2,204(sp)
   126b2:	844e                	mv	s0,s3
   126b4:	b329                	j	123be <_vfprintf_r+0xc04>
   126b6:	07800793          	li	a5,120
   126ba:	03000713          	li	a4,48
   126be:	0ae10423          	sb	a4,168(sp)
   126c2:	0af104a3          	sb	a5,169(sp)
   126c6:	06300713          	li	a4,99
   126ca:	c802                	sw	zero,16(sp)
   126cc:	002cec93          	ori	s9,s9,2
   126d0:	12c10d13          	addi	s10,sp,300
   126d4:	d5575c63          	bge	a4,s5,11c2c <_vfprintf_r+0x472>
   126d8:	4522                	lw	a0,8(sp)
   126da:	001a8593          	addi	a1,s5,1
   126de:	c846                	sw	a7,16(sp)
   126e0:	b33fe0ef          	jal	11212 <_malloc_r>
   126e4:	48c2                	lw	a7,16(sp)
   126e6:	8d2a                	mv	s10,a0
   126e8:	460502e3          	beqz	a0,1334c <_vfprintf_r+0x1b92>
   126ec:	c82a                	sw	a0,16(sp)
   126ee:	d3eff06f          	j	11c2c <_vfprintf_r+0x472>
   126f2:	4522                	lw	a0,8(sp)
   126f4:	09010b13          	addi	s6,sp,144
   126f8:	1178                	addi	a4,sp,172
   126fa:	0bc10813          	addi	a6,sp,188
   126fe:	191c                	addi	a5,sp,176
   12700:	86d6                	mv	a3,s5
   12702:	4609                	li	a2,2
   12704:	85da                	mv	a1,s6
   12706:	d446                	sw	a7,40(sp)
   12708:	c97e                	sw	t6,144(sp)
   1270a:	d27e                	sw	t6,36(sp)
   1270c:	cb7a                	sw	t5,148(sp)
   1270e:	d07a                	sw	t5,32(sp)
   12710:	cd76                	sw	t4,152(sp)
   12712:	ce76                	sw	t4,28(sp)
   12714:	cf62                	sw	s8,156(sp)
   12716:	7ae010ef          	jal	13ec4 <_ldtoa_r>
   1271a:	001cf713          	andi	a4,s9,1
   1271e:	4ef2                	lw	t4,28(sp)
   12720:	5f02                	lw	t5,32(sp)
   12722:	5f92                	lw	t6,36(sp)
   12724:	58a2                	lw	a7,40(sp)
   12726:	8d2a                	mv	s10,a0
   12728:	62071163          	bnez	a4,12d4a <_vfprintf_r+0x1590>
   1272c:	57ba                	lw	a5,172(sp)
   1272e:	ce3e                	sw	a5,28(sp)
   12730:	57fa                	lw	a5,188(sp)
   12732:	8f89                	sub	a5,a5,a0
   12734:	d03e                	sw	a5,32(sp)
   12736:	47f2                	lw	a5,28(sp)
   12738:	5775                	li	a4,-3
   1273a:	00e7c463          	blt	a5,a4,12742 <_vfprintf_r+0xf88>
   1273e:	0efadbe3          	bge	s5,a5,13034 <_vfprintf_r+0x187a>
   12742:	47f2                	lw	a5,28(sp)
   12744:	18f9                	addi	a7,a7,-2
   12746:	fff78713          	addi	a4,a5,-1
   1274a:	d73a                	sw	a4,172(sp)
   1274c:	0ff8f693          	zext.b	a3,a7
   12750:	4601                	li	a2,0
   12752:	0ad10a23          	sb	a3,180(sp)
   12756:	02b00693          	li	a3,43
   1275a:	00075763          	bgez	a4,12768 <_vfprintf_r+0xfae>
   1275e:	47f2                	lw	a5,28(sp)
   12760:	4705                	li	a4,1
   12762:	02d00693          	li	a3,45
   12766:	8f1d                	sub	a4,a4,a5
   12768:	0ad10aa3          	sb	a3,181(sp)
   1276c:	46a5                	li	a3,9
   1276e:	2ae6d1e3          	bge	a3,a4,13210 <_vfprintf_r+0x1a56>
   12772:	0c310813          	addi	a6,sp,195
   12776:	85c2                	mv	a1,a6
   12778:	4529                	li	a0,10
   1277a:	06300f13          	li	t5,99
   1277e:	02a767b3          	rem	a5,a4,a0
   12782:	862e                	mv	a2,a1
   12784:	86ba                	mv	a3,a4
   12786:	15fd                	addi	a1,a1,-1
   12788:	03078793          	addi	a5,a5,48
   1278c:	fef60fa3          	sb	a5,-1(a2)
   12790:	02a74733          	div	a4,a4,a0
   12794:	fedf45e3          	blt	t5,a3,1277e <_vfprintf_r+0xfc4>
   12798:	03070713          	addi	a4,a4,48
   1279c:	ffe60693          	addi	a3,a2,-2
   127a0:	fee58fa3          	sb	a4,-1(a1)
   127a4:	3706fce3          	bgeu	a3,a6,1331c <_vfprintf_r+0x1b62>
   127a8:	0b610713          	addi	a4,sp,182
   127ac:	0006c783          	lbu	a5,0(a3)
   127b0:	0685                	addi	a3,a3,1
   127b2:	0705                	addi	a4,a4,1
   127b4:	fef70fa3          	sb	a5,-1(a4)
   127b8:	ff069ae3          	bne	a3,a6,127ac <_vfprintf_r+0xff2>
   127bc:	0b1c                	addi	a5,sp,400
   127be:	40c78733          	sub	a4,a5,a2
   127c2:	f3770793          	addi	a5,a4,-201
   127c6:	c0be                	sw	a5,64(sp)
   127c8:	5782                	lw	a5,32(sp)
   127ca:	4686                	lw	a3,64(sp)
   127cc:	4705                	li	a4,1
   127ce:	00d78b33          	add	s6,a5,a3
   127d2:	26f758e3          	bge	a4,a5,13242 <_vfprintf_r+0x1a88>
   127d6:	57b2                	lw	a5,44(sp)
   127d8:	9b3e                	add	s6,s6,a5
   127da:	fffb4693          	not	a3,s6
   127de:	bffcfe13          	andi	t3,s9,-1025
   127e2:	86fd                	srai	a3,a3,0x1f
   127e4:	100e6793          	ori	a5,t3,256
   127e8:	c6be                	sw	a5,76(sp)
   127ea:	00db7db3          	and	s11,s6,a3
   127ee:	d402                	sw	zero,40(sp)
   127f0:	d202                	sw	zero,36(sp)
   127f2:	ce02                	sw	zero,28(sp)
   127f4:	57e2                	lw	a5,56(sp)
   127f6:	020786e3          	beqz	a5,13022 <_vfprintf_r+0x1868>
   127fa:	02d00713          	li	a4,45
   127fe:	4cb6                	lw	s9,76(sp)
   12800:	0ae103a3          	sb	a4,167(sp)
   12804:	4a81                	li	s5,0
   12806:	0d85                	addi	s11,s11,1
   12808:	93cff06f          	j	11944 <_vfprintf_r+0x18a>
   1280c:	4752                	lw	a4,20(sp)
   1280e:	010cf793          	andi	a5,s9,16
   12812:	00072b03          	lw	s6,0(a4)
   12816:	0711                	addi	a4,a4,4
   12818:	ca3a                	sw	a4,20(sp)
   1281a:	e7a9                	bnez	a5,12864 <_vfprintf_r+0x10aa>
   1281c:	040cf793          	andi	a5,s9,64
   12820:	cf95                	beqz	a5,1285c <_vfprintf_r+0x10a2>
   12822:	0b42                	slli	s6,s6,0x10
   12824:	010b5b13          	srli	s6,s6,0x10
   12828:	4d81                	li	s11,0
   1282a:	bb69                	j	125c4 <_vfprintf_r+0xe0a>
   1282c:	4522                	lw	a0,8(sp)
   1282e:	01d0                	addi	a2,sp,196
   12830:	85a6                	mv	a1,s1
   12832:	3cf000ef          	jal	13400 <__sprint_r>
   12836:	9c051ee3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   1283a:	4c3e                	lw	s8,204(sp)
   1283c:	4aae                	lw	s5,200(sp)
   1283e:	8b4e                	mv	s6,s3
   12840:	c6eff06f          	j	11cae <_vfprintf_r+0x4f4>
   12844:	4522                	lw	a0,8(sp)
   12846:	01d0                	addi	a2,sp,196
   12848:	85a6                	mv	a1,s1
   1284a:	3b7000ef          	jal	13400 <__sprint_r>
   1284e:	9c0512e3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12852:	4c3e                	lw	s8,204(sp)
   12854:	4aae                	lw	s5,200(sp)
   12856:	8b4e                	mv	s6,s3
   12858:	c72ff06f          	j	11cca <_vfprintf_r+0x510>
   1285c:	200cf793          	andi	a5,s9,512
   12860:	4a079963          	bnez	a5,12d12 <_vfprintf_r+0x1558>
   12864:	4d81                	li	s11,0
   12866:	bbb9                	j	125c4 <_vfprintf_r+0xe0a>
   12868:	ccccd837          	lui	a6,0xccccd
   1286c:	ccccdcb7          	lui	s9,0xccccd
   12870:	5772                	lw	a4,60(sp)
   12872:	400eff13          	andi	t5,t4,1024
   12876:	4601                	li	a2,0
   12878:	0b0c                	addi	a1,sp,400
   1287a:	4e15                	li	t3,5
   1287c:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccb1271>
   12880:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccb1270>
   12884:	0ff00c13          	li	s8,255
   12888:	a081                	j	128c8 <_vfprintf_r+0x110e>
   1288a:	016d37b3          	sltu	a5,s10,s6
   1288e:	97ea                	add	a5,a5,s10
   12890:	03c7f7b3          	remu	a5,a5,t3
   12894:	40fb07b3          	sub	a5,s6,a5
   12898:	00fb35b3          	sltu	a1,s6,a5
   1289c:	40bd85b3          	sub	a1,s11,a1
   128a0:	03978333          	mul	t1,a5,s9
   128a4:	030585b3          	mul	a1,a1,a6
   128a8:	0307b533          	mulhu	a0,a5,a6
   128ac:	959a                	add	a1,a1,t1
   128ae:	030787b3          	mul	a5,a5,a6
   128b2:	95aa                	add	a1,a1,a0
   128b4:	01f59513          	slli	a0,a1,0x1f
   128b8:	8185                	srli	a1,a1,0x1
   128ba:	8385                	srli	a5,a5,0x1
   128bc:	8fc9                	or	a5,a5,a0
   128be:	7c0d8763          	beqz	s11,1308c <_vfprintf_r+0x18d2>
   128c2:	8dae                	mv	s11,a1
   128c4:	8b3e                	mv	s6,a5
   128c6:	85b6                	mv	a1,a3
   128c8:	01bb0d33          	add	s10,s6,s11
   128cc:	016d37b3          	sltu	a5,s10,s6
   128d0:	97ea                	add	a5,a5,s10
   128d2:	03c7f7b3          	remu	a5,a5,t3
   128d6:	fff58693          	addi	a3,a1,-1
   128da:	0605                	addi	a2,a2,1
   128dc:	40fb07b3          	sub	a5,s6,a5
   128e0:	00fb3533          	sltu	a0,s6,a5
   128e4:	40ad8533          	sub	a0,s11,a0
   128e8:	0307b333          	mulhu	t1,a5,a6
   128ec:	03050533          	mul	a0,a0,a6
   128f0:	030787b3          	mul	a5,a5,a6
   128f4:	951a                	add	a0,a0,t1
   128f6:	057e                	slli	a0,a0,0x1f
   128f8:	8385                	srli	a5,a5,0x1
   128fa:	8fc9                	or	a5,a5,a0
   128fc:	00279513          	slli	a0,a5,0x2
   12900:	97aa                	add	a5,a5,a0
   12902:	0786                	slli	a5,a5,0x1
   12904:	40fb07b3          	sub	a5,s6,a5
   12908:	03078793          	addi	a5,a5,48
   1290c:	fef58fa3          	sb	a5,-1(a1)
   12910:	f60f0de3          	beqz	t5,1288a <_vfprintf_r+0x10d0>
   12914:	00074783          	lbu	a5,0(a4)
   12918:	f6f619e3          	bne	a2,a5,1288a <_vfprintf_r+0x10d0>
   1291c:	f78607e3          	beq	a2,s8,1288a <_vfprintf_r+0x10d0>
   12920:	1c0d9563          	bnez	s11,12aea <_vfprintf_r+0x1330>
   12924:	47a5                	li	a5,9
   12926:	1d67e263          	bltu	a5,s6,12aea <_vfprintf_r+0x1330>
   1292a:	8d36                	mv	s10,a3
   1292c:	0b1c                	addi	a5,sp,400
   1292e:	d032                	sw	a2,32(sp)
   12930:	de3a                	sw	a4,60(sp)
   12932:	41a78b33          	sub	s6,a5,s10
   12936:	8cf6                	mv	s9,t4
   12938:	9d6ff06f          	j	11b0e <_vfprintf_r+0x354>
   1293c:	472e                	lw	a4,200(sp)
   1293e:	65e9                	lui	a1,0x1a
   12940:	11858593          	addi	a1,a1,280 # 1a118 <__clzsi2+0x106>
   12944:	c00c                	sw	a1,0(s0)
   12946:	0605                	addi	a2,a2,1
   12948:	4585                	li	a1,1
   1294a:	0705                	addi	a4,a4,1
   1294c:	c04c                	sw	a1,4(s0)
   1294e:	c7b2                	sw	a2,204(sp)
   12950:	c5ba                	sw	a4,200(sp)
   12952:	459d                	li	a1,7
   12954:	0421                	addi	s0,s0,8
   12956:	36e5c063          	blt	a1,a4,12cb6 <_vfprintf_r+0x14fc>
   1295a:	e569                	bnez	a0,12a24 <_vfprintf_r+0x126a>
   1295c:	5782                	lw	a5,32(sp)
   1295e:	001cf713          	andi	a4,s9,1
   12962:	8f5d                	or	a4,a4,a5
   12964:	e319                	bnez	a4,1296a <_vfprintf_r+0x11b0>
   12966:	86cff06f          	j	119d2 <_vfprintf_r+0x218>
   1296a:	5742                	lw	a4,48(sp)
   1296c:	57b2                	lw	a5,44(sp)
   1296e:	459d                	li	a1,7
   12970:	c018                	sw	a4,0(s0)
   12972:	472e                	lw	a4,200(sp)
   12974:	963e                	add	a2,a2,a5
   12976:	c05c                	sw	a5,4(s0)
   12978:	0705                	addi	a4,a4,1
   1297a:	c7b2                	sw	a2,204(sp)
   1297c:	c5ba                	sw	a4,200(sp)
   1297e:	3ae5cb63          	blt	a1,a4,12d34 <_vfprintf_r+0x157a>
   12982:	0421                	addi	s0,s0,8
   12984:	a87d                	j	12a42 <_vfprintf_r+0x1288>
   12986:	4522                	lw	a0,8(sp)
   12988:	e7bfd0ef          	jal	10802 <__sinit>
   1298c:	e6dfe06f          	j	117f8 <_vfprintf_r+0x3e>
   12990:	4522                	lw	a0,8(sp)
   12992:	01d0                	addi	a2,sp,196
   12994:	85a6                	mv	a1,s1
   12996:	26b000ef          	jal	13400 <__sprint_r>
   1299a:	86051ce3          	bnez	a0,12212 <_vfprintf_r+0xa58>
   1299e:	463e                	lw	a2,204(sp)
   129a0:	844e                	mv	s0,s3
   129a2:	e78ff06f          	j	1201a <_vfprintf_r+0x860>
   129a6:	886a                	mv	a6,s10
   129a8:	01042023          	sw	a6,0(s0)
   129ac:	01542223          	sw	s5,4(s0)
   129b0:	9656                	add	a2,a2,s5
   129b2:	0785                	addi	a5,a5,1
   129b4:	c7b2                	sw	a2,204(sp)
   129b6:	c5be                	sw	a5,200(sp)
   129b8:	471d                	li	a4,7
   129ba:	00f74463          	blt	a4,a5,129c2 <_vfprintf_r+0x1208>
   129be:	812ff06f          	j	119d0 <_vfprintf_r+0x216>
   129c2:	b70ff06f          	j	11d32 <_vfprintf_r+0x578>
   129c6:	47ce                	lw	a5,208(sp)
   129c8:	010c                	addi	a1,sp,128
   129ca:	0908                	addi	a0,sp,144
   129cc:	c93e                	sw	a5,144(sp)
   129ce:	47de                	lw	a5,212(sp)
   129d0:	c102                	sw	zero,128(sp)
   129d2:	c302                	sw	zero,132(sp)
   129d4:	cb3e                	sw	a5,148(sp)
   129d6:	47ee                	lw	a5,216(sp)
   129d8:	c502                	sw	zero,136(sp)
   129da:	c702                	sw	zero,140(sp)
   129dc:	cd3e                	sw	a5,152(sp)
   129de:	47fe                	lw	a5,220(sp)
   129e0:	cf3e                	sw	a5,156(sp)
   129e2:	398050ef          	jal	17d7a <__letf2>
   129e6:	48c2                	lw	a7,16(sp)
   129e8:	6a054a63          	bltz	a0,1309c <_vfprintf_r+0x18e2>
   129ec:	0a714703          	lbu	a4,167(sp)
   129f0:	04700793          	li	a5,71
   129f4:	2d17db63          	bge	a5,a7,12cca <_vfprintf_r+0x1510>
   129f8:	67e9                	lui	a5,0x1a
   129fa:	0dc78d13          	addi	s10,a5,220 # 1a0dc <__clzsi2+0xca>
   129fe:	c802                	sw	zero,16(sp)
   12a00:	d402                	sw	zero,40(sp)
   12a02:	d202                	sw	zero,36(sp)
   12a04:	ce02                	sw	zero,28(sp)
   12a06:	f7fcfc93          	andi	s9,s9,-129
   12a0a:	4d8d                	li	s11,3
   12a0c:	4b0d                	li	s6,3
   12a0e:	4a81                	li	s5,0
   12a10:	90071b63          	bnez	a4,11b26 <_vfprintf_r+0x36c>
   12a14:	f31fe06f          	j	11944 <_vfprintf_r+0x18a>
   12a18:	47d2                	lw	a5,20(sp)
   12a1a:	4732                	lw	a4,12(sp)
   12a1c:	439c                	lw	a5,0(a5)
   12a1e:	c398                	sw	a4,0(a5)
   12a20:	d7eff06f          	j	11f9e <_vfprintf_r+0x7e4>
   12a24:	5742                	lw	a4,48(sp)
   12a26:	57b2                	lw	a5,44(sp)
   12a28:	459d                	li	a1,7
   12a2a:	c018                	sw	a4,0(s0)
   12a2c:	472e                	lw	a4,200(sp)
   12a2e:	963e                	add	a2,a2,a5
   12a30:	c05c                	sw	a5,4(s0)
   12a32:	0705                	addi	a4,a4,1
   12a34:	c7b2                	sw	a2,204(sp)
   12a36:	c5ba                	sw	a4,200(sp)
   12a38:	0421                	addi	s0,s0,8
   12a3a:	2ee5cd63          	blt	a1,a4,12d34 <_vfprintf_r+0x157a>
   12a3e:	74054a63          	bltz	a0,13192 <_vfprintf_r+0x19d8>
   12a42:	5782                	lw	a5,32(sp)
   12a44:	0705                	addi	a4,a4,1
   12a46:	01a42023          	sw	s10,0(s0)
   12a4a:	963e                	add	a2,a2,a5
   12a4c:	c05c                	sw	a5,4(s0)
   12a4e:	c7b2                	sw	a2,204(sp)
   12a50:	c5ba                	sw	a4,200(sp)
   12a52:	479d                	li	a5,7
   12a54:	00e7c463          	blt	a5,a4,12a5c <_vfprintf_r+0x12a2>
   12a58:	f79fe06f          	j	119d0 <_vfprintf_r+0x216>
   12a5c:	ad6ff06f          	j	11d32 <_vfprintf_r+0x578>
   12a60:	856a                	mv	a0,s10
   12a62:	dc46                	sw	a7,56(sp)
   12a64:	b82fe0ef          	jal	10de6 <strlen>
   12a68:	0a714703          	lbu	a4,167(sp)
   12a6c:	fff54693          	not	a3,a0
   12a70:	86fd                	srai	a3,a3,0x1f
   12a72:	ca62                	sw	s8,20(sp)
   12a74:	c802                	sw	zero,16(sp)
   12a76:	d402                	sw	zero,40(sp)
   12a78:	d202                	sw	zero,36(sp)
   12a7a:	ce02                	sw	zero,28(sp)
   12a7c:	58e2                	lw	a7,56(sp)
   12a7e:	8b2a                	mv	s6,a0
   12a80:	00d57db3          	and	s11,a0,a3
   12a84:	4a81                	li	s5,0
   12a86:	c319                	beqz	a4,12a8c <_vfprintf_r+0x12d2>
   12a88:	89eff06f          	j	11b26 <_vfprintf_r+0x36c>
   12a8c:	eb9fe06f          	j	11944 <_vfprintf_r+0x18a>
   12a90:	884a                	mv	a6,s2
   12a92:	4972                	lw	s2,28(sp)
   12a94:	9c22                	add	s8,s8,s0
   12a96:	0a85                	addi	s5,s5,1
   12a98:	010b2023          	sw	a6,0(s6)
   12a9c:	a64ff06f          	j	11d00 <_vfprintf_r+0x546>
   12aa0:	47fe                	lw	a5,220(sp)
   12aa2:	2607cc63          	bltz	a5,12d1a <_vfprintf_r+0x1560>
   12aa6:	0a714703          	lbu	a4,167(sp)
   12aaa:	04700793          	li	a5,71
   12aae:	6317ca63          	blt	a5,a7,130e2 <_vfprintf_r+0x1928>
   12ab2:	67e9                	lui	a5,0x1a
   12ab4:	0e078d13          	addi	s10,a5,224 # 1a0e0 <__clzsi2+0xce>
   12ab8:	b799                	j	129fe <_vfprintf_r+0x1244>
   12aba:	8822                	mv	a6,s0
   12abc:	843e                	mv	s0,a5
   12abe:	9656                	add	a2,a2,s5
   12ac0:	0705                	addi	a4,a4,1
   12ac2:	01042023          	sw	a6,0(s0)
   12ac6:	01542223          	sw	s5,4(s0)
   12aca:	c7b2                	sw	a2,204(sp)
   12acc:	c5ba                	sw	a4,200(sp)
   12ace:	459d                	li	a1,7
   12ad0:	0421                	addi	s0,s0,8
   12ad2:	8ce5d7e3          	bge	a1,a4,123a0 <_vfprintf_r+0xbe6>
   12ad6:	4522                	lw	a0,8(sp)
   12ad8:	01d0                	addi	a2,sp,196
   12ada:	85a6                	mv	a1,s1
   12adc:	125000ef          	jal	13400 <__sprint_r>
   12ae0:	f2051963          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12ae4:	463e                	lw	a2,204(sp)
   12ae6:	844e                	mv	s0,s3
   12ae8:	b865                	j	123a0 <_vfprintf_r+0xbe6>
   12aea:	47a6                	lw	a5,72(sp)
   12aec:	4596                	lw	a1,68(sp)
   12aee:	dc42                	sw	a6,56(sp)
   12af0:	8e9d                	sub	a3,a3,a5
   12af2:	863e                	mv	a2,a5
   12af4:	8536                	mv	a0,a3
   12af6:	d47a                	sw	t5,40(sp)
   12af8:	d276                	sw	t4,36(sp)
   12afa:	d046                	sw	a7,32(sp)
   12afc:	ce3a                	sw	a4,28(sp)
   12afe:	c836                	sw	a3,16(sp)
   12b00:	0a6010ef          	jal	13ba6 <strncpy>
   12b04:	016d37b3          	sltu	a5,s10,s6
   12b08:	4615                	li	a2,5
   12b0a:	97ea                	add	a5,a5,s10
   12b0c:	02c7f7b3          	remu	a5,a5,a2
   12b10:	4772                	lw	a4,28(sp)
   12b12:	ccccd337          	lui	t1,0xccccd
   12b16:	ccccd537          	lui	a0,0xccccd
   12b1a:	00174583          	lbu	a1,1(a4)
   12b1e:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccb1271>
   12b22:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccb1270>
   12b26:	00b035b3          	snez	a1,a1
   12b2a:	972e                	add	a4,a4,a1
   12b2c:	46c2                	lw	a3,16(sp)
   12b2e:	5882                	lw	a7,32(sp)
   12b30:	5e92                	lw	t4,36(sp)
   12b32:	5f22                	lw	t5,40(sp)
   12b34:	5862                	lw	a6,56(sp)
   12b36:	4601                	li	a2,0
   12b38:	4e15                	li	t3,5
   12b3a:	40fb07b3          	sub	a5,s6,a5
   12b3e:	00fb35b3          	sltu	a1,s6,a5
   12b42:	40bd85b3          	sub	a1,s11,a1
   12b46:	02a78533          	mul	a0,a5,a0
   12b4a:	026585b3          	mul	a1,a1,t1
   12b4e:	0267bfb3          	mulhu	t6,a5,t1
   12b52:	95aa                	add	a1,a1,a0
   12b54:	02678533          	mul	a0,a5,t1
   12b58:	95fe                	add	a1,a1,t6
   12b5a:	01f59793          	slli	a5,a1,0x1f
   12b5e:	8185                	srli	a1,a1,0x1
   12b60:	8105                	srli	a0,a0,0x1
   12b62:	8fc9                	or	a5,a5,a0
   12b64:	bbb9                	j	128c2 <_vfprintf_r+0x1108>
   12b66:	5782                	lw	a5,32(sp)
   12b68:	5b12                	lw	s6,36(sp)
   12b6a:	68e9                	lui	a7,0x1a
   12b6c:	97ea                	add	a5,a5,s10
   12b6e:	dc4a                	sw	s2,56(sp)
   12b70:	c6e6                	sw	s9,76(sp)
   12b72:	c8de                	sw	s7,80(sp)
   12b74:	d26e                	sw	s11,36(sp)
   12b76:	5da2                	lw	s11,40(sp)
   12b78:	d46a                	sw	s10,40(sp)
   12b7a:	5cf2                	lw	s9,60(sp)
   12b7c:	8d62                	mv	s10,s8
   12b7e:	4922                	lw	s2,8(sp)
   12b80:	4c26                	lw	s8,72(sp)
   12b82:	481d                	li	a6,7
   12b84:	4741                	li	a4,16
   12b86:	56c88a93          	addi	s5,a7,1388 # 1a56c <zeroes.0>
   12b8a:	85a2                	mv	a1,s0
   12b8c:	8bbe                	mv	s7,a5
   12b8e:	07605363          	blez	s6,12bf4 <_vfprintf_r+0x143a>
   12b92:	0fb05663          	blez	s11,12c7e <_vfprintf_r+0x14c4>
   12b96:	1dfd                	addi	s11,s11,-1
   12b98:	4796                	lw	a5,68(sp)
   12b9a:	9662                	add	a2,a2,s8
   12b9c:	0185a223          	sw	s8,4(a1)
   12ba0:	c19c                	sw	a5,0(a1)
   12ba2:	47ae                	lw	a5,200(sp)
   12ba4:	c7b2                	sw	a2,204(sp)
   12ba6:	05a1                	addi	a1,a1,8
   12ba8:	0785                	addi	a5,a5,1
   12baa:	c5be                	sw	a5,200(sp)
   12bac:	0cf84c63          	blt	a6,a5,12c84 <_vfprintf_r+0x14ca>
   12bb0:	000cc683          	lbu	a3,0(s9)
   12bb4:	41ab8433          	sub	s0,s7,s10
   12bb8:	0086d363          	bge	a3,s0,12bbe <_vfprintf_r+0x1404>
   12bbc:	8436                	mv	s0,a3
   12bbe:	00805f63          	blez	s0,12bdc <_vfprintf_r+0x1422>
   12bc2:	46ae                	lw	a3,200(sp)
   12bc4:	9622                	add	a2,a2,s0
   12bc6:	01a5a023          	sw	s10,0(a1)
   12bca:	0685                	addi	a3,a3,1
   12bcc:	c1c0                	sw	s0,4(a1)
   12bce:	c7b2                	sw	a2,204(sp)
   12bd0:	c5b6                	sw	a3,200(sp)
   12bd2:	0cd84563          	blt	a6,a3,12c9c <_vfprintf_r+0x14e2>
   12bd6:	000cc683          	lbu	a3,0(s9)
   12bda:	05a1                	addi	a1,a1,8
   12bdc:	fff44513          	not	a0,s0
   12be0:	857d                	srai	a0,a0,0x1f
   12be2:	00a477b3          	and	a5,s0,a0
   12be6:	40f68433          	sub	s0,a3,a5
   12bea:	02804763          	bgtz	s0,12c18 <_vfprintf_r+0x145e>
   12bee:	9d36                	add	s10,s10,a3
   12bf0:	fb6041e3          	bgtz	s6,12b92 <_vfprintf_r+0x13d8>
   12bf4:	fbb041e3          	bgtz	s11,12b96 <_vfprintf_r+0x13dc>
   12bf8:	5782                	lw	a5,32(sp)
   12bfa:	8c6a                	mv	s8,s10
   12bfc:	5d22                	lw	s10,40(sp)
   12bfe:	de66                	sw	s9,60(sp)
   12c00:	5962                	lw	s2,56(sp)
   12c02:	00fd0733          	add	a4,s10,a5
   12c06:	4cb6                	lw	s9,76(sp)
   12c08:	4bc6                	lw	s7,80(sp)
   12c0a:	5d92                	lw	s11,36(sp)
   12c0c:	842e                	mv	s0,a1
   12c0e:	fb877063          	bgeu	a4,s8,123ae <_vfprintf_r+0xbf4>
   12c12:	8c3a                	mv	s8,a4
   12c14:	f9aff06f          	j	123ae <_vfprintf_r+0xbf4>
   12c18:	6f69                	lui	t5,0x1a
   12c1a:	46ae                	lw	a3,200(sp)
   12c1c:	56cf0f13          	addi	t5,t5,1388 # 1a56c <zeroes.0>
   12c20:	04875163          	bge	a4,s0,12c62 <_vfprintf_r+0x14a8>
   12c24:	ce56                	sw	s5,28(sp)
   12c26:	a021                	j	12c2e <_vfprintf_r+0x1474>
   12c28:	1441                	addi	s0,s0,-16
   12c2a:	02875b63          	bge	a4,s0,12c60 <_vfprintf_r+0x14a6>
   12c2e:	0641                	addi	a2,a2,16
   12c30:	0685                	addi	a3,a3,1
   12c32:	0155a023          	sw	s5,0(a1)
   12c36:	c1d8                	sw	a4,4(a1)
   12c38:	c7b2                	sw	a2,204(sp)
   12c3a:	c5b6                	sw	a3,200(sp)
   12c3c:	05a1                	addi	a1,a1,8
   12c3e:	fed855e3          	bge	a6,a3,12c28 <_vfprintf_r+0x146e>
   12c42:	01d0                	addi	a2,sp,196
   12c44:	85a6                	mv	a1,s1
   12c46:	854a                	mv	a0,s2
   12c48:	7b8000ef          	jal	13400 <__sprint_r>
   12c4c:	dc051363          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12c50:	4741                	li	a4,16
   12c52:	1441                	addi	s0,s0,-16
   12c54:	463e                	lw	a2,204(sp)
   12c56:	46ae                	lw	a3,200(sp)
   12c58:	85ce                	mv	a1,s3
   12c5a:	481d                	li	a6,7
   12c5c:	fc8749e3          	blt	a4,s0,12c2e <_vfprintf_r+0x1474>
   12c60:	4f72                	lw	t5,28(sp)
   12c62:	9622                	add	a2,a2,s0
   12c64:	0685                	addi	a3,a3,1
   12c66:	01e5a023          	sw	t5,0(a1)
   12c6a:	c1c0                	sw	s0,4(a1)
   12c6c:	c7b2                	sw	a2,204(sp)
   12c6e:	c5b6                	sw	a3,200(sp)
   12c70:	40d84063          	blt	a6,a3,13070 <_vfprintf_r+0x18b6>
   12c74:	000cc683          	lbu	a3,0(s9)
   12c78:	05a1                	addi	a1,a1,8
   12c7a:	9d36                	add	s10,s10,a3
   12c7c:	bf95                	j	12bf0 <_vfprintf_r+0x1436>
   12c7e:	1cfd                	addi	s9,s9,-1
   12c80:	1b7d                	addi	s6,s6,-1
   12c82:	bf19                	j	12b98 <_vfprintf_r+0x13de>
   12c84:	01d0                	addi	a2,sp,196
   12c86:	85a6                	mv	a1,s1
   12c88:	854a                	mv	a0,s2
   12c8a:	776000ef          	jal	13400 <__sprint_r>
   12c8e:	d8051263          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12c92:	463e                	lw	a2,204(sp)
   12c94:	85ce                	mv	a1,s3
   12c96:	4741                	li	a4,16
   12c98:	481d                	li	a6,7
   12c9a:	bf19                	j	12bb0 <_vfprintf_r+0x13f6>
   12c9c:	01d0                	addi	a2,sp,196
   12c9e:	85a6                	mv	a1,s1
   12ca0:	854a                	mv	a0,s2
   12ca2:	2fb9                	jal	13400 <__sprint_r>
   12ca4:	d6051763          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12ca8:	000cc683          	lbu	a3,0(s9)
   12cac:	463e                	lw	a2,204(sp)
   12cae:	85ce                	mv	a1,s3
   12cb0:	4741                	li	a4,16
   12cb2:	481d                	li	a6,7
   12cb4:	b725                	j	12bdc <_vfprintf_r+0x1422>
   12cb6:	4522                	lw	a0,8(sp)
   12cb8:	01d0                	addi	a2,sp,196
   12cba:	85a6                	mv	a1,s1
   12cbc:	2791                	jal	13400 <__sprint_r>
   12cbe:	d4051a63          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12cc2:	553a                	lw	a0,172(sp)
   12cc4:	463e                	lw	a2,204(sp)
   12cc6:	844e                	mv	s0,s3
   12cc8:	b949                	j	1295a <_vfprintf_r+0x11a0>
   12cca:	67e9                	lui	a5,0x1a
   12ccc:	0d878d13          	addi	s10,a5,216 # 1a0d8 <__clzsi2+0xc6>
   12cd0:	b33d                	j	129fe <_vfprintf_r+0x1244>
   12cd2:	4522                	lw	a0,8(sp)
   12cd4:	01d0                	addi	a2,sp,196
   12cd6:	85a6                	mv	a1,s1
   12cd8:	2725                	jal	13400 <__sprint_r>
   12cda:	d2051c63          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12cde:	463e                	lw	a2,204(sp)
   12ce0:	844e                	mv	s0,s3
   12ce2:	eaaff06f          	j	1238c <_vfprintf_r+0xbd2>
   12ce6:	4b19                	li	s6,6
   12ce8:	b2a1                	j	12630 <_vfprintf_r+0xe76>
   12cea:	47d2                	lw	a5,20(sp)
   12cec:	4732                	lw	a4,12(sp)
   12cee:	439c                	lw	a5,0(a5)
   12cf0:	00e79023          	sh	a4,0(a5)
   12cf4:	aaaff06f          	j	11f9e <_vfprintf_r+0x7e4>
   12cf8:	0b62                	slli	s6,s6,0x18
   12cfa:	418b5b13          	srai	s6,s6,0x18
   12cfe:	41fb5d93          	srai	s11,s6,0x1f
   12d02:	87ee                	mv	a5,s11
   12d04:	de9fe06f          	j	11aec <_vfprintf_r+0x332>
   12d08:	0ffb7b13          	zext.b	s6,s6
   12d0c:	4d81                	li	s11,0
   12d0e:	e41fe06f          	j	11b4e <_vfprintf_r+0x394>
   12d12:	0ffb7b13          	zext.b	s6,s6
   12d16:	4d81                	li	s11,0
   12d18:	b075                	j	125c4 <_vfprintf_r+0xe0a>
   12d1a:	02d00793          	li	a5,45
   12d1e:	0af103a3          	sb	a5,167(sp)
   12d22:	02d00713          	li	a4,45
   12d26:	b351                	j	12aaa <_vfprintf_r+0x12f0>
   12d28:	4522                	lw	a0,8(sp)
   12d2a:	01d0                	addi	a2,sp,196
   12d2c:	85a6                	mv	a1,s1
   12d2e:	2dc9                	jal	13400 <__sprint_r>
   12d30:	ce7fe06f          	j	11a16 <_vfprintf_r+0x25c>
   12d34:	4522                	lw	a0,8(sp)
   12d36:	01d0                	addi	a2,sp,196
   12d38:	85a6                	mv	a1,s1
   12d3a:	25d9                	jal	13400 <__sprint_r>
   12d3c:	cc051b63          	bnez	a0,12212 <_vfprintf_r+0xa58>
   12d40:	553a                	lw	a0,172(sp)
   12d42:	463e                	lw	a2,204(sp)
   12d44:	472e                	lw	a4,200(sp)
   12d46:	844e                	mv	s0,s3
   12d48:	b9dd                	j	12a3e <_vfprintf_r+0x1284>
   12d4a:	01550733          	add	a4,a0,s5
   12d4e:	04700613          	li	a2,71
   12d52:	010c                	addi	a1,sp,128
   12d54:	855a                	mv	a0,s6
   12d56:	d23a                	sw	a4,36(sp)
   12d58:	d032                	sw	a2,32(sp)
   12d5a:	ce46                	sw	a7,28(sp)
   12d5c:	c97e                	sw	t6,144(sp)
   12d5e:	cb7a                	sw	t5,148(sp)
   12d60:	cd76                	sw	t4,152(sp)
   12d62:	cf62                	sw	s8,156(sp)
   12d64:	c102                	sw	zero,128(sp)
   12d66:	c302                	sw	zero,132(sp)
   12d68:	c502                	sw	zero,136(sp)
   12d6a:	c702                	sw	zero,140(sp)
   12d6c:	637040ef          	jal	17ba2 <__eqtf2>
   12d70:	48f2                	lw	a7,28(sp)
   12d72:	5602                	lw	a2,32(sp)
   12d74:	5712                	lw	a4,36(sp)
   12d76:	36050a63          	beqz	a0,130ea <_vfprintf_r+0x1930>
   12d7a:	57fa                	lw	a5,188(sp)
   12d7c:	00e7fc63          	bgeu	a5,a4,12d94 <_vfprintf_r+0x15da>
   12d80:	03000593          	li	a1,48
   12d84:	00178693          	addi	a3,a5,1
   12d88:	df36                	sw	a3,188(sp)
   12d8a:	00b78023          	sb	a1,0(a5)
   12d8e:	57fa                	lw	a5,188(sp)
   12d90:	fee7eae3          	bltu	a5,a4,12d84 <_vfprintf_r+0x15ca>
   12d94:	573a                	lw	a4,172(sp)
   12d96:	ce3a                	sw	a4,28(sp)
   12d98:	41a787b3          	sub	a5,a5,s10
   12d9c:	04700713          	li	a4,71
   12da0:	d03e                	sw	a5,32(sp)
   12da2:	98e60ae3          	beq	a2,a4,12736 <_vfprintf_r+0xf7c>
   12da6:	04600713          	li	a4,70
   12daa:	38e60863          	beq	a2,a4,1313a <_vfprintf_r+0x1980>
   12dae:	47f2                	lw	a5,28(sp)
   12db0:	fff78713          	addi	a4,a5,-1
   12db4:	ba59                	j	1274a <_vfprintf_r+0xf90>
   12db6:	001a8693          	addi	a3,s5,1
   12dba:	4609                	li	a2,2
   12dbc:	4522                	lw	a0,8(sp)
   12dbe:	09010b13          	addi	s6,sp,144
   12dc2:	1178                	addi	a4,sp,172
   12dc4:	85da                	mv	a1,s6
   12dc6:	0bc10813          	addi	a6,sp,188
   12dca:	191c                	addi	a5,sp,176
   12dcc:	c8c6                	sw	a7,80(sp)
   12dce:	d436                	sw	a3,40(sp)
   12dd0:	c97e                	sw	t6,144(sp)
   12dd2:	d27e                	sw	t6,36(sp)
   12dd4:	cb7a                	sw	t5,148(sp)
   12dd6:	d07a                	sw	t5,32(sp)
   12dd8:	cd76                	sw	t4,152(sp)
   12dda:	ce76                	sw	t4,28(sp)
   12ddc:	cf62                	sw	s8,156(sp)
   12dde:	0e6010ef          	jal	13ec4 <_ldtoa_r>
   12de2:	48c6                	lw	a7,80(sp)
   12de4:	56a2                	lw	a3,40(sp)
   12de6:	04600593          	li	a1,70
   12dea:	fdf8f613          	andi	a2,a7,-33
   12dee:	4ef2                	lw	t4,28(sp)
   12df0:	5f02                	lw	t5,32(sp)
   12df2:	5f92                	lw	t6,36(sp)
   12df4:	8d2a                	mv	s10,a0
   12df6:	00d50733          	add	a4,a0,a3
   12dfa:	54b61563          	bne	a2,a1,13344 <_vfprintf_r+0x1b8a>
   12dfe:	000d4503          	lbu	a0,0(s10)
   12e02:	03000593          	li	a1,48
   12e06:	2eb50663          	beq	a0,a1,130f2 <_vfprintf_r+0x1938>
   12e0a:	56ba                	lw	a3,172(sp)
   12e0c:	010c                	addi	a1,sp,128
   12e0e:	9736                	add	a4,a4,a3
   12e10:	b791                	j	12d54 <_vfprintf_r+0x159a>
   12e12:	09010b13          	addi	s6,sp,144
   12e16:	010c                	addi	a1,sp,128
   12e18:	1170                	addi	a2,sp,172
   12e1a:	855a                	mv	a0,s6
   12e1c:	c0c6                	sw	a7,64(sp)
   12e1e:	c17e                	sw	t6,128(sp)
   12e20:	c37a                	sw	t5,132(sp)
   12e22:	c576                	sw	t4,136(sp)
   12e24:	ce2e                	sw	a1,28(sp)
   12e26:	c762                	sw	s8,140(sp)
   12e28:	741000ef          	jal	13d68 <frexpl>
   12e2c:	474a                	lw	a4,144(sp)
   12e2e:	45f2                	lw	a1,28(sp)
   12e30:	1890                	addi	a2,sp,112
   12e32:	c13a                	sw	a4,128(sp)
   12e34:	475a                	lw	a4,148(sp)
   12e36:	855a                	mv	a0,s6
   12e38:	d882                	sw	zero,112(sp)
   12e3a:	c33a                	sw	a4,132(sp)
   12e3c:	476a                	lw	a4,152(sp)
   12e3e:	da82                	sw	zero,116(sp)
   12e40:	dc82                	sw	zero,120(sp)
   12e42:	c53a                	sw	a4,136(sp)
   12e44:	477a                	lw	a4,156(sp)
   12e46:	c73a                	sw	a4,140(sp)
   12e48:	3ffc0737          	lui	a4,0x3ffc0
   12e4c:	deba                	sw	a4,124(sp)
   12e4e:	018050ef          	jal	17e66 <__multf3>
   12e52:	45f2                	lw	a1,28(sp)
   12e54:	4f4a                	lw	t5,144(sp)
   12e56:	4eda                	lw	t4,148(sp)
   12e58:	486a                	lw	a6,152(sp)
   12e5a:	855a                	mv	a0,s6
   12e5c:	d42e                	sw	a1,40(sp)
   12e5e:	d27a                	sw	t5,36(sp)
   12e60:	d076                	sw	t4,32(sp)
   12e62:	ce42                	sw	a6,28(sp)
   12e64:	c102                	sw	zero,128(sp)
   12e66:	c302                	sw	zero,132(sp)
   12e68:	c502                	sw	zero,136(sp)
   12e6a:	c702                	sw	zero,140(sp)
   12e6c:	537040ef          	jal	17ba2 <__eqtf2>
   12e70:	4dfa                	lw	s11,156(sp)
   12e72:	4872                	lw	a6,28(sp)
   12e74:	5e82                	lw	t4,32(sp)
   12e76:	5f12                	lw	t5,36(sp)
   12e78:	55a2                	lw	a1,40(sp)
   12e7a:	4886                	lw	a7,64(sp)
   12e7c:	e119                	bnez	a0,12e82 <_vfprintf_r+0x16c8>
   12e7e:	4705                	li	a4,1
   12e80:	d73a                	sw	a4,172(sp)
   12e82:	06100713          	li	a4,97
   12e86:	44e88d63          	beq	a7,a4,132e0 <_vfprintf_r+0x1b26>
   12e8a:	6769                	lui	a4,0x1a
   12e8c:	0fc70793          	addi	a5,a4,252 # 1a0fc <__clzsi2+0xea>
   12e90:	ce3e                	sw	a5,28(sp)
   12e92:	d04a                	sw	s2,32(sp)
   12e94:	d466                	sw	s9,40(sp)
   12e96:	c0de                	sw	s7,64(sp)
   12e98:	c6a2                	sw	s0,76(sp)
   12e9a:	896a                	mv	s2,s10
   12e9c:	c8a6                	sw	s1,80(sp)
   12e9e:	caea                	sw	s10,84(sp)
   12ea0:	44f2                	lw	s1,28(sp)
   12ea2:	1afd                	addi	s5,s5,-1
   12ea4:	d246                	sw	a7,36(sp)
   12ea6:	8bfa                	mv	s7,t5
   12ea8:	8c76                	mv	s8,t4
   12eaa:	8cc2                	mv	s9,a6
   12eac:	8d6e                	mv	s10,s11
   12eae:	842e                	mv	s0,a1
   12eb0:	a015                	j	12ed4 <_vfprintf_r+0x171a>
   12eb2:	85a2                	mv	a1,s0
   12eb4:	855a                	mv	a0,s6
   12eb6:	c95e                	sw	s7,144(sp)
   12eb8:	cb62                	sw	s8,148(sp)
   12eba:	cd66                	sw	s9,152(sp)
   12ebc:	cf6a                	sw	s10,156(sp)
   12ebe:	c102                	sw	zero,128(sp)
   12ec0:	c302                	sw	zero,132(sp)
   12ec2:	c502                	sw	zero,136(sp)
   12ec4:	c702                	sw	zero,140(sp)
   12ec6:	fffa8d93          	addi	s11,s5,-1
   12eca:	4d9040ef          	jal	17ba2 <__eqtf2>
   12ece:	3c050c63          	beqz	a0,132a6 <_vfprintf_r+0x1aec>
   12ed2:	8aee                	mv	s5,s11
   12ed4:	400307b7          	lui	a5,0x40030
   12ed8:	1890                	addi	a2,sp,112
   12eda:	85a2                	mv	a1,s0
   12edc:	855a                	mv	a0,s6
   12ede:	debe                	sw	a5,124(sp)
   12ee0:	c15e                	sw	s7,128(sp)
   12ee2:	c362                	sw	s8,132(sp)
   12ee4:	c566                	sw	s9,136(sp)
   12ee6:	c76a                	sw	s10,140(sp)
   12ee8:	d882                	sw	zero,112(sp)
   12eea:	da82                	sw	zero,116(sp)
   12eec:	dc82                	sw	zero,120(sp)
   12eee:	779040ef          	jal	17e66 <__multf3>
   12ef2:	855a                	mv	a0,s6
   12ef4:	59d060ef          	jal	19c90 <__fixtfsi>
   12ef8:	85aa                	mv	a1,a0
   12efa:	8daa                	mv	s11,a0
   12efc:	855a                	mv	a0,s6
   12efe:	4d4a                	lw	s10,144(sp)
   12f00:	4cda                	lw	s9,148(sp)
   12f02:	4c6a                	lw	s8,152(sp)
   12f04:	4bfa                	lw	s7,156(sp)
   12f06:	6af060ef          	jal	19db4 <__floatsitf>
   12f0a:	46ca                	lw	a3,144(sp)
   12f0c:	1090                	addi	a2,sp,96
   12f0e:	188c                	addi	a1,sp,112
   12f10:	d0b6                	sw	a3,96(sp)
   12f12:	46da                	lw	a3,148(sp)
   12f14:	8522                	mv	a0,s0
   12f16:	d8ea                	sw	s10,112(sp)
   12f18:	d2b6                	sw	a3,100(sp)
   12f1a:	46ea                	lw	a3,152(sp)
   12f1c:	dae6                	sw	s9,116(sp)
   12f1e:	dce2                	sw	s8,120(sp)
   12f20:	d4b6                	sw	a3,104(sp)
   12f22:	46fa                	lw	a3,156(sp)
   12f24:	dede                	sw	s7,124(sp)
   12f26:	d6b6                	sw	a3,108(sp)
   12f28:	3db050ef          	jal	18b02 <__subtf3>
   12f2c:	01b486b3          	add	a3,s1,s11
   12f30:	0006c603          	lbu	a2,0(a3)
   12f34:	8fca                	mv	t6,s2
   12f36:	0905                	addi	s2,s2,1
   12f38:	4b8a                	lw	s7,128(sp)
   12f3a:	4c1a                	lw	s8,132(sp)
   12f3c:	4caa                	lw	s9,136(sp)
   12f3e:	4d3a                	lw	s10,140(sp)
   12f40:	57fd                	li	a5,-1
   12f42:	fec90fa3          	sb	a2,-1(s2)
   12f46:	f6fa96e3          	bne	s5,a5,12eb2 <_vfprintf_r+0x16f8>
   12f4a:	5892                	lw	a7,36(sp)
   12f4c:	8f5e                	mv	t5,s7
   12f4e:	8ee2                	mv	t4,s8
   12f50:	8866                	mv	a6,s9
   12f52:	85a2                	mv	a1,s0
   12f54:	ccee                	sw	s11,88(sp)
   12f56:	3ffe0ab7          	lui	s5,0x3ffe0
   12f5a:	8dea                	mv	s11,s10
   12f5c:	855a                	mv	a0,s6
   12f5e:	cec6                	sw	a7,92(sp)
   12f60:	d27e                	sw	t6,36(sp)
   12f62:	44c6                	lw	s1,80(sp)
   12f64:	4b86                	lw	s7,64(sp)
   12f66:	5ca2                	lw	s9,40(sp)
   12f68:	4436                	lw	s0,76(sp)
   12f6a:	c97a                	sw	t5,144(sp)
   12f6c:	c8fa                	sw	t5,80(sp)
   12f6e:	cb76                	sw	t4,148(sp)
   12f70:	c6f6                	sw	t4,76(sp)
   12f72:	cd42                	sw	a6,152(sp)
   12f74:	c0c2                	sw	a6,64(sp)
   12f76:	cf6e                	sw	s11,156(sp)
   12f78:	c102                	sw	zero,128(sp)
   12f7a:	c302                	sw	zero,132(sp)
   12f7c:	c502                	sw	zero,136(sp)
   12f7e:	c756                	sw	s5,140(sp)
   12f80:	d42e                	sw	a1,40(sp)
   12f82:	50d040ef          	jal	17c8e <__getf2>
   12f86:	8c4a                	mv	s8,s2
   12f88:	4d56                	lw	s10,84(sp)
   12f8a:	5902                	lw	s2,32(sp)
   12f8c:	5f92                	lw	t6,36(sp)
   12f8e:	48f6                	lw	a7,92(sp)
   12f90:	00a04e63          	bgtz	a0,12fac <_vfprintf_r+0x17f2>
   12f94:	55a2                	lw	a1,40(sp)
   12f96:	855a                	mv	a0,s6
   12f98:	d046                	sw	a7,32(sp)
   12f9a:	409040ef          	jal	17ba2 <__eqtf2>
   12f9e:	5882                	lw	a7,32(sp)
   12fa0:	e529                	bnez	a0,12fea <_vfprintf_r+0x1830>
   12fa2:	47e6                	lw	a5,88(sp)
   12fa4:	5f92                	lw	t6,36(sp)
   12fa6:	0017f693          	andi	a3,a5,1
   12faa:	c2a1                	beqz	a3,12fea <_vfprintf_r+0x1830>
   12fac:	47f2                	lw	a5,28(sp)
   12fae:	df7e                	sw	t6,188(sp)
   12fb0:	fffc4603          	lbu	a2,-1(s8)
   12fb4:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x400145b3>
   12fb8:	86e2                	mv	a3,s8
   12fba:	00b61e63          	bne	a2,a1,12fd6 <_vfprintf_r+0x181c>
   12fbe:	03000513          	li	a0,48
   12fc2:	fea68fa3          	sb	a0,-1(a3)
   12fc6:	56fa                	lw	a3,188(sp)
   12fc8:	fff68793          	addi	a5,a3,-1
   12fcc:	df3e                	sw	a5,188(sp)
   12fce:	fff6c603          	lbu	a2,-1(a3)
   12fd2:	fec588e3          	beq	a1,a2,12fc2 <_vfprintf_r+0x1808>
   12fd6:	00160593          	addi	a1,a2,1
   12fda:	03900513          	li	a0,57
   12fde:	0ff5f593          	zext.b	a1,a1
   12fe2:	02a60c63          	beq	a2,a0,1301a <_vfprintf_r+0x1860>
   12fe6:	feb68fa3          	sb	a1,-1(a3)
   12fea:	57ba                	lw	a5,172(sp)
   12fec:	41ac0733          	sub	a4,s8,s10
   12ff0:	d03a                	sw	a4,32(sp)
   12ff2:	fff78713          	addi	a4,a5,-1
   12ff6:	ce3e                	sw	a5,28(sp)
   12ff8:	06100613          	li	a2,97
   12ffc:	d73a                	sw	a4,172(sp)
   12ffe:	07000693          	li	a3,112
   13002:	00c88663          	beq	a7,a2,1300e <_vfprintf_r+0x1854>
   13006:	05000693          	li	a3,80
   1300a:	04100893          	li	a7,65
   1300e:	4605                	li	a2,1
   13010:	f42ff06f          	j	12752 <_vfprintf_r+0xf98>
   13014:	86d6                	mv	a3,s5
   13016:	460d                	li	a2,3
   13018:	b355                	j	12dbc <_vfprintf_r+0x1602>
   1301a:	47f2                	lw	a5,28(sp)
   1301c:	00a7c583          	lbu	a1,10(a5)
   13020:	b7d9                	j	12fe6 <_vfprintf_r+0x182c>
   13022:	0a714703          	lbu	a4,167(sp)
   13026:	4cb6                	lw	s9,76(sp)
   13028:	4a81                	li	s5,0
   1302a:	c319                	beqz	a4,13030 <_vfprintf_r+0x1876>
   1302c:	afbfe06f          	j	11b26 <_vfprintf_r+0x36c>
   13030:	915fe06f          	j	11944 <_vfprintf_r+0x18a>
   13034:	5782                	lw	a5,32(sp)
   13036:	4772                	lw	a4,28(sp)
   13038:	12f74763          	blt	a4,a5,13166 <_vfprintf_r+0x19ac>
   1303c:	47f2                	lw	a5,28(sp)
   1303e:	001cf713          	andi	a4,s9,1
   13042:	8b3e                	mv	s6,a5
   13044:	c701                	beqz	a4,1304c <_vfprintf_r+0x1892>
   13046:	5732                	lw	a4,44(sp)
   13048:	00e78b33          	add	s6,a5,a4
   1304c:	400cfe13          	andi	t3,s9,1024
   13050:	000e0563          	beqz	t3,1305a <_vfprintf_r+0x18a0>
   13054:	47f2                	lw	a5,28(sp)
   13056:	1ef04c63          	bgtz	a5,1324e <_vfprintf_r+0x1a94>
   1305a:	fffb4693          	not	a3,s6
   1305e:	86fd                	srai	a3,a3,0x1f
   13060:	00db7db3          	and	s11,s6,a3
   13064:	06700893          	li	a7,103
   13068:	d402                	sw	zero,40(sp)
   1306a:	d202                	sw	zero,36(sp)
   1306c:	f88ff06f          	j	127f4 <_vfprintf_r+0x103a>
   13070:	01d0                	addi	a2,sp,196
   13072:	85a6                	mv	a1,s1
   13074:	854a                	mv	a0,s2
   13076:	2669                	jal	13400 <__sprint_r>
   13078:	98051d63          	bnez	a0,12212 <_vfprintf_r+0xa58>
   1307c:	000cc683          	lbu	a3,0(s9)
   13080:	463e                	lw	a2,204(sp)
   13082:	85ce                	mv	a1,s3
   13084:	4741                	li	a4,16
   13086:	481d                	li	a6,7
   13088:	9d36                	add	s10,s10,a3
   1308a:	b69d                	j	12bf0 <_vfprintf_r+0x1436>
   1308c:	4525                	li	a0,9
   1308e:	83656ae3          	bltu	a0,s6,128c2 <_vfprintf_r+0x1108>
   13092:	b861                	j	1292a <_vfprintf_r+0x1170>
   13094:	57fd                	li	a5,-1
   13096:	c63e                	sw	a5,12(sp)
   13098:	9b1fe06f          	j	11a48 <_vfprintf_r+0x28e>
   1309c:	02d00793          	li	a5,45
   130a0:	0af103a3          	sb	a5,167(sp)
   130a4:	02d00713          	li	a4,45
   130a8:	b2a1                	j	129f0 <_vfprintf_r+0x1236>
   130aa:	0a714703          	lbu	a4,167(sp)
   130ae:	ca62                	sw	s8,20(sp)
   130b0:	d402                	sw	zero,40(sp)
   130b2:	d202                	sw	zero,36(sp)
   130b4:	ce02                	sw	zero,28(sp)
   130b6:	8dd6                	mv	s11,s5
   130b8:	8b56                	mv	s6,s5
   130ba:	4a81                	li	s5,0
   130bc:	c319                	beqz	a4,130c2 <_vfprintf_r+0x1908>
   130be:	a69fe06f          	j	11b26 <_vfprintf_r+0x36c>
   130c2:	883fe06f          	j	11944 <_vfprintf_r+0x18a>
   130c6:	4522                	lw	a0,8(sp)
   130c8:	01d0                	addi	a2,sp,196
   130ca:	85a6                	mv	a1,s1
   130cc:	2e15                	jal	13400 <__sprint_r>
   130ce:	94051263          	bnez	a0,12212 <_vfprintf_r+0xa58>
   130d2:	5aba                	lw	s5,172(sp)
   130d4:	5782                	lw	a5,32(sp)
   130d6:	463e                	lw	a2,204(sp)
   130d8:	844e                	mv	s0,s3
   130da:	41578ab3          	sub	s5,a5,s5
   130de:	b12ff06f          	j	123f0 <_vfprintf_r+0xc36>
   130e2:	67e9                	lui	a5,0x1a
   130e4:	0e478d13          	addi	s10,a5,228 # 1a0e4 <__clzsi2+0xd2>
   130e8:	ba19                	j	129fe <_vfprintf_r+0x1244>
   130ea:	57ba                	lw	a5,172(sp)
   130ec:	ce3e                	sw	a5,28(sp)
   130ee:	87ba                	mv	a5,a4
   130f0:	b165                	j	12d98 <_vfprintf_r+0x15de>
   130f2:	010c                	addi	a1,sp,128
   130f4:	855a                	mv	a0,s6
   130f6:	ceba                	sw	a4,92(sp)
   130f8:	ccb2                	sw	a2,88(sp)
   130fa:	cac6                	sw	a7,84(sp)
   130fc:	c8b6                	sw	a3,80(sp)
   130fe:	c97e                	sw	t6,144(sp)
   13100:	d47e                	sw	t6,40(sp)
   13102:	cb7a                	sw	t5,148(sp)
   13104:	d27a                	sw	t5,36(sp)
   13106:	cd76                	sw	t4,152(sp)
   13108:	d076                	sw	t4,32(sp)
   1310a:	ce2e                	sw	a1,28(sp)
   1310c:	cf62                	sw	s8,156(sp)
   1310e:	c102                	sw	zero,128(sp)
   13110:	c302                	sw	zero,132(sp)
   13112:	c502                	sw	zero,136(sp)
   13114:	c702                	sw	zero,140(sp)
   13116:	28d040ef          	jal	17ba2 <__eqtf2>
   1311a:	45f2                	lw	a1,28(sp)
   1311c:	5e82                	lw	t4,32(sp)
   1311e:	5f12                	lw	t5,36(sp)
   13120:	5fa2                	lw	t6,40(sp)
   13122:	46c6                	lw	a3,80(sp)
   13124:	48d6                	lw	a7,84(sp)
   13126:	4666                	lw	a2,88(sp)
   13128:	4776                	lw	a4,92(sp)
   1312a:	1c051063          	bnez	a0,132ea <_vfprintf_r+0x1b30>
   1312e:	57ba                	lw	a5,172(sp)
   13130:	973e                	add	a4,a4,a5
   13132:	ce3e                	sw	a5,28(sp)
   13134:	41a707b3          	sub	a5,a4,s10
   13138:	d03e                	sw	a5,32(sp)
   1313a:	47f2                	lw	a5,28(sp)
   1313c:	001cf713          	andi	a4,s9,1
   13140:	01576733          	or	a4,a4,s5
   13144:	1af05963          	blez	a5,132f6 <_vfprintf_r+0x1b3c>
   13148:	18071463          	bnez	a4,132d0 <_vfprintf_r+0x1b16>
   1314c:	4b72                	lw	s6,28(sp)
   1314e:	06600893          	li	a7,102
   13152:	400cfe13          	andi	t3,s9,1024
   13156:	0e0e1e63          	bnez	t3,13252 <_vfprintf_r+0x1a98>
   1315a:	fffb4693          	not	a3,s6
   1315e:	86fd                	srai	a3,a3,0x1f
   13160:	00db7db3          	and	s11,s6,a3
   13164:	b711                	j	13068 <_vfprintf_r+0x18ae>
   13166:	5782                	lw	a5,32(sp)
   13168:	5732                	lw	a4,44(sp)
   1316a:	06700893          	li	a7,103
   1316e:	00e78b33          	add	s6,a5,a4
   13172:	47f2                	lw	a5,28(sp)
   13174:	fcf04fe3          	bgtz	a5,13152 <_vfprintf_r+0x1998>
   13178:	40fb0f33          	sub	t5,s6,a5
   1317c:	001f0b13          	addi	s6,t5,1
   13180:	fffb4693          	not	a3,s6
   13184:	86fd                	srai	a3,a3,0x1f
   13186:	00db7db3          	and	s11,s6,a3
   1318a:	bdf9                	j	13068 <_vfprintf_r+0x18ae>
   1318c:	8ee6                	mv	t4,s9
   1318e:	cf5fe06f          	j	11e82 <_vfprintf_r+0x6c8>
   13192:	6869                	lui	a6,0x1a
   13194:	55c1                	li	a1,-16
   13196:	40a00ab3          	neg	s5,a0
   1319a:	56c80813          	addi	a6,a6,1388 # 1a56c <zeroes.0>
   1319e:	04b55263          	bge	a0,a1,131e2 <_vfprintf_r+0x1a28>
   131a2:	ce4a                	sw	s2,28(sp)
   131a4:	4b41                	li	s6,16
   131a6:	4c1d                	li	s8,7
   131a8:	8942                	mv	s2,a6
   131aa:	a021                	j	131b2 <_vfprintf_r+0x19f8>
   131ac:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc4594>
   131ae:	035b5863          	bge	s6,s5,131de <_vfprintf_r+0x1a24>
   131b2:	0641                	addi	a2,a2,16
   131b4:	0705                	addi	a4,a4,1
   131b6:	01242023          	sw	s2,0(s0)
   131ba:	01642223          	sw	s6,4(s0)
   131be:	c7b2                	sw	a2,204(sp)
   131c0:	c5ba                	sw	a4,200(sp)
   131c2:	0421                	addi	s0,s0,8
   131c4:	feec54e3          	bge	s8,a4,131ac <_vfprintf_r+0x19f2>
   131c8:	4522                	lw	a0,8(sp)
   131ca:	01d0                	addi	a2,sp,196
   131cc:	85a6                	mv	a1,s1
   131ce:	2c0d                	jal	13400 <__sprint_r>
   131d0:	c119                	beqz	a0,131d6 <_vfprintf_r+0x1a1c>
   131d2:	840ff06f          	j	12212 <_vfprintf_r+0xa58>
   131d6:	463e                	lw	a2,204(sp)
   131d8:	472e                	lw	a4,200(sp)
   131da:	844e                	mv	s0,s3
   131dc:	bfc1                	j	131ac <_vfprintf_r+0x19f2>
   131de:	884a                	mv	a6,s2
   131e0:	4972                	lw	s2,28(sp)
   131e2:	9656                	add	a2,a2,s5
   131e4:	0705                	addi	a4,a4,1
   131e6:	01042023          	sw	a6,0(s0)
   131ea:	01542223          	sw	s5,4(s0)
   131ee:	c7b2                	sw	a2,204(sp)
   131f0:	c5ba                	sw	a4,200(sp)
   131f2:	459d                	li	a1,7
   131f4:	f8e5d763          	bge	a1,a4,12982 <_vfprintf_r+0x11c8>
   131f8:	4522                	lw	a0,8(sp)
   131fa:	01d0                	addi	a2,sp,196
   131fc:	85a6                	mv	a1,s1
   131fe:	2409                	jal	13400 <__sprint_r>
   13200:	c119                	beqz	a0,13206 <_vfprintf_r+0x1a4c>
   13202:	810ff06f          	j	12212 <_vfprintf_r+0xa58>
   13206:	463e                	lw	a2,204(sp)
   13208:	472e                	lw	a4,200(sp)
   1320a:	844e                	mv	s0,s3
   1320c:	837ff06f          	j	12a42 <_vfprintf_r+0x1288>
   13210:	0b610693          	addi	a3,sp,182
   13214:	e619                	bnez	a2,13222 <_vfprintf_r+0x1a68>
   13216:	03000693          	li	a3,48
   1321a:	0ad10b23          	sb	a3,182(sp)
   1321e:	0b710693          	addi	a3,sp,183
   13222:	0b1c                	addi	a5,sp,400
   13224:	40f68633          	sub	a2,a3,a5
   13228:	03070713          	addi	a4,a4,48
   1322c:	0dd60793          	addi	a5,a2,221
   13230:	00e68023          	sb	a4,0(a3)
   13234:	c0be                	sw	a5,64(sp)
   13236:	d92ff06f          	j	127c8 <_vfprintf_r+0x100e>
   1323a:	c802                	sw	zero,16(sp)
   1323c:	4a99                	li	s5,6
   1323e:	9effe06f          	j	11c2c <_vfprintf_r+0x472>
   13242:	001cf713          	andi	a4,s9,1
   13246:	d8070a63          	beqz	a4,127da <_vfprintf_r+0x1020>
   1324a:	d8cff06f          	j	127d6 <_vfprintf_r+0x101c>
   1324e:	06700893          	li	a7,103
   13252:	5672                	lw	a2,60(sp)
   13254:	0ff00693          	li	a3,255
   13258:	00064703          	lbu	a4,0(a2)
   1325c:	0ed70163          	beq	a4,a3,1333e <_vfprintf_r+0x1b84>
   13260:	47f2                	lw	a5,28(sp)
   13262:	4501                	li	a0,0
   13264:	4581                	li	a1,0
   13266:	00f75a63          	bge	a4,a5,1327a <_vfprintf_r+0x1ac0>
   1326a:	8f99                	sub	a5,a5,a4
   1326c:	00164703          	lbu	a4,1(a2)
   13270:	c71d                	beqz	a4,1329e <_vfprintf_r+0x1ae4>
   13272:	0585                	addi	a1,a1,1
   13274:	0605                	addi	a2,a2,1
   13276:	fed718e3          	bne	a4,a3,13266 <_vfprintf_r+0x1aac>
   1327a:	de32                	sw	a2,60(sp)
   1327c:	d22e                	sw	a1,36(sp)
   1327e:	d42a                	sw	a0,40(sp)
   13280:	ce3e                	sw	a5,28(sp)
   13282:	57a2                	lw	a5,40(sp)
   13284:	5712                	lw	a4,36(sp)
   13286:	973e                	add	a4,a4,a5
   13288:	47a6                	lw	a5,72(sp)
   1328a:	02f70733          	mul	a4,a4,a5
   1328e:	9b3a                	add	s6,s6,a4
   13290:	fffb4693          	not	a3,s6
   13294:	86fd                	srai	a3,a3,0x1f
   13296:	00db7db3          	and	s11,s6,a3
   1329a:	d5aff06f          	j	127f4 <_vfprintf_r+0x103a>
   1329e:	00064703          	lbu	a4,0(a2)
   132a2:	0505                	addi	a0,a0,1
   132a4:	bfc9                	j	13276 <_vfprintf_r+0x1abc>
   132a6:	8c4a                	mv	s8,s2
   132a8:	001a8693          	addi	a3,s5,1
   132ac:	5892                	lw	a7,36(sp)
   132ae:	5ca2                	lw	s9,40(sp)
   132b0:	4b86                	lw	s7,64(sp)
   132b2:	4436                	lw	s0,76(sp)
   132b4:	5902                	lw	s2,32(sp)
   132b6:	44c6                	lw	s1,80(sp)
   132b8:	4d56                	lw	s10,84(sp)
   132ba:	96e2                	add	a3,a3,s8
   132bc:	03000613          	li	a2,48
   132c0:	d20ac5e3          	bltz	s5,12fea <_vfprintf_r+0x1830>
   132c4:	0c05                	addi	s8,s8,1
   132c6:	fecc0fa3          	sb	a2,-1(s8)
   132ca:	fedc1de3          	bne	s8,a3,132c4 <_vfprintf_r+0x1b0a>
   132ce:	bb31                	j	12fea <_vfprintf_r+0x1830>
   132d0:	5732                	lw	a4,44(sp)
   132d2:	06600893          	li	a7,102
   132d6:	00ea8f33          	add	t5,s5,a4
   132da:	00ff0b33          	add	s6,t5,a5
   132de:	bd95                	j	13152 <_vfprintf_r+0x1998>
   132e0:	6769                	lui	a4,0x1a
   132e2:	0e870793          	addi	a5,a4,232 # 1a0e8 <__clzsi2+0xd6>
   132e6:	ce3e                	sw	a5,28(sp)
   132e8:	b66d                	j	12e92 <_vfprintf_r+0x16d8>
   132ea:	4505                	li	a0,1
   132ec:	40d506b3          	sub	a3,a0,a3
   132f0:	d736                	sw	a3,172(sp)
   132f2:	9736                	add	a4,a4,a3
   132f4:	b485                	j	12d54 <_vfprintf_r+0x159a>
   132f6:	e711                	bnez	a4,13302 <_vfprintf_r+0x1b48>
   132f8:	4d85                	li	s11,1
   132fa:	06600893          	li	a7,102
   132fe:	4b05                	li	s6,1
   13300:	b3a5                	j	13068 <_vfprintf_r+0x18ae>
   13302:	57b2                	lw	a5,44(sp)
   13304:	06600893          	li	a7,102
   13308:	00178f13          	addi	t5,a5,1
   1330c:	015f0b33          	add	s6,t5,s5
   13310:	fffb4693          	not	a3,s6
   13314:	86fd                	srai	a3,a3,0x1f
   13316:	00db7db3          	and	s11,s6,a3
   1331a:	b3b9                	j	13068 <_vfprintf_r+0x18ae>
   1331c:	4789                	li	a5,2
   1331e:	c0be                	sw	a5,64(sp)
   13320:	ca8ff06f          	j	127c8 <_vfprintf_r+0x100e>
   13324:	47d2                	lw	a5,20(sp)
   13326:	0007aa83          	lw	s5,0(a5)
   1332a:	0791                	addi	a5,a5,4
   1332c:	000ad363          	bgez	s5,13332 <_vfprintf_r+0x1b78>
   13330:	5afd                	li	s5,-1
   13332:	00194883          	lbu	a7,1(s2)
   13336:	ca3e                	sw	a5,20(sp)
   13338:	8936                	mv	s2,a3
   1333a:	db0fe06f          	j	118ea <_vfprintf_r+0x130>
   1333e:	d402                	sw	zero,40(sp)
   13340:	d202                	sw	zero,36(sp)
   13342:	b781                	j	13282 <_vfprintf_r+0x1ac8>
   13344:	04500613          	li	a2,69
   13348:	010c                	addi	a1,sp,128
   1334a:	b429                	j	12d54 <_vfprintf_r+0x159a>
   1334c:	00c4d783          	lhu	a5,12(s1)
   13350:	0407e793          	ori	a5,a5,64
   13354:	00f49623          	sh	a5,12(s1)
   13358:	ebefe06f          	j	11a16 <_vfprintf_r+0x25c>

0001335c <vfprintf>:
   1335c:	87aa                	mv	a5,a0
   1335e:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13362:	86b2                	mv	a3,a2
   13364:	862e                	mv	a2,a1
   13366:	85be                	mv	a1,a5
   13368:	c52fe06f          	j	117ba <_vfprintf_r>

0001336c <__sbprintf>:
   1336c:	b8010113          	addi	sp,sp,-1152
   13370:	00c59783          	lh	a5,12(a1)
   13374:	00e5d703          	lhu	a4,14(a1)
   13378:	46812c23          	sw	s0,1144(sp)
   1337c:	842e                	mv	s0,a1
   1337e:	65c1                	lui	a1,0x10
   13380:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   13382:	06442e03          	lw	t3,100(s0)
   13386:	01c42303          	lw	t1,28(s0)
   1338a:	02442883          	lw	a7,36(s0)
   1338e:	0742                	slli	a4,a4,0x10
   13390:	8fed                	and	a5,a5,a1
   13392:	8fd9                	or	a5,a5,a4
   13394:	40000813          	li	a6,1024
   13398:	ca3e                	sw	a5,20(sp)
   1339a:	002c                	addi	a1,sp,8
   1339c:	189c                	addi	a5,sp,112
   1339e:	46912a23          	sw	s1,1140(sp)
   133a2:	47212823          	sw	s2,1136(sp)
   133a6:	46112e23          	sw	ra,1148(sp)
   133aa:	892a                	mv	s2,a0
   133ac:	d6f2                	sw	t3,108(sp)
   133ae:	d21a                	sw	t1,36(sp)
   133b0:	d646                	sw	a7,44(sp)
   133b2:	c43e                	sw	a5,8(sp)
   133b4:	cc3e                	sw	a5,24(sp)
   133b6:	c842                	sw	a6,16(sp)
   133b8:	ce42                	sw	a6,28(sp)
   133ba:	d002                	sw	zero,32(sp)
   133bc:	bfefe0ef          	jal	117ba <_vfprintf_r>
   133c0:	84aa                	mv	s1,a0
   133c2:	02055963          	bgez	a0,133f4 <__sbprintf+0x88>
   133c6:	01415783          	lhu	a5,20(sp)
   133ca:	0407f793          	andi	a5,a5,64
   133ce:	c799                	beqz	a5,133dc <__sbprintf+0x70>
   133d0:	00c45783          	lhu	a5,12(s0)
   133d4:	0407e793          	ori	a5,a5,64
   133d8:	00f41623          	sh	a5,12(s0)
   133dc:	47c12083          	lw	ra,1148(sp)
   133e0:	47812403          	lw	s0,1144(sp)
   133e4:	47012903          	lw	s2,1136(sp)
   133e8:	8526                	mv	a0,s1
   133ea:	47412483          	lw	s1,1140(sp)
   133ee:	48010113          	addi	sp,sp,1152
   133f2:	8082                	ret
   133f4:	002c                	addi	a1,sp,8
   133f6:	854a                	mv	a0,s2
   133f8:	2c9d                	jal	1366e <_fflush_r>
   133fa:	d571                	beqz	a0,133c6 <__sbprintf+0x5a>
   133fc:	54fd                	li	s1,-1
   133fe:	b7e1                	j	133c6 <__sbprintf+0x5a>

00013400 <__sprint_r>:
   13400:	461c                	lw	a5,8(a2)
   13402:	1141                	addi	sp,sp,-16
   13404:	c422                	sw	s0,8(sp)
   13406:	c606                	sw	ra,12(sp)
   13408:	8432                	mv	s0,a2
   1340a:	eb81                	bnez	a5,1341a <__sprint_r+0x1a>
   1340c:	40b2                	lw	ra,12(sp)
   1340e:	00042223          	sw	zero,4(s0)
   13412:	4422                	lw	s0,8(sp)
   13414:	4501                	li	a0,0
   13416:	0141                	addi	sp,sp,16
   13418:	8082                	ret
   1341a:	2ce9                	jal	136f4 <__sfvwrite_r>
   1341c:	40b2                	lw	ra,12(sp)
   1341e:	00042423          	sw	zero,8(s0)
   13422:	00042223          	sw	zero,4(s0)
   13426:	4422                	lw	s0,8(sp)
   13428:	0141                	addi	sp,sp,16
   1342a:	8082                	ret

0001342c <_fclose_r>:
   1342c:	1141                	addi	sp,sp,-16
   1342e:	c606                	sw	ra,12(sp)
   13430:	c04a                	sw	s2,0(sp)
   13432:	cd89                	beqz	a1,1344c <_fclose_r+0x20>
   13434:	c422                	sw	s0,8(sp)
   13436:	c226                	sw	s1,4(sp)
   13438:	842e                	mv	s0,a1
   1343a:	84aa                	mv	s1,a0
   1343c:	c119                	beqz	a0,13442 <_fclose_r+0x16>
   1343e:	595c                	lw	a5,52(a0)
   13440:	c7d1                	beqz	a5,134cc <_fclose_r+0xa0>
   13442:	00c41783          	lh	a5,12(s0)
   13446:	eb89                	bnez	a5,13458 <_fclose_r+0x2c>
   13448:	4422                	lw	s0,8(sp)
   1344a:	4492                	lw	s1,4(sp)
   1344c:	40b2                	lw	ra,12(sp)
   1344e:	4901                	li	s2,0
   13450:	854a                	mv	a0,s2
   13452:	4902                	lw	s2,0(sp)
   13454:	0141                	addi	sp,sp,16
   13456:	8082                	ret
   13458:	85a2                	mv	a1,s0
   1345a:	8526                	mv	a0,s1
   1345c:	28bd                	jal	134da <__sflush_r>
   1345e:	545c                	lw	a5,44(s0)
   13460:	892a                	mv	s2,a0
   13462:	c791                	beqz	a5,1346e <_fclose_r+0x42>
   13464:	4c4c                	lw	a1,28(s0)
   13466:	8526                	mv	a0,s1
   13468:	9782                	jalr	a5
   1346a:	04054663          	bltz	a0,134b6 <_fclose_r+0x8a>
   1346e:	00c45783          	lhu	a5,12(s0)
   13472:	0807f793          	andi	a5,a5,128
   13476:	e7b1                	bnez	a5,134c2 <_fclose_r+0x96>
   13478:	580c                	lw	a1,48(s0)
   1347a:	c991                	beqz	a1,1348e <_fclose_r+0x62>
   1347c:	04040793          	addi	a5,s0,64
   13480:	00f58563          	beq	a1,a5,1348a <_fclose_r+0x5e>
   13484:	8526                	mv	a0,s1
   13486:	b6bfd0ef          	jal	10ff0 <_free_r>
   1348a:	02042823          	sw	zero,48(s0)
   1348e:	406c                	lw	a1,68(s0)
   13490:	c591                	beqz	a1,1349c <_fclose_r+0x70>
   13492:	8526                	mv	a0,s1
   13494:	b5dfd0ef          	jal	10ff0 <_free_r>
   13498:	04042223          	sw	zero,68(s0)
   1349c:	b7cfd0ef          	jal	10818 <__sfp_lock_acquire>
   134a0:	00041623          	sh	zero,12(s0)
   134a4:	b76fd0ef          	jal	1081a <__sfp_lock_release>
   134a8:	40b2                	lw	ra,12(sp)
   134aa:	4422                	lw	s0,8(sp)
   134ac:	4492                	lw	s1,4(sp)
   134ae:	854a                	mv	a0,s2
   134b0:	4902                	lw	s2,0(sp)
   134b2:	0141                	addi	sp,sp,16
   134b4:	8082                	ret
   134b6:	00c45783          	lhu	a5,12(s0)
   134ba:	597d                	li	s2,-1
   134bc:	0807f793          	andi	a5,a5,128
   134c0:	dfc5                	beqz	a5,13478 <_fclose_r+0x4c>
   134c2:	480c                	lw	a1,16(s0)
   134c4:	8526                	mv	a0,s1
   134c6:	b2bfd0ef          	jal	10ff0 <_free_r>
   134ca:	b77d                	j	13478 <_fclose_r+0x4c>
   134cc:	b36fd0ef          	jal	10802 <__sinit>
   134d0:	bf8d                	j	13442 <_fclose_r+0x16>

000134d2 <fclose>:
   134d2:	85aa                	mv	a1,a0
   134d4:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   134d8:	bf91                	j	1342c <_fclose_r>

000134da <__sflush_r>:
   134da:	00c59703          	lh	a4,12(a1)
   134de:	1101                	addi	sp,sp,-32
   134e0:	cc22                	sw	s0,24(sp)
   134e2:	c64e                	sw	s3,12(sp)
   134e4:	ce06                	sw	ra,28(sp)
   134e6:	00877793          	andi	a5,a4,8
   134ea:	842e                	mv	s0,a1
   134ec:	89aa                	mv	s3,a0
   134ee:	e7e1                	bnez	a5,135b6 <__sflush_r+0xdc>
   134f0:	6785                	lui	a5,0x1
   134f2:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   134f6:	41d4                	lw	a3,4(a1)
   134f8:	8fd9                	or	a5,a5,a4
   134fa:	00f59623          	sh	a5,12(a1)
   134fe:	10d05563          	blez	a3,13608 <__sflush_r+0x12e>
   13502:	02842803          	lw	a6,40(s0)
   13506:	0a080263          	beqz	a6,135aa <__sflush_r+0xd0>
   1350a:	ca26                	sw	s1,20(sp)
   1350c:	01371693          	slli	a3,a4,0x13
   13510:	0009a483          	lw	s1,0(s3)
   13514:	0009a023          	sw	zero,0(s3)
   13518:	4c4c                	lw	a1,28(s0)
   1351a:	0e06ce63          	bltz	a3,13616 <__sflush_r+0x13c>
   1351e:	4601                	li	a2,0
   13520:	4685                	li	a3,1
   13522:	854e                	mv	a0,s3
   13524:	9802                	jalr	a6
   13526:	57fd                	li	a5,-1
   13528:	862a                	mv	a2,a0
   1352a:	10f50f63          	beq	a0,a5,13648 <__sflush_r+0x16e>
   1352e:	00c41783          	lh	a5,12(s0)
   13532:	02842803          	lw	a6,40(s0)
   13536:	4c4c                	lw	a1,28(s0)
   13538:	8b91                	andi	a5,a5,4
   1353a:	c799                	beqz	a5,13548 <__sflush_r+0x6e>
   1353c:	4058                	lw	a4,4(s0)
   1353e:	581c                	lw	a5,48(s0)
   13540:	8e19                	sub	a2,a2,a4
   13542:	c399                	beqz	a5,13548 <__sflush_r+0x6e>
   13544:	5c5c                	lw	a5,60(s0)
   13546:	8e1d                	sub	a2,a2,a5
   13548:	4681                	li	a3,0
   1354a:	854e                	mv	a0,s3
   1354c:	9802                	jalr	a6
   1354e:	57fd                	li	a5,-1
   13550:	0cf51563          	bne	a0,a5,1361a <__sflush_r+0x140>
   13554:	0009a683          	lw	a3,0(s3)
   13558:	47f5                	li	a5,29
   1355a:	00c41703          	lh	a4,12(s0)
   1355e:	10d7e163          	bltu	a5,a3,13660 <__sflush_r+0x186>
   13562:	204007b7          	lui	a5,0x20400
   13566:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e45a5>
   13568:	00d7d7b3          	srl	a5,a5,a3
   1356c:	8b85                	andi	a5,a5,1
   1356e:	cbed                	beqz	a5,13660 <__sflush_r+0x186>
   13570:	4810                	lw	a2,16(s0)
   13572:	77fd                	lui	a5,0xfffff
   13574:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   13578:	8ff9                	and	a5,a5,a4
   1357a:	00f41623          	sh	a5,12(s0)
   1357e:	00042223          	sw	zero,4(s0)
   13582:	c010                	sw	a2,0(s0)
   13584:	01371793          	slli	a5,a4,0x13
   13588:	0007d363          	bgez	a5,1358e <__sflush_r+0xb4>
   1358c:	c6dd                	beqz	a3,1363a <__sflush_r+0x160>
   1358e:	580c                	lw	a1,48(s0)
   13590:	0099a023          	sw	s1,0(s3)
   13594:	c9c5                	beqz	a1,13644 <__sflush_r+0x16a>
   13596:	04040793          	addi	a5,s0,64
   1359a:	00f58563          	beq	a1,a5,135a4 <__sflush_r+0xca>
   1359e:	854e                	mv	a0,s3
   135a0:	a51fd0ef          	jal	10ff0 <_free_r>
   135a4:	44d2                	lw	s1,20(sp)
   135a6:	02042823          	sw	zero,48(s0)
   135aa:	4501                	li	a0,0
   135ac:	40f2                	lw	ra,28(sp)
   135ae:	4462                	lw	s0,24(sp)
   135b0:	49b2                	lw	s3,12(sp)
   135b2:	6105                	addi	sp,sp,32
   135b4:	8082                	ret
   135b6:	c84a                	sw	s2,16(sp)
   135b8:	0105a903          	lw	s2,16(a1)
   135bc:	04090b63          	beqz	s2,13612 <__sflush_r+0x138>
   135c0:	ca26                	sw	s1,20(sp)
   135c2:	4184                	lw	s1,0(a1)
   135c4:	8b0d                	andi	a4,a4,3
   135c6:	0125a023          	sw	s2,0(a1)
   135ca:	412484b3          	sub	s1,s1,s2
   135ce:	4781                	li	a5,0
   135d0:	e311                	bnez	a4,135d4 <__sflush_r+0xfa>
   135d2:	49dc                	lw	a5,20(a1)
   135d4:	c41c                	sw	a5,8(s0)
   135d6:	00904663          	bgtz	s1,135e2 <__sflush_r+0x108>
   135da:	a81d                	j	13610 <__sflush_r+0x136>
   135dc:	992a                	add	s2,s2,a0
   135de:	02905963          	blez	s1,13610 <__sflush_r+0x136>
   135e2:	505c                	lw	a5,36(s0)
   135e4:	4c4c                	lw	a1,28(s0)
   135e6:	86a6                	mv	a3,s1
   135e8:	864a                	mv	a2,s2
   135ea:	854e                	mv	a0,s3
   135ec:	9782                	jalr	a5
   135ee:	8c89                	sub	s1,s1,a0
   135f0:	fea046e3          	bgtz	a0,135dc <__sflush_r+0x102>
   135f4:	00c41703          	lh	a4,12(s0)
   135f8:	4942                	lw	s2,16(sp)
   135fa:	04076713          	ori	a4,a4,64
   135fe:	44d2                	lw	s1,20(sp)
   13600:	00e41623          	sh	a4,12(s0)
   13604:	557d                	li	a0,-1
   13606:	b75d                	j	135ac <__sflush_r+0xd2>
   13608:	5dd4                	lw	a3,60(a1)
   1360a:	eed04ce3          	bgtz	a3,13502 <__sflush_r+0x28>
   1360e:	bf71                	j	135aa <__sflush_r+0xd0>
   13610:	44d2                	lw	s1,20(sp)
   13612:	4942                	lw	s2,16(sp)
   13614:	bf59                	j	135aa <__sflush_r+0xd0>
   13616:	4830                	lw	a2,80(s0)
   13618:	b705                	j	13538 <__sflush_r+0x5e>
   1361a:	00c41703          	lh	a4,12(s0)
   1361e:	4814                	lw	a3,16(s0)
   13620:	77fd                	lui	a5,0xfffff
   13622:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   13626:	8ff9                	and	a5,a5,a4
   13628:	00f41623          	sh	a5,12(s0)
   1362c:	00042223          	sw	zero,4(s0)
   13630:	c014                	sw	a3,0(s0)
   13632:	01371793          	slli	a5,a4,0x13
   13636:	f407dce3          	bgez	a5,1358e <__sflush_r+0xb4>
   1363a:	580c                	lw	a1,48(s0)
   1363c:	c828                	sw	a0,80(s0)
   1363e:	0099a023          	sw	s1,0(s3)
   13642:	f9b1                	bnez	a1,13596 <__sflush_r+0xbc>
   13644:	44d2                	lw	s1,20(sp)
   13646:	b795                	j	135aa <__sflush_r+0xd0>
   13648:	0009a783          	lw	a5,0(s3)
   1364c:	ee0781e3          	beqz	a5,1352e <__sflush_r+0x54>
   13650:	4775                	li	a4,29
   13652:	00e78a63          	beq	a5,a4,13666 <__sflush_r+0x18c>
   13656:	4759                	li	a4,22
   13658:	00e78763          	beq	a5,a4,13666 <__sflush_r+0x18c>
   1365c:	00c41703          	lh	a4,12(s0)
   13660:	04076713          	ori	a4,a4,64
   13664:	bf69                	j	135fe <__sflush_r+0x124>
   13666:	0099a023          	sw	s1,0(s3)
   1366a:	44d2                	lw	s1,20(sp)
   1366c:	bf3d                	j	135aa <__sflush_r+0xd0>

0001366e <_fflush_r>:
   1366e:	1101                	addi	sp,sp,-32
   13670:	cc22                	sw	s0,24(sp)
   13672:	ce06                	sw	ra,28(sp)
   13674:	842a                	mv	s0,a0
   13676:	c119                	beqz	a0,1367c <_fflush_r+0xe>
   13678:	595c                	lw	a5,52(a0)
   1367a:	cf91                	beqz	a5,13696 <_fflush_r+0x28>
   1367c:	00c59783          	lh	a5,12(a1)
   13680:	e791                	bnez	a5,1368c <_fflush_r+0x1e>
   13682:	40f2                	lw	ra,28(sp)
   13684:	4462                	lw	s0,24(sp)
   13686:	4501                	li	a0,0
   13688:	6105                	addi	sp,sp,32
   1368a:	8082                	ret
   1368c:	8522                	mv	a0,s0
   1368e:	4462                	lw	s0,24(sp)
   13690:	40f2                	lw	ra,28(sp)
   13692:	6105                	addi	sp,sp,32
   13694:	b599                	j	134da <__sflush_r>
   13696:	c62e                	sw	a1,12(sp)
   13698:	96afd0ef          	jal	10802 <__sinit>
   1369c:	45b2                	lw	a1,12(sp)
   1369e:	bff9                	j	1367c <_fflush_r+0xe>

000136a0 <fflush>:
   136a0:	cd05                	beqz	a0,136d8 <fflush+0x38>
   136a2:	85aa                	mv	a1,a0
   136a4:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   136a8:	c119                	beqz	a0,136ae <fflush+0xe>
   136aa:	595c                	lw	a5,52(a0)
   136ac:	c799                	beqz	a5,136ba <fflush+0x1a>
   136ae:	00c59783          	lh	a5,12(a1)
   136b2:	e399                	bnez	a5,136b8 <fflush+0x18>
   136b4:	4501                	li	a0,0
   136b6:	8082                	ret
   136b8:	b50d                	j	134da <__sflush_r>
   136ba:	1101                	addi	sp,sp,-32
   136bc:	c62e                	sw	a1,12(sp)
   136be:	c42a                	sw	a0,8(sp)
   136c0:	ce06                	sw	ra,28(sp)
   136c2:	940fd0ef          	jal	10802 <__sinit>
   136c6:	45b2                	lw	a1,12(sp)
   136c8:	4522                	lw	a0,8(sp)
   136ca:	00c59783          	lh	a5,12(a1)
   136ce:	e385                	bnez	a5,136ee <fflush+0x4e>
   136d0:	40f2                	lw	ra,28(sp)
   136d2:	4501                	li	a0,0
   136d4:	6105                	addi	sp,sp,32
   136d6:	8082                	ret
   136d8:	666d                	lui	a2,0x1b
   136da:	65cd                	lui	a1,0x13
   136dc:	656d                	lui	a0,0x1b
   136de:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   136e2:	66e58593          	addi	a1,a1,1646 # 1366e <_fflush_r>
   136e6:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   136ea:	952fd06f          	j	1083c <_fwalk_sglue>
   136ee:	40f2                	lw	ra,28(sp)
   136f0:	6105                	addi	sp,sp,32
   136f2:	b3e5                	j	134da <__sflush_r>

000136f4 <__sfvwrite_r>:
   136f4:	461c                	lw	a5,8(a2)
   136f6:	1c078d63          	beqz	a5,138d0 <__sfvwrite_r+0x1dc>
   136fa:	00c59683          	lh	a3,12(a1)
   136fe:	7179                	addi	sp,sp,-48
   13700:	d422                	sw	s0,40(sp)
   13702:	cc52                	sw	s4,24(sp)
   13704:	c85a                	sw	s6,16(sp)
   13706:	d606                	sw	ra,44(sp)
   13708:	0086f793          	andi	a5,a3,8
   1370c:	8b32                	mv	s6,a2
   1370e:	8a2a                	mv	s4,a0
   13710:	842e                	mv	s0,a1
   13712:	c7ad                	beqz	a5,1377c <__sfvwrite_r+0x88>
   13714:	499c                	lw	a5,16(a1)
   13716:	c3bd                	beqz	a5,1377c <__sfvwrite_r+0x88>
   13718:	d226                	sw	s1,36(sp)
   1371a:	d04a                	sw	s2,32(sp)
   1371c:	ce4e                	sw	s3,28(sp)
   1371e:	ca56                	sw	s5,20(sp)
   13720:	0026f793          	andi	a5,a3,2
   13724:	000b2483          	lw	s1,0(s6)
   13728:	cbb5                	beqz	a5,1379c <__sfvwrite_r+0xa8>
   1372a:	505c                	lw	a5,36(s0)
   1372c:	4c4c                	lw	a1,28(s0)
   1372e:	80000ab7          	lui	s5,0x80000
   13732:	4981                	li	s3,0
   13734:	4901                	li	s2,0
   13736:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe41a4>
   1373a:	864e                	mv	a2,s3
   1373c:	8552                	mv	a0,s4
   1373e:	02090963          	beqz	s2,13770 <__sfvwrite_r+0x7c>
   13742:	86ca                	mv	a3,s2
   13744:	012af363          	bgeu	s5,s2,1374a <__sfvwrite_r+0x56>
   13748:	86d6                	mv	a3,s5
   1374a:	9782                	jalr	a5
   1374c:	2ca05d63          	blez	a0,13a26 <__sfvwrite_r+0x332>
   13750:	008b2783          	lw	a5,8(s6)
   13754:	99aa                	add	s3,s3,a0
   13756:	40a90933          	sub	s2,s2,a0
   1375a:	8f89                	sub	a5,a5,a0
   1375c:	00fb2423          	sw	a5,8(s6)
   13760:	12078663          	beqz	a5,1388c <__sfvwrite_r+0x198>
   13764:	505c                	lw	a5,36(s0)
   13766:	4c4c                	lw	a1,28(s0)
   13768:	864e                	mv	a2,s3
   1376a:	8552                	mv	a0,s4
   1376c:	fc091be3          	bnez	s2,13742 <__sfvwrite_r+0x4e>
   13770:	0004a983          	lw	s3,0(s1)
   13774:	0044a903          	lw	s2,4(s1)
   13778:	04a1                	addi	s1,s1,8
   1377a:	b7c1                	j	1373a <__sfvwrite_r+0x46>
   1377c:	85a2                	mv	a1,s0
   1377e:	8552                	mv	a0,s4
   13780:	2c7d                	jal	13a3e <__swsetup_r>
   13782:	14051063          	bnez	a0,138c2 <__sfvwrite_r+0x1ce>
   13786:	00c41683          	lh	a3,12(s0)
   1378a:	d226                	sw	s1,36(sp)
   1378c:	d04a                	sw	s2,32(sp)
   1378e:	ce4e                	sw	s3,28(sp)
   13790:	ca56                	sw	s5,20(sp)
   13792:	0026f793          	andi	a5,a3,2
   13796:	000b2483          	lw	s1,0(s6)
   1379a:	fbc1                	bnez	a5,1372a <__sfvwrite_r+0x36>
   1379c:	c65e                	sw	s7,12(sp)
   1379e:	c462                	sw	s8,8(sp)
   137a0:	0016f793          	andi	a5,a3,1
   137a4:	12079863          	bnez	a5,138d4 <__sfvwrite_r+0x1e0>
   137a8:	401c                	lw	a5,0(s0)
   137aa:	4418                	lw	a4,8(s0)
   137ac:	80000ab7          	lui	s5,0x80000
   137b0:	c266                	sw	s9,4(sp)
   137b2:	4b81                	li	s7,0
   137b4:	4981                	li	s3,0
   137b6:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   137b8:	853e                	mv	a0,a5
   137ba:	8c3a                	mv	s8,a4
   137bc:	0a098f63          	beqz	s3,1387a <__sfvwrite_r+0x186>
   137c0:	2006f613          	andi	a2,a3,512
   137c4:	1a060663          	beqz	a2,13970 <__sfvwrite_r+0x27c>
   137c8:	8cba                	mv	s9,a4
   137ca:	20e9e663          	bltu	s3,a4,139d6 <__sfvwrite_r+0x2e2>
   137ce:	4806f713          	andi	a4,a3,1152
   137d2:	cb25                	beqz	a4,13842 <__sfvwrite_r+0x14e>
   137d4:	4850                	lw	a2,20(s0)
   137d6:	480c                	lw	a1,16(s0)
   137d8:	00161713          	slli	a4,a2,0x1
   137dc:	9732                	add	a4,a4,a2
   137de:	40b78933          	sub	s2,a5,a1
   137e2:	01f75c13          	srli	s8,a4,0x1f
   137e6:	9c3a                	add	s8,s8,a4
   137e8:	00190793          	addi	a5,s2,1
   137ec:	401c5c13          	srai	s8,s8,0x1
   137f0:	97ce                	add	a5,a5,s3
   137f2:	8662                	mv	a2,s8
   137f4:	00fc7463          	bgeu	s8,a5,137fc <__sfvwrite_r+0x108>
   137f8:	8c3e                	mv	s8,a5
   137fa:	863e                	mv	a2,a5
   137fc:	4006f693          	andi	a3,a3,1024
   13800:	1e068a63          	beqz	a3,139f4 <__sfvwrite_r+0x300>
   13804:	85b2                	mv	a1,a2
   13806:	8552                	mv	a0,s4
   13808:	a0bfd0ef          	jal	11212 <_malloc_r>
   1380c:	8caa                	mv	s9,a0
   1380e:	20050f63          	beqz	a0,13a2c <__sfvwrite_r+0x338>
   13812:	480c                	lw	a1,16(s0)
   13814:	864a                	mv	a2,s2
   13816:	c8afd0ef          	jal	10ca0 <memcpy>
   1381a:	00c45783          	lhu	a5,12(s0)
   1381e:	b7f7f793          	andi	a5,a5,-1153
   13822:	0807e793          	ori	a5,a5,128
   13826:	00f41623          	sh	a5,12(s0)
   1382a:	012c8533          	add	a0,s9,s2
   1382e:	412c07b3          	sub	a5,s8,s2
   13832:	01942823          	sw	s9,16(s0)
   13836:	01842a23          	sw	s8,20(s0)
   1383a:	c008                	sw	a0,0(s0)
   1383c:	8c4e                	mv	s8,s3
   1383e:	c41c                	sw	a5,8(s0)
   13840:	8cce                	mv	s9,s3
   13842:	8666                	mv	a2,s9
   13844:	85de                	mv	a1,s7
   13846:	2999                	jal	13c9c <memmove>
   13848:	4418                	lw	a4,8(s0)
   1384a:	401c                	lw	a5,0(s0)
   1384c:	894e                	mv	s2,s3
   1384e:	41870733          	sub	a4,a4,s8
   13852:	97e6                	add	a5,a5,s9
   13854:	c418                	sw	a4,8(s0)
   13856:	c01c                	sw	a5,0(s0)
   13858:	4981                	li	s3,0
   1385a:	008b2783          	lw	a5,8(s6)
   1385e:	9bca                	add	s7,s7,s2
   13860:	412787b3          	sub	a5,a5,s2
   13864:	00fb2423          	sw	a5,8(s6)
   13868:	cf99                	beqz	a5,13886 <__sfvwrite_r+0x192>
   1386a:	401c                	lw	a5,0(s0)
   1386c:	4418                	lw	a4,8(s0)
   1386e:	00c41683          	lh	a3,12(s0)
   13872:	853e                	mv	a0,a5
   13874:	8c3a                	mv	s8,a4
   13876:	f40995e3          	bnez	s3,137c0 <__sfvwrite_r+0xcc>
   1387a:	0004ab83          	lw	s7,0(s1)
   1387e:	0044a983          	lw	s3,4(s1)
   13882:	04a1                	addi	s1,s1,8
   13884:	bf15                	j	137b8 <__sfvwrite_r+0xc4>
   13886:	4bb2                	lw	s7,12(sp)
   13888:	4c22                	lw	s8,8(sp)
   1388a:	4c92                	lw	s9,4(sp)
   1388c:	50b2                	lw	ra,44(sp)
   1388e:	5422                	lw	s0,40(sp)
   13890:	5492                	lw	s1,36(sp)
   13892:	5902                	lw	s2,32(sp)
   13894:	49f2                	lw	s3,28(sp)
   13896:	4ad2                	lw	s5,20(sp)
   13898:	4a62                	lw	s4,24(sp)
   1389a:	4b42                	lw	s6,16(sp)
   1389c:	4501                	li	a0,0
   1389e:	6145                	addi	sp,sp,48
   138a0:	8082                	ret
   138a2:	85a2                	mv	a1,s0
   138a4:	8552                	mv	a0,s4
   138a6:	33e1                	jal	1366e <_fflush_r>
   138a8:	c93d                	beqz	a0,1391e <__sfvwrite_r+0x22a>
   138aa:	00c41783          	lh	a5,12(s0)
   138ae:	4bb2                	lw	s7,12(sp)
   138b0:	4c22                	lw	s8,8(sp)
   138b2:	5492                	lw	s1,36(sp)
   138b4:	5902                	lw	s2,32(sp)
   138b6:	49f2                	lw	s3,28(sp)
   138b8:	4ad2                	lw	s5,20(sp)
   138ba:	0407e793          	ori	a5,a5,64
   138be:	00f41623          	sh	a5,12(s0)
   138c2:	50b2                	lw	ra,44(sp)
   138c4:	5422                	lw	s0,40(sp)
   138c6:	4a62                	lw	s4,24(sp)
   138c8:	4b42                	lw	s6,16(sp)
   138ca:	557d                	li	a0,-1
   138cc:	6145                	addi	sp,sp,48
   138ce:	8082                	ret
   138d0:	4501                	li	a0,0
   138d2:	8082                	ret
   138d4:	4a81                	li	s5,0
   138d6:	4501                	li	a0,0
   138d8:	4c01                	li	s8,0
   138da:	4981                	li	s3,0
   138dc:	04098e63          	beqz	s3,13938 <__sfvwrite_r+0x244>
   138e0:	c525                	beqz	a0,13948 <__sfvwrite_r+0x254>
   138e2:	87d6                	mv	a5,s5
   138e4:	8bce                	mv	s7,s3
   138e6:	0137f363          	bgeu	a5,s3,138ec <__sfvwrite_r+0x1f8>
   138ea:	8bbe                	mv	s7,a5
   138ec:	4008                	lw	a0,0(s0)
   138ee:	481c                	lw	a5,16(s0)
   138f0:	00842903          	lw	s2,8(s0)
   138f4:	4854                	lw	a3,20(s0)
   138f6:	00a7f563          	bgeu	a5,a0,13900 <__sfvwrite_r+0x20c>
   138fa:	9936                	add	s2,s2,a3
   138fc:	05794f63          	blt	s2,s7,1395a <__sfvwrite_r+0x266>
   13900:	0cdbce63          	blt	s7,a3,139dc <__sfvwrite_r+0x2e8>
   13904:	505c                	lw	a5,36(s0)
   13906:	4c4c                	lw	a1,28(s0)
   13908:	8662                	mv	a2,s8
   1390a:	8552                	mv	a0,s4
   1390c:	9782                	jalr	a5
   1390e:	892a                	mv	s2,a0
   13910:	f8a05de3          	blez	a0,138aa <__sfvwrite_r+0x1b6>
   13914:	412a8ab3          	sub	s5,s5,s2
   13918:	4505                	li	a0,1
   1391a:	f80a84e3          	beqz	s5,138a2 <__sfvwrite_r+0x1ae>
   1391e:	008b2783          	lw	a5,8(s6)
   13922:	9c4a                	add	s8,s8,s2
   13924:	412989b3          	sub	s3,s3,s2
   13928:	412787b3          	sub	a5,a5,s2
   1392c:	00fb2423          	sw	a5,8(s6)
   13930:	f7d5                	bnez	a5,138dc <__sfvwrite_r+0x1e8>
   13932:	4bb2                	lw	s7,12(sp)
   13934:	4c22                	lw	s8,8(sp)
   13936:	bf99                	j	1388c <__sfvwrite_r+0x198>
   13938:	0044a983          	lw	s3,4(s1)
   1393c:	87a6                	mv	a5,s1
   1393e:	04a1                	addi	s1,s1,8
   13940:	fe098ce3          	beqz	s3,13938 <__sfvwrite_r+0x244>
   13944:	0007ac03          	lw	s8,0(a5)
   13948:	864e                	mv	a2,s3
   1394a:	45a9                	li	a1,10
   1394c:	8562                	mv	a0,s8
   1394e:	22e9                	jal	13b18 <memchr>
   13950:	c579                	beqz	a0,13a1e <__sfvwrite_r+0x32a>
   13952:	0505                	addi	a0,a0,1
   13954:	41850ab3          	sub	s5,a0,s8
   13958:	b769                	j	138e2 <__sfvwrite_r+0x1ee>
   1395a:	85e2                	mv	a1,s8
   1395c:	864a                	mv	a2,s2
   1395e:	2e3d                	jal	13c9c <memmove>
   13960:	401c                	lw	a5,0(s0)
   13962:	85a2                	mv	a1,s0
   13964:	8552                	mv	a0,s4
   13966:	97ca                	add	a5,a5,s2
   13968:	c01c                	sw	a5,0(s0)
   1396a:	3311                	jal	1366e <_fflush_r>
   1396c:	d545                	beqz	a0,13914 <__sfvwrite_r+0x220>
   1396e:	bf35                	j	138aa <__sfvwrite_r+0x1b6>
   13970:	4814                	lw	a3,16(s0)
   13972:	02f6e863          	bltu	a3,a5,139a2 <__sfvwrite_r+0x2ae>
   13976:	4850                	lw	a2,20(s0)
   13978:	02c9e563          	bltu	s3,a2,139a2 <__sfvwrite_r+0x2ae>
   1397c:	87ce                	mv	a5,s3
   1397e:	013af363          	bgeu	s5,s3,13984 <__sfvwrite_r+0x290>
   13982:	87d6                	mv	a5,s5
   13984:	02c7e6b3          	rem	a3,a5,a2
   13988:	5058                	lw	a4,36(s0)
   1398a:	4c4c                	lw	a1,28(s0)
   1398c:	865e                	mv	a2,s7
   1398e:	8552                	mv	a0,s4
   13990:	40d786b3          	sub	a3,a5,a3
   13994:	9702                	jalr	a4
   13996:	892a                	mv	s2,a0
   13998:	02a05963          	blez	a0,139ca <__sfvwrite_r+0x2d6>
   1399c:	412989b3          	sub	s3,s3,s2
   139a0:	bd6d                	j	1385a <__sfvwrite_r+0x166>
   139a2:	893a                	mv	s2,a4
   139a4:	00e9f363          	bgeu	s3,a4,139aa <__sfvwrite_r+0x2b6>
   139a8:	894e                	mv	s2,s3
   139aa:	853e                	mv	a0,a5
   139ac:	864a                	mv	a2,s2
   139ae:	85de                	mv	a1,s7
   139b0:	24f5                	jal	13c9c <memmove>
   139b2:	4418                	lw	a4,8(s0)
   139b4:	401c                	lw	a5,0(s0)
   139b6:	41270733          	sub	a4,a4,s2
   139ba:	97ca                	add	a5,a5,s2
   139bc:	c418                	sw	a4,8(s0)
   139be:	c01c                	sw	a5,0(s0)
   139c0:	ff71                	bnez	a4,1399c <__sfvwrite_r+0x2a8>
   139c2:	85a2                	mv	a1,s0
   139c4:	8552                	mv	a0,s4
   139c6:	3165                	jal	1366e <_fflush_r>
   139c8:	d971                	beqz	a0,1399c <__sfvwrite_r+0x2a8>
   139ca:	00c41783          	lh	a5,12(s0)
   139ce:	4bb2                	lw	s7,12(sp)
   139d0:	4c22                	lw	s8,8(sp)
   139d2:	4c92                	lw	s9,4(sp)
   139d4:	bdf9                	j	138b2 <__sfvwrite_r+0x1be>
   139d6:	8c4e                	mv	s8,s3
   139d8:	8cce                	mv	s9,s3
   139da:	b5a5                	j	13842 <__sfvwrite_r+0x14e>
   139dc:	865e                	mv	a2,s7
   139de:	85e2                	mv	a1,s8
   139e0:	2c75                	jal	13c9c <memmove>
   139e2:	4418                	lw	a4,8(s0)
   139e4:	401c                	lw	a5,0(s0)
   139e6:	895e                	mv	s2,s7
   139e8:	41770733          	sub	a4,a4,s7
   139ec:	97de                	add	a5,a5,s7
   139ee:	c418                	sw	a4,8(s0)
   139f0:	c01c                	sw	a5,0(s0)
   139f2:	b70d                	j	13914 <__sfvwrite_r+0x220>
   139f4:	8552                	mv	a0,s4
   139f6:	5ce020ef          	jal	15fc4 <_realloc_r>
   139fa:	8caa                	mv	s9,a0
   139fc:	e20517e3          	bnez	a0,1382a <__sfvwrite_r+0x136>
   13a00:	480c                	lw	a1,16(s0)
   13a02:	8552                	mv	a0,s4
   13a04:	decfd0ef          	jal	10ff0 <_free_r>
   13a08:	00c41783          	lh	a5,12(s0)
   13a0c:	4731                	li	a4,12
   13a0e:	4bb2                	lw	s7,12(sp)
   13a10:	4c22                	lw	s8,8(sp)
   13a12:	4c92                	lw	s9,4(sp)
   13a14:	00ea2023          	sw	a4,0(s4)
   13a18:	f7f7f793          	andi	a5,a5,-129
   13a1c:	bd59                	j	138b2 <__sfvwrite_r+0x1be>
   13a1e:	00198793          	addi	a5,s3,1
   13a22:	8abe                	mv	s5,a5
   13a24:	b5c1                	j	138e4 <__sfvwrite_r+0x1f0>
   13a26:	00c41783          	lh	a5,12(s0)
   13a2a:	b561                	j	138b2 <__sfvwrite_r+0x1be>
   13a2c:	4731                	li	a4,12
   13a2e:	00c41783          	lh	a5,12(s0)
   13a32:	4bb2                	lw	s7,12(sp)
   13a34:	4c22                	lw	s8,8(sp)
   13a36:	4c92                	lw	s9,4(sp)
   13a38:	00ea2023          	sw	a4,0(s4)
   13a3c:	bd9d                	j	138b2 <__sfvwrite_r+0x1be>

00013a3e <__swsetup_r>:
   13a3e:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   13a42:	1141                	addi	sp,sp,-16
   13a44:	c422                	sw	s0,8(sp)
   13a46:	c226                	sw	s1,4(sp)
   13a48:	c606                	sw	ra,12(sp)
   13a4a:	84aa                	mv	s1,a0
   13a4c:	842e                	mv	s0,a1
   13a4e:	c399                	beqz	a5,13a54 <__swsetup_r+0x16>
   13a50:	5bd8                	lw	a4,52(a5)
   13a52:	c75d                	beqz	a4,13b00 <__swsetup_r+0xc2>
   13a54:	00c41783          	lh	a5,12(s0)
   13a58:	0087f713          	andi	a4,a5,8
   13a5c:	c721                	beqz	a4,13aa4 <__swsetup_r+0x66>
   13a5e:	4818                	lw	a4,16(s0)
   13a60:	cf31                	beqz	a4,13abc <__swsetup_r+0x7e>
   13a62:	0017f693          	andi	a3,a5,1
   13a66:	ce91                	beqz	a3,13a82 <__swsetup_r+0x44>
   13a68:	4854                	lw	a3,20(s0)
   13a6a:	00042423          	sw	zero,8(s0)
   13a6e:	4501                	li	a0,0
   13a70:	40d006b3          	neg	a3,a3
   13a74:	cc14                	sw	a3,24(s0)
   13a76:	cf11                	beqz	a4,13a92 <__swsetup_r+0x54>
   13a78:	40b2                	lw	ra,12(sp)
   13a7a:	4422                	lw	s0,8(sp)
   13a7c:	4492                	lw	s1,4(sp)
   13a7e:	0141                	addi	sp,sp,16
   13a80:	8082                	ret
   13a82:	0027f693          	andi	a3,a5,2
   13a86:	4601                	li	a2,0
   13a88:	e291                	bnez	a3,13a8c <__swsetup_r+0x4e>
   13a8a:	4850                	lw	a2,20(s0)
   13a8c:	c410                	sw	a2,8(s0)
   13a8e:	4501                	li	a0,0
   13a90:	f765                	bnez	a4,13a78 <__swsetup_r+0x3a>
   13a92:	0807f713          	andi	a4,a5,128
   13a96:	d36d                	beqz	a4,13a78 <__swsetup_r+0x3a>
   13a98:	0407e793          	ori	a5,a5,64
   13a9c:	00f41623          	sh	a5,12(s0)
   13aa0:	557d                	li	a0,-1
   13aa2:	bfd9                	j	13a78 <__swsetup_r+0x3a>
   13aa4:	0107f713          	andi	a4,a5,16
   13aa8:	c325                	beqz	a4,13b08 <__swsetup_r+0xca>
   13aaa:	0047f713          	andi	a4,a5,4
   13aae:	e70d                	bnez	a4,13ad8 <__swsetup_r+0x9a>
   13ab0:	4818                	lw	a4,16(s0)
   13ab2:	0087e793          	ori	a5,a5,8
   13ab6:	00f41623          	sh	a5,12(s0)
   13aba:	f745                	bnez	a4,13a62 <__swsetup_r+0x24>
   13abc:	2807f693          	andi	a3,a5,640
   13ac0:	20000613          	li	a2,512
   13ac4:	f8c68fe3          	beq	a3,a2,13a62 <__swsetup_r+0x24>
   13ac8:	85a2                	mv	a1,s0
   13aca:	8526                	mv	a0,s1
   13acc:	0d3020ef          	jal	1639e <__smakebuf_r>
   13ad0:	00c41783          	lh	a5,12(s0)
   13ad4:	4818                	lw	a4,16(s0)
   13ad6:	b771                	j	13a62 <__swsetup_r+0x24>
   13ad8:	580c                	lw	a1,48(s0)
   13ada:	cd81                	beqz	a1,13af2 <__swsetup_r+0xb4>
   13adc:	04040713          	addi	a4,s0,64
   13ae0:	00e58763          	beq	a1,a4,13aee <__swsetup_r+0xb0>
   13ae4:	8526                	mv	a0,s1
   13ae6:	d0afd0ef          	jal	10ff0 <_free_r>
   13aea:	00c41783          	lh	a5,12(s0)
   13aee:	02042823          	sw	zero,48(s0)
   13af2:	4818                	lw	a4,16(s0)
   13af4:	fdb7f793          	andi	a5,a5,-37
   13af8:	00042223          	sw	zero,4(s0)
   13afc:	c018                	sw	a4,0(s0)
   13afe:	bf55                	j	13ab2 <__swsetup_r+0x74>
   13b00:	853e                	mv	a0,a5
   13b02:	d01fc0ef          	jal	10802 <__sinit>
   13b06:	b7b9                	j	13a54 <__swsetup_r+0x16>
   13b08:	4725                	li	a4,9
   13b0a:	c098                	sw	a4,0(s1)
   13b0c:	0407e793          	ori	a5,a5,64
   13b10:	00f41623          	sh	a5,12(s0)
   13b14:	557d                	li	a0,-1
   13b16:	b78d                	j	13a78 <__swsetup_r+0x3a>

00013b18 <memchr>:
   13b18:	00357793          	andi	a5,a0,3
   13b1c:	0ff5f693          	zext.b	a3,a1
   13b20:	c395                	beqz	a5,13b44 <memchr+0x2c>
   13b22:	fff60793          	addi	a5,a2,-1
   13b26:	c605                	beqz	a2,13b4e <memchr+0x36>
   13b28:	567d                	li	a2,-1
   13b2a:	a801                	j	13b3a <memchr+0x22>
   13b2c:	0505                	addi	a0,a0,1
   13b2e:	00357713          	andi	a4,a0,3
   13b32:	cb11                	beqz	a4,13b46 <memchr+0x2e>
   13b34:	17fd                	addi	a5,a5,-1
   13b36:	00c78c63          	beq	a5,a2,13b4e <memchr+0x36>
   13b3a:	00054703          	lbu	a4,0(a0)
   13b3e:	fed717e3          	bne	a4,a3,13b2c <memchr+0x14>
   13b42:	8082                	ret
   13b44:	87b2                	mv	a5,a2
   13b46:	470d                	li	a4,3
   13b48:	00f76563          	bltu	a4,a5,13b52 <memchr+0x3a>
   13b4c:	e3b9                	bnez	a5,13b92 <memchr+0x7a>
   13b4e:	4501                	li	a0,0
   13b50:	8082                	ret
   13b52:	0ff5f593          	zext.b	a1,a1
   13b56:	00859713          	slli	a4,a1,0x8
   13b5a:	95ba                	add	a1,a1,a4
   13b5c:	01059713          	slli	a4,a1,0x10
   13b60:	feff08b7          	lui	a7,0xfeff0
   13b64:	80808837          	lui	a6,0x80808
   13b68:	95ba                	add	a1,a1,a4
   13b6a:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13b6e:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807ec624>
   13b72:	430d                	li	t1,3
   13b74:	a029                	j	13b7e <memchr+0x66>
   13b76:	17f1                	addi	a5,a5,-4
   13b78:	0511                	addi	a0,a0,4
   13b7a:	fcf379e3          	bgeu	t1,a5,13b4c <memchr+0x34>
   13b7e:	4118                	lw	a4,0(a0)
   13b80:	8f2d                	xor	a4,a4,a1
   13b82:	01170633          	add	a2,a4,a7
   13b86:	fff74713          	not	a4,a4
   13b8a:	8f71                	and	a4,a4,a2
   13b8c:	01077733          	and	a4,a4,a6
   13b90:	d37d                	beqz	a4,13b76 <memchr+0x5e>
   13b92:	97aa                	add	a5,a5,a0
   13b94:	a021                	j	13b9c <memchr+0x84>
   13b96:	0505                	addi	a0,a0,1
   13b98:	faa78be3          	beq	a5,a0,13b4e <memchr+0x36>
   13b9c:	00054703          	lbu	a4,0(a0)
   13ba0:	fed71be3          	bne	a4,a3,13b96 <memchr+0x7e>
   13ba4:	8082                	ret

00013ba6 <strncpy>:
   13ba6:	00a5e7b3          	or	a5,a1,a0
   13baa:	8b8d                	andi	a5,a5,3
   13bac:	e781                	bnez	a5,13bb4 <strncpy+0xe>
   13bae:	478d                	li	a5,3
   13bb0:	02c7eb63          	bltu	a5,a2,13be6 <strncpy+0x40>
   13bb4:	872a                	mv	a4,a0
   13bb6:	a811                	j	13bca <strncpy+0x24>
   13bb8:	fff5c683          	lbu	a3,-1(a1)
   13bbc:	fff60813          	addi	a6,a2,-1
   13bc0:	fed78fa3          	sb	a3,-1(a5)
   13bc4:	ca81                	beqz	a3,13bd4 <strncpy+0x2e>
   13bc6:	873e                	mv	a4,a5
   13bc8:	8642                	mv	a2,a6
   13bca:	0585                	addi	a1,a1,1
   13bcc:	00170793          	addi	a5,a4,1
   13bd0:	f665                	bnez	a2,13bb8 <strncpy+0x12>
   13bd2:	8082                	ret
   13bd4:	9732                	add	a4,a4,a2
   13bd6:	04080463          	beqz	a6,13c1e <strncpy+0x78>
   13bda:	0785                	addi	a5,a5,1
   13bdc:	fe078fa3          	sb	zero,-1(a5)
   13be0:	fee79de3          	bne	a5,a4,13bda <strncpy+0x34>
   13be4:	8082                	ret
   13be6:	feff0337          	lui	t1,0xfeff0
   13bea:	808088b7          	lui	a7,0x80808
   13bee:	872a                	mv	a4,a0
   13bf0:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13bf4:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807ec624>
   13bf8:	4e0d                	li	t3,3
   13bfa:	a039                	j	13c08 <strncpy+0x62>
   13bfc:	c314                	sw	a3,0(a4)
   13bfe:	1671                	addi	a2,a2,-4
   13c00:	0711                	addi	a4,a4,4
   13c02:	0591                	addi	a1,a1,4
   13c04:	fcce73e3          	bgeu	t3,a2,13bca <strncpy+0x24>
   13c08:	4194                	lw	a3,0(a1)
   13c0a:	006687b3          	add	a5,a3,t1
   13c0e:	fff6c813          	not	a6,a3
   13c12:	0107f7b3          	and	a5,a5,a6
   13c16:	0117f7b3          	and	a5,a5,a7
   13c1a:	d3ed                	beqz	a5,13bfc <strncpy+0x56>
   13c1c:	b77d                	j	13bca <strncpy+0x24>
   13c1e:	8082                	ret

00013c20 <__localeconv_l>:
   13c20:	0f050513          	addi	a0,a0,240
   13c24:	8082                	ret

00013c26 <_localeconv_r>:
   13c26:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13c2a:	8082                	ret

00013c2c <localeconv>:
   13c2c:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13c30:	8082                	ret

00013c32 <_sbrk_r>:
   13c32:	1141                	addi	sp,sp,-16
   13c34:	c422                	sw	s0,8(sp)
   13c36:	c226                	sw	s1,4(sp)
   13c38:	842a                	mv	s0,a0
   13c3a:	852e                	mv	a0,a1
   13c3c:	c606                	sw	ra,12(sp)
   13c3e:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   13c42:	65f030ef          	jal	17aa0 <_sbrk>
   13c46:	57fd                	li	a5,-1
   13c48:	00f50763          	beq	a0,a5,13c56 <_sbrk_r+0x24>
   13c4c:	40b2                	lw	ra,12(sp)
   13c4e:	4422                	lw	s0,8(sp)
   13c50:	4492                	lw	s1,4(sp)
   13c52:	0141                	addi	sp,sp,16
   13c54:	8082                	ret
   13c56:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   13c5a:	dbed                	beqz	a5,13c4c <_sbrk_r+0x1a>
   13c5c:	40b2                	lw	ra,12(sp)
   13c5e:	c01c                	sw	a5,0(s0)
   13c60:	4422                	lw	s0,8(sp)
   13c62:	4492                	lw	s1,4(sp)
   13c64:	0141                	addi	sp,sp,16
   13c66:	8082                	ret

00013c68 <__libc_fini_array>:
   13c68:	1141                	addi	sp,sp,-16
   13c6a:	c422                	sw	s0,8(sp)
   13c6c:	67ed                	lui	a5,0x1b
   13c6e:	646d                	lui	s0,0x1b
   13c70:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   13c74:	01040413          	addi	s0,s0,16 # 1b010 <__sglue>
   13c78:	8c1d                	sub	s0,s0,a5
   13c7a:	c226                	sw	s1,4(sp)
   13c7c:	c606                	sw	ra,12(sp)
   13c7e:	40245493          	srai	s1,s0,0x2
   13c82:	c881                	beqz	s1,13c92 <__libc_fini_array+0x2a>
   13c84:	1471                	addi	s0,s0,-4
   13c86:	943e                	add	s0,s0,a5
   13c88:	401c                	lw	a5,0(s0)
   13c8a:	14fd                	addi	s1,s1,-1
   13c8c:	1471                	addi	s0,s0,-4
   13c8e:	9782                	jalr	a5
   13c90:	fce5                	bnez	s1,13c88 <__libc_fini_array+0x20>
   13c92:	40b2                	lw	ra,12(sp)
   13c94:	4422                	lw	s0,8(sp)
   13c96:	4492                	lw	s1,4(sp)
   13c98:	0141                	addi	sp,sp,16
   13c9a:	8082                	ret

00013c9c <memmove>:
   13c9c:	02a5f263          	bgeu	a1,a0,13cc0 <memmove+0x24>
   13ca0:	00c58733          	add	a4,a1,a2
   13ca4:	00e57e63          	bgeu	a0,a4,13cc0 <memmove+0x24>
   13ca8:	00c507b3          	add	a5,a0,a2
   13cac:	ca1d                	beqz	a2,13ce2 <memmove+0x46>
   13cae:	fff74683          	lbu	a3,-1(a4)
   13cb2:	17fd                	addi	a5,a5,-1
   13cb4:	177d                	addi	a4,a4,-1
   13cb6:	00d78023          	sb	a3,0(a5)
   13cba:	fef51ae3          	bne	a0,a5,13cae <memmove+0x12>
   13cbe:	8082                	ret
   13cc0:	47bd                	li	a5,15
   13cc2:	02c7e163          	bltu	a5,a2,13ce4 <memmove+0x48>
   13cc6:	87aa                	mv	a5,a0
   13cc8:	fff60693          	addi	a3,a2,-1
   13ccc:	ca59                	beqz	a2,13d62 <memmove+0xc6>
   13cce:	0685                	addi	a3,a3,1
   13cd0:	96be                	add	a3,a3,a5
   13cd2:	0005c703          	lbu	a4,0(a1)
   13cd6:	0785                	addi	a5,a5,1
   13cd8:	0585                	addi	a1,a1,1
   13cda:	fee78fa3          	sb	a4,-1(a5)
   13cde:	fed79ae3          	bne	a5,a3,13cd2 <memmove+0x36>
   13ce2:	8082                	ret
   13ce4:	00b567b3          	or	a5,a0,a1
   13ce8:	8b8d                	andi	a5,a5,3
   13cea:	eba5                	bnez	a5,13d5a <memmove+0xbe>
   13cec:	ff060893          	addi	a7,a2,-16
   13cf0:	ff08f893          	andi	a7,a7,-16
   13cf4:	08c1                	addi	a7,a7,16
   13cf6:	011506b3          	add	a3,a0,a7
   13cfa:	872e                	mv	a4,a1
   13cfc:	87aa                	mv	a5,a0
   13cfe:	00072803          	lw	a6,0(a4)
   13d02:	0741                	addi	a4,a4,16
   13d04:	07c1                	addi	a5,a5,16
   13d06:	ff07a823          	sw	a6,-16(a5)
   13d0a:	ff472803          	lw	a6,-12(a4)
   13d0e:	ff07aa23          	sw	a6,-12(a5)
   13d12:	ff872803          	lw	a6,-8(a4)
   13d16:	ff07ac23          	sw	a6,-8(a5)
   13d1a:	ffc72803          	lw	a6,-4(a4)
   13d1e:	ff07ae23          	sw	a6,-4(a5)
   13d22:	fcd79ee3          	bne	a5,a3,13cfe <memmove+0x62>
   13d26:	00c67813          	andi	a6,a2,12
   13d2a:	95c6                	add	a1,a1,a7
   13d2c:	00f67713          	andi	a4,a2,15
   13d30:	02080a63          	beqz	a6,13d64 <memmove+0xc8>
   13d34:	ffc70813          	addi	a6,a4,-4
   13d38:	ffc87813          	andi	a6,a6,-4
   13d3c:	0811                	addi	a6,a6,4
   13d3e:	010687b3          	add	a5,a3,a6
   13d42:	872e                	mv	a4,a1
   13d44:	00072883          	lw	a7,0(a4)
   13d48:	0691                	addi	a3,a3,4
   13d4a:	0711                	addi	a4,a4,4
   13d4c:	ff16ae23          	sw	a7,-4(a3)
   13d50:	fef69ae3          	bne	a3,a5,13d44 <memmove+0xa8>
   13d54:	8a0d                	andi	a2,a2,3
   13d56:	95c2                	add	a1,a1,a6
   13d58:	bf85                	j	13cc8 <memmove+0x2c>
   13d5a:	fff60693          	addi	a3,a2,-1
   13d5e:	87aa                	mv	a5,a0
   13d60:	b7bd                	j	13cce <memmove+0x32>
   13d62:	8082                	ret
   13d64:	863a                	mv	a2,a4
   13d66:	b78d                	j	13cc8 <memmove+0x2c>

00013d68 <frexpl>:
   13d68:	7159                	addi	sp,sp,-112
   13d6a:	d0ca                	sw	s2,96(sp)
   13d6c:	00c5a903          	lw	s2,12(a1)
   13d70:	ccd2                	sw	s4,88(sp)
   13d72:	cad6                	sw	s5,84(sp)
   13d74:	c8da                	sw	s6,80(sp)
   13d76:	0045aa83          	lw	s5,4(a1)
   13d7a:	0005ab03          	lw	s6,0(a1)
   13d7e:	0085aa03          	lw	s4,8(a1)
   13d82:	cece                	sw	s3,92(sp)
   13d84:	69a1                	lui	s3,0x8
   13d86:	d4a2                	sw	s0,104(sp)
   13d88:	d2a6                	sw	s1,100(sp)
   13d8a:	d686                	sw	ra,108(sp)
   13d8c:	01095493          	srli	s1,s2,0x10
   13d90:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   13d92:	d85a                	sw	s6,48(sp)
   13d94:	da56                	sw	s5,52(sp)
   13d96:	dc52                	sw	s4,56(sp)
   13d98:	de4a                	sw	s2,60(sp)
   13d9a:	0134f4b3          	and	s1,s1,s3
   13d9e:	00062023          	sw	zero,0(a2)
   13da2:	842a                	mv	s0,a0
   13da4:	05348763          	beq	s1,s3,13df2 <frexpl+0x8a>
   13da8:	080c                	addi	a1,sp,16
   13daa:	1008                	addi	a0,sp,32
   13dac:	c6de                	sw	s7,76(sp)
   13dae:	d05a                	sw	s6,32(sp)
   13db0:	8bb2                	mv	s7,a2
   13db2:	d256                	sw	s5,36(sp)
   13db4:	d452                	sw	s4,40(sp)
   13db6:	d64a                	sw	s2,44(sp)
   13db8:	c802                	sw	zero,16(sp)
   13dba:	ca02                	sw	zero,20(sp)
   13dbc:	cc02                	sw	zero,24(sp)
   13dbe:	ce02                	sw	zero,28(sp)
   13dc0:	5e3030ef          	jal	17ba2 <__eqtf2>
   13dc4:	c941                	beqz	a0,13e54 <frexpl+0xec>
   13dc6:	4681                	li	a3,0
   13dc8:	c8a1                	beqz	s1,13e18 <frexpl+0xb0>
   13dca:	7771                	lui	a4,0xffffc
   13dcc:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffe05a6>
   13dce:	5972                	lw	s2,60(sp)
   13dd0:	94ba                	add	s1,s1,a4
   13dd2:	800107b7          	lui	a5,0x80010
   13dd6:	94b6                	add	s1,s1,a3
   13dd8:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff45a3>
   13dda:	009ba023          	sw	s1,0(s7)
   13dde:	5b42                	lw	s6,48(sp)
   13de0:	5ad2                	lw	s5,52(sp)
   13de2:	5a62                	lw	s4,56(sp)
   13de4:	4bb6                	lw	s7,76(sp)
   13de6:	00f97933          	and	s2,s2,a5
   13dea:	3ffe07b7          	lui	a5,0x3ffe0
   13dee:	00f96933          	or	s2,s2,a5
   13df2:	01642023          	sw	s6,0(s0)
   13df6:	01542223          	sw	s5,4(s0)
   13dfa:	01442423          	sw	s4,8(s0)
   13dfe:	01242623          	sw	s2,12(s0)
   13e02:	50b6                	lw	ra,108(sp)
   13e04:	8522                	mv	a0,s0
   13e06:	5426                	lw	s0,104(sp)
   13e08:	5496                	lw	s1,100(sp)
   13e0a:	5906                	lw	s2,96(sp)
   13e0c:	49f6                	lw	s3,92(sp)
   13e0e:	4a66                	lw	s4,88(sp)
   13e10:	4ad6                	lw	s5,84(sp)
   13e12:	4b46                	lw	s6,80(sp)
   13e14:	6165                	addi	sp,sp,112
   13e16:	8082                	ret
   13e18:	407107b7          	lui	a5,0x40710
   13e1c:	860a                	mv	a2,sp
   13e1e:	080c                	addi	a1,sp,16
   13e20:	1008                	addi	a0,sp,32
   13e22:	c63e                	sw	a5,12(sp)
   13e24:	c85a                	sw	s6,16(sp)
   13e26:	ca56                	sw	s5,20(sp)
   13e28:	cc52                	sw	s4,24(sp)
   13e2a:	ce4a                	sw	s2,28(sp)
   13e2c:	c002                	sw	zero,0(sp)
   13e2e:	c202                	sw	zero,4(sp)
   13e30:	c402                	sw	zero,8(sp)
   13e32:	034040ef          	jal	17e66 <__multf3>
   13e36:	5702                	lw	a4,32(sp)
   13e38:	57b2                	lw	a5,44(sp)
   13e3a:	f8e00693          	li	a3,-114
   13e3e:	d83a                	sw	a4,48(sp)
   13e40:	5712                	lw	a4,36(sp)
   13e42:	0107d493          	srli	s1,a5,0x10
   13e46:	de3e                	sw	a5,60(sp)
   13e48:	da3a                	sw	a4,52(sp)
   13e4a:	5722                	lw	a4,40(sp)
   13e4c:	0134f4b3          	and	s1,s1,s3
   13e50:	dc3a                	sw	a4,56(sp)
   13e52:	bfa5                	j	13dca <frexpl+0x62>
   13e54:	4bb6                	lw	s7,76(sp)
   13e56:	bf71                	j	13df2 <frexpl+0x8a>

00013e58 <__register_exitproc>:
   13e58:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   13e5c:	c3a1                	beqz	a5,13e9c <__register_exitproc+0x44>
   13e5e:	43d8                	lw	a4,4(a5)
   13e60:	487d                	li	a6,31
   13e62:	04e84f63          	blt	a6,a4,13ec0 <__register_exitproc+0x68>
   13e66:	00271813          	slli	a6,a4,0x2
   13e6a:	c11d                	beqz	a0,13e90 <__register_exitproc+0x38>
   13e6c:	01078333          	add	t1,a5,a6
   13e70:	08c32423          	sw	a2,136(t1)
   13e74:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f472c>
   13e78:	4605                	li	a2,1
   13e7a:	00e61633          	sll	a2,a2,a4
   13e7e:	00c8e8b3          	or	a7,a7,a2
   13e82:	1917a423          	sw	a7,392(a5)
   13e86:	10d32423          	sw	a3,264(t1)
   13e8a:	4689                	li	a3,2
   13e8c:	00d50f63          	beq	a0,a3,13eaa <__register_exitproc+0x52>
   13e90:	0705                	addi	a4,a4,1
   13e92:	c3d8                	sw	a4,4(a5)
   13e94:	97c2                	add	a5,a5,a6
   13e96:	c78c                	sw	a1,8(a5)
   13e98:	4501                	li	a0,0
   13e9a:	8082                	ret
   13e9c:	0bc18813          	addi	a6,gp,188 # 1b8cc <__atexit0>
   13ea0:	f301a423          	sw	a6,-216(gp) # 1b738 <__atexit>
   13ea4:	0bc18793          	addi	a5,gp,188 # 1b8cc <__atexit0>
   13ea8:	bf5d                	j	13e5e <__register_exitproc+0x6>
   13eaa:	18c7a683          	lw	a3,396(a5)
   13eae:	0705                	addi	a4,a4,1
   13eb0:	c3d8                	sw	a4,4(a5)
   13eb2:	8ed1                	or	a3,a3,a2
   13eb4:	18d7a623          	sw	a3,396(a5)
   13eb8:	97c2                	add	a5,a5,a6
   13eba:	c78c                	sw	a1,8(a5)
   13ebc:	4501                	li	a0,0
   13ebe:	8082                	ret
   13ec0:	557d                	li	a0,-1
   13ec2:	8082                	ret

00013ec4 <_ldtoa_r>:
   13ec4:	68e9                	lui	a7,0x1a
   13ec6:	58c88893          	addi	a7,a7,1420 # 1a58c <blanks.1+0x10>
   13eca:	0008af83          	lw	t6,0(a7)
   13ece:	0048af03          	lw	t5,4(a7)
   13ed2:	0088ae83          	lw	t4,8(a7)
   13ed6:	00c8ae03          	lw	t3,12(a7)
   13eda:	0108a303          	lw	t1,16(a7)
   13ede:	03852883          	lw	a7,56(a0)
   13ee2:	7171                	addi	sp,sp,-176
   13ee4:	d14a                	sw	s2,160(sp)
   13ee6:	cf4e                	sw	s3,156(sp)
   13ee8:	cd52                	sw	s4,152(sp)
   13eea:	c95a                	sw	s6,144(sp)
   13eec:	c75e                	sw	s7,140(sp)
   13eee:	c562                	sw	s8,136(sp)
   13ef0:	c366                	sw	s9,132(sp)
   13ef2:	c16a                	sw	s10,128(sp)
   13ef4:	d706                	sw	ra,172(sp)
   13ef6:	d522                	sw	s0,168(sp)
   13ef8:	d326                	sw	s1,164(sp)
   13efa:	cb56                	sw	s5,148(sp)
   13efc:	deee                	sw	s11,124(sp)
   13efe:	cefe                	sw	t6,92(sp)
   13f00:	d0fa                	sw	t5,96(sp)
   13f02:	d2f6                	sw	t4,100(sp)
   13f04:	d4f2                	sw	t3,104(sp)
   13f06:	d69a                	sw	t1,108(sp)
   13f08:	cc32                	sw	a2,24(sp)
   13f0a:	ce36                	sw	a3,28(sp)
   13f0c:	0005aa03          	lw	s4,0(a1)
   13f10:	0045a983          	lw	s3,4(a1)
   13f14:	0085a903          	lw	s2,8(a1)
   13f18:	00c5ac03          	lw	s8,12(a1)
   13f1c:	8b2a                	mv	s6,a0
   13f1e:	8bba                	mv	s7,a4
   13f20:	8cbe                	mv	s9,a5
   13f22:	8d42                	mv	s10,a6
   13f24:	00088763          	beqz	a7,13f32 <_ldtoa_r+0x6e>
   13f28:	85c6                	mv	a1,a7
   13f2a:	24c010ef          	jal	15176 <__freedtoa>
   13f2e:	020b2c23          	sw	zero,56(s6)
   13f32:	5626                	lw	a2,104(sp)
   13f34:	01fc5693          	srli	a3,s8,0x1f
   13f38:	001c1a93          	slli	s5,s8,0x1
   13f3c:	40165713          	srai	a4,a2,0x1
   13f40:	74f1                	lui	s1,0xffffc
   13f42:	001c1413          	slli	s0,s8,0x1
   13f46:	8f75                	and	a4,a4,a3
   13f48:	011ada93          	srli	s5,s5,0x11
   13f4c:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffe0535>
   13f50:	010c1d93          	slli	s11,s8,0x10
   13f54:	00dca023          	sw	a3,0(s9)
   13f58:	8005                	srli	s0,s0,0x1
   13f5a:	8f31                	xor	a4,a4,a2
   13f5c:	010ddd93          	srli	s11,s11,0x10
   13f60:	009a87b3          	add	a5,s5,s1
   13f64:	100c                	addi	a1,sp,32
   13f66:	1808                	addi	a0,sp,48
   13f68:	d852                	sw	s4,48(sp)
   13f6a:	da4e                	sw	s3,52(sp)
   13f6c:	dc4a                	sw	s2,56(sp)
   13f6e:	de22                	sw	s0,60(sp)
   13f70:	d052                	sw	s4,32(sp)
   13f72:	d24e                	sw	s3,36(sp)
   13f74:	d44a                	sw	s2,40(sp)
   13f76:	d622                	sw	s0,44(sp)
   13f78:	d4ba                	sw	a4,104(sp)
   13f7a:	ca3e                	sw	a5,20(sp)
   13f7c:	c6d2                	sw	s4,76(sp)
   13f7e:	c8ce                	sw	s3,80(sp)
   13f80:	caca                	sw	s2,84(sp)
   13f82:	ccee                	sw	s11,88(sp)
   13f84:	461050ef          	jal	19be4 <__unordtf2>
   13f88:	e979                	bnez	a0,1405e <_ldtoa_r+0x19a>
   13f8a:	7fff0cb7          	lui	s9,0x7fff0
   13f8e:	54fd                	li	s1,-1
   13f90:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   13f92:	100c                	addi	a1,sp,32
   13f94:	1808                	addi	a0,sp,48
   13f96:	d852                	sw	s4,48(sp)
   13f98:	da4e                	sw	s3,52(sp)
   13f9a:	dc4a                	sw	s2,56(sp)
   13f9c:	de22                	sw	s0,60(sp)
   13f9e:	d026                	sw	s1,32(sp)
   13fa0:	d226                	sw	s1,36(sp)
   13fa2:	d426                	sw	s1,40(sp)
   13fa4:	d666                	sw	s9,44(sp)
   13fa6:	43f050ef          	jal	19be4 <__unordtf2>
   13faa:	ed21                	bnez	a0,14002 <_ldtoa_r+0x13e>
   13fac:	100c                	addi	a1,sp,32
   13fae:	1808                	addi	a0,sp,48
   13fb0:	5cb030ef          	jal	17d7a <__letf2>
   13fb4:	04a05763          	blez	a0,14002 <_ldtoa_r+0x13e>
   13fb8:	478d                	li	a5,3
   13fba:	c4be                	sw	a5,72(sp)
   13fbc:	47e2                	lw	a5,24(sp)
   13fbe:	4872                	lw	a6,28(sp)
   13fc0:	4652                	lw	a2,20(sp)
   13fc2:	00b8                	addi	a4,sp,72
   13fc4:	c06a                	sw	s10,0(sp)
   13fc6:	88de                	mv	a7,s7
   13fc8:	00f4                	addi	a3,sp,76
   13fca:	08ec                	addi	a1,sp,92
   13fcc:	855a                	mv	a0,s6
   13fce:	2235                	jal	140fa <__gdtoa>
   13fd0:	000ba703          	lw	a4,0(s7)
   13fd4:	77e1                	lui	a5,0xffff8
   13fd6:	00f71763          	bne	a4,a5,13fe4 <_ldtoa_r+0x120>
   13fda:	800007b7          	lui	a5,0x80000
   13fde:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   13fe0:	00fba023          	sw	a5,0(s7)
   13fe4:	50ba                	lw	ra,172(sp)
   13fe6:	542a                	lw	s0,168(sp)
   13fe8:	549a                	lw	s1,164(sp)
   13fea:	590a                	lw	s2,160(sp)
   13fec:	49fa                	lw	s3,156(sp)
   13fee:	4a6a                	lw	s4,152(sp)
   13ff0:	4ada                	lw	s5,148(sp)
   13ff2:	4b4a                	lw	s6,144(sp)
   13ff4:	4bba                	lw	s7,140(sp)
   13ff6:	4c2a                	lw	s8,136(sp)
   13ff8:	4c9a                	lw	s9,132(sp)
   13ffa:	4d0a                	lw	s10,128(sp)
   13ffc:	5df6                	lw	s11,124(sp)
   13ffe:	614d                	addi	sp,sp,176
   14000:	8082                	ret
   14002:	67c1                	lui	a5,0x10
   14004:	100c                	addi	a1,sp,32
   14006:	1808                	addi	a0,sp,48
   14008:	d852                	sw	s4,48(sp)
   1400a:	da4e                	sw	s3,52(sp)
   1400c:	dc4a                	sw	s2,56(sp)
   1400e:	de22                	sw	s0,60(sp)
   14010:	d002                	sw	zero,32(sp)
   14012:	d202                	sw	zero,36(sp)
   14014:	d402                	sw	zero,40(sp)
   14016:	d63e                	sw	a5,44(sp)
   14018:	477030ef          	jal	17c8e <__getf2>
   1401c:	00054963          	bltz	a0,1402e <_ldtoa_r+0x16a>
   14020:	67c1                	lui	a5,0x10
   14022:	00fdedb3          	or	s11,s11,a5
   14026:	4785                	li	a5,1
   14028:	c4be                	sw	a5,72(sp)
   1402a:	ccee                	sw	s11,88(sp)
   1402c:	bf41                	j	13fbc <_ldtoa_r+0xf8>
   1402e:	100c                	addi	a1,sp,32
   14030:	1808                	addi	a0,sp,48
   14032:	d852                	sw	s4,48(sp)
   14034:	da4e                	sw	s3,52(sp)
   14036:	dc4a                	sw	s2,56(sp)
   14038:	de62                	sw	s8,60(sp)
   1403a:	d002                	sw	zero,32(sp)
   1403c:	d202                	sw	zero,36(sp)
   1403e:	d402                	sw	zero,40(sp)
   14040:	d602                	sw	zero,44(sp)
   14042:	361030ef          	jal	17ba2 <__eqtf2>
   14046:	e119                	bnez	a0,1404c <_ldtoa_r+0x188>
   14048:	c482                	sw	zero,72(sp)
   1404a:	bf8d                	j	13fbc <_ldtoa_r+0xf8>
   1404c:	74f1                	lui	s1,0xffffc
   1404e:	4789                	li	a5,2
   14050:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffe0536>
   14054:	c4be                	sw	a5,72(sp)
   14056:	009a87b3          	add	a5,s5,s1
   1405a:	ca3e                	sw	a5,20(sp)
   1405c:	b785                	j	13fbc <_ldtoa_r+0xf8>
   1405e:	4791                	li	a5,4
   14060:	c4be                	sw	a5,72(sp)
   14062:	bfa9                	j	13fbc <_ldtoa_r+0xf8>

00014064 <_ldcheck>:
   14064:	7139                	addi	sp,sp,-64
   14066:	da26                	sw	s1,52(sp)
   14068:	4544                	lw	s1,12(a0)
   1406a:	d64e                	sw	s3,44(sp)
   1406c:	d452                	sw	s4,40(sp)
   1406e:	00852983          	lw	s3,8(a0)
   14072:	00452a03          	lw	s4,4(a0)
   14076:	d256                	sw	s5,36(sp)
   14078:	00052a83          	lw	s5,0(a0)
   1407c:	0486                	slli	s1,s1,0x1
   1407e:	8085                	srli	s1,s1,0x1
   14080:	858a                	mv	a1,sp
   14082:	0808                	addi	a0,sp,16
   14084:	de06                	sw	ra,60(sp)
   14086:	c856                	sw	s5,16(sp)
   14088:	ca52                	sw	s4,20(sp)
   1408a:	cc4e                	sw	s3,24(sp)
   1408c:	ce26                	sw	s1,28(sp)
   1408e:	c056                	sw	s5,0(sp)
   14090:	c252                	sw	s4,4(sp)
   14092:	c44e                	sw	s3,8(sp)
   14094:	c626                	sw	s1,12(sp)
   14096:	34f050ef          	jal	19be4 <__unordtf2>
   1409a:	e921                	bnez	a0,140ea <_ldcheck+0x86>
   1409c:	d05a                	sw	s6,32(sp)
   1409e:	7fff0b37          	lui	s6,0x7fff0
   140a2:	d84a                	sw	s2,48(sp)
   140a4:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   140a6:	597d                	li	s2,-1
   140a8:	858a                	mv	a1,sp
   140aa:	0808                	addi	a0,sp,16
   140ac:	dc22                	sw	s0,56(sp)
   140ae:	c04a                	sw	s2,0(sp)
   140b0:	c24a                	sw	s2,4(sp)
   140b2:	c44a                	sw	s2,8(sp)
   140b4:	c65a                	sw	s6,12(sp)
   140b6:	4405                	li	s0,1
   140b8:	32d050ef          	jal	19be4 <__unordtf2>
   140bc:	c105                	beqz	a0,140dc <_ldcheck+0x78>
   140be:	50f2                	lw	ra,60(sp)
   140c0:	00144513          	xori	a0,s0,1
   140c4:	5462                	lw	s0,56(sp)
   140c6:	0ff57513          	zext.b	a0,a0
   140ca:	5942                	lw	s2,48(sp)
   140cc:	5b02                	lw	s6,32(sp)
   140ce:	54d2                	lw	s1,52(sp)
   140d0:	59b2                	lw	s3,44(sp)
   140d2:	5a22                	lw	s4,40(sp)
   140d4:	5a92                	lw	s5,36(sp)
   140d6:	0506                	slli	a0,a0,0x1
   140d8:	6121                	addi	sp,sp,64
   140da:	8082                	ret
   140dc:	858a                	mv	a1,sp
   140de:	0808                	addi	a0,sp,16
   140e0:	49b030ef          	jal	17d7a <__letf2>
   140e4:	00152413          	slti	s0,a0,1
   140e8:	bfd9                	j	140be <_ldcheck+0x5a>
   140ea:	50f2                	lw	ra,60(sp)
   140ec:	54d2                	lw	s1,52(sp)
   140ee:	59b2                	lw	s3,44(sp)
   140f0:	5a22                	lw	s4,40(sp)
   140f2:	5a92                	lw	s5,36(sp)
   140f4:	4505                	li	a0,1
   140f6:	6121                	addi	sp,sp,64
   140f8:	8082                	ret

000140fa <__gdtoa>:
   140fa:	7171                	addi	sp,sp,-176
   140fc:	cb56                	sw	s5,148(sp)
   140fe:	00072a83          	lw	s5,0(a4)
   14102:	d326                	sw	s1,164(sp)
   14104:	c75e                	sw	s7,140(sp)
   14106:	fcfafe13          	andi	t3,s5,-49
   1410a:	d706                	sw	ra,172(sp)
   1410c:	01c72023          	sw	t3,0(a4)
   14110:	8bba                	mv	s7,a4
   14112:	574a                	lw	a4,176(sp)
   14114:	00fafe13          	andi	t3,s5,15
   14118:	4e8d                	li	t4,3
   1411a:	c63a                	sw	a4,12(sp)
   1411c:	c832                	sw	a2,16(sp)
   1411e:	d442                	sw	a6,40(sp)
   14120:	84c6                	mv	s1,a7
   14122:	4fde0563          	beq	t3,t4,1460c <__gdtoa+0x512>
   14126:	c95a                	sw	s6,144(sp)
   14128:	00cafb13          	andi	s6,s5,12
   1412c:	460b1e63          	bnez	s6,145a8 <__gdtoa+0x4ae>
   14130:	d522                	sw	s0,168(sp)
   14132:	842a                	mv	s0,a0
   14134:	4a0e0863          	beqz	t3,145e4 <__gdtoa+0x4ea>
   14138:	c16a                	sw	s10,128(sp)
   1413a:	0005ad03          	lw	s10,0(a1)
   1413e:	d14a                	sw	s2,160(sp)
   14140:	cf4e                	sw	s3,156(sp)
   14142:	cd52                	sw	s4,152(sp)
   14144:	c366                	sw	s9,132(sp)
   14146:	02000613          	li	a2,32
   1414a:	8a2e                	mv	s4,a1
   1414c:	893e                	mv	s2,a5
   1414e:	89b6                	mv	s3,a3
   14150:	4581                	li	a1,0
   14152:	02000793          	li	a5,32
   14156:	01a65663          	bge	a2,s10,14162 <__gdtoa+0x68>
   1415a:	0786                	slli	a5,a5,0x1
   1415c:	0585                	addi	a1,a1,1
   1415e:	ffa7cee3          	blt	a5,s10,1415a <__gdtoa+0x60>
   14162:	8522                	mv	a0,s0
   14164:	254010ef          	jal	153b8 <_Balloc>
   14168:	8caa                	mv	s9,a0
   1416a:	68050463          	beqz	a0,147f2 <__gdtoa+0x6f8>
   1416e:	fffd0893          	addi	a7,s10,-1
   14172:	4058d893          	srai	a7,a7,0x5
   14176:	00289513          	slli	a0,a7,0x2
   1417a:	c562                	sw	s8,136(sp)
   1417c:	deee                	sw	s11,124(sp)
   1417e:	954e                	add	a0,a0,s3
   14180:	014c8613          	addi	a2,s9,20
   14184:	87ce                	mv	a5,s3
   14186:	4398                	lw	a4,0(a5)
   14188:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   1418a:	0611                	addi	a2,a2,4
   1418c:	fee62e23          	sw	a4,-4(a2)
   14190:	fef57be3          	bgeu	a0,a5,14186 <__gdtoa+0x8c>
   14194:	0505                	addi	a0,a0,1
   14196:	00198793          	addi	a5,s3,1
   1419a:	4611                	li	a2,4
   1419c:	00f56563          	bltu	a0,a5,141a6 <__gdtoa+0xac>
   141a0:	088a                	slli	a7,a7,0x2
   141a2:	00488613          	addi	a2,a7,4
   141a6:	40265d93          	srai	s11,a2,0x2
   141aa:	9666                	add	a2,a2,s9
   141ac:	a021                	j	141b4 <__gdtoa+0xba>
   141ae:	1671                	addi	a2,a2,-4
   141b0:	4a0d8263          	beqz	s11,14654 <__gdtoa+0x55a>
   141b4:	4a1c                	lw	a5,16(a2)
   141b6:	8c6e                	mv	s8,s11
   141b8:	1dfd                	addi	s11,s11,-1
   141ba:	dbf5                	beqz	a5,141ae <__gdtoa+0xb4>
   141bc:	004d8793          	addi	a5,s11,4
   141c0:	078a                	slli	a5,a5,0x2
   141c2:	97e6                	add	a5,a5,s9
   141c4:	43c8                	lw	a0,4(a5)
   141c6:	018ca823          	sw	s8,16(s9)
   141ca:	0c16                	slli	s8,s8,0x5
   141cc:	410010ef          	jal	155dc <__hi0bits>
   141d0:	40ac0db3          	sub	s11,s8,a0
   141d4:	8566                	mv	a0,s9
   141d6:	1a8010ef          	jal	1537e <__trailz_D2A>
   141da:	d6aa                	sw	a0,108(sp)
   141dc:	4c42                	lw	s8,16(sp)
   141de:	48051f63          	bnez	a0,1467c <__gdtoa+0x582>
   141e2:	010ca603          	lw	a2,16(s9)
   141e6:	3e060463          	beqz	a2,145ce <__gdtoa+0x4d4>
   141ea:	10ec                	addi	a1,sp,108
   141ec:	8566                	mv	a0,s9
   141ee:	2f9010ef          	jal	15ce6 <__b2d>
   141f2:	ac2a                	fsd	fa0,24(sp)
   141f4:	4572                	lw	a0,28(sp)
   141f6:	45e2                	lw	a1,24(sp)
   141f8:	01bc08b3          	add	a7,s8,s11
   141fc:	00c51613          	slli	a2,a0,0xc
   14200:	8f2e                	mv	t5,a1
   14202:	8231                	srli	a2,a2,0xc
   14204:	3ff005b7          	lui	a1,0x3ff00
   14208:	8e4d                	or	a2,a2,a1
   1420a:	cc7a                	sw	t5,24(sp)
   1420c:	ce32                	sw	a2,28(sp)
   1420e:	ea81b707          	fld	fa4,-344(gp) # 1b6b8 <__SDATA_BEGIN__>
   14212:	27e2                	fld	fa5,24(sp)
   14214:	eb01b687          	fld	fa3,-336(gp) # 1b6c0 <__SDATA_BEGIN__+0x8>
   14218:	0ae7f753          	fsub.d	fa4,fa5,fa4
   1421c:	eb81b787          	fld	fa5,-328(gp) # 1b6c8 <__SDATA_BEGIN__+0x10>
   14220:	fff88593          	addi	a1,a7,-1
   14224:	852e                	mv	a0,a1
   14226:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   1422a:	d20587d3          	fcvt.d.w	fa5,a1
   1422e:	ec01b687          	fld	fa3,-320(gp) # 1b6d0 <__SDATA_BEGIN__+0x18>
   14232:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   14236:	0005d563          	bgez	a1,14240 <__gdtoa+0x146>
   1423a:	4505                	li	a0,1
   1423c:	41150533          	sub	a0,a0,a7
   14240:	bcb50513          	addi	a0,a0,-1077
   14244:	00a05863          	blez	a0,14254 <__gdtoa+0x15a>
   14248:	d20506d3          	fcvt.d.w	fa3,a0
   1424c:	ec81b707          	fld	fa4,-312(gp) # 1b6d8 <__SDATA_BEGIN__+0x20>
   14250:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14254:	d2000753          	fcvt.d.w	fa4,zero
   14258:	c2079853          	fcvt.w.d	a6,fa5,rtz
   1425c:	a2e79553          	flt.d	a0,fa5,fa4
   14260:	c909                	beqz	a0,14272 <__gdtoa+0x178>
   14262:	d2080753          	fcvt.d.w	fa4,a6
   14266:	a2f72553          	feq.d	a0,fa4,fa5
   1426a:	00153513          	seqz	a0,a0
   1426e:	40a80833          	sub	a6,a6,a0
   14272:	01459e93          	slli	t4,a1,0x14
   14276:	40bd8533          	sub	a0,s11,a1
   1427a:	45d9                	li	a1,22
   1427c:	00ce8fb3          	add	t6,t4,a2
   14280:	fff50e93          	addi	t4,a0,-1
   14284:	3d05eb63          	bltu	a1,a6,1465a <__gdtoa+0x560>
   14288:	65e9                	lui	a1,0x1a
   1428a:	00381613          	slli	a2,a6,0x3
   1428e:	60058593          	addi	a1,a1,1536 # 1a600 <__mprec_tens>
   14292:	962e                	add	a2,a2,a1
   14294:	cc7a                	sw	t5,24(sp)
   14296:	ce7e                	sw	t6,28(sp)
   14298:	221c                	fld	fa5,0(a2)
   1429a:	2762                	fld	fa4,24(sp)
   1429c:	a2f71653          	flt.d	a2,fa4,fa5
   142a0:	58061163          	bnez	a2,14822 <__gdtoa+0x728>
   142a4:	ca82                	sw	zero,84(sp)
   142a6:	cc02                	sw	zero,24(sp)
   142a8:	00a04763          	bgtz	a0,142b6 <__gdtoa+0x1bc>
   142ac:	4605                	li	a2,1
   142ae:	40a607b3          	sub	a5,a2,a0
   142b2:	cc3e                	sw	a5,24(sp)
   142b4:	4e81                	li	t4,0
   142b6:	9ec2                	add	t4,t4,a6
   142b8:	da42                	sw	a6,52(sp)
   142ba:	d802                	sw	zero,48(sp)
   142bc:	4625                	li	a2,9
   142be:	3d266a63          	bltu	a2,s2,14692 <__gdtoa+0x598>
   142c2:	4615                	li	a2,5
   142c4:	57264263          	blt	a2,s2,14828 <__gdtoa+0x72e>
   142c8:	3fd88893          	addi	a7,a7,1021
   142cc:	7f88b793          	sltiu	a5,a7,2040
   142d0:	4591                	li	a1,4
   142d2:	ccbe                	sw	a5,88(sp)
   142d4:	18b909e3          	beq	s2,a1,14c66 <__gdtoa+0xb6c>
   142d8:	18c903e3          	beq	s2,a2,14c5e <__gdtoa+0xb64>
   142dc:	4609                	li	a2,2
   142de:	18c907e3          	beq	s2,a2,14c6c <__gdtoa+0xb72>
   142e2:	460d                	li	a2,3
   142e4:	c882                	sw	zero,80(sp)
   142e6:	3ac91c63          	bne	s2,a2,1469e <__gdtoa+0x5a4>
   142ea:	57d2                	lw	a5,52(sp)
   142ec:	5722                	lw	a4,40(sp)
   142ee:	97ba                	add	a5,a5,a4
   142f0:	cebe                	sw	a5,92(sp)
   142f2:	0785                	addi	a5,a5,1
   142f4:	d63e                	sw	a5,44(sp)
   142f6:	00f05ce3          	blez	a5,14b0e <__gdtoa+0xa14>
   142fa:	863e                	mv	a2,a5
   142fc:	85be                	mv	a1,a5
   142fe:	8522                	mv	a0,s0
   14300:	c4fa                	sw	t5,72(sp)
   14302:	c6fe                	sw	t6,76(sp)
   14304:	c0f6                	sw	t4,64(sp)
   14306:	dc42                	sw	a6,56(sp)
   14308:	d6b2                	sw	a2,108(sp)
   1430a:	5bd000ef          	jal	150c6 <__rv_alloc_D2A>
   1430e:	88aa                	mv	a7,a0
   14310:	32050863          	beqz	a0,14640 <__gdtoa+0x546>
   14314:	00ca2783          	lw	a5,12(s4)
   14318:	5862                	lw	a6,56(sp)
   1431a:	4e86                	lw	t4,64(sp)
   1431c:	17fd                	addi	a5,a5,-1
   1431e:	d03e                	sw	a5,32(sp)
   14320:	4f26                	lw	t5,72(sp)
   14322:	4fb6                	lw	t6,76(sp)
   14324:	3a078363          	beqz	a5,146ca <__gdtoa+0x5d0>
   14328:	4e07ca63          	bltz	a5,1481c <__gdtoa+0x722>
   1432c:	100af313          	andi	t1,s5,256
   14330:	38031863          	bnez	t1,146c0 <__gdtoa+0x5c6>
   14334:	000c4663          	bltz	s8,14340 <__gdtoa+0x246>
   14338:	57d2                	lw	a5,52(sp)
   1433a:	4639                	li	a2,14
   1433c:	50f65363          	bge	a2,a5,14842 <__gdtoa+0x748>
   14340:	47c6                	lw	a5,80(sp)
   14342:	4c078863          	beqz	a5,14812 <__gdtoa+0x718>
   14346:	41bd06b3          	sub	a3,s10,s11
   1434a:	004a2603          	lw	a2,4(s4)
   1434e:	00168593          	addi	a1,a3,1
   14352:	d6ae                	sw	a1,108(sp)
   14354:	40dc06b3          	sub	a3,s8,a3
   14358:	7ec6dd63          	bge	a3,a2,14b52 <__gdtoa+0xa58>
   1435c:	ffd90693          	addi	a3,s2,-3
   14360:	9af5                	andi	a3,a3,-3
   14362:	72068863          	beqz	a3,14a92 <__gdtoa+0x998>
   14366:	40cc06b3          	sub	a3,s8,a2
   1436a:	0685                	addi	a3,a3,1
   1436c:	d6b6                	sw	a3,108(sp)
   1436e:	4605                	li	a2,1
   14370:	01265863          	bge	a2,s2,14380 <__gdtoa+0x286>
   14374:	57b2                	lw	a5,44(sp)
   14376:	00f05563          	blez	a5,14380 <__gdtoa+0x286>
   1437a:	57b2                	lw	a5,44(sp)
   1437c:	40d7c1e3          	blt	a5,a3,14f7e <__gdtoa+0xe84>
   14380:	47e2                	lw	a5,24(sp)
   14382:	5d42                	lw	s10,48(sp)
   14384:	9eb6                	add	t4,t4,a3
   14386:	dc3e                	sw	a5,56(sp)
   14388:	97b6                	add	a5,a5,a3
   1438a:	cc3e                	sw	a5,24(sp)
   1438c:	4585                	li	a1,1
   1438e:	8522                	mv	a0,s0
   14390:	ccc6                	sw	a7,88(sp)
   14392:	c4f6                	sw	t4,72(sp)
   14394:	c0c2                	sw	a6,64(sp)
   14396:	324010ef          	jal	156ba <__i2b>
   1439a:	4806                	lw	a6,64(sp)
   1439c:	4ea6                	lw	t4,72(sp)
   1439e:	48e6                	lw	a7,88(sp)
   143a0:	8c2a                	mv	s8,a0
   143a2:	28050f63          	beqz	a0,14640 <__gdtoa+0x546>
   143a6:	57e2                	lw	a5,56(sp)
   143a8:	c385                	beqz	a5,143c8 <__gdtoa+0x2ce>
   143aa:	01d05f63          	blez	t4,143c8 <__gdtoa+0x2ce>
   143ae:	86be                	mv	a3,a5
   143b0:	00fed363          	bge	t4,a5,143b6 <__gdtoa+0x2bc>
   143b4:	86f6                	mv	a3,t4
   143b6:	47e2                	lw	a5,24(sp)
   143b8:	d6b6                	sw	a3,108(sp)
   143ba:	40de8eb3          	sub	t4,t4,a3
   143be:	8f95                	sub	a5,a5,a3
   143c0:	cc3e                	sw	a5,24(sp)
   143c2:	57e2                	lw	a5,56(sp)
   143c4:	8f95                	sub	a5,a5,a3
   143c6:	dc3e                	sw	a5,56(sp)
   143c8:	57c2                	lw	a5,48(sp)
   143ca:	c39d                	beqz	a5,143f0 <__gdtoa+0x2f6>
   143cc:	47c6                	lw	a5,80(sp)
   143ce:	c399                	beqz	a5,143d4 <__gdtoa+0x2da>
   143d0:	7e0d1863          	bnez	s10,14bc0 <__gdtoa+0xac6>
   143d4:	5642                	lw	a2,48(sp)
   143d6:	85e6                	mv	a1,s9
   143d8:	8522                	mv	a0,s0
   143da:	ccc6                	sw	a7,88(sp)
   143dc:	c4f6                	sw	t4,72(sp)
   143de:	c0c2                	sw	a6,64(sp)
   143e0:	4d8010ef          	jal	158b8 <__pow5mult>
   143e4:	4806                	lw	a6,64(sp)
   143e6:	4ea6                	lw	t4,72(sp)
   143e8:	48e6                	lw	a7,88(sp)
   143ea:	8caa                	mv	s9,a0
   143ec:	24050a63          	beqz	a0,14640 <__gdtoa+0x546>
   143f0:	4585                	li	a1,1
   143f2:	8522                	mv	a0,s0
   143f4:	c4c6                	sw	a7,72(sp)
   143f6:	c0f6                	sw	t4,64(sp)
   143f8:	d842                	sw	a6,48(sp)
   143fa:	2c0010ef          	jal	156ba <__i2b>
   143fe:	8d2a                	mv	s10,a0
   14400:	24050063          	beqz	a0,14640 <__gdtoa+0x546>
   14404:	5842                	lw	a6,48(sp)
   14406:	4e86                	lw	t4,64(sp)
   14408:	48a6                	lw	a7,72(sp)
   1440a:	70081663          	bnez	a6,14b16 <__gdtoa+0xa1c>
   1440e:	4685                	li	a3,1
   14410:	5126d263          	bge	a3,s2,14914 <__gdtoa+0x81a>
   14414:	4a7d                	li	s4,31
   14416:	47e2                	lw	a5,24(sp)
   14418:	41da0a33          	sub	s4,s4,t4
   1441c:	1a71                	addi	s4,s4,-4
   1441e:	01fa7a13          	andi	s4,s4,31
   14422:	00fa0633          	add	a2,s4,a5
   14426:	d6d2                	sw	s4,108(sp)
   14428:	87d2                	mv	a5,s4
   1442a:	58c04d63          	bgtz	a2,149c4 <__gdtoa+0x8ca>
   1442e:	00fe8633          	add	a2,t4,a5
   14432:	1ec04c63          	bgtz	a2,1462a <__gdtoa+0x530>
   14436:	47d6                	lw	a5,84(sp)
   14438:	5a079563          	bnez	a5,149e2 <__gdtoa+0x8e8>
   1443c:	57b2                	lw	a5,44(sp)
   1443e:	66f05a63          	blez	a5,14ab2 <__gdtoa+0x9b8>
   14442:	47c6                	lw	a5,80(sp)
   14444:	5c078d63          	beqz	a5,14a1e <__gdtoa+0x924>
   14448:	57e2                	lw	a5,56(sp)
   1444a:	00fa0633          	add	a2,s4,a5
   1444e:	7ec04763          	bgtz	a2,14c3c <__gdtoa+0xb42>
   14452:	8a62                	mv	s4,s8
   14454:	02081ce3          	bnez	a6,14c8c <__gdtoa+0xb92>
   14458:	5b32                	lw	s6,44(sp)
   1445a:	8dc6                	mv	s11,a7
   1445c:	4685                	li	a3,1
   1445e:	d446                	sw	a7,40(sp)
   14460:	cc5e                	sw	s7,24(sp)
   14462:	d626                	sw	s1,44(sp)
   14464:	a885                	j	144d4 <__gdtoa+0x3da>
   14466:	8522                	mv	a0,s0
   14468:	7bd000ef          	jal	15424 <_Bfree>
   1446c:	100ac3e3          	bltz	s5,14d72 <__gdtoa+0xc78>
   14470:	01596ab3          	or	s5,s2,s5
   14474:	000a9763          	bnez	s5,14482 <__gdtoa+0x388>
   14478:	0009a783          	lw	a5,0(s3)
   1447c:	8b85                	andi	a5,a5,1
   1447e:	0e078ae3          	beqz	a5,14d72 <__gdtoa+0xc78>
   14482:	5782                	lw	a5,32(sp)
   14484:	4709                	li	a4,2
   14486:	26e798e3          	bne	a5,a4,14ef6 <__gdtoa+0xdfc>
   1448a:	017d8023          	sb	s7,0(s11)
   1448e:	57b6                	lw	a5,108(sp)
   14490:	0d85                	addi	s11,s11,1
   14492:	1efb0fe3          	beq	s6,a5,14e90 <__gdtoa+0xd96>
   14496:	85e6                	mv	a1,s9
   14498:	4681                	li	a3,0
   1449a:	4629                	li	a2,10
   1449c:	8522                	mv	a0,s0
   1449e:	799000ef          	jal	15436 <__multadd>
   144a2:	8caa                	mv	s9,a0
   144a4:	18050e63          	beqz	a0,14640 <__gdtoa+0x546>
   144a8:	4681                	li	a3,0
   144aa:	4629                	li	a2,10
   144ac:	85e2                	mv	a1,s8
   144ae:	8522                	mv	a0,s0
   144b0:	494c0c63          	beq	s8,s4,14948 <__gdtoa+0x84e>
   144b4:	783000ef          	jal	15436 <__multadd>
   144b8:	8c2a                	mv	s8,a0
   144ba:	18050363          	beqz	a0,14640 <__gdtoa+0x546>
   144be:	85d2                	mv	a1,s4
   144c0:	4681                	li	a3,0
   144c2:	4629                	li	a2,10
   144c4:	8522                	mv	a0,s0
   144c6:	771000ef          	jal	15436 <__multadd>
   144ca:	8a2a                	mv	s4,a0
   144cc:	16050a63          	beqz	a0,14640 <__gdtoa+0x546>
   144d0:	56b6                	lw	a3,108(sp)
   144d2:	0685                	addi	a3,a3,1
   144d4:	85ea                	mv	a1,s10
   144d6:	8566                	mv	a0,s9
   144d8:	d6b6                	sw	a3,108(sp)
   144da:	4ab000ef          	jal	15184 <__quorem_D2A>
   144de:	84aa                	mv	s1,a0
   144e0:	85e2                	mv	a1,s8
   144e2:	8566                	mv	a0,s9
   144e4:	5b6010ef          	jal	15a9a <__mcmp>
   144e8:	85ea                	mv	a1,s10
   144ea:	8aaa                	mv	s5,a0
   144ec:	8652                	mv	a2,s4
   144ee:	8522                	mv	a0,s0
   144f0:	5e6010ef          	jal	15ad6 <__mdiff>
   144f4:	03048b93          	addi	s7,s1,48
   144f8:	85aa                	mv	a1,a0
   144fa:	14050363          	beqz	a0,14640 <__gdtoa+0x546>
   144fe:	455c                	lw	a5,12(a0)
   14500:	f3bd                	bnez	a5,14466 <__gdtoa+0x36c>
   14502:	c82a                	sw	a0,16(sp)
   14504:	8566                	mv	a0,s9
   14506:	594010ef          	jal	15a9a <__mcmp>
   1450a:	45c2                	lw	a1,16(sp)
   1450c:	86aa                	mv	a3,a0
   1450e:	8522                	mv	a0,s0
   14510:	c836                	sw	a3,16(sp)
   14512:	713000ef          	jal	15424 <_Bfree>
   14516:	46c2                	lw	a3,16(sp)
   14518:	00d96733          	or	a4,s2,a3
   1451c:	340711e3          	bnez	a4,1505e <__gdtoa+0xf64>
   14520:	0009a783          	lw	a5,0(s3)
   14524:	8b85                	andi	a5,a5,1
   14526:	42079863          	bnez	a5,14956 <__gdtoa+0x85c>
   1452a:	5782                	lw	a5,32(sp)
   1452c:	280787e3          	beqz	a5,14fba <__gdtoa+0xec0>
   14530:	f5504de3          	bgtz	s5,1448a <__gdtoa+0x390>
   14534:	010ca603          	lw	a2,16(s9)
   14538:	4685                	li	a3,1
   1453a:	835e                	mv	t1,s7
   1453c:	58a2                	lw	a7,40(sp)
   1453e:	4be2                	lw	s7,24(sp)
   14540:	54b2                	lw	s1,44(sp)
   14542:	8b3a                	mv	s6,a4
   14544:	2ec6dae3          	bge	a3,a2,15038 <__gdtoa+0xf3e>
   14548:	5782                	lw	a5,32(sp)
   1454a:	4689                	li	a3,2
   1454c:	8a9a                	mv	s5,t1
   1454e:	8b46                	mv	s6,a7
   14550:	02d79063          	bne	a5,a3,14570 <__gdtoa+0x476>
   14554:	2cb0006f          	j	1501e <__gdtoa+0xf24>
   14558:	6df000ef          	jal	15436 <__multadd>
   1455c:	85ea                	mv	a1,s10
   1455e:	8caa                	mv	s9,a0
   14560:	0e050063          	beqz	a0,14640 <__gdtoa+0x546>
   14564:	421000ef          	jal	15184 <__quorem_D2A>
   14568:	03050a93          	addi	s5,a0,48
   1456c:	8dca                	mv	s11,s2
   1456e:	8a4e                	mv	s4,s3
   14570:	85d2                	mv	a1,s4
   14572:	856a                	mv	a0,s10
   14574:	526010ef          	jal	15a9a <__mcmp>
   14578:	87aa                	mv	a5,a0
   1457a:	4681                	li	a3,0
   1457c:	4629                	li	a2,10
   1457e:	85d2                	mv	a1,s4
   14580:	8522                	mv	a0,s0
   14582:	001d8913          	addi	s2,s11,1
   14586:	28f052e3          	blez	a5,1500a <__gdtoa+0xf10>
   1458a:	ff590fa3          	sb	s5,-1(s2)
   1458e:	6a9000ef          	jal	15436 <__multadd>
   14592:	89aa                	mv	s3,a0
   14594:	4681                	li	a3,0
   14596:	4629                	li	a2,10
   14598:	85e6                	mv	a1,s9
   1459a:	8522                	mv	a0,s0
   1459c:	0a098263          	beqz	s3,14640 <__gdtoa+0x546>
   145a0:	fb4c1ce3          	bne	s8,s4,14558 <__gdtoa+0x45e>
   145a4:	8c4e                	mv	s8,s3
   145a6:	bf4d                	j	14558 <__gdtoa+0x45e>
   145a8:	4791                	li	a5,4
   145aa:	0afe1363          	bne	t3,a5,14650 <__gdtoa+0x556>
   145ae:	4632                	lw	a2,12(sp)
   145b0:	4b4a                	lw	s6,144(sp)
   145b2:	50ba                	lw	ra,172(sp)
   145b4:	549a                	lw	s1,164(sp)
   145b6:	4ada                	lw	s5,148(sp)
   145b8:	4bba                	lw	s7,140(sp)
   145ba:	77e1                	lui	a5,0xffff8
   145bc:	00f8a023          	sw	a5,0(a7)
   145c0:	65e9                	lui	a1,0x1a
   145c2:	468d                	li	a3,3
   145c4:	12858593          	addi	a1,a1,296 # 1a128 <__clzsi2+0x116>
   145c8:	614d                	addi	sp,sp,176
   145ca:	33b0006f          	j	15104 <__nrv_alloc_D2A>
   145ce:	85e6                	mv	a1,s9
   145d0:	8522                	mv	a0,s0
   145d2:	653000ef          	jal	15424 <_Bfree>
   145d6:	590a                	lw	s2,160(sp)
   145d8:	49fa                	lw	s3,156(sp)
   145da:	4a6a                	lw	s4,152(sp)
   145dc:	4c2a                	lw	s8,136(sp)
   145de:	4c9a                	lw	s9,132(sp)
   145e0:	4d0a                	lw	s10,128(sp)
   145e2:	5df6                	lw	s11,124(sp)
   145e4:	4632                	lw	a2,12(sp)
   145e6:	4785                	li	a5,1
   145e8:	65e9                	lui	a1,0x1a
   145ea:	8522                	mv	a0,s0
   145ec:	c09c                	sw	a5,0(s1)
   145ee:	4685                	li	a3,1
   145f0:	11858593          	addi	a1,a1,280 # 1a118 <__clzsi2+0x106>
   145f4:	311000ef          	jal	15104 <__nrv_alloc_D2A>
   145f8:	542a                	lw	s0,168(sp)
   145fa:	88aa                	mv	a7,a0
   145fc:	50ba                	lw	ra,172(sp)
   145fe:	4b4a                	lw	s6,144(sp)
   14600:	549a                	lw	s1,164(sp)
   14602:	4ada                	lw	s5,148(sp)
   14604:	4bba                	lw	s7,140(sp)
   14606:	8546                	mv	a0,a7
   14608:	614d                	addi	sp,sp,176
   1460a:	8082                	ret
   1460c:	4632                	lw	a2,12(sp)
   1460e:	50ba                	lw	ra,172(sp)
   14610:	549a                	lw	s1,164(sp)
   14612:	4ada                	lw	s5,148(sp)
   14614:	4bba                	lw	s7,140(sp)
   14616:	77e1                	lui	a5,0xffff8
   14618:	00f8a023          	sw	a5,0(a7)
   1461c:	65e9                	lui	a1,0x1a
   1461e:	46a1                	li	a3,8
   14620:	11c58593          	addi	a1,a1,284 # 1a11c <__clzsi2+0x10a>
   14624:	614d                	addi	sp,sp,176
   14626:	2df0006f          	j	15104 <__nrv_alloc_D2A>
   1462a:	85ea                	mv	a1,s10
   1462c:	8522                	mv	a0,s0
   1462e:	cc46                	sw	a7,24(sp)
   14630:	c842                	sw	a6,16(sp)
   14632:	35a010ef          	jal	1598c <__lshift>
   14636:	4842                	lw	a6,16(sp)
   14638:	48e2                	lw	a7,24(sp)
   1463a:	8d2a                	mv	s10,a0
   1463c:	de051de3          	bnez	a0,14436 <__gdtoa+0x33c>
   14640:	542a                	lw	s0,168(sp)
   14642:	590a                	lw	s2,160(sp)
   14644:	49fa                	lw	s3,156(sp)
   14646:	4a6a                	lw	s4,152(sp)
   14648:	4c2a                	lw	s8,136(sp)
   1464a:	4c9a                	lw	s9,132(sp)
   1464c:	4d0a                	lw	s10,128(sp)
   1464e:	5df6                	lw	s11,124(sp)
   14650:	4881                	li	a7,0
   14652:	b76d                	j	145fc <__gdtoa+0x502>
   14654:	000ca823          	sw	zero,16(s9)
   14658:	beb5                	j	141d4 <__gdtoa+0xda>
   1465a:	4785                	li	a5,1
   1465c:	cabe                	sw	a5,84(sp)
   1465e:	cc02                	sw	zero,24(sp)
   14660:	1a0ec163          	bltz	t4,14802 <__gdtoa+0x708>
   14664:	c40859e3          	bgez	a6,142b6 <__gdtoa+0x1bc>
   14668:	47e2                	lw	a5,24(sp)
   1466a:	da42                	sw	a6,52(sp)
   1466c:	410787b3          	sub	a5,a5,a6
   14670:	cc3e                	sw	a5,24(sp)
   14672:	410007b3          	neg	a5,a6
   14676:	d83e                	sw	a5,48(sp)
   14678:	4801                	li	a6,0
   1467a:	b189                	j	142bc <__gdtoa+0x1c2>
   1467c:	85aa                	mv	a1,a0
   1467e:	8566                	mv	a0,s9
   14680:	45b000ef          	jal	152da <__rshift_D2A>
   14684:	5636                	lw	a2,108(sp)
   14686:	47c2                	lw	a5,16(sp)
   14688:	40cd8db3          	sub	s11,s11,a2
   1468c:	00f60c33          	add	s8,a2,a5
   14690:	be89                	j	141e2 <__gdtoa+0xe8>
   14692:	3fd88893          	addi	a7,a7,1021
   14696:	7f88b793          	sltiu	a5,a7,2040
   1469a:	ccbe                	sw	a5,88(sp)
   1469c:	4901                	li	s2,0
   1469e:	ed01b707          	fld	fa4,-304(gp) # 1b6e0 <__SDATA_BEGIN__+0x28>
   146a2:	d20d07d3          	fcvt.d.w	fa5,s10
   146a6:	4785                	li	a5,1
   146a8:	c8be                	sw	a5,80(sp)
   146aa:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   146ae:	57fd                	li	a5,-1
   146b0:	d402                	sw	zero,40(sp)
   146b2:	cebe                	sw	a5,92(sp)
   146b4:	d63e                	sw	a5,44(sp)
   146b6:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   146ba:	058d                	addi	a1,a1,3
   146bc:	862e                	mv	a2,a1
   146be:	b181                	j	142fe <__gdtoa+0x204>
   146c0:	5782                	lw	a5,32(sp)
   146c2:	460d                	li	a2,3
   146c4:	40f607b3          	sub	a5,a2,a5
   146c8:	d03e                	sw	a5,32(sp)
   146ca:	57b2                	lw	a5,44(sp)
   146cc:	4639                	li	a2,14
   146ce:	c6f663e3          	bltu	a2,a5,14334 <__gdtoa+0x23a>
   146d2:	4766                	lw	a4,88(sp)
   146d4:	c60700e3          	beqz	a4,14334 <__gdtoa+0x23a>
   146d8:	5752                	lw	a4,52(sp)
   146da:	5682                	lw	a3,32(sp)
   146dc:	00d76633          	or	a2,a4,a3
   146e0:	c4061ae3          	bnez	a2,14334 <__gdtoa+0x23a>
   146e4:	4756                	lw	a4,84(sp)
   146e6:	d682                	sw	zero,108(sp)
   146e8:	d07a                	sw	t5,32(sp)
   146ea:	d27e                	sw	t6,36(sp)
   146ec:	cb11                	beqz	a4,14700 <__gdtoa+0x606>
   146ee:	dc7a                	sw	t5,56(sp)
   146f0:	de7e                	sw	t6,60(sp)
   146f2:	ed81b787          	fld	fa5,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   146f6:	3762                	fld	fa4,56(sp)
   146f8:	a2f71653          	flt.d	a2,fa4,fa5
   146fc:	7a061163          	bnez	a2,14e9e <__gdtoa+0xda4>
   14700:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   14704:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14708:	3682                	fld	fa3,32(sp)
   1470a:	57b2                	lw	a5,44(sp)
   1470c:	fcc00637          	lui	a2,0xfcc00
   14710:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14714:	bc3e                	fsd	fa5,56(sp)
   14716:	5562                	lw	a0,56(sp)
   14718:	55f2                	lw	a1,60(sp)
   1471a:	832a                	mv	t1,a0
   1471c:	962e                	add	a2,a2,a1
   1471e:	5c078063          	beqz	a5,14cde <__gdtoa+0xbe4>
   14722:	3782                	fld	fa5,32(sp)
   14724:	5532                	lw	a0,44(sp)
   14726:	4381                	li	t2,0
   14728:	bc3e                	fsd	fa5,56(sp)
   1472a:	65e9                	lui	a1,0x1a
   1472c:	fff50793          	addi	a5,a0,-1
   14730:	078e                	slli	a5,a5,0x3
   14732:	60058293          	addi	t0,a1,1536 # 1a600 <__mprec_tens>
   14736:	005786b3          	add	a3,a5,t0
   1473a:	229c                	fld	fa5,0(a3)
   1473c:	46c6                	lw	a3,80(sp)
   1473e:	871a                	mv	a4,t1
   14740:	87b2                	mv	a5,a2
   14742:	6c068163          	beqz	a3,14e04 <__gdtoa+0xd0a>
   14746:	3762                	fld	fa4,56(sp)
   14748:	36e2                	fld	fa3,56(sp)
   1474a:	c2071353          	fcvt.w.d	t1,fa4,rtz
   1474e:	f081b707          	fld	fa4,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   14752:	dc3a                	sw	a4,56(sp)
   14754:	de3e                	sw	a5,60(sp)
   14756:	1af77753          	fdiv.d	fa4,fa4,fa5
   1475a:	d20307d3          	fcvt.d.w	fa5,t1
   1475e:	03030313          	addi	t1,t1,48
   14762:	00688023          	sb	t1,0(a7)
   14766:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   1476a:	36e2                	fld	fa3,56(sp)
   1476c:	00188613          	addi	a2,a7,1
   14770:	0ad77753          	fsub.d	fa4,fa4,fa3
   14774:	a2e79353          	flt.d	t1,fa5,fa4
   14778:	7c031e63          	bnez	t1,14f54 <__gdtoa+0xe5a>
   1477c:	ed81b587          	fld	fa1,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   14780:	ee01b607          	fld	fa2,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14784:	a80d                	j	147b6 <__gdtoa+0x6bc>
   14786:	57b6                	lw	a5,108(sp)
   14788:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe45a5>
   1478a:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffdc5a5>
   1478c:	d6be                	sw	a5,108(sp)
   1478e:	7ea7d163          	bge	a5,a0,14f70 <__gdtoa+0xe76>
   14792:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   14796:	12c77753          	fmul.d	fa4,fa4,fa2
   1479a:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1479e:	d20786d3          	fcvt.d.w	fa3,a5
   147a2:	03078793          	addi	a5,a5,48
   147a6:	fef60fa3          	sb	a5,-1(a2)
   147aa:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   147ae:	a2e797d3          	flt.d	a5,fa5,fa4
   147b2:	7a079163          	bnez	a5,14f54 <__gdtoa+0xe5a>
   147b6:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   147ba:	a2e697d3          	flt.d	a5,fa3,fa4
   147be:	d7e1                	beqz	a5,14786 <__gdtoa+0x68c>
   147c0:	fff64683          	lbu	a3,-1(a2)
   147c4:	00138513          	addi	a0,t2,1
   147c8:	03900593          	li	a1,57
   147cc:	a031                	j	147d8 <__gdtoa+0x6de>
   147ce:	62f88763          	beq	a7,a5,14dfc <__gdtoa+0xd02>
   147d2:	fff7c683          	lbu	a3,-1(a5)
   147d6:	863e                	mv	a2,a5
   147d8:	fff60793          	addi	a5,a2,-1
   147dc:	feb689e3          	beq	a3,a1,147ce <__gdtoa+0x6d4>
   147e0:	0685                	addi	a3,a3,1
   147e2:	0ff6f693          	zext.b	a3,a3
   147e6:	00d78023          	sb	a3,0(a5)
   147ea:	892a                	mv	s2,a0
   147ec:	02000b13          	li	s6,32
   147f0:	a0e5                	j	148d8 <__gdtoa+0x7de>
   147f2:	542a                	lw	s0,168(sp)
   147f4:	590a                	lw	s2,160(sp)
   147f6:	49fa                	lw	s3,156(sp)
   147f8:	4a6a                	lw	s4,152(sp)
   147fa:	4c9a                	lw	s9,132(sp)
   147fc:	4d0a                	lw	s10,128(sp)
   147fe:	4881                	li	a7,0
   14800:	bbf5                	j	145fc <__gdtoa+0x502>
   14802:	4605                	li	a2,1
   14804:	40a607b3          	sub	a5,a2,a0
   14808:	cc3e                	sw	a5,24(sp)
   1480a:	4e81                	li	t4,0
   1480c:	e4084ee3          	bltz	a6,14668 <__gdtoa+0x56e>
   14810:	b45d                	j	142b6 <__gdtoa+0x1bc>
   14812:	47e2                	lw	a5,24(sp)
   14814:	5d42                	lw	s10,48(sp)
   14816:	4c01                	li	s8,0
   14818:	dc3e                	sw	a5,56(sp)
   1481a:	b671                	j	143a6 <__gdtoa+0x2ac>
   1481c:	4789                	li	a5,2
   1481e:	d03e                	sw	a5,32(sp)
   14820:	b631                	j	1432c <__gdtoa+0x232>
   14822:	187d                	addi	a6,a6,-1
   14824:	ca82                	sw	zero,84(sp)
   14826:	bd25                	j	1465e <__gdtoa+0x564>
   14828:	1971                	addi	s2,s2,-4
   1482a:	4591                	li	a1,4
   1482c:	10b90263          	beq	s2,a1,14930 <__gdtoa+0x836>
   14830:	42c90263          	beq	s2,a2,14c54 <__gdtoa+0xb5a>
   14834:	4609                	li	a2,2
   14836:	cc82                	sw	zero,88(sp)
   14838:	c882                	sw	zero,80(sp)
   1483a:	0ec90e63          	beq	s2,a2,14936 <__gdtoa+0x83c>
   1483e:	490d                	li	s2,3
   14840:	b46d                	j	142ea <__gdtoa+0x1f0>
   14842:	66e9                	lui	a3,0x1a
   14844:	078e                	slli	a5,a5,0x3
   14846:	60068693          	addi	a3,a3,1536 # 1a600 <__mprec_tens>
   1484a:	97b6                	add	a5,a5,a3
   1484c:	2398                	fld	fa4,0(a5)
   1484e:	57a2                	lw	a5,40(sp)
   14850:	3207c263          	bltz	a5,14b74 <__gdtoa+0xa7a>
   14854:	c87a                	sw	t5,16(sp)
   14856:	ca7e                	sw	t6,20(sp)
   14858:	27c2                	fld	fa5,16(sp)
   1485a:	4785                	li	a5,1
   1485c:	d6be                	sw	a5,108(sp)
   1485e:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   14862:	57d2                	lw	a5,52(sp)
   14864:	26c2                	fld	fa3,16(sp)
   14866:	00188613          	addi	a2,a7,1
   1486a:	00178513          	addi	a0,a5,1
   1486e:	892a                	mv	s2,a0
   14870:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14874:	d20787d3          	fcvt.d.w	fa5,a5
   14878:	03078693          	addi	a3,a5,48
   1487c:	00d88023          	sb	a3,0(a7)
   14880:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   14884:	d20006d3          	fcvt.d.w	fa3,zero
   14888:	a2d7a6d3          	feq.d	a3,fa5,fa3
   1488c:	e6b1                	bnez	a3,148d8 <__gdtoa+0x7de>
   1488e:	ee01b587          	fld	fa1,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14892:	22d68653          	fmv.d	fa2,fa3
   14896:	55b2                	lw	a1,44(sp)
   14898:	a025                	j	148c0 <__gdtoa+0x7c6>
   1489a:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   1489e:	d6b6                	sw	a3,108(sp)
   148a0:	0605                	addi	a2,a2,1
   148a2:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   148a6:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   148aa:	d20786d3          	fcvt.d.w	fa3,a5
   148ae:	03078713          	addi	a4,a5,48
   148b2:	fee60fa3          	sb	a4,-1(a2)
   148b6:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   148ba:	a2c7a753          	feq.d	a4,fa5,fa2
   148be:	ef09                	bnez	a4,148d8 <__gdtoa+0x7de>
   148c0:	5736                	lw	a4,108(sp)
   148c2:	00170693          	addi	a3,a4,1
   148c6:	fcb71ae3          	bne	a4,a1,1489a <__gdtoa+0x7a0>
   148ca:	5702                	lw	a4,32(sp)
   148cc:	4e070e63          	beqz	a4,14dc8 <__gdtoa+0xcce>
   148d0:	4785                	li	a5,1
   148d2:	4b41                	li	s6,16
   148d4:	60f70263          	beq	a4,a5,14ed8 <__gdtoa+0xdde>
   148d8:	85e6                	mv	a1,s9
   148da:	8522                	mv	a0,s0
   148dc:	d446                	sw	a7,40(sp)
   148de:	c832                	sw	a2,16(sp)
   148e0:	345000ef          	jal	15424 <_Bfree>
   148e4:	4642                	lw	a2,16(sp)
   148e6:	47b2                	lw	a5,12(sp)
   148e8:	58a2                	lw	a7,40(sp)
   148ea:	00060023          	sb	zero,0(a2)
   148ee:	0124a023          	sw	s2,0(s1)
   148f2:	c391                	beqz	a5,148f6 <__gdtoa+0x7fc>
   148f4:	c390                	sw	a2,0(a5)
   148f6:	000ba783          	lw	a5,0(s7)
   148fa:	542a                	lw	s0,168(sp)
   148fc:	590a                	lw	s2,160(sp)
   148fe:	0167e7b3          	or	a5,a5,s6
   14902:	49fa                	lw	s3,156(sp)
   14904:	4a6a                	lw	s4,152(sp)
   14906:	4c2a                	lw	s8,136(sp)
   14908:	4c9a                	lw	s9,132(sp)
   1490a:	4d0a                	lw	s10,128(sp)
   1490c:	5df6                	lw	s11,124(sp)
   1490e:	00fba023          	sw	a5,0(s7)
   14912:	b1ed                	j	145fc <__gdtoa+0x502>
   14914:	b0dd90e3          	bne	s11,a3,14414 <__gdtoa+0x31a>
   14918:	004a2783          	lw	a5,4(s4)
   1491c:	4742                	lw	a4,16(sp)
   1491e:	0785                	addi	a5,a5,1
   14920:	aee7dae3          	bge	a5,a4,14414 <__gdtoa+0x31a>
   14924:	47e2                	lw	a5,24(sp)
   14926:	0e85                	addi	t4,t4,1
   14928:	4805                	li	a6,1
   1492a:	0785                	addi	a5,a5,1
   1492c:	cc3e                	sw	a5,24(sp)
   1492e:	b4dd                	j	14414 <__gdtoa+0x31a>
   14930:	4785                	li	a5,1
   14932:	cc82                	sw	zero,88(sp)
   14934:	c8be                	sw	a5,80(sp)
   14936:	55a2                	lw	a1,40(sp)
   14938:	00b04363          	bgtz	a1,1493e <__gdtoa+0x844>
   1493c:	4585                	li	a1,1
   1493e:	862e                	mv	a2,a1
   14940:	ceae                	sw	a1,92(sp)
   14942:	d62e                	sw	a1,44(sp)
   14944:	d42e                	sw	a1,40(sp)
   14946:	ba65                	j	142fe <__gdtoa+0x204>
   14948:	2ef000ef          	jal	15436 <__multadd>
   1494c:	8c2a                	mv	s8,a0
   1494e:	ce0509e3          	beqz	a0,14640 <__gdtoa+0x546>
   14952:	8a2a                	mv	s4,a0
   14954:	beb5                	j	144d0 <__gdtoa+0x3d6>
   14956:	b20adae3          	bgez	s5,1448a <__gdtoa+0x390>
   1495a:	5782                	lw	a5,32(sp)
   1495c:	835e                	mv	t1,s7
   1495e:	58a2                	lw	a7,40(sp)
   14960:	4be2                	lw	s7,24(sp)
   14962:	54b2                	lw	s1,44(sp)
   14964:	8b3a                	mv	s6,a4
   14966:	6c079463          	bnez	a5,1502e <__gdtoa+0xf34>
   1496a:	010ca603          	lw	a2,16(s9)
   1496e:	4685                	li	a3,1
   14970:	4b41                	li	s6,16
   14972:	001d8913          	addi	s2,s11,1
   14976:	68c6d463          	bge	a3,a2,14ffe <__gdtoa+0xf04>
   1497a:	89e2                	mv	s3,s8
   1497c:	864a                	mv	a2,s2
   1497e:	006d8023          	sb	t1,0(s11)
   14982:	8c52                	mv	s8,s4
   14984:	85ea                	mv	a1,s10
   14986:	8522                	mv	a0,s0
   14988:	d446                	sw	a7,40(sp)
   1498a:	c832                	sw	a2,16(sp)
   1498c:	299000ef          	jal	15424 <_Bfree>
   14990:	57d2                	lw	a5,52(sp)
   14992:	4642                	lw	a2,16(sp)
   14994:	58a2                	lw	a7,40(sp)
   14996:	00178913          	addi	s2,a5,1
   1499a:	f20c0fe3          	beqz	s8,148d8 <__gdtoa+0x7de>
   1499e:	00098a63          	beqz	s3,149b2 <__gdtoa+0x8b8>
   149a2:	01898863          	beq	s3,s8,149b2 <__gdtoa+0x8b8>
   149a6:	85ce                	mv	a1,s3
   149a8:	8522                	mv	a0,s0
   149aa:	27b000ef          	jal	15424 <_Bfree>
   149ae:	58a2                	lw	a7,40(sp)
   149b0:	4642                	lw	a2,16(sp)
   149b2:	85e2                	mv	a1,s8
   149b4:	8522                	mv	a0,s0
   149b6:	d446                	sw	a7,40(sp)
   149b8:	c832                	sw	a2,16(sp)
   149ba:	26b000ef          	jal	15424 <_Bfree>
   149be:	58a2                	lw	a7,40(sp)
   149c0:	4642                	lw	a2,16(sp)
   149c2:	bf19                	j	148d8 <__gdtoa+0x7de>
   149c4:	85e6                	mv	a1,s9
   149c6:	8522                	mv	a0,s0
   149c8:	d846                	sw	a7,48(sp)
   149ca:	cc76                	sw	t4,24(sp)
   149cc:	c842                	sw	a6,16(sp)
   149ce:	7bf000ef          	jal	1598c <__lshift>
   149d2:	8caa                	mv	s9,a0
   149d4:	c60506e3          	beqz	a0,14640 <__gdtoa+0x546>
   149d8:	57b6                	lw	a5,108(sp)
   149da:	58c2                	lw	a7,48(sp)
   149dc:	4ee2                	lw	t4,24(sp)
   149de:	4842                	lw	a6,16(sp)
   149e0:	b4b9                	j	1442e <__gdtoa+0x334>
   149e2:	85ea                	mv	a1,s10
   149e4:	8566                	mv	a0,s9
   149e6:	cc46                	sw	a7,24(sp)
   149e8:	c842                	sw	a6,16(sp)
   149ea:	0b0010ef          	jal	15a9a <__mcmp>
   149ee:	4842                	lw	a6,16(sp)
   149f0:	48e2                	lw	a7,24(sp)
   149f2:	a40555e3          	bgez	a0,1443c <__gdtoa+0x342>
   149f6:	57d2                	lw	a5,52(sp)
   149f8:	85e6                	mv	a1,s9
   149fa:	4681                	li	a3,0
   149fc:	17fd                	addi	a5,a5,-1
   149fe:	4629                	li	a2,10
   14a00:	8522                	mv	a0,s0
   14a02:	da3e                	sw	a5,52(sp)
   14a04:	233000ef          	jal	15436 <__multadd>
   14a08:	8caa                	mv	s9,a0
   14a0a:	c2050be3          	beqz	a0,14640 <__gdtoa+0x546>
   14a0e:	47c6                	lw	a5,80(sp)
   14a10:	48e2                	lw	a7,24(sp)
   14a12:	50079a63          	bnez	a5,14f26 <__gdtoa+0xe2c>
   14a16:	47f6                	lw	a5,92(sp)
   14a18:	14f05863          	blez	a5,14b68 <__gdtoa+0xa6e>
   14a1c:	d63e                	sw	a5,44(sp)
   14a1e:	5932                	lw	s2,44(sp)
   14a20:	8dc6                	mv	s11,a7
   14a22:	4685                	li	a3,1
   14a24:	89c6                	mv	s3,a7
   14a26:	a801                	j	14a36 <__gdtoa+0x93c>
   14a28:	20f000ef          	jal	15436 <__multadd>
   14a2c:	8caa                	mv	s9,a0
   14a2e:	c00509e3          	beqz	a0,14640 <__gdtoa+0x546>
   14a32:	56b6                	lw	a3,108(sp)
   14a34:	0685                	addi	a3,a3,1
   14a36:	85ea                	mv	a1,s10
   14a38:	8566                	mv	a0,s9
   14a3a:	d6b6                	sw	a3,108(sp)
   14a3c:	27a1                	jal	15184 <__quorem_D2A>
   14a3e:	03050313          	addi	t1,a0,48
   14a42:	006d8023          	sb	t1,0(s11)
   14a46:	57b6                	lw	a5,108(sp)
   14a48:	4681                	li	a3,0
   14a4a:	4629                	li	a2,10
   14a4c:	85e6                	mv	a1,s9
   14a4e:	8522                	mv	a0,s0
   14a50:	0d85                	addi	s11,s11,1
   14a52:	fd27cbe3          	blt	a5,s2,14a28 <__gdtoa+0x92e>
   14a56:	88ce                	mv	a7,s3
   14a58:	4981                	li	s3,0
   14a5a:	5782                	lw	a5,32(sp)
   14a5c:	2c078263          	beqz	a5,14d20 <__gdtoa+0xc26>
   14a60:	4689                	li	a3,2
   14a62:	010ca603          	lw	a2,16(s9)
   14a66:	2ed78363          	beq	a5,a3,14d4c <__gdtoa+0xc52>
   14a6a:	4685                	li	a3,1
   14a6c:	1ac6c763          	blt	a3,a2,14c1a <__gdtoa+0xb20>
   14a70:	014ca683          	lw	a3,20(s9)
   14a74:	1a069363          	bnez	a3,14c1a <__gdtoa+0xb20>
   14a78:	00d036b3          	snez	a3,a3
   14a7c:	00469b13          	slli	s6,a3,0x4
   14a80:	03000593          	li	a1,48
   14a84:	fffdc783          	lbu	a5,-1(s11)
   14a88:	866e                	mv	a2,s11
   14a8a:	1dfd                	addi	s11,s11,-1
   14a8c:	feb78ce3          	beq	a5,a1,14a84 <__gdtoa+0x98a>
   14a90:	bdd5                	j	14984 <__gdtoa+0x88a>
   14a92:	57b2                	lw	a5,44(sp)
   14a94:	5742                	lw	a4,48(sp)
   14a96:	fff78693          	addi	a3,a5,-1
   14a9a:	10d74463          	blt	a4,a3,14ba2 <__gdtoa+0xaa8>
   14a9e:	40d70d33          	sub	s10,a4,a3
   14aa2:	4407d263          	bgez	a5,14ee6 <__gdtoa+0xdec>
   14aa6:	47e2                	lw	a5,24(sp)
   14aa8:	5732                	lw	a4,44(sp)
   14aaa:	d682                	sw	zero,108(sp)
   14aac:	8f99                	sub	a5,a5,a4
   14aae:	dc3e                	sw	a5,56(sp)
   14ab0:	b8f1                	j	1438c <__gdtoa+0x292>
   14ab2:	4789                	li	a5,2
   14ab4:	9927d7e3          	bge	a5,s2,14442 <__gdtoa+0x348>
   14ab8:	85ea                	mv	a1,s10
   14aba:	4681                	li	a3,0
   14abc:	4615                	li	a2,5
   14abe:	8522                	mv	a0,s0
   14ac0:	c846                	sw	a7,16(sp)
   14ac2:	175000ef          	jal	15436 <__multadd>
   14ac6:	85aa                	mv	a1,a0
   14ac8:	b6050ce3          	beqz	a0,14640 <__gdtoa+0x546>
   14acc:	57b2                	lw	a5,44(sp)
   14ace:	48c2                	lw	a7,16(sp)
   14ad0:	e3f9                	bnez	a5,14b96 <__gdtoa+0xa9c>
   14ad2:	c82a                	sw	a0,16(sp)
   14ad4:	8566                	mv	a0,s9
   14ad6:	cc46                	sw	a7,24(sp)
   14ad8:	7c3000ef          	jal	15a9a <__mcmp>
   14adc:	45c2                	lw	a1,16(sp)
   14ade:	48e2                	lw	a7,24(sp)
   14ae0:	0aa05b63          	blez	a0,14b96 <__gdtoa+0xa9c>
   14ae4:	57d2                	lw	a5,52(sp)
   14ae6:	00278913          	addi	s2,a5,2
   14aea:	03100793          	li	a5,49
   14aee:	00188613          	addi	a2,a7,1
   14af2:	00f88023          	sb	a5,0(a7)
   14af6:	02000b13          	li	s6,32
   14afa:	8522                	mv	a0,s0
   14afc:	d446                	sw	a7,40(sp)
   14afe:	c832                	sw	a2,16(sp)
   14b00:	125000ef          	jal	15424 <_Bfree>
   14b04:	4642                	lw	a2,16(sp)
   14b06:	58a2                	lw	a7,40(sp)
   14b08:	dc0c08e3          	beqz	s8,148d8 <__gdtoa+0x7de>
   14b0c:	b55d                	j	149b2 <__gdtoa+0x8b8>
   14b0e:	4605                	li	a2,1
   14b10:	4585                	li	a1,1
   14b12:	fecff06f          	j	142fe <__gdtoa+0x204>
   14b16:	85aa                	mv	a1,a0
   14b18:	8642                	mv	a2,a6
   14b1a:	8522                	mv	a0,s0
   14b1c:	c0c6                	sw	a7,64(sp)
   14b1e:	d876                	sw	t4,48(sp)
   14b20:	599000ef          	jal	158b8 <__pow5mult>
   14b24:	8d2a                	mv	s10,a0
   14b26:	b0050de3          	beqz	a0,14640 <__gdtoa+0x546>
   14b2a:	4685                	li	a3,1
   14b2c:	5ec2                	lw	t4,48(sp)
   14b2e:	4886                	lw	a7,64(sp)
   14b30:	1526d063          	bge	a3,s2,14c70 <__gdtoa+0xb76>
   14b34:	010d2783          	lw	a5,16(s10)
   14b38:	d846                	sw	a7,48(sp)
   14b3a:	c876                	sw	t4,16(sp)
   14b3c:	078d                	addi	a5,a5,3
   14b3e:	078a                	slli	a5,a5,0x2
   14b40:	97ea                	add	a5,a5,s10
   14b42:	43c8                	lw	a0,4(a5)
   14b44:	299000ef          	jal	155dc <__hi0bits>
   14b48:	58c2                	lw	a7,48(sp)
   14b4a:	4ec2                	lw	t4,16(sp)
   14b4c:	8a2a                	mv	s4,a0
   14b4e:	885a                	mv	a6,s6
   14b50:	b0d9                	j	14416 <__gdtoa+0x31c>
   14b52:	4685                	li	a3,1
   14b54:	f326cfe3          	blt	a3,s2,14a92 <__gdtoa+0x998>
   14b58:	47e2                	lw	a5,24(sp)
   14b5a:	5d42                	lw	s10,48(sp)
   14b5c:	9eae                	add	t4,t4,a1
   14b5e:	dc3e                	sw	a5,56(sp)
   14b60:	97ae                	add	a5,a5,a1
   14b62:	cc3e                	sw	a5,24(sp)
   14b64:	829ff06f          	j	1438c <__gdtoa+0x292>
   14b68:	4789                	li	a5,2
   14b6a:	4727ce63          	blt	a5,s2,14fe6 <__gdtoa+0xeec>
   14b6e:	47f6                	lw	a5,92(sp)
   14b70:	d63e                	sw	a5,44(sp)
   14b72:	b575                	j	14a1e <__gdtoa+0x924>
   14b74:	57b2                	lw	a5,44(sp)
   14b76:	ccf04fe3          	bgtz	a5,14854 <__gdtoa+0x75a>
   14b7a:	ef81                	bnez	a5,14b92 <__gdtoa+0xa98>
   14b7c:	f001b787          	fld	fa5,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   14b80:	c87a                	sw	t5,16(sp)
   14b82:	ca7e                	sw	t6,20(sp)
   14b84:	12f77753          	fmul.d	fa4,fa4,fa5
   14b88:	27c2                	fld	fa5,16(sp)
   14b8a:	a2e787d3          	fle.d	a5,fa5,fa4
   14b8e:	38078663          	beqz	a5,14f1a <__gdtoa+0xe20>
   14b92:	4581                	li	a1,0
   14b94:	4c01                	li	s8,0
   14b96:	57a2                	lw	a5,40(sp)
   14b98:	8646                	mv	a2,a7
   14b9a:	4b41                	li	s6,16
   14b9c:	40f00933          	neg	s2,a5
   14ba0:	bfa9                	j	14afa <__gdtoa+0xa00>
   14ba2:	57c2                	lw	a5,48(sp)
   14ba4:	4762                	lw	a4,24(sp)
   14ba6:	4d01                	li	s10,0
   14ba8:	40f68633          	sub	a2,a3,a5
   14bac:	57b2                	lw	a5,44(sp)
   14bae:	dc3a                	sw	a4,56(sp)
   14bb0:	9832                	add	a6,a6,a2
   14bb2:	d6be                	sw	a5,108(sp)
   14bb4:	9ebe                	add	t4,t4,a5
   14bb6:	97ba                	add	a5,a5,a4
   14bb8:	cc3e                	sw	a5,24(sp)
   14bba:	d836                	sw	a3,48(sp)
   14bbc:	fd0ff06f          	j	1438c <__gdtoa+0x292>
   14bc0:	85e2                	mv	a1,s8
   14bc2:	866a                	mv	a2,s10
   14bc4:	8522                	mv	a0,s0
   14bc6:	ccc6                	sw	a7,88(sp)
   14bc8:	c4f6                	sw	t4,72(sp)
   14bca:	c0c2                	sw	a6,64(sp)
   14bcc:	4ed000ef          	jal	158b8 <__pow5mult>
   14bd0:	8c2a                	mv	s8,a0
   14bd2:	a60507e3          	beqz	a0,14640 <__gdtoa+0x546>
   14bd6:	85aa                	mv	a1,a0
   14bd8:	8666                	mv	a2,s9
   14bda:	8522                	mv	a0,s0
   14bdc:	347000ef          	jal	15722 <__multiply>
   14be0:	8aaa                	mv	s5,a0
   14be2:	a4050fe3          	beqz	a0,14640 <__gdtoa+0x546>
   14be6:	85e6                	mv	a1,s9
   14be8:	8522                	mv	a0,s0
   14bea:	03b000ef          	jal	15424 <_Bfree>
   14bee:	57c2                	lw	a5,48(sp)
   14bf0:	4806                	lw	a6,64(sp)
   14bf2:	4ea6                	lw	t4,72(sp)
   14bf4:	41a787b3          	sub	a5,a5,s10
   14bf8:	d83e                	sw	a5,48(sp)
   14bfa:	48e6                	lw	a7,88(sp)
   14bfc:	8cd6                	mv	s9,s5
   14bfe:	fe078963          	beqz	a5,143f0 <__gdtoa+0x2f6>
   14c02:	fd2ff06f          	j	143d4 <__gdtoa+0x2da>
   14c06:	89e2                	mv	s3,s8
   14c08:	86ee                	mv	a3,s11
   14c0a:	001d8913          	addi	s2,s11,1
   14c0e:	8c52                	mv	s8,s4
   14c10:	03900613          	li	a2,57
   14c14:	8dca                	mv	s11,s2
   14c16:	00c68023          	sb	a2,0(a3)
   14c1a:	03900593          	li	a1,57
   14c1e:	a019                	j	14c24 <__gdtoa+0xb2a>
   14c20:	13b88f63          	beq	a7,s11,14d5e <__gdtoa+0xc64>
   14c24:	fffdc683          	lbu	a3,-1(s11)
   14c28:	866e                	mv	a2,s11
   14c2a:	1dfd                	addi	s11,s11,-1
   14c2c:	feb68ae3          	beq	a3,a1,14c20 <__gdtoa+0xb26>
   14c30:	0685                	addi	a3,a3,1
   14c32:	00dd8023          	sb	a3,0(s11)
   14c36:	02000b13          	li	s6,32
   14c3a:	b3a9                	j	14984 <__gdtoa+0x88a>
   14c3c:	85e2                	mv	a1,s8
   14c3e:	8522                	mv	a0,s0
   14c40:	d446                	sw	a7,40(sp)
   14c42:	c842                	sw	a6,16(sp)
   14c44:	549000ef          	jal	1598c <__lshift>
   14c48:	4842                	lw	a6,16(sp)
   14c4a:	58a2                	lw	a7,40(sp)
   14c4c:	8c2a                	mv	s8,a0
   14c4e:	800512e3          	bnez	a0,14452 <__gdtoa+0x358>
   14c52:	b2fd                	j	14640 <__gdtoa+0x546>
   14c54:	4785                	li	a5,1
   14c56:	cc82                	sw	zero,88(sp)
   14c58:	c8be                	sw	a5,80(sp)
   14c5a:	e90ff06f          	j	142ea <__gdtoa+0x1f0>
   14c5e:	4785                	li	a5,1
   14c60:	c8be                	sw	a5,80(sp)
   14c62:	e88ff06f          	j	142ea <__gdtoa+0x1f0>
   14c66:	4785                	li	a5,1
   14c68:	c8be                	sw	a5,80(sp)
   14c6a:	b1f1                	j	14936 <__gdtoa+0x83c>
   14c6c:	c882                	sw	zero,80(sp)
   14c6e:	b1e1                	j	14936 <__gdtoa+0x83c>
   14c70:	ecdd92e3          	bne	s11,a3,14b34 <__gdtoa+0xa3a>
   14c74:	004a2783          	lw	a5,4(s4)
   14c78:	4742                	lw	a4,16(sp)
   14c7a:	0785                	addi	a5,a5,1
   14c7c:	eae7dce3          	bge	a5,a4,14b34 <__gdtoa+0xa3a>
   14c80:	47e2                	lw	a5,24(sp)
   14c82:	0e85                	addi	t4,t4,1
   14c84:	4b05                	li	s6,1
   14c86:	0785                	addi	a5,a5,1
   14c88:	cc3e                	sw	a5,24(sp)
   14c8a:	b56d                	j	14b34 <__gdtoa+0xa3a>
   14c8c:	004c2583          	lw	a1,4(s8)
   14c90:	8522                	mv	a0,s0
   14c92:	c846                	sw	a7,16(sp)
   14c94:	2715                	jal	153b8 <_Balloc>
   14c96:	8a2a                	mv	s4,a0
   14c98:	9a0504e3          	beqz	a0,14640 <__gdtoa+0x546>
   14c9c:	010c2603          	lw	a2,16(s8)
   14ca0:	00cc0593          	addi	a1,s8,12
   14ca4:	0531                	addi	a0,a0,12
   14ca6:	0609                	addi	a2,a2,2
   14ca8:	060a                	slli	a2,a2,0x2
   14caa:	ff7fb0ef          	jal	10ca0 <memcpy>
   14cae:	85d2                	mv	a1,s4
   14cb0:	4605                	li	a2,1
   14cb2:	8522                	mv	a0,s0
   14cb4:	4d9000ef          	jal	1598c <__lshift>
   14cb8:	48c2                	lw	a7,16(sp)
   14cba:	8a2a                	mv	s4,a0
   14cbc:	f8051e63          	bnez	a0,14458 <__gdtoa+0x35e>
   14cc0:	b241                	j	14640 <__gdtoa+0x546>
   14cc2:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   14cc6:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14cca:	3682                	fld	fa3,32(sp)
   14ccc:	fcc00637          	lui	a2,0xfcc00
   14cd0:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14cd4:	bc3e                	fsd	fa5,56(sp)
   14cd6:	5562                	lw	a0,56(sp)
   14cd8:	55f2                	lw	a1,60(sp)
   14cda:	832a                	mv	t1,a0
   14cdc:	962e                	add	a2,a2,a1
   14cde:	de32                	sw	a2,60(sp)
   14ce0:	f001b707          	fld	fa4,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   14ce4:	3782                	fld	fa5,32(sp)
   14ce6:	dc1a                	sw	t1,56(sp)
   14ce8:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14cec:	37e2                	fld	fa5,56(sp)
   14cee:	a2e79653          	flt.d	a2,fa5,fa4
   14cf2:	1e061663          	bnez	a2,14ede <__gdtoa+0xde4>
   14cf6:	22f797d3          	fneg.d	fa5,fa5
   14cfa:	a2f71653          	flt.d	a2,fa4,fa5
   14cfe:	e8061ae3          	bnez	a2,14b92 <__gdtoa+0xa98>
   14d02:	5f02                	lw	t5,32(sp)
   14d04:	5f92                	lw	t6,36(sp)
   14d06:	65e9                	lui	a1,0x1a
   14d08:	280c4b63          	bltz	s8,14f9e <__gdtoa+0xea4>
   14d0c:	57a2                	lw	a5,40(sp)
   14d0e:	d002                	sw	zero,32(sp)
   14d10:	6005b707          	fld	fa4,1536(a1) # 1a600 <__mprec_tens>
   14d14:	b407d0e3          	bgez	a5,14854 <__gdtoa+0x75a>
   14d18:	57b2                	lw	a5,44(sp)
   14d1a:	b2079de3          	bnez	a5,14854 <__gdtoa+0x75a>
   14d1e:	bdb9                	j	14b7c <__gdtoa+0xa82>
   14d20:	85e6                	mv	a1,s9
   14d22:	4605                	li	a2,1
   14d24:	8522                	mv	a0,s0
   14d26:	c846                	sw	a7,16(sp)
   14d28:	d41a                	sw	t1,40(sp)
   14d2a:	463000ef          	jal	1598c <__lshift>
   14d2e:	8caa                	mv	s9,a0
   14d30:	900508e3          	beqz	a0,14640 <__gdtoa+0x546>
   14d34:	85ea                	mv	a1,s10
   14d36:	565000ef          	jal	15a9a <__mcmp>
   14d3a:	48c2                	lw	a7,16(sp)
   14d3c:	eca04fe3          	bgtz	a0,14c1a <__gdtoa+0xb20>
   14d40:	e511                	bnez	a0,14d4c <__gdtoa+0xc52>
   14d42:	5322                	lw	t1,40(sp)
   14d44:	00137313          	andi	t1,t1,1
   14d48:	ec0319e3          	bnez	t1,14c1a <__gdtoa+0xb20>
   14d4c:	010ca603          	lw	a2,16(s9)
   14d50:	4685                	li	a3,1
   14d52:	4b41                	li	s6,16
   14d54:	d2c6c6e3          	blt	a3,a2,14a80 <__gdtoa+0x986>
   14d58:	014ca683          	lw	a3,20(s9)
   14d5c:	bb31                	j	14a78 <__gdtoa+0x97e>
   14d5e:	57d2                	lw	a5,52(sp)
   14d60:	02000b13          	li	s6,32
   14d64:	0785                	addi	a5,a5,1
   14d66:	da3e                	sw	a5,52(sp)
   14d68:	03100793          	li	a5,49
   14d6c:	00f88023          	sb	a5,0(a7)
   14d70:	b911                	j	14984 <__gdtoa+0x88a>
   14d72:	5782                	lw	a5,32(sp)
   14d74:	8926                	mv	s2,s1
   14d76:	835e                	mv	t1,s7
   14d78:	58a2                	lw	a7,40(sp)
   14d7a:	4be2                	lw	s7,24(sp)
   14d7c:	54b2                	lw	s1,44(sp)
   14d7e:	cb91                	beqz	a5,14d92 <__gdtoa+0xc98>
   14d80:	010ca603          	lw	a2,16(s9)
   14d84:	4685                	li	a3,1
   14d86:	fcc6c163          	blt	a3,a2,14548 <__gdtoa+0x44e>
   14d8a:	014ca683          	lw	a3,20(s9)
   14d8e:	fa069d63          	bnez	a3,14548 <__gdtoa+0x44e>
   14d92:	85e6                	mv	a1,s9
   14d94:	4605                	li	a2,1
   14d96:	8522                	mv	a0,s0
   14d98:	d446                	sw	a7,40(sp)
   14d9a:	c81a                	sw	t1,16(sp)
   14d9c:	3f1000ef          	jal	1598c <__lshift>
   14da0:	8caa                	mv	s9,a0
   14da2:	88050fe3          	beqz	a0,14640 <__gdtoa+0x546>
   14da6:	85ea                	mv	a1,s10
   14da8:	4f3000ef          	jal	15a9a <__mcmp>
   14dac:	4342                	lw	t1,16(sp)
   14dae:	58a2                	lw	a7,40(sp)
   14db0:	22a05e63          	blez	a0,14fec <__gdtoa+0xef2>
   14db4:	03900693          	li	a3,57
   14db8:	e4d307e3          	beq	t1,a3,14c06 <__gdtoa+0xb0c>
   14dbc:	02000793          	li	a5,32
   14dc0:	03190313          	addi	t1,s2,49
   14dc4:	d03e                	sw	a5,32(sp)
   14dc6:	b655                	j	1496a <__gdtoa+0x870>
   14dc8:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   14dcc:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   14dd0:	a2f715d3          	flt.d	a1,fa4,fa5
   14dd4:	9e059ae3          	bnez	a1,147c8 <__gdtoa+0x6ce>
   14dd8:	a2e7a5d3          	feq.d	a1,fa5,fa4
   14ddc:	c581                	beqz	a1,14de4 <__gdtoa+0xcea>
   14dde:	8b85                	andi	a5,a5,1
   14de0:	9e0794e3          	bnez	a5,147c8 <__gdtoa+0x6ce>
   14de4:	87b2                	mv	a5,a2
   14de6:	4b41                	li	s6,16
   14de8:	03000593          	li	a1,48
   14dec:	fff7c703          	lbu	a4,-1(a5)
   14df0:	863e                	mv	a2,a5
   14df2:	17fd                	addi	a5,a5,-1
   14df4:	feb70ce3          	beq	a4,a1,14dec <__gdtoa+0xcf2>
   14df8:	892a                	mv	s2,a0
   14dfa:	bcf9                	j	148d8 <__gdtoa+0x7de>
   14dfc:	03100693          	li	a3,49
   14e00:	0505                	addi	a0,a0,1
   14e02:	b2d5                	j	147e6 <__gdtoa+0x6ec>
   14e04:	de32                	sw	a2,60(sp)
   14e06:	dc1a                	sw	t1,56(sp)
   14e08:	3762                	fld	fa4,56(sp)
   14e0a:	de7e                	sw	t6,60(sp)
   14e0c:	dc7a                	sw	t5,56(sp)
   14e0e:	35e2                	fld	fa1,56(sp)
   14e10:	12e7f653          	fmul.d	fa2,fa5,fa4
   14e14:	ee01b707          	fld	fa4,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14e18:	4685                	li	a3,1
   14e1a:	22b587d3          	fmv.d	fa5,fa1
   14e1e:	d6b6                	sw	a3,108(sp)
   14e20:	8646                	mv	a2,a7
   14e22:	4f81                	li	t6,0
   14e24:	a029                	j	14e2e <__gdtoa+0xd34>
   14e26:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14e2a:	d6ba                	sw	a4,108(sp)
   14e2c:	4f85                	li	t6,1
   14e2e:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14e32:	0605                	addi	a2,a2,1
   14e34:	03078693          	addi	a3,a5,48
   14e38:	0ff6f693          	zext.b	a3,a3
   14e3c:	c791                	beqz	a5,14e48 <__gdtoa+0xd4e>
   14e3e:	d20786d3          	fcvt.d.w	fa3,a5
   14e42:	4f85                	li	t6,1
   14e44:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   14e48:	fed60fa3          	sb	a3,-1(a2)
   14e4c:	57b6                	lw	a5,108(sp)
   14e4e:	00178713          	addi	a4,a5,1
   14e52:	fca79ae3          	bne	a5,a0,14e26 <__gdtoa+0xd2c>
   14e56:	000f8463          	beqz	t6,14e5e <__gdtoa+0xd64>
   14e5a:	22f785d3          	fmv.d	fa1,fa5
   14e5e:	f081b787          	fld	fa5,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   14e62:	02f67753          	fadd.d	fa4,fa2,fa5
   14e66:	a2b71553          	flt.d	a0,fa4,fa1
   14e6a:	0e051f63          	bnez	a0,14f68 <__gdtoa+0xe6e>
   14e6e:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   14e72:	a2f596d3          	flt.d	a3,fa1,fa5
   14e76:	12069763          	bnez	a3,14fa4 <__gdtoa+0xeaa>
   14e7a:	5f02                	lw	t5,32(sp)
   14e7c:	5f92                	lw	t6,36(sp)
   14e7e:	e80c57e3          	bgez	s8,14d0c <__gdtoa+0xc12>
   14e82:	47e2                	lw	a5,24(sp)
   14e84:	5d42                	lw	s10,48(sp)
   14e86:	d002                	sw	zero,32(sp)
   14e88:	dc3e                	sw	a5,56(sp)
   14e8a:	4c01                	li	s8,0
   14e8c:	d1aff06f          	j	143a6 <__gdtoa+0x2ac>
   14e90:	835e                	mv	t1,s7
   14e92:	89e2                	mv	s3,s8
   14e94:	58a2                	lw	a7,40(sp)
   14e96:	4be2                	lw	s7,24(sp)
   14e98:	54b2                	lw	s1,44(sp)
   14e9a:	8c52                	mv	s8,s4
   14e9c:	be7d                	j	14a5a <__gdtoa+0x960>
   14e9e:	e20782e3          	beqz	a5,14cc2 <__gdtoa+0xbc8>
   14ea2:	4576                	lw	a0,92(sp)
   14ea4:	e4a05fe3          	blez	a0,14d02 <__gdtoa+0xc08>
   14ea8:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14eac:	53fd                	li	t2,-1
   14eae:	12f777d3          	fmul.d	fa5,fa4,fa5
   14eb2:	ee81b707          	fld	fa4,-280(gp) # 1b6f8 <__SDATA_BEGIN__+0x40>
   14eb6:	bc3e                	fsd	fa5,56(sp)
   14eb8:	36e2                	fld	fa3,56(sp)
   14eba:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14ebe:	fcc00637          	lui	a2,0xfcc00
   14ec2:	5f62                	lw	t5,56(sp)
   14ec4:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14ec8:	5ff2                	lw	t6,60(sp)
   14eca:	a0be                	fsd	fa5,64(sp)
   14ecc:	4706                	lw	a4,64(sp)
   14ece:	4796                	lw	a5,68(sp)
   14ed0:	833a                	mv	t1,a4
   14ed2:	963e                	add	a2,a2,a5
   14ed4:	857ff06f          	j	1472a <__gdtoa+0x630>
   14ed8:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   14edc:	b0f5                	j	147c8 <__gdtoa+0x6ce>
   14ede:	4909                	li	s2,2
   14ee0:	4581                	li	a1,0
   14ee2:	4c01                	li	s8,0
   14ee4:	b119                	j	14aea <__gdtoa+0x9f0>
   14ee6:	4762                	lw	a4,24(sp)
   14ee8:	d6be                	sw	a5,108(sp)
   14eea:	9ebe                	add	t4,t4,a5
   14eec:	97ba                	add	a5,a5,a4
   14eee:	dc3a                	sw	a4,56(sp)
   14ef0:	cc3e                	sw	a5,24(sp)
   14ef2:	c9aff06f          	j	1438c <__gdtoa+0x292>
   14ef6:	835e                	mv	t1,s7
   14ef8:	03900693          	li	a3,57
   14efc:	58a2                	lw	a7,40(sp)
   14efe:	4be2                	lw	s7,24(sp)
   14f00:	54b2                	lw	s1,44(sp)
   14f02:	d0d302e3          	beq	t1,a3,14c06 <__gdtoa+0xb0c>
   14f06:	0305                	addi	t1,t1,1
   14f08:	89e2                	mv	s3,s8
   14f0a:	001d8613          	addi	a2,s11,1
   14f0e:	006d8023          	sb	t1,0(s11)
   14f12:	8c52                	mv	s8,s4
   14f14:	02000b13          	li	s6,32
   14f18:	b4b5                	j	14984 <__gdtoa+0x88a>
   14f1a:	57d2                	lw	a5,52(sp)
   14f1c:	4581                	li	a1,0
   14f1e:	4c01                	li	s8,0
   14f20:	00278913          	addi	s2,a5,2
   14f24:	b6d9                	j	14aea <__gdtoa+0x9f0>
   14f26:	85e2                	mv	a1,s8
   14f28:	4681                	li	a3,0
   14f2a:	4629                	li	a2,10
   14f2c:	8522                	mv	a0,s0
   14f2e:	2321                	jal	15436 <__multadd>
   14f30:	8c2a                	mv	s8,a0
   14f32:	f0050763          	beqz	a0,14640 <__gdtoa+0x546>
   14f36:	47f6                	lw	a5,92(sp)
   14f38:	4842                	lw	a6,16(sp)
   14f3a:	48e2                	lw	a7,24(sp)
   14f3c:	00f05563          	blez	a5,14f46 <__gdtoa+0xe4c>
   14f40:	d63e                	sw	a5,44(sp)
   14f42:	d06ff06f          	j	14448 <__gdtoa+0x34e>
   14f46:	4789                	li	a5,2
   14f48:	0927cf63          	blt	a5,s2,14fe6 <__gdtoa+0xeec>
   14f4c:	47f6                	lw	a5,92(sp)
   14f4e:	d63e                	sw	a5,44(sp)
   14f50:	cf8ff06f          	j	14448 <__gdtoa+0x34e>
   14f54:	d2000753          	fcvt.d.w	fa4,zero
   14f58:	00138913          	addi	s2,t2,1
   14f5c:	a2e7ab53          	feq.d	s6,fa5,fa4
   14f60:	001b3b13          	seqz	s6,s6
   14f64:	0b12                	slli	s6,s6,0x4
   14f66:	ba8d                	j	148d8 <__gdtoa+0x7de>
   14f68:	00138513          	addi	a0,t2,1
   14f6c:	85dff06f          	j	147c8 <__gdtoa+0x6ce>
   14f70:	5f02                	lw	t5,32(sp)
   14f72:	5f92                	lw	t6,36(sp)
   14f74:	d80c5ce3          	bgez	s8,14d0c <__gdtoa+0xc12>
   14f78:	d002                	sw	zero,32(sp)
   14f7a:	bccff06f          	j	14346 <__gdtoa+0x24c>
   14f7e:	57b2                	lw	a5,44(sp)
   14f80:	5742                	lw	a4,48(sp)
   14f82:	fff78693          	addi	a3,a5,-1
   14f86:	c0d74ee3          	blt	a4,a3,14ba2 <__gdtoa+0xaa8>
   14f8a:	4662                	lw	a2,24(sp)
   14f8c:	9ebe                	add	t4,t4,a5
   14f8e:	d6be                	sw	a5,108(sp)
   14f90:	97b2                	add	a5,a5,a2
   14f92:	dc32                	sw	a2,56(sp)
   14f94:	40d70d33          	sub	s10,a4,a3
   14f98:	cc3e                	sw	a5,24(sp)
   14f9a:	bf2ff06f          	j	1438c <__gdtoa+0x292>
   14f9e:	d002                	sw	zero,32(sp)
   14fa0:	ba0ff06f          	j	14340 <__gdtoa+0x246>
   14fa4:	d20007d3          	fcvt.d.w	fa5,zero
   14fa8:	87b2                	mv	a5,a2
   14faa:	00138513          	addi	a0,t2,1
   14fae:	a2f5ab53          	feq.d	s6,fa1,fa5
   14fb2:	001b3b13          	seqz	s6,s6
   14fb6:	0b12                	slli	s6,s6,0x4
   14fb8:	bd05                	j	14de8 <__gdtoa+0xcee>
   14fba:	835e                	mv	t1,s7
   14fbc:	03900693          	li	a3,57
   14fc0:	8926                	mv	s2,s1
   14fc2:	58a2                	lw	a7,40(sp)
   14fc4:	4be2                	lw	s7,24(sp)
   14fc6:	54b2                	lw	s1,44(sp)
   14fc8:	c2d30fe3          	beq	t1,a3,14c06 <__gdtoa+0xb0c>
   14fcc:	07505d63          	blez	s5,15046 <__gdtoa+0xf4c>
   14fd0:	03190313          	addi	t1,s2,49
   14fd4:	02000b13          	li	s6,32
   14fd8:	89e2                	mv	s3,s8
   14fda:	001d8613          	addi	a2,s11,1
   14fde:	006d8023          	sb	t1,0(s11)
   14fe2:	8c52                	mv	s8,s4
   14fe4:	b245                	j	14984 <__gdtoa+0x88a>
   14fe6:	47f6                	lw	a5,92(sp)
   14fe8:	d63e                	sw	a5,44(sp)
   14fea:	b4f9                	j	14ab8 <__gdtoa+0x9be>
   14fec:	e509                	bnez	a0,14ff6 <__gdtoa+0xefc>
   14fee:	00137693          	andi	a3,t1,1
   14ff2:	dc0691e3          	bnez	a3,14db4 <__gdtoa+0xcba>
   14ff6:	02000793          	li	a5,32
   14ffa:	d03e                	sw	a5,32(sp)
   14ffc:	b2bd                	j	1496a <__gdtoa+0x870>
   14ffe:	014ca683          	lw	a3,20(s9)
   15002:	96069ce3          	bnez	a3,1497a <__gdtoa+0x880>
   15006:	5b02                	lw	s6,32(sp)
   15008:	ba8d                	j	1497a <__gdtoa+0x880>
   1500a:	03900693          	li	a3,57
   1500e:	88da                	mv	a7,s6
   15010:	00da8b63          	beq	s5,a3,15026 <__gdtoa+0xf2c>
   15014:	001a8313          	addi	t1,s5,1
   15018:	02000b13          	li	s6,32
   1501c:	bab9                	j	1497a <__gdtoa+0x880>
   1501e:	4b41                	li	s6,16
   15020:	001d8913          	addi	s2,s11,1
   15024:	ba99                	j	1497a <__gdtoa+0x880>
   15026:	89e2                	mv	s3,s8
   15028:	86ee                	mv	a3,s11
   1502a:	8c52                	mv	s8,s4
   1502c:	b6d5                	j	14c10 <__gdtoa+0xb16>
   1502e:	010ca603          	lw	a2,16(s9)
   15032:	4685                	li	a3,1
   15034:	d0c6ca63          	blt	a3,a2,14548 <__gdtoa+0x44e>
   15038:	014ca683          	lw	a3,20(s9)
   1503c:	d0069663          	bnez	a3,14548 <__gdtoa+0x44e>
   15040:	001d8913          	addi	s2,s11,1
   15044:	ba1d                	j	1497a <__gdtoa+0x880>
   15046:	010ca603          	lw	a2,16(s9)
   1504a:	4685                	li	a3,1
   1504c:	4b41                	li	s6,16
   1504e:	f8c6c5e3          	blt	a3,a2,14fd8 <__gdtoa+0xede>
   15052:	014cab03          	lw	s6,20(s9)
   15056:	01603b33          	snez	s6,s6
   1505a:	0b12                	slli	s6,s6,0x4
   1505c:	bfb5                	j	14fd8 <__gdtoa+0xede>
   1505e:	000ace63          	bltz	s5,1507a <__gdtoa+0xf80>
   15062:	01596ab3          	or	s5,s2,s5
   15066:	000a9663          	bnez	s5,15072 <__gdtoa+0xf78>
   1506a:	0009a783          	lw	a5,0(s3)
   1506e:	8b85                	andi	a5,a5,1
   15070:	c789                	beqz	a5,1507a <__gdtoa+0xf80>
   15072:	c0d05c63          	blez	a3,1448a <__gdtoa+0x390>
   15076:	c0cff06f          	j	14482 <__gdtoa+0x388>
   1507a:	5782                	lw	a5,32(sp)
   1507c:	8926                	mv	s2,s1
   1507e:	835e                	mv	t1,s7
   15080:	58a2                	lw	a7,40(sp)
   15082:	4be2                	lw	s7,24(sp)
   15084:	54b2                	lw	s1,44(sp)
   15086:	c385                	beqz	a5,150a6 <__gdtoa+0xfac>
   15088:	010ca583          	lw	a1,16(s9)
   1508c:	4605                	li	a2,1
   1508e:	cab64d63          	blt	a2,a1,14548 <__gdtoa+0x44e>
   15092:	014ca603          	lw	a2,20(s9)
   15096:	ca061963          	bnez	a2,14548 <__gdtoa+0x44e>
   1509a:	ced04ce3          	bgtz	a3,14d92 <__gdtoa+0xc98>
   1509e:	4b01                	li	s6,0
   150a0:	001d8913          	addi	s2,s11,1
   150a4:	b8d9                	j	1497a <__gdtoa+0x880>
   150a6:	8cd052e3          	blez	a3,1496a <__gdtoa+0x870>
   150aa:	b1e5                	j	14d92 <__gdtoa+0xc98>

000150ac <__rv_alloc_D2A.part.0>:
   150ac:	66e9                	lui	a3,0x1a
   150ae:	6569                	lui	a0,0x1a
   150b0:	1141                	addi	sp,sp,-16
   150b2:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   150b6:	4601                	li	a2,0
   150b8:	03900593          	li	a1,57
   150bc:	14050513          	addi	a0,a0,320 # 1a140 <__clzsi2+0x12e>
   150c0:	c606                	sw	ra,12(sp)
   150c2:	692010ef          	jal	16754 <__assert_func>

000150c6 <__rv_alloc_D2A>:
   150c6:	1141                	addi	sp,sp,-16
   150c8:	c422                	sw	s0,8(sp)
   150ca:	c606                	sw	ra,12(sp)
   150cc:	46dd                	li	a3,23
   150ce:	842a                	mv	s0,a0
   150d0:	4705                	li	a4,1
   150d2:	4791                	li	a5,4
   150d4:	02b6f363          	bgeu	a3,a1,150fa <__rv_alloc_D2A+0x34>
   150d8:	0786                	slli	a5,a5,0x1
   150da:	01478693          	addi	a3,a5,20
   150de:	863a                	mv	a2,a4
   150e0:	0705                	addi	a4,a4,1
   150e2:	fed5fbe3          	bgeu	a1,a3,150d8 <__rv_alloc_D2A+0x12>
   150e6:	85b2                	mv	a1,a2
   150e8:	dc50                	sw	a2,60(s0)
   150ea:	8522                	mv	a0,s0
   150ec:	24f1                	jal	153b8 <_Balloc>
   150ee:	c911                	beqz	a0,15102 <__rv_alloc_D2A+0x3c>
   150f0:	40b2                	lw	ra,12(sp)
   150f2:	dc08                	sw	a0,56(s0)
   150f4:	4422                	lw	s0,8(sp)
   150f6:	0141                	addi	sp,sp,16
   150f8:	8082                	ret
   150fa:	02052e23          	sw	zero,60(a0)
   150fe:	4581                	li	a1,0
   15100:	b7ed                	j	150ea <__rv_alloc_D2A+0x24>
   15102:	376d                	jal	150ac <__rv_alloc_D2A.part.0>

00015104 <__nrv_alloc_D2A>:
   15104:	1141                	addi	sp,sp,-16
   15106:	c422                	sw	s0,8(sp)
   15108:	c226                	sw	s1,4(sp)
   1510a:	c04a                	sw	s2,0(sp)
   1510c:	c606                	sw	ra,12(sp)
   1510e:	485d                	li	a6,23
   15110:	84aa                	mv	s1,a0
   15112:	842e                	mv	s0,a1
   15114:	8932                	mv	s2,a2
   15116:	4705                	li	a4,1
   15118:	4791                	li	a5,4
   1511a:	04d87763          	bgeu	a6,a3,15168 <__nrv_alloc_D2A+0x64>
   1511e:	0786                	slli	a5,a5,0x1
   15120:	01478813          	addi	a6,a5,20
   15124:	85ba                	mv	a1,a4
   15126:	0705                	addi	a4,a4,1
   15128:	ff06fbe3          	bgeu	a3,a6,1511e <__nrv_alloc_D2A+0x1a>
   1512c:	dccc                	sw	a1,60(s1)
   1512e:	8526                	mv	a0,s1
   15130:	2461                	jal	153b8 <_Balloc>
   15132:	c129                	beqz	a0,15174 <__nrv_alloc_D2A+0x70>
   15134:	dc88                	sw	a0,56(s1)
   15136:	00044783          	lbu	a5,0(s0)
   1513a:	00140593          	addi	a1,s0,1
   1513e:	00f50023          	sb	a5,0(a0)
   15142:	c79d                	beqz	a5,15170 <__nrv_alloc_D2A+0x6c>
   15144:	87aa                	mv	a5,a0
   15146:	0005c703          	lbu	a4,0(a1)
   1514a:	0785                	addi	a5,a5,1
   1514c:	0585                	addi	a1,a1,1
   1514e:	00e78023          	sb	a4,0(a5)
   15152:	fb75                	bnez	a4,15146 <__nrv_alloc_D2A+0x42>
   15154:	00090463          	beqz	s2,1515c <__nrv_alloc_D2A+0x58>
   15158:	00f92023          	sw	a5,0(s2)
   1515c:	40b2                	lw	ra,12(sp)
   1515e:	4422                	lw	s0,8(sp)
   15160:	4492                	lw	s1,4(sp)
   15162:	4902                	lw	s2,0(sp)
   15164:	0141                	addi	sp,sp,16
   15166:	8082                	ret
   15168:	02052e23          	sw	zero,60(a0)
   1516c:	4581                	li	a1,0
   1516e:	b7c1                	j	1512e <__nrv_alloc_D2A+0x2a>
   15170:	87aa                	mv	a5,a0
   15172:	b7cd                	j	15154 <__nrv_alloc_D2A+0x50>
   15174:	3f25                	jal	150ac <__rv_alloc_D2A.part.0>

00015176 <__freedtoa>:
   15176:	5d54                	lw	a3,60(a0)
   15178:	4705                	li	a4,1
   1517a:	00d71733          	sll	a4,a4,a3
   1517e:	c1d4                	sw	a3,4(a1)
   15180:	c598                	sw	a4,8(a1)
   15182:	a44d                	j	15424 <_Bfree>

00015184 <__quorem_D2A>:
   15184:	1101                	addi	sp,sp,-32
   15186:	ca26                	sw	s1,20(sp)
   15188:	491c                	lw	a5,16(a0)
   1518a:	4984                	lw	s1,16(a1)
   1518c:	ce06                	sw	ra,28(sp)
   1518e:	1497c163          	blt	a5,s1,152d0 <__quorem_D2A+0x14c>
   15192:	14fd                	addi	s1,s1,-1
   15194:	00249313          	slli	t1,s1,0x2
   15198:	cc22                	sw	s0,24(sp)
   1519a:	01458413          	addi	s0,a1,20
   1519e:	c64e                	sw	s3,12(sp)
   151a0:	c452                	sw	s4,8(sp)
   151a2:	006409b3          	add	s3,s0,t1
   151a6:	01450a13          	addi	s4,a0,20
   151aa:	0009a783          	lw	a5,0(s3)
   151ae:	9352                	add	t1,t1,s4
   151b0:	00032703          	lw	a4,0(t1)
   151b4:	c84a                	sw	s2,16(sp)
   151b6:	c256                	sw	s5,4(sp)
   151b8:	0785                	addi	a5,a5,1
   151ba:	02f75933          	divu	s2,a4,a5
   151be:	8aaa                	mv	s5,a0
   151c0:	08f76663          	bltu	a4,a5,1524c <__quorem_D2A+0xc8>
   151c4:	6541                	lui	a0,0x10
   151c6:	88a2                	mv	a7,s0
   151c8:	8852                	mv	a6,s4
   151ca:	4f01                	li	t5,0
   151cc:	4e81                	li	t4,0
   151ce:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   151d0:	0008a783          	lw	a5,0(a7)
   151d4:	00082603          	lw	a2,0(a6)
   151d8:	0811                	addi	a6,a6,4
   151da:	00a7f6b3          	and	a3,a5,a0
   151de:	83c1                	srli	a5,a5,0x10
   151e0:	00a67733          	and	a4,a2,a0
   151e4:	01065e13          	srli	t3,a2,0x10
   151e8:	0891                	addi	a7,a7,4
   151ea:	032686b3          	mul	a3,a3,s2
   151ee:	032787b3          	mul	a5,a5,s2
   151f2:	96fa                	add	a3,a3,t5
   151f4:	00a6f633          	and	a2,a3,a0
   151f8:	8f11                	sub	a4,a4,a2
   151fa:	41d70733          	sub	a4,a4,t4
   151fe:	82c1                	srli	a3,a3,0x10
   15200:	01075613          	srli	a2,a4,0x10
   15204:	8a05                	andi	a2,a2,1
   15206:	8f69                	and	a4,a4,a0
   15208:	97b6                	add	a5,a5,a3
   1520a:	00a7f6b3          	and	a3,a5,a0
   1520e:	9636                	add	a2,a2,a3
   15210:	40ce06b3          	sub	a3,t3,a2
   15214:	01069613          	slli	a2,a3,0x10
   15218:	8f51                	or	a4,a4,a2
   1521a:	82c1                	srli	a3,a3,0x10
   1521c:	fee82e23          	sw	a4,-4(a6)
   15220:	0107df13          	srli	t5,a5,0x10
   15224:	0016fe93          	andi	t4,a3,1
   15228:	fb19f4e3          	bgeu	s3,a7,151d0 <__quorem_D2A+0x4c>
   1522c:	00032783          	lw	a5,0(t1)
   15230:	ef91                	bnez	a5,1524c <__quorem_D2A+0xc8>
   15232:	1371                	addi	t1,t1,-4
   15234:	006a6663          	bltu	s4,t1,15240 <__quorem_D2A+0xbc>
   15238:	a801                	j	15248 <__quorem_D2A+0xc4>
   1523a:	14fd                	addi	s1,s1,-1
   1523c:	006a7663          	bgeu	s4,t1,15248 <__quorem_D2A+0xc4>
   15240:	00032783          	lw	a5,0(t1)
   15244:	1371                	addi	t1,t1,-4
   15246:	dbf5                	beqz	a5,1523a <__quorem_D2A+0xb6>
   15248:	009aa823          	sw	s1,16(s5)
   1524c:	8556                	mv	a0,s5
   1524e:	04d000ef          	jal	15a9a <__mcmp>
   15252:	06054563          	bltz	a0,152bc <__quorem_D2A+0x138>
   15256:	6541                	lui	a0,0x10
   15258:	85d2                	mv	a1,s4
   1525a:	4681                	li	a3,0
   1525c:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   1525e:	419c                	lw	a5,0(a1)
   15260:	4010                	lw	a2,0(s0)
   15262:	0591                	addi	a1,a1,4
   15264:	00a7f733          	and	a4,a5,a0
   15268:	00a67833          	and	a6,a2,a0
   1526c:	41070733          	sub	a4,a4,a6
   15270:	8f15                	sub	a4,a4,a3
   15272:	01075693          	srli	a3,a4,0x10
   15276:	8a85                	andi	a3,a3,1
   15278:	8241                	srli	a2,a2,0x10
   1527a:	96b2                	add	a3,a3,a2
   1527c:	83c1                	srli	a5,a5,0x10
   1527e:	8f95                	sub	a5,a5,a3
   15280:	01079693          	slli	a3,a5,0x10
   15284:	8f69                	and	a4,a4,a0
   15286:	8f55                	or	a4,a4,a3
   15288:	83c1                	srli	a5,a5,0x10
   1528a:	0411                	addi	s0,s0,4
   1528c:	fee5ae23          	sw	a4,-4(a1)
   15290:	0017f693          	andi	a3,a5,1
   15294:	fc89f5e3          	bgeu	s3,s0,1525e <__quorem_D2A+0xda>
   15298:	00249793          	slli	a5,s1,0x2
   1529c:	97d2                	add	a5,a5,s4
   1529e:	4398                	lw	a4,0(a5)
   152a0:	ef09                	bnez	a4,152ba <__quorem_D2A+0x136>
   152a2:	17f1                	addi	a5,a5,-4
   152a4:	00fa6663          	bltu	s4,a5,152b0 <__quorem_D2A+0x12c>
   152a8:	a039                	j	152b6 <__quorem_D2A+0x132>
   152aa:	14fd                	addi	s1,s1,-1
   152ac:	00fa7563          	bgeu	s4,a5,152b6 <__quorem_D2A+0x132>
   152b0:	4398                	lw	a4,0(a5)
   152b2:	17f1                	addi	a5,a5,-4
   152b4:	db7d                	beqz	a4,152aa <__quorem_D2A+0x126>
   152b6:	009aa823          	sw	s1,16(s5)
   152ba:	0905                	addi	s2,s2,1
   152bc:	4462                	lw	s0,24(sp)
   152be:	40f2                	lw	ra,28(sp)
   152c0:	49b2                	lw	s3,12(sp)
   152c2:	4a22                	lw	s4,8(sp)
   152c4:	4a92                	lw	s5,4(sp)
   152c6:	44d2                	lw	s1,20(sp)
   152c8:	854a                	mv	a0,s2
   152ca:	4942                	lw	s2,16(sp)
   152cc:	6105                	addi	sp,sp,32
   152ce:	8082                	ret
   152d0:	40f2                	lw	ra,28(sp)
   152d2:	44d2                	lw	s1,20(sp)
   152d4:	4501                	li	a0,0
   152d6:	6105                	addi	sp,sp,32
   152d8:	8082                	ret

000152da <__rshift_D2A>:
   152da:	01052803          	lw	a6,16(a0)
   152de:	4055de13          	srai	t3,a1,0x5
   152e2:	010e4763          	blt	t3,a6,152f0 <__rshift_D2A+0x16>
   152e6:	00052823          	sw	zero,16(a0)
   152ea:	00052a23          	sw	zero,20(a0)
   152ee:	8082                	ret
   152f0:	01450313          	addi	t1,a0,20
   152f4:	00281613          	slli	a2,a6,0x2
   152f8:	002e1793          	slli	a5,t3,0x2
   152fc:	89fd                	andi	a1,a1,31
   152fe:	961a                	add	a2,a2,t1
   15300:	979a                	add	a5,a5,t1
   15302:	c5a1                	beqz	a1,1534a <__rshift_D2A+0x70>
   15304:	4394                	lw	a3,0(a5)
   15306:	02000e93          	li	t4,32
   1530a:	0791                	addi	a5,a5,4
   1530c:	40be8eb3          	sub	t4,t4,a1
   15310:	00b6d6b3          	srl	a3,a3,a1
   15314:	06c7f063          	bgeu	a5,a2,15374 <__rshift_D2A+0x9a>
   15318:	889a                	mv	a7,t1
   1531a:	4398                	lw	a4,0(a5)
   1531c:	0891                	addi	a7,a7,4
   1531e:	0791                	addi	a5,a5,4
   15320:	01d71733          	sll	a4,a4,t4
   15324:	8f55                	or	a4,a4,a3
   15326:	fee8ae23          	sw	a4,-4(a7)
   1532a:	ffc7a683          	lw	a3,-4(a5)
   1532e:	00b6d6b3          	srl	a3,a3,a1
   15332:	fec7e4e3          	bltu	a5,a2,1531a <__rshift_D2A+0x40>
   15336:	41c80833          	sub	a6,a6,t3
   1533a:	080a                	slli	a6,a6,0x2
   1533c:	1871                	addi	a6,a6,-4
   1533e:	981a                	add	a6,a6,t1
   15340:	00d82023          	sw	a3,0(a6)
   15344:	c28d                	beqz	a3,15366 <__rshift_D2A+0x8c>
   15346:	0811                	addi	a6,a6,4
   15348:	a839                	j	15366 <__rshift_D2A+0x8c>
   1534a:	871a                	mv	a4,t1
   1534c:	f8c7fde3          	bgeu	a5,a2,152e6 <__rshift_D2A+0xc>
   15350:	4394                	lw	a3,0(a5)
   15352:	0791                	addi	a5,a5,4
   15354:	0711                	addi	a4,a4,4
   15356:	fed72e23          	sw	a3,-4(a4)
   1535a:	fec7ebe3          	bltu	a5,a2,15350 <__rshift_D2A+0x76>
   1535e:	41c80833          	sub	a6,a6,t3
   15362:	080a                	slli	a6,a6,0x2
   15364:	981a                	add	a6,a6,t1
   15366:	406807b3          	sub	a5,a6,t1
   1536a:	8789                	srai	a5,a5,0x2
   1536c:	c91c                	sw	a5,16(a0)
   1536e:	f6680ee3          	beq	a6,t1,152ea <__rshift_D2A+0x10>
   15372:	8082                	ret
   15374:	c954                	sw	a3,20(a0)
   15376:	daa5                	beqz	a3,152e6 <__rshift_D2A+0xc>
   15378:	881a                	mv	a6,t1
   1537a:	0811                	addi	a6,a6,4
   1537c:	b7ed                	j	15366 <__rshift_D2A+0x8c>

0001537e <__trailz_D2A>:
   1537e:	4918                	lw	a4,16(a0)
   15380:	1101                	addi	sp,sp,-32
   15382:	0551                	addi	a0,a0,20
   15384:	070a                	slli	a4,a4,0x2
   15386:	cc22                	sw	s0,24(sp)
   15388:	ce06                	sw	ra,28(sp)
   1538a:	972a                	add	a4,a4,a0
   1538c:	4401                	li	s0,0
   1538e:	00e56863          	bltu	a0,a4,1539e <__trailz_D2A+0x20>
   15392:	a831                	j	153ae <__trailz_D2A+0x30>
   15394:	0511                	addi	a0,a0,4
   15396:	02040413          	addi	s0,s0,32
   1539a:	00e57a63          	bgeu	a0,a4,153ae <__trailz_D2A+0x30>
   1539e:	411c                	lw	a5,0(a0)
   153a0:	dbf5                	beqz	a5,15394 <__trailz_D2A+0x16>
   153a2:	00e57663          	bgeu	a0,a4,153ae <__trailz_D2A+0x30>
   153a6:	0068                	addi	a0,sp,12
   153a8:	c63e                	sw	a5,12(sp)
   153aa:	2459                	jal	15630 <__lo0bits>
   153ac:	942a                	add	s0,s0,a0
   153ae:	40f2                	lw	ra,28(sp)
   153b0:	8522                	mv	a0,s0
   153b2:	4462                	lw	s0,24(sp)
   153b4:	6105                	addi	sp,sp,32
   153b6:	8082                	ret

000153b8 <_Balloc>:
   153b8:	417c                	lw	a5,68(a0)
   153ba:	1141                	addi	sp,sp,-16
   153bc:	c422                	sw	s0,8(sp)
   153be:	c226                	sw	s1,4(sp)
   153c0:	c606                	sw	ra,12(sp)
   153c2:	842a                	mv	s0,a0
   153c4:	84ae                	mv	s1,a1
   153c6:	c38d                	beqz	a5,153e8 <_Balloc+0x30>
   153c8:	00249713          	slli	a4,s1,0x2
   153cc:	97ba                	add	a5,a5,a4
   153ce:	4388                	lw	a0,0(a5)
   153d0:	c515                	beqz	a0,153fc <_Balloc+0x44>
   153d2:	4118                	lw	a4,0(a0)
   153d4:	c398                	sw	a4,0(a5)
   153d6:	00052823          	sw	zero,16(a0)
   153da:	00052623          	sw	zero,12(a0)
   153de:	40b2                	lw	ra,12(sp)
   153e0:	4422                	lw	s0,8(sp)
   153e2:	4492                	lw	s1,4(sp)
   153e4:	0141                	addi	sp,sp,16
   153e6:	8082                	ret
   153e8:	02100613          	li	a2,33
   153ec:	4591                	li	a1,4
   153ee:	3ac010ef          	jal	1679a <_calloc_r>
   153f2:	c068                	sw	a0,68(s0)
   153f4:	87aa                	mv	a5,a0
   153f6:	f969                	bnez	a0,153c8 <_Balloc+0x10>
   153f8:	4501                	li	a0,0
   153fa:	b7d5                	j	153de <_Balloc+0x26>
   153fc:	c04a                	sw	s2,0(sp)
   153fe:	4905                	li	s2,1
   15400:	00991933          	sll	s2,s2,s1
   15404:	00590613          	addi	a2,s2,5
   15408:	060a                	slli	a2,a2,0x2
   1540a:	4585                	li	a1,1
   1540c:	8522                	mv	a0,s0
   1540e:	38c010ef          	jal	1679a <_calloc_r>
   15412:	c511                	beqz	a0,1541e <_Balloc+0x66>
   15414:	01252423          	sw	s2,8(a0)
   15418:	c144                	sw	s1,4(a0)
   1541a:	4902                	lw	s2,0(sp)
   1541c:	bf6d                	j	153d6 <_Balloc+0x1e>
   1541e:	4902                	lw	s2,0(sp)
   15420:	4501                	li	a0,0
   15422:	bf75                	j	153de <_Balloc+0x26>

00015424 <_Bfree>:
   15424:	c981                	beqz	a1,15434 <_Bfree+0x10>
   15426:	41d8                	lw	a4,4(a1)
   15428:	417c                	lw	a5,68(a0)
   1542a:	070a                	slli	a4,a4,0x2
   1542c:	97ba                	add	a5,a5,a4
   1542e:	4398                	lw	a4,0(a5)
   15430:	c198                	sw	a4,0(a1)
   15432:	c38c                	sw	a1,0(a5)
   15434:	8082                	ret

00015436 <__multadd>:
   15436:	1101                	addi	sp,sp,-32
   15438:	ca26                	sw	s1,20(sp)
   1543a:	4984                	lw	s1,16(a1)
   1543c:	6341                	lui	t1,0x10
   1543e:	cc22                	sw	s0,24(sp)
   15440:	c84a                	sw	s2,16(sp)
   15442:	c64e                	sw	s3,12(sp)
   15444:	ce06                	sw	ra,28(sp)
   15446:	892e                	mv	s2,a1
   15448:	89aa                	mv	s3,a0
   1544a:	8436                	mv	s0,a3
   1544c:	01458813          	addi	a6,a1,20
   15450:	4881                	li	a7,0
   15452:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   15454:	00082783          	lw	a5,0(a6)
   15458:	0811                	addi	a6,a6,4
   1545a:	0885                	addi	a7,a7,1
   1545c:	0067f733          	and	a4,a5,t1
   15460:	02c70733          	mul	a4,a4,a2
   15464:	0107d693          	srli	a3,a5,0x10
   15468:	02c686b3          	mul	a3,a3,a2
   1546c:	008707b3          	add	a5,a4,s0
   15470:	0107d713          	srli	a4,a5,0x10
   15474:	0067f7b3          	and	a5,a5,t1
   15478:	96ba                	add	a3,a3,a4
   1547a:	01069713          	slli	a4,a3,0x10
   1547e:	97ba                	add	a5,a5,a4
   15480:	fef82e23          	sw	a5,-4(a6)
   15484:	0106d413          	srli	s0,a3,0x10
   15488:	fc98c6e3          	blt	a7,s1,15454 <__multadd+0x1e>
   1548c:	cc09                	beqz	s0,154a6 <__multadd+0x70>
   1548e:	00892783          	lw	a5,8(s2)
   15492:	02f4d263          	bge	s1,a5,154b6 <__multadd+0x80>
   15496:	00448793          	addi	a5,s1,4
   1549a:	078a                	slli	a5,a5,0x2
   1549c:	97ca                	add	a5,a5,s2
   1549e:	c3c0                	sw	s0,4(a5)
   154a0:	0485                	addi	s1,s1,1
   154a2:	00992823          	sw	s1,16(s2)
   154a6:	40f2                	lw	ra,28(sp)
   154a8:	4462                	lw	s0,24(sp)
   154aa:	44d2                	lw	s1,20(sp)
   154ac:	49b2                	lw	s3,12(sp)
   154ae:	854a                	mv	a0,s2
   154b0:	4942                	lw	s2,16(sp)
   154b2:	6105                	addi	sp,sp,32
   154b4:	8082                	ret
   154b6:	00492583          	lw	a1,4(s2)
   154ba:	854e                	mv	a0,s3
   154bc:	c452                	sw	s4,8(sp)
   154be:	0585                	addi	a1,a1,1
   154c0:	3de5                	jal	153b8 <_Balloc>
   154c2:	8a2a                	mv	s4,a0
   154c4:	c121                	beqz	a0,15504 <__multadd+0xce>
   154c6:	01092603          	lw	a2,16(s2)
   154ca:	00c90593          	addi	a1,s2,12
   154ce:	0531                	addi	a0,a0,12
   154d0:	0609                	addi	a2,a2,2
   154d2:	060a                	slli	a2,a2,0x2
   154d4:	fccfb0ef          	jal	10ca0 <memcpy>
   154d8:	00492703          	lw	a4,4(s2)
   154dc:	0449a783          	lw	a5,68(s3)
   154e0:	070a                	slli	a4,a4,0x2
   154e2:	97ba                	add	a5,a5,a4
   154e4:	4398                	lw	a4,0(a5)
   154e6:	00e92023          	sw	a4,0(s2)
   154ea:	0127a023          	sw	s2,0(a5)
   154ee:	00448793          	addi	a5,s1,4
   154f2:	8952                	mv	s2,s4
   154f4:	078a                	slli	a5,a5,0x2
   154f6:	97ca                	add	a5,a5,s2
   154f8:	4a22                	lw	s4,8(sp)
   154fa:	0485                	addi	s1,s1,1
   154fc:	c3c0                	sw	s0,4(a5)
   154fe:	00992823          	sw	s1,16(s2)
   15502:	b755                	j	154a6 <__multadd+0x70>
   15504:	66e9                	lui	a3,0x1a
   15506:	6569                	lui	a0,0x1a
   15508:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   1550c:	4601                	li	a2,0
   1550e:	0ba00593          	li	a1,186
   15512:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   15516:	23e010ef          	jal	16754 <__assert_func>

0001551a <__s2b>:
   1551a:	1101                	addi	sp,sp,-32
   1551c:	cc22                	sw	s0,24(sp)
   1551e:	ca26                	sw	s1,20(sp)
   15520:	c84a                	sw	s2,16(sp)
   15522:	c64e                	sw	s3,12(sp)
   15524:	c452                	sw	s4,8(sp)
   15526:	89b6                	mv	s3,a3
   15528:	47a5                	li	a5,9
   1552a:	06a1                	addi	a3,a3,8
   1552c:	ce06                	sw	ra,28(sp)
   1552e:	02f6c6b3          	div	a3,a3,a5
   15532:	892a                	mv	s2,a0
   15534:	842e                	mv	s0,a1
   15536:	8a32                	mv	s4,a2
   15538:	84ba                	mv	s1,a4
   1553a:	0937d363          	bge	a5,s3,155c0 <__s2b+0xa6>
   1553e:	4785                	li	a5,1
   15540:	4581                	li	a1,0
   15542:	0786                	slli	a5,a5,0x1
   15544:	0585                	addi	a1,a1,1
   15546:	fed7cee3          	blt	a5,a3,15542 <__s2b+0x28>
   1554a:	854a                	mv	a0,s2
   1554c:	e6dff0ef          	jal	153b8 <_Balloc>
   15550:	85aa                	mv	a1,a0
   15552:	c92d                	beqz	a0,155c4 <__s2b+0xaa>
   15554:	4785                	li	a5,1
   15556:	c91c                	sw	a5,16(a0)
   15558:	c944                	sw	s1,20(a0)
   1555a:	47a5                	li	a5,9
   1555c:	0547df63          	bge	a5,s4,155ba <__s2b+0xa0>
   15560:	c256                	sw	s5,4(sp)
   15562:	00940a93          	addi	s5,s0,9
   15566:	84d6                	mv	s1,s5
   15568:	9452                	add	s0,s0,s4
   1556a:	0004c683          	lbu	a3,0(s1)
   1556e:	4629                	li	a2,10
   15570:	854a                	mv	a0,s2
   15572:	fd068693          	addi	a3,a3,-48
   15576:	35c1                	jal	15436 <__multadd>
   15578:	0485                	addi	s1,s1,1
   1557a:	85aa                	mv	a1,a0
   1557c:	fe8497e3          	bne	s1,s0,1556a <__s2b+0x50>
   15580:	ff8a0413          	addi	s0,s4,-8
   15584:	9456                	add	s0,s0,s5
   15586:	4a92                	lw	s5,4(sp)
   15588:	033a5063          	bge	s4,s3,155a8 <__s2b+0x8e>
   1558c:	414989b3          	sub	s3,s3,s4
   15590:	99a2                	add	s3,s3,s0
   15592:	00044683          	lbu	a3,0(s0)
   15596:	4629                	li	a2,10
   15598:	854a                	mv	a0,s2
   1559a:	fd068693          	addi	a3,a3,-48
   1559e:	3d61                	jal	15436 <__multadd>
   155a0:	0405                	addi	s0,s0,1
   155a2:	85aa                	mv	a1,a0
   155a4:	ff3417e3          	bne	s0,s3,15592 <__s2b+0x78>
   155a8:	40f2                	lw	ra,28(sp)
   155aa:	4462                	lw	s0,24(sp)
   155ac:	44d2                	lw	s1,20(sp)
   155ae:	4942                	lw	s2,16(sp)
   155b0:	49b2                	lw	s3,12(sp)
   155b2:	4a22                	lw	s4,8(sp)
   155b4:	852e                	mv	a0,a1
   155b6:	6105                	addi	sp,sp,32
   155b8:	8082                	ret
   155ba:	0429                	addi	s0,s0,10
   155bc:	4a25                	li	s4,9
   155be:	b7e9                	j	15588 <__s2b+0x6e>
   155c0:	4581                	li	a1,0
   155c2:	b761                	j	1554a <__s2b+0x30>
   155c4:	66e9                	lui	a3,0x1a
   155c6:	6569                	lui	a0,0x1a
   155c8:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   155cc:	4601                	li	a2,0
   155ce:	0d300593          	li	a1,211
   155d2:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   155d6:	c256                	sw	s5,4(sp)
   155d8:	17c010ef          	jal	16754 <__assert_func>

000155dc <__hi0bits>:
   155dc:	87aa                	mv	a5,a0
   155de:	6741                	lui	a4,0x10
   155e0:	4501                	li	a0,0
   155e2:	00e7f463          	bgeu	a5,a4,155ea <__hi0bits+0xe>
   155e6:	07c2                	slli	a5,a5,0x10
   155e8:	4541                	li	a0,16
   155ea:	01000737          	lui	a4,0x1000
   155ee:	00e7f463          	bgeu	a5,a4,155f6 <__hi0bits+0x1a>
   155f2:	0521                	addi	a0,a0,8
   155f4:	07a2                	slli	a5,a5,0x8
   155f6:	10000737          	lui	a4,0x10000
   155fa:	00e7f463          	bgeu	a5,a4,15602 <__hi0bits+0x26>
   155fe:	0511                	addi	a0,a0,4
   15600:	0792                	slli	a5,a5,0x4
   15602:	40000737          	lui	a4,0x40000
   15606:	00e7e763          	bltu	a5,a4,15614 <__hi0bits+0x38>
   1560a:	fff7c793          	not	a5,a5
   1560e:	83fd                	srli	a5,a5,0x1f
   15610:	953e                	add	a0,a0,a5
   15612:	8082                	ret
   15614:	078a                	slli	a5,a5,0x2
   15616:	0007c963          	bltz	a5,15628 <__hi0bits+0x4c>
   1561a:	00179713          	slli	a4,a5,0x1
   1561e:	00074763          	bltz	a4,1562c <__hi0bits+0x50>
   15622:	02000513          	li	a0,32
   15626:	8082                	ret
   15628:	0509                	addi	a0,a0,2
   1562a:	8082                	ret
   1562c:	050d                	addi	a0,a0,3
   1562e:	8082                	ret

00015630 <__lo0bits>:
   15630:	411c                	lw	a5,0(a0)
   15632:	872a                	mv	a4,a0
   15634:	0077f693          	andi	a3,a5,7
   15638:	ce81                	beqz	a3,15650 <__lo0bits+0x20>
   1563a:	0017f693          	andi	a3,a5,1
   1563e:	4501                	li	a0,0
   15640:	ee95                	bnez	a3,1567c <__lo0bits+0x4c>
   15642:	0027f693          	andi	a3,a5,2
   15646:	c6b5                	beqz	a3,156b2 <__lo0bits+0x82>
   15648:	8385                	srli	a5,a5,0x1
   1564a:	c31c                	sw	a5,0(a4)
   1564c:	4505                	li	a0,1
   1564e:	8082                	ret
   15650:	01079693          	slli	a3,a5,0x10
   15654:	82c1                	srli	a3,a3,0x10
   15656:	4501                	li	a0,0
   15658:	c6b9                	beqz	a3,156a6 <__lo0bits+0x76>
   1565a:	0ff7f693          	zext.b	a3,a5
   1565e:	ce95                	beqz	a3,1569a <__lo0bits+0x6a>
   15660:	00f7f693          	andi	a3,a5,15
   15664:	c68d                	beqz	a3,1568e <__lo0bits+0x5e>
   15666:	0037f693          	andi	a3,a5,3
   1566a:	ce81                	beqz	a3,15682 <__lo0bits+0x52>
   1566c:	0017f693          	andi	a3,a5,1
   15670:	e699                	bnez	a3,1567e <__lo0bits+0x4e>
   15672:	8385                	srli	a5,a5,0x1
   15674:	0505                	addi	a0,a0,1
   15676:	e781                	bnez	a5,1567e <__lo0bits+0x4e>
   15678:	02000513          	li	a0,32
   1567c:	8082                	ret
   1567e:	c31c                	sw	a5,0(a4)
   15680:	8082                	ret
   15682:	8389                	srli	a5,a5,0x2
   15684:	0017f693          	andi	a3,a5,1
   15688:	0509                	addi	a0,a0,2
   1568a:	faf5                	bnez	a3,1567e <__lo0bits+0x4e>
   1568c:	b7dd                	j	15672 <__lo0bits+0x42>
   1568e:	8391                	srli	a5,a5,0x4
   15690:	0037f693          	andi	a3,a5,3
   15694:	0511                	addi	a0,a0,4
   15696:	faf9                	bnez	a3,1566c <__lo0bits+0x3c>
   15698:	b7ed                	j	15682 <__lo0bits+0x52>
   1569a:	83a1                	srli	a5,a5,0x8
   1569c:	00f7f693          	andi	a3,a5,15
   156a0:	0521                	addi	a0,a0,8
   156a2:	f2f1                	bnez	a3,15666 <__lo0bits+0x36>
   156a4:	b7ed                	j	1568e <__lo0bits+0x5e>
   156a6:	83c1                	srli	a5,a5,0x10
   156a8:	0ff7f693          	zext.b	a3,a5
   156ac:	4541                	li	a0,16
   156ae:	facd                	bnez	a3,15660 <__lo0bits+0x30>
   156b0:	b7ed                	j	1569a <__lo0bits+0x6a>
   156b2:	8389                	srli	a5,a5,0x2
   156b4:	c31c                	sw	a5,0(a4)
   156b6:	4509                	li	a0,2
   156b8:	8082                	ret

000156ba <__i2b>:
   156ba:	417c                	lw	a5,68(a0)
   156bc:	1141                	addi	sp,sp,-16
   156be:	c422                	sw	s0,8(sp)
   156c0:	c226                	sw	s1,4(sp)
   156c2:	c606                	sw	ra,12(sp)
   156c4:	842a                	mv	s0,a0
   156c6:	84ae                	mv	s1,a1
   156c8:	cf99                	beqz	a5,156e6 <__i2b+0x2c>
   156ca:	43c8                	lw	a0,4(a5)
   156cc:	c121                	beqz	a0,1570c <__i2b+0x52>
   156ce:	4118                	lw	a4,0(a0)
   156d0:	c3d8                	sw	a4,4(a5)
   156d2:	40b2                	lw	ra,12(sp)
   156d4:	4422                	lw	s0,8(sp)
   156d6:	4785                	li	a5,1
   156d8:	c944                	sw	s1,20(a0)
   156da:	00052623          	sw	zero,12(a0)
   156de:	c91c                	sw	a5,16(a0)
   156e0:	4492                	lw	s1,4(sp)
   156e2:	0141                	addi	sp,sp,16
   156e4:	8082                	ret
   156e6:	02100613          	li	a2,33
   156ea:	4591                	li	a1,4
   156ec:	0ae010ef          	jal	1679a <_calloc_r>
   156f0:	c068                	sw	a0,68(s0)
   156f2:	87aa                	mv	a5,a0
   156f4:	f979                	bnez	a0,156ca <__i2b+0x10>
   156f6:	66e9                	lui	a3,0x1a
   156f8:	6569                	lui	a0,0x1a
   156fa:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   156fe:	4601                	li	a2,0
   15700:	14500593          	li	a1,325
   15704:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   15708:	04c010ef          	jal	16754 <__assert_func>
   1570c:	4671                	li	a2,28
   1570e:	4585                	li	a1,1
   15710:	8522                	mv	a0,s0
   15712:	088010ef          	jal	1679a <_calloc_r>
   15716:	d165                	beqz	a0,156f6 <__i2b+0x3c>
   15718:	4785                	li	a5,1
   1571a:	c15c                	sw	a5,4(a0)
   1571c:	4789                	li	a5,2
   1571e:	c51c                	sw	a5,8(a0)
   15720:	bf4d                	j	156d2 <__i2b+0x18>

00015722 <__multiply>:
   15722:	1101                	addi	sp,sp,-32
   15724:	c84a                	sw	s2,16(sp)
   15726:	c64e                	sw	s3,12(sp)
   15728:	0105a903          	lw	s2,16(a1)
   1572c:	01062983          	lw	s3,16(a2)
   15730:	ca26                	sw	s1,20(sp)
   15732:	c452                	sw	s4,8(sp)
   15734:	ce06                	sw	ra,28(sp)
   15736:	cc22                	sw	s0,24(sp)
   15738:	8a2e                	mv	s4,a1
   1573a:	84b2                	mv	s1,a2
   1573c:	01394763          	blt	s2,s3,1574a <__multiply+0x28>
   15740:	874e                	mv	a4,s3
   15742:	84ae                	mv	s1,a1
   15744:	89ca                	mv	s3,s2
   15746:	8a32                	mv	s4,a2
   15748:	893a                	mv	s2,a4
   1574a:	449c                	lw	a5,8(s1)
   1574c:	40cc                	lw	a1,4(s1)
   1574e:	01298433          	add	s0,s3,s2
   15752:	0087a7b3          	slt	a5,a5,s0
   15756:	95be                	add	a1,a1,a5
   15758:	c61ff0ef          	jal	153b8 <_Balloc>
   1575c:	14050363          	beqz	a0,158a2 <__multiply+0x180>
   15760:	01450313          	addi	t1,a0,20
   15764:	00241893          	slli	a7,s0,0x2
   15768:	989a                	add	a7,a7,t1
   1576a:	879a                	mv	a5,t1
   1576c:	01137763          	bgeu	t1,a7,1577a <__multiply+0x58>
   15770:	0007a023          	sw	zero,0(a5)
   15774:	0791                	addi	a5,a5,4
   15776:	ff17ede3          	bltu	a5,a7,15770 <__multiply+0x4e>
   1577a:	014a0813          	addi	a6,s4,20
   1577e:	00291e13          	slli	t3,s2,0x2
   15782:	01448e93          	addi	t4,s1,20
   15786:	00299593          	slli	a1,s3,0x2
   1578a:	9e42                	add	t3,t3,a6
   1578c:	95f6                	add	a1,a1,t4
   1578e:	0fc87163          	bgeu	a6,t3,15870 <__multiply+0x14e>
   15792:	01548793          	addi	a5,s1,21
   15796:	4f11                	li	t5,4
   15798:	0ef5fe63          	bgeu	a1,a5,15894 <__multiply+0x172>
   1579c:	66c1                	lui	a3,0x10
   1579e:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   157a0:	a809                	j	157b2 <__multiply+0x90>
   157a2:	010fdf93          	srli	t6,t6,0x10
   157a6:	060f9863          	bnez	t6,15816 <__multiply+0xf4>
   157aa:	0811                	addi	a6,a6,4
   157ac:	0311                	addi	t1,t1,4
   157ae:	0dc87163          	bgeu	a6,t3,15870 <__multiply+0x14e>
   157b2:	00082f83          	lw	t6,0(a6)
   157b6:	00dff3b3          	and	t2,t6,a3
   157ba:	fe0384e3          	beqz	t2,157a2 <__multiply+0x80>
   157be:	829a                	mv	t0,t1
   157c0:	8ff6                	mv	t6,t4
   157c2:	4481                	li	s1,0
   157c4:	000fa783          	lw	a5,0(t6)
   157c8:	0002a603          	lw	a2,0(t0) # 10c86 <memset+0x8e>
   157cc:	0291                	addi	t0,t0,4
   157ce:	00d7f733          	and	a4,a5,a3
   157d2:	02770733          	mul	a4,a4,t2
   157d6:	83c1                	srli	a5,a5,0x10
   157d8:	00d67933          	and	s2,a2,a3
   157dc:	8241                	srli	a2,a2,0x10
   157de:	0f91                	addi	t6,t6,4
   157e0:	027787b3          	mul	a5,a5,t2
   157e4:	974a                	add	a4,a4,s2
   157e6:	9726                	add	a4,a4,s1
   157e8:	01075493          	srli	s1,a4,0x10
   157ec:	8f75                	and	a4,a4,a3
   157ee:	97b2                	add	a5,a5,a2
   157f0:	97a6                	add	a5,a5,s1
   157f2:	01079613          	slli	a2,a5,0x10
   157f6:	8f51                	or	a4,a4,a2
   157f8:	fee2ae23          	sw	a4,-4(t0)
   157fc:	0107d493          	srli	s1,a5,0x10
   15800:	fcbfe2e3          	bltu	t6,a1,157c4 <__multiply+0xa2>
   15804:	01e307b3          	add	a5,t1,t5
   15808:	c384                	sw	s1,0(a5)
   1580a:	00082f83          	lw	t6,0(a6)
   1580e:	010fdf93          	srli	t6,t6,0x10
   15812:	f80f8ce3          	beqz	t6,157aa <__multiply+0x88>
   15816:	00032703          	lw	a4,0(t1)
   1581a:	829a                	mv	t0,t1
   1581c:	8676                	mv	a2,t4
   1581e:	84ba                	mv	s1,a4
   15820:	4381                	li	t2,0
   15822:	421c                	lw	a5,0(a2)
   15824:	0104d993          	srli	s3,s1,0x10
   15828:	8f75                	and	a4,a4,a3
   1582a:	8ff5                	and	a5,a5,a3
   1582c:	03f787b3          	mul	a5,a5,t6
   15830:	0042a483          	lw	s1,4(t0)
   15834:	0291                	addi	t0,t0,4
   15836:	0611                	addi	a2,a2,4
   15838:	00d4f933          	and	s2,s1,a3
   1583c:	979e                	add	a5,a5,t2
   1583e:	97ce                	add	a5,a5,s3
   15840:	01079393          	slli	t2,a5,0x10
   15844:	00e3e733          	or	a4,t2,a4
   15848:	fee2ae23          	sw	a4,-4(t0)
   1584c:	ffe65703          	lhu	a4,-2(a2)
   15850:	83c1                	srli	a5,a5,0x10
   15852:	03f70733          	mul	a4,a4,t6
   15856:	974a                	add	a4,a4,s2
   15858:	973e                	add	a4,a4,a5
   1585a:	01075393          	srli	t2,a4,0x10
   1585e:	fcb662e3          	bltu	a2,a1,15822 <__multiply+0x100>
   15862:	01e307b3          	add	a5,t1,t5
   15866:	c398                	sw	a4,0(a5)
   15868:	0811                	addi	a6,a6,4
   1586a:	0311                	addi	t1,t1,4
   1586c:	f5c863e3          	bltu	a6,t3,157b2 <__multiply+0x90>
   15870:	00804563          	bgtz	s0,1587a <__multiply+0x158>
   15874:	a039                	j	15882 <__multiply+0x160>
   15876:	147d                	addi	s0,s0,-1
   15878:	c409                	beqz	s0,15882 <__multiply+0x160>
   1587a:	ffc8a783          	lw	a5,-4(a7)
   1587e:	18f1                	addi	a7,a7,-4
   15880:	dbfd                	beqz	a5,15876 <__multiply+0x154>
   15882:	40f2                	lw	ra,28(sp)
   15884:	c900                	sw	s0,16(a0)
   15886:	4462                	lw	s0,24(sp)
   15888:	44d2                	lw	s1,20(sp)
   1588a:	4942                	lw	s2,16(sp)
   1588c:	49b2                	lw	s3,12(sp)
   1588e:	4a22                	lw	s4,8(sp)
   15890:	6105                	addi	sp,sp,32
   15892:	8082                	ret
   15894:	409587b3          	sub	a5,a1,s1
   15898:	17ad                	addi	a5,a5,-21
   1589a:	9bf1                	andi	a5,a5,-4
   1589c:	00478f13          	addi	t5,a5,4
   158a0:	bdf5                	j	1579c <__multiply+0x7a>
   158a2:	66e9                	lui	a3,0x1a
   158a4:	6569                	lui	a0,0x1a
   158a6:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   158aa:	4601                	li	a2,0
   158ac:	16200593          	li	a1,354
   158b0:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   158b4:	6a1000ef          	jal	16754 <__assert_func>

000158b8 <__pow5mult>:
   158b8:	1101                	addi	sp,sp,-32
   158ba:	cc22                	sw	s0,24(sp)
   158bc:	c84a                	sw	s2,16(sp)
   158be:	c64e                	sw	s3,12(sp)
   158c0:	ce06                	sw	ra,28(sp)
   158c2:	00367793          	andi	a5,a2,3
   158c6:	8432                	mv	s0,a2
   158c8:	89aa                	mv	s3,a0
   158ca:	892e                	mv	s2,a1
   158cc:	ebad                	bnez	a5,1593e <__pow5mult+0x86>
   158ce:	8409                	srai	s0,s0,0x2
   158d0:	c431                	beqz	s0,1591c <__pow5mult+0x64>
   158d2:	ca26                	sw	s1,20(sp)
   158d4:	0409a483          	lw	s1,64(s3)
   158d8:	ccbd                	beqz	s1,15956 <__pow5mult+0x9e>
   158da:	00147793          	andi	a5,s0,1
   158de:	eb89                	bnez	a5,158f0 <__pow5mult+0x38>
   158e0:	8405                	srai	s0,s0,0x1
   158e2:	cc05                	beqz	s0,1591a <__pow5mult+0x62>
   158e4:	4088                	lw	a0,0(s1)
   158e6:	c131                	beqz	a0,1592a <__pow5mult+0x72>
   158e8:	84aa                	mv	s1,a0
   158ea:	00147793          	andi	a5,s0,1
   158ee:	dbed                	beqz	a5,158e0 <__pow5mult+0x28>
   158f0:	8626                	mv	a2,s1
   158f2:	85ca                	mv	a1,s2
   158f4:	854e                	mv	a0,s3
   158f6:	e2dff0ef          	jal	15722 <__multiply>
   158fa:	00090d63          	beqz	s2,15914 <__pow5mult+0x5c>
   158fe:	00492703          	lw	a4,4(s2)
   15902:	0449a783          	lw	a5,68(s3)
   15906:	070a                	slli	a4,a4,0x2
   15908:	97ba                	add	a5,a5,a4
   1590a:	4398                	lw	a4,0(a5)
   1590c:	00e92023          	sw	a4,0(s2)
   15910:	0127a023          	sw	s2,0(a5)
   15914:	8405                	srai	s0,s0,0x1
   15916:	892a                	mv	s2,a0
   15918:	f471                	bnez	s0,158e4 <__pow5mult+0x2c>
   1591a:	44d2                	lw	s1,20(sp)
   1591c:	40f2                	lw	ra,28(sp)
   1591e:	4462                	lw	s0,24(sp)
   15920:	49b2                	lw	s3,12(sp)
   15922:	854a                	mv	a0,s2
   15924:	4942                	lw	s2,16(sp)
   15926:	6105                	addi	sp,sp,32
   15928:	8082                	ret
   1592a:	8626                	mv	a2,s1
   1592c:	85a6                	mv	a1,s1
   1592e:	854e                	mv	a0,s3
   15930:	df3ff0ef          	jal	15722 <__multiply>
   15934:	c088                	sw	a0,0(s1)
   15936:	00052023          	sw	zero,0(a0)
   1593a:	84aa                	mv	s1,a0
   1593c:	b77d                	j	158ea <__pow5mult+0x32>
   1593e:	17fd                	addi	a5,a5,-1
   15940:	6769                	lui	a4,0x1a
   15942:	5a070713          	addi	a4,a4,1440 # 1a5a0 <p05.0>
   15946:	078a                	slli	a5,a5,0x2
   15948:	97ba                	add	a5,a5,a4
   1594a:	4390                	lw	a2,0(a5)
   1594c:	4681                	li	a3,0
   1594e:	ae9ff0ef          	jal	15436 <__multadd>
   15952:	892a                	mv	s2,a0
   15954:	bfad                	j	158ce <__pow5mult+0x16>
   15956:	4585                	li	a1,1
   15958:	854e                	mv	a0,s3
   1595a:	a5fff0ef          	jal	153b8 <_Balloc>
   1595e:	84aa                	mv	s1,a0
   15960:	c919                	beqz	a0,15976 <__pow5mult+0xbe>
   15962:	27100793          	li	a5,625
   15966:	c95c                	sw	a5,20(a0)
   15968:	4785                	li	a5,1
   1596a:	c91c                	sw	a5,16(a0)
   1596c:	04a9a023          	sw	a0,64(s3)
   15970:	00052023          	sw	zero,0(a0)
   15974:	b79d                	j	158da <__pow5mult+0x22>
   15976:	66e9                	lui	a3,0x1a
   15978:	6569                	lui	a0,0x1a
   1597a:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   1597e:	4601                	li	a2,0
   15980:	14500593          	li	a1,325
   15984:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   15988:	5cd000ef          	jal	16754 <__assert_func>

0001598c <__lshift>:
   1598c:	1101                	addi	sp,sp,-32
   1598e:	c256                	sw	s5,4(sp)
   15990:	0105aa83          	lw	s5,16(a1)
   15994:	459c                	lw	a5,8(a1)
   15996:	c64e                	sw	s3,12(sp)
   15998:	40565993          	srai	s3,a2,0x5
   1599c:	9ace                	add	s5,s5,s3
   1599e:	cc22                	sw	s0,24(sp)
   159a0:	ca26                	sw	s1,20(sp)
   159a2:	c84a                	sw	s2,16(sp)
   159a4:	c452                	sw	s4,8(sp)
   159a6:	ce06                	sw	ra,28(sp)
   159a8:	001a8913          	addi	s2,s5,1
   159ac:	84ae                	mv	s1,a1
   159ae:	8432                	mv	s0,a2
   159b0:	41cc                	lw	a1,4(a1)
   159b2:	8a2a                	mv	s4,a0
   159b4:	0127d663          	bge	a5,s2,159c0 <__lshift+0x34>
   159b8:	0786                	slli	a5,a5,0x1
   159ba:	0585                	addi	a1,a1,1
   159bc:	ff27cee3          	blt	a5,s2,159b8 <__lshift+0x2c>
   159c0:	8552                	mv	a0,s4
   159c2:	9f7ff0ef          	jal	153b8 <_Balloc>
   159c6:	cd5d                	beqz	a0,15a84 <__lshift+0xf8>
   159c8:	01450813          	addi	a6,a0,20
   159cc:	01305e63          	blez	s3,159e8 <__lshift+0x5c>
   159d0:	0995                	addi	s3,s3,5
   159d2:	098a                	slli	s3,s3,0x2
   159d4:	01350733          	add	a4,a0,s3
   159d8:	87c2                	mv	a5,a6
   159da:	0791                	addi	a5,a5,4
   159dc:	fe07ae23          	sw	zero,-4(a5)
   159e0:	fee79de3          	bne	a5,a4,159da <__lshift+0x4e>
   159e4:	19b1                	addi	s3,s3,-20
   159e6:	984e                	add	a6,a6,s3
   159e8:	0104a883          	lw	a7,16(s1)
   159ec:	01448793          	addi	a5,s1,20
   159f0:	01f47613          	andi	a2,s0,31
   159f4:	088a                	slli	a7,a7,0x2
   159f6:	98be                	add	a7,a7,a5
   159f8:	c63d                	beqz	a2,15a66 <__lshift+0xda>
   159fa:	02000593          	li	a1,32
   159fe:	8d91                	sub	a1,a1,a2
   15a00:	8342                	mv	t1,a6
   15a02:	4681                	li	a3,0
   15a04:	4398                	lw	a4,0(a5)
   15a06:	0311                	addi	t1,t1,4
   15a08:	0791                	addi	a5,a5,4
   15a0a:	00c71733          	sll	a4,a4,a2
   15a0e:	8f55                	or	a4,a4,a3
   15a10:	fee32e23          	sw	a4,-4(t1)
   15a14:	ffc7a683          	lw	a3,-4(a5)
   15a18:	00b6d6b3          	srl	a3,a3,a1
   15a1c:	ff17e4e3          	bltu	a5,a7,15a04 <__lshift+0x78>
   15a20:	01548793          	addi	a5,s1,21
   15a24:	4711                	li	a4,4
   15a26:	00f8e863          	bltu	a7,a5,15a36 <__lshift+0xaa>
   15a2a:	409887b3          	sub	a5,a7,s1
   15a2e:	17ad                	addi	a5,a5,-21
   15a30:	9bf1                	andi	a5,a5,-4
   15a32:	00478713          	addi	a4,a5,4
   15a36:	983a                	add	a6,a6,a4
   15a38:	00d82023          	sw	a3,0(a6)
   15a3c:	e291                	bnez	a3,15a40 <__lshift+0xb4>
   15a3e:	8956                	mv	s2,s5
   15a40:	40d8                	lw	a4,4(s1)
   15a42:	044a2783          	lw	a5,68(s4)
   15a46:	40f2                	lw	ra,28(sp)
   15a48:	070a                	slli	a4,a4,0x2
   15a4a:	97ba                	add	a5,a5,a4
   15a4c:	4398                	lw	a4,0(a5)
   15a4e:	01252823          	sw	s2,16(a0)
   15a52:	4462                	lw	s0,24(sp)
   15a54:	c098                	sw	a4,0(s1)
   15a56:	c384                	sw	s1,0(a5)
   15a58:	4942                	lw	s2,16(sp)
   15a5a:	44d2                	lw	s1,20(sp)
   15a5c:	49b2                	lw	s3,12(sp)
   15a5e:	4a22                	lw	s4,8(sp)
   15a60:	4a92                	lw	s5,4(sp)
   15a62:	6105                	addi	sp,sp,32
   15a64:	8082                	ret
   15a66:	4398                	lw	a4,0(a5)
   15a68:	0791                	addi	a5,a5,4
   15a6a:	0811                	addi	a6,a6,4
   15a6c:	fee82e23          	sw	a4,-4(a6)
   15a70:	fd17f7e3          	bgeu	a5,a7,15a3e <__lshift+0xb2>
   15a74:	4398                	lw	a4,0(a5)
   15a76:	0791                	addi	a5,a5,4
   15a78:	0811                	addi	a6,a6,4
   15a7a:	fee82e23          	sw	a4,-4(a6)
   15a7e:	ff17e4e3          	bltu	a5,a7,15a66 <__lshift+0xda>
   15a82:	bf75                	j	15a3e <__lshift+0xb2>
   15a84:	66e9                	lui	a3,0x1a
   15a86:	6569                	lui	a0,0x1a
   15a88:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   15a8c:	4601                	li	a2,0
   15a8e:	1de00593          	li	a1,478
   15a92:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   15a96:	4bf000ef          	jal	16754 <__assert_func>

00015a9a <__mcmp>:
   15a9a:	4918                	lw	a4,16(a0)
   15a9c:	499c                	lw	a5,16(a1)
   15a9e:	882a                	mv	a6,a0
   15aa0:	40f70533          	sub	a0,a4,a5
   15aa4:	02f71863          	bne	a4,a5,15ad4 <__mcmp+0x3a>
   15aa8:	078a                	slli	a5,a5,0x2
   15aaa:	0851                	addi	a6,a6,20
   15aac:	05d1                	addi	a1,a1,20
   15aae:	00f80733          	add	a4,a6,a5
   15ab2:	97ae                	add	a5,a5,a1
   15ab4:	a019                	j	15aba <__mcmp+0x20>
   15ab6:	00e87f63          	bgeu	a6,a4,15ad4 <__mcmp+0x3a>
   15aba:	ffc72603          	lw	a2,-4(a4)
   15abe:	ffc7a683          	lw	a3,-4(a5)
   15ac2:	1771                	addi	a4,a4,-4
   15ac4:	17f1                	addi	a5,a5,-4
   15ac6:	fed608e3          	beq	a2,a3,15ab6 <__mcmp+0x1c>
   15aca:	4505                	li	a0,1
   15acc:	00d67463          	bgeu	a2,a3,15ad4 <__mcmp+0x3a>
   15ad0:	557d                	li	a0,-1
   15ad2:	8082                	ret
   15ad4:	8082                	ret

00015ad6 <__mdiff>:
   15ad6:	4998                	lw	a4,16(a1)
   15ad8:	4a1c                	lw	a5,16(a2)
   15ada:	1141                	addi	sp,sp,-16
   15adc:	c422                	sw	s0,8(sp)
   15ade:	c226                	sw	s1,4(sp)
   15ae0:	c606                	sw	ra,12(sp)
   15ae2:	c04a                	sw	s2,0(sp)
   15ae4:	842e                	mv	s0,a1
   15ae6:	84b2                	mv	s1,a2
   15ae8:	40f706b3          	sub	a3,a4,a5
   15aec:	12f71863          	bne	a4,a5,15c1c <__mdiff+0x146>
   15af0:	00279693          	slli	a3,a5,0x2
   15af4:	01458613          	addi	a2,a1,20
   15af8:	01448713          	addi	a4,s1,20
   15afc:	00d607b3          	add	a5,a2,a3
   15b00:	9736                	add	a4,a4,a3
   15b02:	a019                	j	15b08 <__mdiff+0x32>
   15b04:	12f67463          	bgeu	a2,a5,15c2c <__mdiff+0x156>
   15b08:	ffc7a583          	lw	a1,-4(a5)
   15b0c:	ffc72683          	lw	a3,-4(a4)
   15b10:	17f1                	addi	a5,a5,-4
   15b12:	1771                	addi	a4,a4,-4
   15b14:	fed588e3          	beq	a1,a3,15b04 <__mdiff+0x2e>
   15b18:	4905                	li	s2,1
   15b1a:	00d5e663          	bltu	a1,a3,15b26 <__mdiff+0x50>
   15b1e:	87a6                	mv	a5,s1
   15b20:	4901                	li	s2,0
   15b22:	84a2                	mv	s1,s0
   15b24:	843e                	mv	s0,a5
   15b26:	40cc                	lw	a1,4(s1)
   15b28:	891ff0ef          	jal	153b8 <_Balloc>
   15b2c:	12050763          	beqz	a0,15c5a <__mdiff+0x184>
   15b30:	0104a883          	lw	a7,16(s1)
   15b34:	01042283          	lw	t0,16(s0)
   15b38:	01448f93          	addi	t6,s1,20
   15b3c:	00289313          	slli	t1,a7,0x2
   15b40:	01440813          	addi	a6,s0,20
   15b44:	028a                	slli	t0,t0,0x2
   15b46:	01450593          	addi	a1,a0,20
   15b4a:	6e41                	lui	t3,0x10
   15b4c:	01252623          	sw	s2,12(a0)
   15b50:	937e                	add	t1,t1,t6
   15b52:	92c2                	add	t0,t0,a6
   15b54:	8f2e                	mv	t5,a1
   15b56:	8efe                	mv	t4,t6
   15b58:	4681                	li	a3,0
   15b5a:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   15b5c:	000ea703          	lw	a4,0(t4)
   15b60:	00082603          	lw	a2,0(a6)
   15b64:	0f11                	addi	t5,t5,4
   15b66:	01c777b3          	and	a5,a4,t3
   15b6a:	01c673b3          	and	t2,a2,t3
   15b6e:	407787b3          	sub	a5,a5,t2
   15b72:	97b6                	add	a5,a5,a3
   15b74:	8341                	srli	a4,a4,0x10
   15b76:	8241                	srli	a2,a2,0x10
   15b78:	4107d693          	srai	a3,a5,0x10
   15b7c:	8f11                	sub	a4,a4,a2
   15b7e:	9736                	add	a4,a4,a3
   15b80:	01071693          	slli	a3,a4,0x10
   15b84:	01c7f7b3          	and	a5,a5,t3
   15b88:	8fd5                	or	a5,a5,a3
   15b8a:	0811                	addi	a6,a6,4
   15b8c:	feff2e23          	sw	a5,-4(t5)
   15b90:	0e91                	addi	t4,t4,4
   15b92:	41075693          	srai	a3,a4,0x10
   15b96:	fc5863e3          	bltu	a6,t0,15b5c <__mdiff+0x86>
   15b9a:	01540713          	addi	a4,s0,21
   15b9e:	40828433          	sub	s0,t0,s0
   15ba2:	142d                	addi	s0,s0,-21
   15ba4:	00e2b2b3          	sltu	t0,t0,a4
   15ba8:	0012cf13          	xori	t5,t0,1
   15bac:	8009                	srli	s0,s0,0x2
   15bae:	4711                	li	a4,4
   15bb0:	06028a63          	beqz	t0,15c24 <__mdiff+0x14e>
   15bb4:	9fba                	add	t6,t6,a4
   15bb6:	00e58833          	add	a6,a1,a4
   15bba:	6ec1                	lui	t4,0x10
   15bbc:	8e42                	mv	t3,a6
   15bbe:	867e                	mv	a2,t6
   15bc0:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   15bc2:	086ff363          	bgeu	t6,t1,15c48 <__mdiff+0x172>
   15bc6:	421c                	lw	a5,0(a2)
   15bc8:	0e11                	addi	t3,t3,4
   15bca:	0611                	addi	a2,a2,4
   15bcc:	01d7f733          	and	a4,a5,t4
   15bd0:	9736                	add	a4,a4,a3
   15bd2:	0107d593          	srli	a1,a5,0x10
   15bd6:	8741                	srai	a4,a4,0x10
   15bd8:	972e                	add	a4,a4,a1
   15bda:	97b6                	add	a5,a5,a3
   15bdc:	01d7f7b3          	and	a5,a5,t4
   15be0:	01071693          	slli	a3,a4,0x10
   15be4:	8fd5                	or	a5,a5,a3
   15be6:	fefe2e23          	sw	a5,-4(t3)
   15bea:	41075693          	srai	a3,a4,0x10
   15bee:	fc666ce3          	bltu	a2,t1,15bc6 <__mdiff+0xf0>
   15bf2:	137d                	addi	t1,t1,-1
   15bf4:	41f30333          	sub	t1,t1,t6
   15bf8:	ffc37313          	andi	t1,t1,-4
   15bfc:	00680733          	add	a4,a6,t1
   15c00:	e791                	bnez	a5,15c0c <__mdiff+0x136>
   15c02:	ffc72783          	lw	a5,-4(a4)
   15c06:	18fd                	addi	a7,a7,-1
   15c08:	1771                	addi	a4,a4,-4
   15c0a:	dfe5                	beqz	a5,15c02 <__mdiff+0x12c>
   15c0c:	40b2                	lw	ra,12(sp)
   15c0e:	4422                	lw	s0,8(sp)
   15c10:	01152823          	sw	a7,16(a0)
   15c14:	4492                	lw	s1,4(sp)
   15c16:	4902                	lw	s2,0(sp)
   15c18:	0141                	addi	sp,sp,16
   15c1a:	8082                	ret
   15c1c:	4905                	li	s2,1
   15c1e:	f006d0e3          	bgez	a3,15b1e <__mdiff+0x48>
   15c22:	b711                	j	15b26 <__mdiff+0x50>
   15c24:	00140713          	addi	a4,s0,1
   15c28:	070a                	slli	a4,a4,0x2
   15c2a:	b769                	j	15bb4 <__mdiff+0xde>
   15c2c:	4581                	li	a1,0
   15c2e:	f8aff0ef          	jal	153b8 <_Balloc>
   15c32:	cd1d                	beqz	a0,15c70 <__mdiff+0x19a>
   15c34:	40b2                	lw	ra,12(sp)
   15c36:	4422                	lw	s0,8(sp)
   15c38:	4785                	li	a5,1
   15c3a:	c91c                	sw	a5,16(a0)
   15c3c:	00052a23          	sw	zero,20(a0)
   15c40:	4492                	lw	s1,4(sp)
   15c42:	4902                	lw	s2,0(sp)
   15c44:	0141                	addi	sp,sp,16
   15c46:	8082                	ret
   15c48:	4701                	li	a4,0
   15c4a:	000f1463          	bnez	t5,15c52 <__mdiff+0x17c>
   15c4e:	972e                	add	a4,a4,a1
   15c50:	bf45                	j	15c00 <__mdiff+0x12a>
   15c52:	00241713          	slli	a4,s0,0x2
   15c56:	972e                	add	a4,a4,a1
   15c58:	b765                	j	15c00 <__mdiff+0x12a>
   15c5a:	66e9                	lui	a3,0x1a
   15c5c:	6569                	lui	a0,0x1a
   15c5e:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   15c62:	4601                	li	a2,0
   15c64:	24500593          	li	a1,581
   15c68:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   15c6c:	2e9000ef          	jal	16754 <__assert_func>
   15c70:	66e9                	lui	a3,0x1a
   15c72:	6569                	lui	a0,0x1a
   15c74:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   15c78:	4601                	li	a2,0
   15c7a:	23700593          	li	a1,567
   15c7e:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   15c82:	2d3000ef          	jal	16754 <__assert_func>

00015c86 <__ulp>:
   15c86:	1141                	addi	sp,sp,-16
   15c88:	a42a                	fsd	fa0,8(sp)
   15c8a:	4732                	lw	a4,12(sp)
   15c8c:	7ff007b7          	lui	a5,0x7ff00
   15c90:	8ff9                	and	a5,a5,a4
   15c92:	fcc00737          	lui	a4,0xfcc00
   15c96:	97ba                	add	a5,a5,a4
   15c98:	4701                	li	a4,0
   15c9a:	00f05763          	blez	a5,15ca8 <__ulp+0x22>
   15c9e:	c43a                	sw	a4,8(sp)
   15ca0:	c63e                	sw	a5,12(sp)
   15ca2:	2522                	fld	fa0,8(sp)
   15ca4:	0141                	addi	sp,sp,16
   15ca6:	8082                	ret
   15ca8:	40f007b3          	neg	a5,a5
   15cac:	87d1                	srai	a5,a5,0x14
   15cae:	474d                	li	a4,19
   15cb0:	00f74c63          	blt	a4,a5,15cc8 <__ulp+0x42>
   15cb4:	00080737          	lui	a4,0x80
   15cb8:	40f757b3          	sra	a5,a4,a5
   15cbc:	4701                	li	a4,0
   15cbe:	c43a                	sw	a4,8(sp)
   15cc0:	c63e                	sw	a5,12(sp)
   15cc2:	2522                	fld	fa0,8(sp)
   15cc4:	0141                	addi	sp,sp,16
   15cc6:	8082                	ret
   15cc8:	17b1                	addi	a5,a5,-20 # 7fefffec <__BSS_END__+0x7fee4590>
   15cca:	46f9                	li	a3,30
   15ccc:	4705                	li	a4,1
   15cce:	00f6c663          	blt	a3,a5,15cda <__ulp+0x54>
   15cd2:	80000737          	lui	a4,0x80000
   15cd6:	00f75733          	srl	a4,a4,a5
   15cda:	4781                	li	a5,0
   15cdc:	c43a                	sw	a4,8(sp)
   15cde:	c63e                	sw	a5,12(sp)
   15ce0:	2522                	fld	fa0,8(sp)
   15ce2:	0141                	addi	sp,sp,16
   15ce4:	8082                	ret

00015ce6 <__b2d>:
   15ce6:	7179                	addi	sp,sp,-48
   15ce8:	d226                	sw	s1,36(sp)
   15cea:	4904                	lw	s1,16(a0)
   15cec:	d422                	sw	s0,40(sp)
   15cee:	01450413          	addi	s0,a0,20
   15cf2:	048a                	slli	s1,s1,0x2
   15cf4:	94a2                	add	s1,s1,s0
   15cf6:	d04a                	sw	s2,32(sp)
   15cf8:	ffc4a903          	lw	s2,-4(s1)
   15cfc:	ce4e                	sw	s3,28(sp)
   15cfe:	cc52                	sw	s4,24(sp)
   15d00:	854a                	mv	a0,s2
   15d02:	89ae                	mv	s3,a1
   15d04:	d606                	sw	ra,44(sp)
   15d06:	8d7ff0ef          	jal	155dc <__hi0bits>
   15d0a:	02000713          	li	a4,32
   15d0e:	40a707b3          	sub	a5,a4,a0
   15d12:	00f9a023          	sw	a5,0(s3)
   15d16:	47a9                	li	a5,10
   15d18:	ffc48a13          	addi	s4,s1,-4
   15d1c:	06a7dc63          	bge	a5,a0,15d94 <__b2d+0xae>
   15d20:	ff550613          	addi	a2,a0,-11
   15d24:	03447d63          	bgeu	s0,s4,15d5e <__b2d+0x78>
   15d28:	ff84a783          	lw	a5,-8(s1)
   15d2c:	c629                	beqz	a2,15d76 <__b2d+0x90>
   15d2e:	40c706b3          	sub	a3,a4,a2
   15d32:	00d7d733          	srl	a4,a5,a3
   15d36:	00c91933          	sll	s2,s2,a2
   15d3a:	00e96933          	or	s2,s2,a4
   15d3e:	ff848593          	addi	a1,s1,-8
   15d42:	3ff00737          	lui	a4,0x3ff00
   15d46:	00e96733          	or	a4,s2,a4
   15d4a:	00c797b3          	sll	a5,a5,a2
   15d4e:	02b47863          	bgeu	s0,a1,15d7e <__b2d+0x98>
   15d52:	ff44a603          	lw	a2,-12(s1)
   15d56:	00d656b3          	srl	a3,a2,a3
   15d5a:	8fd5                	or	a5,a5,a3
   15d5c:	a00d                	j	15d7e <__b2d+0x98>
   15d5e:	47ad                	li	a5,11
   15d60:	00f50a63          	beq	a0,a5,15d74 <__b2d+0x8e>
   15d64:	00c91933          	sll	s2,s2,a2
   15d68:	3ff00737          	lui	a4,0x3ff00
   15d6c:	00e96733          	or	a4,s2,a4
   15d70:	4781                	li	a5,0
   15d72:	a031                	j	15d7e <__b2d+0x98>
   15d74:	4781                	li	a5,0
   15d76:	3ff00737          	lui	a4,0x3ff00
   15d7a:	00e96733          	or	a4,s2,a4
   15d7e:	50b2                	lw	ra,44(sp)
   15d80:	5422                	lw	s0,40(sp)
   15d82:	c43e                	sw	a5,8(sp)
   15d84:	c63a                	sw	a4,12(sp)
   15d86:	2522                	fld	fa0,8(sp)
   15d88:	5492                	lw	s1,36(sp)
   15d8a:	5902                	lw	s2,32(sp)
   15d8c:	49f2                	lw	s3,28(sp)
   15d8e:	4a62                	lw	s4,24(sp)
   15d90:	6145                	addi	sp,sp,48
   15d92:	8082                	ret
   15d94:	46ad                	li	a3,11
   15d96:	8e89                	sub	a3,a3,a0
   15d98:	3ff007b7          	lui	a5,0x3ff00
   15d9c:	00d95733          	srl	a4,s2,a3
   15da0:	8f5d                	or	a4,a4,a5
   15da2:	4781                	li	a5,0
   15da4:	01447663          	bgeu	s0,s4,15db0 <__b2d+0xca>
   15da8:	ff84a783          	lw	a5,-8(s1)
   15dac:	00d7d7b3          	srl	a5,a5,a3
   15db0:	0555                	addi	a0,a0,21
   15db2:	00a91933          	sll	s2,s2,a0
   15db6:	00f967b3          	or	a5,s2,a5
   15dba:	b7d1                	j	15d7e <__b2d+0x98>

00015dbc <__d2b>:
   15dbc:	7139                	addi	sp,sp,-64
   15dbe:	d452                	sw	s4,40(sp)
   15dc0:	a42a                	fsd	fa0,8(sp)
   15dc2:	8a2e                	mv	s4,a1
   15dc4:	4585                	li	a1,1
   15dc6:	da26                	sw	s1,52(sp)
   15dc8:	d64e                	sw	s3,44(sp)
   15dca:	d256                	sw	s5,36(sp)
   15dcc:	de06                	sw	ra,60(sp)
   15dce:	dc22                	sw	s0,56(sp)
   15dd0:	d84a                	sw	s2,48(sp)
   15dd2:	4aa2                	lw	s5,8(sp)
   15dd4:	44b2                	lw	s1,12(sp)
   15dd6:	89b2                	mv	s3,a2
   15dd8:	de0ff0ef          	jal	153b8 <_Balloc>
   15ddc:	c955                	beqz	a0,15e90 <__d2b+0xd4>
   15dde:	00100737          	lui	a4,0x100
   15de2:	0144d913          	srli	s2,s1,0x14
   15de6:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe45a3>
   15dea:	7ff97913          	andi	s2,s2,2047
   15dee:	842a                	mv	s0,a0
   15df0:	8fe5                	and	a5,a5,s1
   15df2:	00090363          	beqz	s2,15df8 <__d2b+0x3c>
   15df6:	8fd9                	or	a5,a5,a4
   15df8:	ce3e                	sw	a5,28(sp)
   15dfa:	040a9263          	bnez	s5,15e3e <__d2b+0x82>
   15dfe:	0868                	addi	a0,sp,28
   15e00:	831ff0ef          	jal	15630 <__lo0bits>
   15e04:	4772                	lw	a4,28(sp)
   15e06:	4485                	li	s1,1
   15e08:	c804                	sw	s1,16(s0)
   15e0a:	c858                	sw	a4,20(s0)
   15e0c:	02050793          	addi	a5,a0,32
   15e10:	06090063          	beqz	s2,15e70 <__d2b+0xb4>
   15e14:	bcd90913          	addi	s2,s2,-1075
   15e18:	993e                	add	s2,s2,a5
   15e1a:	03500493          	li	s1,53
   15e1e:	012a2023          	sw	s2,0(s4)
   15e22:	40f48533          	sub	a0,s1,a5
   15e26:	00a9a023          	sw	a0,0(s3)
   15e2a:	50f2                	lw	ra,60(sp)
   15e2c:	8522                	mv	a0,s0
   15e2e:	5462                	lw	s0,56(sp)
   15e30:	54d2                	lw	s1,52(sp)
   15e32:	5942                	lw	s2,48(sp)
   15e34:	59b2                	lw	s3,44(sp)
   15e36:	5a22                	lw	s4,40(sp)
   15e38:	5a92                	lw	s5,36(sp)
   15e3a:	6121                	addi	sp,sp,64
   15e3c:	8082                	ret
   15e3e:	0828                	addi	a0,sp,24
   15e40:	cc56                	sw	s5,24(sp)
   15e42:	feeff0ef          	jal	15630 <__lo0bits>
   15e46:	4772                	lw	a4,28(sp)
   15e48:	87aa                	mv	a5,a0
   15e4a:	c129                	beqz	a0,15e8c <__d2b+0xd0>
   15e4c:	4662                	lw	a2,24(sp)
   15e4e:	02000693          	li	a3,32
   15e52:	8e89                	sub	a3,a3,a0
   15e54:	00d716b3          	sll	a3,a4,a3
   15e58:	00a75733          	srl	a4,a4,a0
   15e5c:	8ed1                	or	a3,a3,a2
   15e5e:	ce3a                	sw	a4,28(sp)
   15e60:	00e034b3          	snez	s1,a4
   15e64:	0485                	addi	s1,s1,1
   15e66:	c854                	sw	a3,20(s0)
   15e68:	cc18                	sw	a4,24(s0)
   15e6a:	c804                	sw	s1,16(s0)
   15e6c:	fa0914e3          	bnez	s2,15e14 <__d2b+0x58>
   15e70:	00249713          	slli	a4,s1,0x2
   15e74:	9722                	add	a4,a4,s0
   15e76:	4b08                	lw	a0,16(a4)
   15e78:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee4172>
   15e7c:	00fa2023          	sw	a5,0(s4)
   15e80:	f5cff0ef          	jal	155dc <__hi0bits>
   15e84:	0496                	slli	s1,s1,0x5
   15e86:	40a48533          	sub	a0,s1,a0
   15e8a:	bf71                	j	15e26 <__d2b+0x6a>
   15e8c:	46e2                	lw	a3,24(sp)
   15e8e:	bfc9                	j	15e60 <__d2b+0xa4>
   15e90:	66e9                	lui	a3,0x1a
   15e92:	6569                	lui	a0,0x1a
   15e94:	12c68693          	addi	a3,a3,300 # 1a12c <__clzsi2+0x11a>
   15e98:	4601                	li	a2,0
   15e9a:	30f00593          	li	a1,783
   15e9e:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x18e>
   15ea2:	0b3000ef          	jal	16754 <__assert_func>

00015ea6 <__ratio>:
   15ea6:	7179                	addi	sp,sp,-48
   15ea8:	d422                	sw	s0,40(sp)
   15eaa:	842e                	mv	s0,a1
   15eac:	082c                	addi	a1,sp,24
   15eae:	d606                	sw	ra,44(sp)
   15eb0:	d226                	sw	s1,36(sp)
   15eb2:	84aa                	mv	s1,a0
   15eb4:	e33ff0ef          	jal	15ce6 <__b2d>
   15eb8:	086c                	addi	a1,sp,28
   15eba:	8522                	mv	a0,s0
   15ebc:	a02a                	fsd	fa0,0(sp)
   15ebe:	a42a                	fsd	fa0,8(sp)
   15ec0:	e27ff0ef          	jal	15ce6 <__b2d>
   15ec4:	4818                	lw	a4,16(s0)
   15ec6:	489c                	lw	a5,16(s1)
   15ec8:	45f2                	lw	a1,28(sp)
   15eca:	a02a                	fsd	fa0,0(sp)
   15ecc:	8f99                	sub	a5,a5,a4
   15ece:	4762                	lw	a4,24(sp)
   15ed0:	0796                	slli	a5,a5,0x5
   15ed2:	8f0d                	sub	a4,a4,a1
   15ed4:	97ba                	add	a5,a5,a4
   15ed6:	00f05f63          	blez	a5,15ef4 <__ratio+0x4e>
   15eda:	46b2                	lw	a3,12(sp)
   15edc:	07d2                	slli	a5,a5,0x14
   15ede:	2702                	fld	fa4,0(sp)
   15ee0:	97b6                	add	a5,a5,a3
   15ee2:	c63e                	sw	a5,12(sp)
   15ee4:	27a2                	fld	fa5,8(sp)
   15ee6:	50b2                	lw	ra,44(sp)
   15ee8:	5422                	lw	s0,40(sp)
   15eea:	5492                	lw	s1,36(sp)
   15eec:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15ef0:	6145                	addi	sp,sp,48
   15ef2:	8082                	ret
   15ef4:	4692                	lw	a3,4(sp)
   15ef6:	07d2                	slli	a5,a5,0x14
   15ef8:	27a2                	fld	fa5,8(sp)
   15efa:	40f687b3          	sub	a5,a3,a5
   15efe:	c23e                	sw	a5,4(sp)
   15f00:	2702                	fld	fa4,0(sp)
   15f02:	50b2                	lw	ra,44(sp)
   15f04:	5422                	lw	s0,40(sp)
   15f06:	5492                	lw	s1,36(sp)
   15f08:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15f0c:	6145                	addi	sp,sp,48
   15f0e:	8082                	ret

00015f10 <_mprec_log10>:
   15f10:	47dd                	li	a5,23
   15f12:	00a7db63          	bge	a5,a0,15f28 <_mprec_log10+0x18>
   15f16:	ed81b507          	fld	fa0,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   15f1a:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   15f1e:	157d                	addi	a0,a0,-1
   15f20:	12f57553          	fmul.d	fa0,fa0,fa5
   15f24:	fd6d                	bnez	a0,15f1e <_mprec_log10+0xe>
   15f26:	8082                	ret
   15f28:	67e9                	lui	a5,0x1a
   15f2a:	050e                	slli	a0,a0,0x3
   15f2c:	60078793          	addi	a5,a5,1536 # 1a600 <__mprec_tens>
   15f30:	97aa                	add	a5,a5,a0
   15f32:	2388                	fld	fa0,0(a5)
   15f34:	8082                	ret

00015f36 <__copybits>:
   15f36:	4a14                	lw	a3,16(a2)
   15f38:	15fd                	addi	a1,a1,-1
   15f3a:	8595                	srai	a1,a1,0x5
   15f3c:	0585                	addi	a1,a1,1
   15f3e:	01460793          	addi	a5,a2,20
   15f42:	068a                	slli	a3,a3,0x2
   15f44:	058a                	slli	a1,a1,0x2
   15f46:	96be                	add	a3,a3,a5
   15f48:	95aa                	add	a1,a1,a0
   15f4a:	02d7f163          	bgeu	a5,a3,15f6c <__copybits+0x36>
   15f4e:	872a                	mv	a4,a0
   15f50:	0007a803          	lw	a6,0(a5)
   15f54:	0791                	addi	a5,a5,4
   15f56:	0711                	addi	a4,a4,4
   15f58:	ff072e23          	sw	a6,-4(a4)
   15f5c:	fed7eae3          	bltu	a5,a3,15f50 <__copybits+0x1a>
   15f60:	40c687b3          	sub	a5,a3,a2
   15f64:	17ad                	addi	a5,a5,-21
   15f66:	9bf1                	andi	a5,a5,-4
   15f68:	0791                	addi	a5,a5,4
   15f6a:	953e                	add	a0,a0,a5
   15f6c:	00b57763          	bgeu	a0,a1,15f7a <__copybits+0x44>
   15f70:	0511                	addi	a0,a0,4
   15f72:	fe052e23          	sw	zero,-4(a0)
   15f76:	feb56de3          	bltu	a0,a1,15f70 <__copybits+0x3a>
   15f7a:	8082                	ret

00015f7c <__any_on>:
   15f7c:	4918                	lw	a4,16(a0)
   15f7e:	4055d613          	srai	a2,a1,0x5
   15f82:	01450693          	addi	a3,a0,20
   15f86:	00c75d63          	bge	a4,a2,15fa0 <__any_on+0x24>
   15f8a:	070a                	slli	a4,a4,0x2
   15f8c:	00e687b3          	add	a5,a3,a4
   15f90:	02f6f863          	bgeu	a3,a5,15fc0 <__any_on+0x44>
   15f94:	ffc7a703          	lw	a4,-4(a5)
   15f98:	17f1                	addi	a5,a5,-4
   15f9a:	db7d                	beqz	a4,15f90 <__any_on+0x14>
   15f9c:	4505                	li	a0,1
   15f9e:	8082                	ret
   15fa0:	00261793          	slli	a5,a2,0x2
   15fa4:	97b6                	add	a5,a5,a3
   15fa6:	fee655e3          	bge	a2,a4,15f90 <__any_on+0x14>
   15faa:	89fd                	andi	a1,a1,31
   15fac:	d1f5                	beqz	a1,15f90 <__any_on+0x14>
   15fae:	4390                	lw	a2,0(a5)
   15fb0:	4505                	li	a0,1
   15fb2:	00b65733          	srl	a4,a2,a1
   15fb6:	00b71733          	sll	a4,a4,a1
   15fba:	fce60be3          	beq	a2,a4,15f90 <__any_on+0x14>
   15fbe:	8082                	ret
   15fc0:	4501                	li	a0,0
   15fc2:	8082                	ret

00015fc4 <_realloc_r>:
   15fc4:	7179                	addi	sp,sp,-48
   15fc6:	d226                	sw	s1,36(sp)
   15fc8:	d606                	sw	ra,44(sp)
   15fca:	84b2                	mv	s1,a2
   15fcc:	14058d63          	beqz	a1,16126 <_realloc_r+0x162>
   15fd0:	d422                	sw	s0,40(sp)
   15fd2:	d04a                	sw	s2,32(sp)
   15fd4:	842e                	mv	s0,a1
   15fd6:	ce4e                	sw	s3,28(sp)
   15fd8:	ca56                	sw	s5,20(sp)
   15fda:	cc52                	sw	s4,24(sp)
   15fdc:	892a                	mv	s2,a0
   15fde:	fd8fb0ef          	jal	117b6 <__malloc_lock>
   15fe2:	ffc42703          	lw	a4,-4(s0)
   15fe6:	00b48793          	addi	a5,s1,11
   15fea:	46d9                	li	a3,22
   15fec:	ff840a93          	addi	s5,s0,-8
   15ff0:	ffc77993          	andi	s3,a4,-4
   15ff4:	0af6ff63          	bgeu	a3,a5,160b2 <_realloc_r+0xee>
   15ff8:	ff87fa13          	andi	s4,a5,-8
   15ffc:	0a07ce63          	bltz	a5,160b8 <_realloc_r+0xf4>
   16000:	0a9a6c63          	bltu	s4,s1,160b8 <_realloc_r+0xf4>
   16004:	0d49d563          	bge	s3,s4,160ce <_realloc_r+0x10a>
   16008:	67ed                	lui	a5,0x1b
   1600a:	c462                	sw	s8,8(sp)
   1600c:	14078c13          	addi	s8,a5,320 # 1b140 <__malloc_av_>
   16010:	008c2603          	lw	a2,8(s8)
   16014:	013a86b3          	add	a3,s5,s3
   16018:	42dc                	lw	a5,4(a3)
   1601a:	12d60e63          	beq	a2,a3,16156 <_realloc_r+0x192>
   1601e:	ffe7f613          	andi	a2,a5,-2
   16022:	9636                	add	a2,a2,a3
   16024:	4250                	lw	a2,4(a2)
   16026:	8a05                	andi	a2,a2,1
   16028:	e27d                	bnez	a2,1610e <_realloc_r+0x14a>
   1602a:	9bf1                	andi	a5,a5,-4
   1602c:	00f98633          	add	a2,s3,a5
   16030:	09465963          	bge	a2,s4,160c2 <_realloc_r+0xfe>
   16034:	8b05                	andi	a4,a4,1
   16036:	e70d                	bnez	a4,16060 <_realloc_r+0x9c>
   16038:	c65e                	sw	s7,12(sp)
   1603a:	ff842b83          	lw	s7,-8(s0)
   1603e:	c85a                	sw	s6,16(sp)
   16040:	417a8bb3          	sub	s7,s5,s7
   16044:	004ba703          	lw	a4,4(s7)
   16048:	9b71                	andi	a4,a4,-4
   1604a:	97ba                	add	a5,a5,a4
   1604c:	01378b33          	add	s6,a5,s3
   16050:	234b5f63          	bge	s6,s4,1628e <_realloc_r+0x2ca>
   16054:	00e98b33          	add	s6,s3,a4
   16058:	1d4b5463          	bge	s6,s4,16220 <_realloc_r+0x25c>
   1605c:	4b42                	lw	s6,16(sp)
   1605e:	4bb2                	lw	s7,12(sp)
   16060:	85a6                	mv	a1,s1
   16062:	854a                	mv	a0,s2
   16064:	9aefb0ef          	jal	11212 <_malloc_r>
   16068:	84aa                	mv	s1,a0
   1606a:	2e050063          	beqz	a0,1634a <_realloc_r+0x386>
   1606e:	ffc42783          	lw	a5,-4(s0)
   16072:	ff850713          	addi	a4,a0,-8
   16076:	9bf9                	andi	a5,a5,-2
   16078:	97d6                	add	a5,a5,s5
   1607a:	18e78d63          	beq	a5,a4,16214 <_realloc_r+0x250>
   1607e:	ffc98613          	addi	a2,s3,-4
   16082:	02400793          	li	a5,36
   16086:	20c7e063          	bltu	a5,a2,16286 <_realloc_r+0x2c2>
   1608a:	474d                	li	a4,19
   1608c:	16c76863          	bltu	a4,a2,161fc <_realloc_r+0x238>
   16090:	87aa                	mv	a5,a0
   16092:	8722                	mv	a4,s0
   16094:	4314                	lw	a3,0(a4)
   16096:	c394                	sw	a3,0(a5)
   16098:	4354                	lw	a3,4(a4)
   1609a:	c3d4                	sw	a3,4(a5)
   1609c:	4718                	lw	a4,8(a4)
   1609e:	c798                	sw	a4,8(a5)
   160a0:	85a2                	mv	a1,s0
   160a2:	854a                	mv	a0,s2
   160a4:	f4dfa0ef          	jal	10ff0 <_free_r>
   160a8:	854a                	mv	a0,s2
   160aa:	f0efb0ef          	jal	117b8 <__malloc_unlock>
   160ae:	4c22                	lw	s8,8(sp)
   160b0:	a0a9                	j	160fa <_realloc_r+0x136>
   160b2:	4a41                	li	s4,16
   160b4:	f49a78e3          	bgeu	s4,s1,16004 <_realloc_r+0x40>
   160b8:	47b1                	li	a5,12
   160ba:	00f92023          	sw	a5,0(s2)
   160be:	4481                	li	s1,0
   160c0:	a82d                	j	160fa <_realloc_r+0x136>
   160c2:	46dc                	lw	a5,12(a3)
   160c4:	4698                	lw	a4,8(a3)
   160c6:	4c22                	lw	s8,8(sp)
   160c8:	89b2                	mv	s3,a2
   160ca:	c75c                	sw	a5,12(a4)
   160cc:	c798                	sw	a4,8(a5)
   160ce:	004aa783          	lw	a5,4(s5)
   160d2:	414986b3          	sub	a3,s3,s4
   160d6:	463d                	li	a2,15
   160d8:	8b85                	andi	a5,a5,1
   160da:	013a8733          	add	a4,s5,s3
   160de:	04d66a63          	bltu	a2,a3,16132 <_realloc_r+0x16e>
   160e2:	0137e7b3          	or	a5,a5,s3
   160e6:	00faa223          	sw	a5,4(s5)
   160ea:	435c                	lw	a5,4(a4)
   160ec:	0017e793          	ori	a5,a5,1
   160f0:	c35c                	sw	a5,4(a4)
   160f2:	854a                	mv	a0,s2
   160f4:	ec4fb0ef          	jal	117b8 <__malloc_unlock>
   160f8:	84a2                	mv	s1,s0
   160fa:	5422                	lw	s0,40(sp)
   160fc:	50b2                	lw	ra,44(sp)
   160fe:	5902                	lw	s2,32(sp)
   16100:	49f2                	lw	s3,28(sp)
   16102:	4a62                	lw	s4,24(sp)
   16104:	4ad2                	lw	s5,20(sp)
   16106:	8526                	mv	a0,s1
   16108:	5492                	lw	s1,36(sp)
   1610a:	6145                	addi	sp,sp,48
   1610c:	8082                	ret
   1610e:	8b05                	andi	a4,a4,1
   16110:	fb21                	bnez	a4,16060 <_realloc_r+0x9c>
   16112:	c65e                	sw	s7,12(sp)
   16114:	ff842b83          	lw	s7,-8(s0)
   16118:	c85a                	sw	s6,16(sp)
   1611a:	417a8bb3          	sub	s7,s5,s7
   1611e:	004ba703          	lw	a4,4(s7)
   16122:	9b71                	andi	a4,a4,-4
   16124:	bf05                	j	16054 <_realloc_r+0x90>
   16126:	50b2                	lw	ra,44(sp)
   16128:	5492                	lw	s1,36(sp)
   1612a:	85b2                	mv	a1,a2
   1612c:	6145                	addi	sp,sp,48
   1612e:	8e4fb06f          	j	11212 <_malloc_r>
   16132:	0147e7b3          	or	a5,a5,s4
   16136:	00faa223          	sw	a5,4(s5)
   1613a:	014a85b3          	add	a1,s5,s4
   1613e:	0016e693          	ori	a3,a3,1
   16142:	c1d4                	sw	a3,4(a1)
   16144:	435c                	lw	a5,4(a4)
   16146:	05a1                	addi	a1,a1,8
   16148:	854a                	mv	a0,s2
   1614a:	0017e793          	ori	a5,a5,1
   1614e:	c35c                	sw	a5,4(a4)
   16150:	ea1fa0ef          	jal	10ff0 <_free_r>
   16154:	bf79                	j	160f2 <_realloc_r+0x12e>
   16156:	9bf1                	andi	a5,a5,-4
   16158:	013786b3          	add	a3,a5,s3
   1615c:	010a0613          	addi	a2,s4,16
   16160:	1ac6db63          	bge	a3,a2,16316 <_realloc_r+0x352>
   16164:	8b05                	andi	a4,a4,1
   16166:	ee071de3          	bnez	a4,16060 <_realloc_r+0x9c>
   1616a:	c65e                	sw	s7,12(sp)
   1616c:	ff842b83          	lw	s7,-8(s0)
   16170:	c85a                	sw	s6,16(sp)
   16172:	417a8bb3          	sub	s7,s5,s7
   16176:	004ba703          	lw	a4,4(s7)
   1617a:	9b71                	andi	a4,a4,-4
   1617c:	97ba                	add	a5,a5,a4
   1617e:	01378b33          	add	s6,a5,s3
   16182:	eccb49e3          	blt	s6,a2,16054 <_realloc_r+0x90>
   16186:	00cba783          	lw	a5,12(s7)
   1618a:	008ba703          	lw	a4,8(s7)
   1618e:	ffc98613          	addi	a2,s3,-4
   16192:	02400693          	li	a3,36
   16196:	c75c                	sw	a5,12(a4)
   16198:	c798                	sw	a4,8(a5)
   1619a:	008b8493          	addi	s1,s7,8
   1619e:	1cc6e563          	bltu	a3,a2,16368 <_realloc_r+0x3a4>
   161a2:	474d                	li	a4,19
   161a4:	87a6                	mv	a5,s1
   161a6:	00c77e63          	bgeu	a4,a2,161c2 <_realloc_r+0x1fe>
   161aa:	4018                	lw	a4,0(s0)
   161ac:	47ed                	li	a5,27
   161ae:	00eba423          	sw	a4,8(s7)
   161b2:	4058                	lw	a4,4(s0)
   161b4:	00eba623          	sw	a4,12(s7)
   161b8:	1ac7ed63          	bltu	a5,a2,16372 <_realloc_r+0x3ae>
   161bc:	0421                	addi	s0,s0,8
   161be:	010b8793          	addi	a5,s7,16
   161c2:	4018                	lw	a4,0(s0)
   161c4:	c398                	sw	a4,0(a5)
   161c6:	4058                	lw	a4,4(s0)
   161c8:	c3d8                	sw	a4,4(a5)
   161ca:	4418                	lw	a4,8(s0)
   161cc:	c798                	sw	a4,8(a5)
   161ce:	014b8733          	add	a4,s7,s4
   161d2:	414b0b33          	sub	s6,s6,s4
   161d6:	00ec2423          	sw	a4,8(s8)
   161da:	001b6793          	ori	a5,s6,1
   161de:	c35c                	sw	a5,4(a4)
   161e0:	004ba783          	lw	a5,4(s7)
   161e4:	854a                	mv	a0,s2
   161e6:	8b85                	andi	a5,a5,1
   161e8:	0147e7b3          	or	a5,a5,s4
   161ec:	00fba223          	sw	a5,4(s7)
   161f0:	dc8fb0ef          	jal	117b8 <__malloc_unlock>
   161f4:	4b42                	lw	s6,16(sp)
   161f6:	4bb2                	lw	s7,12(sp)
   161f8:	4c22                	lw	s8,8(sp)
   161fa:	b701                	j	160fa <_realloc_r+0x136>
   161fc:	4014                	lw	a3,0(s0)
   161fe:	476d                	li	a4,27
   16200:	c114                	sw	a3,0(a0)
   16202:	4054                	lw	a3,4(s0)
   16204:	c154                	sw	a3,4(a0)
   16206:	0ec76d63          	bltu	a4,a2,16300 <_realloc_r+0x33c>
   1620a:	00840713          	addi	a4,s0,8
   1620e:	00850793          	addi	a5,a0,8
   16212:	b549                	j	16094 <_realloc_r+0xd0>
   16214:	ffc52783          	lw	a5,-4(a0)
   16218:	4c22                	lw	s8,8(sp)
   1621a:	9bf1                	andi	a5,a5,-4
   1621c:	99be                	add	s3,s3,a5
   1621e:	bd45                	j	160ce <_realloc_r+0x10a>
   16220:	00cba783          	lw	a5,12(s7)
   16224:	008ba703          	lw	a4,8(s7)
   16228:	ffc98613          	addi	a2,s3,-4
   1622c:	02400693          	li	a3,36
   16230:	c75c                	sw	a5,12(a4)
   16232:	c798                	sw	a4,8(a5)
   16234:	008b8493          	addi	s1,s7,8
   16238:	0ac6ef63          	bltu	a3,a2,162f6 <_realloc_r+0x332>
   1623c:	474d                	li	a4,19
   1623e:	87a6                	mv	a5,s1
   16240:	02c77663          	bgeu	a4,a2,1626c <_realloc_r+0x2a8>
   16244:	4018                	lw	a4,0(s0)
   16246:	47ed                	li	a5,27
   16248:	00eba423          	sw	a4,8(s7)
   1624c:	4058                	lw	a4,4(s0)
   1624e:	00eba623          	sw	a4,12(s7)
   16252:	0ec7f863          	bgeu	a5,a2,16342 <_realloc_r+0x37e>
   16256:	441c                	lw	a5,8(s0)
   16258:	00fba823          	sw	a5,16(s7)
   1625c:	445c                	lw	a5,12(s0)
   1625e:	00fbaa23          	sw	a5,20(s7)
   16262:	06d60f63          	beq	a2,a3,162e0 <_realloc_r+0x31c>
   16266:	0441                	addi	s0,s0,16
   16268:	018b8793          	addi	a5,s7,24
   1626c:	4018                	lw	a4,0(s0)
   1626e:	c398                	sw	a4,0(a5)
   16270:	4058                	lw	a4,4(s0)
   16272:	c3d8                	sw	a4,4(a5)
   16274:	4418                	lw	a4,8(s0)
   16276:	c798                	sw	a4,8(a5)
   16278:	89da                	mv	s3,s6
   1627a:	8ade                	mv	s5,s7
   1627c:	4b42                	lw	s6,16(sp)
   1627e:	4bb2                	lw	s7,12(sp)
   16280:	4c22                	lw	s8,8(sp)
   16282:	8426                	mv	s0,s1
   16284:	b5a9                	j	160ce <_realloc_r+0x10a>
   16286:	85a2                	mv	a1,s0
   16288:	a15fd0ef          	jal	13c9c <memmove>
   1628c:	bd11                	j	160a0 <_realloc_r+0xdc>
   1628e:	46dc                	lw	a5,12(a3)
   16290:	4698                	lw	a4,8(a3)
   16292:	ffc98613          	addi	a2,s3,-4
   16296:	02400693          	li	a3,36
   1629a:	c75c                	sw	a5,12(a4)
   1629c:	c798                	sw	a4,8(a5)
   1629e:	008ba703          	lw	a4,8(s7)
   162a2:	00cba783          	lw	a5,12(s7)
   162a6:	008b8493          	addi	s1,s7,8
   162aa:	c75c                	sw	a5,12(a4)
   162ac:	c798                	sw	a4,8(a5)
   162ae:	04c6e463          	bltu	a3,a2,162f6 <_realloc_r+0x332>
   162b2:	474d                	li	a4,19
   162b4:	87a6                	mv	a5,s1
   162b6:	fac77be3          	bgeu	a4,a2,1626c <_realloc_r+0x2a8>
   162ba:	4018                	lw	a4,0(s0)
   162bc:	47ed                	li	a5,27
   162be:	00eba423          	sw	a4,8(s7)
   162c2:	4058                	lw	a4,4(s0)
   162c4:	00eba623          	sw	a4,12(s7)
   162c8:	06c7fd63          	bgeu	a5,a2,16342 <_realloc_r+0x37e>
   162cc:	4418                	lw	a4,8(s0)
   162ce:	02400793          	li	a5,36
   162d2:	00eba823          	sw	a4,16(s7)
   162d6:	4458                	lw	a4,12(s0)
   162d8:	00ebaa23          	sw	a4,20(s7)
   162dc:	f8f615e3          	bne	a2,a5,16266 <_realloc_r+0x2a2>
   162e0:	4818                	lw	a4,16(s0)
   162e2:	020b8793          	addi	a5,s7,32
   162e6:	0461                	addi	s0,s0,24
   162e8:	00ebac23          	sw	a4,24(s7)
   162ec:	ffc42703          	lw	a4,-4(s0)
   162f0:	00ebae23          	sw	a4,28(s7)
   162f4:	bfa5                	j	1626c <_realloc_r+0x2a8>
   162f6:	85a2                	mv	a1,s0
   162f8:	8526                	mv	a0,s1
   162fa:	9a3fd0ef          	jal	13c9c <memmove>
   162fe:	bfad                	j	16278 <_realloc_r+0x2b4>
   16300:	4418                	lw	a4,8(s0)
   16302:	c518                	sw	a4,8(a0)
   16304:	4458                	lw	a4,12(s0)
   16306:	c558                	sw	a4,12(a0)
   16308:	04f60763          	beq	a2,a5,16356 <_realloc_r+0x392>
   1630c:	01040713          	addi	a4,s0,16
   16310:	01050793          	addi	a5,a0,16
   16314:	b341                	j	16094 <_realloc_r+0xd0>
   16316:	9ad2                	add	s5,s5,s4
   16318:	414686b3          	sub	a3,a3,s4
   1631c:	015c2423          	sw	s5,8(s8)
   16320:	0016e793          	ori	a5,a3,1
   16324:	00faa223          	sw	a5,4(s5)
   16328:	ffc42783          	lw	a5,-4(s0)
   1632c:	854a                	mv	a0,s2
   1632e:	84a2                	mv	s1,s0
   16330:	8b85                	andi	a5,a5,1
   16332:	0147e7b3          	or	a5,a5,s4
   16336:	fef42e23          	sw	a5,-4(s0)
   1633a:	c7efb0ef          	jal	117b8 <__malloc_unlock>
   1633e:	4c22                	lw	s8,8(sp)
   16340:	bb6d                	j	160fa <_realloc_r+0x136>
   16342:	0421                	addi	s0,s0,8
   16344:	010b8793          	addi	a5,s7,16
   16348:	b715                	j	1626c <_realloc_r+0x2a8>
   1634a:	854a                	mv	a0,s2
   1634c:	c6cfb0ef          	jal	117b8 <__malloc_unlock>
   16350:	4481                	li	s1,0
   16352:	4c22                	lw	s8,8(sp)
   16354:	b35d                	j	160fa <_realloc_r+0x136>
   16356:	4814                	lw	a3,16(s0)
   16358:	01840713          	addi	a4,s0,24
   1635c:	01850793          	addi	a5,a0,24
   16360:	c914                	sw	a3,16(a0)
   16362:	4854                	lw	a3,20(s0)
   16364:	c954                	sw	a3,20(a0)
   16366:	b33d                	j	16094 <_realloc_r+0xd0>
   16368:	85a2                	mv	a1,s0
   1636a:	8526                	mv	a0,s1
   1636c:	931fd0ef          	jal	13c9c <memmove>
   16370:	bdb9                	j	161ce <_realloc_r+0x20a>
   16372:	441c                	lw	a5,8(s0)
   16374:	00fba823          	sw	a5,16(s7)
   16378:	445c                	lw	a5,12(s0)
   1637a:	00fbaa23          	sw	a5,20(s7)
   1637e:	00d60663          	beq	a2,a3,1638a <_realloc_r+0x3c6>
   16382:	0441                	addi	s0,s0,16
   16384:	018b8793          	addi	a5,s7,24
   16388:	bd2d                	j	161c2 <_realloc_r+0x1fe>
   1638a:	4818                	lw	a4,16(s0)
   1638c:	020b8793          	addi	a5,s7,32
   16390:	00ebac23          	sw	a4,24(s7)
   16394:	4858                	lw	a4,20(s0)
   16396:	0461                	addi	s0,s0,24
   16398:	00ebae23          	sw	a4,28(s7)
   1639c:	b51d                	j	161c2 <_realloc_r+0x1fe>

0001639e <__smakebuf_r>:
   1639e:	00c59783          	lh	a5,12(a1)
   163a2:	7119                	addi	sp,sp,-128
   163a4:	dca2                	sw	s0,120(sp)
   163a6:	de86                	sw	ra,124(sp)
   163a8:	0027f713          	andi	a4,a5,2
   163ac:	842e                	mv	s0,a1
   163ae:	cb19                	beqz	a4,163c4 <__smakebuf_r+0x26>
   163b0:	04358793          	addi	a5,a1,67
   163b4:	c19c                	sw	a5,0(a1)
   163b6:	c99c                	sw	a5,16(a1)
   163b8:	4785                	li	a5,1
   163ba:	c9dc                	sw	a5,20(a1)
   163bc:	50f6                	lw	ra,124(sp)
   163be:	5466                	lw	s0,120(sp)
   163c0:	6109                	addi	sp,sp,128
   163c2:	8082                	ret
   163c4:	00e59583          	lh	a1,14(a1)
   163c8:	daa6                	sw	s1,116(sp)
   163ca:	d8ca                	sw	s2,112(sp)
   163cc:	d6ce                	sw	s3,108(sp)
   163ce:	d4d2                	sw	s4,104(sp)
   163d0:	84aa                	mv	s1,a0
   163d2:	0605c263          	bltz	a1,16436 <__smakebuf_r+0x98>
   163d6:	0030                	addi	a2,sp,8
   163d8:	22fd                	jal	165c6 <_fstat_r>
   163da:	04054c63          	bltz	a0,16432 <__smakebuf_r+0x94>
   163de:	47b2                	lw	a5,12(sp)
   163e0:	693d                	lui	s2,0xf
   163e2:	6985                	lui	s3,0x1
   163e4:	00f97933          	and	s2,s2,a5
   163e8:	77f9                	lui	a5,0xffffe
   163ea:	993e                	add	s2,s2,a5
   163ec:	00193913          	seqz	s2,s2
   163f0:	40000a13          	li	s4,1024
   163f4:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   163f8:	85d2                	mv	a1,s4
   163fa:	8526                	mv	a0,s1
   163fc:	e17fa0ef          	jal	11212 <_malloc_r>
   16400:	00c41783          	lh	a5,12(s0)
   16404:	c539                	beqz	a0,16452 <__smakebuf_r+0xb4>
   16406:	0807e793          	ori	a5,a5,128
   1640a:	c008                	sw	a0,0(s0)
   1640c:	c808                	sw	a0,16(s0)
   1640e:	00f41623          	sh	a5,12(s0)
   16412:	01442a23          	sw	s4,20(s0)
   16416:	06091563          	bnez	s2,16480 <__smakebuf_r+0xe2>
   1641a:	0137e7b3          	or	a5,a5,s3
   1641e:	50f6                	lw	ra,124(sp)
   16420:	00f41623          	sh	a5,12(s0)
   16424:	5466                	lw	s0,120(sp)
   16426:	54d6                	lw	s1,116(sp)
   16428:	5946                	lw	s2,112(sp)
   1642a:	59b6                	lw	s3,108(sp)
   1642c:	5a26                	lw	s4,104(sp)
   1642e:	6109                	addi	sp,sp,128
   16430:	8082                	ret
   16432:	00c41783          	lh	a5,12(s0)
   16436:	0807f793          	andi	a5,a5,128
   1643a:	4901                	li	s2,0
   1643c:	cf95                	beqz	a5,16478 <__smakebuf_r+0xda>
   1643e:	04000a13          	li	s4,64
   16442:	85d2                	mv	a1,s4
   16444:	8526                	mv	a0,s1
   16446:	dcdfa0ef          	jal	11212 <_malloc_r>
   1644a:	00c41783          	lh	a5,12(s0)
   1644e:	4981                	li	s3,0
   16450:	f95d                	bnez	a0,16406 <__smakebuf_r+0x68>
   16452:	2007f713          	andi	a4,a5,512
   16456:	ef0d                	bnez	a4,16490 <__smakebuf_r+0xf2>
   16458:	9bf1                	andi	a5,a5,-4
   1645a:	0027e793          	ori	a5,a5,2
   1645e:	04340713          	addi	a4,s0,67
   16462:	00f41623          	sh	a5,12(s0)
   16466:	4785                	li	a5,1
   16468:	54d6                	lw	s1,116(sp)
   1646a:	5946                	lw	s2,112(sp)
   1646c:	59b6                	lw	s3,108(sp)
   1646e:	5a26                	lw	s4,104(sp)
   16470:	c018                	sw	a4,0(s0)
   16472:	c818                	sw	a4,16(s0)
   16474:	c85c                	sw	a5,20(s0)
   16476:	b799                	j	163bc <__smakebuf_r+0x1e>
   16478:	40000a13          	li	s4,1024
   1647c:	4981                	li	s3,0
   1647e:	bfad                	j	163f8 <__smakebuf_r+0x5a>
   16480:	00e41583          	lh	a1,14(s0)
   16484:	8526                	mv	a0,s1
   16486:	2aad                	jal	16600 <_isatty_r>
   16488:	e909                	bnez	a0,1649a <__smakebuf_r+0xfc>
   1648a:	00c41783          	lh	a5,12(s0)
   1648e:	b771                	j	1641a <__smakebuf_r+0x7c>
   16490:	54d6                	lw	s1,116(sp)
   16492:	5946                	lw	s2,112(sp)
   16494:	59b6                	lw	s3,108(sp)
   16496:	5a26                	lw	s4,104(sp)
   16498:	b715                	j	163bc <__smakebuf_r+0x1e>
   1649a:	00c45783          	lhu	a5,12(s0)
   1649e:	9bf1                	andi	a5,a5,-4
   164a0:	0017e793          	ori	a5,a5,1
   164a4:	07c2                	slli	a5,a5,0x10
   164a6:	87c1                	srai	a5,a5,0x10
   164a8:	bf8d                	j	1641a <__smakebuf_r+0x7c>

000164aa <__swhatbuf_r>:
   164aa:	7159                	addi	sp,sp,-112
   164ac:	d4a2                	sw	s0,104(sp)
   164ae:	842e                	mv	s0,a1
   164b0:	00e59583          	lh	a1,14(a1)
   164b4:	d2a6                	sw	s1,100(sp)
   164b6:	d0ca                	sw	s2,96(sp)
   164b8:	d686                	sw	ra,108(sp)
   164ba:	84b2                	mv	s1,a2
   164bc:	8936                	mv	s2,a3
   164be:	0205cb63          	bltz	a1,164f4 <__swhatbuf_r+0x4a>
   164c2:	0030                	addi	a2,sp,8
   164c4:	2209                	jal	165c6 <_fstat_r>
   164c6:	02054763          	bltz	a0,164f4 <__swhatbuf_r+0x4a>
   164ca:	4732                	lw	a4,12(sp)
   164cc:	67bd                	lui	a5,0xf
   164ce:	50b6                	lw	ra,108(sp)
   164d0:	8ff9                	and	a5,a5,a4
   164d2:	7779                	lui	a4,0xffffe
   164d4:	97ba                	add	a5,a5,a4
   164d6:	5426                	lw	s0,104(sp)
   164d8:	0017b793          	seqz	a5,a5
   164dc:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   164e0:	40000713          	li	a4,1024
   164e4:	c098                	sw	a4,0(s1)
   164e6:	6505                	lui	a0,0x1
   164e8:	5496                	lw	s1,100(sp)
   164ea:	5906                	lw	s2,96(sp)
   164ec:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   164f0:	6165                	addi	sp,sp,112
   164f2:	8082                	ret
   164f4:	00c45783          	lhu	a5,12(s0)
   164f8:	0807f793          	andi	a5,a5,128
   164fc:	cf91                	beqz	a5,16518 <__swhatbuf_r+0x6e>
   164fe:	50b6                	lw	ra,108(sp)
   16500:	5426                	lw	s0,104(sp)
   16502:	4781                	li	a5,0
   16504:	00f92023          	sw	a5,0(s2)
   16508:	04000713          	li	a4,64
   1650c:	c098                	sw	a4,0(s1)
   1650e:	5906                	lw	s2,96(sp)
   16510:	5496                	lw	s1,100(sp)
   16512:	4501                	li	a0,0
   16514:	6165                	addi	sp,sp,112
   16516:	8082                	ret
   16518:	50b6                	lw	ra,108(sp)
   1651a:	5426                	lw	s0,104(sp)
   1651c:	00f92023          	sw	a5,0(s2)
   16520:	40000713          	li	a4,1024
   16524:	c098                	sw	a4,0(s1)
   16526:	5906                	lw	s2,96(sp)
   16528:	5496                	lw	s1,100(sp)
   1652a:	4501                	li	a0,0
   1652c:	6165                	addi	sp,sp,112
   1652e:	8082                	ret

00016530 <_setlocale_r>:
   16530:	1141                	addi	sp,sp,-16
   16532:	c606                	sw	ra,12(sp)
   16534:	c226                	sw	s1,4(sp)
   16536:	c20d                	beqz	a2,16558 <_setlocale_r+0x28>
   16538:	65e9                	lui	a1,0x1a
   1653a:	1fc58593          	addi	a1,a1,508 # 1a1fc <__clzsi2+0x1ea>
   1653e:	8532                	mv	a0,a2
   16540:	c422                	sw	s0,8(sp)
   16542:	8432                	mv	s0,a2
   16544:	28cd                	jal	16636 <strcmp>
   16546:	64e9                	lui	s1,0x1a
   16548:	e911                	bnez	a0,1655c <_setlocale_r+0x2c>
   1654a:	4422                	lw	s0,8(sp)
   1654c:	1f848513          	addi	a0,s1,504 # 1a1f8 <__clzsi2+0x1e6>
   16550:	40b2                	lw	ra,12(sp)
   16552:	4492                	lw	s1,4(sp)
   16554:	0141                	addi	sp,sp,16
   16556:	8082                	ret
   16558:	64e9                	lui	s1,0x1a
   1655a:	bfcd                	j	1654c <_setlocale_r+0x1c>
   1655c:	1f848593          	addi	a1,s1,504 # 1a1f8 <__clzsi2+0x1e6>
   16560:	8522                	mv	a0,s0
   16562:	28d1                	jal	16636 <strcmp>
   16564:	d17d                	beqz	a0,1654a <_setlocale_r+0x1a>
   16566:	65e9                	lui	a1,0x1a
   16568:	21458593          	addi	a1,a1,532 # 1a214 <__clzsi2+0x202>
   1656c:	8522                	mv	a0,s0
   1656e:	20e1                	jal	16636 <strcmp>
   16570:	dd69                	beqz	a0,1654a <_setlocale_r+0x1a>
   16572:	4422                	lw	s0,8(sp)
   16574:	4501                	li	a0,0
   16576:	bfe9                	j	16550 <_setlocale_r+0x20>

00016578 <__locale_mb_cur_max>:
   16578:	e601c503          	lbu	a0,-416(gp) # 1b670 <__global_locale+0x128>
   1657c:	8082                	ret

0001657e <setlocale>:
   1657e:	1141                	addi	sp,sp,-16
   16580:	c606                	sw	ra,12(sp)
   16582:	c226                	sw	s1,4(sp)
   16584:	c18d                	beqz	a1,165a6 <setlocale+0x28>
   16586:	c422                	sw	s0,8(sp)
   16588:	842e                	mv	s0,a1
   1658a:	65e9                	lui	a1,0x1a
   1658c:	1fc58593          	addi	a1,a1,508 # 1a1fc <__clzsi2+0x1ea>
   16590:	8522                	mv	a0,s0
   16592:	2055                	jal	16636 <strcmp>
   16594:	64e9                	lui	s1,0x1a
   16596:	e911                	bnez	a0,165aa <setlocale+0x2c>
   16598:	4422                	lw	s0,8(sp)
   1659a:	1f848513          	addi	a0,s1,504 # 1a1f8 <__clzsi2+0x1e6>
   1659e:	40b2                	lw	ra,12(sp)
   165a0:	4492                	lw	s1,4(sp)
   165a2:	0141                	addi	sp,sp,16
   165a4:	8082                	ret
   165a6:	64e9                	lui	s1,0x1a
   165a8:	bfcd                	j	1659a <setlocale+0x1c>
   165aa:	1f848593          	addi	a1,s1,504 # 1a1f8 <__clzsi2+0x1e6>
   165ae:	8522                	mv	a0,s0
   165b0:	2059                	jal	16636 <strcmp>
   165b2:	d17d                	beqz	a0,16598 <setlocale+0x1a>
   165b4:	65e9                	lui	a1,0x1a
   165b6:	21458593          	addi	a1,a1,532 # 1a214 <__clzsi2+0x202>
   165ba:	8522                	mv	a0,s0
   165bc:	28ad                	jal	16636 <strcmp>
   165be:	dd69                	beqz	a0,16598 <setlocale+0x1a>
   165c0:	4422                	lw	s0,8(sp)
   165c2:	4501                	li	a0,0
   165c4:	bfe9                	j	1659e <setlocale+0x20>

000165c6 <_fstat_r>:
   165c6:	1141                	addi	sp,sp,-16
   165c8:	872e                	mv	a4,a1
   165ca:	c422                	sw	s0,8(sp)
   165cc:	c226                	sw	s1,4(sp)
   165ce:	842a                	mv	s0,a0
   165d0:	85b2                	mv	a1,a2
   165d2:	853a                	mv	a0,a4
   165d4:	c606                	sw	ra,12(sp)
   165d6:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   165da:	3f8010ef          	jal	179d2 <_fstat>
   165de:	57fd                	li	a5,-1
   165e0:	00f50763          	beq	a0,a5,165ee <_fstat_r+0x28>
   165e4:	40b2                	lw	ra,12(sp)
   165e6:	4422                	lw	s0,8(sp)
   165e8:	4492                	lw	s1,4(sp)
   165ea:	0141                	addi	sp,sp,16
   165ec:	8082                	ret
   165ee:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   165f2:	dbed                	beqz	a5,165e4 <_fstat_r+0x1e>
   165f4:	40b2                	lw	ra,12(sp)
   165f6:	c01c                	sw	a5,0(s0)
   165f8:	4422                	lw	s0,8(sp)
   165fa:	4492                	lw	s1,4(sp)
   165fc:	0141                	addi	sp,sp,16
   165fe:	8082                	ret

00016600 <_isatty_r>:
   16600:	1141                	addi	sp,sp,-16
   16602:	c422                	sw	s0,8(sp)
   16604:	c226                	sw	s1,4(sp)
   16606:	842a                	mv	s0,a0
   16608:	852e                	mv	a0,a1
   1660a:	c606                	sw	ra,12(sp)
   1660c:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   16610:	400010ef          	jal	17a10 <_isatty>
   16614:	57fd                	li	a5,-1
   16616:	00f50763          	beq	a0,a5,16624 <_isatty_r+0x24>
   1661a:	40b2                	lw	ra,12(sp)
   1661c:	4422                	lw	s0,8(sp)
   1661e:	4492                	lw	s1,4(sp)
   16620:	0141                	addi	sp,sp,16
   16622:	8082                	ret
   16624:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   16628:	dbed                	beqz	a5,1661a <_isatty_r+0x1a>
   1662a:	40b2                	lw	ra,12(sp)
   1662c:	c01c                	sw	a5,0(s0)
   1662e:	4422                	lw	s0,8(sp)
   16630:	4492                	lw	s1,4(sp)
   16632:	0141                	addi	sp,sp,16
   16634:	8082                	ret

00016636 <strcmp>:
   16636:	00b56733          	or	a4,a0,a1
   1663a:	53fd                	li	t2,-1
   1663c:	8b0d                	andi	a4,a4,3
   1663e:	e779                	bnez	a4,1670c <strcmp+0xd6>
   16640:	7f7f87b7          	lui	a5,0x7f7f8
   16644:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   16648:	4110                	lw	a2,0(a0)
   1664a:	4194                	lw	a3,0(a1)
   1664c:	00f672b3          	and	t0,a2,a5
   16650:	00f66333          	or	t1,a2,a5
   16654:	92be                	add	t0,t0,a5
   16656:	0062e2b3          	or	t0,t0,t1
   1665a:	0c729763          	bne	t0,t2,16728 <strcmp+0xf2>
   1665e:	06d61863          	bne	a2,a3,166ce <strcmp+0x98>
   16662:	4150                	lw	a2,4(a0)
   16664:	41d4                	lw	a3,4(a1)
   16666:	00f672b3          	and	t0,a2,a5
   1666a:	00f66333          	or	t1,a2,a5
   1666e:	92be                	add	t0,t0,a5
   16670:	0062e2b3          	or	t0,t0,t1
   16674:	0a729863          	bne	t0,t2,16724 <strcmp+0xee>
   16678:	04d61b63          	bne	a2,a3,166ce <strcmp+0x98>
   1667c:	4510                	lw	a2,8(a0)
   1667e:	4594                	lw	a3,8(a1)
   16680:	00f672b3          	and	t0,a2,a5
   16684:	00f66333          	or	t1,a2,a5
   16688:	92be                	add	t0,t0,a5
   1668a:	0062e2b3          	or	t0,t0,t1
   1668e:	0a729163          	bne	t0,t2,16730 <strcmp+0xfa>
   16692:	02d61e63          	bne	a2,a3,166ce <strcmp+0x98>
   16696:	4550                	lw	a2,12(a0)
   16698:	45d4                	lw	a3,12(a1)
   1669a:	00f672b3          	and	t0,a2,a5
   1669e:	00f66333          	or	t1,a2,a5
   166a2:	92be                	add	t0,t0,a5
   166a4:	0062e2b3          	or	t0,t0,t1
   166a8:	08729a63          	bne	t0,t2,1673c <strcmp+0x106>
   166ac:	02d61163          	bne	a2,a3,166ce <strcmp+0x98>
   166b0:	4910                	lw	a2,16(a0)
   166b2:	4994                	lw	a3,16(a1)
   166b4:	00f672b3          	and	t0,a2,a5
   166b8:	00f66333          	or	t1,a2,a5
   166bc:	92be                	add	t0,t0,a5
   166be:	0062e2b3          	or	t0,t0,t1
   166c2:	08729363          	bne	t0,t2,16748 <strcmp+0x112>
   166c6:	0551                	addi	a0,a0,20
   166c8:	05d1                	addi	a1,a1,20
   166ca:	f6d60fe3          	beq	a2,a3,16648 <strcmp+0x12>
   166ce:	01061713          	slli	a4,a2,0x10
   166d2:	01069793          	slli	a5,a3,0x10
   166d6:	00f71c63          	bne	a4,a5,166ee <strcmp+0xb8>
   166da:	01065713          	srli	a4,a2,0x10
   166de:	0106d793          	srli	a5,a3,0x10
   166e2:	40f70533          	sub	a0,a4,a5
   166e6:	0ff57593          	zext.b	a1,a0
   166ea:	e991                	bnez	a1,166fe <strcmp+0xc8>
   166ec:	8082                	ret
   166ee:	8341                	srli	a4,a4,0x10
   166f0:	83c1                	srli	a5,a5,0x10
   166f2:	40f70533          	sub	a0,a4,a5
   166f6:	0ff57593          	zext.b	a1,a0
   166fa:	e191                	bnez	a1,166fe <strcmp+0xc8>
   166fc:	8082                	ret
   166fe:	0ff77713          	zext.b	a4,a4
   16702:	0ff7f793          	zext.b	a5,a5
   16706:	40f70533          	sub	a0,a4,a5
   1670a:	8082                	ret
   1670c:	00054603          	lbu	a2,0(a0)
   16710:	0005c683          	lbu	a3,0(a1)
   16714:	0505                	addi	a0,a0,1
   16716:	0585                	addi	a1,a1,1
   16718:	00d61363          	bne	a2,a3,1671e <strcmp+0xe8>
   1671c:	fa65                	bnez	a2,1670c <strcmp+0xd6>
   1671e:	40d60533          	sub	a0,a2,a3
   16722:	8082                	ret
   16724:	0511                	addi	a0,a0,4
   16726:	0591                	addi	a1,a1,4
   16728:	fed612e3          	bne	a2,a3,1670c <strcmp+0xd6>
   1672c:	4501                	li	a0,0
   1672e:	8082                	ret
   16730:	0521                	addi	a0,a0,8
   16732:	05a1                	addi	a1,a1,8
   16734:	fcd61ce3          	bne	a2,a3,1670c <strcmp+0xd6>
   16738:	4501                	li	a0,0
   1673a:	8082                	ret
   1673c:	0531                	addi	a0,a0,12
   1673e:	05b1                	addi	a1,a1,12
   16740:	fcd616e3          	bne	a2,a3,1670c <strcmp+0xd6>
   16744:	4501                	li	a0,0
   16746:	8082                	ret
   16748:	0541                	addi	a0,a0,16
   1674a:	05c1                	addi	a1,a1,16
   1674c:	fcd610e3          	bne	a2,a3,1670c <strcmp+0xd6>
   16750:	4501                	li	a0,0
   16752:	8082                	ret

00016754 <__assert_func>:
   16754:	f141a703          	lw	a4,-236(gp) # 1b724 <_impure_ptr>
   16758:	1141                	addi	sp,sp,-16
   1675a:	87b6                	mv	a5,a3
   1675c:	8832                	mv	a6,a2
   1675e:	c606                	sw	ra,12(sp)
   16760:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffe25b0>
   16764:	86aa                	mv	a3,a0
   16766:	872e                	mv	a4,a1
   16768:	863e                	mv	a2,a5
   1676a:	00080c63          	beqz	a6,16782 <__assert_func+0x2e>
   1676e:	67e9                	lui	a5,0x1a
   16770:	20878793          	addi	a5,a5,520 # 1a208 <__clzsi2+0x1f6>
   16774:	65e9                	lui	a1,0x1a
   16776:	21858593          	addi	a1,a1,536 # 1a218 <__clzsi2+0x206>
   1677a:	8546                	mv	a0,a7
   1677c:	2a81                	jal	168cc <fiprintf>
   1677e:	691000ef          	jal	1760e <abort>
   16782:	6869                	lui	a6,0x1a
   16784:	21480793          	addi	a5,a6,532 # 1a214 <__clzsi2+0x202>
   16788:	21480813          	addi	a6,a6,532
   1678c:	b7e5                	j	16774 <__assert_func+0x20>

0001678e <__assert>:
   1678e:	1141                	addi	sp,sp,-16
   16790:	86b2                	mv	a3,a2
   16792:	4601                	li	a2,0
   16794:	c606                	sw	ra,12(sp)
   16796:	fbfff0ef          	jal	16754 <__assert_func>

0001679a <_calloc_r>:
   1679a:	02c5b7b3          	mulhu	a5,a1,a2
   1679e:	1141                	addi	sp,sp,-16
   167a0:	c606                	sw	ra,12(sp)
   167a2:	c422                	sw	s0,8(sp)
   167a4:	02c585b3          	mul	a1,a1,a2
   167a8:	efa5                	bnez	a5,16820 <_calloc_r+0x86>
   167aa:	a69fa0ef          	jal	11212 <_malloc_r>
   167ae:	842a                	mv	s0,a0
   167b0:	cd25                	beqz	a0,16828 <_calloc_r+0x8e>
   167b2:	ffc52603          	lw	a2,-4(a0)
   167b6:	02400713          	li	a4,36
   167ba:	9a71                	andi	a2,a2,-4
   167bc:	1671                	addi	a2,a2,-4
   167be:	04c76063          	bltu	a4,a2,167fe <_calloc_r+0x64>
   167c2:	46cd                	li	a3,19
   167c4:	87aa                	mv	a5,a0
   167c6:	02c6f163          	bgeu	a3,a2,167e8 <_calloc_r+0x4e>
   167ca:	00052023          	sw	zero,0(a0)
   167ce:	00052223          	sw	zero,4(a0)
   167d2:	47ed                	li	a5,27
   167d4:	02c7fd63          	bgeu	a5,a2,1680e <_calloc_r+0x74>
   167d8:	00052423          	sw	zero,8(a0)
   167dc:	00052623          	sw	zero,12(a0)
   167e0:	01050793          	addi	a5,a0,16
   167e4:	04e60863          	beq	a2,a4,16834 <_calloc_r+0x9a>
   167e8:	0007a023          	sw	zero,0(a5)
   167ec:	0007a223          	sw	zero,4(a5)
   167f0:	0007a423          	sw	zero,8(a5)
   167f4:	40b2                	lw	ra,12(sp)
   167f6:	8522                	mv	a0,s0
   167f8:	4422                	lw	s0,8(sp)
   167fa:	0141                	addi	sp,sp,16
   167fc:	8082                	ret
   167fe:	4581                	li	a1,0
   16800:	bf8fa0ef          	jal	10bf8 <memset>
   16804:	40b2                	lw	ra,12(sp)
   16806:	8522                	mv	a0,s0
   16808:	4422                	lw	s0,8(sp)
   1680a:	0141                	addi	sp,sp,16
   1680c:	8082                	ret
   1680e:	00850793          	addi	a5,a0,8
   16812:	0007a023          	sw	zero,0(a5)
   16816:	0007a223          	sw	zero,4(a5)
   1681a:	0007a423          	sw	zero,8(a5)
   1681e:	bfd9                	j	167f4 <_calloc_r+0x5a>
   16820:	5e9000ef          	jal	17608 <__errno>
   16824:	47b1                	li	a5,12
   16826:	c11c                	sw	a5,0(a0)
   16828:	4401                	li	s0,0
   1682a:	40b2                	lw	ra,12(sp)
   1682c:	8522                	mv	a0,s0
   1682e:	4422                	lw	s0,8(sp)
   16830:	0141                	addi	sp,sp,16
   16832:	8082                	ret
   16834:	00052823          	sw	zero,16(a0)
   16838:	01850793          	addi	a5,a0,24
   1683c:	00052a23          	sw	zero,20(a0)
   16840:	b765                	j	167e8 <_calloc_r+0x4e>

00016842 <_mbtowc_r>:
   16842:	e1c1a783          	lw	a5,-484(gp) # 1b62c <__global_locale+0xe4>
   16846:	8782                	jr	a5

00016848 <__ascii_mbtowc>:
   16848:	c999                	beqz	a1,1685e <__ascii_mbtowc+0x16>
   1684a:	c61d                	beqz	a2,16878 <__ascii_mbtowc+0x30>
   1684c:	ca95                	beqz	a3,16880 <__ascii_mbtowc+0x38>
   1684e:	00064783          	lbu	a5,0(a2)
   16852:	c19c                	sw	a5,0(a1)
   16854:	00064503          	lbu	a0,0(a2)
   16858:	00a03533          	snez	a0,a0
   1685c:	8082                	ret
   1685e:	1141                	addi	sp,sp,-16
   16860:	006c                	addi	a1,sp,12
   16862:	ce09                	beqz	a2,1687c <__ascii_mbtowc+0x34>
   16864:	c285                	beqz	a3,16884 <__ascii_mbtowc+0x3c>
   16866:	00064783          	lbu	a5,0(a2)
   1686a:	c19c                	sw	a5,0(a1)
   1686c:	00064503          	lbu	a0,0(a2)
   16870:	00a03533          	snez	a0,a0
   16874:	0141                	addi	sp,sp,16
   16876:	8082                	ret
   16878:	4501                	li	a0,0
   1687a:	8082                	ret
   1687c:	4501                	li	a0,0
   1687e:	bfdd                	j	16874 <__ascii_mbtowc+0x2c>
   16880:	5579                	li	a0,-2
   16882:	8082                	ret
   16884:	5579                	li	a0,-2
   16886:	b7fd                	j	16874 <__ascii_mbtowc+0x2c>

00016888 <_wctomb_r>:
   16888:	e181a783          	lw	a5,-488(gp) # 1b628 <__global_locale+0xe0>
   1688c:	8782                	jr	a5

0001688e <__ascii_wctomb>:
   1688e:	cd91                	beqz	a1,168aa <__ascii_wctomb+0x1c>
   16890:	0ff00793          	li	a5,255
   16894:	00c7e663          	bltu	a5,a2,168a0 <__ascii_wctomb+0x12>
   16898:	00c58023          	sb	a2,0(a1)
   1689c:	4505                	li	a0,1
   1689e:	8082                	ret
   168a0:	08a00793          	li	a5,138
   168a4:	c11c                	sw	a5,0(a0)
   168a6:	557d                	li	a0,-1
   168a8:	8082                	ret
   168aa:	4501                	li	a0,0
   168ac:	8082                	ret

000168ae <_fiprintf_r>:
   168ae:	7139                	addi	sp,sp,-64
   168b0:	02c10313          	addi	t1,sp,44
   168b4:	d636                	sw	a3,44(sp)
   168b6:	869a                	mv	a3,t1
   168b8:	ce06                	sw	ra,28(sp)
   168ba:	d83a                	sw	a4,48(sp)
   168bc:	da3e                	sw	a5,52(sp)
   168be:	dc42                	sw	a6,56(sp)
   168c0:	de46                	sw	a7,60(sp)
   168c2:	c61a                	sw	t1,12(sp)
   168c4:	280d                	jal	168f6 <_vfiprintf_r>
   168c6:	40f2                	lw	ra,28(sp)
   168c8:	6121                	addi	sp,sp,64
   168ca:	8082                	ret

000168cc <fiprintf>:
   168cc:	8e2a                	mv	t3,a0
   168ce:	7139                	addi	sp,sp,-64
   168d0:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   168d4:	02810313          	addi	t1,sp,40
   168d8:	d432                	sw	a2,40(sp)
   168da:	d636                	sw	a3,44(sp)
   168dc:	862e                	mv	a2,a1
   168de:	869a                	mv	a3,t1
   168e0:	85f2                	mv	a1,t3
   168e2:	ce06                	sw	ra,28(sp)
   168e4:	d83a                	sw	a4,48(sp)
   168e6:	da3e                	sw	a5,52(sp)
   168e8:	dc42                	sw	a6,56(sp)
   168ea:	de46                	sw	a7,60(sp)
   168ec:	c61a                	sw	t1,12(sp)
   168ee:	2021                	jal	168f6 <_vfiprintf_r>
   168f0:	40f2                	lw	ra,28(sp)
   168f2:	6121                	addi	sp,sp,64
   168f4:	8082                	ret

000168f6 <_vfiprintf_r>:
   168f6:	7169                	addi	sp,sp,-304
   168f8:	11312e23          	sw	s3,284(sp)
   168fc:	11512a23          	sw	s5,276(sp)
   16900:	11612823          	sw	s6,272(sp)
   16904:	11712623          	sw	s7,268(sp)
   16908:	12112623          	sw	ra,300(sp)
   1690c:	11a12023          	sw	s10,256(sp)
   16910:	8baa                	mv	s7,a0
   16912:	8aae                	mv	s5,a1
   16914:	89b2                	mv	s3,a2
   16916:	8b36                	mv	s6,a3
   16918:	c501                	beqz	a0,16920 <_vfiprintf_r+0x2a>
   1691a:	595c                	lw	a5,52(a0)
   1691c:	300783e3          	beqz	a5,17422 <_vfiprintf_r+0xb2c>
   16920:	00ca9703          	lh	a4,12(s5)
   16924:	064aa783          	lw	a5,100(s5)
   16928:	01271693          	slli	a3,a4,0x12
   1692c:	0006cb63          	bltz	a3,16942 <_vfiprintf_r+0x4c>
   16930:	76f9                	lui	a3,0xffffe
   16932:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   16934:	6609                	lui	a2,0x2
   16936:	8f51                	or	a4,a4,a2
   16938:	8ff5                	and	a5,a5,a3
   1693a:	00ea9623          	sh	a4,12(s5)
   1693e:	06faa223          	sw	a5,100(s5)
   16942:	01279713          	slli	a4,a5,0x12
   16946:	400740e3          	bltz	a4,17546 <_vfiprintf_r+0xc50>
   1694a:	00ca9783          	lh	a5,12(s5)
   1694e:	0087f713          	andi	a4,a5,8
   16952:	22070363          	beqz	a4,16b78 <_vfiprintf_r+0x282>
   16956:	010aa703          	lw	a4,16(s5)
   1695a:	20070f63          	beqz	a4,16b78 <_vfiprintf_r+0x282>
   1695e:	8be9                	andi	a5,a5,26
   16960:	4729                	li	a4,10
   16962:	22e78763          	beq	a5,a4,16b90 <_vfiprintf_r+0x29a>
   16966:	67e9                	lui	a5,0x1a
   16968:	4d01                	li	s10,0
   1696a:	11812423          	sw	s8,264(sp)
   1696e:	11912223          	sw	s9,260(sp)
   16972:	04c10c13          	addi	s8,sp,76
   16976:	7cc78793          	addi	a5,a5,1996 # 1a7cc <_ctype_+0x104>
   1697a:	6ced                	lui	s9,0x1b
   1697c:	12812423          	sw	s0,296(sp)
   16980:	13212023          	sw	s2,288(sp)
   16984:	11412c23          	sw	s4,280(sp)
   16988:	896a                	mv	s2,s10
   1698a:	12912223          	sw	s1,292(sp)
   1698e:	dfee                	sw	s11,252(sp)
   16990:	c0e2                	sw	s8,64(sp)
   16992:	c482                	sw	zero,72(sp)
   16994:	c282                	sw	zero,68(sp)
   16996:	8462                	mv	s0,s8
   16998:	c202                	sw	zero,4(sp)
   1699a:	ca02                	sw	zero,20(sp)
   1699c:	cc02                	sw	zero,24(sp)
   1699e:	ce02                	sw	zero,28(sp)
   169a0:	c03e                	sw	a5,0(sp)
   169a2:	4a41                	li	s4,16
   169a4:	938c8c93          	addi	s9,s9,-1736 # 1a938 <zeroes.0>
   169a8:	8d5a                	mv	s10,s6
   169aa:	0009c783          	lbu	a5,0(s3)
   169ae:	14078563          	beqz	a5,16af8 <_vfiprintf_r+0x202>
   169b2:	84ce                	mv	s1,s3
   169b4:	02500713          	li	a4,37
   169b8:	20e78363          	beq	a5,a4,16bbe <_vfiprintf_r+0x2c8>
   169bc:	0014c783          	lbu	a5,1(s1)
   169c0:	0485                	addi	s1,s1,1
   169c2:	fbfd                	bnez	a5,169b8 <_vfiprintf_r+0xc2>
   169c4:	41348b33          	sub	s6,s1,s3
   169c8:	13348863          	beq	s1,s3,16af8 <_vfiprintf_r+0x202>
   169cc:	4726                	lw	a4,72(sp)
   169ce:	4796                	lw	a5,68(sp)
   169d0:	01342023          	sw	s3,0(s0)
   169d4:	975a                	add	a4,a4,s6
   169d6:	0785                	addi	a5,a5,1
   169d8:	01642223          	sw	s6,4(s0)
   169dc:	c4ba                	sw	a4,72(sp)
   169de:	c2be                	sw	a5,68(sp)
   169e0:	471d                	li	a4,7
   169e2:	0421                	addi	s0,s0,8
   169e4:	1ef74463          	blt	a4,a5,16bcc <_vfiprintf_r+0x2d6>
   169e8:	0004c783          	lbu	a5,0(s1)
   169ec:	995a                	add	s2,s2,s6
   169ee:	10078563          	beqz	a5,16af8 <_vfiprintf_r+0x202>
   169f2:	0014c783          	lbu	a5,1(s1)
   169f6:	00148993          	addi	s3,s1,1
   169fa:	02010da3          	sb	zero,59(sp)
   169fe:	5dfd                	li	s11,-1
   16a00:	4b01                	li	s6,0
   16a02:	4801                	li	a6,0
   16a04:	05a00493          	li	s1,90
   16a08:	0985                	addi	s3,s3,1
   16a0a:	863e                	mv	a2,a5
   16a0c:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   16a10:	02e4eb63          	bltu	s1,a4,16a46 <_vfiprintf_r+0x150>
   16a14:	4782                	lw	a5,0(sp)
   16a16:	070a                	slli	a4,a4,0x2
   16a18:	973e                	add	a4,a4,a5
   16a1a:	431c                	lw	a5,0(a4)
   16a1c:	8782                	jr	a5
   16a1e:	4b01                	li	s6,0
   16a20:	fd060793          	addi	a5,a2,-48
   16a24:	46a5                	li	a3,9
   16a26:	0009c603          	lbu	a2,0(s3)
   16a2a:	002b1713          	slli	a4,s6,0x2
   16a2e:	9b3a                	add	s6,s6,a4
   16a30:	0b06                	slli	s6,s6,0x1
   16a32:	9b3e                	add	s6,s6,a5
   16a34:	fd060793          	addi	a5,a2,-48
   16a38:	0985                	addi	s3,s3,1
   16a3a:	fef6f6e3          	bgeu	a3,a5,16a26 <_vfiprintf_r+0x130>
   16a3e:	fe060713          	addi	a4,a2,-32
   16a42:	fce4f9e3          	bgeu	s1,a4,16a14 <_vfiprintf_r+0x11e>
   16a46:	ca4d                	beqz	a2,16af8 <_vfiprintf_r+0x202>
   16a48:	08c10623          	sb	a2,140(sp)
   16a4c:	02010da3          	sb	zero,59(sp)
   16a50:	4885                	li	a7,1
   16a52:	4e05                	li	t3,1
   16a54:	0164                	addi	s1,sp,140
   16a56:	4d81                	li	s11,0
   16a58:	4281                	li	t0,0
   16a5a:	08487f93          	andi	t6,a6,132
   16a5e:	4726                	lw	a4,72(sp)
   16a60:	4796                	lw	a5,68(sp)
   16a62:	000f9663          	bnez	t6,16a6e <_vfiprintf_r+0x178>
   16a66:	411b0eb3          	sub	t4,s6,a7
   16a6a:	71d04b63          	bgtz	t4,17180 <_vfiprintf_r+0x88a>
   16a6e:	03b14603          	lbu	a2,59(sp)
   16a72:	ce11                	beqz	a2,16a8e <_vfiprintf_r+0x198>
   16a74:	03b10613          	addi	a2,sp,59
   16a78:	c010                	sw	a2,0(s0)
   16a7a:	0785                	addi	a5,a5,1
   16a7c:	4605                	li	a2,1
   16a7e:	0705                	addi	a4,a4,1
   16a80:	c050                	sw	a2,4(s0)
   16a82:	c4ba                	sw	a4,72(sp)
   16a84:	c2be                	sw	a5,68(sp)
   16a86:	461d                	li	a2,7
   16a88:	0421                	addi	s0,s0,8
   16a8a:	1af64363          	blt	a2,a5,16c30 <_vfiprintf_r+0x33a>
   16a8e:	00028e63          	beqz	t0,16aaa <_vfiprintf_r+0x1b4>
   16a92:	1870                	addi	a2,sp,60
   16a94:	c010                	sw	a2,0(s0)
   16a96:	0785                	addi	a5,a5,1
   16a98:	4609                	li	a2,2
   16a9a:	0709                	addi	a4,a4,2
   16a9c:	c050                	sw	a2,4(s0)
   16a9e:	c4ba                	sw	a4,72(sp)
   16aa0:	c2be                	sw	a5,68(sp)
   16aa2:	461d                	li	a2,7
   16aa4:	0421                	addi	s0,s0,8
   16aa6:	78f64663          	blt	a2,a5,17232 <_vfiprintf_r+0x93c>
   16aaa:	08000613          	li	a2,128
   16aae:	52cf8a63          	beq	t6,a2,16fe2 <_vfiprintf_r+0x6ec>
   16ab2:	41cd8db3          	sub	s11,s11,t3
   16ab6:	5db04d63          	bgtz	s11,17090 <_vfiprintf_r+0x79a>
   16aba:	9772                	add	a4,a4,t3
   16abc:	0785                	addi	a5,a5,1
   16abe:	c004                	sw	s1,0(s0)
   16ac0:	01c42223          	sw	t3,4(s0)
   16ac4:	c4ba                	sw	a4,72(sp)
   16ac6:	c2be                	sw	a5,68(sp)
   16ac8:	461d                	li	a2,7
   16aca:	0421                	addi	s0,s0,8
   16acc:	64f64e63          	blt	a2,a5,17128 <_vfiprintf_r+0x832>
   16ad0:	00487813          	andi	a6,a6,4
   16ad4:	00080663          	beqz	a6,16ae0 <_vfiprintf_r+0x1ea>
   16ad8:	411b04b3          	sub	s1,s6,a7
   16adc:	16904e63          	bgtz	s1,16c58 <_vfiprintf_r+0x362>
   16ae0:	011b5363          	bge	s6,a7,16ae6 <_vfiprintf_r+0x1f0>
   16ae4:	8b46                	mv	s6,a7
   16ae6:	995a                	add	s2,s2,s6
   16ae8:	0e071a63          	bnez	a4,16bdc <_vfiprintf_r+0x2e6>
   16aec:	0009c783          	lbu	a5,0(s3)
   16af0:	c282                	sw	zero,68(sp)
   16af2:	8462                	mv	s0,s8
   16af4:	ea079fe3          	bnez	a5,169b2 <_vfiprintf_r+0xbc>
   16af8:	47a6                	lw	a5,72(sp)
   16afa:	8d4a                	mv	s10,s2
   16afc:	0e078863          	beqz	a5,16bec <_vfiprintf_r+0x2f6>
   16b00:	0090                	addi	a2,sp,64
   16b02:	85d6                	mv	a1,s5
   16b04:	855e                	mv	a0,s7
   16b06:	8fbfc0ef          	jal	13400 <__sprint_r>
   16b0a:	a0cd                	j	16bec <_vfiprintf_r+0x2f6>
   16b0c:	000d2b03          	lw	s6,0(s10)
   16b10:	0d11                	addi	s10,s10,4
   16b12:	280b4c63          	bltz	s6,16daa <_vfiprintf_r+0x4b4>
   16b16:	0009c783          	lbu	a5,0(s3)
   16b1a:	b5fd                	j	16a08 <_vfiprintf_r+0x112>
   16b1c:	0009c783          	lbu	a5,0(s3)
   16b20:	02086813          	ori	a6,a6,32
   16b24:	b5d5                	j	16a08 <_vfiprintf_r+0x112>
   16b26:	01086813          	ori	a6,a6,16
   16b2a:	02087793          	andi	a5,a6,32
   16b2e:	1a078363          	beqz	a5,16cd4 <_vfiprintf_r+0x3de>
   16b32:	0d1d                	addi	s10,s10,7
   16b34:	ff8d7d13          	andi	s10,s10,-8
   16b38:	004d2703          	lw	a4,4(s10)
   16b3c:	000d2783          	lw	a5,0(s10)
   16b40:	0d21                	addi	s10,s10,8
   16b42:	88ba                	mv	a7,a4
   16b44:	1a074863          	bltz	a4,16cf4 <_vfiprintf_r+0x3fe>
   16b48:	1c0dc663          	bltz	s11,16d14 <_vfiprintf_r+0x41e>
   16b4c:	0117e733          	or	a4,a5,a7
   16b50:	f7f87813          	andi	a6,a6,-129
   16b54:	1c071063          	bnez	a4,16d14 <_vfiprintf_r+0x41e>
   16b58:	1e0d93e3          	bnez	s11,1753e <_vfiprintf_r+0xc48>
   16b5c:	03b14783          	lbu	a5,59(sp)
   16b60:	4881                	li	a7,0
   16b62:	4e01                	li	t3,0
   16b64:	1984                	addi	s1,sp,240
   16b66:	c391                	beqz	a5,16b6a <_vfiprintf_r+0x274>
   16b68:	0885                	addi	a7,a7,1
   16b6a:	00287293          	andi	t0,a6,2
   16b6e:	ee0286e3          	beqz	t0,16a5a <_vfiprintf_r+0x164>
   16b72:	0889                	addi	a7,a7,2
   16b74:	4289                	li	t0,2
   16b76:	b5d5                	j	16a5a <_vfiprintf_r+0x164>
   16b78:	85d6                	mv	a1,s5
   16b7a:	855e                	mv	a0,s7
   16b7c:	ec3fc0ef          	jal	13a3e <__swsetup_r>
   16b80:	1c0513e3          	bnez	a0,17546 <_vfiprintf_r+0xc50>
   16b84:	00ca9783          	lh	a5,12(s5)
   16b88:	4729                	li	a4,10
   16b8a:	8be9                	andi	a5,a5,26
   16b8c:	dce79de3          	bne	a5,a4,16966 <_vfiprintf_r+0x70>
   16b90:	00ea9783          	lh	a5,14(s5)
   16b94:	dc07c9e3          	bltz	a5,16966 <_vfiprintf_r+0x70>
   16b98:	12c12083          	lw	ra,300(sp)
   16b9c:	10012d03          	lw	s10,256(sp)
   16ba0:	86da                	mv	a3,s6
   16ba2:	864e                	mv	a2,s3
   16ba4:	11012b03          	lw	s6,272(sp)
   16ba8:	11c12983          	lw	s3,284(sp)
   16bac:	85d6                	mv	a1,s5
   16bae:	855e                	mv	a0,s7
   16bb0:	11412a83          	lw	s5,276(sp)
   16bb4:	10c12b83          	lw	s7,268(sp)
   16bb8:	6155                	addi	sp,sp,304
   16bba:	1b90006f          	j	17572 <__sbprintf>
   16bbe:	41348b33          	sub	s6,s1,s3
   16bc2:	e13495e3          	bne	s1,s3,169cc <_vfiprintf_r+0xd6>
   16bc6:	0004c783          	lbu	a5,0(s1)
   16bca:	b515                	j	169ee <_vfiprintf_r+0xf8>
   16bcc:	0090                	addi	a2,sp,64
   16bce:	85d6                	mv	a1,s5
   16bd0:	855e                	mv	a0,s7
   16bd2:	82ffc0ef          	jal	13400 <__sprint_r>
   16bd6:	e911                	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   16bd8:	8462                	mv	s0,s8
   16bda:	b539                	j	169e8 <_vfiprintf_r+0xf2>
   16bdc:	0090                	addi	a2,sp,64
   16bde:	85d6                	mv	a1,s5
   16be0:	855e                	mv	a0,s7
   16be2:	81ffc0ef          	jal	13400 <__sprint_r>
   16be6:	f00503e3          	beqz	a0,16aec <_vfiprintf_r+0x1f6>
   16bea:	8d4a                	mv	s10,s2
   16bec:	00cad783          	lhu	a5,12(s5)
   16bf0:	12812403          	lw	s0,296(sp)
   16bf4:	12412483          	lw	s1,292(sp)
   16bf8:	0407f793          	andi	a5,a5,64
   16bfc:	12012903          	lw	s2,288(sp)
   16c00:	11812a03          	lw	s4,280(sp)
   16c04:	10812c03          	lw	s8,264(sp)
   16c08:	10412c83          	lw	s9,260(sp)
   16c0c:	5dfe                	lw	s11,252(sp)
   16c0e:	12079ce3          	bnez	a5,17546 <_vfiprintf_r+0xc50>
   16c12:	12c12083          	lw	ra,300(sp)
   16c16:	11c12983          	lw	s3,284(sp)
   16c1a:	11412a83          	lw	s5,276(sp)
   16c1e:	11012b03          	lw	s6,272(sp)
   16c22:	10c12b83          	lw	s7,268(sp)
   16c26:	856a                	mv	a0,s10
   16c28:	10012d03          	lw	s10,256(sp)
   16c2c:	6155                	addi	sp,sp,304
   16c2e:	8082                	ret
   16c30:	0090                	addi	a2,sp,64
   16c32:	85d6                	mv	a1,s5
   16c34:	855e                	mv	a0,s7
   16c36:	d246                	sw	a7,36(sp)
   16c38:	d072                	sw	t3,32(sp)
   16c3a:	c842                	sw	a6,16(sp)
   16c3c:	c67e                	sw	t6,12(sp)
   16c3e:	c416                	sw	t0,8(sp)
   16c40:	fc0fc0ef          	jal	13400 <__sprint_r>
   16c44:	f15d                	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   16c46:	4726                	lw	a4,72(sp)
   16c48:	4796                	lw	a5,68(sp)
   16c4a:	5892                	lw	a7,36(sp)
   16c4c:	5e02                	lw	t3,32(sp)
   16c4e:	4842                	lw	a6,16(sp)
   16c50:	4fb2                	lw	t6,12(sp)
   16c52:	42a2                	lw	t0,8(sp)
   16c54:	8462                	mv	s0,s8
   16c56:	bd25                	j	16a8e <_vfiprintf_r+0x198>
   16c58:	636d                	lui	t1,0x1b
   16c5a:	4641                	li	a2,16
   16c5c:	4796                	lw	a5,68(sp)
   16c5e:	94830313          	addi	t1,t1,-1720 # 1a948 <blanks.1>
   16c62:	04965563          	bge	a2,s1,16cac <_vfiprintf_r+0x3b6>
   16c66:	86a2                	mv	a3,s0
   16c68:	4dc1                	li	s11,16
   16c6a:	481d                	li	a6,7
   16c6c:	c446                	sw	a7,8(sp)
   16c6e:	841a                	mv	s0,t1
   16c70:	a021                	j	16c78 <_vfiprintf_r+0x382>
   16c72:	14c1                	addi	s1,s1,-16
   16c74:	029dd963          	bge	s11,s1,16ca6 <_vfiprintf_r+0x3b0>
   16c78:	0741                	addi	a4,a4,16
   16c7a:	0785                	addi	a5,a5,1
   16c7c:	c280                	sw	s0,0(a3)
   16c7e:	01b6a223          	sw	s11,4(a3)
   16c82:	c4ba                	sw	a4,72(sp)
   16c84:	c2be                	sw	a5,68(sp)
   16c86:	06a1                	addi	a3,a3,8
   16c88:	fef855e3          	bge	a6,a5,16c72 <_vfiprintf_r+0x37c>
   16c8c:	0090                	addi	a2,sp,64
   16c8e:	85d6                	mv	a1,s5
   16c90:	855e                	mv	a0,s7
   16c92:	f6efc0ef          	jal	13400 <__sprint_r>
   16c96:	f931                	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   16c98:	14c1                	addi	s1,s1,-16
   16c9a:	4726                	lw	a4,72(sp)
   16c9c:	4796                	lw	a5,68(sp)
   16c9e:	86e2                	mv	a3,s8
   16ca0:	481d                	li	a6,7
   16ca2:	fc9dcbe3          	blt	s11,s1,16c78 <_vfiprintf_r+0x382>
   16ca6:	48a2                	lw	a7,8(sp)
   16ca8:	8322                	mv	t1,s0
   16caa:	8436                	mv	s0,a3
   16cac:	9726                	add	a4,a4,s1
   16cae:	0785                	addi	a5,a5,1
   16cb0:	00642023          	sw	t1,0(s0)
   16cb4:	c044                	sw	s1,4(s0)
   16cb6:	c4ba                	sw	a4,72(sp)
   16cb8:	c2be                	sw	a5,68(sp)
   16cba:	461d                	li	a2,7
   16cbc:	e2f652e3          	bge	a2,a5,16ae0 <_vfiprintf_r+0x1ea>
   16cc0:	0090                	addi	a2,sp,64
   16cc2:	85d6                	mv	a1,s5
   16cc4:	855e                	mv	a0,s7
   16cc6:	c446                	sw	a7,8(sp)
   16cc8:	f38fc0ef          	jal	13400 <__sprint_r>
   16ccc:	fd19                	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   16cce:	4726                	lw	a4,72(sp)
   16cd0:	48a2                	lw	a7,8(sp)
   16cd2:	b539                	j	16ae0 <_vfiprintf_r+0x1ea>
   16cd4:	01087713          	andi	a4,a6,16
   16cd8:	000d2783          	lw	a5,0(s10)
   16cdc:	0d11                	addi	s10,s10,4
   16cde:	e371                	bnez	a4,16da2 <_vfiprintf_r+0x4ac>
   16ce0:	04087713          	andi	a4,a6,64
   16ce4:	cb5d                	beqz	a4,16d9a <_vfiprintf_r+0x4a4>
   16ce6:	07c2                	slli	a5,a5,0x10
   16ce8:	87c1                	srai	a5,a5,0x10
   16cea:	41f7d893          	srai	a7,a5,0x1f
   16cee:	8746                	mv	a4,a7
   16cf0:	e4075ce3          	bgez	a4,16b48 <_vfiprintf_r+0x252>
   16cf4:	02d00613          	li	a2,45
   16cf8:	00f03733          	snez	a4,a5
   16cfc:	411008b3          	neg	a7,a7
   16d00:	02c10da3          	sb	a2,59(sp)
   16d04:	40e888b3          	sub	a7,a7,a4
   16d08:	40f007b3          	neg	a5,a5
   16d0c:	000dc463          	bltz	s11,16d14 <_vfiprintf_r+0x41e>
   16d10:	f7f87813          	andi	a6,a6,-129
   16d14:	62089c63          	bnez	a7,1734c <_vfiprintf_r+0xa56>
   16d18:	4725                	li	a4,9
   16d1a:	62f76963          	bltu	a4,a5,1734c <_vfiprintf_r+0xa56>
   16d1e:	03078793          	addi	a5,a5,48
   16d22:	0ff7f793          	zext.b	a5,a5
   16d26:	0ef107a3          	sb	a5,239(sp)
   16d2a:	88ee                	mv	a7,s11
   16d2c:	01b04363          	bgtz	s11,16d32 <_vfiprintf_r+0x43c>
   16d30:	4885                	li	a7,1
   16d32:	4e05                	li	t3,1
   16d34:	0ef10493          	addi	s1,sp,239
   16d38:	03b14783          	lbu	a5,59(sp)
   16d3c:	e20796e3          	bnez	a5,16b68 <_vfiprintf_r+0x272>
   16d40:	b52d                	j	16b6a <_vfiprintf_r+0x274>
   16d42:	000d2483          	lw	s1,0(s10)
   16d46:	02010da3          	sb	zero,59(sp)
   16d4a:	0d11                	addi	s10,s10,4
   16d4c:	70048463          	beqz	s1,17454 <_vfiprintf_r+0xb5e>
   16d50:	c442                	sw	a6,8(sp)
   16d52:	5e0dc163          	bltz	s11,17334 <_vfiprintf_r+0xa3e>
   16d56:	866e                	mv	a2,s11
   16d58:	4581                	li	a1,0
   16d5a:	8526                	mv	a0,s1
   16d5c:	dbdfc0ef          	jal	13b18 <memchr>
   16d60:	4822                	lw	a6,8(sp)
   16d62:	8e6e                	mv	t3,s11
   16d64:	c119                	beqz	a0,16d6a <_vfiprintf_r+0x474>
   16d66:	40950e33          	sub	t3,a0,s1
   16d6a:	03b14783          	lbu	a5,59(sp)
   16d6e:	fffe4893          	not	a7,t3
   16d72:	41f8d893          	srai	a7,a7,0x1f
   16d76:	011e78b3          	and	a7,t3,a7
   16d7a:	4d81                	li	s11,0
   16d7c:	4281                	li	t0,0
   16d7e:	de0795e3          	bnez	a5,16b68 <_vfiprintf_r+0x272>
   16d82:	b9e1                	j	16a5a <_vfiprintf_r+0x164>
   16d84:	000d2783          	lw	a5,0(s10)
   16d88:	02010da3          	sb	zero,59(sp)
   16d8c:	0d11                	addi	s10,s10,4
   16d8e:	08f10623          	sb	a5,140(sp)
   16d92:	4885                	li	a7,1
   16d94:	4e05                	li	t3,1
   16d96:	0164                	addi	s1,sp,140
   16d98:	b97d                	j	16a56 <_vfiprintf_r+0x160>
   16d9a:	20087713          	andi	a4,a6,512
   16d9e:	76071e63          	bnez	a4,1751a <_vfiprintf_r+0xc24>
   16da2:	41f7d893          	srai	a7,a5,0x1f
   16da6:	8746                	mv	a4,a7
   16da8:	bb71                	j	16b44 <_vfiprintf_r+0x24e>
   16daa:	41600b33          	neg	s6,s6
   16dae:	0009c783          	lbu	a5,0(s3)
   16db2:	00486813          	ori	a6,a6,4
   16db6:	b989                	j	16a08 <_vfiprintf_r+0x112>
   16db8:	02b00713          	li	a4,43
   16dbc:	0009c783          	lbu	a5,0(s3)
   16dc0:	02e10da3          	sb	a4,59(sp)
   16dc4:	b191                	j	16a08 <_vfiprintf_r+0x112>
   16dc6:	0009c783          	lbu	a5,0(s3)
   16dca:	08086813          	ori	a6,a6,128
   16dce:	b92d                	j	16a08 <_vfiprintf_r+0x112>
   16dd0:	0009c603          	lbu	a2,0(s3)
   16dd4:	02a00793          	li	a5,42
   16dd8:	00198693          	addi	a3,s3,1
   16ddc:	76f60863          	beq	a2,a5,1754c <_vfiprintf_r+0xc56>
   16de0:	fd060793          	addi	a5,a2,-48
   16de4:	4725                	li	a4,9
   16de6:	4d81                	li	s11,0
   16de8:	45a5                	li	a1,9
   16dea:	02f76063          	bltu	a4,a5,16e0a <_vfiprintf_r+0x514>
   16dee:	0006c603          	lbu	a2,0(a3)
   16df2:	002d9713          	slli	a4,s11,0x2
   16df6:	9dba                	add	s11,s11,a4
   16df8:	0d86                	slli	s11,s11,0x1
   16dfa:	9dbe                	add	s11,s11,a5
   16dfc:	fd060793          	addi	a5,a2,-48
   16e00:	0685                	addi	a3,a3,1
   16e02:	fef5f6e3          	bgeu	a1,a5,16dee <_vfiprintf_r+0x4f8>
   16e06:	4a0dcb63          	bltz	s11,172bc <_vfiprintf_r+0x9c6>
   16e0a:	89b6                	mv	s3,a3
   16e0c:	b101                	j	16a0c <_vfiprintf_r+0x116>
   16e0e:	855e                	mv	a0,s7
   16e10:	c442                	sw	a6,8(sp)
   16e12:	e15fc0ef          	jal	13c26 <_localeconv_r>
   16e16:	415c                	lw	a5,4(a0)
   16e18:	853e                	mv	a0,a5
   16e1a:	ce3e                	sw	a5,28(sp)
   16e1c:	fcbf90ef          	jal	10de6 <strlen>
   16e20:	87aa                	mv	a5,a0
   16e22:	855e                	mv	a0,s7
   16e24:	cc3e                	sw	a5,24(sp)
   16e26:	e01fc0ef          	jal	13c26 <_localeconv_r>
   16e2a:	4518                	lw	a4,8(a0)
   16e2c:	47e2                	lw	a5,24(sp)
   16e2e:	4822                	lw	a6,8(sp)
   16e30:	ca3a                	sw	a4,20(sp)
   16e32:	ce0782e3          	beqz	a5,16b16 <_vfiprintf_r+0x220>
   16e36:	4752                	lw	a4,20(sp)
   16e38:	0009c783          	lbu	a5,0(s3)
   16e3c:	bc0706e3          	beqz	a4,16a08 <_vfiprintf_r+0x112>
   16e40:	00074703          	lbu	a4,0(a4)
   16e44:	bc0702e3          	beqz	a4,16a08 <_vfiprintf_r+0x112>
   16e48:	40086813          	ori	a6,a6,1024
   16e4c:	be75                	j	16a08 <_vfiprintf_r+0x112>
   16e4e:	0009c783          	lbu	a5,0(s3)
   16e52:	00186813          	ori	a6,a6,1
   16e56:	be4d                	j	16a08 <_vfiprintf_r+0x112>
   16e58:	03b14703          	lbu	a4,59(sp)
   16e5c:	0009c783          	lbu	a5,0(s3)
   16e60:	ba0714e3          	bnez	a4,16a08 <_vfiprintf_r+0x112>
   16e64:	02000713          	li	a4,32
   16e68:	02e10da3          	sb	a4,59(sp)
   16e6c:	be71                	j	16a08 <_vfiprintf_r+0x112>
   16e6e:	01086713          	ori	a4,a6,16
   16e72:	02077793          	andi	a5,a4,32
   16e76:	40078063          	beqz	a5,17276 <_vfiprintf_r+0x980>
   16e7a:	0d1d                	addi	s10,s10,7
   16e7c:	ff8d7d13          	andi	s10,s10,-8
   16e80:	000d2783          	lw	a5,0(s10)
   16e84:	004d2583          	lw	a1,4(s10)
   16e88:	0d21                	addi	s10,s10,8
   16e8a:	02010da3          	sb	zero,59(sp)
   16e8e:	bff77813          	andi	a6,a4,-1025
   16e92:	0a0dc163          	bltz	s11,16f34 <_vfiprintf_r+0x63e>
   16e96:	00b7e633          	or	a2,a5,a1
   16e9a:	b7f77713          	andi	a4,a4,-1153
   16e9e:	56061d63          	bnez	a2,17418 <_vfiprintf_r+0xb22>
   16ea2:	8e42                	mv	t3,a6
   16ea4:	4781                	li	a5,0
   16ea6:	883a                	mv	a6,a4
   16ea8:	060d9e63          	bnez	s11,16f24 <_vfiprintf_r+0x62e>
   16eac:	ca0798e3          	bnez	a5,16b5c <_vfiprintf_r+0x266>
   16eb0:	001e7e13          	andi	t3,t3,1
   16eb4:	3e0e0463          	beqz	t3,1729c <_vfiprintf_r+0x9a6>
   16eb8:	03000793          	li	a5,48
   16ebc:	0ef107a3          	sb	a5,239(sp)
   16ec0:	88f2                	mv	a7,t3
   16ec2:	0ef10493          	addi	s1,sp,239
   16ec6:	bd8d                	j	16d38 <_vfiprintf_r+0x442>
   16ec8:	0009c783          	lbu	a5,0(s3)
   16ecc:	06c00713          	li	a4,108
   16ed0:	56e78463          	beq	a5,a4,17438 <_vfiprintf_r+0xb42>
   16ed4:	01086813          	ori	a6,a6,16
   16ed8:	be05                	j	16a08 <_vfiprintf_r+0x112>
   16eda:	0009c783          	lbu	a5,0(s3)
   16ede:	06800713          	li	a4,104
   16ee2:	54e78463          	beq	a5,a4,1742a <_vfiprintf_r+0xb34>
   16ee6:	04086813          	ori	a6,a6,64
   16eea:	be39                	j	16a08 <_vfiprintf_r+0x112>
   16eec:	01086e13          	ori	t3,a6,16
   16ef0:	020e7793          	andi	a5,t3,32
   16ef4:	36078363          	beqz	a5,1725a <_vfiprintf_r+0x964>
   16ef8:	0d1d                	addi	s10,s10,7
   16efa:	ff8d7d13          	andi	s10,s10,-8
   16efe:	000d2783          	lw	a5,0(s10)
   16f02:	004d2883          	lw	a7,4(s10)
   16f06:	0d21                	addi	s10,s10,8
   16f08:	02010da3          	sb	zero,59(sp)
   16f0c:	8872                	mv	a6,t3
   16f0e:	e00dc3e3          	bltz	s11,16d14 <_vfiprintf_r+0x41e>
   16f12:	0117e733          	or	a4,a5,a7
   16f16:	f7fe7813          	andi	a6,t3,-129
   16f1a:	de071de3          	bnez	a4,16d14 <_vfiprintf_r+0x41e>
   16f1e:	4785                	li	a5,1
   16f20:	f80d86e3          	beqz	s11,16eac <_vfiprintf_r+0x5b6>
   16f24:	4705                	li	a4,1
   16f26:	60e78c63          	beq	a5,a4,1753e <_vfiprintf_r+0xc48>
   16f2a:	4709                	li	a4,2
   16f2c:	54e78663          	beq	a5,a4,17478 <_vfiprintf_r+0xb82>
   16f30:	4781                	li	a5,0
   16f32:	4581                	li	a1,0
   16f34:	1984                	addi	s1,sp,240
   16f36:	01d59693          	slli	a3,a1,0x1d
   16f3a:	0077f713          	andi	a4,a5,7
   16f3e:	838d                	srli	a5,a5,0x3
   16f40:	03070713          	addi	a4,a4,48
   16f44:	8fd5                	or	a5,a5,a3
   16f46:	818d                	srli	a1,a1,0x3
   16f48:	fee48fa3          	sb	a4,-1(s1)
   16f4c:	00b7e6b3          	or	a3,a5,a1
   16f50:	8526                	mv	a0,s1
   16f52:	14fd                	addi	s1,s1,-1
   16f54:	f2ed                	bnez	a3,16f36 <_vfiprintf_r+0x640>
   16f56:	00187793          	andi	a5,a6,1
   16f5a:	20078b63          	beqz	a5,17170 <_vfiprintf_r+0x87a>
   16f5e:	03000793          	li	a5,48
   16f62:	20f70763          	beq	a4,a5,17170 <_vfiprintf_r+0x87a>
   16f66:	1579                	addi	a0,a0,-2
   16f68:	fef48fa3          	sb	a5,-1(s1)
   16f6c:	199c                	addi	a5,sp,240
   16f6e:	40a78e33          	sub	t3,a5,a0
   16f72:	88ee                	mv	a7,s11
   16f74:	35cdc163          	blt	s11,t3,172b6 <_vfiprintf_r+0x9c0>
   16f78:	84aa                	mv	s1,a0
   16f7a:	bb7d                	j	16d38 <_vfiprintf_r+0x442>
   16f7c:	6721                	lui	a4,0x8
   16f7e:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   16f82:	02e11e23          	sh	a4,60(sp)
   16f86:	6769                	lui	a4,0x1a
   16f88:	0e870713          	addi	a4,a4,232 # 1a0e8 <__clzsi2+0xd6>
   16f8c:	000d2783          	lw	a5,0(s10)
   16f90:	4581                	li	a1,0
   16f92:	00286813          	ori	a6,a6,2
   16f96:	0d11                	addi	s10,s10,4
   16f98:	c23a                	sw	a4,4(sp)
   16f9a:	02010da3          	sb	zero,59(sp)
   16f9e:	1a0dc763          	bltz	s11,1714c <_vfiprintf_r+0x856>
   16fa2:	00b7e733          	or	a4,a5,a1
   16fa6:	f7f87613          	andi	a2,a6,-129
   16faa:	18071d63          	bnez	a4,17144 <_vfiprintf_r+0x84e>
   16fae:	8e42                	mv	t3,a6
   16fb0:	4789                	li	a5,2
   16fb2:	8832                	mv	a6,a2
   16fb4:	bdd5                	j	16ea8 <_vfiprintf_r+0x5b2>
   16fb6:	02087793          	andi	a5,a6,32
   16fba:	2e079463          	bnez	a5,172a2 <_vfiprintf_r+0x9ac>
   16fbe:	01087793          	andi	a5,a6,16
   16fc2:	48079263          	bnez	a5,17446 <_vfiprintf_r+0xb50>
   16fc6:	04087793          	andi	a5,a6,64
   16fca:	54079f63          	bnez	a5,17528 <_vfiprintf_r+0xc32>
   16fce:	20087813          	andi	a6,a6,512
   16fd2:	46080a63          	beqz	a6,17446 <_vfiprintf_r+0xb50>
   16fd6:	000d2783          	lw	a5,0(s10)
   16fda:	0d11                	addi	s10,s10,4
   16fdc:	01278023          	sb	s2,0(a5)
   16fe0:	b2e9                	j	169aa <_vfiprintf_r+0xb4>
   16fe2:	411b0333          	sub	t1,s6,a7
   16fe6:	ac6056e3          	blez	t1,16ab2 <_vfiprintf_r+0x1bc>
   16fea:	6f6d                	lui	t5,0x1b
   16fec:	4641                	li	a2,16
   16fee:	938f0f13          	addi	t5,t5,-1736 # 1a938 <zeroes.0>
   16ff2:	04665f63          	bge	a2,t1,17050 <_vfiprintf_r+0x75a>
   16ff6:	c426                	sw	s1,8(sp)
   16ff8:	86a2                	mv	a3,s0
   16ffa:	4ec1                	li	t4,16
   16ffc:	4f9d                	li	t6,7
   16ffe:	c642                	sw	a6,12(sp)
   17000:	c872                	sw	t3,16(sp)
   17002:	841a                	mv	s0,t1
   17004:	d046                	sw	a7,32(sp)
   17006:	84fa                	mv	s1,t5
   17008:	a021                	j	17010 <_vfiprintf_r+0x71a>
   1700a:	1441                	addi	s0,s0,-16
   1700c:	028edb63          	bge	t4,s0,17042 <_vfiprintf_r+0x74c>
   17010:	0741                	addi	a4,a4,16
   17012:	0785                	addi	a5,a5,1
   17014:	c284                	sw	s1,0(a3)
   17016:	01d6a223          	sw	t4,4(a3)
   1701a:	c4ba                	sw	a4,72(sp)
   1701c:	c2be                	sw	a5,68(sp)
   1701e:	06a1                	addi	a3,a3,8
   17020:	feffd5e3          	bge	t6,a5,1700a <_vfiprintf_r+0x714>
   17024:	0090                	addi	a2,sp,64
   17026:	85d6                	mv	a1,s5
   17028:	855e                	mv	a0,s7
   1702a:	bd6fc0ef          	jal	13400 <__sprint_r>
   1702e:	ba051ee3          	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   17032:	4ec1                	li	t4,16
   17034:	1441                	addi	s0,s0,-16
   17036:	4726                	lw	a4,72(sp)
   17038:	4796                	lw	a5,68(sp)
   1703a:	86e2                	mv	a3,s8
   1703c:	4f9d                	li	t6,7
   1703e:	fc8ec9e3          	blt	t4,s0,17010 <_vfiprintf_r+0x71a>
   17042:	8f26                	mv	t5,s1
   17044:	4832                	lw	a6,12(sp)
   17046:	4e42                	lw	t3,16(sp)
   17048:	5882                	lw	a7,32(sp)
   1704a:	44a2                	lw	s1,8(sp)
   1704c:	8322                	mv	t1,s0
   1704e:	8436                	mv	s0,a3
   17050:	971a                	add	a4,a4,t1
   17052:	0785                	addi	a5,a5,1
   17054:	01e42023          	sw	t5,0(s0)
   17058:	00642223          	sw	t1,4(s0)
   1705c:	c4ba                	sw	a4,72(sp)
   1705e:	c2be                	sw	a5,68(sp)
   17060:	461d                	li	a2,7
   17062:	0421                	addi	s0,s0,8
   17064:	a4f657e3          	bge	a2,a5,16ab2 <_vfiprintf_r+0x1bc>
   17068:	0090                	addi	a2,sp,64
   1706a:	85d6                	mv	a1,s5
   1706c:	855e                	mv	a0,s7
   1706e:	c846                	sw	a7,16(sp)
   17070:	c672                	sw	t3,12(sp)
   17072:	c442                	sw	a6,8(sp)
   17074:	b8cfc0ef          	jal	13400 <__sprint_r>
   17078:	b60519e3          	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   1707c:	4e32                	lw	t3,12(sp)
   1707e:	4726                	lw	a4,72(sp)
   17080:	4796                	lw	a5,68(sp)
   17082:	41cd8db3          	sub	s11,s11,t3
   17086:	48c2                	lw	a7,16(sp)
   17088:	4822                	lw	a6,8(sp)
   1708a:	8462                	mv	s0,s8
   1708c:	a3b057e3          	blez	s11,16aba <_vfiprintf_r+0x1c4>
   17090:	6f6d                	lui	t5,0x1b
   17092:	938f0f13          	addi	t5,t5,-1736 # 1a938 <zeroes.0>
   17096:	05ba5c63          	bge	s4,s11,170ee <_vfiprintf_r+0x7f8>
   1709a:	86a2                	mv	a3,s0
   1709c:	431d                	li	t1,7
   1709e:	846e                	mv	s0,s11
   170a0:	c442                	sw	a6,8(sp)
   170a2:	c672                	sw	t3,12(sp)
   170a4:	c846                	sw	a7,16(sp)
   170a6:	8de6                	mv	s11,s9
   170a8:	a021                	j	170b0 <_vfiprintf_r+0x7ba>
   170aa:	1441                	addi	s0,s0,-16
   170ac:	028a5b63          	bge	s4,s0,170e2 <_vfiprintf_r+0x7ec>
   170b0:	0741                	addi	a4,a4,16
   170b2:	0785                	addi	a5,a5,1
   170b4:	0196a023          	sw	s9,0(a3)
   170b8:	0146a223          	sw	s4,4(a3)
   170bc:	c4ba                	sw	a4,72(sp)
   170be:	c2be                	sw	a5,68(sp)
   170c0:	06a1                	addi	a3,a3,8
   170c2:	fef354e3          	bge	t1,a5,170aa <_vfiprintf_r+0x7b4>
   170c6:	0090                	addi	a2,sp,64
   170c8:	85d6                	mv	a1,s5
   170ca:	855e                	mv	a0,s7
   170cc:	b34fc0ef          	jal	13400 <__sprint_r>
   170d0:	b0051de3          	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   170d4:	1441                	addi	s0,s0,-16
   170d6:	4726                	lw	a4,72(sp)
   170d8:	4796                	lw	a5,68(sp)
   170da:	86e2                	mv	a3,s8
   170dc:	431d                	li	t1,7
   170de:	fc8a49e3          	blt	s4,s0,170b0 <_vfiprintf_r+0x7ba>
   170e2:	4822                	lw	a6,8(sp)
   170e4:	4e32                	lw	t3,12(sp)
   170e6:	48c2                	lw	a7,16(sp)
   170e8:	8f6e                	mv	t5,s11
   170ea:	8da2                	mv	s11,s0
   170ec:	8436                	mv	s0,a3
   170ee:	976e                	add	a4,a4,s11
   170f0:	0785                	addi	a5,a5,1
   170f2:	01e42023          	sw	t5,0(s0)
   170f6:	01b42223          	sw	s11,4(s0)
   170fa:	c4ba                	sw	a4,72(sp)
   170fc:	c2be                	sw	a5,68(sp)
   170fe:	461d                	li	a2,7
   17100:	0421                	addi	s0,s0,8
   17102:	9af65ce3          	bge	a2,a5,16aba <_vfiprintf_r+0x1c4>
   17106:	0090                	addi	a2,sp,64
   17108:	85d6                	mv	a1,s5
   1710a:	855e                	mv	a0,s7
   1710c:	c846                	sw	a7,16(sp)
   1710e:	c672                	sw	t3,12(sp)
   17110:	c442                	sw	a6,8(sp)
   17112:	aeefc0ef          	jal	13400 <__sprint_r>
   17116:	ac051ae3          	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   1711a:	4726                	lw	a4,72(sp)
   1711c:	4796                	lw	a5,68(sp)
   1711e:	48c2                	lw	a7,16(sp)
   17120:	4e32                	lw	t3,12(sp)
   17122:	4822                	lw	a6,8(sp)
   17124:	8462                	mv	s0,s8
   17126:	ba51                	j	16aba <_vfiprintf_r+0x1c4>
   17128:	0090                	addi	a2,sp,64
   1712a:	85d6                	mv	a1,s5
   1712c:	855e                	mv	a0,s7
   1712e:	c646                	sw	a7,12(sp)
   17130:	c442                	sw	a6,8(sp)
   17132:	acefc0ef          	jal	13400 <__sprint_r>
   17136:	aa051ae3          	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   1713a:	4726                	lw	a4,72(sp)
   1713c:	48b2                	lw	a7,12(sp)
   1713e:	4822                	lw	a6,8(sp)
   17140:	8462                	mv	s0,s8
   17142:	b279                	j	16ad0 <_vfiprintf_r+0x1da>
   17144:	4709                	li	a4,2
   17146:	8832                	mv	a6,a2
   17148:	de0706e3          	beqz	a4,16f34 <_vfiprintf_r+0x63e>
   1714c:	4612                	lw	a2,4(sp)
   1714e:	1984                	addi	s1,sp,240
   17150:	00f7f713          	andi	a4,a5,15
   17154:	9732                	add	a4,a4,a2
   17156:	00074683          	lbu	a3,0(a4)
   1715a:	8391                	srli	a5,a5,0x4
   1715c:	01c59713          	slli	a4,a1,0x1c
   17160:	8fd9                	or	a5,a5,a4
   17162:	8191                	srli	a1,a1,0x4
   17164:	fed48fa3          	sb	a3,-1(s1)
   17168:	00b7e733          	or	a4,a5,a1
   1716c:	14fd                	addi	s1,s1,-1
   1716e:	f36d                	bnez	a4,17150 <_vfiprintf_r+0x85a>
   17170:	199c                	addi	a5,sp,240
   17172:	40978e33          	sub	t3,a5,s1
   17176:	88ee                	mv	a7,s11
   17178:	bdcdd0e3          	bge	s11,t3,16d38 <_vfiprintf_r+0x442>
   1717c:	88f2                	mv	a7,t3
   1717e:	be6d                	j	16d38 <_vfiprintf_r+0x442>
   17180:	636d                	lui	t1,0x1b
   17182:	4641                	li	a2,16
   17184:	94830313          	addi	t1,t1,-1720 # 1a948 <blanks.1>
   17188:	07d65363          	bge	a2,t4,171ee <_vfiprintf_r+0x8f8>
   1718c:	c826                	sw	s1,16(sp)
   1718e:	86a2                	mv	a3,s0
   17190:	4f41                	li	t5,16
   17192:	439d                	li	t2,7
   17194:	c416                	sw	t0,8(sp)
   17196:	c67e                	sw	t6,12(sp)
   17198:	d042                	sw	a6,32(sp)
   1719a:	d272                	sw	t3,36(sp)
   1719c:	8476                	mv	s0,t4
   1719e:	d446                	sw	a7,40(sp)
   171a0:	849a                	mv	s1,t1
   171a2:	a021                	j	171aa <_vfiprintf_r+0x8b4>
   171a4:	1441                	addi	s0,s0,-16
   171a6:	028f5b63          	bge	t5,s0,171dc <_vfiprintf_r+0x8e6>
   171aa:	0741                	addi	a4,a4,16
   171ac:	0785                	addi	a5,a5,1
   171ae:	c284                	sw	s1,0(a3)
   171b0:	01e6a223          	sw	t5,4(a3)
   171b4:	c4ba                	sw	a4,72(sp)
   171b6:	c2be                	sw	a5,68(sp)
   171b8:	06a1                	addi	a3,a3,8
   171ba:	fef3d5e3          	bge	t2,a5,171a4 <_vfiprintf_r+0x8ae>
   171be:	0090                	addi	a2,sp,64
   171c0:	85d6                	mv	a1,s5
   171c2:	855e                	mv	a0,s7
   171c4:	a3cfc0ef          	jal	13400 <__sprint_r>
   171c8:	a20511e3          	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   171cc:	4f41                	li	t5,16
   171ce:	1441                	addi	s0,s0,-16
   171d0:	4726                	lw	a4,72(sp)
   171d2:	4796                	lw	a5,68(sp)
   171d4:	86e2                	mv	a3,s8
   171d6:	439d                	li	t2,7
   171d8:	fc8f49e3          	blt	t5,s0,171aa <_vfiprintf_r+0x8b4>
   171dc:	8326                	mv	t1,s1
   171de:	42a2                	lw	t0,8(sp)
   171e0:	4fb2                	lw	t6,12(sp)
   171e2:	5802                	lw	a6,32(sp)
   171e4:	5e12                	lw	t3,36(sp)
   171e6:	58a2                	lw	a7,40(sp)
   171e8:	44c2                	lw	s1,16(sp)
   171ea:	8ea2                	mv	t4,s0
   171ec:	8436                	mv	s0,a3
   171ee:	9776                	add	a4,a4,t4
   171f0:	0785                	addi	a5,a5,1
   171f2:	00642023          	sw	t1,0(s0)
   171f6:	01d42223          	sw	t4,4(s0)
   171fa:	c4ba                	sw	a4,72(sp)
   171fc:	c2be                	sw	a5,68(sp)
   171fe:	461d                	li	a2,7
   17200:	0421                	addi	s0,s0,8
   17202:	86f656e3          	bge	a2,a5,16a6e <_vfiprintf_r+0x178>
   17206:	0090                	addi	a2,sp,64
   17208:	85d6                	mv	a1,s5
   1720a:	855e                	mv	a0,s7
   1720c:	d246                	sw	a7,36(sp)
   1720e:	d072                	sw	t3,32(sp)
   17210:	c842                	sw	a6,16(sp)
   17212:	c67e                	sw	t6,12(sp)
   17214:	c416                	sw	t0,8(sp)
   17216:	9eafc0ef          	jal	13400 <__sprint_r>
   1721a:	9c0518e3          	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   1721e:	4726                	lw	a4,72(sp)
   17220:	4796                	lw	a5,68(sp)
   17222:	5892                	lw	a7,36(sp)
   17224:	5e02                	lw	t3,32(sp)
   17226:	4842                	lw	a6,16(sp)
   17228:	4fb2                	lw	t6,12(sp)
   1722a:	42a2                	lw	t0,8(sp)
   1722c:	8462                	mv	s0,s8
   1722e:	841ff06f          	j	16a6e <_vfiprintf_r+0x178>
   17232:	0090                	addi	a2,sp,64
   17234:	85d6                	mv	a1,s5
   17236:	855e                	mv	a0,s7
   17238:	d046                	sw	a7,32(sp)
   1723a:	c872                	sw	t3,16(sp)
   1723c:	c642                	sw	a6,12(sp)
   1723e:	c47e                	sw	t6,8(sp)
   17240:	9c0fc0ef          	jal	13400 <__sprint_r>
   17244:	9a0513e3          	bnez	a0,16bea <_vfiprintf_r+0x2f4>
   17248:	4726                	lw	a4,72(sp)
   1724a:	4796                	lw	a5,68(sp)
   1724c:	5882                	lw	a7,32(sp)
   1724e:	4e42                	lw	t3,16(sp)
   17250:	4832                	lw	a6,12(sp)
   17252:	4fa2                	lw	t6,8(sp)
   17254:	8462                	mv	s0,s8
   17256:	855ff06f          	j	16aaa <_vfiprintf_r+0x1b4>
   1725a:	010e7713          	andi	a4,t3,16
   1725e:	000d2783          	lw	a5,0(s10)
   17262:	0d11                	addi	s10,s10,4
   17264:	e719                	bnez	a4,17272 <_vfiprintf_r+0x97c>
   17266:	040e7713          	andi	a4,t3,64
   1726a:	1e070f63          	beqz	a4,17468 <_vfiprintf_r+0xb72>
   1726e:	07c2                	slli	a5,a5,0x10
   17270:	83c1                	srli	a5,a5,0x10
   17272:	4881                	li	a7,0
   17274:	b951                	j	16f08 <_vfiprintf_r+0x612>
   17276:	01077613          	andi	a2,a4,16
   1727a:	000d2783          	lw	a5,0(s10)
   1727e:	0d11                	addi	s10,s10,4
   17280:	ee01                	bnez	a2,17298 <_vfiprintf_r+0x9a2>
   17282:	04077613          	andi	a2,a4,64
   17286:	c609                	beqz	a2,17290 <_vfiprintf_r+0x99a>
   17288:	07c2                	slli	a5,a5,0x10
   1728a:	83c1                	srli	a5,a5,0x10
   1728c:	4581                	li	a1,0
   1728e:	bef5                	j	16e8a <_vfiprintf_r+0x594>
   17290:	20077613          	andi	a2,a4,512
   17294:	2a061163          	bnez	a2,17536 <_vfiprintf_r+0xc40>
   17298:	4581                	li	a1,0
   1729a:	bec5                	j	16e8a <_vfiprintf_r+0x594>
   1729c:	4881                	li	a7,0
   1729e:	1984                	addi	s1,sp,240
   172a0:	bc61                	j	16d38 <_vfiprintf_r+0x442>
   172a2:	000d2783          	lw	a5,0(s10)
   172a6:	41f95713          	srai	a4,s2,0x1f
   172aa:	0d11                	addi	s10,s10,4
   172ac:	0127a023          	sw	s2,0(a5)
   172b0:	c3d8                	sw	a4,4(a5)
   172b2:	ef8ff06f          	j	169aa <_vfiprintf_r+0xb4>
   172b6:	88f2                	mv	a7,t3
   172b8:	84aa                	mv	s1,a0
   172ba:	bcbd                	j	16d38 <_vfiprintf_r+0x442>
   172bc:	5dfd                	li	s11,-1
   172be:	89b6                	mv	s3,a3
   172c0:	f4cff06f          	j	16a0c <_vfiprintf_r+0x116>
   172c4:	8e42                	mv	t3,a6
   172c6:	b12d                	j	16ef0 <_vfiprintf_r+0x5fa>
   172c8:	8742                	mv	a4,a6
   172ca:	b665                	j	16e72 <_vfiprintf_r+0x57c>
   172cc:	67e9                	lui	a5,0x1a
   172ce:	0fc78793          	addi	a5,a5,252 # 1a0fc <__clzsi2+0xea>
   172d2:	c23e                	sw	a5,4(sp)
   172d4:	02087793          	andi	a5,a6,32
   172d8:	c3a9                	beqz	a5,1731a <_vfiprintf_r+0xa24>
   172da:	0d1d                	addi	s10,s10,7
   172dc:	ff8d7d13          	andi	s10,s10,-8
   172e0:	000d2783          	lw	a5,0(s10)
   172e4:	004d2583          	lw	a1,4(s10)
   172e8:	0d21                	addi	s10,s10,8
   172ea:	00187713          	andi	a4,a6,1
   172ee:	cf01                	beqz	a4,17306 <_vfiprintf_r+0xa10>
   172f0:	00b7e733          	or	a4,a5,a1
   172f4:	cb09                	beqz	a4,17306 <_vfiprintf_r+0xa10>
   172f6:	03000713          	li	a4,48
   172fa:	02e10e23          	sb	a4,60(sp)
   172fe:	02c10ea3          	sb	a2,61(sp)
   17302:	00286813          	ori	a6,a6,2
   17306:	bff87813          	andi	a6,a6,-1025
   1730a:	b941                	j	16f9a <_vfiprintf_r+0x6a4>
   1730c:	67e9                	lui	a5,0x1a
   1730e:	0e878793          	addi	a5,a5,232 # 1a0e8 <__clzsi2+0xd6>
   17312:	c23e                	sw	a5,4(sp)
   17314:	02087793          	andi	a5,a6,32
   17318:	f3e9                	bnez	a5,172da <_vfiprintf_r+0x9e4>
   1731a:	01087713          	andi	a4,a6,16
   1731e:	000d2783          	lw	a5,0(s10)
   17322:	0d11                	addi	s10,s10,4
   17324:	e315                	bnez	a4,17348 <_vfiprintf_r+0xa52>
   17326:	04087713          	andi	a4,a6,64
   1732a:	cb19                	beqz	a4,17340 <_vfiprintf_r+0xa4a>
   1732c:	07c2                	slli	a5,a5,0x10
   1732e:	83c1                	srli	a5,a5,0x10
   17330:	4581                	li	a1,0
   17332:	bf65                	j	172ea <_vfiprintf_r+0x9f4>
   17334:	8526                	mv	a0,s1
   17336:	ab1f90ef          	jal	10de6 <strlen>
   1733a:	4822                	lw	a6,8(sp)
   1733c:	8e2a                	mv	t3,a0
   1733e:	b435                	j	16d6a <_vfiprintf_r+0x474>
   17340:	20087713          	andi	a4,a6,512
   17344:	1c071763          	bnez	a4,17512 <_vfiprintf_r+0xc1c>
   17348:	4581                	li	a1,0
   1734a:	b745                	j	172ea <_vfiprintf_r+0x9f4>
   1734c:	ccccdf37          	lui	t5,0xccccd
   17350:	ccccdfb7          	lui	t6,0xccccd
   17354:	42d2                	lw	t0,20(sp)
   17356:	40087e13          	andi	t3,a6,1024
   1735a:	4581                	li	a1,0
   1735c:	1988                	addi	a0,sp,240
   1735e:	4315                	li	t1,5
   17360:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccb1271>
   17364:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccb1270>
   17368:	0ff00e93          	li	t4,255
   1736c:	a081                	j	173ac <_vfiprintf_r+0xab6>
   1736e:	00f4b733          	sltu	a4,s1,a5
   17372:	9726                	add	a4,a4,s1
   17374:	02677733          	remu	a4,a4,t1
   17378:	40e78733          	sub	a4,a5,a4
   1737c:	00e7b633          	sltu	a2,a5,a4
   17380:	40c88633          	sub	a2,a7,a2
   17384:	03f703b3          	mul	t2,a4,t6
   17388:	03e60633          	mul	a2,a2,t5
   1738c:	03e73533          	mulhu	a0,a4,t5
   17390:	961e                	add	a2,a2,t2
   17392:	03e70733          	mul	a4,a4,t5
   17396:	962a                	add	a2,a2,a0
   17398:	01f61513          	slli	a0,a2,0x1f
   1739c:	8205                	srli	a2,a2,0x1
   1739e:	8305                	srli	a4,a4,0x1
   173a0:	8f49                	or	a4,a4,a0
   173a2:	16088263          	beqz	a7,17506 <_vfiprintf_r+0xc10>
   173a6:	87ba                	mv	a5,a4
   173a8:	88b2                	mv	a7,a2
   173aa:	8536                	mv	a0,a3
   173ac:	011784b3          	add	s1,a5,a7
   173b0:	00f4b733          	sltu	a4,s1,a5
   173b4:	9726                	add	a4,a4,s1
   173b6:	02677733          	remu	a4,a4,t1
   173ba:	fff50693          	addi	a3,a0,-1
   173be:	0585                	addi	a1,a1,1
   173c0:	40e78733          	sub	a4,a5,a4
   173c4:	00e7b3b3          	sltu	t2,a5,a4
   173c8:	407883b3          	sub	t2,a7,t2
   173cc:	03e73633          	mulhu	a2,a4,t5
   173d0:	03e383b3          	mul	t2,t2,t5
   173d4:	03e70733          	mul	a4,a4,t5
   173d8:	93b2                	add	t2,t2,a2
   173da:	03fe                	slli	t2,t2,0x1f
   173dc:	00175613          	srli	a2,a4,0x1
   173e0:	00c3e633          	or	a2,t2,a2
   173e4:	00261713          	slli	a4,a2,0x2
   173e8:	9732                	add	a4,a4,a2
   173ea:	0706                	slli	a4,a4,0x1
   173ec:	40e78733          	sub	a4,a5,a4
   173f0:	03070713          	addi	a4,a4,48
   173f4:	fee50fa3          	sb	a4,-1(a0)
   173f8:	f60e0be3          	beqz	t3,1736e <_vfiprintf_r+0xa78>
   173fc:	0002c703          	lbu	a4,0(t0)
   17400:	f6b717e3          	bne	a4,a1,1736e <_vfiprintf_r+0xa78>
   17404:	f7d585e3          	beq	a1,t4,1736e <_vfiprintf_r+0xa78>
   17408:	06089b63          	bnez	a7,1747e <_vfiprintf_r+0xb88>
   1740c:	4725                	li	a4,9
   1740e:	06f76863          	bltu	a4,a5,1747e <_vfiprintf_r+0xb88>
   17412:	84b6                	mv	s1,a3
   17414:	ca16                	sw	t0,20(sp)
   17416:	bba9                	j	17170 <_vfiprintf_r+0x87a>
   17418:	883a                	mv	a6,a4
   1741a:	4701                	li	a4,0
   1741c:	b0070ce3          	beqz	a4,16f34 <_vfiprintf_r+0x63e>
   17420:	b335                	j	1714c <_vfiprintf_r+0x856>
   17422:	be0f90ef          	jal	10802 <__sinit>
   17426:	cfaff06f          	j	16920 <_vfiprintf_r+0x2a>
   1742a:	0019c783          	lbu	a5,1(s3)
   1742e:	20086813          	ori	a6,a6,512
   17432:	0985                	addi	s3,s3,1
   17434:	dd4ff06f          	j	16a08 <_vfiprintf_r+0x112>
   17438:	0019c783          	lbu	a5,1(s3)
   1743c:	02086813          	ori	a6,a6,32
   17440:	0985                	addi	s3,s3,1
   17442:	dc6ff06f          	j	16a08 <_vfiprintf_r+0x112>
   17446:	000d2783          	lw	a5,0(s10)
   1744a:	0d11                	addi	s10,s10,4
   1744c:	0127a023          	sw	s2,0(a5)
   17450:	d5aff06f          	j	169aa <_vfiprintf_r+0xb4>
   17454:	4799                	li	a5,6
   17456:	8e6e                	mv	t3,s11
   17458:	0bb7eb63          	bltu	a5,s11,1750e <_vfiprintf_r+0xc18>
   1745c:	64e9                	lui	s1,0x1a
   1745e:	88f2                	mv	a7,t3
   17460:	11048493          	addi	s1,s1,272 # 1a110 <__clzsi2+0xfe>
   17464:	df2ff06f          	j	16a56 <_vfiprintf_r+0x160>
   17468:	200e7713          	andi	a4,t3,512
   1746c:	e00703e3          	beqz	a4,17272 <_vfiprintf_r+0x97c>
   17470:	0ff7f793          	zext.b	a5,a5
   17474:	4881                	li	a7,0
   17476:	bc49                	j	16f08 <_vfiprintf_r+0x612>
   17478:	4781                	li	a5,0
   1747a:	4581                	li	a1,0
   1747c:	b9c1                	j	1714c <_vfiprintf_r+0x856>
   1747e:	d43e                	sw	a5,40(sp)
   17480:	47e2                	lw	a5,24(sp)
   17482:	45f2                	lw	a1,28(sp)
   17484:	d646                	sw	a7,44(sp)
   17486:	8e9d                	sub	a3,a3,a5
   17488:	863e                	mv	a2,a5
   1748a:	8536                	mv	a0,a3
   1748c:	d27e                	sw	t6,36(sp)
   1748e:	d07a                	sw	t5,32(sp)
   17490:	ca72                	sw	t3,20(sp)
   17492:	c842                	sw	a6,16(sp)
   17494:	c616                	sw	t0,12(sp)
   17496:	c436                	sw	a3,8(sp)
   17498:	f0efc0ef          	jal	13ba6 <strncpy>
   1749c:	57a2                	lw	a5,40(sp)
   1749e:	4615                	li	a2,5
   174a0:	42b2                	lw	t0,12(sp)
   174a2:	00f4b733          	sltu	a4,s1,a5
   174a6:	9726                	add	a4,a4,s1
   174a8:	02c77733          	remu	a4,a4,a2
   174ac:	0012c603          	lbu	a2,1(t0)
   174b0:	58b2                	lw	a7,44(sp)
   174b2:	ccccd537          	lui	a0,0xccccd
   174b6:	00c03633          	snez	a2,a2
   174ba:	ccccd3b7          	lui	t2,0xccccd
   174be:	92b2                	add	t0,t0,a2
   174c0:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb1271>
   174c4:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccb1270>
   174c8:	46a2                	lw	a3,8(sp)
   174ca:	4842                	lw	a6,16(sp)
   174cc:	4e52                	lw	t3,20(sp)
   174ce:	5f02                	lw	t5,32(sp)
   174d0:	5f92                	lw	t6,36(sp)
   174d2:	4581                	li	a1,0
   174d4:	4315                	li	t1,5
   174d6:	0ff00e93          	li	t4,255
   174da:	40e78733          	sub	a4,a5,a4
   174de:	00e7b633          	sltu	a2,a5,a4
   174e2:	40c88633          	sub	a2,a7,a2
   174e6:	027703b3          	mul	t2,a4,t2
   174ea:	02a60633          	mul	a2,a2,a0
   174ee:	02a738b3          	mulhu	a7,a4,a0
   174f2:	961e                	add	a2,a2,t2
   174f4:	02a707b3          	mul	a5,a4,a0
   174f8:	9646                	add	a2,a2,a7
   174fa:	01f61713          	slli	a4,a2,0x1f
   174fe:	8205                	srli	a2,a2,0x1
   17500:	8385                	srli	a5,a5,0x1
   17502:	8f5d                	or	a4,a4,a5
   17504:	b54d                	j	173a6 <_vfiprintf_r+0xab0>
   17506:	4525                	li	a0,9
   17508:	e8f56fe3          	bltu	a0,a5,173a6 <_vfiprintf_r+0xab0>
   1750c:	b719                	j	17412 <_vfiprintf_r+0xb1c>
   1750e:	4e19                	li	t3,6
   17510:	b7b1                	j	1745c <_vfiprintf_r+0xb66>
   17512:	0ff7f793          	zext.b	a5,a5
   17516:	4581                	li	a1,0
   17518:	bbc9                	j	172ea <_vfiprintf_r+0x9f4>
   1751a:	07e2                	slli	a5,a5,0x18
   1751c:	87e1                	srai	a5,a5,0x18
   1751e:	41f7d893          	srai	a7,a5,0x1f
   17522:	8746                	mv	a4,a7
   17524:	e20ff06f          	j	16b44 <_vfiprintf_r+0x24e>
   17528:	000d2783          	lw	a5,0(s10)
   1752c:	0d11                	addi	s10,s10,4
   1752e:	01279023          	sh	s2,0(a5)
   17532:	c78ff06f          	j	169aa <_vfiprintf_r+0xb4>
   17536:	0ff7f793          	zext.b	a5,a5
   1753a:	4581                	li	a1,0
   1753c:	b2b9                	j	16e8a <_vfiprintf_r+0x594>
   1753e:	03000793          	li	a5,48
   17542:	fe4ff06f          	j	16d26 <_vfiprintf_r+0x430>
   17546:	5d7d                	li	s10,-1
   17548:	ecaff06f          	j	16c12 <_vfiprintf_r+0x31c>
   1754c:	000d2d83          	lw	s11,0(s10)
   17550:	0d11                	addi	s10,s10,4
   17552:	000dd363          	bgez	s11,17558 <_vfiprintf_r+0xc62>
   17556:	5dfd                	li	s11,-1
   17558:	0019c783          	lbu	a5,1(s3)
   1755c:	89b6                	mv	s3,a3
   1755e:	caaff06f          	j	16a08 <_vfiprintf_r+0x112>

00017562 <vfiprintf>:
   17562:	87aa                	mv	a5,a0
   17564:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   17568:	86b2                	mv	a3,a2
   1756a:	862e                	mv	a2,a1
   1756c:	85be                	mv	a1,a5
   1756e:	b88ff06f          	j	168f6 <_vfiprintf_r>

00017572 <__sbprintf>:
   17572:	b8010113          	addi	sp,sp,-1152
   17576:	00c59783          	lh	a5,12(a1)
   1757a:	00e5d703          	lhu	a4,14(a1)
   1757e:	46812c23          	sw	s0,1144(sp)
   17582:	842e                	mv	s0,a1
   17584:	65c1                	lui	a1,0x10
   17586:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   17588:	06442e03          	lw	t3,100(s0)
   1758c:	01c42303          	lw	t1,28(s0)
   17590:	02442883          	lw	a7,36(s0)
   17594:	0742                	slli	a4,a4,0x10
   17596:	8fed                	and	a5,a5,a1
   17598:	8fd9                	or	a5,a5,a4
   1759a:	40000813          	li	a6,1024
   1759e:	ca3e                	sw	a5,20(sp)
   175a0:	002c                	addi	a1,sp,8
   175a2:	189c                	addi	a5,sp,112
   175a4:	46912a23          	sw	s1,1140(sp)
   175a8:	47212823          	sw	s2,1136(sp)
   175ac:	46112e23          	sw	ra,1148(sp)
   175b0:	892a                	mv	s2,a0
   175b2:	d6f2                	sw	t3,108(sp)
   175b4:	d21a                	sw	t1,36(sp)
   175b6:	d646                	sw	a7,44(sp)
   175b8:	c43e                	sw	a5,8(sp)
   175ba:	cc3e                	sw	a5,24(sp)
   175bc:	c842                	sw	a6,16(sp)
   175be:	ce42                	sw	a6,28(sp)
   175c0:	d002                	sw	zero,32(sp)
   175c2:	b34ff0ef          	jal	168f6 <_vfiprintf_r>
   175c6:	84aa                	mv	s1,a0
   175c8:	02055963          	bgez	a0,175fa <__sbprintf+0x88>
   175cc:	01415783          	lhu	a5,20(sp)
   175d0:	0407f793          	andi	a5,a5,64
   175d4:	c799                	beqz	a5,175e2 <__sbprintf+0x70>
   175d6:	00c45783          	lhu	a5,12(s0)
   175da:	0407e793          	ori	a5,a5,64
   175de:	00f41623          	sh	a5,12(s0)
   175e2:	47c12083          	lw	ra,1148(sp)
   175e6:	47812403          	lw	s0,1144(sp)
   175ea:	47012903          	lw	s2,1136(sp)
   175ee:	8526                	mv	a0,s1
   175f0:	47412483          	lw	s1,1140(sp)
   175f4:	48010113          	addi	sp,sp,1152
   175f8:	8082                	ret
   175fa:	002c                	addi	a1,sp,8
   175fc:	854a                	mv	a0,s2
   175fe:	870fc0ef          	jal	1366e <_fflush_r>
   17602:	d569                	beqz	a0,175cc <__sbprintf+0x5a>
   17604:	54fd                	li	s1,-1
   17606:	b7d9                	j	175cc <__sbprintf+0x5a>

00017608 <__errno>:
   17608:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   1760c:	8082                	ret

0001760e <abort>:
   1760e:	1141                	addi	sp,sp,-16
   17610:	4519                	li	a0,6
   17612:	c606                	sw	ra,12(sp)
   17614:	2a59                	jal	177aa <raise>
   17616:	4505                	li	a0,1
   17618:	2e61                	jal	179b0 <_exit>

0001761a <_init_signal_r>:
   1761a:	11852783          	lw	a5,280(a0)
   1761e:	c399                	beqz	a5,17624 <_init_signal_r+0xa>
   17620:	4501                	li	a0,0
   17622:	8082                	ret
   17624:	1141                	addi	sp,sp,-16
   17626:	08000593          	li	a1,128
   1762a:	c422                	sw	s0,8(sp)
   1762c:	c606                	sw	ra,12(sp)
   1762e:	842a                	mv	s0,a0
   17630:	be3f90ef          	jal	11212 <_malloc_r>
   17634:	10a42c23          	sw	a0,280(s0)
   17638:	cd09                	beqz	a0,17652 <_init_signal_r+0x38>
   1763a:	08050793          	addi	a5,a0,128
   1763e:	00052023          	sw	zero,0(a0)
   17642:	0511                	addi	a0,a0,4
   17644:	fef51de3          	bne	a0,a5,1763e <_init_signal_r+0x24>
   17648:	4501                	li	a0,0
   1764a:	40b2                	lw	ra,12(sp)
   1764c:	4422                	lw	s0,8(sp)
   1764e:	0141                	addi	sp,sp,16
   17650:	8082                	ret
   17652:	557d                	li	a0,-1
   17654:	bfdd                	j	1764a <_init_signal_r+0x30>

00017656 <_signal_r>:
   17656:	1101                	addi	sp,sp,-32
   17658:	ca26                	sw	s1,20(sp)
   1765a:	ce06                	sw	ra,28(sp)
   1765c:	47fd                	li	a5,31
   1765e:	84aa                	mv	s1,a0
   17660:	02b7e063          	bltu	a5,a1,17680 <_signal_r+0x2a>
   17664:	11852783          	lw	a5,280(a0)
   17668:	cc22                	sw	s0,24(sp)
   1766a:	842e                	mv	s0,a1
   1766c:	cf91                	beqz	a5,17688 <_signal_r+0x32>
   1766e:	040a                	slli	s0,s0,0x2
   17670:	97a2                	add	a5,a5,s0
   17672:	4462                	lw	s0,24(sp)
   17674:	4388                	lw	a0,0(a5)
   17676:	c390                	sw	a2,0(a5)
   17678:	40f2                	lw	ra,28(sp)
   1767a:	44d2                	lw	s1,20(sp)
   1767c:	6105                	addi	sp,sp,32
   1767e:	8082                	ret
   17680:	47d9                	li	a5,22
   17682:	c11c                	sw	a5,0(a0)
   17684:	557d                	li	a0,-1
   17686:	bfcd                	j	17678 <_signal_r+0x22>
   17688:	08000593          	li	a1,128
   1768c:	c632                	sw	a2,12(sp)
   1768e:	b85f90ef          	jal	11212 <_malloc_r>
   17692:	10a4ac23          	sw	a0,280(s1)
   17696:	4632                	lw	a2,12(sp)
   17698:	87aa                	mv	a5,a0
   1769a:	872a                	mv	a4,a0
   1769c:	08050693          	addi	a3,a0,128
   176a0:	c519                	beqz	a0,176ae <_signal_r+0x58>
   176a2:	00072023          	sw	zero,0(a4)
   176a6:	0711                	addi	a4,a4,4
   176a8:	fed71de3          	bne	a4,a3,176a2 <_signal_r+0x4c>
   176ac:	b7c9                	j	1766e <_signal_r+0x18>
   176ae:	4462                	lw	s0,24(sp)
   176b0:	557d                	li	a0,-1
   176b2:	b7d9                	j	17678 <_signal_r+0x22>

000176b4 <_raise_r>:
   176b4:	1141                	addi	sp,sp,-16
   176b6:	c226                	sw	s1,4(sp)
   176b8:	c606                	sw	ra,12(sp)
   176ba:	47fd                	li	a5,31
   176bc:	84aa                	mv	s1,a0
   176be:	04b7ee63          	bltu	a5,a1,1771a <_raise_r+0x66>
   176c2:	11852783          	lw	a5,280(a0)
   176c6:	c422                	sw	s0,8(sp)
   176c8:	842e                	mv	s0,a1
   176ca:	c795                	beqz	a5,176f6 <_raise_r+0x42>
   176cc:	00259713          	slli	a4,a1,0x2
   176d0:	97ba                	add	a5,a5,a4
   176d2:	4398                	lw	a4,0(a5)
   176d4:	c30d                	beqz	a4,176f6 <_raise_r+0x42>
   176d6:	4685                	li	a3,1
   176d8:	00d70963          	beq	a4,a3,176ea <_raise_r+0x36>
   176dc:	56fd                	li	a3,-1
   176de:	02d70663          	beq	a4,a3,1770a <_raise_r+0x56>
   176e2:	0007a023          	sw	zero,0(a5)
   176e6:	852e                	mv	a0,a1
   176e8:	9702                	jalr	a4
   176ea:	4422                	lw	s0,8(sp)
   176ec:	4501                	li	a0,0
   176ee:	40b2                	lw	ra,12(sp)
   176f0:	4492                	lw	s1,4(sp)
   176f2:	0141                	addi	sp,sp,16
   176f4:	8082                	ret
   176f6:	8526                	mv	a0,s1
   176f8:	2469                	jal	17982 <_getpid_r>
   176fa:	8622                	mv	a2,s0
   176fc:	4422                	lw	s0,8(sp)
   176fe:	40b2                	lw	ra,12(sp)
   17700:	85aa                	mv	a1,a0
   17702:	8526                	mv	a0,s1
   17704:	4492                	lw	s1,4(sp)
   17706:	0141                	addi	sp,sp,16
   17708:	a489                	j	1794a <_kill_r>
   1770a:	4422                	lw	s0,8(sp)
   1770c:	40b2                	lw	ra,12(sp)
   1770e:	47d9                	li	a5,22
   17710:	c11c                	sw	a5,0(a0)
   17712:	4492                	lw	s1,4(sp)
   17714:	4505                	li	a0,1
   17716:	0141                	addi	sp,sp,16
   17718:	8082                	ret
   1771a:	47d9                	li	a5,22
   1771c:	c11c                	sw	a5,0(a0)
   1771e:	557d                	li	a0,-1
   17720:	b7f9                	j	176ee <_raise_r+0x3a>

00017722 <__sigtramp_r>:
   17722:	47fd                	li	a5,31
   17724:	08b7e163          	bltu	a5,a1,177a6 <__sigtramp_r+0x84>
   17728:	11852783          	lw	a5,280(a0)
   1772c:	1141                	addi	sp,sp,-16
   1772e:	c422                	sw	s0,8(sp)
   17730:	c226                	sw	s1,4(sp)
   17732:	c606                	sw	ra,12(sp)
   17734:	842e                	mv	s0,a1
   17736:	84aa                	mv	s1,a0
   17738:	c7a1                	beqz	a5,17780 <__sigtramp_r+0x5e>
   1773a:	00241713          	slli	a4,s0,0x2
   1773e:	97ba                	add	a5,a5,a4
   17740:	4398                	lw	a4,0(a5)
   17742:	c30d                	beqz	a4,17764 <__sigtramp_r+0x42>
   17744:	56fd                	li	a3,-1
   17746:	02d70b63          	beq	a4,a3,1777c <__sigtramp_r+0x5a>
   1774a:	4685                	li	a3,1
   1774c:	02d70263          	beq	a4,a3,17770 <__sigtramp_r+0x4e>
   17750:	8522                	mv	a0,s0
   17752:	0007a023          	sw	zero,0(a5)
   17756:	9702                	jalr	a4
   17758:	4501                	li	a0,0
   1775a:	40b2                	lw	ra,12(sp)
   1775c:	4422                	lw	s0,8(sp)
   1775e:	4492                	lw	s1,4(sp)
   17760:	0141                	addi	sp,sp,16
   17762:	8082                	ret
   17764:	40b2                	lw	ra,12(sp)
   17766:	4422                	lw	s0,8(sp)
   17768:	4492                	lw	s1,4(sp)
   1776a:	4505                	li	a0,1
   1776c:	0141                	addi	sp,sp,16
   1776e:	8082                	ret
   17770:	40b2                	lw	ra,12(sp)
   17772:	4422                	lw	s0,8(sp)
   17774:	4492                	lw	s1,4(sp)
   17776:	450d                	li	a0,3
   17778:	0141                	addi	sp,sp,16
   1777a:	8082                	ret
   1777c:	4509                	li	a0,2
   1777e:	bff1                	j	1775a <__sigtramp_r+0x38>
   17780:	08000593          	li	a1,128
   17784:	a8ff90ef          	jal	11212 <_malloc_r>
   17788:	10a4ac23          	sw	a0,280(s1)
   1778c:	87aa                	mv	a5,a0
   1778e:	c911                	beqz	a0,177a2 <__sigtramp_r+0x80>
   17790:	872a                	mv	a4,a0
   17792:	08050693          	addi	a3,a0,128
   17796:	00072023          	sw	zero,0(a4)
   1779a:	0711                	addi	a4,a4,4
   1779c:	fed71de3          	bne	a4,a3,17796 <__sigtramp_r+0x74>
   177a0:	bf69                	j	1773a <__sigtramp_r+0x18>
   177a2:	557d                	li	a0,-1
   177a4:	bf5d                	j	1775a <__sigtramp_r+0x38>
   177a6:	557d                	li	a0,-1
   177a8:	8082                	ret

000177aa <raise>:
   177aa:	1141                	addi	sp,sp,-16
   177ac:	c226                	sw	s1,4(sp)
   177ae:	c606                	sw	ra,12(sp)
   177b0:	47fd                	li	a5,31
   177b2:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   177b6:	04a7ed63          	bltu	a5,a0,17810 <raise+0x66>
   177ba:	1184a783          	lw	a5,280(s1)
   177be:	c422                	sw	s0,8(sp)
   177c0:	842a                	mv	s0,a0
   177c2:	c78d                	beqz	a5,177ec <raise+0x42>
   177c4:	00251713          	slli	a4,a0,0x2
   177c8:	97ba                	add	a5,a5,a4
   177ca:	4398                	lw	a4,0(a5)
   177cc:	c305                	beqz	a4,177ec <raise+0x42>
   177ce:	4685                	li	a3,1
   177d0:	00d70863          	beq	a4,a3,177e0 <raise+0x36>
   177d4:	56fd                	li	a3,-1
   177d6:	02d70563          	beq	a4,a3,17800 <raise+0x56>
   177da:	0007a023          	sw	zero,0(a5)
   177de:	9702                	jalr	a4
   177e0:	4422                	lw	s0,8(sp)
   177e2:	4501                	li	a0,0
   177e4:	40b2                	lw	ra,12(sp)
   177e6:	4492                	lw	s1,4(sp)
   177e8:	0141                	addi	sp,sp,16
   177ea:	8082                	ret
   177ec:	8526                	mv	a0,s1
   177ee:	2a51                	jal	17982 <_getpid_r>
   177f0:	8622                	mv	a2,s0
   177f2:	4422                	lw	s0,8(sp)
   177f4:	40b2                	lw	ra,12(sp)
   177f6:	85aa                	mv	a1,a0
   177f8:	8526                	mv	a0,s1
   177fa:	4492                	lw	s1,4(sp)
   177fc:	0141                	addi	sp,sp,16
   177fe:	a2b1                	j	1794a <_kill_r>
   17800:	4422                	lw	s0,8(sp)
   17802:	40b2                	lw	ra,12(sp)
   17804:	47d9                	li	a5,22
   17806:	c09c                	sw	a5,0(s1)
   17808:	4505                	li	a0,1
   1780a:	4492                	lw	s1,4(sp)
   1780c:	0141                	addi	sp,sp,16
   1780e:	8082                	ret
   17810:	47d9                	li	a5,22
   17812:	c09c                	sw	a5,0(s1)
   17814:	557d                	li	a0,-1
   17816:	b7f9                	j	177e4 <raise+0x3a>

00017818 <signal>:
   17818:	1141                	addi	sp,sp,-16
   1781a:	c04a                	sw	s2,0(sp)
   1781c:	c606                	sw	ra,12(sp)
   1781e:	47fd                	li	a5,31
   17820:	f141a903          	lw	s2,-236(gp) # 1b724 <_impure_ptr>
   17824:	02a7e463          	bltu	a5,a0,1784c <signal+0x34>
   17828:	c422                	sw	s0,8(sp)
   1782a:	842a                	mv	s0,a0
   1782c:	11892503          	lw	a0,280(s2)
   17830:	c226                	sw	s1,4(sp)
   17832:	84ae                	mv	s1,a1
   17834:	c10d                	beqz	a0,17856 <signal+0x3e>
   17836:	040a                	slli	s0,s0,0x2
   17838:	008507b3          	add	a5,a0,s0
   1783c:	4388                	lw	a0,0(a5)
   1783e:	4422                	lw	s0,8(sp)
   17840:	c384                	sw	s1,0(a5)
   17842:	4492                	lw	s1,4(sp)
   17844:	40b2                	lw	ra,12(sp)
   17846:	4902                	lw	s2,0(sp)
   17848:	0141                	addi	sp,sp,16
   1784a:	8082                	ret
   1784c:	47d9                	li	a5,22
   1784e:	00f92023          	sw	a5,0(s2)
   17852:	557d                	li	a0,-1
   17854:	bfc5                	j	17844 <signal+0x2c>
   17856:	08000593          	li	a1,128
   1785a:	854a                	mv	a0,s2
   1785c:	9b7f90ef          	jal	11212 <_malloc_r>
   17860:	10a92c23          	sw	a0,280(s2)
   17864:	87aa                	mv	a5,a0
   17866:	08050713          	addi	a4,a0,128
   1786a:	c519                	beqz	a0,17878 <signal+0x60>
   1786c:	0007a023          	sw	zero,0(a5)
   17870:	0791                	addi	a5,a5,4
   17872:	fef71de3          	bne	a4,a5,1786c <signal+0x54>
   17876:	b7c1                	j	17836 <signal+0x1e>
   17878:	4422                	lw	s0,8(sp)
   1787a:	4492                	lw	s1,4(sp)
   1787c:	557d                	li	a0,-1
   1787e:	b7d9                	j	17844 <signal+0x2c>

00017880 <_init_signal>:
   17880:	1141                	addi	sp,sp,-16
   17882:	c422                	sw	s0,8(sp)
   17884:	f141a403          	lw	s0,-236(gp) # 1b724 <_impure_ptr>
   17888:	c606                	sw	ra,12(sp)
   1788a:	11842783          	lw	a5,280(s0)
   1788e:	c791                	beqz	a5,1789a <_init_signal+0x1a>
   17890:	4501                	li	a0,0
   17892:	40b2                	lw	ra,12(sp)
   17894:	4422                	lw	s0,8(sp)
   17896:	0141                	addi	sp,sp,16
   17898:	8082                	ret
   1789a:	08000593          	li	a1,128
   1789e:	8522                	mv	a0,s0
   178a0:	973f90ef          	jal	11212 <_malloc_r>
   178a4:	10a42c23          	sw	a0,280(s0)
   178a8:	c909                	beqz	a0,178ba <_init_signal+0x3a>
   178aa:	08050793          	addi	a5,a0,128
   178ae:	00052023          	sw	zero,0(a0)
   178b2:	0511                	addi	a0,a0,4
   178b4:	fef51de3          	bne	a0,a5,178ae <_init_signal+0x2e>
   178b8:	bfe1                	j	17890 <_init_signal+0x10>
   178ba:	557d                	li	a0,-1
   178bc:	bfd9                	j	17892 <_init_signal+0x12>

000178be <__sigtramp>:
   178be:	1141                	addi	sp,sp,-16
   178c0:	c226                	sw	s1,4(sp)
   178c2:	c606                	sw	ra,12(sp)
   178c4:	47fd                	li	a5,31
   178c6:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   178ca:	06a7ee63          	bltu	a5,a0,17946 <__sigtramp+0x88>
   178ce:	1184a783          	lw	a5,280(s1)
   178d2:	c422                	sw	s0,8(sp)
   178d4:	842a                	mv	s0,a0
   178d6:	c7a9                	beqz	a5,17920 <__sigtramp+0x62>
   178d8:	00241713          	slli	a4,s0,0x2
   178dc:	97ba                	add	a5,a5,a4
   178de:	4398                	lw	a4,0(a5)
   178e0:	c30d                	beqz	a4,17902 <__sigtramp+0x44>
   178e2:	56fd                	li	a3,-1
   178e4:	02d70b63          	beq	a4,a3,1791a <__sigtramp+0x5c>
   178e8:	4685                	li	a3,1
   178ea:	02d70263          	beq	a4,a3,1790e <__sigtramp+0x50>
   178ee:	8522                	mv	a0,s0
   178f0:	0007a023          	sw	zero,0(a5)
   178f4:	9702                	jalr	a4
   178f6:	4422                	lw	s0,8(sp)
   178f8:	4501                	li	a0,0
   178fa:	40b2                	lw	ra,12(sp)
   178fc:	4492                	lw	s1,4(sp)
   178fe:	0141                	addi	sp,sp,16
   17900:	8082                	ret
   17902:	4422                	lw	s0,8(sp)
   17904:	40b2                	lw	ra,12(sp)
   17906:	4492                	lw	s1,4(sp)
   17908:	4505                	li	a0,1
   1790a:	0141                	addi	sp,sp,16
   1790c:	8082                	ret
   1790e:	4422                	lw	s0,8(sp)
   17910:	40b2                	lw	ra,12(sp)
   17912:	4492                	lw	s1,4(sp)
   17914:	450d                	li	a0,3
   17916:	0141                	addi	sp,sp,16
   17918:	8082                	ret
   1791a:	4422                	lw	s0,8(sp)
   1791c:	4509                	li	a0,2
   1791e:	bff1                	j	178fa <__sigtramp+0x3c>
   17920:	08000593          	li	a1,128
   17924:	8526                	mv	a0,s1
   17926:	8edf90ef          	jal	11212 <_malloc_r>
   1792a:	10a4ac23          	sw	a0,280(s1)
   1792e:	87aa                	mv	a5,a0
   17930:	c911                	beqz	a0,17944 <__sigtramp+0x86>
   17932:	872a                	mv	a4,a0
   17934:	08050693          	addi	a3,a0,128
   17938:	00072023          	sw	zero,0(a4)
   1793c:	0711                	addi	a4,a4,4
   1793e:	fee69de3          	bne	a3,a4,17938 <__sigtramp+0x7a>
   17942:	bf59                	j	178d8 <__sigtramp+0x1a>
   17944:	4422                	lw	s0,8(sp)
   17946:	557d                	li	a0,-1
   17948:	bf4d                	j	178fa <__sigtramp+0x3c>

0001794a <_kill_r>:
   1794a:	1141                	addi	sp,sp,-16
   1794c:	872e                	mv	a4,a1
   1794e:	c422                	sw	s0,8(sp)
   17950:	c226                	sw	s1,4(sp)
   17952:	842a                	mv	s0,a0
   17954:	85b2                	mv	a1,a2
   17956:	853a                	mv	a0,a4
   17958:	c606                	sw	ra,12(sp)
   1795a:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   1795e:	28d9                	jal	17a34 <_kill>
   17960:	57fd                	li	a5,-1
   17962:	00f50763          	beq	a0,a5,17970 <_kill_r+0x26>
   17966:	40b2                	lw	ra,12(sp)
   17968:	4422                	lw	s0,8(sp)
   1796a:	4492                	lw	s1,4(sp)
   1796c:	0141                	addi	sp,sp,16
   1796e:	8082                	ret
   17970:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   17974:	dbed                	beqz	a5,17966 <_kill_r+0x1c>
   17976:	40b2                	lw	ra,12(sp)
   17978:	c01c                	sw	a5,0(s0)
   1797a:	4422                	lw	s0,8(sp)
   1797c:	4492                	lw	s1,4(sp)
   1797e:	0141                	addi	sp,sp,16
   17980:	8082                	ret

00017982 <_getpid_r>:
   17982:	a069                	j	17a0c <_getpid>

00017984 <_close>:
   17984:	1141                	addi	sp,sp,-16
   17986:	c606                	sw	ra,12(sp)
   17988:	c422                	sw	s0,8(sp)
   1798a:	03900893          	li	a7,57
   1798e:	00000073          	ecall
   17992:	842a                	mv	s0,a0
   17994:	00054763          	bltz	a0,179a2 <_close+0x1e>
   17998:	40b2                	lw	ra,12(sp)
   1799a:	8522                	mv	a0,s0
   1799c:	4422                	lw	s0,8(sp)
   1799e:	0141                	addi	sp,sp,16
   179a0:	8082                	ret
   179a2:	40800433          	neg	s0,s0
   179a6:	c63ff0ef          	jal	17608 <__errno>
   179aa:	c100                	sw	s0,0(a0)
   179ac:	547d                	li	s0,-1
   179ae:	b7ed                	j	17998 <_close+0x14>

000179b0 <_exit>:
   179b0:	05d00893          	li	a7,93
   179b4:	00000073          	ecall
   179b8:	00054363          	bltz	a0,179be <_exit+0xe>
   179bc:	a001                	j	179bc <_exit+0xc>
   179be:	1141                	addi	sp,sp,-16
   179c0:	c422                	sw	s0,8(sp)
   179c2:	842a                	mv	s0,a0
   179c4:	c606                	sw	ra,12(sp)
   179c6:	40800433          	neg	s0,s0
   179ca:	c3fff0ef          	jal	17608 <__errno>
   179ce:	c100                	sw	s0,0(a0)
   179d0:	a001                	j	179d0 <_exit+0x20>

000179d2 <_fstat>:
   179d2:	7175                	addi	sp,sp,-144
   179d4:	c326                	sw	s1,132(sp)
   179d6:	c706                	sw	ra,140(sp)
   179d8:	84ae                	mv	s1,a1
   179da:	c522                	sw	s0,136(sp)
   179dc:	05000893          	li	a7,80
   179e0:	858a                	mv	a1,sp
   179e2:	00000073          	ecall
   179e6:	842a                	mv	s0,a0
   179e8:	00054b63          	bltz	a0,179fe <_fstat+0x2c>
   179ec:	8526                	mv	a0,s1
   179ee:	858a                	mv	a1,sp
   179f0:	2a05                	jal	17b20 <_conv_stat>
   179f2:	40ba                	lw	ra,140(sp)
   179f4:	8522                	mv	a0,s0
   179f6:	442a                	lw	s0,136(sp)
   179f8:	449a                	lw	s1,132(sp)
   179fa:	6149                	addi	sp,sp,144
   179fc:	8082                	ret
   179fe:	40800433          	neg	s0,s0
   17a02:	c07ff0ef          	jal	17608 <__errno>
   17a06:	c100                	sw	s0,0(a0)
   17a08:	547d                	li	s0,-1
   17a0a:	b7cd                	j	179ec <_fstat+0x1a>

00017a0c <_getpid>:
   17a0c:	4505                	li	a0,1
   17a0e:	8082                	ret

00017a10 <_isatty>:
   17a10:	7159                	addi	sp,sp,-112
   17a12:	002c                	addi	a1,sp,8
   17a14:	d686                	sw	ra,108(sp)
   17a16:	fbdff0ef          	jal	179d2 <_fstat>
   17a1a:	57fd                	li	a5,-1
   17a1c:	00f50863          	beq	a0,a5,17a2c <_isatty+0x1c>
   17a20:	4532                	lw	a0,12(sp)
   17a22:	50b6                	lw	ra,108(sp)
   17a24:	8135                	srli	a0,a0,0xd
   17a26:	8905                	andi	a0,a0,1
   17a28:	6165                	addi	sp,sp,112
   17a2a:	8082                	ret
   17a2c:	50b6                	lw	ra,108(sp)
   17a2e:	4501                	li	a0,0
   17a30:	6165                	addi	sp,sp,112
   17a32:	8082                	ret

00017a34 <_kill>:
   17a34:	1141                	addi	sp,sp,-16
   17a36:	c606                	sw	ra,12(sp)
   17a38:	bd1ff0ef          	jal	17608 <__errno>
   17a3c:	40b2                	lw	ra,12(sp)
   17a3e:	47d9                	li	a5,22
   17a40:	c11c                	sw	a5,0(a0)
   17a42:	557d                	li	a0,-1
   17a44:	0141                	addi	sp,sp,16
   17a46:	8082                	ret

00017a48 <_lseek>:
   17a48:	1141                	addi	sp,sp,-16
   17a4a:	c606                	sw	ra,12(sp)
   17a4c:	c422                	sw	s0,8(sp)
   17a4e:	03e00893          	li	a7,62
   17a52:	00000073          	ecall
   17a56:	842a                	mv	s0,a0
   17a58:	00054763          	bltz	a0,17a66 <_lseek+0x1e>
   17a5c:	40b2                	lw	ra,12(sp)
   17a5e:	8522                	mv	a0,s0
   17a60:	4422                	lw	s0,8(sp)
   17a62:	0141                	addi	sp,sp,16
   17a64:	8082                	ret
   17a66:	40800433          	neg	s0,s0
   17a6a:	b9fff0ef          	jal	17608 <__errno>
   17a6e:	c100                	sw	s0,0(a0)
   17a70:	547d                	li	s0,-1
   17a72:	b7ed                	j	17a5c <_lseek+0x14>

00017a74 <_read>:
   17a74:	1141                	addi	sp,sp,-16
   17a76:	c606                	sw	ra,12(sp)
   17a78:	c422                	sw	s0,8(sp)
   17a7a:	03f00893          	li	a7,63
   17a7e:	00000073          	ecall
   17a82:	842a                	mv	s0,a0
   17a84:	00054763          	bltz	a0,17a92 <_read+0x1e>
   17a88:	40b2                	lw	ra,12(sp)
   17a8a:	8522                	mv	a0,s0
   17a8c:	4422                	lw	s0,8(sp)
   17a8e:	0141                	addi	sp,sp,16
   17a90:	8082                	ret
   17a92:	40800433          	neg	s0,s0
   17a96:	b73ff0ef          	jal	17608 <__errno>
   17a9a:	c100                	sw	s0,0(a0)
   17a9c:	547d                	li	s0,-1
   17a9e:	b7ed                	j	17a88 <_read+0x14>

00017aa0 <_sbrk>:
   17aa0:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17aa4:	1141                	addi	sp,sp,-16
   17aa6:	c606                	sw	ra,12(sp)
   17aa8:	87aa                	mv	a5,a0
   17aaa:	ef01                	bnez	a4,17ac2 <_sbrk+0x22>
   17aac:	0d600893          	li	a7,214
   17ab0:	4501                	li	a0,0
   17ab2:	00000073          	ecall
   17ab6:	567d                	li	a2,-1
   17ab8:	872a                	mv	a4,a0
   17aba:	02c50563          	beq	a0,a2,17ae4 <_sbrk+0x44>
   17abe:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17ac2:	0d600893          	li	a7,214
   17ac6:	00e78533          	add	a0,a5,a4
   17aca:	00000073          	ecall
   17ace:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17ad2:	97ba                	add	a5,a5,a4
   17ad4:	00f51863          	bne	a0,a5,17ae4 <_sbrk+0x44>
   17ad8:	40b2                	lw	ra,12(sp)
   17ada:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17ade:	853a                	mv	a0,a4
   17ae0:	0141                	addi	sp,sp,16
   17ae2:	8082                	ret
   17ae4:	b25ff0ef          	jal	17608 <__errno>
   17ae8:	40b2                	lw	ra,12(sp)
   17aea:	47b1                	li	a5,12
   17aec:	c11c                	sw	a5,0(a0)
   17aee:	557d                	li	a0,-1
   17af0:	0141                	addi	sp,sp,16
   17af2:	8082                	ret

00017af4 <_write>:
   17af4:	1141                	addi	sp,sp,-16
   17af6:	c606                	sw	ra,12(sp)
   17af8:	c422                	sw	s0,8(sp)
   17afa:	04000893          	li	a7,64
   17afe:	00000073          	ecall
   17b02:	842a                	mv	s0,a0
   17b04:	00054763          	bltz	a0,17b12 <_write+0x1e>
   17b08:	40b2                	lw	ra,12(sp)
   17b0a:	8522                	mv	a0,s0
   17b0c:	4422                	lw	s0,8(sp)
   17b0e:	0141                	addi	sp,sp,16
   17b10:	8082                	ret
   17b12:	40800433          	neg	s0,s0
   17b16:	af3ff0ef          	jal	17608 <__errno>
   17b1a:	c100                	sw	s0,0(a0)
   17b1c:	547d                	li	s0,-1
   17b1e:	b7ed                	j	17b08 <_write+0x14>

00017b20 <_conv_stat>:
   17b20:	0185d703          	lhu	a4,24(a1)
   17b24:	0145d783          	lhu	a5,20(a1)
   17b28:	1141                	addi	sp,sp,-16
   17b2a:	01c5a283          	lw	t0,28(a1)
   17b2e:	0205af83          	lw	t6,32(a1)
   17b32:	0305af03          	lw	t5,48(a1)
   17b36:	0405ae83          	lw	t4,64(a1)
   17b3a:	0385ae03          	lw	t3,56(a1)
   17b3e:	0485a303          	lw	t1,72(a1)
   17b42:	04c5a383          	lw	t2,76(a1)
   17b46:	0585a803          	lw	a6,88(a1)
   17b4a:	05c5a883          	lw	a7,92(a1)
   17b4e:	c622                	sw	s0,12(sp)
   17b50:	c426                	sw	s1,8(sp)
   17b52:	4980                	lw	s0,16(a1)
   17b54:	4584                	lw	s1,8(a1)
   17b56:	c24a                	sw	s2,4(sp)
   17b58:	0005a903          	lw	s2,0(a1)
   17b5c:	55b0                	lw	a2,104(a1)
   17b5e:	0742                	slli	a4,a4,0x10
   17b60:	8fd9                	or	a5,a5,a4
   17b62:	55f4                	lw	a3,108(a1)
   17b64:	01251023          	sh	s2,0(a0)
   17b68:	00951123          	sh	s1,2(a0)
   17b6c:	c140                	sw	s0,4(a0)
   17b6e:	c51c                	sw	a5,8(a0)
   17b70:	00551623          	sh	t0,12(a0)
   17b74:	01f51723          	sh	t6,14(a0)
   17b78:	01e52823          	sw	t5,16(a0)
   17b7c:	05d52623          	sw	t4,76(a0)
   17b80:	05c52423          	sw	t3,72(a0)
   17b84:	00652c23          	sw	t1,24(a0)
   17b88:	00752e23          	sw	t2,28(a0)
   17b8c:	03052423          	sw	a6,40(a0)
   17b90:	03152623          	sw	a7,44(a0)
   17b94:	dd10                	sw	a2,56(a0)
   17b96:	4432                	lw	s0,12(sp)
   17b98:	dd54                	sw	a3,60(a0)
   17b9a:	44a2                	lw	s1,8(sp)
   17b9c:	4912                	lw	s2,4(sp)
   17b9e:	0141                	addi	sp,sp,16
   17ba0:	8082                	ret

00017ba2 <__eqtf2>:
   17ba2:	411c                	lw	a5,0(a0)
   17ba4:	00452e03          	lw	t3,4(a0)
   17ba8:	00852e83          	lw	t4,8(a0)
   17bac:	4554                	lw	a3,12(a0)
   17bae:	4198                	lw	a4,0(a1)
   17bb0:	0045af83          	lw	t6,4(a1)
   17bb4:	0085af03          	lw	t5,8(a1)
   17bb8:	00c5a883          	lw	a7,12(a1)
   17bbc:	1141                	addi	sp,sp,-16
   17bbe:	00202673          	frrm	a2
   17bc2:	6521                	lui	a0,0x8
   17bc4:	0106d613          	srli	a2,a3,0x10
   17bc8:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17bca:	01069313          	slli	t1,a3,0x10
   17bce:	01089593          	slli	a1,a7,0x10
   17bd2:	01f6d813          	srli	a6,a3,0x1f
   17bd6:	8e69                	and	a2,a2,a0
   17bd8:	0108d693          	srli	a3,a7,0x10
   17bdc:	01035313          	srli	t1,t1,0x10
   17be0:	81c1                	srli	a1,a1,0x10
   17be2:	8ee9                	and	a3,a3,a0
   17be4:	01f8d893          	srli	a7,a7,0x1f
   17be8:	00a61c63          	bne	a2,a0,17c00 <__eqtf2+0x5e>
   17bec:	01c7e533          	or	a0,a5,t3
   17bf0:	01d56533          	or	a0,a0,t4
   17bf4:	00656533          	or	a0,a0,t1
   17bf8:	e51d                	bnez	a0,17c26 <__eqtf2+0x84>
   17bfa:	04c69b63          	bne	a3,a2,17c50 <__eqtf2+0xae>
   17bfe:	a019                	j	17c04 <__eqtf2+0x62>
   17c00:	04a69a63          	bne	a3,a0,17c54 <__eqtf2+0xb2>
   17c04:	01f76533          	or	a0,a4,t6
   17c08:	01e56533          	or	a0,a0,t5
   17c0c:	8d4d                	or	a0,a0,a1
   17c0e:	c139                	beqz	a0,17c54 <__eqtf2+0xb2>
   17c10:	6521                	lui	a0,0x8
   17c12:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17c14:	02a61a63          	bne	a2,a0,17c48 <__eqtf2+0xa6>
   17c18:	01c7e7b3          	or	a5,a5,t3
   17c1c:	01d7e7b3          	or	a5,a5,t4
   17c20:	0067e7b3          	or	a5,a5,t1
   17c24:	cb99                	beqz	a5,17c3a <__eqtf2+0x98>
   17c26:	0342                	slli	t1,t1,0x10
   17c28:	41035313          	srai	t1,t1,0x10
   17c2c:	04035c63          	bgez	t1,17c84 <__eqtf2+0xe2>
   17c30:	67a1                	lui	a5,0x8
   17c32:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   17c34:	4505                	li	a0,1
   17c36:	04f69563          	bne	a3,a5,17c80 <__eqtf2+0xde>
   17c3a:	01f76733          	or	a4,a4,t6
   17c3e:	01e76733          	or	a4,a4,t5
   17c42:	8f4d                	or	a4,a4,a1
   17c44:	4505                	li	a0,1
   17c46:	cf0d                	beqz	a4,17c80 <__eqtf2+0xde>
   17c48:	05c2                	slli	a1,a1,0x10
   17c4a:	85c1                	srai	a1,a1,0x10
   17c4c:	0205dc63          	bgez	a1,17c84 <__eqtf2+0xe2>
   17c50:	4505                	li	a0,1
   17c52:	a03d                	j	17c80 <__eqtf2+0xde>
   17c54:	4505                	li	a0,1
   17c56:	02c69563          	bne	a3,a2,17c80 <__eqtf2+0xde>
   17c5a:	02e79363          	bne	a5,a4,17c80 <__eqtf2+0xde>
   17c5e:	03fe1163          	bne	t3,t6,17c80 <__eqtf2+0xde>
   17c62:	01ee9f63          	bne	t4,t5,17c80 <__eqtf2+0xde>
   17c66:	00b31d63          	bne	t1,a1,17c80 <__eqtf2+0xde>
   17c6a:	03180063          	beq	a6,a7,17c8a <__eqtf2+0xe8>
   17c6e:	ea89                	bnez	a3,17c80 <__eqtf2+0xde>
   17c70:	01c7e533          	or	a0,a5,t3
   17c74:	01d56533          	or	a0,a0,t4
   17c78:	00656533          	or	a0,a0,t1
   17c7c:	00a03533          	snez	a0,a0
   17c80:	0141                	addi	sp,sp,16
   17c82:	8082                	ret
   17c84:	00186073          	csrsi	fflags,16
   17c88:	b7e1                	j	17c50 <__eqtf2+0xae>
   17c8a:	4501                	li	a0,0
   17c8c:	bfd5                	j	17c80 <__eqtf2+0xde>

00017c8e <__getf2>:
   17c8e:	00052883          	lw	a7,0(a0)
   17c92:	00452303          	lw	t1,4(a0)
   17c96:	00852e03          	lw	t3,8(a0)
   17c9a:	455c                	lw	a5,12(a0)
   17c9c:	0005ae83          	lw	t4,0(a1)
   17ca0:	0045af03          	lw	t5,4(a1)
   17ca4:	0085af83          	lw	t6,8(a1)
   17ca8:	45d4                	lw	a3,12(a1)
   17caa:	1141                	addi	sp,sp,-16
   17cac:	00202773          	frrm	a4
   17cb0:	6721                	lui	a4,0x8
   17cb2:	0107d613          	srli	a2,a5,0x10
   17cb6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17cb8:	01079813          	slli	a6,a5,0x10
   17cbc:	01069293          	slli	t0,a3,0x10
   17cc0:	0106d513          	srli	a0,a3,0x10
   17cc4:	8e79                	and	a2,a2,a4
   17cc6:	01085813          	srli	a6,a6,0x10
   17cca:	83fd                	srli	a5,a5,0x1f
   17ccc:	0102d293          	srli	t0,t0,0x10
   17cd0:	8d79                	and	a0,a0,a4
   17cd2:	82fd                	srli	a3,a3,0x1f
   17cd4:	00e61963          	bne	a2,a4,17ce6 <__getf2+0x58>
   17cd8:	01136733          	or	a4,t1,a7
   17cdc:	01c76733          	or	a4,a4,t3
   17ce0:	01076733          	or	a4,a4,a6
   17ce4:	ef35                	bnez	a4,17d60 <__getf2+0xd2>
   17ce6:	6721                	lui	a4,0x8
   17ce8:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17cea:	00e51963          	bne	a0,a4,17cfc <__getf2+0x6e>
   17cee:	01eee733          	or	a4,t4,t5
   17cf2:	01f76733          	or	a4,a4,t6
   17cf6:	00576733          	or	a4,a4,t0
   17cfa:	e33d                	bnez	a4,17d60 <__getf2+0xd2>
   17cfc:	4701                	li	a4,0
   17cfe:	ea09                	bnez	a2,17d10 <__getf2+0x82>
   17d00:	01136733          	or	a4,t1,a7
   17d04:	01c76733          	or	a4,a4,t3
   17d08:	01076733          	or	a4,a4,a6
   17d0c:	00173713          	seqz	a4,a4
   17d10:	ed21                	bnez	a0,17d68 <__getf2+0xda>
   17d12:	01eee5b3          	or	a1,t4,t5
   17d16:	01f5e5b3          	or	a1,a1,t6
   17d1a:	0055e5b3          	or	a1,a1,t0
   17d1e:	c711                	beqz	a4,17d2a <__getf2+0x9c>
   17d20:	c981                	beqz	a1,17d30 <__getf2+0xa2>
   17d22:	4505                	li	a0,1
   17d24:	e691                	bnez	a3,17d30 <__getf2+0xa2>
   17d26:	557d                	li	a0,-1
   17d28:	a021                	j	17d30 <__getf2+0xa2>
   17d2a:	e1a1                	bnez	a1,17d6a <__getf2+0xdc>
   17d2c:	557d                	li	a0,-1
   17d2e:	c7a1                	beqz	a5,17d76 <__getf2+0xe8>
   17d30:	0141                	addi	sp,sp,16
   17d32:	8082                	ret
   17d34:	fea647e3          	blt	a2,a0,17d22 <__getf2+0x94>
   17d38:	ff02eae3          	bltu	t0,a6,17d2c <__getf2+0x9e>
   17d3c:	00581f63          	bne	a6,t0,17d5a <__getf2+0xcc>
   17d40:	ffcfe6e3          	bltu	t6,t3,17d2c <__getf2+0x9e>
   17d44:	01fe1b63          	bne	t3,t6,17d5a <__getf2+0xcc>
   17d48:	fe6f62e3          	bltu	t5,t1,17d2c <__getf2+0x9e>
   17d4c:	01e31763          	bne	t1,t5,17d5a <__getf2+0xcc>
   17d50:	fd1eeee3          	bltu	t4,a7,17d2c <__getf2+0x9e>
   17d54:	4501                	li	a0,0
   17d56:	fdd8fde3          	bgeu	a7,t4,17d30 <__getf2+0xa2>
   17d5a:	4505                	li	a0,1
   17d5c:	fbf1                	bnez	a5,17d30 <__getf2+0xa2>
   17d5e:	b7e1                	j	17d26 <__getf2+0x98>
   17d60:	00186073          	csrsi	fflags,16
   17d64:	5579                	li	a0,-2
   17d66:	b7e9                	j	17d30 <__getf2+0xa2>
   17d68:	ff4d                	bnez	a4,17d22 <__getf2+0x94>
   17d6a:	fcf691e3          	bne	a3,a5,17d2c <__getf2+0x9e>
   17d6e:	fcc553e3          	bge	a0,a2,17d34 <__getf2+0xa6>
   17d72:	557d                	li	a0,-1
   17d74:	fed5                	bnez	a3,17d30 <__getf2+0xa2>
   17d76:	4505                	li	a0,1
   17d78:	bf65                	j	17d30 <__getf2+0xa2>

00017d7a <__letf2>:
   17d7a:	00052883          	lw	a7,0(a0)
   17d7e:	00452303          	lw	t1,4(a0)
   17d82:	00852e03          	lw	t3,8(a0)
   17d86:	455c                	lw	a5,12(a0)
   17d88:	0005ae83          	lw	t4,0(a1)
   17d8c:	0045af03          	lw	t5,4(a1)
   17d90:	0085af83          	lw	t6,8(a1)
   17d94:	45d4                	lw	a3,12(a1)
   17d96:	1141                	addi	sp,sp,-16
   17d98:	00202773          	frrm	a4
   17d9c:	6721                	lui	a4,0x8
   17d9e:	0107d613          	srli	a2,a5,0x10
   17da2:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17da4:	01079813          	slli	a6,a5,0x10
   17da8:	01069293          	slli	t0,a3,0x10
   17dac:	0106d513          	srli	a0,a3,0x10
   17db0:	8e79                	and	a2,a2,a4
   17db2:	01085813          	srli	a6,a6,0x10
   17db6:	83fd                	srli	a5,a5,0x1f
   17db8:	0102d293          	srli	t0,t0,0x10
   17dbc:	8d79                	and	a0,a0,a4
   17dbe:	82fd                	srli	a3,a3,0x1f
   17dc0:	00e61963          	bne	a2,a4,17dd2 <__letf2+0x58>
   17dc4:	01136733          	or	a4,t1,a7
   17dc8:	01c76733          	or	a4,a4,t3
   17dcc:	01076733          	or	a4,a4,a6
   17dd0:	ef35                	bnez	a4,17e4c <__letf2+0xd2>
   17dd2:	6721                	lui	a4,0x8
   17dd4:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17dd6:	00e51963          	bne	a0,a4,17de8 <__letf2+0x6e>
   17dda:	01eee733          	or	a4,t4,t5
   17dde:	01f76733          	or	a4,a4,t6
   17de2:	00576733          	or	a4,a4,t0
   17de6:	e33d                	bnez	a4,17e4c <__letf2+0xd2>
   17de8:	4701                	li	a4,0
   17dea:	ea09                	bnez	a2,17dfc <__letf2+0x82>
   17dec:	01136733          	or	a4,t1,a7
   17df0:	01c76733          	or	a4,a4,t3
   17df4:	01076733          	or	a4,a4,a6
   17df8:	00173713          	seqz	a4,a4
   17dfc:	ed21                	bnez	a0,17e54 <__letf2+0xda>
   17dfe:	01eee5b3          	or	a1,t4,t5
   17e02:	01f5e5b3          	or	a1,a1,t6
   17e06:	0055e5b3          	or	a1,a1,t0
   17e0a:	c711                	beqz	a4,17e16 <__letf2+0x9c>
   17e0c:	c981                	beqz	a1,17e1c <__letf2+0xa2>
   17e0e:	4505                	li	a0,1
   17e10:	e691                	bnez	a3,17e1c <__letf2+0xa2>
   17e12:	557d                	li	a0,-1
   17e14:	a021                	j	17e1c <__letf2+0xa2>
   17e16:	e1a1                	bnez	a1,17e56 <__letf2+0xdc>
   17e18:	557d                	li	a0,-1
   17e1a:	c7a1                	beqz	a5,17e62 <__letf2+0xe8>
   17e1c:	0141                	addi	sp,sp,16
   17e1e:	8082                	ret
   17e20:	fea647e3          	blt	a2,a0,17e0e <__letf2+0x94>
   17e24:	ff02eae3          	bltu	t0,a6,17e18 <__letf2+0x9e>
   17e28:	00581f63          	bne	a6,t0,17e46 <__letf2+0xcc>
   17e2c:	ffcfe6e3          	bltu	t6,t3,17e18 <__letf2+0x9e>
   17e30:	01fe1b63          	bne	t3,t6,17e46 <__letf2+0xcc>
   17e34:	fe6f62e3          	bltu	t5,t1,17e18 <__letf2+0x9e>
   17e38:	01e31763          	bne	t1,t5,17e46 <__letf2+0xcc>
   17e3c:	fd1eeee3          	bltu	t4,a7,17e18 <__letf2+0x9e>
   17e40:	4501                	li	a0,0
   17e42:	fdd8fde3          	bgeu	a7,t4,17e1c <__letf2+0xa2>
   17e46:	4505                	li	a0,1
   17e48:	fbf1                	bnez	a5,17e1c <__letf2+0xa2>
   17e4a:	b7e1                	j	17e12 <__letf2+0x98>
   17e4c:	00186073          	csrsi	fflags,16
   17e50:	4509                	li	a0,2
   17e52:	b7e9                	j	17e1c <__letf2+0xa2>
   17e54:	ff4d                	bnez	a4,17e0e <__letf2+0x94>
   17e56:	fcf691e3          	bne	a3,a5,17e18 <__letf2+0x9e>
   17e5a:	fcc553e3          	bge	a0,a2,17e20 <__letf2+0xa6>
   17e5e:	557d                	li	a0,-1
   17e60:	fed5                	bnez	a3,17e1c <__letf2+0xa2>
   17e62:	4505                	li	a0,1
   17e64:	bf65                	j	17e1c <__letf2+0xa2>

00017e66 <__multf3>:
   17e66:	7131                	addi	sp,sp,-192
   17e68:	d552                	sw	s4,168(sp)
   17e6a:	d356                	sw	s5,164(sp)
   17e6c:	d15a                	sw	s6,160(sp)
   17e6e:	cf5e                	sw	s7,156(sp)
   17e70:	c62a                	sw	a0,12(sp)
   17e72:	419c                	lw	a5,0(a1)
   17e74:	41c8                	lw	a0,4(a1)
   17e76:	4594                	lw	a3,8(a1)
   17e78:	45d8                	lw	a4,12(a1)
   17e7a:	00062a83          	lw	s5,0(a2)
   17e7e:	00462b83          	lw	s7,4(a2)
   17e82:	00862b03          	lw	s6,8(a2)
   17e86:	00c62a03          	lw	s4,12(a2)
   17e8a:	df06                	sw	ra,188(sp)
   17e8c:	dd22                	sw	s0,184(sp)
   17e8e:	db26                	sw	s1,180(sp)
   17e90:	d94a                	sw	s2,176(sp)
   17e92:	d74e                	sw	s3,172(sp)
   17e94:	cd62                	sw	s8,152(sp)
   17e96:	cb66                	sw	s9,148(sp)
   17e98:	c96a                	sw	s10,144(sp)
   17e9a:	c76e                	sw	s11,140(sp)
   17e9c:	002024f3          	frrm	s1
   17ea0:	6621                	lui	a2,0x8
   17ea2:	01071413          	slli	s0,a4,0x10
   17ea6:	8041                	srli	s0,s0,0x10
   17ea8:	01075913          	srli	s2,a4,0x10
   17eac:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   17eae:	d0be                	sw	a5,96(sp)
   17eb0:	d2aa                	sw	a0,100(sp)
   17eb2:	d4b6                	sw	a3,104(sp)
   17eb4:	d6ba                	sw	a4,108(sp)
   17eb6:	d83e                	sw	a5,48(sp)
   17eb8:	da2a                	sw	a0,52(sp)
   17eba:	dc36                	sw	a3,56(sp)
   17ebc:	de22                	sw	s0,60(sp)
   17ebe:	00c97933          	and	s2,s2,a2
   17ec2:	01f75993          	srli	s3,a4,0x1f
   17ec6:	02090a63          	beqz	s2,17efa <__multf3+0x94>
   17eca:	10c90d63          	beq	s2,a2,17fe4 <__multf3+0x17e>
   17ece:	6741                	lui	a4,0x10
   17ed0:	8c59                	or	s0,s0,a4
   17ed2:	de22                	sw	s0,60(sp)
   17ed4:	1818                	addi	a4,sp,48
   17ed6:	104c                	addi	a1,sp,36
   17ed8:	4754                	lw	a3,12(a4)
   17eda:	4710                	lw	a2,8(a4)
   17edc:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   17ede:	068e                	slli	a3,a3,0x3
   17ee0:	8275                	srli	a2,a2,0x1d
   17ee2:	8ed1                	or	a3,a3,a2
   17ee4:	cb14                	sw	a3,16(a4)
   17ee6:	fee599e3          	bne	a1,a4,17ed8 <__multf3+0x72>
   17eea:	078e                	slli	a5,a5,0x3
   17eec:	d83e                	sw	a5,48(sp)
   17eee:	77f1                	lui	a5,0xffffc
   17ef0:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   17ef2:	993e                	add	s2,s2,a5
   17ef4:	4c01                	li	s8,0
   17ef6:	4401                	li	s0,0
   17ef8:	a211                	j	17ffc <__multf3+0x196>
   17efa:	00a7e733          	or	a4,a5,a0
   17efe:	8f55                	or	a4,a4,a3
   17f00:	8f41                	or	a4,a4,s0
   17f02:	70070d63          	beqz	a4,1861c <__multf3+0x7b6>
   17f06:	cc2d                	beqz	s0,17f80 <__multf3+0x11a>
   17f08:	8522                	mv	a0,s0
   17f0a:	108020ef          	jal	1a012 <__clzsi2>
   17f0e:	ff450693          	addi	a3,a0,-12
   17f12:	4056d793          	srai	a5,a3,0x5
   17f16:	8afd                	andi	a3,a3,31
   17f18:	c6d9                	beqz	a3,17fa6 <__multf3+0x140>
   17f1a:	5671                	li	a2,-4
   17f1c:	02c78633          	mul	a2,a5,a2
   17f20:	02000813          	li	a6,32
   17f24:	03010313          	addi	t1,sp,48
   17f28:	40d80833          	sub	a6,a6,a3
   17f2c:	00c60713          	addi	a4,a2,12
   17f30:	971a                	add	a4,a4,t1
   17f32:	40c00633          	neg	a2,a2
   17f36:	08e31863          	bne	t1,a4,17fc6 <__multf3+0x160>
   17f3a:	fff78713          	addi	a4,a5,-1
   17f3e:	078a                	slli	a5,a5,0x2
   17f40:	1810                	addi	a2,sp,48
   17f42:	05078793          	addi	a5,a5,80
   17f46:	97b2                	add	a5,a5,a2
   17f48:	5642                	lw	a2,48(sp)
   17f4a:	00d616b3          	sll	a3,a2,a3
   17f4e:	fad7a823          	sw	a3,-80(a5)
   17f52:	00170793          	addi	a5,a4,1
   17f56:	078a                	slli	a5,a5,0x2
   17f58:	46a1                	li	a3,8
   17f5a:	1818                	addi	a4,sp,48
   17f5c:	00d7e863          	bltu	a5,a3,17f6c <__multf3+0x106>
   17f60:	00072023          	sw	zero,0(a4)
   17f64:	00072223          	sw	zero,4(a4)
   17f68:	17e1                	addi	a5,a5,-8
   17f6a:	1838                	addi	a4,sp,56
   17f6c:	4691                	li	a3,4
   17f6e:	00d7e463          	bltu	a5,a3,17f76 <__multf3+0x110>
   17f72:	00072023          	sw	zero,0(a4)
   17f76:	7971                	lui	s2,0xffffc
   17f78:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   17f7a:	40a90933          	sub	s2,s2,a0
   17f7e:	bf9d                	j	17ef4 <__multf3+0x8e>
   17f80:	c699                	beqz	a3,17f8e <__multf3+0x128>
   17f82:	8536                	mv	a0,a3
   17f84:	08e020ef          	jal	1a012 <__clzsi2>
   17f88:	02050513          	addi	a0,a0,32
   17f8c:	b749                	j	17f0e <__multf3+0xa8>
   17f8e:	c511                	beqz	a0,17f9a <__multf3+0x134>
   17f90:	082020ef          	jal	1a012 <__clzsi2>
   17f94:	04050513          	addi	a0,a0,64
   17f98:	bf9d                	j	17f0e <__multf3+0xa8>
   17f9a:	853e                	mv	a0,a5
   17f9c:	076020ef          	jal	1a012 <__clzsi2>
   17fa0:	06050513          	addi	a0,a0,96
   17fa4:	b7ad                	j	17f0e <__multf3+0xa8>
   17fa6:	5671                	li	a2,-4
   17fa8:	02c78633          	mul	a2,a5,a2
   17fac:	1878                	addi	a4,sp,60
   17fae:	468d                	li	a3,3
   17fb0:	00c705b3          	add	a1,a4,a2
   17fb4:	418c                	lw	a1,0(a1)
   17fb6:	16fd                	addi	a3,a3,-1
   17fb8:	1771                	addi	a4,a4,-4
   17fba:	c34c                	sw	a1,4(a4)
   17fbc:	fef6dae3          	bge	a3,a5,17fb0 <__multf3+0x14a>
   17fc0:	fff78713          	addi	a4,a5,-1
   17fc4:	b779                	j	17f52 <__multf3+0xec>
   17fc6:	430c                	lw	a1,0(a4)
   17fc8:	ffc72883          	lw	a7,-4(a4)
   17fcc:	00c70e33          	add	t3,a4,a2
   17fd0:	00d595b3          	sll	a1,a1,a3
   17fd4:	0108d8b3          	srl	a7,a7,a6
   17fd8:	0115e5b3          	or	a1,a1,a7
   17fdc:	00be2023          	sw	a1,0(t3)
   17fe0:	1771                	addi	a4,a4,-4
   17fe2:	bf91                	j	17f36 <__multf3+0xd0>
   17fe4:	8fc9                	or	a5,a5,a0
   17fe6:	8fd5                	or	a5,a5,a3
   17fe8:	8fc1                	or	a5,a5,s0
   17fea:	62078c63          	beqz	a5,18622 <__multf3+0x7bc>
   17fee:	0442                	slli	s0,s0,0x10
   17ff0:	8441                	srai	s0,s0,0x10
   17ff2:	fff44413          	not	s0,s0
   17ff6:	807d                	srli	s0,s0,0x1f
   17ff8:	0412                	slli	s0,s0,0x4
   17ffa:	4c0d                	li	s8,3
   17ffc:	010a1513          	slli	a0,s4,0x10
   18000:	6721                	lui	a4,0x8
   18002:	010a5793          	srli	a5,s4,0x10
   18006:	8141                	srli	a0,a0,0x10
   18008:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1800a:	d6d2                	sw	s4,108(sp)
   1800c:	d0d6                	sw	s5,96(sp)
   1800e:	d2de                	sw	s7,100(sp)
   18010:	d4da                	sw	s6,104(sp)
   18012:	c0d6                	sw	s5,64(sp)
   18014:	c2de                	sw	s7,68(sp)
   18016:	c4da                	sw	s6,72(sp)
   18018:	c6aa                	sw	a0,76(sp)
   1801a:	8ff9                	and	a5,a5,a4
   1801c:	01fa5a13          	srli	s4,s4,0x1f
   18020:	60078363          	beqz	a5,18626 <__multf3+0x7c0>
   18024:	6ee78863          	beq	a5,a4,18714 <__multf3+0x8ae>
   18028:	6741                	lui	a4,0x10
   1802a:	8d59                	or	a0,a0,a4
   1802c:	c6aa                	sw	a0,76(sp)
   1802e:	0098                	addi	a4,sp,64
   18030:	184c                	addi	a1,sp,52
   18032:	4754                	lw	a3,12(a4)
   18034:	4710                	lw	a2,8(a4)
   18036:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   18038:	068e                	slli	a3,a3,0x3
   1803a:	8275                	srli	a2,a2,0x1d
   1803c:	8ed1                	or	a3,a3,a2
   1803e:	cb14                	sw	a3,16(a4)
   18040:	fee599e3          	bne	a1,a4,18032 <__multf3+0x1cc>
   18044:	7771                	lui	a4,0xffffc
   18046:	0a8e                	slli	s5,s5,0x3
   18048:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   1804a:	c0d6                	sw	s5,64(sp)
   1804c:	97ba                	add	a5,a5,a4
   1804e:	4681                	li	a3,0
   18050:	97ca                	add	a5,a5,s2
   18052:	ca3e                	sw	a5,20(sp)
   18054:	0785                	addi	a5,a5,1
   18056:	c83e                	sw	a5,16(sp)
   18058:	002c1793          	slli	a5,s8,0x2
   1805c:	8fd5                	or	a5,a5,a3
   1805e:	4729                	li	a4,10
   18060:	70f74363          	blt	a4,a5,18766 <__multf3+0x900>
   18064:	4609                	li	a2,2
   18066:	0149c733          	xor	a4,s3,s4
   1806a:	6cf64863          	blt	a2,a5,1873a <__multf3+0x8d4>
   1806e:	17fd                	addi	a5,a5,-1
   18070:	4605                	li	a2,1
   18072:	70f67263          	bgeu	a2,a5,18776 <__multf3+0x910>
   18076:	5542                	lw	a0,48(sp)
   18078:	4306                	lw	t1,64(sp)
   1807a:	6841                	lui	a6,0x10
   1807c:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   18080:	01055913          	srli	s2,a0,0x10
   18084:	01035393          	srli	t2,t1,0x10
   18088:	8d6d                	and	a0,a0,a1
   1808a:	00b37333          	and	t1,t1,a1
   1808e:	02a30633          	mul	a2,t1,a0
   18092:	026908b3          	mul	a7,s2,t1
   18096:	01065793          	srli	a5,a2,0x10
   1809a:	02a386b3          	mul	a3,t2,a0
   1809e:	96c6                	add	a3,a3,a7
   180a0:	97b6                	add	a5,a5,a3
   180a2:	02790bb3          	mul	s7,s2,t2
   180a6:	0117f363          	bgeu	a5,a7,180ac <__multf3+0x246>
   180aa:	9bc2                	add	s7,s7,a6
   180ac:	4896                	lw	a7,68(sp)
   180ae:	0107d693          	srli	a3,a5,0x10
   180b2:	8fed                	and	a5,a5,a1
   180b4:	8e6d                	and	a2,a2,a1
   180b6:	07c2                	slli	a5,a5,0x10
   180b8:	97b2                	add	a5,a5,a2
   180ba:	0108df93          	srli	t6,a7,0x10
   180be:	00b8f8b3          	and	a7,a7,a1
   180c2:	031905b3          	mul	a1,s2,a7
   180c6:	d03e                	sw	a5,32(sp)
   180c8:	d0be                	sw	a5,96(sp)
   180ca:	02af8633          	mul	a2,t6,a0
   180ce:	02a887b3          	mul	a5,a7,a0
   180d2:	962e                	add	a2,a2,a1
   180d4:	0107d813          	srli	a6,a5,0x10
   180d8:	9832                	add	a6,a6,a2
   180da:	03f90b33          	mul	s6,s2,t6
   180de:	00b87463          	bgeu	a6,a1,180e6 <__multf3+0x280>
   180e2:	6641                	lui	a2,0x10
   180e4:	9b32                	add	s6,s6,a2
   180e6:	01085613          	srli	a2,a6,0x10
   180ea:	55d2                	lw	a1,52(sp)
   180ec:	cc32                	sw	a2,24(sp)
   180ee:	6641                	lui	a2,0x10
   180f0:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   180f4:	01d87833          	and	a6,a6,t4
   180f8:	01d7f7b3          	and	a5,a5,t4
   180fc:	0105d293          	srli	t0,a1,0x10
   18100:	0842                	slli	a6,a6,0x10
   18102:	01d5f5b3          	and	a1,a1,t4
   18106:	983e                	add	a6,a6,a5
   18108:	02628a33          	mul	s4,t0,t1
   1810c:	96c2                	add	a3,a3,a6
   1810e:	026587b3          	mul	a5,a1,t1
   18112:	02b38eb3          	mul	t4,t2,a1
   18116:	0107d993          	srli	s3,a5,0x10
   1811a:	9ed2                	add	t4,t4,s4
   1811c:	99f6                	add	s3,s3,t4
   1811e:	02538f33          	mul	t5,t2,t0
   18122:	0149f363          	bgeu	s3,s4,18128 <__multf3+0x2c2>
   18126:	9f32                	add	t5,t5,a2
   18128:	6c41                	lui	s8,0x10
   1812a:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   1812e:	8ff1                	and	a5,a5,a2
   18130:	0109da13          	srli	s4,s3,0x10
   18134:	00c9f9b3          	and	s3,s3,a2
   18138:	09c2                	slli	s3,s3,0x10
   1813a:	99be                	add	s3,s3,a5
   1813c:	02b88eb3          	mul	t4,a7,a1
   18140:	9a7a                	add	s4,s4,t5
   18142:	03128633          	mul	a2,t0,a7
   18146:	010ed793          	srli	a5,t4,0x10
   1814a:	02bf8ab3          	mul	s5,t6,a1
   1814e:	9ab2                	add	s5,s5,a2
   18150:	97d6                	add	a5,a5,s5
   18152:	025f8f33          	mul	t5,t6,t0
   18156:	00c7f363          	bgeu	a5,a2,1815c <__multf3+0x2f6>
   1815a:	9f62                	add	t5,t5,s8
   1815c:	0107d613          	srli	a2,a5,0x10
   18160:	967a                	add	a2,a2,t5
   18162:	6ac1                	lui	s5,0x10
   18164:	ce32                	sw	a2,28(sp)
   18166:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   1816a:	8ff1                	and	a5,a5,a2
   1816c:	00cefeb3          	and	t4,t4,a2
   18170:	07c2                	slli	a5,a5,0x10
   18172:	97f6                	add	a5,a5,t4
   18174:	d23e                	sw	a5,36(sp)
   18176:	47a6                	lw	a5,72(sp)
   18178:	0107dd93          	srli	s11,a5,0x10
   1817c:	00c7fd33          	and	s10,a5,a2
   18180:	02ad0633          	mul	a2,s10,a0
   18184:	03a90c33          	mul	s8,s2,s10
   18188:	01065793          	srli	a5,a2,0x10
   1818c:	02ad8f33          	mul	t5,s11,a0
   18190:	9f62                	add	t5,t5,s8
   18192:	97fa                	add	a5,a5,t5
   18194:	03b90eb3          	mul	t4,s2,s11
   18198:	0187f363          	bgeu	a5,s8,1819e <__multf3+0x338>
   1819c:	9ed6                	add	t4,t4,s5
   1819e:	0107df13          	srli	t5,a5,0x10
   181a2:	6cc1                	lui	s9,0x10
   181a4:	01df0e33          	add	t3,t5,t4
   181a8:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   181ac:	01d7f7b3          	and	a5,a5,t4
   181b0:	01d67633          	and	a2,a2,t4
   181b4:	07c2                	slli	a5,a5,0x10
   181b6:	97b2                	add	a5,a5,a2
   181b8:	5662                	lw	a2,56(sp)
   181ba:	d472                	sw	t3,40(sp)
   181bc:	d63e                	sw	a5,44(sp)
   181be:	01065f13          	srli	t5,a2,0x10
   181c2:	01d67633          	and	a2,a2,t4
   181c6:	02660ab3          	mul	s5,a2,t1
   181ca:	026f0e33          	mul	t3,t5,t1
   181ce:	010ad793          	srli	a5,s5,0x10
   181d2:	02c38eb3          	mul	t4,t2,a2
   181d6:	9ef2                	add	t4,t4,t3
   181d8:	9ebe                	add	t4,t4,a5
   181da:	03e38c33          	mul	s8,t2,t5
   181de:	01cef363          	bgeu	t4,t3,181e4 <__multf3+0x37e>
   181e2:	9c66                	add	s8,s8,s9
   181e4:	47e2                	lw	a5,24(sp)
   181e6:	96de                	add	a3,a3,s7
   181e8:	0106b833          	sltu	a6,a3,a6
   181ec:	010edc93          	srli	s9,t4,0x10
   181f0:	6e41                	lui	t3,0x10
   181f2:	9c66                	add	s8,s8,s9
   181f4:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   181f8:	01078e33          	add	t3,a5,a6
   181fc:	013687b3          	add	a5,a3,s3
   18200:	9e5a                	add	t3,t3,s6
   18202:	00d7b6b3          	sltu	a3,a5,a3
   18206:	cc3e                	sw	a5,24(sp)
   18208:	d2be                	sw	a5,100(sp)
   1820a:	5792                	lw	a5,36(sp)
   1820c:	9a72                	add	s4,s4,t3
   1820e:	96d2                	add	a3,a3,s4
   18210:	01ca39b3          	sltu	s3,s4,t3
   18214:	0146ba33          	sltu	s4,a3,s4
   18218:	010e3e33          	sltu	t3,t3,a6
   1821c:	00f68833          	add	a6,a3,a5
   18220:	47f2                	lw	a5,28(sp)
   18222:	0149e9b3          	or	s3,s3,s4
   18226:	9e4e                	add	t3,t3,s3
   18228:	00fe09b3          	add	s3,t3,a5
   1822c:	57b2                	lw	a5,44(sp)
   1822e:	5a22                	lw	s4,40(sp)
   18230:	00d836b3          	sltu	a3,a6,a3
   18234:	019efeb3          	and	t4,t4,s9
   18238:	96ce                	add	a3,a3,s3
   1823a:	97c2                	add	a5,a5,a6
   1823c:	0ec2                	slli	t4,t4,0x10
   1823e:	019afab3          	and	s5,s5,s9
   18242:	9a36                	add	s4,s4,a3
   18244:	0107b833          	sltu	a6,a5,a6
   18248:	9ed6                	add	t4,t4,s5
   1824a:	9ebe                	add	t4,t4,a5
   1824c:	9852                	add	a6,a6,s4
   1824e:	9c42                	add	s8,s8,a6
   18250:	00feb7b3          	sltu	a5,t4,a5
   18254:	ce76                	sw	t4,28(sp)
   18256:	d4f6                	sw	t4,104(sp)
   18258:	4eb6                	lw	t4,76(sp)
   1825a:	01c9be33          	sltu	t3,s3,t3
   1825e:	97e2                	add	a5,a5,s8
   18260:	0136b9b3          	sltu	s3,a3,s3
   18264:	00da36b3          	sltu	a3,s4,a3
   18268:	01483a33          	sltu	s4,a6,s4
   1826c:	013e69b3          	or	s3,t3,s3
   18270:	0146e6b3          	or	a3,a3,s4
   18274:	010c3833          	sltu	a6,s8,a6
   18278:	0187bc33          	sltu	s8,a5,s8
   1827c:	96ce                	add	a3,a3,s3
   1827e:	01886833          	or	a6,a6,s8
   18282:	010ed993          	srli	s3,t4,0x10
   18286:	019efeb3          	and	t4,t4,s9
   1828a:	03d90a33          	mul	s4,s2,t4
   1828e:	00d80e33          	add	t3,a6,a3
   18292:	02ae86b3          	mul	a3,t4,a0
   18296:	02a98533          	mul	a0,s3,a0
   1829a:	0106d813          	srli	a6,a3,0x10
   1829e:	9552                	add	a0,a0,s4
   182a0:	982a                	add	a6,a6,a0
   182a2:	03390933          	mul	s2,s2,s3
   182a6:	01487463          	bgeu	a6,s4,182ae <__multf3+0x448>
   182aa:	6541                	lui	a0,0x10
   182ac:	992a                	add	s2,s2,a0
   182ae:	01085513          	srli	a0,a6,0x10
   182b2:	954a                	add	a0,a0,s2
   182b4:	5a72                	lw	s4,60(sp)
   182b6:	6ac1                	lui	s5,0x10
   182b8:	d22a                	sw	a0,36(sp)
   182ba:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   182be:	00a87833          	and	a6,a6,a0
   182c2:	010a5913          	srli	s2,s4,0x10
   182c6:	0842                	slli	a6,a6,0x10
   182c8:	8ee9                	and	a3,a3,a0
   182ca:	00aa7a33          	and	s4,s4,a0
   182ce:	96c2                	add	a3,a3,a6
   182d0:	026a0533          	mul	a0,s4,t1
   182d4:	d436                	sw	a3,40(sp)
   182d6:	02690333          	mul	t1,s2,t1
   182da:	01055693          	srli	a3,a0,0x10
   182de:	03238833          	mul	a6,t2,s2
   182e2:	034383b3          	mul	t2,t2,s4
   182e6:	939a                	add	t2,t2,t1
   182e8:	969e                	add	a3,a3,t2
   182ea:	0066f363          	bgeu	a3,t1,182f0 <__multf3+0x48a>
   182ee:	9856                	add	a6,a6,s5
   182f0:	0106da93          	srli	s5,a3,0x10
   182f4:	6bc1                	lui	s7,0x10
   182f6:	9ac2                	add	s5,s5,a6
   182f8:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   182fc:	01057533          	and	a0,a0,a6
   18300:	0106f6b3          	and	a3,a3,a6
   18304:	03a28333          	mul	t1,t0,s10
   18308:	06c2                	slli	a3,a3,0x10
   1830a:	96aa                	add	a3,a3,a0
   1830c:	03a58833          	mul	a6,a1,s10
   18310:	02bd83b3          	mul	t2,s11,a1
   18314:	01085513          	srli	a0,a6,0x10
   18318:	939a                	add	t2,t2,t1
   1831a:	951e                	add	a0,a0,t2
   1831c:	03b28b33          	mul	s6,t0,s11
   18320:	00657363          	bgeu	a0,t1,18326 <__multf3+0x4c0>
   18324:	9b5e                	add	s6,s6,s7
   18326:	6c41                	lui	s8,0x10
   18328:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   1832c:	01055393          	srli	t2,a0,0x10
   18330:	00657533          	and	a0,a0,t1
   18334:	00687833          	and	a6,a6,t1
   18338:	0542                	slli	a0,a0,0x10
   1833a:	93da                	add	t2,t2,s6
   1833c:	02cf8333          	mul	t1,t6,a2
   18340:	9542                	add	a0,a0,a6
   18342:	031f0b33          	mul	s6,t5,a7
   18346:	02c88833          	mul	a6,a7,a2
   1834a:	935a                	add	t1,t1,s6
   1834c:	01085c93          	srli	s9,a6,0x10
   18350:	9366                	add	t1,t1,s9
   18352:	03ef8bb3          	mul	s7,t6,t5
   18356:	01637363          	bgeu	t1,s6,1835c <__multf3+0x4f6>
   1835a:	9be2                	add	s7,s7,s8
   1835c:	01035b13          	srli	s6,t1,0x10
   18360:	9b5e                	add	s6,s6,s7
   18362:	6bc1                	lui	s7,0x10
   18364:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   18368:	01837333          	and	t1,t1,s8
   1836c:	0342                	slli	t1,t1,0x10
   1836e:	01887833          	and	a6,a6,s8
   18372:	981a                	add	a6,a6,t1
   18374:	5322                	lw	t1,40(sp)
   18376:	5c12                	lw	s8,36(sp)
   18378:	933e                	add	t1,t1,a5
   1837a:	9c72                	add	s8,s8,t3
   1837c:	00f337b3          	sltu	a5,t1,a5
   18380:	97e2                	add	a5,a5,s8
   18382:	969a                	add	a3,a3,t1
   18384:	9abe                	add	s5,s5,a5
   18386:	0066b333          	sltu	t1,a3,t1
   1838a:	9356                	add	t1,t1,s5
   1838c:	9536                	add	a0,a0,a3
   1838e:	939a                	add	t2,t2,t1
   18390:	00d536b3          	sltu	a3,a0,a3
   18394:	969e                	add	a3,a3,t2
   18396:	982a                	add	a6,a6,a0
   18398:	01cc3e33          	sltu	t3,s8,t3
   1839c:	9b36                	add	s6,s6,a3
   1839e:	0187bc33          	sltu	s8,a5,s8
   183a2:	00a83533          	sltu	a0,a6,a0
   183a6:	00fab7b3          	sltu	a5,s5,a5
   183aa:	01533ab3          	sltu	s5,t1,s5
   183ae:	018e6c33          	or	s8,t3,s8
   183b2:	0157e7b3          	or	a5,a5,s5
   183b6:	0063b333          	sltu	t1,t2,t1
   183ba:	955a                	add	a0,a0,s6
   183bc:	0076b3b3          	sltu	t2,a3,t2
   183c0:	97e2                	add	a5,a5,s8
   183c2:	00736333          	or	t1,t1,t2
   183c6:	00db36b3          	sltu	a3,s6,a3
   183ca:	01653b33          	sltu	s6,a0,s6
   183ce:	00f303b3          	add	t2,t1,a5
   183d2:	0166e6b3          	or	a3,a3,s6
   183d6:	00768333          	add	t1,a3,t2
   183da:	03af0e33          	mul	t3,t5,s10
   183de:	d6c2                	sw	a6,108(sp)
   183e0:	03a606b3          	mul	a3,a2,s10
   183e4:	02cd8ab3          	mul	s5,s11,a2
   183e8:	0106d793          	srli	a5,a3,0x10
   183ec:	9af2                	add	s5,s5,t3
   183ee:	97d6                	add	a5,a5,s5
   183f0:	03ed83b3          	mul	t2,s11,t5
   183f4:	01c7f363          	bgeu	a5,t3,183fa <__multf3+0x594>
   183f8:	93de                	add	t2,t2,s7
   183fa:	0107de13          	srli	t3,a5,0x10
   183fe:	6ac1                	lui	s5,0x10
   18400:	9e1e                	add	t3,t3,t2
   18402:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   18406:	0077f7b3          	and	a5,a5,t2
   1840a:	0076f6b3          	and	a3,a3,t2
   1840e:	07c2                	slli	a5,a5,0x10
   18410:	03d28b33          	mul	s6,t0,t4
   18414:	97b6                	add	a5,a5,a3
   18416:	02be86b3          	mul	a3,t4,a1
   1841a:	02b985b3          	mul	a1,s3,a1
   1841e:	0106d393          	srli	t2,a3,0x10
   18422:	95da                	add	a1,a1,s6
   18424:	93ae                	add	t2,t2,a1
   18426:	033282b3          	mul	t0,t0,s3
   1842a:	0163f363          	bgeu	t2,s6,18430 <__multf3+0x5ca>
   1842e:	92d6                	add	t0,t0,s5
   18430:	0103d593          	srli	a1,t2,0x10
   18434:	6b41                	lui	s6,0x10
   18436:	92ae                	add	t0,t0,a1
   18438:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   1843c:	8eed                	and	a3,a3,a1
   1843e:	00b3f3b3          	and	t2,t2,a1
   18442:	03c2                	slli	t2,t2,0x10
   18444:	031a05b3          	mul	a1,s4,a7
   18448:	93b6                	add	t2,t2,a3
   1844a:	031908b3          	mul	a7,s2,a7
   1844e:	0105d693          	srli	a3,a1,0x10
   18452:	032f8ab3          	mul	s5,t6,s2
   18456:	034f8fb3          	mul	t6,t6,s4
   1845a:	9fc6                	add	t6,t6,a7
   1845c:	96fe                	add	a3,a3,t6
   1845e:	0116f363          	bgeu	a3,a7,18464 <__multf3+0x5fe>
   18462:	9ada                	add	s5,s5,s6
   18464:	0106df93          	srli	t6,a3,0x10
   18468:	68c1                	lui	a7,0x10
   1846a:	9fd6                	add	t6,t6,s5
   1846c:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   18470:	0156f6b3          	and	a3,a3,s5
   18474:	0155f5b3          	and	a1,a1,s5
   18478:	06c2                	slli	a3,a3,0x10
   1847a:	03df0ab3          	mul	s5,t5,t4
   1847e:	96ae                	add	a3,a3,a1
   18480:	03d605b3          	mul	a1,a2,t4
   18484:	02c98633          	mul	a2,s3,a2
   18488:	01560b33          	add	s6,a2,s5
   1848c:	0105d613          	srli	a2,a1,0x10
   18490:	965a                	add	a2,a2,s6
   18492:	033f0f33          	mul	t5,t5,s3
   18496:	01567363          	bgeu	a2,s5,1849c <__multf3+0x636>
   1849a:	9f46                	add	t5,t5,a7
   1849c:	6ac1                	lui	s5,0x10
   1849e:	01065893          	srli	a7,a2,0x10
   184a2:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   184a6:	9f46                	add	t5,t5,a7
   184a8:	016678b3          	and	a7,a2,s6
   184ac:	0165f5b3          	and	a1,a1,s6
   184b0:	08c2                	slli	a7,a7,0x10
   184b2:	03aa0633          	mul	a2,s4,s10
   184b6:	98ae                	add	a7,a7,a1
   184b8:	03a90bb3          	mul	s7,s2,s10
   184bc:	01065c13          	srli	s8,a2,0x10
   184c0:	034d85b3          	mul	a1,s11,s4
   184c4:	95de                	add	a1,a1,s7
   184c6:	95e2                	add	a1,a1,s8
   184c8:	032d8b33          	mul	s6,s11,s2
   184cc:	0175f363          	bgeu	a1,s7,184d2 <__multf3+0x66c>
   184d0:	9b56                	add	s6,s6,s5
   184d2:	97aa                	add	a5,a5,a0
   184d4:	9e1a                	add	t3,t3,t1
   184d6:	00a7b533          	sltu	a0,a5,a0
   184da:	9572                	add	a0,a0,t3
   184dc:	93be                	add	t2,t2,a5
   184de:	92aa                	add	t0,t0,a0
   184e0:	00f3b7b3          	sltu	a5,t2,a5
   184e4:	9796                	add	a5,a5,t0
   184e6:	006e3333          	sltu	t1,t3,t1
   184ea:	01c53e33          	sltu	t3,a0,t3
   184ee:	00a2b533          	sltu	a0,t0,a0
   184f2:	0057b2b3          	sltu	t0,a5,t0
   184f6:	00556533          	or	a0,a0,t0
   184fa:	01c36333          	or	t1,t1,t3
   184fe:	932a                	add	t1,t1,a0
   18500:	03da0533          	mul	a0,s4,t4
   18504:	969e                	add	a3,a3,t2
   18506:	9fbe                	add	t6,t6,a5
   18508:	0105da93          	srli	s5,a1,0x10
   1850c:	d8b6                	sw	a3,112(sp)
   1850e:	0076b6b3          	sltu	a3,a3,t2
   18512:	96fe                	add	a3,a3,t6
   18514:	9ada                	add	s5,s5,s6
   18516:	6b41                	lui	s6,0x10
   18518:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   1851c:	03d90eb3          	mul	t4,s2,t4
   18520:	00ffb7b3          	sltu	a5,t6,a5
   18524:	01f6bfb3          	sltu	t6,a3,t6
   18528:	0175f5b3          	and	a1,a1,s7
   1852c:	01f7e7b3          	or	a5,a5,t6
   18530:	98b6                	add	a7,a7,a3
   18532:	05c2                	slli	a1,a1,0x10
   18534:	979a                	add	a5,a5,t1
   18536:	01767633          	and	a2,a2,s7
   1853a:	9f3e                	add	t5,t5,a5
   1853c:	03298933          	mul	s2,s3,s2
   18540:	962e                	add	a2,a2,a1
   18542:	00d8b6b3          	sltu	a3,a7,a3
   18546:	96fa                	add	a3,a3,t5
   18548:	9646                	add	a2,a2,a7
   1854a:	00ff37b3          	sltu	a5,t5,a5
   1854e:	9ab6                	add	s5,s5,a3
   18550:	01e6bf33          	sltu	t5,a3,t5
   18554:	dab2                	sw	a2,116(sp)
   18556:	01163633          	sltu	a2,a2,a7
   1855a:	034989b3          	mul	s3,s3,s4
   1855e:	01e7e5b3          	or	a1,a5,t5
   18562:	9656                	add	a2,a2,s5
   18564:	01055793          	srli	a5,a0,0x10
   18568:	00dab6b3          	sltu	a3,s5,a3
   1856c:	01563ab3          	sltu	s5,a2,s5
   18570:	0156e6b3          	or	a3,a3,s5
   18574:	99f6                	add	s3,s3,t4
   18576:	97ce                	add	a5,a5,s3
   18578:	01d7f363          	bgeu	a5,t4,1857e <__multf3+0x718>
   1857c:	995a                	add	s2,s2,s6
   1857e:	0107d893          	srli	a7,a5,0x10
   18582:	95c6                	add	a1,a1,a7
   18584:	68c1                	lui	a7,0x10
   18586:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   18588:	0117f7b3          	and	a5,a5,a7
   1858c:	07c2                	slli	a5,a5,0x10
   1858e:	01157533          	and	a0,a0,a7
   18592:	97aa                	add	a5,a5,a0
   18594:	97b2                	add	a5,a5,a2
   18596:	96ae                	add	a3,a3,a1
   18598:	00c7b633          	sltu	a2,a5,a2
   1859c:	9636                	add	a2,a2,a3
   1859e:	dcbe                	sw	a5,120(sp)
   185a0:	46e2                	lw	a3,24(sp)
   185a2:	5782                	lw	a5,32(sp)
   185a4:	964a                	add	a2,a2,s2
   185a6:	0836                	slli	a6,a6,0xd
   185a8:	8fd5                	or	a5,a5,a3
   185aa:	46f2                	lw	a3,28(sp)
   185ac:	deb2                	sw	a2,124(sp)
   185ae:	188c                	addi	a1,sp,112
   185b0:	8fd5                	or	a5,a5,a3
   185b2:	00f86833          	or	a6,a6,a5
   185b6:	109c                	addi	a5,sp,96
   185b8:	47d4                	lw	a3,12(a5)
   185ba:	4b90                	lw	a2,16(a5)
   185bc:	82cd                	srli	a3,a3,0x13
   185be:	0636                	slli	a2,a2,0xd
   185c0:	8ed1                	or	a3,a3,a2
   185c2:	c394                	sw	a3,0(a5)
   185c4:	0791                	addi	a5,a5,4
   185c6:	fef599e3          	bne	a1,a5,185b8 <__multf3+0x752>
   185ca:	5786                	lw	a5,96(sp)
   185cc:	01003833          	snez	a6,a6
   185d0:	56b6                	lw	a3,108(sp)
   185d2:	00f86833          	or	a6,a6,a5
   185d6:	57a6                	lw	a5,104(sp)
   185d8:	ceb6                	sw	a3,92(sp)
   185da:	c8c2                	sw	a6,80(sp)
   185dc:	ccbe                	sw	a5,88(sp)
   185de:	5796                	lw	a5,100(sp)
   185e0:	cabe                	sw	a5,84(sp)
   185e2:	00b69793          	slli	a5,a3,0xb
   185e6:	0207d863          	bgez	a5,18616 <__multf3+0x7b0>
   185ea:	087e                	slli	a6,a6,0x1f
   185ec:	089c                	addi	a5,sp,80
   185ee:	08e8                	addi	a0,sp,92
   185f0:	4390                	lw	a2,0(a5)
   185f2:	43cc                	lw	a1,4(a5)
   185f4:	8205                	srli	a2,a2,0x1
   185f6:	05fe                	slli	a1,a1,0x1f
   185f8:	8e4d                	or	a2,a2,a1
   185fa:	c390                	sw	a2,0(a5)
   185fc:	0791                	addi	a5,a5,4
   185fe:	fef519e3          	bne	a0,a5,185f0 <__multf3+0x78a>
   18602:	47c6                	lw	a5,80(sp)
   18604:	01003833          	snez	a6,a6
   18608:	8285                	srli	a3,a3,0x1
   1860a:	0107e7b3          	or	a5,a5,a6
   1860e:	c8be                	sw	a5,80(sp)
   18610:	47c2                	lw	a5,16(sp)
   18612:	ceb6                	sw	a3,92(sp)
   18614:	ca3e                	sw	a5,20(sp)
   18616:	47d2                	lw	a5,20(sp)
   18618:	c83e                	sw	a5,16(sp)
   1861a:	aa41                	j	187aa <__multf3+0x944>
   1861c:	4901                	li	s2,0
   1861e:	4c05                	li	s8,1
   18620:	b8d9                	j	17ef6 <__multf3+0x90>
   18622:	4c09                	li	s8,2
   18624:	b8c9                	j	17ef6 <__multf3+0x90>
   18626:	017ae7b3          	or	a5,s5,s7
   1862a:	0167e7b3          	or	a5,a5,s6
   1862e:	8fc9                	or	a5,a5,a0
   18630:	10078263          	beqz	a5,18734 <__multf3+0x8ce>
   18634:	c93d                	beqz	a0,186aa <__multf3+0x844>
   18636:	1dd010ef          	jal	1a012 <__clzsi2>
   1863a:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   1863e:	4056d793          	srai	a5,a3,0x5
   18642:	8afd                	andi	a3,a3,31
   18644:	cac9                	beqz	a3,186d6 <__multf3+0x870>
   18646:	5671                	li	a2,-4
   18648:	02c78633          	mul	a2,a5,a2
   1864c:	02000813          	li	a6,32
   18650:	04010313          	addi	t1,sp,64
   18654:	40d80833          	sub	a6,a6,a3
   18658:	00c60713          	addi	a4,a2,12
   1865c:	971a                	add	a4,a4,t1
   1865e:	40c00633          	neg	a2,a2
   18662:	08e31a63          	bne	t1,a4,186f6 <__multf3+0x890>
   18666:	fff78713          	addi	a4,a5,-1
   1866a:	078a                	slli	a5,a5,0x2
   1866c:	1810                	addi	a2,sp,48
   1866e:	05078793          	addi	a5,a5,80
   18672:	97b2                	add	a5,a5,a2
   18674:	4606                	lw	a2,64(sp)
   18676:	00d616b3          	sll	a3,a2,a3
   1867a:	fcd7a023          	sw	a3,-64(a5)
   1867e:	00170793          	addi	a5,a4,1
   18682:	078a                	slli	a5,a5,0x2
   18684:	46a1                	li	a3,8
   18686:	0098                	addi	a4,sp,64
   18688:	00d7e863          	bltu	a5,a3,18698 <__multf3+0x832>
   1868c:	00072023          	sw	zero,0(a4)
   18690:	00072223          	sw	zero,4(a4)
   18694:	17e1                	addi	a5,a5,-8
   18696:	00b8                	addi	a4,sp,72
   18698:	4691                	li	a3,4
   1869a:	00d7e463          	bltu	a5,a3,186a2 <__multf3+0x83c>
   1869e:	00072023          	sw	zero,0(a4)
   186a2:	77f1                	lui	a5,0xffffc
   186a4:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   186a6:	8f89                	sub	a5,a5,a0
   186a8:	b25d                	j	1804e <__multf3+0x1e8>
   186aa:	000b0863          	beqz	s6,186ba <__multf3+0x854>
   186ae:	855a                	mv	a0,s6
   186b0:	163010ef          	jal	1a012 <__clzsi2>
   186b4:	02050513          	addi	a0,a0,32
   186b8:	b749                	j	1863a <__multf3+0x7d4>
   186ba:	000b8863          	beqz	s7,186ca <__multf3+0x864>
   186be:	855e                	mv	a0,s7
   186c0:	153010ef          	jal	1a012 <__clzsi2>
   186c4:	04050513          	addi	a0,a0,64
   186c8:	bf8d                	j	1863a <__multf3+0x7d4>
   186ca:	8556                	mv	a0,s5
   186cc:	147010ef          	jal	1a012 <__clzsi2>
   186d0:	06050513          	addi	a0,a0,96
   186d4:	b79d                	j	1863a <__multf3+0x7d4>
   186d6:	5671                	li	a2,-4
   186d8:	02c78633          	mul	a2,a5,a2
   186dc:	00f8                	addi	a4,sp,76
   186de:	468d                	li	a3,3
   186e0:	00c705b3          	add	a1,a4,a2
   186e4:	418c                	lw	a1,0(a1)
   186e6:	16fd                	addi	a3,a3,-1
   186e8:	1771                	addi	a4,a4,-4
   186ea:	c34c                	sw	a1,4(a4)
   186ec:	fef6dae3          	bge	a3,a5,186e0 <__multf3+0x87a>
   186f0:	fff78713          	addi	a4,a5,-1
   186f4:	b769                	j	1867e <__multf3+0x818>
   186f6:	430c                	lw	a1,0(a4)
   186f8:	ffc72883          	lw	a7,-4(a4)
   186fc:	00c70e33          	add	t3,a4,a2
   18700:	00d595b3          	sll	a1,a1,a3
   18704:	0108d8b3          	srl	a7,a7,a6
   18708:	0115e5b3          	or	a1,a1,a7
   1870c:	00be2023          	sw	a1,0(t3)
   18710:	1771                	addi	a4,a4,-4
   18712:	bf81                	j	18662 <__multf3+0x7fc>
   18714:	017aeab3          	or	s5,s5,s7
   18718:	016aeab3          	or	s5,s5,s6
   1871c:	00aaeab3          	or	s5,s5,a0
   18720:	4689                	li	a3,2
   18722:	920a87e3          	beqz	s5,18050 <__multf3+0x1ea>
   18726:	0542                	slli	a0,a0,0x10
   18728:	8541                	srai	a0,a0,0x10
   1872a:	468d                	li	a3,3
   1872c:	920542e3          	bltz	a0,18050 <__multf3+0x1ea>
   18730:	4441                	li	s0,16
   18732:	ba39                	j	18050 <__multf3+0x1ea>
   18734:	4781                	li	a5,0
   18736:	4685                	li	a3,1
   18738:	ba21                	j	18050 <__multf3+0x1ea>
   1873a:	4605                	li	a2,1
   1873c:	00f617b3          	sll	a5,a2,a5
   18740:	5307f613          	andi	a2,a5,1328
   18744:	e231                	bnez	a2,18788 <__multf3+0x922>
   18746:	0887f613          	andi	a2,a5,136
   1874a:	e60d                	bnez	a2,18774 <__multf3+0x90e>
   1874c:	2407f793          	andi	a5,a5,576
   18750:	920783e3          	beqz	a5,18076 <__multf3+0x210>
   18754:	4441                	li	s0,16
   18756:	67a1                	lui	a5,0x8
   18758:	cebe                	sw	a5,92(sp)
   1875a:	cc82                	sw	zero,88(sp)
   1875c:	ca82                	sw	zero,84(sp)
   1875e:	c882                	sw	zero,80(sp)
   18760:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18762:	4701                	li	a4,0
   18764:	a8e1                	j	1883c <__multf3+0x9d6>
   18766:	473d                	li	a4,15
   18768:	fee787e3          	beq	a5,a4,18756 <__multf3+0x8f0>
   1876c:	462d                	li	a2,11
   1876e:	874e                	mv	a4,s3
   18770:	00c79c63          	bne	a5,a2,18788 <__multf3+0x922>
   18774:	8752                	mv	a4,s4
   18776:	4786                	lw	a5,64(sp)
   18778:	8c36                	mv	s8,a3
   1877a:	c8be                	sw	a5,80(sp)
   1877c:	4796                	lw	a5,68(sp)
   1877e:	cabe                	sw	a5,84(sp)
   18780:	47a6                	lw	a5,72(sp)
   18782:	ccbe                	sw	a5,88(sp)
   18784:	47b6                	lw	a5,76(sp)
   18786:	a801                	j	18796 <__multf3+0x930>
   18788:	57c2                	lw	a5,48(sp)
   1878a:	c8be                	sw	a5,80(sp)
   1878c:	57d2                	lw	a5,52(sp)
   1878e:	cabe                	sw	a5,84(sp)
   18790:	57e2                	lw	a5,56(sp)
   18792:	ccbe                	sw	a5,88(sp)
   18794:	57f2                	lw	a5,60(sp)
   18796:	cebe                	sw	a5,92(sp)
   18798:	4789                	li	a5,2
   1879a:	34fc0d63          	beq	s8,a5,18af4 <__multf3+0xc8e>
   1879e:	478d                	li	a5,3
   187a0:	fafc0be3          	beq	s8,a5,18756 <__multf3+0x8f0>
   187a4:	4785                	li	a5,1
   187a6:	34fc0263          	beq	s8,a5,18aea <__multf3+0xc84>
   187aa:	46c2                	lw	a3,16(sp)
   187ac:	6791                	lui	a5,0x4
   187ae:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   187b0:	97b6                	add	a5,a5,a3
   187b2:	10f05763          	blez	a5,188c0 <__multf3+0xa5a>
   187b6:	4646                	lw	a2,80(sp)
   187b8:	00767693          	andi	a3,a2,7
   187bc:	c2a1                	beqz	a3,187fc <__multf3+0x996>
   187be:	4509                	li	a0,2
   187c0:	46d6                	lw	a3,84(sp)
   187c2:	45f6                	lw	a1,92(sp)
   187c4:	0ca48563          	beq	s1,a0,1888e <__multf3+0xa28>
   187c8:	450d                	li	a0,3
   187ca:	0aa48c63          	beq	s1,a0,18882 <__multf3+0xa1c>
   187ce:	e48d                	bnez	s1,187f8 <__multf3+0x992>
   187d0:	00f67513          	andi	a0,a2,15
   187d4:	4811                	li	a6,4
   187d6:	03050163          	beq	a0,a6,187f8 <__multf3+0x992>
   187da:	0611                	addi	a2,a2,4
   187dc:	c8b2                	sw	a2,80(sp)
   187de:	00463613          	sltiu	a2,a2,4
   187e2:	96b2                	add	a3,a3,a2
   187e4:	cab6                	sw	a3,84(sp)
   187e6:	00c6b6b3          	sltu	a3,a3,a2
   187ea:	4666                	lw	a2,88(sp)
   187ec:	96b2                	add	a3,a3,a2
   187ee:	ccb6                	sw	a3,88(sp)
   187f0:	00c6b6b3          	sltu	a3,a3,a2
   187f4:	96ae                	add	a3,a3,a1
   187f6:	ceb6                	sw	a3,92(sp)
   187f8:	00146413          	ori	s0,s0,1
   187fc:	46f6                	lw	a3,92(sp)
   187fe:	00b69613          	slli	a2,a3,0xb
   18802:	00065a63          	bgez	a2,18816 <__multf3+0x9b0>
   18806:	fff007b7          	lui	a5,0xfff00
   1880a:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee45a3>
   1880c:	8efd                	and	a3,a3,a5
   1880e:	ceb6                	sw	a3,92(sp)
   18810:	46c2                	lw	a3,16(sp)
   18812:	6791                	lui	a5,0x4
   18814:	97b6                	add	a5,a5,a3
   18816:	0894                	addi	a3,sp,80
   18818:	08e8                	addi	a0,sp,92
   1881a:	4290                	lw	a2,0(a3)
   1881c:	42cc                	lw	a1,4(a3)
   1881e:	820d                	srli	a2,a2,0x3
   18820:	05f6                	slli	a1,a1,0x1d
   18822:	8e4d                	or	a2,a2,a1
   18824:	c290                	sw	a2,0(a3)
   18826:	0691                	addi	a3,a3,4
   18828:	fed519e3          	bne	a0,a3,1881a <__multf3+0x9b4>
   1882c:	6621                	lui	a2,0x8
   1882e:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   18830:	46f6                	lw	a3,92(sp)
   18832:	65a1                	lui	a1,0x8
   18834:	04f64f63          	blt	a2,a5,18892 <__multf3+0xa2c>
   18838:	828d                	srli	a3,a3,0x3
   1883a:	ceb6                	sw	a3,92(sp)
   1883c:	4576                	lw	a0,92(sp)
   1883e:	073e                	slli	a4,a4,0xf
   18840:	8f5d                	or	a4,a4,a5
   18842:	06a11623          	sh	a0,108(sp)
   18846:	06e11723          	sh	a4,110(sp)
   1884a:	45c6                	lw	a1,80(sp)
   1884c:	4656                	lw	a2,84(sp)
   1884e:	46e6                	lw	a3,88(sp)
   18850:	57b6                	lw	a5,108(sp)
   18852:	c019                	beqz	s0,18858 <__multf3+0x9f2>
   18854:	00142073          	csrs	fflags,s0
   18858:	4732                	lw	a4,12(sp)
   1885a:	50fa                	lw	ra,188(sp)
   1885c:	546a                	lw	s0,184(sp)
   1885e:	c30c                	sw	a1,0(a4)
   18860:	c350                	sw	a2,4(a4)
   18862:	c714                	sw	a3,8(a4)
   18864:	c75c                	sw	a5,12(a4)
   18866:	54da                	lw	s1,180(sp)
   18868:	594a                	lw	s2,176(sp)
   1886a:	59ba                	lw	s3,172(sp)
   1886c:	5a2a                	lw	s4,168(sp)
   1886e:	5a9a                	lw	s5,164(sp)
   18870:	5b0a                	lw	s6,160(sp)
   18872:	4bfa                	lw	s7,156(sp)
   18874:	4c6a                	lw	s8,152(sp)
   18876:	4cda                	lw	s9,148(sp)
   18878:	4d4a                	lw	s10,144(sp)
   1887a:	4dba                	lw	s11,140(sp)
   1887c:	853a                	mv	a0,a4
   1887e:	6129                	addi	sp,sp,192
   18880:	8082                	ret
   18882:	fb3d                	bnez	a4,187f8 <__multf3+0x992>
   18884:	0621                	addi	a2,a2,8
   18886:	c8b2                	sw	a2,80(sp)
   18888:	00863613          	sltiu	a2,a2,8
   1888c:	bf99                	j	187e2 <__multf3+0x97c>
   1888e:	d72d                	beqz	a4,187f8 <__multf3+0x992>
   18890:	bfd5                	j	18884 <__multf3+0xa1e>
   18892:	4789                	li	a5,2
   18894:	02f48463          	beq	s1,a5,188bc <__multf3+0xa56>
   18898:	478d                	li	a5,3
   1889a:	00f48763          	beq	s1,a5,188a8 <__multf3+0xa42>
   1889e:	e491                	bnez	s1,188aa <__multf3+0xa44>
   188a0:	4681                	li	a3,0
   188a2:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   188a6:	a021                	j	188ae <__multf3+0xa48>
   188a8:	df65                	beqz	a4,188a0 <__multf3+0xa3a>
   188aa:	56fd                	li	a3,-1
   188ac:	87b2                	mv	a5,a2
   188ae:	ceb6                	sw	a3,92(sp)
   188b0:	ccb6                	sw	a3,88(sp)
   188b2:	cab6                	sw	a3,84(sp)
   188b4:	c8b6                	sw	a3,80(sp)
   188b6:	00546413          	ori	s0,s0,5
   188ba:	b749                	j	1883c <__multf3+0x9d6>
   188bc:	f375                	bnez	a4,188a0 <__multf3+0xa3a>
   188be:	b7f5                	j	188aa <__multf3+0xa44>
   188c0:	4685                	li	a3,1
   188c2:	ebb9                	bnez	a5,18918 <__multf3+0xab2>
   188c4:	4646                	lw	a2,80(sp)
   188c6:	46f6                	lw	a3,92(sp)
   188c8:	00767593          	andi	a1,a2,7
   188cc:	c1b1                	beqz	a1,18910 <__multf3+0xaaa>
   188ce:	4809                	li	a6,2
   188d0:	45d6                	lw	a1,84(sp)
   188d2:	4566                	lw	a0,88(sp)
   188d4:	00146413          	ori	s0,s0,1
   188d8:	03048b63          	beq	s1,a6,1890e <__multf3+0xaa8>
   188dc:	480d                	li	a6,3
   188de:	03048363          	beq	s1,a6,18904 <__multf3+0xa9e>
   188e2:	e49d                	bnez	s1,18910 <__multf3+0xaaa>
   188e4:	00f67813          	andi	a6,a2,15
   188e8:	4891                	li	a7,4
   188ea:	03180363          	beq	a6,a7,18910 <__multf3+0xaaa>
   188ee:	0611                	addi	a2,a2,4
   188f0:	00463613          	sltiu	a2,a2,4
   188f4:	95b2                	add	a1,a1,a2
   188f6:	00c5b5b3          	sltu	a1,a1,a2
   188fa:	952e                	add	a0,a0,a1
   188fc:	00b53533          	sltu	a0,a0,a1
   18900:	96aa                	add	a3,a3,a0
   18902:	a039                	j	18910 <__multf3+0xaaa>
   18904:	e711                	bnez	a4,18910 <__multf3+0xaaa>
   18906:	0621                	addi	a2,a2,8
   18908:	00863613          	sltiu	a2,a2,8
   1890c:	b7e5                	j	188f4 <__multf3+0xa8e>
   1890e:	ff65                	bnez	a4,18906 <__multf3+0xaa0>
   18910:	82d1                	srli	a3,a3,0x14
   18912:	0016c693          	xori	a3,a3,1
   18916:	8a85                	andi	a3,a3,1
   18918:	4605                	li	a2,1
   1891a:	40f607b3          	sub	a5,a2,a5
   1891e:	07400593          	li	a1,116
   18922:	18f5c163          	blt	a1,a5,18aa4 <__multf3+0xc3e>
   18926:	0890                	addi	a2,sp,80
   18928:	4057d593          	srai	a1,a5,0x5
   1892c:	01f7f513          	andi	a0,a5,31
   18930:	88b2                	mv	a7,a2
   18932:	4781                	li	a5,0
   18934:	4801                	li	a6,0
   18936:	02b81763          	bne	a6,a1,18964 <__multf3+0xafe>
   1893a:	480d                	li	a6,3
   1893c:	40b80833          	sub	a6,a6,a1
   18940:	00259893          	slli	a7,a1,0x2
   18944:	e51d                	bnez	a0,18972 <__multf3+0xb0c>
   18946:	8332                	mv	t1,a2
   18948:	01130e33          	add	t3,t1,a7
   1894c:	000e2e03          	lw	t3,0(t3)
   18950:	0505                	addi	a0,a0,1
   18952:	0311                	addi	t1,t1,4
   18954:	ffc32e23          	sw	t3,-4(t1)
   18958:	fea858e3          	bge	a6,a0,18948 <__multf3+0xae2>
   1895c:	4511                	li	a0,4
   1895e:	40b505b3          	sub	a1,a0,a1
   18962:	a8a1                	j	189ba <__multf3+0xb54>
   18964:	0008a303          	lw	t1,0(a7)
   18968:	0805                	addi	a6,a6,1
   1896a:	0891                	addi	a7,a7,4
   1896c:	0067e7b3          	or	a5,a5,t1
   18970:	b7d9                	j	18936 <__multf3+0xad0>
   18972:	05088313          	addi	t1,a7,80
   18976:	03010e13          	addi	t3,sp,48
   1897a:	9372                	add	t1,t1,t3
   1897c:	fd032303          	lw	t1,-48(t1)
   18980:	02000e93          	li	t4,32
   18984:	40ae8eb3          	sub	t4,t4,a0
   18988:	01d31333          	sll	t1,t1,t4
   1898c:	0067e7b3          	or	a5,a5,t1
   18990:	4f01                	li	t5,0
   18992:	01160333          	add	t1,a2,a7
   18996:	411008b3          	neg	a7,a7
   1899a:	0b0f4d63          	blt	t5,a6,18a54 <__multf3+0xbee>
   1899e:	4891                	li	a7,4
   189a0:	080a                	slli	a6,a6,0x2
   189a2:	40b885b3          	sub	a1,a7,a1
   189a6:	05080813          	addi	a6,a6,80
   189aa:	03010893          	addi	a7,sp,48
   189ae:	9846                	add	a6,a6,a7
   189b0:	48f6                	lw	a7,92(sp)
   189b2:	00a8d533          	srl	a0,a7,a0
   189b6:	fca82823          	sw	a0,-48(a6)
   189ba:	4511                	li	a0,4
   189bc:	8d0d                	sub	a0,a0,a1
   189be:	050a                	slli	a0,a0,0x2
   189c0:	058a                	slli	a1,a1,0x2
   189c2:	4821                	li	a6,8
   189c4:	95b2                	add	a1,a1,a2
   189c6:	01056863          	bltu	a0,a6,189d6 <__multf3+0xb70>
   189ca:	0005a023          	sw	zero,0(a1)
   189ce:	0005a223          	sw	zero,4(a1)
   189d2:	1561                	addi	a0,a0,-8
   189d4:	05a1                	addi	a1,a1,8
   189d6:	4811                	li	a6,4
   189d8:	01056463          	bltu	a0,a6,189e0 <__multf3+0xb7a>
   189dc:	0005a023          	sw	zero,0(a1)
   189e0:	45c6                	lw	a1,80(sp)
   189e2:	00f037b3          	snez	a5,a5
   189e6:	8fcd                	or	a5,a5,a1
   189e8:	c8be                	sw	a5,80(sp)
   189ea:	0077f593          	andi	a1,a5,7
   189ee:	c1a1                	beqz	a1,18a2e <__multf3+0xbc8>
   189f0:	4509                	li	a0,2
   189f2:	45f6                	lw	a1,92(sp)
   189f4:	08a48763          	beq	s1,a0,18a82 <__multf3+0xc1c>
   189f8:	450d                	li	a0,3
   189fa:	06a48e63          	beq	s1,a0,18a76 <__multf3+0xc10>
   189fe:	e495                	bnez	s1,18a2a <__multf3+0xbc4>
   18a00:	00f7f513          	andi	a0,a5,15
   18a04:	4811                	li	a6,4
   18a06:	03050263          	beq	a0,a6,18a2a <__multf3+0xbc4>
   18a0a:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   18a0c:	c8be                	sw	a5,80(sp)
   18a0e:	0047b793          	sltiu	a5,a5,4
   18a12:	4556                	lw	a0,84(sp)
   18a14:	97aa                	add	a5,a5,a0
   18a16:	cabe                	sw	a5,84(sp)
   18a18:	00a7b7b3          	sltu	a5,a5,a0
   18a1c:	4566                	lw	a0,88(sp)
   18a1e:	97aa                	add	a5,a5,a0
   18a20:	ccbe                	sw	a5,88(sp)
   18a22:	00a7b7b3          	sltu	a5,a5,a0
   18a26:	97ae                	add	a5,a5,a1
   18a28:	cebe                	sw	a5,92(sp)
   18a2a:	00146413          	ori	s0,s0,1
   18a2e:	45f6                	lw	a1,92(sp)
   18a30:	00c59793          	slli	a5,a1,0xc
   18a34:	0407d963          	bgez	a5,18a86 <__multf3+0xc20>
   18a38:	ce82                	sw	zero,92(sp)
   18a3a:	cc82                	sw	zero,88(sp)
   18a3c:	ca82                	sw	zero,84(sp)
   18a3e:	c882                	sw	zero,80(sp)
   18a40:	00146413          	ori	s0,s0,1
   18a44:	4785                	li	a5,1
   18a46:	de068be3          	beqz	a3,1883c <__multf3+0x9d6>
   18a4a:	00147693          	andi	a3,s0,1
   18a4e:	0686                	slli	a3,a3,0x1
   18a50:	8c55                	or	s0,s0,a3
   18a52:	b3ed                	j	1883c <__multf3+0x9d6>
   18a54:	00032e03          	lw	t3,0(t1)
   18a58:	00432f83          	lw	t6,4(t1)
   18a5c:	011302b3          	add	t0,t1,a7
   18a60:	00ae5e33          	srl	t3,t3,a0
   18a64:	01df9fb3          	sll	t6,t6,t4
   18a68:	01fe6e33          	or	t3,t3,t6
   18a6c:	01c2a023          	sw	t3,0(t0)
   18a70:	0f05                	addi	t5,t5,1
   18a72:	0311                	addi	t1,t1,4
   18a74:	b71d                	j	1899a <__multf3+0xb34>
   18a76:	fb55                	bnez	a4,18a2a <__multf3+0xbc4>
   18a78:	07a1                	addi	a5,a5,8
   18a7a:	c8be                	sw	a5,80(sp)
   18a7c:	0087b793          	sltiu	a5,a5,8
   18a80:	bf49                	j	18a12 <__multf3+0xbac>
   18a82:	d745                	beqz	a4,18a2a <__multf3+0xbc4>
   18a84:	bfd5                	j	18a78 <__multf3+0xc12>
   18a86:	00c60813          	addi	a6,a2,12
   18a8a:	421c                	lw	a5,0(a2)
   18a8c:	4248                	lw	a0,4(a2)
   18a8e:	838d                	srli	a5,a5,0x3
   18a90:	0576                	slli	a0,a0,0x1d
   18a92:	8fc9                	or	a5,a5,a0
   18a94:	c21c                	sw	a5,0(a2)
   18a96:	0611                	addi	a2,a2,4
   18a98:	fec819e3          	bne	a6,a2,18a8a <__multf3+0xc24>
   18a9c:	818d                	srli	a1,a1,0x3
   18a9e:	ceae                	sw	a1,92(sp)
   18aa0:	4781                	li	a5,0
   18aa2:	b755                	j	18a46 <__multf3+0xbe0>
   18aa4:	46d6                	lw	a3,84(sp)
   18aa6:	47c6                	lw	a5,80(sp)
   18aa8:	8fd5                	or	a5,a5,a3
   18aaa:	46e6                	lw	a3,88(sp)
   18aac:	8fd5                	or	a5,a5,a3
   18aae:	46f6                	lw	a3,92(sp)
   18ab0:	8fd5                	or	a5,a5,a3
   18ab2:	c395                	beqz	a5,18ad6 <__multf3+0xc70>
   18ab4:	ce82                	sw	zero,92(sp)
   18ab6:	cc82                	sw	zero,88(sp)
   18ab8:	ca82                	sw	zero,84(sp)
   18aba:	c8b2                	sw	a2,80(sp)
   18abc:	4789                	li	a5,2
   18abe:	00146413          	ori	s0,s0,1
   18ac2:	02f48263          	beq	s1,a5,18ae6 <__multf3+0xc80>
   18ac6:	478d                	li	a5,3
   18ac8:	00f48b63          	beq	s1,a5,18ade <__multf3+0xc78>
   18acc:	4795                	li	a5,5
   18ace:	c891                	beqz	s1,18ae2 <__multf3+0xc7c>
   18ad0:	47c6                	lw	a5,80(sp)
   18ad2:	838d                	srli	a5,a5,0x3
   18ad4:	c8be                	sw	a5,80(sp)
   18ad6:	00246413          	ori	s0,s0,2
   18ada:	4781                	li	a5,0
   18adc:	b385                	j	1883c <__multf3+0x9d6>
   18ade:	fb6d                	bnez	a4,18ad0 <__multf3+0xc6a>
   18ae0:	47a5                	li	a5,9
   18ae2:	c8be                	sw	a5,80(sp)
   18ae4:	b7f5                	j	18ad0 <__multf3+0xc6a>
   18ae6:	ff6d                	bnez	a4,18ae0 <__multf3+0xc7a>
   18ae8:	b7e5                	j	18ad0 <__multf3+0xc6a>
   18aea:	ce82                	sw	zero,92(sp)
   18aec:	cc82                	sw	zero,88(sp)
   18aee:	ca82                	sw	zero,84(sp)
   18af0:	c882                	sw	zero,80(sp)
   18af2:	b7e5                	j	18ada <__multf3+0xc74>
   18af4:	67a1                	lui	a5,0x8
   18af6:	ce82                	sw	zero,92(sp)
   18af8:	cc82                	sw	zero,88(sp)
   18afa:	ca82                	sw	zero,84(sp)
   18afc:	c882                	sw	zero,80(sp)
   18afe:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18b00:	bb35                	j	1883c <__multf3+0x9d6>

00018b02 <__subtf3>:
   18b02:	7159                	addi	sp,sp,-112
   18b04:	d2a6                	sw	s1,100(sp)
   18b06:	d0ca                	sw	s2,96(sp)
   18b08:	cece                	sw	s3,92(sp)
   18b0a:	c2e6                	sw	s9,68(sp)
   18b0c:	d686                	sw	ra,108(sp)
   18b0e:	d4a2                	sw	s0,104(sp)
   18b10:	ccd2                	sw	s4,88(sp)
   18b12:	cad6                	sw	s5,84(sp)
   18b14:	c8da                	sw	s6,80(sp)
   18b16:	c6de                	sw	s7,76(sp)
   18b18:	c4e2                	sw	s8,72(sp)
   18b1a:	892a                	mv	s2,a0
   18b1c:	4198                	lw	a4,0(a1)
   18b1e:	41d4                	lw	a3,4(a1)
   18b20:	459c                	lw	a5,8(a1)
   18b22:	00c5a983          	lw	s3,12(a1)
   18b26:	4204                	lw	s1,0(a2)
   18b28:	00462883          	lw	a7,4(a2)
   18b2c:	00862803          	lw	a6,8(a2)
   18b30:	00c62c83          	lw	s9,12(a2)
   18b34:	00202a73          	frrm	s4
   18b38:	dc3e                	sw	a5,56(sp)
   18b3a:	c43e                	sw	a5,8(sp)
   18b3c:	01099793          	slli	a5,s3,0x10
   18b40:	83c1                	srli	a5,a5,0x10
   18b42:	00199413          	slli	s0,s3,0x1
   18b46:	858a                	mv	a1,sp
   18b48:	de4e                	sw	s3,60(sp)
   18b4a:	c63e                	sw	a5,12(sp)
   18b4c:	d83a                	sw	a4,48(sp)
   18b4e:	da36                	sw	a3,52(sp)
   18b50:	c03a                	sw	a4,0(sp)
   18b52:	c236                	sw	a3,4(sp)
   18b54:	8045                	srli	s0,s0,0x11
   18b56:	01f9d993          	srli	s3,s3,0x1f
   18b5a:	ff410313          	addi	t1,sp,-12
   18b5e:	87ae                	mv	a5,a1
   18b60:	852e                	mv	a0,a1
   18b62:	47d4                	lw	a3,12(a5)
   18b64:	4790                	lw	a2,8(a5)
   18b66:	17f1                	addi	a5,a5,-4
   18b68:	068e                	slli	a3,a3,0x3
   18b6a:	8275                	srli	a2,a2,0x1d
   18b6c:	8ed1                	or	a3,a3,a2
   18b6e:	cb94                	sw	a3,16(a5)
   18b70:	fef319e3          	bne	t1,a5,18b62 <__subtf3+0x60>
   18b74:	010c9793          	slli	a5,s9,0x10
   18b78:	83c1                	srli	a5,a5,0x10
   18b7a:	001c9a93          	slli	s5,s9,0x1
   18b7e:	070e                	slli	a4,a4,0x3
   18b80:	dc42                	sw	a6,56(sp)
   18b82:	cc42                	sw	a6,24(sp)
   18b84:	01010813          	addi	a6,sp,16
   18b88:	da46                	sw	a7,52(sp)
   18b8a:	de66                	sw	s9,60(sp)
   18b8c:	ca46                	sw	a7,20(sp)
   18b8e:	ce3e                	sw	a5,28(sp)
   18b90:	c03a                	sw	a4,0(sp)
   18b92:	d826                	sw	s1,48(sp)
   18b94:	c826                	sw	s1,16(sp)
   18b96:	011ada93          	srli	s5,s5,0x11
   18b9a:	01fcdc93          	srli	s9,s9,0x1f
   18b9e:	00410893          	addi	a7,sp,4
   18ba2:	87c2                	mv	a5,a6
   18ba4:	8e42                	mv	t3,a6
   18ba6:	47d4                	lw	a3,12(a5)
   18ba8:	4790                	lw	a2,8(a5)
   18baa:	17f1                	addi	a5,a5,-4
   18bac:	068e                	slli	a3,a3,0x3
   18bae:	8275                	srli	a2,a2,0x1d
   18bb0:	8ed1                	or	a3,a3,a2
   18bb2:	cb94                	sw	a3,16(a5)
   18bb4:	fef899e3          	bne	a7,a5,18ba6 <__subtf3+0xa4>
   18bb8:	048e                	slli	s1,s1,0x3
   18bba:	67a1                	lui	a5,0x8
   18bbc:	c826                	sw	s1,16(sp)
   18bbe:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18bc0:	00fa9963          	bne	s5,a5,18bd2 <__subtf3+0xd0>
   18bc4:	46e2                	lw	a3,24(sp)
   18bc6:	47d2                	lw	a5,20(sp)
   18bc8:	8fd5                	or	a5,a5,a3
   18bca:	46f2                	lw	a3,28(sp)
   18bcc:	8fd5                	or	a5,a5,a3
   18bce:	8fc5                	or	a5,a5,s1
   18bd0:	e399                	bnez	a5,18bd6 <__subtf3+0xd4>
   18bd2:	001ccc93          	xori	s9,s9,1
   18bd6:	415407b3          	sub	a5,s0,s5
   18bda:	5d3c9c63          	bne	s9,s3,191b2 <__subtf3+0x6b0>
   18bde:	24f05963          	blez	a5,18e30 <__subtf3+0x32e>
   18be2:	4312                	lw	t1,4(sp)
   18be4:	48a2                	lw	a7,8(sp)
   18be6:	45b2                	lw	a1,12(sp)
   18be8:	080a9963          	bnez	s5,18c7a <__subtf3+0x178>
   18bec:	4552                	lw	a0,20(sp)
   18bee:	46e2                	lw	a3,24(sp)
   18bf0:	4ef2                	lw	t4,28(sp)
   18bf2:	00d56633          	or	a2,a0,a3
   18bf6:	01d66633          	or	a2,a2,t4
   18bfa:	8e45                	or	a2,a2,s1
   18bfc:	e61d                	bnez	a2,18c2a <__subtf3+0x128>
   18bfe:	66a1                	lui	a3,0x8
   18c00:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18c02:	00d79e63          	bne	a5,a3,18c1e <__subtf3+0x11c>
   18c06:	011366b3          	or	a3,t1,a7
   18c0a:	8ecd                	or	a3,a3,a1
   18c0c:	8ed9                	or	a3,a3,a4
   18c0e:	ca81                	beqz	a3,18c1e <__subtf3+0x11c>
   18c10:	0125da93          	srli	s5,a1,0x12
   18c14:	001aca93          	xori	s5,s5,1
   18c18:	001afa93          	andi	s5,s5,1
   18c1c:	0a92                	slli	s5,s5,0x4
   18c1e:	d03a                	sw	a4,32(sp)
   18c20:	d21a                	sw	t1,36(sp)
   18c22:	d446                	sw	a7,40(sp)
   18c24:	d62e                	sw	a1,44(sp)
   18c26:	8456                	mv	s0,s5
   18c28:	ac99                	j	18e7e <__subtf3+0x37c>
   18c2a:	fff78613          	addi	a2,a5,-1
   18c2e:	ea0d                	bnez	a2,18c60 <__subtf3+0x15e>
   18c30:	94ba                	add	s1,s1,a4
   18c32:	932a                	add	t1,t1,a0
   18c34:	d026                	sw	s1,32(sp)
   18c36:	00e4b4b3          	sltu	s1,s1,a4
   18c3a:	949a                	add	s1,s1,t1
   18c3c:	d226                	sw	s1,36(sp)
   18c3e:	00a33533          	sltu	a0,t1,a0
   18c42:	0064b4b3          	sltu	s1,s1,t1
   18c46:	98b6                	add	a7,a7,a3
   18c48:	8d45                	or	a0,a0,s1
   18c4a:	9546                	add	a0,a0,a7
   18c4c:	d42a                	sw	a0,40(sp)
   18c4e:	00d8b733          	sltu	a4,a7,a3
   18c52:	01153533          	sltu	a0,a0,a7
   18c56:	8f49                	or	a4,a4,a0
   18c58:	9eae                	add	t4,t4,a1
   18c5a:	9776                	add	a4,a4,t4
   18c5c:	4785                	li	a5,1
   18c5e:	a299                	j	18da4 <__subtf3+0x2a2>
   18c60:	66a1                	lui	a3,0x8
   18c62:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18c64:	fad781e3          	beq	a5,a3,18c06 <__subtf3+0x104>
   18c68:	07400793          	li	a5,116
   18c6c:	04c7d863          	bge	a5,a2,18cbc <__subtf3+0x1ba>
   18c70:	ce02                	sw	zero,28(sp)
   18c72:	cc02                	sw	zero,24(sp)
   18c74:	ca02                	sw	zero,20(sp)
   18c76:	4785                	li	a5,1
   18c78:	a8dd                	j	18d6e <__subtf3+0x26c>
   18c7a:	66a1                	lui	a3,0x8
   18c7c:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18c7e:	02d41563          	bne	s0,a3,18ca8 <__subtf3+0x1a6>
   18c82:	011367b3          	or	a5,t1,a7
   18c86:	8fcd                	or	a5,a5,a1
   18c88:	8fd9                	or	a5,a5,a4
   18c8a:	4681                	li	a3,0
   18c8c:	c799                	beqz	a5,18c9a <__subtf3+0x198>
   18c8e:	0125d693          	srli	a3,a1,0x12
   18c92:	0016c693          	xori	a3,a3,1
   18c96:	8a85                	andi	a3,a3,1
   18c98:	0692                	slli	a3,a3,0x4
   18c9a:	d03a                	sw	a4,32(sp)
   18c9c:	d21a                	sw	t1,36(sp)
   18c9e:	d446                	sw	a7,40(sp)
   18ca0:	d62e                	sw	a1,44(sp)
   18ca2:	87a2                	mv	a5,s0
   18ca4:	8436                	mv	s0,a3
   18ca6:	aae1                	j	18e7e <__subtf3+0x37c>
   18ca8:	46f2                	lw	a3,28(sp)
   18caa:	00080637          	lui	a2,0x80
   18cae:	8ed1                	or	a3,a3,a2
   18cb0:	ce36                	sw	a3,28(sp)
   18cb2:	07400693          	li	a3,116
   18cb6:	faf6cde3          	blt	a3,a5,18c70 <__subtf3+0x16e>
   18cba:	863e                	mv	a2,a5
   18cbc:	40565693          	srai	a3,a2,0x5
   18cc0:	8ec2                	mv	t4,a6
   18cc2:	8a7d                	andi	a2,a2,31
   18cc4:	4781                	li	a5,0
   18cc6:	4501                	li	a0,0
   18cc8:	02d51563          	bne	a0,a3,18cf2 <__subtf3+0x1f0>
   18ccc:	450d                	li	a0,3
   18cce:	8d15                	sub	a0,a0,a3
   18cd0:	00269e93          	slli	t4,a3,0x2
   18cd4:	e615                	bnez	a2,18d00 <__subtf3+0x1fe>
   18cd6:	01d80f33          	add	t5,a6,t4
   18cda:	000f2f03          	lw	t5,0(t5)
   18cde:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   18ce0:	0811                	addi	a6,a6,4
   18ce2:	ffe82e23          	sw	t5,-4(a6)
   18ce6:	fec558e3          	bge	a0,a2,18cd6 <__subtf3+0x1d4>
   18cea:	4611                	li	a2,4
   18cec:	40d606b3          	sub	a3,a2,a3
   18cf0:	a881                	j	18d40 <__subtf3+0x23e>
   18cf2:	000eaf03          	lw	t5,0(t4)
   18cf6:	0505                	addi	a0,a0,1
   18cf8:	0e91                	addi	t4,t4,4
   18cfa:	01e7e7b3          	or	a5,a5,t5
   18cfe:	b7e9                	j	18cc8 <__subtf3+0x1c6>
   18d00:	040e8493          	addi	s1,t4,64
   18d04:	00248f33          	add	t5,s1,sp
   18d08:	fd0f2f03          	lw	t5,-48(t5)
   18d0c:	02000393          	li	t2,32
   18d10:	40c383b3          	sub	t2,t2,a2
   18d14:	007f1f33          	sll	t5,t5,t2
   18d18:	9876                	add	a6,a6,t4
   18d1a:	01e7e7b3          	or	a5,a5,t5
   18d1e:	41d00eb3          	neg	t4,t4
   18d22:	4f81                	li	t6,0
   18d24:	0eafc563          	blt	t6,a0,18e0e <__subtf3+0x30c>
   18d28:	4811                	li	a6,4
   18d2a:	40d806b3          	sub	a3,a6,a3
   18d2e:	4872                	lw	a6,28(sp)
   18d30:	050a                	slli	a0,a0,0x2
   18d32:	04050513          	addi	a0,a0,64
   18d36:	950a                	add	a0,a0,sp
   18d38:	00c85633          	srl	a2,a6,a2
   18d3c:	fcc52823          	sw	a2,-48(a0)
   18d40:	4611                	li	a2,4
   18d42:	8e15                	sub	a2,a2,a3
   18d44:	060a                	slli	a2,a2,0x2
   18d46:	068a                	slli	a3,a3,0x2
   18d48:	4521                	li	a0,8
   18d4a:	96f2                	add	a3,a3,t3
   18d4c:	00a66863          	bltu	a2,a0,18d5c <__subtf3+0x25a>
   18d50:	0006a023          	sw	zero,0(a3)
   18d54:	0006a223          	sw	zero,4(a3)
   18d58:	1661                	addi	a2,a2,-8
   18d5a:	06a1                	addi	a3,a3,8
   18d5c:	4511                	li	a0,4
   18d5e:	00a66463          	bltu	a2,a0,18d66 <__subtf3+0x264>
   18d62:	0006a023          	sw	zero,0(a3)
   18d66:	46c2                	lw	a3,16(sp)
   18d68:	00f037b3          	snez	a5,a5
   18d6c:	8fd5                	or	a5,a5,a3
   18d6e:	46d2                	lw	a3,20(sp)
   18d70:	c83e                	sw	a5,16(sp)
   18d72:	97ba                	add	a5,a5,a4
   18d74:	9336                	add	t1,t1,a3
   18d76:	d03e                	sw	a5,32(sp)
   18d78:	00e7b7b3          	sltu	a5,a5,a4
   18d7c:	4762                	lw	a4,24(sp)
   18d7e:	979a                	add	a5,a5,t1
   18d80:	d23e                	sw	a5,36(sp)
   18d82:	00d336b3          	sltu	a3,t1,a3
   18d86:	0067b7b3          	sltu	a5,a5,t1
   18d8a:	98ba                	add	a7,a7,a4
   18d8c:	8fd5                	or	a5,a5,a3
   18d8e:	97c6                	add	a5,a5,a7
   18d90:	d43e                	sw	a5,40(sp)
   18d92:	00e8b733          	sltu	a4,a7,a4
   18d96:	0117b7b3          	sltu	a5,a5,a7
   18d9a:	8f5d                	or	a4,a4,a5
   18d9c:	47f2                	lw	a5,28(sp)
   18d9e:	97ae                	add	a5,a5,a1
   18da0:	973e                	add	a4,a4,a5
   18da2:	87a2                	mv	a5,s0
   18da4:	d63a                	sw	a4,44(sp)
   18da6:	00c71693          	slli	a3,a4,0xc
   18daa:	4401                	li	s0,0
   18dac:	0c06d963          	bgez	a3,18e7e <__subtf3+0x37c>
   18db0:	5602                	lw	a2,32(sp)
   18db2:	fff806b7          	lui	a3,0xfff80
   18db6:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   18db8:	8f75                	and	a4,a4,a3
   18dba:	d63a                	sw	a4,44(sp)
   18dbc:	0785                	addi	a5,a5,1
   18dbe:	067e                	slli	a2,a2,0x1f
   18dc0:	1014                	addi	a3,sp,32
   18dc2:	02c10813          	addi	a6,sp,44
   18dc6:	428c                	lw	a1,0(a3)
   18dc8:	42c8                	lw	a0,4(a3)
   18dca:	8185                	srli	a1,a1,0x1
   18dcc:	057e                	slli	a0,a0,0x1f
   18dce:	8dc9                	or	a1,a1,a0
   18dd0:	c28c                	sw	a1,0(a3)
   18dd2:	0691                	addi	a3,a3,4
   18dd4:	fed819e3          	bne	a6,a3,18dc6 <__subtf3+0x2c4>
   18dd8:	5682                	lw	a3,32(sp)
   18dda:	8305                	srli	a4,a4,0x1
   18ddc:	d63a                	sw	a4,44(sp)
   18dde:	00c03733          	snez	a4,a2
   18de2:	8f55                	or	a4,a4,a3
   18de4:	d03a                	sw	a4,32(sp)
   18de6:	6721                	lui	a4,0x8
   18de8:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18dea:	4401                	li	s0,0
   18dec:	08e79963          	bne	a5,a4,18e7e <__subtf3+0x37c>
   18df0:	3a0a0963          	beqz	s4,191a2 <__subtf3+0x6a0>
   18df4:	478d                	li	a5,3
   18df6:	3afa1163          	bne	s4,a5,19198 <__subtf3+0x696>
   18dfa:	3a098463          	beqz	s3,191a2 <__subtf3+0x6a0>
   18dfe:	57fd                	li	a5,-1
   18e00:	d63e                	sw	a5,44(sp)
   18e02:	d43e                	sw	a5,40(sp)
   18e04:	d23e                	sw	a5,36(sp)
   18e06:	d03e                	sw	a5,32(sp)
   18e08:	67a1                	lui	a5,0x8
   18e0a:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   18e0c:	a64d                	j	191ae <__subtf3+0x6ac>
   18e0e:	00082f03          	lw	t5,0(a6)
   18e12:	00482283          	lw	t0,4(a6)
   18e16:	01d804b3          	add	s1,a6,t4
   18e1a:	00cf5f33          	srl	t5,t5,a2
   18e1e:	007292b3          	sll	t0,t0,t2
   18e22:	005f6f33          	or	t5,t5,t0
   18e26:	01e4a023          	sw	t5,0(s1)
   18e2a:	0f85                	addi	t6,t6,1
   18e2c:	0811                	addi	a6,a6,4
   18e2e:	bddd                	j	18d24 <__subtf3+0x222>
   18e30:	4bd2                	lw	s7,20(sp)
   18e32:	4c62                	lw	s8,24(sp)
   18e34:	4b72                	lw	s6,28(sp)
   18e36:	1e078363          	beqz	a5,1901c <__subtf3+0x51a>
   18e3a:	408a87b3          	sub	a5,s5,s0
   18e3e:	e859                	bnez	s0,18ed4 <__subtf3+0x3d2>
   18e40:	4612                	lw	a2,4(sp)
   18e42:	46a2                	lw	a3,8(sp)
   18e44:	48b2                	lw	a7,12(sp)
   18e46:	00d66833          	or	a6,a2,a3
   18e4a:	01186833          	or	a6,a6,a7
   18e4e:	00e86833          	or	a6,a6,a4
   18e52:	02081963          	bnez	a6,18e84 <__subtf3+0x382>
   18e56:	6721                	lui	a4,0x8
   18e58:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18e5a:	00e79e63          	bne	a5,a4,18e76 <__subtf3+0x374>
   18e5e:	018be733          	or	a4,s7,s8
   18e62:	01676733          	or	a4,a4,s6
   18e66:	8f45                	or	a4,a4,s1
   18e68:	c719                	beqz	a4,18e76 <__subtf3+0x374>
   18e6a:	012b5413          	srli	s0,s6,0x12
   18e6e:	00144413          	xori	s0,s0,1
   18e72:	8805                	andi	s0,s0,1
   18e74:	0412                	slli	s0,s0,0x4
   18e76:	d026                	sw	s1,32(sp)
   18e78:	d25e                	sw	s7,36(sp)
   18e7a:	d462                	sw	s8,40(sp)
   18e7c:	d65a                	sw	s6,44(sp)
   18e7e:	4681                	li	a3,0
   18e80:	3fb0006f          	j	19a7a <__subtf3+0xf78>
   18e84:	fff78813          	addi	a6,a5,-1
   18e88:	02081963          	bnez	a6,18eba <__subtf3+0x3b8>
   18e8c:	94ba                	add	s1,s1,a4
   18e8e:	9bb2                	add	s7,s7,a2
   18e90:	d026                	sw	s1,32(sp)
   18e92:	00e4b4b3          	sltu	s1,s1,a4
   18e96:	94de                	add	s1,s1,s7
   18e98:	d226                	sw	s1,36(sp)
   18e9a:	00cbb633          	sltu	a2,s7,a2
   18e9e:	0174b4b3          	sltu	s1,s1,s7
   18ea2:	9c36                	add	s8,s8,a3
   18ea4:	8e45                	or	a2,a2,s1
   18ea6:	9662                	add	a2,a2,s8
   18ea8:	d432                	sw	a2,40(sp)
   18eaa:	00dc3733          	sltu	a4,s8,a3
   18eae:	01863633          	sltu	a2,a2,s8
   18eb2:	8f51                	or	a4,a4,a2
   18eb4:	98da                	add	a7,a7,s6
   18eb6:	9746                	add	a4,a4,a7
   18eb8:	b355                	j	18c5c <__subtf3+0x15a>
   18eba:	6721                	lui	a4,0x8
   18ebc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18ebe:	fae780e3          	beq	a5,a4,18e5e <__subtf3+0x35c>
   18ec2:	07400793          	li	a5,116
   18ec6:	0507d863          	bge	a5,a6,18f16 <__subtf3+0x414>
   18eca:	c602                	sw	zero,12(sp)
   18ecc:	c402                	sw	zero,8(sp)
   18ece:	c202                	sw	zero,4(sp)
   18ed0:	4785                	li	a5,1
   18ed2:	a8cd                	j	18fc4 <__subtf3+0x4c2>
   18ed4:	6721                	lui	a4,0x8
   18ed6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18ed8:	02ea9563          	bne	s5,a4,18f02 <__subtf3+0x400>
   18edc:	018be7b3          	or	a5,s7,s8
   18ee0:	0167e7b3          	or	a5,a5,s6
   18ee4:	8fc5                	or	a5,a5,s1
   18ee6:	4401                	li	s0,0
   18ee8:	c799                	beqz	a5,18ef6 <__subtf3+0x3f4>
   18eea:	012b5413          	srli	s0,s6,0x12
   18eee:	00144413          	xori	s0,s0,1
   18ef2:	8805                	andi	s0,s0,1
   18ef4:	0412                	slli	s0,s0,0x4
   18ef6:	d026                	sw	s1,32(sp)
   18ef8:	d25e                	sw	s7,36(sp)
   18efa:	d462                	sw	s8,40(sp)
   18efc:	d65a                	sw	s6,44(sp)
   18efe:	87d6                	mv	a5,s5
   18f00:	bfbd                	j	18e7e <__subtf3+0x37c>
   18f02:	4732                	lw	a4,12(sp)
   18f04:	000806b7          	lui	a3,0x80
   18f08:	8f55                	or	a4,a4,a3
   18f0a:	c63a                	sw	a4,12(sp)
   18f0c:	07400713          	li	a4,116
   18f10:	faf74de3          	blt	a4,a5,18eca <__subtf3+0x3c8>
   18f14:	883e                	mv	a6,a5
   18f16:	02000713          	li	a4,32
   18f1a:	02e84733          	div	a4,a6,a4
   18f1e:	86ae                	mv	a3,a1
   18f20:	4401                	li	s0,0
   18f22:	4781                	li	a5,0
   18f24:	02e7c663          	blt	a5,a4,18f50 <__subtf3+0x44e>
   18f28:	478d                	li	a5,3
   18f2a:	01f87893          	andi	a7,a6,31
   18f2e:	8f99                	sub	a5,a5,a4
   18f30:	00271613          	slli	a2,a4,0x2
   18f34:	02089363          	bnez	a7,18f5a <__subtf3+0x458>
   18f38:	00c586b3          	add	a3,a1,a2
   18f3c:	4294                	lw	a3,0(a3)
   18f3e:	0885                	addi	a7,a7,1
   18f40:	c194                	sw	a3,0(a1)
   18f42:	0591                	addi	a1,a1,4
   18f44:	ff17dae3          	bge	a5,a7,18f38 <__subtf3+0x436>
   18f48:	4791                	li	a5,4
   18f4a:	40e78733          	sub	a4,a5,a4
   18f4e:	a899                	j	18fa4 <__subtf3+0x4a2>
   18f50:	4290                	lw	a2,0(a3)
   18f52:	0785                	addi	a5,a5,1
   18f54:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   18f56:	8c51                	or	s0,s0,a2
   18f58:	b7f1                	j	18f24 <__subtf3+0x422>
   18f5a:	02000693          	li	a3,32
   18f5e:	02d86833          	rem	a6,a6,a3
   18f62:	41068833          	sub	a6,a3,a6
   18f66:	86ba                	mv	a3,a4
   18f68:	00075363          	bgez	a4,18f6e <__subtf3+0x46c>
   18f6c:	4681                	li	a3,0
   18f6e:	068a                	slli	a3,a3,0x2
   18f70:	04068693          	addi	a3,a3,64
   18f74:	968a                	add	a3,a3,sp
   18f76:	fc06a683          	lw	a3,-64(a3)
   18f7a:	95b2                	add	a1,a1,a2
   18f7c:	4301                	li	t1,0
   18f7e:	010696b3          	sll	a3,a3,a6
   18f82:	8c55                	or	s0,s0,a3
   18f84:	40c00633          	neg	a2,a2
   18f88:	06f34a63          	blt	t1,a5,18ffc <__subtf3+0x4fa>
   18f8c:	4691                	li	a3,4
   18f8e:	40e68733          	sub	a4,a3,a4
   18f92:	46b2                	lw	a3,12(sp)
   18f94:	078a                	slli	a5,a5,0x2
   18f96:	04078793          	addi	a5,a5,64
   18f9a:	978a                	add	a5,a5,sp
   18f9c:	0116d6b3          	srl	a3,a3,a7
   18fa0:	fcd7a023          	sw	a3,-64(a5)
   18fa4:	00572793          	slti	a5,a4,5
   18fa8:	4601                	li	a2,0
   18faa:	c781                	beqz	a5,18fb2 <__subtf3+0x4b0>
   18fac:	4611                	li	a2,4
   18fae:	8e19                	sub	a2,a2,a4
   18fb0:	060a                	slli	a2,a2,0x2
   18fb2:	070a                	slli	a4,a4,0x2
   18fb4:	953a                	add	a0,a0,a4
   18fb6:	4581                	li	a1,0
   18fb8:	c41f70ef          	jal	10bf8 <memset>
   18fbc:	4702                	lw	a4,0(sp)
   18fbe:	008037b3          	snez	a5,s0
   18fc2:	8fd9                	or	a5,a5,a4
   18fc4:	4692                	lw	a3,4(sp)
   18fc6:	c03e                	sw	a5,0(sp)
   18fc8:	97a6                	add	a5,a5,s1
   18fca:	9bb6                	add	s7,s7,a3
   18fcc:	4722                	lw	a4,8(sp)
   18fce:	d03e                	sw	a5,32(sp)
   18fd0:	0097b7b3          	sltu	a5,a5,s1
   18fd4:	97de                	add	a5,a5,s7
   18fd6:	d23e                	sw	a5,36(sp)
   18fd8:	00dbb6b3          	sltu	a3,s7,a3
   18fdc:	0177b7b3          	sltu	a5,a5,s7
   18fe0:	9c3a                	add	s8,s8,a4
   18fe2:	8fd5                	or	a5,a5,a3
   18fe4:	97e2                	add	a5,a5,s8
   18fe6:	d43e                	sw	a5,40(sp)
   18fe8:	00ec3733          	sltu	a4,s8,a4
   18fec:	0187b7b3          	sltu	a5,a5,s8
   18ff0:	8f5d                	or	a4,a4,a5
   18ff2:	47b2                	lw	a5,12(sp)
   18ff4:	97da                	add	a5,a5,s6
   18ff6:	973e                	add	a4,a4,a5
   18ff8:	87d6                	mv	a5,s5
   18ffa:	b36d                	j	18da4 <__subtf3+0x2a2>
   18ffc:	4194                	lw	a3,0(a1)
   18ffe:	0045ae03          	lw	t3,4(a1)
   19002:	00c58eb3          	add	t4,a1,a2
   19006:	0116d6b3          	srl	a3,a3,a7
   1900a:	010e1e33          	sll	t3,t3,a6
   1900e:	01c6e6b3          	or	a3,a3,t3
   19012:	00dea023          	sw	a3,0(t4)
   19016:	0305                	addi	t1,t1,1
   19018:	0591                	addi	a1,a1,4
   1901a:	b7bd                	j	18f88 <__subtf3+0x486>
   1901c:	00140793          	addi	a5,s0,1
   19020:	01179513          	slli	a0,a5,0x11
   19024:	8149                	srli	a0,a0,0x12
   19026:	4612                	lw	a2,4(sp)
   19028:	46a2                	lw	a3,8(sp)
   1902a:	45b2                	lw	a1,12(sp)
   1902c:	10051c63          	bnez	a0,19144 <__subtf3+0x642>
   19030:	00d667b3          	or	a5,a2,a3
   19034:	8fcd                	or	a5,a5,a1
   19036:	8fd9                	or	a5,a5,a4
   19038:	e049                	bnez	s0,190ba <__subtf3+0x5b8>
   1903a:	e785                	bnez	a5,19062 <__subtf3+0x560>
   1903c:	d026                	sw	s1,32(sp)
   1903e:	d25e                	sw	s7,36(sp)
   19040:	d462                	sw	s8,40(sp)
   19042:	d65a                	sw	s6,44(sp)
   19044:	5782                	lw	a5,32(sp)
   19046:	5592                	lw	a1,36(sp)
   19048:	5622                	lw	a2,40(sp)
   1904a:	56b2                	lw	a3,44(sp)
   1904c:	00b7e733          	or	a4,a5,a1
   19050:	8f51                	or	a4,a4,a2
   19052:	8f55                	or	a4,a4,a3
   19054:	1a071de3          	bnez	a4,19a0e <__subtf3+0xf0c>
   19058:	4781                	li	a5,0
   1905a:	4681                	li	a3,0
   1905c:	4401                	li	s0,0
   1905e:	21d0006f          	j	19a7a <__subtf3+0xf78>
   19062:	018be7b3          	or	a5,s7,s8
   19066:	0167e7b3          	or	a5,a5,s6
   1906a:	8fc5                	or	a5,a5,s1
   1906c:	e791                	bnez	a5,19078 <__subtf3+0x576>
   1906e:	d03a                	sw	a4,32(sp)
   19070:	d232                	sw	a2,36(sp)
   19072:	d436                	sw	a3,40(sp)
   19074:	d62e                	sw	a1,44(sp)
   19076:	b7f9                	j	19044 <__subtf3+0x542>
   19078:	94ba                	add	s1,s1,a4
   1907a:	9bb2                	add	s7,s7,a2
   1907c:	d026                	sw	s1,32(sp)
   1907e:	00e4b4b3          	sltu	s1,s1,a4
   19082:	94de                	add	s1,s1,s7
   19084:	d226                	sw	s1,36(sp)
   19086:	00cbb633          	sltu	a2,s7,a2
   1908a:	0174b4b3          	sltu	s1,s1,s7
   1908e:	9c36                	add	s8,s8,a3
   19090:	8e45                	or	a2,a2,s1
   19092:	9662                	add	a2,a2,s8
   19094:	d432                	sw	a2,40(sp)
   19096:	00dc36b3          	sltu	a3,s8,a3
   1909a:	01863633          	sltu	a2,a2,s8
   1909e:	8ed1                	or	a3,a3,a2
   190a0:	95da                	add	a1,a1,s6
   190a2:	96ae                	add	a3,a3,a1
   190a4:	00c69793          	slli	a5,a3,0xc
   190a8:	3207d2e3          	bgez	a5,19bcc <__subtf3+0x10ca>
   190ac:	fff807b7          	lui	a5,0xfff80
   190b0:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   190b2:	8efd                	and	a3,a3,a5
   190b4:	d636                	sw	a3,44(sp)
   190b6:	4785                	li	a5,1
   190b8:	b3d9                	j	18e7e <__subtf3+0x37c>
   190ba:	6521                	lui	a0,0x8
   190bc:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   190be:	04a41363          	bne	s0,a0,19104 <__subtf3+0x602>
   190c2:	300788e3          	beqz	a5,19bd2 <__subtf3+0x10d0>
   190c6:	0125d413          	srli	s0,a1,0x12
   190ca:	00144413          	xori	s0,s0,1
   190ce:	8805                	andi	s0,s0,1
   190d0:	0412                	slli	s0,s0,0x4
   190d2:	02aa9d63          	bne	s5,a0,1910c <__subtf3+0x60a>
   190d6:	018be533          	or	a0,s7,s8
   190da:	01656533          	or	a0,a0,s6
   190de:	8d45                	or	a0,a0,s1
   190e0:	c50d                	beqz	a0,1910a <__subtf3+0x608>
   190e2:	00db1513          	slli	a0,s6,0xd
   190e6:	02054263          	bltz	a0,1910a <__subtf3+0x608>
   190ea:	4441                	li	s0,16
   190ec:	eb85                	bnez	a5,1911c <__subtf3+0x61a>
   190ee:	8726                	mv	a4,s1
   190f0:	865e                	mv	a2,s7
   190f2:	86e2                	mv	a3,s8
   190f4:	85da                	mv	a1,s6
   190f6:	d03a                	sw	a4,32(sp)
   190f8:	d232                	sw	a2,36(sp)
   190fa:	d436                	sw	a3,40(sp)
   190fc:	d62e                	sw	a1,44(sp)
   190fe:	67a1                	lui	a5,0x8
   19100:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19102:	bbb5                	j	18e7e <__subtf3+0x37c>
   19104:	4401                	li	s0,0
   19106:	fcaa88e3          	beq	s5,a0,190d6 <__subtf3+0x5d4>
   1910a:	d3f5                	beqz	a5,190ee <__subtf3+0x5ec>
   1910c:	018bebb3          	or	s7,s7,s8
   19110:	016bebb3          	or	s7,s7,s6
   19114:	009bebb3          	or	s7,s7,s1
   19118:	fc0b8fe3          	beqz	s7,190f6 <__subtf3+0x5f4>
   1911c:	67a1                	lui	a5,0x8
   1911e:	d63e                	sw	a5,44(sp)
   19120:	d402                	sw	zero,40(sp)
   19122:	d202                	sw	zero,36(sp)
   19124:	d002                	sw	zero,32(sp)
   19126:	101c                	addi	a5,sp,32
   19128:	0850                	addi	a2,sp,20
   1912a:	47d8                	lw	a4,12(a5)
   1912c:	4794                	lw	a3,8(a5)
   1912e:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19130:	070e                	slli	a4,a4,0x3
   19132:	82f5                	srli	a3,a3,0x1d
   19134:	8f55                	or	a4,a4,a3
   19136:	cb98                	sw	a4,16(a5)
   19138:	fef619e3          	bne	a2,a5,1912a <__subtf3+0x628>
   1913c:	4981                	li	s3,0
   1913e:	b7c1                	j	190fe <__subtf3+0x5fc>
   19140:	4401                	li	s0,0
   19142:	bf51                	j	190d6 <__subtf3+0x5d4>
   19144:	94ba                	add	s1,s1,a4
   19146:	9bb2                	add	s7,s7,a2
   19148:	d026                	sw	s1,32(sp)
   1914a:	00e4b4b3          	sltu	s1,s1,a4
   1914e:	94de                	add	s1,s1,s7
   19150:	d226                	sw	s1,36(sp)
   19152:	00cbb633          	sltu	a2,s7,a2
   19156:	0174b4b3          	sltu	s1,s1,s7
   1915a:	9c36                	add	s8,s8,a3
   1915c:	8e45                	or	a2,a2,s1
   1915e:	9662                	add	a2,a2,s8
   19160:	d432                	sw	a2,40(sp)
   19162:	00dc36b3          	sltu	a3,s8,a3
   19166:	01863633          	sltu	a2,a2,s8
   1916a:	8ed1                	or	a3,a3,a2
   1916c:	95da                	add	a1,a1,s6
   1916e:	96ae                	add	a3,a3,a1
   19170:	d636                	sw	a3,44(sp)
   19172:	1018                	addi	a4,sp,32
   19174:	1068                	addi	a0,sp,44
   19176:	4310                	lw	a2,0(a4)
   19178:	434c                	lw	a1,4(a4)
   1917a:	8205                	srli	a2,a2,0x1
   1917c:	05fe                	slli	a1,a1,0x1f
   1917e:	8e4d                	or	a2,a2,a1
   19180:	c310                	sw	a2,0(a4)
   19182:	0711                	addi	a4,a4,4
   19184:	fee519e3          	bne	a0,a4,19176 <__subtf3+0x674>
   19188:	6721                	lui	a4,0x8
   1918a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1918c:	c6e782e3          	beq	a5,a4,18df0 <__subtf3+0x2ee>
   19190:	8285                	srli	a3,a3,0x1
   19192:	d636                	sw	a3,44(sp)
   19194:	4401                	li	s0,0
   19196:	b1e5                	j	18e7e <__subtf3+0x37c>
   19198:	4789                	li	a5,2
   1919a:	c6fa12e3          	bne	s4,a5,18dfe <__subtf3+0x2fc>
   1919e:	c60980e3          	beqz	s3,18dfe <__subtf3+0x2fc>
   191a2:	67a1                	lui	a5,0x8
   191a4:	d602                	sw	zero,44(sp)
   191a6:	d402                	sw	zero,40(sp)
   191a8:	d202                	sw	zero,36(sp)
   191aa:	d002                	sw	zero,32(sp)
   191ac:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   191ae:	4415                	li	s0,5
   191b0:	b1f9                	j	18e7e <__subtf3+0x37c>
   191b2:	22f05b63          	blez	a5,193e8 <__subtf3+0x8e6>
   191b6:	4592                	lw	a1,4(sp)
   191b8:	4522                	lw	a0,8(sp)
   191ba:	48b2                	lw	a7,12(sp)
   191bc:	0a0a9563          	bnez	s5,19266 <__subtf3+0x764>
   191c0:	4ed2                	lw	t4,20(sp)
   191c2:	4fe2                	lw	t6,24(sp)
   191c4:	4672                	lw	a2,28(sp)
   191c6:	01fee6b3          	or	a3,t4,t6
   191ca:	8ed1                	or	a3,a3,a2
   191cc:	8ec5                	or	a3,a3,s1
   191ce:	e69d                	bnez	a3,191fc <__subtf3+0x6fa>
   191d0:	66a1                	lui	a3,0x8
   191d2:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   191d4:	00d79f63          	bne	a5,a3,191f2 <__subtf3+0x6f0>
   191d8:	00a5e6b3          	or	a3,a1,a0
   191dc:	0116e6b3          	or	a3,a3,a7
   191e0:	8ed9                	or	a3,a3,a4
   191e2:	ca81                	beqz	a3,191f2 <__subtf3+0x6f0>
   191e4:	0128da93          	srli	s5,a7,0x12
   191e8:	001aca93          	xori	s5,s5,1
   191ec:	001afa93          	andi	s5,s5,1
   191f0:	0a92                	slli	s5,s5,0x4
   191f2:	d03a                	sw	a4,32(sp)
   191f4:	d22e                	sw	a1,36(sp)
   191f6:	d42a                	sw	a0,40(sp)
   191f8:	d646                	sw	a7,44(sp)
   191fa:	b435                	j	18c26 <__subtf3+0x124>
   191fc:	fff78f13          	addi	t5,a5,-1
   19200:	040f1663          	bnez	t5,1924c <__subtf3+0x74a>
   19204:	409706b3          	sub	a3,a4,s1
   19208:	41d58833          	sub	a6,a1,t4
   1920c:	00d73333          	sltu	t1,a4,a3
   19210:	0105b7b3          	sltu	a5,a1,a6
   19214:	40680833          	sub	a6,a6,t1
   19218:	4301                	li	t1,0
   1921a:	00d77663          	bgeu	a4,a3,19226 <__subtf3+0x724>
   1921e:	40be8eb3          	sub	t4,t4,a1
   19222:	001eb313          	seqz	t1,t4
   19226:	00f36733          	or	a4,t1,a5
   1922a:	41f505b3          	sub	a1,a0,t6
   1922e:	00b53333          	sltu	t1,a0,a1
   19232:	8d99                	sub	a1,a1,a4
   19234:	c709                	beqz	a4,1923e <__subtf3+0x73c>
   19236:	40af87b3          	sub	a5,t6,a0
   1923a:	0017bf13          	seqz	t5,a5
   1923e:	40c88733          	sub	a4,a7,a2
   19242:	006f67b3          	or	a5,t5,t1
   19246:	8f1d                	sub	a4,a4,a5
   19248:	4785                	li	a5,1
   1924a:	aab9                	j	193a8 <__subtf3+0x8a6>
   1924c:	66a1                	lui	a3,0x8
   1924e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19250:	f8d784e3          	beq	a5,a3,191d8 <__subtf3+0x6d6>
   19254:	07400793          	li	a5,116
   19258:	05e7d763          	bge	a5,t5,192a6 <__subtf3+0x7a4>
   1925c:	ce02                	sw	zero,28(sp)
   1925e:	cc02                	sw	zero,24(sp)
   19260:	ca02                	sw	zero,20(sp)
   19262:	4685                	li	a3,1
   19264:	a8e5                	j	1935c <__subtf3+0x85a>
   19266:	66a1                	lui	a3,0x8
   19268:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1926a:	02d41463          	bne	s0,a3,19292 <__subtf3+0x790>
   1926e:	00a5e7b3          	or	a5,a1,a0
   19272:	0117e7b3          	or	a5,a5,a7
   19276:	8fd9                	or	a5,a5,a4
   19278:	4681                	li	a3,0
   1927a:	c799                	beqz	a5,19288 <__subtf3+0x786>
   1927c:	0128d693          	srli	a3,a7,0x12
   19280:	0016c693          	xori	a3,a3,1
   19284:	8a85                	andi	a3,a3,1
   19286:	0692                	slli	a3,a3,0x4
   19288:	d03a                	sw	a4,32(sp)
   1928a:	d22e                	sw	a1,36(sp)
   1928c:	d42a                	sw	a0,40(sp)
   1928e:	d646                	sw	a7,44(sp)
   19290:	bc09                	j	18ca2 <__subtf3+0x1a0>
   19292:	46f2                	lw	a3,28(sp)
   19294:	00080637          	lui	a2,0x80
   19298:	8ed1                	or	a3,a3,a2
   1929a:	ce36                	sw	a3,28(sp)
   1929c:	07400693          	li	a3,116
   192a0:	faf6cee3          	blt	a3,a5,1925c <__subtf3+0x75a>
   192a4:	8f3e                	mv	t5,a5
   192a6:	405f5793          	srai	a5,t5,0x5
   192aa:	8342                	mv	t1,a6
   192ac:	01ff7f13          	andi	t5,t5,31
   192b0:	4681                	li	a3,0
   192b2:	4601                	li	a2,0
   192b4:	02f61663          	bne	a2,a5,192e0 <__subtf3+0x7de>
   192b8:	460d                	li	a2,3
   192ba:	8e1d                	sub	a2,a2,a5
   192bc:	00279313          	slli	t1,a5,0x2
   192c0:	020f1763          	bnez	t5,192ee <__subtf3+0x7ec>
   192c4:	00680eb3          	add	t4,a6,t1
   192c8:	000eae83          	lw	t4,0(t4)
   192cc:	0f05                	addi	t5,t5,1
   192ce:	0811                	addi	a6,a6,4
   192d0:	ffd82e23          	sw	t4,-4(a6)
   192d4:	ffe658e3          	bge	a2,t5,192c4 <__subtf3+0x7c2>
   192d8:	4611                	li	a2,4
   192da:	40f607b3          	sub	a5,a2,a5
   192de:	a881                	j	1932e <__subtf3+0x82c>
   192e0:	00032e83          	lw	t4,0(t1)
   192e4:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   192e6:	0311                	addi	t1,t1,4
   192e8:	01d6e6b3          	or	a3,a3,t4
   192ec:	b7e1                	j	192b4 <__subtf3+0x7b2>
   192ee:	04030493          	addi	s1,t1,64
   192f2:	00248eb3          	add	t4,s1,sp
   192f6:	fd0eae83          	lw	t4,-48(t4)
   192fa:	02000393          	li	t2,32
   192fe:	41e383b3          	sub	t2,t2,t5
   19302:	007e9eb3          	sll	t4,t4,t2
   19306:	981a                	add	a6,a6,t1
   19308:	01d6e6b3          	or	a3,a3,t4
   1930c:	40600333          	neg	t1,t1
   19310:	4f81                	li	t6,0
   19312:	0acfca63          	blt	t6,a2,193c6 <__subtf3+0x8c4>
   19316:	4811                	li	a6,4
   19318:	40f807b3          	sub	a5,a6,a5
   1931c:	4872                	lw	a6,28(sp)
   1931e:	060a                	slli	a2,a2,0x2
   19320:	04060613          	addi	a2,a2,64
   19324:	960a                	add	a2,a2,sp
   19326:	01e85833          	srl	a6,a6,t5
   1932a:	fd062823          	sw	a6,-48(a2)
   1932e:	4611                	li	a2,4
   19330:	8e1d                	sub	a2,a2,a5
   19332:	060a                	slli	a2,a2,0x2
   19334:	078a                	slli	a5,a5,0x2
   19336:	4821                	li	a6,8
   19338:	97f2                	add	a5,a5,t3
   1933a:	01066863          	bltu	a2,a6,1934a <__subtf3+0x848>
   1933e:	0007a023          	sw	zero,0(a5)
   19342:	0007a223          	sw	zero,4(a5)
   19346:	1661                	addi	a2,a2,-8
   19348:	07a1                	addi	a5,a5,8
   1934a:	4811                	li	a6,4
   1934c:	01066463          	bltu	a2,a6,19354 <__subtf3+0x852>
   19350:	0007a023          	sw	zero,0(a5)
   19354:	47c2                	lw	a5,16(sp)
   19356:	00d036b3          	snez	a3,a3
   1935a:	8edd                	or	a3,a3,a5
   1935c:	4652                	lw	a2,20(sp)
   1935e:	c836                	sw	a3,16(sp)
   19360:	40d706b3          	sub	a3,a4,a3
   19364:	40c58833          	sub	a6,a1,a2
   19368:	00d737b3          	sltu	a5,a4,a3
   1936c:	0105b333          	sltu	t1,a1,a6
   19370:	40f80833          	sub	a6,a6,a5
   19374:	4781                	li	a5,0
   19376:	00d77563          	bgeu	a4,a3,19380 <__subtf3+0x87e>
   1937a:	8e0d                	sub	a2,a2,a1
   1937c:	00163793          	seqz	a5,a2
   19380:	4762                	lw	a4,24(sp)
   19382:	0067e7b3          	or	a5,a5,t1
   19386:	4601                	li	a2,0
   19388:	40e505b3          	sub	a1,a0,a4
   1938c:	00b53333          	sltu	t1,a0,a1
   19390:	8d9d                	sub	a1,a1,a5
   19392:	c781                	beqz	a5,1939a <__subtf3+0x898>
   19394:	8f09                	sub	a4,a4,a0
   19396:	00173613          	seqz	a2,a4
   1939a:	4772                	lw	a4,28(sp)
   1939c:	00666633          	or	a2,a2,t1
   193a0:	87a2                	mv	a5,s0
   193a2:	40e88733          	sub	a4,a7,a4
   193a6:	8f11                	sub	a4,a4,a2
   193a8:	d036                	sw	a3,32(sp)
   193aa:	d63a                	sw	a4,44(sp)
   193ac:	d42e                	sw	a1,40(sp)
   193ae:	d242                	sw	a6,36(sp)
   193b0:	00c71693          	slli	a3,a4,0xc
   193b4:	de06d0e3          	bgez	a3,19194 <__subtf3+0x692>
   193b8:	000806b7          	lui	a3,0x80
   193bc:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x645a3>
   193be:	8f75                	and	a4,a4,a3
   193c0:	d63a                	sw	a4,44(sp)
   193c2:	843e                	mv	s0,a5
   193c4:	a1bd                	j	19832 <__subtf3+0xd30>
   193c6:	00082e83          	lw	t4,0(a6)
   193ca:	00482283          	lw	t0,4(a6)
   193ce:	006804b3          	add	s1,a6,t1
   193d2:	01eedeb3          	srl	t4,t4,t5
   193d6:	007292b3          	sll	t0,t0,t2
   193da:	005eeeb3          	or	t4,t4,t0
   193de:	01d4a023          	sw	t4,0(s1)
   193e2:	0f85                	addi	t6,t6,1
   193e4:	0811                	addi	a6,a6,4
   193e6:	b735                	j	19312 <__subtf3+0x810>
   193e8:	4bd2                	lw	s7,20(sp)
   193ea:	4b62                	lw	s6,24(sp)
   193ec:	4c72                	lw	s8,28(sp)
   193ee:	20078763          	beqz	a5,195fc <__subtf3+0xafa>
   193f2:	408a87b3          	sub	a5,s5,s0
   193f6:	e05d                	bnez	s0,1949c <__subtf3+0x99a>
   193f8:	4892                	lw	a7,4(sp)
   193fa:	4e22                	lw	t3,8(sp)
   193fc:	4632                	lw	a2,12(sp)
   193fe:	01c8e6b3          	or	a3,a7,t3
   19402:	8ed1                	or	a3,a3,a2
   19404:	8ed9                	or	a3,a3,a4
   19406:	e69d                	bnez	a3,19434 <__subtf3+0x932>
   19408:	6721                	lui	a4,0x8
   1940a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1940c:	00e79e63          	bne	a5,a4,19428 <__subtf3+0x926>
   19410:	016be733          	or	a4,s7,s6
   19414:	01876733          	or	a4,a4,s8
   19418:	8f45                	or	a4,a4,s1
   1941a:	c719                	beqz	a4,19428 <__subtf3+0x926>
   1941c:	012c5413          	srli	s0,s8,0x12
   19420:	00144413          	xori	s0,s0,1
   19424:	8805                	andi	s0,s0,1
   19426:	0412                	slli	s0,s0,0x4
   19428:	d026                	sw	s1,32(sp)
   1942a:	d25e                	sw	s7,36(sp)
   1942c:	d45a                	sw	s6,40(sp)
   1942e:	d662                	sw	s8,44(sp)
   19430:	89e6                	mv	s3,s9
   19432:	b4b1                	j	18e7e <__subtf3+0x37c>
   19434:	fff78313          	addi	t1,a5,-1
   19438:	04031563          	bnez	t1,19482 <__subtf3+0x980>
   1943c:	40e486b3          	sub	a3,s1,a4
   19440:	411b8833          	sub	a6,s7,a7
   19444:	00d4b733          	sltu	a4,s1,a3
   19448:	010bb7b3          	sltu	a5,s7,a6
   1944c:	40e80833          	sub	a6,a6,a4
   19450:	4701                	li	a4,0
   19452:	00d4f663          	bgeu	s1,a3,1945e <__subtf3+0x95c>
   19456:	417888b3          	sub	a7,a7,s7
   1945a:	0018b713          	seqz	a4,a7
   1945e:	41cb05b3          	sub	a1,s6,t3
   19462:	8f5d                	or	a4,a4,a5
   19464:	00bb3533          	sltu	a0,s6,a1
   19468:	8d99                	sub	a1,a1,a4
   1946a:	c709                	beqz	a4,19474 <__subtf3+0x972>
   1946c:	416e07b3          	sub	a5,t3,s6
   19470:	0017b313          	seqz	t1,a5
   19474:	40cc0733          	sub	a4,s8,a2
   19478:	00a367b3          	or	a5,t1,a0
   1947c:	8f1d                	sub	a4,a4,a5
   1947e:	89e6                	mv	s3,s9
   19480:	b3e1                	j	19248 <__subtf3+0x746>
   19482:	6721                	lui	a4,0x8
   19484:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19486:	f8e785e3          	beq	a5,a4,19410 <__subtf3+0x90e>
   1948a:	07400793          	li	a5,116
   1948e:	0467d863          	bge	a5,t1,194de <__subtf3+0x9dc>
   19492:	c602                	sw	zero,12(sp)
   19494:	c402                	sw	zero,8(sp)
   19496:	c202                	sw	zero,4(sp)
   19498:	4685                	li	a3,1
   1949a:	a8cd                	j	1958c <__subtf3+0xa8a>
   1949c:	6721                	lui	a4,0x8
   1949e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   194a0:	02ea9563          	bne	s5,a4,194ca <__subtf3+0x9c8>
   194a4:	016be7b3          	or	a5,s7,s6
   194a8:	0187e7b3          	or	a5,a5,s8
   194ac:	8fc5                	or	a5,a5,s1
   194ae:	4401                	li	s0,0
   194b0:	c799                	beqz	a5,194be <__subtf3+0x9bc>
   194b2:	012c5413          	srli	s0,s8,0x12
   194b6:	00144413          	xori	s0,s0,1
   194ba:	8805                	andi	s0,s0,1
   194bc:	0412                	slli	s0,s0,0x4
   194be:	d026                	sw	s1,32(sp)
   194c0:	d25e                	sw	s7,36(sp)
   194c2:	d45a                	sw	s6,40(sp)
   194c4:	d662                	sw	s8,44(sp)
   194c6:	87d6                	mv	a5,s5
   194c8:	b7a5                	j	19430 <__subtf3+0x92e>
   194ca:	4732                	lw	a4,12(sp)
   194cc:	000806b7          	lui	a3,0x80
   194d0:	8f55                	or	a4,a4,a3
   194d2:	c63a                	sw	a4,12(sp)
   194d4:	07400713          	li	a4,116
   194d8:	faf74de3          	blt	a4,a5,19492 <__subtf3+0x990>
   194dc:	833e                	mv	t1,a5
   194de:	02000793          	li	a5,32
   194e2:	02f347b3          	div	a5,t1,a5
   194e6:	86ae                	mv	a3,a1
   194e8:	4401                	li	s0,0
   194ea:	4701                	li	a4,0
   194ec:	02f74663          	blt	a4,a5,19518 <__subtf3+0xa16>
   194f0:	470d                	li	a4,3
   194f2:	01f37813          	andi	a6,t1,31
   194f6:	8f1d                	sub	a4,a4,a5
   194f8:	00279613          	slli	a2,a5,0x2
   194fc:	02081363          	bnez	a6,19522 <__subtf3+0xa20>
   19500:	00c586b3          	add	a3,a1,a2
   19504:	4294                	lw	a3,0(a3)
   19506:	0805                	addi	a6,a6,1
   19508:	c194                	sw	a3,0(a1)
   1950a:	0591                	addi	a1,a1,4
   1950c:	ff075ae3          	bge	a4,a6,19500 <__subtf3+0x9fe>
   19510:	4711                	li	a4,4
   19512:	40f707b3          	sub	a5,a4,a5
   19516:	a899                	j	1956c <__subtf3+0xa6a>
   19518:	4290                	lw	a2,0(a3)
   1951a:	0705                	addi	a4,a4,1
   1951c:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   1951e:	8c51                	or	s0,s0,a2
   19520:	b7f1                	j	194ec <__subtf3+0x9ea>
   19522:	02000693          	li	a3,32
   19526:	02d36333          	rem	t1,t1,a3
   1952a:	40668333          	sub	t1,a3,t1
   1952e:	86be                	mv	a3,a5
   19530:	0007d363          	bgez	a5,19536 <__subtf3+0xa34>
   19534:	4681                	li	a3,0
   19536:	068a                	slli	a3,a3,0x2
   19538:	04068693          	addi	a3,a3,64
   1953c:	968a                	add	a3,a3,sp
   1953e:	fc06a683          	lw	a3,-64(a3)
   19542:	95b2                	add	a1,a1,a2
   19544:	4881                	li	a7,0
   19546:	006696b3          	sll	a3,a3,t1
   1954a:	8c55                	or	s0,s0,a3
   1954c:	40c00633          	neg	a2,a2
   19550:	08e8c663          	blt	a7,a4,195dc <__subtf3+0xada>
   19554:	4691                	li	a3,4
   19556:	40f687b3          	sub	a5,a3,a5
   1955a:	46b2                	lw	a3,12(sp)
   1955c:	070a                	slli	a4,a4,0x2
   1955e:	04070713          	addi	a4,a4,64
   19562:	970a                	add	a4,a4,sp
   19564:	0106d6b3          	srl	a3,a3,a6
   19568:	fcd72023          	sw	a3,-64(a4)
   1956c:	0057a713          	slti	a4,a5,5
   19570:	4601                	li	a2,0
   19572:	c701                	beqz	a4,1957a <__subtf3+0xa78>
   19574:	4611                	li	a2,4
   19576:	8e1d                	sub	a2,a2,a5
   19578:	060a                	slli	a2,a2,0x2
   1957a:	078a                	slli	a5,a5,0x2
   1957c:	953e                	add	a0,a0,a5
   1957e:	4581                	li	a1,0
   19580:	e78f70ef          	jal	10bf8 <memset>
   19584:	4782                	lw	a5,0(sp)
   19586:	008036b3          	snez	a3,s0
   1958a:	8edd                	or	a3,a3,a5
   1958c:	4712                	lw	a4,4(sp)
   1958e:	c036                	sw	a3,0(sp)
   19590:	40d486b3          	sub	a3,s1,a3
   19594:	40eb8833          	sub	a6,s7,a4
   19598:	00d4b7b3          	sltu	a5,s1,a3
   1959c:	010bb633          	sltu	a2,s7,a6
   195a0:	40f80833          	sub	a6,a6,a5
   195a4:	4781                	li	a5,0
   195a6:	00d4f663          	bgeu	s1,a3,195b2 <__subtf3+0xab0>
   195aa:	41770733          	sub	a4,a4,s7
   195ae:	00173793          	seqz	a5,a4
   195b2:	4722                	lw	a4,8(sp)
   195b4:	8fd1                	or	a5,a5,a2
   195b6:	4601                	li	a2,0
   195b8:	40eb05b3          	sub	a1,s6,a4
   195bc:	00bb3533          	sltu	a0,s6,a1
   195c0:	8d9d                	sub	a1,a1,a5
   195c2:	c789                	beqz	a5,195cc <__subtf3+0xaca>
   195c4:	41670733          	sub	a4,a4,s6
   195c8:	00173613          	seqz	a2,a4
   195cc:	4732                	lw	a4,12(sp)
   195ce:	8e49                	or	a2,a2,a0
   195d0:	87d6                	mv	a5,s5
   195d2:	40ec0733          	sub	a4,s8,a4
   195d6:	8f11                	sub	a4,a4,a2
   195d8:	89e6                	mv	s3,s9
   195da:	b3f9                	j	193a8 <__subtf3+0x8a6>
   195dc:	4194                	lw	a3,0(a1)
   195de:	0045ae03          	lw	t3,4(a1)
   195e2:	00c58eb3          	add	t4,a1,a2
   195e6:	0106d6b3          	srl	a3,a3,a6
   195ea:	006e1e33          	sll	t3,t3,t1
   195ee:	01c6e6b3          	or	a3,a3,t3
   195f2:	00dea023          	sw	a3,0(t4)
   195f6:	0885                	addi	a7,a7,1
   195f8:	0591                	addi	a1,a1,4
   195fa:	bf99                	j	19550 <__subtf3+0xa4e>
   195fc:	00140693          	addi	a3,s0,1
   19600:	01169813          	slli	a6,a3,0x11
   19604:	01285813          	srli	a6,a6,0x12
   19608:	4612                	lw	a2,4(sp)
   1960a:	45a2                	lw	a1,8(sp)
   1960c:	4532                	lw	a0,12(sp)
   1960e:	18081363          	bnez	a6,19794 <__subtf3+0xc92>
   19612:	016be7b3          	or	a5,s7,s6
   19616:	00b666b3          	or	a3,a2,a1
   1961a:	0187e7b3          	or	a5,a5,s8
   1961e:	8ec9                	or	a3,a3,a0
   19620:	8fc5                	or	a5,a5,s1
   19622:	8ed9                	or	a3,a3,a4
   19624:	e869                	bnez	s0,196f6 <__subtf3+0xbf4>
   19626:	ea99                	bnez	a3,1963c <__subtf3+0xb3a>
   19628:	d026                	sw	s1,32(sp)
   1962a:	d25e                	sw	s7,36(sp)
   1962c:	d45a                	sw	s6,40(sp)
   1962e:	d662                	sw	s8,44(sp)
   19630:	ebcd                	bnez	a5,196e2 <__subtf3+0xbe0>
   19632:	ffea0993          	addi	s3,s4,-2
   19636:	0019b993          	seqz	s3,s3
   1963a:	b429                	j	19044 <__subtf3+0x542>
   1963c:	e791                	bnez	a5,19648 <__subtf3+0xb46>
   1963e:	d03a                	sw	a4,32(sp)
   19640:	d232                	sw	a2,36(sp)
   19642:	d42e                	sw	a1,40(sp)
   19644:	d62a                	sw	a0,44(sp)
   19646:	bafd                	j	19044 <__subtf3+0x542>
   19648:	409707b3          	sub	a5,a4,s1
   1964c:	41760e33          	sub	t3,a2,s7
   19650:	00f73833          	sltu	a6,a4,a5
   19654:	01c638b3          	sltu	a7,a2,t3
   19658:	410e0833          	sub	a6,t3,a6
   1965c:	4681                	li	a3,0
   1965e:	00f77463          	bgeu	a4,a5,19666 <__subtf3+0xb64>
   19662:	001e3693          	seqz	a3,t3
   19666:	0116e6b3          	or	a3,a3,a7
   1966a:	416588b3          	sub	a7,a1,s6
   1966e:	0115bf33          	sltu	t5,a1,a7
   19672:	40d88eb3          	sub	t4,a7,a3
   19676:	4301                	li	t1,0
   19678:	c299                	beqz	a3,1967e <__subtf3+0xb7c>
   1967a:	0018b313          	seqz	t1,a7
   1967e:	01e36333          	or	t1,t1,t5
   19682:	418506b3          	sub	a3,a0,s8
   19686:	406686b3          	sub	a3,a3,t1
   1968a:	d636                	sw	a3,44(sp)
   1968c:	d476                	sw	t4,40(sp)
   1968e:	d242                	sw	a6,36(sp)
   19690:	d03e                	sw	a5,32(sp)
   19692:	00c69313          	slli	t1,a3,0xc
   19696:	04035863          	bgez	t1,196e6 <__subtf3+0xbe4>
   1969a:	40e48733          	sub	a4,s1,a4
   1969e:	40cb8633          	sub	a2,s7,a2
   196a2:	00e4b7b3          	sltu	a5,s1,a4
   196a6:	00cbbbb3          	sltu	s7,s7,a2
   196aa:	8e1d                	sub	a2,a2,a5
   196ac:	4781                	li	a5,0
   196ae:	00e4f463          	bgeu	s1,a4,196b6 <__subtf3+0xbb4>
   196b2:	001e3793          	seqz	a5,t3
   196b6:	40bb05b3          	sub	a1,s6,a1
   196ba:	0177ebb3          	or	s7,a5,s7
   196be:	00bb3b33          	sltu	s6,s6,a1
   196c2:	417585b3          	sub	a1,a1,s7
   196c6:	000b8463          	beqz	s7,196ce <__subtf3+0xbcc>
   196ca:	0018b413          	seqz	s0,a7
   196ce:	40ac0533          	sub	a0,s8,a0
   196d2:	01646b33          	or	s6,s0,s6
   196d6:	41650533          	sub	a0,a0,s6
   196da:	d62a                	sw	a0,44(sp)
   196dc:	d42e                	sw	a1,40(sp)
   196de:	d232                	sw	a2,36(sp)
   196e0:	d03a                	sw	a4,32(sp)
   196e2:	89e6                	mv	s3,s9
   196e4:	b285                	j	19044 <__subtf3+0x542>
   196e6:	0107e7b3          	or	a5,a5,a6
   196ea:	01d7e7b3          	or	a5,a5,t4
   196ee:	8fd5                	or	a5,a5,a3
   196f0:	94079ae3          	bnez	a5,19044 <__subtf3+0x542>
   196f4:	bf3d                	j	19632 <__subtf3+0xb30>
   196f6:	6821                	lui	a6,0x8
   196f8:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   196fa:	03041263          	bne	s0,a6,1971e <__subtf3+0xc1c>
   196fe:	4c068f63          	beqz	a3,19bdc <__subtf3+0x10da>
   19702:	01255413          	srli	s0,a0,0x12
   19706:	00144413          	xori	s0,s0,1
   1970a:	8805                	andi	s0,s0,1
   1970c:	0412                	slli	s0,s0,0x4
   1970e:	010a8b63          	beq	s5,a6,19724 <__subtf3+0xc22>
   19712:	ebb1                	bnez	a5,19766 <__subtf3+0xc64>
   19714:	d03a                	sw	a4,32(sp)
   19716:	d232                	sw	a2,36(sp)
   19718:	d42e                	sw	a1,40(sp)
   1971a:	d62a                	sw	a0,44(sp)
   1971c:	b2cd                	j	190fe <__subtf3+0x5fc>
   1971e:	4401                	li	s0,0
   19720:	010a9363          	bne	s5,a6,19726 <__subtf3+0xc24>
   19724:	eb9d                	bnez	a5,1975a <__subtf3+0xc58>
   19726:	f6f5                	bnez	a3,19712 <__subtf3+0xc10>
   19728:	e3a5                	bnez	a5,19788 <__subtf3+0xc86>
   1972a:	67a1                	lui	a5,0x8
   1972c:	d63e                	sw	a5,44(sp)
   1972e:	d402                	sw	zero,40(sp)
   19730:	d202                	sw	zero,36(sp)
   19732:	d002                	sw	zero,32(sp)
   19734:	101c                	addi	a5,sp,32
   19736:	0850                	addi	a2,sp,20
   19738:	47d8                	lw	a4,12(a5)
   1973a:	4794                	lw	a3,8(a5)
   1973c:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1973e:	070e                	slli	a4,a4,0x3
   19740:	82f5                	srli	a3,a3,0x1d
   19742:	8f55                	or	a4,a4,a3
   19744:	cb98                	sw	a4,16(a5)
   19746:	fef619e3          	bne	a2,a5,19738 <__subtf3+0xc36>
   1974a:	67a1                	lui	a5,0x8
   1974c:	4981                	li	s3,0
   1974e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19750:	4441                	li	s0,16
   19752:	f2cff06f          	j	18e7e <__subtf3+0x37c>
   19756:	4401                	li	s0,0
   19758:	b7f1                	j	19724 <__subtf3+0xc22>
   1975a:	00dc1813          	slli	a6,s8,0xd
   1975e:	fc0844e3          	bltz	a6,19726 <__subtf3+0xc24>
   19762:	4441                	li	s0,16
   19764:	c295                	beqz	a3,19788 <__subtf3+0xc86>
   19766:	67a1                	lui	a5,0x8
   19768:	d63e                	sw	a5,44(sp)
   1976a:	d402                	sw	zero,40(sp)
   1976c:	d202                	sw	zero,36(sp)
   1976e:	d002                	sw	zero,32(sp)
   19770:	101c                	addi	a5,sp,32
   19772:	0850                	addi	a2,sp,20
   19774:	47d8                	lw	a4,12(a5)
   19776:	4794                	lw	a3,8(a5)
   19778:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1977a:	070e                	slli	a4,a4,0x3
   1977c:	82f5                	srli	a3,a3,0x1d
   1977e:	8f55                	or	a4,a4,a3
   19780:	cb98                	sw	a4,16(a5)
   19782:	fef619e3          	bne	a2,a5,19774 <__subtf3+0xc72>
   19786:	ba5d                	j	1913c <__subtf3+0x63a>
   19788:	d026                	sw	s1,32(sp)
   1978a:	d25e                	sw	s7,36(sp)
   1978c:	d45a                	sw	s6,40(sp)
   1978e:	d662                	sw	s8,44(sp)
   19790:	89e6                	mv	s3,s9
   19792:	b2b5                	j	190fe <__subtf3+0x5fc>
   19794:	409706b3          	sub	a3,a4,s1
   19798:	41760e33          	sub	t3,a2,s7
   1979c:	00d73eb3          	sltu	t4,a4,a3
   197a0:	01c638b3          	sltu	a7,a2,t3
   197a4:	41de0eb3          	sub	t4,t3,t4
   197a8:	4801                	li	a6,0
   197aa:	00d77463          	bgeu	a4,a3,197b2 <__subtf3+0xcb0>
   197ae:	001e3813          	seqz	a6,t3
   197b2:	01186833          	or	a6,a6,a7
   197b6:	416588b3          	sub	a7,a1,s6
   197ba:	0115bf33          	sltu	t5,a1,a7
   197be:	41088fb3          	sub	t6,a7,a6
   197c2:	4301                	li	t1,0
   197c4:	00080463          	beqz	a6,197cc <__subtf3+0xcca>
   197c8:	0018b313          	seqz	t1,a7
   197cc:	01e36333          	or	t1,t1,t5
   197d0:	41850833          	sub	a6,a0,s8
   197d4:	40680833          	sub	a6,a6,t1
   197d8:	d642                	sw	a6,44(sp)
   197da:	d47e                	sw	t6,40(sp)
   197dc:	d276                	sw	t4,36(sp)
   197de:	d036                	sw	a3,32(sp)
   197e0:	00c81313          	slli	t1,a6,0xc
   197e4:	10035163          	bgez	t1,198e6 <__subtf3+0xde4>
   197e8:	40e48733          	sub	a4,s1,a4
   197ec:	40cb8633          	sub	a2,s7,a2
   197f0:	00e4b6b3          	sltu	a3,s1,a4
   197f4:	00cbbbb3          	sltu	s7,s7,a2
   197f8:	8e15                	sub	a2,a2,a3
   197fa:	4681                	li	a3,0
   197fc:	00e4f463          	bgeu	s1,a4,19804 <__subtf3+0xd02>
   19800:	001e3693          	seqz	a3,t3
   19804:	40bb05b3          	sub	a1,s6,a1
   19808:	0176ebb3          	or	s7,a3,s7
   1980c:	00bb3b33          	sltu	s6,s6,a1
   19810:	417585b3          	sub	a1,a1,s7
   19814:	000b8463          	beqz	s7,1981c <__subtf3+0xd1a>
   19818:	0018b793          	seqz	a5,a7
   1981c:	40ac0533          	sub	a0,s8,a0
   19820:	0167eb33          	or	s6,a5,s6
   19824:	41650533          	sub	a0,a0,s6
   19828:	d62a                	sw	a0,44(sp)
   1982a:	d42e                	sw	a1,40(sp)
   1982c:	d232                	sw	a2,36(sp)
   1982e:	d03a                	sw	a4,32(sp)
   19830:	89e6                	mv	s3,s9
   19832:	5532                	lw	a0,44(sp)
   19834:	c169                	beqz	a0,198f6 <__subtf3+0xdf4>
   19836:	7dc000ef          	jal	1a012 <__clzsi2>
   1983a:	ff450793          	addi	a5,a0,-12
   1983e:	02000693          	li	a3,32
   19842:	01f7f813          	andi	a6,a5,31
   19846:	02d7c733          	div	a4,a5,a3
   1984a:	0c080763          	beqz	a6,19918 <__subtf3+0xe16>
   1984e:	02010313          	addi	t1,sp,32
   19852:	02d7e633          	rem	a2,a5,a3
   19856:	40c685b3          	sub	a1,a3,a2
   1985a:	5671                	li	a2,-4
   1985c:	02c70633          	mul	a2,a4,a2
   19860:	00c60693          	addi	a3,a2,12
   19864:	969a                	add	a3,a3,t1
   19866:	40c00633          	neg	a2,a2
   1986a:	0cd31763          	bne	t1,a3,19938 <__subtf3+0xe36>
   1986e:	5602                	lw	a2,32(sp)
   19870:	fff70693          	addi	a3,a4,-1
   19874:	070a                	slli	a4,a4,0x2
   19876:	04070713          	addi	a4,a4,64
   1987a:	970a                	add	a4,a4,sp
   1987c:	01061633          	sll	a2,a2,a6
   19880:	fec72023          	sw	a2,-32(a4)
   19884:	00168713          	addi	a4,a3,1
   19888:	070a                	slli	a4,a4,0x2
   1988a:	1014                	addi	a3,sp,32
   1988c:	4621                	li	a2,8
   1988e:	88b6                	mv	a7,a3
   19890:	00c76863          	bltu	a4,a2,198a0 <__subtf3+0xd9e>
   19894:	0006a023          	sw	zero,0(a3)
   19898:	0006a223          	sw	zero,4(a3)
   1989c:	1761                	addi	a4,a4,-8
   1989e:	1034                	addi	a3,sp,40
   198a0:	4611                	li	a2,4
   198a2:	00c76463          	bltu	a4,a2,198aa <__subtf3+0xda8>
   198a6:	0006a023          	sw	zero,0(a3)
   198aa:	1487c863          	blt	a5,s0,199fa <__subtf3+0xef8>
   198ae:	8f81                	sub	a5,a5,s0
   198b0:	0785                	addi	a5,a5,1
   198b2:	4057d713          	srai	a4,a5,0x5
   198b6:	85c6                	mv	a1,a7
   198b8:	8bfd                	andi	a5,a5,31
   198ba:	8646                	mv	a2,a7
   198bc:	4301                	li	t1,0
   198be:	4681                	li	a3,0
   198c0:	08e69b63          	bne	a3,a4,19956 <__subtf3+0xe54>
   198c4:	468d                	li	a3,3
   198c6:	8e99                	sub	a3,a3,a4
   198c8:	00271613          	slli	a2,a4,0x2
   198cc:	ebd9                	bnez	a5,19962 <__subtf3+0xe60>
   198ce:	00c58533          	add	a0,a1,a2
   198d2:	4108                	lw	a0,0(a0)
   198d4:	0785                	addi	a5,a5,1
   198d6:	c188                	sw	a0,0(a1)
   198d8:	0591                	addi	a1,a1,4
   198da:	fef6dae3          	bge	a3,a5,198ce <__subtf3+0xdcc>
   198de:	4791                	li	a5,4
   198e0:	40e78733          	sub	a4,a5,a4
   198e4:	a87d                	j	199a2 <__subtf3+0xea0>
   198e6:	01d6e6b3          	or	a3,a3,t4
   198ea:	01f6e6b3          	or	a3,a3,t6
   198ee:	0106e6b3          	or	a3,a3,a6
   198f2:	f2a1                	bnez	a3,19832 <__subtf3+0xd30>
   198f4:	bb3d                	j	19632 <__subtf3+0xb30>
   198f6:	5522                	lw	a0,40(sp)
   198f8:	c509                	beqz	a0,19902 <__subtf3+0xe00>
   198fa:	2f21                	jal	1a012 <__clzsi2>
   198fc:	02050513          	addi	a0,a0,32
   19900:	bf2d                	j	1983a <__subtf3+0xd38>
   19902:	5512                	lw	a0,36(sp)
   19904:	c509                	beqz	a0,1990e <__subtf3+0xe0c>
   19906:	2731                	jal	1a012 <__clzsi2>
   19908:	04050513          	addi	a0,a0,64
   1990c:	b73d                	j	1983a <__subtf3+0xd38>
   1990e:	5502                	lw	a0,32(sp)
   19910:	2709                	jal	1a012 <__clzsi2>
   19912:	06050513          	addi	a0,a0,96
   19916:	b715                	j	1983a <__subtf3+0xd38>
   19918:	55f1                	li	a1,-4
   1991a:	02b705b3          	mul	a1,a4,a1
   1991e:	1074                	addi	a3,sp,44
   19920:	460d                	li	a2,3
   19922:	00b68533          	add	a0,a3,a1
   19926:	4108                	lw	a0,0(a0)
   19928:	167d                	addi	a2,a2,-1
   1992a:	16f1                	addi	a3,a3,-4
   1992c:	c2c8                	sw	a0,4(a3)
   1992e:	fee65ae3          	bge	a2,a4,19922 <__subtf3+0xe20>
   19932:	fff70693          	addi	a3,a4,-1
   19936:	b7b9                	j	19884 <__subtf3+0xd82>
   19938:	4288                	lw	a0,0(a3)
   1993a:	ffc6a883          	lw	a7,-4(a3)
   1993e:	00c68e33          	add	t3,a3,a2
   19942:	01051533          	sll	a0,a0,a6
   19946:	00b8d8b3          	srl	a7,a7,a1
   1994a:	01156533          	or	a0,a0,a7
   1994e:	00ae2023          	sw	a0,0(t3)
   19952:	16f1                	addi	a3,a3,-4
   19954:	bf19                	j	1986a <__subtf3+0xd68>
   19956:	4208                	lw	a0,0(a2)
   19958:	0685                	addi	a3,a3,1
   1995a:	0611                	addi	a2,a2,4
   1995c:	00a36333          	or	t1,t1,a0
   19960:	b785                	j	198c0 <__subtf3+0xdbe>
   19962:	04060593          	addi	a1,a2,64
   19966:	958a                	add	a1,a1,sp
   19968:	fe05a583          	lw	a1,-32(a1)
   1996c:	02000813          	li	a6,32
   19970:	40f80833          	sub	a6,a6,a5
   19974:	010595b3          	sll	a1,a1,a6
   19978:	00b36333          	or	t1,t1,a1
   1997c:	4e01                	li	t3,0
   1997e:	00c885b3          	add	a1,a7,a2
   19982:	40c00633          	neg	a2,a2
   19986:	04de4a63          	blt	t3,a3,199da <__subtf3+0xed8>
   1998a:	4611                	li	a2,4
   1998c:	40e60733          	sub	a4,a2,a4
   19990:	5632                	lw	a2,44(sp)
   19992:	068a                	slli	a3,a3,0x2
   19994:	04068693          	addi	a3,a3,64
   19998:	968a                	add	a3,a3,sp
   1999a:	00f657b3          	srl	a5,a2,a5
   1999e:	fef6a023          	sw	a5,-32(a3)
   199a2:	4691                	li	a3,4
   199a4:	8e99                	sub	a3,a3,a4
   199a6:	070a                	slli	a4,a4,0x2
   199a8:	00e887b3          	add	a5,a7,a4
   199ac:	00269713          	slli	a4,a3,0x2
   199b0:	46a1                	li	a3,8
   199b2:	00d76863          	bltu	a4,a3,199c2 <__subtf3+0xec0>
   199b6:	0007a023          	sw	zero,0(a5)
   199ba:	0007a223          	sw	zero,4(a5)
   199be:	1761                	addi	a4,a4,-8
   199c0:	07a1                	addi	a5,a5,8
   199c2:	4691                	li	a3,4
   199c4:	00d76463          	bltu	a4,a3,199cc <__subtf3+0xeca>
   199c8:	0007a023          	sw	zero,0(a5)
   199cc:	5702                	lw	a4,32(sp)
   199ce:	006037b3          	snez	a5,t1
   199d2:	8fd9                	or	a5,a5,a4
   199d4:	d03e                	sw	a5,32(sp)
   199d6:	e6eff06f          	j	19044 <__subtf3+0x542>
   199da:	4188                	lw	a0,0(a1)
   199dc:	0045ae83          	lw	t4,4(a1)
   199e0:	00c58f33          	add	t5,a1,a2
   199e4:	00f55533          	srl	a0,a0,a5
   199e8:	010e9eb3          	sll	t4,t4,a6
   199ec:	01d56533          	or	a0,a0,t4
   199f0:	00af2023          	sw	a0,0(t5)
   199f4:	0e05                	addi	t3,t3,1
   199f6:	0591                	addi	a1,a1,4
   199f8:	b779                	j	19986 <__subtf3+0xe84>
   199fa:	5732                	lw	a4,44(sp)
   199fc:	fff806b7          	lui	a3,0xfff80
   19a00:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19a02:	8f75                	and	a4,a4,a3
   19a04:	40f407b3          	sub	a5,s0,a5
   19a08:	d63a                	sw	a4,44(sp)
   19a0a:	f8aff06f          	j	19194 <__subtf3+0x692>
   19a0e:	da2e                	sw	a1,52(sp)
   19a10:	d83e                	sw	a5,48(sp)
   19a12:	dc32                	sw	a2,56(sp)
   19a14:	de36                	sw	a3,60(sp)
   19a16:	1818                	addi	a4,sp,48
   19a18:	104c                	addi	a1,sp,36
   19a1a:	4754                	lw	a3,12(a4)
   19a1c:	4710                	lw	a2,8(a4)
   19a1e:	1771                	addi	a4,a4,-4
   19a20:	0686                	slli	a3,a3,0x1
   19a22:	827d                	srli	a2,a2,0x1f
   19a24:	8ed1                	or	a3,a3,a2
   19a26:	cb14                	sw	a3,16(a4)
   19a28:	fee599e3          	bne	a1,a4,19a1a <__subtf3+0xf18>
   19a2c:	0786                	slli	a5,a5,0x1
   19a2e:	0077f713          	andi	a4,a5,7
   19a32:	4401                	li	s0,0
   19a34:	cf0d                	beqz	a4,19a6e <__subtf3+0xf6c>
   19a36:	4709                	li	a4,2
   19a38:	56f2                	lw	a3,60(sp)
   19a3a:	14ea0463          	beq	s4,a4,19b82 <__subtf3+0x1080>
   19a3e:	470d                	li	a4,3
   19a40:	12ea0b63          	beq	s4,a4,19b76 <__subtf3+0x1074>
   19a44:	020a1463          	bnez	s4,19a6c <__subtf3+0xf6a>
   19a48:	00f7f713          	andi	a4,a5,15
   19a4c:	4611                	li	a2,4
   19a4e:	00c70f63          	beq	a4,a2,19a6c <__subtf3+0xf6a>
   19a52:	0791                	addi	a5,a5,4
   19a54:	0047b793          	sltiu	a5,a5,4
   19a58:	5752                	lw	a4,52(sp)
   19a5a:	973e                	add	a4,a4,a5
   19a5c:	00f73733          	sltu	a4,a4,a5
   19a60:	57e2                	lw	a5,56(sp)
   19a62:	97ba                	add	a5,a5,a4
   19a64:	00e7b7b3          	sltu	a5,a5,a4
   19a68:	97b6                	add	a5,a5,a3
   19a6a:	de3e                	sw	a5,60(sp)
   19a6c:	4405                	li	s0,1
   19a6e:	56f2                	lw	a3,60(sp)
   19a70:	4781                	li	a5,0
   19a72:	82d1                	srli	a3,a3,0x14
   19a74:	0016c693          	xori	a3,a3,1
   19a78:	8a85                	andi	a3,a3,1
   19a7a:	5702                	lw	a4,32(sp)
   19a7c:	00777613          	andi	a2,a4,7
   19a80:	c229                	beqz	a2,19ac2 <__subtf3+0xfc0>
   19a82:	4589                	li	a1,2
   19a84:	5632                	lw	a2,44(sp)
   19a86:	10ba0863          	beq	s4,a1,19b96 <__subtf3+0x1094>
   19a8a:	458d                	li	a1,3
   19a8c:	0eba0e63          	beq	s4,a1,19b88 <__subtf3+0x1086>
   19a90:	020a1763          	bnez	s4,19abe <__subtf3+0xfbc>
   19a94:	00f77593          	andi	a1,a4,15
   19a98:	4511                	li	a0,4
   19a9a:	02a58263          	beq	a1,a0,19abe <__subtf3+0xfbc>
   19a9e:	0711                	addi	a4,a4,4
   19aa0:	d03a                	sw	a4,32(sp)
   19aa2:	00473713          	sltiu	a4,a4,4
   19aa6:	5592                	lw	a1,36(sp)
   19aa8:	972e                	add	a4,a4,a1
   19aaa:	d23a                	sw	a4,36(sp)
   19aac:	00b73733          	sltu	a4,a4,a1
   19ab0:	55a2                	lw	a1,40(sp)
   19ab2:	972e                	add	a4,a4,a1
   19ab4:	d43a                	sw	a4,40(sp)
   19ab6:	00b73733          	sltu	a4,a4,a1
   19aba:	9732                	add	a4,a4,a2
   19abc:	d63a                	sw	a4,44(sp)
   19abe:	00146413          	ori	s0,s0,1
   19ac2:	c689                	beqz	a3,19acc <__subtf3+0xfca>
   19ac4:	00147713          	andi	a4,s0,1
   19ac8:	0706                	slli	a4,a4,0x1
   19aca:	8c59                	or	s0,s0,a4
   19acc:	5732                	lw	a4,44(sp)
   19ace:	00c71693          	slli	a3,a4,0xc
   19ad2:	0006dc63          	bgez	a3,19aea <__subtf3+0xfe8>
   19ad6:	66a1                	lui	a3,0x8
   19ad8:	0785                	addi	a5,a5,1
   19ada:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19adc:	0cd78063          	beq	a5,a3,19b9c <__subtf3+0x109a>
   19ae0:	fff806b7          	lui	a3,0xfff80
   19ae4:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19ae6:	8f75                	and	a4,a4,a3
   19ae8:	d63a                	sw	a4,44(sp)
   19aea:	1018                	addi	a4,sp,32
   19aec:	106c                	addi	a1,sp,44
   19aee:	4314                	lw	a3,0(a4)
   19af0:	4350                	lw	a2,4(a4)
   19af2:	828d                	srli	a3,a3,0x3
   19af4:	0676                	slli	a2,a2,0x1d
   19af6:	8ed1                	or	a3,a3,a2
   19af8:	c314                	sw	a3,0(a4)
   19afa:	0711                	addi	a4,a4,4
   19afc:	feb719e3          	bne	a4,a1,19aee <__subtf3+0xfec>
   19b00:	56b2                	lw	a3,44(sp)
   19b02:	6621                	lui	a2,0x8
   19b04:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   19b08:	828d                	srli	a3,a3,0x3
   19b0a:	d636                	sw	a3,44(sp)
   19b0c:	00e79e63          	bne	a5,a4,19b28 <__subtf3+0x1026>
   19b10:	5592                	lw	a1,36(sp)
   19b12:	5702                	lw	a4,32(sp)
   19b14:	8f4d                	or	a4,a4,a1
   19b16:	55a2                	lw	a1,40(sp)
   19b18:	8f4d                	or	a4,a4,a1
   19b1a:	8f55                	or	a4,a4,a3
   19b1c:	c711                	beqz	a4,19b28 <__subtf3+0x1026>
   19b1e:	d632                	sw	a2,44(sp)
   19b20:	d402                	sw	zero,40(sp)
   19b22:	d202                	sw	zero,36(sp)
   19b24:	d002                	sw	zero,32(sp)
   19b26:	4981                	li	s3,0
   19b28:	55b2                	lw	a1,44(sp)
   19b2a:	07c6                	slli	a5,a5,0x11
   19b2c:	83c5                	srli	a5,a5,0x11
   19b2e:	09be                	slli	s3,s3,0xf
   19b30:	00f9e9b3          	or	s3,s3,a5
   19b34:	02b11e23          	sh	a1,60(sp)
   19b38:	03311f23          	sh	s3,62(sp)
   19b3c:	5602                	lw	a2,32(sp)
   19b3e:	5692                	lw	a3,36(sp)
   19b40:	5722                	lw	a4,40(sp)
   19b42:	57f2                	lw	a5,60(sp)
   19b44:	c019                	beqz	s0,19b4a <__subtf3+0x1048>
   19b46:	00142073          	csrs	fflags,s0
   19b4a:	50b6                	lw	ra,108(sp)
   19b4c:	5426                	lw	s0,104(sp)
   19b4e:	00c92023          	sw	a2,0(s2)
   19b52:	00d92223          	sw	a3,4(s2)
   19b56:	00e92423          	sw	a4,8(s2)
   19b5a:	00f92623          	sw	a5,12(s2)
   19b5e:	5496                	lw	s1,100(sp)
   19b60:	49f6                	lw	s3,92(sp)
   19b62:	4a66                	lw	s4,88(sp)
   19b64:	4ad6                	lw	s5,84(sp)
   19b66:	4b46                	lw	s6,80(sp)
   19b68:	4bb6                	lw	s7,76(sp)
   19b6a:	4c26                	lw	s8,72(sp)
   19b6c:	4c96                	lw	s9,68(sp)
   19b6e:	854a                	mv	a0,s2
   19b70:	5906                	lw	s2,96(sp)
   19b72:	6165                	addi	sp,sp,112
   19b74:	8082                	ret
   19b76:	ee099be3          	bnez	s3,19a6c <__subtf3+0xf6a>
   19b7a:	07a1                	addi	a5,a5,8
   19b7c:	0087b793          	sltiu	a5,a5,8
   19b80:	bde1                	j	19a58 <__subtf3+0xf56>
   19b82:	ee0985e3          	beqz	s3,19a6c <__subtf3+0xf6a>
   19b86:	bfd5                	j	19b7a <__subtf3+0x1078>
   19b88:	f2099be3          	bnez	s3,19abe <__subtf3+0xfbc>
   19b8c:	0721                	addi	a4,a4,8
   19b8e:	d03a                	sw	a4,32(sp)
   19b90:	00873713          	sltiu	a4,a4,8
   19b94:	bf09                	j	19aa6 <__subtf3+0xfa4>
   19b96:	f20984e3          	beqz	s3,19abe <__subtf3+0xfbc>
   19b9a:	bfcd                	j	19b8c <__subtf3+0x108a>
   19b9c:	4701                	li	a4,0
   19b9e:	020a0063          	beqz	s4,19bbe <__subtf3+0x10bc>
   19ba2:	468d                	li	a3,3
   19ba4:	00da1863          	bne	s4,a3,19bb4 <__subtf3+0x10b2>
   19ba8:	00098b63          	beqz	s3,19bbe <__subtf3+0x10bc>
   19bac:	67a1                	lui	a5,0x8
   19bae:	577d                	li	a4,-1
   19bb0:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   19bb2:	a031                	j	19bbe <__subtf3+0x10bc>
   19bb4:	4689                	li	a3,2
   19bb6:	feda1be3          	bne	s4,a3,19bac <__subtf3+0x10aa>
   19bba:	fe0989e3          	beqz	s3,19bac <__subtf3+0x10aa>
   19bbe:	d63a                	sw	a4,44(sp)
   19bc0:	d43a                	sw	a4,40(sp)
   19bc2:	d23a                	sw	a4,36(sp)
   19bc4:	d03a                	sw	a4,32(sp)
   19bc6:	00546413          	ori	s0,s0,5
   19bca:	b705                	j	19aea <__subtf3+0xfe8>
   19bcc:	d636                	sw	a3,44(sp)
   19bce:	c76ff06f          	j	19044 <__subtf3+0x542>
   19bd2:	d68a8763          	beq	s5,s0,19140 <__subtf3+0x63e>
   19bd6:	4401                	li	s0,0
   19bd8:	d16ff06f          	j	190ee <__subtf3+0x5ec>
   19bdc:	b68a8de3          	beq	s5,s0,19756 <__subtf3+0xc54>
   19be0:	4401                	li	s0,0
   19be2:	b699                	j	19728 <__subtf3+0xc26>

00019be4 <__unordtf2>:
   19be4:	4114                	lw	a3,0(a0)
   19be6:	00452f03          	lw	t5,4(a0)
   19bea:	00852e83          	lw	t4,8(a0)
   19bee:	4550                	lw	a2,12(a0)
   19bf0:	419c                	lw	a5,0(a1)
   19bf2:	0045ae03          	lw	t3,4(a1)
   19bf6:	0085a303          	lw	t1,8(a1)
   19bfa:	45d8                	lw	a4,12(a1)
   19bfc:	1141                	addi	sp,sp,-16
   19bfe:	002025f3          	frrm	a1
   19c02:	6521                	lui	a0,0x8
   19c04:	01061813          	slli	a6,a2,0x10
   19c08:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19c0a:	8241                	srli	a2,a2,0x10
   19c0c:	01071593          	slli	a1,a4,0x10
   19c10:	8e69                	and	a2,a2,a0
   19c12:	8341                	srli	a4,a4,0x10
   19c14:	01085813          	srli	a6,a6,0x10
   19c18:	81c1                	srli	a1,a1,0x10
   19c1a:	8f69                	and	a4,a4,a0
   19c1c:	00a61963          	bne	a2,a0,19c2e <__unordtf2+0x4a>
   19c20:	01e6e533          	or	a0,a3,t5
   19c24:	01d56533          	or	a0,a0,t4
   19c28:	01056533          	or	a0,a0,a6
   19c2c:	e51d                	bnez	a0,19c5a <__unordtf2+0x76>
   19c2e:	68a1                	lui	a7,0x8
   19c30:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   19c32:	4501                	li	a0,0
   19c34:	05171c63          	bne	a4,a7,19c8c <__unordtf2+0xa8>
   19c38:	01c7e8b3          	or	a7,a5,t3
   19c3c:	0068e8b3          	or	a7,a7,t1
   19c40:	00b8e8b3          	or	a7,a7,a1
   19c44:	04088463          	beqz	a7,19c8c <__unordtf2+0xa8>
   19c48:	02e61a63          	bne	a2,a4,19c7c <__unordtf2+0x98>
   19c4c:	01e6e6b3          	or	a3,a3,t5
   19c50:	01d6e6b3          	or	a3,a3,t4
   19c54:	0106e6b3          	or	a3,a3,a6
   19c58:	ca99                	beqz	a3,19c6e <__unordtf2+0x8a>
   19c5a:	0842                	slli	a6,a6,0x10
   19c5c:	41085813          	srai	a6,a6,0x10
   19c60:	02085363          	bgez	a6,19c86 <__unordtf2+0xa2>
   19c64:	66a1                	lui	a3,0x8
   19c66:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19c68:	4505                	li	a0,1
   19c6a:	02d71163          	bne	a4,a3,19c8c <__unordtf2+0xa8>
   19c6e:	01c7e7b3          	or	a5,a5,t3
   19c72:	0067e7b3          	or	a5,a5,t1
   19c76:	8fcd                	or	a5,a5,a1
   19c78:	4505                	li	a0,1
   19c7a:	cb89                	beqz	a5,19c8c <__unordtf2+0xa8>
   19c7c:	05c2                	slli	a1,a1,0x10
   19c7e:	85c1                	srai	a1,a1,0x10
   19c80:	4505                	li	a0,1
   19c82:	0005c563          	bltz	a1,19c8c <__unordtf2+0xa8>
   19c86:	00186073          	csrsi	fflags,16
   19c8a:	4505                	li	a0,1
   19c8c:	0141                	addi	sp,sp,16
   19c8e:	8082                	ret

00019c90 <__fixtfsi>:
   19c90:	411c                	lw	a5,0(a0)
   19c92:	00452803          	lw	a6,4(a0)
   19c96:	4518                	lw	a4,8(a0)
   19c98:	4550                	lw	a2,12(a0)
   19c9a:	1101                	addi	sp,sp,-32
   19c9c:	002026f3          	frrm	a3
   19ca0:	01061693          	slli	a3,a2,0x10
   19ca4:	00161593          	slli	a1,a2,0x1
   19ca8:	c632                	sw	a2,12(sp)
   19caa:	01f65893          	srli	a7,a2,0x1f
   19cae:	6611                	lui	a2,0x4
   19cb0:	c03e                	sw	a5,0(sp)
   19cb2:	c242                	sw	a6,4(sp)
   19cb4:	c43a                	sw	a4,8(sp)
   19cb6:	c83e                	sw	a5,16(sp)
   19cb8:	ca42                	sw	a6,20(sp)
   19cba:	cc3a                	sw	a4,24(sp)
   19cbc:	81c5                	srli	a1,a1,0x11
   19cbe:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   19cc0:	82c1                	srli	a3,a3,0x10
   19cc2:	00b64a63          	blt	a2,a1,19cd6 <__fixtfsi+0x46>
   19cc6:	e9f9                	bnez	a1,19d9c <__fixtfsi+0x10c>
   19cc8:	0107e533          	or	a0,a5,a6
   19ccc:	8d59                	or	a0,a0,a4
   19cce:	8d55                	or	a0,a0,a3
   19cd0:	e571                	bnez	a0,19d9c <__fixtfsi+0x10c>
   19cd2:	6105                	addi	sp,sp,32
   19cd4:	8082                	ret
   19cd6:	6511                	lui	a0,0x4
   19cd8:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   19cda:	8646                	mv	a2,a7
   19cdc:	02b55763          	bge	a0,a1,19d0a <__fixtfsi+0x7a>
   19ce0:	0c088163          	beqz	a7,19da2 <__fixtfsi+0x112>
   19ce4:	6511                	lui	a0,0x4
   19ce6:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   19ce8:	0ca59263          	bne	a1,a0,19dac <__fixtfsi+0x11c>
   19cec:	01175593          	srli	a1,a4,0x11
   19cf0:	06be                	slli	a3,a3,0xf
   19cf2:	8ecd                	or	a3,a3,a1
   19cf4:	eec5                	bnez	a3,19dac <__fixtfsi+0x11c>
   19cf6:	0107e7b3          	or	a5,a5,a6
   19cfa:	073e                	slli	a4,a4,0xf
   19cfc:	8f5d                	or	a4,a4,a5
   19cfe:	80000537          	lui	a0,0x80000
   19d02:	db61                	beqz	a4,19cd2 <__fixtfsi+0x42>
   19d04:	00162073          	csrs	fflags,a2
   19d08:	b7e9                	j	19cd2 <__fixtfsi+0x42>
   19d0a:	67c1                	lui	a5,0x10
   19d0c:	8fd5                	or	a5,a5,a3
   19d0e:	6691                	lui	a3,0x4
   19d10:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   19d14:	8e8d                	sub	a3,a3,a1
   19d16:	4056d513          	srai	a0,a3,0x5
   19d1a:	ce3e                	sw	a5,28(sp)
   19d1c:	8afd                	andi	a3,a3,31
   19d1e:	080c                	addi	a1,sp,16
   19d20:	4801                	li	a6,0
   19d22:	4601                	li	a2,0
   19d24:	0005a303          	lw	t1,0(a1)
   19d28:	0605                	addi	a2,a2,1
   19d2a:	0591                	addi	a1,a1,4
   19d2c:	00686833          	or	a6,a6,t1
   19d30:	fec51ae3          	bne	a0,a2,19d24 <__fixtfsi+0x94>
   19d34:	00251613          	slli	a2,a0,0x2
   19d38:	e28d                	bnez	a3,19d5a <__fixtfsi+0xca>
   19d3a:	02060793          	addi	a5,a2,32
   19d3e:	00278633          	add	a2,a5,sp
   19d42:	ff062783          	lw	a5,-16(a2)
   19d46:	c83e                	sw	a5,16(sp)
   19d48:	4542                	lw	a0,16(sp)
   19d4a:	00088463          	beqz	a7,19d52 <__fixtfsi+0xc2>
   19d4e:	40a00533          	neg	a0,a0
   19d52:	4605                	li	a2,1
   19d54:	fa0818e3          	bnez	a6,19d04 <__fixtfsi+0x74>
   19d58:	bfad                	j	19cd2 <__fixtfsi+0x42>
   19d5a:	02060613          	addi	a2,a2,32
   19d5e:	960a                	add	a2,a2,sp
   19d60:	ff062603          	lw	a2,-16(a2)
   19d64:	02000593          	li	a1,32
   19d68:	8d95                	sub	a1,a1,a3
   19d6a:	00b61633          	sll	a2,a2,a1
   19d6e:	4309                	li	t1,2
   19d70:	00c86833          	or	a6,a6,a2
   19d74:	4601                	li	a2,0
   19d76:	00651963          	bne	a0,t1,19d88 <__fixtfsi+0xf8>
   19d7a:	00d75733          	srl	a4,a4,a3
   19d7e:	00b795b3          	sll	a1,a5,a1
   19d82:	8f4d                	or	a4,a4,a1
   19d84:	c83a                	sw	a4,16(sp)
   19d86:	4605                	li	a2,1
   19d88:	060a                	slli	a2,a2,0x2
   19d8a:	02060713          	addi	a4,a2,32
   19d8e:	00270633          	add	a2,a4,sp
   19d92:	00d7d7b3          	srl	a5,a5,a3
   19d96:	fef62823          	sw	a5,-16(a2)
   19d9a:	b77d                	j	19d48 <__fixtfsi+0xb8>
   19d9c:	4605                	li	a2,1
   19d9e:	4501                	li	a0,0
   19da0:	b795                	j	19d04 <__fixtfsi+0x74>
   19da2:	80000537          	lui	a0,0x80000
   19da6:	4641                	li	a2,16
   19da8:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   19daa:	bfa9                	j	19d04 <__fixtfsi+0x74>
   19dac:	4641                	li	a2,16
   19dae:	80000537          	lui	a0,0x80000
   19db2:	bf89                	j	19d04 <__fixtfsi+0x74>

00019db4 <__floatsitf>:
   19db4:	7179                	addi	sp,sp,-48
   19db6:	d226                	sw	s1,36(sp)
   19db8:	d606                	sw	ra,44(sp)
   19dba:	d422                	sw	s0,40(sp)
   19dbc:	d04a                	sw	s2,32(sp)
   19dbe:	84aa                	mv	s1,a0
   19dc0:	cdcd                	beqz	a1,19e7a <__floatsitf+0xc6>
   19dc2:	41f5d793          	srai	a5,a1,0x1f
   19dc6:	00b7c433          	xor	s0,a5,a1
   19dca:	8c1d                	sub	s0,s0,a5
   19dcc:	8522                	mv	a0,s0
   19dce:	01f5d913          	srli	s2,a1,0x1f
   19dd2:	2481                	jal	1a012 <__clzsi2>
   19dd4:	6711                	lui	a4,0x4
   19dd6:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   19dd8:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe45f5>
   19ddc:	40a70633          	sub	a2,a4,a0
   19de0:	c822                	sw	s0,16(sp)
   19de2:	4057d713          	srai	a4,a5,0x5
   19de6:	ca02                	sw	zero,20(sp)
   19de8:	cc02                	sw	zero,24(sp)
   19dea:	ce02                	sw	zero,28(sp)
   19dec:	8bfd                	andi	a5,a5,31
   19dee:	c78d                	beqz	a5,19e18 <__floatsitf+0x64>
   19df0:	4689                	li	a3,2
   19df2:	08d71263          	bne	a4,a3,19e76 <__floatsitf+0xc2>
   19df6:	02000693          	li	a3,32
   19dfa:	8e9d                	sub	a3,a3,a5
   19dfc:	00d456b3          	srl	a3,s0,a3
   19e00:	ce36                	sw	a3,28(sp)
   19e02:	fff70693          	addi	a3,a4,-1
   19e06:	070a                	slli	a4,a4,0x2
   19e08:	02070713          	addi	a4,a4,32
   19e0c:	970a                	add	a4,a4,sp
   19e0e:	00f41433          	sll	s0,s0,a5
   19e12:	fe872823          	sw	s0,-16(a4)
   19e16:	a005                	j	19e36 <__floatsitf+0x82>
   19e18:	478d                	li	a5,3
   19e1a:	8f99                	sub	a5,a5,a4
   19e1c:	078a                	slli	a5,a5,0x2
   19e1e:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   19e22:	978a                	add	a5,a5,sp
   19e24:	ff07a783          	lw	a5,-16(a5)
   19e28:	4689                	li	a3,2
   19e2a:	ce3e                	sw	a5,28(sp)
   19e2c:	4789                	li	a5,2
   19e2e:	00f71463          	bne	a4,a5,19e36 <__floatsitf+0x82>
   19e32:	cc22                	sw	s0,24(sp)
   19e34:	4685                	li	a3,1
   19e36:	068a                	slli	a3,a3,0x2
   19e38:	c802                	sw	zero,16(sp)
   19e3a:	ca02                	sw	zero,20(sp)
   19e3c:	16f1                	addi	a3,a3,-4
   19e3e:	4791                	li	a5,4
   19e40:	00f6e363          	bltu	a3,a5,19e46 <__floatsitf+0x92>
   19e44:	cc02                	sw	zero,24(sp)
   19e46:	85ca                	mv	a1,s2
   19e48:	47f2                	lw	a5,28(sp)
   19e4a:	00f59413          	slli	s0,a1,0xf
   19e4e:	8c51                	or	s0,s0,a2
   19e50:	00811723          	sh	s0,14(sp)
   19e54:	00f11623          	sh	a5,12(sp)
   19e58:	4542                	lw	a0,16(sp)
   19e5a:	46d2                	lw	a3,20(sp)
   19e5c:	4762                	lw	a4,24(sp)
   19e5e:	47b2                	lw	a5,12(sp)
   19e60:	50b2                	lw	ra,44(sp)
   19e62:	5422                	lw	s0,40(sp)
   19e64:	c088                	sw	a0,0(s1)
   19e66:	c0d4                	sw	a3,4(s1)
   19e68:	c498                	sw	a4,8(s1)
   19e6a:	c4dc                	sw	a5,12(s1)
   19e6c:	5902                	lw	s2,32(sp)
   19e6e:	8526                	mv	a0,s1
   19e70:	5492                	lw	s1,36(sp)
   19e72:	6145                	addi	sp,sp,48
   19e74:	8082                	ret
   19e76:	470d                	li	a4,3
   19e78:	b769                	j	19e02 <__floatsitf+0x4e>
   19e7a:	ce02                	sw	zero,28(sp)
   19e7c:	cc02                	sw	zero,24(sp)
   19e7e:	ca02                	sw	zero,20(sp)
   19e80:	c802                	sw	zero,16(sp)
   19e82:	4601                	li	a2,0
   19e84:	b7d1                	j	19e48 <__floatsitf+0x94>

00019e86 <__extenddftf2>:
   19e86:	715d                	addi	sp,sp,-80
   19e88:	a42a                	fsd	fa0,8(sp)
   19e8a:	c2a6                	sw	s1,68(sp)
   19e8c:	c0ca                	sw	s2,64(sp)
   19e8e:	de4e                	sw	s3,60(sp)
   19e90:	4922                	lw	s2,8(sp)
   19e92:	44b2                	lw	s1,12(sp)
   19e94:	c686                	sw	ra,76(sp)
   19e96:	c4a2                	sw	s0,72(sp)
   19e98:	89aa                	mv	s3,a0
   19e9a:	002027f3          	frrm	a5
   19e9e:	0144d413          	srli	s0,s1,0x14
   19ea2:	00c49793          	slli	a5,s1,0xc
   19ea6:	7ff47413          	andi	s0,s0,2047
   19eaa:	83b1                	srli	a5,a5,0xc
   19eac:	00140713          	addi	a4,s0,1
   19eb0:	d04a                	sw	s2,32(sp)
   19eb2:	d23e                	sw	a5,36(sp)
   19eb4:	d602                	sw	zero,44(sp)
   19eb6:	d402                	sw	zero,40(sp)
   19eb8:	7fe77713          	andi	a4,a4,2046
   19ebc:	80fd                	srli	s1,s1,0x1f
   19ebe:	cf39                	beqz	a4,19f1c <__extenddftf2+0x96>
   19ec0:	0047d693          	srli	a3,a5,0x4
   19ec4:	6711                	lui	a4,0x4
   19ec6:	d636                	sw	a3,44(sp)
   19ec8:	07f2                	slli	a5,a5,0x1c
   19eca:	00495693          	srli	a3,s2,0x4
   19ece:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   19ed2:	8fd5                	or	a5,a5,a3
   19ed4:	0972                	slli	s2,s2,0x1c
   19ed6:	9722                	add	a4,a4,s0
   19ed8:	d43e                	sw	a5,40(sp)
   19eda:	d24a                	sw	s2,36(sp)
   19edc:	d002                	sw	zero,32(sp)
   19ede:	4401                	li	s0,0
   19ee0:	57b2                	lw	a5,44(sp)
   19ee2:	04be                	slli	s1,s1,0xf
   19ee4:	8cd9                	or	s1,s1,a4
   19ee6:	00f11e23          	sh	a5,28(sp)
   19eea:	00911f23          	sh	s1,30(sp)
   19eee:	5582                	lw	a1,32(sp)
   19ef0:	5612                	lw	a2,36(sp)
   19ef2:	56a2                	lw	a3,40(sp)
   19ef4:	47f2                	lw	a5,28(sp)
   19ef6:	c019                	beqz	s0,19efc <__extenddftf2+0x76>
   19ef8:	00186073          	csrsi	fflags,16
   19efc:	40b6                	lw	ra,76(sp)
   19efe:	4426                	lw	s0,72(sp)
   19f00:	00b9a023          	sw	a1,0(s3)
   19f04:	00c9a223          	sw	a2,4(s3)
   19f08:	00d9a423          	sw	a3,8(s3)
   19f0c:	00f9a623          	sw	a5,12(s3)
   19f10:	4496                	lw	s1,68(sp)
   19f12:	4906                	lw	s2,64(sp)
   19f14:	854e                	mv	a0,s3
   19f16:	59f2                	lw	s3,60(sp)
   19f18:	6161                	addi	sp,sp,80
   19f1a:	8082                	ret
   19f1c:	0127e533          	or	a0,a5,s2
   19f20:	e069                	bnez	s0,19fe2 <__extenddftf2+0x15c>
   19f22:	4701                	li	a4,0
   19f24:	dd55                	beqz	a0,19ee0 <__extenddftf2+0x5a>
   19f26:	c7a9                	beqz	a5,19f70 <__extenddftf2+0xea>
   19f28:	853e                	mv	a0,a5
   19f2a:	20e5                	jal	1a012 <__clzsi2>
   19f2c:	03150693          	addi	a3,a0,49
   19f30:	4056d793          	srai	a5,a3,0x5
   19f34:	8afd                	andi	a3,a3,31
   19f36:	c2a9                	beqz	a3,19f78 <__extenddftf2+0xf2>
   19f38:	5671                	li	a2,-4
   19f3a:	02c78633          	mul	a2,a5,a2
   19f3e:	02000813          	li	a6,32
   19f42:	02010313          	addi	t1,sp,32
   19f46:	40d80833          	sub	a6,a6,a3
   19f4a:	00c60713          	addi	a4,a2,12
   19f4e:	971a                	add	a4,a4,t1
   19f50:	40c00633          	neg	a2,a2
   19f54:	06e31863          	bne	t1,a4,19fc4 <__extenddftf2+0x13e>
   19f58:	fff78713          	addi	a4,a5,-1
   19f5c:	078a                	slli	a5,a5,0x2
   19f5e:	02078793          	addi	a5,a5,32
   19f62:	0810                	addi	a2,sp,16
   19f64:	97b2                	add	a5,a5,a2
   19f66:	00d916b3          	sll	a3,s2,a3
   19f6a:	fed7a823          	sw	a3,-16(a5)
   19f6e:	a025                	j	19f96 <__extenddftf2+0x110>
   19f70:	204d                	jal	1a012 <__clzsi2>
   19f72:	02050513          	addi	a0,a0,32
   19f76:	bf5d                	j	19f2c <__extenddftf2+0xa6>
   19f78:	5671                	li	a2,-4
   19f7a:	02c78633          	mul	a2,a5,a2
   19f7e:	1078                	addi	a4,sp,44
   19f80:	468d                	li	a3,3
   19f82:	00c705b3          	add	a1,a4,a2
   19f86:	418c                	lw	a1,0(a1)
   19f88:	16fd                	addi	a3,a3,-1
   19f8a:	1771                	addi	a4,a4,-4
   19f8c:	c34c                	sw	a1,4(a4)
   19f8e:	fef6dae3          	bge	a3,a5,19f82 <__extenddftf2+0xfc>
   19f92:	fff78713          	addi	a4,a5,-1
   19f96:	00170793          	addi	a5,a4,1
   19f9a:	078a                	slli	a5,a5,0x2
   19f9c:	46a1                	li	a3,8
   19f9e:	1018                	addi	a4,sp,32
   19fa0:	00d7e863          	bltu	a5,a3,19fb0 <__extenddftf2+0x12a>
   19fa4:	00072023          	sw	zero,0(a4)
   19fa8:	00072223          	sw	zero,4(a4)
   19fac:	17e1                	addi	a5,a5,-8
   19fae:	1038                	addi	a4,sp,40
   19fb0:	4691                	li	a3,4
   19fb2:	00d7e463          	bltu	a5,a3,19fba <__extenddftf2+0x134>
   19fb6:	00072023          	sw	zero,0(a4)
   19fba:	6711                	lui	a4,0x4
   19fbc:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   19fc0:	8f09                	sub	a4,a4,a0
   19fc2:	bf39                	j	19ee0 <__extenddftf2+0x5a>
   19fc4:	430c                	lw	a1,0(a4)
   19fc6:	ffc72883          	lw	a7,-4(a4)
   19fca:	00c70e33          	add	t3,a4,a2
   19fce:	00d595b3          	sll	a1,a1,a3
   19fd2:	0108d8b3          	srl	a7,a7,a6
   19fd6:	0115e5b3          	or	a1,a1,a7
   19fda:	00be2023          	sw	a1,0(t3)
   19fde:	1771                	addi	a4,a4,-4
   19fe0:	bf95                	j	19f54 <__extenddftf2+0xce>
   19fe2:	c50d                	beqz	a0,1a00c <__extenddftf2+0x186>
   19fe4:	01c79713          	slli	a4,a5,0x1c
   19fe8:	00495693          	srli	a3,s2,0x4
   19fec:	8f55                	or	a4,a4,a3
   19fee:	00080437          	lui	s0,0x80
   19ff2:	0087b433          	sltu	s0,a5,s0
   19ff6:	d43a                	sw	a4,40(sp)
   19ff8:	8391                	srli	a5,a5,0x4
   19ffa:	6721                	lui	a4,0x8
   19ffc:	0972                	slli	s2,s2,0x1c
   19ffe:	8fd9                	or	a5,a5,a4
   1a000:	0412                	slli	s0,s0,0x4
   1a002:	d24a                	sw	s2,36(sp)
   1a004:	d002                	sw	zero,32(sp)
   1a006:	d63e                	sw	a5,44(sp)
   1a008:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a00a:	bdd9                	j	19ee0 <__extenddftf2+0x5a>
   1a00c:	4401                	li	s0,0
   1a00e:	6721                	lui	a4,0x8
   1a010:	bfe5                	j	1a008 <__extenddftf2+0x182>

0001a012 <__clzsi2>:
   1a012:	67c1                	lui	a5,0x10
   1a014:	02f57563          	bgeu	a0,a5,1a03e <__clzsi2+0x2c>
   1a018:	10053793          	sltiu	a5,a0,256
   1a01c:	0017b793          	seqz	a5,a5
   1a020:	078e                	slli	a5,a5,0x3
   1a022:	676d                	lui	a4,0x1b
   1a024:	02000693          	li	a3,32
   1a028:	8e9d                	sub	a3,a3,a5
   1a02a:	00f55533          	srl	a0,a0,a5
   1a02e:	95870793          	addi	a5,a4,-1704 # 1a958 <__clz_tab>
   1a032:	97aa                	add	a5,a5,a0
   1a034:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1a038:	40a68533          	sub	a0,a3,a0
   1a03c:	8082                	ret
   1a03e:	01000737          	lui	a4,0x1000
   1a042:	47e1                	li	a5,24
   1a044:	fce57fe3          	bgeu	a0,a4,1a022 <__clzsi2+0x10>
   1a048:	47c1                	li	a5,16
   1a04a:	bfe1                	j	1a022 <__clzsi2+0x10>
