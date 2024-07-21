
sim_O2/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	577000ef          	jal	10e14 <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	213070ef          	jal	17abe <_exit>

000100b0 <main>:
   100b0:	1141                	addi	sp,sp,-16
   100b2:	c606                	sw	ra,12(sp)
   100b4:	286d                	jal	1016e <sha256_test>
   100b6:	cd09                	beqz	a0,100d0 <main+0x20>
   100b8:	65e9                	lui	a1,0x1a
   100ba:	1c058593          	addi	a1,a1,448 # 1a1c0 <__clzsi2+0xa0>
   100be:	6569                	lui	a0,0x1a
   100c0:	1d450513          	addi	a0,a0,468 # 1a1d4 <__clzsi2+0xb4>
   100c4:	11d000ef          	jal	109e0 <printf>
   100c8:	40b2                	lw	ra,12(sp)
   100ca:	4501                	li	a0,0
   100cc:	0141                	addi	sp,sp,16
   100ce:	8082                	ret
   100d0:	65e9                	lui	a1,0x1a
   100d2:	1cc58593          	addi	a1,a1,460 # 1a1cc <__clzsi2+0xac>
   100d6:	b7e5                	j	100be <main+0xe>

000100d8 <register_fini>:
   100d8:	00000793          	li	a5,0
   100dc:	c791                	beqz	a5,100e8 <register_fini+0x10>
   100de:	6551                	lui	a0,0x14
   100e0:	c3050513          	addi	a0,a0,-976 # 13c30 <__libc_fini_array>
   100e4:	5ff0006f          	j	10ee2 <atexit>
   100e8:	8082                	ret

000100ea <_start>:
   100ea:	0000b197          	auipc	gp,0xb
   100ee:	72618193          	addi	gp,gp,1830 # 1b810 <__global_pointer$>
   100f2:	f2018513          	addi	a0,gp,-224 # 1b730 <__stdio_exit_handler>
   100f6:	24c18613          	addi	a2,gp,588 # 1ba5c <__BSS_END__>
   100fa:	8e09                	sub	a2,a2,a0
   100fc:	4581                	li	a1,0
   100fe:	40b000ef          	jal	10d08 <memset>
   10102:	00001517          	auipc	a0,0x1
   10106:	de050513          	addi	a0,a0,-544 # 10ee2 <atexit>
   1010a:	c519                	beqz	a0,10118 <_start+0x2e>
   1010c:	00004517          	auipc	a0,0x4
   10110:	b2450513          	addi	a0,a0,-1244 # 13c30 <__libc_fini_array>
   10114:	5cf000ef          	jal	10ee2 <atexit>
   10118:	387000ef          	jal	10c9e <__libc_init_array>
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
   1016e:	00636737          	lui	a4,0x636
   10172:	67e9                	lui	a5,0x1a
   10174:	7169                	addi	sp,sp,-304
   10176:	26170713          	addi	a4,a4,609 # 636261 <__BSS_END__+0x61a805>
   1017a:	16078793          	addi	a5,a5,352 # 1a160 <__clzsi2+0x40>
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
   101b6:	66e9                	lui	a3,0x1a
   101b8:	6769                	lui	a4,0x1a
   101ba:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0x238>
   101be:	19c70713          	addi	a4,a4,412 # 1a19c <__clzsi2+0x7c>
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
   10230:	2c71                	jal	104cc <sha256_init>
   10232:	850a                	mv	a0,sp
   10234:	37d000ef          	jal	10db0 <strlen>
   10238:	862a                	mv	a2,a0
   1023a:	858a                	mv	a1,sp
   1023c:	1108                	addi	a0,sp,160
   1023e:	2cdd                	jal	10534 <sha256_update>
   10240:	00cc                	addi	a1,sp,68
   10242:	1108                	addi	a0,sp,160
   10244:	2ea9                	jal	1059e <sha256_final>
   10246:	02000613          	li	a2,32
   1024a:	00cc                	addi	a1,sp,68
   1024c:	0048                	addi	a0,sp,4
   1024e:	097000ef          	jal	10ae4 <memcmp>
   10252:	842a                	mv	s0,a0
   10254:	1108                	addi	a0,sp,160
   10256:	2c9d                	jal	104cc <sha256_init>
   10258:	10c8                	addi	a0,sp,100
   1025a:	357000ef          	jal	10db0 <strlen>
   1025e:	862a                	mv	a2,a0
   10260:	10cc                	addi	a1,sp,100
   10262:	1108                	addi	a0,sp,160
   10264:	2cc1                	jal	10534 <sha256_update>
   10266:	1108                	addi	a0,sp,160
   10268:	00cc                	addi	a1,sp,68
   1026a:	2e15                	jal	1059e <sha256_final>
   1026c:	4501                	li	a0,0
   1026e:	e809                	bnez	s0,10280 <sha256_test+0x112>
   10270:	02000613          	li	a2,32
   10274:	00cc                	addi	a1,sp,68
   10276:	1048                	addi	a0,sp,36
   10278:	06d000ef          	jal	10ae4 <memcmp>
   1027c:	00153513          	seqz	a0,a0
   10280:	12c12083          	lw	ra,300(sp)
   10284:	12812403          	lw	s0,296(sp)
   10288:	12412483          	lw	s1,292(sp)
   1028c:	12012903          	lw	s2,288(sp)
   10290:	11c12983          	lw	s3,284(sp)
   10294:	6155                	addi	sp,sp,304
   10296:	8082                	ret

00010298 <sha256_transform>:
   10298:	714d                	addi	sp,sp,-336
   1029a:	14912423          	sw	s1,328(sp)
   1029e:	1004                	addi	s1,sp,32
   102a0:	13612a23          	sw	s6,308(sp)
   102a4:	14812623          	sw	s0,332(sp)
   102a8:	15212223          	sw	s2,324(sp)
   102ac:	15312023          	sw	s3,320(sp)
   102b0:	13412e23          	sw	s4,316(sp)
   102b4:	13512c23          	sw	s5,312(sp)
   102b8:	13712823          	sw	s7,304(sp)
   102bc:	13812623          	sw	s8,300(sp)
   102c0:	13912423          	sw	s9,296(sp)
   102c4:	13a12223          	sw	s10,292(sp)
   102c8:	13b12023          	sw	s11,288(sp)
   102cc:	8b2a                	mv	s6,a0
   102ce:	06010813          	addi	a6,sp,96
   102d2:	8726                	mv	a4,s1
   102d4:	0005c783          	lbu	a5,0(a1)
   102d8:	0015c603          	lbu	a2,1(a1)
   102dc:	0035c503          	lbu	a0,3(a1)
   102e0:	0025c683          	lbu	a3,2(a1)
   102e4:	07e2                	slli	a5,a5,0x18
   102e6:	0642                	slli	a2,a2,0x10
   102e8:	8fd1                	or	a5,a5,a2
   102ea:	8fc9                	or	a5,a5,a0
   102ec:	06a2                	slli	a3,a3,0x8
   102ee:	8fd5                	or	a5,a5,a3
   102f0:	c31c                	sw	a5,0(a4)
   102f2:	0711                	addi	a4,a4,4
   102f4:	0591                	addi	a1,a1,4
   102f6:	fd071fe3          	bne	a4,a6,102d4 <sha256_transform+0x3c>
   102fa:	4796                	lw	a5,68(sp)
   102fc:	4fa6                	lw	t6,72(sp)
   102fe:	4f36                	lw	t5,76(sp)
   10300:	4ec6                	lw	t4,80(sp)
   10302:	4e56                	lw	t3,84(sp)
   10304:	45e6                	lw	a1,88(sp)
   10306:	4376                	lw	t1,92(sp)
   10308:	5602                	lw	a2,32(sp)
   1030a:	1048                	addi	a0,sp,36
   1030c:	0c448393          	addi	t2,s1,196
   10310:	88be                	mv	a7,a5
   10312:	82b2                	mv	t0,a2
   10314:	4110                	lw	a2,0(a0)
   10316:	00f59793          	slli	a5,a1,0xf
   1031a:	0115da13          	srli	s4,a1,0x11
   1031e:	00d59813          	slli	a6,a1,0xd
   10322:	0135d993          	srli	s3,a1,0x13
   10326:	01265413          	srli	s0,a2,0x12
   1032a:	00765713          	srli	a4,a2,0x7
   1032e:	01961913          	slli	s2,a2,0x19
   10332:	00e61693          	slli	a3,a2,0xe
   10336:	8ec1                	or	a3,a3,s0
   10338:	0147e7b3          	or	a5,a5,s4
   1033c:	01386833          	or	a6,a6,s3
   10340:	01276733          	or	a4,a4,s2
   10344:	00a5d413          	srli	s0,a1,0xa
   10348:	8f35                	xor	a4,a4,a3
   1034a:	0107c7b3          	xor	a5,a5,a6
   1034e:	00365693          	srli	a3,a2,0x3
   10352:	8f35                	xor	a4,a4,a3
   10354:	8fa1                	xor	a5,a5,s0
   10356:	97ba                	add	a5,a5,a4
   10358:	97c6                	add	a5,a5,a7
   1035a:	871a                	mv	a4,t1
   1035c:	00578333          	add	t1,a5,t0
   10360:	02652e23          	sw	t1,60(a0) # 1b03c <_impure_data+0x1c>
   10364:	0511                	addi	a0,a0,4
   10366:	88fe                	mv	a7,t6
   10368:	8ffa                	mv	t6,t5
   1036a:	8f76                	mv	t5,t4
   1036c:	8ef2                	mv	t4,t3
   1036e:	8e2e                	mv	t3,a1
   10370:	85ba                	mv	a1,a4
   10372:	fa7510e3          	bne	a0,t2,10312 <sha256_transform+0x7a>
   10376:	050b2d03          	lw	s10,80(s6)
   1037a:	054b2c83          	lw	s9,84(s6)
   1037e:	058b2c03          	lw	s8,88(s6)
   10382:	05cb2b83          	lw	s7,92(s6)
   10386:	064b2e03          	lw	t3,100(s6)
   1038a:	060b2403          	lw	s0,96(s6)
   1038e:	068b2383          	lw	t2,104(s6)
   10392:	06cb2d83          	lw	s11,108(s6)
   10396:	6ee9                	lui	t4,0x1a
   10398:	378e8e93          	addi	t4,t4,888 # 1a378 <k>
   1039c:	100e8a93          	addi	s5,t4,256
   103a0:	87ee                	mv	a5,s11
   103a2:	891e                	mv	s2,t2
   103a4:	89f2                	mv	s3,t3
   103a6:	8622                	mv	a2,s0
   103a8:	8a5e                	mv	s4,s7
   103aa:	8f62                	mv	t5,s8
   103ac:	8fe6                	mv	t6,s9
   103ae:	886a                	mv	a6,s10
   103b0:	c66a                	sw	s10,12(sp)
   103b2:	c866                	sw	s9,16(sp)
   103b4:	ca62                	sw	s8,20(sp)
   103b6:	cc5e                	sw	s7,24(sp)
   103b8:	ce72                	sw	t3,28(sp)
   103ba:	a039                	j	103c8 <sha256_transform+0x130>
   103bc:	894e                	mv	s2,s3
   103be:	8f7e                	mv	t5,t6
   103c0:	89b2                	mv	s3,a2
   103c2:	8fc2                	mv	t6,a6
   103c4:	862e                	mv	a2,a1
   103c6:	883a                	mv	a6,a4
   103c8:	01a61693          	slli	a3,a2,0x1a
   103cc:	01561713          	slli	a4,a2,0x15
   103d0:	00665593          	srli	a1,a2,0x6
   103d4:	00b65513          	srli	a0,a2,0xb
   103d8:	8d59                	or	a0,a0,a4
   103da:	01965893          	srli	a7,a2,0x19
   103de:	8dd5                	or	a1,a1,a3
   103e0:	00761d13          	slli	s10,a2,0x7
   103e4:	011d6d33          	or	s10,s10,a7
   103e8:	8da9                	xor	a1,a1,a0
   103ea:	01a5c5b3          	xor	a1,a1,s10
   103ee:	0004ae03          	lw	t3,0(s1)
   103f2:	000ead03          	lw	s10,0(t4)
   103f6:	01381c13          	slli	s8,a6,0x13
   103fa:	fff64713          	not	a4,a2
   103fe:	00285c93          	srli	s9,a6,0x2
   10402:	01e81313          	slli	t1,a6,0x1e
   10406:	00d85693          	srli	a3,a6,0xd
   1040a:	0186e6b3          	or	a3,a3,s8
   1040e:	01367bb3          	and	s7,a2,s3
   10412:	01efc533          	xor	a0,t6,t5
   10416:	01277733          	and	a4,a4,s2
   1041a:	00a81893          	slli	a7,a6,0xa
   1041e:	01685293          	srli	t0,a6,0x16
   10422:	9d72                	add	s10,s10,t3
   10424:	006ce333          	or	t1,s9,t1
   10428:	9d2e                	add	s10,s10,a1
   1042a:	01effc33          	and	s8,t6,t5
   1042e:	01057533          	and	a0,a0,a6
   10432:	01774733          	xor	a4,a4,s7
   10436:	00d346b3          	xor	a3,t1,a3
   1043a:	0058e8b3          	or	a7,a7,t0
   1043e:	976a                	add	a4,a4,s10
   10440:	0116c6b3          	xor	a3,a3,a7
   10444:	01854533          	xor	a0,a0,s8
   10448:	973e                	add	a4,a4,a5
   1044a:	96aa                	add	a3,a3,a0
   1044c:	0e91                	addi	t4,t4,4
   1044e:	014705b3          	add	a1,a4,s4
   10452:	87ca                	mv	a5,s2
   10454:	9736                	add	a4,a4,a3
   10456:	8a7a                	mv	s4,t5
   10458:	0491                	addi	s1,s1,4
   1045a:	f75e91e3          	bne	t4,s5,103bc <sha256_transform+0x124>
   1045e:	4d32                	lw	s10,12(sp)
   10460:	4cc2                	lw	s9,16(sp)
   10462:	4c52                	lw	s8,20(sp)
   10464:	4be2                	lw	s7,24(sp)
   10466:	4e72                	lw	t3,28(sp)
   10468:	942e                	add	s0,s0,a1
   1046a:	068b2023          	sw	s0,96(s6)
   1046e:	14c12403          	lw	s0,332(sp)
   10472:	9dca                	add	s11,s11,s2
   10474:	9d3a                	add	s10,s10,a4
   10476:	9cc2                	add	s9,s9,a6
   10478:	9c7e                	add	s8,s8,t6
   1047a:	9bfa                	add	s7,s7,t5
   1047c:	93ce                	add	t2,t2,s3
   1047e:	9e32                	add	t3,t3,a2
   10480:	05ab2823          	sw	s10,80(s6)
   10484:	059b2a23          	sw	s9,84(s6)
   10488:	058b2c23          	sw	s8,88(s6)
   1048c:	057b2e23          	sw	s7,92(s6)
   10490:	07bb2623          	sw	s11,108(s6)
   10494:	07cb2223          	sw	t3,100(s6)
   10498:	067b2423          	sw	t2,104(s6)
   1049c:	14812483          	lw	s1,328(sp)
   104a0:	14412903          	lw	s2,324(sp)
   104a4:	14012983          	lw	s3,320(sp)
   104a8:	13c12a03          	lw	s4,316(sp)
   104ac:	13812a83          	lw	s5,312(sp)
   104b0:	13412b03          	lw	s6,308(sp)
   104b4:	13012b83          	lw	s7,304(sp)
   104b8:	12c12c03          	lw	s8,300(sp)
   104bc:	12812c83          	lw	s9,296(sp)
   104c0:	12412d03          	lw	s10,292(sp)
   104c4:	12012d83          	lw	s11,288(sp)
   104c8:	6171                	addi	sp,sp,336
   104ca:	8082                	ret

000104cc <sha256_init>:
   104cc:	6a09e337          	lui	t1,0x6a09e
   104d0:	bb67b8b7          	lui	a7,0xbb67b
   104d4:	3c6ef837          	lui	a6,0x3c6ef
   104d8:	a54ff5b7          	lui	a1,0xa54ff
   104dc:	510e5637          	lui	a2,0x510e5
   104e0:	9b0576b7          	lui	a3,0x9b057
   104e4:	1f83e737          	lui	a4,0x1f83e
   104e8:	5be0d7b7          	lui	a5,0x5be0d
   104ec:	66730313          	addi	t1,t1,1639 # 6a09e667 <__BSS_END__+0x6a082c0b>
   104f0:	e8588893          	addi	a7,a7,-379 # bb67ae85 <__BSS_END__+0xbb65f429>
   104f4:	37280813          	addi	a6,a6,882 # 3c6ef372 <__BSS_END__+0x3c6d3916>
   104f8:	53a58593          	addi	a1,a1,1338 # a54ff53a <__BSS_END__+0xa54e3ade>
   104fc:	27f60613          	addi	a2,a2,639 # 510e527f <__BSS_END__+0x510c9823>
   10500:	88c68693          	addi	a3,a3,-1908 # 9b05688c <__BSS_END__+0x9b03ae30>
   10504:	9ab70713          	addi	a4,a4,-1621 # 1f83d9ab <__BSS_END__+0x1f821f4f>
   10508:	d1978793          	addi	a5,a5,-743 # 5be0cd19 <__BSS_END__+0x5bdf12bd>
   1050c:	4e01                	li	t3,0
   1050e:	4e81                	li	t4,0
   10510:	04052023          	sw	zero,64(a0)
   10514:	05c52423          	sw	t3,72(a0)
   10518:	05d52623          	sw	t4,76(a0)
   1051c:	04652823          	sw	t1,80(a0)
   10520:	05152a23          	sw	a7,84(a0)
   10524:	05052c23          	sw	a6,88(a0)
   10528:	cd6c                	sw	a1,92(a0)
   1052a:	d130                	sw	a2,96(a0)
   1052c:	d174                	sw	a3,100(a0)
   1052e:	d538                	sw	a4,104(a0)
   10530:	d57c                	sw	a5,108(a0)
   10532:	8082                	ret

00010534 <sha256_update>:
   10534:	c625                	beqz	a2,1059c <sha256_update+0x68>
   10536:	1101                	addi	sp,sp,-32
   10538:	cc22                	sw	s0,24(sp)
   1053a:	ca26                	sw	s1,20(sp)
   1053c:	c84a                	sw	s2,16(sp)
   1053e:	c64e                	sw	s3,12(sp)
   10540:	ce06                	sw	ra,28(sp)
   10542:	842a                	mv	s0,a0
   10544:	84ae                	mv	s1,a1
   10546:	00c58933          	add	s2,a1,a2
   1054a:	04000993          	li	s3,64
   1054e:	a021                	j	10556 <sha256_update+0x22>
   10550:	0485                	addi	s1,s1,1
   10552:	03248e63          	beq	s1,s2,1058e <sha256_update+0x5a>
   10556:	403c                	lw	a5,64(s0)
   10558:	0004c683          	lbu	a3,0(s1)
   1055c:	00f40733          	add	a4,s0,a5
   10560:	00d70023          	sb	a3,0(a4)
   10564:	0785                	addi	a5,a5,1
   10566:	c03c                	sw	a5,64(s0)
   10568:	ff3794e3          	bne	a5,s3,10550 <sha256_update+0x1c>
   1056c:	85a2                	mv	a1,s0
   1056e:	8522                	mv	a0,s0
   10570:	3325                	jal	10298 <sha256_transform>
   10572:	443c                	lw	a5,72(s0)
   10574:	4474                	lw	a3,76(s0)
   10576:	04042023          	sw	zero,64(s0)
   1057a:	20078713          	addi	a4,a5,512
   1057e:	00f737b3          	sltu	a5,a4,a5
   10582:	97b6                	add	a5,a5,a3
   10584:	c438                	sw	a4,72(s0)
   10586:	c47c                	sw	a5,76(s0)
   10588:	0485                	addi	s1,s1,1
   1058a:	fd2496e3          	bne	s1,s2,10556 <sha256_update+0x22>
   1058e:	40f2                	lw	ra,28(sp)
   10590:	4462                	lw	s0,24(sp)
   10592:	44d2                	lw	s1,20(sp)
   10594:	4942                	lw	s2,16(sp)
   10596:	49b2                	lw	s3,12(sp)
   10598:	6105                	addi	sp,sp,32
   1059a:	8082                	ret
   1059c:	8082                	ret

0001059e <sha256_final>:
   1059e:	1141                	addi	sp,sp,-16
   105a0:	c04a                	sw	s2,0(sp)
   105a2:	04052903          	lw	s2,64(a0)
   105a6:	c422                	sw	s0,8(sp)
   105a8:	842a                	mv	s0,a0
   105aa:	c226                	sw	s1,4(sp)
   105ac:	c606                	sw	ra,12(sp)
   105ae:	012407b3          	add	a5,s0,s2
   105b2:	f8000713          	li	a4,-128
   105b6:	03700613          	li	a2,55
   105ba:	00e78023          	sb	a4,0(a5)
   105be:	84ae                	mv	s1,a1
   105c0:	00190513          	addi	a0,s2,1
   105c4:	0f266a63          	bltu	a2,s2,106b8 <sha256_final+0x11a>
   105c8:	03800793          	li	a5,56
   105cc:	00f50863          	beq	a0,a5,105dc <sha256_final+0x3e>
   105d0:	41260633          	sub	a2,a2,s2
   105d4:	4581                	li	a1,0
   105d6:	9522                	add	a0,a0,s0
   105d8:	730000ef          	jal	10d08 <memset>
   105dc:	4430                	lw	a2,72(s0)
   105de:	447c                	lw	a5,76(s0)
   105e0:	090e                	slli	s2,s2,0x3
   105e2:	964a                	add	a2,a2,s2
   105e4:	01263933          	sltu	s2,a2,s2
   105e8:	97ca                	add	a5,a5,s2
   105ea:	0107d813          	srli	a6,a5,0x10
   105ee:	01065713          	srli	a4,a2,0x10
   105f2:	0087d513          	srli	a0,a5,0x8
   105f6:	00865593          	srli	a1,a2,0x8
   105fa:	0ff87813          	zext.b	a6,a6
   105fe:	0ff77713          	zext.b	a4,a4
   10602:	0187d693          	srli	a3,a5,0x18
   10606:	0822                	slli	a6,a6,0x8
   10608:	01865893          	srli	a7,a2,0x18
   1060c:	0ff57513          	zext.b	a0,a0
   10610:	0722                	slli	a4,a4,0x8
   10612:	0ff5f593          	zext.b	a1,a1
   10616:	0542                	slli	a0,a0,0x10
   10618:	0106e6b3          	or	a3,a3,a6
   1061c:	05c2                	slli	a1,a1,0x10
   1061e:	01176733          	or	a4,a4,a7
   10622:	01000837          	lui	a6,0x1000
   10626:	187d                	addi	a6,a6,-1 # ffffff <__BSS_END__+0xfe45a3>
   10628:	8ec9                	or	a3,a3,a0
   1062a:	8f4d                	or	a4,a4,a1
   1062c:	01879513          	slli	a0,a5,0x18
   10630:	01861593          	slli	a1,a2,0x18
   10634:	0106f6b3          	and	a3,a3,a6
   10638:	01077733          	and	a4,a4,a6
   1063c:	8ec9                	or	a3,a3,a0
   1063e:	8f4d                	or	a4,a4,a1
   10640:	c47c                	sw	a5,76(s0)
   10642:	dc14                	sw	a3,56(s0)
   10644:	85a2                	mv	a1,s0
   10646:	c430                	sw	a2,72(s0)
   10648:	dc58                	sw	a4,60(s0)
   1064a:	8522                	mv	a0,s0
   1064c:	31b1                	jal	10298 <sha256_transform>
   1064e:	85a6                	mv	a1,s1
   10650:	47e1                	li	a5,24
   10652:	56e1                	li	a3,-8
   10654:	4838                	lw	a4,80(s0)
   10656:	0585                	addi	a1,a1,1
   10658:	00f75733          	srl	a4,a4,a5
   1065c:	fee58fa3          	sb	a4,-1(a1)
   10660:	4878                	lw	a4,84(s0)
   10662:	00f75733          	srl	a4,a4,a5
   10666:	00e581a3          	sb	a4,3(a1)
   1066a:	4c38                	lw	a4,88(s0)
   1066c:	00f75733          	srl	a4,a4,a5
   10670:	00e583a3          	sb	a4,7(a1)
   10674:	4c78                	lw	a4,92(s0)
   10676:	00f75733          	srl	a4,a4,a5
   1067a:	00e585a3          	sb	a4,11(a1)
   1067e:	5038                	lw	a4,96(s0)
   10680:	00f75733          	srl	a4,a4,a5
   10684:	00e587a3          	sb	a4,15(a1)
   10688:	5078                	lw	a4,100(s0)
   1068a:	00f75733          	srl	a4,a4,a5
   1068e:	00e589a3          	sb	a4,19(a1)
   10692:	5438                	lw	a4,104(s0)
   10694:	00f75733          	srl	a4,a4,a5
   10698:	00e58ba3          	sb	a4,23(a1)
   1069c:	5478                	lw	a4,108(s0)
   1069e:	00f75733          	srl	a4,a4,a5
   106a2:	00e58da3          	sb	a4,27(a1)
   106a6:	17e1                	addi	a5,a5,-8
   106a8:	fad796e3          	bne	a5,a3,10654 <sha256_final+0xb6>
   106ac:	40b2                	lw	ra,12(sp)
   106ae:	4422                	lw	s0,8(sp)
   106b0:	4492                	lw	s1,4(sp)
   106b2:	4902                	lw	s2,0(sp)
   106b4:	0141                	addi	sp,sp,16
   106b6:	8082                	ret
   106b8:	03f00613          	li	a2,63
   106bc:	00a66763          	bltu	a2,a0,106ca <sha256_final+0x12c>
   106c0:	41260633          	sub	a2,a2,s2
   106c4:	4581                	li	a1,0
   106c6:	9522                	add	a0,a0,s0
   106c8:	2581                	jal	10d08 <memset>
   106ca:	85a2                	mv	a1,s0
   106cc:	8522                	mv	a0,s0
   106ce:	36e9                	jal	10298 <sha256_transform>
   106d0:	03800613          	li	a2,56
   106d4:	4581                	li	a1,0
   106d6:	8522                	mv	a0,s0
   106d8:	2d05                	jal	10d08 <memset>
   106da:	b709                	j	105dc <sha256_final+0x3e>

000106dc <__fp_lock>:
   106dc:	4501                	li	a0,0
   106de:	8082                	ret

000106e0 <stdio_exit_handler>:
   106e0:	666d                	lui	a2,0x1b
   106e2:	65cd                	lui	a1,0x13
   106e4:	656d                	lui	a0,0x1b
   106e6:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   106ea:	3f658593          	addi	a1,a1,1014 # 133f6 <_fclose_r>
   106ee:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   106f2:	aca9                	j	1094c <_fwalk_sglue>

000106f4 <cleanup_stdio>:
   106f4:	414c                	lw	a1,4(a0)
   106f6:	1141                	addi	sp,sp,-16
   106f8:	c422                	sw	s0,8(sp)
   106fa:	c606                	sw	ra,12(sp)
   106fc:	f5c18793          	addi	a5,gp,-164 # 1b76c <__sf>
   10700:	842a                	mv	s0,a0
   10702:	00f58463          	beq	a1,a5,1070a <cleanup_stdio+0x16>
   10706:	4f1020ef          	jal	133f6 <_fclose_r>
   1070a:	440c                	lw	a1,8(s0)
   1070c:	fc418793          	addi	a5,gp,-60 # 1b7d4 <__sf+0x68>
   10710:	00f58563          	beq	a1,a5,1071a <cleanup_stdio+0x26>
   10714:	8522                	mv	a0,s0
   10716:	4e1020ef          	jal	133f6 <_fclose_r>
   1071a:	444c                	lw	a1,12(s0)
   1071c:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   10720:	00f58863          	beq	a1,a5,10730 <cleanup_stdio+0x3c>
   10724:	8522                	mv	a0,s0
   10726:	4422                	lw	s0,8(sp)
   10728:	40b2                	lw	ra,12(sp)
   1072a:	0141                	addi	sp,sp,16
   1072c:	4cb0206f          	j	133f6 <_fclose_r>
   10730:	40b2                	lw	ra,12(sp)
   10732:	4422                	lw	s0,8(sp)
   10734:	0141                	addi	sp,sp,16
   10736:	8082                	ret

00010738 <__fp_unlock>:
   10738:	4501                	li	a0,0
   1073a:	8082                	ret

0001073c <global_stdio_init.part.0>:
   1073c:	1101                	addi	sp,sp,-32
   1073e:	67c1                	lui	a5,0x10
   10740:	cc22                	sw	s0,24(sp)
   10742:	6e078793          	addi	a5,a5,1760 # 106e0 <stdio_exit_handler>
   10746:	f5c18413          	addi	s0,gp,-164 # 1b76c <__sf>
   1074a:	ce06                	sw	ra,28(sp)
   1074c:	ca26                	sw	s1,20(sp)
   1074e:	c84a                	sw	s2,16(sp)
   10750:	c64e                	sw	s3,12(sp)
   10752:	c452                	sw	s4,8(sp)
   10754:	f2f1a023          	sw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   10758:	4621                	li	a2,8
   1075a:	4791                	li	a5,4
   1075c:	4581                	li	a1,0
   1075e:	fb818513          	addi	a0,gp,-72 # 1b7c8 <__sf+0x5c>
   10762:	c45c                	sw	a5,12(s0)
   10764:	00042023          	sw	zero,0(s0)
   10768:	00042223          	sw	zero,4(s0)
   1076c:	00042423          	sw	zero,8(s0)
   10770:	06042223          	sw	zero,100(s0)
   10774:	00042823          	sw	zero,16(s0)
   10778:	00042a23          	sw	zero,20(s0)
   1077c:	00042c23          	sw	zero,24(s0)
   10780:	2361                	jal	10d08 <memset>
   10782:	67c1                	lui	a5,0x10
   10784:	6a45                	lui	s4,0x11
   10786:	69c5                	lui	s3,0x11
   10788:	6945                	lui	s2,0x11
   1078a:	64c5                	lui	s1,0x11
   1078c:	a0ca0a13          	addi	s4,s4,-1524 # 10a0c <__sread>
   10790:	a4698993          	addi	s3,s3,-1466 # 10a46 <__swrite>
   10794:	a9690913          	addi	s2,s2,-1386 # 10a96 <__sseek>
   10798:	ade48493          	addi	s1,s1,-1314 # 10ade <__sclose>
   1079c:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   1079e:	4621                	li	a2,8
   107a0:	4581                	li	a1,0
   107a2:	02018513          	addi	a0,gp,32 # 1b830 <__global_pointer$+0x20>
   107a6:	03442023          	sw	s4,32(s0)
   107aa:	03342223          	sw	s3,36(s0)
   107ae:	03242423          	sw	s2,40(s0)
   107b2:	d444                	sw	s1,44(s0)
   107b4:	d87c                	sw	a5,116(s0)
   107b6:	cc40                	sw	s0,28(s0)
   107b8:	06042423          	sw	zero,104(s0)
   107bc:	06042623          	sw	zero,108(s0)
   107c0:	06042823          	sw	zero,112(s0)
   107c4:	0c042623          	sw	zero,204(s0)
   107c8:	06042c23          	sw	zero,120(s0)
   107cc:	06042e23          	sw	zero,124(s0)
   107d0:	08042023          	sw	zero,128(s0)
   107d4:	2b15                	jal	10d08 <memset>
   107d6:	000207b7          	lui	a5,0x20
   107da:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x45b6>
   107dc:	fc418713          	addi	a4,gp,-60 # 1b7d4 <__sf+0x68>
   107e0:	4621                	li	a2,8
   107e2:	4581                	li	a1,0
   107e4:	08818513          	addi	a0,gp,136 # 1b898 <__global_pointer$+0x88>
   107e8:	09442423          	sw	s4,136(s0)
   107ec:	09342623          	sw	s3,140(s0)
   107f0:	09242823          	sw	s2,144(s0)
   107f4:	08942a23          	sw	s1,148(s0)
   107f8:	0cf42e23          	sw	a5,220(s0)
   107fc:	08e42223          	sw	a4,132(s0)
   10800:	0c042823          	sw	zero,208(s0)
   10804:	0c042a23          	sw	zero,212(s0)
   10808:	0c042c23          	sw	zero,216(s0)
   1080c:	12042a23          	sw	zero,308(s0)
   10810:	0e042023          	sw	zero,224(s0)
   10814:	0e042223          	sw	zero,228(s0)
   10818:	0e042423          	sw	zero,232(s0)
   1081c:	21f5                	jal	10d08 <memset>
   1081e:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   10822:	0f442823          	sw	s4,240(s0)
   10826:	0f342a23          	sw	s3,244(s0)
   1082a:	0f242c23          	sw	s2,248(s0)
   1082e:	0e942e23          	sw	s1,252(s0)
   10832:	40f2                	lw	ra,28(sp)
   10834:	0ef42623          	sw	a5,236(s0)
   10838:	4462                	lw	s0,24(sp)
   1083a:	44d2                	lw	s1,20(sp)
   1083c:	4942                	lw	s2,16(sp)
   1083e:	49b2                	lw	s3,12(sp)
   10840:	4a22                	lw	s4,8(sp)
   10842:	6105                	addi	sp,sp,32
   10844:	8082                	ret

00010846 <__sfp>:
   10846:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   1084a:	1101                	addi	sp,sp,-32
   1084c:	c64e                	sw	s3,12(sp)
   1084e:	ce06                	sw	ra,28(sp)
   10850:	cc22                	sw	s0,24(sp)
   10852:	ca26                	sw	s1,20(sp)
   10854:	c84a                	sw	s2,16(sp)
   10856:	89aa                	mv	s3,a0
   10858:	c7cd                	beqz	a5,10902 <__sfp+0xbc>
   1085a:	696d                	lui	s2,0x1b
   1085c:	01090913          	addi	s2,s2,16 # 1b010 <__sglue>
   10860:	54fd                	li	s1,-1
   10862:	00492783          	lw	a5,4(s2)
   10866:	00892403          	lw	s0,8(s2)
   1086a:	17fd                	addi	a5,a5,-1
   1086c:	0007d763          	bgez	a5,1087a <__sfp+0x34>
   10870:	a8b9                	j	108ce <__sfp+0x88>
   10872:	06840413          	addi	s0,s0,104
   10876:	04978c63          	beq	a5,s1,108ce <__sfp+0x88>
   1087a:	00c41703          	lh	a4,12(s0)
   1087e:	17fd                	addi	a5,a5,-1
   10880:	fb6d                	bnez	a4,10872 <__sfp+0x2c>
   10882:	77c1                	lui	a5,0xffff0
   10884:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd45a5>
   10886:	c45c                	sw	a5,12(s0)
   10888:	06042223          	sw	zero,100(s0)
   1088c:	00042023          	sw	zero,0(s0)
   10890:	00042423          	sw	zero,8(s0)
   10894:	00042223          	sw	zero,4(s0)
   10898:	00042823          	sw	zero,16(s0)
   1089c:	00042a23          	sw	zero,20(s0)
   108a0:	00042c23          	sw	zero,24(s0)
   108a4:	4621                	li	a2,8
   108a6:	4581                	li	a1,0
   108a8:	05c40513          	addi	a0,s0,92
   108ac:	29b1                	jal	10d08 <memset>
   108ae:	02042823          	sw	zero,48(s0)
   108b2:	02042a23          	sw	zero,52(s0)
   108b6:	04042223          	sw	zero,68(s0)
   108ba:	04042423          	sw	zero,72(s0)
   108be:	40f2                	lw	ra,28(sp)
   108c0:	8522                	mv	a0,s0
   108c2:	4462                	lw	s0,24(sp)
   108c4:	44d2                	lw	s1,20(sp)
   108c6:	4942                	lw	s2,16(sp)
   108c8:	49b2                	lw	s3,12(sp)
   108ca:	6105                	addi	sp,sp,32
   108cc:	8082                	ret
   108ce:	00092403          	lw	s0,0(s2)
   108d2:	c019                	beqz	s0,108d8 <__sfp+0x92>
   108d4:	8922                	mv	s2,s0
   108d6:	b771                	j	10862 <__sfp+0x1c>
   108d8:	1ac00593          	li	a1,428
   108dc:	854e                	mv	a0,s3
   108de:	0ff000ef          	jal	111dc <_malloc_r>
   108e2:	842a                	mv	s0,a0
   108e4:	c10d                	beqz	a0,10906 <__sfp+0xc0>
   108e6:	0531                	addi	a0,a0,12
   108e8:	4791                	li	a5,4
   108ea:	00042023          	sw	zero,0(s0)
   108ee:	c05c                	sw	a5,4(s0)
   108f0:	c408                	sw	a0,8(s0)
   108f2:	1a000613          	li	a2,416
   108f6:	4581                	li	a1,0
   108f8:	2901                	jal	10d08 <memset>
   108fa:	00892023          	sw	s0,0(s2)
   108fe:	8922                	mv	s2,s0
   10900:	b78d                	j	10862 <__sfp+0x1c>
   10902:	3d2d                	jal	1073c <global_stdio_init.part.0>
   10904:	bf99                	j	1085a <__sfp+0x14>
   10906:	00092023          	sw	zero,0(s2)
   1090a:	47b1                	li	a5,12
   1090c:	00f9a023          	sw	a5,0(s3)
   10910:	b77d                	j	108be <__sfp+0x78>

00010912 <__sinit>:
   10912:	595c                	lw	a5,52(a0)
   10914:	c391                	beqz	a5,10918 <__sinit+0x6>
   10916:	8082                	ret
   10918:	f201a703          	lw	a4,-224(gp) # 1b730 <__stdio_exit_handler>
   1091c:	67c1                	lui	a5,0x10
   1091e:	6f478793          	addi	a5,a5,1780 # 106f4 <cleanup_stdio>
   10922:	d95c                	sw	a5,52(a0)
   10924:	fb6d                	bnez	a4,10916 <__sinit+0x4>
   10926:	bd19                	j	1073c <global_stdio_init.part.0>

00010928 <__sfp_lock_acquire>:
   10928:	8082                	ret

0001092a <__sfp_lock_release>:
   1092a:	8082                	ret

0001092c <__fp_lock_all>:
   1092c:	666d                	lui	a2,0x1b
   1092e:	65c1                	lui	a1,0x10
   10930:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   10934:	6dc58593          	addi	a1,a1,1756 # 106dc <__fp_lock>
   10938:	4501                	li	a0,0
   1093a:	a809                	j	1094c <_fwalk_sglue>

0001093c <__fp_unlock_all>:
   1093c:	666d                	lui	a2,0x1b
   1093e:	65c1                	lui	a1,0x10
   10940:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   10944:	73858593          	addi	a1,a1,1848 # 10738 <__fp_unlock>
   10948:	4501                	li	a0,0
   1094a:	a009                	j	1094c <_fwalk_sglue>

0001094c <_fwalk_sglue>:
   1094c:	7179                	addi	sp,sp,-48
   1094e:	d04a                	sw	s2,32(sp)
   10950:	ce4e                	sw	s3,28(sp)
   10952:	cc52                	sw	s4,24(sp)
   10954:	ca56                	sw	s5,20(sp)
   10956:	c85a                	sw	s6,16(sp)
   10958:	c65e                	sw	s7,12(sp)
   1095a:	d606                	sw	ra,44(sp)
   1095c:	d422                	sw	s0,40(sp)
   1095e:	d226                	sw	s1,36(sp)
   10960:	8b2a                	mv	s6,a0
   10962:	8bae                	mv	s7,a1
   10964:	8ab2                	mv	s5,a2
   10966:	4a01                	li	s4,0
   10968:	4985                	li	s3,1
   1096a:	597d                	li	s2,-1
   1096c:	004aa483          	lw	s1,4(s5)
   10970:	008aa403          	lw	s0,8(s5)
   10974:	14fd                	addi	s1,s1,-1
   10976:	0204c463          	bltz	s1,1099e <_fwalk_sglue+0x52>
   1097a:	00c45783          	lhu	a5,12(s0)
   1097e:	00f9fb63          	bgeu	s3,a5,10994 <_fwalk_sglue+0x48>
   10982:	00e41783          	lh	a5,14(s0)
   10986:	85a2                	mv	a1,s0
   10988:	855a                	mv	a0,s6
   1098a:	01278563          	beq	a5,s2,10994 <_fwalk_sglue+0x48>
   1098e:	9b82                	jalr	s7
   10990:	00aa6a33          	or	s4,s4,a0
   10994:	14fd                	addi	s1,s1,-1
   10996:	06840413          	addi	s0,s0,104
   1099a:	ff2490e3          	bne	s1,s2,1097a <_fwalk_sglue+0x2e>
   1099e:	000aaa83          	lw	s5,0(s5)
   109a2:	fc0a95e3          	bnez	s5,1096c <_fwalk_sglue+0x20>
   109a6:	50b2                	lw	ra,44(sp)
   109a8:	5422                	lw	s0,40(sp)
   109aa:	5492                	lw	s1,36(sp)
   109ac:	5902                	lw	s2,32(sp)
   109ae:	49f2                	lw	s3,28(sp)
   109b0:	4ad2                	lw	s5,20(sp)
   109b2:	4b42                	lw	s6,16(sp)
   109b4:	4bb2                	lw	s7,12(sp)
   109b6:	8552                	mv	a0,s4
   109b8:	4a62                	lw	s4,24(sp)
   109ba:	6145                	addi	sp,sp,48
   109bc:	8082                	ret

000109be <_printf_r>:
   109be:	7139                	addi	sp,sp,-64
   109c0:	d432                	sw	a2,40(sp)
   109c2:	d636                	sw	a3,44(sp)
   109c4:	d83a                	sw	a4,48(sp)
   109c6:	da3e                	sw	a5,52(sp)
   109c8:	dc42                	sw	a6,56(sp)
   109ca:	de46                	sw	a7,60(sp)
   109cc:	862e                	mv	a2,a1
   109ce:	450c                	lw	a1,8(a0)
   109d0:	1034                	addi	a3,sp,40
   109d2:	ce06                	sw	ra,28(sp)
   109d4:	c636                	sw	a3,12(sp)
   109d6:	5af000ef          	jal	11784 <_vfprintf_r>
   109da:	40f2                	lw	ra,28(sp)
   109dc:	6121                	addi	sp,sp,64
   109de:	8082                	ret

000109e0 <printf>:
   109e0:	f141a303          	lw	t1,-236(gp) # 1b724 <_impure_ptr>
   109e4:	7139                	addi	sp,sp,-64
   109e6:	d432                	sw	a2,40(sp)
   109e8:	d636                	sw	a3,44(sp)
   109ea:	d22e                	sw	a1,36(sp)
   109ec:	d83a                	sw	a4,48(sp)
   109ee:	da3e                	sw	a5,52(sp)
   109f0:	dc42                	sw	a6,56(sp)
   109f2:	de46                	sw	a7,60(sp)
   109f4:	00832583          	lw	a1,8(t1)
   109f8:	1054                	addi	a3,sp,36
   109fa:	862a                	mv	a2,a0
   109fc:	851a                	mv	a0,t1
   109fe:	ce06                	sw	ra,28(sp)
   10a00:	c636                	sw	a3,12(sp)
   10a02:	583000ef          	jal	11784 <_vfprintf_r>
   10a06:	40f2                	lw	ra,28(sp)
   10a08:	6121                	addi	sp,sp,64
   10a0a:	8082                	ret

00010a0c <__sread>:
   10a0c:	1141                	addi	sp,sp,-16
   10a0e:	c422                	sw	s0,8(sp)
   10a10:	842e                	mv	s0,a1
   10a12:	00e59583          	lh	a1,14(a1)
   10a16:	c606                	sw	ra,12(sp)
   10a18:	2439                	jal	10c26 <_read_r>
   10a1a:	00054963          	bltz	a0,10a2c <__sread+0x20>
   10a1e:	483c                	lw	a5,80(s0)
   10a20:	40b2                	lw	ra,12(sp)
   10a22:	97aa                	add	a5,a5,a0
   10a24:	c83c                	sw	a5,80(s0)
   10a26:	4422                	lw	s0,8(sp)
   10a28:	0141                	addi	sp,sp,16
   10a2a:	8082                	ret
   10a2c:	00c45783          	lhu	a5,12(s0)
   10a30:	777d                	lui	a4,0xfffff
   10a32:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10a34:	8ff9                	and	a5,a5,a4
   10a36:	40b2                	lw	ra,12(sp)
   10a38:	00f41623          	sh	a5,12(s0)
   10a3c:	4422                	lw	s0,8(sp)
   10a3e:	0141                	addi	sp,sp,16
   10a40:	8082                	ret

00010a42 <__seofread>:
   10a42:	4501                	li	a0,0
   10a44:	8082                	ret

00010a46 <__swrite>:
   10a46:	00c59783          	lh	a5,12(a1)
   10a4a:	1101                	addi	sp,sp,-32
   10a4c:	cc22                	sw	s0,24(sp)
   10a4e:	ca26                	sw	s1,20(sp)
   10a50:	c84a                	sw	s2,16(sp)
   10a52:	c64e                	sw	s3,12(sp)
   10a54:	ce06                	sw	ra,28(sp)
   10a56:	1007f713          	andi	a4,a5,256
   10a5a:	842e                	mv	s0,a1
   10a5c:	84aa                	mv	s1,a0
   10a5e:	8932                	mv	s2,a2
   10a60:	89b6                	mv	s3,a3
   10a62:	e315                	bnez	a4,10a86 <__swrite+0x40>
   10a64:	777d                	lui	a4,0xfffff
   10a66:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10a68:	8ff9                	and	a5,a5,a4
   10a6a:	00e41583          	lh	a1,14(s0)
   10a6e:	00f41623          	sh	a5,12(s0)
   10a72:	4462                	lw	s0,24(sp)
   10a74:	40f2                	lw	ra,28(sp)
   10a76:	86ce                	mv	a3,s3
   10a78:	864a                	mv	a2,s2
   10a7a:	49b2                	lw	s3,12(sp)
   10a7c:	4942                	lw	s2,16(sp)
   10a7e:	8526                	mv	a0,s1
   10a80:	44d2                	lw	s1,20(sp)
   10a82:	6105                	addi	sp,sp,32
   10a84:	aaf9                	j	10c62 <_write_r>
   10a86:	00e59583          	lh	a1,14(a1)
   10a8a:	4689                	li	a3,2
   10a8c:	4601                	li	a2,0
   10a8e:	2ab1                	jal	10bea <_lseek_r>
   10a90:	00c41783          	lh	a5,12(s0)
   10a94:	bfc1                	j	10a64 <__swrite+0x1e>

00010a96 <__sseek>:
   10a96:	1141                	addi	sp,sp,-16
   10a98:	c422                	sw	s0,8(sp)
   10a9a:	842e                	mv	s0,a1
   10a9c:	00e59583          	lh	a1,14(a1)
   10aa0:	c606                	sw	ra,12(sp)
   10aa2:	22a1                	jal	10bea <_lseek_r>
   10aa4:	57fd                	li	a5,-1
   10aa6:	00f50f63          	beq	a0,a5,10ac4 <__sseek+0x2e>
   10aaa:	00c45783          	lhu	a5,12(s0)
   10aae:	6705                	lui	a4,0x1
   10ab0:	40b2                	lw	ra,12(sp)
   10ab2:	8fd9                	or	a5,a5,a4
   10ab4:	07c2                	slli	a5,a5,0x10
   10ab6:	87c1                	srai	a5,a5,0x10
   10ab8:	c828                	sw	a0,80(s0)
   10aba:	00f41623          	sh	a5,12(s0)
   10abe:	4422                	lw	s0,8(sp)
   10ac0:	0141                	addi	sp,sp,16
   10ac2:	8082                	ret
   10ac4:	00c45783          	lhu	a5,12(s0)
   10ac8:	777d                	lui	a4,0xfffff
   10aca:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10acc:	8ff9                	and	a5,a5,a4
   10ace:	07c2                	slli	a5,a5,0x10
   10ad0:	87c1                	srai	a5,a5,0x10
   10ad2:	40b2                	lw	ra,12(sp)
   10ad4:	00f41623          	sh	a5,12(s0)
   10ad8:	4422                	lw	s0,8(sp)
   10ada:	0141                	addi	sp,sp,16
   10adc:	8082                	ret

00010ade <__sclose>:
   10ade:	00e59583          	lh	a1,14(a1)
   10ae2:	a899                	j	10b38 <_close_r>

00010ae4 <memcmp>:
   10ae4:	478d                	li	a5,3
   10ae6:	02c7f463          	bgeu	a5,a2,10b0e <memcmp+0x2a>
   10aea:	00a5e7b3          	or	a5,a1,a0
   10aee:	8b8d                	andi	a5,a5,3
   10af0:	ef81                	bnez	a5,10b08 <memcmp+0x24>
   10af2:	468d                	li	a3,3
   10af4:	a031                	j	10b00 <memcmp+0x1c>
   10af6:	1671                	addi	a2,a2,-4
   10af8:	0511                	addi	a0,a0,4
   10afa:	0591                	addi	a1,a1,4
   10afc:	00c6f963          	bgeu	a3,a2,10b0e <memcmp+0x2a>
   10b00:	4118                	lw	a4,0(a0)
   10b02:	419c                	lw	a5,0(a1)
   10b04:	fef709e3          	beq	a4,a5,10af6 <memcmp+0x12>
   10b08:	fff60693          	addi	a3,a2,-1
   10b0c:	a021                	j	10b14 <memcmp+0x30>
   10b0e:	fff60693          	addi	a3,a2,-1
   10b12:	c20d                	beqz	a2,10b34 <memcmp+0x50>
   10b14:	0685                	addi	a3,a3,1
   10b16:	96aa                	add	a3,a3,a0
   10b18:	a019                	j	10b1e <memcmp+0x3a>
   10b1a:	00a68d63          	beq	a3,a0,10b34 <memcmp+0x50>
   10b1e:	00054783          	lbu	a5,0(a0)
   10b22:	0005c703          	lbu	a4,0(a1)
   10b26:	0505                	addi	a0,a0,1
   10b28:	0585                	addi	a1,a1,1
   10b2a:	fee788e3          	beq	a5,a4,10b1a <memcmp+0x36>
   10b2e:	40e78533          	sub	a0,a5,a4
   10b32:	8082                	ret
   10b34:	4501                	li	a0,0
   10b36:	8082                	ret

00010b38 <_close_r>:
   10b38:	1141                	addi	sp,sp,-16
   10b3a:	c422                	sw	s0,8(sp)
   10b3c:	c226                	sw	s1,4(sp)
   10b3e:	842a                	mv	s0,a0
   10b40:	852e                	mv	a0,a1
   10b42:	c606                	sw	ra,12(sp)
   10b44:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10b48:	74b060ef          	jal	17a92 <_close>
   10b4c:	57fd                	li	a5,-1
   10b4e:	00f50763          	beq	a0,a5,10b5c <_close_r+0x24>
   10b52:	40b2                	lw	ra,12(sp)
   10b54:	4422                	lw	s0,8(sp)
   10b56:	4492                	lw	s1,4(sp)
   10b58:	0141                	addi	sp,sp,16
   10b5a:	8082                	ret
   10b5c:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10b60:	dbed                	beqz	a5,10b52 <_close_r+0x1a>
   10b62:	40b2                	lw	ra,12(sp)
   10b64:	c01c                	sw	a5,0(s0)
   10b66:	4422                	lw	s0,8(sp)
   10b68:	4492                	lw	s1,4(sp)
   10b6a:	0141                	addi	sp,sp,16
   10b6c:	8082                	ret

00010b6e <_reclaim_reent>:
   10b6e:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10b72:	06a78b63          	beq	a5,a0,10be8 <_reclaim_reent+0x7a>
   10b76:	416c                	lw	a1,68(a0)
   10b78:	1101                	addi	sp,sp,-32
   10b7a:	ca26                	sw	s1,20(sp)
   10b7c:	ce06                	sw	ra,28(sp)
   10b7e:	cc22                	sw	s0,24(sp)
   10b80:	84aa                	mv	s1,a0
   10b82:	c59d                	beqz	a1,10bb0 <_reclaim_reent+0x42>
   10b84:	c84a                	sw	s2,16(sp)
   10b86:	c64e                	sw	s3,12(sp)
   10b88:	4901                	li	s2,0
   10b8a:	08000993          	li	s3,128
   10b8e:	012587b3          	add	a5,a1,s2
   10b92:	4380                	lw	s0,0(a5)
   10b94:	c419                	beqz	s0,10ba2 <_reclaim_reent+0x34>
   10b96:	85a2                	mv	a1,s0
   10b98:	4000                	lw	s0,0(s0)
   10b9a:	8526                	mv	a0,s1
   10b9c:	2939                	jal	10fba <_free_r>
   10b9e:	fc65                	bnez	s0,10b96 <_reclaim_reent+0x28>
   10ba0:	40ec                	lw	a1,68(s1)
   10ba2:	0911                	addi	s2,s2,4
   10ba4:	ff3915e3          	bne	s2,s3,10b8e <_reclaim_reent+0x20>
   10ba8:	8526                	mv	a0,s1
   10baa:	2901                	jal	10fba <_free_r>
   10bac:	4942                	lw	s2,16(sp)
   10bae:	49b2                	lw	s3,12(sp)
   10bb0:	5c8c                	lw	a1,56(s1)
   10bb2:	c199                	beqz	a1,10bb8 <_reclaim_reent+0x4a>
   10bb4:	8526                	mv	a0,s1
   10bb6:	2111                	jal	10fba <_free_r>
   10bb8:	40a0                	lw	s0,64(s1)
   10bba:	c411                	beqz	s0,10bc6 <_reclaim_reent+0x58>
   10bbc:	85a2                	mv	a1,s0
   10bbe:	4000                	lw	s0,0(s0)
   10bc0:	8526                	mv	a0,s1
   10bc2:	2ee5                	jal	10fba <_free_r>
   10bc4:	fc65                	bnez	s0,10bbc <_reclaim_reent+0x4e>
   10bc6:	44ec                	lw	a1,76(s1)
   10bc8:	c199                	beqz	a1,10bce <_reclaim_reent+0x60>
   10bca:	8526                	mv	a0,s1
   10bcc:	26fd                	jal	10fba <_free_r>
   10bce:	58dc                	lw	a5,52(s1)
   10bd0:	c799                	beqz	a5,10bde <_reclaim_reent+0x70>
   10bd2:	4462                	lw	s0,24(sp)
   10bd4:	40f2                	lw	ra,28(sp)
   10bd6:	8526                	mv	a0,s1
   10bd8:	44d2                	lw	s1,20(sp)
   10bda:	6105                	addi	sp,sp,32
   10bdc:	8782                	jr	a5
   10bde:	40f2                	lw	ra,28(sp)
   10be0:	4462                	lw	s0,24(sp)
   10be2:	44d2                	lw	s1,20(sp)
   10be4:	6105                	addi	sp,sp,32
   10be6:	8082                	ret
   10be8:	8082                	ret

00010bea <_lseek_r>:
   10bea:	1141                	addi	sp,sp,-16
   10bec:	872e                	mv	a4,a1
   10bee:	c422                	sw	s0,8(sp)
   10bf0:	c226                	sw	s1,4(sp)
   10bf2:	85b2                	mv	a1,a2
   10bf4:	842a                	mv	s0,a0
   10bf6:	8636                	mv	a2,a3
   10bf8:	853a                	mv	a0,a4
   10bfa:	c606                	sw	ra,12(sp)
   10bfc:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10c00:	757060ef          	jal	17b56 <_lseek>
   10c04:	57fd                	li	a5,-1
   10c06:	00f50763          	beq	a0,a5,10c14 <_lseek_r+0x2a>
   10c0a:	40b2                	lw	ra,12(sp)
   10c0c:	4422                	lw	s0,8(sp)
   10c0e:	4492                	lw	s1,4(sp)
   10c10:	0141                	addi	sp,sp,16
   10c12:	8082                	ret
   10c14:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10c18:	dbed                	beqz	a5,10c0a <_lseek_r+0x20>
   10c1a:	40b2                	lw	ra,12(sp)
   10c1c:	c01c                	sw	a5,0(s0)
   10c1e:	4422                	lw	s0,8(sp)
   10c20:	4492                	lw	s1,4(sp)
   10c22:	0141                	addi	sp,sp,16
   10c24:	8082                	ret

00010c26 <_read_r>:
   10c26:	1141                	addi	sp,sp,-16
   10c28:	872e                	mv	a4,a1
   10c2a:	c422                	sw	s0,8(sp)
   10c2c:	c226                	sw	s1,4(sp)
   10c2e:	85b2                	mv	a1,a2
   10c30:	842a                	mv	s0,a0
   10c32:	8636                	mv	a2,a3
   10c34:	853a                	mv	a0,a4
   10c36:	c606                	sw	ra,12(sp)
   10c38:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10c3c:	747060ef          	jal	17b82 <_read>
   10c40:	57fd                	li	a5,-1
   10c42:	00f50763          	beq	a0,a5,10c50 <_read_r+0x2a>
   10c46:	40b2                	lw	ra,12(sp)
   10c48:	4422                	lw	s0,8(sp)
   10c4a:	4492                	lw	s1,4(sp)
   10c4c:	0141                	addi	sp,sp,16
   10c4e:	8082                	ret
   10c50:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10c54:	dbed                	beqz	a5,10c46 <_read_r+0x20>
   10c56:	40b2                	lw	ra,12(sp)
   10c58:	c01c                	sw	a5,0(s0)
   10c5a:	4422                	lw	s0,8(sp)
   10c5c:	4492                	lw	s1,4(sp)
   10c5e:	0141                	addi	sp,sp,16
   10c60:	8082                	ret

00010c62 <_write_r>:
   10c62:	1141                	addi	sp,sp,-16
   10c64:	872e                	mv	a4,a1
   10c66:	c422                	sw	s0,8(sp)
   10c68:	c226                	sw	s1,4(sp)
   10c6a:	85b2                	mv	a1,a2
   10c6c:	842a                	mv	s0,a0
   10c6e:	8636                	mv	a2,a3
   10c70:	853a                	mv	a0,a4
   10c72:	c606                	sw	ra,12(sp)
   10c74:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10c78:	78b060ef          	jal	17c02 <_write>
   10c7c:	57fd                	li	a5,-1
   10c7e:	00f50763          	beq	a0,a5,10c8c <_write_r+0x2a>
   10c82:	40b2                	lw	ra,12(sp)
   10c84:	4422                	lw	s0,8(sp)
   10c86:	4492                	lw	s1,4(sp)
   10c88:	0141                	addi	sp,sp,16
   10c8a:	8082                	ret
   10c8c:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10c90:	dbed                	beqz	a5,10c82 <_write_r+0x20>
   10c92:	40b2                	lw	ra,12(sp)
   10c94:	c01c                	sw	a5,0(s0)
   10c96:	4422                	lw	s0,8(sp)
   10c98:	4492                	lw	s1,4(sp)
   10c9a:	0141                	addi	sp,sp,16
   10c9c:	8082                	ret

00010c9e <__libc_init_array>:
   10c9e:	1141                	addi	sp,sp,-16
   10ca0:	c422                	sw	s0,8(sp)
   10ca2:	67ed                	lui	a5,0x1b
   10ca4:	646d                	lui	s0,0x1b
   10ca6:	c04a                	sw	s2,0(sp)
   10ca8:	00478793          	addi	a5,a5,4 # 1b004 <__init_array_start>
   10cac:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   10cb0:	c606                	sw	ra,12(sp)
   10cb2:	c226                	sw	s1,4(sp)
   10cb4:	40e78933          	sub	s2,a5,a4
   10cb8:	00e78d63          	beq	a5,a4,10cd2 <__libc_init_array+0x34>
   10cbc:	40295913          	srai	s2,s2,0x2
   10cc0:	00440413          	addi	s0,s0,4
   10cc4:	4481                	li	s1,0
   10cc6:	401c                	lw	a5,0(s0)
   10cc8:	0485                	addi	s1,s1,1
   10cca:	0411                	addi	s0,s0,4
   10ccc:	9782                	jalr	a5
   10cce:	ff24ece3          	bltu	s1,s2,10cc6 <__libc_init_array+0x28>
   10cd2:	646d                	lui	s0,0x1b
   10cd4:	67ed                	lui	a5,0x1b
   10cd6:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   10cda:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   10cde:	40e78933          	sub	s2,a5,a4
   10ce2:	40295913          	srai	s2,s2,0x2
   10ce6:	00e78b63          	beq	a5,a4,10cfc <__libc_init_array+0x5e>
   10cea:	00440413          	addi	s0,s0,4
   10cee:	4481                	li	s1,0
   10cf0:	401c                	lw	a5,0(s0)
   10cf2:	0485                	addi	s1,s1,1
   10cf4:	0411                	addi	s0,s0,4
   10cf6:	9782                	jalr	a5
   10cf8:	ff24ece3          	bltu	s1,s2,10cf0 <__libc_init_array+0x52>
   10cfc:	40b2                	lw	ra,12(sp)
   10cfe:	4422                	lw	s0,8(sp)
   10d00:	4492                	lw	s1,4(sp)
   10d02:	4902                	lw	s2,0(sp)
   10d04:	0141                	addi	sp,sp,16
   10d06:	8082                	ret

00010d08 <memset>:
   10d08:	433d                	li	t1,15
   10d0a:	872a                	mv	a4,a0
   10d0c:	02c37363          	bgeu	t1,a2,10d32 <memset+0x2a>
   10d10:	00f77793          	andi	a5,a4,15
   10d14:	efbd                	bnez	a5,10d92 <memset+0x8a>
   10d16:	e5ad                	bnez	a1,10d80 <memset+0x78>
   10d18:	ff067693          	andi	a3,a2,-16
   10d1c:	8a3d                	andi	a2,a2,15
   10d1e:	96ba                	add	a3,a3,a4
   10d20:	c30c                	sw	a1,0(a4)
   10d22:	c34c                	sw	a1,4(a4)
   10d24:	c70c                	sw	a1,8(a4)
   10d26:	c74c                	sw	a1,12(a4)
   10d28:	0741                	addi	a4,a4,16
   10d2a:	fed76be3          	bltu	a4,a3,10d20 <memset+0x18>
   10d2e:	e211                	bnez	a2,10d32 <memset+0x2a>
   10d30:	8082                	ret
   10d32:	40c306b3          	sub	a3,t1,a2
   10d36:	068a                	slli	a3,a3,0x2
   10d38:	00000297          	auipc	t0,0x0
   10d3c:	9696                	add	a3,a3,t0
   10d3e:	00a68067          	jr	10(a3)
   10d42:	00b70723          	sb	a1,14(a4)
   10d46:	00b706a3          	sb	a1,13(a4)
   10d4a:	00b70623          	sb	a1,12(a4)
   10d4e:	00b705a3          	sb	a1,11(a4)
   10d52:	00b70523          	sb	a1,10(a4)
   10d56:	00b704a3          	sb	a1,9(a4)
   10d5a:	00b70423          	sb	a1,8(a4)
   10d5e:	00b703a3          	sb	a1,7(a4)
   10d62:	00b70323          	sb	a1,6(a4)
   10d66:	00b702a3          	sb	a1,5(a4)
   10d6a:	00b70223          	sb	a1,4(a4)
   10d6e:	00b701a3          	sb	a1,3(a4)
   10d72:	00b70123          	sb	a1,2(a4)
   10d76:	00b700a3          	sb	a1,1(a4)
   10d7a:	00b70023          	sb	a1,0(a4)
   10d7e:	8082                	ret
   10d80:	0ff5f593          	zext.b	a1,a1
   10d84:	00859693          	slli	a3,a1,0x8
   10d88:	8dd5                	or	a1,a1,a3
   10d8a:	01059693          	slli	a3,a1,0x10
   10d8e:	8dd5                	or	a1,a1,a3
   10d90:	b761                	j	10d18 <memset+0x10>
   10d92:	00279693          	slli	a3,a5,0x2
   10d96:	00000297          	auipc	t0,0x0
   10d9a:	9696                	add	a3,a3,t0
   10d9c:	8286                	mv	t0,ra
   10d9e:	fa8680e7          	jalr	-88(a3)
   10da2:	8096                	mv	ra,t0
   10da4:	17c1                	addi	a5,a5,-16
   10da6:	8f1d                	sub	a4,a4,a5
   10da8:	963e                	add	a2,a2,a5
   10daa:	f8c374e3          	bgeu	t1,a2,10d32 <memset+0x2a>
   10dae:	b7a5                	j	10d16 <memset+0xe>

00010db0 <strlen>:
   10db0:	00357793          	andi	a5,a0,3
   10db4:	872a                	mv	a4,a0
   10db6:	ef9d                	bnez	a5,10df4 <strlen+0x44>
   10db8:	7f7f86b7          	lui	a3,0x7f7f8
   10dbc:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   10dc0:	55fd                	li	a1,-1
   10dc2:	4310                	lw	a2,0(a4)
   10dc4:	0711                	addi	a4,a4,4
   10dc6:	00d677b3          	and	a5,a2,a3
   10dca:	97b6                	add	a5,a5,a3
   10dcc:	8fd1                	or	a5,a5,a2
   10dce:	8fd5                	or	a5,a5,a3
   10dd0:	feb789e3          	beq	a5,a1,10dc2 <strlen+0x12>
   10dd4:	ffc74683          	lbu	a3,-4(a4)
   10dd8:	40a707b3          	sub	a5,a4,a0
   10ddc:	ca8d                	beqz	a3,10e0e <strlen+0x5e>
   10dde:	ffd74683          	lbu	a3,-3(a4)
   10de2:	c29d                	beqz	a3,10e08 <strlen+0x58>
   10de4:	ffe74503          	lbu	a0,-2(a4)
   10de8:	00a03533          	snez	a0,a0
   10dec:	953e                	add	a0,a0,a5
   10dee:	1579                	addi	a0,a0,-2
   10df0:	8082                	ret
   10df2:	d2f9                	beqz	a3,10db8 <strlen+0x8>
   10df4:	00074783          	lbu	a5,0(a4)
   10df8:	0705                	addi	a4,a4,1
   10dfa:	00377693          	andi	a3,a4,3
   10dfe:	fbf5                	bnez	a5,10df2 <strlen+0x42>
   10e00:	8f09                	sub	a4,a4,a0
   10e02:	fff70513          	addi	a0,a4,-1
   10e06:	8082                	ret
   10e08:	ffd78513          	addi	a0,a5,-3
   10e0c:	8082                	ret
   10e0e:	ffc78513          	addi	a0,a5,-4
   10e12:	8082                	ret

00010e14 <__call_exitprocs>:
   10e14:	7179                	addi	sp,sp,-48
   10e16:	cc52                	sw	s4,24(sp)
   10e18:	d04a                	sw	s2,32(sp)
   10e1a:	f281a903          	lw	s2,-216(gp) # 1b738 <__atexit>
   10e1e:	d606                	sw	ra,44(sp)
   10e20:	06090c63          	beqz	s2,10e98 <__call_exitprocs+0x84>
   10e24:	ce4e                	sw	s3,28(sp)
   10e26:	ca56                	sw	s5,20(sp)
   10e28:	c85a                	sw	s6,16(sp)
   10e2a:	c65e                	sw	s7,12(sp)
   10e2c:	d422                	sw	s0,40(sp)
   10e2e:	d226                	sw	s1,36(sp)
   10e30:	c462                	sw	s8,8(sp)
   10e32:	8b2a                	mv	s6,a0
   10e34:	8bae                	mv	s7,a1
   10e36:	59fd                	li	s3,-1
   10e38:	4a85                	li	s5,1
   10e3a:	00492483          	lw	s1,4(s2)
   10e3e:	fff48413          	addi	s0,s1,-1
   10e42:	04044463          	bltz	s0,10e8a <__call_exitprocs+0x76>
   10e46:	048a                	slli	s1,s1,0x2
   10e48:	94ca                	add	s1,s1,s2
   10e4a:	040b9c63          	bnez	s7,10ea2 <__call_exitprocs+0x8e>
   10e4e:	00492783          	lw	a5,4(s2)
   10e52:	40d4                	lw	a3,4(s1)
   10e54:	17fd                	addi	a5,a5,-1
   10e56:	08878063          	beq	a5,s0,10ed6 <__call_exitprocs+0xc2>
   10e5a:	0004a223          	sw	zero,4(s1)
   10e5e:	c295                	beqz	a3,10e82 <__call_exitprocs+0x6e>
   10e60:	18892783          	lw	a5,392(s2)
   10e64:	008a9733          	sll	a4,s5,s0
   10e68:	00492c03          	lw	s8,4(s2)
   10e6c:	8ff9                	and	a5,a5,a4
   10e6e:	e3b9                	bnez	a5,10eb4 <__call_exitprocs+0xa0>
   10e70:	9682                	jalr	a3
   10e72:	00492703          	lw	a4,4(s2)
   10e76:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   10e7a:	05871b63          	bne	a4,s8,10ed0 <__call_exitprocs+0xbc>
   10e7e:	05279963          	bne	a5,s2,10ed0 <__call_exitprocs+0xbc>
   10e82:	147d                	addi	s0,s0,-1
   10e84:	14f1                	addi	s1,s1,-4
   10e86:	fd3412e3          	bne	s0,s3,10e4a <__call_exitprocs+0x36>
   10e8a:	5422                	lw	s0,40(sp)
   10e8c:	5492                	lw	s1,36(sp)
   10e8e:	49f2                	lw	s3,28(sp)
   10e90:	4ad2                	lw	s5,20(sp)
   10e92:	4b42                	lw	s6,16(sp)
   10e94:	4bb2                	lw	s7,12(sp)
   10e96:	4c22                	lw	s8,8(sp)
   10e98:	50b2                	lw	ra,44(sp)
   10e9a:	5902                	lw	s2,32(sp)
   10e9c:	4a62                	lw	s4,24(sp)
   10e9e:	6145                	addi	sp,sp,48
   10ea0:	8082                	ret
   10ea2:	1044a783          	lw	a5,260(s1)
   10ea6:	fb7784e3          	beq	a5,s7,10e4e <__call_exitprocs+0x3a>
   10eaa:	147d                	addi	s0,s0,-1
   10eac:	14f1                	addi	s1,s1,-4
   10eae:	ff341ae3          	bne	s0,s3,10ea2 <__call_exitprocs+0x8e>
   10eb2:	bfe1                	j	10e8a <__call_exitprocs+0x76>
   10eb4:	18c92783          	lw	a5,396(s2)
   10eb8:	0844a583          	lw	a1,132(s1)
   10ebc:	8f7d                	and	a4,a4,a5
   10ebe:	ef19                	bnez	a4,10edc <__call_exitprocs+0xc8>
   10ec0:	855a                	mv	a0,s6
   10ec2:	9682                	jalr	a3
   10ec4:	00492703          	lw	a4,4(s2)
   10ec8:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   10ecc:	fb8709e3          	beq	a4,s8,10e7e <__call_exitprocs+0x6a>
   10ed0:	dfcd                	beqz	a5,10e8a <__call_exitprocs+0x76>
   10ed2:	893e                	mv	s2,a5
   10ed4:	b79d                	j	10e3a <__call_exitprocs+0x26>
   10ed6:	00892223          	sw	s0,4(s2)
   10eda:	b751                	j	10e5e <__call_exitprocs+0x4a>
   10edc:	852e                	mv	a0,a1
   10ede:	9682                	jalr	a3
   10ee0:	bf49                	j	10e72 <__call_exitprocs+0x5e>

00010ee2 <atexit>:
   10ee2:	85aa                	mv	a1,a0
   10ee4:	4681                	li	a3,0
   10ee6:	4601                	li	a2,0
   10ee8:	4501                	li	a0,0
   10eea:	07c0306f          	j	13f66 <__register_exitproc>

00010eee <_malloc_trim_r>:
   10eee:	1101                	addi	sp,sp,-32
   10ef0:	c64e                	sw	s3,12(sp)
   10ef2:	69ed                	lui	s3,0x1b
   10ef4:	cc22                	sw	s0,24(sp)
   10ef6:	ca26                	sw	s1,20(sp)
   10ef8:	c84a                	sw	s2,16(sp)
   10efa:	c452                	sw	s4,8(sp)
   10efc:	ce06                	sw	ra,28(sp)
   10efe:	8a2e                	mv	s4,a1
   10f00:	892a                	mv	s2,a0
   10f02:	14098993          	addi	s3,s3,320 # 1b140 <__malloc_av_>
   10f06:	07b000ef          	jal	11780 <__malloc_lock>
   10f0a:	0089a703          	lw	a4,8(s3)
   10f0e:	6785                	lui	a5,0x1
   10f10:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   10f12:	4344                	lw	s1,4(a4)
   10f14:	6705                	lui	a4,0x1
   10f16:	98f1                	andi	s1,s1,-4
   10f18:	00f48433          	add	s0,s1,a5
   10f1c:	41440433          	sub	s0,s0,s4
   10f20:	8031                	srli	s0,s0,0xc
   10f22:	147d                	addi	s0,s0,-1
   10f24:	0432                	slli	s0,s0,0xc
   10f26:	00e44b63          	blt	s0,a4,10f3c <_malloc_trim_r+0x4e>
   10f2a:	4581                	li	a1,0
   10f2c:	854a                	mv	a0,s2
   10f2e:	4cd020ef          	jal	13bfa <_sbrk_r>
   10f32:	0089a783          	lw	a5,8(s3)
   10f36:	97a6                	add	a5,a5,s1
   10f38:	00f50e63          	beq	a0,a5,10f54 <_malloc_trim_r+0x66>
   10f3c:	854a                	mv	a0,s2
   10f3e:	045000ef          	jal	11782 <__malloc_unlock>
   10f42:	40f2                	lw	ra,28(sp)
   10f44:	4462                	lw	s0,24(sp)
   10f46:	44d2                	lw	s1,20(sp)
   10f48:	4942                	lw	s2,16(sp)
   10f4a:	49b2                	lw	s3,12(sp)
   10f4c:	4a22                	lw	s4,8(sp)
   10f4e:	4501                	li	a0,0
   10f50:	6105                	addi	sp,sp,32
   10f52:	8082                	ret
   10f54:	408005b3          	neg	a1,s0
   10f58:	854a                	mv	a0,s2
   10f5a:	4a1020ef          	jal	13bfa <_sbrk_r>
   10f5e:	57fd                	li	a5,-1
   10f60:	02f50963          	beq	a0,a5,10f92 <_malloc_trim_r+0xa4>
   10f64:	09418793          	addi	a5,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   10f68:	4398                	lw	a4,0(a5)
   10f6a:	0089a683          	lw	a3,8(s3)
   10f6e:	8c81                	sub	s1,s1,s0
   10f70:	0014e493          	ori	s1,s1,1
   10f74:	8f01                	sub	a4,a4,s0
   10f76:	854a                	mv	a0,s2
   10f78:	c2c4                	sw	s1,4(a3)
   10f7a:	c398                	sw	a4,0(a5)
   10f7c:	007000ef          	jal	11782 <__malloc_unlock>
   10f80:	40f2                	lw	ra,28(sp)
   10f82:	4462                	lw	s0,24(sp)
   10f84:	44d2                	lw	s1,20(sp)
   10f86:	4942                	lw	s2,16(sp)
   10f88:	49b2                	lw	s3,12(sp)
   10f8a:	4a22                	lw	s4,8(sp)
   10f8c:	4505                	li	a0,1
   10f8e:	6105                	addi	sp,sp,32
   10f90:	8082                	ret
   10f92:	4581                	li	a1,0
   10f94:	854a                	mv	a0,s2
   10f96:	465020ef          	jal	13bfa <_sbrk_r>
   10f9a:	0089a703          	lw	a4,8(s3)
   10f9e:	46bd                	li	a3,15
   10fa0:	40e507b3          	sub	a5,a0,a4
   10fa4:	f8f6dce3          	bge	a3,a5,10f3c <_malloc_trim_r+0x4e>
   10fa8:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   10fac:	0017e793          	ori	a5,a5,1
   10fb0:	c35c                	sw	a5,4(a4)
   10fb2:	8d15                	sub	a0,a0,a3
   10fb4:	08a1aa23          	sw	a0,148(gp) # 1b8a4 <__malloc_current_mallinfo>
   10fb8:	b751                	j	10f3c <_malloc_trim_r+0x4e>

00010fba <_free_r>:
   10fba:	10058a63          	beqz	a1,110ce <_free_r+0x114>
   10fbe:	1141                	addi	sp,sp,-16
   10fc0:	c422                	sw	s0,8(sp)
   10fc2:	c226                	sw	s1,4(sp)
   10fc4:	842e                	mv	s0,a1
   10fc6:	84aa                	mv	s1,a0
   10fc8:	c606                	sw	ra,12(sp)
   10fca:	7b6000ef          	jal	11780 <__malloc_lock>
   10fce:	ffc42503          	lw	a0,-4(s0)
   10fd2:	ff840713          	addi	a4,s0,-8
   10fd6:	65ed                	lui	a1,0x1b
   10fd8:	ffe57793          	andi	a5,a0,-2
   10fdc:	00f70633          	add	a2,a4,a5
   10fe0:	14058593          	addi	a1,a1,320 # 1b140 <__malloc_av_>
   10fe4:	4254                	lw	a3,4(a2)
   10fe6:	0085a803          	lw	a6,8(a1)
   10fea:	9af1                	andi	a3,a3,-4
   10fec:	12c80363          	beq	a6,a2,11112 <_free_r+0x158>
   10ff0:	c254                	sw	a3,4(a2)
   10ff2:	8905                	andi	a0,a0,1
   10ff4:	00d60833          	add	a6,a2,a3
   10ff8:	e935                	bnez	a0,1106c <_free_r+0xb2>
   10ffa:	ff842303          	lw	t1,-8(s0)
   10ffe:	00482803          	lw	a6,4(a6)
   11002:	656d                	lui	a0,0x1b
   11004:	40670733          	sub	a4,a4,t1
   11008:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   1100c:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   11010:	979a                	add	a5,a5,t1
   11012:	00187813          	andi	a6,a6,1
   11016:	0ea88163          	beq	a7,a0,110f8 <_free_r+0x13e>
   1101a:	00c72303          	lw	t1,12(a4)
   1101e:	0068a623          	sw	t1,12(a7)
   11022:	01132423          	sw	a7,8(t1)
   11026:	10080e63          	beqz	a6,11142 <_free_r+0x188>
   1102a:	0017e693          	ori	a3,a5,1
   1102e:	c354                	sw	a3,4(a4)
   11030:	c21c                	sw	a5,0(a2)
   11032:	1ff00693          	li	a3,511
   11036:	04f6e863          	bltu	a3,a5,11086 <_free_r+0xcc>
   1103a:	ff87f693          	andi	a3,a5,-8
   1103e:	06a1                	addi	a3,a3,8
   11040:	41c8                	lw	a0,4(a1)
   11042:	96ae                	add	a3,a3,a1
   11044:	4290                	lw	a2,0(a3)
   11046:	0057d813          	srli	a6,a5,0x5
   1104a:	4785                	li	a5,1
   1104c:	010797b3          	sll	a5,a5,a6
   11050:	8fc9                	or	a5,a5,a0
   11052:	ff868513          	addi	a0,a3,-8
   11056:	c748                	sw	a0,12(a4)
   11058:	c710                	sw	a2,8(a4)
   1105a:	c1dc                	sw	a5,4(a1)
   1105c:	c298                	sw	a4,0(a3)
   1105e:	c658                	sw	a4,12(a2)
   11060:	4422                	lw	s0,8(sp)
   11062:	40b2                	lw	ra,12(sp)
   11064:	8526                	mv	a0,s1
   11066:	4492                	lw	s1,4(sp)
   11068:	0141                	addi	sp,sp,16
   1106a:	af21                	j	11782 <__malloc_unlock>
   1106c:	00482503          	lw	a0,4(a6)
   11070:	8905                	andi	a0,a0,1
   11072:	cd39                	beqz	a0,110d0 <_free_r+0x116>
   11074:	0017e693          	ori	a3,a5,1
   11078:	fed42e23          	sw	a3,-4(s0)
   1107c:	c21c                	sw	a5,0(a2)
   1107e:	1ff00693          	li	a3,511
   11082:	faf6fce3          	bgeu	a3,a5,1103a <_free_r+0x80>
   11086:	0097d693          	srli	a3,a5,0x9
   1108a:	4611                	li	a2,4
   1108c:	0ad66d63          	bltu	a2,a3,11146 <_free_r+0x18c>
   11090:	0067d693          	srli	a3,a5,0x6
   11094:	03968513          	addi	a0,a3,57
   11098:	03868613          	addi	a2,a3,56
   1109c:	050e                	slli	a0,a0,0x3
   1109e:	952e                	add	a0,a0,a1
   110a0:	4114                	lw	a3,0(a0)
   110a2:	1561                	addi	a0,a0,-8
   110a4:	00d51663          	bne	a0,a3,110b0 <_free_r+0xf6>
   110a8:	a8f1                	j	11184 <_free_r+0x1ca>
   110aa:	4694                	lw	a3,8(a3)
   110ac:	00d50663          	beq	a0,a3,110b8 <_free_r+0xfe>
   110b0:	42d0                	lw	a2,4(a3)
   110b2:	9a71                	andi	a2,a2,-4
   110b4:	fec7ebe3          	bltu	a5,a2,110aa <_free_r+0xf0>
   110b8:	46c8                	lw	a0,12(a3)
   110ba:	c748                	sw	a0,12(a4)
   110bc:	c714                	sw	a3,8(a4)
   110be:	4422                	lw	s0,8(sp)
   110c0:	c518                	sw	a4,8(a0)
   110c2:	40b2                	lw	ra,12(sp)
   110c4:	8526                	mv	a0,s1
   110c6:	4492                	lw	s1,4(sp)
   110c8:	c6d8                	sw	a4,12(a3)
   110ca:	0141                	addi	sp,sp,16
   110cc:	ad5d                	j	11782 <__malloc_unlock>
   110ce:	8082                	ret
   110d0:	656d                	lui	a0,0x1b
   110d2:	97b6                	add	a5,a5,a3
   110d4:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   110d8:	4614                	lw	a3,8(a2)
   110da:	08a68b63          	beq	a3,a0,11170 <_free_r+0x1b6>
   110de:	00c62803          	lw	a6,12(a2)
   110e2:	0017e513          	ori	a0,a5,1
   110e6:	00f70633          	add	a2,a4,a5
   110ea:	0106a623          	sw	a6,12(a3)
   110ee:	00d82423          	sw	a3,8(a6)
   110f2:	c348                	sw	a0,4(a4)
   110f4:	c21c                	sw	a5,0(a2)
   110f6:	bf35                	j	11032 <_free_r+0x78>
   110f8:	0c081d63          	bnez	a6,111d2 <_free_r+0x218>
   110fc:	460c                	lw	a1,8(a2)
   110fe:	4650                	lw	a2,12(a2)
   11100:	96be                	add	a3,a3,a5
   11102:	0016e793          	ori	a5,a3,1
   11106:	c5d0                	sw	a2,12(a1)
   11108:	c60c                	sw	a1,8(a2)
   1110a:	c35c                	sw	a5,4(a4)
   1110c:	9736                	add	a4,a4,a3
   1110e:	c314                	sw	a3,0(a4)
   11110:	bf81                	j	11060 <_free_r+0xa6>
   11112:	8905                	andi	a0,a0,1
   11114:	96be                	add	a3,a3,a5
   11116:	e909                	bnez	a0,11128 <_free_r+0x16e>
   11118:	ff842503          	lw	a0,-8(s0)
   1111c:	8f09                	sub	a4,a4,a0
   1111e:	475c                	lw	a5,12(a4)
   11120:	4710                	lw	a2,8(a4)
   11122:	96aa                	add	a3,a3,a0
   11124:	c65c                	sw	a5,12(a2)
   11126:	c790                	sw	a2,8(a5)
   11128:	0016e613          	ori	a2,a3,1
   1112c:	f1c1a783          	lw	a5,-228(gp) # 1b72c <__malloc_trim_threshold>
   11130:	c350                	sw	a2,4(a4)
   11132:	c598                	sw	a4,8(a1)
   11134:	f2f6e6e3          	bltu	a3,a5,11060 <_free_r+0xa6>
   11138:	f341a583          	lw	a1,-204(gp) # 1b744 <__malloc_top_pad>
   1113c:	8526                	mv	a0,s1
   1113e:	3b45                	jal	10eee <_malloc_trim_r>
   11140:	b705                	j	11060 <_free_r+0xa6>
   11142:	97b6                	add	a5,a5,a3
   11144:	bf51                	j	110d8 <_free_r+0x11e>
   11146:	4651                	li	a2,20
   11148:	00d67e63          	bgeu	a2,a3,11164 <_free_r+0x1aa>
   1114c:	05400613          	li	a2,84
   11150:	04d66463          	bltu	a2,a3,11198 <_free_r+0x1de>
   11154:	00c7d693          	srli	a3,a5,0xc
   11158:	06f68513          	addi	a0,a3,111
   1115c:	06e68613          	addi	a2,a3,110
   11160:	050e                	slli	a0,a0,0x3
   11162:	bf35                	j	1109e <_free_r+0xe4>
   11164:	05c68513          	addi	a0,a3,92
   11168:	05b68613          	addi	a2,a3,91
   1116c:	050e                	slli	a0,a0,0x3
   1116e:	bf05                	j	1109e <_free_r+0xe4>
   11170:	c9d8                	sw	a4,20(a1)
   11172:	c998                	sw	a4,16(a1)
   11174:	0017e693          	ori	a3,a5,1
   11178:	c748                	sw	a0,12(a4)
   1117a:	c708                	sw	a0,8(a4)
   1117c:	c354                	sw	a3,4(a4)
   1117e:	973e                	add	a4,a4,a5
   11180:	c31c                	sw	a5,0(a4)
   11182:	bdf9                	j	11060 <_free_r+0xa6>
   11184:	0045a803          	lw	a6,4(a1)
   11188:	8609                	srai	a2,a2,0x2
   1118a:	4785                	li	a5,1
   1118c:	00c797b3          	sll	a5,a5,a2
   11190:	0107e7b3          	or	a5,a5,a6
   11194:	c1dc                	sw	a5,4(a1)
   11196:	b715                	j	110ba <_free_r+0x100>
   11198:	15400613          	li	a2,340
   1119c:	00d66a63          	bltu	a2,a3,111b0 <_free_r+0x1f6>
   111a0:	00f7d693          	srli	a3,a5,0xf
   111a4:	07868513          	addi	a0,a3,120
   111a8:	07768613          	addi	a2,a3,119
   111ac:	050e                	slli	a0,a0,0x3
   111ae:	bdc5                	j	1109e <_free_r+0xe4>
   111b0:	55400613          	li	a2,1364
   111b4:	00d66a63          	bltu	a2,a3,111c8 <_free_r+0x20e>
   111b8:	0127d693          	srli	a3,a5,0x12
   111bc:	07d68513          	addi	a0,a3,125
   111c0:	07c68613          	addi	a2,a3,124
   111c4:	050e                	slli	a0,a0,0x3
   111c6:	bde1                	j	1109e <_free_r+0xe4>
   111c8:	3f800513          	li	a0,1016
   111cc:	07e00613          	li	a2,126
   111d0:	b5f9                	j	1109e <_free_r+0xe4>
   111d2:	0017e693          	ori	a3,a5,1
   111d6:	c354                	sw	a3,4(a4)
   111d8:	c21c                	sw	a5,0(a2)
   111da:	b559                	j	11060 <_free_r+0xa6>

000111dc <_malloc_r>:
   111dc:	7179                	addi	sp,sp,-48
   111de:	ce4e                	sw	s3,28(sp)
   111e0:	d606                	sw	ra,44(sp)
   111e2:	d422                	sw	s0,40(sp)
   111e4:	d226                	sw	s1,36(sp)
   111e6:	d04a                	sw	s2,32(sp)
   111e8:	00b58793          	addi	a5,a1,11
   111ec:	4759                	li	a4,22
   111ee:	89aa                	mv	s3,a0
   111f0:	04f76863          	bltu	a4,a5,11240 <_malloc_r+0x64>
   111f4:	47c1                	li	a5,16
   111f6:	16b7e863          	bltu	a5,a1,11366 <_malloc_r+0x18a>
   111fa:	2359                	jal	11780 <__malloc_lock>
   111fc:	47e1                	li	a5,24
   111fe:	4589                	li	a1,2
   11200:	44c1                	li	s1,16
   11202:	696d                	lui	s2,0x1b
   11204:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   11208:	97ca                	add	a5,a5,s2
   1120a:	43c0                	lw	s0,4(a5)
   1120c:	ff878713          	addi	a4,a5,-8
   11210:	24e40d63          	beq	s0,a4,1146a <_malloc_r+0x28e>
   11214:	405c                	lw	a5,4(s0)
   11216:	4454                	lw	a3,12(s0)
   11218:	4410                	lw	a2,8(s0)
   1121a:	9bf1                	andi	a5,a5,-4
   1121c:	97a2                	add	a5,a5,s0
   1121e:	43d8                	lw	a4,4(a5)
   11220:	c654                	sw	a3,12(a2)
   11222:	c690                	sw	a2,8(a3)
   11224:	00176713          	ori	a4,a4,1
   11228:	854e                	mv	a0,s3
   1122a:	c3d8                	sw	a4,4(a5)
   1122c:	2b99                	jal	11782 <__malloc_unlock>
   1122e:	00840513          	addi	a0,s0,8
   11232:	50b2                	lw	ra,44(sp)
   11234:	5422                	lw	s0,40(sp)
   11236:	5492                	lw	s1,36(sp)
   11238:	5902                	lw	s2,32(sp)
   1123a:	49f2                	lw	s3,28(sp)
   1123c:	6145                	addi	sp,sp,48
   1123e:	8082                	ret
   11240:	ff87f493          	andi	s1,a5,-8
   11244:	1207c163          	bltz	a5,11366 <_malloc_r+0x18a>
   11248:	10b4ef63          	bltu	s1,a1,11366 <_malloc_r+0x18a>
   1124c:	2b15                	jal	11780 <__malloc_lock>
   1124e:	1f700793          	li	a5,503
   11252:	2c97fb63          	bgeu	a5,s1,11528 <_malloc_r+0x34c>
   11256:	0094d793          	srli	a5,s1,0x9
   1125a:	10078b63          	beqz	a5,11370 <_malloc_r+0x194>
   1125e:	4711                	li	a4,4
   11260:	24f76a63          	bltu	a4,a5,114b4 <_malloc_r+0x2d8>
   11264:	0064d793          	srli	a5,s1,0x6
   11268:	03978593          	addi	a1,a5,57
   1126c:	03878813          	addi	a6,a5,56
   11270:	00359613          	slli	a2,a1,0x3
   11274:	696d                	lui	s2,0x1b
   11276:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   1127a:	964a                	add	a2,a2,s2
   1127c:	4240                	lw	s0,4(a2)
   1127e:	1661                	addi	a2,a2,-8
   11280:	02860163          	beq	a2,s0,112a2 <_malloc_r+0xc6>
   11284:	453d                	li	a0,15
   11286:	a039                	j	11294 <_malloc_r+0xb8>
   11288:	4454                	lw	a3,12(s0)
   1128a:	1c075e63          	bgez	a4,11466 <_malloc_r+0x28a>
   1128e:	00d60a63          	beq	a2,a3,112a2 <_malloc_r+0xc6>
   11292:	8436                	mv	s0,a3
   11294:	405c                	lw	a5,4(s0)
   11296:	9bf1                	andi	a5,a5,-4
   11298:	40978733          	sub	a4,a5,s1
   1129c:	fee556e3          	bge	a0,a4,11288 <_malloc_r+0xac>
   112a0:	85c2                	mv	a1,a6
   112a2:	01092403          	lw	s0,16(s2)
   112a6:	686d                	lui	a6,0x1b
   112a8:	14880813          	addi	a6,a6,328 # 1b148 <__malloc_av_+0x8>
   112ac:	1b040a63          	beq	s0,a6,11460 <_malloc_r+0x284>
   112b0:	405c                	lw	a5,4(s0)
   112b2:	46bd                	li	a3,15
   112b4:	9bf1                	andi	a5,a5,-4
   112b6:	40978733          	sub	a4,a5,s1
   112ba:	26e6cc63          	blt	a3,a4,11532 <_malloc_r+0x356>
   112be:	01092a23          	sw	a6,20(s2)
   112c2:	01092823          	sw	a6,16(s2)
   112c6:	24075763          	bgez	a4,11514 <_malloc_r+0x338>
   112ca:	1ff00713          	li	a4,511
   112ce:	00492503          	lw	a0,4(s2)
   112d2:	1af76163          	bltu	a4,a5,11474 <_malloc_r+0x298>
   112d6:	ff87f713          	andi	a4,a5,-8
   112da:	0721                	addi	a4,a4,8
   112dc:	974a                	add	a4,a4,s2
   112de:	4314                	lw	a3,0(a4)
   112e0:	0057d613          	srli	a2,a5,0x5
   112e4:	4785                	li	a5,1
   112e6:	00c797b3          	sll	a5,a5,a2
   112ea:	8d5d                	or	a0,a0,a5
   112ec:	ff870793          	addi	a5,a4,-8
   112f0:	c45c                	sw	a5,12(s0)
   112f2:	c414                	sw	a3,8(s0)
   112f4:	00a92223          	sw	a0,4(s2)
   112f8:	c300                	sw	s0,0(a4)
   112fa:	c6c0                	sw	s0,12(a3)
   112fc:	4025d793          	srai	a5,a1,0x2
   11300:	4605                	li	a2,1
   11302:	00f61633          	sll	a2,a2,a5
   11306:	06c56c63          	bltu	a0,a2,1137e <_malloc_r+0x1a2>
   1130a:	00a677b3          	and	a5,a2,a0
   1130e:	ef81                	bnez	a5,11326 <_malloc_r+0x14a>
   11310:	0606                	slli	a2,a2,0x1
   11312:	99f1                	andi	a1,a1,-4
   11314:	00a677b3          	and	a5,a2,a0
   11318:	0591                	addi	a1,a1,4
   1131a:	e791                	bnez	a5,11326 <_malloc_r+0x14a>
   1131c:	0606                	slli	a2,a2,0x1
   1131e:	00a677b3          	and	a5,a2,a0
   11322:	0591                	addi	a1,a1,4
   11324:	dfe5                	beqz	a5,1131c <_malloc_r+0x140>
   11326:	48bd                	li	a7,15
   11328:	00359313          	slli	t1,a1,0x3
   1132c:	934a                	add	t1,t1,s2
   1132e:	851a                	mv	a0,t1
   11330:	455c                	lw	a5,12(a0)
   11332:	8e2e                	mv	t3,a1
   11334:	1af50063          	beq	a0,a5,114d4 <_malloc_r+0x2f8>
   11338:	43d8                	lw	a4,4(a5)
   1133a:	843e                	mv	s0,a5
   1133c:	47dc                	lw	a5,12(a5)
   1133e:	9b71                	andi	a4,a4,-4
   11340:	409706b3          	sub	a3,a4,s1
   11344:	18d8cf63          	blt	a7,a3,114e2 <_malloc_r+0x306>
   11348:	fe06c6e3          	bltz	a3,11334 <_malloc_r+0x158>
   1134c:	9722                	add	a4,a4,s0
   1134e:	4354                	lw	a3,4(a4)
   11350:	4410                	lw	a2,8(s0)
   11352:	854e                	mv	a0,s3
   11354:	0016e693          	ori	a3,a3,1
   11358:	c354                	sw	a3,4(a4)
   1135a:	c65c                	sw	a5,12(a2)
   1135c:	c790                	sw	a2,8(a5)
   1135e:	2115                	jal	11782 <__malloc_unlock>
   11360:	00840513          	addi	a0,s0,8
   11364:	b5f9                	j	11232 <_malloc_r+0x56>
   11366:	47b1                	li	a5,12
   11368:	00f9a023          	sw	a5,0(s3)
   1136c:	4501                	li	a0,0
   1136e:	b5d1                	j	11232 <_malloc_r+0x56>
   11370:	20000613          	li	a2,512
   11374:	04000593          	li	a1,64
   11378:	03f00813          	li	a6,63
   1137c:	bde5                	j	11274 <_malloc_r+0x98>
   1137e:	00892403          	lw	s0,8(s2)
   11382:	c85a                	sw	s6,16(sp)
   11384:	405c                	lw	a5,4(s0)
   11386:	ffc7fb13          	andi	s6,a5,-4
   1138a:	009b6763          	bltu	s6,s1,11398 <_malloc_r+0x1bc>
   1138e:	409b0733          	sub	a4,s6,s1
   11392:	47bd                	li	a5,15
   11394:	0ae7c163          	blt	a5,a4,11436 <_malloc_r+0x25a>
   11398:	c266                	sw	s9,4(sp)
   1139a:	ca56                	sw	s5,20(sp)
   1139c:	f181a703          	lw	a4,-232(gp) # 1b728 <__malloc_sbrk_base>
   113a0:	f341aa83          	lw	s5,-204(gp) # 1b744 <__malloc_top_pad>
   113a4:	cc52                	sw	s4,24(sp)
   113a6:	c65e                	sw	s7,12(sp)
   113a8:	57fd                	li	a5,-1
   113aa:	01640a33          	add	s4,s0,s6
   113ae:	9aa6                	add	s5,s5,s1
   113b0:	2cf70763          	beq	a4,a5,1167e <_malloc_r+0x4a2>
   113b4:	6785                	lui	a5,0x1
   113b6:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   113b8:	9abe                	add	s5,s5,a5
   113ba:	77fd                	lui	a5,0xfffff
   113bc:	00fafab3          	and	s5,s5,a5
   113c0:	85d6                	mv	a1,s5
   113c2:	854e                	mv	a0,s3
   113c4:	037020ef          	jal	13bfa <_sbrk_r>
   113c8:	57fd                	li	a5,-1
   113ca:	8baa                	mv	s7,a0
   113cc:	32f50963          	beq	a0,a5,116fe <_malloc_r+0x522>
   113d0:	c462                	sw	s8,8(sp)
   113d2:	19456e63          	bltu	a0,s4,1156e <_malloc_r+0x392>
   113d6:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   113da:	000c2583          	lw	a1,0(s8)
   113de:	95d6                	add	a1,a1,s5
   113e0:	00bc2023          	sw	a1,0(s8)
   113e4:	872e                	mv	a4,a1
   113e6:	1eaa1863          	bne	s4,a0,115d6 <_malloc_r+0x3fa>
   113ea:	01451793          	slli	a5,a0,0x14
   113ee:	1e079463          	bnez	a5,115d6 <_malloc_r+0x3fa>
   113f2:	00892b83          	lw	s7,8(s2)
   113f6:	015b07b3          	add	a5,s6,s5
   113fa:	0017e793          	ori	a5,a5,1
   113fe:	00fba223          	sw	a5,4(s7)
   11402:	f301a683          	lw	a3,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   11406:	00b6f463          	bgeu	a3,a1,1140e <_malloc_r+0x232>
   1140a:	f2b1a823          	sw	a1,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   1140e:	f2c1a683          	lw	a3,-212(gp) # 1b73c <__malloc_max_total_mem>
   11412:	00b6f463          	bgeu	a3,a1,1141a <_malloc_r+0x23e>
   11416:	f2b1a623          	sw	a1,-212(gp) # 1b73c <__malloc_max_total_mem>
   1141a:	4c22                	lw	s8,8(sp)
   1141c:	845e                	mv	s0,s7
   1141e:	9bf1                	andi	a5,a5,-4
   11420:	40978733          	sub	a4,a5,s1
   11424:	2897eb63          	bltu	a5,s1,116ba <_malloc_r+0x4de>
   11428:	47bd                	li	a5,15
   1142a:	28e7d863          	bge	a5,a4,116ba <_malloc_r+0x4de>
   1142e:	4a62                	lw	s4,24(sp)
   11430:	4ad2                	lw	s5,20(sp)
   11432:	4bb2                	lw	s7,12(sp)
   11434:	4c92                	lw	s9,4(sp)
   11436:	0014e793          	ori	a5,s1,1
   1143a:	c05c                	sw	a5,4(s0)
   1143c:	94a2                	add	s1,s1,s0
   1143e:	00992423          	sw	s1,8(s2)
   11442:	00176713          	ori	a4,a4,1
   11446:	854e                	mv	a0,s3
   11448:	c0d8                	sw	a4,4(s1)
   1144a:	2e25                	jal	11782 <__malloc_unlock>
   1144c:	50b2                	lw	ra,44(sp)
   1144e:	00840513          	addi	a0,s0,8
   11452:	5422                	lw	s0,40(sp)
   11454:	4b42                	lw	s6,16(sp)
   11456:	5492                	lw	s1,36(sp)
   11458:	5902                	lw	s2,32(sp)
   1145a:	49f2                	lw	s3,28(sp)
   1145c:	6145                	addi	sp,sp,48
   1145e:	8082                	ret
   11460:	00492503          	lw	a0,4(s2)
   11464:	bd61                	j	112fc <_malloc_r+0x120>
   11466:	4410                	lw	a2,8(s0)
   11468:	bb55                	j	1121c <_malloc_r+0x40>
   1146a:	47c0                	lw	s0,12(a5)
   1146c:	0589                	addi	a1,a1,2
   1146e:	e2878ae3          	beq	a5,s0,112a2 <_malloc_r+0xc6>
   11472:	b34d                	j	11214 <_malloc_r+0x38>
   11474:	0097d713          	srli	a4,a5,0x9
   11478:	4691                	li	a3,4
   1147a:	0ee6f263          	bgeu	a3,a4,1155e <_malloc_r+0x382>
   1147e:	46d1                	li	a3,20
   11480:	24e6e663          	bltu	a3,a4,116cc <_malloc_r+0x4f0>
   11484:	05c70613          	addi	a2,a4,92
   11488:	05b70693          	addi	a3,a4,91
   1148c:	060e                	slli	a2,a2,0x3
   1148e:	964a                	add	a2,a2,s2
   11490:	4218                	lw	a4,0(a2)
   11492:	1661                	addi	a2,a2,-8
   11494:	00e61663          	bne	a2,a4,114a0 <_malloc_r+0x2c4>
   11498:	a2ed                	j	11682 <_malloc_r+0x4a6>
   1149a:	4718                	lw	a4,8(a4)
   1149c:	00e60663          	beq	a2,a4,114a8 <_malloc_r+0x2cc>
   114a0:	4354                	lw	a3,4(a4)
   114a2:	9af1                	andi	a3,a3,-4
   114a4:	fed7ebe3          	bltu	a5,a3,1149a <_malloc_r+0x2be>
   114a8:	4750                	lw	a2,12(a4)
   114aa:	c450                	sw	a2,12(s0)
   114ac:	c418                	sw	a4,8(s0)
   114ae:	c600                	sw	s0,8(a2)
   114b0:	c740                	sw	s0,12(a4)
   114b2:	b5a9                	j	112fc <_malloc_r+0x120>
   114b4:	4751                	li	a4,20
   114b6:	0cf77363          	bgeu	a4,a5,1157c <_malloc_r+0x3a0>
   114ba:	05400713          	li	a4,84
   114be:	22f76363          	bltu	a4,a5,116e4 <_malloc_r+0x508>
   114c2:	00c4d793          	srli	a5,s1,0xc
   114c6:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe3613>
   114ca:	06e78813          	addi	a6,a5,110
   114ce:	00359613          	slli	a2,a1,0x3
   114d2:	b34d                	j	11274 <_malloc_r+0x98>
   114d4:	0e05                	addi	t3,t3,1
   114d6:	003e7793          	andi	a5,t3,3
   114da:	0521                	addi	a0,a0,8
   114dc:	cfc5                	beqz	a5,11594 <_malloc_r+0x3b8>
   114de:	455c                	lw	a5,12(a0)
   114e0:	bd91                	j	11334 <_malloc_r+0x158>
   114e2:	4410                	lw	a2,8(s0)
   114e4:	0014e593          	ori	a1,s1,1
   114e8:	c04c                	sw	a1,4(s0)
   114ea:	c65c                	sw	a5,12(a2)
   114ec:	c790                	sw	a2,8(a5)
   114ee:	94a2                	add	s1,s1,s0
   114f0:	00992a23          	sw	s1,20(s2)
   114f4:	00992823          	sw	s1,16(s2)
   114f8:	0016e793          	ori	a5,a3,1
   114fc:	0104a623          	sw	a6,12(s1)
   11500:	0104a423          	sw	a6,8(s1)
   11504:	c0dc                	sw	a5,4(s1)
   11506:	9722                	add	a4,a4,s0
   11508:	854e                	mv	a0,s3
   1150a:	c314                	sw	a3,0(a4)
   1150c:	2c9d                	jal	11782 <__malloc_unlock>
   1150e:	00840513          	addi	a0,s0,8
   11512:	b305                	j	11232 <_malloc_r+0x56>
   11514:	97a2                	add	a5,a5,s0
   11516:	43d8                	lw	a4,4(a5)
   11518:	854e                	mv	a0,s3
   1151a:	00176713          	ori	a4,a4,1
   1151e:	c3d8                	sw	a4,4(a5)
   11520:	248d                	jal	11782 <__malloc_unlock>
   11522:	00840513          	addi	a0,s0,8
   11526:	b331                	j	11232 <_malloc_r+0x56>
   11528:	0034d593          	srli	a1,s1,0x3
   1152c:	00848793          	addi	a5,s1,8
   11530:	b9c9                	j	11202 <_malloc_r+0x26>
   11532:	0014e693          	ori	a3,s1,1
   11536:	c054                	sw	a3,4(s0)
   11538:	94a2                	add	s1,s1,s0
   1153a:	00992a23          	sw	s1,20(s2)
   1153e:	00992823          	sw	s1,16(s2)
   11542:	00176693          	ori	a3,a4,1
   11546:	0104a623          	sw	a6,12(s1)
   1154a:	0104a423          	sw	a6,8(s1)
   1154e:	c0d4                	sw	a3,4(s1)
   11550:	97a2                	add	a5,a5,s0
   11552:	854e                	mv	a0,s3
   11554:	c398                	sw	a4,0(a5)
   11556:	2435                	jal	11782 <__malloc_unlock>
   11558:	00840513          	addi	a0,s0,8
   1155c:	b9d9                	j	11232 <_malloc_r+0x56>
   1155e:	0067d713          	srli	a4,a5,0x6
   11562:	03970613          	addi	a2,a4,57
   11566:	03870693          	addi	a3,a4,56
   1156a:	060e                	slli	a2,a2,0x3
   1156c:	b70d                	j	1148e <_malloc_r+0x2b2>
   1156e:	05240d63          	beq	s0,s2,115c8 <_malloc_r+0x3ec>
   11572:	00892403          	lw	s0,8(s2)
   11576:	4c22                	lw	s8,8(sp)
   11578:	405c                	lw	a5,4(s0)
   1157a:	b555                	j	1141e <_malloc_r+0x242>
   1157c:	05c78593          	addi	a1,a5,92
   11580:	05b78813          	addi	a6,a5,91
   11584:	00359613          	slli	a2,a1,0x3
   11588:	b1f5                	j	11274 <_malloc_r+0x98>
   1158a:	00832783          	lw	a5,8(t1)
   1158e:	15fd                	addi	a1,a1,-1
   11590:	1e679563          	bne	a5,t1,1177a <_malloc_r+0x59e>
   11594:	0035f793          	andi	a5,a1,3
   11598:	1361                	addi	t1,t1,-8
   1159a:	fbe5                	bnez	a5,1158a <_malloc_r+0x3ae>
   1159c:	00492703          	lw	a4,4(s2)
   115a0:	fff64793          	not	a5,a2
   115a4:	8ff9                	and	a5,a5,a4
   115a6:	00f92223          	sw	a5,4(s2)
   115aa:	0606                	slli	a2,a2,0x1
   115ac:	dcc7e9e3          	bltu	a5,a2,1137e <_malloc_r+0x1a2>
   115b0:	dc0607e3          	beqz	a2,1137e <_malloc_r+0x1a2>
   115b4:	00f67733          	and	a4,a2,a5
   115b8:	e711                	bnez	a4,115c4 <_malloc_r+0x3e8>
   115ba:	0606                	slli	a2,a2,0x1
   115bc:	00f67733          	and	a4,a2,a5
   115c0:	0e11                	addi	t3,t3,4
   115c2:	df65                	beqz	a4,115ba <_malloc_r+0x3de>
   115c4:	85f2                	mv	a1,t3
   115c6:	b38d                	j	11328 <_malloc_r+0x14c>
   115c8:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   115cc:	000c2703          	lw	a4,0(s8)
   115d0:	9756                	add	a4,a4,s5
   115d2:	00ec2023          	sw	a4,0(s8)
   115d6:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   115da:	57fd                	li	a5,-1
   115dc:	12f68563          	beq	a3,a5,11706 <_malloc_r+0x52a>
   115e0:	414b87b3          	sub	a5,s7,s4
   115e4:	97ba                	add	a5,a5,a4
   115e6:	00fc2023          	sw	a5,0(s8)
   115ea:	007bfc93          	andi	s9,s7,7
   115ee:	0a0c8263          	beqz	s9,11692 <_malloc_r+0x4b6>
   115f2:	419b8bb3          	sub	s7,s7,s9
   115f6:	6785                	lui	a5,0x1
   115f8:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   115fa:	0ba1                	addi	s7,s7,8
   115fc:	419785b3          	sub	a1,a5,s9
   11600:	9ade                	add	s5,s5,s7
   11602:	415585b3          	sub	a1,a1,s5
   11606:	05d2                	slli	a1,a1,0x14
   11608:	0145da13          	srli	s4,a1,0x14
   1160c:	85d2                	mv	a1,s4
   1160e:	854e                	mv	a0,s3
   11610:	5ea020ef          	jal	13bfa <_sbrk_r>
   11614:	57fd                	li	a5,-1
   11616:	12f50463          	beq	a0,a5,1173e <_malloc_r+0x562>
   1161a:	41750533          	sub	a0,a0,s7
   1161e:	01450ab3          	add	s5,a0,s4
   11622:	000c2703          	lw	a4,0(s8)
   11626:	01792423          	sw	s7,8(s2)
   1162a:	001ae793          	ori	a5,s5,1
   1162e:	00ea05b3          	add	a1,s4,a4
   11632:	00bc2023          	sw	a1,0(s8)
   11636:	00fba223          	sw	a5,4(s7)
   1163a:	dd2404e3          	beq	s0,s2,11402 <_malloc_r+0x226>
   1163e:	46bd                	li	a3,15
   11640:	0766f963          	bgeu	a3,s6,116b2 <_malloc_r+0x4d6>
   11644:	4058                	lw	a4,4(s0)
   11646:	ff4b0793          	addi	a5,s6,-12
   1164a:	9be1                	andi	a5,a5,-8
   1164c:	8b05                	andi	a4,a4,1
   1164e:	8f5d                	or	a4,a4,a5
   11650:	c058                	sw	a4,4(s0)
   11652:	4615                	li	a2,5
   11654:	00f40733          	add	a4,s0,a5
   11658:	c350                	sw	a2,4(a4)
   1165a:	c710                	sw	a2,8(a4)
   1165c:	00f6e563          	bltu	a3,a5,11666 <_malloc_r+0x48a>
   11660:	004ba783          	lw	a5,4(s7)
   11664:	bb79                	j	11402 <_malloc_r+0x226>
   11666:	00840593          	addi	a1,s0,8
   1166a:	854e                	mv	a0,s3
   1166c:	94fff0ef          	jal	10fba <_free_r>
   11670:	00892b83          	lw	s7,8(s2)
   11674:	000c2583          	lw	a1,0(s8)
   11678:	004ba783          	lw	a5,4(s7)
   1167c:	b359                	j	11402 <_malloc_r+0x226>
   1167e:	0ac1                	addi	s5,s5,16
   11680:	b381                	j	113c0 <_malloc_r+0x1e4>
   11682:	8689                	srai	a3,a3,0x2
   11684:	4785                	li	a5,1
   11686:	00d797b3          	sll	a5,a5,a3
   1168a:	8d5d                	or	a0,a0,a5
   1168c:	00a92223          	sw	a0,4(s2)
   11690:	bd29                	j	114aa <_malloc_r+0x2ce>
   11692:	015b85b3          	add	a1,s7,s5
   11696:	40b005b3          	neg	a1,a1
   1169a:	05d2                	slli	a1,a1,0x14
   1169c:	0145da13          	srli	s4,a1,0x14
   116a0:	85d2                	mv	a1,s4
   116a2:	854e                	mv	a0,s3
   116a4:	556020ef          	jal	13bfa <_sbrk_r>
   116a8:	57fd                	li	a5,-1
   116aa:	f6f518e3          	bne	a0,a5,1161a <_malloc_r+0x43e>
   116ae:	4a01                	li	s4,0
   116b0:	bf8d                	j	11622 <_malloc_r+0x446>
   116b2:	4c22                	lw	s8,8(sp)
   116b4:	4785                	li	a5,1
   116b6:	00fba223          	sw	a5,4(s7)
   116ba:	854e                	mv	a0,s3
   116bc:	20d9                	jal	11782 <__malloc_unlock>
   116be:	4501                	li	a0,0
   116c0:	4a62                	lw	s4,24(sp)
   116c2:	4ad2                	lw	s5,20(sp)
   116c4:	4b42                	lw	s6,16(sp)
   116c6:	4bb2                	lw	s7,12(sp)
   116c8:	4c92                	lw	s9,4(sp)
   116ca:	b6a5                	j	11232 <_malloc_r+0x56>
   116cc:	05400693          	li	a3,84
   116d0:	02e6ee63          	bltu	a3,a4,1170c <_malloc_r+0x530>
   116d4:	00c7d713          	srli	a4,a5,0xc
   116d8:	06f70613          	addi	a2,a4,111
   116dc:	06e70693          	addi	a3,a4,110
   116e0:	060e                	slli	a2,a2,0x3
   116e2:	b375                	j	1148e <_malloc_r+0x2b2>
   116e4:	15400713          	li	a4,340
   116e8:	02f76e63          	bltu	a4,a5,11724 <_malloc_r+0x548>
   116ec:	00f4d793          	srli	a5,s1,0xf
   116f0:	07878593          	addi	a1,a5,120
   116f4:	07778813          	addi	a6,a5,119
   116f8:	00359613          	slli	a2,a1,0x3
   116fc:	bea5                	j	11274 <_malloc_r+0x98>
   116fe:	00892403          	lw	s0,8(s2)
   11702:	405c                	lw	a5,4(s0)
   11704:	bb29                	j	1141e <_malloc_r+0x242>
   11706:	f171ac23          	sw	s7,-232(gp) # 1b728 <__malloc_sbrk_base>
   1170a:	b5c5                	j	115ea <_malloc_r+0x40e>
   1170c:	15400693          	li	a3,340
   11710:	02e6ed63          	bltu	a3,a4,1174a <_malloc_r+0x56e>
   11714:	00f7d713          	srli	a4,a5,0xf
   11718:	07870613          	addi	a2,a4,120
   1171c:	07770693          	addi	a3,a4,119
   11720:	060e                	slli	a2,a2,0x3
   11722:	b3b5                	j	1148e <_malloc_r+0x2b2>
   11724:	55400713          	li	a4,1364
   11728:	02f76d63          	bltu	a4,a5,11762 <_malloc_r+0x586>
   1172c:	0124d793          	srli	a5,s1,0x12
   11730:	07d78593          	addi	a1,a5,125
   11734:	07c78813          	addi	a6,a5,124
   11738:	00359613          	slli	a2,a1,0x3
   1173c:	be25                	j	11274 <_malloc_r+0x98>
   1173e:	1ce1                	addi	s9,s9,-8
   11740:	9ae6                	add	s5,s5,s9
   11742:	417a8ab3          	sub	s5,s5,s7
   11746:	4a01                	li	s4,0
   11748:	bde9                	j	11622 <_malloc_r+0x446>
   1174a:	55400693          	li	a3,1364
   1174e:	02e6e163          	bltu	a3,a4,11770 <_malloc_r+0x594>
   11752:	0127d713          	srli	a4,a5,0x12
   11756:	07d70613          	addi	a2,a4,125
   1175a:	07c70693          	addi	a3,a4,124
   1175e:	060e                	slli	a2,a2,0x3
   11760:	b33d                	j	1148e <_malloc_r+0x2b2>
   11762:	3f800613          	li	a2,1016
   11766:	07f00593          	li	a1,127
   1176a:	07e00813          	li	a6,126
   1176e:	b619                	j	11274 <_malloc_r+0x98>
   11770:	3f800613          	li	a2,1016
   11774:	07e00693          	li	a3,126
   11778:	bb19                	j	1148e <_malloc_r+0x2b2>
   1177a:	00492783          	lw	a5,4(s2)
   1177e:	b535                	j	115aa <_malloc_r+0x3ce>

00011780 <__malloc_lock>:
   11780:	8082                	ret

00011782 <__malloc_unlock>:
   11782:	8082                	ret

00011784 <_vfprintf_r>:
   11784:	7145                	addi	sp,sp,-464
   11786:	1c112623          	sw	ra,460(sp)
   1178a:	1c812423          	sw	s0,456(sp)
   1178e:	1c912223          	sw	s1,452(sp)
   11792:	1b612823          	sw	s6,432(sp)
   11796:	84ae                	mv	s1,a1
   11798:	8b32                	mv	s6,a2
   1179a:	ca36                	sw	a3,20(sp)
   1179c:	842a                	mv	s0,a0
   1179e:	c42a                	sw	a0,8(sp)
   117a0:	44e020ef          	jal	13bee <_localeconv_r>
   117a4:	411c                	lw	a5,0(a0)
   117a6:	853e                	mv	a0,a5
   117a8:	d83e                	sw	a5,48(sp)
   117aa:	e06ff0ef          	jal	10db0 <strlen>
   117ae:	d62a                	sw	a0,44(sp)
   117b0:	c982                	sw	zero,208(sp)
   117b2:	cb82                	sw	zero,212(sp)
   117b4:	cd82                	sw	zero,216(sp)
   117b6:	cf82                	sw	zero,220(sp)
   117b8:	c409                	beqz	s0,117c2 <_vfprintf_r+0x3e>
   117ba:	5858                	lw	a4,52(s0)
   117bc:	e319                	bnez	a4,117c2 <_vfprintf_r+0x3e>
   117be:	1920106f          	j	12950 <_vfprintf_r+0x11cc>
   117c2:	00c49683          	lh	a3,12(s1)
   117c6:	50f8                	lw	a4,100(s1)
   117c8:	01269613          	slli	a2,a3,0x12
   117cc:	00064a63          	bltz	a2,117e0 <_vfprintf_r+0x5c>
   117d0:	7679                	lui	a2,0xffffe
   117d2:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   117d4:	6589                	lui	a1,0x2
   117d6:	8ecd                	or	a3,a3,a1
   117d8:	8f71                	and	a4,a4,a2
   117da:	00d49623          	sh	a3,12(s1)
   117de:	d0f8                	sw	a4,100(s1)
   117e0:	01271693          	slli	a3,a4,0x12
   117e4:	0006d463          	bgez	a3,117ec <_vfprintf_r+0x68>
   117e8:	0770106f          	j	1305e <_vfprintf_r+0x18da>
   117ec:	00c49703          	lh	a4,12(s1)
   117f0:	00877693          	andi	a3,a4,8
   117f4:	22068a63          	beqz	a3,11a28 <_vfprintf_r+0x2a4>
   117f8:	4894                	lw	a3,16(s1)
   117fa:	22068763          	beqz	a3,11a28 <_vfprintf_r+0x2a4>
   117fe:	8b69                	andi	a4,a4,26
   11800:	46a9                	li	a3,10
   11802:	24d70063          	beq	a4,a3,11a42 <_vfprintf_r+0x2be>
   11806:	1b312e23          	sw	s3,444(sp)
   1180a:	1b412c23          	sw	s4,440(sp)
   1180e:	1ba12023          	sw	s10,416(sp)
   11812:	6769                	lui	a4,0x1a
   11814:	1d212023          	sw	s2,448(sp)
   11818:	1b512a23          	sw	s5,436(sp)
   1181c:	1b712623          	sw	s7,428(sp)
   11820:	1b812423          	sw	s8,424(sp)
   11824:	1b912223          	sw	s9,420(sp)
   11828:	19b12e23          	sw	s11,412(sp)
   1182c:	8d5a                	mv	s10,s6
   1182e:	47870793          	addi	a5,a4,1144 # 1a478 <k+0x100>
   11832:	000d4703          	lbu	a4,0(s10)
   11836:	0ec10993          	addi	s3,sp,236
   1183a:	6a69                	lui	s4,0x1a
   1183c:	c3ce                	sw	s3,196(sp)
   1183e:	c782                	sw	zero,204(sp)
   11840:	c582                	sw	zero,200(sp)
   11842:	d002                	sw	zero,32(sp)
   11844:	da02                	sw	zero,52(sp)
   11846:	c082                	sw	zero,64(sp)
   11848:	de02                	sw	zero,60(sp)
   1184a:	c482                	sw	zero,72(sp)
   1184c:	c282                	sw	zero,68(sp)
   1184e:	c602                	sw	zero,12(sp)
   11850:	cc3e                	sw	a5,24(sp)
   11852:	844e                	mv	s0,s3
   11854:	67ca0a13          	addi	s4,s4,1660 # 1a67c <zeroes.0>
   11858:	18070063          	beqz	a4,119d8 <_vfprintf_r+0x254>
   1185c:	896a                	mv	s2,s10
   1185e:	02500693          	li	a3,37
   11862:	2ed70a63          	beq	a4,a3,11b56 <_vfprintf_r+0x3d2>
   11866:	00194703          	lbu	a4,1(s2)
   1186a:	0905                	addi	s2,s2,1
   1186c:	fb7d                	bnez	a4,11862 <_vfprintf_r+0xde>
   1186e:	41a90ab3          	sub	s5,s2,s10
   11872:	17a90363          	beq	s2,s10,119d8 <_vfprintf_r+0x254>
   11876:	46be                	lw	a3,204(sp)
   11878:	472e                	lw	a4,200(sp)
   1187a:	01a42023          	sw	s10,0(s0)
   1187e:	96d6                	add	a3,a3,s5
   11880:	0705                	addi	a4,a4,1
   11882:	01542223          	sw	s5,4(s0)
   11886:	c7b6                	sw	a3,204(sp)
   11888:	c5ba                	sw	a4,200(sp)
   1188a:	469d                	li	a3,7
   1188c:	0421                	addi	s0,s0,8
   1188e:	2ce6cb63          	blt	a3,a4,11b64 <_vfprintf_r+0x3e0>
   11892:	47b2                	lw	a5,12(sp)
   11894:	00094703          	lbu	a4,0(s2)
   11898:	97d6                	add	a5,a5,s5
   1189a:	c63e                	sw	a5,12(sp)
   1189c:	12070e63          	beqz	a4,119d8 <_vfprintf_r+0x254>
   118a0:	00194883          	lbu	a7,1(s2)
   118a4:	0a0103a3          	sb	zero,167(sp)
   118a8:	0905                	addi	s2,s2,1
   118aa:	5afd                	li	s5,-1
   118ac:	4b81                	li	s7,0
   118ae:	4c81                	li	s9,0
   118b0:	05a00b13          	li	s6,90
   118b4:	0905                	addi	s2,s2,1
   118b6:	fe088793          	addi	a5,a7,-32
   118ba:	02fb6b63          	bltu	s6,a5,118f0 <_vfprintf_r+0x16c>
   118be:	4762                	lw	a4,24(sp)
   118c0:	078a                	slli	a5,a5,0x2
   118c2:	97ba                	add	a5,a5,a4
   118c4:	439c                	lw	a5,0(a5)
   118c6:	8782                	jr	a5
   118c8:	4b81                	li	s7,0
   118ca:	fd088793          	addi	a5,a7,-48
   118ce:	46a5                	li	a3,9
   118d0:	00094883          	lbu	a7,0(s2)
   118d4:	002b9713          	slli	a4,s7,0x2
   118d8:	9bba                	add	s7,s7,a4
   118da:	0b86                	slli	s7,s7,0x1
   118dc:	9bbe                	add	s7,s7,a5
   118de:	fd088793          	addi	a5,a7,-48
   118e2:	0905                	addi	s2,s2,1
   118e4:	fef6f6e3          	bgeu	a3,a5,118d0 <_vfprintf_r+0x14c>
   118e8:	fe088793          	addi	a5,a7,-32
   118ec:	fcfb79e3          	bgeu	s6,a5,118be <_vfprintf_r+0x13a>
   118f0:	0e088463          	beqz	a7,119d8 <_vfprintf_r+0x254>
   118f4:	13110623          	sb	a7,300(sp)
   118f8:	0a0103a3          	sb	zero,167(sp)
   118fc:	4d85                	li	s11,1
   118fe:	4b05                	li	s6,1
   11900:	12c10d13          	addi	s10,sp,300
   11904:	c802                	sw	zero,16(sp)
   11906:	4a81                	li	s5,0
   11908:	d402                	sw	zero,40(sp)
   1190a:	d202                	sw	zero,36(sp)
   1190c:	ce02                	sw	zero,28(sp)
   1190e:	002cf293          	andi	t0,s9,2
   11912:	00028363          	beqz	t0,11918 <_vfprintf_r+0x194>
   11916:	0d89                	addi	s11,s11,2
   11918:	084cff93          	andi	t6,s9,132
   1191c:	463e                	lw	a2,204(sp)
   1191e:	000f9663          	bnez	t6,1192a <_vfprintf_r+0x1a6>
   11922:	41bb8733          	sub	a4,s7,s11
   11926:	0ce045e3          	bgtz	a4,121f0 <_vfprintf_r+0xa6c>
   1192a:	0a714703          	lbu	a4,167(sp)
   1192e:	cf19                	beqz	a4,1194c <_vfprintf_r+0x1c8>
   11930:	472e                	lw	a4,200(sp)
   11932:	0a710593          	addi	a1,sp,167
   11936:	c00c                	sw	a1,0(s0)
   11938:	0605                	addi	a2,a2,1
   1193a:	4585                	li	a1,1
   1193c:	0705                	addi	a4,a4,1
   1193e:	c04c                	sw	a1,4(s0)
   11940:	c7b2                	sw	a2,204(sp)
   11942:	c5ba                	sw	a4,200(sp)
   11944:	459d                	li	a1,7
   11946:	0421                	addi	s0,s0,8
   11948:	2ee5c563          	blt	a1,a4,11c32 <_vfprintf_r+0x4ae>
   1194c:	00028f63          	beqz	t0,1196a <_vfprintf_r+0x1e6>
   11950:	472e                	lw	a4,200(sp)
   11952:	4589                	li	a1,2
   11954:	0609                	addi	a2,a2,2
   11956:	0705                	addi	a4,a4,1
   11958:	113c                	addi	a5,sp,168
   1195a:	c04c                	sw	a1,4(s0)
   1195c:	c01c                	sw	a5,0(s0)
   1195e:	c7b2                	sw	a2,204(sp)
   11960:	c5ba                	sw	a4,200(sp)
   11962:	459d                	li	a1,7
   11964:	0421                	addi	s0,s0,8
   11966:	12e5c8e3          	blt	a1,a4,12296 <_vfprintf_r+0xb12>
   1196a:	08000713          	li	a4,128
   1196e:	72ef8c63          	beq	t6,a4,120a6 <_vfprintf_r+0x922>
   11972:	416a8ab3          	sub	s5,s5,s6
   11976:	7d504863          	bgtz	s5,12146 <_vfprintf_r+0x9c2>
   1197a:	100cf713          	andi	a4,s9,256
   1197e:	60071c63          	bnez	a4,11f96 <_vfprintf_r+0x812>
   11982:	47ae                	lw	a5,200(sp)
   11984:	965a                	add	a2,a2,s6
   11986:	01a42023          	sw	s10,0(s0)
   1198a:	0785                	addi	a5,a5,1
   1198c:	01642223          	sw	s6,4(s0)
   11990:	c7b2                	sw	a2,204(sp)
   11992:	c5be                	sw	a5,200(sp)
   11994:	471d                	li	a4,7
   11996:	36f74363          	blt	a4,a5,11cfc <_vfprintf_r+0x578>
   1199a:	0421                	addi	s0,s0,8
   1199c:	004cfe13          	andi	t3,s9,4
   119a0:	000e0663          	beqz	t3,119ac <_vfprintf_r+0x228>
   119a4:	41bb8ab3          	sub	s5,s7,s11
   119a8:	115045e3          	bgtz	s5,122b2 <_vfprintf_r+0xb2e>
   119ac:	835e                	mv	t1,s7
   119ae:	01bbd363          	bge	s7,s11,119b4 <_vfprintf_r+0x230>
   119b2:	836e                	mv	t1,s11
   119b4:	47b2                	lw	a5,12(sp)
   119b6:	979a                	add	a5,a5,t1
   119b8:	c63e                	sw	a5,12(sp)
   119ba:	00061ae3          	bnez	a2,121ce <_vfprintf_r+0xa4a>
   119be:	47c2                	lw	a5,16(sp)
   119c0:	c582                	sw	zero,200(sp)
   119c2:	c789                	beqz	a5,119cc <_vfprintf_r+0x248>
   119c4:	45c2                	lw	a1,16(sp)
   119c6:	4522                	lw	a0,8(sp)
   119c8:	df2ff0ef          	jal	10fba <_free_r>
   119cc:	844e                	mv	s0,s3
   119ce:	8d4a                	mv	s10,s2
   119d0:	000d4703          	lbu	a4,0(s10)
   119d4:	e80714e3          	bnez	a4,1185c <_vfprintf_r+0xd8>
   119d8:	47be                	lw	a5,204(sp)
   119da:	c399                	beqz	a5,119e0 <_vfprintf_r+0x25c>
   119dc:	3160106f          	j	12cf2 <_vfprintf_r+0x156e>
   119e0:	00c4d783          	lhu	a5,12(s1)
   119e4:	1c012903          	lw	s2,448(sp)
   119e8:	1bc12983          	lw	s3,444(sp)
   119ec:	0407f793          	andi	a5,a5,64
   119f0:	1b812a03          	lw	s4,440(sp)
   119f4:	1b412a83          	lw	s5,436(sp)
   119f8:	1ac12b83          	lw	s7,428(sp)
   119fc:	1a812c03          	lw	s8,424(sp)
   11a00:	1a412c83          	lw	s9,420(sp)
   11a04:	1a012d03          	lw	s10,416(sp)
   11a08:	19c12d83          	lw	s11,412(sp)
   11a0c:	c399                	beqz	a5,11a12 <_vfprintf_r+0x28e>
   11a0e:	6500106f          	j	1305e <_vfprintf_r+0x18da>
   11a12:	1cc12083          	lw	ra,460(sp)
   11a16:	1c812403          	lw	s0,456(sp)
   11a1a:	4532                	lw	a0,12(sp)
   11a1c:	1c412483          	lw	s1,452(sp)
   11a20:	1b012b03          	lw	s6,432(sp)
   11a24:	6179                	addi	sp,sp,464
   11a26:	8082                	ret
   11a28:	4522                	lw	a0,8(sp)
   11a2a:	85a6                	mv	a1,s1
   11a2c:	7db010ef          	jal	13a06 <__swsetup_r>
   11a30:	c119                	beqz	a0,11a36 <_vfprintf_r+0x2b2>
   11a32:	62c0106f          	j	1305e <_vfprintf_r+0x18da>
   11a36:	00c49703          	lh	a4,12(s1)
   11a3a:	46a9                	li	a3,10
   11a3c:	8b69                	andi	a4,a4,26
   11a3e:	dcd714e3          	bne	a4,a3,11806 <_vfprintf_r+0x82>
   11a42:	00e49703          	lh	a4,14(s1)
   11a46:	dc0740e3          	bltz	a4,11806 <_vfprintf_r+0x82>
   11a4a:	46d2                	lw	a3,20(sp)
   11a4c:	4522                	lw	a0,8(sp)
   11a4e:	865a                	mv	a2,s6
   11a50:	85a6                	mv	a1,s1
   11a52:	0e5010ef          	jal	13336 <__sbprintf>
   11a56:	c62a                	sw	a0,12(sp)
   11a58:	bf6d                	j	11a12 <_vfprintf_r+0x28e>
   11a5a:	4c22                	lw	s8,8(sp)
   11a5c:	8562                	mv	a0,s8
   11a5e:	190020ef          	jal	13bee <_localeconv_r>
   11a62:	415c                	lw	a5,4(a0)
   11a64:	853e                	mv	a0,a5
   11a66:	c2be                	sw	a5,68(sp)
   11a68:	b48ff0ef          	jal	10db0 <strlen>
   11a6c:	87aa                	mv	a5,a0
   11a6e:	8562                	mv	a0,s8
   11a70:	c4be                	sw	a5,72(sp)
   11a72:	8c3e                	mv	s8,a5
   11a74:	17a020ef          	jal	13bee <_localeconv_r>
   11a78:	451c                	lw	a5,8(a0)
   11a7a:	de3e                	sw	a5,60(sp)
   11a7c:	280c14e3          	bnez	s8,12504 <_vfprintf_r+0xd80>
   11a80:	00094883          	lbu	a7,0(s2)
   11a84:	bd05                	j	118b4 <_vfprintf_r+0x130>
   11a86:	00094883          	lbu	a7,0(s2)
   11a8a:	020cec93          	ori	s9,s9,32
   11a8e:	b51d                	j	118b4 <_vfprintf_r+0x130>
   11a90:	010cec93          	ori	s9,s9,16
   11a94:	020cf793          	andi	a5,s9,32
   11a98:	26078c63          	beqz	a5,11d10 <_vfprintf_r+0x58c>
   11a9c:	47d2                	lw	a5,20(sp)
   11a9e:	00778c13          	addi	s8,a5,7
   11aa2:	ff8c7c13          	andi	s8,s8,-8
   11aa6:	004c2783          	lw	a5,4(s8)
   11aaa:	000c2b03          	lw	s6,0(s8)
   11aae:	008c0713          	addi	a4,s8,8
   11ab2:	ca3a                	sw	a4,20(sp)
   11ab4:	8dbe                	mv	s11,a5
   11ab6:	2807c263          	bltz	a5,11d3a <_vfprintf_r+0x5b6>
   11aba:	8ee6                	mv	t4,s9
   11abc:	380ac363          	bltz	s5,11e42 <_vfprintf_r+0x6be>
   11ac0:	01bb67b3          	or	a5,s6,s11
   11ac4:	f7fcfe93          	andi	t4,s9,-129
   11ac8:	36079d63          	bnez	a5,11e42 <_vfprintf_r+0x6be>
   11acc:	380a9063          	bnez	s5,11e4c <_vfprintf_r+0x6c8>
   11ad0:	4b01                	li	s6,0
   11ad2:	8cf6                	mv	s9,t4
   11ad4:	19010d13          	addi	s10,sp,400
   11ad8:	0a714703          	lbu	a4,167(sp)
   11adc:	8dd6                	mv	s11,s5
   11ade:	016ad363          	bge	s5,s6,11ae4 <_vfprintf_r+0x360>
   11ae2:	8dda                	mv	s11,s6
   11ae4:	c802                	sw	zero,16(sp)
   11ae6:	d402                	sw	zero,40(sp)
   11ae8:	d202                	sw	zero,36(sp)
   11aea:	ce02                	sw	zero,28(sp)
   11aec:	e20701e3          	beqz	a4,1190e <_vfprintf_r+0x18a>
   11af0:	0d85                	addi	s11,s11,1
   11af2:	bd31                	j	1190e <_vfprintf_r+0x18a>
   11af4:	010cec93          	ori	s9,s9,16
   11af8:	020cf793          	andi	a5,s9,32
   11afc:	2a078b63          	beqz	a5,11db2 <_vfprintf_r+0x62e>
   11b00:	47d2                	lw	a5,20(sp)
   11b02:	00778c13          	addi	s8,a5,7
   11b06:	ff8c7c13          	andi	s8,s8,-8
   11b0a:	000c2b03          	lw	s6,0(s8)
   11b0e:	004c2d83          	lw	s11,4(s8)
   11b12:	008c0793          	addi	a5,s8,8
   11b16:	ca3e                	sw	a5,20(sp)
   11b18:	bffcfe93          	andi	t4,s9,-1025
   11b1c:	4781                	li	a5,0
   11b1e:	4701                	li	a4,0
   11b20:	0ae103a3          	sb	a4,167(sp)
   11b24:	220acb63          	bltz	s5,11d5a <_vfprintf_r+0x5d6>
   11b28:	01bb6733          	or	a4,s6,s11
   11b2c:	f7fefc93          	andi	s9,t4,-129
   11b30:	6a071e63          	bnez	a4,121ec <_vfprintf_r+0xa68>
   11b34:	520a9563          	bnez	s5,1205e <_vfprintf_r+0x8da>
   11b38:	16079ee3          	bnez	a5,124b4 <_vfprintf_r+0xd30>
   11b3c:	001efb13          	andi	s6,t4,1
   11b40:	19010d13          	addi	s10,sp,400
   11b44:	f80b0ae3          	beqz	s6,11ad8 <_vfprintf_r+0x354>
   11b48:	03000793          	li	a5,48
   11b4c:	18f107a3          	sb	a5,399(sp)
   11b50:	18f10d13          	addi	s10,sp,399
   11b54:	b751                	j	11ad8 <_vfprintf_r+0x354>
   11b56:	41a90ab3          	sub	s5,s2,s10
   11b5a:	d1a91ee3          	bne	s2,s10,11876 <_vfprintf_r+0xf2>
   11b5e:	00094703          	lbu	a4,0(s2)
   11b62:	bb2d                	j	1189c <_vfprintf_r+0x118>
   11b64:	4522                	lw	a0,8(sp)
   11b66:	01d0                	addi	a2,sp,196
   11b68:	85a6                	mv	a1,s1
   11b6a:	061010ef          	jal	133ca <__sprint_r>
   11b6e:	e60519e3          	bnez	a0,119e0 <_vfprintf_r+0x25c>
   11b72:	844e                	mv	s0,s3
   11b74:	bb39                	j	11892 <_vfprintf_r+0x10e>
   11b76:	008cf713          	andi	a4,s9,8
   11b7a:	1c0714e3          	bnez	a4,12542 <_vfprintf_r+0xdbe>
   11b7e:	47d2                	lw	a5,20(sp)
   11b80:	0908                	addi	a0,sp,144
   11b82:	c846                	sw	a7,16(sp)
   11b84:	00778c13          	addi	s8,a5,7
   11b88:	ff8c7c13          	andi	s8,s8,-8
   11b8c:	000c3507          	fld	fa0,0(s8)
   11b90:	008c0793          	addi	a5,s8,8
   11b94:	ca3e                	sw	a5,20(sp)
   11b96:	3fe080ef          	jal	19f94 <__extenddftf2>
   11b9a:	45ca                	lw	a1,144(sp)
   11b9c:	465a                	lw	a2,148(sp)
   11b9e:	46ea                	lw	a3,152(sp)
   11ba0:	477a                	lw	a4,156(sp)
   11ba2:	48c2                	lw	a7,16(sp)
   11ba4:	0988                	addi	a0,sp,208
   11ba6:	c846                	sw	a7,16(sp)
   11ba8:	cfba                	sw	a4,220(sp)
   11baa:	c9ae                	sw	a1,208(sp)
   11bac:	cbb2                	sw	a2,212(sp)
   11bae:	cdb6                	sw	a3,216(sp)
   11bb0:	5c2020ef          	jal	14172 <_ldcheck>
   11bb4:	d72a                	sw	a0,172(sp)
   11bb6:	4709                	li	a4,2
   11bb8:	48c2                	lw	a7,16(sp)
   11bba:	5ce50be3          	beq	a0,a4,12990 <_vfprintf_r+0x120c>
   11bbe:	4705                	li	a4,1
   11bc0:	6ae505e3          	beq	a0,a4,12a6a <_vfprintf_r+0x12e6>
   11bc4:	06100713          	li	a4,97
   11bc8:	2ae88ce3          	beq	a7,a4,12680 <_vfprintf_r+0xefc>
   11bcc:	04100713          	li	a4,65
   11bd0:	05800793          	li	a5,88
   11bd4:	2ae888e3          	beq	a7,a4,12684 <_vfprintf_r+0xf00>
   11bd8:	577d                	li	a4,-1
   11bda:	00ea9463          	bne	s5,a4,11be2 <_vfprintf_r+0x45e>
   11bde:	6260106f          	j	13204 <_vfprintf_r+0x1a80>
   11be2:	fdf8f713          	andi	a4,a7,-33
   11be6:	04700693          	li	a3,71
   11bea:	c802                	sw	zero,16(sp)
   11bec:	00d71563          	bne	a4,a3,11bf6 <_vfprintf_r+0x472>
   11bf0:	000a9363          	bnez	s5,11bf6 <_vfprintf_r+0x472>
   11bf4:	4a85                	li	s5,1
   11bf6:	4c7e                	lw	s8,220(sp)
   11bf8:	100ce793          	ori	a5,s9,256
   11bfc:	c6be                	sw	a5,76(sp)
   11bfe:	dc02                	sw	zero,56(sp)
   11c00:	4fce                	lw	t6,208(sp)
   11c02:	4f5e                	lw	t5,212(sp)
   11c04:	4eee                	lw	t4,216(sp)
   11c06:	000c5963          	bgez	s8,11c18 <_vfprintf_r+0x494>
   11c0a:	80000737          	lui	a4,0x80000
   11c0e:	02d00793          	li	a5,45
   11c12:	01874c33          	xor	s8,a4,s8
   11c16:	dc3e                	sw	a5,56(sp)
   11c18:	fbf88713          	addi	a4,a7,-65
   11c1c:	02500693          	li	a3,37
   11c20:	28e6eee3          	bltu	a3,a4,126bc <_vfprintf_r+0xf38>
   11c24:	66e9                	lui	a3,0x1a
   11c26:	070a                	slli	a4,a4,0x2
   11c28:	5e468693          	addi	a3,a3,1508 # 1a5e4 <k+0x26c>
   11c2c:	9736                	add	a4,a4,a3
   11c2e:	4318                	lw	a4,0(a4)
   11c30:	8702                	jr	a4
   11c32:	4522                	lw	a0,8(sp)
   11c34:	01d0                	addi	a2,sp,196
   11c36:	85a6                	mv	a1,s1
   11c38:	c8c6                	sw	a7,80(sp)
   11c3a:	c6fe                	sw	t6,76(sp)
   11c3c:	dc16                	sw	t0,56(sp)
   11c3e:	78c010ef          	jal	133ca <__sprint_r>
   11c42:	58051d63          	bnez	a0,121dc <_vfprintf_r+0xa58>
   11c46:	463e                	lw	a2,204(sp)
   11c48:	48c6                	lw	a7,80(sp)
   11c4a:	4fb6                	lw	t6,76(sp)
   11c4c:	52e2                	lw	t0,56(sp)
   11c4e:	844e                	mv	s0,s3
   11c50:	b9f5                	j	1194c <_vfprintf_r+0x1c8>
   11c52:	4aae                	lw	s5,200(sp)
   11c54:	5782                	lw	a5,32(sp)
   11c56:	4705                	li	a4,1
   11c58:	01a42023          	sw	s10,0(s0)
   11c5c:	00160c13          	addi	s8,a2,1
   11c60:	0a85                	addi	s5,s5,1
   11c62:	00840b13          	addi	s6,s0,8
   11c66:	7af75763          	bge	a4,a5,12414 <_vfprintf_r+0xc90>
   11c6a:	4705                	li	a4,1
   11c6c:	c058                	sw	a4,4(s0)
   11c6e:	c7e2                	sw	s8,204(sp)
   11c70:	c5d6                	sw	s5,200(sp)
   11c72:	471d                	li	a4,7
   11c74:	395741e3          	blt	a4,s5,127f6 <_vfprintf_r+0x1072>
   11c78:	57b2                	lw	a5,44(sp)
   11c7a:	5742                	lw	a4,48(sp)
   11c7c:	0a85                	addi	s5,s5,1
   11c7e:	9c3e                	add	s8,s8,a5
   11c80:	00eb2023          	sw	a4,0(s6)
   11c84:	00fb2223          	sw	a5,4(s6)
   11c88:	c7e2                	sw	s8,204(sp)
   11c8a:	c5d6                	sw	s5,200(sp)
   11c8c:	471d                	li	a4,7
   11c8e:	0b21                	addi	s6,s6,8
   11c90:	37574fe3          	blt	a4,s5,1280e <_vfprintf_r+0x108a>
   11c94:	474e                	lw	a4,208(sp)
   11c96:	5782                	lw	a5,32(sp)
   11c98:	010c                	addi	a1,sp,128
   11c9a:	c93a                	sw	a4,144(sp)
   11c9c:	475e                	lw	a4,212(sp)
   11c9e:	0908                	addi	a0,sp,144
   11ca0:	c102                	sw	zero,128(sp)
   11ca2:	cb3a                	sw	a4,148(sp)
   11ca4:	476e                	lw	a4,216(sp)
   11ca6:	c302                	sw	zero,132(sp)
   11ca8:	c502                	sw	zero,136(sp)
   11caa:	cd3a                	sw	a4,152(sp)
   11cac:	477e                	lw	a4,220(sp)
   11cae:	c702                	sw	zero,140(sp)
   11cb0:	fff78413          	addi	s0,a5,-1
   11cb4:	cf3a                	sw	a4,156(sp)
   11cb6:	7fb050ef          	jal	17cb0 <__eqtf2>
   11cba:	78050263          	beqz	a0,1243e <_vfprintf_r+0xcba>
   11cbe:	001d0793          	addi	a5,s10,1
   11cc2:	0a85                	addi	s5,s5,1
   11cc4:	9c22                	add	s8,s8,s0
   11cc6:	00fb2023          	sw	a5,0(s6)
   11cca:	008b2223          	sw	s0,4(s6)
   11cce:	c7e2                	sw	s8,204(sp)
   11cd0:	c5d6                	sw	s5,200(sp)
   11cd2:	479d                	li	a5,7
   11cd4:	0b21                	addi	s6,s6,8
   11cd6:	7557c963          	blt	a5,s5,12428 <_vfprintf_r+0xca4>
   11cda:	4686                	lw	a3,64(sp)
   11cdc:	1958                	addi	a4,sp,180
   11cde:	001a8793          	addi	a5,s5,1
   11ce2:	01868633          	add	a2,a3,s8
   11ce6:	00eb2023          	sw	a4,0(s6)
   11cea:	00db2223          	sw	a3,4(s6)
   11cee:	c7b2                	sw	a2,204(sp)
   11cf0:	c5be                	sw	a5,200(sp)
   11cf2:	471d                	li	a4,7
   11cf4:	008b0413          	addi	s0,s6,8
   11cf8:	caf752e3          	bge	a4,a5,1199c <_vfprintf_r+0x218>
   11cfc:	4522                	lw	a0,8(sp)
   11cfe:	01d0                	addi	a2,sp,196
   11d00:	85a6                	mv	a1,s1
   11d02:	6c8010ef          	jal	133ca <__sprint_r>
   11d06:	4c051b63          	bnez	a0,121dc <_vfprintf_r+0xa58>
   11d0a:	463e                	lw	a2,204(sp)
   11d0c:	844e                	mv	s0,s3
   11d0e:	b179                	j	1199c <_vfprintf_r+0x218>
   11d10:	4752                	lw	a4,20(sp)
   11d12:	010cf793          	andi	a5,s9,16
   11d16:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe45a4>
   11d1a:	0711                	addi	a4,a4,4
   11d1c:	ca3a                	sw	a4,20(sp)
   11d1e:	7c079e63          	bnez	a5,124fa <_vfprintf_r+0xd76>
   11d22:	040cf793          	andi	a5,s9,64
   11d26:	7c078663          	beqz	a5,124f2 <_vfprintf_r+0xd6e>
   11d2a:	0b42                	slli	s6,s6,0x10
   11d2c:	410b5b13          	srai	s6,s6,0x10
   11d30:	41fb5d93          	srai	s11,s6,0x1f
   11d34:	87ee                	mv	a5,s11
   11d36:	d807d2e3          	bgez	a5,11aba <_vfprintf_r+0x336>
   11d3a:	02d00713          	li	a4,45
   11d3e:	016037b3          	snez	a5,s6
   11d42:	41b00db3          	neg	s11,s11
   11d46:	0ae103a3          	sb	a4,167(sp)
   11d4a:	40fd8db3          	sub	s11,s11,a5
   11d4e:	41600b33          	neg	s6,s6
   11d52:	8ee6                	mv	t4,s9
   11d54:	4785                	li	a5,1
   11d56:	dc0ad9e3          	bgez	s5,11b28 <_vfprintf_r+0x3a4>
   11d5a:	4705                	li	a4,1
   11d5c:	0ee78363          	beq	a5,a4,11e42 <_vfprintf_r+0x6be>
   11d60:	4709                	li	a4,2
   11d62:	30e78763          	beq	a5,a4,12070 <_vfprintf_r+0x8ec>
   11d66:	19010d13          	addi	s10,sp,400
   11d6a:	01dd9793          	slli	a5,s11,0x1d
   11d6e:	007b7713          	andi	a4,s6,7
   11d72:	003b5b13          	srli	s6,s6,0x3
   11d76:	03070713          	addi	a4,a4,48
   11d7a:	0167eb33          	or	s6,a5,s6
   11d7e:	003ddd93          	srli	s11,s11,0x3
   11d82:	feed0fa3          	sb	a4,-1(s10)
   11d86:	01bb67b3          	or	a5,s6,s11
   11d8a:	866a                	mv	a2,s10
   11d8c:	1d7d                	addi	s10,s10,-1
   11d8e:	fff1                	bnez	a5,11d6a <_vfprintf_r+0x5e6>
   11d90:	001ef693          	andi	a3,t4,1
   11d94:	30068463          	beqz	a3,1209c <_vfprintf_r+0x918>
   11d98:	03000693          	li	a3,48
   11d9c:	30d70063          	beq	a4,a3,1209c <_vfprintf_r+0x918>
   11da0:	1679                	addi	a2,a2,-2
   11da2:	0b1c                	addi	a5,sp,400
   11da4:	fedd0fa3          	sb	a3,-1(s10)
   11da8:	40c78b33          	sub	s6,a5,a2
   11dac:	8cf6                	mv	s9,t4
   11dae:	8d32                	mv	s10,a2
   11db0:	b325                	j	11ad8 <_vfprintf_r+0x354>
   11db2:	4752                	lw	a4,20(sp)
   11db4:	010cf793          	andi	a5,s9,16
   11db8:	00072b03          	lw	s6,0(a4)
   11dbc:	0711                	addi	a4,a4,4
   11dbe:	ca3a                	sw	a4,20(sp)
   11dc0:	72079663          	bnez	a5,124ec <_vfprintf_r+0xd68>
   11dc4:	040cf793          	andi	a5,s9,64
   11dc8:	70078e63          	beqz	a5,124e4 <_vfprintf_r+0xd60>
   11dcc:	0b42                	slli	s6,s6,0x10
   11dce:	010b5b13          	srli	s6,s6,0x10
   11dd2:	4d81                	li	s11,0
   11dd4:	b391                	j	11b18 <_vfprintf_r+0x394>
   11dd6:	4752                	lw	a4,20(sp)
   11dd8:	0a0103a3          	sb	zero,167(sp)
   11ddc:	4d85                	li	s11,1
   11dde:	431c                	lw	a5,0(a4)
   11de0:	0711                	addi	a4,a4,4
   11de2:	ca3a                	sw	a4,20(sp)
   11de4:	12f10623          	sb	a5,300(sp)
   11de8:	4b05                	li	s6,1
   11dea:	12c10d13          	addi	s10,sp,300
   11dee:	be19                	j	11904 <_vfprintf_r+0x180>
   11df0:	47d2                	lw	a5,20(sp)
   11df2:	0a0103a3          	sb	zero,167(sp)
   11df6:	0007ad03          	lw	s10,0(a5)
   11dfa:	00478c13          	addi	s8,a5,4
   11dfe:	7e0d0a63          	beqz	s10,125f2 <_vfprintf_r+0xe6e>
   11e02:	420ac4e3          	bltz	s5,12a2a <_vfprintf_r+0x12a6>
   11e06:	8656                	mv	a2,s5
   11e08:	4581                	li	a1,0
   11e0a:	856a                	mv	a0,s10
   11e0c:	ca46                	sw	a7,20(sp)
   11e0e:	4d3010ef          	jal	13ae0 <memchr>
   11e12:	c82a                	sw	a0,16(sp)
   11e14:	48d2                	lw	a7,20(sp)
   11e16:	e119                	bnez	a0,11e1c <_vfprintf_r+0x698>
   11e18:	25c0106f          	j	13074 <_vfprintf_r+0x18f0>
   11e1c:	47c2                	lw	a5,16(sp)
   11e1e:	0a714703          	lbu	a4,167(sp)
   11e22:	ca62                	sw	s8,20(sp)
   11e24:	41a78b33          	sub	s6,a5,s10
   11e28:	fffb4693          	not	a3,s6
   11e2c:	86fd                	srai	a3,a3,0x1f
   11e2e:	c802                	sw	zero,16(sp)
   11e30:	d402                	sw	zero,40(sp)
   11e32:	d202                	sw	zero,36(sp)
   11e34:	ce02                	sw	zero,28(sp)
   11e36:	00db7db3          	and	s11,s6,a3
   11e3a:	4a81                	li	s5,0
   11e3c:	ca071ae3          	bnez	a4,11af0 <_vfprintf_r+0x36c>
   11e40:	b4f9                	j	1190e <_vfprintf_r+0x18a>
   11e42:	1e0d98e3          	bnez	s11,12832 <_vfprintf_r+0x10ae>
   11e46:	47a5                	li	a5,9
   11e48:	1f67e5e3          	bltu	a5,s6,12832 <_vfprintf_r+0x10ae>
   11e4c:	030b0b13          	addi	s6,s6,48
   11e50:	196107a3          	sb	s6,399(sp)
   11e54:	8cf6                	mv	s9,t4
   11e56:	4b05                	li	s6,1
   11e58:	18f10d13          	addi	s10,sp,399
   11e5c:	b9b5                	j	11ad8 <_vfprintf_r+0x354>
   11e5e:	47d2                	lw	a5,20(sp)
   11e60:	0007ab83          	lw	s7,0(a5)
   11e64:	0791                	addi	a5,a5,4
   11e66:	660bd163          	bgez	s7,124c8 <_vfprintf_r+0xd44>
   11e6a:	41700bb3          	neg	s7,s7
   11e6e:	ca3e                	sw	a5,20(sp)
   11e70:	00094883          	lbu	a7,0(s2)
   11e74:	004cec93          	ori	s9,s9,4
   11e78:	bc35                	j	118b4 <_vfprintf_r+0x130>
   11e7a:	02b00793          	li	a5,43
   11e7e:	00094883          	lbu	a7,0(s2)
   11e82:	0af103a3          	sb	a5,167(sp)
   11e86:	b43d                	j	118b4 <_vfprintf_r+0x130>
   11e88:	00094883          	lbu	a7,0(s2)
   11e8c:	080cec93          	ori	s9,s9,128
   11e90:	b415                	j	118b4 <_vfprintf_r+0x130>
   11e92:	00094883          	lbu	a7,0(s2)
   11e96:	02a00793          	li	a5,42
   11e9a:	00190693          	addi	a3,s2,1
   11e9e:	00f89463          	bne	a7,a5,11ea6 <_vfprintf_r+0x722>
   11ea2:	44c0106f          	j	132ee <_vfprintf_r+0x1b6a>
   11ea6:	fd088793          	addi	a5,a7,-48
   11eaa:	4725                	li	a4,9
   11eac:	4a81                	li	s5,0
   11eae:	4625                	li	a2,9
   11eb0:	02f76063          	bltu	a4,a5,11ed0 <_vfprintf_r+0x74c>
   11eb4:	0006c883          	lbu	a7,0(a3)
   11eb8:	002a9713          	slli	a4,s5,0x2
   11ebc:	9aba                	add	s5,s5,a4
   11ebe:	0a86                	slli	s5,s5,0x1
   11ec0:	9abe                	add	s5,s5,a5
   11ec2:	fd088793          	addi	a5,a7,-48
   11ec6:	0685                	addi	a3,a3,1
   11ec8:	fef676e3          	bgeu	a2,a5,11eb4 <_vfprintf_r+0x730>
   11ecc:	680ac963          	bltz	s5,1255e <_vfprintf_r+0xdda>
   11ed0:	8936                	mv	s2,a3
   11ed2:	b2d5                	j	118b6 <_vfprintf_r+0x132>
   11ed4:	00094883          	lbu	a7,0(s2)
   11ed8:	001cec93          	ori	s9,s9,1
   11edc:	bae1                	j	118b4 <_vfprintf_r+0x130>
   11ede:	0a714783          	lbu	a5,167(sp)
   11ee2:	00094883          	lbu	a7,0(s2)
   11ee6:	9c0797e3          	bnez	a5,118b4 <_vfprintf_r+0x130>
   11eea:	02000793          	li	a5,32
   11eee:	0af103a3          	sb	a5,167(sp)
   11ef2:	b2c9                	j	118b4 <_vfprintf_r+0x130>
   11ef4:	010cee93          	ori	t4,s9,16
   11ef8:	020ef793          	andi	a5,t4,32
   11efc:	58078a63          	beqz	a5,12490 <_vfprintf_r+0xd0c>
   11f00:	47d2                	lw	a5,20(sp)
   11f02:	00778c13          	addi	s8,a5,7
   11f06:	ff8c7c13          	andi	s8,s8,-8
   11f0a:	008c0793          	addi	a5,s8,8
   11f0e:	ca3e                	sw	a5,20(sp)
   11f10:	000c2b03          	lw	s6,0(s8)
   11f14:	004c2d83          	lw	s11,4(s8)
   11f18:	4785                	li	a5,1
   11f1a:	b111                	j	11b1e <_vfprintf_r+0x39a>
   11f1c:	00094883          	lbu	a7,0(s2)
   11f20:	008cec93          	ori	s9,s9,8
   11f24:	ba41                	j	118b4 <_vfprintf_r+0x130>
   11f26:	4752                	lw	a4,20(sp)
   11f28:	67a1                	lui	a5,0x8
   11f2a:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   11f2e:	0af11423          	sh	a5,168(sp)
   11f32:	00470793          	addi	a5,a4,4
   11f36:	ca3e                	sw	a5,20(sp)
   11f38:	67e9                	lui	a5,0x1a
   11f3a:	1f878793          	addi	a5,a5,504 # 1a1f8 <__clzsi2+0xd8>
   11f3e:	da3e                	sw	a5,52(sp)
   11f40:	00072b03          	lw	s6,0(a4)
   11f44:	4d81                	li	s11,0
   11f46:	002cee93          	ori	t4,s9,2
   11f4a:	4789                	li	a5,2
   11f4c:	07800893          	li	a7,120
   11f50:	b6f9                	j	11b1e <_vfprintf_r+0x39a>
   11f52:	020cf793          	andi	a5,s9,32
   11f56:	5c078463          	beqz	a5,1251e <_vfprintf_r+0xd9a>
   11f5a:	47d2                	lw	a5,20(sp)
   11f5c:	46b2                	lw	a3,12(sp)
   11f5e:	439c                	lw	a5,0(a5)
   11f60:	41f6d713          	srai	a4,a3,0x1f
   11f64:	c394                	sw	a3,0(a5)
   11f66:	c3d8                	sw	a4,4(a5)
   11f68:	47d2                	lw	a5,20(sp)
   11f6a:	8d4a                	mv	s10,s2
   11f6c:	0791                	addi	a5,a5,4
   11f6e:	ca3e                	sw	a5,20(sp)
   11f70:	b485                	j	119d0 <_vfprintf_r+0x24c>
   11f72:	00094883          	lbu	a7,0(s2)
   11f76:	06c00793          	li	a5,108
   11f7a:	64f88b63          	beq	a7,a5,125d0 <_vfprintf_r+0xe4c>
   11f7e:	010cec93          	ori	s9,s9,16
   11f82:	ba0d                	j	118b4 <_vfprintf_r+0x130>
   11f84:	00094883          	lbu	a7,0(s2)
   11f88:	06800793          	li	a5,104
   11f8c:	62f88b63          	beq	a7,a5,125c2 <_vfprintf_r+0xe3e>
   11f90:	040cec93          	ori	s9,s9,64
   11f94:	b205                	j	118b4 <_vfprintf_r+0x130>
   11f96:	06500713          	li	a4,101
   11f9a:	cb175ce3          	bge	a4,a7,11c52 <_vfprintf_r+0x4ce>
   11f9e:	474e                	lw	a4,208(sp)
   11fa0:	010c                	addi	a1,sp,128
   11fa2:	0908                	addi	a0,sp,144
   11fa4:	c93a                	sw	a4,144(sp)
   11fa6:	475e                	lw	a4,212(sp)
   11fa8:	dc32                	sw	a2,56(sp)
   11faa:	c102                	sw	zero,128(sp)
   11fac:	cb3a                	sw	a4,148(sp)
   11fae:	476e                	lw	a4,216(sp)
   11fb0:	c302                	sw	zero,132(sp)
   11fb2:	c502                	sw	zero,136(sp)
   11fb4:	cd3a                	sw	a4,152(sp)
   11fb6:	477e                	lw	a4,220(sp)
   11fb8:	c702                	sw	zero,140(sp)
   11fba:	cf3a                	sw	a4,156(sp)
   11fbc:	4f5050ef          	jal	17cb0 <__eqtf2>
   11fc0:	5662                	lw	a2,56(sp)
   11fc2:	36051363          	bnez	a0,12328 <_vfprintf_r+0xba4>
   11fc6:	47ae                	lw	a5,200(sp)
   11fc8:	6769                	lui	a4,0x1a
   11fca:	22870713          	addi	a4,a4,552 # 1a228 <__clzsi2+0x108>
   11fce:	c018                	sw	a4,0(s0)
   11fd0:	0605                	addi	a2,a2,1
   11fd2:	4705                	li	a4,1
   11fd4:	0785                	addi	a5,a5,1
   11fd6:	c058                	sw	a4,4(s0)
   11fd8:	c7b2                	sw	a2,204(sp)
   11fda:	c5be                	sw	a5,200(sp)
   11fdc:	471d                	li	a4,7
   11fde:	0421                	addi	s0,s0,8
   11fe0:	16f74de3          	blt	a4,a5,1295a <_vfprintf_r+0x11d6>
   11fe4:	57ba                	lw	a5,172(sp)
   11fe6:	5702                	lw	a4,32(sp)
   11fe8:	4ce7db63          	bge	a5,a4,124be <_vfprintf_r+0xd3a>
   11fec:	57c2                	lw	a5,48(sp)
   11fee:	5732                	lw	a4,44(sp)
   11ff0:	0421                	addi	s0,s0,8
   11ff2:	fef42c23          	sw	a5,-8(s0)
   11ff6:	47ae                	lw	a5,200(sp)
   11ff8:	963a                	add	a2,a2,a4
   11ffa:	fee42e23          	sw	a4,-4(s0)
   11ffe:	0785                	addi	a5,a5,1
   12000:	c7b2                	sw	a2,204(sp)
   12002:	c5be                	sw	a5,200(sp)
   12004:	471d                	li	a4,7
   12006:	5cf74c63          	blt	a4,a5,125de <_vfprintf_r+0xe5a>
   1200a:	5782                	lw	a5,32(sp)
   1200c:	fff78a93          	addi	s5,a5,-1
   12010:	995056e3          	blez	s5,1199c <_vfprintf_r+0x218>
   12014:	6869                	lui	a6,0x1a
   12016:	67c80813          	addi	a6,a6,1660 # 1a67c <zeroes.0>
   1201a:	4741                	li	a4,16
   1201c:	47ae                	lw	a5,200(sp)
   1201e:	4b41                	li	s6,16
   12020:	4c1d                	li	s8,7
   12022:	8d42                	mv	s10,a6
   12024:	01574763          	blt	a4,s5,12032 <_vfprintf_r+0x8ae>
   12028:	14b0006f          	j	12972 <_vfprintf_r+0x11ee>
   1202c:	1ac1                	addi	s5,s5,-16
   1202e:	155b51e3          	bge	s6,s5,12970 <_vfprintf_r+0x11ec>
   12032:	0641                	addi	a2,a2,16
   12034:	0785                	addi	a5,a5,1
   12036:	01a42023          	sw	s10,0(s0)
   1203a:	01642223          	sw	s6,4(s0)
   1203e:	c7b2                	sw	a2,204(sp)
   12040:	c5be                	sw	a5,200(sp)
   12042:	0421                	addi	s0,s0,8
   12044:	fefc54e3          	bge	s8,a5,1202c <_vfprintf_r+0x8a8>
   12048:	4522                	lw	a0,8(sp)
   1204a:	01d0                	addi	a2,sp,196
   1204c:	85a6                	mv	a1,s1
   1204e:	37c010ef          	jal	133ca <__sprint_r>
   12052:	18051563          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12056:	463e                	lw	a2,204(sp)
   12058:	47ae                	lw	a5,200(sp)
   1205a:	844e                	mv	s0,s3
   1205c:	bfc1                	j	1202c <_vfprintf_r+0x8a8>
   1205e:	4705                	li	a4,1
   12060:	00e79463          	bne	a5,a4,12068 <_vfprintf_r+0x8e4>
   12064:	0f20106f          	j	13156 <_vfprintf_r+0x19d2>
   12068:	4709                	li	a4,2
   1206a:	8ee6                	mv	t4,s9
   1206c:	cee79de3          	bne	a5,a4,11d66 <_vfprintf_r+0x5e2>
   12070:	56d2                	lw	a3,52(sp)
   12072:	19010d13          	addi	s10,sp,400
   12076:	00fb7793          	andi	a5,s6,15
   1207a:	97b6                	add	a5,a5,a3
   1207c:	0007c703          	lbu	a4,0(a5)
   12080:	004b5b13          	srli	s6,s6,0x4
   12084:	01cd9793          	slli	a5,s11,0x1c
   12088:	0167eb33          	or	s6,a5,s6
   1208c:	004ddd93          	srli	s11,s11,0x4
   12090:	feed0fa3          	sb	a4,-1(s10)
   12094:	01bb67b3          	or	a5,s6,s11
   12098:	1d7d                	addi	s10,s10,-1
   1209a:	fff1                	bnez	a5,12076 <_vfprintf_r+0x8f2>
   1209c:	0b1c                	addi	a5,sp,400
   1209e:	41a78b33          	sub	s6,a5,s10
   120a2:	8cf6                	mv	s9,t4
   120a4:	bc15                	j	11ad8 <_vfprintf_r+0x354>
   120a6:	41bb8c33          	sub	s8,s7,s11
   120aa:	8d8054e3          	blez	s8,11972 <_vfprintf_r+0x1ee>
   120ae:	6869                	lui	a6,0x1a
   120b0:	4541                	li	a0,16
   120b2:	45ae                	lw	a1,200(sp)
   120b4:	67c80813          	addi	a6,a6,1660 # 1a67c <zeroes.0>
   120b8:	05855f63          	bge	a0,s8,12116 <_vfprintf_r+0x992>
   120bc:	dc4a                	sw	s2,56(sp)
   120be:	87a2                	mv	a5,s0
   120c0:	4ec1                	li	t4,16
   120c2:	8462                	mv	s0,s8
   120c4:	4f9d                	li	t6,7
   120c6:	8c5a                	mv	s8,s6
   120c8:	8942                	mv	s2,a6
   120ca:	8b56                	mv	s6,s5
   120cc:	8ac6                	mv	s5,a7
   120ce:	a021                	j	120d6 <_vfprintf_r+0x952>
   120d0:	1441                	addi	s0,s0,-16
   120d2:	028edb63          	bge	t4,s0,12108 <_vfprintf_r+0x984>
   120d6:	0641                	addi	a2,a2,16
   120d8:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   120da:	0127a023          	sw	s2,0(a5)
   120de:	01d7a223          	sw	t4,4(a5)
   120e2:	c7b2                	sw	a2,204(sp)
   120e4:	c5ae                	sw	a1,200(sp)
   120e6:	07a1                	addi	a5,a5,8
   120e8:	febfd4e3          	bge	t6,a1,120d0 <_vfprintf_r+0x94c>
   120ec:	4522                	lw	a0,8(sp)
   120ee:	01d0                	addi	a2,sp,196
   120f0:	85a6                	mv	a1,s1
   120f2:	2d8010ef          	jal	133ca <__sprint_r>
   120f6:	e17d                	bnez	a0,121dc <_vfprintf_r+0xa58>
   120f8:	4ec1                	li	t4,16
   120fa:	1441                	addi	s0,s0,-16
   120fc:	463e                	lw	a2,204(sp)
   120fe:	45ae                	lw	a1,200(sp)
   12100:	87ce                	mv	a5,s3
   12102:	4f9d                	li	t6,7
   12104:	fc8ec9e3          	blt	t4,s0,120d6 <_vfprintf_r+0x952>
   12108:	884a                	mv	a6,s2
   1210a:	5962                	lw	s2,56(sp)
   1210c:	88d6                	mv	a7,s5
   1210e:	8ada                	mv	s5,s6
   12110:	8b62                	mv	s6,s8
   12112:	8c22                	mv	s8,s0
   12114:	843e                	mv	s0,a5
   12116:	9662                	add	a2,a2,s8
   12118:	0585                	addi	a1,a1,1
   1211a:	01042023          	sw	a6,0(s0)
   1211e:	01842223          	sw	s8,4(s0)
   12122:	c7b2                	sw	a2,204(sp)
   12124:	c5ae                	sw	a1,200(sp)
   12126:	471d                	li	a4,7
   12128:	0421                	addi	s0,s0,8
   1212a:	84b754e3          	bge	a4,a1,11972 <_vfprintf_r+0x1ee>
   1212e:	4522                	lw	a0,8(sp)
   12130:	01d0                	addi	a2,sp,196
   12132:	85a6                	mv	a1,s1
   12134:	dc46                	sw	a7,56(sp)
   12136:	294010ef          	jal	133ca <__sprint_r>
   1213a:	e14d                	bnez	a0,121dc <_vfprintf_r+0xa58>
   1213c:	463e                	lw	a2,204(sp)
   1213e:	58e2                	lw	a7,56(sp)
   12140:	844e                	mv	s0,s3
   12142:	831ff06f          	j	11972 <_vfprintf_r+0x1ee>
   12146:	6869                	lui	a6,0x1a
   12148:	4741                	li	a4,16
   1214a:	45ae                	lw	a1,200(sp)
   1214c:	67c80813          	addi	a6,a6,1660 # 1a67c <zeroes.0>
   12150:	05575763          	bge	a4,s5,1219e <_vfprintf_r+0xa1a>
   12154:	87a2                	mv	a5,s0
   12156:	4741                	li	a4,16
   12158:	8456                	mv	s0,s5
   1215a:	4c1d                	li	s8,7
   1215c:	dc46                	sw	a7,56(sp)
   1215e:	8ad2                	mv	s5,s4
   12160:	a021                	j	12168 <_vfprintf_r+0x9e4>
   12162:	1441                	addi	s0,s0,-16
   12164:	02875963          	bge	a4,s0,12196 <_vfprintf_r+0xa12>
   12168:	0641                	addi	a2,a2,16
   1216a:	0585                	addi	a1,a1,1
   1216c:	0147a023          	sw	s4,0(a5)
   12170:	c3d8                	sw	a4,4(a5)
   12172:	c7b2                	sw	a2,204(sp)
   12174:	c5ae                	sw	a1,200(sp)
   12176:	07a1                	addi	a5,a5,8
   12178:	febc55e3          	bge	s8,a1,12162 <_vfprintf_r+0x9de>
   1217c:	4522                	lw	a0,8(sp)
   1217e:	01d0                	addi	a2,sp,196
   12180:	85a6                	mv	a1,s1
   12182:	248010ef          	jal	133ca <__sprint_r>
   12186:	e939                	bnez	a0,121dc <_vfprintf_r+0xa58>
   12188:	4741                	li	a4,16
   1218a:	1441                	addi	s0,s0,-16
   1218c:	463e                	lw	a2,204(sp)
   1218e:	45ae                	lw	a1,200(sp)
   12190:	87ce                	mv	a5,s3
   12192:	fc874be3          	blt	a4,s0,12168 <_vfprintf_r+0x9e4>
   12196:	58e2                	lw	a7,56(sp)
   12198:	8856                	mv	a6,s5
   1219a:	8aa2                	mv	s5,s0
   1219c:	843e                	mv	s0,a5
   1219e:	9656                	add	a2,a2,s5
   121a0:	0585                	addi	a1,a1,1
   121a2:	01042023          	sw	a6,0(s0)
   121a6:	01542223          	sw	s5,4(s0)
   121aa:	c7b2                	sw	a2,204(sp)
   121ac:	c5ae                	sw	a1,200(sp)
   121ae:	471d                	li	a4,7
   121b0:	0421                	addi	s0,s0,8
   121b2:	fcb75463          	bge	a4,a1,1197a <_vfprintf_r+0x1f6>
   121b6:	4522                	lw	a0,8(sp)
   121b8:	01d0                	addi	a2,sp,196
   121ba:	85a6                	mv	a1,s1
   121bc:	dc46                	sw	a7,56(sp)
   121be:	20c010ef          	jal	133ca <__sprint_r>
   121c2:	ed09                	bnez	a0,121dc <_vfprintf_r+0xa58>
   121c4:	463e                	lw	a2,204(sp)
   121c6:	58e2                	lw	a7,56(sp)
   121c8:	844e                	mv	s0,s3
   121ca:	fb0ff06f          	j	1197a <_vfprintf_r+0x1f6>
   121ce:	4522                	lw	a0,8(sp)
   121d0:	01d0                	addi	a2,sp,196
   121d2:	85a6                	mv	a1,s1
   121d4:	1f6010ef          	jal	133ca <__sprint_r>
   121d8:	fe050363          	beqz	a0,119be <_vfprintf_r+0x23a>
   121dc:	45c2                	lw	a1,16(sp)
   121de:	800581e3          	beqz	a1,119e0 <_vfprintf_r+0x25c>
   121e2:	4522                	lw	a0,8(sp)
   121e4:	dd7fe0ef          	jal	10fba <_free_r>
   121e8:	ff8ff06f          	j	119e0 <_vfprintf_r+0x25c>
   121ec:	8ee6                	mv	t4,s9
   121ee:	b6b5                	j	11d5a <_vfprintf_r+0x5d6>
   121f0:	6869                	lui	a6,0x1a
   121f2:	4541                	li	a0,16
   121f4:	45ae                	lw	a1,200(sp)
   121f6:	68c80c13          	addi	s8,a6,1676 # 1a68c <blanks.1>
   121fa:	06e55363          	bge	a0,a4,12260 <_vfprintf_r+0xadc>
   121fe:	c8ca                	sw	s2,80(sp)
   12200:	87a2                	mv	a5,s0
   12202:	8962                	mv	s2,s8
   12204:	4ec1                	li	t4,16
   12206:	8c5a                	mv	s8,s6
   12208:	439d                	li	t2,7
   1220a:	8b56                	mv	s6,s5
   1220c:	dc16                	sw	t0,56(sp)
   1220e:	c6fe                	sw	t6,76(sp)
   12210:	843a                	mv	s0,a4
   12212:	8ac6                	mv	s5,a7
   12214:	a021                	j	1221c <_vfprintf_r+0xa98>
   12216:	1441                	addi	s0,s0,-16
   12218:	028edb63          	bge	t4,s0,1224e <_vfprintf_r+0xaca>
   1221c:	0641                	addi	a2,a2,16
   1221e:	0585                	addi	a1,a1,1
   12220:	0127a023          	sw	s2,0(a5)
   12224:	01d7a223          	sw	t4,4(a5)
   12228:	c7b2                	sw	a2,204(sp)
   1222a:	c5ae                	sw	a1,200(sp)
   1222c:	07a1                	addi	a5,a5,8
   1222e:	feb3d4e3          	bge	t2,a1,12216 <_vfprintf_r+0xa92>
   12232:	4522                	lw	a0,8(sp)
   12234:	01d0                	addi	a2,sp,196
   12236:	85a6                	mv	a1,s1
   12238:	192010ef          	jal	133ca <__sprint_r>
   1223c:	f145                	bnez	a0,121dc <_vfprintf_r+0xa58>
   1223e:	4ec1                	li	t4,16
   12240:	1441                	addi	s0,s0,-16
   12242:	463e                	lw	a2,204(sp)
   12244:	45ae                	lw	a1,200(sp)
   12246:	87ce                	mv	a5,s3
   12248:	439d                	li	t2,7
   1224a:	fc8ec9e3          	blt	t4,s0,1221c <_vfprintf_r+0xa98>
   1224e:	88d6                	mv	a7,s5
   12250:	52e2                	lw	t0,56(sp)
   12252:	8ada                	mv	s5,s6
   12254:	4fb6                	lw	t6,76(sp)
   12256:	8b62                	mv	s6,s8
   12258:	8c4a                	mv	s8,s2
   1225a:	4946                	lw	s2,80(sp)
   1225c:	8722                	mv	a4,s0
   1225e:	843e                	mv	s0,a5
   12260:	963a                	add	a2,a2,a4
   12262:	0585                	addi	a1,a1,1
   12264:	c058                	sw	a4,4(s0)
   12266:	01842023          	sw	s8,0(s0)
   1226a:	c7b2                	sw	a2,204(sp)
   1226c:	c5ae                	sw	a1,200(sp)
   1226e:	471d                	li	a4,7
   12270:	0421                	addi	s0,s0,8
   12272:	eab75c63          	bge	a4,a1,1192a <_vfprintf_r+0x1a6>
   12276:	4522                	lw	a0,8(sp)
   12278:	01d0                	addi	a2,sp,196
   1227a:	85a6                	mv	a1,s1
   1227c:	c8c6                	sw	a7,80(sp)
   1227e:	c6fe                	sw	t6,76(sp)
   12280:	dc16                	sw	t0,56(sp)
   12282:	148010ef          	jal	133ca <__sprint_r>
   12286:	f939                	bnez	a0,121dc <_vfprintf_r+0xa58>
   12288:	463e                	lw	a2,204(sp)
   1228a:	48c6                	lw	a7,80(sp)
   1228c:	4fb6                	lw	t6,76(sp)
   1228e:	52e2                	lw	t0,56(sp)
   12290:	844e                	mv	s0,s3
   12292:	e98ff06f          	j	1192a <_vfprintf_r+0x1a6>
   12296:	4522                	lw	a0,8(sp)
   12298:	01d0                	addi	a2,sp,196
   1229a:	85a6                	mv	a1,s1
   1229c:	c6c6                	sw	a7,76(sp)
   1229e:	dc7e                	sw	t6,56(sp)
   122a0:	12a010ef          	jal	133ca <__sprint_r>
   122a4:	fd05                	bnez	a0,121dc <_vfprintf_r+0xa58>
   122a6:	463e                	lw	a2,204(sp)
   122a8:	48b6                	lw	a7,76(sp)
   122aa:	5fe2                	lw	t6,56(sp)
   122ac:	844e                	mv	s0,s3
   122ae:	ebcff06f          	j	1196a <_vfprintf_r+0x1e6>
   122b2:	6869                	lui	a6,0x1a
   122b4:	4741                	li	a4,16
   122b6:	47ae                	lw	a5,200(sp)
   122b8:	68c80c13          	addi	s8,a6,1676 # 1a68c <blanks.1>
   122bc:	05575163          	bge	a4,s5,122fe <_vfprintf_r+0xb7a>
   122c0:	4d22                	lw	s10,8(sp)
   122c2:	4b41                	li	s6,16
   122c4:	4c9d                	li	s9,7
   122c6:	a021                	j	122ce <_vfprintf_r+0xb4a>
   122c8:	1ac1                	addi	s5,s5,-16
   122ca:	035b5a63          	bge	s6,s5,122fe <_vfprintf_r+0xb7a>
   122ce:	0641                	addi	a2,a2,16
   122d0:	0785                	addi	a5,a5,1
   122d2:	01842023          	sw	s8,0(s0)
   122d6:	01642223          	sw	s6,4(s0)
   122da:	c7b2                	sw	a2,204(sp)
   122dc:	c5be                	sw	a5,200(sp)
   122de:	0421                	addi	s0,s0,8
   122e0:	fefcd4e3          	bge	s9,a5,122c8 <_vfprintf_r+0xb44>
   122e4:	01d0                	addi	a2,sp,196
   122e6:	85a6                	mv	a1,s1
   122e8:	856a                	mv	a0,s10
   122ea:	0e0010ef          	jal	133ca <__sprint_r>
   122ee:	ee0517e3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   122f2:	1ac1                	addi	s5,s5,-16
   122f4:	463e                	lw	a2,204(sp)
   122f6:	47ae                	lw	a5,200(sp)
   122f8:	844e                	mv	s0,s3
   122fa:	fd5b4ae3          	blt	s6,s5,122ce <_vfprintf_r+0xb4a>
   122fe:	9656                	add	a2,a2,s5
   12300:	0785                	addi	a5,a5,1
   12302:	01842023          	sw	s8,0(s0)
   12306:	01542223          	sw	s5,4(s0)
   1230a:	c7b2                	sw	a2,204(sp)
   1230c:	c5be                	sw	a5,200(sp)
   1230e:	471d                	li	a4,7
   12310:	e8f75e63          	bge	a4,a5,119ac <_vfprintf_r+0x228>
   12314:	4522                	lw	a0,8(sp)
   12316:	01d0                	addi	a2,sp,196
   12318:	85a6                	mv	a1,s1
   1231a:	0b0010ef          	jal	133ca <__sprint_r>
   1231e:	ea051fe3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12322:	463e                	lw	a2,204(sp)
   12324:	e88ff06f          	j	119ac <_vfprintf_r+0x228>
   12328:	553a                	lw	a0,172(sp)
   1232a:	5ca05e63          	blez	a0,12906 <_vfprintf_r+0x1182>
   1232e:	47f2                	lw	a5,28(sp)
   12330:	5702                	lw	a4,32(sp)
   12332:	8abe                	mv	s5,a5
   12334:	22f74163          	blt	a4,a5,12556 <_vfprintf_r+0xdd2>
   12338:	01505f63          	blez	s5,12356 <_vfprintf_r+0xbd2>
   1233c:	472e                	lw	a4,200(sp)
   1233e:	9656                	add	a2,a2,s5
   12340:	01a42023          	sw	s10,0(s0)
   12344:	0705                	addi	a4,a4,1
   12346:	01542223          	sw	s5,4(s0)
   1234a:	c7b2                	sw	a2,204(sp)
   1234c:	c5ba                	sw	a4,200(sp)
   1234e:	459d                	li	a1,7
   12350:	0421                	addi	s0,s0,8
   12352:	14e5c5e3          	blt	a1,a4,12c9c <_vfprintf_r+0x1518>
   12356:	fffac713          	not	a4,s5
   1235a:	47f2                	lw	a5,28(sp)
   1235c:	877d                	srai	a4,a4,0x1f
   1235e:	00eafab3          	and	s5,s5,a4
   12362:	41578ab3          	sub	s5,a5,s5
   12366:	2b504163          	bgtz	s5,12608 <_vfprintf_r+0xe84>
   1236a:	47f2                	lw	a5,28(sp)
   1236c:	400cf713          	andi	a4,s9,1024
   12370:	00fd0c33          	add	s8,s10,a5
   12374:	7a071e63          	bnez	a4,12b30 <_vfprintf_r+0x13ac>
   12378:	5aba                	lw	s5,172(sp)
   1237a:	5782                	lw	a5,32(sp)
   1237c:	2cfaca63          	blt	s5,a5,12650 <_vfprintf_r+0xecc>
   12380:	001cf713          	andi	a4,s9,1
   12384:	2c071663          	bnez	a4,12650 <_vfprintf_r+0xecc>
   12388:	5702                	lw	a4,32(sp)
   1238a:	00ed07b3          	add	a5,s10,a4
   1238e:	41570ab3          	sub	s5,a4,s5
   12392:	41878b33          	sub	s6,a5,s8
   12396:	016ad363          	bge	s5,s6,1239c <_vfprintf_r+0xc18>
   1239a:	8b56                	mv	s6,s5
   1239c:	01605f63          	blez	s6,123ba <_vfprintf_r+0xc36>
   123a0:	47ae                	lw	a5,200(sp)
   123a2:	965a                	add	a2,a2,s6
   123a4:	01842023          	sw	s8,0(s0)
   123a8:	0785                	addi	a5,a5,1
   123aa:	01642223          	sw	s6,4(s0)
   123ae:	c7b2                	sw	a2,204(sp)
   123b0:	c5be                	sw	a5,200(sp)
   123b2:	471d                	li	a4,7
   123b4:	0421                	addi	s0,s0,8
   123b6:	4cf74de3          	blt	a4,a5,13090 <_vfprintf_r+0x190c>
   123ba:	fffb4793          	not	a5,s6
   123be:	87fd                	srai	a5,a5,0x1f
   123c0:	00fb7b33          	and	s6,s6,a5
   123c4:	416a8ab3          	sub	s5,s5,s6
   123c8:	dd505a63          	blez	s5,1199c <_vfprintf_r+0x218>
   123cc:	6869                	lui	a6,0x1a
   123ce:	67c80813          	addi	a6,a6,1660 # 1a67c <zeroes.0>
   123d2:	4741                	li	a4,16
   123d4:	47ae                	lw	a5,200(sp)
   123d6:	4b41                	li	s6,16
   123d8:	4c1d                	li	s8,7
   123da:	8d42                	mv	s10,a6
   123dc:	01574663          	blt	a4,s5,123e8 <_vfprintf_r+0xc64>
   123e0:	ab49                	j	12972 <_vfprintf_r+0x11ee>
   123e2:	1ac1                	addi	s5,s5,-16
   123e4:	595b5663          	bge	s6,s5,12970 <_vfprintf_r+0x11ec>
   123e8:	0641                	addi	a2,a2,16
   123ea:	0785                	addi	a5,a5,1
   123ec:	01a42023          	sw	s10,0(s0)
   123f0:	01642223          	sw	s6,4(s0)
   123f4:	c7b2                	sw	a2,204(sp)
   123f6:	c5be                	sw	a5,200(sp)
   123f8:	0421                	addi	s0,s0,8
   123fa:	fefc54e3          	bge	s8,a5,123e2 <_vfprintf_r+0xc5e>
   123fe:	4522                	lw	a0,8(sp)
   12400:	01d0                	addi	a2,sp,196
   12402:	85a6                	mv	a1,s1
   12404:	7c7000ef          	jal	133ca <__sprint_r>
   12408:	dc051ae3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   1240c:	463e                	lw	a2,204(sp)
   1240e:	47ae                	lw	a5,200(sp)
   12410:	844e                	mv	s0,s3
   12412:	bfc1                	j	123e2 <_vfprintf_r+0xc5e>
   12414:	001cf593          	andi	a1,s9,1
   12418:	840599e3          	bnez	a1,11c6a <_vfprintf_r+0x4e6>
   1241c:	c058                	sw	a4,4(s0)
   1241e:	c7e2                	sw	s8,204(sp)
   12420:	c5d6                	sw	s5,200(sp)
   12422:	479d                	li	a5,7
   12424:	8b57dbe3          	bge	a5,s5,11cda <_vfprintf_r+0x556>
   12428:	4522                	lw	a0,8(sp)
   1242a:	01d0                	addi	a2,sp,196
   1242c:	85a6                	mv	a1,s1
   1242e:	79d000ef          	jal	133ca <__sprint_r>
   12432:	da0515e3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12436:	4c3e                	lw	s8,204(sp)
   12438:	4aae                	lw	s5,200(sp)
   1243a:	8b4e                	mv	s6,s3
   1243c:	b879                	j	11cda <_vfprintf_r+0x556>
   1243e:	5702                	lw	a4,32(sp)
   12440:	4785                	li	a5,1
   12442:	88e7dce3          	bge	a5,a4,11cda <_vfprintf_r+0x556>
   12446:	6869                	lui	a6,0x1a
   12448:	47c5                	li	a5,17
   1244a:	67c80813          	addi	a6,a6,1660 # 1a67c <zeroes.0>
   1244e:	60e7d863          	bge	a5,a4,12a5e <_vfprintf_r+0x12da>
   12452:	ce4a                	sw	s2,28(sp)
   12454:	47c1                	li	a5,16
   12456:	4d1d                	li	s10,7
   12458:	8942                	mv	s2,a6
   1245a:	a021                	j	12462 <_vfprintf_r+0xcde>
   1245c:	1441                	addi	s0,s0,-16
   1245e:	5e87de63          	bge	a5,s0,12a5a <_vfprintf_r+0x12d6>
   12462:	0c41                	addi	s8,s8,16
   12464:	0a85                	addi	s5,s5,1
   12466:	012b2023          	sw	s2,0(s6)
   1246a:	00fb2223          	sw	a5,4(s6)
   1246e:	c7e2                	sw	s8,204(sp)
   12470:	c5d6                	sw	s5,200(sp)
   12472:	0b21                	addi	s6,s6,8
   12474:	ff5d54e3          	bge	s10,s5,1245c <_vfprintf_r+0xcd8>
   12478:	4522                	lw	a0,8(sp)
   1247a:	01d0                	addi	a2,sp,196
   1247c:	85a6                	mv	a1,s1
   1247e:	74d000ef          	jal	133ca <__sprint_r>
   12482:	d4051de3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12486:	4c3e                	lw	s8,204(sp)
   12488:	4aae                	lw	s5,200(sp)
   1248a:	8b4e                	mv	s6,s3
   1248c:	47c1                	li	a5,16
   1248e:	b7f9                	j	1245c <_vfprintf_r+0xcd8>
   12490:	4752                	lw	a4,20(sp)
   12492:	010ef793          	andi	a5,t4,16
   12496:	00072b03          	lw	s6,0(a4)
   1249a:	0711                	addi	a4,a4,4
   1249c:	ca3a                	sw	a4,20(sp)
   1249e:	ef9d                	bnez	a5,124dc <_vfprintf_r+0xd58>
   124a0:	040ef793          	andi	a5,t4,64
   124a4:	c79d                	beqz	a5,124d2 <_vfprintf_r+0xd4e>
   124a6:	0b42                	slli	s6,s6,0x10
   124a8:	010b5b13          	srli	s6,s6,0x10
   124ac:	4d81                	li	s11,0
   124ae:	4785                	li	a5,1
   124b0:	e6eff06f          	j	11b1e <_vfprintf_r+0x39a>
   124b4:	4b01                	li	s6,0
   124b6:	19010d13          	addi	s10,sp,400
   124ba:	e1eff06f          	j	11ad8 <_vfprintf_r+0x354>
   124be:	001cf793          	andi	a5,s9,1
   124c2:	cc078d63          	beqz	a5,1199c <_vfprintf_r+0x218>
   124c6:	b61d                	j	11fec <_vfprintf_r+0x868>
   124c8:	00094883          	lbu	a7,0(s2)
   124cc:	ca3e                	sw	a5,20(sp)
   124ce:	be6ff06f          	j	118b4 <_vfprintf_r+0x130>
   124d2:	200ef793          	andi	a5,t4,512
   124d6:	c399                	beqz	a5,124dc <_vfprintf_r+0xd58>
   124d8:	0ffb7b13          	zext.b	s6,s6
   124dc:	4d81                	li	s11,0
   124de:	4785                	li	a5,1
   124e0:	e3eff06f          	j	11b1e <_vfprintf_r+0x39a>
   124e4:	200cf793          	andi	a5,s9,512
   124e8:	7e079563          	bnez	a5,12cd2 <_vfprintf_r+0x154e>
   124ec:	4d81                	li	s11,0
   124ee:	e2aff06f          	j	11b18 <_vfprintf_r+0x394>
   124f2:	200cf793          	andi	a5,s9,512
   124f6:	7c079663          	bnez	a5,12cc2 <_vfprintf_r+0x153e>
   124fa:	41fb5d93          	srai	s11,s6,0x1f
   124fe:	87ee                	mv	a5,s11
   12500:	db6ff06f          	j	11ab6 <_vfprintf_r+0x332>
   12504:	57f2                	lw	a5,60(sp)
   12506:	00094883          	lbu	a7,0(s2)
   1250a:	ba078563          	beqz	a5,118b4 <_vfprintf_r+0x130>
   1250e:	0007c783          	lbu	a5,0(a5)
   12512:	ba078163          	beqz	a5,118b4 <_vfprintf_r+0x130>
   12516:	400cec93          	ori	s9,s9,1024
   1251a:	b9aff06f          	j	118b4 <_vfprintf_r+0x130>
   1251e:	010cf793          	andi	a5,s9,16
   12522:	4c079063          	bnez	a5,129e2 <_vfprintf_r+0x125e>
   12526:	040cf793          	andi	a5,s9,64
   1252a:	78079563          	bnez	a5,12cb4 <_vfprintf_r+0x1530>
   1252e:	200cfe13          	andi	t3,s9,512
   12532:	4a0e0863          	beqz	t3,129e2 <_vfprintf_r+0x125e>
   12536:	47d2                	lw	a5,20(sp)
   12538:	4732                	lw	a4,12(sp)
   1253a:	439c                	lw	a5,0(a5)
   1253c:	00e78023          	sb	a4,0(a5)
   12540:	b425                	j	11f68 <_vfprintf_r+0x7e4>
   12542:	47d2                	lw	a5,20(sp)
   12544:	4398                	lw	a4,0(a5)
   12546:	0791                	addi	a5,a5,4
   12548:	ca3e                	sw	a5,20(sp)
   1254a:	430c                	lw	a1,0(a4)
   1254c:	4350                	lw	a2,4(a4)
   1254e:	4714                	lw	a3,8(a4)
   12550:	4758                	lw	a4,12(a4)
   12552:	e52ff06f          	j	11ba4 <_vfprintf_r+0x420>
   12556:	8aba                	mv	s5,a4
   12558:	df5042e3          	bgtz	s5,1233c <_vfprintf_r+0xbb8>
   1255c:	bbed                	j	12356 <_vfprintf_r+0xbd2>
   1255e:	5afd                	li	s5,-1
   12560:	8936                	mv	s2,a3
   12562:	b54ff06f          	j	118b6 <_vfprintf_r+0x132>
   12566:	67e9                	lui	a5,0x1a
   12568:	20c78793          	addi	a5,a5,524 # 1a20c <__clzsi2+0xec>
   1256c:	da3e                	sw	a5,52(sp)
   1256e:	020cf793          	andi	a5,s9,32
   12572:	26078263          	beqz	a5,127d6 <_vfprintf_r+0x1052>
   12576:	47d2                	lw	a5,20(sp)
   12578:	00778c13          	addi	s8,a5,7
   1257c:	ff8c7c13          	andi	s8,s8,-8
   12580:	000c2b03          	lw	s6,0(s8)
   12584:	004c2d83          	lw	s11,4(s8)
   12588:	008c0793          	addi	a5,s8,8
   1258c:	ca3e                	sw	a5,20(sp)
   1258e:	001cf793          	andi	a5,s9,1
   12592:	cf81                	beqz	a5,125aa <_vfprintf_r+0xe26>
   12594:	01bb67b3          	or	a5,s6,s11
   12598:	cb89                	beqz	a5,125aa <_vfprintf_r+0xe26>
   1259a:	03000793          	li	a5,48
   1259e:	0af10423          	sb	a5,168(sp)
   125a2:	0b1104a3          	sb	a7,169(sp)
   125a6:	002cec93          	ori	s9,s9,2
   125aa:	bffcfe93          	andi	t4,s9,-1025
   125ae:	4789                	li	a5,2
   125b0:	d6eff06f          	j	11b1e <_vfprintf_r+0x39a>
   125b4:	8ee6                	mv	t4,s9
   125b6:	b289                	j	11ef8 <_vfprintf_r+0x774>
   125b8:	67e9                	lui	a5,0x1a
   125ba:	1f878793          	addi	a5,a5,504 # 1a1f8 <__clzsi2+0xd8>
   125be:	da3e                	sw	a5,52(sp)
   125c0:	b77d                	j	1256e <_vfprintf_r+0xdea>
   125c2:	00194883          	lbu	a7,1(s2)
   125c6:	200cec93          	ori	s9,s9,512
   125ca:	0905                	addi	s2,s2,1
   125cc:	ae8ff06f          	j	118b4 <_vfprintf_r+0x130>
   125d0:	00194883          	lbu	a7,1(s2)
   125d4:	020cec93          	ori	s9,s9,32
   125d8:	0905                	addi	s2,s2,1
   125da:	adaff06f          	j	118b4 <_vfprintf_r+0x130>
   125de:	4522                	lw	a0,8(sp)
   125e0:	01d0                	addi	a2,sp,196
   125e2:	85a6                	mv	a1,s1
   125e4:	5e7000ef          	jal	133ca <__sprint_r>
   125e8:	be051ae3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   125ec:	463e                	lw	a2,204(sp)
   125ee:	844e                	mv	s0,s3
   125f0:	bc29                	j	1200a <_vfprintf_r+0x886>
   125f2:	4799                	li	a5,6
   125f4:	8b56                	mv	s6,s5
   125f6:	6b57ed63          	bltu	a5,s5,12cb0 <_vfprintf_r+0x152c>
   125fa:	67e9                	lui	a5,0x1a
   125fc:	8dda                	mv	s11,s6
   125fe:	ca62                	sw	s8,20(sp)
   12600:	22078d13          	addi	s10,a5,544 # 1a220 <__clzsi2+0x100>
   12604:	b00ff06f          	j	11904 <_vfprintf_r+0x180>
   12608:	6869                	lui	a6,0x1a
   1260a:	45c1                	li	a1,16
   1260c:	472e                	lw	a4,200(sp)
   1260e:	67c80813          	addi	a6,a6,1660 # 1a67c <zeroes.0>
   12612:	4755db63          	bge	a1,s5,12a88 <_vfprintf_r+0x1304>
   12616:	87a2                	mv	a5,s0
   12618:	4c41                	li	s8,16
   1261a:	4b1d                	li	s6,7
   1261c:	8442                	mv	s0,a6
   1261e:	a021                	j	12626 <_vfprintf_r+0xea2>
   12620:	1ac1                	addi	s5,s5,-16
   12622:	475c5163          	bge	s8,s5,12a84 <_vfprintf_r+0x1300>
   12626:	0641                	addi	a2,a2,16
   12628:	0705                	addi	a4,a4,1
   1262a:	c380                	sw	s0,0(a5)
   1262c:	0187a223          	sw	s8,4(a5)
   12630:	c7b2                	sw	a2,204(sp)
   12632:	c5ba                	sw	a4,200(sp)
   12634:	07a1                	addi	a5,a5,8
   12636:	feeb55e3          	bge	s6,a4,12620 <_vfprintf_r+0xe9c>
   1263a:	4522                	lw	a0,8(sp)
   1263c:	01d0                	addi	a2,sp,196
   1263e:	85a6                	mv	a1,s1
   12640:	58b000ef          	jal	133ca <__sprint_r>
   12644:	b8051ce3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12648:	463e                	lw	a2,204(sp)
   1264a:	472e                	lw	a4,200(sp)
   1264c:	87ce                	mv	a5,s3
   1264e:	bfc9                	j	12620 <_vfprintf_r+0xe9c>
   12650:	5742                	lw	a4,48(sp)
   12652:	57b2                	lw	a5,44(sp)
   12654:	459d                	li	a1,7
   12656:	c018                	sw	a4,0(s0)
   12658:	472e                	lw	a4,200(sp)
   1265a:	963e                	add	a2,a2,a5
   1265c:	c05c                	sw	a5,4(s0)
   1265e:	0705                	addi	a4,a4,1
   12660:	c7b2                	sw	a2,204(sp)
   12662:	c5ba                	sw	a4,200(sp)
   12664:	0421                	addi	s0,s0,8
   12666:	d2e5d1e3          	bge	a1,a4,12388 <_vfprintf_r+0xc04>
   1266a:	4522                	lw	a0,8(sp)
   1266c:	01d0                	addi	a2,sp,196
   1266e:	85a6                	mv	a1,s1
   12670:	55b000ef          	jal	133ca <__sprint_r>
   12674:	b60514e3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12678:	5aba                	lw	s5,172(sp)
   1267a:	463e                	lw	a2,204(sp)
   1267c:	844e                	mv	s0,s3
   1267e:	b329                	j	12388 <_vfprintf_r+0xc04>
   12680:	07800793          	li	a5,120
   12684:	03000713          	li	a4,48
   12688:	0ae10423          	sb	a4,168(sp)
   1268c:	0af104a3          	sb	a5,169(sp)
   12690:	06300713          	li	a4,99
   12694:	c802                	sw	zero,16(sp)
   12696:	002cec93          	ori	s9,s9,2
   1269a:	12c10d13          	addi	s10,sp,300
   1269e:	d5575c63          	bge	a4,s5,11bf6 <_vfprintf_r+0x472>
   126a2:	4522                	lw	a0,8(sp)
   126a4:	001a8593          	addi	a1,s5,1
   126a8:	c846                	sw	a7,16(sp)
   126aa:	b33fe0ef          	jal	111dc <_malloc_r>
   126ae:	48c2                	lw	a7,16(sp)
   126b0:	8d2a                	mv	s10,a0
   126b2:	460502e3          	beqz	a0,13316 <_vfprintf_r+0x1b92>
   126b6:	c82a                	sw	a0,16(sp)
   126b8:	d3eff06f          	j	11bf6 <_vfprintf_r+0x472>
   126bc:	4522                	lw	a0,8(sp)
   126be:	09010b13          	addi	s6,sp,144
   126c2:	1178                	addi	a4,sp,172
   126c4:	0bc10813          	addi	a6,sp,188
   126c8:	191c                	addi	a5,sp,176
   126ca:	86d6                	mv	a3,s5
   126cc:	4609                	li	a2,2
   126ce:	85da                	mv	a1,s6
   126d0:	d446                	sw	a7,40(sp)
   126d2:	c97e                	sw	t6,144(sp)
   126d4:	d27e                	sw	t6,36(sp)
   126d6:	cb7a                	sw	t5,148(sp)
   126d8:	d07a                	sw	t5,32(sp)
   126da:	cd76                	sw	t4,152(sp)
   126dc:	ce76                	sw	t4,28(sp)
   126de:	cf62                	sw	s8,156(sp)
   126e0:	0f3010ef          	jal	13fd2 <_ldtoa_r>
   126e4:	001cf713          	andi	a4,s9,1
   126e8:	4ef2                	lw	t4,28(sp)
   126ea:	5f02                	lw	t5,32(sp)
   126ec:	5f92                	lw	t6,36(sp)
   126ee:	58a2                	lw	a7,40(sp)
   126f0:	8d2a                	mv	s10,a0
   126f2:	62071163          	bnez	a4,12d14 <_vfprintf_r+0x1590>
   126f6:	57ba                	lw	a5,172(sp)
   126f8:	ce3e                	sw	a5,28(sp)
   126fa:	57fa                	lw	a5,188(sp)
   126fc:	8f89                	sub	a5,a5,a0
   126fe:	d03e                	sw	a5,32(sp)
   12700:	47f2                	lw	a5,28(sp)
   12702:	5775                	li	a4,-3
   12704:	00e7c463          	blt	a5,a4,1270c <_vfprintf_r+0xf88>
   12708:	0efadbe3          	bge	s5,a5,12ffe <_vfprintf_r+0x187a>
   1270c:	47f2                	lw	a5,28(sp)
   1270e:	18f9                	addi	a7,a7,-2
   12710:	fff78713          	addi	a4,a5,-1
   12714:	d73a                	sw	a4,172(sp)
   12716:	0ff8f693          	zext.b	a3,a7
   1271a:	4601                	li	a2,0
   1271c:	0ad10a23          	sb	a3,180(sp)
   12720:	02b00693          	li	a3,43
   12724:	00075763          	bgez	a4,12732 <_vfprintf_r+0xfae>
   12728:	47f2                	lw	a5,28(sp)
   1272a:	4705                	li	a4,1
   1272c:	02d00693          	li	a3,45
   12730:	8f1d                	sub	a4,a4,a5
   12732:	0ad10aa3          	sb	a3,181(sp)
   12736:	46a5                	li	a3,9
   12738:	2ae6d1e3          	bge	a3,a4,131da <_vfprintf_r+0x1a56>
   1273c:	0c310813          	addi	a6,sp,195
   12740:	85c2                	mv	a1,a6
   12742:	4529                	li	a0,10
   12744:	06300f13          	li	t5,99
   12748:	02a767b3          	rem	a5,a4,a0
   1274c:	862e                	mv	a2,a1
   1274e:	86ba                	mv	a3,a4
   12750:	15fd                	addi	a1,a1,-1
   12752:	03078793          	addi	a5,a5,48
   12756:	fef60fa3          	sb	a5,-1(a2)
   1275a:	02a74733          	div	a4,a4,a0
   1275e:	fedf45e3          	blt	t5,a3,12748 <_vfprintf_r+0xfc4>
   12762:	03070713          	addi	a4,a4,48
   12766:	ffe60693          	addi	a3,a2,-2
   1276a:	fee58fa3          	sb	a4,-1(a1)
   1276e:	3706fce3          	bgeu	a3,a6,132e6 <_vfprintf_r+0x1b62>
   12772:	0b610713          	addi	a4,sp,182
   12776:	0006c783          	lbu	a5,0(a3)
   1277a:	0685                	addi	a3,a3,1
   1277c:	0705                	addi	a4,a4,1
   1277e:	fef70fa3          	sb	a5,-1(a4)
   12782:	ff069ae3          	bne	a3,a6,12776 <_vfprintf_r+0xff2>
   12786:	0b1c                	addi	a5,sp,400
   12788:	40c78733          	sub	a4,a5,a2
   1278c:	f3770793          	addi	a5,a4,-201
   12790:	c0be                	sw	a5,64(sp)
   12792:	5782                	lw	a5,32(sp)
   12794:	4686                	lw	a3,64(sp)
   12796:	4705                	li	a4,1
   12798:	00d78b33          	add	s6,a5,a3
   1279c:	26f758e3          	bge	a4,a5,1320c <_vfprintf_r+0x1a88>
   127a0:	57b2                	lw	a5,44(sp)
   127a2:	9b3e                	add	s6,s6,a5
   127a4:	fffb4693          	not	a3,s6
   127a8:	bffcfe13          	andi	t3,s9,-1025
   127ac:	86fd                	srai	a3,a3,0x1f
   127ae:	100e6793          	ori	a5,t3,256
   127b2:	c6be                	sw	a5,76(sp)
   127b4:	00db7db3          	and	s11,s6,a3
   127b8:	d402                	sw	zero,40(sp)
   127ba:	d202                	sw	zero,36(sp)
   127bc:	ce02                	sw	zero,28(sp)
   127be:	57e2                	lw	a5,56(sp)
   127c0:	020786e3          	beqz	a5,12fec <_vfprintf_r+0x1868>
   127c4:	02d00713          	li	a4,45
   127c8:	4cb6                	lw	s9,76(sp)
   127ca:	0ae103a3          	sb	a4,167(sp)
   127ce:	4a81                	li	s5,0
   127d0:	0d85                	addi	s11,s11,1
   127d2:	93cff06f          	j	1190e <_vfprintf_r+0x18a>
   127d6:	4752                	lw	a4,20(sp)
   127d8:	010cf793          	andi	a5,s9,16
   127dc:	00072b03          	lw	s6,0(a4)
   127e0:	0711                	addi	a4,a4,4
   127e2:	ca3a                	sw	a4,20(sp)
   127e4:	e7a9                	bnez	a5,1282e <_vfprintf_r+0x10aa>
   127e6:	040cf793          	andi	a5,s9,64
   127ea:	cf95                	beqz	a5,12826 <_vfprintf_r+0x10a2>
   127ec:	0b42                	slli	s6,s6,0x10
   127ee:	010b5b13          	srli	s6,s6,0x10
   127f2:	4d81                	li	s11,0
   127f4:	bb69                	j	1258e <_vfprintf_r+0xe0a>
   127f6:	4522                	lw	a0,8(sp)
   127f8:	01d0                	addi	a2,sp,196
   127fa:	85a6                	mv	a1,s1
   127fc:	3cf000ef          	jal	133ca <__sprint_r>
   12800:	9c051ee3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12804:	4c3e                	lw	s8,204(sp)
   12806:	4aae                	lw	s5,200(sp)
   12808:	8b4e                	mv	s6,s3
   1280a:	c6eff06f          	j	11c78 <_vfprintf_r+0x4f4>
   1280e:	4522                	lw	a0,8(sp)
   12810:	01d0                	addi	a2,sp,196
   12812:	85a6                	mv	a1,s1
   12814:	3b7000ef          	jal	133ca <__sprint_r>
   12818:	9c0512e3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   1281c:	4c3e                	lw	s8,204(sp)
   1281e:	4aae                	lw	s5,200(sp)
   12820:	8b4e                	mv	s6,s3
   12822:	c72ff06f          	j	11c94 <_vfprintf_r+0x510>
   12826:	200cf793          	andi	a5,s9,512
   1282a:	4a079963          	bnez	a5,12cdc <_vfprintf_r+0x1558>
   1282e:	4d81                	li	s11,0
   12830:	bbb9                	j	1258e <_vfprintf_r+0xe0a>
   12832:	ccccd837          	lui	a6,0xccccd
   12836:	ccccdcb7          	lui	s9,0xccccd
   1283a:	5772                	lw	a4,60(sp)
   1283c:	400eff13          	andi	t5,t4,1024
   12840:	4601                	li	a2,0
   12842:	0b0c                	addi	a1,sp,400
   12844:	4e15                	li	t3,5
   12846:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccb1271>
   1284a:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccb1270>
   1284e:	0ff00c13          	li	s8,255
   12852:	a081                	j	12892 <_vfprintf_r+0x110e>
   12854:	016d37b3          	sltu	a5,s10,s6
   12858:	97ea                	add	a5,a5,s10
   1285a:	03c7f7b3          	remu	a5,a5,t3
   1285e:	40fb07b3          	sub	a5,s6,a5
   12862:	00fb35b3          	sltu	a1,s6,a5
   12866:	40bd85b3          	sub	a1,s11,a1
   1286a:	03978333          	mul	t1,a5,s9
   1286e:	030585b3          	mul	a1,a1,a6
   12872:	0307b533          	mulhu	a0,a5,a6
   12876:	959a                	add	a1,a1,t1
   12878:	030787b3          	mul	a5,a5,a6
   1287c:	95aa                	add	a1,a1,a0
   1287e:	01f59513          	slli	a0,a1,0x1f
   12882:	8185                	srli	a1,a1,0x1
   12884:	8385                	srli	a5,a5,0x1
   12886:	8fc9                	or	a5,a5,a0
   12888:	7c0d8763          	beqz	s11,13056 <_vfprintf_r+0x18d2>
   1288c:	8dae                	mv	s11,a1
   1288e:	8b3e                	mv	s6,a5
   12890:	85b6                	mv	a1,a3
   12892:	01bb0d33          	add	s10,s6,s11
   12896:	016d37b3          	sltu	a5,s10,s6
   1289a:	97ea                	add	a5,a5,s10
   1289c:	03c7f7b3          	remu	a5,a5,t3
   128a0:	fff58693          	addi	a3,a1,-1
   128a4:	0605                	addi	a2,a2,1
   128a6:	40fb07b3          	sub	a5,s6,a5
   128aa:	00fb3533          	sltu	a0,s6,a5
   128ae:	40ad8533          	sub	a0,s11,a0
   128b2:	0307b333          	mulhu	t1,a5,a6
   128b6:	03050533          	mul	a0,a0,a6
   128ba:	030787b3          	mul	a5,a5,a6
   128be:	951a                	add	a0,a0,t1
   128c0:	057e                	slli	a0,a0,0x1f
   128c2:	8385                	srli	a5,a5,0x1
   128c4:	8fc9                	or	a5,a5,a0
   128c6:	00279513          	slli	a0,a5,0x2
   128ca:	97aa                	add	a5,a5,a0
   128cc:	0786                	slli	a5,a5,0x1
   128ce:	40fb07b3          	sub	a5,s6,a5
   128d2:	03078793          	addi	a5,a5,48
   128d6:	fef58fa3          	sb	a5,-1(a1)
   128da:	f60f0de3          	beqz	t5,12854 <_vfprintf_r+0x10d0>
   128de:	00074783          	lbu	a5,0(a4)
   128e2:	f6f619e3          	bne	a2,a5,12854 <_vfprintf_r+0x10d0>
   128e6:	f78607e3          	beq	a2,s8,12854 <_vfprintf_r+0x10d0>
   128ea:	1c0d9563          	bnez	s11,12ab4 <_vfprintf_r+0x1330>
   128ee:	47a5                	li	a5,9
   128f0:	1d67e263          	bltu	a5,s6,12ab4 <_vfprintf_r+0x1330>
   128f4:	8d36                	mv	s10,a3
   128f6:	0b1c                	addi	a5,sp,400
   128f8:	d032                	sw	a2,32(sp)
   128fa:	de3a                	sw	a4,60(sp)
   128fc:	41a78b33          	sub	s6,a5,s10
   12900:	8cf6                	mv	s9,t4
   12902:	9d6ff06f          	j	11ad8 <_vfprintf_r+0x354>
   12906:	472e                	lw	a4,200(sp)
   12908:	65e9                	lui	a1,0x1a
   1290a:	22858593          	addi	a1,a1,552 # 1a228 <__clzsi2+0x108>
   1290e:	c00c                	sw	a1,0(s0)
   12910:	0605                	addi	a2,a2,1
   12912:	4585                	li	a1,1
   12914:	0705                	addi	a4,a4,1
   12916:	c04c                	sw	a1,4(s0)
   12918:	c7b2                	sw	a2,204(sp)
   1291a:	c5ba                	sw	a4,200(sp)
   1291c:	459d                	li	a1,7
   1291e:	0421                	addi	s0,s0,8
   12920:	36e5c063          	blt	a1,a4,12c80 <_vfprintf_r+0x14fc>
   12924:	e569                	bnez	a0,129ee <_vfprintf_r+0x126a>
   12926:	5782                	lw	a5,32(sp)
   12928:	001cf713          	andi	a4,s9,1
   1292c:	8f5d                	or	a4,a4,a5
   1292e:	e319                	bnez	a4,12934 <_vfprintf_r+0x11b0>
   12930:	86cff06f          	j	1199c <_vfprintf_r+0x218>
   12934:	5742                	lw	a4,48(sp)
   12936:	57b2                	lw	a5,44(sp)
   12938:	459d                	li	a1,7
   1293a:	c018                	sw	a4,0(s0)
   1293c:	472e                	lw	a4,200(sp)
   1293e:	963e                	add	a2,a2,a5
   12940:	c05c                	sw	a5,4(s0)
   12942:	0705                	addi	a4,a4,1
   12944:	c7b2                	sw	a2,204(sp)
   12946:	c5ba                	sw	a4,200(sp)
   12948:	3ae5cb63          	blt	a1,a4,12cfe <_vfprintf_r+0x157a>
   1294c:	0421                	addi	s0,s0,8
   1294e:	a87d                	j	12a0c <_vfprintf_r+0x1288>
   12950:	4522                	lw	a0,8(sp)
   12952:	fc1fd0ef          	jal	10912 <__sinit>
   12956:	e6dfe06f          	j	117c2 <_vfprintf_r+0x3e>
   1295a:	4522                	lw	a0,8(sp)
   1295c:	01d0                	addi	a2,sp,196
   1295e:	85a6                	mv	a1,s1
   12960:	26b000ef          	jal	133ca <__sprint_r>
   12964:	86051ce3          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12968:	463e                	lw	a2,204(sp)
   1296a:	844e                	mv	s0,s3
   1296c:	e78ff06f          	j	11fe4 <_vfprintf_r+0x860>
   12970:	886a                	mv	a6,s10
   12972:	01042023          	sw	a6,0(s0)
   12976:	01542223          	sw	s5,4(s0)
   1297a:	9656                	add	a2,a2,s5
   1297c:	0785                	addi	a5,a5,1
   1297e:	c7b2                	sw	a2,204(sp)
   12980:	c5be                	sw	a5,200(sp)
   12982:	471d                	li	a4,7
   12984:	00f74463          	blt	a4,a5,1298c <_vfprintf_r+0x1208>
   12988:	812ff06f          	j	1199a <_vfprintf_r+0x216>
   1298c:	b70ff06f          	j	11cfc <_vfprintf_r+0x578>
   12990:	47ce                	lw	a5,208(sp)
   12992:	010c                	addi	a1,sp,128
   12994:	0908                	addi	a0,sp,144
   12996:	c93e                	sw	a5,144(sp)
   12998:	47de                	lw	a5,212(sp)
   1299a:	c102                	sw	zero,128(sp)
   1299c:	c302                	sw	zero,132(sp)
   1299e:	cb3e                	sw	a5,148(sp)
   129a0:	47ee                	lw	a5,216(sp)
   129a2:	c502                	sw	zero,136(sp)
   129a4:	c702                	sw	zero,140(sp)
   129a6:	cd3e                	sw	a5,152(sp)
   129a8:	47fe                	lw	a5,220(sp)
   129aa:	cf3e                	sw	a5,156(sp)
   129ac:	4dc050ef          	jal	17e88 <__letf2>
   129b0:	48c2                	lw	a7,16(sp)
   129b2:	6a054a63          	bltz	a0,13066 <_vfprintf_r+0x18e2>
   129b6:	0a714703          	lbu	a4,167(sp)
   129ba:	04700793          	li	a5,71
   129be:	2d17db63          	bge	a5,a7,12c94 <_vfprintf_r+0x1510>
   129c2:	67e9                	lui	a5,0x1a
   129c4:	1ec78d13          	addi	s10,a5,492 # 1a1ec <__clzsi2+0xcc>
   129c8:	c802                	sw	zero,16(sp)
   129ca:	d402                	sw	zero,40(sp)
   129cc:	d202                	sw	zero,36(sp)
   129ce:	ce02                	sw	zero,28(sp)
   129d0:	f7fcfc93          	andi	s9,s9,-129
   129d4:	4d8d                	li	s11,3
   129d6:	4b0d                	li	s6,3
   129d8:	4a81                	li	s5,0
   129da:	90071b63          	bnez	a4,11af0 <_vfprintf_r+0x36c>
   129de:	f31fe06f          	j	1190e <_vfprintf_r+0x18a>
   129e2:	47d2                	lw	a5,20(sp)
   129e4:	4732                	lw	a4,12(sp)
   129e6:	439c                	lw	a5,0(a5)
   129e8:	c398                	sw	a4,0(a5)
   129ea:	d7eff06f          	j	11f68 <_vfprintf_r+0x7e4>
   129ee:	5742                	lw	a4,48(sp)
   129f0:	57b2                	lw	a5,44(sp)
   129f2:	459d                	li	a1,7
   129f4:	c018                	sw	a4,0(s0)
   129f6:	472e                	lw	a4,200(sp)
   129f8:	963e                	add	a2,a2,a5
   129fa:	c05c                	sw	a5,4(s0)
   129fc:	0705                	addi	a4,a4,1
   129fe:	c7b2                	sw	a2,204(sp)
   12a00:	c5ba                	sw	a4,200(sp)
   12a02:	0421                	addi	s0,s0,8
   12a04:	2ee5cd63          	blt	a1,a4,12cfe <_vfprintf_r+0x157a>
   12a08:	74054a63          	bltz	a0,1315c <_vfprintf_r+0x19d8>
   12a0c:	5782                	lw	a5,32(sp)
   12a0e:	0705                	addi	a4,a4,1
   12a10:	01a42023          	sw	s10,0(s0)
   12a14:	963e                	add	a2,a2,a5
   12a16:	c05c                	sw	a5,4(s0)
   12a18:	c7b2                	sw	a2,204(sp)
   12a1a:	c5ba                	sw	a4,200(sp)
   12a1c:	479d                	li	a5,7
   12a1e:	00e7c463          	blt	a5,a4,12a26 <_vfprintf_r+0x12a2>
   12a22:	f79fe06f          	j	1199a <_vfprintf_r+0x216>
   12a26:	ad6ff06f          	j	11cfc <_vfprintf_r+0x578>
   12a2a:	856a                	mv	a0,s10
   12a2c:	dc46                	sw	a7,56(sp)
   12a2e:	b82fe0ef          	jal	10db0 <strlen>
   12a32:	0a714703          	lbu	a4,167(sp)
   12a36:	fff54693          	not	a3,a0
   12a3a:	86fd                	srai	a3,a3,0x1f
   12a3c:	ca62                	sw	s8,20(sp)
   12a3e:	c802                	sw	zero,16(sp)
   12a40:	d402                	sw	zero,40(sp)
   12a42:	d202                	sw	zero,36(sp)
   12a44:	ce02                	sw	zero,28(sp)
   12a46:	58e2                	lw	a7,56(sp)
   12a48:	8b2a                	mv	s6,a0
   12a4a:	00d57db3          	and	s11,a0,a3
   12a4e:	4a81                	li	s5,0
   12a50:	c319                	beqz	a4,12a56 <_vfprintf_r+0x12d2>
   12a52:	89eff06f          	j	11af0 <_vfprintf_r+0x36c>
   12a56:	eb9fe06f          	j	1190e <_vfprintf_r+0x18a>
   12a5a:	884a                	mv	a6,s2
   12a5c:	4972                	lw	s2,28(sp)
   12a5e:	9c22                	add	s8,s8,s0
   12a60:	0a85                	addi	s5,s5,1
   12a62:	010b2023          	sw	a6,0(s6)
   12a66:	a64ff06f          	j	11cca <_vfprintf_r+0x546>
   12a6a:	47fe                	lw	a5,220(sp)
   12a6c:	2607cc63          	bltz	a5,12ce4 <_vfprintf_r+0x1560>
   12a70:	0a714703          	lbu	a4,167(sp)
   12a74:	04700793          	li	a5,71
   12a78:	6317ca63          	blt	a5,a7,130ac <_vfprintf_r+0x1928>
   12a7c:	67e9                	lui	a5,0x1a
   12a7e:	1f078d13          	addi	s10,a5,496 # 1a1f0 <__clzsi2+0xd0>
   12a82:	b799                	j	129c8 <_vfprintf_r+0x1244>
   12a84:	8822                	mv	a6,s0
   12a86:	843e                	mv	s0,a5
   12a88:	9656                	add	a2,a2,s5
   12a8a:	0705                	addi	a4,a4,1
   12a8c:	01042023          	sw	a6,0(s0)
   12a90:	01542223          	sw	s5,4(s0)
   12a94:	c7b2                	sw	a2,204(sp)
   12a96:	c5ba                	sw	a4,200(sp)
   12a98:	459d                	li	a1,7
   12a9a:	0421                	addi	s0,s0,8
   12a9c:	8ce5d7e3          	bge	a1,a4,1236a <_vfprintf_r+0xbe6>
   12aa0:	4522                	lw	a0,8(sp)
   12aa2:	01d0                	addi	a2,sp,196
   12aa4:	85a6                	mv	a1,s1
   12aa6:	125000ef          	jal	133ca <__sprint_r>
   12aaa:	f2051963          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12aae:	463e                	lw	a2,204(sp)
   12ab0:	844e                	mv	s0,s3
   12ab2:	b865                	j	1236a <_vfprintf_r+0xbe6>
   12ab4:	47a6                	lw	a5,72(sp)
   12ab6:	4596                	lw	a1,68(sp)
   12ab8:	dc42                	sw	a6,56(sp)
   12aba:	8e9d                	sub	a3,a3,a5
   12abc:	863e                	mv	a2,a5
   12abe:	8536                	mv	a0,a3
   12ac0:	d47a                	sw	t5,40(sp)
   12ac2:	d276                	sw	t4,36(sp)
   12ac4:	d046                	sw	a7,32(sp)
   12ac6:	ce3a                	sw	a4,28(sp)
   12ac8:	c836                	sw	a3,16(sp)
   12aca:	0a4010ef          	jal	13b6e <strncpy>
   12ace:	016d37b3          	sltu	a5,s10,s6
   12ad2:	4615                	li	a2,5
   12ad4:	97ea                	add	a5,a5,s10
   12ad6:	02c7f7b3          	remu	a5,a5,a2
   12ada:	4772                	lw	a4,28(sp)
   12adc:	ccccd337          	lui	t1,0xccccd
   12ae0:	ccccd537          	lui	a0,0xccccd
   12ae4:	00174583          	lbu	a1,1(a4)
   12ae8:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccb1271>
   12aec:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccb1270>
   12af0:	00b035b3          	snez	a1,a1
   12af4:	972e                	add	a4,a4,a1
   12af6:	46c2                	lw	a3,16(sp)
   12af8:	5882                	lw	a7,32(sp)
   12afa:	5e92                	lw	t4,36(sp)
   12afc:	5f22                	lw	t5,40(sp)
   12afe:	5862                	lw	a6,56(sp)
   12b00:	4601                	li	a2,0
   12b02:	4e15                	li	t3,5
   12b04:	40fb07b3          	sub	a5,s6,a5
   12b08:	00fb35b3          	sltu	a1,s6,a5
   12b0c:	40bd85b3          	sub	a1,s11,a1
   12b10:	02a78533          	mul	a0,a5,a0
   12b14:	026585b3          	mul	a1,a1,t1
   12b18:	0267bfb3          	mulhu	t6,a5,t1
   12b1c:	95aa                	add	a1,a1,a0
   12b1e:	02678533          	mul	a0,a5,t1
   12b22:	95fe                	add	a1,a1,t6
   12b24:	01f59793          	slli	a5,a1,0x1f
   12b28:	8185                	srli	a1,a1,0x1
   12b2a:	8105                	srli	a0,a0,0x1
   12b2c:	8fc9                	or	a5,a5,a0
   12b2e:	bbb9                	j	1288c <_vfprintf_r+0x1108>
   12b30:	5782                	lw	a5,32(sp)
   12b32:	5b12                	lw	s6,36(sp)
   12b34:	68e9                	lui	a7,0x1a
   12b36:	97ea                	add	a5,a5,s10
   12b38:	dc4a                	sw	s2,56(sp)
   12b3a:	c6e6                	sw	s9,76(sp)
   12b3c:	c8de                	sw	s7,80(sp)
   12b3e:	d26e                	sw	s11,36(sp)
   12b40:	5da2                	lw	s11,40(sp)
   12b42:	d46a                	sw	s10,40(sp)
   12b44:	5cf2                	lw	s9,60(sp)
   12b46:	8d62                	mv	s10,s8
   12b48:	4922                	lw	s2,8(sp)
   12b4a:	4c26                	lw	s8,72(sp)
   12b4c:	481d                	li	a6,7
   12b4e:	4741                	li	a4,16
   12b50:	67c88a93          	addi	s5,a7,1660 # 1a67c <zeroes.0>
   12b54:	85a2                	mv	a1,s0
   12b56:	8bbe                	mv	s7,a5
   12b58:	07605363          	blez	s6,12bbe <_vfprintf_r+0x143a>
   12b5c:	0fb05663          	blez	s11,12c48 <_vfprintf_r+0x14c4>
   12b60:	1dfd                	addi	s11,s11,-1
   12b62:	4796                	lw	a5,68(sp)
   12b64:	9662                	add	a2,a2,s8
   12b66:	0185a223          	sw	s8,4(a1)
   12b6a:	c19c                	sw	a5,0(a1)
   12b6c:	47ae                	lw	a5,200(sp)
   12b6e:	c7b2                	sw	a2,204(sp)
   12b70:	05a1                	addi	a1,a1,8
   12b72:	0785                	addi	a5,a5,1
   12b74:	c5be                	sw	a5,200(sp)
   12b76:	0cf84c63          	blt	a6,a5,12c4e <_vfprintf_r+0x14ca>
   12b7a:	000cc683          	lbu	a3,0(s9)
   12b7e:	41ab8433          	sub	s0,s7,s10
   12b82:	0086d363          	bge	a3,s0,12b88 <_vfprintf_r+0x1404>
   12b86:	8436                	mv	s0,a3
   12b88:	00805f63          	blez	s0,12ba6 <_vfprintf_r+0x1422>
   12b8c:	46ae                	lw	a3,200(sp)
   12b8e:	9622                	add	a2,a2,s0
   12b90:	01a5a023          	sw	s10,0(a1)
   12b94:	0685                	addi	a3,a3,1
   12b96:	c1c0                	sw	s0,4(a1)
   12b98:	c7b2                	sw	a2,204(sp)
   12b9a:	c5b6                	sw	a3,200(sp)
   12b9c:	0cd84563          	blt	a6,a3,12c66 <_vfprintf_r+0x14e2>
   12ba0:	000cc683          	lbu	a3,0(s9)
   12ba4:	05a1                	addi	a1,a1,8
   12ba6:	fff44513          	not	a0,s0
   12baa:	857d                	srai	a0,a0,0x1f
   12bac:	00a477b3          	and	a5,s0,a0
   12bb0:	40f68433          	sub	s0,a3,a5
   12bb4:	02804763          	bgtz	s0,12be2 <_vfprintf_r+0x145e>
   12bb8:	9d36                	add	s10,s10,a3
   12bba:	fb6041e3          	bgtz	s6,12b5c <_vfprintf_r+0x13d8>
   12bbe:	fbb041e3          	bgtz	s11,12b60 <_vfprintf_r+0x13dc>
   12bc2:	5782                	lw	a5,32(sp)
   12bc4:	8c6a                	mv	s8,s10
   12bc6:	5d22                	lw	s10,40(sp)
   12bc8:	de66                	sw	s9,60(sp)
   12bca:	5962                	lw	s2,56(sp)
   12bcc:	00fd0733          	add	a4,s10,a5
   12bd0:	4cb6                	lw	s9,76(sp)
   12bd2:	4bc6                	lw	s7,80(sp)
   12bd4:	5d92                	lw	s11,36(sp)
   12bd6:	842e                	mv	s0,a1
   12bd8:	fb877063          	bgeu	a4,s8,12378 <_vfprintf_r+0xbf4>
   12bdc:	8c3a                	mv	s8,a4
   12bde:	f9aff06f          	j	12378 <_vfprintf_r+0xbf4>
   12be2:	6f69                	lui	t5,0x1a
   12be4:	46ae                	lw	a3,200(sp)
   12be6:	67cf0f13          	addi	t5,t5,1660 # 1a67c <zeroes.0>
   12bea:	04875163          	bge	a4,s0,12c2c <_vfprintf_r+0x14a8>
   12bee:	ce56                	sw	s5,28(sp)
   12bf0:	a021                	j	12bf8 <_vfprintf_r+0x1474>
   12bf2:	1441                	addi	s0,s0,-16
   12bf4:	02875b63          	bge	a4,s0,12c2a <_vfprintf_r+0x14a6>
   12bf8:	0641                	addi	a2,a2,16
   12bfa:	0685                	addi	a3,a3,1
   12bfc:	0155a023          	sw	s5,0(a1)
   12c00:	c1d8                	sw	a4,4(a1)
   12c02:	c7b2                	sw	a2,204(sp)
   12c04:	c5b6                	sw	a3,200(sp)
   12c06:	05a1                	addi	a1,a1,8
   12c08:	fed855e3          	bge	a6,a3,12bf2 <_vfprintf_r+0x146e>
   12c0c:	01d0                	addi	a2,sp,196
   12c0e:	85a6                	mv	a1,s1
   12c10:	854a                	mv	a0,s2
   12c12:	7b8000ef          	jal	133ca <__sprint_r>
   12c16:	dc051363          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12c1a:	4741                	li	a4,16
   12c1c:	1441                	addi	s0,s0,-16
   12c1e:	463e                	lw	a2,204(sp)
   12c20:	46ae                	lw	a3,200(sp)
   12c22:	85ce                	mv	a1,s3
   12c24:	481d                	li	a6,7
   12c26:	fc8749e3          	blt	a4,s0,12bf8 <_vfprintf_r+0x1474>
   12c2a:	4f72                	lw	t5,28(sp)
   12c2c:	9622                	add	a2,a2,s0
   12c2e:	0685                	addi	a3,a3,1
   12c30:	01e5a023          	sw	t5,0(a1)
   12c34:	c1c0                	sw	s0,4(a1)
   12c36:	c7b2                	sw	a2,204(sp)
   12c38:	c5b6                	sw	a3,200(sp)
   12c3a:	40d84063          	blt	a6,a3,1303a <_vfprintf_r+0x18b6>
   12c3e:	000cc683          	lbu	a3,0(s9)
   12c42:	05a1                	addi	a1,a1,8
   12c44:	9d36                	add	s10,s10,a3
   12c46:	bf95                	j	12bba <_vfprintf_r+0x1436>
   12c48:	1cfd                	addi	s9,s9,-1
   12c4a:	1b7d                	addi	s6,s6,-1
   12c4c:	bf19                	j	12b62 <_vfprintf_r+0x13de>
   12c4e:	01d0                	addi	a2,sp,196
   12c50:	85a6                	mv	a1,s1
   12c52:	854a                	mv	a0,s2
   12c54:	776000ef          	jal	133ca <__sprint_r>
   12c58:	d8051263          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12c5c:	463e                	lw	a2,204(sp)
   12c5e:	85ce                	mv	a1,s3
   12c60:	4741                	li	a4,16
   12c62:	481d                	li	a6,7
   12c64:	bf19                	j	12b7a <_vfprintf_r+0x13f6>
   12c66:	01d0                	addi	a2,sp,196
   12c68:	85a6                	mv	a1,s1
   12c6a:	854a                	mv	a0,s2
   12c6c:	2fb9                	jal	133ca <__sprint_r>
   12c6e:	d6051763          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12c72:	000cc683          	lbu	a3,0(s9)
   12c76:	463e                	lw	a2,204(sp)
   12c78:	85ce                	mv	a1,s3
   12c7a:	4741                	li	a4,16
   12c7c:	481d                	li	a6,7
   12c7e:	b725                	j	12ba6 <_vfprintf_r+0x1422>
   12c80:	4522                	lw	a0,8(sp)
   12c82:	01d0                	addi	a2,sp,196
   12c84:	85a6                	mv	a1,s1
   12c86:	2791                	jal	133ca <__sprint_r>
   12c88:	d4051a63          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12c8c:	553a                	lw	a0,172(sp)
   12c8e:	463e                	lw	a2,204(sp)
   12c90:	844e                	mv	s0,s3
   12c92:	b949                	j	12924 <_vfprintf_r+0x11a0>
   12c94:	67e9                	lui	a5,0x1a
   12c96:	1e878d13          	addi	s10,a5,488 # 1a1e8 <__clzsi2+0xc8>
   12c9a:	b33d                	j	129c8 <_vfprintf_r+0x1244>
   12c9c:	4522                	lw	a0,8(sp)
   12c9e:	01d0                	addi	a2,sp,196
   12ca0:	85a6                	mv	a1,s1
   12ca2:	2725                	jal	133ca <__sprint_r>
   12ca4:	d2051c63          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12ca8:	463e                	lw	a2,204(sp)
   12caa:	844e                	mv	s0,s3
   12cac:	eaaff06f          	j	12356 <_vfprintf_r+0xbd2>
   12cb0:	4b19                	li	s6,6
   12cb2:	b2a1                	j	125fa <_vfprintf_r+0xe76>
   12cb4:	47d2                	lw	a5,20(sp)
   12cb6:	4732                	lw	a4,12(sp)
   12cb8:	439c                	lw	a5,0(a5)
   12cba:	00e79023          	sh	a4,0(a5)
   12cbe:	aaaff06f          	j	11f68 <_vfprintf_r+0x7e4>
   12cc2:	0b62                	slli	s6,s6,0x18
   12cc4:	418b5b13          	srai	s6,s6,0x18
   12cc8:	41fb5d93          	srai	s11,s6,0x1f
   12ccc:	87ee                	mv	a5,s11
   12cce:	de9fe06f          	j	11ab6 <_vfprintf_r+0x332>
   12cd2:	0ffb7b13          	zext.b	s6,s6
   12cd6:	4d81                	li	s11,0
   12cd8:	e41fe06f          	j	11b18 <_vfprintf_r+0x394>
   12cdc:	0ffb7b13          	zext.b	s6,s6
   12ce0:	4d81                	li	s11,0
   12ce2:	b075                	j	1258e <_vfprintf_r+0xe0a>
   12ce4:	02d00793          	li	a5,45
   12ce8:	0af103a3          	sb	a5,167(sp)
   12cec:	02d00713          	li	a4,45
   12cf0:	b351                	j	12a74 <_vfprintf_r+0x12f0>
   12cf2:	4522                	lw	a0,8(sp)
   12cf4:	01d0                	addi	a2,sp,196
   12cf6:	85a6                	mv	a1,s1
   12cf8:	2dc9                	jal	133ca <__sprint_r>
   12cfa:	ce7fe06f          	j	119e0 <_vfprintf_r+0x25c>
   12cfe:	4522                	lw	a0,8(sp)
   12d00:	01d0                	addi	a2,sp,196
   12d02:	85a6                	mv	a1,s1
   12d04:	25d9                	jal	133ca <__sprint_r>
   12d06:	cc051b63          	bnez	a0,121dc <_vfprintf_r+0xa58>
   12d0a:	553a                	lw	a0,172(sp)
   12d0c:	463e                	lw	a2,204(sp)
   12d0e:	472e                	lw	a4,200(sp)
   12d10:	844e                	mv	s0,s3
   12d12:	b9dd                	j	12a08 <_vfprintf_r+0x1284>
   12d14:	01550733          	add	a4,a0,s5
   12d18:	04700613          	li	a2,71
   12d1c:	010c                	addi	a1,sp,128
   12d1e:	855a                	mv	a0,s6
   12d20:	d23a                	sw	a4,36(sp)
   12d22:	d032                	sw	a2,32(sp)
   12d24:	ce46                	sw	a7,28(sp)
   12d26:	c97e                	sw	t6,144(sp)
   12d28:	cb7a                	sw	t5,148(sp)
   12d2a:	cd76                	sw	t4,152(sp)
   12d2c:	cf62                	sw	s8,156(sp)
   12d2e:	c102                	sw	zero,128(sp)
   12d30:	c302                	sw	zero,132(sp)
   12d32:	c502                	sw	zero,136(sp)
   12d34:	c702                	sw	zero,140(sp)
   12d36:	77b040ef          	jal	17cb0 <__eqtf2>
   12d3a:	48f2                	lw	a7,28(sp)
   12d3c:	5602                	lw	a2,32(sp)
   12d3e:	5712                	lw	a4,36(sp)
   12d40:	36050a63          	beqz	a0,130b4 <_vfprintf_r+0x1930>
   12d44:	57fa                	lw	a5,188(sp)
   12d46:	00e7fc63          	bgeu	a5,a4,12d5e <_vfprintf_r+0x15da>
   12d4a:	03000593          	li	a1,48
   12d4e:	00178693          	addi	a3,a5,1
   12d52:	df36                	sw	a3,188(sp)
   12d54:	00b78023          	sb	a1,0(a5)
   12d58:	57fa                	lw	a5,188(sp)
   12d5a:	fee7eae3          	bltu	a5,a4,12d4e <_vfprintf_r+0x15ca>
   12d5e:	573a                	lw	a4,172(sp)
   12d60:	ce3a                	sw	a4,28(sp)
   12d62:	41a787b3          	sub	a5,a5,s10
   12d66:	04700713          	li	a4,71
   12d6a:	d03e                	sw	a5,32(sp)
   12d6c:	98e60ae3          	beq	a2,a4,12700 <_vfprintf_r+0xf7c>
   12d70:	04600713          	li	a4,70
   12d74:	38e60863          	beq	a2,a4,13104 <_vfprintf_r+0x1980>
   12d78:	47f2                	lw	a5,28(sp)
   12d7a:	fff78713          	addi	a4,a5,-1
   12d7e:	ba59                	j	12714 <_vfprintf_r+0xf90>
   12d80:	001a8693          	addi	a3,s5,1
   12d84:	4609                	li	a2,2
   12d86:	4522                	lw	a0,8(sp)
   12d88:	09010b13          	addi	s6,sp,144
   12d8c:	1178                	addi	a4,sp,172
   12d8e:	85da                	mv	a1,s6
   12d90:	0bc10813          	addi	a6,sp,188
   12d94:	191c                	addi	a5,sp,176
   12d96:	c8c6                	sw	a7,80(sp)
   12d98:	d436                	sw	a3,40(sp)
   12d9a:	c97e                	sw	t6,144(sp)
   12d9c:	d27e                	sw	t6,36(sp)
   12d9e:	cb7a                	sw	t5,148(sp)
   12da0:	d07a                	sw	t5,32(sp)
   12da2:	cd76                	sw	t4,152(sp)
   12da4:	ce76                	sw	t4,28(sp)
   12da6:	cf62                	sw	s8,156(sp)
   12da8:	22a010ef          	jal	13fd2 <_ldtoa_r>
   12dac:	48c6                	lw	a7,80(sp)
   12dae:	56a2                	lw	a3,40(sp)
   12db0:	04600593          	li	a1,70
   12db4:	fdf8f613          	andi	a2,a7,-33
   12db8:	4ef2                	lw	t4,28(sp)
   12dba:	5f02                	lw	t5,32(sp)
   12dbc:	5f92                	lw	t6,36(sp)
   12dbe:	8d2a                	mv	s10,a0
   12dc0:	00d50733          	add	a4,a0,a3
   12dc4:	54b61563          	bne	a2,a1,1330e <_vfprintf_r+0x1b8a>
   12dc8:	000d4503          	lbu	a0,0(s10)
   12dcc:	03000593          	li	a1,48
   12dd0:	2eb50663          	beq	a0,a1,130bc <_vfprintf_r+0x1938>
   12dd4:	56ba                	lw	a3,172(sp)
   12dd6:	010c                	addi	a1,sp,128
   12dd8:	9736                	add	a4,a4,a3
   12dda:	b791                	j	12d1e <_vfprintf_r+0x159a>
   12ddc:	09010b13          	addi	s6,sp,144
   12de0:	010c                	addi	a1,sp,128
   12de2:	1170                	addi	a2,sp,172
   12de4:	855a                	mv	a0,s6
   12de6:	c0c6                	sw	a7,64(sp)
   12de8:	c17e                	sw	t6,128(sp)
   12dea:	c37a                	sw	t5,132(sp)
   12dec:	c576                	sw	t4,136(sp)
   12dee:	ce2e                	sw	a1,28(sp)
   12df0:	c762                	sw	s8,140(sp)
   12df2:	084010ef          	jal	13e76 <frexpl>
   12df6:	474a                	lw	a4,144(sp)
   12df8:	45f2                	lw	a1,28(sp)
   12dfa:	1890                	addi	a2,sp,112
   12dfc:	c13a                	sw	a4,128(sp)
   12dfe:	475a                	lw	a4,148(sp)
   12e00:	855a                	mv	a0,s6
   12e02:	d882                	sw	zero,112(sp)
   12e04:	c33a                	sw	a4,132(sp)
   12e06:	476a                	lw	a4,152(sp)
   12e08:	da82                	sw	zero,116(sp)
   12e0a:	dc82                	sw	zero,120(sp)
   12e0c:	c53a                	sw	a4,136(sp)
   12e0e:	477a                	lw	a4,156(sp)
   12e10:	c73a                	sw	a4,140(sp)
   12e12:	3ffc0737          	lui	a4,0x3ffc0
   12e16:	deba                	sw	a4,124(sp)
   12e18:	15c050ef          	jal	17f74 <__multf3>
   12e1c:	45f2                	lw	a1,28(sp)
   12e1e:	4f4a                	lw	t5,144(sp)
   12e20:	4eda                	lw	t4,148(sp)
   12e22:	486a                	lw	a6,152(sp)
   12e24:	855a                	mv	a0,s6
   12e26:	d42e                	sw	a1,40(sp)
   12e28:	d27a                	sw	t5,36(sp)
   12e2a:	d076                	sw	t4,32(sp)
   12e2c:	ce42                	sw	a6,28(sp)
   12e2e:	c102                	sw	zero,128(sp)
   12e30:	c302                	sw	zero,132(sp)
   12e32:	c502                	sw	zero,136(sp)
   12e34:	c702                	sw	zero,140(sp)
   12e36:	67b040ef          	jal	17cb0 <__eqtf2>
   12e3a:	4dfa                	lw	s11,156(sp)
   12e3c:	4872                	lw	a6,28(sp)
   12e3e:	5e82                	lw	t4,32(sp)
   12e40:	5f12                	lw	t5,36(sp)
   12e42:	55a2                	lw	a1,40(sp)
   12e44:	4886                	lw	a7,64(sp)
   12e46:	e119                	bnez	a0,12e4c <_vfprintf_r+0x16c8>
   12e48:	4705                	li	a4,1
   12e4a:	d73a                	sw	a4,172(sp)
   12e4c:	06100713          	li	a4,97
   12e50:	44e88d63          	beq	a7,a4,132aa <_vfprintf_r+0x1b26>
   12e54:	6769                	lui	a4,0x1a
   12e56:	20c70793          	addi	a5,a4,524 # 1a20c <__clzsi2+0xec>
   12e5a:	ce3e                	sw	a5,28(sp)
   12e5c:	d04a                	sw	s2,32(sp)
   12e5e:	d466                	sw	s9,40(sp)
   12e60:	c0de                	sw	s7,64(sp)
   12e62:	c6a2                	sw	s0,76(sp)
   12e64:	896a                	mv	s2,s10
   12e66:	c8a6                	sw	s1,80(sp)
   12e68:	caea                	sw	s10,84(sp)
   12e6a:	44f2                	lw	s1,28(sp)
   12e6c:	1afd                	addi	s5,s5,-1
   12e6e:	d246                	sw	a7,36(sp)
   12e70:	8bfa                	mv	s7,t5
   12e72:	8c76                	mv	s8,t4
   12e74:	8cc2                	mv	s9,a6
   12e76:	8d6e                	mv	s10,s11
   12e78:	842e                	mv	s0,a1
   12e7a:	a015                	j	12e9e <_vfprintf_r+0x171a>
   12e7c:	85a2                	mv	a1,s0
   12e7e:	855a                	mv	a0,s6
   12e80:	c95e                	sw	s7,144(sp)
   12e82:	cb62                	sw	s8,148(sp)
   12e84:	cd66                	sw	s9,152(sp)
   12e86:	cf6a                	sw	s10,156(sp)
   12e88:	c102                	sw	zero,128(sp)
   12e8a:	c302                	sw	zero,132(sp)
   12e8c:	c502                	sw	zero,136(sp)
   12e8e:	c702                	sw	zero,140(sp)
   12e90:	fffa8d93          	addi	s11,s5,-1
   12e94:	61d040ef          	jal	17cb0 <__eqtf2>
   12e98:	3c050c63          	beqz	a0,13270 <_vfprintf_r+0x1aec>
   12e9c:	8aee                	mv	s5,s11
   12e9e:	400307b7          	lui	a5,0x40030
   12ea2:	1890                	addi	a2,sp,112
   12ea4:	85a2                	mv	a1,s0
   12ea6:	855a                	mv	a0,s6
   12ea8:	debe                	sw	a5,124(sp)
   12eaa:	c15e                	sw	s7,128(sp)
   12eac:	c362                	sw	s8,132(sp)
   12eae:	c566                	sw	s9,136(sp)
   12eb0:	c76a                	sw	s10,140(sp)
   12eb2:	d882                	sw	zero,112(sp)
   12eb4:	da82                	sw	zero,116(sp)
   12eb6:	dc82                	sw	zero,120(sp)
   12eb8:	0bc050ef          	jal	17f74 <__multf3>
   12ebc:	855a                	mv	a0,s6
   12ebe:	6e1060ef          	jal	19d9e <__fixtfsi>
   12ec2:	85aa                	mv	a1,a0
   12ec4:	8daa                	mv	s11,a0
   12ec6:	855a                	mv	a0,s6
   12ec8:	4d4a                	lw	s10,144(sp)
   12eca:	4cda                	lw	s9,148(sp)
   12ecc:	4c6a                	lw	s8,152(sp)
   12ece:	4bfa                	lw	s7,156(sp)
   12ed0:	7f3060ef          	jal	19ec2 <__floatsitf>
   12ed4:	46ca                	lw	a3,144(sp)
   12ed6:	1090                	addi	a2,sp,96
   12ed8:	188c                	addi	a1,sp,112
   12eda:	d0b6                	sw	a3,96(sp)
   12edc:	46da                	lw	a3,148(sp)
   12ede:	8522                	mv	a0,s0
   12ee0:	d8ea                	sw	s10,112(sp)
   12ee2:	d2b6                	sw	a3,100(sp)
   12ee4:	46ea                	lw	a3,152(sp)
   12ee6:	dae6                	sw	s9,116(sp)
   12ee8:	dce2                	sw	s8,120(sp)
   12eea:	d4b6                	sw	a3,104(sp)
   12eec:	46fa                	lw	a3,156(sp)
   12eee:	dede                	sw	s7,124(sp)
   12ef0:	d6b6                	sw	a3,108(sp)
   12ef2:	51f050ef          	jal	18c10 <__subtf3>
   12ef6:	01b486b3          	add	a3,s1,s11
   12efa:	0006c603          	lbu	a2,0(a3)
   12efe:	8fca                	mv	t6,s2
   12f00:	0905                	addi	s2,s2,1
   12f02:	4b8a                	lw	s7,128(sp)
   12f04:	4c1a                	lw	s8,132(sp)
   12f06:	4caa                	lw	s9,136(sp)
   12f08:	4d3a                	lw	s10,140(sp)
   12f0a:	57fd                	li	a5,-1
   12f0c:	fec90fa3          	sb	a2,-1(s2)
   12f10:	f6fa96e3          	bne	s5,a5,12e7c <_vfprintf_r+0x16f8>
   12f14:	5892                	lw	a7,36(sp)
   12f16:	8f5e                	mv	t5,s7
   12f18:	8ee2                	mv	t4,s8
   12f1a:	8866                	mv	a6,s9
   12f1c:	85a2                	mv	a1,s0
   12f1e:	ccee                	sw	s11,88(sp)
   12f20:	3ffe0ab7          	lui	s5,0x3ffe0
   12f24:	8dea                	mv	s11,s10
   12f26:	855a                	mv	a0,s6
   12f28:	cec6                	sw	a7,92(sp)
   12f2a:	d27e                	sw	t6,36(sp)
   12f2c:	44c6                	lw	s1,80(sp)
   12f2e:	4b86                	lw	s7,64(sp)
   12f30:	5ca2                	lw	s9,40(sp)
   12f32:	4436                	lw	s0,76(sp)
   12f34:	c97a                	sw	t5,144(sp)
   12f36:	c8fa                	sw	t5,80(sp)
   12f38:	cb76                	sw	t4,148(sp)
   12f3a:	c6f6                	sw	t4,76(sp)
   12f3c:	cd42                	sw	a6,152(sp)
   12f3e:	c0c2                	sw	a6,64(sp)
   12f40:	cf6e                	sw	s11,156(sp)
   12f42:	c102                	sw	zero,128(sp)
   12f44:	c302                	sw	zero,132(sp)
   12f46:	c502                	sw	zero,136(sp)
   12f48:	c756                	sw	s5,140(sp)
   12f4a:	d42e                	sw	a1,40(sp)
   12f4c:	651040ef          	jal	17d9c <__getf2>
   12f50:	8c4a                	mv	s8,s2
   12f52:	4d56                	lw	s10,84(sp)
   12f54:	5902                	lw	s2,32(sp)
   12f56:	5f92                	lw	t6,36(sp)
   12f58:	48f6                	lw	a7,92(sp)
   12f5a:	00a04e63          	bgtz	a0,12f76 <_vfprintf_r+0x17f2>
   12f5e:	55a2                	lw	a1,40(sp)
   12f60:	855a                	mv	a0,s6
   12f62:	d046                	sw	a7,32(sp)
   12f64:	54d040ef          	jal	17cb0 <__eqtf2>
   12f68:	5882                	lw	a7,32(sp)
   12f6a:	e529                	bnez	a0,12fb4 <_vfprintf_r+0x1830>
   12f6c:	47e6                	lw	a5,88(sp)
   12f6e:	5f92                	lw	t6,36(sp)
   12f70:	0017f693          	andi	a3,a5,1
   12f74:	c2a1                	beqz	a3,12fb4 <_vfprintf_r+0x1830>
   12f76:	47f2                	lw	a5,28(sp)
   12f78:	df7e                	sw	t6,188(sp)
   12f7a:	fffc4603          	lbu	a2,-1(s8)
   12f7e:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x400145b3>
   12f82:	86e2                	mv	a3,s8
   12f84:	00b61e63          	bne	a2,a1,12fa0 <_vfprintf_r+0x181c>
   12f88:	03000513          	li	a0,48
   12f8c:	fea68fa3          	sb	a0,-1(a3)
   12f90:	56fa                	lw	a3,188(sp)
   12f92:	fff68793          	addi	a5,a3,-1
   12f96:	df3e                	sw	a5,188(sp)
   12f98:	fff6c603          	lbu	a2,-1(a3)
   12f9c:	fec588e3          	beq	a1,a2,12f8c <_vfprintf_r+0x1808>
   12fa0:	00160593          	addi	a1,a2,1
   12fa4:	03900513          	li	a0,57
   12fa8:	0ff5f593          	zext.b	a1,a1
   12fac:	02a60c63          	beq	a2,a0,12fe4 <_vfprintf_r+0x1860>
   12fb0:	feb68fa3          	sb	a1,-1(a3)
   12fb4:	57ba                	lw	a5,172(sp)
   12fb6:	41ac0733          	sub	a4,s8,s10
   12fba:	d03a                	sw	a4,32(sp)
   12fbc:	fff78713          	addi	a4,a5,-1
   12fc0:	ce3e                	sw	a5,28(sp)
   12fc2:	06100613          	li	a2,97
   12fc6:	d73a                	sw	a4,172(sp)
   12fc8:	07000693          	li	a3,112
   12fcc:	00c88663          	beq	a7,a2,12fd8 <_vfprintf_r+0x1854>
   12fd0:	05000693          	li	a3,80
   12fd4:	04100893          	li	a7,65
   12fd8:	4605                	li	a2,1
   12fda:	f42ff06f          	j	1271c <_vfprintf_r+0xf98>
   12fde:	86d6                	mv	a3,s5
   12fe0:	460d                	li	a2,3
   12fe2:	b355                	j	12d86 <_vfprintf_r+0x1602>
   12fe4:	47f2                	lw	a5,28(sp)
   12fe6:	00a7c583          	lbu	a1,10(a5)
   12fea:	b7d9                	j	12fb0 <_vfprintf_r+0x182c>
   12fec:	0a714703          	lbu	a4,167(sp)
   12ff0:	4cb6                	lw	s9,76(sp)
   12ff2:	4a81                	li	s5,0
   12ff4:	c319                	beqz	a4,12ffa <_vfprintf_r+0x1876>
   12ff6:	afbfe06f          	j	11af0 <_vfprintf_r+0x36c>
   12ffa:	915fe06f          	j	1190e <_vfprintf_r+0x18a>
   12ffe:	5782                	lw	a5,32(sp)
   13000:	4772                	lw	a4,28(sp)
   13002:	12f74763          	blt	a4,a5,13130 <_vfprintf_r+0x19ac>
   13006:	47f2                	lw	a5,28(sp)
   13008:	001cf713          	andi	a4,s9,1
   1300c:	8b3e                	mv	s6,a5
   1300e:	c701                	beqz	a4,13016 <_vfprintf_r+0x1892>
   13010:	5732                	lw	a4,44(sp)
   13012:	00e78b33          	add	s6,a5,a4
   13016:	400cfe13          	andi	t3,s9,1024
   1301a:	000e0563          	beqz	t3,13024 <_vfprintf_r+0x18a0>
   1301e:	47f2                	lw	a5,28(sp)
   13020:	1ef04c63          	bgtz	a5,13218 <_vfprintf_r+0x1a94>
   13024:	fffb4693          	not	a3,s6
   13028:	86fd                	srai	a3,a3,0x1f
   1302a:	00db7db3          	and	s11,s6,a3
   1302e:	06700893          	li	a7,103
   13032:	d402                	sw	zero,40(sp)
   13034:	d202                	sw	zero,36(sp)
   13036:	f88ff06f          	j	127be <_vfprintf_r+0x103a>
   1303a:	01d0                	addi	a2,sp,196
   1303c:	85a6                	mv	a1,s1
   1303e:	854a                	mv	a0,s2
   13040:	2669                	jal	133ca <__sprint_r>
   13042:	98051d63          	bnez	a0,121dc <_vfprintf_r+0xa58>
   13046:	000cc683          	lbu	a3,0(s9)
   1304a:	463e                	lw	a2,204(sp)
   1304c:	85ce                	mv	a1,s3
   1304e:	4741                	li	a4,16
   13050:	481d                	li	a6,7
   13052:	9d36                	add	s10,s10,a3
   13054:	b69d                	j	12bba <_vfprintf_r+0x1436>
   13056:	4525                	li	a0,9
   13058:	83656ae3          	bltu	a0,s6,1288c <_vfprintf_r+0x1108>
   1305c:	b861                	j	128f4 <_vfprintf_r+0x1170>
   1305e:	57fd                	li	a5,-1
   13060:	c63e                	sw	a5,12(sp)
   13062:	9b1fe06f          	j	11a12 <_vfprintf_r+0x28e>
   13066:	02d00793          	li	a5,45
   1306a:	0af103a3          	sb	a5,167(sp)
   1306e:	02d00713          	li	a4,45
   13072:	b2a1                	j	129ba <_vfprintf_r+0x1236>
   13074:	0a714703          	lbu	a4,167(sp)
   13078:	ca62                	sw	s8,20(sp)
   1307a:	d402                	sw	zero,40(sp)
   1307c:	d202                	sw	zero,36(sp)
   1307e:	ce02                	sw	zero,28(sp)
   13080:	8dd6                	mv	s11,s5
   13082:	8b56                	mv	s6,s5
   13084:	4a81                	li	s5,0
   13086:	c319                	beqz	a4,1308c <_vfprintf_r+0x1908>
   13088:	a69fe06f          	j	11af0 <_vfprintf_r+0x36c>
   1308c:	883fe06f          	j	1190e <_vfprintf_r+0x18a>
   13090:	4522                	lw	a0,8(sp)
   13092:	01d0                	addi	a2,sp,196
   13094:	85a6                	mv	a1,s1
   13096:	2e15                	jal	133ca <__sprint_r>
   13098:	94051263          	bnez	a0,121dc <_vfprintf_r+0xa58>
   1309c:	5aba                	lw	s5,172(sp)
   1309e:	5782                	lw	a5,32(sp)
   130a0:	463e                	lw	a2,204(sp)
   130a2:	844e                	mv	s0,s3
   130a4:	41578ab3          	sub	s5,a5,s5
   130a8:	b12ff06f          	j	123ba <_vfprintf_r+0xc36>
   130ac:	67e9                	lui	a5,0x1a
   130ae:	1f478d13          	addi	s10,a5,500 # 1a1f4 <__clzsi2+0xd4>
   130b2:	ba19                	j	129c8 <_vfprintf_r+0x1244>
   130b4:	57ba                	lw	a5,172(sp)
   130b6:	ce3e                	sw	a5,28(sp)
   130b8:	87ba                	mv	a5,a4
   130ba:	b165                	j	12d62 <_vfprintf_r+0x15de>
   130bc:	010c                	addi	a1,sp,128
   130be:	855a                	mv	a0,s6
   130c0:	ceba                	sw	a4,92(sp)
   130c2:	ccb2                	sw	a2,88(sp)
   130c4:	cac6                	sw	a7,84(sp)
   130c6:	c8b6                	sw	a3,80(sp)
   130c8:	c97e                	sw	t6,144(sp)
   130ca:	d47e                	sw	t6,40(sp)
   130cc:	cb7a                	sw	t5,148(sp)
   130ce:	d27a                	sw	t5,36(sp)
   130d0:	cd76                	sw	t4,152(sp)
   130d2:	d076                	sw	t4,32(sp)
   130d4:	ce2e                	sw	a1,28(sp)
   130d6:	cf62                	sw	s8,156(sp)
   130d8:	c102                	sw	zero,128(sp)
   130da:	c302                	sw	zero,132(sp)
   130dc:	c502                	sw	zero,136(sp)
   130de:	c702                	sw	zero,140(sp)
   130e0:	3d1040ef          	jal	17cb0 <__eqtf2>
   130e4:	45f2                	lw	a1,28(sp)
   130e6:	5e82                	lw	t4,32(sp)
   130e8:	5f12                	lw	t5,36(sp)
   130ea:	5fa2                	lw	t6,40(sp)
   130ec:	46c6                	lw	a3,80(sp)
   130ee:	48d6                	lw	a7,84(sp)
   130f0:	4666                	lw	a2,88(sp)
   130f2:	4776                	lw	a4,92(sp)
   130f4:	1c051063          	bnez	a0,132b4 <_vfprintf_r+0x1b30>
   130f8:	57ba                	lw	a5,172(sp)
   130fa:	973e                	add	a4,a4,a5
   130fc:	ce3e                	sw	a5,28(sp)
   130fe:	41a707b3          	sub	a5,a4,s10
   13102:	d03e                	sw	a5,32(sp)
   13104:	47f2                	lw	a5,28(sp)
   13106:	001cf713          	andi	a4,s9,1
   1310a:	01576733          	or	a4,a4,s5
   1310e:	1af05963          	blez	a5,132c0 <_vfprintf_r+0x1b3c>
   13112:	18071463          	bnez	a4,1329a <_vfprintf_r+0x1b16>
   13116:	4b72                	lw	s6,28(sp)
   13118:	06600893          	li	a7,102
   1311c:	400cfe13          	andi	t3,s9,1024
   13120:	0e0e1e63          	bnez	t3,1321c <_vfprintf_r+0x1a98>
   13124:	fffb4693          	not	a3,s6
   13128:	86fd                	srai	a3,a3,0x1f
   1312a:	00db7db3          	and	s11,s6,a3
   1312e:	b711                	j	13032 <_vfprintf_r+0x18ae>
   13130:	5782                	lw	a5,32(sp)
   13132:	5732                	lw	a4,44(sp)
   13134:	06700893          	li	a7,103
   13138:	00e78b33          	add	s6,a5,a4
   1313c:	47f2                	lw	a5,28(sp)
   1313e:	fcf04fe3          	bgtz	a5,1311c <_vfprintf_r+0x1998>
   13142:	40fb0f33          	sub	t5,s6,a5
   13146:	001f0b13          	addi	s6,t5,1
   1314a:	fffb4693          	not	a3,s6
   1314e:	86fd                	srai	a3,a3,0x1f
   13150:	00db7db3          	and	s11,s6,a3
   13154:	bdf9                	j	13032 <_vfprintf_r+0x18ae>
   13156:	8ee6                	mv	t4,s9
   13158:	cf5fe06f          	j	11e4c <_vfprintf_r+0x6c8>
   1315c:	6869                	lui	a6,0x1a
   1315e:	55c1                	li	a1,-16
   13160:	40a00ab3          	neg	s5,a0
   13164:	67c80813          	addi	a6,a6,1660 # 1a67c <zeroes.0>
   13168:	04b55263          	bge	a0,a1,131ac <_vfprintf_r+0x1a28>
   1316c:	ce4a                	sw	s2,28(sp)
   1316e:	4b41                	li	s6,16
   13170:	4c1d                	li	s8,7
   13172:	8942                	mv	s2,a6
   13174:	a021                	j	1317c <_vfprintf_r+0x19f8>
   13176:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc4594>
   13178:	035b5863          	bge	s6,s5,131a8 <_vfprintf_r+0x1a24>
   1317c:	0641                	addi	a2,a2,16
   1317e:	0705                	addi	a4,a4,1
   13180:	01242023          	sw	s2,0(s0)
   13184:	01642223          	sw	s6,4(s0)
   13188:	c7b2                	sw	a2,204(sp)
   1318a:	c5ba                	sw	a4,200(sp)
   1318c:	0421                	addi	s0,s0,8
   1318e:	feec54e3          	bge	s8,a4,13176 <_vfprintf_r+0x19f2>
   13192:	4522                	lw	a0,8(sp)
   13194:	01d0                	addi	a2,sp,196
   13196:	85a6                	mv	a1,s1
   13198:	2c0d                	jal	133ca <__sprint_r>
   1319a:	c119                	beqz	a0,131a0 <_vfprintf_r+0x1a1c>
   1319c:	840ff06f          	j	121dc <_vfprintf_r+0xa58>
   131a0:	463e                	lw	a2,204(sp)
   131a2:	472e                	lw	a4,200(sp)
   131a4:	844e                	mv	s0,s3
   131a6:	bfc1                	j	13176 <_vfprintf_r+0x19f2>
   131a8:	884a                	mv	a6,s2
   131aa:	4972                	lw	s2,28(sp)
   131ac:	9656                	add	a2,a2,s5
   131ae:	0705                	addi	a4,a4,1
   131b0:	01042023          	sw	a6,0(s0)
   131b4:	01542223          	sw	s5,4(s0)
   131b8:	c7b2                	sw	a2,204(sp)
   131ba:	c5ba                	sw	a4,200(sp)
   131bc:	459d                	li	a1,7
   131be:	f8e5d763          	bge	a1,a4,1294c <_vfprintf_r+0x11c8>
   131c2:	4522                	lw	a0,8(sp)
   131c4:	01d0                	addi	a2,sp,196
   131c6:	85a6                	mv	a1,s1
   131c8:	2409                	jal	133ca <__sprint_r>
   131ca:	c119                	beqz	a0,131d0 <_vfprintf_r+0x1a4c>
   131cc:	810ff06f          	j	121dc <_vfprintf_r+0xa58>
   131d0:	463e                	lw	a2,204(sp)
   131d2:	472e                	lw	a4,200(sp)
   131d4:	844e                	mv	s0,s3
   131d6:	837ff06f          	j	12a0c <_vfprintf_r+0x1288>
   131da:	0b610693          	addi	a3,sp,182
   131de:	e619                	bnez	a2,131ec <_vfprintf_r+0x1a68>
   131e0:	03000693          	li	a3,48
   131e4:	0ad10b23          	sb	a3,182(sp)
   131e8:	0b710693          	addi	a3,sp,183
   131ec:	0b1c                	addi	a5,sp,400
   131ee:	40f68633          	sub	a2,a3,a5
   131f2:	03070713          	addi	a4,a4,48
   131f6:	0dd60793          	addi	a5,a2,221
   131fa:	00e68023          	sb	a4,0(a3)
   131fe:	c0be                	sw	a5,64(sp)
   13200:	d92ff06f          	j	12792 <_vfprintf_r+0x100e>
   13204:	c802                	sw	zero,16(sp)
   13206:	4a99                	li	s5,6
   13208:	9effe06f          	j	11bf6 <_vfprintf_r+0x472>
   1320c:	001cf713          	andi	a4,s9,1
   13210:	d8070a63          	beqz	a4,127a4 <_vfprintf_r+0x1020>
   13214:	d8cff06f          	j	127a0 <_vfprintf_r+0x101c>
   13218:	06700893          	li	a7,103
   1321c:	5672                	lw	a2,60(sp)
   1321e:	0ff00693          	li	a3,255
   13222:	00064703          	lbu	a4,0(a2)
   13226:	0ed70163          	beq	a4,a3,13308 <_vfprintf_r+0x1b84>
   1322a:	47f2                	lw	a5,28(sp)
   1322c:	4501                	li	a0,0
   1322e:	4581                	li	a1,0
   13230:	00f75a63          	bge	a4,a5,13244 <_vfprintf_r+0x1ac0>
   13234:	8f99                	sub	a5,a5,a4
   13236:	00164703          	lbu	a4,1(a2)
   1323a:	c71d                	beqz	a4,13268 <_vfprintf_r+0x1ae4>
   1323c:	0585                	addi	a1,a1,1
   1323e:	0605                	addi	a2,a2,1
   13240:	fed718e3          	bne	a4,a3,13230 <_vfprintf_r+0x1aac>
   13244:	de32                	sw	a2,60(sp)
   13246:	d22e                	sw	a1,36(sp)
   13248:	d42a                	sw	a0,40(sp)
   1324a:	ce3e                	sw	a5,28(sp)
   1324c:	57a2                	lw	a5,40(sp)
   1324e:	5712                	lw	a4,36(sp)
   13250:	973e                	add	a4,a4,a5
   13252:	47a6                	lw	a5,72(sp)
   13254:	02f70733          	mul	a4,a4,a5
   13258:	9b3a                	add	s6,s6,a4
   1325a:	fffb4693          	not	a3,s6
   1325e:	86fd                	srai	a3,a3,0x1f
   13260:	00db7db3          	and	s11,s6,a3
   13264:	d5aff06f          	j	127be <_vfprintf_r+0x103a>
   13268:	00064703          	lbu	a4,0(a2)
   1326c:	0505                	addi	a0,a0,1
   1326e:	bfc9                	j	13240 <_vfprintf_r+0x1abc>
   13270:	8c4a                	mv	s8,s2
   13272:	001a8693          	addi	a3,s5,1
   13276:	5892                	lw	a7,36(sp)
   13278:	5ca2                	lw	s9,40(sp)
   1327a:	4b86                	lw	s7,64(sp)
   1327c:	4436                	lw	s0,76(sp)
   1327e:	5902                	lw	s2,32(sp)
   13280:	44c6                	lw	s1,80(sp)
   13282:	4d56                	lw	s10,84(sp)
   13284:	96e2                	add	a3,a3,s8
   13286:	03000613          	li	a2,48
   1328a:	d20ac5e3          	bltz	s5,12fb4 <_vfprintf_r+0x1830>
   1328e:	0c05                	addi	s8,s8,1
   13290:	fecc0fa3          	sb	a2,-1(s8)
   13294:	fedc1de3          	bne	s8,a3,1328e <_vfprintf_r+0x1b0a>
   13298:	bb31                	j	12fb4 <_vfprintf_r+0x1830>
   1329a:	5732                	lw	a4,44(sp)
   1329c:	06600893          	li	a7,102
   132a0:	00ea8f33          	add	t5,s5,a4
   132a4:	00ff0b33          	add	s6,t5,a5
   132a8:	bd95                	j	1311c <_vfprintf_r+0x1998>
   132aa:	6769                	lui	a4,0x1a
   132ac:	1f870793          	addi	a5,a4,504 # 1a1f8 <__clzsi2+0xd8>
   132b0:	ce3e                	sw	a5,28(sp)
   132b2:	b66d                	j	12e5c <_vfprintf_r+0x16d8>
   132b4:	4505                	li	a0,1
   132b6:	40d506b3          	sub	a3,a0,a3
   132ba:	d736                	sw	a3,172(sp)
   132bc:	9736                	add	a4,a4,a3
   132be:	b485                	j	12d1e <_vfprintf_r+0x159a>
   132c0:	e711                	bnez	a4,132cc <_vfprintf_r+0x1b48>
   132c2:	4d85                	li	s11,1
   132c4:	06600893          	li	a7,102
   132c8:	4b05                	li	s6,1
   132ca:	b3a5                	j	13032 <_vfprintf_r+0x18ae>
   132cc:	57b2                	lw	a5,44(sp)
   132ce:	06600893          	li	a7,102
   132d2:	00178f13          	addi	t5,a5,1
   132d6:	015f0b33          	add	s6,t5,s5
   132da:	fffb4693          	not	a3,s6
   132de:	86fd                	srai	a3,a3,0x1f
   132e0:	00db7db3          	and	s11,s6,a3
   132e4:	b3b9                	j	13032 <_vfprintf_r+0x18ae>
   132e6:	4789                	li	a5,2
   132e8:	c0be                	sw	a5,64(sp)
   132ea:	ca8ff06f          	j	12792 <_vfprintf_r+0x100e>
   132ee:	47d2                	lw	a5,20(sp)
   132f0:	0007aa83          	lw	s5,0(a5)
   132f4:	0791                	addi	a5,a5,4
   132f6:	000ad363          	bgez	s5,132fc <_vfprintf_r+0x1b78>
   132fa:	5afd                	li	s5,-1
   132fc:	00194883          	lbu	a7,1(s2)
   13300:	ca3e                	sw	a5,20(sp)
   13302:	8936                	mv	s2,a3
   13304:	db0fe06f          	j	118b4 <_vfprintf_r+0x130>
   13308:	d402                	sw	zero,40(sp)
   1330a:	d202                	sw	zero,36(sp)
   1330c:	b781                	j	1324c <_vfprintf_r+0x1ac8>
   1330e:	04500613          	li	a2,69
   13312:	010c                	addi	a1,sp,128
   13314:	b429                	j	12d1e <_vfprintf_r+0x159a>
   13316:	00c4d783          	lhu	a5,12(s1)
   1331a:	0407e793          	ori	a5,a5,64
   1331e:	00f49623          	sh	a5,12(s1)
   13322:	ebefe06f          	j	119e0 <_vfprintf_r+0x25c>

00013326 <vfprintf>:
   13326:	87aa                	mv	a5,a0
   13328:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   1332c:	86b2                	mv	a3,a2
   1332e:	862e                	mv	a2,a1
   13330:	85be                	mv	a1,a5
   13332:	c52fe06f          	j	11784 <_vfprintf_r>

00013336 <__sbprintf>:
   13336:	b8010113          	addi	sp,sp,-1152
   1333a:	00c59783          	lh	a5,12(a1)
   1333e:	00e5d703          	lhu	a4,14(a1)
   13342:	46812c23          	sw	s0,1144(sp)
   13346:	842e                	mv	s0,a1
   13348:	65c1                	lui	a1,0x10
   1334a:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   1334c:	06442e03          	lw	t3,100(s0)
   13350:	01c42303          	lw	t1,28(s0)
   13354:	02442883          	lw	a7,36(s0)
   13358:	0742                	slli	a4,a4,0x10
   1335a:	8fed                	and	a5,a5,a1
   1335c:	8fd9                	or	a5,a5,a4
   1335e:	40000813          	li	a6,1024
   13362:	ca3e                	sw	a5,20(sp)
   13364:	002c                	addi	a1,sp,8
   13366:	189c                	addi	a5,sp,112
   13368:	46912a23          	sw	s1,1140(sp)
   1336c:	47212823          	sw	s2,1136(sp)
   13370:	46112e23          	sw	ra,1148(sp)
   13374:	892a                	mv	s2,a0
   13376:	d6f2                	sw	t3,108(sp)
   13378:	d21a                	sw	t1,36(sp)
   1337a:	d646                	sw	a7,44(sp)
   1337c:	c43e                	sw	a5,8(sp)
   1337e:	cc3e                	sw	a5,24(sp)
   13380:	c842                	sw	a6,16(sp)
   13382:	ce42                	sw	a6,28(sp)
   13384:	d002                	sw	zero,32(sp)
   13386:	bfefe0ef          	jal	11784 <_vfprintf_r>
   1338a:	84aa                	mv	s1,a0
   1338c:	02055963          	bgez	a0,133be <__sbprintf+0x88>
   13390:	01415783          	lhu	a5,20(sp)
   13394:	0407f793          	andi	a5,a5,64
   13398:	c799                	beqz	a5,133a6 <__sbprintf+0x70>
   1339a:	00c45783          	lhu	a5,12(s0)
   1339e:	0407e793          	ori	a5,a5,64
   133a2:	00f41623          	sh	a5,12(s0)
   133a6:	47c12083          	lw	ra,1148(sp)
   133aa:	47812403          	lw	s0,1144(sp)
   133ae:	47012903          	lw	s2,1136(sp)
   133b2:	8526                	mv	a0,s1
   133b4:	47412483          	lw	s1,1140(sp)
   133b8:	48010113          	addi	sp,sp,1152
   133bc:	8082                	ret
   133be:	002c                	addi	a1,sp,8
   133c0:	854a                	mv	a0,s2
   133c2:	2c9d                	jal	13638 <_fflush_r>
   133c4:	d571                	beqz	a0,13390 <__sbprintf+0x5a>
   133c6:	54fd                	li	s1,-1
   133c8:	b7e1                	j	13390 <__sbprintf+0x5a>

000133ca <__sprint_r>:
   133ca:	461c                	lw	a5,8(a2)
   133cc:	1141                	addi	sp,sp,-16
   133ce:	c422                	sw	s0,8(sp)
   133d0:	c606                	sw	ra,12(sp)
   133d2:	8432                	mv	s0,a2
   133d4:	eb81                	bnez	a5,133e4 <__sprint_r+0x1a>
   133d6:	40b2                	lw	ra,12(sp)
   133d8:	00042223          	sw	zero,4(s0)
   133dc:	4422                	lw	s0,8(sp)
   133de:	4501                	li	a0,0
   133e0:	0141                	addi	sp,sp,16
   133e2:	8082                	ret
   133e4:	2ce9                	jal	136be <__sfvwrite_r>
   133e6:	40b2                	lw	ra,12(sp)
   133e8:	00042423          	sw	zero,8(s0)
   133ec:	00042223          	sw	zero,4(s0)
   133f0:	4422                	lw	s0,8(sp)
   133f2:	0141                	addi	sp,sp,16
   133f4:	8082                	ret

000133f6 <_fclose_r>:
   133f6:	1141                	addi	sp,sp,-16
   133f8:	c606                	sw	ra,12(sp)
   133fa:	c04a                	sw	s2,0(sp)
   133fc:	cd89                	beqz	a1,13416 <_fclose_r+0x20>
   133fe:	c422                	sw	s0,8(sp)
   13400:	c226                	sw	s1,4(sp)
   13402:	842e                	mv	s0,a1
   13404:	84aa                	mv	s1,a0
   13406:	c119                	beqz	a0,1340c <_fclose_r+0x16>
   13408:	595c                	lw	a5,52(a0)
   1340a:	c7d1                	beqz	a5,13496 <_fclose_r+0xa0>
   1340c:	00c41783          	lh	a5,12(s0)
   13410:	eb89                	bnez	a5,13422 <_fclose_r+0x2c>
   13412:	4422                	lw	s0,8(sp)
   13414:	4492                	lw	s1,4(sp)
   13416:	40b2                	lw	ra,12(sp)
   13418:	4901                	li	s2,0
   1341a:	854a                	mv	a0,s2
   1341c:	4902                	lw	s2,0(sp)
   1341e:	0141                	addi	sp,sp,16
   13420:	8082                	ret
   13422:	85a2                	mv	a1,s0
   13424:	8526                	mv	a0,s1
   13426:	28bd                	jal	134a4 <__sflush_r>
   13428:	545c                	lw	a5,44(s0)
   1342a:	892a                	mv	s2,a0
   1342c:	c791                	beqz	a5,13438 <_fclose_r+0x42>
   1342e:	4c4c                	lw	a1,28(s0)
   13430:	8526                	mv	a0,s1
   13432:	9782                	jalr	a5
   13434:	04054663          	bltz	a0,13480 <_fclose_r+0x8a>
   13438:	00c45783          	lhu	a5,12(s0)
   1343c:	0807f793          	andi	a5,a5,128
   13440:	e7b1                	bnez	a5,1348c <_fclose_r+0x96>
   13442:	580c                	lw	a1,48(s0)
   13444:	c991                	beqz	a1,13458 <_fclose_r+0x62>
   13446:	04040793          	addi	a5,s0,64
   1344a:	00f58563          	beq	a1,a5,13454 <_fclose_r+0x5e>
   1344e:	8526                	mv	a0,s1
   13450:	b6bfd0ef          	jal	10fba <_free_r>
   13454:	02042823          	sw	zero,48(s0)
   13458:	406c                	lw	a1,68(s0)
   1345a:	c591                	beqz	a1,13466 <_fclose_r+0x70>
   1345c:	8526                	mv	a0,s1
   1345e:	b5dfd0ef          	jal	10fba <_free_r>
   13462:	04042223          	sw	zero,68(s0)
   13466:	cc2fd0ef          	jal	10928 <__sfp_lock_acquire>
   1346a:	00041623          	sh	zero,12(s0)
   1346e:	cbcfd0ef          	jal	1092a <__sfp_lock_release>
   13472:	40b2                	lw	ra,12(sp)
   13474:	4422                	lw	s0,8(sp)
   13476:	4492                	lw	s1,4(sp)
   13478:	854a                	mv	a0,s2
   1347a:	4902                	lw	s2,0(sp)
   1347c:	0141                	addi	sp,sp,16
   1347e:	8082                	ret
   13480:	00c45783          	lhu	a5,12(s0)
   13484:	597d                	li	s2,-1
   13486:	0807f793          	andi	a5,a5,128
   1348a:	dfc5                	beqz	a5,13442 <_fclose_r+0x4c>
   1348c:	480c                	lw	a1,16(s0)
   1348e:	8526                	mv	a0,s1
   13490:	b2bfd0ef          	jal	10fba <_free_r>
   13494:	b77d                	j	13442 <_fclose_r+0x4c>
   13496:	c7cfd0ef          	jal	10912 <__sinit>
   1349a:	bf8d                	j	1340c <_fclose_r+0x16>

0001349c <fclose>:
   1349c:	85aa                	mv	a1,a0
   1349e:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   134a2:	bf91                	j	133f6 <_fclose_r>

000134a4 <__sflush_r>:
   134a4:	00c59703          	lh	a4,12(a1)
   134a8:	1101                	addi	sp,sp,-32
   134aa:	cc22                	sw	s0,24(sp)
   134ac:	c64e                	sw	s3,12(sp)
   134ae:	ce06                	sw	ra,28(sp)
   134b0:	00877793          	andi	a5,a4,8
   134b4:	842e                	mv	s0,a1
   134b6:	89aa                	mv	s3,a0
   134b8:	e7e1                	bnez	a5,13580 <__sflush_r+0xdc>
   134ba:	6785                	lui	a5,0x1
   134bc:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   134c0:	41d4                	lw	a3,4(a1)
   134c2:	8fd9                	or	a5,a5,a4
   134c4:	00f59623          	sh	a5,12(a1)
   134c8:	10d05563          	blez	a3,135d2 <__sflush_r+0x12e>
   134cc:	02842803          	lw	a6,40(s0)
   134d0:	0a080263          	beqz	a6,13574 <__sflush_r+0xd0>
   134d4:	ca26                	sw	s1,20(sp)
   134d6:	01371693          	slli	a3,a4,0x13
   134da:	0009a483          	lw	s1,0(s3)
   134de:	0009a023          	sw	zero,0(s3)
   134e2:	4c4c                	lw	a1,28(s0)
   134e4:	0e06ce63          	bltz	a3,135e0 <__sflush_r+0x13c>
   134e8:	4601                	li	a2,0
   134ea:	4685                	li	a3,1
   134ec:	854e                	mv	a0,s3
   134ee:	9802                	jalr	a6
   134f0:	57fd                	li	a5,-1
   134f2:	862a                	mv	a2,a0
   134f4:	10f50f63          	beq	a0,a5,13612 <__sflush_r+0x16e>
   134f8:	00c41783          	lh	a5,12(s0)
   134fc:	02842803          	lw	a6,40(s0)
   13500:	4c4c                	lw	a1,28(s0)
   13502:	8b91                	andi	a5,a5,4
   13504:	c799                	beqz	a5,13512 <__sflush_r+0x6e>
   13506:	4058                	lw	a4,4(s0)
   13508:	581c                	lw	a5,48(s0)
   1350a:	8e19                	sub	a2,a2,a4
   1350c:	c399                	beqz	a5,13512 <__sflush_r+0x6e>
   1350e:	5c5c                	lw	a5,60(s0)
   13510:	8e1d                	sub	a2,a2,a5
   13512:	4681                	li	a3,0
   13514:	854e                	mv	a0,s3
   13516:	9802                	jalr	a6
   13518:	57fd                	li	a5,-1
   1351a:	0cf51563          	bne	a0,a5,135e4 <__sflush_r+0x140>
   1351e:	0009a683          	lw	a3,0(s3)
   13522:	47f5                	li	a5,29
   13524:	00c41703          	lh	a4,12(s0)
   13528:	10d7e163          	bltu	a5,a3,1362a <__sflush_r+0x186>
   1352c:	204007b7          	lui	a5,0x20400
   13530:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e45a5>
   13532:	00d7d7b3          	srl	a5,a5,a3
   13536:	8b85                	andi	a5,a5,1
   13538:	cbed                	beqz	a5,1362a <__sflush_r+0x186>
   1353a:	4810                	lw	a2,16(s0)
   1353c:	77fd                	lui	a5,0xfffff
   1353e:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   13542:	8ff9                	and	a5,a5,a4
   13544:	00f41623          	sh	a5,12(s0)
   13548:	00042223          	sw	zero,4(s0)
   1354c:	c010                	sw	a2,0(s0)
   1354e:	01371793          	slli	a5,a4,0x13
   13552:	0007d363          	bgez	a5,13558 <__sflush_r+0xb4>
   13556:	c6dd                	beqz	a3,13604 <__sflush_r+0x160>
   13558:	580c                	lw	a1,48(s0)
   1355a:	0099a023          	sw	s1,0(s3)
   1355e:	c9c5                	beqz	a1,1360e <__sflush_r+0x16a>
   13560:	04040793          	addi	a5,s0,64
   13564:	00f58563          	beq	a1,a5,1356e <__sflush_r+0xca>
   13568:	854e                	mv	a0,s3
   1356a:	a51fd0ef          	jal	10fba <_free_r>
   1356e:	44d2                	lw	s1,20(sp)
   13570:	02042823          	sw	zero,48(s0)
   13574:	4501                	li	a0,0
   13576:	40f2                	lw	ra,28(sp)
   13578:	4462                	lw	s0,24(sp)
   1357a:	49b2                	lw	s3,12(sp)
   1357c:	6105                	addi	sp,sp,32
   1357e:	8082                	ret
   13580:	c84a                	sw	s2,16(sp)
   13582:	0105a903          	lw	s2,16(a1)
   13586:	04090b63          	beqz	s2,135dc <__sflush_r+0x138>
   1358a:	ca26                	sw	s1,20(sp)
   1358c:	4184                	lw	s1,0(a1)
   1358e:	8b0d                	andi	a4,a4,3
   13590:	0125a023          	sw	s2,0(a1)
   13594:	412484b3          	sub	s1,s1,s2
   13598:	4781                	li	a5,0
   1359a:	e311                	bnez	a4,1359e <__sflush_r+0xfa>
   1359c:	49dc                	lw	a5,20(a1)
   1359e:	c41c                	sw	a5,8(s0)
   135a0:	00904663          	bgtz	s1,135ac <__sflush_r+0x108>
   135a4:	a81d                	j	135da <__sflush_r+0x136>
   135a6:	992a                	add	s2,s2,a0
   135a8:	02905963          	blez	s1,135da <__sflush_r+0x136>
   135ac:	505c                	lw	a5,36(s0)
   135ae:	4c4c                	lw	a1,28(s0)
   135b0:	86a6                	mv	a3,s1
   135b2:	864a                	mv	a2,s2
   135b4:	854e                	mv	a0,s3
   135b6:	9782                	jalr	a5
   135b8:	8c89                	sub	s1,s1,a0
   135ba:	fea046e3          	bgtz	a0,135a6 <__sflush_r+0x102>
   135be:	00c41703          	lh	a4,12(s0)
   135c2:	4942                	lw	s2,16(sp)
   135c4:	04076713          	ori	a4,a4,64
   135c8:	44d2                	lw	s1,20(sp)
   135ca:	00e41623          	sh	a4,12(s0)
   135ce:	557d                	li	a0,-1
   135d0:	b75d                	j	13576 <__sflush_r+0xd2>
   135d2:	5dd4                	lw	a3,60(a1)
   135d4:	eed04ce3          	bgtz	a3,134cc <__sflush_r+0x28>
   135d8:	bf71                	j	13574 <__sflush_r+0xd0>
   135da:	44d2                	lw	s1,20(sp)
   135dc:	4942                	lw	s2,16(sp)
   135de:	bf59                	j	13574 <__sflush_r+0xd0>
   135e0:	4830                	lw	a2,80(s0)
   135e2:	b705                	j	13502 <__sflush_r+0x5e>
   135e4:	00c41703          	lh	a4,12(s0)
   135e8:	4814                	lw	a3,16(s0)
   135ea:	77fd                	lui	a5,0xfffff
   135ec:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   135f0:	8ff9                	and	a5,a5,a4
   135f2:	00f41623          	sh	a5,12(s0)
   135f6:	00042223          	sw	zero,4(s0)
   135fa:	c014                	sw	a3,0(s0)
   135fc:	01371793          	slli	a5,a4,0x13
   13600:	f407dce3          	bgez	a5,13558 <__sflush_r+0xb4>
   13604:	580c                	lw	a1,48(s0)
   13606:	c828                	sw	a0,80(s0)
   13608:	0099a023          	sw	s1,0(s3)
   1360c:	f9b1                	bnez	a1,13560 <__sflush_r+0xbc>
   1360e:	44d2                	lw	s1,20(sp)
   13610:	b795                	j	13574 <__sflush_r+0xd0>
   13612:	0009a783          	lw	a5,0(s3)
   13616:	ee0781e3          	beqz	a5,134f8 <__sflush_r+0x54>
   1361a:	4775                	li	a4,29
   1361c:	00e78a63          	beq	a5,a4,13630 <__sflush_r+0x18c>
   13620:	4759                	li	a4,22
   13622:	00e78763          	beq	a5,a4,13630 <__sflush_r+0x18c>
   13626:	00c41703          	lh	a4,12(s0)
   1362a:	04076713          	ori	a4,a4,64
   1362e:	bf69                	j	135c8 <__sflush_r+0x124>
   13630:	0099a023          	sw	s1,0(s3)
   13634:	44d2                	lw	s1,20(sp)
   13636:	bf3d                	j	13574 <__sflush_r+0xd0>

00013638 <_fflush_r>:
   13638:	1101                	addi	sp,sp,-32
   1363a:	cc22                	sw	s0,24(sp)
   1363c:	ce06                	sw	ra,28(sp)
   1363e:	842a                	mv	s0,a0
   13640:	c119                	beqz	a0,13646 <_fflush_r+0xe>
   13642:	595c                	lw	a5,52(a0)
   13644:	cf91                	beqz	a5,13660 <_fflush_r+0x28>
   13646:	00c59783          	lh	a5,12(a1)
   1364a:	e791                	bnez	a5,13656 <_fflush_r+0x1e>
   1364c:	40f2                	lw	ra,28(sp)
   1364e:	4462                	lw	s0,24(sp)
   13650:	4501                	li	a0,0
   13652:	6105                	addi	sp,sp,32
   13654:	8082                	ret
   13656:	8522                	mv	a0,s0
   13658:	4462                	lw	s0,24(sp)
   1365a:	40f2                	lw	ra,28(sp)
   1365c:	6105                	addi	sp,sp,32
   1365e:	b599                	j	134a4 <__sflush_r>
   13660:	c62e                	sw	a1,12(sp)
   13662:	ab0fd0ef          	jal	10912 <__sinit>
   13666:	45b2                	lw	a1,12(sp)
   13668:	bff9                	j	13646 <_fflush_r+0xe>

0001366a <fflush>:
   1366a:	cd05                	beqz	a0,136a2 <fflush+0x38>
   1366c:	85aa                	mv	a1,a0
   1366e:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13672:	c119                	beqz	a0,13678 <fflush+0xe>
   13674:	595c                	lw	a5,52(a0)
   13676:	c799                	beqz	a5,13684 <fflush+0x1a>
   13678:	00c59783          	lh	a5,12(a1)
   1367c:	e399                	bnez	a5,13682 <fflush+0x18>
   1367e:	4501                	li	a0,0
   13680:	8082                	ret
   13682:	b50d                	j	134a4 <__sflush_r>
   13684:	1101                	addi	sp,sp,-32
   13686:	c62e                	sw	a1,12(sp)
   13688:	c42a                	sw	a0,8(sp)
   1368a:	ce06                	sw	ra,28(sp)
   1368c:	a86fd0ef          	jal	10912 <__sinit>
   13690:	45b2                	lw	a1,12(sp)
   13692:	4522                	lw	a0,8(sp)
   13694:	00c59783          	lh	a5,12(a1)
   13698:	e385                	bnez	a5,136b8 <fflush+0x4e>
   1369a:	40f2                	lw	ra,28(sp)
   1369c:	4501                	li	a0,0
   1369e:	6105                	addi	sp,sp,32
   136a0:	8082                	ret
   136a2:	666d                	lui	a2,0x1b
   136a4:	65cd                	lui	a1,0x13
   136a6:	656d                	lui	a0,0x1b
   136a8:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   136ac:	63858593          	addi	a1,a1,1592 # 13638 <_fflush_r>
   136b0:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   136b4:	a98fd06f          	j	1094c <_fwalk_sglue>
   136b8:	40f2                	lw	ra,28(sp)
   136ba:	6105                	addi	sp,sp,32
   136bc:	b3e5                	j	134a4 <__sflush_r>

000136be <__sfvwrite_r>:
   136be:	461c                	lw	a5,8(a2)
   136c0:	1c078c63          	beqz	a5,13898 <__sfvwrite_r+0x1da>
   136c4:	00c59683          	lh	a3,12(a1)
   136c8:	7179                	addi	sp,sp,-48
   136ca:	d422                	sw	s0,40(sp)
   136cc:	cc52                	sw	s4,24(sp)
   136ce:	c85a                	sw	s6,16(sp)
   136d0:	d606                	sw	ra,44(sp)
   136d2:	0086f793          	andi	a5,a3,8
   136d6:	8b32                	mv	s6,a2
   136d8:	8a2a                	mv	s4,a0
   136da:	842e                	mv	s0,a1
   136dc:	c7ad                	beqz	a5,13746 <__sfvwrite_r+0x88>
   136de:	499c                	lw	a5,16(a1)
   136e0:	c3bd                	beqz	a5,13746 <__sfvwrite_r+0x88>
   136e2:	d226                	sw	s1,36(sp)
   136e4:	d04a                	sw	s2,32(sp)
   136e6:	ce4e                	sw	s3,28(sp)
   136e8:	ca56                	sw	s5,20(sp)
   136ea:	0026f793          	andi	a5,a3,2
   136ee:	000b2483          	lw	s1,0(s6)
   136f2:	cbb5                	beqz	a5,13766 <__sfvwrite_r+0xa8>
   136f4:	505c                	lw	a5,36(s0)
   136f6:	4c4c                	lw	a1,28(s0)
   136f8:	80000ab7          	lui	s5,0x80000
   136fc:	4981                	li	s3,0
   136fe:	4901                	li	s2,0
   13700:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe41a4>
   13704:	864e                	mv	a2,s3
   13706:	8552                	mv	a0,s4
   13708:	02090963          	beqz	s2,1373a <__sfvwrite_r+0x7c>
   1370c:	86ca                	mv	a3,s2
   1370e:	012af363          	bgeu	s5,s2,13714 <__sfvwrite_r+0x56>
   13712:	86d6                	mv	a3,s5
   13714:	9782                	jalr	a5
   13716:	2ca05c63          	blez	a0,139ee <__sfvwrite_r+0x330>
   1371a:	008b2783          	lw	a5,8(s6)
   1371e:	99aa                	add	s3,s3,a0
   13720:	40a90933          	sub	s2,s2,a0
   13724:	8f89                	sub	a5,a5,a0
   13726:	00fb2423          	sw	a5,8(s6)
   1372a:	12078563          	beqz	a5,13854 <__sfvwrite_r+0x196>
   1372e:	505c                	lw	a5,36(s0)
   13730:	4c4c                	lw	a1,28(s0)
   13732:	864e                	mv	a2,s3
   13734:	8552                	mv	a0,s4
   13736:	fc091be3          	bnez	s2,1370c <__sfvwrite_r+0x4e>
   1373a:	0004a983          	lw	s3,0(s1)
   1373e:	0044a903          	lw	s2,4(s1)
   13742:	04a1                	addi	s1,s1,8
   13744:	b7c1                	j	13704 <__sfvwrite_r+0x46>
   13746:	85a2                	mv	a1,s0
   13748:	8552                	mv	a0,s4
   1374a:	2c75                	jal	13a06 <__swsetup_r>
   1374c:	12051f63          	bnez	a0,1388a <__sfvwrite_r+0x1cc>
   13750:	00c41683          	lh	a3,12(s0)
   13754:	d226                	sw	s1,36(sp)
   13756:	d04a                	sw	s2,32(sp)
   13758:	ce4e                	sw	s3,28(sp)
   1375a:	ca56                	sw	s5,20(sp)
   1375c:	0026f793          	andi	a5,a3,2
   13760:	000b2483          	lw	s1,0(s6)
   13764:	fbc1                	bnez	a5,136f4 <__sfvwrite_r+0x36>
   13766:	c65e                	sw	s7,12(sp)
   13768:	c462                	sw	s8,8(sp)
   1376a:	0016f793          	andi	a5,a3,1
   1376e:	12079763          	bnez	a5,1389c <__sfvwrite_r+0x1de>
   13772:	401c                	lw	a5,0(s0)
   13774:	4418                	lw	a4,8(s0)
   13776:	80000ab7          	lui	s5,0x80000
   1377a:	c266                	sw	s9,4(sp)
   1377c:	4b81                	li	s7,0
   1377e:	4981                	li	s3,0
   13780:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   13782:	853e                	mv	a0,a5
   13784:	8c3a                	mv	s8,a4
   13786:	0a098e63          	beqz	s3,13842 <__sfvwrite_r+0x184>
   1378a:	2006f613          	andi	a2,a3,512
   1378e:	1a060563          	beqz	a2,13938 <__sfvwrite_r+0x27a>
   13792:	8cba                	mv	s9,a4
   13794:	20e9e563          	bltu	s3,a4,1399e <__sfvwrite_r+0x2e0>
   13798:	4806f713          	andi	a4,a3,1152
   1379c:	c73d                	beqz	a4,1380a <__sfvwrite_r+0x14c>
   1379e:	4850                	lw	a2,20(s0)
   137a0:	480c                	lw	a1,16(s0)
   137a2:	00161713          	slli	a4,a2,0x1
   137a6:	9732                	add	a4,a4,a2
   137a8:	40b78933          	sub	s2,a5,a1
   137ac:	01f75c13          	srli	s8,a4,0x1f
   137b0:	9c3a                	add	s8,s8,a4
   137b2:	00190793          	addi	a5,s2,1
   137b6:	401c5c13          	srai	s8,s8,0x1
   137ba:	97ce                	add	a5,a5,s3
   137bc:	8662                	mv	a2,s8
   137be:	00fc7463          	bgeu	s8,a5,137c6 <__sfvwrite_r+0x108>
   137c2:	8c3e                	mv	s8,a5
   137c4:	863e                	mv	a2,a5
   137c6:	4006f693          	andi	a3,a3,1024
   137ca:	1e068963          	beqz	a3,139bc <__sfvwrite_r+0x2fe>
   137ce:	85b2                	mv	a1,a2
   137d0:	8552                	mv	a0,s4
   137d2:	a0bfd0ef          	jal	111dc <_malloc_r>
   137d6:	8caa                	mv	s9,a0
   137d8:	20050e63          	beqz	a0,139f4 <__sfvwrite_r+0x336>
   137dc:	480c                	lw	a1,16(s0)
   137de:	864a                	mv	a2,s2
   137e0:	2b81                	jal	13d30 <memcpy>
   137e2:	00c45783          	lhu	a5,12(s0)
   137e6:	b7f7f793          	andi	a5,a5,-1153
   137ea:	0807e793          	ori	a5,a5,128
   137ee:	00f41623          	sh	a5,12(s0)
   137f2:	012c8533          	add	a0,s9,s2
   137f6:	412c07b3          	sub	a5,s8,s2
   137fa:	01942823          	sw	s9,16(s0)
   137fe:	01842a23          	sw	s8,20(s0)
   13802:	c008                	sw	a0,0(s0)
   13804:	8c4e                	mv	s8,s3
   13806:	c41c                	sw	a5,8(s0)
   13808:	8cce                	mv	s9,s3
   1380a:	8666                	mv	a2,s9
   1380c:	85de                	mv	a1,s7
   1380e:	2999                	jal	13c64 <memmove>
   13810:	4418                	lw	a4,8(s0)
   13812:	401c                	lw	a5,0(s0)
   13814:	894e                	mv	s2,s3
   13816:	41870733          	sub	a4,a4,s8
   1381a:	97e6                	add	a5,a5,s9
   1381c:	c418                	sw	a4,8(s0)
   1381e:	c01c                	sw	a5,0(s0)
   13820:	4981                	li	s3,0
   13822:	008b2783          	lw	a5,8(s6)
   13826:	9bca                	add	s7,s7,s2
   13828:	412787b3          	sub	a5,a5,s2
   1382c:	00fb2423          	sw	a5,8(s6)
   13830:	cf99                	beqz	a5,1384e <__sfvwrite_r+0x190>
   13832:	401c                	lw	a5,0(s0)
   13834:	4418                	lw	a4,8(s0)
   13836:	00c41683          	lh	a3,12(s0)
   1383a:	853e                	mv	a0,a5
   1383c:	8c3a                	mv	s8,a4
   1383e:	f40996e3          	bnez	s3,1378a <__sfvwrite_r+0xcc>
   13842:	0004ab83          	lw	s7,0(s1)
   13846:	0044a983          	lw	s3,4(s1)
   1384a:	04a1                	addi	s1,s1,8
   1384c:	bf1d                	j	13782 <__sfvwrite_r+0xc4>
   1384e:	4bb2                	lw	s7,12(sp)
   13850:	4c22                	lw	s8,8(sp)
   13852:	4c92                	lw	s9,4(sp)
   13854:	50b2                	lw	ra,44(sp)
   13856:	5422                	lw	s0,40(sp)
   13858:	5492                	lw	s1,36(sp)
   1385a:	5902                	lw	s2,32(sp)
   1385c:	49f2                	lw	s3,28(sp)
   1385e:	4ad2                	lw	s5,20(sp)
   13860:	4a62                	lw	s4,24(sp)
   13862:	4b42                	lw	s6,16(sp)
   13864:	4501                	li	a0,0
   13866:	6145                	addi	sp,sp,48
   13868:	8082                	ret
   1386a:	85a2                	mv	a1,s0
   1386c:	8552                	mv	a0,s4
   1386e:	33e9                	jal	13638 <_fflush_r>
   13870:	c93d                	beqz	a0,138e6 <__sfvwrite_r+0x228>
   13872:	00c41783          	lh	a5,12(s0)
   13876:	4bb2                	lw	s7,12(sp)
   13878:	4c22                	lw	s8,8(sp)
   1387a:	5492                	lw	s1,36(sp)
   1387c:	5902                	lw	s2,32(sp)
   1387e:	49f2                	lw	s3,28(sp)
   13880:	4ad2                	lw	s5,20(sp)
   13882:	0407e793          	ori	a5,a5,64
   13886:	00f41623          	sh	a5,12(s0)
   1388a:	50b2                	lw	ra,44(sp)
   1388c:	5422                	lw	s0,40(sp)
   1388e:	4a62                	lw	s4,24(sp)
   13890:	4b42                	lw	s6,16(sp)
   13892:	557d                	li	a0,-1
   13894:	6145                	addi	sp,sp,48
   13896:	8082                	ret
   13898:	4501                	li	a0,0
   1389a:	8082                	ret
   1389c:	4a81                	li	s5,0
   1389e:	4501                	li	a0,0
   138a0:	4c01                	li	s8,0
   138a2:	4981                	li	s3,0
   138a4:	04098e63          	beqz	s3,13900 <__sfvwrite_r+0x242>
   138a8:	c525                	beqz	a0,13910 <__sfvwrite_r+0x252>
   138aa:	87d6                	mv	a5,s5
   138ac:	8bce                	mv	s7,s3
   138ae:	0137f363          	bgeu	a5,s3,138b4 <__sfvwrite_r+0x1f6>
   138b2:	8bbe                	mv	s7,a5
   138b4:	4008                	lw	a0,0(s0)
   138b6:	481c                	lw	a5,16(s0)
   138b8:	00842903          	lw	s2,8(s0)
   138bc:	4854                	lw	a3,20(s0)
   138be:	00a7f563          	bgeu	a5,a0,138c8 <__sfvwrite_r+0x20a>
   138c2:	9936                	add	s2,s2,a3
   138c4:	05794f63          	blt	s2,s7,13922 <__sfvwrite_r+0x264>
   138c8:	0cdbce63          	blt	s7,a3,139a4 <__sfvwrite_r+0x2e6>
   138cc:	505c                	lw	a5,36(s0)
   138ce:	4c4c                	lw	a1,28(s0)
   138d0:	8662                	mv	a2,s8
   138d2:	8552                	mv	a0,s4
   138d4:	9782                	jalr	a5
   138d6:	892a                	mv	s2,a0
   138d8:	f8a05de3          	blez	a0,13872 <__sfvwrite_r+0x1b4>
   138dc:	412a8ab3          	sub	s5,s5,s2
   138e0:	4505                	li	a0,1
   138e2:	f80a84e3          	beqz	s5,1386a <__sfvwrite_r+0x1ac>
   138e6:	008b2783          	lw	a5,8(s6)
   138ea:	9c4a                	add	s8,s8,s2
   138ec:	412989b3          	sub	s3,s3,s2
   138f0:	412787b3          	sub	a5,a5,s2
   138f4:	00fb2423          	sw	a5,8(s6)
   138f8:	f7d5                	bnez	a5,138a4 <__sfvwrite_r+0x1e6>
   138fa:	4bb2                	lw	s7,12(sp)
   138fc:	4c22                	lw	s8,8(sp)
   138fe:	bf99                	j	13854 <__sfvwrite_r+0x196>
   13900:	0044a983          	lw	s3,4(s1)
   13904:	87a6                	mv	a5,s1
   13906:	04a1                	addi	s1,s1,8
   13908:	fe098ce3          	beqz	s3,13900 <__sfvwrite_r+0x242>
   1390c:	0007ac03          	lw	s8,0(a5)
   13910:	864e                	mv	a2,s3
   13912:	45a9                	li	a1,10
   13914:	8562                	mv	a0,s8
   13916:	22e9                	jal	13ae0 <memchr>
   13918:	c579                	beqz	a0,139e6 <__sfvwrite_r+0x328>
   1391a:	0505                	addi	a0,a0,1
   1391c:	41850ab3          	sub	s5,a0,s8
   13920:	b769                	j	138aa <__sfvwrite_r+0x1ec>
   13922:	85e2                	mv	a1,s8
   13924:	864a                	mv	a2,s2
   13926:	2e3d                	jal	13c64 <memmove>
   13928:	401c                	lw	a5,0(s0)
   1392a:	85a2                	mv	a1,s0
   1392c:	8552                	mv	a0,s4
   1392e:	97ca                	add	a5,a5,s2
   13930:	c01c                	sw	a5,0(s0)
   13932:	3319                	jal	13638 <_fflush_r>
   13934:	d545                	beqz	a0,138dc <__sfvwrite_r+0x21e>
   13936:	bf35                	j	13872 <__sfvwrite_r+0x1b4>
   13938:	4814                	lw	a3,16(s0)
   1393a:	02f6e863          	bltu	a3,a5,1396a <__sfvwrite_r+0x2ac>
   1393e:	4850                	lw	a2,20(s0)
   13940:	02c9e563          	bltu	s3,a2,1396a <__sfvwrite_r+0x2ac>
   13944:	87ce                	mv	a5,s3
   13946:	013af363          	bgeu	s5,s3,1394c <__sfvwrite_r+0x28e>
   1394a:	87d6                	mv	a5,s5
   1394c:	02c7e6b3          	rem	a3,a5,a2
   13950:	5058                	lw	a4,36(s0)
   13952:	4c4c                	lw	a1,28(s0)
   13954:	865e                	mv	a2,s7
   13956:	8552                	mv	a0,s4
   13958:	40d786b3          	sub	a3,a5,a3
   1395c:	9702                	jalr	a4
   1395e:	892a                	mv	s2,a0
   13960:	02a05963          	blez	a0,13992 <__sfvwrite_r+0x2d4>
   13964:	412989b3          	sub	s3,s3,s2
   13968:	bd6d                	j	13822 <__sfvwrite_r+0x164>
   1396a:	893a                	mv	s2,a4
   1396c:	00e9f363          	bgeu	s3,a4,13972 <__sfvwrite_r+0x2b4>
   13970:	894e                	mv	s2,s3
   13972:	853e                	mv	a0,a5
   13974:	864a                	mv	a2,s2
   13976:	85de                	mv	a1,s7
   13978:	24f5                	jal	13c64 <memmove>
   1397a:	4418                	lw	a4,8(s0)
   1397c:	401c                	lw	a5,0(s0)
   1397e:	41270733          	sub	a4,a4,s2
   13982:	97ca                	add	a5,a5,s2
   13984:	c418                	sw	a4,8(s0)
   13986:	c01c                	sw	a5,0(s0)
   13988:	ff71                	bnez	a4,13964 <__sfvwrite_r+0x2a6>
   1398a:	85a2                	mv	a1,s0
   1398c:	8552                	mv	a0,s4
   1398e:	316d                	jal	13638 <_fflush_r>
   13990:	d971                	beqz	a0,13964 <__sfvwrite_r+0x2a6>
   13992:	00c41783          	lh	a5,12(s0)
   13996:	4bb2                	lw	s7,12(sp)
   13998:	4c22                	lw	s8,8(sp)
   1399a:	4c92                	lw	s9,4(sp)
   1399c:	bdf9                	j	1387a <__sfvwrite_r+0x1bc>
   1399e:	8c4e                	mv	s8,s3
   139a0:	8cce                	mv	s9,s3
   139a2:	b5a5                	j	1380a <__sfvwrite_r+0x14c>
   139a4:	865e                	mv	a2,s7
   139a6:	85e2                	mv	a1,s8
   139a8:	2c75                	jal	13c64 <memmove>
   139aa:	4418                	lw	a4,8(s0)
   139ac:	401c                	lw	a5,0(s0)
   139ae:	895e                	mv	s2,s7
   139b0:	41770733          	sub	a4,a4,s7
   139b4:	97de                	add	a5,a5,s7
   139b6:	c418                	sw	a4,8(s0)
   139b8:	c01c                	sw	a5,0(s0)
   139ba:	b70d                	j	138dc <__sfvwrite_r+0x21e>
   139bc:	8552                	mv	a0,s4
   139be:	714020ef          	jal	160d2 <_realloc_r>
   139c2:	8caa                	mv	s9,a0
   139c4:	e20517e3          	bnez	a0,137f2 <__sfvwrite_r+0x134>
   139c8:	480c                	lw	a1,16(s0)
   139ca:	8552                	mv	a0,s4
   139cc:	deefd0ef          	jal	10fba <_free_r>
   139d0:	00c41783          	lh	a5,12(s0)
   139d4:	4731                	li	a4,12
   139d6:	4bb2                	lw	s7,12(sp)
   139d8:	4c22                	lw	s8,8(sp)
   139da:	4c92                	lw	s9,4(sp)
   139dc:	00ea2023          	sw	a4,0(s4)
   139e0:	f7f7f793          	andi	a5,a5,-129
   139e4:	bd59                	j	1387a <__sfvwrite_r+0x1bc>
   139e6:	00198793          	addi	a5,s3,1
   139ea:	8abe                	mv	s5,a5
   139ec:	b5c1                	j	138ac <__sfvwrite_r+0x1ee>
   139ee:	00c41783          	lh	a5,12(s0)
   139f2:	b561                	j	1387a <__sfvwrite_r+0x1bc>
   139f4:	4731                	li	a4,12
   139f6:	00c41783          	lh	a5,12(s0)
   139fa:	4bb2                	lw	s7,12(sp)
   139fc:	4c22                	lw	s8,8(sp)
   139fe:	4c92                	lw	s9,4(sp)
   13a00:	00ea2023          	sw	a4,0(s4)
   13a04:	bd9d                	j	1387a <__sfvwrite_r+0x1bc>

00013a06 <__swsetup_r>:
   13a06:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   13a0a:	1141                	addi	sp,sp,-16
   13a0c:	c422                	sw	s0,8(sp)
   13a0e:	c226                	sw	s1,4(sp)
   13a10:	c606                	sw	ra,12(sp)
   13a12:	84aa                	mv	s1,a0
   13a14:	842e                	mv	s0,a1
   13a16:	c399                	beqz	a5,13a1c <__swsetup_r+0x16>
   13a18:	5bd8                	lw	a4,52(a5)
   13a1a:	c75d                	beqz	a4,13ac8 <__swsetup_r+0xc2>
   13a1c:	00c41783          	lh	a5,12(s0)
   13a20:	0087f713          	andi	a4,a5,8
   13a24:	c721                	beqz	a4,13a6c <__swsetup_r+0x66>
   13a26:	4818                	lw	a4,16(s0)
   13a28:	cf31                	beqz	a4,13a84 <__swsetup_r+0x7e>
   13a2a:	0017f693          	andi	a3,a5,1
   13a2e:	ce91                	beqz	a3,13a4a <__swsetup_r+0x44>
   13a30:	4854                	lw	a3,20(s0)
   13a32:	00042423          	sw	zero,8(s0)
   13a36:	4501                	li	a0,0
   13a38:	40d006b3          	neg	a3,a3
   13a3c:	cc14                	sw	a3,24(s0)
   13a3e:	cf11                	beqz	a4,13a5a <__swsetup_r+0x54>
   13a40:	40b2                	lw	ra,12(sp)
   13a42:	4422                	lw	s0,8(sp)
   13a44:	4492                	lw	s1,4(sp)
   13a46:	0141                	addi	sp,sp,16
   13a48:	8082                	ret
   13a4a:	0027f693          	andi	a3,a5,2
   13a4e:	4601                	li	a2,0
   13a50:	e291                	bnez	a3,13a54 <__swsetup_r+0x4e>
   13a52:	4850                	lw	a2,20(s0)
   13a54:	c410                	sw	a2,8(s0)
   13a56:	4501                	li	a0,0
   13a58:	f765                	bnez	a4,13a40 <__swsetup_r+0x3a>
   13a5a:	0807f713          	andi	a4,a5,128
   13a5e:	d36d                	beqz	a4,13a40 <__swsetup_r+0x3a>
   13a60:	0407e793          	ori	a5,a5,64
   13a64:	00f41623          	sh	a5,12(s0)
   13a68:	557d                	li	a0,-1
   13a6a:	bfd9                	j	13a40 <__swsetup_r+0x3a>
   13a6c:	0107f713          	andi	a4,a5,16
   13a70:	c325                	beqz	a4,13ad0 <__swsetup_r+0xca>
   13a72:	0047f713          	andi	a4,a5,4
   13a76:	e70d                	bnez	a4,13aa0 <__swsetup_r+0x9a>
   13a78:	4818                	lw	a4,16(s0)
   13a7a:	0087e793          	ori	a5,a5,8
   13a7e:	00f41623          	sh	a5,12(s0)
   13a82:	f745                	bnez	a4,13a2a <__swsetup_r+0x24>
   13a84:	2807f693          	andi	a3,a5,640
   13a88:	20000613          	li	a2,512
   13a8c:	f8c68fe3          	beq	a3,a2,13a2a <__swsetup_r+0x24>
   13a90:	85a2                	mv	a1,s0
   13a92:	8526                	mv	a0,s1
   13a94:	219020ef          	jal	164ac <__smakebuf_r>
   13a98:	00c41783          	lh	a5,12(s0)
   13a9c:	4818                	lw	a4,16(s0)
   13a9e:	b771                	j	13a2a <__swsetup_r+0x24>
   13aa0:	580c                	lw	a1,48(s0)
   13aa2:	cd81                	beqz	a1,13aba <__swsetup_r+0xb4>
   13aa4:	04040713          	addi	a4,s0,64
   13aa8:	00e58763          	beq	a1,a4,13ab6 <__swsetup_r+0xb0>
   13aac:	8526                	mv	a0,s1
   13aae:	d0cfd0ef          	jal	10fba <_free_r>
   13ab2:	00c41783          	lh	a5,12(s0)
   13ab6:	02042823          	sw	zero,48(s0)
   13aba:	4818                	lw	a4,16(s0)
   13abc:	fdb7f793          	andi	a5,a5,-37
   13ac0:	00042223          	sw	zero,4(s0)
   13ac4:	c018                	sw	a4,0(s0)
   13ac6:	bf55                	j	13a7a <__swsetup_r+0x74>
   13ac8:	853e                	mv	a0,a5
   13aca:	e49fc0ef          	jal	10912 <__sinit>
   13ace:	b7b9                	j	13a1c <__swsetup_r+0x16>
   13ad0:	4725                	li	a4,9
   13ad2:	c098                	sw	a4,0(s1)
   13ad4:	0407e793          	ori	a5,a5,64
   13ad8:	00f41623          	sh	a5,12(s0)
   13adc:	557d                	li	a0,-1
   13ade:	b78d                	j	13a40 <__swsetup_r+0x3a>

00013ae0 <memchr>:
   13ae0:	00357793          	andi	a5,a0,3
   13ae4:	0ff5f693          	zext.b	a3,a1
   13ae8:	c395                	beqz	a5,13b0c <memchr+0x2c>
   13aea:	fff60793          	addi	a5,a2,-1
   13aee:	c605                	beqz	a2,13b16 <memchr+0x36>
   13af0:	567d                	li	a2,-1
   13af2:	a801                	j	13b02 <memchr+0x22>
   13af4:	0505                	addi	a0,a0,1
   13af6:	00357713          	andi	a4,a0,3
   13afa:	cb11                	beqz	a4,13b0e <memchr+0x2e>
   13afc:	17fd                	addi	a5,a5,-1
   13afe:	00c78c63          	beq	a5,a2,13b16 <memchr+0x36>
   13b02:	00054703          	lbu	a4,0(a0)
   13b06:	fed717e3          	bne	a4,a3,13af4 <memchr+0x14>
   13b0a:	8082                	ret
   13b0c:	87b2                	mv	a5,a2
   13b0e:	470d                	li	a4,3
   13b10:	00f76563          	bltu	a4,a5,13b1a <memchr+0x3a>
   13b14:	e3b9                	bnez	a5,13b5a <memchr+0x7a>
   13b16:	4501                	li	a0,0
   13b18:	8082                	ret
   13b1a:	0ff5f593          	zext.b	a1,a1
   13b1e:	00859713          	slli	a4,a1,0x8
   13b22:	95ba                	add	a1,a1,a4
   13b24:	01059713          	slli	a4,a1,0x10
   13b28:	feff08b7          	lui	a7,0xfeff0
   13b2c:	80808837          	lui	a6,0x80808
   13b30:	95ba                	add	a1,a1,a4
   13b32:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13b36:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807ec624>
   13b3a:	430d                	li	t1,3
   13b3c:	a029                	j	13b46 <memchr+0x66>
   13b3e:	17f1                	addi	a5,a5,-4
   13b40:	0511                	addi	a0,a0,4
   13b42:	fcf379e3          	bgeu	t1,a5,13b14 <memchr+0x34>
   13b46:	4118                	lw	a4,0(a0)
   13b48:	8f2d                	xor	a4,a4,a1
   13b4a:	01170633          	add	a2,a4,a7
   13b4e:	fff74713          	not	a4,a4
   13b52:	8f71                	and	a4,a4,a2
   13b54:	01077733          	and	a4,a4,a6
   13b58:	d37d                	beqz	a4,13b3e <memchr+0x5e>
   13b5a:	97aa                	add	a5,a5,a0
   13b5c:	a021                	j	13b64 <memchr+0x84>
   13b5e:	0505                	addi	a0,a0,1
   13b60:	faa78be3          	beq	a5,a0,13b16 <memchr+0x36>
   13b64:	00054703          	lbu	a4,0(a0)
   13b68:	fed71be3          	bne	a4,a3,13b5e <memchr+0x7e>
   13b6c:	8082                	ret

00013b6e <strncpy>:
   13b6e:	00a5e7b3          	or	a5,a1,a0
   13b72:	8b8d                	andi	a5,a5,3
   13b74:	e781                	bnez	a5,13b7c <strncpy+0xe>
   13b76:	478d                	li	a5,3
   13b78:	02c7eb63          	bltu	a5,a2,13bae <strncpy+0x40>
   13b7c:	872a                	mv	a4,a0
   13b7e:	a811                	j	13b92 <strncpy+0x24>
   13b80:	fff5c683          	lbu	a3,-1(a1)
   13b84:	fff60813          	addi	a6,a2,-1
   13b88:	fed78fa3          	sb	a3,-1(a5)
   13b8c:	ca81                	beqz	a3,13b9c <strncpy+0x2e>
   13b8e:	873e                	mv	a4,a5
   13b90:	8642                	mv	a2,a6
   13b92:	0585                	addi	a1,a1,1
   13b94:	00170793          	addi	a5,a4,1
   13b98:	f665                	bnez	a2,13b80 <strncpy+0x12>
   13b9a:	8082                	ret
   13b9c:	9732                	add	a4,a4,a2
   13b9e:	04080463          	beqz	a6,13be6 <strncpy+0x78>
   13ba2:	0785                	addi	a5,a5,1
   13ba4:	fe078fa3          	sb	zero,-1(a5)
   13ba8:	fee79de3          	bne	a5,a4,13ba2 <strncpy+0x34>
   13bac:	8082                	ret
   13bae:	feff0337          	lui	t1,0xfeff0
   13bb2:	808088b7          	lui	a7,0x80808
   13bb6:	872a                	mv	a4,a0
   13bb8:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13bbc:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807ec624>
   13bc0:	4e0d                	li	t3,3
   13bc2:	a039                	j	13bd0 <strncpy+0x62>
   13bc4:	c314                	sw	a3,0(a4)
   13bc6:	1671                	addi	a2,a2,-4
   13bc8:	0711                	addi	a4,a4,4
   13bca:	0591                	addi	a1,a1,4
   13bcc:	fcce73e3          	bgeu	t3,a2,13b92 <strncpy+0x24>
   13bd0:	4194                	lw	a3,0(a1)
   13bd2:	006687b3          	add	a5,a3,t1
   13bd6:	fff6c813          	not	a6,a3
   13bda:	0107f7b3          	and	a5,a5,a6
   13bde:	0117f7b3          	and	a5,a5,a7
   13be2:	d3ed                	beqz	a5,13bc4 <strncpy+0x56>
   13be4:	b77d                	j	13b92 <strncpy+0x24>
   13be6:	8082                	ret

00013be8 <__localeconv_l>:
   13be8:	0f050513          	addi	a0,a0,240
   13bec:	8082                	ret

00013bee <_localeconv_r>:
   13bee:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13bf2:	8082                	ret

00013bf4 <localeconv>:
   13bf4:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13bf8:	8082                	ret

00013bfa <_sbrk_r>:
   13bfa:	1141                	addi	sp,sp,-16
   13bfc:	c422                	sw	s0,8(sp)
   13bfe:	c226                	sw	s1,4(sp)
   13c00:	842a                	mv	s0,a0
   13c02:	852e                	mv	a0,a1
   13c04:	c606                	sw	ra,12(sp)
   13c06:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   13c0a:	7a5030ef          	jal	17bae <_sbrk>
   13c0e:	57fd                	li	a5,-1
   13c10:	00f50763          	beq	a0,a5,13c1e <_sbrk_r+0x24>
   13c14:	40b2                	lw	ra,12(sp)
   13c16:	4422                	lw	s0,8(sp)
   13c18:	4492                	lw	s1,4(sp)
   13c1a:	0141                	addi	sp,sp,16
   13c1c:	8082                	ret
   13c1e:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   13c22:	dbed                	beqz	a5,13c14 <_sbrk_r+0x1a>
   13c24:	40b2                	lw	ra,12(sp)
   13c26:	c01c                	sw	a5,0(s0)
   13c28:	4422                	lw	s0,8(sp)
   13c2a:	4492                	lw	s1,4(sp)
   13c2c:	0141                	addi	sp,sp,16
   13c2e:	8082                	ret

00013c30 <__libc_fini_array>:
   13c30:	1141                	addi	sp,sp,-16
   13c32:	c422                	sw	s0,8(sp)
   13c34:	67ed                	lui	a5,0x1b
   13c36:	646d                	lui	s0,0x1b
   13c38:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   13c3c:	01040413          	addi	s0,s0,16 # 1b010 <__sglue>
   13c40:	8c1d                	sub	s0,s0,a5
   13c42:	c226                	sw	s1,4(sp)
   13c44:	c606                	sw	ra,12(sp)
   13c46:	40245493          	srai	s1,s0,0x2
   13c4a:	c881                	beqz	s1,13c5a <__libc_fini_array+0x2a>
   13c4c:	1471                	addi	s0,s0,-4
   13c4e:	943e                	add	s0,s0,a5
   13c50:	401c                	lw	a5,0(s0)
   13c52:	14fd                	addi	s1,s1,-1
   13c54:	1471                	addi	s0,s0,-4
   13c56:	9782                	jalr	a5
   13c58:	fce5                	bnez	s1,13c50 <__libc_fini_array+0x20>
   13c5a:	40b2                	lw	ra,12(sp)
   13c5c:	4422                	lw	s0,8(sp)
   13c5e:	4492                	lw	s1,4(sp)
   13c60:	0141                	addi	sp,sp,16
   13c62:	8082                	ret

00013c64 <memmove>:
   13c64:	02a5f263          	bgeu	a1,a0,13c88 <memmove+0x24>
   13c68:	00c58733          	add	a4,a1,a2
   13c6c:	00e57e63          	bgeu	a0,a4,13c88 <memmove+0x24>
   13c70:	00c507b3          	add	a5,a0,a2
   13c74:	ca1d                	beqz	a2,13caa <memmove+0x46>
   13c76:	fff74683          	lbu	a3,-1(a4)
   13c7a:	17fd                	addi	a5,a5,-1
   13c7c:	177d                	addi	a4,a4,-1
   13c7e:	00d78023          	sb	a3,0(a5)
   13c82:	fef51ae3          	bne	a0,a5,13c76 <memmove+0x12>
   13c86:	8082                	ret
   13c88:	47bd                	li	a5,15
   13c8a:	02c7e163          	bltu	a5,a2,13cac <memmove+0x48>
   13c8e:	87aa                	mv	a5,a0
   13c90:	fff60693          	addi	a3,a2,-1
   13c94:	ca59                	beqz	a2,13d2a <memmove+0xc6>
   13c96:	0685                	addi	a3,a3,1
   13c98:	96be                	add	a3,a3,a5
   13c9a:	0005c703          	lbu	a4,0(a1)
   13c9e:	0785                	addi	a5,a5,1
   13ca0:	0585                	addi	a1,a1,1
   13ca2:	fee78fa3          	sb	a4,-1(a5)
   13ca6:	fed79ae3          	bne	a5,a3,13c9a <memmove+0x36>
   13caa:	8082                	ret
   13cac:	00b567b3          	or	a5,a0,a1
   13cb0:	8b8d                	andi	a5,a5,3
   13cb2:	eba5                	bnez	a5,13d22 <memmove+0xbe>
   13cb4:	ff060893          	addi	a7,a2,-16
   13cb8:	ff08f893          	andi	a7,a7,-16
   13cbc:	08c1                	addi	a7,a7,16
   13cbe:	011506b3          	add	a3,a0,a7
   13cc2:	872e                	mv	a4,a1
   13cc4:	87aa                	mv	a5,a0
   13cc6:	00072803          	lw	a6,0(a4)
   13cca:	0741                	addi	a4,a4,16
   13ccc:	07c1                	addi	a5,a5,16
   13cce:	ff07a823          	sw	a6,-16(a5)
   13cd2:	ff472803          	lw	a6,-12(a4)
   13cd6:	ff07aa23          	sw	a6,-12(a5)
   13cda:	ff872803          	lw	a6,-8(a4)
   13cde:	ff07ac23          	sw	a6,-8(a5)
   13ce2:	ffc72803          	lw	a6,-4(a4)
   13ce6:	ff07ae23          	sw	a6,-4(a5)
   13cea:	fcd79ee3          	bne	a5,a3,13cc6 <memmove+0x62>
   13cee:	00c67813          	andi	a6,a2,12
   13cf2:	95c6                	add	a1,a1,a7
   13cf4:	00f67713          	andi	a4,a2,15
   13cf8:	02080a63          	beqz	a6,13d2c <memmove+0xc8>
   13cfc:	ffc70813          	addi	a6,a4,-4
   13d00:	ffc87813          	andi	a6,a6,-4
   13d04:	0811                	addi	a6,a6,4
   13d06:	010687b3          	add	a5,a3,a6
   13d0a:	872e                	mv	a4,a1
   13d0c:	00072883          	lw	a7,0(a4)
   13d10:	0691                	addi	a3,a3,4
   13d12:	0711                	addi	a4,a4,4
   13d14:	ff16ae23          	sw	a7,-4(a3)
   13d18:	fef69ae3          	bne	a3,a5,13d0c <memmove+0xa8>
   13d1c:	8a0d                	andi	a2,a2,3
   13d1e:	95c2                	add	a1,a1,a6
   13d20:	bf85                	j	13c90 <memmove+0x2c>
   13d22:	fff60693          	addi	a3,a2,-1
   13d26:	87aa                	mv	a5,a0
   13d28:	b7bd                	j	13c96 <memmove+0x32>
   13d2a:	8082                	ret
   13d2c:	863a                	mv	a2,a4
   13d2e:	b78d                	j	13c90 <memmove+0x2c>

00013d30 <memcpy>:
   13d30:	00a5c7b3          	xor	a5,a1,a0
   13d34:	8b8d                	andi	a5,a5,3
   13d36:	00c508b3          	add	a7,a0,a2
   13d3a:	e7b1                	bnez	a5,13d86 <memcpy+0x56>
   13d3c:	478d                	li	a5,3
   13d3e:	04c7f463          	bgeu	a5,a2,13d86 <memcpy+0x56>
   13d42:	00357793          	andi	a5,a0,3
   13d46:	872a                	mv	a4,a0
   13d48:	ebb9                	bnez	a5,13d9e <memcpy+0x6e>
   13d4a:	ffc8f613          	andi	a2,a7,-4
   13d4e:	40e606b3          	sub	a3,a2,a4
   13d52:	02000793          	li	a5,32
   13d56:	06d7c863          	blt	a5,a3,13dc6 <memcpy+0x96>
   13d5a:	86ae                	mv	a3,a1
   13d5c:	87ba                	mv	a5,a4
   13d5e:	02c77163          	bgeu	a4,a2,13d80 <memcpy+0x50>
   13d62:	0006a803          	lw	a6,0(a3)
   13d66:	0791                	addi	a5,a5,4
   13d68:	0691                	addi	a3,a3,4
   13d6a:	ff07ae23          	sw	a6,-4(a5)
   13d6e:	fec7eae3          	bltu	a5,a2,13d62 <memcpy+0x32>
   13d72:	fff60793          	addi	a5,a2,-1
   13d76:	8f99                	sub	a5,a5,a4
   13d78:	9bf1                	andi	a5,a5,-4
   13d7a:	0791                	addi	a5,a5,4
   13d7c:	973e                	add	a4,a4,a5
   13d7e:	95be                	add	a1,a1,a5
   13d80:	01176663          	bltu	a4,a7,13d8c <memcpy+0x5c>
   13d84:	8082                	ret
   13d86:	872a                	mv	a4,a0
   13d88:	03157e63          	bgeu	a0,a7,13dc4 <memcpy+0x94>
   13d8c:	0005c783          	lbu	a5,0(a1)
   13d90:	0705                	addi	a4,a4,1
   13d92:	0585                	addi	a1,a1,1
   13d94:	fef70fa3          	sb	a5,-1(a4)
   13d98:	fee89ae3          	bne	a7,a4,13d8c <memcpy+0x5c>
   13d9c:	8082                	ret
   13d9e:	0005c683          	lbu	a3,0(a1)
   13da2:	0705                	addi	a4,a4,1
   13da4:	00377793          	andi	a5,a4,3
   13da8:	fed70fa3          	sb	a3,-1(a4)
   13dac:	0585                	addi	a1,a1,1
   13dae:	dfd1                	beqz	a5,13d4a <memcpy+0x1a>
   13db0:	0005c683          	lbu	a3,0(a1)
   13db4:	0705                	addi	a4,a4,1
   13db6:	00377793          	andi	a5,a4,3
   13dba:	fed70fa3          	sb	a3,-1(a4)
   13dbe:	0585                	addi	a1,a1,1
   13dc0:	fff9                	bnez	a5,13d9e <memcpy+0x6e>
   13dc2:	b761                	j	13d4a <memcpy+0x1a>
   13dc4:	8082                	ret
   13dc6:	1141                	addi	sp,sp,-16
   13dc8:	c622                	sw	s0,12(sp)
   13dca:	02000413          	li	s0,32
   13dce:	0005a383          	lw	t2,0(a1)
   13dd2:	0045a283          	lw	t0,4(a1)
   13dd6:	0085af83          	lw	t6,8(a1)
   13dda:	00c5af03          	lw	t5,12(a1)
   13dde:	0105ae83          	lw	t4,16(a1)
   13de2:	0145ae03          	lw	t3,20(a1)
   13de6:	0185a303          	lw	t1,24(a1)
   13dea:	01c5a803          	lw	a6,28(a1)
   13dee:	5194                	lw	a3,32(a1)
   13df0:	02470713          	addi	a4,a4,36
   13df4:	40e607b3          	sub	a5,a2,a4
   13df8:	fc772e23          	sw	t2,-36(a4)
   13dfc:	fe572023          	sw	t0,-32(a4)
   13e00:	fff72223          	sw	t6,-28(a4)
   13e04:	ffe72423          	sw	t5,-24(a4)
   13e08:	ffd72623          	sw	t4,-20(a4)
   13e0c:	ffc72823          	sw	t3,-16(a4)
   13e10:	fe672a23          	sw	t1,-12(a4)
   13e14:	ff072c23          	sw	a6,-8(a4)
   13e18:	fed72e23          	sw	a3,-4(a4)
   13e1c:	02458593          	addi	a1,a1,36
   13e20:	faf447e3          	blt	s0,a5,13dce <memcpy+0x9e>
   13e24:	86ae                	mv	a3,a1
   13e26:	87ba                	mv	a5,a4
   13e28:	02c77163          	bgeu	a4,a2,13e4a <memcpy+0x11a>
   13e2c:	0006a803          	lw	a6,0(a3)
   13e30:	0791                	addi	a5,a5,4
   13e32:	0691                	addi	a3,a3,4
   13e34:	ff07ae23          	sw	a6,-4(a5)
   13e38:	fec7eae3          	bltu	a5,a2,13e2c <memcpy+0xfc>
   13e3c:	fff60793          	addi	a5,a2,-1
   13e40:	8f99                	sub	a5,a5,a4
   13e42:	9bf1                	andi	a5,a5,-4
   13e44:	0791                	addi	a5,a5,4
   13e46:	973e                	add	a4,a4,a5
   13e48:	95be                	add	a1,a1,a5
   13e4a:	01176563          	bltu	a4,a7,13e54 <memcpy+0x124>
   13e4e:	4432                	lw	s0,12(sp)
   13e50:	0141                	addi	sp,sp,16
   13e52:	8082                	ret
   13e54:	0005c783          	lbu	a5,0(a1)
   13e58:	0705                	addi	a4,a4,1
   13e5a:	0585                	addi	a1,a1,1
   13e5c:	fef70fa3          	sb	a5,-1(a4)
   13e60:	fee887e3          	beq	a7,a4,13e4e <memcpy+0x11e>
   13e64:	0005c783          	lbu	a5,0(a1)
   13e68:	0705                	addi	a4,a4,1
   13e6a:	0585                	addi	a1,a1,1
   13e6c:	fef70fa3          	sb	a5,-1(a4)
   13e70:	fee892e3          	bne	a7,a4,13e54 <memcpy+0x124>
   13e74:	bfe9                	j	13e4e <memcpy+0x11e>

00013e76 <frexpl>:
   13e76:	7159                	addi	sp,sp,-112
   13e78:	d0ca                	sw	s2,96(sp)
   13e7a:	00c5a903          	lw	s2,12(a1)
   13e7e:	ccd2                	sw	s4,88(sp)
   13e80:	cad6                	sw	s5,84(sp)
   13e82:	c8da                	sw	s6,80(sp)
   13e84:	0045aa83          	lw	s5,4(a1)
   13e88:	0005ab03          	lw	s6,0(a1)
   13e8c:	0085aa03          	lw	s4,8(a1)
   13e90:	cece                	sw	s3,92(sp)
   13e92:	69a1                	lui	s3,0x8
   13e94:	d4a2                	sw	s0,104(sp)
   13e96:	d2a6                	sw	s1,100(sp)
   13e98:	d686                	sw	ra,108(sp)
   13e9a:	01095493          	srli	s1,s2,0x10
   13e9e:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   13ea0:	d85a                	sw	s6,48(sp)
   13ea2:	da56                	sw	s5,52(sp)
   13ea4:	dc52                	sw	s4,56(sp)
   13ea6:	de4a                	sw	s2,60(sp)
   13ea8:	0134f4b3          	and	s1,s1,s3
   13eac:	00062023          	sw	zero,0(a2)
   13eb0:	842a                	mv	s0,a0
   13eb2:	05348763          	beq	s1,s3,13f00 <frexpl+0x8a>
   13eb6:	080c                	addi	a1,sp,16
   13eb8:	1008                	addi	a0,sp,32
   13eba:	c6de                	sw	s7,76(sp)
   13ebc:	d05a                	sw	s6,32(sp)
   13ebe:	8bb2                	mv	s7,a2
   13ec0:	d256                	sw	s5,36(sp)
   13ec2:	d452                	sw	s4,40(sp)
   13ec4:	d64a                	sw	s2,44(sp)
   13ec6:	c802                	sw	zero,16(sp)
   13ec8:	ca02                	sw	zero,20(sp)
   13eca:	cc02                	sw	zero,24(sp)
   13ecc:	ce02                	sw	zero,28(sp)
   13ece:	5e3030ef          	jal	17cb0 <__eqtf2>
   13ed2:	c941                	beqz	a0,13f62 <frexpl+0xec>
   13ed4:	4681                	li	a3,0
   13ed6:	c8a1                	beqz	s1,13f26 <frexpl+0xb0>
   13ed8:	7771                	lui	a4,0xffffc
   13eda:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffe05a6>
   13edc:	5972                	lw	s2,60(sp)
   13ede:	94ba                	add	s1,s1,a4
   13ee0:	800107b7          	lui	a5,0x80010
   13ee4:	94b6                	add	s1,s1,a3
   13ee6:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff45a3>
   13ee8:	009ba023          	sw	s1,0(s7)
   13eec:	5b42                	lw	s6,48(sp)
   13eee:	5ad2                	lw	s5,52(sp)
   13ef0:	5a62                	lw	s4,56(sp)
   13ef2:	4bb6                	lw	s7,76(sp)
   13ef4:	00f97933          	and	s2,s2,a5
   13ef8:	3ffe07b7          	lui	a5,0x3ffe0
   13efc:	00f96933          	or	s2,s2,a5
   13f00:	01642023          	sw	s6,0(s0)
   13f04:	01542223          	sw	s5,4(s0)
   13f08:	01442423          	sw	s4,8(s0)
   13f0c:	01242623          	sw	s2,12(s0)
   13f10:	50b6                	lw	ra,108(sp)
   13f12:	8522                	mv	a0,s0
   13f14:	5426                	lw	s0,104(sp)
   13f16:	5496                	lw	s1,100(sp)
   13f18:	5906                	lw	s2,96(sp)
   13f1a:	49f6                	lw	s3,92(sp)
   13f1c:	4a66                	lw	s4,88(sp)
   13f1e:	4ad6                	lw	s5,84(sp)
   13f20:	4b46                	lw	s6,80(sp)
   13f22:	6165                	addi	sp,sp,112
   13f24:	8082                	ret
   13f26:	407107b7          	lui	a5,0x40710
   13f2a:	860a                	mv	a2,sp
   13f2c:	080c                	addi	a1,sp,16
   13f2e:	1008                	addi	a0,sp,32
   13f30:	c63e                	sw	a5,12(sp)
   13f32:	c85a                	sw	s6,16(sp)
   13f34:	ca56                	sw	s5,20(sp)
   13f36:	cc52                	sw	s4,24(sp)
   13f38:	ce4a                	sw	s2,28(sp)
   13f3a:	c002                	sw	zero,0(sp)
   13f3c:	c202                	sw	zero,4(sp)
   13f3e:	c402                	sw	zero,8(sp)
   13f40:	034040ef          	jal	17f74 <__multf3>
   13f44:	5702                	lw	a4,32(sp)
   13f46:	57b2                	lw	a5,44(sp)
   13f48:	f8e00693          	li	a3,-114
   13f4c:	d83a                	sw	a4,48(sp)
   13f4e:	5712                	lw	a4,36(sp)
   13f50:	0107d493          	srli	s1,a5,0x10
   13f54:	de3e                	sw	a5,60(sp)
   13f56:	da3a                	sw	a4,52(sp)
   13f58:	5722                	lw	a4,40(sp)
   13f5a:	0134f4b3          	and	s1,s1,s3
   13f5e:	dc3a                	sw	a4,56(sp)
   13f60:	bfa5                	j	13ed8 <frexpl+0x62>
   13f62:	4bb6                	lw	s7,76(sp)
   13f64:	bf71                	j	13f00 <frexpl+0x8a>

00013f66 <__register_exitproc>:
   13f66:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   13f6a:	c3a1                	beqz	a5,13faa <__register_exitproc+0x44>
   13f6c:	43d8                	lw	a4,4(a5)
   13f6e:	487d                	li	a6,31
   13f70:	04e84f63          	blt	a6,a4,13fce <__register_exitproc+0x68>
   13f74:	00271813          	slli	a6,a4,0x2
   13f78:	c11d                	beqz	a0,13f9e <__register_exitproc+0x38>
   13f7a:	01078333          	add	t1,a5,a6
   13f7e:	08c32423          	sw	a2,136(t1)
   13f82:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f472c>
   13f86:	4605                	li	a2,1
   13f88:	00e61633          	sll	a2,a2,a4
   13f8c:	00c8e8b3          	or	a7,a7,a2
   13f90:	1917a423          	sw	a7,392(a5)
   13f94:	10d32423          	sw	a3,264(t1)
   13f98:	4689                	li	a3,2
   13f9a:	00d50f63          	beq	a0,a3,13fb8 <__register_exitproc+0x52>
   13f9e:	0705                	addi	a4,a4,1
   13fa0:	c3d8                	sw	a4,4(a5)
   13fa2:	97c2                	add	a5,a5,a6
   13fa4:	c78c                	sw	a1,8(a5)
   13fa6:	4501                	li	a0,0
   13fa8:	8082                	ret
   13faa:	0bc18813          	addi	a6,gp,188 # 1b8cc <__atexit0>
   13fae:	f301a423          	sw	a6,-216(gp) # 1b738 <__atexit>
   13fb2:	0bc18793          	addi	a5,gp,188 # 1b8cc <__atexit0>
   13fb6:	bf5d                	j	13f6c <__register_exitproc+0x6>
   13fb8:	18c7a683          	lw	a3,396(a5)
   13fbc:	0705                	addi	a4,a4,1
   13fbe:	c3d8                	sw	a4,4(a5)
   13fc0:	8ed1                	or	a3,a3,a2
   13fc2:	18d7a623          	sw	a3,396(a5)
   13fc6:	97c2                	add	a5,a5,a6
   13fc8:	c78c                	sw	a1,8(a5)
   13fca:	4501                	li	a0,0
   13fcc:	8082                	ret
   13fce:	557d                	li	a0,-1
   13fd0:	8082                	ret

00013fd2 <_ldtoa_r>:
   13fd2:	68e9                	lui	a7,0x1a
   13fd4:	69c88893          	addi	a7,a7,1692 # 1a69c <blanks.1+0x10>
   13fd8:	0008af83          	lw	t6,0(a7)
   13fdc:	0048af03          	lw	t5,4(a7)
   13fe0:	0088ae83          	lw	t4,8(a7)
   13fe4:	00c8ae03          	lw	t3,12(a7)
   13fe8:	0108a303          	lw	t1,16(a7)
   13fec:	03852883          	lw	a7,56(a0)
   13ff0:	7171                	addi	sp,sp,-176
   13ff2:	d14a                	sw	s2,160(sp)
   13ff4:	cf4e                	sw	s3,156(sp)
   13ff6:	cd52                	sw	s4,152(sp)
   13ff8:	c95a                	sw	s6,144(sp)
   13ffa:	c75e                	sw	s7,140(sp)
   13ffc:	c562                	sw	s8,136(sp)
   13ffe:	c366                	sw	s9,132(sp)
   14000:	c16a                	sw	s10,128(sp)
   14002:	d706                	sw	ra,172(sp)
   14004:	d522                	sw	s0,168(sp)
   14006:	d326                	sw	s1,164(sp)
   14008:	cb56                	sw	s5,148(sp)
   1400a:	deee                	sw	s11,124(sp)
   1400c:	cefe                	sw	t6,92(sp)
   1400e:	d0fa                	sw	t5,96(sp)
   14010:	d2f6                	sw	t4,100(sp)
   14012:	d4f2                	sw	t3,104(sp)
   14014:	d69a                	sw	t1,108(sp)
   14016:	cc32                	sw	a2,24(sp)
   14018:	ce36                	sw	a3,28(sp)
   1401a:	0005aa03          	lw	s4,0(a1)
   1401e:	0045a983          	lw	s3,4(a1)
   14022:	0085a903          	lw	s2,8(a1)
   14026:	00c5ac03          	lw	s8,12(a1)
   1402a:	8b2a                	mv	s6,a0
   1402c:	8bba                	mv	s7,a4
   1402e:	8cbe                	mv	s9,a5
   14030:	8d42                	mv	s10,a6
   14032:	00088763          	beqz	a7,14040 <_ldtoa_r+0x6e>
   14036:	85c6                	mv	a1,a7
   14038:	24c010ef          	jal	15284 <__freedtoa>
   1403c:	020b2c23          	sw	zero,56(s6)
   14040:	5626                	lw	a2,104(sp)
   14042:	01fc5693          	srli	a3,s8,0x1f
   14046:	001c1a93          	slli	s5,s8,0x1
   1404a:	40165713          	srai	a4,a2,0x1
   1404e:	74f1                	lui	s1,0xffffc
   14050:	001c1413          	slli	s0,s8,0x1
   14054:	8f75                	and	a4,a4,a3
   14056:	011ada93          	srli	s5,s5,0x11
   1405a:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffe0535>
   1405e:	010c1d93          	slli	s11,s8,0x10
   14062:	00dca023          	sw	a3,0(s9)
   14066:	8005                	srli	s0,s0,0x1
   14068:	8f31                	xor	a4,a4,a2
   1406a:	010ddd93          	srli	s11,s11,0x10
   1406e:	009a87b3          	add	a5,s5,s1
   14072:	100c                	addi	a1,sp,32
   14074:	1808                	addi	a0,sp,48
   14076:	d852                	sw	s4,48(sp)
   14078:	da4e                	sw	s3,52(sp)
   1407a:	dc4a                	sw	s2,56(sp)
   1407c:	de22                	sw	s0,60(sp)
   1407e:	d052                	sw	s4,32(sp)
   14080:	d24e                	sw	s3,36(sp)
   14082:	d44a                	sw	s2,40(sp)
   14084:	d622                	sw	s0,44(sp)
   14086:	d4ba                	sw	a4,104(sp)
   14088:	ca3e                	sw	a5,20(sp)
   1408a:	c6d2                	sw	s4,76(sp)
   1408c:	c8ce                	sw	s3,80(sp)
   1408e:	caca                	sw	s2,84(sp)
   14090:	ccee                	sw	s11,88(sp)
   14092:	461050ef          	jal	19cf2 <__unordtf2>
   14096:	e979                	bnez	a0,1416c <_ldtoa_r+0x19a>
   14098:	7fff0cb7          	lui	s9,0x7fff0
   1409c:	54fd                	li	s1,-1
   1409e:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   140a0:	100c                	addi	a1,sp,32
   140a2:	1808                	addi	a0,sp,48
   140a4:	d852                	sw	s4,48(sp)
   140a6:	da4e                	sw	s3,52(sp)
   140a8:	dc4a                	sw	s2,56(sp)
   140aa:	de22                	sw	s0,60(sp)
   140ac:	d026                	sw	s1,32(sp)
   140ae:	d226                	sw	s1,36(sp)
   140b0:	d426                	sw	s1,40(sp)
   140b2:	d666                	sw	s9,44(sp)
   140b4:	43f050ef          	jal	19cf2 <__unordtf2>
   140b8:	ed21                	bnez	a0,14110 <_ldtoa_r+0x13e>
   140ba:	100c                	addi	a1,sp,32
   140bc:	1808                	addi	a0,sp,48
   140be:	5cb030ef          	jal	17e88 <__letf2>
   140c2:	04a05763          	blez	a0,14110 <_ldtoa_r+0x13e>
   140c6:	478d                	li	a5,3
   140c8:	c4be                	sw	a5,72(sp)
   140ca:	47e2                	lw	a5,24(sp)
   140cc:	4872                	lw	a6,28(sp)
   140ce:	4652                	lw	a2,20(sp)
   140d0:	00b8                	addi	a4,sp,72
   140d2:	c06a                	sw	s10,0(sp)
   140d4:	88de                	mv	a7,s7
   140d6:	00f4                	addi	a3,sp,76
   140d8:	08ec                	addi	a1,sp,92
   140da:	855a                	mv	a0,s6
   140dc:	2235                	jal	14208 <__gdtoa>
   140de:	000ba703          	lw	a4,0(s7)
   140e2:	77e1                	lui	a5,0xffff8
   140e4:	00f71763          	bne	a4,a5,140f2 <_ldtoa_r+0x120>
   140e8:	800007b7          	lui	a5,0x80000
   140ec:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   140ee:	00fba023          	sw	a5,0(s7)
   140f2:	50ba                	lw	ra,172(sp)
   140f4:	542a                	lw	s0,168(sp)
   140f6:	549a                	lw	s1,164(sp)
   140f8:	590a                	lw	s2,160(sp)
   140fa:	49fa                	lw	s3,156(sp)
   140fc:	4a6a                	lw	s4,152(sp)
   140fe:	4ada                	lw	s5,148(sp)
   14100:	4b4a                	lw	s6,144(sp)
   14102:	4bba                	lw	s7,140(sp)
   14104:	4c2a                	lw	s8,136(sp)
   14106:	4c9a                	lw	s9,132(sp)
   14108:	4d0a                	lw	s10,128(sp)
   1410a:	5df6                	lw	s11,124(sp)
   1410c:	614d                	addi	sp,sp,176
   1410e:	8082                	ret
   14110:	67c1                	lui	a5,0x10
   14112:	100c                	addi	a1,sp,32
   14114:	1808                	addi	a0,sp,48
   14116:	d852                	sw	s4,48(sp)
   14118:	da4e                	sw	s3,52(sp)
   1411a:	dc4a                	sw	s2,56(sp)
   1411c:	de22                	sw	s0,60(sp)
   1411e:	d002                	sw	zero,32(sp)
   14120:	d202                	sw	zero,36(sp)
   14122:	d402                	sw	zero,40(sp)
   14124:	d63e                	sw	a5,44(sp)
   14126:	477030ef          	jal	17d9c <__getf2>
   1412a:	00054963          	bltz	a0,1413c <_ldtoa_r+0x16a>
   1412e:	67c1                	lui	a5,0x10
   14130:	00fdedb3          	or	s11,s11,a5
   14134:	4785                	li	a5,1
   14136:	c4be                	sw	a5,72(sp)
   14138:	ccee                	sw	s11,88(sp)
   1413a:	bf41                	j	140ca <_ldtoa_r+0xf8>
   1413c:	100c                	addi	a1,sp,32
   1413e:	1808                	addi	a0,sp,48
   14140:	d852                	sw	s4,48(sp)
   14142:	da4e                	sw	s3,52(sp)
   14144:	dc4a                	sw	s2,56(sp)
   14146:	de62                	sw	s8,60(sp)
   14148:	d002                	sw	zero,32(sp)
   1414a:	d202                	sw	zero,36(sp)
   1414c:	d402                	sw	zero,40(sp)
   1414e:	d602                	sw	zero,44(sp)
   14150:	361030ef          	jal	17cb0 <__eqtf2>
   14154:	e119                	bnez	a0,1415a <_ldtoa_r+0x188>
   14156:	c482                	sw	zero,72(sp)
   14158:	bf8d                	j	140ca <_ldtoa_r+0xf8>
   1415a:	74f1                	lui	s1,0xffffc
   1415c:	4789                	li	a5,2
   1415e:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffe0536>
   14162:	c4be                	sw	a5,72(sp)
   14164:	009a87b3          	add	a5,s5,s1
   14168:	ca3e                	sw	a5,20(sp)
   1416a:	b785                	j	140ca <_ldtoa_r+0xf8>
   1416c:	4791                	li	a5,4
   1416e:	c4be                	sw	a5,72(sp)
   14170:	bfa9                	j	140ca <_ldtoa_r+0xf8>

00014172 <_ldcheck>:
   14172:	7139                	addi	sp,sp,-64
   14174:	da26                	sw	s1,52(sp)
   14176:	4544                	lw	s1,12(a0)
   14178:	d64e                	sw	s3,44(sp)
   1417a:	d452                	sw	s4,40(sp)
   1417c:	00852983          	lw	s3,8(a0)
   14180:	00452a03          	lw	s4,4(a0)
   14184:	d256                	sw	s5,36(sp)
   14186:	00052a83          	lw	s5,0(a0)
   1418a:	0486                	slli	s1,s1,0x1
   1418c:	8085                	srli	s1,s1,0x1
   1418e:	858a                	mv	a1,sp
   14190:	0808                	addi	a0,sp,16
   14192:	de06                	sw	ra,60(sp)
   14194:	c856                	sw	s5,16(sp)
   14196:	ca52                	sw	s4,20(sp)
   14198:	cc4e                	sw	s3,24(sp)
   1419a:	ce26                	sw	s1,28(sp)
   1419c:	c056                	sw	s5,0(sp)
   1419e:	c252                	sw	s4,4(sp)
   141a0:	c44e                	sw	s3,8(sp)
   141a2:	c626                	sw	s1,12(sp)
   141a4:	34f050ef          	jal	19cf2 <__unordtf2>
   141a8:	e921                	bnez	a0,141f8 <_ldcheck+0x86>
   141aa:	d05a                	sw	s6,32(sp)
   141ac:	7fff0b37          	lui	s6,0x7fff0
   141b0:	d84a                	sw	s2,48(sp)
   141b2:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   141b4:	597d                	li	s2,-1
   141b6:	858a                	mv	a1,sp
   141b8:	0808                	addi	a0,sp,16
   141ba:	dc22                	sw	s0,56(sp)
   141bc:	c04a                	sw	s2,0(sp)
   141be:	c24a                	sw	s2,4(sp)
   141c0:	c44a                	sw	s2,8(sp)
   141c2:	c65a                	sw	s6,12(sp)
   141c4:	4405                	li	s0,1
   141c6:	32d050ef          	jal	19cf2 <__unordtf2>
   141ca:	c105                	beqz	a0,141ea <_ldcheck+0x78>
   141cc:	50f2                	lw	ra,60(sp)
   141ce:	00144513          	xori	a0,s0,1
   141d2:	5462                	lw	s0,56(sp)
   141d4:	0ff57513          	zext.b	a0,a0
   141d8:	5942                	lw	s2,48(sp)
   141da:	5b02                	lw	s6,32(sp)
   141dc:	54d2                	lw	s1,52(sp)
   141de:	59b2                	lw	s3,44(sp)
   141e0:	5a22                	lw	s4,40(sp)
   141e2:	5a92                	lw	s5,36(sp)
   141e4:	0506                	slli	a0,a0,0x1
   141e6:	6121                	addi	sp,sp,64
   141e8:	8082                	ret
   141ea:	858a                	mv	a1,sp
   141ec:	0808                	addi	a0,sp,16
   141ee:	49b030ef          	jal	17e88 <__letf2>
   141f2:	00152413          	slti	s0,a0,1
   141f6:	bfd9                	j	141cc <_ldcheck+0x5a>
   141f8:	50f2                	lw	ra,60(sp)
   141fa:	54d2                	lw	s1,52(sp)
   141fc:	59b2                	lw	s3,44(sp)
   141fe:	5a22                	lw	s4,40(sp)
   14200:	5a92                	lw	s5,36(sp)
   14202:	4505                	li	a0,1
   14204:	6121                	addi	sp,sp,64
   14206:	8082                	ret

00014208 <__gdtoa>:
   14208:	7171                	addi	sp,sp,-176
   1420a:	cb56                	sw	s5,148(sp)
   1420c:	00072a83          	lw	s5,0(a4)
   14210:	d326                	sw	s1,164(sp)
   14212:	c75e                	sw	s7,140(sp)
   14214:	fcfafe13          	andi	t3,s5,-49
   14218:	d706                	sw	ra,172(sp)
   1421a:	01c72023          	sw	t3,0(a4)
   1421e:	8bba                	mv	s7,a4
   14220:	574a                	lw	a4,176(sp)
   14222:	00fafe13          	andi	t3,s5,15
   14226:	4e8d                	li	t4,3
   14228:	c63a                	sw	a4,12(sp)
   1422a:	c832                	sw	a2,16(sp)
   1422c:	d442                	sw	a6,40(sp)
   1422e:	84c6                	mv	s1,a7
   14230:	4fde0563          	beq	t3,t4,1471a <__gdtoa+0x512>
   14234:	c95a                	sw	s6,144(sp)
   14236:	00cafb13          	andi	s6,s5,12
   1423a:	460b1e63          	bnez	s6,146b6 <__gdtoa+0x4ae>
   1423e:	d522                	sw	s0,168(sp)
   14240:	842a                	mv	s0,a0
   14242:	4a0e0863          	beqz	t3,146f2 <__gdtoa+0x4ea>
   14246:	c16a                	sw	s10,128(sp)
   14248:	0005ad03          	lw	s10,0(a1)
   1424c:	d14a                	sw	s2,160(sp)
   1424e:	cf4e                	sw	s3,156(sp)
   14250:	cd52                	sw	s4,152(sp)
   14252:	c366                	sw	s9,132(sp)
   14254:	02000613          	li	a2,32
   14258:	8a2e                	mv	s4,a1
   1425a:	893e                	mv	s2,a5
   1425c:	89b6                	mv	s3,a3
   1425e:	4581                	li	a1,0
   14260:	02000793          	li	a5,32
   14264:	01a65663          	bge	a2,s10,14270 <__gdtoa+0x68>
   14268:	0786                	slli	a5,a5,0x1
   1426a:	0585                	addi	a1,a1,1
   1426c:	ffa7cee3          	blt	a5,s10,14268 <__gdtoa+0x60>
   14270:	8522                	mv	a0,s0
   14272:	254010ef          	jal	154c6 <_Balloc>
   14276:	8caa                	mv	s9,a0
   14278:	68050463          	beqz	a0,14900 <__gdtoa+0x6f8>
   1427c:	fffd0893          	addi	a7,s10,-1
   14280:	4058d893          	srai	a7,a7,0x5
   14284:	00289513          	slli	a0,a7,0x2
   14288:	c562                	sw	s8,136(sp)
   1428a:	deee                	sw	s11,124(sp)
   1428c:	954e                	add	a0,a0,s3
   1428e:	014c8613          	addi	a2,s9,20
   14292:	87ce                	mv	a5,s3
   14294:	4398                	lw	a4,0(a5)
   14296:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   14298:	0611                	addi	a2,a2,4
   1429a:	fee62e23          	sw	a4,-4(a2)
   1429e:	fef57be3          	bgeu	a0,a5,14294 <__gdtoa+0x8c>
   142a2:	0505                	addi	a0,a0,1
   142a4:	00198793          	addi	a5,s3,1
   142a8:	4611                	li	a2,4
   142aa:	00f56563          	bltu	a0,a5,142b4 <__gdtoa+0xac>
   142ae:	088a                	slli	a7,a7,0x2
   142b0:	00488613          	addi	a2,a7,4
   142b4:	40265d93          	srai	s11,a2,0x2
   142b8:	9666                	add	a2,a2,s9
   142ba:	a021                	j	142c2 <__gdtoa+0xba>
   142bc:	1671                	addi	a2,a2,-4
   142be:	4a0d8263          	beqz	s11,14762 <__gdtoa+0x55a>
   142c2:	4a1c                	lw	a5,16(a2)
   142c4:	8c6e                	mv	s8,s11
   142c6:	1dfd                	addi	s11,s11,-1
   142c8:	dbf5                	beqz	a5,142bc <__gdtoa+0xb4>
   142ca:	004d8793          	addi	a5,s11,4
   142ce:	078a                	slli	a5,a5,0x2
   142d0:	97e6                	add	a5,a5,s9
   142d2:	43c8                	lw	a0,4(a5)
   142d4:	018ca823          	sw	s8,16(s9)
   142d8:	0c16                	slli	s8,s8,0x5
   142da:	410010ef          	jal	156ea <__hi0bits>
   142de:	40ac0db3          	sub	s11,s8,a0
   142e2:	8566                	mv	a0,s9
   142e4:	1a8010ef          	jal	1548c <__trailz_D2A>
   142e8:	d6aa                	sw	a0,108(sp)
   142ea:	4c42                	lw	s8,16(sp)
   142ec:	48051f63          	bnez	a0,1478a <__gdtoa+0x582>
   142f0:	010ca603          	lw	a2,16(s9)
   142f4:	3e060463          	beqz	a2,146dc <__gdtoa+0x4d4>
   142f8:	10ec                	addi	a1,sp,108
   142fa:	8566                	mv	a0,s9
   142fc:	2f9010ef          	jal	15df4 <__b2d>
   14300:	ac2a                	fsd	fa0,24(sp)
   14302:	4572                	lw	a0,28(sp)
   14304:	45e2                	lw	a1,24(sp)
   14306:	01bc08b3          	add	a7,s8,s11
   1430a:	00c51613          	slli	a2,a0,0xc
   1430e:	8f2e                	mv	t5,a1
   14310:	8231                	srli	a2,a2,0xc
   14312:	3ff005b7          	lui	a1,0x3ff00
   14316:	8e4d                	or	a2,a2,a1
   14318:	cc7a                	sw	t5,24(sp)
   1431a:	ce32                	sw	a2,28(sp)
   1431c:	ea81b707          	fld	fa4,-344(gp) # 1b6b8 <__SDATA_BEGIN__>
   14320:	27e2                	fld	fa5,24(sp)
   14322:	eb01b687          	fld	fa3,-336(gp) # 1b6c0 <__SDATA_BEGIN__+0x8>
   14326:	0ae7f753          	fsub.d	fa4,fa5,fa4
   1432a:	eb81b787          	fld	fa5,-328(gp) # 1b6c8 <__SDATA_BEGIN__+0x10>
   1432e:	fff88593          	addi	a1,a7,-1
   14332:	852e                	mv	a0,a1
   14334:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   14338:	d20587d3          	fcvt.d.w	fa5,a1
   1433c:	ec01b687          	fld	fa3,-320(gp) # 1b6d0 <__SDATA_BEGIN__+0x18>
   14340:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   14344:	0005d563          	bgez	a1,1434e <__gdtoa+0x146>
   14348:	4505                	li	a0,1
   1434a:	41150533          	sub	a0,a0,a7
   1434e:	bcb50513          	addi	a0,a0,-1077
   14352:	00a05863          	blez	a0,14362 <__gdtoa+0x15a>
   14356:	d20506d3          	fcvt.d.w	fa3,a0
   1435a:	ec81b707          	fld	fa4,-312(gp) # 1b6d8 <__SDATA_BEGIN__+0x20>
   1435e:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14362:	d2000753          	fcvt.d.w	fa4,zero
   14366:	c2079853          	fcvt.w.d	a6,fa5,rtz
   1436a:	a2e79553          	flt.d	a0,fa5,fa4
   1436e:	c909                	beqz	a0,14380 <__gdtoa+0x178>
   14370:	d2080753          	fcvt.d.w	fa4,a6
   14374:	a2f72553          	feq.d	a0,fa4,fa5
   14378:	00153513          	seqz	a0,a0
   1437c:	40a80833          	sub	a6,a6,a0
   14380:	01459e93          	slli	t4,a1,0x14
   14384:	40bd8533          	sub	a0,s11,a1
   14388:	45d9                	li	a1,22
   1438a:	00ce8fb3          	add	t6,t4,a2
   1438e:	fff50e93          	addi	t4,a0,-1
   14392:	3d05eb63          	bltu	a1,a6,14768 <__gdtoa+0x560>
   14396:	65e9                	lui	a1,0x1a
   14398:	00381613          	slli	a2,a6,0x3
   1439c:	71058593          	addi	a1,a1,1808 # 1a710 <__mprec_tens>
   143a0:	962e                	add	a2,a2,a1
   143a2:	cc7a                	sw	t5,24(sp)
   143a4:	ce7e                	sw	t6,28(sp)
   143a6:	221c                	fld	fa5,0(a2)
   143a8:	2762                	fld	fa4,24(sp)
   143aa:	a2f71653          	flt.d	a2,fa4,fa5
   143ae:	58061163          	bnez	a2,14930 <__gdtoa+0x728>
   143b2:	ca82                	sw	zero,84(sp)
   143b4:	cc02                	sw	zero,24(sp)
   143b6:	00a04763          	bgtz	a0,143c4 <__gdtoa+0x1bc>
   143ba:	4605                	li	a2,1
   143bc:	40a607b3          	sub	a5,a2,a0
   143c0:	cc3e                	sw	a5,24(sp)
   143c2:	4e81                	li	t4,0
   143c4:	9ec2                	add	t4,t4,a6
   143c6:	da42                	sw	a6,52(sp)
   143c8:	d802                	sw	zero,48(sp)
   143ca:	4625                	li	a2,9
   143cc:	3d266a63          	bltu	a2,s2,147a0 <__gdtoa+0x598>
   143d0:	4615                	li	a2,5
   143d2:	57264263          	blt	a2,s2,14936 <__gdtoa+0x72e>
   143d6:	3fd88893          	addi	a7,a7,1021
   143da:	7f88b793          	sltiu	a5,a7,2040
   143de:	4591                	li	a1,4
   143e0:	ccbe                	sw	a5,88(sp)
   143e2:	18b909e3          	beq	s2,a1,14d74 <__gdtoa+0xb6c>
   143e6:	18c903e3          	beq	s2,a2,14d6c <__gdtoa+0xb64>
   143ea:	4609                	li	a2,2
   143ec:	18c907e3          	beq	s2,a2,14d7a <__gdtoa+0xb72>
   143f0:	460d                	li	a2,3
   143f2:	c882                	sw	zero,80(sp)
   143f4:	3ac91c63          	bne	s2,a2,147ac <__gdtoa+0x5a4>
   143f8:	57d2                	lw	a5,52(sp)
   143fa:	5722                	lw	a4,40(sp)
   143fc:	97ba                	add	a5,a5,a4
   143fe:	cebe                	sw	a5,92(sp)
   14400:	0785                	addi	a5,a5,1
   14402:	d63e                	sw	a5,44(sp)
   14404:	00f05ce3          	blez	a5,14c1c <__gdtoa+0xa14>
   14408:	863e                	mv	a2,a5
   1440a:	85be                	mv	a1,a5
   1440c:	8522                	mv	a0,s0
   1440e:	c4fa                	sw	t5,72(sp)
   14410:	c6fe                	sw	t6,76(sp)
   14412:	c0f6                	sw	t4,64(sp)
   14414:	dc42                	sw	a6,56(sp)
   14416:	d6b2                	sw	a2,108(sp)
   14418:	5bd000ef          	jal	151d4 <__rv_alloc_D2A>
   1441c:	88aa                	mv	a7,a0
   1441e:	32050863          	beqz	a0,1474e <__gdtoa+0x546>
   14422:	00ca2783          	lw	a5,12(s4)
   14426:	5862                	lw	a6,56(sp)
   14428:	4e86                	lw	t4,64(sp)
   1442a:	17fd                	addi	a5,a5,-1
   1442c:	d03e                	sw	a5,32(sp)
   1442e:	4f26                	lw	t5,72(sp)
   14430:	4fb6                	lw	t6,76(sp)
   14432:	3a078363          	beqz	a5,147d8 <__gdtoa+0x5d0>
   14436:	4e07ca63          	bltz	a5,1492a <__gdtoa+0x722>
   1443a:	100af313          	andi	t1,s5,256
   1443e:	38031863          	bnez	t1,147ce <__gdtoa+0x5c6>
   14442:	000c4663          	bltz	s8,1444e <__gdtoa+0x246>
   14446:	57d2                	lw	a5,52(sp)
   14448:	4639                	li	a2,14
   1444a:	50f65363          	bge	a2,a5,14950 <__gdtoa+0x748>
   1444e:	47c6                	lw	a5,80(sp)
   14450:	4c078863          	beqz	a5,14920 <__gdtoa+0x718>
   14454:	41bd06b3          	sub	a3,s10,s11
   14458:	004a2603          	lw	a2,4(s4)
   1445c:	00168593          	addi	a1,a3,1
   14460:	d6ae                	sw	a1,108(sp)
   14462:	40dc06b3          	sub	a3,s8,a3
   14466:	7ec6dd63          	bge	a3,a2,14c60 <__gdtoa+0xa58>
   1446a:	ffd90693          	addi	a3,s2,-3
   1446e:	9af5                	andi	a3,a3,-3
   14470:	72068863          	beqz	a3,14ba0 <__gdtoa+0x998>
   14474:	40cc06b3          	sub	a3,s8,a2
   14478:	0685                	addi	a3,a3,1
   1447a:	d6b6                	sw	a3,108(sp)
   1447c:	4605                	li	a2,1
   1447e:	01265863          	bge	a2,s2,1448e <__gdtoa+0x286>
   14482:	57b2                	lw	a5,44(sp)
   14484:	00f05563          	blez	a5,1448e <__gdtoa+0x286>
   14488:	57b2                	lw	a5,44(sp)
   1448a:	40d7c1e3          	blt	a5,a3,1508c <__gdtoa+0xe84>
   1448e:	47e2                	lw	a5,24(sp)
   14490:	5d42                	lw	s10,48(sp)
   14492:	9eb6                	add	t4,t4,a3
   14494:	dc3e                	sw	a5,56(sp)
   14496:	97b6                	add	a5,a5,a3
   14498:	cc3e                	sw	a5,24(sp)
   1449a:	4585                	li	a1,1
   1449c:	8522                	mv	a0,s0
   1449e:	ccc6                	sw	a7,88(sp)
   144a0:	c4f6                	sw	t4,72(sp)
   144a2:	c0c2                	sw	a6,64(sp)
   144a4:	324010ef          	jal	157c8 <__i2b>
   144a8:	4806                	lw	a6,64(sp)
   144aa:	4ea6                	lw	t4,72(sp)
   144ac:	48e6                	lw	a7,88(sp)
   144ae:	8c2a                	mv	s8,a0
   144b0:	28050f63          	beqz	a0,1474e <__gdtoa+0x546>
   144b4:	57e2                	lw	a5,56(sp)
   144b6:	c385                	beqz	a5,144d6 <__gdtoa+0x2ce>
   144b8:	01d05f63          	blez	t4,144d6 <__gdtoa+0x2ce>
   144bc:	86be                	mv	a3,a5
   144be:	00fed363          	bge	t4,a5,144c4 <__gdtoa+0x2bc>
   144c2:	86f6                	mv	a3,t4
   144c4:	47e2                	lw	a5,24(sp)
   144c6:	d6b6                	sw	a3,108(sp)
   144c8:	40de8eb3          	sub	t4,t4,a3
   144cc:	8f95                	sub	a5,a5,a3
   144ce:	cc3e                	sw	a5,24(sp)
   144d0:	57e2                	lw	a5,56(sp)
   144d2:	8f95                	sub	a5,a5,a3
   144d4:	dc3e                	sw	a5,56(sp)
   144d6:	57c2                	lw	a5,48(sp)
   144d8:	c39d                	beqz	a5,144fe <__gdtoa+0x2f6>
   144da:	47c6                	lw	a5,80(sp)
   144dc:	c399                	beqz	a5,144e2 <__gdtoa+0x2da>
   144de:	7e0d1863          	bnez	s10,14cce <__gdtoa+0xac6>
   144e2:	5642                	lw	a2,48(sp)
   144e4:	85e6                	mv	a1,s9
   144e6:	8522                	mv	a0,s0
   144e8:	ccc6                	sw	a7,88(sp)
   144ea:	c4f6                	sw	t4,72(sp)
   144ec:	c0c2                	sw	a6,64(sp)
   144ee:	4d8010ef          	jal	159c6 <__pow5mult>
   144f2:	4806                	lw	a6,64(sp)
   144f4:	4ea6                	lw	t4,72(sp)
   144f6:	48e6                	lw	a7,88(sp)
   144f8:	8caa                	mv	s9,a0
   144fa:	24050a63          	beqz	a0,1474e <__gdtoa+0x546>
   144fe:	4585                	li	a1,1
   14500:	8522                	mv	a0,s0
   14502:	c4c6                	sw	a7,72(sp)
   14504:	c0f6                	sw	t4,64(sp)
   14506:	d842                	sw	a6,48(sp)
   14508:	2c0010ef          	jal	157c8 <__i2b>
   1450c:	8d2a                	mv	s10,a0
   1450e:	24050063          	beqz	a0,1474e <__gdtoa+0x546>
   14512:	5842                	lw	a6,48(sp)
   14514:	4e86                	lw	t4,64(sp)
   14516:	48a6                	lw	a7,72(sp)
   14518:	70081663          	bnez	a6,14c24 <__gdtoa+0xa1c>
   1451c:	4685                	li	a3,1
   1451e:	5126d263          	bge	a3,s2,14a22 <__gdtoa+0x81a>
   14522:	4a7d                	li	s4,31
   14524:	47e2                	lw	a5,24(sp)
   14526:	41da0a33          	sub	s4,s4,t4
   1452a:	1a71                	addi	s4,s4,-4
   1452c:	01fa7a13          	andi	s4,s4,31
   14530:	00fa0633          	add	a2,s4,a5
   14534:	d6d2                	sw	s4,108(sp)
   14536:	87d2                	mv	a5,s4
   14538:	58c04d63          	bgtz	a2,14ad2 <__gdtoa+0x8ca>
   1453c:	00fe8633          	add	a2,t4,a5
   14540:	1ec04c63          	bgtz	a2,14738 <__gdtoa+0x530>
   14544:	47d6                	lw	a5,84(sp)
   14546:	5a079563          	bnez	a5,14af0 <__gdtoa+0x8e8>
   1454a:	57b2                	lw	a5,44(sp)
   1454c:	66f05a63          	blez	a5,14bc0 <__gdtoa+0x9b8>
   14550:	47c6                	lw	a5,80(sp)
   14552:	5c078d63          	beqz	a5,14b2c <__gdtoa+0x924>
   14556:	57e2                	lw	a5,56(sp)
   14558:	00fa0633          	add	a2,s4,a5
   1455c:	7ec04763          	bgtz	a2,14d4a <__gdtoa+0xb42>
   14560:	8a62                	mv	s4,s8
   14562:	02081ce3          	bnez	a6,14d9a <__gdtoa+0xb92>
   14566:	5b32                	lw	s6,44(sp)
   14568:	8dc6                	mv	s11,a7
   1456a:	4685                	li	a3,1
   1456c:	d446                	sw	a7,40(sp)
   1456e:	cc5e                	sw	s7,24(sp)
   14570:	d626                	sw	s1,44(sp)
   14572:	a885                	j	145e2 <__gdtoa+0x3da>
   14574:	8522                	mv	a0,s0
   14576:	7bd000ef          	jal	15532 <_Bfree>
   1457a:	100ac3e3          	bltz	s5,14e80 <__gdtoa+0xc78>
   1457e:	01596ab3          	or	s5,s2,s5
   14582:	000a9763          	bnez	s5,14590 <__gdtoa+0x388>
   14586:	0009a783          	lw	a5,0(s3)
   1458a:	8b85                	andi	a5,a5,1
   1458c:	0e078ae3          	beqz	a5,14e80 <__gdtoa+0xc78>
   14590:	5782                	lw	a5,32(sp)
   14592:	4709                	li	a4,2
   14594:	26e798e3          	bne	a5,a4,15004 <__gdtoa+0xdfc>
   14598:	017d8023          	sb	s7,0(s11)
   1459c:	57b6                	lw	a5,108(sp)
   1459e:	0d85                	addi	s11,s11,1
   145a0:	1efb0fe3          	beq	s6,a5,14f9e <__gdtoa+0xd96>
   145a4:	85e6                	mv	a1,s9
   145a6:	4681                	li	a3,0
   145a8:	4629                	li	a2,10
   145aa:	8522                	mv	a0,s0
   145ac:	799000ef          	jal	15544 <__multadd>
   145b0:	8caa                	mv	s9,a0
   145b2:	18050e63          	beqz	a0,1474e <__gdtoa+0x546>
   145b6:	4681                	li	a3,0
   145b8:	4629                	li	a2,10
   145ba:	85e2                	mv	a1,s8
   145bc:	8522                	mv	a0,s0
   145be:	494c0c63          	beq	s8,s4,14a56 <__gdtoa+0x84e>
   145c2:	783000ef          	jal	15544 <__multadd>
   145c6:	8c2a                	mv	s8,a0
   145c8:	18050363          	beqz	a0,1474e <__gdtoa+0x546>
   145cc:	85d2                	mv	a1,s4
   145ce:	4681                	li	a3,0
   145d0:	4629                	li	a2,10
   145d2:	8522                	mv	a0,s0
   145d4:	771000ef          	jal	15544 <__multadd>
   145d8:	8a2a                	mv	s4,a0
   145da:	16050a63          	beqz	a0,1474e <__gdtoa+0x546>
   145de:	56b6                	lw	a3,108(sp)
   145e0:	0685                	addi	a3,a3,1
   145e2:	85ea                	mv	a1,s10
   145e4:	8566                	mv	a0,s9
   145e6:	d6b6                	sw	a3,108(sp)
   145e8:	4ab000ef          	jal	15292 <__quorem_D2A>
   145ec:	84aa                	mv	s1,a0
   145ee:	85e2                	mv	a1,s8
   145f0:	8566                	mv	a0,s9
   145f2:	5b6010ef          	jal	15ba8 <__mcmp>
   145f6:	85ea                	mv	a1,s10
   145f8:	8aaa                	mv	s5,a0
   145fa:	8652                	mv	a2,s4
   145fc:	8522                	mv	a0,s0
   145fe:	5e6010ef          	jal	15be4 <__mdiff>
   14602:	03048b93          	addi	s7,s1,48
   14606:	85aa                	mv	a1,a0
   14608:	14050363          	beqz	a0,1474e <__gdtoa+0x546>
   1460c:	455c                	lw	a5,12(a0)
   1460e:	f3bd                	bnez	a5,14574 <__gdtoa+0x36c>
   14610:	c82a                	sw	a0,16(sp)
   14612:	8566                	mv	a0,s9
   14614:	594010ef          	jal	15ba8 <__mcmp>
   14618:	45c2                	lw	a1,16(sp)
   1461a:	86aa                	mv	a3,a0
   1461c:	8522                	mv	a0,s0
   1461e:	c836                	sw	a3,16(sp)
   14620:	713000ef          	jal	15532 <_Bfree>
   14624:	46c2                	lw	a3,16(sp)
   14626:	00d96733          	or	a4,s2,a3
   1462a:	340711e3          	bnez	a4,1516c <__gdtoa+0xf64>
   1462e:	0009a783          	lw	a5,0(s3)
   14632:	8b85                	andi	a5,a5,1
   14634:	42079863          	bnez	a5,14a64 <__gdtoa+0x85c>
   14638:	5782                	lw	a5,32(sp)
   1463a:	280787e3          	beqz	a5,150c8 <__gdtoa+0xec0>
   1463e:	f5504de3          	bgtz	s5,14598 <__gdtoa+0x390>
   14642:	010ca603          	lw	a2,16(s9)
   14646:	4685                	li	a3,1
   14648:	835e                	mv	t1,s7
   1464a:	58a2                	lw	a7,40(sp)
   1464c:	4be2                	lw	s7,24(sp)
   1464e:	54b2                	lw	s1,44(sp)
   14650:	8b3a                	mv	s6,a4
   14652:	2ec6dae3          	bge	a3,a2,15146 <__gdtoa+0xf3e>
   14656:	5782                	lw	a5,32(sp)
   14658:	4689                	li	a3,2
   1465a:	8a9a                	mv	s5,t1
   1465c:	8b46                	mv	s6,a7
   1465e:	02d79063          	bne	a5,a3,1467e <__gdtoa+0x476>
   14662:	2cb0006f          	j	1512c <__gdtoa+0xf24>
   14666:	6df000ef          	jal	15544 <__multadd>
   1466a:	85ea                	mv	a1,s10
   1466c:	8caa                	mv	s9,a0
   1466e:	0e050063          	beqz	a0,1474e <__gdtoa+0x546>
   14672:	421000ef          	jal	15292 <__quorem_D2A>
   14676:	03050a93          	addi	s5,a0,48
   1467a:	8dca                	mv	s11,s2
   1467c:	8a4e                	mv	s4,s3
   1467e:	85d2                	mv	a1,s4
   14680:	856a                	mv	a0,s10
   14682:	526010ef          	jal	15ba8 <__mcmp>
   14686:	87aa                	mv	a5,a0
   14688:	4681                	li	a3,0
   1468a:	4629                	li	a2,10
   1468c:	85d2                	mv	a1,s4
   1468e:	8522                	mv	a0,s0
   14690:	001d8913          	addi	s2,s11,1
   14694:	28f052e3          	blez	a5,15118 <__gdtoa+0xf10>
   14698:	ff590fa3          	sb	s5,-1(s2)
   1469c:	6a9000ef          	jal	15544 <__multadd>
   146a0:	89aa                	mv	s3,a0
   146a2:	4681                	li	a3,0
   146a4:	4629                	li	a2,10
   146a6:	85e6                	mv	a1,s9
   146a8:	8522                	mv	a0,s0
   146aa:	0a098263          	beqz	s3,1474e <__gdtoa+0x546>
   146ae:	fb4c1ce3          	bne	s8,s4,14666 <__gdtoa+0x45e>
   146b2:	8c4e                	mv	s8,s3
   146b4:	bf4d                	j	14666 <__gdtoa+0x45e>
   146b6:	4791                	li	a5,4
   146b8:	0afe1363          	bne	t3,a5,1475e <__gdtoa+0x556>
   146bc:	4632                	lw	a2,12(sp)
   146be:	4b4a                	lw	s6,144(sp)
   146c0:	50ba                	lw	ra,172(sp)
   146c2:	549a                	lw	s1,164(sp)
   146c4:	4ada                	lw	s5,148(sp)
   146c6:	4bba                	lw	s7,140(sp)
   146c8:	77e1                	lui	a5,0xffff8
   146ca:	00f8a023          	sw	a5,0(a7)
   146ce:	65e9                	lui	a1,0x1a
   146d0:	468d                	li	a3,3
   146d2:	23858593          	addi	a1,a1,568 # 1a238 <__clzsi2+0x118>
   146d6:	614d                	addi	sp,sp,176
   146d8:	33b0006f          	j	15212 <__nrv_alloc_D2A>
   146dc:	85e6                	mv	a1,s9
   146de:	8522                	mv	a0,s0
   146e0:	653000ef          	jal	15532 <_Bfree>
   146e4:	590a                	lw	s2,160(sp)
   146e6:	49fa                	lw	s3,156(sp)
   146e8:	4a6a                	lw	s4,152(sp)
   146ea:	4c2a                	lw	s8,136(sp)
   146ec:	4c9a                	lw	s9,132(sp)
   146ee:	4d0a                	lw	s10,128(sp)
   146f0:	5df6                	lw	s11,124(sp)
   146f2:	4632                	lw	a2,12(sp)
   146f4:	4785                	li	a5,1
   146f6:	65e9                	lui	a1,0x1a
   146f8:	8522                	mv	a0,s0
   146fa:	c09c                	sw	a5,0(s1)
   146fc:	4685                	li	a3,1
   146fe:	22858593          	addi	a1,a1,552 # 1a228 <__clzsi2+0x108>
   14702:	311000ef          	jal	15212 <__nrv_alloc_D2A>
   14706:	542a                	lw	s0,168(sp)
   14708:	88aa                	mv	a7,a0
   1470a:	50ba                	lw	ra,172(sp)
   1470c:	4b4a                	lw	s6,144(sp)
   1470e:	549a                	lw	s1,164(sp)
   14710:	4ada                	lw	s5,148(sp)
   14712:	4bba                	lw	s7,140(sp)
   14714:	8546                	mv	a0,a7
   14716:	614d                	addi	sp,sp,176
   14718:	8082                	ret
   1471a:	4632                	lw	a2,12(sp)
   1471c:	50ba                	lw	ra,172(sp)
   1471e:	549a                	lw	s1,164(sp)
   14720:	4ada                	lw	s5,148(sp)
   14722:	4bba                	lw	s7,140(sp)
   14724:	77e1                	lui	a5,0xffff8
   14726:	00f8a023          	sw	a5,0(a7)
   1472a:	65e9                	lui	a1,0x1a
   1472c:	46a1                	li	a3,8
   1472e:	22c58593          	addi	a1,a1,556 # 1a22c <__clzsi2+0x10c>
   14732:	614d                	addi	sp,sp,176
   14734:	2df0006f          	j	15212 <__nrv_alloc_D2A>
   14738:	85ea                	mv	a1,s10
   1473a:	8522                	mv	a0,s0
   1473c:	cc46                	sw	a7,24(sp)
   1473e:	c842                	sw	a6,16(sp)
   14740:	35a010ef          	jal	15a9a <__lshift>
   14744:	4842                	lw	a6,16(sp)
   14746:	48e2                	lw	a7,24(sp)
   14748:	8d2a                	mv	s10,a0
   1474a:	de051de3          	bnez	a0,14544 <__gdtoa+0x33c>
   1474e:	542a                	lw	s0,168(sp)
   14750:	590a                	lw	s2,160(sp)
   14752:	49fa                	lw	s3,156(sp)
   14754:	4a6a                	lw	s4,152(sp)
   14756:	4c2a                	lw	s8,136(sp)
   14758:	4c9a                	lw	s9,132(sp)
   1475a:	4d0a                	lw	s10,128(sp)
   1475c:	5df6                	lw	s11,124(sp)
   1475e:	4881                	li	a7,0
   14760:	b76d                	j	1470a <__gdtoa+0x502>
   14762:	000ca823          	sw	zero,16(s9)
   14766:	beb5                	j	142e2 <__gdtoa+0xda>
   14768:	4785                	li	a5,1
   1476a:	cabe                	sw	a5,84(sp)
   1476c:	cc02                	sw	zero,24(sp)
   1476e:	1a0ec163          	bltz	t4,14910 <__gdtoa+0x708>
   14772:	c40859e3          	bgez	a6,143c4 <__gdtoa+0x1bc>
   14776:	47e2                	lw	a5,24(sp)
   14778:	da42                	sw	a6,52(sp)
   1477a:	410787b3          	sub	a5,a5,a6
   1477e:	cc3e                	sw	a5,24(sp)
   14780:	410007b3          	neg	a5,a6
   14784:	d83e                	sw	a5,48(sp)
   14786:	4801                	li	a6,0
   14788:	b189                	j	143ca <__gdtoa+0x1c2>
   1478a:	85aa                	mv	a1,a0
   1478c:	8566                	mv	a0,s9
   1478e:	45b000ef          	jal	153e8 <__rshift_D2A>
   14792:	5636                	lw	a2,108(sp)
   14794:	47c2                	lw	a5,16(sp)
   14796:	40cd8db3          	sub	s11,s11,a2
   1479a:	00f60c33          	add	s8,a2,a5
   1479e:	be89                	j	142f0 <__gdtoa+0xe8>
   147a0:	3fd88893          	addi	a7,a7,1021
   147a4:	7f88b793          	sltiu	a5,a7,2040
   147a8:	ccbe                	sw	a5,88(sp)
   147aa:	4901                	li	s2,0
   147ac:	ed01b707          	fld	fa4,-304(gp) # 1b6e0 <__SDATA_BEGIN__+0x28>
   147b0:	d20d07d3          	fcvt.d.w	fa5,s10
   147b4:	4785                	li	a5,1
   147b6:	c8be                	sw	a5,80(sp)
   147b8:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   147bc:	57fd                	li	a5,-1
   147be:	d402                	sw	zero,40(sp)
   147c0:	cebe                	sw	a5,92(sp)
   147c2:	d63e                	sw	a5,44(sp)
   147c4:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   147c8:	058d                	addi	a1,a1,3
   147ca:	862e                	mv	a2,a1
   147cc:	b181                	j	1440c <__gdtoa+0x204>
   147ce:	5782                	lw	a5,32(sp)
   147d0:	460d                	li	a2,3
   147d2:	40f607b3          	sub	a5,a2,a5
   147d6:	d03e                	sw	a5,32(sp)
   147d8:	57b2                	lw	a5,44(sp)
   147da:	4639                	li	a2,14
   147dc:	c6f663e3          	bltu	a2,a5,14442 <__gdtoa+0x23a>
   147e0:	4766                	lw	a4,88(sp)
   147e2:	c60700e3          	beqz	a4,14442 <__gdtoa+0x23a>
   147e6:	5752                	lw	a4,52(sp)
   147e8:	5682                	lw	a3,32(sp)
   147ea:	00d76633          	or	a2,a4,a3
   147ee:	c4061ae3          	bnez	a2,14442 <__gdtoa+0x23a>
   147f2:	4756                	lw	a4,84(sp)
   147f4:	d682                	sw	zero,108(sp)
   147f6:	d07a                	sw	t5,32(sp)
   147f8:	d27e                	sw	t6,36(sp)
   147fa:	cb11                	beqz	a4,1480e <__gdtoa+0x606>
   147fc:	dc7a                	sw	t5,56(sp)
   147fe:	de7e                	sw	t6,60(sp)
   14800:	ed81b787          	fld	fa5,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   14804:	3762                	fld	fa4,56(sp)
   14806:	a2f71653          	flt.d	a2,fa4,fa5
   1480a:	7a061163          	bnez	a2,14fac <__gdtoa+0xda4>
   1480e:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   14812:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14816:	3682                	fld	fa3,32(sp)
   14818:	57b2                	lw	a5,44(sp)
   1481a:	fcc00637          	lui	a2,0xfcc00
   1481e:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14822:	bc3e                	fsd	fa5,56(sp)
   14824:	5562                	lw	a0,56(sp)
   14826:	55f2                	lw	a1,60(sp)
   14828:	832a                	mv	t1,a0
   1482a:	962e                	add	a2,a2,a1
   1482c:	5c078063          	beqz	a5,14dec <__gdtoa+0xbe4>
   14830:	3782                	fld	fa5,32(sp)
   14832:	5532                	lw	a0,44(sp)
   14834:	4381                	li	t2,0
   14836:	bc3e                	fsd	fa5,56(sp)
   14838:	65e9                	lui	a1,0x1a
   1483a:	fff50793          	addi	a5,a0,-1
   1483e:	078e                	slli	a5,a5,0x3
   14840:	71058293          	addi	t0,a1,1808 # 1a710 <__mprec_tens>
   14844:	005786b3          	add	a3,a5,t0
   14848:	229c                	fld	fa5,0(a3)
   1484a:	46c6                	lw	a3,80(sp)
   1484c:	871a                	mv	a4,t1
   1484e:	87b2                	mv	a5,a2
   14850:	6c068163          	beqz	a3,14f12 <__gdtoa+0xd0a>
   14854:	3762                	fld	fa4,56(sp)
   14856:	36e2                	fld	fa3,56(sp)
   14858:	c2071353          	fcvt.w.d	t1,fa4,rtz
   1485c:	f081b707          	fld	fa4,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   14860:	dc3a                	sw	a4,56(sp)
   14862:	de3e                	sw	a5,60(sp)
   14864:	1af77753          	fdiv.d	fa4,fa4,fa5
   14868:	d20307d3          	fcvt.d.w	fa5,t1
   1486c:	03030313          	addi	t1,t1,48
   14870:	00688023          	sb	t1,0(a7)
   14874:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   14878:	36e2                	fld	fa3,56(sp)
   1487a:	00188613          	addi	a2,a7,1
   1487e:	0ad77753          	fsub.d	fa4,fa4,fa3
   14882:	a2e79353          	flt.d	t1,fa5,fa4
   14886:	7c031e63          	bnez	t1,15062 <__gdtoa+0xe5a>
   1488a:	ed81b587          	fld	fa1,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   1488e:	ee01b607          	fld	fa2,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14892:	a80d                	j	148c4 <__gdtoa+0x6bc>
   14894:	57b6                	lw	a5,108(sp)
   14896:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe45a5>
   14898:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffdc5a5>
   1489a:	d6be                	sw	a5,108(sp)
   1489c:	7ea7d163          	bge	a5,a0,1507e <__gdtoa+0xe76>
   148a0:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   148a4:	12c77753          	fmul.d	fa4,fa4,fa2
   148a8:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   148ac:	d20786d3          	fcvt.d.w	fa3,a5
   148b0:	03078793          	addi	a5,a5,48
   148b4:	fef60fa3          	sb	a5,-1(a2)
   148b8:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   148bc:	a2e797d3          	flt.d	a5,fa5,fa4
   148c0:	7a079163          	bnez	a5,15062 <__gdtoa+0xe5a>
   148c4:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   148c8:	a2e697d3          	flt.d	a5,fa3,fa4
   148cc:	d7e1                	beqz	a5,14894 <__gdtoa+0x68c>
   148ce:	fff64683          	lbu	a3,-1(a2)
   148d2:	00138513          	addi	a0,t2,1
   148d6:	03900593          	li	a1,57
   148da:	a031                	j	148e6 <__gdtoa+0x6de>
   148dc:	62f88763          	beq	a7,a5,14f0a <__gdtoa+0xd02>
   148e0:	fff7c683          	lbu	a3,-1(a5)
   148e4:	863e                	mv	a2,a5
   148e6:	fff60793          	addi	a5,a2,-1
   148ea:	feb689e3          	beq	a3,a1,148dc <__gdtoa+0x6d4>
   148ee:	0685                	addi	a3,a3,1
   148f0:	0ff6f693          	zext.b	a3,a3
   148f4:	00d78023          	sb	a3,0(a5)
   148f8:	892a                	mv	s2,a0
   148fa:	02000b13          	li	s6,32
   148fe:	a0e5                	j	149e6 <__gdtoa+0x7de>
   14900:	542a                	lw	s0,168(sp)
   14902:	590a                	lw	s2,160(sp)
   14904:	49fa                	lw	s3,156(sp)
   14906:	4a6a                	lw	s4,152(sp)
   14908:	4c9a                	lw	s9,132(sp)
   1490a:	4d0a                	lw	s10,128(sp)
   1490c:	4881                	li	a7,0
   1490e:	bbf5                	j	1470a <__gdtoa+0x502>
   14910:	4605                	li	a2,1
   14912:	40a607b3          	sub	a5,a2,a0
   14916:	cc3e                	sw	a5,24(sp)
   14918:	4e81                	li	t4,0
   1491a:	e4084ee3          	bltz	a6,14776 <__gdtoa+0x56e>
   1491e:	b45d                	j	143c4 <__gdtoa+0x1bc>
   14920:	47e2                	lw	a5,24(sp)
   14922:	5d42                	lw	s10,48(sp)
   14924:	4c01                	li	s8,0
   14926:	dc3e                	sw	a5,56(sp)
   14928:	b671                	j	144b4 <__gdtoa+0x2ac>
   1492a:	4789                	li	a5,2
   1492c:	d03e                	sw	a5,32(sp)
   1492e:	b631                	j	1443a <__gdtoa+0x232>
   14930:	187d                	addi	a6,a6,-1
   14932:	ca82                	sw	zero,84(sp)
   14934:	bd25                	j	1476c <__gdtoa+0x564>
   14936:	1971                	addi	s2,s2,-4
   14938:	4591                	li	a1,4
   1493a:	10b90263          	beq	s2,a1,14a3e <__gdtoa+0x836>
   1493e:	42c90263          	beq	s2,a2,14d62 <__gdtoa+0xb5a>
   14942:	4609                	li	a2,2
   14944:	cc82                	sw	zero,88(sp)
   14946:	c882                	sw	zero,80(sp)
   14948:	0ec90e63          	beq	s2,a2,14a44 <__gdtoa+0x83c>
   1494c:	490d                	li	s2,3
   1494e:	b46d                	j	143f8 <__gdtoa+0x1f0>
   14950:	66e9                	lui	a3,0x1a
   14952:	078e                	slli	a5,a5,0x3
   14954:	71068693          	addi	a3,a3,1808 # 1a710 <__mprec_tens>
   14958:	97b6                	add	a5,a5,a3
   1495a:	2398                	fld	fa4,0(a5)
   1495c:	57a2                	lw	a5,40(sp)
   1495e:	3207c263          	bltz	a5,14c82 <__gdtoa+0xa7a>
   14962:	c87a                	sw	t5,16(sp)
   14964:	ca7e                	sw	t6,20(sp)
   14966:	27c2                	fld	fa5,16(sp)
   14968:	4785                	li	a5,1
   1496a:	d6be                	sw	a5,108(sp)
   1496c:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   14970:	57d2                	lw	a5,52(sp)
   14972:	26c2                	fld	fa3,16(sp)
   14974:	00188613          	addi	a2,a7,1
   14978:	00178513          	addi	a0,a5,1
   1497c:	892a                	mv	s2,a0
   1497e:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14982:	d20787d3          	fcvt.d.w	fa5,a5
   14986:	03078693          	addi	a3,a5,48
   1498a:	00d88023          	sb	a3,0(a7)
   1498e:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   14992:	d20006d3          	fcvt.d.w	fa3,zero
   14996:	a2d7a6d3          	feq.d	a3,fa5,fa3
   1499a:	e6b1                	bnez	a3,149e6 <__gdtoa+0x7de>
   1499c:	ee01b587          	fld	fa1,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   149a0:	22d68653          	fmv.d	fa2,fa3
   149a4:	55b2                	lw	a1,44(sp)
   149a6:	a025                	j	149ce <__gdtoa+0x7c6>
   149a8:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   149ac:	d6b6                	sw	a3,108(sp)
   149ae:	0605                	addi	a2,a2,1
   149b0:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   149b4:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   149b8:	d20786d3          	fcvt.d.w	fa3,a5
   149bc:	03078713          	addi	a4,a5,48
   149c0:	fee60fa3          	sb	a4,-1(a2)
   149c4:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   149c8:	a2c7a753          	feq.d	a4,fa5,fa2
   149cc:	ef09                	bnez	a4,149e6 <__gdtoa+0x7de>
   149ce:	5736                	lw	a4,108(sp)
   149d0:	00170693          	addi	a3,a4,1
   149d4:	fcb71ae3          	bne	a4,a1,149a8 <__gdtoa+0x7a0>
   149d8:	5702                	lw	a4,32(sp)
   149da:	4e070e63          	beqz	a4,14ed6 <__gdtoa+0xcce>
   149de:	4785                	li	a5,1
   149e0:	4b41                	li	s6,16
   149e2:	60f70263          	beq	a4,a5,14fe6 <__gdtoa+0xdde>
   149e6:	85e6                	mv	a1,s9
   149e8:	8522                	mv	a0,s0
   149ea:	d446                	sw	a7,40(sp)
   149ec:	c832                	sw	a2,16(sp)
   149ee:	345000ef          	jal	15532 <_Bfree>
   149f2:	4642                	lw	a2,16(sp)
   149f4:	47b2                	lw	a5,12(sp)
   149f6:	58a2                	lw	a7,40(sp)
   149f8:	00060023          	sb	zero,0(a2)
   149fc:	0124a023          	sw	s2,0(s1)
   14a00:	c391                	beqz	a5,14a04 <__gdtoa+0x7fc>
   14a02:	c390                	sw	a2,0(a5)
   14a04:	000ba783          	lw	a5,0(s7)
   14a08:	542a                	lw	s0,168(sp)
   14a0a:	590a                	lw	s2,160(sp)
   14a0c:	0167e7b3          	or	a5,a5,s6
   14a10:	49fa                	lw	s3,156(sp)
   14a12:	4a6a                	lw	s4,152(sp)
   14a14:	4c2a                	lw	s8,136(sp)
   14a16:	4c9a                	lw	s9,132(sp)
   14a18:	4d0a                	lw	s10,128(sp)
   14a1a:	5df6                	lw	s11,124(sp)
   14a1c:	00fba023          	sw	a5,0(s7)
   14a20:	b1ed                	j	1470a <__gdtoa+0x502>
   14a22:	b0dd90e3          	bne	s11,a3,14522 <__gdtoa+0x31a>
   14a26:	004a2783          	lw	a5,4(s4)
   14a2a:	4742                	lw	a4,16(sp)
   14a2c:	0785                	addi	a5,a5,1
   14a2e:	aee7dae3          	bge	a5,a4,14522 <__gdtoa+0x31a>
   14a32:	47e2                	lw	a5,24(sp)
   14a34:	0e85                	addi	t4,t4,1
   14a36:	4805                	li	a6,1
   14a38:	0785                	addi	a5,a5,1
   14a3a:	cc3e                	sw	a5,24(sp)
   14a3c:	b4dd                	j	14522 <__gdtoa+0x31a>
   14a3e:	4785                	li	a5,1
   14a40:	cc82                	sw	zero,88(sp)
   14a42:	c8be                	sw	a5,80(sp)
   14a44:	55a2                	lw	a1,40(sp)
   14a46:	00b04363          	bgtz	a1,14a4c <__gdtoa+0x844>
   14a4a:	4585                	li	a1,1
   14a4c:	862e                	mv	a2,a1
   14a4e:	ceae                	sw	a1,92(sp)
   14a50:	d62e                	sw	a1,44(sp)
   14a52:	d42e                	sw	a1,40(sp)
   14a54:	ba65                	j	1440c <__gdtoa+0x204>
   14a56:	2ef000ef          	jal	15544 <__multadd>
   14a5a:	8c2a                	mv	s8,a0
   14a5c:	ce0509e3          	beqz	a0,1474e <__gdtoa+0x546>
   14a60:	8a2a                	mv	s4,a0
   14a62:	beb5                	j	145de <__gdtoa+0x3d6>
   14a64:	b20adae3          	bgez	s5,14598 <__gdtoa+0x390>
   14a68:	5782                	lw	a5,32(sp)
   14a6a:	835e                	mv	t1,s7
   14a6c:	58a2                	lw	a7,40(sp)
   14a6e:	4be2                	lw	s7,24(sp)
   14a70:	54b2                	lw	s1,44(sp)
   14a72:	8b3a                	mv	s6,a4
   14a74:	6c079463          	bnez	a5,1513c <__gdtoa+0xf34>
   14a78:	010ca603          	lw	a2,16(s9)
   14a7c:	4685                	li	a3,1
   14a7e:	4b41                	li	s6,16
   14a80:	001d8913          	addi	s2,s11,1
   14a84:	68c6d463          	bge	a3,a2,1510c <__gdtoa+0xf04>
   14a88:	89e2                	mv	s3,s8
   14a8a:	864a                	mv	a2,s2
   14a8c:	006d8023          	sb	t1,0(s11)
   14a90:	8c52                	mv	s8,s4
   14a92:	85ea                	mv	a1,s10
   14a94:	8522                	mv	a0,s0
   14a96:	d446                	sw	a7,40(sp)
   14a98:	c832                	sw	a2,16(sp)
   14a9a:	299000ef          	jal	15532 <_Bfree>
   14a9e:	57d2                	lw	a5,52(sp)
   14aa0:	4642                	lw	a2,16(sp)
   14aa2:	58a2                	lw	a7,40(sp)
   14aa4:	00178913          	addi	s2,a5,1
   14aa8:	f20c0fe3          	beqz	s8,149e6 <__gdtoa+0x7de>
   14aac:	00098a63          	beqz	s3,14ac0 <__gdtoa+0x8b8>
   14ab0:	01898863          	beq	s3,s8,14ac0 <__gdtoa+0x8b8>
   14ab4:	85ce                	mv	a1,s3
   14ab6:	8522                	mv	a0,s0
   14ab8:	27b000ef          	jal	15532 <_Bfree>
   14abc:	58a2                	lw	a7,40(sp)
   14abe:	4642                	lw	a2,16(sp)
   14ac0:	85e2                	mv	a1,s8
   14ac2:	8522                	mv	a0,s0
   14ac4:	d446                	sw	a7,40(sp)
   14ac6:	c832                	sw	a2,16(sp)
   14ac8:	26b000ef          	jal	15532 <_Bfree>
   14acc:	58a2                	lw	a7,40(sp)
   14ace:	4642                	lw	a2,16(sp)
   14ad0:	bf19                	j	149e6 <__gdtoa+0x7de>
   14ad2:	85e6                	mv	a1,s9
   14ad4:	8522                	mv	a0,s0
   14ad6:	d846                	sw	a7,48(sp)
   14ad8:	cc76                	sw	t4,24(sp)
   14ada:	c842                	sw	a6,16(sp)
   14adc:	7bf000ef          	jal	15a9a <__lshift>
   14ae0:	8caa                	mv	s9,a0
   14ae2:	c60506e3          	beqz	a0,1474e <__gdtoa+0x546>
   14ae6:	57b6                	lw	a5,108(sp)
   14ae8:	58c2                	lw	a7,48(sp)
   14aea:	4ee2                	lw	t4,24(sp)
   14aec:	4842                	lw	a6,16(sp)
   14aee:	b4b9                	j	1453c <__gdtoa+0x334>
   14af0:	85ea                	mv	a1,s10
   14af2:	8566                	mv	a0,s9
   14af4:	cc46                	sw	a7,24(sp)
   14af6:	c842                	sw	a6,16(sp)
   14af8:	0b0010ef          	jal	15ba8 <__mcmp>
   14afc:	4842                	lw	a6,16(sp)
   14afe:	48e2                	lw	a7,24(sp)
   14b00:	a40555e3          	bgez	a0,1454a <__gdtoa+0x342>
   14b04:	57d2                	lw	a5,52(sp)
   14b06:	85e6                	mv	a1,s9
   14b08:	4681                	li	a3,0
   14b0a:	17fd                	addi	a5,a5,-1
   14b0c:	4629                	li	a2,10
   14b0e:	8522                	mv	a0,s0
   14b10:	da3e                	sw	a5,52(sp)
   14b12:	233000ef          	jal	15544 <__multadd>
   14b16:	8caa                	mv	s9,a0
   14b18:	c2050be3          	beqz	a0,1474e <__gdtoa+0x546>
   14b1c:	47c6                	lw	a5,80(sp)
   14b1e:	48e2                	lw	a7,24(sp)
   14b20:	50079a63          	bnez	a5,15034 <__gdtoa+0xe2c>
   14b24:	47f6                	lw	a5,92(sp)
   14b26:	14f05863          	blez	a5,14c76 <__gdtoa+0xa6e>
   14b2a:	d63e                	sw	a5,44(sp)
   14b2c:	5932                	lw	s2,44(sp)
   14b2e:	8dc6                	mv	s11,a7
   14b30:	4685                	li	a3,1
   14b32:	89c6                	mv	s3,a7
   14b34:	a801                	j	14b44 <__gdtoa+0x93c>
   14b36:	20f000ef          	jal	15544 <__multadd>
   14b3a:	8caa                	mv	s9,a0
   14b3c:	c00509e3          	beqz	a0,1474e <__gdtoa+0x546>
   14b40:	56b6                	lw	a3,108(sp)
   14b42:	0685                	addi	a3,a3,1
   14b44:	85ea                	mv	a1,s10
   14b46:	8566                	mv	a0,s9
   14b48:	d6b6                	sw	a3,108(sp)
   14b4a:	27a1                	jal	15292 <__quorem_D2A>
   14b4c:	03050313          	addi	t1,a0,48
   14b50:	006d8023          	sb	t1,0(s11)
   14b54:	57b6                	lw	a5,108(sp)
   14b56:	4681                	li	a3,0
   14b58:	4629                	li	a2,10
   14b5a:	85e6                	mv	a1,s9
   14b5c:	8522                	mv	a0,s0
   14b5e:	0d85                	addi	s11,s11,1
   14b60:	fd27cbe3          	blt	a5,s2,14b36 <__gdtoa+0x92e>
   14b64:	88ce                	mv	a7,s3
   14b66:	4981                	li	s3,0
   14b68:	5782                	lw	a5,32(sp)
   14b6a:	2c078263          	beqz	a5,14e2e <__gdtoa+0xc26>
   14b6e:	4689                	li	a3,2
   14b70:	010ca603          	lw	a2,16(s9)
   14b74:	2ed78363          	beq	a5,a3,14e5a <__gdtoa+0xc52>
   14b78:	4685                	li	a3,1
   14b7a:	1ac6c763          	blt	a3,a2,14d28 <__gdtoa+0xb20>
   14b7e:	014ca683          	lw	a3,20(s9)
   14b82:	1a069363          	bnez	a3,14d28 <__gdtoa+0xb20>
   14b86:	00d036b3          	snez	a3,a3
   14b8a:	00469b13          	slli	s6,a3,0x4
   14b8e:	03000593          	li	a1,48
   14b92:	fffdc783          	lbu	a5,-1(s11)
   14b96:	866e                	mv	a2,s11
   14b98:	1dfd                	addi	s11,s11,-1
   14b9a:	feb78ce3          	beq	a5,a1,14b92 <__gdtoa+0x98a>
   14b9e:	bdd5                	j	14a92 <__gdtoa+0x88a>
   14ba0:	57b2                	lw	a5,44(sp)
   14ba2:	5742                	lw	a4,48(sp)
   14ba4:	fff78693          	addi	a3,a5,-1
   14ba8:	10d74463          	blt	a4,a3,14cb0 <__gdtoa+0xaa8>
   14bac:	40d70d33          	sub	s10,a4,a3
   14bb0:	4407d263          	bgez	a5,14ff4 <__gdtoa+0xdec>
   14bb4:	47e2                	lw	a5,24(sp)
   14bb6:	5732                	lw	a4,44(sp)
   14bb8:	d682                	sw	zero,108(sp)
   14bba:	8f99                	sub	a5,a5,a4
   14bbc:	dc3e                	sw	a5,56(sp)
   14bbe:	b8f1                	j	1449a <__gdtoa+0x292>
   14bc0:	4789                	li	a5,2
   14bc2:	9927d7e3          	bge	a5,s2,14550 <__gdtoa+0x348>
   14bc6:	85ea                	mv	a1,s10
   14bc8:	4681                	li	a3,0
   14bca:	4615                	li	a2,5
   14bcc:	8522                	mv	a0,s0
   14bce:	c846                	sw	a7,16(sp)
   14bd0:	175000ef          	jal	15544 <__multadd>
   14bd4:	85aa                	mv	a1,a0
   14bd6:	b6050ce3          	beqz	a0,1474e <__gdtoa+0x546>
   14bda:	57b2                	lw	a5,44(sp)
   14bdc:	48c2                	lw	a7,16(sp)
   14bde:	e3f9                	bnez	a5,14ca4 <__gdtoa+0xa9c>
   14be0:	c82a                	sw	a0,16(sp)
   14be2:	8566                	mv	a0,s9
   14be4:	cc46                	sw	a7,24(sp)
   14be6:	7c3000ef          	jal	15ba8 <__mcmp>
   14bea:	45c2                	lw	a1,16(sp)
   14bec:	48e2                	lw	a7,24(sp)
   14bee:	0aa05b63          	blez	a0,14ca4 <__gdtoa+0xa9c>
   14bf2:	57d2                	lw	a5,52(sp)
   14bf4:	00278913          	addi	s2,a5,2
   14bf8:	03100793          	li	a5,49
   14bfc:	00188613          	addi	a2,a7,1
   14c00:	00f88023          	sb	a5,0(a7)
   14c04:	02000b13          	li	s6,32
   14c08:	8522                	mv	a0,s0
   14c0a:	d446                	sw	a7,40(sp)
   14c0c:	c832                	sw	a2,16(sp)
   14c0e:	125000ef          	jal	15532 <_Bfree>
   14c12:	4642                	lw	a2,16(sp)
   14c14:	58a2                	lw	a7,40(sp)
   14c16:	dc0c08e3          	beqz	s8,149e6 <__gdtoa+0x7de>
   14c1a:	b55d                	j	14ac0 <__gdtoa+0x8b8>
   14c1c:	4605                	li	a2,1
   14c1e:	4585                	li	a1,1
   14c20:	fecff06f          	j	1440c <__gdtoa+0x204>
   14c24:	85aa                	mv	a1,a0
   14c26:	8642                	mv	a2,a6
   14c28:	8522                	mv	a0,s0
   14c2a:	c0c6                	sw	a7,64(sp)
   14c2c:	d876                	sw	t4,48(sp)
   14c2e:	599000ef          	jal	159c6 <__pow5mult>
   14c32:	8d2a                	mv	s10,a0
   14c34:	b0050de3          	beqz	a0,1474e <__gdtoa+0x546>
   14c38:	4685                	li	a3,1
   14c3a:	5ec2                	lw	t4,48(sp)
   14c3c:	4886                	lw	a7,64(sp)
   14c3e:	1526d063          	bge	a3,s2,14d7e <__gdtoa+0xb76>
   14c42:	010d2783          	lw	a5,16(s10)
   14c46:	d846                	sw	a7,48(sp)
   14c48:	c876                	sw	t4,16(sp)
   14c4a:	078d                	addi	a5,a5,3
   14c4c:	078a                	slli	a5,a5,0x2
   14c4e:	97ea                	add	a5,a5,s10
   14c50:	43c8                	lw	a0,4(a5)
   14c52:	299000ef          	jal	156ea <__hi0bits>
   14c56:	58c2                	lw	a7,48(sp)
   14c58:	4ec2                	lw	t4,16(sp)
   14c5a:	8a2a                	mv	s4,a0
   14c5c:	885a                	mv	a6,s6
   14c5e:	b0d9                	j	14524 <__gdtoa+0x31c>
   14c60:	4685                	li	a3,1
   14c62:	f326cfe3          	blt	a3,s2,14ba0 <__gdtoa+0x998>
   14c66:	47e2                	lw	a5,24(sp)
   14c68:	5d42                	lw	s10,48(sp)
   14c6a:	9eae                	add	t4,t4,a1
   14c6c:	dc3e                	sw	a5,56(sp)
   14c6e:	97ae                	add	a5,a5,a1
   14c70:	cc3e                	sw	a5,24(sp)
   14c72:	829ff06f          	j	1449a <__gdtoa+0x292>
   14c76:	4789                	li	a5,2
   14c78:	4727ce63          	blt	a5,s2,150f4 <__gdtoa+0xeec>
   14c7c:	47f6                	lw	a5,92(sp)
   14c7e:	d63e                	sw	a5,44(sp)
   14c80:	b575                	j	14b2c <__gdtoa+0x924>
   14c82:	57b2                	lw	a5,44(sp)
   14c84:	ccf04fe3          	bgtz	a5,14962 <__gdtoa+0x75a>
   14c88:	ef81                	bnez	a5,14ca0 <__gdtoa+0xa98>
   14c8a:	f001b787          	fld	fa5,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   14c8e:	c87a                	sw	t5,16(sp)
   14c90:	ca7e                	sw	t6,20(sp)
   14c92:	12f77753          	fmul.d	fa4,fa4,fa5
   14c96:	27c2                	fld	fa5,16(sp)
   14c98:	a2e787d3          	fle.d	a5,fa5,fa4
   14c9c:	38078663          	beqz	a5,15028 <__gdtoa+0xe20>
   14ca0:	4581                	li	a1,0
   14ca2:	4c01                	li	s8,0
   14ca4:	57a2                	lw	a5,40(sp)
   14ca6:	8646                	mv	a2,a7
   14ca8:	4b41                	li	s6,16
   14caa:	40f00933          	neg	s2,a5
   14cae:	bfa9                	j	14c08 <__gdtoa+0xa00>
   14cb0:	57c2                	lw	a5,48(sp)
   14cb2:	4762                	lw	a4,24(sp)
   14cb4:	4d01                	li	s10,0
   14cb6:	40f68633          	sub	a2,a3,a5
   14cba:	57b2                	lw	a5,44(sp)
   14cbc:	dc3a                	sw	a4,56(sp)
   14cbe:	9832                	add	a6,a6,a2
   14cc0:	d6be                	sw	a5,108(sp)
   14cc2:	9ebe                	add	t4,t4,a5
   14cc4:	97ba                	add	a5,a5,a4
   14cc6:	cc3e                	sw	a5,24(sp)
   14cc8:	d836                	sw	a3,48(sp)
   14cca:	fd0ff06f          	j	1449a <__gdtoa+0x292>
   14cce:	85e2                	mv	a1,s8
   14cd0:	866a                	mv	a2,s10
   14cd2:	8522                	mv	a0,s0
   14cd4:	ccc6                	sw	a7,88(sp)
   14cd6:	c4f6                	sw	t4,72(sp)
   14cd8:	c0c2                	sw	a6,64(sp)
   14cda:	4ed000ef          	jal	159c6 <__pow5mult>
   14cde:	8c2a                	mv	s8,a0
   14ce0:	a60507e3          	beqz	a0,1474e <__gdtoa+0x546>
   14ce4:	85aa                	mv	a1,a0
   14ce6:	8666                	mv	a2,s9
   14ce8:	8522                	mv	a0,s0
   14cea:	347000ef          	jal	15830 <__multiply>
   14cee:	8aaa                	mv	s5,a0
   14cf0:	a4050fe3          	beqz	a0,1474e <__gdtoa+0x546>
   14cf4:	85e6                	mv	a1,s9
   14cf6:	8522                	mv	a0,s0
   14cf8:	03b000ef          	jal	15532 <_Bfree>
   14cfc:	57c2                	lw	a5,48(sp)
   14cfe:	4806                	lw	a6,64(sp)
   14d00:	4ea6                	lw	t4,72(sp)
   14d02:	41a787b3          	sub	a5,a5,s10
   14d06:	d83e                	sw	a5,48(sp)
   14d08:	48e6                	lw	a7,88(sp)
   14d0a:	8cd6                	mv	s9,s5
   14d0c:	fe078963          	beqz	a5,144fe <__gdtoa+0x2f6>
   14d10:	fd2ff06f          	j	144e2 <__gdtoa+0x2da>
   14d14:	89e2                	mv	s3,s8
   14d16:	86ee                	mv	a3,s11
   14d18:	001d8913          	addi	s2,s11,1
   14d1c:	8c52                	mv	s8,s4
   14d1e:	03900613          	li	a2,57
   14d22:	8dca                	mv	s11,s2
   14d24:	00c68023          	sb	a2,0(a3)
   14d28:	03900593          	li	a1,57
   14d2c:	a019                	j	14d32 <__gdtoa+0xb2a>
   14d2e:	13b88f63          	beq	a7,s11,14e6c <__gdtoa+0xc64>
   14d32:	fffdc683          	lbu	a3,-1(s11)
   14d36:	866e                	mv	a2,s11
   14d38:	1dfd                	addi	s11,s11,-1
   14d3a:	feb68ae3          	beq	a3,a1,14d2e <__gdtoa+0xb26>
   14d3e:	0685                	addi	a3,a3,1
   14d40:	00dd8023          	sb	a3,0(s11)
   14d44:	02000b13          	li	s6,32
   14d48:	b3a9                	j	14a92 <__gdtoa+0x88a>
   14d4a:	85e2                	mv	a1,s8
   14d4c:	8522                	mv	a0,s0
   14d4e:	d446                	sw	a7,40(sp)
   14d50:	c842                	sw	a6,16(sp)
   14d52:	549000ef          	jal	15a9a <__lshift>
   14d56:	4842                	lw	a6,16(sp)
   14d58:	58a2                	lw	a7,40(sp)
   14d5a:	8c2a                	mv	s8,a0
   14d5c:	800512e3          	bnez	a0,14560 <__gdtoa+0x358>
   14d60:	b2fd                	j	1474e <__gdtoa+0x546>
   14d62:	4785                	li	a5,1
   14d64:	cc82                	sw	zero,88(sp)
   14d66:	c8be                	sw	a5,80(sp)
   14d68:	e90ff06f          	j	143f8 <__gdtoa+0x1f0>
   14d6c:	4785                	li	a5,1
   14d6e:	c8be                	sw	a5,80(sp)
   14d70:	e88ff06f          	j	143f8 <__gdtoa+0x1f0>
   14d74:	4785                	li	a5,1
   14d76:	c8be                	sw	a5,80(sp)
   14d78:	b1f1                	j	14a44 <__gdtoa+0x83c>
   14d7a:	c882                	sw	zero,80(sp)
   14d7c:	b1e1                	j	14a44 <__gdtoa+0x83c>
   14d7e:	ecdd92e3          	bne	s11,a3,14c42 <__gdtoa+0xa3a>
   14d82:	004a2783          	lw	a5,4(s4)
   14d86:	4742                	lw	a4,16(sp)
   14d88:	0785                	addi	a5,a5,1
   14d8a:	eae7dce3          	bge	a5,a4,14c42 <__gdtoa+0xa3a>
   14d8e:	47e2                	lw	a5,24(sp)
   14d90:	0e85                	addi	t4,t4,1
   14d92:	4b05                	li	s6,1
   14d94:	0785                	addi	a5,a5,1
   14d96:	cc3e                	sw	a5,24(sp)
   14d98:	b56d                	j	14c42 <__gdtoa+0xa3a>
   14d9a:	004c2583          	lw	a1,4(s8)
   14d9e:	8522                	mv	a0,s0
   14da0:	c846                	sw	a7,16(sp)
   14da2:	2715                	jal	154c6 <_Balloc>
   14da4:	8a2a                	mv	s4,a0
   14da6:	9a0504e3          	beqz	a0,1474e <__gdtoa+0x546>
   14daa:	010c2603          	lw	a2,16(s8)
   14dae:	00cc0593          	addi	a1,s8,12
   14db2:	0531                	addi	a0,a0,12
   14db4:	0609                	addi	a2,a2,2
   14db6:	060a                	slli	a2,a2,0x2
   14db8:	f79fe0ef          	jal	13d30 <memcpy>
   14dbc:	85d2                	mv	a1,s4
   14dbe:	4605                	li	a2,1
   14dc0:	8522                	mv	a0,s0
   14dc2:	4d9000ef          	jal	15a9a <__lshift>
   14dc6:	48c2                	lw	a7,16(sp)
   14dc8:	8a2a                	mv	s4,a0
   14dca:	f8051e63          	bnez	a0,14566 <__gdtoa+0x35e>
   14dce:	b241                	j	1474e <__gdtoa+0x546>
   14dd0:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   14dd4:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14dd8:	3682                	fld	fa3,32(sp)
   14dda:	fcc00637          	lui	a2,0xfcc00
   14dde:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14de2:	bc3e                	fsd	fa5,56(sp)
   14de4:	5562                	lw	a0,56(sp)
   14de6:	55f2                	lw	a1,60(sp)
   14de8:	832a                	mv	t1,a0
   14dea:	962e                	add	a2,a2,a1
   14dec:	de32                	sw	a2,60(sp)
   14dee:	f001b707          	fld	fa4,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   14df2:	3782                	fld	fa5,32(sp)
   14df4:	dc1a                	sw	t1,56(sp)
   14df6:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14dfa:	37e2                	fld	fa5,56(sp)
   14dfc:	a2e79653          	flt.d	a2,fa5,fa4
   14e00:	1e061663          	bnez	a2,14fec <__gdtoa+0xde4>
   14e04:	22f797d3          	fneg.d	fa5,fa5
   14e08:	a2f71653          	flt.d	a2,fa4,fa5
   14e0c:	e8061ae3          	bnez	a2,14ca0 <__gdtoa+0xa98>
   14e10:	5f02                	lw	t5,32(sp)
   14e12:	5f92                	lw	t6,36(sp)
   14e14:	65e9                	lui	a1,0x1a
   14e16:	280c4b63          	bltz	s8,150ac <__gdtoa+0xea4>
   14e1a:	57a2                	lw	a5,40(sp)
   14e1c:	d002                	sw	zero,32(sp)
   14e1e:	7105b707          	fld	fa4,1808(a1) # 1a710 <__mprec_tens>
   14e22:	b407d0e3          	bgez	a5,14962 <__gdtoa+0x75a>
   14e26:	57b2                	lw	a5,44(sp)
   14e28:	b2079de3          	bnez	a5,14962 <__gdtoa+0x75a>
   14e2c:	bdb9                	j	14c8a <__gdtoa+0xa82>
   14e2e:	85e6                	mv	a1,s9
   14e30:	4605                	li	a2,1
   14e32:	8522                	mv	a0,s0
   14e34:	c846                	sw	a7,16(sp)
   14e36:	d41a                	sw	t1,40(sp)
   14e38:	463000ef          	jal	15a9a <__lshift>
   14e3c:	8caa                	mv	s9,a0
   14e3e:	900508e3          	beqz	a0,1474e <__gdtoa+0x546>
   14e42:	85ea                	mv	a1,s10
   14e44:	565000ef          	jal	15ba8 <__mcmp>
   14e48:	48c2                	lw	a7,16(sp)
   14e4a:	eca04fe3          	bgtz	a0,14d28 <__gdtoa+0xb20>
   14e4e:	e511                	bnez	a0,14e5a <__gdtoa+0xc52>
   14e50:	5322                	lw	t1,40(sp)
   14e52:	00137313          	andi	t1,t1,1
   14e56:	ec0319e3          	bnez	t1,14d28 <__gdtoa+0xb20>
   14e5a:	010ca603          	lw	a2,16(s9)
   14e5e:	4685                	li	a3,1
   14e60:	4b41                	li	s6,16
   14e62:	d2c6c6e3          	blt	a3,a2,14b8e <__gdtoa+0x986>
   14e66:	014ca683          	lw	a3,20(s9)
   14e6a:	bb31                	j	14b86 <__gdtoa+0x97e>
   14e6c:	57d2                	lw	a5,52(sp)
   14e6e:	02000b13          	li	s6,32
   14e72:	0785                	addi	a5,a5,1
   14e74:	da3e                	sw	a5,52(sp)
   14e76:	03100793          	li	a5,49
   14e7a:	00f88023          	sb	a5,0(a7)
   14e7e:	b911                	j	14a92 <__gdtoa+0x88a>
   14e80:	5782                	lw	a5,32(sp)
   14e82:	8926                	mv	s2,s1
   14e84:	835e                	mv	t1,s7
   14e86:	58a2                	lw	a7,40(sp)
   14e88:	4be2                	lw	s7,24(sp)
   14e8a:	54b2                	lw	s1,44(sp)
   14e8c:	cb91                	beqz	a5,14ea0 <__gdtoa+0xc98>
   14e8e:	010ca603          	lw	a2,16(s9)
   14e92:	4685                	li	a3,1
   14e94:	fcc6c163          	blt	a3,a2,14656 <__gdtoa+0x44e>
   14e98:	014ca683          	lw	a3,20(s9)
   14e9c:	fa069d63          	bnez	a3,14656 <__gdtoa+0x44e>
   14ea0:	85e6                	mv	a1,s9
   14ea2:	4605                	li	a2,1
   14ea4:	8522                	mv	a0,s0
   14ea6:	d446                	sw	a7,40(sp)
   14ea8:	c81a                	sw	t1,16(sp)
   14eaa:	3f1000ef          	jal	15a9a <__lshift>
   14eae:	8caa                	mv	s9,a0
   14eb0:	88050fe3          	beqz	a0,1474e <__gdtoa+0x546>
   14eb4:	85ea                	mv	a1,s10
   14eb6:	4f3000ef          	jal	15ba8 <__mcmp>
   14eba:	4342                	lw	t1,16(sp)
   14ebc:	58a2                	lw	a7,40(sp)
   14ebe:	22a05e63          	blez	a0,150fa <__gdtoa+0xef2>
   14ec2:	03900693          	li	a3,57
   14ec6:	e4d307e3          	beq	t1,a3,14d14 <__gdtoa+0xb0c>
   14eca:	02000793          	li	a5,32
   14ece:	03190313          	addi	t1,s2,49
   14ed2:	d03e                	sw	a5,32(sp)
   14ed4:	b655                	j	14a78 <__gdtoa+0x870>
   14ed6:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   14eda:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   14ede:	a2f715d3          	flt.d	a1,fa4,fa5
   14ee2:	9e059ae3          	bnez	a1,148d6 <__gdtoa+0x6ce>
   14ee6:	a2e7a5d3          	feq.d	a1,fa5,fa4
   14eea:	c581                	beqz	a1,14ef2 <__gdtoa+0xcea>
   14eec:	8b85                	andi	a5,a5,1
   14eee:	9e0794e3          	bnez	a5,148d6 <__gdtoa+0x6ce>
   14ef2:	87b2                	mv	a5,a2
   14ef4:	4b41                	li	s6,16
   14ef6:	03000593          	li	a1,48
   14efa:	fff7c703          	lbu	a4,-1(a5)
   14efe:	863e                	mv	a2,a5
   14f00:	17fd                	addi	a5,a5,-1
   14f02:	feb70ce3          	beq	a4,a1,14efa <__gdtoa+0xcf2>
   14f06:	892a                	mv	s2,a0
   14f08:	bcf9                	j	149e6 <__gdtoa+0x7de>
   14f0a:	03100693          	li	a3,49
   14f0e:	0505                	addi	a0,a0,1
   14f10:	b2d5                	j	148f4 <__gdtoa+0x6ec>
   14f12:	de32                	sw	a2,60(sp)
   14f14:	dc1a                	sw	t1,56(sp)
   14f16:	3762                	fld	fa4,56(sp)
   14f18:	de7e                	sw	t6,60(sp)
   14f1a:	dc7a                	sw	t5,56(sp)
   14f1c:	35e2                	fld	fa1,56(sp)
   14f1e:	12e7f653          	fmul.d	fa2,fa5,fa4
   14f22:	ee01b707          	fld	fa4,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14f26:	4685                	li	a3,1
   14f28:	22b587d3          	fmv.d	fa5,fa1
   14f2c:	d6b6                	sw	a3,108(sp)
   14f2e:	8646                	mv	a2,a7
   14f30:	4f81                	li	t6,0
   14f32:	a029                	j	14f3c <__gdtoa+0xd34>
   14f34:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14f38:	d6ba                	sw	a4,108(sp)
   14f3a:	4f85                	li	t6,1
   14f3c:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14f40:	0605                	addi	a2,a2,1
   14f42:	03078693          	addi	a3,a5,48
   14f46:	0ff6f693          	zext.b	a3,a3
   14f4a:	c791                	beqz	a5,14f56 <__gdtoa+0xd4e>
   14f4c:	d20786d3          	fcvt.d.w	fa3,a5
   14f50:	4f85                	li	t6,1
   14f52:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   14f56:	fed60fa3          	sb	a3,-1(a2)
   14f5a:	57b6                	lw	a5,108(sp)
   14f5c:	00178713          	addi	a4,a5,1
   14f60:	fca79ae3          	bne	a5,a0,14f34 <__gdtoa+0xd2c>
   14f64:	000f8463          	beqz	t6,14f6c <__gdtoa+0xd64>
   14f68:	22f785d3          	fmv.d	fa1,fa5
   14f6c:	f081b787          	fld	fa5,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   14f70:	02f67753          	fadd.d	fa4,fa2,fa5
   14f74:	a2b71553          	flt.d	a0,fa4,fa1
   14f78:	0e051f63          	bnez	a0,15076 <__gdtoa+0xe6e>
   14f7c:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   14f80:	a2f596d3          	flt.d	a3,fa1,fa5
   14f84:	12069763          	bnez	a3,150b2 <__gdtoa+0xeaa>
   14f88:	5f02                	lw	t5,32(sp)
   14f8a:	5f92                	lw	t6,36(sp)
   14f8c:	e80c57e3          	bgez	s8,14e1a <__gdtoa+0xc12>
   14f90:	47e2                	lw	a5,24(sp)
   14f92:	5d42                	lw	s10,48(sp)
   14f94:	d002                	sw	zero,32(sp)
   14f96:	dc3e                	sw	a5,56(sp)
   14f98:	4c01                	li	s8,0
   14f9a:	d1aff06f          	j	144b4 <__gdtoa+0x2ac>
   14f9e:	835e                	mv	t1,s7
   14fa0:	89e2                	mv	s3,s8
   14fa2:	58a2                	lw	a7,40(sp)
   14fa4:	4be2                	lw	s7,24(sp)
   14fa6:	54b2                	lw	s1,44(sp)
   14fa8:	8c52                	mv	s8,s4
   14faa:	be7d                	j	14b68 <__gdtoa+0x960>
   14fac:	e20782e3          	beqz	a5,14dd0 <__gdtoa+0xbc8>
   14fb0:	4576                	lw	a0,92(sp)
   14fb2:	e4a05fe3          	blez	a0,14e10 <__gdtoa+0xc08>
   14fb6:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14fba:	53fd                	li	t2,-1
   14fbc:	12f777d3          	fmul.d	fa5,fa4,fa5
   14fc0:	ee81b707          	fld	fa4,-280(gp) # 1b6f8 <__SDATA_BEGIN__+0x40>
   14fc4:	bc3e                	fsd	fa5,56(sp)
   14fc6:	36e2                	fld	fa3,56(sp)
   14fc8:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14fcc:	fcc00637          	lui	a2,0xfcc00
   14fd0:	5f62                	lw	t5,56(sp)
   14fd2:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14fd6:	5ff2                	lw	t6,60(sp)
   14fd8:	a0be                	fsd	fa5,64(sp)
   14fda:	4706                	lw	a4,64(sp)
   14fdc:	4796                	lw	a5,68(sp)
   14fde:	833a                	mv	t1,a4
   14fe0:	963e                	add	a2,a2,a5
   14fe2:	857ff06f          	j	14838 <__gdtoa+0x630>
   14fe6:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   14fea:	b0f5                	j	148d6 <__gdtoa+0x6ce>
   14fec:	4909                	li	s2,2
   14fee:	4581                	li	a1,0
   14ff0:	4c01                	li	s8,0
   14ff2:	b119                	j	14bf8 <__gdtoa+0x9f0>
   14ff4:	4762                	lw	a4,24(sp)
   14ff6:	d6be                	sw	a5,108(sp)
   14ff8:	9ebe                	add	t4,t4,a5
   14ffa:	97ba                	add	a5,a5,a4
   14ffc:	dc3a                	sw	a4,56(sp)
   14ffe:	cc3e                	sw	a5,24(sp)
   15000:	c9aff06f          	j	1449a <__gdtoa+0x292>
   15004:	835e                	mv	t1,s7
   15006:	03900693          	li	a3,57
   1500a:	58a2                	lw	a7,40(sp)
   1500c:	4be2                	lw	s7,24(sp)
   1500e:	54b2                	lw	s1,44(sp)
   15010:	d0d302e3          	beq	t1,a3,14d14 <__gdtoa+0xb0c>
   15014:	0305                	addi	t1,t1,1
   15016:	89e2                	mv	s3,s8
   15018:	001d8613          	addi	a2,s11,1
   1501c:	006d8023          	sb	t1,0(s11)
   15020:	8c52                	mv	s8,s4
   15022:	02000b13          	li	s6,32
   15026:	b4b5                	j	14a92 <__gdtoa+0x88a>
   15028:	57d2                	lw	a5,52(sp)
   1502a:	4581                	li	a1,0
   1502c:	4c01                	li	s8,0
   1502e:	00278913          	addi	s2,a5,2
   15032:	b6d9                	j	14bf8 <__gdtoa+0x9f0>
   15034:	85e2                	mv	a1,s8
   15036:	4681                	li	a3,0
   15038:	4629                	li	a2,10
   1503a:	8522                	mv	a0,s0
   1503c:	2321                	jal	15544 <__multadd>
   1503e:	8c2a                	mv	s8,a0
   15040:	f0050763          	beqz	a0,1474e <__gdtoa+0x546>
   15044:	47f6                	lw	a5,92(sp)
   15046:	4842                	lw	a6,16(sp)
   15048:	48e2                	lw	a7,24(sp)
   1504a:	00f05563          	blez	a5,15054 <__gdtoa+0xe4c>
   1504e:	d63e                	sw	a5,44(sp)
   15050:	d06ff06f          	j	14556 <__gdtoa+0x34e>
   15054:	4789                	li	a5,2
   15056:	0927cf63          	blt	a5,s2,150f4 <__gdtoa+0xeec>
   1505a:	47f6                	lw	a5,92(sp)
   1505c:	d63e                	sw	a5,44(sp)
   1505e:	cf8ff06f          	j	14556 <__gdtoa+0x34e>
   15062:	d2000753          	fcvt.d.w	fa4,zero
   15066:	00138913          	addi	s2,t2,1
   1506a:	a2e7ab53          	feq.d	s6,fa5,fa4
   1506e:	001b3b13          	seqz	s6,s6
   15072:	0b12                	slli	s6,s6,0x4
   15074:	ba8d                	j	149e6 <__gdtoa+0x7de>
   15076:	00138513          	addi	a0,t2,1
   1507a:	85dff06f          	j	148d6 <__gdtoa+0x6ce>
   1507e:	5f02                	lw	t5,32(sp)
   15080:	5f92                	lw	t6,36(sp)
   15082:	d80c5ce3          	bgez	s8,14e1a <__gdtoa+0xc12>
   15086:	d002                	sw	zero,32(sp)
   15088:	bccff06f          	j	14454 <__gdtoa+0x24c>
   1508c:	57b2                	lw	a5,44(sp)
   1508e:	5742                	lw	a4,48(sp)
   15090:	fff78693          	addi	a3,a5,-1
   15094:	c0d74ee3          	blt	a4,a3,14cb0 <__gdtoa+0xaa8>
   15098:	4662                	lw	a2,24(sp)
   1509a:	9ebe                	add	t4,t4,a5
   1509c:	d6be                	sw	a5,108(sp)
   1509e:	97b2                	add	a5,a5,a2
   150a0:	dc32                	sw	a2,56(sp)
   150a2:	40d70d33          	sub	s10,a4,a3
   150a6:	cc3e                	sw	a5,24(sp)
   150a8:	bf2ff06f          	j	1449a <__gdtoa+0x292>
   150ac:	d002                	sw	zero,32(sp)
   150ae:	ba0ff06f          	j	1444e <__gdtoa+0x246>
   150b2:	d20007d3          	fcvt.d.w	fa5,zero
   150b6:	87b2                	mv	a5,a2
   150b8:	00138513          	addi	a0,t2,1
   150bc:	a2f5ab53          	feq.d	s6,fa1,fa5
   150c0:	001b3b13          	seqz	s6,s6
   150c4:	0b12                	slli	s6,s6,0x4
   150c6:	bd05                	j	14ef6 <__gdtoa+0xcee>
   150c8:	835e                	mv	t1,s7
   150ca:	03900693          	li	a3,57
   150ce:	8926                	mv	s2,s1
   150d0:	58a2                	lw	a7,40(sp)
   150d2:	4be2                	lw	s7,24(sp)
   150d4:	54b2                	lw	s1,44(sp)
   150d6:	c2d30fe3          	beq	t1,a3,14d14 <__gdtoa+0xb0c>
   150da:	07505d63          	blez	s5,15154 <__gdtoa+0xf4c>
   150de:	03190313          	addi	t1,s2,49
   150e2:	02000b13          	li	s6,32
   150e6:	89e2                	mv	s3,s8
   150e8:	001d8613          	addi	a2,s11,1
   150ec:	006d8023          	sb	t1,0(s11)
   150f0:	8c52                	mv	s8,s4
   150f2:	b245                	j	14a92 <__gdtoa+0x88a>
   150f4:	47f6                	lw	a5,92(sp)
   150f6:	d63e                	sw	a5,44(sp)
   150f8:	b4f9                	j	14bc6 <__gdtoa+0x9be>
   150fa:	e509                	bnez	a0,15104 <__gdtoa+0xefc>
   150fc:	00137693          	andi	a3,t1,1
   15100:	dc0691e3          	bnez	a3,14ec2 <__gdtoa+0xcba>
   15104:	02000793          	li	a5,32
   15108:	d03e                	sw	a5,32(sp)
   1510a:	b2bd                	j	14a78 <__gdtoa+0x870>
   1510c:	014ca683          	lw	a3,20(s9)
   15110:	96069ce3          	bnez	a3,14a88 <__gdtoa+0x880>
   15114:	5b02                	lw	s6,32(sp)
   15116:	ba8d                	j	14a88 <__gdtoa+0x880>
   15118:	03900693          	li	a3,57
   1511c:	88da                	mv	a7,s6
   1511e:	00da8b63          	beq	s5,a3,15134 <__gdtoa+0xf2c>
   15122:	001a8313          	addi	t1,s5,1
   15126:	02000b13          	li	s6,32
   1512a:	bab9                	j	14a88 <__gdtoa+0x880>
   1512c:	4b41                	li	s6,16
   1512e:	001d8913          	addi	s2,s11,1
   15132:	ba99                	j	14a88 <__gdtoa+0x880>
   15134:	89e2                	mv	s3,s8
   15136:	86ee                	mv	a3,s11
   15138:	8c52                	mv	s8,s4
   1513a:	b6d5                	j	14d1e <__gdtoa+0xb16>
   1513c:	010ca603          	lw	a2,16(s9)
   15140:	4685                	li	a3,1
   15142:	d0c6ca63          	blt	a3,a2,14656 <__gdtoa+0x44e>
   15146:	014ca683          	lw	a3,20(s9)
   1514a:	d0069663          	bnez	a3,14656 <__gdtoa+0x44e>
   1514e:	001d8913          	addi	s2,s11,1
   15152:	ba1d                	j	14a88 <__gdtoa+0x880>
   15154:	010ca603          	lw	a2,16(s9)
   15158:	4685                	li	a3,1
   1515a:	4b41                	li	s6,16
   1515c:	f8c6c5e3          	blt	a3,a2,150e6 <__gdtoa+0xede>
   15160:	014cab03          	lw	s6,20(s9)
   15164:	01603b33          	snez	s6,s6
   15168:	0b12                	slli	s6,s6,0x4
   1516a:	bfb5                	j	150e6 <__gdtoa+0xede>
   1516c:	000ace63          	bltz	s5,15188 <__gdtoa+0xf80>
   15170:	01596ab3          	or	s5,s2,s5
   15174:	000a9663          	bnez	s5,15180 <__gdtoa+0xf78>
   15178:	0009a783          	lw	a5,0(s3)
   1517c:	8b85                	andi	a5,a5,1
   1517e:	c789                	beqz	a5,15188 <__gdtoa+0xf80>
   15180:	c0d05c63          	blez	a3,14598 <__gdtoa+0x390>
   15184:	c0cff06f          	j	14590 <__gdtoa+0x388>
   15188:	5782                	lw	a5,32(sp)
   1518a:	8926                	mv	s2,s1
   1518c:	835e                	mv	t1,s7
   1518e:	58a2                	lw	a7,40(sp)
   15190:	4be2                	lw	s7,24(sp)
   15192:	54b2                	lw	s1,44(sp)
   15194:	c385                	beqz	a5,151b4 <__gdtoa+0xfac>
   15196:	010ca583          	lw	a1,16(s9)
   1519a:	4605                	li	a2,1
   1519c:	cab64d63          	blt	a2,a1,14656 <__gdtoa+0x44e>
   151a0:	014ca603          	lw	a2,20(s9)
   151a4:	ca061963          	bnez	a2,14656 <__gdtoa+0x44e>
   151a8:	ced04ce3          	bgtz	a3,14ea0 <__gdtoa+0xc98>
   151ac:	4b01                	li	s6,0
   151ae:	001d8913          	addi	s2,s11,1
   151b2:	b8d9                	j	14a88 <__gdtoa+0x880>
   151b4:	8cd052e3          	blez	a3,14a78 <__gdtoa+0x870>
   151b8:	b1e5                	j	14ea0 <__gdtoa+0xc98>

000151ba <__rv_alloc_D2A.part.0>:
   151ba:	66e9                	lui	a3,0x1a
   151bc:	6569                	lui	a0,0x1a
   151be:	1141                	addi	sp,sp,-16
   151c0:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   151c4:	4601                	li	a2,0
   151c6:	03900593          	li	a1,57
   151ca:	25050513          	addi	a0,a0,592 # 1a250 <__clzsi2+0x130>
   151ce:	c606                	sw	ra,12(sp)
   151d0:	692010ef          	jal	16862 <__assert_func>

000151d4 <__rv_alloc_D2A>:
   151d4:	1141                	addi	sp,sp,-16
   151d6:	c422                	sw	s0,8(sp)
   151d8:	c606                	sw	ra,12(sp)
   151da:	46dd                	li	a3,23
   151dc:	842a                	mv	s0,a0
   151de:	4705                	li	a4,1
   151e0:	4791                	li	a5,4
   151e2:	02b6f363          	bgeu	a3,a1,15208 <__rv_alloc_D2A+0x34>
   151e6:	0786                	slli	a5,a5,0x1
   151e8:	01478693          	addi	a3,a5,20
   151ec:	863a                	mv	a2,a4
   151ee:	0705                	addi	a4,a4,1
   151f0:	fed5fbe3          	bgeu	a1,a3,151e6 <__rv_alloc_D2A+0x12>
   151f4:	85b2                	mv	a1,a2
   151f6:	dc50                	sw	a2,60(s0)
   151f8:	8522                	mv	a0,s0
   151fa:	24f1                	jal	154c6 <_Balloc>
   151fc:	c911                	beqz	a0,15210 <__rv_alloc_D2A+0x3c>
   151fe:	40b2                	lw	ra,12(sp)
   15200:	dc08                	sw	a0,56(s0)
   15202:	4422                	lw	s0,8(sp)
   15204:	0141                	addi	sp,sp,16
   15206:	8082                	ret
   15208:	02052e23          	sw	zero,60(a0)
   1520c:	4581                	li	a1,0
   1520e:	b7ed                	j	151f8 <__rv_alloc_D2A+0x24>
   15210:	376d                	jal	151ba <__rv_alloc_D2A.part.0>

00015212 <__nrv_alloc_D2A>:
   15212:	1141                	addi	sp,sp,-16
   15214:	c422                	sw	s0,8(sp)
   15216:	c226                	sw	s1,4(sp)
   15218:	c04a                	sw	s2,0(sp)
   1521a:	c606                	sw	ra,12(sp)
   1521c:	485d                	li	a6,23
   1521e:	84aa                	mv	s1,a0
   15220:	842e                	mv	s0,a1
   15222:	8932                	mv	s2,a2
   15224:	4705                	li	a4,1
   15226:	4791                	li	a5,4
   15228:	04d87763          	bgeu	a6,a3,15276 <__nrv_alloc_D2A+0x64>
   1522c:	0786                	slli	a5,a5,0x1
   1522e:	01478813          	addi	a6,a5,20
   15232:	85ba                	mv	a1,a4
   15234:	0705                	addi	a4,a4,1
   15236:	ff06fbe3          	bgeu	a3,a6,1522c <__nrv_alloc_D2A+0x1a>
   1523a:	dccc                	sw	a1,60(s1)
   1523c:	8526                	mv	a0,s1
   1523e:	2461                	jal	154c6 <_Balloc>
   15240:	c129                	beqz	a0,15282 <__nrv_alloc_D2A+0x70>
   15242:	dc88                	sw	a0,56(s1)
   15244:	00044783          	lbu	a5,0(s0)
   15248:	00140593          	addi	a1,s0,1
   1524c:	00f50023          	sb	a5,0(a0)
   15250:	c79d                	beqz	a5,1527e <__nrv_alloc_D2A+0x6c>
   15252:	87aa                	mv	a5,a0
   15254:	0005c703          	lbu	a4,0(a1)
   15258:	0785                	addi	a5,a5,1
   1525a:	0585                	addi	a1,a1,1
   1525c:	00e78023          	sb	a4,0(a5)
   15260:	fb75                	bnez	a4,15254 <__nrv_alloc_D2A+0x42>
   15262:	00090463          	beqz	s2,1526a <__nrv_alloc_D2A+0x58>
   15266:	00f92023          	sw	a5,0(s2)
   1526a:	40b2                	lw	ra,12(sp)
   1526c:	4422                	lw	s0,8(sp)
   1526e:	4492                	lw	s1,4(sp)
   15270:	4902                	lw	s2,0(sp)
   15272:	0141                	addi	sp,sp,16
   15274:	8082                	ret
   15276:	02052e23          	sw	zero,60(a0)
   1527a:	4581                	li	a1,0
   1527c:	b7c1                	j	1523c <__nrv_alloc_D2A+0x2a>
   1527e:	87aa                	mv	a5,a0
   15280:	b7cd                	j	15262 <__nrv_alloc_D2A+0x50>
   15282:	3f25                	jal	151ba <__rv_alloc_D2A.part.0>

00015284 <__freedtoa>:
   15284:	5d54                	lw	a3,60(a0)
   15286:	4705                	li	a4,1
   15288:	00d71733          	sll	a4,a4,a3
   1528c:	c1d4                	sw	a3,4(a1)
   1528e:	c598                	sw	a4,8(a1)
   15290:	a44d                	j	15532 <_Bfree>

00015292 <__quorem_D2A>:
   15292:	1101                	addi	sp,sp,-32
   15294:	ca26                	sw	s1,20(sp)
   15296:	491c                	lw	a5,16(a0)
   15298:	4984                	lw	s1,16(a1)
   1529a:	ce06                	sw	ra,28(sp)
   1529c:	1497c163          	blt	a5,s1,153de <__quorem_D2A+0x14c>
   152a0:	14fd                	addi	s1,s1,-1
   152a2:	00249313          	slli	t1,s1,0x2
   152a6:	cc22                	sw	s0,24(sp)
   152a8:	01458413          	addi	s0,a1,20
   152ac:	c64e                	sw	s3,12(sp)
   152ae:	c452                	sw	s4,8(sp)
   152b0:	006409b3          	add	s3,s0,t1
   152b4:	01450a13          	addi	s4,a0,20
   152b8:	0009a783          	lw	a5,0(s3)
   152bc:	9352                	add	t1,t1,s4
   152be:	00032703          	lw	a4,0(t1)
   152c2:	c84a                	sw	s2,16(sp)
   152c4:	c256                	sw	s5,4(sp)
   152c6:	0785                	addi	a5,a5,1
   152c8:	02f75933          	divu	s2,a4,a5
   152cc:	8aaa                	mv	s5,a0
   152ce:	08f76663          	bltu	a4,a5,1535a <__quorem_D2A+0xc8>
   152d2:	6541                	lui	a0,0x10
   152d4:	88a2                	mv	a7,s0
   152d6:	8852                	mv	a6,s4
   152d8:	4f01                	li	t5,0
   152da:	4e81                	li	t4,0
   152dc:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   152de:	0008a783          	lw	a5,0(a7)
   152e2:	00082603          	lw	a2,0(a6)
   152e6:	0811                	addi	a6,a6,4
   152e8:	00a7f6b3          	and	a3,a5,a0
   152ec:	83c1                	srli	a5,a5,0x10
   152ee:	00a67733          	and	a4,a2,a0
   152f2:	01065e13          	srli	t3,a2,0x10
   152f6:	0891                	addi	a7,a7,4
   152f8:	032686b3          	mul	a3,a3,s2
   152fc:	032787b3          	mul	a5,a5,s2
   15300:	96fa                	add	a3,a3,t5
   15302:	00a6f633          	and	a2,a3,a0
   15306:	8f11                	sub	a4,a4,a2
   15308:	41d70733          	sub	a4,a4,t4
   1530c:	82c1                	srli	a3,a3,0x10
   1530e:	01075613          	srli	a2,a4,0x10
   15312:	8a05                	andi	a2,a2,1
   15314:	8f69                	and	a4,a4,a0
   15316:	97b6                	add	a5,a5,a3
   15318:	00a7f6b3          	and	a3,a5,a0
   1531c:	9636                	add	a2,a2,a3
   1531e:	40ce06b3          	sub	a3,t3,a2
   15322:	01069613          	slli	a2,a3,0x10
   15326:	8f51                	or	a4,a4,a2
   15328:	82c1                	srli	a3,a3,0x10
   1532a:	fee82e23          	sw	a4,-4(a6)
   1532e:	0107df13          	srli	t5,a5,0x10
   15332:	0016fe93          	andi	t4,a3,1
   15336:	fb19f4e3          	bgeu	s3,a7,152de <__quorem_D2A+0x4c>
   1533a:	00032783          	lw	a5,0(t1)
   1533e:	ef91                	bnez	a5,1535a <__quorem_D2A+0xc8>
   15340:	1371                	addi	t1,t1,-4
   15342:	006a6663          	bltu	s4,t1,1534e <__quorem_D2A+0xbc>
   15346:	a801                	j	15356 <__quorem_D2A+0xc4>
   15348:	14fd                	addi	s1,s1,-1
   1534a:	006a7663          	bgeu	s4,t1,15356 <__quorem_D2A+0xc4>
   1534e:	00032783          	lw	a5,0(t1)
   15352:	1371                	addi	t1,t1,-4
   15354:	dbf5                	beqz	a5,15348 <__quorem_D2A+0xb6>
   15356:	009aa823          	sw	s1,16(s5)
   1535a:	8556                	mv	a0,s5
   1535c:	04d000ef          	jal	15ba8 <__mcmp>
   15360:	06054563          	bltz	a0,153ca <__quorem_D2A+0x138>
   15364:	6541                	lui	a0,0x10
   15366:	85d2                	mv	a1,s4
   15368:	4681                	li	a3,0
   1536a:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   1536c:	419c                	lw	a5,0(a1)
   1536e:	4010                	lw	a2,0(s0)
   15370:	0591                	addi	a1,a1,4
   15372:	00a7f733          	and	a4,a5,a0
   15376:	00a67833          	and	a6,a2,a0
   1537a:	41070733          	sub	a4,a4,a6
   1537e:	8f15                	sub	a4,a4,a3
   15380:	01075693          	srli	a3,a4,0x10
   15384:	8a85                	andi	a3,a3,1
   15386:	8241                	srli	a2,a2,0x10
   15388:	96b2                	add	a3,a3,a2
   1538a:	83c1                	srli	a5,a5,0x10
   1538c:	8f95                	sub	a5,a5,a3
   1538e:	01079693          	slli	a3,a5,0x10
   15392:	8f69                	and	a4,a4,a0
   15394:	8f55                	or	a4,a4,a3
   15396:	83c1                	srli	a5,a5,0x10
   15398:	0411                	addi	s0,s0,4
   1539a:	fee5ae23          	sw	a4,-4(a1)
   1539e:	0017f693          	andi	a3,a5,1
   153a2:	fc89f5e3          	bgeu	s3,s0,1536c <__quorem_D2A+0xda>
   153a6:	00249793          	slli	a5,s1,0x2
   153aa:	97d2                	add	a5,a5,s4
   153ac:	4398                	lw	a4,0(a5)
   153ae:	ef09                	bnez	a4,153c8 <__quorem_D2A+0x136>
   153b0:	17f1                	addi	a5,a5,-4
   153b2:	00fa6663          	bltu	s4,a5,153be <__quorem_D2A+0x12c>
   153b6:	a039                	j	153c4 <__quorem_D2A+0x132>
   153b8:	14fd                	addi	s1,s1,-1
   153ba:	00fa7563          	bgeu	s4,a5,153c4 <__quorem_D2A+0x132>
   153be:	4398                	lw	a4,0(a5)
   153c0:	17f1                	addi	a5,a5,-4
   153c2:	db7d                	beqz	a4,153b8 <__quorem_D2A+0x126>
   153c4:	009aa823          	sw	s1,16(s5)
   153c8:	0905                	addi	s2,s2,1
   153ca:	4462                	lw	s0,24(sp)
   153cc:	40f2                	lw	ra,28(sp)
   153ce:	49b2                	lw	s3,12(sp)
   153d0:	4a22                	lw	s4,8(sp)
   153d2:	4a92                	lw	s5,4(sp)
   153d4:	44d2                	lw	s1,20(sp)
   153d6:	854a                	mv	a0,s2
   153d8:	4942                	lw	s2,16(sp)
   153da:	6105                	addi	sp,sp,32
   153dc:	8082                	ret
   153de:	40f2                	lw	ra,28(sp)
   153e0:	44d2                	lw	s1,20(sp)
   153e2:	4501                	li	a0,0
   153e4:	6105                	addi	sp,sp,32
   153e6:	8082                	ret

000153e8 <__rshift_D2A>:
   153e8:	01052803          	lw	a6,16(a0)
   153ec:	4055de13          	srai	t3,a1,0x5
   153f0:	010e4763          	blt	t3,a6,153fe <__rshift_D2A+0x16>
   153f4:	00052823          	sw	zero,16(a0)
   153f8:	00052a23          	sw	zero,20(a0)
   153fc:	8082                	ret
   153fe:	01450313          	addi	t1,a0,20
   15402:	00281613          	slli	a2,a6,0x2
   15406:	002e1793          	slli	a5,t3,0x2
   1540a:	89fd                	andi	a1,a1,31
   1540c:	961a                	add	a2,a2,t1
   1540e:	979a                	add	a5,a5,t1
   15410:	c5a1                	beqz	a1,15458 <__rshift_D2A+0x70>
   15412:	4394                	lw	a3,0(a5)
   15414:	02000e93          	li	t4,32
   15418:	0791                	addi	a5,a5,4
   1541a:	40be8eb3          	sub	t4,t4,a1
   1541e:	00b6d6b3          	srl	a3,a3,a1
   15422:	06c7f063          	bgeu	a5,a2,15482 <__rshift_D2A+0x9a>
   15426:	889a                	mv	a7,t1
   15428:	4398                	lw	a4,0(a5)
   1542a:	0891                	addi	a7,a7,4
   1542c:	0791                	addi	a5,a5,4
   1542e:	01d71733          	sll	a4,a4,t4
   15432:	8f55                	or	a4,a4,a3
   15434:	fee8ae23          	sw	a4,-4(a7)
   15438:	ffc7a683          	lw	a3,-4(a5)
   1543c:	00b6d6b3          	srl	a3,a3,a1
   15440:	fec7e4e3          	bltu	a5,a2,15428 <__rshift_D2A+0x40>
   15444:	41c80833          	sub	a6,a6,t3
   15448:	080a                	slli	a6,a6,0x2
   1544a:	1871                	addi	a6,a6,-4
   1544c:	981a                	add	a6,a6,t1
   1544e:	00d82023          	sw	a3,0(a6)
   15452:	c28d                	beqz	a3,15474 <__rshift_D2A+0x8c>
   15454:	0811                	addi	a6,a6,4
   15456:	a839                	j	15474 <__rshift_D2A+0x8c>
   15458:	871a                	mv	a4,t1
   1545a:	f8c7fde3          	bgeu	a5,a2,153f4 <__rshift_D2A+0xc>
   1545e:	4394                	lw	a3,0(a5)
   15460:	0791                	addi	a5,a5,4
   15462:	0711                	addi	a4,a4,4
   15464:	fed72e23          	sw	a3,-4(a4)
   15468:	fec7ebe3          	bltu	a5,a2,1545e <__rshift_D2A+0x76>
   1546c:	41c80833          	sub	a6,a6,t3
   15470:	080a                	slli	a6,a6,0x2
   15472:	981a                	add	a6,a6,t1
   15474:	406807b3          	sub	a5,a6,t1
   15478:	8789                	srai	a5,a5,0x2
   1547a:	c91c                	sw	a5,16(a0)
   1547c:	f6680ee3          	beq	a6,t1,153f8 <__rshift_D2A+0x10>
   15480:	8082                	ret
   15482:	c954                	sw	a3,20(a0)
   15484:	daa5                	beqz	a3,153f4 <__rshift_D2A+0xc>
   15486:	881a                	mv	a6,t1
   15488:	0811                	addi	a6,a6,4
   1548a:	b7ed                	j	15474 <__rshift_D2A+0x8c>

0001548c <__trailz_D2A>:
   1548c:	4918                	lw	a4,16(a0)
   1548e:	1101                	addi	sp,sp,-32
   15490:	0551                	addi	a0,a0,20
   15492:	070a                	slli	a4,a4,0x2
   15494:	cc22                	sw	s0,24(sp)
   15496:	ce06                	sw	ra,28(sp)
   15498:	972a                	add	a4,a4,a0
   1549a:	4401                	li	s0,0
   1549c:	00e56863          	bltu	a0,a4,154ac <__trailz_D2A+0x20>
   154a0:	a831                	j	154bc <__trailz_D2A+0x30>
   154a2:	0511                	addi	a0,a0,4
   154a4:	02040413          	addi	s0,s0,32
   154a8:	00e57a63          	bgeu	a0,a4,154bc <__trailz_D2A+0x30>
   154ac:	411c                	lw	a5,0(a0)
   154ae:	dbf5                	beqz	a5,154a2 <__trailz_D2A+0x16>
   154b0:	00e57663          	bgeu	a0,a4,154bc <__trailz_D2A+0x30>
   154b4:	0068                	addi	a0,sp,12
   154b6:	c63e                	sw	a5,12(sp)
   154b8:	2459                	jal	1573e <__lo0bits>
   154ba:	942a                	add	s0,s0,a0
   154bc:	40f2                	lw	ra,28(sp)
   154be:	8522                	mv	a0,s0
   154c0:	4462                	lw	s0,24(sp)
   154c2:	6105                	addi	sp,sp,32
   154c4:	8082                	ret

000154c6 <_Balloc>:
   154c6:	417c                	lw	a5,68(a0)
   154c8:	1141                	addi	sp,sp,-16
   154ca:	c422                	sw	s0,8(sp)
   154cc:	c226                	sw	s1,4(sp)
   154ce:	c606                	sw	ra,12(sp)
   154d0:	842a                	mv	s0,a0
   154d2:	84ae                	mv	s1,a1
   154d4:	c38d                	beqz	a5,154f6 <_Balloc+0x30>
   154d6:	00249713          	slli	a4,s1,0x2
   154da:	97ba                	add	a5,a5,a4
   154dc:	4388                	lw	a0,0(a5)
   154de:	c515                	beqz	a0,1550a <_Balloc+0x44>
   154e0:	4118                	lw	a4,0(a0)
   154e2:	c398                	sw	a4,0(a5)
   154e4:	00052823          	sw	zero,16(a0)
   154e8:	00052623          	sw	zero,12(a0)
   154ec:	40b2                	lw	ra,12(sp)
   154ee:	4422                	lw	s0,8(sp)
   154f0:	4492                	lw	s1,4(sp)
   154f2:	0141                	addi	sp,sp,16
   154f4:	8082                	ret
   154f6:	02100613          	li	a2,33
   154fa:	4591                	li	a1,4
   154fc:	3ac010ef          	jal	168a8 <_calloc_r>
   15500:	c068                	sw	a0,68(s0)
   15502:	87aa                	mv	a5,a0
   15504:	f969                	bnez	a0,154d6 <_Balloc+0x10>
   15506:	4501                	li	a0,0
   15508:	b7d5                	j	154ec <_Balloc+0x26>
   1550a:	c04a                	sw	s2,0(sp)
   1550c:	4905                	li	s2,1
   1550e:	00991933          	sll	s2,s2,s1
   15512:	00590613          	addi	a2,s2,5
   15516:	060a                	slli	a2,a2,0x2
   15518:	4585                	li	a1,1
   1551a:	8522                	mv	a0,s0
   1551c:	38c010ef          	jal	168a8 <_calloc_r>
   15520:	c511                	beqz	a0,1552c <_Balloc+0x66>
   15522:	01252423          	sw	s2,8(a0)
   15526:	c144                	sw	s1,4(a0)
   15528:	4902                	lw	s2,0(sp)
   1552a:	bf6d                	j	154e4 <_Balloc+0x1e>
   1552c:	4902                	lw	s2,0(sp)
   1552e:	4501                	li	a0,0
   15530:	bf75                	j	154ec <_Balloc+0x26>

00015532 <_Bfree>:
   15532:	c981                	beqz	a1,15542 <_Bfree+0x10>
   15534:	41d8                	lw	a4,4(a1)
   15536:	417c                	lw	a5,68(a0)
   15538:	070a                	slli	a4,a4,0x2
   1553a:	97ba                	add	a5,a5,a4
   1553c:	4398                	lw	a4,0(a5)
   1553e:	c198                	sw	a4,0(a1)
   15540:	c38c                	sw	a1,0(a5)
   15542:	8082                	ret

00015544 <__multadd>:
   15544:	1101                	addi	sp,sp,-32
   15546:	ca26                	sw	s1,20(sp)
   15548:	4984                	lw	s1,16(a1)
   1554a:	6341                	lui	t1,0x10
   1554c:	cc22                	sw	s0,24(sp)
   1554e:	c84a                	sw	s2,16(sp)
   15550:	c64e                	sw	s3,12(sp)
   15552:	ce06                	sw	ra,28(sp)
   15554:	892e                	mv	s2,a1
   15556:	89aa                	mv	s3,a0
   15558:	8436                	mv	s0,a3
   1555a:	01458813          	addi	a6,a1,20
   1555e:	4881                	li	a7,0
   15560:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   15562:	00082783          	lw	a5,0(a6)
   15566:	0811                	addi	a6,a6,4
   15568:	0885                	addi	a7,a7,1
   1556a:	0067f733          	and	a4,a5,t1
   1556e:	02c70733          	mul	a4,a4,a2
   15572:	0107d693          	srli	a3,a5,0x10
   15576:	02c686b3          	mul	a3,a3,a2
   1557a:	008707b3          	add	a5,a4,s0
   1557e:	0107d713          	srli	a4,a5,0x10
   15582:	0067f7b3          	and	a5,a5,t1
   15586:	96ba                	add	a3,a3,a4
   15588:	01069713          	slli	a4,a3,0x10
   1558c:	97ba                	add	a5,a5,a4
   1558e:	fef82e23          	sw	a5,-4(a6)
   15592:	0106d413          	srli	s0,a3,0x10
   15596:	fc98c6e3          	blt	a7,s1,15562 <__multadd+0x1e>
   1559a:	cc09                	beqz	s0,155b4 <__multadd+0x70>
   1559c:	00892783          	lw	a5,8(s2)
   155a0:	02f4d263          	bge	s1,a5,155c4 <__multadd+0x80>
   155a4:	00448793          	addi	a5,s1,4
   155a8:	078a                	slli	a5,a5,0x2
   155aa:	97ca                	add	a5,a5,s2
   155ac:	c3c0                	sw	s0,4(a5)
   155ae:	0485                	addi	s1,s1,1
   155b0:	00992823          	sw	s1,16(s2)
   155b4:	40f2                	lw	ra,28(sp)
   155b6:	4462                	lw	s0,24(sp)
   155b8:	44d2                	lw	s1,20(sp)
   155ba:	49b2                	lw	s3,12(sp)
   155bc:	854a                	mv	a0,s2
   155be:	4942                	lw	s2,16(sp)
   155c0:	6105                	addi	sp,sp,32
   155c2:	8082                	ret
   155c4:	00492583          	lw	a1,4(s2)
   155c8:	854e                	mv	a0,s3
   155ca:	c452                	sw	s4,8(sp)
   155cc:	0585                	addi	a1,a1,1
   155ce:	3de5                	jal	154c6 <_Balloc>
   155d0:	8a2a                	mv	s4,a0
   155d2:	c121                	beqz	a0,15612 <__multadd+0xce>
   155d4:	01092603          	lw	a2,16(s2)
   155d8:	00c90593          	addi	a1,s2,12
   155dc:	0531                	addi	a0,a0,12
   155de:	0609                	addi	a2,a2,2
   155e0:	060a                	slli	a2,a2,0x2
   155e2:	f4efe0ef          	jal	13d30 <memcpy>
   155e6:	00492703          	lw	a4,4(s2)
   155ea:	0449a783          	lw	a5,68(s3)
   155ee:	070a                	slli	a4,a4,0x2
   155f0:	97ba                	add	a5,a5,a4
   155f2:	4398                	lw	a4,0(a5)
   155f4:	00e92023          	sw	a4,0(s2)
   155f8:	0127a023          	sw	s2,0(a5)
   155fc:	00448793          	addi	a5,s1,4
   15600:	8952                	mv	s2,s4
   15602:	078a                	slli	a5,a5,0x2
   15604:	97ca                	add	a5,a5,s2
   15606:	4a22                	lw	s4,8(sp)
   15608:	0485                	addi	s1,s1,1
   1560a:	c3c0                	sw	s0,4(a5)
   1560c:	00992823          	sw	s1,16(s2)
   15610:	b755                	j	155b4 <__multadd+0x70>
   15612:	66e9                	lui	a3,0x1a
   15614:	6569                	lui	a0,0x1a
   15616:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   1561a:	4601                	li	a2,0
   1561c:	0ba00593          	li	a1,186
   15620:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   15624:	23e010ef          	jal	16862 <__assert_func>

00015628 <__s2b>:
   15628:	1101                	addi	sp,sp,-32
   1562a:	cc22                	sw	s0,24(sp)
   1562c:	ca26                	sw	s1,20(sp)
   1562e:	c84a                	sw	s2,16(sp)
   15630:	c64e                	sw	s3,12(sp)
   15632:	c452                	sw	s4,8(sp)
   15634:	89b6                	mv	s3,a3
   15636:	47a5                	li	a5,9
   15638:	06a1                	addi	a3,a3,8
   1563a:	ce06                	sw	ra,28(sp)
   1563c:	02f6c6b3          	div	a3,a3,a5
   15640:	892a                	mv	s2,a0
   15642:	842e                	mv	s0,a1
   15644:	8a32                	mv	s4,a2
   15646:	84ba                	mv	s1,a4
   15648:	0937d363          	bge	a5,s3,156ce <__s2b+0xa6>
   1564c:	4785                	li	a5,1
   1564e:	4581                	li	a1,0
   15650:	0786                	slli	a5,a5,0x1
   15652:	0585                	addi	a1,a1,1
   15654:	fed7cee3          	blt	a5,a3,15650 <__s2b+0x28>
   15658:	854a                	mv	a0,s2
   1565a:	e6dff0ef          	jal	154c6 <_Balloc>
   1565e:	85aa                	mv	a1,a0
   15660:	c92d                	beqz	a0,156d2 <__s2b+0xaa>
   15662:	4785                	li	a5,1
   15664:	c91c                	sw	a5,16(a0)
   15666:	c944                	sw	s1,20(a0)
   15668:	47a5                	li	a5,9
   1566a:	0547df63          	bge	a5,s4,156c8 <__s2b+0xa0>
   1566e:	c256                	sw	s5,4(sp)
   15670:	00940a93          	addi	s5,s0,9
   15674:	84d6                	mv	s1,s5
   15676:	9452                	add	s0,s0,s4
   15678:	0004c683          	lbu	a3,0(s1)
   1567c:	4629                	li	a2,10
   1567e:	854a                	mv	a0,s2
   15680:	fd068693          	addi	a3,a3,-48
   15684:	35c1                	jal	15544 <__multadd>
   15686:	0485                	addi	s1,s1,1
   15688:	85aa                	mv	a1,a0
   1568a:	fe8497e3          	bne	s1,s0,15678 <__s2b+0x50>
   1568e:	ff8a0413          	addi	s0,s4,-8
   15692:	9456                	add	s0,s0,s5
   15694:	4a92                	lw	s5,4(sp)
   15696:	033a5063          	bge	s4,s3,156b6 <__s2b+0x8e>
   1569a:	414989b3          	sub	s3,s3,s4
   1569e:	99a2                	add	s3,s3,s0
   156a0:	00044683          	lbu	a3,0(s0)
   156a4:	4629                	li	a2,10
   156a6:	854a                	mv	a0,s2
   156a8:	fd068693          	addi	a3,a3,-48
   156ac:	3d61                	jal	15544 <__multadd>
   156ae:	0405                	addi	s0,s0,1
   156b0:	85aa                	mv	a1,a0
   156b2:	ff3417e3          	bne	s0,s3,156a0 <__s2b+0x78>
   156b6:	40f2                	lw	ra,28(sp)
   156b8:	4462                	lw	s0,24(sp)
   156ba:	44d2                	lw	s1,20(sp)
   156bc:	4942                	lw	s2,16(sp)
   156be:	49b2                	lw	s3,12(sp)
   156c0:	4a22                	lw	s4,8(sp)
   156c2:	852e                	mv	a0,a1
   156c4:	6105                	addi	sp,sp,32
   156c6:	8082                	ret
   156c8:	0429                	addi	s0,s0,10
   156ca:	4a25                	li	s4,9
   156cc:	b7e9                	j	15696 <__s2b+0x6e>
   156ce:	4581                	li	a1,0
   156d0:	b761                	j	15658 <__s2b+0x30>
   156d2:	66e9                	lui	a3,0x1a
   156d4:	6569                	lui	a0,0x1a
   156d6:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   156da:	4601                	li	a2,0
   156dc:	0d300593          	li	a1,211
   156e0:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   156e4:	c256                	sw	s5,4(sp)
   156e6:	17c010ef          	jal	16862 <__assert_func>

000156ea <__hi0bits>:
   156ea:	87aa                	mv	a5,a0
   156ec:	6741                	lui	a4,0x10
   156ee:	4501                	li	a0,0
   156f0:	00e7f463          	bgeu	a5,a4,156f8 <__hi0bits+0xe>
   156f4:	07c2                	slli	a5,a5,0x10
   156f6:	4541                	li	a0,16
   156f8:	01000737          	lui	a4,0x1000
   156fc:	00e7f463          	bgeu	a5,a4,15704 <__hi0bits+0x1a>
   15700:	0521                	addi	a0,a0,8
   15702:	07a2                	slli	a5,a5,0x8
   15704:	10000737          	lui	a4,0x10000
   15708:	00e7f463          	bgeu	a5,a4,15710 <__hi0bits+0x26>
   1570c:	0511                	addi	a0,a0,4
   1570e:	0792                	slli	a5,a5,0x4
   15710:	40000737          	lui	a4,0x40000
   15714:	00e7e763          	bltu	a5,a4,15722 <__hi0bits+0x38>
   15718:	fff7c793          	not	a5,a5
   1571c:	83fd                	srli	a5,a5,0x1f
   1571e:	953e                	add	a0,a0,a5
   15720:	8082                	ret
   15722:	078a                	slli	a5,a5,0x2
   15724:	0007c963          	bltz	a5,15736 <__hi0bits+0x4c>
   15728:	00179713          	slli	a4,a5,0x1
   1572c:	00074763          	bltz	a4,1573a <__hi0bits+0x50>
   15730:	02000513          	li	a0,32
   15734:	8082                	ret
   15736:	0509                	addi	a0,a0,2
   15738:	8082                	ret
   1573a:	050d                	addi	a0,a0,3
   1573c:	8082                	ret

0001573e <__lo0bits>:
   1573e:	411c                	lw	a5,0(a0)
   15740:	872a                	mv	a4,a0
   15742:	0077f693          	andi	a3,a5,7
   15746:	ce81                	beqz	a3,1575e <__lo0bits+0x20>
   15748:	0017f693          	andi	a3,a5,1
   1574c:	4501                	li	a0,0
   1574e:	ee95                	bnez	a3,1578a <__lo0bits+0x4c>
   15750:	0027f693          	andi	a3,a5,2
   15754:	c6b5                	beqz	a3,157c0 <__lo0bits+0x82>
   15756:	8385                	srli	a5,a5,0x1
   15758:	c31c                	sw	a5,0(a4)
   1575a:	4505                	li	a0,1
   1575c:	8082                	ret
   1575e:	01079693          	slli	a3,a5,0x10
   15762:	82c1                	srli	a3,a3,0x10
   15764:	4501                	li	a0,0
   15766:	c6b9                	beqz	a3,157b4 <__lo0bits+0x76>
   15768:	0ff7f693          	zext.b	a3,a5
   1576c:	ce95                	beqz	a3,157a8 <__lo0bits+0x6a>
   1576e:	00f7f693          	andi	a3,a5,15
   15772:	c68d                	beqz	a3,1579c <__lo0bits+0x5e>
   15774:	0037f693          	andi	a3,a5,3
   15778:	ce81                	beqz	a3,15790 <__lo0bits+0x52>
   1577a:	0017f693          	andi	a3,a5,1
   1577e:	e699                	bnez	a3,1578c <__lo0bits+0x4e>
   15780:	8385                	srli	a5,a5,0x1
   15782:	0505                	addi	a0,a0,1
   15784:	e781                	bnez	a5,1578c <__lo0bits+0x4e>
   15786:	02000513          	li	a0,32
   1578a:	8082                	ret
   1578c:	c31c                	sw	a5,0(a4)
   1578e:	8082                	ret
   15790:	8389                	srli	a5,a5,0x2
   15792:	0017f693          	andi	a3,a5,1
   15796:	0509                	addi	a0,a0,2
   15798:	faf5                	bnez	a3,1578c <__lo0bits+0x4e>
   1579a:	b7dd                	j	15780 <__lo0bits+0x42>
   1579c:	8391                	srli	a5,a5,0x4
   1579e:	0037f693          	andi	a3,a5,3
   157a2:	0511                	addi	a0,a0,4
   157a4:	faf9                	bnez	a3,1577a <__lo0bits+0x3c>
   157a6:	b7ed                	j	15790 <__lo0bits+0x52>
   157a8:	83a1                	srli	a5,a5,0x8
   157aa:	00f7f693          	andi	a3,a5,15
   157ae:	0521                	addi	a0,a0,8
   157b0:	f2f1                	bnez	a3,15774 <__lo0bits+0x36>
   157b2:	b7ed                	j	1579c <__lo0bits+0x5e>
   157b4:	83c1                	srli	a5,a5,0x10
   157b6:	0ff7f693          	zext.b	a3,a5
   157ba:	4541                	li	a0,16
   157bc:	facd                	bnez	a3,1576e <__lo0bits+0x30>
   157be:	b7ed                	j	157a8 <__lo0bits+0x6a>
   157c0:	8389                	srli	a5,a5,0x2
   157c2:	c31c                	sw	a5,0(a4)
   157c4:	4509                	li	a0,2
   157c6:	8082                	ret

000157c8 <__i2b>:
   157c8:	417c                	lw	a5,68(a0)
   157ca:	1141                	addi	sp,sp,-16
   157cc:	c422                	sw	s0,8(sp)
   157ce:	c226                	sw	s1,4(sp)
   157d0:	c606                	sw	ra,12(sp)
   157d2:	842a                	mv	s0,a0
   157d4:	84ae                	mv	s1,a1
   157d6:	cf99                	beqz	a5,157f4 <__i2b+0x2c>
   157d8:	43c8                	lw	a0,4(a5)
   157da:	c121                	beqz	a0,1581a <__i2b+0x52>
   157dc:	4118                	lw	a4,0(a0)
   157de:	c3d8                	sw	a4,4(a5)
   157e0:	40b2                	lw	ra,12(sp)
   157e2:	4422                	lw	s0,8(sp)
   157e4:	4785                	li	a5,1
   157e6:	c944                	sw	s1,20(a0)
   157e8:	00052623          	sw	zero,12(a0)
   157ec:	c91c                	sw	a5,16(a0)
   157ee:	4492                	lw	s1,4(sp)
   157f0:	0141                	addi	sp,sp,16
   157f2:	8082                	ret
   157f4:	02100613          	li	a2,33
   157f8:	4591                	li	a1,4
   157fa:	0ae010ef          	jal	168a8 <_calloc_r>
   157fe:	c068                	sw	a0,68(s0)
   15800:	87aa                	mv	a5,a0
   15802:	f979                	bnez	a0,157d8 <__i2b+0x10>
   15804:	66e9                	lui	a3,0x1a
   15806:	6569                	lui	a0,0x1a
   15808:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   1580c:	4601                	li	a2,0
   1580e:	14500593          	li	a1,325
   15812:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   15816:	04c010ef          	jal	16862 <__assert_func>
   1581a:	4671                	li	a2,28
   1581c:	4585                	li	a1,1
   1581e:	8522                	mv	a0,s0
   15820:	088010ef          	jal	168a8 <_calloc_r>
   15824:	d165                	beqz	a0,15804 <__i2b+0x3c>
   15826:	4785                	li	a5,1
   15828:	c15c                	sw	a5,4(a0)
   1582a:	4789                	li	a5,2
   1582c:	c51c                	sw	a5,8(a0)
   1582e:	bf4d                	j	157e0 <__i2b+0x18>

00015830 <__multiply>:
   15830:	1101                	addi	sp,sp,-32
   15832:	c84a                	sw	s2,16(sp)
   15834:	c64e                	sw	s3,12(sp)
   15836:	0105a903          	lw	s2,16(a1)
   1583a:	01062983          	lw	s3,16(a2)
   1583e:	ca26                	sw	s1,20(sp)
   15840:	c452                	sw	s4,8(sp)
   15842:	ce06                	sw	ra,28(sp)
   15844:	cc22                	sw	s0,24(sp)
   15846:	8a2e                	mv	s4,a1
   15848:	84b2                	mv	s1,a2
   1584a:	01394763          	blt	s2,s3,15858 <__multiply+0x28>
   1584e:	874e                	mv	a4,s3
   15850:	84ae                	mv	s1,a1
   15852:	89ca                	mv	s3,s2
   15854:	8a32                	mv	s4,a2
   15856:	893a                	mv	s2,a4
   15858:	449c                	lw	a5,8(s1)
   1585a:	40cc                	lw	a1,4(s1)
   1585c:	01298433          	add	s0,s3,s2
   15860:	0087a7b3          	slt	a5,a5,s0
   15864:	95be                	add	a1,a1,a5
   15866:	c61ff0ef          	jal	154c6 <_Balloc>
   1586a:	14050363          	beqz	a0,159b0 <__multiply+0x180>
   1586e:	01450313          	addi	t1,a0,20
   15872:	00241893          	slli	a7,s0,0x2
   15876:	989a                	add	a7,a7,t1
   15878:	879a                	mv	a5,t1
   1587a:	01137763          	bgeu	t1,a7,15888 <__multiply+0x58>
   1587e:	0007a023          	sw	zero,0(a5)
   15882:	0791                	addi	a5,a5,4
   15884:	ff17ede3          	bltu	a5,a7,1587e <__multiply+0x4e>
   15888:	014a0813          	addi	a6,s4,20
   1588c:	00291e13          	slli	t3,s2,0x2
   15890:	01448e93          	addi	t4,s1,20
   15894:	00299593          	slli	a1,s3,0x2
   15898:	9e42                	add	t3,t3,a6
   1589a:	95f6                	add	a1,a1,t4
   1589c:	0fc87163          	bgeu	a6,t3,1597e <__multiply+0x14e>
   158a0:	01548793          	addi	a5,s1,21
   158a4:	4f11                	li	t5,4
   158a6:	0ef5fe63          	bgeu	a1,a5,159a2 <__multiply+0x172>
   158aa:	66c1                	lui	a3,0x10
   158ac:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   158ae:	a809                	j	158c0 <__multiply+0x90>
   158b0:	010fdf93          	srli	t6,t6,0x10
   158b4:	060f9863          	bnez	t6,15924 <__multiply+0xf4>
   158b8:	0811                	addi	a6,a6,4
   158ba:	0311                	addi	t1,t1,4
   158bc:	0dc87163          	bgeu	a6,t3,1597e <__multiply+0x14e>
   158c0:	00082f83          	lw	t6,0(a6)
   158c4:	00dff3b3          	and	t2,t6,a3
   158c8:	fe0384e3          	beqz	t2,158b0 <__multiply+0x80>
   158cc:	829a                	mv	t0,t1
   158ce:	8ff6                	mv	t6,t4
   158d0:	4481                	li	s1,0
   158d2:	000fa783          	lw	a5,0(t6)
   158d6:	0002a603          	lw	a2,0(t0) # 10d96 <memset+0x8e>
   158da:	0291                	addi	t0,t0,4
   158dc:	00d7f733          	and	a4,a5,a3
   158e0:	02770733          	mul	a4,a4,t2
   158e4:	83c1                	srli	a5,a5,0x10
   158e6:	00d67933          	and	s2,a2,a3
   158ea:	8241                	srli	a2,a2,0x10
   158ec:	0f91                	addi	t6,t6,4
   158ee:	027787b3          	mul	a5,a5,t2
   158f2:	974a                	add	a4,a4,s2
   158f4:	9726                	add	a4,a4,s1
   158f6:	01075493          	srli	s1,a4,0x10
   158fa:	8f75                	and	a4,a4,a3
   158fc:	97b2                	add	a5,a5,a2
   158fe:	97a6                	add	a5,a5,s1
   15900:	01079613          	slli	a2,a5,0x10
   15904:	8f51                	or	a4,a4,a2
   15906:	fee2ae23          	sw	a4,-4(t0)
   1590a:	0107d493          	srli	s1,a5,0x10
   1590e:	fcbfe2e3          	bltu	t6,a1,158d2 <__multiply+0xa2>
   15912:	01e307b3          	add	a5,t1,t5
   15916:	c384                	sw	s1,0(a5)
   15918:	00082f83          	lw	t6,0(a6)
   1591c:	010fdf93          	srli	t6,t6,0x10
   15920:	f80f8ce3          	beqz	t6,158b8 <__multiply+0x88>
   15924:	00032703          	lw	a4,0(t1)
   15928:	829a                	mv	t0,t1
   1592a:	8676                	mv	a2,t4
   1592c:	84ba                	mv	s1,a4
   1592e:	4381                	li	t2,0
   15930:	421c                	lw	a5,0(a2)
   15932:	0104d993          	srli	s3,s1,0x10
   15936:	8f75                	and	a4,a4,a3
   15938:	8ff5                	and	a5,a5,a3
   1593a:	03f787b3          	mul	a5,a5,t6
   1593e:	0042a483          	lw	s1,4(t0)
   15942:	0291                	addi	t0,t0,4
   15944:	0611                	addi	a2,a2,4
   15946:	00d4f933          	and	s2,s1,a3
   1594a:	979e                	add	a5,a5,t2
   1594c:	97ce                	add	a5,a5,s3
   1594e:	01079393          	slli	t2,a5,0x10
   15952:	00e3e733          	or	a4,t2,a4
   15956:	fee2ae23          	sw	a4,-4(t0)
   1595a:	ffe65703          	lhu	a4,-2(a2)
   1595e:	83c1                	srli	a5,a5,0x10
   15960:	03f70733          	mul	a4,a4,t6
   15964:	974a                	add	a4,a4,s2
   15966:	973e                	add	a4,a4,a5
   15968:	01075393          	srli	t2,a4,0x10
   1596c:	fcb662e3          	bltu	a2,a1,15930 <__multiply+0x100>
   15970:	01e307b3          	add	a5,t1,t5
   15974:	c398                	sw	a4,0(a5)
   15976:	0811                	addi	a6,a6,4
   15978:	0311                	addi	t1,t1,4
   1597a:	f5c863e3          	bltu	a6,t3,158c0 <__multiply+0x90>
   1597e:	00804563          	bgtz	s0,15988 <__multiply+0x158>
   15982:	a039                	j	15990 <__multiply+0x160>
   15984:	147d                	addi	s0,s0,-1
   15986:	c409                	beqz	s0,15990 <__multiply+0x160>
   15988:	ffc8a783          	lw	a5,-4(a7)
   1598c:	18f1                	addi	a7,a7,-4
   1598e:	dbfd                	beqz	a5,15984 <__multiply+0x154>
   15990:	40f2                	lw	ra,28(sp)
   15992:	c900                	sw	s0,16(a0)
   15994:	4462                	lw	s0,24(sp)
   15996:	44d2                	lw	s1,20(sp)
   15998:	4942                	lw	s2,16(sp)
   1599a:	49b2                	lw	s3,12(sp)
   1599c:	4a22                	lw	s4,8(sp)
   1599e:	6105                	addi	sp,sp,32
   159a0:	8082                	ret
   159a2:	409587b3          	sub	a5,a1,s1
   159a6:	17ad                	addi	a5,a5,-21
   159a8:	9bf1                	andi	a5,a5,-4
   159aa:	00478f13          	addi	t5,a5,4
   159ae:	bdf5                	j	158aa <__multiply+0x7a>
   159b0:	66e9                	lui	a3,0x1a
   159b2:	6569                	lui	a0,0x1a
   159b4:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   159b8:	4601                	li	a2,0
   159ba:	16200593          	li	a1,354
   159be:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   159c2:	6a1000ef          	jal	16862 <__assert_func>

000159c6 <__pow5mult>:
   159c6:	1101                	addi	sp,sp,-32
   159c8:	cc22                	sw	s0,24(sp)
   159ca:	c84a                	sw	s2,16(sp)
   159cc:	c64e                	sw	s3,12(sp)
   159ce:	ce06                	sw	ra,28(sp)
   159d0:	00367793          	andi	a5,a2,3
   159d4:	8432                	mv	s0,a2
   159d6:	89aa                	mv	s3,a0
   159d8:	892e                	mv	s2,a1
   159da:	ebad                	bnez	a5,15a4c <__pow5mult+0x86>
   159dc:	8409                	srai	s0,s0,0x2
   159de:	c431                	beqz	s0,15a2a <__pow5mult+0x64>
   159e0:	ca26                	sw	s1,20(sp)
   159e2:	0409a483          	lw	s1,64(s3)
   159e6:	ccbd                	beqz	s1,15a64 <__pow5mult+0x9e>
   159e8:	00147793          	andi	a5,s0,1
   159ec:	eb89                	bnez	a5,159fe <__pow5mult+0x38>
   159ee:	8405                	srai	s0,s0,0x1
   159f0:	cc05                	beqz	s0,15a28 <__pow5mult+0x62>
   159f2:	4088                	lw	a0,0(s1)
   159f4:	c131                	beqz	a0,15a38 <__pow5mult+0x72>
   159f6:	84aa                	mv	s1,a0
   159f8:	00147793          	andi	a5,s0,1
   159fc:	dbed                	beqz	a5,159ee <__pow5mult+0x28>
   159fe:	8626                	mv	a2,s1
   15a00:	85ca                	mv	a1,s2
   15a02:	854e                	mv	a0,s3
   15a04:	e2dff0ef          	jal	15830 <__multiply>
   15a08:	00090d63          	beqz	s2,15a22 <__pow5mult+0x5c>
   15a0c:	00492703          	lw	a4,4(s2)
   15a10:	0449a783          	lw	a5,68(s3)
   15a14:	070a                	slli	a4,a4,0x2
   15a16:	97ba                	add	a5,a5,a4
   15a18:	4398                	lw	a4,0(a5)
   15a1a:	00e92023          	sw	a4,0(s2)
   15a1e:	0127a023          	sw	s2,0(a5)
   15a22:	8405                	srai	s0,s0,0x1
   15a24:	892a                	mv	s2,a0
   15a26:	f471                	bnez	s0,159f2 <__pow5mult+0x2c>
   15a28:	44d2                	lw	s1,20(sp)
   15a2a:	40f2                	lw	ra,28(sp)
   15a2c:	4462                	lw	s0,24(sp)
   15a2e:	49b2                	lw	s3,12(sp)
   15a30:	854a                	mv	a0,s2
   15a32:	4942                	lw	s2,16(sp)
   15a34:	6105                	addi	sp,sp,32
   15a36:	8082                	ret
   15a38:	8626                	mv	a2,s1
   15a3a:	85a6                	mv	a1,s1
   15a3c:	854e                	mv	a0,s3
   15a3e:	df3ff0ef          	jal	15830 <__multiply>
   15a42:	c088                	sw	a0,0(s1)
   15a44:	00052023          	sw	zero,0(a0)
   15a48:	84aa                	mv	s1,a0
   15a4a:	b77d                	j	159f8 <__pow5mult+0x32>
   15a4c:	17fd                	addi	a5,a5,-1
   15a4e:	6769                	lui	a4,0x1a
   15a50:	6b070713          	addi	a4,a4,1712 # 1a6b0 <p05.0>
   15a54:	078a                	slli	a5,a5,0x2
   15a56:	97ba                	add	a5,a5,a4
   15a58:	4390                	lw	a2,0(a5)
   15a5a:	4681                	li	a3,0
   15a5c:	ae9ff0ef          	jal	15544 <__multadd>
   15a60:	892a                	mv	s2,a0
   15a62:	bfad                	j	159dc <__pow5mult+0x16>
   15a64:	4585                	li	a1,1
   15a66:	854e                	mv	a0,s3
   15a68:	a5fff0ef          	jal	154c6 <_Balloc>
   15a6c:	84aa                	mv	s1,a0
   15a6e:	c919                	beqz	a0,15a84 <__pow5mult+0xbe>
   15a70:	27100793          	li	a5,625
   15a74:	c95c                	sw	a5,20(a0)
   15a76:	4785                	li	a5,1
   15a78:	c91c                	sw	a5,16(a0)
   15a7a:	04a9a023          	sw	a0,64(s3)
   15a7e:	00052023          	sw	zero,0(a0)
   15a82:	b79d                	j	159e8 <__pow5mult+0x22>
   15a84:	66e9                	lui	a3,0x1a
   15a86:	6569                	lui	a0,0x1a
   15a88:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   15a8c:	4601                	li	a2,0
   15a8e:	14500593          	li	a1,325
   15a92:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   15a96:	5cd000ef          	jal	16862 <__assert_func>

00015a9a <__lshift>:
   15a9a:	1101                	addi	sp,sp,-32
   15a9c:	c256                	sw	s5,4(sp)
   15a9e:	0105aa83          	lw	s5,16(a1)
   15aa2:	459c                	lw	a5,8(a1)
   15aa4:	c64e                	sw	s3,12(sp)
   15aa6:	40565993          	srai	s3,a2,0x5
   15aaa:	9ace                	add	s5,s5,s3
   15aac:	cc22                	sw	s0,24(sp)
   15aae:	ca26                	sw	s1,20(sp)
   15ab0:	c84a                	sw	s2,16(sp)
   15ab2:	c452                	sw	s4,8(sp)
   15ab4:	ce06                	sw	ra,28(sp)
   15ab6:	001a8913          	addi	s2,s5,1
   15aba:	84ae                	mv	s1,a1
   15abc:	8432                	mv	s0,a2
   15abe:	41cc                	lw	a1,4(a1)
   15ac0:	8a2a                	mv	s4,a0
   15ac2:	0127d663          	bge	a5,s2,15ace <__lshift+0x34>
   15ac6:	0786                	slli	a5,a5,0x1
   15ac8:	0585                	addi	a1,a1,1
   15aca:	ff27cee3          	blt	a5,s2,15ac6 <__lshift+0x2c>
   15ace:	8552                	mv	a0,s4
   15ad0:	9f7ff0ef          	jal	154c6 <_Balloc>
   15ad4:	cd5d                	beqz	a0,15b92 <__lshift+0xf8>
   15ad6:	01450813          	addi	a6,a0,20
   15ada:	01305e63          	blez	s3,15af6 <__lshift+0x5c>
   15ade:	0995                	addi	s3,s3,5
   15ae0:	098a                	slli	s3,s3,0x2
   15ae2:	01350733          	add	a4,a0,s3
   15ae6:	87c2                	mv	a5,a6
   15ae8:	0791                	addi	a5,a5,4
   15aea:	fe07ae23          	sw	zero,-4(a5)
   15aee:	fee79de3          	bne	a5,a4,15ae8 <__lshift+0x4e>
   15af2:	19b1                	addi	s3,s3,-20
   15af4:	984e                	add	a6,a6,s3
   15af6:	0104a883          	lw	a7,16(s1)
   15afa:	01448793          	addi	a5,s1,20
   15afe:	01f47613          	andi	a2,s0,31
   15b02:	088a                	slli	a7,a7,0x2
   15b04:	98be                	add	a7,a7,a5
   15b06:	c63d                	beqz	a2,15b74 <__lshift+0xda>
   15b08:	02000593          	li	a1,32
   15b0c:	8d91                	sub	a1,a1,a2
   15b0e:	8342                	mv	t1,a6
   15b10:	4681                	li	a3,0
   15b12:	4398                	lw	a4,0(a5)
   15b14:	0311                	addi	t1,t1,4
   15b16:	0791                	addi	a5,a5,4
   15b18:	00c71733          	sll	a4,a4,a2
   15b1c:	8f55                	or	a4,a4,a3
   15b1e:	fee32e23          	sw	a4,-4(t1)
   15b22:	ffc7a683          	lw	a3,-4(a5)
   15b26:	00b6d6b3          	srl	a3,a3,a1
   15b2a:	ff17e4e3          	bltu	a5,a7,15b12 <__lshift+0x78>
   15b2e:	01548793          	addi	a5,s1,21
   15b32:	4711                	li	a4,4
   15b34:	00f8e863          	bltu	a7,a5,15b44 <__lshift+0xaa>
   15b38:	409887b3          	sub	a5,a7,s1
   15b3c:	17ad                	addi	a5,a5,-21
   15b3e:	9bf1                	andi	a5,a5,-4
   15b40:	00478713          	addi	a4,a5,4
   15b44:	983a                	add	a6,a6,a4
   15b46:	00d82023          	sw	a3,0(a6)
   15b4a:	e291                	bnez	a3,15b4e <__lshift+0xb4>
   15b4c:	8956                	mv	s2,s5
   15b4e:	40d8                	lw	a4,4(s1)
   15b50:	044a2783          	lw	a5,68(s4)
   15b54:	40f2                	lw	ra,28(sp)
   15b56:	070a                	slli	a4,a4,0x2
   15b58:	97ba                	add	a5,a5,a4
   15b5a:	4398                	lw	a4,0(a5)
   15b5c:	01252823          	sw	s2,16(a0)
   15b60:	4462                	lw	s0,24(sp)
   15b62:	c098                	sw	a4,0(s1)
   15b64:	c384                	sw	s1,0(a5)
   15b66:	4942                	lw	s2,16(sp)
   15b68:	44d2                	lw	s1,20(sp)
   15b6a:	49b2                	lw	s3,12(sp)
   15b6c:	4a22                	lw	s4,8(sp)
   15b6e:	4a92                	lw	s5,4(sp)
   15b70:	6105                	addi	sp,sp,32
   15b72:	8082                	ret
   15b74:	4398                	lw	a4,0(a5)
   15b76:	0791                	addi	a5,a5,4
   15b78:	0811                	addi	a6,a6,4
   15b7a:	fee82e23          	sw	a4,-4(a6)
   15b7e:	fd17f7e3          	bgeu	a5,a7,15b4c <__lshift+0xb2>
   15b82:	4398                	lw	a4,0(a5)
   15b84:	0791                	addi	a5,a5,4
   15b86:	0811                	addi	a6,a6,4
   15b88:	fee82e23          	sw	a4,-4(a6)
   15b8c:	ff17e4e3          	bltu	a5,a7,15b74 <__lshift+0xda>
   15b90:	bf75                	j	15b4c <__lshift+0xb2>
   15b92:	66e9                	lui	a3,0x1a
   15b94:	6569                	lui	a0,0x1a
   15b96:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   15b9a:	4601                	li	a2,0
   15b9c:	1de00593          	li	a1,478
   15ba0:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   15ba4:	4bf000ef          	jal	16862 <__assert_func>

00015ba8 <__mcmp>:
   15ba8:	4918                	lw	a4,16(a0)
   15baa:	499c                	lw	a5,16(a1)
   15bac:	882a                	mv	a6,a0
   15bae:	40f70533          	sub	a0,a4,a5
   15bb2:	02f71863          	bne	a4,a5,15be2 <__mcmp+0x3a>
   15bb6:	078a                	slli	a5,a5,0x2
   15bb8:	0851                	addi	a6,a6,20
   15bba:	05d1                	addi	a1,a1,20
   15bbc:	00f80733          	add	a4,a6,a5
   15bc0:	97ae                	add	a5,a5,a1
   15bc2:	a019                	j	15bc8 <__mcmp+0x20>
   15bc4:	00e87f63          	bgeu	a6,a4,15be2 <__mcmp+0x3a>
   15bc8:	ffc72603          	lw	a2,-4(a4)
   15bcc:	ffc7a683          	lw	a3,-4(a5)
   15bd0:	1771                	addi	a4,a4,-4
   15bd2:	17f1                	addi	a5,a5,-4
   15bd4:	fed608e3          	beq	a2,a3,15bc4 <__mcmp+0x1c>
   15bd8:	4505                	li	a0,1
   15bda:	00d67463          	bgeu	a2,a3,15be2 <__mcmp+0x3a>
   15bde:	557d                	li	a0,-1
   15be0:	8082                	ret
   15be2:	8082                	ret

00015be4 <__mdiff>:
   15be4:	4998                	lw	a4,16(a1)
   15be6:	4a1c                	lw	a5,16(a2)
   15be8:	1141                	addi	sp,sp,-16
   15bea:	c422                	sw	s0,8(sp)
   15bec:	c226                	sw	s1,4(sp)
   15bee:	c606                	sw	ra,12(sp)
   15bf0:	c04a                	sw	s2,0(sp)
   15bf2:	842e                	mv	s0,a1
   15bf4:	84b2                	mv	s1,a2
   15bf6:	40f706b3          	sub	a3,a4,a5
   15bfa:	12f71863          	bne	a4,a5,15d2a <__mdiff+0x146>
   15bfe:	00279693          	slli	a3,a5,0x2
   15c02:	01458613          	addi	a2,a1,20
   15c06:	01448713          	addi	a4,s1,20
   15c0a:	00d607b3          	add	a5,a2,a3
   15c0e:	9736                	add	a4,a4,a3
   15c10:	a019                	j	15c16 <__mdiff+0x32>
   15c12:	12f67463          	bgeu	a2,a5,15d3a <__mdiff+0x156>
   15c16:	ffc7a583          	lw	a1,-4(a5)
   15c1a:	ffc72683          	lw	a3,-4(a4)
   15c1e:	17f1                	addi	a5,a5,-4
   15c20:	1771                	addi	a4,a4,-4
   15c22:	fed588e3          	beq	a1,a3,15c12 <__mdiff+0x2e>
   15c26:	4905                	li	s2,1
   15c28:	00d5e663          	bltu	a1,a3,15c34 <__mdiff+0x50>
   15c2c:	87a6                	mv	a5,s1
   15c2e:	4901                	li	s2,0
   15c30:	84a2                	mv	s1,s0
   15c32:	843e                	mv	s0,a5
   15c34:	40cc                	lw	a1,4(s1)
   15c36:	891ff0ef          	jal	154c6 <_Balloc>
   15c3a:	12050763          	beqz	a0,15d68 <__mdiff+0x184>
   15c3e:	0104a883          	lw	a7,16(s1)
   15c42:	01042283          	lw	t0,16(s0)
   15c46:	01448f93          	addi	t6,s1,20
   15c4a:	00289313          	slli	t1,a7,0x2
   15c4e:	01440813          	addi	a6,s0,20
   15c52:	028a                	slli	t0,t0,0x2
   15c54:	01450593          	addi	a1,a0,20
   15c58:	6e41                	lui	t3,0x10
   15c5a:	01252623          	sw	s2,12(a0)
   15c5e:	937e                	add	t1,t1,t6
   15c60:	92c2                	add	t0,t0,a6
   15c62:	8f2e                	mv	t5,a1
   15c64:	8efe                	mv	t4,t6
   15c66:	4681                	li	a3,0
   15c68:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   15c6a:	000ea703          	lw	a4,0(t4)
   15c6e:	00082603          	lw	a2,0(a6)
   15c72:	0f11                	addi	t5,t5,4
   15c74:	01c777b3          	and	a5,a4,t3
   15c78:	01c673b3          	and	t2,a2,t3
   15c7c:	407787b3          	sub	a5,a5,t2
   15c80:	97b6                	add	a5,a5,a3
   15c82:	8341                	srli	a4,a4,0x10
   15c84:	8241                	srli	a2,a2,0x10
   15c86:	4107d693          	srai	a3,a5,0x10
   15c8a:	8f11                	sub	a4,a4,a2
   15c8c:	9736                	add	a4,a4,a3
   15c8e:	01071693          	slli	a3,a4,0x10
   15c92:	01c7f7b3          	and	a5,a5,t3
   15c96:	8fd5                	or	a5,a5,a3
   15c98:	0811                	addi	a6,a6,4
   15c9a:	feff2e23          	sw	a5,-4(t5)
   15c9e:	0e91                	addi	t4,t4,4
   15ca0:	41075693          	srai	a3,a4,0x10
   15ca4:	fc5863e3          	bltu	a6,t0,15c6a <__mdiff+0x86>
   15ca8:	01540713          	addi	a4,s0,21
   15cac:	40828433          	sub	s0,t0,s0
   15cb0:	142d                	addi	s0,s0,-21
   15cb2:	00e2b2b3          	sltu	t0,t0,a4
   15cb6:	0012cf13          	xori	t5,t0,1
   15cba:	8009                	srli	s0,s0,0x2
   15cbc:	4711                	li	a4,4
   15cbe:	06028a63          	beqz	t0,15d32 <__mdiff+0x14e>
   15cc2:	9fba                	add	t6,t6,a4
   15cc4:	00e58833          	add	a6,a1,a4
   15cc8:	6ec1                	lui	t4,0x10
   15cca:	8e42                	mv	t3,a6
   15ccc:	867e                	mv	a2,t6
   15cce:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   15cd0:	086ff363          	bgeu	t6,t1,15d56 <__mdiff+0x172>
   15cd4:	421c                	lw	a5,0(a2)
   15cd6:	0e11                	addi	t3,t3,4
   15cd8:	0611                	addi	a2,a2,4
   15cda:	01d7f733          	and	a4,a5,t4
   15cde:	9736                	add	a4,a4,a3
   15ce0:	0107d593          	srli	a1,a5,0x10
   15ce4:	8741                	srai	a4,a4,0x10
   15ce6:	972e                	add	a4,a4,a1
   15ce8:	97b6                	add	a5,a5,a3
   15cea:	01d7f7b3          	and	a5,a5,t4
   15cee:	01071693          	slli	a3,a4,0x10
   15cf2:	8fd5                	or	a5,a5,a3
   15cf4:	fefe2e23          	sw	a5,-4(t3)
   15cf8:	41075693          	srai	a3,a4,0x10
   15cfc:	fc666ce3          	bltu	a2,t1,15cd4 <__mdiff+0xf0>
   15d00:	137d                	addi	t1,t1,-1
   15d02:	41f30333          	sub	t1,t1,t6
   15d06:	ffc37313          	andi	t1,t1,-4
   15d0a:	00680733          	add	a4,a6,t1
   15d0e:	e791                	bnez	a5,15d1a <__mdiff+0x136>
   15d10:	ffc72783          	lw	a5,-4(a4)
   15d14:	18fd                	addi	a7,a7,-1
   15d16:	1771                	addi	a4,a4,-4
   15d18:	dfe5                	beqz	a5,15d10 <__mdiff+0x12c>
   15d1a:	40b2                	lw	ra,12(sp)
   15d1c:	4422                	lw	s0,8(sp)
   15d1e:	01152823          	sw	a7,16(a0)
   15d22:	4492                	lw	s1,4(sp)
   15d24:	4902                	lw	s2,0(sp)
   15d26:	0141                	addi	sp,sp,16
   15d28:	8082                	ret
   15d2a:	4905                	li	s2,1
   15d2c:	f006d0e3          	bgez	a3,15c2c <__mdiff+0x48>
   15d30:	b711                	j	15c34 <__mdiff+0x50>
   15d32:	00140713          	addi	a4,s0,1
   15d36:	070a                	slli	a4,a4,0x2
   15d38:	b769                	j	15cc2 <__mdiff+0xde>
   15d3a:	4581                	li	a1,0
   15d3c:	f8aff0ef          	jal	154c6 <_Balloc>
   15d40:	cd1d                	beqz	a0,15d7e <__mdiff+0x19a>
   15d42:	40b2                	lw	ra,12(sp)
   15d44:	4422                	lw	s0,8(sp)
   15d46:	4785                	li	a5,1
   15d48:	c91c                	sw	a5,16(a0)
   15d4a:	00052a23          	sw	zero,20(a0)
   15d4e:	4492                	lw	s1,4(sp)
   15d50:	4902                	lw	s2,0(sp)
   15d52:	0141                	addi	sp,sp,16
   15d54:	8082                	ret
   15d56:	4701                	li	a4,0
   15d58:	000f1463          	bnez	t5,15d60 <__mdiff+0x17c>
   15d5c:	972e                	add	a4,a4,a1
   15d5e:	bf45                	j	15d0e <__mdiff+0x12a>
   15d60:	00241713          	slli	a4,s0,0x2
   15d64:	972e                	add	a4,a4,a1
   15d66:	b765                	j	15d0e <__mdiff+0x12a>
   15d68:	66e9                	lui	a3,0x1a
   15d6a:	6569                	lui	a0,0x1a
   15d6c:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   15d70:	4601                	li	a2,0
   15d72:	24500593          	li	a1,581
   15d76:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   15d7a:	2e9000ef          	jal	16862 <__assert_func>
   15d7e:	66e9                	lui	a3,0x1a
   15d80:	6569                	lui	a0,0x1a
   15d82:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   15d86:	4601                	li	a2,0
   15d88:	23700593          	li	a1,567
   15d8c:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   15d90:	2d3000ef          	jal	16862 <__assert_func>

00015d94 <__ulp>:
   15d94:	1141                	addi	sp,sp,-16
   15d96:	a42a                	fsd	fa0,8(sp)
   15d98:	4732                	lw	a4,12(sp)
   15d9a:	7ff007b7          	lui	a5,0x7ff00
   15d9e:	8ff9                	and	a5,a5,a4
   15da0:	fcc00737          	lui	a4,0xfcc00
   15da4:	97ba                	add	a5,a5,a4
   15da6:	4701                	li	a4,0
   15da8:	00f05763          	blez	a5,15db6 <__ulp+0x22>
   15dac:	c43a                	sw	a4,8(sp)
   15dae:	c63e                	sw	a5,12(sp)
   15db0:	2522                	fld	fa0,8(sp)
   15db2:	0141                	addi	sp,sp,16
   15db4:	8082                	ret
   15db6:	40f007b3          	neg	a5,a5
   15dba:	87d1                	srai	a5,a5,0x14
   15dbc:	474d                	li	a4,19
   15dbe:	00f74c63          	blt	a4,a5,15dd6 <__ulp+0x42>
   15dc2:	00080737          	lui	a4,0x80
   15dc6:	40f757b3          	sra	a5,a4,a5
   15dca:	4701                	li	a4,0
   15dcc:	c43a                	sw	a4,8(sp)
   15dce:	c63e                	sw	a5,12(sp)
   15dd0:	2522                	fld	fa0,8(sp)
   15dd2:	0141                	addi	sp,sp,16
   15dd4:	8082                	ret
   15dd6:	17b1                	addi	a5,a5,-20 # 7fefffec <__BSS_END__+0x7fee4590>
   15dd8:	46f9                	li	a3,30
   15dda:	4705                	li	a4,1
   15ddc:	00f6c663          	blt	a3,a5,15de8 <__ulp+0x54>
   15de0:	80000737          	lui	a4,0x80000
   15de4:	00f75733          	srl	a4,a4,a5
   15de8:	4781                	li	a5,0
   15dea:	c43a                	sw	a4,8(sp)
   15dec:	c63e                	sw	a5,12(sp)
   15dee:	2522                	fld	fa0,8(sp)
   15df0:	0141                	addi	sp,sp,16
   15df2:	8082                	ret

00015df4 <__b2d>:
   15df4:	7179                	addi	sp,sp,-48
   15df6:	d226                	sw	s1,36(sp)
   15df8:	4904                	lw	s1,16(a0)
   15dfa:	d422                	sw	s0,40(sp)
   15dfc:	01450413          	addi	s0,a0,20
   15e00:	048a                	slli	s1,s1,0x2
   15e02:	94a2                	add	s1,s1,s0
   15e04:	d04a                	sw	s2,32(sp)
   15e06:	ffc4a903          	lw	s2,-4(s1)
   15e0a:	ce4e                	sw	s3,28(sp)
   15e0c:	cc52                	sw	s4,24(sp)
   15e0e:	854a                	mv	a0,s2
   15e10:	89ae                	mv	s3,a1
   15e12:	d606                	sw	ra,44(sp)
   15e14:	8d7ff0ef          	jal	156ea <__hi0bits>
   15e18:	02000713          	li	a4,32
   15e1c:	40a707b3          	sub	a5,a4,a0
   15e20:	00f9a023          	sw	a5,0(s3)
   15e24:	47a9                	li	a5,10
   15e26:	ffc48a13          	addi	s4,s1,-4
   15e2a:	06a7dc63          	bge	a5,a0,15ea2 <__b2d+0xae>
   15e2e:	ff550613          	addi	a2,a0,-11
   15e32:	03447d63          	bgeu	s0,s4,15e6c <__b2d+0x78>
   15e36:	ff84a783          	lw	a5,-8(s1)
   15e3a:	c629                	beqz	a2,15e84 <__b2d+0x90>
   15e3c:	40c706b3          	sub	a3,a4,a2
   15e40:	00d7d733          	srl	a4,a5,a3
   15e44:	00c91933          	sll	s2,s2,a2
   15e48:	00e96933          	or	s2,s2,a4
   15e4c:	ff848593          	addi	a1,s1,-8
   15e50:	3ff00737          	lui	a4,0x3ff00
   15e54:	00e96733          	or	a4,s2,a4
   15e58:	00c797b3          	sll	a5,a5,a2
   15e5c:	02b47863          	bgeu	s0,a1,15e8c <__b2d+0x98>
   15e60:	ff44a603          	lw	a2,-12(s1)
   15e64:	00d656b3          	srl	a3,a2,a3
   15e68:	8fd5                	or	a5,a5,a3
   15e6a:	a00d                	j	15e8c <__b2d+0x98>
   15e6c:	47ad                	li	a5,11
   15e6e:	00f50a63          	beq	a0,a5,15e82 <__b2d+0x8e>
   15e72:	00c91933          	sll	s2,s2,a2
   15e76:	3ff00737          	lui	a4,0x3ff00
   15e7a:	00e96733          	or	a4,s2,a4
   15e7e:	4781                	li	a5,0
   15e80:	a031                	j	15e8c <__b2d+0x98>
   15e82:	4781                	li	a5,0
   15e84:	3ff00737          	lui	a4,0x3ff00
   15e88:	00e96733          	or	a4,s2,a4
   15e8c:	50b2                	lw	ra,44(sp)
   15e8e:	5422                	lw	s0,40(sp)
   15e90:	c43e                	sw	a5,8(sp)
   15e92:	c63a                	sw	a4,12(sp)
   15e94:	2522                	fld	fa0,8(sp)
   15e96:	5492                	lw	s1,36(sp)
   15e98:	5902                	lw	s2,32(sp)
   15e9a:	49f2                	lw	s3,28(sp)
   15e9c:	4a62                	lw	s4,24(sp)
   15e9e:	6145                	addi	sp,sp,48
   15ea0:	8082                	ret
   15ea2:	46ad                	li	a3,11
   15ea4:	8e89                	sub	a3,a3,a0
   15ea6:	3ff007b7          	lui	a5,0x3ff00
   15eaa:	00d95733          	srl	a4,s2,a3
   15eae:	8f5d                	or	a4,a4,a5
   15eb0:	4781                	li	a5,0
   15eb2:	01447663          	bgeu	s0,s4,15ebe <__b2d+0xca>
   15eb6:	ff84a783          	lw	a5,-8(s1)
   15eba:	00d7d7b3          	srl	a5,a5,a3
   15ebe:	0555                	addi	a0,a0,21
   15ec0:	00a91933          	sll	s2,s2,a0
   15ec4:	00f967b3          	or	a5,s2,a5
   15ec8:	b7d1                	j	15e8c <__b2d+0x98>

00015eca <__d2b>:
   15eca:	7139                	addi	sp,sp,-64
   15ecc:	d452                	sw	s4,40(sp)
   15ece:	a42a                	fsd	fa0,8(sp)
   15ed0:	8a2e                	mv	s4,a1
   15ed2:	4585                	li	a1,1
   15ed4:	da26                	sw	s1,52(sp)
   15ed6:	d64e                	sw	s3,44(sp)
   15ed8:	d256                	sw	s5,36(sp)
   15eda:	de06                	sw	ra,60(sp)
   15edc:	dc22                	sw	s0,56(sp)
   15ede:	d84a                	sw	s2,48(sp)
   15ee0:	4aa2                	lw	s5,8(sp)
   15ee2:	44b2                	lw	s1,12(sp)
   15ee4:	89b2                	mv	s3,a2
   15ee6:	de0ff0ef          	jal	154c6 <_Balloc>
   15eea:	c955                	beqz	a0,15f9e <__d2b+0xd4>
   15eec:	00100737          	lui	a4,0x100
   15ef0:	0144d913          	srli	s2,s1,0x14
   15ef4:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe45a3>
   15ef8:	7ff97913          	andi	s2,s2,2047
   15efc:	842a                	mv	s0,a0
   15efe:	8fe5                	and	a5,a5,s1
   15f00:	00090363          	beqz	s2,15f06 <__d2b+0x3c>
   15f04:	8fd9                	or	a5,a5,a4
   15f06:	ce3e                	sw	a5,28(sp)
   15f08:	040a9263          	bnez	s5,15f4c <__d2b+0x82>
   15f0c:	0868                	addi	a0,sp,28
   15f0e:	831ff0ef          	jal	1573e <__lo0bits>
   15f12:	4772                	lw	a4,28(sp)
   15f14:	4485                	li	s1,1
   15f16:	c804                	sw	s1,16(s0)
   15f18:	c858                	sw	a4,20(s0)
   15f1a:	02050793          	addi	a5,a0,32
   15f1e:	06090063          	beqz	s2,15f7e <__d2b+0xb4>
   15f22:	bcd90913          	addi	s2,s2,-1075
   15f26:	993e                	add	s2,s2,a5
   15f28:	03500493          	li	s1,53
   15f2c:	012a2023          	sw	s2,0(s4)
   15f30:	40f48533          	sub	a0,s1,a5
   15f34:	00a9a023          	sw	a0,0(s3)
   15f38:	50f2                	lw	ra,60(sp)
   15f3a:	8522                	mv	a0,s0
   15f3c:	5462                	lw	s0,56(sp)
   15f3e:	54d2                	lw	s1,52(sp)
   15f40:	5942                	lw	s2,48(sp)
   15f42:	59b2                	lw	s3,44(sp)
   15f44:	5a22                	lw	s4,40(sp)
   15f46:	5a92                	lw	s5,36(sp)
   15f48:	6121                	addi	sp,sp,64
   15f4a:	8082                	ret
   15f4c:	0828                	addi	a0,sp,24
   15f4e:	cc56                	sw	s5,24(sp)
   15f50:	feeff0ef          	jal	1573e <__lo0bits>
   15f54:	4772                	lw	a4,28(sp)
   15f56:	87aa                	mv	a5,a0
   15f58:	c129                	beqz	a0,15f9a <__d2b+0xd0>
   15f5a:	4662                	lw	a2,24(sp)
   15f5c:	02000693          	li	a3,32
   15f60:	8e89                	sub	a3,a3,a0
   15f62:	00d716b3          	sll	a3,a4,a3
   15f66:	00a75733          	srl	a4,a4,a0
   15f6a:	8ed1                	or	a3,a3,a2
   15f6c:	ce3a                	sw	a4,28(sp)
   15f6e:	00e034b3          	snez	s1,a4
   15f72:	0485                	addi	s1,s1,1
   15f74:	c854                	sw	a3,20(s0)
   15f76:	cc18                	sw	a4,24(s0)
   15f78:	c804                	sw	s1,16(s0)
   15f7a:	fa0914e3          	bnez	s2,15f22 <__d2b+0x58>
   15f7e:	00249713          	slli	a4,s1,0x2
   15f82:	9722                	add	a4,a4,s0
   15f84:	4b08                	lw	a0,16(a4)
   15f86:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee4172>
   15f8a:	00fa2023          	sw	a5,0(s4)
   15f8e:	f5cff0ef          	jal	156ea <__hi0bits>
   15f92:	0496                	slli	s1,s1,0x5
   15f94:	40a48533          	sub	a0,s1,a0
   15f98:	bf71                	j	15f34 <__d2b+0x6a>
   15f9a:	46e2                	lw	a3,24(sp)
   15f9c:	bfc9                	j	15f6e <__d2b+0xa4>
   15f9e:	66e9                	lui	a3,0x1a
   15fa0:	6569                	lui	a0,0x1a
   15fa2:	23c68693          	addi	a3,a3,572 # 1a23c <__clzsi2+0x11c>
   15fa6:	4601                	li	a2,0
   15fa8:	30f00593          	li	a1,783
   15fac:	2b050513          	addi	a0,a0,688 # 1a2b0 <__clzsi2+0x190>
   15fb0:	0b3000ef          	jal	16862 <__assert_func>

00015fb4 <__ratio>:
   15fb4:	7179                	addi	sp,sp,-48
   15fb6:	d422                	sw	s0,40(sp)
   15fb8:	842e                	mv	s0,a1
   15fba:	082c                	addi	a1,sp,24
   15fbc:	d606                	sw	ra,44(sp)
   15fbe:	d226                	sw	s1,36(sp)
   15fc0:	84aa                	mv	s1,a0
   15fc2:	e33ff0ef          	jal	15df4 <__b2d>
   15fc6:	086c                	addi	a1,sp,28
   15fc8:	8522                	mv	a0,s0
   15fca:	a02a                	fsd	fa0,0(sp)
   15fcc:	a42a                	fsd	fa0,8(sp)
   15fce:	e27ff0ef          	jal	15df4 <__b2d>
   15fd2:	4818                	lw	a4,16(s0)
   15fd4:	489c                	lw	a5,16(s1)
   15fd6:	45f2                	lw	a1,28(sp)
   15fd8:	a02a                	fsd	fa0,0(sp)
   15fda:	8f99                	sub	a5,a5,a4
   15fdc:	4762                	lw	a4,24(sp)
   15fde:	0796                	slli	a5,a5,0x5
   15fe0:	8f0d                	sub	a4,a4,a1
   15fe2:	97ba                	add	a5,a5,a4
   15fe4:	00f05f63          	blez	a5,16002 <__ratio+0x4e>
   15fe8:	46b2                	lw	a3,12(sp)
   15fea:	07d2                	slli	a5,a5,0x14
   15fec:	2702                	fld	fa4,0(sp)
   15fee:	97b6                	add	a5,a5,a3
   15ff0:	c63e                	sw	a5,12(sp)
   15ff2:	27a2                	fld	fa5,8(sp)
   15ff4:	50b2                	lw	ra,44(sp)
   15ff6:	5422                	lw	s0,40(sp)
   15ff8:	5492                	lw	s1,36(sp)
   15ffa:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15ffe:	6145                	addi	sp,sp,48
   16000:	8082                	ret
   16002:	4692                	lw	a3,4(sp)
   16004:	07d2                	slli	a5,a5,0x14
   16006:	27a2                	fld	fa5,8(sp)
   16008:	40f687b3          	sub	a5,a3,a5
   1600c:	c23e                	sw	a5,4(sp)
   1600e:	2702                	fld	fa4,0(sp)
   16010:	50b2                	lw	ra,44(sp)
   16012:	5422                	lw	s0,40(sp)
   16014:	5492                	lw	s1,36(sp)
   16016:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   1601a:	6145                	addi	sp,sp,48
   1601c:	8082                	ret

0001601e <_mprec_log10>:
   1601e:	47dd                	li	a5,23
   16020:	00a7db63          	bge	a5,a0,16036 <_mprec_log10+0x18>
   16024:	ed81b507          	fld	fa0,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   16028:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   1602c:	157d                	addi	a0,a0,-1
   1602e:	12f57553          	fmul.d	fa0,fa0,fa5
   16032:	fd6d                	bnez	a0,1602c <_mprec_log10+0xe>
   16034:	8082                	ret
   16036:	67e9                	lui	a5,0x1a
   16038:	050e                	slli	a0,a0,0x3
   1603a:	71078793          	addi	a5,a5,1808 # 1a710 <__mprec_tens>
   1603e:	97aa                	add	a5,a5,a0
   16040:	2388                	fld	fa0,0(a5)
   16042:	8082                	ret

00016044 <__copybits>:
   16044:	4a14                	lw	a3,16(a2)
   16046:	15fd                	addi	a1,a1,-1
   16048:	8595                	srai	a1,a1,0x5
   1604a:	0585                	addi	a1,a1,1
   1604c:	01460793          	addi	a5,a2,20
   16050:	068a                	slli	a3,a3,0x2
   16052:	058a                	slli	a1,a1,0x2
   16054:	96be                	add	a3,a3,a5
   16056:	95aa                	add	a1,a1,a0
   16058:	02d7f163          	bgeu	a5,a3,1607a <__copybits+0x36>
   1605c:	872a                	mv	a4,a0
   1605e:	0007a803          	lw	a6,0(a5)
   16062:	0791                	addi	a5,a5,4
   16064:	0711                	addi	a4,a4,4
   16066:	ff072e23          	sw	a6,-4(a4)
   1606a:	fed7eae3          	bltu	a5,a3,1605e <__copybits+0x1a>
   1606e:	40c687b3          	sub	a5,a3,a2
   16072:	17ad                	addi	a5,a5,-21
   16074:	9bf1                	andi	a5,a5,-4
   16076:	0791                	addi	a5,a5,4
   16078:	953e                	add	a0,a0,a5
   1607a:	00b57763          	bgeu	a0,a1,16088 <__copybits+0x44>
   1607e:	0511                	addi	a0,a0,4
   16080:	fe052e23          	sw	zero,-4(a0)
   16084:	feb56de3          	bltu	a0,a1,1607e <__copybits+0x3a>
   16088:	8082                	ret

0001608a <__any_on>:
   1608a:	4918                	lw	a4,16(a0)
   1608c:	4055d613          	srai	a2,a1,0x5
   16090:	01450693          	addi	a3,a0,20
   16094:	00c75d63          	bge	a4,a2,160ae <__any_on+0x24>
   16098:	070a                	slli	a4,a4,0x2
   1609a:	00e687b3          	add	a5,a3,a4
   1609e:	02f6f863          	bgeu	a3,a5,160ce <__any_on+0x44>
   160a2:	ffc7a703          	lw	a4,-4(a5)
   160a6:	17f1                	addi	a5,a5,-4
   160a8:	db7d                	beqz	a4,1609e <__any_on+0x14>
   160aa:	4505                	li	a0,1
   160ac:	8082                	ret
   160ae:	00261793          	slli	a5,a2,0x2
   160b2:	97b6                	add	a5,a5,a3
   160b4:	fee655e3          	bge	a2,a4,1609e <__any_on+0x14>
   160b8:	89fd                	andi	a1,a1,31
   160ba:	d1f5                	beqz	a1,1609e <__any_on+0x14>
   160bc:	4390                	lw	a2,0(a5)
   160be:	4505                	li	a0,1
   160c0:	00b65733          	srl	a4,a2,a1
   160c4:	00b71733          	sll	a4,a4,a1
   160c8:	fce60be3          	beq	a2,a4,1609e <__any_on+0x14>
   160cc:	8082                	ret
   160ce:	4501                	li	a0,0
   160d0:	8082                	ret

000160d2 <_realloc_r>:
   160d2:	7179                	addi	sp,sp,-48
   160d4:	d226                	sw	s1,36(sp)
   160d6:	d606                	sw	ra,44(sp)
   160d8:	84b2                	mv	s1,a2
   160da:	14058d63          	beqz	a1,16234 <_realloc_r+0x162>
   160de:	d422                	sw	s0,40(sp)
   160e0:	d04a                	sw	s2,32(sp)
   160e2:	842e                	mv	s0,a1
   160e4:	ce4e                	sw	s3,28(sp)
   160e6:	ca56                	sw	s5,20(sp)
   160e8:	cc52                	sw	s4,24(sp)
   160ea:	892a                	mv	s2,a0
   160ec:	e94fb0ef          	jal	11780 <__malloc_lock>
   160f0:	ffc42703          	lw	a4,-4(s0)
   160f4:	00b48793          	addi	a5,s1,11
   160f8:	46d9                	li	a3,22
   160fa:	ff840a93          	addi	s5,s0,-8
   160fe:	ffc77993          	andi	s3,a4,-4
   16102:	0af6ff63          	bgeu	a3,a5,161c0 <_realloc_r+0xee>
   16106:	ff87fa13          	andi	s4,a5,-8
   1610a:	0a07ce63          	bltz	a5,161c6 <_realloc_r+0xf4>
   1610e:	0a9a6c63          	bltu	s4,s1,161c6 <_realloc_r+0xf4>
   16112:	0d49d563          	bge	s3,s4,161dc <_realloc_r+0x10a>
   16116:	67ed                	lui	a5,0x1b
   16118:	c462                	sw	s8,8(sp)
   1611a:	14078c13          	addi	s8,a5,320 # 1b140 <__malloc_av_>
   1611e:	008c2603          	lw	a2,8(s8)
   16122:	013a86b3          	add	a3,s5,s3
   16126:	42dc                	lw	a5,4(a3)
   16128:	12d60e63          	beq	a2,a3,16264 <_realloc_r+0x192>
   1612c:	ffe7f613          	andi	a2,a5,-2
   16130:	9636                	add	a2,a2,a3
   16132:	4250                	lw	a2,4(a2)
   16134:	8a05                	andi	a2,a2,1
   16136:	e27d                	bnez	a2,1621c <_realloc_r+0x14a>
   16138:	9bf1                	andi	a5,a5,-4
   1613a:	00f98633          	add	a2,s3,a5
   1613e:	09465963          	bge	a2,s4,161d0 <_realloc_r+0xfe>
   16142:	8b05                	andi	a4,a4,1
   16144:	e70d                	bnez	a4,1616e <_realloc_r+0x9c>
   16146:	c65e                	sw	s7,12(sp)
   16148:	ff842b83          	lw	s7,-8(s0)
   1614c:	c85a                	sw	s6,16(sp)
   1614e:	417a8bb3          	sub	s7,s5,s7
   16152:	004ba703          	lw	a4,4(s7)
   16156:	9b71                	andi	a4,a4,-4
   16158:	97ba                	add	a5,a5,a4
   1615a:	01378b33          	add	s6,a5,s3
   1615e:	234b5f63          	bge	s6,s4,1639c <_realloc_r+0x2ca>
   16162:	00e98b33          	add	s6,s3,a4
   16166:	1d4b5463          	bge	s6,s4,1632e <_realloc_r+0x25c>
   1616a:	4b42                	lw	s6,16(sp)
   1616c:	4bb2                	lw	s7,12(sp)
   1616e:	85a6                	mv	a1,s1
   16170:	854a                	mv	a0,s2
   16172:	86afb0ef          	jal	111dc <_malloc_r>
   16176:	84aa                	mv	s1,a0
   16178:	2e050063          	beqz	a0,16458 <_realloc_r+0x386>
   1617c:	ffc42783          	lw	a5,-4(s0)
   16180:	ff850713          	addi	a4,a0,-8
   16184:	9bf9                	andi	a5,a5,-2
   16186:	97d6                	add	a5,a5,s5
   16188:	18e78d63          	beq	a5,a4,16322 <_realloc_r+0x250>
   1618c:	ffc98613          	addi	a2,s3,-4
   16190:	02400793          	li	a5,36
   16194:	20c7e063          	bltu	a5,a2,16394 <_realloc_r+0x2c2>
   16198:	474d                	li	a4,19
   1619a:	16c76863          	bltu	a4,a2,1630a <_realloc_r+0x238>
   1619e:	87aa                	mv	a5,a0
   161a0:	8722                	mv	a4,s0
   161a2:	4314                	lw	a3,0(a4)
   161a4:	c394                	sw	a3,0(a5)
   161a6:	4354                	lw	a3,4(a4)
   161a8:	c3d4                	sw	a3,4(a5)
   161aa:	4718                	lw	a4,8(a4)
   161ac:	c798                	sw	a4,8(a5)
   161ae:	85a2                	mv	a1,s0
   161b0:	854a                	mv	a0,s2
   161b2:	e09fa0ef          	jal	10fba <_free_r>
   161b6:	854a                	mv	a0,s2
   161b8:	dcafb0ef          	jal	11782 <__malloc_unlock>
   161bc:	4c22                	lw	s8,8(sp)
   161be:	a0a9                	j	16208 <_realloc_r+0x136>
   161c0:	4a41                	li	s4,16
   161c2:	f49a78e3          	bgeu	s4,s1,16112 <_realloc_r+0x40>
   161c6:	47b1                	li	a5,12
   161c8:	00f92023          	sw	a5,0(s2)
   161cc:	4481                	li	s1,0
   161ce:	a82d                	j	16208 <_realloc_r+0x136>
   161d0:	46dc                	lw	a5,12(a3)
   161d2:	4698                	lw	a4,8(a3)
   161d4:	4c22                	lw	s8,8(sp)
   161d6:	89b2                	mv	s3,a2
   161d8:	c75c                	sw	a5,12(a4)
   161da:	c798                	sw	a4,8(a5)
   161dc:	004aa783          	lw	a5,4(s5)
   161e0:	414986b3          	sub	a3,s3,s4
   161e4:	463d                	li	a2,15
   161e6:	8b85                	andi	a5,a5,1
   161e8:	013a8733          	add	a4,s5,s3
   161ec:	04d66a63          	bltu	a2,a3,16240 <_realloc_r+0x16e>
   161f0:	0137e7b3          	or	a5,a5,s3
   161f4:	00faa223          	sw	a5,4(s5)
   161f8:	435c                	lw	a5,4(a4)
   161fa:	0017e793          	ori	a5,a5,1
   161fe:	c35c                	sw	a5,4(a4)
   16200:	854a                	mv	a0,s2
   16202:	d80fb0ef          	jal	11782 <__malloc_unlock>
   16206:	84a2                	mv	s1,s0
   16208:	5422                	lw	s0,40(sp)
   1620a:	50b2                	lw	ra,44(sp)
   1620c:	5902                	lw	s2,32(sp)
   1620e:	49f2                	lw	s3,28(sp)
   16210:	4a62                	lw	s4,24(sp)
   16212:	4ad2                	lw	s5,20(sp)
   16214:	8526                	mv	a0,s1
   16216:	5492                	lw	s1,36(sp)
   16218:	6145                	addi	sp,sp,48
   1621a:	8082                	ret
   1621c:	8b05                	andi	a4,a4,1
   1621e:	fb21                	bnez	a4,1616e <_realloc_r+0x9c>
   16220:	c65e                	sw	s7,12(sp)
   16222:	ff842b83          	lw	s7,-8(s0)
   16226:	c85a                	sw	s6,16(sp)
   16228:	417a8bb3          	sub	s7,s5,s7
   1622c:	004ba703          	lw	a4,4(s7)
   16230:	9b71                	andi	a4,a4,-4
   16232:	bf05                	j	16162 <_realloc_r+0x90>
   16234:	50b2                	lw	ra,44(sp)
   16236:	5492                	lw	s1,36(sp)
   16238:	85b2                	mv	a1,a2
   1623a:	6145                	addi	sp,sp,48
   1623c:	fa1fa06f          	j	111dc <_malloc_r>
   16240:	0147e7b3          	or	a5,a5,s4
   16244:	00faa223          	sw	a5,4(s5)
   16248:	014a85b3          	add	a1,s5,s4
   1624c:	0016e693          	ori	a3,a3,1
   16250:	c1d4                	sw	a3,4(a1)
   16252:	435c                	lw	a5,4(a4)
   16254:	05a1                	addi	a1,a1,8
   16256:	854a                	mv	a0,s2
   16258:	0017e793          	ori	a5,a5,1
   1625c:	c35c                	sw	a5,4(a4)
   1625e:	d5dfa0ef          	jal	10fba <_free_r>
   16262:	bf79                	j	16200 <_realloc_r+0x12e>
   16264:	9bf1                	andi	a5,a5,-4
   16266:	013786b3          	add	a3,a5,s3
   1626a:	010a0613          	addi	a2,s4,16
   1626e:	1ac6db63          	bge	a3,a2,16424 <_realloc_r+0x352>
   16272:	8b05                	andi	a4,a4,1
   16274:	ee071de3          	bnez	a4,1616e <_realloc_r+0x9c>
   16278:	c65e                	sw	s7,12(sp)
   1627a:	ff842b83          	lw	s7,-8(s0)
   1627e:	c85a                	sw	s6,16(sp)
   16280:	417a8bb3          	sub	s7,s5,s7
   16284:	004ba703          	lw	a4,4(s7)
   16288:	9b71                	andi	a4,a4,-4
   1628a:	97ba                	add	a5,a5,a4
   1628c:	01378b33          	add	s6,a5,s3
   16290:	eccb49e3          	blt	s6,a2,16162 <_realloc_r+0x90>
   16294:	00cba783          	lw	a5,12(s7)
   16298:	008ba703          	lw	a4,8(s7)
   1629c:	ffc98613          	addi	a2,s3,-4
   162a0:	02400693          	li	a3,36
   162a4:	c75c                	sw	a5,12(a4)
   162a6:	c798                	sw	a4,8(a5)
   162a8:	008b8493          	addi	s1,s7,8
   162ac:	1cc6e563          	bltu	a3,a2,16476 <_realloc_r+0x3a4>
   162b0:	474d                	li	a4,19
   162b2:	87a6                	mv	a5,s1
   162b4:	00c77e63          	bgeu	a4,a2,162d0 <_realloc_r+0x1fe>
   162b8:	4018                	lw	a4,0(s0)
   162ba:	47ed                	li	a5,27
   162bc:	00eba423          	sw	a4,8(s7)
   162c0:	4058                	lw	a4,4(s0)
   162c2:	00eba623          	sw	a4,12(s7)
   162c6:	1ac7ed63          	bltu	a5,a2,16480 <_realloc_r+0x3ae>
   162ca:	0421                	addi	s0,s0,8
   162cc:	010b8793          	addi	a5,s7,16
   162d0:	4018                	lw	a4,0(s0)
   162d2:	c398                	sw	a4,0(a5)
   162d4:	4058                	lw	a4,4(s0)
   162d6:	c3d8                	sw	a4,4(a5)
   162d8:	4418                	lw	a4,8(s0)
   162da:	c798                	sw	a4,8(a5)
   162dc:	014b8733          	add	a4,s7,s4
   162e0:	414b0b33          	sub	s6,s6,s4
   162e4:	00ec2423          	sw	a4,8(s8)
   162e8:	001b6793          	ori	a5,s6,1
   162ec:	c35c                	sw	a5,4(a4)
   162ee:	004ba783          	lw	a5,4(s7)
   162f2:	854a                	mv	a0,s2
   162f4:	8b85                	andi	a5,a5,1
   162f6:	0147e7b3          	or	a5,a5,s4
   162fa:	00fba223          	sw	a5,4(s7)
   162fe:	c84fb0ef          	jal	11782 <__malloc_unlock>
   16302:	4b42                	lw	s6,16(sp)
   16304:	4bb2                	lw	s7,12(sp)
   16306:	4c22                	lw	s8,8(sp)
   16308:	b701                	j	16208 <_realloc_r+0x136>
   1630a:	4014                	lw	a3,0(s0)
   1630c:	476d                	li	a4,27
   1630e:	c114                	sw	a3,0(a0)
   16310:	4054                	lw	a3,4(s0)
   16312:	c154                	sw	a3,4(a0)
   16314:	0ec76d63          	bltu	a4,a2,1640e <_realloc_r+0x33c>
   16318:	00840713          	addi	a4,s0,8
   1631c:	00850793          	addi	a5,a0,8
   16320:	b549                	j	161a2 <_realloc_r+0xd0>
   16322:	ffc52783          	lw	a5,-4(a0)
   16326:	4c22                	lw	s8,8(sp)
   16328:	9bf1                	andi	a5,a5,-4
   1632a:	99be                	add	s3,s3,a5
   1632c:	bd45                	j	161dc <_realloc_r+0x10a>
   1632e:	00cba783          	lw	a5,12(s7)
   16332:	008ba703          	lw	a4,8(s7)
   16336:	ffc98613          	addi	a2,s3,-4
   1633a:	02400693          	li	a3,36
   1633e:	c75c                	sw	a5,12(a4)
   16340:	c798                	sw	a4,8(a5)
   16342:	008b8493          	addi	s1,s7,8
   16346:	0ac6ef63          	bltu	a3,a2,16404 <_realloc_r+0x332>
   1634a:	474d                	li	a4,19
   1634c:	87a6                	mv	a5,s1
   1634e:	02c77663          	bgeu	a4,a2,1637a <_realloc_r+0x2a8>
   16352:	4018                	lw	a4,0(s0)
   16354:	47ed                	li	a5,27
   16356:	00eba423          	sw	a4,8(s7)
   1635a:	4058                	lw	a4,4(s0)
   1635c:	00eba623          	sw	a4,12(s7)
   16360:	0ec7f863          	bgeu	a5,a2,16450 <_realloc_r+0x37e>
   16364:	441c                	lw	a5,8(s0)
   16366:	00fba823          	sw	a5,16(s7)
   1636a:	445c                	lw	a5,12(s0)
   1636c:	00fbaa23          	sw	a5,20(s7)
   16370:	06d60f63          	beq	a2,a3,163ee <_realloc_r+0x31c>
   16374:	0441                	addi	s0,s0,16
   16376:	018b8793          	addi	a5,s7,24
   1637a:	4018                	lw	a4,0(s0)
   1637c:	c398                	sw	a4,0(a5)
   1637e:	4058                	lw	a4,4(s0)
   16380:	c3d8                	sw	a4,4(a5)
   16382:	4418                	lw	a4,8(s0)
   16384:	c798                	sw	a4,8(a5)
   16386:	89da                	mv	s3,s6
   16388:	8ade                	mv	s5,s7
   1638a:	4b42                	lw	s6,16(sp)
   1638c:	4bb2                	lw	s7,12(sp)
   1638e:	4c22                	lw	s8,8(sp)
   16390:	8426                	mv	s0,s1
   16392:	b5a9                	j	161dc <_realloc_r+0x10a>
   16394:	85a2                	mv	a1,s0
   16396:	8cffd0ef          	jal	13c64 <memmove>
   1639a:	bd11                	j	161ae <_realloc_r+0xdc>
   1639c:	46dc                	lw	a5,12(a3)
   1639e:	4698                	lw	a4,8(a3)
   163a0:	ffc98613          	addi	a2,s3,-4
   163a4:	02400693          	li	a3,36
   163a8:	c75c                	sw	a5,12(a4)
   163aa:	c798                	sw	a4,8(a5)
   163ac:	008ba703          	lw	a4,8(s7)
   163b0:	00cba783          	lw	a5,12(s7)
   163b4:	008b8493          	addi	s1,s7,8
   163b8:	c75c                	sw	a5,12(a4)
   163ba:	c798                	sw	a4,8(a5)
   163bc:	04c6e463          	bltu	a3,a2,16404 <_realloc_r+0x332>
   163c0:	474d                	li	a4,19
   163c2:	87a6                	mv	a5,s1
   163c4:	fac77be3          	bgeu	a4,a2,1637a <_realloc_r+0x2a8>
   163c8:	4018                	lw	a4,0(s0)
   163ca:	47ed                	li	a5,27
   163cc:	00eba423          	sw	a4,8(s7)
   163d0:	4058                	lw	a4,4(s0)
   163d2:	00eba623          	sw	a4,12(s7)
   163d6:	06c7fd63          	bgeu	a5,a2,16450 <_realloc_r+0x37e>
   163da:	4418                	lw	a4,8(s0)
   163dc:	02400793          	li	a5,36
   163e0:	00eba823          	sw	a4,16(s7)
   163e4:	4458                	lw	a4,12(s0)
   163e6:	00ebaa23          	sw	a4,20(s7)
   163ea:	f8f615e3          	bne	a2,a5,16374 <_realloc_r+0x2a2>
   163ee:	4818                	lw	a4,16(s0)
   163f0:	020b8793          	addi	a5,s7,32
   163f4:	0461                	addi	s0,s0,24
   163f6:	00ebac23          	sw	a4,24(s7)
   163fa:	ffc42703          	lw	a4,-4(s0)
   163fe:	00ebae23          	sw	a4,28(s7)
   16402:	bfa5                	j	1637a <_realloc_r+0x2a8>
   16404:	85a2                	mv	a1,s0
   16406:	8526                	mv	a0,s1
   16408:	85dfd0ef          	jal	13c64 <memmove>
   1640c:	bfad                	j	16386 <_realloc_r+0x2b4>
   1640e:	4418                	lw	a4,8(s0)
   16410:	c518                	sw	a4,8(a0)
   16412:	4458                	lw	a4,12(s0)
   16414:	c558                	sw	a4,12(a0)
   16416:	04f60763          	beq	a2,a5,16464 <_realloc_r+0x392>
   1641a:	01040713          	addi	a4,s0,16
   1641e:	01050793          	addi	a5,a0,16
   16422:	b341                	j	161a2 <_realloc_r+0xd0>
   16424:	9ad2                	add	s5,s5,s4
   16426:	414686b3          	sub	a3,a3,s4
   1642a:	015c2423          	sw	s5,8(s8)
   1642e:	0016e793          	ori	a5,a3,1
   16432:	00faa223          	sw	a5,4(s5)
   16436:	ffc42783          	lw	a5,-4(s0)
   1643a:	854a                	mv	a0,s2
   1643c:	84a2                	mv	s1,s0
   1643e:	8b85                	andi	a5,a5,1
   16440:	0147e7b3          	or	a5,a5,s4
   16444:	fef42e23          	sw	a5,-4(s0)
   16448:	b3afb0ef          	jal	11782 <__malloc_unlock>
   1644c:	4c22                	lw	s8,8(sp)
   1644e:	bb6d                	j	16208 <_realloc_r+0x136>
   16450:	0421                	addi	s0,s0,8
   16452:	010b8793          	addi	a5,s7,16
   16456:	b715                	j	1637a <_realloc_r+0x2a8>
   16458:	854a                	mv	a0,s2
   1645a:	b28fb0ef          	jal	11782 <__malloc_unlock>
   1645e:	4481                	li	s1,0
   16460:	4c22                	lw	s8,8(sp)
   16462:	b35d                	j	16208 <_realloc_r+0x136>
   16464:	4814                	lw	a3,16(s0)
   16466:	01840713          	addi	a4,s0,24
   1646a:	01850793          	addi	a5,a0,24
   1646e:	c914                	sw	a3,16(a0)
   16470:	4854                	lw	a3,20(s0)
   16472:	c954                	sw	a3,20(a0)
   16474:	b33d                	j	161a2 <_realloc_r+0xd0>
   16476:	85a2                	mv	a1,s0
   16478:	8526                	mv	a0,s1
   1647a:	feafd0ef          	jal	13c64 <memmove>
   1647e:	bdb9                	j	162dc <_realloc_r+0x20a>
   16480:	441c                	lw	a5,8(s0)
   16482:	00fba823          	sw	a5,16(s7)
   16486:	445c                	lw	a5,12(s0)
   16488:	00fbaa23          	sw	a5,20(s7)
   1648c:	00d60663          	beq	a2,a3,16498 <_realloc_r+0x3c6>
   16490:	0441                	addi	s0,s0,16
   16492:	018b8793          	addi	a5,s7,24
   16496:	bd2d                	j	162d0 <_realloc_r+0x1fe>
   16498:	4818                	lw	a4,16(s0)
   1649a:	020b8793          	addi	a5,s7,32
   1649e:	00ebac23          	sw	a4,24(s7)
   164a2:	4858                	lw	a4,20(s0)
   164a4:	0461                	addi	s0,s0,24
   164a6:	00ebae23          	sw	a4,28(s7)
   164aa:	b51d                	j	162d0 <_realloc_r+0x1fe>

000164ac <__smakebuf_r>:
   164ac:	00c59783          	lh	a5,12(a1)
   164b0:	7119                	addi	sp,sp,-128
   164b2:	dca2                	sw	s0,120(sp)
   164b4:	de86                	sw	ra,124(sp)
   164b6:	0027f713          	andi	a4,a5,2
   164ba:	842e                	mv	s0,a1
   164bc:	cb19                	beqz	a4,164d2 <__smakebuf_r+0x26>
   164be:	04358793          	addi	a5,a1,67
   164c2:	c19c                	sw	a5,0(a1)
   164c4:	c99c                	sw	a5,16(a1)
   164c6:	4785                	li	a5,1
   164c8:	c9dc                	sw	a5,20(a1)
   164ca:	50f6                	lw	ra,124(sp)
   164cc:	5466                	lw	s0,120(sp)
   164ce:	6109                	addi	sp,sp,128
   164d0:	8082                	ret
   164d2:	00e59583          	lh	a1,14(a1)
   164d6:	daa6                	sw	s1,116(sp)
   164d8:	d8ca                	sw	s2,112(sp)
   164da:	d6ce                	sw	s3,108(sp)
   164dc:	d4d2                	sw	s4,104(sp)
   164de:	84aa                	mv	s1,a0
   164e0:	0605c263          	bltz	a1,16544 <__smakebuf_r+0x98>
   164e4:	0030                	addi	a2,sp,8
   164e6:	22fd                	jal	166d4 <_fstat_r>
   164e8:	04054c63          	bltz	a0,16540 <__smakebuf_r+0x94>
   164ec:	47b2                	lw	a5,12(sp)
   164ee:	693d                	lui	s2,0xf
   164f0:	6985                	lui	s3,0x1
   164f2:	00f97933          	and	s2,s2,a5
   164f6:	77f9                	lui	a5,0xffffe
   164f8:	993e                	add	s2,s2,a5
   164fa:	00193913          	seqz	s2,s2
   164fe:	40000a13          	li	s4,1024
   16502:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   16506:	85d2                	mv	a1,s4
   16508:	8526                	mv	a0,s1
   1650a:	cd3fa0ef          	jal	111dc <_malloc_r>
   1650e:	00c41783          	lh	a5,12(s0)
   16512:	c539                	beqz	a0,16560 <__smakebuf_r+0xb4>
   16514:	0807e793          	ori	a5,a5,128
   16518:	c008                	sw	a0,0(s0)
   1651a:	c808                	sw	a0,16(s0)
   1651c:	00f41623          	sh	a5,12(s0)
   16520:	01442a23          	sw	s4,20(s0)
   16524:	06091563          	bnez	s2,1658e <__smakebuf_r+0xe2>
   16528:	0137e7b3          	or	a5,a5,s3
   1652c:	50f6                	lw	ra,124(sp)
   1652e:	00f41623          	sh	a5,12(s0)
   16532:	5466                	lw	s0,120(sp)
   16534:	54d6                	lw	s1,116(sp)
   16536:	5946                	lw	s2,112(sp)
   16538:	59b6                	lw	s3,108(sp)
   1653a:	5a26                	lw	s4,104(sp)
   1653c:	6109                	addi	sp,sp,128
   1653e:	8082                	ret
   16540:	00c41783          	lh	a5,12(s0)
   16544:	0807f793          	andi	a5,a5,128
   16548:	4901                	li	s2,0
   1654a:	cf95                	beqz	a5,16586 <__smakebuf_r+0xda>
   1654c:	04000a13          	li	s4,64
   16550:	85d2                	mv	a1,s4
   16552:	8526                	mv	a0,s1
   16554:	c89fa0ef          	jal	111dc <_malloc_r>
   16558:	00c41783          	lh	a5,12(s0)
   1655c:	4981                	li	s3,0
   1655e:	f95d                	bnez	a0,16514 <__smakebuf_r+0x68>
   16560:	2007f713          	andi	a4,a5,512
   16564:	ef0d                	bnez	a4,1659e <__smakebuf_r+0xf2>
   16566:	9bf1                	andi	a5,a5,-4
   16568:	0027e793          	ori	a5,a5,2
   1656c:	04340713          	addi	a4,s0,67
   16570:	00f41623          	sh	a5,12(s0)
   16574:	4785                	li	a5,1
   16576:	54d6                	lw	s1,116(sp)
   16578:	5946                	lw	s2,112(sp)
   1657a:	59b6                	lw	s3,108(sp)
   1657c:	5a26                	lw	s4,104(sp)
   1657e:	c018                	sw	a4,0(s0)
   16580:	c818                	sw	a4,16(s0)
   16582:	c85c                	sw	a5,20(s0)
   16584:	b799                	j	164ca <__smakebuf_r+0x1e>
   16586:	40000a13          	li	s4,1024
   1658a:	4981                	li	s3,0
   1658c:	bfad                	j	16506 <__smakebuf_r+0x5a>
   1658e:	00e41583          	lh	a1,14(s0)
   16592:	8526                	mv	a0,s1
   16594:	2aad                	jal	1670e <_isatty_r>
   16596:	e909                	bnez	a0,165a8 <__smakebuf_r+0xfc>
   16598:	00c41783          	lh	a5,12(s0)
   1659c:	b771                	j	16528 <__smakebuf_r+0x7c>
   1659e:	54d6                	lw	s1,116(sp)
   165a0:	5946                	lw	s2,112(sp)
   165a2:	59b6                	lw	s3,108(sp)
   165a4:	5a26                	lw	s4,104(sp)
   165a6:	b715                	j	164ca <__smakebuf_r+0x1e>
   165a8:	00c45783          	lhu	a5,12(s0)
   165ac:	9bf1                	andi	a5,a5,-4
   165ae:	0017e793          	ori	a5,a5,1
   165b2:	07c2                	slli	a5,a5,0x10
   165b4:	87c1                	srai	a5,a5,0x10
   165b6:	bf8d                	j	16528 <__smakebuf_r+0x7c>

000165b8 <__swhatbuf_r>:
   165b8:	7159                	addi	sp,sp,-112
   165ba:	d4a2                	sw	s0,104(sp)
   165bc:	842e                	mv	s0,a1
   165be:	00e59583          	lh	a1,14(a1)
   165c2:	d2a6                	sw	s1,100(sp)
   165c4:	d0ca                	sw	s2,96(sp)
   165c6:	d686                	sw	ra,108(sp)
   165c8:	84b2                	mv	s1,a2
   165ca:	8936                	mv	s2,a3
   165cc:	0205cb63          	bltz	a1,16602 <__swhatbuf_r+0x4a>
   165d0:	0030                	addi	a2,sp,8
   165d2:	2209                	jal	166d4 <_fstat_r>
   165d4:	02054763          	bltz	a0,16602 <__swhatbuf_r+0x4a>
   165d8:	4732                	lw	a4,12(sp)
   165da:	67bd                	lui	a5,0xf
   165dc:	50b6                	lw	ra,108(sp)
   165de:	8ff9                	and	a5,a5,a4
   165e0:	7779                	lui	a4,0xffffe
   165e2:	97ba                	add	a5,a5,a4
   165e4:	5426                	lw	s0,104(sp)
   165e6:	0017b793          	seqz	a5,a5
   165ea:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   165ee:	40000713          	li	a4,1024
   165f2:	c098                	sw	a4,0(s1)
   165f4:	6505                	lui	a0,0x1
   165f6:	5496                	lw	s1,100(sp)
   165f8:	5906                	lw	s2,96(sp)
   165fa:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   165fe:	6165                	addi	sp,sp,112
   16600:	8082                	ret
   16602:	00c45783          	lhu	a5,12(s0)
   16606:	0807f793          	andi	a5,a5,128
   1660a:	cf91                	beqz	a5,16626 <__swhatbuf_r+0x6e>
   1660c:	50b6                	lw	ra,108(sp)
   1660e:	5426                	lw	s0,104(sp)
   16610:	4781                	li	a5,0
   16612:	00f92023          	sw	a5,0(s2)
   16616:	04000713          	li	a4,64
   1661a:	c098                	sw	a4,0(s1)
   1661c:	5906                	lw	s2,96(sp)
   1661e:	5496                	lw	s1,100(sp)
   16620:	4501                	li	a0,0
   16622:	6165                	addi	sp,sp,112
   16624:	8082                	ret
   16626:	50b6                	lw	ra,108(sp)
   16628:	5426                	lw	s0,104(sp)
   1662a:	00f92023          	sw	a5,0(s2)
   1662e:	40000713          	li	a4,1024
   16632:	c098                	sw	a4,0(s1)
   16634:	5906                	lw	s2,96(sp)
   16636:	5496                	lw	s1,100(sp)
   16638:	4501                	li	a0,0
   1663a:	6165                	addi	sp,sp,112
   1663c:	8082                	ret

0001663e <_setlocale_r>:
   1663e:	1141                	addi	sp,sp,-16
   16640:	c606                	sw	ra,12(sp)
   16642:	c226                	sw	s1,4(sp)
   16644:	c20d                	beqz	a2,16666 <_setlocale_r+0x28>
   16646:	65e9                	lui	a1,0x1a
   16648:	30c58593          	addi	a1,a1,780 # 1a30c <__clzsi2+0x1ec>
   1664c:	8532                	mv	a0,a2
   1664e:	c422                	sw	s0,8(sp)
   16650:	8432                	mv	s0,a2
   16652:	28cd                	jal	16744 <strcmp>
   16654:	64e9                	lui	s1,0x1a
   16656:	e911                	bnez	a0,1666a <_setlocale_r+0x2c>
   16658:	4422                	lw	s0,8(sp)
   1665a:	30848513          	addi	a0,s1,776 # 1a308 <__clzsi2+0x1e8>
   1665e:	40b2                	lw	ra,12(sp)
   16660:	4492                	lw	s1,4(sp)
   16662:	0141                	addi	sp,sp,16
   16664:	8082                	ret
   16666:	64e9                	lui	s1,0x1a
   16668:	bfcd                	j	1665a <_setlocale_r+0x1c>
   1666a:	30848593          	addi	a1,s1,776 # 1a308 <__clzsi2+0x1e8>
   1666e:	8522                	mv	a0,s0
   16670:	28d1                	jal	16744 <strcmp>
   16672:	d17d                	beqz	a0,16658 <_setlocale_r+0x1a>
   16674:	65e9                	lui	a1,0x1a
   16676:	32458593          	addi	a1,a1,804 # 1a324 <__clzsi2+0x204>
   1667a:	8522                	mv	a0,s0
   1667c:	20e1                	jal	16744 <strcmp>
   1667e:	dd69                	beqz	a0,16658 <_setlocale_r+0x1a>
   16680:	4422                	lw	s0,8(sp)
   16682:	4501                	li	a0,0
   16684:	bfe9                	j	1665e <_setlocale_r+0x20>

00016686 <__locale_mb_cur_max>:
   16686:	e601c503          	lbu	a0,-416(gp) # 1b670 <__global_locale+0x128>
   1668a:	8082                	ret

0001668c <setlocale>:
   1668c:	1141                	addi	sp,sp,-16
   1668e:	c606                	sw	ra,12(sp)
   16690:	c226                	sw	s1,4(sp)
   16692:	c18d                	beqz	a1,166b4 <setlocale+0x28>
   16694:	c422                	sw	s0,8(sp)
   16696:	842e                	mv	s0,a1
   16698:	65e9                	lui	a1,0x1a
   1669a:	30c58593          	addi	a1,a1,780 # 1a30c <__clzsi2+0x1ec>
   1669e:	8522                	mv	a0,s0
   166a0:	2055                	jal	16744 <strcmp>
   166a2:	64e9                	lui	s1,0x1a
   166a4:	e911                	bnez	a0,166b8 <setlocale+0x2c>
   166a6:	4422                	lw	s0,8(sp)
   166a8:	30848513          	addi	a0,s1,776 # 1a308 <__clzsi2+0x1e8>
   166ac:	40b2                	lw	ra,12(sp)
   166ae:	4492                	lw	s1,4(sp)
   166b0:	0141                	addi	sp,sp,16
   166b2:	8082                	ret
   166b4:	64e9                	lui	s1,0x1a
   166b6:	bfcd                	j	166a8 <setlocale+0x1c>
   166b8:	30848593          	addi	a1,s1,776 # 1a308 <__clzsi2+0x1e8>
   166bc:	8522                	mv	a0,s0
   166be:	2059                	jal	16744 <strcmp>
   166c0:	d17d                	beqz	a0,166a6 <setlocale+0x1a>
   166c2:	65e9                	lui	a1,0x1a
   166c4:	32458593          	addi	a1,a1,804 # 1a324 <__clzsi2+0x204>
   166c8:	8522                	mv	a0,s0
   166ca:	28ad                	jal	16744 <strcmp>
   166cc:	dd69                	beqz	a0,166a6 <setlocale+0x1a>
   166ce:	4422                	lw	s0,8(sp)
   166d0:	4501                	li	a0,0
   166d2:	bfe9                	j	166ac <setlocale+0x20>

000166d4 <_fstat_r>:
   166d4:	1141                	addi	sp,sp,-16
   166d6:	872e                	mv	a4,a1
   166d8:	c422                	sw	s0,8(sp)
   166da:	c226                	sw	s1,4(sp)
   166dc:	842a                	mv	s0,a0
   166de:	85b2                	mv	a1,a2
   166e0:	853a                	mv	a0,a4
   166e2:	c606                	sw	ra,12(sp)
   166e4:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   166e8:	3f8010ef          	jal	17ae0 <_fstat>
   166ec:	57fd                	li	a5,-1
   166ee:	00f50763          	beq	a0,a5,166fc <_fstat_r+0x28>
   166f2:	40b2                	lw	ra,12(sp)
   166f4:	4422                	lw	s0,8(sp)
   166f6:	4492                	lw	s1,4(sp)
   166f8:	0141                	addi	sp,sp,16
   166fa:	8082                	ret
   166fc:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   16700:	dbed                	beqz	a5,166f2 <_fstat_r+0x1e>
   16702:	40b2                	lw	ra,12(sp)
   16704:	c01c                	sw	a5,0(s0)
   16706:	4422                	lw	s0,8(sp)
   16708:	4492                	lw	s1,4(sp)
   1670a:	0141                	addi	sp,sp,16
   1670c:	8082                	ret

0001670e <_isatty_r>:
   1670e:	1141                	addi	sp,sp,-16
   16710:	c422                	sw	s0,8(sp)
   16712:	c226                	sw	s1,4(sp)
   16714:	842a                	mv	s0,a0
   16716:	852e                	mv	a0,a1
   16718:	c606                	sw	ra,12(sp)
   1671a:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   1671e:	400010ef          	jal	17b1e <_isatty>
   16722:	57fd                	li	a5,-1
   16724:	00f50763          	beq	a0,a5,16732 <_isatty_r+0x24>
   16728:	40b2                	lw	ra,12(sp)
   1672a:	4422                	lw	s0,8(sp)
   1672c:	4492                	lw	s1,4(sp)
   1672e:	0141                	addi	sp,sp,16
   16730:	8082                	ret
   16732:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   16736:	dbed                	beqz	a5,16728 <_isatty_r+0x1a>
   16738:	40b2                	lw	ra,12(sp)
   1673a:	c01c                	sw	a5,0(s0)
   1673c:	4422                	lw	s0,8(sp)
   1673e:	4492                	lw	s1,4(sp)
   16740:	0141                	addi	sp,sp,16
   16742:	8082                	ret

00016744 <strcmp>:
   16744:	00b56733          	or	a4,a0,a1
   16748:	53fd                	li	t2,-1
   1674a:	8b0d                	andi	a4,a4,3
   1674c:	e779                	bnez	a4,1681a <strcmp+0xd6>
   1674e:	7f7f87b7          	lui	a5,0x7f7f8
   16752:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   16756:	4110                	lw	a2,0(a0)
   16758:	4194                	lw	a3,0(a1)
   1675a:	00f672b3          	and	t0,a2,a5
   1675e:	00f66333          	or	t1,a2,a5
   16762:	92be                	add	t0,t0,a5
   16764:	0062e2b3          	or	t0,t0,t1
   16768:	0c729763          	bne	t0,t2,16836 <strcmp+0xf2>
   1676c:	06d61863          	bne	a2,a3,167dc <strcmp+0x98>
   16770:	4150                	lw	a2,4(a0)
   16772:	41d4                	lw	a3,4(a1)
   16774:	00f672b3          	and	t0,a2,a5
   16778:	00f66333          	or	t1,a2,a5
   1677c:	92be                	add	t0,t0,a5
   1677e:	0062e2b3          	or	t0,t0,t1
   16782:	0a729863          	bne	t0,t2,16832 <strcmp+0xee>
   16786:	04d61b63          	bne	a2,a3,167dc <strcmp+0x98>
   1678a:	4510                	lw	a2,8(a0)
   1678c:	4594                	lw	a3,8(a1)
   1678e:	00f672b3          	and	t0,a2,a5
   16792:	00f66333          	or	t1,a2,a5
   16796:	92be                	add	t0,t0,a5
   16798:	0062e2b3          	or	t0,t0,t1
   1679c:	0a729163          	bne	t0,t2,1683e <strcmp+0xfa>
   167a0:	02d61e63          	bne	a2,a3,167dc <strcmp+0x98>
   167a4:	4550                	lw	a2,12(a0)
   167a6:	45d4                	lw	a3,12(a1)
   167a8:	00f672b3          	and	t0,a2,a5
   167ac:	00f66333          	or	t1,a2,a5
   167b0:	92be                	add	t0,t0,a5
   167b2:	0062e2b3          	or	t0,t0,t1
   167b6:	08729a63          	bne	t0,t2,1684a <strcmp+0x106>
   167ba:	02d61163          	bne	a2,a3,167dc <strcmp+0x98>
   167be:	4910                	lw	a2,16(a0)
   167c0:	4994                	lw	a3,16(a1)
   167c2:	00f672b3          	and	t0,a2,a5
   167c6:	00f66333          	or	t1,a2,a5
   167ca:	92be                	add	t0,t0,a5
   167cc:	0062e2b3          	or	t0,t0,t1
   167d0:	08729363          	bne	t0,t2,16856 <strcmp+0x112>
   167d4:	0551                	addi	a0,a0,20
   167d6:	05d1                	addi	a1,a1,20
   167d8:	f6d60fe3          	beq	a2,a3,16756 <strcmp+0x12>
   167dc:	01061713          	slli	a4,a2,0x10
   167e0:	01069793          	slli	a5,a3,0x10
   167e4:	00f71c63          	bne	a4,a5,167fc <strcmp+0xb8>
   167e8:	01065713          	srli	a4,a2,0x10
   167ec:	0106d793          	srli	a5,a3,0x10
   167f0:	40f70533          	sub	a0,a4,a5
   167f4:	0ff57593          	zext.b	a1,a0
   167f8:	e991                	bnez	a1,1680c <strcmp+0xc8>
   167fa:	8082                	ret
   167fc:	8341                	srli	a4,a4,0x10
   167fe:	83c1                	srli	a5,a5,0x10
   16800:	40f70533          	sub	a0,a4,a5
   16804:	0ff57593          	zext.b	a1,a0
   16808:	e191                	bnez	a1,1680c <strcmp+0xc8>
   1680a:	8082                	ret
   1680c:	0ff77713          	zext.b	a4,a4
   16810:	0ff7f793          	zext.b	a5,a5
   16814:	40f70533          	sub	a0,a4,a5
   16818:	8082                	ret
   1681a:	00054603          	lbu	a2,0(a0)
   1681e:	0005c683          	lbu	a3,0(a1)
   16822:	0505                	addi	a0,a0,1
   16824:	0585                	addi	a1,a1,1
   16826:	00d61363          	bne	a2,a3,1682c <strcmp+0xe8>
   1682a:	fa65                	bnez	a2,1681a <strcmp+0xd6>
   1682c:	40d60533          	sub	a0,a2,a3
   16830:	8082                	ret
   16832:	0511                	addi	a0,a0,4
   16834:	0591                	addi	a1,a1,4
   16836:	fed612e3          	bne	a2,a3,1681a <strcmp+0xd6>
   1683a:	4501                	li	a0,0
   1683c:	8082                	ret
   1683e:	0521                	addi	a0,a0,8
   16840:	05a1                	addi	a1,a1,8
   16842:	fcd61ce3          	bne	a2,a3,1681a <strcmp+0xd6>
   16846:	4501                	li	a0,0
   16848:	8082                	ret
   1684a:	0531                	addi	a0,a0,12
   1684c:	05b1                	addi	a1,a1,12
   1684e:	fcd616e3          	bne	a2,a3,1681a <strcmp+0xd6>
   16852:	4501                	li	a0,0
   16854:	8082                	ret
   16856:	0541                	addi	a0,a0,16
   16858:	05c1                	addi	a1,a1,16
   1685a:	fcd610e3          	bne	a2,a3,1681a <strcmp+0xd6>
   1685e:	4501                	li	a0,0
   16860:	8082                	ret

00016862 <__assert_func>:
   16862:	f141a703          	lw	a4,-236(gp) # 1b724 <_impure_ptr>
   16866:	1141                	addi	sp,sp,-16
   16868:	87b6                	mv	a5,a3
   1686a:	8832                	mv	a6,a2
   1686c:	c606                	sw	ra,12(sp)
   1686e:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffe25b0>
   16872:	86aa                	mv	a3,a0
   16874:	872e                	mv	a4,a1
   16876:	863e                	mv	a2,a5
   16878:	00080c63          	beqz	a6,16890 <__assert_func+0x2e>
   1687c:	67e9                	lui	a5,0x1a
   1687e:	31878793          	addi	a5,a5,792 # 1a318 <__clzsi2+0x1f8>
   16882:	65e9                	lui	a1,0x1a
   16884:	32858593          	addi	a1,a1,808 # 1a328 <__clzsi2+0x208>
   16888:	8546                	mv	a0,a7
   1688a:	2a81                	jal	169da <fiprintf>
   1688c:	691000ef          	jal	1771c <abort>
   16890:	6869                	lui	a6,0x1a
   16892:	32480793          	addi	a5,a6,804 # 1a324 <__clzsi2+0x204>
   16896:	32480813          	addi	a6,a6,804
   1689a:	b7e5                	j	16882 <__assert_func+0x20>

0001689c <__assert>:
   1689c:	1141                	addi	sp,sp,-16
   1689e:	86b2                	mv	a3,a2
   168a0:	4601                	li	a2,0
   168a2:	c606                	sw	ra,12(sp)
   168a4:	fbfff0ef          	jal	16862 <__assert_func>

000168a8 <_calloc_r>:
   168a8:	02c5b7b3          	mulhu	a5,a1,a2
   168ac:	1141                	addi	sp,sp,-16
   168ae:	c606                	sw	ra,12(sp)
   168b0:	c422                	sw	s0,8(sp)
   168b2:	02c585b3          	mul	a1,a1,a2
   168b6:	efa5                	bnez	a5,1692e <_calloc_r+0x86>
   168b8:	925fa0ef          	jal	111dc <_malloc_r>
   168bc:	842a                	mv	s0,a0
   168be:	cd25                	beqz	a0,16936 <_calloc_r+0x8e>
   168c0:	ffc52603          	lw	a2,-4(a0)
   168c4:	02400713          	li	a4,36
   168c8:	9a71                	andi	a2,a2,-4
   168ca:	1671                	addi	a2,a2,-4
   168cc:	04c76063          	bltu	a4,a2,1690c <_calloc_r+0x64>
   168d0:	46cd                	li	a3,19
   168d2:	87aa                	mv	a5,a0
   168d4:	02c6f163          	bgeu	a3,a2,168f6 <_calloc_r+0x4e>
   168d8:	00052023          	sw	zero,0(a0)
   168dc:	00052223          	sw	zero,4(a0)
   168e0:	47ed                	li	a5,27
   168e2:	02c7fd63          	bgeu	a5,a2,1691c <_calloc_r+0x74>
   168e6:	00052423          	sw	zero,8(a0)
   168ea:	00052623          	sw	zero,12(a0)
   168ee:	01050793          	addi	a5,a0,16
   168f2:	04e60863          	beq	a2,a4,16942 <_calloc_r+0x9a>
   168f6:	0007a023          	sw	zero,0(a5)
   168fa:	0007a223          	sw	zero,4(a5)
   168fe:	0007a423          	sw	zero,8(a5)
   16902:	40b2                	lw	ra,12(sp)
   16904:	8522                	mv	a0,s0
   16906:	4422                	lw	s0,8(sp)
   16908:	0141                	addi	sp,sp,16
   1690a:	8082                	ret
   1690c:	4581                	li	a1,0
   1690e:	bfafa0ef          	jal	10d08 <memset>
   16912:	40b2                	lw	ra,12(sp)
   16914:	8522                	mv	a0,s0
   16916:	4422                	lw	s0,8(sp)
   16918:	0141                	addi	sp,sp,16
   1691a:	8082                	ret
   1691c:	00850793          	addi	a5,a0,8
   16920:	0007a023          	sw	zero,0(a5)
   16924:	0007a223          	sw	zero,4(a5)
   16928:	0007a423          	sw	zero,8(a5)
   1692c:	bfd9                	j	16902 <_calloc_r+0x5a>
   1692e:	5e9000ef          	jal	17716 <__errno>
   16932:	47b1                	li	a5,12
   16934:	c11c                	sw	a5,0(a0)
   16936:	4401                	li	s0,0
   16938:	40b2                	lw	ra,12(sp)
   1693a:	8522                	mv	a0,s0
   1693c:	4422                	lw	s0,8(sp)
   1693e:	0141                	addi	sp,sp,16
   16940:	8082                	ret
   16942:	00052823          	sw	zero,16(a0)
   16946:	01850793          	addi	a5,a0,24
   1694a:	00052a23          	sw	zero,20(a0)
   1694e:	b765                	j	168f6 <_calloc_r+0x4e>

00016950 <_mbtowc_r>:
   16950:	e1c1a783          	lw	a5,-484(gp) # 1b62c <__global_locale+0xe4>
   16954:	8782                	jr	a5

00016956 <__ascii_mbtowc>:
   16956:	c999                	beqz	a1,1696c <__ascii_mbtowc+0x16>
   16958:	c61d                	beqz	a2,16986 <__ascii_mbtowc+0x30>
   1695a:	ca95                	beqz	a3,1698e <__ascii_mbtowc+0x38>
   1695c:	00064783          	lbu	a5,0(a2)
   16960:	c19c                	sw	a5,0(a1)
   16962:	00064503          	lbu	a0,0(a2)
   16966:	00a03533          	snez	a0,a0
   1696a:	8082                	ret
   1696c:	1141                	addi	sp,sp,-16
   1696e:	006c                	addi	a1,sp,12
   16970:	ce09                	beqz	a2,1698a <__ascii_mbtowc+0x34>
   16972:	c285                	beqz	a3,16992 <__ascii_mbtowc+0x3c>
   16974:	00064783          	lbu	a5,0(a2)
   16978:	c19c                	sw	a5,0(a1)
   1697a:	00064503          	lbu	a0,0(a2)
   1697e:	00a03533          	snez	a0,a0
   16982:	0141                	addi	sp,sp,16
   16984:	8082                	ret
   16986:	4501                	li	a0,0
   16988:	8082                	ret
   1698a:	4501                	li	a0,0
   1698c:	bfdd                	j	16982 <__ascii_mbtowc+0x2c>
   1698e:	5579                	li	a0,-2
   16990:	8082                	ret
   16992:	5579                	li	a0,-2
   16994:	b7fd                	j	16982 <__ascii_mbtowc+0x2c>

00016996 <_wctomb_r>:
   16996:	e181a783          	lw	a5,-488(gp) # 1b628 <__global_locale+0xe0>
   1699a:	8782                	jr	a5

0001699c <__ascii_wctomb>:
   1699c:	cd91                	beqz	a1,169b8 <__ascii_wctomb+0x1c>
   1699e:	0ff00793          	li	a5,255
   169a2:	00c7e663          	bltu	a5,a2,169ae <__ascii_wctomb+0x12>
   169a6:	00c58023          	sb	a2,0(a1)
   169aa:	4505                	li	a0,1
   169ac:	8082                	ret
   169ae:	08a00793          	li	a5,138
   169b2:	c11c                	sw	a5,0(a0)
   169b4:	557d                	li	a0,-1
   169b6:	8082                	ret
   169b8:	4501                	li	a0,0
   169ba:	8082                	ret

000169bc <_fiprintf_r>:
   169bc:	7139                	addi	sp,sp,-64
   169be:	02c10313          	addi	t1,sp,44
   169c2:	d636                	sw	a3,44(sp)
   169c4:	869a                	mv	a3,t1
   169c6:	ce06                	sw	ra,28(sp)
   169c8:	d83a                	sw	a4,48(sp)
   169ca:	da3e                	sw	a5,52(sp)
   169cc:	dc42                	sw	a6,56(sp)
   169ce:	de46                	sw	a7,60(sp)
   169d0:	c61a                	sw	t1,12(sp)
   169d2:	280d                	jal	16a04 <_vfiprintf_r>
   169d4:	40f2                	lw	ra,28(sp)
   169d6:	6121                	addi	sp,sp,64
   169d8:	8082                	ret

000169da <fiprintf>:
   169da:	8e2a                	mv	t3,a0
   169dc:	7139                	addi	sp,sp,-64
   169de:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   169e2:	02810313          	addi	t1,sp,40
   169e6:	d432                	sw	a2,40(sp)
   169e8:	d636                	sw	a3,44(sp)
   169ea:	862e                	mv	a2,a1
   169ec:	869a                	mv	a3,t1
   169ee:	85f2                	mv	a1,t3
   169f0:	ce06                	sw	ra,28(sp)
   169f2:	d83a                	sw	a4,48(sp)
   169f4:	da3e                	sw	a5,52(sp)
   169f6:	dc42                	sw	a6,56(sp)
   169f8:	de46                	sw	a7,60(sp)
   169fa:	c61a                	sw	t1,12(sp)
   169fc:	2021                	jal	16a04 <_vfiprintf_r>
   169fe:	40f2                	lw	ra,28(sp)
   16a00:	6121                	addi	sp,sp,64
   16a02:	8082                	ret

00016a04 <_vfiprintf_r>:
   16a04:	7169                	addi	sp,sp,-304
   16a06:	11312e23          	sw	s3,284(sp)
   16a0a:	11512a23          	sw	s5,276(sp)
   16a0e:	11612823          	sw	s6,272(sp)
   16a12:	11712623          	sw	s7,268(sp)
   16a16:	12112623          	sw	ra,300(sp)
   16a1a:	11a12023          	sw	s10,256(sp)
   16a1e:	8baa                	mv	s7,a0
   16a20:	8aae                	mv	s5,a1
   16a22:	89b2                	mv	s3,a2
   16a24:	8b36                	mv	s6,a3
   16a26:	c501                	beqz	a0,16a2e <_vfiprintf_r+0x2a>
   16a28:	595c                	lw	a5,52(a0)
   16a2a:	300783e3          	beqz	a5,17530 <_vfiprintf_r+0xb2c>
   16a2e:	00ca9703          	lh	a4,12(s5)
   16a32:	064aa783          	lw	a5,100(s5)
   16a36:	01271693          	slli	a3,a4,0x12
   16a3a:	0006cb63          	bltz	a3,16a50 <_vfiprintf_r+0x4c>
   16a3e:	76f9                	lui	a3,0xffffe
   16a40:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   16a42:	6609                	lui	a2,0x2
   16a44:	8f51                	or	a4,a4,a2
   16a46:	8ff5                	and	a5,a5,a3
   16a48:	00ea9623          	sh	a4,12(s5)
   16a4c:	06faa223          	sw	a5,100(s5)
   16a50:	01279713          	slli	a4,a5,0x12
   16a54:	400740e3          	bltz	a4,17654 <_vfiprintf_r+0xc50>
   16a58:	00ca9783          	lh	a5,12(s5)
   16a5c:	0087f713          	andi	a4,a5,8
   16a60:	22070363          	beqz	a4,16c86 <_vfiprintf_r+0x282>
   16a64:	010aa703          	lw	a4,16(s5)
   16a68:	20070f63          	beqz	a4,16c86 <_vfiprintf_r+0x282>
   16a6c:	8be9                	andi	a5,a5,26
   16a6e:	4729                	li	a4,10
   16a70:	22e78763          	beq	a5,a4,16c9e <_vfiprintf_r+0x29a>
   16a74:	67ed                	lui	a5,0x1b
   16a76:	4d01                	li	s10,0
   16a78:	11812423          	sw	s8,264(sp)
   16a7c:	11912223          	sw	s9,260(sp)
   16a80:	04c10c13          	addi	s8,sp,76
   16a84:	8dc78793          	addi	a5,a5,-1828 # 1a8dc <_ctype_+0x104>
   16a88:	6ced                	lui	s9,0x1b
   16a8a:	12812423          	sw	s0,296(sp)
   16a8e:	13212023          	sw	s2,288(sp)
   16a92:	11412c23          	sw	s4,280(sp)
   16a96:	896a                	mv	s2,s10
   16a98:	12912223          	sw	s1,292(sp)
   16a9c:	dfee                	sw	s11,252(sp)
   16a9e:	c0e2                	sw	s8,64(sp)
   16aa0:	c482                	sw	zero,72(sp)
   16aa2:	c282                	sw	zero,68(sp)
   16aa4:	8462                	mv	s0,s8
   16aa6:	c202                	sw	zero,4(sp)
   16aa8:	ca02                	sw	zero,20(sp)
   16aaa:	cc02                	sw	zero,24(sp)
   16aac:	ce02                	sw	zero,28(sp)
   16aae:	c03e                	sw	a5,0(sp)
   16ab0:	4a41                	li	s4,16
   16ab2:	a48c8c93          	addi	s9,s9,-1464 # 1aa48 <zeroes.0>
   16ab6:	8d5a                	mv	s10,s6
   16ab8:	0009c783          	lbu	a5,0(s3)
   16abc:	14078563          	beqz	a5,16c06 <_vfiprintf_r+0x202>
   16ac0:	84ce                	mv	s1,s3
   16ac2:	02500713          	li	a4,37
   16ac6:	20e78363          	beq	a5,a4,16ccc <_vfiprintf_r+0x2c8>
   16aca:	0014c783          	lbu	a5,1(s1)
   16ace:	0485                	addi	s1,s1,1
   16ad0:	fbfd                	bnez	a5,16ac6 <_vfiprintf_r+0xc2>
   16ad2:	41348b33          	sub	s6,s1,s3
   16ad6:	13348863          	beq	s1,s3,16c06 <_vfiprintf_r+0x202>
   16ada:	4726                	lw	a4,72(sp)
   16adc:	4796                	lw	a5,68(sp)
   16ade:	01342023          	sw	s3,0(s0)
   16ae2:	975a                	add	a4,a4,s6
   16ae4:	0785                	addi	a5,a5,1
   16ae6:	01642223          	sw	s6,4(s0)
   16aea:	c4ba                	sw	a4,72(sp)
   16aec:	c2be                	sw	a5,68(sp)
   16aee:	471d                	li	a4,7
   16af0:	0421                	addi	s0,s0,8
   16af2:	1ef74463          	blt	a4,a5,16cda <_vfiprintf_r+0x2d6>
   16af6:	0004c783          	lbu	a5,0(s1)
   16afa:	995a                	add	s2,s2,s6
   16afc:	10078563          	beqz	a5,16c06 <_vfiprintf_r+0x202>
   16b00:	0014c783          	lbu	a5,1(s1)
   16b04:	00148993          	addi	s3,s1,1
   16b08:	02010da3          	sb	zero,59(sp)
   16b0c:	5dfd                	li	s11,-1
   16b0e:	4b01                	li	s6,0
   16b10:	4801                	li	a6,0
   16b12:	05a00493          	li	s1,90
   16b16:	0985                	addi	s3,s3,1
   16b18:	863e                	mv	a2,a5
   16b1a:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   16b1e:	02e4eb63          	bltu	s1,a4,16b54 <_vfiprintf_r+0x150>
   16b22:	4782                	lw	a5,0(sp)
   16b24:	070a                	slli	a4,a4,0x2
   16b26:	973e                	add	a4,a4,a5
   16b28:	431c                	lw	a5,0(a4)
   16b2a:	8782                	jr	a5
   16b2c:	4b01                	li	s6,0
   16b2e:	fd060793          	addi	a5,a2,-48
   16b32:	46a5                	li	a3,9
   16b34:	0009c603          	lbu	a2,0(s3)
   16b38:	002b1713          	slli	a4,s6,0x2
   16b3c:	9b3a                	add	s6,s6,a4
   16b3e:	0b06                	slli	s6,s6,0x1
   16b40:	9b3e                	add	s6,s6,a5
   16b42:	fd060793          	addi	a5,a2,-48
   16b46:	0985                	addi	s3,s3,1
   16b48:	fef6f6e3          	bgeu	a3,a5,16b34 <_vfiprintf_r+0x130>
   16b4c:	fe060713          	addi	a4,a2,-32
   16b50:	fce4f9e3          	bgeu	s1,a4,16b22 <_vfiprintf_r+0x11e>
   16b54:	ca4d                	beqz	a2,16c06 <_vfiprintf_r+0x202>
   16b56:	08c10623          	sb	a2,140(sp)
   16b5a:	02010da3          	sb	zero,59(sp)
   16b5e:	4885                	li	a7,1
   16b60:	4e05                	li	t3,1
   16b62:	0164                	addi	s1,sp,140
   16b64:	4d81                	li	s11,0
   16b66:	4281                	li	t0,0
   16b68:	08487f93          	andi	t6,a6,132
   16b6c:	4726                	lw	a4,72(sp)
   16b6e:	4796                	lw	a5,68(sp)
   16b70:	000f9663          	bnez	t6,16b7c <_vfiprintf_r+0x178>
   16b74:	411b0eb3          	sub	t4,s6,a7
   16b78:	71d04b63          	bgtz	t4,1728e <_vfiprintf_r+0x88a>
   16b7c:	03b14603          	lbu	a2,59(sp)
   16b80:	ce11                	beqz	a2,16b9c <_vfiprintf_r+0x198>
   16b82:	03b10613          	addi	a2,sp,59
   16b86:	c010                	sw	a2,0(s0)
   16b88:	0785                	addi	a5,a5,1
   16b8a:	4605                	li	a2,1
   16b8c:	0705                	addi	a4,a4,1
   16b8e:	c050                	sw	a2,4(s0)
   16b90:	c4ba                	sw	a4,72(sp)
   16b92:	c2be                	sw	a5,68(sp)
   16b94:	461d                	li	a2,7
   16b96:	0421                	addi	s0,s0,8
   16b98:	1af64363          	blt	a2,a5,16d3e <_vfiprintf_r+0x33a>
   16b9c:	00028e63          	beqz	t0,16bb8 <_vfiprintf_r+0x1b4>
   16ba0:	1870                	addi	a2,sp,60
   16ba2:	c010                	sw	a2,0(s0)
   16ba4:	0785                	addi	a5,a5,1
   16ba6:	4609                	li	a2,2
   16ba8:	0709                	addi	a4,a4,2
   16baa:	c050                	sw	a2,4(s0)
   16bac:	c4ba                	sw	a4,72(sp)
   16bae:	c2be                	sw	a5,68(sp)
   16bb0:	461d                	li	a2,7
   16bb2:	0421                	addi	s0,s0,8
   16bb4:	78f64663          	blt	a2,a5,17340 <_vfiprintf_r+0x93c>
   16bb8:	08000613          	li	a2,128
   16bbc:	52cf8a63          	beq	t6,a2,170f0 <_vfiprintf_r+0x6ec>
   16bc0:	41cd8db3          	sub	s11,s11,t3
   16bc4:	5db04d63          	bgtz	s11,1719e <_vfiprintf_r+0x79a>
   16bc8:	9772                	add	a4,a4,t3
   16bca:	0785                	addi	a5,a5,1
   16bcc:	c004                	sw	s1,0(s0)
   16bce:	01c42223          	sw	t3,4(s0)
   16bd2:	c4ba                	sw	a4,72(sp)
   16bd4:	c2be                	sw	a5,68(sp)
   16bd6:	461d                	li	a2,7
   16bd8:	0421                	addi	s0,s0,8
   16bda:	64f64e63          	blt	a2,a5,17236 <_vfiprintf_r+0x832>
   16bde:	00487813          	andi	a6,a6,4
   16be2:	00080663          	beqz	a6,16bee <_vfiprintf_r+0x1ea>
   16be6:	411b04b3          	sub	s1,s6,a7
   16bea:	16904e63          	bgtz	s1,16d66 <_vfiprintf_r+0x362>
   16bee:	011b5363          	bge	s6,a7,16bf4 <_vfiprintf_r+0x1f0>
   16bf2:	8b46                	mv	s6,a7
   16bf4:	995a                	add	s2,s2,s6
   16bf6:	0e071a63          	bnez	a4,16cea <_vfiprintf_r+0x2e6>
   16bfa:	0009c783          	lbu	a5,0(s3)
   16bfe:	c282                	sw	zero,68(sp)
   16c00:	8462                	mv	s0,s8
   16c02:	ea079fe3          	bnez	a5,16ac0 <_vfiprintf_r+0xbc>
   16c06:	47a6                	lw	a5,72(sp)
   16c08:	8d4a                	mv	s10,s2
   16c0a:	0e078863          	beqz	a5,16cfa <_vfiprintf_r+0x2f6>
   16c0e:	0090                	addi	a2,sp,64
   16c10:	85d6                	mv	a1,s5
   16c12:	855e                	mv	a0,s7
   16c14:	fb6fc0ef          	jal	133ca <__sprint_r>
   16c18:	a0cd                	j	16cfa <_vfiprintf_r+0x2f6>
   16c1a:	000d2b03          	lw	s6,0(s10)
   16c1e:	0d11                	addi	s10,s10,4
   16c20:	280b4c63          	bltz	s6,16eb8 <_vfiprintf_r+0x4b4>
   16c24:	0009c783          	lbu	a5,0(s3)
   16c28:	b5fd                	j	16b16 <_vfiprintf_r+0x112>
   16c2a:	0009c783          	lbu	a5,0(s3)
   16c2e:	02086813          	ori	a6,a6,32
   16c32:	b5d5                	j	16b16 <_vfiprintf_r+0x112>
   16c34:	01086813          	ori	a6,a6,16
   16c38:	02087793          	andi	a5,a6,32
   16c3c:	1a078363          	beqz	a5,16de2 <_vfiprintf_r+0x3de>
   16c40:	0d1d                	addi	s10,s10,7
   16c42:	ff8d7d13          	andi	s10,s10,-8
   16c46:	004d2703          	lw	a4,4(s10)
   16c4a:	000d2783          	lw	a5,0(s10)
   16c4e:	0d21                	addi	s10,s10,8
   16c50:	88ba                	mv	a7,a4
   16c52:	1a074863          	bltz	a4,16e02 <_vfiprintf_r+0x3fe>
   16c56:	1c0dc663          	bltz	s11,16e22 <_vfiprintf_r+0x41e>
   16c5a:	0117e733          	or	a4,a5,a7
   16c5e:	f7f87813          	andi	a6,a6,-129
   16c62:	1c071063          	bnez	a4,16e22 <_vfiprintf_r+0x41e>
   16c66:	1e0d93e3          	bnez	s11,1764c <_vfiprintf_r+0xc48>
   16c6a:	03b14783          	lbu	a5,59(sp)
   16c6e:	4881                	li	a7,0
   16c70:	4e01                	li	t3,0
   16c72:	1984                	addi	s1,sp,240
   16c74:	c391                	beqz	a5,16c78 <_vfiprintf_r+0x274>
   16c76:	0885                	addi	a7,a7,1
   16c78:	00287293          	andi	t0,a6,2
   16c7c:	ee0286e3          	beqz	t0,16b68 <_vfiprintf_r+0x164>
   16c80:	0889                	addi	a7,a7,2
   16c82:	4289                	li	t0,2
   16c84:	b5d5                	j	16b68 <_vfiprintf_r+0x164>
   16c86:	85d6                	mv	a1,s5
   16c88:	855e                	mv	a0,s7
   16c8a:	d7dfc0ef          	jal	13a06 <__swsetup_r>
   16c8e:	1c0513e3          	bnez	a0,17654 <_vfiprintf_r+0xc50>
   16c92:	00ca9783          	lh	a5,12(s5)
   16c96:	4729                	li	a4,10
   16c98:	8be9                	andi	a5,a5,26
   16c9a:	dce79de3          	bne	a5,a4,16a74 <_vfiprintf_r+0x70>
   16c9e:	00ea9783          	lh	a5,14(s5)
   16ca2:	dc07c9e3          	bltz	a5,16a74 <_vfiprintf_r+0x70>
   16ca6:	12c12083          	lw	ra,300(sp)
   16caa:	10012d03          	lw	s10,256(sp)
   16cae:	86da                	mv	a3,s6
   16cb0:	864e                	mv	a2,s3
   16cb2:	11012b03          	lw	s6,272(sp)
   16cb6:	11c12983          	lw	s3,284(sp)
   16cba:	85d6                	mv	a1,s5
   16cbc:	855e                	mv	a0,s7
   16cbe:	11412a83          	lw	s5,276(sp)
   16cc2:	10c12b83          	lw	s7,268(sp)
   16cc6:	6155                	addi	sp,sp,304
   16cc8:	1b90006f          	j	17680 <__sbprintf>
   16ccc:	41348b33          	sub	s6,s1,s3
   16cd0:	e13495e3          	bne	s1,s3,16ada <_vfiprintf_r+0xd6>
   16cd4:	0004c783          	lbu	a5,0(s1)
   16cd8:	b515                	j	16afc <_vfiprintf_r+0xf8>
   16cda:	0090                	addi	a2,sp,64
   16cdc:	85d6                	mv	a1,s5
   16cde:	855e                	mv	a0,s7
   16ce0:	eeafc0ef          	jal	133ca <__sprint_r>
   16ce4:	e911                	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   16ce6:	8462                	mv	s0,s8
   16ce8:	b539                	j	16af6 <_vfiprintf_r+0xf2>
   16cea:	0090                	addi	a2,sp,64
   16cec:	85d6                	mv	a1,s5
   16cee:	855e                	mv	a0,s7
   16cf0:	edafc0ef          	jal	133ca <__sprint_r>
   16cf4:	f00503e3          	beqz	a0,16bfa <_vfiprintf_r+0x1f6>
   16cf8:	8d4a                	mv	s10,s2
   16cfa:	00cad783          	lhu	a5,12(s5)
   16cfe:	12812403          	lw	s0,296(sp)
   16d02:	12412483          	lw	s1,292(sp)
   16d06:	0407f793          	andi	a5,a5,64
   16d0a:	12012903          	lw	s2,288(sp)
   16d0e:	11812a03          	lw	s4,280(sp)
   16d12:	10812c03          	lw	s8,264(sp)
   16d16:	10412c83          	lw	s9,260(sp)
   16d1a:	5dfe                	lw	s11,252(sp)
   16d1c:	12079ce3          	bnez	a5,17654 <_vfiprintf_r+0xc50>
   16d20:	12c12083          	lw	ra,300(sp)
   16d24:	11c12983          	lw	s3,284(sp)
   16d28:	11412a83          	lw	s5,276(sp)
   16d2c:	11012b03          	lw	s6,272(sp)
   16d30:	10c12b83          	lw	s7,268(sp)
   16d34:	856a                	mv	a0,s10
   16d36:	10012d03          	lw	s10,256(sp)
   16d3a:	6155                	addi	sp,sp,304
   16d3c:	8082                	ret
   16d3e:	0090                	addi	a2,sp,64
   16d40:	85d6                	mv	a1,s5
   16d42:	855e                	mv	a0,s7
   16d44:	d246                	sw	a7,36(sp)
   16d46:	d072                	sw	t3,32(sp)
   16d48:	c842                	sw	a6,16(sp)
   16d4a:	c67e                	sw	t6,12(sp)
   16d4c:	c416                	sw	t0,8(sp)
   16d4e:	e7cfc0ef          	jal	133ca <__sprint_r>
   16d52:	f15d                	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   16d54:	4726                	lw	a4,72(sp)
   16d56:	4796                	lw	a5,68(sp)
   16d58:	5892                	lw	a7,36(sp)
   16d5a:	5e02                	lw	t3,32(sp)
   16d5c:	4842                	lw	a6,16(sp)
   16d5e:	4fb2                	lw	t6,12(sp)
   16d60:	42a2                	lw	t0,8(sp)
   16d62:	8462                	mv	s0,s8
   16d64:	bd25                	j	16b9c <_vfiprintf_r+0x198>
   16d66:	636d                	lui	t1,0x1b
   16d68:	4641                	li	a2,16
   16d6a:	4796                	lw	a5,68(sp)
   16d6c:	a5830313          	addi	t1,t1,-1448 # 1aa58 <blanks.1>
   16d70:	04965563          	bge	a2,s1,16dba <_vfiprintf_r+0x3b6>
   16d74:	86a2                	mv	a3,s0
   16d76:	4dc1                	li	s11,16
   16d78:	481d                	li	a6,7
   16d7a:	c446                	sw	a7,8(sp)
   16d7c:	841a                	mv	s0,t1
   16d7e:	a021                	j	16d86 <_vfiprintf_r+0x382>
   16d80:	14c1                	addi	s1,s1,-16
   16d82:	029dd963          	bge	s11,s1,16db4 <_vfiprintf_r+0x3b0>
   16d86:	0741                	addi	a4,a4,16
   16d88:	0785                	addi	a5,a5,1
   16d8a:	c280                	sw	s0,0(a3)
   16d8c:	01b6a223          	sw	s11,4(a3)
   16d90:	c4ba                	sw	a4,72(sp)
   16d92:	c2be                	sw	a5,68(sp)
   16d94:	06a1                	addi	a3,a3,8
   16d96:	fef855e3          	bge	a6,a5,16d80 <_vfiprintf_r+0x37c>
   16d9a:	0090                	addi	a2,sp,64
   16d9c:	85d6                	mv	a1,s5
   16d9e:	855e                	mv	a0,s7
   16da0:	e2afc0ef          	jal	133ca <__sprint_r>
   16da4:	f931                	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   16da6:	14c1                	addi	s1,s1,-16
   16da8:	4726                	lw	a4,72(sp)
   16daa:	4796                	lw	a5,68(sp)
   16dac:	86e2                	mv	a3,s8
   16dae:	481d                	li	a6,7
   16db0:	fc9dcbe3          	blt	s11,s1,16d86 <_vfiprintf_r+0x382>
   16db4:	48a2                	lw	a7,8(sp)
   16db6:	8322                	mv	t1,s0
   16db8:	8436                	mv	s0,a3
   16dba:	9726                	add	a4,a4,s1
   16dbc:	0785                	addi	a5,a5,1
   16dbe:	00642023          	sw	t1,0(s0)
   16dc2:	c044                	sw	s1,4(s0)
   16dc4:	c4ba                	sw	a4,72(sp)
   16dc6:	c2be                	sw	a5,68(sp)
   16dc8:	461d                	li	a2,7
   16dca:	e2f652e3          	bge	a2,a5,16bee <_vfiprintf_r+0x1ea>
   16dce:	0090                	addi	a2,sp,64
   16dd0:	85d6                	mv	a1,s5
   16dd2:	855e                	mv	a0,s7
   16dd4:	c446                	sw	a7,8(sp)
   16dd6:	df4fc0ef          	jal	133ca <__sprint_r>
   16dda:	fd19                	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   16ddc:	4726                	lw	a4,72(sp)
   16dde:	48a2                	lw	a7,8(sp)
   16de0:	b539                	j	16bee <_vfiprintf_r+0x1ea>
   16de2:	01087713          	andi	a4,a6,16
   16de6:	000d2783          	lw	a5,0(s10)
   16dea:	0d11                	addi	s10,s10,4
   16dec:	e371                	bnez	a4,16eb0 <_vfiprintf_r+0x4ac>
   16dee:	04087713          	andi	a4,a6,64
   16df2:	cb5d                	beqz	a4,16ea8 <_vfiprintf_r+0x4a4>
   16df4:	07c2                	slli	a5,a5,0x10
   16df6:	87c1                	srai	a5,a5,0x10
   16df8:	41f7d893          	srai	a7,a5,0x1f
   16dfc:	8746                	mv	a4,a7
   16dfe:	e4075ce3          	bgez	a4,16c56 <_vfiprintf_r+0x252>
   16e02:	02d00613          	li	a2,45
   16e06:	00f03733          	snez	a4,a5
   16e0a:	411008b3          	neg	a7,a7
   16e0e:	02c10da3          	sb	a2,59(sp)
   16e12:	40e888b3          	sub	a7,a7,a4
   16e16:	40f007b3          	neg	a5,a5
   16e1a:	000dc463          	bltz	s11,16e22 <_vfiprintf_r+0x41e>
   16e1e:	f7f87813          	andi	a6,a6,-129
   16e22:	62089c63          	bnez	a7,1745a <_vfiprintf_r+0xa56>
   16e26:	4725                	li	a4,9
   16e28:	62f76963          	bltu	a4,a5,1745a <_vfiprintf_r+0xa56>
   16e2c:	03078793          	addi	a5,a5,48
   16e30:	0ff7f793          	zext.b	a5,a5
   16e34:	0ef107a3          	sb	a5,239(sp)
   16e38:	88ee                	mv	a7,s11
   16e3a:	01b04363          	bgtz	s11,16e40 <_vfiprintf_r+0x43c>
   16e3e:	4885                	li	a7,1
   16e40:	4e05                	li	t3,1
   16e42:	0ef10493          	addi	s1,sp,239
   16e46:	03b14783          	lbu	a5,59(sp)
   16e4a:	e20796e3          	bnez	a5,16c76 <_vfiprintf_r+0x272>
   16e4e:	b52d                	j	16c78 <_vfiprintf_r+0x274>
   16e50:	000d2483          	lw	s1,0(s10)
   16e54:	02010da3          	sb	zero,59(sp)
   16e58:	0d11                	addi	s10,s10,4
   16e5a:	70048463          	beqz	s1,17562 <_vfiprintf_r+0xb5e>
   16e5e:	c442                	sw	a6,8(sp)
   16e60:	5e0dc163          	bltz	s11,17442 <_vfiprintf_r+0xa3e>
   16e64:	866e                	mv	a2,s11
   16e66:	4581                	li	a1,0
   16e68:	8526                	mv	a0,s1
   16e6a:	c77fc0ef          	jal	13ae0 <memchr>
   16e6e:	4822                	lw	a6,8(sp)
   16e70:	8e6e                	mv	t3,s11
   16e72:	c119                	beqz	a0,16e78 <_vfiprintf_r+0x474>
   16e74:	40950e33          	sub	t3,a0,s1
   16e78:	03b14783          	lbu	a5,59(sp)
   16e7c:	fffe4893          	not	a7,t3
   16e80:	41f8d893          	srai	a7,a7,0x1f
   16e84:	011e78b3          	and	a7,t3,a7
   16e88:	4d81                	li	s11,0
   16e8a:	4281                	li	t0,0
   16e8c:	de0795e3          	bnez	a5,16c76 <_vfiprintf_r+0x272>
   16e90:	b9e1                	j	16b68 <_vfiprintf_r+0x164>
   16e92:	000d2783          	lw	a5,0(s10)
   16e96:	02010da3          	sb	zero,59(sp)
   16e9a:	0d11                	addi	s10,s10,4
   16e9c:	08f10623          	sb	a5,140(sp)
   16ea0:	4885                	li	a7,1
   16ea2:	4e05                	li	t3,1
   16ea4:	0164                	addi	s1,sp,140
   16ea6:	b97d                	j	16b64 <_vfiprintf_r+0x160>
   16ea8:	20087713          	andi	a4,a6,512
   16eac:	76071e63          	bnez	a4,17628 <_vfiprintf_r+0xc24>
   16eb0:	41f7d893          	srai	a7,a5,0x1f
   16eb4:	8746                	mv	a4,a7
   16eb6:	bb71                	j	16c52 <_vfiprintf_r+0x24e>
   16eb8:	41600b33          	neg	s6,s6
   16ebc:	0009c783          	lbu	a5,0(s3)
   16ec0:	00486813          	ori	a6,a6,4
   16ec4:	b989                	j	16b16 <_vfiprintf_r+0x112>
   16ec6:	02b00713          	li	a4,43
   16eca:	0009c783          	lbu	a5,0(s3)
   16ece:	02e10da3          	sb	a4,59(sp)
   16ed2:	b191                	j	16b16 <_vfiprintf_r+0x112>
   16ed4:	0009c783          	lbu	a5,0(s3)
   16ed8:	08086813          	ori	a6,a6,128
   16edc:	b92d                	j	16b16 <_vfiprintf_r+0x112>
   16ede:	0009c603          	lbu	a2,0(s3)
   16ee2:	02a00793          	li	a5,42
   16ee6:	00198693          	addi	a3,s3,1
   16eea:	76f60863          	beq	a2,a5,1765a <_vfiprintf_r+0xc56>
   16eee:	fd060793          	addi	a5,a2,-48
   16ef2:	4725                	li	a4,9
   16ef4:	4d81                	li	s11,0
   16ef6:	45a5                	li	a1,9
   16ef8:	02f76063          	bltu	a4,a5,16f18 <_vfiprintf_r+0x514>
   16efc:	0006c603          	lbu	a2,0(a3)
   16f00:	002d9713          	slli	a4,s11,0x2
   16f04:	9dba                	add	s11,s11,a4
   16f06:	0d86                	slli	s11,s11,0x1
   16f08:	9dbe                	add	s11,s11,a5
   16f0a:	fd060793          	addi	a5,a2,-48
   16f0e:	0685                	addi	a3,a3,1
   16f10:	fef5f6e3          	bgeu	a1,a5,16efc <_vfiprintf_r+0x4f8>
   16f14:	4a0dcb63          	bltz	s11,173ca <_vfiprintf_r+0x9c6>
   16f18:	89b6                	mv	s3,a3
   16f1a:	b101                	j	16b1a <_vfiprintf_r+0x116>
   16f1c:	855e                	mv	a0,s7
   16f1e:	c442                	sw	a6,8(sp)
   16f20:	ccffc0ef          	jal	13bee <_localeconv_r>
   16f24:	415c                	lw	a5,4(a0)
   16f26:	853e                	mv	a0,a5
   16f28:	ce3e                	sw	a5,28(sp)
   16f2a:	e87f90ef          	jal	10db0 <strlen>
   16f2e:	87aa                	mv	a5,a0
   16f30:	855e                	mv	a0,s7
   16f32:	cc3e                	sw	a5,24(sp)
   16f34:	cbbfc0ef          	jal	13bee <_localeconv_r>
   16f38:	4518                	lw	a4,8(a0)
   16f3a:	47e2                	lw	a5,24(sp)
   16f3c:	4822                	lw	a6,8(sp)
   16f3e:	ca3a                	sw	a4,20(sp)
   16f40:	ce0782e3          	beqz	a5,16c24 <_vfiprintf_r+0x220>
   16f44:	4752                	lw	a4,20(sp)
   16f46:	0009c783          	lbu	a5,0(s3)
   16f4a:	bc0706e3          	beqz	a4,16b16 <_vfiprintf_r+0x112>
   16f4e:	00074703          	lbu	a4,0(a4)
   16f52:	bc0702e3          	beqz	a4,16b16 <_vfiprintf_r+0x112>
   16f56:	40086813          	ori	a6,a6,1024
   16f5a:	be75                	j	16b16 <_vfiprintf_r+0x112>
   16f5c:	0009c783          	lbu	a5,0(s3)
   16f60:	00186813          	ori	a6,a6,1
   16f64:	be4d                	j	16b16 <_vfiprintf_r+0x112>
   16f66:	03b14703          	lbu	a4,59(sp)
   16f6a:	0009c783          	lbu	a5,0(s3)
   16f6e:	ba0714e3          	bnez	a4,16b16 <_vfiprintf_r+0x112>
   16f72:	02000713          	li	a4,32
   16f76:	02e10da3          	sb	a4,59(sp)
   16f7a:	be71                	j	16b16 <_vfiprintf_r+0x112>
   16f7c:	01086713          	ori	a4,a6,16
   16f80:	02077793          	andi	a5,a4,32
   16f84:	40078063          	beqz	a5,17384 <_vfiprintf_r+0x980>
   16f88:	0d1d                	addi	s10,s10,7
   16f8a:	ff8d7d13          	andi	s10,s10,-8
   16f8e:	000d2783          	lw	a5,0(s10)
   16f92:	004d2583          	lw	a1,4(s10)
   16f96:	0d21                	addi	s10,s10,8
   16f98:	02010da3          	sb	zero,59(sp)
   16f9c:	bff77813          	andi	a6,a4,-1025
   16fa0:	0a0dc163          	bltz	s11,17042 <_vfiprintf_r+0x63e>
   16fa4:	00b7e633          	or	a2,a5,a1
   16fa8:	b7f77713          	andi	a4,a4,-1153
   16fac:	56061d63          	bnez	a2,17526 <_vfiprintf_r+0xb22>
   16fb0:	8e42                	mv	t3,a6
   16fb2:	4781                	li	a5,0
   16fb4:	883a                	mv	a6,a4
   16fb6:	060d9e63          	bnez	s11,17032 <_vfiprintf_r+0x62e>
   16fba:	ca0798e3          	bnez	a5,16c6a <_vfiprintf_r+0x266>
   16fbe:	001e7e13          	andi	t3,t3,1
   16fc2:	3e0e0463          	beqz	t3,173aa <_vfiprintf_r+0x9a6>
   16fc6:	03000793          	li	a5,48
   16fca:	0ef107a3          	sb	a5,239(sp)
   16fce:	88f2                	mv	a7,t3
   16fd0:	0ef10493          	addi	s1,sp,239
   16fd4:	bd8d                	j	16e46 <_vfiprintf_r+0x442>
   16fd6:	0009c783          	lbu	a5,0(s3)
   16fda:	06c00713          	li	a4,108
   16fde:	56e78463          	beq	a5,a4,17546 <_vfiprintf_r+0xb42>
   16fe2:	01086813          	ori	a6,a6,16
   16fe6:	be05                	j	16b16 <_vfiprintf_r+0x112>
   16fe8:	0009c783          	lbu	a5,0(s3)
   16fec:	06800713          	li	a4,104
   16ff0:	54e78463          	beq	a5,a4,17538 <_vfiprintf_r+0xb34>
   16ff4:	04086813          	ori	a6,a6,64
   16ff8:	be39                	j	16b16 <_vfiprintf_r+0x112>
   16ffa:	01086e13          	ori	t3,a6,16
   16ffe:	020e7793          	andi	a5,t3,32
   17002:	36078363          	beqz	a5,17368 <_vfiprintf_r+0x964>
   17006:	0d1d                	addi	s10,s10,7
   17008:	ff8d7d13          	andi	s10,s10,-8
   1700c:	000d2783          	lw	a5,0(s10)
   17010:	004d2883          	lw	a7,4(s10)
   17014:	0d21                	addi	s10,s10,8
   17016:	02010da3          	sb	zero,59(sp)
   1701a:	8872                	mv	a6,t3
   1701c:	e00dc3e3          	bltz	s11,16e22 <_vfiprintf_r+0x41e>
   17020:	0117e733          	or	a4,a5,a7
   17024:	f7fe7813          	andi	a6,t3,-129
   17028:	de071de3          	bnez	a4,16e22 <_vfiprintf_r+0x41e>
   1702c:	4785                	li	a5,1
   1702e:	f80d86e3          	beqz	s11,16fba <_vfiprintf_r+0x5b6>
   17032:	4705                	li	a4,1
   17034:	60e78c63          	beq	a5,a4,1764c <_vfiprintf_r+0xc48>
   17038:	4709                	li	a4,2
   1703a:	54e78663          	beq	a5,a4,17586 <_vfiprintf_r+0xb82>
   1703e:	4781                	li	a5,0
   17040:	4581                	li	a1,0
   17042:	1984                	addi	s1,sp,240
   17044:	01d59693          	slli	a3,a1,0x1d
   17048:	0077f713          	andi	a4,a5,7
   1704c:	838d                	srli	a5,a5,0x3
   1704e:	03070713          	addi	a4,a4,48
   17052:	8fd5                	or	a5,a5,a3
   17054:	818d                	srli	a1,a1,0x3
   17056:	fee48fa3          	sb	a4,-1(s1)
   1705a:	00b7e6b3          	or	a3,a5,a1
   1705e:	8526                	mv	a0,s1
   17060:	14fd                	addi	s1,s1,-1
   17062:	f2ed                	bnez	a3,17044 <_vfiprintf_r+0x640>
   17064:	00187793          	andi	a5,a6,1
   17068:	20078b63          	beqz	a5,1727e <_vfiprintf_r+0x87a>
   1706c:	03000793          	li	a5,48
   17070:	20f70763          	beq	a4,a5,1727e <_vfiprintf_r+0x87a>
   17074:	1579                	addi	a0,a0,-2
   17076:	fef48fa3          	sb	a5,-1(s1)
   1707a:	199c                	addi	a5,sp,240
   1707c:	40a78e33          	sub	t3,a5,a0
   17080:	88ee                	mv	a7,s11
   17082:	35cdc163          	blt	s11,t3,173c4 <_vfiprintf_r+0x9c0>
   17086:	84aa                	mv	s1,a0
   17088:	bb7d                	j	16e46 <_vfiprintf_r+0x442>
   1708a:	6721                	lui	a4,0x8
   1708c:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   17090:	02e11e23          	sh	a4,60(sp)
   17094:	6769                	lui	a4,0x1a
   17096:	1f870713          	addi	a4,a4,504 # 1a1f8 <__clzsi2+0xd8>
   1709a:	000d2783          	lw	a5,0(s10)
   1709e:	4581                	li	a1,0
   170a0:	00286813          	ori	a6,a6,2
   170a4:	0d11                	addi	s10,s10,4
   170a6:	c23a                	sw	a4,4(sp)
   170a8:	02010da3          	sb	zero,59(sp)
   170ac:	1a0dc763          	bltz	s11,1725a <_vfiprintf_r+0x856>
   170b0:	00b7e733          	or	a4,a5,a1
   170b4:	f7f87613          	andi	a2,a6,-129
   170b8:	18071d63          	bnez	a4,17252 <_vfiprintf_r+0x84e>
   170bc:	8e42                	mv	t3,a6
   170be:	4789                	li	a5,2
   170c0:	8832                	mv	a6,a2
   170c2:	bdd5                	j	16fb6 <_vfiprintf_r+0x5b2>
   170c4:	02087793          	andi	a5,a6,32
   170c8:	2e079463          	bnez	a5,173b0 <_vfiprintf_r+0x9ac>
   170cc:	01087793          	andi	a5,a6,16
   170d0:	48079263          	bnez	a5,17554 <_vfiprintf_r+0xb50>
   170d4:	04087793          	andi	a5,a6,64
   170d8:	54079f63          	bnez	a5,17636 <_vfiprintf_r+0xc32>
   170dc:	20087813          	andi	a6,a6,512
   170e0:	46080a63          	beqz	a6,17554 <_vfiprintf_r+0xb50>
   170e4:	000d2783          	lw	a5,0(s10)
   170e8:	0d11                	addi	s10,s10,4
   170ea:	01278023          	sb	s2,0(a5)
   170ee:	b2e9                	j	16ab8 <_vfiprintf_r+0xb4>
   170f0:	411b0333          	sub	t1,s6,a7
   170f4:	ac6056e3          	blez	t1,16bc0 <_vfiprintf_r+0x1bc>
   170f8:	6f6d                	lui	t5,0x1b
   170fa:	4641                	li	a2,16
   170fc:	a48f0f13          	addi	t5,t5,-1464 # 1aa48 <zeroes.0>
   17100:	04665f63          	bge	a2,t1,1715e <_vfiprintf_r+0x75a>
   17104:	c426                	sw	s1,8(sp)
   17106:	86a2                	mv	a3,s0
   17108:	4ec1                	li	t4,16
   1710a:	4f9d                	li	t6,7
   1710c:	c642                	sw	a6,12(sp)
   1710e:	c872                	sw	t3,16(sp)
   17110:	841a                	mv	s0,t1
   17112:	d046                	sw	a7,32(sp)
   17114:	84fa                	mv	s1,t5
   17116:	a021                	j	1711e <_vfiprintf_r+0x71a>
   17118:	1441                	addi	s0,s0,-16
   1711a:	028edb63          	bge	t4,s0,17150 <_vfiprintf_r+0x74c>
   1711e:	0741                	addi	a4,a4,16
   17120:	0785                	addi	a5,a5,1
   17122:	c284                	sw	s1,0(a3)
   17124:	01d6a223          	sw	t4,4(a3)
   17128:	c4ba                	sw	a4,72(sp)
   1712a:	c2be                	sw	a5,68(sp)
   1712c:	06a1                	addi	a3,a3,8
   1712e:	feffd5e3          	bge	t6,a5,17118 <_vfiprintf_r+0x714>
   17132:	0090                	addi	a2,sp,64
   17134:	85d6                	mv	a1,s5
   17136:	855e                	mv	a0,s7
   17138:	a92fc0ef          	jal	133ca <__sprint_r>
   1713c:	ba051ee3          	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   17140:	4ec1                	li	t4,16
   17142:	1441                	addi	s0,s0,-16
   17144:	4726                	lw	a4,72(sp)
   17146:	4796                	lw	a5,68(sp)
   17148:	86e2                	mv	a3,s8
   1714a:	4f9d                	li	t6,7
   1714c:	fc8ec9e3          	blt	t4,s0,1711e <_vfiprintf_r+0x71a>
   17150:	8f26                	mv	t5,s1
   17152:	4832                	lw	a6,12(sp)
   17154:	4e42                	lw	t3,16(sp)
   17156:	5882                	lw	a7,32(sp)
   17158:	44a2                	lw	s1,8(sp)
   1715a:	8322                	mv	t1,s0
   1715c:	8436                	mv	s0,a3
   1715e:	971a                	add	a4,a4,t1
   17160:	0785                	addi	a5,a5,1
   17162:	01e42023          	sw	t5,0(s0)
   17166:	00642223          	sw	t1,4(s0)
   1716a:	c4ba                	sw	a4,72(sp)
   1716c:	c2be                	sw	a5,68(sp)
   1716e:	461d                	li	a2,7
   17170:	0421                	addi	s0,s0,8
   17172:	a4f657e3          	bge	a2,a5,16bc0 <_vfiprintf_r+0x1bc>
   17176:	0090                	addi	a2,sp,64
   17178:	85d6                	mv	a1,s5
   1717a:	855e                	mv	a0,s7
   1717c:	c846                	sw	a7,16(sp)
   1717e:	c672                	sw	t3,12(sp)
   17180:	c442                	sw	a6,8(sp)
   17182:	a48fc0ef          	jal	133ca <__sprint_r>
   17186:	b60519e3          	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   1718a:	4e32                	lw	t3,12(sp)
   1718c:	4726                	lw	a4,72(sp)
   1718e:	4796                	lw	a5,68(sp)
   17190:	41cd8db3          	sub	s11,s11,t3
   17194:	48c2                	lw	a7,16(sp)
   17196:	4822                	lw	a6,8(sp)
   17198:	8462                	mv	s0,s8
   1719a:	a3b057e3          	blez	s11,16bc8 <_vfiprintf_r+0x1c4>
   1719e:	6f6d                	lui	t5,0x1b
   171a0:	a48f0f13          	addi	t5,t5,-1464 # 1aa48 <zeroes.0>
   171a4:	05ba5c63          	bge	s4,s11,171fc <_vfiprintf_r+0x7f8>
   171a8:	86a2                	mv	a3,s0
   171aa:	431d                	li	t1,7
   171ac:	846e                	mv	s0,s11
   171ae:	c442                	sw	a6,8(sp)
   171b0:	c672                	sw	t3,12(sp)
   171b2:	c846                	sw	a7,16(sp)
   171b4:	8de6                	mv	s11,s9
   171b6:	a021                	j	171be <_vfiprintf_r+0x7ba>
   171b8:	1441                	addi	s0,s0,-16
   171ba:	028a5b63          	bge	s4,s0,171f0 <_vfiprintf_r+0x7ec>
   171be:	0741                	addi	a4,a4,16
   171c0:	0785                	addi	a5,a5,1
   171c2:	0196a023          	sw	s9,0(a3)
   171c6:	0146a223          	sw	s4,4(a3)
   171ca:	c4ba                	sw	a4,72(sp)
   171cc:	c2be                	sw	a5,68(sp)
   171ce:	06a1                	addi	a3,a3,8
   171d0:	fef354e3          	bge	t1,a5,171b8 <_vfiprintf_r+0x7b4>
   171d4:	0090                	addi	a2,sp,64
   171d6:	85d6                	mv	a1,s5
   171d8:	855e                	mv	a0,s7
   171da:	9f0fc0ef          	jal	133ca <__sprint_r>
   171de:	b0051de3          	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   171e2:	1441                	addi	s0,s0,-16
   171e4:	4726                	lw	a4,72(sp)
   171e6:	4796                	lw	a5,68(sp)
   171e8:	86e2                	mv	a3,s8
   171ea:	431d                	li	t1,7
   171ec:	fc8a49e3          	blt	s4,s0,171be <_vfiprintf_r+0x7ba>
   171f0:	4822                	lw	a6,8(sp)
   171f2:	4e32                	lw	t3,12(sp)
   171f4:	48c2                	lw	a7,16(sp)
   171f6:	8f6e                	mv	t5,s11
   171f8:	8da2                	mv	s11,s0
   171fa:	8436                	mv	s0,a3
   171fc:	976e                	add	a4,a4,s11
   171fe:	0785                	addi	a5,a5,1
   17200:	01e42023          	sw	t5,0(s0)
   17204:	01b42223          	sw	s11,4(s0)
   17208:	c4ba                	sw	a4,72(sp)
   1720a:	c2be                	sw	a5,68(sp)
   1720c:	461d                	li	a2,7
   1720e:	0421                	addi	s0,s0,8
   17210:	9af65ce3          	bge	a2,a5,16bc8 <_vfiprintf_r+0x1c4>
   17214:	0090                	addi	a2,sp,64
   17216:	85d6                	mv	a1,s5
   17218:	855e                	mv	a0,s7
   1721a:	c846                	sw	a7,16(sp)
   1721c:	c672                	sw	t3,12(sp)
   1721e:	c442                	sw	a6,8(sp)
   17220:	9aafc0ef          	jal	133ca <__sprint_r>
   17224:	ac051ae3          	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   17228:	4726                	lw	a4,72(sp)
   1722a:	4796                	lw	a5,68(sp)
   1722c:	48c2                	lw	a7,16(sp)
   1722e:	4e32                	lw	t3,12(sp)
   17230:	4822                	lw	a6,8(sp)
   17232:	8462                	mv	s0,s8
   17234:	ba51                	j	16bc8 <_vfiprintf_r+0x1c4>
   17236:	0090                	addi	a2,sp,64
   17238:	85d6                	mv	a1,s5
   1723a:	855e                	mv	a0,s7
   1723c:	c646                	sw	a7,12(sp)
   1723e:	c442                	sw	a6,8(sp)
   17240:	98afc0ef          	jal	133ca <__sprint_r>
   17244:	aa051ae3          	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   17248:	4726                	lw	a4,72(sp)
   1724a:	48b2                	lw	a7,12(sp)
   1724c:	4822                	lw	a6,8(sp)
   1724e:	8462                	mv	s0,s8
   17250:	b279                	j	16bde <_vfiprintf_r+0x1da>
   17252:	4709                	li	a4,2
   17254:	8832                	mv	a6,a2
   17256:	de0706e3          	beqz	a4,17042 <_vfiprintf_r+0x63e>
   1725a:	4612                	lw	a2,4(sp)
   1725c:	1984                	addi	s1,sp,240
   1725e:	00f7f713          	andi	a4,a5,15
   17262:	9732                	add	a4,a4,a2
   17264:	00074683          	lbu	a3,0(a4)
   17268:	8391                	srli	a5,a5,0x4
   1726a:	01c59713          	slli	a4,a1,0x1c
   1726e:	8fd9                	or	a5,a5,a4
   17270:	8191                	srli	a1,a1,0x4
   17272:	fed48fa3          	sb	a3,-1(s1)
   17276:	00b7e733          	or	a4,a5,a1
   1727a:	14fd                	addi	s1,s1,-1
   1727c:	f36d                	bnez	a4,1725e <_vfiprintf_r+0x85a>
   1727e:	199c                	addi	a5,sp,240
   17280:	40978e33          	sub	t3,a5,s1
   17284:	88ee                	mv	a7,s11
   17286:	bdcdd0e3          	bge	s11,t3,16e46 <_vfiprintf_r+0x442>
   1728a:	88f2                	mv	a7,t3
   1728c:	be6d                	j	16e46 <_vfiprintf_r+0x442>
   1728e:	636d                	lui	t1,0x1b
   17290:	4641                	li	a2,16
   17292:	a5830313          	addi	t1,t1,-1448 # 1aa58 <blanks.1>
   17296:	07d65363          	bge	a2,t4,172fc <_vfiprintf_r+0x8f8>
   1729a:	c826                	sw	s1,16(sp)
   1729c:	86a2                	mv	a3,s0
   1729e:	4f41                	li	t5,16
   172a0:	439d                	li	t2,7
   172a2:	c416                	sw	t0,8(sp)
   172a4:	c67e                	sw	t6,12(sp)
   172a6:	d042                	sw	a6,32(sp)
   172a8:	d272                	sw	t3,36(sp)
   172aa:	8476                	mv	s0,t4
   172ac:	d446                	sw	a7,40(sp)
   172ae:	849a                	mv	s1,t1
   172b0:	a021                	j	172b8 <_vfiprintf_r+0x8b4>
   172b2:	1441                	addi	s0,s0,-16
   172b4:	028f5b63          	bge	t5,s0,172ea <_vfiprintf_r+0x8e6>
   172b8:	0741                	addi	a4,a4,16
   172ba:	0785                	addi	a5,a5,1
   172bc:	c284                	sw	s1,0(a3)
   172be:	01e6a223          	sw	t5,4(a3)
   172c2:	c4ba                	sw	a4,72(sp)
   172c4:	c2be                	sw	a5,68(sp)
   172c6:	06a1                	addi	a3,a3,8
   172c8:	fef3d5e3          	bge	t2,a5,172b2 <_vfiprintf_r+0x8ae>
   172cc:	0090                	addi	a2,sp,64
   172ce:	85d6                	mv	a1,s5
   172d0:	855e                	mv	a0,s7
   172d2:	8f8fc0ef          	jal	133ca <__sprint_r>
   172d6:	a20511e3          	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   172da:	4f41                	li	t5,16
   172dc:	1441                	addi	s0,s0,-16
   172de:	4726                	lw	a4,72(sp)
   172e0:	4796                	lw	a5,68(sp)
   172e2:	86e2                	mv	a3,s8
   172e4:	439d                	li	t2,7
   172e6:	fc8f49e3          	blt	t5,s0,172b8 <_vfiprintf_r+0x8b4>
   172ea:	8326                	mv	t1,s1
   172ec:	42a2                	lw	t0,8(sp)
   172ee:	4fb2                	lw	t6,12(sp)
   172f0:	5802                	lw	a6,32(sp)
   172f2:	5e12                	lw	t3,36(sp)
   172f4:	58a2                	lw	a7,40(sp)
   172f6:	44c2                	lw	s1,16(sp)
   172f8:	8ea2                	mv	t4,s0
   172fa:	8436                	mv	s0,a3
   172fc:	9776                	add	a4,a4,t4
   172fe:	0785                	addi	a5,a5,1
   17300:	00642023          	sw	t1,0(s0)
   17304:	01d42223          	sw	t4,4(s0)
   17308:	c4ba                	sw	a4,72(sp)
   1730a:	c2be                	sw	a5,68(sp)
   1730c:	461d                	li	a2,7
   1730e:	0421                	addi	s0,s0,8
   17310:	86f656e3          	bge	a2,a5,16b7c <_vfiprintf_r+0x178>
   17314:	0090                	addi	a2,sp,64
   17316:	85d6                	mv	a1,s5
   17318:	855e                	mv	a0,s7
   1731a:	d246                	sw	a7,36(sp)
   1731c:	d072                	sw	t3,32(sp)
   1731e:	c842                	sw	a6,16(sp)
   17320:	c67e                	sw	t6,12(sp)
   17322:	c416                	sw	t0,8(sp)
   17324:	8a6fc0ef          	jal	133ca <__sprint_r>
   17328:	9c0518e3          	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   1732c:	4726                	lw	a4,72(sp)
   1732e:	4796                	lw	a5,68(sp)
   17330:	5892                	lw	a7,36(sp)
   17332:	5e02                	lw	t3,32(sp)
   17334:	4842                	lw	a6,16(sp)
   17336:	4fb2                	lw	t6,12(sp)
   17338:	42a2                	lw	t0,8(sp)
   1733a:	8462                	mv	s0,s8
   1733c:	841ff06f          	j	16b7c <_vfiprintf_r+0x178>
   17340:	0090                	addi	a2,sp,64
   17342:	85d6                	mv	a1,s5
   17344:	855e                	mv	a0,s7
   17346:	d046                	sw	a7,32(sp)
   17348:	c872                	sw	t3,16(sp)
   1734a:	c642                	sw	a6,12(sp)
   1734c:	c47e                	sw	t6,8(sp)
   1734e:	87cfc0ef          	jal	133ca <__sprint_r>
   17352:	9a0513e3          	bnez	a0,16cf8 <_vfiprintf_r+0x2f4>
   17356:	4726                	lw	a4,72(sp)
   17358:	4796                	lw	a5,68(sp)
   1735a:	5882                	lw	a7,32(sp)
   1735c:	4e42                	lw	t3,16(sp)
   1735e:	4832                	lw	a6,12(sp)
   17360:	4fa2                	lw	t6,8(sp)
   17362:	8462                	mv	s0,s8
   17364:	855ff06f          	j	16bb8 <_vfiprintf_r+0x1b4>
   17368:	010e7713          	andi	a4,t3,16
   1736c:	000d2783          	lw	a5,0(s10)
   17370:	0d11                	addi	s10,s10,4
   17372:	e719                	bnez	a4,17380 <_vfiprintf_r+0x97c>
   17374:	040e7713          	andi	a4,t3,64
   17378:	1e070f63          	beqz	a4,17576 <_vfiprintf_r+0xb72>
   1737c:	07c2                	slli	a5,a5,0x10
   1737e:	83c1                	srli	a5,a5,0x10
   17380:	4881                	li	a7,0
   17382:	b951                	j	17016 <_vfiprintf_r+0x612>
   17384:	01077613          	andi	a2,a4,16
   17388:	000d2783          	lw	a5,0(s10)
   1738c:	0d11                	addi	s10,s10,4
   1738e:	ee01                	bnez	a2,173a6 <_vfiprintf_r+0x9a2>
   17390:	04077613          	andi	a2,a4,64
   17394:	c609                	beqz	a2,1739e <_vfiprintf_r+0x99a>
   17396:	07c2                	slli	a5,a5,0x10
   17398:	83c1                	srli	a5,a5,0x10
   1739a:	4581                	li	a1,0
   1739c:	bef5                	j	16f98 <_vfiprintf_r+0x594>
   1739e:	20077613          	andi	a2,a4,512
   173a2:	2a061163          	bnez	a2,17644 <_vfiprintf_r+0xc40>
   173a6:	4581                	li	a1,0
   173a8:	bec5                	j	16f98 <_vfiprintf_r+0x594>
   173aa:	4881                	li	a7,0
   173ac:	1984                	addi	s1,sp,240
   173ae:	bc61                	j	16e46 <_vfiprintf_r+0x442>
   173b0:	000d2783          	lw	a5,0(s10)
   173b4:	41f95713          	srai	a4,s2,0x1f
   173b8:	0d11                	addi	s10,s10,4
   173ba:	0127a023          	sw	s2,0(a5)
   173be:	c3d8                	sw	a4,4(a5)
   173c0:	ef8ff06f          	j	16ab8 <_vfiprintf_r+0xb4>
   173c4:	88f2                	mv	a7,t3
   173c6:	84aa                	mv	s1,a0
   173c8:	bcbd                	j	16e46 <_vfiprintf_r+0x442>
   173ca:	5dfd                	li	s11,-1
   173cc:	89b6                	mv	s3,a3
   173ce:	f4cff06f          	j	16b1a <_vfiprintf_r+0x116>
   173d2:	8e42                	mv	t3,a6
   173d4:	b12d                	j	16ffe <_vfiprintf_r+0x5fa>
   173d6:	8742                	mv	a4,a6
   173d8:	b665                	j	16f80 <_vfiprintf_r+0x57c>
   173da:	67e9                	lui	a5,0x1a
   173dc:	20c78793          	addi	a5,a5,524 # 1a20c <__clzsi2+0xec>
   173e0:	c23e                	sw	a5,4(sp)
   173e2:	02087793          	andi	a5,a6,32
   173e6:	c3a9                	beqz	a5,17428 <_vfiprintf_r+0xa24>
   173e8:	0d1d                	addi	s10,s10,7
   173ea:	ff8d7d13          	andi	s10,s10,-8
   173ee:	000d2783          	lw	a5,0(s10)
   173f2:	004d2583          	lw	a1,4(s10)
   173f6:	0d21                	addi	s10,s10,8
   173f8:	00187713          	andi	a4,a6,1
   173fc:	cf01                	beqz	a4,17414 <_vfiprintf_r+0xa10>
   173fe:	00b7e733          	or	a4,a5,a1
   17402:	cb09                	beqz	a4,17414 <_vfiprintf_r+0xa10>
   17404:	03000713          	li	a4,48
   17408:	02e10e23          	sb	a4,60(sp)
   1740c:	02c10ea3          	sb	a2,61(sp)
   17410:	00286813          	ori	a6,a6,2
   17414:	bff87813          	andi	a6,a6,-1025
   17418:	b941                	j	170a8 <_vfiprintf_r+0x6a4>
   1741a:	67e9                	lui	a5,0x1a
   1741c:	1f878793          	addi	a5,a5,504 # 1a1f8 <__clzsi2+0xd8>
   17420:	c23e                	sw	a5,4(sp)
   17422:	02087793          	andi	a5,a6,32
   17426:	f3e9                	bnez	a5,173e8 <_vfiprintf_r+0x9e4>
   17428:	01087713          	andi	a4,a6,16
   1742c:	000d2783          	lw	a5,0(s10)
   17430:	0d11                	addi	s10,s10,4
   17432:	e315                	bnez	a4,17456 <_vfiprintf_r+0xa52>
   17434:	04087713          	andi	a4,a6,64
   17438:	cb19                	beqz	a4,1744e <_vfiprintf_r+0xa4a>
   1743a:	07c2                	slli	a5,a5,0x10
   1743c:	83c1                	srli	a5,a5,0x10
   1743e:	4581                	li	a1,0
   17440:	bf65                	j	173f8 <_vfiprintf_r+0x9f4>
   17442:	8526                	mv	a0,s1
   17444:	96df90ef          	jal	10db0 <strlen>
   17448:	4822                	lw	a6,8(sp)
   1744a:	8e2a                	mv	t3,a0
   1744c:	b435                	j	16e78 <_vfiprintf_r+0x474>
   1744e:	20087713          	andi	a4,a6,512
   17452:	1c071763          	bnez	a4,17620 <_vfiprintf_r+0xc1c>
   17456:	4581                	li	a1,0
   17458:	b745                	j	173f8 <_vfiprintf_r+0x9f4>
   1745a:	ccccdf37          	lui	t5,0xccccd
   1745e:	ccccdfb7          	lui	t6,0xccccd
   17462:	42d2                	lw	t0,20(sp)
   17464:	40087e13          	andi	t3,a6,1024
   17468:	4581                	li	a1,0
   1746a:	1988                	addi	a0,sp,240
   1746c:	4315                	li	t1,5
   1746e:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccb1271>
   17472:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccb1270>
   17476:	0ff00e93          	li	t4,255
   1747a:	a081                	j	174ba <_vfiprintf_r+0xab6>
   1747c:	00f4b733          	sltu	a4,s1,a5
   17480:	9726                	add	a4,a4,s1
   17482:	02677733          	remu	a4,a4,t1
   17486:	40e78733          	sub	a4,a5,a4
   1748a:	00e7b633          	sltu	a2,a5,a4
   1748e:	40c88633          	sub	a2,a7,a2
   17492:	03f703b3          	mul	t2,a4,t6
   17496:	03e60633          	mul	a2,a2,t5
   1749a:	03e73533          	mulhu	a0,a4,t5
   1749e:	961e                	add	a2,a2,t2
   174a0:	03e70733          	mul	a4,a4,t5
   174a4:	962a                	add	a2,a2,a0
   174a6:	01f61513          	slli	a0,a2,0x1f
   174aa:	8205                	srli	a2,a2,0x1
   174ac:	8305                	srli	a4,a4,0x1
   174ae:	8f49                	or	a4,a4,a0
   174b0:	16088263          	beqz	a7,17614 <_vfiprintf_r+0xc10>
   174b4:	87ba                	mv	a5,a4
   174b6:	88b2                	mv	a7,a2
   174b8:	8536                	mv	a0,a3
   174ba:	011784b3          	add	s1,a5,a7
   174be:	00f4b733          	sltu	a4,s1,a5
   174c2:	9726                	add	a4,a4,s1
   174c4:	02677733          	remu	a4,a4,t1
   174c8:	fff50693          	addi	a3,a0,-1
   174cc:	0585                	addi	a1,a1,1
   174ce:	40e78733          	sub	a4,a5,a4
   174d2:	00e7b3b3          	sltu	t2,a5,a4
   174d6:	407883b3          	sub	t2,a7,t2
   174da:	03e73633          	mulhu	a2,a4,t5
   174de:	03e383b3          	mul	t2,t2,t5
   174e2:	03e70733          	mul	a4,a4,t5
   174e6:	93b2                	add	t2,t2,a2
   174e8:	03fe                	slli	t2,t2,0x1f
   174ea:	00175613          	srli	a2,a4,0x1
   174ee:	00c3e633          	or	a2,t2,a2
   174f2:	00261713          	slli	a4,a2,0x2
   174f6:	9732                	add	a4,a4,a2
   174f8:	0706                	slli	a4,a4,0x1
   174fa:	40e78733          	sub	a4,a5,a4
   174fe:	03070713          	addi	a4,a4,48
   17502:	fee50fa3          	sb	a4,-1(a0)
   17506:	f60e0be3          	beqz	t3,1747c <_vfiprintf_r+0xa78>
   1750a:	0002c703          	lbu	a4,0(t0)
   1750e:	f6b717e3          	bne	a4,a1,1747c <_vfiprintf_r+0xa78>
   17512:	f7d585e3          	beq	a1,t4,1747c <_vfiprintf_r+0xa78>
   17516:	06089b63          	bnez	a7,1758c <_vfiprintf_r+0xb88>
   1751a:	4725                	li	a4,9
   1751c:	06f76863          	bltu	a4,a5,1758c <_vfiprintf_r+0xb88>
   17520:	84b6                	mv	s1,a3
   17522:	ca16                	sw	t0,20(sp)
   17524:	bba9                	j	1727e <_vfiprintf_r+0x87a>
   17526:	883a                	mv	a6,a4
   17528:	4701                	li	a4,0
   1752a:	b0070ce3          	beqz	a4,17042 <_vfiprintf_r+0x63e>
   1752e:	b335                	j	1725a <_vfiprintf_r+0x856>
   17530:	be2f90ef          	jal	10912 <__sinit>
   17534:	cfaff06f          	j	16a2e <_vfiprintf_r+0x2a>
   17538:	0019c783          	lbu	a5,1(s3)
   1753c:	20086813          	ori	a6,a6,512
   17540:	0985                	addi	s3,s3,1
   17542:	dd4ff06f          	j	16b16 <_vfiprintf_r+0x112>
   17546:	0019c783          	lbu	a5,1(s3)
   1754a:	02086813          	ori	a6,a6,32
   1754e:	0985                	addi	s3,s3,1
   17550:	dc6ff06f          	j	16b16 <_vfiprintf_r+0x112>
   17554:	000d2783          	lw	a5,0(s10)
   17558:	0d11                	addi	s10,s10,4
   1755a:	0127a023          	sw	s2,0(a5)
   1755e:	d5aff06f          	j	16ab8 <_vfiprintf_r+0xb4>
   17562:	4799                	li	a5,6
   17564:	8e6e                	mv	t3,s11
   17566:	0bb7eb63          	bltu	a5,s11,1761c <_vfiprintf_r+0xc18>
   1756a:	64e9                	lui	s1,0x1a
   1756c:	88f2                	mv	a7,t3
   1756e:	22048493          	addi	s1,s1,544 # 1a220 <__clzsi2+0x100>
   17572:	df2ff06f          	j	16b64 <_vfiprintf_r+0x160>
   17576:	200e7713          	andi	a4,t3,512
   1757a:	e00703e3          	beqz	a4,17380 <_vfiprintf_r+0x97c>
   1757e:	0ff7f793          	zext.b	a5,a5
   17582:	4881                	li	a7,0
   17584:	bc49                	j	17016 <_vfiprintf_r+0x612>
   17586:	4781                	li	a5,0
   17588:	4581                	li	a1,0
   1758a:	b9c1                	j	1725a <_vfiprintf_r+0x856>
   1758c:	d43e                	sw	a5,40(sp)
   1758e:	47e2                	lw	a5,24(sp)
   17590:	45f2                	lw	a1,28(sp)
   17592:	d646                	sw	a7,44(sp)
   17594:	8e9d                	sub	a3,a3,a5
   17596:	863e                	mv	a2,a5
   17598:	8536                	mv	a0,a3
   1759a:	d27e                	sw	t6,36(sp)
   1759c:	d07a                	sw	t5,32(sp)
   1759e:	ca72                	sw	t3,20(sp)
   175a0:	c842                	sw	a6,16(sp)
   175a2:	c616                	sw	t0,12(sp)
   175a4:	c436                	sw	a3,8(sp)
   175a6:	dc8fc0ef          	jal	13b6e <strncpy>
   175aa:	57a2                	lw	a5,40(sp)
   175ac:	4615                	li	a2,5
   175ae:	42b2                	lw	t0,12(sp)
   175b0:	00f4b733          	sltu	a4,s1,a5
   175b4:	9726                	add	a4,a4,s1
   175b6:	02c77733          	remu	a4,a4,a2
   175ba:	0012c603          	lbu	a2,1(t0)
   175be:	58b2                	lw	a7,44(sp)
   175c0:	ccccd537          	lui	a0,0xccccd
   175c4:	00c03633          	snez	a2,a2
   175c8:	ccccd3b7          	lui	t2,0xccccd
   175cc:	92b2                	add	t0,t0,a2
   175ce:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb1271>
   175d2:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccb1270>
   175d6:	46a2                	lw	a3,8(sp)
   175d8:	4842                	lw	a6,16(sp)
   175da:	4e52                	lw	t3,20(sp)
   175dc:	5f02                	lw	t5,32(sp)
   175de:	5f92                	lw	t6,36(sp)
   175e0:	4581                	li	a1,0
   175e2:	4315                	li	t1,5
   175e4:	0ff00e93          	li	t4,255
   175e8:	40e78733          	sub	a4,a5,a4
   175ec:	00e7b633          	sltu	a2,a5,a4
   175f0:	40c88633          	sub	a2,a7,a2
   175f4:	027703b3          	mul	t2,a4,t2
   175f8:	02a60633          	mul	a2,a2,a0
   175fc:	02a738b3          	mulhu	a7,a4,a0
   17600:	961e                	add	a2,a2,t2
   17602:	02a707b3          	mul	a5,a4,a0
   17606:	9646                	add	a2,a2,a7
   17608:	01f61713          	slli	a4,a2,0x1f
   1760c:	8205                	srli	a2,a2,0x1
   1760e:	8385                	srli	a5,a5,0x1
   17610:	8f5d                	or	a4,a4,a5
   17612:	b54d                	j	174b4 <_vfiprintf_r+0xab0>
   17614:	4525                	li	a0,9
   17616:	e8f56fe3          	bltu	a0,a5,174b4 <_vfiprintf_r+0xab0>
   1761a:	b719                	j	17520 <_vfiprintf_r+0xb1c>
   1761c:	4e19                	li	t3,6
   1761e:	b7b1                	j	1756a <_vfiprintf_r+0xb66>
   17620:	0ff7f793          	zext.b	a5,a5
   17624:	4581                	li	a1,0
   17626:	bbc9                	j	173f8 <_vfiprintf_r+0x9f4>
   17628:	07e2                	slli	a5,a5,0x18
   1762a:	87e1                	srai	a5,a5,0x18
   1762c:	41f7d893          	srai	a7,a5,0x1f
   17630:	8746                	mv	a4,a7
   17632:	e20ff06f          	j	16c52 <_vfiprintf_r+0x24e>
   17636:	000d2783          	lw	a5,0(s10)
   1763a:	0d11                	addi	s10,s10,4
   1763c:	01279023          	sh	s2,0(a5)
   17640:	c78ff06f          	j	16ab8 <_vfiprintf_r+0xb4>
   17644:	0ff7f793          	zext.b	a5,a5
   17648:	4581                	li	a1,0
   1764a:	b2b9                	j	16f98 <_vfiprintf_r+0x594>
   1764c:	03000793          	li	a5,48
   17650:	fe4ff06f          	j	16e34 <_vfiprintf_r+0x430>
   17654:	5d7d                	li	s10,-1
   17656:	ecaff06f          	j	16d20 <_vfiprintf_r+0x31c>
   1765a:	000d2d83          	lw	s11,0(s10)
   1765e:	0d11                	addi	s10,s10,4
   17660:	000dd363          	bgez	s11,17666 <_vfiprintf_r+0xc62>
   17664:	5dfd                	li	s11,-1
   17666:	0019c783          	lbu	a5,1(s3)
   1766a:	89b6                	mv	s3,a3
   1766c:	caaff06f          	j	16b16 <_vfiprintf_r+0x112>

00017670 <vfiprintf>:
   17670:	87aa                	mv	a5,a0
   17672:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   17676:	86b2                	mv	a3,a2
   17678:	862e                	mv	a2,a1
   1767a:	85be                	mv	a1,a5
   1767c:	b88ff06f          	j	16a04 <_vfiprintf_r>

00017680 <__sbprintf>:
   17680:	b8010113          	addi	sp,sp,-1152
   17684:	00c59783          	lh	a5,12(a1)
   17688:	00e5d703          	lhu	a4,14(a1)
   1768c:	46812c23          	sw	s0,1144(sp)
   17690:	842e                	mv	s0,a1
   17692:	65c1                	lui	a1,0x10
   17694:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   17696:	06442e03          	lw	t3,100(s0)
   1769a:	01c42303          	lw	t1,28(s0)
   1769e:	02442883          	lw	a7,36(s0)
   176a2:	0742                	slli	a4,a4,0x10
   176a4:	8fed                	and	a5,a5,a1
   176a6:	8fd9                	or	a5,a5,a4
   176a8:	40000813          	li	a6,1024
   176ac:	ca3e                	sw	a5,20(sp)
   176ae:	002c                	addi	a1,sp,8
   176b0:	189c                	addi	a5,sp,112
   176b2:	46912a23          	sw	s1,1140(sp)
   176b6:	47212823          	sw	s2,1136(sp)
   176ba:	46112e23          	sw	ra,1148(sp)
   176be:	892a                	mv	s2,a0
   176c0:	d6f2                	sw	t3,108(sp)
   176c2:	d21a                	sw	t1,36(sp)
   176c4:	d646                	sw	a7,44(sp)
   176c6:	c43e                	sw	a5,8(sp)
   176c8:	cc3e                	sw	a5,24(sp)
   176ca:	c842                	sw	a6,16(sp)
   176cc:	ce42                	sw	a6,28(sp)
   176ce:	d002                	sw	zero,32(sp)
   176d0:	b34ff0ef          	jal	16a04 <_vfiprintf_r>
   176d4:	84aa                	mv	s1,a0
   176d6:	02055963          	bgez	a0,17708 <__sbprintf+0x88>
   176da:	01415783          	lhu	a5,20(sp)
   176de:	0407f793          	andi	a5,a5,64
   176e2:	c799                	beqz	a5,176f0 <__sbprintf+0x70>
   176e4:	00c45783          	lhu	a5,12(s0)
   176e8:	0407e793          	ori	a5,a5,64
   176ec:	00f41623          	sh	a5,12(s0)
   176f0:	47c12083          	lw	ra,1148(sp)
   176f4:	47812403          	lw	s0,1144(sp)
   176f8:	47012903          	lw	s2,1136(sp)
   176fc:	8526                	mv	a0,s1
   176fe:	47412483          	lw	s1,1140(sp)
   17702:	48010113          	addi	sp,sp,1152
   17706:	8082                	ret
   17708:	002c                	addi	a1,sp,8
   1770a:	854a                	mv	a0,s2
   1770c:	f2dfb0ef          	jal	13638 <_fflush_r>
   17710:	d569                	beqz	a0,176da <__sbprintf+0x5a>
   17712:	54fd                	li	s1,-1
   17714:	b7d9                	j	176da <__sbprintf+0x5a>

00017716 <__errno>:
   17716:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   1771a:	8082                	ret

0001771c <abort>:
   1771c:	1141                	addi	sp,sp,-16
   1771e:	4519                	li	a0,6
   17720:	c606                	sw	ra,12(sp)
   17722:	2a59                	jal	178b8 <raise>
   17724:	4505                	li	a0,1
   17726:	2e61                	jal	17abe <_exit>

00017728 <_init_signal_r>:
   17728:	11852783          	lw	a5,280(a0)
   1772c:	c399                	beqz	a5,17732 <_init_signal_r+0xa>
   1772e:	4501                	li	a0,0
   17730:	8082                	ret
   17732:	1141                	addi	sp,sp,-16
   17734:	08000593          	li	a1,128
   17738:	c422                	sw	s0,8(sp)
   1773a:	c606                	sw	ra,12(sp)
   1773c:	842a                	mv	s0,a0
   1773e:	a9ff90ef          	jal	111dc <_malloc_r>
   17742:	10a42c23          	sw	a0,280(s0)
   17746:	cd09                	beqz	a0,17760 <_init_signal_r+0x38>
   17748:	08050793          	addi	a5,a0,128
   1774c:	00052023          	sw	zero,0(a0)
   17750:	0511                	addi	a0,a0,4
   17752:	fef51de3          	bne	a0,a5,1774c <_init_signal_r+0x24>
   17756:	4501                	li	a0,0
   17758:	40b2                	lw	ra,12(sp)
   1775a:	4422                	lw	s0,8(sp)
   1775c:	0141                	addi	sp,sp,16
   1775e:	8082                	ret
   17760:	557d                	li	a0,-1
   17762:	bfdd                	j	17758 <_init_signal_r+0x30>

00017764 <_signal_r>:
   17764:	1101                	addi	sp,sp,-32
   17766:	ca26                	sw	s1,20(sp)
   17768:	ce06                	sw	ra,28(sp)
   1776a:	47fd                	li	a5,31
   1776c:	84aa                	mv	s1,a0
   1776e:	02b7e063          	bltu	a5,a1,1778e <_signal_r+0x2a>
   17772:	11852783          	lw	a5,280(a0)
   17776:	cc22                	sw	s0,24(sp)
   17778:	842e                	mv	s0,a1
   1777a:	cf91                	beqz	a5,17796 <_signal_r+0x32>
   1777c:	040a                	slli	s0,s0,0x2
   1777e:	97a2                	add	a5,a5,s0
   17780:	4462                	lw	s0,24(sp)
   17782:	4388                	lw	a0,0(a5)
   17784:	c390                	sw	a2,0(a5)
   17786:	40f2                	lw	ra,28(sp)
   17788:	44d2                	lw	s1,20(sp)
   1778a:	6105                	addi	sp,sp,32
   1778c:	8082                	ret
   1778e:	47d9                	li	a5,22
   17790:	c11c                	sw	a5,0(a0)
   17792:	557d                	li	a0,-1
   17794:	bfcd                	j	17786 <_signal_r+0x22>
   17796:	08000593          	li	a1,128
   1779a:	c632                	sw	a2,12(sp)
   1779c:	a41f90ef          	jal	111dc <_malloc_r>
   177a0:	10a4ac23          	sw	a0,280(s1)
   177a4:	4632                	lw	a2,12(sp)
   177a6:	87aa                	mv	a5,a0
   177a8:	872a                	mv	a4,a0
   177aa:	08050693          	addi	a3,a0,128
   177ae:	c519                	beqz	a0,177bc <_signal_r+0x58>
   177b0:	00072023          	sw	zero,0(a4)
   177b4:	0711                	addi	a4,a4,4
   177b6:	fed71de3          	bne	a4,a3,177b0 <_signal_r+0x4c>
   177ba:	b7c9                	j	1777c <_signal_r+0x18>
   177bc:	4462                	lw	s0,24(sp)
   177be:	557d                	li	a0,-1
   177c0:	b7d9                	j	17786 <_signal_r+0x22>

000177c2 <_raise_r>:
   177c2:	1141                	addi	sp,sp,-16
   177c4:	c226                	sw	s1,4(sp)
   177c6:	c606                	sw	ra,12(sp)
   177c8:	47fd                	li	a5,31
   177ca:	84aa                	mv	s1,a0
   177cc:	04b7ee63          	bltu	a5,a1,17828 <_raise_r+0x66>
   177d0:	11852783          	lw	a5,280(a0)
   177d4:	c422                	sw	s0,8(sp)
   177d6:	842e                	mv	s0,a1
   177d8:	c795                	beqz	a5,17804 <_raise_r+0x42>
   177da:	00259713          	slli	a4,a1,0x2
   177de:	97ba                	add	a5,a5,a4
   177e0:	4398                	lw	a4,0(a5)
   177e2:	c30d                	beqz	a4,17804 <_raise_r+0x42>
   177e4:	4685                	li	a3,1
   177e6:	00d70963          	beq	a4,a3,177f8 <_raise_r+0x36>
   177ea:	56fd                	li	a3,-1
   177ec:	02d70663          	beq	a4,a3,17818 <_raise_r+0x56>
   177f0:	0007a023          	sw	zero,0(a5)
   177f4:	852e                	mv	a0,a1
   177f6:	9702                	jalr	a4
   177f8:	4422                	lw	s0,8(sp)
   177fa:	4501                	li	a0,0
   177fc:	40b2                	lw	ra,12(sp)
   177fe:	4492                	lw	s1,4(sp)
   17800:	0141                	addi	sp,sp,16
   17802:	8082                	ret
   17804:	8526                	mv	a0,s1
   17806:	2469                	jal	17a90 <_getpid_r>
   17808:	8622                	mv	a2,s0
   1780a:	4422                	lw	s0,8(sp)
   1780c:	40b2                	lw	ra,12(sp)
   1780e:	85aa                	mv	a1,a0
   17810:	8526                	mv	a0,s1
   17812:	4492                	lw	s1,4(sp)
   17814:	0141                	addi	sp,sp,16
   17816:	a489                	j	17a58 <_kill_r>
   17818:	4422                	lw	s0,8(sp)
   1781a:	40b2                	lw	ra,12(sp)
   1781c:	47d9                	li	a5,22
   1781e:	c11c                	sw	a5,0(a0)
   17820:	4492                	lw	s1,4(sp)
   17822:	4505                	li	a0,1
   17824:	0141                	addi	sp,sp,16
   17826:	8082                	ret
   17828:	47d9                	li	a5,22
   1782a:	c11c                	sw	a5,0(a0)
   1782c:	557d                	li	a0,-1
   1782e:	b7f9                	j	177fc <_raise_r+0x3a>

00017830 <__sigtramp_r>:
   17830:	47fd                	li	a5,31
   17832:	08b7e163          	bltu	a5,a1,178b4 <__sigtramp_r+0x84>
   17836:	11852783          	lw	a5,280(a0)
   1783a:	1141                	addi	sp,sp,-16
   1783c:	c422                	sw	s0,8(sp)
   1783e:	c226                	sw	s1,4(sp)
   17840:	c606                	sw	ra,12(sp)
   17842:	842e                	mv	s0,a1
   17844:	84aa                	mv	s1,a0
   17846:	c7a1                	beqz	a5,1788e <__sigtramp_r+0x5e>
   17848:	00241713          	slli	a4,s0,0x2
   1784c:	97ba                	add	a5,a5,a4
   1784e:	4398                	lw	a4,0(a5)
   17850:	c30d                	beqz	a4,17872 <__sigtramp_r+0x42>
   17852:	56fd                	li	a3,-1
   17854:	02d70b63          	beq	a4,a3,1788a <__sigtramp_r+0x5a>
   17858:	4685                	li	a3,1
   1785a:	02d70263          	beq	a4,a3,1787e <__sigtramp_r+0x4e>
   1785e:	8522                	mv	a0,s0
   17860:	0007a023          	sw	zero,0(a5)
   17864:	9702                	jalr	a4
   17866:	4501                	li	a0,0
   17868:	40b2                	lw	ra,12(sp)
   1786a:	4422                	lw	s0,8(sp)
   1786c:	4492                	lw	s1,4(sp)
   1786e:	0141                	addi	sp,sp,16
   17870:	8082                	ret
   17872:	40b2                	lw	ra,12(sp)
   17874:	4422                	lw	s0,8(sp)
   17876:	4492                	lw	s1,4(sp)
   17878:	4505                	li	a0,1
   1787a:	0141                	addi	sp,sp,16
   1787c:	8082                	ret
   1787e:	40b2                	lw	ra,12(sp)
   17880:	4422                	lw	s0,8(sp)
   17882:	4492                	lw	s1,4(sp)
   17884:	450d                	li	a0,3
   17886:	0141                	addi	sp,sp,16
   17888:	8082                	ret
   1788a:	4509                	li	a0,2
   1788c:	bff1                	j	17868 <__sigtramp_r+0x38>
   1788e:	08000593          	li	a1,128
   17892:	94bf90ef          	jal	111dc <_malloc_r>
   17896:	10a4ac23          	sw	a0,280(s1)
   1789a:	87aa                	mv	a5,a0
   1789c:	c911                	beqz	a0,178b0 <__sigtramp_r+0x80>
   1789e:	872a                	mv	a4,a0
   178a0:	08050693          	addi	a3,a0,128
   178a4:	00072023          	sw	zero,0(a4)
   178a8:	0711                	addi	a4,a4,4
   178aa:	fed71de3          	bne	a4,a3,178a4 <__sigtramp_r+0x74>
   178ae:	bf69                	j	17848 <__sigtramp_r+0x18>
   178b0:	557d                	li	a0,-1
   178b2:	bf5d                	j	17868 <__sigtramp_r+0x38>
   178b4:	557d                	li	a0,-1
   178b6:	8082                	ret

000178b8 <raise>:
   178b8:	1141                	addi	sp,sp,-16
   178ba:	c226                	sw	s1,4(sp)
   178bc:	c606                	sw	ra,12(sp)
   178be:	47fd                	li	a5,31
   178c0:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   178c4:	04a7ed63          	bltu	a5,a0,1791e <raise+0x66>
   178c8:	1184a783          	lw	a5,280(s1)
   178cc:	c422                	sw	s0,8(sp)
   178ce:	842a                	mv	s0,a0
   178d0:	c78d                	beqz	a5,178fa <raise+0x42>
   178d2:	00251713          	slli	a4,a0,0x2
   178d6:	97ba                	add	a5,a5,a4
   178d8:	4398                	lw	a4,0(a5)
   178da:	c305                	beqz	a4,178fa <raise+0x42>
   178dc:	4685                	li	a3,1
   178de:	00d70863          	beq	a4,a3,178ee <raise+0x36>
   178e2:	56fd                	li	a3,-1
   178e4:	02d70563          	beq	a4,a3,1790e <raise+0x56>
   178e8:	0007a023          	sw	zero,0(a5)
   178ec:	9702                	jalr	a4
   178ee:	4422                	lw	s0,8(sp)
   178f0:	4501                	li	a0,0
   178f2:	40b2                	lw	ra,12(sp)
   178f4:	4492                	lw	s1,4(sp)
   178f6:	0141                	addi	sp,sp,16
   178f8:	8082                	ret
   178fa:	8526                	mv	a0,s1
   178fc:	2a51                	jal	17a90 <_getpid_r>
   178fe:	8622                	mv	a2,s0
   17900:	4422                	lw	s0,8(sp)
   17902:	40b2                	lw	ra,12(sp)
   17904:	85aa                	mv	a1,a0
   17906:	8526                	mv	a0,s1
   17908:	4492                	lw	s1,4(sp)
   1790a:	0141                	addi	sp,sp,16
   1790c:	a2b1                	j	17a58 <_kill_r>
   1790e:	4422                	lw	s0,8(sp)
   17910:	40b2                	lw	ra,12(sp)
   17912:	47d9                	li	a5,22
   17914:	c09c                	sw	a5,0(s1)
   17916:	4505                	li	a0,1
   17918:	4492                	lw	s1,4(sp)
   1791a:	0141                	addi	sp,sp,16
   1791c:	8082                	ret
   1791e:	47d9                	li	a5,22
   17920:	c09c                	sw	a5,0(s1)
   17922:	557d                	li	a0,-1
   17924:	b7f9                	j	178f2 <raise+0x3a>

00017926 <signal>:
   17926:	1141                	addi	sp,sp,-16
   17928:	c04a                	sw	s2,0(sp)
   1792a:	c606                	sw	ra,12(sp)
   1792c:	47fd                	li	a5,31
   1792e:	f141a903          	lw	s2,-236(gp) # 1b724 <_impure_ptr>
   17932:	02a7e463          	bltu	a5,a0,1795a <signal+0x34>
   17936:	c422                	sw	s0,8(sp)
   17938:	842a                	mv	s0,a0
   1793a:	11892503          	lw	a0,280(s2)
   1793e:	c226                	sw	s1,4(sp)
   17940:	84ae                	mv	s1,a1
   17942:	c10d                	beqz	a0,17964 <signal+0x3e>
   17944:	040a                	slli	s0,s0,0x2
   17946:	008507b3          	add	a5,a0,s0
   1794a:	4388                	lw	a0,0(a5)
   1794c:	4422                	lw	s0,8(sp)
   1794e:	c384                	sw	s1,0(a5)
   17950:	4492                	lw	s1,4(sp)
   17952:	40b2                	lw	ra,12(sp)
   17954:	4902                	lw	s2,0(sp)
   17956:	0141                	addi	sp,sp,16
   17958:	8082                	ret
   1795a:	47d9                	li	a5,22
   1795c:	00f92023          	sw	a5,0(s2)
   17960:	557d                	li	a0,-1
   17962:	bfc5                	j	17952 <signal+0x2c>
   17964:	08000593          	li	a1,128
   17968:	854a                	mv	a0,s2
   1796a:	873f90ef          	jal	111dc <_malloc_r>
   1796e:	10a92c23          	sw	a0,280(s2)
   17972:	87aa                	mv	a5,a0
   17974:	08050713          	addi	a4,a0,128
   17978:	c519                	beqz	a0,17986 <signal+0x60>
   1797a:	0007a023          	sw	zero,0(a5)
   1797e:	0791                	addi	a5,a5,4
   17980:	fef71de3          	bne	a4,a5,1797a <signal+0x54>
   17984:	b7c1                	j	17944 <signal+0x1e>
   17986:	4422                	lw	s0,8(sp)
   17988:	4492                	lw	s1,4(sp)
   1798a:	557d                	li	a0,-1
   1798c:	b7d9                	j	17952 <signal+0x2c>

0001798e <_init_signal>:
   1798e:	1141                	addi	sp,sp,-16
   17990:	c422                	sw	s0,8(sp)
   17992:	f141a403          	lw	s0,-236(gp) # 1b724 <_impure_ptr>
   17996:	c606                	sw	ra,12(sp)
   17998:	11842783          	lw	a5,280(s0)
   1799c:	c791                	beqz	a5,179a8 <_init_signal+0x1a>
   1799e:	4501                	li	a0,0
   179a0:	40b2                	lw	ra,12(sp)
   179a2:	4422                	lw	s0,8(sp)
   179a4:	0141                	addi	sp,sp,16
   179a6:	8082                	ret
   179a8:	08000593          	li	a1,128
   179ac:	8522                	mv	a0,s0
   179ae:	82ff90ef          	jal	111dc <_malloc_r>
   179b2:	10a42c23          	sw	a0,280(s0)
   179b6:	c909                	beqz	a0,179c8 <_init_signal+0x3a>
   179b8:	08050793          	addi	a5,a0,128
   179bc:	00052023          	sw	zero,0(a0)
   179c0:	0511                	addi	a0,a0,4
   179c2:	fef51de3          	bne	a0,a5,179bc <_init_signal+0x2e>
   179c6:	bfe1                	j	1799e <_init_signal+0x10>
   179c8:	557d                	li	a0,-1
   179ca:	bfd9                	j	179a0 <_init_signal+0x12>

000179cc <__sigtramp>:
   179cc:	1141                	addi	sp,sp,-16
   179ce:	c226                	sw	s1,4(sp)
   179d0:	c606                	sw	ra,12(sp)
   179d2:	47fd                	li	a5,31
   179d4:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   179d8:	06a7ee63          	bltu	a5,a0,17a54 <__sigtramp+0x88>
   179dc:	1184a783          	lw	a5,280(s1)
   179e0:	c422                	sw	s0,8(sp)
   179e2:	842a                	mv	s0,a0
   179e4:	c7a9                	beqz	a5,17a2e <__sigtramp+0x62>
   179e6:	00241713          	slli	a4,s0,0x2
   179ea:	97ba                	add	a5,a5,a4
   179ec:	4398                	lw	a4,0(a5)
   179ee:	c30d                	beqz	a4,17a10 <__sigtramp+0x44>
   179f0:	56fd                	li	a3,-1
   179f2:	02d70b63          	beq	a4,a3,17a28 <__sigtramp+0x5c>
   179f6:	4685                	li	a3,1
   179f8:	02d70263          	beq	a4,a3,17a1c <__sigtramp+0x50>
   179fc:	8522                	mv	a0,s0
   179fe:	0007a023          	sw	zero,0(a5)
   17a02:	9702                	jalr	a4
   17a04:	4422                	lw	s0,8(sp)
   17a06:	4501                	li	a0,0
   17a08:	40b2                	lw	ra,12(sp)
   17a0a:	4492                	lw	s1,4(sp)
   17a0c:	0141                	addi	sp,sp,16
   17a0e:	8082                	ret
   17a10:	4422                	lw	s0,8(sp)
   17a12:	40b2                	lw	ra,12(sp)
   17a14:	4492                	lw	s1,4(sp)
   17a16:	4505                	li	a0,1
   17a18:	0141                	addi	sp,sp,16
   17a1a:	8082                	ret
   17a1c:	4422                	lw	s0,8(sp)
   17a1e:	40b2                	lw	ra,12(sp)
   17a20:	4492                	lw	s1,4(sp)
   17a22:	450d                	li	a0,3
   17a24:	0141                	addi	sp,sp,16
   17a26:	8082                	ret
   17a28:	4422                	lw	s0,8(sp)
   17a2a:	4509                	li	a0,2
   17a2c:	bff1                	j	17a08 <__sigtramp+0x3c>
   17a2e:	08000593          	li	a1,128
   17a32:	8526                	mv	a0,s1
   17a34:	fa8f90ef          	jal	111dc <_malloc_r>
   17a38:	10a4ac23          	sw	a0,280(s1)
   17a3c:	87aa                	mv	a5,a0
   17a3e:	c911                	beqz	a0,17a52 <__sigtramp+0x86>
   17a40:	872a                	mv	a4,a0
   17a42:	08050693          	addi	a3,a0,128
   17a46:	00072023          	sw	zero,0(a4)
   17a4a:	0711                	addi	a4,a4,4
   17a4c:	fee69de3          	bne	a3,a4,17a46 <__sigtramp+0x7a>
   17a50:	bf59                	j	179e6 <__sigtramp+0x1a>
   17a52:	4422                	lw	s0,8(sp)
   17a54:	557d                	li	a0,-1
   17a56:	bf4d                	j	17a08 <__sigtramp+0x3c>

00017a58 <_kill_r>:
   17a58:	1141                	addi	sp,sp,-16
   17a5a:	872e                	mv	a4,a1
   17a5c:	c422                	sw	s0,8(sp)
   17a5e:	c226                	sw	s1,4(sp)
   17a60:	842a                	mv	s0,a0
   17a62:	85b2                	mv	a1,a2
   17a64:	853a                	mv	a0,a4
   17a66:	c606                	sw	ra,12(sp)
   17a68:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   17a6c:	28d9                	jal	17b42 <_kill>
   17a6e:	57fd                	li	a5,-1
   17a70:	00f50763          	beq	a0,a5,17a7e <_kill_r+0x26>
   17a74:	40b2                	lw	ra,12(sp)
   17a76:	4422                	lw	s0,8(sp)
   17a78:	4492                	lw	s1,4(sp)
   17a7a:	0141                	addi	sp,sp,16
   17a7c:	8082                	ret
   17a7e:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   17a82:	dbed                	beqz	a5,17a74 <_kill_r+0x1c>
   17a84:	40b2                	lw	ra,12(sp)
   17a86:	c01c                	sw	a5,0(s0)
   17a88:	4422                	lw	s0,8(sp)
   17a8a:	4492                	lw	s1,4(sp)
   17a8c:	0141                	addi	sp,sp,16
   17a8e:	8082                	ret

00017a90 <_getpid_r>:
   17a90:	a069                	j	17b1a <_getpid>

00017a92 <_close>:
   17a92:	1141                	addi	sp,sp,-16
   17a94:	c606                	sw	ra,12(sp)
   17a96:	c422                	sw	s0,8(sp)
   17a98:	03900893          	li	a7,57
   17a9c:	00000073          	ecall
   17aa0:	842a                	mv	s0,a0
   17aa2:	00054763          	bltz	a0,17ab0 <_close+0x1e>
   17aa6:	40b2                	lw	ra,12(sp)
   17aa8:	8522                	mv	a0,s0
   17aaa:	4422                	lw	s0,8(sp)
   17aac:	0141                	addi	sp,sp,16
   17aae:	8082                	ret
   17ab0:	40800433          	neg	s0,s0
   17ab4:	c63ff0ef          	jal	17716 <__errno>
   17ab8:	c100                	sw	s0,0(a0)
   17aba:	547d                	li	s0,-1
   17abc:	b7ed                	j	17aa6 <_close+0x14>

00017abe <_exit>:
   17abe:	05d00893          	li	a7,93
   17ac2:	00000073          	ecall
   17ac6:	00054363          	bltz	a0,17acc <_exit+0xe>
   17aca:	a001                	j	17aca <_exit+0xc>
   17acc:	1141                	addi	sp,sp,-16
   17ace:	c422                	sw	s0,8(sp)
   17ad0:	842a                	mv	s0,a0
   17ad2:	c606                	sw	ra,12(sp)
   17ad4:	40800433          	neg	s0,s0
   17ad8:	c3fff0ef          	jal	17716 <__errno>
   17adc:	c100                	sw	s0,0(a0)
   17ade:	a001                	j	17ade <_exit+0x20>

00017ae0 <_fstat>:
   17ae0:	7175                	addi	sp,sp,-144
   17ae2:	c326                	sw	s1,132(sp)
   17ae4:	c706                	sw	ra,140(sp)
   17ae6:	84ae                	mv	s1,a1
   17ae8:	c522                	sw	s0,136(sp)
   17aea:	05000893          	li	a7,80
   17aee:	858a                	mv	a1,sp
   17af0:	00000073          	ecall
   17af4:	842a                	mv	s0,a0
   17af6:	00054b63          	bltz	a0,17b0c <_fstat+0x2c>
   17afa:	8526                	mv	a0,s1
   17afc:	858a                	mv	a1,sp
   17afe:	2a05                	jal	17c2e <_conv_stat>
   17b00:	40ba                	lw	ra,140(sp)
   17b02:	8522                	mv	a0,s0
   17b04:	442a                	lw	s0,136(sp)
   17b06:	449a                	lw	s1,132(sp)
   17b08:	6149                	addi	sp,sp,144
   17b0a:	8082                	ret
   17b0c:	40800433          	neg	s0,s0
   17b10:	c07ff0ef          	jal	17716 <__errno>
   17b14:	c100                	sw	s0,0(a0)
   17b16:	547d                	li	s0,-1
   17b18:	b7cd                	j	17afa <_fstat+0x1a>

00017b1a <_getpid>:
   17b1a:	4505                	li	a0,1
   17b1c:	8082                	ret

00017b1e <_isatty>:
   17b1e:	7159                	addi	sp,sp,-112
   17b20:	002c                	addi	a1,sp,8
   17b22:	d686                	sw	ra,108(sp)
   17b24:	fbdff0ef          	jal	17ae0 <_fstat>
   17b28:	57fd                	li	a5,-1
   17b2a:	00f50863          	beq	a0,a5,17b3a <_isatty+0x1c>
   17b2e:	4532                	lw	a0,12(sp)
   17b30:	50b6                	lw	ra,108(sp)
   17b32:	8135                	srli	a0,a0,0xd
   17b34:	8905                	andi	a0,a0,1
   17b36:	6165                	addi	sp,sp,112
   17b38:	8082                	ret
   17b3a:	50b6                	lw	ra,108(sp)
   17b3c:	4501                	li	a0,0
   17b3e:	6165                	addi	sp,sp,112
   17b40:	8082                	ret

00017b42 <_kill>:
   17b42:	1141                	addi	sp,sp,-16
   17b44:	c606                	sw	ra,12(sp)
   17b46:	bd1ff0ef          	jal	17716 <__errno>
   17b4a:	40b2                	lw	ra,12(sp)
   17b4c:	47d9                	li	a5,22
   17b4e:	c11c                	sw	a5,0(a0)
   17b50:	557d                	li	a0,-1
   17b52:	0141                	addi	sp,sp,16
   17b54:	8082                	ret

00017b56 <_lseek>:
   17b56:	1141                	addi	sp,sp,-16
   17b58:	c606                	sw	ra,12(sp)
   17b5a:	c422                	sw	s0,8(sp)
   17b5c:	03e00893          	li	a7,62
   17b60:	00000073          	ecall
   17b64:	842a                	mv	s0,a0
   17b66:	00054763          	bltz	a0,17b74 <_lseek+0x1e>
   17b6a:	40b2                	lw	ra,12(sp)
   17b6c:	8522                	mv	a0,s0
   17b6e:	4422                	lw	s0,8(sp)
   17b70:	0141                	addi	sp,sp,16
   17b72:	8082                	ret
   17b74:	40800433          	neg	s0,s0
   17b78:	b9fff0ef          	jal	17716 <__errno>
   17b7c:	c100                	sw	s0,0(a0)
   17b7e:	547d                	li	s0,-1
   17b80:	b7ed                	j	17b6a <_lseek+0x14>

00017b82 <_read>:
   17b82:	1141                	addi	sp,sp,-16
   17b84:	c606                	sw	ra,12(sp)
   17b86:	c422                	sw	s0,8(sp)
   17b88:	03f00893          	li	a7,63
   17b8c:	00000073          	ecall
   17b90:	842a                	mv	s0,a0
   17b92:	00054763          	bltz	a0,17ba0 <_read+0x1e>
   17b96:	40b2                	lw	ra,12(sp)
   17b98:	8522                	mv	a0,s0
   17b9a:	4422                	lw	s0,8(sp)
   17b9c:	0141                	addi	sp,sp,16
   17b9e:	8082                	ret
   17ba0:	40800433          	neg	s0,s0
   17ba4:	b73ff0ef          	jal	17716 <__errno>
   17ba8:	c100                	sw	s0,0(a0)
   17baa:	547d                	li	s0,-1
   17bac:	b7ed                	j	17b96 <_read+0x14>

00017bae <_sbrk>:
   17bae:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17bb2:	1141                	addi	sp,sp,-16
   17bb4:	c606                	sw	ra,12(sp)
   17bb6:	87aa                	mv	a5,a0
   17bb8:	ef01                	bnez	a4,17bd0 <_sbrk+0x22>
   17bba:	0d600893          	li	a7,214
   17bbe:	4501                	li	a0,0
   17bc0:	00000073          	ecall
   17bc4:	567d                	li	a2,-1
   17bc6:	872a                	mv	a4,a0
   17bc8:	02c50563          	beq	a0,a2,17bf2 <_sbrk+0x44>
   17bcc:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17bd0:	0d600893          	li	a7,214
   17bd4:	00e78533          	add	a0,a5,a4
   17bd8:	00000073          	ecall
   17bdc:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17be0:	97ba                	add	a5,a5,a4
   17be2:	00f51863          	bne	a0,a5,17bf2 <_sbrk+0x44>
   17be6:	40b2                	lw	ra,12(sp)
   17be8:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17bec:	853a                	mv	a0,a4
   17bee:	0141                	addi	sp,sp,16
   17bf0:	8082                	ret
   17bf2:	b25ff0ef          	jal	17716 <__errno>
   17bf6:	40b2                	lw	ra,12(sp)
   17bf8:	47b1                	li	a5,12
   17bfa:	c11c                	sw	a5,0(a0)
   17bfc:	557d                	li	a0,-1
   17bfe:	0141                	addi	sp,sp,16
   17c00:	8082                	ret

00017c02 <_write>:
   17c02:	1141                	addi	sp,sp,-16
   17c04:	c606                	sw	ra,12(sp)
   17c06:	c422                	sw	s0,8(sp)
   17c08:	04000893          	li	a7,64
   17c0c:	00000073          	ecall
   17c10:	842a                	mv	s0,a0
   17c12:	00054763          	bltz	a0,17c20 <_write+0x1e>
   17c16:	40b2                	lw	ra,12(sp)
   17c18:	8522                	mv	a0,s0
   17c1a:	4422                	lw	s0,8(sp)
   17c1c:	0141                	addi	sp,sp,16
   17c1e:	8082                	ret
   17c20:	40800433          	neg	s0,s0
   17c24:	af3ff0ef          	jal	17716 <__errno>
   17c28:	c100                	sw	s0,0(a0)
   17c2a:	547d                	li	s0,-1
   17c2c:	b7ed                	j	17c16 <_write+0x14>

00017c2e <_conv_stat>:
   17c2e:	0185d703          	lhu	a4,24(a1)
   17c32:	0145d783          	lhu	a5,20(a1)
   17c36:	1141                	addi	sp,sp,-16
   17c38:	01c5a283          	lw	t0,28(a1)
   17c3c:	0205af83          	lw	t6,32(a1)
   17c40:	0305af03          	lw	t5,48(a1)
   17c44:	0405ae83          	lw	t4,64(a1)
   17c48:	0385ae03          	lw	t3,56(a1)
   17c4c:	0485a303          	lw	t1,72(a1)
   17c50:	04c5a383          	lw	t2,76(a1)
   17c54:	0585a803          	lw	a6,88(a1)
   17c58:	05c5a883          	lw	a7,92(a1)
   17c5c:	c622                	sw	s0,12(sp)
   17c5e:	c426                	sw	s1,8(sp)
   17c60:	4980                	lw	s0,16(a1)
   17c62:	4584                	lw	s1,8(a1)
   17c64:	c24a                	sw	s2,4(sp)
   17c66:	0005a903          	lw	s2,0(a1)
   17c6a:	55b0                	lw	a2,104(a1)
   17c6c:	0742                	slli	a4,a4,0x10
   17c6e:	8fd9                	or	a5,a5,a4
   17c70:	55f4                	lw	a3,108(a1)
   17c72:	01251023          	sh	s2,0(a0)
   17c76:	00951123          	sh	s1,2(a0)
   17c7a:	c140                	sw	s0,4(a0)
   17c7c:	c51c                	sw	a5,8(a0)
   17c7e:	00551623          	sh	t0,12(a0)
   17c82:	01f51723          	sh	t6,14(a0)
   17c86:	01e52823          	sw	t5,16(a0)
   17c8a:	05d52623          	sw	t4,76(a0)
   17c8e:	05c52423          	sw	t3,72(a0)
   17c92:	00652c23          	sw	t1,24(a0)
   17c96:	00752e23          	sw	t2,28(a0)
   17c9a:	03052423          	sw	a6,40(a0)
   17c9e:	03152623          	sw	a7,44(a0)
   17ca2:	dd10                	sw	a2,56(a0)
   17ca4:	4432                	lw	s0,12(sp)
   17ca6:	dd54                	sw	a3,60(a0)
   17ca8:	44a2                	lw	s1,8(sp)
   17caa:	4912                	lw	s2,4(sp)
   17cac:	0141                	addi	sp,sp,16
   17cae:	8082                	ret

00017cb0 <__eqtf2>:
   17cb0:	411c                	lw	a5,0(a0)
   17cb2:	00452e03          	lw	t3,4(a0)
   17cb6:	00852e83          	lw	t4,8(a0)
   17cba:	4554                	lw	a3,12(a0)
   17cbc:	4198                	lw	a4,0(a1)
   17cbe:	0045af83          	lw	t6,4(a1)
   17cc2:	0085af03          	lw	t5,8(a1)
   17cc6:	00c5a883          	lw	a7,12(a1)
   17cca:	1141                	addi	sp,sp,-16
   17ccc:	00202673          	frrm	a2
   17cd0:	6521                	lui	a0,0x8
   17cd2:	0106d613          	srli	a2,a3,0x10
   17cd6:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17cd8:	01069313          	slli	t1,a3,0x10
   17cdc:	01089593          	slli	a1,a7,0x10
   17ce0:	01f6d813          	srli	a6,a3,0x1f
   17ce4:	8e69                	and	a2,a2,a0
   17ce6:	0108d693          	srli	a3,a7,0x10
   17cea:	01035313          	srli	t1,t1,0x10
   17cee:	81c1                	srli	a1,a1,0x10
   17cf0:	8ee9                	and	a3,a3,a0
   17cf2:	01f8d893          	srli	a7,a7,0x1f
   17cf6:	00a61c63          	bne	a2,a0,17d0e <__eqtf2+0x5e>
   17cfa:	01c7e533          	or	a0,a5,t3
   17cfe:	01d56533          	or	a0,a0,t4
   17d02:	00656533          	or	a0,a0,t1
   17d06:	e51d                	bnez	a0,17d34 <__eqtf2+0x84>
   17d08:	04c69b63          	bne	a3,a2,17d5e <__eqtf2+0xae>
   17d0c:	a019                	j	17d12 <__eqtf2+0x62>
   17d0e:	04a69a63          	bne	a3,a0,17d62 <__eqtf2+0xb2>
   17d12:	01f76533          	or	a0,a4,t6
   17d16:	01e56533          	or	a0,a0,t5
   17d1a:	8d4d                	or	a0,a0,a1
   17d1c:	c139                	beqz	a0,17d62 <__eqtf2+0xb2>
   17d1e:	6521                	lui	a0,0x8
   17d20:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17d22:	02a61a63          	bne	a2,a0,17d56 <__eqtf2+0xa6>
   17d26:	01c7e7b3          	or	a5,a5,t3
   17d2a:	01d7e7b3          	or	a5,a5,t4
   17d2e:	0067e7b3          	or	a5,a5,t1
   17d32:	cb99                	beqz	a5,17d48 <__eqtf2+0x98>
   17d34:	0342                	slli	t1,t1,0x10
   17d36:	41035313          	srai	t1,t1,0x10
   17d3a:	04035c63          	bgez	t1,17d92 <__eqtf2+0xe2>
   17d3e:	67a1                	lui	a5,0x8
   17d40:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   17d42:	4505                	li	a0,1
   17d44:	04f69563          	bne	a3,a5,17d8e <__eqtf2+0xde>
   17d48:	01f76733          	or	a4,a4,t6
   17d4c:	01e76733          	or	a4,a4,t5
   17d50:	8f4d                	or	a4,a4,a1
   17d52:	4505                	li	a0,1
   17d54:	cf0d                	beqz	a4,17d8e <__eqtf2+0xde>
   17d56:	05c2                	slli	a1,a1,0x10
   17d58:	85c1                	srai	a1,a1,0x10
   17d5a:	0205dc63          	bgez	a1,17d92 <__eqtf2+0xe2>
   17d5e:	4505                	li	a0,1
   17d60:	a03d                	j	17d8e <__eqtf2+0xde>
   17d62:	4505                	li	a0,1
   17d64:	02c69563          	bne	a3,a2,17d8e <__eqtf2+0xde>
   17d68:	02e79363          	bne	a5,a4,17d8e <__eqtf2+0xde>
   17d6c:	03fe1163          	bne	t3,t6,17d8e <__eqtf2+0xde>
   17d70:	01ee9f63          	bne	t4,t5,17d8e <__eqtf2+0xde>
   17d74:	00b31d63          	bne	t1,a1,17d8e <__eqtf2+0xde>
   17d78:	03180063          	beq	a6,a7,17d98 <__eqtf2+0xe8>
   17d7c:	ea89                	bnez	a3,17d8e <__eqtf2+0xde>
   17d7e:	01c7e533          	or	a0,a5,t3
   17d82:	01d56533          	or	a0,a0,t4
   17d86:	00656533          	or	a0,a0,t1
   17d8a:	00a03533          	snez	a0,a0
   17d8e:	0141                	addi	sp,sp,16
   17d90:	8082                	ret
   17d92:	00186073          	csrsi	fflags,16
   17d96:	b7e1                	j	17d5e <__eqtf2+0xae>
   17d98:	4501                	li	a0,0
   17d9a:	bfd5                	j	17d8e <__eqtf2+0xde>

00017d9c <__getf2>:
   17d9c:	00052883          	lw	a7,0(a0)
   17da0:	00452303          	lw	t1,4(a0)
   17da4:	00852e03          	lw	t3,8(a0)
   17da8:	455c                	lw	a5,12(a0)
   17daa:	0005ae83          	lw	t4,0(a1)
   17dae:	0045af03          	lw	t5,4(a1)
   17db2:	0085af83          	lw	t6,8(a1)
   17db6:	45d4                	lw	a3,12(a1)
   17db8:	1141                	addi	sp,sp,-16
   17dba:	00202773          	frrm	a4
   17dbe:	6721                	lui	a4,0x8
   17dc0:	0107d613          	srli	a2,a5,0x10
   17dc4:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17dc6:	01079813          	slli	a6,a5,0x10
   17dca:	01069293          	slli	t0,a3,0x10
   17dce:	0106d513          	srli	a0,a3,0x10
   17dd2:	8e79                	and	a2,a2,a4
   17dd4:	01085813          	srli	a6,a6,0x10
   17dd8:	83fd                	srli	a5,a5,0x1f
   17dda:	0102d293          	srli	t0,t0,0x10
   17dde:	8d79                	and	a0,a0,a4
   17de0:	82fd                	srli	a3,a3,0x1f
   17de2:	00e61963          	bne	a2,a4,17df4 <__getf2+0x58>
   17de6:	01136733          	or	a4,t1,a7
   17dea:	01c76733          	or	a4,a4,t3
   17dee:	01076733          	or	a4,a4,a6
   17df2:	ef35                	bnez	a4,17e6e <__getf2+0xd2>
   17df4:	6721                	lui	a4,0x8
   17df6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17df8:	00e51963          	bne	a0,a4,17e0a <__getf2+0x6e>
   17dfc:	01eee733          	or	a4,t4,t5
   17e00:	01f76733          	or	a4,a4,t6
   17e04:	00576733          	or	a4,a4,t0
   17e08:	e33d                	bnez	a4,17e6e <__getf2+0xd2>
   17e0a:	4701                	li	a4,0
   17e0c:	ea09                	bnez	a2,17e1e <__getf2+0x82>
   17e0e:	01136733          	or	a4,t1,a7
   17e12:	01c76733          	or	a4,a4,t3
   17e16:	01076733          	or	a4,a4,a6
   17e1a:	00173713          	seqz	a4,a4
   17e1e:	ed21                	bnez	a0,17e76 <__getf2+0xda>
   17e20:	01eee5b3          	or	a1,t4,t5
   17e24:	01f5e5b3          	or	a1,a1,t6
   17e28:	0055e5b3          	or	a1,a1,t0
   17e2c:	c711                	beqz	a4,17e38 <__getf2+0x9c>
   17e2e:	c981                	beqz	a1,17e3e <__getf2+0xa2>
   17e30:	4505                	li	a0,1
   17e32:	e691                	bnez	a3,17e3e <__getf2+0xa2>
   17e34:	557d                	li	a0,-1
   17e36:	a021                	j	17e3e <__getf2+0xa2>
   17e38:	e1a1                	bnez	a1,17e78 <__getf2+0xdc>
   17e3a:	557d                	li	a0,-1
   17e3c:	c7a1                	beqz	a5,17e84 <__getf2+0xe8>
   17e3e:	0141                	addi	sp,sp,16
   17e40:	8082                	ret
   17e42:	fea647e3          	blt	a2,a0,17e30 <__getf2+0x94>
   17e46:	ff02eae3          	bltu	t0,a6,17e3a <__getf2+0x9e>
   17e4a:	00581f63          	bne	a6,t0,17e68 <__getf2+0xcc>
   17e4e:	ffcfe6e3          	bltu	t6,t3,17e3a <__getf2+0x9e>
   17e52:	01fe1b63          	bne	t3,t6,17e68 <__getf2+0xcc>
   17e56:	fe6f62e3          	bltu	t5,t1,17e3a <__getf2+0x9e>
   17e5a:	01e31763          	bne	t1,t5,17e68 <__getf2+0xcc>
   17e5e:	fd1eeee3          	bltu	t4,a7,17e3a <__getf2+0x9e>
   17e62:	4501                	li	a0,0
   17e64:	fdd8fde3          	bgeu	a7,t4,17e3e <__getf2+0xa2>
   17e68:	4505                	li	a0,1
   17e6a:	fbf1                	bnez	a5,17e3e <__getf2+0xa2>
   17e6c:	b7e1                	j	17e34 <__getf2+0x98>
   17e6e:	00186073          	csrsi	fflags,16
   17e72:	5579                	li	a0,-2
   17e74:	b7e9                	j	17e3e <__getf2+0xa2>
   17e76:	ff4d                	bnez	a4,17e30 <__getf2+0x94>
   17e78:	fcf691e3          	bne	a3,a5,17e3a <__getf2+0x9e>
   17e7c:	fcc553e3          	bge	a0,a2,17e42 <__getf2+0xa6>
   17e80:	557d                	li	a0,-1
   17e82:	fed5                	bnez	a3,17e3e <__getf2+0xa2>
   17e84:	4505                	li	a0,1
   17e86:	bf65                	j	17e3e <__getf2+0xa2>

00017e88 <__letf2>:
   17e88:	00052883          	lw	a7,0(a0)
   17e8c:	00452303          	lw	t1,4(a0)
   17e90:	00852e03          	lw	t3,8(a0)
   17e94:	455c                	lw	a5,12(a0)
   17e96:	0005ae83          	lw	t4,0(a1)
   17e9a:	0045af03          	lw	t5,4(a1)
   17e9e:	0085af83          	lw	t6,8(a1)
   17ea2:	45d4                	lw	a3,12(a1)
   17ea4:	1141                	addi	sp,sp,-16
   17ea6:	00202773          	frrm	a4
   17eaa:	6721                	lui	a4,0x8
   17eac:	0107d613          	srli	a2,a5,0x10
   17eb0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17eb2:	01079813          	slli	a6,a5,0x10
   17eb6:	01069293          	slli	t0,a3,0x10
   17eba:	0106d513          	srli	a0,a3,0x10
   17ebe:	8e79                	and	a2,a2,a4
   17ec0:	01085813          	srli	a6,a6,0x10
   17ec4:	83fd                	srli	a5,a5,0x1f
   17ec6:	0102d293          	srli	t0,t0,0x10
   17eca:	8d79                	and	a0,a0,a4
   17ecc:	82fd                	srli	a3,a3,0x1f
   17ece:	00e61963          	bne	a2,a4,17ee0 <__letf2+0x58>
   17ed2:	01136733          	or	a4,t1,a7
   17ed6:	01c76733          	or	a4,a4,t3
   17eda:	01076733          	or	a4,a4,a6
   17ede:	ef35                	bnez	a4,17f5a <__letf2+0xd2>
   17ee0:	6721                	lui	a4,0x8
   17ee2:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17ee4:	00e51963          	bne	a0,a4,17ef6 <__letf2+0x6e>
   17ee8:	01eee733          	or	a4,t4,t5
   17eec:	01f76733          	or	a4,a4,t6
   17ef0:	00576733          	or	a4,a4,t0
   17ef4:	e33d                	bnez	a4,17f5a <__letf2+0xd2>
   17ef6:	4701                	li	a4,0
   17ef8:	ea09                	bnez	a2,17f0a <__letf2+0x82>
   17efa:	01136733          	or	a4,t1,a7
   17efe:	01c76733          	or	a4,a4,t3
   17f02:	01076733          	or	a4,a4,a6
   17f06:	00173713          	seqz	a4,a4
   17f0a:	ed21                	bnez	a0,17f62 <__letf2+0xda>
   17f0c:	01eee5b3          	or	a1,t4,t5
   17f10:	01f5e5b3          	or	a1,a1,t6
   17f14:	0055e5b3          	or	a1,a1,t0
   17f18:	c711                	beqz	a4,17f24 <__letf2+0x9c>
   17f1a:	c981                	beqz	a1,17f2a <__letf2+0xa2>
   17f1c:	4505                	li	a0,1
   17f1e:	e691                	bnez	a3,17f2a <__letf2+0xa2>
   17f20:	557d                	li	a0,-1
   17f22:	a021                	j	17f2a <__letf2+0xa2>
   17f24:	e1a1                	bnez	a1,17f64 <__letf2+0xdc>
   17f26:	557d                	li	a0,-1
   17f28:	c7a1                	beqz	a5,17f70 <__letf2+0xe8>
   17f2a:	0141                	addi	sp,sp,16
   17f2c:	8082                	ret
   17f2e:	fea647e3          	blt	a2,a0,17f1c <__letf2+0x94>
   17f32:	ff02eae3          	bltu	t0,a6,17f26 <__letf2+0x9e>
   17f36:	00581f63          	bne	a6,t0,17f54 <__letf2+0xcc>
   17f3a:	ffcfe6e3          	bltu	t6,t3,17f26 <__letf2+0x9e>
   17f3e:	01fe1b63          	bne	t3,t6,17f54 <__letf2+0xcc>
   17f42:	fe6f62e3          	bltu	t5,t1,17f26 <__letf2+0x9e>
   17f46:	01e31763          	bne	t1,t5,17f54 <__letf2+0xcc>
   17f4a:	fd1eeee3          	bltu	t4,a7,17f26 <__letf2+0x9e>
   17f4e:	4501                	li	a0,0
   17f50:	fdd8fde3          	bgeu	a7,t4,17f2a <__letf2+0xa2>
   17f54:	4505                	li	a0,1
   17f56:	fbf1                	bnez	a5,17f2a <__letf2+0xa2>
   17f58:	b7e1                	j	17f20 <__letf2+0x98>
   17f5a:	00186073          	csrsi	fflags,16
   17f5e:	4509                	li	a0,2
   17f60:	b7e9                	j	17f2a <__letf2+0xa2>
   17f62:	ff4d                	bnez	a4,17f1c <__letf2+0x94>
   17f64:	fcf691e3          	bne	a3,a5,17f26 <__letf2+0x9e>
   17f68:	fcc553e3          	bge	a0,a2,17f2e <__letf2+0xa6>
   17f6c:	557d                	li	a0,-1
   17f6e:	fed5                	bnez	a3,17f2a <__letf2+0xa2>
   17f70:	4505                	li	a0,1
   17f72:	bf65                	j	17f2a <__letf2+0xa2>

00017f74 <__multf3>:
   17f74:	7131                	addi	sp,sp,-192
   17f76:	d552                	sw	s4,168(sp)
   17f78:	d356                	sw	s5,164(sp)
   17f7a:	d15a                	sw	s6,160(sp)
   17f7c:	cf5e                	sw	s7,156(sp)
   17f7e:	c62a                	sw	a0,12(sp)
   17f80:	419c                	lw	a5,0(a1)
   17f82:	41c8                	lw	a0,4(a1)
   17f84:	4594                	lw	a3,8(a1)
   17f86:	45d8                	lw	a4,12(a1)
   17f88:	00062a83          	lw	s5,0(a2)
   17f8c:	00462b83          	lw	s7,4(a2)
   17f90:	00862b03          	lw	s6,8(a2)
   17f94:	00c62a03          	lw	s4,12(a2)
   17f98:	df06                	sw	ra,188(sp)
   17f9a:	dd22                	sw	s0,184(sp)
   17f9c:	db26                	sw	s1,180(sp)
   17f9e:	d94a                	sw	s2,176(sp)
   17fa0:	d74e                	sw	s3,172(sp)
   17fa2:	cd62                	sw	s8,152(sp)
   17fa4:	cb66                	sw	s9,148(sp)
   17fa6:	c96a                	sw	s10,144(sp)
   17fa8:	c76e                	sw	s11,140(sp)
   17faa:	002024f3          	frrm	s1
   17fae:	6621                	lui	a2,0x8
   17fb0:	01071413          	slli	s0,a4,0x10
   17fb4:	8041                	srli	s0,s0,0x10
   17fb6:	01075913          	srli	s2,a4,0x10
   17fba:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   17fbc:	d0be                	sw	a5,96(sp)
   17fbe:	d2aa                	sw	a0,100(sp)
   17fc0:	d4b6                	sw	a3,104(sp)
   17fc2:	d6ba                	sw	a4,108(sp)
   17fc4:	d83e                	sw	a5,48(sp)
   17fc6:	da2a                	sw	a0,52(sp)
   17fc8:	dc36                	sw	a3,56(sp)
   17fca:	de22                	sw	s0,60(sp)
   17fcc:	00c97933          	and	s2,s2,a2
   17fd0:	01f75993          	srli	s3,a4,0x1f
   17fd4:	02090a63          	beqz	s2,18008 <__multf3+0x94>
   17fd8:	10c90d63          	beq	s2,a2,180f2 <__multf3+0x17e>
   17fdc:	6741                	lui	a4,0x10
   17fde:	8c59                	or	s0,s0,a4
   17fe0:	de22                	sw	s0,60(sp)
   17fe2:	1818                	addi	a4,sp,48
   17fe4:	104c                	addi	a1,sp,36
   17fe6:	4754                	lw	a3,12(a4)
   17fe8:	4710                	lw	a2,8(a4)
   17fea:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   17fec:	068e                	slli	a3,a3,0x3
   17fee:	8275                	srli	a2,a2,0x1d
   17ff0:	8ed1                	or	a3,a3,a2
   17ff2:	cb14                	sw	a3,16(a4)
   17ff4:	fee599e3          	bne	a1,a4,17fe6 <__multf3+0x72>
   17ff8:	078e                	slli	a5,a5,0x3
   17ffa:	d83e                	sw	a5,48(sp)
   17ffc:	77f1                	lui	a5,0xffffc
   17ffe:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   18000:	993e                	add	s2,s2,a5
   18002:	4c01                	li	s8,0
   18004:	4401                	li	s0,0
   18006:	a211                	j	1810a <__multf3+0x196>
   18008:	00a7e733          	or	a4,a5,a0
   1800c:	8f55                	or	a4,a4,a3
   1800e:	8f41                	or	a4,a4,s0
   18010:	70070d63          	beqz	a4,1872a <__multf3+0x7b6>
   18014:	cc2d                	beqz	s0,1808e <__multf3+0x11a>
   18016:	8522                	mv	a0,s0
   18018:	108020ef          	jal	1a120 <__clzsi2>
   1801c:	ff450693          	addi	a3,a0,-12
   18020:	4056d793          	srai	a5,a3,0x5
   18024:	8afd                	andi	a3,a3,31
   18026:	c6d9                	beqz	a3,180b4 <__multf3+0x140>
   18028:	5671                	li	a2,-4
   1802a:	02c78633          	mul	a2,a5,a2
   1802e:	02000813          	li	a6,32
   18032:	03010313          	addi	t1,sp,48
   18036:	40d80833          	sub	a6,a6,a3
   1803a:	00c60713          	addi	a4,a2,12
   1803e:	971a                	add	a4,a4,t1
   18040:	40c00633          	neg	a2,a2
   18044:	08e31863          	bne	t1,a4,180d4 <__multf3+0x160>
   18048:	fff78713          	addi	a4,a5,-1
   1804c:	078a                	slli	a5,a5,0x2
   1804e:	1810                	addi	a2,sp,48
   18050:	05078793          	addi	a5,a5,80
   18054:	97b2                	add	a5,a5,a2
   18056:	5642                	lw	a2,48(sp)
   18058:	00d616b3          	sll	a3,a2,a3
   1805c:	fad7a823          	sw	a3,-80(a5)
   18060:	00170793          	addi	a5,a4,1
   18064:	078a                	slli	a5,a5,0x2
   18066:	46a1                	li	a3,8
   18068:	1818                	addi	a4,sp,48
   1806a:	00d7e863          	bltu	a5,a3,1807a <__multf3+0x106>
   1806e:	00072023          	sw	zero,0(a4)
   18072:	00072223          	sw	zero,4(a4)
   18076:	17e1                	addi	a5,a5,-8
   18078:	1838                	addi	a4,sp,56
   1807a:	4691                	li	a3,4
   1807c:	00d7e463          	bltu	a5,a3,18084 <__multf3+0x110>
   18080:	00072023          	sw	zero,0(a4)
   18084:	7971                	lui	s2,0xffffc
   18086:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   18088:	40a90933          	sub	s2,s2,a0
   1808c:	bf9d                	j	18002 <__multf3+0x8e>
   1808e:	c699                	beqz	a3,1809c <__multf3+0x128>
   18090:	8536                	mv	a0,a3
   18092:	08e020ef          	jal	1a120 <__clzsi2>
   18096:	02050513          	addi	a0,a0,32
   1809a:	b749                	j	1801c <__multf3+0xa8>
   1809c:	c511                	beqz	a0,180a8 <__multf3+0x134>
   1809e:	082020ef          	jal	1a120 <__clzsi2>
   180a2:	04050513          	addi	a0,a0,64
   180a6:	bf9d                	j	1801c <__multf3+0xa8>
   180a8:	853e                	mv	a0,a5
   180aa:	076020ef          	jal	1a120 <__clzsi2>
   180ae:	06050513          	addi	a0,a0,96
   180b2:	b7ad                	j	1801c <__multf3+0xa8>
   180b4:	5671                	li	a2,-4
   180b6:	02c78633          	mul	a2,a5,a2
   180ba:	1878                	addi	a4,sp,60
   180bc:	468d                	li	a3,3
   180be:	00c705b3          	add	a1,a4,a2
   180c2:	418c                	lw	a1,0(a1)
   180c4:	16fd                	addi	a3,a3,-1
   180c6:	1771                	addi	a4,a4,-4
   180c8:	c34c                	sw	a1,4(a4)
   180ca:	fef6dae3          	bge	a3,a5,180be <__multf3+0x14a>
   180ce:	fff78713          	addi	a4,a5,-1
   180d2:	b779                	j	18060 <__multf3+0xec>
   180d4:	430c                	lw	a1,0(a4)
   180d6:	ffc72883          	lw	a7,-4(a4)
   180da:	00c70e33          	add	t3,a4,a2
   180de:	00d595b3          	sll	a1,a1,a3
   180e2:	0108d8b3          	srl	a7,a7,a6
   180e6:	0115e5b3          	or	a1,a1,a7
   180ea:	00be2023          	sw	a1,0(t3)
   180ee:	1771                	addi	a4,a4,-4
   180f0:	bf91                	j	18044 <__multf3+0xd0>
   180f2:	8fc9                	or	a5,a5,a0
   180f4:	8fd5                	or	a5,a5,a3
   180f6:	8fc1                	or	a5,a5,s0
   180f8:	62078c63          	beqz	a5,18730 <__multf3+0x7bc>
   180fc:	0442                	slli	s0,s0,0x10
   180fe:	8441                	srai	s0,s0,0x10
   18100:	fff44413          	not	s0,s0
   18104:	807d                	srli	s0,s0,0x1f
   18106:	0412                	slli	s0,s0,0x4
   18108:	4c0d                	li	s8,3
   1810a:	010a1513          	slli	a0,s4,0x10
   1810e:	6721                	lui	a4,0x8
   18110:	010a5793          	srli	a5,s4,0x10
   18114:	8141                	srli	a0,a0,0x10
   18116:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18118:	d6d2                	sw	s4,108(sp)
   1811a:	d0d6                	sw	s5,96(sp)
   1811c:	d2de                	sw	s7,100(sp)
   1811e:	d4da                	sw	s6,104(sp)
   18120:	c0d6                	sw	s5,64(sp)
   18122:	c2de                	sw	s7,68(sp)
   18124:	c4da                	sw	s6,72(sp)
   18126:	c6aa                	sw	a0,76(sp)
   18128:	8ff9                	and	a5,a5,a4
   1812a:	01fa5a13          	srli	s4,s4,0x1f
   1812e:	60078363          	beqz	a5,18734 <__multf3+0x7c0>
   18132:	6ee78863          	beq	a5,a4,18822 <__multf3+0x8ae>
   18136:	6741                	lui	a4,0x10
   18138:	8d59                	or	a0,a0,a4
   1813a:	c6aa                	sw	a0,76(sp)
   1813c:	0098                	addi	a4,sp,64
   1813e:	184c                	addi	a1,sp,52
   18140:	4754                	lw	a3,12(a4)
   18142:	4710                	lw	a2,8(a4)
   18144:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   18146:	068e                	slli	a3,a3,0x3
   18148:	8275                	srli	a2,a2,0x1d
   1814a:	8ed1                	or	a3,a3,a2
   1814c:	cb14                	sw	a3,16(a4)
   1814e:	fee599e3          	bne	a1,a4,18140 <__multf3+0x1cc>
   18152:	7771                	lui	a4,0xffffc
   18154:	0a8e                	slli	s5,s5,0x3
   18156:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   18158:	c0d6                	sw	s5,64(sp)
   1815a:	97ba                	add	a5,a5,a4
   1815c:	4681                	li	a3,0
   1815e:	97ca                	add	a5,a5,s2
   18160:	ca3e                	sw	a5,20(sp)
   18162:	0785                	addi	a5,a5,1
   18164:	c83e                	sw	a5,16(sp)
   18166:	002c1793          	slli	a5,s8,0x2
   1816a:	8fd5                	or	a5,a5,a3
   1816c:	4729                	li	a4,10
   1816e:	70f74363          	blt	a4,a5,18874 <__multf3+0x900>
   18172:	4609                	li	a2,2
   18174:	0149c733          	xor	a4,s3,s4
   18178:	6cf64863          	blt	a2,a5,18848 <__multf3+0x8d4>
   1817c:	17fd                	addi	a5,a5,-1
   1817e:	4605                	li	a2,1
   18180:	70f67263          	bgeu	a2,a5,18884 <__multf3+0x910>
   18184:	5542                	lw	a0,48(sp)
   18186:	4306                	lw	t1,64(sp)
   18188:	6841                	lui	a6,0x10
   1818a:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   1818e:	01055913          	srli	s2,a0,0x10
   18192:	01035393          	srli	t2,t1,0x10
   18196:	8d6d                	and	a0,a0,a1
   18198:	00b37333          	and	t1,t1,a1
   1819c:	02a30633          	mul	a2,t1,a0
   181a0:	026908b3          	mul	a7,s2,t1
   181a4:	01065793          	srli	a5,a2,0x10
   181a8:	02a386b3          	mul	a3,t2,a0
   181ac:	96c6                	add	a3,a3,a7
   181ae:	97b6                	add	a5,a5,a3
   181b0:	02790bb3          	mul	s7,s2,t2
   181b4:	0117f363          	bgeu	a5,a7,181ba <__multf3+0x246>
   181b8:	9bc2                	add	s7,s7,a6
   181ba:	4896                	lw	a7,68(sp)
   181bc:	0107d693          	srli	a3,a5,0x10
   181c0:	8fed                	and	a5,a5,a1
   181c2:	8e6d                	and	a2,a2,a1
   181c4:	07c2                	slli	a5,a5,0x10
   181c6:	97b2                	add	a5,a5,a2
   181c8:	0108df93          	srli	t6,a7,0x10
   181cc:	00b8f8b3          	and	a7,a7,a1
   181d0:	031905b3          	mul	a1,s2,a7
   181d4:	d03e                	sw	a5,32(sp)
   181d6:	d0be                	sw	a5,96(sp)
   181d8:	02af8633          	mul	a2,t6,a0
   181dc:	02a887b3          	mul	a5,a7,a0
   181e0:	962e                	add	a2,a2,a1
   181e2:	0107d813          	srli	a6,a5,0x10
   181e6:	9832                	add	a6,a6,a2
   181e8:	03f90b33          	mul	s6,s2,t6
   181ec:	00b87463          	bgeu	a6,a1,181f4 <__multf3+0x280>
   181f0:	6641                	lui	a2,0x10
   181f2:	9b32                	add	s6,s6,a2
   181f4:	01085613          	srli	a2,a6,0x10
   181f8:	55d2                	lw	a1,52(sp)
   181fa:	cc32                	sw	a2,24(sp)
   181fc:	6641                	lui	a2,0x10
   181fe:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   18202:	01d87833          	and	a6,a6,t4
   18206:	01d7f7b3          	and	a5,a5,t4
   1820a:	0105d293          	srli	t0,a1,0x10
   1820e:	0842                	slli	a6,a6,0x10
   18210:	01d5f5b3          	and	a1,a1,t4
   18214:	983e                	add	a6,a6,a5
   18216:	02628a33          	mul	s4,t0,t1
   1821a:	96c2                	add	a3,a3,a6
   1821c:	026587b3          	mul	a5,a1,t1
   18220:	02b38eb3          	mul	t4,t2,a1
   18224:	0107d993          	srli	s3,a5,0x10
   18228:	9ed2                	add	t4,t4,s4
   1822a:	99f6                	add	s3,s3,t4
   1822c:	02538f33          	mul	t5,t2,t0
   18230:	0149f363          	bgeu	s3,s4,18236 <__multf3+0x2c2>
   18234:	9f32                	add	t5,t5,a2
   18236:	6c41                	lui	s8,0x10
   18238:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   1823c:	8ff1                	and	a5,a5,a2
   1823e:	0109da13          	srli	s4,s3,0x10
   18242:	00c9f9b3          	and	s3,s3,a2
   18246:	09c2                	slli	s3,s3,0x10
   18248:	99be                	add	s3,s3,a5
   1824a:	02b88eb3          	mul	t4,a7,a1
   1824e:	9a7a                	add	s4,s4,t5
   18250:	03128633          	mul	a2,t0,a7
   18254:	010ed793          	srli	a5,t4,0x10
   18258:	02bf8ab3          	mul	s5,t6,a1
   1825c:	9ab2                	add	s5,s5,a2
   1825e:	97d6                	add	a5,a5,s5
   18260:	025f8f33          	mul	t5,t6,t0
   18264:	00c7f363          	bgeu	a5,a2,1826a <__multf3+0x2f6>
   18268:	9f62                	add	t5,t5,s8
   1826a:	0107d613          	srli	a2,a5,0x10
   1826e:	967a                	add	a2,a2,t5
   18270:	6ac1                	lui	s5,0x10
   18272:	ce32                	sw	a2,28(sp)
   18274:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   18278:	8ff1                	and	a5,a5,a2
   1827a:	00cefeb3          	and	t4,t4,a2
   1827e:	07c2                	slli	a5,a5,0x10
   18280:	97f6                	add	a5,a5,t4
   18282:	d23e                	sw	a5,36(sp)
   18284:	47a6                	lw	a5,72(sp)
   18286:	0107dd93          	srli	s11,a5,0x10
   1828a:	00c7fd33          	and	s10,a5,a2
   1828e:	02ad0633          	mul	a2,s10,a0
   18292:	03a90c33          	mul	s8,s2,s10
   18296:	01065793          	srli	a5,a2,0x10
   1829a:	02ad8f33          	mul	t5,s11,a0
   1829e:	9f62                	add	t5,t5,s8
   182a0:	97fa                	add	a5,a5,t5
   182a2:	03b90eb3          	mul	t4,s2,s11
   182a6:	0187f363          	bgeu	a5,s8,182ac <__multf3+0x338>
   182aa:	9ed6                	add	t4,t4,s5
   182ac:	0107df13          	srli	t5,a5,0x10
   182b0:	6cc1                	lui	s9,0x10
   182b2:	01df0e33          	add	t3,t5,t4
   182b6:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   182ba:	01d7f7b3          	and	a5,a5,t4
   182be:	01d67633          	and	a2,a2,t4
   182c2:	07c2                	slli	a5,a5,0x10
   182c4:	97b2                	add	a5,a5,a2
   182c6:	5662                	lw	a2,56(sp)
   182c8:	d472                	sw	t3,40(sp)
   182ca:	d63e                	sw	a5,44(sp)
   182cc:	01065f13          	srli	t5,a2,0x10
   182d0:	01d67633          	and	a2,a2,t4
   182d4:	02660ab3          	mul	s5,a2,t1
   182d8:	026f0e33          	mul	t3,t5,t1
   182dc:	010ad793          	srli	a5,s5,0x10
   182e0:	02c38eb3          	mul	t4,t2,a2
   182e4:	9ef2                	add	t4,t4,t3
   182e6:	9ebe                	add	t4,t4,a5
   182e8:	03e38c33          	mul	s8,t2,t5
   182ec:	01cef363          	bgeu	t4,t3,182f2 <__multf3+0x37e>
   182f0:	9c66                	add	s8,s8,s9
   182f2:	47e2                	lw	a5,24(sp)
   182f4:	96de                	add	a3,a3,s7
   182f6:	0106b833          	sltu	a6,a3,a6
   182fa:	010edc93          	srli	s9,t4,0x10
   182fe:	6e41                	lui	t3,0x10
   18300:	9c66                	add	s8,s8,s9
   18302:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   18306:	01078e33          	add	t3,a5,a6
   1830a:	013687b3          	add	a5,a3,s3
   1830e:	9e5a                	add	t3,t3,s6
   18310:	00d7b6b3          	sltu	a3,a5,a3
   18314:	cc3e                	sw	a5,24(sp)
   18316:	d2be                	sw	a5,100(sp)
   18318:	5792                	lw	a5,36(sp)
   1831a:	9a72                	add	s4,s4,t3
   1831c:	96d2                	add	a3,a3,s4
   1831e:	01ca39b3          	sltu	s3,s4,t3
   18322:	0146ba33          	sltu	s4,a3,s4
   18326:	010e3e33          	sltu	t3,t3,a6
   1832a:	00f68833          	add	a6,a3,a5
   1832e:	47f2                	lw	a5,28(sp)
   18330:	0149e9b3          	or	s3,s3,s4
   18334:	9e4e                	add	t3,t3,s3
   18336:	00fe09b3          	add	s3,t3,a5
   1833a:	57b2                	lw	a5,44(sp)
   1833c:	5a22                	lw	s4,40(sp)
   1833e:	00d836b3          	sltu	a3,a6,a3
   18342:	019efeb3          	and	t4,t4,s9
   18346:	96ce                	add	a3,a3,s3
   18348:	97c2                	add	a5,a5,a6
   1834a:	0ec2                	slli	t4,t4,0x10
   1834c:	019afab3          	and	s5,s5,s9
   18350:	9a36                	add	s4,s4,a3
   18352:	0107b833          	sltu	a6,a5,a6
   18356:	9ed6                	add	t4,t4,s5
   18358:	9ebe                	add	t4,t4,a5
   1835a:	9852                	add	a6,a6,s4
   1835c:	9c42                	add	s8,s8,a6
   1835e:	00feb7b3          	sltu	a5,t4,a5
   18362:	ce76                	sw	t4,28(sp)
   18364:	d4f6                	sw	t4,104(sp)
   18366:	4eb6                	lw	t4,76(sp)
   18368:	01c9be33          	sltu	t3,s3,t3
   1836c:	97e2                	add	a5,a5,s8
   1836e:	0136b9b3          	sltu	s3,a3,s3
   18372:	00da36b3          	sltu	a3,s4,a3
   18376:	01483a33          	sltu	s4,a6,s4
   1837a:	013e69b3          	or	s3,t3,s3
   1837e:	0146e6b3          	or	a3,a3,s4
   18382:	010c3833          	sltu	a6,s8,a6
   18386:	0187bc33          	sltu	s8,a5,s8
   1838a:	96ce                	add	a3,a3,s3
   1838c:	01886833          	or	a6,a6,s8
   18390:	010ed993          	srli	s3,t4,0x10
   18394:	019efeb3          	and	t4,t4,s9
   18398:	03d90a33          	mul	s4,s2,t4
   1839c:	00d80e33          	add	t3,a6,a3
   183a0:	02ae86b3          	mul	a3,t4,a0
   183a4:	02a98533          	mul	a0,s3,a0
   183a8:	0106d813          	srli	a6,a3,0x10
   183ac:	9552                	add	a0,a0,s4
   183ae:	982a                	add	a6,a6,a0
   183b0:	03390933          	mul	s2,s2,s3
   183b4:	01487463          	bgeu	a6,s4,183bc <__multf3+0x448>
   183b8:	6541                	lui	a0,0x10
   183ba:	992a                	add	s2,s2,a0
   183bc:	01085513          	srli	a0,a6,0x10
   183c0:	954a                	add	a0,a0,s2
   183c2:	5a72                	lw	s4,60(sp)
   183c4:	6ac1                	lui	s5,0x10
   183c6:	d22a                	sw	a0,36(sp)
   183c8:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   183cc:	00a87833          	and	a6,a6,a0
   183d0:	010a5913          	srli	s2,s4,0x10
   183d4:	0842                	slli	a6,a6,0x10
   183d6:	8ee9                	and	a3,a3,a0
   183d8:	00aa7a33          	and	s4,s4,a0
   183dc:	96c2                	add	a3,a3,a6
   183de:	026a0533          	mul	a0,s4,t1
   183e2:	d436                	sw	a3,40(sp)
   183e4:	02690333          	mul	t1,s2,t1
   183e8:	01055693          	srli	a3,a0,0x10
   183ec:	03238833          	mul	a6,t2,s2
   183f0:	034383b3          	mul	t2,t2,s4
   183f4:	939a                	add	t2,t2,t1
   183f6:	969e                	add	a3,a3,t2
   183f8:	0066f363          	bgeu	a3,t1,183fe <__multf3+0x48a>
   183fc:	9856                	add	a6,a6,s5
   183fe:	0106da93          	srli	s5,a3,0x10
   18402:	6bc1                	lui	s7,0x10
   18404:	9ac2                	add	s5,s5,a6
   18406:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   1840a:	01057533          	and	a0,a0,a6
   1840e:	0106f6b3          	and	a3,a3,a6
   18412:	03a28333          	mul	t1,t0,s10
   18416:	06c2                	slli	a3,a3,0x10
   18418:	96aa                	add	a3,a3,a0
   1841a:	03a58833          	mul	a6,a1,s10
   1841e:	02bd83b3          	mul	t2,s11,a1
   18422:	01085513          	srli	a0,a6,0x10
   18426:	939a                	add	t2,t2,t1
   18428:	951e                	add	a0,a0,t2
   1842a:	03b28b33          	mul	s6,t0,s11
   1842e:	00657363          	bgeu	a0,t1,18434 <__multf3+0x4c0>
   18432:	9b5e                	add	s6,s6,s7
   18434:	6c41                	lui	s8,0x10
   18436:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   1843a:	01055393          	srli	t2,a0,0x10
   1843e:	00657533          	and	a0,a0,t1
   18442:	00687833          	and	a6,a6,t1
   18446:	0542                	slli	a0,a0,0x10
   18448:	93da                	add	t2,t2,s6
   1844a:	02cf8333          	mul	t1,t6,a2
   1844e:	9542                	add	a0,a0,a6
   18450:	031f0b33          	mul	s6,t5,a7
   18454:	02c88833          	mul	a6,a7,a2
   18458:	935a                	add	t1,t1,s6
   1845a:	01085c93          	srli	s9,a6,0x10
   1845e:	9366                	add	t1,t1,s9
   18460:	03ef8bb3          	mul	s7,t6,t5
   18464:	01637363          	bgeu	t1,s6,1846a <__multf3+0x4f6>
   18468:	9be2                	add	s7,s7,s8
   1846a:	01035b13          	srli	s6,t1,0x10
   1846e:	9b5e                	add	s6,s6,s7
   18470:	6bc1                	lui	s7,0x10
   18472:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   18476:	01837333          	and	t1,t1,s8
   1847a:	0342                	slli	t1,t1,0x10
   1847c:	01887833          	and	a6,a6,s8
   18480:	981a                	add	a6,a6,t1
   18482:	5322                	lw	t1,40(sp)
   18484:	5c12                	lw	s8,36(sp)
   18486:	933e                	add	t1,t1,a5
   18488:	9c72                	add	s8,s8,t3
   1848a:	00f337b3          	sltu	a5,t1,a5
   1848e:	97e2                	add	a5,a5,s8
   18490:	969a                	add	a3,a3,t1
   18492:	9abe                	add	s5,s5,a5
   18494:	0066b333          	sltu	t1,a3,t1
   18498:	9356                	add	t1,t1,s5
   1849a:	9536                	add	a0,a0,a3
   1849c:	939a                	add	t2,t2,t1
   1849e:	00d536b3          	sltu	a3,a0,a3
   184a2:	969e                	add	a3,a3,t2
   184a4:	982a                	add	a6,a6,a0
   184a6:	01cc3e33          	sltu	t3,s8,t3
   184aa:	9b36                	add	s6,s6,a3
   184ac:	0187bc33          	sltu	s8,a5,s8
   184b0:	00a83533          	sltu	a0,a6,a0
   184b4:	00fab7b3          	sltu	a5,s5,a5
   184b8:	01533ab3          	sltu	s5,t1,s5
   184bc:	018e6c33          	or	s8,t3,s8
   184c0:	0157e7b3          	or	a5,a5,s5
   184c4:	0063b333          	sltu	t1,t2,t1
   184c8:	955a                	add	a0,a0,s6
   184ca:	0076b3b3          	sltu	t2,a3,t2
   184ce:	97e2                	add	a5,a5,s8
   184d0:	00736333          	or	t1,t1,t2
   184d4:	00db36b3          	sltu	a3,s6,a3
   184d8:	01653b33          	sltu	s6,a0,s6
   184dc:	00f303b3          	add	t2,t1,a5
   184e0:	0166e6b3          	or	a3,a3,s6
   184e4:	00768333          	add	t1,a3,t2
   184e8:	03af0e33          	mul	t3,t5,s10
   184ec:	d6c2                	sw	a6,108(sp)
   184ee:	03a606b3          	mul	a3,a2,s10
   184f2:	02cd8ab3          	mul	s5,s11,a2
   184f6:	0106d793          	srli	a5,a3,0x10
   184fa:	9af2                	add	s5,s5,t3
   184fc:	97d6                	add	a5,a5,s5
   184fe:	03ed83b3          	mul	t2,s11,t5
   18502:	01c7f363          	bgeu	a5,t3,18508 <__multf3+0x594>
   18506:	93de                	add	t2,t2,s7
   18508:	0107de13          	srli	t3,a5,0x10
   1850c:	6ac1                	lui	s5,0x10
   1850e:	9e1e                	add	t3,t3,t2
   18510:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   18514:	0077f7b3          	and	a5,a5,t2
   18518:	0076f6b3          	and	a3,a3,t2
   1851c:	07c2                	slli	a5,a5,0x10
   1851e:	03d28b33          	mul	s6,t0,t4
   18522:	97b6                	add	a5,a5,a3
   18524:	02be86b3          	mul	a3,t4,a1
   18528:	02b985b3          	mul	a1,s3,a1
   1852c:	0106d393          	srli	t2,a3,0x10
   18530:	95da                	add	a1,a1,s6
   18532:	93ae                	add	t2,t2,a1
   18534:	033282b3          	mul	t0,t0,s3
   18538:	0163f363          	bgeu	t2,s6,1853e <__multf3+0x5ca>
   1853c:	92d6                	add	t0,t0,s5
   1853e:	0103d593          	srli	a1,t2,0x10
   18542:	6b41                	lui	s6,0x10
   18544:	92ae                	add	t0,t0,a1
   18546:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   1854a:	8eed                	and	a3,a3,a1
   1854c:	00b3f3b3          	and	t2,t2,a1
   18550:	03c2                	slli	t2,t2,0x10
   18552:	031a05b3          	mul	a1,s4,a7
   18556:	93b6                	add	t2,t2,a3
   18558:	031908b3          	mul	a7,s2,a7
   1855c:	0105d693          	srli	a3,a1,0x10
   18560:	032f8ab3          	mul	s5,t6,s2
   18564:	034f8fb3          	mul	t6,t6,s4
   18568:	9fc6                	add	t6,t6,a7
   1856a:	96fe                	add	a3,a3,t6
   1856c:	0116f363          	bgeu	a3,a7,18572 <__multf3+0x5fe>
   18570:	9ada                	add	s5,s5,s6
   18572:	0106df93          	srli	t6,a3,0x10
   18576:	68c1                	lui	a7,0x10
   18578:	9fd6                	add	t6,t6,s5
   1857a:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   1857e:	0156f6b3          	and	a3,a3,s5
   18582:	0155f5b3          	and	a1,a1,s5
   18586:	06c2                	slli	a3,a3,0x10
   18588:	03df0ab3          	mul	s5,t5,t4
   1858c:	96ae                	add	a3,a3,a1
   1858e:	03d605b3          	mul	a1,a2,t4
   18592:	02c98633          	mul	a2,s3,a2
   18596:	01560b33          	add	s6,a2,s5
   1859a:	0105d613          	srli	a2,a1,0x10
   1859e:	965a                	add	a2,a2,s6
   185a0:	033f0f33          	mul	t5,t5,s3
   185a4:	01567363          	bgeu	a2,s5,185aa <__multf3+0x636>
   185a8:	9f46                	add	t5,t5,a7
   185aa:	6ac1                	lui	s5,0x10
   185ac:	01065893          	srli	a7,a2,0x10
   185b0:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   185b4:	9f46                	add	t5,t5,a7
   185b6:	016678b3          	and	a7,a2,s6
   185ba:	0165f5b3          	and	a1,a1,s6
   185be:	08c2                	slli	a7,a7,0x10
   185c0:	03aa0633          	mul	a2,s4,s10
   185c4:	98ae                	add	a7,a7,a1
   185c6:	03a90bb3          	mul	s7,s2,s10
   185ca:	01065c13          	srli	s8,a2,0x10
   185ce:	034d85b3          	mul	a1,s11,s4
   185d2:	95de                	add	a1,a1,s7
   185d4:	95e2                	add	a1,a1,s8
   185d6:	032d8b33          	mul	s6,s11,s2
   185da:	0175f363          	bgeu	a1,s7,185e0 <__multf3+0x66c>
   185de:	9b56                	add	s6,s6,s5
   185e0:	97aa                	add	a5,a5,a0
   185e2:	9e1a                	add	t3,t3,t1
   185e4:	00a7b533          	sltu	a0,a5,a0
   185e8:	9572                	add	a0,a0,t3
   185ea:	93be                	add	t2,t2,a5
   185ec:	92aa                	add	t0,t0,a0
   185ee:	00f3b7b3          	sltu	a5,t2,a5
   185f2:	9796                	add	a5,a5,t0
   185f4:	006e3333          	sltu	t1,t3,t1
   185f8:	01c53e33          	sltu	t3,a0,t3
   185fc:	00a2b533          	sltu	a0,t0,a0
   18600:	0057b2b3          	sltu	t0,a5,t0
   18604:	00556533          	or	a0,a0,t0
   18608:	01c36333          	or	t1,t1,t3
   1860c:	932a                	add	t1,t1,a0
   1860e:	03da0533          	mul	a0,s4,t4
   18612:	969e                	add	a3,a3,t2
   18614:	9fbe                	add	t6,t6,a5
   18616:	0105da93          	srli	s5,a1,0x10
   1861a:	d8b6                	sw	a3,112(sp)
   1861c:	0076b6b3          	sltu	a3,a3,t2
   18620:	96fe                	add	a3,a3,t6
   18622:	9ada                	add	s5,s5,s6
   18624:	6b41                	lui	s6,0x10
   18626:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   1862a:	03d90eb3          	mul	t4,s2,t4
   1862e:	00ffb7b3          	sltu	a5,t6,a5
   18632:	01f6bfb3          	sltu	t6,a3,t6
   18636:	0175f5b3          	and	a1,a1,s7
   1863a:	01f7e7b3          	or	a5,a5,t6
   1863e:	98b6                	add	a7,a7,a3
   18640:	05c2                	slli	a1,a1,0x10
   18642:	979a                	add	a5,a5,t1
   18644:	01767633          	and	a2,a2,s7
   18648:	9f3e                	add	t5,t5,a5
   1864a:	03298933          	mul	s2,s3,s2
   1864e:	962e                	add	a2,a2,a1
   18650:	00d8b6b3          	sltu	a3,a7,a3
   18654:	96fa                	add	a3,a3,t5
   18656:	9646                	add	a2,a2,a7
   18658:	00ff37b3          	sltu	a5,t5,a5
   1865c:	9ab6                	add	s5,s5,a3
   1865e:	01e6bf33          	sltu	t5,a3,t5
   18662:	dab2                	sw	a2,116(sp)
   18664:	01163633          	sltu	a2,a2,a7
   18668:	034989b3          	mul	s3,s3,s4
   1866c:	01e7e5b3          	or	a1,a5,t5
   18670:	9656                	add	a2,a2,s5
   18672:	01055793          	srli	a5,a0,0x10
   18676:	00dab6b3          	sltu	a3,s5,a3
   1867a:	01563ab3          	sltu	s5,a2,s5
   1867e:	0156e6b3          	or	a3,a3,s5
   18682:	99f6                	add	s3,s3,t4
   18684:	97ce                	add	a5,a5,s3
   18686:	01d7f363          	bgeu	a5,t4,1868c <__multf3+0x718>
   1868a:	995a                	add	s2,s2,s6
   1868c:	0107d893          	srli	a7,a5,0x10
   18690:	95c6                	add	a1,a1,a7
   18692:	68c1                	lui	a7,0x10
   18694:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   18696:	0117f7b3          	and	a5,a5,a7
   1869a:	07c2                	slli	a5,a5,0x10
   1869c:	01157533          	and	a0,a0,a7
   186a0:	97aa                	add	a5,a5,a0
   186a2:	97b2                	add	a5,a5,a2
   186a4:	96ae                	add	a3,a3,a1
   186a6:	00c7b633          	sltu	a2,a5,a2
   186aa:	9636                	add	a2,a2,a3
   186ac:	dcbe                	sw	a5,120(sp)
   186ae:	46e2                	lw	a3,24(sp)
   186b0:	5782                	lw	a5,32(sp)
   186b2:	964a                	add	a2,a2,s2
   186b4:	0836                	slli	a6,a6,0xd
   186b6:	8fd5                	or	a5,a5,a3
   186b8:	46f2                	lw	a3,28(sp)
   186ba:	deb2                	sw	a2,124(sp)
   186bc:	188c                	addi	a1,sp,112
   186be:	8fd5                	or	a5,a5,a3
   186c0:	00f86833          	or	a6,a6,a5
   186c4:	109c                	addi	a5,sp,96
   186c6:	47d4                	lw	a3,12(a5)
   186c8:	4b90                	lw	a2,16(a5)
   186ca:	82cd                	srli	a3,a3,0x13
   186cc:	0636                	slli	a2,a2,0xd
   186ce:	8ed1                	or	a3,a3,a2
   186d0:	c394                	sw	a3,0(a5)
   186d2:	0791                	addi	a5,a5,4
   186d4:	fef599e3          	bne	a1,a5,186c6 <__multf3+0x752>
   186d8:	5786                	lw	a5,96(sp)
   186da:	01003833          	snez	a6,a6
   186de:	56b6                	lw	a3,108(sp)
   186e0:	00f86833          	or	a6,a6,a5
   186e4:	57a6                	lw	a5,104(sp)
   186e6:	ceb6                	sw	a3,92(sp)
   186e8:	c8c2                	sw	a6,80(sp)
   186ea:	ccbe                	sw	a5,88(sp)
   186ec:	5796                	lw	a5,100(sp)
   186ee:	cabe                	sw	a5,84(sp)
   186f0:	00b69793          	slli	a5,a3,0xb
   186f4:	0207d863          	bgez	a5,18724 <__multf3+0x7b0>
   186f8:	087e                	slli	a6,a6,0x1f
   186fa:	089c                	addi	a5,sp,80
   186fc:	08e8                	addi	a0,sp,92
   186fe:	4390                	lw	a2,0(a5)
   18700:	43cc                	lw	a1,4(a5)
   18702:	8205                	srli	a2,a2,0x1
   18704:	05fe                	slli	a1,a1,0x1f
   18706:	8e4d                	or	a2,a2,a1
   18708:	c390                	sw	a2,0(a5)
   1870a:	0791                	addi	a5,a5,4
   1870c:	fef519e3          	bne	a0,a5,186fe <__multf3+0x78a>
   18710:	47c6                	lw	a5,80(sp)
   18712:	01003833          	snez	a6,a6
   18716:	8285                	srli	a3,a3,0x1
   18718:	0107e7b3          	or	a5,a5,a6
   1871c:	c8be                	sw	a5,80(sp)
   1871e:	47c2                	lw	a5,16(sp)
   18720:	ceb6                	sw	a3,92(sp)
   18722:	ca3e                	sw	a5,20(sp)
   18724:	47d2                	lw	a5,20(sp)
   18726:	c83e                	sw	a5,16(sp)
   18728:	aa41                	j	188b8 <__multf3+0x944>
   1872a:	4901                	li	s2,0
   1872c:	4c05                	li	s8,1
   1872e:	b8d9                	j	18004 <__multf3+0x90>
   18730:	4c09                	li	s8,2
   18732:	b8c9                	j	18004 <__multf3+0x90>
   18734:	017ae7b3          	or	a5,s5,s7
   18738:	0167e7b3          	or	a5,a5,s6
   1873c:	8fc9                	or	a5,a5,a0
   1873e:	10078263          	beqz	a5,18842 <__multf3+0x8ce>
   18742:	c93d                	beqz	a0,187b8 <__multf3+0x844>
   18744:	1dd010ef          	jal	1a120 <__clzsi2>
   18748:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   1874c:	4056d793          	srai	a5,a3,0x5
   18750:	8afd                	andi	a3,a3,31
   18752:	cac9                	beqz	a3,187e4 <__multf3+0x870>
   18754:	5671                	li	a2,-4
   18756:	02c78633          	mul	a2,a5,a2
   1875a:	02000813          	li	a6,32
   1875e:	04010313          	addi	t1,sp,64
   18762:	40d80833          	sub	a6,a6,a3
   18766:	00c60713          	addi	a4,a2,12
   1876a:	971a                	add	a4,a4,t1
   1876c:	40c00633          	neg	a2,a2
   18770:	08e31a63          	bne	t1,a4,18804 <__multf3+0x890>
   18774:	fff78713          	addi	a4,a5,-1
   18778:	078a                	slli	a5,a5,0x2
   1877a:	1810                	addi	a2,sp,48
   1877c:	05078793          	addi	a5,a5,80
   18780:	97b2                	add	a5,a5,a2
   18782:	4606                	lw	a2,64(sp)
   18784:	00d616b3          	sll	a3,a2,a3
   18788:	fcd7a023          	sw	a3,-64(a5)
   1878c:	00170793          	addi	a5,a4,1
   18790:	078a                	slli	a5,a5,0x2
   18792:	46a1                	li	a3,8
   18794:	0098                	addi	a4,sp,64
   18796:	00d7e863          	bltu	a5,a3,187a6 <__multf3+0x832>
   1879a:	00072023          	sw	zero,0(a4)
   1879e:	00072223          	sw	zero,4(a4)
   187a2:	17e1                	addi	a5,a5,-8
   187a4:	00b8                	addi	a4,sp,72
   187a6:	4691                	li	a3,4
   187a8:	00d7e463          	bltu	a5,a3,187b0 <__multf3+0x83c>
   187ac:	00072023          	sw	zero,0(a4)
   187b0:	77f1                	lui	a5,0xffffc
   187b2:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   187b4:	8f89                	sub	a5,a5,a0
   187b6:	b25d                	j	1815c <__multf3+0x1e8>
   187b8:	000b0863          	beqz	s6,187c8 <__multf3+0x854>
   187bc:	855a                	mv	a0,s6
   187be:	163010ef          	jal	1a120 <__clzsi2>
   187c2:	02050513          	addi	a0,a0,32
   187c6:	b749                	j	18748 <__multf3+0x7d4>
   187c8:	000b8863          	beqz	s7,187d8 <__multf3+0x864>
   187cc:	855e                	mv	a0,s7
   187ce:	153010ef          	jal	1a120 <__clzsi2>
   187d2:	04050513          	addi	a0,a0,64
   187d6:	bf8d                	j	18748 <__multf3+0x7d4>
   187d8:	8556                	mv	a0,s5
   187da:	147010ef          	jal	1a120 <__clzsi2>
   187de:	06050513          	addi	a0,a0,96
   187e2:	b79d                	j	18748 <__multf3+0x7d4>
   187e4:	5671                	li	a2,-4
   187e6:	02c78633          	mul	a2,a5,a2
   187ea:	00f8                	addi	a4,sp,76
   187ec:	468d                	li	a3,3
   187ee:	00c705b3          	add	a1,a4,a2
   187f2:	418c                	lw	a1,0(a1)
   187f4:	16fd                	addi	a3,a3,-1
   187f6:	1771                	addi	a4,a4,-4
   187f8:	c34c                	sw	a1,4(a4)
   187fa:	fef6dae3          	bge	a3,a5,187ee <__multf3+0x87a>
   187fe:	fff78713          	addi	a4,a5,-1
   18802:	b769                	j	1878c <__multf3+0x818>
   18804:	430c                	lw	a1,0(a4)
   18806:	ffc72883          	lw	a7,-4(a4)
   1880a:	00c70e33          	add	t3,a4,a2
   1880e:	00d595b3          	sll	a1,a1,a3
   18812:	0108d8b3          	srl	a7,a7,a6
   18816:	0115e5b3          	or	a1,a1,a7
   1881a:	00be2023          	sw	a1,0(t3)
   1881e:	1771                	addi	a4,a4,-4
   18820:	bf81                	j	18770 <__multf3+0x7fc>
   18822:	017aeab3          	or	s5,s5,s7
   18826:	016aeab3          	or	s5,s5,s6
   1882a:	00aaeab3          	or	s5,s5,a0
   1882e:	4689                	li	a3,2
   18830:	920a87e3          	beqz	s5,1815e <__multf3+0x1ea>
   18834:	0542                	slli	a0,a0,0x10
   18836:	8541                	srai	a0,a0,0x10
   18838:	468d                	li	a3,3
   1883a:	920542e3          	bltz	a0,1815e <__multf3+0x1ea>
   1883e:	4441                	li	s0,16
   18840:	ba39                	j	1815e <__multf3+0x1ea>
   18842:	4781                	li	a5,0
   18844:	4685                	li	a3,1
   18846:	ba21                	j	1815e <__multf3+0x1ea>
   18848:	4605                	li	a2,1
   1884a:	00f617b3          	sll	a5,a2,a5
   1884e:	5307f613          	andi	a2,a5,1328
   18852:	e231                	bnez	a2,18896 <__multf3+0x922>
   18854:	0887f613          	andi	a2,a5,136
   18858:	e60d                	bnez	a2,18882 <__multf3+0x90e>
   1885a:	2407f793          	andi	a5,a5,576
   1885e:	920783e3          	beqz	a5,18184 <__multf3+0x210>
   18862:	4441                	li	s0,16
   18864:	67a1                	lui	a5,0x8
   18866:	cebe                	sw	a5,92(sp)
   18868:	cc82                	sw	zero,88(sp)
   1886a:	ca82                	sw	zero,84(sp)
   1886c:	c882                	sw	zero,80(sp)
   1886e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18870:	4701                	li	a4,0
   18872:	a8e1                	j	1894a <__multf3+0x9d6>
   18874:	473d                	li	a4,15
   18876:	fee787e3          	beq	a5,a4,18864 <__multf3+0x8f0>
   1887a:	462d                	li	a2,11
   1887c:	874e                	mv	a4,s3
   1887e:	00c79c63          	bne	a5,a2,18896 <__multf3+0x922>
   18882:	8752                	mv	a4,s4
   18884:	4786                	lw	a5,64(sp)
   18886:	8c36                	mv	s8,a3
   18888:	c8be                	sw	a5,80(sp)
   1888a:	4796                	lw	a5,68(sp)
   1888c:	cabe                	sw	a5,84(sp)
   1888e:	47a6                	lw	a5,72(sp)
   18890:	ccbe                	sw	a5,88(sp)
   18892:	47b6                	lw	a5,76(sp)
   18894:	a801                	j	188a4 <__multf3+0x930>
   18896:	57c2                	lw	a5,48(sp)
   18898:	c8be                	sw	a5,80(sp)
   1889a:	57d2                	lw	a5,52(sp)
   1889c:	cabe                	sw	a5,84(sp)
   1889e:	57e2                	lw	a5,56(sp)
   188a0:	ccbe                	sw	a5,88(sp)
   188a2:	57f2                	lw	a5,60(sp)
   188a4:	cebe                	sw	a5,92(sp)
   188a6:	4789                	li	a5,2
   188a8:	34fc0d63          	beq	s8,a5,18c02 <__multf3+0xc8e>
   188ac:	478d                	li	a5,3
   188ae:	fafc0be3          	beq	s8,a5,18864 <__multf3+0x8f0>
   188b2:	4785                	li	a5,1
   188b4:	34fc0263          	beq	s8,a5,18bf8 <__multf3+0xc84>
   188b8:	46c2                	lw	a3,16(sp)
   188ba:	6791                	lui	a5,0x4
   188bc:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   188be:	97b6                	add	a5,a5,a3
   188c0:	10f05763          	blez	a5,189ce <__multf3+0xa5a>
   188c4:	4646                	lw	a2,80(sp)
   188c6:	00767693          	andi	a3,a2,7
   188ca:	c2a1                	beqz	a3,1890a <__multf3+0x996>
   188cc:	4509                	li	a0,2
   188ce:	46d6                	lw	a3,84(sp)
   188d0:	45f6                	lw	a1,92(sp)
   188d2:	0ca48563          	beq	s1,a0,1899c <__multf3+0xa28>
   188d6:	450d                	li	a0,3
   188d8:	0aa48c63          	beq	s1,a0,18990 <__multf3+0xa1c>
   188dc:	e48d                	bnez	s1,18906 <__multf3+0x992>
   188de:	00f67513          	andi	a0,a2,15
   188e2:	4811                	li	a6,4
   188e4:	03050163          	beq	a0,a6,18906 <__multf3+0x992>
   188e8:	0611                	addi	a2,a2,4
   188ea:	c8b2                	sw	a2,80(sp)
   188ec:	00463613          	sltiu	a2,a2,4
   188f0:	96b2                	add	a3,a3,a2
   188f2:	cab6                	sw	a3,84(sp)
   188f4:	00c6b6b3          	sltu	a3,a3,a2
   188f8:	4666                	lw	a2,88(sp)
   188fa:	96b2                	add	a3,a3,a2
   188fc:	ccb6                	sw	a3,88(sp)
   188fe:	00c6b6b3          	sltu	a3,a3,a2
   18902:	96ae                	add	a3,a3,a1
   18904:	ceb6                	sw	a3,92(sp)
   18906:	00146413          	ori	s0,s0,1
   1890a:	46f6                	lw	a3,92(sp)
   1890c:	00b69613          	slli	a2,a3,0xb
   18910:	00065a63          	bgez	a2,18924 <__multf3+0x9b0>
   18914:	fff007b7          	lui	a5,0xfff00
   18918:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee45a3>
   1891a:	8efd                	and	a3,a3,a5
   1891c:	ceb6                	sw	a3,92(sp)
   1891e:	46c2                	lw	a3,16(sp)
   18920:	6791                	lui	a5,0x4
   18922:	97b6                	add	a5,a5,a3
   18924:	0894                	addi	a3,sp,80
   18926:	08e8                	addi	a0,sp,92
   18928:	4290                	lw	a2,0(a3)
   1892a:	42cc                	lw	a1,4(a3)
   1892c:	820d                	srli	a2,a2,0x3
   1892e:	05f6                	slli	a1,a1,0x1d
   18930:	8e4d                	or	a2,a2,a1
   18932:	c290                	sw	a2,0(a3)
   18934:	0691                	addi	a3,a3,4
   18936:	fed519e3          	bne	a0,a3,18928 <__multf3+0x9b4>
   1893a:	6621                	lui	a2,0x8
   1893c:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   1893e:	46f6                	lw	a3,92(sp)
   18940:	65a1                	lui	a1,0x8
   18942:	04f64f63          	blt	a2,a5,189a0 <__multf3+0xa2c>
   18946:	828d                	srli	a3,a3,0x3
   18948:	ceb6                	sw	a3,92(sp)
   1894a:	4576                	lw	a0,92(sp)
   1894c:	073e                	slli	a4,a4,0xf
   1894e:	8f5d                	or	a4,a4,a5
   18950:	06a11623          	sh	a0,108(sp)
   18954:	06e11723          	sh	a4,110(sp)
   18958:	45c6                	lw	a1,80(sp)
   1895a:	4656                	lw	a2,84(sp)
   1895c:	46e6                	lw	a3,88(sp)
   1895e:	57b6                	lw	a5,108(sp)
   18960:	c019                	beqz	s0,18966 <__multf3+0x9f2>
   18962:	00142073          	csrs	fflags,s0
   18966:	4732                	lw	a4,12(sp)
   18968:	50fa                	lw	ra,188(sp)
   1896a:	546a                	lw	s0,184(sp)
   1896c:	c30c                	sw	a1,0(a4)
   1896e:	c350                	sw	a2,4(a4)
   18970:	c714                	sw	a3,8(a4)
   18972:	c75c                	sw	a5,12(a4)
   18974:	54da                	lw	s1,180(sp)
   18976:	594a                	lw	s2,176(sp)
   18978:	59ba                	lw	s3,172(sp)
   1897a:	5a2a                	lw	s4,168(sp)
   1897c:	5a9a                	lw	s5,164(sp)
   1897e:	5b0a                	lw	s6,160(sp)
   18980:	4bfa                	lw	s7,156(sp)
   18982:	4c6a                	lw	s8,152(sp)
   18984:	4cda                	lw	s9,148(sp)
   18986:	4d4a                	lw	s10,144(sp)
   18988:	4dba                	lw	s11,140(sp)
   1898a:	853a                	mv	a0,a4
   1898c:	6129                	addi	sp,sp,192
   1898e:	8082                	ret
   18990:	fb3d                	bnez	a4,18906 <__multf3+0x992>
   18992:	0621                	addi	a2,a2,8
   18994:	c8b2                	sw	a2,80(sp)
   18996:	00863613          	sltiu	a2,a2,8
   1899a:	bf99                	j	188f0 <__multf3+0x97c>
   1899c:	d72d                	beqz	a4,18906 <__multf3+0x992>
   1899e:	bfd5                	j	18992 <__multf3+0xa1e>
   189a0:	4789                	li	a5,2
   189a2:	02f48463          	beq	s1,a5,189ca <__multf3+0xa56>
   189a6:	478d                	li	a5,3
   189a8:	00f48763          	beq	s1,a5,189b6 <__multf3+0xa42>
   189ac:	e491                	bnez	s1,189b8 <__multf3+0xa44>
   189ae:	4681                	li	a3,0
   189b0:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   189b4:	a021                	j	189bc <__multf3+0xa48>
   189b6:	df65                	beqz	a4,189ae <__multf3+0xa3a>
   189b8:	56fd                	li	a3,-1
   189ba:	87b2                	mv	a5,a2
   189bc:	ceb6                	sw	a3,92(sp)
   189be:	ccb6                	sw	a3,88(sp)
   189c0:	cab6                	sw	a3,84(sp)
   189c2:	c8b6                	sw	a3,80(sp)
   189c4:	00546413          	ori	s0,s0,5
   189c8:	b749                	j	1894a <__multf3+0x9d6>
   189ca:	f375                	bnez	a4,189ae <__multf3+0xa3a>
   189cc:	b7f5                	j	189b8 <__multf3+0xa44>
   189ce:	4685                	li	a3,1
   189d0:	ebb9                	bnez	a5,18a26 <__multf3+0xab2>
   189d2:	4646                	lw	a2,80(sp)
   189d4:	46f6                	lw	a3,92(sp)
   189d6:	00767593          	andi	a1,a2,7
   189da:	c1b1                	beqz	a1,18a1e <__multf3+0xaaa>
   189dc:	4809                	li	a6,2
   189de:	45d6                	lw	a1,84(sp)
   189e0:	4566                	lw	a0,88(sp)
   189e2:	00146413          	ori	s0,s0,1
   189e6:	03048b63          	beq	s1,a6,18a1c <__multf3+0xaa8>
   189ea:	480d                	li	a6,3
   189ec:	03048363          	beq	s1,a6,18a12 <__multf3+0xa9e>
   189f0:	e49d                	bnez	s1,18a1e <__multf3+0xaaa>
   189f2:	00f67813          	andi	a6,a2,15
   189f6:	4891                	li	a7,4
   189f8:	03180363          	beq	a6,a7,18a1e <__multf3+0xaaa>
   189fc:	0611                	addi	a2,a2,4
   189fe:	00463613          	sltiu	a2,a2,4
   18a02:	95b2                	add	a1,a1,a2
   18a04:	00c5b5b3          	sltu	a1,a1,a2
   18a08:	952e                	add	a0,a0,a1
   18a0a:	00b53533          	sltu	a0,a0,a1
   18a0e:	96aa                	add	a3,a3,a0
   18a10:	a039                	j	18a1e <__multf3+0xaaa>
   18a12:	e711                	bnez	a4,18a1e <__multf3+0xaaa>
   18a14:	0621                	addi	a2,a2,8
   18a16:	00863613          	sltiu	a2,a2,8
   18a1a:	b7e5                	j	18a02 <__multf3+0xa8e>
   18a1c:	ff65                	bnez	a4,18a14 <__multf3+0xaa0>
   18a1e:	82d1                	srli	a3,a3,0x14
   18a20:	0016c693          	xori	a3,a3,1
   18a24:	8a85                	andi	a3,a3,1
   18a26:	4605                	li	a2,1
   18a28:	40f607b3          	sub	a5,a2,a5
   18a2c:	07400593          	li	a1,116
   18a30:	18f5c163          	blt	a1,a5,18bb2 <__multf3+0xc3e>
   18a34:	0890                	addi	a2,sp,80
   18a36:	4057d593          	srai	a1,a5,0x5
   18a3a:	01f7f513          	andi	a0,a5,31
   18a3e:	88b2                	mv	a7,a2
   18a40:	4781                	li	a5,0
   18a42:	4801                	li	a6,0
   18a44:	02b81763          	bne	a6,a1,18a72 <__multf3+0xafe>
   18a48:	480d                	li	a6,3
   18a4a:	40b80833          	sub	a6,a6,a1
   18a4e:	00259893          	slli	a7,a1,0x2
   18a52:	e51d                	bnez	a0,18a80 <__multf3+0xb0c>
   18a54:	8332                	mv	t1,a2
   18a56:	01130e33          	add	t3,t1,a7
   18a5a:	000e2e03          	lw	t3,0(t3)
   18a5e:	0505                	addi	a0,a0,1
   18a60:	0311                	addi	t1,t1,4
   18a62:	ffc32e23          	sw	t3,-4(t1)
   18a66:	fea858e3          	bge	a6,a0,18a56 <__multf3+0xae2>
   18a6a:	4511                	li	a0,4
   18a6c:	40b505b3          	sub	a1,a0,a1
   18a70:	a8a1                	j	18ac8 <__multf3+0xb54>
   18a72:	0008a303          	lw	t1,0(a7)
   18a76:	0805                	addi	a6,a6,1
   18a78:	0891                	addi	a7,a7,4
   18a7a:	0067e7b3          	or	a5,a5,t1
   18a7e:	b7d9                	j	18a44 <__multf3+0xad0>
   18a80:	05088313          	addi	t1,a7,80
   18a84:	03010e13          	addi	t3,sp,48
   18a88:	9372                	add	t1,t1,t3
   18a8a:	fd032303          	lw	t1,-48(t1)
   18a8e:	02000e93          	li	t4,32
   18a92:	40ae8eb3          	sub	t4,t4,a0
   18a96:	01d31333          	sll	t1,t1,t4
   18a9a:	0067e7b3          	or	a5,a5,t1
   18a9e:	4f01                	li	t5,0
   18aa0:	01160333          	add	t1,a2,a7
   18aa4:	411008b3          	neg	a7,a7
   18aa8:	0b0f4d63          	blt	t5,a6,18b62 <__multf3+0xbee>
   18aac:	4891                	li	a7,4
   18aae:	080a                	slli	a6,a6,0x2
   18ab0:	40b885b3          	sub	a1,a7,a1
   18ab4:	05080813          	addi	a6,a6,80
   18ab8:	03010893          	addi	a7,sp,48
   18abc:	9846                	add	a6,a6,a7
   18abe:	48f6                	lw	a7,92(sp)
   18ac0:	00a8d533          	srl	a0,a7,a0
   18ac4:	fca82823          	sw	a0,-48(a6)
   18ac8:	4511                	li	a0,4
   18aca:	8d0d                	sub	a0,a0,a1
   18acc:	050a                	slli	a0,a0,0x2
   18ace:	058a                	slli	a1,a1,0x2
   18ad0:	4821                	li	a6,8
   18ad2:	95b2                	add	a1,a1,a2
   18ad4:	01056863          	bltu	a0,a6,18ae4 <__multf3+0xb70>
   18ad8:	0005a023          	sw	zero,0(a1)
   18adc:	0005a223          	sw	zero,4(a1)
   18ae0:	1561                	addi	a0,a0,-8
   18ae2:	05a1                	addi	a1,a1,8
   18ae4:	4811                	li	a6,4
   18ae6:	01056463          	bltu	a0,a6,18aee <__multf3+0xb7a>
   18aea:	0005a023          	sw	zero,0(a1)
   18aee:	45c6                	lw	a1,80(sp)
   18af0:	00f037b3          	snez	a5,a5
   18af4:	8fcd                	or	a5,a5,a1
   18af6:	c8be                	sw	a5,80(sp)
   18af8:	0077f593          	andi	a1,a5,7
   18afc:	c1a1                	beqz	a1,18b3c <__multf3+0xbc8>
   18afe:	4509                	li	a0,2
   18b00:	45f6                	lw	a1,92(sp)
   18b02:	08a48763          	beq	s1,a0,18b90 <__multf3+0xc1c>
   18b06:	450d                	li	a0,3
   18b08:	06a48e63          	beq	s1,a0,18b84 <__multf3+0xc10>
   18b0c:	e495                	bnez	s1,18b38 <__multf3+0xbc4>
   18b0e:	00f7f513          	andi	a0,a5,15
   18b12:	4811                	li	a6,4
   18b14:	03050263          	beq	a0,a6,18b38 <__multf3+0xbc4>
   18b18:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   18b1a:	c8be                	sw	a5,80(sp)
   18b1c:	0047b793          	sltiu	a5,a5,4
   18b20:	4556                	lw	a0,84(sp)
   18b22:	97aa                	add	a5,a5,a0
   18b24:	cabe                	sw	a5,84(sp)
   18b26:	00a7b7b3          	sltu	a5,a5,a0
   18b2a:	4566                	lw	a0,88(sp)
   18b2c:	97aa                	add	a5,a5,a0
   18b2e:	ccbe                	sw	a5,88(sp)
   18b30:	00a7b7b3          	sltu	a5,a5,a0
   18b34:	97ae                	add	a5,a5,a1
   18b36:	cebe                	sw	a5,92(sp)
   18b38:	00146413          	ori	s0,s0,1
   18b3c:	45f6                	lw	a1,92(sp)
   18b3e:	00c59793          	slli	a5,a1,0xc
   18b42:	0407d963          	bgez	a5,18b94 <__multf3+0xc20>
   18b46:	ce82                	sw	zero,92(sp)
   18b48:	cc82                	sw	zero,88(sp)
   18b4a:	ca82                	sw	zero,84(sp)
   18b4c:	c882                	sw	zero,80(sp)
   18b4e:	00146413          	ori	s0,s0,1
   18b52:	4785                	li	a5,1
   18b54:	de068be3          	beqz	a3,1894a <__multf3+0x9d6>
   18b58:	00147693          	andi	a3,s0,1
   18b5c:	0686                	slli	a3,a3,0x1
   18b5e:	8c55                	or	s0,s0,a3
   18b60:	b3ed                	j	1894a <__multf3+0x9d6>
   18b62:	00032e03          	lw	t3,0(t1)
   18b66:	00432f83          	lw	t6,4(t1)
   18b6a:	011302b3          	add	t0,t1,a7
   18b6e:	00ae5e33          	srl	t3,t3,a0
   18b72:	01df9fb3          	sll	t6,t6,t4
   18b76:	01fe6e33          	or	t3,t3,t6
   18b7a:	01c2a023          	sw	t3,0(t0)
   18b7e:	0f05                	addi	t5,t5,1
   18b80:	0311                	addi	t1,t1,4
   18b82:	b71d                	j	18aa8 <__multf3+0xb34>
   18b84:	fb55                	bnez	a4,18b38 <__multf3+0xbc4>
   18b86:	07a1                	addi	a5,a5,8
   18b88:	c8be                	sw	a5,80(sp)
   18b8a:	0087b793          	sltiu	a5,a5,8
   18b8e:	bf49                	j	18b20 <__multf3+0xbac>
   18b90:	d745                	beqz	a4,18b38 <__multf3+0xbc4>
   18b92:	bfd5                	j	18b86 <__multf3+0xc12>
   18b94:	00c60813          	addi	a6,a2,12
   18b98:	421c                	lw	a5,0(a2)
   18b9a:	4248                	lw	a0,4(a2)
   18b9c:	838d                	srli	a5,a5,0x3
   18b9e:	0576                	slli	a0,a0,0x1d
   18ba0:	8fc9                	or	a5,a5,a0
   18ba2:	c21c                	sw	a5,0(a2)
   18ba4:	0611                	addi	a2,a2,4
   18ba6:	fec819e3          	bne	a6,a2,18b98 <__multf3+0xc24>
   18baa:	818d                	srli	a1,a1,0x3
   18bac:	ceae                	sw	a1,92(sp)
   18bae:	4781                	li	a5,0
   18bb0:	b755                	j	18b54 <__multf3+0xbe0>
   18bb2:	46d6                	lw	a3,84(sp)
   18bb4:	47c6                	lw	a5,80(sp)
   18bb6:	8fd5                	or	a5,a5,a3
   18bb8:	46e6                	lw	a3,88(sp)
   18bba:	8fd5                	or	a5,a5,a3
   18bbc:	46f6                	lw	a3,92(sp)
   18bbe:	8fd5                	or	a5,a5,a3
   18bc0:	c395                	beqz	a5,18be4 <__multf3+0xc70>
   18bc2:	ce82                	sw	zero,92(sp)
   18bc4:	cc82                	sw	zero,88(sp)
   18bc6:	ca82                	sw	zero,84(sp)
   18bc8:	c8b2                	sw	a2,80(sp)
   18bca:	4789                	li	a5,2
   18bcc:	00146413          	ori	s0,s0,1
   18bd0:	02f48263          	beq	s1,a5,18bf4 <__multf3+0xc80>
   18bd4:	478d                	li	a5,3
   18bd6:	00f48b63          	beq	s1,a5,18bec <__multf3+0xc78>
   18bda:	4795                	li	a5,5
   18bdc:	c891                	beqz	s1,18bf0 <__multf3+0xc7c>
   18bde:	47c6                	lw	a5,80(sp)
   18be0:	838d                	srli	a5,a5,0x3
   18be2:	c8be                	sw	a5,80(sp)
   18be4:	00246413          	ori	s0,s0,2
   18be8:	4781                	li	a5,0
   18bea:	b385                	j	1894a <__multf3+0x9d6>
   18bec:	fb6d                	bnez	a4,18bde <__multf3+0xc6a>
   18bee:	47a5                	li	a5,9
   18bf0:	c8be                	sw	a5,80(sp)
   18bf2:	b7f5                	j	18bde <__multf3+0xc6a>
   18bf4:	ff6d                	bnez	a4,18bee <__multf3+0xc7a>
   18bf6:	b7e5                	j	18bde <__multf3+0xc6a>
   18bf8:	ce82                	sw	zero,92(sp)
   18bfa:	cc82                	sw	zero,88(sp)
   18bfc:	ca82                	sw	zero,84(sp)
   18bfe:	c882                	sw	zero,80(sp)
   18c00:	b7e5                	j	18be8 <__multf3+0xc74>
   18c02:	67a1                	lui	a5,0x8
   18c04:	ce82                	sw	zero,92(sp)
   18c06:	cc82                	sw	zero,88(sp)
   18c08:	ca82                	sw	zero,84(sp)
   18c0a:	c882                	sw	zero,80(sp)
   18c0c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18c0e:	bb35                	j	1894a <__multf3+0x9d6>

00018c10 <__subtf3>:
   18c10:	7159                	addi	sp,sp,-112
   18c12:	d2a6                	sw	s1,100(sp)
   18c14:	d0ca                	sw	s2,96(sp)
   18c16:	cece                	sw	s3,92(sp)
   18c18:	c2e6                	sw	s9,68(sp)
   18c1a:	d686                	sw	ra,108(sp)
   18c1c:	d4a2                	sw	s0,104(sp)
   18c1e:	ccd2                	sw	s4,88(sp)
   18c20:	cad6                	sw	s5,84(sp)
   18c22:	c8da                	sw	s6,80(sp)
   18c24:	c6de                	sw	s7,76(sp)
   18c26:	c4e2                	sw	s8,72(sp)
   18c28:	892a                	mv	s2,a0
   18c2a:	4198                	lw	a4,0(a1)
   18c2c:	41d4                	lw	a3,4(a1)
   18c2e:	459c                	lw	a5,8(a1)
   18c30:	00c5a983          	lw	s3,12(a1)
   18c34:	4204                	lw	s1,0(a2)
   18c36:	00462883          	lw	a7,4(a2)
   18c3a:	00862803          	lw	a6,8(a2)
   18c3e:	00c62c83          	lw	s9,12(a2)
   18c42:	00202a73          	frrm	s4
   18c46:	dc3e                	sw	a5,56(sp)
   18c48:	c43e                	sw	a5,8(sp)
   18c4a:	01099793          	slli	a5,s3,0x10
   18c4e:	83c1                	srli	a5,a5,0x10
   18c50:	00199413          	slli	s0,s3,0x1
   18c54:	858a                	mv	a1,sp
   18c56:	de4e                	sw	s3,60(sp)
   18c58:	c63e                	sw	a5,12(sp)
   18c5a:	d83a                	sw	a4,48(sp)
   18c5c:	da36                	sw	a3,52(sp)
   18c5e:	c03a                	sw	a4,0(sp)
   18c60:	c236                	sw	a3,4(sp)
   18c62:	8045                	srli	s0,s0,0x11
   18c64:	01f9d993          	srli	s3,s3,0x1f
   18c68:	ff410313          	addi	t1,sp,-12
   18c6c:	87ae                	mv	a5,a1
   18c6e:	852e                	mv	a0,a1
   18c70:	47d4                	lw	a3,12(a5)
   18c72:	4790                	lw	a2,8(a5)
   18c74:	17f1                	addi	a5,a5,-4
   18c76:	068e                	slli	a3,a3,0x3
   18c78:	8275                	srli	a2,a2,0x1d
   18c7a:	8ed1                	or	a3,a3,a2
   18c7c:	cb94                	sw	a3,16(a5)
   18c7e:	fef319e3          	bne	t1,a5,18c70 <__subtf3+0x60>
   18c82:	010c9793          	slli	a5,s9,0x10
   18c86:	83c1                	srli	a5,a5,0x10
   18c88:	001c9a93          	slli	s5,s9,0x1
   18c8c:	070e                	slli	a4,a4,0x3
   18c8e:	dc42                	sw	a6,56(sp)
   18c90:	cc42                	sw	a6,24(sp)
   18c92:	01010813          	addi	a6,sp,16
   18c96:	da46                	sw	a7,52(sp)
   18c98:	de66                	sw	s9,60(sp)
   18c9a:	ca46                	sw	a7,20(sp)
   18c9c:	ce3e                	sw	a5,28(sp)
   18c9e:	c03a                	sw	a4,0(sp)
   18ca0:	d826                	sw	s1,48(sp)
   18ca2:	c826                	sw	s1,16(sp)
   18ca4:	011ada93          	srli	s5,s5,0x11
   18ca8:	01fcdc93          	srli	s9,s9,0x1f
   18cac:	00410893          	addi	a7,sp,4
   18cb0:	87c2                	mv	a5,a6
   18cb2:	8e42                	mv	t3,a6
   18cb4:	47d4                	lw	a3,12(a5)
   18cb6:	4790                	lw	a2,8(a5)
   18cb8:	17f1                	addi	a5,a5,-4
   18cba:	068e                	slli	a3,a3,0x3
   18cbc:	8275                	srli	a2,a2,0x1d
   18cbe:	8ed1                	or	a3,a3,a2
   18cc0:	cb94                	sw	a3,16(a5)
   18cc2:	fef899e3          	bne	a7,a5,18cb4 <__subtf3+0xa4>
   18cc6:	048e                	slli	s1,s1,0x3
   18cc8:	67a1                	lui	a5,0x8
   18cca:	c826                	sw	s1,16(sp)
   18ccc:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18cce:	00fa9963          	bne	s5,a5,18ce0 <__subtf3+0xd0>
   18cd2:	46e2                	lw	a3,24(sp)
   18cd4:	47d2                	lw	a5,20(sp)
   18cd6:	8fd5                	or	a5,a5,a3
   18cd8:	46f2                	lw	a3,28(sp)
   18cda:	8fd5                	or	a5,a5,a3
   18cdc:	8fc5                	or	a5,a5,s1
   18cde:	e399                	bnez	a5,18ce4 <__subtf3+0xd4>
   18ce0:	001ccc93          	xori	s9,s9,1
   18ce4:	415407b3          	sub	a5,s0,s5
   18ce8:	5d3c9c63          	bne	s9,s3,192c0 <__subtf3+0x6b0>
   18cec:	24f05963          	blez	a5,18f3e <__subtf3+0x32e>
   18cf0:	4312                	lw	t1,4(sp)
   18cf2:	48a2                	lw	a7,8(sp)
   18cf4:	45b2                	lw	a1,12(sp)
   18cf6:	080a9963          	bnez	s5,18d88 <__subtf3+0x178>
   18cfa:	4552                	lw	a0,20(sp)
   18cfc:	46e2                	lw	a3,24(sp)
   18cfe:	4ef2                	lw	t4,28(sp)
   18d00:	00d56633          	or	a2,a0,a3
   18d04:	01d66633          	or	a2,a2,t4
   18d08:	8e45                	or	a2,a2,s1
   18d0a:	e61d                	bnez	a2,18d38 <__subtf3+0x128>
   18d0c:	66a1                	lui	a3,0x8
   18d0e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18d10:	00d79e63          	bne	a5,a3,18d2c <__subtf3+0x11c>
   18d14:	011366b3          	or	a3,t1,a7
   18d18:	8ecd                	or	a3,a3,a1
   18d1a:	8ed9                	or	a3,a3,a4
   18d1c:	ca81                	beqz	a3,18d2c <__subtf3+0x11c>
   18d1e:	0125da93          	srli	s5,a1,0x12
   18d22:	001aca93          	xori	s5,s5,1
   18d26:	001afa93          	andi	s5,s5,1
   18d2a:	0a92                	slli	s5,s5,0x4
   18d2c:	d03a                	sw	a4,32(sp)
   18d2e:	d21a                	sw	t1,36(sp)
   18d30:	d446                	sw	a7,40(sp)
   18d32:	d62e                	sw	a1,44(sp)
   18d34:	8456                	mv	s0,s5
   18d36:	ac99                	j	18f8c <__subtf3+0x37c>
   18d38:	fff78613          	addi	a2,a5,-1
   18d3c:	ea0d                	bnez	a2,18d6e <__subtf3+0x15e>
   18d3e:	94ba                	add	s1,s1,a4
   18d40:	932a                	add	t1,t1,a0
   18d42:	d026                	sw	s1,32(sp)
   18d44:	00e4b4b3          	sltu	s1,s1,a4
   18d48:	949a                	add	s1,s1,t1
   18d4a:	d226                	sw	s1,36(sp)
   18d4c:	00a33533          	sltu	a0,t1,a0
   18d50:	0064b4b3          	sltu	s1,s1,t1
   18d54:	98b6                	add	a7,a7,a3
   18d56:	8d45                	or	a0,a0,s1
   18d58:	9546                	add	a0,a0,a7
   18d5a:	d42a                	sw	a0,40(sp)
   18d5c:	00d8b733          	sltu	a4,a7,a3
   18d60:	01153533          	sltu	a0,a0,a7
   18d64:	8f49                	or	a4,a4,a0
   18d66:	9eae                	add	t4,t4,a1
   18d68:	9776                	add	a4,a4,t4
   18d6a:	4785                	li	a5,1
   18d6c:	a299                	j	18eb2 <__subtf3+0x2a2>
   18d6e:	66a1                	lui	a3,0x8
   18d70:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18d72:	fad781e3          	beq	a5,a3,18d14 <__subtf3+0x104>
   18d76:	07400793          	li	a5,116
   18d7a:	04c7d863          	bge	a5,a2,18dca <__subtf3+0x1ba>
   18d7e:	ce02                	sw	zero,28(sp)
   18d80:	cc02                	sw	zero,24(sp)
   18d82:	ca02                	sw	zero,20(sp)
   18d84:	4785                	li	a5,1
   18d86:	a8dd                	j	18e7c <__subtf3+0x26c>
   18d88:	66a1                	lui	a3,0x8
   18d8a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18d8c:	02d41563          	bne	s0,a3,18db6 <__subtf3+0x1a6>
   18d90:	011367b3          	or	a5,t1,a7
   18d94:	8fcd                	or	a5,a5,a1
   18d96:	8fd9                	or	a5,a5,a4
   18d98:	4681                	li	a3,0
   18d9a:	c799                	beqz	a5,18da8 <__subtf3+0x198>
   18d9c:	0125d693          	srli	a3,a1,0x12
   18da0:	0016c693          	xori	a3,a3,1
   18da4:	8a85                	andi	a3,a3,1
   18da6:	0692                	slli	a3,a3,0x4
   18da8:	d03a                	sw	a4,32(sp)
   18daa:	d21a                	sw	t1,36(sp)
   18dac:	d446                	sw	a7,40(sp)
   18dae:	d62e                	sw	a1,44(sp)
   18db0:	87a2                	mv	a5,s0
   18db2:	8436                	mv	s0,a3
   18db4:	aae1                	j	18f8c <__subtf3+0x37c>
   18db6:	46f2                	lw	a3,28(sp)
   18db8:	00080637          	lui	a2,0x80
   18dbc:	8ed1                	or	a3,a3,a2
   18dbe:	ce36                	sw	a3,28(sp)
   18dc0:	07400693          	li	a3,116
   18dc4:	faf6cde3          	blt	a3,a5,18d7e <__subtf3+0x16e>
   18dc8:	863e                	mv	a2,a5
   18dca:	40565693          	srai	a3,a2,0x5
   18dce:	8ec2                	mv	t4,a6
   18dd0:	8a7d                	andi	a2,a2,31
   18dd2:	4781                	li	a5,0
   18dd4:	4501                	li	a0,0
   18dd6:	02d51563          	bne	a0,a3,18e00 <__subtf3+0x1f0>
   18dda:	450d                	li	a0,3
   18ddc:	8d15                	sub	a0,a0,a3
   18dde:	00269e93          	slli	t4,a3,0x2
   18de2:	e615                	bnez	a2,18e0e <__subtf3+0x1fe>
   18de4:	01d80f33          	add	t5,a6,t4
   18de8:	000f2f03          	lw	t5,0(t5)
   18dec:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   18dee:	0811                	addi	a6,a6,4
   18df0:	ffe82e23          	sw	t5,-4(a6)
   18df4:	fec558e3          	bge	a0,a2,18de4 <__subtf3+0x1d4>
   18df8:	4611                	li	a2,4
   18dfa:	40d606b3          	sub	a3,a2,a3
   18dfe:	a881                	j	18e4e <__subtf3+0x23e>
   18e00:	000eaf03          	lw	t5,0(t4)
   18e04:	0505                	addi	a0,a0,1
   18e06:	0e91                	addi	t4,t4,4
   18e08:	01e7e7b3          	or	a5,a5,t5
   18e0c:	b7e9                	j	18dd6 <__subtf3+0x1c6>
   18e0e:	040e8493          	addi	s1,t4,64
   18e12:	00248f33          	add	t5,s1,sp
   18e16:	fd0f2f03          	lw	t5,-48(t5)
   18e1a:	02000393          	li	t2,32
   18e1e:	40c383b3          	sub	t2,t2,a2
   18e22:	007f1f33          	sll	t5,t5,t2
   18e26:	9876                	add	a6,a6,t4
   18e28:	01e7e7b3          	or	a5,a5,t5
   18e2c:	41d00eb3          	neg	t4,t4
   18e30:	4f81                	li	t6,0
   18e32:	0eafc563          	blt	t6,a0,18f1c <__subtf3+0x30c>
   18e36:	4811                	li	a6,4
   18e38:	40d806b3          	sub	a3,a6,a3
   18e3c:	4872                	lw	a6,28(sp)
   18e3e:	050a                	slli	a0,a0,0x2
   18e40:	04050513          	addi	a0,a0,64
   18e44:	950a                	add	a0,a0,sp
   18e46:	00c85633          	srl	a2,a6,a2
   18e4a:	fcc52823          	sw	a2,-48(a0)
   18e4e:	4611                	li	a2,4
   18e50:	8e15                	sub	a2,a2,a3
   18e52:	060a                	slli	a2,a2,0x2
   18e54:	068a                	slli	a3,a3,0x2
   18e56:	4521                	li	a0,8
   18e58:	96f2                	add	a3,a3,t3
   18e5a:	00a66863          	bltu	a2,a0,18e6a <__subtf3+0x25a>
   18e5e:	0006a023          	sw	zero,0(a3)
   18e62:	0006a223          	sw	zero,4(a3)
   18e66:	1661                	addi	a2,a2,-8
   18e68:	06a1                	addi	a3,a3,8
   18e6a:	4511                	li	a0,4
   18e6c:	00a66463          	bltu	a2,a0,18e74 <__subtf3+0x264>
   18e70:	0006a023          	sw	zero,0(a3)
   18e74:	46c2                	lw	a3,16(sp)
   18e76:	00f037b3          	snez	a5,a5
   18e7a:	8fd5                	or	a5,a5,a3
   18e7c:	46d2                	lw	a3,20(sp)
   18e7e:	c83e                	sw	a5,16(sp)
   18e80:	97ba                	add	a5,a5,a4
   18e82:	9336                	add	t1,t1,a3
   18e84:	d03e                	sw	a5,32(sp)
   18e86:	00e7b7b3          	sltu	a5,a5,a4
   18e8a:	4762                	lw	a4,24(sp)
   18e8c:	979a                	add	a5,a5,t1
   18e8e:	d23e                	sw	a5,36(sp)
   18e90:	00d336b3          	sltu	a3,t1,a3
   18e94:	0067b7b3          	sltu	a5,a5,t1
   18e98:	98ba                	add	a7,a7,a4
   18e9a:	8fd5                	or	a5,a5,a3
   18e9c:	97c6                	add	a5,a5,a7
   18e9e:	d43e                	sw	a5,40(sp)
   18ea0:	00e8b733          	sltu	a4,a7,a4
   18ea4:	0117b7b3          	sltu	a5,a5,a7
   18ea8:	8f5d                	or	a4,a4,a5
   18eaa:	47f2                	lw	a5,28(sp)
   18eac:	97ae                	add	a5,a5,a1
   18eae:	973e                	add	a4,a4,a5
   18eb0:	87a2                	mv	a5,s0
   18eb2:	d63a                	sw	a4,44(sp)
   18eb4:	00c71693          	slli	a3,a4,0xc
   18eb8:	4401                	li	s0,0
   18eba:	0c06d963          	bgez	a3,18f8c <__subtf3+0x37c>
   18ebe:	5602                	lw	a2,32(sp)
   18ec0:	fff806b7          	lui	a3,0xfff80
   18ec4:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   18ec6:	8f75                	and	a4,a4,a3
   18ec8:	d63a                	sw	a4,44(sp)
   18eca:	0785                	addi	a5,a5,1
   18ecc:	067e                	slli	a2,a2,0x1f
   18ece:	1014                	addi	a3,sp,32
   18ed0:	02c10813          	addi	a6,sp,44
   18ed4:	428c                	lw	a1,0(a3)
   18ed6:	42c8                	lw	a0,4(a3)
   18ed8:	8185                	srli	a1,a1,0x1
   18eda:	057e                	slli	a0,a0,0x1f
   18edc:	8dc9                	or	a1,a1,a0
   18ede:	c28c                	sw	a1,0(a3)
   18ee0:	0691                	addi	a3,a3,4
   18ee2:	fed819e3          	bne	a6,a3,18ed4 <__subtf3+0x2c4>
   18ee6:	5682                	lw	a3,32(sp)
   18ee8:	8305                	srli	a4,a4,0x1
   18eea:	d63a                	sw	a4,44(sp)
   18eec:	00c03733          	snez	a4,a2
   18ef0:	8f55                	or	a4,a4,a3
   18ef2:	d03a                	sw	a4,32(sp)
   18ef4:	6721                	lui	a4,0x8
   18ef6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18ef8:	4401                	li	s0,0
   18efa:	08e79963          	bne	a5,a4,18f8c <__subtf3+0x37c>
   18efe:	3a0a0963          	beqz	s4,192b0 <__subtf3+0x6a0>
   18f02:	478d                	li	a5,3
   18f04:	3afa1163          	bne	s4,a5,192a6 <__subtf3+0x696>
   18f08:	3a098463          	beqz	s3,192b0 <__subtf3+0x6a0>
   18f0c:	57fd                	li	a5,-1
   18f0e:	d63e                	sw	a5,44(sp)
   18f10:	d43e                	sw	a5,40(sp)
   18f12:	d23e                	sw	a5,36(sp)
   18f14:	d03e                	sw	a5,32(sp)
   18f16:	67a1                	lui	a5,0x8
   18f18:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   18f1a:	a64d                	j	192bc <__subtf3+0x6ac>
   18f1c:	00082f03          	lw	t5,0(a6)
   18f20:	00482283          	lw	t0,4(a6)
   18f24:	01d804b3          	add	s1,a6,t4
   18f28:	00cf5f33          	srl	t5,t5,a2
   18f2c:	007292b3          	sll	t0,t0,t2
   18f30:	005f6f33          	or	t5,t5,t0
   18f34:	01e4a023          	sw	t5,0(s1)
   18f38:	0f85                	addi	t6,t6,1
   18f3a:	0811                	addi	a6,a6,4
   18f3c:	bddd                	j	18e32 <__subtf3+0x222>
   18f3e:	4bd2                	lw	s7,20(sp)
   18f40:	4c62                	lw	s8,24(sp)
   18f42:	4b72                	lw	s6,28(sp)
   18f44:	1e078363          	beqz	a5,1912a <__subtf3+0x51a>
   18f48:	408a87b3          	sub	a5,s5,s0
   18f4c:	e859                	bnez	s0,18fe2 <__subtf3+0x3d2>
   18f4e:	4612                	lw	a2,4(sp)
   18f50:	46a2                	lw	a3,8(sp)
   18f52:	48b2                	lw	a7,12(sp)
   18f54:	00d66833          	or	a6,a2,a3
   18f58:	01186833          	or	a6,a6,a7
   18f5c:	00e86833          	or	a6,a6,a4
   18f60:	02081963          	bnez	a6,18f92 <__subtf3+0x382>
   18f64:	6721                	lui	a4,0x8
   18f66:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18f68:	00e79e63          	bne	a5,a4,18f84 <__subtf3+0x374>
   18f6c:	018be733          	or	a4,s7,s8
   18f70:	01676733          	or	a4,a4,s6
   18f74:	8f45                	or	a4,a4,s1
   18f76:	c719                	beqz	a4,18f84 <__subtf3+0x374>
   18f78:	012b5413          	srli	s0,s6,0x12
   18f7c:	00144413          	xori	s0,s0,1
   18f80:	8805                	andi	s0,s0,1
   18f82:	0412                	slli	s0,s0,0x4
   18f84:	d026                	sw	s1,32(sp)
   18f86:	d25e                	sw	s7,36(sp)
   18f88:	d462                	sw	s8,40(sp)
   18f8a:	d65a                	sw	s6,44(sp)
   18f8c:	4681                	li	a3,0
   18f8e:	3fb0006f          	j	19b88 <__subtf3+0xf78>
   18f92:	fff78813          	addi	a6,a5,-1
   18f96:	02081963          	bnez	a6,18fc8 <__subtf3+0x3b8>
   18f9a:	94ba                	add	s1,s1,a4
   18f9c:	9bb2                	add	s7,s7,a2
   18f9e:	d026                	sw	s1,32(sp)
   18fa0:	00e4b4b3          	sltu	s1,s1,a4
   18fa4:	94de                	add	s1,s1,s7
   18fa6:	d226                	sw	s1,36(sp)
   18fa8:	00cbb633          	sltu	a2,s7,a2
   18fac:	0174b4b3          	sltu	s1,s1,s7
   18fb0:	9c36                	add	s8,s8,a3
   18fb2:	8e45                	or	a2,a2,s1
   18fb4:	9662                	add	a2,a2,s8
   18fb6:	d432                	sw	a2,40(sp)
   18fb8:	00dc3733          	sltu	a4,s8,a3
   18fbc:	01863633          	sltu	a2,a2,s8
   18fc0:	8f51                	or	a4,a4,a2
   18fc2:	98da                	add	a7,a7,s6
   18fc4:	9746                	add	a4,a4,a7
   18fc6:	b355                	j	18d6a <__subtf3+0x15a>
   18fc8:	6721                	lui	a4,0x8
   18fca:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18fcc:	fae780e3          	beq	a5,a4,18f6c <__subtf3+0x35c>
   18fd0:	07400793          	li	a5,116
   18fd4:	0507d863          	bge	a5,a6,19024 <__subtf3+0x414>
   18fd8:	c602                	sw	zero,12(sp)
   18fda:	c402                	sw	zero,8(sp)
   18fdc:	c202                	sw	zero,4(sp)
   18fde:	4785                	li	a5,1
   18fe0:	a8cd                	j	190d2 <__subtf3+0x4c2>
   18fe2:	6721                	lui	a4,0x8
   18fe4:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18fe6:	02ea9563          	bne	s5,a4,19010 <__subtf3+0x400>
   18fea:	018be7b3          	or	a5,s7,s8
   18fee:	0167e7b3          	or	a5,a5,s6
   18ff2:	8fc5                	or	a5,a5,s1
   18ff4:	4401                	li	s0,0
   18ff6:	c799                	beqz	a5,19004 <__subtf3+0x3f4>
   18ff8:	012b5413          	srli	s0,s6,0x12
   18ffc:	00144413          	xori	s0,s0,1
   19000:	8805                	andi	s0,s0,1
   19002:	0412                	slli	s0,s0,0x4
   19004:	d026                	sw	s1,32(sp)
   19006:	d25e                	sw	s7,36(sp)
   19008:	d462                	sw	s8,40(sp)
   1900a:	d65a                	sw	s6,44(sp)
   1900c:	87d6                	mv	a5,s5
   1900e:	bfbd                	j	18f8c <__subtf3+0x37c>
   19010:	4732                	lw	a4,12(sp)
   19012:	000806b7          	lui	a3,0x80
   19016:	8f55                	or	a4,a4,a3
   19018:	c63a                	sw	a4,12(sp)
   1901a:	07400713          	li	a4,116
   1901e:	faf74de3          	blt	a4,a5,18fd8 <__subtf3+0x3c8>
   19022:	883e                	mv	a6,a5
   19024:	02000713          	li	a4,32
   19028:	02e84733          	div	a4,a6,a4
   1902c:	86ae                	mv	a3,a1
   1902e:	4401                	li	s0,0
   19030:	4781                	li	a5,0
   19032:	02e7c663          	blt	a5,a4,1905e <__subtf3+0x44e>
   19036:	478d                	li	a5,3
   19038:	01f87893          	andi	a7,a6,31
   1903c:	8f99                	sub	a5,a5,a4
   1903e:	00271613          	slli	a2,a4,0x2
   19042:	02089363          	bnez	a7,19068 <__subtf3+0x458>
   19046:	00c586b3          	add	a3,a1,a2
   1904a:	4294                	lw	a3,0(a3)
   1904c:	0885                	addi	a7,a7,1
   1904e:	c194                	sw	a3,0(a1)
   19050:	0591                	addi	a1,a1,4
   19052:	ff17dae3          	bge	a5,a7,19046 <__subtf3+0x436>
   19056:	4791                	li	a5,4
   19058:	40e78733          	sub	a4,a5,a4
   1905c:	a899                	j	190b2 <__subtf3+0x4a2>
   1905e:	4290                	lw	a2,0(a3)
   19060:	0785                	addi	a5,a5,1
   19062:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   19064:	8c51                	or	s0,s0,a2
   19066:	b7f1                	j	19032 <__subtf3+0x422>
   19068:	02000693          	li	a3,32
   1906c:	02d86833          	rem	a6,a6,a3
   19070:	41068833          	sub	a6,a3,a6
   19074:	86ba                	mv	a3,a4
   19076:	00075363          	bgez	a4,1907c <__subtf3+0x46c>
   1907a:	4681                	li	a3,0
   1907c:	068a                	slli	a3,a3,0x2
   1907e:	04068693          	addi	a3,a3,64
   19082:	968a                	add	a3,a3,sp
   19084:	fc06a683          	lw	a3,-64(a3)
   19088:	95b2                	add	a1,a1,a2
   1908a:	4301                	li	t1,0
   1908c:	010696b3          	sll	a3,a3,a6
   19090:	8c55                	or	s0,s0,a3
   19092:	40c00633          	neg	a2,a2
   19096:	06f34a63          	blt	t1,a5,1910a <__subtf3+0x4fa>
   1909a:	4691                	li	a3,4
   1909c:	40e68733          	sub	a4,a3,a4
   190a0:	46b2                	lw	a3,12(sp)
   190a2:	078a                	slli	a5,a5,0x2
   190a4:	04078793          	addi	a5,a5,64
   190a8:	978a                	add	a5,a5,sp
   190aa:	0116d6b3          	srl	a3,a3,a7
   190ae:	fcd7a023          	sw	a3,-64(a5)
   190b2:	00572793          	slti	a5,a4,5
   190b6:	4601                	li	a2,0
   190b8:	c781                	beqz	a5,190c0 <__subtf3+0x4b0>
   190ba:	4611                	li	a2,4
   190bc:	8e19                	sub	a2,a2,a4
   190be:	060a                	slli	a2,a2,0x2
   190c0:	070a                	slli	a4,a4,0x2
   190c2:	953a                	add	a0,a0,a4
   190c4:	4581                	li	a1,0
   190c6:	c43f70ef          	jal	10d08 <memset>
   190ca:	4702                	lw	a4,0(sp)
   190cc:	008037b3          	snez	a5,s0
   190d0:	8fd9                	or	a5,a5,a4
   190d2:	4692                	lw	a3,4(sp)
   190d4:	c03e                	sw	a5,0(sp)
   190d6:	97a6                	add	a5,a5,s1
   190d8:	9bb6                	add	s7,s7,a3
   190da:	4722                	lw	a4,8(sp)
   190dc:	d03e                	sw	a5,32(sp)
   190de:	0097b7b3          	sltu	a5,a5,s1
   190e2:	97de                	add	a5,a5,s7
   190e4:	d23e                	sw	a5,36(sp)
   190e6:	00dbb6b3          	sltu	a3,s7,a3
   190ea:	0177b7b3          	sltu	a5,a5,s7
   190ee:	9c3a                	add	s8,s8,a4
   190f0:	8fd5                	or	a5,a5,a3
   190f2:	97e2                	add	a5,a5,s8
   190f4:	d43e                	sw	a5,40(sp)
   190f6:	00ec3733          	sltu	a4,s8,a4
   190fa:	0187b7b3          	sltu	a5,a5,s8
   190fe:	8f5d                	or	a4,a4,a5
   19100:	47b2                	lw	a5,12(sp)
   19102:	97da                	add	a5,a5,s6
   19104:	973e                	add	a4,a4,a5
   19106:	87d6                	mv	a5,s5
   19108:	b36d                	j	18eb2 <__subtf3+0x2a2>
   1910a:	4194                	lw	a3,0(a1)
   1910c:	0045ae03          	lw	t3,4(a1)
   19110:	00c58eb3          	add	t4,a1,a2
   19114:	0116d6b3          	srl	a3,a3,a7
   19118:	010e1e33          	sll	t3,t3,a6
   1911c:	01c6e6b3          	or	a3,a3,t3
   19120:	00dea023          	sw	a3,0(t4)
   19124:	0305                	addi	t1,t1,1
   19126:	0591                	addi	a1,a1,4
   19128:	b7bd                	j	19096 <__subtf3+0x486>
   1912a:	00140793          	addi	a5,s0,1
   1912e:	01179513          	slli	a0,a5,0x11
   19132:	8149                	srli	a0,a0,0x12
   19134:	4612                	lw	a2,4(sp)
   19136:	46a2                	lw	a3,8(sp)
   19138:	45b2                	lw	a1,12(sp)
   1913a:	10051c63          	bnez	a0,19252 <__subtf3+0x642>
   1913e:	00d667b3          	or	a5,a2,a3
   19142:	8fcd                	or	a5,a5,a1
   19144:	8fd9                	or	a5,a5,a4
   19146:	e049                	bnez	s0,191c8 <__subtf3+0x5b8>
   19148:	e785                	bnez	a5,19170 <__subtf3+0x560>
   1914a:	d026                	sw	s1,32(sp)
   1914c:	d25e                	sw	s7,36(sp)
   1914e:	d462                	sw	s8,40(sp)
   19150:	d65a                	sw	s6,44(sp)
   19152:	5782                	lw	a5,32(sp)
   19154:	5592                	lw	a1,36(sp)
   19156:	5622                	lw	a2,40(sp)
   19158:	56b2                	lw	a3,44(sp)
   1915a:	00b7e733          	or	a4,a5,a1
   1915e:	8f51                	or	a4,a4,a2
   19160:	8f55                	or	a4,a4,a3
   19162:	1a071de3          	bnez	a4,19b1c <__subtf3+0xf0c>
   19166:	4781                	li	a5,0
   19168:	4681                	li	a3,0
   1916a:	4401                	li	s0,0
   1916c:	21d0006f          	j	19b88 <__subtf3+0xf78>
   19170:	018be7b3          	or	a5,s7,s8
   19174:	0167e7b3          	or	a5,a5,s6
   19178:	8fc5                	or	a5,a5,s1
   1917a:	e791                	bnez	a5,19186 <__subtf3+0x576>
   1917c:	d03a                	sw	a4,32(sp)
   1917e:	d232                	sw	a2,36(sp)
   19180:	d436                	sw	a3,40(sp)
   19182:	d62e                	sw	a1,44(sp)
   19184:	b7f9                	j	19152 <__subtf3+0x542>
   19186:	94ba                	add	s1,s1,a4
   19188:	9bb2                	add	s7,s7,a2
   1918a:	d026                	sw	s1,32(sp)
   1918c:	00e4b4b3          	sltu	s1,s1,a4
   19190:	94de                	add	s1,s1,s7
   19192:	d226                	sw	s1,36(sp)
   19194:	00cbb633          	sltu	a2,s7,a2
   19198:	0174b4b3          	sltu	s1,s1,s7
   1919c:	9c36                	add	s8,s8,a3
   1919e:	8e45                	or	a2,a2,s1
   191a0:	9662                	add	a2,a2,s8
   191a2:	d432                	sw	a2,40(sp)
   191a4:	00dc36b3          	sltu	a3,s8,a3
   191a8:	01863633          	sltu	a2,a2,s8
   191ac:	8ed1                	or	a3,a3,a2
   191ae:	95da                	add	a1,a1,s6
   191b0:	96ae                	add	a3,a3,a1
   191b2:	00c69793          	slli	a5,a3,0xc
   191b6:	3207d2e3          	bgez	a5,19cda <__subtf3+0x10ca>
   191ba:	fff807b7          	lui	a5,0xfff80
   191be:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   191c0:	8efd                	and	a3,a3,a5
   191c2:	d636                	sw	a3,44(sp)
   191c4:	4785                	li	a5,1
   191c6:	b3d9                	j	18f8c <__subtf3+0x37c>
   191c8:	6521                	lui	a0,0x8
   191ca:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   191cc:	04a41363          	bne	s0,a0,19212 <__subtf3+0x602>
   191d0:	300788e3          	beqz	a5,19ce0 <__subtf3+0x10d0>
   191d4:	0125d413          	srli	s0,a1,0x12
   191d8:	00144413          	xori	s0,s0,1
   191dc:	8805                	andi	s0,s0,1
   191de:	0412                	slli	s0,s0,0x4
   191e0:	02aa9d63          	bne	s5,a0,1921a <__subtf3+0x60a>
   191e4:	018be533          	or	a0,s7,s8
   191e8:	01656533          	or	a0,a0,s6
   191ec:	8d45                	or	a0,a0,s1
   191ee:	c50d                	beqz	a0,19218 <__subtf3+0x608>
   191f0:	00db1513          	slli	a0,s6,0xd
   191f4:	02054263          	bltz	a0,19218 <__subtf3+0x608>
   191f8:	4441                	li	s0,16
   191fa:	eb85                	bnez	a5,1922a <__subtf3+0x61a>
   191fc:	8726                	mv	a4,s1
   191fe:	865e                	mv	a2,s7
   19200:	86e2                	mv	a3,s8
   19202:	85da                	mv	a1,s6
   19204:	d03a                	sw	a4,32(sp)
   19206:	d232                	sw	a2,36(sp)
   19208:	d436                	sw	a3,40(sp)
   1920a:	d62e                	sw	a1,44(sp)
   1920c:	67a1                	lui	a5,0x8
   1920e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19210:	bbb5                	j	18f8c <__subtf3+0x37c>
   19212:	4401                	li	s0,0
   19214:	fcaa88e3          	beq	s5,a0,191e4 <__subtf3+0x5d4>
   19218:	d3f5                	beqz	a5,191fc <__subtf3+0x5ec>
   1921a:	018bebb3          	or	s7,s7,s8
   1921e:	016bebb3          	or	s7,s7,s6
   19222:	009bebb3          	or	s7,s7,s1
   19226:	fc0b8fe3          	beqz	s7,19204 <__subtf3+0x5f4>
   1922a:	67a1                	lui	a5,0x8
   1922c:	d63e                	sw	a5,44(sp)
   1922e:	d402                	sw	zero,40(sp)
   19230:	d202                	sw	zero,36(sp)
   19232:	d002                	sw	zero,32(sp)
   19234:	101c                	addi	a5,sp,32
   19236:	0850                	addi	a2,sp,20
   19238:	47d8                	lw	a4,12(a5)
   1923a:	4794                	lw	a3,8(a5)
   1923c:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1923e:	070e                	slli	a4,a4,0x3
   19240:	82f5                	srli	a3,a3,0x1d
   19242:	8f55                	or	a4,a4,a3
   19244:	cb98                	sw	a4,16(a5)
   19246:	fef619e3          	bne	a2,a5,19238 <__subtf3+0x628>
   1924a:	4981                	li	s3,0
   1924c:	b7c1                	j	1920c <__subtf3+0x5fc>
   1924e:	4401                	li	s0,0
   19250:	bf51                	j	191e4 <__subtf3+0x5d4>
   19252:	94ba                	add	s1,s1,a4
   19254:	9bb2                	add	s7,s7,a2
   19256:	d026                	sw	s1,32(sp)
   19258:	00e4b4b3          	sltu	s1,s1,a4
   1925c:	94de                	add	s1,s1,s7
   1925e:	d226                	sw	s1,36(sp)
   19260:	00cbb633          	sltu	a2,s7,a2
   19264:	0174b4b3          	sltu	s1,s1,s7
   19268:	9c36                	add	s8,s8,a3
   1926a:	8e45                	or	a2,a2,s1
   1926c:	9662                	add	a2,a2,s8
   1926e:	d432                	sw	a2,40(sp)
   19270:	00dc36b3          	sltu	a3,s8,a3
   19274:	01863633          	sltu	a2,a2,s8
   19278:	8ed1                	or	a3,a3,a2
   1927a:	95da                	add	a1,a1,s6
   1927c:	96ae                	add	a3,a3,a1
   1927e:	d636                	sw	a3,44(sp)
   19280:	1018                	addi	a4,sp,32
   19282:	1068                	addi	a0,sp,44
   19284:	4310                	lw	a2,0(a4)
   19286:	434c                	lw	a1,4(a4)
   19288:	8205                	srli	a2,a2,0x1
   1928a:	05fe                	slli	a1,a1,0x1f
   1928c:	8e4d                	or	a2,a2,a1
   1928e:	c310                	sw	a2,0(a4)
   19290:	0711                	addi	a4,a4,4
   19292:	fee519e3          	bne	a0,a4,19284 <__subtf3+0x674>
   19296:	6721                	lui	a4,0x8
   19298:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1929a:	c6e782e3          	beq	a5,a4,18efe <__subtf3+0x2ee>
   1929e:	8285                	srli	a3,a3,0x1
   192a0:	d636                	sw	a3,44(sp)
   192a2:	4401                	li	s0,0
   192a4:	b1e5                	j	18f8c <__subtf3+0x37c>
   192a6:	4789                	li	a5,2
   192a8:	c6fa12e3          	bne	s4,a5,18f0c <__subtf3+0x2fc>
   192ac:	c60980e3          	beqz	s3,18f0c <__subtf3+0x2fc>
   192b0:	67a1                	lui	a5,0x8
   192b2:	d602                	sw	zero,44(sp)
   192b4:	d402                	sw	zero,40(sp)
   192b6:	d202                	sw	zero,36(sp)
   192b8:	d002                	sw	zero,32(sp)
   192ba:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   192bc:	4415                	li	s0,5
   192be:	b1f9                	j	18f8c <__subtf3+0x37c>
   192c0:	22f05b63          	blez	a5,194f6 <__subtf3+0x8e6>
   192c4:	4592                	lw	a1,4(sp)
   192c6:	4522                	lw	a0,8(sp)
   192c8:	48b2                	lw	a7,12(sp)
   192ca:	0a0a9563          	bnez	s5,19374 <__subtf3+0x764>
   192ce:	4ed2                	lw	t4,20(sp)
   192d0:	4fe2                	lw	t6,24(sp)
   192d2:	4672                	lw	a2,28(sp)
   192d4:	01fee6b3          	or	a3,t4,t6
   192d8:	8ed1                	or	a3,a3,a2
   192da:	8ec5                	or	a3,a3,s1
   192dc:	e69d                	bnez	a3,1930a <__subtf3+0x6fa>
   192de:	66a1                	lui	a3,0x8
   192e0:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   192e2:	00d79f63          	bne	a5,a3,19300 <__subtf3+0x6f0>
   192e6:	00a5e6b3          	or	a3,a1,a0
   192ea:	0116e6b3          	or	a3,a3,a7
   192ee:	8ed9                	or	a3,a3,a4
   192f0:	ca81                	beqz	a3,19300 <__subtf3+0x6f0>
   192f2:	0128da93          	srli	s5,a7,0x12
   192f6:	001aca93          	xori	s5,s5,1
   192fa:	001afa93          	andi	s5,s5,1
   192fe:	0a92                	slli	s5,s5,0x4
   19300:	d03a                	sw	a4,32(sp)
   19302:	d22e                	sw	a1,36(sp)
   19304:	d42a                	sw	a0,40(sp)
   19306:	d646                	sw	a7,44(sp)
   19308:	b435                	j	18d34 <__subtf3+0x124>
   1930a:	fff78f13          	addi	t5,a5,-1
   1930e:	040f1663          	bnez	t5,1935a <__subtf3+0x74a>
   19312:	409706b3          	sub	a3,a4,s1
   19316:	41d58833          	sub	a6,a1,t4
   1931a:	00d73333          	sltu	t1,a4,a3
   1931e:	0105b7b3          	sltu	a5,a1,a6
   19322:	40680833          	sub	a6,a6,t1
   19326:	4301                	li	t1,0
   19328:	00d77663          	bgeu	a4,a3,19334 <__subtf3+0x724>
   1932c:	40be8eb3          	sub	t4,t4,a1
   19330:	001eb313          	seqz	t1,t4
   19334:	00f36733          	or	a4,t1,a5
   19338:	41f505b3          	sub	a1,a0,t6
   1933c:	00b53333          	sltu	t1,a0,a1
   19340:	8d99                	sub	a1,a1,a4
   19342:	c709                	beqz	a4,1934c <__subtf3+0x73c>
   19344:	40af87b3          	sub	a5,t6,a0
   19348:	0017bf13          	seqz	t5,a5
   1934c:	40c88733          	sub	a4,a7,a2
   19350:	006f67b3          	or	a5,t5,t1
   19354:	8f1d                	sub	a4,a4,a5
   19356:	4785                	li	a5,1
   19358:	aab9                	j	194b6 <__subtf3+0x8a6>
   1935a:	66a1                	lui	a3,0x8
   1935c:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1935e:	f8d784e3          	beq	a5,a3,192e6 <__subtf3+0x6d6>
   19362:	07400793          	li	a5,116
   19366:	05e7d763          	bge	a5,t5,193b4 <__subtf3+0x7a4>
   1936a:	ce02                	sw	zero,28(sp)
   1936c:	cc02                	sw	zero,24(sp)
   1936e:	ca02                	sw	zero,20(sp)
   19370:	4685                	li	a3,1
   19372:	a8e5                	j	1946a <__subtf3+0x85a>
   19374:	66a1                	lui	a3,0x8
   19376:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19378:	02d41463          	bne	s0,a3,193a0 <__subtf3+0x790>
   1937c:	00a5e7b3          	or	a5,a1,a0
   19380:	0117e7b3          	or	a5,a5,a7
   19384:	8fd9                	or	a5,a5,a4
   19386:	4681                	li	a3,0
   19388:	c799                	beqz	a5,19396 <__subtf3+0x786>
   1938a:	0128d693          	srli	a3,a7,0x12
   1938e:	0016c693          	xori	a3,a3,1
   19392:	8a85                	andi	a3,a3,1
   19394:	0692                	slli	a3,a3,0x4
   19396:	d03a                	sw	a4,32(sp)
   19398:	d22e                	sw	a1,36(sp)
   1939a:	d42a                	sw	a0,40(sp)
   1939c:	d646                	sw	a7,44(sp)
   1939e:	bc09                	j	18db0 <__subtf3+0x1a0>
   193a0:	46f2                	lw	a3,28(sp)
   193a2:	00080637          	lui	a2,0x80
   193a6:	8ed1                	or	a3,a3,a2
   193a8:	ce36                	sw	a3,28(sp)
   193aa:	07400693          	li	a3,116
   193ae:	faf6cee3          	blt	a3,a5,1936a <__subtf3+0x75a>
   193b2:	8f3e                	mv	t5,a5
   193b4:	405f5793          	srai	a5,t5,0x5
   193b8:	8342                	mv	t1,a6
   193ba:	01ff7f13          	andi	t5,t5,31
   193be:	4681                	li	a3,0
   193c0:	4601                	li	a2,0
   193c2:	02f61663          	bne	a2,a5,193ee <__subtf3+0x7de>
   193c6:	460d                	li	a2,3
   193c8:	8e1d                	sub	a2,a2,a5
   193ca:	00279313          	slli	t1,a5,0x2
   193ce:	020f1763          	bnez	t5,193fc <__subtf3+0x7ec>
   193d2:	00680eb3          	add	t4,a6,t1
   193d6:	000eae83          	lw	t4,0(t4)
   193da:	0f05                	addi	t5,t5,1
   193dc:	0811                	addi	a6,a6,4
   193de:	ffd82e23          	sw	t4,-4(a6)
   193e2:	ffe658e3          	bge	a2,t5,193d2 <__subtf3+0x7c2>
   193e6:	4611                	li	a2,4
   193e8:	40f607b3          	sub	a5,a2,a5
   193ec:	a881                	j	1943c <__subtf3+0x82c>
   193ee:	00032e83          	lw	t4,0(t1)
   193f2:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   193f4:	0311                	addi	t1,t1,4
   193f6:	01d6e6b3          	or	a3,a3,t4
   193fa:	b7e1                	j	193c2 <__subtf3+0x7b2>
   193fc:	04030493          	addi	s1,t1,64
   19400:	00248eb3          	add	t4,s1,sp
   19404:	fd0eae83          	lw	t4,-48(t4)
   19408:	02000393          	li	t2,32
   1940c:	41e383b3          	sub	t2,t2,t5
   19410:	007e9eb3          	sll	t4,t4,t2
   19414:	981a                	add	a6,a6,t1
   19416:	01d6e6b3          	or	a3,a3,t4
   1941a:	40600333          	neg	t1,t1
   1941e:	4f81                	li	t6,0
   19420:	0acfca63          	blt	t6,a2,194d4 <__subtf3+0x8c4>
   19424:	4811                	li	a6,4
   19426:	40f807b3          	sub	a5,a6,a5
   1942a:	4872                	lw	a6,28(sp)
   1942c:	060a                	slli	a2,a2,0x2
   1942e:	04060613          	addi	a2,a2,64
   19432:	960a                	add	a2,a2,sp
   19434:	01e85833          	srl	a6,a6,t5
   19438:	fd062823          	sw	a6,-48(a2)
   1943c:	4611                	li	a2,4
   1943e:	8e1d                	sub	a2,a2,a5
   19440:	060a                	slli	a2,a2,0x2
   19442:	078a                	slli	a5,a5,0x2
   19444:	4821                	li	a6,8
   19446:	97f2                	add	a5,a5,t3
   19448:	01066863          	bltu	a2,a6,19458 <__subtf3+0x848>
   1944c:	0007a023          	sw	zero,0(a5)
   19450:	0007a223          	sw	zero,4(a5)
   19454:	1661                	addi	a2,a2,-8
   19456:	07a1                	addi	a5,a5,8
   19458:	4811                	li	a6,4
   1945a:	01066463          	bltu	a2,a6,19462 <__subtf3+0x852>
   1945e:	0007a023          	sw	zero,0(a5)
   19462:	47c2                	lw	a5,16(sp)
   19464:	00d036b3          	snez	a3,a3
   19468:	8edd                	or	a3,a3,a5
   1946a:	4652                	lw	a2,20(sp)
   1946c:	c836                	sw	a3,16(sp)
   1946e:	40d706b3          	sub	a3,a4,a3
   19472:	40c58833          	sub	a6,a1,a2
   19476:	00d737b3          	sltu	a5,a4,a3
   1947a:	0105b333          	sltu	t1,a1,a6
   1947e:	40f80833          	sub	a6,a6,a5
   19482:	4781                	li	a5,0
   19484:	00d77563          	bgeu	a4,a3,1948e <__subtf3+0x87e>
   19488:	8e0d                	sub	a2,a2,a1
   1948a:	00163793          	seqz	a5,a2
   1948e:	4762                	lw	a4,24(sp)
   19490:	0067e7b3          	or	a5,a5,t1
   19494:	4601                	li	a2,0
   19496:	40e505b3          	sub	a1,a0,a4
   1949a:	00b53333          	sltu	t1,a0,a1
   1949e:	8d9d                	sub	a1,a1,a5
   194a0:	c781                	beqz	a5,194a8 <__subtf3+0x898>
   194a2:	8f09                	sub	a4,a4,a0
   194a4:	00173613          	seqz	a2,a4
   194a8:	4772                	lw	a4,28(sp)
   194aa:	00666633          	or	a2,a2,t1
   194ae:	87a2                	mv	a5,s0
   194b0:	40e88733          	sub	a4,a7,a4
   194b4:	8f11                	sub	a4,a4,a2
   194b6:	d036                	sw	a3,32(sp)
   194b8:	d63a                	sw	a4,44(sp)
   194ba:	d42e                	sw	a1,40(sp)
   194bc:	d242                	sw	a6,36(sp)
   194be:	00c71693          	slli	a3,a4,0xc
   194c2:	de06d0e3          	bgez	a3,192a2 <__subtf3+0x692>
   194c6:	000806b7          	lui	a3,0x80
   194ca:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x645a3>
   194cc:	8f75                	and	a4,a4,a3
   194ce:	d63a                	sw	a4,44(sp)
   194d0:	843e                	mv	s0,a5
   194d2:	a1bd                	j	19940 <__subtf3+0xd30>
   194d4:	00082e83          	lw	t4,0(a6)
   194d8:	00482283          	lw	t0,4(a6)
   194dc:	006804b3          	add	s1,a6,t1
   194e0:	01eedeb3          	srl	t4,t4,t5
   194e4:	007292b3          	sll	t0,t0,t2
   194e8:	005eeeb3          	or	t4,t4,t0
   194ec:	01d4a023          	sw	t4,0(s1)
   194f0:	0f85                	addi	t6,t6,1
   194f2:	0811                	addi	a6,a6,4
   194f4:	b735                	j	19420 <__subtf3+0x810>
   194f6:	4bd2                	lw	s7,20(sp)
   194f8:	4b62                	lw	s6,24(sp)
   194fa:	4c72                	lw	s8,28(sp)
   194fc:	20078763          	beqz	a5,1970a <__subtf3+0xafa>
   19500:	408a87b3          	sub	a5,s5,s0
   19504:	e05d                	bnez	s0,195aa <__subtf3+0x99a>
   19506:	4892                	lw	a7,4(sp)
   19508:	4e22                	lw	t3,8(sp)
   1950a:	4632                	lw	a2,12(sp)
   1950c:	01c8e6b3          	or	a3,a7,t3
   19510:	8ed1                	or	a3,a3,a2
   19512:	8ed9                	or	a3,a3,a4
   19514:	e69d                	bnez	a3,19542 <__subtf3+0x932>
   19516:	6721                	lui	a4,0x8
   19518:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1951a:	00e79e63          	bne	a5,a4,19536 <__subtf3+0x926>
   1951e:	016be733          	or	a4,s7,s6
   19522:	01876733          	or	a4,a4,s8
   19526:	8f45                	or	a4,a4,s1
   19528:	c719                	beqz	a4,19536 <__subtf3+0x926>
   1952a:	012c5413          	srli	s0,s8,0x12
   1952e:	00144413          	xori	s0,s0,1
   19532:	8805                	andi	s0,s0,1
   19534:	0412                	slli	s0,s0,0x4
   19536:	d026                	sw	s1,32(sp)
   19538:	d25e                	sw	s7,36(sp)
   1953a:	d45a                	sw	s6,40(sp)
   1953c:	d662                	sw	s8,44(sp)
   1953e:	89e6                	mv	s3,s9
   19540:	b4b1                	j	18f8c <__subtf3+0x37c>
   19542:	fff78313          	addi	t1,a5,-1
   19546:	04031563          	bnez	t1,19590 <__subtf3+0x980>
   1954a:	40e486b3          	sub	a3,s1,a4
   1954e:	411b8833          	sub	a6,s7,a7
   19552:	00d4b733          	sltu	a4,s1,a3
   19556:	010bb7b3          	sltu	a5,s7,a6
   1955a:	40e80833          	sub	a6,a6,a4
   1955e:	4701                	li	a4,0
   19560:	00d4f663          	bgeu	s1,a3,1956c <__subtf3+0x95c>
   19564:	417888b3          	sub	a7,a7,s7
   19568:	0018b713          	seqz	a4,a7
   1956c:	41cb05b3          	sub	a1,s6,t3
   19570:	8f5d                	or	a4,a4,a5
   19572:	00bb3533          	sltu	a0,s6,a1
   19576:	8d99                	sub	a1,a1,a4
   19578:	c709                	beqz	a4,19582 <__subtf3+0x972>
   1957a:	416e07b3          	sub	a5,t3,s6
   1957e:	0017b313          	seqz	t1,a5
   19582:	40cc0733          	sub	a4,s8,a2
   19586:	00a367b3          	or	a5,t1,a0
   1958a:	8f1d                	sub	a4,a4,a5
   1958c:	89e6                	mv	s3,s9
   1958e:	b3e1                	j	19356 <__subtf3+0x746>
   19590:	6721                	lui	a4,0x8
   19592:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19594:	f8e785e3          	beq	a5,a4,1951e <__subtf3+0x90e>
   19598:	07400793          	li	a5,116
   1959c:	0467d863          	bge	a5,t1,195ec <__subtf3+0x9dc>
   195a0:	c602                	sw	zero,12(sp)
   195a2:	c402                	sw	zero,8(sp)
   195a4:	c202                	sw	zero,4(sp)
   195a6:	4685                	li	a3,1
   195a8:	a8cd                	j	1969a <__subtf3+0xa8a>
   195aa:	6721                	lui	a4,0x8
   195ac:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   195ae:	02ea9563          	bne	s5,a4,195d8 <__subtf3+0x9c8>
   195b2:	016be7b3          	or	a5,s7,s6
   195b6:	0187e7b3          	or	a5,a5,s8
   195ba:	8fc5                	or	a5,a5,s1
   195bc:	4401                	li	s0,0
   195be:	c799                	beqz	a5,195cc <__subtf3+0x9bc>
   195c0:	012c5413          	srli	s0,s8,0x12
   195c4:	00144413          	xori	s0,s0,1
   195c8:	8805                	andi	s0,s0,1
   195ca:	0412                	slli	s0,s0,0x4
   195cc:	d026                	sw	s1,32(sp)
   195ce:	d25e                	sw	s7,36(sp)
   195d0:	d45a                	sw	s6,40(sp)
   195d2:	d662                	sw	s8,44(sp)
   195d4:	87d6                	mv	a5,s5
   195d6:	b7a5                	j	1953e <__subtf3+0x92e>
   195d8:	4732                	lw	a4,12(sp)
   195da:	000806b7          	lui	a3,0x80
   195de:	8f55                	or	a4,a4,a3
   195e0:	c63a                	sw	a4,12(sp)
   195e2:	07400713          	li	a4,116
   195e6:	faf74de3          	blt	a4,a5,195a0 <__subtf3+0x990>
   195ea:	833e                	mv	t1,a5
   195ec:	02000793          	li	a5,32
   195f0:	02f347b3          	div	a5,t1,a5
   195f4:	86ae                	mv	a3,a1
   195f6:	4401                	li	s0,0
   195f8:	4701                	li	a4,0
   195fa:	02f74663          	blt	a4,a5,19626 <__subtf3+0xa16>
   195fe:	470d                	li	a4,3
   19600:	01f37813          	andi	a6,t1,31
   19604:	8f1d                	sub	a4,a4,a5
   19606:	00279613          	slli	a2,a5,0x2
   1960a:	02081363          	bnez	a6,19630 <__subtf3+0xa20>
   1960e:	00c586b3          	add	a3,a1,a2
   19612:	4294                	lw	a3,0(a3)
   19614:	0805                	addi	a6,a6,1
   19616:	c194                	sw	a3,0(a1)
   19618:	0591                	addi	a1,a1,4
   1961a:	ff075ae3          	bge	a4,a6,1960e <__subtf3+0x9fe>
   1961e:	4711                	li	a4,4
   19620:	40f707b3          	sub	a5,a4,a5
   19624:	a899                	j	1967a <__subtf3+0xa6a>
   19626:	4290                	lw	a2,0(a3)
   19628:	0705                	addi	a4,a4,1
   1962a:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   1962c:	8c51                	or	s0,s0,a2
   1962e:	b7f1                	j	195fa <__subtf3+0x9ea>
   19630:	02000693          	li	a3,32
   19634:	02d36333          	rem	t1,t1,a3
   19638:	40668333          	sub	t1,a3,t1
   1963c:	86be                	mv	a3,a5
   1963e:	0007d363          	bgez	a5,19644 <__subtf3+0xa34>
   19642:	4681                	li	a3,0
   19644:	068a                	slli	a3,a3,0x2
   19646:	04068693          	addi	a3,a3,64
   1964a:	968a                	add	a3,a3,sp
   1964c:	fc06a683          	lw	a3,-64(a3)
   19650:	95b2                	add	a1,a1,a2
   19652:	4881                	li	a7,0
   19654:	006696b3          	sll	a3,a3,t1
   19658:	8c55                	or	s0,s0,a3
   1965a:	40c00633          	neg	a2,a2
   1965e:	08e8c663          	blt	a7,a4,196ea <__subtf3+0xada>
   19662:	4691                	li	a3,4
   19664:	40f687b3          	sub	a5,a3,a5
   19668:	46b2                	lw	a3,12(sp)
   1966a:	070a                	slli	a4,a4,0x2
   1966c:	04070713          	addi	a4,a4,64
   19670:	970a                	add	a4,a4,sp
   19672:	0106d6b3          	srl	a3,a3,a6
   19676:	fcd72023          	sw	a3,-64(a4)
   1967a:	0057a713          	slti	a4,a5,5
   1967e:	4601                	li	a2,0
   19680:	c701                	beqz	a4,19688 <__subtf3+0xa78>
   19682:	4611                	li	a2,4
   19684:	8e1d                	sub	a2,a2,a5
   19686:	060a                	slli	a2,a2,0x2
   19688:	078a                	slli	a5,a5,0x2
   1968a:	953e                	add	a0,a0,a5
   1968c:	4581                	li	a1,0
   1968e:	e7af70ef          	jal	10d08 <memset>
   19692:	4782                	lw	a5,0(sp)
   19694:	008036b3          	snez	a3,s0
   19698:	8edd                	or	a3,a3,a5
   1969a:	4712                	lw	a4,4(sp)
   1969c:	c036                	sw	a3,0(sp)
   1969e:	40d486b3          	sub	a3,s1,a3
   196a2:	40eb8833          	sub	a6,s7,a4
   196a6:	00d4b7b3          	sltu	a5,s1,a3
   196aa:	010bb633          	sltu	a2,s7,a6
   196ae:	40f80833          	sub	a6,a6,a5
   196b2:	4781                	li	a5,0
   196b4:	00d4f663          	bgeu	s1,a3,196c0 <__subtf3+0xab0>
   196b8:	41770733          	sub	a4,a4,s7
   196bc:	00173793          	seqz	a5,a4
   196c0:	4722                	lw	a4,8(sp)
   196c2:	8fd1                	or	a5,a5,a2
   196c4:	4601                	li	a2,0
   196c6:	40eb05b3          	sub	a1,s6,a4
   196ca:	00bb3533          	sltu	a0,s6,a1
   196ce:	8d9d                	sub	a1,a1,a5
   196d0:	c789                	beqz	a5,196da <__subtf3+0xaca>
   196d2:	41670733          	sub	a4,a4,s6
   196d6:	00173613          	seqz	a2,a4
   196da:	4732                	lw	a4,12(sp)
   196dc:	8e49                	or	a2,a2,a0
   196de:	87d6                	mv	a5,s5
   196e0:	40ec0733          	sub	a4,s8,a4
   196e4:	8f11                	sub	a4,a4,a2
   196e6:	89e6                	mv	s3,s9
   196e8:	b3f9                	j	194b6 <__subtf3+0x8a6>
   196ea:	4194                	lw	a3,0(a1)
   196ec:	0045ae03          	lw	t3,4(a1)
   196f0:	00c58eb3          	add	t4,a1,a2
   196f4:	0106d6b3          	srl	a3,a3,a6
   196f8:	006e1e33          	sll	t3,t3,t1
   196fc:	01c6e6b3          	or	a3,a3,t3
   19700:	00dea023          	sw	a3,0(t4)
   19704:	0885                	addi	a7,a7,1
   19706:	0591                	addi	a1,a1,4
   19708:	bf99                	j	1965e <__subtf3+0xa4e>
   1970a:	00140693          	addi	a3,s0,1
   1970e:	01169813          	slli	a6,a3,0x11
   19712:	01285813          	srli	a6,a6,0x12
   19716:	4612                	lw	a2,4(sp)
   19718:	45a2                	lw	a1,8(sp)
   1971a:	4532                	lw	a0,12(sp)
   1971c:	18081363          	bnez	a6,198a2 <__subtf3+0xc92>
   19720:	016be7b3          	or	a5,s7,s6
   19724:	00b666b3          	or	a3,a2,a1
   19728:	0187e7b3          	or	a5,a5,s8
   1972c:	8ec9                	or	a3,a3,a0
   1972e:	8fc5                	or	a5,a5,s1
   19730:	8ed9                	or	a3,a3,a4
   19732:	e869                	bnez	s0,19804 <__subtf3+0xbf4>
   19734:	ea99                	bnez	a3,1974a <__subtf3+0xb3a>
   19736:	d026                	sw	s1,32(sp)
   19738:	d25e                	sw	s7,36(sp)
   1973a:	d45a                	sw	s6,40(sp)
   1973c:	d662                	sw	s8,44(sp)
   1973e:	ebcd                	bnez	a5,197f0 <__subtf3+0xbe0>
   19740:	ffea0993          	addi	s3,s4,-2
   19744:	0019b993          	seqz	s3,s3
   19748:	b429                	j	19152 <__subtf3+0x542>
   1974a:	e791                	bnez	a5,19756 <__subtf3+0xb46>
   1974c:	d03a                	sw	a4,32(sp)
   1974e:	d232                	sw	a2,36(sp)
   19750:	d42e                	sw	a1,40(sp)
   19752:	d62a                	sw	a0,44(sp)
   19754:	bafd                	j	19152 <__subtf3+0x542>
   19756:	409707b3          	sub	a5,a4,s1
   1975a:	41760e33          	sub	t3,a2,s7
   1975e:	00f73833          	sltu	a6,a4,a5
   19762:	01c638b3          	sltu	a7,a2,t3
   19766:	410e0833          	sub	a6,t3,a6
   1976a:	4681                	li	a3,0
   1976c:	00f77463          	bgeu	a4,a5,19774 <__subtf3+0xb64>
   19770:	001e3693          	seqz	a3,t3
   19774:	0116e6b3          	or	a3,a3,a7
   19778:	416588b3          	sub	a7,a1,s6
   1977c:	0115bf33          	sltu	t5,a1,a7
   19780:	40d88eb3          	sub	t4,a7,a3
   19784:	4301                	li	t1,0
   19786:	c299                	beqz	a3,1978c <__subtf3+0xb7c>
   19788:	0018b313          	seqz	t1,a7
   1978c:	01e36333          	or	t1,t1,t5
   19790:	418506b3          	sub	a3,a0,s8
   19794:	406686b3          	sub	a3,a3,t1
   19798:	d636                	sw	a3,44(sp)
   1979a:	d476                	sw	t4,40(sp)
   1979c:	d242                	sw	a6,36(sp)
   1979e:	d03e                	sw	a5,32(sp)
   197a0:	00c69313          	slli	t1,a3,0xc
   197a4:	04035863          	bgez	t1,197f4 <__subtf3+0xbe4>
   197a8:	40e48733          	sub	a4,s1,a4
   197ac:	40cb8633          	sub	a2,s7,a2
   197b0:	00e4b7b3          	sltu	a5,s1,a4
   197b4:	00cbbbb3          	sltu	s7,s7,a2
   197b8:	8e1d                	sub	a2,a2,a5
   197ba:	4781                	li	a5,0
   197bc:	00e4f463          	bgeu	s1,a4,197c4 <__subtf3+0xbb4>
   197c0:	001e3793          	seqz	a5,t3
   197c4:	40bb05b3          	sub	a1,s6,a1
   197c8:	0177ebb3          	or	s7,a5,s7
   197cc:	00bb3b33          	sltu	s6,s6,a1
   197d0:	417585b3          	sub	a1,a1,s7
   197d4:	000b8463          	beqz	s7,197dc <__subtf3+0xbcc>
   197d8:	0018b413          	seqz	s0,a7
   197dc:	40ac0533          	sub	a0,s8,a0
   197e0:	01646b33          	or	s6,s0,s6
   197e4:	41650533          	sub	a0,a0,s6
   197e8:	d62a                	sw	a0,44(sp)
   197ea:	d42e                	sw	a1,40(sp)
   197ec:	d232                	sw	a2,36(sp)
   197ee:	d03a                	sw	a4,32(sp)
   197f0:	89e6                	mv	s3,s9
   197f2:	b285                	j	19152 <__subtf3+0x542>
   197f4:	0107e7b3          	or	a5,a5,a6
   197f8:	01d7e7b3          	or	a5,a5,t4
   197fc:	8fd5                	or	a5,a5,a3
   197fe:	94079ae3          	bnez	a5,19152 <__subtf3+0x542>
   19802:	bf3d                	j	19740 <__subtf3+0xb30>
   19804:	6821                	lui	a6,0x8
   19806:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   19808:	03041263          	bne	s0,a6,1982c <__subtf3+0xc1c>
   1980c:	4c068f63          	beqz	a3,19cea <__subtf3+0x10da>
   19810:	01255413          	srli	s0,a0,0x12
   19814:	00144413          	xori	s0,s0,1
   19818:	8805                	andi	s0,s0,1
   1981a:	0412                	slli	s0,s0,0x4
   1981c:	010a8b63          	beq	s5,a6,19832 <__subtf3+0xc22>
   19820:	ebb1                	bnez	a5,19874 <__subtf3+0xc64>
   19822:	d03a                	sw	a4,32(sp)
   19824:	d232                	sw	a2,36(sp)
   19826:	d42e                	sw	a1,40(sp)
   19828:	d62a                	sw	a0,44(sp)
   1982a:	b2cd                	j	1920c <__subtf3+0x5fc>
   1982c:	4401                	li	s0,0
   1982e:	010a9363          	bne	s5,a6,19834 <__subtf3+0xc24>
   19832:	eb9d                	bnez	a5,19868 <__subtf3+0xc58>
   19834:	f6f5                	bnez	a3,19820 <__subtf3+0xc10>
   19836:	e3a5                	bnez	a5,19896 <__subtf3+0xc86>
   19838:	67a1                	lui	a5,0x8
   1983a:	d63e                	sw	a5,44(sp)
   1983c:	d402                	sw	zero,40(sp)
   1983e:	d202                	sw	zero,36(sp)
   19840:	d002                	sw	zero,32(sp)
   19842:	101c                	addi	a5,sp,32
   19844:	0850                	addi	a2,sp,20
   19846:	47d8                	lw	a4,12(a5)
   19848:	4794                	lw	a3,8(a5)
   1984a:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1984c:	070e                	slli	a4,a4,0x3
   1984e:	82f5                	srli	a3,a3,0x1d
   19850:	8f55                	or	a4,a4,a3
   19852:	cb98                	sw	a4,16(a5)
   19854:	fef619e3          	bne	a2,a5,19846 <__subtf3+0xc36>
   19858:	67a1                	lui	a5,0x8
   1985a:	4981                	li	s3,0
   1985c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1985e:	4441                	li	s0,16
   19860:	f2cff06f          	j	18f8c <__subtf3+0x37c>
   19864:	4401                	li	s0,0
   19866:	b7f1                	j	19832 <__subtf3+0xc22>
   19868:	00dc1813          	slli	a6,s8,0xd
   1986c:	fc0844e3          	bltz	a6,19834 <__subtf3+0xc24>
   19870:	4441                	li	s0,16
   19872:	c295                	beqz	a3,19896 <__subtf3+0xc86>
   19874:	67a1                	lui	a5,0x8
   19876:	d63e                	sw	a5,44(sp)
   19878:	d402                	sw	zero,40(sp)
   1987a:	d202                	sw	zero,36(sp)
   1987c:	d002                	sw	zero,32(sp)
   1987e:	101c                	addi	a5,sp,32
   19880:	0850                	addi	a2,sp,20
   19882:	47d8                	lw	a4,12(a5)
   19884:	4794                	lw	a3,8(a5)
   19886:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19888:	070e                	slli	a4,a4,0x3
   1988a:	82f5                	srli	a3,a3,0x1d
   1988c:	8f55                	or	a4,a4,a3
   1988e:	cb98                	sw	a4,16(a5)
   19890:	fef619e3          	bne	a2,a5,19882 <__subtf3+0xc72>
   19894:	ba5d                	j	1924a <__subtf3+0x63a>
   19896:	d026                	sw	s1,32(sp)
   19898:	d25e                	sw	s7,36(sp)
   1989a:	d45a                	sw	s6,40(sp)
   1989c:	d662                	sw	s8,44(sp)
   1989e:	89e6                	mv	s3,s9
   198a0:	b2b5                	j	1920c <__subtf3+0x5fc>
   198a2:	409706b3          	sub	a3,a4,s1
   198a6:	41760e33          	sub	t3,a2,s7
   198aa:	00d73eb3          	sltu	t4,a4,a3
   198ae:	01c638b3          	sltu	a7,a2,t3
   198b2:	41de0eb3          	sub	t4,t3,t4
   198b6:	4801                	li	a6,0
   198b8:	00d77463          	bgeu	a4,a3,198c0 <__subtf3+0xcb0>
   198bc:	001e3813          	seqz	a6,t3
   198c0:	01186833          	or	a6,a6,a7
   198c4:	416588b3          	sub	a7,a1,s6
   198c8:	0115bf33          	sltu	t5,a1,a7
   198cc:	41088fb3          	sub	t6,a7,a6
   198d0:	4301                	li	t1,0
   198d2:	00080463          	beqz	a6,198da <__subtf3+0xcca>
   198d6:	0018b313          	seqz	t1,a7
   198da:	01e36333          	or	t1,t1,t5
   198de:	41850833          	sub	a6,a0,s8
   198e2:	40680833          	sub	a6,a6,t1
   198e6:	d642                	sw	a6,44(sp)
   198e8:	d47e                	sw	t6,40(sp)
   198ea:	d276                	sw	t4,36(sp)
   198ec:	d036                	sw	a3,32(sp)
   198ee:	00c81313          	slli	t1,a6,0xc
   198f2:	10035163          	bgez	t1,199f4 <__subtf3+0xde4>
   198f6:	40e48733          	sub	a4,s1,a4
   198fa:	40cb8633          	sub	a2,s7,a2
   198fe:	00e4b6b3          	sltu	a3,s1,a4
   19902:	00cbbbb3          	sltu	s7,s7,a2
   19906:	8e15                	sub	a2,a2,a3
   19908:	4681                	li	a3,0
   1990a:	00e4f463          	bgeu	s1,a4,19912 <__subtf3+0xd02>
   1990e:	001e3693          	seqz	a3,t3
   19912:	40bb05b3          	sub	a1,s6,a1
   19916:	0176ebb3          	or	s7,a3,s7
   1991a:	00bb3b33          	sltu	s6,s6,a1
   1991e:	417585b3          	sub	a1,a1,s7
   19922:	000b8463          	beqz	s7,1992a <__subtf3+0xd1a>
   19926:	0018b793          	seqz	a5,a7
   1992a:	40ac0533          	sub	a0,s8,a0
   1992e:	0167eb33          	or	s6,a5,s6
   19932:	41650533          	sub	a0,a0,s6
   19936:	d62a                	sw	a0,44(sp)
   19938:	d42e                	sw	a1,40(sp)
   1993a:	d232                	sw	a2,36(sp)
   1993c:	d03a                	sw	a4,32(sp)
   1993e:	89e6                	mv	s3,s9
   19940:	5532                	lw	a0,44(sp)
   19942:	c169                	beqz	a0,19a04 <__subtf3+0xdf4>
   19944:	7dc000ef          	jal	1a120 <__clzsi2>
   19948:	ff450793          	addi	a5,a0,-12
   1994c:	02000693          	li	a3,32
   19950:	01f7f813          	andi	a6,a5,31
   19954:	02d7c733          	div	a4,a5,a3
   19958:	0c080763          	beqz	a6,19a26 <__subtf3+0xe16>
   1995c:	02010313          	addi	t1,sp,32
   19960:	02d7e633          	rem	a2,a5,a3
   19964:	40c685b3          	sub	a1,a3,a2
   19968:	5671                	li	a2,-4
   1996a:	02c70633          	mul	a2,a4,a2
   1996e:	00c60693          	addi	a3,a2,12
   19972:	969a                	add	a3,a3,t1
   19974:	40c00633          	neg	a2,a2
   19978:	0cd31763          	bne	t1,a3,19a46 <__subtf3+0xe36>
   1997c:	5602                	lw	a2,32(sp)
   1997e:	fff70693          	addi	a3,a4,-1
   19982:	070a                	slli	a4,a4,0x2
   19984:	04070713          	addi	a4,a4,64
   19988:	970a                	add	a4,a4,sp
   1998a:	01061633          	sll	a2,a2,a6
   1998e:	fec72023          	sw	a2,-32(a4)
   19992:	00168713          	addi	a4,a3,1
   19996:	070a                	slli	a4,a4,0x2
   19998:	1014                	addi	a3,sp,32
   1999a:	4621                	li	a2,8
   1999c:	88b6                	mv	a7,a3
   1999e:	00c76863          	bltu	a4,a2,199ae <__subtf3+0xd9e>
   199a2:	0006a023          	sw	zero,0(a3)
   199a6:	0006a223          	sw	zero,4(a3)
   199aa:	1761                	addi	a4,a4,-8
   199ac:	1034                	addi	a3,sp,40
   199ae:	4611                	li	a2,4
   199b0:	00c76463          	bltu	a4,a2,199b8 <__subtf3+0xda8>
   199b4:	0006a023          	sw	zero,0(a3)
   199b8:	1487c863          	blt	a5,s0,19b08 <__subtf3+0xef8>
   199bc:	8f81                	sub	a5,a5,s0
   199be:	0785                	addi	a5,a5,1
   199c0:	4057d713          	srai	a4,a5,0x5
   199c4:	85c6                	mv	a1,a7
   199c6:	8bfd                	andi	a5,a5,31
   199c8:	8646                	mv	a2,a7
   199ca:	4301                	li	t1,0
   199cc:	4681                	li	a3,0
   199ce:	08e69b63          	bne	a3,a4,19a64 <__subtf3+0xe54>
   199d2:	468d                	li	a3,3
   199d4:	8e99                	sub	a3,a3,a4
   199d6:	00271613          	slli	a2,a4,0x2
   199da:	ebd9                	bnez	a5,19a70 <__subtf3+0xe60>
   199dc:	00c58533          	add	a0,a1,a2
   199e0:	4108                	lw	a0,0(a0)
   199e2:	0785                	addi	a5,a5,1
   199e4:	c188                	sw	a0,0(a1)
   199e6:	0591                	addi	a1,a1,4
   199e8:	fef6dae3          	bge	a3,a5,199dc <__subtf3+0xdcc>
   199ec:	4791                	li	a5,4
   199ee:	40e78733          	sub	a4,a5,a4
   199f2:	a87d                	j	19ab0 <__subtf3+0xea0>
   199f4:	01d6e6b3          	or	a3,a3,t4
   199f8:	01f6e6b3          	or	a3,a3,t6
   199fc:	0106e6b3          	or	a3,a3,a6
   19a00:	f2a1                	bnez	a3,19940 <__subtf3+0xd30>
   19a02:	bb3d                	j	19740 <__subtf3+0xb30>
   19a04:	5522                	lw	a0,40(sp)
   19a06:	c509                	beqz	a0,19a10 <__subtf3+0xe00>
   19a08:	2f21                	jal	1a120 <__clzsi2>
   19a0a:	02050513          	addi	a0,a0,32
   19a0e:	bf2d                	j	19948 <__subtf3+0xd38>
   19a10:	5512                	lw	a0,36(sp)
   19a12:	c509                	beqz	a0,19a1c <__subtf3+0xe0c>
   19a14:	2731                	jal	1a120 <__clzsi2>
   19a16:	04050513          	addi	a0,a0,64
   19a1a:	b73d                	j	19948 <__subtf3+0xd38>
   19a1c:	5502                	lw	a0,32(sp)
   19a1e:	2709                	jal	1a120 <__clzsi2>
   19a20:	06050513          	addi	a0,a0,96
   19a24:	b715                	j	19948 <__subtf3+0xd38>
   19a26:	55f1                	li	a1,-4
   19a28:	02b705b3          	mul	a1,a4,a1
   19a2c:	1074                	addi	a3,sp,44
   19a2e:	460d                	li	a2,3
   19a30:	00b68533          	add	a0,a3,a1
   19a34:	4108                	lw	a0,0(a0)
   19a36:	167d                	addi	a2,a2,-1
   19a38:	16f1                	addi	a3,a3,-4
   19a3a:	c2c8                	sw	a0,4(a3)
   19a3c:	fee65ae3          	bge	a2,a4,19a30 <__subtf3+0xe20>
   19a40:	fff70693          	addi	a3,a4,-1
   19a44:	b7b9                	j	19992 <__subtf3+0xd82>
   19a46:	4288                	lw	a0,0(a3)
   19a48:	ffc6a883          	lw	a7,-4(a3)
   19a4c:	00c68e33          	add	t3,a3,a2
   19a50:	01051533          	sll	a0,a0,a6
   19a54:	00b8d8b3          	srl	a7,a7,a1
   19a58:	01156533          	or	a0,a0,a7
   19a5c:	00ae2023          	sw	a0,0(t3)
   19a60:	16f1                	addi	a3,a3,-4
   19a62:	bf19                	j	19978 <__subtf3+0xd68>
   19a64:	4208                	lw	a0,0(a2)
   19a66:	0685                	addi	a3,a3,1
   19a68:	0611                	addi	a2,a2,4
   19a6a:	00a36333          	or	t1,t1,a0
   19a6e:	b785                	j	199ce <__subtf3+0xdbe>
   19a70:	04060593          	addi	a1,a2,64
   19a74:	958a                	add	a1,a1,sp
   19a76:	fe05a583          	lw	a1,-32(a1)
   19a7a:	02000813          	li	a6,32
   19a7e:	40f80833          	sub	a6,a6,a5
   19a82:	010595b3          	sll	a1,a1,a6
   19a86:	00b36333          	or	t1,t1,a1
   19a8a:	4e01                	li	t3,0
   19a8c:	00c885b3          	add	a1,a7,a2
   19a90:	40c00633          	neg	a2,a2
   19a94:	04de4a63          	blt	t3,a3,19ae8 <__subtf3+0xed8>
   19a98:	4611                	li	a2,4
   19a9a:	40e60733          	sub	a4,a2,a4
   19a9e:	5632                	lw	a2,44(sp)
   19aa0:	068a                	slli	a3,a3,0x2
   19aa2:	04068693          	addi	a3,a3,64
   19aa6:	968a                	add	a3,a3,sp
   19aa8:	00f657b3          	srl	a5,a2,a5
   19aac:	fef6a023          	sw	a5,-32(a3)
   19ab0:	4691                	li	a3,4
   19ab2:	8e99                	sub	a3,a3,a4
   19ab4:	070a                	slli	a4,a4,0x2
   19ab6:	00e887b3          	add	a5,a7,a4
   19aba:	00269713          	slli	a4,a3,0x2
   19abe:	46a1                	li	a3,8
   19ac0:	00d76863          	bltu	a4,a3,19ad0 <__subtf3+0xec0>
   19ac4:	0007a023          	sw	zero,0(a5)
   19ac8:	0007a223          	sw	zero,4(a5)
   19acc:	1761                	addi	a4,a4,-8
   19ace:	07a1                	addi	a5,a5,8
   19ad0:	4691                	li	a3,4
   19ad2:	00d76463          	bltu	a4,a3,19ada <__subtf3+0xeca>
   19ad6:	0007a023          	sw	zero,0(a5)
   19ada:	5702                	lw	a4,32(sp)
   19adc:	006037b3          	snez	a5,t1
   19ae0:	8fd9                	or	a5,a5,a4
   19ae2:	d03e                	sw	a5,32(sp)
   19ae4:	e6eff06f          	j	19152 <__subtf3+0x542>
   19ae8:	4188                	lw	a0,0(a1)
   19aea:	0045ae83          	lw	t4,4(a1)
   19aee:	00c58f33          	add	t5,a1,a2
   19af2:	00f55533          	srl	a0,a0,a5
   19af6:	010e9eb3          	sll	t4,t4,a6
   19afa:	01d56533          	or	a0,a0,t4
   19afe:	00af2023          	sw	a0,0(t5)
   19b02:	0e05                	addi	t3,t3,1
   19b04:	0591                	addi	a1,a1,4
   19b06:	b779                	j	19a94 <__subtf3+0xe84>
   19b08:	5732                	lw	a4,44(sp)
   19b0a:	fff806b7          	lui	a3,0xfff80
   19b0e:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19b10:	8f75                	and	a4,a4,a3
   19b12:	40f407b3          	sub	a5,s0,a5
   19b16:	d63a                	sw	a4,44(sp)
   19b18:	f8aff06f          	j	192a2 <__subtf3+0x692>
   19b1c:	da2e                	sw	a1,52(sp)
   19b1e:	d83e                	sw	a5,48(sp)
   19b20:	dc32                	sw	a2,56(sp)
   19b22:	de36                	sw	a3,60(sp)
   19b24:	1818                	addi	a4,sp,48
   19b26:	104c                	addi	a1,sp,36
   19b28:	4754                	lw	a3,12(a4)
   19b2a:	4710                	lw	a2,8(a4)
   19b2c:	1771                	addi	a4,a4,-4
   19b2e:	0686                	slli	a3,a3,0x1
   19b30:	827d                	srli	a2,a2,0x1f
   19b32:	8ed1                	or	a3,a3,a2
   19b34:	cb14                	sw	a3,16(a4)
   19b36:	fee599e3          	bne	a1,a4,19b28 <__subtf3+0xf18>
   19b3a:	0786                	slli	a5,a5,0x1
   19b3c:	0077f713          	andi	a4,a5,7
   19b40:	4401                	li	s0,0
   19b42:	cf0d                	beqz	a4,19b7c <__subtf3+0xf6c>
   19b44:	4709                	li	a4,2
   19b46:	56f2                	lw	a3,60(sp)
   19b48:	14ea0463          	beq	s4,a4,19c90 <__subtf3+0x1080>
   19b4c:	470d                	li	a4,3
   19b4e:	12ea0b63          	beq	s4,a4,19c84 <__subtf3+0x1074>
   19b52:	020a1463          	bnez	s4,19b7a <__subtf3+0xf6a>
   19b56:	00f7f713          	andi	a4,a5,15
   19b5a:	4611                	li	a2,4
   19b5c:	00c70f63          	beq	a4,a2,19b7a <__subtf3+0xf6a>
   19b60:	0791                	addi	a5,a5,4
   19b62:	0047b793          	sltiu	a5,a5,4
   19b66:	5752                	lw	a4,52(sp)
   19b68:	973e                	add	a4,a4,a5
   19b6a:	00f73733          	sltu	a4,a4,a5
   19b6e:	57e2                	lw	a5,56(sp)
   19b70:	97ba                	add	a5,a5,a4
   19b72:	00e7b7b3          	sltu	a5,a5,a4
   19b76:	97b6                	add	a5,a5,a3
   19b78:	de3e                	sw	a5,60(sp)
   19b7a:	4405                	li	s0,1
   19b7c:	56f2                	lw	a3,60(sp)
   19b7e:	4781                	li	a5,0
   19b80:	82d1                	srli	a3,a3,0x14
   19b82:	0016c693          	xori	a3,a3,1
   19b86:	8a85                	andi	a3,a3,1
   19b88:	5702                	lw	a4,32(sp)
   19b8a:	00777613          	andi	a2,a4,7
   19b8e:	c229                	beqz	a2,19bd0 <__subtf3+0xfc0>
   19b90:	4589                	li	a1,2
   19b92:	5632                	lw	a2,44(sp)
   19b94:	10ba0863          	beq	s4,a1,19ca4 <__subtf3+0x1094>
   19b98:	458d                	li	a1,3
   19b9a:	0eba0e63          	beq	s4,a1,19c96 <__subtf3+0x1086>
   19b9e:	020a1763          	bnez	s4,19bcc <__subtf3+0xfbc>
   19ba2:	00f77593          	andi	a1,a4,15
   19ba6:	4511                	li	a0,4
   19ba8:	02a58263          	beq	a1,a0,19bcc <__subtf3+0xfbc>
   19bac:	0711                	addi	a4,a4,4
   19bae:	d03a                	sw	a4,32(sp)
   19bb0:	00473713          	sltiu	a4,a4,4
   19bb4:	5592                	lw	a1,36(sp)
   19bb6:	972e                	add	a4,a4,a1
   19bb8:	d23a                	sw	a4,36(sp)
   19bba:	00b73733          	sltu	a4,a4,a1
   19bbe:	55a2                	lw	a1,40(sp)
   19bc0:	972e                	add	a4,a4,a1
   19bc2:	d43a                	sw	a4,40(sp)
   19bc4:	00b73733          	sltu	a4,a4,a1
   19bc8:	9732                	add	a4,a4,a2
   19bca:	d63a                	sw	a4,44(sp)
   19bcc:	00146413          	ori	s0,s0,1
   19bd0:	c689                	beqz	a3,19bda <__subtf3+0xfca>
   19bd2:	00147713          	andi	a4,s0,1
   19bd6:	0706                	slli	a4,a4,0x1
   19bd8:	8c59                	or	s0,s0,a4
   19bda:	5732                	lw	a4,44(sp)
   19bdc:	00c71693          	slli	a3,a4,0xc
   19be0:	0006dc63          	bgez	a3,19bf8 <__subtf3+0xfe8>
   19be4:	66a1                	lui	a3,0x8
   19be6:	0785                	addi	a5,a5,1
   19be8:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19bea:	0cd78063          	beq	a5,a3,19caa <__subtf3+0x109a>
   19bee:	fff806b7          	lui	a3,0xfff80
   19bf2:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19bf4:	8f75                	and	a4,a4,a3
   19bf6:	d63a                	sw	a4,44(sp)
   19bf8:	1018                	addi	a4,sp,32
   19bfa:	106c                	addi	a1,sp,44
   19bfc:	4314                	lw	a3,0(a4)
   19bfe:	4350                	lw	a2,4(a4)
   19c00:	828d                	srli	a3,a3,0x3
   19c02:	0676                	slli	a2,a2,0x1d
   19c04:	8ed1                	or	a3,a3,a2
   19c06:	c314                	sw	a3,0(a4)
   19c08:	0711                	addi	a4,a4,4
   19c0a:	feb719e3          	bne	a4,a1,19bfc <__subtf3+0xfec>
   19c0e:	56b2                	lw	a3,44(sp)
   19c10:	6621                	lui	a2,0x8
   19c12:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   19c16:	828d                	srli	a3,a3,0x3
   19c18:	d636                	sw	a3,44(sp)
   19c1a:	00e79e63          	bne	a5,a4,19c36 <__subtf3+0x1026>
   19c1e:	5592                	lw	a1,36(sp)
   19c20:	5702                	lw	a4,32(sp)
   19c22:	8f4d                	or	a4,a4,a1
   19c24:	55a2                	lw	a1,40(sp)
   19c26:	8f4d                	or	a4,a4,a1
   19c28:	8f55                	or	a4,a4,a3
   19c2a:	c711                	beqz	a4,19c36 <__subtf3+0x1026>
   19c2c:	d632                	sw	a2,44(sp)
   19c2e:	d402                	sw	zero,40(sp)
   19c30:	d202                	sw	zero,36(sp)
   19c32:	d002                	sw	zero,32(sp)
   19c34:	4981                	li	s3,0
   19c36:	55b2                	lw	a1,44(sp)
   19c38:	07c6                	slli	a5,a5,0x11
   19c3a:	83c5                	srli	a5,a5,0x11
   19c3c:	09be                	slli	s3,s3,0xf
   19c3e:	00f9e9b3          	or	s3,s3,a5
   19c42:	02b11e23          	sh	a1,60(sp)
   19c46:	03311f23          	sh	s3,62(sp)
   19c4a:	5602                	lw	a2,32(sp)
   19c4c:	5692                	lw	a3,36(sp)
   19c4e:	5722                	lw	a4,40(sp)
   19c50:	57f2                	lw	a5,60(sp)
   19c52:	c019                	beqz	s0,19c58 <__subtf3+0x1048>
   19c54:	00142073          	csrs	fflags,s0
   19c58:	50b6                	lw	ra,108(sp)
   19c5a:	5426                	lw	s0,104(sp)
   19c5c:	00c92023          	sw	a2,0(s2)
   19c60:	00d92223          	sw	a3,4(s2)
   19c64:	00e92423          	sw	a4,8(s2)
   19c68:	00f92623          	sw	a5,12(s2)
   19c6c:	5496                	lw	s1,100(sp)
   19c6e:	49f6                	lw	s3,92(sp)
   19c70:	4a66                	lw	s4,88(sp)
   19c72:	4ad6                	lw	s5,84(sp)
   19c74:	4b46                	lw	s6,80(sp)
   19c76:	4bb6                	lw	s7,76(sp)
   19c78:	4c26                	lw	s8,72(sp)
   19c7a:	4c96                	lw	s9,68(sp)
   19c7c:	854a                	mv	a0,s2
   19c7e:	5906                	lw	s2,96(sp)
   19c80:	6165                	addi	sp,sp,112
   19c82:	8082                	ret
   19c84:	ee099be3          	bnez	s3,19b7a <__subtf3+0xf6a>
   19c88:	07a1                	addi	a5,a5,8
   19c8a:	0087b793          	sltiu	a5,a5,8
   19c8e:	bde1                	j	19b66 <__subtf3+0xf56>
   19c90:	ee0985e3          	beqz	s3,19b7a <__subtf3+0xf6a>
   19c94:	bfd5                	j	19c88 <__subtf3+0x1078>
   19c96:	f2099be3          	bnez	s3,19bcc <__subtf3+0xfbc>
   19c9a:	0721                	addi	a4,a4,8
   19c9c:	d03a                	sw	a4,32(sp)
   19c9e:	00873713          	sltiu	a4,a4,8
   19ca2:	bf09                	j	19bb4 <__subtf3+0xfa4>
   19ca4:	f20984e3          	beqz	s3,19bcc <__subtf3+0xfbc>
   19ca8:	bfcd                	j	19c9a <__subtf3+0x108a>
   19caa:	4701                	li	a4,0
   19cac:	020a0063          	beqz	s4,19ccc <__subtf3+0x10bc>
   19cb0:	468d                	li	a3,3
   19cb2:	00da1863          	bne	s4,a3,19cc2 <__subtf3+0x10b2>
   19cb6:	00098b63          	beqz	s3,19ccc <__subtf3+0x10bc>
   19cba:	67a1                	lui	a5,0x8
   19cbc:	577d                	li	a4,-1
   19cbe:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   19cc0:	a031                	j	19ccc <__subtf3+0x10bc>
   19cc2:	4689                	li	a3,2
   19cc4:	feda1be3          	bne	s4,a3,19cba <__subtf3+0x10aa>
   19cc8:	fe0989e3          	beqz	s3,19cba <__subtf3+0x10aa>
   19ccc:	d63a                	sw	a4,44(sp)
   19cce:	d43a                	sw	a4,40(sp)
   19cd0:	d23a                	sw	a4,36(sp)
   19cd2:	d03a                	sw	a4,32(sp)
   19cd4:	00546413          	ori	s0,s0,5
   19cd8:	b705                	j	19bf8 <__subtf3+0xfe8>
   19cda:	d636                	sw	a3,44(sp)
   19cdc:	c76ff06f          	j	19152 <__subtf3+0x542>
   19ce0:	d68a8763          	beq	s5,s0,1924e <__subtf3+0x63e>
   19ce4:	4401                	li	s0,0
   19ce6:	d16ff06f          	j	191fc <__subtf3+0x5ec>
   19cea:	b68a8de3          	beq	s5,s0,19864 <__subtf3+0xc54>
   19cee:	4401                	li	s0,0
   19cf0:	b699                	j	19836 <__subtf3+0xc26>

00019cf2 <__unordtf2>:
   19cf2:	4114                	lw	a3,0(a0)
   19cf4:	00452f03          	lw	t5,4(a0)
   19cf8:	00852e83          	lw	t4,8(a0)
   19cfc:	4550                	lw	a2,12(a0)
   19cfe:	419c                	lw	a5,0(a1)
   19d00:	0045ae03          	lw	t3,4(a1)
   19d04:	0085a303          	lw	t1,8(a1)
   19d08:	45d8                	lw	a4,12(a1)
   19d0a:	1141                	addi	sp,sp,-16
   19d0c:	002025f3          	frrm	a1
   19d10:	6521                	lui	a0,0x8
   19d12:	01061813          	slli	a6,a2,0x10
   19d16:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19d18:	8241                	srli	a2,a2,0x10
   19d1a:	01071593          	slli	a1,a4,0x10
   19d1e:	8e69                	and	a2,a2,a0
   19d20:	8341                	srli	a4,a4,0x10
   19d22:	01085813          	srli	a6,a6,0x10
   19d26:	81c1                	srli	a1,a1,0x10
   19d28:	8f69                	and	a4,a4,a0
   19d2a:	00a61963          	bne	a2,a0,19d3c <__unordtf2+0x4a>
   19d2e:	01e6e533          	or	a0,a3,t5
   19d32:	01d56533          	or	a0,a0,t4
   19d36:	01056533          	or	a0,a0,a6
   19d3a:	e51d                	bnez	a0,19d68 <__unordtf2+0x76>
   19d3c:	68a1                	lui	a7,0x8
   19d3e:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   19d40:	4501                	li	a0,0
   19d42:	05171c63          	bne	a4,a7,19d9a <__unordtf2+0xa8>
   19d46:	01c7e8b3          	or	a7,a5,t3
   19d4a:	0068e8b3          	or	a7,a7,t1
   19d4e:	00b8e8b3          	or	a7,a7,a1
   19d52:	04088463          	beqz	a7,19d9a <__unordtf2+0xa8>
   19d56:	02e61a63          	bne	a2,a4,19d8a <__unordtf2+0x98>
   19d5a:	01e6e6b3          	or	a3,a3,t5
   19d5e:	01d6e6b3          	or	a3,a3,t4
   19d62:	0106e6b3          	or	a3,a3,a6
   19d66:	ca99                	beqz	a3,19d7c <__unordtf2+0x8a>
   19d68:	0842                	slli	a6,a6,0x10
   19d6a:	41085813          	srai	a6,a6,0x10
   19d6e:	02085363          	bgez	a6,19d94 <__unordtf2+0xa2>
   19d72:	66a1                	lui	a3,0x8
   19d74:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19d76:	4505                	li	a0,1
   19d78:	02d71163          	bne	a4,a3,19d9a <__unordtf2+0xa8>
   19d7c:	01c7e7b3          	or	a5,a5,t3
   19d80:	0067e7b3          	or	a5,a5,t1
   19d84:	8fcd                	or	a5,a5,a1
   19d86:	4505                	li	a0,1
   19d88:	cb89                	beqz	a5,19d9a <__unordtf2+0xa8>
   19d8a:	05c2                	slli	a1,a1,0x10
   19d8c:	85c1                	srai	a1,a1,0x10
   19d8e:	4505                	li	a0,1
   19d90:	0005c563          	bltz	a1,19d9a <__unordtf2+0xa8>
   19d94:	00186073          	csrsi	fflags,16
   19d98:	4505                	li	a0,1
   19d9a:	0141                	addi	sp,sp,16
   19d9c:	8082                	ret

00019d9e <__fixtfsi>:
   19d9e:	411c                	lw	a5,0(a0)
   19da0:	00452803          	lw	a6,4(a0)
   19da4:	4518                	lw	a4,8(a0)
   19da6:	4550                	lw	a2,12(a0)
   19da8:	1101                	addi	sp,sp,-32
   19daa:	002026f3          	frrm	a3
   19dae:	01061693          	slli	a3,a2,0x10
   19db2:	00161593          	slli	a1,a2,0x1
   19db6:	c632                	sw	a2,12(sp)
   19db8:	01f65893          	srli	a7,a2,0x1f
   19dbc:	6611                	lui	a2,0x4
   19dbe:	c03e                	sw	a5,0(sp)
   19dc0:	c242                	sw	a6,4(sp)
   19dc2:	c43a                	sw	a4,8(sp)
   19dc4:	c83e                	sw	a5,16(sp)
   19dc6:	ca42                	sw	a6,20(sp)
   19dc8:	cc3a                	sw	a4,24(sp)
   19dca:	81c5                	srli	a1,a1,0x11
   19dcc:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   19dce:	82c1                	srli	a3,a3,0x10
   19dd0:	00b64a63          	blt	a2,a1,19de4 <__fixtfsi+0x46>
   19dd4:	e9f9                	bnez	a1,19eaa <__fixtfsi+0x10c>
   19dd6:	0107e533          	or	a0,a5,a6
   19dda:	8d59                	or	a0,a0,a4
   19ddc:	8d55                	or	a0,a0,a3
   19dde:	e571                	bnez	a0,19eaa <__fixtfsi+0x10c>
   19de0:	6105                	addi	sp,sp,32
   19de2:	8082                	ret
   19de4:	6511                	lui	a0,0x4
   19de6:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   19de8:	8646                	mv	a2,a7
   19dea:	02b55763          	bge	a0,a1,19e18 <__fixtfsi+0x7a>
   19dee:	0c088163          	beqz	a7,19eb0 <__fixtfsi+0x112>
   19df2:	6511                	lui	a0,0x4
   19df4:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   19df6:	0ca59263          	bne	a1,a0,19eba <__fixtfsi+0x11c>
   19dfa:	01175593          	srli	a1,a4,0x11
   19dfe:	06be                	slli	a3,a3,0xf
   19e00:	8ecd                	or	a3,a3,a1
   19e02:	eec5                	bnez	a3,19eba <__fixtfsi+0x11c>
   19e04:	0107e7b3          	or	a5,a5,a6
   19e08:	073e                	slli	a4,a4,0xf
   19e0a:	8f5d                	or	a4,a4,a5
   19e0c:	80000537          	lui	a0,0x80000
   19e10:	db61                	beqz	a4,19de0 <__fixtfsi+0x42>
   19e12:	00162073          	csrs	fflags,a2
   19e16:	b7e9                	j	19de0 <__fixtfsi+0x42>
   19e18:	67c1                	lui	a5,0x10
   19e1a:	8fd5                	or	a5,a5,a3
   19e1c:	6691                	lui	a3,0x4
   19e1e:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   19e22:	8e8d                	sub	a3,a3,a1
   19e24:	4056d513          	srai	a0,a3,0x5
   19e28:	ce3e                	sw	a5,28(sp)
   19e2a:	8afd                	andi	a3,a3,31
   19e2c:	080c                	addi	a1,sp,16
   19e2e:	4801                	li	a6,0
   19e30:	4601                	li	a2,0
   19e32:	0005a303          	lw	t1,0(a1)
   19e36:	0605                	addi	a2,a2,1
   19e38:	0591                	addi	a1,a1,4
   19e3a:	00686833          	or	a6,a6,t1
   19e3e:	fec51ae3          	bne	a0,a2,19e32 <__fixtfsi+0x94>
   19e42:	00251613          	slli	a2,a0,0x2
   19e46:	e28d                	bnez	a3,19e68 <__fixtfsi+0xca>
   19e48:	02060793          	addi	a5,a2,32
   19e4c:	00278633          	add	a2,a5,sp
   19e50:	ff062783          	lw	a5,-16(a2)
   19e54:	c83e                	sw	a5,16(sp)
   19e56:	4542                	lw	a0,16(sp)
   19e58:	00088463          	beqz	a7,19e60 <__fixtfsi+0xc2>
   19e5c:	40a00533          	neg	a0,a0
   19e60:	4605                	li	a2,1
   19e62:	fa0818e3          	bnez	a6,19e12 <__fixtfsi+0x74>
   19e66:	bfad                	j	19de0 <__fixtfsi+0x42>
   19e68:	02060613          	addi	a2,a2,32
   19e6c:	960a                	add	a2,a2,sp
   19e6e:	ff062603          	lw	a2,-16(a2)
   19e72:	02000593          	li	a1,32
   19e76:	8d95                	sub	a1,a1,a3
   19e78:	00b61633          	sll	a2,a2,a1
   19e7c:	4309                	li	t1,2
   19e7e:	00c86833          	or	a6,a6,a2
   19e82:	4601                	li	a2,0
   19e84:	00651963          	bne	a0,t1,19e96 <__fixtfsi+0xf8>
   19e88:	00d75733          	srl	a4,a4,a3
   19e8c:	00b795b3          	sll	a1,a5,a1
   19e90:	8f4d                	or	a4,a4,a1
   19e92:	c83a                	sw	a4,16(sp)
   19e94:	4605                	li	a2,1
   19e96:	060a                	slli	a2,a2,0x2
   19e98:	02060713          	addi	a4,a2,32
   19e9c:	00270633          	add	a2,a4,sp
   19ea0:	00d7d7b3          	srl	a5,a5,a3
   19ea4:	fef62823          	sw	a5,-16(a2)
   19ea8:	b77d                	j	19e56 <__fixtfsi+0xb8>
   19eaa:	4605                	li	a2,1
   19eac:	4501                	li	a0,0
   19eae:	b795                	j	19e12 <__fixtfsi+0x74>
   19eb0:	80000537          	lui	a0,0x80000
   19eb4:	4641                	li	a2,16
   19eb6:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   19eb8:	bfa9                	j	19e12 <__fixtfsi+0x74>
   19eba:	4641                	li	a2,16
   19ebc:	80000537          	lui	a0,0x80000
   19ec0:	bf89                	j	19e12 <__fixtfsi+0x74>

00019ec2 <__floatsitf>:
   19ec2:	7179                	addi	sp,sp,-48
   19ec4:	d226                	sw	s1,36(sp)
   19ec6:	d606                	sw	ra,44(sp)
   19ec8:	d422                	sw	s0,40(sp)
   19eca:	d04a                	sw	s2,32(sp)
   19ecc:	84aa                	mv	s1,a0
   19ece:	cdcd                	beqz	a1,19f88 <__floatsitf+0xc6>
   19ed0:	41f5d793          	srai	a5,a1,0x1f
   19ed4:	00b7c433          	xor	s0,a5,a1
   19ed8:	8c1d                	sub	s0,s0,a5
   19eda:	8522                	mv	a0,s0
   19edc:	01f5d913          	srli	s2,a1,0x1f
   19ee0:	2481                	jal	1a120 <__clzsi2>
   19ee2:	6711                	lui	a4,0x4
   19ee4:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   19ee6:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe45f5>
   19eea:	40a70633          	sub	a2,a4,a0
   19eee:	c822                	sw	s0,16(sp)
   19ef0:	4057d713          	srai	a4,a5,0x5
   19ef4:	ca02                	sw	zero,20(sp)
   19ef6:	cc02                	sw	zero,24(sp)
   19ef8:	ce02                	sw	zero,28(sp)
   19efa:	8bfd                	andi	a5,a5,31
   19efc:	c78d                	beqz	a5,19f26 <__floatsitf+0x64>
   19efe:	4689                	li	a3,2
   19f00:	08d71263          	bne	a4,a3,19f84 <__floatsitf+0xc2>
   19f04:	02000693          	li	a3,32
   19f08:	8e9d                	sub	a3,a3,a5
   19f0a:	00d456b3          	srl	a3,s0,a3
   19f0e:	ce36                	sw	a3,28(sp)
   19f10:	fff70693          	addi	a3,a4,-1
   19f14:	070a                	slli	a4,a4,0x2
   19f16:	02070713          	addi	a4,a4,32
   19f1a:	970a                	add	a4,a4,sp
   19f1c:	00f41433          	sll	s0,s0,a5
   19f20:	fe872823          	sw	s0,-16(a4)
   19f24:	a005                	j	19f44 <__floatsitf+0x82>
   19f26:	478d                	li	a5,3
   19f28:	8f99                	sub	a5,a5,a4
   19f2a:	078a                	slli	a5,a5,0x2
   19f2c:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   19f30:	978a                	add	a5,a5,sp
   19f32:	ff07a783          	lw	a5,-16(a5)
   19f36:	4689                	li	a3,2
   19f38:	ce3e                	sw	a5,28(sp)
   19f3a:	4789                	li	a5,2
   19f3c:	00f71463          	bne	a4,a5,19f44 <__floatsitf+0x82>
   19f40:	cc22                	sw	s0,24(sp)
   19f42:	4685                	li	a3,1
   19f44:	068a                	slli	a3,a3,0x2
   19f46:	c802                	sw	zero,16(sp)
   19f48:	ca02                	sw	zero,20(sp)
   19f4a:	16f1                	addi	a3,a3,-4
   19f4c:	4791                	li	a5,4
   19f4e:	00f6e363          	bltu	a3,a5,19f54 <__floatsitf+0x92>
   19f52:	cc02                	sw	zero,24(sp)
   19f54:	85ca                	mv	a1,s2
   19f56:	47f2                	lw	a5,28(sp)
   19f58:	00f59413          	slli	s0,a1,0xf
   19f5c:	8c51                	or	s0,s0,a2
   19f5e:	00811723          	sh	s0,14(sp)
   19f62:	00f11623          	sh	a5,12(sp)
   19f66:	4542                	lw	a0,16(sp)
   19f68:	46d2                	lw	a3,20(sp)
   19f6a:	4762                	lw	a4,24(sp)
   19f6c:	47b2                	lw	a5,12(sp)
   19f6e:	50b2                	lw	ra,44(sp)
   19f70:	5422                	lw	s0,40(sp)
   19f72:	c088                	sw	a0,0(s1)
   19f74:	c0d4                	sw	a3,4(s1)
   19f76:	c498                	sw	a4,8(s1)
   19f78:	c4dc                	sw	a5,12(s1)
   19f7a:	5902                	lw	s2,32(sp)
   19f7c:	8526                	mv	a0,s1
   19f7e:	5492                	lw	s1,36(sp)
   19f80:	6145                	addi	sp,sp,48
   19f82:	8082                	ret
   19f84:	470d                	li	a4,3
   19f86:	b769                	j	19f10 <__floatsitf+0x4e>
   19f88:	ce02                	sw	zero,28(sp)
   19f8a:	cc02                	sw	zero,24(sp)
   19f8c:	ca02                	sw	zero,20(sp)
   19f8e:	c802                	sw	zero,16(sp)
   19f90:	4601                	li	a2,0
   19f92:	b7d1                	j	19f56 <__floatsitf+0x94>

00019f94 <__extenddftf2>:
   19f94:	715d                	addi	sp,sp,-80
   19f96:	a42a                	fsd	fa0,8(sp)
   19f98:	c2a6                	sw	s1,68(sp)
   19f9a:	c0ca                	sw	s2,64(sp)
   19f9c:	de4e                	sw	s3,60(sp)
   19f9e:	4922                	lw	s2,8(sp)
   19fa0:	44b2                	lw	s1,12(sp)
   19fa2:	c686                	sw	ra,76(sp)
   19fa4:	c4a2                	sw	s0,72(sp)
   19fa6:	89aa                	mv	s3,a0
   19fa8:	002027f3          	frrm	a5
   19fac:	0144d413          	srli	s0,s1,0x14
   19fb0:	00c49793          	slli	a5,s1,0xc
   19fb4:	7ff47413          	andi	s0,s0,2047
   19fb8:	83b1                	srli	a5,a5,0xc
   19fba:	00140713          	addi	a4,s0,1
   19fbe:	d04a                	sw	s2,32(sp)
   19fc0:	d23e                	sw	a5,36(sp)
   19fc2:	d602                	sw	zero,44(sp)
   19fc4:	d402                	sw	zero,40(sp)
   19fc6:	7fe77713          	andi	a4,a4,2046
   19fca:	80fd                	srli	s1,s1,0x1f
   19fcc:	cf39                	beqz	a4,1a02a <__extenddftf2+0x96>
   19fce:	0047d693          	srli	a3,a5,0x4
   19fd2:	6711                	lui	a4,0x4
   19fd4:	d636                	sw	a3,44(sp)
   19fd6:	07f2                	slli	a5,a5,0x1c
   19fd8:	00495693          	srli	a3,s2,0x4
   19fdc:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   19fe0:	8fd5                	or	a5,a5,a3
   19fe2:	0972                	slli	s2,s2,0x1c
   19fe4:	9722                	add	a4,a4,s0
   19fe6:	d43e                	sw	a5,40(sp)
   19fe8:	d24a                	sw	s2,36(sp)
   19fea:	d002                	sw	zero,32(sp)
   19fec:	4401                	li	s0,0
   19fee:	57b2                	lw	a5,44(sp)
   19ff0:	04be                	slli	s1,s1,0xf
   19ff2:	8cd9                	or	s1,s1,a4
   19ff4:	00f11e23          	sh	a5,28(sp)
   19ff8:	00911f23          	sh	s1,30(sp)
   19ffc:	5582                	lw	a1,32(sp)
   19ffe:	5612                	lw	a2,36(sp)
   1a000:	56a2                	lw	a3,40(sp)
   1a002:	47f2                	lw	a5,28(sp)
   1a004:	c019                	beqz	s0,1a00a <__extenddftf2+0x76>
   1a006:	00186073          	csrsi	fflags,16
   1a00a:	40b6                	lw	ra,76(sp)
   1a00c:	4426                	lw	s0,72(sp)
   1a00e:	00b9a023          	sw	a1,0(s3)
   1a012:	00c9a223          	sw	a2,4(s3)
   1a016:	00d9a423          	sw	a3,8(s3)
   1a01a:	00f9a623          	sw	a5,12(s3)
   1a01e:	4496                	lw	s1,68(sp)
   1a020:	4906                	lw	s2,64(sp)
   1a022:	854e                	mv	a0,s3
   1a024:	59f2                	lw	s3,60(sp)
   1a026:	6161                	addi	sp,sp,80
   1a028:	8082                	ret
   1a02a:	0127e533          	or	a0,a5,s2
   1a02e:	e069                	bnez	s0,1a0f0 <__extenddftf2+0x15c>
   1a030:	4701                	li	a4,0
   1a032:	dd55                	beqz	a0,19fee <__extenddftf2+0x5a>
   1a034:	c7a9                	beqz	a5,1a07e <__extenddftf2+0xea>
   1a036:	853e                	mv	a0,a5
   1a038:	20e5                	jal	1a120 <__clzsi2>
   1a03a:	03150693          	addi	a3,a0,49
   1a03e:	4056d793          	srai	a5,a3,0x5
   1a042:	8afd                	andi	a3,a3,31
   1a044:	c2a9                	beqz	a3,1a086 <__extenddftf2+0xf2>
   1a046:	5671                	li	a2,-4
   1a048:	02c78633          	mul	a2,a5,a2
   1a04c:	02000813          	li	a6,32
   1a050:	02010313          	addi	t1,sp,32
   1a054:	40d80833          	sub	a6,a6,a3
   1a058:	00c60713          	addi	a4,a2,12
   1a05c:	971a                	add	a4,a4,t1
   1a05e:	40c00633          	neg	a2,a2
   1a062:	06e31863          	bne	t1,a4,1a0d2 <__extenddftf2+0x13e>
   1a066:	fff78713          	addi	a4,a5,-1
   1a06a:	078a                	slli	a5,a5,0x2
   1a06c:	02078793          	addi	a5,a5,32
   1a070:	0810                	addi	a2,sp,16
   1a072:	97b2                	add	a5,a5,a2
   1a074:	00d916b3          	sll	a3,s2,a3
   1a078:	fed7a823          	sw	a3,-16(a5)
   1a07c:	a025                	j	1a0a4 <__extenddftf2+0x110>
   1a07e:	204d                	jal	1a120 <__clzsi2>
   1a080:	02050513          	addi	a0,a0,32
   1a084:	bf5d                	j	1a03a <__extenddftf2+0xa6>
   1a086:	5671                	li	a2,-4
   1a088:	02c78633          	mul	a2,a5,a2
   1a08c:	1078                	addi	a4,sp,44
   1a08e:	468d                	li	a3,3
   1a090:	00c705b3          	add	a1,a4,a2
   1a094:	418c                	lw	a1,0(a1)
   1a096:	16fd                	addi	a3,a3,-1
   1a098:	1771                	addi	a4,a4,-4
   1a09a:	c34c                	sw	a1,4(a4)
   1a09c:	fef6dae3          	bge	a3,a5,1a090 <__extenddftf2+0xfc>
   1a0a0:	fff78713          	addi	a4,a5,-1
   1a0a4:	00170793          	addi	a5,a4,1
   1a0a8:	078a                	slli	a5,a5,0x2
   1a0aa:	46a1                	li	a3,8
   1a0ac:	1018                	addi	a4,sp,32
   1a0ae:	00d7e863          	bltu	a5,a3,1a0be <__extenddftf2+0x12a>
   1a0b2:	00072023          	sw	zero,0(a4)
   1a0b6:	00072223          	sw	zero,4(a4)
   1a0ba:	17e1                	addi	a5,a5,-8
   1a0bc:	1038                	addi	a4,sp,40
   1a0be:	4691                	li	a3,4
   1a0c0:	00d7e463          	bltu	a5,a3,1a0c8 <__extenddftf2+0x134>
   1a0c4:	00072023          	sw	zero,0(a4)
   1a0c8:	6711                	lui	a4,0x4
   1a0ca:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1a0ce:	8f09                	sub	a4,a4,a0
   1a0d0:	bf39                	j	19fee <__extenddftf2+0x5a>
   1a0d2:	430c                	lw	a1,0(a4)
   1a0d4:	ffc72883          	lw	a7,-4(a4)
   1a0d8:	00c70e33          	add	t3,a4,a2
   1a0dc:	00d595b3          	sll	a1,a1,a3
   1a0e0:	0108d8b3          	srl	a7,a7,a6
   1a0e4:	0115e5b3          	or	a1,a1,a7
   1a0e8:	00be2023          	sw	a1,0(t3)
   1a0ec:	1771                	addi	a4,a4,-4
   1a0ee:	bf95                	j	1a062 <__extenddftf2+0xce>
   1a0f0:	c50d                	beqz	a0,1a11a <__extenddftf2+0x186>
   1a0f2:	01c79713          	slli	a4,a5,0x1c
   1a0f6:	00495693          	srli	a3,s2,0x4
   1a0fa:	8f55                	or	a4,a4,a3
   1a0fc:	00080437          	lui	s0,0x80
   1a100:	0087b433          	sltu	s0,a5,s0
   1a104:	d43a                	sw	a4,40(sp)
   1a106:	8391                	srli	a5,a5,0x4
   1a108:	6721                	lui	a4,0x8
   1a10a:	0972                	slli	s2,s2,0x1c
   1a10c:	8fd9                	or	a5,a5,a4
   1a10e:	0412                	slli	s0,s0,0x4
   1a110:	d24a                	sw	s2,36(sp)
   1a112:	d002                	sw	zero,32(sp)
   1a114:	d63e                	sw	a5,44(sp)
   1a116:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a118:	bdd9                	j	19fee <__extenddftf2+0x5a>
   1a11a:	4401                	li	s0,0
   1a11c:	6721                	lui	a4,0x8
   1a11e:	bfe5                	j	1a116 <__extenddftf2+0x182>

0001a120 <__clzsi2>:
   1a120:	67c1                	lui	a5,0x10
   1a122:	02f57563          	bgeu	a0,a5,1a14c <__clzsi2+0x2c>
   1a126:	10053793          	sltiu	a5,a0,256
   1a12a:	0017b793          	seqz	a5,a5
   1a12e:	078e                	slli	a5,a5,0x3
   1a130:	676d                	lui	a4,0x1b
   1a132:	02000693          	li	a3,32
   1a136:	8e9d                	sub	a3,a3,a5
   1a138:	00f55533          	srl	a0,a0,a5
   1a13c:	a6870793          	addi	a5,a4,-1432 # 1aa68 <__clz_tab>
   1a140:	97aa                	add	a5,a5,a0
   1a142:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1a146:	40a68533          	sub	a0,a3,a0
   1a14a:	8082                	ret
   1a14c:	01000737          	lui	a4,0x1000
   1a150:	47e1                	li	a5,24
   1a152:	fce57fe3          	bgeu	a0,a4,1a130 <__clzsi2+0x10>
   1a156:	47c1                	li	a5,16
   1a158:	bfe1                	j	1a130 <__clzsi2+0x10>
