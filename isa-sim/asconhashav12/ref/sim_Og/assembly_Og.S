
sim_Og/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	5d9000ef          	jal	10e76 <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	47d070ef          	jal	17d28 <_exit>

000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c791                	beqz	a5,100c0 <register_fini+0x10>
   100b6:	6551                	lui	a0,0x14
   100b8:	e4450513          	addi	a0,a0,-444 # 13e44 <__libc_fini_array>
   100bc:	6890006f          	j	10f44 <atexit>
   100c0:	8082                	ret

000100c2 <_start>:
   100c2:	0000b197          	auipc	gp,0xb
   100c6:	74e18193          	addi	gp,gp,1870 # 1b810 <__global_pointer$>
   100ca:	f2018513          	addi	a0,gp,-224 # 1b730 <__stdio_exit_handler>
   100ce:	24c18613          	addi	a2,gp,588 # 1ba5c <__BSS_END__>
   100d2:	8e09                	sub	a2,a2,a0
   100d4:	4581                	li	a1,0
   100d6:	4f9000ef          	jal	10dce <memset>
   100da:	00001517          	auipc	a0,0x1
   100de:	e6a50513          	addi	a0,a0,-406 # 10f44 <atexit>
   100e2:	c519                	beqz	a0,100f0 <_start+0x2e>
   100e4:	00004517          	auipc	a0,0x4
   100e8:	d6050513          	addi	a0,a0,-672 # 13e44 <__libc_fini_array>
   100ec:	659000ef          	jal	10f44 <atexit>
   100f0:	475000ef          	jal	10d64 <__libc_init_array>
   100f4:	4502                	lw	a0,0(sp)
   100f6:	004c                	addi	a1,sp,4
   100f8:	4601                	li	a2,0
   100fa:	20b1                	jal	10146 <main>
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

00010146 <main>:
   10146:	7139                	addi	sp,sp,-64
   10148:	de06                	sw	ra,60(sp)
   1014a:	da26                	sw	s1,52(sp)
   1014c:	67e9                	lui	a5,0x1a
   1014e:	3fc78793          	addi	a5,a5,1020 # 1a3fc <__clzsi2+0x72>
   10152:	4390                	lw	a2,0(a5)
   10154:	43d4                	lw	a3,4(a5)
   10156:	4798                	lw	a4,8(a5)
   10158:	d032                	sw	a2,32(sp)
   1015a:	d236                	sw	a3,36(sp)
   1015c:	d43a                	sw	a4,40(sp)
   1015e:	00c7d783          	lhu	a5,12(a5)
   10162:	02f11623          	sh	a5,44(sp)
   10166:	4635                	li	a2,13
   10168:	4681                	li	a3,0
   1016a:	100c                	addi	a1,sp,32
   1016c:	850a                	mv	a0,sp
   1016e:	268d                	jal	104d0 <crypto_hash>
   10170:	e105                	bnez	a0,10190 <main+0x4a>
   10172:	dc22                	sw	s0,56(sp)
   10174:	84aa                	mv	s1,a0
   10176:	100c                	addi	a1,sp,32
   10178:	6569                	lui	a0,0x1a
   1017a:	3e050513          	addi	a0,a0,992 # 1a3e0 <__clzsi2+0x56>
   1017e:	169000ef          	jal	10ae6 <printf>
   10182:	6569                	lui	a0,0x1a
   10184:	3ec50513          	addi	a0,a0,1004 # 1a3ec <__clzsi2+0x62>
   10188:	15f000ef          	jal	10ae6 <printf>
   1018c:	4401                	li	s0,0
   1018e:	a805                	j	101be <main+0x78>
   10190:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10194:	47d4                	lw	a3,12(a5)
   10196:	4655                	li	a2,21
   10198:	4585                	li	a1,1
   1019a:	6569                	lui	a0,0x1a
   1019c:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x3e>
   101a0:	08d000ef          	jal	10a2c <fwrite>
   101a4:	4485                	li	s1,1
   101a6:	a01d                	j	101cc <main+0x86>
   101a8:	03040793          	addi	a5,s0,48
   101ac:	978a                	add	a5,a5,sp
   101ae:	fd07c583          	lbu	a1,-48(a5)
   101b2:	6569                	lui	a0,0x1a
   101b4:	3f450513          	addi	a0,a0,1012 # 1a3f4 <__clzsi2+0x6a>
   101b8:	12f000ef          	jal	10ae6 <printf>
   101bc:	0405                	addi	s0,s0,1
   101be:	47fd                	li	a5,31
   101c0:	fe87f4e3          	bgeu	a5,s0,101a8 <main+0x62>
   101c4:	4529                	li	a0,10
   101c6:	153000ef          	jal	10b18 <putchar>
   101ca:	5462                	lw	s0,56(sp)
   101cc:	8526                	mv	a0,s1
   101ce:	50f2                	lw	ra,60(sp)
   101d0:	54d2                	lw	s1,52(sp)
   101d2:	6121                	addi	sp,sp,64
   101d4:	8082                	ret

000101d6 <ROUND>:
   101d6:	7139                	addi	sp,sp,-64
   101d8:	de22                	sw	s0,60(sp)
   101da:	dc26                	sw	s1,56(sp)
   101dc:	491c                	lw	a5,16(a0)
   101de:	4940                	lw	s0,20(a0)
   101e0:	00f5c833          	xor	a6,a1,a5
   101e4:	01052823          	sw	a6,16(a0)
   101e8:	00052383          	lw	t2,0(a0)
   101ec:	00452283          	lw	t0,4(a0)
   101f0:	02052e03          	lw	t3,32(a0)
   101f4:	515c                	lw	a5,36(a0)
   101f6:	01c3c3b3          	xor	t2,t2,t3
   101fa:	00f2c2b3          	xor	t0,t0,a5
   101fe:	00752023          	sw	t2,0(a0)
   10202:	00552223          	sw	t0,4(a0)
   10206:	01852303          	lw	t1,24(a0)
   1020a:	01c52e83          	lw	t4,28(a0)
   1020e:	006e4e33          	xor	t3,t3,t1
   10212:	01d7c7b3          	xor	a5,a5,t4
   10216:	03c52023          	sw	t3,32(a0)
   1021a:	d15c                	sw	a5,36(a0)
   1021c:	00852f83          	lw	t6,8(a0)
   10220:	00c52f03          	lw	t5,12(a0)
   10224:	01f84833          	xor	a6,a6,t6
   10228:	01e44433          	xor	s0,s0,t5
   1022c:	01052823          	sw	a6,16(a0)
   10230:	c940                	sw	s0,20(a0)
   10232:	ffffc713          	not	a4,t6
   10236:	ffff4613          	not	a2,t5
   1023a:	00e87733          	and	a4,a6,a4
   1023e:	8e61                	and	a2,a2,s0
   10240:	00e3c733          	xor	a4,t2,a4
   10244:	00c2c633          	xor	a2,t0,a2
   10248:	c43a                	sw	a4,8(sp)
   1024a:	c632                	sw	a2,12(sp)
   1024c:	fff84593          	not	a1,a6
   10250:	fff44693          	not	a3,s0
   10254:	00b375b3          	and	a1,t1,a1
   10258:	00def6b3          	and	a3,t4,a3
   1025c:	00bfc5b3          	xor	a1,t6,a1
   10260:	00df46b3          	xor	a3,t5,a3
   10264:	c82e                	sw	a1,16(sp)
   10266:	ca36                	sw	a3,20(sp)
   10268:	fff34493          	not	s1,t1
   1026c:	fffec893          	not	a7,t4
   10270:	009e74b3          	and	s1,t3,s1
   10274:	0117f8b3          	and	a7,a5,a7
   10278:	00984833          	xor	a6,a6,s1
   1027c:	01144433          	xor	s0,s0,a7
   10280:	cc42                	sw	a6,24(sp)
   10282:	ce22                	sw	s0,28(sp)
   10284:	fffe4493          	not	s1,t3
   10288:	fff7c893          	not	a7,a5
   1028c:	0093f4b3          	and	s1,t2,s1
   10290:	0112f8b3          	and	a7,t0,a7
   10294:	00934333          	xor	t1,t1,s1
   10298:	011eceb3          	xor	t4,t4,a7
   1029c:	d01a                	sw	t1,32(sp)
   1029e:	d276                	sw	t4,36(sp)
   102a0:	fff3c393          	not	t2,t2
   102a4:	fff2c293          	not	t0,t0
   102a8:	007fffb3          	and	t6,t6,t2
   102ac:	005f7f33          	and	t5,t5,t0
   102b0:	01fe4e33          	xor	t3,t3,t6
   102b4:	01e7c8b3          	xor	a7,a5,t5
   102b8:	d472                	sw	t3,40(sp)
   102ba:	d646                	sw	a7,44(sp)
   102bc:	8db9                	xor	a1,a1,a4
   102be:	8eb1                	xor	a3,a3,a2
   102c0:	c82e                	sw	a1,16(sp)
   102c2:	ca36                	sw	a3,20(sp)
   102c4:	01c74733          	xor	a4,a4,t3
   102c8:	01164633          	xor	a2,a2,a7
   102cc:	c43a                	sw	a4,8(sp)
   102ce:	c632                	sw	a2,12(sp)
   102d0:	00684333          	xor	t1,a6,t1
   102d4:	01d44eb3          	xor	t4,s0,t4
   102d8:	d01a                	sw	t1,32(sp)
   102da:	d276                	sw	t4,36(sp)
   102dc:	fff84793          	not	a5,a6
   102e0:	fff44813          	not	a6,s0
   102e4:	cc3e                	sw	a5,24(sp)
   102e6:	ce42                	sw	a6,28(sp)
   102e8:	00d61f93          	slli	t6,a2,0xd
   102ec:	01375f13          	srli	t5,a4,0x13
   102f0:	01efefb3          	or	t6,t6,t5
   102f4:	00d71f13          	slli	t5,a4,0xd
   102f8:	01365293          	srli	t0,a2,0x13
   102fc:	005f6f33          	or	t5,t5,t0
   10300:	01f74fb3          	xor	t6,a4,t6
   10304:	01e64f33          	xor	t5,a2,t5
   10308:	00461293          	slli	t0,a2,0x4
   1030c:	01c75393          	srli	t2,a4,0x1c
   10310:	0072e2b3          	or	t0,t0,t2
   10314:	0712                	slli	a4,a4,0x4
   10316:	8271                	srli	a2,a2,0x1c
   10318:	8f51                	or	a4,a4,a2
   1031a:	005fc633          	xor	a2,t6,t0
   1031e:	00ef4733          	xor	a4,t5,a4
   10322:	c110                	sw	a2,0(a0)
   10324:	c158                	sw	a4,4(a0)
   10326:	01d5d713          	srli	a4,a1,0x1d
   1032a:	00369613          	slli	a2,a3,0x3
   1032e:	8f51                	or	a4,a4,a2
   10330:	01d6d613          	srli	a2,a3,0x1d
   10334:	00359f13          	slli	t5,a1,0x3
   10338:	01e66633          	or	a2,a2,t5
   1033c:	8e2d                	xor	a2,a2,a1
   1033e:	8f35                	xor	a4,a4,a3
   10340:	0075df13          	srli	t5,a1,0x7
   10344:	01969f93          	slli	t6,a3,0x19
   10348:	01ff6f33          	or	t5,t5,t6
   1034c:	829d                	srli	a3,a3,0x7
   1034e:	05e6                	slli	a1,a1,0x19
   10350:	8ecd                	or	a3,a3,a1
   10352:	8eb1                	xor	a3,a3,a2
   10354:	01e74733          	xor	a4,a4,t5
   10358:	c514                	sw	a3,8(a0)
   1035a:	c558                	sw	a4,12(a0)
   1035c:	01f81613          	slli	a2,a6,0x1f
   10360:	0017d713          	srli	a4,a5,0x1
   10364:	8e59                	or	a2,a2,a4
   10366:	01f79713          	slli	a4,a5,0x1f
   1036a:	00185693          	srli	a3,a6,0x1
   1036e:	8f55                	or	a4,a4,a3
   10370:	8e3d                	xor	a2,a2,a5
   10372:	00e84733          	xor	a4,a6,a4
   10376:	01a81593          	slli	a1,a6,0x1a
   1037a:	0067d693          	srli	a3,a5,0x6
   1037e:	8dd5                	or	a1,a1,a3
   10380:	01a79693          	slli	a3,a5,0x1a
   10384:	00685813          	srli	a6,a6,0x6
   10388:	0106e6b3          	or	a3,a3,a6
   1038c:	8e2d                	xor	a2,a2,a1
   1038e:	00d747b3          	xor	a5,a4,a3
   10392:	c910                	sw	a2,16(a0)
   10394:	c95c                	sw	a5,20(a0)
   10396:	016e9613          	slli	a2,t4,0x16
   1039a:	00a35793          	srli	a5,t1,0xa
   1039e:	8e5d                	or	a2,a2,a5
   103a0:	01631793          	slli	a5,t1,0x16
   103a4:	00aed713          	srli	a4,t4,0xa
   103a8:	8fd9                	or	a5,a5,a4
   103aa:	00c34633          	xor	a2,t1,a2
   103ae:	00fec6b3          	xor	a3,t4,a5
   103b2:	00fe9593          	slli	a1,t4,0xf
   103b6:	01135793          	srli	a5,t1,0x11
   103ba:	8ddd                	or	a1,a1,a5
   103bc:	00f31713          	slli	a4,t1,0xf
   103c0:	011ed793          	srli	a5,t4,0x11
   103c4:	8f5d                	or	a4,a4,a5
   103c6:	8e2d                	xor	a2,a2,a1
   103c8:	00e6c7b3          	xor	a5,a3,a4
   103cc:	cd10                	sw	a2,24(a0)
   103ce:	cd5c                	sw	a5,28(a0)
   103d0:	01989713          	slli	a4,a7,0x19
   103d4:	007e5793          	srli	a5,t3,0x7
   103d8:	8f5d                	or	a4,a4,a5
   103da:	019e1793          	slli	a5,t3,0x19
   103de:	0078d693          	srli	a3,a7,0x7
   103e2:	8fd5                	or	a5,a5,a3
   103e4:	00ee4633          	xor	a2,t3,a4
   103e8:	00f8c6b3          	xor	a3,a7,a5
   103ec:	009e5593          	srli	a1,t3,0x9
   103f0:	01789793          	slli	a5,a7,0x17
   103f4:	8ddd                	or	a1,a1,a5
   103f6:	0098d793          	srli	a5,a7,0x9
   103fa:	017e1713          	slli	a4,t3,0x17
   103fe:	8fd9                	or	a5,a5,a4
   10400:	00f64733          	xor	a4,a2,a5
   10404:	00b6c7b3          	xor	a5,a3,a1
   10408:	d118                	sw	a4,32(a0)
   1040a:	d15c                	sw	a5,36(a0)
   1040c:	5472                	lw	s0,60(sp)
   1040e:	54e2                	lw	s1,56(sp)
   10410:	6121                	addi	sp,sp,64
   10412:	8082                	ret

00010414 <P12>:
   10414:	1141                	addi	sp,sp,-16
   10416:	c606                	sw	ra,12(sp)
   10418:	c422                	sw	s0,8(sp)
   1041a:	842a                	mv	s0,a0
   1041c:	0f000593          	li	a1,240
   10420:	3b5d                	jal	101d6 <ROUND>
   10422:	0e100593          	li	a1,225
   10426:	8522                	mv	a0,s0
   10428:	337d                	jal	101d6 <ROUND>
   1042a:	0d200593          	li	a1,210
   1042e:	8522                	mv	a0,s0
   10430:	335d                	jal	101d6 <ROUND>
   10432:	0c300593          	li	a1,195
   10436:	8522                	mv	a0,s0
   10438:	3b79                	jal	101d6 <ROUND>
   1043a:	0b400593          	li	a1,180
   1043e:	8522                	mv	a0,s0
   10440:	3b59                	jal	101d6 <ROUND>
   10442:	0a500593          	li	a1,165
   10446:	8522                	mv	a0,s0
   10448:	3379                	jal	101d6 <ROUND>
   1044a:	09600593          	li	a1,150
   1044e:	8522                	mv	a0,s0
   10450:	3359                	jal	101d6 <ROUND>
   10452:	08700593          	li	a1,135
   10456:	8522                	mv	a0,s0
   10458:	3bbd                	jal	101d6 <ROUND>
   1045a:	07800593          	li	a1,120
   1045e:	8522                	mv	a0,s0
   10460:	3b9d                	jal	101d6 <ROUND>
   10462:	06900593          	li	a1,105
   10466:	8522                	mv	a0,s0
   10468:	33bd                	jal	101d6 <ROUND>
   1046a:	05a00593          	li	a1,90
   1046e:	8522                	mv	a0,s0
   10470:	339d                	jal	101d6 <ROUND>
   10472:	04b00593          	li	a1,75
   10476:	8522                	mv	a0,s0
   10478:	3bb9                	jal	101d6 <ROUND>
   1047a:	40b2                	lw	ra,12(sp)
   1047c:	4422                	lw	s0,8(sp)
   1047e:	0141                	addi	sp,sp,16
   10480:	8082                	ret

00010482 <P8>:
   10482:	1141                	addi	sp,sp,-16
   10484:	c606                	sw	ra,12(sp)
   10486:	c422                	sw	s0,8(sp)
   10488:	842a                	mv	s0,a0
   1048a:	0b400593          	li	a1,180
   1048e:	33a1                	jal	101d6 <ROUND>
   10490:	0a500593          	li	a1,165
   10494:	8522                	mv	a0,s0
   10496:	3381                	jal	101d6 <ROUND>
   10498:	09600593          	li	a1,150
   1049c:	8522                	mv	a0,s0
   1049e:	3b25                	jal	101d6 <ROUND>
   104a0:	08700593          	li	a1,135
   104a4:	8522                	mv	a0,s0
   104a6:	3b05                	jal	101d6 <ROUND>
   104a8:	07800593          	li	a1,120
   104ac:	8522                	mv	a0,s0
   104ae:	3325                	jal	101d6 <ROUND>
   104b0:	06900593          	li	a1,105
   104b4:	8522                	mv	a0,s0
   104b6:	3305                	jal	101d6 <ROUND>
   104b8:	05a00593          	li	a1,90
   104bc:	8522                	mv	a0,s0
   104be:	3b21                	jal	101d6 <ROUND>
   104c0:	04b00593          	li	a1,75
   104c4:	8522                	mv	a0,s0
   104c6:	3b01                	jal	101d6 <ROUND>
   104c8:	40b2                	lw	ra,12(sp)
   104ca:	4422                	lw	s0,8(sp)
   104cc:	0141                	addi	sp,sp,16
   104ce:	8082                	ret

000104d0 <crypto_hash>:
   104d0:	715d                	addi	sp,sp,-80
   104d2:	c686                	sw	ra,76(sp)
   104d4:	c4a2                	sw	s0,72(sp)
   104d6:	c2a6                	sw	s1,68(sp)
   104d8:	c0ca                	sw	s2,64(sp)
   104da:	de4e                	sw	s3,60(sp)
   104dc:	892a                	mv	s2,a0
   104de:	842e                	mv	s0,a1
   104e0:	89b2                	mv	s3,a2
   104e2:	84b6                	mv	s1,a3
   104e4:	10000713          	li	a4,256
   104e8:	004017b7          	lui	a5,0x401
   104ec:	c0478793          	addi	a5,a5,-1020 # 400c04 <__BSS_END__+0x3e51a8>
   104f0:	c43a                	sw	a4,8(sp)
   104f2:	c63e                	sw	a5,12(sp)
   104f4:	4781                	li	a5,0
   104f6:	4801                	li	a6,0
   104f8:	c83e                	sw	a5,16(sp)
   104fa:	ca42                	sw	a6,20(sp)
   104fc:	cc3e                	sw	a5,24(sp)
   104fe:	ce42                	sw	a6,28(sp)
   10500:	d03e                	sw	a5,32(sp)
   10502:	d242                	sw	a6,36(sp)
   10504:	d43e                	sw	a5,40(sp)
   10506:	d642                	sw	a6,44(sp)
   10508:	0028                	addi	a0,sp,8
   1050a:	3729                	jal	10414 <P12>
   1050c:	a085                	j	1056c <crypto_hash+0x9c>
   1050e:	0018d713          	srli	a4,a7,0x1
   10512:	45fd                	li	a1,31
   10514:	8d9d                	sub	a1,a1,a5
   10516:	00b75733          	srl	a4,a4,a1
   1051a:	00f898b3          	sll	a7,a7,a5
   1051e:	01166633          	or	a2,a2,a7
   10522:	8ed9                	or	a3,a3,a4
   10524:	0805                	addi	a6,a6,1
   10526:	479d                	li	a5,7
   10528:	0307c263          	blt	a5,a6,1054c <crypto_hash+0x7c>
   1052c:	010407b3          	add	a5,s0,a6
   10530:	0007c883          	lbu	a7,0(a5)
   10534:	479d                	li	a5,7
   10536:	410787b3          	sub	a5,a5,a6
   1053a:	078e                	slli	a5,a5,0x3
   1053c:	fe078713          	addi	a4,a5,-32
   10540:	fc0747e3          	bltz	a4,1050e <crypto_hash+0x3e>
   10544:	00e89733          	sll	a4,a7,a4
   10548:	4881                	li	a7,0
   1054a:	bfd1                	j	1051e <crypto_hash+0x4e>
   1054c:	47a2                	lw	a5,8(sp)
   1054e:	8fb1                	xor	a5,a5,a2
   10550:	c43e                	sw	a5,8(sp)
   10552:	47b2                	lw	a5,12(sp)
   10554:	8fb5                	xor	a5,a5,a3
   10556:	c63e                	sw	a5,12(sp)
   10558:	0028                	addi	a0,sp,8
   1055a:	3725                	jal	10482 <P8>
   1055c:	0421                	addi	s0,s0,8
   1055e:	ff898793          	addi	a5,s3,-8
   10562:	0137b733          	sltu	a4,a5,s3
   10566:	14fd                	addi	s1,s1,-1
   10568:	89be                	mv	s3,a5
   1056a:	94ba                	add	s1,s1,a4
   1056c:	c489                	beqz	s1,10576 <crypto_hash+0xa6>
   1056e:	4601                	li	a2,0
   10570:	4681                	li	a3,0
   10572:	4801                	li	a6,0
   10574:	bf4d                	j	10526 <crypto_hash+0x56>
   10576:	e481                	bnez	s1,1057e <crypto_hash+0xae>
   10578:	479d                	li	a5,7
   1057a:	ff37eae3          	bltu	a5,s3,1056e <crypto_hash+0x9e>
   1057e:	88ce                	mv	a7,s3
   10580:	4501                	li	a0,0
   10582:	4581                	li	a1,0
   10584:	4681                	li	a3,0
   10586:	a829                	j	105a0 <crypto_hash+0xd0>
   10588:	00165713          	srli	a4,a2,0x1
   1058c:	487d                	li	a6,31
   1058e:	40f80833          	sub	a6,a6,a5
   10592:	01075733          	srl	a4,a4,a6
   10596:	00f61633          	sll	a2,a2,a5
   1059a:	8d51                	or	a0,a0,a2
   1059c:	8dd9                	or	a1,a1,a4
   1059e:	0685                	addi	a3,a3,1
   105a0:	0316d163          	bge	a3,a7,105c2 <crypto_hash+0xf2>
   105a4:	00d407b3          	add	a5,s0,a3
   105a8:	0007c603          	lbu	a2,0(a5)
   105ac:	479d                	li	a5,7
   105ae:	8f95                	sub	a5,a5,a3
   105b0:	078e                	slli	a5,a5,0x3
   105b2:	fe078713          	addi	a4,a5,-32
   105b6:	fc0749e3          	bltz	a4,10588 <crypto_hash+0xb8>
   105ba:	00e61733          	sll	a4,a2,a4
   105be:	4601                	li	a2,0
   105c0:	bfe9                	j	1059a <crypto_hash+0xca>
   105c2:	4722                	lw	a4,8(sp)
   105c4:	8f29                	xor	a4,a4,a0
   105c6:	47b2                	lw	a5,12(sp)
   105c8:	8fad                	xor	a5,a5,a1
   105ca:	c43a                	sw	a4,8(sp)
   105cc:	c63e                	sw	a5,12(sp)
   105ce:	469d                	li	a3,7
   105d0:	413686b3          	sub	a3,a3,s3
   105d4:	068e                	slli	a3,a3,0x3
   105d6:	fe068593          	addi	a1,a3,-32
   105da:	0205c163          	bltz	a1,105fc <crypto_hash+0x12c>
   105de:	08000613          	li	a2,128
   105e2:	00b61633          	sll	a2,a2,a1
   105e6:	4681                	li	a3,0
   105e8:	8f35                	xor	a4,a4,a3
   105ea:	c43a                	sw	a4,8(sp)
   105ec:	8fb1                	xor	a5,a5,a2
   105ee:	c63e                	sw	a5,12(sp)
   105f0:	0028                	addi	a0,sp,8
   105f2:	350d                	jal	10414 <P12>
   105f4:	02000413          	li	s0,32
   105f8:	4481                	li	s1,0
   105fa:	a08d                	j	1065c <crypto_hash+0x18c>
   105fc:	45fd                	li	a1,31
   105fe:	8d95                	sub	a1,a1,a3
   10600:	04000613          	li	a2,64
   10604:	00b65633          	srl	a2,a2,a1
   10608:	08000593          	li	a1,128
   1060c:	00d596b3          	sll	a3,a1,a3
   10610:	bfe1                	j	105e8 <crypto_hash+0x118>
   10612:	00159713          	slli	a4,a1,0x1
   10616:	467d                	li	a2,31
   10618:	8e1d                	sub	a2,a2,a5
   1061a:	00c71733          	sll	a4,a4,a2
   1061e:	00f557b3          	srl	a5,a0,a5
   10622:	8fd9                	or	a5,a5,a4
   10624:	00d90733          	add	a4,s2,a3
   10628:	00f70023          	sb	a5,0(a4)
   1062c:	0685                	addi	a3,a3,1
   1062e:	479d                	li	a5,7
   10630:	00d7cc63          	blt	a5,a3,10648 <crypto_hash+0x178>
   10634:	479d                	li	a5,7
   10636:	8f95                	sub	a5,a5,a3
   10638:	078e                	slli	a5,a5,0x3
   1063a:	fe078713          	addi	a4,a5,-32
   1063e:	fc074ae3          	bltz	a4,10612 <crypto_hash+0x142>
   10642:	00e5d7b3          	srl	a5,a1,a4
   10646:	bff9                	j	10624 <crypto_hash+0x154>
   10648:	0028                	addi	a0,sp,8
   1064a:	3d25                	jal	10482 <P8>
   1064c:	0921                	addi	s2,s2,8
   1064e:	ff840793          	addi	a5,s0,-8
   10652:	0087b733          	sltu	a4,a5,s0
   10656:	14fd                	addi	s1,s1,-1
   10658:	843e                	mv	s0,a5
   1065a:	94ba                	add	s1,s1,a4
   1065c:	c489                	beqz	s1,10666 <crypto_hash+0x196>
   1065e:	4522                	lw	a0,8(sp)
   10660:	45b2                	lw	a1,12(sp)
   10662:	4681                	li	a3,0
   10664:	b7e9                	j	1062e <crypto_hash+0x15e>
   10666:	e481                	bnez	s1,1066e <crypto_hash+0x19e>
   10668:	47a1                	li	a5,8
   1066a:	fe87eae3          	bltu	a5,s0,1065e <crypto_hash+0x18e>
   1066e:	4522                	lw	a0,8(sp)
   10670:	45b2                	lw	a1,12(sp)
   10672:	4681                	li	a3,0
   10674:	a839                	j	10692 <crypto_hash+0x1c2>
   10676:	00159713          	slli	a4,a1,0x1
   1067a:	467d                	li	a2,31
   1067c:	8e1d                	sub	a2,a2,a5
   1067e:	00c71733          	sll	a4,a4,a2
   10682:	00f557b3          	srl	a5,a0,a5
   10686:	8fd9                	or	a5,a5,a4
   10688:	00d90733          	add	a4,s2,a3
   1068c:	00f70023          	sb	a5,0(a4)
   10690:	0685                	addi	a3,a3,1
   10692:	0086dc63          	bge	a3,s0,106aa <crypto_hash+0x1da>
   10696:	479d                	li	a5,7
   10698:	8f95                	sub	a5,a5,a3
   1069a:	078e                	slli	a5,a5,0x3
   1069c:	fe078713          	addi	a4,a5,-32
   106a0:	fc074be3          	bltz	a4,10676 <crypto_hash+0x1a6>
   106a4:	00e5d7b3          	srl	a5,a1,a4
   106a8:	b7c5                	j	10688 <crypto_hash+0x1b8>
   106aa:	4501                	li	a0,0
   106ac:	40b6                	lw	ra,76(sp)
   106ae:	4426                	lw	s0,72(sp)
   106b0:	4496                	lw	s1,68(sp)
   106b2:	4906                	lw	s2,64(sp)
   106b4:	59f2                	lw	s3,60(sp)
   106b6:	6161                	addi	sp,sp,80
   106b8:	8082                	ret

000106ba <__fp_lock>:
   106ba:	4501                	li	a0,0
   106bc:	8082                	ret

000106be <stdio_exit_handler>:
   106be:	666d                	lui	a2,0x1b
   106c0:	65cd                	lui	a1,0x13
   106c2:	656d                	lui	a0,0x1b
   106c4:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   106c8:	45c58593          	addi	a1,a1,1116 # 1345c <_fclose_r>
   106cc:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   106d0:	aca9                	j	1092a <_fwalk_sglue>

000106d2 <cleanup_stdio>:
   106d2:	414c                	lw	a1,4(a0)
   106d4:	1141                	addi	sp,sp,-16
   106d6:	c422                	sw	s0,8(sp)
   106d8:	c606                	sw	ra,12(sp)
   106da:	f5c18793          	addi	a5,gp,-164 # 1b76c <__sf>
   106de:	842a                	mv	s0,a0
   106e0:	00f58463          	beq	a1,a5,106e8 <cleanup_stdio+0x16>
   106e4:	579020ef          	jal	1345c <_fclose_r>
   106e8:	440c                	lw	a1,8(s0)
   106ea:	fc418793          	addi	a5,gp,-60 # 1b7d4 <__sf+0x68>
   106ee:	00f58563          	beq	a1,a5,106f8 <cleanup_stdio+0x26>
   106f2:	8522                	mv	a0,s0
   106f4:	569020ef          	jal	1345c <_fclose_r>
   106f8:	444c                	lw	a1,12(s0)
   106fa:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   106fe:	00f58863          	beq	a1,a5,1070e <cleanup_stdio+0x3c>
   10702:	8522                	mv	a0,s0
   10704:	4422                	lw	s0,8(sp)
   10706:	40b2                	lw	ra,12(sp)
   10708:	0141                	addi	sp,sp,16
   1070a:	5530206f          	j	1345c <_fclose_r>
   1070e:	40b2                	lw	ra,12(sp)
   10710:	4422                	lw	s0,8(sp)
   10712:	0141                	addi	sp,sp,16
   10714:	8082                	ret

00010716 <__fp_unlock>:
   10716:	4501                	li	a0,0
   10718:	8082                	ret

0001071a <global_stdio_init.part.0>:
   1071a:	1101                	addi	sp,sp,-32
   1071c:	67c1                	lui	a5,0x10
   1071e:	cc22                	sw	s0,24(sp)
   10720:	6be78793          	addi	a5,a5,1726 # 106be <stdio_exit_handler>
   10724:	f5c18413          	addi	s0,gp,-164 # 1b76c <__sf>
   10728:	ce06                	sw	ra,28(sp)
   1072a:	ca26                	sw	s1,20(sp)
   1072c:	c84a                	sw	s2,16(sp)
   1072e:	c64e                	sw	s3,12(sp)
   10730:	c452                	sw	s4,8(sp)
   10732:	f2f1a023          	sw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   10736:	4621                	li	a2,8
   10738:	4791                	li	a5,4
   1073a:	4581                	li	a1,0
   1073c:	fb818513          	addi	a0,gp,-72 # 1b7c8 <__sf+0x5c>
   10740:	c45c                	sw	a5,12(s0)
   10742:	00042023          	sw	zero,0(s0)
   10746:	00042223          	sw	zero,4(s0)
   1074a:	00042423          	sw	zero,8(s0)
   1074e:	06042223          	sw	zero,100(s0)
   10752:	00042823          	sw	zero,16(s0)
   10756:	00042a23          	sw	zero,20(s0)
   1075a:	00042c23          	sw	zero,24(s0)
   1075e:	2d85                	jal	10dce <memset>
   10760:	67c1                	lui	a5,0x10
   10762:	6a45                	lui	s4,0x11
   10764:	69c5                	lui	s3,0x11
   10766:	6945                	lui	s2,0x11
   10768:	64c5                	lui	s1,0x11
   1076a:	b26a0a13          	addi	s4,s4,-1242 # 10b26 <__sread>
   1076e:	b6098993          	addi	s3,s3,-1184 # 10b60 <__swrite>
   10772:	bb090913          	addi	s2,s2,-1104 # 10bb0 <__sseek>
   10776:	bf848493          	addi	s1,s1,-1032 # 10bf8 <__sclose>
   1077a:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   1077c:	4621                	li	a2,8
   1077e:	4581                	li	a1,0
   10780:	02018513          	addi	a0,gp,32 # 1b830 <__global_pointer$+0x20>
   10784:	03442023          	sw	s4,32(s0)
   10788:	03342223          	sw	s3,36(s0)
   1078c:	03242423          	sw	s2,40(s0)
   10790:	d444                	sw	s1,44(s0)
   10792:	d87c                	sw	a5,116(s0)
   10794:	cc40                	sw	s0,28(s0)
   10796:	06042423          	sw	zero,104(s0)
   1079a:	06042623          	sw	zero,108(s0)
   1079e:	06042823          	sw	zero,112(s0)
   107a2:	0c042623          	sw	zero,204(s0)
   107a6:	06042c23          	sw	zero,120(s0)
   107aa:	06042e23          	sw	zero,124(s0)
   107ae:	08042023          	sw	zero,128(s0)
   107b2:	2d31                	jal	10dce <memset>
   107b4:	000207b7          	lui	a5,0x20
   107b8:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x45b6>
   107ba:	fc418713          	addi	a4,gp,-60 # 1b7d4 <__sf+0x68>
   107be:	4621                	li	a2,8
   107c0:	4581                	li	a1,0
   107c2:	08818513          	addi	a0,gp,136 # 1b898 <__global_pointer$+0x88>
   107c6:	09442423          	sw	s4,136(s0)
   107ca:	09342623          	sw	s3,140(s0)
   107ce:	09242823          	sw	s2,144(s0)
   107d2:	08942a23          	sw	s1,148(s0)
   107d6:	0cf42e23          	sw	a5,220(s0)
   107da:	08e42223          	sw	a4,132(s0)
   107de:	0c042823          	sw	zero,208(s0)
   107e2:	0c042a23          	sw	zero,212(s0)
   107e6:	0c042c23          	sw	zero,216(s0)
   107ea:	12042a23          	sw	zero,308(s0)
   107ee:	0e042023          	sw	zero,224(s0)
   107f2:	0e042223          	sw	zero,228(s0)
   107f6:	0e042423          	sw	zero,232(s0)
   107fa:	2bd1                	jal	10dce <memset>
   107fc:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   10800:	0f442823          	sw	s4,240(s0)
   10804:	0f342a23          	sw	s3,244(s0)
   10808:	0f242c23          	sw	s2,248(s0)
   1080c:	0e942e23          	sw	s1,252(s0)
   10810:	40f2                	lw	ra,28(sp)
   10812:	0ef42623          	sw	a5,236(s0)
   10816:	4462                	lw	s0,24(sp)
   10818:	44d2                	lw	s1,20(sp)
   1081a:	4942                	lw	s2,16(sp)
   1081c:	49b2                	lw	s3,12(sp)
   1081e:	4a22                	lw	s4,8(sp)
   10820:	6105                	addi	sp,sp,32
   10822:	8082                	ret

00010824 <__sfp>:
   10824:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   10828:	1101                	addi	sp,sp,-32
   1082a:	c64e                	sw	s3,12(sp)
   1082c:	ce06                	sw	ra,28(sp)
   1082e:	cc22                	sw	s0,24(sp)
   10830:	ca26                	sw	s1,20(sp)
   10832:	c84a                	sw	s2,16(sp)
   10834:	89aa                	mv	s3,a0
   10836:	c7cd                	beqz	a5,108e0 <__sfp+0xbc>
   10838:	696d                	lui	s2,0x1b
   1083a:	01090913          	addi	s2,s2,16 # 1b010 <__sglue>
   1083e:	54fd                	li	s1,-1
   10840:	00492783          	lw	a5,4(s2)
   10844:	00892403          	lw	s0,8(s2)
   10848:	17fd                	addi	a5,a5,-1
   1084a:	0007d763          	bgez	a5,10858 <__sfp+0x34>
   1084e:	a8b9                	j	108ac <__sfp+0x88>
   10850:	06840413          	addi	s0,s0,104
   10854:	04978c63          	beq	a5,s1,108ac <__sfp+0x88>
   10858:	00c41703          	lh	a4,12(s0)
   1085c:	17fd                	addi	a5,a5,-1
   1085e:	fb6d                	bnez	a4,10850 <__sfp+0x2c>
   10860:	77c1                	lui	a5,0xffff0
   10862:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd45a5>
   10864:	c45c                	sw	a5,12(s0)
   10866:	06042223          	sw	zero,100(s0)
   1086a:	00042023          	sw	zero,0(s0)
   1086e:	00042423          	sw	zero,8(s0)
   10872:	00042223          	sw	zero,4(s0)
   10876:	00042823          	sw	zero,16(s0)
   1087a:	00042a23          	sw	zero,20(s0)
   1087e:	00042c23          	sw	zero,24(s0)
   10882:	4621                	li	a2,8
   10884:	4581                	li	a1,0
   10886:	05c40513          	addi	a0,s0,92
   1088a:	2391                	jal	10dce <memset>
   1088c:	02042823          	sw	zero,48(s0)
   10890:	02042a23          	sw	zero,52(s0)
   10894:	04042223          	sw	zero,68(s0)
   10898:	04042423          	sw	zero,72(s0)
   1089c:	40f2                	lw	ra,28(sp)
   1089e:	8522                	mv	a0,s0
   108a0:	4462                	lw	s0,24(sp)
   108a2:	44d2                	lw	s1,20(sp)
   108a4:	4942                	lw	s2,16(sp)
   108a6:	49b2                	lw	s3,12(sp)
   108a8:	6105                	addi	sp,sp,32
   108aa:	8082                	ret
   108ac:	00092403          	lw	s0,0(s2)
   108b0:	c019                	beqz	s0,108b6 <__sfp+0x92>
   108b2:	8922                	mv	s2,s0
   108b4:	b771                	j	10840 <__sfp+0x1c>
   108b6:	1ac00593          	li	a1,428
   108ba:	854e                	mv	a0,s3
   108bc:	183000ef          	jal	1123e <_malloc_r>
   108c0:	842a                	mv	s0,a0
   108c2:	c10d                	beqz	a0,108e4 <__sfp+0xc0>
   108c4:	0531                	addi	a0,a0,12
   108c6:	4791                	li	a5,4
   108c8:	00042023          	sw	zero,0(s0)
   108cc:	c05c                	sw	a5,4(s0)
   108ce:	c408                	sw	a0,8(s0)
   108d0:	1a000613          	li	a2,416
   108d4:	4581                	li	a1,0
   108d6:	29e5                	jal	10dce <memset>
   108d8:	00892023          	sw	s0,0(s2)
   108dc:	8922                	mv	s2,s0
   108de:	b78d                	j	10840 <__sfp+0x1c>
   108e0:	3d2d                	jal	1071a <global_stdio_init.part.0>
   108e2:	bf99                	j	10838 <__sfp+0x14>
   108e4:	00092023          	sw	zero,0(s2)
   108e8:	47b1                	li	a5,12
   108ea:	00f9a023          	sw	a5,0(s3)
   108ee:	b77d                	j	1089c <__sfp+0x78>

000108f0 <__sinit>:
   108f0:	595c                	lw	a5,52(a0)
   108f2:	c391                	beqz	a5,108f6 <__sinit+0x6>
   108f4:	8082                	ret
   108f6:	f201a703          	lw	a4,-224(gp) # 1b730 <__stdio_exit_handler>
   108fa:	67c1                	lui	a5,0x10
   108fc:	6d278793          	addi	a5,a5,1746 # 106d2 <cleanup_stdio>
   10900:	d95c                	sw	a5,52(a0)
   10902:	fb6d                	bnez	a4,108f4 <__sinit+0x4>
   10904:	bd19                	j	1071a <global_stdio_init.part.0>

00010906 <__sfp_lock_acquire>:
   10906:	8082                	ret

00010908 <__sfp_lock_release>:
   10908:	8082                	ret

0001090a <__fp_lock_all>:
   1090a:	666d                	lui	a2,0x1b
   1090c:	65c1                	lui	a1,0x10
   1090e:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   10912:	6ba58593          	addi	a1,a1,1722 # 106ba <__fp_lock>
   10916:	4501                	li	a0,0
   10918:	a809                	j	1092a <_fwalk_sglue>

0001091a <__fp_unlock_all>:
   1091a:	666d                	lui	a2,0x1b
   1091c:	65c1                	lui	a1,0x10
   1091e:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   10922:	71658593          	addi	a1,a1,1814 # 10716 <__fp_unlock>
   10926:	4501                	li	a0,0
   10928:	a009                	j	1092a <_fwalk_sglue>

0001092a <_fwalk_sglue>:
   1092a:	7179                	addi	sp,sp,-48
   1092c:	d04a                	sw	s2,32(sp)
   1092e:	ce4e                	sw	s3,28(sp)
   10930:	cc52                	sw	s4,24(sp)
   10932:	ca56                	sw	s5,20(sp)
   10934:	c85a                	sw	s6,16(sp)
   10936:	c65e                	sw	s7,12(sp)
   10938:	d606                	sw	ra,44(sp)
   1093a:	d422                	sw	s0,40(sp)
   1093c:	d226                	sw	s1,36(sp)
   1093e:	8b2a                	mv	s6,a0
   10940:	8bae                	mv	s7,a1
   10942:	8ab2                	mv	s5,a2
   10944:	4a01                	li	s4,0
   10946:	4985                	li	s3,1
   10948:	597d                	li	s2,-1
   1094a:	004aa483          	lw	s1,4(s5)
   1094e:	008aa403          	lw	s0,8(s5)
   10952:	14fd                	addi	s1,s1,-1
   10954:	0204c463          	bltz	s1,1097c <_fwalk_sglue+0x52>
   10958:	00c45783          	lhu	a5,12(s0)
   1095c:	00f9fb63          	bgeu	s3,a5,10972 <_fwalk_sglue+0x48>
   10960:	00e41783          	lh	a5,14(s0)
   10964:	85a2                	mv	a1,s0
   10966:	855a                	mv	a0,s6
   10968:	01278563          	beq	a5,s2,10972 <_fwalk_sglue+0x48>
   1096c:	9b82                	jalr	s7
   1096e:	00aa6a33          	or	s4,s4,a0
   10972:	14fd                	addi	s1,s1,-1
   10974:	06840413          	addi	s0,s0,104
   10978:	ff2490e3          	bne	s1,s2,10958 <_fwalk_sglue+0x2e>
   1097c:	000aaa83          	lw	s5,0(s5)
   10980:	fc0a95e3          	bnez	s5,1094a <_fwalk_sglue+0x20>
   10984:	50b2                	lw	ra,44(sp)
   10986:	5422                	lw	s0,40(sp)
   10988:	5492                	lw	s1,36(sp)
   1098a:	5902                	lw	s2,32(sp)
   1098c:	49f2                	lw	s3,28(sp)
   1098e:	4ad2                	lw	s5,20(sp)
   10990:	4b42                	lw	s6,16(sp)
   10992:	4bb2                	lw	s7,12(sp)
   10994:	8552                	mv	a0,s4
   10996:	4a62                	lw	s4,24(sp)
   10998:	6145                	addi	sp,sp,48
   1099a:	8082                	ret

0001099c <_fwrite_r>:
   1099c:	715d                	addi	sp,sp,-80
   1099e:	de4e                	sw	s3,60(sp)
   109a0:	02c689b3          	mul	s3,a3,a2
   109a4:	087c                	addi	a5,sp,28
   109a6:	d23e                	sw	a5,36(sp)
   109a8:	4785                	li	a5,1
   109aa:	c4a2                	sw	s0,72(sp)
   109ac:	c2a6                	sw	s1,68(sp)
   109ae:	c0ca                	sw	s2,64(sp)
   109b0:	ce2e                	sw	a1,28(sp)
   109b2:	c686                	sw	ra,76(sp)
   109b4:	d43e                	sw	a5,40(sp)
   109b6:	d04e                	sw	s3,32(sp)
   109b8:	d64e                	sw	s3,44(sp)
   109ba:	8932                	mv	s2,a2
   109bc:	84b6                	mv	s1,a3
   109be:	842a                	mv	s0,a0
   109c0:	85ba                	mv	a1,a4
   109c2:	c119                	beqz	a0,109c8 <_fwrite_r+0x2c>
   109c4:	595c                	lw	a5,52(a0)
   109c6:	cfb9                	beqz	a5,10a24 <_fwrite_r+0x88>
   109c8:	00c59703          	lh	a4,12(a1)
   109cc:	51fc                	lw	a5,100(a1)
   109ce:	01271693          	slli	a3,a4,0x12
   109d2:	0006ca63          	bltz	a3,109e6 <_fwrite_r+0x4a>
   109d6:	76f9                	lui	a3,0xffffe
   109d8:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   109da:	6609                	lui	a2,0x2
   109dc:	8f51                	or	a4,a4,a2
   109de:	8ff5                	and	a5,a5,a3
   109e0:	00e59623          	sh	a4,12(a1)
   109e4:	d1fc                	sw	a5,100(a1)
   109e6:	01279713          	slli	a4,a5,0x12
   109ea:	4501                	li	a0,0
   109ec:	00075963          	bgez	a4,109fe <_fwrite_r+0x62>
   109f0:	40b6                	lw	ra,76(sp)
   109f2:	4426                	lw	s0,72(sp)
   109f4:	4496                	lw	s1,68(sp)
   109f6:	4906                	lw	s2,64(sp)
   109f8:	59f2                	lw	s3,60(sp)
   109fa:	6161                	addi	sp,sp,80
   109fc:	8082                	ret
   109fe:	1050                	addi	a2,sp,36
   10a00:	8522                	mv	a0,s0
   10a02:	523020ef          	jal	13724 <__sfvwrite_r>
   10a06:	87aa                	mv	a5,a0
   10a08:	8526                	mv	a0,s1
   10a0a:	d3fd                	beqz	a5,109f0 <_fwrite_r+0x54>
   10a0c:	57b2                	lw	a5,44(sp)
   10a0e:	40b6                	lw	ra,76(sp)
   10a10:	4426                	lw	s0,72(sp)
   10a12:	40f989b3          	sub	s3,s3,a5
   10a16:	0329d533          	divu	a0,s3,s2
   10a1a:	4496                	lw	s1,68(sp)
   10a1c:	4906                	lw	s2,64(sp)
   10a1e:	59f2                	lw	s3,60(sp)
   10a20:	6161                	addi	sp,sp,80
   10a22:	8082                	ret
   10a24:	c63a                	sw	a4,12(sp)
   10a26:	35e9                	jal	108f0 <__sinit>
   10a28:	45b2                	lw	a1,12(sp)
   10a2a:	bf79                	j	109c8 <_fwrite_r+0x2c>

00010a2c <fwrite>:
   10a2c:	715d                	addi	sp,sp,-80
   10a2e:	c0ca                	sw	s2,64(sp)
   10a30:	02c58933          	mul	s2,a1,a2
   10a34:	de4e                	sw	s3,60(sp)
   10a36:	f141a983          	lw	s3,-236(gp) # 1b724 <_impure_ptr>
   10a3a:	087c                	addi	a5,sp,28
   10a3c:	d23e                	sw	a5,36(sp)
   10a3e:	4785                	li	a5,1
   10a40:	c4a2                	sw	s0,72(sp)
   10a42:	c2a6                	sw	s1,68(sp)
   10a44:	c686                	sw	ra,76(sp)
   10a46:	ce2a                	sw	a0,28(sp)
   10a48:	d43e                	sw	a5,40(sp)
   10a4a:	d04a                	sw	s2,32(sp)
   10a4c:	d64a                	sw	s2,44(sp)
   10a4e:	84ae                	mv	s1,a1
   10a50:	8432                	mv	s0,a2
   10a52:	85b6                	mv	a1,a3
   10a54:	00098563          	beqz	s3,10a5e <fwrite+0x32>
   10a58:	0349a783          	lw	a5,52(s3)
   10a5c:	cfb9                	beqz	a5,10aba <fwrite+0x8e>
   10a5e:	00c59703          	lh	a4,12(a1)
   10a62:	51fc                	lw	a5,100(a1)
   10a64:	01271693          	slli	a3,a4,0x12
   10a68:	0006ca63          	bltz	a3,10a7c <fwrite+0x50>
   10a6c:	76f9                	lui	a3,0xffffe
   10a6e:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   10a70:	6609                	lui	a2,0x2
   10a72:	8f51                	or	a4,a4,a2
   10a74:	8ff5                	and	a5,a5,a3
   10a76:	00e59623          	sh	a4,12(a1)
   10a7a:	d1fc                	sw	a5,100(a1)
   10a7c:	01279713          	slli	a4,a5,0x12
   10a80:	4501                	li	a0,0
   10a82:	00075963          	bgez	a4,10a94 <fwrite+0x68>
   10a86:	40b6                	lw	ra,76(sp)
   10a88:	4426                	lw	s0,72(sp)
   10a8a:	4496                	lw	s1,68(sp)
   10a8c:	4906                	lw	s2,64(sp)
   10a8e:	59f2                	lw	s3,60(sp)
   10a90:	6161                	addi	sp,sp,80
   10a92:	8082                	ret
   10a94:	1050                	addi	a2,sp,36
   10a96:	854e                	mv	a0,s3
   10a98:	48d020ef          	jal	13724 <__sfvwrite_r>
   10a9c:	87aa                	mv	a5,a0
   10a9e:	8522                	mv	a0,s0
   10aa0:	d3fd                	beqz	a5,10a86 <fwrite+0x5a>
   10aa2:	57b2                	lw	a5,44(sp)
   10aa4:	40b6                	lw	ra,76(sp)
   10aa6:	4426                	lw	s0,72(sp)
   10aa8:	40f90933          	sub	s2,s2,a5
   10aac:	02995533          	divu	a0,s2,s1
   10ab0:	59f2                	lw	s3,60(sp)
   10ab2:	4496                	lw	s1,68(sp)
   10ab4:	4906                	lw	s2,64(sp)
   10ab6:	6161                	addi	sp,sp,80
   10ab8:	8082                	ret
   10aba:	854e                	mv	a0,s3
   10abc:	c636                	sw	a3,12(sp)
   10abe:	3d0d                	jal	108f0 <__sinit>
   10ac0:	45b2                	lw	a1,12(sp)
   10ac2:	bf71                	j	10a5e <fwrite+0x32>

00010ac4 <_printf_r>:
   10ac4:	7139                	addi	sp,sp,-64
   10ac6:	d432                	sw	a2,40(sp)
   10ac8:	d636                	sw	a3,44(sp)
   10aca:	d83a                	sw	a4,48(sp)
   10acc:	da3e                	sw	a5,52(sp)
   10ace:	dc42                	sw	a6,56(sp)
   10ad0:	de46                	sw	a7,60(sp)
   10ad2:	862e                	mv	a2,a1
   10ad4:	450c                	lw	a1,8(a0)
   10ad6:	1034                	addi	a3,sp,40
   10ad8:	ce06                	sw	ra,28(sp)
   10ada:	c636                	sw	a3,12(sp)
   10adc:	50b000ef          	jal	117e6 <_vfprintf_r>
   10ae0:	40f2                	lw	ra,28(sp)
   10ae2:	6121                	addi	sp,sp,64
   10ae4:	8082                	ret

00010ae6 <printf>:
   10ae6:	f141a303          	lw	t1,-236(gp) # 1b724 <_impure_ptr>
   10aea:	7139                	addi	sp,sp,-64
   10aec:	d432                	sw	a2,40(sp)
   10aee:	d636                	sw	a3,44(sp)
   10af0:	d22e                	sw	a1,36(sp)
   10af2:	d83a                	sw	a4,48(sp)
   10af4:	da3e                	sw	a5,52(sp)
   10af6:	dc42                	sw	a6,56(sp)
   10af8:	de46                	sw	a7,60(sp)
   10afa:	00832583          	lw	a1,8(t1) # 10144 <frame_dummy+0x18>
   10afe:	1054                	addi	a3,sp,36
   10b00:	862a                	mv	a2,a0
   10b02:	851a                	mv	a0,t1
   10b04:	ce06                	sw	ra,28(sp)
   10b06:	c636                	sw	a3,12(sp)
   10b08:	4df000ef          	jal	117e6 <_vfprintf_r>
   10b0c:	40f2                	lw	ra,28(sp)
   10b0e:	6121                	addi	sp,sp,64
   10b10:	8082                	ret

00010b12 <_putchar_r>:
   10b12:	4510                	lw	a2,8(a0)
   10b14:	75b0206f          	j	13a6e <_putc_r>

00010b18 <putchar>:
   10b18:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10b1c:	85aa                	mv	a1,a0
   10b1e:	4790                	lw	a2,8(a5)
   10b20:	853e                	mv	a0,a5
   10b22:	74d0206f          	j	13a6e <_putc_r>

00010b26 <__sread>:
   10b26:	1141                	addi	sp,sp,-16
   10b28:	c422                	sw	s0,8(sp)
   10b2a:	842e                	mv	s0,a1
   10b2c:	00e59583          	lh	a1,14(a1)
   10b30:	c606                	sw	ra,12(sp)
   10b32:	2a6d                	jal	10cec <_read_r>
   10b34:	00054963          	bltz	a0,10b46 <__sread+0x20>
   10b38:	483c                	lw	a5,80(s0)
   10b3a:	40b2                	lw	ra,12(sp)
   10b3c:	97aa                	add	a5,a5,a0
   10b3e:	c83c                	sw	a5,80(s0)
   10b40:	4422                	lw	s0,8(sp)
   10b42:	0141                	addi	sp,sp,16
   10b44:	8082                	ret
   10b46:	00c45783          	lhu	a5,12(s0)
   10b4a:	777d                	lui	a4,0xfffff
   10b4c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10b4e:	8ff9                	and	a5,a5,a4
   10b50:	40b2                	lw	ra,12(sp)
   10b52:	00f41623          	sh	a5,12(s0)
   10b56:	4422                	lw	s0,8(sp)
   10b58:	0141                	addi	sp,sp,16
   10b5a:	8082                	ret

00010b5c <__seofread>:
   10b5c:	4501                	li	a0,0
   10b5e:	8082                	ret

00010b60 <__swrite>:
   10b60:	00c59783          	lh	a5,12(a1)
   10b64:	1101                	addi	sp,sp,-32
   10b66:	cc22                	sw	s0,24(sp)
   10b68:	ca26                	sw	s1,20(sp)
   10b6a:	c84a                	sw	s2,16(sp)
   10b6c:	c64e                	sw	s3,12(sp)
   10b6e:	ce06                	sw	ra,28(sp)
   10b70:	1007f713          	andi	a4,a5,256
   10b74:	842e                	mv	s0,a1
   10b76:	84aa                	mv	s1,a0
   10b78:	8932                	mv	s2,a2
   10b7a:	89b6                	mv	s3,a3
   10b7c:	e315                	bnez	a4,10ba0 <__swrite+0x40>
   10b7e:	777d                	lui	a4,0xfffff
   10b80:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10b82:	8ff9                	and	a5,a5,a4
   10b84:	00e41583          	lh	a1,14(s0)
   10b88:	00f41623          	sh	a5,12(s0)
   10b8c:	4462                	lw	s0,24(sp)
   10b8e:	40f2                	lw	ra,28(sp)
   10b90:	86ce                	mv	a3,s3
   10b92:	864a                	mv	a2,s2
   10b94:	49b2                	lw	s3,12(sp)
   10b96:	4942                	lw	s2,16(sp)
   10b98:	8526                	mv	a0,s1
   10b9a:	44d2                	lw	s1,20(sp)
   10b9c:	6105                	addi	sp,sp,32
   10b9e:	a269                	j	10d28 <_write_r>
   10ba0:	00e59583          	lh	a1,14(a1)
   10ba4:	4689                	li	a3,2
   10ba6:	4601                	li	a2,0
   10ba8:	2221                	jal	10cb0 <_lseek_r>
   10baa:	00c41783          	lh	a5,12(s0)
   10bae:	bfc1                	j	10b7e <__swrite+0x1e>

00010bb0 <__sseek>:
   10bb0:	1141                	addi	sp,sp,-16
   10bb2:	c422                	sw	s0,8(sp)
   10bb4:	842e                	mv	s0,a1
   10bb6:	00e59583          	lh	a1,14(a1)
   10bba:	c606                	sw	ra,12(sp)
   10bbc:	28d5                	jal	10cb0 <_lseek_r>
   10bbe:	57fd                	li	a5,-1
   10bc0:	00f50f63          	beq	a0,a5,10bde <__sseek+0x2e>
   10bc4:	00c45783          	lhu	a5,12(s0)
   10bc8:	6705                	lui	a4,0x1
   10bca:	40b2                	lw	ra,12(sp)
   10bcc:	8fd9                	or	a5,a5,a4
   10bce:	07c2                	slli	a5,a5,0x10
   10bd0:	87c1                	srai	a5,a5,0x10
   10bd2:	c828                	sw	a0,80(s0)
   10bd4:	00f41623          	sh	a5,12(s0)
   10bd8:	4422                	lw	s0,8(sp)
   10bda:	0141                	addi	sp,sp,16
   10bdc:	8082                	ret
   10bde:	00c45783          	lhu	a5,12(s0)
   10be2:	777d                	lui	a4,0xfffff
   10be4:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10be6:	8ff9                	and	a5,a5,a4
   10be8:	07c2                	slli	a5,a5,0x10
   10bea:	87c1                	srai	a5,a5,0x10
   10bec:	40b2                	lw	ra,12(sp)
   10bee:	00f41623          	sh	a5,12(s0)
   10bf2:	4422                	lw	s0,8(sp)
   10bf4:	0141                	addi	sp,sp,16
   10bf6:	8082                	ret

00010bf8 <__sclose>:
   10bf8:	00e59583          	lh	a1,14(a1)
   10bfc:	a009                	j	10bfe <_close_r>

00010bfe <_close_r>:
   10bfe:	1141                	addi	sp,sp,-16
   10c00:	c422                	sw	s0,8(sp)
   10c02:	c226                	sw	s1,4(sp)
   10c04:	842a                	mv	s0,a0
   10c06:	852e                	mv	a0,a1
   10c08:	c606                	sw	ra,12(sp)
   10c0a:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10c0e:	0ee070ef          	jal	17cfc <_close>
   10c12:	57fd                	li	a5,-1
   10c14:	00f50763          	beq	a0,a5,10c22 <_close_r+0x24>
   10c18:	40b2                	lw	ra,12(sp)
   10c1a:	4422                	lw	s0,8(sp)
   10c1c:	4492                	lw	s1,4(sp)
   10c1e:	0141                	addi	sp,sp,16
   10c20:	8082                	ret
   10c22:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10c26:	dbed                	beqz	a5,10c18 <_close_r+0x1a>
   10c28:	40b2                	lw	ra,12(sp)
   10c2a:	c01c                	sw	a5,0(s0)
   10c2c:	4422                	lw	s0,8(sp)
   10c2e:	4492                	lw	s1,4(sp)
   10c30:	0141                	addi	sp,sp,16
   10c32:	8082                	ret

00010c34 <_reclaim_reent>:
   10c34:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10c38:	06a78b63          	beq	a5,a0,10cae <_reclaim_reent+0x7a>
   10c3c:	416c                	lw	a1,68(a0)
   10c3e:	1101                	addi	sp,sp,-32
   10c40:	ca26                	sw	s1,20(sp)
   10c42:	ce06                	sw	ra,28(sp)
   10c44:	cc22                	sw	s0,24(sp)
   10c46:	84aa                	mv	s1,a0
   10c48:	c59d                	beqz	a1,10c76 <_reclaim_reent+0x42>
   10c4a:	c84a                	sw	s2,16(sp)
   10c4c:	c64e                	sw	s3,12(sp)
   10c4e:	4901                	li	s2,0
   10c50:	08000993          	li	s3,128
   10c54:	012587b3          	add	a5,a1,s2
   10c58:	4380                	lw	s0,0(a5)
   10c5a:	c419                	beqz	s0,10c68 <_reclaim_reent+0x34>
   10c5c:	85a2                	mv	a1,s0
   10c5e:	4000                	lw	s0,0(s0)
   10c60:	8526                	mv	a0,s1
   10c62:	2e6d                	jal	1101c <_free_r>
   10c64:	fc65                	bnez	s0,10c5c <_reclaim_reent+0x28>
   10c66:	40ec                	lw	a1,68(s1)
   10c68:	0911                	addi	s2,s2,4
   10c6a:	ff3915e3          	bne	s2,s3,10c54 <_reclaim_reent+0x20>
   10c6e:	8526                	mv	a0,s1
   10c70:	2675                	jal	1101c <_free_r>
   10c72:	4942                	lw	s2,16(sp)
   10c74:	49b2                	lw	s3,12(sp)
   10c76:	5c8c                	lw	a1,56(s1)
   10c78:	c199                	beqz	a1,10c7e <_reclaim_reent+0x4a>
   10c7a:	8526                	mv	a0,s1
   10c7c:	2645                	jal	1101c <_free_r>
   10c7e:	40a0                	lw	s0,64(s1)
   10c80:	c411                	beqz	s0,10c8c <_reclaim_reent+0x58>
   10c82:	85a2                	mv	a1,s0
   10c84:	4000                	lw	s0,0(s0)
   10c86:	8526                	mv	a0,s1
   10c88:	2e51                	jal	1101c <_free_r>
   10c8a:	fc65                	bnez	s0,10c82 <_reclaim_reent+0x4e>
   10c8c:	44ec                	lw	a1,76(s1)
   10c8e:	c199                	beqz	a1,10c94 <_reclaim_reent+0x60>
   10c90:	8526                	mv	a0,s1
   10c92:	2669                	jal	1101c <_free_r>
   10c94:	58dc                	lw	a5,52(s1)
   10c96:	c799                	beqz	a5,10ca4 <_reclaim_reent+0x70>
   10c98:	4462                	lw	s0,24(sp)
   10c9a:	40f2                	lw	ra,28(sp)
   10c9c:	8526                	mv	a0,s1
   10c9e:	44d2                	lw	s1,20(sp)
   10ca0:	6105                	addi	sp,sp,32
   10ca2:	8782                	jr	a5
   10ca4:	40f2                	lw	ra,28(sp)
   10ca6:	4462                	lw	s0,24(sp)
   10ca8:	44d2                	lw	s1,20(sp)
   10caa:	6105                	addi	sp,sp,32
   10cac:	8082                	ret
   10cae:	8082                	ret

00010cb0 <_lseek_r>:
   10cb0:	1141                	addi	sp,sp,-16
   10cb2:	872e                	mv	a4,a1
   10cb4:	c422                	sw	s0,8(sp)
   10cb6:	c226                	sw	s1,4(sp)
   10cb8:	85b2                	mv	a1,a2
   10cba:	842a                	mv	s0,a0
   10cbc:	8636                	mv	a2,a3
   10cbe:	853a                	mv	a0,a4
   10cc0:	c606                	sw	ra,12(sp)
   10cc2:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10cc6:	0fa070ef          	jal	17dc0 <_lseek>
   10cca:	57fd                	li	a5,-1
   10ccc:	00f50763          	beq	a0,a5,10cda <_lseek_r+0x2a>
   10cd0:	40b2                	lw	ra,12(sp)
   10cd2:	4422                	lw	s0,8(sp)
   10cd4:	4492                	lw	s1,4(sp)
   10cd6:	0141                	addi	sp,sp,16
   10cd8:	8082                	ret
   10cda:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10cde:	dbed                	beqz	a5,10cd0 <_lseek_r+0x20>
   10ce0:	40b2                	lw	ra,12(sp)
   10ce2:	c01c                	sw	a5,0(s0)
   10ce4:	4422                	lw	s0,8(sp)
   10ce6:	4492                	lw	s1,4(sp)
   10ce8:	0141                	addi	sp,sp,16
   10cea:	8082                	ret

00010cec <_read_r>:
   10cec:	1141                	addi	sp,sp,-16
   10cee:	872e                	mv	a4,a1
   10cf0:	c422                	sw	s0,8(sp)
   10cf2:	c226                	sw	s1,4(sp)
   10cf4:	85b2                	mv	a1,a2
   10cf6:	842a                	mv	s0,a0
   10cf8:	8636                	mv	a2,a3
   10cfa:	853a                	mv	a0,a4
   10cfc:	c606                	sw	ra,12(sp)
   10cfe:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10d02:	0ea070ef          	jal	17dec <_read>
   10d06:	57fd                	li	a5,-1
   10d08:	00f50763          	beq	a0,a5,10d16 <_read_r+0x2a>
   10d0c:	40b2                	lw	ra,12(sp)
   10d0e:	4422                	lw	s0,8(sp)
   10d10:	4492                	lw	s1,4(sp)
   10d12:	0141                	addi	sp,sp,16
   10d14:	8082                	ret
   10d16:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10d1a:	dbed                	beqz	a5,10d0c <_read_r+0x20>
   10d1c:	40b2                	lw	ra,12(sp)
   10d1e:	c01c                	sw	a5,0(s0)
   10d20:	4422                	lw	s0,8(sp)
   10d22:	4492                	lw	s1,4(sp)
   10d24:	0141                	addi	sp,sp,16
   10d26:	8082                	ret

00010d28 <_write_r>:
   10d28:	1141                	addi	sp,sp,-16
   10d2a:	872e                	mv	a4,a1
   10d2c:	c422                	sw	s0,8(sp)
   10d2e:	c226                	sw	s1,4(sp)
   10d30:	85b2                	mv	a1,a2
   10d32:	842a                	mv	s0,a0
   10d34:	8636                	mv	a2,a3
   10d36:	853a                	mv	a0,a4
   10d38:	c606                	sw	ra,12(sp)
   10d3a:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10d3e:	12e070ef          	jal	17e6c <_write>
   10d42:	57fd                	li	a5,-1
   10d44:	00f50763          	beq	a0,a5,10d52 <_write_r+0x2a>
   10d48:	40b2                	lw	ra,12(sp)
   10d4a:	4422                	lw	s0,8(sp)
   10d4c:	4492                	lw	s1,4(sp)
   10d4e:	0141                	addi	sp,sp,16
   10d50:	8082                	ret
   10d52:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10d56:	dbed                	beqz	a5,10d48 <_write_r+0x20>
   10d58:	40b2                	lw	ra,12(sp)
   10d5a:	c01c                	sw	a5,0(s0)
   10d5c:	4422                	lw	s0,8(sp)
   10d5e:	4492                	lw	s1,4(sp)
   10d60:	0141                	addi	sp,sp,16
   10d62:	8082                	ret

00010d64 <__libc_init_array>:
   10d64:	1141                	addi	sp,sp,-16
   10d66:	c422                	sw	s0,8(sp)
   10d68:	67ed                	lui	a5,0x1b
   10d6a:	646d                	lui	s0,0x1b
   10d6c:	c04a                	sw	s2,0(sp)
   10d6e:	00478793          	addi	a5,a5,4 # 1b004 <__init_array_start>
   10d72:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   10d76:	c606                	sw	ra,12(sp)
   10d78:	c226                	sw	s1,4(sp)
   10d7a:	40e78933          	sub	s2,a5,a4
   10d7e:	00e78d63          	beq	a5,a4,10d98 <__libc_init_array+0x34>
   10d82:	40295913          	srai	s2,s2,0x2
   10d86:	00440413          	addi	s0,s0,4
   10d8a:	4481                	li	s1,0
   10d8c:	401c                	lw	a5,0(s0)
   10d8e:	0485                	addi	s1,s1,1
   10d90:	0411                	addi	s0,s0,4
   10d92:	9782                	jalr	a5
   10d94:	ff24ece3          	bltu	s1,s2,10d8c <__libc_init_array+0x28>
   10d98:	646d                	lui	s0,0x1b
   10d9a:	67ed                	lui	a5,0x1b
   10d9c:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   10da0:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   10da4:	40e78933          	sub	s2,a5,a4
   10da8:	40295913          	srai	s2,s2,0x2
   10dac:	00e78b63          	beq	a5,a4,10dc2 <__libc_init_array+0x5e>
   10db0:	00440413          	addi	s0,s0,4
   10db4:	4481                	li	s1,0
   10db6:	401c                	lw	a5,0(s0)
   10db8:	0485                	addi	s1,s1,1
   10dba:	0411                	addi	s0,s0,4
   10dbc:	9782                	jalr	a5
   10dbe:	ff24ece3          	bltu	s1,s2,10db6 <__libc_init_array+0x52>
   10dc2:	40b2                	lw	ra,12(sp)
   10dc4:	4422                	lw	s0,8(sp)
   10dc6:	4492                	lw	s1,4(sp)
   10dc8:	4902                	lw	s2,0(sp)
   10dca:	0141                	addi	sp,sp,16
   10dcc:	8082                	ret

00010dce <memset>:
   10dce:	433d                	li	t1,15
   10dd0:	872a                	mv	a4,a0
   10dd2:	02c37363          	bgeu	t1,a2,10df8 <memset+0x2a>
   10dd6:	00f77793          	andi	a5,a4,15
   10dda:	efbd                	bnez	a5,10e58 <memset+0x8a>
   10ddc:	e5ad                	bnez	a1,10e46 <memset+0x78>
   10dde:	ff067693          	andi	a3,a2,-16
   10de2:	8a3d                	andi	a2,a2,15
   10de4:	96ba                	add	a3,a3,a4
   10de6:	c30c                	sw	a1,0(a4)
   10de8:	c34c                	sw	a1,4(a4)
   10dea:	c70c                	sw	a1,8(a4)
   10dec:	c74c                	sw	a1,12(a4)
   10dee:	0741                	addi	a4,a4,16
   10df0:	fed76be3          	bltu	a4,a3,10de6 <memset+0x18>
   10df4:	e211                	bnez	a2,10df8 <memset+0x2a>
   10df6:	8082                	ret
   10df8:	40c306b3          	sub	a3,t1,a2
   10dfc:	068a                	slli	a3,a3,0x2
   10dfe:	00000297          	auipc	t0,0x0
   10e02:	9696                	add	a3,a3,t0
   10e04:	00a68067          	jr	10(a3)
   10e08:	00b70723          	sb	a1,14(a4)
   10e0c:	00b706a3          	sb	a1,13(a4)
   10e10:	00b70623          	sb	a1,12(a4)
   10e14:	00b705a3          	sb	a1,11(a4)
   10e18:	00b70523          	sb	a1,10(a4)
   10e1c:	00b704a3          	sb	a1,9(a4)
   10e20:	00b70423          	sb	a1,8(a4)
   10e24:	00b703a3          	sb	a1,7(a4)
   10e28:	00b70323          	sb	a1,6(a4)
   10e2c:	00b702a3          	sb	a1,5(a4)
   10e30:	00b70223          	sb	a1,4(a4)
   10e34:	00b701a3          	sb	a1,3(a4)
   10e38:	00b70123          	sb	a1,2(a4)
   10e3c:	00b700a3          	sb	a1,1(a4)
   10e40:	00b70023          	sb	a1,0(a4)
   10e44:	8082                	ret
   10e46:	0ff5f593          	zext.b	a1,a1
   10e4a:	00859693          	slli	a3,a1,0x8
   10e4e:	8dd5                	or	a1,a1,a3
   10e50:	01059693          	slli	a3,a1,0x10
   10e54:	8dd5                	or	a1,a1,a3
   10e56:	b761                	j	10dde <memset+0x10>
   10e58:	00279693          	slli	a3,a5,0x2
   10e5c:	00000297          	auipc	t0,0x0
   10e60:	9696                	add	a3,a3,t0
   10e62:	8286                	mv	t0,ra
   10e64:	fa8680e7          	jalr	-88(a3)
   10e68:	8096                	mv	ra,t0
   10e6a:	17c1                	addi	a5,a5,-16
   10e6c:	8f1d                	sub	a4,a4,a5
   10e6e:	963e                	add	a2,a2,a5
   10e70:	f8c374e3          	bgeu	t1,a2,10df8 <memset+0x2a>
   10e74:	b7a5                	j	10ddc <memset+0xe>

00010e76 <__call_exitprocs>:
   10e76:	7179                	addi	sp,sp,-48
   10e78:	cc52                	sw	s4,24(sp)
   10e7a:	d04a                	sw	s2,32(sp)
   10e7c:	f281a903          	lw	s2,-216(gp) # 1b738 <__atexit>
   10e80:	d606                	sw	ra,44(sp)
   10e82:	06090c63          	beqz	s2,10efa <__call_exitprocs+0x84>
   10e86:	ce4e                	sw	s3,28(sp)
   10e88:	ca56                	sw	s5,20(sp)
   10e8a:	c85a                	sw	s6,16(sp)
   10e8c:	c65e                	sw	s7,12(sp)
   10e8e:	d422                	sw	s0,40(sp)
   10e90:	d226                	sw	s1,36(sp)
   10e92:	c462                	sw	s8,8(sp)
   10e94:	8b2a                	mv	s6,a0
   10e96:	8bae                	mv	s7,a1
   10e98:	59fd                	li	s3,-1
   10e9a:	4a85                	li	s5,1
   10e9c:	00492483          	lw	s1,4(s2)
   10ea0:	fff48413          	addi	s0,s1,-1
   10ea4:	04044463          	bltz	s0,10eec <__call_exitprocs+0x76>
   10ea8:	048a                	slli	s1,s1,0x2
   10eaa:	94ca                	add	s1,s1,s2
   10eac:	040b9c63          	bnez	s7,10f04 <__call_exitprocs+0x8e>
   10eb0:	00492783          	lw	a5,4(s2)
   10eb4:	40d4                	lw	a3,4(s1)
   10eb6:	17fd                	addi	a5,a5,-1
   10eb8:	08878063          	beq	a5,s0,10f38 <__call_exitprocs+0xc2>
   10ebc:	0004a223          	sw	zero,4(s1)
   10ec0:	c295                	beqz	a3,10ee4 <__call_exitprocs+0x6e>
   10ec2:	18892783          	lw	a5,392(s2)
   10ec6:	008a9733          	sll	a4,s5,s0
   10eca:	00492c03          	lw	s8,4(s2)
   10ece:	8ff9                	and	a5,a5,a4
   10ed0:	e3b9                	bnez	a5,10f16 <__call_exitprocs+0xa0>
   10ed2:	9682                	jalr	a3
   10ed4:	00492703          	lw	a4,4(s2)
   10ed8:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   10edc:	05871b63          	bne	a4,s8,10f32 <__call_exitprocs+0xbc>
   10ee0:	05279963          	bne	a5,s2,10f32 <__call_exitprocs+0xbc>
   10ee4:	147d                	addi	s0,s0,-1
   10ee6:	14f1                	addi	s1,s1,-4
   10ee8:	fd3412e3          	bne	s0,s3,10eac <__call_exitprocs+0x36>
   10eec:	5422                	lw	s0,40(sp)
   10eee:	5492                	lw	s1,36(sp)
   10ef0:	49f2                	lw	s3,28(sp)
   10ef2:	4ad2                	lw	s5,20(sp)
   10ef4:	4b42                	lw	s6,16(sp)
   10ef6:	4bb2                	lw	s7,12(sp)
   10ef8:	4c22                	lw	s8,8(sp)
   10efa:	50b2                	lw	ra,44(sp)
   10efc:	5902                	lw	s2,32(sp)
   10efe:	4a62                	lw	s4,24(sp)
   10f00:	6145                	addi	sp,sp,48
   10f02:	8082                	ret
   10f04:	1044a783          	lw	a5,260(s1)
   10f08:	fb7784e3          	beq	a5,s7,10eb0 <__call_exitprocs+0x3a>
   10f0c:	147d                	addi	s0,s0,-1
   10f0e:	14f1                	addi	s1,s1,-4
   10f10:	ff341ae3          	bne	s0,s3,10f04 <__call_exitprocs+0x8e>
   10f14:	bfe1                	j	10eec <__call_exitprocs+0x76>
   10f16:	18c92783          	lw	a5,396(s2)
   10f1a:	0844a583          	lw	a1,132(s1)
   10f1e:	8f7d                	and	a4,a4,a5
   10f20:	ef19                	bnez	a4,10f3e <__call_exitprocs+0xc8>
   10f22:	855a                	mv	a0,s6
   10f24:	9682                	jalr	a3
   10f26:	00492703          	lw	a4,4(s2)
   10f2a:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   10f2e:	fb8709e3          	beq	a4,s8,10ee0 <__call_exitprocs+0x6a>
   10f32:	dfcd                	beqz	a5,10eec <__call_exitprocs+0x76>
   10f34:	893e                	mv	s2,a5
   10f36:	b79d                	j	10e9c <__call_exitprocs+0x26>
   10f38:	00892223          	sw	s0,4(s2)
   10f3c:	b751                	j	10ec0 <__call_exitprocs+0x4a>
   10f3e:	852e                	mv	a0,a1
   10f40:	9682                	jalr	a3
   10f42:	bf49                	j	10ed4 <__call_exitprocs+0x5e>

00010f44 <atexit>:
   10f44:	85aa                	mv	a1,a0
   10f46:	4681                	li	a3,0
   10f48:	4601                	li	a2,0
   10f4a:	4501                	li	a0,0
   10f4c:	2920306f          	j	141de <__register_exitproc>

00010f50 <_malloc_trim_r>:
   10f50:	1101                	addi	sp,sp,-32
   10f52:	c64e                	sw	s3,12(sp)
   10f54:	69ed                	lui	s3,0x1b
   10f56:	cc22                	sw	s0,24(sp)
   10f58:	ca26                	sw	s1,20(sp)
   10f5a:	c84a                	sw	s2,16(sp)
   10f5c:	c452                	sw	s4,8(sp)
   10f5e:	ce06                	sw	ra,28(sp)
   10f60:	8a2e                	mv	s4,a1
   10f62:	892a                	mv	s2,a0
   10f64:	14098993          	addi	s3,s3,320 # 1b140 <__malloc_av_>
   10f68:	07b000ef          	jal	117e2 <__malloc_lock>
   10f6c:	0089a703          	lw	a4,8(s3)
   10f70:	6785                	lui	a5,0x1
   10f72:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   10f74:	4344                	lw	s1,4(a4)
   10f76:	6705                	lui	a4,0x1
   10f78:	98f1                	andi	s1,s1,-4
   10f7a:	00f48433          	add	s0,s1,a5
   10f7e:	41440433          	sub	s0,s0,s4
   10f82:	8031                	srli	s0,s0,0xc
   10f84:	147d                	addi	s0,s0,-1
   10f86:	0432                	slli	s0,s0,0xc
   10f88:	00e44b63          	blt	s0,a4,10f9e <_malloc_trim_r+0x4e>
   10f8c:	4581                	li	a1,0
   10f8e:	854a                	mv	a0,s2
   10f90:	67f020ef          	jal	13e0e <_sbrk_r>
   10f94:	0089a783          	lw	a5,8(s3)
   10f98:	97a6                	add	a5,a5,s1
   10f9a:	00f50e63          	beq	a0,a5,10fb6 <_malloc_trim_r+0x66>
   10f9e:	854a                	mv	a0,s2
   10fa0:	045000ef          	jal	117e4 <__malloc_unlock>
   10fa4:	40f2                	lw	ra,28(sp)
   10fa6:	4462                	lw	s0,24(sp)
   10fa8:	44d2                	lw	s1,20(sp)
   10faa:	4942                	lw	s2,16(sp)
   10fac:	49b2                	lw	s3,12(sp)
   10fae:	4a22                	lw	s4,8(sp)
   10fb0:	4501                	li	a0,0
   10fb2:	6105                	addi	sp,sp,32
   10fb4:	8082                	ret
   10fb6:	408005b3          	neg	a1,s0
   10fba:	854a                	mv	a0,s2
   10fbc:	653020ef          	jal	13e0e <_sbrk_r>
   10fc0:	57fd                	li	a5,-1
   10fc2:	02f50963          	beq	a0,a5,10ff4 <_malloc_trim_r+0xa4>
   10fc6:	09418793          	addi	a5,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   10fca:	4398                	lw	a4,0(a5)
   10fcc:	0089a683          	lw	a3,8(s3)
   10fd0:	8c81                	sub	s1,s1,s0
   10fd2:	0014e493          	ori	s1,s1,1
   10fd6:	8f01                	sub	a4,a4,s0
   10fd8:	854a                	mv	a0,s2
   10fda:	c2c4                	sw	s1,4(a3)
   10fdc:	c398                	sw	a4,0(a5)
   10fde:	007000ef          	jal	117e4 <__malloc_unlock>
   10fe2:	40f2                	lw	ra,28(sp)
   10fe4:	4462                	lw	s0,24(sp)
   10fe6:	44d2                	lw	s1,20(sp)
   10fe8:	4942                	lw	s2,16(sp)
   10fea:	49b2                	lw	s3,12(sp)
   10fec:	4a22                	lw	s4,8(sp)
   10fee:	4505                	li	a0,1
   10ff0:	6105                	addi	sp,sp,32
   10ff2:	8082                	ret
   10ff4:	4581                	li	a1,0
   10ff6:	854a                	mv	a0,s2
   10ff8:	617020ef          	jal	13e0e <_sbrk_r>
   10ffc:	0089a703          	lw	a4,8(s3)
   11000:	46bd                	li	a3,15
   11002:	40e507b3          	sub	a5,a0,a4
   11006:	f8f6dce3          	bge	a3,a5,10f9e <_malloc_trim_r+0x4e>
   1100a:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   1100e:	0017e793          	ori	a5,a5,1
   11012:	c35c                	sw	a5,4(a4)
   11014:	8d15                	sub	a0,a0,a3
   11016:	08a1aa23          	sw	a0,148(gp) # 1b8a4 <__malloc_current_mallinfo>
   1101a:	b751                	j	10f9e <_malloc_trim_r+0x4e>

0001101c <_free_r>:
   1101c:	10058a63          	beqz	a1,11130 <_free_r+0x114>
   11020:	1141                	addi	sp,sp,-16
   11022:	c422                	sw	s0,8(sp)
   11024:	c226                	sw	s1,4(sp)
   11026:	842e                	mv	s0,a1
   11028:	84aa                	mv	s1,a0
   1102a:	c606                	sw	ra,12(sp)
   1102c:	7b6000ef          	jal	117e2 <__malloc_lock>
   11030:	ffc42503          	lw	a0,-4(s0)
   11034:	ff840713          	addi	a4,s0,-8
   11038:	65ed                	lui	a1,0x1b
   1103a:	ffe57793          	andi	a5,a0,-2
   1103e:	00f70633          	add	a2,a4,a5
   11042:	14058593          	addi	a1,a1,320 # 1b140 <__malloc_av_>
   11046:	4254                	lw	a3,4(a2)
   11048:	0085a803          	lw	a6,8(a1)
   1104c:	9af1                	andi	a3,a3,-4
   1104e:	12c80363          	beq	a6,a2,11174 <_free_r+0x158>
   11052:	c254                	sw	a3,4(a2)
   11054:	8905                	andi	a0,a0,1
   11056:	00d60833          	add	a6,a2,a3
   1105a:	e935                	bnez	a0,110ce <_free_r+0xb2>
   1105c:	ff842303          	lw	t1,-8(s0)
   11060:	00482803          	lw	a6,4(a6)
   11064:	656d                	lui	a0,0x1b
   11066:	40670733          	sub	a4,a4,t1
   1106a:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   1106e:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   11072:	979a                	add	a5,a5,t1
   11074:	00187813          	andi	a6,a6,1
   11078:	0ea88163          	beq	a7,a0,1115a <_free_r+0x13e>
   1107c:	00c72303          	lw	t1,12(a4)
   11080:	0068a623          	sw	t1,12(a7)
   11084:	01132423          	sw	a7,8(t1)
   11088:	10080e63          	beqz	a6,111a4 <_free_r+0x188>
   1108c:	0017e693          	ori	a3,a5,1
   11090:	c354                	sw	a3,4(a4)
   11092:	c21c                	sw	a5,0(a2)
   11094:	1ff00693          	li	a3,511
   11098:	04f6e863          	bltu	a3,a5,110e8 <_free_r+0xcc>
   1109c:	ff87f693          	andi	a3,a5,-8
   110a0:	06a1                	addi	a3,a3,8
   110a2:	41c8                	lw	a0,4(a1)
   110a4:	96ae                	add	a3,a3,a1
   110a6:	4290                	lw	a2,0(a3)
   110a8:	0057d813          	srli	a6,a5,0x5
   110ac:	4785                	li	a5,1
   110ae:	010797b3          	sll	a5,a5,a6
   110b2:	8fc9                	or	a5,a5,a0
   110b4:	ff868513          	addi	a0,a3,-8
   110b8:	c748                	sw	a0,12(a4)
   110ba:	c710                	sw	a2,8(a4)
   110bc:	c1dc                	sw	a5,4(a1)
   110be:	c298                	sw	a4,0(a3)
   110c0:	c658                	sw	a4,12(a2)
   110c2:	4422                	lw	s0,8(sp)
   110c4:	40b2                	lw	ra,12(sp)
   110c6:	8526                	mv	a0,s1
   110c8:	4492                	lw	s1,4(sp)
   110ca:	0141                	addi	sp,sp,16
   110cc:	af21                	j	117e4 <__malloc_unlock>
   110ce:	00482503          	lw	a0,4(a6)
   110d2:	8905                	andi	a0,a0,1
   110d4:	cd39                	beqz	a0,11132 <_free_r+0x116>
   110d6:	0017e693          	ori	a3,a5,1
   110da:	fed42e23          	sw	a3,-4(s0)
   110de:	c21c                	sw	a5,0(a2)
   110e0:	1ff00693          	li	a3,511
   110e4:	faf6fce3          	bgeu	a3,a5,1109c <_free_r+0x80>
   110e8:	0097d693          	srli	a3,a5,0x9
   110ec:	4611                	li	a2,4
   110ee:	0ad66d63          	bltu	a2,a3,111a8 <_free_r+0x18c>
   110f2:	0067d693          	srli	a3,a5,0x6
   110f6:	03968513          	addi	a0,a3,57
   110fa:	03868613          	addi	a2,a3,56
   110fe:	050e                	slli	a0,a0,0x3
   11100:	952e                	add	a0,a0,a1
   11102:	4114                	lw	a3,0(a0)
   11104:	1561                	addi	a0,a0,-8
   11106:	00d51663          	bne	a0,a3,11112 <_free_r+0xf6>
   1110a:	a8f1                	j	111e6 <_free_r+0x1ca>
   1110c:	4694                	lw	a3,8(a3)
   1110e:	00d50663          	beq	a0,a3,1111a <_free_r+0xfe>
   11112:	42d0                	lw	a2,4(a3)
   11114:	9a71                	andi	a2,a2,-4
   11116:	fec7ebe3          	bltu	a5,a2,1110c <_free_r+0xf0>
   1111a:	46c8                	lw	a0,12(a3)
   1111c:	c748                	sw	a0,12(a4)
   1111e:	c714                	sw	a3,8(a4)
   11120:	4422                	lw	s0,8(sp)
   11122:	c518                	sw	a4,8(a0)
   11124:	40b2                	lw	ra,12(sp)
   11126:	8526                	mv	a0,s1
   11128:	4492                	lw	s1,4(sp)
   1112a:	c6d8                	sw	a4,12(a3)
   1112c:	0141                	addi	sp,sp,16
   1112e:	ad5d                	j	117e4 <__malloc_unlock>
   11130:	8082                	ret
   11132:	656d                	lui	a0,0x1b
   11134:	97b6                	add	a5,a5,a3
   11136:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   1113a:	4614                	lw	a3,8(a2)
   1113c:	08a68b63          	beq	a3,a0,111d2 <_free_r+0x1b6>
   11140:	00c62803          	lw	a6,12(a2) # 200c <exit-0xe088>
   11144:	0017e513          	ori	a0,a5,1
   11148:	00f70633          	add	a2,a4,a5
   1114c:	0106a623          	sw	a6,12(a3)
   11150:	00d82423          	sw	a3,8(a6)
   11154:	c348                	sw	a0,4(a4)
   11156:	c21c                	sw	a5,0(a2)
   11158:	bf35                	j	11094 <_free_r+0x78>
   1115a:	0c081d63          	bnez	a6,11234 <_free_r+0x218>
   1115e:	460c                	lw	a1,8(a2)
   11160:	4650                	lw	a2,12(a2)
   11162:	96be                	add	a3,a3,a5
   11164:	0016e793          	ori	a5,a3,1
   11168:	c5d0                	sw	a2,12(a1)
   1116a:	c60c                	sw	a1,8(a2)
   1116c:	c35c                	sw	a5,4(a4)
   1116e:	9736                	add	a4,a4,a3
   11170:	c314                	sw	a3,0(a4)
   11172:	bf81                	j	110c2 <_free_r+0xa6>
   11174:	8905                	andi	a0,a0,1
   11176:	96be                	add	a3,a3,a5
   11178:	e909                	bnez	a0,1118a <_free_r+0x16e>
   1117a:	ff842503          	lw	a0,-8(s0)
   1117e:	8f09                	sub	a4,a4,a0
   11180:	475c                	lw	a5,12(a4)
   11182:	4710                	lw	a2,8(a4)
   11184:	96aa                	add	a3,a3,a0
   11186:	c65c                	sw	a5,12(a2)
   11188:	c790                	sw	a2,8(a5)
   1118a:	0016e613          	ori	a2,a3,1
   1118e:	f1c1a783          	lw	a5,-228(gp) # 1b72c <__malloc_trim_threshold>
   11192:	c350                	sw	a2,4(a4)
   11194:	c598                	sw	a4,8(a1)
   11196:	f2f6e6e3          	bltu	a3,a5,110c2 <_free_r+0xa6>
   1119a:	f341a583          	lw	a1,-204(gp) # 1b744 <__malloc_top_pad>
   1119e:	8526                	mv	a0,s1
   111a0:	3b45                	jal	10f50 <_malloc_trim_r>
   111a2:	b705                	j	110c2 <_free_r+0xa6>
   111a4:	97b6                	add	a5,a5,a3
   111a6:	bf51                	j	1113a <_free_r+0x11e>
   111a8:	4651                	li	a2,20
   111aa:	00d67e63          	bgeu	a2,a3,111c6 <_free_r+0x1aa>
   111ae:	05400613          	li	a2,84
   111b2:	04d66463          	bltu	a2,a3,111fa <_free_r+0x1de>
   111b6:	00c7d693          	srli	a3,a5,0xc
   111ba:	06f68513          	addi	a0,a3,111
   111be:	06e68613          	addi	a2,a3,110
   111c2:	050e                	slli	a0,a0,0x3
   111c4:	bf35                	j	11100 <_free_r+0xe4>
   111c6:	05c68513          	addi	a0,a3,92
   111ca:	05b68613          	addi	a2,a3,91
   111ce:	050e                	slli	a0,a0,0x3
   111d0:	bf05                	j	11100 <_free_r+0xe4>
   111d2:	c9d8                	sw	a4,20(a1)
   111d4:	c998                	sw	a4,16(a1)
   111d6:	0017e693          	ori	a3,a5,1
   111da:	c748                	sw	a0,12(a4)
   111dc:	c708                	sw	a0,8(a4)
   111de:	c354                	sw	a3,4(a4)
   111e0:	973e                	add	a4,a4,a5
   111e2:	c31c                	sw	a5,0(a4)
   111e4:	bdf9                	j	110c2 <_free_r+0xa6>
   111e6:	0045a803          	lw	a6,4(a1)
   111ea:	8609                	srai	a2,a2,0x2
   111ec:	4785                	li	a5,1
   111ee:	00c797b3          	sll	a5,a5,a2
   111f2:	0107e7b3          	or	a5,a5,a6
   111f6:	c1dc                	sw	a5,4(a1)
   111f8:	b715                	j	1111c <_free_r+0x100>
   111fa:	15400613          	li	a2,340
   111fe:	00d66a63          	bltu	a2,a3,11212 <_free_r+0x1f6>
   11202:	00f7d693          	srli	a3,a5,0xf
   11206:	07868513          	addi	a0,a3,120
   1120a:	07768613          	addi	a2,a3,119
   1120e:	050e                	slli	a0,a0,0x3
   11210:	bdc5                	j	11100 <_free_r+0xe4>
   11212:	55400613          	li	a2,1364
   11216:	00d66a63          	bltu	a2,a3,1122a <_free_r+0x20e>
   1121a:	0127d693          	srli	a3,a5,0x12
   1121e:	07d68513          	addi	a0,a3,125
   11222:	07c68613          	addi	a2,a3,124
   11226:	050e                	slli	a0,a0,0x3
   11228:	bde1                	j	11100 <_free_r+0xe4>
   1122a:	3f800513          	li	a0,1016
   1122e:	07e00613          	li	a2,126
   11232:	b5f9                	j	11100 <_free_r+0xe4>
   11234:	0017e693          	ori	a3,a5,1
   11238:	c354                	sw	a3,4(a4)
   1123a:	c21c                	sw	a5,0(a2)
   1123c:	b559                	j	110c2 <_free_r+0xa6>

0001123e <_malloc_r>:
   1123e:	7179                	addi	sp,sp,-48
   11240:	ce4e                	sw	s3,28(sp)
   11242:	d606                	sw	ra,44(sp)
   11244:	d422                	sw	s0,40(sp)
   11246:	d226                	sw	s1,36(sp)
   11248:	d04a                	sw	s2,32(sp)
   1124a:	00b58793          	addi	a5,a1,11
   1124e:	4759                	li	a4,22
   11250:	89aa                	mv	s3,a0
   11252:	04f76863          	bltu	a4,a5,112a2 <_malloc_r+0x64>
   11256:	47c1                	li	a5,16
   11258:	16b7e863          	bltu	a5,a1,113c8 <_malloc_r+0x18a>
   1125c:	2359                	jal	117e2 <__malloc_lock>
   1125e:	47e1                	li	a5,24
   11260:	4589                	li	a1,2
   11262:	44c1                	li	s1,16
   11264:	696d                	lui	s2,0x1b
   11266:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   1126a:	97ca                	add	a5,a5,s2
   1126c:	43c0                	lw	s0,4(a5)
   1126e:	ff878713          	addi	a4,a5,-8
   11272:	24e40d63          	beq	s0,a4,114cc <_malloc_r+0x28e>
   11276:	405c                	lw	a5,4(s0)
   11278:	4454                	lw	a3,12(s0)
   1127a:	4410                	lw	a2,8(s0)
   1127c:	9bf1                	andi	a5,a5,-4
   1127e:	97a2                	add	a5,a5,s0
   11280:	43d8                	lw	a4,4(a5)
   11282:	c654                	sw	a3,12(a2)
   11284:	c690                	sw	a2,8(a3)
   11286:	00176713          	ori	a4,a4,1
   1128a:	854e                	mv	a0,s3
   1128c:	c3d8                	sw	a4,4(a5)
   1128e:	2b99                	jal	117e4 <__malloc_unlock>
   11290:	00840513          	addi	a0,s0,8
   11294:	50b2                	lw	ra,44(sp)
   11296:	5422                	lw	s0,40(sp)
   11298:	5492                	lw	s1,36(sp)
   1129a:	5902                	lw	s2,32(sp)
   1129c:	49f2                	lw	s3,28(sp)
   1129e:	6145                	addi	sp,sp,48
   112a0:	8082                	ret
   112a2:	ff87f493          	andi	s1,a5,-8
   112a6:	1207c163          	bltz	a5,113c8 <_malloc_r+0x18a>
   112aa:	10b4ef63          	bltu	s1,a1,113c8 <_malloc_r+0x18a>
   112ae:	2b15                	jal	117e2 <__malloc_lock>
   112b0:	1f700793          	li	a5,503
   112b4:	2c97fb63          	bgeu	a5,s1,1158a <_malloc_r+0x34c>
   112b8:	0094d793          	srli	a5,s1,0x9
   112bc:	10078b63          	beqz	a5,113d2 <_malloc_r+0x194>
   112c0:	4711                	li	a4,4
   112c2:	24f76a63          	bltu	a4,a5,11516 <_malloc_r+0x2d8>
   112c6:	0064d793          	srli	a5,s1,0x6
   112ca:	03978593          	addi	a1,a5,57
   112ce:	03878813          	addi	a6,a5,56
   112d2:	00359613          	slli	a2,a1,0x3
   112d6:	696d                	lui	s2,0x1b
   112d8:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   112dc:	964a                	add	a2,a2,s2
   112de:	4240                	lw	s0,4(a2)
   112e0:	1661                	addi	a2,a2,-8
   112e2:	02860163          	beq	a2,s0,11304 <_malloc_r+0xc6>
   112e6:	453d                	li	a0,15
   112e8:	a039                	j	112f6 <_malloc_r+0xb8>
   112ea:	4454                	lw	a3,12(s0)
   112ec:	1c075e63          	bgez	a4,114c8 <_malloc_r+0x28a>
   112f0:	00d60a63          	beq	a2,a3,11304 <_malloc_r+0xc6>
   112f4:	8436                	mv	s0,a3
   112f6:	405c                	lw	a5,4(s0)
   112f8:	9bf1                	andi	a5,a5,-4
   112fa:	40978733          	sub	a4,a5,s1
   112fe:	fee556e3          	bge	a0,a4,112ea <_malloc_r+0xac>
   11302:	85c2                	mv	a1,a6
   11304:	01092403          	lw	s0,16(s2)
   11308:	686d                	lui	a6,0x1b
   1130a:	14880813          	addi	a6,a6,328 # 1b148 <__malloc_av_+0x8>
   1130e:	1b040a63          	beq	s0,a6,114c2 <_malloc_r+0x284>
   11312:	405c                	lw	a5,4(s0)
   11314:	46bd                	li	a3,15
   11316:	9bf1                	andi	a5,a5,-4
   11318:	40978733          	sub	a4,a5,s1
   1131c:	26e6cc63          	blt	a3,a4,11594 <_malloc_r+0x356>
   11320:	01092a23          	sw	a6,20(s2)
   11324:	01092823          	sw	a6,16(s2)
   11328:	24075763          	bgez	a4,11576 <_malloc_r+0x338>
   1132c:	1ff00713          	li	a4,511
   11330:	00492503          	lw	a0,4(s2)
   11334:	1af76163          	bltu	a4,a5,114d6 <_malloc_r+0x298>
   11338:	ff87f713          	andi	a4,a5,-8
   1133c:	0721                	addi	a4,a4,8
   1133e:	974a                	add	a4,a4,s2
   11340:	4314                	lw	a3,0(a4)
   11342:	0057d613          	srli	a2,a5,0x5
   11346:	4785                	li	a5,1
   11348:	00c797b3          	sll	a5,a5,a2
   1134c:	8d5d                	or	a0,a0,a5
   1134e:	ff870793          	addi	a5,a4,-8
   11352:	c45c                	sw	a5,12(s0)
   11354:	c414                	sw	a3,8(s0)
   11356:	00a92223          	sw	a0,4(s2)
   1135a:	c300                	sw	s0,0(a4)
   1135c:	c6c0                	sw	s0,12(a3)
   1135e:	4025d793          	srai	a5,a1,0x2
   11362:	4605                	li	a2,1
   11364:	00f61633          	sll	a2,a2,a5
   11368:	06c56c63          	bltu	a0,a2,113e0 <_malloc_r+0x1a2>
   1136c:	00a677b3          	and	a5,a2,a0
   11370:	ef81                	bnez	a5,11388 <_malloc_r+0x14a>
   11372:	0606                	slli	a2,a2,0x1
   11374:	99f1                	andi	a1,a1,-4
   11376:	00a677b3          	and	a5,a2,a0
   1137a:	0591                	addi	a1,a1,4
   1137c:	e791                	bnez	a5,11388 <_malloc_r+0x14a>
   1137e:	0606                	slli	a2,a2,0x1
   11380:	00a677b3          	and	a5,a2,a0
   11384:	0591                	addi	a1,a1,4
   11386:	dfe5                	beqz	a5,1137e <_malloc_r+0x140>
   11388:	48bd                	li	a7,15
   1138a:	00359313          	slli	t1,a1,0x3
   1138e:	934a                	add	t1,t1,s2
   11390:	851a                	mv	a0,t1
   11392:	455c                	lw	a5,12(a0)
   11394:	8e2e                	mv	t3,a1
   11396:	1af50063          	beq	a0,a5,11536 <_malloc_r+0x2f8>
   1139a:	43d8                	lw	a4,4(a5)
   1139c:	843e                	mv	s0,a5
   1139e:	47dc                	lw	a5,12(a5)
   113a0:	9b71                	andi	a4,a4,-4
   113a2:	409706b3          	sub	a3,a4,s1
   113a6:	18d8cf63          	blt	a7,a3,11544 <_malloc_r+0x306>
   113aa:	fe06c6e3          	bltz	a3,11396 <_malloc_r+0x158>
   113ae:	9722                	add	a4,a4,s0
   113b0:	4354                	lw	a3,4(a4)
   113b2:	4410                	lw	a2,8(s0)
   113b4:	854e                	mv	a0,s3
   113b6:	0016e693          	ori	a3,a3,1
   113ba:	c354                	sw	a3,4(a4)
   113bc:	c65c                	sw	a5,12(a2)
   113be:	c790                	sw	a2,8(a5)
   113c0:	2115                	jal	117e4 <__malloc_unlock>
   113c2:	00840513          	addi	a0,s0,8
   113c6:	b5f9                	j	11294 <_malloc_r+0x56>
   113c8:	47b1                	li	a5,12
   113ca:	00f9a023          	sw	a5,0(s3)
   113ce:	4501                	li	a0,0
   113d0:	b5d1                	j	11294 <_malloc_r+0x56>
   113d2:	20000613          	li	a2,512
   113d6:	04000593          	li	a1,64
   113da:	03f00813          	li	a6,63
   113de:	bde5                	j	112d6 <_malloc_r+0x98>
   113e0:	00892403          	lw	s0,8(s2)
   113e4:	c85a                	sw	s6,16(sp)
   113e6:	405c                	lw	a5,4(s0)
   113e8:	ffc7fb13          	andi	s6,a5,-4
   113ec:	009b6763          	bltu	s6,s1,113fa <_malloc_r+0x1bc>
   113f0:	409b0733          	sub	a4,s6,s1
   113f4:	47bd                	li	a5,15
   113f6:	0ae7c163          	blt	a5,a4,11498 <_malloc_r+0x25a>
   113fa:	c266                	sw	s9,4(sp)
   113fc:	ca56                	sw	s5,20(sp)
   113fe:	f181a703          	lw	a4,-232(gp) # 1b728 <__malloc_sbrk_base>
   11402:	f341aa83          	lw	s5,-204(gp) # 1b744 <__malloc_top_pad>
   11406:	cc52                	sw	s4,24(sp)
   11408:	c65e                	sw	s7,12(sp)
   1140a:	57fd                	li	a5,-1
   1140c:	01640a33          	add	s4,s0,s6
   11410:	9aa6                	add	s5,s5,s1
   11412:	2cf70763          	beq	a4,a5,116e0 <_malloc_r+0x4a2>
   11416:	6785                	lui	a5,0x1
   11418:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   1141a:	9abe                	add	s5,s5,a5
   1141c:	77fd                	lui	a5,0xfffff
   1141e:	00fafab3          	and	s5,s5,a5
   11422:	85d6                	mv	a1,s5
   11424:	854e                	mv	a0,s3
   11426:	1e9020ef          	jal	13e0e <_sbrk_r>
   1142a:	57fd                	li	a5,-1
   1142c:	8baa                	mv	s7,a0
   1142e:	32f50963          	beq	a0,a5,11760 <_malloc_r+0x522>
   11432:	c462                	sw	s8,8(sp)
   11434:	19456e63          	bltu	a0,s4,115d0 <_malloc_r+0x392>
   11438:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   1143c:	000c2583          	lw	a1,0(s8)
   11440:	95d6                	add	a1,a1,s5
   11442:	00bc2023          	sw	a1,0(s8)
   11446:	872e                	mv	a4,a1
   11448:	1eaa1863          	bne	s4,a0,11638 <_malloc_r+0x3fa>
   1144c:	01451793          	slli	a5,a0,0x14
   11450:	1e079463          	bnez	a5,11638 <_malloc_r+0x3fa>
   11454:	00892b83          	lw	s7,8(s2)
   11458:	015b07b3          	add	a5,s6,s5
   1145c:	0017e793          	ori	a5,a5,1
   11460:	00fba223          	sw	a5,4(s7)
   11464:	f301a683          	lw	a3,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   11468:	00b6f463          	bgeu	a3,a1,11470 <_malloc_r+0x232>
   1146c:	f2b1a823          	sw	a1,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   11470:	f2c1a683          	lw	a3,-212(gp) # 1b73c <__malloc_max_total_mem>
   11474:	00b6f463          	bgeu	a3,a1,1147c <_malloc_r+0x23e>
   11478:	f2b1a623          	sw	a1,-212(gp) # 1b73c <__malloc_max_total_mem>
   1147c:	4c22                	lw	s8,8(sp)
   1147e:	845e                	mv	s0,s7
   11480:	9bf1                	andi	a5,a5,-4
   11482:	40978733          	sub	a4,a5,s1
   11486:	2897eb63          	bltu	a5,s1,1171c <_malloc_r+0x4de>
   1148a:	47bd                	li	a5,15
   1148c:	28e7d863          	bge	a5,a4,1171c <_malloc_r+0x4de>
   11490:	4a62                	lw	s4,24(sp)
   11492:	4ad2                	lw	s5,20(sp)
   11494:	4bb2                	lw	s7,12(sp)
   11496:	4c92                	lw	s9,4(sp)
   11498:	0014e793          	ori	a5,s1,1
   1149c:	c05c                	sw	a5,4(s0)
   1149e:	94a2                	add	s1,s1,s0
   114a0:	00992423          	sw	s1,8(s2)
   114a4:	00176713          	ori	a4,a4,1
   114a8:	854e                	mv	a0,s3
   114aa:	c0d8                	sw	a4,4(s1)
   114ac:	2e25                	jal	117e4 <__malloc_unlock>
   114ae:	50b2                	lw	ra,44(sp)
   114b0:	00840513          	addi	a0,s0,8
   114b4:	5422                	lw	s0,40(sp)
   114b6:	4b42                	lw	s6,16(sp)
   114b8:	5492                	lw	s1,36(sp)
   114ba:	5902                	lw	s2,32(sp)
   114bc:	49f2                	lw	s3,28(sp)
   114be:	6145                	addi	sp,sp,48
   114c0:	8082                	ret
   114c2:	00492503          	lw	a0,4(s2)
   114c6:	bd61                	j	1135e <_malloc_r+0x120>
   114c8:	4410                	lw	a2,8(s0)
   114ca:	bb55                	j	1127e <_malloc_r+0x40>
   114cc:	47c0                	lw	s0,12(a5)
   114ce:	0589                	addi	a1,a1,2
   114d0:	e2878ae3          	beq	a5,s0,11304 <_malloc_r+0xc6>
   114d4:	b34d                	j	11276 <_malloc_r+0x38>
   114d6:	0097d713          	srli	a4,a5,0x9
   114da:	4691                	li	a3,4
   114dc:	0ee6f263          	bgeu	a3,a4,115c0 <_malloc_r+0x382>
   114e0:	46d1                	li	a3,20
   114e2:	24e6e663          	bltu	a3,a4,1172e <_malloc_r+0x4f0>
   114e6:	05c70613          	addi	a2,a4,92
   114ea:	05b70693          	addi	a3,a4,91
   114ee:	060e                	slli	a2,a2,0x3
   114f0:	964a                	add	a2,a2,s2
   114f2:	4218                	lw	a4,0(a2)
   114f4:	1661                	addi	a2,a2,-8
   114f6:	00e61663          	bne	a2,a4,11502 <_malloc_r+0x2c4>
   114fa:	a2ed                	j	116e4 <_malloc_r+0x4a6>
   114fc:	4718                	lw	a4,8(a4)
   114fe:	00e60663          	beq	a2,a4,1150a <_malloc_r+0x2cc>
   11502:	4354                	lw	a3,4(a4)
   11504:	9af1                	andi	a3,a3,-4
   11506:	fed7ebe3          	bltu	a5,a3,114fc <_malloc_r+0x2be>
   1150a:	4750                	lw	a2,12(a4)
   1150c:	c450                	sw	a2,12(s0)
   1150e:	c418                	sw	a4,8(s0)
   11510:	c600                	sw	s0,8(a2)
   11512:	c740                	sw	s0,12(a4)
   11514:	b5a9                	j	1135e <_malloc_r+0x120>
   11516:	4751                	li	a4,20
   11518:	0cf77363          	bgeu	a4,a5,115de <_malloc_r+0x3a0>
   1151c:	05400713          	li	a4,84
   11520:	22f76363          	bltu	a4,a5,11746 <_malloc_r+0x508>
   11524:	00c4d793          	srli	a5,s1,0xc
   11528:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe3613>
   1152c:	06e78813          	addi	a6,a5,110
   11530:	00359613          	slli	a2,a1,0x3
   11534:	b34d                	j	112d6 <_malloc_r+0x98>
   11536:	0e05                	addi	t3,t3,1
   11538:	003e7793          	andi	a5,t3,3
   1153c:	0521                	addi	a0,a0,8
   1153e:	cfc5                	beqz	a5,115f6 <_malloc_r+0x3b8>
   11540:	455c                	lw	a5,12(a0)
   11542:	bd91                	j	11396 <_malloc_r+0x158>
   11544:	4410                	lw	a2,8(s0)
   11546:	0014e593          	ori	a1,s1,1
   1154a:	c04c                	sw	a1,4(s0)
   1154c:	c65c                	sw	a5,12(a2)
   1154e:	c790                	sw	a2,8(a5)
   11550:	94a2                	add	s1,s1,s0
   11552:	00992a23          	sw	s1,20(s2)
   11556:	00992823          	sw	s1,16(s2)
   1155a:	0016e793          	ori	a5,a3,1
   1155e:	0104a623          	sw	a6,12(s1)
   11562:	0104a423          	sw	a6,8(s1)
   11566:	c0dc                	sw	a5,4(s1)
   11568:	9722                	add	a4,a4,s0
   1156a:	854e                	mv	a0,s3
   1156c:	c314                	sw	a3,0(a4)
   1156e:	2c9d                	jal	117e4 <__malloc_unlock>
   11570:	00840513          	addi	a0,s0,8
   11574:	b305                	j	11294 <_malloc_r+0x56>
   11576:	97a2                	add	a5,a5,s0
   11578:	43d8                	lw	a4,4(a5)
   1157a:	854e                	mv	a0,s3
   1157c:	00176713          	ori	a4,a4,1
   11580:	c3d8                	sw	a4,4(a5)
   11582:	248d                	jal	117e4 <__malloc_unlock>
   11584:	00840513          	addi	a0,s0,8
   11588:	b331                	j	11294 <_malloc_r+0x56>
   1158a:	0034d593          	srli	a1,s1,0x3
   1158e:	00848793          	addi	a5,s1,8
   11592:	b9c9                	j	11264 <_malloc_r+0x26>
   11594:	0014e693          	ori	a3,s1,1
   11598:	c054                	sw	a3,4(s0)
   1159a:	94a2                	add	s1,s1,s0
   1159c:	00992a23          	sw	s1,20(s2)
   115a0:	00992823          	sw	s1,16(s2)
   115a4:	00176693          	ori	a3,a4,1
   115a8:	0104a623          	sw	a6,12(s1)
   115ac:	0104a423          	sw	a6,8(s1)
   115b0:	c0d4                	sw	a3,4(s1)
   115b2:	97a2                	add	a5,a5,s0
   115b4:	854e                	mv	a0,s3
   115b6:	c398                	sw	a4,0(a5)
   115b8:	2435                	jal	117e4 <__malloc_unlock>
   115ba:	00840513          	addi	a0,s0,8
   115be:	b9d9                	j	11294 <_malloc_r+0x56>
   115c0:	0067d713          	srli	a4,a5,0x6
   115c4:	03970613          	addi	a2,a4,57
   115c8:	03870693          	addi	a3,a4,56
   115cc:	060e                	slli	a2,a2,0x3
   115ce:	b70d                	j	114f0 <_malloc_r+0x2b2>
   115d0:	05240d63          	beq	s0,s2,1162a <_malloc_r+0x3ec>
   115d4:	00892403          	lw	s0,8(s2)
   115d8:	4c22                	lw	s8,8(sp)
   115da:	405c                	lw	a5,4(s0)
   115dc:	b555                	j	11480 <_malloc_r+0x242>
   115de:	05c78593          	addi	a1,a5,92
   115e2:	05b78813          	addi	a6,a5,91
   115e6:	00359613          	slli	a2,a1,0x3
   115ea:	b1f5                	j	112d6 <_malloc_r+0x98>
   115ec:	00832783          	lw	a5,8(t1)
   115f0:	15fd                	addi	a1,a1,-1
   115f2:	1e679563          	bne	a5,t1,117dc <_malloc_r+0x59e>
   115f6:	0035f793          	andi	a5,a1,3
   115fa:	1361                	addi	t1,t1,-8
   115fc:	fbe5                	bnez	a5,115ec <_malloc_r+0x3ae>
   115fe:	00492703          	lw	a4,4(s2)
   11602:	fff64793          	not	a5,a2
   11606:	8ff9                	and	a5,a5,a4
   11608:	00f92223          	sw	a5,4(s2)
   1160c:	0606                	slli	a2,a2,0x1
   1160e:	dcc7e9e3          	bltu	a5,a2,113e0 <_malloc_r+0x1a2>
   11612:	dc0607e3          	beqz	a2,113e0 <_malloc_r+0x1a2>
   11616:	00f67733          	and	a4,a2,a5
   1161a:	e711                	bnez	a4,11626 <_malloc_r+0x3e8>
   1161c:	0606                	slli	a2,a2,0x1
   1161e:	00f67733          	and	a4,a2,a5
   11622:	0e11                	addi	t3,t3,4
   11624:	df65                	beqz	a4,1161c <_malloc_r+0x3de>
   11626:	85f2                	mv	a1,t3
   11628:	b38d                	j	1138a <_malloc_r+0x14c>
   1162a:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   1162e:	000c2703          	lw	a4,0(s8)
   11632:	9756                	add	a4,a4,s5
   11634:	00ec2023          	sw	a4,0(s8)
   11638:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   1163c:	57fd                	li	a5,-1
   1163e:	12f68563          	beq	a3,a5,11768 <_malloc_r+0x52a>
   11642:	414b87b3          	sub	a5,s7,s4
   11646:	97ba                	add	a5,a5,a4
   11648:	00fc2023          	sw	a5,0(s8)
   1164c:	007bfc93          	andi	s9,s7,7
   11650:	0a0c8263          	beqz	s9,116f4 <_malloc_r+0x4b6>
   11654:	419b8bb3          	sub	s7,s7,s9
   11658:	6785                	lui	a5,0x1
   1165a:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   1165c:	0ba1                	addi	s7,s7,8
   1165e:	419785b3          	sub	a1,a5,s9
   11662:	9ade                	add	s5,s5,s7
   11664:	415585b3          	sub	a1,a1,s5
   11668:	05d2                	slli	a1,a1,0x14
   1166a:	0145da13          	srli	s4,a1,0x14
   1166e:	85d2                	mv	a1,s4
   11670:	854e                	mv	a0,s3
   11672:	79c020ef          	jal	13e0e <_sbrk_r>
   11676:	57fd                	li	a5,-1
   11678:	12f50463          	beq	a0,a5,117a0 <_malloc_r+0x562>
   1167c:	41750533          	sub	a0,a0,s7
   11680:	01450ab3          	add	s5,a0,s4
   11684:	000c2703          	lw	a4,0(s8)
   11688:	01792423          	sw	s7,8(s2)
   1168c:	001ae793          	ori	a5,s5,1
   11690:	00ea05b3          	add	a1,s4,a4
   11694:	00bc2023          	sw	a1,0(s8)
   11698:	00fba223          	sw	a5,4(s7)
   1169c:	dd2404e3          	beq	s0,s2,11464 <_malloc_r+0x226>
   116a0:	46bd                	li	a3,15
   116a2:	0766f963          	bgeu	a3,s6,11714 <_malloc_r+0x4d6>
   116a6:	4058                	lw	a4,4(s0)
   116a8:	ff4b0793          	addi	a5,s6,-12
   116ac:	9be1                	andi	a5,a5,-8
   116ae:	8b05                	andi	a4,a4,1
   116b0:	8f5d                	or	a4,a4,a5
   116b2:	c058                	sw	a4,4(s0)
   116b4:	4615                	li	a2,5
   116b6:	00f40733          	add	a4,s0,a5
   116ba:	c350                	sw	a2,4(a4)
   116bc:	c710                	sw	a2,8(a4)
   116be:	00f6e563          	bltu	a3,a5,116c8 <_malloc_r+0x48a>
   116c2:	004ba783          	lw	a5,4(s7)
   116c6:	bb79                	j	11464 <_malloc_r+0x226>
   116c8:	00840593          	addi	a1,s0,8
   116cc:	854e                	mv	a0,s3
   116ce:	94fff0ef          	jal	1101c <_free_r>
   116d2:	00892b83          	lw	s7,8(s2)
   116d6:	000c2583          	lw	a1,0(s8)
   116da:	004ba783          	lw	a5,4(s7)
   116de:	b359                	j	11464 <_malloc_r+0x226>
   116e0:	0ac1                	addi	s5,s5,16
   116e2:	b381                	j	11422 <_malloc_r+0x1e4>
   116e4:	8689                	srai	a3,a3,0x2
   116e6:	4785                	li	a5,1
   116e8:	00d797b3          	sll	a5,a5,a3
   116ec:	8d5d                	or	a0,a0,a5
   116ee:	00a92223          	sw	a0,4(s2)
   116f2:	bd29                	j	1150c <_malloc_r+0x2ce>
   116f4:	015b85b3          	add	a1,s7,s5
   116f8:	40b005b3          	neg	a1,a1
   116fc:	05d2                	slli	a1,a1,0x14
   116fe:	0145da13          	srli	s4,a1,0x14
   11702:	85d2                	mv	a1,s4
   11704:	854e                	mv	a0,s3
   11706:	708020ef          	jal	13e0e <_sbrk_r>
   1170a:	57fd                	li	a5,-1
   1170c:	f6f518e3          	bne	a0,a5,1167c <_malloc_r+0x43e>
   11710:	4a01                	li	s4,0
   11712:	bf8d                	j	11684 <_malloc_r+0x446>
   11714:	4c22                	lw	s8,8(sp)
   11716:	4785                	li	a5,1
   11718:	00fba223          	sw	a5,4(s7)
   1171c:	854e                	mv	a0,s3
   1171e:	20d9                	jal	117e4 <__malloc_unlock>
   11720:	4501                	li	a0,0
   11722:	4a62                	lw	s4,24(sp)
   11724:	4ad2                	lw	s5,20(sp)
   11726:	4b42                	lw	s6,16(sp)
   11728:	4bb2                	lw	s7,12(sp)
   1172a:	4c92                	lw	s9,4(sp)
   1172c:	b6a5                	j	11294 <_malloc_r+0x56>
   1172e:	05400693          	li	a3,84
   11732:	02e6ee63          	bltu	a3,a4,1176e <_malloc_r+0x530>
   11736:	00c7d713          	srli	a4,a5,0xc
   1173a:	06f70613          	addi	a2,a4,111
   1173e:	06e70693          	addi	a3,a4,110
   11742:	060e                	slli	a2,a2,0x3
   11744:	b375                	j	114f0 <_malloc_r+0x2b2>
   11746:	15400713          	li	a4,340
   1174a:	02f76e63          	bltu	a4,a5,11786 <_malloc_r+0x548>
   1174e:	00f4d793          	srli	a5,s1,0xf
   11752:	07878593          	addi	a1,a5,120
   11756:	07778813          	addi	a6,a5,119
   1175a:	00359613          	slli	a2,a1,0x3
   1175e:	bea5                	j	112d6 <_malloc_r+0x98>
   11760:	00892403          	lw	s0,8(s2)
   11764:	405c                	lw	a5,4(s0)
   11766:	bb29                	j	11480 <_malloc_r+0x242>
   11768:	f171ac23          	sw	s7,-232(gp) # 1b728 <__malloc_sbrk_base>
   1176c:	b5c5                	j	1164c <_malloc_r+0x40e>
   1176e:	15400693          	li	a3,340
   11772:	02e6ed63          	bltu	a3,a4,117ac <_malloc_r+0x56e>
   11776:	00f7d713          	srli	a4,a5,0xf
   1177a:	07870613          	addi	a2,a4,120
   1177e:	07770693          	addi	a3,a4,119
   11782:	060e                	slli	a2,a2,0x3
   11784:	b3b5                	j	114f0 <_malloc_r+0x2b2>
   11786:	55400713          	li	a4,1364
   1178a:	02f76d63          	bltu	a4,a5,117c4 <_malloc_r+0x586>
   1178e:	0124d793          	srli	a5,s1,0x12
   11792:	07d78593          	addi	a1,a5,125
   11796:	07c78813          	addi	a6,a5,124
   1179a:	00359613          	slli	a2,a1,0x3
   1179e:	be25                	j	112d6 <_malloc_r+0x98>
   117a0:	1ce1                	addi	s9,s9,-8
   117a2:	9ae6                	add	s5,s5,s9
   117a4:	417a8ab3          	sub	s5,s5,s7
   117a8:	4a01                	li	s4,0
   117aa:	bde9                	j	11684 <_malloc_r+0x446>
   117ac:	55400693          	li	a3,1364
   117b0:	02e6e163          	bltu	a3,a4,117d2 <_malloc_r+0x594>
   117b4:	0127d713          	srli	a4,a5,0x12
   117b8:	07d70613          	addi	a2,a4,125
   117bc:	07c70693          	addi	a3,a4,124
   117c0:	060e                	slli	a2,a2,0x3
   117c2:	b33d                	j	114f0 <_malloc_r+0x2b2>
   117c4:	3f800613          	li	a2,1016
   117c8:	07f00593          	li	a1,127
   117cc:	07e00813          	li	a6,126
   117d0:	b619                	j	112d6 <_malloc_r+0x98>
   117d2:	3f800613          	li	a2,1016
   117d6:	07e00693          	li	a3,126
   117da:	bb19                	j	114f0 <_malloc_r+0x2b2>
   117dc:	00492783          	lw	a5,4(s2)
   117e0:	b535                	j	1160c <_malloc_r+0x3ce>

000117e2 <__malloc_lock>:
   117e2:	8082                	ret

000117e4 <__malloc_unlock>:
   117e4:	8082                	ret

000117e6 <_vfprintf_r>:
   117e6:	7145                	addi	sp,sp,-464
   117e8:	1c112623          	sw	ra,460(sp)
   117ec:	1c812423          	sw	s0,456(sp)
   117f0:	1c912223          	sw	s1,452(sp)
   117f4:	1b612823          	sw	s6,432(sp)
   117f8:	84ae                	mv	s1,a1
   117fa:	8b32                	mv	s6,a2
   117fc:	ca36                	sw	a3,20(sp)
   117fe:	842a                	mv	s0,a0
   11800:	c42a                	sw	a0,8(sp)
   11802:	600020ef          	jal	13e02 <_localeconv_r>
   11806:	411c                	lw	a5,0(a0)
   11808:	853e                	mv	a0,a5
   1180a:	d83e                	sw	a5,48(sp)
   1180c:	07f020ef          	jal	1408a <strlen>
   11810:	d62a                	sw	a0,44(sp)
   11812:	c982                	sw	zero,208(sp)
   11814:	cb82                	sw	zero,212(sp)
   11816:	cd82                	sw	zero,216(sp)
   11818:	cf82                	sw	zero,220(sp)
   1181a:	c409                	beqz	s0,11824 <_vfprintf_r+0x3e>
   1181c:	5858                	lw	a4,52(s0)
   1181e:	e319                	bnez	a4,11824 <_vfprintf_r+0x3e>
   11820:	1960106f          	j	129b6 <_vfprintf_r+0x11d0>
   11824:	00c49683          	lh	a3,12(s1)
   11828:	50f8                	lw	a4,100(s1)
   1182a:	01269613          	slli	a2,a3,0x12
   1182e:	00064a63          	bltz	a2,11842 <_vfprintf_r+0x5c>
   11832:	7679                	lui	a2,0xffffe
   11834:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   11836:	6589                	lui	a1,0x2
   11838:	8ecd                	or	a3,a3,a1
   1183a:	8f71                	and	a4,a4,a2
   1183c:	00d49623          	sh	a3,12(s1)
   11840:	d0f8                	sw	a4,100(s1)
   11842:	01271693          	slli	a3,a4,0x12
   11846:	0006d463          	bgez	a3,1184e <_vfprintf_r+0x68>
   1184a:	07b0106f          	j	130c4 <_vfprintf_r+0x18de>
   1184e:	00c49703          	lh	a4,12(s1)
   11852:	00877693          	andi	a3,a4,8
   11856:	22068a63          	beqz	a3,11a8a <_vfprintf_r+0x2a4>
   1185a:	4894                	lw	a3,16(s1)
   1185c:	22068763          	beqz	a3,11a8a <_vfprintf_r+0x2a4>
   11860:	8b69                	andi	a4,a4,26
   11862:	46a9                	li	a3,10
   11864:	24d70063          	beq	a4,a3,11aa4 <_vfprintf_r+0x2be>
   11868:	1b312e23          	sw	s3,444(sp)
   1186c:	1b412c23          	sw	s4,440(sp)
   11870:	1ba12023          	sw	s10,416(sp)
   11874:	6769                	lui	a4,0x1a
   11876:	1d212023          	sw	s2,448(sp)
   1187a:	1b512a23          	sw	s5,436(sp)
   1187e:	1b712623          	sw	s7,428(sp)
   11882:	1b812423          	sw	s8,424(sp)
   11886:	1b912223          	sw	s9,420(sp)
   1188a:	19b12e23          	sw	s11,412(sp)
   1188e:	8d5a                	mv	s10,s6
   11890:	57470793          	addi	a5,a4,1396 # 1a574 <__clzsi2+0x1ea>
   11894:	000d4703          	lbu	a4,0(s10)
   11898:	0ec10993          	addi	s3,sp,236
   1189c:	6a69                	lui	s4,0x1a
   1189e:	c3ce                	sw	s3,196(sp)
   118a0:	c782                	sw	zero,204(sp)
   118a2:	c582                	sw	zero,200(sp)
   118a4:	d002                	sw	zero,32(sp)
   118a6:	da02                	sw	zero,52(sp)
   118a8:	c082                	sw	zero,64(sp)
   118aa:	de02                	sw	zero,60(sp)
   118ac:	c482                	sw	zero,72(sp)
   118ae:	c282                	sw	zero,68(sp)
   118b0:	c602                	sw	zero,12(sp)
   118b2:	cc3e                	sw	a5,24(sp)
   118b4:	844e                	mv	s0,s3
   118b6:	778a0a13          	addi	s4,s4,1912 # 1a778 <zeroes.0>
   118ba:	18070063          	beqz	a4,11a3a <_vfprintf_r+0x254>
   118be:	896a                	mv	s2,s10
   118c0:	02500693          	li	a3,37
   118c4:	2ed70a63          	beq	a4,a3,11bb8 <_vfprintf_r+0x3d2>
   118c8:	00194703          	lbu	a4,1(s2)
   118cc:	0905                	addi	s2,s2,1
   118ce:	fb7d                	bnez	a4,118c4 <_vfprintf_r+0xde>
   118d0:	41a90ab3          	sub	s5,s2,s10
   118d4:	17a90363          	beq	s2,s10,11a3a <_vfprintf_r+0x254>
   118d8:	46be                	lw	a3,204(sp)
   118da:	472e                	lw	a4,200(sp)
   118dc:	01a42023          	sw	s10,0(s0)
   118e0:	96d6                	add	a3,a3,s5
   118e2:	0705                	addi	a4,a4,1
   118e4:	01542223          	sw	s5,4(s0)
   118e8:	c7b6                	sw	a3,204(sp)
   118ea:	c5ba                	sw	a4,200(sp)
   118ec:	469d                	li	a3,7
   118ee:	0421                	addi	s0,s0,8
   118f0:	2ce6cb63          	blt	a3,a4,11bc6 <_vfprintf_r+0x3e0>
   118f4:	47b2                	lw	a5,12(sp)
   118f6:	00094703          	lbu	a4,0(s2)
   118fa:	97d6                	add	a5,a5,s5
   118fc:	c63e                	sw	a5,12(sp)
   118fe:	12070e63          	beqz	a4,11a3a <_vfprintf_r+0x254>
   11902:	00194883          	lbu	a7,1(s2)
   11906:	0a0103a3          	sb	zero,167(sp)
   1190a:	0905                	addi	s2,s2,1
   1190c:	5afd                	li	s5,-1
   1190e:	4b81                	li	s7,0
   11910:	4c81                	li	s9,0
   11912:	05a00b13          	li	s6,90
   11916:	0905                	addi	s2,s2,1
   11918:	fe088793          	addi	a5,a7,-32
   1191c:	02fb6b63          	bltu	s6,a5,11952 <_vfprintf_r+0x16c>
   11920:	4762                	lw	a4,24(sp)
   11922:	078a                	slli	a5,a5,0x2
   11924:	97ba                	add	a5,a5,a4
   11926:	439c                	lw	a5,0(a5)
   11928:	8782                	jr	a5
   1192a:	4b81                	li	s7,0
   1192c:	fd088793          	addi	a5,a7,-48
   11930:	46a5                	li	a3,9
   11932:	00094883          	lbu	a7,0(s2)
   11936:	002b9713          	slli	a4,s7,0x2
   1193a:	9bba                	add	s7,s7,a4
   1193c:	0b86                	slli	s7,s7,0x1
   1193e:	9bbe                	add	s7,s7,a5
   11940:	fd088793          	addi	a5,a7,-48
   11944:	0905                	addi	s2,s2,1
   11946:	fef6f6e3          	bgeu	a3,a5,11932 <_vfprintf_r+0x14c>
   1194a:	fe088793          	addi	a5,a7,-32
   1194e:	fcfb79e3          	bgeu	s6,a5,11920 <_vfprintf_r+0x13a>
   11952:	0e088463          	beqz	a7,11a3a <_vfprintf_r+0x254>
   11956:	13110623          	sb	a7,300(sp)
   1195a:	0a0103a3          	sb	zero,167(sp)
   1195e:	4d85                	li	s11,1
   11960:	4b05                	li	s6,1
   11962:	12c10d13          	addi	s10,sp,300
   11966:	c802                	sw	zero,16(sp)
   11968:	4a81                	li	s5,0
   1196a:	d402                	sw	zero,40(sp)
   1196c:	d202                	sw	zero,36(sp)
   1196e:	ce02                	sw	zero,28(sp)
   11970:	002cf293          	andi	t0,s9,2
   11974:	00028363          	beqz	t0,1197a <_vfprintf_r+0x194>
   11978:	0d89                	addi	s11,s11,2
   1197a:	084cff93          	andi	t6,s9,132
   1197e:	463e                	lw	a2,204(sp)
   11980:	000f9663          	bnez	t6,1198c <_vfprintf_r+0x1a6>
   11984:	41bb8733          	sub	a4,s7,s11
   11988:	0ce047e3          	bgtz	a4,12256 <_vfprintf_r+0xa70>
   1198c:	0a714703          	lbu	a4,167(sp)
   11990:	cf19                	beqz	a4,119ae <_vfprintf_r+0x1c8>
   11992:	472e                	lw	a4,200(sp)
   11994:	0a710593          	addi	a1,sp,167
   11998:	c00c                	sw	a1,0(s0)
   1199a:	0605                	addi	a2,a2,1
   1199c:	4585                	li	a1,1
   1199e:	0705                	addi	a4,a4,1
   119a0:	c04c                	sw	a1,4(s0)
   119a2:	c7b2                	sw	a2,204(sp)
   119a4:	c5ba                	sw	a4,200(sp)
   119a6:	459d                	li	a1,7
   119a8:	0421                	addi	s0,s0,8
   119aa:	2ee5c763          	blt	a1,a4,11c98 <_vfprintf_r+0x4b2>
   119ae:	00028f63          	beqz	t0,119cc <_vfprintf_r+0x1e6>
   119b2:	472e                	lw	a4,200(sp)
   119b4:	4589                	li	a1,2
   119b6:	0609                	addi	a2,a2,2
   119b8:	0705                	addi	a4,a4,1
   119ba:	113c                	addi	a5,sp,168
   119bc:	c04c                	sw	a1,4(s0)
   119be:	c01c                	sw	a5,0(s0)
   119c0:	c7b2                	sw	a2,204(sp)
   119c2:	c5ba                	sw	a4,200(sp)
   119c4:	459d                	li	a1,7
   119c6:	0421                	addi	s0,s0,8
   119c8:	12e5cae3          	blt	a1,a4,122fc <_vfprintf_r+0xb16>
   119cc:	08000713          	li	a4,128
   119d0:	72ef8e63          	beq	t6,a4,1210c <_vfprintf_r+0x926>
   119d4:	416a8ab3          	sub	s5,s5,s6
   119d8:	7d504a63          	bgtz	s5,121ac <_vfprintf_r+0x9c6>
   119dc:	100cf713          	andi	a4,s9,256
   119e0:	60071e63          	bnez	a4,11ffc <_vfprintf_r+0x816>
   119e4:	47ae                	lw	a5,200(sp)
   119e6:	965a                	add	a2,a2,s6
   119e8:	01a42023          	sw	s10,0(s0)
   119ec:	0785                	addi	a5,a5,1
   119ee:	01642223          	sw	s6,4(s0)
   119f2:	c7b2                	sw	a2,204(sp)
   119f4:	c5be                	sw	a5,200(sp)
   119f6:	471d                	li	a4,7
   119f8:	36f74563          	blt	a4,a5,11d62 <_vfprintf_r+0x57c>
   119fc:	0421                	addi	s0,s0,8
   119fe:	004cfe13          	andi	t3,s9,4
   11a02:	000e0663          	beqz	t3,11a0e <_vfprintf_r+0x228>
   11a06:	41bb8ab3          	sub	s5,s7,s11
   11a0a:	115047e3          	bgtz	s5,12318 <_vfprintf_r+0xb32>
   11a0e:	835e                	mv	t1,s7
   11a10:	01bbd363          	bge	s7,s11,11a16 <_vfprintf_r+0x230>
   11a14:	836e                	mv	t1,s11
   11a16:	47b2                	lw	a5,12(sp)
   11a18:	979a                	add	a5,a5,t1
   11a1a:	c63e                	sw	a5,12(sp)
   11a1c:	00061ce3          	bnez	a2,12234 <_vfprintf_r+0xa4e>
   11a20:	47c2                	lw	a5,16(sp)
   11a22:	c582                	sw	zero,200(sp)
   11a24:	c789                	beqz	a5,11a2e <_vfprintf_r+0x248>
   11a26:	45c2                	lw	a1,16(sp)
   11a28:	4522                	lw	a0,8(sp)
   11a2a:	df2ff0ef          	jal	1101c <_free_r>
   11a2e:	844e                	mv	s0,s3
   11a30:	8d4a                	mv	s10,s2
   11a32:	000d4703          	lbu	a4,0(s10)
   11a36:	e80714e3          	bnez	a4,118be <_vfprintf_r+0xd8>
   11a3a:	47be                	lw	a5,204(sp)
   11a3c:	c399                	beqz	a5,11a42 <_vfprintf_r+0x25c>
   11a3e:	31a0106f          	j	12d58 <_vfprintf_r+0x1572>
   11a42:	00c4d783          	lhu	a5,12(s1)
   11a46:	1c012903          	lw	s2,448(sp)
   11a4a:	1bc12983          	lw	s3,444(sp)
   11a4e:	0407f793          	andi	a5,a5,64
   11a52:	1b812a03          	lw	s4,440(sp)
   11a56:	1b412a83          	lw	s5,436(sp)
   11a5a:	1ac12b83          	lw	s7,428(sp)
   11a5e:	1a812c03          	lw	s8,424(sp)
   11a62:	1a412c83          	lw	s9,420(sp)
   11a66:	1a012d03          	lw	s10,416(sp)
   11a6a:	19c12d83          	lw	s11,412(sp)
   11a6e:	c399                	beqz	a5,11a74 <_vfprintf_r+0x28e>
   11a70:	6540106f          	j	130c4 <_vfprintf_r+0x18de>
   11a74:	1cc12083          	lw	ra,460(sp)
   11a78:	1c812403          	lw	s0,456(sp)
   11a7c:	4532                	lw	a0,12(sp)
   11a7e:	1c412483          	lw	s1,452(sp)
   11a82:	1b012b03          	lw	s6,432(sp)
   11a86:	6179                	addi	sp,sp,464
   11a88:	8082                	ret
   11a8a:	4522                	lw	a0,8(sp)
   11a8c:	85a6                	mv	a1,s1
   11a8e:	18c020ef          	jal	13c1a <__swsetup_r>
   11a92:	c119                	beqz	a0,11a98 <_vfprintf_r+0x2b2>
   11a94:	6300106f          	j	130c4 <_vfprintf_r+0x18de>
   11a98:	00c49703          	lh	a4,12(s1)
   11a9c:	46a9                	li	a3,10
   11a9e:	8b69                	andi	a4,a4,26
   11aa0:	dcd714e3          	bne	a4,a3,11868 <_vfprintf_r+0x82>
   11aa4:	00e49703          	lh	a4,14(s1)
   11aa8:	dc0740e3          	bltz	a4,11868 <_vfprintf_r+0x82>
   11aac:	46d2                	lw	a3,20(sp)
   11aae:	4522                	lw	a0,8(sp)
   11ab0:	865a                	mv	a2,s6
   11ab2:	85a6                	mv	a1,s1
   11ab4:	0e9010ef          	jal	1339c <__sbprintf>
   11ab8:	c62a                	sw	a0,12(sp)
   11aba:	bf6d                	j	11a74 <_vfprintf_r+0x28e>
   11abc:	4c22                	lw	s8,8(sp)
   11abe:	8562                	mv	a0,s8
   11ac0:	342020ef          	jal	13e02 <_localeconv_r>
   11ac4:	415c                	lw	a5,4(a0)
   11ac6:	853e                	mv	a0,a5
   11ac8:	c2be                	sw	a5,68(sp)
   11aca:	5c0020ef          	jal	1408a <strlen>
   11ace:	87aa                	mv	a5,a0
   11ad0:	8562                	mv	a0,s8
   11ad2:	c4be                	sw	a5,72(sp)
   11ad4:	8c3e                	mv	s8,a5
   11ad6:	32c020ef          	jal	13e02 <_localeconv_r>
   11ada:	451c                	lw	a5,8(a0)
   11adc:	de3e                	sw	a5,60(sp)
   11ade:	280c16e3          	bnez	s8,1256a <_vfprintf_r+0xd84>
   11ae2:	00094883          	lbu	a7,0(s2)
   11ae6:	bd05                	j	11916 <_vfprintf_r+0x130>
   11ae8:	00094883          	lbu	a7,0(s2)
   11aec:	020cec93          	ori	s9,s9,32
   11af0:	b51d                	j	11916 <_vfprintf_r+0x130>
   11af2:	010cec93          	ori	s9,s9,16
   11af6:	020cf793          	andi	a5,s9,32
   11afa:	26078e63          	beqz	a5,11d76 <_vfprintf_r+0x590>
   11afe:	47d2                	lw	a5,20(sp)
   11b00:	00778c13          	addi	s8,a5,7
   11b04:	ff8c7c13          	andi	s8,s8,-8
   11b08:	004c2783          	lw	a5,4(s8)
   11b0c:	000c2b03          	lw	s6,0(s8)
   11b10:	008c0713          	addi	a4,s8,8
   11b14:	ca3a                	sw	a4,20(sp)
   11b16:	8dbe                	mv	s11,a5
   11b18:	2807c463          	bltz	a5,11da0 <_vfprintf_r+0x5ba>
   11b1c:	8ee6                	mv	t4,s9
   11b1e:	380ac563          	bltz	s5,11ea8 <_vfprintf_r+0x6c2>
   11b22:	01bb67b3          	or	a5,s6,s11
   11b26:	f7fcfe93          	andi	t4,s9,-129
   11b2a:	36079f63          	bnez	a5,11ea8 <_vfprintf_r+0x6c2>
   11b2e:	380a9263          	bnez	s5,11eb2 <_vfprintf_r+0x6cc>
   11b32:	4b01                	li	s6,0
   11b34:	8cf6                	mv	s9,t4
   11b36:	19010d13          	addi	s10,sp,400
   11b3a:	0a714703          	lbu	a4,167(sp)
   11b3e:	8dd6                	mv	s11,s5
   11b40:	016ad363          	bge	s5,s6,11b46 <_vfprintf_r+0x360>
   11b44:	8dda                	mv	s11,s6
   11b46:	c802                	sw	zero,16(sp)
   11b48:	d402                	sw	zero,40(sp)
   11b4a:	d202                	sw	zero,36(sp)
   11b4c:	ce02                	sw	zero,28(sp)
   11b4e:	e20701e3          	beqz	a4,11970 <_vfprintf_r+0x18a>
   11b52:	0d85                	addi	s11,s11,1
   11b54:	bd31                	j	11970 <_vfprintf_r+0x18a>
   11b56:	010cec93          	ori	s9,s9,16
   11b5a:	020cf793          	andi	a5,s9,32
   11b5e:	2a078d63          	beqz	a5,11e18 <_vfprintf_r+0x632>
   11b62:	47d2                	lw	a5,20(sp)
   11b64:	00778c13          	addi	s8,a5,7
   11b68:	ff8c7c13          	andi	s8,s8,-8
   11b6c:	000c2b03          	lw	s6,0(s8)
   11b70:	004c2d83          	lw	s11,4(s8)
   11b74:	008c0793          	addi	a5,s8,8
   11b78:	ca3e                	sw	a5,20(sp)
   11b7a:	bffcfe93          	andi	t4,s9,-1025
   11b7e:	4781                	li	a5,0
   11b80:	4701                	li	a4,0
   11b82:	0ae103a3          	sb	a4,167(sp)
   11b86:	220acd63          	bltz	s5,11dc0 <_vfprintf_r+0x5da>
   11b8a:	01bb6733          	or	a4,s6,s11
   11b8e:	f7fefc93          	andi	s9,t4,-129
   11b92:	6c071063          	bnez	a4,12252 <_vfprintf_r+0xa6c>
   11b96:	520a9763          	bnez	s5,120c4 <_vfprintf_r+0x8de>
   11b9a:	180790e3          	bnez	a5,1251a <_vfprintf_r+0xd34>
   11b9e:	001efb13          	andi	s6,t4,1
   11ba2:	19010d13          	addi	s10,sp,400
   11ba6:	f80b0ae3          	beqz	s6,11b3a <_vfprintf_r+0x354>
   11baa:	03000793          	li	a5,48
   11bae:	18f107a3          	sb	a5,399(sp)
   11bb2:	18f10d13          	addi	s10,sp,399
   11bb6:	b751                	j	11b3a <_vfprintf_r+0x354>
   11bb8:	41a90ab3          	sub	s5,s2,s10
   11bbc:	d1a91ee3          	bne	s2,s10,118d8 <_vfprintf_r+0xf2>
   11bc0:	00094703          	lbu	a4,0(s2)
   11bc4:	bb2d                	j	118fe <_vfprintf_r+0x118>
   11bc6:	4522                	lw	a0,8(sp)
   11bc8:	01d0                	addi	a2,sp,196
   11bca:	85a6                	mv	a1,s1
   11bcc:	065010ef          	jal	13430 <__sprint_r>
   11bd0:	e60519e3          	bnez	a0,11a42 <_vfprintf_r+0x25c>
   11bd4:	844e                	mv	s0,s3
   11bd6:	bb39                	j	118f4 <_vfprintf_r+0x10e>
   11bd8:	008cf713          	andi	a4,s9,8
   11bdc:	1c0716e3          	bnez	a4,125a8 <_vfprintf_r+0xdc2>
   11be0:	47d2                	lw	a5,20(sp)
   11be2:	0908                	addi	a0,sp,144
   11be4:	c846                	sw	a7,16(sp)
   11be6:	00778c13          	addi	s8,a5,7
   11bea:	ff8c7c13          	andi	s8,s8,-8
   11bee:	000c2583          	lw	a1,0(s8)
   11bf2:	004c2603          	lw	a2,4(s8)
   11bf6:	008c0793          	addi	a5,s8,8
   11bfa:	ca3e                	sw	a5,20(sp)
   11bfc:	602080ef          	jal	1a1fe <__extenddftf2>
   11c00:	45ca                	lw	a1,144(sp)
   11c02:	465a                	lw	a2,148(sp)
   11c04:	46ea                	lw	a3,152(sp)
   11c06:	477a                	lw	a4,156(sp)
   11c08:	48c2                	lw	a7,16(sp)
   11c0a:	0988                	addi	a0,sp,208
   11c0c:	c846                	sw	a7,16(sp)
   11c0e:	cfba                	sw	a4,220(sp)
   11c10:	c9ae                	sw	a1,208(sp)
   11c12:	cbb2                	sw	a2,212(sp)
   11c14:	cdb6                	sw	a3,216(sp)
   11c16:	7d4020ef          	jal	143ea <_ldcheck>
   11c1a:	d72a                	sw	a0,172(sp)
   11c1c:	4709                	li	a4,2
   11c1e:	48c2                	lw	a7,16(sp)
   11c20:	5ce50be3          	beq	a0,a4,129f6 <_vfprintf_r+0x1210>
   11c24:	4705                	li	a4,1
   11c26:	6ae505e3          	beq	a0,a4,12ad0 <_vfprintf_r+0x12ea>
   11c2a:	06100713          	li	a4,97
   11c2e:	2ae88ce3          	beq	a7,a4,126e6 <_vfprintf_r+0xf00>
   11c32:	04100713          	li	a4,65
   11c36:	05800793          	li	a5,88
   11c3a:	2ae888e3          	beq	a7,a4,126ea <_vfprintf_r+0xf04>
   11c3e:	577d                	li	a4,-1
   11c40:	00ea9463          	bne	s5,a4,11c48 <_vfprintf_r+0x462>
   11c44:	6260106f          	j	1326a <_vfprintf_r+0x1a84>
   11c48:	fdf8f713          	andi	a4,a7,-33
   11c4c:	04700693          	li	a3,71
   11c50:	c802                	sw	zero,16(sp)
   11c52:	00d71563          	bne	a4,a3,11c5c <_vfprintf_r+0x476>
   11c56:	000a9363          	bnez	s5,11c5c <_vfprintf_r+0x476>
   11c5a:	4a85                	li	s5,1
   11c5c:	4c7e                	lw	s8,220(sp)
   11c5e:	100ce793          	ori	a5,s9,256
   11c62:	c6be                	sw	a5,76(sp)
   11c64:	dc02                	sw	zero,56(sp)
   11c66:	4fce                	lw	t6,208(sp)
   11c68:	4f5e                	lw	t5,212(sp)
   11c6a:	4eee                	lw	t4,216(sp)
   11c6c:	000c5963          	bgez	s8,11c7e <_vfprintf_r+0x498>
   11c70:	80000737          	lui	a4,0x80000
   11c74:	02d00793          	li	a5,45
   11c78:	01874c33          	xor	s8,a4,s8
   11c7c:	dc3e                	sw	a5,56(sp)
   11c7e:	fbf88713          	addi	a4,a7,-65
   11c82:	02500693          	li	a3,37
   11c86:	28e6eee3          	bltu	a3,a4,12722 <_vfprintf_r+0xf3c>
   11c8a:	66e9                	lui	a3,0x1a
   11c8c:	070a                	slli	a4,a4,0x2
   11c8e:	6e068693          	addi	a3,a3,1760 # 1a6e0 <__clzsi2+0x356>
   11c92:	9736                	add	a4,a4,a3
   11c94:	4318                	lw	a4,0(a4)
   11c96:	8702                	jr	a4
   11c98:	4522                	lw	a0,8(sp)
   11c9a:	01d0                	addi	a2,sp,196
   11c9c:	85a6                	mv	a1,s1
   11c9e:	c8c6                	sw	a7,80(sp)
   11ca0:	c6fe                	sw	t6,76(sp)
   11ca2:	dc16                	sw	t0,56(sp)
   11ca4:	78c010ef          	jal	13430 <__sprint_r>
   11ca8:	58051d63          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   11cac:	463e                	lw	a2,204(sp)
   11cae:	48c6                	lw	a7,80(sp)
   11cb0:	4fb6                	lw	t6,76(sp)
   11cb2:	52e2                	lw	t0,56(sp)
   11cb4:	844e                	mv	s0,s3
   11cb6:	b9e5                	j	119ae <_vfprintf_r+0x1c8>
   11cb8:	4aae                	lw	s5,200(sp)
   11cba:	5782                	lw	a5,32(sp)
   11cbc:	4705                	li	a4,1
   11cbe:	01a42023          	sw	s10,0(s0)
   11cc2:	00160c13          	addi	s8,a2,1
   11cc6:	0a85                	addi	s5,s5,1
   11cc8:	00840b13          	addi	s6,s0,8
   11ccc:	7af75763          	bge	a4,a5,1247a <_vfprintf_r+0xc94>
   11cd0:	4705                	li	a4,1
   11cd2:	c058                	sw	a4,4(s0)
   11cd4:	c7e2                	sw	s8,204(sp)
   11cd6:	c5d6                	sw	s5,200(sp)
   11cd8:	471d                	li	a4,7
   11cda:	395741e3          	blt	a4,s5,1285c <_vfprintf_r+0x1076>
   11cde:	57b2                	lw	a5,44(sp)
   11ce0:	5742                	lw	a4,48(sp)
   11ce2:	0a85                	addi	s5,s5,1
   11ce4:	9c3e                	add	s8,s8,a5
   11ce6:	00eb2023          	sw	a4,0(s6)
   11cea:	00fb2223          	sw	a5,4(s6)
   11cee:	c7e2                	sw	s8,204(sp)
   11cf0:	c5d6                	sw	s5,200(sp)
   11cf2:	471d                	li	a4,7
   11cf4:	0b21                	addi	s6,s6,8
   11cf6:	37574fe3          	blt	a4,s5,12874 <_vfprintf_r+0x108e>
   11cfa:	474e                	lw	a4,208(sp)
   11cfc:	5782                	lw	a5,32(sp)
   11cfe:	010c                	addi	a1,sp,128
   11d00:	c93a                	sw	a4,144(sp)
   11d02:	475e                	lw	a4,212(sp)
   11d04:	0908                	addi	a0,sp,144
   11d06:	c102                	sw	zero,128(sp)
   11d08:	cb3a                	sw	a4,148(sp)
   11d0a:	476e                	lw	a4,216(sp)
   11d0c:	c302                	sw	zero,132(sp)
   11d0e:	c502                	sw	zero,136(sp)
   11d10:	cd3a                	sw	a4,152(sp)
   11d12:	477e                	lw	a4,220(sp)
   11d14:	c702                	sw	zero,140(sp)
   11d16:	fff78413          	addi	s0,a5,-1
   11d1a:	cf3a                	sw	a4,156(sp)
   11d1c:	1fe060ef          	jal	17f1a <__eqtf2>
   11d20:	78050263          	beqz	a0,124a4 <_vfprintf_r+0xcbe>
   11d24:	001d0793          	addi	a5,s10,1
   11d28:	0a85                	addi	s5,s5,1
   11d2a:	9c22                	add	s8,s8,s0
   11d2c:	00fb2023          	sw	a5,0(s6)
   11d30:	008b2223          	sw	s0,4(s6)
   11d34:	c7e2                	sw	s8,204(sp)
   11d36:	c5d6                	sw	s5,200(sp)
   11d38:	479d                	li	a5,7
   11d3a:	0b21                	addi	s6,s6,8
   11d3c:	7557c963          	blt	a5,s5,1248e <_vfprintf_r+0xca8>
   11d40:	4686                	lw	a3,64(sp)
   11d42:	1958                	addi	a4,sp,180
   11d44:	001a8793          	addi	a5,s5,1
   11d48:	01868633          	add	a2,a3,s8
   11d4c:	00eb2023          	sw	a4,0(s6)
   11d50:	00db2223          	sw	a3,4(s6)
   11d54:	c7b2                	sw	a2,204(sp)
   11d56:	c5be                	sw	a5,200(sp)
   11d58:	471d                	li	a4,7
   11d5a:	008b0413          	addi	s0,s6,8
   11d5e:	caf750e3          	bge	a4,a5,119fe <_vfprintf_r+0x218>
   11d62:	4522                	lw	a0,8(sp)
   11d64:	01d0                	addi	a2,sp,196
   11d66:	85a6                	mv	a1,s1
   11d68:	6c8010ef          	jal	13430 <__sprint_r>
   11d6c:	4c051b63          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   11d70:	463e                	lw	a2,204(sp)
   11d72:	844e                	mv	s0,s3
   11d74:	b169                	j	119fe <_vfprintf_r+0x218>
   11d76:	4752                	lw	a4,20(sp)
   11d78:	010cf793          	andi	a5,s9,16
   11d7c:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe45a4>
   11d80:	0711                	addi	a4,a4,4
   11d82:	ca3a                	sw	a4,20(sp)
   11d84:	7c079e63          	bnez	a5,12560 <_vfprintf_r+0xd7a>
   11d88:	040cf793          	andi	a5,s9,64
   11d8c:	7c078663          	beqz	a5,12558 <_vfprintf_r+0xd72>
   11d90:	0b42                	slli	s6,s6,0x10
   11d92:	410b5b13          	srai	s6,s6,0x10
   11d96:	41fb5d93          	srai	s11,s6,0x1f
   11d9a:	87ee                	mv	a5,s11
   11d9c:	d807d0e3          	bgez	a5,11b1c <_vfprintf_r+0x336>
   11da0:	02d00713          	li	a4,45
   11da4:	016037b3          	snez	a5,s6
   11da8:	41b00db3          	neg	s11,s11
   11dac:	0ae103a3          	sb	a4,167(sp)
   11db0:	40fd8db3          	sub	s11,s11,a5
   11db4:	41600b33          	neg	s6,s6
   11db8:	8ee6                	mv	t4,s9
   11dba:	4785                	li	a5,1
   11dbc:	dc0ad7e3          	bgez	s5,11b8a <_vfprintf_r+0x3a4>
   11dc0:	4705                	li	a4,1
   11dc2:	0ee78363          	beq	a5,a4,11ea8 <_vfprintf_r+0x6c2>
   11dc6:	4709                	li	a4,2
   11dc8:	30e78763          	beq	a5,a4,120d6 <_vfprintf_r+0x8f0>
   11dcc:	19010d13          	addi	s10,sp,400
   11dd0:	01dd9793          	slli	a5,s11,0x1d
   11dd4:	007b7713          	andi	a4,s6,7
   11dd8:	003b5b13          	srli	s6,s6,0x3
   11ddc:	03070713          	addi	a4,a4,48
   11de0:	0167eb33          	or	s6,a5,s6
   11de4:	003ddd93          	srli	s11,s11,0x3
   11de8:	feed0fa3          	sb	a4,-1(s10)
   11dec:	01bb67b3          	or	a5,s6,s11
   11df0:	866a                	mv	a2,s10
   11df2:	1d7d                	addi	s10,s10,-1
   11df4:	fff1                	bnez	a5,11dd0 <_vfprintf_r+0x5ea>
   11df6:	001ef693          	andi	a3,t4,1
   11dfa:	30068463          	beqz	a3,12102 <_vfprintf_r+0x91c>
   11dfe:	03000693          	li	a3,48
   11e02:	30d70063          	beq	a4,a3,12102 <_vfprintf_r+0x91c>
   11e06:	1679                	addi	a2,a2,-2
   11e08:	0b1c                	addi	a5,sp,400
   11e0a:	fedd0fa3          	sb	a3,-1(s10)
   11e0e:	40c78b33          	sub	s6,a5,a2
   11e12:	8cf6                	mv	s9,t4
   11e14:	8d32                	mv	s10,a2
   11e16:	b315                	j	11b3a <_vfprintf_r+0x354>
   11e18:	4752                	lw	a4,20(sp)
   11e1a:	010cf793          	andi	a5,s9,16
   11e1e:	00072b03          	lw	s6,0(a4)
   11e22:	0711                	addi	a4,a4,4
   11e24:	ca3a                	sw	a4,20(sp)
   11e26:	72079663          	bnez	a5,12552 <_vfprintf_r+0xd6c>
   11e2a:	040cf793          	andi	a5,s9,64
   11e2e:	70078e63          	beqz	a5,1254a <_vfprintf_r+0xd64>
   11e32:	0b42                	slli	s6,s6,0x10
   11e34:	010b5b13          	srli	s6,s6,0x10
   11e38:	4d81                	li	s11,0
   11e3a:	b381                	j	11b7a <_vfprintf_r+0x394>
   11e3c:	4752                	lw	a4,20(sp)
   11e3e:	0a0103a3          	sb	zero,167(sp)
   11e42:	4d85                	li	s11,1
   11e44:	431c                	lw	a5,0(a4)
   11e46:	0711                	addi	a4,a4,4
   11e48:	ca3a                	sw	a4,20(sp)
   11e4a:	12f10623          	sb	a5,300(sp)
   11e4e:	4b05                	li	s6,1
   11e50:	12c10d13          	addi	s10,sp,300
   11e54:	be09                	j	11966 <_vfprintf_r+0x180>
   11e56:	47d2                	lw	a5,20(sp)
   11e58:	0a0103a3          	sb	zero,167(sp)
   11e5c:	0007ad03          	lw	s10,0(a5)
   11e60:	00478c13          	addi	s8,a5,4
   11e64:	7e0d0a63          	beqz	s10,12658 <_vfprintf_r+0xe72>
   11e68:	420ac4e3          	bltz	s5,12a90 <_vfprintf_r+0x12aa>
   11e6c:	8656                	mv	a2,s5
   11e6e:	4581                	li	a1,0
   11e70:	856a                	mv	a0,s10
   11e72:	ca46                	sw	a7,20(sp)
   11e74:	681010ef          	jal	13cf4 <memchr>
   11e78:	c82a                	sw	a0,16(sp)
   11e7a:	48d2                	lw	a7,20(sp)
   11e7c:	e119                	bnez	a0,11e82 <_vfprintf_r+0x69c>
   11e7e:	25c0106f          	j	130da <_vfprintf_r+0x18f4>
   11e82:	47c2                	lw	a5,16(sp)
   11e84:	0a714703          	lbu	a4,167(sp)
   11e88:	ca62                	sw	s8,20(sp)
   11e8a:	41a78b33          	sub	s6,a5,s10
   11e8e:	fffb4693          	not	a3,s6
   11e92:	86fd                	srai	a3,a3,0x1f
   11e94:	c802                	sw	zero,16(sp)
   11e96:	d402                	sw	zero,40(sp)
   11e98:	d202                	sw	zero,36(sp)
   11e9a:	ce02                	sw	zero,28(sp)
   11e9c:	00db7db3          	and	s11,s6,a3
   11ea0:	4a81                	li	s5,0
   11ea2:	ca0718e3          	bnez	a4,11b52 <_vfprintf_r+0x36c>
   11ea6:	b4e9                	j	11970 <_vfprintf_r+0x18a>
   11ea8:	1e0d98e3          	bnez	s11,12898 <_vfprintf_r+0x10b2>
   11eac:	47a5                	li	a5,9
   11eae:	1f67e5e3          	bltu	a5,s6,12898 <_vfprintf_r+0x10b2>
   11eb2:	030b0b13          	addi	s6,s6,48
   11eb6:	196107a3          	sb	s6,399(sp)
   11eba:	8cf6                	mv	s9,t4
   11ebc:	4b05                	li	s6,1
   11ebe:	18f10d13          	addi	s10,sp,399
   11ec2:	b9a5                	j	11b3a <_vfprintf_r+0x354>
   11ec4:	47d2                	lw	a5,20(sp)
   11ec6:	0007ab83          	lw	s7,0(a5)
   11eca:	0791                	addi	a5,a5,4
   11ecc:	660bd163          	bgez	s7,1252e <_vfprintf_r+0xd48>
   11ed0:	41700bb3          	neg	s7,s7
   11ed4:	ca3e                	sw	a5,20(sp)
   11ed6:	00094883          	lbu	a7,0(s2)
   11eda:	004cec93          	ori	s9,s9,4
   11ede:	bc25                	j	11916 <_vfprintf_r+0x130>
   11ee0:	02b00793          	li	a5,43
   11ee4:	00094883          	lbu	a7,0(s2)
   11ee8:	0af103a3          	sb	a5,167(sp)
   11eec:	b42d                	j	11916 <_vfprintf_r+0x130>
   11eee:	00094883          	lbu	a7,0(s2)
   11ef2:	080cec93          	ori	s9,s9,128
   11ef6:	b405                	j	11916 <_vfprintf_r+0x130>
   11ef8:	00094883          	lbu	a7,0(s2)
   11efc:	02a00793          	li	a5,42
   11f00:	00190693          	addi	a3,s2,1
   11f04:	00f89463          	bne	a7,a5,11f0c <_vfprintf_r+0x726>
   11f08:	44c0106f          	j	13354 <_vfprintf_r+0x1b6e>
   11f0c:	fd088793          	addi	a5,a7,-48
   11f10:	4725                	li	a4,9
   11f12:	4a81                	li	s5,0
   11f14:	4625                	li	a2,9
   11f16:	02f76063          	bltu	a4,a5,11f36 <_vfprintf_r+0x750>
   11f1a:	0006c883          	lbu	a7,0(a3)
   11f1e:	002a9713          	slli	a4,s5,0x2
   11f22:	9aba                	add	s5,s5,a4
   11f24:	0a86                	slli	s5,s5,0x1
   11f26:	9abe                	add	s5,s5,a5
   11f28:	fd088793          	addi	a5,a7,-48
   11f2c:	0685                	addi	a3,a3,1
   11f2e:	fef676e3          	bgeu	a2,a5,11f1a <_vfprintf_r+0x734>
   11f32:	680ac963          	bltz	s5,125c4 <_vfprintf_r+0xdde>
   11f36:	8936                	mv	s2,a3
   11f38:	b2c5                	j	11918 <_vfprintf_r+0x132>
   11f3a:	00094883          	lbu	a7,0(s2)
   11f3e:	001cec93          	ori	s9,s9,1
   11f42:	bad1                	j	11916 <_vfprintf_r+0x130>
   11f44:	0a714783          	lbu	a5,167(sp)
   11f48:	00094883          	lbu	a7,0(s2)
   11f4c:	9c0795e3          	bnez	a5,11916 <_vfprintf_r+0x130>
   11f50:	02000793          	li	a5,32
   11f54:	0af103a3          	sb	a5,167(sp)
   11f58:	ba7d                	j	11916 <_vfprintf_r+0x130>
   11f5a:	010cee93          	ori	t4,s9,16
   11f5e:	020ef793          	andi	a5,t4,32
   11f62:	58078a63          	beqz	a5,124f6 <_vfprintf_r+0xd10>
   11f66:	47d2                	lw	a5,20(sp)
   11f68:	00778c13          	addi	s8,a5,7
   11f6c:	ff8c7c13          	andi	s8,s8,-8
   11f70:	008c0793          	addi	a5,s8,8
   11f74:	ca3e                	sw	a5,20(sp)
   11f76:	000c2b03          	lw	s6,0(s8)
   11f7a:	004c2d83          	lw	s11,4(s8)
   11f7e:	4785                	li	a5,1
   11f80:	b101                	j	11b80 <_vfprintf_r+0x39a>
   11f82:	00094883          	lbu	a7,0(s2)
   11f86:	008cec93          	ori	s9,s9,8
   11f8a:	b271                	j	11916 <_vfprintf_r+0x130>
   11f8c:	4752                	lw	a4,20(sp)
   11f8e:	67a1                	lui	a5,0x8
   11f90:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   11f94:	0af11423          	sh	a5,168(sp)
   11f98:	00470793          	addi	a5,a4,4
   11f9c:	ca3e                	sw	a5,20(sp)
   11f9e:	67e9                	lui	a5,0x1a
   11fa0:	41c78793          	addi	a5,a5,1052 # 1a41c <__clzsi2+0x92>
   11fa4:	da3e                	sw	a5,52(sp)
   11fa6:	00072b03          	lw	s6,0(a4)
   11faa:	4d81                	li	s11,0
   11fac:	002cee93          	ori	t4,s9,2
   11fb0:	4789                	li	a5,2
   11fb2:	07800893          	li	a7,120
   11fb6:	b6e9                	j	11b80 <_vfprintf_r+0x39a>
   11fb8:	020cf793          	andi	a5,s9,32
   11fbc:	5c078463          	beqz	a5,12584 <_vfprintf_r+0xd9e>
   11fc0:	47d2                	lw	a5,20(sp)
   11fc2:	46b2                	lw	a3,12(sp)
   11fc4:	439c                	lw	a5,0(a5)
   11fc6:	41f6d713          	srai	a4,a3,0x1f
   11fca:	c394                	sw	a3,0(a5)
   11fcc:	c3d8                	sw	a4,4(a5)
   11fce:	47d2                	lw	a5,20(sp)
   11fd0:	8d4a                	mv	s10,s2
   11fd2:	0791                	addi	a5,a5,4
   11fd4:	ca3e                	sw	a5,20(sp)
   11fd6:	bcb1                	j	11a32 <_vfprintf_r+0x24c>
   11fd8:	00094883          	lbu	a7,0(s2)
   11fdc:	06c00793          	li	a5,108
   11fe0:	64f88b63          	beq	a7,a5,12636 <_vfprintf_r+0xe50>
   11fe4:	010cec93          	ori	s9,s9,16
   11fe8:	b23d                	j	11916 <_vfprintf_r+0x130>
   11fea:	00094883          	lbu	a7,0(s2)
   11fee:	06800793          	li	a5,104
   11ff2:	62f88b63          	beq	a7,a5,12628 <_vfprintf_r+0xe42>
   11ff6:	040cec93          	ori	s9,s9,64
   11ffa:	ba31                	j	11916 <_vfprintf_r+0x130>
   11ffc:	06500713          	li	a4,101
   12000:	cb175ce3          	bge	a4,a7,11cb8 <_vfprintf_r+0x4d2>
   12004:	474e                	lw	a4,208(sp)
   12006:	010c                	addi	a1,sp,128
   12008:	0908                	addi	a0,sp,144
   1200a:	c93a                	sw	a4,144(sp)
   1200c:	475e                	lw	a4,212(sp)
   1200e:	dc32                	sw	a2,56(sp)
   12010:	c102                	sw	zero,128(sp)
   12012:	cb3a                	sw	a4,148(sp)
   12014:	476e                	lw	a4,216(sp)
   12016:	c302                	sw	zero,132(sp)
   12018:	c502                	sw	zero,136(sp)
   1201a:	cd3a                	sw	a4,152(sp)
   1201c:	477e                	lw	a4,220(sp)
   1201e:	c702                	sw	zero,140(sp)
   12020:	cf3a                	sw	a4,156(sp)
   12022:	6f9050ef          	jal	17f1a <__eqtf2>
   12026:	5662                	lw	a2,56(sp)
   12028:	36051363          	bnez	a0,1238e <_vfprintf_r+0xba8>
   1202c:	47ae                	lw	a5,200(sp)
   1202e:	6769                	lui	a4,0x1a
   12030:	44c70713          	addi	a4,a4,1100 # 1a44c <__clzsi2+0xc2>
   12034:	c018                	sw	a4,0(s0)
   12036:	0605                	addi	a2,a2,1
   12038:	4705                	li	a4,1
   1203a:	0785                	addi	a5,a5,1
   1203c:	c058                	sw	a4,4(s0)
   1203e:	c7b2                	sw	a2,204(sp)
   12040:	c5be                	sw	a5,200(sp)
   12042:	471d                	li	a4,7
   12044:	0421                	addi	s0,s0,8
   12046:	16f74de3          	blt	a4,a5,129c0 <_vfprintf_r+0x11da>
   1204a:	57ba                	lw	a5,172(sp)
   1204c:	5702                	lw	a4,32(sp)
   1204e:	4ce7db63          	bge	a5,a4,12524 <_vfprintf_r+0xd3e>
   12052:	57c2                	lw	a5,48(sp)
   12054:	5732                	lw	a4,44(sp)
   12056:	0421                	addi	s0,s0,8
   12058:	fef42c23          	sw	a5,-8(s0)
   1205c:	47ae                	lw	a5,200(sp)
   1205e:	963a                	add	a2,a2,a4
   12060:	fee42e23          	sw	a4,-4(s0)
   12064:	0785                	addi	a5,a5,1
   12066:	c7b2                	sw	a2,204(sp)
   12068:	c5be                	sw	a5,200(sp)
   1206a:	471d                	li	a4,7
   1206c:	5cf74c63          	blt	a4,a5,12644 <_vfprintf_r+0xe5e>
   12070:	5782                	lw	a5,32(sp)
   12072:	fff78a93          	addi	s5,a5,-1
   12076:	995054e3          	blez	s5,119fe <_vfprintf_r+0x218>
   1207a:	6869                	lui	a6,0x1a
   1207c:	77880813          	addi	a6,a6,1912 # 1a778 <zeroes.0>
   12080:	4741                	li	a4,16
   12082:	47ae                	lw	a5,200(sp)
   12084:	4b41                	li	s6,16
   12086:	4c1d                	li	s8,7
   12088:	8d42                	mv	s10,a6
   1208a:	01574763          	blt	a4,s5,12098 <_vfprintf_r+0x8b2>
   1208e:	14b0006f          	j	129d8 <_vfprintf_r+0x11f2>
   12092:	1ac1                	addi	s5,s5,-16
   12094:	155b51e3          	bge	s6,s5,129d6 <_vfprintf_r+0x11f0>
   12098:	0641                	addi	a2,a2,16
   1209a:	0785                	addi	a5,a5,1
   1209c:	01a42023          	sw	s10,0(s0)
   120a0:	01642223          	sw	s6,4(s0)
   120a4:	c7b2                	sw	a2,204(sp)
   120a6:	c5be                	sw	a5,200(sp)
   120a8:	0421                	addi	s0,s0,8
   120aa:	fefc54e3          	bge	s8,a5,12092 <_vfprintf_r+0x8ac>
   120ae:	4522                	lw	a0,8(sp)
   120b0:	01d0                	addi	a2,sp,196
   120b2:	85a6                	mv	a1,s1
   120b4:	37c010ef          	jal	13430 <__sprint_r>
   120b8:	18051563          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   120bc:	463e                	lw	a2,204(sp)
   120be:	47ae                	lw	a5,200(sp)
   120c0:	844e                	mv	s0,s3
   120c2:	bfc1                	j	12092 <_vfprintf_r+0x8ac>
   120c4:	4705                	li	a4,1
   120c6:	00e79463          	bne	a5,a4,120ce <_vfprintf_r+0x8e8>
   120ca:	0f20106f          	j	131bc <_vfprintf_r+0x19d6>
   120ce:	4709                	li	a4,2
   120d0:	8ee6                	mv	t4,s9
   120d2:	cee79de3          	bne	a5,a4,11dcc <_vfprintf_r+0x5e6>
   120d6:	56d2                	lw	a3,52(sp)
   120d8:	19010d13          	addi	s10,sp,400
   120dc:	00fb7793          	andi	a5,s6,15
   120e0:	97b6                	add	a5,a5,a3
   120e2:	0007c703          	lbu	a4,0(a5)
   120e6:	004b5b13          	srli	s6,s6,0x4
   120ea:	01cd9793          	slli	a5,s11,0x1c
   120ee:	0167eb33          	or	s6,a5,s6
   120f2:	004ddd93          	srli	s11,s11,0x4
   120f6:	feed0fa3          	sb	a4,-1(s10)
   120fa:	01bb67b3          	or	a5,s6,s11
   120fe:	1d7d                	addi	s10,s10,-1
   12100:	fff1                	bnez	a5,120dc <_vfprintf_r+0x8f6>
   12102:	0b1c                	addi	a5,sp,400
   12104:	41a78b33          	sub	s6,a5,s10
   12108:	8cf6                	mv	s9,t4
   1210a:	bc05                	j	11b3a <_vfprintf_r+0x354>
   1210c:	41bb8c33          	sub	s8,s7,s11
   12110:	8d8052e3          	blez	s8,119d4 <_vfprintf_r+0x1ee>
   12114:	6869                	lui	a6,0x1a
   12116:	4541                	li	a0,16
   12118:	45ae                	lw	a1,200(sp)
   1211a:	77880813          	addi	a6,a6,1912 # 1a778 <zeroes.0>
   1211e:	05855f63          	bge	a0,s8,1217c <_vfprintf_r+0x996>
   12122:	dc4a                	sw	s2,56(sp)
   12124:	87a2                	mv	a5,s0
   12126:	4ec1                	li	t4,16
   12128:	8462                	mv	s0,s8
   1212a:	4f9d                	li	t6,7
   1212c:	8c5a                	mv	s8,s6
   1212e:	8942                	mv	s2,a6
   12130:	8b56                	mv	s6,s5
   12132:	8ac6                	mv	s5,a7
   12134:	a021                	j	1213c <_vfprintf_r+0x956>
   12136:	1441                	addi	s0,s0,-16
   12138:	028edb63          	bge	t4,s0,1216e <_vfprintf_r+0x988>
   1213c:	0641                	addi	a2,a2,16
   1213e:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   12140:	0127a023          	sw	s2,0(a5)
   12144:	01d7a223          	sw	t4,4(a5)
   12148:	c7b2                	sw	a2,204(sp)
   1214a:	c5ae                	sw	a1,200(sp)
   1214c:	07a1                	addi	a5,a5,8
   1214e:	febfd4e3          	bge	t6,a1,12136 <_vfprintf_r+0x950>
   12152:	4522                	lw	a0,8(sp)
   12154:	01d0                	addi	a2,sp,196
   12156:	85a6                	mv	a1,s1
   12158:	2d8010ef          	jal	13430 <__sprint_r>
   1215c:	e17d                	bnez	a0,12242 <_vfprintf_r+0xa5c>
   1215e:	4ec1                	li	t4,16
   12160:	1441                	addi	s0,s0,-16
   12162:	463e                	lw	a2,204(sp)
   12164:	45ae                	lw	a1,200(sp)
   12166:	87ce                	mv	a5,s3
   12168:	4f9d                	li	t6,7
   1216a:	fc8ec9e3          	blt	t4,s0,1213c <_vfprintf_r+0x956>
   1216e:	884a                	mv	a6,s2
   12170:	5962                	lw	s2,56(sp)
   12172:	88d6                	mv	a7,s5
   12174:	8ada                	mv	s5,s6
   12176:	8b62                	mv	s6,s8
   12178:	8c22                	mv	s8,s0
   1217a:	843e                	mv	s0,a5
   1217c:	9662                	add	a2,a2,s8
   1217e:	0585                	addi	a1,a1,1
   12180:	01042023          	sw	a6,0(s0)
   12184:	01842223          	sw	s8,4(s0)
   12188:	c7b2                	sw	a2,204(sp)
   1218a:	c5ae                	sw	a1,200(sp)
   1218c:	471d                	li	a4,7
   1218e:	0421                	addi	s0,s0,8
   12190:	84b752e3          	bge	a4,a1,119d4 <_vfprintf_r+0x1ee>
   12194:	4522                	lw	a0,8(sp)
   12196:	01d0                	addi	a2,sp,196
   12198:	85a6                	mv	a1,s1
   1219a:	dc46                	sw	a7,56(sp)
   1219c:	294010ef          	jal	13430 <__sprint_r>
   121a0:	e14d                	bnez	a0,12242 <_vfprintf_r+0xa5c>
   121a2:	463e                	lw	a2,204(sp)
   121a4:	58e2                	lw	a7,56(sp)
   121a6:	844e                	mv	s0,s3
   121a8:	82dff06f          	j	119d4 <_vfprintf_r+0x1ee>
   121ac:	6869                	lui	a6,0x1a
   121ae:	4741                	li	a4,16
   121b0:	45ae                	lw	a1,200(sp)
   121b2:	77880813          	addi	a6,a6,1912 # 1a778 <zeroes.0>
   121b6:	05575763          	bge	a4,s5,12204 <_vfprintf_r+0xa1e>
   121ba:	87a2                	mv	a5,s0
   121bc:	4741                	li	a4,16
   121be:	8456                	mv	s0,s5
   121c0:	4c1d                	li	s8,7
   121c2:	dc46                	sw	a7,56(sp)
   121c4:	8ad2                	mv	s5,s4
   121c6:	a021                	j	121ce <_vfprintf_r+0x9e8>
   121c8:	1441                	addi	s0,s0,-16
   121ca:	02875963          	bge	a4,s0,121fc <_vfprintf_r+0xa16>
   121ce:	0641                	addi	a2,a2,16
   121d0:	0585                	addi	a1,a1,1
   121d2:	0147a023          	sw	s4,0(a5)
   121d6:	c3d8                	sw	a4,4(a5)
   121d8:	c7b2                	sw	a2,204(sp)
   121da:	c5ae                	sw	a1,200(sp)
   121dc:	07a1                	addi	a5,a5,8
   121de:	febc55e3          	bge	s8,a1,121c8 <_vfprintf_r+0x9e2>
   121e2:	4522                	lw	a0,8(sp)
   121e4:	01d0                	addi	a2,sp,196
   121e6:	85a6                	mv	a1,s1
   121e8:	248010ef          	jal	13430 <__sprint_r>
   121ec:	e939                	bnez	a0,12242 <_vfprintf_r+0xa5c>
   121ee:	4741                	li	a4,16
   121f0:	1441                	addi	s0,s0,-16
   121f2:	463e                	lw	a2,204(sp)
   121f4:	45ae                	lw	a1,200(sp)
   121f6:	87ce                	mv	a5,s3
   121f8:	fc874be3          	blt	a4,s0,121ce <_vfprintf_r+0x9e8>
   121fc:	58e2                	lw	a7,56(sp)
   121fe:	8856                	mv	a6,s5
   12200:	8aa2                	mv	s5,s0
   12202:	843e                	mv	s0,a5
   12204:	9656                	add	a2,a2,s5
   12206:	0585                	addi	a1,a1,1
   12208:	01042023          	sw	a6,0(s0)
   1220c:	01542223          	sw	s5,4(s0)
   12210:	c7b2                	sw	a2,204(sp)
   12212:	c5ae                	sw	a1,200(sp)
   12214:	471d                	li	a4,7
   12216:	0421                	addi	s0,s0,8
   12218:	fcb75263          	bge	a4,a1,119dc <_vfprintf_r+0x1f6>
   1221c:	4522                	lw	a0,8(sp)
   1221e:	01d0                	addi	a2,sp,196
   12220:	85a6                	mv	a1,s1
   12222:	dc46                	sw	a7,56(sp)
   12224:	20c010ef          	jal	13430 <__sprint_r>
   12228:	ed09                	bnez	a0,12242 <_vfprintf_r+0xa5c>
   1222a:	463e                	lw	a2,204(sp)
   1222c:	58e2                	lw	a7,56(sp)
   1222e:	844e                	mv	s0,s3
   12230:	facff06f          	j	119dc <_vfprintf_r+0x1f6>
   12234:	4522                	lw	a0,8(sp)
   12236:	01d0                	addi	a2,sp,196
   12238:	85a6                	mv	a1,s1
   1223a:	1f6010ef          	jal	13430 <__sprint_r>
   1223e:	fe050163          	beqz	a0,11a20 <_vfprintf_r+0x23a>
   12242:	45c2                	lw	a1,16(sp)
   12244:	fe058f63          	beqz	a1,11a42 <_vfprintf_r+0x25c>
   12248:	4522                	lw	a0,8(sp)
   1224a:	dd3fe0ef          	jal	1101c <_free_r>
   1224e:	ff4ff06f          	j	11a42 <_vfprintf_r+0x25c>
   12252:	8ee6                	mv	t4,s9
   12254:	b6b5                	j	11dc0 <_vfprintf_r+0x5da>
   12256:	6869                	lui	a6,0x1a
   12258:	4541                	li	a0,16
   1225a:	45ae                	lw	a1,200(sp)
   1225c:	78880c13          	addi	s8,a6,1928 # 1a788 <blanks.1>
   12260:	06e55363          	bge	a0,a4,122c6 <_vfprintf_r+0xae0>
   12264:	c8ca                	sw	s2,80(sp)
   12266:	87a2                	mv	a5,s0
   12268:	8962                	mv	s2,s8
   1226a:	4ec1                	li	t4,16
   1226c:	8c5a                	mv	s8,s6
   1226e:	439d                	li	t2,7
   12270:	8b56                	mv	s6,s5
   12272:	dc16                	sw	t0,56(sp)
   12274:	c6fe                	sw	t6,76(sp)
   12276:	843a                	mv	s0,a4
   12278:	8ac6                	mv	s5,a7
   1227a:	a021                	j	12282 <_vfprintf_r+0xa9c>
   1227c:	1441                	addi	s0,s0,-16
   1227e:	028edb63          	bge	t4,s0,122b4 <_vfprintf_r+0xace>
   12282:	0641                	addi	a2,a2,16
   12284:	0585                	addi	a1,a1,1
   12286:	0127a023          	sw	s2,0(a5)
   1228a:	01d7a223          	sw	t4,4(a5)
   1228e:	c7b2                	sw	a2,204(sp)
   12290:	c5ae                	sw	a1,200(sp)
   12292:	07a1                	addi	a5,a5,8
   12294:	feb3d4e3          	bge	t2,a1,1227c <_vfprintf_r+0xa96>
   12298:	4522                	lw	a0,8(sp)
   1229a:	01d0                	addi	a2,sp,196
   1229c:	85a6                	mv	a1,s1
   1229e:	192010ef          	jal	13430 <__sprint_r>
   122a2:	f145                	bnez	a0,12242 <_vfprintf_r+0xa5c>
   122a4:	4ec1                	li	t4,16
   122a6:	1441                	addi	s0,s0,-16
   122a8:	463e                	lw	a2,204(sp)
   122aa:	45ae                	lw	a1,200(sp)
   122ac:	87ce                	mv	a5,s3
   122ae:	439d                	li	t2,7
   122b0:	fc8ec9e3          	blt	t4,s0,12282 <_vfprintf_r+0xa9c>
   122b4:	88d6                	mv	a7,s5
   122b6:	52e2                	lw	t0,56(sp)
   122b8:	8ada                	mv	s5,s6
   122ba:	4fb6                	lw	t6,76(sp)
   122bc:	8b62                	mv	s6,s8
   122be:	8c4a                	mv	s8,s2
   122c0:	4946                	lw	s2,80(sp)
   122c2:	8722                	mv	a4,s0
   122c4:	843e                	mv	s0,a5
   122c6:	963a                	add	a2,a2,a4
   122c8:	0585                	addi	a1,a1,1
   122ca:	c058                	sw	a4,4(s0)
   122cc:	01842023          	sw	s8,0(s0)
   122d0:	c7b2                	sw	a2,204(sp)
   122d2:	c5ae                	sw	a1,200(sp)
   122d4:	471d                	li	a4,7
   122d6:	0421                	addi	s0,s0,8
   122d8:	eab75a63          	bge	a4,a1,1198c <_vfprintf_r+0x1a6>
   122dc:	4522                	lw	a0,8(sp)
   122de:	01d0                	addi	a2,sp,196
   122e0:	85a6                	mv	a1,s1
   122e2:	c8c6                	sw	a7,80(sp)
   122e4:	c6fe                	sw	t6,76(sp)
   122e6:	dc16                	sw	t0,56(sp)
   122e8:	148010ef          	jal	13430 <__sprint_r>
   122ec:	f939                	bnez	a0,12242 <_vfprintf_r+0xa5c>
   122ee:	463e                	lw	a2,204(sp)
   122f0:	48c6                	lw	a7,80(sp)
   122f2:	4fb6                	lw	t6,76(sp)
   122f4:	52e2                	lw	t0,56(sp)
   122f6:	844e                	mv	s0,s3
   122f8:	e94ff06f          	j	1198c <_vfprintf_r+0x1a6>
   122fc:	4522                	lw	a0,8(sp)
   122fe:	01d0                	addi	a2,sp,196
   12300:	85a6                	mv	a1,s1
   12302:	c6c6                	sw	a7,76(sp)
   12304:	dc7e                	sw	t6,56(sp)
   12306:	12a010ef          	jal	13430 <__sprint_r>
   1230a:	fd05                	bnez	a0,12242 <_vfprintf_r+0xa5c>
   1230c:	463e                	lw	a2,204(sp)
   1230e:	48b6                	lw	a7,76(sp)
   12310:	5fe2                	lw	t6,56(sp)
   12312:	844e                	mv	s0,s3
   12314:	eb8ff06f          	j	119cc <_vfprintf_r+0x1e6>
   12318:	6869                	lui	a6,0x1a
   1231a:	4741                	li	a4,16
   1231c:	47ae                	lw	a5,200(sp)
   1231e:	78880c13          	addi	s8,a6,1928 # 1a788 <blanks.1>
   12322:	05575163          	bge	a4,s5,12364 <_vfprintf_r+0xb7e>
   12326:	4d22                	lw	s10,8(sp)
   12328:	4b41                	li	s6,16
   1232a:	4c9d                	li	s9,7
   1232c:	a021                	j	12334 <_vfprintf_r+0xb4e>
   1232e:	1ac1                	addi	s5,s5,-16
   12330:	035b5a63          	bge	s6,s5,12364 <_vfprintf_r+0xb7e>
   12334:	0641                	addi	a2,a2,16
   12336:	0785                	addi	a5,a5,1
   12338:	01842023          	sw	s8,0(s0)
   1233c:	01642223          	sw	s6,4(s0)
   12340:	c7b2                	sw	a2,204(sp)
   12342:	c5be                	sw	a5,200(sp)
   12344:	0421                	addi	s0,s0,8
   12346:	fefcd4e3          	bge	s9,a5,1232e <_vfprintf_r+0xb48>
   1234a:	01d0                	addi	a2,sp,196
   1234c:	85a6                	mv	a1,s1
   1234e:	856a                	mv	a0,s10
   12350:	0e0010ef          	jal	13430 <__sprint_r>
   12354:	ee0517e3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12358:	1ac1                	addi	s5,s5,-16
   1235a:	463e                	lw	a2,204(sp)
   1235c:	47ae                	lw	a5,200(sp)
   1235e:	844e                	mv	s0,s3
   12360:	fd5b4ae3          	blt	s6,s5,12334 <_vfprintf_r+0xb4e>
   12364:	9656                	add	a2,a2,s5
   12366:	0785                	addi	a5,a5,1
   12368:	01842023          	sw	s8,0(s0)
   1236c:	01542223          	sw	s5,4(s0)
   12370:	c7b2                	sw	a2,204(sp)
   12372:	c5be                	sw	a5,200(sp)
   12374:	471d                	li	a4,7
   12376:	e8f75c63          	bge	a4,a5,11a0e <_vfprintf_r+0x228>
   1237a:	4522                	lw	a0,8(sp)
   1237c:	01d0                	addi	a2,sp,196
   1237e:	85a6                	mv	a1,s1
   12380:	0b0010ef          	jal	13430 <__sprint_r>
   12384:	ea051fe3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12388:	463e                	lw	a2,204(sp)
   1238a:	e84ff06f          	j	11a0e <_vfprintf_r+0x228>
   1238e:	553a                	lw	a0,172(sp)
   12390:	5ca05e63          	blez	a0,1296c <_vfprintf_r+0x1186>
   12394:	47f2                	lw	a5,28(sp)
   12396:	5702                	lw	a4,32(sp)
   12398:	8abe                	mv	s5,a5
   1239a:	22f74163          	blt	a4,a5,125bc <_vfprintf_r+0xdd6>
   1239e:	01505f63          	blez	s5,123bc <_vfprintf_r+0xbd6>
   123a2:	472e                	lw	a4,200(sp)
   123a4:	9656                	add	a2,a2,s5
   123a6:	01a42023          	sw	s10,0(s0)
   123aa:	0705                	addi	a4,a4,1
   123ac:	01542223          	sw	s5,4(s0)
   123b0:	c7b2                	sw	a2,204(sp)
   123b2:	c5ba                	sw	a4,200(sp)
   123b4:	459d                	li	a1,7
   123b6:	0421                	addi	s0,s0,8
   123b8:	14e5c5e3          	blt	a1,a4,12d02 <_vfprintf_r+0x151c>
   123bc:	fffac713          	not	a4,s5
   123c0:	47f2                	lw	a5,28(sp)
   123c2:	877d                	srai	a4,a4,0x1f
   123c4:	00eafab3          	and	s5,s5,a4
   123c8:	41578ab3          	sub	s5,a5,s5
   123cc:	2b504163          	bgtz	s5,1266e <_vfprintf_r+0xe88>
   123d0:	47f2                	lw	a5,28(sp)
   123d2:	400cf713          	andi	a4,s9,1024
   123d6:	00fd0c33          	add	s8,s10,a5
   123da:	7a071e63          	bnez	a4,12b96 <_vfprintf_r+0x13b0>
   123de:	5aba                	lw	s5,172(sp)
   123e0:	5782                	lw	a5,32(sp)
   123e2:	2cfaca63          	blt	s5,a5,126b6 <_vfprintf_r+0xed0>
   123e6:	001cf713          	andi	a4,s9,1
   123ea:	2c071663          	bnez	a4,126b6 <_vfprintf_r+0xed0>
   123ee:	5702                	lw	a4,32(sp)
   123f0:	00ed07b3          	add	a5,s10,a4
   123f4:	41570ab3          	sub	s5,a4,s5
   123f8:	41878b33          	sub	s6,a5,s8
   123fc:	016ad363          	bge	s5,s6,12402 <_vfprintf_r+0xc1c>
   12400:	8b56                	mv	s6,s5
   12402:	01605f63          	blez	s6,12420 <_vfprintf_r+0xc3a>
   12406:	47ae                	lw	a5,200(sp)
   12408:	965a                	add	a2,a2,s6
   1240a:	01842023          	sw	s8,0(s0)
   1240e:	0785                	addi	a5,a5,1
   12410:	01642223          	sw	s6,4(s0)
   12414:	c7b2                	sw	a2,204(sp)
   12416:	c5be                	sw	a5,200(sp)
   12418:	471d                	li	a4,7
   1241a:	0421                	addi	s0,s0,8
   1241c:	4cf74de3          	blt	a4,a5,130f6 <_vfprintf_r+0x1910>
   12420:	fffb4793          	not	a5,s6
   12424:	87fd                	srai	a5,a5,0x1f
   12426:	00fb7b33          	and	s6,s6,a5
   1242a:	416a8ab3          	sub	s5,s5,s6
   1242e:	dd505863          	blez	s5,119fe <_vfprintf_r+0x218>
   12432:	6869                	lui	a6,0x1a
   12434:	77880813          	addi	a6,a6,1912 # 1a778 <zeroes.0>
   12438:	4741                	li	a4,16
   1243a:	47ae                	lw	a5,200(sp)
   1243c:	4b41                	li	s6,16
   1243e:	4c1d                	li	s8,7
   12440:	8d42                	mv	s10,a6
   12442:	01574663          	blt	a4,s5,1244e <_vfprintf_r+0xc68>
   12446:	ab49                	j	129d8 <_vfprintf_r+0x11f2>
   12448:	1ac1                	addi	s5,s5,-16
   1244a:	595b5663          	bge	s6,s5,129d6 <_vfprintf_r+0x11f0>
   1244e:	0641                	addi	a2,a2,16
   12450:	0785                	addi	a5,a5,1
   12452:	01a42023          	sw	s10,0(s0)
   12456:	01642223          	sw	s6,4(s0)
   1245a:	c7b2                	sw	a2,204(sp)
   1245c:	c5be                	sw	a5,200(sp)
   1245e:	0421                	addi	s0,s0,8
   12460:	fefc54e3          	bge	s8,a5,12448 <_vfprintf_r+0xc62>
   12464:	4522                	lw	a0,8(sp)
   12466:	01d0                	addi	a2,sp,196
   12468:	85a6                	mv	a1,s1
   1246a:	7c7000ef          	jal	13430 <__sprint_r>
   1246e:	dc051ae3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12472:	463e                	lw	a2,204(sp)
   12474:	47ae                	lw	a5,200(sp)
   12476:	844e                	mv	s0,s3
   12478:	bfc1                	j	12448 <_vfprintf_r+0xc62>
   1247a:	001cf593          	andi	a1,s9,1
   1247e:	840599e3          	bnez	a1,11cd0 <_vfprintf_r+0x4ea>
   12482:	c058                	sw	a4,4(s0)
   12484:	c7e2                	sw	s8,204(sp)
   12486:	c5d6                	sw	s5,200(sp)
   12488:	479d                	li	a5,7
   1248a:	8b57dbe3          	bge	a5,s5,11d40 <_vfprintf_r+0x55a>
   1248e:	4522                	lw	a0,8(sp)
   12490:	01d0                	addi	a2,sp,196
   12492:	85a6                	mv	a1,s1
   12494:	79d000ef          	jal	13430 <__sprint_r>
   12498:	da0515e3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   1249c:	4c3e                	lw	s8,204(sp)
   1249e:	4aae                	lw	s5,200(sp)
   124a0:	8b4e                	mv	s6,s3
   124a2:	b879                	j	11d40 <_vfprintf_r+0x55a>
   124a4:	5702                	lw	a4,32(sp)
   124a6:	4785                	li	a5,1
   124a8:	88e7dce3          	bge	a5,a4,11d40 <_vfprintf_r+0x55a>
   124ac:	6869                	lui	a6,0x1a
   124ae:	47c5                	li	a5,17
   124b0:	77880813          	addi	a6,a6,1912 # 1a778 <zeroes.0>
   124b4:	60e7d863          	bge	a5,a4,12ac4 <_vfprintf_r+0x12de>
   124b8:	ce4a                	sw	s2,28(sp)
   124ba:	47c1                	li	a5,16
   124bc:	4d1d                	li	s10,7
   124be:	8942                	mv	s2,a6
   124c0:	a021                	j	124c8 <_vfprintf_r+0xce2>
   124c2:	1441                	addi	s0,s0,-16
   124c4:	5e87de63          	bge	a5,s0,12ac0 <_vfprintf_r+0x12da>
   124c8:	0c41                	addi	s8,s8,16
   124ca:	0a85                	addi	s5,s5,1
   124cc:	012b2023          	sw	s2,0(s6)
   124d0:	00fb2223          	sw	a5,4(s6)
   124d4:	c7e2                	sw	s8,204(sp)
   124d6:	c5d6                	sw	s5,200(sp)
   124d8:	0b21                	addi	s6,s6,8
   124da:	ff5d54e3          	bge	s10,s5,124c2 <_vfprintf_r+0xcdc>
   124de:	4522                	lw	a0,8(sp)
   124e0:	01d0                	addi	a2,sp,196
   124e2:	85a6                	mv	a1,s1
   124e4:	74d000ef          	jal	13430 <__sprint_r>
   124e8:	d4051de3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   124ec:	4c3e                	lw	s8,204(sp)
   124ee:	4aae                	lw	s5,200(sp)
   124f0:	8b4e                	mv	s6,s3
   124f2:	47c1                	li	a5,16
   124f4:	b7f9                	j	124c2 <_vfprintf_r+0xcdc>
   124f6:	4752                	lw	a4,20(sp)
   124f8:	010ef793          	andi	a5,t4,16
   124fc:	00072b03          	lw	s6,0(a4)
   12500:	0711                	addi	a4,a4,4
   12502:	ca3a                	sw	a4,20(sp)
   12504:	ef9d                	bnez	a5,12542 <_vfprintf_r+0xd5c>
   12506:	040ef793          	andi	a5,t4,64
   1250a:	c79d                	beqz	a5,12538 <_vfprintf_r+0xd52>
   1250c:	0b42                	slli	s6,s6,0x10
   1250e:	010b5b13          	srli	s6,s6,0x10
   12512:	4d81                	li	s11,0
   12514:	4785                	li	a5,1
   12516:	e6aff06f          	j	11b80 <_vfprintf_r+0x39a>
   1251a:	4b01                	li	s6,0
   1251c:	19010d13          	addi	s10,sp,400
   12520:	e1aff06f          	j	11b3a <_vfprintf_r+0x354>
   12524:	001cf793          	andi	a5,s9,1
   12528:	cc078b63          	beqz	a5,119fe <_vfprintf_r+0x218>
   1252c:	b61d                	j	12052 <_vfprintf_r+0x86c>
   1252e:	00094883          	lbu	a7,0(s2)
   12532:	ca3e                	sw	a5,20(sp)
   12534:	be2ff06f          	j	11916 <_vfprintf_r+0x130>
   12538:	200ef793          	andi	a5,t4,512
   1253c:	c399                	beqz	a5,12542 <_vfprintf_r+0xd5c>
   1253e:	0ffb7b13          	zext.b	s6,s6
   12542:	4d81                	li	s11,0
   12544:	4785                	li	a5,1
   12546:	e3aff06f          	j	11b80 <_vfprintf_r+0x39a>
   1254a:	200cf793          	andi	a5,s9,512
   1254e:	7e079563          	bnez	a5,12d38 <_vfprintf_r+0x1552>
   12552:	4d81                	li	s11,0
   12554:	e26ff06f          	j	11b7a <_vfprintf_r+0x394>
   12558:	200cf793          	andi	a5,s9,512
   1255c:	7c079663          	bnez	a5,12d28 <_vfprintf_r+0x1542>
   12560:	41fb5d93          	srai	s11,s6,0x1f
   12564:	87ee                	mv	a5,s11
   12566:	db2ff06f          	j	11b18 <_vfprintf_r+0x332>
   1256a:	57f2                	lw	a5,60(sp)
   1256c:	00094883          	lbu	a7,0(s2)
   12570:	ba078363          	beqz	a5,11916 <_vfprintf_r+0x130>
   12574:	0007c783          	lbu	a5,0(a5)
   12578:	b8078f63          	beqz	a5,11916 <_vfprintf_r+0x130>
   1257c:	400cec93          	ori	s9,s9,1024
   12580:	b96ff06f          	j	11916 <_vfprintf_r+0x130>
   12584:	010cf793          	andi	a5,s9,16
   12588:	4c079063          	bnez	a5,12a48 <_vfprintf_r+0x1262>
   1258c:	040cf793          	andi	a5,s9,64
   12590:	78079563          	bnez	a5,12d1a <_vfprintf_r+0x1534>
   12594:	200cfe13          	andi	t3,s9,512
   12598:	4a0e0863          	beqz	t3,12a48 <_vfprintf_r+0x1262>
   1259c:	47d2                	lw	a5,20(sp)
   1259e:	4732                	lw	a4,12(sp)
   125a0:	439c                	lw	a5,0(a5)
   125a2:	00e78023          	sb	a4,0(a5)
   125a6:	b425                	j	11fce <_vfprintf_r+0x7e8>
   125a8:	47d2                	lw	a5,20(sp)
   125aa:	4398                	lw	a4,0(a5)
   125ac:	0791                	addi	a5,a5,4
   125ae:	ca3e                	sw	a5,20(sp)
   125b0:	430c                	lw	a1,0(a4)
   125b2:	4350                	lw	a2,4(a4)
   125b4:	4714                	lw	a3,8(a4)
   125b6:	4758                	lw	a4,12(a4)
   125b8:	e52ff06f          	j	11c0a <_vfprintf_r+0x424>
   125bc:	8aba                	mv	s5,a4
   125be:	df5042e3          	bgtz	s5,123a2 <_vfprintf_r+0xbbc>
   125c2:	bbed                	j	123bc <_vfprintf_r+0xbd6>
   125c4:	5afd                	li	s5,-1
   125c6:	8936                	mv	s2,a3
   125c8:	b50ff06f          	j	11918 <_vfprintf_r+0x132>
   125cc:	67e9                	lui	a5,0x1a
   125ce:	43078793          	addi	a5,a5,1072 # 1a430 <__clzsi2+0xa6>
   125d2:	da3e                	sw	a5,52(sp)
   125d4:	020cf793          	andi	a5,s9,32
   125d8:	26078263          	beqz	a5,1283c <_vfprintf_r+0x1056>
   125dc:	47d2                	lw	a5,20(sp)
   125de:	00778c13          	addi	s8,a5,7
   125e2:	ff8c7c13          	andi	s8,s8,-8
   125e6:	000c2b03          	lw	s6,0(s8)
   125ea:	004c2d83          	lw	s11,4(s8)
   125ee:	008c0793          	addi	a5,s8,8
   125f2:	ca3e                	sw	a5,20(sp)
   125f4:	001cf793          	andi	a5,s9,1
   125f8:	cf81                	beqz	a5,12610 <_vfprintf_r+0xe2a>
   125fa:	01bb67b3          	or	a5,s6,s11
   125fe:	cb89                	beqz	a5,12610 <_vfprintf_r+0xe2a>
   12600:	03000793          	li	a5,48
   12604:	0af10423          	sb	a5,168(sp)
   12608:	0b1104a3          	sb	a7,169(sp)
   1260c:	002cec93          	ori	s9,s9,2
   12610:	bffcfe93          	andi	t4,s9,-1025
   12614:	4789                	li	a5,2
   12616:	d6aff06f          	j	11b80 <_vfprintf_r+0x39a>
   1261a:	8ee6                	mv	t4,s9
   1261c:	b289                	j	11f5e <_vfprintf_r+0x778>
   1261e:	67e9                	lui	a5,0x1a
   12620:	41c78793          	addi	a5,a5,1052 # 1a41c <__clzsi2+0x92>
   12624:	da3e                	sw	a5,52(sp)
   12626:	b77d                	j	125d4 <_vfprintf_r+0xdee>
   12628:	00194883          	lbu	a7,1(s2)
   1262c:	200cec93          	ori	s9,s9,512
   12630:	0905                	addi	s2,s2,1
   12632:	ae4ff06f          	j	11916 <_vfprintf_r+0x130>
   12636:	00194883          	lbu	a7,1(s2)
   1263a:	020cec93          	ori	s9,s9,32
   1263e:	0905                	addi	s2,s2,1
   12640:	ad6ff06f          	j	11916 <_vfprintf_r+0x130>
   12644:	4522                	lw	a0,8(sp)
   12646:	01d0                	addi	a2,sp,196
   12648:	85a6                	mv	a1,s1
   1264a:	5e7000ef          	jal	13430 <__sprint_r>
   1264e:	be051ae3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12652:	463e                	lw	a2,204(sp)
   12654:	844e                	mv	s0,s3
   12656:	bc29                	j	12070 <_vfprintf_r+0x88a>
   12658:	4799                	li	a5,6
   1265a:	8b56                	mv	s6,s5
   1265c:	6b57ed63          	bltu	a5,s5,12d16 <_vfprintf_r+0x1530>
   12660:	67e9                	lui	a5,0x1a
   12662:	8dda                	mv	s11,s6
   12664:	ca62                	sw	s8,20(sp)
   12666:	44478d13          	addi	s10,a5,1092 # 1a444 <__clzsi2+0xba>
   1266a:	afcff06f          	j	11966 <_vfprintf_r+0x180>
   1266e:	6869                	lui	a6,0x1a
   12670:	45c1                	li	a1,16
   12672:	472e                	lw	a4,200(sp)
   12674:	77880813          	addi	a6,a6,1912 # 1a778 <zeroes.0>
   12678:	4755db63          	bge	a1,s5,12aee <_vfprintf_r+0x1308>
   1267c:	87a2                	mv	a5,s0
   1267e:	4c41                	li	s8,16
   12680:	4b1d                	li	s6,7
   12682:	8442                	mv	s0,a6
   12684:	a021                	j	1268c <_vfprintf_r+0xea6>
   12686:	1ac1                	addi	s5,s5,-16
   12688:	475c5163          	bge	s8,s5,12aea <_vfprintf_r+0x1304>
   1268c:	0641                	addi	a2,a2,16
   1268e:	0705                	addi	a4,a4,1
   12690:	c380                	sw	s0,0(a5)
   12692:	0187a223          	sw	s8,4(a5)
   12696:	c7b2                	sw	a2,204(sp)
   12698:	c5ba                	sw	a4,200(sp)
   1269a:	07a1                	addi	a5,a5,8
   1269c:	feeb55e3          	bge	s6,a4,12686 <_vfprintf_r+0xea0>
   126a0:	4522                	lw	a0,8(sp)
   126a2:	01d0                	addi	a2,sp,196
   126a4:	85a6                	mv	a1,s1
   126a6:	58b000ef          	jal	13430 <__sprint_r>
   126aa:	b8051ce3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   126ae:	463e                	lw	a2,204(sp)
   126b0:	472e                	lw	a4,200(sp)
   126b2:	87ce                	mv	a5,s3
   126b4:	bfc9                	j	12686 <_vfprintf_r+0xea0>
   126b6:	5742                	lw	a4,48(sp)
   126b8:	57b2                	lw	a5,44(sp)
   126ba:	459d                	li	a1,7
   126bc:	c018                	sw	a4,0(s0)
   126be:	472e                	lw	a4,200(sp)
   126c0:	963e                	add	a2,a2,a5
   126c2:	c05c                	sw	a5,4(s0)
   126c4:	0705                	addi	a4,a4,1
   126c6:	c7b2                	sw	a2,204(sp)
   126c8:	c5ba                	sw	a4,200(sp)
   126ca:	0421                	addi	s0,s0,8
   126cc:	d2e5d1e3          	bge	a1,a4,123ee <_vfprintf_r+0xc08>
   126d0:	4522                	lw	a0,8(sp)
   126d2:	01d0                	addi	a2,sp,196
   126d4:	85a6                	mv	a1,s1
   126d6:	55b000ef          	jal	13430 <__sprint_r>
   126da:	b60514e3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   126de:	5aba                	lw	s5,172(sp)
   126e0:	463e                	lw	a2,204(sp)
   126e2:	844e                	mv	s0,s3
   126e4:	b329                	j	123ee <_vfprintf_r+0xc08>
   126e6:	07800793          	li	a5,120
   126ea:	03000713          	li	a4,48
   126ee:	0ae10423          	sb	a4,168(sp)
   126f2:	0af104a3          	sb	a5,169(sp)
   126f6:	06300713          	li	a4,99
   126fa:	c802                	sw	zero,16(sp)
   126fc:	002cec93          	ori	s9,s9,2
   12700:	12c10d13          	addi	s10,sp,300
   12704:	d5575c63          	bge	a4,s5,11c5c <_vfprintf_r+0x476>
   12708:	4522                	lw	a0,8(sp)
   1270a:	001a8593          	addi	a1,s5,1
   1270e:	c846                	sw	a7,16(sp)
   12710:	b2ffe0ef          	jal	1123e <_malloc_r>
   12714:	48c2                	lw	a7,16(sp)
   12716:	8d2a                	mv	s10,a0
   12718:	460502e3          	beqz	a0,1337c <_vfprintf_r+0x1b96>
   1271c:	c82a                	sw	a0,16(sp)
   1271e:	d3eff06f          	j	11c5c <_vfprintf_r+0x476>
   12722:	4522                	lw	a0,8(sp)
   12724:	09010b13          	addi	s6,sp,144
   12728:	1178                	addi	a4,sp,172
   1272a:	0bc10813          	addi	a6,sp,188
   1272e:	191c                	addi	a5,sp,176
   12730:	86d6                	mv	a3,s5
   12732:	4609                	li	a2,2
   12734:	85da                	mv	a1,s6
   12736:	d446                	sw	a7,40(sp)
   12738:	c97e                	sw	t6,144(sp)
   1273a:	d27e                	sw	t6,36(sp)
   1273c:	cb7a                	sw	t5,148(sp)
   1273e:	d07a                	sw	t5,32(sp)
   12740:	cd76                	sw	t4,152(sp)
   12742:	ce76                	sw	t4,28(sp)
   12744:	cf62                	sw	s8,156(sp)
   12746:	305010ef          	jal	1424a <_ldtoa_r>
   1274a:	001cf713          	andi	a4,s9,1
   1274e:	4ef2                	lw	t4,28(sp)
   12750:	5f02                	lw	t5,32(sp)
   12752:	5f92                	lw	t6,36(sp)
   12754:	58a2                	lw	a7,40(sp)
   12756:	8d2a                	mv	s10,a0
   12758:	62071163          	bnez	a4,12d7a <_vfprintf_r+0x1594>
   1275c:	57ba                	lw	a5,172(sp)
   1275e:	ce3e                	sw	a5,28(sp)
   12760:	57fa                	lw	a5,188(sp)
   12762:	8f89                	sub	a5,a5,a0
   12764:	d03e                	sw	a5,32(sp)
   12766:	47f2                	lw	a5,28(sp)
   12768:	5775                	li	a4,-3
   1276a:	00e7c463          	blt	a5,a4,12772 <_vfprintf_r+0xf8c>
   1276e:	0efadbe3          	bge	s5,a5,13064 <_vfprintf_r+0x187e>
   12772:	47f2                	lw	a5,28(sp)
   12774:	18f9                	addi	a7,a7,-2
   12776:	fff78713          	addi	a4,a5,-1
   1277a:	d73a                	sw	a4,172(sp)
   1277c:	0ff8f693          	zext.b	a3,a7
   12780:	4601                	li	a2,0
   12782:	0ad10a23          	sb	a3,180(sp)
   12786:	02b00693          	li	a3,43
   1278a:	00075763          	bgez	a4,12798 <_vfprintf_r+0xfb2>
   1278e:	47f2                	lw	a5,28(sp)
   12790:	4705                	li	a4,1
   12792:	02d00693          	li	a3,45
   12796:	8f1d                	sub	a4,a4,a5
   12798:	0ad10aa3          	sb	a3,181(sp)
   1279c:	46a5                	li	a3,9
   1279e:	2ae6d1e3          	bge	a3,a4,13240 <_vfprintf_r+0x1a5a>
   127a2:	0c310813          	addi	a6,sp,195
   127a6:	85c2                	mv	a1,a6
   127a8:	4529                	li	a0,10
   127aa:	06300f13          	li	t5,99
   127ae:	02a767b3          	rem	a5,a4,a0
   127b2:	862e                	mv	a2,a1
   127b4:	86ba                	mv	a3,a4
   127b6:	15fd                	addi	a1,a1,-1
   127b8:	03078793          	addi	a5,a5,48
   127bc:	fef60fa3          	sb	a5,-1(a2)
   127c0:	02a74733          	div	a4,a4,a0
   127c4:	fedf45e3          	blt	t5,a3,127ae <_vfprintf_r+0xfc8>
   127c8:	03070713          	addi	a4,a4,48
   127cc:	ffe60693          	addi	a3,a2,-2
   127d0:	fee58fa3          	sb	a4,-1(a1)
   127d4:	3706fce3          	bgeu	a3,a6,1334c <_vfprintf_r+0x1b66>
   127d8:	0b610713          	addi	a4,sp,182
   127dc:	0006c783          	lbu	a5,0(a3)
   127e0:	0685                	addi	a3,a3,1
   127e2:	0705                	addi	a4,a4,1
   127e4:	fef70fa3          	sb	a5,-1(a4)
   127e8:	ff069ae3          	bne	a3,a6,127dc <_vfprintf_r+0xff6>
   127ec:	0b1c                	addi	a5,sp,400
   127ee:	40c78733          	sub	a4,a5,a2
   127f2:	f3770793          	addi	a5,a4,-201
   127f6:	c0be                	sw	a5,64(sp)
   127f8:	5782                	lw	a5,32(sp)
   127fa:	4686                	lw	a3,64(sp)
   127fc:	4705                	li	a4,1
   127fe:	00d78b33          	add	s6,a5,a3
   12802:	26f758e3          	bge	a4,a5,13272 <_vfprintf_r+0x1a8c>
   12806:	57b2                	lw	a5,44(sp)
   12808:	9b3e                	add	s6,s6,a5
   1280a:	fffb4693          	not	a3,s6
   1280e:	bffcfe13          	andi	t3,s9,-1025
   12812:	86fd                	srai	a3,a3,0x1f
   12814:	100e6793          	ori	a5,t3,256
   12818:	c6be                	sw	a5,76(sp)
   1281a:	00db7db3          	and	s11,s6,a3
   1281e:	d402                	sw	zero,40(sp)
   12820:	d202                	sw	zero,36(sp)
   12822:	ce02                	sw	zero,28(sp)
   12824:	57e2                	lw	a5,56(sp)
   12826:	020786e3          	beqz	a5,13052 <_vfprintf_r+0x186c>
   1282a:	02d00713          	li	a4,45
   1282e:	4cb6                	lw	s9,76(sp)
   12830:	0ae103a3          	sb	a4,167(sp)
   12834:	4a81                	li	s5,0
   12836:	0d85                	addi	s11,s11,1
   12838:	938ff06f          	j	11970 <_vfprintf_r+0x18a>
   1283c:	4752                	lw	a4,20(sp)
   1283e:	010cf793          	andi	a5,s9,16
   12842:	00072b03          	lw	s6,0(a4)
   12846:	0711                	addi	a4,a4,4
   12848:	ca3a                	sw	a4,20(sp)
   1284a:	e7a9                	bnez	a5,12894 <_vfprintf_r+0x10ae>
   1284c:	040cf793          	andi	a5,s9,64
   12850:	cf95                	beqz	a5,1288c <_vfprintf_r+0x10a6>
   12852:	0b42                	slli	s6,s6,0x10
   12854:	010b5b13          	srli	s6,s6,0x10
   12858:	4d81                	li	s11,0
   1285a:	bb69                	j	125f4 <_vfprintf_r+0xe0e>
   1285c:	4522                	lw	a0,8(sp)
   1285e:	01d0                	addi	a2,sp,196
   12860:	85a6                	mv	a1,s1
   12862:	3cf000ef          	jal	13430 <__sprint_r>
   12866:	9c051ee3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   1286a:	4c3e                	lw	s8,204(sp)
   1286c:	4aae                	lw	s5,200(sp)
   1286e:	8b4e                	mv	s6,s3
   12870:	c6eff06f          	j	11cde <_vfprintf_r+0x4f8>
   12874:	4522                	lw	a0,8(sp)
   12876:	01d0                	addi	a2,sp,196
   12878:	85a6                	mv	a1,s1
   1287a:	3b7000ef          	jal	13430 <__sprint_r>
   1287e:	9c0512e3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12882:	4c3e                	lw	s8,204(sp)
   12884:	4aae                	lw	s5,200(sp)
   12886:	8b4e                	mv	s6,s3
   12888:	c72ff06f          	j	11cfa <_vfprintf_r+0x514>
   1288c:	200cf793          	andi	a5,s9,512
   12890:	4a079963          	bnez	a5,12d42 <_vfprintf_r+0x155c>
   12894:	4d81                	li	s11,0
   12896:	bbb9                	j	125f4 <_vfprintf_r+0xe0e>
   12898:	ccccd837          	lui	a6,0xccccd
   1289c:	ccccdcb7          	lui	s9,0xccccd
   128a0:	5772                	lw	a4,60(sp)
   128a2:	400eff13          	andi	t5,t4,1024
   128a6:	4601                	li	a2,0
   128a8:	0b0c                	addi	a1,sp,400
   128aa:	4e15                	li	t3,5
   128ac:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccb1271>
   128b0:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccb1270>
   128b4:	0ff00c13          	li	s8,255
   128b8:	a081                	j	128f8 <_vfprintf_r+0x1112>
   128ba:	016d37b3          	sltu	a5,s10,s6
   128be:	97ea                	add	a5,a5,s10
   128c0:	03c7f7b3          	remu	a5,a5,t3
   128c4:	40fb07b3          	sub	a5,s6,a5
   128c8:	00fb35b3          	sltu	a1,s6,a5
   128cc:	40bd85b3          	sub	a1,s11,a1
   128d0:	03978333          	mul	t1,a5,s9
   128d4:	030585b3          	mul	a1,a1,a6
   128d8:	0307b533          	mulhu	a0,a5,a6
   128dc:	959a                	add	a1,a1,t1
   128de:	030787b3          	mul	a5,a5,a6
   128e2:	95aa                	add	a1,a1,a0
   128e4:	01f59513          	slli	a0,a1,0x1f
   128e8:	8185                	srli	a1,a1,0x1
   128ea:	8385                	srli	a5,a5,0x1
   128ec:	8fc9                	or	a5,a5,a0
   128ee:	7c0d8763          	beqz	s11,130bc <_vfprintf_r+0x18d6>
   128f2:	8dae                	mv	s11,a1
   128f4:	8b3e                	mv	s6,a5
   128f6:	85b6                	mv	a1,a3
   128f8:	01bb0d33          	add	s10,s6,s11
   128fc:	016d37b3          	sltu	a5,s10,s6
   12900:	97ea                	add	a5,a5,s10
   12902:	03c7f7b3          	remu	a5,a5,t3
   12906:	fff58693          	addi	a3,a1,-1
   1290a:	0605                	addi	a2,a2,1
   1290c:	40fb07b3          	sub	a5,s6,a5
   12910:	00fb3533          	sltu	a0,s6,a5
   12914:	40ad8533          	sub	a0,s11,a0
   12918:	0307b333          	mulhu	t1,a5,a6
   1291c:	03050533          	mul	a0,a0,a6
   12920:	030787b3          	mul	a5,a5,a6
   12924:	951a                	add	a0,a0,t1
   12926:	057e                	slli	a0,a0,0x1f
   12928:	8385                	srli	a5,a5,0x1
   1292a:	8fc9                	or	a5,a5,a0
   1292c:	00279513          	slli	a0,a5,0x2
   12930:	97aa                	add	a5,a5,a0
   12932:	0786                	slli	a5,a5,0x1
   12934:	40fb07b3          	sub	a5,s6,a5
   12938:	03078793          	addi	a5,a5,48
   1293c:	fef58fa3          	sb	a5,-1(a1)
   12940:	f60f0de3          	beqz	t5,128ba <_vfprintf_r+0x10d4>
   12944:	00074783          	lbu	a5,0(a4)
   12948:	f6f619e3          	bne	a2,a5,128ba <_vfprintf_r+0x10d4>
   1294c:	f78607e3          	beq	a2,s8,128ba <_vfprintf_r+0x10d4>
   12950:	1c0d9563          	bnez	s11,12b1a <_vfprintf_r+0x1334>
   12954:	47a5                	li	a5,9
   12956:	1d67e263          	bltu	a5,s6,12b1a <_vfprintf_r+0x1334>
   1295a:	8d36                	mv	s10,a3
   1295c:	0b1c                	addi	a5,sp,400
   1295e:	d032                	sw	a2,32(sp)
   12960:	de3a                	sw	a4,60(sp)
   12962:	41a78b33          	sub	s6,a5,s10
   12966:	8cf6                	mv	s9,t4
   12968:	9d2ff06f          	j	11b3a <_vfprintf_r+0x354>
   1296c:	472e                	lw	a4,200(sp)
   1296e:	65e9                	lui	a1,0x1a
   12970:	44c58593          	addi	a1,a1,1100 # 1a44c <__clzsi2+0xc2>
   12974:	c00c                	sw	a1,0(s0)
   12976:	0605                	addi	a2,a2,1
   12978:	4585                	li	a1,1
   1297a:	0705                	addi	a4,a4,1
   1297c:	c04c                	sw	a1,4(s0)
   1297e:	c7b2                	sw	a2,204(sp)
   12980:	c5ba                	sw	a4,200(sp)
   12982:	459d                	li	a1,7
   12984:	0421                	addi	s0,s0,8
   12986:	36e5c063          	blt	a1,a4,12ce6 <_vfprintf_r+0x1500>
   1298a:	e569                	bnez	a0,12a54 <_vfprintf_r+0x126e>
   1298c:	5782                	lw	a5,32(sp)
   1298e:	001cf713          	andi	a4,s9,1
   12992:	8f5d                	or	a4,a4,a5
   12994:	e319                	bnez	a4,1299a <_vfprintf_r+0x11b4>
   12996:	868ff06f          	j	119fe <_vfprintf_r+0x218>
   1299a:	5742                	lw	a4,48(sp)
   1299c:	57b2                	lw	a5,44(sp)
   1299e:	459d                	li	a1,7
   129a0:	c018                	sw	a4,0(s0)
   129a2:	472e                	lw	a4,200(sp)
   129a4:	963e                	add	a2,a2,a5
   129a6:	c05c                	sw	a5,4(s0)
   129a8:	0705                	addi	a4,a4,1
   129aa:	c7b2                	sw	a2,204(sp)
   129ac:	c5ba                	sw	a4,200(sp)
   129ae:	3ae5cb63          	blt	a1,a4,12d64 <_vfprintf_r+0x157e>
   129b2:	0421                	addi	s0,s0,8
   129b4:	a87d                	j	12a72 <_vfprintf_r+0x128c>
   129b6:	4522                	lw	a0,8(sp)
   129b8:	f39fd0ef          	jal	108f0 <__sinit>
   129bc:	e69fe06f          	j	11824 <_vfprintf_r+0x3e>
   129c0:	4522                	lw	a0,8(sp)
   129c2:	01d0                	addi	a2,sp,196
   129c4:	85a6                	mv	a1,s1
   129c6:	26b000ef          	jal	13430 <__sprint_r>
   129ca:	86051ce3          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   129ce:	463e                	lw	a2,204(sp)
   129d0:	844e                	mv	s0,s3
   129d2:	e78ff06f          	j	1204a <_vfprintf_r+0x864>
   129d6:	886a                	mv	a6,s10
   129d8:	01042023          	sw	a6,0(s0)
   129dc:	01542223          	sw	s5,4(s0)
   129e0:	9656                	add	a2,a2,s5
   129e2:	0785                	addi	a5,a5,1
   129e4:	c7b2                	sw	a2,204(sp)
   129e6:	c5be                	sw	a5,200(sp)
   129e8:	471d                	li	a4,7
   129ea:	00f74463          	blt	a4,a5,129f2 <_vfprintf_r+0x120c>
   129ee:	80eff06f          	j	119fc <_vfprintf_r+0x216>
   129f2:	b70ff06f          	j	11d62 <_vfprintf_r+0x57c>
   129f6:	47ce                	lw	a5,208(sp)
   129f8:	010c                	addi	a1,sp,128
   129fa:	0908                	addi	a0,sp,144
   129fc:	c93e                	sw	a5,144(sp)
   129fe:	47de                	lw	a5,212(sp)
   12a00:	c102                	sw	zero,128(sp)
   12a02:	c302                	sw	zero,132(sp)
   12a04:	cb3e                	sw	a5,148(sp)
   12a06:	47ee                	lw	a5,216(sp)
   12a08:	c502                	sw	zero,136(sp)
   12a0a:	c702                	sw	zero,140(sp)
   12a0c:	cd3e                	sw	a5,152(sp)
   12a0e:	47fe                	lw	a5,220(sp)
   12a10:	cf3e                	sw	a5,156(sp)
   12a12:	6e0050ef          	jal	180f2 <__letf2>
   12a16:	48c2                	lw	a7,16(sp)
   12a18:	6a054a63          	bltz	a0,130cc <_vfprintf_r+0x18e6>
   12a1c:	0a714703          	lbu	a4,167(sp)
   12a20:	04700793          	li	a5,71
   12a24:	2d17db63          	bge	a5,a7,12cfa <_vfprintf_r+0x1514>
   12a28:	67e9                	lui	a5,0x1a
   12a2a:	41078d13          	addi	s10,a5,1040 # 1a410 <__clzsi2+0x86>
   12a2e:	c802                	sw	zero,16(sp)
   12a30:	d402                	sw	zero,40(sp)
   12a32:	d202                	sw	zero,36(sp)
   12a34:	ce02                	sw	zero,28(sp)
   12a36:	f7fcfc93          	andi	s9,s9,-129
   12a3a:	4d8d                	li	s11,3
   12a3c:	4b0d                	li	s6,3
   12a3e:	4a81                	li	s5,0
   12a40:	90071963          	bnez	a4,11b52 <_vfprintf_r+0x36c>
   12a44:	f2dfe06f          	j	11970 <_vfprintf_r+0x18a>
   12a48:	47d2                	lw	a5,20(sp)
   12a4a:	4732                	lw	a4,12(sp)
   12a4c:	439c                	lw	a5,0(a5)
   12a4e:	c398                	sw	a4,0(a5)
   12a50:	d7eff06f          	j	11fce <_vfprintf_r+0x7e8>
   12a54:	5742                	lw	a4,48(sp)
   12a56:	57b2                	lw	a5,44(sp)
   12a58:	459d                	li	a1,7
   12a5a:	c018                	sw	a4,0(s0)
   12a5c:	472e                	lw	a4,200(sp)
   12a5e:	963e                	add	a2,a2,a5
   12a60:	c05c                	sw	a5,4(s0)
   12a62:	0705                	addi	a4,a4,1
   12a64:	c7b2                	sw	a2,204(sp)
   12a66:	c5ba                	sw	a4,200(sp)
   12a68:	0421                	addi	s0,s0,8
   12a6a:	2ee5cd63          	blt	a1,a4,12d64 <_vfprintf_r+0x157e>
   12a6e:	74054a63          	bltz	a0,131c2 <_vfprintf_r+0x19dc>
   12a72:	5782                	lw	a5,32(sp)
   12a74:	0705                	addi	a4,a4,1
   12a76:	01a42023          	sw	s10,0(s0)
   12a7a:	963e                	add	a2,a2,a5
   12a7c:	c05c                	sw	a5,4(s0)
   12a7e:	c7b2                	sw	a2,204(sp)
   12a80:	c5ba                	sw	a4,200(sp)
   12a82:	479d                	li	a5,7
   12a84:	00e7c463          	blt	a5,a4,12a8c <_vfprintf_r+0x12a6>
   12a88:	f75fe06f          	j	119fc <_vfprintf_r+0x216>
   12a8c:	ad6ff06f          	j	11d62 <_vfprintf_r+0x57c>
   12a90:	856a                	mv	a0,s10
   12a92:	dc46                	sw	a7,56(sp)
   12a94:	5f6010ef          	jal	1408a <strlen>
   12a98:	0a714703          	lbu	a4,167(sp)
   12a9c:	fff54693          	not	a3,a0
   12aa0:	86fd                	srai	a3,a3,0x1f
   12aa2:	ca62                	sw	s8,20(sp)
   12aa4:	c802                	sw	zero,16(sp)
   12aa6:	d402                	sw	zero,40(sp)
   12aa8:	d202                	sw	zero,36(sp)
   12aaa:	ce02                	sw	zero,28(sp)
   12aac:	58e2                	lw	a7,56(sp)
   12aae:	8b2a                	mv	s6,a0
   12ab0:	00d57db3          	and	s11,a0,a3
   12ab4:	4a81                	li	s5,0
   12ab6:	c319                	beqz	a4,12abc <_vfprintf_r+0x12d6>
   12ab8:	89aff06f          	j	11b52 <_vfprintf_r+0x36c>
   12abc:	eb5fe06f          	j	11970 <_vfprintf_r+0x18a>
   12ac0:	884a                	mv	a6,s2
   12ac2:	4972                	lw	s2,28(sp)
   12ac4:	9c22                	add	s8,s8,s0
   12ac6:	0a85                	addi	s5,s5,1
   12ac8:	010b2023          	sw	a6,0(s6)
   12acc:	a64ff06f          	j	11d30 <_vfprintf_r+0x54a>
   12ad0:	47fe                	lw	a5,220(sp)
   12ad2:	2607cc63          	bltz	a5,12d4a <_vfprintf_r+0x1564>
   12ad6:	0a714703          	lbu	a4,167(sp)
   12ada:	04700793          	li	a5,71
   12ade:	6317ca63          	blt	a5,a7,13112 <_vfprintf_r+0x192c>
   12ae2:	67e9                	lui	a5,0x1a
   12ae4:	41478d13          	addi	s10,a5,1044 # 1a414 <__clzsi2+0x8a>
   12ae8:	b799                	j	12a2e <_vfprintf_r+0x1248>
   12aea:	8822                	mv	a6,s0
   12aec:	843e                	mv	s0,a5
   12aee:	9656                	add	a2,a2,s5
   12af0:	0705                	addi	a4,a4,1
   12af2:	01042023          	sw	a6,0(s0)
   12af6:	01542223          	sw	s5,4(s0)
   12afa:	c7b2                	sw	a2,204(sp)
   12afc:	c5ba                	sw	a4,200(sp)
   12afe:	459d                	li	a1,7
   12b00:	0421                	addi	s0,s0,8
   12b02:	8ce5d7e3          	bge	a1,a4,123d0 <_vfprintf_r+0xbea>
   12b06:	4522                	lw	a0,8(sp)
   12b08:	01d0                	addi	a2,sp,196
   12b0a:	85a6                	mv	a1,s1
   12b0c:	125000ef          	jal	13430 <__sprint_r>
   12b10:	f2051963          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12b14:	463e                	lw	a2,204(sp)
   12b16:	844e                	mv	s0,s3
   12b18:	b865                	j	123d0 <_vfprintf_r+0xbea>
   12b1a:	47a6                	lw	a5,72(sp)
   12b1c:	4596                	lw	a1,68(sp)
   12b1e:	dc42                	sw	a6,56(sp)
   12b20:	8e9d                	sub	a3,a3,a5
   12b22:	863e                	mv	a2,a5
   12b24:	8536                	mv	a0,a3
   12b26:	d47a                	sw	t5,40(sp)
   12b28:	d276                	sw	t4,36(sp)
   12b2a:	d046                	sw	a7,32(sp)
   12b2c:	ce3a                	sw	a4,28(sp)
   12b2e:	c836                	sw	a3,16(sp)
   12b30:	252010ef          	jal	13d82 <strncpy>
   12b34:	016d37b3          	sltu	a5,s10,s6
   12b38:	4615                	li	a2,5
   12b3a:	97ea                	add	a5,a5,s10
   12b3c:	02c7f7b3          	remu	a5,a5,a2
   12b40:	4772                	lw	a4,28(sp)
   12b42:	ccccd337          	lui	t1,0xccccd
   12b46:	ccccd537          	lui	a0,0xccccd
   12b4a:	00174583          	lbu	a1,1(a4)
   12b4e:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccb1271>
   12b52:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccb1270>
   12b56:	00b035b3          	snez	a1,a1
   12b5a:	972e                	add	a4,a4,a1
   12b5c:	46c2                	lw	a3,16(sp)
   12b5e:	5882                	lw	a7,32(sp)
   12b60:	5e92                	lw	t4,36(sp)
   12b62:	5f22                	lw	t5,40(sp)
   12b64:	5862                	lw	a6,56(sp)
   12b66:	4601                	li	a2,0
   12b68:	4e15                	li	t3,5
   12b6a:	40fb07b3          	sub	a5,s6,a5
   12b6e:	00fb35b3          	sltu	a1,s6,a5
   12b72:	40bd85b3          	sub	a1,s11,a1
   12b76:	02a78533          	mul	a0,a5,a0
   12b7a:	026585b3          	mul	a1,a1,t1
   12b7e:	0267bfb3          	mulhu	t6,a5,t1
   12b82:	95aa                	add	a1,a1,a0
   12b84:	02678533          	mul	a0,a5,t1
   12b88:	95fe                	add	a1,a1,t6
   12b8a:	01f59793          	slli	a5,a1,0x1f
   12b8e:	8185                	srli	a1,a1,0x1
   12b90:	8105                	srli	a0,a0,0x1
   12b92:	8fc9                	or	a5,a5,a0
   12b94:	bbb9                	j	128f2 <_vfprintf_r+0x110c>
   12b96:	5782                	lw	a5,32(sp)
   12b98:	5b12                	lw	s6,36(sp)
   12b9a:	68e9                	lui	a7,0x1a
   12b9c:	97ea                	add	a5,a5,s10
   12b9e:	dc4a                	sw	s2,56(sp)
   12ba0:	c6e6                	sw	s9,76(sp)
   12ba2:	c8de                	sw	s7,80(sp)
   12ba4:	d26e                	sw	s11,36(sp)
   12ba6:	5da2                	lw	s11,40(sp)
   12ba8:	d46a                	sw	s10,40(sp)
   12baa:	5cf2                	lw	s9,60(sp)
   12bac:	8d62                	mv	s10,s8
   12bae:	4922                	lw	s2,8(sp)
   12bb0:	4c26                	lw	s8,72(sp)
   12bb2:	481d                	li	a6,7
   12bb4:	4741                	li	a4,16
   12bb6:	77888a93          	addi	s5,a7,1912 # 1a778 <zeroes.0>
   12bba:	85a2                	mv	a1,s0
   12bbc:	8bbe                	mv	s7,a5
   12bbe:	07605363          	blez	s6,12c24 <_vfprintf_r+0x143e>
   12bc2:	0fb05663          	blez	s11,12cae <_vfprintf_r+0x14c8>
   12bc6:	1dfd                	addi	s11,s11,-1
   12bc8:	4796                	lw	a5,68(sp)
   12bca:	9662                	add	a2,a2,s8
   12bcc:	0185a223          	sw	s8,4(a1)
   12bd0:	c19c                	sw	a5,0(a1)
   12bd2:	47ae                	lw	a5,200(sp)
   12bd4:	c7b2                	sw	a2,204(sp)
   12bd6:	05a1                	addi	a1,a1,8
   12bd8:	0785                	addi	a5,a5,1
   12bda:	c5be                	sw	a5,200(sp)
   12bdc:	0cf84c63          	blt	a6,a5,12cb4 <_vfprintf_r+0x14ce>
   12be0:	000cc683          	lbu	a3,0(s9)
   12be4:	41ab8433          	sub	s0,s7,s10
   12be8:	0086d363          	bge	a3,s0,12bee <_vfprintf_r+0x1408>
   12bec:	8436                	mv	s0,a3
   12bee:	00805f63          	blez	s0,12c0c <_vfprintf_r+0x1426>
   12bf2:	46ae                	lw	a3,200(sp)
   12bf4:	9622                	add	a2,a2,s0
   12bf6:	01a5a023          	sw	s10,0(a1)
   12bfa:	0685                	addi	a3,a3,1
   12bfc:	c1c0                	sw	s0,4(a1)
   12bfe:	c7b2                	sw	a2,204(sp)
   12c00:	c5b6                	sw	a3,200(sp)
   12c02:	0cd84563          	blt	a6,a3,12ccc <_vfprintf_r+0x14e6>
   12c06:	000cc683          	lbu	a3,0(s9)
   12c0a:	05a1                	addi	a1,a1,8
   12c0c:	fff44513          	not	a0,s0
   12c10:	857d                	srai	a0,a0,0x1f
   12c12:	00a477b3          	and	a5,s0,a0
   12c16:	40f68433          	sub	s0,a3,a5
   12c1a:	02804763          	bgtz	s0,12c48 <_vfprintf_r+0x1462>
   12c1e:	9d36                	add	s10,s10,a3
   12c20:	fb6041e3          	bgtz	s6,12bc2 <_vfprintf_r+0x13dc>
   12c24:	fbb041e3          	bgtz	s11,12bc6 <_vfprintf_r+0x13e0>
   12c28:	5782                	lw	a5,32(sp)
   12c2a:	8c6a                	mv	s8,s10
   12c2c:	5d22                	lw	s10,40(sp)
   12c2e:	de66                	sw	s9,60(sp)
   12c30:	5962                	lw	s2,56(sp)
   12c32:	00fd0733          	add	a4,s10,a5
   12c36:	4cb6                	lw	s9,76(sp)
   12c38:	4bc6                	lw	s7,80(sp)
   12c3a:	5d92                	lw	s11,36(sp)
   12c3c:	842e                	mv	s0,a1
   12c3e:	fb877063          	bgeu	a4,s8,123de <_vfprintf_r+0xbf8>
   12c42:	8c3a                	mv	s8,a4
   12c44:	f9aff06f          	j	123de <_vfprintf_r+0xbf8>
   12c48:	6f69                	lui	t5,0x1a
   12c4a:	46ae                	lw	a3,200(sp)
   12c4c:	778f0f13          	addi	t5,t5,1912 # 1a778 <zeroes.0>
   12c50:	04875163          	bge	a4,s0,12c92 <_vfprintf_r+0x14ac>
   12c54:	ce56                	sw	s5,28(sp)
   12c56:	a021                	j	12c5e <_vfprintf_r+0x1478>
   12c58:	1441                	addi	s0,s0,-16
   12c5a:	02875b63          	bge	a4,s0,12c90 <_vfprintf_r+0x14aa>
   12c5e:	0641                	addi	a2,a2,16
   12c60:	0685                	addi	a3,a3,1
   12c62:	0155a023          	sw	s5,0(a1)
   12c66:	c1d8                	sw	a4,4(a1)
   12c68:	c7b2                	sw	a2,204(sp)
   12c6a:	c5b6                	sw	a3,200(sp)
   12c6c:	05a1                	addi	a1,a1,8
   12c6e:	fed855e3          	bge	a6,a3,12c58 <_vfprintf_r+0x1472>
   12c72:	01d0                	addi	a2,sp,196
   12c74:	85a6                	mv	a1,s1
   12c76:	854a                	mv	a0,s2
   12c78:	7b8000ef          	jal	13430 <__sprint_r>
   12c7c:	dc051363          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12c80:	4741                	li	a4,16
   12c82:	1441                	addi	s0,s0,-16
   12c84:	463e                	lw	a2,204(sp)
   12c86:	46ae                	lw	a3,200(sp)
   12c88:	85ce                	mv	a1,s3
   12c8a:	481d                	li	a6,7
   12c8c:	fc8749e3          	blt	a4,s0,12c5e <_vfprintf_r+0x1478>
   12c90:	4f72                	lw	t5,28(sp)
   12c92:	9622                	add	a2,a2,s0
   12c94:	0685                	addi	a3,a3,1
   12c96:	01e5a023          	sw	t5,0(a1)
   12c9a:	c1c0                	sw	s0,4(a1)
   12c9c:	c7b2                	sw	a2,204(sp)
   12c9e:	c5b6                	sw	a3,200(sp)
   12ca0:	40d84063          	blt	a6,a3,130a0 <_vfprintf_r+0x18ba>
   12ca4:	000cc683          	lbu	a3,0(s9)
   12ca8:	05a1                	addi	a1,a1,8
   12caa:	9d36                	add	s10,s10,a3
   12cac:	bf95                	j	12c20 <_vfprintf_r+0x143a>
   12cae:	1cfd                	addi	s9,s9,-1
   12cb0:	1b7d                	addi	s6,s6,-1
   12cb2:	bf19                	j	12bc8 <_vfprintf_r+0x13e2>
   12cb4:	01d0                	addi	a2,sp,196
   12cb6:	85a6                	mv	a1,s1
   12cb8:	854a                	mv	a0,s2
   12cba:	776000ef          	jal	13430 <__sprint_r>
   12cbe:	d8051263          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12cc2:	463e                	lw	a2,204(sp)
   12cc4:	85ce                	mv	a1,s3
   12cc6:	4741                	li	a4,16
   12cc8:	481d                	li	a6,7
   12cca:	bf19                	j	12be0 <_vfprintf_r+0x13fa>
   12ccc:	01d0                	addi	a2,sp,196
   12cce:	85a6                	mv	a1,s1
   12cd0:	854a                	mv	a0,s2
   12cd2:	2fb9                	jal	13430 <__sprint_r>
   12cd4:	d6051763          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12cd8:	000cc683          	lbu	a3,0(s9)
   12cdc:	463e                	lw	a2,204(sp)
   12cde:	85ce                	mv	a1,s3
   12ce0:	4741                	li	a4,16
   12ce2:	481d                	li	a6,7
   12ce4:	b725                	j	12c0c <_vfprintf_r+0x1426>
   12ce6:	4522                	lw	a0,8(sp)
   12ce8:	01d0                	addi	a2,sp,196
   12cea:	85a6                	mv	a1,s1
   12cec:	2791                	jal	13430 <__sprint_r>
   12cee:	d4051a63          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12cf2:	553a                	lw	a0,172(sp)
   12cf4:	463e                	lw	a2,204(sp)
   12cf6:	844e                	mv	s0,s3
   12cf8:	b949                	j	1298a <_vfprintf_r+0x11a4>
   12cfa:	67e9                	lui	a5,0x1a
   12cfc:	40c78d13          	addi	s10,a5,1036 # 1a40c <__clzsi2+0x82>
   12d00:	b33d                	j	12a2e <_vfprintf_r+0x1248>
   12d02:	4522                	lw	a0,8(sp)
   12d04:	01d0                	addi	a2,sp,196
   12d06:	85a6                	mv	a1,s1
   12d08:	2725                	jal	13430 <__sprint_r>
   12d0a:	d2051c63          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12d0e:	463e                	lw	a2,204(sp)
   12d10:	844e                	mv	s0,s3
   12d12:	eaaff06f          	j	123bc <_vfprintf_r+0xbd6>
   12d16:	4b19                	li	s6,6
   12d18:	b2a1                	j	12660 <_vfprintf_r+0xe7a>
   12d1a:	47d2                	lw	a5,20(sp)
   12d1c:	4732                	lw	a4,12(sp)
   12d1e:	439c                	lw	a5,0(a5)
   12d20:	00e79023          	sh	a4,0(a5)
   12d24:	aaaff06f          	j	11fce <_vfprintf_r+0x7e8>
   12d28:	0b62                	slli	s6,s6,0x18
   12d2a:	418b5b13          	srai	s6,s6,0x18
   12d2e:	41fb5d93          	srai	s11,s6,0x1f
   12d32:	87ee                	mv	a5,s11
   12d34:	de5fe06f          	j	11b18 <_vfprintf_r+0x332>
   12d38:	0ffb7b13          	zext.b	s6,s6
   12d3c:	4d81                	li	s11,0
   12d3e:	e3dfe06f          	j	11b7a <_vfprintf_r+0x394>
   12d42:	0ffb7b13          	zext.b	s6,s6
   12d46:	4d81                	li	s11,0
   12d48:	b075                	j	125f4 <_vfprintf_r+0xe0e>
   12d4a:	02d00793          	li	a5,45
   12d4e:	0af103a3          	sb	a5,167(sp)
   12d52:	02d00713          	li	a4,45
   12d56:	b351                	j	12ada <_vfprintf_r+0x12f4>
   12d58:	4522                	lw	a0,8(sp)
   12d5a:	01d0                	addi	a2,sp,196
   12d5c:	85a6                	mv	a1,s1
   12d5e:	2dc9                	jal	13430 <__sprint_r>
   12d60:	ce3fe06f          	j	11a42 <_vfprintf_r+0x25c>
   12d64:	4522                	lw	a0,8(sp)
   12d66:	01d0                	addi	a2,sp,196
   12d68:	85a6                	mv	a1,s1
   12d6a:	25d9                	jal	13430 <__sprint_r>
   12d6c:	cc051b63          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   12d70:	553a                	lw	a0,172(sp)
   12d72:	463e                	lw	a2,204(sp)
   12d74:	472e                	lw	a4,200(sp)
   12d76:	844e                	mv	s0,s3
   12d78:	b9dd                	j	12a6e <_vfprintf_r+0x1288>
   12d7a:	01550733          	add	a4,a0,s5
   12d7e:	04700613          	li	a2,71
   12d82:	010c                	addi	a1,sp,128
   12d84:	855a                	mv	a0,s6
   12d86:	d23a                	sw	a4,36(sp)
   12d88:	d032                	sw	a2,32(sp)
   12d8a:	ce46                	sw	a7,28(sp)
   12d8c:	c97e                	sw	t6,144(sp)
   12d8e:	cb7a                	sw	t5,148(sp)
   12d90:	cd76                	sw	t4,152(sp)
   12d92:	cf62                	sw	s8,156(sp)
   12d94:	c102                	sw	zero,128(sp)
   12d96:	c302                	sw	zero,132(sp)
   12d98:	c502                	sw	zero,136(sp)
   12d9a:	c702                	sw	zero,140(sp)
   12d9c:	17e050ef          	jal	17f1a <__eqtf2>
   12da0:	48f2                	lw	a7,28(sp)
   12da2:	5602                	lw	a2,32(sp)
   12da4:	5712                	lw	a4,36(sp)
   12da6:	36050a63          	beqz	a0,1311a <_vfprintf_r+0x1934>
   12daa:	57fa                	lw	a5,188(sp)
   12dac:	00e7fc63          	bgeu	a5,a4,12dc4 <_vfprintf_r+0x15de>
   12db0:	03000593          	li	a1,48
   12db4:	00178693          	addi	a3,a5,1
   12db8:	df36                	sw	a3,188(sp)
   12dba:	00b78023          	sb	a1,0(a5)
   12dbe:	57fa                	lw	a5,188(sp)
   12dc0:	fee7eae3          	bltu	a5,a4,12db4 <_vfprintf_r+0x15ce>
   12dc4:	573a                	lw	a4,172(sp)
   12dc6:	ce3a                	sw	a4,28(sp)
   12dc8:	41a787b3          	sub	a5,a5,s10
   12dcc:	04700713          	li	a4,71
   12dd0:	d03e                	sw	a5,32(sp)
   12dd2:	98e60ae3          	beq	a2,a4,12766 <_vfprintf_r+0xf80>
   12dd6:	04600713          	li	a4,70
   12dda:	38e60863          	beq	a2,a4,1316a <_vfprintf_r+0x1984>
   12dde:	47f2                	lw	a5,28(sp)
   12de0:	fff78713          	addi	a4,a5,-1
   12de4:	ba59                	j	1277a <_vfprintf_r+0xf94>
   12de6:	001a8693          	addi	a3,s5,1
   12dea:	4609                	li	a2,2
   12dec:	4522                	lw	a0,8(sp)
   12dee:	09010b13          	addi	s6,sp,144
   12df2:	1178                	addi	a4,sp,172
   12df4:	85da                	mv	a1,s6
   12df6:	0bc10813          	addi	a6,sp,188
   12dfa:	191c                	addi	a5,sp,176
   12dfc:	c8c6                	sw	a7,80(sp)
   12dfe:	d436                	sw	a3,40(sp)
   12e00:	c97e                	sw	t6,144(sp)
   12e02:	d27e                	sw	t6,36(sp)
   12e04:	cb7a                	sw	t5,148(sp)
   12e06:	d07a                	sw	t5,32(sp)
   12e08:	cd76                	sw	t4,152(sp)
   12e0a:	ce76                	sw	t4,28(sp)
   12e0c:	cf62                	sw	s8,156(sp)
   12e0e:	43c010ef          	jal	1424a <_ldtoa_r>
   12e12:	48c6                	lw	a7,80(sp)
   12e14:	56a2                	lw	a3,40(sp)
   12e16:	04600593          	li	a1,70
   12e1a:	fdf8f613          	andi	a2,a7,-33
   12e1e:	4ef2                	lw	t4,28(sp)
   12e20:	5f02                	lw	t5,32(sp)
   12e22:	5f92                	lw	t6,36(sp)
   12e24:	8d2a                	mv	s10,a0
   12e26:	00d50733          	add	a4,a0,a3
   12e2a:	54b61563          	bne	a2,a1,13374 <_vfprintf_r+0x1b8e>
   12e2e:	000d4503          	lbu	a0,0(s10)
   12e32:	03000593          	li	a1,48
   12e36:	2eb50663          	beq	a0,a1,13122 <_vfprintf_r+0x193c>
   12e3a:	56ba                	lw	a3,172(sp)
   12e3c:	010c                	addi	a1,sp,128
   12e3e:	9736                	add	a4,a4,a3
   12e40:	b791                	j	12d84 <_vfprintf_r+0x159e>
   12e42:	09010b13          	addi	s6,sp,144
   12e46:	010c                	addi	a1,sp,128
   12e48:	1170                	addi	a2,sp,172
   12e4a:	855a                	mv	a0,s6
   12e4c:	c0c6                	sw	a7,64(sp)
   12e4e:	c17e                	sw	t6,128(sp)
   12e50:	c37a                	sw	t5,132(sp)
   12e52:	c576                	sw	t4,136(sp)
   12e54:	ce2e                	sw	a1,28(sp)
   12e56:	c762                	sw	s8,140(sp)
   12e58:	296010ef          	jal	140ee <frexpl>
   12e5c:	474a                	lw	a4,144(sp)
   12e5e:	45f2                	lw	a1,28(sp)
   12e60:	1890                	addi	a2,sp,112
   12e62:	c13a                	sw	a4,128(sp)
   12e64:	475a                	lw	a4,148(sp)
   12e66:	855a                	mv	a0,s6
   12e68:	d882                	sw	zero,112(sp)
   12e6a:	c33a                	sw	a4,132(sp)
   12e6c:	476a                	lw	a4,152(sp)
   12e6e:	da82                	sw	zero,116(sp)
   12e70:	dc82                	sw	zero,120(sp)
   12e72:	c53a                	sw	a4,136(sp)
   12e74:	477a                	lw	a4,156(sp)
   12e76:	c73a                	sw	a4,140(sp)
   12e78:	3ffc0737          	lui	a4,0x3ffc0
   12e7c:	deba                	sw	a4,124(sp)
   12e7e:	360050ef          	jal	181de <__multf3>
   12e82:	45f2                	lw	a1,28(sp)
   12e84:	4f4a                	lw	t5,144(sp)
   12e86:	4eda                	lw	t4,148(sp)
   12e88:	486a                	lw	a6,152(sp)
   12e8a:	855a                	mv	a0,s6
   12e8c:	d42e                	sw	a1,40(sp)
   12e8e:	d27a                	sw	t5,36(sp)
   12e90:	d076                	sw	t4,32(sp)
   12e92:	ce42                	sw	a6,28(sp)
   12e94:	c102                	sw	zero,128(sp)
   12e96:	c302                	sw	zero,132(sp)
   12e98:	c502                	sw	zero,136(sp)
   12e9a:	c702                	sw	zero,140(sp)
   12e9c:	07e050ef          	jal	17f1a <__eqtf2>
   12ea0:	4dfa                	lw	s11,156(sp)
   12ea2:	4872                	lw	a6,28(sp)
   12ea4:	5e82                	lw	t4,32(sp)
   12ea6:	5f12                	lw	t5,36(sp)
   12ea8:	55a2                	lw	a1,40(sp)
   12eaa:	4886                	lw	a7,64(sp)
   12eac:	e119                	bnez	a0,12eb2 <_vfprintf_r+0x16cc>
   12eae:	4705                	li	a4,1
   12eb0:	d73a                	sw	a4,172(sp)
   12eb2:	06100713          	li	a4,97
   12eb6:	44e88d63          	beq	a7,a4,13310 <_vfprintf_r+0x1b2a>
   12eba:	6769                	lui	a4,0x1a
   12ebc:	43070793          	addi	a5,a4,1072 # 1a430 <__clzsi2+0xa6>
   12ec0:	ce3e                	sw	a5,28(sp)
   12ec2:	d04a                	sw	s2,32(sp)
   12ec4:	d466                	sw	s9,40(sp)
   12ec6:	c0de                	sw	s7,64(sp)
   12ec8:	c6a2                	sw	s0,76(sp)
   12eca:	896a                	mv	s2,s10
   12ecc:	c8a6                	sw	s1,80(sp)
   12ece:	caea                	sw	s10,84(sp)
   12ed0:	44f2                	lw	s1,28(sp)
   12ed2:	1afd                	addi	s5,s5,-1
   12ed4:	d246                	sw	a7,36(sp)
   12ed6:	8bfa                	mv	s7,t5
   12ed8:	8c76                	mv	s8,t4
   12eda:	8cc2                	mv	s9,a6
   12edc:	8d6e                	mv	s10,s11
   12ede:	842e                	mv	s0,a1
   12ee0:	a015                	j	12f04 <_vfprintf_r+0x171e>
   12ee2:	85a2                	mv	a1,s0
   12ee4:	855a                	mv	a0,s6
   12ee6:	c95e                	sw	s7,144(sp)
   12ee8:	cb62                	sw	s8,148(sp)
   12eea:	cd66                	sw	s9,152(sp)
   12eec:	cf6a                	sw	s10,156(sp)
   12eee:	c102                	sw	zero,128(sp)
   12ef0:	c302                	sw	zero,132(sp)
   12ef2:	c502                	sw	zero,136(sp)
   12ef4:	c702                	sw	zero,140(sp)
   12ef6:	fffa8d93          	addi	s11,s5,-1
   12efa:	020050ef          	jal	17f1a <__eqtf2>
   12efe:	3c050c63          	beqz	a0,132d6 <_vfprintf_r+0x1af0>
   12f02:	8aee                	mv	s5,s11
   12f04:	400307b7          	lui	a5,0x40030
   12f08:	1890                	addi	a2,sp,112
   12f0a:	85a2                	mv	a1,s0
   12f0c:	855a                	mv	a0,s6
   12f0e:	debe                	sw	a5,124(sp)
   12f10:	c15e                	sw	s7,128(sp)
   12f12:	c362                	sw	s8,132(sp)
   12f14:	c566                	sw	s9,136(sp)
   12f16:	c76a                	sw	s10,140(sp)
   12f18:	d882                	sw	zero,112(sp)
   12f1a:	da82                	sw	zero,116(sp)
   12f1c:	dc82                	sw	zero,120(sp)
   12f1e:	2c0050ef          	jal	181de <__multf3>
   12f22:	855a                	mv	a0,s6
   12f24:	0e4070ef          	jal	1a008 <__fixtfsi>
   12f28:	85aa                	mv	a1,a0
   12f2a:	8daa                	mv	s11,a0
   12f2c:	855a                	mv	a0,s6
   12f2e:	4d4a                	lw	s10,144(sp)
   12f30:	4cda                	lw	s9,148(sp)
   12f32:	4c6a                	lw	s8,152(sp)
   12f34:	4bfa                	lw	s7,156(sp)
   12f36:	1f6070ef          	jal	1a12c <__floatsitf>
   12f3a:	46ca                	lw	a3,144(sp)
   12f3c:	1090                	addi	a2,sp,96
   12f3e:	188c                	addi	a1,sp,112
   12f40:	d0b6                	sw	a3,96(sp)
   12f42:	46da                	lw	a3,148(sp)
   12f44:	8522                	mv	a0,s0
   12f46:	d8ea                	sw	s10,112(sp)
   12f48:	d2b6                	sw	a3,100(sp)
   12f4a:	46ea                	lw	a3,152(sp)
   12f4c:	dae6                	sw	s9,116(sp)
   12f4e:	dce2                	sw	s8,120(sp)
   12f50:	d4b6                	sw	a3,104(sp)
   12f52:	46fa                	lw	a3,156(sp)
   12f54:	dede                	sw	s7,124(sp)
   12f56:	d6b6                	sw	a3,108(sp)
   12f58:	723050ef          	jal	18e7a <__subtf3>
   12f5c:	01b486b3          	add	a3,s1,s11
   12f60:	0006c603          	lbu	a2,0(a3)
   12f64:	8fca                	mv	t6,s2
   12f66:	0905                	addi	s2,s2,1
   12f68:	4b8a                	lw	s7,128(sp)
   12f6a:	4c1a                	lw	s8,132(sp)
   12f6c:	4caa                	lw	s9,136(sp)
   12f6e:	4d3a                	lw	s10,140(sp)
   12f70:	57fd                	li	a5,-1
   12f72:	fec90fa3          	sb	a2,-1(s2)
   12f76:	f6fa96e3          	bne	s5,a5,12ee2 <_vfprintf_r+0x16fc>
   12f7a:	5892                	lw	a7,36(sp)
   12f7c:	8f5e                	mv	t5,s7
   12f7e:	8ee2                	mv	t4,s8
   12f80:	8866                	mv	a6,s9
   12f82:	85a2                	mv	a1,s0
   12f84:	ccee                	sw	s11,88(sp)
   12f86:	3ffe0ab7          	lui	s5,0x3ffe0
   12f8a:	8dea                	mv	s11,s10
   12f8c:	855a                	mv	a0,s6
   12f8e:	cec6                	sw	a7,92(sp)
   12f90:	d27e                	sw	t6,36(sp)
   12f92:	44c6                	lw	s1,80(sp)
   12f94:	4b86                	lw	s7,64(sp)
   12f96:	5ca2                	lw	s9,40(sp)
   12f98:	4436                	lw	s0,76(sp)
   12f9a:	c97a                	sw	t5,144(sp)
   12f9c:	c8fa                	sw	t5,80(sp)
   12f9e:	cb76                	sw	t4,148(sp)
   12fa0:	c6f6                	sw	t4,76(sp)
   12fa2:	cd42                	sw	a6,152(sp)
   12fa4:	c0c2                	sw	a6,64(sp)
   12fa6:	cf6e                	sw	s11,156(sp)
   12fa8:	c102                	sw	zero,128(sp)
   12faa:	c302                	sw	zero,132(sp)
   12fac:	c502                	sw	zero,136(sp)
   12fae:	c756                	sw	s5,140(sp)
   12fb0:	d42e                	sw	a1,40(sp)
   12fb2:	054050ef          	jal	18006 <__getf2>
   12fb6:	8c4a                	mv	s8,s2
   12fb8:	4d56                	lw	s10,84(sp)
   12fba:	5902                	lw	s2,32(sp)
   12fbc:	5f92                	lw	t6,36(sp)
   12fbe:	48f6                	lw	a7,92(sp)
   12fc0:	00a04e63          	bgtz	a0,12fdc <_vfprintf_r+0x17f6>
   12fc4:	55a2                	lw	a1,40(sp)
   12fc6:	855a                	mv	a0,s6
   12fc8:	d046                	sw	a7,32(sp)
   12fca:	751040ef          	jal	17f1a <__eqtf2>
   12fce:	5882                	lw	a7,32(sp)
   12fd0:	e529                	bnez	a0,1301a <_vfprintf_r+0x1834>
   12fd2:	47e6                	lw	a5,88(sp)
   12fd4:	5f92                	lw	t6,36(sp)
   12fd6:	0017f693          	andi	a3,a5,1
   12fda:	c2a1                	beqz	a3,1301a <_vfprintf_r+0x1834>
   12fdc:	47f2                	lw	a5,28(sp)
   12fde:	df7e                	sw	t6,188(sp)
   12fe0:	fffc4603          	lbu	a2,-1(s8)
   12fe4:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x400145b3>
   12fe8:	86e2                	mv	a3,s8
   12fea:	00b61e63          	bne	a2,a1,13006 <_vfprintf_r+0x1820>
   12fee:	03000513          	li	a0,48
   12ff2:	fea68fa3          	sb	a0,-1(a3)
   12ff6:	56fa                	lw	a3,188(sp)
   12ff8:	fff68793          	addi	a5,a3,-1
   12ffc:	df3e                	sw	a5,188(sp)
   12ffe:	fff6c603          	lbu	a2,-1(a3)
   13002:	fec588e3          	beq	a1,a2,12ff2 <_vfprintf_r+0x180c>
   13006:	00160593          	addi	a1,a2,1
   1300a:	03900513          	li	a0,57
   1300e:	0ff5f593          	zext.b	a1,a1
   13012:	02a60c63          	beq	a2,a0,1304a <_vfprintf_r+0x1864>
   13016:	feb68fa3          	sb	a1,-1(a3)
   1301a:	57ba                	lw	a5,172(sp)
   1301c:	41ac0733          	sub	a4,s8,s10
   13020:	d03a                	sw	a4,32(sp)
   13022:	fff78713          	addi	a4,a5,-1
   13026:	ce3e                	sw	a5,28(sp)
   13028:	06100613          	li	a2,97
   1302c:	d73a                	sw	a4,172(sp)
   1302e:	07000693          	li	a3,112
   13032:	00c88663          	beq	a7,a2,1303e <_vfprintf_r+0x1858>
   13036:	05000693          	li	a3,80
   1303a:	04100893          	li	a7,65
   1303e:	4605                	li	a2,1
   13040:	f42ff06f          	j	12782 <_vfprintf_r+0xf9c>
   13044:	86d6                	mv	a3,s5
   13046:	460d                	li	a2,3
   13048:	b355                	j	12dec <_vfprintf_r+0x1606>
   1304a:	47f2                	lw	a5,28(sp)
   1304c:	00a7c583          	lbu	a1,10(a5)
   13050:	b7d9                	j	13016 <_vfprintf_r+0x1830>
   13052:	0a714703          	lbu	a4,167(sp)
   13056:	4cb6                	lw	s9,76(sp)
   13058:	4a81                	li	s5,0
   1305a:	c319                	beqz	a4,13060 <_vfprintf_r+0x187a>
   1305c:	af7fe06f          	j	11b52 <_vfprintf_r+0x36c>
   13060:	911fe06f          	j	11970 <_vfprintf_r+0x18a>
   13064:	5782                	lw	a5,32(sp)
   13066:	4772                	lw	a4,28(sp)
   13068:	12f74763          	blt	a4,a5,13196 <_vfprintf_r+0x19b0>
   1306c:	47f2                	lw	a5,28(sp)
   1306e:	001cf713          	andi	a4,s9,1
   13072:	8b3e                	mv	s6,a5
   13074:	c701                	beqz	a4,1307c <_vfprintf_r+0x1896>
   13076:	5732                	lw	a4,44(sp)
   13078:	00e78b33          	add	s6,a5,a4
   1307c:	400cfe13          	andi	t3,s9,1024
   13080:	000e0563          	beqz	t3,1308a <_vfprintf_r+0x18a4>
   13084:	47f2                	lw	a5,28(sp)
   13086:	1ef04c63          	bgtz	a5,1327e <_vfprintf_r+0x1a98>
   1308a:	fffb4693          	not	a3,s6
   1308e:	86fd                	srai	a3,a3,0x1f
   13090:	00db7db3          	and	s11,s6,a3
   13094:	06700893          	li	a7,103
   13098:	d402                	sw	zero,40(sp)
   1309a:	d202                	sw	zero,36(sp)
   1309c:	f88ff06f          	j	12824 <_vfprintf_r+0x103e>
   130a0:	01d0                	addi	a2,sp,196
   130a2:	85a6                	mv	a1,s1
   130a4:	854a                	mv	a0,s2
   130a6:	2669                	jal	13430 <__sprint_r>
   130a8:	98051d63          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   130ac:	000cc683          	lbu	a3,0(s9)
   130b0:	463e                	lw	a2,204(sp)
   130b2:	85ce                	mv	a1,s3
   130b4:	4741                	li	a4,16
   130b6:	481d                	li	a6,7
   130b8:	9d36                	add	s10,s10,a3
   130ba:	b69d                	j	12c20 <_vfprintf_r+0x143a>
   130bc:	4525                	li	a0,9
   130be:	83656ae3          	bltu	a0,s6,128f2 <_vfprintf_r+0x110c>
   130c2:	b861                	j	1295a <_vfprintf_r+0x1174>
   130c4:	57fd                	li	a5,-1
   130c6:	c63e                	sw	a5,12(sp)
   130c8:	9adfe06f          	j	11a74 <_vfprintf_r+0x28e>
   130cc:	02d00793          	li	a5,45
   130d0:	0af103a3          	sb	a5,167(sp)
   130d4:	02d00713          	li	a4,45
   130d8:	b2a1                	j	12a20 <_vfprintf_r+0x123a>
   130da:	0a714703          	lbu	a4,167(sp)
   130de:	ca62                	sw	s8,20(sp)
   130e0:	d402                	sw	zero,40(sp)
   130e2:	d202                	sw	zero,36(sp)
   130e4:	ce02                	sw	zero,28(sp)
   130e6:	8dd6                	mv	s11,s5
   130e8:	8b56                	mv	s6,s5
   130ea:	4a81                	li	s5,0
   130ec:	c319                	beqz	a4,130f2 <_vfprintf_r+0x190c>
   130ee:	a65fe06f          	j	11b52 <_vfprintf_r+0x36c>
   130f2:	87ffe06f          	j	11970 <_vfprintf_r+0x18a>
   130f6:	4522                	lw	a0,8(sp)
   130f8:	01d0                	addi	a2,sp,196
   130fa:	85a6                	mv	a1,s1
   130fc:	2e15                	jal	13430 <__sprint_r>
   130fe:	94051263          	bnez	a0,12242 <_vfprintf_r+0xa5c>
   13102:	5aba                	lw	s5,172(sp)
   13104:	5782                	lw	a5,32(sp)
   13106:	463e                	lw	a2,204(sp)
   13108:	844e                	mv	s0,s3
   1310a:	41578ab3          	sub	s5,a5,s5
   1310e:	b12ff06f          	j	12420 <_vfprintf_r+0xc3a>
   13112:	67e9                	lui	a5,0x1a
   13114:	41878d13          	addi	s10,a5,1048 # 1a418 <__clzsi2+0x8e>
   13118:	ba19                	j	12a2e <_vfprintf_r+0x1248>
   1311a:	57ba                	lw	a5,172(sp)
   1311c:	ce3e                	sw	a5,28(sp)
   1311e:	87ba                	mv	a5,a4
   13120:	b165                	j	12dc8 <_vfprintf_r+0x15e2>
   13122:	010c                	addi	a1,sp,128
   13124:	855a                	mv	a0,s6
   13126:	ceba                	sw	a4,92(sp)
   13128:	ccb2                	sw	a2,88(sp)
   1312a:	cac6                	sw	a7,84(sp)
   1312c:	c8b6                	sw	a3,80(sp)
   1312e:	c97e                	sw	t6,144(sp)
   13130:	d47e                	sw	t6,40(sp)
   13132:	cb7a                	sw	t5,148(sp)
   13134:	d27a                	sw	t5,36(sp)
   13136:	cd76                	sw	t4,152(sp)
   13138:	d076                	sw	t4,32(sp)
   1313a:	ce2e                	sw	a1,28(sp)
   1313c:	cf62                	sw	s8,156(sp)
   1313e:	c102                	sw	zero,128(sp)
   13140:	c302                	sw	zero,132(sp)
   13142:	c502                	sw	zero,136(sp)
   13144:	c702                	sw	zero,140(sp)
   13146:	5d5040ef          	jal	17f1a <__eqtf2>
   1314a:	45f2                	lw	a1,28(sp)
   1314c:	5e82                	lw	t4,32(sp)
   1314e:	5f12                	lw	t5,36(sp)
   13150:	5fa2                	lw	t6,40(sp)
   13152:	46c6                	lw	a3,80(sp)
   13154:	48d6                	lw	a7,84(sp)
   13156:	4666                	lw	a2,88(sp)
   13158:	4776                	lw	a4,92(sp)
   1315a:	1c051063          	bnez	a0,1331a <_vfprintf_r+0x1b34>
   1315e:	57ba                	lw	a5,172(sp)
   13160:	973e                	add	a4,a4,a5
   13162:	ce3e                	sw	a5,28(sp)
   13164:	41a707b3          	sub	a5,a4,s10
   13168:	d03e                	sw	a5,32(sp)
   1316a:	47f2                	lw	a5,28(sp)
   1316c:	001cf713          	andi	a4,s9,1
   13170:	01576733          	or	a4,a4,s5
   13174:	1af05963          	blez	a5,13326 <_vfprintf_r+0x1b40>
   13178:	18071463          	bnez	a4,13300 <_vfprintf_r+0x1b1a>
   1317c:	4b72                	lw	s6,28(sp)
   1317e:	06600893          	li	a7,102
   13182:	400cfe13          	andi	t3,s9,1024
   13186:	0e0e1e63          	bnez	t3,13282 <_vfprintf_r+0x1a9c>
   1318a:	fffb4693          	not	a3,s6
   1318e:	86fd                	srai	a3,a3,0x1f
   13190:	00db7db3          	and	s11,s6,a3
   13194:	b711                	j	13098 <_vfprintf_r+0x18b2>
   13196:	5782                	lw	a5,32(sp)
   13198:	5732                	lw	a4,44(sp)
   1319a:	06700893          	li	a7,103
   1319e:	00e78b33          	add	s6,a5,a4
   131a2:	47f2                	lw	a5,28(sp)
   131a4:	fcf04fe3          	bgtz	a5,13182 <_vfprintf_r+0x199c>
   131a8:	40fb0f33          	sub	t5,s6,a5
   131ac:	001f0b13          	addi	s6,t5,1
   131b0:	fffb4693          	not	a3,s6
   131b4:	86fd                	srai	a3,a3,0x1f
   131b6:	00db7db3          	and	s11,s6,a3
   131ba:	bdf9                	j	13098 <_vfprintf_r+0x18b2>
   131bc:	8ee6                	mv	t4,s9
   131be:	cf5fe06f          	j	11eb2 <_vfprintf_r+0x6cc>
   131c2:	6869                	lui	a6,0x1a
   131c4:	55c1                	li	a1,-16
   131c6:	40a00ab3          	neg	s5,a0
   131ca:	77880813          	addi	a6,a6,1912 # 1a778 <zeroes.0>
   131ce:	04b55263          	bge	a0,a1,13212 <_vfprintf_r+0x1a2c>
   131d2:	ce4a                	sw	s2,28(sp)
   131d4:	4b41                	li	s6,16
   131d6:	4c1d                	li	s8,7
   131d8:	8942                	mv	s2,a6
   131da:	a021                	j	131e2 <_vfprintf_r+0x19fc>
   131dc:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc4594>
   131de:	035b5863          	bge	s6,s5,1320e <_vfprintf_r+0x1a28>
   131e2:	0641                	addi	a2,a2,16
   131e4:	0705                	addi	a4,a4,1
   131e6:	01242023          	sw	s2,0(s0)
   131ea:	01642223          	sw	s6,4(s0)
   131ee:	c7b2                	sw	a2,204(sp)
   131f0:	c5ba                	sw	a4,200(sp)
   131f2:	0421                	addi	s0,s0,8
   131f4:	feec54e3          	bge	s8,a4,131dc <_vfprintf_r+0x19f6>
   131f8:	4522                	lw	a0,8(sp)
   131fa:	01d0                	addi	a2,sp,196
   131fc:	85a6                	mv	a1,s1
   131fe:	2c0d                	jal	13430 <__sprint_r>
   13200:	c119                	beqz	a0,13206 <_vfprintf_r+0x1a20>
   13202:	840ff06f          	j	12242 <_vfprintf_r+0xa5c>
   13206:	463e                	lw	a2,204(sp)
   13208:	472e                	lw	a4,200(sp)
   1320a:	844e                	mv	s0,s3
   1320c:	bfc1                	j	131dc <_vfprintf_r+0x19f6>
   1320e:	884a                	mv	a6,s2
   13210:	4972                	lw	s2,28(sp)
   13212:	9656                	add	a2,a2,s5
   13214:	0705                	addi	a4,a4,1
   13216:	01042023          	sw	a6,0(s0)
   1321a:	01542223          	sw	s5,4(s0)
   1321e:	c7b2                	sw	a2,204(sp)
   13220:	c5ba                	sw	a4,200(sp)
   13222:	459d                	li	a1,7
   13224:	f8e5d763          	bge	a1,a4,129b2 <_vfprintf_r+0x11cc>
   13228:	4522                	lw	a0,8(sp)
   1322a:	01d0                	addi	a2,sp,196
   1322c:	85a6                	mv	a1,s1
   1322e:	2409                	jal	13430 <__sprint_r>
   13230:	c119                	beqz	a0,13236 <_vfprintf_r+0x1a50>
   13232:	810ff06f          	j	12242 <_vfprintf_r+0xa5c>
   13236:	463e                	lw	a2,204(sp)
   13238:	472e                	lw	a4,200(sp)
   1323a:	844e                	mv	s0,s3
   1323c:	837ff06f          	j	12a72 <_vfprintf_r+0x128c>
   13240:	0b610693          	addi	a3,sp,182
   13244:	e619                	bnez	a2,13252 <_vfprintf_r+0x1a6c>
   13246:	03000693          	li	a3,48
   1324a:	0ad10b23          	sb	a3,182(sp)
   1324e:	0b710693          	addi	a3,sp,183
   13252:	0b1c                	addi	a5,sp,400
   13254:	40f68633          	sub	a2,a3,a5
   13258:	03070713          	addi	a4,a4,48
   1325c:	0dd60793          	addi	a5,a2,221
   13260:	00e68023          	sb	a4,0(a3)
   13264:	c0be                	sw	a5,64(sp)
   13266:	d92ff06f          	j	127f8 <_vfprintf_r+0x1012>
   1326a:	c802                	sw	zero,16(sp)
   1326c:	4a99                	li	s5,6
   1326e:	9effe06f          	j	11c5c <_vfprintf_r+0x476>
   13272:	001cf713          	andi	a4,s9,1
   13276:	d8070a63          	beqz	a4,1280a <_vfprintf_r+0x1024>
   1327a:	d8cff06f          	j	12806 <_vfprintf_r+0x1020>
   1327e:	06700893          	li	a7,103
   13282:	5672                	lw	a2,60(sp)
   13284:	0ff00693          	li	a3,255
   13288:	00064703          	lbu	a4,0(a2)
   1328c:	0ed70163          	beq	a4,a3,1336e <_vfprintf_r+0x1b88>
   13290:	47f2                	lw	a5,28(sp)
   13292:	4501                	li	a0,0
   13294:	4581                	li	a1,0
   13296:	00f75a63          	bge	a4,a5,132aa <_vfprintf_r+0x1ac4>
   1329a:	8f99                	sub	a5,a5,a4
   1329c:	00164703          	lbu	a4,1(a2)
   132a0:	c71d                	beqz	a4,132ce <_vfprintf_r+0x1ae8>
   132a2:	0585                	addi	a1,a1,1
   132a4:	0605                	addi	a2,a2,1
   132a6:	fed718e3          	bne	a4,a3,13296 <_vfprintf_r+0x1ab0>
   132aa:	de32                	sw	a2,60(sp)
   132ac:	d22e                	sw	a1,36(sp)
   132ae:	d42a                	sw	a0,40(sp)
   132b0:	ce3e                	sw	a5,28(sp)
   132b2:	57a2                	lw	a5,40(sp)
   132b4:	5712                	lw	a4,36(sp)
   132b6:	973e                	add	a4,a4,a5
   132b8:	47a6                	lw	a5,72(sp)
   132ba:	02f70733          	mul	a4,a4,a5
   132be:	9b3a                	add	s6,s6,a4
   132c0:	fffb4693          	not	a3,s6
   132c4:	86fd                	srai	a3,a3,0x1f
   132c6:	00db7db3          	and	s11,s6,a3
   132ca:	d5aff06f          	j	12824 <_vfprintf_r+0x103e>
   132ce:	00064703          	lbu	a4,0(a2)
   132d2:	0505                	addi	a0,a0,1
   132d4:	bfc9                	j	132a6 <_vfprintf_r+0x1ac0>
   132d6:	8c4a                	mv	s8,s2
   132d8:	001a8693          	addi	a3,s5,1
   132dc:	5892                	lw	a7,36(sp)
   132de:	5ca2                	lw	s9,40(sp)
   132e0:	4b86                	lw	s7,64(sp)
   132e2:	4436                	lw	s0,76(sp)
   132e4:	5902                	lw	s2,32(sp)
   132e6:	44c6                	lw	s1,80(sp)
   132e8:	4d56                	lw	s10,84(sp)
   132ea:	96e2                	add	a3,a3,s8
   132ec:	03000613          	li	a2,48
   132f0:	d20ac5e3          	bltz	s5,1301a <_vfprintf_r+0x1834>
   132f4:	0c05                	addi	s8,s8,1
   132f6:	fecc0fa3          	sb	a2,-1(s8)
   132fa:	fedc1de3          	bne	s8,a3,132f4 <_vfprintf_r+0x1b0e>
   132fe:	bb31                	j	1301a <_vfprintf_r+0x1834>
   13300:	5732                	lw	a4,44(sp)
   13302:	06600893          	li	a7,102
   13306:	00ea8f33          	add	t5,s5,a4
   1330a:	00ff0b33          	add	s6,t5,a5
   1330e:	bd95                	j	13182 <_vfprintf_r+0x199c>
   13310:	6769                	lui	a4,0x1a
   13312:	41c70793          	addi	a5,a4,1052 # 1a41c <__clzsi2+0x92>
   13316:	ce3e                	sw	a5,28(sp)
   13318:	b66d                	j	12ec2 <_vfprintf_r+0x16dc>
   1331a:	4505                	li	a0,1
   1331c:	40d506b3          	sub	a3,a0,a3
   13320:	d736                	sw	a3,172(sp)
   13322:	9736                	add	a4,a4,a3
   13324:	b485                	j	12d84 <_vfprintf_r+0x159e>
   13326:	e711                	bnez	a4,13332 <_vfprintf_r+0x1b4c>
   13328:	4d85                	li	s11,1
   1332a:	06600893          	li	a7,102
   1332e:	4b05                	li	s6,1
   13330:	b3a5                	j	13098 <_vfprintf_r+0x18b2>
   13332:	57b2                	lw	a5,44(sp)
   13334:	06600893          	li	a7,102
   13338:	00178f13          	addi	t5,a5,1
   1333c:	015f0b33          	add	s6,t5,s5
   13340:	fffb4693          	not	a3,s6
   13344:	86fd                	srai	a3,a3,0x1f
   13346:	00db7db3          	and	s11,s6,a3
   1334a:	b3b9                	j	13098 <_vfprintf_r+0x18b2>
   1334c:	4789                	li	a5,2
   1334e:	c0be                	sw	a5,64(sp)
   13350:	ca8ff06f          	j	127f8 <_vfprintf_r+0x1012>
   13354:	47d2                	lw	a5,20(sp)
   13356:	0007aa83          	lw	s5,0(a5)
   1335a:	0791                	addi	a5,a5,4
   1335c:	000ad363          	bgez	s5,13362 <_vfprintf_r+0x1b7c>
   13360:	5afd                	li	s5,-1
   13362:	00194883          	lbu	a7,1(s2)
   13366:	ca3e                	sw	a5,20(sp)
   13368:	8936                	mv	s2,a3
   1336a:	dacfe06f          	j	11916 <_vfprintf_r+0x130>
   1336e:	d402                	sw	zero,40(sp)
   13370:	d202                	sw	zero,36(sp)
   13372:	b781                	j	132b2 <_vfprintf_r+0x1acc>
   13374:	04500613          	li	a2,69
   13378:	010c                	addi	a1,sp,128
   1337a:	b429                	j	12d84 <_vfprintf_r+0x159e>
   1337c:	00c4d783          	lhu	a5,12(s1)
   13380:	0407e793          	ori	a5,a5,64
   13384:	00f49623          	sh	a5,12(s1)
   13388:	ebafe06f          	j	11a42 <_vfprintf_r+0x25c>

0001338c <vfprintf>:
   1338c:	87aa                	mv	a5,a0
   1338e:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13392:	86b2                	mv	a3,a2
   13394:	862e                	mv	a2,a1
   13396:	85be                	mv	a1,a5
   13398:	c4efe06f          	j	117e6 <_vfprintf_r>

0001339c <__sbprintf>:
   1339c:	b8010113          	addi	sp,sp,-1152
   133a0:	00c59783          	lh	a5,12(a1)
   133a4:	00e5d703          	lhu	a4,14(a1)
   133a8:	46812c23          	sw	s0,1144(sp)
   133ac:	842e                	mv	s0,a1
   133ae:	65c1                	lui	a1,0x10
   133b0:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   133b2:	06442e03          	lw	t3,100(s0)
   133b6:	01c42303          	lw	t1,28(s0)
   133ba:	02442883          	lw	a7,36(s0)
   133be:	0742                	slli	a4,a4,0x10
   133c0:	8fed                	and	a5,a5,a1
   133c2:	8fd9                	or	a5,a5,a4
   133c4:	40000813          	li	a6,1024
   133c8:	ca3e                	sw	a5,20(sp)
   133ca:	002c                	addi	a1,sp,8
   133cc:	189c                	addi	a5,sp,112
   133ce:	46912a23          	sw	s1,1140(sp)
   133d2:	47212823          	sw	s2,1136(sp)
   133d6:	46112e23          	sw	ra,1148(sp)
   133da:	892a                	mv	s2,a0
   133dc:	d6f2                	sw	t3,108(sp)
   133de:	d21a                	sw	t1,36(sp)
   133e0:	d646                	sw	a7,44(sp)
   133e2:	c43e                	sw	a5,8(sp)
   133e4:	cc3e                	sw	a5,24(sp)
   133e6:	c842                	sw	a6,16(sp)
   133e8:	ce42                	sw	a6,28(sp)
   133ea:	d002                	sw	zero,32(sp)
   133ec:	bfafe0ef          	jal	117e6 <_vfprintf_r>
   133f0:	84aa                	mv	s1,a0
   133f2:	02055963          	bgez	a0,13424 <__sbprintf+0x88>
   133f6:	01415783          	lhu	a5,20(sp)
   133fa:	0407f793          	andi	a5,a5,64
   133fe:	c799                	beqz	a5,1340c <__sbprintf+0x70>
   13400:	00c45783          	lhu	a5,12(s0)
   13404:	0407e793          	ori	a5,a5,64
   13408:	00f41623          	sh	a5,12(s0)
   1340c:	47c12083          	lw	ra,1148(sp)
   13410:	47812403          	lw	s0,1144(sp)
   13414:	47012903          	lw	s2,1136(sp)
   13418:	8526                	mv	a0,s1
   1341a:	47412483          	lw	s1,1140(sp)
   1341e:	48010113          	addi	sp,sp,1152
   13422:	8082                	ret
   13424:	002c                	addi	a1,sp,8
   13426:	854a                	mv	a0,s2
   13428:	2c9d                	jal	1369e <_fflush_r>
   1342a:	d571                	beqz	a0,133f6 <__sbprintf+0x5a>
   1342c:	54fd                	li	s1,-1
   1342e:	b7e1                	j	133f6 <__sbprintf+0x5a>

00013430 <__sprint_r>:
   13430:	461c                	lw	a5,8(a2)
   13432:	1141                	addi	sp,sp,-16
   13434:	c422                	sw	s0,8(sp)
   13436:	c606                	sw	ra,12(sp)
   13438:	8432                	mv	s0,a2
   1343a:	eb81                	bnez	a5,1344a <__sprint_r+0x1a>
   1343c:	40b2                	lw	ra,12(sp)
   1343e:	00042223          	sw	zero,4(s0)
   13442:	4422                	lw	s0,8(sp)
   13444:	4501                	li	a0,0
   13446:	0141                	addi	sp,sp,16
   13448:	8082                	ret
   1344a:	2ce9                	jal	13724 <__sfvwrite_r>
   1344c:	40b2                	lw	ra,12(sp)
   1344e:	00042423          	sw	zero,8(s0)
   13452:	00042223          	sw	zero,4(s0)
   13456:	4422                	lw	s0,8(sp)
   13458:	0141                	addi	sp,sp,16
   1345a:	8082                	ret

0001345c <_fclose_r>:
   1345c:	1141                	addi	sp,sp,-16
   1345e:	c606                	sw	ra,12(sp)
   13460:	c04a                	sw	s2,0(sp)
   13462:	cd89                	beqz	a1,1347c <_fclose_r+0x20>
   13464:	c422                	sw	s0,8(sp)
   13466:	c226                	sw	s1,4(sp)
   13468:	842e                	mv	s0,a1
   1346a:	84aa                	mv	s1,a0
   1346c:	c119                	beqz	a0,13472 <_fclose_r+0x16>
   1346e:	595c                	lw	a5,52(a0)
   13470:	c7d1                	beqz	a5,134fc <_fclose_r+0xa0>
   13472:	00c41783          	lh	a5,12(s0)
   13476:	eb89                	bnez	a5,13488 <_fclose_r+0x2c>
   13478:	4422                	lw	s0,8(sp)
   1347a:	4492                	lw	s1,4(sp)
   1347c:	40b2                	lw	ra,12(sp)
   1347e:	4901                	li	s2,0
   13480:	854a                	mv	a0,s2
   13482:	4902                	lw	s2,0(sp)
   13484:	0141                	addi	sp,sp,16
   13486:	8082                	ret
   13488:	85a2                	mv	a1,s0
   1348a:	8526                	mv	a0,s1
   1348c:	28bd                	jal	1350a <__sflush_r>
   1348e:	545c                	lw	a5,44(s0)
   13490:	892a                	mv	s2,a0
   13492:	c791                	beqz	a5,1349e <_fclose_r+0x42>
   13494:	4c4c                	lw	a1,28(s0)
   13496:	8526                	mv	a0,s1
   13498:	9782                	jalr	a5
   1349a:	04054663          	bltz	a0,134e6 <_fclose_r+0x8a>
   1349e:	00c45783          	lhu	a5,12(s0)
   134a2:	0807f793          	andi	a5,a5,128
   134a6:	e7b1                	bnez	a5,134f2 <_fclose_r+0x96>
   134a8:	580c                	lw	a1,48(s0)
   134aa:	c991                	beqz	a1,134be <_fclose_r+0x62>
   134ac:	04040793          	addi	a5,s0,64
   134b0:	00f58563          	beq	a1,a5,134ba <_fclose_r+0x5e>
   134b4:	8526                	mv	a0,s1
   134b6:	b67fd0ef          	jal	1101c <_free_r>
   134ba:	02042823          	sw	zero,48(s0)
   134be:	406c                	lw	a1,68(s0)
   134c0:	c591                	beqz	a1,134cc <_fclose_r+0x70>
   134c2:	8526                	mv	a0,s1
   134c4:	b59fd0ef          	jal	1101c <_free_r>
   134c8:	04042223          	sw	zero,68(s0)
   134cc:	c3afd0ef          	jal	10906 <__sfp_lock_acquire>
   134d0:	00041623          	sh	zero,12(s0)
   134d4:	c34fd0ef          	jal	10908 <__sfp_lock_release>
   134d8:	40b2                	lw	ra,12(sp)
   134da:	4422                	lw	s0,8(sp)
   134dc:	4492                	lw	s1,4(sp)
   134de:	854a                	mv	a0,s2
   134e0:	4902                	lw	s2,0(sp)
   134e2:	0141                	addi	sp,sp,16
   134e4:	8082                	ret
   134e6:	00c45783          	lhu	a5,12(s0)
   134ea:	597d                	li	s2,-1
   134ec:	0807f793          	andi	a5,a5,128
   134f0:	dfc5                	beqz	a5,134a8 <_fclose_r+0x4c>
   134f2:	480c                	lw	a1,16(s0)
   134f4:	8526                	mv	a0,s1
   134f6:	b27fd0ef          	jal	1101c <_free_r>
   134fa:	b77d                	j	134a8 <_fclose_r+0x4c>
   134fc:	bf4fd0ef          	jal	108f0 <__sinit>
   13500:	bf8d                	j	13472 <_fclose_r+0x16>

00013502 <fclose>:
   13502:	85aa                	mv	a1,a0
   13504:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13508:	bf91                	j	1345c <_fclose_r>

0001350a <__sflush_r>:
   1350a:	00c59703          	lh	a4,12(a1)
   1350e:	1101                	addi	sp,sp,-32
   13510:	cc22                	sw	s0,24(sp)
   13512:	c64e                	sw	s3,12(sp)
   13514:	ce06                	sw	ra,28(sp)
   13516:	00877793          	andi	a5,a4,8
   1351a:	842e                	mv	s0,a1
   1351c:	89aa                	mv	s3,a0
   1351e:	e7e1                	bnez	a5,135e6 <__sflush_r+0xdc>
   13520:	6785                	lui	a5,0x1
   13522:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   13526:	41d4                	lw	a3,4(a1)
   13528:	8fd9                	or	a5,a5,a4
   1352a:	00f59623          	sh	a5,12(a1)
   1352e:	10d05563          	blez	a3,13638 <__sflush_r+0x12e>
   13532:	02842803          	lw	a6,40(s0)
   13536:	0a080263          	beqz	a6,135da <__sflush_r+0xd0>
   1353a:	ca26                	sw	s1,20(sp)
   1353c:	01371693          	slli	a3,a4,0x13
   13540:	0009a483          	lw	s1,0(s3)
   13544:	0009a023          	sw	zero,0(s3)
   13548:	4c4c                	lw	a1,28(s0)
   1354a:	0e06ce63          	bltz	a3,13646 <__sflush_r+0x13c>
   1354e:	4601                	li	a2,0
   13550:	4685                	li	a3,1
   13552:	854e                	mv	a0,s3
   13554:	9802                	jalr	a6
   13556:	57fd                	li	a5,-1
   13558:	862a                	mv	a2,a0
   1355a:	10f50f63          	beq	a0,a5,13678 <__sflush_r+0x16e>
   1355e:	00c41783          	lh	a5,12(s0)
   13562:	02842803          	lw	a6,40(s0)
   13566:	4c4c                	lw	a1,28(s0)
   13568:	8b91                	andi	a5,a5,4
   1356a:	c799                	beqz	a5,13578 <__sflush_r+0x6e>
   1356c:	4058                	lw	a4,4(s0)
   1356e:	581c                	lw	a5,48(s0)
   13570:	8e19                	sub	a2,a2,a4
   13572:	c399                	beqz	a5,13578 <__sflush_r+0x6e>
   13574:	5c5c                	lw	a5,60(s0)
   13576:	8e1d                	sub	a2,a2,a5
   13578:	4681                	li	a3,0
   1357a:	854e                	mv	a0,s3
   1357c:	9802                	jalr	a6
   1357e:	57fd                	li	a5,-1
   13580:	0cf51563          	bne	a0,a5,1364a <__sflush_r+0x140>
   13584:	0009a683          	lw	a3,0(s3)
   13588:	47f5                	li	a5,29
   1358a:	00c41703          	lh	a4,12(s0)
   1358e:	10d7e163          	bltu	a5,a3,13690 <__sflush_r+0x186>
   13592:	204007b7          	lui	a5,0x20400
   13596:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e45a5>
   13598:	00d7d7b3          	srl	a5,a5,a3
   1359c:	8b85                	andi	a5,a5,1
   1359e:	cbed                	beqz	a5,13690 <__sflush_r+0x186>
   135a0:	4810                	lw	a2,16(s0)
   135a2:	77fd                	lui	a5,0xfffff
   135a4:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   135a8:	8ff9                	and	a5,a5,a4
   135aa:	00f41623          	sh	a5,12(s0)
   135ae:	00042223          	sw	zero,4(s0)
   135b2:	c010                	sw	a2,0(s0)
   135b4:	01371793          	slli	a5,a4,0x13
   135b8:	0007d363          	bgez	a5,135be <__sflush_r+0xb4>
   135bc:	c6dd                	beqz	a3,1366a <__sflush_r+0x160>
   135be:	580c                	lw	a1,48(s0)
   135c0:	0099a023          	sw	s1,0(s3)
   135c4:	c9c5                	beqz	a1,13674 <__sflush_r+0x16a>
   135c6:	04040793          	addi	a5,s0,64
   135ca:	00f58563          	beq	a1,a5,135d4 <__sflush_r+0xca>
   135ce:	854e                	mv	a0,s3
   135d0:	a4dfd0ef          	jal	1101c <_free_r>
   135d4:	44d2                	lw	s1,20(sp)
   135d6:	02042823          	sw	zero,48(s0)
   135da:	4501                	li	a0,0
   135dc:	40f2                	lw	ra,28(sp)
   135de:	4462                	lw	s0,24(sp)
   135e0:	49b2                	lw	s3,12(sp)
   135e2:	6105                	addi	sp,sp,32
   135e4:	8082                	ret
   135e6:	c84a                	sw	s2,16(sp)
   135e8:	0105a903          	lw	s2,16(a1)
   135ec:	04090b63          	beqz	s2,13642 <__sflush_r+0x138>
   135f0:	ca26                	sw	s1,20(sp)
   135f2:	4184                	lw	s1,0(a1)
   135f4:	8b0d                	andi	a4,a4,3
   135f6:	0125a023          	sw	s2,0(a1)
   135fa:	412484b3          	sub	s1,s1,s2
   135fe:	4781                	li	a5,0
   13600:	e311                	bnez	a4,13604 <__sflush_r+0xfa>
   13602:	49dc                	lw	a5,20(a1)
   13604:	c41c                	sw	a5,8(s0)
   13606:	00904663          	bgtz	s1,13612 <__sflush_r+0x108>
   1360a:	a81d                	j	13640 <__sflush_r+0x136>
   1360c:	992a                	add	s2,s2,a0
   1360e:	02905963          	blez	s1,13640 <__sflush_r+0x136>
   13612:	505c                	lw	a5,36(s0)
   13614:	4c4c                	lw	a1,28(s0)
   13616:	86a6                	mv	a3,s1
   13618:	864a                	mv	a2,s2
   1361a:	854e                	mv	a0,s3
   1361c:	9782                	jalr	a5
   1361e:	8c89                	sub	s1,s1,a0
   13620:	fea046e3          	bgtz	a0,1360c <__sflush_r+0x102>
   13624:	00c41703          	lh	a4,12(s0)
   13628:	4942                	lw	s2,16(sp)
   1362a:	04076713          	ori	a4,a4,64
   1362e:	44d2                	lw	s1,20(sp)
   13630:	00e41623          	sh	a4,12(s0)
   13634:	557d                	li	a0,-1
   13636:	b75d                	j	135dc <__sflush_r+0xd2>
   13638:	5dd4                	lw	a3,60(a1)
   1363a:	eed04ce3          	bgtz	a3,13532 <__sflush_r+0x28>
   1363e:	bf71                	j	135da <__sflush_r+0xd0>
   13640:	44d2                	lw	s1,20(sp)
   13642:	4942                	lw	s2,16(sp)
   13644:	bf59                	j	135da <__sflush_r+0xd0>
   13646:	4830                	lw	a2,80(s0)
   13648:	b705                	j	13568 <__sflush_r+0x5e>
   1364a:	00c41703          	lh	a4,12(s0)
   1364e:	4814                	lw	a3,16(s0)
   13650:	77fd                	lui	a5,0xfffff
   13652:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   13656:	8ff9                	and	a5,a5,a4
   13658:	00f41623          	sh	a5,12(s0)
   1365c:	00042223          	sw	zero,4(s0)
   13660:	c014                	sw	a3,0(s0)
   13662:	01371793          	slli	a5,a4,0x13
   13666:	f407dce3          	bgez	a5,135be <__sflush_r+0xb4>
   1366a:	580c                	lw	a1,48(s0)
   1366c:	c828                	sw	a0,80(s0)
   1366e:	0099a023          	sw	s1,0(s3)
   13672:	f9b1                	bnez	a1,135c6 <__sflush_r+0xbc>
   13674:	44d2                	lw	s1,20(sp)
   13676:	b795                	j	135da <__sflush_r+0xd0>
   13678:	0009a783          	lw	a5,0(s3)
   1367c:	ee0781e3          	beqz	a5,1355e <__sflush_r+0x54>
   13680:	4775                	li	a4,29
   13682:	00e78a63          	beq	a5,a4,13696 <__sflush_r+0x18c>
   13686:	4759                	li	a4,22
   13688:	00e78763          	beq	a5,a4,13696 <__sflush_r+0x18c>
   1368c:	00c41703          	lh	a4,12(s0)
   13690:	04076713          	ori	a4,a4,64
   13694:	bf69                	j	1362e <__sflush_r+0x124>
   13696:	0099a023          	sw	s1,0(s3)
   1369a:	44d2                	lw	s1,20(sp)
   1369c:	bf3d                	j	135da <__sflush_r+0xd0>

0001369e <_fflush_r>:
   1369e:	1101                	addi	sp,sp,-32
   136a0:	cc22                	sw	s0,24(sp)
   136a2:	ce06                	sw	ra,28(sp)
   136a4:	842a                	mv	s0,a0
   136a6:	c119                	beqz	a0,136ac <_fflush_r+0xe>
   136a8:	595c                	lw	a5,52(a0)
   136aa:	cf91                	beqz	a5,136c6 <_fflush_r+0x28>
   136ac:	00c59783          	lh	a5,12(a1)
   136b0:	e791                	bnez	a5,136bc <_fflush_r+0x1e>
   136b2:	40f2                	lw	ra,28(sp)
   136b4:	4462                	lw	s0,24(sp)
   136b6:	4501                	li	a0,0
   136b8:	6105                	addi	sp,sp,32
   136ba:	8082                	ret
   136bc:	8522                	mv	a0,s0
   136be:	4462                	lw	s0,24(sp)
   136c0:	40f2                	lw	ra,28(sp)
   136c2:	6105                	addi	sp,sp,32
   136c4:	b599                	j	1350a <__sflush_r>
   136c6:	c62e                	sw	a1,12(sp)
   136c8:	a28fd0ef          	jal	108f0 <__sinit>
   136cc:	45b2                	lw	a1,12(sp)
   136ce:	bff9                	j	136ac <_fflush_r+0xe>

000136d0 <fflush>:
   136d0:	cd05                	beqz	a0,13708 <fflush+0x38>
   136d2:	85aa                	mv	a1,a0
   136d4:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   136d8:	c119                	beqz	a0,136de <fflush+0xe>
   136da:	595c                	lw	a5,52(a0)
   136dc:	c799                	beqz	a5,136ea <fflush+0x1a>
   136de:	00c59783          	lh	a5,12(a1)
   136e2:	e399                	bnez	a5,136e8 <fflush+0x18>
   136e4:	4501                	li	a0,0
   136e6:	8082                	ret
   136e8:	b50d                	j	1350a <__sflush_r>
   136ea:	1101                	addi	sp,sp,-32
   136ec:	c62e                	sw	a1,12(sp)
   136ee:	c42a                	sw	a0,8(sp)
   136f0:	ce06                	sw	ra,28(sp)
   136f2:	9fefd0ef          	jal	108f0 <__sinit>
   136f6:	45b2                	lw	a1,12(sp)
   136f8:	4522                	lw	a0,8(sp)
   136fa:	00c59783          	lh	a5,12(a1)
   136fe:	e385                	bnez	a5,1371e <fflush+0x4e>
   13700:	40f2                	lw	ra,28(sp)
   13702:	4501                	li	a0,0
   13704:	6105                	addi	sp,sp,32
   13706:	8082                	ret
   13708:	666d                	lui	a2,0x1b
   1370a:	65cd                	lui	a1,0x13
   1370c:	656d                	lui	a0,0x1b
   1370e:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   13712:	69e58593          	addi	a1,a1,1694 # 1369e <_fflush_r>
   13716:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   1371a:	a10fd06f          	j	1092a <_fwalk_sglue>
   1371e:	40f2                	lw	ra,28(sp)
   13720:	6105                	addi	sp,sp,32
   13722:	b3e5                	j	1350a <__sflush_r>

00013724 <__sfvwrite_r>:
   13724:	461c                	lw	a5,8(a2)
   13726:	1c078c63          	beqz	a5,138fe <__sfvwrite_r+0x1da>
   1372a:	00c59683          	lh	a3,12(a1)
   1372e:	7179                	addi	sp,sp,-48
   13730:	d422                	sw	s0,40(sp)
   13732:	cc52                	sw	s4,24(sp)
   13734:	c85a                	sw	s6,16(sp)
   13736:	d606                	sw	ra,44(sp)
   13738:	0086f793          	andi	a5,a3,8
   1373c:	8b32                	mv	s6,a2
   1373e:	8a2a                	mv	s4,a0
   13740:	842e                	mv	s0,a1
   13742:	c7ad                	beqz	a5,137ac <__sfvwrite_r+0x88>
   13744:	499c                	lw	a5,16(a1)
   13746:	c3bd                	beqz	a5,137ac <__sfvwrite_r+0x88>
   13748:	d226                	sw	s1,36(sp)
   1374a:	d04a                	sw	s2,32(sp)
   1374c:	ce4e                	sw	s3,28(sp)
   1374e:	ca56                	sw	s5,20(sp)
   13750:	0026f793          	andi	a5,a3,2
   13754:	000b2483          	lw	s1,0(s6)
   13758:	cbb5                	beqz	a5,137cc <__sfvwrite_r+0xa8>
   1375a:	505c                	lw	a5,36(s0)
   1375c:	4c4c                	lw	a1,28(s0)
   1375e:	80000ab7          	lui	s5,0x80000
   13762:	4981                	li	s3,0
   13764:	4901                	li	s2,0
   13766:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe41a4>
   1376a:	864e                	mv	a2,s3
   1376c:	8552                	mv	a0,s4
   1376e:	02090963          	beqz	s2,137a0 <__sfvwrite_r+0x7c>
   13772:	86ca                	mv	a3,s2
   13774:	012af363          	bgeu	s5,s2,1377a <__sfvwrite_r+0x56>
   13778:	86d6                	mv	a3,s5
   1377a:	9782                	jalr	a5
   1377c:	2ca05d63          	blez	a0,13a56 <__sfvwrite_r+0x332>
   13780:	008b2783          	lw	a5,8(s6)
   13784:	99aa                	add	s3,s3,a0
   13786:	40a90933          	sub	s2,s2,a0
   1378a:	8f89                	sub	a5,a5,a0
   1378c:	00fb2423          	sw	a5,8(s6)
   13790:	12078563          	beqz	a5,138ba <__sfvwrite_r+0x196>
   13794:	505c                	lw	a5,36(s0)
   13796:	4c4c                	lw	a1,28(s0)
   13798:	864e                	mv	a2,s3
   1379a:	8552                	mv	a0,s4
   1379c:	fc091be3          	bnez	s2,13772 <__sfvwrite_r+0x4e>
   137a0:	0004a983          	lw	s3,0(s1)
   137a4:	0044a903          	lw	s2,4(s1)
   137a8:	04a1                	addi	s1,s1,8
   137aa:	b7c1                	j	1376a <__sfvwrite_r+0x46>
   137ac:	85a2                	mv	a1,s0
   137ae:	8552                	mv	a0,s4
   137b0:	21ad                	jal	13c1a <__swsetup_r>
   137b2:	12051f63          	bnez	a0,138f0 <__sfvwrite_r+0x1cc>
   137b6:	00c41683          	lh	a3,12(s0)
   137ba:	d226                	sw	s1,36(sp)
   137bc:	d04a                	sw	s2,32(sp)
   137be:	ce4e                	sw	s3,28(sp)
   137c0:	ca56                	sw	s5,20(sp)
   137c2:	0026f793          	andi	a5,a3,2
   137c6:	000b2483          	lw	s1,0(s6)
   137ca:	fbc1                	bnez	a5,1375a <__sfvwrite_r+0x36>
   137cc:	c65e                	sw	s7,12(sp)
   137ce:	c462                	sw	s8,8(sp)
   137d0:	0016f793          	andi	a5,a3,1
   137d4:	12079763          	bnez	a5,13902 <__sfvwrite_r+0x1de>
   137d8:	401c                	lw	a5,0(s0)
   137da:	4418                	lw	a4,8(s0)
   137dc:	80000ab7          	lui	s5,0x80000
   137e0:	c266                	sw	s9,4(sp)
   137e2:	4b81                	li	s7,0
   137e4:	4981                	li	s3,0
   137e6:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   137e8:	853e                	mv	a0,a5
   137ea:	8c3a                	mv	s8,a4
   137ec:	0a098e63          	beqz	s3,138a8 <__sfvwrite_r+0x184>
   137f0:	2006f613          	andi	a2,a3,512
   137f4:	1a060563          	beqz	a2,1399e <__sfvwrite_r+0x27a>
   137f8:	8cba                	mv	s9,a4
   137fa:	20e9e663          	bltu	s3,a4,13a06 <__sfvwrite_r+0x2e2>
   137fe:	4806f713          	andi	a4,a3,1152
   13802:	c73d                	beqz	a4,13870 <__sfvwrite_r+0x14c>
   13804:	4850                	lw	a2,20(s0)
   13806:	480c                	lw	a1,16(s0)
   13808:	00161713          	slli	a4,a2,0x1
   1380c:	9732                	add	a4,a4,a2
   1380e:	40b78933          	sub	s2,a5,a1
   13812:	01f75c13          	srli	s8,a4,0x1f
   13816:	9c3a                	add	s8,s8,a4
   13818:	00190793          	addi	a5,s2,1
   1381c:	401c5c13          	srai	s8,s8,0x1
   13820:	97ce                	add	a5,a5,s3
   13822:	8662                	mv	a2,s8
   13824:	00fc7463          	bgeu	s8,a5,1382c <__sfvwrite_r+0x108>
   13828:	8c3e                	mv	s8,a5
   1382a:	863e                	mv	a2,a5
   1382c:	4006f693          	andi	a3,a3,1024
   13830:	1e068a63          	beqz	a3,13a24 <__sfvwrite_r+0x300>
   13834:	85b2                	mv	a1,a2
   13836:	8552                	mv	a0,s4
   13838:	a07fd0ef          	jal	1123e <_malloc_r>
   1383c:	8caa                	mv	s9,a0
   1383e:	20050f63          	beqz	a0,13a5c <__sfvwrite_r+0x338>
   13842:	480c                	lw	a1,16(s0)
   13844:	864a                	mv	a2,s2
   13846:	2dfd                	jal	13f44 <memcpy>
   13848:	00c45783          	lhu	a5,12(s0)
   1384c:	b7f7f793          	andi	a5,a5,-1153
   13850:	0807e793          	ori	a5,a5,128
   13854:	00f41623          	sh	a5,12(s0)
   13858:	012c8533          	add	a0,s9,s2
   1385c:	412c07b3          	sub	a5,s8,s2
   13860:	01942823          	sw	s9,16(s0)
   13864:	01842a23          	sw	s8,20(s0)
   13868:	c008                	sw	a0,0(s0)
   1386a:	8c4e                	mv	s8,s3
   1386c:	c41c                	sw	a5,8(s0)
   1386e:	8cce                	mv	s9,s3
   13870:	8666                	mv	a2,s9
   13872:	85de                	mv	a1,s7
   13874:	2511                	jal	13e78 <memmove>
   13876:	4418                	lw	a4,8(s0)
   13878:	401c                	lw	a5,0(s0)
   1387a:	894e                	mv	s2,s3
   1387c:	41870733          	sub	a4,a4,s8
   13880:	97e6                	add	a5,a5,s9
   13882:	c418                	sw	a4,8(s0)
   13884:	c01c                	sw	a5,0(s0)
   13886:	4981                	li	s3,0
   13888:	008b2783          	lw	a5,8(s6)
   1388c:	9bca                	add	s7,s7,s2
   1388e:	412787b3          	sub	a5,a5,s2
   13892:	00fb2423          	sw	a5,8(s6)
   13896:	cf99                	beqz	a5,138b4 <__sfvwrite_r+0x190>
   13898:	401c                	lw	a5,0(s0)
   1389a:	4418                	lw	a4,8(s0)
   1389c:	00c41683          	lh	a3,12(s0)
   138a0:	853e                	mv	a0,a5
   138a2:	8c3a                	mv	s8,a4
   138a4:	f40996e3          	bnez	s3,137f0 <__sfvwrite_r+0xcc>
   138a8:	0004ab83          	lw	s7,0(s1)
   138ac:	0044a983          	lw	s3,4(s1)
   138b0:	04a1                	addi	s1,s1,8
   138b2:	bf1d                	j	137e8 <__sfvwrite_r+0xc4>
   138b4:	4bb2                	lw	s7,12(sp)
   138b6:	4c22                	lw	s8,8(sp)
   138b8:	4c92                	lw	s9,4(sp)
   138ba:	50b2                	lw	ra,44(sp)
   138bc:	5422                	lw	s0,40(sp)
   138be:	5492                	lw	s1,36(sp)
   138c0:	5902                	lw	s2,32(sp)
   138c2:	49f2                	lw	s3,28(sp)
   138c4:	4ad2                	lw	s5,20(sp)
   138c6:	4a62                	lw	s4,24(sp)
   138c8:	4b42                	lw	s6,16(sp)
   138ca:	4501                	li	a0,0
   138cc:	6145                	addi	sp,sp,48
   138ce:	8082                	ret
   138d0:	85a2                	mv	a1,s0
   138d2:	8552                	mv	a0,s4
   138d4:	33e9                	jal	1369e <_fflush_r>
   138d6:	c93d                	beqz	a0,1394c <__sfvwrite_r+0x228>
   138d8:	00c41783          	lh	a5,12(s0)
   138dc:	4bb2                	lw	s7,12(sp)
   138de:	4c22                	lw	s8,8(sp)
   138e0:	5492                	lw	s1,36(sp)
   138e2:	5902                	lw	s2,32(sp)
   138e4:	49f2                	lw	s3,28(sp)
   138e6:	4ad2                	lw	s5,20(sp)
   138e8:	0407e793          	ori	a5,a5,64
   138ec:	00f41623          	sh	a5,12(s0)
   138f0:	50b2                	lw	ra,44(sp)
   138f2:	5422                	lw	s0,40(sp)
   138f4:	4a62                	lw	s4,24(sp)
   138f6:	4b42                	lw	s6,16(sp)
   138f8:	557d                	li	a0,-1
   138fa:	6145                	addi	sp,sp,48
   138fc:	8082                	ret
   138fe:	4501                	li	a0,0
   13900:	8082                	ret
   13902:	4a81                	li	s5,0
   13904:	4501                	li	a0,0
   13906:	4c01                	li	s8,0
   13908:	4981                	li	s3,0
   1390a:	04098e63          	beqz	s3,13966 <__sfvwrite_r+0x242>
   1390e:	c525                	beqz	a0,13976 <__sfvwrite_r+0x252>
   13910:	87d6                	mv	a5,s5
   13912:	8bce                	mv	s7,s3
   13914:	0137f363          	bgeu	a5,s3,1391a <__sfvwrite_r+0x1f6>
   13918:	8bbe                	mv	s7,a5
   1391a:	4008                	lw	a0,0(s0)
   1391c:	481c                	lw	a5,16(s0)
   1391e:	00842903          	lw	s2,8(s0)
   13922:	4854                	lw	a3,20(s0)
   13924:	00a7f563          	bgeu	a5,a0,1392e <__sfvwrite_r+0x20a>
   13928:	9936                	add	s2,s2,a3
   1392a:	05794f63          	blt	s2,s7,13988 <__sfvwrite_r+0x264>
   1392e:	0cdbcf63          	blt	s7,a3,13a0c <__sfvwrite_r+0x2e8>
   13932:	505c                	lw	a5,36(s0)
   13934:	4c4c                	lw	a1,28(s0)
   13936:	8662                	mv	a2,s8
   13938:	8552                	mv	a0,s4
   1393a:	9782                	jalr	a5
   1393c:	892a                	mv	s2,a0
   1393e:	f8a05de3          	blez	a0,138d8 <__sfvwrite_r+0x1b4>
   13942:	412a8ab3          	sub	s5,s5,s2
   13946:	4505                	li	a0,1
   13948:	f80a84e3          	beqz	s5,138d0 <__sfvwrite_r+0x1ac>
   1394c:	008b2783          	lw	a5,8(s6)
   13950:	9c4a                	add	s8,s8,s2
   13952:	412989b3          	sub	s3,s3,s2
   13956:	412787b3          	sub	a5,a5,s2
   1395a:	00fb2423          	sw	a5,8(s6)
   1395e:	f7d5                	bnez	a5,1390a <__sfvwrite_r+0x1e6>
   13960:	4bb2                	lw	s7,12(sp)
   13962:	4c22                	lw	s8,8(sp)
   13964:	bf99                	j	138ba <__sfvwrite_r+0x196>
   13966:	0044a983          	lw	s3,4(s1)
   1396a:	87a6                	mv	a5,s1
   1396c:	04a1                	addi	s1,s1,8
   1396e:	fe098ce3          	beqz	s3,13966 <__sfvwrite_r+0x242>
   13972:	0007ac03          	lw	s8,0(a5)
   13976:	864e                	mv	a2,s3
   13978:	45a9                	li	a1,10
   1397a:	8562                	mv	a0,s8
   1397c:	2ea5                	jal	13cf4 <memchr>
   1397e:	c961                	beqz	a0,13a4e <__sfvwrite_r+0x32a>
   13980:	0505                	addi	a0,a0,1
   13982:	41850ab3          	sub	s5,a0,s8
   13986:	b769                	j	13910 <__sfvwrite_r+0x1ec>
   13988:	85e2                	mv	a1,s8
   1398a:	864a                	mv	a2,s2
   1398c:	21f5                	jal	13e78 <memmove>
   1398e:	401c                	lw	a5,0(s0)
   13990:	85a2                	mv	a1,s0
   13992:	8552                	mv	a0,s4
   13994:	97ca                	add	a5,a5,s2
   13996:	c01c                	sw	a5,0(s0)
   13998:	3319                	jal	1369e <_fflush_r>
   1399a:	d545                	beqz	a0,13942 <__sfvwrite_r+0x21e>
   1399c:	bf35                	j	138d8 <__sfvwrite_r+0x1b4>
   1399e:	4814                	lw	a3,16(s0)
   139a0:	02f6e863          	bltu	a3,a5,139d0 <__sfvwrite_r+0x2ac>
   139a4:	4850                	lw	a2,20(s0)
   139a6:	02c9e563          	bltu	s3,a2,139d0 <__sfvwrite_r+0x2ac>
   139aa:	87ce                	mv	a5,s3
   139ac:	013af363          	bgeu	s5,s3,139b2 <__sfvwrite_r+0x28e>
   139b0:	87d6                	mv	a5,s5
   139b2:	02c7e6b3          	rem	a3,a5,a2
   139b6:	5058                	lw	a4,36(s0)
   139b8:	4c4c                	lw	a1,28(s0)
   139ba:	865e                	mv	a2,s7
   139bc:	8552                	mv	a0,s4
   139be:	40d786b3          	sub	a3,a5,a3
   139c2:	9702                	jalr	a4
   139c4:	892a                	mv	s2,a0
   139c6:	02a05a63          	blez	a0,139fa <__sfvwrite_r+0x2d6>
   139ca:	412989b3          	sub	s3,s3,s2
   139ce:	bd6d                	j	13888 <__sfvwrite_r+0x164>
   139d0:	893a                	mv	s2,a4
   139d2:	00e9f363          	bgeu	s3,a4,139d8 <__sfvwrite_r+0x2b4>
   139d6:	894e                	mv	s2,s3
   139d8:	853e                	mv	a0,a5
   139da:	864a                	mv	a2,s2
   139dc:	85de                	mv	a1,s7
   139de:	2969                	jal	13e78 <memmove>
   139e0:	4418                	lw	a4,8(s0)
   139e2:	401c                	lw	a5,0(s0)
   139e4:	41270733          	sub	a4,a4,s2
   139e8:	97ca                	add	a5,a5,s2
   139ea:	c418                	sw	a4,8(s0)
   139ec:	c01c                	sw	a5,0(s0)
   139ee:	ff71                	bnez	a4,139ca <__sfvwrite_r+0x2a6>
   139f0:	85a2                	mv	a1,s0
   139f2:	8552                	mv	a0,s4
   139f4:	cabff0ef          	jal	1369e <_fflush_r>
   139f8:	d969                	beqz	a0,139ca <__sfvwrite_r+0x2a6>
   139fa:	00c41783          	lh	a5,12(s0)
   139fe:	4bb2                	lw	s7,12(sp)
   13a00:	4c22                	lw	s8,8(sp)
   13a02:	4c92                	lw	s9,4(sp)
   13a04:	bdf1                	j	138e0 <__sfvwrite_r+0x1bc>
   13a06:	8c4e                	mv	s8,s3
   13a08:	8cce                	mv	s9,s3
   13a0a:	b59d                	j	13870 <__sfvwrite_r+0x14c>
   13a0c:	865e                	mv	a2,s7
   13a0e:	85e2                	mv	a1,s8
   13a10:	21a5                	jal	13e78 <memmove>
   13a12:	4418                	lw	a4,8(s0)
   13a14:	401c                	lw	a5,0(s0)
   13a16:	895e                	mv	s2,s7
   13a18:	41770733          	sub	a4,a4,s7
   13a1c:	97de                	add	a5,a5,s7
   13a1e:	c418                	sw	a4,8(s0)
   13a20:	c01c                	sw	a5,0(s0)
   13a22:	b705                	j	13942 <__sfvwrite_r+0x21e>
   13a24:	8552                	mv	a0,s4
   13a26:	117020ef          	jal	1633c <_realloc_r>
   13a2a:	8caa                	mv	s9,a0
   13a2c:	e20516e3          	bnez	a0,13858 <__sfvwrite_r+0x134>
   13a30:	480c                	lw	a1,16(s0)
   13a32:	8552                	mv	a0,s4
   13a34:	de8fd0ef          	jal	1101c <_free_r>
   13a38:	00c41783          	lh	a5,12(s0)
   13a3c:	4731                	li	a4,12
   13a3e:	4bb2                	lw	s7,12(sp)
   13a40:	4c22                	lw	s8,8(sp)
   13a42:	4c92                	lw	s9,4(sp)
   13a44:	00ea2023          	sw	a4,0(s4)
   13a48:	f7f7f793          	andi	a5,a5,-129
   13a4c:	bd51                	j	138e0 <__sfvwrite_r+0x1bc>
   13a4e:	00198793          	addi	a5,s3,1
   13a52:	8abe                	mv	s5,a5
   13a54:	bd7d                	j	13912 <__sfvwrite_r+0x1ee>
   13a56:	00c41783          	lh	a5,12(s0)
   13a5a:	b559                	j	138e0 <__sfvwrite_r+0x1bc>
   13a5c:	4731                	li	a4,12
   13a5e:	00c41783          	lh	a5,12(s0)
   13a62:	4bb2                	lw	s7,12(sp)
   13a64:	4c22                	lw	s8,8(sp)
   13a66:	4c92                	lw	s9,4(sp)
   13a68:	00ea2023          	sw	a4,0(s4)
   13a6c:	bd95                	j	138e0 <__sfvwrite_r+0x1bc>

00013a6e <_putc_r>:
   13a6e:	1101                	addi	sp,sp,-32
   13a70:	cc22                	sw	s0,24(sp)
   13a72:	ce06                	sw	ra,28(sp)
   13a74:	842a                	mv	s0,a0
   13a76:	c119                	beqz	a0,13a7c <_putc_r+0xe>
   13a78:	595c                	lw	a5,52(a0)
   13a7a:	cf9d                	beqz	a5,13ab8 <_putc_r+0x4a>
   13a7c:	461c                	lw	a5,8(a2)
   13a7e:	17fd                	addi	a5,a5,-1
   13a80:	c61c                	sw	a5,8(a2)
   13a82:	0007da63          	bgez	a5,13a96 <_putc_r+0x28>
   13a86:	4e18                	lw	a4,24(a2)
   13a88:	02e7c363          	blt	a5,a4,13aae <_putc_r+0x40>
   13a8c:	0ff5f793          	zext.b	a5,a1
   13a90:	4729                	li	a4,10
   13a92:	00e78e63          	beq	a5,a4,13aae <_putc_r+0x40>
   13a96:	421c                	lw	a5,0(a2)
   13a98:	0ff5f513          	zext.b	a0,a1
   13a9c:	00178713          	addi	a4,a5,1
   13aa0:	c218                	sw	a4,0(a2)
   13aa2:	00b78023          	sb	a1,0(a5)
   13aa6:	40f2                	lw	ra,28(sp)
   13aa8:	4462                	lw	s0,24(sp)
   13aaa:	6105                	addi	sp,sp,32
   13aac:	8082                	ret
   13aae:	8522                	mv	a0,s0
   13ab0:	4462                	lw	s0,24(sp)
   13ab2:	40f2                	lw	ra,28(sp)
   13ab4:	6105                	addi	sp,sp,32
   13ab6:	a8a5                	j	13b2e <__swbuf_r>
   13ab8:	c632                	sw	a2,12(sp)
   13aba:	c42e                	sw	a1,8(sp)
   13abc:	e35fc0ef          	jal	108f0 <__sinit>
   13ac0:	4632                	lw	a2,12(sp)
   13ac2:	45a2                	lw	a1,8(sp)
   13ac4:	bf65                	j	13a7c <_putc_r+0xe>

00013ac6 <putc>:
   13ac6:	1101                	addi	sp,sp,-32
   13ac8:	ca4a                	sw	s2,20(sp)
   13aca:	f141a903          	lw	s2,-236(gp) # 1b724 <_impure_ptr>
   13ace:	cc26                	sw	s1,24(sp)
   13ad0:	ce06                	sw	ra,28(sp)
   13ad2:	84aa                	mv	s1,a0
   13ad4:	00090563          	beqz	s2,13ade <putc+0x18>
   13ad8:	03492783          	lw	a5,52(s2)
   13adc:	c3b9                	beqz	a5,13b22 <putc+0x5c>
   13ade:	459c                	lw	a5,8(a1)
   13ae0:	17fd                	addi	a5,a5,-1
   13ae2:	c59c                	sw	a5,8(a1)
   13ae4:	0007da63          	bgez	a5,13af8 <putc+0x32>
   13ae8:	4d98                	lw	a4,24(a1)
   13aea:	02e7c463          	blt	a5,a4,13b12 <putc+0x4c>
   13aee:	0ff4f793          	zext.b	a5,s1
   13af2:	4729                	li	a4,10
   13af4:	00e78f63          	beq	a5,a4,13b12 <putc+0x4c>
   13af8:	419c                	lw	a5,0(a1)
   13afa:	0ff4f513          	zext.b	a0,s1
   13afe:	00178713          	addi	a4,a5,1
   13b02:	c198                	sw	a4,0(a1)
   13b04:	00978023          	sb	s1,0(a5)
   13b08:	40f2                	lw	ra,28(sp)
   13b0a:	44e2                	lw	s1,24(sp)
   13b0c:	4952                	lw	s2,20(sp)
   13b0e:	6105                	addi	sp,sp,32
   13b10:	8082                	ret
   13b12:	40f2                	lw	ra,28(sp)
   13b14:	862e                	mv	a2,a1
   13b16:	854a                	mv	a0,s2
   13b18:	85a6                	mv	a1,s1
   13b1a:	4952                	lw	s2,20(sp)
   13b1c:	44e2                	lw	s1,24(sp)
   13b1e:	6105                	addi	sp,sp,32
   13b20:	a039                	j	13b2e <__swbuf_r>
   13b22:	854a                	mv	a0,s2
   13b24:	c62e                	sw	a1,12(sp)
   13b26:	dcbfc0ef          	jal	108f0 <__sinit>
   13b2a:	45b2                	lw	a1,12(sp)
   13b2c:	bf4d                	j	13ade <putc+0x18>

00013b2e <__swbuf_r>:
   13b2e:	1101                	addi	sp,sp,-32
   13b30:	cc22                	sw	s0,24(sp)
   13b32:	ca26                	sw	s1,20(sp)
   13b34:	c84a                	sw	s2,16(sp)
   13b36:	ce06                	sw	ra,28(sp)
   13b38:	892a                	mv	s2,a0
   13b3a:	84ae                	mv	s1,a1
   13b3c:	8432                	mv	s0,a2
   13b3e:	c119                	beqz	a0,13b44 <__swbuf_r+0x16>
   13b40:	595c                	lw	a5,52(a0)
   13b42:	c3f9                	beqz	a5,13c08 <__swbuf_r+0xda>
   13b44:	4c18                	lw	a4,24(s0)
   13b46:	00c41783          	lh	a5,12(s0)
   13b4a:	c418                	sw	a4,8(s0)
   13b4c:	0087f713          	andi	a4,a5,8
   13b50:	c325                	beqz	a4,13bb0 <__swbuf_r+0x82>
   13b52:	4818                	lw	a4,16(s0)
   13b54:	cf31                	beqz	a4,13bb0 <__swbuf_r+0x82>
   13b56:	c64e                	sw	s3,12(sp)
   13b58:	01279693          	slli	a3,a5,0x12
   13b5c:	0ff4f993          	zext.b	s3,s1
   13b60:	5078                	lw	a4,100(s0)
   13b62:	0ff4f493          	zext.b	s1,s1
   13b66:	0606d563          	bgez	a3,13bd0 <__swbuf_r+0xa2>
   13b6a:	01271793          	slli	a5,a4,0x12
   13b6e:	0807c263          	bltz	a5,13bf2 <__swbuf_r+0xc4>
   13b72:	4018                	lw	a4,0(s0)
   13b74:	481c                	lw	a5,16(s0)
   13b76:	4854                	lw	a3,20(s0)
   13b78:	40f707b3          	sub	a5,a4,a5
   13b7c:	06d7de63          	bge	a5,a3,13bf8 <__swbuf_r+0xca>
   13b80:	0785                	addi	a5,a5,1
   13b82:	4414                	lw	a3,8(s0)
   13b84:	00170613          	addi	a2,a4,1
   13b88:	c010                	sw	a2,0(s0)
   13b8a:	16fd                	addi	a3,a3,-1
   13b8c:	c414                	sw	a3,8(s0)
   13b8e:	01370023          	sb	s3,0(a4)
   13b92:	4858                	lw	a4,20(s0)
   13b94:	04f70a63          	beq	a4,a5,13be8 <__swbuf_r+0xba>
   13b98:	00c45783          	lhu	a5,12(s0)
   13b9c:	8b85                	andi	a5,a5,1
   13b9e:	e3b1                	bnez	a5,13be2 <__swbuf_r+0xb4>
   13ba0:	49b2                	lw	s3,12(sp)
   13ba2:	40f2                	lw	ra,28(sp)
   13ba4:	4462                	lw	s0,24(sp)
   13ba6:	4942                	lw	s2,16(sp)
   13ba8:	8526                	mv	a0,s1
   13baa:	44d2                	lw	s1,20(sp)
   13bac:	6105                	addi	sp,sp,32
   13bae:	8082                	ret
   13bb0:	85a2                	mv	a1,s0
   13bb2:	854a                	mv	a0,s2
   13bb4:	209d                	jal	13c1a <__swsetup_r>
   13bb6:	ed1d                	bnez	a0,13bf4 <__swbuf_r+0xc6>
   13bb8:	00c41783          	lh	a5,12(s0)
   13bbc:	c64e                	sw	s3,12(sp)
   13bbe:	5078                	lw	a4,100(s0)
   13bc0:	01279693          	slli	a3,a5,0x12
   13bc4:	0ff4f993          	zext.b	s3,s1
   13bc8:	0ff4f493          	zext.b	s1,s1
   13bcc:	f806cfe3          	bltz	a3,13b6a <__swbuf_r+0x3c>
   13bd0:	76f9                	lui	a3,0xffffe
   13bd2:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   13bd4:	6609                	lui	a2,0x2
   13bd6:	8fd1                	or	a5,a5,a2
   13bd8:	8f75                	and	a4,a4,a3
   13bda:	00f41623          	sh	a5,12(s0)
   13bde:	d078                	sw	a4,100(s0)
   13be0:	b769                	j	13b6a <__swbuf_r+0x3c>
   13be2:	47a9                	li	a5,10
   13be4:	faf49ee3          	bne	s1,a5,13ba0 <__swbuf_r+0x72>
   13be8:	85a2                	mv	a1,s0
   13bea:	854a                	mv	a0,s2
   13bec:	ab3ff0ef          	jal	1369e <_fflush_r>
   13bf0:	d945                	beqz	a0,13ba0 <__swbuf_r+0x72>
   13bf2:	49b2                	lw	s3,12(sp)
   13bf4:	54fd                	li	s1,-1
   13bf6:	b775                	j	13ba2 <__swbuf_r+0x74>
   13bf8:	85a2                	mv	a1,s0
   13bfa:	854a                	mv	a0,s2
   13bfc:	aa3ff0ef          	jal	1369e <_fflush_r>
   13c00:	f96d                	bnez	a0,13bf2 <__swbuf_r+0xc4>
   13c02:	4018                	lw	a4,0(s0)
   13c04:	4785                	li	a5,1
   13c06:	bfb5                	j	13b82 <__swbuf_r+0x54>
   13c08:	ce9fc0ef          	jal	108f0 <__sinit>
   13c0c:	bf25                	j	13b44 <__swbuf_r+0x16>

00013c0e <__swbuf>:
   13c0e:	87aa                	mv	a5,a0
   13c10:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13c14:	862e                	mv	a2,a1
   13c16:	85be                	mv	a1,a5
   13c18:	bf19                	j	13b2e <__swbuf_r>

00013c1a <__swsetup_r>:
   13c1a:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   13c1e:	1141                	addi	sp,sp,-16
   13c20:	c422                	sw	s0,8(sp)
   13c22:	c226                	sw	s1,4(sp)
   13c24:	c606                	sw	ra,12(sp)
   13c26:	84aa                	mv	s1,a0
   13c28:	842e                	mv	s0,a1
   13c2a:	c399                	beqz	a5,13c30 <__swsetup_r+0x16>
   13c2c:	5bd8                	lw	a4,52(a5)
   13c2e:	c75d                	beqz	a4,13cdc <__swsetup_r+0xc2>
   13c30:	00c41783          	lh	a5,12(s0)
   13c34:	0087f713          	andi	a4,a5,8
   13c38:	c721                	beqz	a4,13c80 <__swsetup_r+0x66>
   13c3a:	4818                	lw	a4,16(s0)
   13c3c:	cf31                	beqz	a4,13c98 <__swsetup_r+0x7e>
   13c3e:	0017f693          	andi	a3,a5,1
   13c42:	ce91                	beqz	a3,13c5e <__swsetup_r+0x44>
   13c44:	4854                	lw	a3,20(s0)
   13c46:	00042423          	sw	zero,8(s0)
   13c4a:	4501                	li	a0,0
   13c4c:	40d006b3          	neg	a3,a3
   13c50:	cc14                	sw	a3,24(s0)
   13c52:	cf11                	beqz	a4,13c6e <__swsetup_r+0x54>
   13c54:	40b2                	lw	ra,12(sp)
   13c56:	4422                	lw	s0,8(sp)
   13c58:	4492                	lw	s1,4(sp)
   13c5a:	0141                	addi	sp,sp,16
   13c5c:	8082                	ret
   13c5e:	0027f693          	andi	a3,a5,2
   13c62:	4601                	li	a2,0
   13c64:	e291                	bnez	a3,13c68 <__swsetup_r+0x4e>
   13c66:	4850                	lw	a2,20(s0)
   13c68:	c410                	sw	a2,8(s0)
   13c6a:	4501                	li	a0,0
   13c6c:	f765                	bnez	a4,13c54 <__swsetup_r+0x3a>
   13c6e:	0807f713          	andi	a4,a5,128
   13c72:	d36d                	beqz	a4,13c54 <__swsetup_r+0x3a>
   13c74:	0407e793          	ori	a5,a5,64
   13c78:	00f41623          	sh	a5,12(s0)
   13c7c:	557d                	li	a0,-1
   13c7e:	bfd9                	j	13c54 <__swsetup_r+0x3a>
   13c80:	0107f713          	andi	a4,a5,16
   13c84:	c325                	beqz	a4,13ce4 <__swsetup_r+0xca>
   13c86:	0047f713          	andi	a4,a5,4
   13c8a:	e70d                	bnez	a4,13cb4 <__swsetup_r+0x9a>
   13c8c:	4818                	lw	a4,16(s0)
   13c8e:	0087e793          	ori	a5,a5,8
   13c92:	00f41623          	sh	a5,12(s0)
   13c96:	f745                	bnez	a4,13c3e <__swsetup_r+0x24>
   13c98:	2807f693          	andi	a3,a5,640
   13c9c:	20000613          	li	a2,512
   13ca0:	f8c68fe3          	beq	a3,a2,13c3e <__swsetup_r+0x24>
   13ca4:	85a2                	mv	a1,s0
   13ca6:	8526                	mv	a0,s1
   13ca8:	26f020ef          	jal	16716 <__smakebuf_r>
   13cac:	00c41783          	lh	a5,12(s0)
   13cb0:	4818                	lw	a4,16(s0)
   13cb2:	b771                	j	13c3e <__swsetup_r+0x24>
   13cb4:	580c                	lw	a1,48(s0)
   13cb6:	cd81                	beqz	a1,13cce <__swsetup_r+0xb4>
   13cb8:	04040713          	addi	a4,s0,64
   13cbc:	00e58763          	beq	a1,a4,13cca <__swsetup_r+0xb0>
   13cc0:	8526                	mv	a0,s1
   13cc2:	b5afd0ef          	jal	1101c <_free_r>
   13cc6:	00c41783          	lh	a5,12(s0)
   13cca:	02042823          	sw	zero,48(s0)
   13cce:	4818                	lw	a4,16(s0)
   13cd0:	fdb7f793          	andi	a5,a5,-37
   13cd4:	00042223          	sw	zero,4(s0)
   13cd8:	c018                	sw	a4,0(s0)
   13cda:	bf55                	j	13c8e <__swsetup_r+0x74>
   13cdc:	853e                	mv	a0,a5
   13cde:	c13fc0ef          	jal	108f0 <__sinit>
   13ce2:	b7b9                	j	13c30 <__swsetup_r+0x16>
   13ce4:	4725                	li	a4,9
   13ce6:	c098                	sw	a4,0(s1)
   13ce8:	0407e793          	ori	a5,a5,64
   13cec:	00f41623          	sh	a5,12(s0)
   13cf0:	557d                	li	a0,-1
   13cf2:	b78d                	j	13c54 <__swsetup_r+0x3a>

00013cf4 <memchr>:
   13cf4:	00357793          	andi	a5,a0,3
   13cf8:	0ff5f693          	zext.b	a3,a1
   13cfc:	c395                	beqz	a5,13d20 <memchr+0x2c>
   13cfe:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   13d02:	c605                	beqz	a2,13d2a <memchr+0x36>
   13d04:	567d                	li	a2,-1
   13d06:	a801                	j	13d16 <memchr+0x22>
   13d08:	0505                	addi	a0,a0,1
   13d0a:	00357713          	andi	a4,a0,3
   13d0e:	cb11                	beqz	a4,13d22 <memchr+0x2e>
   13d10:	17fd                	addi	a5,a5,-1
   13d12:	00c78c63          	beq	a5,a2,13d2a <memchr+0x36>
   13d16:	00054703          	lbu	a4,0(a0)
   13d1a:	fed717e3          	bne	a4,a3,13d08 <memchr+0x14>
   13d1e:	8082                	ret
   13d20:	87b2                	mv	a5,a2
   13d22:	470d                	li	a4,3
   13d24:	00f76563          	bltu	a4,a5,13d2e <memchr+0x3a>
   13d28:	e3b9                	bnez	a5,13d6e <memchr+0x7a>
   13d2a:	4501                	li	a0,0
   13d2c:	8082                	ret
   13d2e:	0ff5f593          	zext.b	a1,a1
   13d32:	00859713          	slli	a4,a1,0x8
   13d36:	95ba                	add	a1,a1,a4
   13d38:	01059713          	slli	a4,a1,0x10
   13d3c:	feff08b7          	lui	a7,0xfeff0
   13d40:	80808837          	lui	a6,0x80808
   13d44:	95ba                	add	a1,a1,a4
   13d46:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13d4a:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807ec624>
   13d4e:	430d                	li	t1,3
   13d50:	a029                	j	13d5a <memchr+0x66>
   13d52:	17f1                	addi	a5,a5,-4
   13d54:	0511                	addi	a0,a0,4
   13d56:	fcf379e3          	bgeu	t1,a5,13d28 <memchr+0x34>
   13d5a:	4118                	lw	a4,0(a0)
   13d5c:	8f2d                	xor	a4,a4,a1
   13d5e:	01170633          	add	a2,a4,a7
   13d62:	fff74713          	not	a4,a4
   13d66:	8f71                	and	a4,a4,a2
   13d68:	01077733          	and	a4,a4,a6
   13d6c:	d37d                	beqz	a4,13d52 <memchr+0x5e>
   13d6e:	97aa                	add	a5,a5,a0
   13d70:	a021                	j	13d78 <memchr+0x84>
   13d72:	0505                	addi	a0,a0,1
   13d74:	faa78be3          	beq	a5,a0,13d2a <memchr+0x36>
   13d78:	00054703          	lbu	a4,0(a0)
   13d7c:	fed71be3          	bne	a4,a3,13d72 <memchr+0x7e>
   13d80:	8082                	ret

00013d82 <strncpy>:
   13d82:	00a5e7b3          	or	a5,a1,a0
   13d86:	8b8d                	andi	a5,a5,3
   13d88:	e781                	bnez	a5,13d90 <strncpy+0xe>
   13d8a:	478d                	li	a5,3
   13d8c:	02c7eb63          	bltu	a5,a2,13dc2 <strncpy+0x40>
   13d90:	872a                	mv	a4,a0
   13d92:	a811                	j	13da6 <strncpy+0x24>
   13d94:	fff5c683          	lbu	a3,-1(a1)
   13d98:	fff60813          	addi	a6,a2,-1
   13d9c:	fed78fa3          	sb	a3,-1(a5)
   13da0:	ca81                	beqz	a3,13db0 <strncpy+0x2e>
   13da2:	873e                	mv	a4,a5
   13da4:	8642                	mv	a2,a6
   13da6:	0585                	addi	a1,a1,1
   13da8:	00170793          	addi	a5,a4,1
   13dac:	f665                	bnez	a2,13d94 <strncpy+0x12>
   13dae:	8082                	ret
   13db0:	9732                	add	a4,a4,a2
   13db2:	04080463          	beqz	a6,13dfa <strncpy+0x78>
   13db6:	0785                	addi	a5,a5,1
   13db8:	fe078fa3          	sb	zero,-1(a5)
   13dbc:	fee79de3          	bne	a5,a4,13db6 <strncpy+0x34>
   13dc0:	8082                	ret
   13dc2:	feff0337          	lui	t1,0xfeff0
   13dc6:	808088b7          	lui	a7,0x80808
   13dca:	872a                	mv	a4,a0
   13dcc:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13dd0:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807ec624>
   13dd4:	4e0d                	li	t3,3
   13dd6:	a039                	j	13de4 <strncpy+0x62>
   13dd8:	c314                	sw	a3,0(a4)
   13dda:	1671                	addi	a2,a2,-4
   13ddc:	0711                	addi	a4,a4,4
   13dde:	0591                	addi	a1,a1,4
   13de0:	fcce73e3          	bgeu	t3,a2,13da6 <strncpy+0x24>
   13de4:	4194                	lw	a3,0(a1)
   13de6:	006687b3          	add	a5,a3,t1
   13dea:	fff6c813          	not	a6,a3
   13dee:	0107f7b3          	and	a5,a5,a6
   13df2:	0117f7b3          	and	a5,a5,a7
   13df6:	d3ed                	beqz	a5,13dd8 <strncpy+0x56>
   13df8:	b77d                	j	13da6 <strncpy+0x24>
   13dfa:	8082                	ret

00013dfc <__localeconv_l>:
   13dfc:	0f050513          	addi	a0,a0,240
   13e00:	8082                	ret

00013e02 <_localeconv_r>:
   13e02:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13e06:	8082                	ret

00013e08 <localeconv>:
   13e08:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13e0c:	8082                	ret

00013e0e <_sbrk_r>:
   13e0e:	1141                	addi	sp,sp,-16
   13e10:	c422                	sw	s0,8(sp)
   13e12:	c226                	sw	s1,4(sp)
   13e14:	842a                	mv	s0,a0
   13e16:	852e                	mv	a0,a1
   13e18:	c606                	sw	ra,12(sp)
   13e1a:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   13e1e:	7fb030ef          	jal	17e18 <_sbrk>
   13e22:	57fd                	li	a5,-1
   13e24:	00f50763          	beq	a0,a5,13e32 <_sbrk_r+0x24>
   13e28:	40b2                	lw	ra,12(sp)
   13e2a:	4422                	lw	s0,8(sp)
   13e2c:	4492                	lw	s1,4(sp)
   13e2e:	0141                	addi	sp,sp,16
   13e30:	8082                	ret
   13e32:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   13e36:	dbed                	beqz	a5,13e28 <_sbrk_r+0x1a>
   13e38:	40b2                	lw	ra,12(sp)
   13e3a:	c01c                	sw	a5,0(s0)
   13e3c:	4422                	lw	s0,8(sp)
   13e3e:	4492                	lw	s1,4(sp)
   13e40:	0141                	addi	sp,sp,16
   13e42:	8082                	ret

00013e44 <__libc_fini_array>:
   13e44:	1141                	addi	sp,sp,-16
   13e46:	c422                	sw	s0,8(sp)
   13e48:	67ed                	lui	a5,0x1b
   13e4a:	646d                	lui	s0,0x1b
   13e4c:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   13e50:	01040413          	addi	s0,s0,16 # 1b010 <__sglue>
   13e54:	8c1d                	sub	s0,s0,a5
   13e56:	c226                	sw	s1,4(sp)
   13e58:	c606                	sw	ra,12(sp)
   13e5a:	40245493          	srai	s1,s0,0x2
   13e5e:	c881                	beqz	s1,13e6e <__libc_fini_array+0x2a>
   13e60:	1471                	addi	s0,s0,-4
   13e62:	943e                	add	s0,s0,a5
   13e64:	401c                	lw	a5,0(s0)
   13e66:	14fd                	addi	s1,s1,-1
   13e68:	1471                	addi	s0,s0,-4
   13e6a:	9782                	jalr	a5
   13e6c:	fce5                	bnez	s1,13e64 <__libc_fini_array+0x20>
   13e6e:	40b2                	lw	ra,12(sp)
   13e70:	4422                	lw	s0,8(sp)
   13e72:	4492                	lw	s1,4(sp)
   13e74:	0141                	addi	sp,sp,16
   13e76:	8082                	ret

00013e78 <memmove>:
   13e78:	02a5f263          	bgeu	a1,a0,13e9c <memmove+0x24>
   13e7c:	00c58733          	add	a4,a1,a2
   13e80:	00e57e63          	bgeu	a0,a4,13e9c <memmove+0x24>
   13e84:	00c507b3          	add	a5,a0,a2
   13e88:	ca1d                	beqz	a2,13ebe <memmove+0x46>
   13e8a:	fff74683          	lbu	a3,-1(a4)
   13e8e:	17fd                	addi	a5,a5,-1
   13e90:	177d                	addi	a4,a4,-1
   13e92:	00d78023          	sb	a3,0(a5)
   13e96:	fef51ae3          	bne	a0,a5,13e8a <memmove+0x12>
   13e9a:	8082                	ret
   13e9c:	47bd                	li	a5,15
   13e9e:	02c7e163          	bltu	a5,a2,13ec0 <memmove+0x48>
   13ea2:	87aa                	mv	a5,a0
   13ea4:	fff60693          	addi	a3,a2,-1
   13ea8:	ca59                	beqz	a2,13f3e <memmove+0xc6>
   13eaa:	0685                	addi	a3,a3,1
   13eac:	96be                	add	a3,a3,a5
   13eae:	0005c703          	lbu	a4,0(a1)
   13eb2:	0785                	addi	a5,a5,1
   13eb4:	0585                	addi	a1,a1,1
   13eb6:	fee78fa3          	sb	a4,-1(a5)
   13eba:	fed79ae3          	bne	a5,a3,13eae <memmove+0x36>
   13ebe:	8082                	ret
   13ec0:	00b567b3          	or	a5,a0,a1
   13ec4:	8b8d                	andi	a5,a5,3
   13ec6:	eba5                	bnez	a5,13f36 <memmove+0xbe>
   13ec8:	ff060893          	addi	a7,a2,-16
   13ecc:	ff08f893          	andi	a7,a7,-16
   13ed0:	08c1                	addi	a7,a7,16
   13ed2:	011506b3          	add	a3,a0,a7
   13ed6:	872e                	mv	a4,a1
   13ed8:	87aa                	mv	a5,a0
   13eda:	00072803          	lw	a6,0(a4)
   13ede:	0741                	addi	a4,a4,16
   13ee0:	07c1                	addi	a5,a5,16
   13ee2:	ff07a823          	sw	a6,-16(a5)
   13ee6:	ff472803          	lw	a6,-12(a4)
   13eea:	ff07aa23          	sw	a6,-12(a5)
   13eee:	ff872803          	lw	a6,-8(a4)
   13ef2:	ff07ac23          	sw	a6,-8(a5)
   13ef6:	ffc72803          	lw	a6,-4(a4)
   13efa:	ff07ae23          	sw	a6,-4(a5)
   13efe:	fcd79ee3          	bne	a5,a3,13eda <memmove+0x62>
   13f02:	00c67813          	andi	a6,a2,12
   13f06:	95c6                	add	a1,a1,a7
   13f08:	00f67713          	andi	a4,a2,15
   13f0c:	02080a63          	beqz	a6,13f40 <memmove+0xc8>
   13f10:	ffc70813          	addi	a6,a4,-4
   13f14:	ffc87813          	andi	a6,a6,-4
   13f18:	0811                	addi	a6,a6,4
   13f1a:	010687b3          	add	a5,a3,a6
   13f1e:	872e                	mv	a4,a1
   13f20:	00072883          	lw	a7,0(a4)
   13f24:	0691                	addi	a3,a3,4
   13f26:	0711                	addi	a4,a4,4
   13f28:	ff16ae23          	sw	a7,-4(a3)
   13f2c:	fef69ae3          	bne	a3,a5,13f20 <memmove+0xa8>
   13f30:	8a0d                	andi	a2,a2,3
   13f32:	95c2                	add	a1,a1,a6
   13f34:	bf85                	j	13ea4 <memmove+0x2c>
   13f36:	fff60693          	addi	a3,a2,-1
   13f3a:	87aa                	mv	a5,a0
   13f3c:	b7bd                	j	13eaa <memmove+0x32>
   13f3e:	8082                	ret
   13f40:	863a                	mv	a2,a4
   13f42:	b78d                	j	13ea4 <memmove+0x2c>

00013f44 <memcpy>:
   13f44:	00a5c7b3          	xor	a5,a1,a0
   13f48:	8b8d                	andi	a5,a5,3
   13f4a:	00c508b3          	add	a7,a0,a2
   13f4e:	e7b1                	bnez	a5,13f9a <memcpy+0x56>
   13f50:	478d                	li	a5,3
   13f52:	04c7f463          	bgeu	a5,a2,13f9a <memcpy+0x56>
   13f56:	00357793          	andi	a5,a0,3
   13f5a:	872a                	mv	a4,a0
   13f5c:	ebb9                	bnez	a5,13fb2 <memcpy+0x6e>
   13f5e:	ffc8f613          	andi	a2,a7,-4
   13f62:	40e606b3          	sub	a3,a2,a4
   13f66:	02000793          	li	a5,32
   13f6a:	06d7c863          	blt	a5,a3,13fda <memcpy+0x96>
   13f6e:	86ae                	mv	a3,a1
   13f70:	87ba                	mv	a5,a4
   13f72:	02c77163          	bgeu	a4,a2,13f94 <memcpy+0x50>
   13f76:	0006a803          	lw	a6,0(a3)
   13f7a:	0791                	addi	a5,a5,4
   13f7c:	0691                	addi	a3,a3,4
   13f7e:	ff07ae23          	sw	a6,-4(a5)
   13f82:	fec7eae3          	bltu	a5,a2,13f76 <memcpy+0x32>
   13f86:	fff60793          	addi	a5,a2,-1
   13f8a:	8f99                	sub	a5,a5,a4
   13f8c:	9bf1                	andi	a5,a5,-4
   13f8e:	0791                	addi	a5,a5,4
   13f90:	973e                	add	a4,a4,a5
   13f92:	95be                	add	a1,a1,a5
   13f94:	01176663          	bltu	a4,a7,13fa0 <memcpy+0x5c>
   13f98:	8082                	ret
   13f9a:	872a                	mv	a4,a0
   13f9c:	03157e63          	bgeu	a0,a7,13fd8 <memcpy+0x94>
   13fa0:	0005c783          	lbu	a5,0(a1)
   13fa4:	0705                	addi	a4,a4,1
   13fa6:	0585                	addi	a1,a1,1
   13fa8:	fef70fa3          	sb	a5,-1(a4)
   13fac:	fee89ae3          	bne	a7,a4,13fa0 <memcpy+0x5c>
   13fb0:	8082                	ret
   13fb2:	0005c683          	lbu	a3,0(a1)
   13fb6:	0705                	addi	a4,a4,1
   13fb8:	00377793          	andi	a5,a4,3
   13fbc:	fed70fa3          	sb	a3,-1(a4)
   13fc0:	0585                	addi	a1,a1,1
   13fc2:	dfd1                	beqz	a5,13f5e <memcpy+0x1a>
   13fc4:	0005c683          	lbu	a3,0(a1)
   13fc8:	0705                	addi	a4,a4,1
   13fca:	00377793          	andi	a5,a4,3
   13fce:	fed70fa3          	sb	a3,-1(a4)
   13fd2:	0585                	addi	a1,a1,1
   13fd4:	fff9                	bnez	a5,13fb2 <memcpy+0x6e>
   13fd6:	b761                	j	13f5e <memcpy+0x1a>
   13fd8:	8082                	ret
   13fda:	1141                	addi	sp,sp,-16
   13fdc:	c622                	sw	s0,12(sp)
   13fde:	02000413          	li	s0,32
   13fe2:	0005a383          	lw	t2,0(a1)
   13fe6:	0045a283          	lw	t0,4(a1)
   13fea:	0085af83          	lw	t6,8(a1)
   13fee:	00c5af03          	lw	t5,12(a1)
   13ff2:	0105ae83          	lw	t4,16(a1)
   13ff6:	0145ae03          	lw	t3,20(a1)
   13ffa:	0185a303          	lw	t1,24(a1)
   13ffe:	01c5a803          	lw	a6,28(a1)
   14002:	5194                	lw	a3,32(a1)
   14004:	02470713          	addi	a4,a4,36
   14008:	40e607b3          	sub	a5,a2,a4
   1400c:	fc772e23          	sw	t2,-36(a4)
   14010:	fe572023          	sw	t0,-32(a4)
   14014:	fff72223          	sw	t6,-28(a4)
   14018:	ffe72423          	sw	t5,-24(a4)
   1401c:	ffd72623          	sw	t4,-20(a4)
   14020:	ffc72823          	sw	t3,-16(a4)
   14024:	fe672a23          	sw	t1,-12(a4)
   14028:	ff072c23          	sw	a6,-8(a4)
   1402c:	fed72e23          	sw	a3,-4(a4)
   14030:	02458593          	addi	a1,a1,36
   14034:	faf447e3          	blt	s0,a5,13fe2 <memcpy+0x9e>
   14038:	86ae                	mv	a3,a1
   1403a:	87ba                	mv	a5,a4
   1403c:	02c77163          	bgeu	a4,a2,1405e <memcpy+0x11a>
   14040:	0006a803          	lw	a6,0(a3)
   14044:	0791                	addi	a5,a5,4
   14046:	0691                	addi	a3,a3,4
   14048:	ff07ae23          	sw	a6,-4(a5)
   1404c:	fec7eae3          	bltu	a5,a2,14040 <memcpy+0xfc>
   14050:	fff60793          	addi	a5,a2,-1
   14054:	8f99                	sub	a5,a5,a4
   14056:	9bf1                	andi	a5,a5,-4
   14058:	0791                	addi	a5,a5,4
   1405a:	973e                	add	a4,a4,a5
   1405c:	95be                	add	a1,a1,a5
   1405e:	01176563          	bltu	a4,a7,14068 <memcpy+0x124>
   14062:	4432                	lw	s0,12(sp)
   14064:	0141                	addi	sp,sp,16
   14066:	8082                	ret
   14068:	0005c783          	lbu	a5,0(a1)
   1406c:	0705                	addi	a4,a4,1
   1406e:	0585                	addi	a1,a1,1
   14070:	fef70fa3          	sb	a5,-1(a4)
   14074:	fee887e3          	beq	a7,a4,14062 <memcpy+0x11e>
   14078:	0005c783          	lbu	a5,0(a1)
   1407c:	0705                	addi	a4,a4,1
   1407e:	0585                	addi	a1,a1,1
   14080:	fef70fa3          	sb	a5,-1(a4)
   14084:	fee892e3          	bne	a7,a4,14068 <memcpy+0x124>
   14088:	bfe9                	j	14062 <memcpy+0x11e>

0001408a <strlen>:
   1408a:	00357793          	andi	a5,a0,3
   1408e:	872a                	mv	a4,a0
   14090:	ef9d                	bnez	a5,140ce <strlen+0x44>
   14092:	7f7f86b7          	lui	a3,0x7f7f8
   14096:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   1409a:	55fd                	li	a1,-1
   1409c:	4310                	lw	a2,0(a4)
   1409e:	0711                	addi	a4,a4,4
   140a0:	00d677b3          	and	a5,a2,a3
   140a4:	97b6                	add	a5,a5,a3
   140a6:	8fd1                	or	a5,a5,a2
   140a8:	8fd5                	or	a5,a5,a3
   140aa:	feb789e3          	beq	a5,a1,1409c <strlen+0x12>
   140ae:	ffc74683          	lbu	a3,-4(a4)
   140b2:	40a707b3          	sub	a5,a4,a0
   140b6:	ca8d                	beqz	a3,140e8 <strlen+0x5e>
   140b8:	ffd74683          	lbu	a3,-3(a4)
   140bc:	c29d                	beqz	a3,140e2 <strlen+0x58>
   140be:	ffe74503          	lbu	a0,-2(a4)
   140c2:	00a03533          	snez	a0,a0
   140c6:	953e                	add	a0,a0,a5
   140c8:	1579                	addi	a0,a0,-2
   140ca:	8082                	ret
   140cc:	d2f9                	beqz	a3,14092 <strlen+0x8>
   140ce:	00074783          	lbu	a5,0(a4)
   140d2:	0705                	addi	a4,a4,1
   140d4:	00377693          	andi	a3,a4,3
   140d8:	fbf5                	bnez	a5,140cc <strlen+0x42>
   140da:	8f09                	sub	a4,a4,a0
   140dc:	fff70513          	addi	a0,a4,-1
   140e0:	8082                	ret
   140e2:	ffd78513          	addi	a0,a5,-3
   140e6:	8082                	ret
   140e8:	ffc78513          	addi	a0,a5,-4
   140ec:	8082                	ret

000140ee <frexpl>:
   140ee:	7159                	addi	sp,sp,-112
   140f0:	d0ca                	sw	s2,96(sp)
   140f2:	00c5a903          	lw	s2,12(a1)
   140f6:	ccd2                	sw	s4,88(sp)
   140f8:	cad6                	sw	s5,84(sp)
   140fa:	c8da                	sw	s6,80(sp)
   140fc:	0045aa83          	lw	s5,4(a1)
   14100:	0005ab03          	lw	s6,0(a1)
   14104:	0085aa03          	lw	s4,8(a1)
   14108:	cece                	sw	s3,92(sp)
   1410a:	69a1                	lui	s3,0x8
   1410c:	d4a2                	sw	s0,104(sp)
   1410e:	d2a6                	sw	s1,100(sp)
   14110:	d686                	sw	ra,108(sp)
   14112:	01095493          	srli	s1,s2,0x10
   14116:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   14118:	d85a                	sw	s6,48(sp)
   1411a:	da56                	sw	s5,52(sp)
   1411c:	dc52                	sw	s4,56(sp)
   1411e:	de4a                	sw	s2,60(sp)
   14120:	0134f4b3          	and	s1,s1,s3
   14124:	00062023          	sw	zero,0(a2)
   14128:	842a                	mv	s0,a0
   1412a:	05348763          	beq	s1,s3,14178 <frexpl+0x8a>
   1412e:	080c                	addi	a1,sp,16
   14130:	1008                	addi	a0,sp,32
   14132:	c6de                	sw	s7,76(sp)
   14134:	d05a                	sw	s6,32(sp)
   14136:	8bb2                	mv	s7,a2
   14138:	d256                	sw	s5,36(sp)
   1413a:	d452                	sw	s4,40(sp)
   1413c:	d64a                	sw	s2,44(sp)
   1413e:	c802                	sw	zero,16(sp)
   14140:	ca02                	sw	zero,20(sp)
   14142:	cc02                	sw	zero,24(sp)
   14144:	ce02                	sw	zero,28(sp)
   14146:	5d5030ef          	jal	17f1a <__eqtf2>
   1414a:	c941                	beqz	a0,141da <frexpl+0xec>
   1414c:	4681                	li	a3,0
   1414e:	c8a1                	beqz	s1,1419e <frexpl+0xb0>
   14150:	7771                	lui	a4,0xffffc
   14152:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffe05a6>
   14154:	5972                	lw	s2,60(sp)
   14156:	94ba                	add	s1,s1,a4
   14158:	800107b7          	lui	a5,0x80010
   1415c:	94b6                	add	s1,s1,a3
   1415e:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff45a3>
   14160:	009ba023          	sw	s1,0(s7)
   14164:	5b42                	lw	s6,48(sp)
   14166:	5ad2                	lw	s5,52(sp)
   14168:	5a62                	lw	s4,56(sp)
   1416a:	4bb6                	lw	s7,76(sp)
   1416c:	00f97933          	and	s2,s2,a5
   14170:	3ffe07b7          	lui	a5,0x3ffe0
   14174:	00f96933          	or	s2,s2,a5
   14178:	01642023          	sw	s6,0(s0)
   1417c:	01542223          	sw	s5,4(s0)
   14180:	01442423          	sw	s4,8(s0)
   14184:	01242623          	sw	s2,12(s0)
   14188:	50b6                	lw	ra,108(sp)
   1418a:	8522                	mv	a0,s0
   1418c:	5426                	lw	s0,104(sp)
   1418e:	5496                	lw	s1,100(sp)
   14190:	5906                	lw	s2,96(sp)
   14192:	49f6                	lw	s3,92(sp)
   14194:	4a66                	lw	s4,88(sp)
   14196:	4ad6                	lw	s5,84(sp)
   14198:	4b46                	lw	s6,80(sp)
   1419a:	6165                	addi	sp,sp,112
   1419c:	8082                	ret
   1419e:	407107b7          	lui	a5,0x40710
   141a2:	860a                	mv	a2,sp
   141a4:	080c                	addi	a1,sp,16
   141a6:	1008                	addi	a0,sp,32
   141a8:	c63e                	sw	a5,12(sp)
   141aa:	c85a                	sw	s6,16(sp)
   141ac:	ca56                	sw	s5,20(sp)
   141ae:	cc52                	sw	s4,24(sp)
   141b0:	ce4a                	sw	s2,28(sp)
   141b2:	c002                	sw	zero,0(sp)
   141b4:	c202                	sw	zero,4(sp)
   141b6:	c402                	sw	zero,8(sp)
   141b8:	026040ef          	jal	181de <__multf3>
   141bc:	5702                	lw	a4,32(sp)
   141be:	57b2                	lw	a5,44(sp)
   141c0:	f8e00693          	li	a3,-114
   141c4:	d83a                	sw	a4,48(sp)
   141c6:	5712                	lw	a4,36(sp)
   141c8:	0107d493          	srli	s1,a5,0x10
   141cc:	de3e                	sw	a5,60(sp)
   141ce:	da3a                	sw	a4,52(sp)
   141d0:	5722                	lw	a4,40(sp)
   141d2:	0134f4b3          	and	s1,s1,s3
   141d6:	dc3a                	sw	a4,56(sp)
   141d8:	bfa5                	j	14150 <frexpl+0x62>
   141da:	4bb6                	lw	s7,76(sp)
   141dc:	bf71                	j	14178 <frexpl+0x8a>

000141de <__register_exitproc>:
   141de:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   141e2:	c3a1                	beqz	a5,14222 <__register_exitproc+0x44>
   141e4:	43d8                	lw	a4,4(a5)
   141e6:	487d                	li	a6,31
   141e8:	04e84f63          	blt	a6,a4,14246 <__register_exitproc+0x68>
   141ec:	00271813          	slli	a6,a4,0x2
   141f0:	c11d                	beqz	a0,14216 <__register_exitproc+0x38>
   141f2:	01078333          	add	t1,a5,a6
   141f6:	08c32423          	sw	a2,136(t1)
   141fa:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f472c>
   141fe:	4605                	li	a2,1
   14200:	00e61633          	sll	a2,a2,a4
   14204:	00c8e8b3          	or	a7,a7,a2
   14208:	1917a423          	sw	a7,392(a5)
   1420c:	10d32423          	sw	a3,264(t1)
   14210:	4689                	li	a3,2
   14212:	00d50f63          	beq	a0,a3,14230 <__register_exitproc+0x52>
   14216:	0705                	addi	a4,a4,1
   14218:	c3d8                	sw	a4,4(a5)
   1421a:	97c2                	add	a5,a5,a6
   1421c:	c78c                	sw	a1,8(a5)
   1421e:	4501                	li	a0,0
   14220:	8082                	ret
   14222:	0bc18813          	addi	a6,gp,188 # 1b8cc <__atexit0>
   14226:	f301a423          	sw	a6,-216(gp) # 1b738 <__atexit>
   1422a:	0bc18793          	addi	a5,gp,188 # 1b8cc <__atexit0>
   1422e:	bf5d                	j	141e4 <__register_exitproc+0x6>
   14230:	18c7a683          	lw	a3,396(a5)
   14234:	0705                	addi	a4,a4,1
   14236:	c3d8                	sw	a4,4(a5)
   14238:	8ed1                	or	a3,a3,a2
   1423a:	18d7a623          	sw	a3,396(a5)
   1423e:	97c2                	add	a5,a5,a6
   14240:	c78c                	sw	a1,8(a5)
   14242:	4501                	li	a0,0
   14244:	8082                	ret
   14246:	557d                	li	a0,-1
   14248:	8082                	ret

0001424a <_ldtoa_r>:
   1424a:	68e9                	lui	a7,0x1a
   1424c:	79888893          	addi	a7,a7,1944 # 1a798 <blanks.1+0x10>
   14250:	0008af83          	lw	t6,0(a7)
   14254:	0048af03          	lw	t5,4(a7)
   14258:	0088ae83          	lw	t4,8(a7)
   1425c:	00c8ae03          	lw	t3,12(a7)
   14260:	0108a303          	lw	t1,16(a7)
   14264:	03852883          	lw	a7,56(a0)
   14268:	7171                	addi	sp,sp,-176
   1426a:	d14a                	sw	s2,160(sp)
   1426c:	cf4e                	sw	s3,156(sp)
   1426e:	cd52                	sw	s4,152(sp)
   14270:	c95a                	sw	s6,144(sp)
   14272:	c75e                	sw	s7,140(sp)
   14274:	c562                	sw	s8,136(sp)
   14276:	c366                	sw	s9,132(sp)
   14278:	c16a                	sw	s10,128(sp)
   1427a:	d706                	sw	ra,172(sp)
   1427c:	d522                	sw	s0,168(sp)
   1427e:	d326                	sw	s1,164(sp)
   14280:	cb56                	sw	s5,148(sp)
   14282:	deee                	sw	s11,124(sp)
   14284:	cefe                	sw	t6,92(sp)
   14286:	d0fa                	sw	t5,96(sp)
   14288:	d2f6                	sw	t4,100(sp)
   1428a:	d4f2                	sw	t3,104(sp)
   1428c:	d69a                	sw	t1,108(sp)
   1428e:	cc32                	sw	a2,24(sp)
   14290:	ce36                	sw	a3,28(sp)
   14292:	0005aa03          	lw	s4,0(a1)
   14296:	0045a983          	lw	s3,4(a1)
   1429a:	0085a903          	lw	s2,8(a1)
   1429e:	00c5ac03          	lw	s8,12(a1)
   142a2:	8b2a                	mv	s6,a0
   142a4:	8bba                	mv	s7,a4
   142a6:	8cbe                	mv	s9,a5
   142a8:	8d42                	mv	s10,a6
   142aa:	00088763          	beqz	a7,142b8 <_ldtoa_r+0x6e>
   142ae:	85c6                	mv	a1,a7
   142b0:	246010ef          	jal	154f6 <__freedtoa>
   142b4:	020b2c23          	sw	zero,56(s6)
   142b8:	5626                	lw	a2,104(sp)
   142ba:	01fc5693          	srli	a3,s8,0x1f
   142be:	001c1a93          	slli	s5,s8,0x1
   142c2:	40165713          	srai	a4,a2,0x1
   142c6:	74f1                	lui	s1,0xffffc
   142c8:	001c1413          	slli	s0,s8,0x1
   142cc:	8f75                	and	a4,a4,a3
   142ce:	011ada93          	srli	s5,s5,0x11
   142d2:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffe0535>
   142d6:	010c1d93          	slli	s11,s8,0x10
   142da:	00dca023          	sw	a3,0(s9)
   142de:	8005                	srli	s0,s0,0x1
   142e0:	8f31                	xor	a4,a4,a2
   142e2:	010ddd93          	srli	s11,s11,0x10
   142e6:	009a87b3          	add	a5,s5,s1
   142ea:	100c                	addi	a1,sp,32
   142ec:	1808                	addi	a0,sp,48
   142ee:	d852                	sw	s4,48(sp)
   142f0:	da4e                	sw	s3,52(sp)
   142f2:	dc4a                	sw	s2,56(sp)
   142f4:	de22                	sw	s0,60(sp)
   142f6:	d052                	sw	s4,32(sp)
   142f8:	d24e                	sw	s3,36(sp)
   142fa:	d44a                	sw	s2,40(sp)
   142fc:	d622                	sw	s0,44(sp)
   142fe:	d4ba                	sw	a4,104(sp)
   14300:	ca3e                	sw	a5,20(sp)
   14302:	c6d2                	sw	s4,76(sp)
   14304:	c8ce                	sw	s3,80(sp)
   14306:	caca                	sw	s2,84(sp)
   14308:	ccee                	sw	s11,88(sp)
   1430a:	453050ef          	jal	19f5c <__unordtf2>
   1430e:	e979                	bnez	a0,143e4 <_ldtoa_r+0x19a>
   14310:	7fff0cb7          	lui	s9,0x7fff0
   14314:	54fd                	li	s1,-1
   14316:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   14318:	100c                	addi	a1,sp,32
   1431a:	1808                	addi	a0,sp,48
   1431c:	d852                	sw	s4,48(sp)
   1431e:	da4e                	sw	s3,52(sp)
   14320:	dc4a                	sw	s2,56(sp)
   14322:	de22                	sw	s0,60(sp)
   14324:	d026                	sw	s1,32(sp)
   14326:	d226                	sw	s1,36(sp)
   14328:	d426                	sw	s1,40(sp)
   1432a:	d666                	sw	s9,44(sp)
   1432c:	431050ef          	jal	19f5c <__unordtf2>
   14330:	ed21                	bnez	a0,14388 <_ldtoa_r+0x13e>
   14332:	100c                	addi	a1,sp,32
   14334:	1808                	addi	a0,sp,48
   14336:	5bd030ef          	jal	180f2 <__letf2>
   1433a:	04a05763          	blez	a0,14388 <_ldtoa_r+0x13e>
   1433e:	478d                	li	a5,3
   14340:	c4be                	sw	a5,72(sp)
   14342:	47e2                	lw	a5,24(sp)
   14344:	4872                	lw	a6,28(sp)
   14346:	4652                	lw	a2,20(sp)
   14348:	00b8                	addi	a4,sp,72
   1434a:	c06a                	sw	s10,0(sp)
   1434c:	88de                	mv	a7,s7
   1434e:	00f4                	addi	a3,sp,76
   14350:	08ec                	addi	a1,sp,92
   14352:	855a                	mv	a0,s6
   14354:	2235                	jal	14480 <__gdtoa>
   14356:	000ba703          	lw	a4,0(s7)
   1435a:	77e1                	lui	a5,0xffff8
   1435c:	00f71763          	bne	a4,a5,1436a <_ldtoa_r+0x120>
   14360:	800007b7          	lui	a5,0x80000
   14364:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   14366:	00fba023          	sw	a5,0(s7)
   1436a:	50ba                	lw	ra,172(sp)
   1436c:	542a                	lw	s0,168(sp)
   1436e:	549a                	lw	s1,164(sp)
   14370:	590a                	lw	s2,160(sp)
   14372:	49fa                	lw	s3,156(sp)
   14374:	4a6a                	lw	s4,152(sp)
   14376:	4ada                	lw	s5,148(sp)
   14378:	4b4a                	lw	s6,144(sp)
   1437a:	4bba                	lw	s7,140(sp)
   1437c:	4c2a                	lw	s8,136(sp)
   1437e:	4c9a                	lw	s9,132(sp)
   14380:	4d0a                	lw	s10,128(sp)
   14382:	5df6                	lw	s11,124(sp)
   14384:	614d                	addi	sp,sp,176
   14386:	8082                	ret
   14388:	67c1                	lui	a5,0x10
   1438a:	100c                	addi	a1,sp,32
   1438c:	1808                	addi	a0,sp,48
   1438e:	d852                	sw	s4,48(sp)
   14390:	da4e                	sw	s3,52(sp)
   14392:	dc4a                	sw	s2,56(sp)
   14394:	de22                	sw	s0,60(sp)
   14396:	d002                	sw	zero,32(sp)
   14398:	d202                	sw	zero,36(sp)
   1439a:	d402                	sw	zero,40(sp)
   1439c:	d63e                	sw	a5,44(sp)
   1439e:	469030ef          	jal	18006 <__getf2>
   143a2:	00054963          	bltz	a0,143b4 <_ldtoa_r+0x16a>
   143a6:	67c1                	lui	a5,0x10
   143a8:	00fdedb3          	or	s11,s11,a5
   143ac:	4785                	li	a5,1
   143ae:	c4be                	sw	a5,72(sp)
   143b0:	ccee                	sw	s11,88(sp)
   143b2:	bf41                	j	14342 <_ldtoa_r+0xf8>
   143b4:	100c                	addi	a1,sp,32
   143b6:	1808                	addi	a0,sp,48
   143b8:	d852                	sw	s4,48(sp)
   143ba:	da4e                	sw	s3,52(sp)
   143bc:	dc4a                	sw	s2,56(sp)
   143be:	de62                	sw	s8,60(sp)
   143c0:	d002                	sw	zero,32(sp)
   143c2:	d202                	sw	zero,36(sp)
   143c4:	d402                	sw	zero,40(sp)
   143c6:	d602                	sw	zero,44(sp)
   143c8:	353030ef          	jal	17f1a <__eqtf2>
   143cc:	e119                	bnez	a0,143d2 <_ldtoa_r+0x188>
   143ce:	c482                	sw	zero,72(sp)
   143d0:	bf8d                	j	14342 <_ldtoa_r+0xf8>
   143d2:	74f1                	lui	s1,0xffffc
   143d4:	4789                	li	a5,2
   143d6:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffe0536>
   143da:	c4be                	sw	a5,72(sp)
   143dc:	009a87b3          	add	a5,s5,s1
   143e0:	ca3e                	sw	a5,20(sp)
   143e2:	b785                	j	14342 <_ldtoa_r+0xf8>
   143e4:	4791                	li	a5,4
   143e6:	c4be                	sw	a5,72(sp)
   143e8:	bfa9                	j	14342 <_ldtoa_r+0xf8>

000143ea <_ldcheck>:
   143ea:	7139                	addi	sp,sp,-64
   143ec:	da26                	sw	s1,52(sp)
   143ee:	4544                	lw	s1,12(a0)
   143f0:	d64e                	sw	s3,44(sp)
   143f2:	d452                	sw	s4,40(sp)
   143f4:	00852983          	lw	s3,8(a0)
   143f8:	00452a03          	lw	s4,4(a0)
   143fc:	d256                	sw	s5,36(sp)
   143fe:	00052a83          	lw	s5,0(a0)
   14402:	0486                	slli	s1,s1,0x1
   14404:	8085                	srli	s1,s1,0x1
   14406:	858a                	mv	a1,sp
   14408:	0808                	addi	a0,sp,16
   1440a:	de06                	sw	ra,60(sp)
   1440c:	c856                	sw	s5,16(sp)
   1440e:	ca52                	sw	s4,20(sp)
   14410:	cc4e                	sw	s3,24(sp)
   14412:	ce26                	sw	s1,28(sp)
   14414:	c056                	sw	s5,0(sp)
   14416:	c252                	sw	s4,4(sp)
   14418:	c44e                	sw	s3,8(sp)
   1441a:	c626                	sw	s1,12(sp)
   1441c:	341050ef          	jal	19f5c <__unordtf2>
   14420:	e921                	bnez	a0,14470 <_ldcheck+0x86>
   14422:	d05a                	sw	s6,32(sp)
   14424:	7fff0b37          	lui	s6,0x7fff0
   14428:	d84a                	sw	s2,48(sp)
   1442a:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   1442c:	597d                	li	s2,-1
   1442e:	858a                	mv	a1,sp
   14430:	0808                	addi	a0,sp,16
   14432:	dc22                	sw	s0,56(sp)
   14434:	c04a                	sw	s2,0(sp)
   14436:	c24a                	sw	s2,4(sp)
   14438:	c44a                	sw	s2,8(sp)
   1443a:	c65a                	sw	s6,12(sp)
   1443c:	4405                	li	s0,1
   1443e:	31f050ef          	jal	19f5c <__unordtf2>
   14442:	c105                	beqz	a0,14462 <_ldcheck+0x78>
   14444:	50f2                	lw	ra,60(sp)
   14446:	00144513          	xori	a0,s0,1
   1444a:	5462                	lw	s0,56(sp)
   1444c:	0ff57513          	zext.b	a0,a0
   14450:	5942                	lw	s2,48(sp)
   14452:	5b02                	lw	s6,32(sp)
   14454:	54d2                	lw	s1,52(sp)
   14456:	59b2                	lw	s3,44(sp)
   14458:	5a22                	lw	s4,40(sp)
   1445a:	5a92                	lw	s5,36(sp)
   1445c:	0506                	slli	a0,a0,0x1
   1445e:	6121                	addi	sp,sp,64
   14460:	8082                	ret
   14462:	858a                	mv	a1,sp
   14464:	0808                	addi	a0,sp,16
   14466:	48d030ef          	jal	180f2 <__letf2>
   1446a:	00152413          	slti	s0,a0,1
   1446e:	bfd9                	j	14444 <_ldcheck+0x5a>
   14470:	50f2                	lw	ra,60(sp)
   14472:	54d2                	lw	s1,52(sp)
   14474:	59b2                	lw	s3,44(sp)
   14476:	5a22                	lw	s4,40(sp)
   14478:	5a92                	lw	s5,36(sp)
   1447a:	4505                	li	a0,1
   1447c:	6121                	addi	sp,sp,64
   1447e:	8082                	ret

00014480 <__gdtoa>:
   14480:	7171                	addi	sp,sp,-176
   14482:	cb56                	sw	s5,148(sp)
   14484:	00072a83          	lw	s5,0(a4)
   14488:	d326                	sw	s1,164(sp)
   1448a:	c75e                	sw	s7,140(sp)
   1448c:	fcfafe13          	andi	t3,s5,-49
   14490:	d706                	sw	ra,172(sp)
   14492:	01c72023          	sw	t3,0(a4)
   14496:	8bba                	mv	s7,a4
   14498:	574a                	lw	a4,176(sp)
   1449a:	00fafe13          	andi	t3,s5,15
   1449e:	4e8d                	li	t4,3
   144a0:	c63a                	sw	a4,12(sp)
   144a2:	c832                	sw	a2,16(sp)
   144a4:	d442                	sw	a6,40(sp)
   144a6:	84c6                	mv	s1,a7
   144a8:	4fde0263          	beq	t3,t4,1498c <__gdtoa+0x50c>
   144ac:	c95a                	sw	s6,144(sp)
   144ae:	00cafb13          	andi	s6,s5,12
   144b2:	460b1b63          	bnez	s6,14928 <__gdtoa+0x4a8>
   144b6:	d522                	sw	s0,168(sp)
   144b8:	842a                	mv	s0,a0
   144ba:	4a0e0563          	beqz	t3,14964 <__gdtoa+0x4e4>
   144be:	c16a                	sw	s10,128(sp)
   144c0:	0005ad03          	lw	s10,0(a1)
   144c4:	d14a                	sw	s2,160(sp)
   144c6:	cf4e                	sw	s3,156(sp)
   144c8:	cd52                	sw	s4,152(sp)
   144ca:	c366                	sw	s9,132(sp)
   144cc:	02000613          	li	a2,32
   144d0:	8a2e                	mv	s4,a1
   144d2:	893e                	mv	s2,a5
   144d4:	89b6                	mv	s3,a3
   144d6:	4581                	li	a1,0
   144d8:	02000793          	li	a5,32
   144dc:	01a65663          	bge	a2,s10,144e8 <__gdtoa+0x68>
   144e0:	0786                	slli	a5,a5,0x1
   144e2:	0585                	addi	a1,a1,1
   144e4:	ffa7cee3          	blt	a5,s10,144e0 <__gdtoa+0x60>
   144e8:	8522                	mv	a0,s0
   144ea:	24e010ef          	jal	15738 <_Balloc>
   144ee:	8caa                	mv	s9,a0
   144f0:	68050163          	beqz	a0,14b72 <__gdtoa+0x6f2>
   144f4:	fffd0893          	addi	a7,s10,-1
   144f8:	4058d893          	srai	a7,a7,0x5
   144fc:	00289513          	slli	a0,a7,0x2
   14500:	c562                	sw	s8,136(sp)
   14502:	deee                	sw	s11,124(sp)
   14504:	954e                	add	a0,a0,s3
   14506:	014c8613          	addi	a2,s9,20
   1450a:	87ce                	mv	a5,s3
   1450c:	4398                	lw	a4,0(a5)
   1450e:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   14510:	0611                	addi	a2,a2,4
   14512:	fee62e23          	sw	a4,-4(a2)
   14516:	fef57be3          	bgeu	a0,a5,1450c <__gdtoa+0x8c>
   1451a:	0505                	addi	a0,a0,1
   1451c:	00198793          	addi	a5,s3,1
   14520:	4611                	li	a2,4
   14522:	00f56563          	bltu	a0,a5,1452c <__gdtoa+0xac>
   14526:	088a                	slli	a7,a7,0x2
   14528:	00488613          	addi	a2,a7,4
   1452c:	40265d93          	srai	s11,a2,0x2
   14530:	9666                	add	a2,a2,s9
   14532:	a021                	j	1453a <__gdtoa+0xba>
   14534:	1671                	addi	a2,a2,-4
   14536:	480d8f63          	beqz	s11,149d4 <__gdtoa+0x554>
   1453a:	4a1c                	lw	a5,16(a2)
   1453c:	8c6e                	mv	s8,s11
   1453e:	1dfd                	addi	s11,s11,-1
   14540:	dbf5                	beqz	a5,14534 <__gdtoa+0xb4>
   14542:	004d8793          	addi	a5,s11,4
   14546:	078a                	slli	a5,a5,0x2
   14548:	97e6                	add	a5,a5,s9
   1454a:	43c8                	lw	a0,4(a5)
   1454c:	018ca823          	sw	s8,16(s9)
   14550:	0c16                	slli	s8,s8,0x5
   14552:	410010ef          	jal	15962 <__hi0bits>
   14556:	40ac0db3          	sub	s11,s8,a0
   1455a:	8566                	mv	a0,s9
   1455c:	1a2010ef          	jal	156fe <__trailz_D2A>
   14560:	d6aa                	sw	a0,108(sp)
   14562:	4c42                	lw	s8,16(sp)
   14564:	48051c63          	bnez	a0,149fc <__gdtoa+0x57c>
   14568:	010ca603          	lw	a2,16(s9)
   1456c:	3e060163          	beqz	a2,1494e <__gdtoa+0x4ce>
   14570:	10ec                	addi	a1,sp,108
   14572:	8566                	mv	a0,s9
   14574:	2e1010ef          	jal	16054 <__b2d>
   14578:	00c59613          	slli	a2,a1,0xc
   1457c:	8231                	srli	a2,a2,0xc
   1457e:	3ff005b7          	lui	a1,0x3ff00
   14582:	8f2a                	mv	t5,a0
   14584:	8e4d                	or	a2,a2,a1
   14586:	cc7a                	sw	t5,24(sp)
   14588:	ce32                	sw	a2,28(sp)
   1458a:	ea81b707          	fld	fa4,-344(gp) # 1b6b8 <__SDATA_BEGIN__>
   1458e:	27e2                	fld	fa5,24(sp)
   14590:	eb01b687          	fld	fa3,-336(gp) # 1b6c0 <__SDATA_BEGIN__+0x8>
   14594:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14598:	eb81b787          	fld	fa5,-328(gp) # 1b6c8 <__SDATA_BEGIN__+0x10>
   1459c:	01bc08b3          	add	a7,s8,s11
   145a0:	fff88593          	addi	a1,a7,-1
   145a4:	852e                	mv	a0,a1
   145a6:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   145aa:	d20587d3          	fcvt.d.w	fa5,a1
   145ae:	ec01b687          	fld	fa3,-320(gp) # 1b6d0 <__SDATA_BEGIN__+0x18>
   145b2:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   145b6:	0005d563          	bgez	a1,145c0 <__gdtoa+0x140>
   145ba:	4505                	li	a0,1
   145bc:	41150533          	sub	a0,a0,a7
   145c0:	bcb50513          	addi	a0,a0,-1077
   145c4:	00a05863          	blez	a0,145d4 <__gdtoa+0x154>
   145c8:	d20506d3          	fcvt.d.w	fa3,a0
   145cc:	ec81b707          	fld	fa4,-312(gp) # 1b6d8 <__SDATA_BEGIN__+0x20>
   145d0:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   145d4:	d2000753          	fcvt.d.w	fa4,zero
   145d8:	c2079853          	fcvt.w.d	a6,fa5,rtz
   145dc:	a2e79553          	flt.d	a0,fa5,fa4
   145e0:	c909                	beqz	a0,145f2 <__gdtoa+0x172>
   145e2:	d2080753          	fcvt.d.w	fa4,a6
   145e6:	a2f72553          	feq.d	a0,fa4,fa5
   145ea:	00153513          	seqz	a0,a0
   145ee:	40a80833          	sub	a6,a6,a0
   145f2:	01459e93          	slli	t4,a1,0x14
   145f6:	40bd8533          	sub	a0,s11,a1
   145fa:	45d9                	li	a1,22
   145fc:	00ce8fb3          	add	t6,t4,a2
   14600:	fff50e93          	addi	t4,a0,-1
   14604:	3d05eb63          	bltu	a1,a6,149da <__gdtoa+0x55a>
   14608:	65ed                	lui	a1,0x1b
   1460a:	00381613          	slli	a2,a6,0x3
   1460e:	80858593          	addi	a1,a1,-2040 # 1a808 <__mprec_tens>
   14612:	962e                	add	a2,a2,a1
   14614:	cc7a                	sw	t5,24(sp)
   14616:	ce7e                	sw	t6,28(sp)
   14618:	221c                	fld	fa5,0(a2)
   1461a:	2762                	fld	fa4,24(sp)
   1461c:	a2f71653          	flt.d	a2,fa4,fa5
   14620:	58061163          	bnez	a2,14ba2 <__gdtoa+0x722>
   14624:	ca82                	sw	zero,84(sp)
   14626:	cc02                	sw	zero,24(sp)
   14628:	00a04763          	bgtz	a0,14636 <__gdtoa+0x1b6>
   1462c:	4605                	li	a2,1
   1462e:	40a607b3          	sub	a5,a2,a0
   14632:	cc3e                	sw	a5,24(sp)
   14634:	4e81                	li	t4,0
   14636:	9ec2                	add	t4,t4,a6
   14638:	da42                	sw	a6,52(sp)
   1463a:	d802                	sw	zero,48(sp)
   1463c:	4625                	li	a2,9
   1463e:	3d266a63          	bltu	a2,s2,14a12 <__gdtoa+0x592>
   14642:	4615                	li	a2,5
   14644:	57264263          	blt	a2,s2,14ba8 <__gdtoa+0x728>
   14648:	3fd88893          	addi	a7,a7,1021
   1464c:	7f88b793          	sltiu	a5,a7,2040
   14650:	4591                	li	a1,4
   14652:	ccbe                	sw	a5,88(sp)
   14654:	18b909e3          	beq	s2,a1,14fe6 <__gdtoa+0xb66>
   14658:	18c903e3          	beq	s2,a2,14fde <__gdtoa+0xb5e>
   1465c:	4609                	li	a2,2
   1465e:	18c907e3          	beq	s2,a2,14fec <__gdtoa+0xb6c>
   14662:	460d                	li	a2,3
   14664:	c882                	sw	zero,80(sp)
   14666:	3ac91c63          	bne	s2,a2,14a1e <__gdtoa+0x59e>
   1466a:	57d2                	lw	a5,52(sp)
   1466c:	5722                	lw	a4,40(sp)
   1466e:	97ba                	add	a5,a5,a4
   14670:	cebe                	sw	a5,92(sp)
   14672:	0785                	addi	a5,a5,1
   14674:	d63e                	sw	a5,44(sp)
   14676:	00f05ce3          	blez	a5,14e8e <__gdtoa+0xa0e>
   1467a:	863e                	mv	a2,a5
   1467c:	85be                	mv	a1,a5
   1467e:	8522                	mv	a0,s0
   14680:	c4fa                	sw	t5,72(sp)
   14682:	c6fe                	sw	t6,76(sp)
   14684:	c0f6                	sw	t4,64(sp)
   14686:	dc42                	sw	a6,56(sp)
   14688:	d6b2                	sw	a2,108(sp)
   1468a:	5bd000ef          	jal	15446 <__rv_alloc_D2A>
   1468e:	88aa                	mv	a7,a0
   14690:	32050863          	beqz	a0,149c0 <__gdtoa+0x540>
   14694:	00ca2783          	lw	a5,12(s4)
   14698:	5862                	lw	a6,56(sp)
   1469a:	4e86                	lw	t4,64(sp)
   1469c:	17fd                	addi	a5,a5,-1
   1469e:	d03e                	sw	a5,32(sp)
   146a0:	4f26                	lw	t5,72(sp)
   146a2:	4fb6                	lw	t6,76(sp)
   146a4:	3a078363          	beqz	a5,14a4a <__gdtoa+0x5ca>
   146a8:	4e07ca63          	bltz	a5,14b9c <__gdtoa+0x71c>
   146ac:	100af313          	andi	t1,s5,256
   146b0:	38031863          	bnez	t1,14a40 <__gdtoa+0x5c0>
   146b4:	000c4663          	bltz	s8,146c0 <__gdtoa+0x240>
   146b8:	57d2                	lw	a5,52(sp)
   146ba:	4639                	li	a2,14
   146bc:	50f65363          	bge	a2,a5,14bc2 <__gdtoa+0x742>
   146c0:	47c6                	lw	a5,80(sp)
   146c2:	4c078863          	beqz	a5,14b92 <__gdtoa+0x712>
   146c6:	41bd06b3          	sub	a3,s10,s11
   146ca:	004a2603          	lw	a2,4(s4)
   146ce:	00168593          	addi	a1,a3,1
   146d2:	d6ae                	sw	a1,108(sp)
   146d4:	40dc06b3          	sub	a3,s8,a3
   146d8:	7ec6dd63          	bge	a3,a2,14ed2 <__gdtoa+0xa52>
   146dc:	ffd90693          	addi	a3,s2,-3
   146e0:	9af5                	andi	a3,a3,-3
   146e2:	72068863          	beqz	a3,14e12 <__gdtoa+0x992>
   146e6:	40cc06b3          	sub	a3,s8,a2
   146ea:	0685                	addi	a3,a3,1
   146ec:	d6b6                	sw	a3,108(sp)
   146ee:	4605                	li	a2,1
   146f0:	01265863          	bge	a2,s2,14700 <__gdtoa+0x280>
   146f4:	57b2                	lw	a5,44(sp)
   146f6:	00f05563          	blez	a5,14700 <__gdtoa+0x280>
   146fa:	57b2                	lw	a5,44(sp)
   146fc:	40d7c1e3          	blt	a5,a3,152fe <__gdtoa+0xe7e>
   14700:	47e2                	lw	a5,24(sp)
   14702:	5d42                	lw	s10,48(sp)
   14704:	9eb6                	add	t4,t4,a3
   14706:	dc3e                	sw	a5,56(sp)
   14708:	97b6                	add	a5,a5,a3
   1470a:	cc3e                	sw	a5,24(sp)
   1470c:	4585                	li	a1,1
   1470e:	8522                	mv	a0,s0
   14710:	ccc6                	sw	a7,88(sp)
   14712:	c4f6                	sw	t4,72(sp)
   14714:	c0c2                	sw	a6,64(sp)
   14716:	32a010ef          	jal	15a40 <__i2b>
   1471a:	4806                	lw	a6,64(sp)
   1471c:	4ea6                	lw	t4,72(sp)
   1471e:	48e6                	lw	a7,88(sp)
   14720:	8c2a                	mv	s8,a0
   14722:	28050f63          	beqz	a0,149c0 <__gdtoa+0x540>
   14726:	57e2                	lw	a5,56(sp)
   14728:	c385                	beqz	a5,14748 <__gdtoa+0x2c8>
   1472a:	01d05f63          	blez	t4,14748 <__gdtoa+0x2c8>
   1472e:	86be                	mv	a3,a5
   14730:	00fed363          	bge	t4,a5,14736 <__gdtoa+0x2b6>
   14734:	86f6                	mv	a3,t4
   14736:	47e2                	lw	a5,24(sp)
   14738:	d6b6                	sw	a3,108(sp)
   1473a:	40de8eb3          	sub	t4,t4,a3
   1473e:	8f95                	sub	a5,a5,a3
   14740:	cc3e                	sw	a5,24(sp)
   14742:	57e2                	lw	a5,56(sp)
   14744:	8f95                	sub	a5,a5,a3
   14746:	dc3e                	sw	a5,56(sp)
   14748:	57c2                	lw	a5,48(sp)
   1474a:	c39d                	beqz	a5,14770 <__gdtoa+0x2f0>
   1474c:	47c6                	lw	a5,80(sp)
   1474e:	c399                	beqz	a5,14754 <__gdtoa+0x2d4>
   14750:	7e0d1863          	bnez	s10,14f40 <__gdtoa+0xac0>
   14754:	5642                	lw	a2,48(sp)
   14756:	85e6                	mv	a1,s9
   14758:	8522                	mv	a0,s0
   1475a:	ccc6                	sw	a7,88(sp)
   1475c:	c4f6                	sw	t4,72(sp)
   1475e:	c0c2                	sw	a6,64(sp)
   14760:	4de010ef          	jal	15c3e <__pow5mult>
   14764:	4806                	lw	a6,64(sp)
   14766:	4ea6                	lw	t4,72(sp)
   14768:	48e6                	lw	a7,88(sp)
   1476a:	8caa                	mv	s9,a0
   1476c:	24050a63          	beqz	a0,149c0 <__gdtoa+0x540>
   14770:	4585                	li	a1,1
   14772:	8522                	mv	a0,s0
   14774:	c4c6                	sw	a7,72(sp)
   14776:	c0f6                	sw	t4,64(sp)
   14778:	d842                	sw	a6,48(sp)
   1477a:	2c6010ef          	jal	15a40 <__i2b>
   1477e:	8d2a                	mv	s10,a0
   14780:	24050063          	beqz	a0,149c0 <__gdtoa+0x540>
   14784:	5842                	lw	a6,48(sp)
   14786:	4e86                	lw	t4,64(sp)
   14788:	48a6                	lw	a7,72(sp)
   1478a:	70081663          	bnez	a6,14e96 <__gdtoa+0xa16>
   1478e:	4685                	li	a3,1
   14790:	5126d263          	bge	a3,s2,14c94 <__gdtoa+0x814>
   14794:	4a7d                	li	s4,31
   14796:	47e2                	lw	a5,24(sp)
   14798:	41da0a33          	sub	s4,s4,t4
   1479c:	1a71                	addi	s4,s4,-4
   1479e:	01fa7a13          	andi	s4,s4,31
   147a2:	00fa0633          	add	a2,s4,a5
   147a6:	d6d2                	sw	s4,108(sp)
   147a8:	87d2                	mv	a5,s4
   147aa:	58c04d63          	bgtz	a2,14d44 <__gdtoa+0x8c4>
   147ae:	00fe8633          	add	a2,t4,a5
   147b2:	1ec04c63          	bgtz	a2,149aa <__gdtoa+0x52a>
   147b6:	47d6                	lw	a5,84(sp)
   147b8:	5a079563          	bnez	a5,14d62 <__gdtoa+0x8e2>
   147bc:	57b2                	lw	a5,44(sp)
   147be:	66f05a63          	blez	a5,14e32 <__gdtoa+0x9b2>
   147c2:	47c6                	lw	a5,80(sp)
   147c4:	5c078d63          	beqz	a5,14d9e <__gdtoa+0x91e>
   147c8:	57e2                	lw	a5,56(sp)
   147ca:	00fa0633          	add	a2,s4,a5
   147ce:	7ec04763          	bgtz	a2,14fbc <__gdtoa+0xb3c>
   147d2:	8a62                	mv	s4,s8
   147d4:	02081ce3          	bnez	a6,1500c <__gdtoa+0xb8c>
   147d8:	5b32                	lw	s6,44(sp)
   147da:	8dc6                	mv	s11,a7
   147dc:	4685                	li	a3,1
   147de:	d446                	sw	a7,40(sp)
   147e0:	cc5e                	sw	s7,24(sp)
   147e2:	d626                	sw	s1,44(sp)
   147e4:	a885                	j	14854 <__gdtoa+0x3d4>
   147e6:	8522                	mv	a0,s0
   147e8:	7bd000ef          	jal	157a4 <_Bfree>
   147ec:	100ac3e3          	bltz	s5,150f2 <__gdtoa+0xc72>
   147f0:	01596ab3          	or	s5,s2,s5
   147f4:	000a9763          	bnez	s5,14802 <__gdtoa+0x382>
   147f8:	0009a783          	lw	a5,0(s3)
   147fc:	8b85                	andi	a5,a5,1
   147fe:	0e078ae3          	beqz	a5,150f2 <__gdtoa+0xc72>
   14802:	5782                	lw	a5,32(sp)
   14804:	4709                	li	a4,2
   14806:	26e798e3          	bne	a5,a4,15276 <__gdtoa+0xdf6>
   1480a:	017d8023          	sb	s7,0(s11)
   1480e:	57b6                	lw	a5,108(sp)
   14810:	0d85                	addi	s11,s11,1
   14812:	1efb0fe3          	beq	s6,a5,15210 <__gdtoa+0xd90>
   14816:	85e6                	mv	a1,s9
   14818:	4681                	li	a3,0
   1481a:	4629                	li	a2,10
   1481c:	8522                	mv	a0,s0
   1481e:	799000ef          	jal	157b6 <__multadd>
   14822:	8caa                	mv	s9,a0
   14824:	18050e63          	beqz	a0,149c0 <__gdtoa+0x540>
   14828:	4681                	li	a3,0
   1482a:	4629                	li	a2,10
   1482c:	85e2                	mv	a1,s8
   1482e:	8522                	mv	a0,s0
   14830:	494c0c63          	beq	s8,s4,14cc8 <__gdtoa+0x848>
   14834:	783000ef          	jal	157b6 <__multadd>
   14838:	8c2a                	mv	s8,a0
   1483a:	18050363          	beqz	a0,149c0 <__gdtoa+0x540>
   1483e:	85d2                	mv	a1,s4
   14840:	4681                	li	a3,0
   14842:	4629                	li	a2,10
   14844:	8522                	mv	a0,s0
   14846:	771000ef          	jal	157b6 <__multadd>
   1484a:	8a2a                	mv	s4,a0
   1484c:	16050a63          	beqz	a0,149c0 <__gdtoa+0x540>
   14850:	56b6                	lw	a3,108(sp)
   14852:	0685                	addi	a3,a3,1
   14854:	85ea                	mv	a1,s10
   14856:	8566                	mv	a0,s9
   14858:	d6b6                	sw	a3,108(sp)
   1485a:	4ab000ef          	jal	15504 <__quorem_D2A>
   1485e:	84aa                	mv	s1,a0
   14860:	85e2                	mv	a1,s8
   14862:	8566                	mv	a0,s9
   14864:	5bc010ef          	jal	15e20 <__mcmp>
   14868:	85ea                	mv	a1,s10
   1486a:	8aaa                	mv	s5,a0
   1486c:	8652                	mv	a2,s4
   1486e:	8522                	mv	a0,s0
   14870:	5ec010ef          	jal	15e5c <__mdiff>
   14874:	03048b93          	addi	s7,s1,48
   14878:	85aa                	mv	a1,a0
   1487a:	14050363          	beqz	a0,149c0 <__gdtoa+0x540>
   1487e:	455c                	lw	a5,12(a0)
   14880:	f3bd                	bnez	a5,147e6 <__gdtoa+0x366>
   14882:	c82a                	sw	a0,16(sp)
   14884:	8566                	mv	a0,s9
   14886:	59a010ef          	jal	15e20 <__mcmp>
   1488a:	45c2                	lw	a1,16(sp)
   1488c:	86aa                	mv	a3,a0
   1488e:	8522                	mv	a0,s0
   14890:	c836                	sw	a3,16(sp)
   14892:	713000ef          	jal	157a4 <_Bfree>
   14896:	46c2                	lw	a3,16(sp)
   14898:	00d96733          	or	a4,s2,a3
   1489c:	340711e3          	bnez	a4,153de <__gdtoa+0xf5e>
   148a0:	0009a783          	lw	a5,0(s3)
   148a4:	8b85                	andi	a5,a5,1
   148a6:	42079863          	bnez	a5,14cd6 <__gdtoa+0x856>
   148aa:	5782                	lw	a5,32(sp)
   148ac:	280787e3          	beqz	a5,1533a <__gdtoa+0xeba>
   148b0:	f5504de3          	bgtz	s5,1480a <__gdtoa+0x38a>
   148b4:	010ca603          	lw	a2,16(s9)
   148b8:	4685                	li	a3,1
   148ba:	835e                	mv	t1,s7
   148bc:	58a2                	lw	a7,40(sp)
   148be:	4be2                	lw	s7,24(sp)
   148c0:	54b2                	lw	s1,44(sp)
   148c2:	8b3a                	mv	s6,a4
   148c4:	2ec6dae3          	bge	a3,a2,153b8 <__gdtoa+0xf38>
   148c8:	5782                	lw	a5,32(sp)
   148ca:	4689                	li	a3,2
   148cc:	8a9a                	mv	s5,t1
   148ce:	8b46                	mv	s6,a7
   148d0:	02d79063          	bne	a5,a3,148f0 <__gdtoa+0x470>
   148d4:	2cb0006f          	j	1539e <__gdtoa+0xf1e>
   148d8:	6df000ef          	jal	157b6 <__multadd>
   148dc:	85ea                	mv	a1,s10
   148de:	8caa                	mv	s9,a0
   148e0:	0e050063          	beqz	a0,149c0 <__gdtoa+0x540>
   148e4:	421000ef          	jal	15504 <__quorem_D2A>
   148e8:	03050a93          	addi	s5,a0,48
   148ec:	8dca                	mv	s11,s2
   148ee:	8a4e                	mv	s4,s3
   148f0:	85d2                	mv	a1,s4
   148f2:	856a                	mv	a0,s10
   148f4:	52c010ef          	jal	15e20 <__mcmp>
   148f8:	87aa                	mv	a5,a0
   148fa:	4681                	li	a3,0
   148fc:	4629                	li	a2,10
   148fe:	85d2                	mv	a1,s4
   14900:	8522                	mv	a0,s0
   14902:	001d8913          	addi	s2,s11,1
   14906:	28f052e3          	blez	a5,1538a <__gdtoa+0xf0a>
   1490a:	ff590fa3          	sb	s5,-1(s2)
   1490e:	6a9000ef          	jal	157b6 <__multadd>
   14912:	89aa                	mv	s3,a0
   14914:	4681                	li	a3,0
   14916:	4629                	li	a2,10
   14918:	85e6                	mv	a1,s9
   1491a:	8522                	mv	a0,s0
   1491c:	0a098263          	beqz	s3,149c0 <__gdtoa+0x540>
   14920:	fb4c1ce3          	bne	s8,s4,148d8 <__gdtoa+0x458>
   14924:	8c4e                	mv	s8,s3
   14926:	bf4d                	j	148d8 <__gdtoa+0x458>
   14928:	4791                	li	a5,4
   1492a:	0afe1363          	bne	t3,a5,149d0 <__gdtoa+0x550>
   1492e:	4632                	lw	a2,12(sp)
   14930:	4b4a                	lw	s6,144(sp)
   14932:	50ba                	lw	ra,172(sp)
   14934:	549a                	lw	s1,164(sp)
   14936:	4ada                	lw	s5,148(sp)
   14938:	4bba                	lw	s7,140(sp)
   1493a:	77e1                	lui	a5,0xffff8
   1493c:	00f8a023          	sw	a5,0(a7)
   14940:	65e9                	lui	a1,0x1a
   14942:	468d                	li	a3,3
   14944:	45c58593          	addi	a1,a1,1116 # 1a45c <__clzsi2+0xd2>
   14948:	614d                	addi	sp,sp,176
   1494a:	33b0006f          	j	15484 <__nrv_alloc_D2A>
   1494e:	85e6                	mv	a1,s9
   14950:	8522                	mv	a0,s0
   14952:	653000ef          	jal	157a4 <_Bfree>
   14956:	590a                	lw	s2,160(sp)
   14958:	49fa                	lw	s3,156(sp)
   1495a:	4a6a                	lw	s4,152(sp)
   1495c:	4c2a                	lw	s8,136(sp)
   1495e:	4c9a                	lw	s9,132(sp)
   14960:	4d0a                	lw	s10,128(sp)
   14962:	5df6                	lw	s11,124(sp)
   14964:	4632                	lw	a2,12(sp)
   14966:	4785                	li	a5,1
   14968:	65e9                	lui	a1,0x1a
   1496a:	8522                	mv	a0,s0
   1496c:	c09c                	sw	a5,0(s1)
   1496e:	4685                	li	a3,1
   14970:	44c58593          	addi	a1,a1,1100 # 1a44c <__clzsi2+0xc2>
   14974:	311000ef          	jal	15484 <__nrv_alloc_D2A>
   14978:	542a                	lw	s0,168(sp)
   1497a:	88aa                	mv	a7,a0
   1497c:	50ba                	lw	ra,172(sp)
   1497e:	4b4a                	lw	s6,144(sp)
   14980:	549a                	lw	s1,164(sp)
   14982:	4ada                	lw	s5,148(sp)
   14984:	4bba                	lw	s7,140(sp)
   14986:	8546                	mv	a0,a7
   14988:	614d                	addi	sp,sp,176
   1498a:	8082                	ret
   1498c:	4632                	lw	a2,12(sp)
   1498e:	50ba                	lw	ra,172(sp)
   14990:	549a                	lw	s1,164(sp)
   14992:	4ada                	lw	s5,148(sp)
   14994:	4bba                	lw	s7,140(sp)
   14996:	77e1                	lui	a5,0xffff8
   14998:	00f8a023          	sw	a5,0(a7)
   1499c:	65e9                	lui	a1,0x1a
   1499e:	46a1                	li	a3,8
   149a0:	45058593          	addi	a1,a1,1104 # 1a450 <__clzsi2+0xc6>
   149a4:	614d                	addi	sp,sp,176
   149a6:	2df0006f          	j	15484 <__nrv_alloc_D2A>
   149aa:	85ea                	mv	a1,s10
   149ac:	8522                	mv	a0,s0
   149ae:	cc46                	sw	a7,24(sp)
   149b0:	c842                	sw	a6,16(sp)
   149b2:	360010ef          	jal	15d12 <__lshift>
   149b6:	4842                	lw	a6,16(sp)
   149b8:	48e2                	lw	a7,24(sp)
   149ba:	8d2a                	mv	s10,a0
   149bc:	de051de3          	bnez	a0,147b6 <__gdtoa+0x336>
   149c0:	542a                	lw	s0,168(sp)
   149c2:	590a                	lw	s2,160(sp)
   149c4:	49fa                	lw	s3,156(sp)
   149c6:	4a6a                	lw	s4,152(sp)
   149c8:	4c2a                	lw	s8,136(sp)
   149ca:	4c9a                	lw	s9,132(sp)
   149cc:	4d0a                	lw	s10,128(sp)
   149ce:	5df6                	lw	s11,124(sp)
   149d0:	4881                	li	a7,0
   149d2:	b76d                	j	1497c <__gdtoa+0x4fc>
   149d4:	000ca823          	sw	zero,16(s9)
   149d8:	b649                	j	1455a <__gdtoa+0xda>
   149da:	4785                	li	a5,1
   149dc:	cabe                	sw	a5,84(sp)
   149de:	cc02                	sw	zero,24(sp)
   149e0:	1a0ec163          	bltz	t4,14b82 <__gdtoa+0x702>
   149e4:	c40859e3          	bgez	a6,14636 <__gdtoa+0x1b6>
   149e8:	47e2                	lw	a5,24(sp)
   149ea:	da42                	sw	a6,52(sp)
   149ec:	410787b3          	sub	a5,a5,a6
   149f0:	cc3e                	sw	a5,24(sp)
   149f2:	410007b3          	neg	a5,a6
   149f6:	d83e                	sw	a5,48(sp)
   149f8:	4801                	li	a6,0
   149fa:	b189                	j	1463c <__gdtoa+0x1bc>
   149fc:	85aa                	mv	a1,a0
   149fe:	8566                	mv	a0,s9
   14a00:	45b000ef          	jal	1565a <__rshift_D2A>
   14a04:	5636                	lw	a2,108(sp)
   14a06:	47c2                	lw	a5,16(sp)
   14a08:	40cd8db3          	sub	s11,s11,a2
   14a0c:	00f60c33          	add	s8,a2,a5
   14a10:	bea1                	j	14568 <__gdtoa+0xe8>
   14a12:	3fd88893          	addi	a7,a7,1021
   14a16:	7f88b793          	sltiu	a5,a7,2040
   14a1a:	ccbe                	sw	a5,88(sp)
   14a1c:	4901                	li	s2,0
   14a1e:	ed01b707          	fld	fa4,-304(gp) # 1b6e0 <__SDATA_BEGIN__+0x28>
   14a22:	d20d07d3          	fcvt.d.w	fa5,s10
   14a26:	4785                	li	a5,1
   14a28:	c8be                	sw	a5,80(sp)
   14a2a:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14a2e:	57fd                	li	a5,-1
   14a30:	d402                	sw	zero,40(sp)
   14a32:	cebe                	sw	a5,92(sp)
   14a34:	d63e                	sw	a5,44(sp)
   14a36:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   14a3a:	058d                	addi	a1,a1,3
   14a3c:	862e                	mv	a2,a1
   14a3e:	b181                	j	1467e <__gdtoa+0x1fe>
   14a40:	5782                	lw	a5,32(sp)
   14a42:	460d                	li	a2,3
   14a44:	40f607b3          	sub	a5,a2,a5
   14a48:	d03e                	sw	a5,32(sp)
   14a4a:	57b2                	lw	a5,44(sp)
   14a4c:	4639                	li	a2,14
   14a4e:	c6f663e3          	bltu	a2,a5,146b4 <__gdtoa+0x234>
   14a52:	4766                	lw	a4,88(sp)
   14a54:	c60700e3          	beqz	a4,146b4 <__gdtoa+0x234>
   14a58:	5752                	lw	a4,52(sp)
   14a5a:	5682                	lw	a3,32(sp)
   14a5c:	00d76633          	or	a2,a4,a3
   14a60:	c4061ae3          	bnez	a2,146b4 <__gdtoa+0x234>
   14a64:	4756                	lw	a4,84(sp)
   14a66:	d682                	sw	zero,108(sp)
   14a68:	d07a                	sw	t5,32(sp)
   14a6a:	d27e                	sw	t6,36(sp)
   14a6c:	cb11                	beqz	a4,14a80 <__gdtoa+0x600>
   14a6e:	dc7a                	sw	t5,56(sp)
   14a70:	de7e                	sw	t6,60(sp)
   14a72:	ed81b787          	fld	fa5,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   14a76:	3762                	fld	fa4,56(sp)
   14a78:	a2f71653          	flt.d	a2,fa4,fa5
   14a7c:	7a061163          	bnez	a2,1521e <__gdtoa+0xd9e>
   14a80:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   14a84:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14a88:	3682                	fld	fa3,32(sp)
   14a8a:	57b2                	lw	a5,44(sp)
   14a8c:	fcc00637          	lui	a2,0xfcc00
   14a90:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14a94:	bc3e                	fsd	fa5,56(sp)
   14a96:	5562                	lw	a0,56(sp)
   14a98:	55f2                	lw	a1,60(sp)
   14a9a:	832a                	mv	t1,a0
   14a9c:	962e                	add	a2,a2,a1
   14a9e:	5c078063          	beqz	a5,1505e <__gdtoa+0xbde>
   14aa2:	3782                	fld	fa5,32(sp)
   14aa4:	5532                	lw	a0,44(sp)
   14aa6:	4381                	li	t2,0
   14aa8:	bc3e                	fsd	fa5,56(sp)
   14aaa:	65ed                	lui	a1,0x1b
   14aac:	fff50793          	addi	a5,a0,-1
   14ab0:	078e                	slli	a5,a5,0x3
   14ab2:	80858293          	addi	t0,a1,-2040 # 1a808 <__mprec_tens>
   14ab6:	005786b3          	add	a3,a5,t0
   14aba:	229c                	fld	fa5,0(a3)
   14abc:	46c6                	lw	a3,80(sp)
   14abe:	871a                	mv	a4,t1
   14ac0:	87b2                	mv	a5,a2
   14ac2:	6c068163          	beqz	a3,15184 <__gdtoa+0xd04>
   14ac6:	3762                	fld	fa4,56(sp)
   14ac8:	36e2                	fld	fa3,56(sp)
   14aca:	c2071353          	fcvt.w.d	t1,fa4,rtz
   14ace:	f081b707          	fld	fa4,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   14ad2:	dc3a                	sw	a4,56(sp)
   14ad4:	de3e                	sw	a5,60(sp)
   14ad6:	1af77753          	fdiv.d	fa4,fa4,fa5
   14ada:	d20307d3          	fcvt.d.w	fa5,t1
   14ade:	03030313          	addi	t1,t1,48
   14ae2:	00688023          	sb	t1,0(a7)
   14ae6:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   14aea:	36e2                	fld	fa3,56(sp)
   14aec:	00188613          	addi	a2,a7,1
   14af0:	0ad77753          	fsub.d	fa4,fa4,fa3
   14af4:	a2e79353          	flt.d	t1,fa5,fa4
   14af8:	7c031e63          	bnez	t1,152d4 <__gdtoa+0xe54>
   14afc:	ed81b587          	fld	fa1,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   14b00:	ee01b607          	fld	fa2,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14b04:	a80d                	j	14b36 <__gdtoa+0x6b6>
   14b06:	57b6                	lw	a5,108(sp)
   14b08:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe45a5>
   14b0a:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffdc5a5>
   14b0c:	d6be                	sw	a5,108(sp)
   14b0e:	7ea7d163          	bge	a5,a0,152f0 <__gdtoa+0xe70>
   14b12:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   14b16:	12c77753          	fmul.d	fa4,fa4,fa2
   14b1a:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14b1e:	d20786d3          	fcvt.d.w	fa3,a5
   14b22:	03078793          	addi	a5,a5,48
   14b26:	fef60fa3          	sb	a5,-1(a2)
   14b2a:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   14b2e:	a2e797d3          	flt.d	a5,fa5,fa4
   14b32:	7a079163          	bnez	a5,152d4 <__gdtoa+0xe54>
   14b36:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   14b3a:	a2e697d3          	flt.d	a5,fa3,fa4
   14b3e:	d7e1                	beqz	a5,14b06 <__gdtoa+0x686>
   14b40:	fff64683          	lbu	a3,-1(a2)
   14b44:	00138513          	addi	a0,t2,1
   14b48:	03900593          	li	a1,57
   14b4c:	a031                	j	14b58 <__gdtoa+0x6d8>
   14b4e:	62f88763          	beq	a7,a5,1517c <__gdtoa+0xcfc>
   14b52:	fff7c683          	lbu	a3,-1(a5)
   14b56:	863e                	mv	a2,a5
   14b58:	fff60793          	addi	a5,a2,-1
   14b5c:	feb689e3          	beq	a3,a1,14b4e <__gdtoa+0x6ce>
   14b60:	0685                	addi	a3,a3,1
   14b62:	0ff6f693          	zext.b	a3,a3
   14b66:	00d78023          	sb	a3,0(a5)
   14b6a:	892a                	mv	s2,a0
   14b6c:	02000b13          	li	s6,32
   14b70:	a0e5                	j	14c58 <__gdtoa+0x7d8>
   14b72:	542a                	lw	s0,168(sp)
   14b74:	590a                	lw	s2,160(sp)
   14b76:	49fa                	lw	s3,156(sp)
   14b78:	4a6a                	lw	s4,152(sp)
   14b7a:	4c9a                	lw	s9,132(sp)
   14b7c:	4d0a                	lw	s10,128(sp)
   14b7e:	4881                	li	a7,0
   14b80:	bbf5                	j	1497c <__gdtoa+0x4fc>
   14b82:	4605                	li	a2,1
   14b84:	40a607b3          	sub	a5,a2,a0
   14b88:	cc3e                	sw	a5,24(sp)
   14b8a:	4e81                	li	t4,0
   14b8c:	e4084ee3          	bltz	a6,149e8 <__gdtoa+0x568>
   14b90:	b45d                	j	14636 <__gdtoa+0x1b6>
   14b92:	47e2                	lw	a5,24(sp)
   14b94:	5d42                	lw	s10,48(sp)
   14b96:	4c01                	li	s8,0
   14b98:	dc3e                	sw	a5,56(sp)
   14b9a:	b671                	j	14726 <__gdtoa+0x2a6>
   14b9c:	4789                	li	a5,2
   14b9e:	d03e                	sw	a5,32(sp)
   14ba0:	b631                	j	146ac <__gdtoa+0x22c>
   14ba2:	187d                	addi	a6,a6,-1
   14ba4:	ca82                	sw	zero,84(sp)
   14ba6:	bd25                	j	149de <__gdtoa+0x55e>
   14ba8:	1971                	addi	s2,s2,-4
   14baa:	4591                	li	a1,4
   14bac:	10b90263          	beq	s2,a1,14cb0 <__gdtoa+0x830>
   14bb0:	42c90263          	beq	s2,a2,14fd4 <__gdtoa+0xb54>
   14bb4:	4609                	li	a2,2
   14bb6:	cc82                	sw	zero,88(sp)
   14bb8:	c882                	sw	zero,80(sp)
   14bba:	0ec90e63          	beq	s2,a2,14cb6 <__gdtoa+0x836>
   14bbe:	490d                	li	s2,3
   14bc0:	b46d                	j	1466a <__gdtoa+0x1ea>
   14bc2:	66ed                	lui	a3,0x1b
   14bc4:	078e                	slli	a5,a5,0x3
   14bc6:	80868693          	addi	a3,a3,-2040 # 1a808 <__mprec_tens>
   14bca:	97b6                	add	a5,a5,a3
   14bcc:	2398                	fld	fa4,0(a5)
   14bce:	57a2                	lw	a5,40(sp)
   14bd0:	3207c263          	bltz	a5,14ef4 <__gdtoa+0xa74>
   14bd4:	c87a                	sw	t5,16(sp)
   14bd6:	ca7e                	sw	t6,20(sp)
   14bd8:	27c2                	fld	fa5,16(sp)
   14bda:	4785                	li	a5,1
   14bdc:	d6be                	sw	a5,108(sp)
   14bde:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   14be2:	57d2                	lw	a5,52(sp)
   14be4:	26c2                	fld	fa3,16(sp)
   14be6:	00188613          	addi	a2,a7,1
   14bea:	00178513          	addi	a0,a5,1
   14bee:	892a                	mv	s2,a0
   14bf0:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14bf4:	d20787d3          	fcvt.d.w	fa5,a5
   14bf8:	03078693          	addi	a3,a5,48
   14bfc:	00d88023          	sb	a3,0(a7)
   14c00:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   14c04:	d20006d3          	fcvt.d.w	fa3,zero
   14c08:	a2d7a6d3          	feq.d	a3,fa5,fa3
   14c0c:	e6b1                	bnez	a3,14c58 <__gdtoa+0x7d8>
   14c0e:	ee01b587          	fld	fa1,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14c12:	22d68653          	fmv.d	fa2,fa3
   14c16:	55b2                	lw	a1,44(sp)
   14c18:	a025                	j	14c40 <__gdtoa+0x7c0>
   14c1a:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   14c1e:	d6b6                	sw	a3,108(sp)
   14c20:	0605                	addi	a2,a2,1
   14c22:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   14c26:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   14c2a:	d20786d3          	fcvt.d.w	fa3,a5
   14c2e:	03078713          	addi	a4,a5,48
   14c32:	fee60fa3          	sb	a4,-1(a2)
   14c36:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   14c3a:	a2c7a753          	feq.d	a4,fa5,fa2
   14c3e:	ef09                	bnez	a4,14c58 <__gdtoa+0x7d8>
   14c40:	5736                	lw	a4,108(sp)
   14c42:	00170693          	addi	a3,a4,1
   14c46:	fcb71ae3          	bne	a4,a1,14c1a <__gdtoa+0x79a>
   14c4a:	5702                	lw	a4,32(sp)
   14c4c:	4e070e63          	beqz	a4,15148 <__gdtoa+0xcc8>
   14c50:	4785                	li	a5,1
   14c52:	4b41                	li	s6,16
   14c54:	60f70263          	beq	a4,a5,15258 <__gdtoa+0xdd8>
   14c58:	85e6                	mv	a1,s9
   14c5a:	8522                	mv	a0,s0
   14c5c:	d446                	sw	a7,40(sp)
   14c5e:	c832                	sw	a2,16(sp)
   14c60:	345000ef          	jal	157a4 <_Bfree>
   14c64:	4642                	lw	a2,16(sp)
   14c66:	47b2                	lw	a5,12(sp)
   14c68:	58a2                	lw	a7,40(sp)
   14c6a:	00060023          	sb	zero,0(a2)
   14c6e:	0124a023          	sw	s2,0(s1)
   14c72:	c391                	beqz	a5,14c76 <__gdtoa+0x7f6>
   14c74:	c390                	sw	a2,0(a5)
   14c76:	000ba783          	lw	a5,0(s7)
   14c7a:	542a                	lw	s0,168(sp)
   14c7c:	590a                	lw	s2,160(sp)
   14c7e:	0167e7b3          	or	a5,a5,s6
   14c82:	49fa                	lw	s3,156(sp)
   14c84:	4a6a                	lw	s4,152(sp)
   14c86:	4c2a                	lw	s8,136(sp)
   14c88:	4c9a                	lw	s9,132(sp)
   14c8a:	4d0a                	lw	s10,128(sp)
   14c8c:	5df6                	lw	s11,124(sp)
   14c8e:	00fba023          	sw	a5,0(s7)
   14c92:	b1ed                	j	1497c <__gdtoa+0x4fc>
   14c94:	b0dd90e3          	bne	s11,a3,14794 <__gdtoa+0x314>
   14c98:	004a2783          	lw	a5,4(s4)
   14c9c:	4742                	lw	a4,16(sp)
   14c9e:	0785                	addi	a5,a5,1
   14ca0:	aee7dae3          	bge	a5,a4,14794 <__gdtoa+0x314>
   14ca4:	47e2                	lw	a5,24(sp)
   14ca6:	0e85                	addi	t4,t4,1
   14ca8:	4805                	li	a6,1
   14caa:	0785                	addi	a5,a5,1
   14cac:	cc3e                	sw	a5,24(sp)
   14cae:	b4dd                	j	14794 <__gdtoa+0x314>
   14cb0:	4785                	li	a5,1
   14cb2:	cc82                	sw	zero,88(sp)
   14cb4:	c8be                	sw	a5,80(sp)
   14cb6:	55a2                	lw	a1,40(sp)
   14cb8:	00b04363          	bgtz	a1,14cbe <__gdtoa+0x83e>
   14cbc:	4585                	li	a1,1
   14cbe:	862e                	mv	a2,a1
   14cc0:	ceae                	sw	a1,92(sp)
   14cc2:	d62e                	sw	a1,44(sp)
   14cc4:	d42e                	sw	a1,40(sp)
   14cc6:	ba65                	j	1467e <__gdtoa+0x1fe>
   14cc8:	2ef000ef          	jal	157b6 <__multadd>
   14ccc:	8c2a                	mv	s8,a0
   14cce:	ce0509e3          	beqz	a0,149c0 <__gdtoa+0x540>
   14cd2:	8a2a                	mv	s4,a0
   14cd4:	beb5                	j	14850 <__gdtoa+0x3d0>
   14cd6:	b20adae3          	bgez	s5,1480a <__gdtoa+0x38a>
   14cda:	5782                	lw	a5,32(sp)
   14cdc:	835e                	mv	t1,s7
   14cde:	58a2                	lw	a7,40(sp)
   14ce0:	4be2                	lw	s7,24(sp)
   14ce2:	54b2                	lw	s1,44(sp)
   14ce4:	8b3a                	mv	s6,a4
   14ce6:	6c079463          	bnez	a5,153ae <__gdtoa+0xf2e>
   14cea:	010ca603          	lw	a2,16(s9)
   14cee:	4685                	li	a3,1
   14cf0:	4b41                	li	s6,16
   14cf2:	001d8913          	addi	s2,s11,1
   14cf6:	68c6d463          	bge	a3,a2,1537e <__gdtoa+0xefe>
   14cfa:	89e2                	mv	s3,s8
   14cfc:	864a                	mv	a2,s2
   14cfe:	006d8023          	sb	t1,0(s11)
   14d02:	8c52                	mv	s8,s4
   14d04:	85ea                	mv	a1,s10
   14d06:	8522                	mv	a0,s0
   14d08:	d446                	sw	a7,40(sp)
   14d0a:	c832                	sw	a2,16(sp)
   14d0c:	299000ef          	jal	157a4 <_Bfree>
   14d10:	57d2                	lw	a5,52(sp)
   14d12:	4642                	lw	a2,16(sp)
   14d14:	58a2                	lw	a7,40(sp)
   14d16:	00178913          	addi	s2,a5,1
   14d1a:	f20c0fe3          	beqz	s8,14c58 <__gdtoa+0x7d8>
   14d1e:	00098a63          	beqz	s3,14d32 <__gdtoa+0x8b2>
   14d22:	01898863          	beq	s3,s8,14d32 <__gdtoa+0x8b2>
   14d26:	85ce                	mv	a1,s3
   14d28:	8522                	mv	a0,s0
   14d2a:	27b000ef          	jal	157a4 <_Bfree>
   14d2e:	58a2                	lw	a7,40(sp)
   14d30:	4642                	lw	a2,16(sp)
   14d32:	85e2                	mv	a1,s8
   14d34:	8522                	mv	a0,s0
   14d36:	d446                	sw	a7,40(sp)
   14d38:	c832                	sw	a2,16(sp)
   14d3a:	26b000ef          	jal	157a4 <_Bfree>
   14d3e:	58a2                	lw	a7,40(sp)
   14d40:	4642                	lw	a2,16(sp)
   14d42:	bf19                	j	14c58 <__gdtoa+0x7d8>
   14d44:	85e6                	mv	a1,s9
   14d46:	8522                	mv	a0,s0
   14d48:	d846                	sw	a7,48(sp)
   14d4a:	cc76                	sw	t4,24(sp)
   14d4c:	c842                	sw	a6,16(sp)
   14d4e:	7c5000ef          	jal	15d12 <__lshift>
   14d52:	8caa                	mv	s9,a0
   14d54:	c60506e3          	beqz	a0,149c0 <__gdtoa+0x540>
   14d58:	57b6                	lw	a5,108(sp)
   14d5a:	58c2                	lw	a7,48(sp)
   14d5c:	4ee2                	lw	t4,24(sp)
   14d5e:	4842                	lw	a6,16(sp)
   14d60:	b4b9                	j	147ae <__gdtoa+0x32e>
   14d62:	85ea                	mv	a1,s10
   14d64:	8566                	mv	a0,s9
   14d66:	cc46                	sw	a7,24(sp)
   14d68:	c842                	sw	a6,16(sp)
   14d6a:	0b6010ef          	jal	15e20 <__mcmp>
   14d6e:	4842                	lw	a6,16(sp)
   14d70:	48e2                	lw	a7,24(sp)
   14d72:	a40555e3          	bgez	a0,147bc <__gdtoa+0x33c>
   14d76:	57d2                	lw	a5,52(sp)
   14d78:	85e6                	mv	a1,s9
   14d7a:	4681                	li	a3,0
   14d7c:	17fd                	addi	a5,a5,-1
   14d7e:	4629                	li	a2,10
   14d80:	8522                	mv	a0,s0
   14d82:	da3e                	sw	a5,52(sp)
   14d84:	233000ef          	jal	157b6 <__multadd>
   14d88:	8caa                	mv	s9,a0
   14d8a:	c2050be3          	beqz	a0,149c0 <__gdtoa+0x540>
   14d8e:	47c6                	lw	a5,80(sp)
   14d90:	48e2                	lw	a7,24(sp)
   14d92:	50079a63          	bnez	a5,152a6 <__gdtoa+0xe26>
   14d96:	47f6                	lw	a5,92(sp)
   14d98:	14f05863          	blez	a5,14ee8 <__gdtoa+0xa68>
   14d9c:	d63e                	sw	a5,44(sp)
   14d9e:	5932                	lw	s2,44(sp)
   14da0:	8dc6                	mv	s11,a7
   14da2:	4685                	li	a3,1
   14da4:	89c6                	mv	s3,a7
   14da6:	a801                	j	14db6 <__gdtoa+0x936>
   14da8:	20f000ef          	jal	157b6 <__multadd>
   14dac:	8caa                	mv	s9,a0
   14dae:	c00509e3          	beqz	a0,149c0 <__gdtoa+0x540>
   14db2:	56b6                	lw	a3,108(sp)
   14db4:	0685                	addi	a3,a3,1
   14db6:	85ea                	mv	a1,s10
   14db8:	8566                	mv	a0,s9
   14dba:	d6b6                	sw	a3,108(sp)
   14dbc:	27a1                	jal	15504 <__quorem_D2A>
   14dbe:	03050313          	addi	t1,a0,48
   14dc2:	006d8023          	sb	t1,0(s11)
   14dc6:	57b6                	lw	a5,108(sp)
   14dc8:	4681                	li	a3,0
   14dca:	4629                	li	a2,10
   14dcc:	85e6                	mv	a1,s9
   14dce:	8522                	mv	a0,s0
   14dd0:	0d85                	addi	s11,s11,1
   14dd2:	fd27cbe3          	blt	a5,s2,14da8 <__gdtoa+0x928>
   14dd6:	88ce                	mv	a7,s3
   14dd8:	4981                	li	s3,0
   14dda:	5782                	lw	a5,32(sp)
   14ddc:	2c078263          	beqz	a5,150a0 <__gdtoa+0xc20>
   14de0:	4689                	li	a3,2
   14de2:	010ca603          	lw	a2,16(s9)
   14de6:	2ed78363          	beq	a5,a3,150cc <__gdtoa+0xc4c>
   14dea:	4685                	li	a3,1
   14dec:	1ac6c763          	blt	a3,a2,14f9a <__gdtoa+0xb1a>
   14df0:	014ca683          	lw	a3,20(s9)
   14df4:	1a069363          	bnez	a3,14f9a <__gdtoa+0xb1a>
   14df8:	00d036b3          	snez	a3,a3
   14dfc:	00469b13          	slli	s6,a3,0x4
   14e00:	03000593          	li	a1,48
   14e04:	fffdc783          	lbu	a5,-1(s11)
   14e08:	866e                	mv	a2,s11
   14e0a:	1dfd                	addi	s11,s11,-1
   14e0c:	feb78ce3          	beq	a5,a1,14e04 <__gdtoa+0x984>
   14e10:	bdd5                	j	14d04 <__gdtoa+0x884>
   14e12:	57b2                	lw	a5,44(sp)
   14e14:	5742                	lw	a4,48(sp)
   14e16:	fff78693          	addi	a3,a5,-1
   14e1a:	10d74463          	blt	a4,a3,14f22 <__gdtoa+0xaa2>
   14e1e:	40d70d33          	sub	s10,a4,a3
   14e22:	4407d263          	bgez	a5,15266 <__gdtoa+0xde6>
   14e26:	47e2                	lw	a5,24(sp)
   14e28:	5732                	lw	a4,44(sp)
   14e2a:	d682                	sw	zero,108(sp)
   14e2c:	8f99                	sub	a5,a5,a4
   14e2e:	dc3e                	sw	a5,56(sp)
   14e30:	b8f1                	j	1470c <__gdtoa+0x28c>
   14e32:	4789                	li	a5,2
   14e34:	9927d7e3          	bge	a5,s2,147c2 <__gdtoa+0x342>
   14e38:	85ea                	mv	a1,s10
   14e3a:	4681                	li	a3,0
   14e3c:	4615                	li	a2,5
   14e3e:	8522                	mv	a0,s0
   14e40:	c846                	sw	a7,16(sp)
   14e42:	175000ef          	jal	157b6 <__multadd>
   14e46:	85aa                	mv	a1,a0
   14e48:	b6050ce3          	beqz	a0,149c0 <__gdtoa+0x540>
   14e4c:	57b2                	lw	a5,44(sp)
   14e4e:	48c2                	lw	a7,16(sp)
   14e50:	e3f9                	bnez	a5,14f16 <__gdtoa+0xa96>
   14e52:	c82a                	sw	a0,16(sp)
   14e54:	8566                	mv	a0,s9
   14e56:	cc46                	sw	a7,24(sp)
   14e58:	7c9000ef          	jal	15e20 <__mcmp>
   14e5c:	45c2                	lw	a1,16(sp)
   14e5e:	48e2                	lw	a7,24(sp)
   14e60:	0aa05b63          	blez	a0,14f16 <__gdtoa+0xa96>
   14e64:	57d2                	lw	a5,52(sp)
   14e66:	00278913          	addi	s2,a5,2
   14e6a:	03100793          	li	a5,49
   14e6e:	00188613          	addi	a2,a7,1
   14e72:	00f88023          	sb	a5,0(a7)
   14e76:	02000b13          	li	s6,32
   14e7a:	8522                	mv	a0,s0
   14e7c:	d446                	sw	a7,40(sp)
   14e7e:	c832                	sw	a2,16(sp)
   14e80:	125000ef          	jal	157a4 <_Bfree>
   14e84:	4642                	lw	a2,16(sp)
   14e86:	58a2                	lw	a7,40(sp)
   14e88:	dc0c08e3          	beqz	s8,14c58 <__gdtoa+0x7d8>
   14e8c:	b55d                	j	14d32 <__gdtoa+0x8b2>
   14e8e:	4605                	li	a2,1
   14e90:	4585                	li	a1,1
   14e92:	fecff06f          	j	1467e <__gdtoa+0x1fe>
   14e96:	85aa                	mv	a1,a0
   14e98:	8642                	mv	a2,a6
   14e9a:	8522                	mv	a0,s0
   14e9c:	c0c6                	sw	a7,64(sp)
   14e9e:	d876                	sw	t4,48(sp)
   14ea0:	59f000ef          	jal	15c3e <__pow5mult>
   14ea4:	8d2a                	mv	s10,a0
   14ea6:	b0050de3          	beqz	a0,149c0 <__gdtoa+0x540>
   14eaa:	4685                	li	a3,1
   14eac:	5ec2                	lw	t4,48(sp)
   14eae:	4886                	lw	a7,64(sp)
   14eb0:	1526d063          	bge	a3,s2,14ff0 <__gdtoa+0xb70>
   14eb4:	010d2783          	lw	a5,16(s10)
   14eb8:	d846                	sw	a7,48(sp)
   14eba:	c876                	sw	t4,16(sp)
   14ebc:	078d                	addi	a5,a5,3
   14ebe:	078a                	slli	a5,a5,0x2
   14ec0:	97ea                	add	a5,a5,s10
   14ec2:	43c8                	lw	a0,4(a5)
   14ec4:	29f000ef          	jal	15962 <__hi0bits>
   14ec8:	58c2                	lw	a7,48(sp)
   14eca:	4ec2                	lw	t4,16(sp)
   14ecc:	8a2a                	mv	s4,a0
   14ece:	885a                	mv	a6,s6
   14ed0:	b0d9                	j	14796 <__gdtoa+0x316>
   14ed2:	4685                	li	a3,1
   14ed4:	f326cfe3          	blt	a3,s2,14e12 <__gdtoa+0x992>
   14ed8:	47e2                	lw	a5,24(sp)
   14eda:	5d42                	lw	s10,48(sp)
   14edc:	9eae                	add	t4,t4,a1
   14ede:	dc3e                	sw	a5,56(sp)
   14ee0:	97ae                	add	a5,a5,a1
   14ee2:	cc3e                	sw	a5,24(sp)
   14ee4:	829ff06f          	j	1470c <__gdtoa+0x28c>
   14ee8:	4789                	li	a5,2
   14eea:	4727ce63          	blt	a5,s2,15366 <__gdtoa+0xee6>
   14eee:	47f6                	lw	a5,92(sp)
   14ef0:	d63e                	sw	a5,44(sp)
   14ef2:	b575                	j	14d9e <__gdtoa+0x91e>
   14ef4:	57b2                	lw	a5,44(sp)
   14ef6:	ccf04fe3          	bgtz	a5,14bd4 <__gdtoa+0x754>
   14efa:	ef81                	bnez	a5,14f12 <__gdtoa+0xa92>
   14efc:	f001b787          	fld	fa5,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   14f00:	c87a                	sw	t5,16(sp)
   14f02:	ca7e                	sw	t6,20(sp)
   14f04:	12f77753          	fmul.d	fa4,fa4,fa5
   14f08:	27c2                	fld	fa5,16(sp)
   14f0a:	a2e787d3          	fle.d	a5,fa5,fa4
   14f0e:	38078663          	beqz	a5,1529a <__gdtoa+0xe1a>
   14f12:	4581                	li	a1,0
   14f14:	4c01                	li	s8,0
   14f16:	57a2                	lw	a5,40(sp)
   14f18:	8646                	mv	a2,a7
   14f1a:	4b41                	li	s6,16
   14f1c:	40f00933          	neg	s2,a5
   14f20:	bfa9                	j	14e7a <__gdtoa+0x9fa>
   14f22:	57c2                	lw	a5,48(sp)
   14f24:	4762                	lw	a4,24(sp)
   14f26:	4d01                	li	s10,0
   14f28:	40f68633          	sub	a2,a3,a5
   14f2c:	57b2                	lw	a5,44(sp)
   14f2e:	dc3a                	sw	a4,56(sp)
   14f30:	9832                	add	a6,a6,a2
   14f32:	d6be                	sw	a5,108(sp)
   14f34:	9ebe                	add	t4,t4,a5
   14f36:	97ba                	add	a5,a5,a4
   14f38:	cc3e                	sw	a5,24(sp)
   14f3a:	d836                	sw	a3,48(sp)
   14f3c:	fd0ff06f          	j	1470c <__gdtoa+0x28c>
   14f40:	85e2                	mv	a1,s8
   14f42:	866a                	mv	a2,s10
   14f44:	8522                	mv	a0,s0
   14f46:	ccc6                	sw	a7,88(sp)
   14f48:	c4f6                	sw	t4,72(sp)
   14f4a:	c0c2                	sw	a6,64(sp)
   14f4c:	4f3000ef          	jal	15c3e <__pow5mult>
   14f50:	8c2a                	mv	s8,a0
   14f52:	a60507e3          	beqz	a0,149c0 <__gdtoa+0x540>
   14f56:	85aa                	mv	a1,a0
   14f58:	8666                	mv	a2,s9
   14f5a:	8522                	mv	a0,s0
   14f5c:	34d000ef          	jal	15aa8 <__multiply>
   14f60:	8aaa                	mv	s5,a0
   14f62:	a4050fe3          	beqz	a0,149c0 <__gdtoa+0x540>
   14f66:	85e6                	mv	a1,s9
   14f68:	8522                	mv	a0,s0
   14f6a:	03b000ef          	jal	157a4 <_Bfree>
   14f6e:	57c2                	lw	a5,48(sp)
   14f70:	4806                	lw	a6,64(sp)
   14f72:	4ea6                	lw	t4,72(sp)
   14f74:	41a787b3          	sub	a5,a5,s10
   14f78:	d83e                	sw	a5,48(sp)
   14f7a:	48e6                	lw	a7,88(sp)
   14f7c:	8cd6                	mv	s9,s5
   14f7e:	fe078963          	beqz	a5,14770 <__gdtoa+0x2f0>
   14f82:	fd2ff06f          	j	14754 <__gdtoa+0x2d4>
   14f86:	89e2                	mv	s3,s8
   14f88:	86ee                	mv	a3,s11
   14f8a:	001d8913          	addi	s2,s11,1
   14f8e:	8c52                	mv	s8,s4
   14f90:	03900613          	li	a2,57
   14f94:	8dca                	mv	s11,s2
   14f96:	00c68023          	sb	a2,0(a3)
   14f9a:	03900593          	li	a1,57
   14f9e:	a019                	j	14fa4 <__gdtoa+0xb24>
   14fa0:	13b88f63          	beq	a7,s11,150de <__gdtoa+0xc5e>
   14fa4:	fffdc683          	lbu	a3,-1(s11)
   14fa8:	866e                	mv	a2,s11
   14faa:	1dfd                	addi	s11,s11,-1
   14fac:	feb68ae3          	beq	a3,a1,14fa0 <__gdtoa+0xb20>
   14fb0:	0685                	addi	a3,a3,1
   14fb2:	00dd8023          	sb	a3,0(s11)
   14fb6:	02000b13          	li	s6,32
   14fba:	b3a9                	j	14d04 <__gdtoa+0x884>
   14fbc:	85e2                	mv	a1,s8
   14fbe:	8522                	mv	a0,s0
   14fc0:	d446                	sw	a7,40(sp)
   14fc2:	c842                	sw	a6,16(sp)
   14fc4:	54f000ef          	jal	15d12 <__lshift>
   14fc8:	4842                	lw	a6,16(sp)
   14fca:	58a2                	lw	a7,40(sp)
   14fcc:	8c2a                	mv	s8,a0
   14fce:	800512e3          	bnez	a0,147d2 <__gdtoa+0x352>
   14fd2:	b2fd                	j	149c0 <__gdtoa+0x540>
   14fd4:	4785                	li	a5,1
   14fd6:	cc82                	sw	zero,88(sp)
   14fd8:	c8be                	sw	a5,80(sp)
   14fda:	e90ff06f          	j	1466a <__gdtoa+0x1ea>
   14fde:	4785                	li	a5,1
   14fe0:	c8be                	sw	a5,80(sp)
   14fe2:	e88ff06f          	j	1466a <__gdtoa+0x1ea>
   14fe6:	4785                	li	a5,1
   14fe8:	c8be                	sw	a5,80(sp)
   14fea:	b1f1                	j	14cb6 <__gdtoa+0x836>
   14fec:	c882                	sw	zero,80(sp)
   14fee:	b1e1                	j	14cb6 <__gdtoa+0x836>
   14ff0:	ecdd92e3          	bne	s11,a3,14eb4 <__gdtoa+0xa34>
   14ff4:	004a2783          	lw	a5,4(s4)
   14ff8:	4742                	lw	a4,16(sp)
   14ffa:	0785                	addi	a5,a5,1
   14ffc:	eae7dce3          	bge	a5,a4,14eb4 <__gdtoa+0xa34>
   15000:	47e2                	lw	a5,24(sp)
   15002:	0e85                	addi	t4,t4,1
   15004:	4b05                	li	s6,1
   15006:	0785                	addi	a5,a5,1
   15008:	cc3e                	sw	a5,24(sp)
   1500a:	b56d                	j	14eb4 <__gdtoa+0xa34>
   1500c:	004c2583          	lw	a1,4(s8)
   15010:	8522                	mv	a0,s0
   15012:	c846                	sw	a7,16(sp)
   15014:	2715                	jal	15738 <_Balloc>
   15016:	8a2a                	mv	s4,a0
   15018:	9a0504e3          	beqz	a0,149c0 <__gdtoa+0x540>
   1501c:	010c2603          	lw	a2,16(s8)
   15020:	00cc0593          	addi	a1,s8,12
   15024:	0531                	addi	a0,a0,12
   15026:	0609                	addi	a2,a2,2
   15028:	060a                	slli	a2,a2,0x2
   1502a:	f1bfe0ef          	jal	13f44 <memcpy>
   1502e:	85d2                	mv	a1,s4
   15030:	4605                	li	a2,1
   15032:	8522                	mv	a0,s0
   15034:	4df000ef          	jal	15d12 <__lshift>
   15038:	48c2                	lw	a7,16(sp)
   1503a:	8a2a                	mv	s4,a0
   1503c:	f8051e63          	bnez	a0,147d8 <__gdtoa+0x358>
   15040:	b241                	j	149c0 <__gdtoa+0x540>
   15042:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   15046:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   1504a:	3682                	fld	fa3,32(sp)
   1504c:	fcc00637          	lui	a2,0xfcc00
   15050:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15054:	bc3e                	fsd	fa5,56(sp)
   15056:	5562                	lw	a0,56(sp)
   15058:	55f2                	lw	a1,60(sp)
   1505a:	832a                	mv	t1,a0
   1505c:	962e                	add	a2,a2,a1
   1505e:	de32                	sw	a2,60(sp)
   15060:	f001b707          	fld	fa4,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   15064:	3782                	fld	fa5,32(sp)
   15066:	dc1a                	sw	t1,56(sp)
   15068:	0ae7f753          	fsub.d	fa4,fa5,fa4
   1506c:	37e2                	fld	fa5,56(sp)
   1506e:	a2e79653          	flt.d	a2,fa5,fa4
   15072:	1e061663          	bnez	a2,1525e <__gdtoa+0xdde>
   15076:	22f797d3          	fneg.d	fa5,fa5
   1507a:	a2f71653          	flt.d	a2,fa4,fa5
   1507e:	e8061ae3          	bnez	a2,14f12 <__gdtoa+0xa92>
   15082:	5f02                	lw	t5,32(sp)
   15084:	5f92                	lw	t6,36(sp)
   15086:	65ed                	lui	a1,0x1b
   15088:	280c4b63          	bltz	s8,1531e <__gdtoa+0xe9e>
   1508c:	57a2                	lw	a5,40(sp)
   1508e:	d002                	sw	zero,32(sp)
   15090:	8085b707          	fld	fa4,-2040(a1) # 1a808 <__mprec_tens>
   15094:	b407d0e3          	bgez	a5,14bd4 <__gdtoa+0x754>
   15098:	57b2                	lw	a5,44(sp)
   1509a:	b2079de3          	bnez	a5,14bd4 <__gdtoa+0x754>
   1509e:	bdb9                	j	14efc <__gdtoa+0xa7c>
   150a0:	85e6                	mv	a1,s9
   150a2:	4605                	li	a2,1
   150a4:	8522                	mv	a0,s0
   150a6:	c846                	sw	a7,16(sp)
   150a8:	d41a                	sw	t1,40(sp)
   150aa:	469000ef          	jal	15d12 <__lshift>
   150ae:	8caa                	mv	s9,a0
   150b0:	900508e3          	beqz	a0,149c0 <__gdtoa+0x540>
   150b4:	85ea                	mv	a1,s10
   150b6:	56b000ef          	jal	15e20 <__mcmp>
   150ba:	48c2                	lw	a7,16(sp)
   150bc:	eca04fe3          	bgtz	a0,14f9a <__gdtoa+0xb1a>
   150c0:	e511                	bnez	a0,150cc <__gdtoa+0xc4c>
   150c2:	5322                	lw	t1,40(sp)
   150c4:	00137313          	andi	t1,t1,1
   150c8:	ec0319e3          	bnez	t1,14f9a <__gdtoa+0xb1a>
   150cc:	010ca603          	lw	a2,16(s9)
   150d0:	4685                	li	a3,1
   150d2:	4b41                	li	s6,16
   150d4:	d2c6c6e3          	blt	a3,a2,14e00 <__gdtoa+0x980>
   150d8:	014ca683          	lw	a3,20(s9)
   150dc:	bb31                	j	14df8 <__gdtoa+0x978>
   150de:	57d2                	lw	a5,52(sp)
   150e0:	02000b13          	li	s6,32
   150e4:	0785                	addi	a5,a5,1
   150e6:	da3e                	sw	a5,52(sp)
   150e8:	03100793          	li	a5,49
   150ec:	00f88023          	sb	a5,0(a7)
   150f0:	b911                	j	14d04 <__gdtoa+0x884>
   150f2:	5782                	lw	a5,32(sp)
   150f4:	8926                	mv	s2,s1
   150f6:	835e                	mv	t1,s7
   150f8:	58a2                	lw	a7,40(sp)
   150fa:	4be2                	lw	s7,24(sp)
   150fc:	54b2                	lw	s1,44(sp)
   150fe:	cb91                	beqz	a5,15112 <__gdtoa+0xc92>
   15100:	010ca603          	lw	a2,16(s9)
   15104:	4685                	li	a3,1
   15106:	fcc6c163          	blt	a3,a2,148c8 <__gdtoa+0x448>
   1510a:	014ca683          	lw	a3,20(s9)
   1510e:	fa069d63          	bnez	a3,148c8 <__gdtoa+0x448>
   15112:	85e6                	mv	a1,s9
   15114:	4605                	li	a2,1
   15116:	8522                	mv	a0,s0
   15118:	d446                	sw	a7,40(sp)
   1511a:	c81a                	sw	t1,16(sp)
   1511c:	3f7000ef          	jal	15d12 <__lshift>
   15120:	8caa                	mv	s9,a0
   15122:	88050fe3          	beqz	a0,149c0 <__gdtoa+0x540>
   15126:	85ea                	mv	a1,s10
   15128:	4f9000ef          	jal	15e20 <__mcmp>
   1512c:	4342                	lw	t1,16(sp)
   1512e:	58a2                	lw	a7,40(sp)
   15130:	22a05e63          	blez	a0,1536c <__gdtoa+0xeec>
   15134:	03900693          	li	a3,57
   15138:	e4d307e3          	beq	t1,a3,14f86 <__gdtoa+0xb06>
   1513c:	02000793          	li	a5,32
   15140:	03190313          	addi	t1,s2,49
   15144:	d03e                	sw	a5,32(sp)
   15146:	b655                	j	14cea <__gdtoa+0x86a>
   15148:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   1514c:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   15150:	a2f715d3          	flt.d	a1,fa4,fa5
   15154:	9e059ae3          	bnez	a1,14b48 <__gdtoa+0x6c8>
   15158:	a2e7a5d3          	feq.d	a1,fa5,fa4
   1515c:	c581                	beqz	a1,15164 <__gdtoa+0xce4>
   1515e:	8b85                	andi	a5,a5,1
   15160:	9e0794e3          	bnez	a5,14b48 <__gdtoa+0x6c8>
   15164:	87b2                	mv	a5,a2
   15166:	4b41                	li	s6,16
   15168:	03000593          	li	a1,48
   1516c:	fff7c703          	lbu	a4,-1(a5)
   15170:	863e                	mv	a2,a5
   15172:	17fd                	addi	a5,a5,-1
   15174:	feb70ce3          	beq	a4,a1,1516c <__gdtoa+0xcec>
   15178:	892a                	mv	s2,a0
   1517a:	bcf9                	j	14c58 <__gdtoa+0x7d8>
   1517c:	03100693          	li	a3,49
   15180:	0505                	addi	a0,a0,1
   15182:	b2d5                	j	14b66 <__gdtoa+0x6e6>
   15184:	de32                	sw	a2,60(sp)
   15186:	dc1a                	sw	t1,56(sp)
   15188:	3762                	fld	fa4,56(sp)
   1518a:	de7e                	sw	t6,60(sp)
   1518c:	dc7a                	sw	t5,56(sp)
   1518e:	35e2                	fld	fa1,56(sp)
   15190:	12e7f653          	fmul.d	fa2,fa5,fa4
   15194:	ee01b707          	fld	fa4,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   15198:	4685                	li	a3,1
   1519a:	22b587d3          	fmv.d	fa5,fa1
   1519e:	d6b6                	sw	a3,108(sp)
   151a0:	8646                	mv	a2,a7
   151a2:	4f81                	li	t6,0
   151a4:	a029                	j	151ae <__gdtoa+0xd2e>
   151a6:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   151aa:	d6ba                	sw	a4,108(sp)
   151ac:	4f85                	li	t6,1
   151ae:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   151b2:	0605                	addi	a2,a2,1
   151b4:	03078693          	addi	a3,a5,48
   151b8:	0ff6f693          	zext.b	a3,a3
   151bc:	c791                	beqz	a5,151c8 <__gdtoa+0xd48>
   151be:	d20786d3          	fcvt.d.w	fa3,a5
   151c2:	4f85                	li	t6,1
   151c4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   151c8:	fed60fa3          	sb	a3,-1(a2)
   151cc:	57b6                	lw	a5,108(sp)
   151ce:	00178713          	addi	a4,a5,1
   151d2:	fca79ae3          	bne	a5,a0,151a6 <__gdtoa+0xd26>
   151d6:	000f8463          	beqz	t6,151de <__gdtoa+0xd5e>
   151da:	22f785d3          	fmv.d	fa1,fa5
   151de:	f081b787          	fld	fa5,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   151e2:	02f67753          	fadd.d	fa4,fa2,fa5
   151e6:	a2b71553          	flt.d	a0,fa4,fa1
   151ea:	0e051f63          	bnez	a0,152e8 <__gdtoa+0xe68>
   151ee:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   151f2:	a2f596d3          	flt.d	a3,fa1,fa5
   151f6:	12069763          	bnez	a3,15324 <__gdtoa+0xea4>
   151fa:	5f02                	lw	t5,32(sp)
   151fc:	5f92                	lw	t6,36(sp)
   151fe:	e80c57e3          	bgez	s8,1508c <__gdtoa+0xc0c>
   15202:	47e2                	lw	a5,24(sp)
   15204:	5d42                	lw	s10,48(sp)
   15206:	d002                	sw	zero,32(sp)
   15208:	dc3e                	sw	a5,56(sp)
   1520a:	4c01                	li	s8,0
   1520c:	d1aff06f          	j	14726 <__gdtoa+0x2a6>
   15210:	835e                	mv	t1,s7
   15212:	89e2                	mv	s3,s8
   15214:	58a2                	lw	a7,40(sp)
   15216:	4be2                	lw	s7,24(sp)
   15218:	54b2                	lw	s1,44(sp)
   1521a:	8c52                	mv	s8,s4
   1521c:	be7d                	j	14dda <__gdtoa+0x95a>
   1521e:	e20782e3          	beqz	a5,15042 <__gdtoa+0xbc2>
   15222:	4576                	lw	a0,92(sp)
   15224:	e4a05fe3          	blez	a0,15082 <__gdtoa+0xc02>
   15228:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   1522c:	53fd                	li	t2,-1
   1522e:	12f777d3          	fmul.d	fa5,fa4,fa5
   15232:	ee81b707          	fld	fa4,-280(gp) # 1b6f8 <__SDATA_BEGIN__+0x40>
   15236:	bc3e                	fsd	fa5,56(sp)
   15238:	36e2                	fld	fa3,56(sp)
   1523a:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   1523e:	fcc00637          	lui	a2,0xfcc00
   15242:	5f62                	lw	t5,56(sp)
   15244:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15248:	5ff2                	lw	t6,60(sp)
   1524a:	a0be                	fsd	fa5,64(sp)
   1524c:	4706                	lw	a4,64(sp)
   1524e:	4796                	lw	a5,68(sp)
   15250:	833a                	mv	t1,a4
   15252:	963e                	add	a2,a2,a5
   15254:	857ff06f          	j	14aaa <__gdtoa+0x62a>
   15258:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   1525c:	b0f5                	j	14b48 <__gdtoa+0x6c8>
   1525e:	4909                	li	s2,2
   15260:	4581                	li	a1,0
   15262:	4c01                	li	s8,0
   15264:	b119                	j	14e6a <__gdtoa+0x9ea>
   15266:	4762                	lw	a4,24(sp)
   15268:	d6be                	sw	a5,108(sp)
   1526a:	9ebe                	add	t4,t4,a5
   1526c:	97ba                	add	a5,a5,a4
   1526e:	dc3a                	sw	a4,56(sp)
   15270:	cc3e                	sw	a5,24(sp)
   15272:	c9aff06f          	j	1470c <__gdtoa+0x28c>
   15276:	835e                	mv	t1,s7
   15278:	03900693          	li	a3,57
   1527c:	58a2                	lw	a7,40(sp)
   1527e:	4be2                	lw	s7,24(sp)
   15280:	54b2                	lw	s1,44(sp)
   15282:	d0d302e3          	beq	t1,a3,14f86 <__gdtoa+0xb06>
   15286:	0305                	addi	t1,t1,1
   15288:	89e2                	mv	s3,s8
   1528a:	001d8613          	addi	a2,s11,1
   1528e:	006d8023          	sb	t1,0(s11)
   15292:	8c52                	mv	s8,s4
   15294:	02000b13          	li	s6,32
   15298:	b4b5                	j	14d04 <__gdtoa+0x884>
   1529a:	57d2                	lw	a5,52(sp)
   1529c:	4581                	li	a1,0
   1529e:	4c01                	li	s8,0
   152a0:	00278913          	addi	s2,a5,2
   152a4:	b6d9                	j	14e6a <__gdtoa+0x9ea>
   152a6:	85e2                	mv	a1,s8
   152a8:	4681                	li	a3,0
   152aa:	4629                	li	a2,10
   152ac:	8522                	mv	a0,s0
   152ae:	2321                	jal	157b6 <__multadd>
   152b0:	8c2a                	mv	s8,a0
   152b2:	f0050763          	beqz	a0,149c0 <__gdtoa+0x540>
   152b6:	47f6                	lw	a5,92(sp)
   152b8:	4842                	lw	a6,16(sp)
   152ba:	48e2                	lw	a7,24(sp)
   152bc:	00f05563          	blez	a5,152c6 <__gdtoa+0xe46>
   152c0:	d63e                	sw	a5,44(sp)
   152c2:	d06ff06f          	j	147c8 <__gdtoa+0x348>
   152c6:	4789                	li	a5,2
   152c8:	0927cf63          	blt	a5,s2,15366 <__gdtoa+0xee6>
   152cc:	47f6                	lw	a5,92(sp)
   152ce:	d63e                	sw	a5,44(sp)
   152d0:	cf8ff06f          	j	147c8 <__gdtoa+0x348>
   152d4:	d2000753          	fcvt.d.w	fa4,zero
   152d8:	00138913          	addi	s2,t2,1
   152dc:	a2e7ab53          	feq.d	s6,fa5,fa4
   152e0:	001b3b13          	seqz	s6,s6
   152e4:	0b12                	slli	s6,s6,0x4
   152e6:	ba8d                	j	14c58 <__gdtoa+0x7d8>
   152e8:	00138513          	addi	a0,t2,1
   152ec:	85dff06f          	j	14b48 <__gdtoa+0x6c8>
   152f0:	5f02                	lw	t5,32(sp)
   152f2:	5f92                	lw	t6,36(sp)
   152f4:	d80c5ce3          	bgez	s8,1508c <__gdtoa+0xc0c>
   152f8:	d002                	sw	zero,32(sp)
   152fa:	bccff06f          	j	146c6 <__gdtoa+0x246>
   152fe:	57b2                	lw	a5,44(sp)
   15300:	5742                	lw	a4,48(sp)
   15302:	fff78693          	addi	a3,a5,-1
   15306:	c0d74ee3          	blt	a4,a3,14f22 <__gdtoa+0xaa2>
   1530a:	4662                	lw	a2,24(sp)
   1530c:	9ebe                	add	t4,t4,a5
   1530e:	d6be                	sw	a5,108(sp)
   15310:	97b2                	add	a5,a5,a2
   15312:	dc32                	sw	a2,56(sp)
   15314:	40d70d33          	sub	s10,a4,a3
   15318:	cc3e                	sw	a5,24(sp)
   1531a:	bf2ff06f          	j	1470c <__gdtoa+0x28c>
   1531e:	d002                	sw	zero,32(sp)
   15320:	ba0ff06f          	j	146c0 <__gdtoa+0x240>
   15324:	d20007d3          	fcvt.d.w	fa5,zero
   15328:	87b2                	mv	a5,a2
   1532a:	00138513          	addi	a0,t2,1
   1532e:	a2f5ab53          	feq.d	s6,fa1,fa5
   15332:	001b3b13          	seqz	s6,s6
   15336:	0b12                	slli	s6,s6,0x4
   15338:	bd05                	j	15168 <__gdtoa+0xce8>
   1533a:	835e                	mv	t1,s7
   1533c:	03900693          	li	a3,57
   15340:	8926                	mv	s2,s1
   15342:	58a2                	lw	a7,40(sp)
   15344:	4be2                	lw	s7,24(sp)
   15346:	54b2                	lw	s1,44(sp)
   15348:	c2d30fe3          	beq	t1,a3,14f86 <__gdtoa+0xb06>
   1534c:	07505d63          	blez	s5,153c6 <__gdtoa+0xf46>
   15350:	03190313          	addi	t1,s2,49
   15354:	02000b13          	li	s6,32
   15358:	89e2                	mv	s3,s8
   1535a:	001d8613          	addi	a2,s11,1
   1535e:	006d8023          	sb	t1,0(s11)
   15362:	8c52                	mv	s8,s4
   15364:	b245                	j	14d04 <__gdtoa+0x884>
   15366:	47f6                	lw	a5,92(sp)
   15368:	d63e                	sw	a5,44(sp)
   1536a:	b4f9                	j	14e38 <__gdtoa+0x9b8>
   1536c:	e509                	bnez	a0,15376 <__gdtoa+0xef6>
   1536e:	00137693          	andi	a3,t1,1
   15372:	dc0691e3          	bnez	a3,15134 <__gdtoa+0xcb4>
   15376:	02000793          	li	a5,32
   1537a:	d03e                	sw	a5,32(sp)
   1537c:	b2bd                	j	14cea <__gdtoa+0x86a>
   1537e:	014ca683          	lw	a3,20(s9)
   15382:	96069ce3          	bnez	a3,14cfa <__gdtoa+0x87a>
   15386:	5b02                	lw	s6,32(sp)
   15388:	ba8d                	j	14cfa <__gdtoa+0x87a>
   1538a:	03900693          	li	a3,57
   1538e:	88da                	mv	a7,s6
   15390:	00da8b63          	beq	s5,a3,153a6 <__gdtoa+0xf26>
   15394:	001a8313          	addi	t1,s5,1
   15398:	02000b13          	li	s6,32
   1539c:	bab9                	j	14cfa <__gdtoa+0x87a>
   1539e:	4b41                	li	s6,16
   153a0:	001d8913          	addi	s2,s11,1
   153a4:	ba99                	j	14cfa <__gdtoa+0x87a>
   153a6:	89e2                	mv	s3,s8
   153a8:	86ee                	mv	a3,s11
   153aa:	8c52                	mv	s8,s4
   153ac:	b6d5                	j	14f90 <__gdtoa+0xb10>
   153ae:	010ca603          	lw	a2,16(s9)
   153b2:	4685                	li	a3,1
   153b4:	d0c6ca63          	blt	a3,a2,148c8 <__gdtoa+0x448>
   153b8:	014ca683          	lw	a3,20(s9)
   153bc:	d0069663          	bnez	a3,148c8 <__gdtoa+0x448>
   153c0:	001d8913          	addi	s2,s11,1
   153c4:	ba1d                	j	14cfa <__gdtoa+0x87a>
   153c6:	010ca603          	lw	a2,16(s9)
   153ca:	4685                	li	a3,1
   153cc:	4b41                	li	s6,16
   153ce:	f8c6c5e3          	blt	a3,a2,15358 <__gdtoa+0xed8>
   153d2:	014cab03          	lw	s6,20(s9)
   153d6:	01603b33          	snez	s6,s6
   153da:	0b12                	slli	s6,s6,0x4
   153dc:	bfb5                	j	15358 <__gdtoa+0xed8>
   153de:	000ace63          	bltz	s5,153fa <__gdtoa+0xf7a>
   153e2:	01596ab3          	or	s5,s2,s5
   153e6:	000a9663          	bnez	s5,153f2 <__gdtoa+0xf72>
   153ea:	0009a783          	lw	a5,0(s3)
   153ee:	8b85                	andi	a5,a5,1
   153f0:	c789                	beqz	a5,153fa <__gdtoa+0xf7a>
   153f2:	c0d05c63          	blez	a3,1480a <__gdtoa+0x38a>
   153f6:	c0cff06f          	j	14802 <__gdtoa+0x382>
   153fa:	5782                	lw	a5,32(sp)
   153fc:	8926                	mv	s2,s1
   153fe:	835e                	mv	t1,s7
   15400:	58a2                	lw	a7,40(sp)
   15402:	4be2                	lw	s7,24(sp)
   15404:	54b2                	lw	s1,44(sp)
   15406:	c385                	beqz	a5,15426 <__gdtoa+0xfa6>
   15408:	010ca583          	lw	a1,16(s9)
   1540c:	4605                	li	a2,1
   1540e:	cab64d63          	blt	a2,a1,148c8 <__gdtoa+0x448>
   15412:	014ca603          	lw	a2,20(s9)
   15416:	ca061963          	bnez	a2,148c8 <__gdtoa+0x448>
   1541a:	ced04ce3          	bgtz	a3,15112 <__gdtoa+0xc92>
   1541e:	4b01                	li	s6,0
   15420:	001d8913          	addi	s2,s11,1
   15424:	b8d9                	j	14cfa <__gdtoa+0x87a>
   15426:	8cd052e3          	blez	a3,14cea <__gdtoa+0x86a>
   1542a:	b1e5                	j	15112 <__gdtoa+0xc92>

0001542c <__rv_alloc_D2A.part.0>:
   1542c:	66e9                	lui	a3,0x1a
   1542e:	6569                	lui	a0,0x1a
   15430:	1141                	addi	sp,sp,-16
   15432:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   15436:	4601                	li	a2,0
   15438:	03900593          	li	a1,57
   1543c:	47450513          	addi	a0,a0,1140 # 1a474 <__clzsi2+0xea>
   15440:	c606                	sw	ra,12(sp)
   15442:	68a010ef          	jal	16acc <__assert_func>

00015446 <__rv_alloc_D2A>:
   15446:	1141                	addi	sp,sp,-16
   15448:	c422                	sw	s0,8(sp)
   1544a:	c606                	sw	ra,12(sp)
   1544c:	46dd                	li	a3,23
   1544e:	842a                	mv	s0,a0
   15450:	4705                	li	a4,1
   15452:	4791                	li	a5,4
   15454:	02b6f363          	bgeu	a3,a1,1547a <__rv_alloc_D2A+0x34>
   15458:	0786                	slli	a5,a5,0x1
   1545a:	01478693          	addi	a3,a5,20
   1545e:	863a                	mv	a2,a4
   15460:	0705                	addi	a4,a4,1
   15462:	fed5fbe3          	bgeu	a1,a3,15458 <__rv_alloc_D2A+0x12>
   15466:	85b2                	mv	a1,a2
   15468:	dc50                	sw	a2,60(s0)
   1546a:	8522                	mv	a0,s0
   1546c:	24f1                	jal	15738 <_Balloc>
   1546e:	c911                	beqz	a0,15482 <__rv_alloc_D2A+0x3c>
   15470:	40b2                	lw	ra,12(sp)
   15472:	dc08                	sw	a0,56(s0)
   15474:	4422                	lw	s0,8(sp)
   15476:	0141                	addi	sp,sp,16
   15478:	8082                	ret
   1547a:	02052e23          	sw	zero,60(a0)
   1547e:	4581                	li	a1,0
   15480:	b7ed                	j	1546a <__rv_alloc_D2A+0x24>
   15482:	376d                	jal	1542c <__rv_alloc_D2A.part.0>

00015484 <__nrv_alloc_D2A>:
   15484:	1141                	addi	sp,sp,-16
   15486:	c422                	sw	s0,8(sp)
   15488:	c226                	sw	s1,4(sp)
   1548a:	c04a                	sw	s2,0(sp)
   1548c:	c606                	sw	ra,12(sp)
   1548e:	485d                	li	a6,23
   15490:	84aa                	mv	s1,a0
   15492:	842e                	mv	s0,a1
   15494:	8932                	mv	s2,a2
   15496:	4705                	li	a4,1
   15498:	4791                	li	a5,4
   1549a:	04d87763          	bgeu	a6,a3,154e8 <__nrv_alloc_D2A+0x64>
   1549e:	0786                	slli	a5,a5,0x1
   154a0:	01478813          	addi	a6,a5,20
   154a4:	85ba                	mv	a1,a4
   154a6:	0705                	addi	a4,a4,1
   154a8:	ff06fbe3          	bgeu	a3,a6,1549e <__nrv_alloc_D2A+0x1a>
   154ac:	dccc                	sw	a1,60(s1)
   154ae:	8526                	mv	a0,s1
   154b0:	2461                	jal	15738 <_Balloc>
   154b2:	c129                	beqz	a0,154f4 <__nrv_alloc_D2A+0x70>
   154b4:	dc88                	sw	a0,56(s1)
   154b6:	00044783          	lbu	a5,0(s0)
   154ba:	00140593          	addi	a1,s0,1
   154be:	00f50023          	sb	a5,0(a0)
   154c2:	c79d                	beqz	a5,154f0 <__nrv_alloc_D2A+0x6c>
   154c4:	87aa                	mv	a5,a0
   154c6:	0005c703          	lbu	a4,0(a1)
   154ca:	0785                	addi	a5,a5,1
   154cc:	0585                	addi	a1,a1,1
   154ce:	00e78023          	sb	a4,0(a5)
   154d2:	fb75                	bnez	a4,154c6 <__nrv_alloc_D2A+0x42>
   154d4:	00090463          	beqz	s2,154dc <__nrv_alloc_D2A+0x58>
   154d8:	00f92023          	sw	a5,0(s2)
   154dc:	40b2                	lw	ra,12(sp)
   154de:	4422                	lw	s0,8(sp)
   154e0:	4492                	lw	s1,4(sp)
   154e2:	4902                	lw	s2,0(sp)
   154e4:	0141                	addi	sp,sp,16
   154e6:	8082                	ret
   154e8:	02052e23          	sw	zero,60(a0)
   154ec:	4581                	li	a1,0
   154ee:	b7c1                	j	154ae <__nrv_alloc_D2A+0x2a>
   154f0:	87aa                	mv	a5,a0
   154f2:	b7cd                	j	154d4 <__nrv_alloc_D2A+0x50>
   154f4:	3f25                	jal	1542c <__rv_alloc_D2A.part.0>

000154f6 <__freedtoa>:
   154f6:	5d54                	lw	a3,60(a0)
   154f8:	4705                	li	a4,1
   154fa:	00d71733          	sll	a4,a4,a3
   154fe:	c1d4                	sw	a3,4(a1)
   15500:	c598                	sw	a4,8(a1)
   15502:	a44d                	j	157a4 <_Bfree>

00015504 <__quorem_D2A>:
   15504:	1101                	addi	sp,sp,-32
   15506:	ca26                	sw	s1,20(sp)
   15508:	491c                	lw	a5,16(a0)
   1550a:	4984                	lw	s1,16(a1)
   1550c:	ce06                	sw	ra,28(sp)
   1550e:	1497c163          	blt	a5,s1,15650 <__quorem_D2A+0x14c>
   15512:	14fd                	addi	s1,s1,-1
   15514:	00249313          	slli	t1,s1,0x2
   15518:	cc22                	sw	s0,24(sp)
   1551a:	01458413          	addi	s0,a1,20
   1551e:	c64e                	sw	s3,12(sp)
   15520:	c452                	sw	s4,8(sp)
   15522:	006409b3          	add	s3,s0,t1
   15526:	01450a13          	addi	s4,a0,20
   1552a:	0009a783          	lw	a5,0(s3)
   1552e:	9352                	add	t1,t1,s4
   15530:	00032703          	lw	a4,0(t1)
   15534:	c84a                	sw	s2,16(sp)
   15536:	c256                	sw	s5,4(sp)
   15538:	0785                	addi	a5,a5,1
   1553a:	02f75933          	divu	s2,a4,a5
   1553e:	8aaa                	mv	s5,a0
   15540:	08f76663          	bltu	a4,a5,155cc <__quorem_D2A+0xc8>
   15544:	6541                	lui	a0,0x10
   15546:	88a2                	mv	a7,s0
   15548:	8852                	mv	a6,s4
   1554a:	4f01                	li	t5,0
   1554c:	4e81                	li	t4,0
   1554e:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15550:	0008a783          	lw	a5,0(a7)
   15554:	00082603          	lw	a2,0(a6)
   15558:	0811                	addi	a6,a6,4
   1555a:	00a7f6b3          	and	a3,a5,a0
   1555e:	83c1                	srli	a5,a5,0x10
   15560:	00a67733          	and	a4,a2,a0
   15564:	01065e13          	srli	t3,a2,0x10
   15568:	0891                	addi	a7,a7,4
   1556a:	032686b3          	mul	a3,a3,s2
   1556e:	032787b3          	mul	a5,a5,s2
   15572:	96fa                	add	a3,a3,t5
   15574:	00a6f633          	and	a2,a3,a0
   15578:	8f11                	sub	a4,a4,a2
   1557a:	41d70733          	sub	a4,a4,t4
   1557e:	82c1                	srli	a3,a3,0x10
   15580:	01075613          	srli	a2,a4,0x10
   15584:	8a05                	andi	a2,a2,1
   15586:	8f69                	and	a4,a4,a0
   15588:	97b6                	add	a5,a5,a3
   1558a:	00a7f6b3          	and	a3,a5,a0
   1558e:	9636                	add	a2,a2,a3
   15590:	40ce06b3          	sub	a3,t3,a2
   15594:	01069613          	slli	a2,a3,0x10
   15598:	8f51                	or	a4,a4,a2
   1559a:	82c1                	srli	a3,a3,0x10
   1559c:	fee82e23          	sw	a4,-4(a6)
   155a0:	0107df13          	srli	t5,a5,0x10
   155a4:	0016fe93          	andi	t4,a3,1
   155a8:	fb19f4e3          	bgeu	s3,a7,15550 <__quorem_D2A+0x4c>
   155ac:	00032783          	lw	a5,0(t1)
   155b0:	ef91                	bnez	a5,155cc <__quorem_D2A+0xc8>
   155b2:	1371                	addi	t1,t1,-4
   155b4:	006a6663          	bltu	s4,t1,155c0 <__quorem_D2A+0xbc>
   155b8:	a801                	j	155c8 <__quorem_D2A+0xc4>
   155ba:	14fd                	addi	s1,s1,-1
   155bc:	006a7663          	bgeu	s4,t1,155c8 <__quorem_D2A+0xc4>
   155c0:	00032783          	lw	a5,0(t1)
   155c4:	1371                	addi	t1,t1,-4
   155c6:	dbf5                	beqz	a5,155ba <__quorem_D2A+0xb6>
   155c8:	009aa823          	sw	s1,16(s5)
   155cc:	8556                	mv	a0,s5
   155ce:	053000ef          	jal	15e20 <__mcmp>
   155d2:	06054563          	bltz	a0,1563c <__quorem_D2A+0x138>
   155d6:	6541                	lui	a0,0x10
   155d8:	85d2                	mv	a1,s4
   155da:	4681                	li	a3,0
   155dc:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   155de:	419c                	lw	a5,0(a1)
   155e0:	4010                	lw	a2,0(s0)
   155e2:	0591                	addi	a1,a1,4
   155e4:	00a7f733          	and	a4,a5,a0
   155e8:	00a67833          	and	a6,a2,a0
   155ec:	41070733          	sub	a4,a4,a6
   155f0:	8f15                	sub	a4,a4,a3
   155f2:	01075693          	srli	a3,a4,0x10
   155f6:	8a85                	andi	a3,a3,1
   155f8:	8241                	srli	a2,a2,0x10
   155fa:	96b2                	add	a3,a3,a2
   155fc:	83c1                	srli	a5,a5,0x10
   155fe:	8f95                	sub	a5,a5,a3
   15600:	01079693          	slli	a3,a5,0x10
   15604:	8f69                	and	a4,a4,a0
   15606:	8f55                	or	a4,a4,a3
   15608:	83c1                	srli	a5,a5,0x10
   1560a:	0411                	addi	s0,s0,4
   1560c:	fee5ae23          	sw	a4,-4(a1)
   15610:	0017f693          	andi	a3,a5,1
   15614:	fc89f5e3          	bgeu	s3,s0,155de <__quorem_D2A+0xda>
   15618:	00249793          	slli	a5,s1,0x2
   1561c:	97d2                	add	a5,a5,s4
   1561e:	4398                	lw	a4,0(a5)
   15620:	ef09                	bnez	a4,1563a <__quorem_D2A+0x136>
   15622:	17f1                	addi	a5,a5,-4
   15624:	00fa6663          	bltu	s4,a5,15630 <__quorem_D2A+0x12c>
   15628:	a039                	j	15636 <__quorem_D2A+0x132>
   1562a:	14fd                	addi	s1,s1,-1
   1562c:	00fa7563          	bgeu	s4,a5,15636 <__quorem_D2A+0x132>
   15630:	4398                	lw	a4,0(a5)
   15632:	17f1                	addi	a5,a5,-4
   15634:	db7d                	beqz	a4,1562a <__quorem_D2A+0x126>
   15636:	009aa823          	sw	s1,16(s5)
   1563a:	0905                	addi	s2,s2,1
   1563c:	4462                	lw	s0,24(sp)
   1563e:	40f2                	lw	ra,28(sp)
   15640:	49b2                	lw	s3,12(sp)
   15642:	4a22                	lw	s4,8(sp)
   15644:	4a92                	lw	s5,4(sp)
   15646:	44d2                	lw	s1,20(sp)
   15648:	854a                	mv	a0,s2
   1564a:	4942                	lw	s2,16(sp)
   1564c:	6105                	addi	sp,sp,32
   1564e:	8082                	ret
   15650:	40f2                	lw	ra,28(sp)
   15652:	44d2                	lw	s1,20(sp)
   15654:	4501                	li	a0,0
   15656:	6105                	addi	sp,sp,32
   15658:	8082                	ret

0001565a <__rshift_D2A>:
   1565a:	01052803          	lw	a6,16(a0)
   1565e:	4055de13          	srai	t3,a1,0x5
   15662:	010e4763          	blt	t3,a6,15670 <__rshift_D2A+0x16>
   15666:	00052823          	sw	zero,16(a0)
   1566a:	00052a23          	sw	zero,20(a0)
   1566e:	8082                	ret
   15670:	01450313          	addi	t1,a0,20
   15674:	00281613          	slli	a2,a6,0x2
   15678:	002e1793          	slli	a5,t3,0x2
   1567c:	89fd                	andi	a1,a1,31
   1567e:	961a                	add	a2,a2,t1
   15680:	979a                	add	a5,a5,t1
   15682:	c5a1                	beqz	a1,156ca <__rshift_D2A+0x70>
   15684:	4394                	lw	a3,0(a5)
   15686:	02000e93          	li	t4,32
   1568a:	0791                	addi	a5,a5,4
   1568c:	40be8eb3          	sub	t4,t4,a1
   15690:	00b6d6b3          	srl	a3,a3,a1
   15694:	06c7f063          	bgeu	a5,a2,156f4 <__rshift_D2A+0x9a>
   15698:	889a                	mv	a7,t1
   1569a:	4398                	lw	a4,0(a5)
   1569c:	0891                	addi	a7,a7,4
   1569e:	0791                	addi	a5,a5,4
   156a0:	01d71733          	sll	a4,a4,t4
   156a4:	8f55                	or	a4,a4,a3
   156a6:	fee8ae23          	sw	a4,-4(a7)
   156aa:	ffc7a683          	lw	a3,-4(a5)
   156ae:	00b6d6b3          	srl	a3,a3,a1
   156b2:	fec7e4e3          	bltu	a5,a2,1569a <__rshift_D2A+0x40>
   156b6:	41c80833          	sub	a6,a6,t3
   156ba:	080a                	slli	a6,a6,0x2
   156bc:	1871                	addi	a6,a6,-4
   156be:	981a                	add	a6,a6,t1
   156c0:	00d82023          	sw	a3,0(a6)
   156c4:	c28d                	beqz	a3,156e6 <__rshift_D2A+0x8c>
   156c6:	0811                	addi	a6,a6,4
   156c8:	a839                	j	156e6 <__rshift_D2A+0x8c>
   156ca:	871a                	mv	a4,t1
   156cc:	f8c7fde3          	bgeu	a5,a2,15666 <__rshift_D2A+0xc>
   156d0:	4394                	lw	a3,0(a5)
   156d2:	0791                	addi	a5,a5,4
   156d4:	0711                	addi	a4,a4,4
   156d6:	fed72e23          	sw	a3,-4(a4)
   156da:	fec7ebe3          	bltu	a5,a2,156d0 <__rshift_D2A+0x76>
   156de:	41c80833          	sub	a6,a6,t3
   156e2:	080a                	slli	a6,a6,0x2
   156e4:	981a                	add	a6,a6,t1
   156e6:	406807b3          	sub	a5,a6,t1
   156ea:	8789                	srai	a5,a5,0x2
   156ec:	c91c                	sw	a5,16(a0)
   156ee:	f6680ee3          	beq	a6,t1,1566a <__rshift_D2A+0x10>
   156f2:	8082                	ret
   156f4:	c954                	sw	a3,20(a0)
   156f6:	daa5                	beqz	a3,15666 <__rshift_D2A+0xc>
   156f8:	881a                	mv	a6,t1
   156fa:	0811                	addi	a6,a6,4
   156fc:	b7ed                	j	156e6 <__rshift_D2A+0x8c>

000156fe <__trailz_D2A>:
   156fe:	4918                	lw	a4,16(a0)
   15700:	1101                	addi	sp,sp,-32
   15702:	0551                	addi	a0,a0,20
   15704:	070a                	slli	a4,a4,0x2
   15706:	cc22                	sw	s0,24(sp)
   15708:	ce06                	sw	ra,28(sp)
   1570a:	972a                	add	a4,a4,a0
   1570c:	4401                	li	s0,0
   1570e:	00e56863          	bltu	a0,a4,1571e <__trailz_D2A+0x20>
   15712:	a831                	j	1572e <__trailz_D2A+0x30>
   15714:	0511                	addi	a0,a0,4
   15716:	02040413          	addi	s0,s0,32
   1571a:	00e57a63          	bgeu	a0,a4,1572e <__trailz_D2A+0x30>
   1571e:	411c                	lw	a5,0(a0)
   15720:	dbf5                	beqz	a5,15714 <__trailz_D2A+0x16>
   15722:	00e57663          	bgeu	a0,a4,1572e <__trailz_D2A+0x30>
   15726:	0068                	addi	a0,sp,12
   15728:	c63e                	sw	a5,12(sp)
   1572a:	2471                	jal	159b6 <__lo0bits>
   1572c:	942a                	add	s0,s0,a0
   1572e:	40f2                	lw	ra,28(sp)
   15730:	8522                	mv	a0,s0
   15732:	4462                	lw	s0,24(sp)
   15734:	6105                	addi	sp,sp,32
   15736:	8082                	ret

00015738 <_Balloc>:
   15738:	417c                	lw	a5,68(a0)
   1573a:	1141                	addi	sp,sp,-16
   1573c:	c422                	sw	s0,8(sp)
   1573e:	c226                	sw	s1,4(sp)
   15740:	c606                	sw	ra,12(sp)
   15742:	842a                	mv	s0,a0
   15744:	84ae                	mv	s1,a1
   15746:	c38d                	beqz	a5,15768 <_Balloc+0x30>
   15748:	00249713          	slli	a4,s1,0x2
   1574c:	97ba                	add	a5,a5,a4
   1574e:	4388                	lw	a0,0(a5)
   15750:	c515                	beqz	a0,1577c <_Balloc+0x44>
   15752:	4118                	lw	a4,0(a0)
   15754:	c398                	sw	a4,0(a5)
   15756:	00052823          	sw	zero,16(a0)
   1575a:	00052623          	sw	zero,12(a0)
   1575e:	40b2                	lw	ra,12(sp)
   15760:	4422                	lw	s0,8(sp)
   15762:	4492                	lw	s1,4(sp)
   15764:	0141                	addi	sp,sp,16
   15766:	8082                	ret
   15768:	02100613          	li	a2,33
   1576c:	4591                	li	a1,4
   1576e:	3a4010ef          	jal	16b12 <_calloc_r>
   15772:	c068                	sw	a0,68(s0)
   15774:	87aa                	mv	a5,a0
   15776:	f969                	bnez	a0,15748 <_Balloc+0x10>
   15778:	4501                	li	a0,0
   1577a:	b7d5                	j	1575e <_Balloc+0x26>
   1577c:	c04a                	sw	s2,0(sp)
   1577e:	4905                	li	s2,1
   15780:	00991933          	sll	s2,s2,s1
   15784:	00590613          	addi	a2,s2,5
   15788:	060a                	slli	a2,a2,0x2
   1578a:	4585                	li	a1,1
   1578c:	8522                	mv	a0,s0
   1578e:	384010ef          	jal	16b12 <_calloc_r>
   15792:	c511                	beqz	a0,1579e <_Balloc+0x66>
   15794:	01252423          	sw	s2,8(a0)
   15798:	c144                	sw	s1,4(a0)
   1579a:	4902                	lw	s2,0(sp)
   1579c:	bf6d                	j	15756 <_Balloc+0x1e>
   1579e:	4902                	lw	s2,0(sp)
   157a0:	4501                	li	a0,0
   157a2:	bf75                	j	1575e <_Balloc+0x26>

000157a4 <_Bfree>:
   157a4:	c981                	beqz	a1,157b4 <_Bfree+0x10>
   157a6:	41d8                	lw	a4,4(a1)
   157a8:	417c                	lw	a5,68(a0)
   157aa:	070a                	slli	a4,a4,0x2
   157ac:	97ba                	add	a5,a5,a4
   157ae:	4398                	lw	a4,0(a5)
   157b0:	c198                	sw	a4,0(a1)
   157b2:	c38c                	sw	a1,0(a5)
   157b4:	8082                	ret

000157b6 <__multadd>:
   157b6:	1101                	addi	sp,sp,-32
   157b8:	ca26                	sw	s1,20(sp)
   157ba:	4984                	lw	s1,16(a1)
   157bc:	6341                	lui	t1,0x10
   157be:	cc22                	sw	s0,24(sp)
   157c0:	c84a                	sw	s2,16(sp)
   157c2:	c64e                	sw	s3,12(sp)
   157c4:	ce06                	sw	ra,28(sp)
   157c6:	892e                	mv	s2,a1
   157c8:	89aa                	mv	s3,a0
   157ca:	8436                	mv	s0,a3
   157cc:	01458813          	addi	a6,a1,20
   157d0:	4881                	li	a7,0
   157d2:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   157d4:	00082783          	lw	a5,0(a6)
   157d8:	0811                	addi	a6,a6,4
   157da:	0885                	addi	a7,a7,1
   157dc:	0067f733          	and	a4,a5,t1
   157e0:	02c70733          	mul	a4,a4,a2
   157e4:	0107d693          	srli	a3,a5,0x10
   157e8:	02c686b3          	mul	a3,a3,a2
   157ec:	008707b3          	add	a5,a4,s0
   157f0:	0107d713          	srli	a4,a5,0x10
   157f4:	0067f7b3          	and	a5,a5,t1
   157f8:	96ba                	add	a3,a3,a4
   157fa:	01069713          	slli	a4,a3,0x10
   157fe:	97ba                	add	a5,a5,a4
   15800:	fef82e23          	sw	a5,-4(a6)
   15804:	0106d413          	srli	s0,a3,0x10
   15808:	fc98c6e3          	blt	a7,s1,157d4 <__multadd+0x1e>
   1580c:	cc09                	beqz	s0,15826 <__multadd+0x70>
   1580e:	00892783          	lw	a5,8(s2)
   15812:	02f4d263          	bge	s1,a5,15836 <__multadd+0x80>
   15816:	00448793          	addi	a5,s1,4
   1581a:	078a                	slli	a5,a5,0x2
   1581c:	97ca                	add	a5,a5,s2
   1581e:	c3c0                	sw	s0,4(a5)
   15820:	0485                	addi	s1,s1,1
   15822:	00992823          	sw	s1,16(s2)
   15826:	40f2                	lw	ra,28(sp)
   15828:	4462                	lw	s0,24(sp)
   1582a:	44d2                	lw	s1,20(sp)
   1582c:	49b2                	lw	s3,12(sp)
   1582e:	854a                	mv	a0,s2
   15830:	4942                	lw	s2,16(sp)
   15832:	6105                	addi	sp,sp,32
   15834:	8082                	ret
   15836:	00492583          	lw	a1,4(s2)
   1583a:	854e                	mv	a0,s3
   1583c:	c452                	sw	s4,8(sp)
   1583e:	0585                	addi	a1,a1,1
   15840:	ef9ff0ef          	jal	15738 <_Balloc>
   15844:	8a2a                	mv	s4,a0
   15846:	c121                	beqz	a0,15886 <__multadd+0xd0>
   15848:	01092603          	lw	a2,16(s2)
   1584c:	00c90593          	addi	a1,s2,12
   15850:	0531                	addi	a0,a0,12
   15852:	0609                	addi	a2,a2,2
   15854:	060a                	slli	a2,a2,0x2
   15856:	eeefe0ef          	jal	13f44 <memcpy>
   1585a:	00492703          	lw	a4,4(s2)
   1585e:	0449a783          	lw	a5,68(s3)
   15862:	070a                	slli	a4,a4,0x2
   15864:	97ba                	add	a5,a5,a4
   15866:	4398                	lw	a4,0(a5)
   15868:	00e92023          	sw	a4,0(s2)
   1586c:	0127a023          	sw	s2,0(a5)
   15870:	00448793          	addi	a5,s1,4
   15874:	8952                	mv	s2,s4
   15876:	078a                	slli	a5,a5,0x2
   15878:	97ca                	add	a5,a5,s2
   1587a:	4a22                	lw	s4,8(sp)
   1587c:	0485                	addi	s1,s1,1
   1587e:	c3c0                	sw	s0,4(a5)
   15880:	00992823          	sw	s1,16(s2)
   15884:	b74d                	j	15826 <__multadd+0x70>
   15886:	66e9                	lui	a3,0x1a
   15888:	6569                	lui	a0,0x1a
   1588a:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   1588e:	4601                	li	a2,0
   15890:	0ba00593          	li	a1,186
   15894:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   15898:	234010ef          	jal	16acc <__assert_func>

0001589c <__s2b>:
   1589c:	1101                	addi	sp,sp,-32
   1589e:	cc22                	sw	s0,24(sp)
   158a0:	ca26                	sw	s1,20(sp)
   158a2:	c84a                	sw	s2,16(sp)
   158a4:	c64e                	sw	s3,12(sp)
   158a6:	c452                	sw	s4,8(sp)
   158a8:	89b6                	mv	s3,a3
   158aa:	47a5                	li	a5,9
   158ac:	06a1                	addi	a3,a3,8
   158ae:	ce06                	sw	ra,28(sp)
   158b0:	02f6c6b3          	div	a3,a3,a5
   158b4:	892a                	mv	s2,a0
   158b6:	842e                	mv	s0,a1
   158b8:	8a32                	mv	s4,a2
   158ba:	84ba                	mv	s1,a4
   158bc:	0937d563          	bge	a5,s3,15946 <__s2b+0xaa>
   158c0:	4785                	li	a5,1
   158c2:	4581                	li	a1,0
   158c4:	0786                	slli	a5,a5,0x1
   158c6:	0585                	addi	a1,a1,1
   158c8:	fed7cee3          	blt	a5,a3,158c4 <__s2b+0x28>
   158cc:	854a                	mv	a0,s2
   158ce:	e6bff0ef          	jal	15738 <_Balloc>
   158d2:	85aa                	mv	a1,a0
   158d4:	c93d                	beqz	a0,1594a <__s2b+0xae>
   158d6:	4785                	li	a5,1
   158d8:	c91c                	sw	a5,16(a0)
   158da:	c944                	sw	s1,20(a0)
   158dc:	47a5                	li	a5,9
   158de:	0747d163          	bge	a5,s4,15940 <__s2b+0xa4>
   158e2:	c256                	sw	s5,4(sp)
   158e4:	00940a93          	addi	s5,s0,9
   158e8:	84d6                	mv	s1,s5
   158ea:	9452                	add	s0,s0,s4
   158ec:	0004c683          	lbu	a3,0(s1)
   158f0:	4629                	li	a2,10
   158f2:	854a                	mv	a0,s2
   158f4:	fd068693          	addi	a3,a3,-48
   158f8:	ebfff0ef          	jal	157b6 <__multadd>
   158fc:	0485                	addi	s1,s1,1
   158fe:	85aa                	mv	a1,a0
   15900:	fe8496e3          	bne	s1,s0,158ec <__s2b+0x50>
   15904:	ff8a0413          	addi	s0,s4,-8
   15908:	9456                	add	s0,s0,s5
   1590a:	4a92                	lw	s5,4(sp)
   1590c:	033a5163          	bge	s4,s3,1592e <__s2b+0x92>
   15910:	414989b3          	sub	s3,s3,s4
   15914:	99a2                	add	s3,s3,s0
   15916:	00044683          	lbu	a3,0(s0)
   1591a:	4629                	li	a2,10
   1591c:	854a                	mv	a0,s2
   1591e:	fd068693          	addi	a3,a3,-48
   15922:	e95ff0ef          	jal	157b6 <__multadd>
   15926:	0405                	addi	s0,s0,1
   15928:	85aa                	mv	a1,a0
   1592a:	ff3416e3          	bne	s0,s3,15916 <__s2b+0x7a>
   1592e:	40f2                	lw	ra,28(sp)
   15930:	4462                	lw	s0,24(sp)
   15932:	44d2                	lw	s1,20(sp)
   15934:	4942                	lw	s2,16(sp)
   15936:	49b2                	lw	s3,12(sp)
   15938:	4a22                	lw	s4,8(sp)
   1593a:	852e                	mv	a0,a1
   1593c:	6105                	addi	sp,sp,32
   1593e:	8082                	ret
   15940:	0429                	addi	s0,s0,10
   15942:	4a25                	li	s4,9
   15944:	b7e1                	j	1590c <__s2b+0x70>
   15946:	4581                	li	a1,0
   15948:	b751                	j	158cc <__s2b+0x30>
   1594a:	66e9                	lui	a3,0x1a
   1594c:	6569                	lui	a0,0x1a
   1594e:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   15952:	4601                	li	a2,0
   15954:	0d300593          	li	a1,211
   15958:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   1595c:	c256                	sw	s5,4(sp)
   1595e:	16e010ef          	jal	16acc <__assert_func>

00015962 <__hi0bits>:
   15962:	87aa                	mv	a5,a0
   15964:	6741                	lui	a4,0x10
   15966:	4501                	li	a0,0
   15968:	00e7f463          	bgeu	a5,a4,15970 <__hi0bits+0xe>
   1596c:	07c2                	slli	a5,a5,0x10
   1596e:	4541                	li	a0,16
   15970:	01000737          	lui	a4,0x1000
   15974:	00e7f463          	bgeu	a5,a4,1597c <__hi0bits+0x1a>
   15978:	0521                	addi	a0,a0,8
   1597a:	07a2                	slli	a5,a5,0x8
   1597c:	10000737          	lui	a4,0x10000
   15980:	00e7f463          	bgeu	a5,a4,15988 <__hi0bits+0x26>
   15984:	0511                	addi	a0,a0,4
   15986:	0792                	slli	a5,a5,0x4
   15988:	40000737          	lui	a4,0x40000
   1598c:	00e7e763          	bltu	a5,a4,1599a <__hi0bits+0x38>
   15990:	fff7c793          	not	a5,a5
   15994:	83fd                	srli	a5,a5,0x1f
   15996:	953e                	add	a0,a0,a5
   15998:	8082                	ret
   1599a:	078a                	slli	a5,a5,0x2
   1599c:	0007c963          	bltz	a5,159ae <__hi0bits+0x4c>
   159a0:	00179713          	slli	a4,a5,0x1
   159a4:	00074763          	bltz	a4,159b2 <__hi0bits+0x50>
   159a8:	02000513          	li	a0,32
   159ac:	8082                	ret
   159ae:	0509                	addi	a0,a0,2
   159b0:	8082                	ret
   159b2:	050d                	addi	a0,a0,3
   159b4:	8082                	ret

000159b6 <__lo0bits>:
   159b6:	411c                	lw	a5,0(a0)
   159b8:	872a                	mv	a4,a0
   159ba:	0077f693          	andi	a3,a5,7
   159be:	ce81                	beqz	a3,159d6 <__lo0bits+0x20>
   159c0:	0017f693          	andi	a3,a5,1
   159c4:	4501                	li	a0,0
   159c6:	ee95                	bnez	a3,15a02 <__lo0bits+0x4c>
   159c8:	0027f693          	andi	a3,a5,2
   159cc:	c6b5                	beqz	a3,15a38 <__lo0bits+0x82>
   159ce:	8385                	srli	a5,a5,0x1
   159d0:	c31c                	sw	a5,0(a4)
   159d2:	4505                	li	a0,1
   159d4:	8082                	ret
   159d6:	01079693          	slli	a3,a5,0x10
   159da:	82c1                	srli	a3,a3,0x10
   159dc:	4501                	li	a0,0
   159de:	c6b9                	beqz	a3,15a2c <__lo0bits+0x76>
   159e0:	0ff7f693          	zext.b	a3,a5
   159e4:	ce95                	beqz	a3,15a20 <__lo0bits+0x6a>
   159e6:	00f7f693          	andi	a3,a5,15
   159ea:	c68d                	beqz	a3,15a14 <__lo0bits+0x5e>
   159ec:	0037f693          	andi	a3,a5,3
   159f0:	ce81                	beqz	a3,15a08 <__lo0bits+0x52>
   159f2:	0017f693          	andi	a3,a5,1
   159f6:	e699                	bnez	a3,15a04 <__lo0bits+0x4e>
   159f8:	8385                	srli	a5,a5,0x1
   159fa:	0505                	addi	a0,a0,1
   159fc:	e781                	bnez	a5,15a04 <__lo0bits+0x4e>
   159fe:	02000513          	li	a0,32
   15a02:	8082                	ret
   15a04:	c31c                	sw	a5,0(a4)
   15a06:	8082                	ret
   15a08:	8389                	srli	a5,a5,0x2
   15a0a:	0017f693          	andi	a3,a5,1
   15a0e:	0509                	addi	a0,a0,2
   15a10:	faf5                	bnez	a3,15a04 <__lo0bits+0x4e>
   15a12:	b7dd                	j	159f8 <__lo0bits+0x42>
   15a14:	8391                	srli	a5,a5,0x4
   15a16:	0037f693          	andi	a3,a5,3
   15a1a:	0511                	addi	a0,a0,4
   15a1c:	faf9                	bnez	a3,159f2 <__lo0bits+0x3c>
   15a1e:	b7ed                	j	15a08 <__lo0bits+0x52>
   15a20:	83a1                	srli	a5,a5,0x8
   15a22:	00f7f693          	andi	a3,a5,15
   15a26:	0521                	addi	a0,a0,8
   15a28:	f2f1                	bnez	a3,159ec <__lo0bits+0x36>
   15a2a:	b7ed                	j	15a14 <__lo0bits+0x5e>
   15a2c:	83c1                	srli	a5,a5,0x10
   15a2e:	0ff7f693          	zext.b	a3,a5
   15a32:	4541                	li	a0,16
   15a34:	facd                	bnez	a3,159e6 <__lo0bits+0x30>
   15a36:	b7ed                	j	15a20 <__lo0bits+0x6a>
   15a38:	8389                	srli	a5,a5,0x2
   15a3a:	c31c                	sw	a5,0(a4)
   15a3c:	4509                	li	a0,2
   15a3e:	8082                	ret

00015a40 <__i2b>:
   15a40:	417c                	lw	a5,68(a0)
   15a42:	1141                	addi	sp,sp,-16
   15a44:	c422                	sw	s0,8(sp)
   15a46:	c226                	sw	s1,4(sp)
   15a48:	c606                	sw	ra,12(sp)
   15a4a:	842a                	mv	s0,a0
   15a4c:	84ae                	mv	s1,a1
   15a4e:	cf99                	beqz	a5,15a6c <__i2b+0x2c>
   15a50:	43c8                	lw	a0,4(a5)
   15a52:	c121                	beqz	a0,15a92 <__i2b+0x52>
   15a54:	4118                	lw	a4,0(a0)
   15a56:	c3d8                	sw	a4,4(a5)
   15a58:	40b2                	lw	ra,12(sp)
   15a5a:	4422                	lw	s0,8(sp)
   15a5c:	4785                	li	a5,1
   15a5e:	c944                	sw	s1,20(a0)
   15a60:	00052623          	sw	zero,12(a0)
   15a64:	c91c                	sw	a5,16(a0)
   15a66:	4492                	lw	s1,4(sp)
   15a68:	0141                	addi	sp,sp,16
   15a6a:	8082                	ret
   15a6c:	02100613          	li	a2,33
   15a70:	4591                	li	a1,4
   15a72:	0a0010ef          	jal	16b12 <_calloc_r>
   15a76:	c068                	sw	a0,68(s0)
   15a78:	87aa                	mv	a5,a0
   15a7a:	f979                	bnez	a0,15a50 <__i2b+0x10>
   15a7c:	66e9                	lui	a3,0x1a
   15a7e:	6569                	lui	a0,0x1a
   15a80:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   15a84:	4601                	li	a2,0
   15a86:	14500593          	li	a1,325
   15a8a:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   15a8e:	03e010ef          	jal	16acc <__assert_func>
   15a92:	4671                	li	a2,28
   15a94:	4585                	li	a1,1
   15a96:	8522                	mv	a0,s0
   15a98:	07a010ef          	jal	16b12 <_calloc_r>
   15a9c:	d165                	beqz	a0,15a7c <__i2b+0x3c>
   15a9e:	4785                	li	a5,1
   15aa0:	c15c                	sw	a5,4(a0)
   15aa2:	4789                	li	a5,2
   15aa4:	c51c                	sw	a5,8(a0)
   15aa6:	bf4d                	j	15a58 <__i2b+0x18>

00015aa8 <__multiply>:
   15aa8:	1101                	addi	sp,sp,-32
   15aaa:	c84a                	sw	s2,16(sp)
   15aac:	c64e                	sw	s3,12(sp)
   15aae:	0105a903          	lw	s2,16(a1)
   15ab2:	01062983          	lw	s3,16(a2)
   15ab6:	ca26                	sw	s1,20(sp)
   15ab8:	c452                	sw	s4,8(sp)
   15aba:	ce06                	sw	ra,28(sp)
   15abc:	cc22                	sw	s0,24(sp)
   15abe:	8a2e                	mv	s4,a1
   15ac0:	84b2                	mv	s1,a2
   15ac2:	01394763          	blt	s2,s3,15ad0 <__multiply+0x28>
   15ac6:	874e                	mv	a4,s3
   15ac8:	84ae                	mv	s1,a1
   15aca:	89ca                	mv	s3,s2
   15acc:	8a32                	mv	s4,a2
   15ace:	893a                	mv	s2,a4
   15ad0:	449c                	lw	a5,8(s1)
   15ad2:	40cc                	lw	a1,4(s1)
   15ad4:	01298433          	add	s0,s3,s2
   15ad8:	0087a7b3          	slt	a5,a5,s0
   15adc:	95be                	add	a1,a1,a5
   15ade:	c5bff0ef          	jal	15738 <_Balloc>
   15ae2:	14050363          	beqz	a0,15c28 <__multiply+0x180>
   15ae6:	01450313          	addi	t1,a0,20
   15aea:	00241893          	slli	a7,s0,0x2
   15aee:	989a                	add	a7,a7,t1
   15af0:	879a                	mv	a5,t1
   15af2:	01137763          	bgeu	t1,a7,15b00 <__multiply+0x58>
   15af6:	0007a023          	sw	zero,0(a5)
   15afa:	0791                	addi	a5,a5,4
   15afc:	ff17ede3          	bltu	a5,a7,15af6 <__multiply+0x4e>
   15b00:	014a0813          	addi	a6,s4,20
   15b04:	00291e13          	slli	t3,s2,0x2
   15b08:	01448e93          	addi	t4,s1,20
   15b0c:	00299593          	slli	a1,s3,0x2
   15b10:	9e42                	add	t3,t3,a6
   15b12:	95f6                	add	a1,a1,t4
   15b14:	0fc87163          	bgeu	a6,t3,15bf6 <__multiply+0x14e>
   15b18:	01548793          	addi	a5,s1,21
   15b1c:	4f11                	li	t5,4
   15b1e:	0ef5fe63          	bgeu	a1,a5,15c1a <__multiply+0x172>
   15b22:	66c1                	lui	a3,0x10
   15b24:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   15b26:	a809                	j	15b38 <__multiply+0x90>
   15b28:	010fdf93          	srli	t6,t6,0x10
   15b2c:	060f9863          	bnez	t6,15b9c <__multiply+0xf4>
   15b30:	0811                	addi	a6,a6,4
   15b32:	0311                	addi	t1,t1,4
   15b34:	0dc87163          	bgeu	a6,t3,15bf6 <__multiply+0x14e>
   15b38:	00082f83          	lw	t6,0(a6)
   15b3c:	00dff3b3          	and	t2,t6,a3
   15b40:	fe0384e3          	beqz	t2,15b28 <__multiply+0x80>
   15b44:	829a                	mv	t0,t1
   15b46:	8ff6                	mv	t6,t4
   15b48:	4481                	li	s1,0
   15b4a:	000fa783          	lw	a5,0(t6)
   15b4e:	0002a603          	lw	a2,0(t0) # 10e5c <memset+0x8e>
   15b52:	0291                	addi	t0,t0,4
   15b54:	00d7f733          	and	a4,a5,a3
   15b58:	02770733          	mul	a4,a4,t2
   15b5c:	83c1                	srli	a5,a5,0x10
   15b5e:	00d67933          	and	s2,a2,a3
   15b62:	8241                	srli	a2,a2,0x10
   15b64:	0f91                	addi	t6,t6,4
   15b66:	027787b3          	mul	a5,a5,t2
   15b6a:	974a                	add	a4,a4,s2
   15b6c:	9726                	add	a4,a4,s1
   15b6e:	01075493          	srli	s1,a4,0x10
   15b72:	8f75                	and	a4,a4,a3
   15b74:	97b2                	add	a5,a5,a2
   15b76:	97a6                	add	a5,a5,s1
   15b78:	01079613          	slli	a2,a5,0x10
   15b7c:	8f51                	or	a4,a4,a2
   15b7e:	fee2ae23          	sw	a4,-4(t0)
   15b82:	0107d493          	srli	s1,a5,0x10
   15b86:	fcbfe2e3          	bltu	t6,a1,15b4a <__multiply+0xa2>
   15b8a:	01e307b3          	add	a5,t1,t5
   15b8e:	c384                	sw	s1,0(a5)
   15b90:	00082f83          	lw	t6,0(a6)
   15b94:	010fdf93          	srli	t6,t6,0x10
   15b98:	f80f8ce3          	beqz	t6,15b30 <__multiply+0x88>
   15b9c:	00032703          	lw	a4,0(t1)
   15ba0:	829a                	mv	t0,t1
   15ba2:	8676                	mv	a2,t4
   15ba4:	84ba                	mv	s1,a4
   15ba6:	4381                	li	t2,0
   15ba8:	421c                	lw	a5,0(a2)
   15baa:	0104d993          	srli	s3,s1,0x10
   15bae:	8f75                	and	a4,a4,a3
   15bb0:	8ff5                	and	a5,a5,a3
   15bb2:	03f787b3          	mul	a5,a5,t6
   15bb6:	0042a483          	lw	s1,4(t0)
   15bba:	0291                	addi	t0,t0,4
   15bbc:	0611                	addi	a2,a2,4
   15bbe:	00d4f933          	and	s2,s1,a3
   15bc2:	979e                	add	a5,a5,t2
   15bc4:	97ce                	add	a5,a5,s3
   15bc6:	01079393          	slli	t2,a5,0x10
   15bca:	00e3e733          	or	a4,t2,a4
   15bce:	fee2ae23          	sw	a4,-4(t0)
   15bd2:	ffe65703          	lhu	a4,-2(a2)
   15bd6:	83c1                	srli	a5,a5,0x10
   15bd8:	03f70733          	mul	a4,a4,t6
   15bdc:	974a                	add	a4,a4,s2
   15bde:	973e                	add	a4,a4,a5
   15be0:	01075393          	srli	t2,a4,0x10
   15be4:	fcb662e3          	bltu	a2,a1,15ba8 <__multiply+0x100>
   15be8:	01e307b3          	add	a5,t1,t5
   15bec:	c398                	sw	a4,0(a5)
   15bee:	0811                	addi	a6,a6,4
   15bf0:	0311                	addi	t1,t1,4
   15bf2:	f5c863e3          	bltu	a6,t3,15b38 <__multiply+0x90>
   15bf6:	00804563          	bgtz	s0,15c00 <__multiply+0x158>
   15bfa:	a039                	j	15c08 <__multiply+0x160>
   15bfc:	147d                	addi	s0,s0,-1
   15bfe:	c409                	beqz	s0,15c08 <__multiply+0x160>
   15c00:	ffc8a783          	lw	a5,-4(a7)
   15c04:	18f1                	addi	a7,a7,-4
   15c06:	dbfd                	beqz	a5,15bfc <__multiply+0x154>
   15c08:	40f2                	lw	ra,28(sp)
   15c0a:	c900                	sw	s0,16(a0)
   15c0c:	4462                	lw	s0,24(sp)
   15c0e:	44d2                	lw	s1,20(sp)
   15c10:	4942                	lw	s2,16(sp)
   15c12:	49b2                	lw	s3,12(sp)
   15c14:	4a22                	lw	s4,8(sp)
   15c16:	6105                	addi	sp,sp,32
   15c18:	8082                	ret
   15c1a:	409587b3          	sub	a5,a1,s1
   15c1e:	17ad                	addi	a5,a5,-21
   15c20:	9bf1                	andi	a5,a5,-4
   15c22:	00478f13          	addi	t5,a5,4
   15c26:	bdf5                	j	15b22 <__multiply+0x7a>
   15c28:	66e9                	lui	a3,0x1a
   15c2a:	6569                	lui	a0,0x1a
   15c2c:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   15c30:	4601                	li	a2,0
   15c32:	16200593          	li	a1,354
   15c36:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   15c3a:	693000ef          	jal	16acc <__assert_func>

00015c3e <__pow5mult>:
   15c3e:	1101                	addi	sp,sp,-32
   15c40:	cc22                	sw	s0,24(sp)
   15c42:	c84a                	sw	s2,16(sp)
   15c44:	c64e                	sw	s3,12(sp)
   15c46:	ce06                	sw	ra,28(sp)
   15c48:	00367793          	andi	a5,a2,3
   15c4c:	8432                	mv	s0,a2
   15c4e:	89aa                	mv	s3,a0
   15c50:	892e                	mv	s2,a1
   15c52:	ebad                	bnez	a5,15cc4 <__pow5mult+0x86>
   15c54:	8409                	srai	s0,s0,0x2
   15c56:	c431                	beqz	s0,15ca2 <__pow5mult+0x64>
   15c58:	ca26                	sw	s1,20(sp)
   15c5a:	0409a483          	lw	s1,64(s3)
   15c5e:	ccbd                	beqz	s1,15cdc <__pow5mult+0x9e>
   15c60:	00147793          	andi	a5,s0,1
   15c64:	eb89                	bnez	a5,15c76 <__pow5mult+0x38>
   15c66:	8405                	srai	s0,s0,0x1
   15c68:	cc05                	beqz	s0,15ca0 <__pow5mult+0x62>
   15c6a:	4088                	lw	a0,0(s1)
   15c6c:	c131                	beqz	a0,15cb0 <__pow5mult+0x72>
   15c6e:	84aa                	mv	s1,a0
   15c70:	00147793          	andi	a5,s0,1
   15c74:	dbed                	beqz	a5,15c66 <__pow5mult+0x28>
   15c76:	8626                	mv	a2,s1
   15c78:	85ca                	mv	a1,s2
   15c7a:	854e                	mv	a0,s3
   15c7c:	e2dff0ef          	jal	15aa8 <__multiply>
   15c80:	00090d63          	beqz	s2,15c9a <__pow5mult+0x5c>
   15c84:	00492703          	lw	a4,4(s2)
   15c88:	0449a783          	lw	a5,68(s3)
   15c8c:	070a                	slli	a4,a4,0x2
   15c8e:	97ba                	add	a5,a5,a4
   15c90:	4398                	lw	a4,0(a5)
   15c92:	00e92023          	sw	a4,0(s2)
   15c96:	0127a023          	sw	s2,0(a5)
   15c9a:	8405                	srai	s0,s0,0x1
   15c9c:	892a                	mv	s2,a0
   15c9e:	f471                	bnez	s0,15c6a <__pow5mult+0x2c>
   15ca0:	44d2                	lw	s1,20(sp)
   15ca2:	40f2                	lw	ra,28(sp)
   15ca4:	4462                	lw	s0,24(sp)
   15ca6:	49b2                	lw	s3,12(sp)
   15ca8:	854a                	mv	a0,s2
   15caa:	4942                	lw	s2,16(sp)
   15cac:	6105                	addi	sp,sp,32
   15cae:	8082                	ret
   15cb0:	8626                	mv	a2,s1
   15cb2:	85a6                	mv	a1,s1
   15cb4:	854e                	mv	a0,s3
   15cb6:	df3ff0ef          	jal	15aa8 <__multiply>
   15cba:	c088                	sw	a0,0(s1)
   15cbc:	00052023          	sw	zero,0(a0)
   15cc0:	84aa                	mv	s1,a0
   15cc2:	b77d                	j	15c70 <__pow5mult+0x32>
   15cc4:	17fd                	addi	a5,a5,-1
   15cc6:	6769                	lui	a4,0x1a
   15cc8:	7ac70713          	addi	a4,a4,1964 # 1a7ac <p05.0>
   15ccc:	078a                	slli	a5,a5,0x2
   15cce:	97ba                	add	a5,a5,a4
   15cd0:	4390                	lw	a2,0(a5)
   15cd2:	4681                	li	a3,0
   15cd4:	ae3ff0ef          	jal	157b6 <__multadd>
   15cd8:	892a                	mv	s2,a0
   15cda:	bfad                	j	15c54 <__pow5mult+0x16>
   15cdc:	4585                	li	a1,1
   15cde:	854e                	mv	a0,s3
   15ce0:	a59ff0ef          	jal	15738 <_Balloc>
   15ce4:	84aa                	mv	s1,a0
   15ce6:	c919                	beqz	a0,15cfc <__pow5mult+0xbe>
   15ce8:	27100793          	li	a5,625
   15cec:	c95c                	sw	a5,20(a0)
   15cee:	4785                	li	a5,1
   15cf0:	c91c                	sw	a5,16(a0)
   15cf2:	04a9a023          	sw	a0,64(s3)
   15cf6:	00052023          	sw	zero,0(a0)
   15cfa:	b79d                	j	15c60 <__pow5mult+0x22>
   15cfc:	66e9                	lui	a3,0x1a
   15cfe:	6569                	lui	a0,0x1a
   15d00:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   15d04:	4601                	li	a2,0
   15d06:	14500593          	li	a1,325
   15d0a:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   15d0e:	5bf000ef          	jal	16acc <__assert_func>

00015d12 <__lshift>:
   15d12:	1101                	addi	sp,sp,-32
   15d14:	c256                	sw	s5,4(sp)
   15d16:	0105aa83          	lw	s5,16(a1)
   15d1a:	459c                	lw	a5,8(a1)
   15d1c:	c64e                	sw	s3,12(sp)
   15d1e:	40565993          	srai	s3,a2,0x5
   15d22:	9ace                	add	s5,s5,s3
   15d24:	cc22                	sw	s0,24(sp)
   15d26:	ca26                	sw	s1,20(sp)
   15d28:	c84a                	sw	s2,16(sp)
   15d2a:	c452                	sw	s4,8(sp)
   15d2c:	ce06                	sw	ra,28(sp)
   15d2e:	001a8913          	addi	s2,s5,1
   15d32:	84ae                	mv	s1,a1
   15d34:	8432                	mv	s0,a2
   15d36:	41cc                	lw	a1,4(a1)
   15d38:	8a2a                	mv	s4,a0
   15d3a:	0127d663          	bge	a5,s2,15d46 <__lshift+0x34>
   15d3e:	0786                	slli	a5,a5,0x1
   15d40:	0585                	addi	a1,a1,1
   15d42:	ff27cee3          	blt	a5,s2,15d3e <__lshift+0x2c>
   15d46:	8552                	mv	a0,s4
   15d48:	9f1ff0ef          	jal	15738 <_Balloc>
   15d4c:	cd5d                	beqz	a0,15e0a <__lshift+0xf8>
   15d4e:	01450813          	addi	a6,a0,20
   15d52:	01305e63          	blez	s3,15d6e <__lshift+0x5c>
   15d56:	0995                	addi	s3,s3,5
   15d58:	098a                	slli	s3,s3,0x2
   15d5a:	01350733          	add	a4,a0,s3
   15d5e:	87c2                	mv	a5,a6
   15d60:	0791                	addi	a5,a5,4
   15d62:	fe07ae23          	sw	zero,-4(a5)
   15d66:	fee79de3          	bne	a5,a4,15d60 <__lshift+0x4e>
   15d6a:	19b1                	addi	s3,s3,-20
   15d6c:	984e                	add	a6,a6,s3
   15d6e:	0104a883          	lw	a7,16(s1)
   15d72:	01448793          	addi	a5,s1,20
   15d76:	01f47613          	andi	a2,s0,31
   15d7a:	088a                	slli	a7,a7,0x2
   15d7c:	98be                	add	a7,a7,a5
   15d7e:	c63d                	beqz	a2,15dec <__lshift+0xda>
   15d80:	02000593          	li	a1,32
   15d84:	8d91                	sub	a1,a1,a2
   15d86:	8342                	mv	t1,a6
   15d88:	4681                	li	a3,0
   15d8a:	4398                	lw	a4,0(a5)
   15d8c:	0311                	addi	t1,t1,4
   15d8e:	0791                	addi	a5,a5,4
   15d90:	00c71733          	sll	a4,a4,a2
   15d94:	8f55                	or	a4,a4,a3
   15d96:	fee32e23          	sw	a4,-4(t1)
   15d9a:	ffc7a683          	lw	a3,-4(a5)
   15d9e:	00b6d6b3          	srl	a3,a3,a1
   15da2:	ff17e4e3          	bltu	a5,a7,15d8a <__lshift+0x78>
   15da6:	01548793          	addi	a5,s1,21
   15daa:	4711                	li	a4,4
   15dac:	00f8e863          	bltu	a7,a5,15dbc <__lshift+0xaa>
   15db0:	409887b3          	sub	a5,a7,s1
   15db4:	17ad                	addi	a5,a5,-21
   15db6:	9bf1                	andi	a5,a5,-4
   15db8:	00478713          	addi	a4,a5,4
   15dbc:	983a                	add	a6,a6,a4
   15dbe:	00d82023          	sw	a3,0(a6)
   15dc2:	e291                	bnez	a3,15dc6 <__lshift+0xb4>
   15dc4:	8956                	mv	s2,s5
   15dc6:	40d8                	lw	a4,4(s1)
   15dc8:	044a2783          	lw	a5,68(s4)
   15dcc:	40f2                	lw	ra,28(sp)
   15dce:	070a                	slli	a4,a4,0x2
   15dd0:	97ba                	add	a5,a5,a4
   15dd2:	4398                	lw	a4,0(a5)
   15dd4:	01252823          	sw	s2,16(a0)
   15dd8:	4462                	lw	s0,24(sp)
   15dda:	c098                	sw	a4,0(s1)
   15ddc:	c384                	sw	s1,0(a5)
   15dde:	4942                	lw	s2,16(sp)
   15de0:	44d2                	lw	s1,20(sp)
   15de2:	49b2                	lw	s3,12(sp)
   15de4:	4a22                	lw	s4,8(sp)
   15de6:	4a92                	lw	s5,4(sp)
   15de8:	6105                	addi	sp,sp,32
   15dea:	8082                	ret
   15dec:	4398                	lw	a4,0(a5)
   15dee:	0791                	addi	a5,a5,4
   15df0:	0811                	addi	a6,a6,4
   15df2:	fee82e23          	sw	a4,-4(a6)
   15df6:	fd17f7e3          	bgeu	a5,a7,15dc4 <__lshift+0xb2>
   15dfa:	4398                	lw	a4,0(a5)
   15dfc:	0791                	addi	a5,a5,4
   15dfe:	0811                	addi	a6,a6,4
   15e00:	fee82e23          	sw	a4,-4(a6)
   15e04:	ff17e4e3          	bltu	a5,a7,15dec <__lshift+0xda>
   15e08:	bf75                	j	15dc4 <__lshift+0xb2>
   15e0a:	66e9                	lui	a3,0x1a
   15e0c:	6569                	lui	a0,0x1a
   15e0e:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   15e12:	4601                	li	a2,0
   15e14:	1de00593          	li	a1,478
   15e18:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   15e1c:	4b1000ef          	jal	16acc <__assert_func>

00015e20 <__mcmp>:
   15e20:	4918                	lw	a4,16(a0)
   15e22:	499c                	lw	a5,16(a1)
   15e24:	882a                	mv	a6,a0
   15e26:	40f70533          	sub	a0,a4,a5
   15e2a:	02f71863          	bne	a4,a5,15e5a <__mcmp+0x3a>
   15e2e:	078a                	slli	a5,a5,0x2
   15e30:	0851                	addi	a6,a6,20
   15e32:	05d1                	addi	a1,a1,20
   15e34:	00f80733          	add	a4,a6,a5
   15e38:	97ae                	add	a5,a5,a1
   15e3a:	a019                	j	15e40 <__mcmp+0x20>
   15e3c:	00e87f63          	bgeu	a6,a4,15e5a <__mcmp+0x3a>
   15e40:	ffc72603          	lw	a2,-4(a4)
   15e44:	ffc7a683          	lw	a3,-4(a5)
   15e48:	1771                	addi	a4,a4,-4
   15e4a:	17f1                	addi	a5,a5,-4
   15e4c:	fed608e3          	beq	a2,a3,15e3c <__mcmp+0x1c>
   15e50:	4505                	li	a0,1
   15e52:	00d67463          	bgeu	a2,a3,15e5a <__mcmp+0x3a>
   15e56:	557d                	li	a0,-1
   15e58:	8082                	ret
   15e5a:	8082                	ret

00015e5c <__mdiff>:
   15e5c:	4998                	lw	a4,16(a1)
   15e5e:	4a1c                	lw	a5,16(a2)
   15e60:	1141                	addi	sp,sp,-16
   15e62:	c422                	sw	s0,8(sp)
   15e64:	c226                	sw	s1,4(sp)
   15e66:	c606                	sw	ra,12(sp)
   15e68:	c04a                	sw	s2,0(sp)
   15e6a:	842e                	mv	s0,a1
   15e6c:	84b2                	mv	s1,a2
   15e6e:	40f706b3          	sub	a3,a4,a5
   15e72:	12f71863          	bne	a4,a5,15fa2 <__mdiff+0x146>
   15e76:	00279693          	slli	a3,a5,0x2
   15e7a:	01458613          	addi	a2,a1,20
   15e7e:	01448713          	addi	a4,s1,20
   15e82:	00d607b3          	add	a5,a2,a3
   15e86:	9736                	add	a4,a4,a3
   15e88:	a019                	j	15e8e <__mdiff+0x32>
   15e8a:	12f67463          	bgeu	a2,a5,15fb2 <__mdiff+0x156>
   15e8e:	ffc7a583          	lw	a1,-4(a5)
   15e92:	ffc72683          	lw	a3,-4(a4)
   15e96:	17f1                	addi	a5,a5,-4
   15e98:	1771                	addi	a4,a4,-4
   15e9a:	fed588e3          	beq	a1,a3,15e8a <__mdiff+0x2e>
   15e9e:	4905                	li	s2,1
   15ea0:	00d5e663          	bltu	a1,a3,15eac <__mdiff+0x50>
   15ea4:	87a6                	mv	a5,s1
   15ea6:	4901                	li	s2,0
   15ea8:	84a2                	mv	s1,s0
   15eaa:	843e                	mv	s0,a5
   15eac:	40cc                	lw	a1,4(s1)
   15eae:	88bff0ef          	jal	15738 <_Balloc>
   15eb2:	12050763          	beqz	a0,15fe0 <__mdiff+0x184>
   15eb6:	0104a883          	lw	a7,16(s1)
   15eba:	01042283          	lw	t0,16(s0)
   15ebe:	01448f93          	addi	t6,s1,20
   15ec2:	00289313          	slli	t1,a7,0x2
   15ec6:	01440813          	addi	a6,s0,20
   15eca:	028a                	slli	t0,t0,0x2
   15ecc:	01450593          	addi	a1,a0,20
   15ed0:	6e41                	lui	t3,0x10
   15ed2:	01252623          	sw	s2,12(a0)
   15ed6:	937e                	add	t1,t1,t6
   15ed8:	92c2                	add	t0,t0,a6
   15eda:	8f2e                	mv	t5,a1
   15edc:	8efe                	mv	t4,t6
   15ede:	4681                	li	a3,0
   15ee0:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   15ee2:	000ea703          	lw	a4,0(t4)
   15ee6:	00082603          	lw	a2,0(a6)
   15eea:	0f11                	addi	t5,t5,4
   15eec:	01c777b3          	and	a5,a4,t3
   15ef0:	01c673b3          	and	t2,a2,t3
   15ef4:	407787b3          	sub	a5,a5,t2
   15ef8:	97b6                	add	a5,a5,a3
   15efa:	8341                	srli	a4,a4,0x10
   15efc:	8241                	srli	a2,a2,0x10
   15efe:	4107d693          	srai	a3,a5,0x10
   15f02:	8f11                	sub	a4,a4,a2
   15f04:	9736                	add	a4,a4,a3
   15f06:	01071693          	slli	a3,a4,0x10
   15f0a:	01c7f7b3          	and	a5,a5,t3
   15f0e:	8fd5                	or	a5,a5,a3
   15f10:	0811                	addi	a6,a6,4
   15f12:	feff2e23          	sw	a5,-4(t5)
   15f16:	0e91                	addi	t4,t4,4
   15f18:	41075693          	srai	a3,a4,0x10
   15f1c:	fc5863e3          	bltu	a6,t0,15ee2 <__mdiff+0x86>
   15f20:	01540713          	addi	a4,s0,21
   15f24:	40828433          	sub	s0,t0,s0
   15f28:	142d                	addi	s0,s0,-21
   15f2a:	00e2b2b3          	sltu	t0,t0,a4
   15f2e:	0012cf13          	xori	t5,t0,1
   15f32:	8009                	srli	s0,s0,0x2
   15f34:	4711                	li	a4,4
   15f36:	06028a63          	beqz	t0,15faa <__mdiff+0x14e>
   15f3a:	9fba                	add	t6,t6,a4
   15f3c:	00e58833          	add	a6,a1,a4
   15f40:	6ec1                	lui	t4,0x10
   15f42:	8e42                	mv	t3,a6
   15f44:	867e                	mv	a2,t6
   15f46:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   15f48:	086ff363          	bgeu	t6,t1,15fce <__mdiff+0x172>
   15f4c:	421c                	lw	a5,0(a2)
   15f4e:	0e11                	addi	t3,t3,4
   15f50:	0611                	addi	a2,a2,4
   15f52:	01d7f733          	and	a4,a5,t4
   15f56:	9736                	add	a4,a4,a3
   15f58:	0107d593          	srli	a1,a5,0x10
   15f5c:	8741                	srai	a4,a4,0x10
   15f5e:	972e                	add	a4,a4,a1
   15f60:	97b6                	add	a5,a5,a3
   15f62:	01d7f7b3          	and	a5,a5,t4
   15f66:	01071693          	slli	a3,a4,0x10
   15f6a:	8fd5                	or	a5,a5,a3
   15f6c:	fefe2e23          	sw	a5,-4(t3)
   15f70:	41075693          	srai	a3,a4,0x10
   15f74:	fc666ce3          	bltu	a2,t1,15f4c <__mdiff+0xf0>
   15f78:	137d                	addi	t1,t1,-1
   15f7a:	41f30333          	sub	t1,t1,t6
   15f7e:	ffc37313          	andi	t1,t1,-4
   15f82:	00680733          	add	a4,a6,t1
   15f86:	e791                	bnez	a5,15f92 <__mdiff+0x136>
   15f88:	ffc72783          	lw	a5,-4(a4)
   15f8c:	18fd                	addi	a7,a7,-1
   15f8e:	1771                	addi	a4,a4,-4
   15f90:	dfe5                	beqz	a5,15f88 <__mdiff+0x12c>
   15f92:	40b2                	lw	ra,12(sp)
   15f94:	4422                	lw	s0,8(sp)
   15f96:	01152823          	sw	a7,16(a0)
   15f9a:	4492                	lw	s1,4(sp)
   15f9c:	4902                	lw	s2,0(sp)
   15f9e:	0141                	addi	sp,sp,16
   15fa0:	8082                	ret
   15fa2:	4905                	li	s2,1
   15fa4:	f006d0e3          	bgez	a3,15ea4 <__mdiff+0x48>
   15fa8:	b711                	j	15eac <__mdiff+0x50>
   15faa:	00140713          	addi	a4,s0,1
   15fae:	070a                	slli	a4,a4,0x2
   15fb0:	b769                	j	15f3a <__mdiff+0xde>
   15fb2:	4581                	li	a1,0
   15fb4:	f84ff0ef          	jal	15738 <_Balloc>
   15fb8:	cd1d                	beqz	a0,15ff6 <__mdiff+0x19a>
   15fba:	40b2                	lw	ra,12(sp)
   15fbc:	4422                	lw	s0,8(sp)
   15fbe:	4785                	li	a5,1
   15fc0:	c91c                	sw	a5,16(a0)
   15fc2:	00052a23          	sw	zero,20(a0)
   15fc6:	4492                	lw	s1,4(sp)
   15fc8:	4902                	lw	s2,0(sp)
   15fca:	0141                	addi	sp,sp,16
   15fcc:	8082                	ret
   15fce:	4701                	li	a4,0
   15fd0:	000f1463          	bnez	t5,15fd8 <__mdiff+0x17c>
   15fd4:	972e                	add	a4,a4,a1
   15fd6:	bf45                	j	15f86 <__mdiff+0x12a>
   15fd8:	00241713          	slli	a4,s0,0x2
   15fdc:	972e                	add	a4,a4,a1
   15fde:	b765                	j	15f86 <__mdiff+0x12a>
   15fe0:	66e9                	lui	a3,0x1a
   15fe2:	6569                	lui	a0,0x1a
   15fe4:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   15fe8:	4601                	li	a2,0
   15fea:	24500593          	li	a1,581
   15fee:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   15ff2:	2db000ef          	jal	16acc <__assert_func>
   15ff6:	66e9                	lui	a3,0x1a
   15ff8:	6569                	lui	a0,0x1a
   15ffa:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   15ffe:	4601                	li	a2,0
   16000:	23700593          	li	a1,567
   16004:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   16008:	2c5000ef          	jal	16acc <__assert_func>

0001600c <__ulp>:
   1600c:	7ff007b7          	lui	a5,0x7ff00
   16010:	8dfd                	and	a1,a1,a5
   16012:	fcc007b7          	lui	a5,0xfcc00
   16016:	95be                	add	a1,a1,a5
   16018:	4781                	li	a5,0
   1601a:	00b05463          	blez	a1,16022 <__ulp+0x16>
   1601e:	853e                	mv	a0,a5
   16020:	8082                	ret
   16022:	40b005b3          	neg	a1,a1
   16026:	85d1                	srai	a1,a1,0x14
   16028:	47cd                	li	a5,19
   1602a:	00b7c963          	blt	a5,a1,1603c <__ulp+0x30>
   1602e:	000807b7          	lui	a5,0x80
   16032:	40b7d5b3          	sra	a1,a5,a1
   16036:	4781                	li	a5,0
   16038:	853e                	mv	a0,a5
   1603a:	8082                	ret
   1603c:	15b1                	addi	a1,a1,-20
   1603e:	4779                	li	a4,30
   16040:	4785                	li	a5,1
   16042:	00b74663          	blt	a4,a1,1604e <__ulp+0x42>
   16046:	800007b7          	lui	a5,0x80000
   1604a:	00b7d7b3          	srl	a5,a5,a1
   1604e:	4581                	li	a1,0
   16050:	853e                	mv	a0,a5
   16052:	8082                	ret

00016054 <__b2d>:
   16054:	1101                	addi	sp,sp,-32
   16056:	ca26                	sw	s1,20(sp)
   16058:	4904                	lw	s1,16(a0)
   1605a:	cc22                	sw	s0,24(sp)
   1605c:	01450413          	addi	s0,a0,20
   16060:	048a                	slli	s1,s1,0x2
   16062:	94a2                	add	s1,s1,s0
   16064:	c84a                	sw	s2,16(sp)
   16066:	ffc4a903          	lw	s2,-4(s1)
   1606a:	c64e                	sw	s3,12(sp)
   1606c:	c452                	sw	s4,8(sp)
   1606e:	854a                	mv	a0,s2
   16070:	89ae                	mv	s3,a1
   16072:	ce06                	sw	ra,28(sp)
   16074:	8efff0ef          	jal	15962 <__hi0bits>
   16078:	02000713          	li	a4,32
   1607c:	40a707b3          	sub	a5,a4,a0
   16080:	00f9a023          	sw	a5,0(s3)
   16084:	47a9                	li	a5,10
   16086:	ffc48a13          	addi	s4,s1,-4
   1608a:	06a7db63          	bge	a5,a0,16100 <__b2d+0xac>
   1608e:	ff550613          	addi	a2,a0,-11
   16092:	03447d63          	bgeu	s0,s4,160cc <__b2d+0x78>
   16096:	ff84a783          	lw	a5,-8(s1)
   1609a:	c629                	beqz	a2,160e4 <__b2d+0x90>
   1609c:	40c706b3          	sub	a3,a4,a2
   160a0:	00d7d733          	srl	a4,a5,a3
   160a4:	00c91933          	sll	s2,s2,a2
   160a8:	00e96933          	or	s2,s2,a4
   160ac:	ff848593          	addi	a1,s1,-8
   160b0:	3ff00737          	lui	a4,0x3ff00
   160b4:	00e96733          	or	a4,s2,a4
   160b8:	00c797b3          	sll	a5,a5,a2
   160bc:	02b47863          	bgeu	s0,a1,160ec <__b2d+0x98>
   160c0:	ff44a603          	lw	a2,-12(s1)
   160c4:	00d656b3          	srl	a3,a2,a3
   160c8:	8fd5                	or	a5,a5,a3
   160ca:	a00d                	j	160ec <__b2d+0x98>
   160cc:	47ad                	li	a5,11
   160ce:	00f50a63          	beq	a0,a5,160e2 <__b2d+0x8e>
   160d2:	00c91933          	sll	s2,s2,a2
   160d6:	3ff00737          	lui	a4,0x3ff00
   160da:	00e96733          	or	a4,s2,a4
   160de:	4781                	li	a5,0
   160e0:	a031                	j	160ec <__b2d+0x98>
   160e2:	4781                	li	a5,0
   160e4:	3ff00737          	lui	a4,0x3ff00
   160e8:	00e96733          	or	a4,s2,a4
   160ec:	40f2                	lw	ra,28(sp)
   160ee:	4462                	lw	s0,24(sp)
   160f0:	44d2                	lw	s1,20(sp)
   160f2:	4942                	lw	s2,16(sp)
   160f4:	49b2                	lw	s3,12(sp)
   160f6:	4a22                	lw	s4,8(sp)
   160f8:	853e                	mv	a0,a5
   160fa:	85ba                	mv	a1,a4
   160fc:	6105                	addi	sp,sp,32
   160fe:	8082                	ret
   16100:	46ad                	li	a3,11
   16102:	8e89                	sub	a3,a3,a0
   16104:	3ff007b7          	lui	a5,0x3ff00
   16108:	00d95733          	srl	a4,s2,a3
   1610c:	8f5d                	or	a4,a4,a5
   1610e:	4781                	li	a5,0
   16110:	01447663          	bgeu	s0,s4,1611c <__b2d+0xc8>
   16114:	ff84a783          	lw	a5,-8(s1)
   16118:	00d7d7b3          	srl	a5,a5,a3
   1611c:	0555                	addi	a0,a0,21
   1611e:	00a91933          	sll	s2,s2,a0
   16122:	00f967b3          	or	a5,s2,a5
   16126:	b7d9                	j	160ec <__b2d+0x98>

00016128 <__d2b>:
   16128:	7179                	addi	sp,sp,-48
   1612a:	ca56                	sw	s5,20(sp)
   1612c:	8aae                	mv	s5,a1
   1612e:	4585                	li	a1,1
   16130:	d226                	sw	s1,36(sp)
   16132:	ce4e                	sw	s3,28(sp)
   16134:	cc52                	sw	s4,24(sp)
   16136:	d606                	sw	ra,44(sp)
   16138:	d422                	sw	s0,40(sp)
   1613a:	d04a                	sw	s2,32(sp)
   1613c:	84b2                	mv	s1,a2
   1613e:	8a36                	mv	s4,a3
   16140:	89ba                	mv	s3,a4
   16142:	df6ff0ef          	jal	15738 <_Balloc>
   16146:	c955                	beqz	a0,161fa <__d2b+0xd2>
   16148:	00100737          	lui	a4,0x100
   1614c:	0144d913          	srli	s2,s1,0x14
   16150:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe45a3>
   16154:	7ff97913          	andi	s2,s2,2047
   16158:	842a                	mv	s0,a0
   1615a:	8fe5                	and	a5,a5,s1
   1615c:	00090363          	beqz	s2,16162 <__d2b+0x3a>
   16160:	8fd9                	or	a5,a5,a4
   16162:	c63e                	sw	a5,12(sp)
   16164:	040a9263          	bnez	s5,161a8 <__d2b+0x80>
   16168:	0068                	addi	a0,sp,12
   1616a:	84dff0ef          	jal	159b6 <__lo0bits>
   1616e:	4732                	lw	a4,12(sp)
   16170:	4485                	li	s1,1
   16172:	c804                	sw	s1,16(s0)
   16174:	c858                	sw	a4,20(s0)
   16176:	02050793          	addi	a5,a0,32
   1617a:	06090063          	beqz	s2,161da <__d2b+0xb2>
   1617e:	bcd90913          	addi	s2,s2,-1075
   16182:	993e                	add	s2,s2,a5
   16184:	03500493          	li	s1,53
   16188:	012a2023          	sw	s2,0(s4)
   1618c:	40f48533          	sub	a0,s1,a5
   16190:	00a9a023          	sw	a0,0(s3)
   16194:	50b2                	lw	ra,44(sp)
   16196:	8522                	mv	a0,s0
   16198:	5422                	lw	s0,40(sp)
   1619a:	5492                	lw	s1,36(sp)
   1619c:	5902                	lw	s2,32(sp)
   1619e:	49f2                	lw	s3,28(sp)
   161a0:	4a62                	lw	s4,24(sp)
   161a2:	4ad2                	lw	s5,20(sp)
   161a4:	6145                	addi	sp,sp,48
   161a6:	8082                	ret
   161a8:	0028                	addi	a0,sp,8
   161aa:	c456                	sw	s5,8(sp)
   161ac:	80bff0ef          	jal	159b6 <__lo0bits>
   161b0:	4732                	lw	a4,12(sp)
   161b2:	87aa                	mv	a5,a0
   161b4:	c129                	beqz	a0,161f6 <__d2b+0xce>
   161b6:	4622                	lw	a2,8(sp)
   161b8:	02000693          	li	a3,32
   161bc:	8e89                	sub	a3,a3,a0
   161be:	00d716b3          	sll	a3,a4,a3
   161c2:	00a75733          	srl	a4,a4,a0
   161c6:	8ed1                	or	a3,a3,a2
   161c8:	c63a                	sw	a4,12(sp)
   161ca:	00e034b3          	snez	s1,a4
   161ce:	0485                	addi	s1,s1,1
   161d0:	c854                	sw	a3,20(s0)
   161d2:	cc18                	sw	a4,24(s0)
   161d4:	c804                	sw	s1,16(s0)
   161d6:	fa0914e3          	bnez	s2,1617e <__d2b+0x56>
   161da:	00249713          	slli	a4,s1,0x2
   161de:	9722                	add	a4,a4,s0
   161e0:	4b08                	lw	a0,16(a4)
   161e2:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee4172>
   161e6:	00fa2023          	sw	a5,0(s4)
   161ea:	f78ff0ef          	jal	15962 <__hi0bits>
   161ee:	0496                	slli	s1,s1,0x5
   161f0:	40a48533          	sub	a0,s1,a0
   161f4:	bf71                	j	16190 <__d2b+0x68>
   161f6:	46a2                	lw	a3,8(sp)
   161f8:	bfc9                	j	161ca <__d2b+0xa2>
   161fa:	66e9                	lui	a3,0x1a
   161fc:	6569                	lui	a0,0x1a
   161fe:	46068693          	addi	a3,a3,1120 # 1a460 <__clzsi2+0xd6>
   16202:	4601                	li	a2,0
   16204:	30f00593          	li	a1,783
   16208:	4d050513          	addi	a0,a0,1232 # 1a4d0 <__clzsi2+0x146>
   1620c:	0c1000ef          	jal	16acc <__assert_func>

00016210 <__ratio>:
   16210:	7179                	addi	sp,sp,-48
   16212:	d422                	sw	s0,40(sp)
   16214:	842e                	mv	s0,a1
   16216:	082c                	addi	a1,sp,24
   16218:	d606                	sw	ra,44(sp)
   1621a:	d226                	sw	s1,36(sp)
   1621c:	84aa                	mv	s1,a0
   1621e:	e37ff0ef          	jal	16054 <__b2d>
   16222:	c02a                	sw	a0,0(sp)
   16224:	c22e                	sw	a1,4(sp)
   16226:	2782                	fld	fa5,0(sp)
   16228:	086c                	addi	a1,sp,28
   1622a:	8522                	mv	a0,s0
   1622c:	a43e                	fsd	fa5,8(sp)
   1622e:	e27ff0ef          	jal	16054 <__b2d>
   16232:	4818                	lw	a4,16(s0)
   16234:	489c                	lw	a5,16(s1)
   16236:	46f2                	lw	a3,28(sp)
   16238:	c02a                	sw	a0,0(sp)
   1623a:	8f99                	sub	a5,a5,a4
   1623c:	4762                	lw	a4,24(sp)
   1623e:	0796                	slli	a5,a5,0x5
   16240:	c22e                	sw	a1,4(sp)
   16242:	8f15                	sub	a4,a4,a3
   16244:	97ba                	add	a5,a5,a4
   16246:	02f05263          	blez	a5,1626a <__ratio+0x5a>
   1624a:	46b2                	lw	a3,12(sp)
   1624c:	07d2                	slli	a5,a5,0x14
   1624e:	97b6                	add	a5,a5,a3
   16250:	c63e                	sw	a5,12(sp)
   16252:	2702                	fld	fa4,0(sp)
   16254:	27a2                	fld	fa5,8(sp)
   16256:	50b2                	lw	ra,44(sp)
   16258:	5422                	lw	s0,40(sp)
   1625a:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   1625e:	5492                	lw	s1,36(sp)
   16260:	a03e                	fsd	fa5,0(sp)
   16262:	4502                	lw	a0,0(sp)
   16264:	4592                	lw	a1,4(sp)
   16266:	6145                	addi	sp,sp,48
   16268:	8082                	ret
   1626a:	4692                	lw	a3,4(sp)
   1626c:	07d2                	slli	a5,a5,0x14
   1626e:	40f687b3          	sub	a5,a3,a5
   16272:	c23e                	sw	a5,4(sp)
   16274:	bff9                	j	16252 <__ratio+0x42>

00016276 <_mprec_log10>:
   16276:	47dd                	li	a5,23
   16278:	1141                	addi	sp,sp,-16
   1627a:	00a7df63          	bge	a5,a0,16298 <_mprec_log10+0x22>
   1627e:	ed81b787          	fld	fa5,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   16282:	ee01b707          	fld	fa4,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   16286:	157d                	addi	a0,a0,-1
   16288:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1628c:	fd6d                	bnez	a0,16286 <_mprec_log10+0x10>
   1628e:	a43e                	fsd	fa5,8(sp)
   16290:	4522                	lw	a0,8(sp)
   16292:	45b2                	lw	a1,12(sp)
   16294:	0141                	addi	sp,sp,16
   16296:	8082                	ret
   16298:	67ed                	lui	a5,0x1b
   1629a:	050e                	slli	a0,a0,0x3
   1629c:	80878793          	addi	a5,a5,-2040 # 1a808 <__mprec_tens>
   162a0:	97aa                	add	a5,a5,a0
   162a2:	239c                	fld	fa5,0(a5)
   162a4:	a43e                	fsd	fa5,8(sp)
   162a6:	4522                	lw	a0,8(sp)
   162a8:	45b2                	lw	a1,12(sp)
   162aa:	0141                	addi	sp,sp,16
   162ac:	8082                	ret

000162ae <__copybits>:
   162ae:	4a14                	lw	a3,16(a2)
   162b0:	15fd                	addi	a1,a1,-1
   162b2:	8595                	srai	a1,a1,0x5
   162b4:	0585                	addi	a1,a1,1
   162b6:	01460793          	addi	a5,a2,20
   162ba:	068a                	slli	a3,a3,0x2
   162bc:	058a                	slli	a1,a1,0x2
   162be:	96be                	add	a3,a3,a5
   162c0:	95aa                	add	a1,a1,a0
   162c2:	02d7f163          	bgeu	a5,a3,162e4 <__copybits+0x36>
   162c6:	872a                	mv	a4,a0
   162c8:	0007a803          	lw	a6,0(a5)
   162cc:	0791                	addi	a5,a5,4
   162ce:	0711                	addi	a4,a4,4
   162d0:	ff072e23          	sw	a6,-4(a4)
   162d4:	fed7eae3          	bltu	a5,a3,162c8 <__copybits+0x1a>
   162d8:	40c687b3          	sub	a5,a3,a2
   162dc:	17ad                	addi	a5,a5,-21
   162de:	9bf1                	andi	a5,a5,-4
   162e0:	0791                	addi	a5,a5,4
   162e2:	953e                	add	a0,a0,a5
   162e4:	00b57763          	bgeu	a0,a1,162f2 <__copybits+0x44>
   162e8:	0511                	addi	a0,a0,4
   162ea:	fe052e23          	sw	zero,-4(a0)
   162ee:	feb56de3          	bltu	a0,a1,162e8 <__copybits+0x3a>
   162f2:	8082                	ret

000162f4 <__any_on>:
   162f4:	4918                	lw	a4,16(a0)
   162f6:	4055d613          	srai	a2,a1,0x5
   162fa:	01450693          	addi	a3,a0,20
   162fe:	00c75d63          	bge	a4,a2,16318 <__any_on+0x24>
   16302:	070a                	slli	a4,a4,0x2
   16304:	00e687b3          	add	a5,a3,a4
   16308:	02f6f863          	bgeu	a3,a5,16338 <__any_on+0x44>
   1630c:	ffc7a703          	lw	a4,-4(a5)
   16310:	17f1                	addi	a5,a5,-4
   16312:	db7d                	beqz	a4,16308 <__any_on+0x14>
   16314:	4505                	li	a0,1
   16316:	8082                	ret
   16318:	00261793          	slli	a5,a2,0x2
   1631c:	97b6                	add	a5,a5,a3
   1631e:	fee655e3          	bge	a2,a4,16308 <__any_on+0x14>
   16322:	89fd                	andi	a1,a1,31
   16324:	d1f5                	beqz	a1,16308 <__any_on+0x14>
   16326:	4390                	lw	a2,0(a5)
   16328:	4505                	li	a0,1
   1632a:	00b65733          	srl	a4,a2,a1
   1632e:	00b71733          	sll	a4,a4,a1
   16332:	fce60be3          	beq	a2,a4,16308 <__any_on+0x14>
   16336:	8082                	ret
   16338:	4501                	li	a0,0
   1633a:	8082                	ret

0001633c <_realloc_r>:
   1633c:	7179                	addi	sp,sp,-48
   1633e:	d226                	sw	s1,36(sp)
   16340:	d606                	sw	ra,44(sp)
   16342:	84b2                	mv	s1,a2
   16344:	14058d63          	beqz	a1,1649e <_realloc_r+0x162>
   16348:	d422                	sw	s0,40(sp)
   1634a:	d04a                	sw	s2,32(sp)
   1634c:	842e                	mv	s0,a1
   1634e:	ce4e                	sw	s3,28(sp)
   16350:	ca56                	sw	s5,20(sp)
   16352:	cc52                	sw	s4,24(sp)
   16354:	892a                	mv	s2,a0
   16356:	c8cfb0ef          	jal	117e2 <__malloc_lock>
   1635a:	ffc42703          	lw	a4,-4(s0)
   1635e:	00b48793          	addi	a5,s1,11
   16362:	46d9                	li	a3,22
   16364:	ff840a93          	addi	s5,s0,-8
   16368:	ffc77993          	andi	s3,a4,-4
   1636c:	0af6ff63          	bgeu	a3,a5,1642a <_realloc_r+0xee>
   16370:	ff87fa13          	andi	s4,a5,-8
   16374:	0a07ce63          	bltz	a5,16430 <_realloc_r+0xf4>
   16378:	0a9a6c63          	bltu	s4,s1,16430 <_realloc_r+0xf4>
   1637c:	0d49d563          	bge	s3,s4,16446 <_realloc_r+0x10a>
   16380:	67ed                	lui	a5,0x1b
   16382:	c462                	sw	s8,8(sp)
   16384:	14078c13          	addi	s8,a5,320 # 1b140 <__malloc_av_>
   16388:	008c2603          	lw	a2,8(s8)
   1638c:	013a86b3          	add	a3,s5,s3
   16390:	42dc                	lw	a5,4(a3)
   16392:	12d60e63          	beq	a2,a3,164ce <_realloc_r+0x192>
   16396:	ffe7f613          	andi	a2,a5,-2
   1639a:	9636                	add	a2,a2,a3
   1639c:	4250                	lw	a2,4(a2)
   1639e:	8a05                	andi	a2,a2,1
   163a0:	e27d                	bnez	a2,16486 <_realloc_r+0x14a>
   163a2:	9bf1                	andi	a5,a5,-4
   163a4:	00f98633          	add	a2,s3,a5
   163a8:	09465963          	bge	a2,s4,1643a <_realloc_r+0xfe>
   163ac:	8b05                	andi	a4,a4,1
   163ae:	e70d                	bnez	a4,163d8 <_realloc_r+0x9c>
   163b0:	c65e                	sw	s7,12(sp)
   163b2:	ff842b83          	lw	s7,-8(s0)
   163b6:	c85a                	sw	s6,16(sp)
   163b8:	417a8bb3          	sub	s7,s5,s7
   163bc:	004ba703          	lw	a4,4(s7)
   163c0:	9b71                	andi	a4,a4,-4
   163c2:	97ba                	add	a5,a5,a4
   163c4:	01378b33          	add	s6,a5,s3
   163c8:	234b5f63          	bge	s6,s4,16606 <_realloc_r+0x2ca>
   163cc:	00e98b33          	add	s6,s3,a4
   163d0:	1d4b5463          	bge	s6,s4,16598 <_realloc_r+0x25c>
   163d4:	4b42                	lw	s6,16(sp)
   163d6:	4bb2                	lw	s7,12(sp)
   163d8:	85a6                	mv	a1,s1
   163da:	854a                	mv	a0,s2
   163dc:	e63fa0ef          	jal	1123e <_malloc_r>
   163e0:	84aa                	mv	s1,a0
   163e2:	2e050063          	beqz	a0,166c2 <_realloc_r+0x386>
   163e6:	ffc42783          	lw	a5,-4(s0)
   163ea:	ff850713          	addi	a4,a0,-8
   163ee:	9bf9                	andi	a5,a5,-2
   163f0:	97d6                	add	a5,a5,s5
   163f2:	18e78d63          	beq	a5,a4,1658c <_realloc_r+0x250>
   163f6:	ffc98613          	addi	a2,s3,-4
   163fa:	02400793          	li	a5,36
   163fe:	20c7e063          	bltu	a5,a2,165fe <_realloc_r+0x2c2>
   16402:	474d                	li	a4,19
   16404:	16c76863          	bltu	a4,a2,16574 <_realloc_r+0x238>
   16408:	87aa                	mv	a5,a0
   1640a:	8722                	mv	a4,s0
   1640c:	4314                	lw	a3,0(a4)
   1640e:	c394                	sw	a3,0(a5)
   16410:	4354                	lw	a3,4(a4)
   16412:	c3d4                	sw	a3,4(a5)
   16414:	4718                	lw	a4,8(a4)
   16416:	c798                	sw	a4,8(a5)
   16418:	85a2                	mv	a1,s0
   1641a:	854a                	mv	a0,s2
   1641c:	c01fa0ef          	jal	1101c <_free_r>
   16420:	854a                	mv	a0,s2
   16422:	bc2fb0ef          	jal	117e4 <__malloc_unlock>
   16426:	4c22                	lw	s8,8(sp)
   16428:	a0a9                	j	16472 <_realloc_r+0x136>
   1642a:	4a41                	li	s4,16
   1642c:	f49a78e3          	bgeu	s4,s1,1637c <_realloc_r+0x40>
   16430:	47b1                	li	a5,12
   16432:	00f92023          	sw	a5,0(s2)
   16436:	4481                	li	s1,0
   16438:	a82d                	j	16472 <_realloc_r+0x136>
   1643a:	46dc                	lw	a5,12(a3)
   1643c:	4698                	lw	a4,8(a3)
   1643e:	4c22                	lw	s8,8(sp)
   16440:	89b2                	mv	s3,a2
   16442:	c75c                	sw	a5,12(a4)
   16444:	c798                	sw	a4,8(a5)
   16446:	004aa783          	lw	a5,4(s5)
   1644a:	414986b3          	sub	a3,s3,s4
   1644e:	463d                	li	a2,15
   16450:	8b85                	andi	a5,a5,1
   16452:	013a8733          	add	a4,s5,s3
   16456:	04d66a63          	bltu	a2,a3,164aa <_realloc_r+0x16e>
   1645a:	0137e7b3          	or	a5,a5,s3
   1645e:	00faa223          	sw	a5,4(s5)
   16462:	435c                	lw	a5,4(a4)
   16464:	0017e793          	ori	a5,a5,1
   16468:	c35c                	sw	a5,4(a4)
   1646a:	854a                	mv	a0,s2
   1646c:	b78fb0ef          	jal	117e4 <__malloc_unlock>
   16470:	84a2                	mv	s1,s0
   16472:	5422                	lw	s0,40(sp)
   16474:	50b2                	lw	ra,44(sp)
   16476:	5902                	lw	s2,32(sp)
   16478:	49f2                	lw	s3,28(sp)
   1647a:	4a62                	lw	s4,24(sp)
   1647c:	4ad2                	lw	s5,20(sp)
   1647e:	8526                	mv	a0,s1
   16480:	5492                	lw	s1,36(sp)
   16482:	6145                	addi	sp,sp,48
   16484:	8082                	ret
   16486:	8b05                	andi	a4,a4,1
   16488:	fb21                	bnez	a4,163d8 <_realloc_r+0x9c>
   1648a:	c65e                	sw	s7,12(sp)
   1648c:	ff842b83          	lw	s7,-8(s0)
   16490:	c85a                	sw	s6,16(sp)
   16492:	417a8bb3          	sub	s7,s5,s7
   16496:	004ba703          	lw	a4,4(s7)
   1649a:	9b71                	andi	a4,a4,-4
   1649c:	bf05                	j	163cc <_realloc_r+0x90>
   1649e:	50b2                	lw	ra,44(sp)
   164a0:	5492                	lw	s1,36(sp)
   164a2:	85b2                	mv	a1,a2
   164a4:	6145                	addi	sp,sp,48
   164a6:	d99fa06f          	j	1123e <_malloc_r>
   164aa:	0147e7b3          	or	a5,a5,s4
   164ae:	00faa223          	sw	a5,4(s5)
   164b2:	014a85b3          	add	a1,s5,s4
   164b6:	0016e693          	ori	a3,a3,1
   164ba:	c1d4                	sw	a3,4(a1)
   164bc:	435c                	lw	a5,4(a4)
   164be:	05a1                	addi	a1,a1,8
   164c0:	854a                	mv	a0,s2
   164c2:	0017e793          	ori	a5,a5,1
   164c6:	c35c                	sw	a5,4(a4)
   164c8:	b55fa0ef          	jal	1101c <_free_r>
   164cc:	bf79                	j	1646a <_realloc_r+0x12e>
   164ce:	9bf1                	andi	a5,a5,-4
   164d0:	013786b3          	add	a3,a5,s3
   164d4:	010a0613          	addi	a2,s4,16
   164d8:	1ac6db63          	bge	a3,a2,1668e <_realloc_r+0x352>
   164dc:	8b05                	andi	a4,a4,1
   164de:	ee071de3          	bnez	a4,163d8 <_realloc_r+0x9c>
   164e2:	c65e                	sw	s7,12(sp)
   164e4:	ff842b83          	lw	s7,-8(s0)
   164e8:	c85a                	sw	s6,16(sp)
   164ea:	417a8bb3          	sub	s7,s5,s7
   164ee:	004ba703          	lw	a4,4(s7)
   164f2:	9b71                	andi	a4,a4,-4
   164f4:	97ba                	add	a5,a5,a4
   164f6:	01378b33          	add	s6,a5,s3
   164fa:	eccb49e3          	blt	s6,a2,163cc <_realloc_r+0x90>
   164fe:	00cba783          	lw	a5,12(s7)
   16502:	008ba703          	lw	a4,8(s7)
   16506:	ffc98613          	addi	a2,s3,-4
   1650a:	02400693          	li	a3,36
   1650e:	c75c                	sw	a5,12(a4)
   16510:	c798                	sw	a4,8(a5)
   16512:	008b8493          	addi	s1,s7,8
   16516:	1cc6e563          	bltu	a3,a2,166e0 <_realloc_r+0x3a4>
   1651a:	474d                	li	a4,19
   1651c:	87a6                	mv	a5,s1
   1651e:	00c77e63          	bgeu	a4,a2,1653a <_realloc_r+0x1fe>
   16522:	4018                	lw	a4,0(s0)
   16524:	47ed                	li	a5,27
   16526:	00eba423          	sw	a4,8(s7)
   1652a:	4058                	lw	a4,4(s0)
   1652c:	00eba623          	sw	a4,12(s7)
   16530:	1ac7ed63          	bltu	a5,a2,166ea <_realloc_r+0x3ae>
   16534:	0421                	addi	s0,s0,8
   16536:	010b8793          	addi	a5,s7,16
   1653a:	4018                	lw	a4,0(s0)
   1653c:	c398                	sw	a4,0(a5)
   1653e:	4058                	lw	a4,4(s0)
   16540:	c3d8                	sw	a4,4(a5)
   16542:	4418                	lw	a4,8(s0)
   16544:	c798                	sw	a4,8(a5)
   16546:	014b8733          	add	a4,s7,s4
   1654a:	414b0b33          	sub	s6,s6,s4
   1654e:	00ec2423          	sw	a4,8(s8)
   16552:	001b6793          	ori	a5,s6,1
   16556:	c35c                	sw	a5,4(a4)
   16558:	004ba783          	lw	a5,4(s7)
   1655c:	854a                	mv	a0,s2
   1655e:	8b85                	andi	a5,a5,1
   16560:	0147e7b3          	or	a5,a5,s4
   16564:	00fba223          	sw	a5,4(s7)
   16568:	a7cfb0ef          	jal	117e4 <__malloc_unlock>
   1656c:	4b42                	lw	s6,16(sp)
   1656e:	4bb2                	lw	s7,12(sp)
   16570:	4c22                	lw	s8,8(sp)
   16572:	b701                	j	16472 <_realloc_r+0x136>
   16574:	4014                	lw	a3,0(s0)
   16576:	476d                	li	a4,27
   16578:	c114                	sw	a3,0(a0)
   1657a:	4054                	lw	a3,4(s0)
   1657c:	c154                	sw	a3,4(a0)
   1657e:	0ec76d63          	bltu	a4,a2,16678 <_realloc_r+0x33c>
   16582:	00840713          	addi	a4,s0,8
   16586:	00850793          	addi	a5,a0,8
   1658a:	b549                	j	1640c <_realloc_r+0xd0>
   1658c:	ffc52783          	lw	a5,-4(a0)
   16590:	4c22                	lw	s8,8(sp)
   16592:	9bf1                	andi	a5,a5,-4
   16594:	99be                	add	s3,s3,a5
   16596:	bd45                	j	16446 <_realloc_r+0x10a>
   16598:	00cba783          	lw	a5,12(s7)
   1659c:	008ba703          	lw	a4,8(s7)
   165a0:	ffc98613          	addi	a2,s3,-4
   165a4:	02400693          	li	a3,36
   165a8:	c75c                	sw	a5,12(a4)
   165aa:	c798                	sw	a4,8(a5)
   165ac:	008b8493          	addi	s1,s7,8
   165b0:	0ac6ef63          	bltu	a3,a2,1666e <_realloc_r+0x332>
   165b4:	474d                	li	a4,19
   165b6:	87a6                	mv	a5,s1
   165b8:	02c77663          	bgeu	a4,a2,165e4 <_realloc_r+0x2a8>
   165bc:	4018                	lw	a4,0(s0)
   165be:	47ed                	li	a5,27
   165c0:	00eba423          	sw	a4,8(s7)
   165c4:	4058                	lw	a4,4(s0)
   165c6:	00eba623          	sw	a4,12(s7)
   165ca:	0ec7f863          	bgeu	a5,a2,166ba <_realloc_r+0x37e>
   165ce:	441c                	lw	a5,8(s0)
   165d0:	00fba823          	sw	a5,16(s7)
   165d4:	445c                	lw	a5,12(s0)
   165d6:	00fbaa23          	sw	a5,20(s7)
   165da:	06d60f63          	beq	a2,a3,16658 <_realloc_r+0x31c>
   165de:	0441                	addi	s0,s0,16
   165e0:	018b8793          	addi	a5,s7,24
   165e4:	4018                	lw	a4,0(s0)
   165e6:	c398                	sw	a4,0(a5)
   165e8:	4058                	lw	a4,4(s0)
   165ea:	c3d8                	sw	a4,4(a5)
   165ec:	4418                	lw	a4,8(s0)
   165ee:	c798                	sw	a4,8(a5)
   165f0:	89da                	mv	s3,s6
   165f2:	8ade                	mv	s5,s7
   165f4:	4b42                	lw	s6,16(sp)
   165f6:	4bb2                	lw	s7,12(sp)
   165f8:	4c22                	lw	s8,8(sp)
   165fa:	8426                	mv	s0,s1
   165fc:	b5a9                	j	16446 <_realloc_r+0x10a>
   165fe:	85a2                	mv	a1,s0
   16600:	879fd0ef          	jal	13e78 <memmove>
   16604:	bd11                	j	16418 <_realloc_r+0xdc>
   16606:	46dc                	lw	a5,12(a3)
   16608:	4698                	lw	a4,8(a3)
   1660a:	ffc98613          	addi	a2,s3,-4
   1660e:	02400693          	li	a3,36
   16612:	c75c                	sw	a5,12(a4)
   16614:	c798                	sw	a4,8(a5)
   16616:	008ba703          	lw	a4,8(s7)
   1661a:	00cba783          	lw	a5,12(s7)
   1661e:	008b8493          	addi	s1,s7,8
   16622:	c75c                	sw	a5,12(a4)
   16624:	c798                	sw	a4,8(a5)
   16626:	04c6e463          	bltu	a3,a2,1666e <_realloc_r+0x332>
   1662a:	474d                	li	a4,19
   1662c:	87a6                	mv	a5,s1
   1662e:	fac77be3          	bgeu	a4,a2,165e4 <_realloc_r+0x2a8>
   16632:	4018                	lw	a4,0(s0)
   16634:	47ed                	li	a5,27
   16636:	00eba423          	sw	a4,8(s7)
   1663a:	4058                	lw	a4,4(s0)
   1663c:	00eba623          	sw	a4,12(s7)
   16640:	06c7fd63          	bgeu	a5,a2,166ba <_realloc_r+0x37e>
   16644:	4418                	lw	a4,8(s0)
   16646:	02400793          	li	a5,36
   1664a:	00eba823          	sw	a4,16(s7)
   1664e:	4458                	lw	a4,12(s0)
   16650:	00ebaa23          	sw	a4,20(s7)
   16654:	f8f615e3          	bne	a2,a5,165de <_realloc_r+0x2a2>
   16658:	4818                	lw	a4,16(s0)
   1665a:	020b8793          	addi	a5,s7,32
   1665e:	0461                	addi	s0,s0,24
   16660:	00ebac23          	sw	a4,24(s7)
   16664:	ffc42703          	lw	a4,-4(s0)
   16668:	00ebae23          	sw	a4,28(s7)
   1666c:	bfa5                	j	165e4 <_realloc_r+0x2a8>
   1666e:	85a2                	mv	a1,s0
   16670:	8526                	mv	a0,s1
   16672:	807fd0ef          	jal	13e78 <memmove>
   16676:	bfad                	j	165f0 <_realloc_r+0x2b4>
   16678:	4418                	lw	a4,8(s0)
   1667a:	c518                	sw	a4,8(a0)
   1667c:	4458                	lw	a4,12(s0)
   1667e:	c558                	sw	a4,12(a0)
   16680:	04f60763          	beq	a2,a5,166ce <_realloc_r+0x392>
   16684:	01040713          	addi	a4,s0,16
   16688:	01050793          	addi	a5,a0,16
   1668c:	b341                	j	1640c <_realloc_r+0xd0>
   1668e:	9ad2                	add	s5,s5,s4
   16690:	414686b3          	sub	a3,a3,s4
   16694:	015c2423          	sw	s5,8(s8)
   16698:	0016e793          	ori	a5,a3,1
   1669c:	00faa223          	sw	a5,4(s5)
   166a0:	ffc42783          	lw	a5,-4(s0)
   166a4:	854a                	mv	a0,s2
   166a6:	84a2                	mv	s1,s0
   166a8:	8b85                	andi	a5,a5,1
   166aa:	0147e7b3          	or	a5,a5,s4
   166ae:	fef42e23          	sw	a5,-4(s0)
   166b2:	932fb0ef          	jal	117e4 <__malloc_unlock>
   166b6:	4c22                	lw	s8,8(sp)
   166b8:	bb6d                	j	16472 <_realloc_r+0x136>
   166ba:	0421                	addi	s0,s0,8
   166bc:	010b8793          	addi	a5,s7,16
   166c0:	b715                	j	165e4 <_realloc_r+0x2a8>
   166c2:	854a                	mv	a0,s2
   166c4:	920fb0ef          	jal	117e4 <__malloc_unlock>
   166c8:	4481                	li	s1,0
   166ca:	4c22                	lw	s8,8(sp)
   166cc:	b35d                	j	16472 <_realloc_r+0x136>
   166ce:	4814                	lw	a3,16(s0)
   166d0:	01840713          	addi	a4,s0,24
   166d4:	01850793          	addi	a5,a0,24
   166d8:	c914                	sw	a3,16(a0)
   166da:	4854                	lw	a3,20(s0)
   166dc:	c954                	sw	a3,20(a0)
   166de:	b33d                	j	1640c <_realloc_r+0xd0>
   166e0:	85a2                	mv	a1,s0
   166e2:	8526                	mv	a0,s1
   166e4:	f94fd0ef          	jal	13e78 <memmove>
   166e8:	bdb9                	j	16546 <_realloc_r+0x20a>
   166ea:	441c                	lw	a5,8(s0)
   166ec:	00fba823          	sw	a5,16(s7)
   166f0:	445c                	lw	a5,12(s0)
   166f2:	00fbaa23          	sw	a5,20(s7)
   166f6:	00d60663          	beq	a2,a3,16702 <_realloc_r+0x3c6>
   166fa:	0441                	addi	s0,s0,16
   166fc:	018b8793          	addi	a5,s7,24
   16700:	bd2d                	j	1653a <_realloc_r+0x1fe>
   16702:	4818                	lw	a4,16(s0)
   16704:	020b8793          	addi	a5,s7,32
   16708:	00ebac23          	sw	a4,24(s7)
   1670c:	4858                	lw	a4,20(s0)
   1670e:	0461                	addi	s0,s0,24
   16710:	00ebae23          	sw	a4,28(s7)
   16714:	b51d                	j	1653a <_realloc_r+0x1fe>

00016716 <__smakebuf_r>:
   16716:	00c59783          	lh	a5,12(a1)
   1671a:	7119                	addi	sp,sp,-128
   1671c:	dca2                	sw	s0,120(sp)
   1671e:	de86                	sw	ra,124(sp)
   16720:	0027f713          	andi	a4,a5,2
   16724:	842e                	mv	s0,a1
   16726:	cb19                	beqz	a4,1673c <__smakebuf_r+0x26>
   16728:	04358793          	addi	a5,a1,67
   1672c:	c19c                	sw	a5,0(a1)
   1672e:	c99c                	sw	a5,16(a1)
   16730:	4785                	li	a5,1
   16732:	c9dc                	sw	a5,20(a1)
   16734:	50f6                	lw	ra,124(sp)
   16736:	5466                	lw	s0,120(sp)
   16738:	6109                	addi	sp,sp,128
   1673a:	8082                	ret
   1673c:	00e59583          	lh	a1,14(a1)
   16740:	daa6                	sw	s1,116(sp)
   16742:	d8ca                	sw	s2,112(sp)
   16744:	d6ce                	sw	s3,108(sp)
   16746:	d4d2                	sw	s4,104(sp)
   16748:	84aa                	mv	s1,a0
   1674a:	0605c263          	bltz	a1,167ae <__smakebuf_r+0x98>
   1674e:	0030                	addi	a2,sp,8
   16750:	22fd                	jal	1693e <_fstat_r>
   16752:	04054c63          	bltz	a0,167aa <__smakebuf_r+0x94>
   16756:	47b2                	lw	a5,12(sp)
   16758:	693d                	lui	s2,0xf
   1675a:	6985                	lui	s3,0x1
   1675c:	00f97933          	and	s2,s2,a5
   16760:	77f9                	lui	a5,0xffffe
   16762:	993e                	add	s2,s2,a5
   16764:	00193913          	seqz	s2,s2
   16768:	40000a13          	li	s4,1024
   1676c:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   16770:	85d2                	mv	a1,s4
   16772:	8526                	mv	a0,s1
   16774:	acbfa0ef          	jal	1123e <_malloc_r>
   16778:	00c41783          	lh	a5,12(s0)
   1677c:	c539                	beqz	a0,167ca <__smakebuf_r+0xb4>
   1677e:	0807e793          	ori	a5,a5,128
   16782:	c008                	sw	a0,0(s0)
   16784:	c808                	sw	a0,16(s0)
   16786:	00f41623          	sh	a5,12(s0)
   1678a:	01442a23          	sw	s4,20(s0)
   1678e:	06091563          	bnez	s2,167f8 <__smakebuf_r+0xe2>
   16792:	0137e7b3          	or	a5,a5,s3
   16796:	50f6                	lw	ra,124(sp)
   16798:	00f41623          	sh	a5,12(s0)
   1679c:	5466                	lw	s0,120(sp)
   1679e:	54d6                	lw	s1,116(sp)
   167a0:	5946                	lw	s2,112(sp)
   167a2:	59b6                	lw	s3,108(sp)
   167a4:	5a26                	lw	s4,104(sp)
   167a6:	6109                	addi	sp,sp,128
   167a8:	8082                	ret
   167aa:	00c41783          	lh	a5,12(s0)
   167ae:	0807f793          	andi	a5,a5,128
   167b2:	4901                	li	s2,0
   167b4:	cf95                	beqz	a5,167f0 <__smakebuf_r+0xda>
   167b6:	04000a13          	li	s4,64
   167ba:	85d2                	mv	a1,s4
   167bc:	8526                	mv	a0,s1
   167be:	a81fa0ef          	jal	1123e <_malloc_r>
   167c2:	00c41783          	lh	a5,12(s0)
   167c6:	4981                	li	s3,0
   167c8:	f95d                	bnez	a0,1677e <__smakebuf_r+0x68>
   167ca:	2007f713          	andi	a4,a5,512
   167ce:	ef0d                	bnez	a4,16808 <__smakebuf_r+0xf2>
   167d0:	9bf1                	andi	a5,a5,-4
   167d2:	0027e793          	ori	a5,a5,2
   167d6:	04340713          	addi	a4,s0,67
   167da:	00f41623          	sh	a5,12(s0)
   167de:	4785                	li	a5,1
   167e0:	54d6                	lw	s1,116(sp)
   167e2:	5946                	lw	s2,112(sp)
   167e4:	59b6                	lw	s3,108(sp)
   167e6:	5a26                	lw	s4,104(sp)
   167e8:	c018                	sw	a4,0(s0)
   167ea:	c818                	sw	a4,16(s0)
   167ec:	c85c                	sw	a5,20(s0)
   167ee:	b799                	j	16734 <__smakebuf_r+0x1e>
   167f0:	40000a13          	li	s4,1024
   167f4:	4981                	li	s3,0
   167f6:	bfad                	j	16770 <__smakebuf_r+0x5a>
   167f8:	00e41583          	lh	a1,14(s0)
   167fc:	8526                	mv	a0,s1
   167fe:	2aad                	jal	16978 <_isatty_r>
   16800:	e909                	bnez	a0,16812 <__smakebuf_r+0xfc>
   16802:	00c41783          	lh	a5,12(s0)
   16806:	b771                	j	16792 <__smakebuf_r+0x7c>
   16808:	54d6                	lw	s1,116(sp)
   1680a:	5946                	lw	s2,112(sp)
   1680c:	59b6                	lw	s3,108(sp)
   1680e:	5a26                	lw	s4,104(sp)
   16810:	b715                	j	16734 <__smakebuf_r+0x1e>
   16812:	00c45783          	lhu	a5,12(s0)
   16816:	9bf1                	andi	a5,a5,-4
   16818:	0017e793          	ori	a5,a5,1
   1681c:	07c2                	slli	a5,a5,0x10
   1681e:	87c1                	srai	a5,a5,0x10
   16820:	bf8d                	j	16792 <__smakebuf_r+0x7c>

00016822 <__swhatbuf_r>:
   16822:	7159                	addi	sp,sp,-112
   16824:	d4a2                	sw	s0,104(sp)
   16826:	842e                	mv	s0,a1
   16828:	00e59583          	lh	a1,14(a1)
   1682c:	d2a6                	sw	s1,100(sp)
   1682e:	d0ca                	sw	s2,96(sp)
   16830:	d686                	sw	ra,108(sp)
   16832:	84b2                	mv	s1,a2
   16834:	8936                	mv	s2,a3
   16836:	0205cb63          	bltz	a1,1686c <__swhatbuf_r+0x4a>
   1683a:	0030                	addi	a2,sp,8
   1683c:	2209                	jal	1693e <_fstat_r>
   1683e:	02054763          	bltz	a0,1686c <__swhatbuf_r+0x4a>
   16842:	4732                	lw	a4,12(sp)
   16844:	67bd                	lui	a5,0xf
   16846:	50b6                	lw	ra,108(sp)
   16848:	8ff9                	and	a5,a5,a4
   1684a:	7779                	lui	a4,0xffffe
   1684c:	97ba                	add	a5,a5,a4
   1684e:	5426                	lw	s0,104(sp)
   16850:	0017b793          	seqz	a5,a5
   16854:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   16858:	40000713          	li	a4,1024
   1685c:	c098                	sw	a4,0(s1)
   1685e:	6505                	lui	a0,0x1
   16860:	5496                	lw	s1,100(sp)
   16862:	5906                	lw	s2,96(sp)
   16864:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   16868:	6165                	addi	sp,sp,112
   1686a:	8082                	ret
   1686c:	00c45783          	lhu	a5,12(s0)
   16870:	0807f793          	andi	a5,a5,128
   16874:	cf91                	beqz	a5,16890 <__swhatbuf_r+0x6e>
   16876:	50b6                	lw	ra,108(sp)
   16878:	5426                	lw	s0,104(sp)
   1687a:	4781                	li	a5,0
   1687c:	00f92023          	sw	a5,0(s2)
   16880:	04000713          	li	a4,64
   16884:	c098                	sw	a4,0(s1)
   16886:	5906                	lw	s2,96(sp)
   16888:	5496                	lw	s1,100(sp)
   1688a:	4501                	li	a0,0
   1688c:	6165                	addi	sp,sp,112
   1688e:	8082                	ret
   16890:	50b6                	lw	ra,108(sp)
   16892:	5426                	lw	s0,104(sp)
   16894:	00f92023          	sw	a5,0(s2)
   16898:	40000713          	li	a4,1024
   1689c:	c098                	sw	a4,0(s1)
   1689e:	5906                	lw	s2,96(sp)
   168a0:	5496                	lw	s1,100(sp)
   168a2:	4501                	li	a0,0
   168a4:	6165                	addi	sp,sp,112
   168a6:	8082                	ret

000168a8 <_setlocale_r>:
   168a8:	1141                	addi	sp,sp,-16
   168aa:	c606                	sw	ra,12(sp)
   168ac:	c226                	sw	s1,4(sp)
   168ae:	c20d                	beqz	a2,168d0 <_setlocale_r+0x28>
   168b0:	65e9                	lui	a1,0x1a
   168b2:	52858593          	addi	a1,a1,1320 # 1a528 <__clzsi2+0x19e>
   168b6:	8532                	mv	a0,a2
   168b8:	c422                	sw	s0,8(sp)
   168ba:	8432                	mv	s0,a2
   168bc:	28cd                	jal	169ae <strcmp>
   168be:	64e9                	lui	s1,0x1a
   168c0:	e911                	bnez	a0,168d4 <_setlocale_r+0x2c>
   168c2:	4422                	lw	s0,8(sp)
   168c4:	52448513          	addi	a0,s1,1316 # 1a524 <__clzsi2+0x19a>
   168c8:	40b2                	lw	ra,12(sp)
   168ca:	4492                	lw	s1,4(sp)
   168cc:	0141                	addi	sp,sp,16
   168ce:	8082                	ret
   168d0:	64e9                	lui	s1,0x1a
   168d2:	bfcd                	j	168c4 <_setlocale_r+0x1c>
   168d4:	52448593          	addi	a1,s1,1316 # 1a524 <__clzsi2+0x19a>
   168d8:	8522                	mv	a0,s0
   168da:	28d1                	jal	169ae <strcmp>
   168dc:	d17d                	beqz	a0,168c2 <_setlocale_r+0x1a>
   168de:	65e9                	lui	a1,0x1a
   168e0:	54058593          	addi	a1,a1,1344 # 1a540 <__clzsi2+0x1b6>
   168e4:	8522                	mv	a0,s0
   168e6:	20e1                	jal	169ae <strcmp>
   168e8:	dd69                	beqz	a0,168c2 <_setlocale_r+0x1a>
   168ea:	4422                	lw	s0,8(sp)
   168ec:	4501                	li	a0,0
   168ee:	bfe9                	j	168c8 <_setlocale_r+0x20>

000168f0 <__locale_mb_cur_max>:
   168f0:	e601c503          	lbu	a0,-416(gp) # 1b670 <__global_locale+0x128>
   168f4:	8082                	ret

000168f6 <setlocale>:
   168f6:	1141                	addi	sp,sp,-16
   168f8:	c606                	sw	ra,12(sp)
   168fa:	c226                	sw	s1,4(sp)
   168fc:	c18d                	beqz	a1,1691e <setlocale+0x28>
   168fe:	c422                	sw	s0,8(sp)
   16900:	842e                	mv	s0,a1
   16902:	65e9                	lui	a1,0x1a
   16904:	52858593          	addi	a1,a1,1320 # 1a528 <__clzsi2+0x19e>
   16908:	8522                	mv	a0,s0
   1690a:	2055                	jal	169ae <strcmp>
   1690c:	64e9                	lui	s1,0x1a
   1690e:	e911                	bnez	a0,16922 <setlocale+0x2c>
   16910:	4422                	lw	s0,8(sp)
   16912:	52448513          	addi	a0,s1,1316 # 1a524 <__clzsi2+0x19a>
   16916:	40b2                	lw	ra,12(sp)
   16918:	4492                	lw	s1,4(sp)
   1691a:	0141                	addi	sp,sp,16
   1691c:	8082                	ret
   1691e:	64e9                	lui	s1,0x1a
   16920:	bfcd                	j	16912 <setlocale+0x1c>
   16922:	52448593          	addi	a1,s1,1316 # 1a524 <__clzsi2+0x19a>
   16926:	8522                	mv	a0,s0
   16928:	2059                	jal	169ae <strcmp>
   1692a:	d17d                	beqz	a0,16910 <setlocale+0x1a>
   1692c:	65e9                	lui	a1,0x1a
   1692e:	54058593          	addi	a1,a1,1344 # 1a540 <__clzsi2+0x1b6>
   16932:	8522                	mv	a0,s0
   16934:	28ad                	jal	169ae <strcmp>
   16936:	dd69                	beqz	a0,16910 <setlocale+0x1a>
   16938:	4422                	lw	s0,8(sp)
   1693a:	4501                	li	a0,0
   1693c:	bfe9                	j	16916 <setlocale+0x20>

0001693e <_fstat_r>:
   1693e:	1141                	addi	sp,sp,-16
   16940:	872e                	mv	a4,a1
   16942:	c422                	sw	s0,8(sp)
   16944:	c226                	sw	s1,4(sp)
   16946:	842a                	mv	s0,a0
   16948:	85b2                	mv	a1,a2
   1694a:	853a                	mv	a0,a4
   1694c:	c606                	sw	ra,12(sp)
   1694e:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   16952:	3f8010ef          	jal	17d4a <_fstat>
   16956:	57fd                	li	a5,-1
   16958:	00f50763          	beq	a0,a5,16966 <_fstat_r+0x28>
   1695c:	40b2                	lw	ra,12(sp)
   1695e:	4422                	lw	s0,8(sp)
   16960:	4492                	lw	s1,4(sp)
   16962:	0141                	addi	sp,sp,16
   16964:	8082                	ret
   16966:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   1696a:	dbed                	beqz	a5,1695c <_fstat_r+0x1e>
   1696c:	40b2                	lw	ra,12(sp)
   1696e:	c01c                	sw	a5,0(s0)
   16970:	4422                	lw	s0,8(sp)
   16972:	4492                	lw	s1,4(sp)
   16974:	0141                	addi	sp,sp,16
   16976:	8082                	ret

00016978 <_isatty_r>:
   16978:	1141                	addi	sp,sp,-16
   1697a:	c422                	sw	s0,8(sp)
   1697c:	c226                	sw	s1,4(sp)
   1697e:	842a                	mv	s0,a0
   16980:	852e                	mv	a0,a1
   16982:	c606                	sw	ra,12(sp)
   16984:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   16988:	400010ef          	jal	17d88 <_isatty>
   1698c:	57fd                	li	a5,-1
   1698e:	00f50763          	beq	a0,a5,1699c <_isatty_r+0x24>
   16992:	40b2                	lw	ra,12(sp)
   16994:	4422                	lw	s0,8(sp)
   16996:	4492                	lw	s1,4(sp)
   16998:	0141                	addi	sp,sp,16
   1699a:	8082                	ret
   1699c:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   169a0:	dbed                	beqz	a5,16992 <_isatty_r+0x1a>
   169a2:	40b2                	lw	ra,12(sp)
   169a4:	c01c                	sw	a5,0(s0)
   169a6:	4422                	lw	s0,8(sp)
   169a8:	4492                	lw	s1,4(sp)
   169aa:	0141                	addi	sp,sp,16
   169ac:	8082                	ret

000169ae <strcmp>:
   169ae:	00b56733          	or	a4,a0,a1
   169b2:	53fd                	li	t2,-1
   169b4:	8b0d                	andi	a4,a4,3
   169b6:	e779                	bnez	a4,16a84 <strcmp+0xd6>
   169b8:	7f7f87b7          	lui	a5,0x7f7f8
   169bc:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   169c0:	4110                	lw	a2,0(a0)
   169c2:	4194                	lw	a3,0(a1)
   169c4:	00f672b3          	and	t0,a2,a5
   169c8:	00f66333          	or	t1,a2,a5
   169cc:	92be                	add	t0,t0,a5
   169ce:	0062e2b3          	or	t0,t0,t1
   169d2:	0c729763          	bne	t0,t2,16aa0 <strcmp+0xf2>
   169d6:	06d61863          	bne	a2,a3,16a46 <strcmp+0x98>
   169da:	4150                	lw	a2,4(a0)
   169dc:	41d4                	lw	a3,4(a1)
   169de:	00f672b3          	and	t0,a2,a5
   169e2:	00f66333          	or	t1,a2,a5
   169e6:	92be                	add	t0,t0,a5
   169e8:	0062e2b3          	or	t0,t0,t1
   169ec:	0a729863          	bne	t0,t2,16a9c <strcmp+0xee>
   169f0:	04d61b63          	bne	a2,a3,16a46 <strcmp+0x98>
   169f4:	4510                	lw	a2,8(a0)
   169f6:	4594                	lw	a3,8(a1)
   169f8:	00f672b3          	and	t0,a2,a5
   169fc:	00f66333          	or	t1,a2,a5
   16a00:	92be                	add	t0,t0,a5
   16a02:	0062e2b3          	or	t0,t0,t1
   16a06:	0a729163          	bne	t0,t2,16aa8 <strcmp+0xfa>
   16a0a:	02d61e63          	bne	a2,a3,16a46 <strcmp+0x98>
   16a0e:	4550                	lw	a2,12(a0)
   16a10:	45d4                	lw	a3,12(a1)
   16a12:	00f672b3          	and	t0,a2,a5
   16a16:	00f66333          	or	t1,a2,a5
   16a1a:	92be                	add	t0,t0,a5
   16a1c:	0062e2b3          	or	t0,t0,t1
   16a20:	08729a63          	bne	t0,t2,16ab4 <strcmp+0x106>
   16a24:	02d61163          	bne	a2,a3,16a46 <strcmp+0x98>
   16a28:	4910                	lw	a2,16(a0)
   16a2a:	4994                	lw	a3,16(a1)
   16a2c:	00f672b3          	and	t0,a2,a5
   16a30:	00f66333          	or	t1,a2,a5
   16a34:	92be                	add	t0,t0,a5
   16a36:	0062e2b3          	or	t0,t0,t1
   16a3a:	08729363          	bne	t0,t2,16ac0 <strcmp+0x112>
   16a3e:	0551                	addi	a0,a0,20
   16a40:	05d1                	addi	a1,a1,20
   16a42:	f6d60fe3          	beq	a2,a3,169c0 <strcmp+0x12>
   16a46:	01061713          	slli	a4,a2,0x10
   16a4a:	01069793          	slli	a5,a3,0x10
   16a4e:	00f71c63          	bne	a4,a5,16a66 <strcmp+0xb8>
   16a52:	01065713          	srli	a4,a2,0x10
   16a56:	0106d793          	srli	a5,a3,0x10
   16a5a:	40f70533          	sub	a0,a4,a5
   16a5e:	0ff57593          	zext.b	a1,a0
   16a62:	e991                	bnez	a1,16a76 <strcmp+0xc8>
   16a64:	8082                	ret
   16a66:	8341                	srli	a4,a4,0x10
   16a68:	83c1                	srli	a5,a5,0x10
   16a6a:	40f70533          	sub	a0,a4,a5
   16a6e:	0ff57593          	zext.b	a1,a0
   16a72:	e191                	bnez	a1,16a76 <strcmp+0xc8>
   16a74:	8082                	ret
   16a76:	0ff77713          	zext.b	a4,a4
   16a7a:	0ff7f793          	zext.b	a5,a5
   16a7e:	40f70533          	sub	a0,a4,a5
   16a82:	8082                	ret
   16a84:	00054603          	lbu	a2,0(a0)
   16a88:	0005c683          	lbu	a3,0(a1)
   16a8c:	0505                	addi	a0,a0,1
   16a8e:	0585                	addi	a1,a1,1
   16a90:	00d61363          	bne	a2,a3,16a96 <strcmp+0xe8>
   16a94:	fa65                	bnez	a2,16a84 <strcmp+0xd6>
   16a96:	40d60533          	sub	a0,a2,a3
   16a9a:	8082                	ret
   16a9c:	0511                	addi	a0,a0,4
   16a9e:	0591                	addi	a1,a1,4
   16aa0:	fed612e3          	bne	a2,a3,16a84 <strcmp+0xd6>
   16aa4:	4501                	li	a0,0
   16aa6:	8082                	ret
   16aa8:	0521                	addi	a0,a0,8
   16aaa:	05a1                	addi	a1,a1,8
   16aac:	fcd61ce3          	bne	a2,a3,16a84 <strcmp+0xd6>
   16ab0:	4501                	li	a0,0
   16ab2:	8082                	ret
   16ab4:	0531                	addi	a0,a0,12
   16ab6:	05b1                	addi	a1,a1,12
   16ab8:	fcd616e3          	bne	a2,a3,16a84 <strcmp+0xd6>
   16abc:	4501                	li	a0,0
   16abe:	8082                	ret
   16ac0:	0541                	addi	a0,a0,16
   16ac2:	05c1                	addi	a1,a1,16
   16ac4:	fcd610e3          	bne	a2,a3,16a84 <strcmp+0xd6>
   16ac8:	4501                	li	a0,0
   16aca:	8082                	ret

00016acc <__assert_func>:
   16acc:	f141a703          	lw	a4,-236(gp) # 1b724 <_impure_ptr>
   16ad0:	1141                	addi	sp,sp,-16
   16ad2:	87b6                	mv	a5,a3
   16ad4:	8832                	mv	a6,a2
   16ad6:	c606                	sw	ra,12(sp)
   16ad8:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffe25b0>
   16adc:	86aa                	mv	a3,a0
   16ade:	872e                	mv	a4,a1
   16ae0:	863e                	mv	a2,a5
   16ae2:	00080c63          	beqz	a6,16afa <__assert_func+0x2e>
   16ae6:	67e9                	lui	a5,0x1a
   16ae8:	53478793          	addi	a5,a5,1332 # 1a534 <__clzsi2+0x1aa>
   16aec:	65e9                	lui	a1,0x1a
   16aee:	54458593          	addi	a1,a1,1348 # 1a544 <__clzsi2+0x1ba>
   16af2:	8546                	mv	a0,a7
   16af4:	2a81                	jal	16c44 <fiprintf>
   16af6:	691000ef          	jal	17986 <abort>
   16afa:	6869                	lui	a6,0x1a
   16afc:	54080793          	addi	a5,a6,1344 # 1a540 <__clzsi2+0x1b6>
   16b00:	54080813          	addi	a6,a6,1344
   16b04:	b7e5                	j	16aec <__assert_func+0x20>

00016b06 <__assert>:
   16b06:	1141                	addi	sp,sp,-16
   16b08:	86b2                	mv	a3,a2
   16b0a:	4601                	li	a2,0
   16b0c:	c606                	sw	ra,12(sp)
   16b0e:	fbfff0ef          	jal	16acc <__assert_func>

00016b12 <_calloc_r>:
   16b12:	02c5b7b3          	mulhu	a5,a1,a2
   16b16:	1141                	addi	sp,sp,-16
   16b18:	c606                	sw	ra,12(sp)
   16b1a:	c422                	sw	s0,8(sp)
   16b1c:	02c585b3          	mul	a1,a1,a2
   16b20:	efa5                	bnez	a5,16b98 <_calloc_r+0x86>
   16b22:	f1cfa0ef          	jal	1123e <_malloc_r>
   16b26:	842a                	mv	s0,a0
   16b28:	cd25                	beqz	a0,16ba0 <_calloc_r+0x8e>
   16b2a:	ffc52603          	lw	a2,-4(a0)
   16b2e:	02400713          	li	a4,36
   16b32:	9a71                	andi	a2,a2,-4
   16b34:	1671                	addi	a2,a2,-4
   16b36:	04c76063          	bltu	a4,a2,16b76 <_calloc_r+0x64>
   16b3a:	46cd                	li	a3,19
   16b3c:	87aa                	mv	a5,a0
   16b3e:	02c6f163          	bgeu	a3,a2,16b60 <_calloc_r+0x4e>
   16b42:	00052023          	sw	zero,0(a0)
   16b46:	00052223          	sw	zero,4(a0)
   16b4a:	47ed                	li	a5,27
   16b4c:	02c7fd63          	bgeu	a5,a2,16b86 <_calloc_r+0x74>
   16b50:	00052423          	sw	zero,8(a0)
   16b54:	00052623          	sw	zero,12(a0)
   16b58:	01050793          	addi	a5,a0,16
   16b5c:	04e60863          	beq	a2,a4,16bac <_calloc_r+0x9a>
   16b60:	0007a023          	sw	zero,0(a5)
   16b64:	0007a223          	sw	zero,4(a5)
   16b68:	0007a423          	sw	zero,8(a5)
   16b6c:	40b2                	lw	ra,12(sp)
   16b6e:	8522                	mv	a0,s0
   16b70:	4422                	lw	s0,8(sp)
   16b72:	0141                	addi	sp,sp,16
   16b74:	8082                	ret
   16b76:	4581                	li	a1,0
   16b78:	a56fa0ef          	jal	10dce <memset>
   16b7c:	40b2                	lw	ra,12(sp)
   16b7e:	8522                	mv	a0,s0
   16b80:	4422                	lw	s0,8(sp)
   16b82:	0141                	addi	sp,sp,16
   16b84:	8082                	ret
   16b86:	00850793          	addi	a5,a0,8
   16b8a:	0007a023          	sw	zero,0(a5)
   16b8e:	0007a223          	sw	zero,4(a5)
   16b92:	0007a423          	sw	zero,8(a5)
   16b96:	bfd9                	j	16b6c <_calloc_r+0x5a>
   16b98:	5e9000ef          	jal	17980 <__errno>
   16b9c:	47b1                	li	a5,12
   16b9e:	c11c                	sw	a5,0(a0)
   16ba0:	4401                	li	s0,0
   16ba2:	40b2                	lw	ra,12(sp)
   16ba4:	8522                	mv	a0,s0
   16ba6:	4422                	lw	s0,8(sp)
   16ba8:	0141                	addi	sp,sp,16
   16baa:	8082                	ret
   16bac:	00052823          	sw	zero,16(a0)
   16bb0:	01850793          	addi	a5,a0,24
   16bb4:	00052a23          	sw	zero,20(a0)
   16bb8:	b765                	j	16b60 <_calloc_r+0x4e>

00016bba <_mbtowc_r>:
   16bba:	e1c1a783          	lw	a5,-484(gp) # 1b62c <__global_locale+0xe4>
   16bbe:	8782                	jr	a5

00016bc0 <__ascii_mbtowc>:
   16bc0:	c999                	beqz	a1,16bd6 <__ascii_mbtowc+0x16>
   16bc2:	c61d                	beqz	a2,16bf0 <__ascii_mbtowc+0x30>
   16bc4:	ca95                	beqz	a3,16bf8 <__ascii_mbtowc+0x38>
   16bc6:	00064783          	lbu	a5,0(a2)
   16bca:	c19c                	sw	a5,0(a1)
   16bcc:	00064503          	lbu	a0,0(a2)
   16bd0:	00a03533          	snez	a0,a0
   16bd4:	8082                	ret
   16bd6:	1141                	addi	sp,sp,-16
   16bd8:	006c                	addi	a1,sp,12
   16bda:	ce09                	beqz	a2,16bf4 <__ascii_mbtowc+0x34>
   16bdc:	c285                	beqz	a3,16bfc <__ascii_mbtowc+0x3c>
   16bde:	00064783          	lbu	a5,0(a2)
   16be2:	c19c                	sw	a5,0(a1)
   16be4:	00064503          	lbu	a0,0(a2)
   16be8:	00a03533          	snez	a0,a0
   16bec:	0141                	addi	sp,sp,16
   16bee:	8082                	ret
   16bf0:	4501                	li	a0,0
   16bf2:	8082                	ret
   16bf4:	4501                	li	a0,0
   16bf6:	bfdd                	j	16bec <__ascii_mbtowc+0x2c>
   16bf8:	5579                	li	a0,-2
   16bfa:	8082                	ret
   16bfc:	5579                	li	a0,-2
   16bfe:	b7fd                	j	16bec <__ascii_mbtowc+0x2c>

00016c00 <_wctomb_r>:
   16c00:	e181a783          	lw	a5,-488(gp) # 1b628 <__global_locale+0xe0>
   16c04:	8782                	jr	a5

00016c06 <__ascii_wctomb>:
   16c06:	cd91                	beqz	a1,16c22 <__ascii_wctomb+0x1c>
   16c08:	0ff00793          	li	a5,255
   16c0c:	00c7e663          	bltu	a5,a2,16c18 <__ascii_wctomb+0x12>
   16c10:	00c58023          	sb	a2,0(a1)
   16c14:	4505                	li	a0,1
   16c16:	8082                	ret
   16c18:	08a00793          	li	a5,138
   16c1c:	c11c                	sw	a5,0(a0)
   16c1e:	557d                	li	a0,-1
   16c20:	8082                	ret
   16c22:	4501                	li	a0,0
   16c24:	8082                	ret

00016c26 <_fiprintf_r>:
   16c26:	7139                	addi	sp,sp,-64
   16c28:	02c10313          	addi	t1,sp,44
   16c2c:	d636                	sw	a3,44(sp)
   16c2e:	869a                	mv	a3,t1
   16c30:	ce06                	sw	ra,28(sp)
   16c32:	d83a                	sw	a4,48(sp)
   16c34:	da3e                	sw	a5,52(sp)
   16c36:	dc42                	sw	a6,56(sp)
   16c38:	de46                	sw	a7,60(sp)
   16c3a:	c61a                	sw	t1,12(sp)
   16c3c:	280d                	jal	16c6e <_vfiprintf_r>
   16c3e:	40f2                	lw	ra,28(sp)
   16c40:	6121                	addi	sp,sp,64
   16c42:	8082                	ret

00016c44 <fiprintf>:
   16c44:	8e2a                	mv	t3,a0
   16c46:	7139                	addi	sp,sp,-64
   16c48:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   16c4c:	02810313          	addi	t1,sp,40
   16c50:	d432                	sw	a2,40(sp)
   16c52:	d636                	sw	a3,44(sp)
   16c54:	862e                	mv	a2,a1
   16c56:	869a                	mv	a3,t1
   16c58:	85f2                	mv	a1,t3
   16c5a:	ce06                	sw	ra,28(sp)
   16c5c:	d83a                	sw	a4,48(sp)
   16c5e:	da3e                	sw	a5,52(sp)
   16c60:	dc42                	sw	a6,56(sp)
   16c62:	de46                	sw	a7,60(sp)
   16c64:	c61a                	sw	t1,12(sp)
   16c66:	2021                	jal	16c6e <_vfiprintf_r>
   16c68:	40f2                	lw	ra,28(sp)
   16c6a:	6121                	addi	sp,sp,64
   16c6c:	8082                	ret

00016c6e <_vfiprintf_r>:
   16c6e:	7169                	addi	sp,sp,-304
   16c70:	11312e23          	sw	s3,284(sp)
   16c74:	11512a23          	sw	s5,276(sp)
   16c78:	11612823          	sw	s6,272(sp)
   16c7c:	11712623          	sw	s7,268(sp)
   16c80:	12112623          	sw	ra,300(sp)
   16c84:	11a12023          	sw	s10,256(sp)
   16c88:	8baa                	mv	s7,a0
   16c8a:	8aae                	mv	s5,a1
   16c8c:	89b2                	mv	s3,a2
   16c8e:	8b36                	mv	s6,a3
   16c90:	c501                	beqz	a0,16c98 <_vfiprintf_r+0x2a>
   16c92:	595c                	lw	a5,52(a0)
   16c94:	300783e3          	beqz	a5,1779a <_vfiprintf_r+0xb2c>
   16c98:	00ca9703          	lh	a4,12(s5)
   16c9c:	064aa783          	lw	a5,100(s5)
   16ca0:	01271693          	slli	a3,a4,0x12
   16ca4:	0006cb63          	bltz	a3,16cba <_vfiprintf_r+0x4c>
   16ca8:	76f9                	lui	a3,0xffffe
   16caa:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   16cac:	6609                	lui	a2,0x2
   16cae:	8f51                	or	a4,a4,a2
   16cb0:	8ff5                	and	a5,a5,a3
   16cb2:	00ea9623          	sh	a4,12(s5)
   16cb6:	06faa223          	sw	a5,100(s5)
   16cba:	01279713          	slli	a4,a5,0x12
   16cbe:	400740e3          	bltz	a4,178be <_vfiprintf_r+0xc50>
   16cc2:	00ca9783          	lh	a5,12(s5)
   16cc6:	0087f713          	andi	a4,a5,8
   16cca:	22070363          	beqz	a4,16ef0 <_vfiprintf_r+0x282>
   16cce:	010aa703          	lw	a4,16(s5)
   16cd2:	20070f63          	beqz	a4,16ef0 <_vfiprintf_r+0x282>
   16cd6:	8be9                	andi	a5,a5,26
   16cd8:	4729                	li	a4,10
   16cda:	22e78763          	beq	a5,a4,16f08 <_vfiprintf_r+0x29a>
   16cde:	67ed                	lui	a5,0x1b
   16ce0:	4d01                	li	s10,0
   16ce2:	11812423          	sw	s8,264(sp)
   16ce6:	11912223          	sw	s9,260(sp)
   16cea:	04c10c13          	addi	s8,sp,76
   16cee:	9d478793          	addi	a5,a5,-1580 # 1a9d4 <_ctype_+0x104>
   16cf2:	6ced                	lui	s9,0x1b
   16cf4:	12812423          	sw	s0,296(sp)
   16cf8:	13212023          	sw	s2,288(sp)
   16cfc:	11412c23          	sw	s4,280(sp)
   16d00:	896a                	mv	s2,s10
   16d02:	12912223          	sw	s1,292(sp)
   16d06:	dfee                	sw	s11,252(sp)
   16d08:	c0e2                	sw	s8,64(sp)
   16d0a:	c482                	sw	zero,72(sp)
   16d0c:	c282                	sw	zero,68(sp)
   16d0e:	8462                	mv	s0,s8
   16d10:	c202                	sw	zero,4(sp)
   16d12:	ca02                	sw	zero,20(sp)
   16d14:	cc02                	sw	zero,24(sp)
   16d16:	ce02                	sw	zero,28(sp)
   16d18:	c03e                	sw	a5,0(sp)
   16d1a:	4a41                	li	s4,16
   16d1c:	b40c8c93          	addi	s9,s9,-1216 # 1ab40 <zeroes.0>
   16d20:	8d5a                	mv	s10,s6
   16d22:	0009c783          	lbu	a5,0(s3)
   16d26:	14078563          	beqz	a5,16e70 <_vfiprintf_r+0x202>
   16d2a:	84ce                	mv	s1,s3
   16d2c:	02500713          	li	a4,37
   16d30:	20e78363          	beq	a5,a4,16f36 <_vfiprintf_r+0x2c8>
   16d34:	0014c783          	lbu	a5,1(s1)
   16d38:	0485                	addi	s1,s1,1
   16d3a:	fbfd                	bnez	a5,16d30 <_vfiprintf_r+0xc2>
   16d3c:	41348b33          	sub	s6,s1,s3
   16d40:	13348863          	beq	s1,s3,16e70 <_vfiprintf_r+0x202>
   16d44:	4726                	lw	a4,72(sp)
   16d46:	4796                	lw	a5,68(sp)
   16d48:	01342023          	sw	s3,0(s0)
   16d4c:	975a                	add	a4,a4,s6
   16d4e:	0785                	addi	a5,a5,1
   16d50:	01642223          	sw	s6,4(s0)
   16d54:	c4ba                	sw	a4,72(sp)
   16d56:	c2be                	sw	a5,68(sp)
   16d58:	471d                	li	a4,7
   16d5a:	0421                	addi	s0,s0,8
   16d5c:	1ef74463          	blt	a4,a5,16f44 <_vfiprintf_r+0x2d6>
   16d60:	0004c783          	lbu	a5,0(s1)
   16d64:	995a                	add	s2,s2,s6
   16d66:	10078563          	beqz	a5,16e70 <_vfiprintf_r+0x202>
   16d6a:	0014c783          	lbu	a5,1(s1)
   16d6e:	00148993          	addi	s3,s1,1
   16d72:	02010da3          	sb	zero,59(sp)
   16d76:	5dfd                	li	s11,-1
   16d78:	4b01                	li	s6,0
   16d7a:	4801                	li	a6,0
   16d7c:	05a00493          	li	s1,90
   16d80:	0985                	addi	s3,s3,1
   16d82:	863e                	mv	a2,a5
   16d84:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   16d88:	02e4eb63          	bltu	s1,a4,16dbe <_vfiprintf_r+0x150>
   16d8c:	4782                	lw	a5,0(sp)
   16d8e:	070a                	slli	a4,a4,0x2
   16d90:	973e                	add	a4,a4,a5
   16d92:	431c                	lw	a5,0(a4)
   16d94:	8782                	jr	a5
   16d96:	4b01                	li	s6,0
   16d98:	fd060793          	addi	a5,a2,-48
   16d9c:	46a5                	li	a3,9
   16d9e:	0009c603          	lbu	a2,0(s3)
   16da2:	002b1713          	slli	a4,s6,0x2
   16da6:	9b3a                	add	s6,s6,a4
   16da8:	0b06                	slli	s6,s6,0x1
   16daa:	9b3e                	add	s6,s6,a5
   16dac:	fd060793          	addi	a5,a2,-48
   16db0:	0985                	addi	s3,s3,1
   16db2:	fef6f6e3          	bgeu	a3,a5,16d9e <_vfiprintf_r+0x130>
   16db6:	fe060713          	addi	a4,a2,-32
   16dba:	fce4f9e3          	bgeu	s1,a4,16d8c <_vfiprintf_r+0x11e>
   16dbe:	ca4d                	beqz	a2,16e70 <_vfiprintf_r+0x202>
   16dc0:	08c10623          	sb	a2,140(sp)
   16dc4:	02010da3          	sb	zero,59(sp)
   16dc8:	4885                	li	a7,1
   16dca:	4e05                	li	t3,1
   16dcc:	0164                	addi	s1,sp,140
   16dce:	4d81                	li	s11,0
   16dd0:	4281                	li	t0,0
   16dd2:	08487f93          	andi	t6,a6,132
   16dd6:	4726                	lw	a4,72(sp)
   16dd8:	4796                	lw	a5,68(sp)
   16dda:	000f9663          	bnez	t6,16de6 <_vfiprintf_r+0x178>
   16dde:	411b0eb3          	sub	t4,s6,a7
   16de2:	71d04b63          	bgtz	t4,174f8 <_vfiprintf_r+0x88a>
   16de6:	03b14603          	lbu	a2,59(sp)
   16dea:	ce11                	beqz	a2,16e06 <_vfiprintf_r+0x198>
   16dec:	03b10613          	addi	a2,sp,59
   16df0:	c010                	sw	a2,0(s0)
   16df2:	0785                	addi	a5,a5,1
   16df4:	4605                	li	a2,1
   16df6:	0705                	addi	a4,a4,1
   16df8:	c050                	sw	a2,4(s0)
   16dfa:	c4ba                	sw	a4,72(sp)
   16dfc:	c2be                	sw	a5,68(sp)
   16dfe:	461d                	li	a2,7
   16e00:	0421                	addi	s0,s0,8
   16e02:	1af64363          	blt	a2,a5,16fa8 <_vfiprintf_r+0x33a>
   16e06:	00028e63          	beqz	t0,16e22 <_vfiprintf_r+0x1b4>
   16e0a:	1870                	addi	a2,sp,60
   16e0c:	c010                	sw	a2,0(s0)
   16e0e:	0785                	addi	a5,a5,1
   16e10:	4609                	li	a2,2
   16e12:	0709                	addi	a4,a4,2
   16e14:	c050                	sw	a2,4(s0)
   16e16:	c4ba                	sw	a4,72(sp)
   16e18:	c2be                	sw	a5,68(sp)
   16e1a:	461d                	li	a2,7
   16e1c:	0421                	addi	s0,s0,8
   16e1e:	78f64663          	blt	a2,a5,175aa <_vfiprintf_r+0x93c>
   16e22:	08000613          	li	a2,128
   16e26:	52cf8a63          	beq	t6,a2,1735a <_vfiprintf_r+0x6ec>
   16e2a:	41cd8db3          	sub	s11,s11,t3
   16e2e:	5db04d63          	bgtz	s11,17408 <_vfiprintf_r+0x79a>
   16e32:	9772                	add	a4,a4,t3
   16e34:	0785                	addi	a5,a5,1
   16e36:	c004                	sw	s1,0(s0)
   16e38:	01c42223          	sw	t3,4(s0)
   16e3c:	c4ba                	sw	a4,72(sp)
   16e3e:	c2be                	sw	a5,68(sp)
   16e40:	461d                	li	a2,7
   16e42:	0421                	addi	s0,s0,8
   16e44:	64f64e63          	blt	a2,a5,174a0 <_vfiprintf_r+0x832>
   16e48:	00487813          	andi	a6,a6,4
   16e4c:	00080663          	beqz	a6,16e58 <_vfiprintf_r+0x1ea>
   16e50:	411b04b3          	sub	s1,s6,a7
   16e54:	16904e63          	bgtz	s1,16fd0 <_vfiprintf_r+0x362>
   16e58:	011b5363          	bge	s6,a7,16e5e <_vfiprintf_r+0x1f0>
   16e5c:	8b46                	mv	s6,a7
   16e5e:	995a                	add	s2,s2,s6
   16e60:	0e071a63          	bnez	a4,16f54 <_vfiprintf_r+0x2e6>
   16e64:	0009c783          	lbu	a5,0(s3)
   16e68:	c282                	sw	zero,68(sp)
   16e6a:	8462                	mv	s0,s8
   16e6c:	ea079fe3          	bnez	a5,16d2a <_vfiprintf_r+0xbc>
   16e70:	47a6                	lw	a5,72(sp)
   16e72:	8d4a                	mv	s10,s2
   16e74:	0e078863          	beqz	a5,16f64 <_vfiprintf_r+0x2f6>
   16e78:	0090                	addi	a2,sp,64
   16e7a:	85d6                	mv	a1,s5
   16e7c:	855e                	mv	a0,s7
   16e7e:	db2fc0ef          	jal	13430 <__sprint_r>
   16e82:	a0cd                	j	16f64 <_vfiprintf_r+0x2f6>
   16e84:	000d2b03          	lw	s6,0(s10)
   16e88:	0d11                	addi	s10,s10,4
   16e8a:	280b4c63          	bltz	s6,17122 <_vfiprintf_r+0x4b4>
   16e8e:	0009c783          	lbu	a5,0(s3)
   16e92:	b5fd                	j	16d80 <_vfiprintf_r+0x112>
   16e94:	0009c783          	lbu	a5,0(s3)
   16e98:	02086813          	ori	a6,a6,32
   16e9c:	b5d5                	j	16d80 <_vfiprintf_r+0x112>
   16e9e:	01086813          	ori	a6,a6,16
   16ea2:	02087793          	andi	a5,a6,32
   16ea6:	1a078363          	beqz	a5,1704c <_vfiprintf_r+0x3de>
   16eaa:	0d1d                	addi	s10,s10,7
   16eac:	ff8d7d13          	andi	s10,s10,-8
   16eb0:	004d2703          	lw	a4,4(s10)
   16eb4:	000d2783          	lw	a5,0(s10)
   16eb8:	0d21                	addi	s10,s10,8
   16eba:	88ba                	mv	a7,a4
   16ebc:	1a074863          	bltz	a4,1706c <_vfiprintf_r+0x3fe>
   16ec0:	1c0dc663          	bltz	s11,1708c <_vfiprintf_r+0x41e>
   16ec4:	0117e733          	or	a4,a5,a7
   16ec8:	f7f87813          	andi	a6,a6,-129
   16ecc:	1c071063          	bnez	a4,1708c <_vfiprintf_r+0x41e>
   16ed0:	1e0d93e3          	bnez	s11,178b6 <_vfiprintf_r+0xc48>
   16ed4:	03b14783          	lbu	a5,59(sp)
   16ed8:	4881                	li	a7,0
   16eda:	4e01                	li	t3,0
   16edc:	1984                	addi	s1,sp,240
   16ede:	c391                	beqz	a5,16ee2 <_vfiprintf_r+0x274>
   16ee0:	0885                	addi	a7,a7,1
   16ee2:	00287293          	andi	t0,a6,2
   16ee6:	ee0286e3          	beqz	t0,16dd2 <_vfiprintf_r+0x164>
   16eea:	0889                	addi	a7,a7,2
   16eec:	4289                	li	t0,2
   16eee:	b5d5                	j	16dd2 <_vfiprintf_r+0x164>
   16ef0:	85d6                	mv	a1,s5
   16ef2:	855e                	mv	a0,s7
   16ef4:	d27fc0ef          	jal	13c1a <__swsetup_r>
   16ef8:	1c0513e3          	bnez	a0,178be <_vfiprintf_r+0xc50>
   16efc:	00ca9783          	lh	a5,12(s5)
   16f00:	4729                	li	a4,10
   16f02:	8be9                	andi	a5,a5,26
   16f04:	dce79de3          	bne	a5,a4,16cde <_vfiprintf_r+0x70>
   16f08:	00ea9783          	lh	a5,14(s5)
   16f0c:	dc07c9e3          	bltz	a5,16cde <_vfiprintf_r+0x70>
   16f10:	12c12083          	lw	ra,300(sp)
   16f14:	10012d03          	lw	s10,256(sp)
   16f18:	86da                	mv	a3,s6
   16f1a:	864e                	mv	a2,s3
   16f1c:	11012b03          	lw	s6,272(sp)
   16f20:	11c12983          	lw	s3,284(sp)
   16f24:	85d6                	mv	a1,s5
   16f26:	855e                	mv	a0,s7
   16f28:	11412a83          	lw	s5,276(sp)
   16f2c:	10c12b83          	lw	s7,268(sp)
   16f30:	6155                	addi	sp,sp,304
   16f32:	1b90006f          	j	178ea <__sbprintf>
   16f36:	41348b33          	sub	s6,s1,s3
   16f3a:	e13495e3          	bne	s1,s3,16d44 <_vfiprintf_r+0xd6>
   16f3e:	0004c783          	lbu	a5,0(s1)
   16f42:	b515                	j	16d66 <_vfiprintf_r+0xf8>
   16f44:	0090                	addi	a2,sp,64
   16f46:	85d6                	mv	a1,s5
   16f48:	855e                	mv	a0,s7
   16f4a:	ce6fc0ef          	jal	13430 <__sprint_r>
   16f4e:	e911                	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   16f50:	8462                	mv	s0,s8
   16f52:	b539                	j	16d60 <_vfiprintf_r+0xf2>
   16f54:	0090                	addi	a2,sp,64
   16f56:	85d6                	mv	a1,s5
   16f58:	855e                	mv	a0,s7
   16f5a:	cd6fc0ef          	jal	13430 <__sprint_r>
   16f5e:	f00503e3          	beqz	a0,16e64 <_vfiprintf_r+0x1f6>
   16f62:	8d4a                	mv	s10,s2
   16f64:	00cad783          	lhu	a5,12(s5)
   16f68:	12812403          	lw	s0,296(sp)
   16f6c:	12412483          	lw	s1,292(sp)
   16f70:	0407f793          	andi	a5,a5,64
   16f74:	12012903          	lw	s2,288(sp)
   16f78:	11812a03          	lw	s4,280(sp)
   16f7c:	10812c03          	lw	s8,264(sp)
   16f80:	10412c83          	lw	s9,260(sp)
   16f84:	5dfe                	lw	s11,252(sp)
   16f86:	12079ce3          	bnez	a5,178be <_vfiprintf_r+0xc50>
   16f8a:	12c12083          	lw	ra,300(sp)
   16f8e:	11c12983          	lw	s3,284(sp)
   16f92:	11412a83          	lw	s5,276(sp)
   16f96:	11012b03          	lw	s6,272(sp)
   16f9a:	10c12b83          	lw	s7,268(sp)
   16f9e:	856a                	mv	a0,s10
   16fa0:	10012d03          	lw	s10,256(sp)
   16fa4:	6155                	addi	sp,sp,304
   16fa6:	8082                	ret
   16fa8:	0090                	addi	a2,sp,64
   16faa:	85d6                	mv	a1,s5
   16fac:	855e                	mv	a0,s7
   16fae:	d246                	sw	a7,36(sp)
   16fb0:	d072                	sw	t3,32(sp)
   16fb2:	c842                	sw	a6,16(sp)
   16fb4:	c67e                	sw	t6,12(sp)
   16fb6:	c416                	sw	t0,8(sp)
   16fb8:	c78fc0ef          	jal	13430 <__sprint_r>
   16fbc:	f15d                	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   16fbe:	4726                	lw	a4,72(sp)
   16fc0:	4796                	lw	a5,68(sp)
   16fc2:	5892                	lw	a7,36(sp)
   16fc4:	5e02                	lw	t3,32(sp)
   16fc6:	4842                	lw	a6,16(sp)
   16fc8:	4fb2                	lw	t6,12(sp)
   16fca:	42a2                	lw	t0,8(sp)
   16fcc:	8462                	mv	s0,s8
   16fce:	bd25                	j	16e06 <_vfiprintf_r+0x198>
   16fd0:	636d                	lui	t1,0x1b
   16fd2:	4641                	li	a2,16
   16fd4:	4796                	lw	a5,68(sp)
   16fd6:	b5030313          	addi	t1,t1,-1200 # 1ab50 <blanks.1>
   16fda:	04965563          	bge	a2,s1,17024 <_vfiprintf_r+0x3b6>
   16fde:	86a2                	mv	a3,s0
   16fe0:	4dc1                	li	s11,16
   16fe2:	481d                	li	a6,7
   16fe4:	c446                	sw	a7,8(sp)
   16fe6:	841a                	mv	s0,t1
   16fe8:	a021                	j	16ff0 <_vfiprintf_r+0x382>
   16fea:	14c1                	addi	s1,s1,-16
   16fec:	029dd963          	bge	s11,s1,1701e <_vfiprintf_r+0x3b0>
   16ff0:	0741                	addi	a4,a4,16
   16ff2:	0785                	addi	a5,a5,1
   16ff4:	c280                	sw	s0,0(a3)
   16ff6:	01b6a223          	sw	s11,4(a3)
   16ffa:	c4ba                	sw	a4,72(sp)
   16ffc:	c2be                	sw	a5,68(sp)
   16ffe:	06a1                	addi	a3,a3,8
   17000:	fef855e3          	bge	a6,a5,16fea <_vfiprintf_r+0x37c>
   17004:	0090                	addi	a2,sp,64
   17006:	85d6                	mv	a1,s5
   17008:	855e                	mv	a0,s7
   1700a:	c26fc0ef          	jal	13430 <__sprint_r>
   1700e:	f931                	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   17010:	14c1                	addi	s1,s1,-16
   17012:	4726                	lw	a4,72(sp)
   17014:	4796                	lw	a5,68(sp)
   17016:	86e2                	mv	a3,s8
   17018:	481d                	li	a6,7
   1701a:	fc9dcbe3          	blt	s11,s1,16ff0 <_vfiprintf_r+0x382>
   1701e:	48a2                	lw	a7,8(sp)
   17020:	8322                	mv	t1,s0
   17022:	8436                	mv	s0,a3
   17024:	9726                	add	a4,a4,s1
   17026:	0785                	addi	a5,a5,1
   17028:	00642023          	sw	t1,0(s0)
   1702c:	c044                	sw	s1,4(s0)
   1702e:	c4ba                	sw	a4,72(sp)
   17030:	c2be                	sw	a5,68(sp)
   17032:	461d                	li	a2,7
   17034:	e2f652e3          	bge	a2,a5,16e58 <_vfiprintf_r+0x1ea>
   17038:	0090                	addi	a2,sp,64
   1703a:	85d6                	mv	a1,s5
   1703c:	855e                	mv	a0,s7
   1703e:	c446                	sw	a7,8(sp)
   17040:	bf0fc0ef          	jal	13430 <__sprint_r>
   17044:	fd19                	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   17046:	4726                	lw	a4,72(sp)
   17048:	48a2                	lw	a7,8(sp)
   1704a:	b539                	j	16e58 <_vfiprintf_r+0x1ea>
   1704c:	01087713          	andi	a4,a6,16
   17050:	000d2783          	lw	a5,0(s10)
   17054:	0d11                	addi	s10,s10,4
   17056:	e371                	bnez	a4,1711a <_vfiprintf_r+0x4ac>
   17058:	04087713          	andi	a4,a6,64
   1705c:	cb5d                	beqz	a4,17112 <_vfiprintf_r+0x4a4>
   1705e:	07c2                	slli	a5,a5,0x10
   17060:	87c1                	srai	a5,a5,0x10
   17062:	41f7d893          	srai	a7,a5,0x1f
   17066:	8746                	mv	a4,a7
   17068:	e4075ce3          	bgez	a4,16ec0 <_vfiprintf_r+0x252>
   1706c:	02d00613          	li	a2,45
   17070:	00f03733          	snez	a4,a5
   17074:	411008b3          	neg	a7,a7
   17078:	02c10da3          	sb	a2,59(sp)
   1707c:	40e888b3          	sub	a7,a7,a4
   17080:	40f007b3          	neg	a5,a5
   17084:	000dc463          	bltz	s11,1708c <_vfiprintf_r+0x41e>
   17088:	f7f87813          	andi	a6,a6,-129
   1708c:	62089c63          	bnez	a7,176c4 <_vfiprintf_r+0xa56>
   17090:	4725                	li	a4,9
   17092:	62f76963          	bltu	a4,a5,176c4 <_vfiprintf_r+0xa56>
   17096:	03078793          	addi	a5,a5,48
   1709a:	0ff7f793          	zext.b	a5,a5
   1709e:	0ef107a3          	sb	a5,239(sp)
   170a2:	88ee                	mv	a7,s11
   170a4:	01b04363          	bgtz	s11,170aa <_vfiprintf_r+0x43c>
   170a8:	4885                	li	a7,1
   170aa:	4e05                	li	t3,1
   170ac:	0ef10493          	addi	s1,sp,239
   170b0:	03b14783          	lbu	a5,59(sp)
   170b4:	e20796e3          	bnez	a5,16ee0 <_vfiprintf_r+0x272>
   170b8:	b52d                	j	16ee2 <_vfiprintf_r+0x274>
   170ba:	000d2483          	lw	s1,0(s10)
   170be:	02010da3          	sb	zero,59(sp)
   170c2:	0d11                	addi	s10,s10,4
   170c4:	70048463          	beqz	s1,177cc <_vfiprintf_r+0xb5e>
   170c8:	c442                	sw	a6,8(sp)
   170ca:	5e0dc163          	bltz	s11,176ac <_vfiprintf_r+0xa3e>
   170ce:	866e                	mv	a2,s11
   170d0:	4581                	li	a1,0
   170d2:	8526                	mv	a0,s1
   170d4:	c21fc0ef          	jal	13cf4 <memchr>
   170d8:	4822                	lw	a6,8(sp)
   170da:	8e6e                	mv	t3,s11
   170dc:	c119                	beqz	a0,170e2 <_vfiprintf_r+0x474>
   170de:	40950e33          	sub	t3,a0,s1
   170e2:	03b14783          	lbu	a5,59(sp)
   170e6:	fffe4893          	not	a7,t3
   170ea:	41f8d893          	srai	a7,a7,0x1f
   170ee:	011e78b3          	and	a7,t3,a7
   170f2:	4d81                	li	s11,0
   170f4:	4281                	li	t0,0
   170f6:	de0795e3          	bnez	a5,16ee0 <_vfiprintf_r+0x272>
   170fa:	b9e1                	j	16dd2 <_vfiprintf_r+0x164>
   170fc:	000d2783          	lw	a5,0(s10)
   17100:	02010da3          	sb	zero,59(sp)
   17104:	0d11                	addi	s10,s10,4
   17106:	08f10623          	sb	a5,140(sp)
   1710a:	4885                	li	a7,1
   1710c:	4e05                	li	t3,1
   1710e:	0164                	addi	s1,sp,140
   17110:	b97d                	j	16dce <_vfiprintf_r+0x160>
   17112:	20087713          	andi	a4,a6,512
   17116:	76071e63          	bnez	a4,17892 <_vfiprintf_r+0xc24>
   1711a:	41f7d893          	srai	a7,a5,0x1f
   1711e:	8746                	mv	a4,a7
   17120:	bb71                	j	16ebc <_vfiprintf_r+0x24e>
   17122:	41600b33          	neg	s6,s6
   17126:	0009c783          	lbu	a5,0(s3)
   1712a:	00486813          	ori	a6,a6,4
   1712e:	b989                	j	16d80 <_vfiprintf_r+0x112>
   17130:	02b00713          	li	a4,43
   17134:	0009c783          	lbu	a5,0(s3)
   17138:	02e10da3          	sb	a4,59(sp)
   1713c:	b191                	j	16d80 <_vfiprintf_r+0x112>
   1713e:	0009c783          	lbu	a5,0(s3)
   17142:	08086813          	ori	a6,a6,128
   17146:	b92d                	j	16d80 <_vfiprintf_r+0x112>
   17148:	0009c603          	lbu	a2,0(s3)
   1714c:	02a00793          	li	a5,42
   17150:	00198693          	addi	a3,s3,1
   17154:	76f60863          	beq	a2,a5,178c4 <_vfiprintf_r+0xc56>
   17158:	fd060793          	addi	a5,a2,-48
   1715c:	4725                	li	a4,9
   1715e:	4d81                	li	s11,0
   17160:	45a5                	li	a1,9
   17162:	02f76063          	bltu	a4,a5,17182 <_vfiprintf_r+0x514>
   17166:	0006c603          	lbu	a2,0(a3)
   1716a:	002d9713          	slli	a4,s11,0x2
   1716e:	9dba                	add	s11,s11,a4
   17170:	0d86                	slli	s11,s11,0x1
   17172:	9dbe                	add	s11,s11,a5
   17174:	fd060793          	addi	a5,a2,-48
   17178:	0685                	addi	a3,a3,1
   1717a:	fef5f6e3          	bgeu	a1,a5,17166 <_vfiprintf_r+0x4f8>
   1717e:	4a0dcb63          	bltz	s11,17634 <_vfiprintf_r+0x9c6>
   17182:	89b6                	mv	s3,a3
   17184:	b101                	j	16d84 <_vfiprintf_r+0x116>
   17186:	855e                	mv	a0,s7
   17188:	c442                	sw	a6,8(sp)
   1718a:	c79fc0ef          	jal	13e02 <_localeconv_r>
   1718e:	415c                	lw	a5,4(a0)
   17190:	853e                	mv	a0,a5
   17192:	ce3e                	sw	a5,28(sp)
   17194:	ef7fc0ef          	jal	1408a <strlen>
   17198:	87aa                	mv	a5,a0
   1719a:	855e                	mv	a0,s7
   1719c:	cc3e                	sw	a5,24(sp)
   1719e:	c65fc0ef          	jal	13e02 <_localeconv_r>
   171a2:	4518                	lw	a4,8(a0)
   171a4:	47e2                	lw	a5,24(sp)
   171a6:	4822                	lw	a6,8(sp)
   171a8:	ca3a                	sw	a4,20(sp)
   171aa:	ce0782e3          	beqz	a5,16e8e <_vfiprintf_r+0x220>
   171ae:	4752                	lw	a4,20(sp)
   171b0:	0009c783          	lbu	a5,0(s3)
   171b4:	bc0706e3          	beqz	a4,16d80 <_vfiprintf_r+0x112>
   171b8:	00074703          	lbu	a4,0(a4)
   171bc:	bc0702e3          	beqz	a4,16d80 <_vfiprintf_r+0x112>
   171c0:	40086813          	ori	a6,a6,1024
   171c4:	be75                	j	16d80 <_vfiprintf_r+0x112>
   171c6:	0009c783          	lbu	a5,0(s3)
   171ca:	00186813          	ori	a6,a6,1
   171ce:	be4d                	j	16d80 <_vfiprintf_r+0x112>
   171d0:	03b14703          	lbu	a4,59(sp)
   171d4:	0009c783          	lbu	a5,0(s3)
   171d8:	ba0714e3          	bnez	a4,16d80 <_vfiprintf_r+0x112>
   171dc:	02000713          	li	a4,32
   171e0:	02e10da3          	sb	a4,59(sp)
   171e4:	be71                	j	16d80 <_vfiprintf_r+0x112>
   171e6:	01086713          	ori	a4,a6,16
   171ea:	02077793          	andi	a5,a4,32
   171ee:	40078063          	beqz	a5,175ee <_vfiprintf_r+0x980>
   171f2:	0d1d                	addi	s10,s10,7
   171f4:	ff8d7d13          	andi	s10,s10,-8
   171f8:	000d2783          	lw	a5,0(s10)
   171fc:	004d2583          	lw	a1,4(s10)
   17200:	0d21                	addi	s10,s10,8
   17202:	02010da3          	sb	zero,59(sp)
   17206:	bff77813          	andi	a6,a4,-1025
   1720a:	0a0dc163          	bltz	s11,172ac <_vfiprintf_r+0x63e>
   1720e:	00b7e633          	or	a2,a5,a1
   17212:	b7f77713          	andi	a4,a4,-1153
   17216:	56061d63          	bnez	a2,17790 <_vfiprintf_r+0xb22>
   1721a:	8e42                	mv	t3,a6
   1721c:	4781                	li	a5,0
   1721e:	883a                	mv	a6,a4
   17220:	060d9e63          	bnez	s11,1729c <_vfiprintf_r+0x62e>
   17224:	ca0798e3          	bnez	a5,16ed4 <_vfiprintf_r+0x266>
   17228:	001e7e13          	andi	t3,t3,1
   1722c:	3e0e0463          	beqz	t3,17614 <_vfiprintf_r+0x9a6>
   17230:	03000793          	li	a5,48
   17234:	0ef107a3          	sb	a5,239(sp)
   17238:	88f2                	mv	a7,t3
   1723a:	0ef10493          	addi	s1,sp,239
   1723e:	bd8d                	j	170b0 <_vfiprintf_r+0x442>
   17240:	0009c783          	lbu	a5,0(s3)
   17244:	06c00713          	li	a4,108
   17248:	56e78463          	beq	a5,a4,177b0 <_vfiprintf_r+0xb42>
   1724c:	01086813          	ori	a6,a6,16
   17250:	be05                	j	16d80 <_vfiprintf_r+0x112>
   17252:	0009c783          	lbu	a5,0(s3)
   17256:	06800713          	li	a4,104
   1725a:	54e78463          	beq	a5,a4,177a2 <_vfiprintf_r+0xb34>
   1725e:	04086813          	ori	a6,a6,64
   17262:	be39                	j	16d80 <_vfiprintf_r+0x112>
   17264:	01086e13          	ori	t3,a6,16
   17268:	020e7793          	andi	a5,t3,32
   1726c:	36078363          	beqz	a5,175d2 <_vfiprintf_r+0x964>
   17270:	0d1d                	addi	s10,s10,7
   17272:	ff8d7d13          	andi	s10,s10,-8
   17276:	000d2783          	lw	a5,0(s10)
   1727a:	004d2883          	lw	a7,4(s10)
   1727e:	0d21                	addi	s10,s10,8
   17280:	02010da3          	sb	zero,59(sp)
   17284:	8872                	mv	a6,t3
   17286:	e00dc3e3          	bltz	s11,1708c <_vfiprintf_r+0x41e>
   1728a:	0117e733          	or	a4,a5,a7
   1728e:	f7fe7813          	andi	a6,t3,-129
   17292:	de071de3          	bnez	a4,1708c <_vfiprintf_r+0x41e>
   17296:	4785                	li	a5,1
   17298:	f80d86e3          	beqz	s11,17224 <_vfiprintf_r+0x5b6>
   1729c:	4705                	li	a4,1
   1729e:	60e78c63          	beq	a5,a4,178b6 <_vfiprintf_r+0xc48>
   172a2:	4709                	li	a4,2
   172a4:	54e78663          	beq	a5,a4,177f0 <_vfiprintf_r+0xb82>
   172a8:	4781                	li	a5,0
   172aa:	4581                	li	a1,0
   172ac:	1984                	addi	s1,sp,240
   172ae:	01d59693          	slli	a3,a1,0x1d
   172b2:	0077f713          	andi	a4,a5,7
   172b6:	838d                	srli	a5,a5,0x3
   172b8:	03070713          	addi	a4,a4,48
   172bc:	8fd5                	or	a5,a5,a3
   172be:	818d                	srli	a1,a1,0x3
   172c0:	fee48fa3          	sb	a4,-1(s1)
   172c4:	00b7e6b3          	or	a3,a5,a1
   172c8:	8526                	mv	a0,s1
   172ca:	14fd                	addi	s1,s1,-1
   172cc:	f2ed                	bnez	a3,172ae <_vfiprintf_r+0x640>
   172ce:	00187793          	andi	a5,a6,1
   172d2:	20078b63          	beqz	a5,174e8 <_vfiprintf_r+0x87a>
   172d6:	03000793          	li	a5,48
   172da:	20f70763          	beq	a4,a5,174e8 <_vfiprintf_r+0x87a>
   172de:	1579                	addi	a0,a0,-2
   172e0:	fef48fa3          	sb	a5,-1(s1)
   172e4:	199c                	addi	a5,sp,240
   172e6:	40a78e33          	sub	t3,a5,a0
   172ea:	88ee                	mv	a7,s11
   172ec:	35cdc163          	blt	s11,t3,1762e <_vfiprintf_r+0x9c0>
   172f0:	84aa                	mv	s1,a0
   172f2:	bb7d                	j	170b0 <_vfiprintf_r+0x442>
   172f4:	6721                	lui	a4,0x8
   172f6:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   172fa:	02e11e23          	sh	a4,60(sp)
   172fe:	6769                	lui	a4,0x1a
   17300:	41c70713          	addi	a4,a4,1052 # 1a41c <__clzsi2+0x92>
   17304:	000d2783          	lw	a5,0(s10)
   17308:	4581                	li	a1,0
   1730a:	00286813          	ori	a6,a6,2
   1730e:	0d11                	addi	s10,s10,4
   17310:	c23a                	sw	a4,4(sp)
   17312:	02010da3          	sb	zero,59(sp)
   17316:	1a0dc763          	bltz	s11,174c4 <_vfiprintf_r+0x856>
   1731a:	00b7e733          	or	a4,a5,a1
   1731e:	f7f87613          	andi	a2,a6,-129
   17322:	18071d63          	bnez	a4,174bc <_vfiprintf_r+0x84e>
   17326:	8e42                	mv	t3,a6
   17328:	4789                	li	a5,2
   1732a:	8832                	mv	a6,a2
   1732c:	bdd5                	j	17220 <_vfiprintf_r+0x5b2>
   1732e:	02087793          	andi	a5,a6,32
   17332:	2e079463          	bnez	a5,1761a <_vfiprintf_r+0x9ac>
   17336:	01087793          	andi	a5,a6,16
   1733a:	48079263          	bnez	a5,177be <_vfiprintf_r+0xb50>
   1733e:	04087793          	andi	a5,a6,64
   17342:	54079f63          	bnez	a5,178a0 <_vfiprintf_r+0xc32>
   17346:	20087813          	andi	a6,a6,512
   1734a:	46080a63          	beqz	a6,177be <_vfiprintf_r+0xb50>
   1734e:	000d2783          	lw	a5,0(s10)
   17352:	0d11                	addi	s10,s10,4
   17354:	01278023          	sb	s2,0(a5)
   17358:	b2e9                	j	16d22 <_vfiprintf_r+0xb4>
   1735a:	411b0333          	sub	t1,s6,a7
   1735e:	ac6056e3          	blez	t1,16e2a <_vfiprintf_r+0x1bc>
   17362:	6f6d                	lui	t5,0x1b
   17364:	4641                	li	a2,16
   17366:	b40f0f13          	addi	t5,t5,-1216 # 1ab40 <zeroes.0>
   1736a:	04665f63          	bge	a2,t1,173c8 <_vfiprintf_r+0x75a>
   1736e:	c426                	sw	s1,8(sp)
   17370:	86a2                	mv	a3,s0
   17372:	4ec1                	li	t4,16
   17374:	4f9d                	li	t6,7
   17376:	c642                	sw	a6,12(sp)
   17378:	c872                	sw	t3,16(sp)
   1737a:	841a                	mv	s0,t1
   1737c:	d046                	sw	a7,32(sp)
   1737e:	84fa                	mv	s1,t5
   17380:	a021                	j	17388 <_vfiprintf_r+0x71a>
   17382:	1441                	addi	s0,s0,-16
   17384:	028edb63          	bge	t4,s0,173ba <_vfiprintf_r+0x74c>
   17388:	0741                	addi	a4,a4,16
   1738a:	0785                	addi	a5,a5,1
   1738c:	c284                	sw	s1,0(a3)
   1738e:	01d6a223          	sw	t4,4(a3)
   17392:	c4ba                	sw	a4,72(sp)
   17394:	c2be                	sw	a5,68(sp)
   17396:	06a1                	addi	a3,a3,8
   17398:	feffd5e3          	bge	t6,a5,17382 <_vfiprintf_r+0x714>
   1739c:	0090                	addi	a2,sp,64
   1739e:	85d6                	mv	a1,s5
   173a0:	855e                	mv	a0,s7
   173a2:	88efc0ef          	jal	13430 <__sprint_r>
   173a6:	ba051ee3          	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   173aa:	4ec1                	li	t4,16
   173ac:	1441                	addi	s0,s0,-16
   173ae:	4726                	lw	a4,72(sp)
   173b0:	4796                	lw	a5,68(sp)
   173b2:	86e2                	mv	a3,s8
   173b4:	4f9d                	li	t6,7
   173b6:	fc8ec9e3          	blt	t4,s0,17388 <_vfiprintf_r+0x71a>
   173ba:	8f26                	mv	t5,s1
   173bc:	4832                	lw	a6,12(sp)
   173be:	4e42                	lw	t3,16(sp)
   173c0:	5882                	lw	a7,32(sp)
   173c2:	44a2                	lw	s1,8(sp)
   173c4:	8322                	mv	t1,s0
   173c6:	8436                	mv	s0,a3
   173c8:	971a                	add	a4,a4,t1
   173ca:	0785                	addi	a5,a5,1
   173cc:	01e42023          	sw	t5,0(s0)
   173d0:	00642223          	sw	t1,4(s0)
   173d4:	c4ba                	sw	a4,72(sp)
   173d6:	c2be                	sw	a5,68(sp)
   173d8:	461d                	li	a2,7
   173da:	0421                	addi	s0,s0,8
   173dc:	a4f657e3          	bge	a2,a5,16e2a <_vfiprintf_r+0x1bc>
   173e0:	0090                	addi	a2,sp,64
   173e2:	85d6                	mv	a1,s5
   173e4:	855e                	mv	a0,s7
   173e6:	c846                	sw	a7,16(sp)
   173e8:	c672                	sw	t3,12(sp)
   173ea:	c442                	sw	a6,8(sp)
   173ec:	844fc0ef          	jal	13430 <__sprint_r>
   173f0:	b60519e3          	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   173f4:	4e32                	lw	t3,12(sp)
   173f6:	4726                	lw	a4,72(sp)
   173f8:	4796                	lw	a5,68(sp)
   173fa:	41cd8db3          	sub	s11,s11,t3
   173fe:	48c2                	lw	a7,16(sp)
   17400:	4822                	lw	a6,8(sp)
   17402:	8462                	mv	s0,s8
   17404:	a3b057e3          	blez	s11,16e32 <_vfiprintf_r+0x1c4>
   17408:	6f6d                	lui	t5,0x1b
   1740a:	b40f0f13          	addi	t5,t5,-1216 # 1ab40 <zeroes.0>
   1740e:	05ba5c63          	bge	s4,s11,17466 <_vfiprintf_r+0x7f8>
   17412:	86a2                	mv	a3,s0
   17414:	431d                	li	t1,7
   17416:	846e                	mv	s0,s11
   17418:	c442                	sw	a6,8(sp)
   1741a:	c672                	sw	t3,12(sp)
   1741c:	c846                	sw	a7,16(sp)
   1741e:	8de6                	mv	s11,s9
   17420:	a021                	j	17428 <_vfiprintf_r+0x7ba>
   17422:	1441                	addi	s0,s0,-16
   17424:	028a5b63          	bge	s4,s0,1745a <_vfiprintf_r+0x7ec>
   17428:	0741                	addi	a4,a4,16
   1742a:	0785                	addi	a5,a5,1
   1742c:	0196a023          	sw	s9,0(a3)
   17430:	0146a223          	sw	s4,4(a3)
   17434:	c4ba                	sw	a4,72(sp)
   17436:	c2be                	sw	a5,68(sp)
   17438:	06a1                	addi	a3,a3,8
   1743a:	fef354e3          	bge	t1,a5,17422 <_vfiprintf_r+0x7b4>
   1743e:	0090                	addi	a2,sp,64
   17440:	85d6                	mv	a1,s5
   17442:	855e                	mv	a0,s7
   17444:	fedfb0ef          	jal	13430 <__sprint_r>
   17448:	b0051de3          	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   1744c:	1441                	addi	s0,s0,-16
   1744e:	4726                	lw	a4,72(sp)
   17450:	4796                	lw	a5,68(sp)
   17452:	86e2                	mv	a3,s8
   17454:	431d                	li	t1,7
   17456:	fc8a49e3          	blt	s4,s0,17428 <_vfiprintf_r+0x7ba>
   1745a:	4822                	lw	a6,8(sp)
   1745c:	4e32                	lw	t3,12(sp)
   1745e:	48c2                	lw	a7,16(sp)
   17460:	8f6e                	mv	t5,s11
   17462:	8da2                	mv	s11,s0
   17464:	8436                	mv	s0,a3
   17466:	976e                	add	a4,a4,s11
   17468:	0785                	addi	a5,a5,1
   1746a:	01e42023          	sw	t5,0(s0)
   1746e:	01b42223          	sw	s11,4(s0)
   17472:	c4ba                	sw	a4,72(sp)
   17474:	c2be                	sw	a5,68(sp)
   17476:	461d                	li	a2,7
   17478:	0421                	addi	s0,s0,8
   1747a:	9af65ce3          	bge	a2,a5,16e32 <_vfiprintf_r+0x1c4>
   1747e:	0090                	addi	a2,sp,64
   17480:	85d6                	mv	a1,s5
   17482:	855e                	mv	a0,s7
   17484:	c846                	sw	a7,16(sp)
   17486:	c672                	sw	t3,12(sp)
   17488:	c442                	sw	a6,8(sp)
   1748a:	fa7fb0ef          	jal	13430 <__sprint_r>
   1748e:	ac051ae3          	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   17492:	4726                	lw	a4,72(sp)
   17494:	4796                	lw	a5,68(sp)
   17496:	48c2                	lw	a7,16(sp)
   17498:	4e32                	lw	t3,12(sp)
   1749a:	4822                	lw	a6,8(sp)
   1749c:	8462                	mv	s0,s8
   1749e:	ba51                	j	16e32 <_vfiprintf_r+0x1c4>
   174a0:	0090                	addi	a2,sp,64
   174a2:	85d6                	mv	a1,s5
   174a4:	855e                	mv	a0,s7
   174a6:	c646                	sw	a7,12(sp)
   174a8:	c442                	sw	a6,8(sp)
   174aa:	f87fb0ef          	jal	13430 <__sprint_r>
   174ae:	aa051ae3          	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   174b2:	4726                	lw	a4,72(sp)
   174b4:	48b2                	lw	a7,12(sp)
   174b6:	4822                	lw	a6,8(sp)
   174b8:	8462                	mv	s0,s8
   174ba:	b279                	j	16e48 <_vfiprintf_r+0x1da>
   174bc:	4709                	li	a4,2
   174be:	8832                	mv	a6,a2
   174c0:	de0706e3          	beqz	a4,172ac <_vfiprintf_r+0x63e>
   174c4:	4612                	lw	a2,4(sp)
   174c6:	1984                	addi	s1,sp,240
   174c8:	00f7f713          	andi	a4,a5,15
   174cc:	9732                	add	a4,a4,a2
   174ce:	00074683          	lbu	a3,0(a4)
   174d2:	8391                	srli	a5,a5,0x4
   174d4:	01c59713          	slli	a4,a1,0x1c
   174d8:	8fd9                	or	a5,a5,a4
   174da:	8191                	srli	a1,a1,0x4
   174dc:	fed48fa3          	sb	a3,-1(s1)
   174e0:	00b7e733          	or	a4,a5,a1
   174e4:	14fd                	addi	s1,s1,-1
   174e6:	f36d                	bnez	a4,174c8 <_vfiprintf_r+0x85a>
   174e8:	199c                	addi	a5,sp,240
   174ea:	40978e33          	sub	t3,a5,s1
   174ee:	88ee                	mv	a7,s11
   174f0:	bdcdd0e3          	bge	s11,t3,170b0 <_vfiprintf_r+0x442>
   174f4:	88f2                	mv	a7,t3
   174f6:	be6d                	j	170b0 <_vfiprintf_r+0x442>
   174f8:	636d                	lui	t1,0x1b
   174fa:	4641                	li	a2,16
   174fc:	b5030313          	addi	t1,t1,-1200 # 1ab50 <blanks.1>
   17500:	07d65363          	bge	a2,t4,17566 <_vfiprintf_r+0x8f8>
   17504:	c826                	sw	s1,16(sp)
   17506:	86a2                	mv	a3,s0
   17508:	4f41                	li	t5,16
   1750a:	439d                	li	t2,7
   1750c:	c416                	sw	t0,8(sp)
   1750e:	c67e                	sw	t6,12(sp)
   17510:	d042                	sw	a6,32(sp)
   17512:	d272                	sw	t3,36(sp)
   17514:	8476                	mv	s0,t4
   17516:	d446                	sw	a7,40(sp)
   17518:	849a                	mv	s1,t1
   1751a:	a021                	j	17522 <_vfiprintf_r+0x8b4>
   1751c:	1441                	addi	s0,s0,-16
   1751e:	028f5b63          	bge	t5,s0,17554 <_vfiprintf_r+0x8e6>
   17522:	0741                	addi	a4,a4,16
   17524:	0785                	addi	a5,a5,1
   17526:	c284                	sw	s1,0(a3)
   17528:	01e6a223          	sw	t5,4(a3)
   1752c:	c4ba                	sw	a4,72(sp)
   1752e:	c2be                	sw	a5,68(sp)
   17530:	06a1                	addi	a3,a3,8
   17532:	fef3d5e3          	bge	t2,a5,1751c <_vfiprintf_r+0x8ae>
   17536:	0090                	addi	a2,sp,64
   17538:	85d6                	mv	a1,s5
   1753a:	855e                	mv	a0,s7
   1753c:	ef5fb0ef          	jal	13430 <__sprint_r>
   17540:	a20511e3          	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   17544:	4f41                	li	t5,16
   17546:	1441                	addi	s0,s0,-16
   17548:	4726                	lw	a4,72(sp)
   1754a:	4796                	lw	a5,68(sp)
   1754c:	86e2                	mv	a3,s8
   1754e:	439d                	li	t2,7
   17550:	fc8f49e3          	blt	t5,s0,17522 <_vfiprintf_r+0x8b4>
   17554:	8326                	mv	t1,s1
   17556:	42a2                	lw	t0,8(sp)
   17558:	4fb2                	lw	t6,12(sp)
   1755a:	5802                	lw	a6,32(sp)
   1755c:	5e12                	lw	t3,36(sp)
   1755e:	58a2                	lw	a7,40(sp)
   17560:	44c2                	lw	s1,16(sp)
   17562:	8ea2                	mv	t4,s0
   17564:	8436                	mv	s0,a3
   17566:	9776                	add	a4,a4,t4
   17568:	0785                	addi	a5,a5,1
   1756a:	00642023          	sw	t1,0(s0)
   1756e:	01d42223          	sw	t4,4(s0)
   17572:	c4ba                	sw	a4,72(sp)
   17574:	c2be                	sw	a5,68(sp)
   17576:	461d                	li	a2,7
   17578:	0421                	addi	s0,s0,8
   1757a:	86f656e3          	bge	a2,a5,16de6 <_vfiprintf_r+0x178>
   1757e:	0090                	addi	a2,sp,64
   17580:	85d6                	mv	a1,s5
   17582:	855e                	mv	a0,s7
   17584:	d246                	sw	a7,36(sp)
   17586:	d072                	sw	t3,32(sp)
   17588:	c842                	sw	a6,16(sp)
   1758a:	c67e                	sw	t6,12(sp)
   1758c:	c416                	sw	t0,8(sp)
   1758e:	ea3fb0ef          	jal	13430 <__sprint_r>
   17592:	9c0518e3          	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   17596:	4726                	lw	a4,72(sp)
   17598:	4796                	lw	a5,68(sp)
   1759a:	5892                	lw	a7,36(sp)
   1759c:	5e02                	lw	t3,32(sp)
   1759e:	4842                	lw	a6,16(sp)
   175a0:	4fb2                	lw	t6,12(sp)
   175a2:	42a2                	lw	t0,8(sp)
   175a4:	8462                	mv	s0,s8
   175a6:	841ff06f          	j	16de6 <_vfiprintf_r+0x178>
   175aa:	0090                	addi	a2,sp,64
   175ac:	85d6                	mv	a1,s5
   175ae:	855e                	mv	a0,s7
   175b0:	d046                	sw	a7,32(sp)
   175b2:	c872                	sw	t3,16(sp)
   175b4:	c642                	sw	a6,12(sp)
   175b6:	c47e                	sw	t6,8(sp)
   175b8:	e79fb0ef          	jal	13430 <__sprint_r>
   175bc:	9a0513e3          	bnez	a0,16f62 <_vfiprintf_r+0x2f4>
   175c0:	4726                	lw	a4,72(sp)
   175c2:	4796                	lw	a5,68(sp)
   175c4:	5882                	lw	a7,32(sp)
   175c6:	4e42                	lw	t3,16(sp)
   175c8:	4832                	lw	a6,12(sp)
   175ca:	4fa2                	lw	t6,8(sp)
   175cc:	8462                	mv	s0,s8
   175ce:	855ff06f          	j	16e22 <_vfiprintf_r+0x1b4>
   175d2:	010e7713          	andi	a4,t3,16
   175d6:	000d2783          	lw	a5,0(s10)
   175da:	0d11                	addi	s10,s10,4
   175dc:	e719                	bnez	a4,175ea <_vfiprintf_r+0x97c>
   175de:	040e7713          	andi	a4,t3,64
   175e2:	1e070f63          	beqz	a4,177e0 <_vfiprintf_r+0xb72>
   175e6:	07c2                	slli	a5,a5,0x10
   175e8:	83c1                	srli	a5,a5,0x10
   175ea:	4881                	li	a7,0
   175ec:	b951                	j	17280 <_vfiprintf_r+0x612>
   175ee:	01077613          	andi	a2,a4,16
   175f2:	000d2783          	lw	a5,0(s10)
   175f6:	0d11                	addi	s10,s10,4
   175f8:	ee01                	bnez	a2,17610 <_vfiprintf_r+0x9a2>
   175fa:	04077613          	andi	a2,a4,64
   175fe:	c609                	beqz	a2,17608 <_vfiprintf_r+0x99a>
   17600:	07c2                	slli	a5,a5,0x10
   17602:	83c1                	srli	a5,a5,0x10
   17604:	4581                	li	a1,0
   17606:	bef5                	j	17202 <_vfiprintf_r+0x594>
   17608:	20077613          	andi	a2,a4,512
   1760c:	2a061163          	bnez	a2,178ae <_vfiprintf_r+0xc40>
   17610:	4581                	li	a1,0
   17612:	bec5                	j	17202 <_vfiprintf_r+0x594>
   17614:	4881                	li	a7,0
   17616:	1984                	addi	s1,sp,240
   17618:	bc61                	j	170b0 <_vfiprintf_r+0x442>
   1761a:	000d2783          	lw	a5,0(s10)
   1761e:	41f95713          	srai	a4,s2,0x1f
   17622:	0d11                	addi	s10,s10,4
   17624:	0127a023          	sw	s2,0(a5)
   17628:	c3d8                	sw	a4,4(a5)
   1762a:	ef8ff06f          	j	16d22 <_vfiprintf_r+0xb4>
   1762e:	88f2                	mv	a7,t3
   17630:	84aa                	mv	s1,a0
   17632:	bcbd                	j	170b0 <_vfiprintf_r+0x442>
   17634:	5dfd                	li	s11,-1
   17636:	89b6                	mv	s3,a3
   17638:	f4cff06f          	j	16d84 <_vfiprintf_r+0x116>
   1763c:	8e42                	mv	t3,a6
   1763e:	b12d                	j	17268 <_vfiprintf_r+0x5fa>
   17640:	8742                	mv	a4,a6
   17642:	b665                	j	171ea <_vfiprintf_r+0x57c>
   17644:	67e9                	lui	a5,0x1a
   17646:	43078793          	addi	a5,a5,1072 # 1a430 <__clzsi2+0xa6>
   1764a:	c23e                	sw	a5,4(sp)
   1764c:	02087793          	andi	a5,a6,32
   17650:	c3a9                	beqz	a5,17692 <_vfiprintf_r+0xa24>
   17652:	0d1d                	addi	s10,s10,7
   17654:	ff8d7d13          	andi	s10,s10,-8
   17658:	000d2783          	lw	a5,0(s10)
   1765c:	004d2583          	lw	a1,4(s10)
   17660:	0d21                	addi	s10,s10,8
   17662:	00187713          	andi	a4,a6,1
   17666:	cf01                	beqz	a4,1767e <_vfiprintf_r+0xa10>
   17668:	00b7e733          	or	a4,a5,a1
   1766c:	cb09                	beqz	a4,1767e <_vfiprintf_r+0xa10>
   1766e:	03000713          	li	a4,48
   17672:	02e10e23          	sb	a4,60(sp)
   17676:	02c10ea3          	sb	a2,61(sp)
   1767a:	00286813          	ori	a6,a6,2
   1767e:	bff87813          	andi	a6,a6,-1025
   17682:	b941                	j	17312 <_vfiprintf_r+0x6a4>
   17684:	67e9                	lui	a5,0x1a
   17686:	41c78793          	addi	a5,a5,1052 # 1a41c <__clzsi2+0x92>
   1768a:	c23e                	sw	a5,4(sp)
   1768c:	02087793          	andi	a5,a6,32
   17690:	f3e9                	bnez	a5,17652 <_vfiprintf_r+0x9e4>
   17692:	01087713          	andi	a4,a6,16
   17696:	000d2783          	lw	a5,0(s10)
   1769a:	0d11                	addi	s10,s10,4
   1769c:	e315                	bnez	a4,176c0 <_vfiprintf_r+0xa52>
   1769e:	04087713          	andi	a4,a6,64
   176a2:	cb19                	beqz	a4,176b8 <_vfiprintf_r+0xa4a>
   176a4:	07c2                	slli	a5,a5,0x10
   176a6:	83c1                	srli	a5,a5,0x10
   176a8:	4581                	li	a1,0
   176aa:	bf65                	j	17662 <_vfiprintf_r+0x9f4>
   176ac:	8526                	mv	a0,s1
   176ae:	9ddfc0ef          	jal	1408a <strlen>
   176b2:	4822                	lw	a6,8(sp)
   176b4:	8e2a                	mv	t3,a0
   176b6:	b435                	j	170e2 <_vfiprintf_r+0x474>
   176b8:	20087713          	andi	a4,a6,512
   176bc:	1c071763          	bnez	a4,1788a <_vfiprintf_r+0xc1c>
   176c0:	4581                	li	a1,0
   176c2:	b745                	j	17662 <_vfiprintf_r+0x9f4>
   176c4:	ccccdf37          	lui	t5,0xccccd
   176c8:	ccccdfb7          	lui	t6,0xccccd
   176cc:	42d2                	lw	t0,20(sp)
   176ce:	40087e13          	andi	t3,a6,1024
   176d2:	4581                	li	a1,0
   176d4:	1988                	addi	a0,sp,240
   176d6:	4315                	li	t1,5
   176d8:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccb1271>
   176dc:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccb1270>
   176e0:	0ff00e93          	li	t4,255
   176e4:	a081                	j	17724 <_vfiprintf_r+0xab6>
   176e6:	00f4b733          	sltu	a4,s1,a5
   176ea:	9726                	add	a4,a4,s1
   176ec:	02677733          	remu	a4,a4,t1
   176f0:	40e78733          	sub	a4,a5,a4
   176f4:	00e7b633          	sltu	a2,a5,a4
   176f8:	40c88633          	sub	a2,a7,a2
   176fc:	03f703b3          	mul	t2,a4,t6
   17700:	03e60633          	mul	a2,a2,t5
   17704:	03e73533          	mulhu	a0,a4,t5
   17708:	961e                	add	a2,a2,t2
   1770a:	03e70733          	mul	a4,a4,t5
   1770e:	962a                	add	a2,a2,a0
   17710:	01f61513          	slli	a0,a2,0x1f
   17714:	8205                	srli	a2,a2,0x1
   17716:	8305                	srli	a4,a4,0x1
   17718:	8f49                	or	a4,a4,a0
   1771a:	16088263          	beqz	a7,1787e <_vfiprintf_r+0xc10>
   1771e:	87ba                	mv	a5,a4
   17720:	88b2                	mv	a7,a2
   17722:	8536                	mv	a0,a3
   17724:	011784b3          	add	s1,a5,a7
   17728:	00f4b733          	sltu	a4,s1,a5
   1772c:	9726                	add	a4,a4,s1
   1772e:	02677733          	remu	a4,a4,t1
   17732:	fff50693          	addi	a3,a0,-1
   17736:	0585                	addi	a1,a1,1
   17738:	40e78733          	sub	a4,a5,a4
   1773c:	00e7b3b3          	sltu	t2,a5,a4
   17740:	407883b3          	sub	t2,a7,t2
   17744:	03e73633          	mulhu	a2,a4,t5
   17748:	03e383b3          	mul	t2,t2,t5
   1774c:	03e70733          	mul	a4,a4,t5
   17750:	93b2                	add	t2,t2,a2
   17752:	03fe                	slli	t2,t2,0x1f
   17754:	00175613          	srli	a2,a4,0x1
   17758:	00c3e633          	or	a2,t2,a2
   1775c:	00261713          	slli	a4,a2,0x2
   17760:	9732                	add	a4,a4,a2
   17762:	0706                	slli	a4,a4,0x1
   17764:	40e78733          	sub	a4,a5,a4
   17768:	03070713          	addi	a4,a4,48
   1776c:	fee50fa3          	sb	a4,-1(a0)
   17770:	f60e0be3          	beqz	t3,176e6 <_vfiprintf_r+0xa78>
   17774:	0002c703          	lbu	a4,0(t0)
   17778:	f6b717e3          	bne	a4,a1,176e6 <_vfiprintf_r+0xa78>
   1777c:	f7d585e3          	beq	a1,t4,176e6 <_vfiprintf_r+0xa78>
   17780:	06089b63          	bnez	a7,177f6 <_vfiprintf_r+0xb88>
   17784:	4725                	li	a4,9
   17786:	06f76863          	bltu	a4,a5,177f6 <_vfiprintf_r+0xb88>
   1778a:	84b6                	mv	s1,a3
   1778c:	ca16                	sw	t0,20(sp)
   1778e:	bba9                	j	174e8 <_vfiprintf_r+0x87a>
   17790:	883a                	mv	a6,a4
   17792:	4701                	li	a4,0
   17794:	b0070ce3          	beqz	a4,172ac <_vfiprintf_r+0x63e>
   17798:	b335                	j	174c4 <_vfiprintf_r+0x856>
   1779a:	956f90ef          	jal	108f0 <__sinit>
   1779e:	cfaff06f          	j	16c98 <_vfiprintf_r+0x2a>
   177a2:	0019c783          	lbu	a5,1(s3)
   177a6:	20086813          	ori	a6,a6,512
   177aa:	0985                	addi	s3,s3,1
   177ac:	dd4ff06f          	j	16d80 <_vfiprintf_r+0x112>
   177b0:	0019c783          	lbu	a5,1(s3)
   177b4:	02086813          	ori	a6,a6,32
   177b8:	0985                	addi	s3,s3,1
   177ba:	dc6ff06f          	j	16d80 <_vfiprintf_r+0x112>
   177be:	000d2783          	lw	a5,0(s10)
   177c2:	0d11                	addi	s10,s10,4
   177c4:	0127a023          	sw	s2,0(a5)
   177c8:	d5aff06f          	j	16d22 <_vfiprintf_r+0xb4>
   177cc:	4799                	li	a5,6
   177ce:	8e6e                	mv	t3,s11
   177d0:	0bb7eb63          	bltu	a5,s11,17886 <_vfiprintf_r+0xc18>
   177d4:	64e9                	lui	s1,0x1a
   177d6:	88f2                	mv	a7,t3
   177d8:	44448493          	addi	s1,s1,1092 # 1a444 <__clzsi2+0xba>
   177dc:	df2ff06f          	j	16dce <_vfiprintf_r+0x160>
   177e0:	200e7713          	andi	a4,t3,512
   177e4:	e00703e3          	beqz	a4,175ea <_vfiprintf_r+0x97c>
   177e8:	0ff7f793          	zext.b	a5,a5
   177ec:	4881                	li	a7,0
   177ee:	bc49                	j	17280 <_vfiprintf_r+0x612>
   177f0:	4781                	li	a5,0
   177f2:	4581                	li	a1,0
   177f4:	b9c1                	j	174c4 <_vfiprintf_r+0x856>
   177f6:	d43e                	sw	a5,40(sp)
   177f8:	47e2                	lw	a5,24(sp)
   177fa:	45f2                	lw	a1,28(sp)
   177fc:	d646                	sw	a7,44(sp)
   177fe:	8e9d                	sub	a3,a3,a5
   17800:	863e                	mv	a2,a5
   17802:	8536                	mv	a0,a3
   17804:	d27e                	sw	t6,36(sp)
   17806:	d07a                	sw	t5,32(sp)
   17808:	ca72                	sw	t3,20(sp)
   1780a:	c842                	sw	a6,16(sp)
   1780c:	c616                	sw	t0,12(sp)
   1780e:	c436                	sw	a3,8(sp)
   17810:	d72fc0ef          	jal	13d82 <strncpy>
   17814:	57a2                	lw	a5,40(sp)
   17816:	4615                	li	a2,5
   17818:	42b2                	lw	t0,12(sp)
   1781a:	00f4b733          	sltu	a4,s1,a5
   1781e:	9726                	add	a4,a4,s1
   17820:	02c77733          	remu	a4,a4,a2
   17824:	0012c603          	lbu	a2,1(t0)
   17828:	58b2                	lw	a7,44(sp)
   1782a:	ccccd537          	lui	a0,0xccccd
   1782e:	00c03633          	snez	a2,a2
   17832:	ccccd3b7          	lui	t2,0xccccd
   17836:	92b2                	add	t0,t0,a2
   17838:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb1271>
   1783c:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccb1270>
   17840:	46a2                	lw	a3,8(sp)
   17842:	4842                	lw	a6,16(sp)
   17844:	4e52                	lw	t3,20(sp)
   17846:	5f02                	lw	t5,32(sp)
   17848:	5f92                	lw	t6,36(sp)
   1784a:	4581                	li	a1,0
   1784c:	4315                	li	t1,5
   1784e:	0ff00e93          	li	t4,255
   17852:	40e78733          	sub	a4,a5,a4
   17856:	00e7b633          	sltu	a2,a5,a4
   1785a:	40c88633          	sub	a2,a7,a2
   1785e:	027703b3          	mul	t2,a4,t2
   17862:	02a60633          	mul	a2,a2,a0
   17866:	02a738b3          	mulhu	a7,a4,a0
   1786a:	961e                	add	a2,a2,t2
   1786c:	02a707b3          	mul	a5,a4,a0
   17870:	9646                	add	a2,a2,a7
   17872:	01f61713          	slli	a4,a2,0x1f
   17876:	8205                	srli	a2,a2,0x1
   17878:	8385                	srli	a5,a5,0x1
   1787a:	8f5d                	or	a4,a4,a5
   1787c:	b54d                	j	1771e <_vfiprintf_r+0xab0>
   1787e:	4525                	li	a0,9
   17880:	e8f56fe3          	bltu	a0,a5,1771e <_vfiprintf_r+0xab0>
   17884:	b719                	j	1778a <_vfiprintf_r+0xb1c>
   17886:	4e19                	li	t3,6
   17888:	b7b1                	j	177d4 <_vfiprintf_r+0xb66>
   1788a:	0ff7f793          	zext.b	a5,a5
   1788e:	4581                	li	a1,0
   17890:	bbc9                	j	17662 <_vfiprintf_r+0x9f4>
   17892:	07e2                	slli	a5,a5,0x18
   17894:	87e1                	srai	a5,a5,0x18
   17896:	41f7d893          	srai	a7,a5,0x1f
   1789a:	8746                	mv	a4,a7
   1789c:	e20ff06f          	j	16ebc <_vfiprintf_r+0x24e>
   178a0:	000d2783          	lw	a5,0(s10)
   178a4:	0d11                	addi	s10,s10,4
   178a6:	01279023          	sh	s2,0(a5)
   178aa:	c78ff06f          	j	16d22 <_vfiprintf_r+0xb4>
   178ae:	0ff7f793          	zext.b	a5,a5
   178b2:	4581                	li	a1,0
   178b4:	b2b9                	j	17202 <_vfiprintf_r+0x594>
   178b6:	03000793          	li	a5,48
   178ba:	fe4ff06f          	j	1709e <_vfiprintf_r+0x430>
   178be:	5d7d                	li	s10,-1
   178c0:	ecaff06f          	j	16f8a <_vfiprintf_r+0x31c>
   178c4:	000d2d83          	lw	s11,0(s10)
   178c8:	0d11                	addi	s10,s10,4
   178ca:	000dd363          	bgez	s11,178d0 <_vfiprintf_r+0xc62>
   178ce:	5dfd                	li	s11,-1
   178d0:	0019c783          	lbu	a5,1(s3)
   178d4:	89b6                	mv	s3,a3
   178d6:	caaff06f          	j	16d80 <_vfiprintf_r+0x112>

000178da <vfiprintf>:
   178da:	87aa                	mv	a5,a0
   178dc:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   178e0:	86b2                	mv	a3,a2
   178e2:	862e                	mv	a2,a1
   178e4:	85be                	mv	a1,a5
   178e6:	b88ff06f          	j	16c6e <_vfiprintf_r>

000178ea <__sbprintf>:
   178ea:	b8010113          	addi	sp,sp,-1152
   178ee:	00c59783          	lh	a5,12(a1)
   178f2:	00e5d703          	lhu	a4,14(a1)
   178f6:	46812c23          	sw	s0,1144(sp)
   178fa:	842e                	mv	s0,a1
   178fc:	65c1                	lui	a1,0x10
   178fe:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   17900:	06442e03          	lw	t3,100(s0)
   17904:	01c42303          	lw	t1,28(s0)
   17908:	02442883          	lw	a7,36(s0)
   1790c:	0742                	slli	a4,a4,0x10
   1790e:	8fed                	and	a5,a5,a1
   17910:	8fd9                	or	a5,a5,a4
   17912:	40000813          	li	a6,1024
   17916:	ca3e                	sw	a5,20(sp)
   17918:	002c                	addi	a1,sp,8
   1791a:	189c                	addi	a5,sp,112
   1791c:	46912a23          	sw	s1,1140(sp)
   17920:	47212823          	sw	s2,1136(sp)
   17924:	46112e23          	sw	ra,1148(sp)
   17928:	892a                	mv	s2,a0
   1792a:	d6f2                	sw	t3,108(sp)
   1792c:	d21a                	sw	t1,36(sp)
   1792e:	d646                	sw	a7,44(sp)
   17930:	c43e                	sw	a5,8(sp)
   17932:	cc3e                	sw	a5,24(sp)
   17934:	c842                	sw	a6,16(sp)
   17936:	ce42                	sw	a6,28(sp)
   17938:	d002                	sw	zero,32(sp)
   1793a:	b34ff0ef          	jal	16c6e <_vfiprintf_r>
   1793e:	84aa                	mv	s1,a0
   17940:	02055963          	bgez	a0,17972 <__sbprintf+0x88>
   17944:	01415783          	lhu	a5,20(sp)
   17948:	0407f793          	andi	a5,a5,64
   1794c:	c799                	beqz	a5,1795a <__sbprintf+0x70>
   1794e:	00c45783          	lhu	a5,12(s0)
   17952:	0407e793          	ori	a5,a5,64
   17956:	00f41623          	sh	a5,12(s0)
   1795a:	47c12083          	lw	ra,1148(sp)
   1795e:	47812403          	lw	s0,1144(sp)
   17962:	47012903          	lw	s2,1136(sp)
   17966:	8526                	mv	a0,s1
   17968:	47412483          	lw	s1,1140(sp)
   1796c:	48010113          	addi	sp,sp,1152
   17970:	8082                	ret
   17972:	002c                	addi	a1,sp,8
   17974:	854a                	mv	a0,s2
   17976:	d29fb0ef          	jal	1369e <_fflush_r>
   1797a:	d569                	beqz	a0,17944 <__sbprintf+0x5a>
   1797c:	54fd                	li	s1,-1
   1797e:	b7d9                	j	17944 <__sbprintf+0x5a>

00017980 <__errno>:
   17980:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   17984:	8082                	ret

00017986 <abort>:
   17986:	1141                	addi	sp,sp,-16
   17988:	4519                	li	a0,6
   1798a:	c606                	sw	ra,12(sp)
   1798c:	2a59                	jal	17b22 <raise>
   1798e:	4505                	li	a0,1
   17990:	2e61                	jal	17d28 <_exit>

00017992 <_init_signal_r>:
   17992:	11852783          	lw	a5,280(a0)
   17996:	c399                	beqz	a5,1799c <_init_signal_r+0xa>
   17998:	4501                	li	a0,0
   1799a:	8082                	ret
   1799c:	1141                	addi	sp,sp,-16
   1799e:	08000593          	li	a1,128
   179a2:	c422                	sw	s0,8(sp)
   179a4:	c606                	sw	ra,12(sp)
   179a6:	842a                	mv	s0,a0
   179a8:	897f90ef          	jal	1123e <_malloc_r>
   179ac:	10a42c23          	sw	a0,280(s0)
   179b0:	cd09                	beqz	a0,179ca <_init_signal_r+0x38>
   179b2:	08050793          	addi	a5,a0,128
   179b6:	00052023          	sw	zero,0(a0)
   179ba:	0511                	addi	a0,a0,4
   179bc:	fef51de3          	bne	a0,a5,179b6 <_init_signal_r+0x24>
   179c0:	4501                	li	a0,0
   179c2:	40b2                	lw	ra,12(sp)
   179c4:	4422                	lw	s0,8(sp)
   179c6:	0141                	addi	sp,sp,16
   179c8:	8082                	ret
   179ca:	557d                	li	a0,-1
   179cc:	bfdd                	j	179c2 <_init_signal_r+0x30>

000179ce <_signal_r>:
   179ce:	1101                	addi	sp,sp,-32
   179d0:	ca26                	sw	s1,20(sp)
   179d2:	ce06                	sw	ra,28(sp)
   179d4:	47fd                	li	a5,31
   179d6:	84aa                	mv	s1,a0
   179d8:	02b7e063          	bltu	a5,a1,179f8 <_signal_r+0x2a>
   179dc:	11852783          	lw	a5,280(a0)
   179e0:	cc22                	sw	s0,24(sp)
   179e2:	842e                	mv	s0,a1
   179e4:	cf91                	beqz	a5,17a00 <_signal_r+0x32>
   179e6:	040a                	slli	s0,s0,0x2
   179e8:	97a2                	add	a5,a5,s0
   179ea:	4462                	lw	s0,24(sp)
   179ec:	4388                	lw	a0,0(a5)
   179ee:	c390                	sw	a2,0(a5)
   179f0:	40f2                	lw	ra,28(sp)
   179f2:	44d2                	lw	s1,20(sp)
   179f4:	6105                	addi	sp,sp,32
   179f6:	8082                	ret
   179f8:	47d9                	li	a5,22
   179fa:	c11c                	sw	a5,0(a0)
   179fc:	557d                	li	a0,-1
   179fe:	bfcd                	j	179f0 <_signal_r+0x22>
   17a00:	08000593          	li	a1,128
   17a04:	c632                	sw	a2,12(sp)
   17a06:	839f90ef          	jal	1123e <_malloc_r>
   17a0a:	10a4ac23          	sw	a0,280(s1)
   17a0e:	4632                	lw	a2,12(sp)
   17a10:	87aa                	mv	a5,a0
   17a12:	872a                	mv	a4,a0
   17a14:	08050693          	addi	a3,a0,128
   17a18:	c519                	beqz	a0,17a26 <_signal_r+0x58>
   17a1a:	00072023          	sw	zero,0(a4)
   17a1e:	0711                	addi	a4,a4,4
   17a20:	fed71de3          	bne	a4,a3,17a1a <_signal_r+0x4c>
   17a24:	b7c9                	j	179e6 <_signal_r+0x18>
   17a26:	4462                	lw	s0,24(sp)
   17a28:	557d                	li	a0,-1
   17a2a:	b7d9                	j	179f0 <_signal_r+0x22>

00017a2c <_raise_r>:
   17a2c:	1141                	addi	sp,sp,-16
   17a2e:	c226                	sw	s1,4(sp)
   17a30:	c606                	sw	ra,12(sp)
   17a32:	47fd                	li	a5,31
   17a34:	84aa                	mv	s1,a0
   17a36:	04b7ee63          	bltu	a5,a1,17a92 <_raise_r+0x66>
   17a3a:	11852783          	lw	a5,280(a0)
   17a3e:	c422                	sw	s0,8(sp)
   17a40:	842e                	mv	s0,a1
   17a42:	c795                	beqz	a5,17a6e <_raise_r+0x42>
   17a44:	00259713          	slli	a4,a1,0x2
   17a48:	97ba                	add	a5,a5,a4
   17a4a:	4398                	lw	a4,0(a5)
   17a4c:	c30d                	beqz	a4,17a6e <_raise_r+0x42>
   17a4e:	4685                	li	a3,1
   17a50:	00d70963          	beq	a4,a3,17a62 <_raise_r+0x36>
   17a54:	56fd                	li	a3,-1
   17a56:	02d70663          	beq	a4,a3,17a82 <_raise_r+0x56>
   17a5a:	0007a023          	sw	zero,0(a5)
   17a5e:	852e                	mv	a0,a1
   17a60:	9702                	jalr	a4
   17a62:	4422                	lw	s0,8(sp)
   17a64:	4501                	li	a0,0
   17a66:	40b2                	lw	ra,12(sp)
   17a68:	4492                	lw	s1,4(sp)
   17a6a:	0141                	addi	sp,sp,16
   17a6c:	8082                	ret
   17a6e:	8526                	mv	a0,s1
   17a70:	2469                	jal	17cfa <_getpid_r>
   17a72:	8622                	mv	a2,s0
   17a74:	4422                	lw	s0,8(sp)
   17a76:	40b2                	lw	ra,12(sp)
   17a78:	85aa                	mv	a1,a0
   17a7a:	8526                	mv	a0,s1
   17a7c:	4492                	lw	s1,4(sp)
   17a7e:	0141                	addi	sp,sp,16
   17a80:	a489                	j	17cc2 <_kill_r>
   17a82:	4422                	lw	s0,8(sp)
   17a84:	40b2                	lw	ra,12(sp)
   17a86:	47d9                	li	a5,22
   17a88:	c11c                	sw	a5,0(a0)
   17a8a:	4492                	lw	s1,4(sp)
   17a8c:	4505                	li	a0,1
   17a8e:	0141                	addi	sp,sp,16
   17a90:	8082                	ret
   17a92:	47d9                	li	a5,22
   17a94:	c11c                	sw	a5,0(a0)
   17a96:	557d                	li	a0,-1
   17a98:	b7f9                	j	17a66 <_raise_r+0x3a>

00017a9a <__sigtramp_r>:
   17a9a:	47fd                	li	a5,31
   17a9c:	08b7e163          	bltu	a5,a1,17b1e <__sigtramp_r+0x84>
   17aa0:	11852783          	lw	a5,280(a0)
   17aa4:	1141                	addi	sp,sp,-16
   17aa6:	c422                	sw	s0,8(sp)
   17aa8:	c226                	sw	s1,4(sp)
   17aaa:	c606                	sw	ra,12(sp)
   17aac:	842e                	mv	s0,a1
   17aae:	84aa                	mv	s1,a0
   17ab0:	c7a1                	beqz	a5,17af8 <__sigtramp_r+0x5e>
   17ab2:	00241713          	slli	a4,s0,0x2
   17ab6:	97ba                	add	a5,a5,a4
   17ab8:	4398                	lw	a4,0(a5)
   17aba:	c30d                	beqz	a4,17adc <__sigtramp_r+0x42>
   17abc:	56fd                	li	a3,-1
   17abe:	02d70b63          	beq	a4,a3,17af4 <__sigtramp_r+0x5a>
   17ac2:	4685                	li	a3,1
   17ac4:	02d70263          	beq	a4,a3,17ae8 <__sigtramp_r+0x4e>
   17ac8:	8522                	mv	a0,s0
   17aca:	0007a023          	sw	zero,0(a5)
   17ace:	9702                	jalr	a4
   17ad0:	4501                	li	a0,0
   17ad2:	40b2                	lw	ra,12(sp)
   17ad4:	4422                	lw	s0,8(sp)
   17ad6:	4492                	lw	s1,4(sp)
   17ad8:	0141                	addi	sp,sp,16
   17ada:	8082                	ret
   17adc:	40b2                	lw	ra,12(sp)
   17ade:	4422                	lw	s0,8(sp)
   17ae0:	4492                	lw	s1,4(sp)
   17ae2:	4505                	li	a0,1
   17ae4:	0141                	addi	sp,sp,16
   17ae6:	8082                	ret
   17ae8:	40b2                	lw	ra,12(sp)
   17aea:	4422                	lw	s0,8(sp)
   17aec:	4492                	lw	s1,4(sp)
   17aee:	450d                	li	a0,3
   17af0:	0141                	addi	sp,sp,16
   17af2:	8082                	ret
   17af4:	4509                	li	a0,2
   17af6:	bff1                	j	17ad2 <__sigtramp_r+0x38>
   17af8:	08000593          	li	a1,128
   17afc:	f42f90ef          	jal	1123e <_malloc_r>
   17b00:	10a4ac23          	sw	a0,280(s1)
   17b04:	87aa                	mv	a5,a0
   17b06:	c911                	beqz	a0,17b1a <__sigtramp_r+0x80>
   17b08:	872a                	mv	a4,a0
   17b0a:	08050693          	addi	a3,a0,128
   17b0e:	00072023          	sw	zero,0(a4)
   17b12:	0711                	addi	a4,a4,4
   17b14:	fed71de3          	bne	a4,a3,17b0e <__sigtramp_r+0x74>
   17b18:	bf69                	j	17ab2 <__sigtramp_r+0x18>
   17b1a:	557d                	li	a0,-1
   17b1c:	bf5d                	j	17ad2 <__sigtramp_r+0x38>
   17b1e:	557d                	li	a0,-1
   17b20:	8082                	ret

00017b22 <raise>:
   17b22:	1141                	addi	sp,sp,-16
   17b24:	c226                	sw	s1,4(sp)
   17b26:	c606                	sw	ra,12(sp)
   17b28:	47fd                	li	a5,31
   17b2a:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   17b2e:	04a7ed63          	bltu	a5,a0,17b88 <raise+0x66>
   17b32:	1184a783          	lw	a5,280(s1)
   17b36:	c422                	sw	s0,8(sp)
   17b38:	842a                	mv	s0,a0
   17b3a:	c78d                	beqz	a5,17b64 <raise+0x42>
   17b3c:	00251713          	slli	a4,a0,0x2
   17b40:	97ba                	add	a5,a5,a4
   17b42:	4398                	lw	a4,0(a5)
   17b44:	c305                	beqz	a4,17b64 <raise+0x42>
   17b46:	4685                	li	a3,1
   17b48:	00d70863          	beq	a4,a3,17b58 <raise+0x36>
   17b4c:	56fd                	li	a3,-1
   17b4e:	02d70563          	beq	a4,a3,17b78 <raise+0x56>
   17b52:	0007a023          	sw	zero,0(a5)
   17b56:	9702                	jalr	a4
   17b58:	4422                	lw	s0,8(sp)
   17b5a:	4501                	li	a0,0
   17b5c:	40b2                	lw	ra,12(sp)
   17b5e:	4492                	lw	s1,4(sp)
   17b60:	0141                	addi	sp,sp,16
   17b62:	8082                	ret
   17b64:	8526                	mv	a0,s1
   17b66:	2a51                	jal	17cfa <_getpid_r>
   17b68:	8622                	mv	a2,s0
   17b6a:	4422                	lw	s0,8(sp)
   17b6c:	40b2                	lw	ra,12(sp)
   17b6e:	85aa                	mv	a1,a0
   17b70:	8526                	mv	a0,s1
   17b72:	4492                	lw	s1,4(sp)
   17b74:	0141                	addi	sp,sp,16
   17b76:	a2b1                	j	17cc2 <_kill_r>
   17b78:	4422                	lw	s0,8(sp)
   17b7a:	40b2                	lw	ra,12(sp)
   17b7c:	47d9                	li	a5,22
   17b7e:	c09c                	sw	a5,0(s1)
   17b80:	4505                	li	a0,1
   17b82:	4492                	lw	s1,4(sp)
   17b84:	0141                	addi	sp,sp,16
   17b86:	8082                	ret
   17b88:	47d9                	li	a5,22
   17b8a:	c09c                	sw	a5,0(s1)
   17b8c:	557d                	li	a0,-1
   17b8e:	b7f9                	j	17b5c <raise+0x3a>

00017b90 <signal>:
   17b90:	1141                	addi	sp,sp,-16
   17b92:	c04a                	sw	s2,0(sp)
   17b94:	c606                	sw	ra,12(sp)
   17b96:	47fd                	li	a5,31
   17b98:	f141a903          	lw	s2,-236(gp) # 1b724 <_impure_ptr>
   17b9c:	02a7e463          	bltu	a5,a0,17bc4 <signal+0x34>
   17ba0:	c422                	sw	s0,8(sp)
   17ba2:	842a                	mv	s0,a0
   17ba4:	11892503          	lw	a0,280(s2)
   17ba8:	c226                	sw	s1,4(sp)
   17baa:	84ae                	mv	s1,a1
   17bac:	c10d                	beqz	a0,17bce <signal+0x3e>
   17bae:	040a                	slli	s0,s0,0x2
   17bb0:	008507b3          	add	a5,a0,s0
   17bb4:	4388                	lw	a0,0(a5)
   17bb6:	4422                	lw	s0,8(sp)
   17bb8:	c384                	sw	s1,0(a5)
   17bba:	4492                	lw	s1,4(sp)
   17bbc:	40b2                	lw	ra,12(sp)
   17bbe:	4902                	lw	s2,0(sp)
   17bc0:	0141                	addi	sp,sp,16
   17bc2:	8082                	ret
   17bc4:	47d9                	li	a5,22
   17bc6:	00f92023          	sw	a5,0(s2)
   17bca:	557d                	li	a0,-1
   17bcc:	bfc5                	j	17bbc <signal+0x2c>
   17bce:	08000593          	li	a1,128
   17bd2:	854a                	mv	a0,s2
   17bd4:	e6af90ef          	jal	1123e <_malloc_r>
   17bd8:	10a92c23          	sw	a0,280(s2)
   17bdc:	87aa                	mv	a5,a0
   17bde:	08050713          	addi	a4,a0,128
   17be2:	c519                	beqz	a0,17bf0 <signal+0x60>
   17be4:	0007a023          	sw	zero,0(a5)
   17be8:	0791                	addi	a5,a5,4
   17bea:	fef71de3          	bne	a4,a5,17be4 <signal+0x54>
   17bee:	b7c1                	j	17bae <signal+0x1e>
   17bf0:	4422                	lw	s0,8(sp)
   17bf2:	4492                	lw	s1,4(sp)
   17bf4:	557d                	li	a0,-1
   17bf6:	b7d9                	j	17bbc <signal+0x2c>

00017bf8 <_init_signal>:
   17bf8:	1141                	addi	sp,sp,-16
   17bfa:	c422                	sw	s0,8(sp)
   17bfc:	f141a403          	lw	s0,-236(gp) # 1b724 <_impure_ptr>
   17c00:	c606                	sw	ra,12(sp)
   17c02:	11842783          	lw	a5,280(s0)
   17c06:	c791                	beqz	a5,17c12 <_init_signal+0x1a>
   17c08:	4501                	li	a0,0
   17c0a:	40b2                	lw	ra,12(sp)
   17c0c:	4422                	lw	s0,8(sp)
   17c0e:	0141                	addi	sp,sp,16
   17c10:	8082                	ret
   17c12:	08000593          	li	a1,128
   17c16:	8522                	mv	a0,s0
   17c18:	e26f90ef          	jal	1123e <_malloc_r>
   17c1c:	10a42c23          	sw	a0,280(s0)
   17c20:	c909                	beqz	a0,17c32 <_init_signal+0x3a>
   17c22:	08050793          	addi	a5,a0,128
   17c26:	00052023          	sw	zero,0(a0)
   17c2a:	0511                	addi	a0,a0,4
   17c2c:	fef51de3          	bne	a0,a5,17c26 <_init_signal+0x2e>
   17c30:	bfe1                	j	17c08 <_init_signal+0x10>
   17c32:	557d                	li	a0,-1
   17c34:	bfd9                	j	17c0a <_init_signal+0x12>

00017c36 <__sigtramp>:
   17c36:	1141                	addi	sp,sp,-16
   17c38:	c226                	sw	s1,4(sp)
   17c3a:	c606                	sw	ra,12(sp)
   17c3c:	47fd                	li	a5,31
   17c3e:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   17c42:	06a7ee63          	bltu	a5,a0,17cbe <__sigtramp+0x88>
   17c46:	1184a783          	lw	a5,280(s1)
   17c4a:	c422                	sw	s0,8(sp)
   17c4c:	842a                	mv	s0,a0
   17c4e:	c7a9                	beqz	a5,17c98 <__sigtramp+0x62>
   17c50:	00241713          	slli	a4,s0,0x2
   17c54:	97ba                	add	a5,a5,a4
   17c56:	4398                	lw	a4,0(a5)
   17c58:	c30d                	beqz	a4,17c7a <__sigtramp+0x44>
   17c5a:	56fd                	li	a3,-1
   17c5c:	02d70b63          	beq	a4,a3,17c92 <__sigtramp+0x5c>
   17c60:	4685                	li	a3,1
   17c62:	02d70263          	beq	a4,a3,17c86 <__sigtramp+0x50>
   17c66:	8522                	mv	a0,s0
   17c68:	0007a023          	sw	zero,0(a5)
   17c6c:	9702                	jalr	a4
   17c6e:	4422                	lw	s0,8(sp)
   17c70:	4501                	li	a0,0
   17c72:	40b2                	lw	ra,12(sp)
   17c74:	4492                	lw	s1,4(sp)
   17c76:	0141                	addi	sp,sp,16
   17c78:	8082                	ret
   17c7a:	4422                	lw	s0,8(sp)
   17c7c:	40b2                	lw	ra,12(sp)
   17c7e:	4492                	lw	s1,4(sp)
   17c80:	4505                	li	a0,1
   17c82:	0141                	addi	sp,sp,16
   17c84:	8082                	ret
   17c86:	4422                	lw	s0,8(sp)
   17c88:	40b2                	lw	ra,12(sp)
   17c8a:	4492                	lw	s1,4(sp)
   17c8c:	450d                	li	a0,3
   17c8e:	0141                	addi	sp,sp,16
   17c90:	8082                	ret
   17c92:	4422                	lw	s0,8(sp)
   17c94:	4509                	li	a0,2
   17c96:	bff1                	j	17c72 <__sigtramp+0x3c>
   17c98:	08000593          	li	a1,128
   17c9c:	8526                	mv	a0,s1
   17c9e:	da0f90ef          	jal	1123e <_malloc_r>
   17ca2:	10a4ac23          	sw	a0,280(s1)
   17ca6:	87aa                	mv	a5,a0
   17ca8:	c911                	beqz	a0,17cbc <__sigtramp+0x86>
   17caa:	872a                	mv	a4,a0
   17cac:	08050693          	addi	a3,a0,128
   17cb0:	00072023          	sw	zero,0(a4)
   17cb4:	0711                	addi	a4,a4,4
   17cb6:	fee69de3          	bne	a3,a4,17cb0 <__sigtramp+0x7a>
   17cba:	bf59                	j	17c50 <__sigtramp+0x1a>
   17cbc:	4422                	lw	s0,8(sp)
   17cbe:	557d                	li	a0,-1
   17cc0:	bf4d                	j	17c72 <__sigtramp+0x3c>

00017cc2 <_kill_r>:
   17cc2:	1141                	addi	sp,sp,-16
   17cc4:	872e                	mv	a4,a1
   17cc6:	c422                	sw	s0,8(sp)
   17cc8:	c226                	sw	s1,4(sp)
   17cca:	842a                	mv	s0,a0
   17ccc:	85b2                	mv	a1,a2
   17cce:	853a                	mv	a0,a4
   17cd0:	c606                	sw	ra,12(sp)
   17cd2:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   17cd6:	28d9                	jal	17dac <_kill>
   17cd8:	57fd                	li	a5,-1
   17cda:	00f50763          	beq	a0,a5,17ce8 <_kill_r+0x26>
   17cde:	40b2                	lw	ra,12(sp)
   17ce0:	4422                	lw	s0,8(sp)
   17ce2:	4492                	lw	s1,4(sp)
   17ce4:	0141                	addi	sp,sp,16
   17ce6:	8082                	ret
   17ce8:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   17cec:	dbed                	beqz	a5,17cde <_kill_r+0x1c>
   17cee:	40b2                	lw	ra,12(sp)
   17cf0:	c01c                	sw	a5,0(s0)
   17cf2:	4422                	lw	s0,8(sp)
   17cf4:	4492                	lw	s1,4(sp)
   17cf6:	0141                	addi	sp,sp,16
   17cf8:	8082                	ret

00017cfa <_getpid_r>:
   17cfa:	a069                	j	17d84 <_getpid>

00017cfc <_close>:
   17cfc:	1141                	addi	sp,sp,-16
   17cfe:	c606                	sw	ra,12(sp)
   17d00:	c422                	sw	s0,8(sp)
   17d02:	03900893          	li	a7,57
   17d06:	00000073          	ecall
   17d0a:	842a                	mv	s0,a0
   17d0c:	00054763          	bltz	a0,17d1a <_close+0x1e>
   17d10:	40b2                	lw	ra,12(sp)
   17d12:	8522                	mv	a0,s0
   17d14:	4422                	lw	s0,8(sp)
   17d16:	0141                	addi	sp,sp,16
   17d18:	8082                	ret
   17d1a:	40800433          	neg	s0,s0
   17d1e:	c63ff0ef          	jal	17980 <__errno>
   17d22:	c100                	sw	s0,0(a0)
   17d24:	547d                	li	s0,-1
   17d26:	b7ed                	j	17d10 <_close+0x14>

00017d28 <_exit>:
   17d28:	05d00893          	li	a7,93
   17d2c:	00000073          	ecall
   17d30:	00054363          	bltz	a0,17d36 <_exit+0xe>
   17d34:	a001                	j	17d34 <_exit+0xc>
   17d36:	1141                	addi	sp,sp,-16
   17d38:	c422                	sw	s0,8(sp)
   17d3a:	842a                	mv	s0,a0
   17d3c:	c606                	sw	ra,12(sp)
   17d3e:	40800433          	neg	s0,s0
   17d42:	c3fff0ef          	jal	17980 <__errno>
   17d46:	c100                	sw	s0,0(a0)
   17d48:	a001                	j	17d48 <_exit+0x20>

00017d4a <_fstat>:
   17d4a:	7175                	addi	sp,sp,-144
   17d4c:	c326                	sw	s1,132(sp)
   17d4e:	c706                	sw	ra,140(sp)
   17d50:	84ae                	mv	s1,a1
   17d52:	c522                	sw	s0,136(sp)
   17d54:	05000893          	li	a7,80
   17d58:	858a                	mv	a1,sp
   17d5a:	00000073          	ecall
   17d5e:	842a                	mv	s0,a0
   17d60:	00054b63          	bltz	a0,17d76 <_fstat+0x2c>
   17d64:	8526                	mv	a0,s1
   17d66:	858a                	mv	a1,sp
   17d68:	2a05                	jal	17e98 <_conv_stat>
   17d6a:	40ba                	lw	ra,140(sp)
   17d6c:	8522                	mv	a0,s0
   17d6e:	442a                	lw	s0,136(sp)
   17d70:	449a                	lw	s1,132(sp)
   17d72:	6149                	addi	sp,sp,144
   17d74:	8082                	ret
   17d76:	40800433          	neg	s0,s0
   17d7a:	c07ff0ef          	jal	17980 <__errno>
   17d7e:	c100                	sw	s0,0(a0)
   17d80:	547d                	li	s0,-1
   17d82:	b7cd                	j	17d64 <_fstat+0x1a>

00017d84 <_getpid>:
   17d84:	4505                	li	a0,1
   17d86:	8082                	ret

00017d88 <_isatty>:
   17d88:	7159                	addi	sp,sp,-112
   17d8a:	002c                	addi	a1,sp,8
   17d8c:	d686                	sw	ra,108(sp)
   17d8e:	fbdff0ef          	jal	17d4a <_fstat>
   17d92:	57fd                	li	a5,-1
   17d94:	00f50863          	beq	a0,a5,17da4 <_isatty+0x1c>
   17d98:	4532                	lw	a0,12(sp)
   17d9a:	50b6                	lw	ra,108(sp)
   17d9c:	8135                	srli	a0,a0,0xd
   17d9e:	8905                	andi	a0,a0,1
   17da0:	6165                	addi	sp,sp,112
   17da2:	8082                	ret
   17da4:	50b6                	lw	ra,108(sp)
   17da6:	4501                	li	a0,0
   17da8:	6165                	addi	sp,sp,112
   17daa:	8082                	ret

00017dac <_kill>:
   17dac:	1141                	addi	sp,sp,-16
   17dae:	c606                	sw	ra,12(sp)
   17db0:	bd1ff0ef          	jal	17980 <__errno>
   17db4:	40b2                	lw	ra,12(sp)
   17db6:	47d9                	li	a5,22
   17db8:	c11c                	sw	a5,0(a0)
   17dba:	557d                	li	a0,-1
   17dbc:	0141                	addi	sp,sp,16
   17dbe:	8082                	ret

00017dc0 <_lseek>:
   17dc0:	1141                	addi	sp,sp,-16
   17dc2:	c606                	sw	ra,12(sp)
   17dc4:	c422                	sw	s0,8(sp)
   17dc6:	03e00893          	li	a7,62
   17dca:	00000073          	ecall
   17dce:	842a                	mv	s0,a0
   17dd0:	00054763          	bltz	a0,17dde <_lseek+0x1e>
   17dd4:	40b2                	lw	ra,12(sp)
   17dd6:	8522                	mv	a0,s0
   17dd8:	4422                	lw	s0,8(sp)
   17dda:	0141                	addi	sp,sp,16
   17ddc:	8082                	ret
   17dde:	40800433          	neg	s0,s0
   17de2:	b9fff0ef          	jal	17980 <__errno>
   17de6:	c100                	sw	s0,0(a0)
   17de8:	547d                	li	s0,-1
   17dea:	b7ed                	j	17dd4 <_lseek+0x14>

00017dec <_read>:
   17dec:	1141                	addi	sp,sp,-16
   17dee:	c606                	sw	ra,12(sp)
   17df0:	c422                	sw	s0,8(sp)
   17df2:	03f00893          	li	a7,63
   17df6:	00000073          	ecall
   17dfa:	842a                	mv	s0,a0
   17dfc:	00054763          	bltz	a0,17e0a <_read+0x1e>
   17e00:	40b2                	lw	ra,12(sp)
   17e02:	8522                	mv	a0,s0
   17e04:	4422                	lw	s0,8(sp)
   17e06:	0141                	addi	sp,sp,16
   17e08:	8082                	ret
   17e0a:	40800433          	neg	s0,s0
   17e0e:	b73ff0ef          	jal	17980 <__errno>
   17e12:	c100                	sw	s0,0(a0)
   17e14:	547d                	li	s0,-1
   17e16:	b7ed                	j	17e00 <_read+0x14>

00017e18 <_sbrk>:
   17e18:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17e1c:	1141                	addi	sp,sp,-16
   17e1e:	c606                	sw	ra,12(sp)
   17e20:	87aa                	mv	a5,a0
   17e22:	ef01                	bnez	a4,17e3a <_sbrk+0x22>
   17e24:	0d600893          	li	a7,214
   17e28:	4501                	li	a0,0
   17e2a:	00000073          	ecall
   17e2e:	567d                	li	a2,-1
   17e30:	872a                	mv	a4,a0
   17e32:	02c50563          	beq	a0,a2,17e5c <_sbrk+0x44>
   17e36:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17e3a:	0d600893          	li	a7,214
   17e3e:	00e78533          	add	a0,a5,a4
   17e42:	00000073          	ecall
   17e46:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17e4a:	97ba                	add	a5,a5,a4
   17e4c:	00f51863          	bne	a0,a5,17e5c <_sbrk+0x44>
   17e50:	40b2                	lw	ra,12(sp)
   17e52:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17e56:	853a                	mv	a0,a4
   17e58:	0141                	addi	sp,sp,16
   17e5a:	8082                	ret
   17e5c:	b25ff0ef          	jal	17980 <__errno>
   17e60:	40b2                	lw	ra,12(sp)
   17e62:	47b1                	li	a5,12
   17e64:	c11c                	sw	a5,0(a0)
   17e66:	557d                	li	a0,-1
   17e68:	0141                	addi	sp,sp,16
   17e6a:	8082                	ret

00017e6c <_write>:
   17e6c:	1141                	addi	sp,sp,-16
   17e6e:	c606                	sw	ra,12(sp)
   17e70:	c422                	sw	s0,8(sp)
   17e72:	04000893          	li	a7,64
   17e76:	00000073          	ecall
   17e7a:	842a                	mv	s0,a0
   17e7c:	00054763          	bltz	a0,17e8a <_write+0x1e>
   17e80:	40b2                	lw	ra,12(sp)
   17e82:	8522                	mv	a0,s0
   17e84:	4422                	lw	s0,8(sp)
   17e86:	0141                	addi	sp,sp,16
   17e88:	8082                	ret
   17e8a:	40800433          	neg	s0,s0
   17e8e:	af3ff0ef          	jal	17980 <__errno>
   17e92:	c100                	sw	s0,0(a0)
   17e94:	547d                	li	s0,-1
   17e96:	b7ed                	j	17e80 <_write+0x14>

00017e98 <_conv_stat>:
   17e98:	0185d703          	lhu	a4,24(a1)
   17e9c:	0145d783          	lhu	a5,20(a1)
   17ea0:	1141                	addi	sp,sp,-16
   17ea2:	01c5a283          	lw	t0,28(a1)
   17ea6:	0205af83          	lw	t6,32(a1)
   17eaa:	0305af03          	lw	t5,48(a1)
   17eae:	0405ae83          	lw	t4,64(a1)
   17eb2:	0385ae03          	lw	t3,56(a1)
   17eb6:	0485a303          	lw	t1,72(a1)
   17eba:	04c5a383          	lw	t2,76(a1)
   17ebe:	0585a803          	lw	a6,88(a1)
   17ec2:	05c5a883          	lw	a7,92(a1)
   17ec6:	c622                	sw	s0,12(sp)
   17ec8:	c426                	sw	s1,8(sp)
   17eca:	4980                	lw	s0,16(a1)
   17ecc:	4584                	lw	s1,8(a1)
   17ece:	c24a                	sw	s2,4(sp)
   17ed0:	0005a903          	lw	s2,0(a1)
   17ed4:	55b0                	lw	a2,104(a1)
   17ed6:	0742                	slli	a4,a4,0x10
   17ed8:	8fd9                	or	a5,a5,a4
   17eda:	55f4                	lw	a3,108(a1)
   17edc:	01251023          	sh	s2,0(a0)
   17ee0:	00951123          	sh	s1,2(a0)
   17ee4:	c140                	sw	s0,4(a0)
   17ee6:	c51c                	sw	a5,8(a0)
   17ee8:	00551623          	sh	t0,12(a0)
   17eec:	01f51723          	sh	t6,14(a0)
   17ef0:	01e52823          	sw	t5,16(a0)
   17ef4:	05d52623          	sw	t4,76(a0)
   17ef8:	05c52423          	sw	t3,72(a0)
   17efc:	00652c23          	sw	t1,24(a0)
   17f00:	00752e23          	sw	t2,28(a0)
   17f04:	03052423          	sw	a6,40(a0)
   17f08:	03152623          	sw	a7,44(a0)
   17f0c:	dd10                	sw	a2,56(a0)
   17f0e:	4432                	lw	s0,12(sp)
   17f10:	dd54                	sw	a3,60(a0)
   17f12:	44a2                	lw	s1,8(sp)
   17f14:	4912                	lw	s2,4(sp)
   17f16:	0141                	addi	sp,sp,16
   17f18:	8082                	ret

00017f1a <__eqtf2>:
   17f1a:	411c                	lw	a5,0(a0)
   17f1c:	00452e03          	lw	t3,4(a0)
   17f20:	00852e83          	lw	t4,8(a0)
   17f24:	4554                	lw	a3,12(a0)
   17f26:	4198                	lw	a4,0(a1)
   17f28:	0045af83          	lw	t6,4(a1)
   17f2c:	0085af03          	lw	t5,8(a1)
   17f30:	00c5a883          	lw	a7,12(a1)
   17f34:	1141                	addi	sp,sp,-16
   17f36:	00202673          	frrm	a2
   17f3a:	6521                	lui	a0,0x8
   17f3c:	0106d613          	srli	a2,a3,0x10
   17f40:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17f42:	01069313          	slli	t1,a3,0x10
   17f46:	01089593          	slli	a1,a7,0x10
   17f4a:	01f6d813          	srli	a6,a3,0x1f
   17f4e:	8e69                	and	a2,a2,a0
   17f50:	0108d693          	srli	a3,a7,0x10
   17f54:	01035313          	srli	t1,t1,0x10
   17f58:	81c1                	srli	a1,a1,0x10
   17f5a:	8ee9                	and	a3,a3,a0
   17f5c:	01f8d893          	srli	a7,a7,0x1f
   17f60:	00a61c63          	bne	a2,a0,17f78 <__eqtf2+0x5e>
   17f64:	01c7e533          	or	a0,a5,t3
   17f68:	01d56533          	or	a0,a0,t4
   17f6c:	00656533          	or	a0,a0,t1
   17f70:	e51d                	bnez	a0,17f9e <__eqtf2+0x84>
   17f72:	04c69b63          	bne	a3,a2,17fc8 <__eqtf2+0xae>
   17f76:	a019                	j	17f7c <__eqtf2+0x62>
   17f78:	04a69a63          	bne	a3,a0,17fcc <__eqtf2+0xb2>
   17f7c:	01f76533          	or	a0,a4,t6
   17f80:	01e56533          	or	a0,a0,t5
   17f84:	8d4d                	or	a0,a0,a1
   17f86:	c139                	beqz	a0,17fcc <__eqtf2+0xb2>
   17f88:	6521                	lui	a0,0x8
   17f8a:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17f8c:	02a61a63          	bne	a2,a0,17fc0 <__eqtf2+0xa6>
   17f90:	01c7e7b3          	or	a5,a5,t3
   17f94:	01d7e7b3          	or	a5,a5,t4
   17f98:	0067e7b3          	or	a5,a5,t1
   17f9c:	cb99                	beqz	a5,17fb2 <__eqtf2+0x98>
   17f9e:	0342                	slli	t1,t1,0x10
   17fa0:	41035313          	srai	t1,t1,0x10
   17fa4:	04035c63          	bgez	t1,17ffc <__eqtf2+0xe2>
   17fa8:	67a1                	lui	a5,0x8
   17faa:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   17fac:	4505                	li	a0,1
   17fae:	04f69563          	bne	a3,a5,17ff8 <__eqtf2+0xde>
   17fb2:	01f76733          	or	a4,a4,t6
   17fb6:	01e76733          	or	a4,a4,t5
   17fba:	8f4d                	or	a4,a4,a1
   17fbc:	4505                	li	a0,1
   17fbe:	cf0d                	beqz	a4,17ff8 <__eqtf2+0xde>
   17fc0:	05c2                	slli	a1,a1,0x10
   17fc2:	85c1                	srai	a1,a1,0x10
   17fc4:	0205dc63          	bgez	a1,17ffc <__eqtf2+0xe2>
   17fc8:	4505                	li	a0,1
   17fca:	a03d                	j	17ff8 <__eqtf2+0xde>
   17fcc:	4505                	li	a0,1
   17fce:	02c69563          	bne	a3,a2,17ff8 <__eqtf2+0xde>
   17fd2:	02e79363          	bne	a5,a4,17ff8 <__eqtf2+0xde>
   17fd6:	03fe1163          	bne	t3,t6,17ff8 <__eqtf2+0xde>
   17fda:	01ee9f63          	bne	t4,t5,17ff8 <__eqtf2+0xde>
   17fde:	00b31d63          	bne	t1,a1,17ff8 <__eqtf2+0xde>
   17fe2:	03180063          	beq	a6,a7,18002 <__eqtf2+0xe8>
   17fe6:	ea89                	bnez	a3,17ff8 <__eqtf2+0xde>
   17fe8:	01c7e533          	or	a0,a5,t3
   17fec:	01d56533          	or	a0,a0,t4
   17ff0:	00656533          	or	a0,a0,t1
   17ff4:	00a03533          	snez	a0,a0
   17ff8:	0141                	addi	sp,sp,16
   17ffa:	8082                	ret
   17ffc:	00186073          	csrsi	fflags,16
   18000:	b7e1                	j	17fc8 <__eqtf2+0xae>
   18002:	4501                	li	a0,0
   18004:	bfd5                	j	17ff8 <__eqtf2+0xde>

00018006 <__getf2>:
   18006:	00052883          	lw	a7,0(a0)
   1800a:	00452303          	lw	t1,4(a0)
   1800e:	00852e03          	lw	t3,8(a0)
   18012:	455c                	lw	a5,12(a0)
   18014:	0005ae83          	lw	t4,0(a1)
   18018:	0045af03          	lw	t5,4(a1)
   1801c:	0085af83          	lw	t6,8(a1)
   18020:	45d4                	lw	a3,12(a1)
   18022:	1141                	addi	sp,sp,-16
   18024:	00202773          	frrm	a4
   18028:	6721                	lui	a4,0x8
   1802a:	0107d613          	srli	a2,a5,0x10
   1802e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18030:	01079813          	slli	a6,a5,0x10
   18034:	01069293          	slli	t0,a3,0x10
   18038:	0106d513          	srli	a0,a3,0x10
   1803c:	8e79                	and	a2,a2,a4
   1803e:	01085813          	srli	a6,a6,0x10
   18042:	83fd                	srli	a5,a5,0x1f
   18044:	0102d293          	srli	t0,t0,0x10
   18048:	8d79                	and	a0,a0,a4
   1804a:	82fd                	srli	a3,a3,0x1f
   1804c:	00e61963          	bne	a2,a4,1805e <__getf2+0x58>
   18050:	01136733          	or	a4,t1,a7
   18054:	01c76733          	or	a4,a4,t3
   18058:	01076733          	or	a4,a4,a6
   1805c:	ef35                	bnez	a4,180d8 <__getf2+0xd2>
   1805e:	6721                	lui	a4,0x8
   18060:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18062:	00e51963          	bne	a0,a4,18074 <__getf2+0x6e>
   18066:	01eee733          	or	a4,t4,t5
   1806a:	01f76733          	or	a4,a4,t6
   1806e:	00576733          	or	a4,a4,t0
   18072:	e33d                	bnez	a4,180d8 <__getf2+0xd2>
   18074:	4701                	li	a4,0
   18076:	ea09                	bnez	a2,18088 <__getf2+0x82>
   18078:	01136733          	or	a4,t1,a7
   1807c:	01c76733          	or	a4,a4,t3
   18080:	01076733          	or	a4,a4,a6
   18084:	00173713          	seqz	a4,a4
   18088:	ed21                	bnez	a0,180e0 <__getf2+0xda>
   1808a:	01eee5b3          	or	a1,t4,t5
   1808e:	01f5e5b3          	or	a1,a1,t6
   18092:	0055e5b3          	or	a1,a1,t0
   18096:	c711                	beqz	a4,180a2 <__getf2+0x9c>
   18098:	c981                	beqz	a1,180a8 <__getf2+0xa2>
   1809a:	4505                	li	a0,1
   1809c:	e691                	bnez	a3,180a8 <__getf2+0xa2>
   1809e:	557d                	li	a0,-1
   180a0:	a021                	j	180a8 <__getf2+0xa2>
   180a2:	e1a1                	bnez	a1,180e2 <__getf2+0xdc>
   180a4:	557d                	li	a0,-1
   180a6:	c7a1                	beqz	a5,180ee <__getf2+0xe8>
   180a8:	0141                	addi	sp,sp,16
   180aa:	8082                	ret
   180ac:	fea647e3          	blt	a2,a0,1809a <__getf2+0x94>
   180b0:	ff02eae3          	bltu	t0,a6,180a4 <__getf2+0x9e>
   180b4:	00581f63          	bne	a6,t0,180d2 <__getf2+0xcc>
   180b8:	ffcfe6e3          	bltu	t6,t3,180a4 <__getf2+0x9e>
   180bc:	01fe1b63          	bne	t3,t6,180d2 <__getf2+0xcc>
   180c0:	fe6f62e3          	bltu	t5,t1,180a4 <__getf2+0x9e>
   180c4:	01e31763          	bne	t1,t5,180d2 <__getf2+0xcc>
   180c8:	fd1eeee3          	bltu	t4,a7,180a4 <__getf2+0x9e>
   180cc:	4501                	li	a0,0
   180ce:	fdd8fde3          	bgeu	a7,t4,180a8 <__getf2+0xa2>
   180d2:	4505                	li	a0,1
   180d4:	fbf1                	bnez	a5,180a8 <__getf2+0xa2>
   180d6:	b7e1                	j	1809e <__getf2+0x98>
   180d8:	00186073          	csrsi	fflags,16
   180dc:	5579                	li	a0,-2
   180de:	b7e9                	j	180a8 <__getf2+0xa2>
   180e0:	ff4d                	bnez	a4,1809a <__getf2+0x94>
   180e2:	fcf691e3          	bne	a3,a5,180a4 <__getf2+0x9e>
   180e6:	fcc553e3          	bge	a0,a2,180ac <__getf2+0xa6>
   180ea:	557d                	li	a0,-1
   180ec:	fed5                	bnez	a3,180a8 <__getf2+0xa2>
   180ee:	4505                	li	a0,1
   180f0:	bf65                	j	180a8 <__getf2+0xa2>

000180f2 <__letf2>:
   180f2:	00052883          	lw	a7,0(a0)
   180f6:	00452303          	lw	t1,4(a0)
   180fa:	00852e03          	lw	t3,8(a0)
   180fe:	455c                	lw	a5,12(a0)
   18100:	0005ae83          	lw	t4,0(a1)
   18104:	0045af03          	lw	t5,4(a1)
   18108:	0085af83          	lw	t6,8(a1)
   1810c:	45d4                	lw	a3,12(a1)
   1810e:	1141                	addi	sp,sp,-16
   18110:	00202773          	frrm	a4
   18114:	6721                	lui	a4,0x8
   18116:	0107d613          	srli	a2,a5,0x10
   1811a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1811c:	01079813          	slli	a6,a5,0x10
   18120:	01069293          	slli	t0,a3,0x10
   18124:	0106d513          	srli	a0,a3,0x10
   18128:	8e79                	and	a2,a2,a4
   1812a:	01085813          	srli	a6,a6,0x10
   1812e:	83fd                	srli	a5,a5,0x1f
   18130:	0102d293          	srli	t0,t0,0x10
   18134:	8d79                	and	a0,a0,a4
   18136:	82fd                	srli	a3,a3,0x1f
   18138:	00e61963          	bne	a2,a4,1814a <__letf2+0x58>
   1813c:	01136733          	or	a4,t1,a7
   18140:	01c76733          	or	a4,a4,t3
   18144:	01076733          	or	a4,a4,a6
   18148:	ef35                	bnez	a4,181c4 <__letf2+0xd2>
   1814a:	6721                	lui	a4,0x8
   1814c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1814e:	00e51963          	bne	a0,a4,18160 <__letf2+0x6e>
   18152:	01eee733          	or	a4,t4,t5
   18156:	01f76733          	or	a4,a4,t6
   1815a:	00576733          	or	a4,a4,t0
   1815e:	e33d                	bnez	a4,181c4 <__letf2+0xd2>
   18160:	4701                	li	a4,0
   18162:	ea09                	bnez	a2,18174 <__letf2+0x82>
   18164:	01136733          	or	a4,t1,a7
   18168:	01c76733          	or	a4,a4,t3
   1816c:	01076733          	or	a4,a4,a6
   18170:	00173713          	seqz	a4,a4
   18174:	ed21                	bnez	a0,181cc <__letf2+0xda>
   18176:	01eee5b3          	or	a1,t4,t5
   1817a:	01f5e5b3          	or	a1,a1,t6
   1817e:	0055e5b3          	or	a1,a1,t0
   18182:	c711                	beqz	a4,1818e <__letf2+0x9c>
   18184:	c981                	beqz	a1,18194 <__letf2+0xa2>
   18186:	4505                	li	a0,1
   18188:	e691                	bnez	a3,18194 <__letf2+0xa2>
   1818a:	557d                	li	a0,-1
   1818c:	a021                	j	18194 <__letf2+0xa2>
   1818e:	e1a1                	bnez	a1,181ce <__letf2+0xdc>
   18190:	557d                	li	a0,-1
   18192:	c7a1                	beqz	a5,181da <__letf2+0xe8>
   18194:	0141                	addi	sp,sp,16
   18196:	8082                	ret
   18198:	fea647e3          	blt	a2,a0,18186 <__letf2+0x94>
   1819c:	ff02eae3          	bltu	t0,a6,18190 <__letf2+0x9e>
   181a0:	00581f63          	bne	a6,t0,181be <__letf2+0xcc>
   181a4:	ffcfe6e3          	bltu	t6,t3,18190 <__letf2+0x9e>
   181a8:	01fe1b63          	bne	t3,t6,181be <__letf2+0xcc>
   181ac:	fe6f62e3          	bltu	t5,t1,18190 <__letf2+0x9e>
   181b0:	01e31763          	bne	t1,t5,181be <__letf2+0xcc>
   181b4:	fd1eeee3          	bltu	t4,a7,18190 <__letf2+0x9e>
   181b8:	4501                	li	a0,0
   181ba:	fdd8fde3          	bgeu	a7,t4,18194 <__letf2+0xa2>
   181be:	4505                	li	a0,1
   181c0:	fbf1                	bnez	a5,18194 <__letf2+0xa2>
   181c2:	b7e1                	j	1818a <__letf2+0x98>
   181c4:	00186073          	csrsi	fflags,16
   181c8:	4509                	li	a0,2
   181ca:	b7e9                	j	18194 <__letf2+0xa2>
   181cc:	ff4d                	bnez	a4,18186 <__letf2+0x94>
   181ce:	fcf691e3          	bne	a3,a5,18190 <__letf2+0x9e>
   181d2:	fcc553e3          	bge	a0,a2,18198 <__letf2+0xa6>
   181d6:	557d                	li	a0,-1
   181d8:	fed5                	bnez	a3,18194 <__letf2+0xa2>
   181da:	4505                	li	a0,1
   181dc:	bf65                	j	18194 <__letf2+0xa2>

000181de <__multf3>:
   181de:	7131                	addi	sp,sp,-192
   181e0:	d552                	sw	s4,168(sp)
   181e2:	d356                	sw	s5,164(sp)
   181e4:	d15a                	sw	s6,160(sp)
   181e6:	cf5e                	sw	s7,156(sp)
   181e8:	c62a                	sw	a0,12(sp)
   181ea:	419c                	lw	a5,0(a1)
   181ec:	41c8                	lw	a0,4(a1)
   181ee:	4594                	lw	a3,8(a1)
   181f0:	45d8                	lw	a4,12(a1)
   181f2:	00062a83          	lw	s5,0(a2)
   181f6:	00462b83          	lw	s7,4(a2)
   181fa:	00862b03          	lw	s6,8(a2)
   181fe:	00c62a03          	lw	s4,12(a2)
   18202:	df06                	sw	ra,188(sp)
   18204:	dd22                	sw	s0,184(sp)
   18206:	db26                	sw	s1,180(sp)
   18208:	d94a                	sw	s2,176(sp)
   1820a:	d74e                	sw	s3,172(sp)
   1820c:	cd62                	sw	s8,152(sp)
   1820e:	cb66                	sw	s9,148(sp)
   18210:	c96a                	sw	s10,144(sp)
   18212:	c76e                	sw	s11,140(sp)
   18214:	002024f3          	frrm	s1
   18218:	6621                	lui	a2,0x8
   1821a:	01071413          	slli	s0,a4,0x10
   1821e:	8041                	srli	s0,s0,0x10
   18220:	01075913          	srli	s2,a4,0x10
   18224:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   18226:	d0be                	sw	a5,96(sp)
   18228:	d2aa                	sw	a0,100(sp)
   1822a:	d4b6                	sw	a3,104(sp)
   1822c:	d6ba                	sw	a4,108(sp)
   1822e:	d83e                	sw	a5,48(sp)
   18230:	da2a                	sw	a0,52(sp)
   18232:	dc36                	sw	a3,56(sp)
   18234:	de22                	sw	s0,60(sp)
   18236:	00c97933          	and	s2,s2,a2
   1823a:	01f75993          	srli	s3,a4,0x1f
   1823e:	02090a63          	beqz	s2,18272 <__multf3+0x94>
   18242:	10c90d63          	beq	s2,a2,1835c <__multf3+0x17e>
   18246:	6741                	lui	a4,0x10
   18248:	8c59                	or	s0,s0,a4
   1824a:	de22                	sw	s0,60(sp)
   1824c:	1818                	addi	a4,sp,48
   1824e:	104c                	addi	a1,sp,36
   18250:	4754                	lw	a3,12(a4)
   18252:	4710                	lw	a2,8(a4)
   18254:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   18256:	068e                	slli	a3,a3,0x3
   18258:	8275                	srli	a2,a2,0x1d
   1825a:	8ed1                	or	a3,a3,a2
   1825c:	cb14                	sw	a3,16(a4)
   1825e:	fee599e3          	bne	a1,a4,18250 <__multf3+0x72>
   18262:	078e                	slli	a5,a5,0x3
   18264:	d83e                	sw	a5,48(sp)
   18266:	77f1                	lui	a5,0xffffc
   18268:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   1826a:	993e                	add	s2,s2,a5
   1826c:	4c01                	li	s8,0
   1826e:	4401                	li	s0,0
   18270:	a211                	j	18374 <__multf3+0x196>
   18272:	00a7e733          	or	a4,a5,a0
   18276:	8f55                	or	a4,a4,a3
   18278:	8f41                	or	a4,a4,s0
   1827a:	70070d63          	beqz	a4,18994 <__multf3+0x7b6>
   1827e:	cc2d                	beqz	s0,182f8 <__multf3+0x11a>
   18280:	8522                	mv	a0,s0
   18282:	108020ef          	jal	1a38a <__clzsi2>
   18286:	ff450693          	addi	a3,a0,-12
   1828a:	4056d793          	srai	a5,a3,0x5
   1828e:	8afd                	andi	a3,a3,31
   18290:	c6d9                	beqz	a3,1831e <__multf3+0x140>
   18292:	5671                	li	a2,-4
   18294:	02c78633          	mul	a2,a5,a2
   18298:	02000813          	li	a6,32
   1829c:	03010313          	addi	t1,sp,48
   182a0:	40d80833          	sub	a6,a6,a3
   182a4:	00c60713          	addi	a4,a2,12
   182a8:	971a                	add	a4,a4,t1
   182aa:	40c00633          	neg	a2,a2
   182ae:	08e31863          	bne	t1,a4,1833e <__multf3+0x160>
   182b2:	fff78713          	addi	a4,a5,-1
   182b6:	078a                	slli	a5,a5,0x2
   182b8:	1810                	addi	a2,sp,48
   182ba:	05078793          	addi	a5,a5,80
   182be:	97b2                	add	a5,a5,a2
   182c0:	5642                	lw	a2,48(sp)
   182c2:	00d616b3          	sll	a3,a2,a3
   182c6:	fad7a823          	sw	a3,-80(a5)
   182ca:	00170793          	addi	a5,a4,1
   182ce:	078a                	slli	a5,a5,0x2
   182d0:	46a1                	li	a3,8
   182d2:	1818                	addi	a4,sp,48
   182d4:	00d7e863          	bltu	a5,a3,182e4 <__multf3+0x106>
   182d8:	00072023          	sw	zero,0(a4)
   182dc:	00072223          	sw	zero,4(a4)
   182e0:	17e1                	addi	a5,a5,-8
   182e2:	1838                	addi	a4,sp,56
   182e4:	4691                	li	a3,4
   182e6:	00d7e463          	bltu	a5,a3,182ee <__multf3+0x110>
   182ea:	00072023          	sw	zero,0(a4)
   182ee:	7971                	lui	s2,0xffffc
   182f0:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   182f2:	40a90933          	sub	s2,s2,a0
   182f6:	bf9d                	j	1826c <__multf3+0x8e>
   182f8:	c699                	beqz	a3,18306 <__multf3+0x128>
   182fa:	8536                	mv	a0,a3
   182fc:	08e020ef          	jal	1a38a <__clzsi2>
   18300:	02050513          	addi	a0,a0,32
   18304:	b749                	j	18286 <__multf3+0xa8>
   18306:	c511                	beqz	a0,18312 <__multf3+0x134>
   18308:	082020ef          	jal	1a38a <__clzsi2>
   1830c:	04050513          	addi	a0,a0,64
   18310:	bf9d                	j	18286 <__multf3+0xa8>
   18312:	853e                	mv	a0,a5
   18314:	076020ef          	jal	1a38a <__clzsi2>
   18318:	06050513          	addi	a0,a0,96
   1831c:	b7ad                	j	18286 <__multf3+0xa8>
   1831e:	5671                	li	a2,-4
   18320:	02c78633          	mul	a2,a5,a2
   18324:	1878                	addi	a4,sp,60
   18326:	468d                	li	a3,3
   18328:	00c705b3          	add	a1,a4,a2
   1832c:	418c                	lw	a1,0(a1)
   1832e:	16fd                	addi	a3,a3,-1
   18330:	1771                	addi	a4,a4,-4
   18332:	c34c                	sw	a1,4(a4)
   18334:	fef6dae3          	bge	a3,a5,18328 <__multf3+0x14a>
   18338:	fff78713          	addi	a4,a5,-1
   1833c:	b779                	j	182ca <__multf3+0xec>
   1833e:	430c                	lw	a1,0(a4)
   18340:	ffc72883          	lw	a7,-4(a4)
   18344:	00c70e33          	add	t3,a4,a2
   18348:	00d595b3          	sll	a1,a1,a3
   1834c:	0108d8b3          	srl	a7,a7,a6
   18350:	0115e5b3          	or	a1,a1,a7
   18354:	00be2023          	sw	a1,0(t3)
   18358:	1771                	addi	a4,a4,-4
   1835a:	bf91                	j	182ae <__multf3+0xd0>
   1835c:	8fc9                	or	a5,a5,a0
   1835e:	8fd5                	or	a5,a5,a3
   18360:	8fc1                	or	a5,a5,s0
   18362:	62078c63          	beqz	a5,1899a <__multf3+0x7bc>
   18366:	0442                	slli	s0,s0,0x10
   18368:	8441                	srai	s0,s0,0x10
   1836a:	fff44413          	not	s0,s0
   1836e:	807d                	srli	s0,s0,0x1f
   18370:	0412                	slli	s0,s0,0x4
   18372:	4c0d                	li	s8,3
   18374:	010a1513          	slli	a0,s4,0x10
   18378:	6721                	lui	a4,0x8
   1837a:	010a5793          	srli	a5,s4,0x10
   1837e:	8141                	srli	a0,a0,0x10
   18380:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18382:	d6d2                	sw	s4,108(sp)
   18384:	d0d6                	sw	s5,96(sp)
   18386:	d2de                	sw	s7,100(sp)
   18388:	d4da                	sw	s6,104(sp)
   1838a:	c0d6                	sw	s5,64(sp)
   1838c:	c2de                	sw	s7,68(sp)
   1838e:	c4da                	sw	s6,72(sp)
   18390:	c6aa                	sw	a0,76(sp)
   18392:	8ff9                	and	a5,a5,a4
   18394:	01fa5a13          	srli	s4,s4,0x1f
   18398:	60078363          	beqz	a5,1899e <__multf3+0x7c0>
   1839c:	6ee78863          	beq	a5,a4,18a8c <__multf3+0x8ae>
   183a0:	6741                	lui	a4,0x10
   183a2:	8d59                	or	a0,a0,a4
   183a4:	c6aa                	sw	a0,76(sp)
   183a6:	0098                	addi	a4,sp,64
   183a8:	184c                	addi	a1,sp,52
   183aa:	4754                	lw	a3,12(a4)
   183ac:	4710                	lw	a2,8(a4)
   183ae:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   183b0:	068e                	slli	a3,a3,0x3
   183b2:	8275                	srli	a2,a2,0x1d
   183b4:	8ed1                	or	a3,a3,a2
   183b6:	cb14                	sw	a3,16(a4)
   183b8:	fee599e3          	bne	a1,a4,183aa <__multf3+0x1cc>
   183bc:	7771                	lui	a4,0xffffc
   183be:	0a8e                	slli	s5,s5,0x3
   183c0:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   183c2:	c0d6                	sw	s5,64(sp)
   183c4:	97ba                	add	a5,a5,a4
   183c6:	4681                	li	a3,0
   183c8:	97ca                	add	a5,a5,s2
   183ca:	ca3e                	sw	a5,20(sp)
   183cc:	0785                	addi	a5,a5,1
   183ce:	c83e                	sw	a5,16(sp)
   183d0:	002c1793          	slli	a5,s8,0x2
   183d4:	8fd5                	or	a5,a5,a3
   183d6:	4729                	li	a4,10
   183d8:	70f74363          	blt	a4,a5,18ade <__multf3+0x900>
   183dc:	4609                	li	a2,2
   183de:	0149c733          	xor	a4,s3,s4
   183e2:	6cf64863          	blt	a2,a5,18ab2 <__multf3+0x8d4>
   183e6:	17fd                	addi	a5,a5,-1
   183e8:	4605                	li	a2,1
   183ea:	70f67263          	bgeu	a2,a5,18aee <__multf3+0x910>
   183ee:	5542                	lw	a0,48(sp)
   183f0:	4306                	lw	t1,64(sp)
   183f2:	6841                	lui	a6,0x10
   183f4:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   183f8:	01055913          	srli	s2,a0,0x10
   183fc:	01035393          	srli	t2,t1,0x10
   18400:	8d6d                	and	a0,a0,a1
   18402:	00b37333          	and	t1,t1,a1
   18406:	02a30633          	mul	a2,t1,a0
   1840a:	026908b3          	mul	a7,s2,t1
   1840e:	01065793          	srli	a5,a2,0x10
   18412:	02a386b3          	mul	a3,t2,a0
   18416:	96c6                	add	a3,a3,a7
   18418:	97b6                	add	a5,a5,a3
   1841a:	02790bb3          	mul	s7,s2,t2
   1841e:	0117f363          	bgeu	a5,a7,18424 <__multf3+0x246>
   18422:	9bc2                	add	s7,s7,a6
   18424:	4896                	lw	a7,68(sp)
   18426:	0107d693          	srli	a3,a5,0x10
   1842a:	8fed                	and	a5,a5,a1
   1842c:	8e6d                	and	a2,a2,a1
   1842e:	07c2                	slli	a5,a5,0x10
   18430:	97b2                	add	a5,a5,a2
   18432:	0108df93          	srli	t6,a7,0x10
   18436:	00b8f8b3          	and	a7,a7,a1
   1843a:	031905b3          	mul	a1,s2,a7
   1843e:	d03e                	sw	a5,32(sp)
   18440:	d0be                	sw	a5,96(sp)
   18442:	02af8633          	mul	a2,t6,a0
   18446:	02a887b3          	mul	a5,a7,a0
   1844a:	962e                	add	a2,a2,a1
   1844c:	0107d813          	srli	a6,a5,0x10
   18450:	9832                	add	a6,a6,a2
   18452:	03f90b33          	mul	s6,s2,t6
   18456:	00b87463          	bgeu	a6,a1,1845e <__multf3+0x280>
   1845a:	6641                	lui	a2,0x10
   1845c:	9b32                	add	s6,s6,a2
   1845e:	01085613          	srli	a2,a6,0x10
   18462:	55d2                	lw	a1,52(sp)
   18464:	cc32                	sw	a2,24(sp)
   18466:	6641                	lui	a2,0x10
   18468:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   1846c:	01d87833          	and	a6,a6,t4
   18470:	01d7f7b3          	and	a5,a5,t4
   18474:	0105d293          	srli	t0,a1,0x10
   18478:	0842                	slli	a6,a6,0x10
   1847a:	01d5f5b3          	and	a1,a1,t4
   1847e:	983e                	add	a6,a6,a5
   18480:	02628a33          	mul	s4,t0,t1
   18484:	96c2                	add	a3,a3,a6
   18486:	026587b3          	mul	a5,a1,t1
   1848a:	02b38eb3          	mul	t4,t2,a1
   1848e:	0107d993          	srli	s3,a5,0x10
   18492:	9ed2                	add	t4,t4,s4
   18494:	99f6                	add	s3,s3,t4
   18496:	02538f33          	mul	t5,t2,t0
   1849a:	0149f363          	bgeu	s3,s4,184a0 <__multf3+0x2c2>
   1849e:	9f32                	add	t5,t5,a2
   184a0:	6c41                	lui	s8,0x10
   184a2:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   184a6:	8ff1                	and	a5,a5,a2
   184a8:	0109da13          	srli	s4,s3,0x10
   184ac:	00c9f9b3          	and	s3,s3,a2
   184b0:	09c2                	slli	s3,s3,0x10
   184b2:	99be                	add	s3,s3,a5
   184b4:	02b88eb3          	mul	t4,a7,a1
   184b8:	9a7a                	add	s4,s4,t5
   184ba:	03128633          	mul	a2,t0,a7
   184be:	010ed793          	srli	a5,t4,0x10
   184c2:	02bf8ab3          	mul	s5,t6,a1
   184c6:	9ab2                	add	s5,s5,a2
   184c8:	97d6                	add	a5,a5,s5
   184ca:	025f8f33          	mul	t5,t6,t0
   184ce:	00c7f363          	bgeu	a5,a2,184d4 <__multf3+0x2f6>
   184d2:	9f62                	add	t5,t5,s8
   184d4:	0107d613          	srli	a2,a5,0x10
   184d8:	967a                	add	a2,a2,t5
   184da:	6ac1                	lui	s5,0x10
   184dc:	ce32                	sw	a2,28(sp)
   184de:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   184e2:	8ff1                	and	a5,a5,a2
   184e4:	00cefeb3          	and	t4,t4,a2
   184e8:	07c2                	slli	a5,a5,0x10
   184ea:	97f6                	add	a5,a5,t4
   184ec:	d23e                	sw	a5,36(sp)
   184ee:	47a6                	lw	a5,72(sp)
   184f0:	0107dd93          	srli	s11,a5,0x10
   184f4:	00c7fd33          	and	s10,a5,a2
   184f8:	02ad0633          	mul	a2,s10,a0
   184fc:	03a90c33          	mul	s8,s2,s10
   18500:	01065793          	srli	a5,a2,0x10
   18504:	02ad8f33          	mul	t5,s11,a0
   18508:	9f62                	add	t5,t5,s8
   1850a:	97fa                	add	a5,a5,t5
   1850c:	03b90eb3          	mul	t4,s2,s11
   18510:	0187f363          	bgeu	a5,s8,18516 <__multf3+0x338>
   18514:	9ed6                	add	t4,t4,s5
   18516:	0107df13          	srli	t5,a5,0x10
   1851a:	6cc1                	lui	s9,0x10
   1851c:	01df0e33          	add	t3,t5,t4
   18520:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   18524:	01d7f7b3          	and	a5,a5,t4
   18528:	01d67633          	and	a2,a2,t4
   1852c:	07c2                	slli	a5,a5,0x10
   1852e:	97b2                	add	a5,a5,a2
   18530:	5662                	lw	a2,56(sp)
   18532:	d472                	sw	t3,40(sp)
   18534:	d63e                	sw	a5,44(sp)
   18536:	01065f13          	srli	t5,a2,0x10
   1853a:	01d67633          	and	a2,a2,t4
   1853e:	02660ab3          	mul	s5,a2,t1
   18542:	026f0e33          	mul	t3,t5,t1
   18546:	010ad793          	srli	a5,s5,0x10
   1854a:	02c38eb3          	mul	t4,t2,a2
   1854e:	9ef2                	add	t4,t4,t3
   18550:	9ebe                	add	t4,t4,a5
   18552:	03e38c33          	mul	s8,t2,t5
   18556:	01cef363          	bgeu	t4,t3,1855c <__multf3+0x37e>
   1855a:	9c66                	add	s8,s8,s9
   1855c:	47e2                	lw	a5,24(sp)
   1855e:	96de                	add	a3,a3,s7
   18560:	0106b833          	sltu	a6,a3,a6
   18564:	010edc93          	srli	s9,t4,0x10
   18568:	6e41                	lui	t3,0x10
   1856a:	9c66                	add	s8,s8,s9
   1856c:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   18570:	01078e33          	add	t3,a5,a6
   18574:	013687b3          	add	a5,a3,s3
   18578:	9e5a                	add	t3,t3,s6
   1857a:	00d7b6b3          	sltu	a3,a5,a3
   1857e:	cc3e                	sw	a5,24(sp)
   18580:	d2be                	sw	a5,100(sp)
   18582:	5792                	lw	a5,36(sp)
   18584:	9a72                	add	s4,s4,t3
   18586:	96d2                	add	a3,a3,s4
   18588:	01ca39b3          	sltu	s3,s4,t3
   1858c:	0146ba33          	sltu	s4,a3,s4
   18590:	010e3e33          	sltu	t3,t3,a6
   18594:	00f68833          	add	a6,a3,a5
   18598:	47f2                	lw	a5,28(sp)
   1859a:	0149e9b3          	or	s3,s3,s4
   1859e:	9e4e                	add	t3,t3,s3
   185a0:	00fe09b3          	add	s3,t3,a5
   185a4:	57b2                	lw	a5,44(sp)
   185a6:	5a22                	lw	s4,40(sp)
   185a8:	00d836b3          	sltu	a3,a6,a3
   185ac:	019efeb3          	and	t4,t4,s9
   185b0:	96ce                	add	a3,a3,s3
   185b2:	97c2                	add	a5,a5,a6
   185b4:	0ec2                	slli	t4,t4,0x10
   185b6:	019afab3          	and	s5,s5,s9
   185ba:	9a36                	add	s4,s4,a3
   185bc:	0107b833          	sltu	a6,a5,a6
   185c0:	9ed6                	add	t4,t4,s5
   185c2:	9ebe                	add	t4,t4,a5
   185c4:	9852                	add	a6,a6,s4
   185c6:	9c42                	add	s8,s8,a6
   185c8:	00feb7b3          	sltu	a5,t4,a5
   185cc:	ce76                	sw	t4,28(sp)
   185ce:	d4f6                	sw	t4,104(sp)
   185d0:	4eb6                	lw	t4,76(sp)
   185d2:	01c9be33          	sltu	t3,s3,t3
   185d6:	97e2                	add	a5,a5,s8
   185d8:	0136b9b3          	sltu	s3,a3,s3
   185dc:	00da36b3          	sltu	a3,s4,a3
   185e0:	01483a33          	sltu	s4,a6,s4
   185e4:	013e69b3          	or	s3,t3,s3
   185e8:	0146e6b3          	or	a3,a3,s4
   185ec:	010c3833          	sltu	a6,s8,a6
   185f0:	0187bc33          	sltu	s8,a5,s8
   185f4:	96ce                	add	a3,a3,s3
   185f6:	01886833          	or	a6,a6,s8
   185fa:	010ed993          	srli	s3,t4,0x10
   185fe:	019efeb3          	and	t4,t4,s9
   18602:	03d90a33          	mul	s4,s2,t4
   18606:	00d80e33          	add	t3,a6,a3
   1860a:	02ae86b3          	mul	a3,t4,a0
   1860e:	02a98533          	mul	a0,s3,a0
   18612:	0106d813          	srli	a6,a3,0x10
   18616:	9552                	add	a0,a0,s4
   18618:	982a                	add	a6,a6,a0
   1861a:	03390933          	mul	s2,s2,s3
   1861e:	01487463          	bgeu	a6,s4,18626 <__multf3+0x448>
   18622:	6541                	lui	a0,0x10
   18624:	992a                	add	s2,s2,a0
   18626:	01085513          	srli	a0,a6,0x10
   1862a:	954a                	add	a0,a0,s2
   1862c:	5a72                	lw	s4,60(sp)
   1862e:	6ac1                	lui	s5,0x10
   18630:	d22a                	sw	a0,36(sp)
   18632:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   18636:	00a87833          	and	a6,a6,a0
   1863a:	010a5913          	srli	s2,s4,0x10
   1863e:	0842                	slli	a6,a6,0x10
   18640:	8ee9                	and	a3,a3,a0
   18642:	00aa7a33          	and	s4,s4,a0
   18646:	96c2                	add	a3,a3,a6
   18648:	026a0533          	mul	a0,s4,t1
   1864c:	d436                	sw	a3,40(sp)
   1864e:	02690333          	mul	t1,s2,t1
   18652:	01055693          	srli	a3,a0,0x10
   18656:	03238833          	mul	a6,t2,s2
   1865a:	034383b3          	mul	t2,t2,s4
   1865e:	939a                	add	t2,t2,t1
   18660:	969e                	add	a3,a3,t2
   18662:	0066f363          	bgeu	a3,t1,18668 <__multf3+0x48a>
   18666:	9856                	add	a6,a6,s5
   18668:	0106da93          	srli	s5,a3,0x10
   1866c:	6bc1                	lui	s7,0x10
   1866e:	9ac2                	add	s5,s5,a6
   18670:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   18674:	01057533          	and	a0,a0,a6
   18678:	0106f6b3          	and	a3,a3,a6
   1867c:	03a28333          	mul	t1,t0,s10
   18680:	06c2                	slli	a3,a3,0x10
   18682:	96aa                	add	a3,a3,a0
   18684:	03a58833          	mul	a6,a1,s10
   18688:	02bd83b3          	mul	t2,s11,a1
   1868c:	01085513          	srli	a0,a6,0x10
   18690:	939a                	add	t2,t2,t1
   18692:	951e                	add	a0,a0,t2
   18694:	03b28b33          	mul	s6,t0,s11
   18698:	00657363          	bgeu	a0,t1,1869e <__multf3+0x4c0>
   1869c:	9b5e                	add	s6,s6,s7
   1869e:	6c41                	lui	s8,0x10
   186a0:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   186a4:	01055393          	srli	t2,a0,0x10
   186a8:	00657533          	and	a0,a0,t1
   186ac:	00687833          	and	a6,a6,t1
   186b0:	0542                	slli	a0,a0,0x10
   186b2:	93da                	add	t2,t2,s6
   186b4:	02cf8333          	mul	t1,t6,a2
   186b8:	9542                	add	a0,a0,a6
   186ba:	031f0b33          	mul	s6,t5,a7
   186be:	02c88833          	mul	a6,a7,a2
   186c2:	935a                	add	t1,t1,s6
   186c4:	01085c93          	srli	s9,a6,0x10
   186c8:	9366                	add	t1,t1,s9
   186ca:	03ef8bb3          	mul	s7,t6,t5
   186ce:	01637363          	bgeu	t1,s6,186d4 <__multf3+0x4f6>
   186d2:	9be2                	add	s7,s7,s8
   186d4:	01035b13          	srli	s6,t1,0x10
   186d8:	9b5e                	add	s6,s6,s7
   186da:	6bc1                	lui	s7,0x10
   186dc:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   186e0:	01837333          	and	t1,t1,s8
   186e4:	0342                	slli	t1,t1,0x10
   186e6:	01887833          	and	a6,a6,s8
   186ea:	981a                	add	a6,a6,t1
   186ec:	5322                	lw	t1,40(sp)
   186ee:	5c12                	lw	s8,36(sp)
   186f0:	933e                	add	t1,t1,a5
   186f2:	9c72                	add	s8,s8,t3
   186f4:	00f337b3          	sltu	a5,t1,a5
   186f8:	97e2                	add	a5,a5,s8
   186fa:	969a                	add	a3,a3,t1
   186fc:	9abe                	add	s5,s5,a5
   186fe:	0066b333          	sltu	t1,a3,t1
   18702:	9356                	add	t1,t1,s5
   18704:	9536                	add	a0,a0,a3
   18706:	939a                	add	t2,t2,t1
   18708:	00d536b3          	sltu	a3,a0,a3
   1870c:	969e                	add	a3,a3,t2
   1870e:	982a                	add	a6,a6,a0
   18710:	01cc3e33          	sltu	t3,s8,t3
   18714:	9b36                	add	s6,s6,a3
   18716:	0187bc33          	sltu	s8,a5,s8
   1871a:	00a83533          	sltu	a0,a6,a0
   1871e:	00fab7b3          	sltu	a5,s5,a5
   18722:	01533ab3          	sltu	s5,t1,s5
   18726:	018e6c33          	or	s8,t3,s8
   1872a:	0157e7b3          	or	a5,a5,s5
   1872e:	0063b333          	sltu	t1,t2,t1
   18732:	955a                	add	a0,a0,s6
   18734:	0076b3b3          	sltu	t2,a3,t2
   18738:	97e2                	add	a5,a5,s8
   1873a:	00736333          	or	t1,t1,t2
   1873e:	00db36b3          	sltu	a3,s6,a3
   18742:	01653b33          	sltu	s6,a0,s6
   18746:	00f303b3          	add	t2,t1,a5
   1874a:	0166e6b3          	or	a3,a3,s6
   1874e:	00768333          	add	t1,a3,t2
   18752:	03af0e33          	mul	t3,t5,s10
   18756:	d6c2                	sw	a6,108(sp)
   18758:	03a606b3          	mul	a3,a2,s10
   1875c:	02cd8ab3          	mul	s5,s11,a2
   18760:	0106d793          	srli	a5,a3,0x10
   18764:	9af2                	add	s5,s5,t3
   18766:	97d6                	add	a5,a5,s5
   18768:	03ed83b3          	mul	t2,s11,t5
   1876c:	01c7f363          	bgeu	a5,t3,18772 <__multf3+0x594>
   18770:	93de                	add	t2,t2,s7
   18772:	0107de13          	srli	t3,a5,0x10
   18776:	6ac1                	lui	s5,0x10
   18778:	9e1e                	add	t3,t3,t2
   1877a:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   1877e:	0077f7b3          	and	a5,a5,t2
   18782:	0076f6b3          	and	a3,a3,t2
   18786:	07c2                	slli	a5,a5,0x10
   18788:	03d28b33          	mul	s6,t0,t4
   1878c:	97b6                	add	a5,a5,a3
   1878e:	02be86b3          	mul	a3,t4,a1
   18792:	02b985b3          	mul	a1,s3,a1
   18796:	0106d393          	srli	t2,a3,0x10
   1879a:	95da                	add	a1,a1,s6
   1879c:	93ae                	add	t2,t2,a1
   1879e:	033282b3          	mul	t0,t0,s3
   187a2:	0163f363          	bgeu	t2,s6,187a8 <__multf3+0x5ca>
   187a6:	92d6                	add	t0,t0,s5
   187a8:	0103d593          	srli	a1,t2,0x10
   187ac:	6b41                	lui	s6,0x10
   187ae:	92ae                	add	t0,t0,a1
   187b0:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   187b4:	8eed                	and	a3,a3,a1
   187b6:	00b3f3b3          	and	t2,t2,a1
   187ba:	03c2                	slli	t2,t2,0x10
   187bc:	031a05b3          	mul	a1,s4,a7
   187c0:	93b6                	add	t2,t2,a3
   187c2:	031908b3          	mul	a7,s2,a7
   187c6:	0105d693          	srli	a3,a1,0x10
   187ca:	032f8ab3          	mul	s5,t6,s2
   187ce:	034f8fb3          	mul	t6,t6,s4
   187d2:	9fc6                	add	t6,t6,a7
   187d4:	96fe                	add	a3,a3,t6
   187d6:	0116f363          	bgeu	a3,a7,187dc <__multf3+0x5fe>
   187da:	9ada                	add	s5,s5,s6
   187dc:	0106df93          	srli	t6,a3,0x10
   187e0:	68c1                	lui	a7,0x10
   187e2:	9fd6                	add	t6,t6,s5
   187e4:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   187e8:	0156f6b3          	and	a3,a3,s5
   187ec:	0155f5b3          	and	a1,a1,s5
   187f0:	06c2                	slli	a3,a3,0x10
   187f2:	03df0ab3          	mul	s5,t5,t4
   187f6:	96ae                	add	a3,a3,a1
   187f8:	03d605b3          	mul	a1,a2,t4
   187fc:	02c98633          	mul	a2,s3,a2
   18800:	01560b33          	add	s6,a2,s5
   18804:	0105d613          	srli	a2,a1,0x10
   18808:	965a                	add	a2,a2,s6
   1880a:	033f0f33          	mul	t5,t5,s3
   1880e:	01567363          	bgeu	a2,s5,18814 <__multf3+0x636>
   18812:	9f46                	add	t5,t5,a7
   18814:	6ac1                	lui	s5,0x10
   18816:	01065893          	srli	a7,a2,0x10
   1881a:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   1881e:	9f46                	add	t5,t5,a7
   18820:	016678b3          	and	a7,a2,s6
   18824:	0165f5b3          	and	a1,a1,s6
   18828:	08c2                	slli	a7,a7,0x10
   1882a:	03aa0633          	mul	a2,s4,s10
   1882e:	98ae                	add	a7,a7,a1
   18830:	03a90bb3          	mul	s7,s2,s10
   18834:	01065c13          	srli	s8,a2,0x10
   18838:	034d85b3          	mul	a1,s11,s4
   1883c:	95de                	add	a1,a1,s7
   1883e:	95e2                	add	a1,a1,s8
   18840:	032d8b33          	mul	s6,s11,s2
   18844:	0175f363          	bgeu	a1,s7,1884a <__multf3+0x66c>
   18848:	9b56                	add	s6,s6,s5
   1884a:	97aa                	add	a5,a5,a0
   1884c:	9e1a                	add	t3,t3,t1
   1884e:	00a7b533          	sltu	a0,a5,a0
   18852:	9572                	add	a0,a0,t3
   18854:	93be                	add	t2,t2,a5
   18856:	92aa                	add	t0,t0,a0
   18858:	00f3b7b3          	sltu	a5,t2,a5
   1885c:	9796                	add	a5,a5,t0
   1885e:	006e3333          	sltu	t1,t3,t1
   18862:	01c53e33          	sltu	t3,a0,t3
   18866:	00a2b533          	sltu	a0,t0,a0
   1886a:	0057b2b3          	sltu	t0,a5,t0
   1886e:	00556533          	or	a0,a0,t0
   18872:	01c36333          	or	t1,t1,t3
   18876:	932a                	add	t1,t1,a0
   18878:	03da0533          	mul	a0,s4,t4
   1887c:	969e                	add	a3,a3,t2
   1887e:	9fbe                	add	t6,t6,a5
   18880:	0105da93          	srli	s5,a1,0x10
   18884:	d8b6                	sw	a3,112(sp)
   18886:	0076b6b3          	sltu	a3,a3,t2
   1888a:	96fe                	add	a3,a3,t6
   1888c:	9ada                	add	s5,s5,s6
   1888e:	6b41                	lui	s6,0x10
   18890:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   18894:	03d90eb3          	mul	t4,s2,t4
   18898:	00ffb7b3          	sltu	a5,t6,a5
   1889c:	01f6bfb3          	sltu	t6,a3,t6
   188a0:	0175f5b3          	and	a1,a1,s7
   188a4:	01f7e7b3          	or	a5,a5,t6
   188a8:	98b6                	add	a7,a7,a3
   188aa:	05c2                	slli	a1,a1,0x10
   188ac:	979a                	add	a5,a5,t1
   188ae:	01767633          	and	a2,a2,s7
   188b2:	9f3e                	add	t5,t5,a5
   188b4:	03298933          	mul	s2,s3,s2
   188b8:	962e                	add	a2,a2,a1
   188ba:	00d8b6b3          	sltu	a3,a7,a3
   188be:	96fa                	add	a3,a3,t5
   188c0:	9646                	add	a2,a2,a7
   188c2:	00ff37b3          	sltu	a5,t5,a5
   188c6:	9ab6                	add	s5,s5,a3
   188c8:	01e6bf33          	sltu	t5,a3,t5
   188cc:	dab2                	sw	a2,116(sp)
   188ce:	01163633          	sltu	a2,a2,a7
   188d2:	034989b3          	mul	s3,s3,s4
   188d6:	01e7e5b3          	or	a1,a5,t5
   188da:	9656                	add	a2,a2,s5
   188dc:	01055793          	srli	a5,a0,0x10
   188e0:	00dab6b3          	sltu	a3,s5,a3
   188e4:	01563ab3          	sltu	s5,a2,s5
   188e8:	0156e6b3          	or	a3,a3,s5
   188ec:	99f6                	add	s3,s3,t4
   188ee:	97ce                	add	a5,a5,s3
   188f0:	01d7f363          	bgeu	a5,t4,188f6 <__multf3+0x718>
   188f4:	995a                	add	s2,s2,s6
   188f6:	0107d893          	srli	a7,a5,0x10
   188fa:	95c6                	add	a1,a1,a7
   188fc:	68c1                	lui	a7,0x10
   188fe:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   18900:	0117f7b3          	and	a5,a5,a7
   18904:	07c2                	slli	a5,a5,0x10
   18906:	01157533          	and	a0,a0,a7
   1890a:	97aa                	add	a5,a5,a0
   1890c:	97b2                	add	a5,a5,a2
   1890e:	96ae                	add	a3,a3,a1
   18910:	00c7b633          	sltu	a2,a5,a2
   18914:	9636                	add	a2,a2,a3
   18916:	dcbe                	sw	a5,120(sp)
   18918:	46e2                	lw	a3,24(sp)
   1891a:	5782                	lw	a5,32(sp)
   1891c:	964a                	add	a2,a2,s2
   1891e:	0836                	slli	a6,a6,0xd
   18920:	8fd5                	or	a5,a5,a3
   18922:	46f2                	lw	a3,28(sp)
   18924:	deb2                	sw	a2,124(sp)
   18926:	188c                	addi	a1,sp,112
   18928:	8fd5                	or	a5,a5,a3
   1892a:	00f86833          	or	a6,a6,a5
   1892e:	109c                	addi	a5,sp,96
   18930:	47d4                	lw	a3,12(a5)
   18932:	4b90                	lw	a2,16(a5)
   18934:	82cd                	srli	a3,a3,0x13
   18936:	0636                	slli	a2,a2,0xd
   18938:	8ed1                	or	a3,a3,a2
   1893a:	c394                	sw	a3,0(a5)
   1893c:	0791                	addi	a5,a5,4
   1893e:	fef599e3          	bne	a1,a5,18930 <__multf3+0x752>
   18942:	5786                	lw	a5,96(sp)
   18944:	01003833          	snez	a6,a6
   18948:	56b6                	lw	a3,108(sp)
   1894a:	00f86833          	or	a6,a6,a5
   1894e:	57a6                	lw	a5,104(sp)
   18950:	ceb6                	sw	a3,92(sp)
   18952:	c8c2                	sw	a6,80(sp)
   18954:	ccbe                	sw	a5,88(sp)
   18956:	5796                	lw	a5,100(sp)
   18958:	cabe                	sw	a5,84(sp)
   1895a:	00b69793          	slli	a5,a3,0xb
   1895e:	0207d863          	bgez	a5,1898e <__multf3+0x7b0>
   18962:	087e                	slli	a6,a6,0x1f
   18964:	089c                	addi	a5,sp,80
   18966:	08e8                	addi	a0,sp,92
   18968:	4390                	lw	a2,0(a5)
   1896a:	43cc                	lw	a1,4(a5)
   1896c:	8205                	srli	a2,a2,0x1
   1896e:	05fe                	slli	a1,a1,0x1f
   18970:	8e4d                	or	a2,a2,a1
   18972:	c390                	sw	a2,0(a5)
   18974:	0791                	addi	a5,a5,4
   18976:	fef519e3          	bne	a0,a5,18968 <__multf3+0x78a>
   1897a:	47c6                	lw	a5,80(sp)
   1897c:	01003833          	snez	a6,a6
   18980:	8285                	srli	a3,a3,0x1
   18982:	0107e7b3          	or	a5,a5,a6
   18986:	c8be                	sw	a5,80(sp)
   18988:	47c2                	lw	a5,16(sp)
   1898a:	ceb6                	sw	a3,92(sp)
   1898c:	ca3e                	sw	a5,20(sp)
   1898e:	47d2                	lw	a5,20(sp)
   18990:	c83e                	sw	a5,16(sp)
   18992:	aa41                	j	18b22 <__multf3+0x944>
   18994:	4901                	li	s2,0
   18996:	4c05                	li	s8,1
   18998:	b8d9                	j	1826e <__multf3+0x90>
   1899a:	4c09                	li	s8,2
   1899c:	b8c9                	j	1826e <__multf3+0x90>
   1899e:	017ae7b3          	or	a5,s5,s7
   189a2:	0167e7b3          	or	a5,a5,s6
   189a6:	8fc9                	or	a5,a5,a0
   189a8:	10078263          	beqz	a5,18aac <__multf3+0x8ce>
   189ac:	c93d                	beqz	a0,18a22 <__multf3+0x844>
   189ae:	1dd010ef          	jal	1a38a <__clzsi2>
   189b2:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   189b6:	4056d793          	srai	a5,a3,0x5
   189ba:	8afd                	andi	a3,a3,31
   189bc:	cac9                	beqz	a3,18a4e <__multf3+0x870>
   189be:	5671                	li	a2,-4
   189c0:	02c78633          	mul	a2,a5,a2
   189c4:	02000813          	li	a6,32
   189c8:	04010313          	addi	t1,sp,64
   189cc:	40d80833          	sub	a6,a6,a3
   189d0:	00c60713          	addi	a4,a2,12
   189d4:	971a                	add	a4,a4,t1
   189d6:	40c00633          	neg	a2,a2
   189da:	08e31a63          	bne	t1,a4,18a6e <__multf3+0x890>
   189de:	fff78713          	addi	a4,a5,-1
   189e2:	078a                	slli	a5,a5,0x2
   189e4:	1810                	addi	a2,sp,48
   189e6:	05078793          	addi	a5,a5,80
   189ea:	97b2                	add	a5,a5,a2
   189ec:	4606                	lw	a2,64(sp)
   189ee:	00d616b3          	sll	a3,a2,a3
   189f2:	fcd7a023          	sw	a3,-64(a5)
   189f6:	00170793          	addi	a5,a4,1
   189fa:	078a                	slli	a5,a5,0x2
   189fc:	46a1                	li	a3,8
   189fe:	0098                	addi	a4,sp,64
   18a00:	00d7e863          	bltu	a5,a3,18a10 <__multf3+0x832>
   18a04:	00072023          	sw	zero,0(a4)
   18a08:	00072223          	sw	zero,4(a4)
   18a0c:	17e1                	addi	a5,a5,-8
   18a0e:	00b8                	addi	a4,sp,72
   18a10:	4691                	li	a3,4
   18a12:	00d7e463          	bltu	a5,a3,18a1a <__multf3+0x83c>
   18a16:	00072023          	sw	zero,0(a4)
   18a1a:	77f1                	lui	a5,0xffffc
   18a1c:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   18a1e:	8f89                	sub	a5,a5,a0
   18a20:	b25d                	j	183c6 <__multf3+0x1e8>
   18a22:	000b0863          	beqz	s6,18a32 <__multf3+0x854>
   18a26:	855a                	mv	a0,s6
   18a28:	163010ef          	jal	1a38a <__clzsi2>
   18a2c:	02050513          	addi	a0,a0,32
   18a30:	b749                	j	189b2 <__multf3+0x7d4>
   18a32:	000b8863          	beqz	s7,18a42 <__multf3+0x864>
   18a36:	855e                	mv	a0,s7
   18a38:	153010ef          	jal	1a38a <__clzsi2>
   18a3c:	04050513          	addi	a0,a0,64
   18a40:	bf8d                	j	189b2 <__multf3+0x7d4>
   18a42:	8556                	mv	a0,s5
   18a44:	147010ef          	jal	1a38a <__clzsi2>
   18a48:	06050513          	addi	a0,a0,96
   18a4c:	b79d                	j	189b2 <__multf3+0x7d4>
   18a4e:	5671                	li	a2,-4
   18a50:	02c78633          	mul	a2,a5,a2
   18a54:	00f8                	addi	a4,sp,76
   18a56:	468d                	li	a3,3
   18a58:	00c705b3          	add	a1,a4,a2
   18a5c:	418c                	lw	a1,0(a1)
   18a5e:	16fd                	addi	a3,a3,-1
   18a60:	1771                	addi	a4,a4,-4
   18a62:	c34c                	sw	a1,4(a4)
   18a64:	fef6dae3          	bge	a3,a5,18a58 <__multf3+0x87a>
   18a68:	fff78713          	addi	a4,a5,-1
   18a6c:	b769                	j	189f6 <__multf3+0x818>
   18a6e:	430c                	lw	a1,0(a4)
   18a70:	ffc72883          	lw	a7,-4(a4)
   18a74:	00c70e33          	add	t3,a4,a2
   18a78:	00d595b3          	sll	a1,a1,a3
   18a7c:	0108d8b3          	srl	a7,a7,a6
   18a80:	0115e5b3          	or	a1,a1,a7
   18a84:	00be2023          	sw	a1,0(t3)
   18a88:	1771                	addi	a4,a4,-4
   18a8a:	bf81                	j	189da <__multf3+0x7fc>
   18a8c:	017aeab3          	or	s5,s5,s7
   18a90:	016aeab3          	or	s5,s5,s6
   18a94:	00aaeab3          	or	s5,s5,a0
   18a98:	4689                	li	a3,2
   18a9a:	920a87e3          	beqz	s5,183c8 <__multf3+0x1ea>
   18a9e:	0542                	slli	a0,a0,0x10
   18aa0:	8541                	srai	a0,a0,0x10
   18aa2:	468d                	li	a3,3
   18aa4:	920542e3          	bltz	a0,183c8 <__multf3+0x1ea>
   18aa8:	4441                	li	s0,16
   18aaa:	ba39                	j	183c8 <__multf3+0x1ea>
   18aac:	4781                	li	a5,0
   18aae:	4685                	li	a3,1
   18ab0:	ba21                	j	183c8 <__multf3+0x1ea>
   18ab2:	4605                	li	a2,1
   18ab4:	00f617b3          	sll	a5,a2,a5
   18ab8:	5307f613          	andi	a2,a5,1328
   18abc:	e231                	bnez	a2,18b00 <__multf3+0x922>
   18abe:	0887f613          	andi	a2,a5,136
   18ac2:	e60d                	bnez	a2,18aec <__multf3+0x90e>
   18ac4:	2407f793          	andi	a5,a5,576
   18ac8:	920783e3          	beqz	a5,183ee <__multf3+0x210>
   18acc:	4441                	li	s0,16
   18ace:	67a1                	lui	a5,0x8
   18ad0:	cebe                	sw	a5,92(sp)
   18ad2:	cc82                	sw	zero,88(sp)
   18ad4:	ca82                	sw	zero,84(sp)
   18ad6:	c882                	sw	zero,80(sp)
   18ad8:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18ada:	4701                	li	a4,0
   18adc:	a8e1                	j	18bb4 <__multf3+0x9d6>
   18ade:	473d                	li	a4,15
   18ae0:	fee787e3          	beq	a5,a4,18ace <__multf3+0x8f0>
   18ae4:	462d                	li	a2,11
   18ae6:	874e                	mv	a4,s3
   18ae8:	00c79c63          	bne	a5,a2,18b00 <__multf3+0x922>
   18aec:	8752                	mv	a4,s4
   18aee:	4786                	lw	a5,64(sp)
   18af0:	8c36                	mv	s8,a3
   18af2:	c8be                	sw	a5,80(sp)
   18af4:	4796                	lw	a5,68(sp)
   18af6:	cabe                	sw	a5,84(sp)
   18af8:	47a6                	lw	a5,72(sp)
   18afa:	ccbe                	sw	a5,88(sp)
   18afc:	47b6                	lw	a5,76(sp)
   18afe:	a801                	j	18b0e <__multf3+0x930>
   18b00:	57c2                	lw	a5,48(sp)
   18b02:	c8be                	sw	a5,80(sp)
   18b04:	57d2                	lw	a5,52(sp)
   18b06:	cabe                	sw	a5,84(sp)
   18b08:	57e2                	lw	a5,56(sp)
   18b0a:	ccbe                	sw	a5,88(sp)
   18b0c:	57f2                	lw	a5,60(sp)
   18b0e:	cebe                	sw	a5,92(sp)
   18b10:	4789                	li	a5,2
   18b12:	34fc0d63          	beq	s8,a5,18e6c <__multf3+0xc8e>
   18b16:	478d                	li	a5,3
   18b18:	fafc0be3          	beq	s8,a5,18ace <__multf3+0x8f0>
   18b1c:	4785                	li	a5,1
   18b1e:	34fc0263          	beq	s8,a5,18e62 <__multf3+0xc84>
   18b22:	46c2                	lw	a3,16(sp)
   18b24:	6791                	lui	a5,0x4
   18b26:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   18b28:	97b6                	add	a5,a5,a3
   18b2a:	10f05763          	blez	a5,18c38 <__multf3+0xa5a>
   18b2e:	4646                	lw	a2,80(sp)
   18b30:	00767693          	andi	a3,a2,7
   18b34:	c2a1                	beqz	a3,18b74 <__multf3+0x996>
   18b36:	4509                	li	a0,2
   18b38:	46d6                	lw	a3,84(sp)
   18b3a:	45f6                	lw	a1,92(sp)
   18b3c:	0ca48563          	beq	s1,a0,18c06 <__multf3+0xa28>
   18b40:	450d                	li	a0,3
   18b42:	0aa48c63          	beq	s1,a0,18bfa <__multf3+0xa1c>
   18b46:	e48d                	bnez	s1,18b70 <__multf3+0x992>
   18b48:	00f67513          	andi	a0,a2,15
   18b4c:	4811                	li	a6,4
   18b4e:	03050163          	beq	a0,a6,18b70 <__multf3+0x992>
   18b52:	0611                	addi	a2,a2,4
   18b54:	c8b2                	sw	a2,80(sp)
   18b56:	00463613          	sltiu	a2,a2,4
   18b5a:	96b2                	add	a3,a3,a2
   18b5c:	cab6                	sw	a3,84(sp)
   18b5e:	00c6b6b3          	sltu	a3,a3,a2
   18b62:	4666                	lw	a2,88(sp)
   18b64:	96b2                	add	a3,a3,a2
   18b66:	ccb6                	sw	a3,88(sp)
   18b68:	00c6b6b3          	sltu	a3,a3,a2
   18b6c:	96ae                	add	a3,a3,a1
   18b6e:	ceb6                	sw	a3,92(sp)
   18b70:	00146413          	ori	s0,s0,1
   18b74:	46f6                	lw	a3,92(sp)
   18b76:	00b69613          	slli	a2,a3,0xb
   18b7a:	00065a63          	bgez	a2,18b8e <__multf3+0x9b0>
   18b7e:	fff007b7          	lui	a5,0xfff00
   18b82:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee45a3>
   18b84:	8efd                	and	a3,a3,a5
   18b86:	ceb6                	sw	a3,92(sp)
   18b88:	46c2                	lw	a3,16(sp)
   18b8a:	6791                	lui	a5,0x4
   18b8c:	97b6                	add	a5,a5,a3
   18b8e:	0894                	addi	a3,sp,80
   18b90:	08e8                	addi	a0,sp,92
   18b92:	4290                	lw	a2,0(a3)
   18b94:	42cc                	lw	a1,4(a3)
   18b96:	820d                	srli	a2,a2,0x3
   18b98:	05f6                	slli	a1,a1,0x1d
   18b9a:	8e4d                	or	a2,a2,a1
   18b9c:	c290                	sw	a2,0(a3)
   18b9e:	0691                	addi	a3,a3,4
   18ba0:	fed519e3          	bne	a0,a3,18b92 <__multf3+0x9b4>
   18ba4:	6621                	lui	a2,0x8
   18ba6:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   18ba8:	46f6                	lw	a3,92(sp)
   18baa:	65a1                	lui	a1,0x8
   18bac:	04f64f63          	blt	a2,a5,18c0a <__multf3+0xa2c>
   18bb0:	828d                	srli	a3,a3,0x3
   18bb2:	ceb6                	sw	a3,92(sp)
   18bb4:	4576                	lw	a0,92(sp)
   18bb6:	073e                	slli	a4,a4,0xf
   18bb8:	8f5d                	or	a4,a4,a5
   18bba:	06a11623          	sh	a0,108(sp)
   18bbe:	06e11723          	sh	a4,110(sp)
   18bc2:	45c6                	lw	a1,80(sp)
   18bc4:	4656                	lw	a2,84(sp)
   18bc6:	46e6                	lw	a3,88(sp)
   18bc8:	57b6                	lw	a5,108(sp)
   18bca:	c019                	beqz	s0,18bd0 <__multf3+0x9f2>
   18bcc:	00142073          	csrs	fflags,s0
   18bd0:	4732                	lw	a4,12(sp)
   18bd2:	50fa                	lw	ra,188(sp)
   18bd4:	546a                	lw	s0,184(sp)
   18bd6:	c30c                	sw	a1,0(a4)
   18bd8:	c350                	sw	a2,4(a4)
   18bda:	c714                	sw	a3,8(a4)
   18bdc:	c75c                	sw	a5,12(a4)
   18bde:	54da                	lw	s1,180(sp)
   18be0:	594a                	lw	s2,176(sp)
   18be2:	59ba                	lw	s3,172(sp)
   18be4:	5a2a                	lw	s4,168(sp)
   18be6:	5a9a                	lw	s5,164(sp)
   18be8:	5b0a                	lw	s6,160(sp)
   18bea:	4bfa                	lw	s7,156(sp)
   18bec:	4c6a                	lw	s8,152(sp)
   18bee:	4cda                	lw	s9,148(sp)
   18bf0:	4d4a                	lw	s10,144(sp)
   18bf2:	4dba                	lw	s11,140(sp)
   18bf4:	853a                	mv	a0,a4
   18bf6:	6129                	addi	sp,sp,192
   18bf8:	8082                	ret
   18bfa:	fb3d                	bnez	a4,18b70 <__multf3+0x992>
   18bfc:	0621                	addi	a2,a2,8
   18bfe:	c8b2                	sw	a2,80(sp)
   18c00:	00863613          	sltiu	a2,a2,8
   18c04:	bf99                	j	18b5a <__multf3+0x97c>
   18c06:	d72d                	beqz	a4,18b70 <__multf3+0x992>
   18c08:	bfd5                	j	18bfc <__multf3+0xa1e>
   18c0a:	4789                	li	a5,2
   18c0c:	02f48463          	beq	s1,a5,18c34 <__multf3+0xa56>
   18c10:	478d                	li	a5,3
   18c12:	00f48763          	beq	s1,a5,18c20 <__multf3+0xa42>
   18c16:	e491                	bnez	s1,18c22 <__multf3+0xa44>
   18c18:	4681                	li	a3,0
   18c1a:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   18c1e:	a021                	j	18c26 <__multf3+0xa48>
   18c20:	df65                	beqz	a4,18c18 <__multf3+0xa3a>
   18c22:	56fd                	li	a3,-1
   18c24:	87b2                	mv	a5,a2
   18c26:	ceb6                	sw	a3,92(sp)
   18c28:	ccb6                	sw	a3,88(sp)
   18c2a:	cab6                	sw	a3,84(sp)
   18c2c:	c8b6                	sw	a3,80(sp)
   18c2e:	00546413          	ori	s0,s0,5
   18c32:	b749                	j	18bb4 <__multf3+0x9d6>
   18c34:	f375                	bnez	a4,18c18 <__multf3+0xa3a>
   18c36:	b7f5                	j	18c22 <__multf3+0xa44>
   18c38:	4685                	li	a3,1
   18c3a:	ebb9                	bnez	a5,18c90 <__multf3+0xab2>
   18c3c:	4646                	lw	a2,80(sp)
   18c3e:	46f6                	lw	a3,92(sp)
   18c40:	00767593          	andi	a1,a2,7
   18c44:	c1b1                	beqz	a1,18c88 <__multf3+0xaaa>
   18c46:	4809                	li	a6,2
   18c48:	45d6                	lw	a1,84(sp)
   18c4a:	4566                	lw	a0,88(sp)
   18c4c:	00146413          	ori	s0,s0,1
   18c50:	03048b63          	beq	s1,a6,18c86 <__multf3+0xaa8>
   18c54:	480d                	li	a6,3
   18c56:	03048363          	beq	s1,a6,18c7c <__multf3+0xa9e>
   18c5a:	e49d                	bnez	s1,18c88 <__multf3+0xaaa>
   18c5c:	00f67813          	andi	a6,a2,15
   18c60:	4891                	li	a7,4
   18c62:	03180363          	beq	a6,a7,18c88 <__multf3+0xaaa>
   18c66:	0611                	addi	a2,a2,4
   18c68:	00463613          	sltiu	a2,a2,4
   18c6c:	95b2                	add	a1,a1,a2
   18c6e:	00c5b5b3          	sltu	a1,a1,a2
   18c72:	952e                	add	a0,a0,a1
   18c74:	00b53533          	sltu	a0,a0,a1
   18c78:	96aa                	add	a3,a3,a0
   18c7a:	a039                	j	18c88 <__multf3+0xaaa>
   18c7c:	e711                	bnez	a4,18c88 <__multf3+0xaaa>
   18c7e:	0621                	addi	a2,a2,8
   18c80:	00863613          	sltiu	a2,a2,8
   18c84:	b7e5                	j	18c6c <__multf3+0xa8e>
   18c86:	ff65                	bnez	a4,18c7e <__multf3+0xaa0>
   18c88:	82d1                	srli	a3,a3,0x14
   18c8a:	0016c693          	xori	a3,a3,1
   18c8e:	8a85                	andi	a3,a3,1
   18c90:	4605                	li	a2,1
   18c92:	40f607b3          	sub	a5,a2,a5
   18c96:	07400593          	li	a1,116
   18c9a:	18f5c163          	blt	a1,a5,18e1c <__multf3+0xc3e>
   18c9e:	0890                	addi	a2,sp,80
   18ca0:	4057d593          	srai	a1,a5,0x5
   18ca4:	01f7f513          	andi	a0,a5,31
   18ca8:	88b2                	mv	a7,a2
   18caa:	4781                	li	a5,0
   18cac:	4801                	li	a6,0
   18cae:	02b81763          	bne	a6,a1,18cdc <__multf3+0xafe>
   18cb2:	480d                	li	a6,3
   18cb4:	40b80833          	sub	a6,a6,a1
   18cb8:	00259893          	slli	a7,a1,0x2
   18cbc:	e51d                	bnez	a0,18cea <__multf3+0xb0c>
   18cbe:	8332                	mv	t1,a2
   18cc0:	01130e33          	add	t3,t1,a7
   18cc4:	000e2e03          	lw	t3,0(t3)
   18cc8:	0505                	addi	a0,a0,1
   18cca:	0311                	addi	t1,t1,4
   18ccc:	ffc32e23          	sw	t3,-4(t1)
   18cd0:	fea858e3          	bge	a6,a0,18cc0 <__multf3+0xae2>
   18cd4:	4511                	li	a0,4
   18cd6:	40b505b3          	sub	a1,a0,a1
   18cda:	a8a1                	j	18d32 <__multf3+0xb54>
   18cdc:	0008a303          	lw	t1,0(a7)
   18ce0:	0805                	addi	a6,a6,1
   18ce2:	0891                	addi	a7,a7,4
   18ce4:	0067e7b3          	or	a5,a5,t1
   18ce8:	b7d9                	j	18cae <__multf3+0xad0>
   18cea:	05088313          	addi	t1,a7,80
   18cee:	03010e13          	addi	t3,sp,48
   18cf2:	9372                	add	t1,t1,t3
   18cf4:	fd032303          	lw	t1,-48(t1)
   18cf8:	02000e93          	li	t4,32
   18cfc:	40ae8eb3          	sub	t4,t4,a0
   18d00:	01d31333          	sll	t1,t1,t4
   18d04:	0067e7b3          	or	a5,a5,t1
   18d08:	4f01                	li	t5,0
   18d0a:	01160333          	add	t1,a2,a7
   18d0e:	411008b3          	neg	a7,a7
   18d12:	0b0f4d63          	blt	t5,a6,18dcc <__multf3+0xbee>
   18d16:	4891                	li	a7,4
   18d18:	080a                	slli	a6,a6,0x2
   18d1a:	40b885b3          	sub	a1,a7,a1
   18d1e:	05080813          	addi	a6,a6,80
   18d22:	03010893          	addi	a7,sp,48
   18d26:	9846                	add	a6,a6,a7
   18d28:	48f6                	lw	a7,92(sp)
   18d2a:	00a8d533          	srl	a0,a7,a0
   18d2e:	fca82823          	sw	a0,-48(a6)
   18d32:	4511                	li	a0,4
   18d34:	8d0d                	sub	a0,a0,a1
   18d36:	050a                	slli	a0,a0,0x2
   18d38:	058a                	slli	a1,a1,0x2
   18d3a:	4821                	li	a6,8
   18d3c:	95b2                	add	a1,a1,a2
   18d3e:	01056863          	bltu	a0,a6,18d4e <__multf3+0xb70>
   18d42:	0005a023          	sw	zero,0(a1)
   18d46:	0005a223          	sw	zero,4(a1)
   18d4a:	1561                	addi	a0,a0,-8
   18d4c:	05a1                	addi	a1,a1,8
   18d4e:	4811                	li	a6,4
   18d50:	01056463          	bltu	a0,a6,18d58 <__multf3+0xb7a>
   18d54:	0005a023          	sw	zero,0(a1)
   18d58:	45c6                	lw	a1,80(sp)
   18d5a:	00f037b3          	snez	a5,a5
   18d5e:	8fcd                	or	a5,a5,a1
   18d60:	c8be                	sw	a5,80(sp)
   18d62:	0077f593          	andi	a1,a5,7
   18d66:	c1a1                	beqz	a1,18da6 <__multf3+0xbc8>
   18d68:	4509                	li	a0,2
   18d6a:	45f6                	lw	a1,92(sp)
   18d6c:	08a48763          	beq	s1,a0,18dfa <__multf3+0xc1c>
   18d70:	450d                	li	a0,3
   18d72:	06a48e63          	beq	s1,a0,18dee <__multf3+0xc10>
   18d76:	e495                	bnez	s1,18da2 <__multf3+0xbc4>
   18d78:	00f7f513          	andi	a0,a5,15
   18d7c:	4811                	li	a6,4
   18d7e:	03050263          	beq	a0,a6,18da2 <__multf3+0xbc4>
   18d82:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   18d84:	c8be                	sw	a5,80(sp)
   18d86:	0047b793          	sltiu	a5,a5,4
   18d8a:	4556                	lw	a0,84(sp)
   18d8c:	97aa                	add	a5,a5,a0
   18d8e:	cabe                	sw	a5,84(sp)
   18d90:	00a7b7b3          	sltu	a5,a5,a0
   18d94:	4566                	lw	a0,88(sp)
   18d96:	97aa                	add	a5,a5,a0
   18d98:	ccbe                	sw	a5,88(sp)
   18d9a:	00a7b7b3          	sltu	a5,a5,a0
   18d9e:	97ae                	add	a5,a5,a1
   18da0:	cebe                	sw	a5,92(sp)
   18da2:	00146413          	ori	s0,s0,1
   18da6:	45f6                	lw	a1,92(sp)
   18da8:	00c59793          	slli	a5,a1,0xc
   18dac:	0407d963          	bgez	a5,18dfe <__multf3+0xc20>
   18db0:	ce82                	sw	zero,92(sp)
   18db2:	cc82                	sw	zero,88(sp)
   18db4:	ca82                	sw	zero,84(sp)
   18db6:	c882                	sw	zero,80(sp)
   18db8:	00146413          	ori	s0,s0,1
   18dbc:	4785                	li	a5,1
   18dbe:	de068be3          	beqz	a3,18bb4 <__multf3+0x9d6>
   18dc2:	00147693          	andi	a3,s0,1
   18dc6:	0686                	slli	a3,a3,0x1
   18dc8:	8c55                	or	s0,s0,a3
   18dca:	b3ed                	j	18bb4 <__multf3+0x9d6>
   18dcc:	00032e03          	lw	t3,0(t1)
   18dd0:	00432f83          	lw	t6,4(t1)
   18dd4:	011302b3          	add	t0,t1,a7
   18dd8:	00ae5e33          	srl	t3,t3,a0
   18ddc:	01df9fb3          	sll	t6,t6,t4
   18de0:	01fe6e33          	or	t3,t3,t6
   18de4:	01c2a023          	sw	t3,0(t0)
   18de8:	0f05                	addi	t5,t5,1
   18dea:	0311                	addi	t1,t1,4
   18dec:	b71d                	j	18d12 <__multf3+0xb34>
   18dee:	fb55                	bnez	a4,18da2 <__multf3+0xbc4>
   18df0:	07a1                	addi	a5,a5,8
   18df2:	c8be                	sw	a5,80(sp)
   18df4:	0087b793          	sltiu	a5,a5,8
   18df8:	bf49                	j	18d8a <__multf3+0xbac>
   18dfa:	d745                	beqz	a4,18da2 <__multf3+0xbc4>
   18dfc:	bfd5                	j	18df0 <__multf3+0xc12>
   18dfe:	00c60813          	addi	a6,a2,12
   18e02:	421c                	lw	a5,0(a2)
   18e04:	4248                	lw	a0,4(a2)
   18e06:	838d                	srli	a5,a5,0x3
   18e08:	0576                	slli	a0,a0,0x1d
   18e0a:	8fc9                	or	a5,a5,a0
   18e0c:	c21c                	sw	a5,0(a2)
   18e0e:	0611                	addi	a2,a2,4
   18e10:	fec819e3          	bne	a6,a2,18e02 <__multf3+0xc24>
   18e14:	818d                	srli	a1,a1,0x3
   18e16:	ceae                	sw	a1,92(sp)
   18e18:	4781                	li	a5,0
   18e1a:	b755                	j	18dbe <__multf3+0xbe0>
   18e1c:	46d6                	lw	a3,84(sp)
   18e1e:	47c6                	lw	a5,80(sp)
   18e20:	8fd5                	or	a5,a5,a3
   18e22:	46e6                	lw	a3,88(sp)
   18e24:	8fd5                	or	a5,a5,a3
   18e26:	46f6                	lw	a3,92(sp)
   18e28:	8fd5                	or	a5,a5,a3
   18e2a:	c395                	beqz	a5,18e4e <__multf3+0xc70>
   18e2c:	ce82                	sw	zero,92(sp)
   18e2e:	cc82                	sw	zero,88(sp)
   18e30:	ca82                	sw	zero,84(sp)
   18e32:	c8b2                	sw	a2,80(sp)
   18e34:	4789                	li	a5,2
   18e36:	00146413          	ori	s0,s0,1
   18e3a:	02f48263          	beq	s1,a5,18e5e <__multf3+0xc80>
   18e3e:	478d                	li	a5,3
   18e40:	00f48b63          	beq	s1,a5,18e56 <__multf3+0xc78>
   18e44:	4795                	li	a5,5
   18e46:	c891                	beqz	s1,18e5a <__multf3+0xc7c>
   18e48:	47c6                	lw	a5,80(sp)
   18e4a:	838d                	srli	a5,a5,0x3
   18e4c:	c8be                	sw	a5,80(sp)
   18e4e:	00246413          	ori	s0,s0,2
   18e52:	4781                	li	a5,0
   18e54:	b385                	j	18bb4 <__multf3+0x9d6>
   18e56:	fb6d                	bnez	a4,18e48 <__multf3+0xc6a>
   18e58:	47a5                	li	a5,9
   18e5a:	c8be                	sw	a5,80(sp)
   18e5c:	b7f5                	j	18e48 <__multf3+0xc6a>
   18e5e:	ff6d                	bnez	a4,18e58 <__multf3+0xc7a>
   18e60:	b7e5                	j	18e48 <__multf3+0xc6a>
   18e62:	ce82                	sw	zero,92(sp)
   18e64:	cc82                	sw	zero,88(sp)
   18e66:	ca82                	sw	zero,84(sp)
   18e68:	c882                	sw	zero,80(sp)
   18e6a:	b7e5                	j	18e52 <__multf3+0xc74>
   18e6c:	67a1                	lui	a5,0x8
   18e6e:	ce82                	sw	zero,92(sp)
   18e70:	cc82                	sw	zero,88(sp)
   18e72:	ca82                	sw	zero,84(sp)
   18e74:	c882                	sw	zero,80(sp)
   18e76:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18e78:	bb35                	j	18bb4 <__multf3+0x9d6>

00018e7a <__subtf3>:
   18e7a:	7159                	addi	sp,sp,-112
   18e7c:	d2a6                	sw	s1,100(sp)
   18e7e:	d0ca                	sw	s2,96(sp)
   18e80:	cece                	sw	s3,92(sp)
   18e82:	c2e6                	sw	s9,68(sp)
   18e84:	d686                	sw	ra,108(sp)
   18e86:	d4a2                	sw	s0,104(sp)
   18e88:	ccd2                	sw	s4,88(sp)
   18e8a:	cad6                	sw	s5,84(sp)
   18e8c:	c8da                	sw	s6,80(sp)
   18e8e:	c6de                	sw	s7,76(sp)
   18e90:	c4e2                	sw	s8,72(sp)
   18e92:	892a                	mv	s2,a0
   18e94:	4198                	lw	a4,0(a1)
   18e96:	41d4                	lw	a3,4(a1)
   18e98:	459c                	lw	a5,8(a1)
   18e9a:	00c5a983          	lw	s3,12(a1)
   18e9e:	4204                	lw	s1,0(a2)
   18ea0:	00462883          	lw	a7,4(a2)
   18ea4:	00862803          	lw	a6,8(a2)
   18ea8:	00c62c83          	lw	s9,12(a2)
   18eac:	00202a73          	frrm	s4
   18eb0:	dc3e                	sw	a5,56(sp)
   18eb2:	c43e                	sw	a5,8(sp)
   18eb4:	01099793          	slli	a5,s3,0x10
   18eb8:	83c1                	srli	a5,a5,0x10
   18eba:	00199413          	slli	s0,s3,0x1
   18ebe:	858a                	mv	a1,sp
   18ec0:	de4e                	sw	s3,60(sp)
   18ec2:	c63e                	sw	a5,12(sp)
   18ec4:	d83a                	sw	a4,48(sp)
   18ec6:	da36                	sw	a3,52(sp)
   18ec8:	c03a                	sw	a4,0(sp)
   18eca:	c236                	sw	a3,4(sp)
   18ecc:	8045                	srli	s0,s0,0x11
   18ece:	01f9d993          	srli	s3,s3,0x1f
   18ed2:	ff410313          	addi	t1,sp,-12
   18ed6:	87ae                	mv	a5,a1
   18ed8:	852e                	mv	a0,a1
   18eda:	47d4                	lw	a3,12(a5)
   18edc:	4790                	lw	a2,8(a5)
   18ede:	17f1                	addi	a5,a5,-4
   18ee0:	068e                	slli	a3,a3,0x3
   18ee2:	8275                	srli	a2,a2,0x1d
   18ee4:	8ed1                	or	a3,a3,a2
   18ee6:	cb94                	sw	a3,16(a5)
   18ee8:	fef319e3          	bne	t1,a5,18eda <__subtf3+0x60>
   18eec:	010c9793          	slli	a5,s9,0x10
   18ef0:	83c1                	srli	a5,a5,0x10
   18ef2:	001c9a93          	slli	s5,s9,0x1
   18ef6:	070e                	slli	a4,a4,0x3
   18ef8:	dc42                	sw	a6,56(sp)
   18efa:	cc42                	sw	a6,24(sp)
   18efc:	01010813          	addi	a6,sp,16
   18f00:	da46                	sw	a7,52(sp)
   18f02:	de66                	sw	s9,60(sp)
   18f04:	ca46                	sw	a7,20(sp)
   18f06:	ce3e                	sw	a5,28(sp)
   18f08:	c03a                	sw	a4,0(sp)
   18f0a:	d826                	sw	s1,48(sp)
   18f0c:	c826                	sw	s1,16(sp)
   18f0e:	011ada93          	srli	s5,s5,0x11
   18f12:	01fcdc93          	srli	s9,s9,0x1f
   18f16:	00410893          	addi	a7,sp,4
   18f1a:	87c2                	mv	a5,a6
   18f1c:	8e42                	mv	t3,a6
   18f1e:	47d4                	lw	a3,12(a5)
   18f20:	4790                	lw	a2,8(a5)
   18f22:	17f1                	addi	a5,a5,-4
   18f24:	068e                	slli	a3,a3,0x3
   18f26:	8275                	srli	a2,a2,0x1d
   18f28:	8ed1                	or	a3,a3,a2
   18f2a:	cb94                	sw	a3,16(a5)
   18f2c:	fef899e3          	bne	a7,a5,18f1e <__subtf3+0xa4>
   18f30:	048e                	slli	s1,s1,0x3
   18f32:	67a1                	lui	a5,0x8
   18f34:	c826                	sw	s1,16(sp)
   18f36:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18f38:	00fa9963          	bne	s5,a5,18f4a <__subtf3+0xd0>
   18f3c:	46e2                	lw	a3,24(sp)
   18f3e:	47d2                	lw	a5,20(sp)
   18f40:	8fd5                	or	a5,a5,a3
   18f42:	46f2                	lw	a3,28(sp)
   18f44:	8fd5                	or	a5,a5,a3
   18f46:	8fc5                	or	a5,a5,s1
   18f48:	e399                	bnez	a5,18f4e <__subtf3+0xd4>
   18f4a:	001ccc93          	xori	s9,s9,1
   18f4e:	415407b3          	sub	a5,s0,s5
   18f52:	5d3c9c63          	bne	s9,s3,1952a <__subtf3+0x6b0>
   18f56:	24f05963          	blez	a5,191a8 <__subtf3+0x32e>
   18f5a:	4312                	lw	t1,4(sp)
   18f5c:	48a2                	lw	a7,8(sp)
   18f5e:	45b2                	lw	a1,12(sp)
   18f60:	080a9963          	bnez	s5,18ff2 <__subtf3+0x178>
   18f64:	4552                	lw	a0,20(sp)
   18f66:	46e2                	lw	a3,24(sp)
   18f68:	4ef2                	lw	t4,28(sp)
   18f6a:	00d56633          	or	a2,a0,a3
   18f6e:	01d66633          	or	a2,a2,t4
   18f72:	8e45                	or	a2,a2,s1
   18f74:	e61d                	bnez	a2,18fa2 <__subtf3+0x128>
   18f76:	66a1                	lui	a3,0x8
   18f78:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18f7a:	00d79e63          	bne	a5,a3,18f96 <__subtf3+0x11c>
   18f7e:	011366b3          	or	a3,t1,a7
   18f82:	8ecd                	or	a3,a3,a1
   18f84:	8ed9                	or	a3,a3,a4
   18f86:	ca81                	beqz	a3,18f96 <__subtf3+0x11c>
   18f88:	0125da93          	srli	s5,a1,0x12
   18f8c:	001aca93          	xori	s5,s5,1
   18f90:	001afa93          	andi	s5,s5,1
   18f94:	0a92                	slli	s5,s5,0x4
   18f96:	d03a                	sw	a4,32(sp)
   18f98:	d21a                	sw	t1,36(sp)
   18f9a:	d446                	sw	a7,40(sp)
   18f9c:	d62e                	sw	a1,44(sp)
   18f9e:	8456                	mv	s0,s5
   18fa0:	ac99                	j	191f6 <__subtf3+0x37c>
   18fa2:	fff78613          	addi	a2,a5,-1
   18fa6:	ea0d                	bnez	a2,18fd8 <__subtf3+0x15e>
   18fa8:	94ba                	add	s1,s1,a4
   18faa:	932a                	add	t1,t1,a0
   18fac:	d026                	sw	s1,32(sp)
   18fae:	00e4b4b3          	sltu	s1,s1,a4
   18fb2:	949a                	add	s1,s1,t1
   18fb4:	d226                	sw	s1,36(sp)
   18fb6:	00a33533          	sltu	a0,t1,a0
   18fba:	0064b4b3          	sltu	s1,s1,t1
   18fbe:	98b6                	add	a7,a7,a3
   18fc0:	8d45                	or	a0,a0,s1
   18fc2:	9546                	add	a0,a0,a7
   18fc4:	d42a                	sw	a0,40(sp)
   18fc6:	00d8b733          	sltu	a4,a7,a3
   18fca:	01153533          	sltu	a0,a0,a7
   18fce:	8f49                	or	a4,a4,a0
   18fd0:	9eae                	add	t4,t4,a1
   18fd2:	9776                	add	a4,a4,t4
   18fd4:	4785                	li	a5,1
   18fd6:	a299                	j	1911c <__subtf3+0x2a2>
   18fd8:	66a1                	lui	a3,0x8
   18fda:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18fdc:	fad781e3          	beq	a5,a3,18f7e <__subtf3+0x104>
   18fe0:	07400793          	li	a5,116
   18fe4:	04c7d863          	bge	a5,a2,19034 <__subtf3+0x1ba>
   18fe8:	ce02                	sw	zero,28(sp)
   18fea:	cc02                	sw	zero,24(sp)
   18fec:	ca02                	sw	zero,20(sp)
   18fee:	4785                	li	a5,1
   18ff0:	a8dd                	j	190e6 <__subtf3+0x26c>
   18ff2:	66a1                	lui	a3,0x8
   18ff4:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18ff6:	02d41563          	bne	s0,a3,19020 <__subtf3+0x1a6>
   18ffa:	011367b3          	or	a5,t1,a7
   18ffe:	8fcd                	or	a5,a5,a1
   19000:	8fd9                	or	a5,a5,a4
   19002:	4681                	li	a3,0
   19004:	c799                	beqz	a5,19012 <__subtf3+0x198>
   19006:	0125d693          	srli	a3,a1,0x12
   1900a:	0016c693          	xori	a3,a3,1
   1900e:	8a85                	andi	a3,a3,1
   19010:	0692                	slli	a3,a3,0x4
   19012:	d03a                	sw	a4,32(sp)
   19014:	d21a                	sw	t1,36(sp)
   19016:	d446                	sw	a7,40(sp)
   19018:	d62e                	sw	a1,44(sp)
   1901a:	87a2                	mv	a5,s0
   1901c:	8436                	mv	s0,a3
   1901e:	aae1                	j	191f6 <__subtf3+0x37c>
   19020:	46f2                	lw	a3,28(sp)
   19022:	00080637          	lui	a2,0x80
   19026:	8ed1                	or	a3,a3,a2
   19028:	ce36                	sw	a3,28(sp)
   1902a:	07400693          	li	a3,116
   1902e:	faf6cde3          	blt	a3,a5,18fe8 <__subtf3+0x16e>
   19032:	863e                	mv	a2,a5
   19034:	40565693          	srai	a3,a2,0x5
   19038:	8ec2                	mv	t4,a6
   1903a:	8a7d                	andi	a2,a2,31
   1903c:	4781                	li	a5,0
   1903e:	4501                	li	a0,0
   19040:	02d51563          	bne	a0,a3,1906a <__subtf3+0x1f0>
   19044:	450d                	li	a0,3
   19046:	8d15                	sub	a0,a0,a3
   19048:	00269e93          	slli	t4,a3,0x2
   1904c:	e615                	bnez	a2,19078 <__subtf3+0x1fe>
   1904e:	01d80f33          	add	t5,a6,t4
   19052:	000f2f03          	lw	t5,0(t5)
   19056:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   19058:	0811                	addi	a6,a6,4
   1905a:	ffe82e23          	sw	t5,-4(a6)
   1905e:	fec558e3          	bge	a0,a2,1904e <__subtf3+0x1d4>
   19062:	4611                	li	a2,4
   19064:	40d606b3          	sub	a3,a2,a3
   19068:	a881                	j	190b8 <__subtf3+0x23e>
   1906a:	000eaf03          	lw	t5,0(t4)
   1906e:	0505                	addi	a0,a0,1
   19070:	0e91                	addi	t4,t4,4
   19072:	01e7e7b3          	or	a5,a5,t5
   19076:	b7e9                	j	19040 <__subtf3+0x1c6>
   19078:	040e8493          	addi	s1,t4,64
   1907c:	00248f33          	add	t5,s1,sp
   19080:	fd0f2f03          	lw	t5,-48(t5)
   19084:	02000393          	li	t2,32
   19088:	40c383b3          	sub	t2,t2,a2
   1908c:	007f1f33          	sll	t5,t5,t2
   19090:	9876                	add	a6,a6,t4
   19092:	01e7e7b3          	or	a5,a5,t5
   19096:	41d00eb3          	neg	t4,t4
   1909a:	4f81                	li	t6,0
   1909c:	0eafc563          	blt	t6,a0,19186 <__subtf3+0x30c>
   190a0:	4811                	li	a6,4
   190a2:	40d806b3          	sub	a3,a6,a3
   190a6:	4872                	lw	a6,28(sp)
   190a8:	050a                	slli	a0,a0,0x2
   190aa:	04050513          	addi	a0,a0,64
   190ae:	950a                	add	a0,a0,sp
   190b0:	00c85633          	srl	a2,a6,a2
   190b4:	fcc52823          	sw	a2,-48(a0)
   190b8:	4611                	li	a2,4
   190ba:	8e15                	sub	a2,a2,a3
   190bc:	060a                	slli	a2,a2,0x2
   190be:	068a                	slli	a3,a3,0x2
   190c0:	4521                	li	a0,8
   190c2:	96f2                	add	a3,a3,t3
   190c4:	00a66863          	bltu	a2,a0,190d4 <__subtf3+0x25a>
   190c8:	0006a023          	sw	zero,0(a3)
   190cc:	0006a223          	sw	zero,4(a3)
   190d0:	1661                	addi	a2,a2,-8
   190d2:	06a1                	addi	a3,a3,8
   190d4:	4511                	li	a0,4
   190d6:	00a66463          	bltu	a2,a0,190de <__subtf3+0x264>
   190da:	0006a023          	sw	zero,0(a3)
   190de:	46c2                	lw	a3,16(sp)
   190e0:	00f037b3          	snez	a5,a5
   190e4:	8fd5                	or	a5,a5,a3
   190e6:	46d2                	lw	a3,20(sp)
   190e8:	c83e                	sw	a5,16(sp)
   190ea:	97ba                	add	a5,a5,a4
   190ec:	9336                	add	t1,t1,a3
   190ee:	d03e                	sw	a5,32(sp)
   190f0:	00e7b7b3          	sltu	a5,a5,a4
   190f4:	4762                	lw	a4,24(sp)
   190f6:	979a                	add	a5,a5,t1
   190f8:	d23e                	sw	a5,36(sp)
   190fa:	00d336b3          	sltu	a3,t1,a3
   190fe:	0067b7b3          	sltu	a5,a5,t1
   19102:	98ba                	add	a7,a7,a4
   19104:	8fd5                	or	a5,a5,a3
   19106:	97c6                	add	a5,a5,a7
   19108:	d43e                	sw	a5,40(sp)
   1910a:	00e8b733          	sltu	a4,a7,a4
   1910e:	0117b7b3          	sltu	a5,a5,a7
   19112:	8f5d                	or	a4,a4,a5
   19114:	47f2                	lw	a5,28(sp)
   19116:	97ae                	add	a5,a5,a1
   19118:	973e                	add	a4,a4,a5
   1911a:	87a2                	mv	a5,s0
   1911c:	d63a                	sw	a4,44(sp)
   1911e:	00c71693          	slli	a3,a4,0xc
   19122:	4401                	li	s0,0
   19124:	0c06d963          	bgez	a3,191f6 <__subtf3+0x37c>
   19128:	5602                	lw	a2,32(sp)
   1912a:	fff806b7          	lui	a3,0xfff80
   1912e:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19130:	8f75                	and	a4,a4,a3
   19132:	d63a                	sw	a4,44(sp)
   19134:	0785                	addi	a5,a5,1
   19136:	067e                	slli	a2,a2,0x1f
   19138:	1014                	addi	a3,sp,32
   1913a:	02c10813          	addi	a6,sp,44
   1913e:	428c                	lw	a1,0(a3)
   19140:	42c8                	lw	a0,4(a3)
   19142:	8185                	srli	a1,a1,0x1
   19144:	057e                	slli	a0,a0,0x1f
   19146:	8dc9                	or	a1,a1,a0
   19148:	c28c                	sw	a1,0(a3)
   1914a:	0691                	addi	a3,a3,4
   1914c:	fed819e3          	bne	a6,a3,1913e <__subtf3+0x2c4>
   19150:	5682                	lw	a3,32(sp)
   19152:	8305                	srli	a4,a4,0x1
   19154:	d63a                	sw	a4,44(sp)
   19156:	00c03733          	snez	a4,a2
   1915a:	8f55                	or	a4,a4,a3
   1915c:	d03a                	sw	a4,32(sp)
   1915e:	6721                	lui	a4,0x8
   19160:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19162:	4401                	li	s0,0
   19164:	08e79963          	bne	a5,a4,191f6 <__subtf3+0x37c>
   19168:	3a0a0963          	beqz	s4,1951a <__subtf3+0x6a0>
   1916c:	478d                	li	a5,3
   1916e:	3afa1163          	bne	s4,a5,19510 <__subtf3+0x696>
   19172:	3a098463          	beqz	s3,1951a <__subtf3+0x6a0>
   19176:	57fd                	li	a5,-1
   19178:	d63e                	sw	a5,44(sp)
   1917a:	d43e                	sw	a5,40(sp)
   1917c:	d23e                	sw	a5,36(sp)
   1917e:	d03e                	sw	a5,32(sp)
   19180:	67a1                	lui	a5,0x8
   19182:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   19184:	a64d                	j	19526 <__subtf3+0x6ac>
   19186:	00082f03          	lw	t5,0(a6)
   1918a:	00482283          	lw	t0,4(a6)
   1918e:	01d804b3          	add	s1,a6,t4
   19192:	00cf5f33          	srl	t5,t5,a2
   19196:	007292b3          	sll	t0,t0,t2
   1919a:	005f6f33          	or	t5,t5,t0
   1919e:	01e4a023          	sw	t5,0(s1)
   191a2:	0f85                	addi	t6,t6,1
   191a4:	0811                	addi	a6,a6,4
   191a6:	bddd                	j	1909c <__subtf3+0x222>
   191a8:	4bd2                	lw	s7,20(sp)
   191aa:	4c62                	lw	s8,24(sp)
   191ac:	4b72                	lw	s6,28(sp)
   191ae:	1e078363          	beqz	a5,19394 <__subtf3+0x51a>
   191b2:	408a87b3          	sub	a5,s5,s0
   191b6:	e859                	bnez	s0,1924c <__subtf3+0x3d2>
   191b8:	4612                	lw	a2,4(sp)
   191ba:	46a2                	lw	a3,8(sp)
   191bc:	48b2                	lw	a7,12(sp)
   191be:	00d66833          	or	a6,a2,a3
   191c2:	01186833          	or	a6,a6,a7
   191c6:	00e86833          	or	a6,a6,a4
   191ca:	02081963          	bnez	a6,191fc <__subtf3+0x382>
   191ce:	6721                	lui	a4,0x8
   191d0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   191d2:	00e79e63          	bne	a5,a4,191ee <__subtf3+0x374>
   191d6:	018be733          	or	a4,s7,s8
   191da:	01676733          	or	a4,a4,s6
   191de:	8f45                	or	a4,a4,s1
   191e0:	c719                	beqz	a4,191ee <__subtf3+0x374>
   191e2:	012b5413          	srli	s0,s6,0x12
   191e6:	00144413          	xori	s0,s0,1
   191ea:	8805                	andi	s0,s0,1
   191ec:	0412                	slli	s0,s0,0x4
   191ee:	d026                	sw	s1,32(sp)
   191f0:	d25e                	sw	s7,36(sp)
   191f2:	d462                	sw	s8,40(sp)
   191f4:	d65a                	sw	s6,44(sp)
   191f6:	4681                	li	a3,0
   191f8:	3fb0006f          	j	19df2 <__subtf3+0xf78>
   191fc:	fff78813          	addi	a6,a5,-1
   19200:	02081963          	bnez	a6,19232 <__subtf3+0x3b8>
   19204:	94ba                	add	s1,s1,a4
   19206:	9bb2                	add	s7,s7,a2
   19208:	d026                	sw	s1,32(sp)
   1920a:	00e4b4b3          	sltu	s1,s1,a4
   1920e:	94de                	add	s1,s1,s7
   19210:	d226                	sw	s1,36(sp)
   19212:	00cbb633          	sltu	a2,s7,a2
   19216:	0174b4b3          	sltu	s1,s1,s7
   1921a:	9c36                	add	s8,s8,a3
   1921c:	8e45                	or	a2,a2,s1
   1921e:	9662                	add	a2,a2,s8
   19220:	d432                	sw	a2,40(sp)
   19222:	00dc3733          	sltu	a4,s8,a3
   19226:	01863633          	sltu	a2,a2,s8
   1922a:	8f51                	or	a4,a4,a2
   1922c:	98da                	add	a7,a7,s6
   1922e:	9746                	add	a4,a4,a7
   19230:	b355                	j	18fd4 <__subtf3+0x15a>
   19232:	6721                	lui	a4,0x8
   19234:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19236:	fae780e3          	beq	a5,a4,191d6 <__subtf3+0x35c>
   1923a:	07400793          	li	a5,116
   1923e:	0507d863          	bge	a5,a6,1928e <__subtf3+0x414>
   19242:	c602                	sw	zero,12(sp)
   19244:	c402                	sw	zero,8(sp)
   19246:	c202                	sw	zero,4(sp)
   19248:	4785                	li	a5,1
   1924a:	a8cd                	j	1933c <__subtf3+0x4c2>
   1924c:	6721                	lui	a4,0x8
   1924e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19250:	02ea9563          	bne	s5,a4,1927a <__subtf3+0x400>
   19254:	018be7b3          	or	a5,s7,s8
   19258:	0167e7b3          	or	a5,a5,s6
   1925c:	8fc5                	or	a5,a5,s1
   1925e:	4401                	li	s0,0
   19260:	c799                	beqz	a5,1926e <__subtf3+0x3f4>
   19262:	012b5413          	srli	s0,s6,0x12
   19266:	00144413          	xori	s0,s0,1
   1926a:	8805                	andi	s0,s0,1
   1926c:	0412                	slli	s0,s0,0x4
   1926e:	d026                	sw	s1,32(sp)
   19270:	d25e                	sw	s7,36(sp)
   19272:	d462                	sw	s8,40(sp)
   19274:	d65a                	sw	s6,44(sp)
   19276:	87d6                	mv	a5,s5
   19278:	bfbd                	j	191f6 <__subtf3+0x37c>
   1927a:	4732                	lw	a4,12(sp)
   1927c:	000806b7          	lui	a3,0x80
   19280:	8f55                	or	a4,a4,a3
   19282:	c63a                	sw	a4,12(sp)
   19284:	07400713          	li	a4,116
   19288:	faf74de3          	blt	a4,a5,19242 <__subtf3+0x3c8>
   1928c:	883e                	mv	a6,a5
   1928e:	02000713          	li	a4,32
   19292:	02e84733          	div	a4,a6,a4
   19296:	86ae                	mv	a3,a1
   19298:	4401                	li	s0,0
   1929a:	4781                	li	a5,0
   1929c:	02e7c663          	blt	a5,a4,192c8 <__subtf3+0x44e>
   192a0:	478d                	li	a5,3
   192a2:	01f87893          	andi	a7,a6,31
   192a6:	8f99                	sub	a5,a5,a4
   192a8:	00271613          	slli	a2,a4,0x2
   192ac:	02089363          	bnez	a7,192d2 <__subtf3+0x458>
   192b0:	00c586b3          	add	a3,a1,a2
   192b4:	4294                	lw	a3,0(a3)
   192b6:	0885                	addi	a7,a7,1
   192b8:	c194                	sw	a3,0(a1)
   192ba:	0591                	addi	a1,a1,4
   192bc:	ff17dae3          	bge	a5,a7,192b0 <__subtf3+0x436>
   192c0:	4791                	li	a5,4
   192c2:	40e78733          	sub	a4,a5,a4
   192c6:	a899                	j	1931c <__subtf3+0x4a2>
   192c8:	4290                	lw	a2,0(a3)
   192ca:	0785                	addi	a5,a5,1
   192cc:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   192ce:	8c51                	or	s0,s0,a2
   192d0:	b7f1                	j	1929c <__subtf3+0x422>
   192d2:	02000693          	li	a3,32
   192d6:	02d86833          	rem	a6,a6,a3
   192da:	41068833          	sub	a6,a3,a6
   192de:	86ba                	mv	a3,a4
   192e0:	00075363          	bgez	a4,192e6 <__subtf3+0x46c>
   192e4:	4681                	li	a3,0
   192e6:	068a                	slli	a3,a3,0x2
   192e8:	04068693          	addi	a3,a3,64
   192ec:	968a                	add	a3,a3,sp
   192ee:	fc06a683          	lw	a3,-64(a3)
   192f2:	95b2                	add	a1,a1,a2
   192f4:	4301                	li	t1,0
   192f6:	010696b3          	sll	a3,a3,a6
   192fa:	8c55                	or	s0,s0,a3
   192fc:	40c00633          	neg	a2,a2
   19300:	06f34a63          	blt	t1,a5,19374 <__subtf3+0x4fa>
   19304:	4691                	li	a3,4
   19306:	40e68733          	sub	a4,a3,a4
   1930a:	46b2                	lw	a3,12(sp)
   1930c:	078a                	slli	a5,a5,0x2
   1930e:	04078793          	addi	a5,a5,64
   19312:	978a                	add	a5,a5,sp
   19314:	0116d6b3          	srl	a3,a3,a7
   19318:	fcd7a023          	sw	a3,-64(a5)
   1931c:	00572793          	slti	a5,a4,5
   19320:	4601                	li	a2,0
   19322:	c781                	beqz	a5,1932a <__subtf3+0x4b0>
   19324:	4611                	li	a2,4
   19326:	8e19                	sub	a2,a2,a4
   19328:	060a                	slli	a2,a2,0x2
   1932a:	070a                	slli	a4,a4,0x2
   1932c:	953a                	add	a0,a0,a4
   1932e:	4581                	li	a1,0
   19330:	a9ff70ef          	jal	10dce <memset>
   19334:	4702                	lw	a4,0(sp)
   19336:	008037b3          	snez	a5,s0
   1933a:	8fd9                	or	a5,a5,a4
   1933c:	4692                	lw	a3,4(sp)
   1933e:	c03e                	sw	a5,0(sp)
   19340:	97a6                	add	a5,a5,s1
   19342:	9bb6                	add	s7,s7,a3
   19344:	4722                	lw	a4,8(sp)
   19346:	d03e                	sw	a5,32(sp)
   19348:	0097b7b3          	sltu	a5,a5,s1
   1934c:	97de                	add	a5,a5,s7
   1934e:	d23e                	sw	a5,36(sp)
   19350:	00dbb6b3          	sltu	a3,s7,a3
   19354:	0177b7b3          	sltu	a5,a5,s7
   19358:	9c3a                	add	s8,s8,a4
   1935a:	8fd5                	or	a5,a5,a3
   1935c:	97e2                	add	a5,a5,s8
   1935e:	d43e                	sw	a5,40(sp)
   19360:	00ec3733          	sltu	a4,s8,a4
   19364:	0187b7b3          	sltu	a5,a5,s8
   19368:	8f5d                	or	a4,a4,a5
   1936a:	47b2                	lw	a5,12(sp)
   1936c:	97da                	add	a5,a5,s6
   1936e:	973e                	add	a4,a4,a5
   19370:	87d6                	mv	a5,s5
   19372:	b36d                	j	1911c <__subtf3+0x2a2>
   19374:	4194                	lw	a3,0(a1)
   19376:	0045ae03          	lw	t3,4(a1)
   1937a:	00c58eb3          	add	t4,a1,a2
   1937e:	0116d6b3          	srl	a3,a3,a7
   19382:	010e1e33          	sll	t3,t3,a6
   19386:	01c6e6b3          	or	a3,a3,t3
   1938a:	00dea023          	sw	a3,0(t4)
   1938e:	0305                	addi	t1,t1,1
   19390:	0591                	addi	a1,a1,4
   19392:	b7bd                	j	19300 <__subtf3+0x486>
   19394:	00140793          	addi	a5,s0,1
   19398:	01179513          	slli	a0,a5,0x11
   1939c:	8149                	srli	a0,a0,0x12
   1939e:	4612                	lw	a2,4(sp)
   193a0:	46a2                	lw	a3,8(sp)
   193a2:	45b2                	lw	a1,12(sp)
   193a4:	10051c63          	bnez	a0,194bc <__subtf3+0x642>
   193a8:	00d667b3          	or	a5,a2,a3
   193ac:	8fcd                	or	a5,a5,a1
   193ae:	8fd9                	or	a5,a5,a4
   193b0:	e049                	bnez	s0,19432 <__subtf3+0x5b8>
   193b2:	e785                	bnez	a5,193da <__subtf3+0x560>
   193b4:	d026                	sw	s1,32(sp)
   193b6:	d25e                	sw	s7,36(sp)
   193b8:	d462                	sw	s8,40(sp)
   193ba:	d65a                	sw	s6,44(sp)
   193bc:	5782                	lw	a5,32(sp)
   193be:	5592                	lw	a1,36(sp)
   193c0:	5622                	lw	a2,40(sp)
   193c2:	56b2                	lw	a3,44(sp)
   193c4:	00b7e733          	or	a4,a5,a1
   193c8:	8f51                	or	a4,a4,a2
   193ca:	8f55                	or	a4,a4,a3
   193cc:	1a071de3          	bnez	a4,19d86 <__subtf3+0xf0c>
   193d0:	4781                	li	a5,0
   193d2:	4681                	li	a3,0
   193d4:	4401                	li	s0,0
   193d6:	21d0006f          	j	19df2 <__subtf3+0xf78>
   193da:	018be7b3          	or	a5,s7,s8
   193de:	0167e7b3          	or	a5,a5,s6
   193e2:	8fc5                	or	a5,a5,s1
   193e4:	e791                	bnez	a5,193f0 <__subtf3+0x576>
   193e6:	d03a                	sw	a4,32(sp)
   193e8:	d232                	sw	a2,36(sp)
   193ea:	d436                	sw	a3,40(sp)
   193ec:	d62e                	sw	a1,44(sp)
   193ee:	b7f9                	j	193bc <__subtf3+0x542>
   193f0:	94ba                	add	s1,s1,a4
   193f2:	9bb2                	add	s7,s7,a2
   193f4:	d026                	sw	s1,32(sp)
   193f6:	00e4b4b3          	sltu	s1,s1,a4
   193fa:	94de                	add	s1,s1,s7
   193fc:	d226                	sw	s1,36(sp)
   193fe:	00cbb633          	sltu	a2,s7,a2
   19402:	0174b4b3          	sltu	s1,s1,s7
   19406:	9c36                	add	s8,s8,a3
   19408:	8e45                	or	a2,a2,s1
   1940a:	9662                	add	a2,a2,s8
   1940c:	d432                	sw	a2,40(sp)
   1940e:	00dc36b3          	sltu	a3,s8,a3
   19412:	01863633          	sltu	a2,a2,s8
   19416:	8ed1                	or	a3,a3,a2
   19418:	95da                	add	a1,a1,s6
   1941a:	96ae                	add	a3,a3,a1
   1941c:	00c69793          	slli	a5,a3,0xc
   19420:	3207d2e3          	bgez	a5,19f44 <__subtf3+0x10ca>
   19424:	fff807b7          	lui	a5,0xfff80
   19428:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   1942a:	8efd                	and	a3,a3,a5
   1942c:	d636                	sw	a3,44(sp)
   1942e:	4785                	li	a5,1
   19430:	b3d9                	j	191f6 <__subtf3+0x37c>
   19432:	6521                	lui	a0,0x8
   19434:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19436:	04a41363          	bne	s0,a0,1947c <__subtf3+0x602>
   1943a:	300788e3          	beqz	a5,19f4a <__subtf3+0x10d0>
   1943e:	0125d413          	srli	s0,a1,0x12
   19442:	00144413          	xori	s0,s0,1
   19446:	8805                	andi	s0,s0,1
   19448:	0412                	slli	s0,s0,0x4
   1944a:	02aa9d63          	bne	s5,a0,19484 <__subtf3+0x60a>
   1944e:	018be533          	or	a0,s7,s8
   19452:	01656533          	or	a0,a0,s6
   19456:	8d45                	or	a0,a0,s1
   19458:	c50d                	beqz	a0,19482 <__subtf3+0x608>
   1945a:	00db1513          	slli	a0,s6,0xd
   1945e:	02054263          	bltz	a0,19482 <__subtf3+0x608>
   19462:	4441                	li	s0,16
   19464:	eb85                	bnez	a5,19494 <__subtf3+0x61a>
   19466:	8726                	mv	a4,s1
   19468:	865e                	mv	a2,s7
   1946a:	86e2                	mv	a3,s8
   1946c:	85da                	mv	a1,s6
   1946e:	d03a                	sw	a4,32(sp)
   19470:	d232                	sw	a2,36(sp)
   19472:	d436                	sw	a3,40(sp)
   19474:	d62e                	sw	a1,44(sp)
   19476:	67a1                	lui	a5,0x8
   19478:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1947a:	bbb5                	j	191f6 <__subtf3+0x37c>
   1947c:	4401                	li	s0,0
   1947e:	fcaa88e3          	beq	s5,a0,1944e <__subtf3+0x5d4>
   19482:	d3f5                	beqz	a5,19466 <__subtf3+0x5ec>
   19484:	018bebb3          	or	s7,s7,s8
   19488:	016bebb3          	or	s7,s7,s6
   1948c:	009bebb3          	or	s7,s7,s1
   19490:	fc0b8fe3          	beqz	s7,1946e <__subtf3+0x5f4>
   19494:	67a1                	lui	a5,0x8
   19496:	d63e                	sw	a5,44(sp)
   19498:	d402                	sw	zero,40(sp)
   1949a:	d202                	sw	zero,36(sp)
   1949c:	d002                	sw	zero,32(sp)
   1949e:	101c                	addi	a5,sp,32
   194a0:	0850                	addi	a2,sp,20
   194a2:	47d8                	lw	a4,12(a5)
   194a4:	4794                	lw	a3,8(a5)
   194a6:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   194a8:	070e                	slli	a4,a4,0x3
   194aa:	82f5                	srli	a3,a3,0x1d
   194ac:	8f55                	or	a4,a4,a3
   194ae:	cb98                	sw	a4,16(a5)
   194b0:	fef619e3          	bne	a2,a5,194a2 <__subtf3+0x628>
   194b4:	4981                	li	s3,0
   194b6:	b7c1                	j	19476 <__subtf3+0x5fc>
   194b8:	4401                	li	s0,0
   194ba:	bf51                	j	1944e <__subtf3+0x5d4>
   194bc:	94ba                	add	s1,s1,a4
   194be:	9bb2                	add	s7,s7,a2
   194c0:	d026                	sw	s1,32(sp)
   194c2:	00e4b4b3          	sltu	s1,s1,a4
   194c6:	94de                	add	s1,s1,s7
   194c8:	d226                	sw	s1,36(sp)
   194ca:	00cbb633          	sltu	a2,s7,a2
   194ce:	0174b4b3          	sltu	s1,s1,s7
   194d2:	9c36                	add	s8,s8,a3
   194d4:	8e45                	or	a2,a2,s1
   194d6:	9662                	add	a2,a2,s8
   194d8:	d432                	sw	a2,40(sp)
   194da:	00dc36b3          	sltu	a3,s8,a3
   194de:	01863633          	sltu	a2,a2,s8
   194e2:	8ed1                	or	a3,a3,a2
   194e4:	95da                	add	a1,a1,s6
   194e6:	96ae                	add	a3,a3,a1
   194e8:	d636                	sw	a3,44(sp)
   194ea:	1018                	addi	a4,sp,32
   194ec:	1068                	addi	a0,sp,44
   194ee:	4310                	lw	a2,0(a4)
   194f0:	434c                	lw	a1,4(a4)
   194f2:	8205                	srli	a2,a2,0x1
   194f4:	05fe                	slli	a1,a1,0x1f
   194f6:	8e4d                	or	a2,a2,a1
   194f8:	c310                	sw	a2,0(a4)
   194fa:	0711                	addi	a4,a4,4
   194fc:	fee519e3          	bne	a0,a4,194ee <__subtf3+0x674>
   19500:	6721                	lui	a4,0x8
   19502:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19504:	c6e782e3          	beq	a5,a4,19168 <__subtf3+0x2ee>
   19508:	8285                	srli	a3,a3,0x1
   1950a:	d636                	sw	a3,44(sp)
   1950c:	4401                	li	s0,0
   1950e:	b1e5                	j	191f6 <__subtf3+0x37c>
   19510:	4789                	li	a5,2
   19512:	c6fa12e3          	bne	s4,a5,19176 <__subtf3+0x2fc>
   19516:	c60980e3          	beqz	s3,19176 <__subtf3+0x2fc>
   1951a:	67a1                	lui	a5,0x8
   1951c:	d602                	sw	zero,44(sp)
   1951e:	d402                	sw	zero,40(sp)
   19520:	d202                	sw	zero,36(sp)
   19522:	d002                	sw	zero,32(sp)
   19524:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19526:	4415                	li	s0,5
   19528:	b1f9                	j	191f6 <__subtf3+0x37c>
   1952a:	22f05b63          	blez	a5,19760 <__subtf3+0x8e6>
   1952e:	4592                	lw	a1,4(sp)
   19530:	4522                	lw	a0,8(sp)
   19532:	48b2                	lw	a7,12(sp)
   19534:	0a0a9563          	bnez	s5,195de <__subtf3+0x764>
   19538:	4ed2                	lw	t4,20(sp)
   1953a:	4fe2                	lw	t6,24(sp)
   1953c:	4672                	lw	a2,28(sp)
   1953e:	01fee6b3          	or	a3,t4,t6
   19542:	8ed1                	or	a3,a3,a2
   19544:	8ec5                	or	a3,a3,s1
   19546:	e69d                	bnez	a3,19574 <__subtf3+0x6fa>
   19548:	66a1                	lui	a3,0x8
   1954a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1954c:	00d79f63          	bne	a5,a3,1956a <__subtf3+0x6f0>
   19550:	00a5e6b3          	or	a3,a1,a0
   19554:	0116e6b3          	or	a3,a3,a7
   19558:	8ed9                	or	a3,a3,a4
   1955a:	ca81                	beqz	a3,1956a <__subtf3+0x6f0>
   1955c:	0128da93          	srli	s5,a7,0x12
   19560:	001aca93          	xori	s5,s5,1
   19564:	001afa93          	andi	s5,s5,1
   19568:	0a92                	slli	s5,s5,0x4
   1956a:	d03a                	sw	a4,32(sp)
   1956c:	d22e                	sw	a1,36(sp)
   1956e:	d42a                	sw	a0,40(sp)
   19570:	d646                	sw	a7,44(sp)
   19572:	b435                	j	18f9e <__subtf3+0x124>
   19574:	fff78f13          	addi	t5,a5,-1
   19578:	040f1663          	bnez	t5,195c4 <__subtf3+0x74a>
   1957c:	409706b3          	sub	a3,a4,s1
   19580:	41d58833          	sub	a6,a1,t4
   19584:	00d73333          	sltu	t1,a4,a3
   19588:	0105b7b3          	sltu	a5,a1,a6
   1958c:	40680833          	sub	a6,a6,t1
   19590:	4301                	li	t1,0
   19592:	00d77663          	bgeu	a4,a3,1959e <__subtf3+0x724>
   19596:	40be8eb3          	sub	t4,t4,a1
   1959a:	001eb313          	seqz	t1,t4
   1959e:	00f36733          	or	a4,t1,a5
   195a2:	41f505b3          	sub	a1,a0,t6
   195a6:	00b53333          	sltu	t1,a0,a1
   195aa:	8d99                	sub	a1,a1,a4
   195ac:	c709                	beqz	a4,195b6 <__subtf3+0x73c>
   195ae:	40af87b3          	sub	a5,t6,a0
   195b2:	0017bf13          	seqz	t5,a5
   195b6:	40c88733          	sub	a4,a7,a2
   195ba:	006f67b3          	or	a5,t5,t1
   195be:	8f1d                	sub	a4,a4,a5
   195c0:	4785                	li	a5,1
   195c2:	aab9                	j	19720 <__subtf3+0x8a6>
   195c4:	66a1                	lui	a3,0x8
   195c6:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   195c8:	f8d784e3          	beq	a5,a3,19550 <__subtf3+0x6d6>
   195cc:	07400793          	li	a5,116
   195d0:	05e7d763          	bge	a5,t5,1961e <__subtf3+0x7a4>
   195d4:	ce02                	sw	zero,28(sp)
   195d6:	cc02                	sw	zero,24(sp)
   195d8:	ca02                	sw	zero,20(sp)
   195da:	4685                	li	a3,1
   195dc:	a8e5                	j	196d4 <__subtf3+0x85a>
   195de:	66a1                	lui	a3,0x8
   195e0:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   195e2:	02d41463          	bne	s0,a3,1960a <__subtf3+0x790>
   195e6:	00a5e7b3          	or	a5,a1,a0
   195ea:	0117e7b3          	or	a5,a5,a7
   195ee:	8fd9                	or	a5,a5,a4
   195f0:	4681                	li	a3,0
   195f2:	c799                	beqz	a5,19600 <__subtf3+0x786>
   195f4:	0128d693          	srli	a3,a7,0x12
   195f8:	0016c693          	xori	a3,a3,1
   195fc:	8a85                	andi	a3,a3,1
   195fe:	0692                	slli	a3,a3,0x4
   19600:	d03a                	sw	a4,32(sp)
   19602:	d22e                	sw	a1,36(sp)
   19604:	d42a                	sw	a0,40(sp)
   19606:	d646                	sw	a7,44(sp)
   19608:	bc09                	j	1901a <__subtf3+0x1a0>
   1960a:	46f2                	lw	a3,28(sp)
   1960c:	00080637          	lui	a2,0x80
   19610:	8ed1                	or	a3,a3,a2
   19612:	ce36                	sw	a3,28(sp)
   19614:	07400693          	li	a3,116
   19618:	faf6cee3          	blt	a3,a5,195d4 <__subtf3+0x75a>
   1961c:	8f3e                	mv	t5,a5
   1961e:	405f5793          	srai	a5,t5,0x5
   19622:	8342                	mv	t1,a6
   19624:	01ff7f13          	andi	t5,t5,31
   19628:	4681                	li	a3,0
   1962a:	4601                	li	a2,0
   1962c:	02f61663          	bne	a2,a5,19658 <__subtf3+0x7de>
   19630:	460d                	li	a2,3
   19632:	8e1d                	sub	a2,a2,a5
   19634:	00279313          	slli	t1,a5,0x2
   19638:	020f1763          	bnez	t5,19666 <__subtf3+0x7ec>
   1963c:	00680eb3          	add	t4,a6,t1
   19640:	000eae83          	lw	t4,0(t4)
   19644:	0f05                	addi	t5,t5,1
   19646:	0811                	addi	a6,a6,4
   19648:	ffd82e23          	sw	t4,-4(a6)
   1964c:	ffe658e3          	bge	a2,t5,1963c <__subtf3+0x7c2>
   19650:	4611                	li	a2,4
   19652:	40f607b3          	sub	a5,a2,a5
   19656:	a881                	j	196a6 <__subtf3+0x82c>
   19658:	00032e83          	lw	t4,0(t1)
   1965c:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   1965e:	0311                	addi	t1,t1,4
   19660:	01d6e6b3          	or	a3,a3,t4
   19664:	b7e1                	j	1962c <__subtf3+0x7b2>
   19666:	04030493          	addi	s1,t1,64
   1966a:	00248eb3          	add	t4,s1,sp
   1966e:	fd0eae83          	lw	t4,-48(t4)
   19672:	02000393          	li	t2,32
   19676:	41e383b3          	sub	t2,t2,t5
   1967a:	007e9eb3          	sll	t4,t4,t2
   1967e:	981a                	add	a6,a6,t1
   19680:	01d6e6b3          	or	a3,a3,t4
   19684:	40600333          	neg	t1,t1
   19688:	4f81                	li	t6,0
   1968a:	0acfca63          	blt	t6,a2,1973e <__subtf3+0x8c4>
   1968e:	4811                	li	a6,4
   19690:	40f807b3          	sub	a5,a6,a5
   19694:	4872                	lw	a6,28(sp)
   19696:	060a                	slli	a2,a2,0x2
   19698:	04060613          	addi	a2,a2,64
   1969c:	960a                	add	a2,a2,sp
   1969e:	01e85833          	srl	a6,a6,t5
   196a2:	fd062823          	sw	a6,-48(a2)
   196a6:	4611                	li	a2,4
   196a8:	8e1d                	sub	a2,a2,a5
   196aa:	060a                	slli	a2,a2,0x2
   196ac:	078a                	slli	a5,a5,0x2
   196ae:	4821                	li	a6,8
   196b0:	97f2                	add	a5,a5,t3
   196b2:	01066863          	bltu	a2,a6,196c2 <__subtf3+0x848>
   196b6:	0007a023          	sw	zero,0(a5)
   196ba:	0007a223          	sw	zero,4(a5)
   196be:	1661                	addi	a2,a2,-8
   196c0:	07a1                	addi	a5,a5,8
   196c2:	4811                	li	a6,4
   196c4:	01066463          	bltu	a2,a6,196cc <__subtf3+0x852>
   196c8:	0007a023          	sw	zero,0(a5)
   196cc:	47c2                	lw	a5,16(sp)
   196ce:	00d036b3          	snez	a3,a3
   196d2:	8edd                	or	a3,a3,a5
   196d4:	4652                	lw	a2,20(sp)
   196d6:	c836                	sw	a3,16(sp)
   196d8:	40d706b3          	sub	a3,a4,a3
   196dc:	40c58833          	sub	a6,a1,a2
   196e0:	00d737b3          	sltu	a5,a4,a3
   196e4:	0105b333          	sltu	t1,a1,a6
   196e8:	40f80833          	sub	a6,a6,a5
   196ec:	4781                	li	a5,0
   196ee:	00d77563          	bgeu	a4,a3,196f8 <__subtf3+0x87e>
   196f2:	8e0d                	sub	a2,a2,a1
   196f4:	00163793          	seqz	a5,a2
   196f8:	4762                	lw	a4,24(sp)
   196fa:	0067e7b3          	or	a5,a5,t1
   196fe:	4601                	li	a2,0
   19700:	40e505b3          	sub	a1,a0,a4
   19704:	00b53333          	sltu	t1,a0,a1
   19708:	8d9d                	sub	a1,a1,a5
   1970a:	c781                	beqz	a5,19712 <__subtf3+0x898>
   1970c:	8f09                	sub	a4,a4,a0
   1970e:	00173613          	seqz	a2,a4
   19712:	4772                	lw	a4,28(sp)
   19714:	00666633          	or	a2,a2,t1
   19718:	87a2                	mv	a5,s0
   1971a:	40e88733          	sub	a4,a7,a4
   1971e:	8f11                	sub	a4,a4,a2
   19720:	d036                	sw	a3,32(sp)
   19722:	d63a                	sw	a4,44(sp)
   19724:	d42e                	sw	a1,40(sp)
   19726:	d242                	sw	a6,36(sp)
   19728:	00c71693          	slli	a3,a4,0xc
   1972c:	de06d0e3          	bgez	a3,1950c <__subtf3+0x692>
   19730:	000806b7          	lui	a3,0x80
   19734:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x645a3>
   19736:	8f75                	and	a4,a4,a3
   19738:	d63a                	sw	a4,44(sp)
   1973a:	843e                	mv	s0,a5
   1973c:	a1bd                	j	19baa <__subtf3+0xd30>
   1973e:	00082e83          	lw	t4,0(a6)
   19742:	00482283          	lw	t0,4(a6)
   19746:	006804b3          	add	s1,a6,t1
   1974a:	01eedeb3          	srl	t4,t4,t5
   1974e:	007292b3          	sll	t0,t0,t2
   19752:	005eeeb3          	or	t4,t4,t0
   19756:	01d4a023          	sw	t4,0(s1)
   1975a:	0f85                	addi	t6,t6,1
   1975c:	0811                	addi	a6,a6,4
   1975e:	b735                	j	1968a <__subtf3+0x810>
   19760:	4bd2                	lw	s7,20(sp)
   19762:	4b62                	lw	s6,24(sp)
   19764:	4c72                	lw	s8,28(sp)
   19766:	20078763          	beqz	a5,19974 <__subtf3+0xafa>
   1976a:	408a87b3          	sub	a5,s5,s0
   1976e:	e05d                	bnez	s0,19814 <__subtf3+0x99a>
   19770:	4892                	lw	a7,4(sp)
   19772:	4e22                	lw	t3,8(sp)
   19774:	4632                	lw	a2,12(sp)
   19776:	01c8e6b3          	or	a3,a7,t3
   1977a:	8ed1                	or	a3,a3,a2
   1977c:	8ed9                	or	a3,a3,a4
   1977e:	e69d                	bnez	a3,197ac <__subtf3+0x932>
   19780:	6721                	lui	a4,0x8
   19782:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19784:	00e79e63          	bne	a5,a4,197a0 <__subtf3+0x926>
   19788:	016be733          	or	a4,s7,s6
   1978c:	01876733          	or	a4,a4,s8
   19790:	8f45                	or	a4,a4,s1
   19792:	c719                	beqz	a4,197a0 <__subtf3+0x926>
   19794:	012c5413          	srli	s0,s8,0x12
   19798:	00144413          	xori	s0,s0,1
   1979c:	8805                	andi	s0,s0,1
   1979e:	0412                	slli	s0,s0,0x4
   197a0:	d026                	sw	s1,32(sp)
   197a2:	d25e                	sw	s7,36(sp)
   197a4:	d45a                	sw	s6,40(sp)
   197a6:	d662                	sw	s8,44(sp)
   197a8:	89e6                	mv	s3,s9
   197aa:	b4b1                	j	191f6 <__subtf3+0x37c>
   197ac:	fff78313          	addi	t1,a5,-1
   197b0:	04031563          	bnez	t1,197fa <__subtf3+0x980>
   197b4:	40e486b3          	sub	a3,s1,a4
   197b8:	411b8833          	sub	a6,s7,a7
   197bc:	00d4b733          	sltu	a4,s1,a3
   197c0:	010bb7b3          	sltu	a5,s7,a6
   197c4:	40e80833          	sub	a6,a6,a4
   197c8:	4701                	li	a4,0
   197ca:	00d4f663          	bgeu	s1,a3,197d6 <__subtf3+0x95c>
   197ce:	417888b3          	sub	a7,a7,s7
   197d2:	0018b713          	seqz	a4,a7
   197d6:	41cb05b3          	sub	a1,s6,t3
   197da:	8f5d                	or	a4,a4,a5
   197dc:	00bb3533          	sltu	a0,s6,a1
   197e0:	8d99                	sub	a1,a1,a4
   197e2:	c709                	beqz	a4,197ec <__subtf3+0x972>
   197e4:	416e07b3          	sub	a5,t3,s6
   197e8:	0017b313          	seqz	t1,a5
   197ec:	40cc0733          	sub	a4,s8,a2
   197f0:	00a367b3          	or	a5,t1,a0
   197f4:	8f1d                	sub	a4,a4,a5
   197f6:	89e6                	mv	s3,s9
   197f8:	b3e1                	j	195c0 <__subtf3+0x746>
   197fa:	6721                	lui	a4,0x8
   197fc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   197fe:	f8e785e3          	beq	a5,a4,19788 <__subtf3+0x90e>
   19802:	07400793          	li	a5,116
   19806:	0467d863          	bge	a5,t1,19856 <__subtf3+0x9dc>
   1980a:	c602                	sw	zero,12(sp)
   1980c:	c402                	sw	zero,8(sp)
   1980e:	c202                	sw	zero,4(sp)
   19810:	4685                	li	a3,1
   19812:	a8cd                	j	19904 <__subtf3+0xa8a>
   19814:	6721                	lui	a4,0x8
   19816:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19818:	02ea9563          	bne	s5,a4,19842 <__subtf3+0x9c8>
   1981c:	016be7b3          	or	a5,s7,s6
   19820:	0187e7b3          	or	a5,a5,s8
   19824:	8fc5                	or	a5,a5,s1
   19826:	4401                	li	s0,0
   19828:	c799                	beqz	a5,19836 <__subtf3+0x9bc>
   1982a:	012c5413          	srli	s0,s8,0x12
   1982e:	00144413          	xori	s0,s0,1
   19832:	8805                	andi	s0,s0,1
   19834:	0412                	slli	s0,s0,0x4
   19836:	d026                	sw	s1,32(sp)
   19838:	d25e                	sw	s7,36(sp)
   1983a:	d45a                	sw	s6,40(sp)
   1983c:	d662                	sw	s8,44(sp)
   1983e:	87d6                	mv	a5,s5
   19840:	b7a5                	j	197a8 <__subtf3+0x92e>
   19842:	4732                	lw	a4,12(sp)
   19844:	000806b7          	lui	a3,0x80
   19848:	8f55                	or	a4,a4,a3
   1984a:	c63a                	sw	a4,12(sp)
   1984c:	07400713          	li	a4,116
   19850:	faf74de3          	blt	a4,a5,1980a <__subtf3+0x990>
   19854:	833e                	mv	t1,a5
   19856:	02000793          	li	a5,32
   1985a:	02f347b3          	div	a5,t1,a5
   1985e:	86ae                	mv	a3,a1
   19860:	4401                	li	s0,0
   19862:	4701                	li	a4,0
   19864:	02f74663          	blt	a4,a5,19890 <__subtf3+0xa16>
   19868:	470d                	li	a4,3
   1986a:	01f37813          	andi	a6,t1,31
   1986e:	8f1d                	sub	a4,a4,a5
   19870:	00279613          	slli	a2,a5,0x2
   19874:	02081363          	bnez	a6,1989a <__subtf3+0xa20>
   19878:	00c586b3          	add	a3,a1,a2
   1987c:	4294                	lw	a3,0(a3)
   1987e:	0805                	addi	a6,a6,1
   19880:	c194                	sw	a3,0(a1)
   19882:	0591                	addi	a1,a1,4
   19884:	ff075ae3          	bge	a4,a6,19878 <__subtf3+0x9fe>
   19888:	4711                	li	a4,4
   1988a:	40f707b3          	sub	a5,a4,a5
   1988e:	a899                	j	198e4 <__subtf3+0xa6a>
   19890:	4290                	lw	a2,0(a3)
   19892:	0705                	addi	a4,a4,1
   19894:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   19896:	8c51                	or	s0,s0,a2
   19898:	b7f1                	j	19864 <__subtf3+0x9ea>
   1989a:	02000693          	li	a3,32
   1989e:	02d36333          	rem	t1,t1,a3
   198a2:	40668333          	sub	t1,a3,t1
   198a6:	86be                	mv	a3,a5
   198a8:	0007d363          	bgez	a5,198ae <__subtf3+0xa34>
   198ac:	4681                	li	a3,0
   198ae:	068a                	slli	a3,a3,0x2
   198b0:	04068693          	addi	a3,a3,64
   198b4:	968a                	add	a3,a3,sp
   198b6:	fc06a683          	lw	a3,-64(a3)
   198ba:	95b2                	add	a1,a1,a2
   198bc:	4881                	li	a7,0
   198be:	006696b3          	sll	a3,a3,t1
   198c2:	8c55                	or	s0,s0,a3
   198c4:	40c00633          	neg	a2,a2
   198c8:	08e8c663          	blt	a7,a4,19954 <__subtf3+0xada>
   198cc:	4691                	li	a3,4
   198ce:	40f687b3          	sub	a5,a3,a5
   198d2:	46b2                	lw	a3,12(sp)
   198d4:	070a                	slli	a4,a4,0x2
   198d6:	04070713          	addi	a4,a4,64
   198da:	970a                	add	a4,a4,sp
   198dc:	0106d6b3          	srl	a3,a3,a6
   198e0:	fcd72023          	sw	a3,-64(a4)
   198e4:	0057a713          	slti	a4,a5,5
   198e8:	4601                	li	a2,0
   198ea:	c701                	beqz	a4,198f2 <__subtf3+0xa78>
   198ec:	4611                	li	a2,4
   198ee:	8e1d                	sub	a2,a2,a5
   198f0:	060a                	slli	a2,a2,0x2
   198f2:	078a                	slli	a5,a5,0x2
   198f4:	953e                	add	a0,a0,a5
   198f6:	4581                	li	a1,0
   198f8:	cd6f70ef          	jal	10dce <memset>
   198fc:	4782                	lw	a5,0(sp)
   198fe:	008036b3          	snez	a3,s0
   19902:	8edd                	or	a3,a3,a5
   19904:	4712                	lw	a4,4(sp)
   19906:	c036                	sw	a3,0(sp)
   19908:	40d486b3          	sub	a3,s1,a3
   1990c:	40eb8833          	sub	a6,s7,a4
   19910:	00d4b7b3          	sltu	a5,s1,a3
   19914:	010bb633          	sltu	a2,s7,a6
   19918:	40f80833          	sub	a6,a6,a5
   1991c:	4781                	li	a5,0
   1991e:	00d4f663          	bgeu	s1,a3,1992a <__subtf3+0xab0>
   19922:	41770733          	sub	a4,a4,s7
   19926:	00173793          	seqz	a5,a4
   1992a:	4722                	lw	a4,8(sp)
   1992c:	8fd1                	or	a5,a5,a2
   1992e:	4601                	li	a2,0
   19930:	40eb05b3          	sub	a1,s6,a4
   19934:	00bb3533          	sltu	a0,s6,a1
   19938:	8d9d                	sub	a1,a1,a5
   1993a:	c789                	beqz	a5,19944 <__subtf3+0xaca>
   1993c:	41670733          	sub	a4,a4,s6
   19940:	00173613          	seqz	a2,a4
   19944:	4732                	lw	a4,12(sp)
   19946:	8e49                	or	a2,a2,a0
   19948:	87d6                	mv	a5,s5
   1994a:	40ec0733          	sub	a4,s8,a4
   1994e:	8f11                	sub	a4,a4,a2
   19950:	89e6                	mv	s3,s9
   19952:	b3f9                	j	19720 <__subtf3+0x8a6>
   19954:	4194                	lw	a3,0(a1)
   19956:	0045ae03          	lw	t3,4(a1)
   1995a:	00c58eb3          	add	t4,a1,a2
   1995e:	0106d6b3          	srl	a3,a3,a6
   19962:	006e1e33          	sll	t3,t3,t1
   19966:	01c6e6b3          	or	a3,a3,t3
   1996a:	00dea023          	sw	a3,0(t4)
   1996e:	0885                	addi	a7,a7,1
   19970:	0591                	addi	a1,a1,4
   19972:	bf99                	j	198c8 <__subtf3+0xa4e>
   19974:	00140693          	addi	a3,s0,1
   19978:	01169813          	slli	a6,a3,0x11
   1997c:	01285813          	srli	a6,a6,0x12
   19980:	4612                	lw	a2,4(sp)
   19982:	45a2                	lw	a1,8(sp)
   19984:	4532                	lw	a0,12(sp)
   19986:	18081363          	bnez	a6,19b0c <__subtf3+0xc92>
   1998a:	016be7b3          	or	a5,s7,s6
   1998e:	00b666b3          	or	a3,a2,a1
   19992:	0187e7b3          	or	a5,a5,s8
   19996:	8ec9                	or	a3,a3,a0
   19998:	8fc5                	or	a5,a5,s1
   1999a:	8ed9                	or	a3,a3,a4
   1999c:	e869                	bnez	s0,19a6e <__subtf3+0xbf4>
   1999e:	ea99                	bnez	a3,199b4 <__subtf3+0xb3a>
   199a0:	d026                	sw	s1,32(sp)
   199a2:	d25e                	sw	s7,36(sp)
   199a4:	d45a                	sw	s6,40(sp)
   199a6:	d662                	sw	s8,44(sp)
   199a8:	ebcd                	bnez	a5,19a5a <__subtf3+0xbe0>
   199aa:	ffea0993          	addi	s3,s4,-2
   199ae:	0019b993          	seqz	s3,s3
   199b2:	b429                	j	193bc <__subtf3+0x542>
   199b4:	e791                	bnez	a5,199c0 <__subtf3+0xb46>
   199b6:	d03a                	sw	a4,32(sp)
   199b8:	d232                	sw	a2,36(sp)
   199ba:	d42e                	sw	a1,40(sp)
   199bc:	d62a                	sw	a0,44(sp)
   199be:	bafd                	j	193bc <__subtf3+0x542>
   199c0:	409707b3          	sub	a5,a4,s1
   199c4:	41760e33          	sub	t3,a2,s7
   199c8:	00f73833          	sltu	a6,a4,a5
   199cc:	01c638b3          	sltu	a7,a2,t3
   199d0:	410e0833          	sub	a6,t3,a6
   199d4:	4681                	li	a3,0
   199d6:	00f77463          	bgeu	a4,a5,199de <__subtf3+0xb64>
   199da:	001e3693          	seqz	a3,t3
   199de:	0116e6b3          	or	a3,a3,a7
   199e2:	416588b3          	sub	a7,a1,s6
   199e6:	0115bf33          	sltu	t5,a1,a7
   199ea:	40d88eb3          	sub	t4,a7,a3
   199ee:	4301                	li	t1,0
   199f0:	c299                	beqz	a3,199f6 <__subtf3+0xb7c>
   199f2:	0018b313          	seqz	t1,a7
   199f6:	01e36333          	or	t1,t1,t5
   199fa:	418506b3          	sub	a3,a0,s8
   199fe:	406686b3          	sub	a3,a3,t1
   19a02:	d636                	sw	a3,44(sp)
   19a04:	d476                	sw	t4,40(sp)
   19a06:	d242                	sw	a6,36(sp)
   19a08:	d03e                	sw	a5,32(sp)
   19a0a:	00c69313          	slli	t1,a3,0xc
   19a0e:	04035863          	bgez	t1,19a5e <__subtf3+0xbe4>
   19a12:	40e48733          	sub	a4,s1,a4
   19a16:	40cb8633          	sub	a2,s7,a2
   19a1a:	00e4b7b3          	sltu	a5,s1,a4
   19a1e:	00cbbbb3          	sltu	s7,s7,a2
   19a22:	8e1d                	sub	a2,a2,a5
   19a24:	4781                	li	a5,0
   19a26:	00e4f463          	bgeu	s1,a4,19a2e <__subtf3+0xbb4>
   19a2a:	001e3793          	seqz	a5,t3
   19a2e:	40bb05b3          	sub	a1,s6,a1
   19a32:	0177ebb3          	or	s7,a5,s7
   19a36:	00bb3b33          	sltu	s6,s6,a1
   19a3a:	417585b3          	sub	a1,a1,s7
   19a3e:	000b8463          	beqz	s7,19a46 <__subtf3+0xbcc>
   19a42:	0018b413          	seqz	s0,a7
   19a46:	40ac0533          	sub	a0,s8,a0
   19a4a:	01646b33          	or	s6,s0,s6
   19a4e:	41650533          	sub	a0,a0,s6
   19a52:	d62a                	sw	a0,44(sp)
   19a54:	d42e                	sw	a1,40(sp)
   19a56:	d232                	sw	a2,36(sp)
   19a58:	d03a                	sw	a4,32(sp)
   19a5a:	89e6                	mv	s3,s9
   19a5c:	b285                	j	193bc <__subtf3+0x542>
   19a5e:	0107e7b3          	or	a5,a5,a6
   19a62:	01d7e7b3          	or	a5,a5,t4
   19a66:	8fd5                	or	a5,a5,a3
   19a68:	94079ae3          	bnez	a5,193bc <__subtf3+0x542>
   19a6c:	bf3d                	j	199aa <__subtf3+0xb30>
   19a6e:	6821                	lui	a6,0x8
   19a70:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   19a72:	03041263          	bne	s0,a6,19a96 <__subtf3+0xc1c>
   19a76:	4c068f63          	beqz	a3,19f54 <__subtf3+0x10da>
   19a7a:	01255413          	srli	s0,a0,0x12
   19a7e:	00144413          	xori	s0,s0,1
   19a82:	8805                	andi	s0,s0,1
   19a84:	0412                	slli	s0,s0,0x4
   19a86:	010a8b63          	beq	s5,a6,19a9c <__subtf3+0xc22>
   19a8a:	ebb1                	bnez	a5,19ade <__subtf3+0xc64>
   19a8c:	d03a                	sw	a4,32(sp)
   19a8e:	d232                	sw	a2,36(sp)
   19a90:	d42e                	sw	a1,40(sp)
   19a92:	d62a                	sw	a0,44(sp)
   19a94:	b2cd                	j	19476 <__subtf3+0x5fc>
   19a96:	4401                	li	s0,0
   19a98:	010a9363          	bne	s5,a6,19a9e <__subtf3+0xc24>
   19a9c:	eb9d                	bnez	a5,19ad2 <__subtf3+0xc58>
   19a9e:	f6f5                	bnez	a3,19a8a <__subtf3+0xc10>
   19aa0:	e3a5                	bnez	a5,19b00 <__subtf3+0xc86>
   19aa2:	67a1                	lui	a5,0x8
   19aa4:	d63e                	sw	a5,44(sp)
   19aa6:	d402                	sw	zero,40(sp)
   19aa8:	d202                	sw	zero,36(sp)
   19aaa:	d002                	sw	zero,32(sp)
   19aac:	101c                	addi	a5,sp,32
   19aae:	0850                	addi	a2,sp,20
   19ab0:	47d8                	lw	a4,12(a5)
   19ab2:	4794                	lw	a3,8(a5)
   19ab4:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19ab6:	070e                	slli	a4,a4,0x3
   19ab8:	82f5                	srli	a3,a3,0x1d
   19aba:	8f55                	or	a4,a4,a3
   19abc:	cb98                	sw	a4,16(a5)
   19abe:	fef619e3          	bne	a2,a5,19ab0 <__subtf3+0xc36>
   19ac2:	67a1                	lui	a5,0x8
   19ac4:	4981                	li	s3,0
   19ac6:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19ac8:	4441                	li	s0,16
   19aca:	f2cff06f          	j	191f6 <__subtf3+0x37c>
   19ace:	4401                	li	s0,0
   19ad0:	b7f1                	j	19a9c <__subtf3+0xc22>
   19ad2:	00dc1813          	slli	a6,s8,0xd
   19ad6:	fc0844e3          	bltz	a6,19a9e <__subtf3+0xc24>
   19ada:	4441                	li	s0,16
   19adc:	c295                	beqz	a3,19b00 <__subtf3+0xc86>
   19ade:	67a1                	lui	a5,0x8
   19ae0:	d63e                	sw	a5,44(sp)
   19ae2:	d402                	sw	zero,40(sp)
   19ae4:	d202                	sw	zero,36(sp)
   19ae6:	d002                	sw	zero,32(sp)
   19ae8:	101c                	addi	a5,sp,32
   19aea:	0850                	addi	a2,sp,20
   19aec:	47d8                	lw	a4,12(a5)
   19aee:	4794                	lw	a3,8(a5)
   19af0:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19af2:	070e                	slli	a4,a4,0x3
   19af4:	82f5                	srli	a3,a3,0x1d
   19af6:	8f55                	or	a4,a4,a3
   19af8:	cb98                	sw	a4,16(a5)
   19afa:	fef619e3          	bne	a2,a5,19aec <__subtf3+0xc72>
   19afe:	ba5d                	j	194b4 <__subtf3+0x63a>
   19b00:	d026                	sw	s1,32(sp)
   19b02:	d25e                	sw	s7,36(sp)
   19b04:	d45a                	sw	s6,40(sp)
   19b06:	d662                	sw	s8,44(sp)
   19b08:	89e6                	mv	s3,s9
   19b0a:	b2b5                	j	19476 <__subtf3+0x5fc>
   19b0c:	409706b3          	sub	a3,a4,s1
   19b10:	41760e33          	sub	t3,a2,s7
   19b14:	00d73eb3          	sltu	t4,a4,a3
   19b18:	01c638b3          	sltu	a7,a2,t3
   19b1c:	41de0eb3          	sub	t4,t3,t4
   19b20:	4801                	li	a6,0
   19b22:	00d77463          	bgeu	a4,a3,19b2a <__subtf3+0xcb0>
   19b26:	001e3813          	seqz	a6,t3
   19b2a:	01186833          	or	a6,a6,a7
   19b2e:	416588b3          	sub	a7,a1,s6
   19b32:	0115bf33          	sltu	t5,a1,a7
   19b36:	41088fb3          	sub	t6,a7,a6
   19b3a:	4301                	li	t1,0
   19b3c:	00080463          	beqz	a6,19b44 <__subtf3+0xcca>
   19b40:	0018b313          	seqz	t1,a7
   19b44:	01e36333          	or	t1,t1,t5
   19b48:	41850833          	sub	a6,a0,s8
   19b4c:	40680833          	sub	a6,a6,t1
   19b50:	d642                	sw	a6,44(sp)
   19b52:	d47e                	sw	t6,40(sp)
   19b54:	d276                	sw	t4,36(sp)
   19b56:	d036                	sw	a3,32(sp)
   19b58:	00c81313          	slli	t1,a6,0xc
   19b5c:	10035163          	bgez	t1,19c5e <__subtf3+0xde4>
   19b60:	40e48733          	sub	a4,s1,a4
   19b64:	40cb8633          	sub	a2,s7,a2
   19b68:	00e4b6b3          	sltu	a3,s1,a4
   19b6c:	00cbbbb3          	sltu	s7,s7,a2
   19b70:	8e15                	sub	a2,a2,a3
   19b72:	4681                	li	a3,0
   19b74:	00e4f463          	bgeu	s1,a4,19b7c <__subtf3+0xd02>
   19b78:	001e3693          	seqz	a3,t3
   19b7c:	40bb05b3          	sub	a1,s6,a1
   19b80:	0176ebb3          	or	s7,a3,s7
   19b84:	00bb3b33          	sltu	s6,s6,a1
   19b88:	417585b3          	sub	a1,a1,s7
   19b8c:	000b8463          	beqz	s7,19b94 <__subtf3+0xd1a>
   19b90:	0018b793          	seqz	a5,a7
   19b94:	40ac0533          	sub	a0,s8,a0
   19b98:	0167eb33          	or	s6,a5,s6
   19b9c:	41650533          	sub	a0,a0,s6
   19ba0:	d62a                	sw	a0,44(sp)
   19ba2:	d42e                	sw	a1,40(sp)
   19ba4:	d232                	sw	a2,36(sp)
   19ba6:	d03a                	sw	a4,32(sp)
   19ba8:	89e6                	mv	s3,s9
   19baa:	5532                	lw	a0,44(sp)
   19bac:	c169                	beqz	a0,19c6e <__subtf3+0xdf4>
   19bae:	7dc000ef          	jal	1a38a <__clzsi2>
   19bb2:	ff450793          	addi	a5,a0,-12
   19bb6:	02000693          	li	a3,32
   19bba:	01f7f813          	andi	a6,a5,31
   19bbe:	02d7c733          	div	a4,a5,a3
   19bc2:	0c080763          	beqz	a6,19c90 <__subtf3+0xe16>
   19bc6:	02010313          	addi	t1,sp,32
   19bca:	02d7e633          	rem	a2,a5,a3
   19bce:	40c685b3          	sub	a1,a3,a2
   19bd2:	5671                	li	a2,-4
   19bd4:	02c70633          	mul	a2,a4,a2
   19bd8:	00c60693          	addi	a3,a2,12
   19bdc:	969a                	add	a3,a3,t1
   19bde:	40c00633          	neg	a2,a2
   19be2:	0cd31763          	bne	t1,a3,19cb0 <__subtf3+0xe36>
   19be6:	5602                	lw	a2,32(sp)
   19be8:	fff70693          	addi	a3,a4,-1
   19bec:	070a                	slli	a4,a4,0x2
   19bee:	04070713          	addi	a4,a4,64
   19bf2:	970a                	add	a4,a4,sp
   19bf4:	01061633          	sll	a2,a2,a6
   19bf8:	fec72023          	sw	a2,-32(a4)
   19bfc:	00168713          	addi	a4,a3,1
   19c00:	070a                	slli	a4,a4,0x2
   19c02:	1014                	addi	a3,sp,32
   19c04:	4621                	li	a2,8
   19c06:	88b6                	mv	a7,a3
   19c08:	00c76863          	bltu	a4,a2,19c18 <__subtf3+0xd9e>
   19c0c:	0006a023          	sw	zero,0(a3)
   19c10:	0006a223          	sw	zero,4(a3)
   19c14:	1761                	addi	a4,a4,-8
   19c16:	1034                	addi	a3,sp,40
   19c18:	4611                	li	a2,4
   19c1a:	00c76463          	bltu	a4,a2,19c22 <__subtf3+0xda8>
   19c1e:	0006a023          	sw	zero,0(a3)
   19c22:	1487c863          	blt	a5,s0,19d72 <__subtf3+0xef8>
   19c26:	8f81                	sub	a5,a5,s0
   19c28:	0785                	addi	a5,a5,1
   19c2a:	4057d713          	srai	a4,a5,0x5
   19c2e:	85c6                	mv	a1,a7
   19c30:	8bfd                	andi	a5,a5,31
   19c32:	8646                	mv	a2,a7
   19c34:	4301                	li	t1,0
   19c36:	4681                	li	a3,0
   19c38:	08e69b63          	bne	a3,a4,19cce <__subtf3+0xe54>
   19c3c:	468d                	li	a3,3
   19c3e:	8e99                	sub	a3,a3,a4
   19c40:	00271613          	slli	a2,a4,0x2
   19c44:	ebd9                	bnez	a5,19cda <__subtf3+0xe60>
   19c46:	00c58533          	add	a0,a1,a2
   19c4a:	4108                	lw	a0,0(a0)
   19c4c:	0785                	addi	a5,a5,1
   19c4e:	c188                	sw	a0,0(a1)
   19c50:	0591                	addi	a1,a1,4
   19c52:	fef6dae3          	bge	a3,a5,19c46 <__subtf3+0xdcc>
   19c56:	4791                	li	a5,4
   19c58:	40e78733          	sub	a4,a5,a4
   19c5c:	a87d                	j	19d1a <__subtf3+0xea0>
   19c5e:	01d6e6b3          	or	a3,a3,t4
   19c62:	01f6e6b3          	or	a3,a3,t6
   19c66:	0106e6b3          	or	a3,a3,a6
   19c6a:	f2a1                	bnez	a3,19baa <__subtf3+0xd30>
   19c6c:	bb3d                	j	199aa <__subtf3+0xb30>
   19c6e:	5522                	lw	a0,40(sp)
   19c70:	c509                	beqz	a0,19c7a <__subtf3+0xe00>
   19c72:	2f21                	jal	1a38a <__clzsi2>
   19c74:	02050513          	addi	a0,a0,32
   19c78:	bf2d                	j	19bb2 <__subtf3+0xd38>
   19c7a:	5512                	lw	a0,36(sp)
   19c7c:	c509                	beqz	a0,19c86 <__subtf3+0xe0c>
   19c7e:	2731                	jal	1a38a <__clzsi2>
   19c80:	04050513          	addi	a0,a0,64
   19c84:	b73d                	j	19bb2 <__subtf3+0xd38>
   19c86:	5502                	lw	a0,32(sp)
   19c88:	2709                	jal	1a38a <__clzsi2>
   19c8a:	06050513          	addi	a0,a0,96
   19c8e:	b715                	j	19bb2 <__subtf3+0xd38>
   19c90:	55f1                	li	a1,-4
   19c92:	02b705b3          	mul	a1,a4,a1
   19c96:	1074                	addi	a3,sp,44
   19c98:	460d                	li	a2,3
   19c9a:	00b68533          	add	a0,a3,a1
   19c9e:	4108                	lw	a0,0(a0)
   19ca0:	167d                	addi	a2,a2,-1
   19ca2:	16f1                	addi	a3,a3,-4
   19ca4:	c2c8                	sw	a0,4(a3)
   19ca6:	fee65ae3          	bge	a2,a4,19c9a <__subtf3+0xe20>
   19caa:	fff70693          	addi	a3,a4,-1
   19cae:	b7b9                	j	19bfc <__subtf3+0xd82>
   19cb0:	4288                	lw	a0,0(a3)
   19cb2:	ffc6a883          	lw	a7,-4(a3)
   19cb6:	00c68e33          	add	t3,a3,a2
   19cba:	01051533          	sll	a0,a0,a6
   19cbe:	00b8d8b3          	srl	a7,a7,a1
   19cc2:	01156533          	or	a0,a0,a7
   19cc6:	00ae2023          	sw	a0,0(t3)
   19cca:	16f1                	addi	a3,a3,-4
   19ccc:	bf19                	j	19be2 <__subtf3+0xd68>
   19cce:	4208                	lw	a0,0(a2)
   19cd0:	0685                	addi	a3,a3,1
   19cd2:	0611                	addi	a2,a2,4
   19cd4:	00a36333          	or	t1,t1,a0
   19cd8:	b785                	j	19c38 <__subtf3+0xdbe>
   19cda:	04060593          	addi	a1,a2,64
   19cde:	958a                	add	a1,a1,sp
   19ce0:	fe05a583          	lw	a1,-32(a1)
   19ce4:	02000813          	li	a6,32
   19ce8:	40f80833          	sub	a6,a6,a5
   19cec:	010595b3          	sll	a1,a1,a6
   19cf0:	00b36333          	or	t1,t1,a1
   19cf4:	4e01                	li	t3,0
   19cf6:	00c885b3          	add	a1,a7,a2
   19cfa:	40c00633          	neg	a2,a2
   19cfe:	04de4a63          	blt	t3,a3,19d52 <__subtf3+0xed8>
   19d02:	4611                	li	a2,4
   19d04:	40e60733          	sub	a4,a2,a4
   19d08:	5632                	lw	a2,44(sp)
   19d0a:	068a                	slli	a3,a3,0x2
   19d0c:	04068693          	addi	a3,a3,64
   19d10:	968a                	add	a3,a3,sp
   19d12:	00f657b3          	srl	a5,a2,a5
   19d16:	fef6a023          	sw	a5,-32(a3)
   19d1a:	4691                	li	a3,4
   19d1c:	8e99                	sub	a3,a3,a4
   19d1e:	070a                	slli	a4,a4,0x2
   19d20:	00e887b3          	add	a5,a7,a4
   19d24:	00269713          	slli	a4,a3,0x2
   19d28:	46a1                	li	a3,8
   19d2a:	00d76863          	bltu	a4,a3,19d3a <__subtf3+0xec0>
   19d2e:	0007a023          	sw	zero,0(a5)
   19d32:	0007a223          	sw	zero,4(a5)
   19d36:	1761                	addi	a4,a4,-8
   19d38:	07a1                	addi	a5,a5,8
   19d3a:	4691                	li	a3,4
   19d3c:	00d76463          	bltu	a4,a3,19d44 <__subtf3+0xeca>
   19d40:	0007a023          	sw	zero,0(a5)
   19d44:	5702                	lw	a4,32(sp)
   19d46:	006037b3          	snez	a5,t1
   19d4a:	8fd9                	or	a5,a5,a4
   19d4c:	d03e                	sw	a5,32(sp)
   19d4e:	e6eff06f          	j	193bc <__subtf3+0x542>
   19d52:	4188                	lw	a0,0(a1)
   19d54:	0045ae83          	lw	t4,4(a1)
   19d58:	00c58f33          	add	t5,a1,a2
   19d5c:	00f55533          	srl	a0,a0,a5
   19d60:	010e9eb3          	sll	t4,t4,a6
   19d64:	01d56533          	or	a0,a0,t4
   19d68:	00af2023          	sw	a0,0(t5)
   19d6c:	0e05                	addi	t3,t3,1
   19d6e:	0591                	addi	a1,a1,4
   19d70:	b779                	j	19cfe <__subtf3+0xe84>
   19d72:	5732                	lw	a4,44(sp)
   19d74:	fff806b7          	lui	a3,0xfff80
   19d78:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19d7a:	8f75                	and	a4,a4,a3
   19d7c:	40f407b3          	sub	a5,s0,a5
   19d80:	d63a                	sw	a4,44(sp)
   19d82:	f8aff06f          	j	1950c <__subtf3+0x692>
   19d86:	da2e                	sw	a1,52(sp)
   19d88:	d83e                	sw	a5,48(sp)
   19d8a:	dc32                	sw	a2,56(sp)
   19d8c:	de36                	sw	a3,60(sp)
   19d8e:	1818                	addi	a4,sp,48
   19d90:	104c                	addi	a1,sp,36
   19d92:	4754                	lw	a3,12(a4)
   19d94:	4710                	lw	a2,8(a4)
   19d96:	1771                	addi	a4,a4,-4
   19d98:	0686                	slli	a3,a3,0x1
   19d9a:	827d                	srli	a2,a2,0x1f
   19d9c:	8ed1                	or	a3,a3,a2
   19d9e:	cb14                	sw	a3,16(a4)
   19da0:	fee599e3          	bne	a1,a4,19d92 <__subtf3+0xf18>
   19da4:	0786                	slli	a5,a5,0x1
   19da6:	0077f713          	andi	a4,a5,7
   19daa:	4401                	li	s0,0
   19dac:	cf0d                	beqz	a4,19de6 <__subtf3+0xf6c>
   19dae:	4709                	li	a4,2
   19db0:	56f2                	lw	a3,60(sp)
   19db2:	14ea0463          	beq	s4,a4,19efa <__subtf3+0x1080>
   19db6:	470d                	li	a4,3
   19db8:	12ea0b63          	beq	s4,a4,19eee <__subtf3+0x1074>
   19dbc:	020a1463          	bnez	s4,19de4 <__subtf3+0xf6a>
   19dc0:	00f7f713          	andi	a4,a5,15
   19dc4:	4611                	li	a2,4
   19dc6:	00c70f63          	beq	a4,a2,19de4 <__subtf3+0xf6a>
   19dca:	0791                	addi	a5,a5,4
   19dcc:	0047b793          	sltiu	a5,a5,4
   19dd0:	5752                	lw	a4,52(sp)
   19dd2:	973e                	add	a4,a4,a5
   19dd4:	00f73733          	sltu	a4,a4,a5
   19dd8:	57e2                	lw	a5,56(sp)
   19dda:	97ba                	add	a5,a5,a4
   19ddc:	00e7b7b3          	sltu	a5,a5,a4
   19de0:	97b6                	add	a5,a5,a3
   19de2:	de3e                	sw	a5,60(sp)
   19de4:	4405                	li	s0,1
   19de6:	56f2                	lw	a3,60(sp)
   19de8:	4781                	li	a5,0
   19dea:	82d1                	srli	a3,a3,0x14
   19dec:	0016c693          	xori	a3,a3,1
   19df0:	8a85                	andi	a3,a3,1
   19df2:	5702                	lw	a4,32(sp)
   19df4:	00777613          	andi	a2,a4,7
   19df8:	c229                	beqz	a2,19e3a <__subtf3+0xfc0>
   19dfa:	4589                	li	a1,2
   19dfc:	5632                	lw	a2,44(sp)
   19dfe:	10ba0863          	beq	s4,a1,19f0e <__subtf3+0x1094>
   19e02:	458d                	li	a1,3
   19e04:	0eba0e63          	beq	s4,a1,19f00 <__subtf3+0x1086>
   19e08:	020a1763          	bnez	s4,19e36 <__subtf3+0xfbc>
   19e0c:	00f77593          	andi	a1,a4,15
   19e10:	4511                	li	a0,4
   19e12:	02a58263          	beq	a1,a0,19e36 <__subtf3+0xfbc>
   19e16:	0711                	addi	a4,a4,4
   19e18:	d03a                	sw	a4,32(sp)
   19e1a:	00473713          	sltiu	a4,a4,4
   19e1e:	5592                	lw	a1,36(sp)
   19e20:	972e                	add	a4,a4,a1
   19e22:	d23a                	sw	a4,36(sp)
   19e24:	00b73733          	sltu	a4,a4,a1
   19e28:	55a2                	lw	a1,40(sp)
   19e2a:	972e                	add	a4,a4,a1
   19e2c:	d43a                	sw	a4,40(sp)
   19e2e:	00b73733          	sltu	a4,a4,a1
   19e32:	9732                	add	a4,a4,a2
   19e34:	d63a                	sw	a4,44(sp)
   19e36:	00146413          	ori	s0,s0,1
   19e3a:	c689                	beqz	a3,19e44 <__subtf3+0xfca>
   19e3c:	00147713          	andi	a4,s0,1
   19e40:	0706                	slli	a4,a4,0x1
   19e42:	8c59                	or	s0,s0,a4
   19e44:	5732                	lw	a4,44(sp)
   19e46:	00c71693          	slli	a3,a4,0xc
   19e4a:	0006dc63          	bgez	a3,19e62 <__subtf3+0xfe8>
   19e4e:	66a1                	lui	a3,0x8
   19e50:	0785                	addi	a5,a5,1
   19e52:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19e54:	0cd78063          	beq	a5,a3,19f14 <__subtf3+0x109a>
   19e58:	fff806b7          	lui	a3,0xfff80
   19e5c:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19e5e:	8f75                	and	a4,a4,a3
   19e60:	d63a                	sw	a4,44(sp)
   19e62:	1018                	addi	a4,sp,32
   19e64:	106c                	addi	a1,sp,44
   19e66:	4314                	lw	a3,0(a4)
   19e68:	4350                	lw	a2,4(a4)
   19e6a:	828d                	srli	a3,a3,0x3
   19e6c:	0676                	slli	a2,a2,0x1d
   19e6e:	8ed1                	or	a3,a3,a2
   19e70:	c314                	sw	a3,0(a4)
   19e72:	0711                	addi	a4,a4,4
   19e74:	feb719e3          	bne	a4,a1,19e66 <__subtf3+0xfec>
   19e78:	56b2                	lw	a3,44(sp)
   19e7a:	6621                	lui	a2,0x8
   19e7c:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   19e80:	828d                	srli	a3,a3,0x3
   19e82:	d636                	sw	a3,44(sp)
   19e84:	00e79e63          	bne	a5,a4,19ea0 <__subtf3+0x1026>
   19e88:	5592                	lw	a1,36(sp)
   19e8a:	5702                	lw	a4,32(sp)
   19e8c:	8f4d                	or	a4,a4,a1
   19e8e:	55a2                	lw	a1,40(sp)
   19e90:	8f4d                	or	a4,a4,a1
   19e92:	8f55                	or	a4,a4,a3
   19e94:	c711                	beqz	a4,19ea0 <__subtf3+0x1026>
   19e96:	d632                	sw	a2,44(sp)
   19e98:	d402                	sw	zero,40(sp)
   19e9a:	d202                	sw	zero,36(sp)
   19e9c:	d002                	sw	zero,32(sp)
   19e9e:	4981                	li	s3,0
   19ea0:	55b2                	lw	a1,44(sp)
   19ea2:	07c6                	slli	a5,a5,0x11
   19ea4:	83c5                	srli	a5,a5,0x11
   19ea6:	09be                	slli	s3,s3,0xf
   19ea8:	00f9e9b3          	or	s3,s3,a5
   19eac:	02b11e23          	sh	a1,60(sp)
   19eb0:	03311f23          	sh	s3,62(sp)
   19eb4:	5602                	lw	a2,32(sp)
   19eb6:	5692                	lw	a3,36(sp)
   19eb8:	5722                	lw	a4,40(sp)
   19eba:	57f2                	lw	a5,60(sp)
   19ebc:	c019                	beqz	s0,19ec2 <__subtf3+0x1048>
   19ebe:	00142073          	csrs	fflags,s0
   19ec2:	50b6                	lw	ra,108(sp)
   19ec4:	5426                	lw	s0,104(sp)
   19ec6:	00c92023          	sw	a2,0(s2)
   19eca:	00d92223          	sw	a3,4(s2)
   19ece:	00e92423          	sw	a4,8(s2)
   19ed2:	00f92623          	sw	a5,12(s2)
   19ed6:	5496                	lw	s1,100(sp)
   19ed8:	49f6                	lw	s3,92(sp)
   19eda:	4a66                	lw	s4,88(sp)
   19edc:	4ad6                	lw	s5,84(sp)
   19ede:	4b46                	lw	s6,80(sp)
   19ee0:	4bb6                	lw	s7,76(sp)
   19ee2:	4c26                	lw	s8,72(sp)
   19ee4:	4c96                	lw	s9,68(sp)
   19ee6:	854a                	mv	a0,s2
   19ee8:	5906                	lw	s2,96(sp)
   19eea:	6165                	addi	sp,sp,112
   19eec:	8082                	ret
   19eee:	ee099be3          	bnez	s3,19de4 <__subtf3+0xf6a>
   19ef2:	07a1                	addi	a5,a5,8
   19ef4:	0087b793          	sltiu	a5,a5,8
   19ef8:	bde1                	j	19dd0 <__subtf3+0xf56>
   19efa:	ee0985e3          	beqz	s3,19de4 <__subtf3+0xf6a>
   19efe:	bfd5                	j	19ef2 <__subtf3+0x1078>
   19f00:	f2099be3          	bnez	s3,19e36 <__subtf3+0xfbc>
   19f04:	0721                	addi	a4,a4,8
   19f06:	d03a                	sw	a4,32(sp)
   19f08:	00873713          	sltiu	a4,a4,8
   19f0c:	bf09                	j	19e1e <__subtf3+0xfa4>
   19f0e:	f20984e3          	beqz	s3,19e36 <__subtf3+0xfbc>
   19f12:	bfcd                	j	19f04 <__subtf3+0x108a>
   19f14:	4701                	li	a4,0
   19f16:	020a0063          	beqz	s4,19f36 <__subtf3+0x10bc>
   19f1a:	468d                	li	a3,3
   19f1c:	00da1863          	bne	s4,a3,19f2c <__subtf3+0x10b2>
   19f20:	00098b63          	beqz	s3,19f36 <__subtf3+0x10bc>
   19f24:	67a1                	lui	a5,0x8
   19f26:	577d                	li	a4,-1
   19f28:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   19f2a:	a031                	j	19f36 <__subtf3+0x10bc>
   19f2c:	4689                	li	a3,2
   19f2e:	feda1be3          	bne	s4,a3,19f24 <__subtf3+0x10aa>
   19f32:	fe0989e3          	beqz	s3,19f24 <__subtf3+0x10aa>
   19f36:	d63a                	sw	a4,44(sp)
   19f38:	d43a                	sw	a4,40(sp)
   19f3a:	d23a                	sw	a4,36(sp)
   19f3c:	d03a                	sw	a4,32(sp)
   19f3e:	00546413          	ori	s0,s0,5
   19f42:	b705                	j	19e62 <__subtf3+0xfe8>
   19f44:	d636                	sw	a3,44(sp)
   19f46:	c76ff06f          	j	193bc <__subtf3+0x542>
   19f4a:	d68a8763          	beq	s5,s0,194b8 <__subtf3+0x63e>
   19f4e:	4401                	li	s0,0
   19f50:	d16ff06f          	j	19466 <__subtf3+0x5ec>
   19f54:	b68a8de3          	beq	s5,s0,19ace <__subtf3+0xc54>
   19f58:	4401                	li	s0,0
   19f5a:	b699                	j	19aa0 <__subtf3+0xc26>

00019f5c <__unordtf2>:
   19f5c:	4114                	lw	a3,0(a0)
   19f5e:	00452f03          	lw	t5,4(a0)
   19f62:	00852e83          	lw	t4,8(a0)
   19f66:	4550                	lw	a2,12(a0)
   19f68:	419c                	lw	a5,0(a1)
   19f6a:	0045ae03          	lw	t3,4(a1)
   19f6e:	0085a303          	lw	t1,8(a1)
   19f72:	45d8                	lw	a4,12(a1)
   19f74:	1141                	addi	sp,sp,-16
   19f76:	002025f3          	frrm	a1
   19f7a:	6521                	lui	a0,0x8
   19f7c:	01061813          	slli	a6,a2,0x10
   19f80:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19f82:	8241                	srli	a2,a2,0x10
   19f84:	01071593          	slli	a1,a4,0x10
   19f88:	8e69                	and	a2,a2,a0
   19f8a:	8341                	srli	a4,a4,0x10
   19f8c:	01085813          	srli	a6,a6,0x10
   19f90:	81c1                	srli	a1,a1,0x10
   19f92:	8f69                	and	a4,a4,a0
   19f94:	00a61963          	bne	a2,a0,19fa6 <__unordtf2+0x4a>
   19f98:	01e6e533          	or	a0,a3,t5
   19f9c:	01d56533          	or	a0,a0,t4
   19fa0:	01056533          	or	a0,a0,a6
   19fa4:	e51d                	bnez	a0,19fd2 <__unordtf2+0x76>
   19fa6:	68a1                	lui	a7,0x8
   19fa8:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   19faa:	4501                	li	a0,0
   19fac:	05171c63          	bne	a4,a7,1a004 <__unordtf2+0xa8>
   19fb0:	01c7e8b3          	or	a7,a5,t3
   19fb4:	0068e8b3          	or	a7,a7,t1
   19fb8:	00b8e8b3          	or	a7,a7,a1
   19fbc:	04088463          	beqz	a7,1a004 <__unordtf2+0xa8>
   19fc0:	02e61a63          	bne	a2,a4,19ff4 <__unordtf2+0x98>
   19fc4:	01e6e6b3          	or	a3,a3,t5
   19fc8:	01d6e6b3          	or	a3,a3,t4
   19fcc:	0106e6b3          	or	a3,a3,a6
   19fd0:	ca99                	beqz	a3,19fe6 <__unordtf2+0x8a>
   19fd2:	0842                	slli	a6,a6,0x10
   19fd4:	41085813          	srai	a6,a6,0x10
   19fd8:	02085363          	bgez	a6,19ffe <__unordtf2+0xa2>
   19fdc:	66a1                	lui	a3,0x8
   19fde:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19fe0:	4505                	li	a0,1
   19fe2:	02d71163          	bne	a4,a3,1a004 <__unordtf2+0xa8>
   19fe6:	01c7e7b3          	or	a5,a5,t3
   19fea:	0067e7b3          	or	a5,a5,t1
   19fee:	8fcd                	or	a5,a5,a1
   19ff0:	4505                	li	a0,1
   19ff2:	cb89                	beqz	a5,1a004 <__unordtf2+0xa8>
   19ff4:	05c2                	slli	a1,a1,0x10
   19ff6:	85c1                	srai	a1,a1,0x10
   19ff8:	4505                	li	a0,1
   19ffa:	0005c563          	bltz	a1,1a004 <__unordtf2+0xa8>
   19ffe:	00186073          	csrsi	fflags,16
   1a002:	4505                	li	a0,1
   1a004:	0141                	addi	sp,sp,16
   1a006:	8082                	ret

0001a008 <__fixtfsi>:
   1a008:	411c                	lw	a5,0(a0)
   1a00a:	00452803          	lw	a6,4(a0)
   1a00e:	4518                	lw	a4,8(a0)
   1a010:	4550                	lw	a2,12(a0)
   1a012:	1101                	addi	sp,sp,-32
   1a014:	002026f3          	frrm	a3
   1a018:	01061693          	slli	a3,a2,0x10
   1a01c:	00161593          	slli	a1,a2,0x1
   1a020:	c632                	sw	a2,12(sp)
   1a022:	01f65893          	srli	a7,a2,0x1f
   1a026:	6611                	lui	a2,0x4
   1a028:	c03e                	sw	a5,0(sp)
   1a02a:	c242                	sw	a6,4(sp)
   1a02c:	c43a                	sw	a4,8(sp)
   1a02e:	c83e                	sw	a5,16(sp)
   1a030:	ca42                	sw	a6,20(sp)
   1a032:	cc3a                	sw	a4,24(sp)
   1a034:	81c5                	srli	a1,a1,0x11
   1a036:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   1a038:	82c1                	srli	a3,a3,0x10
   1a03a:	00b64a63          	blt	a2,a1,1a04e <__fixtfsi+0x46>
   1a03e:	e9f9                	bnez	a1,1a114 <__fixtfsi+0x10c>
   1a040:	0107e533          	or	a0,a5,a6
   1a044:	8d59                	or	a0,a0,a4
   1a046:	8d55                	or	a0,a0,a3
   1a048:	e571                	bnez	a0,1a114 <__fixtfsi+0x10c>
   1a04a:	6105                	addi	sp,sp,32
   1a04c:	8082                	ret
   1a04e:	6511                	lui	a0,0x4
   1a050:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   1a052:	8646                	mv	a2,a7
   1a054:	02b55763          	bge	a0,a1,1a082 <__fixtfsi+0x7a>
   1a058:	0c088163          	beqz	a7,1a11a <__fixtfsi+0x112>
   1a05c:	6511                	lui	a0,0x4
   1a05e:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   1a060:	0ca59263          	bne	a1,a0,1a124 <__fixtfsi+0x11c>
   1a064:	01175593          	srli	a1,a4,0x11
   1a068:	06be                	slli	a3,a3,0xf
   1a06a:	8ecd                	or	a3,a3,a1
   1a06c:	eec5                	bnez	a3,1a124 <__fixtfsi+0x11c>
   1a06e:	0107e7b3          	or	a5,a5,a6
   1a072:	073e                	slli	a4,a4,0xf
   1a074:	8f5d                	or	a4,a4,a5
   1a076:	80000537          	lui	a0,0x80000
   1a07a:	db61                	beqz	a4,1a04a <__fixtfsi+0x42>
   1a07c:	00162073          	csrs	fflags,a2
   1a080:	b7e9                	j	1a04a <__fixtfsi+0x42>
   1a082:	67c1                	lui	a5,0x10
   1a084:	8fd5                	or	a5,a5,a3
   1a086:	6691                	lui	a3,0x4
   1a088:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   1a08c:	8e8d                	sub	a3,a3,a1
   1a08e:	4056d513          	srai	a0,a3,0x5
   1a092:	ce3e                	sw	a5,28(sp)
   1a094:	8afd                	andi	a3,a3,31
   1a096:	080c                	addi	a1,sp,16
   1a098:	4801                	li	a6,0
   1a09a:	4601                	li	a2,0
   1a09c:	0005a303          	lw	t1,0(a1)
   1a0a0:	0605                	addi	a2,a2,1
   1a0a2:	0591                	addi	a1,a1,4
   1a0a4:	00686833          	or	a6,a6,t1
   1a0a8:	fec51ae3          	bne	a0,a2,1a09c <__fixtfsi+0x94>
   1a0ac:	00251613          	slli	a2,a0,0x2
   1a0b0:	e28d                	bnez	a3,1a0d2 <__fixtfsi+0xca>
   1a0b2:	02060793          	addi	a5,a2,32
   1a0b6:	00278633          	add	a2,a5,sp
   1a0ba:	ff062783          	lw	a5,-16(a2)
   1a0be:	c83e                	sw	a5,16(sp)
   1a0c0:	4542                	lw	a0,16(sp)
   1a0c2:	00088463          	beqz	a7,1a0ca <__fixtfsi+0xc2>
   1a0c6:	40a00533          	neg	a0,a0
   1a0ca:	4605                	li	a2,1
   1a0cc:	fa0818e3          	bnez	a6,1a07c <__fixtfsi+0x74>
   1a0d0:	bfad                	j	1a04a <__fixtfsi+0x42>
   1a0d2:	02060613          	addi	a2,a2,32
   1a0d6:	960a                	add	a2,a2,sp
   1a0d8:	ff062603          	lw	a2,-16(a2)
   1a0dc:	02000593          	li	a1,32
   1a0e0:	8d95                	sub	a1,a1,a3
   1a0e2:	00b61633          	sll	a2,a2,a1
   1a0e6:	4309                	li	t1,2
   1a0e8:	00c86833          	or	a6,a6,a2
   1a0ec:	4601                	li	a2,0
   1a0ee:	00651963          	bne	a0,t1,1a100 <__fixtfsi+0xf8>
   1a0f2:	00d75733          	srl	a4,a4,a3
   1a0f6:	00b795b3          	sll	a1,a5,a1
   1a0fa:	8f4d                	or	a4,a4,a1
   1a0fc:	c83a                	sw	a4,16(sp)
   1a0fe:	4605                	li	a2,1
   1a100:	060a                	slli	a2,a2,0x2
   1a102:	02060713          	addi	a4,a2,32
   1a106:	00270633          	add	a2,a4,sp
   1a10a:	00d7d7b3          	srl	a5,a5,a3
   1a10e:	fef62823          	sw	a5,-16(a2)
   1a112:	b77d                	j	1a0c0 <__fixtfsi+0xb8>
   1a114:	4605                	li	a2,1
   1a116:	4501                	li	a0,0
   1a118:	b795                	j	1a07c <__fixtfsi+0x74>
   1a11a:	80000537          	lui	a0,0x80000
   1a11e:	4641                	li	a2,16
   1a120:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   1a122:	bfa9                	j	1a07c <__fixtfsi+0x74>
   1a124:	4641                	li	a2,16
   1a126:	80000537          	lui	a0,0x80000
   1a12a:	bf89                	j	1a07c <__fixtfsi+0x74>

0001a12c <__floatsitf>:
   1a12c:	7179                	addi	sp,sp,-48
   1a12e:	d226                	sw	s1,36(sp)
   1a130:	d606                	sw	ra,44(sp)
   1a132:	d422                	sw	s0,40(sp)
   1a134:	d04a                	sw	s2,32(sp)
   1a136:	84aa                	mv	s1,a0
   1a138:	cdcd                	beqz	a1,1a1f2 <__floatsitf+0xc6>
   1a13a:	41f5d793          	srai	a5,a1,0x1f
   1a13e:	00b7c433          	xor	s0,a5,a1
   1a142:	8c1d                	sub	s0,s0,a5
   1a144:	8522                	mv	a0,s0
   1a146:	01f5d913          	srli	s2,a1,0x1f
   1a14a:	2481                	jal	1a38a <__clzsi2>
   1a14c:	6711                	lui	a4,0x4
   1a14e:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1a150:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe45f5>
   1a154:	40a70633          	sub	a2,a4,a0
   1a158:	c822                	sw	s0,16(sp)
   1a15a:	4057d713          	srai	a4,a5,0x5
   1a15e:	ca02                	sw	zero,20(sp)
   1a160:	cc02                	sw	zero,24(sp)
   1a162:	ce02                	sw	zero,28(sp)
   1a164:	8bfd                	andi	a5,a5,31
   1a166:	c78d                	beqz	a5,1a190 <__floatsitf+0x64>
   1a168:	4689                	li	a3,2
   1a16a:	08d71263          	bne	a4,a3,1a1ee <__floatsitf+0xc2>
   1a16e:	02000693          	li	a3,32
   1a172:	8e9d                	sub	a3,a3,a5
   1a174:	00d456b3          	srl	a3,s0,a3
   1a178:	ce36                	sw	a3,28(sp)
   1a17a:	fff70693          	addi	a3,a4,-1
   1a17e:	070a                	slli	a4,a4,0x2
   1a180:	02070713          	addi	a4,a4,32
   1a184:	970a                	add	a4,a4,sp
   1a186:	00f41433          	sll	s0,s0,a5
   1a18a:	fe872823          	sw	s0,-16(a4)
   1a18e:	a005                	j	1a1ae <__floatsitf+0x82>
   1a190:	478d                	li	a5,3
   1a192:	8f99                	sub	a5,a5,a4
   1a194:	078a                	slli	a5,a5,0x2
   1a196:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1a19a:	978a                	add	a5,a5,sp
   1a19c:	ff07a783          	lw	a5,-16(a5)
   1a1a0:	4689                	li	a3,2
   1a1a2:	ce3e                	sw	a5,28(sp)
   1a1a4:	4789                	li	a5,2
   1a1a6:	00f71463          	bne	a4,a5,1a1ae <__floatsitf+0x82>
   1a1aa:	cc22                	sw	s0,24(sp)
   1a1ac:	4685                	li	a3,1
   1a1ae:	068a                	slli	a3,a3,0x2
   1a1b0:	c802                	sw	zero,16(sp)
   1a1b2:	ca02                	sw	zero,20(sp)
   1a1b4:	16f1                	addi	a3,a3,-4
   1a1b6:	4791                	li	a5,4
   1a1b8:	00f6e363          	bltu	a3,a5,1a1be <__floatsitf+0x92>
   1a1bc:	cc02                	sw	zero,24(sp)
   1a1be:	85ca                	mv	a1,s2
   1a1c0:	47f2                	lw	a5,28(sp)
   1a1c2:	00f59413          	slli	s0,a1,0xf
   1a1c6:	8c51                	or	s0,s0,a2
   1a1c8:	00811723          	sh	s0,14(sp)
   1a1cc:	00f11623          	sh	a5,12(sp)
   1a1d0:	4542                	lw	a0,16(sp)
   1a1d2:	46d2                	lw	a3,20(sp)
   1a1d4:	4762                	lw	a4,24(sp)
   1a1d6:	47b2                	lw	a5,12(sp)
   1a1d8:	50b2                	lw	ra,44(sp)
   1a1da:	5422                	lw	s0,40(sp)
   1a1dc:	c088                	sw	a0,0(s1)
   1a1de:	c0d4                	sw	a3,4(s1)
   1a1e0:	c498                	sw	a4,8(s1)
   1a1e2:	c4dc                	sw	a5,12(s1)
   1a1e4:	5902                	lw	s2,32(sp)
   1a1e6:	8526                	mv	a0,s1
   1a1e8:	5492                	lw	s1,36(sp)
   1a1ea:	6145                	addi	sp,sp,48
   1a1ec:	8082                	ret
   1a1ee:	470d                	li	a4,3
   1a1f0:	b769                	j	1a17a <__floatsitf+0x4e>
   1a1f2:	ce02                	sw	zero,28(sp)
   1a1f4:	cc02                	sw	zero,24(sp)
   1a1f6:	ca02                	sw	zero,20(sp)
   1a1f8:	c802                	sw	zero,16(sp)
   1a1fa:	4601                	li	a2,0
   1a1fc:	b7d1                	j	1a1c0 <__floatsitf+0x94>

0001a1fe <__extenddftf2>:
   1a1fe:	7139                	addi	sp,sp,-64
   1a200:	d84a                	sw	s2,48(sp)
   1a202:	d64e                	sw	s3,44(sp)
   1a204:	de06                	sw	ra,60(sp)
   1a206:	dc22                	sw	s0,56(sp)
   1a208:	da26                	sw	s1,52(sp)
   1a20a:	89aa                	mv	s3,a0
   1a20c:	892e                	mv	s2,a1
   1a20e:	002027f3          	frrm	a5
   1a212:	01465413          	srli	s0,a2,0x14
   1a216:	00c61793          	slli	a5,a2,0xc
   1a21a:	7ff47413          	andi	s0,s0,2047
   1a21e:	83b1                	srli	a5,a5,0xc
   1a220:	00140713          	addi	a4,s0,1
   1a224:	c82e                	sw	a1,16(sp)
   1a226:	ca3e                	sw	a5,20(sp)
   1a228:	ce02                	sw	zero,28(sp)
   1a22a:	cc02                	sw	zero,24(sp)
   1a22c:	7fe77713          	andi	a4,a4,2046
   1a230:	01f65493          	srli	s1,a2,0x1f
   1a234:	c325                	beqz	a4,1a294 <__extenddftf2+0x96>
   1a236:	0047d693          	srli	a3,a5,0x4
   1a23a:	6711                	lui	a4,0x4
   1a23c:	ce36                	sw	a3,28(sp)
   1a23e:	07f2                	slli	a5,a5,0x1c
   1a240:	0045d693          	srli	a3,a1,0x4
   1a244:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1a248:	8fd5                	or	a5,a5,a3
   1a24a:	01c59913          	slli	s2,a1,0x1c
   1a24e:	9722                	add	a4,a4,s0
   1a250:	cc3e                	sw	a5,24(sp)
   1a252:	ca4a                	sw	s2,20(sp)
   1a254:	c802                	sw	zero,16(sp)
   1a256:	4401                	li	s0,0
   1a258:	47f2                	lw	a5,28(sp)
   1a25a:	04be                	slli	s1,s1,0xf
   1a25c:	8cd9                	or	s1,s1,a4
   1a25e:	00f11623          	sh	a5,12(sp)
   1a262:	00911723          	sh	s1,14(sp)
   1a266:	45c2                	lw	a1,16(sp)
   1a268:	4652                	lw	a2,20(sp)
   1a26a:	46e2                	lw	a3,24(sp)
   1a26c:	47b2                	lw	a5,12(sp)
   1a26e:	c019                	beqz	s0,1a274 <__extenddftf2+0x76>
   1a270:	00186073          	csrsi	fflags,16
   1a274:	50f2                	lw	ra,60(sp)
   1a276:	5462                	lw	s0,56(sp)
   1a278:	00b9a023          	sw	a1,0(s3)
   1a27c:	00c9a223          	sw	a2,4(s3)
   1a280:	00d9a423          	sw	a3,8(s3)
   1a284:	00f9a623          	sw	a5,12(s3)
   1a288:	54d2                	lw	s1,52(sp)
   1a28a:	5942                	lw	s2,48(sp)
   1a28c:	854e                	mv	a0,s3
   1a28e:	59b2                	lw	s3,44(sp)
   1a290:	6121                	addi	sp,sp,64
   1a292:	8082                	ret
   1a294:	00b7e533          	or	a0,a5,a1
   1a298:	e061                	bnez	s0,1a358 <__extenddftf2+0x15a>
   1a29a:	4701                	li	a4,0
   1a29c:	dd55                	beqz	a0,1a258 <__extenddftf2+0x5a>
   1a29e:	c7a1                	beqz	a5,1a2e6 <__extenddftf2+0xe8>
   1a2a0:	853e                	mv	a0,a5
   1a2a2:	20e5                	jal	1a38a <__clzsi2>
   1a2a4:	03150693          	addi	a3,a0,49
   1a2a8:	4056d793          	srai	a5,a3,0x5
   1a2ac:	8afd                	andi	a3,a3,31
   1a2ae:	c2a1                	beqz	a3,1a2ee <__extenddftf2+0xf0>
   1a2b0:	5671                	li	a2,-4
   1a2b2:	02c78633          	mul	a2,a5,a2
   1a2b6:	02000813          	li	a6,32
   1a2ba:	01010313          	addi	t1,sp,16
   1a2be:	40d80833          	sub	a6,a6,a3
   1a2c2:	00c60713          	addi	a4,a2,12
   1a2c6:	971a                	add	a4,a4,t1
   1a2c8:	40c00633          	neg	a2,a2
   1a2cc:	06e31763          	bne	t1,a4,1a33a <__extenddftf2+0x13c>
   1a2d0:	fff78713          	addi	a4,a5,-1
   1a2d4:	078a                	slli	a5,a5,0x2
   1a2d6:	02078793          	addi	a5,a5,32
   1a2da:	978a                	add	a5,a5,sp
   1a2dc:	00d916b3          	sll	a3,s2,a3
   1a2e0:	fed7a823          	sw	a3,-16(a5)
   1a2e4:	a025                	j	1a30c <__extenddftf2+0x10e>
   1a2e6:	2055                	jal	1a38a <__clzsi2>
   1a2e8:	02050513          	addi	a0,a0,32
   1a2ec:	bf65                	j	1a2a4 <__extenddftf2+0xa6>
   1a2ee:	5671                	li	a2,-4
   1a2f0:	02c78633          	mul	a2,a5,a2
   1a2f4:	0878                	addi	a4,sp,28
   1a2f6:	468d                	li	a3,3
   1a2f8:	00c705b3          	add	a1,a4,a2
   1a2fc:	418c                	lw	a1,0(a1)
   1a2fe:	16fd                	addi	a3,a3,-1
   1a300:	1771                	addi	a4,a4,-4
   1a302:	c34c                	sw	a1,4(a4)
   1a304:	fef6dae3          	bge	a3,a5,1a2f8 <__extenddftf2+0xfa>
   1a308:	fff78713          	addi	a4,a5,-1
   1a30c:	00170793          	addi	a5,a4,1
   1a310:	078a                	slli	a5,a5,0x2
   1a312:	46a1                	li	a3,8
   1a314:	0818                	addi	a4,sp,16
   1a316:	00d7e863          	bltu	a5,a3,1a326 <__extenddftf2+0x128>
   1a31a:	00072023          	sw	zero,0(a4)
   1a31e:	00072223          	sw	zero,4(a4)
   1a322:	17e1                	addi	a5,a5,-8
   1a324:	0838                	addi	a4,sp,24
   1a326:	4691                	li	a3,4
   1a328:	00d7e463          	bltu	a5,a3,1a330 <__extenddftf2+0x132>
   1a32c:	00072023          	sw	zero,0(a4)
   1a330:	6711                	lui	a4,0x4
   1a332:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1a336:	8f09                	sub	a4,a4,a0
   1a338:	b705                	j	1a258 <__extenddftf2+0x5a>
   1a33a:	430c                	lw	a1,0(a4)
   1a33c:	ffc72883          	lw	a7,-4(a4)
   1a340:	00c70e33          	add	t3,a4,a2
   1a344:	00d595b3          	sll	a1,a1,a3
   1a348:	0108d8b3          	srl	a7,a7,a6
   1a34c:	0115e5b3          	or	a1,a1,a7
   1a350:	00be2023          	sw	a1,0(t3)
   1a354:	1771                	addi	a4,a4,-4
   1a356:	bf9d                	j	1a2cc <__extenddftf2+0xce>
   1a358:	c515                	beqz	a0,1a384 <__extenddftf2+0x186>
   1a35a:	01c79713          	slli	a4,a5,0x1c
   1a35e:	0045d693          	srli	a3,a1,0x4
   1a362:	8f55                	or	a4,a4,a3
   1a364:	00080437          	lui	s0,0x80
   1a368:	0087b433          	sltu	s0,a5,s0
   1a36c:	cc3a                	sw	a4,24(sp)
   1a36e:	8391                	srli	a5,a5,0x4
   1a370:	6721                	lui	a4,0x8
   1a372:	01c59913          	slli	s2,a1,0x1c
   1a376:	8fd9                	or	a5,a5,a4
   1a378:	0412                	slli	s0,s0,0x4
   1a37a:	ca4a                	sw	s2,20(sp)
   1a37c:	c802                	sw	zero,16(sp)
   1a37e:	ce3e                	sw	a5,28(sp)
   1a380:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a382:	bdd9                	j	1a258 <__extenddftf2+0x5a>
   1a384:	4401                	li	s0,0
   1a386:	6721                	lui	a4,0x8
   1a388:	bfe5                	j	1a380 <__extenddftf2+0x182>

0001a38a <__clzsi2>:
   1a38a:	67c1                	lui	a5,0x10
   1a38c:	02f57563          	bgeu	a0,a5,1a3b6 <__clzsi2+0x2c>
   1a390:	10053793          	sltiu	a5,a0,256
   1a394:	0017b793          	seqz	a5,a5
   1a398:	078e                	slli	a5,a5,0x3
   1a39a:	676d                	lui	a4,0x1b
   1a39c:	02000693          	li	a3,32
   1a3a0:	8e9d                	sub	a3,a3,a5
   1a3a2:	00f55533          	srl	a0,a0,a5
   1a3a6:	b6070793          	addi	a5,a4,-1184 # 1ab60 <__clz_tab>
   1a3aa:	97aa                	add	a5,a5,a0
   1a3ac:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1a3b0:	40a68533          	sub	a0,a3,a0
   1a3b4:	8082                	ret
   1a3b6:	01000737          	lui	a4,0x1000
   1a3ba:	47e1                	li	a5,24
   1a3bc:	fce57fe3          	bgeu	a0,a4,1a39a <__clzsi2+0x10>
   1a3c0:	47c1                	li	a5,16
   1a3c2:	bfe1                	j	1a39a <__clzsi2+0x10>
