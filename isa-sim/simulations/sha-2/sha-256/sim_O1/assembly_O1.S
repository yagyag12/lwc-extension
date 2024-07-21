
sim_O1/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	4d1000ef          	jal	10d6e <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	169070ef          	jal	17a14 <_exit>

000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c791                	beqz	a5,100c0 <register_fini+0x10>
   100b6:	6551                	lui	a0,0x14
   100b8:	b8a50513          	addi	a0,a0,-1142 # 13b8a <__libc_fini_array>
   100bc:	5810006f          	j	10e3c <atexit>
   100c0:	8082                	ret

000100c2 <_start>:
   100c2:	0000b197          	auipc	gp,0xb
   100c6:	74e18193          	addi	gp,gp,1870 # 1b810 <__global_pointer$>
   100ca:	f2018513          	addi	a0,gp,-224 # 1b730 <__stdio_exit_handler>
   100ce:	24c18613          	addi	a2,gp,588 # 1ba5c <__BSS_END__>
   100d2:	8e09                	sub	a2,a2,a0
   100d4:	4581                	li	a1,0
   100d6:	38d000ef          	jal	10c62 <memset>
   100da:	00001517          	auipc	a0,0x1
   100de:	d6250513          	addi	a0,a0,-670 # 10e3c <atexit>
   100e2:	c519                	beqz	a0,100f0 <_start+0x2e>
   100e4:	00004517          	auipc	a0,0x4
   100e8:	aa650513          	addi	a0,a0,-1370 # 13b8a <__libc_fini_array>
   100ec:	551000ef          	jal	10e3c <atexit>
   100f0:	309000ef          	jal	10bf8 <__libc_init_array>
   100f4:	4502                	lw	a0,0(sp)
   100f6:	004c                	addi	a1,sp,4
   100f8:	4601                	li	a2,0
   100fa:	22b1                	jal	10246 <main>
   100fc:	bf61                	j	10094 <exit>

000100fe <__do_global_dtors_aux>:
   100fe:	1141                	addi	sp,sp,-16
   10100:	c422                	sw	s0,8(sp)
   10102:	f401c783          	lbu	a5,-192(gp) # 1b750 <completed.1>
   10106:	c606                	sw	ra,12(sp)
   10108:	ef91                	bnez	a5,10124 <__do_global_dtors_aux+0x26>
   1010a:	00000793          	li	a5,0
   1010e:	cb81                	beqz	a5,1011e <__do_global_dtors_aux+0x20>
   10110:	656d                	lui	a0,0x1b
   10112:	00050513          	mv	a0,a0
   10116:	00000097          	auipc	ra,0x0
   1011a:	000000e7          	jalr	zero # 0 <exit-0x10094>
   1011e:	4785                	li	a5,1
   10120:	f4f18023          	sb	a5,-192(gp) # 1b750 <completed.1>
   10124:	40b2                	lw	ra,12(sp)
   10126:	4422                	lw	s0,8(sp)
   10128:	0141                	addi	sp,sp,16
   1012a:	8082                	ret

0001012c <frame_dummy>:
   1012c:	00000793          	li	a5,0
   10130:	cb91                	beqz	a5,10144 <frame_dummy+0x18>
   10132:	656d                	lui	a0,0x1b
   10134:	f4418593          	addi	a1,gp,-188 # 1b754 <object.0>
   10138:	00050513          	mv	a0,a0
   1013c:	00000317          	auipc	t1,0x0
   10140:	00000067          	jr	zero # 0 <exit-0x10094>
   10144:	8082                	ret

00010146 <sha256_test>:
   10146:	712d                	addi	sp,sp,-288
   10148:	10112e23          	sw	ra,284(sp)
   1014c:	10812c23          	sw	s0,280(sp)
   10150:	006367b7          	lui	a5,0x636
   10154:	26178793          	addi	a5,a5,609 # 636261 <__BSS_END__+0x61a805>
   10158:	10f12623          	sw	a5,268(sp)
   1015c:	67e9                	lui	a5,0x1a
   1015e:	0b078793          	addi	a5,a5,176 # 1a0b0 <__clzsi2+0x3a>
   10162:	0998                	addi	a4,sp,208
   10164:	03078693          	addi	a3,a5,48
   10168:	0007a803          	lw	a6,0(a5)
   1016c:	43c8                	lw	a0,4(a5)
   1016e:	478c                	lw	a1,8(a5)
   10170:	47d0                	lw	a2,12(a5)
   10172:	01072023          	sw	a6,0(a4)
   10176:	c348                	sw	a0,4(a4)
   10178:	c70c                	sw	a1,8(a4)
   1017a:	c750                	sw	a2,12(a4)
   1017c:	07c1                	addi	a5,a5,16
   1017e:	0741                	addi	a4,a4,16
   10180:	fed794e3          	bne	a5,a3,10168 <sha256_test+0x22>
   10184:	4390                	lw	a2,0(a5)
   10186:	43d4                	lw	a3,4(a5)
   10188:	c310                	sw	a2,0(a4)
   1018a:	c354                	sw	a3,4(a4)
   1018c:	0087c783          	lbu	a5,8(a5)
   10190:	00f70423          	sb	a5,8(a4)
   10194:	67e9                	lui	a5,0x1a
   10196:	2a878793          	addi	a5,a5,680 # 1a2a8 <__clzsi2+0x232>
   1019a:	0007a883          	lw	a7,0(a5)
   1019e:	0047a803          	lw	a6,4(a5)
   101a2:	4788                	lw	a0,8(a5)
   101a4:	47cc                	lw	a1,12(a5)
   101a6:	4b90                	lw	a2,16(a5)
   101a8:	4bd4                	lw	a3,20(a5)
   101aa:	4f98                	lw	a4,24(a5)
   101ac:	4fdc                	lw	a5,28(a5)
   101ae:	d946                	sw	a7,176(sp)
   101b0:	db42                	sw	a6,180(sp)
   101b2:	dd2a                	sw	a0,184(sp)
   101b4:	df2e                	sw	a1,188(sp)
   101b6:	c1b2                	sw	a2,192(sp)
   101b8:	c3b6                	sw	a3,196(sp)
   101ba:	c5ba                	sw	a4,200(sp)
   101bc:	c7be                	sw	a5,204(sp)
   101be:	67e9                	lui	a5,0x1a
   101c0:	0ec78793          	addi	a5,a5,236 # 1a0ec <__clzsi2+0x76>
   101c4:	0007a883          	lw	a7,0(a5)
   101c8:	0047a803          	lw	a6,4(a5)
   101cc:	4788                	lw	a0,8(a5)
   101ce:	47cc                	lw	a1,12(a5)
   101d0:	4b90                	lw	a2,16(a5)
   101d2:	4bd4                	lw	a3,20(a5)
   101d4:	4f98                	lw	a4,24(a5)
   101d6:	4fdc                	lw	a5,28(a5)
   101d8:	c946                	sw	a7,144(sp)
   101da:	cb42                	sw	a6,148(sp)
   101dc:	cd2a                	sw	a0,152(sp)
   101de:	cf2e                	sw	a1,156(sp)
   101e0:	d132                	sw	a2,160(sp)
   101e2:	d336                	sw	a3,164(sp)
   101e4:	d53a                	sw	a4,168(sp)
   101e6:	d73e                	sw	a5,172(sp)
   101e8:	850a                	mv	a0,sp
   101ea:	2c91                	jal	1043e <sha256_init>
   101ec:	0268                	addi	a0,sp,268
   101ee:	31d000ef          	jal	10d0a <strlen>
   101f2:	862a                	mv	a2,a0
   101f4:	026c                	addi	a1,sp,268
   101f6:	850a                	mv	a0,sp
   101f8:	245d                	jal	1049e <sha256_update>
   101fa:	188c                	addi	a1,sp,112
   101fc:	850a                	mv	a0,sp
   101fe:	2619                	jal	10504 <sha256_final>
   10200:	02000613          	li	a2,32
   10204:	188c                	addi	a1,sp,112
   10206:	1908                	addi	a0,sp,176
   10208:	037000ef          	jal	10a3e <memcmp>
   1020c:	842a                	mv	s0,a0
   1020e:	850a                	mv	a0,sp
   10210:	243d                	jal	1043e <sha256_init>
   10212:	0988                	addi	a0,sp,208
   10214:	2f7000ef          	jal	10d0a <strlen>
   10218:	862a                	mv	a2,a0
   1021a:	098c                	addi	a1,sp,208
   1021c:	850a                	mv	a0,sp
   1021e:	2441                	jal	1049e <sha256_update>
   10220:	188c                	addi	a1,sp,112
   10222:	850a                	mv	a0,sp
   10224:	24c5                	jal	10504 <sha256_final>
   10226:	4501                	li	a0,0
   10228:	e809                	bnez	s0,1023a <sha256_test+0xf4>
   1022a:	02000613          	li	a2,32
   1022e:	188c                	addi	a1,sp,112
   10230:	0908                	addi	a0,sp,144
   10232:	00d000ef          	jal	10a3e <memcmp>
   10236:	00153513          	seqz	a0,a0
   1023a:	11c12083          	lw	ra,284(sp)
   1023e:	11812403          	lw	s0,280(sp)
   10242:	6115                	addi	sp,sp,288
   10244:	8082                	ret

00010246 <main>:
   10246:	1141                	addi	sp,sp,-16
   10248:	c606                	sw	ra,12(sp)
   1024a:	3df5                	jal	10146 <sha256_test>
   1024c:	cd01                	beqz	a0,10264 <main+0x1e>
   1024e:	65e9                	lui	a1,0x1a
   10250:	11058593          	addi	a1,a1,272 # 1a110 <__clzsi2+0x9a>
   10254:	6569                	lui	a0,0x1a
   10256:	12450513          	addi	a0,a0,292 # 1a124 <__clzsi2+0xae>
   1025a:	25c5                	jal	1093a <printf>
   1025c:	4501                	li	a0,0
   1025e:	40b2                	lw	ra,12(sp)
   10260:	0141                	addi	sp,sp,16
   10262:	8082                	ret
   10264:	65e9                	lui	a1,0x1a
   10266:	11c58593          	addi	a1,a1,284 # 1a11c <__clzsi2+0xa6>
   1026a:	b7ed                	j	10254 <main+0xe>

0001026c <sha256_transform>:
   1026c:	712d                	addi	sp,sp,-288
   1026e:	10812e23          	sw	s0,284(sp)
   10272:	10912c23          	sw	s1,280(sp)
   10276:	11212a23          	sw	s2,276(sp)
   1027a:	11312823          	sw	s3,272(sp)
   1027e:	11412623          	sw	s4,268(sp)
   10282:	11512423          	sw	s5,264(sp)
   10286:	11612223          	sw	s6,260(sp)
   1028a:	11712023          	sw	s7,256(sp)
   1028e:	888a                	mv	a7,sp
   10290:	0090                	addi	a2,sp,64
   10292:	8746                	mv	a4,a7
   10294:	0005c783          	lbu	a5,0(a1)
   10298:	07e2                	slli	a5,a5,0x18
   1029a:	0015c683          	lbu	a3,1(a1)
   1029e:	06c2                	slli	a3,a3,0x10
   102a0:	8fd5                	or	a5,a5,a3
   102a2:	0035c683          	lbu	a3,3(a1)
   102a6:	8fd5                	or	a5,a5,a3
   102a8:	0025c683          	lbu	a3,2(a1)
   102ac:	06a2                	slli	a3,a3,0x8
   102ae:	8fd5                	or	a5,a5,a3
   102b0:	c31c                	sw	a5,0(a4)
   102b2:	0591                	addi	a1,a1,4
   102b4:	0711                	addi	a4,a4,4
   102b6:	fcc71fe3          	bne	a4,a2,10294 <sha256_transform+0x28>
   102ba:	0c088313          	addi	t1,a7,192
   102be:	8746                	mv	a4,a7
   102c0:	5f14                	lw	a3,56(a4)
   102c2:	4350                	lw	a2,4(a4)
   102c4:	00f69793          	slli	a5,a3,0xf
   102c8:	0116d593          	srli	a1,a3,0x11
   102cc:	8fcd                	or	a5,a5,a1
   102ce:	00d69593          	slli	a1,a3,0xd
   102d2:	0136d813          	srli	a6,a3,0x13
   102d6:	0105e5b3          	or	a1,a1,a6
   102da:	8fad                	xor	a5,a5,a1
   102dc:	82a9                	srli	a3,a3,0xa
   102de:	8fb5                	xor	a5,a5,a3
   102e0:	5354                	lw	a3,36(a4)
   102e2:	430c                	lw	a1,0(a4)
   102e4:	96ae                	add	a3,a3,a1
   102e6:	97b6                	add	a5,a5,a3
   102e8:	00765693          	srli	a3,a2,0x7
   102ec:	01961593          	slli	a1,a2,0x19
   102f0:	8ecd                	or	a3,a3,a1
   102f2:	00e61593          	slli	a1,a2,0xe
   102f6:	01265813          	srli	a6,a2,0x12
   102fa:	0105e5b3          	or	a1,a1,a6
   102fe:	8ead                	xor	a3,a3,a1
   10300:	820d                	srli	a2,a2,0x3
   10302:	8eb1                	xor	a3,a3,a2
   10304:	97b6                	add	a5,a5,a3
   10306:	c33c                	sw	a5,64(a4)
   10308:	0711                	addi	a4,a4,4
   1030a:	fa671be3          	bne	a4,t1,102c0 <sha256_transform+0x54>
   1030e:	05052a03          	lw	s4,80(a0)
   10312:	05452983          	lw	s3,84(a0)
   10316:	05852903          	lw	s2,88(a0)
   1031a:	4d64                	lw	s1,92(a0)
   1031c:	5120                	lw	s0,96(a0)
   1031e:	06452383          	lw	t2,100(a0)
   10322:	06852283          	lw	t0,104(a0)
   10326:	06c52f83          	lw	t6,108(a0)
   1032a:	6669                	lui	a2,0x1a
   1032c:	2c860613          	addi	a2,a2,712 # 1a2c8 <k>
   10330:	10060f13          	addi	t5,a2,256
   10334:	8afe                	mv	s5,t6
   10336:	8316                	mv	t1,t0
   10338:	8e1e                	mv	t3,t2
   1033a:	8722                	mv	a4,s0
   1033c:	8ea6                	mv	t4,s1
   1033e:	85ca                	mv	a1,s2
   10340:	884e                	mv	a6,s3
   10342:	86d2                	mv	a3,s4
   10344:	a039                	j	10352 <sha256_transform+0xe6>
   10346:	8372                	mv	t1,t3
   10348:	8e3a                	mv	t3,a4
   1034a:	875a                	mv	a4,s6
   1034c:	85c2                	mv	a1,a6
   1034e:	8836                	mv	a6,a3
   10350:	86be                	mv	a3,a5
   10352:	00675793          	srli	a5,a4,0x6
   10356:	01a71b13          	slli	s6,a4,0x1a
   1035a:	0167e7b3          	or	a5,a5,s6
   1035e:	00b75b13          	srli	s6,a4,0xb
   10362:	01571b93          	slli	s7,a4,0x15
   10366:	017b6b33          	or	s6,s6,s7
   1036a:	0167c7b3          	xor	a5,a5,s6
   1036e:	00771b13          	slli	s6,a4,0x7
   10372:	01975b93          	srli	s7,a4,0x19
   10376:	017b6b33          	or	s6,s6,s7
   1037a:	0167c7b3          	xor	a5,a5,s6
   1037e:	00062b03          	lw	s6,0(a2)
   10382:	0008ab83          	lw	s7,0(a7)
   10386:	9b5e                	add	s6,s6,s7
   10388:	97da                	add	a5,a5,s6
   1038a:	fff74b13          	not	s6,a4
   1038e:	006b7b33          	and	s6,s6,t1
   10392:	01c77bb3          	and	s7,a4,t3
   10396:	017b4b33          	xor	s6,s6,s7
   1039a:	97da                	add	a5,a5,s6
   1039c:	97d6                	add	a5,a5,s5
   1039e:	0026da93          	srli	s5,a3,0x2
   103a2:	01e69b13          	slli	s6,a3,0x1e
   103a6:	016aeab3          	or	s5,s5,s6
   103aa:	00d6db13          	srli	s6,a3,0xd
   103ae:	01369b93          	slli	s7,a3,0x13
   103b2:	017b6b33          	or	s6,s6,s7
   103b6:	016acab3          	xor	s5,s5,s6
   103ba:	00a69b13          	slli	s6,a3,0xa
   103be:	0166db93          	srli	s7,a3,0x16
   103c2:	017b6b33          	or	s6,s6,s7
   103c6:	016acab3          	xor	s5,s5,s6
   103ca:	00b84b33          	xor	s6,a6,a1
   103ce:	00db7b33          	and	s6,s6,a3
   103d2:	00b87bb3          	and	s7,a6,a1
   103d6:	017b4b33          	xor	s6,s6,s7
   103da:	9ada                	add	s5,s5,s6
   103dc:	01d78b33          	add	s6,a5,t4
   103e0:	97d6                	add	a5,a5,s5
   103e2:	0611                	addi	a2,a2,4
   103e4:	0891                	addi	a7,a7,4
   103e6:	8eae                	mv	t4,a1
   103e8:	8a9a                	mv	s5,t1
   103ea:	f5e61ee3          	bne	a2,t5,10346 <sha256_transform+0xda>
   103ee:	9a3e                	add	s4,s4,a5
   103f0:	05452823          	sw	s4,80(a0)
   103f4:	99b6                	add	s3,s3,a3
   103f6:	05352a23          	sw	s3,84(a0)
   103fa:	9942                	add	s2,s2,a6
   103fc:	05252c23          	sw	s2,88(a0)
   10400:	94ae                	add	s1,s1,a1
   10402:	cd64                	sw	s1,92(a0)
   10404:	945a                	add	s0,s0,s6
   10406:	d120                	sw	s0,96(a0)
   10408:	93ba                	add	t2,t2,a4
   1040a:	06752223          	sw	t2,100(a0)
   1040e:	92f2                	add	t0,t0,t3
   10410:	06552423          	sw	t0,104(a0)
   10414:	9f9a                	add	t6,t6,t1
   10416:	07f52623          	sw	t6,108(a0)
   1041a:	11c12403          	lw	s0,284(sp)
   1041e:	11812483          	lw	s1,280(sp)
   10422:	11412903          	lw	s2,276(sp)
   10426:	11012983          	lw	s3,272(sp)
   1042a:	10c12a03          	lw	s4,268(sp)
   1042e:	10812a83          	lw	s5,264(sp)
   10432:	10412b03          	lw	s6,260(sp)
   10436:	10012b83          	lw	s7,256(sp)
   1043a:	6115                	addi	sp,sp,288
   1043c:	8082                	ret

0001043e <sha256_init>:
   1043e:	04052023          	sw	zero,64(a0)
   10442:	4781                	li	a5,0
   10444:	4801                	li	a6,0
   10446:	c53c                	sw	a5,72(a0)
   10448:	05052623          	sw	a6,76(a0)
   1044c:	6a09e7b7          	lui	a5,0x6a09e
   10450:	66778793          	addi	a5,a5,1639 # 6a09e667 <__BSS_END__+0x6a082c0b>
   10454:	c93c                	sw	a5,80(a0)
   10456:	bb67b7b7          	lui	a5,0xbb67b
   1045a:	e8578793          	addi	a5,a5,-379 # bb67ae85 <__BSS_END__+0xbb65f429>
   1045e:	c97c                	sw	a5,84(a0)
   10460:	3c6ef7b7          	lui	a5,0x3c6ef
   10464:	37278793          	addi	a5,a5,882 # 3c6ef372 <__BSS_END__+0x3c6d3916>
   10468:	cd3c                	sw	a5,88(a0)
   1046a:	a54ff7b7          	lui	a5,0xa54ff
   1046e:	53a78793          	addi	a5,a5,1338 # a54ff53a <__BSS_END__+0xa54e3ade>
   10472:	cd7c                	sw	a5,92(a0)
   10474:	510e57b7          	lui	a5,0x510e5
   10478:	27f78793          	addi	a5,a5,639 # 510e527f <__BSS_END__+0x510c9823>
   1047c:	d13c                	sw	a5,96(a0)
   1047e:	9b0577b7          	lui	a5,0x9b057
   10482:	88c78793          	addi	a5,a5,-1908 # 9b05688c <__BSS_END__+0x9b03ae30>
   10486:	d17c                	sw	a5,100(a0)
   10488:	1f83e7b7          	lui	a5,0x1f83e
   1048c:	9ab78793          	addi	a5,a5,-1621 # 1f83d9ab <__BSS_END__+0x1f821f4f>
   10490:	d53c                	sw	a5,104(a0)
   10492:	5be0d7b7          	lui	a5,0x5be0d
   10496:	d1978793          	addi	a5,a5,-743 # 5be0cd19 <__BSS_END__+0x5bdf12bd>
   1049a:	d57c                	sw	a5,108(a0)
   1049c:	8082                	ret

0001049e <sha256_update>:
   1049e:	c235                	beqz	a2,10502 <sha256_update+0x64>
   104a0:	1101                	addi	sp,sp,-32
   104a2:	ce06                	sw	ra,28(sp)
   104a4:	cc22                	sw	s0,24(sp)
   104a6:	ca26                	sw	s1,20(sp)
   104a8:	c84a                	sw	s2,16(sp)
   104aa:	c64e                	sw	s3,12(sp)
   104ac:	842a                	mv	s0,a0
   104ae:	84ae                	mv	s1,a1
   104b0:	00c58933          	add	s2,a1,a2
   104b4:	04000993          	li	s3,64
   104b8:	a021                	j	104c0 <sha256_update+0x22>
   104ba:	0485                	addi	s1,s1,1
   104bc:	03248c63          	beq	s1,s2,104f4 <sha256_update+0x56>
   104c0:	403c                	lw	a5,64(s0)
   104c2:	0004c683          	lbu	a3,0(s1)
   104c6:	00f40733          	add	a4,s0,a5
   104ca:	00d70023          	sb	a3,0(a4)
   104ce:	0785                	addi	a5,a5,1
   104d0:	c03c                	sw	a5,64(s0)
   104d2:	ff3794e3          	bne	a5,s3,104ba <sha256_update+0x1c>
   104d6:	85a2                	mv	a1,s0
   104d8:	8522                	mv	a0,s0
   104da:	3b49                	jal	1026c <sha256_transform>
   104dc:	443c                	lw	a5,72(s0)
   104de:	4474                	lw	a3,76(s0)
   104e0:	20078713          	addi	a4,a5,512
   104e4:	00f737b3          	sltu	a5,a4,a5
   104e8:	97b6                	add	a5,a5,a3
   104ea:	c438                	sw	a4,72(s0)
   104ec:	c47c                	sw	a5,76(s0)
   104ee:	04042023          	sw	zero,64(s0)
   104f2:	b7e1                	j	104ba <sha256_update+0x1c>
   104f4:	40f2                	lw	ra,28(sp)
   104f6:	4462                	lw	s0,24(sp)
   104f8:	44d2                	lw	s1,20(sp)
   104fa:	4942                	lw	s2,16(sp)
   104fc:	49b2                	lw	s3,12(sp)
   104fe:	6105                	addi	sp,sp,32
   10500:	8082                	ret
   10502:	8082                	ret

00010504 <sha256_final>:
   10504:	1141                	addi	sp,sp,-16
   10506:	c606                	sw	ra,12(sp)
   10508:	c422                	sw	s0,8(sp)
   1050a:	c226                	sw	s1,4(sp)
   1050c:	c04a                	sw	s2,0(sp)
   1050e:	842a                	mv	s0,a0
   10510:	84ae                	mv	s1,a1
   10512:	04052903          	lw	s2,64(a0)
   10516:	03700793          	li	a5,55
   1051a:	0327e763          	bltu	a5,s2,10548 <sha256_final+0x44>
   1051e:	00190793          	addi	a5,s2,1
   10522:	01250733          	add	a4,a0,s2
   10526:	f8000693          	li	a3,-128
   1052a:	00d70023          	sb	a3,0(a4)
   1052e:	03700713          	li	a4,55
   10532:	04f76763          	bltu	a4,a5,10580 <sha256_final+0x7c>
   10536:	97aa                	add	a5,a5,a0
   10538:	03850713          	addi	a4,a0,56
   1053c:	00078023          	sb	zero,0(a5)
   10540:	0785                	addi	a5,a5,1
   10542:	fee79de3          	bne	a5,a4,1053c <sha256_final+0x38>
   10546:	a82d                	j	10580 <sha256_final+0x7c>
   10548:	00190793          	addi	a5,s2,1
   1054c:	01250733          	add	a4,a0,s2
   10550:	f8000693          	li	a3,-128
   10554:	00d70023          	sb	a3,0(a4)
   10558:	03f00713          	li	a4,63
   1055c:	00f76a63          	bltu	a4,a5,10570 <sha256_final+0x6c>
   10560:	97aa                	add	a5,a5,a0
   10562:	04050713          	addi	a4,a0,64
   10566:	00078023          	sb	zero,0(a5)
   1056a:	0785                	addi	a5,a5,1
   1056c:	fee79de3          	bne	a5,a4,10566 <sha256_final+0x62>
   10570:	85a2                	mv	a1,s0
   10572:	8522                	mv	a0,s0
   10574:	39e5                	jal	1026c <sha256_transform>
   10576:	03800613          	li	a2,56
   1057a:	4581                	li	a1,0
   1057c:	8522                	mv	a0,s0
   1057e:	25d5                	jal	10c62 <memset>
   10580:	090e                	slli	s2,s2,0x3
   10582:	4438                	lw	a4,72(s0)
   10584:	447c                	lw	a5,76(s0)
   10586:	974a                	add	a4,a4,s2
   10588:	01273933          	sltu	s2,a4,s2
   1058c:	97ca                	add	a5,a5,s2
   1058e:	c438                	sw	a4,72(s0)
   10590:	c47c                	sw	a5,76(s0)
   10592:	02e40fa3          	sb	a4,63(s0)
   10596:	00875693          	srli	a3,a4,0x8
   1059a:	02d40f23          	sb	a3,62(s0)
   1059e:	01075693          	srli	a3,a4,0x10
   105a2:	02d40ea3          	sb	a3,61(s0)
   105a6:	8361                	srli	a4,a4,0x18
   105a8:	02e40e23          	sb	a4,60(s0)
   105ac:	02f40da3          	sb	a5,59(s0)
   105b0:	0087d713          	srli	a4,a5,0x8
   105b4:	02e40d23          	sb	a4,58(s0)
   105b8:	0107d713          	srli	a4,a5,0x10
   105bc:	02e40ca3          	sb	a4,57(s0)
   105c0:	83e1                	srli	a5,a5,0x18
   105c2:	02f40c23          	sb	a5,56(s0)
   105c6:	85a2                	mv	a1,s0
   105c8:	8522                	mv	a0,s0
   105ca:	314d                	jal	1026c <sha256_transform>
   105cc:	85a6                	mv	a1,s1
   105ce:	47e1                	li	a5,24
   105d0:	56e1                	li	a3,-8
   105d2:	4838                	lw	a4,80(s0)
   105d4:	00f75733          	srl	a4,a4,a5
   105d8:	00e58023          	sb	a4,0(a1)
   105dc:	4878                	lw	a4,84(s0)
   105de:	00f75733          	srl	a4,a4,a5
   105e2:	00e58223          	sb	a4,4(a1)
   105e6:	4c38                	lw	a4,88(s0)
   105e8:	00f75733          	srl	a4,a4,a5
   105ec:	00e58423          	sb	a4,8(a1)
   105f0:	4c78                	lw	a4,92(s0)
   105f2:	00f75733          	srl	a4,a4,a5
   105f6:	00e58623          	sb	a4,12(a1)
   105fa:	5038                	lw	a4,96(s0)
   105fc:	00f75733          	srl	a4,a4,a5
   10600:	00e58823          	sb	a4,16(a1)
   10604:	5078                	lw	a4,100(s0)
   10606:	00f75733          	srl	a4,a4,a5
   1060a:	00e58a23          	sb	a4,20(a1)
   1060e:	5438                	lw	a4,104(s0)
   10610:	00f75733          	srl	a4,a4,a5
   10614:	00e58c23          	sb	a4,24(a1)
   10618:	5478                	lw	a4,108(s0)
   1061a:	00f75733          	srl	a4,a4,a5
   1061e:	00e58e23          	sb	a4,28(a1)
   10622:	17e1                	addi	a5,a5,-8
   10624:	0585                	addi	a1,a1,1
   10626:	fad796e3          	bne	a5,a3,105d2 <sha256_final+0xce>
   1062a:	40b2                	lw	ra,12(sp)
   1062c:	4422                	lw	s0,8(sp)
   1062e:	4492                	lw	s1,4(sp)
   10630:	4902                	lw	s2,0(sp)
   10632:	0141                	addi	sp,sp,16
   10634:	8082                	ret

00010636 <__fp_lock>:
   10636:	4501                	li	a0,0
   10638:	8082                	ret

0001063a <stdio_exit_handler>:
   1063a:	666d                	lui	a2,0x1b
   1063c:	65cd                	lui	a1,0x13
   1063e:	656d                	lui	a0,0x1b
   10640:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   10644:	35058593          	addi	a1,a1,848 # 13350 <_fclose_r>
   10648:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   1064c:	aca9                	j	108a6 <_fwalk_sglue>

0001064e <cleanup_stdio>:
   1064e:	414c                	lw	a1,4(a0)
   10650:	1141                	addi	sp,sp,-16
   10652:	c422                	sw	s0,8(sp)
   10654:	c606                	sw	ra,12(sp)
   10656:	f5c18793          	addi	a5,gp,-164 # 1b76c <__sf>
   1065a:	842a                	mv	s0,a0
   1065c:	00f58463          	beq	a1,a5,10664 <cleanup_stdio+0x16>
   10660:	4f1020ef          	jal	13350 <_fclose_r>
   10664:	440c                	lw	a1,8(s0)
   10666:	fc418793          	addi	a5,gp,-60 # 1b7d4 <__sf+0x68>
   1066a:	00f58563          	beq	a1,a5,10674 <cleanup_stdio+0x26>
   1066e:	8522                	mv	a0,s0
   10670:	4e1020ef          	jal	13350 <_fclose_r>
   10674:	444c                	lw	a1,12(s0)
   10676:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   1067a:	00f58863          	beq	a1,a5,1068a <cleanup_stdio+0x3c>
   1067e:	8522                	mv	a0,s0
   10680:	4422                	lw	s0,8(sp)
   10682:	40b2                	lw	ra,12(sp)
   10684:	0141                	addi	sp,sp,16
   10686:	4cb0206f          	j	13350 <_fclose_r>
   1068a:	40b2                	lw	ra,12(sp)
   1068c:	4422                	lw	s0,8(sp)
   1068e:	0141                	addi	sp,sp,16
   10690:	8082                	ret

00010692 <__fp_unlock>:
   10692:	4501                	li	a0,0
   10694:	8082                	ret

00010696 <global_stdio_init.part.0>:
   10696:	1101                	addi	sp,sp,-32
   10698:	67c1                	lui	a5,0x10
   1069a:	cc22                	sw	s0,24(sp)
   1069c:	63a78793          	addi	a5,a5,1594 # 1063a <stdio_exit_handler>
   106a0:	f5c18413          	addi	s0,gp,-164 # 1b76c <__sf>
   106a4:	ce06                	sw	ra,28(sp)
   106a6:	ca26                	sw	s1,20(sp)
   106a8:	c84a                	sw	s2,16(sp)
   106aa:	c64e                	sw	s3,12(sp)
   106ac:	c452                	sw	s4,8(sp)
   106ae:	f2f1a023          	sw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   106b2:	4621                	li	a2,8
   106b4:	4791                	li	a5,4
   106b6:	4581                	li	a1,0
   106b8:	fb818513          	addi	a0,gp,-72 # 1b7c8 <__sf+0x5c>
   106bc:	c45c                	sw	a5,12(s0)
   106be:	00042023          	sw	zero,0(s0)
   106c2:	00042223          	sw	zero,4(s0)
   106c6:	00042423          	sw	zero,8(s0)
   106ca:	06042223          	sw	zero,100(s0)
   106ce:	00042823          	sw	zero,16(s0)
   106d2:	00042a23          	sw	zero,20(s0)
   106d6:	00042c23          	sw	zero,24(s0)
   106da:	2361                	jal	10c62 <memset>
   106dc:	67c1                	lui	a5,0x10
   106de:	6a45                	lui	s4,0x11
   106e0:	69c5                	lui	s3,0x11
   106e2:	6945                	lui	s2,0x11
   106e4:	64c5                	lui	s1,0x11
   106e6:	966a0a13          	addi	s4,s4,-1690 # 10966 <__sread>
   106ea:	9a098993          	addi	s3,s3,-1632 # 109a0 <__swrite>
   106ee:	9f090913          	addi	s2,s2,-1552 # 109f0 <__sseek>
   106f2:	a3848493          	addi	s1,s1,-1480 # 10a38 <__sclose>
   106f6:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   106f8:	4621                	li	a2,8
   106fa:	4581                	li	a1,0
   106fc:	02018513          	addi	a0,gp,32 # 1b830 <__global_pointer$+0x20>
   10700:	03442023          	sw	s4,32(s0)
   10704:	03342223          	sw	s3,36(s0)
   10708:	03242423          	sw	s2,40(s0)
   1070c:	d444                	sw	s1,44(s0)
   1070e:	d87c                	sw	a5,116(s0)
   10710:	cc40                	sw	s0,28(s0)
   10712:	06042423          	sw	zero,104(s0)
   10716:	06042623          	sw	zero,108(s0)
   1071a:	06042823          	sw	zero,112(s0)
   1071e:	0c042623          	sw	zero,204(s0)
   10722:	06042c23          	sw	zero,120(s0)
   10726:	06042e23          	sw	zero,124(s0)
   1072a:	08042023          	sw	zero,128(s0)
   1072e:	2b15                	jal	10c62 <memset>
   10730:	000207b7          	lui	a5,0x20
   10734:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x45b6>
   10736:	fc418713          	addi	a4,gp,-60 # 1b7d4 <__sf+0x68>
   1073a:	4621                	li	a2,8
   1073c:	4581                	li	a1,0
   1073e:	08818513          	addi	a0,gp,136 # 1b898 <__global_pointer$+0x88>
   10742:	09442423          	sw	s4,136(s0)
   10746:	09342623          	sw	s3,140(s0)
   1074a:	09242823          	sw	s2,144(s0)
   1074e:	08942a23          	sw	s1,148(s0)
   10752:	0cf42e23          	sw	a5,220(s0)
   10756:	08e42223          	sw	a4,132(s0)
   1075a:	0c042823          	sw	zero,208(s0)
   1075e:	0c042a23          	sw	zero,212(s0)
   10762:	0c042c23          	sw	zero,216(s0)
   10766:	12042a23          	sw	zero,308(s0)
   1076a:	0e042023          	sw	zero,224(s0)
   1076e:	0e042223          	sw	zero,228(s0)
   10772:	0e042423          	sw	zero,232(s0)
   10776:	21f5                	jal	10c62 <memset>
   10778:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   1077c:	0f442823          	sw	s4,240(s0)
   10780:	0f342a23          	sw	s3,244(s0)
   10784:	0f242c23          	sw	s2,248(s0)
   10788:	0e942e23          	sw	s1,252(s0)
   1078c:	40f2                	lw	ra,28(sp)
   1078e:	0ef42623          	sw	a5,236(s0)
   10792:	4462                	lw	s0,24(sp)
   10794:	44d2                	lw	s1,20(sp)
   10796:	4942                	lw	s2,16(sp)
   10798:	49b2                	lw	s3,12(sp)
   1079a:	4a22                	lw	s4,8(sp)
   1079c:	6105                	addi	sp,sp,32
   1079e:	8082                	ret

000107a0 <__sfp>:
   107a0:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   107a4:	1101                	addi	sp,sp,-32
   107a6:	c64e                	sw	s3,12(sp)
   107a8:	ce06                	sw	ra,28(sp)
   107aa:	cc22                	sw	s0,24(sp)
   107ac:	ca26                	sw	s1,20(sp)
   107ae:	c84a                	sw	s2,16(sp)
   107b0:	89aa                	mv	s3,a0
   107b2:	c7cd                	beqz	a5,1085c <__sfp+0xbc>
   107b4:	696d                	lui	s2,0x1b
   107b6:	01090913          	addi	s2,s2,16 # 1b010 <__sglue>
   107ba:	54fd                	li	s1,-1
   107bc:	00492783          	lw	a5,4(s2)
   107c0:	00892403          	lw	s0,8(s2)
   107c4:	17fd                	addi	a5,a5,-1
   107c6:	0007d763          	bgez	a5,107d4 <__sfp+0x34>
   107ca:	a8b9                	j	10828 <__sfp+0x88>
   107cc:	06840413          	addi	s0,s0,104
   107d0:	04978c63          	beq	a5,s1,10828 <__sfp+0x88>
   107d4:	00c41703          	lh	a4,12(s0)
   107d8:	17fd                	addi	a5,a5,-1
   107da:	fb6d                	bnez	a4,107cc <__sfp+0x2c>
   107dc:	77c1                	lui	a5,0xffff0
   107de:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd45a5>
   107e0:	c45c                	sw	a5,12(s0)
   107e2:	06042223          	sw	zero,100(s0)
   107e6:	00042023          	sw	zero,0(s0)
   107ea:	00042423          	sw	zero,8(s0)
   107ee:	00042223          	sw	zero,4(s0)
   107f2:	00042823          	sw	zero,16(s0)
   107f6:	00042a23          	sw	zero,20(s0)
   107fa:	00042c23          	sw	zero,24(s0)
   107fe:	4621                	li	a2,8
   10800:	4581                	li	a1,0
   10802:	05c40513          	addi	a0,s0,92
   10806:	29b1                	jal	10c62 <memset>
   10808:	02042823          	sw	zero,48(s0)
   1080c:	02042a23          	sw	zero,52(s0)
   10810:	04042223          	sw	zero,68(s0)
   10814:	04042423          	sw	zero,72(s0)
   10818:	40f2                	lw	ra,28(sp)
   1081a:	8522                	mv	a0,s0
   1081c:	4462                	lw	s0,24(sp)
   1081e:	44d2                	lw	s1,20(sp)
   10820:	4942                	lw	s2,16(sp)
   10822:	49b2                	lw	s3,12(sp)
   10824:	6105                	addi	sp,sp,32
   10826:	8082                	ret
   10828:	00092403          	lw	s0,0(s2)
   1082c:	c019                	beqz	s0,10832 <__sfp+0x92>
   1082e:	8922                	mv	s2,s0
   10830:	b771                	j	107bc <__sfp+0x1c>
   10832:	1ac00593          	li	a1,428
   10836:	854e                	mv	a0,s3
   10838:	0ff000ef          	jal	11136 <_malloc_r>
   1083c:	842a                	mv	s0,a0
   1083e:	c10d                	beqz	a0,10860 <__sfp+0xc0>
   10840:	0531                	addi	a0,a0,12
   10842:	4791                	li	a5,4
   10844:	00042023          	sw	zero,0(s0)
   10848:	c05c                	sw	a5,4(s0)
   1084a:	c408                	sw	a0,8(s0)
   1084c:	1a000613          	li	a2,416
   10850:	4581                	li	a1,0
   10852:	2901                	jal	10c62 <memset>
   10854:	00892023          	sw	s0,0(s2)
   10858:	8922                	mv	s2,s0
   1085a:	b78d                	j	107bc <__sfp+0x1c>
   1085c:	3d2d                	jal	10696 <global_stdio_init.part.0>
   1085e:	bf99                	j	107b4 <__sfp+0x14>
   10860:	00092023          	sw	zero,0(s2)
   10864:	47b1                	li	a5,12
   10866:	00f9a023          	sw	a5,0(s3)
   1086a:	b77d                	j	10818 <__sfp+0x78>

0001086c <__sinit>:
   1086c:	595c                	lw	a5,52(a0)
   1086e:	c391                	beqz	a5,10872 <__sinit+0x6>
   10870:	8082                	ret
   10872:	f201a703          	lw	a4,-224(gp) # 1b730 <__stdio_exit_handler>
   10876:	67c1                	lui	a5,0x10
   10878:	64e78793          	addi	a5,a5,1614 # 1064e <cleanup_stdio>
   1087c:	d95c                	sw	a5,52(a0)
   1087e:	fb6d                	bnez	a4,10870 <__sinit+0x4>
   10880:	bd19                	j	10696 <global_stdio_init.part.0>

00010882 <__sfp_lock_acquire>:
   10882:	8082                	ret

00010884 <__sfp_lock_release>:
   10884:	8082                	ret

00010886 <__fp_lock_all>:
   10886:	666d                	lui	a2,0x1b
   10888:	65c1                	lui	a1,0x10
   1088a:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   1088e:	63658593          	addi	a1,a1,1590 # 10636 <__fp_lock>
   10892:	4501                	li	a0,0
   10894:	a809                	j	108a6 <_fwalk_sglue>

00010896 <__fp_unlock_all>:
   10896:	666d                	lui	a2,0x1b
   10898:	65c1                	lui	a1,0x10
   1089a:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   1089e:	69258593          	addi	a1,a1,1682 # 10692 <__fp_unlock>
   108a2:	4501                	li	a0,0
   108a4:	a009                	j	108a6 <_fwalk_sglue>

000108a6 <_fwalk_sglue>:
   108a6:	7179                	addi	sp,sp,-48
   108a8:	d04a                	sw	s2,32(sp)
   108aa:	ce4e                	sw	s3,28(sp)
   108ac:	cc52                	sw	s4,24(sp)
   108ae:	ca56                	sw	s5,20(sp)
   108b0:	c85a                	sw	s6,16(sp)
   108b2:	c65e                	sw	s7,12(sp)
   108b4:	d606                	sw	ra,44(sp)
   108b6:	d422                	sw	s0,40(sp)
   108b8:	d226                	sw	s1,36(sp)
   108ba:	8b2a                	mv	s6,a0
   108bc:	8bae                	mv	s7,a1
   108be:	8ab2                	mv	s5,a2
   108c0:	4a01                	li	s4,0
   108c2:	4985                	li	s3,1
   108c4:	597d                	li	s2,-1
   108c6:	004aa483          	lw	s1,4(s5)
   108ca:	008aa403          	lw	s0,8(s5)
   108ce:	14fd                	addi	s1,s1,-1
   108d0:	0204c463          	bltz	s1,108f8 <_fwalk_sglue+0x52>
   108d4:	00c45783          	lhu	a5,12(s0)
   108d8:	00f9fb63          	bgeu	s3,a5,108ee <_fwalk_sglue+0x48>
   108dc:	00e41783          	lh	a5,14(s0)
   108e0:	85a2                	mv	a1,s0
   108e2:	855a                	mv	a0,s6
   108e4:	01278563          	beq	a5,s2,108ee <_fwalk_sglue+0x48>
   108e8:	9b82                	jalr	s7
   108ea:	00aa6a33          	or	s4,s4,a0
   108ee:	14fd                	addi	s1,s1,-1
   108f0:	06840413          	addi	s0,s0,104
   108f4:	ff2490e3          	bne	s1,s2,108d4 <_fwalk_sglue+0x2e>
   108f8:	000aaa83          	lw	s5,0(s5)
   108fc:	fc0a95e3          	bnez	s5,108c6 <_fwalk_sglue+0x20>
   10900:	50b2                	lw	ra,44(sp)
   10902:	5422                	lw	s0,40(sp)
   10904:	5492                	lw	s1,36(sp)
   10906:	5902                	lw	s2,32(sp)
   10908:	49f2                	lw	s3,28(sp)
   1090a:	4ad2                	lw	s5,20(sp)
   1090c:	4b42                	lw	s6,16(sp)
   1090e:	4bb2                	lw	s7,12(sp)
   10910:	8552                	mv	a0,s4
   10912:	4a62                	lw	s4,24(sp)
   10914:	6145                	addi	sp,sp,48
   10916:	8082                	ret

00010918 <_printf_r>:
   10918:	7139                	addi	sp,sp,-64
   1091a:	d432                	sw	a2,40(sp)
   1091c:	d636                	sw	a3,44(sp)
   1091e:	d83a                	sw	a4,48(sp)
   10920:	da3e                	sw	a5,52(sp)
   10922:	dc42                	sw	a6,56(sp)
   10924:	de46                	sw	a7,60(sp)
   10926:	862e                	mv	a2,a1
   10928:	450c                	lw	a1,8(a0)
   1092a:	1034                	addi	a3,sp,40
   1092c:	ce06                	sw	ra,28(sp)
   1092e:	c636                	sw	a3,12(sp)
   10930:	5af000ef          	jal	116de <_vfprintf_r>
   10934:	40f2                	lw	ra,28(sp)
   10936:	6121                	addi	sp,sp,64
   10938:	8082                	ret

0001093a <printf>:
   1093a:	f141a303          	lw	t1,-236(gp) # 1b724 <_impure_ptr>
   1093e:	7139                	addi	sp,sp,-64
   10940:	d432                	sw	a2,40(sp)
   10942:	d636                	sw	a3,44(sp)
   10944:	d22e                	sw	a1,36(sp)
   10946:	d83a                	sw	a4,48(sp)
   10948:	da3e                	sw	a5,52(sp)
   1094a:	dc42                	sw	a6,56(sp)
   1094c:	de46                	sw	a7,60(sp)
   1094e:	00832583          	lw	a1,8(t1) # 10144 <frame_dummy+0x18>
   10952:	1054                	addi	a3,sp,36
   10954:	862a                	mv	a2,a0
   10956:	851a                	mv	a0,t1
   10958:	ce06                	sw	ra,28(sp)
   1095a:	c636                	sw	a3,12(sp)
   1095c:	583000ef          	jal	116de <_vfprintf_r>
   10960:	40f2                	lw	ra,28(sp)
   10962:	6121                	addi	sp,sp,64
   10964:	8082                	ret

00010966 <__sread>:
   10966:	1141                	addi	sp,sp,-16
   10968:	c422                	sw	s0,8(sp)
   1096a:	842e                	mv	s0,a1
   1096c:	00e59583          	lh	a1,14(a1)
   10970:	c606                	sw	ra,12(sp)
   10972:	2439                	jal	10b80 <_read_r>
   10974:	00054963          	bltz	a0,10986 <__sread+0x20>
   10978:	483c                	lw	a5,80(s0)
   1097a:	40b2                	lw	ra,12(sp)
   1097c:	97aa                	add	a5,a5,a0
   1097e:	c83c                	sw	a5,80(s0)
   10980:	4422                	lw	s0,8(sp)
   10982:	0141                	addi	sp,sp,16
   10984:	8082                	ret
   10986:	00c45783          	lhu	a5,12(s0)
   1098a:	777d                	lui	a4,0xfffff
   1098c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   1098e:	8ff9                	and	a5,a5,a4
   10990:	40b2                	lw	ra,12(sp)
   10992:	00f41623          	sh	a5,12(s0)
   10996:	4422                	lw	s0,8(sp)
   10998:	0141                	addi	sp,sp,16
   1099a:	8082                	ret

0001099c <__seofread>:
   1099c:	4501                	li	a0,0
   1099e:	8082                	ret

000109a0 <__swrite>:
   109a0:	00c59783          	lh	a5,12(a1)
   109a4:	1101                	addi	sp,sp,-32
   109a6:	cc22                	sw	s0,24(sp)
   109a8:	ca26                	sw	s1,20(sp)
   109aa:	c84a                	sw	s2,16(sp)
   109ac:	c64e                	sw	s3,12(sp)
   109ae:	ce06                	sw	ra,28(sp)
   109b0:	1007f713          	andi	a4,a5,256
   109b4:	842e                	mv	s0,a1
   109b6:	84aa                	mv	s1,a0
   109b8:	8932                	mv	s2,a2
   109ba:	89b6                	mv	s3,a3
   109bc:	e315                	bnez	a4,109e0 <__swrite+0x40>
   109be:	777d                	lui	a4,0xfffff
   109c0:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   109c2:	8ff9                	and	a5,a5,a4
   109c4:	00e41583          	lh	a1,14(s0)
   109c8:	00f41623          	sh	a5,12(s0)
   109cc:	4462                	lw	s0,24(sp)
   109ce:	40f2                	lw	ra,28(sp)
   109d0:	86ce                	mv	a3,s3
   109d2:	864a                	mv	a2,s2
   109d4:	49b2                	lw	s3,12(sp)
   109d6:	4942                	lw	s2,16(sp)
   109d8:	8526                	mv	a0,s1
   109da:	44d2                	lw	s1,20(sp)
   109dc:	6105                	addi	sp,sp,32
   109de:	aaf9                	j	10bbc <_write_r>
   109e0:	00e59583          	lh	a1,14(a1)
   109e4:	4689                	li	a3,2
   109e6:	4601                	li	a2,0
   109e8:	2ab1                	jal	10b44 <_lseek_r>
   109ea:	00c41783          	lh	a5,12(s0)
   109ee:	bfc1                	j	109be <__swrite+0x1e>

000109f0 <__sseek>:
   109f0:	1141                	addi	sp,sp,-16
   109f2:	c422                	sw	s0,8(sp)
   109f4:	842e                	mv	s0,a1
   109f6:	00e59583          	lh	a1,14(a1)
   109fa:	c606                	sw	ra,12(sp)
   109fc:	22a1                	jal	10b44 <_lseek_r>
   109fe:	57fd                	li	a5,-1
   10a00:	00f50f63          	beq	a0,a5,10a1e <__sseek+0x2e>
   10a04:	00c45783          	lhu	a5,12(s0)
   10a08:	6705                	lui	a4,0x1
   10a0a:	40b2                	lw	ra,12(sp)
   10a0c:	8fd9                	or	a5,a5,a4
   10a0e:	07c2                	slli	a5,a5,0x10
   10a10:	87c1                	srai	a5,a5,0x10
   10a12:	c828                	sw	a0,80(s0)
   10a14:	00f41623          	sh	a5,12(s0)
   10a18:	4422                	lw	s0,8(sp)
   10a1a:	0141                	addi	sp,sp,16
   10a1c:	8082                	ret
   10a1e:	00c45783          	lhu	a5,12(s0)
   10a22:	777d                	lui	a4,0xfffff
   10a24:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10a26:	8ff9                	and	a5,a5,a4
   10a28:	07c2                	slli	a5,a5,0x10
   10a2a:	87c1                	srai	a5,a5,0x10
   10a2c:	40b2                	lw	ra,12(sp)
   10a2e:	00f41623          	sh	a5,12(s0)
   10a32:	4422                	lw	s0,8(sp)
   10a34:	0141                	addi	sp,sp,16
   10a36:	8082                	ret

00010a38 <__sclose>:
   10a38:	00e59583          	lh	a1,14(a1)
   10a3c:	a899                	j	10a92 <_close_r>

00010a3e <memcmp>:
   10a3e:	478d                	li	a5,3
   10a40:	02c7f463          	bgeu	a5,a2,10a68 <memcmp+0x2a>
   10a44:	00a5e7b3          	or	a5,a1,a0
   10a48:	8b8d                	andi	a5,a5,3
   10a4a:	ef81                	bnez	a5,10a62 <memcmp+0x24>
   10a4c:	468d                	li	a3,3
   10a4e:	a031                	j	10a5a <memcmp+0x1c>
   10a50:	1671                	addi	a2,a2,-4
   10a52:	0511                	addi	a0,a0,4
   10a54:	0591                	addi	a1,a1,4
   10a56:	00c6f963          	bgeu	a3,a2,10a68 <memcmp+0x2a>
   10a5a:	4118                	lw	a4,0(a0)
   10a5c:	419c                	lw	a5,0(a1)
   10a5e:	fef709e3          	beq	a4,a5,10a50 <memcmp+0x12>
   10a62:	fff60693          	addi	a3,a2,-1
   10a66:	a021                	j	10a6e <memcmp+0x30>
   10a68:	fff60693          	addi	a3,a2,-1
   10a6c:	c20d                	beqz	a2,10a8e <memcmp+0x50>
   10a6e:	0685                	addi	a3,a3,1
   10a70:	96aa                	add	a3,a3,a0
   10a72:	a019                	j	10a78 <memcmp+0x3a>
   10a74:	00a68d63          	beq	a3,a0,10a8e <memcmp+0x50>
   10a78:	00054783          	lbu	a5,0(a0)
   10a7c:	0005c703          	lbu	a4,0(a1)
   10a80:	0505                	addi	a0,a0,1
   10a82:	0585                	addi	a1,a1,1
   10a84:	fee788e3          	beq	a5,a4,10a74 <memcmp+0x36>
   10a88:	40e78533          	sub	a0,a5,a4
   10a8c:	8082                	ret
   10a8e:	4501                	li	a0,0
   10a90:	8082                	ret

00010a92 <_close_r>:
   10a92:	1141                	addi	sp,sp,-16
   10a94:	c422                	sw	s0,8(sp)
   10a96:	c226                	sw	s1,4(sp)
   10a98:	842a                	mv	s0,a0
   10a9a:	852e                	mv	a0,a1
   10a9c:	c606                	sw	ra,12(sp)
   10a9e:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10aa2:	747060ef          	jal	179e8 <_close>
   10aa6:	57fd                	li	a5,-1
   10aa8:	00f50763          	beq	a0,a5,10ab6 <_close_r+0x24>
   10aac:	40b2                	lw	ra,12(sp)
   10aae:	4422                	lw	s0,8(sp)
   10ab0:	4492                	lw	s1,4(sp)
   10ab2:	0141                	addi	sp,sp,16
   10ab4:	8082                	ret
   10ab6:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10aba:	dbed                	beqz	a5,10aac <_close_r+0x1a>
   10abc:	40b2                	lw	ra,12(sp)
   10abe:	c01c                	sw	a5,0(s0)
   10ac0:	4422                	lw	s0,8(sp)
   10ac2:	4492                	lw	s1,4(sp)
   10ac4:	0141                	addi	sp,sp,16
   10ac6:	8082                	ret

00010ac8 <_reclaim_reent>:
   10ac8:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10acc:	06a78b63          	beq	a5,a0,10b42 <_reclaim_reent+0x7a>
   10ad0:	416c                	lw	a1,68(a0)
   10ad2:	1101                	addi	sp,sp,-32
   10ad4:	ca26                	sw	s1,20(sp)
   10ad6:	ce06                	sw	ra,28(sp)
   10ad8:	cc22                	sw	s0,24(sp)
   10ada:	84aa                	mv	s1,a0
   10adc:	c59d                	beqz	a1,10b0a <_reclaim_reent+0x42>
   10ade:	c84a                	sw	s2,16(sp)
   10ae0:	c64e                	sw	s3,12(sp)
   10ae2:	4901                	li	s2,0
   10ae4:	08000993          	li	s3,128
   10ae8:	012587b3          	add	a5,a1,s2
   10aec:	4380                	lw	s0,0(a5)
   10aee:	c419                	beqz	s0,10afc <_reclaim_reent+0x34>
   10af0:	85a2                	mv	a1,s0
   10af2:	4000                	lw	s0,0(s0)
   10af4:	8526                	mv	a0,s1
   10af6:	2939                	jal	10f14 <_free_r>
   10af8:	fc65                	bnez	s0,10af0 <_reclaim_reent+0x28>
   10afa:	40ec                	lw	a1,68(s1)
   10afc:	0911                	addi	s2,s2,4
   10afe:	ff3915e3          	bne	s2,s3,10ae8 <_reclaim_reent+0x20>
   10b02:	8526                	mv	a0,s1
   10b04:	2901                	jal	10f14 <_free_r>
   10b06:	4942                	lw	s2,16(sp)
   10b08:	49b2                	lw	s3,12(sp)
   10b0a:	5c8c                	lw	a1,56(s1)
   10b0c:	c199                	beqz	a1,10b12 <_reclaim_reent+0x4a>
   10b0e:	8526                	mv	a0,s1
   10b10:	2111                	jal	10f14 <_free_r>
   10b12:	40a0                	lw	s0,64(s1)
   10b14:	c411                	beqz	s0,10b20 <_reclaim_reent+0x58>
   10b16:	85a2                	mv	a1,s0
   10b18:	4000                	lw	s0,0(s0)
   10b1a:	8526                	mv	a0,s1
   10b1c:	2ee5                	jal	10f14 <_free_r>
   10b1e:	fc65                	bnez	s0,10b16 <_reclaim_reent+0x4e>
   10b20:	44ec                	lw	a1,76(s1)
   10b22:	c199                	beqz	a1,10b28 <_reclaim_reent+0x60>
   10b24:	8526                	mv	a0,s1
   10b26:	26fd                	jal	10f14 <_free_r>
   10b28:	58dc                	lw	a5,52(s1)
   10b2a:	c799                	beqz	a5,10b38 <_reclaim_reent+0x70>
   10b2c:	4462                	lw	s0,24(sp)
   10b2e:	40f2                	lw	ra,28(sp)
   10b30:	8526                	mv	a0,s1
   10b32:	44d2                	lw	s1,20(sp)
   10b34:	6105                	addi	sp,sp,32
   10b36:	8782                	jr	a5
   10b38:	40f2                	lw	ra,28(sp)
   10b3a:	4462                	lw	s0,24(sp)
   10b3c:	44d2                	lw	s1,20(sp)
   10b3e:	6105                	addi	sp,sp,32
   10b40:	8082                	ret
   10b42:	8082                	ret

00010b44 <_lseek_r>:
   10b44:	1141                	addi	sp,sp,-16
   10b46:	872e                	mv	a4,a1
   10b48:	c422                	sw	s0,8(sp)
   10b4a:	c226                	sw	s1,4(sp)
   10b4c:	85b2                	mv	a1,a2
   10b4e:	842a                	mv	s0,a0
   10b50:	8636                	mv	a2,a3
   10b52:	853a                	mv	a0,a4
   10b54:	c606                	sw	ra,12(sp)
   10b56:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10b5a:	753060ef          	jal	17aac <_lseek>
   10b5e:	57fd                	li	a5,-1
   10b60:	00f50763          	beq	a0,a5,10b6e <_lseek_r+0x2a>
   10b64:	40b2                	lw	ra,12(sp)
   10b66:	4422                	lw	s0,8(sp)
   10b68:	4492                	lw	s1,4(sp)
   10b6a:	0141                	addi	sp,sp,16
   10b6c:	8082                	ret
   10b6e:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10b72:	dbed                	beqz	a5,10b64 <_lseek_r+0x20>
   10b74:	40b2                	lw	ra,12(sp)
   10b76:	c01c                	sw	a5,0(s0)
   10b78:	4422                	lw	s0,8(sp)
   10b7a:	4492                	lw	s1,4(sp)
   10b7c:	0141                	addi	sp,sp,16
   10b7e:	8082                	ret

00010b80 <_read_r>:
   10b80:	1141                	addi	sp,sp,-16
   10b82:	872e                	mv	a4,a1
   10b84:	c422                	sw	s0,8(sp)
   10b86:	c226                	sw	s1,4(sp)
   10b88:	85b2                	mv	a1,a2
   10b8a:	842a                	mv	s0,a0
   10b8c:	8636                	mv	a2,a3
   10b8e:	853a                	mv	a0,a4
   10b90:	c606                	sw	ra,12(sp)
   10b92:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10b96:	743060ef          	jal	17ad8 <_read>
   10b9a:	57fd                	li	a5,-1
   10b9c:	00f50763          	beq	a0,a5,10baa <_read_r+0x2a>
   10ba0:	40b2                	lw	ra,12(sp)
   10ba2:	4422                	lw	s0,8(sp)
   10ba4:	4492                	lw	s1,4(sp)
   10ba6:	0141                	addi	sp,sp,16
   10ba8:	8082                	ret
   10baa:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10bae:	dbed                	beqz	a5,10ba0 <_read_r+0x20>
   10bb0:	40b2                	lw	ra,12(sp)
   10bb2:	c01c                	sw	a5,0(s0)
   10bb4:	4422                	lw	s0,8(sp)
   10bb6:	4492                	lw	s1,4(sp)
   10bb8:	0141                	addi	sp,sp,16
   10bba:	8082                	ret

00010bbc <_write_r>:
   10bbc:	1141                	addi	sp,sp,-16
   10bbe:	872e                	mv	a4,a1
   10bc0:	c422                	sw	s0,8(sp)
   10bc2:	c226                	sw	s1,4(sp)
   10bc4:	85b2                	mv	a1,a2
   10bc6:	842a                	mv	s0,a0
   10bc8:	8636                	mv	a2,a3
   10bca:	853a                	mv	a0,a4
   10bcc:	c606                	sw	ra,12(sp)
   10bce:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10bd2:	787060ef          	jal	17b58 <_write>
   10bd6:	57fd                	li	a5,-1
   10bd8:	00f50763          	beq	a0,a5,10be6 <_write_r+0x2a>
   10bdc:	40b2                	lw	ra,12(sp)
   10bde:	4422                	lw	s0,8(sp)
   10be0:	4492                	lw	s1,4(sp)
   10be2:	0141                	addi	sp,sp,16
   10be4:	8082                	ret
   10be6:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10bea:	dbed                	beqz	a5,10bdc <_write_r+0x20>
   10bec:	40b2                	lw	ra,12(sp)
   10bee:	c01c                	sw	a5,0(s0)
   10bf0:	4422                	lw	s0,8(sp)
   10bf2:	4492                	lw	s1,4(sp)
   10bf4:	0141                	addi	sp,sp,16
   10bf6:	8082                	ret

00010bf8 <__libc_init_array>:
   10bf8:	1141                	addi	sp,sp,-16
   10bfa:	c422                	sw	s0,8(sp)
   10bfc:	67ed                	lui	a5,0x1b
   10bfe:	646d                	lui	s0,0x1b
   10c00:	c04a                	sw	s2,0(sp)
   10c02:	00478793          	addi	a5,a5,4 # 1b004 <__init_array_start>
   10c06:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   10c0a:	c606                	sw	ra,12(sp)
   10c0c:	c226                	sw	s1,4(sp)
   10c0e:	40e78933          	sub	s2,a5,a4
   10c12:	00e78d63          	beq	a5,a4,10c2c <__libc_init_array+0x34>
   10c16:	40295913          	srai	s2,s2,0x2
   10c1a:	00440413          	addi	s0,s0,4
   10c1e:	4481                	li	s1,0
   10c20:	401c                	lw	a5,0(s0)
   10c22:	0485                	addi	s1,s1,1
   10c24:	0411                	addi	s0,s0,4
   10c26:	9782                	jalr	a5
   10c28:	ff24ece3          	bltu	s1,s2,10c20 <__libc_init_array+0x28>
   10c2c:	646d                	lui	s0,0x1b
   10c2e:	67ed                	lui	a5,0x1b
   10c30:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   10c34:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   10c38:	40e78933          	sub	s2,a5,a4
   10c3c:	40295913          	srai	s2,s2,0x2
   10c40:	00e78b63          	beq	a5,a4,10c56 <__libc_init_array+0x5e>
   10c44:	00440413          	addi	s0,s0,4
   10c48:	4481                	li	s1,0
   10c4a:	401c                	lw	a5,0(s0)
   10c4c:	0485                	addi	s1,s1,1
   10c4e:	0411                	addi	s0,s0,4
   10c50:	9782                	jalr	a5
   10c52:	ff24ece3          	bltu	s1,s2,10c4a <__libc_init_array+0x52>
   10c56:	40b2                	lw	ra,12(sp)
   10c58:	4422                	lw	s0,8(sp)
   10c5a:	4492                	lw	s1,4(sp)
   10c5c:	4902                	lw	s2,0(sp)
   10c5e:	0141                	addi	sp,sp,16
   10c60:	8082                	ret

00010c62 <memset>:
   10c62:	433d                	li	t1,15
   10c64:	872a                	mv	a4,a0
   10c66:	02c37363          	bgeu	t1,a2,10c8c <memset+0x2a>
   10c6a:	00f77793          	andi	a5,a4,15
   10c6e:	efbd                	bnez	a5,10cec <memset+0x8a>
   10c70:	e5ad                	bnez	a1,10cda <memset+0x78>
   10c72:	ff067693          	andi	a3,a2,-16
   10c76:	8a3d                	andi	a2,a2,15
   10c78:	96ba                	add	a3,a3,a4
   10c7a:	c30c                	sw	a1,0(a4)
   10c7c:	c34c                	sw	a1,4(a4)
   10c7e:	c70c                	sw	a1,8(a4)
   10c80:	c74c                	sw	a1,12(a4)
   10c82:	0741                	addi	a4,a4,16
   10c84:	fed76be3          	bltu	a4,a3,10c7a <memset+0x18>
   10c88:	e211                	bnez	a2,10c8c <memset+0x2a>
   10c8a:	8082                	ret
   10c8c:	40c306b3          	sub	a3,t1,a2
   10c90:	068a                	slli	a3,a3,0x2
   10c92:	00000297          	auipc	t0,0x0
   10c96:	9696                	add	a3,a3,t0
   10c98:	00a68067          	jr	10(a3)
   10c9c:	00b70723          	sb	a1,14(a4)
   10ca0:	00b706a3          	sb	a1,13(a4)
   10ca4:	00b70623          	sb	a1,12(a4)
   10ca8:	00b705a3          	sb	a1,11(a4)
   10cac:	00b70523          	sb	a1,10(a4)
   10cb0:	00b704a3          	sb	a1,9(a4)
   10cb4:	00b70423          	sb	a1,8(a4)
   10cb8:	00b703a3          	sb	a1,7(a4)
   10cbc:	00b70323          	sb	a1,6(a4)
   10cc0:	00b702a3          	sb	a1,5(a4)
   10cc4:	00b70223          	sb	a1,4(a4)
   10cc8:	00b701a3          	sb	a1,3(a4)
   10ccc:	00b70123          	sb	a1,2(a4)
   10cd0:	00b700a3          	sb	a1,1(a4)
   10cd4:	00b70023          	sb	a1,0(a4)
   10cd8:	8082                	ret
   10cda:	0ff5f593          	zext.b	a1,a1
   10cde:	00859693          	slli	a3,a1,0x8
   10ce2:	8dd5                	or	a1,a1,a3
   10ce4:	01059693          	slli	a3,a1,0x10
   10ce8:	8dd5                	or	a1,a1,a3
   10cea:	b761                	j	10c72 <memset+0x10>
   10cec:	00279693          	slli	a3,a5,0x2
   10cf0:	00000297          	auipc	t0,0x0
   10cf4:	9696                	add	a3,a3,t0
   10cf6:	8286                	mv	t0,ra
   10cf8:	fa8680e7          	jalr	-88(a3)
   10cfc:	8096                	mv	ra,t0
   10cfe:	17c1                	addi	a5,a5,-16
   10d00:	8f1d                	sub	a4,a4,a5
   10d02:	963e                	add	a2,a2,a5
   10d04:	f8c374e3          	bgeu	t1,a2,10c8c <memset+0x2a>
   10d08:	b7a5                	j	10c70 <memset+0xe>

00010d0a <strlen>:
   10d0a:	00357793          	andi	a5,a0,3
   10d0e:	872a                	mv	a4,a0
   10d10:	ef9d                	bnez	a5,10d4e <strlen+0x44>
   10d12:	7f7f86b7          	lui	a3,0x7f7f8
   10d16:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   10d1a:	55fd                	li	a1,-1
   10d1c:	4310                	lw	a2,0(a4)
   10d1e:	0711                	addi	a4,a4,4
   10d20:	00d677b3          	and	a5,a2,a3
   10d24:	97b6                	add	a5,a5,a3
   10d26:	8fd1                	or	a5,a5,a2
   10d28:	8fd5                	or	a5,a5,a3
   10d2a:	feb789e3          	beq	a5,a1,10d1c <strlen+0x12>
   10d2e:	ffc74683          	lbu	a3,-4(a4)
   10d32:	40a707b3          	sub	a5,a4,a0
   10d36:	ca8d                	beqz	a3,10d68 <strlen+0x5e>
   10d38:	ffd74683          	lbu	a3,-3(a4)
   10d3c:	c29d                	beqz	a3,10d62 <strlen+0x58>
   10d3e:	ffe74503          	lbu	a0,-2(a4)
   10d42:	00a03533          	snez	a0,a0
   10d46:	953e                	add	a0,a0,a5
   10d48:	1579                	addi	a0,a0,-2
   10d4a:	8082                	ret
   10d4c:	d2f9                	beqz	a3,10d12 <strlen+0x8>
   10d4e:	00074783          	lbu	a5,0(a4)
   10d52:	0705                	addi	a4,a4,1
   10d54:	00377693          	andi	a3,a4,3
   10d58:	fbf5                	bnez	a5,10d4c <strlen+0x42>
   10d5a:	8f09                	sub	a4,a4,a0
   10d5c:	fff70513          	addi	a0,a4,-1
   10d60:	8082                	ret
   10d62:	ffd78513          	addi	a0,a5,-3
   10d66:	8082                	ret
   10d68:	ffc78513          	addi	a0,a5,-4
   10d6c:	8082                	ret

00010d6e <__call_exitprocs>:
   10d6e:	7179                	addi	sp,sp,-48
   10d70:	cc52                	sw	s4,24(sp)
   10d72:	d04a                	sw	s2,32(sp)
   10d74:	f281a903          	lw	s2,-216(gp) # 1b738 <__atexit>
   10d78:	d606                	sw	ra,44(sp)
   10d7a:	06090c63          	beqz	s2,10df2 <__call_exitprocs+0x84>
   10d7e:	ce4e                	sw	s3,28(sp)
   10d80:	ca56                	sw	s5,20(sp)
   10d82:	c85a                	sw	s6,16(sp)
   10d84:	c65e                	sw	s7,12(sp)
   10d86:	d422                	sw	s0,40(sp)
   10d88:	d226                	sw	s1,36(sp)
   10d8a:	c462                	sw	s8,8(sp)
   10d8c:	8b2a                	mv	s6,a0
   10d8e:	8bae                	mv	s7,a1
   10d90:	59fd                	li	s3,-1
   10d92:	4a85                	li	s5,1
   10d94:	00492483          	lw	s1,4(s2)
   10d98:	fff48413          	addi	s0,s1,-1
   10d9c:	04044463          	bltz	s0,10de4 <__call_exitprocs+0x76>
   10da0:	048a                	slli	s1,s1,0x2
   10da2:	94ca                	add	s1,s1,s2
   10da4:	040b9c63          	bnez	s7,10dfc <__call_exitprocs+0x8e>
   10da8:	00492783          	lw	a5,4(s2)
   10dac:	40d4                	lw	a3,4(s1)
   10dae:	17fd                	addi	a5,a5,-1
   10db0:	08878063          	beq	a5,s0,10e30 <__call_exitprocs+0xc2>
   10db4:	0004a223          	sw	zero,4(s1)
   10db8:	c295                	beqz	a3,10ddc <__call_exitprocs+0x6e>
   10dba:	18892783          	lw	a5,392(s2)
   10dbe:	008a9733          	sll	a4,s5,s0
   10dc2:	00492c03          	lw	s8,4(s2)
   10dc6:	8ff9                	and	a5,a5,a4
   10dc8:	e3b9                	bnez	a5,10e0e <__call_exitprocs+0xa0>
   10dca:	9682                	jalr	a3
   10dcc:	00492703          	lw	a4,4(s2)
   10dd0:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   10dd4:	05871b63          	bne	a4,s8,10e2a <__call_exitprocs+0xbc>
   10dd8:	05279963          	bne	a5,s2,10e2a <__call_exitprocs+0xbc>
   10ddc:	147d                	addi	s0,s0,-1
   10dde:	14f1                	addi	s1,s1,-4
   10de0:	fd3412e3          	bne	s0,s3,10da4 <__call_exitprocs+0x36>
   10de4:	5422                	lw	s0,40(sp)
   10de6:	5492                	lw	s1,36(sp)
   10de8:	49f2                	lw	s3,28(sp)
   10dea:	4ad2                	lw	s5,20(sp)
   10dec:	4b42                	lw	s6,16(sp)
   10dee:	4bb2                	lw	s7,12(sp)
   10df0:	4c22                	lw	s8,8(sp)
   10df2:	50b2                	lw	ra,44(sp)
   10df4:	5902                	lw	s2,32(sp)
   10df6:	4a62                	lw	s4,24(sp)
   10df8:	6145                	addi	sp,sp,48
   10dfa:	8082                	ret
   10dfc:	1044a783          	lw	a5,260(s1)
   10e00:	fb7784e3          	beq	a5,s7,10da8 <__call_exitprocs+0x3a>
   10e04:	147d                	addi	s0,s0,-1
   10e06:	14f1                	addi	s1,s1,-4
   10e08:	ff341ae3          	bne	s0,s3,10dfc <__call_exitprocs+0x8e>
   10e0c:	bfe1                	j	10de4 <__call_exitprocs+0x76>
   10e0e:	18c92783          	lw	a5,396(s2)
   10e12:	0844a583          	lw	a1,132(s1)
   10e16:	8f7d                	and	a4,a4,a5
   10e18:	ef19                	bnez	a4,10e36 <__call_exitprocs+0xc8>
   10e1a:	855a                	mv	a0,s6
   10e1c:	9682                	jalr	a3
   10e1e:	00492703          	lw	a4,4(s2)
   10e22:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   10e26:	fb8709e3          	beq	a4,s8,10dd8 <__call_exitprocs+0x6a>
   10e2a:	dfcd                	beqz	a5,10de4 <__call_exitprocs+0x76>
   10e2c:	893e                	mv	s2,a5
   10e2e:	b79d                	j	10d94 <__call_exitprocs+0x26>
   10e30:	00892223          	sw	s0,4(s2)
   10e34:	b751                	j	10db8 <__call_exitprocs+0x4a>
   10e36:	852e                	mv	a0,a1
   10e38:	9682                	jalr	a3
   10e3a:	bf49                	j	10dcc <__call_exitprocs+0x5e>

00010e3c <atexit>:
   10e3c:	85aa                	mv	a1,a0
   10e3e:	4681                	li	a3,0
   10e40:	4601                	li	a2,0
   10e42:	4501                	li	a0,0
   10e44:	07c0306f          	j	13ec0 <__register_exitproc>

00010e48 <_malloc_trim_r>:
   10e48:	1101                	addi	sp,sp,-32
   10e4a:	c64e                	sw	s3,12(sp)
   10e4c:	69ed                	lui	s3,0x1b
   10e4e:	cc22                	sw	s0,24(sp)
   10e50:	ca26                	sw	s1,20(sp)
   10e52:	c84a                	sw	s2,16(sp)
   10e54:	c452                	sw	s4,8(sp)
   10e56:	ce06                	sw	ra,28(sp)
   10e58:	8a2e                	mv	s4,a1
   10e5a:	892a                	mv	s2,a0
   10e5c:	14098993          	addi	s3,s3,320 # 1b140 <__malloc_av_>
   10e60:	07b000ef          	jal	116da <__malloc_lock>
   10e64:	0089a703          	lw	a4,8(s3)
   10e68:	6785                	lui	a5,0x1
   10e6a:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   10e6c:	4344                	lw	s1,4(a4)
   10e6e:	6705                	lui	a4,0x1
   10e70:	98f1                	andi	s1,s1,-4
   10e72:	00f48433          	add	s0,s1,a5
   10e76:	41440433          	sub	s0,s0,s4
   10e7a:	8031                	srli	s0,s0,0xc
   10e7c:	147d                	addi	s0,s0,-1
   10e7e:	0432                	slli	s0,s0,0xc
   10e80:	00e44b63          	blt	s0,a4,10e96 <_malloc_trim_r+0x4e>
   10e84:	4581                	li	a1,0
   10e86:	854a                	mv	a0,s2
   10e88:	4cd020ef          	jal	13b54 <_sbrk_r>
   10e8c:	0089a783          	lw	a5,8(s3)
   10e90:	97a6                	add	a5,a5,s1
   10e92:	00f50e63          	beq	a0,a5,10eae <_malloc_trim_r+0x66>
   10e96:	854a                	mv	a0,s2
   10e98:	045000ef          	jal	116dc <__malloc_unlock>
   10e9c:	40f2                	lw	ra,28(sp)
   10e9e:	4462                	lw	s0,24(sp)
   10ea0:	44d2                	lw	s1,20(sp)
   10ea2:	4942                	lw	s2,16(sp)
   10ea4:	49b2                	lw	s3,12(sp)
   10ea6:	4a22                	lw	s4,8(sp)
   10ea8:	4501                	li	a0,0
   10eaa:	6105                	addi	sp,sp,32
   10eac:	8082                	ret
   10eae:	408005b3          	neg	a1,s0
   10eb2:	854a                	mv	a0,s2
   10eb4:	4a1020ef          	jal	13b54 <_sbrk_r>
   10eb8:	57fd                	li	a5,-1
   10eba:	02f50963          	beq	a0,a5,10eec <_malloc_trim_r+0xa4>
   10ebe:	09418793          	addi	a5,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   10ec2:	4398                	lw	a4,0(a5)
   10ec4:	0089a683          	lw	a3,8(s3)
   10ec8:	8c81                	sub	s1,s1,s0
   10eca:	0014e493          	ori	s1,s1,1
   10ece:	8f01                	sub	a4,a4,s0
   10ed0:	854a                	mv	a0,s2
   10ed2:	c2c4                	sw	s1,4(a3)
   10ed4:	c398                	sw	a4,0(a5)
   10ed6:	007000ef          	jal	116dc <__malloc_unlock>
   10eda:	40f2                	lw	ra,28(sp)
   10edc:	4462                	lw	s0,24(sp)
   10ede:	44d2                	lw	s1,20(sp)
   10ee0:	4942                	lw	s2,16(sp)
   10ee2:	49b2                	lw	s3,12(sp)
   10ee4:	4a22                	lw	s4,8(sp)
   10ee6:	4505                	li	a0,1
   10ee8:	6105                	addi	sp,sp,32
   10eea:	8082                	ret
   10eec:	4581                	li	a1,0
   10eee:	854a                	mv	a0,s2
   10ef0:	465020ef          	jal	13b54 <_sbrk_r>
   10ef4:	0089a703          	lw	a4,8(s3)
   10ef8:	46bd                	li	a3,15
   10efa:	40e507b3          	sub	a5,a0,a4
   10efe:	f8f6dce3          	bge	a3,a5,10e96 <_malloc_trim_r+0x4e>
   10f02:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   10f06:	0017e793          	ori	a5,a5,1
   10f0a:	c35c                	sw	a5,4(a4)
   10f0c:	8d15                	sub	a0,a0,a3
   10f0e:	08a1aa23          	sw	a0,148(gp) # 1b8a4 <__malloc_current_mallinfo>
   10f12:	b751                	j	10e96 <_malloc_trim_r+0x4e>

00010f14 <_free_r>:
   10f14:	10058a63          	beqz	a1,11028 <_free_r+0x114>
   10f18:	1141                	addi	sp,sp,-16
   10f1a:	c422                	sw	s0,8(sp)
   10f1c:	c226                	sw	s1,4(sp)
   10f1e:	842e                	mv	s0,a1
   10f20:	84aa                	mv	s1,a0
   10f22:	c606                	sw	ra,12(sp)
   10f24:	7b6000ef          	jal	116da <__malloc_lock>
   10f28:	ffc42503          	lw	a0,-4(s0)
   10f2c:	ff840713          	addi	a4,s0,-8
   10f30:	65ed                	lui	a1,0x1b
   10f32:	ffe57793          	andi	a5,a0,-2
   10f36:	00f70633          	add	a2,a4,a5
   10f3a:	14058593          	addi	a1,a1,320 # 1b140 <__malloc_av_>
   10f3e:	4254                	lw	a3,4(a2)
   10f40:	0085a803          	lw	a6,8(a1)
   10f44:	9af1                	andi	a3,a3,-4
   10f46:	12c80363          	beq	a6,a2,1106c <_free_r+0x158>
   10f4a:	c254                	sw	a3,4(a2)
   10f4c:	8905                	andi	a0,a0,1
   10f4e:	00d60833          	add	a6,a2,a3
   10f52:	e935                	bnez	a0,10fc6 <_free_r+0xb2>
   10f54:	ff842303          	lw	t1,-8(s0)
   10f58:	00482803          	lw	a6,4(a6)
   10f5c:	656d                	lui	a0,0x1b
   10f5e:	40670733          	sub	a4,a4,t1
   10f62:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   10f66:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   10f6a:	979a                	add	a5,a5,t1
   10f6c:	00187813          	andi	a6,a6,1
   10f70:	0ea88163          	beq	a7,a0,11052 <_free_r+0x13e>
   10f74:	00c72303          	lw	t1,12(a4)
   10f78:	0068a623          	sw	t1,12(a7)
   10f7c:	01132423          	sw	a7,8(t1)
   10f80:	10080e63          	beqz	a6,1109c <_free_r+0x188>
   10f84:	0017e693          	ori	a3,a5,1
   10f88:	c354                	sw	a3,4(a4)
   10f8a:	c21c                	sw	a5,0(a2)
   10f8c:	1ff00693          	li	a3,511
   10f90:	04f6e863          	bltu	a3,a5,10fe0 <_free_r+0xcc>
   10f94:	ff87f693          	andi	a3,a5,-8
   10f98:	06a1                	addi	a3,a3,8
   10f9a:	41c8                	lw	a0,4(a1)
   10f9c:	96ae                	add	a3,a3,a1
   10f9e:	4290                	lw	a2,0(a3)
   10fa0:	0057d813          	srli	a6,a5,0x5
   10fa4:	4785                	li	a5,1
   10fa6:	010797b3          	sll	a5,a5,a6
   10faa:	8fc9                	or	a5,a5,a0
   10fac:	ff868513          	addi	a0,a3,-8
   10fb0:	c748                	sw	a0,12(a4)
   10fb2:	c710                	sw	a2,8(a4)
   10fb4:	c1dc                	sw	a5,4(a1)
   10fb6:	c298                	sw	a4,0(a3)
   10fb8:	c658                	sw	a4,12(a2)
   10fba:	4422                	lw	s0,8(sp)
   10fbc:	40b2                	lw	ra,12(sp)
   10fbe:	8526                	mv	a0,s1
   10fc0:	4492                	lw	s1,4(sp)
   10fc2:	0141                	addi	sp,sp,16
   10fc4:	af21                	j	116dc <__malloc_unlock>
   10fc6:	00482503          	lw	a0,4(a6)
   10fca:	8905                	andi	a0,a0,1
   10fcc:	cd39                	beqz	a0,1102a <_free_r+0x116>
   10fce:	0017e693          	ori	a3,a5,1
   10fd2:	fed42e23          	sw	a3,-4(s0)
   10fd6:	c21c                	sw	a5,0(a2)
   10fd8:	1ff00693          	li	a3,511
   10fdc:	faf6fce3          	bgeu	a3,a5,10f94 <_free_r+0x80>
   10fe0:	0097d693          	srli	a3,a5,0x9
   10fe4:	4611                	li	a2,4
   10fe6:	0ad66d63          	bltu	a2,a3,110a0 <_free_r+0x18c>
   10fea:	0067d693          	srli	a3,a5,0x6
   10fee:	03968513          	addi	a0,a3,57
   10ff2:	03868613          	addi	a2,a3,56
   10ff6:	050e                	slli	a0,a0,0x3
   10ff8:	952e                	add	a0,a0,a1
   10ffa:	4114                	lw	a3,0(a0)
   10ffc:	1561                	addi	a0,a0,-8
   10ffe:	00d51663          	bne	a0,a3,1100a <_free_r+0xf6>
   11002:	a8f1                	j	110de <_free_r+0x1ca>
   11004:	4694                	lw	a3,8(a3)
   11006:	00d50663          	beq	a0,a3,11012 <_free_r+0xfe>
   1100a:	42d0                	lw	a2,4(a3)
   1100c:	9a71                	andi	a2,a2,-4
   1100e:	fec7ebe3          	bltu	a5,a2,11004 <_free_r+0xf0>
   11012:	46c8                	lw	a0,12(a3)
   11014:	c748                	sw	a0,12(a4)
   11016:	c714                	sw	a3,8(a4)
   11018:	4422                	lw	s0,8(sp)
   1101a:	c518                	sw	a4,8(a0)
   1101c:	40b2                	lw	ra,12(sp)
   1101e:	8526                	mv	a0,s1
   11020:	4492                	lw	s1,4(sp)
   11022:	c6d8                	sw	a4,12(a3)
   11024:	0141                	addi	sp,sp,16
   11026:	ad5d                	j	116dc <__malloc_unlock>
   11028:	8082                	ret
   1102a:	656d                	lui	a0,0x1b
   1102c:	97b6                	add	a5,a5,a3
   1102e:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   11032:	4614                	lw	a3,8(a2)
   11034:	08a68b63          	beq	a3,a0,110ca <_free_r+0x1b6>
   11038:	00c62803          	lw	a6,12(a2)
   1103c:	0017e513          	ori	a0,a5,1
   11040:	00f70633          	add	a2,a4,a5
   11044:	0106a623          	sw	a6,12(a3)
   11048:	00d82423          	sw	a3,8(a6)
   1104c:	c348                	sw	a0,4(a4)
   1104e:	c21c                	sw	a5,0(a2)
   11050:	bf35                	j	10f8c <_free_r+0x78>
   11052:	0c081d63          	bnez	a6,1112c <_free_r+0x218>
   11056:	460c                	lw	a1,8(a2)
   11058:	4650                	lw	a2,12(a2)
   1105a:	96be                	add	a3,a3,a5
   1105c:	0016e793          	ori	a5,a3,1
   11060:	c5d0                	sw	a2,12(a1)
   11062:	c60c                	sw	a1,8(a2)
   11064:	c35c                	sw	a5,4(a4)
   11066:	9736                	add	a4,a4,a3
   11068:	c314                	sw	a3,0(a4)
   1106a:	bf81                	j	10fba <_free_r+0xa6>
   1106c:	8905                	andi	a0,a0,1
   1106e:	96be                	add	a3,a3,a5
   11070:	e909                	bnez	a0,11082 <_free_r+0x16e>
   11072:	ff842503          	lw	a0,-8(s0)
   11076:	8f09                	sub	a4,a4,a0
   11078:	475c                	lw	a5,12(a4)
   1107a:	4710                	lw	a2,8(a4)
   1107c:	96aa                	add	a3,a3,a0
   1107e:	c65c                	sw	a5,12(a2)
   11080:	c790                	sw	a2,8(a5)
   11082:	0016e613          	ori	a2,a3,1
   11086:	f1c1a783          	lw	a5,-228(gp) # 1b72c <__malloc_trim_threshold>
   1108a:	c350                	sw	a2,4(a4)
   1108c:	c598                	sw	a4,8(a1)
   1108e:	f2f6e6e3          	bltu	a3,a5,10fba <_free_r+0xa6>
   11092:	f341a583          	lw	a1,-204(gp) # 1b744 <__malloc_top_pad>
   11096:	8526                	mv	a0,s1
   11098:	3b45                	jal	10e48 <_malloc_trim_r>
   1109a:	b705                	j	10fba <_free_r+0xa6>
   1109c:	97b6                	add	a5,a5,a3
   1109e:	bf51                	j	11032 <_free_r+0x11e>
   110a0:	4651                	li	a2,20
   110a2:	00d67e63          	bgeu	a2,a3,110be <_free_r+0x1aa>
   110a6:	05400613          	li	a2,84
   110aa:	04d66463          	bltu	a2,a3,110f2 <_free_r+0x1de>
   110ae:	00c7d693          	srli	a3,a5,0xc
   110b2:	06f68513          	addi	a0,a3,111
   110b6:	06e68613          	addi	a2,a3,110
   110ba:	050e                	slli	a0,a0,0x3
   110bc:	bf35                	j	10ff8 <_free_r+0xe4>
   110be:	05c68513          	addi	a0,a3,92
   110c2:	05b68613          	addi	a2,a3,91
   110c6:	050e                	slli	a0,a0,0x3
   110c8:	bf05                	j	10ff8 <_free_r+0xe4>
   110ca:	c9d8                	sw	a4,20(a1)
   110cc:	c998                	sw	a4,16(a1)
   110ce:	0017e693          	ori	a3,a5,1
   110d2:	c748                	sw	a0,12(a4)
   110d4:	c708                	sw	a0,8(a4)
   110d6:	c354                	sw	a3,4(a4)
   110d8:	973e                	add	a4,a4,a5
   110da:	c31c                	sw	a5,0(a4)
   110dc:	bdf9                	j	10fba <_free_r+0xa6>
   110de:	0045a803          	lw	a6,4(a1)
   110e2:	8609                	srai	a2,a2,0x2
   110e4:	4785                	li	a5,1
   110e6:	00c797b3          	sll	a5,a5,a2
   110ea:	0107e7b3          	or	a5,a5,a6
   110ee:	c1dc                	sw	a5,4(a1)
   110f0:	b715                	j	11014 <_free_r+0x100>
   110f2:	15400613          	li	a2,340
   110f6:	00d66a63          	bltu	a2,a3,1110a <_free_r+0x1f6>
   110fa:	00f7d693          	srli	a3,a5,0xf
   110fe:	07868513          	addi	a0,a3,120
   11102:	07768613          	addi	a2,a3,119
   11106:	050e                	slli	a0,a0,0x3
   11108:	bdc5                	j	10ff8 <_free_r+0xe4>
   1110a:	55400613          	li	a2,1364
   1110e:	00d66a63          	bltu	a2,a3,11122 <_free_r+0x20e>
   11112:	0127d693          	srli	a3,a5,0x12
   11116:	07d68513          	addi	a0,a3,125
   1111a:	07c68613          	addi	a2,a3,124
   1111e:	050e                	slli	a0,a0,0x3
   11120:	bde1                	j	10ff8 <_free_r+0xe4>
   11122:	3f800513          	li	a0,1016
   11126:	07e00613          	li	a2,126
   1112a:	b5f9                	j	10ff8 <_free_r+0xe4>
   1112c:	0017e693          	ori	a3,a5,1
   11130:	c354                	sw	a3,4(a4)
   11132:	c21c                	sw	a5,0(a2)
   11134:	b559                	j	10fba <_free_r+0xa6>

00011136 <_malloc_r>:
   11136:	7179                	addi	sp,sp,-48
   11138:	ce4e                	sw	s3,28(sp)
   1113a:	d606                	sw	ra,44(sp)
   1113c:	d422                	sw	s0,40(sp)
   1113e:	d226                	sw	s1,36(sp)
   11140:	d04a                	sw	s2,32(sp)
   11142:	00b58793          	addi	a5,a1,11
   11146:	4759                	li	a4,22
   11148:	89aa                	mv	s3,a0
   1114a:	04f76863          	bltu	a4,a5,1119a <_malloc_r+0x64>
   1114e:	47c1                	li	a5,16
   11150:	16b7e863          	bltu	a5,a1,112c0 <_malloc_r+0x18a>
   11154:	2359                	jal	116da <__malloc_lock>
   11156:	47e1                	li	a5,24
   11158:	4589                	li	a1,2
   1115a:	44c1                	li	s1,16
   1115c:	696d                	lui	s2,0x1b
   1115e:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   11162:	97ca                	add	a5,a5,s2
   11164:	43c0                	lw	s0,4(a5)
   11166:	ff878713          	addi	a4,a5,-8
   1116a:	24e40d63          	beq	s0,a4,113c4 <_malloc_r+0x28e>
   1116e:	405c                	lw	a5,4(s0)
   11170:	4454                	lw	a3,12(s0)
   11172:	4410                	lw	a2,8(s0)
   11174:	9bf1                	andi	a5,a5,-4
   11176:	97a2                	add	a5,a5,s0
   11178:	43d8                	lw	a4,4(a5)
   1117a:	c654                	sw	a3,12(a2)
   1117c:	c690                	sw	a2,8(a3)
   1117e:	00176713          	ori	a4,a4,1
   11182:	854e                	mv	a0,s3
   11184:	c3d8                	sw	a4,4(a5)
   11186:	2b99                	jal	116dc <__malloc_unlock>
   11188:	00840513          	addi	a0,s0,8
   1118c:	50b2                	lw	ra,44(sp)
   1118e:	5422                	lw	s0,40(sp)
   11190:	5492                	lw	s1,36(sp)
   11192:	5902                	lw	s2,32(sp)
   11194:	49f2                	lw	s3,28(sp)
   11196:	6145                	addi	sp,sp,48
   11198:	8082                	ret
   1119a:	ff87f493          	andi	s1,a5,-8
   1119e:	1207c163          	bltz	a5,112c0 <_malloc_r+0x18a>
   111a2:	10b4ef63          	bltu	s1,a1,112c0 <_malloc_r+0x18a>
   111a6:	2b15                	jal	116da <__malloc_lock>
   111a8:	1f700793          	li	a5,503
   111ac:	2c97fb63          	bgeu	a5,s1,11482 <_malloc_r+0x34c>
   111b0:	0094d793          	srli	a5,s1,0x9
   111b4:	10078b63          	beqz	a5,112ca <_malloc_r+0x194>
   111b8:	4711                	li	a4,4
   111ba:	24f76a63          	bltu	a4,a5,1140e <_malloc_r+0x2d8>
   111be:	0064d793          	srli	a5,s1,0x6
   111c2:	03978593          	addi	a1,a5,57
   111c6:	03878813          	addi	a6,a5,56
   111ca:	00359613          	slli	a2,a1,0x3
   111ce:	696d                	lui	s2,0x1b
   111d0:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   111d4:	964a                	add	a2,a2,s2
   111d6:	4240                	lw	s0,4(a2)
   111d8:	1661                	addi	a2,a2,-8
   111da:	02860163          	beq	a2,s0,111fc <_malloc_r+0xc6>
   111de:	453d                	li	a0,15
   111e0:	a039                	j	111ee <_malloc_r+0xb8>
   111e2:	4454                	lw	a3,12(s0)
   111e4:	1c075e63          	bgez	a4,113c0 <_malloc_r+0x28a>
   111e8:	00d60a63          	beq	a2,a3,111fc <_malloc_r+0xc6>
   111ec:	8436                	mv	s0,a3
   111ee:	405c                	lw	a5,4(s0)
   111f0:	9bf1                	andi	a5,a5,-4
   111f2:	40978733          	sub	a4,a5,s1
   111f6:	fee556e3          	bge	a0,a4,111e2 <_malloc_r+0xac>
   111fa:	85c2                	mv	a1,a6
   111fc:	01092403          	lw	s0,16(s2)
   11200:	686d                	lui	a6,0x1b
   11202:	14880813          	addi	a6,a6,328 # 1b148 <__malloc_av_+0x8>
   11206:	1b040a63          	beq	s0,a6,113ba <_malloc_r+0x284>
   1120a:	405c                	lw	a5,4(s0)
   1120c:	46bd                	li	a3,15
   1120e:	9bf1                	andi	a5,a5,-4
   11210:	40978733          	sub	a4,a5,s1
   11214:	26e6cc63          	blt	a3,a4,1148c <_malloc_r+0x356>
   11218:	01092a23          	sw	a6,20(s2)
   1121c:	01092823          	sw	a6,16(s2)
   11220:	24075763          	bgez	a4,1146e <_malloc_r+0x338>
   11224:	1ff00713          	li	a4,511
   11228:	00492503          	lw	a0,4(s2)
   1122c:	1af76163          	bltu	a4,a5,113ce <_malloc_r+0x298>
   11230:	ff87f713          	andi	a4,a5,-8
   11234:	0721                	addi	a4,a4,8
   11236:	974a                	add	a4,a4,s2
   11238:	4314                	lw	a3,0(a4)
   1123a:	0057d613          	srli	a2,a5,0x5
   1123e:	4785                	li	a5,1
   11240:	00c797b3          	sll	a5,a5,a2
   11244:	8d5d                	or	a0,a0,a5
   11246:	ff870793          	addi	a5,a4,-8
   1124a:	c45c                	sw	a5,12(s0)
   1124c:	c414                	sw	a3,8(s0)
   1124e:	00a92223          	sw	a0,4(s2)
   11252:	c300                	sw	s0,0(a4)
   11254:	c6c0                	sw	s0,12(a3)
   11256:	4025d793          	srai	a5,a1,0x2
   1125a:	4605                	li	a2,1
   1125c:	00f61633          	sll	a2,a2,a5
   11260:	06c56c63          	bltu	a0,a2,112d8 <_malloc_r+0x1a2>
   11264:	00a677b3          	and	a5,a2,a0
   11268:	ef81                	bnez	a5,11280 <_malloc_r+0x14a>
   1126a:	0606                	slli	a2,a2,0x1
   1126c:	99f1                	andi	a1,a1,-4
   1126e:	00a677b3          	and	a5,a2,a0
   11272:	0591                	addi	a1,a1,4
   11274:	e791                	bnez	a5,11280 <_malloc_r+0x14a>
   11276:	0606                	slli	a2,a2,0x1
   11278:	00a677b3          	and	a5,a2,a0
   1127c:	0591                	addi	a1,a1,4
   1127e:	dfe5                	beqz	a5,11276 <_malloc_r+0x140>
   11280:	48bd                	li	a7,15
   11282:	00359313          	slli	t1,a1,0x3
   11286:	934a                	add	t1,t1,s2
   11288:	851a                	mv	a0,t1
   1128a:	455c                	lw	a5,12(a0)
   1128c:	8e2e                	mv	t3,a1
   1128e:	1af50063          	beq	a0,a5,1142e <_malloc_r+0x2f8>
   11292:	43d8                	lw	a4,4(a5)
   11294:	843e                	mv	s0,a5
   11296:	47dc                	lw	a5,12(a5)
   11298:	9b71                	andi	a4,a4,-4
   1129a:	409706b3          	sub	a3,a4,s1
   1129e:	18d8cf63          	blt	a7,a3,1143c <_malloc_r+0x306>
   112a2:	fe06c6e3          	bltz	a3,1128e <_malloc_r+0x158>
   112a6:	9722                	add	a4,a4,s0
   112a8:	4354                	lw	a3,4(a4)
   112aa:	4410                	lw	a2,8(s0)
   112ac:	854e                	mv	a0,s3
   112ae:	0016e693          	ori	a3,a3,1
   112b2:	c354                	sw	a3,4(a4)
   112b4:	c65c                	sw	a5,12(a2)
   112b6:	c790                	sw	a2,8(a5)
   112b8:	2115                	jal	116dc <__malloc_unlock>
   112ba:	00840513          	addi	a0,s0,8
   112be:	b5f9                	j	1118c <_malloc_r+0x56>
   112c0:	47b1                	li	a5,12
   112c2:	00f9a023          	sw	a5,0(s3)
   112c6:	4501                	li	a0,0
   112c8:	b5d1                	j	1118c <_malloc_r+0x56>
   112ca:	20000613          	li	a2,512
   112ce:	04000593          	li	a1,64
   112d2:	03f00813          	li	a6,63
   112d6:	bde5                	j	111ce <_malloc_r+0x98>
   112d8:	00892403          	lw	s0,8(s2)
   112dc:	c85a                	sw	s6,16(sp)
   112de:	405c                	lw	a5,4(s0)
   112e0:	ffc7fb13          	andi	s6,a5,-4
   112e4:	009b6763          	bltu	s6,s1,112f2 <_malloc_r+0x1bc>
   112e8:	409b0733          	sub	a4,s6,s1
   112ec:	47bd                	li	a5,15
   112ee:	0ae7c163          	blt	a5,a4,11390 <_malloc_r+0x25a>
   112f2:	c266                	sw	s9,4(sp)
   112f4:	ca56                	sw	s5,20(sp)
   112f6:	f181a703          	lw	a4,-232(gp) # 1b728 <__malloc_sbrk_base>
   112fa:	f341aa83          	lw	s5,-204(gp) # 1b744 <__malloc_top_pad>
   112fe:	cc52                	sw	s4,24(sp)
   11300:	c65e                	sw	s7,12(sp)
   11302:	57fd                	li	a5,-1
   11304:	01640a33          	add	s4,s0,s6
   11308:	9aa6                	add	s5,s5,s1
   1130a:	2cf70763          	beq	a4,a5,115d8 <_malloc_r+0x4a2>
   1130e:	6785                	lui	a5,0x1
   11310:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   11312:	9abe                	add	s5,s5,a5
   11314:	77fd                	lui	a5,0xfffff
   11316:	00fafab3          	and	s5,s5,a5
   1131a:	85d6                	mv	a1,s5
   1131c:	854e                	mv	a0,s3
   1131e:	037020ef          	jal	13b54 <_sbrk_r>
   11322:	57fd                	li	a5,-1
   11324:	8baa                	mv	s7,a0
   11326:	32f50963          	beq	a0,a5,11658 <_malloc_r+0x522>
   1132a:	c462                	sw	s8,8(sp)
   1132c:	19456e63          	bltu	a0,s4,114c8 <_malloc_r+0x392>
   11330:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   11334:	000c2583          	lw	a1,0(s8)
   11338:	95d6                	add	a1,a1,s5
   1133a:	00bc2023          	sw	a1,0(s8)
   1133e:	872e                	mv	a4,a1
   11340:	1eaa1863          	bne	s4,a0,11530 <_malloc_r+0x3fa>
   11344:	01451793          	slli	a5,a0,0x14
   11348:	1e079463          	bnez	a5,11530 <_malloc_r+0x3fa>
   1134c:	00892b83          	lw	s7,8(s2)
   11350:	015b07b3          	add	a5,s6,s5
   11354:	0017e793          	ori	a5,a5,1
   11358:	00fba223          	sw	a5,4(s7)
   1135c:	f301a683          	lw	a3,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   11360:	00b6f463          	bgeu	a3,a1,11368 <_malloc_r+0x232>
   11364:	f2b1a823          	sw	a1,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   11368:	f2c1a683          	lw	a3,-212(gp) # 1b73c <__malloc_max_total_mem>
   1136c:	00b6f463          	bgeu	a3,a1,11374 <_malloc_r+0x23e>
   11370:	f2b1a623          	sw	a1,-212(gp) # 1b73c <__malloc_max_total_mem>
   11374:	4c22                	lw	s8,8(sp)
   11376:	845e                	mv	s0,s7
   11378:	9bf1                	andi	a5,a5,-4
   1137a:	40978733          	sub	a4,a5,s1
   1137e:	2897eb63          	bltu	a5,s1,11614 <_malloc_r+0x4de>
   11382:	47bd                	li	a5,15
   11384:	28e7d863          	bge	a5,a4,11614 <_malloc_r+0x4de>
   11388:	4a62                	lw	s4,24(sp)
   1138a:	4ad2                	lw	s5,20(sp)
   1138c:	4bb2                	lw	s7,12(sp)
   1138e:	4c92                	lw	s9,4(sp)
   11390:	0014e793          	ori	a5,s1,1
   11394:	c05c                	sw	a5,4(s0)
   11396:	94a2                	add	s1,s1,s0
   11398:	00992423          	sw	s1,8(s2)
   1139c:	00176713          	ori	a4,a4,1
   113a0:	854e                	mv	a0,s3
   113a2:	c0d8                	sw	a4,4(s1)
   113a4:	2e25                	jal	116dc <__malloc_unlock>
   113a6:	50b2                	lw	ra,44(sp)
   113a8:	00840513          	addi	a0,s0,8
   113ac:	5422                	lw	s0,40(sp)
   113ae:	4b42                	lw	s6,16(sp)
   113b0:	5492                	lw	s1,36(sp)
   113b2:	5902                	lw	s2,32(sp)
   113b4:	49f2                	lw	s3,28(sp)
   113b6:	6145                	addi	sp,sp,48
   113b8:	8082                	ret
   113ba:	00492503          	lw	a0,4(s2)
   113be:	bd61                	j	11256 <_malloc_r+0x120>
   113c0:	4410                	lw	a2,8(s0)
   113c2:	bb55                	j	11176 <_malloc_r+0x40>
   113c4:	47c0                	lw	s0,12(a5)
   113c6:	0589                	addi	a1,a1,2
   113c8:	e2878ae3          	beq	a5,s0,111fc <_malloc_r+0xc6>
   113cc:	b34d                	j	1116e <_malloc_r+0x38>
   113ce:	0097d713          	srli	a4,a5,0x9
   113d2:	4691                	li	a3,4
   113d4:	0ee6f263          	bgeu	a3,a4,114b8 <_malloc_r+0x382>
   113d8:	46d1                	li	a3,20
   113da:	24e6e663          	bltu	a3,a4,11626 <_malloc_r+0x4f0>
   113de:	05c70613          	addi	a2,a4,92
   113e2:	05b70693          	addi	a3,a4,91
   113e6:	060e                	slli	a2,a2,0x3
   113e8:	964a                	add	a2,a2,s2
   113ea:	4218                	lw	a4,0(a2)
   113ec:	1661                	addi	a2,a2,-8
   113ee:	00e61663          	bne	a2,a4,113fa <_malloc_r+0x2c4>
   113f2:	a2ed                	j	115dc <_malloc_r+0x4a6>
   113f4:	4718                	lw	a4,8(a4)
   113f6:	00e60663          	beq	a2,a4,11402 <_malloc_r+0x2cc>
   113fa:	4354                	lw	a3,4(a4)
   113fc:	9af1                	andi	a3,a3,-4
   113fe:	fed7ebe3          	bltu	a5,a3,113f4 <_malloc_r+0x2be>
   11402:	4750                	lw	a2,12(a4)
   11404:	c450                	sw	a2,12(s0)
   11406:	c418                	sw	a4,8(s0)
   11408:	c600                	sw	s0,8(a2)
   1140a:	c740                	sw	s0,12(a4)
   1140c:	b5a9                	j	11256 <_malloc_r+0x120>
   1140e:	4751                	li	a4,20
   11410:	0cf77363          	bgeu	a4,a5,114d6 <_malloc_r+0x3a0>
   11414:	05400713          	li	a4,84
   11418:	22f76363          	bltu	a4,a5,1163e <_malloc_r+0x508>
   1141c:	00c4d793          	srli	a5,s1,0xc
   11420:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe3613>
   11424:	06e78813          	addi	a6,a5,110
   11428:	00359613          	slli	a2,a1,0x3
   1142c:	b34d                	j	111ce <_malloc_r+0x98>
   1142e:	0e05                	addi	t3,t3,1
   11430:	003e7793          	andi	a5,t3,3
   11434:	0521                	addi	a0,a0,8
   11436:	cfc5                	beqz	a5,114ee <_malloc_r+0x3b8>
   11438:	455c                	lw	a5,12(a0)
   1143a:	bd91                	j	1128e <_malloc_r+0x158>
   1143c:	4410                	lw	a2,8(s0)
   1143e:	0014e593          	ori	a1,s1,1
   11442:	c04c                	sw	a1,4(s0)
   11444:	c65c                	sw	a5,12(a2)
   11446:	c790                	sw	a2,8(a5)
   11448:	94a2                	add	s1,s1,s0
   1144a:	00992a23          	sw	s1,20(s2)
   1144e:	00992823          	sw	s1,16(s2)
   11452:	0016e793          	ori	a5,a3,1
   11456:	0104a623          	sw	a6,12(s1)
   1145a:	0104a423          	sw	a6,8(s1)
   1145e:	c0dc                	sw	a5,4(s1)
   11460:	9722                	add	a4,a4,s0
   11462:	854e                	mv	a0,s3
   11464:	c314                	sw	a3,0(a4)
   11466:	2c9d                	jal	116dc <__malloc_unlock>
   11468:	00840513          	addi	a0,s0,8
   1146c:	b305                	j	1118c <_malloc_r+0x56>
   1146e:	97a2                	add	a5,a5,s0
   11470:	43d8                	lw	a4,4(a5)
   11472:	854e                	mv	a0,s3
   11474:	00176713          	ori	a4,a4,1
   11478:	c3d8                	sw	a4,4(a5)
   1147a:	248d                	jal	116dc <__malloc_unlock>
   1147c:	00840513          	addi	a0,s0,8
   11480:	b331                	j	1118c <_malloc_r+0x56>
   11482:	0034d593          	srli	a1,s1,0x3
   11486:	00848793          	addi	a5,s1,8
   1148a:	b9c9                	j	1115c <_malloc_r+0x26>
   1148c:	0014e693          	ori	a3,s1,1
   11490:	c054                	sw	a3,4(s0)
   11492:	94a2                	add	s1,s1,s0
   11494:	00992a23          	sw	s1,20(s2)
   11498:	00992823          	sw	s1,16(s2)
   1149c:	00176693          	ori	a3,a4,1
   114a0:	0104a623          	sw	a6,12(s1)
   114a4:	0104a423          	sw	a6,8(s1)
   114a8:	c0d4                	sw	a3,4(s1)
   114aa:	97a2                	add	a5,a5,s0
   114ac:	854e                	mv	a0,s3
   114ae:	c398                	sw	a4,0(a5)
   114b0:	2435                	jal	116dc <__malloc_unlock>
   114b2:	00840513          	addi	a0,s0,8
   114b6:	b9d9                	j	1118c <_malloc_r+0x56>
   114b8:	0067d713          	srli	a4,a5,0x6
   114bc:	03970613          	addi	a2,a4,57
   114c0:	03870693          	addi	a3,a4,56
   114c4:	060e                	slli	a2,a2,0x3
   114c6:	b70d                	j	113e8 <_malloc_r+0x2b2>
   114c8:	05240d63          	beq	s0,s2,11522 <_malloc_r+0x3ec>
   114cc:	00892403          	lw	s0,8(s2)
   114d0:	4c22                	lw	s8,8(sp)
   114d2:	405c                	lw	a5,4(s0)
   114d4:	b555                	j	11378 <_malloc_r+0x242>
   114d6:	05c78593          	addi	a1,a5,92
   114da:	05b78813          	addi	a6,a5,91
   114de:	00359613          	slli	a2,a1,0x3
   114e2:	b1f5                	j	111ce <_malloc_r+0x98>
   114e4:	00832783          	lw	a5,8(t1)
   114e8:	15fd                	addi	a1,a1,-1
   114ea:	1e679563          	bne	a5,t1,116d4 <_malloc_r+0x59e>
   114ee:	0035f793          	andi	a5,a1,3
   114f2:	1361                	addi	t1,t1,-8
   114f4:	fbe5                	bnez	a5,114e4 <_malloc_r+0x3ae>
   114f6:	00492703          	lw	a4,4(s2)
   114fa:	fff64793          	not	a5,a2
   114fe:	8ff9                	and	a5,a5,a4
   11500:	00f92223          	sw	a5,4(s2)
   11504:	0606                	slli	a2,a2,0x1
   11506:	dcc7e9e3          	bltu	a5,a2,112d8 <_malloc_r+0x1a2>
   1150a:	dc0607e3          	beqz	a2,112d8 <_malloc_r+0x1a2>
   1150e:	00f67733          	and	a4,a2,a5
   11512:	e711                	bnez	a4,1151e <_malloc_r+0x3e8>
   11514:	0606                	slli	a2,a2,0x1
   11516:	00f67733          	and	a4,a2,a5
   1151a:	0e11                	addi	t3,t3,4
   1151c:	df65                	beqz	a4,11514 <_malloc_r+0x3de>
   1151e:	85f2                	mv	a1,t3
   11520:	b38d                	j	11282 <_malloc_r+0x14c>
   11522:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   11526:	000c2703          	lw	a4,0(s8)
   1152a:	9756                	add	a4,a4,s5
   1152c:	00ec2023          	sw	a4,0(s8)
   11530:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   11534:	57fd                	li	a5,-1
   11536:	12f68563          	beq	a3,a5,11660 <_malloc_r+0x52a>
   1153a:	414b87b3          	sub	a5,s7,s4
   1153e:	97ba                	add	a5,a5,a4
   11540:	00fc2023          	sw	a5,0(s8)
   11544:	007bfc93          	andi	s9,s7,7
   11548:	0a0c8263          	beqz	s9,115ec <_malloc_r+0x4b6>
   1154c:	419b8bb3          	sub	s7,s7,s9
   11550:	6785                	lui	a5,0x1
   11552:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   11554:	0ba1                	addi	s7,s7,8
   11556:	419785b3          	sub	a1,a5,s9
   1155a:	9ade                	add	s5,s5,s7
   1155c:	415585b3          	sub	a1,a1,s5
   11560:	05d2                	slli	a1,a1,0x14
   11562:	0145da13          	srli	s4,a1,0x14
   11566:	85d2                	mv	a1,s4
   11568:	854e                	mv	a0,s3
   1156a:	5ea020ef          	jal	13b54 <_sbrk_r>
   1156e:	57fd                	li	a5,-1
   11570:	12f50463          	beq	a0,a5,11698 <_malloc_r+0x562>
   11574:	41750533          	sub	a0,a0,s7
   11578:	01450ab3          	add	s5,a0,s4
   1157c:	000c2703          	lw	a4,0(s8)
   11580:	01792423          	sw	s7,8(s2)
   11584:	001ae793          	ori	a5,s5,1
   11588:	00ea05b3          	add	a1,s4,a4
   1158c:	00bc2023          	sw	a1,0(s8)
   11590:	00fba223          	sw	a5,4(s7)
   11594:	dd2404e3          	beq	s0,s2,1135c <_malloc_r+0x226>
   11598:	46bd                	li	a3,15
   1159a:	0766f963          	bgeu	a3,s6,1160c <_malloc_r+0x4d6>
   1159e:	4058                	lw	a4,4(s0)
   115a0:	ff4b0793          	addi	a5,s6,-12
   115a4:	9be1                	andi	a5,a5,-8
   115a6:	8b05                	andi	a4,a4,1
   115a8:	8f5d                	or	a4,a4,a5
   115aa:	c058                	sw	a4,4(s0)
   115ac:	4615                	li	a2,5
   115ae:	00f40733          	add	a4,s0,a5
   115b2:	c350                	sw	a2,4(a4)
   115b4:	c710                	sw	a2,8(a4)
   115b6:	00f6e563          	bltu	a3,a5,115c0 <_malloc_r+0x48a>
   115ba:	004ba783          	lw	a5,4(s7)
   115be:	bb79                	j	1135c <_malloc_r+0x226>
   115c0:	00840593          	addi	a1,s0,8
   115c4:	854e                	mv	a0,s3
   115c6:	94fff0ef          	jal	10f14 <_free_r>
   115ca:	00892b83          	lw	s7,8(s2)
   115ce:	000c2583          	lw	a1,0(s8)
   115d2:	004ba783          	lw	a5,4(s7)
   115d6:	b359                	j	1135c <_malloc_r+0x226>
   115d8:	0ac1                	addi	s5,s5,16
   115da:	b381                	j	1131a <_malloc_r+0x1e4>
   115dc:	8689                	srai	a3,a3,0x2
   115de:	4785                	li	a5,1
   115e0:	00d797b3          	sll	a5,a5,a3
   115e4:	8d5d                	or	a0,a0,a5
   115e6:	00a92223          	sw	a0,4(s2)
   115ea:	bd29                	j	11404 <_malloc_r+0x2ce>
   115ec:	015b85b3          	add	a1,s7,s5
   115f0:	40b005b3          	neg	a1,a1
   115f4:	05d2                	slli	a1,a1,0x14
   115f6:	0145da13          	srli	s4,a1,0x14
   115fa:	85d2                	mv	a1,s4
   115fc:	854e                	mv	a0,s3
   115fe:	556020ef          	jal	13b54 <_sbrk_r>
   11602:	57fd                	li	a5,-1
   11604:	f6f518e3          	bne	a0,a5,11574 <_malloc_r+0x43e>
   11608:	4a01                	li	s4,0
   1160a:	bf8d                	j	1157c <_malloc_r+0x446>
   1160c:	4c22                	lw	s8,8(sp)
   1160e:	4785                	li	a5,1
   11610:	00fba223          	sw	a5,4(s7)
   11614:	854e                	mv	a0,s3
   11616:	20d9                	jal	116dc <__malloc_unlock>
   11618:	4501                	li	a0,0
   1161a:	4a62                	lw	s4,24(sp)
   1161c:	4ad2                	lw	s5,20(sp)
   1161e:	4b42                	lw	s6,16(sp)
   11620:	4bb2                	lw	s7,12(sp)
   11622:	4c92                	lw	s9,4(sp)
   11624:	b6a5                	j	1118c <_malloc_r+0x56>
   11626:	05400693          	li	a3,84
   1162a:	02e6ee63          	bltu	a3,a4,11666 <_malloc_r+0x530>
   1162e:	00c7d713          	srli	a4,a5,0xc
   11632:	06f70613          	addi	a2,a4,111
   11636:	06e70693          	addi	a3,a4,110
   1163a:	060e                	slli	a2,a2,0x3
   1163c:	b375                	j	113e8 <_malloc_r+0x2b2>
   1163e:	15400713          	li	a4,340
   11642:	02f76e63          	bltu	a4,a5,1167e <_malloc_r+0x548>
   11646:	00f4d793          	srli	a5,s1,0xf
   1164a:	07878593          	addi	a1,a5,120
   1164e:	07778813          	addi	a6,a5,119
   11652:	00359613          	slli	a2,a1,0x3
   11656:	bea5                	j	111ce <_malloc_r+0x98>
   11658:	00892403          	lw	s0,8(s2)
   1165c:	405c                	lw	a5,4(s0)
   1165e:	bb29                	j	11378 <_malloc_r+0x242>
   11660:	f171ac23          	sw	s7,-232(gp) # 1b728 <__malloc_sbrk_base>
   11664:	b5c5                	j	11544 <_malloc_r+0x40e>
   11666:	15400693          	li	a3,340
   1166a:	02e6ed63          	bltu	a3,a4,116a4 <_malloc_r+0x56e>
   1166e:	00f7d713          	srli	a4,a5,0xf
   11672:	07870613          	addi	a2,a4,120
   11676:	07770693          	addi	a3,a4,119
   1167a:	060e                	slli	a2,a2,0x3
   1167c:	b3b5                	j	113e8 <_malloc_r+0x2b2>
   1167e:	55400713          	li	a4,1364
   11682:	02f76d63          	bltu	a4,a5,116bc <_malloc_r+0x586>
   11686:	0124d793          	srli	a5,s1,0x12
   1168a:	07d78593          	addi	a1,a5,125
   1168e:	07c78813          	addi	a6,a5,124
   11692:	00359613          	slli	a2,a1,0x3
   11696:	be25                	j	111ce <_malloc_r+0x98>
   11698:	1ce1                	addi	s9,s9,-8
   1169a:	9ae6                	add	s5,s5,s9
   1169c:	417a8ab3          	sub	s5,s5,s7
   116a0:	4a01                	li	s4,0
   116a2:	bde9                	j	1157c <_malloc_r+0x446>
   116a4:	55400693          	li	a3,1364
   116a8:	02e6e163          	bltu	a3,a4,116ca <_malloc_r+0x594>
   116ac:	0127d713          	srli	a4,a5,0x12
   116b0:	07d70613          	addi	a2,a4,125
   116b4:	07c70693          	addi	a3,a4,124
   116b8:	060e                	slli	a2,a2,0x3
   116ba:	b33d                	j	113e8 <_malloc_r+0x2b2>
   116bc:	3f800613          	li	a2,1016
   116c0:	07f00593          	li	a1,127
   116c4:	07e00813          	li	a6,126
   116c8:	b619                	j	111ce <_malloc_r+0x98>
   116ca:	3f800613          	li	a2,1016
   116ce:	07e00693          	li	a3,126
   116d2:	bb19                	j	113e8 <_malloc_r+0x2b2>
   116d4:	00492783          	lw	a5,4(s2)
   116d8:	b535                	j	11504 <_malloc_r+0x3ce>

000116da <__malloc_lock>:
   116da:	8082                	ret

000116dc <__malloc_unlock>:
   116dc:	8082                	ret

000116de <_vfprintf_r>:
   116de:	7145                	addi	sp,sp,-464
   116e0:	1c112623          	sw	ra,460(sp)
   116e4:	1c812423          	sw	s0,456(sp)
   116e8:	1c912223          	sw	s1,452(sp)
   116ec:	1b612823          	sw	s6,432(sp)
   116f0:	84ae                	mv	s1,a1
   116f2:	8b32                	mv	s6,a2
   116f4:	ca36                	sw	a3,20(sp)
   116f6:	842a                	mv	s0,a0
   116f8:	c42a                	sw	a0,8(sp)
   116fa:	44e020ef          	jal	13b48 <_localeconv_r>
   116fe:	411c                	lw	a5,0(a0)
   11700:	853e                	mv	a0,a5
   11702:	d83e                	sw	a5,48(sp)
   11704:	e06ff0ef          	jal	10d0a <strlen>
   11708:	d62a                	sw	a0,44(sp)
   1170a:	c982                	sw	zero,208(sp)
   1170c:	cb82                	sw	zero,212(sp)
   1170e:	cd82                	sw	zero,216(sp)
   11710:	cf82                	sw	zero,220(sp)
   11712:	c409                	beqz	s0,1171c <_vfprintf_r+0x3e>
   11714:	5858                	lw	a4,52(s0)
   11716:	e319                	bnez	a4,1171c <_vfprintf_r+0x3e>
   11718:	1920106f          	j	128aa <_vfprintf_r+0x11cc>
   1171c:	00c49683          	lh	a3,12(s1)
   11720:	50f8                	lw	a4,100(s1)
   11722:	01269613          	slli	a2,a3,0x12
   11726:	00064a63          	bltz	a2,1173a <_vfprintf_r+0x5c>
   1172a:	7679                	lui	a2,0xffffe
   1172c:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   1172e:	6589                	lui	a1,0x2
   11730:	8ecd                	or	a3,a3,a1
   11732:	8f71                	and	a4,a4,a2
   11734:	00d49623          	sh	a3,12(s1)
   11738:	d0f8                	sw	a4,100(s1)
   1173a:	01271693          	slli	a3,a4,0x12
   1173e:	0006d463          	bgez	a3,11746 <_vfprintf_r+0x68>
   11742:	0770106f          	j	12fb8 <_vfprintf_r+0x18da>
   11746:	00c49703          	lh	a4,12(s1)
   1174a:	00877693          	andi	a3,a4,8
   1174e:	22068a63          	beqz	a3,11982 <_vfprintf_r+0x2a4>
   11752:	4894                	lw	a3,16(s1)
   11754:	22068763          	beqz	a3,11982 <_vfprintf_r+0x2a4>
   11758:	8b69                	andi	a4,a4,26
   1175a:	46a9                	li	a3,10
   1175c:	24d70063          	beq	a4,a3,1199c <_vfprintf_r+0x2be>
   11760:	1b312e23          	sw	s3,444(sp)
   11764:	1b412c23          	sw	s4,440(sp)
   11768:	1ba12023          	sw	s10,416(sp)
   1176c:	6769                	lui	a4,0x1a
   1176e:	1d212023          	sw	s2,448(sp)
   11772:	1b512a23          	sw	s5,436(sp)
   11776:	1b712623          	sw	s7,428(sp)
   1177a:	1b812423          	sw	s8,424(sp)
   1177e:	1b912223          	sw	s9,420(sp)
   11782:	19b12e23          	sw	s11,412(sp)
   11786:	8d5a                	mv	s10,s6
   11788:	3c870793          	addi	a5,a4,968 # 1a3c8 <k+0x100>
   1178c:	000d4703          	lbu	a4,0(s10)
   11790:	0ec10993          	addi	s3,sp,236
   11794:	6a69                	lui	s4,0x1a
   11796:	c3ce                	sw	s3,196(sp)
   11798:	c782                	sw	zero,204(sp)
   1179a:	c582                	sw	zero,200(sp)
   1179c:	d002                	sw	zero,32(sp)
   1179e:	da02                	sw	zero,52(sp)
   117a0:	c082                	sw	zero,64(sp)
   117a2:	de02                	sw	zero,60(sp)
   117a4:	c482                	sw	zero,72(sp)
   117a6:	c282                	sw	zero,68(sp)
   117a8:	c602                	sw	zero,12(sp)
   117aa:	cc3e                	sw	a5,24(sp)
   117ac:	844e                	mv	s0,s3
   117ae:	5cca0a13          	addi	s4,s4,1484 # 1a5cc <zeroes.0>
   117b2:	18070063          	beqz	a4,11932 <_vfprintf_r+0x254>
   117b6:	896a                	mv	s2,s10
   117b8:	02500693          	li	a3,37
   117bc:	2ed70a63          	beq	a4,a3,11ab0 <_vfprintf_r+0x3d2>
   117c0:	00194703          	lbu	a4,1(s2)
   117c4:	0905                	addi	s2,s2,1
   117c6:	fb7d                	bnez	a4,117bc <_vfprintf_r+0xde>
   117c8:	41a90ab3          	sub	s5,s2,s10
   117cc:	17a90363          	beq	s2,s10,11932 <_vfprintf_r+0x254>
   117d0:	46be                	lw	a3,204(sp)
   117d2:	472e                	lw	a4,200(sp)
   117d4:	01a42023          	sw	s10,0(s0)
   117d8:	96d6                	add	a3,a3,s5
   117da:	0705                	addi	a4,a4,1
   117dc:	01542223          	sw	s5,4(s0)
   117e0:	c7b6                	sw	a3,204(sp)
   117e2:	c5ba                	sw	a4,200(sp)
   117e4:	469d                	li	a3,7
   117e6:	0421                	addi	s0,s0,8
   117e8:	2ce6cb63          	blt	a3,a4,11abe <_vfprintf_r+0x3e0>
   117ec:	47b2                	lw	a5,12(sp)
   117ee:	00094703          	lbu	a4,0(s2)
   117f2:	97d6                	add	a5,a5,s5
   117f4:	c63e                	sw	a5,12(sp)
   117f6:	12070e63          	beqz	a4,11932 <_vfprintf_r+0x254>
   117fa:	00194883          	lbu	a7,1(s2)
   117fe:	0a0103a3          	sb	zero,167(sp)
   11802:	0905                	addi	s2,s2,1
   11804:	5afd                	li	s5,-1
   11806:	4b81                	li	s7,0
   11808:	4c81                	li	s9,0
   1180a:	05a00b13          	li	s6,90
   1180e:	0905                	addi	s2,s2,1
   11810:	fe088793          	addi	a5,a7,-32
   11814:	02fb6b63          	bltu	s6,a5,1184a <_vfprintf_r+0x16c>
   11818:	4762                	lw	a4,24(sp)
   1181a:	078a                	slli	a5,a5,0x2
   1181c:	97ba                	add	a5,a5,a4
   1181e:	439c                	lw	a5,0(a5)
   11820:	8782                	jr	a5
   11822:	4b81                	li	s7,0
   11824:	fd088793          	addi	a5,a7,-48
   11828:	46a5                	li	a3,9
   1182a:	00094883          	lbu	a7,0(s2)
   1182e:	002b9713          	slli	a4,s7,0x2
   11832:	9bba                	add	s7,s7,a4
   11834:	0b86                	slli	s7,s7,0x1
   11836:	9bbe                	add	s7,s7,a5
   11838:	fd088793          	addi	a5,a7,-48
   1183c:	0905                	addi	s2,s2,1
   1183e:	fef6f6e3          	bgeu	a3,a5,1182a <_vfprintf_r+0x14c>
   11842:	fe088793          	addi	a5,a7,-32
   11846:	fcfb79e3          	bgeu	s6,a5,11818 <_vfprintf_r+0x13a>
   1184a:	0e088463          	beqz	a7,11932 <_vfprintf_r+0x254>
   1184e:	13110623          	sb	a7,300(sp)
   11852:	0a0103a3          	sb	zero,167(sp)
   11856:	4d85                	li	s11,1
   11858:	4b05                	li	s6,1
   1185a:	12c10d13          	addi	s10,sp,300
   1185e:	c802                	sw	zero,16(sp)
   11860:	4a81                	li	s5,0
   11862:	d402                	sw	zero,40(sp)
   11864:	d202                	sw	zero,36(sp)
   11866:	ce02                	sw	zero,28(sp)
   11868:	002cf293          	andi	t0,s9,2
   1186c:	00028363          	beqz	t0,11872 <_vfprintf_r+0x194>
   11870:	0d89                	addi	s11,s11,2
   11872:	084cff93          	andi	t6,s9,132
   11876:	463e                	lw	a2,204(sp)
   11878:	000f9663          	bnez	t6,11884 <_vfprintf_r+0x1a6>
   1187c:	41bb8733          	sub	a4,s7,s11
   11880:	0ce045e3          	bgtz	a4,1214a <_vfprintf_r+0xa6c>
   11884:	0a714703          	lbu	a4,167(sp)
   11888:	cf19                	beqz	a4,118a6 <_vfprintf_r+0x1c8>
   1188a:	472e                	lw	a4,200(sp)
   1188c:	0a710593          	addi	a1,sp,167
   11890:	c00c                	sw	a1,0(s0)
   11892:	0605                	addi	a2,a2,1
   11894:	4585                	li	a1,1
   11896:	0705                	addi	a4,a4,1
   11898:	c04c                	sw	a1,4(s0)
   1189a:	c7b2                	sw	a2,204(sp)
   1189c:	c5ba                	sw	a4,200(sp)
   1189e:	459d                	li	a1,7
   118a0:	0421                	addi	s0,s0,8
   118a2:	2ee5c563          	blt	a1,a4,11b8c <_vfprintf_r+0x4ae>
   118a6:	00028f63          	beqz	t0,118c4 <_vfprintf_r+0x1e6>
   118aa:	472e                	lw	a4,200(sp)
   118ac:	4589                	li	a1,2
   118ae:	0609                	addi	a2,a2,2
   118b0:	0705                	addi	a4,a4,1
   118b2:	113c                	addi	a5,sp,168
   118b4:	c04c                	sw	a1,4(s0)
   118b6:	c01c                	sw	a5,0(s0)
   118b8:	c7b2                	sw	a2,204(sp)
   118ba:	c5ba                	sw	a4,200(sp)
   118bc:	459d                	li	a1,7
   118be:	0421                	addi	s0,s0,8
   118c0:	12e5c8e3          	blt	a1,a4,121f0 <_vfprintf_r+0xb12>
   118c4:	08000713          	li	a4,128
   118c8:	72ef8c63          	beq	t6,a4,12000 <_vfprintf_r+0x922>
   118cc:	416a8ab3          	sub	s5,s5,s6
   118d0:	7d504863          	bgtz	s5,120a0 <_vfprintf_r+0x9c2>
   118d4:	100cf713          	andi	a4,s9,256
   118d8:	60071c63          	bnez	a4,11ef0 <_vfprintf_r+0x812>
   118dc:	47ae                	lw	a5,200(sp)
   118de:	965a                	add	a2,a2,s6
   118e0:	01a42023          	sw	s10,0(s0)
   118e4:	0785                	addi	a5,a5,1
   118e6:	01642223          	sw	s6,4(s0)
   118ea:	c7b2                	sw	a2,204(sp)
   118ec:	c5be                	sw	a5,200(sp)
   118ee:	471d                	li	a4,7
   118f0:	36f74363          	blt	a4,a5,11c56 <_vfprintf_r+0x578>
   118f4:	0421                	addi	s0,s0,8
   118f6:	004cfe13          	andi	t3,s9,4
   118fa:	000e0663          	beqz	t3,11906 <_vfprintf_r+0x228>
   118fe:	41bb8ab3          	sub	s5,s7,s11
   11902:	115045e3          	bgtz	s5,1220c <_vfprintf_r+0xb2e>
   11906:	835e                	mv	t1,s7
   11908:	01bbd363          	bge	s7,s11,1190e <_vfprintf_r+0x230>
   1190c:	836e                	mv	t1,s11
   1190e:	47b2                	lw	a5,12(sp)
   11910:	979a                	add	a5,a5,t1
   11912:	c63e                	sw	a5,12(sp)
   11914:	00061ae3          	bnez	a2,12128 <_vfprintf_r+0xa4a>
   11918:	47c2                	lw	a5,16(sp)
   1191a:	c582                	sw	zero,200(sp)
   1191c:	c789                	beqz	a5,11926 <_vfprintf_r+0x248>
   1191e:	45c2                	lw	a1,16(sp)
   11920:	4522                	lw	a0,8(sp)
   11922:	df2ff0ef          	jal	10f14 <_free_r>
   11926:	844e                	mv	s0,s3
   11928:	8d4a                	mv	s10,s2
   1192a:	000d4703          	lbu	a4,0(s10)
   1192e:	e80714e3          	bnez	a4,117b6 <_vfprintf_r+0xd8>
   11932:	47be                	lw	a5,204(sp)
   11934:	c399                	beqz	a5,1193a <_vfprintf_r+0x25c>
   11936:	3160106f          	j	12c4c <_vfprintf_r+0x156e>
   1193a:	00c4d783          	lhu	a5,12(s1)
   1193e:	1c012903          	lw	s2,448(sp)
   11942:	1bc12983          	lw	s3,444(sp)
   11946:	0407f793          	andi	a5,a5,64
   1194a:	1b812a03          	lw	s4,440(sp)
   1194e:	1b412a83          	lw	s5,436(sp)
   11952:	1ac12b83          	lw	s7,428(sp)
   11956:	1a812c03          	lw	s8,424(sp)
   1195a:	1a412c83          	lw	s9,420(sp)
   1195e:	1a012d03          	lw	s10,416(sp)
   11962:	19c12d83          	lw	s11,412(sp)
   11966:	c399                	beqz	a5,1196c <_vfprintf_r+0x28e>
   11968:	6500106f          	j	12fb8 <_vfprintf_r+0x18da>
   1196c:	1cc12083          	lw	ra,460(sp)
   11970:	1c812403          	lw	s0,456(sp)
   11974:	4532                	lw	a0,12(sp)
   11976:	1c412483          	lw	s1,452(sp)
   1197a:	1b012b03          	lw	s6,432(sp)
   1197e:	6179                	addi	sp,sp,464
   11980:	8082                	ret
   11982:	4522                	lw	a0,8(sp)
   11984:	85a6                	mv	a1,s1
   11986:	7db010ef          	jal	13960 <__swsetup_r>
   1198a:	c119                	beqz	a0,11990 <_vfprintf_r+0x2b2>
   1198c:	62c0106f          	j	12fb8 <_vfprintf_r+0x18da>
   11990:	00c49703          	lh	a4,12(s1)
   11994:	46a9                	li	a3,10
   11996:	8b69                	andi	a4,a4,26
   11998:	dcd714e3          	bne	a4,a3,11760 <_vfprintf_r+0x82>
   1199c:	00e49703          	lh	a4,14(s1)
   119a0:	dc0740e3          	bltz	a4,11760 <_vfprintf_r+0x82>
   119a4:	46d2                	lw	a3,20(sp)
   119a6:	4522                	lw	a0,8(sp)
   119a8:	865a                	mv	a2,s6
   119aa:	85a6                	mv	a1,s1
   119ac:	0e5010ef          	jal	13290 <__sbprintf>
   119b0:	c62a                	sw	a0,12(sp)
   119b2:	bf6d                	j	1196c <_vfprintf_r+0x28e>
   119b4:	4c22                	lw	s8,8(sp)
   119b6:	8562                	mv	a0,s8
   119b8:	190020ef          	jal	13b48 <_localeconv_r>
   119bc:	415c                	lw	a5,4(a0)
   119be:	853e                	mv	a0,a5
   119c0:	c2be                	sw	a5,68(sp)
   119c2:	b48ff0ef          	jal	10d0a <strlen>
   119c6:	87aa                	mv	a5,a0
   119c8:	8562                	mv	a0,s8
   119ca:	c4be                	sw	a5,72(sp)
   119cc:	8c3e                	mv	s8,a5
   119ce:	17a020ef          	jal	13b48 <_localeconv_r>
   119d2:	451c                	lw	a5,8(a0)
   119d4:	de3e                	sw	a5,60(sp)
   119d6:	280c14e3          	bnez	s8,1245e <_vfprintf_r+0xd80>
   119da:	00094883          	lbu	a7,0(s2)
   119de:	bd05                	j	1180e <_vfprintf_r+0x130>
   119e0:	00094883          	lbu	a7,0(s2)
   119e4:	020cec93          	ori	s9,s9,32
   119e8:	b51d                	j	1180e <_vfprintf_r+0x130>
   119ea:	010cec93          	ori	s9,s9,16
   119ee:	020cf793          	andi	a5,s9,32
   119f2:	26078c63          	beqz	a5,11c6a <_vfprintf_r+0x58c>
   119f6:	47d2                	lw	a5,20(sp)
   119f8:	00778c13          	addi	s8,a5,7
   119fc:	ff8c7c13          	andi	s8,s8,-8
   11a00:	004c2783          	lw	a5,4(s8)
   11a04:	000c2b03          	lw	s6,0(s8)
   11a08:	008c0713          	addi	a4,s8,8
   11a0c:	ca3a                	sw	a4,20(sp)
   11a0e:	8dbe                	mv	s11,a5
   11a10:	2807c263          	bltz	a5,11c94 <_vfprintf_r+0x5b6>
   11a14:	8ee6                	mv	t4,s9
   11a16:	380ac363          	bltz	s5,11d9c <_vfprintf_r+0x6be>
   11a1a:	01bb67b3          	or	a5,s6,s11
   11a1e:	f7fcfe93          	andi	t4,s9,-129
   11a22:	36079d63          	bnez	a5,11d9c <_vfprintf_r+0x6be>
   11a26:	380a9063          	bnez	s5,11da6 <_vfprintf_r+0x6c8>
   11a2a:	4b01                	li	s6,0
   11a2c:	8cf6                	mv	s9,t4
   11a2e:	19010d13          	addi	s10,sp,400
   11a32:	0a714703          	lbu	a4,167(sp)
   11a36:	8dd6                	mv	s11,s5
   11a38:	016ad363          	bge	s5,s6,11a3e <_vfprintf_r+0x360>
   11a3c:	8dda                	mv	s11,s6
   11a3e:	c802                	sw	zero,16(sp)
   11a40:	d402                	sw	zero,40(sp)
   11a42:	d202                	sw	zero,36(sp)
   11a44:	ce02                	sw	zero,28(sp)
   11a46:	e20701e3          	beqz	a4,11868 <_vfprintf_r+0x18a>
   11a4a:	0d85                	addi	s11,s11,1
   11a4c:	bd31                	j	11868 <_vfprintf_r+0x18a>
   11a4e:	010cec93          	ori	s9,s9,16
   11a52:	020cf793          	andi	a5,s9,32
   11a56:	2a078b63          	beqz	a5,11d0c <_vfprintf_r+0x62e>
   11a5a:	47d2                	lw	a5,20(sp)
   11a5c:	00778c13          	addi	s8,a5,7
   11a60:	ff8c7c13          	andi	s8,s8,-8
   11a64:	000c2b03          	lw	s6,0(s8)
   11a68:	004c2d83          	lw	s11,4(s8)
   11a6c:	008c0793          	addi	a5,s8,8
   11a70:	ca3e                	sw	a5,20(sp)
   11a72:	bffcfe93          	andi	t4,s9,-1025
   11a76:	4781                	li	a5,0
   11a78:	4701                	li	a4,0
   11a7a:	0ae103a3          	sb	a4,167(sp)
   11a7e:	220acb63          	bltz	s5,11cb4 <_vfprintf_r+0x5d6>
   11a82:	01bb6733          	or	a4,s6,s11
   11a86:	f7fefc93          	andi	s9,t4,-129
   11a8a:	6a071e63          	bnez	a4,12146 <_vfprintf_r+0xa68>
   11a8e:	520a9563          	bnez	s5,11fb8 <_vfprintf_r+0x8da>
   11a92:	16079ee3          	bnez	a5,1240e <_vfprintf_r+0xd30>
   11a96:	001efb13          	andi	s6,t4,1
   11a9a:	19010d13          	addi	s10,sp,400
   11a9e:	f80b0ae3          	beqz	s6,11a32 <_vfprintf_r+0x354>
   11aa2:	03000793          	li	a5,48
   11aa6:	18f107a3          	sb	a5,399(sp)
   11aaa:	18f10d13          	addi	s10,sp,399
   11aae:	b751                	j	11a32 <_vfprintf_r+0x354>
   11ab0:	41a90ab3          	sub	s5,s2,s10
   11ab4:	d1a91ee3          	bne	s2,s10,117d0 <_vfprintf_r+0xf2>
   11ab8:	00094703          	lbu	a4,0(s2)
   11abc:	bb2d                	j	117f6 <_vfprintf_r+0x118>
   11abe:	4522                	lw	a0,8(sp)
   11ac0:	01d0                	addi	a2,sp,196
   11ac2:	85a6                	mv	a1,s1
   11ac4:	061010ef          	jal	13324 <__sprint_r>
   11ac8:	e60519e3          	bnez	a0,1193a <_vfprintf_r+0x25c>
   11acc:	844e                	mv	s0,s3
   11ace:	bb39                	j	117ec <_vfprintf_r+0x10e>
   11ad0:	008cf713          	andi	a4,s9,8
   11ad4:	1c0714e3          	bnez	a4,1249c <_vfprintf_r+0xdbe>
   11ad8:	47d2                	lw	a5,20(sp)
   11ada:	0908                	addi	a0,sp,144
   11adc:	c846                	sw	a7,16(sp)
   11ade:	00778c13          	addi	s8,a5,7
   11ae2:	ff8c7c13          	andi	s8,s8,-8
   11ae6:	000c3507          	fld	fa0,0(s8)
   11aea:	008c0793          	addi	a5,s8,8
   11aee:	ca3e                	sw	a5,20(sp)
   11af0:	3fa080ef          	jal	19eea <__extenddftf2>
   11af4:	45ca                	lw	a1,144(sp)
   11af6:	465a                	lw	a2,148(sp)
   11af8:	46ea                	lw	a3,152(sp)
   11afa:	477a                	lw	a4,156(sp)
   11afc:	48c2                	lw	a7,16(sp)
   11afe:	0988                	addi	a0,sp,208
   11b00:	c846                	sw	a7,16(sp)
   11b02:	cfba                	sw	a4,220(sp)
   11b04:	c9ae                	sw	a1,208(sp)
   11b06:	cbb2                	sw	a2,212(sp)
   11b08:	cdb6                	sw	a3,216(sp)
   11b0a:	5c2020ef          	jal	140cc <_ldcheck>
   11b0e:	d72a                	sw	a0,172(sp)
   11b10:	4709                	li	a4,2
   11b12:	48c2                	lw	a7,16(sp)
   11b14:	5ce50be3          	beq	a0,a4,128ea <_vfprintf_r+0x120c>
   11b18:	4705                	li	a4,1
   11b1a:	6ae505e3          	beq	a0,a4,129c4 <_vfprintf_r+0x12e6>
   11b1e:	06100713          	li	a4,97
   11b22:	2ae88ce3          	beq	a7,a4,125da <_vfprintf_r+0xefc>
   11b26:	04100713          	li	a4,65
   11b2a:	05800793          	li	a5,88
   11b2e:	2ae888e3          	beq	a7,a4,125de <_vfprintf_r+0xf00>
   11b32:	577d                	li	a4,-1
   11b34:	00ea9463          	bne	s5,a4,11b3c <_vfprintf_r+0x45e>
   11b38:	6260106f          	j	1315e <_vfprintf_r+0x1a80>
   11b3c:	fdf8f713          	andi	a4,a7,-33
   11b40:	04700693          	li	a3,71
   11b44:	c802                	sw	zero,16(sp)
   11b46:	00d71563          	bne	a4,a3,11b50 <_vfprintf_r+0x472>
   11b4a:	000a9363          	bnez	s5,11b50 <_vfprintf_r+0x472>
   11b4e:	4a85                	li	s5,1
   11b50:	4c7e                	lw	s8,220(sp)
   11b52:	100ce793          	ori	a5,s9,256
   11b56:	c6be                	sw	a5,76(sp)
   11b58:	dc02                	sw	zero,56(sp)
   11b5a:	4fce                	lw	t6,208(sp)
   11b5c:	4f5e                	lw	t5,212(sp)
   11b5e:	4eee                	lw	t4,216(sp)
   11b60:	000c5963          	bgez	s8,11b72 <_vfprintf_r+0x494>
   11b64:	80000737          	lui	a4,0x80000
   11b68:	02d00793          	li	a5,45
   11b6c:	01874c33          	xor	s8,a4,s8
   11b70:	dc3e                	sw	a5,56(sp)
   11b72:	fbf88713          	addi	a4,a7,-65
   11b76:	02500693          	li	a3,37
   11b7a:	28e6eee3          	bltu	a3,a4,12616 <_vfprintf_r+0xf38>
   11b7e:	66e9                	lui	a3,0x1a
   11b80:	070a                	slli	a4,a4,0x2
   11b82:	53468693          	addi	a3,a3,1332 # 1a534 <k+0x26c>
   11b86:	9736                	add	a4,a4,a3
   11b88:	4318                	lw	a4,0(a4)
   11b8a:	8702                	jr	a4
   11b8c:	4522                	lw	a0,8(sp)
   11b8e:	01d0                	addi	a2,sp,196
   11b90:	85a6                	mv	a1,s1
   11b92:	c8c6                	sw	a7,80(sp)
   11b94:	c6fe                	sw	t6,76(sp)
   11b96:	dc16                	sw	t0,56(sp)
   11b98:	78c010ef          	jal	13324 <__sprint_r>
   11b9c:	58051d63          	bnez	a0,12136 <_vfprintf_r+0xa58>
   11ba0:	463e                	lw	a2,204(sp)
   11ba2:	48c6                	lw	a7,80(sp)
   11ba4:	4fb6                	lw	t6,76(sp)
   11ba6:	52e2                	lw	t0,56(sp)
   11ba8:	844e                	mv	s0,s3
   11baa:	b9f5                	j	118a6 <_vfprintf_r+0x1c8>
   11bac:	4aae                	lw	s5,200(sp)
   11bae:	5782                	lw	a5,32(sp)
   11bb0:	4705                	li	a4,1
   11bb2:	01a42023          	sw	s10,0(s0)
   11bb6:	00160c13          	addi	s8,a2,1
   11bba:	0a85                	addi	s5,s5,1
   11bbc:	00840b13          	addi	s6,s0,8
   11bc0:	7af75763          	bge	a4,a5,1236e <_vfprintf_r+0xc90>
   11bc4:	4705                	li	a4,1
   11bc6:	c058                	sw	a4,4(s0)
   11bc8:	c7e2                	sw	s8,204(sp)
   11bca:	c5d6                	sw	s5,200(sp)
   11bcc:	471d                	li	a4,7
   11bce:	395741e3          	blt	a4,s5,12750 <_vfprintf_r+0x1072>
   11bd2:	57b2                	lw	a5,44(sp)
   11bd4:	5742                	lw	a4,48(sp)
   11bd6:	0a85                	addi	s5,s5,1
   11bd8:	9c3e                	add	s8,s8,a5
   11bda:	00eb2023          	sw	a4,0(s6)
   11bde:	00fb2223          	sw	a5,4(s6)
   11be2:	c7e2                	sw	s8,204(sp)
   11be4:	c5d6                	sw	s5,200(sp)
   11be6:	471d                	li	a4,7
   11be8:	0b21                	addi	s6,s6,8
   11bea:	37574fe3          	blt	a4,s5,12768 <_vfprintf_r+0x108a>
   11bee:	474e                	lw	a4,208(sp)
   11bf0:	5782                	lw	a5,32(sp)
   11bf2:	010c                	addi	a1,sp,128
   11bf4:	c93a                	sw	a4,144(sp)
   11bf6:	475e                	lw	a4,212(sp)
   11bf8:	0908                	addi	a0,sp,144
   11bfa:	c102                	sw	zero,128(sp)
   11bfc:	cb3a                	sw	a4,148(sp)
   11bfe:	476e                	lw	a4,216(sp)
   11c00:	c302                	sw	zero,132(sp)
   11c02:	c502                	sw	zero,136(sp)
   11c04:	cd3a                	sw	a4,152(sp)
   11c06:	477e                	lw	a4,220(sp)
   11c08:	c702                	sw	zero,140(sp)
   11c0a:	fff78413          	addi	s0,a5,-1
   11c0e:	cf3a                	sw	a4,156(sp)
   11c10:	7f7050ef          	jal	17c06 <__eqtf2>
   11c14:	78050263          	beqz	a0,12398 <_vfprintf_r+0xcba>
   11c18:	001d0793          	addi	a5,s10,1
   11c1c:	0a85                	addi	s5,s5,1
   11c1e:	9c22                	add	s8,s8,s0
   11c20:	00fb2023          	sw	a5,0(s6)
   11c24:	008b2223          	sw	s0,4(s6)
   11c28:	c7e2                	sw	s8,204(sp)
   11c2a:	c5d6                	sw	s5,200(sp)
   11c2c:	479d                	li	a5,7
   11c2e:	0b21                	addi	s6,s6,8
   11c30:	7557c963          	blt	a5,s5,12382 <_vfprintf_r+0xca4>
   11c34:	4686                	lw	a3,64(sp)
   11c36:	1958                	addi	a4,sp,180
   11c38:	001a8793          	addi	a5,s5,1
   11c3c:	01868633          	add	a2,a3,s8
   11c40:	00eb2023          	sw	a4,0(s6)
   11c44:	00db2223          	sw	a3,4(s6)
   11c48:	c7b2                	sw	a2,204(sp)
   11c4a:	c5be                	sw	a5,200(sp)
   11c4c:	471d                	li	a4,7
   11c4e:	008b0413          	addi	s0,s6,8
   11c52:	caf752e3          	bge	a4,a5,118f6 <_vfprintf_r+0x218>
   11c56:	4522                	lw	a0,8(sp)
   11c58:	01d0                	addi	a2,sp,196
   11c5a:	85a6                	mv	a1,s1
   11c5c:	6c8010ef          	jal	13324 <__sprint_r>
   11c60:	4c051b63          	bnez	a0,12136 <_vfprintf_r+0xa58>
   11c64:	463e                	lw	a2,204(sp)
   11c66:	844e                	mv	s0,s3
   11c68:	b179                	j	118f6 <_vfprintf_r+0x218>
   11c6a:	4752                	lw	a4,20(sp)
   11c6c:	010cf793          	andi	a5,s9,16
   11c70:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe45a4>
   11c74:	0711                	addi	a4,a4,4
   11c76:	ca3a                	sw	a4,20(sp)
   11c78:	7c079e63          	bnez	a5,12454 <_vfprintf_r+0xd76>
   11c7c:	040cf793          	andi	a5,s9,64
   11c80:	7c078663          	beqz	a5,1244c <_vfprintf_r+0xd6e>
   11c84:	0b42                	slli	s6,s6,0x10
   11c86:	410b5b13          	srai	s6,s6,0x10
   11c8a:	41fb5d93          	srai	s11,s6,0x1f
   11c8e:	87ee                	mv	a5,s11
   11c90:	d807d2e3          	bgez	a5,11a14 <_vfprintf_r+0x336>
   11c94:	02d00713          	li	a4,45
   11c98:	016037b3          	snez	a5,s6
   11c9c:	41b00db3          	neg	s11,s11
   11ca0:	0ae103a3          	sb	a4,167(sp)
   11ca4:	40fd8db3          	sub	s11,s11,a5
   11ca8:	41600b33          	neg	s6,s6
   11cac:	8ee6                	mv	t4,s9
   11cae:	4785                	li	a5,1
   11cb0:	dc0ad9e3          	bgez	s5,11a82 <_vfprintf_r+0x3a4>
   11cb4:	4705                	li	a4,1
   11cb6:	0ee78363          	beq	a5,a4,11d9c <_vfprintf_r+0x6be>
   11cba:	4709                	li	a4,2
   11cbc:	30e78763          	beq	a5,a4,11fca <_vfprintf_r+0x8ec>
   11cc0:	19010d13          	addi	s10,sp,400
   11cc4:	01dd9793          	slli	a5,s11,0x1d
   11cc8:	007b7713          	andi	a4,s6,7
   11ccc:	003b5b13          	srli	s6,s6,0x3
   11cd0:	03070713          	addi	a4,a4,48
   11cd4:	0167eb33          	or	s6,a5,s6
   11cd8:	003ddd93          	srli	s11,s11,0x3
   11cdc:	feed0fa3          	sb	a4,-1(s10)
   11ce0:	01bb67b3          	or	a5,s6,s11
   11ce4:	866a                	mv	a2,s10
   11ce6:	1d7d                	addi	s10,s10,-1
   11ce8:	fff1                	bnez	a5,11cc4 <_vfprintf_r+0x5e6>
   11cea:	001ef693          	andi	a3,t4,1
   11cee:	30068463          	beqz	a3,11ff6 <_vfprintf_r+0x918>
   11cf2:	03000693          	li	a3,48
   11cf6:	30d70063          	beq	a4,a3,11ff6 <_vfprintf_r+0x918>
   11cfa:	1679                	addi	a2,a2,-2
   11cfc:	0b1c                	addi	a5,sp,400
   11cfe:	fedd0fa3          	sb	a3,-1(s10)
   11d02:	40c78b33          	sub	s6,a5,a2
   11d06:	8cf6                	mv	s9,t4
   11d08:	8d32                	mv	s10,a2
   11d0a:	b325                	j	11a32 <_vfprintf_r+0x354>
   11d0c:	4752                	lw	a4,20(sp)
   11d0e:	010cf793          	andi	a5,s9,16
   11d12:	00072b03          	lw	s6,0(a4)
   11d16:	0711                	addi	a4,a4,4
   11d18:	ca3a                	sw	a4,20(sp)
   11d1a:	72079663          	bnez	a5,12446 <_vfprintf_r+0xd68>
   11d1e:	040cf793          	andi	a5,s9,64
   11d22:	70078e63          	beqz	a5,1243e <_vfprintf_r+0xd60>
   11d26:	0b42                	slli	s6,s6,0x10
   11d28:	010b5b13          	srli	s6,s6,0x10
   11d2c:	4d81                	li	s11,0
   11d2e:	b391                	j	11a72 <_vfprintf_r+0x394>
   11d30:	4752                	lw	a4,20(sp)
   11d32:	0a0103a3          	sb	zero,167(sp)
   11d36:	4d85                	li	s11,1
   11d38:	431c                	lw	a5,0(a4)
   11d3a:	0711                	addi	a4,a4,4
   11d3c:	ca3a                	sw	a4,20(sp)
   11d3e:	12f10623          	sb	a5,300(sp)
   11d42:	4b05                	li	s6,1
   11d44:	12c10d13          	addi	s10,sp,300
   11d48:	be19                	j	1185e <_vfprintf_r+0x180>
   11d4a:	47d2                	lw	a5,20(sp)
   11d4c:	0a0103a3          	sb	zero,167(sp)
   11d50:	0007ad03          	lw	s10,0(a5)
   11d54:	00478c13          	addi	s8,a5,4
   11d58:	7e0d0a63          	beqz	s10,1254c <_vfprintf_r+0xe6e>
   11d5c:	420ac4e3          	bltz	s5,12984 <_vfprintf_r+0x12a6>
   11d60:	8656                	mv	a2,s5
   11d62:	4581                	li	a1,0
   11d64:	856a                	mv	a0,s10
   11d66:	ca46                	sw	a7,20(sp)
   11d68:	4d3010ef          	jal	13a3a <memchr>
   11d6c:	c82a                	sw	a0,16(sp)
   11d6e:	48d2                	lw	a7,20(sp)
   11d70:	e119                	bnez	a0,11d76 <_vfprintf_r+0x698>
   11d72:	25c0106f          	j	12fce <_vfprintf_r+0x18f0>
   11d76:	47c2                	lw	a5,16(sp)
   11d78:	0a714703          	lbu	a4,167(sp)
   11d7c:	ca62                	sw	s8,20(sp)
   11d7e:	41a78b33          	sub	s6,a5,s10
   11d82:	fffb4693          	not	a3,s6
   11d86:	86fd                	srai	a3,a3,0x1f
   11d88:	c802                	sw	zero,16(sp)
   11d8a:	d402                	sw	zero,40(sp)
   11d8c:	d202                	sw	zero,36(sp)
   11d8e:	ce02                	sw	zero,28(sp)
   11d90:	00db7db3          	and	s11,s6,a3
   11d94:	4a81                	li	s5,0
   11d96:	ca071ae3          	bnez	a4,11a4a <_vfprintf_r+0x36c>
   11d9a:	b4f9                	j	11868 <_vfprintf_r+0x18a>
   11d9c:	1e0d98e3          	bnez	s11,1278c <_vfprintf_r+0x10ae>
   11da0:	47a5                	li	a5,9
   11da2:	1f67e5e3          	bltu	a5,s6,1278c <_vfprintf_r+0x10ae>
   11da6:	030b0b13          	addi	s6,s6,48
   11daa:	196107a3          	sb	s6,399(sp)
   11dae:	8cf6                	mv	s9,t4
   11db0:	4b05                	li	s6,1
   11db2:	18f10d13          	addi	s10,sp,399
   11db6:	b9b5                	j	11a32 <_vfprintf_r+0x354>
   11db8:	47d2                	lw	a5,20(sp)
   11dba:	0007ab83          	lw	s7,0(a5)
   11dbe:	0791                	addi	a5,a5,4
   11dc0:	660bd163          	bgez	s7,12422 <_vfprintf_r+0xd44>
   11dc4:	41700bb3          	neg	s7,s7
   11dc8:	ca3e                	sw	a5,20(sp)
   11dca:	00094883          	lbu	a7,0(s2)
   11dce:	004cec93          	ori	s9,s9,4
   11dd2:	bc35                	j	1180e <_vfprintf_r+0x130>
   11dd4:	02b00793          	li	a5,43
   11dd8:	00094883          	lbu	a7,0(s2)
   11ddc:	0af103a3          	sb	a5,167(sp)
   11de0:	b43d                	j	1180e <_vfprintf_r+0x130>
   11de2:	00094883          	lbu	a7,0(s2)
   11de6:	080cec93          	ori	s9,s9,128
   11dea:	b415                	j	1180e <_vfprintf_r+0x130>
   11dec:	00094883          	lbu	a7,0(s2)
   11df0:	02a00793          	li	a5,42
   11df4:	00190693          	addi	a3,s2,1
   11df8:	00f89463          	bne	a7,a5,11e00 <_vfprintf_r+0x722>
   11dfc:	44c0106f          	j	13248 <_vfprintf_r+0x1b6a>
   11e00:	fd088793          	addi	a5,a7,-48
   11e04:	4725                	li	a4,9
   11e06:	4a81                	li	s5,0
   11e08:	4625                	li	a2,9
   11e0a:	02f76063          	bltu	a4,a5,11e2a <_vfprintf_r+0x74c>
   11e0e:	0006c883          	lbu	a7,0(a3)
   11e12:	002a9713          	slli	a4,s5,0x2
   11e16:	9aba                	add	s5,s5,a4
   11e18:	0a86                	slli	s5,s5,0x1
   11e1a:	9abe                	add	s5,s5,a5
   11e1c:	fd088793          	addi	a5,a7,-48
   11e20:	0685                	addi	a3,a3,1
   11e22:	fef676e3          	bgeu	a2,a5,11e0e <_vfprintf_r+0x730>
   11e26:	680ac963          	bltz	s5,124b8 <_vfprintf_r+0xdda>
   11e2a:	8936                	mv	s2,a3
   11e2c:	b2d5                	j	11810 <_vfprintf_r+0x132>
   11e2e:	00094883          	lbu	a7,0(s2)
   11e32:	001cec93          	ori	s9,s9,1
   11e36:	bae1                	j	1180e <_vfprintf_r+0x130>
   11e38:	0a714783          	lbu	a5,167(sp)
   11e3c:	00094883          	lbu	a7,0(s2)
   11e40:	9c0797e3          	bnez	a5,1180e <_vfprintf_r+0x130>
   11e44:	02000793          	li	a5,32
   11e48:	0af103a3          	sb	a5,167(sp)
   11e4c:	b2c9                	j	1180e <_vfprintf_r+0x130>
   11e4e:	010cee93          	ori	t4,s9,16
   11e52:	020ef793          	andi	a5,t4,32
   11e56:	58078a63          	beqz	a5,123ea <_vfprintf_r+0xd0c>
   11e5a:	47d2                	lw	a5,20(sp)
   11e5c:	00778c13          	addi	s8,a5,7
   11e60:	ff8c7c13          	andi	s8,s8,-8
   11e64:	008c0793          	addi	a5,s8,8
   11e68:	ca3e                	sw	a5,20(sp)
   11e6a:	000c2b03          	lw	s6,0(s8)
   11e6e:	004c2d83          	lw	s11,4(s8)
   11e72:	4785                	li	a5,1
   11e74:	b111                	j	11a78 <_vfprintf_r+0x39a>
   11e76:	00094883          	lbu	a7,0(s2)
   11e7a:	008cec93          	ori	s9,s9,8
   11e7e:	ba41                	j	1180e <_vfprintf_r+0x130>
   11e80:	4752                	lw	a4,20(sp)
   11e82:	67a1                	lui	a5,0x8
   11e84:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   11e88:	0af11423          	sh	a5,168(sp)
   11e8c:	00470793          	addi	a5,a4,4
   11e90:	ca3e                	sw	a5,20(sp)
   11e92:	67e9                	lui	a5,0x1a
   11e94:	14878793          	addi	a5,a5,328 # 1a148 <__clzsi2+0xd2>
   11e98:	da3e                	sw	a5,52(sp)
   11e9a:	00072b03          	lw	s6,0(a4)
   11e9e:	4d81                	li	s11,0
   11ea0:	002cee93          	ori	t4,s9,2
   11ea4:	4789                	li	a5,2
   11ea6:	07800893          	li	a7,120
   11eaa:	b6f9                	j	11a78 <_vfprintf_r+0x39a>
   11eac:	020cf793          	andi	a5,s9,32
   11eb0:	5c078463          	beqz	a5,12478 <_vfprintf_r+0xd9a>
   11eb4:	47d2                	lw	a5,20(sp)
   11eb6:	46b2                	lw	a3,12(sp)
   11eb8:	439c                	lw	a5,0(a5)
   11eba:	41f6d713          	srai	a4,a3,0x1f
   11ebe:	c394                	sw	a3,0(a5)
   11ec0:	c3d8                	sw	a4,4(a5)
   11ec2:	47d2                	lw	a5,20(sp)
   11ec4:	8d4a                	mv	s10,s2
   11ec6:	0791                	addi	a5,a5,4
   11ec8:	ca3e                	sw	a5,20(sp)
   11eca:	b485                	j	1192a <_vfprintf_r+0x24c>
   11ecc:	00094883          	lbu	a7,0(s2)
   11ed0:	06c00793          	li	a5,108
   11ed4:	64f88b63          	beq	a7,a5,1252a <_vfprintf_r+0xe4c>
   11ed8:	010cec93          	ori	s9,s9,16
   11edc:	ba0d                	j	1180e <_vfprintf_r+0x130>
   11ede:	00094883          	lbu	a7,0(s2)
   11ee2:	06800793          	li	a5,104
   11ee6:	62f88b63          	beq	a7,a5,1251c <_vfprintf_r+0xe3e>
   11eea:	040cec93          	ori	s9,s9,64
   11eee:	b205                	j	1180e <_vfprintf_r+0x130>
   11ef0:	06500713          	li	a4,101
   11ef4:	cb175ce3          	bge	a4,a7,11bac <_vfprintf_r+0x4ce>
   11ef8:	474e                	lw	a4,208(sp)
   11efa:	010c                	addi	a1,sp,128
   11efc:	0908                	addi	a0,sp,144
   11efe:	c93a                	sw	a4,144(sp)
   11f00:	475e                	lw	a4,212(sp)
   11f02:	dc32                	sw	a2,56(sp)
   11f04:	c102                	sw	zero,128(sp)
   11f06:	cb3a                	sw	a4,148(sp)
   11f08:	476e                	lw	a4,216(sp)
   11f0a:	c302                	sw	zero,132(sp)
   11f0c:	c502                	sw	zero,136(sp)
   11f0e:	cd3a                	sw	a4,152(sp)
   11f10:	477e                	lw	a4,220(sp)
   11f12:	c702                	sw	zero,140(sp)
   11f14:	cf3a                	sw	a4,156(sp)
   11f16:	4f1050ef          	jal	17c06 <__eqtf2>
   11f1a:	5662                	lw	a2,56(sp)
   11f1c:	36051363          	bnez	a0,12282 <_vfprintf_r+0xba4>
   11f20:	47ae                	lw	a5,200(sp)
   11f22:	6769                	lui	a4,0x1a
   11f24:	17870713          	addi	a4,a4,376 # 1a178 <__clzsi2+0x102>
   11f28:	c018                	sw	a4,0(s0)
   11f2a:	0605                	addi	a2,a2,1
   11f2c:	4705                	li	a4,1
   11f2e:	0785                	addi	a5,a5,1
   11f30:	c058                	sw	a4,4(s0)
   11f32:	c7b2                	sw	a2,204(sp)
   11f34:	c5be                	sw	a5,200(sp)
   11f36:	471d                	li	a4,7
   11f38:	0421                	addi	s0,s0,8
   11f3a:	16f74de3          	blt	a4,a5,128b4 <_vfprintf_r+0x11d6>
   11f3e:	57ba                	lw	a5,172(sp)
   11f40:	5702                	lw	a4,32(sp)
   11f42:	4ce7db63          	bge	a5,a4,12418 <_vfprintf_r+0xd3a>
   11f46:	57c2                	lw	a5,48(sp)
   11f48:	5732                	lw	a4,44(sp)
   11f4a:	0421                	addi	s0,s0,8
   11f4c:	fef42c23          	sw	a5,-8(s0)
   11f50:	47ae                	lw	a5,200(sp)
   11f52:	963a                	add	a2,a2,a4
   11f54:	fee42e23          	sw	a4,-4(s0)
   11f58:	0785                	addi	a5,a5,1
   11f5a:	c7b2                	sw	a2,204(sp)
   11f5c:	c5be                	sw	a5,200(sp)
   11f5e:	471d                	li	a4,7
   11f60:	5cf74c63          	blt	a4,a5,12538 <_vfprintf_r+0xe5a>
   11f64:	5782                	lw	a5,32(sp)
   11f66:	fff78a93          	addi	s5,a5,-1
   11f6a:	995056e3          	blez	s5,118f6 <_vfprintf_r+0x218>
   11f6e:	6869                	lui	a6,0x1a
   11f70:	5cc80813          	addi	a6,a6,1484 # 1a5cc <zeroes.0>
   11f74:	4741                	li	a4,16
   11f76:	47ae                	lw	a5,200(sp)
   11f78:	4b41                	li	s6,16
   11f7a:	4c1d                	li	s8,7
   11f7c:	8d42                	mv	s10,a6
   11f7e:	01574763          	blt	a4,s5,11f8c <_vfprintf_r+0x8ae>
   11f82:	14b0006f          	j	128cc <_vfprintf_r+0x11ee>
   11f86:	1ac1                	addi	s5,s5,-16
   11f88:	155b51e3          	bge	s6,s5,128ca <_vfprintf_r+0x11ec>
   11f8c:	0641                	addi	a2,a2,16
   11f8e:	0785                	addi	a5,a5,1
   11f90:	01a42023          	sw	s10,0(s0)
   11f94:	01642223          	sw	s6,4(s0)
   11f98:	c7b2                	sw	a2,204(sp)
   11f9a:	c5be                	sw	a5,200(sp)
   11f9c:	0421                	addi	s0,s0,8
   11f9e:	fefc54e3          	bge	s8,a5,11f86 <_vfprintf_r+0x8a8>
   11fa2:	4522                	lw	a0,8(sp)
   11fa4:	01d0                	addi	a2,sp,196
   11fa6:	85a6                	mv	a1,s1
   11fa8:	37c010ef          	jal	13324 <__sprint_r>
   11fac:	18051563          	bnez	a0,12136 <_vfprintf_r+0xa58>
   11fb0:	463e                	lw	a2,204(sp)
   11fb2:	47ae                	lw	a5,200(sp)
   11fb4:	844e                	mv	s0,s3
   11fb6:	bfc1                	j	11f86 <_vfprintf_r+0x8a8>
   11fb8:	4705                	li	a4,1
   11fba:	00e79463          	bne	a5,a4,11fc2 <_vfprintf_r+0x8e4>
   11fbe:	0f20106f          	j	130b0 <_vfprintf_r+0x19d2>
   11fc2:	4709                	li	a4,2
   11fc4:	8ee6                	mv	t4,s9
   11fc6:	cee79de3          	bne	a5,a4,11cc0 <_vfprintf_r+0x5e2>
   11fca:	56d2                	lw	a3,52(sp)
   11fcc:	19010d13          	addi	s10,sp,400
   11fd0:	00fb7793          	andi	a5,s6,15
   11fd4:	97b6                	add	a5,a5,a3
   11fd6:	0007c703          	lbu	a4,0(a5)
   11fda:	004b5b13          	srli	s6,s6,0x4
   11fde:	01cd9793          	slli	a5,s11,0x1c
   11fe2:	0167eb33          	or	s6,a5,s6
   11fe6:	004ddd93          	srli	s11,s11,0x4
   11fea:	feed0fa3          	sb	a4,-1(s10)
   11fee:	01bb67b3          	or	a5,s6,s11
   11ff2:	1d7d                	addi	s10,s10,-1
   11ff4:	fff1                	bnez	a5,11fd0 <_vfprintf_r+0x8f2>
   11ff6:	0b1c                	addi	a5,sp,400
   11ff8:	41a78b33          	sub	s6,a5,s10
   11ffc:	8cf6                	mv	s9,t4
   11ffe:	bc15                	j	11a32 <_vfprintf_r+0x354>
   12000:	41bb8c33          	sub	s8,s7,s11
   12004:	8d8054e3          	blez	s8,118cc <_vfprintf_r+0x1ee>
   12008:	6869                	lui	a6,0x1a
   1200a:	4541                	li	a0,16
   1200c:	45ae                	lw	a1,200(sp)
   1200e:	5cc80813          	addi	a6,a6,1484 # 1a5cc <zeroes.0>
   12012:	05855f63          	bge	a0,s8,12070 <_vfprintf_r+0x992>
   12016:	dc4a                	sw	s2,56(sp)
   12018:	87a2                	mv	a5,s0
   1201a:	4ec1                	li	t4,16
   1201c:	8462                	mv	s0,s8
   1201e:	4f9d                	li	t6,7
   12020:	8c5a                	mv	s8,s6
   12022:	8942                	mv	s2,a6
   12024:	8b56                	mv	s6,s5
   12026:	8ac6                	mv	s5,a7
   12028:	a021                	j	12030 <_vfprintf_r+0x952>
   1202a:	1441                	addi	s0,s0,-16
   1202c:	028edb63          	bge	t4,s0,12062 <_vfprintf_r+0x984>
   12030:	0641                	addi	a2,a2,16
   12032:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   12034:	0127a023          	sw	s2,0(a5)
   12038:	01d7a223          	sw	t4,4(a5)
   1203c:	c7b2                	sw	a2,204(sp)
   1203e:	c5ae                	sw	a1,200(sp)
   12040:	07a1                	addi	a5,a5,8
   12042:	febfd4e3          	bge	t6,a1,1202a <_vfprintf_r+0x94c>
   12046:	4522                	lw	a0,8(sp)
   12048:	01d0                	addi	a2,sp,196
   1204a:	85a6                	mv	a1,s1
   1204c:	2d8010ef          	jal	13324 <__sprint_r>
   12050:	e17d                	bnez	a0,12136 <_vfprintf_r+0xa58>
   12052:	4ec1                	li	t4,16
   12054:	1441                	addi	s0,s0,-16
   12056:	463e                	lw	a2,204(sp)
   12058:	45ae                	lw	a1,200(sp)
   1205a:	87ce                	mv	a5,s3
   1205c:	4f9d                	li	t6,7
   1205e:	fc8ec9e3          	blt	t4,s0,12030 <_vfprintf_r+0x952>
   12062:	884a                	mv	a6,s2
   12064:	5962                	lw	s2,56(sp)
   12066:	88d6                	mv	a7,s5
   12068:	8ada                	mv	s5,s6
   1206a:	8b62                	mv	s6,s8
   1206c:	8c22                	mv	s8,s0
   1206e:	843e                	mv	s0,a5
   12070:	9662                	add	a2,a2,s8
   12072:	0585                	addi	a1,a1,1
   12074:	01042023          	sw	a6,0(s0)
   12078:	01842223          	sw	s8,4(s0)
   1207c:	c7b2                	sw	a2,204(sp)
   1207e:	c5ae                	sw	a1,200(sp)
   12080:	471d                	li	a4,7
   12082:	0421                	addi	s0,s0,8
   12084:	84b754e3          	bge	a4,a1,118cc <_vfprintf_r+0x1ee>
   12088:	4522                	lw	a0,8(sp)
   1208a:	01d0                	addi	a2,sp,196
   1208c:	85a6                	mv	a1,s1
   1208e:	dc46                	sw	a7,56(sp)
   12090:	294010ef          	jal	13324 <__sprint_r>
   12094:	e14d                	bnez	a0,12136 <_vfprintf_r+0xa58>
   12096:	463e                	lw	a2,204(sp)
   12098:	58e2                	lw	a7,56(sp)
   1209a:	844e                	mv	s0,s3
   1209c:	831ff06f          	j	118cc <_vfprintf_r+0x1ee>
   120a0:	6869                	lui	a6,0x1a
   120a2:	4741                	li	a4,16
   120a4:	45ae                	lw	a1,200(sp)
   120a6:	5cc80813          	addi	a6,a6,1484 # 1a5cc <zeroes.0>
   120aa:	05575763          	bge	a4,s5,120f8 <_vfprintf_r+0xa1a>
   120ae:	87a2                	mv	a5,s0
   120b0:	4741                	li	a4,16
   120b2:	8456                	mv	s0,s5
   120b4:	4c1d                	li	s8,7
   120b6:	dc46                	sw	a7,56(sp)
   120b8:	8ad2                	mv	s5,s4
   120ba:	a021                	j	120c2 <_vfprintf_r+0x9e4>
   120bc:	1441                	addi	s0,s0,-16
   120be:	02875963          	bge	a4,s0,120f0 <_vfprintf_r+0xa12>
   120c2:	0641                	addi	a2,a2,16
   120c4:	0585                	addi	a1,a1,1
   120c6:	0147a023          	sw	s4,0(a5)
   120ca:	c3d8                	sw	a4,4(a5)
   120cc:	c7b2                	sw	a2,204(sp)
   120ce:	c5ae                	sw	a1,200(sp)
   120d0:	07a1                	addi	a5,a5,8
   120d2:	febc55e3          	bge	s8,a1,120bc <_vfprintf_r+0x9de>
   120d6:	4522                	lw	a0,8(sp)
   120d8:	01d0                	addi	a2,sp,196
   120da:	85a6                	mv	a1,s1
   120dc:	248010ef          	jal	13324 <__sprint_r>
   120e0:	e939                	bnez	a0,12136 <_vfprintf_r+0xa58>
   120e2:	4741                	li	a4,16
   120e4:	1441                	addi	s0,s0,-16
   120e6:	463e                	lw	a2,204(sp)
   120e8:	45ae                	lw	a1,200(sp)
   120ea:	87ce                	mv	a5,s3
   120ec:	fc874be3          	blt	a4,s0,120c2 <_vfprintf_r+0x9e4>
   120f0:	58e2                	lw	a7,56(sp)
   120f2:	8856                	mv	a6,s5
   120f4:	8aa2                	mv	s5,s0
   120f6:	843e                	mv	s0,a5
   120f8:	9656                	add	a2,a2,s5
   120fa:	0585                	addi	a1,a1,1
   120fc:	01042023          	sw	a6,0(s0)
   12100:	01542223          	sw	s5,4(s0)
   12104:	c7b2                	sw	a2,204(sp)
   12106:	c5ae                	sw	a1,200(sp)
   12108:	471d                	li	a4,7
   1210a:	0421                	addi	s0,s0,8
   1210c:	fcb75463          	bge	a4,a1,118d4 <_vfprintf_r+0x1f6>
   12110:	4522                	lw	a0,8(sp)
   12112:	01d0                	addi	a2,sp,196
   12114:	85a6                	mv	a1,s1
   12116:	dc46                	sw	a7,56(sp)
   12118:	20c010ef          	jal	13324 <__sprint_r>
   1211c:	ed09                	bnez	a0,12136 <_vfprintf_r+0xa58>
   1211e:	463e                	lw	a2,204(sp)
   12120:	58e2                	lw	a7,56(sp)
   12122:	844e                	mv	s0,s3
   12124:	fb0ff06f          	j	118d4 <_vfprintf_r+0x1f6>
   12128:	4522                	lw	a0,8(sp)
   1212a:	01d0                	addi	a2,sp,196
   1212c:	85a6                	mv	a1,s1
   1212e:	1f6010ef          	jal	13324 <__sprint_r>
   12132:	fe050363          	beqz	a0,11918 <_vfprintf_r+0x23a>
   12136:	45c2                	lw	a1,16(sp)
   12138:	800581e3          	beqz	a1,1193a <_vfprintf_r+0x25c>
   1213c:	4522                	lw	a0,8(sp)
   1213e:	dd7fe0ef          	jal	10f14 <_free_r>
   12142:	ff8ff06f          	j	1193a <_vfprintf_r+0x25c>
   12146:	8ee6                	mv	t4,s9
   12148:	b6b5                	j	11cb4 <_vfprintf_r+0x5d6>
   1214a:	6869                	lui	a6,0x1a
   1214c:	4541                	li	a0,16
   1214e:	45ae                	lw	a1,200(sp)
   12150:	5dc80c13          	addi	s8,a6,1500 # 1a5dc <blanks.1>
   12154:	06e55363          	bge	a0,a4,121ba <_vfprintf_r+0xadc>
   12158:	c8ca                	sw	s2,80(sp)
   1215a:	87a2                	mv	a5,s0
   1215c:	8962                	mv	s2,s8
   1215e:	4ec1                	li	t4,16
   12160:	8c5a                	mv	s8,s6
   12162:	439d                	li	t2,7
   12164:	8b56                	mv	s6,s5
   12166:	dc16                	sw	t0,56(sp)
   12168:	c6fe                	sw	t6,76(sp)
   1216a:	843a                	mv	s0,a4
   1216c:	8ac6                	mv	s5,a7
   1216e:	a021                	j	12176 <_vfprintf_r+0xa98>
   12170:	1441                	addi	s0,s0,-16
   12172:	028edb63          	bge	t4,s0,121a8 <_vfprintf_r+0xaca>
   12176:	0641                	addi	a2,a2,16
   12178:	0585                	addi	a1,a1,1
   1217a:	0127a023          	sw	s2,0(a5)
   1217e:	01d7a223          	sw	t4,4(a5)
   12182:	c7b2                	sw	a2,204(sp)
   12184:	c5ae                	sw	a1,200(sp)
   12186:	07a1                	addi	a5,a5,8
   12188:	feb3d4e3          	bge	t2,a1,12170 <_vfprintf_r+0xa92>
   1218c:	4522                	lw	a0,8(sp)
   1218e:	01d0                	addi	a2,sp,196
   12190:	85a6                	mv	a1,s1
   12192:	192010ef          	jal	13324 <__sprint_r>
   12196:	f145                	bnez	a0,12136 <_vfprintf_r+0xa58>
   12198:	4ec1                	li	t4,16
   1219a:	1441                	addi	s0,s0,-16
   1219c:	463e                	lw	a2,204(sp)
   1219e:	45ae                	lw	a1,200(sp)
   121a0:	87ce                	mv	a5,s3
   121a2:	439d                	li	t2,7
   121a4:	fc8ec9e3          	blt	t4,s0,12176 <_vfprintf_r+0xa98>
   121a8:	88d6                	mv	a7,s5
   121aa:	52e2                	lw	t0,56(sp)
   121ac:	8ada                	mv	s5,s6
   121ae:	4fb6                	lw	t6,76(sp)
   121b0:	8b62                	mv	s6,s8
   121b2:	8c4a                	mv	s8,s2
   121b4:	4946                	lw	s2,80(sp)
   121b6:	8722                	mv	a4,s0
   121b8:	843e                	mv	s0,a5
   121ba:	963a                	add	a2,a2,a4
   121bc:	0585                	addi	a1,a1,1
   121be:	c058                	sw	a4,4(s0)
   121c0:	01842023          	sw	s8,0(s0)
   121c4:	c7b2                	sw	a2,204(sp)
   121c6:	c5ae                	sw	a1,200(sp)
   121c8:	471d                	li	a4,7
   121ca:	0421                	addi	s0,s0,8
   121cc:	eab75c63          	bge	a4,a1,11884 <_vfprintf_r+0x1a6>
   121d0:	4522                	lw	a0,8(sp)
   121d2:	01d0                	addi	a2,sp,196
   121d4:	85a6                	mv	a1,s1
   121d6:	c8c6                	sw	a7,80(sp)
   121d8:	c6fe                	sw	t6,76(sp)
   121da:	dc16                	sw	t0,56(sp)
   121dc:	148010ef          	jal	13324 <__sprint_r>
   121e0:	f939                	bnez	a0,12136 <_vfprintf_r+0xa58>
   121e2:	463e                	lw	a2,204(sp)
   121e4:	48c6                	lw	a7,80(sp)
   121e6:	4fb6                	lw	t6,76(sp)
   121e8:	52e2                	lw	t0,56(sp)
   121ea:	844e                	mv	s0,s3
   121ec:	e98ff06f          	j	11884 <_vfprintf_r+0x1a6>
   121f0:	4522                	lw	a0,8(sp)
   121f2:	01d0                	addi	a2,sp,196
   121f4:	85a6                	mv	a1,s1
   121f6:	c6c6                	sw	a7,76(sp)
   121f8:	dc7e                	sw	t6,56(sp)
   121fa:	12a010ef          	jal	13324 <__sprint_r>
   121fe:	fd05                	bnez	a0,12136 <_vfprintf_r+0xa58>
   12200:	463e                	lw	a2,204(sp)
   12202:	48b6                	lw	a7,76(sp)
   12204:	5fe2                	lw	t6,56(sp)
   12206:	844e                	mv	s0,s3
   12208:	ebcff06f          	j	118c4 <_vfprintf_r+0x1e6>
   1220c:	6869                	lui	a6,0x1a
   1220e:	4741                	li	a4,16
   12210:	47ae                	lw	a5,200(sp)
   12212:	5dc80c13          	addi	s8,a6,1500 # 1a5dc <blanks.1>
   12216:	05575163          	bge	a4,s5,12258 <_vfprintf_r+0xb7a>
   1221a:	4d22                	lw	s10,8(sp)
   1221c:	4b41                	li	s6,16
   1221e:	4c9d                	li	s9,7
   12220:	a021                	j	12228 <_vfprintf_r+0xb4a>
   12222:	1ac1                	addi	s5,s5,-16
   12224:	035b5a63          	bge	s6,s5,12258 <_vfprintf_r+0xb7a>
   12228:	0641                	addi	a2,a2,16
   1222a:	0785                	addi	a5,a5,1
   1222c:	01842023          	sw	s8,0(s0)
   12230:	01642223          	sw	s6,4(s0)
   12234:	c7b2                	sw	a2,204(sp)
   12236:	c5be                	sw	a5,200(sp)
   12238:	0421                	addi	s0,s0,8
   1223a:	fefcd4e3          	bge	s9,a5,12222 <_vfprintf_r+0xb44>
   1223e:	01d0                	addi	a2,sp,196
   12240:	85a6                	mv	a1,s1
   12242:	856a                	mv	a0,s10
   12244:	0e0010ef          	jal	13324 <__sprint_r>
   12248:	ee0517e3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   1224c:	1ac1                	addi	s5,s5,-16
   1224e:	463e                	lw	a2,204(sp)
   12250:	47ae                	lw	a5,200(sp)
   12252:	844e                	mv	s0,s3
   12254:	fd5b4ae3          	blt	s6,s5,12228 <_vfprintf_r+0xb4a>
   12258:	9656                	add	a2,a2,s5
   1225a:	0785                	addi	a5,a5,1
   1225c:	01842023          	sw	s8,0(s0)
   12260:	01542223          	sw	s5,4(s0)
   12264:	c7b2                	sw	a2,204(sp)
   12266:	c5be                	sw	a5,200(sp)
   12268:	471d                	li	a4,7
   1226a:	e8f75e63          	bge	a4,a5,11906 <_vfprintf_r+0x228>
   1226e:	4522                	lw	a0,8(sp)
   12270:	01d0                	addi	a2,sp,196
   12272:	85a6                	mv	a1,s1
   12274:	0b0010ef          	jal	13324 <__sprint_r>
   12278:	ea051fe3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   1227c:	463e                	lw	a2,204(sp)
   1227e:	e88ff06f          	j	11906 <_vfprintf_r+0x228>
   12282:	553a                	lw	a0,172(sp)
   12284:	5ca05e63          	blez	a0,12860 <_vfprintf_r+0x1182>
   12288:	47f2                	lw	a5,28(sp)
   1228a:	5702                	lw	a4,32(sp)
   1228c:	8abe                	mv	s5,a5
   1228e:	22f74163          	blt	a4,a5,124b0 <_vfprintf_r+0xdd2>
   12292:	01505f63          	blez	s5,122b0 <_vfprintf_r+0xbd2>
   12296:	472e                	lw	a4,200(sp)
   12298:	9656                	add	a2,a2,s5
   1229a:	01a42023          	sw	s10,0(s0)
   1229e:	0705                	addi	a4,a4,1
   122a0:	01542223          	sw	s5,4(s0)
   122a4:	c7b2                	sw	a2,204(sp)
   122a6:	c5ba                	sw	a4,200(sp)
   122a8:	459d                	li	a1,7
   122aa:	0421                	addi	s0,s0,8
   122ac:	14e5c5e3          	blt	a1,a4,12bf6 <_vfprintf_r+0x1518>
   122b0:	fffac713          	not	a4,s5
   122b4:	47f2                	lw	a5,28(sp)
   122b6:	877d                	srai	a4,a4,0x1f
   122b8:	00eafab3          	and	s5,s5,a4
   122bc:	41578ab3          	sub	s5,a5,s5
   122c0:	2b504163          	bgtz	s5,12562 <_vfprintf_r+0xe84>
   122c4:	47f2                	lw	a5,28(sp)
   122c6:	400cf713          	andi	a4,s9,1024
   122ca:	00fd0c33          	add	s8,s10,a5
   122ce:	7a071e63          	bnez	a4,12a8a <_vfprintf_r+0x13ac>
   122d2:	5aba                	lw	s5,172(sp)
   122d4:	5782                	lw	a5,32(sp)
   122d6:	2cfaca63          	blt	s5,a5,125aa <_vfprintf_r+0xecc>
   122da:	001cf713          	andi	a4,s9,1
   122de:	2c071663          	bnez	a4,125aa <_vfprintf_r+0xecc>
   122e2:	5702                	lw	a4,32(sp)
   122e4:	00ed07b3          	add	a5,s10,a4
   122e8:	41570ab3          	sub	s5,a4,s5
   122ec:	41878b33          	sub	s6,a5,s8
   122f0:	016ad363          	bge	s5,s6,122f6 <_vfprintf_r+0xc18>
   122f4:	8b56                	mv	s6,s5
   122f6:	01605f63          	blez	s6,12314 <_vfprintf_r+0xc36>
   122fa:	47ae                	lw	a5,200(sp)
   122fc:	965a                	add	a2,a2,s6
   122fe:	01842023          	sw	s8,0(s0)
   12302:	0785                	addi	a5,a5,1
   12304:	01642223          	sw	s6,4(s0)
   12308:	c7b2                	sw	a2,204(sp)
   1230a:	c5be                	sw	a5,200(sp)
   1230c:	471d                	li	a4,7
   1230e:	0421                	addi	s0,s0,8
   12310:	4cf74de3          	blt	a4,a5,12fea <_vfprintf_r+0x190c>
   12314:	fffb4793          	not	a5,s6
   12318:	87fd                	srai	a5,a5,0x1f
   1231a:	00fb7b33          	and	s6,s6,a5
   1231e:	416a8ab3          	sub	s5,s5,s6
   12322:	dd505a63          	blez	s5,118f6 <_vfprintf_r+0x218>
   12326:	6869                	lui	a6,0x1a
   12328:	5cc80813          	addi	a6,a6,1484 # 1a5cc <zeroes.0>
   1232c:	4741                	li	a4,16
   1232e:	47ae                	lw	a5,200(sp)
   12330:	4b41                	li	s6,16
   12332:	4c1d                	li	s8,7
   12334:	8d42                	mv	s10,a6
   12336:	01574663          	blt	a4,s5,12342 <_vfprintf_r+0xc64>
   1233a:	ab49                	j	128cc <_vfprintf_r+0x11ee>
   1233c:	1ac1                	addi	s5,s5,-16
   1233e:	595b5663          	bge	s6,s5,128ca <_vfprintf_r+0x11ec>
   12342:	0641                	addi	a2,a2,16
   12344:	0785                	addi	a5,a5,1
   12346:	01a42023          	sw	s10,0(s0)
   1234a:	01642223          	sw	s6,4(s0)
   1234e:	c7b2                	sw	a2,204(sp)
   12350:	c5be                	sw	a5,200(sp)
   12352:	0421                	addi	s0,s0,8
   12354:	fefc54e3          	bge	s8,a5,1233c <_vfprintf_r+0xc5e>
   12358:	4522                	lw	a0,8(sp)
   1235a:	01d0                	addi	a2,sp,196
   1235c:	85a6                	mv	a1,s1
   1235e:	7c7000ef          	jal	13324 <__sprint_r>
   12362:	dc051ae3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12366:	463e                	lw	a2,204(sp)
   12368:	47ae                	lw	a5,200(sp)
   1236a:	844e                	mv	s0,s3
   1236c:	bfc1                	j	1233c <_vfprintf_r+0xc5e>
   1236e:	001cf593          	andi	a1,s9,1
   12372:	840599e3          	bnez	a1,11bc4 <_vfprintf_r+0x4e6>
   12376:	c058                	sw	a4,4(s0)
   12378:	c7e2                	sw	s8,204(sp)
   1237a:	c5d6                	sw	s5,200(sp)
   1237c:	479d                	li	a5,7
   1237e:	8b57dbe3          	bge	a5,s5,11c34 <_vfprintf_r+0x556>
   12382:	4522                	lw	a0,8(sp)
   12384:	01d0                	addi	a2,sp,196
   12386:	85a6                	mv	a1,s1
   12388:	79d000ef          	jal	13324 <__sprint_r>
   1238c:	da0515e3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12390:	4c3e                	lw	s8,204(sp)
   12392:	4aae                	lw	s5,200(sp)
   12394:	8b4e                	mv	s6,s3
   12396:	b879                	j	11c34 <_vfprintf_r+0x556>
   12398:	5702                	lw	a4,32(sp)
   1239a:	4785                	li	a5,1
   1239c:	88e7dce3          	bge	a5,a4,11c34 <_vfprintf_r+0x556>
   123a0:	6869                	lui	a6,0x1a
   123a2:	47c5                	li	a5,17
   123a4:	5cc80813          	addi	a6,a6,1484 # 1a5cc <zeroes.0>
   123a8:	60e7d863          	bge	a5,a4,129b8 <_vfprintf_r+0x12da>
   123ac:	ce4a                	sw	s2,28(sp)
   123ae:	47c1                	li	a5,16
   123b0:	4d1d                	li	s10,7
   123b2:	8942                	mv	s2,a6
   123b4:	a021                	j	123bc <_vfprintf_r+0xcde>
   123b6:	1441                	addi	s0,s0,-16
   123b8:	5e87de63          	bge	a5,s0,129b4 <_vfprintf_r+0x12d6>
   123bc:	0c41                	addi	s8,s8,16
   123be:	0a85                	addi	s5,s5,1
   123c0:	012b2023          	sw	s2,0(s6)
   123c4:	00fb2223          	sw	a5,4(s6)
   123c8:	c7e2                	sw	s8,204(sp)
   123ca:	c5d6                	sw	s5,200(sp)
   123cc:	0b21                	addi	s6,s6,8
   123ce:	ff5d54e3          	bge	s10,s5,123b6 <_vfprintf_r+0xcd8>
   123d2:	4522                	lw	a0,8(sp)
   123d4:	01d0                	addi	a2,sp,196
   123d6:	85a6                	mv	a1,s1
   123d8:	74d000ef          	jal	13324 <__sprint_r>
   123dc:	d4051de3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   123e0:	4c3e                	lw	s8,204(sp)
   123e2:	4aae                	lw	s5,200(sp)
   123e4:	8b4e                	mv	s6,s3
   123e6:	47c1                	li	a5,16
   123e8:	b7f9                	j	123b6 <_vfprintf_r+0xcd8>
   123ea:	4752                	lw	a4,20(sp)
   123ec:	010ef793          	andi	a5,t4,16
   123f0:	00072b03          	lw	s6,0(a4)
   123f4:	0711                	addi	a4,a4,4
   123f6:	ca3a                	sw	a4,20(sp)
   123f8:	ef9d                	bnez	a5,12436 <_vfprintf_r+0xd58>
   123fa:	040ef793          	andi	a5,t4,64
   123fe:	c79d                	beqz	a5,1242c <_vfprintf_r+0xd4e>
   12400:	0b42                	slli	s6,s6,0x10
   12402:	010b5b13          	srli	s6,s6,0x10
   12406:	4d81                	li	s11,0
   12408:	4785                	li	a5,1
   1240a:	e6eff06f          	j	11a78 <_vfprintf_r+0x39a>
   1240e:	4b01                	li	s6,0
   12410:	19010d13          	addi	s10,sp,400
   12414:	e1eff06f          	j	11a32 <_vfprintf_r+0x354>
   12418:	001cf793          	andi	a5,s9,1
   1241c:	cc078d63          	beqz	a5,118f6 <_vfprintf_r+0x218>
   12420:	b61d                	j	11f46 <_vfprintf_r+0x868>
   12422:	00094883          	lbu	a7,0(s2)
   12426:	ca3e                	sw	a5,20(sp)
   12428:	be6ff06f          	j	1180e <_vfprintf_r+0x130>
   1242c:	200ef793          	andi	a5,t4,512
   12430:	c399                	beqz	a5,12436 <_vfprintf_r+0xd58>
   12432:	0ffb7b13          	zext.b	s6,s6
   12436:	4d81                	li	s11,0
   12438:	4785                	li	a5,1
   1243a:	e3eff06f          	j	11a78 <_vfprintf_r+0x39a>
   1243e:	200cf793          	andi	a5,s9,512
   12442:	7e079563          	bnez	a5,12c2c <_vfprintf_r+0x154e>
   12446:	4d81                	li	s11,0
   12448:	e2aff06f          	j	11a72 <_vfprintf_r+0x394>
   1244c:	200cf793          	andi	a5,s9,512
   12450:	7c079663          	bnez	a5,12c1c <_vfprintf_r+0x153e>
   12454:	41fb5d93          	srai	s11,s6,0x1f
   12458:	87ee                	mv	a5,s11
   1245a:	db6ff06f          	j	11a10 <_vfprintf_r+0x332>
   1245e:	57f2                	lw	a5,60(sp)
   12460:	00094883          	lbu	a7,0(s2)
   12464:	ba078563          	beqz	a5,1180e <_vfprintf_r+0x130>
   12468:	0007c783          	lbu	a5,0(a5)
   1246c:	ba078163          	beqz	a5,1180e <_vfprintf_r+0x130>
   12470:	400cec93          	ori	s9,s9,1024
   12474:	b9aff06f          	j	1180e <_vfprintf_r+0x130>
   12478:	010cf793          	andi	a5,s9,16
   1247c:	4c079063          	bnez	a5,1293c <_vfprintf_r+0x125e>
   12480:	040cf793          	andi	a5,s9,64
   12484:	78079563          	bnez	a5,12c0e <_vfprintf_r+0x1530>
   12488:	200cfe13          	andi	t3,s9,512
   1248c:	4a0e0863          	beqz	t3,1293c <_vfprintf_r+0x125e>
   12490:	47d2                	lw	a5,20(sp)
   12492:	4732                	lw	a4,12(sp)
   12494:	439c                	lw	a5,0(a5)
   12496:	00e78023          	sb	a4,0(a5)
   1249a:	b425                	j	11ec2 <_vfprintf_r+0x7e4>
   1249c:	47d2                	lw	a5,20(sp)
   1249e:	4398                	lw	a4,0(a5)
   124a0:	0791                	addi	a5,a5,4
   124a2:	ca3e                	sw	a5,20(sp)
   124a4:	430c                	lw	a1,0(a4)
   124a6:	4350                	lw	a2,4(a4)
   124a8:	4714                	lw	a3,8(a4)
   124aa:	4758                	lw	a4,12(a4)
   124ac:	e52ff06f          	j	11afe <_vfprintf_r+0x420>
   124b0:	8aba                	mv	s5,a4
   124b2:	df5042e3          	bgtz	s5,12296 <_vfprintf_r+0xbb8>
   124b6:	bbed                	j	122b0 <_vfprintf_r+0xbd2>
   124b8:	5afd                	li	s5,-1
   124ba:	8936                	mv	s2,a3
   124bc:	b54ff06f          	j	11810 <_vfprintf_r+0x132>
   124c0:	67e9                	lui	a5,0x1a
   124c2:	15c78793          	addi	a5,a5,348 # 1a15c <__clzsi2+0xe6>
   124c6:	da3e                	sw	a5,52(sp)
   124c8:	020cf793          	andi	a5,s9,32
   124cc:	26078263          	beqz	a5,12730 <_vfprintf_r+0x1052>
   124d0:	47d2                	lw	a5,20(sp)
   124d2:	00778c13          	addi	s8,a5,7
   124d6:	ff8c7c13          	andi	s8,s8,-8
   124da:	000c2b03          	lw	s6,0(s8)
   124de:	004c2d83          	lw	s11,4(s8)
   124e2:	008c0793          	addi	a5,s8,8
   124e6:	ca3e                	sw	a5,20(sp)
   124e8:	001cf793          	andi	a5,s9,1
   124ec:	cf81                	beqz	a5,12504 <_vfprintf_r+0xe26>
   124ee:	01bb67b3          	or	a5,s6,s11
   124f2:	cb89                	beqz	a5,12504 <_vfprintf_r+0xe26>
   124f4:	03000793          	li	a5,48
   124f8:	0af10423          	sb	a5,168(sp)
   124fc:	0b1104a3          	sb	a7,169(sp)
   12500:	002cec93          	ori	s9,s9,2
   12504:	bffcfe93          	andi	t4,s9,-1025
   12508:	4789                	li	a5,2
   1250a:	d6eff06f          	j	11a78 <_vfprintf_r+0x39a>
   1250e:	8ee6                	mv	t4,s9
   12510:	b289                	j	11e52 <_vfprintf_r+0x774>
   12512:	67e9                	lui	a5,0x1a
   12514:	14878793          	addi	a5,a5,328 # 1a148 <__clzsi2+0xd2>
   12518:	da3e                	sw	a5,52(sp)
   1251a:	b77d                	j	124c8 <_vfprintf_r+0xdea>
   1251c:	00194883          	lbu	a7,1(s2)
   12520:	200cec93          	ori	s9,s9,512
   12524:	0905                	addi	s2,s2,1
   12526:	ae8ff06f          	j	1180e <_vfprintf_r+0x130>
   1252a:	00194883          	lbu	a7,1(s2)
   1252e:	020cec93          	ori	s9,s9,32
   12532:	0905                	addi	s2,s2,1
   12534:	adaff06f          	j	1180e <_vfprintf_r+0x130>
   12538:	4522                	lw	a0,8(sp)
   1253a:	01d0                	addi	a2,sp,196
   1253c:	85a6                	mv	a1,s1
   1253e:	5e7000ef          	jal	13324 <__sprint_r>
   12542:	be051ae3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12546:	463e                	lw	a2,204(sp)
   12548:	844e                	mv	s0,s3
   1254a:	bc29                	j	11f64 <_vfprintf_r+0x886>
   1254c:	4799                	li	a5,6
   1254e:	8b56                	mv	s6,s5
   12550:	6b57ed63          	bltu	a5,s5,12c0a <_vfprintf_r+0x152c>
   12554:	67e9                	lui	a5,0x1a
   12556:	8dda                	mv	s11,s6
   12558:	ca62                	sw	s8,20(sp)
   1255a:	17078d13          	addi	s10,a5,368 # 1a170 <__clzsi2+0xfa>
   1255e:	b00ff06f          	j	1185e <_vfprintf_r+0x180>
   12562:	6869                	lui	a6,0x1a
   12564:	45c1                	li	a1,16
   12566:	472e                	lw	a4,200(sp)
   12568:	5cc80813          	addi	a6,a6,1484 # 1a5cc <zeroes.0>
   1256c:	4755db63          	bge	a1,s5,129e2 <_vfprintf_r+0x1304>
   12570:	87a2                	mv	a5,s0
   12572:	4c41                	li	s8,16
   12574:	4b1d                	li	s6,7
   12576:	8442                	mv	s0,a6
   12578:	a021                	j	12580 <_vfprintf_r+0xea2>
   1257a:	1ac1                	addi	s5,s5,-16
   1257c:	475c5163          	bge	s8,s5,129de <_vfprintf_r+0x1300>
   12580:	0641                	addi	a2,a2,16
   12582:	0705                	addi	a4,a4,1
   12584:	c380                	sw	s0,0(a5)
   12586:	0187a223          	sw	s8,4(a5)
   1258a:	c7b2                	sw	a2,204(sp)
   1258c:	c5ba                	sw	a4,200(sp)
   1258e:	07a1                	addi	a5,a5,8
   12590:	feeb55e3          	bge	s6,a4,1257a <_vfprintf_r+0xe9c>
   12594:	4522                	lw	a0,8(sp)
   12596:	01d0                	addi	a2,sp,196
   12598:	85a6                	mv	a1,s1
   1259a:	58b000ef          	jal	13324 <__sprint_r>
   1259e:	b8051ce3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   125a2:	463e                	lw	a2,204(sp)
   125a4:	472e                	lw	a4,200(sp)
   125a6:	87ce                	mv	a5,s3
   125a8:	bfc9                	j	1257a <_vfprintf_r+0xe9c>
   125aa:	5742                	lw	a4,48(sp)
   125ac:	57b2                	lw	a5,44(sp)
   125ae:	459d                	li	a1,7
   125b0:	c018                	sw	a4,0(s0)
   125b2:	472e                	lw	a4,200(sp)
   125b4:	963e                	add	a2,a2,a5
   125b6:	c05c                	sw	a5,4(s0)
   125b8:	0705                	addi	a4,a4,1
   125ba:	c7b2                	sw	a2,204(sp)
   125bc:	c5ba                	sw	a4,200(sp)
   125be:	0421                	addi	s0,s0,8
   125c0:	d2e5d1e3          	bge	a1,a4,122e2 <_vfprintf_r+0xc04>
   125c4:	4522                	lw	a0,8(sp)
   125c6:	01d0                	addi	a2,sp,196
   125c8:	85a6                	mv	a1,s1
   125ca:	55b000ef          	jal	13324 <__sprint_r>
   125ce:	b60514e3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   125d2:	5aba                	lw	s5,172(sp)
   125d4:	463e                	lw	a2,204(sp)
   125d6:	844e                	mv	s0,s3
   125d8:	b329                	j	122e2 <_vfprintf_r+0xc04>
   125da:	07800793          	li	a5,120
   125de:	03000713          	li	a4,48
   125e2:	0ae10423          	sb	a4,168(sp)
   125e6:	0af104a3          	sb	a5,169(sp)
   125ea:	06300713          	li	a4,99
   125ee:	c802                	sw	zero,16(sp)
   125f0:	002cec93          	ori	s9,s9,2
   125f4:	12c10d13          	addi	s10,sp,300
   125f8:	d5575c63          	bge	a4,s5,11b50 <_vfprintf_r+0x472>
   125fc:	4522                	lw	a0,8(sp)
   125fe:	001a8593          	addi	a1,s5,1
   12602:	c846                	sw	a7,16(sp)
   12604:	b33fe0ef          	jal	11136 <_malloc_r>
   12608:	48c2                	lw	a7,16(sp)
   1260a:	8d2a                	mv	s10,a0
   1260c:	460502e3          	beqz	a0,13270 <_vfprintf_r+0x1b92>
   12610:	c82a                	sw	a0,16(sp)
   12612:	d3eff06f          	j	11b50 <_vfprintf_r+0x472>
   12616:	4522                	lw	a0,8(sp)
   12618:	09010b13          	addi	s6,sp,144
   1261c:	1178                	addi	a4,sp,172
   1261e:	0bc10813          	addi	a6,sp,188
   12622:	191c                	addi	a5,sp,176
   12624:	86d6                	mv	a3,s5
   12626:	4609                	li	a2,2
   12628:	85da                	mv	a1,s6
   1262a:	d446                	sw	a7,40(sp)
   1262c:	c97e                	sw	t6,144(sp)
   1262e:	d27e                	sw	t6,36(sp)
   12630:	cb7a                	sw	t5,148(sp)
   12632:	d07a                	sw	t5,32(sp)
   12634:	cd76                	sw	t4,152(sp)
   12636:	ce76                	sw	t4,28(sp)
   12638:	cf62                	sw	s8,156(sp)
   1263a:	0f3010ef          	jal	13f2c <_ldtoa_r>
   1263e:	001cf713          	andi	a4,s9,1
   12642:	4ef2                	lw	t4,28(sp)
   12644:	5f02                	lw	t5,32(sp)
   12646:	5f92                	lw	t6,36(sp)
   12648:	58a2                	lw	a7,40(sp)
   1264a:	8d2a                	mv	s10,a0
   1264c:	62071163          	bnez	a4,12c6e <_vfprintf_r+0x1590>
   12650:	57ba                	lw	a5,172(sp)
   12652:	ce3e                	sw	a5,28(sp)
   12654:	57fa                	lw	a5,188(sp)
   12656:	8f89                	sub	a5,a5,a0
   12658:	d03e                	sw	a5,32(sp)
   1265a:	47f2                	lw	a5,28(sp)
   1265c:	5775                	li	a4,-3
   1265e:	00e7c463          	blt	a5,a4,12666 <_vfprintf_r+0xf88>
   12662:	0efadbe3          	bge	s5,a5,12f58 <_vfprintf_r+0x187a>
   12666:	47f2                	lw	a5,28(sp)
   12668:	18f9                	addi	a7,a7,-2
   1266a:	fff78713          	addi	a4,a5,-1
   1266e:	d73a                	sw	a4,172(sp)
   12670:	0ff8f693          	zext.b	a3,a7
   12674:	4601                	li	a2,0
   12676:	0ad10a23          	sb	a3,180(sp)
   1267a:	02b00693          	li	a3,43
   1267e:	00075763          	bgez	a4,1268c <_vfprintf_r+0xfae>
   12682:	47f2                	lw	a5,28(sp)
   12684:	4705                	li	a4,1
   12686:	02d00693          	li	a3,45
   1268a:	8f1d                	sub	a4,a4,a5
   1268c:	0ad10aa3          	sb	a3,181(sp)
   12690:	46a5                	li	a3,9
   12692:	2ae6d1e3          	bge	a3,a4,13134 <_vfprintf_r+0x1a56>
   12696:	0c310813          	addi	a6,sp,195
   1269a:	85c2                	mv	a1,a6
   1269c:	4529                	li	a0,10
   1269e:	06300f13          	li	t5,99
   126a2:	02a767b3          	rem	a5,a4,a0
   126a6:	862e                	mv	a2,a1
   126a8:	86ba                	mv	a3,a4
   126aa:	15fd                	addi	a1,a1,-1
   126ac:	03078793          	addi	a5,a5,48
   126b0:	fef60fa3          	sb	a5,-1(a2)
   126b4:	02a74733          	div	a4,a4,a0
   126b8:	fedf45e3          	blt	t5,a3,126a2 <_vfprintf_r+0xfc4>
   126bc:	03070713          	addi	a4,a4,48
   126c0:	ffe60693          	addi	a3,a2,-2
   126c4:	fee58fa3          	sb	a4,-1(a1)
   126c8:	3706fce3          	bgeu	a3,a6,13240 <_vfprintf_r+0x1b62>
   126cc:	0b610713          	addi	a4,sp,182
   126d0:	0006c783          	lbu	a5,0(a3)
   126d4:	0685                	addi	a3,a3,1
   126d6:	0705                	addi	a4,a4,1
   126d8:	fef70fa3          	sb	a5,-1(a4)
   126dc:	ff069ae3          	bne	a3,a6,126d0 <_vfprintf_r+0xff2>
   126e0:	0b1c                	addi	a5,sp,400
   126e2:	40c78733          	sub	a4,a5,a2
   126e6:	f3770793          	addi	a5,a4,-201
   126ea:	c0be                	sw	a5,64(sp)
   126ec:	5782                	lw	a5,32(sp)
   126ee:	4686                	lw	a3,64(sp)
   126f0:	4705                	li	a4,1
   126f2:	00d78b33          	add	s6,a5,a3
   126f6:	26f758e3          	bge	a4,a5,13166 <_vfprintf_r+0x1a88>
   126fa:	57b2                	lw	a5,44(sp)
   126fc:	9b3e                	add	s6,s6,a5
   126fe:	fffb4693          	not	a3,s6
   12702:	bffcfe13          	andi	t3,s9,-1025
   12706:	86fd                	srai	a3,a3,0x1f
   12708:	100e6793          	ori	a5,t3,256
   1270c:	c6be                	sw	a5,76(sp)
   1270e:	00db7db3          	and	s11,s6,a3
   12712:	d402                	sw	zero,40(sp)
   12714:	d202                	sw	zero,36(sp)
   12716:	ce02                	sw	zero,28(sp)
   12718:	57e2                	lw	a5,56(sp)
   1271a:	020786e3          	beqz	a5,12f46 <_vfprintf_r+0x1868>
   1271e:	02d00713          	li	a4,45
   12722:	4cb6                	lw	s9,76(sp)
   12724:	0ae103a3          	sb	a4,167(sp)
   12728:	4a81                	li	s5,0
   1272a:	0d85                	addi	s11,s11,1
   1272c:	93cff06f          	j	11868 <_vfprintf_r+0x18a>
   12730:	4752                	lw	a4,20(sp)
   12732:	010cf793          	andi	a5,s9,16
   12736:	00072b03          	lw	s6,0(a4)
   1273a:	0711                	addi	a4,a4,4
   1273c:	ca3a                	sw	a4,20(sp)
   1273e:	e7a9                	bnez	a5,12788 <_vfprintf_r+0x10aa>
   12740:	040cf793          	andi	a5,s9,64
   12744:	cf95                	beqz	a5,12780 <_vfprintf_r+0x10a2>
   12746:	0b42                	slli	s6,s6,0x10
   12748:	010b5b13          	srli	s6,s6,0x10
   1274c:	4d81                	li	s11,0
   1274e:	bb69                	j	124e8 <_vfprintf_r+0xe0a>
   12750:	4522                	lw	a0,8(sp)
   12752:	01d0                	addi	a2,sp,196
   12754:	85a6                	mv	a1,s1
   12756:	3cf000ef          	jal	13324 <__sprint_r>
   1275a:	9c051ee3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   1275e:	4c3e                	lw	s8,204(sp)
   12760:	4aae                	lw	s5,200(sp)
   12762:	8b4e                	mv	s6,s3
   12764:	c6eff06f          	j	11bd2 <_vfprintf_r+0x4f4>
   12768:	4522                	lw	a0,8(sp)
   1276a:	01d0                	addi	a2,sp,196
   1276c:	85a6                	mv	a1,s1
   1276e:	3b7000ef          	jal	13324 <__sprint_r>
   12772:	9c0512e3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12776:	4c3e                	lw	s8,204(sp)
   12778:	4aae                	lw	s5,200(sp)
   1277a:	8b4e                	mv	s6,s3
   1277c:	c72ff06f          	j	11bee <_vfprintf_r+0x510>
   12780:	200cf793          	andi	a5,s9,512
   12784:	4a079963          	bnez	a5,12c36 <_vfprintf_r+0x1558>
   12788:	4d81                	li	s11,0
   1278a:	bbb9                	j	124e8 <_vfprintf_r+0xe0a>
   1278c:	ccccd837          	lui	a6,0xccccd
   12790:	ccccdcb7          	lui	s9,0xccccd
   12794:	5772                	lw	a4,60(sp)
   12796:	400eff13          	andi	t5,t4,1024
   1279a:	4601                	li	a2,0
   1279c:	0b0c                	addi	a1,sp,400
   1279e:	4e15                	li	t3,5
   127a0:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccb1271>
   127a4:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccb1270>
   127a8:	0ff00c13          	li	s8,255
   127ac:	a081                	j	127ec <_vfprintf_r+0x110e>
   127ae:	016d37b3          	sltu	a5,s10,s6
   127b2:	97ea                	add	a5,a5,s10
   127b4:	03c7f7b3          	remu	a5,a5,t3
   127b8:	40fb07b3          	sub	a5,s6,a5
   127bc:	00fb35b3          	sltu	a1,s6,a5
   127c0:	40bd85b3          	sub	a1,s11,a1
   127c4:	03978333          	mul	t1,a5,s9
   127c8:	030585b3          	mul	a1,a1,a6
   127cc:	0307b533          	mulhu	a0,a5,a6
   127d0:	959a                	add	a1,a1,t1
   127d2:	030787b3          	mul	a5,a5,a6
   127d6:	95aa                	add	a1,a1,a0
   127d8:	01f59513          	slli	a0,a1,0x1f
   127dc:	8185                	srli	a1,a1,0x1
   127de:	8385                	srli	a5,a5,0x1
   127e0:	8fc9                	or	a5,a5,a0
   127e2:	7c0d8763          	beqz	s11,12fb0 <_vfprintf_r+0x18d2>
   127e6:	8dae                	mv	s11,a1
   127e8:	8b3e                	mv	s6,a5
   127ea:	85b6                	mv	a1,a3
   127ec:	01bb0d33          	add	s10,s6,s11
   127f0:	016d37b3          	sltu	a5,s10,s6
   127f4:	97ea                	add	a5,a5,s10
   127f6:	03c7f7b3          	remu	a5,a5,t3
   127fa:	fff58693          	addi	a3,a1,-1
   127fe:	0605                	addi	a2,a2,1
   12800:	40fb07b3          	sub	a5,s6,a5
   12804:	00fb3533          	sltu	a0,s6,a5
   12808:	40ad8533          	sub	a0,s11,a0
   1280c:	0307b333          	mulhu	t1,a5,a6
   12810:	03050533          	mul	a0,a0,a6
   12814:	030787b3          	mul	a5,a5,a6
   12818:	951a                	add	a0,a0,t1
   1281a:	057e                	slli	a0,a0,0x1f
   1281c:	8385                	srli	a5,a5,0x1
   1281e:	8fc9                	or	a5,a5,a0
   12820:	00279513          	slli	a0,a5,0x2
   12824:	97aa                	add	a5,a5,a0
   12826:	0786                	slli	a5,a5,0x1
   12828:	40fb07b3          	sub	a5,s6,a5
   1282c:	03078793          	addi	a5,a5,48
   12830:	fef58fa3          	sb	a5,-1(a1)
   12834:	f60f0de3          	beqz	t5,127ae <_vfprintf_r+0x10d0>
   12838:	00074783          	lbu	a5,0(a4)
   1283c:	f6f619e3          	bne	a2,a5,127ae <_vfprintf_r+0x10d0>
   12840:	f78607e3          	beq	a2,s8,127ae <_vfprintf_r+0x10d0>
   12844:	1c0d9563          	bnez	s11,12a0e <_vfprintf_r+0x1330>
   12848:	47a5                	li	a5,9
   1284a:	1d67e263          	bltu	a5,s6,12a0e <_vfprintf_r+0x1330>
   1284e:	8d36                	mv	s10,a3
   12850:	0b1c                	addi	a5,sp,400
   12852:	d032                	sw	a2,32(sp)
   12854:	de3a                	sw	a4,60(sp)
   12856:	41a78b33          	sub	s6,a5,s10
   1285a:	8cf6                	mv	s9,t4
   1285c:	9d6ff06f          	j	11a32 <_vfprintf_r+0x354>
   12860:	472e                	lw	a4,200(sp)
   12862:	65e9                	lui	a1,0x1a
   12864:	17858593          	addi	a1,a1,376 # 1a178 <__clzsi2+0x102>
   12868:	c00c                	sw	a1,0(s0)
   1286a:	0605                	addi	a2,a2,1
   1286c:	4585                	li	a1,1
   1286e:	0705                	addi	a4,a4,1
   12870:	c04c                	sw	a1,4(s0)
   12872:	c7b2                	sw	a2,204(sp)
   12874:	c5ba                	sw	a4,200(sp)
   12876:	459d                	li	a1,7
   12878:	0421                	addi	s0,s0,8
   1287a:	36e5c063          	blt	a1,a4,12bda <_vfprintf_r+0x14fc>
   1287e:	e569                	bnez	a0,12948 <_vfprintf_r+0x126a>
   12880:	5782                	lw	a5,32(sp)
   12882:	001cf713          	andi	a4,s9,1
   12886:	8f5d                	or	a4,a4,a5
   12888:	e319                	bnez	a4,1288e <_vfprintf_r+0x11b0>
   1288a:	86cff06f          	j	118f6 <_vfprintf_r+0x218>
   1288e:	5742                	lw	a4,48(sp)
   12890:	57b2                	lw	a5,44(sp)
   12892:	459d                	li	a1,7
   12894:	c018                	sw	a4,0(s0)
   12896:	472e                	lw	a4,200(sp)
   12898:	963e                	add	a2,a2,a5
   1289a:	c05c                	sw	a5,4(s0)
   1289c:	0705                	addi	a4,a4,1
   1289e:	c7b2                	sw	a2,204(sp)
   128a0:	c5ba                	sw	a4,200(sp)
   128a2:	3ae5cb63          	blt	a1,a4,12c58 <_vfprintf_r+0x157a>
   128a6:	0421                	addi	s0,s0,8
   128a8:	a87d                	j	12966 <_vfprintf_r+0x1288>
   128aa:	4522                	lw	a0,8(sp)
   128ac:	fc1fd0ef          	jal	1086c <__sinit>
   128b0:	e6dfe06f          	j	1171c <_vfprintf_r+0x3e>
   128b4:	4522                	lw	a0,8(sp)
   128b6:	01d0                	addi	a2,sp,196
   128b8:	85a6                	mv	a1,s1
   128ba:	26b000ef          	jal	13324 <__sprint_r>
   128be:	86051ce3          	bnez	a0,12136 <_vfprintf_r+0xa58>
   128c2:	463e                	lw	a2,204(sp)
   128c4:	844e                	mv	s0,s3
   128c6:	e78ff06f          	j	11f3e <_vfprintf_r+0x860>
   128ca:	886a                	mv	a6,s10
   128cc:	01042023          	sw	a6,0(s0)
   128d0:	01542223          	sw	s5,4(s0)
   128d4:	9656                	add	a2,a2,s5
   128d6:	0785                	addi	a5,a5,1
   128d8:	c7b2                	sw	a2,204(sp)
   128da:	c5be                	sw	a5,200(sp)
   128dc:	471d                	li	a4,7
   128de:	00f74463          	blt	a4,a5,128e6 <_vfprintf_r+0x1208>
   128e2:	812ff06f          	j	118f4 <_vfprintf_r+0x216>
   128e6:	b70ff06f          	j	11c56 <_vfprintf_r+0x578>
   128ea:	47ce                	lw	a5,208(sp)
   128ec:	010c                	addi	a1,sp,128
   128ee:	0908                	addi	a0,sp,144
   128f0:	c93e                	sw	a5,144(sp)
   128f2:	47de                	lw	a5,212(sp)
   128f4:	c102                	sw	zero,128(sp)
   128f6:	c302                	sw	zero,132(sp)
   128f8:	cb3e                	sw	a5,148(sp)
   128fa:	47ee                	lw	a5,216(sp)
   128fc:	c502                	sw	zero,136(sp)
   128fe:	c702                	sw	zero,140(sp)
   12900:	cd3e                	sw	a5,152(sp)
   12902:	47fe                	lw	a5,220(sp)
   12904:	cf3e                	sw	a5,156(sp)
   12906:	4d8050ef          	jal	17dde <__letf2>
   1290a:	48c2                	lw	a7,16(sp)
   1290c:	6a054a63          	bltz	a0,12fc0 <_vfprintf_r+0x18e2>
   12910:	0a714703          	lbu	a4,167(sp)
   12914:	04700793          	li	a5,71
   12918:	2d17db63          	bge	a5,a7,12bee <_vfprintf_r+0x1510>
   1291c:	67e9                	lui	a5,0x1a
   1291e:	13c78d13          	addi	s10,a5,316 # 1a13c <__clzsi2+0xc6>
   12922:	c802                	sw	zero,16(sp)
   12924:	d402                	sw	zero,40(sp)
   12926:	d202                	sw	zero,36(sp)
   12928:	ce02                	sw	zero,28(sp)
   1292a:	f7fcfc93          	andi	s9,s9,-129
   1292e:	4d8d                	li	s11,3
   12930:	4b0d                	li	s6,3
   12932:	4a81                	li	s5,0
   12934:	90071b63          	bnez	a4,11a4a <_vfprintf_r+0x36c>
   12938:	f31fe06f          	j	11868 <_vfprintf_r+0x18a>
   1293c:	47d2                	lw	a5,20(sp)
   1293e:	4732                	lw	a4,12(sp)
   12940:	439c                	lw	a5,0(a5)
   12942:	c398                	sw	a4,0(a5)
   12944:	d7eff06f          	j	11ec2 <_vfprintf_r+0x7e4>
   12948:	5742                	lw	a4,48(sp)
   1294a:	57b2                	lw	a5,44(sp)
   1294c:	459d                	li	a1,7
   1294e:	c018                	sw	a4,0(s0)
   12950:	472e                	lw	a4,200(sp)
   12952:	963e                	add	a2,a2,a5
   12954:	c05c                	sw	a5,4(s0)
   12956:	0705                	addi	a4,a4,1
   12958:	c7b2                	sw	a2,204(sp)
   1295a:	c5ba                	sw	a4,200(sp)
   1295c:	0421                	addi	s0,s0,8
   1295e:	2ee5cd63          	blt	a1,a4,12c58 <_vfprintf_r+0x157a>
   12962:	74054a63          	bltz	a0,130b6 <_vfprintf_r+0x19d8>
   12966:	5782                	lw	a5,32(sp)
   12968:	0705                	addi	a4,a4,1
   1296a:	01a42023          	sw	s10,0(s0)
   1296e:	963e                	add	a2,a2,a5
   12970:	c05c                	sw	a5,4(s0)
   12972:	c7b2                	sw	a2,204(sp)
   12974:	c5ba                	sw	a4,200(sp)
   12976:	479d                	li	a5,7
   12978:	00e7c463          	blt	a5,a4,12980 <_vfprintf_r+0x12a2>
   1297c:	f79fe06f          	j	118f4 <_vfprintf_r+0x216>
   12980:	ad6ff06f          	j	11c56 <_vfprintf_r+0x578>
   12984:	856a                	mv	a0,s10
   12986:	dc46                	sw	a7,56(sp)
   12988:	b82fe0ef          	jal	10d0a <strlen>
   1298c:	0a714703          	lbu	a4,167(sp)
   12990:	fff54693          	not	a3,a0
   12994:	86fd                	srai	a3,a3,0x1f
   12996:	ca62                	sw	s8,20(sp)
   12998:	c802                	sw	zero,16(sp)
   1299a:	d402                	sw	zero,40(sp)
   1299c:	d202                	sw	zero,36(sp)
   1299e:	ce02                	sw	zero,28(sp)
   129a0:	58e2                	lw	a7,56(sp)
   129a2:	8b2a                	mv	s6,a0
   129a4:	00d57db3          	and	s11,a0,a3
   129a8:	4a81                	li	s5,0
   129aa:	c319                	beqz	a4,129b0 <_vfprintf_r+0x12d2>
   129ac:	89eff06f          	j	11a4a <_vfprintf_r+0x36c>
   129b0:	eb9fe06f          	j	11868 <_vfprintf_r+0x18a>
   129b4:	884a                	mv	a6,s2
   129b6:	4972                	lw	s2,28(sp)
   129b8:	9c22                	add	s8,s8,s0
   129ba:	0a85                	addi	s5,s5,1
   129bc:	010b2023          	sw	a6,0(s6)
   129c0:	a64ff06f          	j	11c24 <_vfprintf_r+0x546>
   129c4:	47fe                	lw	a5,220(sp)
   129c6:	2607cc63          	bltz	a5,12c3e <_vfprintf_r+0x1560>
   129ca:	0a714703          	lbu	a4,167(sp)
   129ce:	04700793          	li	a5,71
   129d2:	6317ca63          	blt	a5,a7,13006 <_vfprintf_r+0x1928>
   129d6:	67e9                	lui	a5,0x1a
   129d8:	14078d13          	addi	s10,a5,320 # 1a140 <__clzsi2+0xca>
   129dc:	b799                	j	12922 <_vfprintf_r+0x1244>
   129de:	8822                	mv	a6,s0
   129e0:	843e                	mv	s0,a5
   129e2:	9656                	add	a2,a2,s5
   129e4:	0705                	addi	a4,a4,1
   129e6:	01042023          	sw	a6,0(s0)
   129ea:	01542223          	sw	s5,4(s0)
   129ee:	c7b2                	sw	a2,204(sp)
   129f0:	c5ba                	sw	a4,200(sp)
   129f2:	459d                	li	a1,7
   129f4:	0421                	addi	s0,s0,8
   129f6:	8ce5d7e3          	bge	a1,a4,122c4 <_vfprintf_r+0xbe6>
   129fa:	4522                	lw	a0,8(sp)
   129fc:	01d0                	addi	a2,sp,196
   129fe:	85a6                	mv	a1,s1
   12a00:	125000ef          	jal	13324 <__sprint_r>
   12a04:	f2051963          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12a08:	463e                	lw	a2,204(sp)
   12a0a:	844e                	mv	s0,s3
   12a0c:	b865                	j	122c4 <_vfprintf_r+0xbe6>
   12a0e:	47a6                	lw	a5,72(sp)
   12a10:	4596                	lw	a1,68(sp)
   12a12:	dc42                	sw	a6,56(sp)
   12a14:	8e9d                	sub	a3,a3,a5
   12a16:	863e                	mv	a2,a5
   12a18:	8536                	mv	a0,a3
   12a1a:	d47a                	sw	t5,40(sp)
   12a1c:	d276                	sw	t4,36(sp)
   12a1e:	d046                	sw	a7,32(sp)
   12a20:	ce3a                	sw	a4,28(sp)
   12a22:	c836                	sw	a3,16(sp)
   12a24:	0a4010ef          	jal	13ac8 <strncpy>
   12a28:	016d37b3          	sltu	a5,s10,s6
   12a2c:	4615                	li	a2,5
   12a2e:	97ea                	add	a5,a5,s10
   12a30:	02c7f7b3          	remu	a5,a5,a2
   12a34:	4772                	lw	a4,28(sp)
   12a36:	ccccd337          	lui	t1,0xccccd
   12a3a:	ccccd537          	lui	a0,0xccccd
   12a3e:	00174583          	lbu	a1,1(a4)
   12a42:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccb1271>
   12a46:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccb1270>
   12a4a:	00b035b3          	snez	a1,a1
   12a4e:	972e                	add	a4,a4,a1
   12a50:	46c2                	lw	a3,16(sp)
   12a52:	5882                	lw	a7,32(sp)
   12a54:	5e92                	lw	t4,36(sp)
   12a56:	5f22                	lw	t5,40(sp)
   12a58:	5862                	lw	a6,56(sp)
   12a5a:	4601                	li	a2,0
   12a5c:	4e15                	li	t3,5
   12a5e:	40fb07b3          	sub	a5,s6,a5
   12a62:	00fb35b3          	sltu	a1,s6,a5
   12a66:	40bd85b3          	sub	a1,s11,a1
   12a6a:	02a78533          	mul	a0,a5,a0
   12a6e:	026585b3          	mul	a1,a1,t1
   12a72:	0267bfb3          	mulhu	t6,a5,t1
   12a76:	95aa                	add	a1,a1,a0
   12a78:	02678533          	mul	a0,a5,t1
   12a7c:	95fe                	add	a1,a1,t6
   12a7e:	01f59793          	slli	a5,a1,0x1f
   12a82:	8185                	srli	a1,a1,0x1
   12a84:	8105                	srli	a0,a0,0x1
   12a86:	8fc9                	or	a5,a5,a0
   12a88:	bbb9                	j	127e6 <_vfprintf_r+0x1108>
   12a8a:	5782                	lw	a5,32(sp)
   12a8c:	5b12                	lw	s6,36(sp)
   12a8e:	68e9                	lui	a7,0x1a
   12a90:	97ea                	add	a5,a5,s10
   12a92:	dc4a                	sw	s2,56(sp)
   12a94:	c6e6                	sw	s9,76(sp)
   12a96:	c8de                	sw	s7,80(sp)
   12a98:	d26e                	sw	s11,36(sp)
   12a9a:	5da2                	lw	s11,40(sp)
   12a9c:	d46a                	sw	s10,40(sp)
   12a9e:	5cf2                	lw	s9,60(sp)
   12aa0:	8d62                	mv	s10,s8
   12aa2:	4922                	lw	s2,8(sp)
   12aa4:	4c26                	lw	s8,72(sp)
   12aa6:	481d                	li	a6,7
   12aa8:	4741                	li	a4,16
   12aaa:	5cc88a93          	addi	s5,a7,1484 # 1a5cc <zeroes.0>
   12aae:	85a2                	mv	a1,s0
   12ab0:	8bbe                	mv	s7,a5
   12ab2:	07605363          	blez	s6,12b18 <_vfprintf_r+0x143a>
   12ab6:	0fb05663          	blez	s11,12ba2 <_vfprintf_r+0x14c4>
   12aba:	1dfd                	addi	s11,s11,-1
   12abc:	4796                	lw	a5,68(sp)
   12abe:	9662                	add	a2,a2,s8
   12ac0:	0185a223          	sw	s8,4(a1)
   12ac4:	c19c                	sw	a5,0(a1)
   12ac6:	47ae                	lw	a5,200(sp)
   12ac8:	c7b2                	sw	a2,204(sp)
   12aca:	05a1                	addi	a1,a1,8
   12acc:	0785                	addi	a5,a5,1
   12ace:	c5be                	sw	a5,200(sp)
   12ad0:	0cf84c63          	blt	a6,a5,12ba8 <_vfprintf_r+0x14ca>
   12ad4:	000cc683          	lbu	a3,0(s9)
   12ad8:	41ab8433          	sub	s0,s7,s10
   12adc:	0086d363          	bge	a3,s0,12ae2 <_vfprintf_r+0x1404>
   12ae0:	8436                	mv	s0,a3
   12ae2:	00805f63          	blez	s0,12b00 <_vfprintf_r+0x1422>
   12ae6:	46ae                	lw	a3,200(sp)
   12ae8:	9622                	add	a2,a2,s0
   12aea:	01a5a023          	sw	s10,0(a1)
   12aee:	0685                	addi	a3,a3,1
   12af0:	c1c0                	sw	s0,4(a1)
   12af2:	c7b2                	sw	a2,204(sp)
   12af4:	c5b6                	sw	a3,200(sp)
   12af6:	0cd84563          	blt	a6,a3,12bc0 <_vfprintf_r+0x14e2>
   12afa:	000cc683          	lbu	a3,0(s9)
   12afe:	05a1                	addi	a1,a1,8
   12b00:	fff44513          	not	a0,s0
   12b04:	857d                	srai	a0,a0,0x1f
   12b06:	00a477b3          	and	a5,s0,a0
   12b0a:	40f68433          	sub	s0,a3,a5
   12b0e:	02804763          	bgtz	s0,12b3c <_vfprintf_r+0x145e>
   12b12:	9d36                	add	s10,s10,a3
   12b14:	fb6041e3          	bgtz	s6,12ab6 <_vfprintf_r+0x13d8>
   12b18:	fbb041e3          	bgtz	s11,12aba <_vfprintf_r+0x13dc>
   12b1c:	5782                	lw	a5,32(sp)
   12b1e:	8c6a                	mv	s8,s10
   12b20:	5d22                	lw	s10,40(sp)
   12b22:	de66                	sw	s9,60(sp)
   12b24:	5962                	lw	s2,56(sp)
   12b26:	00fd0733          	add	a4,s10,a5
   12b2a:	4cb6                	lw	s9,76(sp)
   12b2c:	4bc6                	lw	s7,80(sp)
   12b2e:	5d92                	lw	s11,36(sp)
   12b30:	842e                	mv	s0,a1
   12b32:	fb877063          	bgeu	a4,s8,122d2 <_vfprintf_r+0xbf4>
   12b36:	8c3a                	mv	s8,a4
   12b38:	f9aff06f          	j	122d2 <_vfprintf_r+0xbf4>
   12b3c:	6f69                	lui	t5,0x1a
   12b3e:	46ae                	lw	a3,200(sp)
   12b40:	5ccf0f13          	addi	t5,t5,1484 # 1a5cc <zeroes.0>
   12b44:	04875163          	bge	a4,s0,12b86 <_vfprintf_r+0x14a8>
   12b48:	ce56                	sw	s5,28(sp)
   12b4a:	a021                	j	12b52 <_vfprintf_r+0x1474>
   12b4c:	1441                	addi	s0,s0,-16
   12b4e:	02875b63          	bge	a4,s0,12b84 <_vfprintf_r+0x14a6>
   12b52:	0641                	addi	a2,a2,16
   12b54:	0685                	addi	a3,a3,1
   12b56:	0155a023          	sw	s5,0(a1)
   12b5a:	c1d8                	sw	a4,4(a1)
   12b5c:	c7b2                	sw	a2,204(sp)
   12b5e:	c5b6                	sw	a3,200(sp)
   12b60:	05a1                	addi	a1,a1,8
   12b62:	fed855e3          	bge	a6,a3,12b4c <_vfprintf_r+0x146e>
   12b66:	01d0                	addi	a2,sp,196
   12b68:	85a6                	mv	a1,s1
   12b6a:	854a                	mv	a0,s2
   12b6c:	7b8000ef          	jal	13324 <__sprint_r>
   12b70:	dc051363          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12b74:	4741                	li	a4,16
   12b76:	1441                	addi	s0,s0,-16
   12b78:	463e                	lw	a2,204(sp)
   12b7a:	46ae                	lw	a3,200(sp)
   12b7c:	85ce                	mv	a1,s3
   12b7e:	481d                	li	a6,7
   12b80:	fc8749e3          	blt	a4,s0,12b52 <_vfprintf_r+0x1474>
   12b84:	4f72                	lw	t5,28(sp)
   12b86:	9622                	add	a2,a2,s0
   12b88:	0685                	addi	a3,a3,1
   12b8a:	01e5a023          	sw	t5,0(a1)
   12b8e:	c1c0                	sw	s0,4(a1)
   12b90:	c7b2                	sw	a2,204(sp)
   12b92:	c5b6                	sw	a3,200(sp)
   12b94:	40d84063          	blt	a6,a3,12f94 <_vfprintf_r+0x18b6>
   12b98:	000cc683          	lbu	a3,0(s9)
   12b9c:	05a1                	addi	a1,a1,8
   12b9e:	9d36                	add	s10,s10,a3
   12ba0:	bf95                	j	12b14 <_vfprintf_r+0x1436>
   12ba2:	1cfd                	addi	s9,s9,-1
   12ba4:	1b7d                	addi	s6,s6,-1
   12ba6:	bf19                	j	12abc <_vfprintf_r+0x13de>
   12ba8:	01d0                	addi	a2,sp,196
   12baa:	85a6                	mv	a1,s1
   12bac:	854a                	mv	a0,s2
   12bae:	776000ef          	jal	13324 <__sprint_r>
   12bb2:	d8051263          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12bb6:	463e                	lw	a2,204(sp)
   12bb8:	85ce                	mv	a1,s3
   12bba:	4741                	li	a4,16
   12bbc:	481d                	li	a6,7
   12bbe:	bf19                	j	12ad4 <_vfprintf_r+0x13f6>
   12bc0:	01d0                	addi	a2,sp,196
   12bc2:	85a6                	mv	a1,s1
   12bc4:	854a                	mv	a0,s2
   12bc6:	2fb9                	jal	13324 <__sprint_r>
   12bc8:	d6051763          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12bcc:	000cc683          	lbu	a3,0(s9)
   12bd0:	463e                	lw	a2,204(sp)
   12bd2:	85ce                	mv	a1,s3
   12bd4:	4741                	li	a4,16
   12bd6:	481d                	li	a6,7
   12bd8:	b725                	j	12b00 <_vfprintf_r+0x1422>
   12bda:	4522                	lw	a0,8(sp)
   12bdc:	01d0                	addi	a2,sp,196
   12bde:	85a6                	mv	a1,s1
   12be0:	2791                	jal	13324 <__sprint_r>
   12be2:	d4051a63          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12be6:	553a                	lw	a0,172(sp)
   12be8:	463e                	lw	a2,204(sp)
   12bea:	844e                	mv	s0,s3
   12bec:	b949                	j	1287e <_vfprintf_r+0x11a0>
   12bee:	67e9                	lui	a5,0x1a
   12bf0:	13878d13          	addi	s10,a5,312 # 1a138 <__clzsi2+0xc2>
   12bf4:	b33d                	j	12922 <_vfprintf_r+0x1244>
   12bf6:	4522                	lw	a0,8(sp)
   12bf8:	01d0                	addi	a2,sp,196
   12bfa:	85a6                	mv	a1,s1
   12bfc:	2725                	jal	13324 <__sprint_r>
   12bfe:	d2051c63          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12c02:	463e                	lw	a2,204(sp)
   12c04:	844e                	mv	s0,s3
   12c06:	eaaff06f          	j	122b0 <_vfprintf_r+0xbd2>
   12c0a:	4b19                	li	s6,6
   12c0c:	b2a1                	j	12554 <_vfprintf_r+0xe76>
   12c0e:	47d2                	lw	a5,20(sp)
   12c10:	4732                	lw	a4,12(sp)
   12c12:	439c                	lw	a5,0(a5)
   12c14:	00e79023          	sh	a4,0(a5)
   12c18:	aaaff06f          	j	11ec2 <_vfprintf_r+0x7e4>
   12c1c:	0b62                	slli	s6,s6,0x18
   12c1e:	418b5b13          	srai	s6,s6,0x18
   12c22:	41fb5d93          	srai	s11,s6,0x1f
   12c26:	87ee                	mv	a5,s11
   12c28:	de9fe06f          	j	11a10 <_vfprintf_r+0x332>
   12c2c:	0ffb7b13          	zext.b	s6,s6
   12c30:	4d81                	li	s11,0
   12c32:	e41fe06f          	j	11a72 <_vfprintf_r+0x394>
   12c36:	0ffb7b13          	zext.b	s6,s6
   12c3a:	4d81                	li	s11,0
   12c3c:	b075                	j	124e8 <_vfprintf_r+0xe0a>
   12c3e:	02d00793          	li	a5,45
   12c42:	0af103a3          	sb	a5,167(sp)
   12c46:	02d00713          	li	a4,45
   12c4a:	b351                	j	129ce <_vfprintf_r+0x12f0>
   12c4c:	4522                	lw	a0,8(sp)
   12c4e:	01d0                	addi	a2,sp,196
   12c50:	85a6                	mv	a1,s1
   12c52:	2dc9                	jal	13324 <__sprint_r>
   12c54:	ce7fe06f          	j	1193a <_vfprintf_r+0x25c>
   12c58:	4522                	lw	a0,8(sp)
   12c5a:	01d0                	addi	a2,sp,196
   12c5c:	85a6                	mv	a1,s1
   12c5e:	25d9                	jal	13324 <__sprint_r>
   12c60:	cc051b63          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12c64:	553a                	lw	a0,172(sp)
   12c66:	463e                	lw	a2,204(sp)
   12c68:	472e                	lw	a4,200(sp)
   12c6a:	844e                	mv	s0,s3
   12c6c:	b9dd                	j	12962 <_vfprintf_r+0x1284>
   12c6e:	01550733          	add	a4,a0,s5
   12c72:	04700613          	li	a2,71
   12c76:	010c                	addi	a1,sp,128
   12c78:	855a                	mv	a0,s6
   12c7a:	d23a                	sw	a4,36(sp)
   12c7c:	d032                	sw	a2,32(sp)
   12c7e:	ce46                	sw	a7,28(sp)
   12c80:	c97e                	sw	t6,144(sp)
   12c82:	cb7a                	sw	t5,148(sp)
   12c84:	cd76                	sw	t4,152(sp)
   12c86:	cf62                	sw	s8,156(sp)
   12c88:	c102                	sw	zero,128(sp)
   12c8a:	c302                	sw	zero,132(sp)
   12c8c:	c502                	sw	zero,136(sp)
   12c8e:	c702                	sw	zero,140(sp)
   12c90:	777040ef          	jal	17c06 <__eqtf2>
   12c94:	48f2                	lw	a7,28(sp)
   12c96:	5602                	lw	a2,32(sp)
   12c98:	5712                	lw	a4,36(sp)
   12c9a:	36050a63          	beqz	a0,1300e <_vfprintf_r+0x1930>
   12c9e:	57fa                	lw	a5,188(sp)
   12ca0:	00e7fc63          	bgeu	a5,a4,12cb8 <_vfprintf_r+0x15da>
   12ca4:	03000593          	li	a1,48
   12ca8:	00178693          	addi	a3,a5,1
   12cac:	df36                	sw	a3,188(sp)
   12cae:	00b78023          	sb	a1,0(a5)
   12cb2:	57fa                	lw	a5,188(sp)
   12cb4:	fee7eae3          	bltu	a5,a4,12ca8 <_vfprintf_r+0x15ca>
   12cb8:	573a                	lw	a4,172(sp)
   12cba:	ce3a                	sw	a4,28(sp)
   12cbc:	41a787b3          	sub	a5,a5,s10
   12cc0:	04700713          	li	a4,71
   12cc4:	d03e                	sw	a5,32(sp)
   12cc6:	98e60ae3          	beq	a2,a4,1265a <_vfprintf_r+0xf7c>
   12cca:	04600713          	li	a4,70
   12cce:	38e60863          	beq	a2,a4,1305e <_vfprintf_r+0x1980>
   12cd2:	47f2                	lw	a5,28(sp)
   12cd4:	fff78713          	addi	a4,a5,-1
   12cd8:	ba59                	j	1266e <_vfprintf_r+0xf90>
   12cda:	001a8693          	addi	a3,s5,1
   12cde:	4609                	li	a2,2
   12ce0:	4522                	lw	a0,8(sp)
   12ce2:	09010b13          	addi	s6,sp,144
   12ce6:	1178                	addi	a4,sp,172
   12ce8:	85da                	mv	a1,s6
   12cea:	0bc10813          	addi	a6,sp,188
   12cee:	191c                	addi	a5,sp,176
   12cf0:	c8c6                	sw	a7,80(sp)
   12cf2:	d436                	sw	a3,40(sp)
   12cf4:	c97e                	sw	t6,144(sp)
   12cf6:	d27e                	sw	t6,36(sp)
   12cf8:	cb7a                	sw	t5,148(sp)
   12cfa:	d07a                	sw	t5,32(sp)
   12cfc:	cd76                	sw	t4,152(sp)
   12cfe:	ce76                	sw	t4,28(sp)
   12d00:	cf62                	sw	s8,156(sp)
   12d02:	22a010ef          	jal	13f2c <_ldtoa_r>
   12d06:	48c6                	lw	a7,80(sp)
   12d08:	56a2                	lw	a3,40(sp)
   12d0a:	04600593          	li	a1,70
   12d0e:	fdf8f613          	andi	a2,a7,-33
   12d12:	4ef2                	lw	t4,28(sp)
   12d14:	5f02                	lw	t5,32(sp)
   12d16:	5f92                	lw	t6,36(sp)
   12d18:	8d2a                	mv	s10,a0
   12d1a:	00d50733          	add	a4,a0,a3
   12d1e:	54b61563          	bne	a2,a1,13268 <_vfprintf_r+0x1b8a>
   12d22:	000d4503          	lbu	a0,0(s10)
   12d26:	03000593          	li	a1,48
   12d2a:	2eb50663          	beq	a0,a1,13016 <_vfprintf_r+0x1938>
   12d2e:	56ba                	lw	a3,172(sp)
   12d30:	010c                	addi	a1,sp,128
   12d32:	9736                	add	a4,a4,a3
   12d34:	b791                	j	12c78 <_vfprintf_r+0x159a>
   12d36:	09010b13          	addi	s6,sp,144
   12d3a:	010c                	addi	a1,sp,128
   12d3c:	1170                	addi	a2,sp,172
   12d3e:	855a                	mv	a0,s6
   12d40:	c0c6                	sw	a7,64(sp)
   12d42:	c17e                	sw	t6,128(sp)
   12d44:	c37a                	sw	t5,132(sp)
   12d46:	c576                	sw	t4,136(sp)
   12d48:	ce2e                	sw	a1,28(sp)
   12d4a:	c762                	sw	s8,140(sp)
   12d4c:	084010ef          	jal	13dd0 <frexpl>
   12d50:	474a                	lw	a4,144(sp)
   12d52:	45f2                	lw	a1,28(sp)
   12d54:	1890                	addi	a2,sp,112
   12d56:	c13a                	sw	a4,128(sp)
   12d58:	475a                	lw	a4,148(sp)
   12d5a:	855a                	mv	a0,s6
   12d5c:	d882                	sw	zero,112(sp)
   12d5e:	c33a                	sw	a4,132(sp)
   12d60:	476a                	lw	a4,152(sp)
   12d62:	da82                	sw	zero,116(sp)
   12d64:	dc82                	sw	zero,120(sp)
   12d66:	c53a                	sw	a4,136(sp)
   12d68:	477a                	lw	a4,156(sp)
   12d6a:	c73a                	sw	a4,140(sp)
   12d6c:	3ffc0737          	lui	a4,0x3ffc0
   12d70:	deba                	sw	a4,124(sp)
   12d72:	158050ef          	jal	17eca <__multf3>
   12d76:	45f2                	lw	a1,28(sp)
   12d78:	4f4a                	lw	t5,144(sp)
   12d7a:	4eda                	lw	t4,148(sp)
   12d7c:	486a                	lw	a6,152(sp)
   12d7e:	855a                	mv	a0,s6
   12d80:	d42e                	sw	a1,40(sp)
   12d82:	d27a                	sw	t5,36(sp)
   12d84:	d076                	sw	t4,32(sp)
   12d86:	ce42                	sw	a6,28(sp)
   12d88:	c102                	sw	zero,128(sp)
   12d8a:	c302                	sw	zero,132(sp)
   12d8c:	c502                	sw	zero,136(sp)
   12d8e:	c702                	sw	zero,140(sp)
   12d90:	677040ef          	jal	17c06 <__eqtf2>
   12d94:	4dfa                	lw	s11,156(sp)
   12d96:	4872                	lw	a6,28(sp)
   12d98:	5e82                	lw	t4,32(sp)
   12d9a:	5f12                	lw	t5,36(sp)
   12d9c:	55a2                	lw	a1,40(sp)
   12d9e:	4886                	lw	a7,64(sp)
   12da0:	e119                	bnez	a0,12da6 <_vfprintf_r+0x16c8>
   12da2:	4705                	li	a4,1
   12da4:	d73a                	sw	a4,172(sp)
   12da6:	06100713          	li	a4,97
   12daa:	44e88d63          	beq	a7,a4,13204 <_vfprintf_r+0x1b26>
   12dae:	6769                	lui	a4,0x1a
   12db0:	15c70793          	addi	a5,a4,348 # 1a15c <__clzsi2+0xe6>
   12db4:	ce3e                	sw	a5,28(sp)
   12db6:	d04a                	sw	s2,32(sp)
   12db8:	d466                	sw	s9,40(sp)
   12dba:	c0de                	sw	s7,64(sp)
   12dbc:	c6a2                	sw	s0,76(sp)
   12dbe:	896a                	mv	s2,s10
   12dc0:	c8a6                	sw	s1,80(sp)
   12dc2:	caea                	sw	s10,84(sp)
   12dc4:	44f2                	lw	s1,28(sp)
   12dc6:	1afd                	addi	s5,s5,-1
   12dc8:	d246                	sw	a7,36(sp)
   12dca:	8bfa                	mv	s7,t5
   12dcc:	8c76                	mv	s8,t4
   12dce:	8cc2                	mv	s9,a6
   12dd0:	8d6e                	mv	s10,s11
   12dd2:	842e                	mv	s0,a1
   12dd4:	a015                	j	12df8 <_vfprintf_r+0x171a>
   12dd6:	85a2                	mv	a1,s0
   12dd8:	855a                	mv	a0,s6
   12dda:	c95e                	sw	s7,144(sp)
   12ddc:	cb62                	sw	s8,148(sp)
   12dde:	cd66                	sw	s9,152(sp)
   12de0:	cf6a                	sw	s10,156(sp)
   12de2:	c102                	sw	zero,128(sp)
   12de4:	c302                	sw	zero,132(sp)
   12de6:	c502                	sw	zero,136(sp)
   12de8:	c702                	sw	zero,140(sp)
   12dea:	fffa8d93          	addi	s11,s5,-1
   12dee:	619040ef          	jal	17c06 <__eqtf2>
   12df2:	3c050c63          	beqz	a0,131ca <_vfprintf_r+0x1aec>
   12df6:	8aee                	mv	s5,s11
   12df8:	400307b7          	lui	a5,0x40030
   12dfc:	1890                	addi	a2,sp,112
   12dfe:	85a2                	mv	a1,s0
   12e00:	855a                	mv	a0,s6
   12e02:	debe                	sw	a5,124(sp)
   12e04:	c15e                	sw	s7,128(sp)
   12e06:	c362                	sw	s8,132(sp)
   12e08:	c566                	sw	s9,136(sp)
   12e0a:	c76a                	sw	s10,140(sp)
   12e0c:	d882                	sw	zero,112(sp)
   12e0e:	da82                	sw	zero,116(sp)
   12e10:	dc82                	sw	zero,120(sp)
   12e12:	0b8050ef          	jal	17eca <__multf3>
   12e16:	855a                	mv	a0,s6
   12e18:	6dd060ef          	jal	19cf4 <__fixtfsi>
   12e1c:	85aa                	mv	a1,a0
   12e1e:	8daa                	mv	s11,a0
   12e20:	855a                	mv	a0,s6
   12e22:	4d4a                	lw	s10,144(sp)
   12e24:	4cda                	lw	s9,148(sp)
   12e26:	4c6a                	lw	s8,152(sp)
   12e28:	4bfa                	lw	s7,156(sp)
   12e2a:	7ef060ef          	jal	19e18 <__floatsitf>
   12e2e:	46ca                	lw	a3,144(sp)
   12e30:	1090                	addi	a2,sp,96
   12e32:	188c                	addi	a1,sp,112
   12e34:	d0b6                	sw	a3,96(sp)
   12e36:	46da                	lw	a3,148(sp)
   12e38:	8522                	mv	a0,s0
   12e3a:	d8ea                	sw	s10,112(sp)
   12e3c:	d2b6                	sw	a3,100(sp)
   12e3e:	46ea                	lw	a3,152(sp)
   12e40:	dae6                	sw	s9,116(sp)
   12e42:	dce2                	sw	s8,120(sp)
   12e44:	d4b6                	sw	a3,104(sp)
   12e46:	46fa                	lw	a3,156(sp)
   12e48:	dede                	sw	s7,124(sp)
   12e4a:	d6b6                	sw	a3,108(sp)
   12e4c:	51b050ef          	jal	18b66 <__subtf3>
   12e50:	01b486b3          	add	a3,s1,s11
   12e54:	0006c603          	lbu	a2,0(a3)
   12e58:	8fca                	mv	t6,s2
   12e5a:	0905                	addi	s2,s2,1
   12e5c:	4b8a                	lw	s7,128(sp)
   12e5e:	4c1a                	lw	s8,132(sp)
   12e60:	4caa                	lw	s9,136(sp)
   12e62:	4d3a                	lw	s10,140(sp)
   12e64:	57fd                	li	a5,-1
   12e66:	fec90fa3          	sb	a2,-1(s2)
   12e6a:	f6fa96e3          	bne	s5,a5,12dd6 <_vfprintf_r+0x16f8>
   12e6e:	5892                	lw	a7,36(sp)
   12e70:	8f5e                	mv	t5,s7
   12e72:	8ee2                	mv	t4,s8
   12e74:	8866                	mv	a6,s9
   12e76:	85a2                	mv	a1,s0
   12e78:	ccee                	sw	s11,88(sp)
   12e7a:	3ffe0ab7          	lui	s5,0x3ffe0
   12e7e:	8dea                	mv	s11,s10
   12e80:	855a                	mv	a0,s6
   12e82:	cec6                	sw	a7,92(sp)
   12e84:	d27e                	sw	t6,36(sp)
   12e86:	44c6                	lw	s1,80(sp)
   12e88:	4b86                	lw	s7,64(sp)
   12e8a:	5ca2                	lw	s9,40(sp)
   12e8c:	4436                	lw	s0,76(sp)
   12e8e:	c97a                	sw	t5,144(sp)
   12e90:	c8fa                	sw	t5,80(sp)
   12e92:	cb76                	sw	t4,148(sp)
   12e94:	c6f6                	sw	t4,76(sp)
   12e96:	cd42                	sw	a6,152(sp)
   12e98:	c0c2                	sw	a6,64(sp)
   12e9a:	cf6e                	sw	s11,156(sp)
   12e9c:	c102                	sw	zero,128(sp)
   12e9e:	c302                	sw	zero,132(sp)
   12ea0:	c502                	sw	zero,136(sp)
   12ea2:	c756                	sw	s5,140(sp)
   12ea4:	d42e                	sw	a1,40(sp)
   12ea6:	64d040ef          	jal	17cf2 <__getf2>
   12eaa:	8c4a                	mv	s8,s2
   12eac:	4d56                	lw	s10,84(sp)
   12eae:	5902                	lw	s2,32(sp)
   12eb0:	5f92                	lw	t6,36(sp)
   12eb2:	48f6                	lw	a7,92(sp)
   12eb4:	00a04e63          	bgtz	a0,12ed0 <_vfprintf_r+0x17f2>
   12eb8:	55a2                	lw	a1,40(sp)
   12eba:	855a                	mv	a0,s6
   12ebc:	d046                	sw	a7,32(sp)
   12ebe:	549040ef          	jal	17c06 <__eqtf2>
   12ec2:	5882                	lw	a7,32(sp)
   12ec4:	e529                	bnez	a0,12f0e <_vfprintf_r+0x1830>
   12ec6:	47e6                	lw	a5,88(sp)
   12ec8:	5f92                	lw	t6,36(sp)
   12eca:	0017f693          	andi	a3,a5,1
   12ece:	c2a1                	beqz	a3,12f0e <_vfprintf_r+0x1830>
   12ed0:	47f2                	lw	a5,28(sp)
   12ed2:	df7e                	sw	t6,188(sp)
   12ed4:	fffc4603          	lbu	a2,-1(s8)
   12ed8:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x400145b3>
   12edc:	86e2                	mv	a3,s8
   12ede:	00b61e63          	bne	a2,a1,12efa <_vfprintf_r+0x181c>
   12ee2:	03000513          	li	a0,48
   12ee6:	fea68fa3          	sb	a0,-1(a3)
   12eea:	56fa                	lw	a3,188(sp)
   12eec:	fff68793          	addi	a5,a3,-1
   12ef0:	df3e                	sw	a5,188(sp)
   12ef2:	fff6c603          	lbu	a2,-1(a3)
   12ef6:	fec588e3          	beq	a1,a2,12ee6 <_vfprintf_r+0x1808>
   12efa:	00160593          	addi	a1,a2,1
   12efe:	03900513          	li	a0,57
   12f02:	0ff5f593          	zext.b	a1,a1
   12f06:	02a60c63          	beq	a2,a0,12f3e <_vfprintf_r+0x1860>
   12f0a:	feb68fa3          	sb	a1,-1(a3)
   12f0e:	57ba                	lw	a5,172(sp)
   12f10:	41ac0733          	sub	a4,s8,s10
   12f14:	d03a                	sw	a4,32(sp)
   12f16:	fff78713          	addi	a4,a5,-1
   12f1a:	ce3e                	sw	a5,28(sp)
   12f1c:	06100613          	li	a2,97
   12f20:	d73a                	sw	a4,172(sp)
   12f22:	07000693          	li	a3,112
   12f26:	00c88663          	beq	a7,a2,12f32 <_vfprintf_r+0x1854>
   12f2a:	05000693          	li	a3,80
   12f2e:	04100893          	li	a7,65
   12f32:	4605                	li	a2,1
   12f34:	f42ff06f          	j	12676 <_vfprintf_r+0xf98>
   12f38:	86d6                	mv	a3,s5
   12f3a:	460d                	li	a2,3
   12f3c:	b355                	j	12ce0 <_vfprintf_r+0x1602>
   12f3e:	47f2                	lw	a5,28(sp)
   12f40:	00a7c583          	lbu	a1,10(a5)
   12f44:	b7d9                	j	12f0a <_vfprintf_r+0x182c>
   12f46:	0a714703          	lbu	a4,167(sp)
   12f4a:	4cb6                	lw	s9,76(sp)
   12f4c:	4a81                	li	s5,0
   12f4e:	c319                	beqz	a4,12f54 <_vfprintf_r+0x1876>
   12f50:	afbfe06f          	j	11a4a <_vfprintf_r+0x36c>
   12f54:	915fe06f          	j	11868 <_vfprintf_r+0x18a>
   12f58:	5782                	lw	a5,32(sp)
   12f5a:	4772                	lw	a4,28(sp)
   12f5c:	12f74763          	blt	a4,a5,1308a <_vfprintf_r+0x19ac>
   12f60:	47f2                	lw	a5,28(sp)
   12f62:	001cf713          	andi	a4,s9,1
   12f66:	8b3e                	mv	s6,a5
   12f68:	c701                	beqz	a4,12f70 <_vfprintf_r+0x1892>
   12f6a:	5732                	lw	a4,44(sp)
   12f6c:	00e78b33          	add	s6,a5,a4
   12f70:	400cfe13          	andi	t3,s9,1024
   12f74:	000e0563          	beqz	t3,12f7e <_vfprintf_r+0x18a0>
   12f78:	47f2                	lw	a5,28(sp)
   12f7a:	1ef04c63          	bgtz	a5,13172 <_vfprintf_r+0x1a94>
   12f7e:	fffb4693          	not	a3,s6
   12f82:	86fd                	srai	a3,a3,0x1f
   12f84:	00db7db3          	and	s11,s6,a3
   12f88:	06700893          	li	a7,103
   12f8c:	d402                	sw	zero,40(sp)
   12f8e:	d202                	sw	zero,36(sp)
   12f90:	f88ff06f          	j	12718 <_vfprintf_r+0x103a>
   12f94:	01d0                	addi	a2,sp,196
   12f96:	85a6                	mv	a1,s1
   12f98:	854a                	mv	a0,s2
   12f9a:	2669                	jal	13324 <__sprint_r>
   12f9c:	98051d63          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12fa0:	000cc683          	lbu	a3,0(s9)
   12fa4:	463e                	lw	a2,204(sp)
   12fa6:	85ce                	mv	a1,s3
   12fa8:	4741                	li	a4,16
   12faa:	481d                	li	a6,7
   12fac:	9d36                	add	s10,s10,a3
   12fae:	b69d                	j	12b14 <_vfprintf_r+0x1436>
   12fb0:	4525                	li	a0,9
   12fb2:	83656ae3          	bltu	a0,s6,127e6 <_vfprintf_r+0x1108>
   12fb6:	b861                	j	1284e <_vfprintf_r+0x1170>
   12fb8:	57fd                	li	a5,-1
   12fba:	c63e                	sw	a5,12(sp)
   12fbc:	9b1fe06f          	j	1196c <_vfprintf_r+0x28e>
   12fc0:	02d00793          	li	a5,45
   12fc4:	0af103a3          	sb	a5,167(sp)
   12fc8:	02d00713          	li	a4,45
   12fcc:	b2a1                	j	12914 <_vfprintf_r+0x1236>
   12fce:	0a714703          	lbu	a4,167(sp)
   12fd2:	ca62                	sw	s8,20(sp)
   12fd4:	d402                	sw	zero,40(sp)
   12fd6:	d202                	sw	zero,36(sp)
   12fd8:	ce02                	sw	zero,28(sp)
   12fda:	8dd6                	mv	s11,s5
   12fdc:	8b56                	mv	s6,s5
   12fde:	4a81                	li	s5,0
   12fe0:	c319                	beqz	a4,12fe6 <_vfprintf_r+0x1908>
   12fe2:	a69fe06f          	j	11a4a <_vfprintf_r+0x36c>
   12fe6:	883fe06f          	j	11868 <_vfprintf_r+0x18a>
   12fea:	4522                	lw	a0,8(sp)
   12fec:	01d0                	addi	a2,sp,196
   12fee:	85a6                	mv	a1,s1
   12ff0:	2e15                	jal	13324 <__sprint_r>
   12ff2:	94051263          	bnez	a0,12136 <_vfprintf_r+0xa58>
   12ff6:	5aba                	lw	s5,172(sp)
   12ff8:	5782                	lw	a5,32(sp)
   12ffa:	463e                	lw	a2,204(sp)
   12ffc:	844e                	mv	s0,s3
   12ffe:	41578ab3          	sub	s5,a5,s5
   13002:	b12ff06f          	j	12314 <_vfprintf_r+0xc36>
   13006:	67e9                	lui	a5,0x1a
   13008:	14478d13          	addi	s10,a5,324 # 1a144 <__clzsi2+0xce>
   1300c:	ba19                	j	12922 <_vfprintf_r+0x1244>
   1300e:	57ba                	lw	a5,172(sp)
   13010:	ce3e                	sw	a5,28(sp)
   13012:	87ba                	mv	a5,a4
   13014:	b165                	j	12cbc <_vfprintf_r+0x15de>
   13016:	010c                	addi	a1,sp,128
   13018:	855a                	mv	a0,s6
   1301a:	ceba                	sw	a4,92(sp)
   1301c:	ccb2                	sw	a2,88(sp)
   1301e:	cac6                	sw	a7,84(sp)
   13020:	c8b6                	sw	a3,80(sp)
   13022:	c97e                	sw	t6,144(sp)
   13024:	d47e                	sw	t6,40(sp)
   13026:	cb7a                	sw	t5,148(sp)
   13028:	d27a                	sw	t5,36(sp)
   1302a:	cd76                	sw	t4,152(sp)
   1302c:	d076                	sw	t4,32(sp)
   1302e:	ce2e                	sw	a1,28(sp)
   13030:	cf62                	sw	s8,156(sp)
   13032:	c102                	sw	zero,128(sp)
   13034:	c302                	sw	zero,132(sp)
   13036:	c502                	sw	zero,136(sp)
   13038:	c702                	sw	zero,140(sp)
   1303a:	3cd040ef          	jal	17c06 <__eqtf2>
   1303e:	45f2                	lw	a1,28(sp)
   13040:	5e82                	lw	t4,32(sp)
   13042:	5f12                	lw	t5,36(sp)
   13044:	5fa2                	lw	t6,40(sp)
   13046:	46c6                	lw	a3,80(sp)
   13048:	48d6                	lw	a7,84(sp)
   1304a:	4666                	lw	a2,88(sp)
   1304c:	4776                	lw	a4,92(sp)
   1304e:	1c051063          	bnez	a0,1320e <_vfprintf_r+0x1b30>
   13052:	57ba                	lw	a5,172(sp)
   13054:	973e                	add	a4,a4,a5
   13056:	ce3e                	sw	a5,28(sp)
   13058:	41a707b3          	sub	a5,a4,s10
   1305c:	d03e                	sw	a5,32(sp)
   1305e:	47f2                	lw	a5,28(sp)
   13060:	001cf713          	andi	a4,s9,1
   13064:	01576733          	or	a4,a4,s5
   13068:	1af05963          	blez	a5,1321a <_vfprintf_r+0x1b3c>
   1306c:	18071463          	bnez	a4,131f4 <_vfprintf_r+0x1b16>
   13070:	4b72                	lw	s6,28(sp)
   13072:	06600893          	li	a7,102
   13076:	400cfe13          	andi	t3,s9,1024
   1307a:	0e0e1e63          	bnez	t3,13176 <_vfprintf_r+0x1a98>
   1307e:	fffb4693          	not	a3,s6
   13082:	86fd                	srai	a3,a3,0x1f
   13084:	00db7db3          	and	s11,s6,a3
   13088:	b711                	j	12f8c <_vfprintf_r+0x18ae>
   1308a:	5782                	lw	a5,32(sp)
   1308c:	5732                	lw	a4,44(sp)
   1308e:	06700893          	li	a7,103
   13092:	00e78b33          	add	s6,a5,a4
   13096:	47f2                	lw	a5,28(sp)
   13098:	fcf04fe3          	bgtz	a5,13076 <_vfprintf_r+0x1998>
   1309c:	40fb0f33          	sub	t5,s6,a5
   130a0:	001f0b13          	addi	s6,t5,1
   130a4:	fffb4693          	not	a3,s6
   130a8:	86fd                	srai	a3,a3,0x1f
   130aa:	00db7db3          	and	s11,s6,a3
   130ae:	bdf9                	j	12f8c <_vfprintf_r+0x18ae>
   130b0:	8ee6                	mv	t4,s9
   130b2:	cf5fe06f          	j	11da6 <_vfprintf_r+0x6c8>
   130b6:	6869                	lui	a6,0x1a
   130b8:	55c1                	li	a1,-16
   130ba:	40a00ab3          	neg	s5,a0
   130be:	5cc80813          	addi	a6,a6,1484 # 1a5cc <zeroes.0>
   130c2:	04b55263          	bge	a0,a1,13106 <_vfprintf_r+0x1a28>
   130c6:	ce4a                	sw	s2,28(sp)
   130c8:	4b41                	li	s6,16
   130ca:	4c1d                	li	s8,7
   130cc:	8942                	mv	s2,a6
   130ce:	a021                	j	130d6 <_vfprintf_r+0x19f8>
   130d0:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc4594>
   130d2:	035b5863          	bge	s6,s5,13102 <_vfprintf_r+0x1a24>
   130d6:	0641                	addi	a2,a2,16
   130d8:	0705                	addi	a4,a4,1
   130da:	01242023          	sw	s2,0(s0)
   130de:	01642223          	sw	s6,4(s0)
   130e2:	c7b2                	sw	a2,204(sp)
   130e4:	c5ba                	sw	a4,200(sp)
   130e6:	0421                	addi	s0,s0,8
   130e8:	feec54e3          	bge	s8,a4,130d0 <_vfprintf_r+0x19f2>
   130ec:	4522                	lw	a0,8(sp)
   130ee:	01d0                	addi	a2,sp,196
   130f0:	85a6                	mv	a1,s1
   130f2:	2c0d                	jal	13324 <__sprint_r>
   130f4:	c119                	beqz	a0,130fa <_vfprintf_r+0x1a1c>
   130f6:	840ff06f          	j	12136 <_vfprintf_r+0xa58>
   130fa:	463e                	lw	a2,204(sp)
   130fc:	472e                	lw	a4,200(sp)
   130fe:	844e                	mv	s0,s3
   13100:	bfc1                	j	130d0 <_vfprintf_r+0x19f2>
   13102:	884a                	mv	a6,s2
   13104:	4972                	lw	s2,28(sp)
   13106:	9656                	add	a2,a2,s5
   13108:	0705                	addi	a4,a4,1
   1310a:	01042023          	sw	a6,0(s0)
   1310e:	01542223          	sw	s5,4(s0)
   13112:	c7b2                	sw	a2,204(sp)
   13114:	c5ba                	sw	a4,200(sp)
   13116:	459d                	li	a1,7
   13118:	f8e5d763          	bge	a1,a4,128a6 <_vfprintf_r+0x11c8>
   1311c:	4522                	lw	a0,8(sp)
   1311e:	01d0                	addi	a2,sp,196
   13120:	85a6                	mv	a1,s1
   13122:	2409                	jal	13324 <__sprint_r>
   13124:	c119                	beqz	a0,1312a <_vfprintf_r+0x1a4c>
   13126:	810ff06f          	j	12136 <_vfprintf_r+0xa58>
   1312a:	463e                	lw	a2,204(sp)
   1312c:	472e                	lw	a4,200(sp)
   1312e:	844e                	mv	s0,s3
   13130:	837ff06f          	j	12966 <_vfprintf_r+0x1288>
   13134:	0b610693          	addi	a3,sp,182
   13138:	e619                	bnez	a2,13146 <_vfprintf_r+0x1a68>
   1313a:	03000693          	li	a3,48
   1313e:	0ad10b23          	sb	a3,182(sp)
   13142:	0b710693          	addi	a3,sp,183
   13146:	0b1c                	addi	a5,sp,400
   13148:	40f68633          	sub	a2,a3,a5
   1314c:	03070713          	addi	a4,a4,48
   13150:	0dd60793          	addi	a5,a2,221
   13154:	00e68023          	sb	a4,0(a3)
   13158:	c0be                	sw	a5,64(sp)
   1315a:	d92ff06f          	j	126ec <_vfprintf_r+0x100e>
   1315e:	c802                	sw	zero,16(sp)
   13160:	4a99                	li	s5,6
   13162:	9effe06f          	j	11b50 <_vfprintf_r+0x472>
   13166:	001cf713          	andi	a4,s9,1
   1316a:	d8070a63          	beqz	a4,126fe <_vfprintf_r+0x1020>
   1316e:	d8cff06f          	j	126fa <_vfprintf_r+0x101c>
   13172:	06700893          	li	a7,103
   13176:	5672                	lw	a2,60(sp)
   13178:	0ff00693          	li	a3,255
   1317c:	00064703          	lbu	a4,0(a2)
   13180:	0ed70163          	beq	a4,a3,13262 <_vfprintf_r+0x1b84>
   13184:	47f2                	lw	a5,28(sp)
   13186:	4501                	li	a0,0
   13188:	4581                	li	a1,0
   1318a:	00f75a63          	bge	a4,a5,1319e <_vfprintf_r+0x1ac0>
   1318e:	8f99                	sub	a5,a5,a4
   13190:	00164703          	lbu	a4,1(a2)
   13194:	c71d                	beqz	a4,131c2 <_vfprintf_r+0x1ae4>
   13196:	0585                	addi	a1,a1,1
   13198:	0605                	addi	a2,a2,1
   1319a:	fed718e3          	bne	a4,a3,1318a <_vfprintf_r+0x1aac>
   1319e:	de32                	sw	a2,60(sp)
   131a0:	d22e                	sw	a1,36(sp)
   131a2:	d42a                	sw	a0,40(sp)
   131a4:	ce3e                	sw	a5,28(sp)
   131a6:	57a2                	lw	a5,40(sp)
   131a8:	5712                	lw	a4,36(sp)
   131aa:	973e                	add	a4,a4,a5
   131ac:	47a6                	lw	a5,72(sp)
   131ae:	02f70733          	mul	a4,a4,a5
   131b2:	9b3a                	add	s6,s6,a4
   131b4:	fffb4693          	not	a3,s6
   131b8:	86fd                	srai	a3,a3,0x1f
   131ba:	00db7db3          	and	s11,s6,a3
   131be:	d5aff06f          	j	12718 <_vfprintf_r+0x103a>
   131c2:	00064703          	lbu	a4,0(a2)
   131c6:	0505                	addi	a0,a0,1
   131c8:	bfc9                	j	1319a <_vfprintf_r+0x1abc>
   131ca:	8c4a                	mv	s8,s2
   131cc:	001a8693          	addi	a3,s5,1
   131d0:	5892                	lw	a7,36(sp)
   131d2:	5ca2                	lw	s9,40(sp)
   131d4:	4b86                	lw	s7,64(sp)
   131d6:	4436                	lw	s0,76(sp)
   131d8:	5902                	lw	s2,32(sp)
   131da:	44c6                	lw	s1,80(sp)
   131dc:	4d56                	lw	s10,84(sp)
   131de:	96e2                	add	a3,a3,s8
   131e0:	03000613          	li	a2,48
   131e4:	d20ac5e3          	bltz	s5,12f0e <_vfprintf_r+0x1830>
   131e8:	0c05                	addi	s8,s8,1
   131ea:	fecc0fa3          	sb	a2,-1(s8)
   131ee:	fedc1de3          	bne	s8,a3,131e8 <_vfprintf_r+0x1b0a>
   131f2:	bb31                	j	12f0e <_vfprintf_r+0x1830>
   131f4:	5732                	lw	a4,44(sp)
   131f6:	06600893          	li	a7,102
   131fa:	00ea8f33          	add	t5,s5,a4
   131fe:	00ff0b33          	add	s6,t5,a5
   13202:	bd95                	j	13076 <_vfprintf_r+0x1998>
   13204:	6769                	lui	a4,0x1a
   13206:	14870793          	addi	a5,a4,328 # 1a148 <__clzsi2+0xd2>
   1320a:	ce3e                	sw	a5,28(sp)
   1320c:	b66d                	j	12db6 <_vfprintf_r+0x16d8>
   1320e:	4505                	li	a0,1
   13210:	40d506b3          	sub	a3,a0,a3
   13214:	d736                	sw	a3,172(sp)
   13216:	9736                	add	a4,a4,a3
   13218:	b485                	j	12c78 <_vfprintf_r+0x159a>
   1321a:	e711                	bnez	a4,13226 <_vfprintf_r+0x1b48>
   1321c:	4d85                	li	s11,1
   1321e:	06600893          	li	a7,102
   13222:	4b05                	li	s6,1
   13224:	b3a5                	j	12f8c <_vfprintf_r+0x18ae>
   13226:	57b2                	lw	a5,44(sp)
   13228:	06600893          	li	a7,102
   1322c:	00178f13          	addi	t5,a5,1
   13230:	015f0b33          	add	s6,t5,s5
   13234:	fffb4693          	not	a3,s6
   13238:	86fd                	srai	a3,a3,0x1f
   1323a:	00db7db3          	and	s11,s6,a3
   1323e:	b3b9                	j	12f8c <_vfprintf_r+0x18ae>
   13240:	4789                	li	a5,2
   13242:	c0be                	sw	a5,64(sp)
   13244:	ca8ff06f          	j	126ec <_vfprintf_r+0x100e>
   13248:	47d2                	lw	a5,20(sp)
   1324a:	0007aa83          	lw	s5,0(a5)
   1324e:	0791                	addi	a5,a5,4
   13250:	000ad363          	bgez	s5,13256 <_vfprintf_r+0x1b78>
   13254:	5afd                	li	s5,-1
   13256:	00194883          	lbu	a7,1(s2)
   1325a:	ca3e                	sw	a5,20(sp)
   1325c:	8936                	mv	s2,a3
   1325e:	db0fe06f          	j	1180e <_vfprintf_r+0x130>
   13262:	d402                	sw	zero,40(sp)
   13264:	d202                	sw	zero,36(sp)
   13266:	b781                	j	131a6 <_vfprintf_r+0x1ac8>
   13268:	04500613          	li	a2,69
   1326c:	010c                	addi	a1,sp,128
   1326e:	b429                	j	12c78 <_vfprintf_r+0x159a>
   13270:	00c4d783          	lhu	a5,12(s1)
   13274:	0407e793          	ori	a5,a5,64
   13278:	00f49623          	sh	a5,12(s1)
   1327c:	ebefe06f          	j	1193a <_vfprintf_r+0x25c>

00013280 <vfprintf>:
   13280:	87aa                	mv	a5,a0
   13282:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13286:	86b2                	mv	a3,a2
   13288:	862e                	mv	a2,a1
   1328a:	85be                	mv	a1,a5
   1328c:	c52fe06f          	j	116de <_vfprintf_r>

00013290 <__sbprintf>:
   13290:	b8010113          	addi	sp,sp,-1152
   13294:	00c59783          	lh	a5,12(a1)
   13298:	00e5d703          	lhu	a4,14(a1)
   1329c:	46812c23          	sw	s0,1144(sp)
   132a0:	842e                	mv	s0,a1
   132a2:	65c1                	lui	a1,0x10
   132a4:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   132a6:	06442e03          	lw	t3,100(s0)
   132aa:	01c42303          	lw	t1,28(s0)
   132ae:	02442883          	lw	a7,36(s0)
   132b2:	0742                	slli	a4,a4,0x10
   132b4:	8fed                	and	a5,a5,a1
   132b6:	8fd9                	or	a5,a5,a4
   132b8:	40000813          	li	a6,1024
   132bc:	ca3e                	sw	a5,20(sp)
   132be:	002c                	addi	a1,sp,8
   132c0:	189c                	addi	a5,sp,112
   132c2:	46912a23          	sw	s1,1140(sp)
   132c6:	47212823          	sw	s2,1136(sp)
   132ca:	46112e23          	sw	ra,1148(sp)
   132ce:	892a                	mv	s2,a0
   132d0:	d6f2                	sw	t3,108(sp)
   132d2:	d21a                	sw	t1,36(sp)
   132d4:	d646                	sw	a7,44(sp)
   132d6:	c43e                	sw	a5,8(sp)
   132d8:	cc3e                	sw	a5,24(sp)
   132da:	c842                	sw	a6,16(sp)
   132dc:	ce42                	sw	a6,28(sp)
   132de:	d002                	sw	zero,32(sp)
   132e0:	bfefe0ef          	jal	116de <_vfprintf_r>
   132e4:	84aa                	mv	s1,a0
   132e6:	02055963          	bgez	a0,13318 <__sbprintf+0x88>
   132ea:	01415783          	lhu	a5,20(sp)
   132ee:	0407f793          	andi	a5,a5,64
   132f2:	c799                	beqz	a5,13300 <__sbprintf+0x70>
   132f4:	00c45783          	lhu	a5,12(s0)
   132f8:	0407e793          	ori	a5,a5,64
   132fc:	00f41623          	sh	a5,12(s0)
   13300:	47c12083          	lw	ra,1148(sp)
   13304:	47812403          	lw	s0,1144(sp)
   13308:	47012903          	lw	s2,1136(sp)
   1330c:	8526                	mv	a0,s1
   1330e:	47412483          	lw	s1,1140(sp)
   13312:	48010113          	addi	sp,sp,1152
   13316:	8082                	ret
   13318:	002c                	addi	a1,sp,8
   1331a:	854a                	mv	a0,s2
   1331c:	2c9d                	jal	13592 <_fflush_r>
   1331e:	d571                	beqz	a0,132ea <__sbprintf+0x5a>
   13320:	54fd                	li	s1,-1
   13322:	b7e1                	j	132ea <__sbprintf+0x5a>

00013324 <__sprint_r>:
   13324:	461c                	lw	a5,8(a2)
   13326:	1141                	addi	sp,sp,-16
   13328:	c422                	sw	s0,8(sp)
   1332a:	c606                	sw	ra,12(sp)
   1332c:	8432                	mv	s0,a2
   1332e:	eb81                	bnez	a5,1333e <__sprint_r+0x1a>
   13330:	40b2                	lw	ra,12(sp)
   13332:	00042223          	sw	zero,4(s0)
   13336:	4422                	lw	s0,8(sp)
   13338:	4501                	li	a0,0
   1333a:	0141                	addi	sp,sp,16
   1333c:	8082                	ret
   1333e:	2ce9                	jal	13618 <__sfvwrite_r>
   13340:	40b2                	lw	ra,12(sp)
   13342:	00042423          	sw	zero,8(s0)
   13346:	00042223          	sw	zero,4(s0)
   1334a:	4422                	lw	s0,8(sp)
   1334c:	0141                	addi	sp,sp,16
   1334e:	8082                	ret

00013350 <_fclose_r>:
   13350:	1141                	addi	sp,sp,-16
   13352:	c606                	sw	ra,12(sp)
   13354:	c04a                	sw	s2,0(sp)
   13356:	cd89                	beqz	a1,13370 <_fclose_r+0x20>
   13358:	c422                	sw	s0,8(sp)
   1335a:	c226                	sw	s1,4(sp)
   1335c:	842e                	mv	s0,a1
   1335e:	84aa                	mv	s1,a0
   13360:	c119                	beqz	a0,13366 <_fclose_r+0x16>
   13362:	595c                	lw	a5,52(a0)
   13364:	c7d1                	beqz	a5,133f0 <_fclose_r+0xa0>
   13366:	00c41783          	lh	a5,12(s0)
   1336a:	eb89                	bnez	a5,1337c <_fclose_r+0x2c>
   1336c:	4422                	lw	s0,8(sp)
   1336e:	4492                	lw	s1,4(sp)
   13370:	40b2                	lw	ra,12(sp)
   13372:	4901                	li	s2,0
   13374:	854a                	mv	a0,s2
   13376:	4902                	lw	s2,0(sp)
   13378:	0141                	addi	sp,sp,16
   1337a:	8082                	ret
   1337c:	85a2                	mv	a1,s0
   1337e:	8526                	mv	a0,s1
   13380:	28bd                	jal	133fe <__sflush_r>
   13382:	545c                	lw	a5,44(s0)
   13384:	892a                	mv	s2,a0
   13386:	c791                	beqz	a5,13392 <_fclose_r+0x42>
   13388:	4c4c                	lw	a1,28(s0)
   1338a:	8526                	mv	a0,s1
   1338c:	9782                	jalr	a5
   1338e:	04054663          	bltz	a0,133da <_fclose_r+0x8a>
   13392:	00c45783          	lhu	a5,12(s0)
   13396:	0807f793          	andi	a5,a5,128
   1339a:	e7b1                	bnez	a5,133e6 <_fclose_r+0x96>
   1339c:	580c                	lw	a1,48(s0)
   1339e:	c991                	beqz	a1,133b2 <_fclose_r+0x62>
   133a0:	04040793          	addi	a5,s0,64
   133a4:	00f58563          	beq	a1,a5,133ae <_fclose_r+0x5e>
   133a8:	8526                	mv	a0,s1
   133aa:	b6bfd0ef          	jal	10f14 <_free_r>
   133ae:	02042823          	sw	zero,48(s0)
   133b2:	406c                	lw	a1,68(s0)
   133b4:	c591                	beqz	a1,133c0 <_fclose_r+0x70>
   133b6:	8526                	mv	a0,s1
   133b8:	b5dfd0ef          	jal	10f14 <_free_r>
   133bc:	04042223          	sw	zero,68(s0)
   133c0:	cc2fd0ef          	jal	10882 <__sfp_lock_acquire>
   133c4:	00041623          	sh	zero,12(s0)
   133c8:	cbcfd0ef          	jal	10884 <__sfp_lock_release>
   133cc:	40b2                	lw	ra,12(sp)
   133ce:	4422                	lw	s0,8(sp)
   133d0:	4492                	lw	s1,4(sp)
   133d2:	854a                	mv	a0,s2
   133d4:	4902                	lw	s2,0(sp)
   133d6:	0141                	addi	sp,sp,16
   133d8:	8082                	ret
   133da:	00c45783          	lhu	a5,12(s0)
   133de:	597d                	li	s2,-1
   133e0:	0807f793          	andi	a5,a5,128
   133e4:	dfc5                	beqz	a5,1339c <_fclose_r+0x4c>
   133e6:	480c                	lw	a1,16(s0)
   133e8:	8526                	mv	a0,s1
   133ea:	b2bfd0ef          	jal	10f14 <_free_r>
   133ee:	b77d                	j	1339c <_fclose_r+0x4c>
   133f0:	c7cfd0ef          	jal	1086c <__sinit>
   133f4:	bf8d                	j	13366 <_fclose_r+0x16>

000133f6 <fclose>:
   133f6:	85aa                	mv	a1,a0
   133f8:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   133fc:	bf91                	j	13350 <_fclose_r>

000133fe <__sflush_r>:
   133fe:	00c59703          	lh	a4,12(a1)
   13402:	1101                	addi	sp,sp,-32
   13404:	cc22                	sw	s0,24(sp)
   13406:	c64e                	sw	s3,12(sp)
   13408:	ce06                	sw	ra,28(sp)
   1340a:	00877793          	andi	a5,a4,8
   1340e:	842e                	mv	s0,a1
   13410:	89aa                	mv	s3,a0
   13412:	e7e1                	bnez	a5,134da <__sflush_r+0xdc>
   13414:	6785                	lui	a5,0x1
   13416:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   1341a:	41d4                	lw	a3,4(a1)
   1341c:	8fd9                	or	a5,a5,a4
   1341e:	00f59623          	sh	a5,12(a1)
   13422:	10d05563          	blez	a3,1352c <__sflush_r+0x12e>
   13426:	02842803          	lw	a6,40(s0)
   1342a:	0a080263          	beqz	a6,134ce <__sflush_r+0xd0>
   1342e:	ca26                	sw	s1,20(sp)
   13430:	01371693          	slli	a3,a4,0x13
   13434:	0009a483          	lw	s1,0(s3)
   13438:	0009a023          	sw	zero,0(s3)
   1343c:	4c4c                	lw	a1,28(s0)
   1343e:	0e06ce63          	bltz	a3,1353a <__sflush_r+0x13c>
   13442:	4601                	li	a2,0
   13444:	4685                	li	a3,1
   13446:	854e                	mv	a0,s3
   13448:	9802                	jalr	a6
   1344a:	57fd                	li	a5,-1
   1344c:	862a                	mv	a2,a0
   1344e:	10f50f63          	beq	a0,a5,1356c <__sflush_r+0x16e>
   13452:	00c41783          	lh	a5,12(s0)
   13456:	02842803          	lw	a6,40(s0)
   1345a:	4c4c                	lw	a1,28(s0)
   1345c:	8b91                	andi	a5,a5,4
   1345e:	c799                	beqz	a5,1346c <__sflush_r+0x6e>
   13460:	4058                	lw	a4,4(s0)
   13462:	581c                	lw	a5,48(s0)
   13464:	8e19                	sub	a2,a2,a4
   13466:	c399                	beqz	a5,1346c <__sflush_r+0x6e>
   13468:	5c5c                	lw	a5,60(s0)
   1346a:	8e1d                	sub	a2,a2,a5
   1346c:	4681                	li	a3,0
   1346e:	854e                	mv	a0,s3
   13470:	9802                	jalr	a6
   13472:	57fd                	li	a5,-1
   13474:	0cf51563          	bne	a0,a5,1353e <__sflush_r+0x140>
   13478:	0009a683          	lw	a3,0(s3)
   1347c:	47f5                	li	a5,29
   1347e:	00c41703          	lh	a4,12(s0)
   13482:	10d7e163          	bltu	a5,a3,13584 <__sflush_r+0x186>
   13486:	204007b7          	lui	a5,0x20400
   1348a:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e45a5>
   1348c:	00d7d7b3          	srl	a5,a5,a3
   13490:	8b85                	andi	a5,a5,1
   13492:	cbed                	beqz	a5,13584 <__sflush_r+0x186>
   13494:	4810                	lw	a2,16(s0)
   13496:	77fd                	lui	a5,0xfffff
   13498:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   1349c:	8ff9                	and	a5,a5,a4
   1349e:	00f41623          	sh	a5,12(s0)
   134a2:	00042223          	sw	zero,4(s0)
   134a6:	c010                	sw	a2,0(s0)
   134a8:	01371793          	slli	a5,a4,0x13
   134ac:	0007d363          	bgez	a5,134b2 <__sflush_r+0xb4>
   134b0:	c6dd                	beqz	a3,1355e <__sflush_r+0x160>
   134b2:	580c                	lw	a1,48(s0)
   134b4:	0099a023          	sw	s1,0(s3)
   134b8:	c9c5                	beqz	a1,13568 <__sflush_r+0x16a>
   134ba:	04040793          	addi	a5,s0,64
   134be:	00f58563          	beq	a1,a5,134c8 <__sflush_r+0xca>
   134c2:	854e                	mv	a0,s3
   134c4:	a51fd0ef          	jal	10f14 <_free_r>
   134c8:	44d2                	lw	s1,20(sp)
   134ca:	02042823          	sw	zero,48(s0)
   134ce:	4501                	li	a0,0
   134d0:	40f2                	lw	ra,28(sp)
   134d2:	4462                	lw	s0,24(sp)
   134d4:	49b2                	lw	s3,12(sp)
   134d6:	6105                	addi	sp,sp,32
   134d8:	8082                	ret
   134da:	c84a                	sw	s2,16(sp)
   134dc:	0105a903          	lw	s2,16(a1)
   134e0:	04090b63          	beqz	s2,13536 <__sflush_r+0x138>
   134e4:	ca26                	sw	s1,20(sp)
   134e6:	4184                	lw	s1,0(a1)
   134e8:	8b0d                	andi	a4,a4,3
   134ea:	0125a023          	sw	s2,0(a1)
   134ee:	412484b3          	sub	s1,s1,s2
   134f2:	4781                	li	a5,0
   134f4:	e311                	bnez	a4,134f8 <__sflush_r+0xfa>
   134f6:	49dc                	lw	a5,20(a1)
   134f8:	c41c                	sw	a5,8(s0)
   134fa:	00904663          	bgtz	s1,13506 <__sflush_r+0x108>
   134fe:	a81d                	j	13534 <__sflush_r+0x136>
   13500:	992a                	add	s2,s2,a0
   13502:	02905963          	blez	s1,13534 <__sflush_r+0x136>
   13506:	505c                	lw	a5,36(s0)
   13508:	4c4c                	lw	a1,28(s0)
   1350a:	86a6                	mv	a3,s1
   1350c:	864a                	mv	a2,s2
   1350e:	854e                	mv	a0,s3
   13510:	9782                	jalr	a5
   13512:	8c89                	sub	s1,s1,a0
   13514:	fea046e3          	bgtz	a0,13500 <__sflush_r+0x102>
   13518:	00c41703          	lh	a4,12(s0)
   1351c:	4942                	lw	s2,16(sp)
   1351e:	04076713          	ori	a4,a4,64
   13522:	44d2                	lw	s1,20(sp)
   13524:	00e41623          	sh	a4,12(s0)
   13528:	557d                	li	a0,-1
   1352a:	b75d                	j	134d0 <__sflush_r+0xd2>
   1352c:	5dd4                	lw	a3,60(a1)
   1352e:	eed04ce3          	bgtz	a3,13426 <__sflush_r+0x28>
   13532:	bf71                	j	134ce <__sflush_r+0xd0>
   13534:	44d2                	lw	s1,20(sp)
   13536:	4942                	lw	s2,16(sp)
   13538:	bf59                	j	134ce <__sflush_r+0xd0>
   1353a:	4830                	lw	a2,80(s0)
   1353c:	b705                	j	1345c <__sflush_r+0x5e>
   1353e:	00c41703          	lh	a4,12(s0)
   13542:	4814                	lw	a3,16(s0)
   13544:	77fd                	lui	a5,0xfffff
   13546:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   1354a:	8ff9                	and	a5,a5,a4
   1354c:	00f41623          	sh	a5,12(s0)
   13550:	00042223          	sw	zero,4(s0)
   13554:	c014                	sw	a3,0(s0)
   13556:	01371793          	slli	a5,a4,0x13
   1355a:	f407dce3          	bgez	a5,134b2 <__sflush_r+0xb4>
   1355e:	580c                	lw	a1,48(s0)
   13560:	c828                	sw	a0,80(s0)
   13562:	0099a023          	sw	s1,0(s3)
   13566:	f9b1                	bnez	a1,134ba <__sflush_r+0xbc>
   13568:	44d2                	lw	s1,20(sp)
   1356a:	b795                	j	134ce <__sflush_r+0xd0>
   1356c:	0009a783          	lw	a5,0(s3)
   13570:	ee0781e3          	beqz	a5,13452 <__sflush_r+0x54>
   13574:	4775                	li	a4,29
   13576:	00e78a63          	beq	a5,a4,1358a <__sflush_r+0x18c>
   1357a:	4759                	li	a4,22
   1357c:	00e78763          	beq	a5,a4,1358a <__sflush_r+0x18c>
   13580:	00c41703          	lh	a4,12(s0)
   13584:	04076713          	ori	a4,a4,64
   13588:	bf69                	j	13522 <__sflush_r+0x124>
   1358a:	0099a023          	sw	s1,0(s3)
   1358e:	44d2                	lw	s1,20(sp)
   13590:	bf3d                	j	134ce <__sflush_r+0xd0>

00013592 <_fflush_r>:
   13592:	1101                	addi	sp,sp,-32
   13594:	cc22                	sw	s0,24(sp)
   13596:	ce06                	sw	ra,28(sp)
   13598:	842a                	mv	s0,a0
   1359a:	c119                	beqz	a0,135a0 <_fflush_r+0xe>
   1359c:	595c                	lw	a5,52(a0)
   1359e:	cf91                	beqz	a5,135ba <_fflush_r+0x28>
   135a0:	00c59783          	lh	a5,12(a1)
   135a4:	e791                	bnez	a5,135b0 <_fflush_r+0x1e>
   135a6:	40f2                	lw	ra,28(sp)
   135a8:	4462                	lw	s0,24(sp)
   135aa:	4501                	li	a0,0
   135ac:	6105                	addi	sp,sp,32
   135ae:	8082                	ret
   135b0:	8522                	mv	a0,s0
   135b2:	4462                	lw	s0,24(sp)
   135b4:	40f2                	lw	ra,28(sp)
   135b6:	6105                	addi	sp,sp,32
   135b8:	b599                	j	133fe <__sflush_r>
   135ba:	c62e                	sw	a1,12(sp)
   135bc:	ab0fd0ef          	jal	1086c <__sinit>
   135c0:	45b2                	lw	a1,12(sp)
   135c2:	bff9                	j	135a0 <_fflush_r+0xe>

000135c4 <fflush>:
   135c4:	cd05                	beqz	a0,135fc <fflush+0x38>
   135c6:	85aa                	mv	a1,a0
   135c8:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   135cc:	c119                	beqz	a0,135d2 <fflush+0xe>
   135ce:	595c                	lw	a5,52(a0)
   135d0:	c799                	beqz	a5,135de <fflush+0x1a>
   135d2:	00c59783          	lh	a5,12(a1)
   135d6:	e399                	bnez	a5,135dc <fflush+0x18>
   135d8:	4501                	li	a0,0
   135da:	8082                	ret
   135dc:	b50d                	j	133fe <__sflush_r>
   135de:	1101                	addi	sp,sp,-32
   135e0:	c62e                	sw	a1,12(sp)
   135e2:	c42a                	sw	a0,8(sp)
   135e4:	ce06                	sw	ra,28(sp)
   135e6:	a86fd0ef          	jal	1086c <__sinit>
   135ea:	45b2                	lw	a1,12(sp)
   135ec:	4522                	lw	a0,8(sp)
   135ee:	00c59783          	lh	a5,12(a1)
   135f2:	e385                	bnez	a5,13612 <fflush+0x4e>
   135f4:	40f2                	lw	ra,28(sp)
   135f6:	4501                	li	a0,0
   135f8:	6105                	addi	sp,sp,32
   135fa:	8082                	ret
   135fc:	666d                	lui	a2,0x1b
   135fe:	65cd                	lui	a1,0x13
   13600:	656d                	lui	a0,0x1b
   13602:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   13606:	59258593          	addi	a1,a1,1426 # 13592 <_fflush_r>
   1360a:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   1360e:	a98fd06f          	j	108a6 <_fwalk_sglue>
   13612:	40f2                	lw	ra,28(sp)
   13614:	6105                	addi	sp,sp,32
   13616:	b3e5                	j	133fe <__sflush_r>

00013618 <__sfvwrite_r>:
   13618:	461c                	lw	a5,8(a2)
   1361a:	1c078c63          	beqz	a5,137f2 <__sfvwrite_r+0x1da>
   1361e:	00c59683          	lh	a3,12(a1)
   13622:	7179                	addi	sp,sp,-48
   13624:	d422                	sw	s0,40(sp)
   13626:	cc52                	sw	s4,24(sp)
   13628:	c85a                	sw	s6,16(sp)
   1362a:	d606                	sw	ra,44(sp)
   1362c:	0086f793          	andi	a5,a3,8
   13630:	8b32                	mv	s6,a2
   13632:	8a2a                	mv	s4,a0
   13634:	842e                	mv	s0,a1
   13636:	c7ad                	beqz	a5,136a0 <__sfvwrite_r+0x88>
   13638:	499c                	lw	a5,16(a1)
   1363a:	c3bd                	beqz	a5,136a0 <__sfvwrite_r+0x88>
   1363c:	d226                	sw	s1,36(sp)
   1363e:	d04a                	sw	s2,32(sp)
   13640:	ce4e                	sw	s3,28(sp)
   13642:	ca56                	sw	s5,20(sp)
   13644:	0026f793          	andi	a5,a3,2
   13648:	000b2483          	lw	s1,0(s6)
   1364c:	cbb5                	beqz	a5,136c0 <__sfvwrite_r+0xa8>
   1364e:	505c                	lw	a5,36(s0)
   13650:	4c4c                	lw	a1,28(s0)
   13652:	80000ab7          	lui	s5,0x80000
   13656:	4981                	li	s3,0
   13658:	4901                	li	s2,0
   1365a:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe41a4>
   1365e:	864e                	mv	a2,s3
   13660:	8552                	mv	a0,s4
   13662:	02090963          	beqz	s2,13694 <__sfvwrite_r+0x7c>
   13666:	86ca                	mv	a3,s2
   13668:	012af363          	bgeu	s5,s2,1366e <__sfvwrite_r+0x56>
   1366c:	86d6                	mv	a3,s5
   1366e:	9782                	jalr	a5
   13670:	2ca05c63          	blez	a0,13948 <__sfvwrite_r+0x330>
   13674:	008b2783          	lw	a5,8(s6)
   13678:	99aa                	add	s3,s3,a0
   1367a:	40a90933          	sub	s2,s2,a0
   1367e:	8f89                	sub	a5,a5,a0
   13680:	00fb2423          	sw	a5,8(s6)
   13684:	12078563          	beqz	a5,137ae <__sfvwrite_r+0x196>
   13688:	505c                	lw	a5,36(s0)
   1368a:	4c4c                	lw	a1,28(s0)
   1368c:	864e                	mv	a2,s3
   1368e:	8552                	mv	a0,s4
   13690:	fc091be3          	bnez	s2,13666 <__sfvwrite_r+0x4e>
   13694:	0004a983          	lw	s3,0(s1)
   13698:	0044a903          	lw	s2,4(s1)
   1369c:	04a1                	addi	s1,s1,8
   1369e:	b7c1                	j	1365e <__sfvwrite_r+0x46>
   136a0:	85a2                	mv	a1,s0
   136a2:	8552                	mv	a0,s4
   136a4:	2c75                	jal	13960 <__swsetup_r>
   136a6:	12051f63          	bnez	a0,137e4 <__sfvwrite_r+0x1cc>
   136aa:	00c41683          	lh	a3,12(s0)
   136ae:	d226                	sw	s1,36(sp)
   136b0:	d04a                	sw	s2,32(sp)
   136b2:	ce4e                	sw	s3,28(sp)
   136b4:	ca56                	sw	s5,20(sp)
   136b6:	0026f793          	andi	a5,a3,2
   136ba:	000b2483          	lw	s1,0(s6)
   136be:	fbc1                	bnez	a5,1364e <__sfvwrite_r+0x36>
   136c0:	c65e                	sw	s7,12(sp)
   136c2:	c462                	sw	s8,8(sp)
   136c4:	0016f793          	andi	a5,a3,1
   136c8:	12079763          	bnez	a5,137f6 <__sfvwrite_r+0x1de>
   136cc:	401c                	lw	a5,0(s0)
   136ce:	4418                	lw	a4,8(s0)
   136d0:	80000ab7          	lui	s5,0x80000
   136d4:	c266                	sw	s9,4(sp)
   136d6:	4b81                	li	s7,0
   136d8:	4981                	li	s3,0
   136da:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   136dc:	853e                	mv	a0,a5
   136de:	8c3a                	mv	s8,a4
   136e0:	0a098e63          	beqz	s3,1379c <__sfvwrite_r+0x184>
   136e4:	2006f613          	andi	a2,a3,512
   136e8:	1a060563          	beqz	a2,13892 <__sfvwrite_r+0x27a>
   136ec:	8cba                	mv	s9,a4
   136ee:	20e9e563          	bltu	s3,a4,138f8 <__sfvwrite_r+0x2e0>
   136f2:	4806f713          	andi	a4,a3,1152
   136f6:	c73d                	beqz	a4,13764 <__sfvwrite_r+0x14c>
   136f8:	4850                	lw	a2,20(s0)
   136fa:	480c                	lw	a1,16(s0)
   136fc:	00161713          	slli	a4,a2,0x1
   13700:	9732                	add	a4,a4,a2
   13702:	40b78933          	sub	s2,a5,a1
   13706:	01f75c13          	srli	s8,a4,0x1f
   1370a:	9c3a                	add	s8,s8,a4
   1370c:	00190793          	addi	a5,s2,1
   13710:	401c5c13          	srai	s8,s8,0x1
   13714:	97ce                	add	a5,a5,s3
   13716:	8662                	mv	a2,s8
   13718:	00fc7463          	bgeu	s8,a5,13720 <__sfvwrite_r+0x108>
   1371c:	8c3e                	mv	s8,a5
   1371e:	863e                	mv	a2,a5
   13720:	4006f693          	andi	a3,a3,1024
   13724:	1e068963          	beqz	a3,13916 <__sfvwrite_r+0x2fe>
   13728:	85b2                	mv	a1,a2
   1372a:	8552                	mv	a0,s4
   1372c:	a0bfd0ef          	jal	11136 <_malloc_r>
   13730:	8caa                	mv	s9,a0
   13732:	20050e63          	beqz	a0,1394e <__sfvwrite_r+0x336>
   13736:	480c                	lw	a1,16(s0)
   13738:	864a                	mv	a2,s2
   1373a:	2b81                	jal	13c8a <memcpy>
   1373c:	00c45783          	lhu	a5,12(s0)
   13740:	b7f7f793          	andi	a5,a5,-1153
   13744:	0807e793          	ori	a5,a5,128
   13748:	00f41623          	sh	a5,12(s0)
   1374c:	012c8533          	add	a0,s9,s2
   13750:	412c07b3          	sub	a5,s8,s2
   13754:	01942823          	sw	s9,16(s0)
   13758:	01842a23          	sw	s8,20(s0)
   1375c:	c008                	sw	a0,0(s0)
   1375e:	8c4e                	mv	s8,s3
   13760:	c41c                	sw	a5,8(s0)
   13762:	8cce                	mv	s9,s3
   13764:	8666                	mv	a2,s9
   13766:	85de                	mv	a1,s7
   13768:	2999                	jal	13bbe <memmove>
   1376a:	4418                	lw	a4,8(s0)
   1376c:	401c                	lw	a5,0(s0)
   1376e:	894e                	mv	s2,s3
   13770:	41870733          	sub	a4,a4,s8
   13774:	97e6                	add	a5,a5,s9
   13776:	c418                	sw	a4,8(s0)
   13778:	c01c                	sw	a5,0(s0)
   1377a:	4981                	li	s3,0
   1377c:	008b2783          	lw	a5,8(s6)
   13780:	9bca                	add	s7,s7,s2
   13782:	412787b3          	sub	a5,a5,s2
   13786:	00fb2423          	sw	a5,8(s6)
   1378a:	cf99                	beqz	a5,137a8 <__sfvwrite_r+0x190>
   1378c:	401c                	lw	a5,0(s0)
   1378e:	4418                	lw	a4,8(s0)
   13790:	00c41683          	lh	a3,12(s0)
   13794:	853e                	mv	a0,a5
   13796:	8c3a                	mv	s8,a4
   13798:	f40996e3          	bnez	s3,136e4 <__sfvwrite_r+0xcc>
   1379c:	0004ab83          	lw	s7,0(s1)
   137a0:	0044a983          	lw	s3,4(s1)
   137a4:	04a1                	addi	s1,s1,8
   137a6:	bf1d                	j	136dc <__sfvwrite_r+0xc4>
   137a8:	4bb2                	lw	s7,12(sp)
   137aa:	4c22                	lw	s8,8(sp)
   137ac:	4c92                	lw	s9,4(sp)
   137ae:	50b2                	lw	ra,44(sp)
   137b0:	5422                	lw	s0,40(sp)
   137b2:	5492                	lw	s1,36(sp)
   137b4:	5902                	lw	s2,32(sp)
   137b6:	49f2                	lw	s3,28(sp)
   137b8:	4ad2                	lw	s5,20(sp)
   137ba:	4a62                	lw	s4,24(sp)
   137bc:	4b42                	lw	s6,16(sp)
   137be:	4501                	li	a0,0
   137c0:	6145                	addi	sp,sp,48
   137c2:	8082                	ret
   137c4:	85a2                	mv	a1,s0
   137c6:	8552                	mv	a0,s4
   137c8:	33e9                	jal	13592 <_fflush_r>
   137ca:	c93d                	beqz	a0,13840 <__sfvwrite_r+0x228>
   137cc:	00c41783          	lh	a5,12(s0)
   137d0:	4bb2                	lw	s7,12(sp)
   137d2:	4c22                	lw	s8,8(sp)
   137d4:	5492                	lw	s1,36(sp)
   137d6:	5902                	lw	s2,32(sp)
   137d8:	49f2                	lw	s3,28(sp)
   137da:	4ad2                	lw	s5,20(sp)
   137dc:	0407e793          	ori	a5,a5,64
   137e0:	00f41623          	sh	a5,12(s0)
   137e4:	50b2                	lw	ra,44(sp)
   137e6:	5422                	lw	s0,40(sp)
   137e8:	4a62                	lw	s4,24(sp)
   137ea:	4b42                	lw	s6,16(sp)
   137ec:	557d                	li	a0,-1
   137ee:	6145                	addi	sp,sp,48
   137f0:	8082                	ret
   137f2:	4501                	li	a0,0
   137f4:	8082                	ret
   137f6:	4a81                	li	s5,0
   137f8:	4501                	li	a0,0
   137fa:	4c01                	li	s8,0
   137fc:	4981                	li	s3,0
   137fe:	04098e63          	beqz	s3,1385a <__sfvwrite_r+0x242>
   13802:	c525                	beqz	a0,1386a <__sfvwrite_r+0x252>
   13804:	87d6                	mv	a5,s5
   13806:	8bce                	mv	s7,s3
   13808:	0137f363          	bgeu	a5,s3,1380e <__sfvwrite_r+0x1f6>
   1380c:	8bbe                	mv	s7,a5
   1380e:	4008                	lw	a0,0(s0)
   13810:	481c                	lw	a5,16(s0)
   13812:	00842903          	lw	s2,8(s0)
   13816:	4854                	lw	a3,20(s0)
   13818:	00a7f563          	bgeu	a5,a0,13822 <__sfvwrite_r+0x20a>
   1381c:	9936                	add	s2,s2,a3
   1381e:	05794f63          	blt	s2,s7,1387c <__sfvwrite_r+0x264>
   13822:	0cdbce63          	blt	s7,a3,138fe <__sfvwrite_r+0x2e6>
   13826:	505c                	lw	a5,36(s0)
   13828:	4c4c                	lw	a1,28(s0)
   1382a:	8662                	mv	a2,s8
   1382c:	8552                	mv	a0,s4
   1382e:	9782                	jalr	a5
   13830:	892a                	mv	s2,a0
   13832:	f8a05de3          	blez	a0,137cc <__sfvwrite_r+0x1b4>
   13836:	412a8ab3          	sub	s5,s5,s2
   1383a:	4505                	li	a0,1
   1383c:	f80a84e3          	beqz	s5,137c4 <__sfvwrite_r+0x1ac>
   13840:	008b2783          	lw	a5,8(s6)
   13844:	9c4a                	add	s8,s8,s2
   13846:	412989b3          	sub	s3,s3,s2
   1384a:	412787b3          	sub	a5,a5,s2
   1384e:	00fb2423          	sw	a5,8(s6)
   13852:	f7d5                	bnez	a5,137fe <__sfvwrite_r+0x1e6>
   13854:	4bb2                	lw	s7,12(sp)
   13856:	4c22                	lw	s8,8(sp)
   13858:	bf99                	j	137ae <__sfvwrite_r+0x196>
   1385a:	0044a983          	lw	s3,4(s1)
   1385e:	87a6                	mv	a5,s1
   13860:	04a1                	addi	s1,s1,8
   13862:	fe098ce3          	beqz	s3,1385a <__sfvwrite_r+0x242>
   13866:	0007ac03          	lw	s8,0(a5)
   1386a:	864e                	mv	a2,s3
   1386c:	45a9                	li	a1,10
   1386e:	8562                	mv	a0,s8
   13870:	22e9                	jal	13a3a <memchr>
   13872:	c579                	beqz	a0,13940 <__sfvwrite_r+0x328>
   13874:	0505                	addi	a0,a0,1
   13876:	41850ab3          	sub	s5,a0,s8
   1387a:	b769                	j	13804 <__sfvwrite_r+0x1ec>
   1387c:	85e2                	mv	a1,s8
   1387e:	864a                	mv	a2,s2
   13880:	2e3d                	jal	13bbe <memmove>
   13882:	401c                	lw	a5,0(s0)
   13884:	85a2                	mv	a1,s0
   13886:	8552                	mv	a0,s4
   13888:	97ca                	add	a5,a5,s2
   1388a:	c01c                	sw	a5,0(s0)
   1388c:	3319                	jal	13592 <_fflush_r>
   1388e:	d545                	beqz	a0,13836 <__sfvwrite_r+0x21e>
   13890:	bf35                	j	137cc <__sfvwrite_r+0x1b4>
   13892:	4814                	lw	a3,16(s0)
   13894:	02f6e863          	bltu	a3,a5,138c4 <__sfvwrite_r+0x2ac>
   13898:	4850                	lw	a2,20(s0)
   1389a:	02c9e563          	bltu	s3,a2,138c4 <__sfvwrite_r+0x2ac>
   1389e:	87ce                	mv	a5,s3
   138a0:	013af363          	bgeu	s5,s3,138a6 <__sfvwrite_r+0x28e>
   138a4:	87d6                	mv	a5,s5
   138a6:	02c7e6b3          	rem	a3,a5,a2
   138aa:	5058                	lw	a4,36(s0)
   138ac:	4c4c                	lw	a1,28(s0)
   138ae:	865e                	mv	a2,s7
   138b0:	8552                	mv	a0,s4
   138b2:	40d786b3          	sub	a3,a5,a3
   138b6:	9702                	jalr	a4
   138b8:	892a                	mv	s2,a0
   138ba:	02a05963          	blez	a0,138ec <__sfvwrite_r+0x2d4>
   138be:	412989b3          	sub	s3,s3,s2
   138c2:	bd6d                	j	1377c <__sfvwrite_r+0x164>
   138c4:	893a                	mv	s2,a4
   138c6:	00e9f363          	bgeu	s3,a4,138cc <__sfvwrite_r+0x2b4>
   138ca:	894e                	mv	s2,s3
   138cc:	853e                	mv	a0,a5
   138ce:	864a                	mv	a2,s2
   138d0:	85de                	mv	a1,s7
   138d2:	24f5                	jal	13bbe <memmove>
   138d4:	4418                	lw	a4,8(s0)
   138d6:	401c                	lw	a5,0(s0)
   138d8:	41270733          	sub	a4,a4,s2
   138dc:	97ca                	add	a5,a5,s2
   138de:	c418                	sw	a4,8(s0)
   138e0:	c01c                	sw	a5,0(s0)
   138e2:	ff71                	bnez	a4,138be <__sfvwrite_r+0x2a6>
   138e4:	85a2                	mv	a1,s0
   138e6:	8552                	mv	a0,s4
   138e8:	316d                	jal	13592 <_fflush_r>
   138ea:	d971                	beqz	a0,138be <__sfvwrite_r+0x2a6>
   138ec:	00c41783          	lh	a5,12(s0)
   138f0:	4bb2                	lw	s7,12(sp)
   138f2:	4c22                	lw	s8,8(sp)
   138f4:	4c92                	lw	s9,4(sp)
   138f6:	bdf9                	j	137d4 <__sfvwrite_r+0x1bc>
   138f8:	8c4e                	mv	s8,s3
   138fa:	8cce                	mv	s9,s3
   138fc:	b5a5                	j	13764 <__sfvwrite_r+0x14c>
   138fe:	865e                	mv	a2,s7
   13900:	85e2                	mv	a1,s8
   13902:	2c75                	jal	13bbe <memmove>
   13904:	4418                	lw	a4,8(s0)
   13906:	401c                	lw	a5,0(s0)
   13908:	895e                	mv	s2,s7
   1390a:	41770733          	sub	a4,a4,s7
   1390e:	97de                	add	a5,a5,s7
   13910:	c418                	sw	a4,8(s0)
   13912:	c01c                	sw	a5,0(s0)
   13914:	b70d                	j	13836 <__sfvwrite_r+0x21e>
   13916:	8552                	mv	a0,s4
   13918:	712020ef          	jal	1602a <_realloc_r>
   1391c:	8caa                	mv	s9,a0
   1391e:	e20517e3          	bnez	a0,1374c <__sfvwrite_r+0x134>
   13922:	480c                	lw	a1,16(s0)
   13924:	8552                	mv	a0,s4
   13926:	deefd0ef          	jal	10f14 <_free_r>
   1392a:	00c41783          	lh	a5,12(s0)
   1392e:	4731                	li	a4,12
   13930:	4bb2                	lw	s7,12(sp)
   13932:	4c22                	lw	s8,8(sp)
   13934:	4c92                	lw	s9,4(sp)
   13936:	00ea2023          	sw	a4,0(s4)
   1393a:	f7f7f793          	andi	a5,a5,-129
   1393e:	bd59                	j	137d4 <__sfvwrite_r+0x1bc>
   13940:	00198793          	addi	a5,s3,1
   13944:	8abe                	mv	s5,a5
   13946:	b5c1                	j	13806 <__sfvwrite_r+0x1ee>
   13948:	00c41783          	lh	a5,12(s0)
   1394c:	b561                	j	137d4 <__sfvwrite_r+0x1bc>
   1394e:	4731                	li	a4,12
   13950:	00c41783          	lh	a5,12(s0)
   13954:	4bb2                	lw	s7,12(sp)
   13956:	4c22                	lw	s8,8(sp)
   13958:	4c92                	lw	s9,4(sp)
   1395a:	00ea2023          	sw	a4,0(s4)
   1395e:	bd9d                	j	137d4 <__sfvwrite_r+0x1bc>

00013960 <__swsetup_r>:
   13960:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   13964:	1141                	addi	sp,sp,-16
   13966:	c422                	sw	s0,8(sp)
   13968:	c226                	sw	s1,4(sp)
   1396a:	c606                	sw	ra,12(sp)
   1396c:	84aa                	mv	s1,a0
   1396e:	842e                	mv	s0,a1
   13970:	c399                	beqz	a5,13976 <__swsetup_r+0x16>
   13972:	5bd8                	lw	a4,52(a5)
   13974:	c75d                	beqz	a4,13a22 <__swsetup_r+0xc2>
   13976:	00c41783          	lh	a5,12(s0)
   1397a:	0087f713          	andi	a4,a5,8
   1397e:	c721                	beqz	a4,139c6 <__swsetup_r+0x66>
   13980:	4818                	lw	a4,16(s0)
   13982:	cf31                	beqz	a4,139de <__swsetup_r+0x7e>
   13984:	0017f693          	andi	a3,a5,1
   13988:	ce91                	beqz	a3,139a4 <__swsetup_r+0x44>
   1398a:	4854                	lw	a3,20(s0)
   1398c:	00042423          	sw	zero,8(s0)
   13990:	4501                	li	a0,0
   13992:	40d006b3          	neg	a3,a3
   13996:	cc14                	sw	a3,24(s0)
   13998:	cf11                	beqz	a4,139b4 <__swsetup_r+0x54>
   1399a:	40b2                	lw	ra,12(sp)
   1399c:	4422                	lw	s0,8(sp)
   1399e:	4492                	lw	s1,4(sp)
   139a0:	0141                	addi	sp,sp,16
   139a2:	8082                	ret
   139a4:	0027f693          	andi	a3,a5,2
   139a8:	4601                	li	a2,0
   139aa:	e291                	bnez	a3,139ae <__swsetup_r+0x4e>
   139ac:	4850                	lw	a2,20(s0)
   139ae:	c410                	sw	a2,8(s0)
   139b0:	4501                	li	a0,0
   139b2:	f765                	bnez	a4,1399a <__swsetup_r+0x3a>
   139b4:	0807f713          	andi	a4,a5,128
   139b8:	d36d                	beqz	a4,1399a <__swsetup_r+0x3a>
   139ba:	0407e793          	ori	a5,a5,64
   139be:	00f41623          	sh	a5,12(s0)
   139c2:	557d                	li	a0,-1
   139c4:	bfd9                	j	1399a <__swsetup_r+0x3a>
   139c6:	0107f713          	andi	a4,a5,16
   139ca:	c325                	beqz	a4,13a2a <__swsetup_r+0xca>
   139cc:	0047f713          	andi	a4,a5,4
   139d0:	e70d                	bnez	a4,139fa <__swsetup_r+0x9a>
   139d2:	4818                	lw	a4,16(s0)
   139d4:	0087e793          	ori	a5,a5,8
   139d8:	00f41623          	sh	a5,12(s0)
   139dc:	f745                	bnez	a4,13984 <__swsetup_r+0x24>
   139de:	2807f693          	andi	a3,a5,640
   139e2:	20000613          	li	a2,512
   139e6:	f8c68fe3          	beq	a3,a2,13984 <__swsetup_r+0x24>
   139ea:	85a2                	mv	a1,s0
   139ec:	8526                	mv	a0,s1
   139ee:	217020ef          	jal	16404 <__smakebuf_r>
   139f2:	00c41783          	lh	a5,12(s0)
   139f6:	4818                	lw	a4,16(s0)
   139f8:	b771                	j	13984 <__swsetup_r+0x24>
   139fa:	580c                	lw	a1,48(s0)
   139fc:	cd81                	beqz	a1,13a14 <__swsetup_r+0xb4>
   139fe:	04040713          	addi	a4,s0,64
   13a02:	00e58763          	beq	a1,a4,13a10 <__swsetup_r+0xb0>
   13a06:	8526                	mv	a0,s1
   13a08:	d0cfd0ef          	jal	10f14 <_free_r>
   13a0c:	00c41783          	lh	a5,12(s0)
   13a10:	02042823          	sw	zero,48(s0)
   13a14:	4818                	lw	a4,16(s0)
   13a16:	fdb7f793          	andi	a5,a5,-37
   13a1a:	00042223          	sw	zero,4(s0)
   13a1e:	c018                	sw	a4,0(s0)
   13a20:	bf55                	j	139d4 <__swsetup_r+0x74>
   13a22:	853e                	mv	a0,a5
   13a24:	e49fc0ef          	jal	1086c <__sinit>
   13a28:	b7b9                	j	13976 <__swsetup_r+0x16>
   13a2a:	4725                	li	a4,9
   13a2c:	c098                	sw	a4,0(s1)
   13a2e:	0407e793          	ori	a5,a5,64
   13a32:	00f41623          	sh	a5,12(s0)
   13a36:	557d                	li	a0,-1
   13a38:	b78d                	j	1399a <__swsetup_r+0x3a>

00013a3a <memchr>:
   13a3a:	00357793          	andi	a5,a0,3
   13a3e:	0ff5f693          	zext.b	a3,a1
   13a42:	c395                	beqz	a5,13a66 <memchr+0x2c>
   13a44:	fff60793          	addi	a5,a2,-1
   13a48:	c605                	beqz	a2,13a70 <memchr+0x36>
   13a4a:	567d                	li	a2,-1
   13a4c:	a801                	j	13a5c <memchr+0x22>
   13a4e:	0505                	addi	a0,a0,1
   13a50:	00357713          	andi	a4,a0,3
   13a54:	cb11                	beqz	a4,13a68 <memchr+0x2e>
   13a56:	17fd                	addi	a5,a5,-1
   13a58:	00c78c63          	beq	a5,a2,13a70 <memchr+0x36>
   13a5c:	00054703          	lbu	a4,0(a0)
   13a60:	fed717e3          	bne	a4,a3,13a4e <memchr+0x14>
   13a64:	8082                	ret
   13a66:	87b2                	mv	a5,a2
   13a68:	470d                	li	a4,3
   13a6a:	00f76563          	bltu	a4,a5,13a74 <memchr+0x3a>
   13a6e:	e3b9                	bnez	a5,13ab4 <memchr+0x7a>
   13a70:	4501                	li	a0,0
   13a72:	8082                	ret
   13a74:	0ff5f593          	zext.b	a1,a1
   13a78:	00859713          	slli	a4,a1,0x8
   13a7c:	95ba                	add	a1,a1,a4
   13a7e:	01059713          	slli	a4,a1,0x10
   13a82:	feff08b7          	lui	a7,0xfeff0
   13a86:	80808837          	lui	a6,0x80808
   13a8a:	95ba                	add	a1,a1,a4
   13a8c:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13a90:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807ec624>
   13a94:	430d                	li	t1,3
   13a96:	a029                	j	13aa0 <memchr+0x66>
   13a98:	17f1                	addi	a5,a5,-4
   13a9a:	0511                	addi	a0,a0,4
   13a9c:	fcf379e3          	bgeu	t1,a5,13a6e <memchr+0x34>
   13aa0:	4118                	lw	a4,0(a0)
   13aa2:	8f2d                	xor	a4,a4,a1
   13aa4:	01170633          	add	a2,a4,a7
   13aa8:	fff74713          	not	a4,a4
   13aac:	8f71                	and	a4,a4,a2
   13aae:	01077733          	and	a4,a4,a6
   13ab2:	d37d                	beqz	a4,13a98 <memchr+0x5e>
   13ab4:	97aa                	add	a5,a5,a0
   13ab6:	a021                	j	13abe <memchr+0x84>
   13ab8:	0505                	addi	a0,a0,1
   13aba:	faa78be3          	beq	a5,a0,13a70 <memchr+0x36>
   13abe:	00054703          	lbu	a4,0(a0)
   13ac2:	fed71be3          	bne	a4,a3,13ab8 <memchr+0x7e>
   13ac6:	8082                	ret

00013ac8 <strncpy>:
   13ac8:	00a5e7b3          	or	a5,a1,a0
   13acc:	8b8d                	andi	a5,a5,3
   13ace:	e781                	bnez	a5,13ad6 <strncpy+0xe>
   13ad0:	478d                	li	a5,3
   13ad2:	02c7eb63          	bltu	a5,a2,13b08 <strncpy+0x40>
   13ad6:	872a                	mv	a4,a0
   13ad8:	a811                	j	13aec <strncpy+0x24>
   13ada:	fff5c683          	lbu	a3,-1(a1)
   13ade:	fff60813          	addi	a6,a2,-1
   13ae2:	fed78fa3          	sb	a3,-1(a5)
   13ae6:	ca81                	beqz	a3,13af6 <strncpy+0x2e>
   13ae8:	873e                	mv	a4,a5
   13aea:	8642                	mv	a2,a6
   13aec:	0585                	addi	a1,a1,1
   13aee:	00170793          	addi	a5,a4,1
   13af2:	f665                	bnez	a2,13ada <strncpy+0x12>
   13af4:	8082                	ret
   13af6:	9732                	add	a4,a4,a2
   13af8:	04080463          	beqz	a6,13b40 <strncpy+0x78>
   13afc:	0785                	addi	a5,a5,1
   13afe:	fe078fa3          	sb	zero,-1(a5)
   13b02:	fee79de3          	bne	a5,a4,13afc <strncpy+0x34>
   13b06:	8082                	ret
   13b08:	feff0337          	lui	t1,0xfeff0
   13b0c:	808088b7          	lui	a7,0x80808
   13b10:	872a                	mv	a4,a0
   13b12:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13b16:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807ec624>
   13b1a:	4e0d                	li	t3,3
   13b1c:	a039                	j	13b2a <strncpy+0x62>
   13b1e:	c314                	sw	a3,0(a4)
   13b20:	1671                	addi	a2,a2,-4
   13b22:	0711                	addi	a4,a4,4
   13b24:	0591                	addi	a1,a1,4
   13b26:	fcce73e3          	bgeu	t3,a2,13aec <strncpy+0x24>
   13b2a:	4194                	lw	a3,0(a1)
   13b2c:	006687b3          	add	a5,a3,t1
   13b30:	fff6c813          	not	a6,a3
   13b34:	0107f7b3          	and	a5,a5,a6
   13b38:	0117f7b3          	and	a5,a5,a7
   13b3c:	d3ed                	beqz	a5,13b1e <strncpy+0x56>
   13b3e:	b77d                	j	13aec <strncpy+0x24>
   13b40:	8082                	ret

00013b42 <__localeconv_l>:
   13b42:	0f050513          	addi	a0,a0,240
   13b46:	8082                	ret

00013b48 <_localeconv_r>:
   13b48:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13b4c:	8082                	ret

00013b4e <localeconv>:
   13b4e:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13b52:	8082                	ret

00013b54 <_sbrk_r>:
   13b54:	1141                	addi	sp,sp,-16
   13b56:	c422                	sw	s0,8(sp)
   13b58:	c226                	sw	s1,4(sp)
   13b5a:	842a                	mv	s0,a0
   13b5c:	852e                	mv	a0,a1
   13b5e:	c606                	sw	ra,12(sp)
   13b60:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   13b64:	7a1030ef          	jal	17b04 <_sbrk>
   13b68:	57fd                	li	a5,-1
   13b6a:	00f50763          	beq	a0,a5,13b78 <_sbrk_r+0x24>
   13b6e:	40b2                	lw	ra,12(sp)
   13b70:	4422                	lw	s0,8(sp)
   13b72:	4492                	lw	s1,4(sp)
   13b74:	0141                	addi	sp,sp,16
   13b76:	8082                	ret
   13b78:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   13b7c:	dbed                	beqz	a5,13b6e <_sbrk_r+0x1a>
   13b7e:	40b2                	lw	ra,12(sp)
   13b80:	c01c                	sw	a5,0(s0)
   13b82:	4422                	lw	s0,8(sp)
   13b84:	4492                	lw	s1,4(sp)
   13b86:	0141                	addi	sp,sp,16
   13b88:	8082                	ret

00013b8a <__libc_fini_array>:
   13b8a:	1141                	addi	sp,sp,-16
   13b8c:	c422                	sw	s0,8(sp)
   13b8e:	67ed                	lui	a5,0x1b
   13b90:	646d                	lui	s0,0x1b
   13b92:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   13b96:	01040413          	addi	s0,s0,16 # 1b010 <__sglue>
   13b9a:	8c1d                	sub	s0,s0,a5
   13b9c:	c226                	sw	s1,4(sp)
   13b9e:	c606                	sw	ra,12(sp)
   13ba0:	40245493          	srai	s1,s0,0x2
   13ba4:	c881                	beqz	s1,13bb4 <__libc_fini_array+0x2a>
   13ba6:	1471                	addi	s0,s0,-4
   13ba8:	943e                	add	s0,s0,a5
   13baa:	401c                	lw	a5,0(s0)
   13bac:	14fd                	addi	s1,s1,-1
   13bae:	1471                	addi	s0,s0,-4
   13bb0:	9782                	jalr	a5
   13bb2:	fce5                	bnez	s1,13baa <__libc_fini_array+0x20>
   13bb4:	40b2                	lw	ra,12(sp)
   13bb6:	4422                	lw	s0,8(sp)
   13bb8:	4492                	lw	s1,4(sp)
   13bba:	0141                	addi	sp,sp,16
   13bbc:	8082                	ret

00013bbe <memmove>:
   13bbe:	02a5f263          	bgeu	a1,a0,13be2 <memmove+0x24>
   13bc2:	00c58733          	add	a4,a1,a2
   13bc6:	00e57e63          	bgeu	a0,a4,13be2 <memmove+0x24>
   13bca:	00c507b3          	add	a5,a0,a2
   13bce:	ca1d                	beqz	a2,13c04 <memmove+0x46>
   13bd0:	fff74683          	lbu	a3,-1(a4)
   13bd4:	17fd                	addi	a5,a5,-1
   13bd6:	177d                	addi	a4,a4,-1
   13bd8:	00d78023          	sb	a3,0(a5)
   13bdc:	fef51ae3          	bne	a0,a5,13bd0 <memmove+0x12>
   13be0:	8082                	ret
   13be2:	47bd                	li	a5,15
   13be4:	02c7e163          	bltu	a5,a2,13c06 <memmove+0x48>
   13be8:	87aa                	mv	a5,a0
   13bea:	fff60693          	addi	a3,a2,-1
   13bee:	ca59                	beqz	a2,13c84 <memmove+0xc6>
   13bf0:	0685                	addi	a3,a3,1
   13bf2:	96be                	add	a3,a3,a5
   13bf4:	0005c703          	lbu	a4,0(a1)
   13bf8:	0785                	addi	a5,a5,1
   13bfa:	0585                	addi	a1,a1,1
   13bfc:	fee78fa3          	sb	a4,-1(a5)
   13c00:	fed79ae3          	bne	a5,a3,13bf4 <memmove+0x36>
   13c04:	8082                	ret
   13c06:	00b567b3          	or	a5,a0,a1
   13c0a:	8b8d                	andi	a5,a5,3
   13c0c:	eba5                	bnez	a5,13c7c <memmove+0xbe>
   13c0e:	ff060893          	addi	a7,a2,-16
   13c12:	ff08f893          	andi	a7,a7,-16
   13c16:	08c1                	addi	a7,a7,16
   13c18:	011506b3          	add	a3,a0,a7
   13c1c:	872e                	mv	a4,a1
   13c1e:	87aa                	mv	a5,a0
   13c20:	00072803          	lw	a6,0(a4)
   13c24:	0741                	addi	a4,a4,16
   13c26:	07c1                	addi	a5,a5,16
   13c28:	ff07a823          	sw	a6,-16(a5)
   13c2c:	ff472803          	lw	a6,-12(a4)
   13c30:	ff07aa23          	sw	a6,-12(a5)
   13c34:	ff872803          	lw	a6,-8(a4)
   13c38:	ff07ac23          	sw	a6,-8(a5)
   13c3c:	ffc72803          	lw	a6,-4(a4)
   13c40:	ff07ae23          	sw	a6,-4(a5)
   13c44:	fcd79ee3          	bne	a5,a3,13c20 <memmove+0x62>
   13c48:	00c67813          	andi	a6,a2,12
   13c4c:	95c6                	add	a1,a1,a7
   13c4e:	00f67713          	andi	a4,a2,15
   13c52:	02080a63          	beqz	a6,13c86 <memmove+0xc8>
   13c56:	ffc70813          	addi	a6,a4,-4
   13c5a:	ffc87813          	andi	a6,a6,-4
   13c5e:	0811                	addi	a6,a6,4
   13c60:	010687b3          	add	a5,a3,a6
   13c64:	872e                	mv	a4,a1
   13c66:	00072883          	lw	a7,0(a4)
   13c6a:	0691                	addi	a3,a3,4
   13c6c:	0711                	addi	a4,a4,4
   13c6e:	ff16ae23          	sw	a7,-4(a3)
   13c72:	fef69ae3          	bne	a3,a5,13c66 <memmove+0xa8>
   13c76:	8a0d                	andi	a2,a2,3
   13c78:	95c2                	add	a1,a1,a6
   13c7a:	bf85                	j	13bea <memmove+0x2c>
   13c7c:	fff60693          	addi	a3,a2,-1
   13c80:	87aa                	mv	a5,a0
   13c82:	b7bd                	j	13bf0 <memmove+0x32>
   13c84:	8082                	ret
   13c86:	863a                	mv	a2,a4
   13c88:	b78d                	j	13bea <memmove+0x2c>

00013c8a <memcpy>:
   13c8a:	00a5c7b3          	xor	a5,a1,a0
   13c8e:	8b8d                	andi	a5,a5,3
   13c90:	00c508b3          	add	a7,a0,a2
   13c94:	e7b1                	bnez	a5,13ce0 <memcpy+0x56>
   13c96:	478d                	li	a5,3
   13c98:	04c7f463          	bgeu	a5,a2,13ce0 <memcpy+0x56>
   13c9c:	00357793          	andi	a5,a0,3
   13ca0:	872a                	mv	a4,a0
   13ca2:	ebb9                	bnez	a5,13cf8 <memcpy+0x6e>
   13ca4:	ffc8f613          	andi	a2,a7,-4
   13ca8:	40e606b3          	sub	a3,a2,a4
   13cac:	02000793          	li	a5,32
   13cb0:	06d7c863          	blt	a5,a3,13d20 <memcpy+0x96>
   13cb4:	86ae                	mv	a3,a1
   13cb6:	87ba                	mv	a5,a4
   13cb8:	02c77163          	bgeu	a4,a2,13cda <memcpy+0x50>
   13cbc:	0006a803          	lw	a6,0(a3)
   13cc0:	0791                	addi	a5,a5,4
   13cc2:	0691                	addi	a3,a3,4
   13cc4:	ff07ae23          	sw	a6,-4(a5)
   13cc8:	fec7eae3          	bltu	a5,a2,13cbc <memcpy+0x32>
   13ccc:	fff60793          	addi	a5,a2,-1
   13cd0:	8f99                	sub	a5,a5,a4
   13cd2:	9bf1                	andi	a5,a5,-4
   13cd4:	0791                	addi	a5,a5,4
   13cd6:	973e                	add	a4,a4,a5
   13cd8:	95be                	add	a1,a1,a5
   13cda:	01176663          	bltu	a4,a7,13ce6 <memcpy+0x5c>
   13cde:	8082                	ret
   13ce0:	872a                	mv	a4,a0
   13ce2:	03157e63          	bgeu	a0,a7,13d1e <memcpy+0x94>
   13ce6:	0005c783          	lbu	a5,0(a1)
   13cea:	0705                	addi	a4,a4,1
   13cec:	0585                	addi	a1,a1,1
   13cee:	fef70fa3          	sb	a5,-1(a4)
   13cf2:	fee89ae3          	bne	a7,a4,13ce6 <memcpy+0x5c>
   13cf6:	8082                	ret
   13cf8:	0005c683          	lbu	a3,0(a1)
   13cfc:	0705                	addi	a4,a4,1
   13cfe:	00377793          	andi	a5,a4,3
   13d02:	fed70fa3          	sb	a3,-1(a4)
   13d06:	0585                	addi	a1,a1,1
   13d08:	dfd1                	beqz	a5,13ca4 <memcpy+0x1a>
   13d0a:	0005c683          	lbu	a3,0(a1)
   13d0e:	0705                	addi	a4,a4,1
   13d10:	00377793          	andi	a5,a4,3
   13d14:	fed70fa3          	sb	a3,-1(a4)
   13d18:	0585                	addi	a1,a1,1
   13d1a:	fff9                	bnez	a5,13cf8 <memcpy+0x6e>
   13d1c:	b761                	j	13ca4 <memcpy+0x1a>
   13d1e:	8082                	ret
   13d20:	1141                	addi	sp,sp,-16
   13d22:	c622                	sw	s0,12(sp)
   13d24:	02000413          	li	s0,32
   13d28:	0005a383          	lw	t2,0(a1)
   13d2c:	0045a283          	lw	t0,4(a1)
   13d30:	0085af83          	lw	t6,8(a1)
   13d34:	00c5af03          	lw	t5,12(a1)
   13d38:	0105ae83          	lw	t4,16(a1)
   13d3c:	0145ae03          	lw	t3,20(a1)
   13d40:	0185a303          	lw	t1,24(a1)
   13d44:	01c5a803          	lw	a6,28(a1)
   13d48:	5194                	lw	a3,32(a1)
   13d4a:	02470713          	addi	a4,a4,36
   13d4e:	40e607b3          	sub	a5,a2,a4
   13d52:	fc772e23          	sw	t2,-36(a4)
   13d56:	fe572023          	sw	t0,-32(a4)
   13d5a:	fff72223          	sw	t6,-28(a4)
   13d5e:	ffe72423          	sw	t5,-24(a4)
   13d62:	ffd72623          	sw	t4,-20(a4)
   13d66:	ffc72823          	sw	t3,-16(a4)
   13d6a:	fe672a23          	sw	t1,-12(a4)
   13d6e:	ff072c23          	sw	a6,-8(a4)
   13d72:	fed72e23          	sw	a3,-4(a4)
   13d76:	02458593          	addi	a1,a1,36
   13d7a:	faf447e3          	blt	s0,a5,13d28 <memcpy+0x9e>
   13d7e:	86ae                	mv	a3,a1
   13d80:	87ba                	mv	a5,a4
   13d82:	02c77163          	bgeu	a4,a2,13da4 <memcpy+0x11a>
   13d86:	0006a803          	lw	a6,0(a3)
   13d8a:	0791                	addi	a5,a5,4
   13d8c:	0691                	addi	a3,a3,4
   13d8e:	ff07ae23          	sw	a6,-4(a5)
   13d92:	fec7eae3          	bltu	a5,a2,13d86 <memcpy+0xfc>
   13d96:	fff60793          	addi	a5,a2,-1
   13d9a:	8f99                	sub	a5,a5,a4
   13d9c:	9bf1                	andi	a5,a5,-4
   13d9e:	0791                	addi	a5,a5,4
   13da0:	973e                	add	a4,a4,a5
   13da2:	95be                	add	a1,a1,a5
   13da4:	01176563          	bltu	a4,a7,13dae <memcpy+0x124>
   13da8:	4432                	lw	s0,12(sp)
   13daa:	0141                	addi	sp,sp,16
   13dac:	8082                	ret
   13dae:	0005c783          	lbu	a5,0(a1)
   13db2:	0705                	addi	a4,a4,1
   13db4:	0585                	addi	a1,a1,1
   13db6:	fef70fa3          	sb	a5,-1(a4)
   13dba:	fee887e3          	beq	a7,a4,13da8 <memcpy+0x11e>
   13dbe:	0005c783          	lbu	a5,0(a1)
   13dc2:	0705                	addi	a4,a4,1
   13dc4:	0585                	addi	a1,a1,1
   13dc6:	fef70fa3          	sb	a5,-1(a4)
   13dca:	fee892e3          	bne	a7,a4,13dae <memcpy+0x124>
   13dce:	bfe9                	j	13da8 <memcpy+0x11e>

00013dd0 <frexpl>:
   13dd0:	7159                	addi	sp,sp,-112
   13dd2:	d0ca                	sw	s2,96(sp)
   13dd4:	00c5a903          	lw	s2,12(a1)
   13dd8:	ccd2                	sw	s4,88(sp)
   13dda:	cad6                	sw	s5,84(sp)
   13ddc:	c8da                	sw	s6,80(sp)
   13dde:	0045aa83          	lw	s5,4(a1)
   13de2:	0005ab03          	lw	s6,0(a1)
   13de6:	0085aa03          	lw	s4,8(a1)
   13dea:	cece                	sw	s3,92(sp)
   13dec:	69a1                	lui	s3,0x8
   13dee:	d4a2                	sw	s0,104(sp)
   13df0:	d2a6                	sw	s1,100(sp)
   13df2:	d686                	sw	ra,108(sp)
   13df4:	01095493          	srli	s1,s2,0x10
   13df8:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   13dfa:	d85a                	sw	s6,48(sp)
   13dfc:	da56                	sw	s5,52(sp)
   13dfe:	dc52                	sw	s4,56(sp)
   13e00:	de4a                	sw	s2,60(sp)
   13e02:	0134f4b3          	and	s1,s1,s3
   13e06:	00062023          	sw	zero,0(a2)
   13e0a:	842a                	mv	s0,a0
   13e0c:	05348763          	beq	s1,s3,13e5a <frexpl+0x8a>
   13e10:	080c                	addi	a1,sp,16
   13e12:	1008                	addi	a0,sp,32
   13e14:	c6de                	sw	s7,76(sp)
   13e16:	d05a                	sw	s6,32(sp)
   13e18:	8bb2                	mv	s7,a2
   13e1a:	d256                	sw	s5,36(sp)
   13e1c:	d452                	sw	s4,40(sp)
   13e1e:	d64a                	sw	s2,44(sp)
   13e20:	c802                	sw	zero,16(sp)
   13e22:	ca02                	sw	zero,20(sp)
   13e24:	cc02                	sw	zero,24(sp)
   13e26:	ce02                	sw	zero,28(sp)
   13e28:	5df030ef          	jal	17c06 <__eqtf2>
   13e2c:	c941                	beqz	a0,13ebc <frexpl+0xec>
   13e2e:	4681                	li	a3,0
   13e30:	c8a1                	beqz	s1,13e80 <frexpl+0xb0>
   13e32:	7771                	lui	a4,0xffffc
   13e34:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffe05a6>
   13e36:	5972                	lw	s2,60(sp)
   13e38:	94ba                	add	s1,s1,a4
   13e3a:	800107b7          	lui	a5,0x80010
   13e3e:	94b6                	add	s1,s1,a3
   13e40:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff45a3>
   13e42:	009ba023          	sw	s1,0(s7)
   13e46:	5b42                	lw	s6,48(sp)
   13e48:	5ad2                	lw	s5,52(sp)
   13e4a:	5a62                	lw	s4,56(sp)
   13e4c:	4bb6                	lw	s7,76(sp)
   13e4e:	00f97933          	and	s2,s2,a5
   13e52:	3ffe07b7          	lui	a5,0x3ffe0
   13e56:	00f96933          	or	s2,s2,a5
   13e5a:	01642023          	sw	s6,0(s0)
   13e5e:	01542223          	sw	s5,4(s0)
   13e62:	01442423          	sw	s4,8(s0)
   13e66:	01242623          	sw	s2,12(s0)
   13e6a:	50b6                	lw	ra,108(sp)
   13e6c:	8522                	mv	a0,s0
   13e6e:	5426                	lw	s0,104(sp)
   13e70:	5496                	lw	s1,100(sp)
   13e72:	5906                	lw	s2,96(sp)
   13e74:	49f6                	lw	s3,92(sp)
   13e76:	4a66                	lw	s4,88(sp)
   13e78:	4ad6                	lw	s5,84(sp)
   13e7a:	4b46                	lw	s6,80(sp)
   13e7c:	6165                	addi	sp,sp,112
   13e7e:	8082                	ret
   13e80:	407107b7          	lui	a5,0x40710
   13e84:	860a                	mv	a2,sp
   13e86:	080c                	addi	a1,sp,16
   13e88:	1008                	addi	a0,sp,32
   13e8a:	c63e                	sw	a5,12(sp)
   13e8c:	c85a                	sw	s6,16(sp)
   13e8e:	ca56                	sw	s5,20(sp)
   13e90:	cc52                	sw	s4,24(sp)
   13e92:	ce4a                	sw	s2,28(sp)
   13e94:	c002                	sw	zero,0(sp)
   13e96:	c202                	sw	zero,4(sp)
   13e98:	c402                	sw	zero,8(sp)
   13e9a:	030040ef          	jal	17eca <__multf3>
   13e9e:	5702                	lw	a4,32(sp)
   13ea0:	57b2                	lw	a5,44(sp)
   13ea2:	f8e00693          	li	a3,-114
   13ea6:	d83a                	sw	a4,48(sp)
   13ea8:	5712                	lw	a4,36(sp)
   13eaa:	0107d493          	srli	s1,a5,0x10
   13eae:	de3e                	sw	a5,60(sp)
   13eb0:	da3a                	sw	a4,52(sp)
   13eb2:	5722                	lw	a4,40(sp)
   13eb4:	0134f4b3          	and	s1,s1,s3
   13eb8:	dc3a                	sw	a4,56(sp)
   13eba:	bfa5                	j	13e32 <frexpl+0x62>
   13ebc:	4bb6                	lw	s7,76(sp)
   13ebe:	bf71                	j	13e5a <frexpl+0x8a>

00013ec0 <__register_exitproc>:
   13ec0:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   13ec4:	c3a1                	beqz	a5,13f04 <__register_exitproc+0x44>
   13ec6:	43d8                	lw	a4,4(a5)
   13ec8:	487d                	li	a6,31
   13eca:	04e84f63          	blt	a6,a4,13f28 <__register_exitproc+0x68>
   13ece:	00271813          	slli	a6,a4,0x2
   13ed2:	c11d                	beqz	a0,13ef8 <__register_exitproc+0x38>
   13ed4:	01078333          	add	t1,a5,a6
   13ed8:	08c32423          	sw	a2,136(t1)
   13edc:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f472c>
   13ee0:	4605                	li	a2,1
   13ee2:	00e61633          	sll	a2,a2,a4
   13ee6:	00c8e8b3          	or	a7,a7,a2
   13eea:	1917a423          	sw	a7,392(a5)
   13eee:	10d32423          	sw	a3,264(t1)
   13ef2:	4689                	li	a3,2
   13ef4:	00d50f63          	beq	a0,a3,13f12 <__register_exitproc+0x52>
   13ef8:	0705                	addi	a4,a4,1
   13efa:	c3d8                	sw	a4,4(a5)
   13efc:	97c2                	add	a5,a5,a6
   13efe:	c78c                	sw	a1,8(a5)
   13f00:	4501                	li	a0,0
   13f02:	8082                	ret
   13f04:	0bc18813          	addi	a6,gp,188 # 1b8cc <__atexit0>
   13f08:	f301a423          	sw	a6,-216(gp) # 1b738 <__atexit>
   13f0c:	0bc18793          	addi	a5,gp,188 # 1b8cc <__atexit0>
   13f10:	bf5d                	j	13ec6 <__register_exitproc+0x6>
   13f12:	18c7a683          	lw	a3,396(a5)
   13f16:	0705                	addi	a4,a4,1
   13f18:	c3d8                	sw	a4,4(a5)
   13f1a:	8ed1                	or	a3,a3,a2
   13f1c:	18d7a623          	sw	a3,396(a5)
   13f20:	97c2                	add	a5,a5,a6
   13f22:	c78c                	sw	a1,8(a5)
   13f24:	4501                	li	a0,0
   13f26:	8082                	ret
   13f28:	557d                	li	a0,-1
   13f2a:	8082                	ret

00013f2c <_ldtoa_r>:
   13f2c:	68e9                	lui	a7,0x1a
   13f2e:	5ec88893          	addi	a7,a7,1516 # 1a5ec <blanks.1+0x10>
   13f32:	0008af83          	lw	t6,0(a7)
   13f36:	0048af03          	lw	t5,4(a7)
   13f3a:	0088ae83          	lw	t4,8(a7)
   13f3e:	00c8ae03          	lw	t3,12(a7)
   13f42:	0108a303          	lw	t1,16(a7)
   13f46:	03852883          	lw	a7,56(a0)
   13f4a:	7171                	addi	sp,sp,-176
   13f4c:	d14a                	sw	s2,160(sp)
   13f4e:	cf4e                	sw	s3,156(sp)
   13f50:	cd52                	sw	s4,152(sp)
   13f52:	c95a                	sw	s6,144(sp)
   13f54:	c75e                	sw	s7,140(sp)
   13f56:	c562                	sw	s8,136(sp)
   13f58:	c366                	sw	s9,132(sp)
   13f5a:	c16a                	sw	s10,128(sp)
   13f5c:	d706                	sw	ra,172(sp)
   13f5e:	d522                	sw	s0,168(sp)
   13f60:	d326                	sw	s1,164(sp)
   13f62:	cb56                	sw	s5,148(sp)
   13f64:	deee                	sw	s11,124(sp)
   13f66:	cefe                	sw	t6,92(sp)
   13f68:	d0fa                	sw	t5,96(sp)
   13f6a:	d2f6                	sw	t4,100(sp)
   13f6c:	d4f2                	sw	t3,104(sp)
   13f6e:	d69a                	sw	t1,108(sp)
   13f70:	cc32                	sw	a2,24(sp)
   13f72:	ce36                	sw	a3,28(sp)
   13f74:	0005aa03          	lw	s4,0(a1)
   13f78:	0045a983          	lw	s3,4(a1)
   13f7c:	0085a903          	lw	s2,8(a1)
   13f80:	00c5ac03          	lw	s8,12(a1)
   13f84:	8b2a                	mv	s6,a0
   13f86:	8bba                	mv	s7,a4
   13f88:	8cbe                	mv	s9,a5
   13f8a:	8d42                	mv	s10,a6
   13f8c:	00088763          	beqz	a7,13f9a <_ldtoa_r+0x6e>
   13f90:	85c6                	mv	a1,a7
   13f92:	24c010ef          	jal	151de <__freedtoa>
   13f96:	020b2c23          	sw	zero,56(s6)
   13f9a:	5626                	lw	a2,104(sp)
   13f9c:	01fc5693          	srli	a3,s8,0x1f
   13fa0:	001c1a93          	slli	s5,s8,0x1
   13fa4:	40165713          	srai	a4,a2,0x1
   13fa8:	74f1                	lui	s1,0xffffc
   13faa:	001c1413          	slli	s0,s8,0x1
   13fae:	8f75                	and	a4,a4,a3
   13fb0:	011ada93          	srli	s5,s5,0x11
   13fb4:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffe0535>
   13fb8:	010c1d93          	slli	s11,s8,0x10
   13fbc:	00dca023          	sw	a3,0(s9)
   13fc0:	8005                	srli	s0,s0,0x1
   13fc2:	8f31                	xor	a4,a4,a2
   13fc4:	010ddd93          	srli	s11,s11,0x10
   13fc8:	009a87b3          	add	a5,s5,s1
   13fcc:	100c                	addi	a1,sp,32
   13fce:	1808                	addi	a0,sp,48
   13fd0:	d852                	sw	s4,48(sp)
   13fd2:	da4e                	sw	s3,52(sp)
   13fd4:	dc4a                	sw	s2,56(sp)
   13fd6:	de22                	sw	s0,60(sp)
   13fd8:	d052                	sw	s4,32(sp)
   13fda:	d24e                	sw	s3,36(sp)
   13fdc:	d44a                	sw	s2,40(sp)
   13fde:	d622                	sw	s0,44(sp)
   13fe0:	d4ba                	sw	a4,104(sp)
   13fe2:	ca3e                	sw	a5,20(sp)
   13fe4:	c6d2                	sw	s4,76(sp)
   13fe6:	c8ce                	sw	s3,80(sp)
   13fe8:	caca                	sw	s2,84(sp)
   13fea:	ccee                	sw	s11,88(sp)
   13fec:	45d050ef          	jal	19c48 <__unordtf2>
   13ff0:	e979                	bnez	a0,140c6 <_ldtoa_r+0x19a>
   13ff2:	7fff0cb7          	lui	s9,0x7fff0
   13ff6:	54fd                	li	s1,-1
   13ff8:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   13ffa:	100c                	addi	a1,sp,32
   13ffc:	1808                	addi	a0,sp,48
   13ffe:	d852                	sw	s4,48(sp)
   14000:	da4e                	sw	s3,52(sp)
   14002:	dc4a                	sw	s2,56(sp)
   14004:	de22                	sw	s0,60(sp)
   14006:	d026                	sw	s1,32(sp)
   14008:	d226                	sw	s1,36(sp)
   1400a:	d426                	sw	s1,40(sp)
   1400c:	d666                	sw	s9,44(sp)
   1400e:	43b050ef          	jal	19c48 <__unordtf2>
   14012:	ed21                	bnez	a0,1406a <_ldtoa_r+0x13e>
   14014:	100c                	addi	a1,sp,32
   14016:	1808                	addi	a0,sp,48
   14018:	5c7030ef          	jal	17dde <__letf2>
   1401c:	04a05763          	blez	a0,1406a <_ldtoa_r+0x13e>
   14020:	478d                	li	a5,3
   14022:	c4be                	sw	a5,72(sp)
   14024:	47e2                	lw	a5,24(sp)
   14026:	4872                	lw	a6,28(sp)
   14028:	4652                	lw	a2,20(sp)
   1402a:	00b8                	addi	a4,sp,72
   1402c:	c06a                	sw	s10,0(sp)
   1402e:	88de                	mv	a7,s7
   14030:	00f4                	addi	a3,sp,76
   14032:	08ec                	addi	a1,sp,92
   14034:	855a                	mv	a0,s6
   14036:	2235                	jal	14162 <__gdtoa>
   14038:	000ba703          	lw	a4,0(s7)
   1403c:	77e1                	lui	a5,0xffff8
   1403e:	00f71763          	bne	a4,a5,1404c <_ldtoa_r+0x120>
   14042:	800007b7          	lui	a5,0x80000
   14046:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   14048:	00fba023          	sw	a5,0(s7)
   1404c:	50ba                	lw	ra,172(sp)
   1404e:	542a                	lw	s0,168(sp)
   14050:	549a                	lw	s1,164(sp)
   14052:	590a                	lw	s2,160(sp)
   14054:	49fa                	lw	s3,156(sp)
   14056:	4a6a                	lw	s4,152(sp)
   14058:	4ada                	lw	s5,148(sp)
   1405a:	4b4a                	lw	s6,144(sp)
   1405c:	4bba                	lw	s7,140(sp)
   1405e:	4c2a                	lw	s8,136(sp)
   14060:	4c9a                	lw	s9,132(sp)
   14062:	4d0a                	lw	s10,128(sp)
   14064:	5df6                	lw	s11,124(sp)
   14066:	614d                	addi	sp,sp,176
   14068:	8082                	ret
   1406a:	67c1                	lui	a5,0x10
   1406c:	100c                	addi	a1,sp,32
   1406e:	1808                	addi	a0,sp,48
   14070:	d852                	sw	s4,48(sp)
   14072:	da4e                	sw	s3,52(sp)
   14074:	dc4a                	sw	s2,56(sp)
   14076:	de22                	sw	s0,60(sp)
   14078:	d002                	sw	zero,32(sp)
   1407a:	d202                	sw	zero,36(sp)
   1407c:	d402                	sw	zero,40(sp)
   1407e:	d63e                	sw	a5,44(sp)
   14080:	473030ef          	jal	17cf2 <__getf2>
   14084:	00054963          	bltz	a0,14096 <_ldtoa_r+0x16a>
   14088:	67c1                	lui	a5,0x10
   1408a:	00fdedb3          	or	s11,s11,a5
   1408e:	4785                	li	a5,1
   14090:	c4be                	sw	a5,72(sp)
   14092:	ccee                	sw	s11,88(sp)
   14094:	bf41                	j	14024 <_ldtoa_r+0xf8>
   14096:	100c                	addi	a1,sp,32
   14098:	1808                	addi	a0,sp,48
   1409a:	d852                	sw	s4,48(sp)
   1409c:	da4e                	sw	s3,52(sp)
   1409e:	dc4a                	sw	s2,56(sp)
   140a0:	de62                	sw	s8,60(sp)
   140a2:	d002                	sw	zero,32(sp)
   140a4:	d202                	sw	zero,36(sp)
   140a6:	d402                	sw	zero,40(sp)
   140a8:	d602                	sw	zero,44(sp)
   140aa:	35d030ef          	jal	17c06 <__eqtf2>
   140ae:	e119                	bnez	a0,140b4 <_ldtoa_r+0x188>
   140b0:	c482                	sw	zero,72(sp)
   140b2:	bf8d                	j	14024 <_ldtoa_r+0xf8>
   140b4:	74f1                	lui	s1,0xffffc
   140b6:	4789                	li	a5,2
   140b8:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffe0536>
   140bc:	c4be                	sw	a5,72(sp)
   140be:	009a87b3          	add	a5,s5,s1
   140c2:	ca3e                	sw	a5,20(sp)
   140c4:	b785                	j	14024 <_ldtoa_r+0xf8>
   140c6:	4791                	li	a5,4
   140c8:	c4be                	sw	a5,72(sp)
   140ca:	bfa9                	j	14024 <_ldtoa_r+0xf8>

000140cc <_ldcheck>:
   140cc:	7139                	addi	sp,sp,-64
   140ce:	da26                	sw	s1,52(sp)
   140d0:	4544                	lw	s1,12(a0)
   140d2:	d64e                	sw	s3,44(sp)
   140d4:	d452                	sw	s4,40(sp)
   140d6:	00852983          	lw	s3,8(a0)
   140da:	00452a03          	lw	s4,4(a0)
   140de:	d256                	sw	s5,36(sp)
   140e0:	00052a83          	lw	s5,0(a0)
   140e4:	0486                	slli	s1,s1,0x1
   140e6:	8085                	srli	s1,s1,0x1
   140e8:	858a                	mv	a1,sp
   140ea:	0808                	addi	a0,sp,16
   140ec:	de06                	sw	ra,60(sp)
   140ee:	c856                	sw	s5,16(sp)
   140f0:	ca52                	sw	s4,20(sp)
   140f2:	cc4e                	sw	s3,24(sp)
   140f4:	ce26                	sw	s1,28(sp)
   140f6:	c056                	sw	s5,0(sp)
   140f8:	c252                	sw	s4,4(sp)
   140fa:	c44e                	sw	s3,8(sp)
   140fc:	c626                	sw	s1,12(sp)
   140fe:	34b050ef          	jal	19c48 <__unordtf2>
   14102:	e921                	bnez	a0,14152 <_ldcheck+0x86>
   14104:	d05a                	sw	s6,32(sp)
   14106:	7fff0b37          	lui	s6,0x7fff0
   1410a:	d84a                	sw	s2,48(sp)
   1410c:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   1410e:	597d                	li	s2,-1
   14110:	858a                	mv	a1,sp
   14112:	0808                	addi	a0,sp,16
   14114:	dc22                	sw	s0,56(sp)
   14116:	c04a                	sw	s2,0(sp)
   14118:	c24a                	sw	s2,4(sp)
   1411a:	c44a                	sw	s2,8(sp)
   1411c:	c65a                	sw	s6,12(sp)
   1411e:	4405                	li	s0,1
   14120:	329050ef          	jal	19c48 <__unordtf2>
   14124:	c105                	beqz	a0,14144 <_ldcheck+0x78>
   14126:	50f2                	lw	ra,60(sp)
   14128:	00144513          	xori	a0,s0,1
   1412c:	5462                	lw	s0,56(sp)
   1412e:	0ff57513          	zext.b	a0,a0
   14132:	5942                	lw	s2,48(sp)
   14134:	5b02                	lw	s6,32(sp)
   14136:	54d2                	lw	s1,52(sp)
   14138:	59b2                	lw	s3,44(sp)
   1413a:	5a22                	lw	s4,40(sp)
   1413c:	5a92                	lw	s5,36(sp)
   1413e:	0506                	slli	a0,a0,0x1
   14140:	6121                	addi	sp,sp,64
   14142:	8082                	ret
   14144:	858a                	mv	a1,sp
   14146:	0808                	addi	a0,sp,16
   14148:	497030ef          	jal	17dde <__letf2>
   1414c:	00152413          	slti	s0,a0,1
   14150:	bfd9                	j	14126 <_ldcheck+0x5a>
   14152:	50f2                	lw	ra,60(sp)
   14154:	54d2                	lw	s1,52(sp)
   14156:	59b2                	lw	s3,44(sp)
   14158:	5a22                	lw	s4,40(sp)
   1415a:	5a92                	lw	s5,36(sp)
   1415c:	4505                	li	a0,1
   1415e:	6121                	addi	sp,sp,64
   14160:	8082                	ret

00014162 <__gdtoa>:
   14162:	7171                	addi	sp,sp,-176
   14164:	cb56                	sw	s5,148(sp)
   14166:	00072a83          	lw	s5,0(a4)
   1416a:	d326                	sw	s1,164(sp)
   1416c:	c75e                	sw	s7,140(sp)
   1416e:	fcfafe13          	andi	t3,s5,-49
   14172:	d706                	sw	ra,172(sp)
   14174:	01c72023          	sw	t3,0(a4)
   14178:	8bba                	mv	s7,a4
   1417a:	574a                	lw	a4,176(sp)
   1417c:	00fafe13          	andi	t3,s5,15
   14180:	4e8d                	li	t4,3
   14182:	c63a                	sw	a4,12(sp)
   14184:	c832                	sw	a2,16(sp)
   14186:	d442                	sw	a6,40(sp)
   14188:	84c6                	mv	s1,a7
   1418a:	4fde0563          	beq	t3,t4,14674 <__gdtoa+0x512>
   1418e:	c95a                	sw	s6,144(sp)
   14190:	00cafb13          	andi	s6,s5,12
   14194:	460b1e63          	bnez	s6,14610 <__gdtoa+0x4ae>
   14198:	d522                	sw	s0,168(sp)
   1419a:	842a                	mv	s0,a0
   1419c:	4a0e0863          	beqz	t3,1464c <__gdtoa+0x4ea>
   141a0:	c16a                	sw	s10,128(sp)
   141a2:	0005ad03          	lw	s10,0(a1)
   141a6:	d14a                	sw	s2,160(sp)
   141a8:	cf4e                	sw	s3,156(sp)
   141aa:	cd52                	sw	s4,152(sp)
   141ac:	c366                	sw	s9,132(sp)
   141ae:	02000613          	li	a2,32
   141b2:	8a2e                	mv	s4,a1
   141b4:	893e                	mv	s2,a5
   141b6:	89b6                	mv	s3,a3
   141b8:	4581                	li	a1,0
   141ba:	02000793          	li	a5,32
   141be:	01a65663          	bge	a2,s10,141ca <__gdtoa+0x68>
   141c2:	0786                	slli	a5,a5,0x1
   141c4:	0585                	addi	a1,a1,1
   141c6:	ffa7cee3          	blt	a5,s10,141c2 <__gdtoa+0x60>
   141ca:	8522                	mv	a0,s0
   141cc:	254010ef          	jal	15420 <_Balloc>
   141d0:	8caa                	mv	s9,a0
   141d2:	68050463          	beqz	a0,1485a <__gdtoa+0x6f8>
   141d6:	fffd0893          	addi	a7,s10,-1
   141da:	4058d893          	srai	a7,a7,0x5
   141de:	00289513          	slli	a0,a7,0x2
   141e2:	c562                	sw	s8,136(sp)
   141e4:	deee                	sw	s11,124(sp)
   141e6:	954e                	add	a0,a0,s3
   141e8:	014c8613          	addi	a2,s9,20
   141ec:	87ce                	mv	a5,s3
   141ee:	4398                	lw	a4,0(a5)
   141f0:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   141f2:	0611                	addi	a2,a2,4
   141f4:	fee62e23          	sw	a4,-4(a2)
   141f8:	fef57be3          	bgeu	a0,a5,141ee <__gdtoa+0x8c>
   141fc:	0505                	addi	a0,a0,1
   141fe:	00198793          	addi	a5,s3,1
   14202:	4611                	li	a2,4
   14204:	00f56563          	bltu	a0,a5,1420e <__gdtoa+0xac>
   14208:	088a                	slli	a7,a7,0x2
   1420a:	00488613          	addi	a2,a7,4
   1420e:	40265d93          	srai	s11,a2,0x2
   14212:	9666                	add	a2,a2,s9
   14214:	a021                	j	1421c <__gdtoa+0xba>
   14216:	1671                	addi	a2,a2,-4
   14218:	4a0d8263          	beqz	s11,146bc <__gdtoa+0x55a>
   1421c:	4a1c                	lw	a5,16(a2)
   1421e:	8c6e                	mv	s8,s11
   14220:	1dfd                	addi	s11,s11,-1
   14222:	dbf5                	beqz	a5,14216 <__gdtoa+0xb4>
   14224:	004d8793          	addi	a5,s11,4
   14228:	078a                	slli	a5,a5,0x2
   1422a:	97e6                	add	a5,a5,s9
   1422c:	43c8                	lw	a0,4(a5)
   1422e:	018ca823          	sw	s8,16(s9)
   14232:	0c16                	slli	s8,s8,0x5
   14234:	40e010ef          	jal	15642 <__hi0bits>
   14238:	40ac0db3          	sub	s11,s8,a0
   1423c:	8566                	mv	a0,s9
   1423e:	1a8010ef          	jal	153e6 <__trailz_D2A>
   14242:	d6aa                	sw	a0,108(sp)
   14244:	4c42                	lw	s8,16(sp)
   14246:	48051f63          	bnez	a0,146e4 <__gdtoa+0x582>
   1424a:	010ca603          	lw	a2,16(s9)
   1424e:	3e060463          	beqz	a2,14636 <__gdtoa+0x4d4>
   14252:	10ec                	addi	a1,sp,108
   14254:	8566                	mv	a0,s9
   14256:	2f7010ef          	jal	15d4c <__b2d>
   1425a:	ac2a                	fsd	fa0,24(sp)
   1425c:	4572                	lw	a0,28(sp)
   1425e:	45e2                	lw	a1,24(sp)
   14260:	01bc08b3          	add	a7,s8,s11
   14264:	00c51613          	slli	a2,a0,0xc
   14268:	8f2e                	mv	t5,a1
   1426a:	8231                	srli	a2,a2,0xc
   1426c:	3ff005b7          	lui	a1,0x3ff00
   14270:	8e4d                	or	a2,a2,a1
   14272:	cc7a                	sw	t5,24(sp)
   14274:	ce32                	sw	a2,28(sp)
   14276:	ea81b707          	fld	fa4,-344(gp) # 1b6b8 <__SDATA_BEGIN__>
   1427a:	27e2                	fld	fa5,24(sp)
   1427c:	eb01b687          	fld	fa3,-336(gp) # 1b6c0 <__SDATA_BEGIN__+0x8>
   14280:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14284:	eb81b787          	fld	fa5,-328(gp) # 1b6c8 <__SDATA_BEGIN__+0x10>
   14288:	fff88593          	addi	a1,a7,-1
   1428c:	852e                	mv	a0,a1
   1428e:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   14292:	d20587d3          	fcvt.d.w	fa5,a1
   14296:	ec01b687          	fld	fa3,-320(gp) # 1b6d0 <__SDATA_BEGIN__+0x18>
   1429a:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   1429e:	0005d563          	bgez	a1,142a8 <__gdtoa+0x146>
   142a2:	4505                	li	a0,1
   142a4:	41150533          	sub	a0,a0,a7
   142a8:	bcb50513          	addi	a0,a0,-1077
   142ac:	00a05863          	blez	a0,142bc <__gdtoa+0x15a>
   142b0:	d20506d3          	fcvt.d.w	fa3,a0
   142b4:	ec81b707          	fld	fa4,-312(gp) # 1b6d8 <__SDATA_BEGIN__+0x20>
   142b8:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   142bc:	d2000753          	fcvt.d.w	fa4,zero
   142c0:	c2079853          	fcvt.w.d	a6,fa5,rtz
   142c4:	a2e79553          	flt.d	a0,fa5,fa4
   142c8:	c909                	beqz	a0,142da <__gdtoa+0x178>
   142ca:	d2080753          	fcvt.d.w	fa4,a6
   142ce:	a2f72553          	feq.d	a0,fa4,fa5
   142d2:	00153513          	seqz	a0,a0
   142d6:	40a80833          	sub	a6,a6,a0
   142da:	01459e93          	slli	t4,a1,0x14
   142de:	40bd8533          	sub	a0,s11,a1
   142e2:	45d9                	li	a1,22
   142e4:	00ce8fb3          	add	t6,t4,a2
   142e8:	fff50e93          	addi	t4,a0,-1
   142ec:	3d05eb63          	bltu	a1,a6,146c2 <__gdtoa+0x560>
   142f0:	65e9                	lui	a1,0x1a
   142f2:	00381613          	slli	a2,a6,0x3
   142f6:	66058593          	addi	a1,a1,1632 # 1a660 <__mprec_tens>
   142fa:	962e                	add	a2,a2,a1
   142fc:	cc7a                	sw	t5,24(sp)
   142fe:	ce7e                	sw	t6,28(sp)
   14300:	221c                	fld	fa5,0(a2)
   14302:	2762                	fld	fa4,24(sp)
   14304:	a2f71653          	flt.d	a2,fa4,fa5
   14308:	58061163          	bnez	a2,1488a <__gdtoa+0x728>
   1430c:	ca82                	sw	zero,84(sp)
   1430e:	cc02                	sw	zero,24(sp)
   14310:	00a04763          	bgtz	a0,1431e <__gdtoa+0x1bc>
   14314:	4605                	li	a2,1
   14316:	40a607b3          	sub	a5,a2,a0
   1431a:	cc3e                	sw	a5,24(sp)
   1431c:	4e81                	li	t4,0
   1431e:	9ec2                	add	t4,t4,a6
   14320:	da42                	sw	a6,52(sp)
   14322:	d802                	sw	zero,48(sp)
   14324:	4625                	li	a2,9
   14326:	3d266a63          	bltu	a2,s2,146fa <__gdtoa+0x598>
   1432a:	4615                	li	a2,5
   1432c:	57264263          	blt	a2,s2,14890 <__gdtoa+0x72e>
   14330:	3fd88893          	addi	a7,a7,1021
   14334:	7f88b793          	sltiu	a5,a7,2040
   14338:	4591                	li	a1,4
   1433a:	ccbe                	sw	a5,88(sp)
   1433c:	18b909e3          	beq	s2,a1,14cce <__gdtoa+0xb6c>
   14340:	18c903e3          	beq	s2,a2,14cc6 <__gdtoa+0xb64>
   14344:	4609                	li	a2,2
   14346:	18c907e3          	beq	s2,a2,14cd4 <__gdtoa+0xb72>
   1434a:	460d                	li	a2,3
   1434c:	c882                	sw	zero,80(sp)
   1434e:	3ac91c63          	bne	s2,a2,14706 <__gdtoa+0x5a4>
   14352:	57d2                	lw	a5,52(sp)
   14354:	5722                	lw	a4,40(sp)
   14356:	97ba                	add	a5,a5,a4
   14358:	cebe                	sw	a5,92(sp)
   1435a:	0785                	addi	a5,a5,1
   1435c:	d63e                	sw	a5,44(sp)
   1435e:	00f05ce3          	blez	a5,14b76 <__gdtoa+0xa14>
   14362:	863e                	mv	a2,a5
   14364:	85be                	mv	a1,a5
   14366:	8522                	mv	a0,s0
   14368:	c4fa                	sw	t5,72(sp)
   1436a:	c6fe                	sw	t6,76(sp)
   1436c:	c0f6                	sw	t4,64(sp)
   1436e:	dc42                	sw	a6,56(sp)
   14370:	d6b2                	sw	a2,108(sp)
   14372:	5bd000ef          	jal	1512e <__rv_alloc_D2A>
   14376:	88aa                	mv	a7,a0
   14378:	32050863          	beqz	a0,146a8 <__gdtoa+0x546>
   1437c:	00ca2783          	lw	a5,12(s4)
   14380:	5862                	lw	a6,56(sp)
   14382:	4e86                	lw	t4,64(sp)
   14384:	17fd                	addi	a5,a5,-1
   14386:	d03e                	sw	a5,32(sp)
   14388:	4f26                	lw	t5,72(sp)
   1438a:	4fb6                	lw	t6,76(sp)
   1438c:	3a078363          	beqz	a5,14732 <__gdtoa+0x5d0>
   14390:	4e07ca63          	bltz	a5,14884 <__gdtoa+0x722>
   14394:	100af313          	andi	t1,s5,256
   14398:	38031863          	bnez	t1,14728 <__gdtoa+0x5c6>
   1439c:	000c4663          	bltz	s8,143a8 <__gdtoa+0x246>
   143a0:	57d2                	lw	a5,52(sp)
   143a2:	4639                	li	a2,14
   143a4:	50f65363          	bge	a2,a5,148aa <__gdtoa+0x748>
   143a8:	47c6                	lw	a5,80(sp)
   143aa:	4c078863          	beqz	a5,1487a <__gdtoa+0x718>
   143ae:	41bd06b3          	sub	a3,s10,s11
   143b2:	004a2603          	lw	a2,4(s4)
   143b6:	00168593          	addi	a1,a3,1
   143ba:	d6ae                	sw	a1,108(sp)
   143bc:	40dc06b3          	sub	a3,s8,a3
   143c0:	7ec6dd63          	bge	a3,a2,14bba <__gdtoa+0xa58>
   143c4:	ffd90693          	addi	a3,s2,-3
   143c8:	9af5                	andi	a3,a3,-3
   143ca:	72068863          	beqz	a3,14afa <__gdtoa+0x998>
   143ce:	40cc06b3          	sub	a3,s8,a2
   143d2:	0685                	addi	a3,a3,1
   143d4:	d6b6                	sw	a3,108(sp)
   143d6:	4605                	li	a2,1
   143d8:	01265863          	bge	a2,s2,143e8 <__gdtoa+0x286>
   143dc:	57b2                	lw	a5,44(sp)
   143de:	00f05563          	blez	a5,143e8 <__gdtoa+0x286>
   143e2:	57b2                	lw	a5,44(sp)
   143e4:	40d7c1e3          	blt	a5,a3,14fe6 <__gdtoa+0xe84>
   143e8:	47e2                	lw	a5,24(sp)
   143ea:	5d42                	lw	s10,48(sp)
   143ec:	9eb6                	add	t4,t4,a3
   143ee:	dc3e                	sw	a5,56(sp)
   143f0:	97b6                	add	a5,a5,a3
   143f2:	cc3e                	sw	a5,24(sp)
   143f4:	4585                	li	a1,1
   143f6:	8522                	mv	a0,s0
   143f8:	ccc6                	sw	a7,88(sp)
   143fa:	c4f6                	sw	t4,72(sp)
   143fc:	c0c2                	sw	a6,64(sp)
   143fe:	322010ef          	jal	15720 <__i2b>
   14402:	4806                	lw	a6,64(sp)
   14404:	4ea6                	lw	t4,72(sp)
   14406:	48e6                	lw	a7,88(sp)
   14408:	8c2a                	mv	s8,a0
   1440a:	28050f63          	beqz	a0,146a8 <__gdtoa+0x546>
   1440e:	57e2                	lw	a5,56(sp)
   14410:	c385                	beqz	a5,14430 <__gdtoa+0x2ce>
   14412:	01d05f63          	blez	t4,14430 <__gdtoa+0x2ce>
   14416:	86be                	mv	a3,a5
   14418:	00fed363          	bge	t4,a5,1441e <__gdtoa+0x2bc>
   1441c:	86f6                	mv	a3,t4
   1441e:	47e2                	lw	a5,24(sp)
   14420:	d6b6                	sw	a3,108(sp)
   14422:	40de8eb3          	sub	t4,t4,a3
   14426:	8f95                	sub	a5,a5,a3
   14428:	cc3e                	sw	a5,24(sp)
   1442a:	57e2                	lw	a5,56(sp)
   1442c:	8f95                	sub	a5,a5,a3
   1442e:	dc3e                	sw	a5,56(sp)
   14430:	57c2                	lw	a5,48(sp)
   14432:	c39d                	beqz	a5,14458 <__gdtoa+0x2f6>
   14434:	47c6                	lw	a5,80(sp)
   14436:	c399                	beqz	a5,1443c <__gdtoa+0x2da>
   14438:	7e0d1863          	bnez	s10,14c28 <__gdtoa+0xac6>
   1443c:	5642                	lw	a2,48(sp)
   1443e:	85e6                	mv	a1,s9
   14440:	8522                	mv	a0,s0
   14442:	ccc6                	sw	a7,88(sp)
   14444:	c4f6                	sw	t4,72(sp)
   14446:	c0c2                	sw	a6,64(sp)
   14448:	4d6010ef          	jal	1591e <__pow5mult>
   1444c:	4806                	lw	a6,64(sp)
   1444e:	4ea6                	lw	t4,72(sp)
   14450:	48e6                	lw	a7,88(sp)
   14452:	8caa                	mv	s9,a0
   14454:	24050a63          	beqz	a0,146a8 <__gdtoa+0x546>
   14458:	4585                	li	a1,1
   1445a:	8522                	mv	a0,s0
   1445c:	c4c6                	sw	a7,72(sp)
   1445e:	c0f6                	sw	t4,64(sp)
   14460:	d842                	sw	a6,48(sp)
   14462:	2be010ef          	jal	15720 <__i2b>
   14466:	8d2a                	mv	s10,a0
   14468:	24050063          	beqz	a0,146a8 <__gdtoa+0x546>
   1446c:	5842                	lw	a6,48(sp)
   1446e:	4e86                	lw	t4,64(sp)
   14470:	48a6                	lw	a7,72(sp)
   14472:	70081663          	bnez	a6,14b7e <__gdtoa+0xa1c>
   14476:	4685                	li	a3,1
   14478:	5126d263          	bge	a3,s2,1497c <__gdtoa+0x81a>
   1447c:	4a7d                	li	s4,31
   1447e:	47e2                	lw	a5,24(sp)
   14480:	41da0a33          	sub	s4,s4,t4
   14484:	1a71                	addi	s4,s4,-4
   14486:	01fa7a13          	andi	s4,s4,31
   1448a:	00fa0633          	add	a2,s4,a5
   1448e:	d6d2                	sw	s4,108(sp)
   14490:	87d2                	mv	a5,s4
   14492:	58c04d63          	bgtz	a2,14a2c <__gdtoa+0x8ca>
   14496:	00fe8633          	add	a2,t4,a5
   1449a:	1ec04c63          	bgtz	a2,14692 <__gdtoa+0x530>
   1449e:	47d6                	lw	a5,84(sp)
   144a0:	5a079563          	bnez	a5,14a4a <__gdtoa+0x8e8>
   144a4:	57b2                	lw	a5,44(sp)
   144a6:	66f05a63          	blez	a5,14b1a <__gdtoa+0x9b8>
   144aa:	47c6                	lw	a5,80(sp)
   144ac:	5c078d63          	beqz	a5,14a86 <__gdtoa+0x924>
   144b0:	57e2                	lw	a5,56(sp)
   144b2:	00fa0633          	add	a2,s4,a5
   144b6:	7ec04763          	bgtz	a2,14ca4 <__gdtoa+0xb42>
   144ba:	8a62                	mv	s4,s8
   144bc:	02081ce3          	bnez	a6,14cf4 <__gdtoa+0xb92>
   144c0:	5b32                	lw	s6,44(sp)
   144c2:	8dc6                	mv	s11,a7
   144c4:	4685                	li	a3,1
   144c6:	d446                	sw	a7,40(sp)
   144c8:	cc5e                	sw	s7,24(sp)
   144ca:	d626                	sw	s1,44(sp)
   144cc:	a885                	j	1453c <__gdtoa+0x3da>
   144ce:	8522                	mv	a0,s0
   144d0:	7bd000ef          	jal	1548c <_Bfree>
   144d4:	100ac3e3          	bltz	s5,14dda <__gdtoa+0xc78>
   144d8:	01596ab3          	or	s5,s2,s5
   144dc:	000a9763          	bnez	s5,144ea <__gdtoa+0x388>
   144e0:	0009a783          	lw	a5,0(s3)
   144e4:	8b85                	andi	a5,a5,1
   144e6:	0e078ae3          	beqz	a5,14dda <__gdtoa+0xc78>
   144ea:	5782                	lw	a5,32(sp)
   144ec:	4709                	li	a4,2
   144ee:	26e798e3          	bne	a5,a4,14f5e <__gdtoa+0xdfc>
   144f2:	017d8023          	sb	s7,0(s11)
   144f6:	57b6                	lw	a5,108(sp)
   144f8:	0d85                	addi	s11,s11,1
   144fa:	1efb0fe3          	beq	s6,a5,14ef8 <__gdtoa+0xd96>
   144fe:	85e6                	mv	a1,s9
   14500:	4681                	li	a3,0
   14502:	4629                	li	a2,10
   14504:	8522                	mv	a0,s0
   14506:	799000ef          	jal	1549e <__multadd>
   1450a:	8caa                	mv	s9,a0
   1450c:	18050e63          	beqz	a0,146a8 <__gdtoa+0x546>
   14510:	4681                	li	a3,0
   14512:	4629                	li	a2,10
   14514:	85e2                	mv	a1,s8
   14516:	8522                	mv	a0,s0
   14518:	494c0c63          	beq	s8,s4,149b0 <__gdtoa+0x84e>
   1451c:	783000ef          	jal	1549e <__multadd>
   14520:	8c2a                	mv	s8,a0
   14522:	18050363          	beqz	a0,146a8 <__gdtoa+0x546>
   14526:	85d2                	mv	a1,s4
   14528:	4681                	li	a3,0
   1452a:	4629                	li	a2,10
   1452c:	8522                	mv	a0,s0
   1452e:	771000ef          	jal	1549e <__multadd>
   14532:	8a2a                	mv	s4,a0
   14534:	16050a63          	beqz	a0,146a8 <__gdtoa+0x546>
   14538:	56b6                	lw	a3,108(sp)
   1453a:	0685                	addi	a3,a3,1
   1453c:	85ea                	mv	a1,s10
   1453e:	8566                	mv	a0,s9
   14540:	d6b6                	sw	a3,108(sp)
   14542:	4ab000ef          	jal	151ec <__quorem_D2A>
   14546:	84aa                	mv	s1,a0
   14548:	85e2                	mv	a1,s8
   1454a:	8566                	mv	a0,s9
   1454c:	5b4010ef          	jal	15b00 <__mcmp>
   14550:	85ea                	mv	a1,s10
   14552:	8aaa                	mv	s5,a0
   14554:	8652                	mv	a2,s4
   14556:	8522                	mv	a0,s0
   14558:	5e4010ef          	jal	15b3c <__mdiff>
   1455c:	03048b93          	addi	s7,s1,48
   14560:	85aa                	mv	a1,a0
   14562:	14050363          	beqz	a0,146a8 <__gdtoa+0x546>
   14566:	455c                	lw	a5,12(a0)
   14568:	f3bd                	bnez	a5,144ce <__gdtoa+0x36c>
   1456a:	c82a                	sw	a0,16(sp)
   1456c:	8566                	mv	a0,s9
   1456e:	592010ef          	jal	15b00 <__mcmp>
   14572:	45c2                	lw	a1,16(sp)
   14574:	86aa                	mv	a3,a0
   14576:	8522                	mv	a0,s0
   14578:	c836                	sw	a3,16(sp)
   1457a:	713000ef          	jal	1548c <_Bfree>
   1457e:	46c2                	lw	a3,16(sp)
   14580:	00d96733          	or	a4,s2,a3
   14584:	340711e3          	bnez	a4,150c6 <__gdtoa+0xf64>
   14588:	0009a783          	lw	a5,0(s3)
   1458c:	8b85                	andi	a5,a5,1
   1458e:	42079863          	bnez	a5,149be <__gdtoa+0x85c>
   14592:	5782                	lw	a5,32(sp)
   14594:	280787e3          	beqz	a5,15022 <__gdtoa+0xec0>
   14598:	f5504de3          	bgtz	s5,144f2 <__gdtoa+0x390>
   1459c:	010ca603          	lw	a2,16(s9)
   145a0:	4685                	li	a3,1
   145a2:	835e                	mv	t1,s7
   145a4:	58a2                	lw	a7,40(sp)
   145a6:	4be2                	lw	s7,24(sp)
   145a8:	54b2                	lw	s1,44(sp)
   145aa:	8b3a                	mv	s6,a4
   145ac:	2ec6dae3          	bge	a3,a2,150a0 <__gdtoa+0xf3e>
   145b0:	5782                	lw	a5,32(sp)
   145b2:	4689                	li	a3,2
   145b4:	8a9a                	mv	s5,t1
   145b6:	8b46                	mv	s6,a7
   145b8:	02d79063          	bne	a5,a3,145d8 <__gdtoa+0x476>
   145bc:	2cb0006f          	j	15086 <__gdtoa+0xf24>
   145c0:	6df000ef          	jal	1549e <__multadd>
   145c4:	85ea                	mv	a1,s10
   145c6:	8caa                	mv	s9,a0
   145c8:	0e050063          	beqz	a0,146a8 <__gdtoa+0x546>
   145cc:	421000ef          	jal	151ec <__quorem_D2A>
   145d0:	03050a93          	addi	s5,a0,48
   145d4:	8dca                	mv	s11,s2
   145d6:	8a4e                	mv	s4,s3
   145d8:	85d2                	mv	a1,s4
   145da:	856a                	mv	a0,s10
   145dc:	524010ef          	jal	15b00 <__mcmp>
   145e0:	87aa                	mv	a5,a0
   145e2:	4681                	li	a3,0
   145e4:	4629                	li	a2,10
   145e6:	85d2                	mv	a1,s4
   145e8:	8522                	mv	a0,s0
   145ea:	001d8913          	addi	s2,s11,1
   145ee:	28f052e3          	blez	a5,15072 <__gdtoa+0xf10>
   145f2:	ff590fa3          	sb	s5,-1(s2)
   145f6:	6a9000ef          	jal	1549e <__multadd>
   145fa:	89aa                	mv	s3,a0
   145fc:	4681                	li	a3,0
   145fe:	4629                	li	a2,10
   14600:	85e6                	mv	a1,s9
   14602:	8522                	mv	a0,s0
   14604:	0a098263          	beqz	s3,146a8 <__gdtoa+0x546>
   14608:	fb4c1ce3          	bne	s8,s4,145c0 <__gdtoa+0x45e>
   1460c:	8c4e                	mv	s8,s3
   1460e:	bf4d                	j	145c0 <__gdtoa+0x45e>
   14610:	4791                	li	a5,4
   14612:	0afe1363          	bne	t3,a5,146b8 <__gdtoa+0x556>
   14616:	4632                	lw	a2,12(sp)
   14618:	4b4a                	lw	s6,144(sp)
   1461a:	50ba                	lw	ra,172(sp)
   1461c:	549a                	lw	s1,164(sp)
   1461e:	4ada                	lw	s5,148(sp)
   14620:	4bba                	lw	s7,140(sp)
   14622:	77e1                	lui	a5,0xffff8
   14624:	00f8a023          	sw	a5,0(a7)
   14628:	65e9                	lui	a1,0x1a
   1462a:	468d                	li	a3,3
   1462c:	18858593          	addi	a1,a1,392 # 1a188 <__clzsi2+0x112>
   14630:	614d                	addi	sp,sp,176
   14632:	33b0006f          	j	1516c <__nrv_alloc_D2A>
   14636:	85e6                	mv	a1,s9
   14638:	8522                	mv	a0,s0
   1463a:	653000ef          	jal	1548c <_Bfree>
   1463e:	590a                	lw	s2,160(sp)
   14640:	49fa                	lw	s3,156(sp)
   14642:	4a6a                	lw	s4,152(sp)
   14644:	4c2a                	lw	s8,136(sp)
   14646:	4c9a                	lw	s9,132(sp)
   14648:	4d0a                	lw	s10,128(sp)
   1464a:	5df6                	lw	s11,124(sp)
   1464c:	4632                	lw	a2,12(sp)
   1464e:	4785                	li	a5,1
   14650:	65e9                	lui	a1,0x1a
   14652:	8522                	mv	a0,s0
   14654:	c09c                	sw	a5,0(s1)
   14656:	4685                	li	a3,1
   14658:	17858593          	addi	a1,a1,376 # 1a178 <__clzsi2+0x102>
   1465c:	311000ef          	jal	1516c <__nrv_alloc_D2A>
   14660:	542a                	lw	s0,168(sp)
   14662:	88aa                	mv	a7,a0
   14664:	50ba                	lw	ra,172(sp)
   14666:	4b4a                	lw	s6,144(sp)
   14668:	549a                	lw	s1,164(sp)
   1466a:	4ada                	lw	s5,148(sp)
   1466c:	4bba                	lw	s7,140(sp)
   1466e:	8546                	mv	a0,a7
   14670:	614d                	addi	sp,sp,176
   14672:	8082                	ret
   14674:	4632                	lw	a2,12(sp)
   14676:	50ba                	lw	ra,172(sp)
   14678:	549a                	lw	s1,164(sp)
   1467a:	4ada                	lw	s5,148(sp)
   1467c:	4bba                	lw	s7,140(sp)
   1467e:	77e1                	lui	a5,0xffff8
   14680:	00f8a023          	sw	a5,0(a7)
   14684:	65e9                	lui	a1,0x1a
   14686:	46a1                	li	a3,8
   14688:	17c58593          	addi	a1,a1,380 # 1a17c <__clzsi2+0x106>
   1468c:	614d                	addi	sp,sp,176
   1468e:	2df0006f          	j	1516c <__nrv_alloc_D2A>
   14692:	85ea                	mv	a1,s10
   14694:	8522                	mv	a0,s0
   14696:	cc46                	sw	a7,24(sp)
   14698:	c842                	sw	a6,16(sp)
   1469a:	358010ef          	jal	159f2 <__lshift>
   1469e:	4842                	lw	a6,16(sp)
   146a0:	48e2                	lw	a7,24(sp)
   146a2:	8d2a                	mv	s10,a0
   146a4:	de051de3          	bnez	a0,1449e <__gdtoa+0x33c>
   146a8:	542a                	lw	s0,168(sp)
   146aa:	590a                	lw	s2,160(sp)
   146ac:	49fa                	lw	s3,156(sp)
   146ae:	4a6a                	lw	s4,152(sp)
   146b0:	4c2a                	lw	s8,136(sp)
   146b2:	4c9a                	lw	s9,132(sp)
   146b4:	4d0a                	lw	s10,128(sp)
   146b6:	5df6                	lw	s11,124(sp)
   146b8:	4881                	li	a7,0
   146ba:	b76d                	j	14664 <__gdtoa+0x502>
   146bc:	000ca823          	sw	zero,16(s9)
   146c0:	beb5                	j	1423c <__gdtoa+0xda>
   146c2:	4785                	li	a5,1
   146c4:	cabe                	sw	a5,84(sp)
   146c6:	cc02                	sw	zero,24(sp)
   146c8:	1a0ec163          	bltz	t4,1486a <__gdtoa+0x708>
   146cc:	c40859e3          	bgez	a6,1431e <__gdtoa+0x1bc>
   146d0:	47e2                	lw	a5,24(sp)
   146d2:	da42                	sw	a6,52(sp)
   146d4:	410787b3          	sub	a5,a5,a6
   146d8:	cc3e                	sw	a5,24(sp)
   146da:	410007b3          	neg	a5,a6
   146de:	d83e                	sw	a5,48(sp)
   146e0:	4801                	li	a6,0
   146e2:	b189                	j	14324 <__gdtoa+0x1c2>
   146e4:	85aa                	mv	a1,a0
   146e6:	8566                	mv	a0,s9
   146e8:	45b000ef          	jal	15342 <__rshift_D2A>
   146ec:	5636                	lw	a2,108(sp)
   146ee:	47c2                	lw	a5,16(sp)
   146f0:	40cd8db3          	sub	s11,s11,a2
   146f4:	00f60c33          	add	s8,a2,a5
   146f8:	be89                	j	1424a <__gdtoa+0xe8>
   146fa:	3fd88893          	addi	a7,a7,1021
   146fe:	7f88b793          	sltiu	a5,a7,2040
   14702:	ccbe                	sw	a5,88(sp)
   14704:	4901                	li	s2,0
   14706:	ed01b707          	fld	fa4,-304(gp) # 1b6e0 <__SDATA_BEGIN__+0x28>
   1470a:	d20d07d3          	fcvt.d.w	fa5,s10
   1470e:	4785                	li	a5,1
   14710:	c8be                	sw	a5,80(sp)
   14712:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14716:	57fd                	li	a5,-1
   14718:	d402                	sw	zero,40(sp)
   1471a:	cebe                	sw	a5,92(sp)
   1471c:	d63e                	sw	a5,44(sp)
   1471e:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   14722:	058d                	addi	a1,a1,3
   14724:	862e                	mv	a2,a1
   14726:	b181                	j	14366 <__gdtoa+0x204>
   14728:	5782                	lw	a5,32(sp)
   1472a:	460d                	li	a2,3
   1472c:	40f607b3          	sub	a5,a2,a5
   14730:	d03e                	sw	a5,32(sp)
   14732:	57b2                	lw	a5,44(sp)
   14734:	4639                	li	a2,14
   14736:	c6f663e3          	bltu	a2,a5,1439c <__gdtoa+0x23a>
   1473a:	4766                	lw	a4,88(sp)
   1473c:	c60700e3          	beqz	a4,1439c <__gdtoa+0x23a>
   14740:	5752                	lw	a4,52(sp)
   14742:	5682                	lw	a3,32(sp)
   14744:	00d76633          	or	a2,a4,a3
   14748:	c4061ae3          	bnez	a2,1439c <__gdtoa+0x23a>
   1474c:	4756                	lw	a4,84(sp)
   1474e:	d682                	sw	zero,108(sp)
   14750:	d07a                	sw	t5,32(sp)
   14752:	d27e                	sw	t6,36(sp)
   14754:	cb11                	beqz	a4,14768 <__gdtoa+0x606>
   14756:	dc7a                	sw	t5,56(sp)
   14758:	de7e                	sw	t6,60(sp)
   1475a:	ed81b787          	fld	fa5,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   1475e:	3762                	fld	fa4,56(sp)
   14760:	a2f71653          	flt.d	a2,fa4,fa5
   14764:	7a061163          	bnez	a2,14f06 <__gdtoa+0xda4>
   14768:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   1476c:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14770:	3682                	fld	fa3,32(sp)
   14772:	57b2                	lw	a5,44(sp)
   14774:	fcc00637          	lui	a2,0xfcc00
   14778:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   1477c:	bc3e                	fsd	fa5,56(sp)
   1477e:	5562                	lw	a0,56(sp)
   14780:	55f2                	lw	a1,60(sp)
   14782:	832a                	mv	t1,a0
   14784:	962e                	add	a2,a2,a1
   14786:	5c078063          	beqz	a5,14d46 <__gdtoa+0xbe4>
   1478a:	3782                	fld	fa5,32(sp)
   1478c:	5532                	lw	a0,44(sp)
   1478e:	4381                	li	t2,0
   14790:	bc3e                	fsd	fa5,56(sp)
   14792:	65e9                	lui	a1,0x1a
   14794:	fff50793          	addi	a5,a0,-1
   14798:	078e                	slli	a5,a5,0x3
   1479a:	66058293          	addi	t0,a1,1632 # 1a660 <__mprec_tens>
   1479e:	005786b3          	add	a3,a5,t0
   147a2:	229c                	fld	fa5,0(a3)
   147a4:	46c6                	lw	a3,80(sp)
   147a6:	871a                	mv	a4,t1
   147a8:	87b2                	mv	a5,a2
   147aa:	6c068163          	beqz	a3,14e6c <__gdtoa+0xd0a>
   147ae:	3762                	fld	fa4,56(sp)
   147b0:	36e2                	fld	fa3,56(sp)
   147b2:	c2071353          	fcvt.w.d	t1,fa4,rtz
   147b6:	f081b707          	fld	fa4,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   147ba:	dc3a                	sw	a4,56(sp)
   147bc:	de3e                	sw	a5,60(sp)
   147be:	1af77753          	fdiv.d	fa4,fa4,fa5
   147c2:	d20307d3          	fcvt.d.w	fa5,t1
   147c6:	03030313          	addi	t1,t1,48
   147ca:	00688023          	sb	t1,0(a7)
   147ce:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   147d2:	36e2                	fld	fa3,56(sp)
   147d4:	00188613          	addi	a2,a7,1
   147d8:	0ad77753          	fsub.d	fa4,fa4,fa3
   147dc:	a2e79353          	flt.d	t1,fa5,fa4
   147e0:	7c031e63          	bnez	t1,14fbc <__gdtoa+0xe5a>
   147e4:	ed81b587          	fld	fa1,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   147e8:	ee01b607          	fld	fa2,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   147ec:	a80d                	j	1481e <__gdtoa+0x6bc>
   147ee:	57b6                	lw	a5,108(sp)
   147f0:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe45a5>
   147f2:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffdc5a5>
   147f4:	d6be                	sw	a5,108(sp)
   147f6:	7ea7d163          	bge	a5,a0,14fd8 <__gdtoa+0xe76>
   147fa:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   147fe:	12c77753          	fmul.d	fa4,fa4,fa2
   14802:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14806:	d20786d3          	fcvt.d.w	fa3,a5
   1480a:	03078793          	addi	a5,a5,48
   1480e:	fef60fa3          	sb	a5,-1(a2)
   14812:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   14816:	a2e797d3          	flt.d	a5,fa5,fa4
   1481a:	7a079163          	bnez	a5,14fbc <__gdtoa+0xe5a>
   1481e:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   14822:	a2e697d3          	flt.d	a5,fa3,fa4
   14826:	d7e1                	beqz	a5,147ee <__gdtoa+0x68c>
   14828:	fff64683          	lbu	a3,-1(a2)
   1482c:	00138513          	addi	a0,t2,1
   14830:	03900593          	li	a1,57
   14834:	a031                	j	14840 <__gdtoa+0x6de>
   14836:	62f88763          	beq	a7,a5,14e64 <__gdtoa+0xd02>
   1483a:	fff7c683          	lbu	a3,-1(a5)
   1483e:	863e                	mv	a2,a5
   14840:	fff60793          	addi	a5,a2,-1
   14844:	feb689e3          	beq	a3,a1,14836 <__gdtoa+0x6d4>
   14848:	0685                	addi	a3,a3,1
   1484a:	0ff6f693          	zext.b	a3,a3
   1484e:	00d78023          	sb	a3,0(a5)
   14852:	892a                	mv	s2,a0
   14854:	02000b13          	li	s6,32
   14858:	a0e5                	j	14940 <__gdtoa+0x7de>
   1485a:	542a                	lw	s0,168(sp)
   1485c:	590a                	lw	s2,160(sp)
   1485e:	49fa                	lw	s3,156(sp)
   14860:	4a6a                	lw	s4,152(sp)
   14862:	4c9a                	lw	s9,132(sp)
   14864:	4d0a                	lw	s10,128(sp)
   14866:	4881                	li	a7,0
   14868:	bbf5                	j	14664 <__gdtoa+0x502>
   1486a:	4605                	li	a2,1
   1486c:	40a607b3          	sub	a5,a2,a0
   14870:	cc3e                	sw	a5,24(sp)
   14872:	4e81                	li	t4,0
   14874:	e4084ee3          	bltz	a6,146d0 <__gdtoa+0x56e>
   14878:	b45d                	j	1431e <__gdtoa+0x1bc>
   1487a:	47e2                	lw	a5,24(sp)
   1487c:	5d42                	lw	s10,48(sp)
   1487e:	4c01                	li	s8,0
   14880:	dc3e                	sw	a5,56(sp)
   14882:	b671                	j	1440e <__gdtoa+0x2ac>
   14884:	4789                	li	a5,2
   14886:	d03e                	sw	a5,32(sp)
   14888:	b631                	j	14394 <__gdtoa+0x232>
   1488a:	187d                	addi	a6,a6,-1
   1488c:	ca82                	sw	zero,84(sp)
   1488e:	bd25                	j	146c6 <__gdtoa+0x564>
   14890:	1971                	addi	s2,s2,-4
   14892:	4591                	li	a1,4
   14894:	10b90263          	beq	s2,a1,14998 <__gdtoa+0x836>
   14898:	42c90263          	beq	s2,a2,14cbc <__gdtoa+0xb5a>
   1489c:	4609                	li	a2,2
   1489e:	cc82                	sw	zero,88(sp)
   148a0:	c882                	sw	zero,80(sp)
   148a2:	0ec90e63          	beq	s2,a2,1499e <__gdtoa+0x83c>
   148a6:	490d                	li	s2,3
   148a8:	b46d                	j	14352 <__gdtoa+0x1f0>
   148aa:	66e9                	lui	a3,0x1a
   148ac:	078e                	slli	a5,a5,0x3
   148ae:	66068693          	addi	a3,a3,1632 # 1a660 <__mprec_tens>
   148b2:	97b6                	add	a5,a5,a3
   148b4:	2398                	fld	fa4,0(a5)
   148b6:	57a2                	lw	a5,40(sp)
   148b8:	3207c263          	bltz	a5,14bdc <__gdtoa+0xa7a>
   148bc:	c87a                	sw	t5,16(sp)
   148be:	ca7e                	sw	t6,20(sp)
   148c0:	27c2                	fld	fa5,16(sp)
   148c2:	4785                	li	a5,1
   148c4:	d6be                	sw	a5,108(sp)
   148c6:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   148ca:	57d2                	lw	a5,52(sp)
   148cc:	26c2                	fld	fa3,16(sp)
   148ce:	00188613          	addi	a2,a7,1
   148d2:	00178513          	addi	a0,a5,1
   148d6:	892a                	mv	s2,a0
   148d8:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   148dc:	d20787d3          	fcvt.d.w	fa5,a5
   148e0:	03078693          	addi	a3,a5,48
   148e4:	00d88023          	sb	a3,0(a7)
   148e8:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   148ec:	d20006d3          	fcvt.d.w	fa3,zero
   148f0:	a2d7a6d3          	feq.d	a3,fa5,fa3
   148f4:	e6b1                	bnez	a3,14940 <__gdtoa+0x7de>
   148f6:	ee01b587          	fld	fa1,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   148fa:	22d68653          	fmv.d	fa2,fa3
   148fe:	55b2                	lw	a1,44(sp)
   14900:	a025                	j	14928 <__gdtoa+0x7c6>
   14902:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   14906:	d6b6                	sw	a3,108(sp)
   14908:	0605                	addi	a2,a2,1
   1490a:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   1490e:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   14912:	d20786d3          	fcvt.d.w	fa3,a5
   14916:	03078713          	addi	a4,a5,48
   1491a:	fee60fa3          	sb	a4,-1(a2)
   1491e:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   14922:	a2c7a753          	feq.d	a4,fa5,fa2
   14926:	ef09                	bnez	a4,14940 <__gdtoa+0x7de>
   14928:	5736                	lw	a4,108(sp)
   1492a:	00170693          	addi	a3,a4,1
   1492e:	fcb71ae3          	bne	a4,a1,14902 <__gdtoa+0x7a0>
   14932:	5702                	lw	a4,32(sp)
   14934:	4e070e63          	beqz	a4,14e30 <__gdtoa+0xcce>
   14938:	4785                	li	a5,1
   1493a:	4b41                	li	s6,16
   1493c:	60f70263          	beq	a4,a5,14f40 <__gdtoa+0xdde>
   14940:	85e6                	mv	a1,s9
   14942:	8522                	mv	a0,s0
   14944:	d446                	sw	a7,40(sp)
   14946:	c832                	sw	a2,16(sp)
   14948:	345000ef          	jal	1548c <_Bfree>
   1494c:	4642                	lw	a2,16(sp)
   1494e:	47b2                	lw	a5,12(sp)
   14950:	58a2                	lw	a7,40(sp)
   14952:	00060023          	sb	zero,0(a2)
   14956:	0124a023          	sw	s2,0(s1)
   1495a:	c391                	beqz	a5,1495e <__gdtoa+0x7fc>
   1495c:	c390                	sw	a2,0(a5)
   1495e:	000ba783          	lw	a5,0(s7)
   14962:	542a                	lw	s0,168(sp)
   14964:	590a                	lw	s2,160(sp)
   14966:	0167e7b3          	or	a5,a5,s6
   1496a:	49fa                	lw	s3,156(sp)
   1496c:	4a6a                	lw	s4,152(sp)
   1496e:	4c2a                	lw	s8,136(sp)
   14970:	4c9a                	lw	s9,132(sp)
   14972:	4d0a                	lw	s10,128(sp)
   14974:	5df6                	lw	s11,124(sp)
   14976:	00fba023          	sw	a5,0(s7)
   1497a:	b1ed                	j	14664 <__gdtoa+0x502>
   1497c:	b0dd90e3          	bne	s11,a3,1447c <__gdtoa+0x31a>
   14980:	004a2783          	lw	a5,4(s4)
   14984:	4742                	lw	a4,16(sp)
   14986:	0785                	addi	a5,a5,1
   14988:	aee7dae3          	bge	a5,a4,1447c <__gdtoa+0x31a>
   1498c:	47e2                	lw	a5,24(sp)
   1498e:	0e85                	addi	t4,t4,1
   14990:	4805                	li	a6,1
   14992:	0785                	addi	a5,a5,1
   14994:	cc3e                	sw	a5,24(sp)
   14996:	b4dd                	j	1447c <__gdtoa+0x31a>
   14998:	4785                	li	a5,1
   1499a:	cc82                	sw	zero,88(sp)
   1499c:	c8be                	sw	a5,80(sp)
   1499e:	55a2                	lw	a1,40(sp)
   149a0:	00b04363          	bgtz	a1,149a6 <__gdtoa+0x844>
   149a4:	4585                	li	a1,1
   149a6:	862e                	mv	a2,a1
   149a8:	ceae                	sw	a1,92(sp)
   149aa:	d62e                	sw	a1,44(sp)
   149ac:	d42e                	sw	a1,40(sp)
   149ae:	ba65                	j	14366 <__gdtoa+0x204>
   149b0:	2ef000ef          	jal	1549e <__multadd>
   149b4:	8c2a                	mv	s8,a0
   149b6:	ce0509e3          	beqz	a0,146a8 <__gdtoa+0x546>
   149ba:	8a2a                	mv	s4,a0
   149bc:	beb5                	j	14538 <__gdtoa+0x3d6>
   149be:	b20adae3          	bgez	s5,144f2 <__gdtoa+0x390>
   149c2:	5782                	lw	a5,32(sp)
   149c4:	835e                	mv	t1,s7
   149c6:	58a2                	lw	a7,40(sp)
   149c8:	4be2                	lw	s7,24(sp)
   149ca:	54b2                	lw	s1,44(sp)
   149cc:	8b3a                	mv	s6,a4
   149ce:	6c079463          	bnez	a5,15096 <__gdtoa+0xf34>
   149d2:	010ca603          	lw	a2,16(s9)
   149d6:	4685                	li	a3,1
   149d8:	4b41                	li	s6,16
   149da:	001d8913          	addi	s2,s11,1
   149de:	68c6d463          	bge	a3,a2,15066 <__gdtoa+0xf04>
   149e2:	89e2                	mv	s3,s8
   149e4:	864a                	mv	a2,s2
   149e6:	006d8023          	sb	t1,0(s11)
   149ea:	8c52                	mv	s8,s4
   149ec:	85ea                	mv	a1,s10
   149ee:	8522                	mv	a0,s0
   149f0:	d446                	sw	a7,40(sp)
   149f2:	c832                	sw	a2,16(sp)
   149f4:	299000ef          	jal	1548c <_Bfree>
   149f8:	57d2                	lw	a5,52(sp)
   149fa:	4642                	lw	a2,16(sp)
   149fc:	58a2                	lw	a7,40(sp)
   149fe:	00178913          	addi	s2,a5,1
   14a02:	f20c0fe3          	beqz	s8,14940 <__gdtoa+0x7de>
   14a06:	00098a63          	beqz	s3,14a1a <__gdtoa+0x8b8>
   14a0a:	01898863          	beq	s3,s8,14a1a <__gdtoa+0x8b8>
   14a0e:	85ce                	mv	a1,s3
   14a10:	8522                	mv	a0,s0
   14a12:	27b000ef          	jal	1548c <_Bfree>
   14a16:	58a2                	lw	a7,40(sp)
   14a18:	4642                	lw	a2,16(sp)
   14a1a:	85e2                	mv	a1,s8
   14a1c:	8522                	mv	a0,s0
   14a1e:	d446                	sw	a7,40(sp)
   14a20:	c832                	sw	a2,16(sp)
   14a22:	26b000ef          	jal	1548c <_Bfree>
   14a26:	58a2                	lw	a7,40(sp)
   14a28:	4642                	lw	a2,16(sp)
   14a2a:	bf19                	j	14940 <__gdtoa+0x7de>
   14a2c:	85e6                	mv	a1,s9
   14a2e:	8522                	mv	a0,s0
   14a30:	d846                	sw	a7,48(sp)
   14a32:	cc76                	sw	t4,24(sp)
   14a34:	c842                	sw	a6,16(sp)
   14a36:	7bd000ef          	jal	159f2 <__lshift>
   14a3a:	8caa                	mv	s9,a0
   14a3c:	c60506e3          	beqz	a0,146a8 <__gdtoa+0x546>
   14a40:	57b6                	lw	a5,108(sp)
   14a42:	58c2                	lw	a7,48(sp)
   14a44:	4ee2                	lw	t4,24(sp)
   14a46:	4842                	lw	a6,16(sp)
   14a48:	b4b9                	j	14496 <__gdtoa+0x334>
   14a4a:	85ea                	mv	a1,s10
   14a4c:	8566                	mv	a0,s9
   14a4e:	cc46                	sw	a7,24(sp)
   14a50:	c842                	sw	a6,16(sp)
   14a52:	0ae010ef          	jal	15b00 <__mcmp>
   14a56:	4842                	lw	a6,16(sp)
   14a58:	48e2                	lw	a7,24(sp)
   14a5a:	a40555e3          	bgez	a0,144a4 <__gdtoa+0x342>
   14a5e:	57d2                	lw	a5,52(sp)
   14a60:	85e6                	mv	a1,s9
   14a62:	4681                	li	a3,0
   14a64:	17fd                	addi	a5,a5,-1
   14a66:	4629                	li	a2,10
   14a68:	8522                	mv	a0,s0
   14a6a:	da3e                	sw	a5,52(sp)
   14a6c:	233000ef          	jal	1549e <__multadd>
   14a70:	8caa                	mv	s9,a0
   14a72:	c2050be3          	beqz	a0,146a8 <__gdtoa+0x546>
   14a76:	47c6                	lw	a5,80(sp)
   14a78:	48e2                	lw	a7,24(sp)
   14a7a:	50079a63          	bnez	a5,14f8e <__gdtoa+0xe2c>
   14a7e:	47f6                	lw	a5,92(sp)
   14a80:	14f05863          	blez	a5,14bd0 <__gdtoa+0xa6e>
   14a84:	d63e                	sw	a5,44(sp)
   14a86:	5932                	lw	s2,44(sp)
   14a88:	8dc6                	mv	s11,a7
   14a8a:	4685                	li	a3,1
   14a8c:	89c6                	mv	s3,a7
   14a8e:	a801                	j	14a9e <__gdtoa+0x93c>
   14a90:	20f000ef          	jal	1549e <__multadd>
   14a94:	8caa                	mv	s9,a0
   14a96:	c00509e3          	beqz	a0,146a8 <__gdtoa+0x546>
   14a9a:	56b6                	lw	a3,108(sp)
   14a9c:	0685                	addi	a3,a3,1
   14a9e:	85ea                	mv	a1,s10
   14aa0:	8566                	mv	a0,s9
   14aa2:	d6b6                	sw	a3,108(sp)
   14aa4:	27a1                	jal	151ec <__quorem_D2A>
   14aa6:	03050313          	addi	t1,a0,48
   14aaa:	006d8023          	sb	t1,0(s11)
   14aae:	57b6                	lw	a5,108(sp)
   14ab0:	4681                	li	a3,0
   14ab2:	4629                	li	a2,10
   14ab4:	85e6                	mv	a1,s9
   14ab6:	8522                	mv	a0,s0
   14ab8:	0d85                	addi	s11,s11,1
   14aba:	fd27cbe3          	blt	a5,s2,14a90 <__gdtoa+0x92e>
   14abe:	88ce                	mv	a7,s3
   14ac0:	4981                	li	s3,0
   14ac2:	5782                	lw	a5,32(sp)
   14ac4:	2c078263          	beqz	a5,14d88 <__gdtoa+0xc26>
   14ac8:	4689                	li	a3,2
   14aca:	010ca603          	lw	a2,16(s9)
   14ace:	2ed78363          	beq	a5,a3,14db4 <__gdtoa+0xc52>
   14ad2:	4685                	li	a3,1
   14ad4:	1ac6c763          	blt	a3,a2,14c82 <__gdtoa+0xb20>
   14ad8:	014ca683          	lw	a3,20(s9)
   14adc:	1a069363          	bnez	a3,14c82 <__gdtoa+0xb20>
   14ae0:	00d036b3          	snez	a3,a3
   14ae4:	00469b13          	slli	s6,a3,0x4
   14ae8:	03000593          	li	a1,48
   14aec:	fffdc783          	lbu	a5,-1(s11)
   14af0:	866e                	mv	a2,s11
   14af2:	1dfd                	addi	s11,s11,-1
   14af4:	feb78ce3          	beq	a5,a1,14aec <__gdtoa+0x98a>
   14af8:	bdd5                	j	149ec <__gdtoa+0x88a>
   14afa:	57b2                	lw	a5,44(sp)
   14afc:	5742                	lw	a4,48(sp)
   14afe:	fff78693          	addi	a3,a5,-1
   14b02:	10d74463          	blt	a4,a3,14c0a <__gdtoa+0xaa8>
   14b06:	40d70d33          	sub	s10,a4,a3
   14b0a:	4407d263          	bgez	a5,14f4e <__gdtoa+0xdec>
   14b0e:	47e2                	lw	a5,24(sp)
   14b10:	5732                	lw	a4,44(sp)
   14b12:	d682                	sw	zero,108(sp)
   14b14:	8f99                	sub	a5,a5,a4
   14b16:	dc3e                	sw	a5,56(sp)
   14b18:	b8f1                	j	143f4 <__gdtoa+0x292>
   14b1a:	4789                	li	a5,2
   14b1c:	9927d7e3          	bge	a5,s2,144aa <__gdtoa+0x348>
   14b20:	85ea                	mv	a1,s10
   14b22:	4681                	li	a3,0
   14b24:	4615                	li	a2,5
   14b26:	8522                	mv	a0,s0
   14b28:	c846                	sw	a7,16(sp)
   14b2a:	175000ef          	jal	1549e <__multadd>
   14b2e:	85aa                	mv	a1,a0
   14b30:	b6050ce3          	beqz	a0,146a8 <__gdtoa+0x546>
   14b34:	57b2                	lw	a5,44(sp)
   14b36:	48c2                	lw	a7,16(sp)
   14b38:	e3f9                	bnez	a5,14bfe <__gdtoa+0xa9c>
   14b3a:	c82a                	sw	a0,16(sp)
   14b3c:	8566                	mv	a0,s9
   14b3e:	cc46                	sw	a7,24(sp)
   14b40:	7c1000ef          	jal	15b00 <__mcmp>
   14b44:	45c2                	lw	a1,16(sp)
   14b46:	48e2                	lw	a7,24(sp)
   14b48:	0aa05b63          	blez	a0,14bfe <__gdtoa+0xa9c>
   14b4c:	57d2                	lw	a5,52(sp)
   14b4e:	00278913          	addi	s2,a5,2
   14b52:	03100793          	li	a5,49
   14b56:	00188613          	addi	a2,a7,1
   14b5a:	00f88023          	sb	a5,0(a7)
   14b5e:	02000b13          	li	s6,32
   14b62:	8522                	mv	a0,s0
   14b64:	d446                	sw	a7,40(sp)
   14b66:	c832                	sw	a2,16(sp)
   14b68:	125000ef          	jal	1548c <_Bfree>
   14b6c:	4642                	lw	a2,16(sp)
   14b6e:	58a2                	lw	a7,40(sp)
   14b70:	dc0c08e3          	beqz	s8,14940 <__gdtoa+0x7de>
   14b74:	b55d                	j	14a1a <__gdtoa+0x8b8>
   14b76:	4605                	li	a2,1
   14b78:	4585                	li	a1,1
   14b7a:	fecff06f          	j	14366 <__gdtoa+0x204>
   14b7e:	85aa                	mv	a1,a0
   14b80:	8642                	mv	a2,a6
   14b82:	8522                	mv	a0,s0
   14b84:	c0c6                	sw	a7,64(sp)
   14b86:	d876                	sw	t4,48(sp)
   14b88:	597000ef          	jal	1591e <__pow5mult>
   14b8c:	8d2a                	mv	s10,a0
   14b8e:	b0050de3          	beqz	a0,146a8 <__gdtoa+0x546>
   14b92:	4685                	li	a3,1
   14b94:	5ec2                	lw	t4,48(sp)
   14b96:	4886                	lw	a7,64(sp)
   14b98:	1526d063          	bge	a3,s2,14cd8 <__gdtoa+0xb76>
   14b9c:	010d2783          	lw	a5,16(s10)
   14ba0:	d846                	sw	a7,48(sp)
   14ba2:	c876                	sw	t4,16(sp)
   14ba4:	078d                	addi	a5,a5,3
   14ba6:	078a                	slli	a5,a5,0x2
   14ba8:	97ea                	add	a5,a5,s10
   14baa:	43c8                	lw	a0,4(a5)
   14bac:	297000ef          	jal	15642 <__hi0bits>
   14bb0:	58c2                	lw	a7,48(sp)
   14bb2:	4ec2                	lw	t4,16(sp)
   14bb4:	8a2a                	mv	s4,a0
   14bb6:	885a                	mv	a6,s6
   14bb8:	b0d9                	j	1447e <__gdtoa+0x31c>
   14bba:	4685                	li	a3,1
   14bbc:	f326cfe3          	blt	a3,s2,14afa <__gdtoa+0x998>
   14bc0:	47e2                	lw	a5,24(sp)
   14bc2:	5d42                	lw	s10,48(sp)
   14bc4:	9eae                	add	t4,t4,a1
   14bc6:	dc3e                	sw	a5,56(sp)
   14bc8:	97ae                	add	a5,a5,a1
   14bca:	cc3e                	sw	a5,24(sp)
   14bcc:	829ff06f          	j	143f4 <__gdtoa+0x292>
   14bd0:	4789                	li	a5,2
   14bd2:	4727ce63          	blt	a5,s2,1504e <__gdtoa+0xeec>
   14bd6:	47f6                	lw	a5,92(sp)
   14bd8:	d63e                	sw	a5,44(sp)
   14bda:	b575                	j	14a86 <__gdtoa+0x924>
   14bdc:	57b2                	lw	a5,44(sp)
   14bde:	ccf04fe3          	bgtz	a5,148bc <__gdtoa+0x75a>
   14be2:	ef81                	bnez	a5,14bfa <__gdtoa+0xa98>
   14be4:	f001b787          	fld	fa5,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   14be8:	c87a                	sw	t5,16(sp)
   14bea:	ca7e                	sw	t6,20(sp)
   14bec:	12f77753          	fmul.d	fa4,fa4,fa5
   14bf0:	27c2                	fld	fa5,16(sp)
   14bf2:	a2e787d3          	fle.d	a5,fa5,fa4
   14bf6:	38078663          	beqz	a5,14f82 <__gdtoa+0xe20>
   14bfa:	4581                	li	a1,0
   14bfc:	4c01                	li	s8,0
   14bfe:	57a2                	lw	a5,40(sp)
   14c00:	8646                	mv	a2,a7
   14c02:	4b41                	li	s6,16
   14c04:	40f00933          	neg	s2,a5
   14c08:	bfa9                	j	14b62 <__gdtoa+0xa00>
   14c0a:	57c2                	lw	a5,48(sp)
   14c0c:	4762                	lw	a4,24(sp)
   14c0e:	4d01                	li	s10,0
   14c10:	40f68633          	sub	a2,a3,a5
   14c14:	57b2                	lw	a5,44(sp)
   14c16:	dc3a                	sw	a4,56(sp)
   14c18:	9832                	add	a6,a6,a2
   14c1a:	d6be                	sw	a5,108(sp)
   14c1c:	9ebe                	add	t4,t4,a5
   14c1e:	97ba                	add	a5,a5,a4
   14c20:	cc3e                	sw	a5,24(sp)
   14c22:	d836                	sw	a3,48(sp)
   14c24:	fd0ff06f          	j	143f4 <__gdtoa+0x292>
   14c28:	85e2                	mv	a1,s8
   14c2a:	866a                	mv	a2,s10
   14c2c:	8522                	mv	a0,s0
   14c2e:	ccc6                	sw	a7,88(sp)
   14c30:	c4f6                	sw	t4,72(sp)
   14c32:	c0c2                	sw	a6,64(sp)
   14c34:	4eb000ef          	jal	1591e <__pow5mult>
   14c38:	8c2a                	mv	s8,a0
   14c3a:	a60507e3          	beqz	a0,146a8 <__gdtoa+0x546>
   14c3e:	85aa                	mv	a1,a0
   14c40:	8666                	mv	a2,s9
   14c42:	8522                	mv	a0,s0
   14c44:	345000ef          	jal	15788 <__multiply>
   14c48:	8aaa                	mv	s5,a0
   14c4a:	a4050fe3          	beqz	a0,146a8 <__gdtoa+0x546>
   14c4e:	85e6                	mv	a1,s9
   14c50:	8522                	mv	a0,s0
   14c52:	03b000ef          	jal	1548c <_Bfree>
   14c56:	57c2                	lw	a5,48(sp)
   14c58:	4806                	lw	a6,64(sp)
   14c5a:	4ea6                	lw	t4,72(sp)
   14c5c:	41a787b3          	sub	a5,a5,s10
   14c60:	d83e                	sw	a5,48(sp)
   14c62:	48e6                	lw	a7,88(sp)
   14c64:	8cd6                	mv	s9,s5
   14c66:	fe078963          	beqz	a5,14458 <__gdtoa+0x2f6>
   14c6a:	fd2ff06f          	j	1443c <__gdtoa+0x2da>
   14c6e:	89e2                	mv	s3,s8
   14c70:	86ee                	mv	a3,s11
   14c72:	001d8913          	addi	s2,s11,1
   14c76:	8c52                	mv	s8,s4
   14c78:	03900613          	li	a2,57
   14c7c:	8dca                	mv	s11,s2
   14c7e:	00c68023          	sb	a2,0(a3)
   14c82:	03900593          	li	a1,57
   14c86:	a019                	j	14c8c <__gdtoa+0xb2a>
   14c88:	13b88f63          	beq	a7,s11,14dc6 <__gdtoa+0xc64>
   14c8c:	fffdc683          	lbu	a3,-1(s11)
   14c90:	866e                	mv	a2,s11
   14c92:	1dfd                	addi	s11,s11,-1
   14c94:	feb68ae3          	beq	a3,a1,14c88 <__gdtoa+0xb26>
   14c98:	0685                	addi	a3,a3,1
   14c9a:	00dd8023          	sb	a3,0(s11)
   14c9e:	02000b13          	li	s6,32
   14ca2:	b3a9                	j	149ec <__gdtoa+0x88a>
   14ca4:	85e2                	mv	a1,s8
   14ca6:	8522                	mv	a0,s0
   14ca8:	d446                	sw	a7,40(sp)
   14caa:	c842                	sw	a6,16(sp)
   14cac:	547000ef          	jal	159f2 <__lshift>
   14cb0:	4842                	lw	a6,16(sp)
   14cb2:	58a2                	lw	a7,40(sp)
   14cb4:	8c2a                	mv	s8,a0
   14cb6:	800512e3          	bnez	a0,144ba <__gdtoa+0x358>
   14cba:	b2fd                	j	146a8 <__gdtoa+0x546>
   14cbc:	4785                	li	a5,1
   14cbe:	cc82                	sw	zero,88(sp)
   14cc0:	c8be                	sw	a5,80(sp)
   14cc2:	e90ff06f          	j	14352 <__gdtoa+0x1f0>
   14cc6:	4785                	li	a5,1
   14cc8:	c8be                	sw	a5,80(sp)
   14cca:	e88ff06f          	j	14352 <__gdtoa+0x1f0>
   14cce:	4785                	li	a5,1
   14cd0:	c8be                	sw	a5,80(sp)
   14cd2:	b1f1                	j	1499e <__gdtoa+0x83c>
   14cd4:	c882                	sw	zero,80(sp)
   14cd6:	b1e1                	j	1499e <__gdtoa+0x83c>
   14cd8:	ecdd92e3          	bne	s11,a3,14b9c <__gdtoa+0xa3a>
   14cdc:	004a2783          	lw	a5,4(s4)
   14ce0:	4742                	lw	a4,16(sp)
   14ce2:	0785                	addi	a5,a5,1
   14ce4:	eae7dce3          	bge	a5,a4,14b9c <__gdtoa+0xa3a>
   14ce8:	47e2                	lw	a5,24(sp)
   14cea:	0e85                	addi	t4,t4,1
   14cec:	4b05                	li	s6,1
   14cee:	0785                	addi	a5,a5,1
   14cf0:	cc3e                	sw	a5,24(sp)
   14cf2:	b56d                	j	14b9c <__gdtoa+0xa3a>
   14cf4:	004c2583          	lw	a1,4(s8)
   14cf8:	8522                	mv	a0,s0
   14cfa:	c846                	sw	a7,16(sp)
   14cfc:	2715                	jal	15420 <_Balloc>
   14cfe:	8a2a                	mv	s4,a0
   14d00:	9a0504e3          	beqz	a0,146a8 <__gdtoa+0x546>
   14d04:	010c2603          	lw	a2,16(s8)
   14d08:	00cc0593          	addi	a1,s8,12
   14d0c:	0531                	addi	a0,a0,12
   14d0e:	0609                	addi	a2,a2,2
   14d10:	060a                	slli	a2,a2,0x2
   14d12:	f79fe0ef          	jal	13c8a <memcpy>
   14d16:	85d2                	mv	a1,s4
   14d18:	4605                	li	a2,1
   14d1a:	8522                	mv	a0,s0
   14d1c:	4d7000ef          	jal	159f2 <__lshift>
   14d20:	48c2                	lw	a7,16(sp)
   14d22:	8a2a                	mv	s4,a0
   14d24:	f8051e63          	bnez	a0,144c0 <__gdtoa+0x35e>
   14d28:	b241                	j	146a8 <__gdtoa+0x546>
   14d2a:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   14d2e:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14d32:	3682                	fld	fa3,32(sp)
   14d34:	fcc00637          	lui	a2,0xfcc00
   14d38:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14d3c:	bc3e                	fsd	fa5,56(sp)
   14d3e:	5562                	lw	a0,56(sp)
   14d40:	55f2                	lw	a1,60(sp)
   14d42:	832a                	mv	t1,a0
   14d44:	962e                	add	a2,a2,a1
   14d46:	de32                	sw	a2,60(sp)
   14d48:	f001b707          	fld	fa4,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   14d4c:	3782                	fld	fa5,32(sp)
   14d4e:	dc1a                	sw	t1,56(sp)
   14d50:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14d54:	37e2                	fld	fa5,56(sp)
   14d56:	a2e79653          	flt.d	a2,fa5,fa4
   14d5a:	1e061663          	bnez	a2,14f46 <__gdtoa+0xde4>
   14d5e:	22f797d3          	fneg.d	fa5,fa5
   14d62:	a2f71653          	flt.d	a2,fa4,fa5
   14d66:	e8061ae3          	bnez	a2,14bfa <__gdtoa+0xa98>
   14d6a:	5f02                	lw	t5,32(sp)
   14d6c:	5f92                	lw	t6,36(sp)
   14d6e:	65e9                	lui	a1,0x1a
   14d70:	280c4b63          	bltz	s8,15006 <__gdtoa+0xea4>
   14d74:	57a2                	lw	a5,40(sp)
   14d76:	d002                	sw	zero,32(sp)
   14d78:	6605b707          	fld	fa4,1632(a1) # 1a660 <__mprec_tens>
   14d7c:	b407d0e3          	bgez	a5,148bc <__gdtoa+0x75a>
   14d80:	57b2                	lw	a5,44(sp)
   14d82:	b2079de3          	bnez	a5,148bc <__gdtoa+0x75a>
   14d86:	bdb9                	j	14be4 <__gdtoa+0xa82>
   14d88:	85e6                	mv	a1,s9
   14d8a:	4605                	li	a2,1
   14d8c:	8522                	mv	a0,s0
   14d8e:	c846                	sw	a7,16(sp)
   14d90:	d41a                	sw	t1,40(sp)
   14d92:	461000ef          	jal	159f2 <__lshift>
   14d96:	8caa                	mv	s9,a0
   14d98:	900508e3          	beqz	a0,146a8 <__gdtoa+0x546>
   14d9c:	85ea                	mv	a1,s10
   14d9e:	563000ef          	jal	15b00 <__mcmp>
   14da2:	48c2                	lw	a7,16(sp)
   14da4:	eca04fe3          	bgtz	a0,14c82 <__gdtoa+0xb20>
   14da8:	e511                	bnez	a0,14db4 <__gdtoa+0xc52>
   14daa:	5322                	lw	t1,40(sp)
   14dac:	00137313          	andi	t1,t1,1
   14db0:	ec0319e3          	bnez	t1,14c82 <__gdtoa+0xb20>
   14db4:	010ca603          	lw	a2,16(s9)
   14db8:	4685                	li	a3,1
   14dba:	4b41                	li	s6,16
   14dbc:	d2c6c6e3          	blt	a3,a2,14ae8 <__gdtoa+0x986>
   14dc0:	014ca683          	lw	a3,20(s9)
   14dc4:	bb31                	j	14ae0 <__gdtoa+0x97e>
   14dc6:	57d2                	lw	a5,52(sp)
   14dc8:	02000b13          	li	s6,32
   14dcc:	0785                	addi	a5,a5,1
   14dce:	da3e                	sw	a5,52(sp)
   14dd0:	03100793          	li	a5,49
   14dd4:	00f88023          	sb	a5,0(a7)
   14dd8:	b911                	j	149ec <__gdtoa+0x88a>
   14dda:	5782                	lw	a5,32(sp)
   14ddc:	8926                	mv	s2,s1
   14dde:	835e                	mv	t1,s7
   14de0:	58a2                	lw	a7,40(sp)
   14de2:	4be2                	lw	s7,24(sp)
   14de4:	54b2                	lw	s1,44(sp)
   14de6:	cb91                	beqz	a5,14dfa <__gdtoa+0xc98>
   14de8:	010ca603          	lw	a2,16(s9)
   14dec:	4685                	li	a3,1
   14dee:	fcc6c163          	blt	a3,a2,145b0 <__gdtoa+0x44e>
   14df2:	014ca683          	lw	a3,20(s9)
   14df6:	fa069d63          	bnez	a3,145b0 <__gdtoa+0x44e>
   14dfa:	85e6                	mv	a1,s9
   14dfc:	4605                	li	a2,1
   14dfe:	8522                	mv	a0,s0
   14e00:	d446                	sw	a7,40(sp)
   14e02:	c81a                	sw	t1,16(sp)
   14e04:	3ef000ef          	jal	159f2 <__lshift>
   14e08:	8caa                	mv	s9,a0
   14e0a:	88050fe3          	beqz	a0,146a8 <__gdtoa+0x546>
   14e0e:	85ea                	mv	a1,s10
   14e10:	4f1000ef          	jal	15b00 <__mcmp>
   14e14:	4342                	lw	t1,16(sp)
   14e16:	58a2                	lw	a7,40(sp)
   14e18:	22a05e63          	blez	a0,15054 <__gdtoa+0xef2>
   14e1c:	03900693          	li	a3,57
   14e20:	e4d307e3          	beq	t1,a3,14c6e <__gdtoa+0xb0c>
   14e24:	02000793          	li	a5,32
   14e28:	03190313          	addi	t1,s2,49
   14e2c:	d03e                	sw	a5,32(sp)
   14e2e:	b655                	j	149d2 <__gdtoa+0x870>
   14e30:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   14e34:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   14e38:	a2f715d3          	flt.d	a1,fa4,fa5
   14e3c:	9e059ae3          	bnez	a1,14830 <__gdtoa+0x6ce>
   14e40:	a2e7a5d3          	feq.d	a1,fa5,fa4
   14e44:	c581                	beqz	a1,14e4c <__gdtoa+0xcea>
   14e46:	8b85                	andi	a5,a5,1
   14e48:	9e0794e3          	bnez	a5,14830 <__gdtoa+0x6ce>
   14e4c:	87b2                	mv	a5,a2
   14e4e:	4b41                	li	s6,16
   14e50:	03000593          	li	a1,48
   14e54:	fff7c703          	lbu	a4,-1(a5)
   14e58:	863e                	mv	a2,a5
   14e5a:	17fd                	addi	a5,a5,-1
   14e5c:	feb70ce3          	beq	a4,a1,14e54 <__gdtoa+0xcf2>
   14e60:	892a                	mv	s2,a0
   14e62:	bcf9                	j	14940 <__gdtoa+0x7de>
   14e64:	03100693          	li	a3,49
   14e68:	0505                	addi	a0,a0,1
   14e6a:	b2d5                	j	1484e <__gdtoa+0x6ec>
   14e6c:	de32                	sw	a2,60(sp)
   14e6e:	dc1a                	sw	t1,56(sp)
   14e70:	3762                	fld	fa4,56(sp)
   14e72:	de7e                	sw	t6,60(sp)
   14e74:	dc7a                	sw	t5,56(sp)
   14e76:	35e2                	fld	fa1,56(sp)
   14e78:	12e7f653          	fmul.d	fa2,fa5,fa4
   14e7c:	ee01b707          	fld	fa4,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14e80:	4685                	li	a3,1
   14e82:	22b587d3          	fmv.d	fa5,fa1
   14e86:	d6b6                	sw	a3,108(sp)
   14e88:	8646                	mv	a2,a7
   14e8a:	4f81                	li	t6,0
   14e8c:	a029                	j	14e96 <__gdtoa+0xd34>
   14e8e:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14e92:	d6ba                	sw	a4,108(sp)
   14e94:	4f85                	li	t6,1
   14e96:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14e9a:	0605                	addi	a2,a2,1
   14e9c:	03078693          	addi	a3,a5,48
   14ea0:	0ff6f693          	zext.b	a3,a3
   14ea4:	c791                	beqz	a5,14eb0 <__gdtoa+0xd4e>
   14ea6:	d20786d3          	fcvt.d.w	fa3,a5
   14eaa:	4f85                	li	t6,1
   14eac:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   14eb0:	fed60fa3          	sb	a3,-1(a2)
   14eb4:	57b6                	lw	a5,108(sp)
   14eb6:	00178713          	addi	a4,a5,1
   14eba:	fca79ae3          	bne	a5,a0,14e8e <__gdtoa+0xd2c>
   14ebe:	000f8463          	beqz	t6,14ec6 <__gdtoa+0xd64>
   14ec2:	22f785d3          	fmv.d	fa1,fa5
   14ec6:	f081b787          	fld	fa5,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   14eca:	02f67753          	fadd.d	fa4,fa2,fa5
   14ece:	a2b71553          	flt.d	a0,fa4,fa1
   14ed2:	0e051f63          	bnez	a0,14fd0 <__gdtoa+0xe6e>
   14ed6:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   14eda:	a2f596d3          	flt.d	a3,fa1,fa5
   14ede:	12069763          	bnez	a3,1500c <__gdtoa+0xeaa>
   14ee2:	5f02                	lw	t5,32(sp)
   14ee4:	5f92                	lw	t6,36(sp)
   14ee6:	e80c57e3          	bgez	s8,14d74 <__gdtoa+0xc12>
   14eea:	47e2                	lw	a5,24(sp)
   14eec:	5d42                	lw	s10,48(sp)
   14eee:	d002                	sw	zero,32(sp)
   14ef0:	dc3e                	sw	a5,56(sp)
   14ef2:	4c01                	li	s8,0
   14ef4:	d1aff06f          	j	1440e <__gdtoa+0x2ac>
   14ef8:	835e                	mv	t1,s7
   14efa:	89e2                	mv	s3,s8
   14efc:	58a2                	lw	a7,40(sp)
   14efe:	4be2                	lw	s7,24(sp)
   14f00:	54b2                	lw	s1,44(sp)
   14f02:	8c52                	mv	s8,s4
   14f04:	be7d                	j	14ac2 <__gdtoa+0x960>
   14f06:	e20782e3          	beqz	a5,14d2a <__gdtoa+0xbc8>
   14f0a:	4576                	lw	a0,92(sp)
   14f0c:	e4a05fe3          	blez	a0,14d6a <__gdtoa+0xc08>
   14f10:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14f14:	53fd                	li	t2,-1
   14f16:	12f777d3          	fmul.d	fa5,fa4,fa5
   14f1a:	ee81b707          	fld	fa4,-280(gp) # 1b6f8 <__SDATA_BEGIN__+0x40>
   14f1e:	bc3e                	fsd	fa5,56(sp)
   14f20:	36e2                	fld	fa3,56(sp)
   14f22:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14f26:	fcc00637          	lui	a2,0xfcc00
   14f2a:	5f62                	lw	t5,56(sp)
   14f2c:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14f30:	5ff2                	lw	t6,60(sp)
   14f32:	a0be                	fsd	fa5,64(sp)
   14f34:	4706                	lw	a4,64(sp)
   14f36:	4796                	lw	a5,68(sp)
   14f38:	833a                	mv	t1,a4
   14f3a:	963e                	add	a2,a2,a5
   14f3c:	857ff06f          	j	14792 <__gdtoa+0x630>
   14f40:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   14f44:	b0f5                	j	14830 <__gdtoa+0x6ce>
   14f46:	4909                	li	s2,2
   14f48:	4581                	li	a1,0
   14f4a:	4c01                	li	s8,0
   14f4c:	b119                	j	14b52 <__gdtoa+0x9f0>
   14f4e:	4762                	lw	a4,24(sp)
   14f50:	d6be                	sw	a5,108(sp)
   14f52:	9ebe                	add	t4,t4,a5
   14f54:	97ba                	add	a5,a5,a4
   14f56:	dc3a                	sw	a4,56(sp)
   14f58:	cc3e                	sw	a5,24(sp)
   14f5a:	c9aff06f          	j	143f4 <__gdtoa+0x292>
   14f5e:	835e                	mv	t1,s7
   14f60:	03900693          	li	a3,57
   14f64:	58a2                	lw	a7,40(sp)
   14f66:	4be2                	lw	s7,24(sp)
   14f68:	54b2                	lw	s1,44(sp)
   14f6a:	d0d302e3          	beq	t1,a3,14c6e <__gdtoa+0xb0c>
   14f6e:	0305                	addi	t1,t1,1
   14f70:	89e2                	mv	s3,s8
   14f72:	001d8613          	addi	a2,s11,1
   14f76:	006d8023          	sb	t1,0(s11)
   14f7a:	8c52                	mv	s8,s4
   14f7c:	02000b13          	li	s6,32
   14f80:	b4b5                	j	149ec <__gdtoa+0x88a>
   14f82:	57d2                	lw	a5,52(sp)
   14f84:	4581                	li	a1,0
   14f86:	4c01                	li	s8,0
   14f88:	00278913          	addi	s2,a5,2
   14f8c:	b6d9                	j	14b52 <__gdtoa+0x9f0>
   14f8e:	85e2                	mv	a1,s8
   14f90:	4681                	li	a3,0
   14f92:	4629                	li	a2,10
   14f94:	8522                	mv	a0,s0
   14f96:	2321                	jal	1549e <__multadd>
   14f98:	8c2a                	mv	s8,a0
   14f9a:	f0050763          	beqz	a0,146a8 <__gdtoa+0x546>
   14f9e:	47f6                	lw	a5,92(sp)
   14fa0:	4842                	lw	a6,16(sp)
   14fa2:	48e2                	lw	a7,24(sp)
   14fa4:	00f05563          	blez	a5,14fae <__gdtoa+0xe4c>
   14fa8:	d63e                	sw	a5,44(sp)
   14faa:	d06ff06f          	j	144b0 <__gdtoa+0x34e>
   14fae:	4789                	li	a5,2
   14fb0:	0927cf63          	blt	a5,s2,1504e <__gdtoa+0xeec>
   14fb4:	47f6                	lw	a5,92(sp)
   14fb6:	d63e                	sw	a5,44(sp)
   14fb8:	cf8ff06f          	j	144b0 <__gdtoa+0x34e>
   14fbc:	d2000753          	fcvt.d.w	fa4,zero
   14fc0:	00138913          	addi	s2,t2,1
   14fc4:	a2e7ab53          	feq.d	s6,fa5,fa4
   14fc8:	001b3b13          	seqz	s6,s6
   14fcc:	0b12                	slli	s6,s6,0x4
   14fce:	ba8d                	j	14940 <__gdtoa+0x7de>
   14fd0:	00138513          	addi	a0,t2,1
   14fd4:	85dff06f          	j	14830 <__gdtoa+0x6ce>
   14fd8:	5f02                	lw	t5,32(sp)
   14fda:	5f92                	lw	t6,36(sp)
   14fdc:	d80c5ce3          	bgez	s8,14d74 <__gdtoa+0xc12>
   14fe0:	d002                	sw	zero,32(sp)
   14fe2:	bccff06f          	j	143ae <__gdtoa+0x24c>
   14fe6:	57b2                	lw	a5,44(sp)
   14fe8:	5742                	lw	a4,48(sp)
   14fea:	fff78693          	addi	a3,a5,-1
   14fee:	c0d74ee3          	blt	a4,a3,14c0a <__gdtoa+0xaa8>
   14ff2:	4662                	lw	a2,24(sp)
   14ff4:	9ebe                	add	t4,t4,a5
   14ff6:	d6be                	sw	a5,108(sp)
   14ff8:	97b2                	add	a5,a5,a2
   14ffa:	dc32                	sw	a2,56(sp)
   14ffc:	40d70d33          	sub	s10,a4,a3
   15000:	cc3e                	sw	a5,24(sp)
   15002:	bf2ff06f          	j	143f4 <__gdtoa+0x292>
   15006:	d002                	sw	zero,32(sp)
   15008:	ba0ff06f          	j	143a8 <__gdtoa+0x246>
   1500c:	d20007d3          	fcvt.d.w	fa5,zero
   15010:	87b2                	mv	a5,a2
   15012:	00138513          	addi	a0,t2,1
   15016:	a2f5ab53          	feq.d	s6,fa1,fa5
   1501a:	001b3b13          	seqz	s6,s6
   1501e:	0b12                	slli	s6,s6,0x4
   15020:	bd05                	j	14e50 <__gdtoa+0xcee>
   15022:	835e                	mv	t1,s7
   15024:	03900693          	li	a3,57
   15028:	8926                	mv	s2,s1
   1502a:	58a2                	lw	a7,40(sp)
   1502c:	4be2                	lw	s7,24(sp)
   1502e:	54b2                	lw	s1,44(sp)
   15030:	c2d30fe3          	beq	t1,a3,14c6e <__gdtoa+0xb0c>
   15034:	07505d63          	blez	s5,150ae <__gdtoa+0xf4c>
   15038:	03190313          	addi	t1,s2,49
   1503c:	02000b13          	li	s6,32
   15040:	89e2                	mv	s3,s8
   15042:	001d8613          	addi	a2,s11,1
   15046:	006d8023          	sb	t1,0(s11)
   1504a:	8c52                	mv	s8,s4
   1504c:	b245                	j	149ec <__gdtoa+0x88a>
   1504e:	47f6                	lw	a5,92(sp)
   15050:	d63e                	sw	a5,44(sp)
   15052:	b4f9                	j	14b20 <__gdtoa+0x9be>
   15054:	e509                	bnez	a0,1505e <__gdtoa+0xefc>
   15056:	00137693          	andi	a3,t1,1
   1505a:	dc0691e3          	bnez	a3,14e1c <__gdtoa+0xcba>
   1505e:	02000793          	li	a5,32
   15062:	d03e                	sw	a5,32(sp)
   15064:	b2bd                	j	149d2 <__gdtoa+0x870>
   15066:	014ca683          	lw	a3,20(s9)
   1506a:	96069ce3          	bnez	a3,149e2 <__gdtoa+0x880>
   1506e:	5b02                	lw	s6,32(sp)
   15070:	ba8d                	j	149e2 <__gdtoa+0x880>
   15072:	03900693          	li	a3,57
   15076:	88da                	mv	a7,s6
   15078:	00da8b63          	beq	s5,a3,1508e <__gdtoa+0xf2c>
   1507c:	001a8313          	addi	t1,s5,1
   15080:	02000b13          	li	s6,32
   15084:	bab9                	j	149e2 <__gdtoa+0x880>
   15086:	4b41                	li	s6,16
   15088:	001d8913          	addi	s2,s11,1
   1508c:	ba99                	j	149e2 <__gdtoa+0x880>
   1508e:	89e2                	mv	s3,s8
   15090:	86ee                	mv	a3,s11
   15092:	8c52                	mv	s8,s4
   15094:	b6d5                	j	14c78 <__gdtoa+0xb16>
   15096:	010ca603          	lw	a2,16(s9)
   1509a:	4685                	li	a3,1
   1509c:	d0c6ca63          	blt	a3,a2,145b0 <__gdtoa+0x44e>
   150a0:	014ca683          	lw	a3,20(s9)
   150a4:	d0069663          	bnez	a3,145b0 <__gdtoa+0x44e>
   150a8:	001d8913          	addi	s2,s11,1
   150ac:	ba1d                	j	149e2 <__gdtoa+0x880>
   150ae:	010ca603          	lw	a2,16(s9)
   150b2:	4685                	li	a3,1
   150b4:	4b41                	li	s6,16
   150b6:	f8c6c5e3          	blt	a3,a2,15040 <__gdtoa+0xede>
   150ba:	014cab03          	lw	s6,20(s9)
   150be:	01603b33          	snez	s6,s6
   150c2:	0b12                	slli	s6,s6,0x4
   150c4:	bfb5                	j	15040 <__gdtoa+0xede>
   150c6:	000ace63          	bltz	s5,150e2 <__gdtoa+0xf80>
   150ca:	01596ab3          	or	s5,s2,s5
   150ce:	000a9663          	bnez	s5,150da <__gdtoa+0xf78>
   150d2:	0009a783          	lw	a5,0(s3)
   150d6:	8b85                	andi	a5,a5,1
   150d8:	c789                	beqz	a5,150e2 <__gdtoa+0xf80>
   150da:	c0d05c63          	blez	a3,144f2 <__gdtoa+0x390>
   150de:	c0cff06f          	j	144ea <__gdtoa+0x388>
   150e2:	5782                	lw	a5,32(sp)
   150e4:	8926                	mv	s2,s1
   150e6:	835e                	mv	t1,s7
   150e8:	58a2                	lw	a7,40(sp)
   150ea:	4be2                	lw	s7,24(sp)
   150ec:	54b2                	lw	s1,44(sp)
   150ee:	c385                	beqz	a5,1510e <__gdtoa+0xfac>
   150f0:	010ca583          	lw	a1,16(s9)
   150f4:	4605                	li	a2,1
   150f6:	cab64d63          	blt	a2,a1,145b0 <__gdtoa+0x44e>
   150fa:	014ca603          	lw	a2,20(s9)
   150fe:	ca061963          	bnez	a2,145b0 <__gdtoa+0x44e>
   15102:	ced04ce3          	bgtz	a3,14dfa <__gdtoa+0xc98>
   15106:	4b01                	li	s6,0
   15108:	001d8913          	addi	s2,s11,1
   1510c:	b8d9                	j	149e2 <__gdtoa+0x880>
   1510e:	8cd052e3          	blez	a3,149d2 <__gdtoa+0x870>
   15112:	b1e5                	j	14dfa <__gdtoa+0xc98>

00015114 <__rv_alloc_D2A.part.0>:
   15114:	66e9                	lui	a3,0x1a
   15116:	6569                	lui	a0,0x1a
   15118:	1141                	addi	sp,sp,-16
   1511a:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   1511e:	4601                	li	a2,0
   15120:	03900593          	li	a1,57
   15124:	1a050513          	addi	a0,a0,416 # 1a1a0 <__clzsi2+0x12a>
   15128:	c606                	sw	ra,12(sp)
   1512a:	690010ef          	jal	167ba <__assert_func>

0001512e <__rv_alloc_D2A>:
   1512e:	1141                	addi	sp,sp,-16
   15130:	c422                	sw	s0,8(sp)
   15132:	c606                	sw	ra,12(sp)
   15134:	46dd                	li	a3,23
   15136:	842a                	mv	s0,a0
   15138:	4705                	li	a4,1
   1513a:	4791                	li	a5,4
   1513c:	02b6f363          	bgeu	a3,a1,15162 <__rv_alloc_D2A+0x34>
   15140:	0786                	slli	a5,a5,0x1
   15142:	01478693          	addi	a3,a5,20
   15146:	863a                	mv	a2,a4
   15148:	0705                	addi	a4,a4,1
   1514a:	fed5fbe3          	bgeu	a1,a3,15140 <__rv_alloc_D2A+0x12>
   1514e:	85b2                	mv	a1,a2
   15150:	dc50                	sw	a2,60(s0)
   15152:	8522                	mv	a0,s0
   15154:	24f1                	jal	15420 <_Balloc>
   15156:	c911                	beqz	a0,1516a <__rv_alloc_D2A+0x3c>
   15158:	40b2                	lw	ra,12(sp)
   1515a:	dc08                	sw	a0,56(s0)
   1515c:	4422                	lw	s0,8(sp)
   1515e:	0141                	addi	sp,sp,16
   15160:	8082                	ret
   15162:	02052e23          	sw	zero,60(a0)
   15166:	4581                	li	a1,0
   15168:	b7ed                	j	15152 <__rv_alloc_D2A+0x24>
   1516a:	376d                	jal	15114 <__rv_alloc_D2A.part.0>

0001516c <__nrv_alloc_D2A>:
   1516c:	1141                	addi	sp,sp,-16
   1516e:	c422                	sw	s0,8(sp)
   15170:	c226                	sw	s1,4(sp)
   15172:	c04a                	sw	s2,0(sp)
   15174:	c606                	sw	ra,12(sp)
   15176:	485d                	li	a6,23
   15178:	84aa                	mv	s1,a0
   1517a:	842e                	mv	s0,a1
   1517c:	8932                	mv	s2,a2
   1517e:	4705                	li	a4,1
   15180:	4791                	li	a5,4
   15182:	04d87763          	bgeu	a6,a3,151d0 <__nrv_alloc_D2A+0x64>
   15186:	0786                	slli	a5,a5,0x1
   15188:	01478813          	addi	a6,a5,20
   1518c:	85ba                	mv	a1,a4
   1518e:	0705                	addi	a4,a4,1
   15190:	ff06fbe3          	bgeu	a3,a6,15186 <__nrv_alloc_D2A+0x1a>
   15194:	dccc                	sw	a1,60(s1)
   15196:	8526                	mv	a0,s1
   15198:	2461                	jal	15420 <_Balloc>
   1519a:	c129                	beqz	a0,151dc <__nrv_alloc_D2A+0x70>
   1519c:	dc88                	sw	a0,56(s1)
   1519e:	00044783          	lbu	a5,0(s0)
   151a2:	00140593          	addi	a1,s0,1
   151a6:	00f50023          	sb	a5,0(a0)
   151aa:	c79d                	beqz	a5,151d8 <__nrv_alloc_D2A+0x6c>
   151ac:	87aa                	mv	a5,a0
   151ae:	0005c703          	lbu	a4,0(a1)
   151b2:	0785                	addi	a5,a5,1
   151b4:	0585                	addi	a1,a1,1
   151b6:	00e78023          	sb	a4,0(a5)
   151ba:	fb75                	bnez	a4,151ae <__nrv_alloc_D2A+0x42>
   151bc:	00090463          	beqz	s2,151c4 <__nrv_alloc_D2A+0x58>
   151c0:	00f92023          	sw	a5,0(s2)
   151c4:	40b2                	lw	ra,12(sp)
   151c6:	4422                	lw	s0,8(sp)
   151c8:	4492                	lw	s1,4(sp)
   151ca:	4902                	lw	s2,0(sp)
   151cc:	0141                	addi	sp,sp,16
   151ce:	8082                	ret
   151d0:	02052e23          	sw	zero,60(a0)
   151d4:	4581                	li	a1,0
   151d6:	b7c1                	j	15196 <__nrv_alloc_D2A+0x2a>
   151d8:	87aa                	mv	a5,a0
   151da:	b7cd                	j	151bc <__nrv_alloc_D2A+0x50>
   151dc:	3f25                	jal	15114 <__rv_alloc_D2A.part.0>

000151de <__freedtoa>:
   151de:	5d54                	lw	a3,60(a0)
   151e0:	4705                	li	a4,1
   151e2:	00d71733          	sll	a4,a4,a3
   151e6:	c1d4                	sw	a3,4(a1)
   151e8:	c598                	sw	a4,8(a1)
   151ea:	a44d                	j	1548c <_Bfree>

000151ec <__quorem_D2A>:
   151ec:	1101                	addi	sp,sp,-32
   151ee:	ca26                	sw	s1,20(sp)
   151f0:	491c                	lw	a5,16(a0)
   151f2:	4984                	lw	s1,16(a1)
   151f4:	ce06                	sw	ra,28(sp)
   151f6:	1497c163          	blt	a5,s1,15338 <__quorem_D2A+0x14c>
   151fa:	14fd                	addi	s1,s1,-1
   151fc:	00249313          	slli	t1,s1,0x2
   15200:	cc22                	sw	s0,24(sp)
   15202:	01458413          	addi	s0,a1,20
   15206:	c64e                	sw	s3,12(sp)
   15208:	c452                	sw	s4,8(sp)
   1520a:	006409b3          	add	s3,s0,t1
   1520e:	01450a13          	addi	s4,a0,20
   15212:	0009a783          	lw	a5,0(s3)
   15216:	9352                	add	t1,t1,s4
   15218:	00032703          	lw	a4,0(t1)
   1521c:	c84a                	sw	s2,16(sp)
   1521e:	c256                	sw	s5,4(sp)
   15220:	0785                	addi	a5,a5,1
   15222:	02f75933          	divu	s2,a4,a5
   15226:	8aaa                	mv	s5,a0
   15228:	08f76663          	bltu	a4,a5,152b4 <__quorem_D2A+0xc8>
   1522c:	6541                	lui	a0,0x10
   1522e:	88a2                	mv	a7,s0
   15230:	8852                	mv	a6,s4
   15232:	4f01                	li	t5,0
   15234:	4e81                	li	t4,0
   15236:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15238:	0008a783          	lw	a5,0(a7)
   1523c:	00082603          	lw	a2,0(a6)
   15240:	0811                	addi	a6,a6,4
   15242:	00a7f6b3          	and	a3,a5,a0
   15246:	83c1                	srli	a5,a5,0x10
   15248:	00a67733          	and	a4,a2,a0
   1524c:	01065e13          	srli	t3,a2,0x10
   15250:	0891                	addi	a7,a7,4
   15252:	032686b3          	mul	a3,a3,s2
   15256:	032787b3          	mul	a5,a5,s2
   1525a:	96fa                	add	a3,a3,t5
   1525c:	00a6f633          	and	a2,a3,a0
   15260:	8f11                	sub	a4,a4,a2
   15262:	41d70733          	sub	a4,a4,t4
   15266:	82c1                	srli	a3,a3,0x10
   15268:	01075613          	srli	a2,a4,0x10
   1526c:	8a05                	andi	a2,a2,1
   1526e:	8f69                	and	a4,a4,a0
   15270:	97b6                	add	a5,a5,a3
   15272:	00a7f6b3          	and	a3,a5,a0
   15276:	9636                	add	a2,a2,a3
   15278:	40ce06b3          	sub	a3,t3,a2
   1527c:	01069613          	slli	a2,a3,0x10
   15280:	8f51                	or	a4,a4,a2
   15282:	82c1                	srli	a3,a3,0x10
   15284:	fee82e23          	sw	a4,-4(a6)
   15288:	0107df13          	srli	t5,a5,0x10
   1528c:	0016fe93          	andi	t4,a3,1
   15290:	fb19f4e3          	bgeu	s3,a7,15238 <__quorem_D2A+0x4c>
   15294:	00032783          	lw	a5,0(t1)
   15298:	ef91                	bnez	a5,152b4 <__quorem_D2A+0xc8>
   1529a:	1371                	addi	t1,t1,-4
   1529c:	006a6663          	bltu	s4,t1,152a8 <__quorem_D2A+0xbc>
   152a0:	a801                	j	152b0 <__quorem_D2A+0xc4>
   152a2:	14fd                	addi	s1,s1,-1
   152a4:	006a7663          	bgeu	s4,t1,152b0 <__quorem_D2A+0xc4>
   152a8:	00032783          	lw	a5,0(t1)
   152ac:	1371                	addi	t1,t1,-4
   152ae:	dbf5                	beqz	a5,152a2 <__quorem_D2A+0xb6>
   152b0:	009aa823          	sw	s1,16(s5)
   152b4:	8556                	mv	a0,s5
   152b6:	04b000ef          	jal	15b00 <__mcmp>
   152ba:	06054563          	bltz	a0,15324 <__quorem_D2A+0x138>
   152be:	6541                	lui	a0,0x10
   152c0:	85d2                	mv	a1,s4
   152c2:	4681                	li	a3,0
   152c4:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   152c6:	419c                	lw	a5,0(a1)
   152c8:	4010                	lw	a2,0(s0)
   152ca:	0591                	addi	a1,a1,4
   152cc:	00a7f733          	and	a4,a5,a0
   152d0:	00a67833          	and	a6,a2,a0
   152d4:	41070733          	sub	a4,a4,a6
   152d8:	8f15                	sub	a4,a4,a3
   152da:	01075693          	srli	a3,a4,0x10
   152de:	8a85                	andi	a3,a3,1
   152e0:	8241                	srli	a2,a2,0x10
   152e2:	96b2                	add	a3,a3,a2
   152e4:	83c1                	srli	a5,a5,0x10
   152e6:	8f95                	sub	a5,a5,a3
   152e8:	01079693          	slli	a3,a5,0x10
   152ec:	8f69                	and	a4,a4,a0
   152ee:	8f55                	or	a4,a4,a3
   152f0:	83c1                	srli	a5,a5,0x10
   152f2:	0411                	addi	s0,s0,4
   152f4:	fee5ae23          	sw	a4,-4(a1)
   152f8:	0017f693          	andi	a3,a5,1
   152fc:	fc89f5e3          	bgeu	s3,s0,152c6 <__quorem_D2A+0xda>
   15300:	00249793          	slli	a5,s1,0x2
   15304:	97d2                	add	a5,a5,s4
   15306:	4398                	lw	a4,0(a5)
   15308:	ef09                	bnez	a4,15322 <__quorem_D2A+0x136>
   1530a:	17f1                	addi	a5,a5,-4
   1530c:	00fa6663          	bltu	s4,a5,15318 <__quorem_D2A+0x12c>
   15310:	a039                	j	1531e <__quorem_D2A+0x132>
   15312:	14fd                	addi	s1,s1,-1
   15314:	00fa7563          	bgeu	s4,a5,1531e <__quorem_D2A+0x132>
   15318:	4398                	lw	a4,0(a5)
   1531a:	17f1                	addi	a5,a5,-4
   1531c:	db7d                	beqz	a4,15312 <__quorem_D2A+0x126>
   1531e:	009aa823          	sw	s1,16(s5)
   15322:	0905                	addi	s2,s2,1
   15324:	4462                	lw	s0,24(sp)
   15326:	40f2                	lw	ra,28(sp)
   15328:	49b2                	lw	s3,12(sp)
   1532a:	4a22                	lw	s4,8(sp)
   1532c:	4a92                	lw	s5,4(sp)
   1532e:	44d2                	lw	s1,20(sp)
   15330:	854a                	mv	a0,s2
   15332:	4942                	lw	s2,16(sp)
   15334:	6105                	addi	sp,sp,32
   15336:	8082                	ret
   15338:	40f2                	lw	ra,28(sp)
   1533a:	44d2                	lw	s1,20(sp)
   1533c:	4501                	li	a0,0
   1533e:	6105                	addi	sp,sp,32
   15340:	8082                	ret

00015342 <__rshift_D2A>:
   15342:	01052803          	lw	a6,16(a0)
   15346:	4055de13          	srai	t3,a1,0x5
   1534a:	010e4763          	blt	t3,a6,15358 <__rshift_D2A+0x16>
   1534e:	00052823          	sw	zero,16(a0)
   15352:	00052a23          	sw	zero,20(a0)
   15356:	8082                	ret
   15358:	01450313          	addi	t1,a0,20
   1535c:	00281613          	slli	a2,a6,0x2
   15360:	002e1793          	slli	a5,t3,0x2
   15364:	89fd                	andi	a1,a1,31
   15366:	961a                	add	a2,a2,t1
   15368:	979a                	add	a5,a5,t1
   1536a:	c5a1                	beqz	a1,153b2 <__rshift_D2A+0x70>
   1536c:	4394                	lw	a3,0(a5)
   1536e:	02000e93          	li	t4,32
   15372:	0791                	addi	a5,a5,4
   15374:	40be8eb3          	sub	t4,t4,a1
   15378:	00b6d6b3          	srl	a3,a3,a1
   1537c:	06c7f063          	bgeu	a5,a2,153dc <__rshift_D2A+0x9a>
   15380:	889a                	mv	a7,t1
   15382:	4398                	lw	a4,0(a5)
   15384:	0891                	addi	a7,a7,4
   15386:	0791                	addi	a5,a5,4
   15388:	01d71733          	sll	a4,a4,t4
   1538c:	8f55                	or	a4,a4,a3
   1538e:	fee8ae23          	sw	a4,-4(a7)
   15392:	ffc7a683          	lw	a3,-4(a5)
   15396:	00b6d6b3          	srl	a3,a3,a1
   1539a:	fec7e4e3          	bltu	a5,a2,15382 <__rshift_D2A+0x40>
   1539e:	41c80833          	sub	a6,a6,t3
   153a2:	080a                	slli	a6,a6,0x2
   153a4:	1871                	addi	a6,a6,-4
   153a6:	981a                	add	a6,a6,t1
   153a8:	00d82023          	sw	a3,0(a6)
   153ac:	c28d                	beqz	a3,153ce <__rshift_D2A+0x8c>
   153ae:	0811                	addi	a6,a6,4
   153b0:	a839                	j	153ce <__rshift_D2A+0x8c>
   153b2:	871a                	mv	a4,t1
   153b4:	f8c7fde3          	bgeu	a5,a2,1534e <__rshift_D2A+0xc>
   153b8:	4394                	lw	a3,0(a5)
   153ba:	0791                	addi	a5,a5,4
   153bc:	0711                	addi	a4,a4,4
   153be:	fed72e23          	sw	a3,-4(a4)
   153c2:	fec7ebe3          	bltu	a5,a2,153b8 <__rshift_D2A+0x76>
   153c6:	41c80833          	sub	a6,a6,t3
   153ca:	080a                	slli	a6,a6,0x2
   153cc:	981a                	add	a6,a6,t1
   153ce:	406807b3          	sub	a5,a6,t1
   153d2:	8789                	srai	a5,a5,0x2
   153d4:	c91c                	sw	a5,16(a0)
   153d6:	f6680ee3          	beq	a6,t1,15352 <__rshift_D2A+0x10>
   153da:	8082                	ret
   153dc:	c954                	sw	a3,20(a0)
   153de:	daa5                	beqz	a3,1534e <__rshift_D2A+0xc>
   153e0:	881a                	mv	a6,t1
   153e2:	0811                	addi	a6,a6,4
   153e4:	b7ed                	j	153ce <__rshift_D2A+0x8c>

000153e6 <__trailz_D2A>:
   153e6:	4918                	lw	a4,16(a0)
   153e8:	1101                	addi	sp,sp,-32
   153ea:	0551                	addi	a0,a0,20
   153ec:	070a                	slli	a4,a4,0x2
   153ee:	cc22                	sw	s0,24(sp)
   153f0:	ce06                	sw	ra,28(sp)
   153f2:	972a                	add	a4,a4,a0
   153f4:	4401                	li	s0,0
   153f6:	00e56863          	bltu	a0,a4,15406 <__trailz_D2A+0x20>
   153fa:	a831                	j	15416 <__trailz_D2A+0x30>
   153fc:	0511                	addi	a0,a0,4
   153fe:	02040413          	addi	s0,s0,32
   15402:	00e57a63          	bgeu	a0,a4,15416 <__trailz_D2A+0x30>
   15406:	411c                	lw	a5,0(a0)
   15408:	dbf5                	beqz	a5,153fc <__trailz_D2A+0x16>
   1540a:	00e57663          	bgeu	a0,a4,15416 <__trailz_D2A+0x30>
   1540e:	0068                	addi	a0,sp,12
   15410:	c63e                	sw	a5,12(sp)
   15412:	2451                	jal	15696 <__lo0bits>
   15414:	942a                	add	s0,s0,a0
   15416:	40f2                	lw	ra,28(sp)
   15418:	8522                	mv	a0,s0
   1541a:	4462                	lw	s0,24(sp)
   1541c:	6105                	addi	sp,sp,32
   1541e:	8082                	ret

00015420 <_Balloc>:
   15420:	417c                	lw	a5,68(a0)
   15422:	1141                	addi	sp,sp,-16
   15424:	c422                	sw	s0,8(sp)
   15426:	c226                	sw	s1,4(sp)
   15428:	c606                	sw	ra,12(sp)
   1542a:	842a                	mv	s0,a0
   1542c:	84ae                	mv	s1,a1
   1542e:	c38d                	beqz	a5,15450 <_Balloc+0x30>
   15430:	00249713          	slli	a4,s1,0x2
   15434:	97ba                	add	a5,a5,a4
   15436:	4388                	lw	a0,0(a5)
   15438:	c515                	beqz	a0,15464 <_Balloc+0x44>
   1543a:	4118                	lw	a4,0(a0)
   1543c:	c398                	sw	a4,0(a5)
   1543e:	00052823          	sw	zero,16(a0)
   15442:	00052623          	sw	zero,12(a0)
   15446:	40b2                	lw	ra,12(sp)
   15448:	4422                	lw	s0,8(sp)
   1544a:	4492                	lw	s1,4(sp)
   1544c:	0141                	addi	sp,sp,16
   1544e:	8082                	ret
   15450:	02100613          	li	a2,33
   15454:	4591                	li	a1,4
   15456:	3a8010ef          	jal	167fe <_calloc_r>
   1545a:	c068                	sw	a0,68(s0)
   1545c:	87aa                	mv	a5,a0
   1545e:	f969                	bnez	a0,15430 <_Balloc+0x10>
   15460:	4501                	li	a0,0
   15462:	b7d5                	j	15446 <_Balloc+0x26>
   15464:	c04a                	sw	s2,0(sp)
   15466:	4905                	li	s2,1
   15468:	00991933          	sll	s2,s2,s1
   1546c:	00590613          	addi	a2,s2,5
   15470:	060a                	slli	a2,a2,0x2
   15472:	4585                	li	a1,1
   15474:	8522                	mv	a0,s0
   15476:	388010ef          	jal	167fe <_calloc_r>
   1547a:	c511                	beqz	a0,15486 <_Balloc+0x66>
   1547c:	01252423          	sw	s2,8(a0)
   15480:	c144                	sw	s1,4(a0)
   15482:	4902                	lw	s2,0(sp)
   15484:	bf6d                	j	1543e <_Balloc+0x1e>
   15486:	4902                	lw	s2,0(sp)
   15488:	4501                	li	a0,0
   1548a:	bf75                	j	15446 <_Balloc+0x26>

0001548c <_Bfree>:
   1548c:	c981                	beqz	a1,1549c <_Bfree+0x10>
   1548e:	41d8                	lw	a4,4(a1)
   15490:	417c                	lw	a5,68(a0)
   15492:	070a                	slli	a4,a4,0x2
   15494:	97ba                	add	a5,a5,a4
   15496:	4398                	lw	a4,0(a5)
   15498:	c198                	sw	a4,0(a1)
   1549a:	c38c                	sw	a1,0(a5)
   1549c:	8082                	ret

0001549e <__multadd>:
   1549e:	1101                	addi	sp,sp,-32
   154a0:	ca26                	sw	s1,20(sp)
   154a2:	4984                	lw	s1,16(a1)
   154a4:	6341                	lui	t1,0x10
   154a6:	cc22                	sw	s0,24(sp)
   154a8:	c84a                	sw	s2,16(sp)
   154aa:	c64e                	sw	s3,12(sp)
   154ac:	ce06                	sw	ra,28(sp)
   154ae:	892e                	mv	s2,a1
   154b0:	89aa                	mv	s3,a0
   154b2:	8436                	mv	s0,a3
   154b4:	01458813          	addi	a6,a1,20
   154b8:	4881                	li	a7,0
   154ba:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   154bc:	00082783          	lw	a5,0(a6)
   154c0:	0811                	addi	a6,a6,4
   154c2:	0885                	addi	a7,a7,1
   154c4:	0067f733          	and	a4,a5,t1
   154c8:	02c70733          	mul	a4,a4,a2
   154cc:	0107d693          	srli	a3,a5,0x10
   154d0:	02c686b3          	mul	a3,a3,a2
   154d4:	008707b3          	add	a5,a4,s0
   154d8:	0107d713          	srli	a4,a5,0x10
   154dc:	0067f7b3          	and	a5,a5,t1
   154e0:	96ba                	add	a3,a3,a4
   154e2:	01069713          	slli	a4,a3,0x10
   154e6:	97ba                	add	a5,a5,a4
   154e8:	fef82e23          	sw	a5,-4(a6)
   154ec:	0106d413          	srli	s0,a3,0x10
   154f0:	fc98c6e3          	blt	a7,s1,154bc <__multadd+0x1e>
   154f4:	cc09                	beqz	s0,1550e <__multadd+0x70>
   154f6:	00892783          	lw	a5,8(s2)
   154fa:	02f4d263          	bge	s1,a5,1551e <__multadd+0x80>
   154fe:	00448793          	addi	a5,s1,4
   15502:	078a                	slli	a5,a5,0x2
   15504:	97ca                	add	a5,a5,s2
   15506:	c3c0                	sw	s0,4(a5)
   15508:	0485                	addi	s1,s1,1
   1550a:	00992823          	sw	s1,16(s2)
   1550e:	40f2                	lw	ra,28(sp)
   15510:	4462                	lw	s0,24(sp)
   15512:	44d2                	lw	s1,20(sp)
   15514:	49b2                	lw	s3,12(sp)
   15516:	854a                	mv	a0,s2
   15518:	4942                	lw	s2,16(sp)
   1551a:	6105                	addi	sp,sp,32
   1551c:	8082                	ret
   1551e:	00492583          	lw	a1,4(s2)
   15522:	854e                	mv	a0,s3
   15524:	c452                	sw	s4,8(sp)
   15526:	0585                	addi	a1,a1,1
   15528:	3de5                	jal	15420 <_Balloc>
   1552a:	8a2a                	mv	s4,a0
   1552c:	c121                	beqz	a0,1556c <__multadd+0xce>
   1552e:	01092603          	lw	a2,16(s2)
   15532:	00c90593          	addi	a1,s2,12
   15536:	0531                	addi	a0,a0,12
   15538:	0609                	addi	a2,a2,2
   1553a:	060a                	slli	a2,a2,0x2
   1553c:	f4efe0ef          	jal	13c8a <memcpy>
   15540:	00492703          	lw	a4,4(s2)
   15544:	0449a783          	lw	a5,68(s3)
   15548:	070a                	slli	a4,a4,0x2
   1554a:	97ba                	add	a5,a5,a4
   1554c:	4398                	lw	a4,0(a5)
   1554e:	00e92023          	sw	a4,0(s2)
   15552:	0127a023          	sw	s2,0(a5)
   15556:	00448793          	addi	a5,s1,4
   1555a:	8952                	mv	s2,s4
   1555c:	078a                	slli	a5,a5,0x2
   1555e:	97ca                	add	a5,a5,s2
   15560:	4a22                	lw	s4,8(sp)
   15562:	0485                	addi	s1,s1,1
   15564:	c3c0                	sw	s0,4(a5)
   15566:	00992823          	sw	s1,16(s2)
   1556a:	b755                	j	1550e <__multadd+0x70>
   1556c:	66e9                	lui	a3,0x1a
   1556e:	6569                	lui	a0,0x1a
   15570:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   15574:	4601                	li	a2,0
   15576:	0ba00593          	li	a1,186
   1557a:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   1557e:	23c010ef          	jal	167ba <__assert_func>

00015582 <__s2b>:
   15582:	1101                	addi	sp,sp,-32
   15584:	cc22                	sw	s0,24(sp)
   15586:	ca26                	sw	s1,20(sp)
   15588:	c84a                	sw	s2,16(sp)
   1558a:	c64e                	sw	s3,12(sp)
   1558c:	c452                	sw	s4,8(sp)
   1558e:	89b6                	mv	s3,a3
   15590:	47a5                	li	a5,9
   15592:	06a1                	addi	a3,a3,8
   15594:	ce06                	sw	ra,28(sp)
   15596:	02f6c6b3          	div	a3,a3,a5
   1559a:	892a                	mv	s2,a0
   1559c:	842e                	mv	s0,a1
   1559e:	8a32                	mv	s4,a2
   155a0:	84ba                	mv	s1,a4
   155a2:	0937d263          	bge	a5,s3,15626 <__s2b+0xa4>
   155a6:	4785                	li	a5,1
   155a8:	4581                	li	a1,0
   155aa:	0786                	slli	a5,a5,0x1
   155ac:	0585                	addi	a1,a1,1
   155ae:	fed7cee3          	blt	a5,a3,155aa <__s2b+0x28>
   155b2:	854a                	mv	a0,s2
   155b4:	35b5                	jal	15420 <_Balloc>
   155b6:	85aa                	mv	a1,a0
   155b8:	c92d                	beqz	a0,1562a <__s2b+0xa8>
   155ba:	4785                	li	a5,1
   155bc:	c91c                	sw	a5,16(a0)
   155be:	c944                	sw	s1,20(a0)
   155c0:	47a5                	li	a5,9
   155c2:	0547df63          	bge	a5,s4,15620 <__s2b+0x9e>
   155c6:	c256                	sw	s5,4(sp)
   155c8:	00940a93          	addi	s5,s0,9
   155cc:	84d6                	mv	s1,s5
   155ce:	9452                	add	s0,s0,s4
   155d0:	0004c683          	lbu	a3,0(s1)
   155d4:	4629                	li	a2,10
   155d6:	854a                	mv	a0,s2
   155d8:	fd068693          	addi	a3,a3,-48
   155dc:	35c9                	jal	1549e <__multadd>
   155de:	0485                	addi	s1,s1,1
   155e0:	85aa                	mv	a1,a0
   155e2:	fe8497e3          	bne	s1,s0,155d0 <__s2b+0x4e>
   155e6:	ff8a0413          	addi	s0,s4,-8
   155ea:	9456                	add	s0,s0,s5
   155ec:	4a92                	lw	s5,4(sp)
   155ee:	033a5063          	bge	s4,s3,1560e <__s2b+0x8c>
   155f2:	414989b3          	sub	s3,s3,s4
   155f6:	99a2                	add	s3,s3,s0
   155f8:	00044683          	lbu	a3,0(s0)
   155fc:	4629                	li	a2,10
   155fe:	854a                	mv	a0,s2
   15600:	fd068693          	addi	a3,a3,-48
   15604:	3d69                	jal	1549e <__multadd>
   15606:	0405                	addi	s0,s0,1
   15608:	85aa                	mv	a1,a0
   1560a:	ff3417e3          	bne	s0,s3,155f8 <__s2b+0x76>
   1560e:	40f2                	lw	ra,28(sp)
   15610:	4462                	lw	s0,24(sp)
   15612:	44d2                	lw	s1,20(sp)
   15614:	4942                	lw	s2,16(sp)
   15616:	49b2                	lw	s3,12(sp)
   15618:	4a22                	lw	s4,8(sp)
   1561a:	852e                	mv	a0,a1
   1561c:	6105                	addi	sp,sp,32
   1561e:	8082                	ret
   15620:	0429                	addi	s0,s0,10
   15622:	4a25                	li	s4,9
   15624:	b7e9                	j	155ee <__s2b+0x6c>
   15626:	4581                	li	a1,0
   15628:	b769                	j	155b2 <__s2b+0x30>
   1562a:	66e9                	lui	a3,0x1a
   1562c:	6569                	lui	a0,0x1a
   1562e:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   15632:	4601                	li	a2,0
   15634:	0d300593          	li	a1,211
   15638:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   1563c:	c256                	sw	s5,4(sp)
   1563e:	17c010ef          	jal	167ba <__assert_func>

00015642 <__hi0bits>:
   15642:	87aa                	mv	a5,a0
   15644:	6741                	lui	a4,0x10
   15646:	4501                	li	a0,0
   15648:	00e7f463          	bgeu	a5,a4,15650 <__hi0bits+0xe>
   1564c:	07c2                	slli	a5,a5,0x10
   1564e:	4541                	li	a0,16
   15650:	01000737          	lui	a4,0x1000
   15654:	00e7f463          	bgeu	a5,a4,1565c <__hi0bits+0x1a>
   15658:	0521                	addi	a0,a0,8
   1565a:	07a2                	slli	a5,a5,0x8
   1565c:	10000737          	lui	a4,0x10000
   15660:	00e7f463          	bgeu	a5,a4,15668 <__hi0bits+0x26>
   15664:	0511                	addi	a0,a0,4
   15666:	0792                	slli	a5,a5,0x4
   15668:	40000737          	lui	a4,0x40000
   1566c:	00e7e763          	bltu	a5,a4,1567a <__hi0bits+0x38>
   15670:	fff7c793          	not	a5,a5
   15674:	83fd                	srli	a5,a5,0x1f
   15676:	953e                	add	a0,a0,a5
   15678:	8082                	ret
   1567a:	078a                	slli	a5,a5,0x2
   1567c:	0007c963          	bltz	a5,1568e <__hi0bits+0x4c>
   15680:	00179713          	slli	a4,a5,0x1
   15684:	00074763          	bltz	a4,15692 <__hi0bits+0x50>
   15688:	02000513          	li	a0,32
   1568c:	8082                	ret
   1568e:	0509                	addi	a0,a0,2
   15690:	8082                	ret
   15692:	050d                	addi	a0,a0,3
   15694:	8082                	ret

00015696 <__lo0bits>:
   15696:	411c                	lw	a5,0(a0)
   15698:	872a                	mv	a4,a0
   1569a:	0077f693          	andi	a3,a5,7
   1569e:	ce81                	beqz	a3,156b6 <__lo0bits+0x20>
   156a0:	0017f693          	andi	a3,a5,1
   156a4:	4501                	li	a0,0
   156a6:	ee95                	bnez	a3,156e2 <__lo0bits+0x4c>
   156a8:	0027f693          	andi	a3,a5,2
   156ac:	c6b5                	beqz	a3,15718 <__lo0bits+0x82>
   156ae:	8385                	srli	a5,a5,0x1
   156b0:	c31c                	sw	a5,0(a4)
   156b2:	4505                	li	a0,1
   156b4:	8082                	ret
   156b6:	01079693          	slli	a3,a5,0x10
   156ba:	82c1                	srli	a3,a3,0x10
   156bc:	4501                	li	a0,0
   156be:	c6b9                	beqz	a3,1570c <__lo0bits+0x76>
   156c0:	0ff7f693          	zext.b	a3,a5
   156c4:	ce95                	beqz	a3,15700 <__lo0bits+0x6a>
   156c6:	00f7f693          	andi	a3,a5,15
   156ca:	c68d                	beqz	a3,156f4 <__lo0bits+0x5e>
   156cc:	0037f693          	andi	a3,a5,3
   156d0:	ce81                	beqz	a3,156e8 <__lo0bits+0x52>
   156d2:	0017f693          	andi	a3,a5,1
   156d6:	e699                	bnez	a3,156e4 <__lo0bits+0x4e>
   156d8:	8385                	srli	a5,a5,0x1
   156da:	0505                	addi	a0,a0,1
   156dc:	e781                	bnez	a5,156e4 <__lo0bits+0x4e>
   156de:	02000513          	li	a0,32
   156e2:	8082                	ret
   156e4:	c31c                	sw	a5,0(a4)
   156e6:	8082                	ret
   156e8:	8389                	srli	a5,a5,0x2
   156ea:	0017f693          	andi	a3,a5,1
   156ee:	0509                	addi	a0,a0,2
   156f0:	faf5                	bnez	a3,156e4 <__lo0bits+0x4e>
   156f2:	b7dd                	j	156d8 <__lo0bits+0x42>
   156f4:	8391                	srli	a5,a5,0x4
   156f6:	0037f693          	andi	a3,a5,3
   156fa:	0511                	addi	a0,a0,4
   156fc:	faf9                	bnez	a3,156d2 <__lo0bits+0x3c>
   156fe:	b7ed                	j	156e8 <__lo0bits+0x52>
   15700:	83a1                	srli	a5,a5,0x8
   15702:	00f7f693          	andi	a3,a5,15
   15706:	0521                	addi	a0,a0,8
   15708:	f2f1                	bnez	a3,156cc <__lo0bits+0x36>
   1570a:	b7ed                	j	156f4 <__lo0bits+0x5e>
   1570c:	83c1                	srli	a5,a5,0x10
   1570e:	0ff7f693          	zext.b	a3,a5
   15712:	4541                	li	a0,16
   15714:	facd                	bnez	a3,156c6 <__lo0bits+0x30>
   15716:	b7ed                	j	15700 <__lo0bits+0x6a>
   15718:	8389                	srli	a5,a5,0x2
   1571a:	c31c                	sw	a5,0(a4)
   1571c:	4509                	li	a0,2
   1571e:	8082                	ret

00015720 <__i2b>:
   15720:	417c                	lw	a5,68(a0)
   15722:	1141                	addi	sp,sp,-16
   15724:	c422                	sw	s0,8(sp)
   15726:	c226                	sw	s1,4(sp)
   15728:	c606                	sw	ra,12(sp)
   1572a:	842a                	mv	s0,a0
   1572c:	84ae                	mv	s1,a1
   1572e:	cf99                	beqz	a5,1574c <__i2b+0x2c>
   15730:	43c8                	lw	a0,4(a5)
   15732:	c121                	beqz	a0,15772 <__i2b+0x52>
   15734:	4118                	lw	a4,0(a0)
   15736:	c3d8                	sw	a4,4(a5)
   15738:	40b2                	lw	ra,12(sp)
   1573a:	4422                	lw	s0,8(sp)
   1573c:	4785                	li	a5,1
   1573e:	c944                	sw	s1,20(a0)
   15740:	00052623          	sw	zero,12(a0)
   15744:	c91c                	sw	a5,16(a0)
   15746:	4492                	lw	s1,4(sp)
   15748:	0141                	addi	sp,sp,16
   1574a:	8082                	ret
   1574c:	02100613          	li	a2,33
   15750:	4591                	li	a1,4
   15752:	0ac010ef          	jal	167fe <_calloc_r>
   15756:	c068                	sw	a0,68(s0)
   15758:	87aa                	mv	a5,a0
   1575a:	f979                	bnez	a0,15730 <__i2b+0x10>
   1575c:	66e9                	lui	a3,0x1a
   1575e:	6569                	lui	a0,0x1a
   15760:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   15764:	4601                	li	a2,0
   15766:	14500593          	li	a1,325
   1576a:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   1576e:	04c010ef          	jal	167ba <__assert_func>
   15772:	4671                	li	a2,28
   15774:	4585                	li	a1,1
   15776:	8522                	mv	a0,s0
   15778:	086010ef          	jal	167fe <_calloc_r>
   1577c:	d165                	beqz	a0,1575c <__i2b+0x3c>
   1577e:	4785                	li	a5,1
   15780:	c15c                	sw	a5,4(a0)
   15782:	4789                	li	a5,2
   15784:	c51c                	sw	a5,8(a0)
   15786:	bf4d                	j	15738 <__i2b+0x18>

00015788 <__multiply>:
   15788:	1101                	addi	sp,sp,-32
   1578a:	c84a                	sw	s2,16(sp)
   1578c:	c64e                	sw	s3,12(sp)
   1578e:	0105a903          	lw	s2,16(a1)
   15792:	01062983          	lw	s3,16(a2)
   15796:	ca26                	sw	s1,20(sp)
   15798:	c452                	sw	s4,8(sp)
   1579a:	ce06                	sw	ra,28(sp)
   1579c:	cc22                	sw	s0,24(sp)
   1579e:	8a2e                	mv	s4,a1
   157a0:	84b2                	mv	s1,a2
   157a2:	01394763          	blt	s2,s3,157b0 <__multiply+0x28>
   157a6:	874e                	mv	a4,s3
   157a8:	84ae                	mv	s1,a1
   157aa:	89ca                	mv	s3,s2
   157ac:	8a32                	mv	s4,a2
   157ae:	893a                	mv	s2,a4
   157b0:	449c                	lw	a5,8(s1)
   157b2:	40cc                	lw	a1,4(s1)
   157b4:	01298433          	add	s0,s3,s2
   157b8:	0087a7b3          	slt	a5,a5,s0
   157bc:	95be                	add	a1,a1,a5
   157be:	c63ff0ef          	jal	15420 <_Balloc>
   157c2:	14050363          	beqz	a0,15908 <__multiply+0x180>
   157c6:	01450313          	addi	t1,a0,20
   157ca:	00241893          	slli	a7,s0,0x2
   157ce:	989a                	add	a7,a7,t1
   157d0:	879a                	mv	a5,t1
   157d2:	01137763          	bgeu	t1,a7,157e0 <__multiply+0x58>
   157d6:	0007a023          	sw	zero,0(a5)
   157da:	0791                	addi	a5,a5,4
   157dc:	ff17ede3          	bltu	a5,a7,157d6 <__multiply+0x4e>
   157e0:	014a0813          	addi	a6,s4,20
   157e4:	00291e13          	slli	t3,s2,0x2
   157e8:	01448e93          	addi	t4,s1,20
   157ec:	00299593          	slli	a1,s3,0x2
   157f0:	9e42                	add	t3,t3,a6
   157f2:	95f6                	add	a1,a1,t4
   157f4:	0fc87163          	bgeu	a6,t3,158d6 <__multiply+0x14e>
   157f8:	01548793          	addi	a5,s1,21
   157fc:	4f11                	li	t5,4
   157fe:	0ef5fe63          	bgeu	a1,a5,158fa <__multiply+0x172>
   15802:	66c1                	lui	a3,0x10
   15804:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   15806:	a809                	j	15818 <__multiply+0x90>
   15808:	010fdf93          	srli	t6,t6,0x10
   1580c:	060f9863          	bnez	t6,1587c <__multiply+0xf4>
   15810:	0811                	addi	a6,a6,4
   15812:	0311                	addi	t1,t1,4
   15814:	0dc87163          	bgeu	a6,t3,158d6 <__multiply+0x14e>
   15818:	00082f83          	lw	t6,0(a6)
   1581c:	00dff3b3          	and	t2,t6,a3
   15820:	fe0384e3          	beqz	t2,15808 <__multiply+0x80>
   15824:	829a                	mv	t0,t1
   15826:	8ff6                	mv	t6,t4
   15828:	4481                	li	s1,0
   1582a:	000fa783          	lw	a5,0(t6)
   1582e:	0002a603          	lw	a2,0(t0) # 10cf0 <memset+0x8e>
   15832:	0291                	addi	t0,t0,4
   15834:	00d7f733          	and	a4,a5,a3
   15838:	02770733          	mul	a4,a4,t2
   1583c:	83c1                	srli	a5,a5,0x10
   1583e:	00d67933          	and	s2,a2,a3
   15842:	8241                	srli	a2,a2,0x10
   15844:	0f91                	addi	t6,t6,4
   15846:	027787b3          	mul	a5,a5,t2
   1584a:	974a                	add	a4,a4,s2
   1584c:	9726                	add	a4,a4,s1
   1584e:	01075493          	srli	s1,a4,0x10
   15852:	8f75                	and	a4,a4,a3
   15854:	97b2                	add	a5,a5,a2
   15856:	97a6                	add	a5,a5,s1
   15858:	01079613          	slli	a2,a5,0x10
   1585c:	8f51                	or	a4,a4,a2
   1585e:	fee2ae23          	sw	a4,-4(t0)
   15862:	0107d493          	srli	s1,a5,0x10
   15866:	fcbfe2e3          	bltu	t6,a1,1582a <__multiply+0xa2>
   1586a:	01e307b3          	add	a5,t1,t5
   1586e:	c384                	sw	s1,0(a5)
   15870:	00082f83          	lw	t6,0(a6)
   15874:	010fdf93          	srli	t6,t6,0x10
   15878:	f80f8ce3          	beqz	t6,15810 <__multiply+0x88>
   1587c:	00032703          	lw	a4,0(t1)
   15880:	829a                	mv	t0,t1
   15882:	8676                	mv	a2,t4
   15884:	84ba                	mv	s1,a4
   15886:	4381                	li	t2,0
   15888:	421c                	lw	a5,0(a2)
   1588a:	0104d993          	srli	s3,s1,0x10
   1588e:	8f75                	and	a4,a4,a3
   15890:	8ff5                	and	a5,a5,a3
   15892:	03f787b3          	mul	a5,a5,t6
   15896:	0042a483          	lw	s1,4(t0)
   1589a:	0291                	addi	t0,t0,4
   1589c:	0611                	addi	a2,a2,4
   1589e:	00d4f933          	and	s2,s1,a3
   158a2:	979e                	add	a5,a5,t2
   158a4:	97ce                	add	a5,a5,s3
   158a6:	01079393          	slli	t2,a5,0x10
   158aa:	00e3e733          	or	a4,t2,a4
   158ae:	fee2ae23          	sw	a4,-4(t0)
   158b2:	ffe65703          	lhu	a4,-2(a2)
   158b6:	83c1                	srli	a5,a5,0x10
   158b8:	03f70733          	mul	a4,a4,t6
   158bc:	974a                	add	a4,a4,s2
   158be:	973e                	add	a4,a4,a5
   158c0:	01075393          	srli	t2,a4,0x10
   158c4:	fcb662e3          	bltu	a2,a1,15888 <__multiply+0x100>
   158c8:	01e307b3          	add	a5,t1,t5
   158cc:	c398                	sw	a4,0(a5)
   158ce:	0811                	addi	a6,a6,4
   158d0:	0311                	addi	t1,t1,4
   158d2:	f5c863e3          	bltu	a6,t3,15818 <__multiply+0x90>
   158d6:	00804563          	bgtz	s0,158e0 <__multiply+0x158>
   158da:	a039                	j	158e8 <__multiply+0x160>
   158dc:	147d                	addi	s0,s0,-1
   158de:	c409                	beqz	s0,158e8 <__multiply+0x160>
   158e0:	ffc8a783          	lw	a5,-4(a7)
   158e4:	18f1                	addi	a7,a7,-4
   158e6:	dbfd                	beqz	a5,158dc <__multiply+0x154>
   158e8:	40f2                	lw	ra,28(sp)
   158ea:	c900                	sw	s0,16(a0)
   158ec:	4462                	lw	s0,24(sp)
   158ee:	44d2                	lw	s1,20(sp)
   158f0:	4942                	lw	s2,16(sp)
   158f2:	49b2                	lw	s3,12(sp)
   158f4:	4a22                	lw	s4,8(sp)
   158f6:	6105                	addi	sp,sp,32
   158f8:	8082                	ret
   158fa:	409587b3          	sub	a5,a1,s1
   158fe:	17ad                	addi	a5,a5,-21
   15900:	9bf1                	andi	a5,a5,-4
   15902:	00478f13          	addi	t5,a5,4
   15906:	bdf5                	j	15802 <__multiply+0x7a>
   15908:	66e9                	lui	a3,0x1a
   1590a:	6569                	lui	a0,0x1a
   1590c:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   15910:	4601                	li	a2,0
   15912:	16200593          	li	a1,354
   15916:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   1591a:	6a1000ef          	jal	167ba <__assert_func>

0001591e <__pow5mult>:
   1591e:	1101                	addi	sp,sp,-32
   15920:	cc22                	sw	s0,24(sp)
   15922:	c84a                	sw	s2,16(sp)
   15924:	c64e                	sw	s3,12(sp)
   15926:	ce06                	sw	ra,28(sp)
   15928:	00367793          	andi	a5,a2,3
   1592c:	8432                	mv	s0,a2
   1592e:	89aa                	mv	s3,a0
   15930:	892e                	mv	s2,a1
   15932:	ebad                	bnez	a5,159a4 <__pow5mult+0x86>
   15934:	8409                	srai	s0,s0,0x2
   15936:	c431                	beqz	s0,15982 <__pow5mult+0x64>
   15938:	ca26                	sw	s1,20(sp)
   1593a:	0409a483          	lw	s1,64(s3)
   1593e:	ccbd                	beqz	s1,159bc <__pow5mult+0x9e>
   15940:	00147793          	andi	a5,s0,1
   15944:	eb89                	bnez	a5,15956 <__pow5mult+0x38>
   15946:	8405                	srai	s0,s0,0x1
   15948:	cc05                	beqz	s0,15980 <__pow5mult+0x62>
   1594a:	4088                	lw	a0,0(s1)
   1594c:	c131                	beqz	a0,15990 <__pow5mult+0x72>
   1594e:	84aa                	mv	s1,a0
   15950:	00147793          	andi	a5,s0,1
   15954:	dbed                	beqz	a5,15946 <__pow5mult+0x28>
   15956:	8626                	mv	a2,s1
   15958:	85ca                	mv	a1,s2
   1595a:	854e                	mv	a0,s3
   1595c:	e2dff0ef          	jal	15788 <__multiply>
   15960:	00090d63          	beqz	s2,1597a <__pow5mult+0x5c>
   15964:	00492703          	lw	a4,4(s2)
   15968:	0449a783          	lw	a5,68(s3)
   1596c:	070a                	slli	a4,a4,0x2
   1596e:	97ba                	add	a5,a5,a4
   15970:	4398                	lw	a4,0(a5)
   15972:	00e92023          	sw	a4,0(s2)
   15976:	0127a023          	sw	s2,0(a5)
   1597a:	8405                	srai	s0,s0,0x1
   1597c:	892a                	mv	s2,a0
   1597e:	f471                	bnez	s0,1594a <__pow5mult+0x2c>
   15980:	44d2                	lw	s1,20(sp)
   15982:	40f2                	lw	ra,28(sp)
   15984:	4462                	lw	s0,24(sp)
   15986:	49b2                	lw	s3,12(sp)
   15988:	854a                	mv	a0,s2
   1598a:	4942                	lw	s2,16(sp)
   1598c:	6105                	addi	sp,sp,32
   1598e:	8082                	ret
   15990:	8626                	mv	a2,s1
   15992:	85a6                	mv	a1,s1
   15994:	854e                	mv	a0,s3
   15996:	df3ff0ef          	jal	15788 <__multiply>
   1599a:	c088                	sw	a0,0(s1)
   1599c:	00052023          	sw	zero,0(a0)
   159a0:	84aa                	mv	s1,a0
   159a2:	b77d                	j	15950 <__pow5mult+0x32>
   159a4:	17fd                	addi	a5,a5,-1
   159a6:	6769                	lui	a4,0x1a
   159a8:	60070713          	addi	a4,a4,1536 # 1a600 <p05.0>
   159ac:	078a                	slli	a5,a5,0x2
   159ae:	97ba                	add	a5,a5,a4
   159b0:	4390                	lw	a2,0(a5)
   159b2:	4681                	li	a3,0
   159b4:	aebff0ef          	jal	1549e <__multadd>
   159b8:	892a                	mv	s2,a0
   159ba:	bfad                	j	15934 <__pow5mult+0x16>
   159bc:	4585                	li	a1,1
   159be:	854e                	mv	a0,s3
   159c0:	a61ff0ef          	jal	15420 <_Balloc>
   159c4:	84aa                	mv	s1,a0
   159c6:	c919                	beqz	a0,159dc <__pow5mult+0xbe>
   159c8:	27100793          	li	a5,625
   159cc:	c95c                	sw	a5,20(a0)
   159ce:	4785                	li	a5,1
   159d0:	c91c                	sw	a5,16(a0)
   159d2:	04a9a023          	sw	a0,64(s3)
   159d6:	00052023          	sw	zero,0(a0)
   159da:	b79d                	j	15940 <__pow5mult+0x22>
   159dc:	66e9                	lui	a3,0x1a
   159de:	6569                	lui	a0,0x1a
   159e0:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   159e4:	4601                	li	a2,0
   159e6:	14500593          	li	a1,325
   159ea:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   159ee:	5cd000ef          	jal	167ba <__assert_func>

000159f2 <__lshift>:
   159f2:	1101                	addi	sp,sp,-32
   159f4:	c256                	sw	s5,4(sp)
   159f6:	0105aa83          	lw	s5,16(a1)
   159fa:	459c                	lw	a5,8(a1)
   159fc:	c64e                	sw	s3,12(sp)
   159fe:	40565993          	srai	s3,a2,0x5
   15a02:	9ace                	add	s5,s5,s3
   15a04:	cc22                	sw	s0,24(sp)
   15a06:	ca26                	sw	s1,20(sp)
   15a08:	c84a                	sw	s2,16(sp)
   15a0a:	c452                	sw	s4,8(sp)
   15a0c:	ce06                	sw	ra,28(sp)
   15a0e:	001a8913          	addi	s2,s5,1
   15a12:	84ae                	mv	s1,a1
   15a14:	8432                	mv	s0,a2
   15a16:	41cc                	lw	a1,4(a1)
   15a18:	8a2a                	mv	s4,a0
   15a1a:	0127d663          	bge	a5,s2,15a26 <__lshift+0x34>
   15a1e:	0786                	slli	a5,a5,0x1
   15a20:	0585                	addi	a1,a1,1
   15a22:	ff27cee3          	blt	a5,s2,15a1e <__lshift+0x2c>
   15a26:	8552                	mv	a0,s4
   15a28:	9f9ff0ef          	jal	15420 <_Balloc>
   15a2c:	cd5d                	beqz	a0,15aea <__lshift+0xf8>
   15a2e:	01450813          	addi	a6,a0,20
   15a32:	01305e63          	blez	s3,15a4e <__lshift+0x5c>
   15a36:	0995                	addi	s3,s3,5
   15a38:	098a                	slli	s3,s3,0x2
   15a3a:	01350733          	add	a4,a0,s3
   15a3e:	87c2                	mv	a5,a6
   15a40:	0791                	addi	a5,a5,4
   15a42:	fe07ae23          	sw	zero,-4(a5)
   15a46:	fee79de3          	bne	a5,a4,15a40 <__lshift+0x4e>
   15a4a:	19b1                	addi	s3,s3,-20
   15a4c:	984e                	add	a6,a6,s3
   15a4e:	0104a883          	lw	a7,16(s1)
   15a52:	01448793          	addi	a5,s1,20
   15a56:	01f47613          	andi	a2,s0,31
   15a5a:	088a                	slli	a7,a7,0x2
   15a5c:	98be                	add	a7,a7,a5
   15a5e:	c63d                	beqz	a2,15acc <__lshift+0xda>
   15a60:	02000593          	li	a1,32
   15a64:	8d91                	sub	a1,a1,a2
   15a66:	8342                	mv	t1,a6
   15a68:	4681                	li	a3,0
   15a6a:	4398                	lw	a4,0(a5)
   15a6c:	0311                	addi	t1,t1,4
   15a6e:	0791                	addi	a5,a5,4
   15a70:	00c71733          	sll	a4,a4,a2
   15a74:	8f55                	or	a4,a4,a3
   15a76:	fee32e23          	sw	a4,-4(t1)
   15a7a:	ffc7a683          	lw	a3,-4(a5)
   15a7e:	00b6d6b3          	srl	a3,a3,a1
   15a82:	ff17e4e3          	bltu	a5,a7,15a6a <__lshift+0x78>
   15a86:	01548793          	addi	a5,s1,21
   15a8a:	4711                	li	a4,4
   15a8c:	00f8e863          	bltu	a7,a5,15a9c <__lshift+0xaa>
   15a90:	409887b3          	sub	a5,a7,s1
   15a94:	17ad                	addi	a5,a5,-21
   15a96:	9bf1                	andi	a5,a5,-4
   15a98:	00478713          	addi	a4,a5,4
   15a9c:	983a                	add	a6,a6,a4
   15a9e:	00d82023          	sw	a3,0(a6)
   15aa2:	e291                	bnez	a3,15aa6 <__lshift+0xb4>
   15aa4:	8956                	mv	s2,s5
   15aa6:	40d8                	lw	a4,4(s1)
   15aa8:	044a2783          	lw	a5,68(s4)
   15aac:	40f2                	lw	ra,28(sp)
   15aae:	070a                	slli	a4,a4,0x2
   15ab0:	97ba                	add	a5,a5,a4
   15ab2:	4398                	lw	a4,0(a5)
   15ab4:	01252823          	sw	s2,16(a0)
   15ab8:	4462                	lw	s0,24(sp)
   15aba:	c098                	sw	a4,0(s1)
   15abc:	c384                	sw	s1,0(a5)
   15abe:	4942                	lw	s2,16(sp)
   15ac0:	44d2                	lw	s1,20(sp)
   15ac2:	49b2                	lw	s3,12(sp)
   15ac4:	4a22                	lw	s4,8(sp)
   15ac6:	4a92                	lw	s5,4(sp)
   15ac8:	6105                	addi	sp,sp,32
   15aca:	8082                	ret
   15acc:	4398                	lw	a4,0(a5)
   15ace:	0791                	addi	a5,a5,4
   15ad0:	0811                	addi	a6,a6,4
   15ad2:	fee82e23          	sw	a4,-4(a6)
   15ad6:	fd17f7e3          	bgeu	a5,a7,15aa4 <__lshift+0xb2>
   15ada:	4398                	lw	a4,0(a5)
   15adc:	0791                	addi	a5,a5,4
   15ade:	0811                	addi	a6,a6,4
   15ae0:	fee82e23          	sw	a4,-4(a6)
   15ae4:	ff17e4e3          	bltu	a5,a7,15acc <__lshift+0xda>
   15ae8:	bf75                	j	15aa4 <__lshift+0xb2>
   15aea:	66e9                	lui	a3,0x1a
   15aec:	6569                	lui	a0,0x1a
   15aee:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   15af2:	4601                	li	a2,0
   15af4:	1de00593          	li	a1,478
   15af8:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   15afc:	4bf000ef          	jal	167ba <__assert_func>

00015b00 <__mcmp>:
   15b00:	4918                	lw	a4,16(a0)
   15b02:	499c                	lw	a5,16(a1)
   15b04:	882a                	mv	a6,a0
   15b06:	40f70533          	sub	a0,a4,a5
   15b0a:	02f71863          	bne	a4,a5,15b3a <__mcmp+0x3a>
   15b0e:	078a                	slli	a5,a5,0x2
   15b10:	0851                	addi	a6,a6,20
   15b12:	05d1                	addi	a1,a1,20
   15b14:	00f80733          	add	a4,a6,a5
   15b18:	97ae                	add	a5,a5,a1
   15b1a:	a019                	j	15b20 <__mcmp+0x20>
   15b1c:	00e87f63          	bgeu	a6,a4,15b3a <__mcmp+0x3a>
   15b20:	ffc72603          	lw	a2,-4(a4)
   15b24:	ffc7a683          	lw	a3,-4(a5)
   15b28:	1771                	addi	a4,a4,-4
   15b2a:	17f1                	addi	a5,a5,-4
   15b2c:	fed608e3          	beq	a2,a3,15b1c <__mcmp+0x1c>
   15b30:	4505                	li	a0,1
   15b32:	00d67463          	bgeu	a2,a3,15b3a <__mcmp+0x3a>
   15b36:	557d                	li	a0,-1
   15b38:	8082                	ret
   15b3a:	8082                	ret

00015b3c <__mdiff>:
   15b3c:	4998                	lw	a4,16(a1)
   15b3e:	4a1c                	lw	a5,16(a2)
   15b40:	1141                	addi	sp,sp,-16
   15b42:	c422                	sw	s0,8(sp)
   15b44:	c226                	sw	s1,4(sp)
   15b46:	c606                	sw	ra,12(sp)
   15b48:	c04a                	sw	s2,0(sp)
   15b4a:	842e                	mv	s0,a1
   15b4c:	84b2                	mv	s1,a2
   15b4e:	40f706b3          	sub	a3,a4,a5
   15b52:	12f71863          	bne	a4,a5,15c82 <__mdiff+0x146>
   15b56:	00279693          	slli	a3,a5,0x2
   15b5a:	01458613          	addi	a2,a1,20
   15b5e:	01448713          	addi	a4,s1,20
   15b62:	00d607b3          	add	a5,a2,a3
   15b66:	9736                	add	a4,a4,a3
   15b68:	a019                	j	15b6e <__mdiff+0x32>
   15b6a:	12f67463          	bgeu	a2,a5,15c92 <__mdiff+0x156>
   15b6e:	ffc7a583          	lw	a1,-4(a5)
   15b72:	ffc72683          	lw	a3,-4(a4)
   15b76:	17f1                	addi	a5,a5,-4
   15b78:	1771                	addi	a4,a4,-4
   15b7a:	fed588e3          	beq	a1,a3,15b6a <__mdiff+0x2e>
   15b7e:	4905                	li	s2,1
   15b80:	00d5e663          	bltu	a1,a3,15b8c <__mdiff+0x50>
   15b84:	87a6                	mv	a5,s1
   15b86:	4901                	li	s2,0
   15b88:	84a2                	mv	s1,s0
   15b8a:	843e                	mv	s0,a5
   15b8c:	40cc                	lw	a1,4(s1)
   15b8e:	893ff0ef          	jal	15420 <_Balloc>
   15b92:	12050763          	beqz	a0,15cc0 <__mdiff+0x184>
   15b96:	0104a883          	lw	a7,16(s1)
   15b9a:	01042283          	lw	t0,16(s0)
   15b9e:	01448f93          	addi	t6,s1,20
   15ba2:	00289313          	slli	t1,a7,0x2
   15ba6:	01440813          	addi	a6,s0,20
   15baa:	028a                	slli	t0,t0,0x2
   15bac:	01450593          	addi	a1,a0,20
   15bb0:	6e41                	lui	t3,0x10
   15bb2:	01252623          	sw	s2,12(a0)
   15bb6:	937e                	add	t1,t1,t6
   15bb8:	92c2                	add	t0,t0,a6
   15bba:	8f2e                	mv	t5,a1
   15bbc:	8efe                	mv	t4,t6
   15bbe:	4681                	li	a3,0
   15bc0:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   15bc2:	000ea703          	lw	a4,0(t4)
   15bc6:	00082603          	lw	a2,0(a6)
   15bca:	0f11                	addi	t5,t5,4
   15bcc:	01c777b3          	and	a5,a4,t3
   15bd0:	01c673b3          	and	t2,a2,t3
   15bd4:	407787b3          	sub	a5,a5,t2
   15bd8:	97b6                	add	a5,a5,a3
   15bda:	8341                	srli	a4,a4,0x10
   15bdc:	8241                	srli	a2,a2,0x10
   15bde:	4107d693          	srai	a3,a5,0x10
   15be2:	8f11                	sub	a4,a4,a2
   15be4:	9736                	add	a4,a4,a3
   15be6:	01071693          	slli	a3,a4,0x10
   15bea:	01c7f7b3          	and	a5,a5,t3
   15bee:	8fd5                	or	a5,a5,a3
   15bf0:	0811                	addi	a6,a6,4
   15bf2:	feff2e23          	sw	a5,-4(t5)
   15bf6:	0e91                	addi	t4,t4,4
   15bf8:	41075693          	srai	a3,a4,0x10
   15bfc:	fc5863e3          	bltu	a6,t0,15bc2 <__mdiff+0x86>
   15c00:	01540713          	addi	a4,s0,21
   15c04:	40828433          	sub	s0,t0,s0
   15c08:	142d                	addi	s0,s0,-21
   15c0a:	00e2b2b3          	sltu	t0,t0,a4
   15c0e:	0012cf13          	xori	t5,t0,1
   15c12:	8009                	srli	s0,s0,0x2
   15c14:	4711                	li	a4,4
   15c16:	06028a63          	beqz	t0,15c8a <__mdiff+0x14e>
   15c1a:	9fba                	add	t6,t6,a4
   15c1c:	00e58833          	add	a6,a1,a4
   15c20:	6ec1                	lui	t4,0x10
   15c22:	8e42                	mv	t3,a6
   15c24:	867e                	mv	a2,t6
   15c26:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   15c28:	086ff363          	bgeu	t6,t1,15cae <__mdiff+0x172>
   15c2c:	421c                	lw	a5,0(a2)
   15c2e:	0e11                	addi	t3,t3,4
   15c30:	0611                	addi	a2,a2,4
   15c32:	01d7f733          	and	a4,a5,t4
   15c36:	9736                	add	a4,a4,a3
   15c38:	0107d593          	srli	a1,a5,0x10
   15c3c:	8741                	srai	a4,a4,0x10
   15c3e:	972e                	add	a4,a4,a1
   15c40:	97b6                	add	a5,a5,a3
   15c42:	01d7f7b3          	and	a5,a5,t4
   15c46:	01071693          	slli	a3,a4,0x10
   15c4a:	8fd5                	or	a5,a5,a3
   15c4c:	fefe2e23          	sw	a5,-4(t3)
   15c50:	41075693          	srai	a3,a4,0x10
   15c54:	fc666ce3          	bltu	a2,t1,15c2c <__mdiff+0xf0>
   15c58:	137d                	addi	t1,t1,-1
   15c5a:	41f30333          	sub	t1,t1,t6
   15c5e:	ffc37313          	andi	t1,t1,-4
   15c62:	00680733          	add	a4,a6,t1
   15c66:	e791                	bnez	a5,15c72 <__mdiff+0x136>
   15c68:	ffc72783          	lw	a5,-4(a4)
   15c6c:	18fd                	addi	a7,a7,-1
   15c6e:	1771                	addi	a4,a4,-4
   15c70:	dfe5                	beqz	a5,15c68 <__mdiff+0x12c>
   15c72:	40b2                	lw	ra,12(sp)
   15c74:	4422                	lw	s0,8(sp)
   15c76:	01152823          	sw	a7,16(a0)
   15c7a:	4492                	lw	s1,4(sp)
   15c7c:	4902                	lw	s2,0(sp)
   15c7e:	0141                	addi	sp,sp,16
   15c80:	8082                	ret
   15c82:	4905                	li	s2,1
   15c84:	f006d0e3          	bgez	a3,15b84 <__mdiff+0x48>
   15c88:	b711                	j	15b8c <__mdiff+0x50>
   15c8a:	00140713          	addi	a4,s0,1
   15c8e:	070a                	slli	a4,a4,0x2
   15c90:	b769                	j	15c1a <__mdiff+0xde>
   15c92:	4581                	li	a1,0
   15c94:	f8cff0ef          	jal	15420 <_Balloc>
   15c98:	cd1d                	beqz	a0,15cd6 <__mdiff+0x19a>
   15c9a:	40b2                	lw	ra,12(sp)
   15c9c:	4422                	lw	s0,8(sp)
   15c9e:	4785                	li	a5,1
   15ca0:	c91c                	sw	a5,16(a0)
   15ca2:	00052a23          	sw	zero,20(a0)
   15ca6:	4492                	lw	s1,4(sp)
   15ca8:	4902                	lw	s2,0(sp)
   15caa:	0141                	addi	sp,sp,16
   15cac:	8082                	ret
   15cae:	4701                	li	a4,0
   15cb0:	000f1463          	bnez	t5,15cb8 <__mdiff+0x17c>
   15cb4:	972e                	add	a4,a4,a1
   15cb6:	bf45                	j	15c66 <__mdiff+0x12a>
   15cb8:	00241713          	slli	a4,s0,0x2
   15cbc:	972e                	add	a4,a4,a1
   15cbe:	b765                	j	15c66 <__mdiff+0x12a>
   15cc0:	66e9                	lui	a3,0x1a
   15cc2:	6569                	lui	a0,0x1a
   15cc4:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   15cc8:	4601                	li	a2,0
   15cca:	24500593          	li	a1,581
   15cce:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   15cd2:	2e9000ef          	jal	167ba <__assert_func>
   15cd6:	66e9                	lui	a3,0x1a
   15cd8:	6569                	lui	a0,0x1a
   15cda:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   15cde:	4601                	li	a2,0
   15ce0:	23700593          	li	a1,567
   15ce4:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   15ce8:	2d3000ef          	jal	167ba <__assert_func>

00015cec <__ulp>:
   15cec:	1141                	addi	sp,sp,-16
   15cee:	a42a                	fsd	fa0,8(sp)
   15cf0:	4732                	lw	a4,12(sp)
   15cf2:	7ff007b7          	lui	a5,0x7ff00
   15cf6:	8ff9                	and	a5,a5,a4
   15cf8:	fcc00737          	lui	a4,0xfcc00
   15cfc:	97ba                	add	a5,a5,a4
   15cfe:	4701                	li	a4,0
   15d00:	00f05763          	blez	a5,15d0e <__ulp+0x22>
   15d04:	c43a                	sw	a4,8(sp)
   15d06:	c63e                	sw	a5,12(sp)
   15d08:	2522                	fld	fa0,8(sp)
   15d0a:	0141                	addi	sp,sp,16
   15d0c:	8082                	ret
   15d0e:	40f007b3          	neg	a5,a5
   15d12:	87d1                	srai	a5,a5,0x14
   15d14:	474d                	li	a4,19
   15d16:	00f74c63          	blt	a4,a5,15d2e <__ulp+0x42>
   15d1a:	00080737          	lui	a4,0x80
   15d1e:	40f757b3          	sra	a5,a4,a5
   15d22:	4701                	li	a4,0
   15d24:	c43a                	sw	a4,8(sp)
   15d26:	c63e                	sw	a5,12(sp)
   15d28:	2522                	fld	fa0,8(sp)
   15d2a:	0141                	addi	sp,sp,16
   15d2c:	8082                	ret
   15d2e:	17b1                	addi	a5,a5,-20 # 7fefffec <__BSS_END__+0x7fee4590>
   15d30:	46f9                	li	a3,30
   15d32:	4705                	li	a4,1
   15d34:	00f6c663          	blt	a3,a5,15d40 <__ulp+0x54>
   15d38:	80000737          	lui	a4,0x80000
   15d3c:	00f75733          	srl	a4,a4,a5
   15d40:	4781                	li	a5,0
   15d42:	c43a                	sw	a4,8(sp)
   15d44:	c63e                	sw	a5,12(sp)
   15d46:	2522                	fld	fa0,8(sp)
   15d48:	0141                	addi	sp,sp,16
   15d4a:	8082                	ret

00015d4c <__b2d>:
   15d4c:	7179                	addi	sp,sp,-48
   15d4e:	d226                	sw	s1,36(sp)
   15d50:	4904                	lw	s1,16(a0)
   15d52:	d422                	sw	s0,40(sp)
   15d54:	01450413          	addi	s0,a0,20
   15d58:	048a                	slli	s1,s1,0x2
   15d5a:	94a2                	add	s1,s1,s0
   15d5c:	d04a                	sw	s2,32(sp)
   15d5e:	ffc4a903          	lw	s2,-4(s1)
   15d62:	ce4e                	sw	s3,28(sp)
   15d64:	cc52                	sw	s4,24(sp)
   15d66:	854a                	mv	a0,s2
   15d68:	89ae                	mv	s3,a1
   15d6a:	d606                	sw	ra,44(sp)
   15d6c:	8d7ff0ef          	jal	15642 <__hi0bits>
   15d70:	02000713          	li	a4,32
   15d74:	40a707b3          	sub	a5,a4,a0
   15d78:	00f9a023          	sw	a5,0(s3)
   15d7c:	47a9                	li	a5,10
   15d7e:	ffc48a13          	addi	s4,s1,-4
   15d82:	06a7dc63          	bge	a5,a0,15dfa <__b2d+0xae>
   15d86:	ff550613          	addi	a2,a0,-11
   15d8a:	03447d63          	bgeu	s0,s4,15dc4 <__b2d+0x78>
   15d8e:	ff84a783          	lw	a5,-8(s1)
   15d92:	c629                	beqz	a2,15ddc <__b2d+0x90>
   15d94:	40c706b3          	sub	a3,a4,a2
   15d98:	00d7d733          	srl	a4,a5,a3
   15d9c:	00c91933          	sll	s2,s2,a2
   15da0:	00e96933          	or	s2,s2,a4
   15da4:	ff848593          	addi	a1,s1,-8
   15da8:	3ff00737          	lui	a4,0x3ff00
   15dac:	00e96733          	or	a4,s2,a4
   15db0:	00c797b3          	sll	a5,a5,a2
   15db4:	02b47863          	bgeu	s0,a1,15de4 <__b2d+0x98>
   15db8:	ff44a603          	lw	a2,-12(s1)
   15dbc:	00d656b3          	srl	a3,a2,a3
   15dc0:	8fd5                	or	a5,a5,a3
   15dc2:	a00d                	j	15de4 <__b2d+0x98>
   15dc4:	47ad                	li	a5,11
   15dc6:	00f50a63          	beq	a0,a5,15dda <__b2d+0x8e>
   15dca:	00c91933          	sll	s2,s2,a2
   15dce:	3ff00737          	lui	a4,0x3ff00
   15dd2:	00e96733          	or	a4,s2,a4
   15dd6:	4781                	li	a5,0
   15dd8:	a031                	j	15de4 <__b2d+0x98>
   15dda:	4781                	li	a5,0
   15ddc:	3ff00737          	lui	a4,0x3ff00
   15de0:	00e96733          	or	a4,s2,a4
   15de4:	50b2                	lw	ra,44(sp)
   15de6:	5422                	lw	s0,40(sp)
   15de8:	c43e                	sw	a5,8(sp)
   15dea:	c63a                	sw	a4,12(sp)
   15dec:	2522                	fld	fa0,8(sp)
   15dee:	5492                	lw	s1,36(sp)
   15df0:	5902                	lw	s2,32(sp)
   15df2:	49f2                	lw	s3,28(sp)
   15df4:	4a62                	lw	s4,24(sp)
   15df6:	6145                	addi	sp,sp,48
   15df8:	8082                	ret
   15dfa:	46ad                	li	a3,11
   15dfc:	8e89                	sub	a3,a3,a0
   15dfe:	3ff007b7          	lui	a5,0x3ff00
   15e02:	00d95733          	srl	a4,s2,a3
   15e06:	8f5d                	or	a4,a4,a5
   15e08:	4781                	li	a5,0
   15e0a:	01447663          	bgeu	s0,s4,15e16 <__b2d+0xca>
   15e0e:	ff84a783          	lw	a5,-8(s1)
   15e12:	00d7d7b3          	srl	a5,a5,a3
   15e16:	0555                	addi	a0,a0,21
   15e18:	00a91933          	sll	s2,s2,a0
   15e1c:	00f967b3          	or	a5,s2,a5
   15e20:	b7d1                	j	15de4 <__b2d+0x98>

00015e22 <__d2b>:
   15e22:	7139                	addi	sp,sp,-64
   15e24:	d452                	sw	s4,40(sp)
   15e26:	a42a                	fsd	fa0,8(sp)
   15e28:	8a2e                	mv	s4,a1
   15e2a:	4585                	li	a1,1
   15e2c:	da26                	sw	s1,52(sp)
   15e2e:	d64e                	sw	s3,44(sp)
   15e30:	d256                	sw	s5,36(sp)
   15e32:	de06                	sw	ra,60(sp)
   15e34:	dc22                	sw	s0,56(sp)
   15e36:	d84a                	sw	s2,48(sp)
   15e38:	4aa2                	lw	s5,8(sp)
   15e3a:	44b2                	lw	s1,12(sp)
   15e3c:	89b2                	mv	s3,a2
   15e3e:	de2ff0ef          	jal	15420 <_Balloc>
   15e42:	c955                	beqz	a0,15ef6 <__d2b+0xd4>
   15e44:	00100737          	lui	a4,0x100
   15e48:	0144d913          	srli	s2,s1,0x14
   15e4c:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe45a3>
   15e50:	7ff97913          	andi	s2,s2,2047
   15e54:	842a                	mv	s0,a0
   15e56:	8fe5                	and	a5,a5,s1
   15e58:	00090363          	beqz	s2,15e5e <__d2b+0x3c>
   15e5c:	8fd9                	or	a5,a5,a4
   15e5e:	ce3e                	sw	a5,28(sp)
   15e60:	040a9263          	bnez	s5,15ea4 <__d2b+0x82>
   15e64:	0868                	addi	a0,sp,28
   15e66:	831ff0ef          	jal	15696 <__lo0bits>
   15e6a:	4772                	lw	a4,28(sp)
   15e6c:	4485                	li	s1,1
   15e6e:	c804                	sw	s1,16(s0)
   15e70:	c858                	sw	a4,20(s0)
   15e72:	02050793          	addi	a5,a0,32
   15e76:	06090063          	beqz	s2,15ed6 <__d2b+0xb4>
   15e7a:	bcd90913          	addi	s2,s2,-1075
   15e7e:	993e                	add	s2,s2,a5
   15e80:	03500493          	li	s1,53
   15e84:	012a2023          	sw	s2,0(s4)
   15e88:	40f48533          	sub	a0,s1,a5
   15e8c:	00a9a023          	sw	a0,0(s3)
   15e90:	50f2                	lw	ra,60(sp)
   15e92:	8522                	mv	a0,s0
   15e94:	5462                	lw	s0,56(sp)
   15e96:	54d2                	lw	s1,52(sp)
   15e98:	5942                	lw	s2,48(sp)
   15e9a:	59b2                	lw	s3,44(sp)
   15e9c:	5a22                	lw	s4,40(sp)
   15e9e:	5a92                	lw	s5,36(sp)
   15ea0:	6121                	addi	sp,sp,64
   15ea2:	8082                	ret
   15ea4:	0828                	addi	a0,sp,24
   15ea6:	cc56                	sw	s5,24(sp)
   15ea8:	feeff0ef          	jal	15696 <__lo0bits>
   15eac:	4772                	lw	a4,28(sp)
   15eae:	87aa                	mv	a5,a0
   15eb0:	c129                	beqz	a0,15ef2 <__d2b+0xd0>
   15eb2:	4662                	lw	a2,24(sp)
   15eb4:	02000693          	li	a3,32
   15eb8:	8e89                	sub	a3,a3,a0
   15eba:	00d716b3          	sll	a3,a4,a3
   15ebe:	00a75733          	srl	a4,a4,a0
   15ec2:	8ed1                	or	a3,a3,a2
   15ec4:	ce3a                	sw	a4,28(sp)
   15ec6:	00e034b3          	snez	s1,a4
   15eca:	0485                	addi	s1,s1,1
   15ecc:	c854                	sw	a3,20(s0)
   15ece:	cc18                	sw	a4,24(s0)
   15ed0:	c804                	sw	s1,16(s0)
   15ed2:	fa0914e3          	bnez	s2,15e7a <__d2b+0x58>
   15ed6:	00249713          	slli	a4,s1,0x2
   15eda:	9722                	add	a4,a4,s0
   15edc:	4b08                	lw	a0,16(a4)
   15ede:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee4172>
   15ee2:	00fa2023          	sw	a5,0(s4)
   15ee6:	f5cff0ef          	jal	15642 <__hi0bits>
   15eea:	0496                	slli	s1,s1,0x5
   15eec:	40a48533          	sub	a0,s1,a0
   15ef0:	bf71                	j	15e8c <__d2b+0x6a>
   15ef2:	46e2                	lw	a3,24(sp)
   15ef4:	bfc9                	j	15ec6 <__d2b+0xa4>
   15ef6:	66e9                	lui	a3,0x1a
   15ef8:	6569                	lui	a0,0x1a
   15efa:	18c68693          	addi	a3,a3,396 # 1a18c <__clzsi2+0x116>
   15efe:	4601                	li	a2,0
   15f00:	30f00593          	li	a1,783
   15f04:	20050513          	addi	a0,a0,512 # 1a200 <__clzsi2+0x18a>
   15f08:	0b3000ef          	jal	167ba <__assert_func>

00015f0c <__ratio>:
   15f0c:	7179                	addi	sp,sp,-48
   15f0e:	d422                	sw	s0,40(sp)
   15f10:	842e                	mv	s0,a1
   15f12:	082c                	addi	a1,sp,24
   15f14:	d606                	sw	ra,44(sp)
   15f16:	d226                	sw	s1,36(sp)
   15f18:	84aa                	mv	s1,a0
   15f1a:	e33ff0ef          	jal	15d4c <__b2d>
   15f1e:	086c                	addi	a1,sp,28
   15f20:	8522                	mv	a0,s0
   15f22:	a02a                	fsd	fa0,0(sp)
   15f24:	a42a                	fsd	fa0,8(sp)
   15f26:	e27ff0ef          	jal	15d4c <__b2d>
   15f2a:	4818                	lw	a4,16(s0)
   15f2c:	489c                	lw	a5,16(s1)
   15f2e:	45f2                	lw	a1,28(sp)
   15f30:	a02a                	fsd	fa0,0(sp)
   15f32:	8f99                	sub	a5,a5,a4
   15f34:	4762                	lw	a4,24(sp)
   15f36:	0796                	slli	a5,a5,0x5
   15f38:	8f0d                	sub	a4,a4,a1
   15f3a:	97ba                	add	a5,a5,a4
   15f3c:	00f05f63          	blez	a5,15f5a <__ratio+0x4e>
   15f40:	46b2                	lw	a3,12(sp)
   15f42:	07d2                	slli	a5,a5,0x14
   15f44:	2702                	fld	fa4,0(sp)
   15f46:	97b6                	add	a5,a5,a3
   15f48:	c63e                	sw	a5,12(sp)
   15f4a:	27a2                	fld	fa5,8(sp)
   15f4c:	50b2                	lw	ra,44(sp)
   15f4e:	5422                	lw	s0,40(sp)
   15f50:	5492                	lw	s1,36(sp)
   15f52:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15f56:	6145                	addi	sp,sp,48
   15f58:	8082                	ret
   15f5a:	4692                	lw	a3,4(sp)
   15f5c:	07d2                	slli	a5,a5,0x14
   15f5e:	27a2                	fld	fa5,8(sp)
   15f60:	40f687b3          	sub	a5,a3,a5
   15f64:	c23e                	sw	a5,4(sp)
   15f66:	2702                	fld	fa4,0(sp)
   15f68:	50b2                	lw	ra,44(sp)
   15f6a:	5422                	lw	s0,40(sp)
   15f6c:	5492                	lw	s1,36(sp)
   15f6e:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15f72:	6145                	addi	sp,sp,48
   15f74:	8082                	ret

00015f76 <_mprec_log10>:
   15f76:	47dd                	li	a5,23
   15f78:	00a7db63          	bge	a5,a0,15f8e <_mprec_log10+0x18>
   15f7c:	ed81b507          	fld	fa0,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   15f80:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   15f84:	157d                	addi	a0,a0,-1
   15f86:	12f57553          	fmul.d	fa0,fa0,fa5
   15f8a:	fd6d                	bnez	a0,15f84 <_mprec_log10+0xe>
   15f8c:	8082                	ret
   15f8e:	67e9                	lui	a5,0x1a
   15f90:	050e                	slli	a0,a0,0x3
   15f92:	66078793          	addi	a5,a5,1632 # 1a660 <__mprec_tens>
   15f96:	97aa                	add	a5,a5,a0
   15f98:	2388                	fld	fa0,0(a5)
   15f9a:	8082                	ret

00015f9c <__copybits>:
   15f9c:	4a14                	lw	a3,16(a2)
   15f9e:	15fd                	addi	a1,a1,-1
   15fa0:	8595                	srai	a1,a1,0x5
   15fa2:	0585                	addi	a1,a1,1
   15fa4:	01460793          	addi	a5,a2,20
   15fa8:	068a                	slli	a3,a3,0x2
   15faa:	058a                	slli	a1,a1,0x2
   15fac:	96be                	add	a3,a3,a5
   15fae:	95aa                	add	a1,a1,a0
   15fb0:	02d7f163          	bgeu	a5,a3,15fd2 <__copybits+0x36>
   15fb4:	872a                	mv	a4,a0
   15fb6:	0007a803          	lw	a6,0(a5)
   15fba:	0791                	addi	a5,a5,4
   15fbc:	0711                	addi	a4,a4,4
   15fbe:	ff072e23          	sw	a6,-4(a4)
   15fc2:	fed7eae3          	bltu	a5,a3,15fb6 <__copybits+0x1a>
   15fc6:	40c687b3          	sub	a5,a3,a2
   15fca:	17ad                	addi	a5,a5,-21
   15fcc:	9bf1                	andi	a5,a5,-4
   15fce:	0791                	addi	a5,a5,4
   15fd0:	953e                	add	a0,a0,a5
   15fd2:	00b57763          	bgeu	a0,a1,15fe0 <__copybits+0x44>
   15fd6:	0511                	addi	a0,a0,4
   15fd8:	fe052e23          	sw	zero,-4(a0)
   15fdc:	feb56de3          	bltu	a0,a1,15fd6 <__copybits+0x3a>
   15fe0:	8082                	ret

00015fe2 <__any_on>:
   15fe2:	4918                	lw	a4,16(a0)
   15fe4:	4055d613          	srai	a2,a1,0x5
   15fe8:	01450693          	addi	a3,a0,20
   15fec:	00c75d63          	bge	a4,a2,16006 <__any_on+0x24>
   15ff0:	070a                	slli	a4,a4,0x2
   15ff2:	00e687b3          	add	a5,a3,a4
   15ff6:	02f6f863          	bgeu	a3,a5,16026 <__any_on+0x44>
   15ffa:	ffc7a703          	lw	a4,-4(a5)
   15ffe:	17f1                	addi	a5,a5,-4
   16000:	db7d                	beqz	a4,15ff6 <__any_on+0x14>
   16002:	4505                	li	a0,1
   16004:	8082                	ret
   16006:	00261793          	slli	a5,a2,0x2
   1600a:	97b6                	add	a5,a5,a3
   1600c:	fee655e3          	bge	a2,a4,15ff6 <__any_on+0x14>
   16010:	89fd                	andi	a1,a1,31
   16012:	d1f5                	beqz	a1,15ff6 <__any_on+0x14>
   16014:	4390                	lw	a2,0(a5)
   16016:	4505                	li	a0,1
   16018:	00b65733          	srl	a4,a2,a1
   1601c:	00b71733          	sll	a4,a4,a1
   16020:	fce60be3          	beq	a2,a4,15ff6 <__any_on+0x14>
   16024:	8082                	ret
   16026:	4501                	li	a0,0
   16028:	8082                	ret

0001602a <_realloc_r>:
   1602a:	7179                	addi	sp,sp,-48
   1602c:	d226                	sw	s1,36(sp)
   1602e:	d606                	sw	ra,44(sp)
   16030:	84b2                	mv	s1,a2
   16032:	14058d63          	beqz	a1,1618c <_realloc_r+0x162>
   16036:	d422                	sw	s0,40(sp)
   16038:	d04a                	sw	s2,32(sp)
   1603a:	842e                	mv	s0,a1
   1603c:	ce4e                	sw	s3,28(sp)
   1603e:	ca56                	sw	s5,20(sp)
   16040:	cc52                	sw	s4,24(sp)
   16042:	892a                	mv	s2,a0
   16044:	e96fb0ef          	jal	116da <__malloc_lock>
   16048:	ffc42703          	lw	a4,-4(s0)
   1604c:	00b48793          	addi	a5,s1,11
   16050:	46d9                	li	a3,22
   16052:	ff840a93          	addi	s5,s0,-8
   16056:	ffc77993          	andi	s3,a4,-4
   1605a:	0af6ff63          	bgeu	a3,a5,16118 <_realloc_r+0xee>
   1605e:	ff87fa13          	andi	s4,a5,-8
   16062:	0a07ce63          	bltz	a5,1611e <_realloc_r+0xf4>
   16066:	0a9a6c63          	bltu	s4,s1,1611e <_realloc_r+0xf4>
   1606a:	0d49d563          	bge	s3,s4,16134 <_realloc_r+0x10a>
   1606e:	67ed                	lui	a5,0x1b
   16070:	c462                	sw	s8,8(sp)
   16072:	14078c13          	addi	s8,a5,320 # 1b140 <__malloc_av_>
   16076:	008c2603          	lw	a2,8(s8)
   1607a:	013a86b3          	add	a3,s5,s3
   1607e:	42dc                	lw	a5,4(a3)
   16080:	12d60e63          	beq	a2,a3,161bc <_realloc_r+0x192>
   16084:	ffe7f613          	andi	a2,a5,-2
   16088:	9636                	add	a2,a2,a3
   1608a:	4250                	lw	a2,4(a2)
   1608c:	8a05                	andi	a2,a2,1
   1608e:	e27d                	bnez	a2,16174 <_realloc_r+0x14a>
   16090:	9bf1                	andi	a5,a5,-4
   16092:	00f98633          	add	a2,s3,a5
   16096:	09465963          	bge	a2,s4,16128 <_realloc_r+0xfe>
   1609a:	8b05                	andi	a4,a4,1
   1609c:	e70d                	bnez	a4,160c6 <_realloc_r+0x9c>
   1609e:	c65e                	sw	s7,12(sp)
   160a0:	ff842b83          	lw	s7,-8(s0)
   160a4:	c85a                	sw	s6,16(sp)
   160a6:	417a8bb3          	sub	s7,s5,s7
   160aa:	004ba703          	lw	a4,4(s7)
   160ae:	9b71                	andi	a4,a4,-4
   160b0:	97ba                	add	a5,a5,a4
   160b2:	01378b33          	add	s6,a5,s3
   160b6:	234b5f63          	bge	s6,s4,162f4 <_realloc_r+0x2ca>
   160ba:	00e98b33          	add	s6,s3,a4
   160be:	1d4b5463          	bge	s6,s4,16286 <_realloc_r+0x25c>
   160c2:	4b42                	lw	s6,16(sp)
   160c4:	4bb2                	lw	s7,12(sp)
   160c6:	85a6                	mv	a1,s1
   160c8:	854a                	mv	a0,s2
   160ca:	86cfb0ef          	jal	11136 <_malloc_r>
   160ce:	84aa                	mv	s1,a0
   160d0:	2e050063          	beqz	a0,163b0 <_realloc_r+0x386>
   160d4:	ffc42783          	lw	a5,-4(s0)
   160d8:	ff850713          	addi	a4,a0,-8
   160dc:	9bf9                	andi	a5,a5,-2
   160de:	97d6                	add	a5,a5,s5
   160e0:	18e78d63          	beq	a5,a4,1627a <_realloc_r+0x250>
   160e4:	ffc98613          	addi	a2,s3,-4
   160e8:	02400793          	li	a5,36
   160ec:	20c7e063          	bltu	a5,a2,162ec <_realloc_r+0x2c2>
   160f0:	474d                	li	a4,19
   160f2:	16c76863          	bltu	a4,a2,16262 <_realloc_r+0x238>
   160f6:	87aa                	mv	a5,a0
   160f8:	8722                	mv	a4,s0
   160fa:	4314                	lw	a3,0(a4)
   160fc:	c394                	sw	a3,0(a5)
   160fe:	4354                	lw	a3,4(a4)
   16100:	c3d4                	sw	a3,4(a5)
   16102:	4718                	lw	a4,8(a4)
   16104:	c798                	sw	a4,8(a5)
   16106:	85a2                	mv	a1,s0
   16108:	854a                	mv	a0,s2
   1610a:	e0bfa0ef          	jal	10f14 <_free_r>
   1610e:	854a                	mv	a0,s2
   16110:	dccfb0ef          	jal	116dc <__malloc_unlock>
   16114:	4c22                	lw	s8,8(sp)
   16116:	a0a9                	j	16160 <_realloc_r+0x136>
   16118:	4a41                	li	s4,16
   1611a:	f49a78e3          	bgeu	s4,s1,1606a <_realloc_r+0x40>
   1611e:	47b1                	li	a5,12
   16120:	00f92023          	sw	a5,0(s2)
   16124:	4481                	li	s1,0
   16126:	a82d                	j	16160 <_realloc_r+0x136>
   16128:	46dc                	lw	a5,12(a3)
   1612a:	4698                	lw	a4,8(a3)
   1612c:	4c22                	lw	s8,8(sp)
   1612e:	89b2                	mv	s3,a2
   16130:	c75c                	sw	a5,12(a4)
   16132:	c798                	sw	a4,8(a5)
   16134:	004aa783          	lw	a5,4(s5)
   16138:	414986b3          	sub	a3,s3,s4
   1613c:	463d                	li	a2,15
   1613e:	8b85                	andi	a5,a5,1
   16140:	013a8733          	add	a4,s5,s3
   16144:	04d66a63          	bltu	a2,a3,16198 <_realloc_r+0x16e>
   16148:	0137e7b3          	or	a5,a5,s3
   1614c:	00faa223          	sw	a5,4(s5)
   16150:	435c                	lw	a5,4(a4)
   16152:	0017e793          	ori	a5,a5,1
   16156:	c35c                	sw	a5,4(a4)
   16158:	854a                	mv	a0,s2
   1615a:	d82fb0ef          	jal	116dc <__malloc_unlock>
   1615e:	84a2                	mv	s1,s0
   16160:	5422                	lw	s0,40(sp)
   16162:	50b2                	lw	ra,44(sp)
   16164:	5902                	lw	s2,32(sp)
   16166:	49f2                	lw	s3,28(sp)
   16168:	4a62                	lw	s4,24(sp)
   1616a:	4ad2                	lw	s5,20(sp)
   1616c:	8526                	mv	a0,s1
   1616e:	5492                	lw	s1,36(sp)
   16170:	6145                	addi	sp,sp,48
   16172:	8082                	ret
   16174:	8b05                	andi	a4,a4,1
   16176:	fb21                	bnez	a4,160c6 <_realloc_r+0x9c>
   16178:	c65e                	sw	s7,12(sp)
   1617a:	ff842b83          	lw	s7,-8(s0)
   1617e:	c85a                	sw	s6,16(sp)
   16180:	417a8bb3          	sub	s7,s5,s7
   16184:	004ba703          	lw	a4,4(s7)
   16188:	9b71                	andi	a4,a4,-4
   1618a:	bf05                	j	160ba <_realloc_r+0x90>
   1618c:	50b2                	lw	ra,44(sp)
   1618e:	5492                	lw	s1,36(sp)
   16190:	85b2                	mv	a1,a2
   16192:	6145                	addi	sp,sp,48
   16194:	fa3fa06f          	j	11136 <_malloc_r>
   16198:	0147e7b3          	or	a5,a5,s4
   1619c:	00faa223          	sw	a5,4(s5)
   161a0:	014a85b3          	add	a1,s5,s4
   161a4:	0016e693          	ori	a3,a3,1
   161a8:	c1d4                	sw	a3,4(a1)
   161aa:	435c                	lw	a5,4(a4)
   161ac:	05a1                	addi	a1,a1,8
   161ae:	854a                	mv	a0,s2
   161b0:	0017e793          	ori	a5,a5,1
   161b4:	c35c                	sw	a5,4(a4)
   161b6:	d5ffa0ef          	jal	10f14 <_free_r>
   161ba:	bf79                	j	16158 <_realloc_r+0x12e>
   161bc:	9bf1                	andi	a5,a5,-4
   161be:	013786b3          	add	a3,a5,s3
   161c2:	010a0613          	addi	a2,s4,16
   161c6:	1ac6db63          	bge	a3,a2,1637c <_realloc_r+0x352>
   161ca:	8b05                	andi	a4,a4,1
   161cc:	ee071de3          	bnez	a4,160c6 <_realloc_r+0x9c>
   161d0:	c65e                	sw	s7,12(sp)
   161d2:	ff842b83          	lw	s7,-8(s0)
   161d6:	c85a                	sw	s6,16(sp)
   161d8:	417a8bb3          	sub	s7,s5,s7
   161dc:	004ba703          	lw	a4,4(s7)
   161e0:	9b71                	andi	a4,a4,-4
   161e2:	97ba                	add	a5,a5,a4
   161e4:	01378b33          	add	s6,a5,s3
   161e8:	eccb49e3          	blt	s6,a2,160ba <_realloc_r+0x90>
   161ec:	00cba783          	lw	a5,12(s7)
   161f0:	008ba703          	lw	a4,8(s7)
   161f4:	ffc98613          	addi	a2,s3,-4
   161f8:	02400693          	li	a3,36
   161fc:	c75c                	sw	a5,12(a4)
   161fe:	c798                	sw	a4,8(a5)
   16200:	008b8493          	addi	s1,s7,8
   16204:	1cc6e563          	bltu	a3,a2,163ce <_realloc_r+0x3a4>
   16208:	474d                	li	a4,19
   1620a:	87a6                	mv	a5,s1
   1620c:	00c77e63          	bgeu	a4,a2,16228 <_realloc_r+0x1fe>
   16210:	4018                	lw	a4,0(s0)
   16212:	47ed                	li	a5,27
   16214:	00eba423          	sw	a4,8(s7)
   16218:	4058                	lw	a4,4(s0)
   1621a:	00eba623          	sw	a4,12(s7)
   1621e:	1ac7ed63          	bltu	a5,a2,163d8 <_realloc_r+0x3ae>
   16222:	0421                	addi	s0,s0,8
   16224:	010b8793          	addi	a5,s7,16
   16228:	4018                	lw	a4,0(s0)
   1622a:	c398                	sw	a4,0(a5)
   1622c:	4058                	lw	a4,4(s0)
   1622e:	c3d8                	sw	a4,4(a5)
   16230:	4418                	lw	a4,8(s0)
   16232:	c798                	sw	a4,8(a5)
   16234:	014b8733          	add	a4,s7,s4
   16238:	414b0b33          	sub	s6,s6,s4
   1623c:	00ec2423          	sw	a4,8(s8)
   16240:	001b6793          	ori	a5,s6,1
   16244:	c35c                	sw	a5,4(a4)
   16246:	004ba783          	lw	a5,4(s7)
   1624a:	854a                	mv	a0,s2
   1624c:	8b85                	andi	a5,a5,1
   1624e:	0147e7b3          	or	a5,a5,s4
   16252:	00fba223          	sw	a5,4(s7)
   16256:	c86fb0ef          	jal	116dc <__malloc_unlock>
   1625a:	4b42                	lw	s6,16(sp)
   1625c:	4bb2                	lw	s7,12(sp)
   1625e:	4c22                	lw	s8,8(sp)
   16260:	b701                	j	16160 <_realloc_r+0x136>
   16262:	4014                	lw	a3,0(s0)
   16264:	476d                	li	a4,27
   16266:	c114                	sw	a3,0(a0)
   16268:	4054                	lw	a3,4(s0)
   1626a:	c154                	sw	a3,4(a0)
   1626c:	0ec76d63          	bltu	a4,a2,16366 <_realloc_r+0x33c>
   16270:	00840713          	addi	a4,s0,8
   16274:	00850793          	addi	a5,a0,8
   16278:	b549                	j	160fa <_realloc_r+0xd0>
   1627a:	ffc52783          	lw	a5,-4(a0)
   1627e:	4c22                	lw	s8,8(sp)
   16280:	9bf1                	andi	a5,a5,-4
   16282:	99be                	add	s3,s3,a5
   16284:	bd45                	j	16134 <_realloc_r+0x10a>
   16286:	00cba783          	lw	a5,12(s7)
   1628a:	008ba703          	lw	a4,8(s7)
   1628e:	ffc98613          	addi	a2,s3,-4
   16292:	02400693          	li	a3,36
   16296:	c75c                	sw	a5,12(a4)
   16298:	c798                	sw	a4,8(a5)
   1629a:	008b8493          	addi	s1,s7,8
   1629e:	0ac6ef63          	bltu	a3,a2,1635c <_realloc_r+0x332>
   162a2:	474d                	li	a4,19
   162a4:	87a6                	mv	a5,s1
   162a6:	02c77663          	bgeu	a4,a2,162d2 <_realloc_r+0x2a8>
   162aa:	4018                	lw	a4,0(s0)
   162ac:	47ed                	li	a5,27
   162ae:	00eba423          	sw	a4,8(s7)
   162b2:	4058                	lw	a4,4(s0)
   162b4:	00eba623          	sw	a4,12(s7)
   162b8:	0ec7f863          	bgeu	a5,a2,163a8 <_realloc_r+0x37e>
   162bc:	441c                	lw	a5,8(s0)
   162be:	00fba823          	sw	a5,16(s7)
   162c2:	445c                	lw	a5,12(s0)
   162c4:	00fbaa23          	sw	a5,20(s7)
   162c8:	06d60f63          	beq	a2,a3,16346 <_realloc_r+0x31c>
   162cc:	0441                	addi	s0,s0,16
   162ce:	018b8793          	addi	a5,s7,24
   162d2:	4018                	lw	a4,0(s0)
   162d4:	c398                	sw	a4,0(a5)
   162d6:	4058                	lw	a4,4(s0)
   162d8:	c3d8                	sw	a4,4(a5)
   162da:	4418                	lw	a4,8(s0)
   162dc:	c798                	sw	a4,8(a5)
   162de:	89da                	mv	s3,s6
   162e0:	8ade                	mv	s5,s7
   162e2:	4b42                	lw	s6,16(sp)
   162e4:	4bb2                	lw	s7,12(sp)
   162e6:	4c22                	lw	s8,8(sp)
   162e8:	8426                	mv	s0,s1
   162ea:	b5a9                	j	16134 <_realloc_r+0x10a>
   162ec:	85a2                	mv	a1,s0
   162ee:	8d1fd0ef          	jal	13bbe <memmove>
   162f2:	bd11                	j	16106 <_realloc_r+0xdc>
   162f4:	46dc                	lw	a5,12(a3)
   162f6:	4698                	lw	a4,8(a3)
   162f8:	ffc98613          	addi	a2,s3,-4
   162fc:	02400693          	li	a3,36
   16300:	c75c                	sw	a5,12(a4)
   16302:	c798                	sw	a4,8(a5)
   16304:	008ba703          	lw	a4,8(s7)
   16308:	00cba783          	lw	a5,12(s7)
   1630c:	008b8493          	addi	s1,s7,8
   16310:	c75c                	sw	a5,12(a4)
   16312:	c798                	sw	a4,8(a5)
   16314:	04c6e463          	bltu	a3,a2,1635c <_realloc_r+0x332>
   16318:	474d                	li	a4,19
   1631a:	87a6                	mv	a5,s1
   1631c:	fac77be3          	bgeu	a4,a2,162d2 <_realloc_r+0x2a8>
   16320:	4018                	lw	a4,0(s0)
   16322:	47ed                	li	a5,27
   16324:	00eba423          	sw	a4,8(s7)
   16328:	4058                	lw	a4,4(s0)
   1632a:	00eba623          	sw	a4,12(s7)
   1632e:	06c7fd63          	bgeu	a5,a2,163a8 <_realloc_r+0x37e>
   16332:	4418                	lw	a4,8(s0)
   16334:	02400793          	li	a5,36
   16338:	00eba823          	sw	a4,16(s7)
   1633c:	4458                	lw	a4,12(s0)
   1633e:	00ebaa23          	sw	a4,20(s7)
   16342:	f8f615e3          	bne	a2,a5,162cc <_realloc_r+0x2a2>
   16346:	4818                	lw	a4,16(s0)
   16348:	020b8793          	addi	a5,s7,32
   1634c:	0461                	addi	s0,s0,24
   1634e:	00ebac23          	sw	a4,24(s7)
   16352:	ffc42703          	lw	a4,-4(s0)
   16356:	00ebae23          	sw	a4,28(s7)
   1635a:	bfa5                	j	162d2 <_realloc_r+0x2a8>
   1635c:	85a2                	mv	a1,s0
   1635e:	8526                	mv	a0,s1
   16360:	85ffd0ef          	jal	13bbe <memmove>
   16364:	bfad                	j	162de <_realloc_r+0x2b4>
   16366:	4418                	lw	a4,8(s0)
   16368:	c518                	sw	a4,8(a0)
   1636a:	4458                	lw	a4,12(s0)
   1636c:	c558                	sw	a4,12(a0)
   1636e:	04f60763          	beq	a2,a5,163bc <_realloc_r+0x392>
   16372:	01040713          	addi	a4,s0,16
   16376:	01050793          	addi	a5,a0,16
   1637a:	b341                	j	160fa <_realloc_r+0xd0>
   1637c:	9ad2                	add	s5,s5,s4
   1637e:	414686b3          	sub	a3,a3,s4
   16382:	015c2423          	sw	s5,8(s8)
   16386:	0016e793          	ori	a5,a3,1
   1638a:	00faa223          	sw	a5,4(s5)
   1638e:	ffc42783          	lw	a5,-4(s0)
   16392:	854a                	mv	a0,s2
   16394:	84a2                	mv	s1,s0
   16396:	8b85                	andi	a5,a5,1
   16398:	0147e7b3          	or	a5,a5,s4
   1639c:	fef42e23          	sw	a5,-4(s0)
   163a0:	b3cfb0ef          	jal	116dc <__malloc_unlock>
   163a4:	4c22                	lw	s8,8(sp)
   163a6:	bb6d                	j	16160 <_realloc_r+0x136>
   163a8:	0421                	addi	s0,s0,8
   163aa:	010b8793          	addi	a5,s7,16
   163ae:	b715                	j	162d2 <_realloc_r+0x2a8>
   163b0:	854a                	mv	a0,s2
   163b2:	b2afb0ef          	jal	116dc <__malloc_unlock>
   163b6:	4481                	li	s1,0
   163b8:	4c22                	lw	s8,8(sp)
   163ba:	b35d                	j	16160 <_realloc_r+0x136>
   163bc:	4814                	lw	a3,16(s0)
   163be:	01840713          	addi	a4,s0,24
   163c2:	01850793          	addi	a5,a0,24
   163c6:	c914                	sw	a3,16(a0)
   163c8:	4854                	lw	a3,20(s0)
   163ca:	c954                	sw	a3,20(a0)
   163cc:	b33d                	j	160fa <_realloc_r+0xd0>
   163ce:	85a2                	mv	a1,s0
   163d0:	8526                	mv	a0,s1
   163d2:	fecfd0ef          	jal	13bbe <memmove>
   163d6:	bdb9                	j	16234 <_realloc_r+0x20a>
   163d8:	441c                	lw	a5,8(s0)
   163da:	00fba823          	sw	a5,16(s7)
   163de:	445c                	lw	a5,12(s0)
   163e0:	00fbaa23          	sw	a5,20(s7)
   163e4:	00d60663          	beq	a2,a3,163f0 <_realloc_r+0x3c6>
   163e8:	0441                	addi	s0,s0,16
   163ea:	018b8793          	addi	a5,s7,24
   163ee:	bd2d                	j	16228 <_realloc_r+0x1fe>
   163f0:	4818                	lw	a4,16(s0)
   163f2:	020b8793          	addi	a5,s7,32
   163f6:	00ebac23          	sw	a4,24(s7)
   163fa:	4858                	lw	a4,20(s0)
   163fc:	0461                	addi	s0,s0,24
   163fe:	00ebae23          	sw	a4,28(s7)
   16402:	b51d                	j	16228 <_realloc_r+0x1fe>

00016404 <__smakebuf_r>:
   16404:	00c59783          	lh	a5,12(a1)
   16408:	7119                	addi	sp,sp,-128
   1640a:	dca2                	sw	s0,120(sp)
   1640c:	de86                	sw	ra,124(sp)
   1640e:	0027f713          	andi	a4,a5,2
   16412:	842e                	mv	s0,a1
   16414:	cb19                	beqz	a4,1642a <__smakebuf_r+0x26>
   16416:	04358793          	addi	a5,a1,67
   1641a:	c19c                	sw	a5,0(a1)
   1641c:	c99c                	sw	a5,16(a1)
   1641e:	4785                	li	a5,1
   16420:	c9dc                	sw	a5,20(a1)
   16422:	50f6                	lw	ra,124(sp)
   16424:	5466                	lw	s0,120(sp)
   16426:	6109                	addi	sp,sp,128
   16428:	8082                	ret
   1642a:	00e59583          	lh	a1,14(a1)
   1642e:	daa6                	sw	s1,116(sp)
   16430:	d8ca                	sw	s2,112(sp)
   16432:	d6ce                	sw	s3,108(sp)
   16434:	d4d2                	sw	s4,104(sp)
   16436:	84aa                	mv	s1,a0
   16438:	0605c263          	bltz	a1,1649c <__smakebuf_r+0x98>
   1643c:	0030                	addi	a2,sp,8
   1643e:	22fd                	jal	1662c <_fstat_r>
   16440:	04054c63          	bltz	a0,16498 <__smakebuf_r+0x94>
   16444:	47b2                	lw	a5,12(sp)
   16446:	693d                	lui	s2,0xf
   16448:	6985                	lui	s3,0x1
   1644a:	00f97933          	and	s2,s2,a5
   1644e:	77f9                	lui	a5,0xffffe
   16450:	993e                	add	s2,s2,a5
   16452:	00193913          	seqz	s2,s2
   16456:	40000a13          	li	s4,1024
   1645a:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   1645e:	85d2                	mv	a1,s4
   16460:	8526                	mv	a0,s1
   16462:	cd5fa0ef          	jal	11136 <_malloc_r>
   16466:	00c41783          	lh	a5,12(s0)
   1646a:	c539                	beqz	a0,164b8 <__smakebuf_r+0xb4>
   1646c:	0807e793          	ori	a5,a5,128
   16470:	c008                	sw	a0,0(s0)
   16472:	c808                	sw	a0,16(s0)
   16474:	00f41623          	sh	a5,12(s0)
   16478:	01442a23          	sw	s4,20(s0)
   1647c:	06091563          	bnez	s2,164e6 <__smakebuf_r+0xe2>
   16480:	0137e7b3          	or	a5,a5,s3
   16484:	50f6                	lw	ra,124(sp)
   16486:	00f41623          	sh	a5,12(s0)
   1648a:	5466                	lw	s0,120(sp)
   1648c:	54d6                	lw	s1,116(sp)
   1648e:	5946                	lw	s2,112(sp)
   16490:	59b6                	lw	s3,108(sp)
   16492:	5a26                	lw	s4,104(sp)
   16494:	6109                	addi	sp,sp,128
   16496:	8082                	ret
   16498:	00c41783          	lh	a5,12(s0)
   1649c:	0807f793          	andi	a5,a5,128
   164a0:	4901                	li	s2,0
   164a2:	cf95                	beqz	a5,164de <__smakebuf_r+0xda>
   164a4:	04000a13          	li	s4,64
   164a8:	85d2                	mv	a1,s4
   164aa:	8526                	mv	a0,s1
   164ac:	c8bfa0ef          	jal	11136 <_malloc_r>
   164b0:	00c41783          	lh	a5,12(s0)
   164b4:	4981                	li	s3,0
   164b6:	f95d                	bnez	a0,1646c <__smakebuf_r+0x68>
   164b8:	2007f713          	andi	a4,a5,512
   164bc:	ef0d                	bnez	a4,164f6 <__smakebuf_r+0xf2>
   164be:	9bf1                	andi	a5,a5,-4
   164c0:	0027e793          	ori	a5,a5,2
   164c4:	04340713          	addi	a4,s0,67
   164c8:	00f41623          	sh	a5,12(s0)
   164cc:	4785                	li	a5,1
   164ce:	54d6                	lw	s1,116(sp)
   164d0:	5946                	lw	s2,112(sp)
   164d2:	59b6                	lw	s3,108(sp)
   164d4:	5a26                	lw	s4,104(sp)
   164d6:	c018                	sw	a4,0(s0)
   164d8:	c818                	sw	a4,16(s0)
   164da:	c85c                	sw	a5,20(s0)
   164dc:	b799                	j	16422 <__smakebuf_r+0x1e>
   164de:	40000a13          	li	s4,1024
   164e2:	4981                	li	s3,0
   164e4:	bfad                	j	1645e <__smakebuf_r+0x5a>
   164e6:	00e41583          	lh	a1,14(s0)
   164ea:	8526                	mv	a0,s1
   164ec:	2aad                	jal	16666 <_isatty_r>
   164ee:	e909                	bnez	a0,16500 <__smakebuf_r+0xfc>
   164f0:	00c41783          	lh	a5,12(s0)
   164f4:	b771                	j	16480 <__smakebuf_r+0x7c>
   164f6:	54d6                	lw	s1,116(sp)
   164f8:	5946                	lw	s2,112(sp)
   164fa:	59b6                	lw	s3,108(sp)
   164fc:	5a26                	lw	s4,104(sp)
   164fe:	b715                	j	16422 <__smakebuf_r+0x1e>
   16500:	00c45783          	lhu	a5,12(s0)
   16504:	9bf1                	andi	a5,a5,-4
   16506:	0017e793          	ori	a5,a5,1
   1650a:	07c2                	slli	a5,a5,0x10
   1650c:	87c1                	srai	a5,a5,0x10
   1650e:	bf8d                	j	16480 <__smakebuf_r+0x7c>

00016510 <__swhatbuf_r>:
   16510:	7159                	addi	sp,sp,-112
   16512:	d4a2                	sw	s0,104(sp)
   16514:	842e                	mv	s0,a1
   16516:	00e59583          	lh	a1,14(a1)
   1651a:	d2a6                	sw	s1,100(sp)
   1651c:	d0ca                	sw	s2,96(sp)
   1651e:	d686                	sw	ra,108(sp)
   16520:	84b2                	mv	s1,a2
   16522:	8936                	mv	s2,a3
   16524:	0205cb63          	bltz	a1,1655a <__swhatbuf_r+0x4a>
   16528:	0030                	addi	a2,sp,8
   1652a:	2209                	jal	1662c <_fstat_r>
   1652c:	02054763          	bltz	a0,1655a <__swhatbuf_r+0x4a>
   16530:	4732                	lw	a4,12(sp)
   16532:	67bd                	lui	a5,0xf
   16534:	50b6                	lw	ra,108(sp)
   16536:	8ff9                	and	a5,a5,a4
   16538:	7779                	lui	a4,0xffffe
   1653a:	97ba                	add	a5,a5,a4
   1653c:	5426                	lw	s0,104(sp)
   1653e:	0017b793          	seqz	a5,a5
   16542:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   16546:	40000713          	li	a4,1024
   1654a:	c098                	sw	a4,0(s1)
   1654c:	6505                	lui	a0,0x1
   1654e:	5496                	lw	s1,100(sp)
   16550:	5906                	lw	s2,96(sp)
   16552:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   16556:	6165                	addi	sp,sp,112
   16558:	8082                	ret
   1655a:	00c45783          	lhu	a5,12(s0)
   1655e:	0807f793          	andi	a5,a5,128
   16562:	cf91                	beqz	a5,1657e <__swhatbuf_r+0x6e>
   16564:	50b6                	lw	ra,108(sp)
   16566:	5426                	lw	s0,104(sp)
   16568:	4781                	li	a5,0
   1656a:	00f92023          	sw	a5,0(s2)
   1656e:	04000713          	li	a4,64
   16572:	c098                	sw	a4,0(s1)
   16574:	5906                	lw	s2,96(sp)
   16576:	5496                	lw	s1,100(sp)
   16578:	4501                	li	a0,0
   1657a:	6165                	addi	sp,sp,112
   1657c:	8082                	ret
   1657e:	50b6                	lw	ra,108(sp)
   16580:	5426                	lw	s0,104(sp)
   16582:	00f92023          	sw	a5,0(s2)
   16586:	40000713          	li	a4,1024
   1658a:	c098                	sw	a4,0(s1)
   1658c:	5906                	lw	s2,96(sp)
   1658e:	5496                	lw	s1,100(sp)
   16590:	4501                	li	a0,0
   16592:	6165                	addi	sp,sp,112
   16594:	8082                	ret

00016596 <_setlocale_r>:
   16596:	1141                	addi	sp,sp,-16
   16598:	c606                	sw	ra,12(sp)
   1659a:	c226                	sw	s1,4(sp)
   1659c:	c20d                	beqz	a2,165be <_setlocale_r+0x28>
   1659e:	65e9                	lui	a1,0x1a
   165a0:	25c58593          	addi	a1,a1,604 # 1a25c <__clzsi2+0x1e6>
   165a4:	8532                	mv	a0,a2
   165a6:	c422                	sw	s0,8(sp)
   165a8:	8432                	mv	s0,a2
   165aa:	28cd                	jal	1669c <strcmp>
   165ac:	64e9                	lui	s1,0x1a
   165ae:	e911                	bnez	a0,165c2 <_setlocale_r+0x2c>
   165b0:	4422                	lw	s0,8(sp)
   165b2:	25848513          	addi	a0,s1,600 # 1a258 <__clzsi2+0x1e2>
   165b6:	40b2                	lw	ra,12(sp)
   165b8:	4492                	lw	s1,4(sp)
   165ba:	0141                	addi	sp,sp,16
   165bc:	8082                	ret
   165be:	64e9                	lui	s1,0x1a
   165c0:	bfcd                	j	165b2 <_setlocale_r+0x1c>
   165c2:	25848593          	addi	a1,s1,600 # 1a258 <__clzsi2+0x1e2>
   165c6:	8522                	mv	a0,s0
   165c8:	28d1                	jal	1669c <strcmp>
   165ca:	d17d                	beqz	a0,165b0 <_setlocale_r+0x1a>
   165cc:	65e9                	lui	a1,0x1a
   165ce:	27458593          	addi	a1,a1,628 # 1a274 <__clzsi2+0x1fe>
   165d2:	8522                	mv	a0,s0
   165d4:	20e1                	jal	1669c <strcmp>
   165d6:	dd69                	beqz	a0,165b0 <_setlocale_r+0x1a>
   165d8:	4422                	lw	s0,8(sp)
   165da:	4501                	li	a0,0
   165dc:	bfe9                	j	165b6 <_setlocale_r+0x20>

000165de <__locale_mb_cur_max>:
   165de:	e601c503          	lbu	a0,-416(gp) # 1b670 <__global_locale+0x128>
   165e2:	8082                	ret

000165e4 <setlocale>:
   165e4:	1141                	addi	sp,sp,-16
   165e6:	c606                	sw	ra,12(sp)
   165e8:	c226                	sw	s1,4(sp)
   165ea:	c18d                	beqz	a1,1660c <setlocale+0x28>
   165ec:	c422                	sw	s0,8(sp)
   165ee:	842e                	mv	s0,a1
   165f0:	65e9                	lui	a1,0x1a
   165f2:	25c58593          	addi	a1,a1,604 # 1a25c <__clzsi2+0x1e6>
   165f6:	8522                	mv	a0,s0
   165f8:	2055                	jal	1669c <strcmp>
   165fa:	64e9                	lui	s1,0x1a
   165fc:	e911                	bnez	a0,16610 <setlocale+0x2c>
   165fe:	4422                	lw	s0,8(sp)
   16600:	25848513          	addi	a0,s1,600 # 1a258 <__clzsi2+0x1e2>
   16604:	40b2                	lw	ra,12(sp)
   16606:	4492                	lw	s1,4(sp)
   16608:	0141                	addi	sp,sp,16
   1660a:	8082                	ret
   1660c:	64e9                	lui	s1,0x1a
   1660e:	bfcd                	j	16600 <setlocale+0x1c>
   16610:	25848593          	addi	a1,s1,600 # 1a258 <__clzsi2+0x1e2>
   16614:	8522                	mv	a0,s0
   16616:	2059                	jal	1669c <strcmp>
   16618:	d17d                	beqz	a0,165fe <setlocale+0x1a>
   1661a:	65e9                	lui	a1,0x1a
   1661c:	27458593          	addi	a1,a1,628 # 1a274 <__clzsi2+0x1fe>
   16620:	8522                	mv	a0,s0
   16622:	28ad                	jal	1669c <strcmp>
   16624:	dd69                	beqz	a0,165fe <setlocale+0x1a>
   16626:	4422                	lw	s0,8(sp)
   16628:	4501                	li	a0,0
   1662a:	bfe9                	j	16604 <setlocale+0x20>

0001662c <_fstat_r>:
   1662c:	1141                	addi	sp,sp,-16
   1662e:	872e                	mv	a4,a1
   16630:	c422                	sw	s0,8(sp)
   16632:	c226                	sw	s1,4(sp)
   16634:	842a                	mv	s0,a0
   16636:	85b2                	mv	a1,a2
   16638:	853a                	mv	a0,a4
   1663a:	c606                	sw	ra,12(sp)
   1663c:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   16640:	3f6010ef          	jal	17a36 <_fstat>
   16644:	57fd                	li	a5,-1
   16646:	00f50763          	beq	a0,a5,16654 <_fstat_r+0x28>
   1664a:	40b2                	lw	ra,12(sp)
   1664c:	4422                	lw	s0,8(sp)
   1664e:	4492                	lw	s1,4(sp)
   16650:	0141                	addi	sp,sp,16
   16652:	8082                	ret
   16654:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   16658:	dbed                	beqz	a5,1664a <_fstat_r+0x1e>
   1665a:	40b2                	lw	ra,12(sp)
   1665c:	c01c                	sw	a5,0(s0)
   1665e:	4422                	lw	s0,8(sp)
   16660:	4492                	lw	s1,4(sp)
   16662:	0141                	addi	sp,sp,16
   16664:	8082                	ret

00016666 <_isatty_r>:
   16666:	1141                	addi	sp,sp,-16
   16668:	c422                	sw	s0,8(sp)
   1666a:	c226                	sw	s1,4(sp)
   1666c:	842a                	mv	s0,a0
   1666e:	852e                	mv	a0,a1
   16670:	c606                	sw	ra,12(sp)
   16672:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   16676:	3fe010ef          	jal	17a74 <_isatty>
   1667a:	57fd                	li	a5,-1
   1667c:	00f50763          	beq	a0,a5,1668a <_isatty_r+0x24>
   16680:	40b2                	lw	ra,12(sp)
   16682:	4422                	lw	s0,8(sp)
   16684:	4492                	lw	s1,4(sp)
   16686:	0141                	addi	sp,sp,16
   16688:	8082                	ret
   1668a:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   1668e:	dbed                	beqz	a5,16680 <_isatty_r+0x1a>
   16690:	40b2                	lw	ra,12(sp)
   16692:	c01c                	sw	a5,0(s0)
   16694:	4422                	lw	s0,8(sp)
   16696:	4492                	lw	s1,4(sp)
   16698:	0141                	addi	sp,sp,16
   1669a:	8082                	ret

0001669c <strcmp>:
   1669c:	00b56733          	or	a4,a0,a1
   166a0:	53fd                	li	t2,-1
   166a2:	8b0d                	andi	a4,a4,3
   166a4:	e779                	bnez	a4,16772 <strcmp+0xd6>
   166a6:	7f7f87b7          	lui	a5,0x7f7f8
   166aa:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   166ae:	4110                	lw	a2,0(a0)
   166b0:	4194                	lw	a3,0(a1)
   166b2:	00f672b3          	and	t0,a2,a5
   166b6:	00f66333          	or	t1,a2,a5
   166ba:	92be                	add	t0,t0,a5
   166bc:	0062e2b3          	or	t0,t0,t1
   166c0:	0c729763          	bne	t0,t2,1678e <strcmp+0xf2>
   166c4:	06d61863          	bne	a2,a3,16734 <strcmp+0x98>
   166c8:	4150                	lw	a2,4(a0)
   166ca:	41d4                	lw	a3,4(a1)
   166cc:	00f672b3          	and	t0,a2,a5
   166d0:	00f66333          	or	t1,a2,a5
   166d4:	92be                	add	t0,t0,a5
   166d6:	0062e2b3          	or	t0,t0,t1
   166da:	0a729863          	bne	t0,t2,1678a <strcmp+0xee>
   166de:	04d61b63          	bne	a2,a3,16734 <strcmp+0x98>
   166e2:	4510                	lw	a2,8(a0)
   166e4:	4594                	lw	a3,8(a1)
   166e6:	00f672b3          	and	t0,a2,a5
   166ea:	00f66333          	or	t1,a2,a5
   166ee:	92be                	add	t0,t0,a5
   166f0:	0062e2b3          	or	t0,t0,t1
   166f4:	0a729163          	bne	t0,t2,16796 <strcmp+0xfa>
   166f8:	02d61e63          	bne	a2,a3,16734 <strcmp+0x98>
   166fc:	4550                	lw	a2,12(a0)
   166fe:	45d4                	lw	a3,12(a1)
   16700:	00f672b3          	and	t0,a2,a5
   16704:	00f66333          	or	t1,a2,a5
   16708:	92be                	add	t0,t0,a5
   1670a:	0062e2b3          	or	t0,t0,t1
   1670e:	08729a63          	bne	t0,t2,167a2 <strcmp+0x106>
   16712:	02d61163          	bne	a2,a3,16734 <strcmp+0x98>
   16716:	4910                	lw	a2,16(a0)
   16718:	4994                	lw	a3,16(a1)
   1671a:	00f672b3          	and	t0,a2,a5
   1671e:	00f66333          	or	t1,a2,a5
   16722:	92be                	add	t0,t0,a5
   16724:	0062e2b3          	or	t0,t0,t1
   16728:	08729363          	bne	t0,t2,167ae <strcmp+0x112>
   1672c:	0551                	addi	a0,a0,20
   1672e:	05d1                	addi	a1,a1,20
   16730:	f6d60fe3          	beq	a2,a3,166ae <strcmp+0x12>
   16734:	01061713          	slli	a4,a2,0x10
   16738:	01069793          	slli	a5,a3,0x10
   1673c:	00f71c63          	bne	a4,a5,16754 <strcmp+0xb8>
   16740:	01065713          	srli	a4,a2,0x10
   16744:	0106d793          	srli	a5,a3,0x10
   16748:	40f70533          	sub	a0,a4,a5
   1674c:	0ff57593          	zext.b	a1,a0
   16750:	e991                	bnez	a1,16764 <strcmp+0xc8>
   16752:	8082                	ret
   16754:	8341                	srli	a4,a4,0x10
   16756:	83c1                	srli	a5,a5,0x10
   16758:	40f70533          	sub	a0,a4,a5
   1675c:	0ff57593          	zext.b	a1,a0
   16760:	e191                	bnez	a1,16764 <strcmp+0xc8>
   16762:	8082                	ret
   16764:	0ff77713          	zext.b	a4,a4
   16768:	0ff7f793          	zext.b	a5,a5
   1676c:	40f70533          	sub	a0,a4,a5
   16770:	8082                	ret
   16772:	00054603          	lbu	a2,0(a0)
   16776:	0005c683          	lbu	a3,0(a1)
   1677a:	0505                	addi	a0,a0,1
   1677c:	0585                	addi	a1,a1,1
   1677e:	00d61363          	bne	a2,a3,16784 <strcmp+0xe8>
   16782:	fa65                	bnez	a2,16772 <strcmp+0xd6>
   16784:	40d60533          	sub	a0,a2,a3
   16788:	8082                	ret
   1678a:	0511                	addi	a0,a0,4
   1678c:	0591                	addi	a1,a1,4
   1678e:	fed612e3          	bne	a2,a3,16772 <strcmp+0xd6>
   16792:	4501                	li	a0,0
   16794:	8082                	ret
   16796:	0521                	addi	a0,a0,8
   16798:	05a1                	addi	a1,a1,8
   1679a:	fcd61ce3          	bne	a2,a3,16772 <strcmp+0xd6>
   1679e:	4501                	li	a0,0
   167a0:	8082                	ret
   167a2:	0531                	addi	a0,a0,12
   167a4:	05b1                	addi	a1,a1,12
   167a6:	fcd616e3          	bne	a2,a3,16772 <strcmp+0xd6>
   167aa:	4501                	li	a0,0
   167ac:	8082                	ret
   167ae:	0541                	addi	a0,a0,16
   167b0:	05c1                	addi	a1,a1,16
   167b2:	fcd610e3          	bne	a2,a3,16772 <strcmp+0xd6>
   167b6:	4501                	li	a0,0
   167b8:	8082                	ret

000167ba <__assert_func>:
   167ba:	f141a703          	lw	a4,-236(gp) # 1b724 <_impure_ptr>
   167be:	1141                	addi	sp,sp,-16
   167c0:	87b6                	mv	a5,a3
   167c2:	8832                	mv	a6,a2
   167c4:	c606                	sw	ra,12(sp)
   167c6:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffe25b0>
   167ca:	86aa                	mv	a3,a0
   167cc:	872e                	mv	a4,a1
   167ce:	863e                	mv	a2,a5
   167d0:	00080c63          	beqz	a6,167e8 <__assert_func+0x2e>
   167d4:	67e9                	lui	a5,0x1a
   167d6:	26878793          	addi	a5,a5,616 # 1a268 <__clzsi2+0x1f2>
   167da:	65e9                	lui	a1,0x1a
   167dc:	27858593          	addi	a1,a1,632 # 1a278 <__clzsi2+0x202>
   167e0:	8546                	mv	a0,a7
   167e2:	22b9                	jal	16930 <fiprintf>
   167e4:	68f000ef          	jal	17672 <abort>
   167e8:	6869                	lui	a6,0x1a
   167ea:	27480793          	addi	a5,a6,628 # 1a274 <__clzsi2+0x1fe>
   167ee:	27480813          	addi	a6,a6,628
   167f2:	b7e5                	j	167da <__assert_func+0x20>

000167f4 <__assert>:
   167f4:	1141                	addi	sp,sp,-16
   167f6:	86b2                	mv	a3,a2
   167f8:	4601                	li	a2,0
   167fa:	c606                	sw	ra,12(sp)
   167fc:	3f7d                	jal	167ba <__assert_func>

000167fe <_calloc_r>:
   167fe:	02c5b7b3          	mulhu	a5,a1,a2
   16802:	1141                	addi	sp,sp,-16
   16804:	c606                	sw	ra,12(sp)
   16806:	c422                	sw	s0,8(sp)
   16808:	02c585b3          	mul	a1,a1,a2
   1680c:	efa5                	bnez	a5,16884 <_calloc_r+0x86>
   1680e:	929fa0ef          	jal	11136 <_malloc_r>
   16812:	842a                	mv	s0,a0
   16814:	cd25                	beqz	a0,1688c <_calloc_r+0x8e>
   16816:	ffc52603          	lw	a2,-4(a0)
   1681a:	02400713          	li	a4,36
   1681e:	9a71                	andi	a2,a2,-4
   16820:	1671                	addi	a2,a2,-4
   16822:	04c76063          	bltu	a4,a2,16862 <_calloc_r+0x64>
   16826:	46cd                	li	a3,19
   16828:	87aa                	mv	a5,a0
   1682a:	02c6f163          	bgeu	a3,a2,1684c <_calloc_r+0x4e>
   1682e:	00052023          	sw	zero,0(a0)
   16832:	00052223          	sw	zero,4(a0)
   16836:	47ed                	li	a5,27
   16838:	02c7fd63          	bgeu	a5,a2,16872 <_calloc_r+0x74>
   1683c:	00052423          	sw	zero,8(a0)
   16840:	00052623          	sw	zero,12(a0)
   16844:	01050793          	addi	a5,a0,16
   16848:	04e60863          	beq	a2,a4,16898 <_calloc_r+0x9a>
   1684c:	0007a023          	sw	zero,0(a5)
   16850:	0007a223          	sw	zero,4(a5)
   16854:	0007a423          	sw	zero,8(a5)
   16858:	40b2                	lw	ra,12(sp)
   1685a:	8522                	mv	a0,s0
   1685c:	4422                	lw	s0,8(sp)
   1685e:	0141                	addi	sp,sp,16
   16860:	8082                	ret
   16862:	4581                	li	a1,0
   16864:	bfefa0ef          	jal	10c62 <memset>
   16868:	40b2                	lw	ra,12(sp)
   1686a:	8522                	mv	a0,s0
   1686c:	4422                	lw	s0,8(sp)
   1686e:	0141                	addi	sp,sp,16
   16870:	8082                	ret
   16872:	00850793          	addi	a5,a0,8
   16876:	0007a023          	sw	zero,0(a5)
   1687a:	0007a223          	sw	zero,4(a5)
   1687e:	0007a423          	sw	zero,8(a5)
   16882:	bfd9                	j	16858 <_calloc_r+0x5a>
   16884:	5e9000ef          	jal	1766c <__errno>
   16888:	47b1                	li	a5,12
   1688a:	c11c                	sw	a5,0(a0)
   1688c:	4401                	li	s0,0
   1688e:	40b2                	lw	ra,12(sp)
   16890:	8522                	mv	a0,s0
   16892:	4422                	lw	s0,8(sp)
   16894:	0141                	addi	sp,sp,16
   16896:	8082                	ret
   16898:	00052823          	sw	zero,16(a0)
   1689c:	01850793          	addi	a5,a0,24
   168a0:	00052a23          	sw	zero,20(a0)
   168a4:	b765                	j	1684c <_calloc_r+0x4e>

000168a6 <_mbtowc_r>:
   168a6:	e1c1a783          	lw	a5,-484(gp) # 1b62c <__global_locale+0xe4>
   168aa:	8782                	jr	a5

000168ac <__ascii_mbtowc>:
   168ac:	c999                	beqz	a1,168c2 <__ascii_mbtowc+0x16>
   168ae:	c61d                	beqz	a2,168dc <__ascii_mbtowc+0x30>
   168b0:	ca95                	beqz	a3,168e4 <__ascii_mbtowc+0x38>
   168b2:	00064783          	lbu	a5,0(a2)
   168b6:	c19c                	sw	a5,0(a1)
   168b8:	00064503          	lbu	a0,0(a2)
   168bc:	00a03533          	snez	a0,a0
   168c0:	8082                	ret
   168c2:	1141                	addi	sp,sp,-16
   168c4:	006c                	addi	a1,sp,12
   168c6:	ce09                	beqz	a2,168e0 <__ascii_mbtowc+0x34>
   168c8:	c285                	beqz	a3,168e8 <__ascii_mbtowc+0x3c>
   168ca:	00064783          	lbu	a5,0(a2)
   168ce:	c19c                	sw	a5,0(a1)
   168d0:	00064503          	lbu	a0,0(a2)
   168d4:	00a03533          	snez	a0,a0
   168d8:	0141                	addi	sp,sp,16
   168da:	8082                	ret
   168dc:	4501                	li	a0,0
   168de:	8082                	ret
   168e0:	4501                	li	a0,0
   168e2:	bfdd                	j	168d8 <__ascii_mbtowc+0x2c>
   168e4:	5579                	li	a0,-2
   168e6:	8082                	ret
   168e8:	5579                	li	a0,-2
   168ea:	b7fd                	j	168d8 <__ascii_mbtowc+0x2c>

000168ec <_wctomb_r>:
   168ec:	e181a783          	lw	a5,-488(gp) # 1b628 <__global_locale+0xe0>
   168f0:	8782                	jr	a5

000168f2 <__ascii_wctomb>:
   168f2:	cd91                	beqz	a1,1690e <__ascii_wctomb+0x1c>
   168f4:	0ff00793          	li	a5,255
   168f8:	00c7e663          	bltu	a5,a2,16904 <__ascii_wctomb+0x12>
   168fc:	00c58023          	sb	a2,0(a1)
   16900:	4505                	li	a0,1
   16902:	8082                	ret
   16904:	08a00793          	li	a5,138
   16908:	c11c                	sw	a5,0(a0)
   1690a:	557d                	li	a0,-1
   1690c:	8082                	ret
   1690e:	4501                	li	a0,0
   16910:	8082                	ret

00016912 <_fiprintf_r>:
   16912:	7139                	addi	sp,sp,-64
   16914:	02c10313          	addi	t1,sp,44
   16918:	d636                	sw	a3,44(sp)
   1691a:	869a                	mv	a3,t1
   1691c:	ce06                	sw	ra,28(sp)
   1691e:	d83a                	sw	a4,48(sp)
   16920:	da3e                	sw	a5,52(sp)
   16922:	dc42                	sw	a6,56(sp)
   16924:	de46                	sw	a7,60(sp)
   16926:	c61a                	sw	t1,12(sp)
   16928:	280d                	jal	1695a <_vfiprintf_r>
   1692a:	40f2                	lw	ra,28(sp)
   1692c:	6121                	addi	sp,sp,64
   1692e:	8082                	ret

00016930 <fiprintf>:
   16930:	8e2a                	mv	t3,a0
   16932:	7139                	addi	sp,sp,-64
   16934:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   16938:	02810313          	addi	t1,sp,40
   1693c:	d432                	sw	a2,40(sp)
   1693e:	d636                	sw	a3,44(sp)
   16940:	862e                	mv	a2,a1
   16942:	869a                	mv	a3,t1
   16944:	85f2                	mv	a1,t3
   16946:	ce06                	sw	ra,28(sp)
   16948:	d83a                	sw	a4,48(sp)
   1694a:	da3e                	sw	a5,52(sp)
   1694c:	dc42                	sw	a6,56(sp)
   1694e:	de46                	sw	a7,60(sp)
   16950:	c61a                	sw	t1,12(sp)
   16952:	2021                	jal	1695a <_vfiprintf_r>
   16954:	40f2                	lw	ra,28(sp)
   16956:	6121                	addi	sp,sp,64
   16958:	8082                	ret

0001695a <_vfiprintf_r>:
   1695a:	7169                	addi	sp,sp,-304
   1695c:	11312e23          	sw	s3,284(sp)
   16960:	11512a23          	sw	s5,276(sp)
   16964:	11612823          	sw	s6,272(sp)
   16968:	11712623          	sw	s7,268(sp)
   1696c:	12112623          	sw	ra,300(sp)
   16970:	11a12023          	sw	s10,256(sp)
   16974:	8baa                	mv	s7,a0
   16976:	8aae                	mv	s5,a1
   16978:	89b2                	mv	s3,a2
   1697a:	8b36                	mv	s6,a3
   1697c:	c501                	beqz	a0,16984 <_vfiprintf_r+0x2a>
   1697e:	595c                	lw	a5,52(a0)
   16980:	300783e3          	beqz	a5,17486 <_vfiprintf_r+0xb2c>
   16984:	00ca9703          	lh	a4,12(s5)
   16988:	064aa783          	lw	a5,100(s5)
   1698c:	01271693          	slli	a3,a4,0x12
   16990:	0006cb63          	bltz	a3,169a6 <_vfiprintf_r+0x4c>
   16994:	76f9                	lui	a3,0xffffe
   16996:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   16998:	6609                	lui	a2,0x2
   1699a:	8f51                	or	a4,a4,a2
   1699c:	8ff5                	and	a5,a5,a3
   1699e:	00ea9623          	sh	a4,12(s5)
   169a2:	06faa223          	sw	a5,100(s5)
   169a6:	01279713          	slli	a4,a5,0x12
   169aa:	400740e3          	bltz	a4,175aa <_vfiprintf_r+0xc50>
   169ae:	00ca9783          	lh	a5,12(s5)
   169b2:	0087f713          	andi	a4,a5,8
   169b6:	22070363          	beqz	a4,16bdc <_vfiprintf_r+0x282>
   169ba:	010aa703          	lw	a4,16(s5)
   169be:	20070f63          	beqz	a4,16bdc <_vfiprintf_r+0x282>
   169c2:	8be9                	andi	a5,a5,26
   169c4:	4729                	li	a4,10
   169c6:	22e78763          	beq	a5,a4,16bf4 <_vfiprintf_r+0x29a>
   169ca:	67ed                	lui	a5,0x1b
   169cc:	4d01                	li	s10,0
   169ce:	11812423          	sw	s8,264(sp)
   169d2:	11912223          	sw	s9,260(sp)
   169d6:	04c10c13          	addi	s8,sp,76
   169da:	82c78793          	addi	a5,a5,-2004 # 1a82c <_ctype_+0x104>
   169de:	6ced                	lui	s9,0x1b
   169e0:	12812423          	sw	s0,296(sp)
   169e4:	13212023          	sw	s2,288(sp)
   169e8:	11412c23          	sw	s4,280(sp)
   169ec:	896a                	mv	s2,s10
   169ee:	12912223          	sw	s1,292(sp)
   169f2:	dfee                	sw	s11,252(sp)
   169f4:	c0e2                	sw	s8,64(sp)
   169f6:	c482                	sw	zero,72(sp)
   169f8:	c282                	sw	zero,68(sp)
   169fa:	8462                	mv	s0,s8
   169fc:	c202                	sw	zero,4(sp)
   169fe:	ca02                	sw	zero,20(sp)
   16a00:	cc02                	sw	zero,24(sp)
   16a02:	ce02                	sw	zero,28(sp)
   16a04:	c03e                	sw	a5,0(sp)
   16a06:	4a41                	li	s4,16
   16a08:	998c8c93          	addi	s9,s9,-1640 # 1a998 <zeroes.0>
   16a0c:	8d5a                	mv	s10,s6
   16a0e:	0009c783          	lbu	a5,0(s3)
   16a12:	14078563          	beqz	a5,16b5c <_vfiprintf_r+0x202>
   16a16:	84ce                	mv	s1,s3
   16a18:	02500713          	li	a4,37
   16a1c:	20e78363          	beq	a5,a4,16c22 <_vfiprintf_r+0x2c8>
   16a20:	0014c783          	lbu	a5,1(s1)
   16a24:	0485                	addi	s1,s1,1
   16a26:	fbfd                	bnez	a5,16a1c <_vfiprintf_r+0xc2>
   16a28:	41348b33          	sub	s6,s1,s3
   16a2c:	13348863          	beq	s1,s3,16b5c <_vfiprintf_r+0x202>
   16a30:	4726                	lw	a4,72(sp)
   16a32:	4796                	lw	a5,68(sp)
   16a34:	01342023          	sw	s3,0(s0)
   16a38:	975a                	add	a4,a4,s6
   16a3a:	0785                	addi	a5,a5,1
   16a3c:	01642223          	sw	s6,4(s0)
   16a40:	c4ba                	sw	a4,72(sp)
   16a42:	c2be                	sw	a5,68(sp)
   16a44:	471d                	li	a4,7
   16a46:	0421                	addi	s0,s0,8
   16a48:	1ef74463          	blt	a4,a5,16c30 <_vfiprintf_r+0x2d6>
   16a4c:	0004c783          	lbu	a5,0(s1)
   16a50:	995a                	add	s2,s2,s6
   16a52:	10078563          	beqz	a5,16b5c <_vfiprintf_r+0x202>
   16a56:	0014c783          	lbu	a5,1(s1)
   16a5a:	00148993          	addi	s3,s1,1
   16a5e:	02010da3          	sb	zero,59(sp)
   16a62:	5dfd                	li	s11,-1
   16a64:	4b01                	li	s6,0
   16a66:	4801                	li	a6,0
   16a68:	05a00493          	li	s1,90
   16a6c:	0985                	addi	s3,s3,1
   16a6e:	863e                	mv	a2,a5
   16a70:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   16a74:	02e4eb63          	bltu	s1,a4,16aaa <_vfiprintf_r+0x150>
   16a78:	4782                	lw	a5,0(sp)
   16a7a:	070a                	slli	a4,a4,0x2
   16a7c:	973e                	add	a4,a4,a5
   16a7e:	431c                	lw	a5,0(a4)
   16a80:	8782                	jr	a5
   16a82:	4b01                	li	s6,0
   16a84:	fd060793          	addi	a5,a2,-48
   16a88:	46a5                	li	a3,9
   16a8a:	0009c603          	lbu	a2,0(s3)
   16a8e:	002b1713          	slli	a4,s6,0x2
   16a92:	9b3a                	add	s6,s6,a4
   16a94:	0b06                	slli	s6,s6,0x1
   16a96:	9b3e                	add	s6,s6,a5
   16a98:	fd060793          	addi	a5,a2,-48
   16a9c:	0985                	addi	s3,s3,1
   16a9e:	fef6f6e3          	bgeu	a3,a5,16a8a <_vfiprintf_r+0x130>
   16aa2:	fe060713          	addi	a4,a2,-32
   16aa6:	fce4f9e3          	bgeu	s1,a4,16a78 <_vfiprintf_r+0x11e>
   16aaa:	ca4d                	beqz	a2,16b5c <_vfiprintf_r+0x202>
   16aac:	08c10623          	sb	a2,140(sp)
   16ab0:	02010da3          	sb	zero,59(sp)
   16ab4:	4885                	li	a7,1
   16ab6:	4e05                	li	t3,1
   16ab8:	0164                	addi	s1,sp,140
   16aba:	4d81                	li	s11,0
   16abc:	4281                	li	t0,0
   16abe:	08487f93          	andi	t6,a6,132
   16ac2:	4726                	lw	a4,72(sp)
   16ac4:	4796                	lw	a5,68(sp)
   16ac6:	000f9663          	bnez	t6,16ad2 <_vfiprintf_r+0x178>
   16aca:	411b0eb3          	sub	t4,s6,a7
   16ace:	71d04b63          	bgtz	t4,171e4 <_vfiprintf_r+0x88a>
   16ad2:	03b14603          	lbu	a2,59(sp)
   16ad6:	ce11                	beqz	a2,16af2 <_vfiprintf_r+0x198>
   16ad8:	03b10613          	addi	a2,sp,59
   16adc:	c010                	sw	a2,0(s0)
   16ade:	0785                	addi	a5,a5,1
   16ae0:	4605                	li	a2,1
   16ae2:	0705                	addi	a4,a4,1
   16ae4:	c050                	sw	a2,4(s0)
   16ae6:	c4ba                	sw	a4,72(sp)
   16ae8:	c2be                	sw	a5,68(sp)
   16aea:	461d                	li	a2,7
   16aec:	0421                	addi	s0,s0,8
   16aee:	1af64363          	blt	a2,a5,16c94 <_vfiprintf_r+0x33a>
   16af2:	00028e63          	beqz	t0,16b0e <_vfiprintf_r+0x1b4>
   16af6:	1870                	addi	a2,sp,60
   16af8:	c010                	sw	a2,0(s0)
   16afa:	0785                	addi	a5,a5,1
   16afc:	4609                	li	a2,2
   16afe:	0709                	addi	a4,a4,2
   16b00:	c050                	sw	a2,4(s0)
   16b02:	c4ba                	sw	a4,72(sp)
   16b04:	c2be                	sw	a5,68(sp)
   16b06:	461d                	li	a2,7
   16b08:	0421                	addi	s0,s0,8
   16b0a:	78f64663          	blt	a2,a5,17296 <_vfiprintf_r+0x93c>
   16b0e:	08000613          	li	a2,128
   16b12:	52cf8a63          	beq	t6,a2,17046 <_vfiprintf_r+0x6ec>
   16b16:	41cd8db3          	sub	s11,s11,t3
   16b1a:	5db04d63          	bgtz	s11,170f4 <_vfiprintf_r+0x79a>
   16b1e:	9772                	add	a4,a4,t3
   16b20:	0785                	addi	a5,a5,1
   16b22:	c004                	sw	s1,0(s0)
   16b24:	01c42223          	sw	t3,4(s0)
   16b28:	c4ba                	sw	a4,72(sp)
   16b2a:	c2be                	sw	a5,68(sp)
   16b2c:	461d                	li	a2,7
   16b2e:	0421                	addi	s0,s0,8
   16b30:	64f64e63          	blt	a2,a5,1718c <_vfiprintf_r+0x832>
   16b34:	00487813          	andi	a6,a6,4
   16b38:	00080663          	beqz	a6,16b44 <_vfiprintf_r+0x1ea>
   16b3c:	411b04b3          	sub	s1,s6,a7
   16b40:	16904e63          	bgtz	s1,16cbc <_vfiprintf_r+0x362>
   16b44:	011b5363          	bge	s6,a7,16b4a <_vfiprintf_r+0x1f0>
   16b48:	8b46                	mv	s6,a7
   16b4a:	995a                	add	s2,s2,s6
   16b4c:	0e071a63          	bnez	a4,16c40 <_vfiprintf_r+0x2e6>
   16b50:	0009c783          	lbu	a5,0(s3)
   16b54:	c282                	sw	zero,68(sp)
   16b56:	8462                	mv	s0,s8
   16b58:	ea079fe3          	bnez	a5,16a16 <_vfiprintf_r+0xbc>
   16b5c:	47a6                	lw	a5,72(sp)
   16b5e:	8d4a                	mv	s10,s2
   16b60:	0e078863          	beqz	a5,16c50 <_vfiprintf_r+0x2f6>
   16b64:	0090                	addi	a2,sp,64
   16b66:	85d6                	mv	a1,s5
   16b68:	855e                	mv	a0,s7
   16b6a:	fbafc0ef          	jal	13324 <__sprint_r>
   16b6e:	a0cd                	j	16c50 <_vfiprintf_r+0x2f6>
   16b70:	000d2b03          	lw	s6,0(s10)
   16b74:	0d11                	addi	s10,s10,4
   16b76:	280b4c63          	bltz	s6,16e0e <_vfiprintf_r+0x4b4>
   16b7a:	0009c783          	lbu	a5,0(s3)
   16b7e:	b5fd                	j	16a6c <_vfiprintf_r+0x112>
   16b80:	0009c783          	lbu	a5,0(s3)
   16b84:	02086813          	ori	a6,a6,32
   16b88:	b5d5                	j	16a6c <_vfiprintf_r+0x112>
   16b8a:	01086813          	ori	a6,a6,16
   16b8e:	02087793          	andi	a5,a6,32
   16b92:	1a078363          	beqz	a5,16d38 <_vfiprintf_r+0x3de>
   16b96:	0d1d                	addi	s10,s10,7
   16b98:	ff8d7d13          	andi	s10,s10,-8
   16b9c:	004d2703          	lw	a4,4(s10)
   16ba0:	000d2783          	lw	a5,0(s10)
   16ba4:	0d21                	addi	s10,s10,8
   16ba6:	88ba                	mv	a7,a4
   16ba8:	1a074863          	bltz	a4,16d58 <_vfiprintf_r+0x3fe>
   16bac:	1c0dc663          	bltz	s11,16d78 <_vfiprintf_r+0x41e>
   16bb0:	0117e733          	or	a4,a5,a7
   16bb4:	f7f87813          	andi	a6,a6,-129
   16bb8:	1c071063          	bnez	a4,16d78 <_vfiprintf_r+0x41e>
   16bbc:	1e0d93e3          	bnez	s11,175a2 <_vfiprintf_r+0xc48>
   16bc0:	03b14783          	lbu	a5,59(sp)
   16bc4:	4881                	li	a7,0
   16bc6:	4e01                	li	t3,0
   16bc8:	1984                	addi	s1,sp,240
   16bca:	c391                	beqz	a5,16bce <_vfiprintf_r+0x274>
   16bcc:	0885                	addi	a7,a7,1
   16bce:	00287293          	andi	t0,a6,2
   16bd2:	ee0286e3          	beqz	t0,16abe <_vfiprintf_r+0x164>
   16bd6:	0889                	addi	a7,a7,2
   16bd8:	4289                	li	t0,2
   16bda:	b5d5                	j	16abe <_vfiprintf_r+0x164>
   16bdc:	85d6                	mv	a1,s5
   16bde:	855e                	mv	a0,s7
   16be0:	d81fc0ef          	jal	13960 <__swsetup_r>
   16be4:	1c0513e3          	bnez	a0,175aa <_vfiprintf_r+0xc50>
   16be8:	00ca9783          	lh	a5,12(s5)
   16bec:	4729                	li	a4,10
   16bee:	8be9                	andi	a5,a5,26
   16bf0:	dce79de3          	bne	a5,a4,169ca <_vfiprintf_r+0x70>
   16bf4:	00ea9783          	lh	a5,14(s5)
   16bf8:	dc07c9e3          	bltz	a5,169ca <_vfiprintf_r+0x70>
   16bfc:	12c12083          	lw	ra,300(sp)
   16c00:	10012d03          	lw	s10,256(sp)
   16c04:	86da                	mv	a3,s6
   16c06:	864e                	mv	a2,s3
   16c08:	11012b03          	lw	s6,272(sp)
   16c0c:	11c12983          	lw	s3,284(sp)
   16c10:	85d6                	mv	a1,s5
   16c12:	855e                	mv	a0,s7
   16c14:	11412a83          	lw	s5,276(sp)
   16c18:	10c12b83          	lw	s7,268(sp)
   16c1c:	6155                	addi	sp,sp,304
   16c1e:	1b90006f          	j	175d6 <__sbprintf>
   16c22:	41348b33          	sub	s6,s1,s3
   16c26:	e13495e3          	bne	s1,s3,16a30 <_vfiprintf_r+0xd6>
   16c2a:	0004c783          	lbu	a5,0(s1)
   16c2e:	b515                	j	16a52 <_vfiprintf_r+0xf8>
   16c30:	0090                	addi	a2,sp,64
   16c32:	85d6                	mv	a1,s5
   16c34:	855e                	mv	a0,s7
   16c36:	eeefc0ef          	jal	13324 <__sprint_r>
   16c3a:	e911                	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   16c3c:	8462                	mv	s0,s8
   16c3e:	b539                	j	16a4c <_vfiprintf_r+0xf2>
   16c40:	0090                	addi	a2,sp,64
   16c42:	85d6                	mv	a1,s5
   16c44:	855e                	mv	a0,s7
   16c46:	edefc0ef          	jal	13324 <__sprint_r>
   16c4a:	f00503e3          	beqz	a0,16b50 <_vfiprintf_r+0x1f6>
   16c4e:	8d4a                	mv	s10,s2
   16c50:	00cad783          	lhu	a5,12(s5)
   16c54:	12812403          	lw	s0,296(sp)
   16c58:	12412483          	lw	s1,292(sp)
   16c5c:	0407f793          	andi	a5,a5,64
   16c60:	12012903          	lw	s2,288(sp)
   16c64:	11812a03          	lw	s4,280(sp)
   16c68:	10812c03          	lw	s8,264(sp)
   16c6c:	10412c83          	lw	s9,260(sp)
   16c70:	5dfe                	lw	s11,252(sp)
   16c72:	12079ce3          	bnez	a5,175aa <_vfiprintf_r+0xc50>
   16c76:	12c12083          	lw	ra,300(sp)
   16c7a:	11c12983          	lw	s3,284(sp)
   16c7e:	11412a83          	lw	s5,276(sp)
   16c82:	11012b03          	lw	s6,272(sp)
   16c86:	10c12b83          	lw	s7,268(sp)
   16c8a:	856a                	mv	a0,s10
   16c8c:	10012d03          	lw	s10,256(sp)
   16c90:	6155                	addi	sp,sp,304
   16c92:	8082                	ret
   16c94:	0090                	addi	a2,sp,64
   16c96:	85d6                	mv	a1,s5
   16c98:	855e                	mv	a0,s7
   16c9a:	d246                	sw	a7,36(sp)
   16c9c:	d072                	sw	t3,32(sp)
   16c9e:	c842                	sw	a6,16(sp)
   16ca0:	c67e                	sw	t6,12(sp)
   16ca2:	c416                	sw	t0,8(sp)
   16ca4:	e80fc0ef          	jal	13324 <__sprint_r>
   16ca8:	f15d                	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   16caa:	4726                	lw	a4,72(sp)
   16cac:	4796                	lw	a5,68(sp)
   16cae:	5892                	lw	a7,36(sp)
   16cb0:	5e02                	lw	t3,32(sp)
   16cb2:	4842                	lw	a6,16(sp)
   16cb4:	4fb2                	lw	t6,12(sp)
   16cb6:	42a2                	lw	t0,8(sp)
   16cb8:	8462                	mv	s0,s8
   16cba:	bd25                	j	16af2 <_vfiprintf_r+0x198>
   16cbc:	636d                	lui	t1,0x1b
   16cbe:	4641                	li	a2,16
   16cc0:	4796                	lw	a5,68(sp)
   16cc2:	9a830313          	addi	t1,t1,-1624 # 1a9a8 <blanks.1>
   16cc6:	04965563          	bge	a2,s1,16d10 <_vfiprintf_r+0x3b6>
   16cca:	86a2                	mv	a3,s0
   16ccc:	4dc1                	li	s11,16
   16cce:	481d                	li	a6,7
   16cd0:	c446                	sw	a7,8(sp)
   16cd2:	841a                	mv	s0,t1
   16cd4:	a021                	j	16cdc <_vfiprintf_r+0x382>
   16cd6:	14c1                	addi	s1,s1,-16
   16cd8:	029dd963          	bge	s11,s1,16d0a <_vfiprintf_r+0x3b0>
   16cdc:	0741                	addi	a4,a4,16
   16cde:	0785                	addi	a5,a5,1
   16ce0:	c280                	sw	s0,0(a3)
   16ce2:	01b6a223          	sw	s11,4(a3)
   16ce6:	c4ba                	sw	a4,72(sp)
   16ce8:	c2be                	sw	a5,68(sp)
   16cea:	06a1                	addi	a3,a3,8
   16cec:	fef855e3          	bge	a6,a5,16cd6 <_vfiprintf_r+0x37c>
   16cf0:	0090                	addi	a2,sp,64
   16cf2:	85d6                	mv	a1,s5
   16cf4:	855e                	mv	a0,s7
   16cf6:	e2efc0ef          	jal	13324 <__sprint_r>
   16cfa:	f931                	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   16cfc:	14c1                	addi	s1,s1,-16
   16cfe:	4726                	lw	a4,72(sp)
   16d00:	4796                	lw	a5,68(sp)
   16d02:	86e2                	mv	a3,s8
   16d04:	481d                	li	a6,7
   16d06:	fc9dcbe3          	blt	s11,s1,16cdc <_vfiprintf_r+0x382>
   16d0a:	48a2                	lw	a7,8(sp)
   16d0c:	8322                	mv	t1,s0
   16d0e:	8436                	mv	s0,a3
   16d10:	9726                	add	a4,a4,s1
   16d12:	0785                	addi	a5,a5,1
   16d14:	00642023          	sw	t1,0(s0)
   16d18:	c044                	sw	s1,4(s0)
   16d1a:	c4ba                	sw	a4,72(sp)
   16d1c:	c2be                	sw	a5,68(sp)
   16d1e:	461d                	li	a2,7
   16d20:	e2f652e3          	bge	a2,a5,16b44 <_vfiprintf_r+0x1ea>
   16d24:	0090                	addi	a2,sp,64
   16d26:	85d6                	mv	a1,s5
   16d28:	855e                	mv	a0,s7
   16d2a:	c446                	sw	a7,8(sp)
   16d2c:	df8fc0ef          	jal	13324 <__sprint_r>
   16d30:	fd19                	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   16d32:	4726                	lw	a4,72(sp)
   16d34:	48a2                	lw	a7,8(sp)
   16d36:	b539                	j	16b44 <_vfiprintf_r+0x1ea>
   16d38:	01087713          	andi	a4,a6,16
   16d3c:	000d2783          	lw	a5,0(s10)
   16d40:	0d11                	addi	s10,s10,4
   16d42:	e371                	bnez	a4,16e06 <_vfiprintf_r+0x4ac>
   16d44:	04087713          	andi	a4,a6,64
   16d48:	cb5d                	beqz	a4,16dfe <_vfiprintf_r+0x4a4>
   16d4a:	07c2                	slli	a5,a5,0x10
   16d4c:	87c1                	srai	a5,a5,0x10
   16d4e:	41f7d893          	srai	a7,a5,0x1f
   16d52:	8746                	mv	a4,a7
   16d54:	e4075ce3          	bgez	a4,16bac <_vfiprintf_r+0x252>
   16d58:	02d00613          	li	a2,45
   16d5c:	00f03733          	snez	a4,a5
   16d60:	411008b3          	neg	a7,a7
   16d64:	02c10da3          	sb	a2,59(sp)
   16d68:	40e888b3          	sub	a7,a7,a4
   16d6c:	40f007b3          	neg	a5,a5
   16d70:	000dc463          	bltz	s11,16d78 <_vfiprintf_r+0x41e>
   16d74:	f7f87813          	andi	a6,a6,-129
   16d78:	62089c63          	bnez	a7,173b0 <_vfiprintf_r+0xa56>
   16d7c:	4725                	li	a4,9
   16d7e:	62f76963          	bltu	a4,a5,173b0 <_vfiprintf_r+0xa56>
   16d82:	03078793          	addi	a5,a5,48
   16d86:	0ff7f793          	zext.b	a5,a5
   16d8a:	0ef107a3          	sb	a5,239(sp)
   16d8e:	88ee                	mv	a7,s11
   16d90:	01b04363          	bgtz	s11,16d96 <_vfiprintf_r+0x43c>
   16d94:	4885                	li	a7,1
   16d96:	4e05                	li	t3,1
   16d98:	0ef10493          	addi	s1,sp,239
   16d9c:	03b14783          	lbu	a5,59(sp)
   16da0:	e20796e3          	bnez	a5,16bcc <_vfiprintf_r+0x272>
   16da4:	b52d                	j	16bce <_vfiprintf_r+0x274>
   16da6:	000d2483          	lw	s1,0(s10)
   16daa:	02010da3          	sb	zero,59(sp)
   16dae:	0d11                	addi	s10,s10,4
   16db0:	70048463          	beqz	s1,174b8 <_vfiprintf_r+0xb5e>
   16db4:	c442                	sw	a6,8(sp)
   16db6:	5e0dc163          	bltz	s11,17398 <_vfiprintf_r+0xa3e>
   16dba:	866e                	mv	a2,s11
   16dbc:	4581                	li	a1,0
   16dbe:	8526                	mv	a0,s1
   16dc0:	c7bfc0ef          	jal	13a3a <memchr>
   16dc4:	4822                	lw	a6,8(sp)
   16dc6:	8e6e                	mv	t3,s11
   16dc8:	c119                	beqz	a0,16dce <_vfiprintf_r+0x474>
   16dca:	40950e33          	sub	t3,a0,s1
   16dce:	03b14783          	lbu	a5,59(sp)
   16dd2:	fffe4893          	not	a7,t3
   16dd6:	41f8d893          	srai	a7,a7,0x1f
   16dda:	011e78b3          	and	a7,t3,a7
   16dde:	4d81                	li	s11,0
   16de0:	4281                	li	t0,0
   16de2:	de0795e3          	bnez	a5,16bcc <_vfiprintf_r+0x272>
   16de6:	b9e1                	j	16abe <_vfiprintf_r+0x164>
   16de8:	000d2783          	lw	a5,0(s10)
   16dec:	02010da3          	sb	zero,59(sp)
   16df0:	0d11                	addi	s10,s10,4
   16df2:	08f10623          	sb	a5,140(sp)
   16df6:	4885                	li	a7,1
   16df8:	4e05                	li	t3,1
   16dfa:	0164                	addi	s1,sp,140
   16dfc:	b97d                	j	16aba <_vfiprintf_r+0x160>
   16dfe:	20087713          	andi	a4,a6,512
   16e02:	76071e63          	bnez	a4,1757e <_vfiprintf_r+0xc24>
   16e06:	41f7d893          	srai	a7,a5,0x1f
   16e0a:	8746                	mv	a4,a7
   16e0c:	bb71                	j	16ba8 <_vfiprintf_r+0x24e>
   16e0e:	41600b33          	neg	s6,s6
   16e12:	0009c783          	lbu	a5,0(s3)
   16e16:	00486813          	ori	a6,a6,4
   16e1a:	b989                	j	16a6c <_vfiprintf_r+0x112>
   16e1c:	02b00713          	li	a4,43
   16e20:	0009c783          	lbu	a5,0(s3)
   16e24:	02e10da3          	sb	a4,59(sp)
   16e28:	b191                	j	16a6c <_vfiprintf_r+0x112>
   16e2a:	0009c783          	lbu	a5,0(s3)
   16e2e:	08086813          	ori	a6,a6,128
   16e32:	b92d                	j	16a6c <_vfiprintf_r+0x112>
   16e34:	0009c603          	lbu	a2,0(s3)
   16e38:	02a00793          	li	a5,42
   16e3c:	00198693          	addi	a3,s3,1
   16e40:	76f60863          	beq	a2,a5,175b0 <_vfiprintf_r+0xc56>
   16e44:	fd060793          	addi	a5,a2,-48
   16e48:	4725                	li	a4,9
   16e4a:	4d81                	li	s11,0
   16e4c:	45a5                	li	a1,9
   16e4e:	02f76063          	bltu	a4,a5,16e6e <_vfiprintf_r+0x514>
   16e52:	0006c603          	lbu	a2,0(a3)
   16e56:	002d9713          	slli	a4,s11,0x2
   16e5a:	9dba                	add	s11,s11,a4
   16e5c:	0d86                	slli	s11,s11,0x1
   16e5e:	9dbe                	add	s11,s11,a5
   16e60:	fd060793          	addi	a5,a2,-48
   16e64:	0685                	addi	a3,a3,1
   16e66:	fef5f6e3          	bgeu	a1,a5,16e52 <_vfiprintf_r+0x4f8>
   16e6a:	4a0dcb63          	bltz	s11,17320 <_vfiprintf_r+0x9c6>
   16e6e:	89b6                	mv	s3,a3
   16e70:	b101                	j	16a70 <_vfiprintf_r+0x116>
   16e72:	855e                	mv	a0,s7
   16e74:	c442                	sw	a6,8(sp)
   16e76:	cd3fc0ef          	jal	13b48 <_localeconv_r>
   16e7a:	415c                	lw	a5,4(a0)
   16e7c:	853e                	mv	a0,a5
   16e7e:	ce3e                	sw	a5,28(sp)
   16e80:	e8bf90ef          	jal	10d0a <strlen>
   16e84:	87aa                	mv	a5,a0
   16e86:	855e                	mv	a0,s7
   16e88:	cc3e                	sw	a5,24(sp)
   16e8a:	cbffc0ef          	jal	13b48 <_localeconv_r>
   16e8e:	4518                	lw	a4,8(a0)
   16e90:	47e2                	lw	a5,24(sp)
   16e92:	4822                	lw	a6,8(sp)
   16e94:	ca3a                	sw	a4,20(sp)
   16e96:	ce0782e3          	beqz	a5,16b7a <_vfiprintf_r+0x220>
   16e9a:	4752                	lw	a4,20(sp)
   16e9c:	0009c783          	lbu	a5,0(s3)
   16ea0:	bc0706e3          	beqz	a4,16a6c <_vfiprintf_r+0x112>
   16ea4:	00074703          	lbu	a4,0(a4)
   16ea8:	bc0702e3          	beqz	a4,16a6c <_vfiprintf_r+0x112>
   16eac:	40086813          	ori	a6,a6,1024
   16eb0:	be75                	j	16a6c <_vfiprintf_r+0x112>
   16eb2:	0009c783          	lbu	a5,0(s3)
   16eb6:	00186813          	ori	a6,a6,1
   16eba:	be4d                	j	16a6c <_vfiprintf_r+0x112>
   16ebc:	03b14703          	lbu	a4,59(sp)
   16ec0:	0009c783          	lbu	a5,0(s3)
   16ec4:	ba0714e3          	bnez	a4,16a6c <_vfiprintf_r+0x112>
   16ec8:	02000713          	li	a4,32
   16ecc:	02e10da3          	sb	a4,59(sp)
   16ed0:	be71                	j	16a6c <_vfiprintf_r+0x112>
   16ed2:	01086713          	ori	a4,a6,16
   16ed6:	02077793          	andi	a5,a4,32
   16eda:	40078063          	beqz	a5,172da <_vfiprintf_r+0x980>
   16ede:	0d1d                	addi	s10,s10,7
   16ee0:	ff8d7d13          	andi	s10,s10,-8
   16ee4:	000d2783          	lw	a5,0(s10)
   16ee8:	004d2583          	lw	a1,4(s10)
   16eec:	0d21                	addi	s10,s10,8
   16eee:	02010da3          	sb	zero,59(sp)
   16ef2:	bff77813          	andi	a6,a4,-1025
   16ef6:	0a0dc163          	bltz	s11,16f98 <_vfiprintf_r+0x63e>
   16efa:	00b7e633          	or	a2,a5,a1
   16efe:	b7f77713          	andi	a4,a4,-1153
   16f02:	56061d63          	bnez	a2,1747c <_vfiprintf_r+0xb22>
   16f06:	8e42                	mv	t3,a6
   16f08:	4781                	li	a5,0
   16f0a:	883a                	mv	a6,a4
   16f0c:	060d9e63          	bnez	s11,16f88 <_vfiprintf_r+0x62e>
   16f10:	ca0798e3          	bnez	a5,16bc0 <_vfiprintf_r+0x266>
   16f14:	001e7e13          	andi	t3,t3,1
   16f18:	3e0e0463          	beqz	t3,17300 <_vfiprintf_r+0x9a6>
   16f1c:	03000793          	li	a5,48
   16f20:	0ef107a3          	sb	a5,239(sp)
   16f24:	88f2                	mv	a7,t3
   16f26:	0ef10493          	addi	s1,sp,239
   16f2a:	bd8d                	j	16d9c <_vfiprintf_r+0x442>
   16f2c:	0009c783          	lbu	a5,0(s3)
   16f30:	06c00713          	li	a4,108
   16f34:	56e78463          	beq	a5,a4,1749c <_vfiprintf_r+0xb42>
   16f38:	01086813          	ori	a6,a6,16
   16f3c:	be05                	j	16a6c <_vfiprintf_r+0x112>
   16f3e:	0009c783          	lbu	a5,0(s3)
   16f42:	06800713          	li	a4,104
   16f46:	54e78463          	beq	a5,a4,1748e <_vfiprintf_r+0xb34>
   16f4a:	04086813          	ori	a6,a6,64
   16f4e:	be39                	j	16a6c <_vfiprintf_r+0x112>
   16f50:	01086e13          	ori	t3,a6,16
   16f54:	020e7793          	andi	a5,t3,32
   16f58:	36078363          	beqz	a5,172be <_vfiprintf_r+0x964>
   16f5c:	0d1d                	addi	s10,s10,7
   16f5e:	ff8d7d13          	andi	s10,s10,-8
   16f62:	000d2783          	lw	a5,0(s10)
   16f66:	004d2883          	lw	a7,4(s10)
   16f6a:	0d21                	addi	s10,s10,8
   16f6c:	02010da3          	sb	zero,59(sp)
   16f70:	8872                	mv	a6,t3
   16f72:	e00dc3e3          	bltz	s11,16d78 <_vfiprintf_r+0x41e>
   16f76:	0117e733          	or	a4,a5,a7
   16f7a:	f7fe7813          	andi	a6,t3,-129
   16f7e:	de071de3          	bnez	a4,16d78 <_vfiprintf_r+0x41e>
   16f82:	4785                	li	a5,1
   16f84:	f80d86e3          	beqz	s11,16f10 <_vfiprintf_r+0x5b6>
   16f88:	4705                	li	a4,1
   16f8a:	60e78c63          	beq	a5,a4,175a2 <_vfiprintf_r+0xc48>
   16f8e:	4709                	li	a4,2
   16f90:	54e78663          	beq	a5,a4,174dc <_vfiprintf_r+0xb82>
   16f94:	4781                	li	a5,0
   16f96:	4581                	li	a1,0
   16f98:	1984                	addi	s1,sp,240
   16f9a:	01d59693          	slli	a3,a1,0x1d
   16f9e:	0077f713          	andi	a4,a5,7
   16fa2:	838d                	srli	a5,a5,0x3
   16fa4:	03070713          	addi	a4,a4,48
   16fa8:	8fd5                	or	a5,a5,a3
   16faa:	818d                	srli	a1,a1,0x3
   16fac:	fee48fa3          	sb	a4,-1(s1)
   16fb0:	00b7e6b3          	or	a3,a5,a1
   16fb4:	8526                	mv	a0,s1
   16fb6:	14fd                	addi	s1,s1,-1
   16fb8:	f2ed                	bnez	a3,16f9a <_vfiprintf_r+0x640>
   16fba:	00187793          	andi	a5,a6,1
   16fbe:	20078b63          	beqz	a5,171d4 <_vfiprintf_r+0x87a>
   16fc2:	03000793          	li	a5,48
   16fc6:	20f70763          	beq	a4,a5,171d4 <_vfiprintf_r+0x87a>
   16fca:	1579                	addi	a0,a0,-2
   16fcc:	fef48fa3          	sb	a5,-1(s1)
   16fd0:	199c                	addi	a5,sp,240
   16fd2:	40a78e33          	sub	t3,a5,a0
   16fd6:	88ee                	mv	a7,s11
   16fd8:	35cdc163          	blt	s11,t3,1731a <_vfiprintf_r+0x9c0>
   16fdc:	84aa                	mv	s1,a0
   16fde:	bb7d                	j	16d9c <_vfiprintf_r+0x442>
   16fe0:	6721                	lui	a4,0x8
   16fe2:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   16fe6:	02e11e23          	sh	a4,60(sp)
   16fea:	6769                	lui	a4,0x1a
   16fec:	14870713          	addi	a4,a4,328 # 1a148 <__clzsi2+0xd2>
   16ff0:	000d2783          	lw	a5,0(s10)
   16ff4:	4581                	li	a1,0
   16ff6:	00286813          	ori	a6,a6,2
   16ffa:	0d11                	addi	s10,s10,4
   16ffc:	c23a                	sw	a4,4(sp)
   16ffe:	02010da3          	sb	zero,59(sp)
   17002:	1a0dc763          	bltz	s11,171b0 <_vfiprintf_r+0x856>
   17006:	00b7e733          	or	a4,a5,a1
   1700a:	f7f87613          	andi	a2,a6,-129
   1700e:	18071d63          	bnez	a4,171a8 <_vfiprintf_r+0x84e>
   17012:	8e42                	mv	t3,a6
   17014:	4789                	li	a5,2
   17016:	8832                	mv	a6,a2
   17018:	bdd5                	j	16f0c <_vfiprintf_r+0x5b2>
   1701a:	02087793          	andi	a5,a6,32
   1701e:	2e079463          	bnez	a5,17306 <_vfiprintf_r+0x9ac>
   17022:	01087793          	andi	a5,a6,16
   17026:	48079263          	bnez	a5,174aa <_vfiprintf_r+0xb50>
   1702a:	04087793          	andi	a5,a6,64
   1702e:	54079f63          	bnez	a5,1758c <_vfiprintf_r+0xc32>
   17032:	20087813          	andi	a6,a6,512
   17036:	46080a63          	beqz	a6,174aa <_vfiprintf_r+0xb50>
   1703a:	000d2783          	lw	a5,0(s10)
   1703e:	0d11                	addi	s10,s10,4
   17040:	01278023          	sb	s2,0(a5)
   17044:	b2e9                	j	16a0e <_vfiprintf_r+0xb4>
   17046:	411b0333          	sub	t1,s6,a7
   1704a:	ac6056e3          	blez	t1,16b16 <_vfiprintf_r+0x1bc>
   1704e:	6f6d                	lui	t5,0x1b
   17050:	4641                	li	a2,16
   17052:	998f0f13          	addi	t5,t5,-1640 # 1a998 <zeroes.0>
   17056:	04665f63          	bge	a2,t1,170b4 <_vfiprintf_r+0x75a>
   1705a:	c426                	sw	s1,8(sp)
   1705c:	86a2                	mv	a3,s0
   1705e:	4ec1                	li	t4,16
   17060:	4f9d                	li	t6,7
   17062:	c642                	sw	a6,12(sp)
   17064:	c872                	sw	t3,16(sp)
   17066:	841a                	mv	s0,t1
   17068:	d046                	sw	a7,32(sp)
   1706a:	84fa                	mv	s1,t5
   1706c:	a021                	j	17074 <_vfiprintf_r+0x71a>
   1706e:	1441                	addi	s0,s0,-16
   17070:	028edb63          	bge	t4,s0,170a6 <_vfiprintf_r+0x74c>
   17074:	0741                	addi	a4,a4,16
   17076:	0785                	addi	a5,a5,1
   17078:	c284                	sw	s1,0(a3)
   1707a:	01d6a223          	sw	t4,4(a3)
   1707e:	c4ba                	sw	a4,72(sp)
   17080:	c2be                	sw	a5,68(sp)
   17082:	06a1                	addi	a3,a3,8
   17084:	feffd5e3          	bge	t6,a5,1706e <_vfiprintf_r+0x714>
   17088:	0090                	addi	a2,sp,64
   1708a:	85d6                	mv	a1,s5
   1708c:	855e                	mv	a0,s7
   1708e:	a96fc0ef          	jal	13324 <__sprint_r>
   17092:	ba051ee3          	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   17096:	4ec1                	li	t4,16
   17098:	1441                	addi	s0,s0,-16
   1709a:	4726                	lw	a4,72(sp)
   1709c:	4796                	lw	a5,68(sp)
   1709e:	86e2                	mv	a3,s8
   170a0:	4f9d                	li	t6,7
   170a2:	fc8ec9e3          	blt	t4,s0,17074 <_vfiprintf_r+0x71a>
   170a6:	8f26                	mv	t5,s1
   170a8:	4832                	lw	a6,12(sp)
   170aa:	4e42                	lw	t3,16(sp)
   170ac:	5882                	lw	a7,32(sp)
   170ae:	44a2                	lw	s1,8(sp)
   170b0:	8322                	mv	t1,s0
   170b2:	8436                	mv	s0,a3
   170b4:	971a                	add	a4,a4,t1
   170b6:	0785                	addi	a5,a5,1
   170b8:	01e42023          	sw	t5,0(s0)
   170bc:	00642223          	sw	t1,4(s0)
   170c0:	c4ba                	sw	a4,72(sp)
   170c2:	c2be                	sw	a5,68(sp)
   170c4:	461d                	li	a2,7
   170c6:	0421                	addi	s0,s0,8
   170c8:	a4f657e3          	bge	a2,a5,16b16 <_vfiprintf_r+0x1bc>
   170cc:	0090                	addi	a2,sp,64
   170ce:	85d6                	mv	a1,s5
   170d0:	855e                	mv	a0,s7
   170d2:	c846                	sw	a7,16(sp)
   170d4:	c672                	sw	t3,12(sp)
   170d6:	c442                	sw	a6,8(sp)
   170d8:	a4cfc0ef          	jal	13324 <__sprint_r>
   170dc:	b60519e3          	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   170e0:	4e32                	lw	t3,12(sp)
   170e2:	4726                	lw	a4,72(sp)
   170e4:	4796                	lw	a5,68(sp)
   170e6:	41cd8db3          	sub	s11,s11,t3
   170ea:	48c2                	lw	a7,16(sp)
   170ec:	4822                	lw	a6,8(sp)
   170ee:	8462                	mv	s0,s8
   170f0:	a3b057e3          	blez	s11,16b1e <_vfiprintf_r+0x1c4>
   170f4:	6f6d                	lui	t5,0x1b
   170f6:	998f0f13          	addi	t5,t5,-1640 # 1a998 <zeroes.0>
   170fa:	05ba5c63          	bge	s4,s11,17152 <_vfiprintf_r+0x7f8>
   170fe:	86a2                	mv	a3,s0
   17100:	431d                	li	t1,7
   17102:	846e                	mv	s0,s11
   17104:	c442                	sw	a6,8(sp)
   17106:	c672                	sw	t3,12(sp)
   17108:	c846                	sw	a7,16(sp)
   1710a:	8de6                	mv	s11,s9
   1710c:	a021                	j	17114 <_vfiprintf_r+0x7ba>
   1710e:	1441                	addi	s0,s0,-16
   17110:	028a5b63          	bge	s4,s0,17146 <_vfiprintf_r+0x7ec>
   17114:	0741                	addi	a4,a4,16
   17116:	0785                	addi	a5,a5,1
   17118:	0196a023          	sw	s9,0(a3)
   1711c:	0146a223          	sw	s4,4(a3)
   17120:	c4ba                	sw	a4,72(sp)
   17122:	c2be                	sw	a5,68(sp)
   17124:	06a1                	addi	a3,a3,8
   17126:	fef354e3          	bge	t1,a5,1710e <_vfiprintf_r+0x7b4>
   1712a:	0090                	addi	a2,sp,64
   1712c:	85d6                	mv	a1,s5
   1712e:	855e                	mv	a0,s7
   17130:	9f4fc0ef          	jal	13324 <__sprint_r>
   17134:	b0051de3          	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   17138:	1441                	addi	s0,s0,-16
   1713a:	4726                	lw	a4,72(sp)
   1713c:	4796                	lw	a5,68(sp)
   1713e:	86e2                	mv	a3,s8
   17140:	431d                	li	t1,7
   17142:	fc8a49e3          	blt	s4,s0,17114 <_vfiprintf_r+0x7ba>
   17146:	4822                	lw	a6,8(sp)
   17148:	4e32                	lw	t3,12(sp)
   1714a:	48c2                	lw	a7,16(sp)
   1714c:	8f6e                	mv	t5,s11
   1714e:	8da2                	mv	s11,s0
   17150:	8436                	mv	s0,a3
   17152:	976e                	add	a4,a4,s11
   17154:	0785                	addi	a5,a5,1
   17156:	01e42023          	sw	t5,0(s0)
   1715a:	01b42223          	sw	s11,4(s0)
   1715e:	c4ba                	sw	a4,72(sp)
   17160:	c2be                	sw	a5,68(sp)
   17162:	461d                	li	a2,7
   17164:	0421                	addi	s0,s0,8
   17166:	9af65ce3          	bge	a2,a5,16b1e <_vfiprintf_r+0x1c4>
   1716a:	0090                	addi	a2,sp,64
   1716c:	85d6                	mv	a1,s5
   1716e:	855e                	mv	a0,s7
   17170:	c846                	sw	a7,16(sp)
   17172:	c672                	sw	t3,12(sp)
   17174:	c442                	sw	a6,8(sp)
   17176:	9aefc0ef          	jal	13324 <__sprint_r>
   1717a:	ac051ae3          	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   1717e:	4726                	lw	a4,72(sp)
   17180:	4796                	lw	a5,68(sp)
   17182:	48c2                	lw	a7,16(sp)
   17184:	4e32                	lw	t3,12(sp)
   17186:	4822                	lw	a6,8(sp)
   17188:	8462                	mv	s0,s8
   1718a:	ba51                	j	16b1e <_vfiprintf_r+0x1c4>
   1718c:	0090                	addi	a2,sp,64
   1718e:	85d6                	mv	a1,s5
   17190:	855e                	mv	a0,s7
   17192:	c646                	sw	a7,12(sp)
   17194:	c442                	sw	a6,8(sp)
   17196:	98efc0ef          	jal	13324 <__sprint_r>
   1719a:	aa051ae3          	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   1719e:	4726                	lw	a4,72(sp)
   171a0:	48b2                	lw	a7,12(sp)
   171a2:	4822                	lw	a6,8(sp)
   171a4:	8462                	mv	s0,s8
   171a6:	b279                	j	16b34 <_vfiprintf_r+0x1da>
   171a8:	4709                	li	a4,2
   171aa:	8832                	mv	a6,a2
   171ac:	de0706e3          	beqz	a4,16f98 <_vfiprintf_r+0x63e>
   171b0:	4612                	lw	a2,4(sp)
   171b2:	1984                	addi	s1,sp,240
   171b4:	00f7f713          	andi	a4,a5,15
   171b8:	9732                	add	a4,a4,a2
   171ba:	00074683          	lbu	a3,0(a4)
   171be:	8391                	srli	a5,a5,0x4
   171c0:	01c59713          	slli	a4,a1,0x1c
   171c4:	8fd9                	or	a5,a5,a4
   171c6:	8191                	srli	a1,a1,0x4
   171c8:	fed48fa3          	sb	a3,-1(s1)
   171cc:	00b7e733          	or	a4,a5,a1
   171d0:	14fd                	addi	s1,s1,-1
   171d2:	f36d                	bnez	a4,171b4 <_vfiprintf_r+0x85a>
   171d4:	199c                	addi	a5,sp,240
   171d6:	40978e33          	sub	t3,a5,s1
   171da:	88ee                	mv	a7,s11
   171dc:	bdcdd0e3          	bge	s11,t3,16d9c <_vfiprintf_r+0x442>
   171e0:	88f2                	mv	a7,t3
   171e2:	be6d                	j	16d9c <_vfiprintf_r+0x442>
   171e4:	636d                	lui	t1,0x1b
   171e6:	4641                	li	a2,16
   171e8:	9a830313          	addi	t1,t1,-1624 # 1a9a8 <blanks.1>
   171ec:	07d65363          	bge	a2,t4,17252 <_vfiprintf_r+0x8f8>
   171f0:	c826                	sw	s1,16(sp)
   171f2:	86a2                	mv	a3,s0
   171f4:	4f41                	li	t5,16
   171f6:	439d                	li	t2,7
   171f8:	c416                	sw	t0,8(sp)
   171fa:	c67e                	sw	t6,12(sp)
   171fc:	d042                	sw	a6,32(sp)
   171fe:	d272                	sw	t3,36(sp)
   17200:	8476                	mv	s0,t4
   17202:	d446                	sw	a7,40(sp)
   17204:	849a                	mv	s1,t1
   17206:	a021                	j	1720e <_vfiprintf_r+0x8b4>
   17208:	1441                	addi	s0,s0,-16
   1720a:	028f5b63          	bge	t5,s0,17240 <_vfiprintf_r+0x8e6>
   1720e:	0741                	addi	a4,a4,16
   17210:	0785                	addi	a5,a5,1
   17212:	c284                	sw	s1,0(a3)
   17214:	01e6a223          	sw	t5,4(a3)
   17218:	c4ba                	sw	a4,72(sp)
   1721a:	c2be                	sw	a5,68(sp)
   1721c:	06a1                	addi	a3,a3,8
   1721e:	fef3d5e3          	bge	t2,a5,17208 <_vfiprintf_r+0x8ae>
   17222:	0090                	addi	a2,sp,64
   17224:	85d6                	mv	a1,s5
   17226:	855e                	mv	a0,s7
   17228:	8fcfc0ef          	jal	13324 <__sprint_r>
   1722c:	a20511e3          	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   17230:	4f41                	li	t5,16
   17232:	1441                	addi	s0,s0,-16
   17234:	4726                	lw	a4,72(sp)
   17236:	4796                	lw	a5,68(sp)
   17238:	86e2                	mv	a3,s8
   1723a:	439d                	li	t2,7
   1723c:	fc8f49e3          	blt	t5,s0,1720e <_vfiprintf_r+0x8b4>
   17240:	8326                	mv	t1,s1
   17242:	42a2                	lw	t0,8(sp)
   17244:	4fb2                	lw	t6,12(sp)
   17246:	5802                	lw	a6,32(sp)
   17248:	5e12                	lw	t3,36(sp)
   1724a:	58a2                	lw	a7,40(sp)
   1724c:	44c2                	lw	s1,16(sp)
   1724e:	8ea2                	mv	t4,s0
   17250:	8436                	mv	s0,a3
   17252:	9776                	add	a4,a4,t4
   17254:	0785                	addi	a5,a5,1
   17256:	00642023          	sw	t1,0(s0)
   1725a:	01d42223          	sw	t4,4(s0)
   1725e:	c4ba                	sw	a4,72(sp)
   17260:	c2be                	sw	a5,68(sp)
   17262:	461d                	li	a2,7
   17264:	0421                	addi	s0,s0,8
   17266:	86f656e3          	bge	a2,a5,16ad2 <_vfiprintf_r+0x178>
   1726a:	0090                	addi	a2,sp,64
   1726c:	85d6                	mv	a1,s5
   1726e:	855e                	mv	a0,s7
   17270:	d246                	sw	a7,36(sp)
   17272:	d072                	sw	t3,32(sp)
   17274:	c842                	sw	a6,16(sp)
   17276:	c67e                	sw	t6,12(sp)
   17278:	c416                	sw	t0,8(sp)
   1727a:	8aafc0ef          	jal	13324 <__sprint_r>
   1727e:	9c0518e3          	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   17282:	4726                	lw	a4,72(sp)
   17284:	4796                	lw	a5,68(sp)
   17286:	5892                	lw	a7,36(sp)
   17288:	5e02                	lw	t3,32(sp)
   1728a:	4842                	lw	a6,16(sp)
   1728c:	4fb2                	lw	t6,12(sp)
   1728e:	42a2                	lw	t0,8(sp)
   17290:	8462                	mv	s0,s8
   17292:	841ff06f          	j	16ad2 <_vfiprintf_r+0x178>
   17296:	0090                	addi	a2,sp,64
   17298:	85d6                	mv	a1,s5
   1729a:	855e                	mv	a0,s7
   1729c:	d046                	sw	a7,32(sp)
   1729e:	c872                	sw	t3,16(sp)
   172a0:	c642                	sw	a6,12(sp)
   172a2:	c47e                	sw	t6,8(sp)
   172a4:	880fc0ef          	jal	13324 <__sprint_r>
   172a8:	9a0513e3          	bnez	a0,16c4e <_vfiprintf_r+0x2f4>
   172ac:	4726                	lw	a4,72(sp)
   172ae:	4796                	lw	a5,68(sp)
   172b0:	5882                	lw	a7,32(sp)
   172b2:	4e42                	lw	t3,16(sp)
   172b4:	4832                	lw	a6,12(sp)
   172b6:	4fa2                	lw	t6,8(sp)
   172b8:	8462                	mv	s0,s8
   172ba:	855ff06f          	j	16b0e <_vfiprintf_r+0x1b4>
   172be:	010e7713          	andi	a4,t3,16
   172c2:	000d2783          	lw	a5,0(s10)
   172c6:	0d11                	addi	s10,s10,4
   172c8:	e719                	bnez	a4,172d6 <_vfiprintf_r+0x97c>
   172ca:	040e7713          	andi	a4,t3,64
   172ce:	1e070f63          	beqz	a4,174cc <_vfiprintf_r+0xb72>
   172d2:	07c2                	slli	a5,a5,0x10
   172d4:	83c1                	srli	a5,a5,0x10
   172d6:	4881                	li	a7,0
   172d8:	b951                	j	16f6c <_vfiprintf_r+0x612>
   172da:	01077613          	andi	a2,a4,16
   172de:	000d2783          	lw	a5,0(s10)
   172e2:	0d11                	addi	s10,s10,4
   172e4:	ee01                	bnez	a2,172fc <_vfiprintf_r+0x9a2>
   172e6:	04077613          	andi	a2,a4,64
   172ea:	c609                	beqz	a2,172f4 <_vfiprintf_r+0x99a>
   172ec:	07c2                	slli	a5,a5,0x10
   172ee:	83c1                	srli	a5,a5,0x10
   172f0:	4581                	li	a1,0
   172f2:	bef5                	j	16eee <_vfiprintf_r+0x594>
   172f4:	20077613          	andi	a2,a4,512
   172f8:	2a061163          	bnez	a2,1759a <_vfiprintf_r+0xc40>
   172fc:	4581                	li	a1,0
   172fe:	bec5                	j	16eee <_vfiprintf_r+0x594>
   17300:	4881                	li	a7,0
   17302:	1984                	addi	s1,sp,240
   17304:	bc61                	j	16d9c <_vfiprintf_r+0x442>
   17306:	000d2783          	lw	a5,0(s10)
   1730a:	41f95713          	srai	a4,s2,0x1f
   1730e:	0d11                	addi	s10,s10,4
   17310:	0127a023          	sw	s2,0(a5)
   17314:	c3d8                	sw	a4,4(a5)
   17316:	ef8ff06f          	j	16a0e <_vfiprintf_r+0xb4>
   1731a:	88f2                	mv	a7,t3
   1731c:	84aa                	mv	s1,a0
   1731e:	bcbd                	j	16d9c <_vfiprintf_r+0x442>
   17320:	5dfd                	li	s11,-1
   17322:	89b6                	mv	s3,a3
   17324:	f4cff06f          	j	16a70 <_vfiprintf_r+0x116>
   17328:	8e42                	mv	t3,a6
   1732a:	b12d                	j	16f54 <_vfiprintf_r+0x5fa>
   1732c:	8742                	mv	a4,a6
   1732e:	b665                	j	16ed6 <_vfiprintf_r+0x57c>
   17330:	67e9                	lui	a5,0x1a
   17332:	15c78793          	addi	a5,a5,348 # 1a15c <__clzsi2+0xe6>
   17336:	c23e                	sw	a5,4(sp)
   17338:	02087793          	andi	a5,a6,32
   1733c:	c3a9                	beqz	a5,1737e <_vfiprintf_r+0xa24>
   1733e:	0d1d                	addi	s10,s10,7
   17340:	ff8d7d13          	andi	s10,s10,-8
   17344:	000d2783          	lw	a5,0(s10)
   17348:	004d2583          	lw	a1,4(s10)
   1734c:	0d21                	addi	s10,s10,8
   1734e:	00187713          	andi	a4,a6,1
   17352:	cf01                	beqz	a4,1736a <_vfiprintf_r+0xa10>
   17354:	00b7e733          	or	a4,a5,a1
   17358:	cb09                	beqz	a4,1736a <_vfiprintf_r+0xa10>
   1735a:	03000713          	li	a4,48
   1735e:	02e10e23          	sb	a4,60(sp)
   17362:	02c10ea3          	sb	a2,61(sp)
   17366:	00286813          	ori	a6,a6,2
   1736a:	bff87813          	andi	a6,a6,-1025
   1736e:	b941                	j	16ffe <_vfiprintf_r+0x6a4>
   17370:	67e9                	lui	a5,0x1a
   17372:	14878793          	addi	a5,a5,328 # 1a148 <__clzsi2+0xd2>
   17376:	c23e                	sw	a5,4(sp)
   17378:	02087793          	andi	a5,a6,32
   1737c:	f3e9                	bnez	a5,1733e <_vfiprintf_r+0x9e4>
   1737e:	01087713          	andi	a4,a6,16
   17382:	000d2783          	lw	a5,0(s10)
   17386:	0d11                	addi	s10,s10,4
   17388:	e315                	bnez	a4,173ac <_vfiprintf_r+0xa52>
   1738a:	04087713          	andi	a4,a6,64
   1738e:	cb19                	beqz	a4,173a4 <_vfiprintf_r+0xa4a>
   17390:	07c2                	slli	a5,a5,0x10
   17392:	83c1                	srli	a5,a5,0x10
   17394:	4581                	li	a1,0
   17396:	bf65                	j	1734e <_vfiprintf_r+0x9f4>
   17398:	8526                	mv	a0,s1
   1739a:	971f90ef          	jal	10d0a <strlen>
   1739e:	4822                	lw	a6,8(sp)
   173a0:	8e2a                	mv	t3,a0
   173a2:	b435                	j	16dce <_vfiprintf_r+0x474>
   173a4:	20087713          	andi	a4,a6,512
   173a8:	1c071763          	bnez	a4,17576 <_vfiprintf_r+0xc1c>
   173ac:	4581                	li	a1,0
   173ae:	b745                	j	1734e <_vfiprintf_r+0x9f4>
   173b0:	ccccdf37          	lui	t5,0xccccd
   173b4:	ccccdfb7          	lui	t6,0xccccd
   173b8:	42d2                	lw	t0,20(sp)
   173ba:	40087e13          	andi	t3,a6,1024
   173be:	4581                	li	a1,0
   173c0:	1988                	addi	a0,sp,240
   173c2:	4315                	li	t1,5
   173c4:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccb1271>
   173c8:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccb1270>
   173cc:	0ff00e93          	li	t4,255
   173d0:	a081                	j	17410 <_vfiprintf_r+0xab6>
   173d2:	00f4b733          	sltu	a4,s1,a5
   173d6:	9726                	add	a4,a4,s1
   173d8:	02677733          	remu	a4,a4,t1
   173dc:	40e78733          	sub	a4,a5,a4
   173e0:	00e7b633          	sltu	a2,a5,a4
   173e4:	40c88633          	sub	a2,a7,a2
   173e8:	03f703b3          	mul	t2,a4,t6
   173ec:	03e60633          	mul	a2,a2,t5
   173f0:	03e73533          	mulhu	a0,a4,t5
   173f4:	961e                	add	a2,a2,t2
   173f6:	03e70733          	mul	a4,a4,t5
   173fa:	962a                	add	a2,a2,a0
   173fc:	01f61513          	slli	a0,a2,0x1f
   17400:	8205                	srli	a2,a2,0x1
   17402:	8305                	srli	a4,a4,0x1
   17404:	8f49                	or	a4,a4,a0
   17406:	16088263          	beqz	a7,1756a <_vfiprintf_r+0xc10>
   1740a:	87ba                	mv	a5,a4
   1740c:	88b2                	mv	a7,a2
   1740e:	8536                	mv	a0,a3
   17410:	011784b3          	add	s1,a5,a7
   17414:	00f4b733          	sltu	a4,s1,a5
   17418:	9726                	add	a4,a4,s1
   1741a:	02677733          	remu	a4,a4,t1
   1741e:	fff50693          	addi	a3,a0,-1
   17422:	0585                	addi	a1,a1,1
   17424:	40e78733          	sub	a4,a5,a4
   17428:	00e7b3b3          	sltu	t2,a5,a4
   1742c:	407883b3          	sub	t2,a7,t2
   17430:	03e73633          	mulhu	a2,a4,t5
   17434:	03e383b3          	mul	t2,t2,t5
   17438:	03e70733          	mul	a4,a4,t5
   1743c:	93b2                	add	t2,t2,a2
   1743e:	03fe                	slli	t2,t2,0x1f
   17440:	00175613          	srli	a2,a4,0x1
   17444:	00c3e633          	or	a2,t2,a2
   17448:	00261713          	slli	a4,a2,0x2
   1744c:	9732                	add	a4,a4,a2
   1744e:	0706                	slli	a4,a4,0x1
   17450:	40e78733          	sub	a4,a5,a4
   17454:	03070713          	addi	a4,a4,48
   17458:	fee50fa3          	sb	a4,-1(a0)
   1745c:	f60e0be3          	beqz	t3,173d2 <_vfiprintf_r+0xa78>
   17460:	0002c703          	lbu	a4,0(t0)
   17464:	f6b717e3          	bne	a4,a1,173d2 <_vfiprintf_r+0xa78>
   17468:	f7d585e3          	beq	a1,t4,173d2 <_vfiprintf_r+0xa78>
   1746c:	06089b63          	bnez	a7,174e2 <_vfiprintf_r+0xb88>
   17470:	4725                	li	a4,9
   17472:	06f76863          	bltu	a4,a5,174e2 <_vfiprintf_r+0xb88>
   17476:	84b6                	mv	s1,a3
   17478:	ca16                	sw	t0,20(sp)
   1747a:	bba9                	j	171d4 <_vfiprintf_r+0x87a>
   1747c:	883a                	mv	a6,a4
   1747e:	4701                	li	a4,0
   17480:	b0070ce3          	beqz	a4,16f98 <_vfiprintf_r+0x63e>
   17484:	b335                	j	171b0 <_vfiprintf_r+0x856>
   17486:	be6f90ef          	jal	1086c <__sinit>
   1748a:	cfaff06f          	j	16984 <_vfiprintf_r+0x2a>
   1748e:	0019c783          	lbu	a5,1(s3)
   17492:	20086813          	ori	a6,a6,512
   17496:	0985                	addi	s3,s3,1
   17498:	dd4ff06f          	j	16a6c <_vfiprintf_r+0x112>
   1749c:	0019c783          	lbu	a5,1(s3)
   174a0:	02086813          	ori	a6,a6,32
   174a4:	0985                	addi	s3,s3,1
   174a6:	dc6ff06f          	j	16a6c <_vfiprintf_r+0x112>
   174aa:	000d2783          	lw	a5,0(s10)
   174ae:	0d11                	addi	s10,s10,4
   174b0:	0127a023          	sw	s2,0(a5)
   174b4:	d5aff06f          	j	16a0e <_vfiprintf_r+0xb4>
   174b8:	4799                	li	a5,6
   174ba:	8e6e                	mv	t3,s11
   174bc:	0bb7eb63          	bltu	a5,s11,17572 <_vfiprintf_r+0xc18>
   174c0:	64e9                	lui	s1,0x1a
   174c2:	88f2                	mv	a7,t3
   174c4:	17048493          	addi	s1,s1,368 # 1a170 <__clzsi2+0xfa>
   174c8:	df2ff06f          	j	16aba <_vfiprintf_r+0x160>
   174cc:	200e7713          	andi	a4,t3,512
   174d0:	e00703e3          	beqz	a4,172d6 <_vfiprintf_r+0x97c>
   174d4:	0ff7f793          	zext.b	a5,a5
   174d8:	4881                	li	a7,0
   174da:	bc49                	j	16f6c <_vfiprintf_r+0x612>
   174dc:	4781                	li	a5,0
   174de:	4581                	li	a1,0
   174e0:	b9c1                	j	171b0 <_vfiprintf_r+0x856>
   174e2:	d43e                	sw	a5,40(sp)
   174e4:	47e2                	lw	a5,24(sp)
   174e6:	45f2                	lw	a1,28(sp)
   174e8:	d646                	sw	a7,44(sp)
   174ea:	8e9d                	sub	a3,a3,a5
   174ec:	863e                	mv	a2,a5
   174ee:	8536                	mv	a0,a3
   174f0:	d27e                	sw	t6,36(sp)
   174f2:	d07a                	sw	t5,32(sp)
   174f4:	ca72                	sw	t3,20(sp)
   174f6:	c842                	sw	a6,16(sp)
   174f8:	c616                	sw	t0,12(sp)
   174fa:	c436                	sw	a3,8(sp)
   174fc:	dccfc0ef          	jal	13ac8 <strncpy>
   17500:	57a2                	lw	a5,40(sp)
   17502:	4615                	li	a2,5
   17504:	42b2                	lw	t0,12(sp)
   17506:	00f4b733          	sltu	a4,s1,a5
   1750a:	9726                	add	a4,a4,s1
   1750c:	02c77733          	remu	a4,a4,a2
   17510:	0012c603          	lbu	a2,1(t0)
   17514:	58b2                	lw	a7,44(sp)
   17516:	ccccd537          	lui	a0,0xccccd
   1751a:	00c03633          	snez	a2,a2
   1751e:	ccccd3b7          	lui	t2,0xccccd
   17522:	92b2                	add	t0,t0,a2
   17524:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb1271>
   17528:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccb1270>
   1752c:	46a2                	lw	a3,8(sp)
   1752e:	4842                	lw	a6,16(sp)
   17530:	4e52                	lw	t3,20(sp)
   17532:	5f02                	lw	t5,32(sp)
   17534:	5f92                	lw	t6,36(sp)
   17536:	4581                	li	a1,0
   17538:	4315                	li	t1,5
   1753a:	0ff00e93          	li	t4,255
   1753e:	40e78733          	sub	a4,a5,a4
   17542:	00e7b633          	sltu	a2,a5,a4
   17546:	40c88633          	sub	a2,a7,a2
   1754a:	027703b3          	mul	t2,a4,t2
   1754e:	02a60633          	mul	a2,a2,a0
   17552:	02a738b3          	mulhu	a7,a4,a0
   17556:	961e                	add	a2,a2,t2
   17558:	02a707b3          	mul	a5,a4,a0
   1755c:	9646                	add	a2,a2,a7
   1755e:	01f61713          	slli	a4,a2,0x1f
   17562:	8205                	srli	a2,a2,0x1
   17564:	8385                	srli	a5,a5,0x1
   17566:	8f5d                	or	a4,a4,a5
   17568:	b54d                	j	1740a <_vfiprintf_r+0xab0>
   1756a:	4525                	li	a0,9
   1756c:	e8f56fe3          	bltu	a0,a5,1740a <_vfiprintf_r+0xab0>
   17570:	b719                	j	17476 <_vfiprintf_r+0xb1c>
   17572:	4e19                	li	t3,6
   17574:	b7b1                	j	174c0 <_vfiprintf_r+0xb66>
   17576:	0ff7f793          	zext.b	a5,a5
   1757a:	4581                	li	a1,0
   1757c:	bbc9                	j	1734e <_vfiprintf_r+0x9f4>
   1757e:	07e2                	slli	a5,a5,0x18
   17580:	87e1                	srai	a5,a5,0x18
   17582:	41f7d893          	srai	a7,a5,0x1f
   17586:	8746                	mv	a4,a7
   17588:	e20ff06f          	j	16ba8 <_vfiprintf_r+0x24e>
   1758c:	000d2783          	lw	a5,0(s10)
   17590:	0d11                	addi	s10,s10,4
   17592:	01279023          	sh	s2,0(a5)
   17596:	c78ff06f          	j	16a0e <_vfiprintf_r+0xb4>
   1759a:	0ff7f793          	zext.b	a5,a5
   1759e:	4581                	li	a1,0
   175a0:	b2b9                	j	16eee <_vfiprintf_r+0x594>
   175a2:	03000793          	li	a5,48
   175a6:	fe4ff06f          	j	16d8a <_vfiprintf_r+0x430>
   175aa:	5d7d                	li	s10,-1
   175ac:	ecaff06f          	j	16c76 <_vfiprintf_r+0x31c>
   175b0:	000d2d83          	lw	s11,0(s10)
   175b4:	0d11                	addi	s10,s10,4
   175b6:	000dd363          	bgez	s11,175bc <_vfiprintf_r+0xc62>
   175ba:	5dfd                	li	s11,-1
   175bc:	0019c783          	lbu	a5,1(s3)
   175c0:	89b6                	mv	s3,a3
   175c2:	caaff06f          	j	16a6c <_vfiprintf_r+0x112>

000175c6 <vfiprintf>:
   175c6:	87aa                	mv	a5,a0
   175c8:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   175cc:	86b2                	mv	a3,a2
   175ce:	862e                	mv	a2,a1
   175d0:	85be                	mv	a1,a5
   175d2:	b88ff06f          	j	1695a <_vfiprintf_r>

000175d6 <__sbprintf>:
   175d6:	b8010113          	addi	sp,sp,-1152
   175da:	00c59783          	lh	a5,12(a1)
   175de:	00e5d703          	lhu	a4,14(a1)
   175e2:	46812c23          	sw	s0,1144(sp)
   175e6:	842e                	mv	s0,a1
   175e8:	65c1                	lui	a1,0x10
   175ea:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   175ec:	06442e03          	lw	t3,100(s0)
   175f0:	01c42303          	lw	t1,28(s0)
   175f4:	02442883          	lw	a7,36(s0)
   175f8:	0742                	slli	a4,a4,0x10
   175fa:	8fed                	and	a5,a5,a1
   175fc:	8fd9                	or	a5,a5,a4
   175fe:	40000813          	li	a6,1024
   17602:	ca3e                	sw	a5,20(sp)
   17604:	002c                	addi	a1,sp,8
   17606:	189c                	addi	a5,sp,112
   17608:	46912a23          	sw	s1,1140(sp)
   1760c:	47212823          	sw	s2,1136(sp)
   17610:	46112e23          	sw	ra,1148(sp)
   17614:	892a                	mv	s2,a0
   17616:	d6f2                	sw	t3,108(sp)
   17618:	d21a                	sw	t1,36(sp)
   1761a:	d646                	sw	a7,44(sp)
   1761c:	c43e                	sw	a5,8(sp)
   1761e:	cc3e                	sw	a5,24(sp)
   17620:	c842                	sw	a6,16(sp)
   17622:	ce42                	sw	a6,28(sp)
   17624:	d002                	sw	zero,32(sp)
   17626:	b34ff0ef          	jal	1695a <_vfiprintf_r>
   1762a:	84aa                	mv	s1,a0
   1762c:	02055963          	bgez	a0,1765e <__sbprintf+0x88>
   17630:	01415783          	lhu	a5,20(sp)
   17634:	0407f793          	andi	a5,a5,64
   17638:	c799                	beqz	a5,17646 <__sbprintf+0x70>
   1763a:	00c45783          	lhu	a5,12(s0)
   1763e:	0407e793          	ori	a5,a5,64
   17642:	00f41623          	sh	a5,12(s0)
   17646:	47c12083          	lw	ra,1148(sp)
   1764a:	47812403          	lw	s0,1144(sp)
   1764e:	47012903          	lw	s2,1136(sp)
   17652:	8526                	mv	a0,s1
   17654:	47412483          	lw	s1,1140(sp)
   17658:	48010113          	addi	sp,sp,1152
   1765c:	8082                	ret
   1765e:	002c                	addi	a1,sp,8
   17660:	854a                	mv	a0,s2
   17662:	f31fb0ef          	jal	13592 <_fflush_r>
   17666:	d569                	beqz	a0,17630 <__sbprintf+0x5a>
   17668:	54fd                	li	s1,-1
   1766a:	b7d9                	j	17630 <__sbprintf+0x5a>

0001766c <__errno>:
   1766c:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   17670:	8082                	ret

00017672 <abort>:
   17672:	1141                	addi	sp,sp,-16
   17674:	4519                	li	a0,6
   17676:	c606                	sw	ra,12(sp)
   17678:	2a59                	jal	1780e <raise>
   1767a:	4505                	li	a0,1
   1767c:	2e61                	jal	17a14 <_exit>

0001767e <_init_signal_r>:
   1767e:	11852783          	lw	a5,280(a0)
   17682:	c399                	beqz	a5,17688 <_init_signal_r+0xa>
   17684:	4501                	li	a0,0
   17686:	8082                	ret
   17688:	1141                	addi	sp,sp,-16
   1768a:	08000593          	li	a1,128
   1768e:	c422                	sw	s0,8(sp)
   17690:	c606                	sw	ra,12(sp)
   17692:	842a                	mv	s0,a0
   17694:	aa3f90ef          	jal	11136 <_malloc_r>
   17698:	10a42c23          	sw	a0,280(s0)
   1769c:	cd09                	beqz	a0,176b6 <_init_signal_r+0x38>
   1769e:	08050793          	addi	a5,a0,128
   176a2:	00052023          	sw	zero,0(a0)
   176a6:	0511                	addi	a0,a0,4
   176a8:	fef51de3          	bne	a0,a5,176a2 <_init_signal_r+0x24>
   176ac:	4501                	li	a0,0
   176ae:	40b2                	lw	ra,12(sp)
   176b0:	4422                	lw	s0,8(sp)
   176b2:	0141                	addi	sp,sp,16
   176b4:	8082                	ret
   176b6:	557d                	li	a0,-1
   176b8:	bfdd                	j	176ae <_init_signal_r+0x30>

000176ba <_signal_r>:
   176ba:	1101                	addi	sp,sp,-32
   176bc:	ca26                	sw	s1,20(sp)
   176be:	ce06                	sw	ra,28(sp)
   176c0:	47fd                	li	a5,31
   176c2:	84aa                	mv	s1,a0
   176c4:	02b7e063          	bltu	a5,a1,176e4 <_signal_r+0x2a>
   176c8:	11852783          	lw	a5,280(a0)
   176cc:	cc22                	sw	s0,24(sp)
   176ce:	842e                	mv	s0,a1
   176d0:	cf91                	beqz	a5,176ec <_signal_r+0x32>
   176d2:	040a                	slli	s0,s0,0x2
   176d4:	97a2                	add	a5,a5,s0
   176d6:	4462                	lw	s0,24(sp)
   176d8:	4388                	lw	a0,0(a5)
   176da:	c390                	sw	a2,0(a5)
   176dc:	40f2                	lw	ra,28(sp)
   176de:	44d2                	lw	s1,20(sp)
   176e0:	6105                	addi	sp,sp,32
   176e2:	8082                	ret
   176e4:	47d9                	li	a5,22
   176e6:	c11c                	sw	a5,0(a0)
   176e8:	557d                	li	a0,-1
   176ea:	bfcd                	j	176dc <_signal_r+0x22>
   176ec:	08000593          	li	a1,128
   176f0:	c632                	sw	a2,12(sp)
   176f2:	a45f90ef          	jal	11136 <_malloc_r>
   176f6:	10a4ac23          	sw	a0,280(s1)
   176fa:	4632                	lw	a2,12(sp)
   176fc:	87aa                	mv	a5,a0
   176fe:	872a                	mv	a4,a0
   17700:	08050693          	addi	a3,a0,128
   17704:	c519                	beqz	a0,17712 <_signal_r+0x58>
   17706:	00072023          	sw	zero,0(a4)
   1770a:	0711                	addi	a4,a4,4
   1770c:	fed71de3          	bne	a4,a3,17706 <_signal_r+0x4c>
   17710:	b7c9                	j	176d2 <_signal_r+0x18>
   17712:	4462                	lw	s0,24(sp)
   17714:	557d                	li	a0,-1
   17716:	b7d9                	j	176dc <_signal_r+0x22>

00017718 <_raise_r>:
   17718:	1141                	addi	sp,sp,-16
   1771a:	c226                	sw	s1,4(sp)
   1771c:	c606                	sw	ra,12(sp)
   1771e:	47fd                	li	a5,31
   17720:	84aa                	mv	s1,a0
   17722:	04b7ee63          	bltu	a5,a1,1777e <_raise_r+0x66>
   17726:	11852783          	lw	a5,280(a0)
   1772a:	c422                	sw	s0,8(sp)
   1772c:	842e                	mv	s0,a1
   1772e:	c795                	beqz	a5,1775a <_raise_r+0x42>
   17730:	00259713          	slli	a4,a1,0x2
   17734:	97ba                	add	a5,a5,a4
   17736:	4398                	lw	a4,0(a5)
   17738:	c30d                	beqz	a4,1775a <_raise_r+0x42>
   1773a:	4685                	li	a3,1
   1773c:	00d70963          	beq	a4,a3,1774e <_raise_r+0x36>
   17740:	56fd                	li	a3,-1
   17742:	02d70663          	beq	a4,a3,1776e <_raise_r+0x56>
   17746:	0007a023          	sw	zero,0(a5)
   1774a:	852e                	mv	a0,a1
   1774c:	9702                	jalr	a4
   1774e:	4422                	lw	s0,8(sp)
   17750:	4501                	li	a0,0
   17752:	40b2                	lw	ra,12(sp)
   17754:	4492                	lw	s1,4(sp)
   17756:	0141                	addi	sp,sp,16
   17758:	8082                	ret
   1775a:	8526                	mv	a0,s1
   1775c:	2469                	jal	179e6 <_getpid_r>
   1775e:	8622                	mv	a2,s0
   17760:	4422                	lw	s0,8(sp)
   17762:	40b2                	lw	ra,12(sp)
   17764:	85aa                	mv	a1,a0
   17766:	8526                	mv	a0,s1
   17768:	4492                	lw	s1,4(sp)
   1776a:	0141                	addi	sp,sp,16
   1776c:	a489                	j	179ae <_kill_r>
   1776e:	4422                	lw	s0,8(sp)
   17770:	40b2                	lw	ra,12(sp)
   17772:	47d9                	li	a5,22
   17774:	c11c                	sw	a5,0(a0)
   17776:	4492                	lw	s1,4(sp)
   17778:	4505                	li	a0,1
   1777a:	0141                	addi	sp,sp,16
   1777c:	8082                	ret
   1777e:	47d9                	li	a5,22
   17780:	c11c                	sw	a5,0(a0)
   17782:	557d                	li	a0,-1
   17784:	b7f9                	j	17752 <_raise_r+0x3a>

00017786 <__sigtramp_r>:
   17786:	47fd                	li	a5,31
   17788:	08b7e163          	bltu	a5,a1,1780a <__sigtramp_r+0x84>
   1778c:	11852783          	lw	a5,280(a0)
   17790:	1141                	addi	sp,sp,-16
   17792:	c422                	sw	s0,8(sp)
   17794:	c226                	sw	s1,4(sp)
   17796:	c606                	sw	ra,12(sp)
   17798:	842e                	mv	s0,a1
   1779a:	84aa                	mv	s1,a0
   1779c:	c7a1                	beqz	a5,177e4 <__sigtramp_r+0x5e>
   1779e:	00241713          	slli	a4,s0,0x2
   177a2:	97ba                	add	a5,a5,a4
   177a4:	4398                	lw	a4,0(a5)
   177a6:	c30d                	beqz	a4,177c8 <__sigtramp_r+0x42>
   177a8:	56fd                	li	a3,-1
   177aa:	02d70b63          	beq	a4,a3,177e0 <__sigtramp_r+0x5a>
   177ae:	4685                	li	a3,1
   177b0:	02d70263          	beq	a4,a3,177d4 <__sigtramp_r+0x4e>
   177b4:	8522                	mv	a0,s0
   177b6:	0007a023          	sw	zero,0(a5)
   177ba:	9702                	jalr	a4
   177bc:	4501                	li	a0,0
   177be:	40b2                	lw	ra,12(sp)
   177c0:	4422                	lw	s0,8(sp)
   177c2:	4492                	lw	s1,4(sp)
   177c4:	0141                	addi	sp,sp,16
   177c6:	8082                	ret
   177c8:	40b2                	lw	ra,12(sp)
   177ca:	4422                	lw	s0,8(sp)
   177cc:	4492                	lw	s1,4(sp)
   177ce:	4505                	li	a0,1
   177d0:	0141                	addi	sp,sp,16
   177d2:	8082                	ret
   177d4:	40b2                	lw	ra,12(sp)
   177d6:	4422                	lw	s0,8(sp)
   177d8:	4492                	lw	s1,4(sp)
   177da:	450d                	li	a0,3
   177dc:	0141                	addi	sp,sp,16
   177de:	8082                	ret
   177e0:	4509                	li	a0,2
   177e2:	bff1                	j	177be <__sigtramp_r+0x38>
   177e4:	08000593          	li	a1,128
   177e8:	94ff90ef          	jal	11136 <_malloc_r>
   177ec:	10a4ac23          	sw	a0,280(s1)
   177f0:	87aa                	mv	a5,a0
   177f2:	c911                	beqz	a0,17806 <__sigtramp_r+0x80>
   177f4:	872a                	mv	a4,a0
   177f6:	08050693          	addi	a3,a0,128
   177fa:	00072023          	sw	zero,0(a4)
   177fe:	0711                	addi	a4,a4,4
   17800:	fed71de3          	bne	a4,a3,177fa <__sigtramp_r+0x74>
   17804:	bf69                	j	1779e <__sigtramp_r+0x18>
   17806:	557d                	li	a0,-1
   17808:	bf5d                	j	177be <__sigtramp_r+0x38>
   1780a:	557d                	li	a0,-1
   1780c:	8082                	ret

0001780e <raise>:
   1780e:	1141                	addi	sp,sp,-16
   17810:	c226                	sw	s1,4(sp)
   17812:	c606                	sw	ra,12(sp)
   17814:	47fd                	li	a5,31
   17816:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   1781a:	04a7ed63          	bltu	a5,a0,17874 <raise+0x66>
   1781e:	1184a783          	lw	a5,280(s1)
   17822:	c422                	sw	s0,8(sp)
   17824:	842a                	mv	s0,a0
   17826:	c78d                	beqz	a5,17850 <raise+0x42>
   17828:	00251713          	slli	a4,a0,0x2
   1782c:	97ba                	add	a5,a5,a4
   1782e:	4398                	lw	a4,0(a5)
   17830:	c305                	beqz	a4,17850 <raise+0x42>
   17832:	4685                	li	a3,1
   17834:	00d70863          	beq	a4,a3,17844 <raise+0x36>
   17838:	56fd                	li	a3,-1
   1783a:	02d70563          	beq	a4,a3,17864 <raise+0x56>
   1783e:	0007a023          	sw	zero,0(a5)
   17842:	9702                	jalr	a4
   17844:	4422                	lw	s0,8(sp)
   17846:	4501                	li	a0,0
   17848:	40b2                	lw	ra,12(sp)
   1784a:	4492                	lw	s1,4(sp)
   1784c:	0141                	addi	sp,sp,16
   1784e:	8082                	ret
   17850:	8526                	mv	a0,s1
   17852:	2a51                	jal	179e6 <_getpid_r>
   17854:	8622                	mv	a2,s0
   17856:	4422                	lw	s0,8(sp)
   17858:	40b2                	lw	ra,12(sp)
   1785a:	85aa                	mv	a1,a0
   1785c:	8526                	mv	a0,s1
   1785e:	4492                	lw	s1,4(sp)
   17860:	0141                	addi	sp,sp,16
   17862:	a2b1                	j	179ae <_kill_r>
   17864:	4422                	lw	s0,8(sp)
   17866:	40b2                	lw	ra,12(sp)
   17868:	47d9                	li	a5,22
   1786a:	c09c                	sw	a5,0(s1)
   1786c:	4505                	li	a0,1
   1786e:	4492                	lw	s1,4(sp)
   17870:	0141                	addi	sp,sp,16
   17872:	8082                	ret
   17874:	47d9                	li	a5,22
   17876:	c09c                	sw	a5,0(s1)
   17878:	557d                	li	a0,-1
   1787a:	b7f9                	j	17848 <raise+0x3a>

0001787c <signal>:
   1787c:	1141                	addi	sp,sp,-16
   1787e:	c04a                	sw	s2,0(sp)
   17880:	c606                	sw	ra,12(sp)
   17882:	47fd                	li	a5,31
   17884:	f141a903          	lw	s2,-236(gp) # 1b724 <_impure_ptr>
   17888:	02a7e463          	bltu	a5,a0,178b0 <signal+0x34>
   1788c:	c422                	sw	s0,8(sp)
   1788e:	842a                	mv	s0,a0
   17890:	11892503          	lw	a0,280(s2)
   17894:	c226                	sw	s1,4(sp)
   17896:	84ae                	mv	s1,a1
   17898:	c10d                	beqz	a0,178ba <signal+0x3e>
   1789a:	040a                	slli	s0,s0,0x2
   1789c:	008507b3          	add	a5,a0,s0
   178a0:	4388                	lw	a0,0(a5)
   178a2:	4422                	lw	s0,8(sp)
   178a4:	c384                	sw	s1,0(a5)
   178a6:	4492                	lw	s1,4(sp)
   178a8:	40b2                	lw	ra,12(sp)
   178aa:	4902                	lw	s2,0(sp)
   178ac:	0141                	addi	sp,sp,16
   178ae:	8082                	ret
   178b0:	47d9                	li	a5,22
   178b2:	00f92023          	sw	a5,0(s2)
   178b6:	557d                	li	a0,-1
   178b8:	bfc5                	j	178a8 <signal+0x2c>
   178ba:	08000593          	li	a1,128
   178be:	854a                	mv	a0,s2
   178c0:	877f90ef          	jal	11136 <_malloc_r>
   178c4:	10a92c23          	sw	a0,280(s2)
   178c8:	87aa                	mv	a5,a0
   178ca:	08050713          	addi	a4,a0,128
   178ce:	c519                	beqz	a0,178dc <signal+0x60>
   178d0:	0007a023          	sw	zero,0(a5)
   178d4:	0791                	addi	a5,a5,4
   178d6:	fef71de3          	bne	a4,a5,178d0 <signal+0x54>
   178da:	b7c1                	j	1789a <signal+0x1e>
   178dc:	4422                	lw	s0,8(sp)
   178de:	4492                	lw	s1,4(sp)
   178e0:	557d                	li	a0,-1
   178e2:	b7d9                	j	178a8 <signal+0x2c>

000178e4 <_init_signal>:
   178e4:	1141                	addi	sp,sp,-16
   178e6:	c422                	sw	s0,8(sp)
   178e8:	f141a403          	lw	s0,-236(gp) # 1b724 <_impure_ptr>
   178ec:	c606                	sw	ra,12(sp)
   178ee:	11842783          	lw	a5,280(s0)
   178f2:	c791                	beqz	a5,178fe <_init_signal+0x1a>
   178f4:	4501                	li	a0,0
   178f6:	40b2                	lw	ra,12(sp)
   178f8:	4422                	lw	s0,8(sp)
   178fa:	0141                	addi	sp,sp,16
   178fc:	8082                	ret
   178fe:	08000593          	li	a1,128
   17902:	8522                	mv	a0,s0
   17904:	833f90ef          	jal	11136 <_malloc_r>
   17908:	10a42c23          	sw	a0,280(s0)
   1790c:	c909                	beqz	a0,1791e <_init_signal+0x3a>
   1790e:	08050793          	addi	a5,a0,128
   17912:	00052023          	sw	zero,0(a0)
   17916:	0511                	addi	a0,a0,4
   17918:	fef51de3          	bne	a0,a5,17912 <_init_signal+0x2e>
   1791c:	bfe1                	j	178f4 <_init_signal+0x10>
   1791e:	557d                	li	a0,-1
   17920:	bfd9                	j	178f6 <_init_signal+0x12>

00017922 <__sigtramp>:
   17922:	1141                	addi	sp,sp,-16
   17924:	c226                	sw	s1,4(sp)
   17926:	c606                	sw	ra,12(sp)
   17928:	47fd                	li	a5,31
   1792a:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   1792e:	06a7ee63          	bltu	a5,a0,179aa <__sigtramp+0x88>
   17932:	1184a783          	lw	a5,280(s1)
   17936:	c422                	sw	s0,8(sp)
   17938:	842a                	mv	s0,a0
   1793a:	c7a9                	beqz	a5,17984 <__sigtramp+0x62>
   1793c:	00241713          	slli	a4,s0,0x2
   17940:	97ba                	add	a5,a5,a4
   17942:	4398                	lw	a4,0(a5)
   17944:	c30d                	beqz	a4,17966 <__sigtramp+0x44>
   17946:	56fd                	li	a3,-1
   17948:	02d70b63          	beq	a4,a3,1797e <__sigtramp+0x5c>
   1794c:	4685                	li	a3,1
   1794e:	02d70263          	beq	a4,a3,17972 <__sigtramp+0x50>
   17952:	8522                	mv	a0,s0
   17954:	0007a023          	sw	zero,0(a5)
   17958:	9702                	jalr	a4
   1795a:	4422                	lw	s0,8(sp)
   1795c:	4501                	li	a0,0
   1795e:	40b2                	lw	ra,12(sp)
   17960:	4492                	lw	s1,4(sp)
   17962:	0141                	addi	sp,sp,16
   17964:	8082                	ret
   17966:	4422                	lw	s0,8(sp)
   17968:	40b2                	lw	ra,12(sp)
   1796a:	4492                	lw	s1,4(sp)
   1796c:	4505                	li	a0,1
   1796e:	0141                	addi	sp,sp,16
   17970:	8082                	ret
   17972:	4422                	lw	s0,8(sp)
   17974:	40b2                	lw	ra,12(sp)
   17976:	4492                	lw	s1,4(sp)
   17978:	450d                	li	a0,3
   1797a:	0141                	addi	sp,sp,16
   1797c:	8082                	ret
   1797e:	4422                	lw	s0,8(sp)
   17980:	4509                	li	a0,2
   17982:	bff1                	j	1795e <__sigtramp+0x3c>
   17984:	08000593          	li	a1,128
   17988:	8526                	mv	a0,s1
   1798a:	facf90ef          	jal	11136 <_malloc_r>
   1798e:	10a4ac23          	sw	a0,280(s1)
   17992:	87aa                	mv	a5,a0
   17994:	c911                	beqz	a0,179a8 <__sigtramp+0x86>
   17996:	872a                	mv	a4,a0
   17998:	08050693          	addi	a3,a0,128
   1799c:	00072023          	sw	zero,0(a4)
   179a0:	0711                	addi	a4,a4,4
   179a2:	fee69de3          	bne	a3,a4,1799c <__sigtramp+0x7a>
   179a6:	bf59                	j	1793c <__sigtramp+0x1a>
   179a8:	4422                	lw	s0,8(sp)
   179aa:	557d                	li	a0,-1
   179ac:	bf4d                	j	1795e <__sigtramp+0x3c>

000179ae <_kill_r>:
   179ae:	1141                	addi	sp,sp,-16
   179b0:	872e                	mv	a4,a1
   179b2:	c422                	sw	s0,8(sp)
   179b4:	c226                	sw	s1,4(sp)
   179b6:	842a                	mv	s0,a0
   179b8:	85b2                	mv	a1,a2
   179ba:	853a                	mv	a0,a4
   179bc:	c606                	sw	ra,12(sp)
   179be:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   179c2:	28d9                	jal	17a98 <_kill>
   179c4:	57fd                	li	a5,-1
   179c6:	00f50763          	beq	a0,a5,179d4 <_kill_r+0x26>
   179ca:	40b2                	lw	ra,12(sp)
   179cc:	4422                	lw	s0,8(sp)
   179ce:	4492                	lw	s1,4(sp)
   179d0:	0141                	addi	sp,sp,16
   179d2:	8082                	ret
   179d4:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   179d8:	dbed                	beqz	a5,179ca <_kill_r+0x1c>
   179da:	40b2                	lw	ra,12(sp)
   179dc:	c01c                	sw	a5,0(s0)
   179de:	4422                	lw	s0,8(sp)
   179e0:	4492                	lw	s1,4(sp)
   179e2:	0141                	addi	sp,sp,16
   179e4:	8082                	ret

000179e6 <_getpid_r>:
   179e6:	a069                	j	17a70 <_getpid>

000179e8 <_close>:
   179e8:	1141                	addi	sp,sp,-16
   179ea:	c606                	sw	ra,12(sp)
   179ec:	c422                	sw	s0,8(sp)
   179ee:	03900893          	li	a7,57
   179f2:	00000073          	ecall
   179f6:	842a                	mv	s0,a0
   179f8:	00054763          	bltz	a0,17a06 <_close+0x1e>
   179fc:	40b2                	lw	ra,12(sp)
   179fe:	8522                	mv	a0,s0
   17a00:	4422                	lw	s0,8(sp)
   17a02:	0141                	addi	sp,sp,16
   17a04:	8082                	ret
   17a06:	40800433          	neg	s0,s0
   17a0a:	c63ff0ef          	jal	1766c <__errno>
   17a0e:	c100                	sw	s0,0(a0)
   17a10:	547d                	li	s0,-1
   17a12:	b7ed                	j	179fc <_close+0x14>

00017a14 <_exit>:
   17a14:	05d00893          	li	a7,93
   17a18:	00000073          	ecall
   17a1c:	00054363          	bltz	a0,17a22 <_exit+0xe>
   17a20:	a001                	j	17a20 <_exit+0xc>
   17a22:	1141                	addi	sp,sp,-16
   17a24:	c422                	sw	s0,8(sp)
   17a26:	842a                	mv	s0,a0
   17a28:	c606                	sw	ra,12(sp)
   17a2a:	40800433          	neg	s0,s0
   17a2e:	c3fff0ef          	jal	1766c <__errno>
   17a32:	c100                	sw	s0,0(a0)
   17a34:	a001                	j	17a34 <_exit+0x20>

00017a36 <_fstat>:
   17a36:	7175                	addi	sp,sp,-144
   17a38:	c326                	sw	s1,132(sp)
   17a3a:	c706                	sw	ra,140(sp)
   17a3c:	84ae                	mv	s1,a1
   17a3e:	c522                	sw	s0,136(sp)
   17a40:	05000893          	li	a7,80
   17a44:	858a                	mv	a1,sp
   17a46:	00000073          	ecall
   17a4a:	842a                	mv	s0,a0
   17a4c:	00054b63          	bltz	a0,17a62 <_fstat+0x2c>
   17a50:	8526                	mv	a0,s1
   17a52:	858a                	mv	a1,sp
   17a54:	2a05                	jal	17b84 <_conv_stat>
   17a56:	40ba                	lw	ra,140(sp)
   17a58:	8522                	mv	a0,s0
   17a5a:	442a                	lw	s0,136(sp)
   17a5c:	449a                	lw	s1,132(sp)
   17a5e:	6149                	addi	sp,sp,144
   17a60:	8082                	ret
   17a62:	40800433          	neg	s0,s0
   17a66:	c07ff0ef          	jal	1766c <__errno>
   17a6a:	c100                	sw	s0,0(a0)
   17a6c:	547d                	li	s0,-1
   17a6e:	b7cd                	j	17a50 <_fstat+0x1a>

00017a70 <_getpid>:
   17a70:	4505                	li	a0,1
   17a72:	8082                	ret

00017a74 <_isatty>:
   17a74:	7159                	addi	sp,sp,-112
   17a76:	002c                	addi	a1,sp,8
   17a78:	d686                	sw	ra,108(sp)
   17a7a:	fbdff0ef          	jal	17a36 <_fstat>
   17a7e:	57fd                	li	a5,-1
   17a80:	00f50863          	beq	a0,a5,17a90 <_isatty+0x1c>
   17a84:	4532                	lw	a0,12(sp)
   17a86:	50b6                	lw	ra,108(sp)
   17a88:	8135                	srli	a0,a0,0xd
   17a8a:	8905                	andi	a0,a0,1
   17a8c:	6165                	addi	sp,sp,112
   17a8e:	8082                	ret
   17a90:	50b6                	lw	ra,108(sp)
   17a92:	4501                	li	a0,0
   17a94:	6165                	addi	sp,sp,112
   17a96:	8082                	ret

00017a98 <_kill>:
   17a98:	1141                	addi	sp,sp,-16
   17a9a:	c606                	sw	ra,12(sp)
   17a9c:	bd1ff0ef          	jal	1766c <__errno>
   17aa0:	40b2                	lw	ra,12(sp)
   17aa2:	47d9                	li	a5,22
   17aa4:	c11c                	sw	a5,0(a0)
   17aa6:	557d                	li	a0,-1
   17aa8:	0141                	addi	sp,sp,16
   17aaa:	8082                	ret

00017aac <_lseek>:
   17aac:	1141                	addi	sp,sp,-16
   17aae:	c606                	sw	ra,12(sp)
   17ab0:	c422                	sw	s0,8(sp)
   17ab2:	03e00893          	li	a7,62
   17ab6:	00000073          	ecall
   17aba:	842a                	mv	s0,a0
   17abc:	00054763          	bltz	a0,17aca <_lseek+0x1e>
   17ac0:	40b2                	lw	ra,12(sp)
   17ac2:	8522                	mv	a0,s0
   17ac4:	4422                	lw	s0,8(sp)
   17ac6:	0141                	addi	sp,sp,16
   17ac8:	8082                	ret
   17aca:	40800433          	neg	s0,s0
   17ace:	b9fff0ef          	jal	1766c <__errno>
   17ad2:	c100                	sw	s0,0(a0)
   17ad4:	547d                	li	s0,-1
   17ad6:	b7ed                	j	17ac0 <_lseek+0x14>

00017ad8 <_read>:
   17ad8:	1141                	addi	sp,sp,-16
   17ada:	c606                	sw	ra,12(sp)
   17adc:	c422                	sw	s0,8(sp)
   17ade:	03f00893          	li	a7,63
   17ae2:	00000073          	ecall
   17ae6:	842a                	mv	s0,a0
   17ae8:	00054763          	bltz	a0,17af6 <_read+0x1e>
   17aec:	40b2                	lw	ra,12(sp)
   17aee:	8522                	mv	a0,s0
   17af0:	4422                	lw	s0,8(sp)
   17af2:	0141                	addi	sp,sp,16
   17af4:	8082                	ret
   17af6:	40800433          	neg	s0,s0
   17afa:	b73ff0ef          	jal	1766c <__errno>
   17afe:	c100                	sw	s0,0(a0)
   17b00:	547d                	li	s0,-1
   17b02:	b7ed                	j	17aec <_read+0x14>

00017b04 <_sbrk>:
   17b04:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17b08:	1141                	addi	sp,sp,-16
   17b0a:	c606                	sw	ra,12(sp)
   17b0c:	87aa                	mv	a5,a0
   17b0e:	ef01                	bnez	a4,17b26 <_sbrk+0x22>
   17b10:	0d600893          	li	a7,214
   17b14:	4501                	li	a0,0
   17b16:	00000073          	ecall
   17b1a:	567d                	li	a2,-1
   17b1c:	872a                	mv	a4,a0
   17b1e:	02c50563          	beq	a0,a2,17b48 <_sbrk+0x44>
   17b22:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17b26:	0d600893          	li	a7,214
   17b2a:	00e78533          	add	a0,a5,a4
   17b2e:	00000073          	ecall
   17b32:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17b36:	97ba                	add	a5,a5,a4
   17b38:	00f51863          	bne	a0,a5,17b48 <_sbrk+0x44>
   17b3c:	40b2                	lw	ra,12(sp)
   17b3e:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17b42:	853a                	mv	a0,a4
   17b44:	0141                	addi	sp,sp,16
   17b46:	8082                	ret
   17b48:	b25ff0ef          	jal	1766c <__errno>
   17b4c:	40b2                	lw	ra,12(sp)
   17b4e:	47b1                	li	a5,12
   17b50:	c11c                	sw	a5,0(a0)
   17b52:	557d                	li	a0,-1
   17b54:	0141                	addi	sp,sp,16
   17b56:	8082                	ret

00017b58 <_write>:
   17b58:	1141                	addi	sp,sp,-16
   17b5a:	c606                	sw	ra,12(sp)
   17b5c:	c422                	sw	s0,8(sp)
   17b5e:	04000893          	li	a7,64
   17b62:	00000073          	ecall
   17b66:	842a                	mv	s0,a0
   17b68:	00054763          	bltz	a0,17b76 <_write+0x1e>
   17b6c:	40b2                	lw	ra,12(sp)
   17b6e:	8522                	mv	a0,s0
   17b70:	4422                	lw	s0,8(sp)
   17b72:	0141                	addi	sp,sp,16
   17b74:	8082                	ret
   17b76:	40800433          	neg	s0,s0
   17b7a:	af3ff0ef          	jal	1766c <__errno>
   17b7e:	c100                	sw	s0,0(a0)
   17b80:	547d                	li	s0,-1
   17b82:	b7ed                	j	17b6c <_write+0x14>

00017b84 <_conv_stat>:
   17b84:	0185d703          	lhu	a4,24(a1)
   17b88:	0145d783          	lhu	a5,20(a1)
   17b8c:	1141                	addi	sp,sp,-16
   17b8e:	01c5a283          	lw	t0,28(a1)
   17b92:	0205af83          	lw	t6,32(a1)
   17b96:	0305af03          	lw	t5,48(a1)
   17b9a:	0405ae83          	lw	t4,64(a1)
   17b9e:	0385ae03          	lw	t3,56(a1)
   17ba2:	0485a303          	lw	t1,72(a1)
   17ba6:	04c5a383          	lw	t2,76(a1)
   17baa:	0585a803          	lw	a6,88(a1)
   17bae:	05c5a883          	lw	a7,92(a1)
   17bb2:	c622                	sw	s0,12(sp)
   17bb4:	c426                	sw	s1,8(sp)
   17bb6:	4980                	lw	s0,16(a1)
   17bb8:	4584                	lw	s1,8(a1)
   17bba:	c24a                	sw	s2,4(sp)
   17bbc:	0005a903          	lw	s2,0(a1)
   17bc0:	55b0                	lw	a2,104(a1)
   17bc2:	0742                	slli	a4,a4,0x10
   17bc4:	8fd9                	or	a5,a5,a4
   17bc6:	55f4                	lw	a3,108(a1)
   17bc8:	01251023          	sh	s2,0(a0)
   17bcc:	00951123          	sh	s1,2(a0)
   17bd0:	c140                	sw	s0,4(a0)
   17bd2:	c51c                	sw	a5,8(a0)
   17bd4:	00551623          	sh	t0,12(a0)
   17bd8:	01f51723          	sh	t6,14(a0)
   17bdc:	01e52823          	sw	t5,16(a0)
   17be0:	05d52623          	sw	t4,76(a0)
   17be4:	05c52423          	sw	t3,72(a0)
   17be8:	00652c23          	sw	t1,24(a0)
   17bec:	00752e23          	sw	t2,28(a0)
   17bf0:	03052423          	sw	a6,40(a0)
   17bf4:	03152623          	sw	a7,44(a0)
   17bf8:	dd10                	sw	a2,56(a0)
   17bfa:	4432                	lw	s0,12(sp)
   17bfc:	dd54                	sw	a3,60(a0)
   17bfe:	44a2                	lw	s1,8(sp)
   17c00:	4912                	lw	s2,4(sp)
   17c02:	0141                	addi	sp,sp,16
   17c04:	8082                	ret

00017c06 <__eqtf2>:
   17c06:	411c                	lw	a5,0(a0)
   17c08:	00452e03          	lw	t3,4(a0)
   17c0c:	00852e83          	lw	t4,8(a0)
   17c10:	4554                	lw	a3,12(a0)
   17c12:	4198                	lw	a4,0(a1)
   17c14:	0045af83          	lw	t6,4(a1)
   17c18:	0085af03          	lw	t5,8(a1)
   17c1c:	00c5a883          	lw	a7,12(a1)
   17c20:	1141                	addi	sp,sp,-16
   17c22:	00202673          	frrm	a2
   17c26:	6521                	lui	a0,0x8
   17c28:	0106d613          	srli	a2,a3,0x10
   17c2c:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17c2e:	01069313          	slli	t1,a3,0x10
   17c32:	01089593          	slli	a1,a7,0x10
   17c36:	01f6d813          	srli	a6,a3,0x1f
   17c3a:	8e69                	and	a2,a2,a0
   17c3c:	0108d693          	srli	a3,a7,0x10
   17c40:	01035313          	srli	t1,t1,0x10
   17c44:	81c1                	srli	a1,a1,0x10
   17c46:	8ee9                	and	a3,a3,a0
   17c48:	01f8d893          	srli	a7,a7,0x1f
   17c4c:	00a61c63          	bne	a2,a0,17c64 <__eqtf2+0x5e>
   17c50:	01c7e533          	or	a0,a5,t3
   17c54:	01d56533          	or	a0,a0,t4
   17c58:	00656533          	or	a0,a0,t1
   17c5c:	e51d                	bnez	a0,17c8a <__eqtf2+0x84>
   17c5e:	04c69b63          	bne	a3,a2,17cb4 <__eqtf2+0xae>
   17c62:	a019                	j	17c68 <__eqtf2+0x62>
   17c64:	04a69a63          	bne	a3,a0,17cb8 <__eqtf2+0xb2>
   17c68:	01f76533          	or	a0,a4,t6
   17c6c:	01e56533          	or	a0,a0,t5
   17c70:	8d4d                	or	a0,a0,a1
   17c72:	c139                	beqz	a0,17cb8 <__eqtf2+0xb2>
   17c74:	6521                	lui	a0,0x8
   17c76:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17c78:	02a61a63          	bne	a2,a0,17cac <__eqtf2+0xa6>
   17c7c:	01c7e7b3          	or	a5,a5,t3
   17c80:	01d7e7b3          	or	a5,a5,t4
   17c84:	0067e7b3          	or	a5,a5,t1
   17c88:	cb99                	beqz	a5,17c9e <__eqtf2+0x98>
   17c8a:	0342                	slli	t1,t1,0x10
   17c8c:	41035313          	srai	t1,t1,0x10
   17c90:	04035c63          	bgez	t1,17ce8 <__eqtf2+0xe2>
   17c94:	67a1                	lui	a5,0x8
   17c96:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   17c98:	4505                	li	a0,1
   17c9a:	04f69563          	bne	a3,a5,17ce4 <__eqtf2+0xde>
   17c9e:	01f76733          	or	a4,a4,t6
   17ca2:	01e76733          	or	a4,a4,t5
   17ca6:	8f4d                	or	a4,a4,a1
   17ca8:	4505                	li	a0,1
   17caa:	cf0d                	beqz	a4,17ce4 <__eqtf2+0xde>
   17cac:	05c2                	slli	a1,a1,0x10
   17cae:	85c1                	srai	a1,a1,0x10
   17cb0:	0205dc63          	bgez	a1,17ce8 <__eqtf2+0xe2>
   17cb4:	4505                	li	a0,1
   17cb6:	a03d                	j	17ce4 <__eqtf2+0xde>
   17cb8:	4505                	li	a0,1
   17cba:	02c69563          	bne	a3,a2,17ce4 <__eqtf2+0xde>
   17cbe:	02e79363          	bne	a5,a4,17ce4 <__eqtf2+0xde>
   17cc2:	03fe1163          	bne	t3,t6,17ce4 <__eqtf2+0xde>
   17cc6:	01ee9f63          	bne	t4,t5,17ce4 <__eqtf2+0xde>
   17cca:	00b31d63          	bne	t1,a1,17ce4 <__eqtf2+0xde>
   17cce:	03180063          	beq	a6,a7,17cee <__eqtf2+0xe8>
   17cd2:	ea89                	bnez	a3,17ce4 <__eqtf2+0xde>
   17cd4:	01c7e533          	or	a0,a5,t3
   17cd8:	01d56533          	or	a0,a0,t4
   17cdc:	00656533          	or	a0,a0,t1
   17ce0:	00a03533          	snez	a0,a0
   17ce4:	0141                	addi	sp,sp,16
   17ce6:	8082                	ret
   17ce8:	00186073          	csrsi	fflags,16
   17cec:	b7e1                	j	17cb4 <__eqtf2+0xae>
   17cee:	4501                	li	a0,0
   17cf0:	bfd5                	j	17ce4 <__eqtf2+0xde>

00017cf2 <__getf2>:
   17cf2:	00052883          	lw	a7,0(a0)
   17cf6:	00452303          	lw	t1,4(a0)
   17cfa:	00852e03          	lw	t3,8(a0)
   17cfe:	455c                	lw	a5,12(a0)
   17d00:	0005ae83          	lw	t4,0(a1)
   17d04:	0045af03          	lw	t5,4(a1)
   17d08:	0085af83          	lw	t6,8(a1)
   17d0c:	45d4                	lw	a3,12(a1)
   17d0e:	1141                	addi	sp,sp,-16
   17d10:	00202773          	frrm	a4
   17d14:	6721                	lui	a4,0x8
   17d16:	0107d613          	srli	a2,a5,0x10
   17d1a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17d1c:	01079813          	slli	a6,a5,0x10
   17d20:	01069293          	slli	t0,a3,0x10
   17d24:	0106d513          	srli	a0,a3,0x10
   17d28:	8e79                	and	a2,a2,a4
   17d2a:	01085813          	srli	a6,a6,0x10
   17d2e:	83fd                	srli	a5,a5,0x1f
   17d30:	0102d293          	srli	t0,t0,0x10
   17d34:	8d79                	and	a0,a0,a4
   17d36:	82fd                	srli	a3,a3,0x1f
   17d38:	00e61963          	bne	a2,a4,17d4a <__getf2+0x58>
   17d3c:	01136733          	or	a4,t1,a7
   17d40:	01c76733          	or	a4,a4,t3
   17d44:	01076733          	or	a4,a4,a6
   17d48:	ef35                	bnez	a4,17dc4 <__getf2+0xd2>
   17d4a:	6721                	lui	a4,0x8
   17d4c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17d4e:	00e51963          	bne	a0,a4,17d60 <__getf2+0x6e>
   17d52:	01eee733          	or	a4,t4,t5
   17d56:	01f76733          	or	a4,a4,t6
   17d5a:	00576733          	or	a4,a4,t0
   17d5e:	e33d                	bnez	a4,17dc4 <__getf2+0xd2>
   17d60:	4701                	li	a4,0
   17d62:	ea09                	bnez	a2,17d74 <__getf2+0x82>
   17d64:	01136733          	or	a4,t1,a7
   17d68:	01c76733          	or	a4,a4,t3
   17d6c:	01076733          	or	a4,a4,a6
   17d70:	00173713          	seqz	a4,a4
   17d74:	ed21                	bnez	a0,17dcc <__getf2+0xda>
   17d76:	01eee5b3          	or	a1,t4,t5
   17d7a:	01f5e5b3          	or	a1,a1,t6
   17d7e:	0055e5b3          	or	a1,a1,t0
   17d82:	c711                	beqz	a4,17d8e <__getf2+0x9c>
   17d84:	c981                	beqz	a1,17d94 <__getf2+0xa2>
   17d86:	4505                	li	a0,1
   17d88:	e691                	bnez	a3,17d94 <__getf2+0xa2>
   17d8a:	557d                	li	a0,-1
   17d8c:	a021                	j	17d94 <__getf2+0xa2>
   17d8e:	e1a1                	bnez	a1,17dce <__getf2+0xdc>
   17d90:	557d                	li	a0,-1
   17d92:	c7a1                	beqz	a5,17dda <__getf2+0xe8>
   17d94:	0141                	addi	sp,sp,16
   17d96:	8082                	ret
   17d98:	fea647e3          	blt	a2,a0,17d86 <__getf2+0x94>
   17d9c:	ff02eae3          	bltu	t0,a6,17d90 <__getf2+0x9e>
   17da0:	00581f63          	bne	a6,t0,17dbe <__getf2+0xcc>
   17da4:	ffcfe6e3          	bltu	t6,t3,17d90 <__getf2+0x9e>
   17da8:	01fe1b63          	bne	t3,t6,17dbe <__getf2+0xcc>
   17dac:	fe6f62e3          	bltu	t5,t1,17d90 <__getf2+0x9e>
   17db0:	01e31763          	bne	t1,t5,17dbe <__getf2+0xcc>
   17db4:	fd1eeee3          	bltu	t4,a7,17d90 <__getf2+0x9e>
   17db8:	4501                	li	a0,0
   17dba:	fdd8fde3          	bgeu	a7,t4,17d94 <__getf2+0xa2>
   17dbe:	4505                	li	a0,1
   17dc0:	fbf1                	bnez	a5,17d94 <__getf2+0xa2>
   17dc2:	b7e1                	j	17d8a <__getf2+0x98>
   17dc4:	00186073          	csrsi	fflags,16
   17dc8:	5579                	li	a0,-2
   17dca:	b7e9                	j	17d94 <__getf2+0xa2>
   17dcc:	ff4d                	bnez	a4,17d86 <__getf2+0x94>
   17dce:	fcf691e3          	bne	a3,a5,17d90 <__getf2+0x9e>
   17dd2:	fcc553e3          	bge	a0,a2,17d98 <__getf2+0xa6>
   17dd6:	557d                	li	a0,-1
   17dd8:	fed5                	bnez	a3,17d94 <__getf2+0xa2>
   17dda:	4505                	li	a0,1
   17ddc:	bf65                	j	17d94 <__getf2+0xa2>

00017dde <__letf2>:
   17dde:	00052883          	lw	a7,0(a0)
   17de2:	00452303          	lw	t1,4(a0)
   17de6:	00852e03          	lw	t3,8(a0)
   17dea:	455c                	lw	a5,12(a0)
   17dec:	0005ae83          	lw	t4,0(a1)
   17df0:	0045af03          	lw	t5,4(a1)
   17df4:	0085af83          	lw	t6,8(a1)
   17df8:	45d4                	lw	a3,12(a1)
   17dfa:	1141                	addi	sp,sp,-16
   17dfc:	00202773          	frrm	a4
   17e00:	6721                	lui	a4,0x8
   17e02:	0107d613          	srli	a2,a5,0x10
   17e06:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17e08:	01079813          	slli	a6,a5,0x10
   17e0c:	01069293          	slli	t0,a3,0x10
   17e10:	0106d513          	srli	a0,a3,0x10
   17e14:	8e79                	and	a2,a2,a4
   17e16:	01085813          	srli	a6,a6,0x10
   17e1a:	83fd                	srli	a5,a5,0x1f
   17e1c:	0102d293          	srli	t0,t0,0x10
   17e20:	8d79                	and	a0,a0,a4
   17e22:	82fd                	srli	a3,a3,0x1f
   17e24:	00e61963          	bne	a2,a4,17e36 <__letf2+0x58>
   17e28:	01136733          	or	a4,t1,a7
   17e2c:	01c76733          	or	a4,a4,t3
   17e30:	01076733          	or	a4,a4,a6
   17e34:	ef35                	bnez	a4,17eb0 <__letf2+0xd2>
   17e36:	6721                	lui	a4,0x8
   17e38:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17e3a:	00e51963          	bne	a0,a4,17e4c <__letf2+0x6e>
   17e3e:	01eee733          	or	a4,t4,t5
   17e42:	01f76733          	or	a4,a4,t6
   17e46:	00576733          	or	a4,a4,t0
   17e4a:	e33d                	bnez	a4,17eb0 <__letf2+0xd2>
   17e4c:	4701                	li	a4,0
   17e4e:	ea09                	bnez	a2,17e60 <__letf2+0x82>
   17e50:	01136733          	or	a4,t1,a7
   17e54:	01c76733          	or	a4,a4,t3
   17e58:	01076733          	or	a4,a4,a6
   17e5c:	00173713          	seqz	a4,a4
   17e60:	ed21                	bnez	a0,17eb8 <__letf2+0xda>
   17e62:	01eee5b3          	or	a1,t4,t5
   17e66:	01f5e5b3          	or	a1,a1,t6
   17e6a:	0055e5b3          	or	a1,a1,t0
   17e6e:	c711                	beqz	a4,17e7a <__letf2+0x9c>
   17e70:	c981                	beqz	a1,17e80 <__letf2+0xa2>
   17e72:	4505                	li	a0,1
   17e74:	e691                	bnez	a3,17e80 <__letf2+0xa2>
   17e76:	557d                	li	a0,-1
   17e78:	a021                	j	17e80 <__letf2+0xa2>
   17e7a:	e1a1                	bnez	a1,17eba <__letf2+0xdc>
   17e7c:	557d                	li	a0,-1
   17e7e:	c7a1                	beqz	a5,17ec6 <__letf2+0xe8>
   17e80:	0141                	addi	sp,sp,16
   17e82:	8082                	ret
   17e84:	fea647e3          	blt	a2,a0,17e72 <__letf2+0x94>
   17e88:	ff02eae3          	bltu	t0,a6,17e7c <__letf2+0x9e>
   17e8c:	00581f63          	bne	a6,t0,17eaa <__letf2+0xcc>
   17e90:	ffcfe6e3          	bltu	t6,t3,17e7c <__letf2+0x9e>
   17e94:	01fe1b63          	bne	t3,t6,17eaa <__letf2+0xcc>
   17e98:	fe6f62e3          	bltu	t5,t1,17e7c <__letf2+0x9e>
   17e9c:	01e31763          	bne	t1,t5,17eaa <__letf2+0xcc>
   17ea0:	fd1eeee3          	bltu	t4,a7,17e7c <__letf2+0x9e>
   17ea4:	4501                	li	a0,0
   17ea6:	fdd8fde3          	bgeu	a7,t4,17e80 <__letf2+0xa2>
   17eaa:	4505                	li	a0,1
   17eac:	fbf1                	bnez	a5,17e80 <__letf2+0xa2>
   17eae:	b7e1                	j	17e76 <__letf2+0x98>
   17eb0:	00186073          	csrsi	fflags,16
   17eb4:	4509                	li	a0,2
   17eb6:	b7e9                	j	17e80 <__letf2+0xa2>
   17eb8:	ff4d                	bnez	a4,17e72 <__letf2+0x94>
   17eba:	fcf691e3          	bne	a3,a5,17e7c <__letf2+0x9e>
   17ebe:	fcc553e3          	bge	a0,a2,17e84 <__letf2+0xa6>
   17ec2:	557d                	li	a0,-1
   17ec4:	fed5                	bnez	a3,17e80 <__letf2+0xa2>
   17ec6:	4505                	li	a0,1
   17ec8:	bf65                	j	17e80 <__letf2+0xa2>

00017eca <__multf3>:
   17eca:	7131                	addi	sp,sp,-192
   17ecc:	d552                	sw	s4,168(sp)
   17ece:	d356                	sw	s5,164(sp)
   17ed0:	d15a                	sw	s6,160(sp)
   17ed2:	cf5e                	sw	s7,156(sp)
   17ed4:	c62a                	sw	a0,12(sp)
   17ed6:	419c                	lw	a5,0(a1)
   17ed8:	41c8                	lw	a0,4(a1)
   17eda:	4594                	lw	a3,8(a1)
   17edc:	45d8                	lw	a4,12(a1)
   17ede:	00062a83          	lw	s5,0(a2)
   17ee2:	00462b83          	lw	s7,4(a2)
   17ee6:	00862b03          	lw	s6,8(a2)
   17eea:	00c62a03          	lw	s4,12(a2)
   17eee:	df06                	sw	ra,188(sp)
   17ef0:	dd22                	sw	s0,184(sp)
   17ef2:	db26                	sw	s1,180(sp)
   17ef4:	d94a                	sw	s2,176(sp)
   17ef6:	d74e                	sw	s3,172(sp)
   17ef8:	cd62                	sw	s8,152(sp)
   17efa:	cb66                	sw	s9,148(sp)
   17efc:	c96a                	sw	s10,144(sp)
   17efe:	c76e                	sw	s11,140(sp)
   17f00:	002024f3          	frrm	s1
   17f04:	6621                	lui	a2,0x8
   17f06:	01071413          	slli	s0,a4,0x10
   17f0a:	8041                	srli	s0,s0,0x10
   17f0c:	01075913          	srli	s2,a4,0x10
   17f10:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   17f12:	d0be                	sw	a5,96(sp)
   17f14:	d2aa                	sw	a0,100(sp)
   17f16:	d4b6                	sw	a3,104(sp)
   17f18:	d6ba                	sw	a4,108(sp)
   17f1a:	d83e                	sw	a5,48(sp)
   17f1c:	da2a                	sw	a0,52(sp)
   17f1e:	dc36                	sw	a3,56(sp)
   17f20:	de22                	sw	s0,60(sp)
   17f22:	00c97933          	and	s2,s2,a2
   17f26:	01f75993          	srli	s3,a4,0x1f
   17f2a:	02090a63          	beqz	s2,17f5e <__multf3+0x94>
   17f2e:	10c90d63          	beq	s2,a2,18048 <__multf3+0x17e>
   17f32:	6741                	lui	a4,0x10
   17f34:	8c59                	or	s0,s0,a4
   17f36:	de22                	sw	s0,60(sp)
   17f38:	1818                	addi	a4,sp,48
   17f3a:	104c                	addi	a1,sp,36
   17f3c:	4754                	lw	a3,12(a4)
   17f3e:	4710                	lw	a2,8(a4)
   17f40:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   17f42:	068e                	slli	a3,a3,0x3
   17f44:	8275                	srli	a2,a2,0x1d
   17f46:	8ed1                	or	a3,a3,a2
   17f48:	cb14                	sw	a3,16(a4)
   17f4a:	fee599e3          	bne	a1,a4,17f3c <__multf3+0x72>
   17f4e:	078e                	slli	a5,a5,0x3
   17f50:	d83e                	sw	a5,48(sp)
   17f52:	77f1                	lui	a5,0xffffc
   17f54:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   17f56:	993e                	add	s2,s2,a5
   17f58:	4c01                	li	s8,0
   17f5a:	4401                	li	s0,0
   17f5c:	a211                	j	18060 <__multf3+0x196>
   17f5e:	00a7e733          	or	a4,a5,a0
   17f62:	8f55                	or	a4,a4,a3
   17f64:	8f41                	or	a4,a4,s0
   17f66:	70070d63          	beqz	a4,18680 <__multf3+0x7b6>
   17f6a:	cc2d                	beqz	s0,17fe4 <__multf3+0x11a>
   17f6c:	8522                	mv	a0,s0
   17f6e:	108020ef          	jal	1a076 <__clzsi2>
   17f72:	ff450693          	addi	a3,a0,-12
   17f76:	4056d793          	srai	a5,a3,0x5
   17f7a:	8afd                	andi	a3,a3,31
   17f7c:	c6d9                	beqz	a3,1800a <__multf3+0x140>
   17f7e:	5671                	li	a2,-4
   17f80:	02c78633          	mul	a2,a5,a2
   17f84:	02000813          	li	a6,32
   17f88:	03010313          	addi	t1,sp,48
   17f8c:	40d80833          	sub	a6,a6,a3
   17f90:	00c60713          	addi	a4,a2,12
   17f94:	971a                	add	a4,a4,t1
   17f96:	40c00633          	neg	a2,a2
   17f9a:	08e31863          	bne	t1,a4,1802a <__multf3+0x160>
   17f9e:	fff78713          	addi	a4,a5,-1
   17fa2:	078a                	slli	a5,a5,0x2
   17fa4:	1810                	addi	a2,sp,48
   17fa6:	05078793          	addi	a5,a5,80
   17faa:	97b2                	add	a5,a5,a2
   17fac:	5642                	lw	a2,48(sp)
   17fae:	00d616b3          	sll	a3,a2,a3
   17fb2:	fad7a823          	sw	a3,-80(a5)
   17fb6:	00170793          	addi	a5,a4,1
   17fba:	078a                	slli	a5,a5,0x2
   17fbc:	46a1                	li	a3,8
   17fbe:	1818                	addi	a4,sp,48
   17fc0:	00d7e863          	bltu	a5,a3,17fd0 <__multf3+0x106>
   17fc4:	00072023          	sw	zero,0(a4)
   17fc8:	00072223          	sw	zero,4(a4)
   17fcc:	17e1                	addi	a5,a5,-8
   17fce:	1838                	addi	a4,sp,56
   17fd0:	4691                	li	a3,4
   17fd2:	00d7e463          	bltu	a5,a3,17fda <__multf3+0x110>
   17fd6:	00072023          	sw	zero,0(a4)
   17fda:	7971                	lui	s2,0xffffc
   17fdc:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   17fde:	40a90933          	sub	s2,s2,a0
   17fe2:	bf9d                	j	17f58 <__multf3+0x8e>
   17fe4:	c699                	beqz	a3,17ff2 <__multf3+0x128>
   17fe6:	8536                	mv	a0,a3
   17fe8:	08e020ef          	jal	1a076 <__clzsi2>
   17fec:	02050513          	addi	a0,a0,32
   17ff0:	b749                	j	17f72 <__multf3+0xa8>
   17ff2:	c511                	beqz	a0,17ffe <__multf3+0x134>
   17ff4:	082020ef          	jal	1a076 <__clzsi2>
   17ff8:	04050513          	addi	a0,a0,64
   17ffc:	bf9d                	j	17f72 <__multf3+0xa8>
   17ffe:	853e                	mv	a0,a5
   18000:	076020ef          	jal	1a076 <__clzsi2>
   18004:	06050513          	addi	a0,a0,96
   18008:	b7ad                	j	17f72 <__multf3+0xa8>
   1800a:	5671                	li	a2,-4
   1800c:	02c78633          	mul	a2,a5,a2
   18010:	1878                	addi	a4,sp,60
   18012:	468d                	li	a3,3
   18014:	00c705b3          	add	a1,a4,a2
   18018:	418c                	lw	a1,0(a1)
   1801a:	16fd                	addi	a3,a3,-1
   1801c:	1771                	addi	a4,a4,-4
   1801e:	c34c                	sw	a1,4(a4)
   18020:	fef6dae3          	bge	a3,a5,18014 <__multf3+0x14a>
   18024:	fff78713          	addi	a4,a5,-1
   18028:	b779                	j	17fb6 <__multf3+0xec>
   1802a:	430c                	lw	a1,0(a4)
   1802c:	ffc72883          	lw	a7,-4(a4)
   18030:	00c70e33          	add	t3,a4,a2
   18034:	00d595b3          	sll	a1,a1,a3
   18038:	0108d8b3          	srl	a7,a7,a6
   1803c:	0115e5b3          	or	a1,a1,a7
   18040:	00be2023          	sw	a1,0(t3)
   18044:	1771                	addi	a4,a4,-4
   18046:	bf91                	j	17f9a <__multf3+0xd0>
   18048:	8fc9                	or	a5,a5,a0
   1804a:	8fd5                	or	a5,a5,a3
   1804c:	8fc1                	or	a5,a5,s0
   1804e:	62078c63          	beqz	a5,18686 <__multf3+0x7bc>
   18052:	0442                	slli	s0,s0,0x10
   18054:	8441                	srai	s0,s0,0x10
   18056:	fff44413          	not	s0,s0
   1805a:	807d                	srli	s0,s0,0x1f
   1805c:	0412                	slli	s0,s0,0x4
   1805e:	4c0d                	li	s8,3
   18060:	010a1513          	slli	a0,s4,0x10
   18064:	6721                	lui	a4,0x8
   18066:	010a5793          	srli	a5,s4,0x10
   1806a:	8141                	srli	a0,a0,0x10
   1806c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1806e:	d6d2                	sw	s4,108(sp)
   18070:	d0d6                	sw	s5,96(sp)
   18072:	d2de                	sw	s7,100(sp)
   18074:	d4da                	sw	s6,104(sp)
   18076:	c0d6                	sw	s5,64(sp)
   18078:	c2de                	sw	s7,68(sp)
   1807a:	c4da                	sw	s6,72(sp)
   1807c:	c6aa                	sw	a0,76(sp)
   1807e:	8ff9                	and	a5,a5,a4
   18080:	01fa5a13          	srli	s4,s4,0x1f
   18084:	60078363          	beqz	a5,1868a <__multf3+0x7c0>
   18088:	6ee78863          	beq	a5,a4,18778 <__multf3+0x8ae>
   1808c:	6741                	lui	a4,0x10
   1808e:	8d59                	or	a0,a0,a4
   18090:	c6aa                	sw	a0,76(sp)
   18092:	0098                	addi	a4,sp,64
   18094:	184c                	addi	a1,sp,52
   18096:	4754                	lw	a3,12(a4)
   18098:	4710                	lw	a2,8(a4)
   1809a:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1809c:	068e                	slli	a3,a3,0x3
   1809e:	8275                	srli	a2,a2,0x1d
   180a0:	8ed1                	or	a3,a3,a2
   180a2:	cb14                	sw	a3,16(a4)
   180a4:	fee599e3          	bne	a1,a4,18096 <__multf3+0x1cc>
   180a8:	7771                	lui	a4,0xffffc
   180aa:	0a8e                	slli	s5,s5,0x3
   180ac:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   180ae:	c0d6                	sw	s5,64(sp)
   180b0:	97ba                	add	a5,a5,a4
   180b2:	4681                	li	a3,0
   180b4:	97ca                	add	a5,a5,s2
   180b6:	ca3e                	sw	a5,20(sp)
   180b8:	0785                	addi	a5,a5,1
   180ba:	c83e                	sw	a5,16(sp)
   180bc:	002c1793          	slli	a5,s8,0x2
   180c0:	8fd5                	or	a5,a5,a3
   180c2:	4729                	li	a4,10
   180c4:	70f74363          	blt	a4,a5,187ca <__multf3+0x900>
   180c8:	4609                	li	a2,2
   180ca:	0149c733          	xor	a4,s3,s4
   180ce:	6cf64863          	blt	a2,a5,1879e <__multf3+0x8d4>
   180d2:	17fd                	addi	a5,a5,-1
   180d4:	4605                	li	a2,1
   180d6:	70f67263          	bgeu	a2,a5,187da <__multf3+0x910>
   180da:	5542                	lw	a0,48(sp)
   180dc:	4306                	lw	t1,64(sp)
   180de:	6841                	lui	a6,0x10
   180e0:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   180e4:	01055913          	srli	s2,a0,0x10
   180e8:	01035393          	srli	t2,t1,0x10
   180ec:	8d6d                	and	a0,a0,a1
   180ee:	00b37333          	and	t1,t1,a1
   180f2:	02a30633          	mul	a2,t1,a0
   180f6:	026908b3          	mul	a7,s2,t1
   180fa:	01065793          	srli	a5,a2,0x10
   180fe:	02a386b3          	mul	a3,t2,a0
   18102:	96c6                	add	a3,a3,a7
   18104:	97b6                	add	a5,a5,a3
   18106:	02790bb3          	mul	s7,s2,t2
   1810a:	0117f363          	bgeu	a5,a7,18110 <__multf3+0x246>
   1810e:	9bc2                	add	s7,s7,a6
   18110:	4896                	lw	a7,68(sp)
   18112:	0107d693          	srli	a3,a5,0x10
   18116:	8fed                	and	a5,a5,a1
   18118:	8e6d                	and	a2,a2,a1
   1811a:	07c2                	slli	a5,a5,0x10
   1811c:	97b2                	add	a5,a5,a2
   1811e:	0108df93          	srli	t6,a7,0x10
   18122:	00b8f8b3          	and	a7,a7,a1
   18126:	031905b3          	mul	a1,s2,a7
   1812a:	d03e                	sw	a5,32(sp)
   1812c:	d0be                	sw	a5,96(sp)
   1812e:	02af8633          	mul	a2,t6,a0
   18132:	02a887b3          	mul	a5,a7,a0
   18136:	962e                	add	a2,a2,a1
   18138:	0107d813          	srli	a6,a5,0x10
   1813c:	9832                	add	a6,a6,a2
   1813e:	03f90b33          	mul	s6,s2,t6
   18142:	00b87463          	bgeu	a6,a1,1814a <__multf3+0x280>
   18146:	6641                	lui	a2,0x10
   18148:	9b32                	add	s6,s6,a2
   1814a:	01085613          	srli	a2,a6,0x10
   1814e:	55d2                	lw	a1,52(sp)
   18150:	cc32                	sw	a2,24(sp)
   18152:	6641                	lui	a2,0x10
   18154:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   18158:	01d87833          	and	a6,a6,t4
   1815c:	01d7f7b3          	and	a5,a5,t4
   18160:	0105d293          	srli	t0,a1,0x10
   18164:	0842                	slli	a6,a6,0x10
   18166:	01d5f5b3          	and	a1,a1,t4
   1816a:	983e                	add	a6,a6,a5
   1816c:	02628a33          	mul	s4,t0,t1
   18170:	96c2                	add	a3,a3,a6
   18172:	026587b3          	mul	a5,a1,t1
   18176:	02b38eb3          	mul	t4,t2,a1
   1817a:	0107d993          	srli	s3,a5,0x10
   1817e:	9ed2                	add	t4,t4,s4
   18180:	99f6                	add	s3,s3,t4
   18182:	02538f33          	mul	t5,t2,t0
   18186:	0149f363          	bgeu	s3,s4,1818c <__multf3+0x2c2>
   1818a:	9f32                	add	t5,t5,a2
   1818c:	6c41                	lui	s8,0x10
   1818e:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   18192:	8ff1                	and	a5,a5,a2
   18194:	0109da13          	srli	s4,s3,0x10
   18198:	00c9f9b3          	and	s3,s3,a2
   1819c:	09c2                	slli	s3,s3,0x10
   1819e:	99be                	add	s3,s3,a5
   181a0:	02b88eb3          	mul	t4,a7,a1
   181a4:	9a7a                	add	s4,s4,t5
   181a6:	03128633          	mul	a2,t0,a7
   181aa:	010ed793          	srli	a5,t4,0x10
   181ae:	02bf8ab3          	mul	s5,t6,a1
   181b2:	9ab2                	add	s5,s5,a2
   181b4:	97d6                	add	a5,a5,s5
   181b6:	025f8f33          	mul	t5,t6,t0
   181ba:	00c7f363          	bgeu	a5,a2,181c0 <__multf3+0x2f6>
   181be:	9f62                	add	t5,t5,s8
   181c0:	0107d613          	srli	a2,a5,0x10
   181c4:	967a                	add	a2,a2,t5
   181c6:	6ac1                	lui	s5,0x10
   181c8:	ce32                	sw	a2,28(sp)
   181ca:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   181ce:	8ff1                	and	a5,a5,a2
   181d0:	00cefeb3          	and	t4,t4,a2
   181d4:	07c2                	slli	a5,a5,0x10
   181d6:	97f6                	add	a5,a5,t4
   181d8:	d23e                	sw	a5,36(sp)
   181da:	47a6                	lw	a5,72(sp)
   181dc:	0107dd93          	srli	s11,a5,0x10
   181e0:	00c7fd33          	and	s10,a5,a2
   181e4:	02ad0633          	mul	a2,s10,a0
   181e8:	03a90c33          	mul	s8,s2,s10
   181ec:	01065793          	srli	a5,a2,0x10
   181f0:	02ad8f33          	mul	t5,s11,a0
   181f4:	9f62                	add	t5,t5,s8
   181f6:	97fa                	add	a5,a5,t5
   181f8:	03b90eb3          	mul	t4,s2,s11
   181fc:	0187f363          	bgeu	a5,s8,18202 <__multf3+0x338>
   18200:	9ed6                	add	t4,t4,s5
   18202:	0107df13          	srli	t5,a5,0x10
   18206:	6cc1                	lui	s9,0x10
   18208:	01df0e33          	add	t3,t5,t4
   1820c:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   18210:	01d7f7b3          	and	a5,a5,t4
   18214:	01d67633          	and	a2,a2,t4
   18218:	07c2                	slli	a5,a5,0x10
   1821a:	97b2                	add	a5,a5,a2
   1821c:	5662                	lw	a2,56(sp)
   1821e:	d472                	sw	t3,40(sp)
   18220:	d63e                	sw	a5,44(sp)
   18222:	01065f13          	srli	t5,a2,0x10
   18226:	01d67633          	and	a2,a2,t4
   1822a:	02660ab3          	mul	s5,a2,t1
   1822e:	026f0e33          	mul	t3,t5,t1
   18232:	010ad793          	srli	a5,s5,0x10
   18236:	02c38eb3          	mul	t4,t2,a2
   1823a:	9ef2                	add	t4,t4,t3
   1823c:	9ebe                	add	t4,t4,a5
   1823e:	03e38c33          	mul	s8,t2,t5
   18242:	01cef363          	bgeu	t4,t3,18248 <__multf3+0x37e>
   18246:	9c66                	add	s8,s8,s9
   18248:	47e2                	lw	a5,24(sp)
   1824a:	96de                	add	a3,a3,s7
   1824c:	0106b833          	sltu	a6,a3,a6
   18250:	010edc93          	srli	s9,t4,0x10
   18254:	6e41                	lui	t3,0x10
   18256:	9c66                	add	s8,s8,s9
   18258:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   1825c:	01078e33          	add	t3,a5,a6
   18260:	013687b3          	add	a5,a3,s3
   18264:	9e5a                	add	t3,t3,s6
   18266:	00d7b6b3          	sltu	a3,a5,a3
   1826a:	cc3e                	sw	a5,24(sp)
   1826c:	d2be                	sw	a5,100(sp)
   1826e:	5792                	lw	a5,36(sp)
   18270:	9a72                	add	s4,s4,t3
   18272:	96d2                	add	a3,a3,s4
   18274:	01ca39b3          	sltu	s3,s4,t3
   18278:	0146ba33          	sltu	s4,a3,s4
   1827c:	010e3e33          	sltu	t3,t3,a6
   18280:	00f68833          	add	a6,a3,a5
   18284:	47f2                	lw	a5,28(sp)
   18286:	0149e9b3          	or	s3,s3,s4
   1828a:	9e4e                	add	t3,t3,s3
   1828c:	00fe09b3          	add	s3,t3,a5
   18290:	57b2                	lw	a5,44(sp)
   18292:	5a22                	lw	s4,40(sp)
   18294:	00d836b3          	sltu	a3,a6,a3
   18298:	019efeb3          	and	t4,t4,s9
   1829c:	96ce                	add	a3,a3,s3
   1829e:	97c2                	add	a5,a5,a6
   182a0:	0ec2                	slli	t4,t4,0x10
   182a2:	019afab3          	and	s5,s5,s9
   182a6:	9a36                	add	s4,s4,a3
   182a8:	0107b833          	sltu	a6,a5,a6
   182ac:	9ed6                	add	t4,t4,s5
   182ae:	9ebe                	add	t4,t4,a5
   182b0:	9852                	add	a6,a6,s4
   182b2:	9c42                	add	s8,s8,a6
   182b4:	00feb7b3          	sltu	a5,t4,a5
   182b8:	ce76                	sw	t4,28(sp)
   182ba:	d4f6                	sw	t4,104(sp)
   182bc:	4eb6                	lw	t4,76(sp)
   182be:	01c9be33          	sltu	t3,s3,t3
   182c2:	97e2                	add	a5,a5,s8
   182c4:	0136b9b3          	sltu	s3,a3,s3
   182c8:	00da36b3          	sltu	a3,s4,a3
   182cc:	01483a33          	sltu	s4,a6,s4
   182d0:	013e69b3          	or	s3,t3,s3
   182d4:	0146e6b3          	or	a3,a3,s4
   182d8:	010c3833          	sltu	a6,s8,a6
   182dc:	0187bc33          	sltu	s8,a5,s8
   182e0:	96ce                	add	a3,a3,s3
   182e2:	01886833          	or	a6,a6,s8
   182e6:	010ed993          	srli	s3,t4,0x10
   182ea:	019efeb3          	and	t4,t4,s9
   182ee:	03d90a33          	mul	s4,s2,t4
   182f2:	00d80e33          	add	t3,a6,a3
   182f6:	02ae86b3          	mul	a3,t4,a0
   182fa:	02a98533          	mul	a0,s3,a0
   182fe:	0106d813          	srli	a6,a3,0x10
   18302:	9552                	add	a0,a0,s4
   18304:	982a                	add	a6,a6,a0
   18306:	03390933          	mul	s2,s2,s3
   1830a:	01487463          	bgeu	a6,s4,18312 <__multf3+0x448>
   1830e:	6541                	lui	a0,0x10
   18310:	992a                	add	s2,s2,a0
   18312:	01085513          	srli	a0,a6,0x10
   18316:	954a                	add	a0,a0,s2
   18318:	5a72                	lw	s4,60(sp)
   1831a:	6ac1                	lui	s5,0x10
   1831c:	d22a                	sw	a0,36(sp)
   1831e:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   18322:	00a87833          	and	a6,a6,a0
   18326:	010a5913          	srli	s2,s4,0x10
   1832a:	0842                	slli	a6,a6,0x10
   1832c:	8ee9                	and	a3,a3,a0
   1832e:	00aa7a33          	and	s4,s4,a0
   18332:	96c2                	add	a3,a3,a6
   18334:	026a0533          	mul	a0,s4,t1
   18338:	d436                	sw	a3,40(sp)
   1833a:	02690333          	mul	t1,s2,t1
   1833e:	01055693          	srli	a3,a0,0x10
   18342:	03238833          	mul	a6,t2,s2
   18346:	034383b3          	mul	t2,t2,s4
   1834a:	939a                	add	t2,t2,t1
   1834c:	969e                	add	a3,a3,t2
   1834e:	0066f363          	bgeu	a3,t1,18354 <__multf3+0x48a>
   18352:	9856                	add	a6,a6,s5
   18354:	0106da93          	srli	s5,a3,0x10
   18358:	6bc1                	lui	s7,0x10
   1835a:	9ac2                	add	s5,s5,a6
   1835c:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   18360:	01057533          	and	a0,a0,a6
   18364:	0106f6b3          	and	a3,a3,a6
   18368:	03a28333          	mul	t1,t0,s10
   1836c:	06c2                	slli	a3,a3,0x10
   1836e:	96aa                	add	a3,a3,a0
   18370:	03a58833          	mul	a6,a1,s10
   18374:	02bd83b3          	mul	t2,s11,a1
   18378:	01085513          	srli	a0,a6,0x10
   1837c:	939a                	add	t2,t2,t1
   1837e:	951e                	add	a0,a0,t2
   18380:	03b28b33          	mul	s6,t0,s11
   18384:	00657363          	bgeu	a0,t1,1838a <__multf3+0x4c0>
   18388:	9b5e                	add	s6,s6,s7
   1838a:	6c41                	lui	s8,0x10
   1838c:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   18390:	01055393          	srli	t2,a0,0x10
   18394:	00657533          	and	a0,a0,t1
   18398:	00687833          	and	a6,a6,t1
   1839c:	0542                	slli	a0,a0,0x10
   1839e:	93da                	add	t2,t2,s6
   183a0:	02cf8333          	mul	t1,t6,a2
   183a4:	9542                	add	a0,a0,a6
   183a6:	031f0b33          	mul	s6,t5,a7
   183aa:	02c88833          	mul	a6,a7,a2
   183ae:	935a                	add	t1,t1,s6
   183b0:	01085c93          	srli	s9,a6,0x10
   183b4:	9366                	add	t1,t1,s9
   183b6:	03ef8bb3          	mul	s7,t6,t5
   183ba:	01637363          	bgeu	t1,s6,183c0 <__multf3+0x4f6>
   183be:	9be2                	add	s7,s7,s8
   183c0:	01035b13          	srli	s6,t1,0x10
   183c4:	9b5e                	add	s6,s6,s7
   183c6:	6bc1                	lui	s7,0x10
   183c8:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   183cc:	01837333          	and	t1,t1,s8
   183d0:	0342                	slli	t1,t1,0x10
   183d2:	01887833          	and	a6,a6,s8
   183d6:	981a                	add	a6,a6,t1
   183d8:	5322                	lw	t1,40(sp)
   183da:	5c12                	lw	s8,36(sp)
   183dc:	933e                	add	t1,t1,a5
   183de:	9c72                	add	s8,s8,t3
   183e0:	00f337b3          	sltu	a5,t1,a5
   183e4:	97e2                	add	a5,a5,s8
   183e6:	969a                	add	a3,a3,t1
   183e8:	9abe                	add	s5,s5,a5
   183ea:	0066b333          	sltu	t1,a3,t1
   183ee:	9356                	add	t1,t1,s5
   183f0:	9536                	add	a0,a0,a3
   183f2:	939a                	add	t2,t2,t1
   183f4:	00d536b3          	sltu	a3,a0,a3
   183f8:	969e                	add	a3,a3,t2
   183fa:	982a                	add	a6,a6,a0
   183fc:	01cc3e33          	sltu	t3,s8,t3
   18400:	9b36                	add	s6,s6,a3
   18402:	0187bc33          	sltu	s8,a5,s8
   18406:	00a83533          	sltu	a0,a6,a0
   1840a:	00fab7b3          	sltu	a5,s5,a5
   1840e:	01533ab3          	sltu	s5,t1,s5
   18412:	018e6c33          	or	s8,t3,s8
   18416:	0157e7b3          	or	a5,a5,s5
   1841a:	0063b333          	sltu	t1,t2,t1
   1841e:	955a                	add	a0,a0,s6
   18420:	0076b3b3          	sltu	t2,a3,t2
   18424:	97e2                	add	a5,a5,s8
   18426:	00736333          	or	t1,t1,t2
   1842a:	00db36b3          	sltu	a3,s6,a3
   1842e:	01653b33          	sltu	s6,a0,s6
   18432:	00f303b3          	add	t2,t1,a5
   18436:	0166e6b3          	or	a3,a3,s6
   1843a:	00768333          	add	t1,a3,t2
   1843e:	03af0e33          	mul	t3,t5,s10
   18442:	d6c2                	sw	a6,108(sp)
   18444:	03a606b3          	mul	a3,a2,s10
   18448:	02cd8ab3          	mul	s5,s11,a2
   1844c:	0106d793          	srli	a5,a3,0x10
   18450:	9af2                	add	s5,s5,t3
   18452:	97d6                	add	a5,a5,s5
   18454:	03ed83b3          	mul	t2,s11,t5
   18458:	01c7f363          	bgeu	a5,t3,1845e <__multf3+0x594>
   1845c:	93de                	add	t2,t2,s7
   1845e:	0107de13          	srli	t3,a5,0x10
   18462:	6ac1                	lui	s5,0x10
   18464:	9e1e                	add	t3,t3,t2
   18466:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   1846a:	0077f7b3          	and	a5,a5,t2
   1846e:	0076f6b3          	and	a3,a3,t2
   18472:	07c2                	slli	a5,a5,0x10
   18474:	03d28b33          	mul	s6,t0,t4
   18478:	97b6                	add	a5,a5,a3
   1847a:	02be86b3          	mul	a3,t4,a1
   1847e:	02b985b3          	mul	a1,s3,a1
   18482:	0106d393          	srli	t2,a3,0x10
   18486:	95da                	add	a1,a1,s6
   18488:	93ae                	add	t2,t2,a1
   1848a:	033282b3          	mul	t0,t0,s3
   1848e:	0163f363          	bgeu	t2,s6,18494 <__multf3+0x5ca>
   18492:	92d6                	add	t0,t0,s5
   18494:	0103d593          	srli	a1,t2,0x10
   18498:	6b41                	lui	s6,0x10
   1849a:	92ae                	add	t0,t0,a1
   1849c:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   184a0:	8eed                	and	a3,a3,a1
   184a2:	00b3f3b3          	and	t2,t2,a1
   184a6:	03c2                	slli	t2,t2,0x10
   184a8:	031a05b3          	mul	a1,s4,a7
   184ac:	93b6                	add	t2,t2,a3
   184ae:	031908b3          	mul	a7,s2,a7
   184b2:	0105d693          	srli	a3,a1,0x10
   184b6:	032f8ab3          	mul	s5,t6,s2
   184ba:	034f8fb3          	mul	t6,t6,s4
   184be:	9fc6                	add	t6,t6,a7
   184c0:	96fe                	add	a3,a3,t6
   184c2:	0116f363          	bgeu	a3,a7,184c8 <__multf3+0x5fe>
   184c6:	9ada                	add	s5,s5,s6
   184c8:	0106df93          	srli	t6,a3,0x10
   184cc:	68c1                	lui	a7,0x10
   184ce:	9fd6                	add	t6,t6,s5
   184d0:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   184d4:	0156f6b3          	and	a3,a3,s5
   184d8:	0155f5b3          	and	a1,a1,s5
   184dc:	06c2                	slli	a3,a3,0x10
   184de:	03df0ab3          	mul	s5,t5,t4
   184e2:	96ae                	add	a3,a3,a1
   184e4:	03d605b3          	mul	a1,a2,t4
   184e8:	02c98633          	mul	a2,s3,a2
   184ec:	01560b33          	add	s6,a2,s5
   184f0:	0105d613          	srli	a2,a1,0x10
   184f4:	965a                	add	a2,a2,s6
   184f6:	033f0f33          	mul	t5,t5,s3
   184fa:	01567363          	bgeu	a2,s5,18500 <__multf3+0x636>
   184fe:	9f46                	add	t5,t5,a7
   18500:	6ac1                	lui	s5,0x10
   18502:	01065893          	srli	a7,a2,0x10
   18506:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   1850a:	9f46                	add	t5,t5,a7
   1850c:	016678b3          	and	a7,a2,s6
   18510:	0165f5b3          	and	a1,a1,s6
   18514:	08c2                	slli	a7,a7,0x10
   18516:	03aa0633          	mul	a2,s4,s10
   1851a:	98ae                	add	a7,a7,a1
   1851c:	03a90bb3          	mul	s7,s2,s10
   18520:	01065c13          	srli	s8,a2,0x10
   18524:	034d85b3          	mul	a1,s11,s4
   18528:	95de                	add	a1,a1,s7
   1852a:	95e2                	add	a1,a1,s8
   1852c:	032d8b33          	mul	s6,s11,s2
   18530:	0175f363          	bgeu	a1,s7,18536 <__multf3+0x66c>
   18534:	9b56                	add	s6,s6,s5
   18536:	97aa                	add	a5,a5,a0
   18538:	9e1a                	add	t3,t3,t1
   1853a:	00a7b533          	sltu	a0,a5,a0
   1853e:	9572                	add	a0,a0,t3
   18540:	93be                	add	t2,t2,a5
   18542:	92aa                	add	t0,t0,a0
   18544:	00f3b7b3          	sltu	a5,t2,a5
   18548:	9796                	add	a5,a5,t0
   1854a:	006e3333          	sltu	t1,t3,t1
   1854e:	01c53e33          	sltu	t3,a0,t3
   18552:	00a2b533          	sltu	a0,t0,a0
   18556:	0057b2b3          	sltu	t0,a5,t0
   1855a:	00556533          	or	a0,a0,t0
   1855e:	01c36333          	or	t1,t1,t3
   18562:	932a                	add	t1,t1,a0
   18564:	03da0533          	mul	a0,s4,t4
   18568:	969e                	add	a3,a3,t2
   1856a:	9fbe                	add	t6,t6,a5
   1856c:	0105da93          	srli	s5,a1,0x10
   18570:	d8b6                	sw	a3,112(sp)
   18572:	0076b6b3          	sltu	a3,a3,t2
   18576:	96fe                	add	a3,a3,t6
   18578:	9ada                	add	s5,s5,s6
   1857a:	6b41                	lui	s6,0x10
   1857c:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   18580:	03d90eb3          	mul	t4,s2,t4
   18584:	00ffb7b3          	sltu	a5,t6,a5
   18588:	01f6bfb3          	sltu	t6,a3,t6
   1858c:	0175f5b3          	and	a1,a1,s7
   18590:	01f7e7b3          	or	a5,a5,t6
   18594:	98b6                	add	a7,a7,a3
   18596:	05c2                	slli	a1,a1,0x10
   18598:	979a                	add	a5,a5,t1
   1859a:	01767633          	and	a2,a2,s7
   1859e:	9f3e                	add	t5,t5,a5
   185a0:	03298933          	mul	s2,s3,s2
   185a4:	962e                	add	a2,a2,a1
   185a6:	00d8b6b3          	sltu	a3,a7,a3
   185aa:	96fa                	add	a3,a3,t5
   185ac:	9646                	add	a2,a2,a7
   185ae:	00ff37b3          	sltu	a5,t5,a5
   185b2:	9ab6                	add	s5,s5,a3
   185b4:	01e6bf33          	sltu	t5,a3,t5
   185b8:	dab2                	sw	a2,116(sp)
   185ba:	01163633          	sltu	a2,a2,a7
   185be:	034989b3          	mul	s3,s3,s4
   185c2:	01e7e5b3          	or	a1,a5,t5
   185c6:	9656                	add	a2,a2,s5
   185c8:	01055793          	srli	a5,a0,0x10
   185cc:	00dab6b3          	sltu	a3,s5,a3
   185d0:	01563ab3          	sltu	s5,a2,s5
   185d4:	0156e6b3          	or	a3,a3,s5
   185d8:	99f6                	add	s3,s3,t4
   185da:	97ce                	add	a5,a5,s3
   185dc:	01d7f363          	bgeu	a5,t4,185e2 <__multf3+0x718>
   185e0:	995a                	add	s2,s2,s6
   185e2:	0107d893          	srli	a7,a5,0x10
   185e6:	95c6                	add	a1,a1,a7
   185e8:	68c1                	lui	a7,0x10
   185ea:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   185ec:	0117f7b3          	and	a5,a5,a7
   185f0:	07c2                	slli	a5,a5,0x10
   185f2:	01157533          	and	a0,a0,a7
   185f6:	97aa                	add	a5,a5,a0
   185f8:	97b2                	add	a5,a5,a2
   185fa:	96ae                	add	a3,a3,a1
   185fc:	00c7b633          	sltu	a2,a5,a2
   18600:	9636                	add	a2,a2,a3
   18602:	dcbe                	sw	a5,120(sp)
   18604:	46e2                	lw	a3,24(sp)
   18606:	5782                	lw	a5,32(sp)
   18608:	964a                	add	a2,a2,s2
   1860a:	0836                	slli	a6,a6,0xd
   1860c:	8fd5                	or	a5,a5,a3
   1860e:	46f2                	lw	a3,28(sp)
   18610:	deb2                	sw	a2,124(sp)
   18612:	188c                	addi	a1,sp,112
   18614:	8fd5                	or	a5,a5,a3
   18616:	00f86833          	or	a6,a6,a5
   1861a:	109c                	addi	a5,sp,96
   1861c:	47d4                	lw	a3,12(a5)
   1861e:	4b90                	lw	a2,16(a5)
   18620:	82cd                	srli	a3,a3,0x13
   18622:	0636                	slli	a2,a2,0xd
   18624:	8ed1                	or	a3,a3,a2
   18626:	c394                	sw	a3,0(a5)
   18628:	0791                	addi	a5,a5,4
   1862a:	fef599e3          	bne	a1,a5,1861c <__multf3+0x752>
   1862e:	5786                	lw	a5,96(sp)
   18630:	01003833          	snez	a6,a6
   18634:	56b6                	lw	a3,108(sp)
   18636:	00f86833          	or	a6,a6,a5
   1863a:	57a6                	lw	a5,104(sp)
   1863c:	ceb6                	sw	a3,92(sp)
   1863e:	c8c2                	sw	a6,80(sp)
   18640:	ccbe                	sw	a5,88(sp)
   18642:	5796                	lw	a5,100(sp)
   18644:	cabe                	sw	a5,84(sp)
   18646:	00b69793          	slli	a5,a3,0xb
   1864a:	0207d863          	bgez	a5,1867a <__multf3+0x7b0>
   1864e:	087e                	slli	a6,a6,0x1f
   18650:	089c                	addi	a5,sp,80
   18652:	08e8                	addi	a0,sp,92
   18654:	4390                	lw	a2,0(a5)
   18656:	43cc                	lw	a1,4(a5)
   18658:	8205                	srli	a2,a2,0x1
   1865a:	05fe                	slli	a1,a1,0x1f
   1865c:	8e4d                	or	a2,a2,a1
   1865e:	c390                	sw	a2,0(a5)
   18660:	0791                	addi	a5,a5,4
   18662:	fef519e3          	bne	a0,a5,18654 <__multf3+0x78a>
   18666:	47c6                	lw	a5,80(sp)
   18668:	01003833          	snez	a6,a6
   1866c:	8285                	srli	a3,a3,0x1
   1866e:	0107e7b3          	or	a5,a5,a6
   18672:	c8be                	sw	a5,80(sp)
   18674:	47c2                	lw	a5,16(sp)
   18676:	ceb6                	sw	a3,92(sp)
   18678:	ca3e                	sw	a5,20(sp)
   1867a:	47d2                	lw	a5,20(sp)
   1867c:	c83e                	sw	a5,16(sp)
   1867e:	aa41                	j	1880e <__multf3+0x944>
   18680:	4901                	li	s2,0
   18682:	4c05                	li	s8,1
   18684:	b8d9                	j	17f5a <__multf3+0x90>
   18686:	4c09                	li	s8,2
   18688:	b8c9                	j	17f5a <__multf3+0x90>
   1868a:	017ae7b3          	or	a5,s5,s7
   1868e:	0167e7b3          	or	a5,a5,s6
   18692:	8fc9                	or	a5,a5,a0
   18694:	10078263          	beqz	a5,18798 <__multf3+0x8ce>
   18698:	c93d                	beqz	a0,1870e <__multf3+0x844>
   1869a:	1dd010ef          	jal	1a076 <__clzsi2>
   1869e:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   186a2:	4056d793          	srai	a5,a3,0x5
   186a6:	8afd                	andi	a3,a3,31
   186a8:	cac9                	beqz	a3,1873a <__multf3+0x870>
   186aa:	5671                	li	a2,-4
   186ac:	02c78633          	mul	a2,a5,a2
   186b0:	02000813          	li	a6,32
   186b4:	04010313          	addi	t1,sp,64
   186b8:	40d80833          	sub	a6,a6,a3
   186bc:	00c60713          	addi	a4,a2,12
   186c0:	971a                	add	a4,a4,t1
   186c2:	40c00633          	neg	a2,a2
   186c6:	08e31a63          	bne	t1,a4,1875a <__multf3+0x890>
   186ca:	fff78713          	addi	a4,a5,-1
   186ce:	078a                	slli	a5,a5,0x2
   186d0:	1810                	addi	a2,sp,48
   186d2:	05078793          	addi	a5,a5,80
   186d6:	97b2                	add	a5,a5,a2
   186d8:	4606                	lw	a2,64(sp)
   186da:	00d616b3          	sll	a3,a2,a3
   186de:	fcd7a023          	sw	a3,-64(a5)
   186e2:	00170793          	addi	a5,a4,1
   186e6:	078a                	slli	a5,a5,0x2
   186e8:	46a1                	li	a3,8
   186ea:	0098                	addi	a4,sp,64
   186ec:	00d7e863          	bltu	a5,a3,186fc <__multf3+0x832>
   186f0:	00072023          	sw	zero,0(a4)
   186f4:	00072223          	sw	zero,4(a4)
   186f8:	17e1                	addi	a5,a5,-8
   186fa:	00b8                	addi	a4,sp,72
   186fc:	4691                	li	a3,4
   186fe:	00d7e463          	bltu	a5,a3,18706 <__multf3+0x83c>
   18702:	00072023          	sw	zero,0(a4)
   18706:	77f1                	lui	a5,0xffffc
   18708:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   1870a:	8f89                	sub	a5,a5,a0
   1870c:	b25d                	j	180b2 <__multf3+0x1e8>
   1870e:	000b0863          	beqz	s6,1871e <__multf3+0x854>
   18712:	855a                	mv	a0,s6
   18714:	163010ef          	jal	1a076 <__clzsi2>
   18718:	02050513          	addi	a0,a0,32
   1871c:	b749                	j	1869e <__multf3+0x7d4>
   1871e:	000b8863          	beqz	s7,1872e <__multf3+0x864>
   18722:	855e                	mv	a0,s7
   18724:	153010ef          	jal	1a076 <__clzsi2>
   18728:	04050513          	addi	a0,a0,64
   1872c:	bf8d                	j	1869e <__multf3+0x7d4>
   1872e:	8556                	mv	a0,s5
   18730:	147010ef          	jal	1a076 <__clzsi2>
   18734:	06050513          	addi	a0,a0,96
   18738:	b79d                	j	1869e <__multf3+0x7d4>
   1873a:	5671                	li	a2,-4
   1873c:	02c78633          	mul	a2,a5,a2
   18740:	00f8                	addi	a4,sp,76
   18742:	468d                	li	a3,3
   18744:	00c705b3          	add	a1,a4,a2
   18748:	418c                	lw	a1,0(a1)
   1874a:	16fd                	addi	a3,a3,-1
   1874c:	1771                	addi	a4,a4,-4
   1874e:	c34c                	sw	a1,4(a4)
   18750:	fef6dae3          	bge	a3,a5,18744 <__multf3+0x87a>
   18754:	fff78713          	addi	a4,a5,-1
   18758:	b769                	j	186e2 <__multf3+0x818>
   1875a:	430c                	lw	a1,0(a4)
   1875c:	ffc72883          	lw	a7,-4(a4)
   18760:	00c70e33          	add	t3,a4,a2
   18764:	00d595b3          	sll	a1,a1,a3
   18768:	0108d8b3          	srl	a7,a7,a6
   1876c:	0115e5b3          	or	a1,a1,a7
   18770:	00be2023          	sw	a1,0(t3)
   18774:	1771                	addi	a4,a4,-4
   18776:	bf81                	j	186c6 <__multf3+0x7fc>
   18778:	017aeab3          	or	s5,s5,s7
   1877c:	016aeab3          	or	s5,s5,s6
   18780:	00aaeab3          	or	s5,s5,a0
   18784:	4689                	li	a3,2
   18786:	920a87e3          	beqz	s5,180b4 <__multf3+0x1ea>
   1878a:	0542                	slli	a0,a0,0x10
   1878c:	8541                	srai	a0,a0,0x10
   1878e:	468d                	li	a3,3
   18790:	920542e3          	bltz	a0,180b4 <__multf3+0x1ea>
   18794:	4441                	li	s0,16
   18796:	ba39                	j	180b4 <__multf3+0x1ea>
   18798:	4781                	li	a5,0
   1879a:	4685                	li	a3,1
   1879c:	ba21                	j	180b4 <__multf3+0x1ea>
   1879e:	4605                	li	a2,1
   187a0:	00f617b3          	sll	a5,a2,a5
   187a4:	5307f613          	andi	a2,a5,1328
   187a8:	e231                	bnez	a2,187ec <__multf3+0x922>
   187aa:	0887f613          	andi	a2,a5,136
   187ae:	e60d                	bnez	a2,187d8 <__multf3+0x90e>
   187b0:	2407f793          	andi	a5,a5,576
   187b4:	920783e3          	beqz	a5,180da <__multf3+0x210>
   187b8:	4441                	li	s0,16
   187ba:	67a1                	lui	a5,0x8
   187bc:	cebe                	sw	a5,92(sp)
   187be:	cc82                	sw	zero,88(sp)
   187c0:	ca82                	sw	zero,84(sp)
   187c2:	c882                	sw	zero,80(sp)
   187c4:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   187c6:	4701                	li	a4,0
   187c8:	a8e1                	j	188a0 <__multf3+0x9d6>
   187ca:	473d                	li	a4,15
   187cc:	fee787e3          	beq	a5,a4,187ba <__multf3+0x8f0>
   187d0:	462d                	li	a2,11
   187d2:	874e                	mv	a4,s3
   187d4:	00c79c63          	bne	a5,a2,187ec <__multf3+0x922>
   187d8:	8752                	mv	a4,s4
   187da:	4786                	lw	a5,64(sp)
   187dc:	8c36                	mv	s8,a3
   187de:	c8be                	sw	a5,80(sp)
   187e0:	4796                	lw	a5,68(sp)
   187e2:	cabe                	sw	a5,84(sp)
   187e4:	47a6                	lw	a5,72(sp)
   187e6:	ccbe                	sw	a5,88(sp)
   187e8:	47b6                	lw	a5,76(sp)
   187ea:	a801                	j	187fa <__multf3+0x930>
   187ec:	57c2                	lw	a5,48(sp)
   187ee:	c8be                	sw	a5,80(sp)
   187f0:	57d2                	lw	a5,52(sp)
   187f2:	cabe                	sw	a5,84(sp)
   187f4:	57e2                	lw	a5,56(sp)
   187f6:	ccbe                	sw	a5,88(sp)
   187f8:	57f2                	lw	a5,60(sp)
   187fa:	cebe                	sw	a5,92(sp)
   187fc:	4789                	li	a5,2
   187fe:	34fc0d63          	beq	s8,a5,18b58 <__multf3+0xc8e>
   18802:	478d                	li	a5,3
   18804:	fafc0be3          	beq	s8,a5,187ba <__multf3+0x8f0>
   18808:	4785                	li	a5,1
   1880a:	34fc0263          	beq	s8,a5,18b4e <__multf3+0xc84>
   1880e:	46c2                	lw	a3,16(sp)
   18810:	6791                	lui	a5,0x4
   18812:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   18814:	97b6                	add	a5,a5,a3
   18816:	10f05763          	blez	a5,18924 <__multf3+0xa5a>
   1881a:	4646                	lw	a2,80(sp)
   1881c:	00767693          	andi	a3,a2,7
   18820:	c2a1                	beqz	a3,18860 <__multf3+0x996>
   18822:	4509                	li	a0,2
   18824:	46d6                	lw	a3,84(sp)
   18826:	45f6                	lw	a1,92(sp)
   18828:	0ca48563          	beq	s1,a0,188f2 <__multf3+0xa28>
   1882c:	450d                	li	a0,3
   1882e:	0aa48c63          	beq	s1,a0,188e6 <__multf3+0xa1c>
   18832:	e48d                	bnez	s1,1885c <__multf3+0x992>
   18834:	00f67513          	andi	a0,a2,15
   18838:	4811                	li	a6,4
   1883a:	03050163          	beq	a0,a6,1885c <__multf3+0x992>
   1883e:	0611                	addi	a2,a2,4
   18840:	c8b2                	sw	a2,80(sp)
   18842:	00463613          	sltiu	a2,a2,4
   18846:	96b2                	add	a3,a3,a2
   18848:	cab6                	sw	a3,84(sp)
   1884a:	00c6b6b3          	sltu	a3,a3,a2
   1884e:	4666                	lw	a2,88(sp)
   18850:	96b2                	add	a3,a3,a2
   18852:	ccb6                	sw	a3,88(sp)
   18854:	00c6b6b3          	sltu	a3,a3,a2
   18858:	96ae                	add	a3,a3,a1
   1885a:	ceb6                	sw	a3,92(sp)
   1885c:	00146413          	ori	s0,s0,1
   18860:	46f6                	lw	a3,92(sp)
   18862:	00b69613          	slli	a2,a3,0xb
   18866:	00065a63          	bgez	a2,1887a <__multf3+0x9b0>
   1886a:	fff007b7          	lui	a5,0xfff00
   1886e:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee45a3>
   18870:	8efd                	and	a3,a3,a5
   18872:	ceb6                	sw	a3,92(sp)
   18874:	46c2                	lw	a3,16(sp)
   18876:	6791                	lui	a5,0x4
   18878:	97b6                	add	a5,a5,a3
   1887a:	0894                	addi	a3,sp,80
   1887c:	08e8                	addi	a0,sp,92
   1887e:	4290                	lw	a2,0(a3)
   18880:	42cc                	lw	a1,4(a3)
   18882:	820d                	srli	a2,a2,0x3
   18884:	05f6                	slli	a1,a1,0x1d
   18886:	8e4d                	or	a2,a2,a1
   18888:	c290                	sw	a2,0(a3)
   1888a:	0691                	addi	a3,a3,4
   1888c:	fed519e3          	bne	a0,a3,1887e <__multf3+0x9b4>
   18890:	6621                	lui	a2,0x8
   18892:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   18894:	46f6                	lw	a3,92(sp)
   18896:	65a1                	lui	a1,0x8
   18898:	04f64f63          	blt	a2,a5,188f6 <__multf3+0xa2c>
   1889c:	828d                	srli	a3,a3,0x3
   1889e:	ceb6                	sw	a3,92(sp)
   188a0:	4576                	lw	a0,92(sp)
   188a2:	073e                	slli	a4,a4,0xf
   188a4:	8f5d                	or	a4,a4,a5
   188a6:	06a11623          	sh	a0,108(sp)
   188aa:	06e11723          	sh	a4,110(sp)
   188ae:	45c6                	lw	a1,80(sp)
   188b0:	4656                	lw	a2,84(sp)
   188b2:	46e6                	lw	a3,88(sp)
   188b4:	57b6                	lw	a5,108(sp)
   188b6:	c019                	beqz	s0,188bc <__multf3+0x9f2>
   188b8:	00142073          	csrs	fflags,s0
   188bc:	4732                	lw	a4,12(sp)
   188be:	50fa                	lw	ra,188(sp)
   188c0:	546a                	lw	s0,184(sp)
   188c2:	c30c                	sw	a1,0(a4)
   188c4:	c350                	sw	a2,4(a4)
   188c6:	c714                	sw	a3,8(a4)
   188c8:	c75c                	sw	a5,12(a4)
   188ca:	54da                	lw	s1,180(sp)
   188cc:	594a                	lw	s2,176(sp)
   188ce:	59ba                	lw	s3,172(sp)
   188d0:	5a2a                	lw	s4,168(sp)
   188d2:	5a9a                	lw	s5,164(sp)
   188d4:	5b0a                	lw	s6,160(sp)
   188d6:	4bfa                	lw	s7,156(sp)
   188d8:	4c6a                	lw	s8,152(sp)
   188da:	4cda                	lw	s9,148(sp)
   188dc:	4d4a                	lw	s10,144(sp)
   188de:	4dba                	lw	s11,140(sp)
   188e0:	853a                	mv	a0,a4
   188e2:	6129                	addi	sp,sp,192
   188e4:	8082                	ret
   188e6:	fb3d                	bnez	a4,1885c <__multf3+0x992>
   188e8:	0621                	addi	a2,a2,8
   188ea:	c8b2                	sw	a2,80(sp)
   188ec:	00863613          	sltiu	a2,a2,8
   188f0:	bf99                	j	18846 <__multf3+0x97c>
   188f2:	d72d                	beqz	a4,1885c <__multf3+0x992>
   188f4:	bfd5                	j	188e8 <__multf3+0xa1e>
   188f6:	4789                	li	a5,2
   188f8:	02f48463          	beq	s1,a5,18920 <__multf3+0xa56>
   188fc:	478d                	li	a5,3
   188fe:	00f48763          	beq	s1,a5,1890c <__multf3+0xa42>
   18902:	e491                	bnez	s1,1890e <__multf3+0xa44>
   18904:	4681                	li	a3,0
   18906:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   1890a:	a021                	j	18912 <__multf3+0xa48>
   1890c:	df65                	beqz	a4,18904 <__multf3+0xa3a>
   1890e:	56fd                	li	a3,-1
   18910:	87b2                	mv	a5,a2
   18912:	ceb6                	sw	a3,92(sp)
   18914:	ccb6                	sw	a3,88(sp)
   18916:	cab6                	sw	a3,84(sp)
   18918:	c8b6                	sw	a3,80(sp)
   1891a:	00546413          	ori	s0,s0,5
   1891e:	b749                	j	188a0 <__multf3+0x9d6>
   18920:	f375                	bnez	a4,18904 <__multf3+0xa3a>
   18922:	b7f5                	j	1890e <__multf3+0xa44>
   18924:	4685                	li	a3,1
   18926:	ebb9                	bnez	a5,1897c <__multf3+0xab2>
   18928:	4646                	lw	a2,80(sp)
   1892a:	46f6                	lw	a3,92(sp)
   1892c:	00767593          	andi	a1,a2,7
   18930:	c1b1                	beqz	a1,18974 <__multf3+0xaaa>
   18932:	4809                	li	a6,2
   18934:	45d6                	lw	a1,84(sp)
   18936:	4566                	lw	a0,88(sp)
   18938:	00146413          	ori	s0,s0,1
   1893c:	03048b63          	beq	s1,a6,18972 <__multf3+0xaa8>
   18940:	480d                	li	a6,3
   18942:	03048363          	beq	s1,a6,18968 <__multf3+0xa9e>
   18946:	e49d                	bnez	s1,18974 <__multf3+0xaaa>
   18948:	00f67813          	andi	a6,a2,15
   1894c:	4891                	li	a7,4
   1894e:	03180363          	beq	a6,a7,18974 <__multf3+0xaaa>
   18952:	0611                	addi	a2,a2,4
   18954:	00463613          	sltiu	a2,a2,4
   18958:	95b2                	add	a1,a1,a2
   1895a:	00c5b5b3          	sltu	a1,a1,a2
   1895e:	952e                	add	a0,a0,a1
   18960:	00b53533          	sltu	a0,a0,a1
   18964:	96aa                	add	a3,a3,a0
   18966:	a039                	j	18974 <__multf3+0xaaa>
   18968:	e711                	bnez	a4,18974 <__multf3+0xaaa>
   1896a:	0621                	addi	a2,a2,8
   1896c:	00863613          	sltiu	a2,a2,8
   18970:	b7e5                	j	18958 <__multf3+0xa8e>
   18972:	ff65                	bnez	a4,1896a <__multf3+0xaa0>
   18974:	82d1                	srli	a3,a3,0x14
   18976:	0016c693          	xori	a3,a3,1
   1897a:	8a85                	andi	a3,a3,1
   1897c:	4605                	li	a2,1
   1897e:	40f607b3          	sub	a5,a2,a5
   18982:	07400593          	li	a1,116
   18986:	18f5c163          	blt	a1,a5,18b08 <__multf3+0xc3e>
   1898a:	0890                	addi	a2,sp,80
   1898c:	4057d593          	srai	a1,a5,0x5
   18990:	01f7f513          	andi	a0,a5,31
   18994:	88b2                	mv	a7,a2
   18996:	4781                	li	a5,0
   18998:	4801                	li	a6,0
   1899a:	02b81763          	bne	a6,a1,189c8 <__multf3+0xafe>
   1899e:	480d                	li	a6,3
   189a0:	40b80833          	sub	a6,a6,a1
   189a4:	00259893          	slli	a7,a1,0x2
   189a8:	e51d                	bnez	a0,189d6 <__multf3+0xb0c>
   189aa:	8332                	mv	t1,a2
   189ac:	01130e33          	add	t3,t1,a7
   189b0:	000e2e03          	lw	t3,0(t3)
   189b4:	0505                	addi	a0,a0,1
   189b6:	0311                	addi	t1,t1,4
   189b8:	ffc32e23          	sw	t3,-4(t1)
   189bc:	fea858e3          	bge	a6,a0,189ac <__multf3+0xae2>
   189c0:	4511                	li	a0,4
   189c2:	40b505b3          	sub	a1,a0,a1
   189c6:	a8a1                	j	18a1e <__multf3+0xb54>
   189c8:	0008a303          	lw	t1,0(a7)
   189cc:	0805                	addi	a6,a6,1
   189ce:	0891                	addi	a7,a7,4
   189d0:	0067e7b3          	or	a5,a5,t1
   189d4:	b7d9                	j	1899a <__multf3+0xad0>
   189d6:	05088313          	addi	t1,a7,80
   189da:	03010e13          	addi	t3,sp,48
   189de:	9372                	add	t1,t1,t3
   189e0:	fd032303          	lw	t1,-48(t1)
   189e4:	02000e93          	li	t4,32
   189e8:	40ae8eb3          	sub	t4,t4,a0
   189ec:	01d31333          	sll	t1,t1,t4
   189f0:	0067e7b3          	or	a5,a5,t1
   189f4:	4f01                	li	t5,0
   189f6:	01160333          	add	t1,a2,a7
   189fa:	411008b3          	neg	a7,a7
   189fe:	0b0f4d63          	blt	t5,a6,18ab8 <__multf3+0xbee>
   18a02:	4891                	li	a7,4
   18a04:	080a                	slli	a6,a6,0x2
   18a06:	40b885b3          	sub	a1,a7,a1
   18a0a:	05080813          	addi	a6,a6,80
   18a0e:	03010893          	addi	a7,sp,48
   18a12:	9846                	add	a6,a6,a7
   18a14:	48f6                	lw	a7,92(sp)
   18a16:	00a8d533          	srl	a0,a7,a0
   18a1a:	fca82823          	sw	a0,-48(a6)
   18a1e:	4511                	li	a0,4
   18a20:	8d0d                	sub	a0,a0,a1
   18a22:	050a                	slli	a0,a0,0x2
   18a24:	058a                	slli	a1,a1,0x2
   18a26:	4821                	li	a6,8
   18a28:	95b2                	add	a1,a1,a2
   18a2a:	01056863          	bltu	a0,a6,18a3a <__multf3+0xb70>
   18a2e:	0005a023          	sw	zero,0(a1)
   18a32:	0005a223          	sw	zero,4(a1)
   18a36:	1561                	addi	a0,a0,-8
   18a38:	05a1                	addi	a1,a1,8
   18a3a:	4811                	li	a6,4
   18a3c:	01056463          	bltu	a0,a6,18a44 <__multf3+0xb7a>
   18a40:	0005a023          	sw	zero,0(a1)
   18a44:	45c6                	lw	a1,80(sp)
   18a46:	00f037b3          	snez	a5,a5
   18a4a:	8fcd                	or	a5,a5,a1
   18a4c:	c8be                	sw	a5,80(sp)
   18a4e:	0077f593          	andi	a1,a5,7
   18a52:	c1a1                	beqz	a1,18a92 <__multf3+0xbc8>
   18a54:	4509                	li	a0,2
   18a56:	45f6                	lw	a1,92(sp)
   18a58:	08a48763          	beq	s1,a0,18ae6 <__multf3+0xc1c>
   18a5c:	450d                	li	a0,3
   18a5e:	06a48e63          	beq	s1,a0,18ada <__multf3+0xc10>
   18a62:	e495                	bnez	s1,18a8e <__multf3+0xbc4>
   18a64:	00f7f513          	andi	a0,a5,15
   18a68:	4811                	li	a6,4
   18a6a:	03050263          	beq	a0,a6,18a8e <__multf3+0xbc4>
   18a6e:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   18a70:	c8be                	sw	a5,80(sp)
   18a72:	0047b793          	sltiu	a5,a5,4
   18a76:	4556                	lw	a0,84(sp)
   18a78:	97aa                	add	a5,a5,a0
   18a7a:	cabe                	sw	a5,84(sp)
   18a7c:	00a7b7b3          	sltu	a5,a5,a0
   18a80:	4566                	lw	a0,88(sp)
   18a82:	97aa                	add	a5,a5,a0
   18a84:	ccbe                	sw	a5,88(sp)
   18a86:	00a7b7b3          	sltu	a5,a5,a0
   18a8a:	97ae                	add	a5,a5,a1
   18a8c:	cebe                	sw	a5,92(sp)
   18a8e:	00146413          	ori	s0,s0,1
   18a92:	45f6                	lw	a1,92(sp)
   18a94:	00c59793          	slli	a5,a1,0xc
   18a98:	0407d963          	bgez	a5,18aea <__multf3+0xc20>
   18a9c:	ce82                	sw	zero,92(sp)
   18a9e:	cc82                	sw	zero,88(sp)
   18aa0:	ca82                	sw	zero,84(sp)
   18aa2:	c882                	sw	zero,80(sp)
   18aa4:	00146413          	ori	s0,s0,1
   18aa8:	4785                	li	a5,1
   18aaa:	de068be3          	beqz	a3,188a0 <__multf3+0x9d6>
   18aae:	00147693          	andi	a3,s0,1
   18ab2:	0686                	slli	a3,a3,0x1
   18ab4:	8c55                	or	s0,s0,a3
   18ab6:	b3ed                	j	188a0 <__multf3+0x9d6>
   18ab8:	00032e03          	lw	t3,0(t1)
   18abc:	00432f83          	lw	t6,4(t1)
   18ac0:	011302b3          	add	t0,t1,a7
   18ac4:	00ae5e33          	srl	t3,t3,a0
   18ac8:	01df9fb3          	sll	t6,t6,t4
   18acc:	01fe6e33          	or	t3,t3,t6
   18ad0:	01c2a023          	sw	t3,0(t0)
   18ad4:	0f05                	addi	t5,t5,1
   18ad6:	0311                	addi	t1,t1,4
   18ad8:	b71d                	j	189fe <__multf3+0xb34>
   18ada:	fb55                	bnez	a4,18a8e <__multf3+0xbc4>
   18adc:	07a1                	addi	a5,a5,8
   18ade:	c8be                	sw	a5,80(sp)
   18ae0:	0087b793          	sltiu	a5,a5,8
   18ae4:	bf49                	j	18a76 <__multf3+0xbac>
   18ae6:	d745                	beqz	a4,18a8e <__multf3+0xbc4>
   18ae8:	bfd5                	j	18adc <__multf3+0xc12>
   18aea:	00c60813          	addi	a6,a2,12
   18aee:	421c                	lw	a5,0(a2)
   18af0:	4248                	lw	a0,4(a2)
   18af2:	838d                	srli	a5,a5,0x3
   18af4:	0576                	slli	a0,a0,0x1d
   18af6:	8fc9                	or	a5,a5,a0
   18af8:	c21c                	sw	a5,0(a2)
   18afa:	0611                	addi	a2,a2,4
   18afc:	fec819e3          	bne	a6,a2,18aee <__multf3+0xc24>
   18b00:	818d                	srli	a1,a1,0x3
   18b02:	ceae                	sw	a1,92(sp)
   18b04:	4781                	li	a5,0
   18b06:	b755                	j	18aaa <__multf3+0xbe0>
   18b08:	46d6                	lw	a3,84(sp)
   18b0a:	47c6                	lw	a5,80(sp)
   18b0c:	8fd5                	or	a5,a5,a3
   18b0e:	46e6                	lw	a3,88(sp)
   18b10:	8fd5                	or	a5,a5,a3
   18b12:	46f6                	lw	a3,92(sp)
   18b14:	8fd5                	or	a5,a5,a3
   18b16:	c395                	beqz	a5,18b3a <__multf3+0xc70>
   18b18:	ce82                	sw	zero,92(sp)
   18b1a:	cc82                	sw	zero,88(sp)
   18b1c:	ca82                	sw	zero,84(sp)
   18b1e:	c8b2                	sw	a2,80(sp)
   18b20:	4789                	li	a5,2
   18b22:	00146413          	ori	s0,s0,1
   18b26:	02f48263          	beq	s1,a5,18b4a <__multf3+0xc80>
   18b2a:	478d                	li	a5,3
   18b2c:	00f48b63          	beq	s1,a5,18b42 <__multf3+0xc78>
   18b30:	4795                	li	a5,5
   18b32:	c891                	beqz	s1,18b46 <__multf3+0xc7c>
   18b34:	47c6                	lw	a5,80(sp)
   18b36:	838d                	srli	a5,a5,0x3
   18b38:	c8be                	sw	a5,80(sp)
   18b3a:	00246413          	ori	s0,s0,2
   18b3e:	4781                	li	a5,0
   18b40:	b385                	j	188a0 <__multf3+0x9d6>
   18b42:	fb6d                	bnez	a4,18b34 <__multf3+0xc6a>
   18b44:	47a5                	li	a5,9
   18b46:	c8be                	sw	a5,80(sp)
   18b48:	b7f5                	j	18b34 <__multf3+0xc6a>
   18b4a:	ff6d                	bnez	a4,18b44 <__multf3+0xc7a>
   18b4c:	b7e5                	j	18b34 <__multf3+0xc6a>
   18b4e:	ce82                	sw	zero,92(sp)
   18b50:	cc82                	sw	zero,88(sp)
   18b52:	ca82                	sw	zero,84(sp)
   18b54:	c882                	sw	zero,80(sp)
   18b56:	b7e5                	j	18b3e <__multf3+0xc74>
   18b58:	67a1                	lui	a5,0x8
   18b5a:	ce82                	sw	zero,92(sp)
   18b5c:	cc82                	sw	zero,88(sp)
   18b5e:	ca82                	sw	zero,84(sp)
   18b60:	c882                	sw	zero,80(sp)
   18b62:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18b64:	bb35                	j	188a0 <__multf3+0x9d6>

00018b66 <__subtf3>:
   18b66:	7159                	addi	sp,sp,-112
   18b68:	d2a6                	sw	s1,100(sp)
   18b6a:	d0ca                	sw	s2,96(sp)
   18b6c:	cece                	sw	s3,92(sp)
   18b6e:	c2e6                	sw	s9,68(sp)
   18b70:	d686                	sw	ra,108(sp)
   18b72:	d4a2                	sw	s0,104(sp)
   18b74:	ccd2                	sw	s4,88(sp)
   18b76:	cad6                	sw	s5,84(sp)
   18b78:	c8da                	sw	s6,80(sp)
   18b7a:	c6de                	sw	s7,76(sp)
   18b7c:	c4e2                	sw	s8,72(sp)
   18b7e:	892a                	mv	s2,a0
   18b80:	4198                	lw	a4,0(a1)
   18b82:	41d4                	lw	a3,4(a1)
   18b84:	459c                	lw	a5,8(a1)
   18b86:	00c5a983          	lw	s3,12(a1)
   18b8a:	4204                	lw	s1,0(a2)
   18b8c:	00462883          	lw	a7,4(a2)
   18b90:	00862803          	lw	a6,8(a2)
   18b94:	00c62c83          	lw	s9,12(a2)
   18b98:	00202a73          	frrm	s4
   18b9c:	dc3e                	sw	a5,56(sp)
   18b9e:	c43e                	sw	a5,8(sp)
   18ba0:	01099793          	slli	a5,s3,0x10
   18ba4:	83c1                	srli	a5,a5,0x10
   18ba6:	00199413          	slli	s0,s3,0x1
   18baa:	858a                	mv	a1,sp
   18bac:	de4e                	sw	s3,60(sp)
   18bae:	c63e                	sw	a5,12(sp)
   18bb0:	d83a                	sw	a4,48(sp)
   18bb2:	da36                	sw	a3,52(sp)
   18bb4:	c03a                	sw	a4,0(sp)
   18bb6:	c236                	sw	a3,4(sp)
   18bb8:	8045                	srli	s0,s0,0x11
   18bba:	01f9d993          	srli	s3,s3,0x1f
   18bbe:	ff410313          	addi	t1,sp,-12
   18bc2:	87ae                	mv	a5,a1
   18bc4:	852e                	mv	a0,a1
   18bc6:	47d4                	lw	a3,12(a5)
   18bc8:	4790                	lw	a2,8(a5)
   18bca:	17f1                	addi	a5,a5,-4
   18bcc:	068e                	slli	a3,a3,0x3
   18bce:	8275                	srli	a2,a2,0x1d
   18bd0:	8ed1                	or	a3,a3,a2
   18bd2:	cb94                	sw	a3,16(a5)
   18bd4:	fef319e3          	bne	t1,a5,18bc6 <__subtf3+0x60>
   18bd8:	010c9793          	slli	a5,s9,0x10
   18bdc:	83c1                	srli	a5,a5,0x10
   18bde:	001c9a93          	slli	s5,s9,0x1
   18be2:	070e                	slli	a4,a4,0x3
   18be4:	dc42                	sw	a6,56(sp)
   18be6:	cc42                	sw	a6,24(sp)
   18be8:	01010813          	addi	a6,sp,16
   18bec:	da46                	sw	a7,52(sp)
   18bee:	de66                	sw	s9,60(sp)
   18bf0:	ca46                	sw	a7,20(sp)
   18bf2:	ce3e                	sw	a5,28(sp)
   18bf4:	c03a                	sw	a4,0(sp)
   18bf6:	d826                	sw	s1,48(sp)
   18bf8:	c826                	sw	s1,16(sp)
   18bfa:	011ada93          	srli	s5,s5,0x11
   18bfe:	01fcdc93          	srli	s9,s9,0x1f
   18c02:	00410893          	addi	a7,sp,4
   18c06:	87c2                	mv	a5,a6
   18c08:	8e42                	mv	t3,a6
   18c0a:	47d4                	lw	a3,12(a5)
   18c0c:	4790                	lw	a2,8(a5)
   18c0e:	17f1                	addi	a5,a5,-4
   18c10:	068e                	slli	a3,a3,0x3
   18c12:	8275                	srli	a2,a2,0x1d
   18c14:	8ed1                	or	a3,a3,a2
   18c16:	cb94                	sw	a3,16(a5)
   18c18:	fef899e3          	bne	a7,a5,18c0a <__subtf3+0xa4>
   18c1c:	048e                	slli	s1,s1,0x3
   18c1e:	67a1                	lui	a5,0x8
   18c20:	c826                	sw	s1,16(sp)
   18c22:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18c24:	00fa9963          	bne	s5,a5,18c36 <__subtf3+0xd0>
   18c28:	46e2                	lw	a3,24(sp)
   18c2a:	47d2                	lw	a5,20(sp)
   18c2c:	8fd5                	or	a5,a5,a3
   18c2e:	46f2                	lw	a3,28(sp)
   18c30:	8fd5                	or	a5,a5,a3
   18c32:	8fc5                	or	a5,a5,s1
   18c34:	e399                	bnez	a5,18c3a <__subtf3+0xd4>
   18c36:	001ccc93          	xori	s9,s9,1
   18c3a:	415407b3          	sub	a5,s0,s5
   18c3e:	5d3c9c63          	bne	s9,s3,19216 <__subtf3+0x6b0>
   18c42:	24f05963          	blez	a5,18e94 <__subtf3+0x32e>
   18c46:	4312                	lw	t1,4(sp)
   18c48:	48a2                	lw	a7,8(sp)
   18c4a:	45b2                	lw	a1,12(sp)
   18c4c:	080a9963          	bnez	s5,18cde <__subtf3+0x178>
   18c50:	4552                	lw	a0,20(sp)
   18c52:	46e2                	lw	a3,24(sp)
   18c54:	4ef2                	lw	t4,28(sp)
   18c56:	00d56633          	or	a2,a0,a3
   18c5a:	01d66633          	or	a2,a2,t4
   18c5e:	8e45                	or	a2,a2,s1
   18c60:	e61d                	bnez	a2,18c8e <__subtf3+0x128>
   18c62:	66a1                	lui	a3,0x8
   18c64:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18c66:	00d79e63          	bne	a5,a3,18c82 <__subtf3+0x11c>
   18c6a:	011366b3          	or	a3,t1,a7
   18c6e:	8ecd                	or	a3,a3,a1
   18c70:	8ed9                	or	a3,a3,a4
   18c72:	ca81                	beqz	a3,18c82 <__subtf3+0x11c>
   18c74:	0125da93          	srli	s5,a1,0x12
   18c78:	001aca93          	xori	s5,s5,1
   18c7c:	001afa93          	andi	s5,s5,1
   18c80:	0a92                	slli	s5,s5,0x4
   18c82:	d03a                	sw	a4,32(sp)
   18c84:	d21a                	sw	t1,36(sp)
   18c86:	d446                	sw	a7,40(sp)
   18c88:	d62e                	sw	a1,44(sp)
   18c8a:	8456                	mv	s0,s5
   18c8c:	ac99                	j	18ee2 <__subtf3+0x37c>
   18c8e:	fff78613          	addi	a2,a5,-1
   18c92:	ea0d                	bnez	a2,18cc4 <__subtf3+0x15e>
   18c94:	94ba                	add	s1,s1,a4
   18c96:	932a                	add	t1,t1,a0
   18c98:	d026                	sw	s1,32(sp)
   18c9a:	00e4b4b3          	sltu	s1,s1,a4
   18c9e:	949a                	add	s1,s1,t1
   18ca0:	d226                	sw	s1,36(sp)
   18ca2:	00a33533          	sltu	a0,t1,a0
   18ca6:	0064b4b3          	sltu	s1,s1,t1
   18caa:	98b6                	add	a7,a7,a3
   18cac:	8d45                	or	a0,a0,s1
   18cae:	9546                	add	a0,a0,a7
   18cb0:	d42a                	sw	a0,40(sp)
   18cb2:	00d8b733          	sltu	a4,a7,a3
   18cb6:	01153533          	sltu	a0,a0,a7
   18cba:	8f49                	or	a4,a4,a0
   18cbc:	9eae                	add	t4,t4,a1
   18cbe:	9776                	add	a4,a4,t4
   18cc0:	4785                	li	a5,1
   18cc2:	a299                	j	18e08 <__subtf3+0x2a2>
   18cc4:	66a1                	lui	a3,0x8
   18cc6:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18cc8:	fad781e3          	beq	a5,a3,18c6a <__subtf3+0x104>
   18ccc:	07400793          	li	a5,116
   18cd0:	04c7d863          	bge	a5,a2,18d20 <__subtf3+0x1ba>
   18cd4:	ce02                	sw	zero,28(sp)
   18cd6:	cc02                	sw	zero,24(sp)
   18cd8:	ca02                	sw	zero,20(sp)
   18cda:	4785                	li	a5,1
   18cdc:	a8dd                	j	18dd2 <__subtf3+0x26c>
   18cde:	66a1                	lui	a3,0x8
   18ce0:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18ce2:	02d41563          	bne	s0,a3,18d0c <__subtf3+0x1a6>
   18ce6:	011367b3          	or	a5,t1,a7
   18cea:	8fcd                	or	a5,a5,a1
   18cec:	8fd9                	or	a5,a5,a4
   18cee:	4681                	li	a3,0
   18cf0:	c799                	beqz	a5,18cfe <__subtf3+0x198>
   18cf2:	0125d693          	srli	a3,a1,0x12
   18cf6:	0016c693          	xori	a3,a3,1
   18cfa:	8a85                	andi	a3,a3,1
   18cfc:	0692                	slli	a3,a3,0x4
   18cfe:	d03a                	sw	a4,32(sp)
   18d00:	d21a                	sw	t1,36(sp)
   18d02:	d446                	sw	a7,40(sp)
   18d04:	d62e                	sw	a1,44(sp)
   18d06:	87a2                	mv	a5,s0
   18d08:	8436                	mv	s0,a3
   18d0a:	aae1                	j	18ee2 <__subtf3+0x37c>
   18d0c:	46f2                	lw	a3,28(sp)
   18d0e:	00080637          	lui	a2,0x80
   18d12:	8ed1                	or	a3,a3,a2
   18d14:	ce36                	sw	a3,28(sp)
   18d16:	07400693          	li	a3,116
   18d1a:	faf6cde3          	blt	a3,a5,18cd4 <__subtf3+0x16e>
   18d1e:	863e                	mv	a2,a5
   18d20:	40565693          	srai	a3,a2,0x5
   18d24:	8ec2                	mv	t4,a6
   18d26:	8a7d                	andi	a2,a2,31
   18d28:	4781                	li	a5,0
   18d2a:	4501                	li	a0,0
   18d2c:	02d51563          	bne	a0,a3,18d56 <__subtf3+0x1f0>
   18d30:	450d                	li	a0,3
   18d32:	8d15                	sub	a0,a0,a3
   18d34:	00269e93          	slli	t4,a3,0x2
   18d38:	e615                	bnez	a2,18d64 <__subtf3+0x1fe>
   18d3a:	01d80f33          	add	t5,a6,t4
   18d3e:	000f2f03          	lw	t5,0(t5)
   18d42:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   18d44:	0811                	addi	a6,a6,4
   18d46:	ffe82e23          	sw	t5,-4(a6)
   18d4a:	fec558e3          	bge	a0,a2,18d3a <__subtf3+0x1d4>
   18d4e:	4611                	li	a2,4
   18d50:	40d606b3          	sub	a3,a2,a3
   18d54:	a881                	j	18da4 <__subtf3+0x23e>
   18d56:	000eaf03          	lw	t5,0(t4)
   18d5a:	0505                	addi	a0,a0,1
   18d5c:	0e91                	addi	t4,t4,4
   18d5e:	01e7e7b3          	or	a5,a5,t5
   18d62:	b7e9                	j	18d2c <__subtf3+0x1c6>
   18d64:	040e8493          	addi	s1,t4,64
   18d68:	00248f33          	add	t5,s1,sp
   18d6c:	fd0f2f03          	lw	t5,-48(t5)
   18d70:	02000393          	li	t2,32
   18d74:	40c383b3          	sub	t2,t2,a2
   18d78:	007f1f33          	sll	t5,t5,t2
   18d7c:	9876                	add	a6,a6,t4
   18d7e:	01e7e7b3          	or	a5,a5,t5
   18d82:	41d00eb3          	neg	t4,t4
   18d86:	4f81                	li	t6,0
   18d88:	0eafc563          	blt	t6,a0,18e72 <__subtf3+0x30c>
   18d8c:	4811                	li	a6,4
   18d8e:	40d806b3          	sub	a3,a6,a3
   18d92:	4872                	lw	a6,28(sp)
   18d94:	050a                	slli	a0,a0,0x2
   18d96:	04050513          	addi	a0,a0,64
   18d9a:	950a                	add	a0,a0,sp
   18d9c:	00c85633          	srl	a2,a6,a2
   18da0:	fcc52823          	sw	a2,-48(a0)
   18da4:	4611                	li	a2,4
   18da6:	8e15                	sub	a2,a2,a3
   18da8:	060a                	slli	a2,a2,0x2
   18daa:	068a                	slli	a3,a3,0x2
   18dac:	4521                	li	a0,8
   18dae:	96f2                	add	a3,a3,t3
   18db0:	00a66863          	bltu	a2,a0,18dc0 <__subtf3+0x25a>
   18db4:	0006a023          	sw	zero,0(a3)
   18db8:	0006a223          	sw	zero,4(a3)
   18dbc:	1661                	addi	a2,a2,-8
   18dbe:	06a1                	addi	a3,a3,8
   18dc0:	4511                	li	a0,4
   18dc2:	00a66463          	bltu	a2,a0,18dca <__subtf3+0x264>
   18dc6:	0006a023          	sw	zero,0(a3)
   18dca:	46c2                	lw	a3,16(sp)
   18dcc:	00f037b3          	snez	a5,a5
   18dd0:	8fd5                	or	a5,a5,a3
   18dd2:	46d2                	lw	a3,20(sp)
   18dd4:	c83e                	sw	a5,16(sp)
   18dd6:	97ba                	add	a5,a5,a4
   18dd8:	9336                	add	t1,t1,a3
   18dda:	d03e                	sw	a5,32(sp)
   18ddc:	00e7b7b3          	sltu	a5,a5,a4
   18de0:	4762                	lw	a4,24(sp)
   18de2:	979a                	add	a5,a5,t1
   18de4:	d23e                	sw	a5,36(sp)
   18de6:	00d336b3          	sltu	a3,t1,a3
   18dea:	0067b7b3          	sltu	a5,a5,t1
   18dee:	98ba                	add	a7,a7,a4
   18df0:	8fd5                	or	a5,a5,a3
   18df2:	97c6                	add	a5,a5,a7
   18df4:	d43e                	sw	a5,40(sp)
   18df6:	00e8b733          	sltu	a4,a7,a4
   18dfa:	0117b7b3          	sltu	a5,a5,a7
   18dfe:	8f5d                	or	a4,a4,a5
   18e00:	47f2                	lw	a5,28(sp)
   18e02:	97ae                	add	a5,a5,a1
   18e04:	973e                	add	a4,a4,a5
   18e06:	87a2                	mv	a5,s0
   18e08:	d63a                	sw	a4,44(sp)
   18e0a:	00c71693          	slli	a3,a4,0xc
   18e0e:	4401                	li	s0,0
   18e10:	0c06d963          	bgez	a3,18ee2 <__subtf3+0x37c>
   18e14:	5602                	lw	a2,32(sp)
   18e16:	fff806b7          	lui	a3,0xfff80
   18e1a:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   18e1c:	8f75                	and	a4,a4,a3
   18e1e:	d63a                	sw	a4,44(sp)
   18e20:	0785                	addi	a5,a5,1
   18e22:	067e                	slli	a2,a2,0x1f
   18e24:	1014                	addi	a3,sp,32
   18e26:	02c10813          	addi	a6,sp,44
   18e2a:	428c                	lw	a1,0(a3)
   18e2c:	42c8                	lw	a0,4(a3)
   18e2e:	8185                	srli	a1,a1,0x1
   18e30:	057e                	slli	a0,a0,0x1f
   18e32:	8dc9                	or	a1,a1,a0
   18e34:	c28c                	sw	a1,0(a3)
   18e36:	0691                	addi	a3,a3,4
   18e38:	fed819e3          	bne	a6,a3,18e2a <__subtf3+0x2c4>
   18e3c:	5682                	lw	a3,32(sp)
   18e3e:	8305                	srli	a4,a4,0x1
   18e40:	d63a                	sw	a4,44(sp)
   18e42:	00c03733          	snez	a4,a2
   18e46:	8f55                	or	a4,a4,a3
   18e48:	d03a                	sw	a4,32(sp)
   18e4a:	6721                	lui	a4,0x8
   18e4c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18e4e:	4401                	li	s0,0
   18e50:	08e79963          	bne	a5,a4,18ee2 <__subtf3+0x37c>
   18e54:	3a0a0963          	beqz	s4,19206 <__subtf3+0x6a0>
   18e58:	478d                	li	a5,3
   18e5a:	3afa1163          	bne	s4,a5,191fc <__subtf3+0x696>
   18e5e:	3a098463          	beqz	s3,19206 <__subtf3+0x6a0>
   18e62:	57fd                	li	a5,-1
   18e64:	d63e                	sw	a5,44(sp)
   18e66:	d43e                	sw	a5,40(sp)
   18e68:	d23e                	sw	a5,36(sp)
   18e6a:	d03e                	sw	a5,32(sp)
   18e6c:	67a1                	lui	a5,0x8
   18e6e:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   18e70:	a64d                	j	19212 <__subtf3+0x6ac>
   18e72:	00082f03          	lw	t5,0(a6)
   18e76:	00482283          	lw	t0,4(a6)
   18e7a:	01d804b3          	add	s1,a6,t4
   18e7e:	00cf5f33          	srl	t5,t5,a2
   18e82:	007292b3          	sll	t0,t0,t2
   18e86:	005f6f33          	or	t5,t5,t0
   18e8a:	01e4a023          	sw	t5,0(s1)
   18e8e:	0f85                	addi	t6,t6,1
   18e90:	0811                	addi	a6,a6,4
   18e92:	bddd                	j	18d88 <__subtf3+0x222>
   18e94:	4bd2                	lw	s7,20(sp)
   18e96:	4c62                	lw	s8,24(sp)
   18e98:	4b72                	lw	s6,28(sp)
   18e9a:	1e078363          	beqz	a5,19080 <__subtf3+0x51a>
   18e9e:	408a87b3          	sub	a5,s5,s0
   18ea2:	e859                	bnez	s0,18f38 <__subtf3+0x3d2>
   18ea4:	4612                	lw	a2,4(sp)
   18ea6:	46a2                	lw	a3,8(sp)
   18ea8:	48b2                	lw	a7,12(sp)
   18eaa:	00d66833          	or	a6,a2,a3
   18eae:	01186833          	or	a6,a6,a7
   18eb2:	00e86833          	or	a6,a6,a4
   18eb6:	02081963          	bnez	a6,18ee8 <__subtf3+0x382>
   18eba:	6721                	lui	a4,0x8
   18ebc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18ebe:	00e79e63          	bne	a5,a4,18eda <__subtf3+0x374>
   18ec2:	018be733          	or	a4,s7,s8
   18ec6:	01676733          	or	a4,a4,s6
   18eca:	8f45                	or	a4,a4,s1
   18ecc:	c719                	beqz	a4,18eda <__subtf3+0x374>
   18ece:	012b5413          	srli	s0,s6,0x12
   18ed2:	00144413          	xori	s0,s0,1
   18ed6:	8805                	andi	s0,s0,1
   18ed8:	0412                	slli	s0,s0,0x4
   18eda:	d026                	sw	s1,32(sp)
   18edc:	d25e                	sw	s7,36(sp)
   18ede:	d462                	sw	s8,40(sp)
   18ee0:	d65a                	sw	s6,44(sp)
   18ee2:	4681                	li	a3,0
   18ee4:	3fb0006f          	j	19ade <__subtf3+0xf78>
   18ee8:	fff78813          	addi	a6,a5,-1
   18eec:	02081963          	bnez	a6,18f1e <__subtf3+0x3b8>
   18ef0:	94ba                	add	s1,s1,a4
   18ef2:	9bb2                	add	s7,s7,a2
   18ef4:	d026                	sw	s1,32(sp)
   18ef6:	00e4b4b3          	sltu	s1,s1,a4
   18efa:	94de                	add	s1,s1,s7
   18efc:	d226                	sw	s1,36(sp)
   18efe:	00cbb633          	sltu	a2,s7,a2
   18f02:	0174b4b3          	sltu	s1,s1,s7
   18f06:	9c36                	add	s8,s8,a3
   18f08:	8e45                	or	a2,a2,s1
   18f0a:	9662                	add	a2,a2,s8
   18f0c:	d432                	sw	a2,40(sp)
   18f0e:	00dc3733          	sltu	a4,s8,a3
   18f12:	01863633          	sltu	a2,a2,s8
   18f16:	8f51                	or	a4,a4,a2
   18f18:	98da                	add	a7,a7,s6
   18f1a:	9746                	add	a4,a4,a7
   18f1c:	b355                	j	18cc0 <__subtf3+0x15a>
   18f1e:	6721                	lui	a4,0x8
   18f20:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18f22:	fae780e3          	beq	a5,a4,18ec2 <__subtf3+0x35c>
   18f26:	07400793          	li	a5,116
   18f2a:	0507d863          	bge	a5,a6,18f7a <__subtf3+0x414>
   18f2e:	c602                	sw	zero,12(sp)
   18f30:	c402                	sw	zero,8(sp)
   18f32:	c202                	sw	zero,4(sp)
   18f34:	4785                	li	a5,1
   18f36:	a8cd                	j	19028 <__subtf3+0x4c2>
   18f38:	6721                	lui	a4,0x8
   18f3a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18f3c:	02ea9563          	bne	s5,a4,18f66 <__subtf3+0x400>
   18f40:	018be7b3          	or	a5,s7,s8
   18f44:	0167e7b3          	or	a5,a5,s6
   18f48:	8fc5                	or	a5,a5,s1
   18f4a:	4401                	li	s0,0
   18f4c:	c799                	beqz	a5,18f5a <__subtf3+0x3f4>
   18f4e:	012b5413          	srli	s0,s6,0x12
   18f52:	00144413          	xori	s0,s0,1
   18f56:	8805                	andi	s0,s0,1
   18f58:	0412                	slli	s0,s0,0x4
   18f5a:	d026                	sw	s1,32(sp)
   18f5c:	d25e                	sw	s7,36(sp)
   18f5e:	d462                	sw	s8,40(sp)
   18f60:	d65a                	sw	s6,44(sp)
   18f62:	87d6                	mv	a5,s5
   18f64:	bfbd                	j	18ee2 <__subtf3+0x37c>
   18f66:	4732                	lw	a4,12(sp)
   18f68:	000806b7          	lui	a3,0x80
   18f6c:	8f55                	or	a4,a4,a3
   18f6e:	c63a                	sw	a4,12(sp)
   18f70:	07400713          	li	a4,116
   18f74:	faf74de3          	blt	a4,a5,18f2e <__subtf3+0x3c8>
   18f78:	883e                	mv	a6,a5
   18f7a:	02000713          	li	a4,32
   18f7e:	02e84733          	div	a4,a6,a4
   18f82:	86ae                	mv	a3,a1
   18f84:	4401                	li	s0,0
   18f86:	4781                	li	a5,0
   18f88:	02e7c663          	blt	a5,a4,18fb4 <__subtf3+0x44e>
   18f8c:	478d                	li	a5,3
   18f8e:	01f87893          	andi	a7,a6,31
   18f92:	8f99                	sub	a5,a5,a4
   18f94:	00271613          	slli	a2,a4,0x2
   18f98:	02089363          	bnez	a7,18fbe <__subtf3+0x458>
   18f9c:	00c586b3          	add	a3,a1,a2
   18fa0:	4294                	lw	a3,0(a3)
   18fa2:	0885                	addi	a7,a7,1
   18fa4:	c194                	sw	a3,0(a1)
   18fa6:	0591                	addi	a1,a1,4
   18fa8:	ff17dae3          	bge	a5,a7,18f9c <__subtf3+0x436>
   18fac:	4791                	li	a5,4
   18fae:	40e78733          	sub	a4,a5,a4
   18fb2:	a899                	j	19008 <__subtf3+0x4a2>
   18fb4:	4290                	lw	a2,0(a3)
   18fb6:	0785                	addi	a5,a5,1
   18fb8:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   18fba:	8c51                	or	s0,s0,a2
   18fbc:	b7f1                	j	18f88 <__subtf3+0x422>
   18fbe:	02000693          	li	a3,32
   18fc2:	02d86833          	rem	a6,a6,a3
   18fc6:	41068833          	sub	a6,a3,a6
   18fca:	86ba                	mv	a3,a4
   18fcc:	00075363          	bgez	a4,18fd2 <__subtf3+0x46c>
   18fd0:	4681                	li	a3,0
   18fd2:	068a                	slli	a3,a3,0x2
   18fd4:	04068693          	addi	a3,a3,64
   18fd8:	968a                	add	a3,a3,sp
   18fda:	fc06a683          	lw	a3,-64(a3)
   18fde:	95b2                	add	a1,a1,a2
   18fe0:	4301                	li	t1,0
   18fe2:	010696b3          	sll	a3,a3,a6
   18fe6:	8c55                	or	s0,s0,a3
   18fe8:	40c00633          	neg	a2,a2
   18fec:	06f34a63          	blt	t1,a5,19060 <__subtf3+0x4fa>
   18ff0:	4691                	li	a3,4
   18ff2:	40e68733          	sub	a4,a3,a4
   18ff6:	46b2                	lw	a3,12(sp)
   18ff8:	078a                	slli	a5,a5,0x2
   18ffa:	04078793          	addi	a5,a5,64
   18ffe:	978a                	add	a5,a5,sp
   19000:	0116d6b3          	srl	a3,a3,a7
   19004:	fcd7a023          	sw	a3,-64(a5)
   19008:	00572793          	slti	a5,a4,5
   1900c:	4601                	li	a2,0
   1900e:	c781                	beqz	a5,19016 <__subtf3+0x4b0>
   19010:	4611                	li	a2,4
   19012:	8e19                	sub	a2,a2,a4
   19014:	060a                	slli	a2,a2,0x2
   19016:	070a                	slli	a4,a4,0x2
   19018:	953a                	add	a0,a0,a4
   1901a:	4581                	li	a1,0
   1901c:	c47f70ef          	jal	10c62 <memset>
   19020:	4702                	lw	a4,0(sp)
   19022:	008037b3          	snez	a5,s0
   19026:	8fd9                	or	a5,a5,a4
   19028:	4692                	lw	a3,4(sp)
   1902a:	c03e                	sw	a5,0(sp)
   1902c:	97a6                	add	a5,a5,s1
   1902e:	9bb6                	add	s7,s7,a3
   19030:	4722                	lw	a4,8(sp)
   19032:	d03e                	sw	a5,32(sp)
   19034:	0097b7b3          	sltu	a5,a5,s1
   19038:	97de                	add	a5,a5,s7
   1903a:	d23e                	sw	a5,36(sp)
   1903c:	00dbb6b3          	sltu	a3,s7,a3
   19040:	0177b7b3          	sltu	a5,a5,s7
   19044:	9c3a                	add	s8,s8,a4
   19046:	8fd5                	or	a5,a5,a3
   19048:	97e2                	add	a5,a5,s8
   1904a:	d43e                	sw	a5,40(sp)
   1904c:	00ec3733          	sltu	a4,s8,a4
   19050:	0187b7b3          	sltu	a5,a5,s8
   19054:	8f5d                	or	a4,a4,a5
   19056:	47b2                	lw	a5,12(sp)
   19058:	97da                	add	a5,a5,s6
   1905a:	973e                	add	a4,a4,a5
   1905c:	87d6                	mv	a5,s5
   1905e:	b36d                	j	18e08 <__subtf3+0x2a2>
   19060:	4194                	lw	a3,0(a1)
   19062:	0045ae03          	lw	t3,4(a1)
   19066:	00c58eb3          	add	t4,a1,a2
   1906a:	0116d6b3          	srl	a3,a3,a7
   1906e:	010e1e33          	sll	t3,t3,a6
   19072:	01c6e6b3          	or	a3,a3,t3
   19076:	00dea023          	sw	a3,0(t4)
   1907a:	0305                	addi	t1,t1,1
   1907c:	0591                	addi	a1,a1,4
   1907e:	b7bd                	j	18fec <__subtf3+0x486>
   19080:	00140793          	addi	a5,s0,1
   19084:	01179513          	slli	a0,a5,0x11
   19088:	8149                	srli	a0,a0,0x12
   1908a:	4612                	lw	a2,4(sp)
   1908c:	46a2                	lw	a3,8(sp)
   1908e:	45b2                	lw	a1,12(sp)
   19090:	10051c63          	bnez	a0,191a8 <__subtf3+0x642>
   19094:	00d667b3          	or	a5,a2,a3
   19098:	8fcd                	or	a5,a5,a1
   1909a:	8fd9                	or	a5,a5,a4
   1909c:	e049                	bnez	s0,1911e <__subtf3+0x5b8>
   1909e:	e785                	bnez	a5,190c6 <__subtf3+0x560>
   190a0:	d026                	sw	s1,32(sp)
   190a2:	d25e                	sw	s7,36(sp)
   190a4:	d462                	sw	s8,40(sp)
   190a6:	d65a                	sw	s6,44(sp)
   190a8:	5782                	lw	a5,32(sp)
   190aa:	5592                	lw	a1,36(sp)
   190ac:	5622                	lw	a2,40(sp)
   190ae:	56b2                	lw	a3,44(sp)
   190b0:	00b7e733          	or	a4,a5,a1
   190b4:	8f51                	or	a4,a4,a2
   190b6:	8f55                	or	a4,a4,a3
   190b8:	1a071de3          	bnez	a4,19a72 <__subtf3+0xf0c>
   190bc:	4781                	li	a5,0
   190be:	4681                	li	a3,0
   190c0:	4401                	li	s0,0
   190c2:	21d0006f          	j	19ade <__subtf3+0xf78>
   190c6:	018be7b3          	or	a5,s7,s8
   190ca:	0167e7b3          	or	a5,a5,s6
   190ce:	8fc5                	or	a5,a5,s1
   190d0:	e791                	bnez	a5,190dc <__subtf3+0x576>
   190d2:	d03a                	sw	a4,32(sp)
   190d4:	d232                	sw	a2,36(sp)
   190d6:	d436                	sw	a3,40(sp)
   190d8:	d62e                	sw	a1,44(sp)
   190da:	b7f9                	j	190a8 <__subtf3+0x542>
   190dc:	94ba                	add	s1,s1,a4
   190de:	9bb2                	add	s7,s7,a2
   190e0:	d026                	sw	s1,32(sp)
   190e2:	00e4b4b3          	sltu	s1,s1,a4
   190e6:	94de                	add	s1,s1,s7
   190e8:	d226                	sw	s1,36(sp)
   190ea:	00cbb633          	sltu	a2,s7,a2
   190ee:	0174b4b3          	sltu	s1,s1,s7
   190f2:	9c36                	add	s8,s8,a3
   190f4:	8e45                	or	a2,a2,s1
   190f6:	9662                	add	a2,a2,s8
   190f8:	d432                	sw	a2,40(sp)
   190fa:	00dc36b3          	sltu	a3,s8,a3
   190fe:	01863633          	sltu	a2,a2,s8
   19102:	8ed1                	or	a3,a3,a2
   19104:	95da                	add	a1,a1,s6
   19106:	96ae                	add	a3,a3,a1
   19108:	00c69793          	slli	a5,a3,0xc
   1910c:	3207d2e3          	bgez	a5,19c30 <__subtf3+0x10ca>
   19110:	fff807b7          	lui	a5,0xfff80
   19114:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19116:	8efd                	and	a3,a3,a5
   19118:	d636                	sw	a3,44(sp)
   1911a:	4785                	li	a5,1
   1911c:	b3d9                	j	18ee2 <__subtf3+0x37c>
   1911e:	6521                	lui	a0,0x8
   19120:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19122:	04a41363          	bne	s0,a0,19168 <__subtf3+0x602>
   19126:	300788e3          	beqz	a5,19c36 <__subtf3+0x10d0>
   1912a:	0125d413          	srli	s0,a1,0x12
   1912e:	00144413          	xori	s0,s0,1
   19132:	8805                	andi	s0,s0,1
   19134:	0412                	slli	s0,s0,0x4
   19136:	02aa9d63          	bne	s5,a0,19170 <__subtf3+0x60a>
   1913a:	018be533          	or	a0,s7,s8
   1913e:	01656533          	or	a0,a0,s6
   19142:	8d45                	or	a0,a0,s1
   19144:	c50d                	beqz	a0,1916e <__subtf3+0x608>
   19146:	00db1513          	slli	a0,s6,0xd
   1914a:	02054263          	bltz	a0,1916e <__subtf3+0x608>
   1914e:	4441                	li	s0,16
   19150:	eb85                	bnez	a5,19180 <__subtf3+0x61a>
   19152:	8726                	mv	a4,s1
   19154:	865e                	mv	a2,s7
   19156:	86e2                	mv	a3,s8
   19158:	85da                	mv	a1,s6
   1915a:	d03a                	sw	a4,32(sp)
   1915c:	d232                	sw	a2,36(sp)
   1915e:	d436                	sw	a3,40(sp)
   19160:	d62e                	sw	a1,44(sp)
   19162:	67a1                	lui	a5,0x8
   19164:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19166:	bbb5                	j	18ee2 <__subtf3+0x37c>
   19168:	4401                	li	s0,0
   1916a:	fcaa88e3          	beq	s5,a0,1913a <__subtf3+0x5d4>
   1916e:	d3f5                	beqz	a5,19152 <__subtf3+0x5ec>
   19170:	018bebb3          	or	s7,s7,s8
   19174:	016bebb3          	or	s7,s7,s6
   19178:	009bebb3          	or	s7,s7,s1
   1917c:	fc0b8fe3          	beqz	s7,1915a <__subtf3+0x5f4>
   19180:	67a1                	lui	a5,0x8
   19182:	d63e                	sw	a5,44(sp)
   19184:	d402                	sw	zero,40(sp)
   19186:	d202                	sw	zero,36(sp)
   19188:	d002                	sw	zero,32(sp)
   1918a:	101c                	addi	a5,sp,32
   1918c:	0850                	addi	a2,sp,20
   1918e:	47d8                	lw	a4,12(a5)
   19190:	4794                	lw	a3,8(a5)
   19192:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19194:	070e                	slli	a4,a4,0x3
   19196:	82f5                	srli	a3,a3,0x1d
   19198:	8f55                	or	a4,a4,a3
   1919a:	cb98                	sw	a4,16(a5)
   1919c:	fef619e3          	bne	a2,a5,1918e <__subtf3+0x628>
   191a0:	4981                	li	s3,0
   191a2:	b7c1                	j	19162 <__subtf3+0x5fc>
   191a4:	4401                	li	s0,0
   191a6:	bf51                	j	1913a <__subtf3+0x5d4>
   191a8:	94ba                	add	s1,s1,a4
   191aa:	9bb2                	add	s7,s7,a2
   191ac:	d026                	sw	s1,32(sp)
   191ae:	00e4b4b3          	sltu	s1,s1,a4
   191b2:	94de                	add	s1,s1,s7
   191b4:	d226                	sw	s1,36(sp)
   191b6:	00cbb633          	sltu	a2,s7,a2
   191ba:	0174b4b3          	sltu	s1,s1,s7
   191be:	9c36                	add	s8,s8,a3
   191c0:	8e45                	or	a2,a2,s1
   191c2:	9662                	add	a2,a2,s8
   191c4:	d432                	sw	a2,40(sp)
   191c6:	00dc36b3          	sltu	a3,s8,a3
   191ca:	01863633          	sltu	a2,a2,s8
   191ce:	8ed1                	or	a3,a3,a2
   191d0:	95da                	add	a1,a1,s6
   191d2:	96ae                	add	a3,a3,a1
   191d4:	d636                	sw	a3,44(sp)
   191d6:	1018                	addi	a4,sp,32
   191d8:	1068                	addi	a0,sp,44
   191da:	4310                	lw	a2,0(a4)
   191dc:	434c                	lw	a1,4(a4)
   191de:	8205                	srli	a2,a2,0x1
   191e0:	05fe                	slli	a1,a1,0x1f
   191e2:	8e4d                	or	a2,a2,a1
   191e4:	c310                	sw	a2,0(a4)
   191e6:	0711                	addi	a4,a4,4
   191e8:	fee519e3          	bne	a0,a4,191da <__subtf3+0x674>
   191ec:	6721                	lui	a4,0x8
   191ee:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   191f0:	c6e782e3          	beq	a5,a4,18e54 <__subtf3+0x2ee>
   191f4:	8285                	srli	a3,a3,0x1
   191f6:	d636                	sw	a3,44(sp)
   191f8:	4401                	li	s0,0
   191fa:	b1e5                	j	18ee2 <__subtf3+0x37c>
   191fc:	4789                	li	a5,2
   191fe:	c6fa12e3          	bne	s4,a5,18e62 <__subtf3+0x2fc>
   19202:	c60980e3          	beqz	s3,18e62 <__subtf3+0x2fc>
   19206:	67a1                	lui	a5,0x8
   19208:	d602                	sw	zero,44(sp)
   1920a:	d402                	sw	zero,40(sp)
   1920c:	d202                	sw	zero,36(sp)
   1920e:	d002                	sw	zero,32(sp)
   19210:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19212:	4415                	li	s0,5
   19214:	b1f9                	j	18ee2 <__subtf3+0x37c>
   19216:	22f05b63          	blez	a5,1944c <__subtf3+0x8e6>
   1921a:	4592                	lw	a1,4(sp)
   1921c:	4522                	lw	a0,8(sp)
   1921e:	48b2                	lw	a7,12(sp)
   19220:	0a0a9563          	bnez	s5,192ca <__subtf3+0x764>
   19224:	4ed2                	lw	t4,20(sp)
   19226:	4fe2                	lw	t6,24(sp)
   19228:	4672                	lw	a2,28(sp)
   1922a:	01fee6b3          	or	a3,t4,t6
   1922e:	8ed1                	or	a3,a3,a2
   19230:	8ec5                	or	a3,a3,s1
   19232:	e69d                	bnez	a3,19260 <__subtf3+0x6fa>
   19234:	66a1                	lui	a3,0x8
   19236:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19238:	00d79f63          	bne	a5,a3,19256 <__subtf3+0x6f0>
   1923c:	00a5e6b3          	or	a3,a1,a0
   19240:	0116e6b3          	or	a3,a3,a7
   19244:	8ed9                	or	a3,a3,a4
   19246:	ca81                	beqz	a3,19256 <__subtf3+0x6f0>
   19248:	0128da93          	srli	s5,a7,0x12
   1924c:	001aca93          	xori	s5,s5,1
   19250:	001afa93          	andi	s5,s5,1
   19254:	0a92                	slli	s5,s5,0x4
   19256:	d03a                	sw	a4,32(sp)
   19258:	d22e                	sw	a1,36(sp)
   1925a:	d42a                	sw	a0,40(sp)
   1925c:	d646                	sw	a7,44(sp)
   1925e:	b435                	j	18c8a <__subtf3+0x124>
   19260:	fff78f13          	addi	t5,a5,-1
   19264:	040f1663          	bnez	t5,192b0 <__subtf3+0x74a>
   19268:	409706b3          	sub	a3,a4,s1
   1926c:	41d58833          	sub	a6,a1,t4
   19270:	00d73333          	sltu	t1,a4,a3
   19274:	0105b7b3          	sltu	a5,a1,a6
   19278:	40680833          	sub	a6,a6,t1
   1927c:	4301                	li	t1,0
   1927e:	00d77663          	bgeu	a4,a3,1928a <__subtf3+0x724>
   19282:	40be8eb3          	sub	t4,t4,a1
   19286:	001eb313          	seqz	t1,t4
   1928a:	00f36733          	or	a4,t1,a5
   1928e:	41f505b3          	sub	a1,a0,t6
   19292:	00b53333          	sltu	t1,a0,a1
   19296:	8d99                	sub	a1,a1,a4
   19298:	c709                	beqz	a4,192a2 <__subtf3+0x73c>
   1929a:	40af87b3          	sub	a5,t6,a0
   1929e:	0017bf13          	seqz	t5,a5
   192a2:	40c88733          	sub	a4,a7,a2
   192a6:	006f67b3          	or	a5,t5,t1
   192aa:	8f1d                	sub	a4,a4,a5
   192ac:	4785                	li	a5,1
   192ae:	aab9                	j	1940c <__subtf3+0x8a6>
   192b0:	66a1                	lui	a3,0x8
   192b2:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   192b4:	f8d784e3          	beq	a5,a3,1923c <__subtf3+0x6d6>
   192b8:	07400793          	li	a5,116
   192bc:	05e7d763          	bge	a5,t5,1930a <__subtf3+0x7a4>
   192c0:	ce02                	sw	zero,28(sp)
   192c2:	cc02                	sw	zero,24(sp)
   192c4:	ca02                	sw	zero,20(sp)
   192c6:	4685                	li	a3,1
   192c8:	a8e5                	j	193c0 <__subtf3+0x85a>
   192ca:	66a1                	lui	a3,0x8
   192cc:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   192ce:	02d41463          	bne	s0,a3,192f6 <__subtf3+0x790>
   192d2:	00a5e7b3          	or	a5,a1,a0
   192d6:	0117e7b3          	or	a5,a5,a7
   192da:	8fd9                	or	a5,a5,a4
   192dc:	4681                	li	a3,0
   192de:	c799                	beqz	a5,192ec <__subtf3+0x786>
   192e0:	0128d693          	srli	a3,a7,0x12
   192e4:	0016c693          	xori	a3,a3,1
   192e8:	8a85                	andi	a3,a3,1
   192ea:	0692                	slli	a3,a3,0x4
   192ec:	d03a                	sw	a4,32(sp)
   192ee:	d22e                	sw	a1,36(sp)
   192f0:	d42a                	sw	a0,40(sp)
   192f2:	d646                	sw	a7,44(sp)
   192f4:	bc09                	j	18d06 <__subtf3+0x1a0>
   192f6:	46f2                	lw	a3,28(sp)
   192f8:	00080637          	lui	a2,0x80
   192fc:	8ed1                	or	a3,a3,a2
   192fe:	ce36                	sw	a3,28(sp)
   19300:	07400693          	li	a3,116
   19304:	faf6cee3          	blt	a3,a5,192c0 <__subtf3+0x75a>
   19308:	8f3e                	mv	t5,a5
   1930a:	405f5793          	srai	a5,t5,0x5
   1930e:	8342                	mv	t1,a6
   19310:	01ff7f13          	andi	t5,t5,31
   19314:	4681                	li	a3,0
   19316:	4601                	li	a2,0
   19318:	02f61663          	bne	a2,a5,19344 <__subtf3+0x7de>
   1931c:	460d                	li	a2,3
   1931e:	8e1d                	sub	a2,a2,a5
   19320:	00279313          	slli	t1,a5,0x2
   19324:	020f1763          	bnez	t5,19352 <__subtf3+0x7ec>
   19328:	00680eb3          	add	t4,a6,t1
   1932c:	000eae83          	lw	t4,0(t4)
   19330:	0f05                	addi	t5,t5,1
   19332:	0811                	addi	a6,a6,4
   19334:	ffd82e23          	sw	t4,-4(a6)
   19338:	ffe658e3          	bge	a2,t5,19328 <__subtf3+0x7c2>
   1933c:	4611                	li	a2,4
   1933e:	40f607b3          	sub	a5,a2,a5
   19342:	a881                	j	19392 <__subtf3+0x82c>
   19344:	00032e83          	lw	t4,0(t1)
   19348:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   1934a:	0311                	addi	t1,t1,4
   1934c:	01d6e6b3          	or	a3,a3,t4
   19350:	b7e1                	j	19318 <__subtf3+0x7b2>
   19352:	04030493          	addi	s1,t1,64
   19356:	00248eb3          	add	t4,s1,sp
   1935a:	fd0eae83          	lw	t4,-48(t4)
   1935e:	02000393          	li	t2,32
   19362:	41e383b3          	sub	t2,t2,t5
   19366:	007e9eb3          	sll	t4,t4,t2
   1936a:	981a                	add	a6,a6,t1
   1936c:	01d6e6b3          	or	a3,a3,t4
   19370:	40600333          	neg	t1,t1
   19374:	4f81                	li	t6,0
   19376:	0acfca63          	blt	t6,a2,1942a <__subtf3+0x8c4>
   1937a:	4811                	li	a6,4
   1937c:	40f807b3          	sub	a5,a6,a5
   19380:	4872                	lw	a6,28(sp)
   19382:	060a                	slli	a2,a2,0x2
   19384:	04060613          	addi	a2,a2,64
   19388:	960a                	add	a2,a2,sp
   1938a:	01e85833          	srl	a6,a6,t5
   1938e:	fd062823          	sw	a6,-48(a2)
   19392:	4611                	li	a2,4
   19394:	8e1d                	sub	a2,a2,a5
   19396:	060a                	slli	a2,a2,0x2
   19398:	078a                	slli	a5,a5,0x2
   1939a:	4821                	li	a6,8
   1939c:	97f2                	add	a5,a5,t3
   1939e:	01066863          	bltu	a2,a6,193ae <__subtf3+0x848>
   193a2:	0007a023          	sw	zero,0(a5)
   193a6:	0007a223          	sw	zero,4(a5)
   193aa:	1661                	addi	a2,a2,-8
   193ac:	07a1                	addi	a5,a5,8
   193ae:	4811                	li	a6,4
   193b0:	01066463          	bltu	a2,a6,193b8 <__subtf3+0x852>
   193b4:	0007a023          	sw	zero,0(a5)
   193b8:	47c2                	lw	a5,16(sp)
   193ba:	00d036b3          	snez	a3,a3
   193be:	8edd                	or	a3,a3,a5
   193c0:	4652                	lw	a2,20(sp)
   193c2:	c836                	sw	a3,16(sp)
   193c4:	40d706b3          	sub	a3,a4,a3
   193c8:	40c58833          	sub	a6,a1,a2
   193cc:	00d737b3          	sltu	a5,a4,a3
   193d0:	0105b333          	sltu	t1,a1,a6
   193d4:	40f80833          	sub	a6,a6,a5
   193d8:	4781                	li	a5,0
   193da:	00d77563          	bgeu	a4,a3,193e4 <__subtf3+0x87e>
   193de:	8e0d                	sub	a2,a2,a1
   193e0:	00163793          	seqz	a5,a2
   193e4:	4762                	lw	a4,24(sp)
   193e6:	0067e7b3          	or	a5,a5,t1
   193ea:	4601                	li	a2,0
   193ec:	40e505b3          	sub	a1,a0,a4
   193f0:	00b53333          	sltu	t1,a0,a1
   193f4:	8d9d                	sub	a1,a1,a5
   193f6:	c781                	beqz	a5,193fe <__subtf3+0x898>
   193f8:	8f09                	sub	a4,a4,a0
   193fa:	00173613          	seqz	a2,a4
   193fe:	4772                	lw	a4,28(sp)
   19400:	00666633          	or	a2,a2,t1
   19404:	87a2                	mv	a5,s0
   19406:	40e88733          	sub	a4,a7,a4
   1940a:	8f11                	sub	a4,a4,a2
   1940c:	d036                	sw	a3,32(sp)
   1940e:	d63a                	sw	a4,44(sp)
   19410:	d42e                	sw	a1,40(sp)
   19412:	d242                	sw	a6,36(sp)
   19414:	00c71693          	slli	a3,a4,0xc
   19418:	de06d0e3          	bgez	a3,191f8 <__subtf3+0x692>
   1941c:	000806b7          	lui	a3,0x80
   19420:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x645a3>
   19422:	8f75                	and	a4,a4,a3
   19424:	d63a                	sw	a4,44(sp)
   19426:	843e                	mv	s0,a5
   19428:	a1bd                	j	19896 <__subtf3+0xd30>
   1942a:	00082e83          	lw	t4,0(a6)
   1942e:	00482283          	lw	t0,4(a6)
   19432:	006804b3          	add	s1,a6,t1
   19436:	01eedeb3          	srl	t4,t4,t5
   1943a:	007292b3          	sll	t0,t0,t2
   1943e:	005eeeb3          	or	t4,t4,t0
   19442:	01d4a023          	sw	t4,0(s1)
   19446:	0f85                	addi	t6,t6,1
   19448:	0811                	addi	a6,a6,4
   1944a:	b735                	j	19376 <__subtf3+0x810>
   1944c:	4bd2                	lw	s7,20(sp)
   1944e:	4b62                	lw	s6,24(sp)
   19450:	4c72                	lw	s8,28(sp)
   19452:	20078763          	beqz	a5,19660 <__subtf3+0xafa>
   19456:	408a87b3          	sub	a5,s5,s0
   1945a:	e05d                	bnez	s0,19500 <__subtf3+0x99a>
   1945c:	4892                	lw	a7,4(sp)
   1945e:	4e22                	lw	t3,8(sp)
   19460:	4632                	lw	a2,12(sp)
   19462:	01c8e6b3          	or	a3,a7,t3
   19466:	8ed1                	or	a3,a3,a2
   19468:	8ed9                	or	a3,a3,a4
   1946a:	e69d                	bnez	a3,19498 <__subtf3+0x932>
   1946c:	6721                	lui	a4,0x8
   1946e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19470:	00e79e63          	bne	a5,a4,1948c <__subtf3+0x926>
   19474:	016be733          	or	a4,s7,s6
   19478:	01876733          	or	a4,a4,s8
   1947c:	8f45                	or	a4,a4,s1
   1947e:	c719                	beqz	a4,1948c <__subtf3+0x926>
   19480:	012c5413          	srli	s0,s8,0x12
   19484:	00144413          	xori	s0,s0,1
   19488:	8805                	andi	s0,s0,1
   1948a:	0412                	slli	s0,s0,0x4
   1948c:	d026                	sw	s1,32(sp)
   1948e:	d25e                	sw	s7,36(sp)
   19490:	d45a                	sw	s6,40(sp)
   19492:	d662                	sw	s8,44(sp)
   19494:	89e6                	mv	s3,s9
   19496:	b4b1                	j	18ee2 <__subtf3+0x37c>
   19498:	fff78313          	addi	t1,a5,-1
   1949c:	04031563          	bnez	t1,194e6 <__subtf3+0x980>
   194a0:	40e486b3          	sub	a3,s1,a4
   194a4:	411b8833          	sub	a6,s7,a7
   194a8:	00d4b733          	sltu	a4,s1,a3
   194ac:	010bb7b3          	sltu	a5,s7,a6
   194b0:	40e80833          	sub	a6,a6,a4
   194b4:	4701                	li	a4,0
   194b6:	00d4f663          	bgeu	s1,a3,194c2 <__subtf3+0x95c>
   194ba:	417888b3          	sub	a7,a7,s7
   194be:	0018b713          	seqz	a4,a7
   194c2:	41cb05b3          	sub	a1,s6,t3
   194c6:	8f5d                	or	a4,a4,a5
   194c8:	00bb3533          	sltu	a0,s6,a1
   194cc:	8d99                	sub	a1,a1,a4
   194ce:	c709                	beqz	a4,194d8 <__subtf3+0x972>
   194d0:	416e07b3          	sub	a5,t3,s6
   194d4:	0017b313          	seqz	t1,a5
   194d8:	40cc0733          	sub	a4,s8,a2
   194dc:	00a367b3          	or	a5,t1,a0
   194e0:	8f1d                	sub	a4,a4,a5
   194e2:	89e6                	mv	s3,s9
   194e4:	b3e1                	j	192ac <__subtf3+0x746>
   194e6:	6721                	lui	a4,0x8
   194e8:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   194ea:	f8e785e3          	beq	a5,a4,19474 <__subtf3+0x90e>
   194ee:	07400793          	li	a5,116
   194f2:	0467d863          	bge	a5,t1,19542 <__subtf3+0x9dc>
   194f6:	c602                	sw	zero,12(sp)
   194f8:	c402                	sw	zero,8(sp)
   194fa:	c202                	sw	zero,4(sp)
   194fc:	4685                	li	a3,1
   194fe:	a8cd                	j	195f0 <__subtf3+0xa8a>
   19500:	6721                	lui	a4,0x8
   19502:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19504:	02ea9563          	bne	s5,a4,1952e <__subtf3+0x9c8>
   19508:	016be7b3          	or	a5,s7,s6
   1950c:	0187e7b3          	or	a5,a5,s8
   19510:	8fc5                	or	a5,a5,s1
   19512:	4401                	li	s0,0
   19514:	c799                	beqz	a5,19522 <__subtf3+0x9bc>
   19516:	012c5413          	srli	s0,s8,0x12
   1951a:	00144413          	xori	s0,s0,1
   1951e:	8805                	andi	s0,s0,1
   19520:	0412                	slli	s0,s0,0x4
   19522:	d026                	sw	s1,32(sp)
   19524:	d25e                	sw	s7,36(sp)
   19526:	d45a                	sw	s6,40(sp)
   19528:	d662                	sw	s8,44(sp)
   1952a:	87d6                	mv	a5,s5
   1952c:	b7a5                	j	19494 <__subtf3+0x92e>
   1952e:	4732                	lw	a4,12(sp)
   19530:	000806b7          	lui	a3,0x80
   19534:	8f55                	or	a4,a4,a3
   19536:	c63a                	sw	a4,12(sp)
   19538:	07400713          	li	a4,116
   1953c:	faf74de3          	blt	a4,a5,194f6 <__subtf3+0x990>
   19540:	833e                	mv	t1,a5
   19542:	02000793          	li	a5,32
   19546:	02f347b3          	div	a5,t1,a5
   1954a:	86ae                	mv	a3,a1
   1954c:	4401                	li	s0,0
   1954e:	4701                	li	a4,0
   19550:	02f74663          	blt	a4,a5,1957c <__subtf3+0xa16>
   19554:	470d                	li	a4,3
   19556:	01f37813          	andi	a6,t1,31
   1955a:	8f1d                	sub	a4,a4,a5
   1955c:	00279613          	slli	a2,a5,0x2
   19560:	02081363          	bnez	a6,19586 <__subtf3+0xa20>
   19564:	00c586b3          	add	a3,a1,a2
   19568:	4294                	lw	a3,0(a3)
   1956a:	0805                	addi	a6,a6,1
   1956c:	c194                	sw	a3,0(a1)
   1956e:	0591                	addi	a1,a1,4
   19570:	ff075ae3          	bge	a4,a6,19564 <__subtf3+0x9fe>
   19574:	4711                	li	a4,4
   19576:	40f707b3          	sub	a5,a4,a5
   1957a:	a899                	j	195d0 <__subtf3+0xa6a>
   1957c:	4290                	lw	a2,0(a3)
   1957e:	0705                	addi	a4,a4,1
   19580:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   19582:	8c51                	or	s0,s0,a2
   19584:	b7f1                	j	19550 <__subtf3+0x9ea>
   19586:	02000693          	li	a3,32
   1958a:	02d36333          	rem	t1,t1,a3
   1958e:	40668333          	sub	t1,a3,t1
   19592:	86be                	mv	a3,a5
   19594:	0007d363          	bgez	a5,1959a <__subtf3+0xa34>
   19598:	4681                	li	a3,0
   1959a:	068a                	slli	a3,a3,0x2
   1959c:	04068693          	addi	a3,a3,64
   195a0:	968a                	add	a3,a3,sp
   195a2:	fc06a683          	lw	a3,-64(a3)
   195a6:	95b2                	add	a1,a1,a2
   195a8:	4881                	li	a7,0
   195aa:	006696b3          	sll	a3,a3,t1
   195ae:	8c55                	or	s0,s0,a3
   195b0:	40c00633          	neg	a2,a2
   195b4:	08e8c663          	blt	a7,a4,19640 <__subtf3+0xada>
   195b8:	4691                	li	a3,4
   195ba:	40f687b3          	sub	a5,a3,a5
   195be:	46b2                	lw	a3,12(sp)
   195c0:	070a                	slli	a4,a4,0x2
   195c2:	04070713          	addi	a4,a4,64
   195c6:	970a                	add	a4,a4,sp
   195c8:	0106d6b3          	srl	a3,a3,a6
   195cc:	fcd72023          	sw	a3,-64(a4)
   195d0:	0057a713          	slti	a4,a5,5
   195d4:	4601                	li	a2,0
   195d6:	c701                	beqz	a4,195de <__subtf3+0xa78>
   195d8:	4611                	li	a2,4
   195da:	8e1d                	sub	a2,a2,a5
   195dc:	060a                	slli	a2,a2,0x2
   195de:	078a                	slli	a5,a5,0x2
   195e0:	953e                	add	a0,a0,a5
   195e2:	4581                	li	a1,0
   195e4:	e7ef70ef          	jal	10c62 <memset>
   195e8:	4782                	lw	a5,0(sp)
   195ea:	008036b3          	snez	a3,s0
   195ee:	8edd                	or	a3,a3,a5
   195f0:	4712                	lw	a4,4(sp)
   195f2:	c036                	sw	a3,0(sp)
   195f4:	40d486b3          	sub	a3,s1,a3
   195f8:	40eb8833          	sub	a6,s7,a4
   195fc:	00d4b7b3          	sltu	a5,s1,a3
   19600:	010bb633          	sltu	a2,s7,a6
   19604:	40f80833          	sub	a6,a6,a5
   19608:	4781                	li	a5,0
   1960a:	00d4f663          	bgeu	s1,a3,19616 <__subtf3+0xab0>
   1960e:	41770733          	sub	a4,a4,s7
   19612:	00173793          	seqz	a5,a4
   19616:	4722                	lw	a4,8(sp)
   19618:	8fd1                	or	a5,a5,a2
   1961a:	4601                	li	a2,0
   1961c:	40eb05b3          	sub	a1,s6,a4
   19620:	00bb3533          	sltu	a0,s6,a1
   19624:	8d9d                	sub	a1,a1,a5
   19626:	c789                	beqz	a5,19630 <__subtf3+0xaca>
   19628:	41670733          	sub	a4,a4,s6
   1962c:	00173613          	seqz	a2,a4
   19630:	4732                	lw	a4,12(sp)
   19632:	8e49                	or	a2,a2,a0
   19634:	87d6                	mv	a5,s5
   19636:	40ec0733          	sub	a4,s8,a4
   1963a:	8f11                	sub	a4,a4,a2
   1963c:	89e6                	mv	s3,s9
   1963e:	b3f9                	j	1940c <__subtf3+0x8a6>
   19640:	4194                	lw	a3,0(a1)
   19642:	0045ae03          	lw	t3,4(a1)
   19646:	00c58eb3          	add	t4,a1,a2
   1964a:	0106d6b3          	srl	a3,a3,a6
   1964e:	006e1e33          	sll	t3,t3,t1
   19652:	01c6e6b3          	or	a3,a3,t3
   19656:	00dea023          	sw	a3,0(t4)
   1965a:	0885                	addi	a7,a7,1
   1965c:	0591                	addi	a1,a1,4
   1965e:	bf99                	j	195b4 <__subtf3+0xa4e>
   19660:	00140693          	addi	a3,s0,1
   19664:	01169813          	slli	a6,a3,0x11
   19668:	01285813          	srli	a6,a6,0x12
   1966c:	4612                	lw	a2,4(sp)
   1966e:	45a2                	lw	a1,8(sp)
   19670:	4532                	lw	a0,12(sp)
   19672:	18081363          	bnez	a6,197f8 <__subtf3+0xc92>
   19676:	016be7b3          	or	a5,s7,s6
   1967a:	00b666b3          	or	a3,a2,a1
   1967e:	0187e7b3          	or	a5,a5,s8
   19682:	8ec9                	or	a3,a3,a0
   19684:	8fc5                	or	a5,a5,s1
   19686:	8ed9                	or	a3,a3,a4
   19688:	e869                	bnez	s0,1975a <__subtf3+0xbf4>
   1968a:	ea99                	bnez	a3,196a0 <__subtf3+0xb3a>
   1968c:	d026                	sw	s1,32(sp)
   1968e:	d25e                	sw	s7,36(sp)
   19690:	d45a                	sw	s6,40(sp)
   19692:	d662                	sw	s8,44(sp)
   19694:	ebcd                	bnez	a5,19746 <__subtf3+0xbe0>
   19696:	ffea0993          	addi	s3,s4,-2
   1969a:	0019b993          	seqz	s3,s3
   1969e:	b429                	j	190a8 <__subtf3+0x542>
   196a0:	e791                	bnez	a5,196ac <__subtf3+0xb46>
   196a2:	d03a                	sw	a4,32(sp)
   196a4:	d232                	sw	a2,36(sp)
   196a6:	d42e                	sw	a1,40(sp)
   196a8:	d62a                	sw	a0,44(sp)
   196aa:	bafd                	j	190a8 <__subtf3+0x542>
   196ac:	409707b3          	sub	a5,a4,s1
   196b0:	41760e33          	sub	t3,a2,s7
   196b4:	00f73833          	sltu	a6,a4,a5
   196b8:	01c638b3          	sltu	a7,a2,t3
   196bc:	410e0833          	sub	a6,t3,a6
   196c0:	4681                	li	a3,0
   196c2:	00f77463          	bgeu	a4,a5,196ca <__subtf3+0xb64>
   196c6:	001e3693          	seqz	a3,t3
   196ca:	0116e6b3          	or	a3,a3,a7
   196ce:	416588b3          	sub	a7,a1,s6
   196d2:	0115bf33          	sltu	t5,a1,a7
   196d6:	40d88eb3          	sub	t4,a7,a3
   196da:	4301                	li	t1,0
   196dc:	c299                	beqz	a3,196e2 <__subtf3+0xb7c>
   196de:	0018b313          	seqz	t1,a7
   196e2:	01e36333          	or	t1,t1,t5
   196e6:	418506b3          	sub	a3,a0,s8
   196ea:	406686b3          	sub	a3,a3,t1
   196ee:	d636                	sw	a3,44(sp)
   196f0:	d476                	sw	t4,40(sp)
   196f2:	d242                	sw	a6,36(sp)
   196f4:	d03e                	sw	a5,32(sp)
   196f6:	00c69313          	slli	t1,a3,0xc
   196fa:	04035863          	bgez	t1,1974a <__subtf3+0xbe4>
   196fe:	40e48733          	sub	a4,s1,a4
   19702:	40cb8633          	sub	a2,s7,a2
   19706:	00e4b7b3          	sltu	a5,s1,a4
   1970a:	00cbbbb3          	sltu	s7,s7,a2
   1970e:	8e1d                	sub	a2,a2,a5
   19710:	4781                	li	a5,0
   19712:	00e4f463          	bgeu	s1,a4,1971a <__subtf3+0xbb4>
   19716:	001e3793          	seqz	a5,t3
   1971a:	40bb05b3          	sub	a1,s6,a1
   1971e:	0177ebb3          	or	s7,a5,s7
   19722:	00bb3b33          	sltu	s6,s6,a1
   19726:	417585b3          	sub	a1,a1,s7
   1972a:	000b8463          	beqz	s7,19732 <__subtf3+0xbcc>
   1972e:	0018b413          	seqz	s0,a7
   19732:	40ac0533          	sub	a0,s8,a0
   19736:	01646b33          	or	s6,s0,s6
   1973a:	41650533          	sub	a0,a0,s6
   1973e:	d62a                	sw	a0,44(sp)
   19740:	d42e                	sw	a1,40(sp)
   19742:	d232                	sw	a2,36(sp)
   19744:	d03a                	sw	a4,32(sp)
   19746:	89e6                	mv	s3,s9
   19748:	b285                	j	190a8 <__subtf3+0x542>
   1974a:	0107e7b3          	or	a5,a5,a6
   1974e:	01d7e7b3          	or	a5,a5,t4
   19752:	8fd5                	or	a5,a5,a3
   19754:	94079ae3          	bnez	a5,190a8 <__subtf3+0x542>
   19758:	bf3d                	j	19696 <__subtf3+0xb30>
   1975a:	6821                	lui	a6,0x8
   1975c:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   1975e:	03041263          	bne	s0,a6,19782 <__subtf3+0xc1c>
   19762:	4c068f63          	beqz	a3,19c40 <__subtf3+0x10da>
   19766:	01255413          	srli	s0,a0,0x12
   1976a:	00144413          	xori	s0,s0,1
   1976e:	8805                	andi	s0,s0,1
   19770:	0412                	slli	s0,s0,0x4
   19772:	010a8b63          	beq	s5,a6,19788 <__subtf3+0xc22>
   19776:	ebb1                	bnez	a5,197ca <__subtf3+0xc64>
   19778:	d03a                	sw	a4,32(sp)
   1977a:	d232                	sw	a2,36(sp)
   1977c:	d42e                	sw	a1,40(sp)
   1977e:	d62a                	sw	a0,44(sp)
   19780:	b2cd                	j	19162 <__subtf3+0x5fc>
   19782:	4401                	li	s0,0
   19784:	010a9363          	bne	s5,a6,1978a <__subtf3+0xc24>
   19788:	eb9d                	bnez	a5,197be <__subtf3+0xc58>
   1978a:	f6f5                	bnez	a3,19776 <__subtf3+0xc10>
   1978c:	e3a5                	bnez	a5,197ec <__subtf3+0xc86>
   1978e:	67a1                	lui	a5,0x8
   19790:	d63e                	sw	a5,44(sp)
   19792:	d402                	sw	zero,40(sp)
   19794:	d202                	sw	zero,36(sp)
   19796:	d002                	sw	zero,32(sp)
   19798:	101c                	addi	a5,sp,32
   1979a:	0850                	addi	a2,sp,20
   1979c:	47d8                	lw	a4,12(a5)
   1979e:	4794                	lw	a3,8(a5)
   197a0:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   197a2:	070e                	slli	a4,a4,0x3
   197a4:	82f5                	srli	a3,a3,0x1d
   197a6:	8f55                	or	a4,a4,a3
   197a8:	cb98                	sw	a4,16(a5)
   197aa:	fef619e3          	bne	a2,a5,1979c <__subtf3+0xc36>
   197ae:	67a1                	lui	a5,0x8
   197b0:	4981                	li	s3,0
   197b2:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   197b4:	4441                	li	s0,16
   197b6:	f2cff06f          	j	18ee2 <__subtf3+0x37c>
   197ba:	4401                	li	s0,0
   197bc:	b7f1                	j	19788 <__subtf3+0xc22>
   197be:	00dc1813          	slli	a6,s8,0xd
   197c2:	fc0844e3          	bltz	a6,1978a <__subtf3+0xc24>
   197c6:	4441                	li	s0,16
   197c8:	c295                	beqz	a3,197ec <__subtf3+0xc86>
   197ca:	67a1                	lui	a5,0x8
   197cc:	d63e                	sw	a5,44(sp)
   197ce:	d402                	sw	zero,40(sp)
   197d0:	d202                	sw	zero,36(sp)
   197d2:	d002                	sw	zero,32(sp)
   197d4:	101c                	addi	a5,sp,32
   197d6:	0850                	addi	a2,sp,20
   197d8:	47d8                	lw	a4,12(a5)
   197da:	4794                	lw	a3,8(a5)
   197dc:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   197de:	070e                	slli	a4,a4,0x3
   197e0:	82f5                	srli	a3,a3,0x1d
   197e2:	8f55                	or	a4,a4,a3
   197e4:	cb98                	sw	a4,16(a5)
   197e6:	fef619e3          	bne	a2,a5,197d8 <__subtf3+0xc72>
   197ea:	ba5d                	j	191a0 <__subtf3+0x63a>
   197ec:	d026                	sw	s1,32(sp)
   197ee:	d25e                	sw	s7,36(sp)
   197f0:	d45a                	sw	s6,40(sp)
   197f2:	d662                	sw	s8,44(sp)
   197f4:	89e6                	mv	s3,s9
   197f6:	b2b5                	j	19162 <__subtf3+0x5fc>
   197f8:	409706b3          	sub	a3,a4,s1
   197fc:	41760e33          	sub	t3,a2,s7
   19800:	00d73eb3          	sltu	t4,a4,a3
   19804:	01c638b3          	sltu	a7,a2,t3
   19808:	41de0eb3          	sub	t4,t3,t4
   1980c:	4801                	li	a6,0
   1980e:	00d77463          	bgeu	a4,a3,19816 <__subtf3+0xcb0>
   19812:	001e3813          	seqz	a6,t3
   19816:	01186833          	or	a6,a6,a7
   1981a:	416588b3          	sub	a7,a1,s6
   1981e:	0115bf33          	sltu	t5,a1,a7
   19822:	41088fb3          	sub	t6,a7,a6
   19826:	4301                	li	t1,0
   19828:	00080463          	beqz	a6,19830 <__subtf3+0xcca>
   1982c:	0018b313          	seqz	t1,a7
   19830:	01e36333          	or	t1,t1,t5
   19834:	41850833          	sub	a6,a0,s8
   19838:	40680833          	sub	a6,a6,t1
   1983c:	d642                	sw	a6,44(sp)
   1983e:	d47e                	sw	t6,40(sp)
   19840:	d276                	sw	t4,36(sp)
   19842:	d036                	sw	a3,32(sp)
   19844:	00c81313          	slli	t1,a6,0xc
   19848:	10035163          	bgez	t1,1994a <__subtf3+0xde4>
   1984c:	40e48733          	sub	a4,s1,a4
   19850:	40cb8633          	sub	a2,s7,a2
   19854:	00e4b6b3          	sltu	a3,s1,a4
   19858:	00cbbbb3          	sltu	s7,s7,a2
   1985c:	8e15                	sub	a2,a2,a3
   1985e:	4681                	li	a3,0
   19860:	00e4f463          	bgeu	s1,a4,19868 <__subtf3+0xd02>
   19864:	001e3693          	seqz	a3,t3
   19868:	40bb05b3          	sub	a1,s6,a1
   1986c:	0176ebb3          	or	s7,a3,s7
   19870:	00bb3b33          	sltu	s6,s6,a1
   19874:	417585b3          	sub	a1,a1,s7
   19878:	000b8463          	beqz	s7,19880 <__subtf3+0xd1a>
   1987c:	0018b793          	seqz	a5,a7
   19880:	40ac0533          	sub	a0,s8,a0
   19884:	0167eb33          	or	s6,a5,s6
   19888:	41650533          	sub	a0,a0,s6
   1988c:	d62a                	sw	a0,44(sp)
   1988e:	d42e                	sw	a1,40(sp)
   19890:	d232                	sw	a2,36(sp)
   19892:	d03a                	sw	a4,32(sp)
   19894:	89e6                	mv	s3,s9
   19896:	5532                	lw	a0,44(sp)
   19898:	c169                	beqz	a0,1995a <__subtf3+0xdf4>
   1989a:	7dc000ef          	jal	1a076 <__clzsi2>
   1989e:	ff450793          	addi	a5,a0,-12
   198a2:	02000693          	li	a3,32
   198a6:	01f7f813          	andi	a6,a5,31
   198aa:	02d7c733          	div	a4,a5,a3
   198ae:	0c080763          	beqz	a6,1997c <__subtf3+0xe16>
   198b2:	02010313          	addi	t1,sp,32
   198b6:	02d7e633          	rem	a2,a5,a3
   198ba:	40c685b3          	sub	a1,a3,a2
   198be:	5671                	li	a2,-4
   198c0:	02c70633          	mul	a2,a4,a2
   198c4:	00c60693          	addi	a3,a2,12
   198c8:	969a                	add	a3,a3,t1
   198ca:	40c00633          	neg	a2,a2
   198ce:	0cd31763          	bne	t1,a3,1999c <__subtf3+0xe36>
   198d2:	5602                	lw	a2,32(sp)
   198d4:	fff70693          	addi	a3,a4,-1
   198d8:	070a                	slli	a4,a4,0x2
   198da:	04070713          	addi	a4,a4,64
   198de:	970a                	add	a4,a4,sp
   198e0:	01061633          	sll	a2,a2,a6
   198e4:	fec72023          	sw	a2,-32(a4)
   198e8:	00168713          	addi	a4,a3,1
   198ec:	070a                	slli	a4,a4,0x2
   198ee:	1014                	addi	a3,sp,32
   198f0:	4621                	li	a2,8
   198f2:	88b6                	mv	a7,a3
   198f4:	00c76863          	bltu	a4,a2,19904 <__subtf3+0xd9e>
   198f8:	0006a023          	sw	zero,0(a3)
   198fc:	0006a223          	sw	zero,4(a3)
   19900:	1761                	addi	a4,a4,-8
   19902:	1034                	addi	a3,sp,40
   19904:	4611                	li	a2,4
   19906:	00c76463          	bltu	a4,a2,1990e <__subtf3+0xda8>
   1990a:	0006a023          	sw	zero,0(a3)
   1990e:	1487c863          	blt	a5,s0,19a5e <__subtf3+0xef8>
   19912:	8f81                	sub	a5,a5,s0
   19914:	0785                	addi	a5,a5,1
   19916:	4057d713          	srai	a4,a5,0x5
   1991a:	85c6                	mv	a1,a7
   1991c:	8bfd                	andi	a5,a5,31
   1991e:	8646                	mv	a2,a7
   19920:	4301                	li	t1,0
   19922:	4681                	li	a3,0
   19924:	08e69b63          	bne	a3,a4,199ba <__subtf3+0xe54>
   19928:	468d                	li	a3,3
   1992a:	8e99                	sub	a3,a3,a4
   1992c:	00271613          	slli	a2,a4,0x2
   19930:	ebd9                	bnez	a5,199c6 <__subtf3+0xe60>
   19932:	00c58533          	add	a0,a1,a2
   19936:	4108                	lw	a0,0(a0)
   19938:	0785                	addi	a5,a5,1
   1993a:	c188                	sw	a0,0(a1)
   1993c:	0591                	addi	a1,a1,4
   1993e:	fef6dae3          	bge	a3,a5,19932 <__subtf3+0xdcc>
   19942:	4791                	li	a5,4
   19944:	40e78733          	sub	a4,a5,a4
   19948:	a87d                	j	19a06 <__subtf3+0xea0>
   1994a:	01d6e6b3          	or	a3,a3,t4
   1994e:	01f6e6b3          	or	a3,a3,t6
   19952:	0106e6b3          	or	a3,a3,a6
   19956:	f2a1                	bnez	a3,19896 <__subtf3+0xd30>
   19958:	bb3d                	j	19696 <__subtf3+0xb30>
   1995a:	5522                	lw	a0,40(sp)
   1995c:	c509                	beqz	a0,19966 <__subtf3+0xe00>
   1995e:	2f21                	jal	1a076 <__clzsi2>
   19960:	02050513          	addi	a0,a0,32
   19964:	bf2d                	j	1989e <__subtf3+0xd38>
   19966:	5512                	lw	a0,36(sp)
   19968:	c509                	beqz	a0,19972 <__subtf3+0xe0c>
   1996a:	2731                	jal	1a076 <__clzsi2>
   1996c:	04050513          	addi	a0,a0,64
   19970:	b73d                	j	1989e <__subtf3+0xd38>
   19972:	5502                	lw	a0,32(sp)
   19974:	2709                	jal	1a076 <__clzsi2>
   19976:	06050513          	addi	a0,a0,96
   1997a:	b715                	j	1989e <__subtf3+0xd38>
   1997c:	55f1                	li	a1,-4
   1997e:	02b705b3          	mul	a1,a4,a1
   19982:	1074                	addi	a3,sp,44
   19984:	460d                	li	a2,3
   19986:	00b68533          	add	a0,a3,a1
   1998a:	4108                	lw	a0,0(a0)
   1998c:	167d                	addi	a2,a2,-1
   1998e:	16f1                	addi	a3,a3,-4
   19990:	c2c8                	sw	a0,4(a3)
   19992:	fee65ae3          	bge	a2,a4,19986 <__subtf3+0xe20>
   19996:	fff70693          	addi	a3,a4,-1
   1999a:	b7b9                	j	198e8 <__subtf3+0xd82>
   1999c:	4288                	lw	a0,0(a3)
   1999e:	ffc6a883          	lw	a7,-4(a3)
   199a2:	00c68e33          	add	t3,a3,a2
   199a6:	01051533          	sll	a0,a0,a6
   199aa:	00b8d8b3          	srl	a7,a7,a1
   199ae:	01156533          	or	a0,a0,a7
   199b2:	00ae2023          	sw	a0,0(t3)
   199b6:	16f1                	addi	a3,a3,-4
   199b8:	bf19                	j	198ce <__subtf3+0xd68>
   199ba:	4208                	lw	a0,0(a2)
   199bc:	0685                	addi	a3,a3,1
   199be:	0611                	addi	a2,a2,4
   199c0:	00a36333          	or	t1,t1,a0
   199c4:	b785                	j	19924 <__subtf3+0xdbe>
   199c6:	04060593          	addi	a1,a2,64
   199ca:	958a                	add	a1,a1,sp
   199cc:	fe05a583          	lw	a1,-32(a1)
   199d0:	02000813          	li	a6,32
   199d4:	40f80833          	sub	a6,a6,a5
   199d8:	010595b3          	sll	a1,a1,a6
   199dc:	00b36333          	or	t1,t1,a1
   199e0:	4e01                	li	t3,0
   199e2:	00c885b3          	add	a1,a7,a2
   199e6:	40c00633          	neg	a2,a2
   199ea:	04de4a63          	blt	t3,a3,19a3e <__subtf3+0xed8>
   199ee:	4611                	li	a2,4
   199f0:	40e60733          	sub	a4,a2,a4
   199f4:	5632                	lw	a2,44(sp)
   199f6:	068a                	slli	a3,a3,0x2
   199f8:	04068693          	addi	a3,a3,64
   199fc:	968a                	add	a3,a3,sp
   199fe:	00f657b3          	srl	a5,a2,a5
   19a02:	fef6a023          	sw	a5,-32(a3)
   19a06:	4691                	li	a3,4
   19a08:	8e99                	sub	a3,a3,a4
   19a0a:	070a                	slli	a4,a4,0x2
   19a0c:	00e887b3          	add	a5,a7,a4
   19a10:	00269713          	slli	a4,a3,0x2
   19a14:	46a1                	li	a3,8
   19a16:	00d76863          	bltu	a4,a3,19a26 <__subtf3+0xec0>
   19a1a:	0007a023          	sw	zero,0(a5)
   19a1e:	0007a223          	sw	zero,4(a5)
   19a22:	1761                	addi	a4,a4,-8
   19a24:	07a1                	addi	a5,a5,8
   19a26:	4691                	li	a3,4
   19a28:	00d76463          	bltu	a4,a3,19a30 <__subtf3+0xeca>
   19a2c:	0007a023          	sw	zero,0(a5)
   19a30:	5702                	lw	a4,32(sp)
   19a32:	006037b3          	snez	a5,t1
   19a36:	8fd9                	or	a5,a5,a4
   19a38:	d03e                	sw	a5,32(sp)
   19a3a:	e6eff06f          	j	190a8 <__subtf3+0x542>
   19a3e:	4188                	lw	a0,0(a1)
   19a40:	0045ae83          	lw	t4,4(a1)
   19a44:	00c58f33          	add	t5,a1,a2
   19a48:	00f55533          	srl	a0,a0,a5
   19a4c:	010e9eb3          	sll	t4,t4,a6
   19a50:	01d56533          	or	a0,a0,t4
   19a54:	00af2023          	sw	a0,0(t5)
   19a58:	0e05                	addi	t3,t3,1
   19a5a:	0591                	addi	a1,a1,4
   19a5c:	b779                	j	199ea <__subtf3+0xe84>
   19a5e:	5732                	lw	a4,44(sp)
   19a60:	fff806b7          	lui	a3,0xfff80
   19a64:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19a66:	8f75                	and	a4,a4,a3
   19a68:	40f407b3          	sub	a5,s0,a5
   19a6c:	d63a                	sw	a4,44(sp)
   19a6e:	f8aff06f          	j	191f8 <__subtf3+0x692>
   19a72:	da2e                	sw	a1,52(sp)
   19a74:	d83e                	sw	a5,48(sp)
   19a76:	dc32                	sw	a2,56(sp)
   19a78:	de36                	sw	a3,60(sp)
   19a7a:	1818                	addi	a4,sp,48
   19a7c:	104c                	addi	a1,sp,36
   19a7e:	4754                	lw	a3,12(a4)
   19a80:	4710                	lw	a2,8(a4)
   19a82:	1771                	addi	a4,a4,-4
   19a84:	0686                	slli	a3,a3,0x1
   19a86:	827d                	srli	a2,a2,0x1f
   19a88:	8ed1                	or	a3,a3,a2
   19a8a:	cb14                	sw	a3,16(a4)
   19a8c:	fee599e3          	bne	a1,a4,19a7e <__subtf3+0xf18>
   19a90:	0786                	slli	a5,a5,0x1
   19a92:	0077f713          	andi	a4,a5,7
   19a96:	4401                	li	s0,0
   19a98:	cf0d                	beqz	a4,19ad2 <__subtf3+0xf6c>
   19a9a:	4709                	li	a4,2
   19a9c:	56f2                	lw	a3,60(sp)
   19a9e:	14ea0463          	beq	s4,a4,19be6 <__subtf3+0x1080>
   19aa2:	470d                	li	a4,3
   19aa4:	12ea0b63          	beq	s4,a4,19bda <__subtf3+0x1074>
   19aa8:	020a1463          	bnez	s4,19ad0 <__subtf3+0xf6a>
   19aac:	00f7f713          	andi	a4,a5,15
   19ab0:	4611                	li	a2,4
   19ab2:	00c70f63          	beq	a4,a2,19ad0 <__subtf3+0xf6a>
   19ab6:	0791                	addi	a5,a5,4
   19ab8:	0047b793          	sltiu	a5,a5,4
   19abc:	5752                	lw	a4,52(sp)
   19abe:	973e                	add	a4,a4,a5
   19ac0:	00f73733          	sltu	a4,a4,a5
   19ac4:	57e2                	lw	a5,56(sp)
   19ac6:	97ba                	add	a5,a5,a4
   19ac8:	00e7b7b3          	sltu	a5,a5,a4
   19acc:	97b6                	add	a5,a5,a3
   19ace:	de3e                	sw	a5,60(sp)
   19ad0:	4405                	li	s0,1
   19ad2:	56f2                	lw	a3,60(sp)
   19ad4:	4781                	li	a5,0
   19ad6:	82d1                	srli	a3,a3,0x14
   19ad8:	0016c693          	xori	a3,a3,1
   19adc:	8a85                	andi	a3,a3,1
   19ade:	5702                	lw	a4,32(sp)
   19ae0:	00777613          	andi	a2,a4,7
   19ae4:	c229                	beqz	a2,19b26 <__subtf3+0xfc0>
   19ae6:	4589                	li	a1,2
   19ae8:	5632                	lw	a2,44(sp)
   19aea:	10ba0863          	beq	s4,a1,19bfa <__subtf3+0x1094>
   19aee:	458d                	li	a1,3
   19af0:	0eba0e63          	beq	s4,a1,19bec <__subtf3+0x1086>
   19af4:	020a1763          	bnez	s4,19b22 <__subtf3+0xfbc>
   19af8:	00f77593          	andi	a1,a4,15
   19afc:	4511                	li	a0,4
   19afe:	02a58263          	beq	a1,a0,19b22 <__subtf3+0xfbc>
   19b02:	0711                	addi	a4,a4,4
   19b04:	d03a                	sw	a4,32(sp)
   19b06:	00473713          	sltiu	a4,a4,4
   19b0a:	5592                	lw	a1,36(sp)
   19b0c:	972e                	add	a4,a4,a1
   19b0e:	d23a                	sw	a4,36(sp)
   19b10:	00b73733          	sltu	a4,a4,a1
   19b14:	55a2                	lw	a1,40(sp)
   19b16:	972e                	add	a4,a4,a1
   19b18:	d43a                	sw	a4,40(sp)
   19b1a:	00b73733          	sltu	a4,a4,a1
   19b1e:	9732                	add	a4,a4,a2
   19b20:	d63a                	sw	a4,44(sp)
   19b22:	00146413          	ori	s0,s0,1
   19b26:	c689                	beqz	a3,19b30 <__subtf3+0xfca>
   19b28:	00147713          	andi	a4,s0,1
   19b2c:	0706                	slli	a4,a4,0x1
   19b2e:	8c59                	or	s0,s0,a4
   19b30:	5732                	lw	a4,44(sp)
   19b32:	00c71693          	slli	a3,a4,0xc
   19b36:	0006dc63          	bgez	a3,19b4e <__subtf3+0xfe8>
   19b3a:	66a1                	lui	a3,0x8
   19b3c:	0785                	addi	a5,a5,1
   19b3e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19b40:	0cd78063          	beq	a5,a3,19c00 <__subtf3+0x109a>
   19b44:	fff806b7          	lui	a3,0xfff80
   19b48:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19b4a:	8f75                	and	a4,a4,a3
   19b4c:	d63a                	sw	a4,44(sp)
   19b4e:	1018                	addi	a4,sp,32
   19b50:	106c                	addi	a1,sp,44
   19b52:	4314                	lw	a3,0(a4)
   19b54:	4350                	lw	a2,4(a4)
   19b56:	828d                	srli	a3,a3,0x3
   19b58:	0676                	slli	a2,a2,0x1d
   19b5a:	8ed1                	or	a3,a3,a2
   19b5c:	c314                	sw	a3,0(a4)
   19b5e:	0711                	addi	a4,a4,4
   19b60:	feb719e3          	bne	a4,a1,19b52 <__subtf3+0xfec>
   19b64:	56b2                	lw	a3,44(sp)
   19b66:	6621                	lui	a2,0x8
   19b68:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   19b6c:	828d                	srli	a3,a3,0x3
   19b6e:	d636                	sw	a3,44(sp)
   19b70:	00e79e63          	bne	a5,a4,19b8c <__subtf3+0x1026>
   19b74:	5592                	lw	a1,36(sp)
   19b76:	5702                	lw	a4,32(sp)
   19b78:	8f4d                	or	a4,a4,a1
   19b7a:	55a2                	lw	a1,40(sp)
   19b7c:	8f4d                	or	a4,a4,a1
   19b7e:	8f55                	or	a4,a4,a3
   19b80:	c711                	beqz	a4,19b8c <__subtf3+0x1026>
   19b82:	d632                	sw	a2,44(sp)
   19b84:	d402                	sw	zero,40(sp)
   19b86:	d202                	sw	zero,36(sp)
   19b88:	d002                	sw	zero,32(sp)
   19b8a:	4981                	li	s3,0
   19b8c:	55b2                	lw	a1,44(sp)
   19b8e:	07c6                	slli	a5,a5,0x11
   19b90:	83c5                	srli	a5,a5,0x11
   19b92:	09be                	slli	s3,s3,0xf
   19b94:	00f9e9b3          	or	s3,s3,a5
   19b98:	02b11e23          	sh	a1,60(sp)
   19b9c:	03311f23          	sh	s3,62(sp)
   19ba0:	5602                	lw	a2,32(sp)
   19ba2:	5692                	lw	a3,36(sp)
   19ba4:	5722                	lw	a4,40(sp)
   19ba6:	57f2                	lw	a5,60(sp)
   19ba8:	c019                	beqz	s0,19bae <__subtf3+0x1048>
   19baa:	00142073          	csrs	fflags,s0
   19bae:	50b6                	lw	ra,108(sp)
   19bb0:	5426                	lw	s0,104(sp)
   19bb2:	00c92023          	sw	a2,0(s2)
   19bb6:	00d92223          	sw	a3,4(s2)
   19bba:	00e92423          	sw	a4,8(s2)
   19bbe:	00f92623          	sw	a5,12(s2)
   19bc2:	5496                	lw	s1,100(sp)
   19bc4:	49f6                	lw	s3,92(sp)
   19bc6:	4a66                	lw	s4,88(sp)
   19bc8:	4ad6                	lw	s5,84(sp)
   19bca:	4b46                	lw	s6,80(sp)
   19bcc:	4bb6                	lw	s7,76(sp)
   19bce:	4c26                	lw	s8,72(sp)
   19bd0:	4c96                	lw	s9,68(sp)
   19bd2:	854a                	mv	a0,s2
   19bd4:	5906                	lw	s2,96(sp)
   19bd6:	6165                	addi	sp,sp,112
   19bd8:	8082                	ret
   19bda:	ee099be3          	bnez	s3,19ad0 <__subtf3+0xf6a>
   19bde:	07a1                	addi	a5,a5,8
   19be0:	0087b793          	sltiu	a5,a5,8
   19be4:	bde1                	j	19abc <__subtf3+0xf56>
   19be6:	ee0985e3          	beqz	s3,19ad0 <__subtf3+0xf6a>
   19bea:	bfd5                	j	19bde <__subtf3+0x1078>
   19bec:	f2099be3          	bnez	s3,19b22 <__subtf3+0xfbc>
   19bf0:	0721                	addi	a4,a4,8
   19bf2:	d03a                	sw	a4,32(sp)
   19bf4:	00873713          	sltiu	a4,a4,8
   19bf8:	bf09                	j	19b0a <__subtf3+0xfa4>
   19bfa:	f20984e3          	beqz	s3,19b22 <__subtf3+0xfbc>
   19bfe:	bfcd                	j	19bf0 <__subtf3+0x108a>
   19c00:	4701                	li	a4,0
   19c02:	020a0063          	beqz	s4,19c22 <__subtf3+0x10bc>
   19c06:	468d                	li	a3,3
   19c08:	00da1863          	bne	s4,a3,19c18 <__subtf3+0x10b2>
   19c0c:	00098b63          	beqz	s3,19c22 <__subtf3+0x10bc>
   19c10:	67a1                	lui	a5,0x8
   19c12:	577d                	li	a4,-1
   19c14:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   19c16:	a031                	j	19c22 <__subtf3+0x10bc>
   19c18:	4689                	li	a3,2
   19c1a:	feda1be3          	bne	s4,a3,19c10 <__subtf3+0x10aa>
   19c1e:	fe0989e3          	beqz	s3,19c10 <__subtf3+0x10aa>
   19c22:	d63a                	sw	a4,44(sp)
   19c24:	d43a                	sw	a4,40(sp)
   19c26:	d23a                	sw	a4,36(sp)
   19c28:	d03a                	sw	a4,32(sp)
   19c2a:	00546413          	ori	s0,s0,5
   19c2e:	b705                	j	19b4e <__subtf3+0xfe8>
   19c30:	d636                	sw	a3,44(sp)
   19c32:	c76ff06f          	j	190a8 <__subtf3+0x542>
   19c36:	d68a8763          	beq	s5,s0,191a4 <__subtf3+0x63e>
   19c3a:	4401                	li	s0,0
   19c3c:	d16ff06f          	j	19152 <__subtf3+0x5ec>
   19c40:	b68a8de3          	beq	s5,s0,197ba <__subtf3+0xc54>
   19c44:	4401                	li	s0,0
   19c46:	b699                	j	1978c <__subtf3+0xc26>

00019c48 <__unordtf2>:
   19c48:	4114                	lw	a3,0(a0)
   19c4a:	00452f03          	lw	t5,4(a0)
   19c4e:	00852e83          	lw	t4,8(a0)
   19c52:	4550                	lw	a2,12(a0)
   19c54:	419c                	lw	a5,0(a1)
   19c56:	0045ae03          	lw	t3,4(a1)
   19c5a:	0085a303          	lw	t1,8(a1)
   19c5e:	45d8                	lw	a4,12(a1)
   19c60:	1141                	addi	sp,sp,-16
   19c62:	002025f3          	frrm	a1
   19c66:	6521                	lui	a0,0x8
   19c68:	01061813          	slli	a6,a2,0x10
   19c6c:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19c6e:	8241                	srli	a2,a2,0x10
   19c70:	01071593          	slli	a1,a4,0x10
   19c74:	8e69                	and	a2,a2,a0
   19c76:	8341                	srli	a4,a4,0x10
   19c78:	01085813          	srli	a6,a6,0x10
   19c7c:	81c1                	srli	a1,a1,0x10
   19c7e:	8f69                	and	a4,a4,a0
   19c80:	00a61963          	bne	a2,a0,19c92 <__unordtf2+0x4a>
   19c84:	01e6e533          	or	a0,a3,t5
   19c88:	01d56533          	or	a0,a0,t4
   19c8c:	01056533          	or	a0,a0,a6
   19c90:	e51d                	bnez	a0,19cbe <__unordtf2+0x76>
   19c92:	68a1                	lui	a7,0x8
   19c94:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   19c96:	4501                	li	a0,0
   19c98:	05171c63          	bne	a4,a7,19cf0 <__unordtf2+0xa8>
   19c9c:	01c7e8b3          	or	a7,a5,t3
   19ca0:	0068e8b3          	or	a7,a7,t1
   19ca4:	00b8e8b3          	or	a7,a7,a1
   19ca8:	04088463          	beqz	a7,19cf0 <__unordtf2+0xa8>
   19cac:	02e61a63          	bne	a2,a4,19ce0 <__unordtf2+0x98>
   19cb0:	01e6e6b3          	or	a3,a3,t5
   19cb4:	01d6e6b3          	or	a3,a3,t4
   19cb8:	0106e6b3          	or	a3,a3,a6
   19cbc:	ca99                	beqz	a3,19cd2 <__unordtf2+0x8a>
   19cbe:	0842                	slli	a6,a6,0x10
   19cc0:	41085813          	srai	a6,a6,0x10
   19cc4:	02085363          	bgez	a6,19cea <__unordtf2+0xa2>
   19cc8:	66a1                	lui	a3,0x8
   19cca:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19ccc:	4505                	li	a0,1
   19cce:	02d71163          	bne	a4,a3,19cf0 <__unordtf2+0xa8>
   19cd2:	01c7e7b3          	or	a5,a5,t3
   19cd6:	0067e7b3          	or	a5,a5,t1
   19cda:	8fcd                	or	a5,a5,a1
   19cdc:	4505                	li	a0,1
   19cde:	cb89                	beqz	a5,19cf0 <__unordtf2+0xa8>
   19ce0:	05c2                	slli	a1,a1,0x10
   19ce2:	85c1                	srai	a1,a1,0x10
   19ce4:	4505                	li	a0,1
   19ce6:	0005c563          	bltz	a1,19cf0 <__unordtf2+0xa8>
   19cea:	00186073          	csrsi	fflags,16
   19cee:	4505                	li	a0,1
   19cf0:	0141                	addi	sp,sp,16
   19cf2:	8082                	ret

00019cf4 <__fixtfsi>:
   19cf4:	411c                	lw	a5,0(a0)
   19cf6:	00452803          	lw	a6,4(a0)
   19cfa:	4518                	lw	a4,8(a0)
   19cfc:	4550                	lw	a2,12(a0)
   19cfe:	1101                	addi	sp,sp,-32
   19d00:	002026f3          	frrm	a3
   19d04:	01061693          	slli	a3,a2,0x10
   19d08:	00161593          	slli	a1,a2,0x1
   19d0c:	c632                	sw	a2,12(sp)
   19d0e:	01f65893          	srli	a7,a2,0x1f
   19d12:	6611                	lui	a2,0x4
   19d14:	c03e                	sw	a5,0(sp)
   19d16:	c242                	sw	a6,4(sp)
   19d18:	c43a                	sw	a4,8(sp)
   19d1a:	c83e                	sw	a5,16(sp)
   19d1c:	ca42                	sw	a6,20(sp)
   19d1e:	cc3a                	sw	a4,24(sp)
   19d20:	81c5                	srli	a1,a1,0x11
   19d22:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   19d24:	82c1                	srli	a3,a3,0x10
   19d26:	00b64a63          	blt	a2,a1,19d3a <__fixtfsi+0x46>
   19d2a:	e9f9                	bnez	a1,19e00 <__fixtfsi+0x10c>
   19d2c:	0107e533          	or	a0,a5,a6
   19d30:	8d59                	or	a0,a0,a4
   19d32:	8d55                	or	a0,a0,a3
   19d34:	e571                	bnez	a0,19e00 <__fixtfsi+0x10c>
   19d36:	6105                	addi	sp,sp,32
   19d38:	8082                	ret
   19d3a:	6511                	lui	a0,0x4
   19d3c:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   19d3e:	8646                	mv	a2,a7
   19d40:	02b55763          	bge	a0,a1,19d6e <__fixtfsi+0x7a>
   19d44:	0c088163          	beqz	a7,19e06 <__fixtfsi+0x112>
   19d48:	6511                	lui	a0,0x4
   19d4a:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   19d4c:	0ca59263          	bne	a1,a0,19e10 <__fixtfsi+0x11c>
   19d50:	01175593          	srli	a1,a4,0x11
   19d54:	06be                	slli	a3,a3,0xf
   19d56:	8ecd                	or	a3,a3,a1
   19d58:	eec5                	bnez	a3,19e10 <__fixtfsi+0x11c>
   19d5a:	0107e7b3          	or	a5,a5,a6
   19d5e:	073e                	slli	a4,a4,0xf
   19d60:	8f5d                	or	a4,a4,a5
   19d62:	80000537          	lui	a0,0x80000
   19d66:	db61                	beqz	a4,19d36 <__fixtfsi+0x42>
   19d68:	00162073          	csrs	fflags,a2
   19d6c:	b7e9                	j	19d36 <__fixtfsi+0x42>
   19d6e:	67c1                	lui	a5,0x10
   19d70:	8fd5                	or	a5,a5,a3
   19d72:	6691                	lui	a3,0x4
   19d74:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   19d78:	8e8d                	sub	a3,a3,a1
   19d7a:	4056d513          	srai	a0,a3,0x5
   19d7e:	ce3e                	sw	a5,28(sp)
   19d80:	8afd                	andi	a3,a3,31
   19d82:	080c                	addi	a1,sp,16
   19d84:	4801                	li	a6,0
   19d86:	4601                	li	a2,0
   19d88:	0005a303          	lw	t1,0(a1)
   19d8c:	0605                	addi	a2,a2,1
   19d8e:	0591                	addi	a1,a1,4
   19d90:	00686833          	or	a6,a6,t1
   19d94:	fec51ae3          	bne	a0,a2,19d88 <__fixtfsi+0x94>
   19d98:	00251613          	slli	a2,a0,0x2
   19d9c:	e28d                	bnez	a3,19dbe <__fixtfsi+0xca>
   19d9e:	02060793          	addi	a5,a2,32
   19da2:	00278633          	add	a2,a5,sp
   19da6:	ff062783          	lw	a5,-16(a2)
   19daa:	c83e                	sw	a5,16(sp)
   19dac:	4542                	lw	a0,16(sp)
   19dae:	00088463          	beqz	a7,19db6 <__fixtfsi+0xc2>
   19db2:	40a00533          	neg	a0,a0
   19db6:	4605                	li	a2,1
   19db8:	fa0818e3          	bnez	a6,19d68 <__fixtfsi+0x74>
   19dbc:	bfad                	j	19d36 <__fixtfsi+0x42>
   19dbe:	02060613          	addi	a2,a2,32
   19dc2:	960a                	add	a2,a2,sp
   19dc4:	ff062603          	lw	a2,-16(a2)
   19dc8:	02000593          	li	a1,32
   19dcc:	8d95                	sub	a1,a1,a3
   19dce:	00b61633          	sll	a2,a2,a1
   19dd2:	4309                	li	t1,2
   19dd4:	00c86833          	or	a6,a6,a2
   19dd8:	4601                	li	a2,0
   19dda:	00651963          	bne	a0,t1,19dec <__fixtfsi+0xf8>
   19dde:	00d75733          	srl	a4,a4,a3
   19de2:	00b795b3          	sll	a1,a5,a1
   19de6:	8f4d                	or	a4,a4,a1
   19de8:	c83a                	sw	a4,16(sp)
   19dea:	4605                	li	a2,1
   19dec:	060a                	slli	a2,a2,0x2
   19dee:	02060713          	addi	a4,a2,32
   19df2:	00270633          	add	a2,a4,sp
   19df6:	00d7d7b3          	srl	a5,a5,a3
   19dfa:	fef62823          	sw	a5,-16(a2)
   19dfe:	b77d                	j	19dac <__fixtfsi+0xb8>
   19e00:	4605                	li	a2,1
   19e02:	4501                	li	a0,0
   19e04:	b795                	j	19d68 <__fixtfsi+0x74>
   19e06:	80000537          	lui	a0,0x80000
   19e0a:	4641                	li	a2,16
   19e0c:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   19e0e:	bfa9                	j	19d68 <__fixtfsi+0x74>
   19e10:	4641                	li	a2,16
   19e12:	80000537          	lui	a0,0x80000
   19e16:	bf89                	j	19d68 <__fixtfsi+0x74>

00019e18 <__floatsitf>:
   19e18:	7179                	addi	sp,sp,-48
   19e1a:	d226                	sw	s1,36(sp)
   19e1c:	d606                	sw	ra,44(sp)
   19e1e:	d422                	sw	s0,40(sp)
   19e20:	d04a                	sw	s2,32(sp)
   19e22:	84aa                	mv	s1,a0
   19e24:	cdcd                	beqz	a1,19ede <__floatsitf+0xc6>
   19e26:	41f5d793          	srai	a5,a1,0x1f
   19e2a:	00b7c433          	xor	s0,a5,a1
   19e2e:	8c1d                	sub	s0,s0,a5
   19e30:	8522                	mv	a0,s0
   19e32:	01f5d913          	srli	s2,a1,0x1f
   19e36:	2481                	jal	1a076 <__clzsi2>
   19e38:	6711                	lui	a4,0x4
   19e3a:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   19e3c:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe45f5>
   19e40:	40a70633          	sub	a2,a4,a0
   19e44:	c822                	sw	s0,16(sp)
   19e46:	4057d713          	srai	a4,a5,0x5
   19e4a:	ca02                	sw	zero,20(sp)
   19e4c:	cc02                	sw	zero,24(sp)
   19e4e:	ce02                	sw	zero,28(sp)
   19e50:	8bfd                	andi	a5,a5,31
   19e52:	c78d                	beqz	a5,19e7c <__floatsitf+0x64>
   19e54:	4689                	li	a3,2
   19e56:	08d71263          	bne	a4,a3,19eda <__floatsitf+0xc2>
   19e5a:	02000693          	li	a3,32
   19e5e:	8e9d                	sub	a3,a3,a5
   19e60:	00d456b3          	srl	a3,s0,a3
   19e64:	ce36                	sw	a3,28(sp)
   19e66:	fff70693          	addi	a3,a4,-1
   19e6a:	070a                	slli	a4,a4,0x2
   19e6c:	02070713          	addi	a4,a4,32
   19e70:	970a                	add	a4,a4,sp
   19e72:	00f41433          	sll	s0,s0,a5
   19e76:	fe872823          	sw	s0,-16(a4)
   19e7a:	a005                	j	19e9a <__floatsitf+0x82>
   19e7c:	478d                	li	a5,3
   19e7e:	8f99                	sub	a5,a5,a4
   19e80:	078a                	slli	a5,a5,0x2
   19e82:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   19e86:	978a                	add	a5,a5,sp
   19e88:	ff07a783          	lw	a5,-16(a5)
   19e8c:	4689                	li	a3,2
   19e8e:	ce3e                	sw	a5,28(sp)
   19e90:	4789                	li	a5,2
   19e92:	00f71463          	bne	a4,a5,19e9a <__floatsitf+0x82>
   19e96:	cc22                	sw	s0,24(sp)
   19e98:	4685                	li	a3,1
   19e9a:	068a                	slli	a3,a3,0x2
   19e9c:	c802                	sw	zero,16(sp)
   19e9e:	ca02                	sw	zero,20(sp)
   19ea0:	16f1                	addi	a3,a3,-4
   19ea2:	4791                	li	a5,4
   19ea4:	00f6e363          	bltu	a3,a5,19eaa <__floatsitf+0x92>
   19ea8:	cc02                	sw	zero,24(sp)
   19eaa:	85ca                	mv	a1,s2
   19eac:	47f2                	lw	a5,28(sp)
   19eae:	00f59413          	slli	s0,a1,0xf
   19eb2:	8c51                	or	s0,s0,a2
   19eb4:	00811723          	sh	s0,14(sp)
   19eb8:	00f11623          	sh	a5,12(sp)
   19ebc:	4542                	lw	a0,16(sp)
   19ebe:	46d2                	lw	a3,20(sp)
   19ec0:	4762                	lw	a4,24(sp)
   19ec2:	47b2                	lw	a5,12(sp)
   19ec4:	50b2                	lw	ra,44(sp)
   19ec6:	5422                	lw	s0,40(sp)
   19ec8:	c088                	sw	a0,0(s1)
   19eca:	c0d4                	sw	a3,4(s1)
   19ecc:	c498                	sw	a4,8(s1)
   19ece:	c4dc                	sw	a5,12(s1)
   19ed0:	5902                	lw	s2,32(sp)
   19ed2:	8526                	mv	a0,s1
   19ed4:	5492                	lw	s1,36(sp)
   19ed6:	6145                	addi	sp,sp,48
   19ed8:	8082                	ret
   19eda:	470d                	li	a4,3
   19edc:	b769                	j	19e66 <__floatsitf+0x4e>
   19ede:	ce02                	sw	zero,28(sp)
   19ee0:	cc02                	sw	zero,24(sp)
   19ee2:	ca02                	sw	zero,20(sp)
   19ee4:	c802                	sw	zero,16(sp)
   19ee6:	4601                	li	a2,0
   19ee8:	b7d1                	j	19eac <__floatsitf+0x94>

00019eea <__extenddftf2>:
   19eea:	715d                	addi	sp,sp,-80
   19eec:	a42a                	fsd	fa0,8(sp)
   19eee:	c2a6                	sw	s1,68(sp)
   19ef0:	c0ca                	sw	s2,64(sp)
   19ef2:	de4e                	sw	s3,60(sp)
   19ef4:	4922                	lw	s2,8(sp)
   19ef6:	44b2                	lw	s1,12(sp)
   19ef8:	c686                	sw	ra,76(sp)
   19efa:	c4a2                	sw	s0,72(sp)
   19efc:	89aa                	mv	s3,a0
   19efe:	002027f3          	frrm	a5
   19f02:	0144d413          	srli	s0,s1,0x14
   19f06:	00c49793          	slli	a5,s1,0xc
   19f0a:	7ff47413          	andi	s0,s0,2047
   19f0e:	83b1                	srli	a5,a5,0xc
   19f10:	00140713          	addi	a4,s0,1
   19f14:	d04a                	sw	s2,32(sp)
   19f16:	d23e                	sw	a5,36(sp)
   19f18:	d602                	sw	zero,44(sp)
   19f1a:	d402                	sw	zero,40(sp)
   19f1c:	7fe77713          	andi	a4,a4,2046
   19f20:	80fd                	srli	s1,s1,0x1f
   19f22:	cf39                	beqz	a4,19f80 <__extenddftf2+0x96>
   19f24:	0047d693          	srli	a3,a5,0x4
   19f28:	6711                	lui	a4,0x4
   19f2a:	d636                	sw	a3,44(sp)
   19f2c:	07f2                	slli	a5,a5,0x1c
   19f2e:	00495693          	srli	a3,s2,0x4
   19f32:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   19f36:	8fd5                	or	a5,a5,a3
   19f38:	0972                	slli	s2,s2,0x1c
   19f3a:	9722                	add	a4,a4,s0
   19f3c:	d43e                	sw	a5,40(sp)
   19f3e:	d24a                	sw	s2,36(sp)
   19f40:	d002                	sw	zero,32(sp)
   19f42:	4401                	li	s0,0
   19f44:	57b2                	lw	a5,44(sp)
   19f46:	04be                	slli	s1,s1,0xf
   19f48:	8cd9                	or	s1,s1,a4
   19f4a:	00f11e23          	sh	a5,28(sp)
   19f4e:	00911f23          	sh	s1,30(sp)
   19f52:	5582                	lw	a1,32(sp)
   19f54:	5612                	lw	a2,36(sp)
   19f56:	56a2                	lw	a3,40(sp)
   19f58:	47f2                	lw	a5,28(sp)
   19f5a:	c019                	beqz	s0,19f60 <__extenddftf2+0x76>
   19f5c:	00186073          	csrsi	fflags,16
   19f60:	40b6                	lw	ra,76(sp)
   19f62:	4426                	lw	s0,72(sp)
   19f64:	00b9a023          	sw	a1,0(s3)
   19f68:	00c9a223          	sw	a2,4(s3)
   19f6c:	00d9a423          	sw	a3,8(s3)
   19f70:	00f9a623          	sw	a5,12(s3)
   19f74:	4496                	lw	s1,68(sp)
   19f76:	4906                	lw	s2,64(sp)
   19f78:	854e                	mv	a0,s3
   19f7a:	59f2                	lw	s3,60(sp)
   19f7c:	6161                	addi	sp,sp,80
   19f7e:	8082                	ret
   19f80:	0127e533          	or	a0,a5,s2
   19f84:	e069                	bnez	s0,1a046 <__extenddftf2+0x15c>
   19f86:	4701                	li	a4,0
   19f88:	dd55                	beqz	a0,19f44 <__extenddftf2+0x5a>
   19f8a:	c7a9                	beqz	a5,19fd4 <__extenddftf2+0xea>
   19f8c:	853e                	mv	a0,a5
   19f8e:	20e5                	jal	1a076 <__clzsi2>
   19f90:	03150693          	addi	a3,a0,49
   19f94:	4056d793          	srai	a5,a3,0x5
   19f98:	8afd                	andi	a3,a3,31
   19f9a:	c2a9                	beqz	a3,19fdc <__extenddftf2+0xf2>
   19f9c:	5671                	li	a2,-4
   19f9e:	02c78633          	mul	a2,a5,a2
   19fa2:	02000813          	li	a6,32
   19fa6:	02010313          	addi	t1,sp,32
   19faa:	40d80833          	sub	a6,a6,a3
   19fae:	00c60713          	addi	a4,a2,12
   19fb2:	971a                	add	a4,a4,t1
   19fb4:	40c00633          	neg	a2,a2
   19fb8:	06e31863          	bne	t1,a4,1a028 <__extenddftf2+0x13e>
   19fbc:	fff78713          	addi	a4,a5,-1
   19fc0:	078a                	slli	a5,a5,0x2
   19fc2:	02078793          	addi	a5,a5,32
   19fc6:	0810                	addi	a2,sp,16
   19fc8:	97b2                	add	a5,a5,a2
   19fca:	00d916b3          	sll	a3,s2,a3
   19fce:	fed7a823          	sw	a3,-16(a5)
   19fd2:	a025                	j	19ffa <__extenddftf2+0x110>
   19fd4:	204d                	jal	1a076 <__clzsi2>
   19fd6:	02050513          	addi	a0,a0,32
   19fda:	bf5d                	j	19f90 <__extenddftf2+0xa6>
   19fdc:	5671                	li	a2,-4
   19fde:	02c78633          	mul	a2,a5,a2
   19fe2:	1078                	addi	a4,sp,44
   19fe4:	468d                	li	a3,3
   19fe6:	00c705b3          	add	a1,a4,a2
   19fea:	418c                	lw	a1,0(a1)
   19fec:	16fd                	addi	a3,a3,-1
   19fee:	1771                	addi	a4,a4,-4
   19ff0:	c34c                	sw	a1,4(a4)
   19ff2:	fef6dae3          	bge	a3,a5,19fe6 <__extenddftf2+0xfc>
   19ff6:	fff78713          	addi	a4,a5,-1
   19ffa:	00170793          	addi	a5,a4,1
   19ffe:	078a                	slli	a5,a5,0x2
   1a000:	46a1                	li	a3,8
   1a002:	1018                	addi	a4,sp,32
   1a004:	00d7e863          	bltu	a5,a3,1a014 <__extenddftf2+0x12a>
   1a008:	00072023          	sw	zero,0(a4)
   1a00c:	00072223          	sw	zero,4(a4)
   1a010:	17e1                	addi	a5,a5,-8
   1a012:	1038                	addi	a4,sp,40
   1a014:	4691                	li	a3,4
   1a016:	00d7e463          	bltu	a5,a3,1a01e <__extenddftf2+0x134>
   1a01a:	00072023          	sw	zero,0(a4)
   1a01e:	6711                	lui	a4,0x4
   1a020:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1a024:	8f09                	sub	a4,a4,a0
   1a026:	bf39                	j	19f44 <__extenddftf2+0x5a>
   1a028:	430c                	lw	a1,0(a4)
   1a02a:	ffc72883          	lw	a7,-4(a4)
   1a02e:	00c70e33          	add	t3,a4,a2
   1a032:	00d595b3          	sll	a1,a1,a3
   1a036:	0108d8b3          	srl	a7,a7,a6
   1a03a:	0115e5b3          	or	a1,a1,a7
   1a03e:	00be2023          	sw	a1,0(t3)
   1a042:	1771                	addi	a4,a4,-4
   1a044:	bf95                	j	19fb8 <__extenddftf2+0xce>
   1a046:	c50d                	beqz	a0,1a070 <__extenddftf2+0x186>
   1a048:	01c79713          	slli	a4,a5,0x1c
   1a04c:	00495693          	srli	a3,s2,0x4
   1a050:	8f55                	or	a4,a4,a3
   1a052:	00080437          	lui	s0,0x80
   1a056:	0087b433          	sltu	s0,a5,s0
   1a05a:	d43a                	sw	a4,40(sp)
   1a05c:	8391                	srli	a5,a5,0x4
   1a05e:	6721                	lui	a4,0x8
   1a060:	0972                	slli	s2,s2,0x1c
   1a062:	8fd9                	or	a5,a5,a4
   1a064:	0412                	slli	s0,s0,0x4
   1a066:	d24a                	sw	s2,36(sp)
   1a068:	d002                	sw	zero,32(sp)
   1a06a:	d63e                	sw	a5,44(sp)
   1a06c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a06e:	bdd9                	j	19f44 <__extenddftf2+0x5a>
   1a070:	4401                	li	s0,0
   1a072:	6721                	lui	a4,0x8
   1a074:	bfe5                	j	1a06c <__extenddftf2+0x182>

0001a076 <__clzsi2>:
   1a076:	67c1                	lui	a5,0x10
   1a078:	02f57563          	bgeu	a0,a5,1a0a2 <__clzsi2+0x2c>
   1a07c:	10053793          	sltiu	a5,a0,256
   1a080:	0017b793          	seqz	a5,a5
   1a084:	078e                	slli	a5,a5,0x3
   1a086:	676d                	lui	a4,0x1b
   1a088:	02000693          	li	a3,32
   1a08c:	8e9d                	sub	a3,a3,a5
   1a08e:	00f55533          	srl	a0,a0,a5
   1a092:	9b870793          	addi	a5,a4,-1608 # 1a9b8 <__clz_tab>
   1a096:	97aa                	add	a5,a5,a0
   1a098:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1a09c:	40a68533          	sub	a0,a3,a0
   1a0a0:	8082                	ret
   1a0a2:	01000737          	lui	a4,0x1000
   1a0a6:	47e1                	li	a5,24
   1a0a8:	fce57fe3          	bgeu	a0,a4,1a086 <__clzsi2+0x10>
   1a0ac:	47c1                	li	a5,16
   1a0ae:	bfe1                	j	1a086 <__clzsi2+0x10>
