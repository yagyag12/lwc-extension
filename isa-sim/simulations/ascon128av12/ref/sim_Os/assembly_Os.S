
sim_Os/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	65a010ef          	jal	116f8 <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1cb00 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	360080ef          	jal	1840c <_exit>

000100b0 <main>:
   100b0:	7135                	addi	sp,sp,-160
   100b2:	65ed                	lui	a1,0x1b
   100b4:	4641                	li	a2,16
   100b6:	b4458593          	addi	a1,a1,-1212 # 1ab44 <__clzsi2+0xd6>
   100ba:	0888                	addi	a0,sp,80
   100bc:	cf06                	sw	ra,156(sp)
   100be:	cd22                	sw	s0,152(sp)
   100c0:	48e010ef          	jal	1154e <memcpy>
   100c4:	65ed                	lui	a1,0x1b
   100c6:	4635                	li	a2,13
   100c8:	cd058593          	addi	a1,a1,-816 # 1acd0 <__clzsi2+0x262>
   100cc:	1088                	addi	a0,sp,96
   100ce:	480010ef          	jal	1154e <memcpy>
   100d2:	65ed                	lui	a1,0x1b
   100d4:	4639                	li	a2,14
   100d6:	b5858593          	addi	a1,a1,-1192 # 1ab58 <__clzsi2+0xea>
   100da:	0088                	addi	a0,sp,64
   100dc:	060106a3          	sb	zero,109(sp)
   100e0:	06010723          	sb	zero,110(sp)
   100e4:	060107a3          	sb	zero,111(sp)
   100e8:	466010ef          	jal	1154e <memcpy>
   100ec:	6791                	lui	a5,0x4
   100ee:	656d                	lui	a0,0x1b
   100f0:	44178793          	addi	a5,a5,1089 # 4441 <exit-0xbc53>
   100f4:	008c                	addi	a1,sp,64
   100f6:	ab850513          	addi	a0,a0,-1352 # 1aab8 <__clzsi2+0x4a>
   100fa:	00f11e23          	sh	a5,28(sp)
   100fe:	00010f23          	sb	zero,30(sp)
   10102:	036010ef          	jal	11138 <printf>
   10106:	656d                	lui	a0,0x1b
   10108:	086c                	addi	a1,sp,28
   1010a:	ad050513          	addi	a0,a0,-1328 # 1aad0 <__clzsi2+0x62>
   1010e:	02a010ef          	jal	11138 <printf>
   10112:	656d                	lui	a0,0x1b
   10114:	4641                	li	a2,16
   10116:	4681                	li	a3,0
   10118:	088c                	addi	a1,sp,80
   1011a:	ae850513          	addi	a0,a0,-1304 # 1aae8 <__clzsi2+0x7a>
   1011e:	2215                	jal	10242 <print_hex>
   10120:	656d                	lui	a0,0x1b
   10122:	4641                	li	a2,16
   10124:	4681                	li	a3,0
   10126:	108c                	addi	a1,sp,96
   10128:	aec50513          	addi	a0,a0,-1300 # 1aaec <__clzsi2+0x7e>
   1012c:	2a19                	jal	10242 <print_hex>
   1012e:	089c                	addi	a5,sp,80
   10130:	c43e                	sw	a5,8(sp)
   10132:	109c                	addi	a5,sp,96
   10134:	c23e                	sw	a5,4(sp)
   10136:	c002                	sw	zero,0(sp)
   10138:	4809                	li	a6,2
   1013a:	4881                	li	a7,0
   1013c:	087c                	addi	a5,sp,28
   1013e:	46b5                	li	a3,13
   10140:	4701                	li	a4,0
   10142:	0090                	addi	a2,sp,64
   10144:	100c                	addi	a1,sp,32
   10146:	1888                	addi	a0,sp,112
   10148:	29d1                	jal	1061c <crypto_aead_encrypt>
   1014a:	cd01                	beqz	a0,10162 <main+0xb2>
   1014c:	656d                	lui	a0,0x1b
   1014e:	af450513          	addi	a0,a0,-1292 # 1aaf4 <__clzsi2+0x86>
   10152:	0a4010ef          	jal	111f6 <puts>
   10156:	547d                	li	s0,-1
   10158:	40fa                	lw	ra,156(sp)
   1015a:	8522                	mv	a0,s0
   1015c:	446a                	lw	s0,152(sp)
   1015e:	610d                	addi	sp,sp,160
   10160:	8082                	ret
   10162:	5602                	lw	a2,32(sp)
   10164:	5692                	lw	a3,36(sp)
   10166:	656d                	lui	a0,0x1b
   10168:	188c                	addi	a1,sp,112
   1016a:	b0850513          	addi	a0,a0,-1272 # 1ab08 <__clzsi2+0x9a>
   1016e:	28d1                	jal	10242 <print_hex>
   10170:	089c                	addi	a5,sp,80
   10172:	c43e                	sw	a5,8(sp)
   10174:	109c                	addi	a5,sp,96
   10176:	c23e                	sw	a5,4(sp)
   10178:	5702                	lw	a4,32(sp)
   1017a:	5792                	lw	a5,36(sp)
   1017c:	c002                	sw	zero,0(sp)
   1017e:	4889                	li	a7,2
   10180:	01c10813          	addi	a6,sp,28
   10184:	1894                	addi	a3,sp,112
   10186:	4601                	li	a2,0
   10188:	102c                	addi	a1,sp,40
   1018a:	1808                	addi	a0,sp,48
   1018c:	00f000ef          	jal	1099a <crypto_aead_decrypt>
   10190:	842a                	mv	s0,a0
   10192:	c509                	beqz	a0,1019c <main+0xec>
   10194:	656d                	lui	a0,0x1b
   10196:	b1450513          	addi	a0,a0,-1260 # 1ab14 <__clzsi2+0xa6>
   1019a:	bf65                	j	10152 <main+0xa2>
   1019c:	55a2                	lw	a1,40(sp)
   1019e:	656d                	lui	a0,0x1b
   101a0:	1810                	addi	a2,sp,48
   101a2:	b2850513          	addi	a0,a0,-1240 # 1ab28 <__clzsi2+0xba>
   101a6:	793000ef          	jal	11138 <printf>
   101aa:	b77d                	j	10158 <main+0xa8>

000101ac <register_fini>:
   101ac:	00000793          	li	a5,0
   101b0:	c791                	beqz	a5,101bc <register_fini+0x10>
   101b2:	6551                	lui	a0,0x14
   101b4:	6ce50513          	addi	a0,a0,1742 # 146ce <__libc_fini_array>
   101b8:	60e0106f          	j	117c6 <atexit>
   101bc:	8082                	ret

000101be <_start>:
   101be:	0000d197          	auipc	gp,0xd
   101c2:	a2218193          	addi	gp,gp,-1502 # 1cbe0 <__global_pointer$>
   101c6:	f2018513          	addi	a0,gp,-224 # 1cb00 <__stdio_exit_handler>
   101ca:	24c18613          	addi	a2,gp,588 # 1ce2c <__BSS_END__>
   101ce:	8e09                	sub	a2,a2,a0
   101d0:	4581                	li	a1,0
   101d2:	2d4010ef          	jal	114a6 <memset>
   101d6:	00001517          	auipc	a0,0x1
   101da:	5f050513          	addi	a0,a0,1520 # 117c6 <atexit>
   101de:	c519                	beqz	a0,101ec <_start+0x2e>
   101e0:	00004517          	auipc	a0,0x4
   101e4:	4ee50513          	addi	a0,a0,1262 # 146ce <__libc_fini_array>
   101e8:	5de010ef          	jal	117c6 <atexit>
   101ec:	250010ef          	jal	1143c <__libc_init_array>
   101f0:	4502                	lw	a0,0(sp)
   101f2:	004c                	addi	a1,sp,4
   101f4:	4601                	li	a2,0
   101f6:	3d6d                	jal	100b0 <main>
   101f8:	bd71                	j	10094 <exit>

000101fa <__do_global_dtors_aux>:
   101fa:	1141                	addi	sp,sp,-16
   101fc:	c422                	sw	s0,8(sp)
   101fe:	f401c783          	lbu	a5,-192(gp) # 1cb20 <completed.1>
   10202:	c606                	sw	ra,12(sp)
   10204:	ef91                	bnez	a5,10220 <__do_global_dtors_aux+0x26>
   10206:	00000793          	li	a5,0
   1020a:	cb81                	beqz	a5,1021a <__do_global_dtors_aux+0x20>
   1020c:	6571                	lui	a0,0x1c
   1020e:	3d050513          	addi	a0,a0,976 # 1c3d0 <__EH_FRAME_BEGIN__>
   10212:	00000097          	auipc	ra,0x0
   10216:	000000e7          	jalr	zero # 0 <exit-0x10094>
   1021a:	4785                	li	a5,1
   1021c:	f4f18023          	sb	a5,-192(gp) # 1cb20 <completed.1>
   10220:	40b2                	lw	ra,12(sp)
   10222:	4422                	lw	s0,8(sp)
   10224:	0141                	addi	sp,sp,16
   10226:	8082                	ret

00010228 <frame_dummy>:
   10228:	00000793          	li	a5,0
   1022c:	cb91                	beqz	a5,10240 <frame_dummy+0x18>
   1022e:	6571                	lui	a0,0x1c
   10230:	f4418593          	addi	a1,gp,-188 # 1cb24 <object.0>
   10234:	3d050513          	addi	a0,a0,976 # 1c3d0 <__EH_FRAME_BEGIN__>
   10238:	00000317          	auipc	t1,0x0
   1023c:	00000067          	jr	zero # 0 <exit-0x10094>
   10240:	8082                	ret

00010242 <print_hex>:
   10242:	1101                	addi	sp,sp,-32
   10244:	c64e                	sw	s3,12(sp)
   10246:	89ae                	mv	s3,a1
   10248:	85aa                	mv	a1,a0
   1024a:	656d                	lui	a0,0x1b
   1024c:	aa850513          	addi	a0,a0,-1368 # 1aaa8 <__clzsi2+0x3a>
   10250:	cc22                	sw	s0,24(sp)
   10252:	ca26                	sw	s1,20(sp)
   10254:	c84a                	sw	s2,16(sp)
   10256:	c452                	sw	s4,8(sp)
   10258:	c256                	sw	s5,4(sp)
   1025a:	ce06                	sw	ra,28(sp)
   1025c:	8a32                	mv	s4,a2
   1025e:	84b6                	mv	s1,a3
   10260:	4401                	li	s0,0
   10262:	6d7000ef          	jal	11138 <printf>
   10266:	4901                	li	s2,0
   10268:	6aed                	lui	s5,0x1b
   1026a:	01441f63          	bne	s0,s4,10288 <print_hex+0x46>
   1026e:	00991d63          	bne	s2,s1,10288 <print_hex+0x46>
   10272:	4462                	lw	s0,24(sp)
   10274:	40f2                	lw	ra,28(sp)
   10276:	44d2                	lw	s1,20(sp)
   10278:	4942                	lw	s2,16(sp)
   1027a:	49b2                	lw	s3,12(sp)
   1027c:	4a22                	lw	s4,8(sp)
   1027e:	4a92                	lw	s5,4(sp)
   10280:	4529                	li	a0,10
   10282:	6105                	addi	sp,sp,32
   10284:	6e70006f          	j	1116a <putchar>
   10288:	008987b3          	add	a5,s3,s0
   1028c:	0007c583          	lbu	a1,0(a5)
   10290:	ab0a8513          	addi	a0,s5,-1360 # 1aab0 <__clzsi2+0x42>
   10294:	6a5000ef          	jal	11138 <printf>
   10298:	00140793          	addi	a5,s0,1
   1029c:	0087b733          	sltu	a4,a5,s0
   102a0:	993a                	add	s2,s2,a4
   102a2:	843e                	mv	s0,a5
   102a4:	b7d9                	j	1026a <print_hex+0x28>

000102a6 <ROUND>:
   102a6:	1141                	addi	sp,sp,-16
   102a8:	5154                	lw	a3,36(a0)
   102aa:	00452383          	lw	t2,4(a0)
   102ae:	01c52f83          	lw	t6,28(a0)
   102b2:	c622                	sw	s0,12(sp)
   102b4:	c24a                	sw	s2,4(sp)
   102b6:	5110                	lw	a2,32(a0)
   102b8:	00852903          	lw	s2,8(a0)
   102bc:	4100                	lw	s0,0(a0)
   102be:	491c                	lw	a5,16(a0)
   102c0:	c426                	sw	s1,8(sp)
   102c2:	4958                	lw	a4,20(a0)
   102c4:	4544                	lw	s1,12(a0)
   102c6:	01852283          	lw	t0,24(a0)
   102ca:	00d3c3b3          	xor	t2,t2,a3
   102ce:	8c31                	xor	s0,s0,a2
   102d0:	01f6c6b3          	xor	a3,a3,t6
   102d4:	0127c7b3          	xor	a5,a5,s2
   102d8:	ffffcf13          	not	t5,t6
   102dc:	fff3ce13          	not	t3,t2
   102e0:	8f25                	xor	a4,a4,s1
   102e2:	8dbd                	xor	a1,a1,a5
   102e4:	fff94313          	not	t1,s2
   102e8:	fff4c893          	not	a7,s1
   102ec:	00df7f33          	and	t5,t5,a3
   102f0:	fff44e93          	not	t4,s0
   102f4:	009e7e33          	and	t3,t3,s1
   102f8:	00de4e33          	xor	t3,t3,a3
   102fc:	00564633          	xor	a2,a2,t0
   10300:	00ef4f33          	xor	t5,t5,a4
   10304:	00b37333          	and	t1,t1,a1
   10308:	00e8f8b3          	and	a7,a7,a4
   1030c:	fff2c813          	not	a6,t0
   10310:	012efeb3          	and	t4,t4,s2
   10314:	fff5c793          	not	a5,a1
   10318:	fff74713          	not	a4,a4
   1031c:	fff6c693          	not	a3,a3
   10320:	00ceceb3          	xor	t4,t4,a2
   10324:	00834333          	xor	t1,t1,s0
   10328:	0078c8b3          	xor	a7,a7,t2
   1032c:	00c87833          	and	a6,a6,a2
   10330:	0057f7b3          	and	a5,a5,t0
   10334:	01f77733          	and	a4,a4,t6
   10338:	0076f6b3          	and	a3,a3,t2
   1033c:	fff64613          	not	a2,a2
   10340:	00b84833          	xor	a6,a6,a1
   10344:	0067c7b3          	xor	a5,a5,t1
   10348:	01174733          	xor	a4,a4,a7
   1034c:	01d34333          	xor	t1,t1,t4
   10350:	01c8c8b3          	xor	a7,a7,t3
   10354:	8e61                	and	a2,a2,s0
   10356:	01e6c6b3          	xor	a3,a3,t5
   1035a:	01f6c6b3          	xor	a3,a3,t6
   1035e:	ffff4593          	not	a1,t5
   10362:	01064633          	xor	a2,a2,a6
   10366:	01335f13          	srli	t5,t1,0x13
   1036a:	00d89f93          	slli	t6,a7,0xd
   1036e:	00564633          	xor	a2,a2,t0
   10372:	01efefb3          	or	t6,t6,t5
   10376:	0138d293          	srli	t0,a7,0x13
   1037a:	00d31f13          	slli	t5,t1,0xd
   1037e:	005f6f33          	or	t5,t5,t0
   10382:	00489393          	slli	t2,a7,0x4
   10386:	01c35293          	srli	t0,t1,0x1c
   1038a:	01c8d413          	srli	s0,a7,0x1c
   1038e:	0053e3b3          	or	t2,t2,t0
   10392:	00431293          	slli	t0,t1,0x4
   10396:	0082e2b3          	or	t0,t0,s0
   1039a:	005f4f33          	xor	t5,t5,t0
   1039e:	007fcfb3          	xor	t6,t6,t2
   103a2:	8f25                	xor	a4,a4,s1
   103a4:	0127c7b3          	xor	a5,a5,s2
   103a8:	006fc333          	xor	t1,t6,t1
   103ac:	011f48b3          	xor	a7,t5,a7
   103b0:	00652023          	sw	t1,0(a0)
   103b4:	01152223          	sw	a7,4(a0)
   103b8:	00371313          	slli	t1,a4,0x3
   103bc:	01d7d893          	srli	a7,a5,0x1d
   103c0:	00379f13          	slli	t5,a5,0x3
   103c4:	0068e8b3          	or	a7,a7,t1
   103c8:	01d75313          	srli	t1,a4,0x1d
   103cc:	01971f93          	slli	t6,a4,0x19
   103d0:	01e36333          	or	t1,t1,t5
   103d4:	0077df13          	srli	t5,a5,0x7
   103d8:	01ff6f33          	or	t5,t5,t6
   103dc:	01979293          	slli	t0,a5,0x19
   103e0:	00775f93          	srli	t6,a4,0x7
   103e4:	005fefb3          	or	t6,t6,t0
   103e8:	01f34333          	xor	t1,t1,t6
   103ec:	01e8c8b3          	xor	a7,a7,t5
   103f0:	00f347b3          	xor	a5,t1,a5
   103f4:	fff84813          	not	a6,a6
   103f8:	c51c                	sw	a5,8(a0)
   103fa:	00e8c7b3          	xor	a5,a7,a4
   103fe:	c55c                	sw	a5,12(a0)
   10400:	01f59713          	slli	a4,a1,0x1f
   10404:	00185793          	srli	a5,a6,0x1
   10408:	0015d893          	srli	a7,a1,0x1
   1040c:	8f5d                	or	a4,a4,a5
   1040e:	01f81793          	slli	a5,a6,0x1f
   10412:	0117e7b3          	or	a5,a5,a7
   10416:	01a59313          	slli	t1,a1,0x1a
   1041a:	00685893          	srli	a7,a6,0x6
   1041e:	01136333          	or	t1,t1,a7
   10422:	0065df13          	srli	t5,a1,0x6
   10426:	01a81893          	slli	a7,a6,0x1a
   1042a:	01e8e8b3          	or	a7,a7,t5
   1042e:	0117c7b3          	xor	a5,a5,a7
   10432:	00674733          	xor	a4,a4,t1
   10436:	01074733          	xor	a4,a4,a6
   1043a:	8fad                	xor	a5,a5,a1
   1043c:	c918                	sw	a4,16(a0)
   1043e:	c95c                	sw	a5,20(a0)
   10440:	01669713          	slli	a4,a3,0x16
   10444:	00a65793          	srli	a5,a2,0xa
   10448:	00a6d593          	srli	a1,a3,0xa
   1044c:	8f5d                	or	a4,a4,a5
   1044e:	01661793          	slli	a5,a2,0x16
   10452:	8fcd                	or	a5,a5,a1
   10454:	00f69813          	slli	a6,a3,0xf
   10458:	01165593          	srli	a1,a2,0x11
   1045c:	00b86833          	or	a6,a6,a1
   10460:	0116d893          	srli	a7,a3,0x11
   10464:	00f61593          	slli	a1,a2,0xf
   10468:	0115e5b3          	or	a1,a1,a7
   1046c:	8fad                	xor	a5,a5,a1
   1046e:	01074733          	xor	a4,a4,a6
   10472:	8f31                	xor	a4,a4,a2
   10474:	8fb5                	xor	a5,a5,a3
   10476:	cd18                	sw	a4,24(a0)
   10478:	cd5c                	sw	a5,28(a0)
   1047a:	019e1713          	slli	a4,t3,0x19
   1047e:	007ed793          	srli	a5,t4,0x7
   10482:	8f5d                	or	a4,a4,a5
   10484:	007e5693          	srli	a3,t3,0x7
   10488:	019e9793          	slli	a5,t4,0x19
   1048c:	8fd5                	or	a5,a5,a3
   1048e:	017e1613          	slli	a2,t3,0x17
   10492:	009ed693          	srli	a3,t4,0x9
   10496:	8ed1                	or	a3,a3,a2
   10498:	017e9593          	slli	a1,t4,0x17
   1049c:	009e5613          	srli	a2,t3,0x9
   104a0:	8e4d                	or	a2,a2,a1
   104a2:	4432                	lw	s0,12(sp)
   104a4:	8f31                	xor	a4,a4,a2
   104a6:	8fb5                	xor	a5,a5,a3
   104a8:	01d74733          	xor	a4,a4,t4
   104ac:	01c7c7b3          	xor	a5,a5,t3
   104b0:	d118                	sw	a4,32(a0)
   104b2:	d15c                	sw	a5,36(a0)
   104b4:	44a2                	lw	s1,8(sp)
   104b6:	4912                	lw	s2,4(sp)
   104b8:	0141                	addi	sp,sp,16
   104ba:	8082                	ret

000104bc <P12>:
   104bc:	1141                	addi	sp,sp,-16
   104be:	0f000593          	li	a1,240
   104c2:	c606                	sw	ra,12(sp)
   104c4:	c422                	sw	s0,8(sp)
   104c6:	842a                	mv	s0,a0
   104c8:	3bf9                	jal	102a6 <ROUND>
   104ca:	8522                	mv	a0,s0
   104cc:	0e100593          	li	a1,225
   104d0:	3bd9                	jal	102a6 <ROUND>
   104d2:	8522                	mv	a0,s0
   104d4:	0d200593          	li	a1,210
   104d8:	33f9                	jal	102a6 <ROUND>
   104da:	8522                	mv	a0,s0
   104dc:	0c300593          	li	a1,195
   104e0:	33d9                	jal	102a6 <ROUND>
   104e2:	8522                	mv	a0,s0
   104e4:	0b400593          	li	a1,180
   104e8:	3b7d                	jal	102a6 <ROUND>
   104ea:	8522                	mv	a0,s0
   104ec:	0a500593          	li	a1,165
   104f0:	3b5d                	jal	102a6 <ROUND>
   104f2:	8522                	mv	a0,s0
   104f4:	09600593          	li	a1,150
   104f8:	337d                	jal	102a6 <ROUND>
   104fa:	8522                	mv	a0,s0
   104fc:	08700593          	li	a1,135
   10500:	335d                	jal	102a6 <ROUND>
   10502:	8522                	mv	a0,s0
   10504:	07800593          	li	a1,120
   10508:	3b79                	jal	102a6 <ROUND>
   1050a:	8522                	mv	a0,s0
   1050c:	06900593          	li	a1,105
   10510:	3b59                	jal	102a6 <ROUND>
   10512:	8522                	mv	a0,s0
   10514:	05a00593          	li	a1,90
   10518:	3379                	jal	102a6 <ROUND>
   1051a:	8522                	mv	a0,s0
   1051c:	4422                	lw	s0,8(sp)
   1051e:	40b2                	lw	ra,12(sp)
   10520:	04b00593          	li	a1,75
   10524:	0141                	addi	sp,sp,16
   10526:	b341                	j	102a6 <ROUND>

00010528 <P8>:
   10528:	1141                	addi	sp,sp,-16
   1052a:	0b400593          	li	a1,180
   1052e:	c606                	sw	ra,12(sp)
   10530:	c422                	sw	s0,8(sp)
   10532:	842a                	mv	s0,a0
   10534:	3b8d                	jal	102a6 <ROUND>
   10536:	8522                	mv	a0,s0
   10538:	0a500593          	li	a1,165
   1053c:	33ad                	jal	102a6 <ROUND>
   1053e:	8522                	mv	a0,s0
   10540:	09600593          	li	a1,150
   10544:	338d                	jal	102a6 <ROUND>
   10546:	8522                	mv	a0,s0
   10548:	08700593          	li	a1,135
   1054c:	3ba9                	jal	102a6 <ROUND>
   1054e:	8522                	mv	a0,s0
   10550:	07800593          	li	a1,120
   10554:	3b89                	jal	102a6 <ROUND>
   10556:	8522                	mv	a0,s0
   10558:	06900593          	li	a1,105
   1055c:	33a9                	jal	102a6 <ROUND>
   1055e:	8522                	mv	a0,s0
   10560:	05a00593          	li	a1,90
   10564:	3389                	jal	102a6 <ROUND>
   10566:	8522                	mv	a0,s0
   10568:	4422                	lw	s0,8(sp)
   1056a:	40b2                	lw	ra,12(sp)
   1056c:	04b00593          	li	a1,75
   10570:	0141                	addi	sp,sp,16
   10572:	bb15                	j	102a6 <ROUND>

00010574 <LOADBYTES>:
   10574:	1101                	addi	sp,sp,-32
   10576:	cc22                	sw	s0,24(sp)
   10578:	ca26                	sw	s1,20(sp)
   1057a:	c84a                	sw	s2,16(sp)
   1057c:	c64e                	sw	s3,12(sp)
   1057e:	c452                	sw	s4,8(sp)
   10580:	c256                	sw	s5,4(sp)
   10582:	ce06                	sw	ra,28(sp)
   10584:	8a2a                	mv	s4,a0
   10586:	89ae                	mv	s3,a1
   10588:	4901                	li	s2,0
   1058a:	4481                	li	s1,0
   1058c:	4401                	li	s0,0
   1058e:	5ae1                	li	s5,-8
   10590:	01341d63          	bne	s0,s3,105aa <LOADBYTES+0x36>
   10594:	40f2                	lw	ra,28(sp)
   10596:	4462                	lw	s0,24(sp)
   10598:	49b2                	lw	s3,12(sp)
   1059a:	4a22                	lw	s4,8(sp)
   1059c:	4a92                	lw	s5,4(sp)
   1059e:	854a                	mv	a0,s2
   105a0:	85a6                	mv	a1,s1
   105a2:	4942                	lw	s2,16(sp)
   105a4:	44d2                	lw	s1,20(sp)
   105a6:	6105                	addi	sp,sp,32
   105a8:	8082                	ret
   105aa:	03540633          	mul	a2,s0,s5
   105ae:	008a07b3          	add	a5,s4,s0
   105b2:	0007c503          	lbu	a0,0(a5)
   105b6:	4581                	li	a1,0
   105b8:	0405                	addi	s0,s0,1
   105ba:	03860613          	addi	a2,a2,56
   105be:	04f000ef          	jal	10e0c <__ashldi3>
   105c2:	00a96933          	or	s2,s2,a0
   105c6:	8ccd                	or	s1,s1,a1
   105c8:	b7e1                	j	10590 <LOADBYTES+0x1c>

000105ca <STOREBYTES>:
   105ca:	1101                	addi	sp,sp,-32
   105cc:	cc22                	sw	s0,24(sp)
   105ce:	ca26                	sw	s1,20(sp)
   105d0:	c84a                	sw	s2,16(sp)
   105d2:	c64e                	sw	s3,12(sp)
   105d4:	c452                	sw	s4,8(sp)
   105d6:	c256                	sw	s5,4(sp)
   105d8:	ce06                	sw	ra,28(sp)
   105da:	c05a                	sw	s6,0(sp)
   105dc:	892a                	mv	s2,a0
   105de:	89ae                	mv	s3,a1
   105e0:	8a32                	mv	s4,a2
   105e2:	84b6                	mv	s1,a3
   105e4:	4401                	li	s0,0
   105e6:	5ae1                	li	s5,-8
   105e8:	00941c63          	bne	s0,s1,10600 <STOREBYTES+0x36>
   105ec:	40f2                	lw	ra,28(sp)
   105ee:	4462                	lw	s0,24(sp)
   105f0:	44d2                	lw	s1,20(sp)
   105f2:	4942                	lw	s2,16(sp)
   105f4:	49b2                	lw	s3,12(sp)
   105f6:	4a22                	lw	s4,8(sp)
   105f8:	4a92                	lw	s5,4(sp)
   105fa:	4b02                	lw	s6,0(sp)
   105fc:	6105                	addi	sp,sp,32
   105fe:	8082                	ret
   10600:	03540633          	mul	a2,s0,s5
   10604:	854e                	mv	a0,s3
   10606:	85d2                	mv	a1,s4
   10608:	00890b33          	add	s6,s2,s0
   1060c:	0405                	addi	s0,s0,1
   1060e:	03860613          	addi	a2,a2,56
   10612:	7d2000ef          	jal	10de4 <__lshrdi3>
   10616:	00ab0023          	sb	a0,0(s6)
   1061a:	b7f9                	j	105e8 <STOREBYTES+0x1e>

0001061c <crypto_aead_encrypt>:
   1061c:	7119                	addi	sp,sp,-128
   1061e:	d4d2                	sw	s4,104(sp)
   10620:	cce2                	sw	s8,88(sp)
   10622:	4a2a                	lw	s4,136(sp)
   10624:	8c3a                	mv	s8,a4
   10626:	01068713          	addi	a4,a3,16
   1062a:	c23e                	sw	a5,4(sp)
   1062c:	00d737b3          	sltu	a5,a4,a3
   10630:	de86                	sw	ra,124(sp)
   10632:	97e2                	add	a5,a5,s8
   10634:	dca2                	sw	s0,120(sp)
   10636:	daa6                	sw	s1,116(sp)
   10638:	d8ca                	sw	s2,112(sp)
   1063a:	d6ce                	sw	s3,108(sp)
   1063c:	d2d6                	sw	s5,100(sp)
   1063e:	d0da                	sw	s6,96(sp)
   10640:	cede                	sw	s7,92(sp)
   10642:	cae6                	sw	s9,84(sp)
   10644:	c8ea                	sw	s10,80(sp)
   10646:	c6ee                	sw	s11,76(sp)
   10648:	c198                	sw	a4,0(a1)
   1064a:	c1dc                	sw	a5,4(a1)
   1064c:	84aa                	mv	s1,a0
   1064e:	45a1                	li	a1,8
   10650:	8552                	mv	a0,s4
   10652:	8d42                	mv	s10,a6
   10654:	8cc6                	mv	s9,a7
   10656:	c032                	sw	a2,0(sp)
   10658:	8436                	mv	s0,a3
   1065a:	4d9a                	lw	s11,132(sp)
   1065c:	3f21                	jal	10574 <LOADBYTES>
   1065e:	89aa                	mv	s3,a0
   10660:	892e                	mv	s2,a1
   10662:	008a0513          	addi	a0,s4,8
   10666:	45a1                	li	a1,8
   10668:	3731                	jal	10574 <LOADBYTES>
   1066a:	8aaa                	mv	s5,a0
   1066c:	8a2e                	mv	s4,a1
   1066e:	856e                	mv	a0,s11
   10670:	45a1                	li	a1,8
   10672:	3709                	jal	10574 <LOADBYTES>
   10674:	8b2a                	mv	s6,a0
   10676:	8bae                	mv	s7,a1
   10678:	008d8513          	addi	a0,s11,8
   1067c:	45a1                	li	a1,8
   1067e:	3ddd                	jal	10574 <LOADBYTES>
   10680:	808016b7          	lui	a3,0x80801
   10684:	4601                	li	a2,0
   10686:	c0868693          	addi	a3,a3,-1016 # 80800c08 <__BSS_END__+0x807e3ddc>
   1068a:	dc2a                	sw	a0,56(sp)
   1068c:	0828                	addi	a0,sp,24
   1068e:	cc32                	sw	a2,24(sp)
   10690:	ce36                	sw	a3,28(sp)
   10692:	d04e                	sw	s3,32(sp)
   10694:	d24a                	sw	s2,36(sp)
   10696:	d456                	sw	s5,40(sp)
   10698:	d652                	sw	s4,44(sp)
   1069a:	d85a                	sw	s6,48(sp)
   1069c:	da5e                	sw	s7,52(sp)
   1069e:	de2e                	sw	a1,60(sp)
   106a0:	3d31                	jal	104bc <P12>
   106a2:	5742                	lw	a4,48(sp)
   106a4:	57d2                	lw	a5,52(sp)
   106a6:	01374733          	xor	a4,a4,s3
   106aa:	0127c7b3          	xor	a5,a5,s2
   106ae:	d83a                	sw	a4,48(sp)
   106b0:	da3e                	sw	a5,52(sp)
   106b2:	5762                	lw	a4,56(sp)
   106b4:	57f2                	lw	a5,60(sp)
   106b6:	01574733          	xor	a4,a4,s5
   106ba:	0147c7b3          	xor	a5,a5,s4
   106be:	de3e                	sw	a5,60(sp)
   106c0:	dc3a                	sw	a4,56(sp)
   106c2:	019d67b3          	or	a5,s10,s9
   106c6:	20079363          	bnez	a5,108cc <crypto_aead_encrypt+0x2b0>
   106ca:	57e2                	lw	a5,56(sp)
   106cc:	4c82                	lw	s9,0(sp)
   106ce:	8d62                	mv	s10,s8
   106d0:	0017c793          	xori	a5,a5,1
   106d4:	dc3e                	sw	a5,56(sp)
   106d6:	8da6                	mv	s11,s1
   106d8:	87a2                	mv	a5,s0
   106da:	4be2                	lw	s7,24(sp)
   106dc:	4b72                	lw	s6,28(sp)
   106de:	48bd                	li	a7,15
   106e0:	220d1263          	bnez	s10,10904 <crypto_aead_encrypt+0x2e8>
   106e4:	22f8e063          	bltu	a7,a5,10904 <crypto_aead_encrypt+0x2e8>
   106e8:	4602                	lw	a2,0(sp)
   106ea:	01cc1793          	slli	a5,s8,0x1c
   106ee:	00445693          	srli	a3,s0,0x4
   106f2:	8edd                	or	a3,a3,a5
   106f4:	00469713          	slli	a4,a3,0x4
   106f8:	00e60cb3          	add	s9,a2,a4
   106fc:	004c5793          	srli	a5,s8,0x4
   10700:	5641                	li	a2,-16
   10702:	02f607b3          	mul	a5,a2,a5
   10706:	94ba                	add	s1,s1,a4
   10708:	02d60733          	mul	a4,a2,a3
   1070c:	8f95                	sub	a5,a5,a3
   1070e:	02d63633          	mulhu	a2,a2,a3
   10712:	943a                	add	s0,s0,a4
   10714:	00e436b3          	sltu	a3,s0,a4
   10718:	97b2                	add	a5,a5,a2
   1071a:	01878733          	add	a4,a5,s8
   1071e:	9736                	add	a4,a4,a3
   10720:	e701                	bnez	a4,10728 <crypto_aead_encrypt+0x10c>
   10722:	4c1d                	li	s8,7
   10724:	248c7163          	bgeu	s8,s0,10966 <crypto_aead_encrypt+0x34a>
   10728:	45a1                	li	a1,8
   1072a:	8566                	mv	a0,s9
   1072c:	35a1                	jal	10574 <LOADBYTES>
   1072e:	ff840d13          	addi	s10,s0,-8
   10732:	0165c633          	xor	a2,a1,s6
   10736:	01754c33          	xor	s8,a0,s7
   1073a:	85ea                	mv	a1,s10
   1073c:	008c8513          	addi	a0,s9,8
   10740:	ce32                	sw	a2,28(sp)
   10742:	c032                	sw	a2,0(sp)
   10744:	cc62                	sw	s8,24(sp)
   10746:	353d                	jal	10574 <LOADBYTES>
   10748:	5b82                	lw	s7,32(sp)
   1074a:	5b12                	lw	s6,36(sp)
   1074c:	4602                	lw	a2,0(sp)
   1074e:	00abcbb3          	xor	s7,s7,a0
   10752:	00bb4b33          	xor	s6,s6,a1
   10756:	46a1                	li	a3,8
   10758:	85e2                	mv	a1,s8
   1075a:	8526                	mv	a0,s1
   1075c:	35bd                	jal	105ca <STOREBYTES>
   1075e:	86ea                	mv	a3,s10
   10760:	85de                	mv	a1,s7
   10762:	865a                	mv	a2,s6
   10764:	00848513          	addi	a0,s1,8
   10768:	358d                	jal	105ca <STOREBYTES>
   1076a:	463d                	li	a2,15
   1076c:	8e01                	sub	a2,a2,s0
   1076e:	060e                	slli	a2,a2,0x3
   10770:	08000513          	li	a0,128
   10774:	4581                	li	a1,0
   10776:	2d59                	jal	10e0c <__ashldi3>
   10778:	01754533          	xor	a0,a0,s7
   1077c:	0165c5b3          	xor	a1,a1,s6
   10780:	d02a                	sw	a0,32(sp)
   10782:	d22e                	sw	a1,36(sp)
   10784:	5722                	lw	a4,40(sp)
   10786:	57b2                	lw	a5,44(sp)
   10788:	0828                	addi	a0,sp,24
   1078a:	01374733          	xor	a4,a4,s3
   1078e:	0127c7b3          	xor	a5,a5,s2
   10792:	d43a                	sw	a4,40(sp)
   10794:	d63e                	sw	a5,44(sp)
   10796:	5742                	lw	a4,48(sp)
   10798:	57d2                	lw	a5,52(sp)
   1079a:	9426                	add	s0,s0,s1
   1079c:	01574733          	xor	a4,a4,s5
   107a0:	0147c7b3          	xor	a5,a5,s4
   107a4:	d83a                	sw	a4,48(sp)
   107a6:	da3e                	sw	a5,52(sp)
   107a8:	3b11                	jal	104bc <P12>
   107aa:	55c2                	lw	a1,48(sp)
   107ac:	5652                	lw	a2,52(sp)
   107ae:	57e2                	lw	a5,56(sp)
   107b0:	54f2                	lw	s1,60(sp)
   107b2:	0135c5b3          	xor	a1,a1,s3
   107b6:	01264633          	xor	a2,a2,s2
   107ba:	8522                	mv	a0,s0
   107bc:	46a1                	li	a3,8
   107be:	0157cab3          	xor	s5,a5,s5
   107c2:	0144c4b3          	xor	s1,s1,s4
   107c6:	3511                	jal	105ca <STOREBYTES>
   107c8:	00840513          	addi	a0,s0,8
   107cc:	85d6                	mv	a1,s5
   107ce:	8626                	mv	a2,s1
   107d0:	46a1                	li	a3,8
   107d2:	3be5                	jal	105ca <STOREBYTES>
   107d4:	50f6                	lw	ra,124(sp)
   107d6:	5466                	lw	s0,120(sp)
   107d8:	54d6                	lw	s1,116(sp)
   107da:	5946                	lw	s2,112(sp)
   107dc:	59b6                	lw	s3,108(sp)
   107de:	5a26                	lw	s4,104(sp)
   107e0:	5a96                	lw	s5,100(sp)
   107e2:	5b06                	lw	s6,96(sp)
   107e4:	4bf6                	lw	s7,92(sp)
   107e6:	4c66                	lw	s8,88(sp)
   107e8:	4cd6                	lw	s9,84(sp)
   107ea:	4d46                	lw	s10,80(sp)
   107ec:	4db6                	lw	s11,76(sp)
   107ee:	4501                	li	a0,0
   107f0:	6109                	addi	sp,sp,128
   107f2:	8082                	ret
   107f4:	856e                	mv	a0,s11
   107f6:	45a1                	li	a1,8
   107f8:	c63e                	sw	a5,12(sp)
   107fa:	c43a                	sw	a4,8(sp)
   107fc:	3ba5                	jal	10574 <LOADBYTES>
   107fe:	01754533          	xor	a0,a0,s7
   10802:	0165c5b3          	xor	a1,a1,s6
   10806:	cc2a                	sw	a0,24(sp)
   10808:	ce2e                	sw	a1,28(sp)
   1080a:	008d8513          	addi	a0,s11,8
   1080e:	45a1                	li	a1,8
   10810:	3395                	jal	10574 <LOADBYTES>
   10812:	5602                	lw	a2,32(sp)
   10814:	0dc1                	addi	s11,s11,16
   10816:	8d31                	xor	a0,a0,a2
   10818:	5612                	lw	a2,36(sp)
   1081a:	d02a                	sw	a0,32(sp)
   1081c:	0828                	addi	a0,sp,24
   1081e:	8e2d                	xor	a2,a2,a1
   10820:	d232                	sw	a2,36(sp)
   10822:	3319                	jal	10528 <P8>
   10824:	4722                	lw	a4,8(sp)
   10826:	47b2                	lw	a5,12(sp)
   10828:	ff070613          	addi	a2,a4,-16
   1082c:	00e635b3          	sltu	a1,a2,a4
   10830:	17fd                	addi	a5,a5,-1
   10832:	8732                	mv	a4,a2
   10834:	97ae                	add	a5,a5,a1
   10836:	4be2                	lw	s7,24(sp)
   10838:	4b72                	lw	s6,28(sp)
   1083a:	483d                	li	a6,15
   1083c:	ffc5                	bnez	a5,107f4 <crypto_aead_encrypt+0x1d8>
   1083e:	fae86be3          	bltu	a6,a4,107f4 <crypto_aead_encrypt+0x1d8>
   10842:	4612                	lw	a2,4(sp)
   10844:	01cc9793          	slli	a5,s9,0x1c
   10848:	004d5693          	srli	a3,s10,0x4
   1084c:	8edd                	or	a3,a3,a5
   1084e:	00469793          	slli	a5,a3,0x4
   10852:	00f60db3          	add	s11,a2,a5
   10856:	004cd713          	srli	a4,s9,0x4
   1085a:	5641                	li	a2,-16
   1085c:	02e60733          	mul	a4,a2,a4
   10860:	02d607b3          	mul	a5,a2,a3
   10864:	8f15                	sub	a4,a4,a3
   10866:	02d63633          	mulhu	a2,a2,a3
   1086a:	9d3e                	add	s10,s10,a5
   1086c:	00fd37b3          	sltu	a5,s10,a5
   10870:	9732                	add	a4,a4,a2
   10872:	019708b3          	add	a7,a4,s9
   10876:	97c6                	add	a5,a5,a7
   10878:	e781                	bnez	a5,10880 <crypto_aead_encrypt+0x264>
   1087a:	461d                	li	a2,7
   1087c:	05a67c63          	bgeu	a2,s10,108d4 <crypto_aead_encrypt+0x2b8>
   10880:	45a1                	li	a1,8
   10882:	856e                	mv	a0,s11
   10884:	39c5                	jal	10574 <LOADBYTES>
   10886:	01754533          	xor	a0,a0,s7
   1088a:	0165c5b3          	xor	a1,a1,s6
   1088e:	cc2a                	sw	a0,24(sp)
   10890:	ce2e                	sw	a1,28(sp)
   10892:	008d8513          	addi	a0,s11,8
   10896:	ff8d0593          	addi	a1,s10,-8
   1089a:	39e9                	jal	10574 <LOADBYTES>
   1089c:	463d                	li	a2,15
   1089e:	41a60633          	sub	a2,a2,s10
   108a2:	8baa                	mv	s7,a0
   108a4:	8b2e                	mv	s6,a1
   108a6:	060e                	slli	a2,a2,0x3
   108a8:	08000513          	li	a0,128
   108ac:	4581                	li	a1,0
   108ae:	2bb9                	jal	10e0c <__ashldi3>
   108b0:	5782                	lw	a5,32(sp)
   108b2:	00a7c733          	xor	a4,a5,a0
   108b6:	5792                	lw	a5,36(sp)
   108b8:	01774733          	xor	a4,a4,s7
   108bc:	d03a                	sw	a4,32(sp)
   108be:	8fad                	xor	a5,a5,a1
   108c0:	0167c5b3          	xor	a1,a5,s6
   108c4:	d22e                	sw	a1,36(sp)
   108c6:	0828                	addi	a0,sp,24
   108c8:	3185                	jal	10528 <P8>
   108ca:	b501                	j	106ca <crypto_aead_encrypt+0xae>
   108cc:	4d92                	lw	s11,4(sp)
   108ce:	876a                	mv	a4,s10
   108d0:	87e6                	mv	a5,s9
   108d2:	b795                	j	10836 <crypto_aead_encrypt+0x21a>
   108d4:	856e                	mv	a0,s11
   108d6:	85ea                	mv	a1,s10
   108d8:	3971                	jal	10574 <LOADBYTES>
   108da:	461d                	li	a2,7
   108dc:	41a60633          	sub	a2,a2,s10
   108e0:	8caa                	mv	s9,a0
   108e2:	8dae                	mv	s11,a1
   108e4:	060e                	slli	a2,a2,0x3
   108e6:	08000513          	li	a0,128
   108ea:	4581                	li	a1,0
   108ec:	2305                	jal	10e0c <__ashldi3>
   108ee:	017547b3          	xor	a5,a0,s7
   108f2:	0165c5b3          	xor	a1,a1,s6
   108f6:	0197c533          	xor	a0,a5,s9
   108fa:	01b5c5b3          	xor	a1,a1,s11
   108fe:	cc2a                	sw	a0,24(sp)
   10900:	ce2e                	sw	a1,28(sp)
   10902:	b7d1                	j	108c6 <crypto_aead_encrypt+0x2aa>
   10904:	8566                	mv	a0,s9
   10906:	45a1                	li	a1,8
   10908:	c63e                	sw	a5,12(sp)
   1090a:	31ad                	jal	10574 <LOADBYTES>
   1090c:	01754833          	xor	a6,a0,s7
   10910:	0165c633          	xor	a2,a1,s6
   10914:	008c8513          	addi	a0,s9,8
   10918:	45a1                	li	a1,8
   1091a:	cc42                	sw	a6,24(sp)
   1091c:	c442                	sw	a6,8(sp)
   1091e:	ce32                	sw	a2,28(sp)
   10920:	c232                	sw	a2,4(sp)
   10922:	3989                	jal	10574 <LOADBYTES>
   10924:	4822                	lw	a6,8(sp)
   10926:	5b82                	lw	s7,32(sp)
   10928:	5b12                	lw	s6,36(sp)
   1092a:	4612                	lw	a2,4(sp)
   1092c:	00abcbb3          	xor	s7,s7,a0
   10930:	00bb4b33          	xor	s6,s6,a1
   10934:	856e                	mv	a0,s11
   10936:	85c2                	mv	a1,a6
   10938:	46a1                	li	a3,8
   1093a:	d05e                	sw	s7,32(sp)
   1093c:	d25a                	sw	s6,36(sp)
   1093e:	3171                	jal	105ca <STOREBYTES>
   10940:	46a1                	li	a3,8
   10942:	865a                	mv	a2,s6
   10944:	008d8513          	addi	a0,s11,8
   10948:	85de                	mv	a1,s7
   1094a:	3141                	jal	105ca <STOREBYTES>
   1094c:	0828                	addi	a0,sp,24
   1094e:	3ee9                	jal	10528 <P8>
   10950:	47b2                	lw	a5,12(sp)
   10952:	1d7d                	addi	s10,s10,-1
   10954:	0cc1                	addi	s9,s9,16
   10956:	ff078693          	addi	a3,a5,-16
   1095a:	00f6b633          	sltu	a2,a3,a5
   1095e:	0dc1                	addi	s11,s11,16
   10960:	87b6                	mv	a5,a3
   10962:	9d32                	add	s10,s10,a2
   10964:	bb9d                	j	106da <crypto_aead_encrypt+0xbe>
   10966:	85a2                	mv	a1,s0
   10968:	8566                	mv	a0,s9
   1096a:	3129                	jal	10574 <LOADBYTES>
   1096c:	01754bb3          	xor	s7,a0,s7
   10970:	0165cb33          	xor	s6,a1,s6
   10974:	86a2                	mv	a3,s0
   10976:	85de                	mv	a1,s7
   10978:	865a                	mv	a2,s6
   1097a:	8526                	mv	a0,s1
   1097c:	31b9                	jal	105ca <STOREBYTES>
   1097e:	408c0633          	sub	a2,s8,s0
   10982:	060e                	slli	a2,a2,0x3
   10984:	08000513          	li	a0,128
   10988:	4581                	li	a1,0
   1098a:	2149                	jal	10e0c <__ashldi3>
   1098c:	01754533          	xor	a0,a0,s7
   10990:	0165c5b3          	xor	a1,a1,s6
   10994:	cc2a                	sw	a0,24(sp)
   10996:	ce2e                	sw	a1,28(sp)
   10998:	b3f5                	j	10784 <crypto_aead_encrypt+0x168>

0001099a <crypto_aead_decrypt>:
   1099a:	7171                	addi	sp,sp,-176
   1099c:	cb26                	sw	s1,148(sp)
   1099e:	c94a                	sw	s2,144(sp)
   109a0:	c356                	sw	s5,132(sp)
   109a2:	dce2                	sw	s8,120(sp)
   109a4:	d6ee                	sw	s11,108(sp)
   109a6:	cf06                	sw	ra,156(sp)
   109a8:	cd22                	sw	s0,152(sp)
   109aa:	c74e                	sw	s3,140(sp)
   109ac:	c552                	sw	s4,136(sp)
   109ae:	c15a                	sw	s6,128(sp)
   109b0:	dede                	sw	s7,124(sp)
   109b2:	dae6                	sw	s9,116(sp)
   109b4:	d8ea                	sw	s10,112(sp)
   109b6:	c42a                	sw	a0,8(sp)
   109b8:	c636                	sw	a3,12(sp)
   109ba:	c842                	sw	a6,16(sp)
   109bc:	d746                	sw	a7,172(sp)
   109be:	564a                	lw	a2,176(sp)
   109c0:	5c5a                	lw	s8,180(sp)
   109c2:	5aea                	lw	s5,184(sp)
   109c4:	84ba                	mv	s1,a4
   109c6:	893e                	mv	s2,a5
   109c8:	8dc6                	mv	s11,a7
   109ca:	e789                	bnez	a5,109d4 <crypto_aead_decrypt+0x3a>
   109cc:	47bd                	li	a5,15
   109ce:	557d                	li	a0,-1
   109d0:	1ee7f263          	bgeu	a5,a4,10bb4 <crypto_aead_decrypt+0x21a>
   109d4:	ff048413          	addi	s0,s1,-16
   109d8:	fff90793          	addi	a5,s2,-1
   109dc:	00943cb3          	sltu	s9,s0,s1
   109e0:	9cbe                	add	s9,s9,a5
   109e2:	c180                	sw	s0,0(a1)
   109e4:	0195a223          	sw	s9,4(a1)
   109e8:	8556                	mv	a0,s5
   109ea:	45a1                	li	a1,8
   109ec:	ca32                	sw	a2,20(sp)
   109ee:	3659                	jal	10574 <LOADBYTES>
   109f0:	8a2a                	mv	s4,a0
   109f2:	89ae                	mv	s3,a1
   109f4:	008a8513          	addi	a0,s5,8
   109f8:	45a1                	li	a1,8
   109fa:	3ead                	jal	10574 <LOADBYTES>
   109fc:	8b2a                	mv	s6,a0
   109fe:	8aae                	mv	s5,a1
   10a00:	8562                	mv	a0,s8
   10a02:	45a1                	li	a1,8
   10a04:	3e85                	jal	10574 <LOADBYTES>
   10a06:	8baa                	mv	s7,a0
   10a08:	8d2e                	mv	s10,a1
   10a0a:	008c0513          	addi	a0,s8,8
   10a0e:	45a1                	li	a1,8
   10a10:	3695                	jal	10574 <LOADBYTES>
   10a12:	808018b7          	lui	a7,0x80801
   10a16:	4801                	li	a6,0
   10a18:	c0888893          	addi	a7,a7,-1016 # 80800c08 <__BSS_END__+0x807e3ddc>
   10a1c:	ccaa                	sw	a0,88(sp)
   10a1e:	1828                	addi	a0,sp,56
   10a20:	dc42                	sw	a6,56(sp)
   10a22:	de46                	sw	a7,60(sp)
   10a24:	c0d2                	sw	s4,64(sp)
   10a26:	c2ce                	sw	s3,68(sp)
   10a28:	c4da                	sw	s6,72(sp)
   10a2a:	c6d6                	sw	s5,76(sp)
   10a2c:	c8de                	sw	s7,80(sp)
   10a2e:	caea                	sw	s10,84(sp)
   10a30:	ceae                	sw	a1,92(sp)
   10a32:	3469                	jal	104bc <P12>
   10a34:	4746                	lw	a4,80(sp)
   10a36:	47d6                	lw	a5,84(sp)
   10a38:	4652                	lw	a2,20(sp)
   10a3a:	01474733          	xor	a4,a4,s4
   10a3e:	0137c7b3          	xor	a5,a5,s3
   10a42:	c8ba                	sw	a4,80(sp)
   10a44:	cabe                	sw	a5,84(sp)
   10a46:	4766                	lw	a4,88(sp)
   10a48:	47f6                	lw	a5,92(sp)
   10a4a:	01674733          	xor	a4,a4,s6
   10a4e:	0157c7b3          	xor	a5,a5,s5
   10a52:	cebe                	sw	a5,92(sp)
   10a54:	ccba                	sw	a4,88(sp)
   10a56:	00cde7b3          	or	a5,s11,a2
   10a5a:	26079163          	bnez	a5,10cbc <crypto_aead_decrypt+0x322>
   10a5e:	47e6                	lw	a5,88(sp)
   10a60:	4db2                	lw	s11,12(sp)
   10a62:	4d22                	lw	s10,8(sp)
   10a64:	0017c793          	xori	a5,a5,1
   10a68:	ccbe                	sw	a5,88(sp)
   10a6a:	ff048713          	addi	a4,s1,-16
   10a6e:	009736b3          	sltu	a3,a4,s1
   10a72:	197d                	addi	s2,s2,-1
   10a74:	9936                	add	s2,s2,a3
   10a76:	5c62                	lw	s8,56(sp)
   10a78:	5bf2                	lw	s7,60(sp)
   10a7a:	483d                	li	a6,15
   10a7c:	84ba                	mv	s1,a4
   10a7e:	26091c63          	bnez	s2,10cf6 <crypto_aead_decrypt+0x35c>
   10a82:	26e86a63          	bltu	a6,a4,10cf6 <crypto_aead_decrypt+0x35c>
   10a86:	4622                	lw	a2,8(sp)
   10a88:	01cc9793          	slli	a5,s9,0x1c
   10a8c:	00445693          	srli	a3,s0,0x4
   10a90:	8edd                	or	a3,a3,a5
   10a92:	00469713          	slli	a4,a3,0x4
   10a96:	00e60933          	add	s2,a2,a4
   10a9a:	4632                	lw	a2,12(sp)
   10a9c:	004cd793          	srli	a5,s9,0x4
   10aa0:	9732                	add	a4,a4,a2
   10aa2:	5641                	li	a2,-16
   10aa4:	02f607b3          	mul	a5,a2,a5
   10aa8:	c43a                	sw	a4,8(sp)
   10aaa:	02d60733          	mul	a4,a2,a3
   10aae:	8f95                	sub	a5,a5,a3
   10ab0:	02d63633          	mulhu	a2,a2,a3
   10ab4:	943a                	add	s0,s0,a4
   10ab6:	00e43733          	sltu	a4,s0,a4
   10aba:	97b2                	add	a5,a5,a2
   10abc:	97e6                	add	a5,a5,s9
   10abe:	973e                	add	a4,a4,a5
   10ac0:	e701                	bnez	a4,10ac8 <crypto_aead_decrypt+0x12e>
   10ac2:	479d                	li	a5,7
   10ac4:	2a87fb63          	bgeu	a5,s0,10d7a <crypto_aead_decrypt+0x3e0>
   10ac8:	4522                	lw	a0,8(sp)
   10aca:	45a1                	li	a1,8
   10acc:	3465                	jal	10574 <LOADBYTES>
   10ace:	ff840793          	addi	a5,s0,-8
   10ad2:	8d2e                	mv	s10,a1
   10ad4:	c63e                	sw	a5,12(sp)
   10ad6:	85be                	mv	a1,a5
   10ad8:	47a2                	lw	a5,8(sp)
   10ada:	8daa                	mv	s11,a0
   10adc:	00878513          	addi	a0,a5,8
   10ae0:	3c51                	jal	10574 <LOADBYTES>
   10ae2:	017d4633          	xor	a2,s10,s7
   10ae6:	8caa                	mv	s9,a0
   10ae8:	84ae                	mv	s1,a1
   10aea:	854a                	mv	a0,s2
   10aec:	018dc5b3          	xor	a1,s11,s8
   10af0:	46a1                	li	a3,8
   10af2:	3ce1                	jal	105ca <STOREBYTES>
   10af4:	4c06                	lw	s8,64(sp)
   10af6:	4b96                	lw	s7,68(sp)
   10af8:	00890513          	addi	a0,s2,8
   10afc:	ff840693          	addi	a3,s0,-8
   10b00:	019c45b3          	xor	a1,s8,s9
   10b04:	009bc633          	xor	a2,s7,s1
   10b08:	34c9                	jal	105ca <STOREBYTES>
   10b0a:	4901                	li	s2,0
   10b0c:	de6a                	sw	s10,60(sp)
   10b0e:	dc6e                	sw	s11,56(sp)
   10b10:	5d61                	li	s10,-8
   10b12:	47b2                	lw	a5,12(sp)
   10b14:	24f94163          	blt	s2,a5,10d56 <crypto_aead_decrypt+0x3bc>
   10b18:	463d                	li	a2,15
   10b1a:	8e01                	sub	a2,a2,s0
   10b1c:	060e                	slli	a2,a2,0x3
   10b1e:	08000513          	li	a0,128
   10b22:	4581                	li	a1,0
   10b24:	24e5                	jal	10e0c <__ashldi3>
   10b26:	018cecb3          	or	s9,s9,s8
   10b2a:	0174e4b3          	or	s1,s1,s7
   10b2e:	01954533          	xor	a0,a0,s9
   10b32:	8da5                	xor	a1,a1,s1
   10b34:	c0aa                	sw	a0,64(sp)
   10b36:	c2ae                	sw	a1,68(sp)
   10b38:	4726                	lw	a4,72(sp)
   10b3a:	47b6                	lw	a5,76(sp)
   10b3c:	1828                	addi	a0,sp,56
   10b3e:	01474733          	xor	a4,a4,s4
   10b42:	0137c7b3          	xor	a5,a5,s3
   10b46:	c4ba                	sw	a4,72(sp)
   10b48:	c6be                	sw	a5,76(sp)
   10b4a:	4746                	lw	a4,80(sp)
   10b4c:	47d6                	lw	a5,84(sp)
   10b4e:	01674733          	xor	a4,a4,s6
   10b52:	0157c7b3          	xor	a5,a5,s5
   10b56:	c8ba                	sw	a4,80(sp)
   10b58:	cabe                	sw	a5,84(sp)
   10b5a:	963ff0ef          	jal	104bc <P12>
   10b5e:	45c6                	lw	a1,80(sp)
   10b60:	4656                	lw	a2,84(sp)
   10b62:	4966                	lw	s2,88(sp)
   10b64:	44f6                	lw	s1,92(sp)
   10b66:	46a1                	li	a3,8
   10b68:	0145c5b3          	xor	a1,a1,s4
   10b6c:	01364633          	xor	a2,a2,s3
   10b70:	1028                	addi	a0,sp,40
   10b72:	3ca1                	jal	105ca <STOREBYTES>
   10b74:	01694933          	xor	s2,s2,s6
   10b78:	0154c4b3          	xor	s1,s1,s5
   10b7c:	8626                	mv	a2,s1
   10b7e:	46a1                	li	a3,8
   10b80:	85ca                	mv	a1,s2
   10b82:	1808                	addi	a0,sp,48
   10b84:	3499                	jal	105ca <STOREBYTES>
   10b86:	4781                	li	a5,0
   10b88:	4701                	li	a4,0
   10b8a:	4641                	li	a2,16
   10b8c:	45a2                	lw	a1,8(sp)
   10b8e:	008706b3          	add	a3,a4,s0
   10b92:	96ae                	add	a3,a3,a1
   10b94:	102c                	addi	a1,sp,40
   10b96:	95ba                	add	a1,a1,a4
   10b98:	0006c683          	lbu	a3,0(a3)
   10b9c:	0005c583          	lbu	a1,0(a1)
   10ba0:	0705                	addi	a4,a4,1
   10ba2:	8ead                	xor	a3,a3,a1
   10ba4:	8fd5                	or	a5,a5,a3
   10ba6:	fec713e3          	bne	a4,a2,10b8c <crypto_aead_decrypt+0x1f2>
   10baa:	fff78513          	addi	a0,a5,-1
   10bae:	8521                	srai	a0,a0,0x8
   10bb0:	8905                	andi	a0,a0,1
   10bb2:	157d                	addi	a0,a0,-1
   10bb4:	40fa                	lw	ra,156(sp)
   10bb6:	446a                	lw	s0,152(sp)
   10bb8:	44da                	lw	s1,148(sp)
   10bba:	494a                	lw	s2,144(sp)
   10bbc:	49ba                	lw	s3,140(sp)
   10bbe:	4a2a                	lw	s4,136(sp)
   10bc0:	4a9a                	lw	s5,132(sp)
   10bc2:	4b0a                	lw	s6,128(sp)
   10bc4:	5bf6                	lw	s7,124(sp)
   10bc6:	5c66                	lw	s8,120(sp)
   10bc8:	5cd6                	lw	s9,116(sp)
   10bca:	5d46                	lw	s10,112(sp)
   10bcc:	5db6                	lw	s11,108(sp)
   10bce:	614d                	addi	sp,sp,176
   10bd0:	8082                	ret
   10bd2:	855e                	mv	a0,s7
   10bd4:	45a1                	li	a1,8
   10bd6:	ce32                	sw	a2,28(sp)
   10bd8:	cc3e                	sw	a5,24(sp)
   10bda:	ca3a                	sw	a4,20(sp)
   10bdc:	3a61                	jal	10574 <LOADBYTES>
   10bde:	01a54533          	xor	a0,a0,s10
   10be2:	0185c5b3          	xor	a1,a1,s8
   10be6:	dc2a                	sw	a0,56(sp)
   10be8:	de2e                	sw	a1,60(sp)
   10bea:	008b8513          	addi	a0,s7,8
   10bee:	45a1                	li	a1,8
   10bf0:	3251                	jal	10574 <LOADBYTES>
   10bf2:	4806                	lw	a6,64(sp)
   10bf4:	0bc1                	addi	s7,s7,16
   10bf6:	00a84533          	xor	a0,a6,a0
   10bfa:	4816                	lw	a6,68(sp)
   10bfc:	c0aa                	sw	a0,64(sp)
   10bfe:	1828                	addi	a0,sp,56
   10c00:	00b84833          	xor	a6,a6,a1
   10c04:	c2c2                	sw	a6,68(sp)
   10c06:	923ff0ef          	jal	10528 <P8>
   10c0a:	4752                	lw	a4,20(sp)
   10c0c:	47e2                	lw	a5,24(sp)
   10c0e:	4672                	lw	a2,28(sp)
   10c10:	ff070593          	addi	a1,a4,-16
   10c14:	00e5b533          	sltu	a0,a1,a4
   10c18:	17fd                	addi	a5,a5,-1
   10c1a:	872e                	mv	a4,a1
   10c1c:	97aa                	add	a5,a5,a0
   10c1e:	5d62                	lw	s10,56(sp)
   10c20:	5c72                	lw	s8,60(sp)
   10c22:	48bd                	li	a7,15
   10c24:	f7dd                	bnez	a5,10bd2 <crypto_aead_decrypt+0x238>
   10c26:	fae8e6e3          	bltu	a7,a4,10bd2 <crypto_aead_decrypt+0x238>
   10c2a:	4742                	lw	a4,16(sp)
   10c2c:	01c61793          	slli	a5,a2,0x1c
   10c30:	004dd693          	srli	a3,s11,0x4
   10c34:	8edd                	or	a3,a3,a5
   10c36:	55c1                	li	a1,-16
   10c38:	00465793          	srli	a5,a2,0x4
   10c3c:	02f587b3          	mul	a5,a1,a5
   10c40:	00469813          	slli	a6,a3,0x4
   10c44:	983a                	add	a6,a6,a4
   10c46:	02d58733          	mul	a4,a1,a3
   10c4a:	8f95                	sub	a5,a5,a3
   10c4c:	02d5b5b3          	mulhu	a1,a1,a3
   10c50:	01b70bb3          	add	s7,a4,s11
   10c54:	00ebb733          	sltu	a4,s7,a4
   10c58:	97ae                	add	a5,a5,a1
   10c5a:	97b2                	add	a5,a5,a2
   10c5c:	973e                	add	a4,a4,a5
   10c5e:	e701                	bnez	a4,10c66 <crypto_aead_decrypt+0x2cc>
   10c60:	4d9d                	li	s11,7
   10c62:	077df163          	bgeu	s11,s7,10cc4 <crypto_aead_decrypt+0x32a>
   10c66:	8542                	mv	a0,a6
   10c68:	45a1                	li	a1,8
   10c6a:	c842                	sw	a6,16(sp)
   10c6c:	909ff0ef          	jal	10574 <LOADBYTES>
   10c70:	4842                	lw	a6,16(sp)
   10c72:	01a54533          	xor	a0,a0,s10
   10c76:	0185c5b3          	xor	a1,a1,s8
   10c7a:	dc2a                	sw	a0,56(sp)
   10c7c:	de2e                	sw	a1,60(sp)
   10c7e:	00880513          	addi	a0,a6,8
   10c82:	ff8b8593          	addi	a1,s7,-8
   10c86:	8efff0ef          	jal	10574 <LOADBYTES>
   10c8a:	463d                	li	a2,15
   10c8c:	41760633          	sub	a2,a2,s7
   10c90:	8d2a                	mv	s10,a0
   10c92:	8c2e                	mv	s8,a1
   10c94:	060e                	slli	a2,a2,0x3
   10c96:	08000513          	li	a0,128
   10c9a:	4581                	li	a1,0
   10c9c:	2a85                	jal	10e0c <__ashldi3>
   10c9e:	4786                	lw	a5,64(sp)
   10ca0:	00a7c733          	xor	a4,a5,a0
   10ca4:	4796                	lw	a5,68(sp)
   10ca6:	01a74733          	xor	a4,a4,s10
   10caa:	c0ba                	sw	a4,64(sp)
   10cac:	8fad                	xor	a5,a5,a1
   10cae:	0187c5b3          	xor	a1,a5,s8
   10cb2:	c2ae                	sw	a1,68(sp)
   10cb4:	1828                	addi	a0,sp,56
   10cb6:	873ff0ef          	jal	10528 <P8>
   10cba:	b355                	j	10a5e <crypto_aead_decrypt+0xc4>
   10cbc:	4bc2                	lw	s7,16(sp)
   10cbe:	876e                	mv	a4,s11
   10cc0:	87b2                	mv	a5,a2
   10cc2:	bfb1                	j	10c1e <crypto_aead_decrypt+0x284>
   10cc4:	8542                	mv	a0,a6
   10cc6:	85de                	mv	a1,s7
   10cc8:	8adff0ef          	jal	10574 <LOADBYTES>
   10ccc:	417d8633          	sub	a2,s11,s7
   10cd0:	ca2a                	sw	a0,20(sp)
   10cd2:	c82e                	sw	a1,16(sp)
   10cd4:	060e                	slli	a2,a2,0x3
   10cd6:	08000513          	li	a0,128
   10cda:	4581                	li	a1,0
   10cdc:	2a05                	jal	10e0c <__ashldi3>
   10cde:	46d2                	lw	a3,20(sp)
   10ce0:	4742                	lw	a4,16(sp)
   10ce2:	01a547b3          	xor	a5,a0,s10
   10ce6:	0185c5b3          	xor	a1,a1,s8
   10cea:	00d7c533          	xor	a0,a5,a3
   10cee:	8db9                	xor	a1,a1,a4
   10cf0:	dc2a                	sw	a0,56(sp)
   10cf2:	de2e                	sw	a1,60(sp)
   10cf4:	b7c1                	j	10cb4 <crypto_aead_decrypt+0x31a>
   10cf6:	856e                	mv	a0,s11
   10cf8:	45a1                	li	a1,8
   10cfa:	87bff0ef          	jal	10574 <LOADBYTES>
   10cfe:	c82a                	sw	a0,16(sp)
   10d00:	ca2e                	sw	a1,20(sp)
   10d02:	008d8513          	addi	a0,s11,8
   10d06:	45a1                	li	a1,8
   10d08:	86dff0ef          	jal	10574 <LOADBYTES>
   10d0c:	47c2                	lw	a5,16(sp)
   10d0e:	ce2e                	sw	a1,28(sp)
   10d10:	cc2a                	sw	a0,24(sp)
   10d12:	0187c5b3          	xor	a1,a5,s8
   10d16:	47d2                	lw	a5,20(sp)
   10d18:	856a                	mv	a0,s10
   10d1a:	46a1                	li	a3,8
   10d1c:	0177c633          	xor	a2,a5,s7
   10d20:	8abff0ef          	jal	105ca <STOREBYTES>
   10d24:	47e2                	lw	a5,24(sp)
   10d26:	4586                	lw	a1,64(sp)
   10d28:	4616                	lw	a2,68(sp)
   10d2a:	008d0513          	addi	a0,s10,8
   10d2e:	8dbd                	xor	a1,a1,a5
   10d30:	47f2                	lw	a5,28(sp)
   10d32:	46a1                	li	a3,8
   10d34:	0d41                	addi	s10,s10,16
   10d36:	8e3d                	xor	a2,a2,a5
   10d38:	893ff0ef          	jal	105ca <STOREBYTES>
   10d3c:	47c2                	lw	a5,16(sp)
   10d3e:	1828                	addi	a0,sp,56
   10d40:	0dc1                	addi	s11,s11,16
   10d42:	dc3e                	sw	a5,56(sp)
   10d44:	47d2                	lw	a5,20(sp)
   10d46:	de3e                	sw	a5,60(sp)
   10d48:	47e2                	lw	a5,24(sp)
   10d4a:	c0be                	sw	a5,64(sp)
   10d4c:	47f2                	lw	a5,28(sp)
   10d4e:	c2be                	sw	a5,68(sp)
   10d50:	fd8ff0ef          	jal	10528 <P8>
   10d54:	bb19                	j	10a6a <crypto_aead_decrypt+0xd0>
   10d56:	03a90633          	mul	a2,s2,s10
   10d5a:	0ff00513          	li	a0,255
   10d5e:	4581                	li	a1,0
   10d60:	0905                	addi	s2,s2,1
   10d62:	03860613          	addi	a2,a2,56
   10d66:	205d                	jal	10e0c <__ashldi3>
   10d68:	fff54513          	not	a0,a0
   10d6c:	fff5c593          	not	a1,a1
   10d70:	00ac7c33          	and	s8,s8,a0
   10d74:	00bbfbb3          	and	s7,s7,a1
   10d78:	bb69                	j	10b12 <crypto_aead_decrypt+0x178>
   10d7a:	4522                	lw	a0,8(sp)
   10d7c:	85a2                	mv	a1,s0
   10d7e:	5d61                	li	s10,-8
   10d80:	ff4ff0ef          	jal	10574 <LOADBYTES>
   10d84:	8cae                	mv	s9,a1
   10d86:	84aa                	mv	s1,a0
   10d88:	018545b3          	xor	a1,a0,s8
   10d8c:	86a2                	mv	a3,s0
   10d8e:	854a                	mv	a0,s2
   10d90:	017cc633          	xor	a2,s9,s7
   10d94:	837ff0ef          	jal	105ca <STOREBYTES>
   10d98:	4901                	li	s2,0
   10d9a:	02894363          	blt	s2,s0,10dc0 <crypto_aead_decrypt+0x426>
   10d9e:	461d                	li	a2,7
   10da0:	8e01                	sub	a2,a2,s0
   10da2:	060e                	slli	a2,a2,0x3
   10da4:	08000513          	li	a0,128
   10da8:	4581                	li	a1,0
   10daa:	208d                	jal	10e0c <__ashldi3>
   10dac:	0184e4b3          	or	s1,s1,s8
   10db0:	017cecb3          	or	s9,s9,s7
   10db4:	8d25                	xor	a0,a0,s1
   10db6:	0195c5b3          	xor	a1,a1,s9
   10dba:	dc2a                	sw	a0,56(sp)
   10dbc:	de2e                	sw	a1,60(sp)
   10dbe:	bbad                	j	10b38 <crypto_aead_decrypt+0x19e>
   10dc0:	03a90633          	mul	a2,s2,s10
   10dc4:	0ff00513          	li	a0,255
   10dc8:	4581                	li	a1,0
   10dca:	0905                	addi	s2,s2,1
   10dcc:	03860613          	addi	a2,a2,56
   10dd0:	2835                	jal	10e0c <__ashldi3>
   10dd2:	fff54513          	not	a0,a0
   10dd6:	fff5c593          	not	a1,a1
   10dda:	00ac7c33          	and	s8,s8,a0
   10dde:	00bbfbb3          	and	s7,s7,a1
   10de2:	bf65                	j	10d9a <crypto_aead_decrypt+0x400>

00010de4 <__lshrdi3>:
   10de4:	ca19                	beqz	a2,10dfa <__lshrdi3+0x16>
   10de6:	02000793          	li	a5,32
   10dea:	8f91                	sub	a5,a5,a2
   10dec:	00f04863          	bgtz	a5,10dfc <__lshrdi3+0x18>
   10df0:	1601                	addi	a2,a2,-32
   10df2:	00c5d533          	srl	a0,a1,a2
   10df6:	4701                	li	a4,0
   10df8:	85ba                	mv	a1,a4
   10dfa:	8082                	ret
   10dfc:	00c5d733          	srl	a4,a1,a2
   10e00:	00c55533          	srl	a0,a0,a2
   10e04:	00f595b3          	sll	a1,a1,a5
   10e08:	8d4d                	or	a0,a0,a1
   10e0a:	b7fd                	j	10df8 <__lshrdi3+0x14>

00010e0c <__ashldi3>:
   10e0c:	ca19                	beqz	a2,10e22 <__ashldi3+0x16>
   10e0e:	02000793          	li	a5,32
   10e12:	8f91                	sub	a5,a5,a2
   10e14:	00f04863          	bgtz	a5,10e24 <__ashldi3+0x18>
   10e18:	1601                	addi	a2,a2,-32
   10e1a:	00c515b3          	sll	a1,a0,a2
   10e1e:	4701                	li	a4,0
   10e20:	853a                	mv	a0,a4
   10e22:	8082                	ret
   10e24:	00c51733          	sll	a4,a0,a2
   10e28:	00c595b3          	sll	a1,a1,a2
   10e2c:	00f55533          	srl	a0,a0,a5
   10e30:	8dc9                	or	a1,a1,a0
   10e32:	b7fd                	j	10e20 <__ashldi3+0x14>

00010e34 <__fp_lock>:
   10e34:	4501                	li	a0,0
   10e36:	8082                	ret

00010e38 <stdio_exit_handler>:
   10e38:	6671                	lui	a2,0x1c
   10e3a:	65d1                	lui	a1,0x14
   10e3c:	6571                	lui	a0,0x1c
   10e3e:	3e060613          	addi	a2,a2,992 # 1c3e0 <__sglue>
   10e42:	cde58593          	addi	a1,a1,-802 # 13cde <_fclose_r>
   10e46:	3f050513          	addi	a0,a0,1008 # 1c3f0 <_impure_data>
   10e4a:	aca9                	j	110a4 <_fwalk_sglue>

00010e4c <cleanup_stdio>:
   10e4c:	414c                	lw	a1,4(a0)
   10e4e:	1141                	addi	sp,sp,-16
   10e50:	c422                	sw	s0,8(sp)
   10e52:	c606                	sw	ra,12(sp)
   10e54:	f5c18793          	addi	a5,gp,-164 # 1cb3c <__sf>
   10e58:	842a                	mv	s0,a0
   10e5a:	00f58463          	beq	a1,a5,10e62 <cleanup_stdio+0x16>
   10e5e:	681020ef          	jal	13cde <_fclose_r>
   10e62:	440c                	lw	a1,8(s0)
   10e64:	fc418793          	addi	a5,gp,-60 # 1cba4 <__sf+0x68>
   10e68:	00f58563          	beq	a1,a5,10e72 <cleanup_stdio+0x26>
   10e6c:	8522                	mv	a0,s0
   10e6e:	671020ef          	jal	13cde <_fclose_r>
   10e72:	444c                	lw	a1,12(s0)
   10e74:	02c18793          	addi	a5,gp,44 # 1cc0c <__global_pointer$+0x2c>
   10e78:	00f58863          	beq	a1,a5,10e88 <cleanup_stdio+0x3c>
   10e7c:	8522                	mv	a0,s0
   10e7e:	4422                	lw	s0,8(sp)
   10e80:	40b2                	lw	ra,12(sp)
   10e82:	0141                	addi	sp,sp,16
   10e84:	65b0206f          	j	13cde <_fclose_r>
   10e88:	40b2                	lw	ra,12(sp)
   10e8a:	4422                	lw	s0,8(sp)
   10e8c:	0141                	addi	sp,sp,16
   10e8e:	8082                	ret

00010e90 <__fp_unlock>:
   10e90:	4501                	li	a0,0
   10e92:	8082                	ret

00010e94 <global_stdio_init.part.0>:
   10e94:	1101                	addi	sp,sp,-32
   10e96:	67c5                	lui	a5,0x11
   10e98:	cc22                	sw	s0,24(sp)
   10e9a:	e3878793          	addi	a5,a5,-456 # 10e38 <stdio_exit_handler>
   10e9e:	f5c18413          	addi	s0,gp,-164 # 1cb3c <__sf>
   10ea2:	ce06                	sw	ra,28(sp)
   10ea4:	ca26                	sw	s1,20(sp)
   10ea6:	c84a                	sw	s2,16(sp)
   10ea8:	c64e                	sw	s3,12(sp)
   10eaa:	c452                	sw	s4,8(sp)
   10eac:	f2f1a023          	sw	a5,-224(gp) # 1cb00 <__stdio_exit_handler>
   10eb0:	4621                	li	a2,8
   10eb2:	4791                	li	a5,4
   10eb4:	4581                	li	a1,0
   10eb6:	fb818513          	addi	a0,gp,-72 # 1cb98 <__sf+0x5c>
   10eba:	c45c                	sw	a5,12(s0)
   10ebc:	00042023          	sw	zero,0(s0)
   10ec0:	00042223          	sw	zero,4(s0)
   10ec4:	00042423          	sw	zero,8(s0)
   10ec8:	06042223          	sw	zero,100(s0)
   10ecc:	00042823          	sw	zero,16(s0)
   10ed0:	00042a23          	sw	zero,20(s0)
   10ed4:	00042c23          	sw	zero,24(s0)
   10ed8:	23f9                	jal	114a6 <memset>
   10eda:	67c1                	lui	a5,0x10
   10edc:	6a45                	lui	s4,0x11
   10ede:	69c5                	lui	s3,0x11
   10ee0:	6945                	lui	s2,0x11
   10ee2:	64c5                	lui	s1,0x11
   10ee4:	1fea0a13          	addi	s4,s4,510 # 111fe <__sread>
   10ee8:	23898993          	addi	s3,s3,568 # 11238 <__swrite>
   10eec:	28890913          	addi	s2,s2,648 # 11288 <__sseek>
   10ef0:	2d048493          	addi	s1,s1,720 # 112d0 <__sclose>
   10ef4:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   10ef6:	4621                	li	a2,8
   10ef8:	4581                	li	a1,0
   10efa:	02018513          	addi	a0,gp,32 # 1cc00 <__global_pointer$+0x20>
   10efe:	03442023          	sw	s4,32(s0)
   10f02:	03342223          	sw	s3,36(s0)
   10f06:	03242423          	sw	s2,40(s0)
   10f0a:	d444                	sw	s1,44(s0)
   10f0c:	d87c                	sw	a5,116(s0)
   10f0e:	cc40                	sw	s0,28(s0)
   10f10:	06042423          	sw	zero,104(s0)
   10f14:	06042623          	sw	zero,108(s0)
   10f18:	06042823          	sw	zero,112(s0)
   10f1c:	0c042623          	sw	zero,204(s0)
   10f20:	06042c23          	sw	zero,120(s0)
   10f24:	06042e23          	sw	zero,124(s0)
   10f28:	08042023          	sw	zero,128(s0)
   10f2c:	2bad                	jal	114a6 <memset>
   10f2e:	000207b7          	lui	a5,0x20
   10f32:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x31e6>
   10f34:	fc418713          	addi	a4,gp,-60 # 1cba4 <__sf+0x68>
   10f38:	4621                	li	a2,8
   10f3a:	4581                	li	a1,0
   10f3c:	08818513          	addi	a0,gp,136 # 1cc68 <__global_pointer$+0x88>
   10f40:	09442423          	sw	s4,136(s0)
   10f44:	09342623          	sw	s3,140(s0)
   10f48:	09242823          	sw	s2,144(s0)
   10f4c:	08942a23          	sw	s1,148(s0)
   10f50:	0cf42e23          	sw	a5,220(s0)
   10f54:	08e42223          	sw	a4,132(s0)
   10f58:	0c042823          	sw	zero,208(s0)
   10f5c:	0c042a23          	sw	zero,212(s0)
   10f60:	0c042c23          	sw	zero,216(s0)
   10f64:	12042a23          	sw	zero,308(s0)
   10f68:	0e042023          	sw	zero,224(s0)
   10f6c:	0e042223          	sw	zero,228(s0)
   10f70:	0e042423          	sw	zero,232(s0)
   10f74:	2b0d                	jal	114a6 <memset>
   10f76:	02c18793          	addi	a5,gp,44 # 1cc0c <__global_pointer$+0x2c>
   10f7a:	0f442823          	sw	s4,240(s0)
   10f7e:	0f342a23          	sw	s3,244(s0)
   10f82:	0f242c23          	sw	s2,248(s0)
   10f86:	0e942e23          	sw	s1,252(s0)
   10f8a:	40f2                	lw	ra,28(sp)
   10f8c:	0ef42623          	sw	a5,236(s0)
   10f90:	4462                	lw	s0,24(sp)
   10f92:	44d2                	lw	s1,20(sp)
   10f94:	4942                	lw	s2,16(sp)
   10f96:	49b2                	lw	s3,12(sp)
   10f98:	4a22                	lw	s4,8(sp)
   10f9a:	6105                	addi	sp,sp,32
   10f9c:	8082                	ret

00010f9e <__sfp>:
   10f9e:	f201a783          	lw	a5,-224(gp) # 1cb00 <__stdio_exit_handler>
   10fa2:	1101                	addi	sp,sp,-32
   10fa4:	c64e                	sw	s3,12(sp)
   10fa6:	ce06                	sw	ra,28(sp)
   10fa8:	cc22                	sw	s0,24(sp)
   10faa:	ca26                	sw	s1,20(sp)
   10fac:	c84a                	sw	s2,16(sp)
   10fae:	89aa                	mv	s3,a0
   10fb0:	c7cd                	beqz	a5,1105a <__sfp+0xbc>
   10fb2:	6971                	lui	s2,0x1c
   10fb4:	3e090913          	addi	s2,s2,992 # 1c3e0 <__sglue>
   10fb8:	54fd                	li	s1,-1
   10fba:	00492783          	lw	a5,4(s2)
   10fbe:	00892403          	lw	s0,8(s2)
   10fc2:	17fd                	addi	a5,a5,-1
   10fc4:	0007d763          	bgez	a5,10fd2 <__sfp+0x34>
   10fc8:	a8b9                	j	11026 <__sfp+0x88>
   10fca:	06840413          	addi	s0,s0,104
   10fce:	04978c63          	beq	a5,s1,11026 <__sfp+0x88>
   10fd2:	00c41703          	lh	a4,12(s0)
   10fd6:	17fd                	addi	a5,a5,-1
   10fd8:	fb6d                	bnez	a4,10fca <__sfp+0x2c>
   10fda:	77c1                	lui	a5,0xffff0
   10fdc:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd31d5>
   10fde:	c45c                	sw	a5,12(s0)
   10fe0:	06042223          	sw	zero,100(s0)
   10fe4:	00042023          	sw	zero,0(s0)
   10fe8:	00042423          	sw	zero,8(s0)
   10fec:	00042223          	sw	zero,4(s0)
   10ff0:	00042823          	sw	zero,16(s0)
   10ff4:	00042a23          	sw	zero,20(s0)
   10ff8:	00042c23          	sw	zero,24(s0)
   10ffc:	4621                	li	a2,8
   10ffe:	4581                	li	a1,0
   11000:	05c40513          	addi	a0,s0,92
   11004:	214d                	jal	114a6 <memset>
   11006:	02042823          	sw	zero,48(s0)
   1100a:	02042a23          	sw	zero,52(s0)
   1100e:	04042223          	sw	zero,68(s0)
   11012:	04042423          	sw	zero,72(s0)
   11016:	40f2                	lw	ra,28(sp)
   11018:	8522                	mv	a0,s0
   1101a:	4462                	lw	s0,24(sp)
   1101c:	44d2                	lw	s1,20(sp)
   1101e:	4942                	lw	s2,16(sp)
   11020:	49b2                	lw	s3,12(sp)
   11022:	6105                	addi	sp,sp,32
   11024:	8082                	ret
   11026:	00092403          	lw	s0,0(s2)
   1102a:	c019                	beqz	s0,11030 <__sfp+0x92>
   1102c:	8922                	mv	s2,s0
   1102e:	b771                	j	10fba <__sfp+0x1c>
   11030:	1ac00593          	li	a1,428
   11034:	854e                	mv	a0,s3
   11036:	28b000ef          	jal	11ac0 <_malloc_r>
   1103a:	842a                	mv	s0,a0
   1103c:	c10d                	beqz	a0,1105e <__sfp+0xc0>
   1103e:	0531                	addi	a0,a0,12
   11040:	4791                	li	a5,4
   11042:	00042023          	sw	zero,0(s0)
   11046:	c05c                	sw	a5,4(s0)
   11048:	c408                	sw	a0,8(s0)
   1104a:	1a000613          	li	a2,416
   1104e:	4581                	li	a1,0
   11050:	2999                	jal	114a6 <memset>
   11052:	00892023          	sw	s0,0(s2)
   11056:	8922                	mv	s2,s0
   11058:	b78d                	j	10fba <__sfp+0x1c>
   1105a:	3d2d                	jal	10e94 <global_stdio_init.part.0>
   1105c:	bf99                	j	10fb2 <__sfp+0x14>
   1105e:	00092023          	sw	zero,0(s2)
   11062:	47b1                	li	a5,12
   11064:	00f9a023          	sw	a5,0(s3)
   11068:	b77d                	j	11016 <__sfp+0x78>

0001106a <__sinit>:
   1106a:	595c                	lw	a5,52(a0)
   1106c:	c391                	beqz	a5,11070 <__sinit+0x6>
   1106e:	8082                	ret
   11070:	f201a703          	lw	a4,-224(gp) # 1cb00 <__stdio_exit_handler>
   11074:	67c5                	lui	a5,0x11
   11076:	e4c78793          	addi	a5,a5,-436 # 10e4c <cleanup_stdio>
   1107a:	d95c                	sw	a5,52(a0)
   1107c:	fb6d                	bnez	a4,1106e <__sinit+0x4>
   1107e:	bd19                	j	10e94 <global_stdio_init.part.0>

00011080 <__sfp_lock_acquire>:
   11080:	8082                	ret

00011082 <__sfp_lock_release>:
   11082:	8082                	ret

00011084 <__fp_lock_all>:
   11084:	6671                	lui	a2,0x1c
   11086:	65c5                	lui	a1,0x11
   11088:	3e060613          	addi	a2,a2,992 # 1c3e0 <__sglue>
   1108c:	e3458593          	addi	a1,a1,-460 # 10e34 <__fp_lock>
   11090:	4501                	li	a0,0
   11092:	a809                	j	110a4 <_fwalk_sglue>

00011094 <__fp_unlock_all>:
   11094:	6671                	lui	a2,0x1c
   11096:	65c5                	lui	a1,0x11
   11098:	3e060613          	addi	a2,a2,992 # 1c3e0 <__sglue>
   1109c:	e9058593          	addi	a1,a1,-368 # 10e90 <__fp_unlock>
   110a0:	4501                	li	a0,0
   110a2:	a009                	j	110a4 <_fwalk_sglue>

000110a4 <_fwalk_sglue>:
   110a4:	7179                	addi	sp,sp,-48
   110a6:	d04a                	sw	s2,32(sp)
   110a8:	ce4e                	sw	s3,28(sp)
   110aa:	cc52                	sw	s4,24(sp)
   110ac:	ca56                	sw	s5,20(sp)
   110ae:	c85a                	sw	s6,16(sp)
   110b0:	c65e                	sw	s7,12(sp)
   110b2:	d606                	sw	ra,44(sp)
   110b4:	d422                	sw	s0,40(sp)
   110b6:	d226                	sw	s1,36(sp)
   110b8:	8b2a                	mv	s6,a0
   110ba:	8bae                	mv	s7,a1
   110bc:	8ab2                	mv	s5,a2
   110be:	4a01                	li	s4,0
   110c0:	4985                	li	s3,1
   110c2:	597d                	li	s2,-1
   110c4:	004aa483          	lw	s1,4(s5)
   110c8:	008aa403          	lw	s0,8(s5)
   110cc:	14fd                	addi	s1,s1,-1
   110ce:	0204c463          	bltz	s1,110f6 <_fwalk_sglue+0x52>
   110d2:	00c45783          	lhu	a5,12(s0)
   110d6:	00f9fb63          	bgeu	s3,a5,110ec <_fwalk_sglue+0x48>
   110da:	00e41783          	lh	a5,14(s0)
   110de:	85a2                	mv	a1,s0
   110e0:	855a                	mv	a0,s6
   110e2:	01278563          	beq	a5,s2,110ec <_fwalk_sglue+0x48>
   110e6:	9b82                	jalr	s7
   110e8:	00aa6a33          	or	s4,s4,a0
   110ec:	14fd                	addi	s1,s1,-1
   110ee:	06840413          	addi	s0,s0,104
   110f2:	ff2490e3          	bne	s1,s2,110d2 <_fwalk_sglue+0x2e>
   110f6:	000aaa83          	lw	s5,0(s5)
   110fa:	fc0a95e3          	bnez	s5,110c4 <_fwalk_sglue+0x20>
   110fe:	50b2                	lw	ra,44(sp)
   11100:	5422                	lw	s0,40(sp)
   11102:	5492                	lw	s1,36(sp)
   11104:	5902                	lw	s2,32(sp)
   11106:	49f2                	lw	s3,28(sp)
   11108:	4ad2                	lw	s5,20(sp)
   1110a:	4b42                	lw	s6,16(sp)
   1110c:	4bb2                	lw	s7,12(sp)
   1110e:	8552                	mv	a0,s4
   11110:	4a62                	lw	s4,24(sp)
   11112:	6145                	addi	sp,sp,48
   11114:	8082                	ret

00011116 <_printf_r>:
   11116:	7139                	addi	sp,sp,-64
   11118:	d432                	sw	a2,40(sp)
   1111a:	d636                	sw	a3,44(sp)
   1111c:	d83a                	sw	a4,48(sp)
   1111e:	da3e                	sw	a5,52(sp)
   11120:	dc42                	sw	a6,56(sp)
   11122:	de46                	sw	a7,60(sp)
   11124:	862e                	mv	a2,a1
   11126:	450c                	lw	a1,8(a0)
   11128:	1034                	addi	a3,sp,40
   1112a:	ce06                	sw	ra,28(sp)
   1112c:	c636                	sw	a3,12(sp)
   1112e:	73b000ef          	jal	12068 <_vfprintf_r>
   11132:	40f2                	lw	ra,28(sp)
   11134:	6121                	addi	sp,sp,64
   11136:	8082                	ret

00011138 <printf>:
   11138:	f141a303          	lw	t1,-236(gp) # 1caf4 <_impure_ptr>
   1113c:	7139                	addi	sp,sp,-64
   1113e:	d432                	sw	a2,40(sp)
   11140:	d636                	sw	a3,44(sp)
   11142:	d22e                	sw	a1,36(sp)
   11144:	d83a                	sw	a4,48(sp)
   11146:	da3e                	sw	a5,52(sp)
   11148:	dc42                	sw	a6,56(sp)
   1114a:	de46                	sw	a7,60(sp)
   1114c:	00832583          	lw	a1,8(t1) # 10240 <frame_dummy+0x18>
   11150:	1054                	addi	a3,sp,36
   11152:	862a                	mv	a2,a0
   11154:	851a                	mv	a0,t1
   11156:	ce06                	sw	ra,28(sp)
   11158:	c636                	sw	a3,12(sp)
   1115a:	70f000ef          	jal	12068 <_vfprintf_r>
   1115e:	40f2                	lw	ra,28(sp)
   11160:	6121                	addi	sp,sp,64
   11162:	8082                	ret

00011164 <_putchar_r>:
   11164:	4510                	lw	a2,8(a0)
   11166:	1920306f          	j	142f8 <_putc_r>

0001116a <putchar>:
   1116a:	f141a783          	lw	a5,-236(gp) # 1caf4 <_impure_ptr>
   1116e:	85aa                	mv	a1,a0
   11170:	4790                	lw	a2,8(a5)
   11172:	853e                	mv	a0,a5
   11174:	1840306f          	j	142f8 <_putc_r>

00011178 <_puts_r>:
   11178:	7139                	addi	sp,sp,-64
   1117a:	dc22                	sw	s0,56(sp)
   1117c:	842a                	mv	s0,a0
   1117e:	852e                	mv	a0,a1
   11180:	da26                	sw	s1,52(sp)
   11182:	de06                	sw	ra,60(sp)
   11184:	84ae                	mv	s1,a1
   11186:	2339                	jal	11694 <strlen>
   11188:	67ed                	lui	a5,0x1b
   1118a:	acc78793          	addi	a5,a5,-1332 # 1aacc <__clzsi2+0x5e>
   1118e:	d43e                	sw	a5,40(sp)
   11190:	4785                	li	a5,1
   11192:	d63e                	sw	a5,44(sp)
   11194:	5858                	lw	a4,52(s0)
   11196:	101c                	addi	a5,sp,32
   11198:	00150693          	addi	a3,a0,1
   1119c:	ca3e                	sw	a5,20(sp)
   1119e:	4789                	li	a5,2
   111a0:	d026                	sw	s1,32(sp)
   111a2:	d22a                	sw	a0,36(sp)
   111a4:	ce36                	sw	a3,28(sp)
   111a6:	cc3e                	sw	a5,24(sp)
   111a8:	440c                	lw	a1,8(s0)
   111aa:	cf1d                	beqz	a4,111e8 <_puts_r+0x70>
   111ac:	00c59703          	lh	a4,12(a1)
   111b0:	51fc                	lw	a5,100(a1)
   111b2:	01271693          	slli	a3,a4,0x12
   111b6:	0006ca63          	bltz	a3,111ca <_puts_r+0x52>
   111ba:	76f9                	lui	a3,0xffffe
   111bc:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe11d3>
   111be:	6609                	lui	a2,0x2
   111c0:	8f51                	or	a4,a4,a2
   111c2:	8ff5                	and	a5,a5,a3
   111c4:	00e59623          	sh	a4,12(a1)
   111c8:	d1fc                	sw	a5,100(a1)
   111ca:	01279713          	slli	a4,a5,0x12
   111ce:	02074263          	bltz	a4,111f2 <_puts_r+0x7a>
   111d2:	0850                	addi	a2,sp,20
   111d4:	8522                	mv	a0,s0
   111d6:	5d3020ef          	jal	13fa8 <__sfvwrite_r>
   111da:	ed01                	bnez	a0,111f2 <_puts_r+0x7a>
   111dc:	4529                	li	a0,10
   111de:	50f2                	lw	ra,60(sp)
   111e0:	5462                	lw	s0,56(sp)
   111e2:	54d2                	lw	s1,52(sp)
   111e4:	6121                	addi	sp,sp,64
   111e6:	8082                	ret
   111e8:	8522                	mv	a0,s0
   111ea:	c62e                	sw	a1,12(sp)
   111ec:	3dbd                	jal	1106a <__sinit>
   111ee:	45b2                	lw	a1,12(sp)
   111f0:	bf75                	j	111ac <_puts_r+0x34>
   111f2:	557d                	li	a0,-1
   111f4:	b7ed                	j	111de <_puts_r+0x66>

000111f6 <puts>:
   111f6:	85aa                	mv	a1,a0
   111f8:	f141a503          	lw	a0,-236(gp) # 1caf4 <_impure_ptr>
   111fc:	bfb5                	j	11178 <_puts_r>

000111fe <__sread>:
   111fe:	1141                	addi	sp,sp,-16
   11200:	c422                	sw	s0,8(sp)
   11202:	842e                	mv	s0,a1
   11204:	00e59583          	lh	a1,14(a1)
   11208:	c606                	sw	ra,12(sp)
   1120a:	2a6d                	jal	113c4 <_read_r>
   1120c:	00054963          	bltz	a0,1121e <__sread+0x20>
   11210:	483c                	lw	a5,80(s0)
   11212:	40b2                	lw	ra,12(sp)
   11214:	97aa                	add	a5,a5,a0
   11216:	c83c                	sw	a5,80(s0)
   11218:	4422                	lw	s0,8(sp)
   1121a:	0141                	addi	sp,sp,16
   1121c:	8082                	ret
   1121e:	00c45783          	lhu	a5,12(s0)
   11222:	777d                	lui	a4,0xfffff
   11224:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe21d3>
   11226:	8ff9                	and	a5,a5,a4
   11228:	40b2                	lw	ra,12(sp)
   1122a:	00f41623          	sh	a5,12(s0)
   1122e:	4422                	lw	s0,8(sp)
   11230:	0141                	addi	sp,sp,16
   11232:	8082                	ret

00011234 <__seofread>:
   11234:	4501                	li	a0,0
   11236:	8082                	ret

00011238 <__swrite>:
   11238:	00c59783          	lh	a5,12(a1)
   1123c:	1101                	addi	sp,sp,-32
   1123e:	cc22                	sw	s0,24(sp)
   11240:	ca26                	sw	s1,20(sp)
   11242:	c84a                	sw	s2,16(sp)
   11244:	c64e                	sw	s3,12(sp)
   11246:	ce06                	sw	ra,28(sp)
   11248:	1007f713          	andi	a4,a5,256
   1124c:	842e                	mv	s0,a1
   1124e:	84aa                	mv	s1,a0
   11250:	8932                	mv	s2,a2
   11252:	89b6                	mv	s3,a3
   11254:	e315                	bnez	a4,11278 <__swrite+0x40>
   11256:	777d                	lui	a4,0xfffff
   11258:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe21d3>
   1125a:	8ff9                	and	a5,a5,a4
   1125c:	00e41583          	lh	a1,14(s0)
   11260:	00f41623          	sh	a5,12(s0)
   11264:	4462                	lw	s0,24(sp)
   11266:	40f2                	lw	ra,28(sp)
   11268:	86ce                	mv	a3,s3
   1126a:	864a                	mv	a2,s2
   1126c:	49b2                	lw	s3,12(sp)
   1126e:	4942                	lw	s2,16(sp)
   11270:	8526                	mv	a0,s1
   11272:	44d2                	lw	s1,20(sp)
   11274:	6105                	addi	sp,sp,32
   11276:	a269                	j	11400 <_write_r>
   11278:	00e59583          	lh	a1,14(a1)
   1127c:	4689                	li	a3,2
   1127e:	4601                	li	a2,0
   11280:	2221                	jal	11388 <_lseek_r>
   11282:	00c41783          	lh	a5,12(s0)
   11286:	bfc1                	j	11256 <__swrite+0x1e>

00011288 <__sseek>:
   11288:	1141                	addi	sp,sp,-16
   1128a:	c422                	sw	s0,8(sp)
   1128c:	842e                	mv	s0,a1
   1128e:	00e59583          	lh	a1,14(a1)
   11292:	c606                	sw	ra,12(sp)
   11294:	28d5                	jal	11388 <_lseek_r>
   11296:	57fd                	li	a5,-1
   11298:	00f50f63          	beq	a0,a5,112b6 <__sseek+0x2e>
   1129c:	00c45783          	lhu	a5,12(s0)
   112a0:	6705                	lui	a4,0x1
   112a2:	40b2                	lw	ra,12(sp)
   112a4:	8fd9                	or	a5,a5,a4
   112a6:	07c2                	slli	a5,a5,0x10
   112a8:	87c1                	srai	a5,a5,0x10
   112aa:	c828                	sw	a0,80(s0)
   112ac:	00f41623          	sh	a5,12(s0)
   112b0:	4422                	lw	s0,8(sp)
   112b2:	0141                	addi	sp,sp,16
   112b4:	8082                	ret
   112b6:	00c45783          	lhu	a5,12(s0)
   112ba:	777d                	lui	a4,0xfffff
   112bc:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe21d3>
   112be:	8ff9                	and	a5,a5,a4
   112c0:	07c2                	slli	a5,a5,0x10
   112c2:	87c1                	srai	a5,a5,0x10
   112c4:	40b2                	lw	ra,12(sp)
   112c6:	00f41623          	sh	a5,12(s0)
   112ca:	4422                	lw	s0,8(sp)
   112cc:	0141                	addi	sp,sp,16
   112ce:	8082                	ret

000112d0 <__sclose>:
   112d0:	00e59583          	lh	a1,14(a1)
   112d4:	a009                	j	112d6 <_close_r>

000112d6 <_close_r>:
   112d6:	1141                	addi	sp,sp,-16
   112d8:	c422                	sw	s0,8(sp)
   112da:	c226                	sw	s1,4(sp)
   112dc:	842a                	mv	s0,a0
   112de:	852e                	mv	a0,a1
   112e0:	c606                	sw	ra,12(sp)
   112e2:	f201a223          	sw	zero,-220(gp) # 1cb04 <errno>
   112e6:	0fa070ef          	jal	183e0 <_close>
   112ea:	57fd                	li	a5,-1
   112ec:	00f50763          	beq	a0,a5,112fa <_close_r+0x24>
   112f0:	40b2                	lw	ra,12(sp)
   112f2:	4422                	lw	s0,8(sp)
   112f4:	4492                	lw	s1,4(sp)
   112f6:	0141                	addi	sp,sp,16
   112f8:	8082                	ret
   112fa:	f241a783          	lw	a5,-220(gp) # 1cb04 <errno>
   112fe:	dbed                	beqz	a5,112f0 <_close_r+0x1a>
   11300:	40b2                	lw	ra,12(sp)
   11302:	c01c                	sw	a5,0(s0)
   11304:	4422                	lw	s0,8(sp)
   11306:	4492                	lw	s1,4(sp)
   11308:	0141                	addi	sp,sp,16
   1130a:	8082                	ret

0001130c <_reclaim_reent>:
   1130c:	f141a783          	lw	a5,-236(gp) # 1caf4 <_impure_ptr>
   11310:	06a78b63          	beq	a5,a0,11386 <_reclaim_reent+0x7a>
   11314:	416c                	lw	a1,68(a0)
   11316:	1101                	addi	sp,sp,-32
   11318:	ca26                	sw	s1,20(sp)
   1131a:	ce06                	sw	ra,28(sp)
   1131c:	cc22                	sw	s0,24(sp)
   1131e:	84aa                	mv	s1,a0
   11320:	c59d                	beqz	a1,1134e <_reclaim_reent+0x42>
   11322:	c84a                	sw	s2,16(sp)
   11324:	c64e                	sw	s3,12(sp)
   11326:	4901                	li	s2,0
   11328:	08000993          	li	s3,128
   1132c:	012587b3          	add	a5,a1,s2
   11330:	4380                	lw	s0,0(a5)
   11332:	c419                	beqz	s0,11340 <_reclaim_reent+0x34>
   11334:	85a2                	mv	a1,s0
   11336:	4000                	lw	s0,0(s0)
   11338:	8526                	mv	a0,s1
   1133a:	2395                	jal	1189e <_free_r>
   1133c:	fc65                	bnez	s0,11334 <_reclaim_reent+0x28>
   1133e:	40ec                	lw	a1,68(s1)
   11340:	0911                	addi	s2,s2,4
   11342:	ff3915e3          	bne	s2,s3,1132c <_reclaim_reent+0x20>
   11346:	8526                	mv	a0,s1
   11348:	2b99                	jal	1189e <_free_r>
   1134a:	4942                	lw	s2,16(sp)
   1134c:	49b2                	lw	s3,12(sp)
   1134e:	5c8c                	lw	a1,56(s1)
   11350:	c199                	beqz	a1,11356 <_reclaim_reent+0x4a>
   11352:	8526                	mv	a0,s1
   11354:	23a9                	jal	1189e <_free_r>
   11356:	40a0                	lw	s0,64(s1)
   11358:	c411                	beqz	s0,11364 <_reclaim_reent+0x58>
   1135a:	85a2                	mv	a1,s0
   1135c:	4000                	lw	s0,0(s0)
   1135e:	8526                	mv	a0,s1
   11360:	2b3d                	jal	1189e <_free_r>
   11362:	fc65                	bnez	s0,1135a <_reclaim_reent+0x4e>
   11364:	44ec                	lw	a1,76(s1)
   11366:	c199                	beqz	a1,1136c <_reclaim_reent+0x60>
   11368:	8526                	mv	a0,s1
   1136a:	2b15                	jal	1189e <_free_r>
   1136c:	58dc                	lw	a5,52(s1)
   1136e:	c799                	beqz	a5,1137c <_reclaim_reent+0x70>
   11370:	4462                	lw	s0,24(sp)
   11372:	40f2                	lw	ra,28(sp)
   11374:	8526                	mv	a0,s1
   11376:	44d2                	lw	s1,20(sp)
   11378:	6105                	addi	sp,sp,32
   1137a:	8782                	jr	a5
   1137c:	40f2                	lw	ra,28(sp)
   1137e:	4462                	lw	s0,24(sp)
   11380:	44d2                	lw	s1,20(sp)
   11382:	6105                	addi	sp,sp,32
   11384:	8082                	ret
   11386:	8082                	ret

00011388 <_lseek_r>:
   11388:	1141                	addi	sp,sp,-16
   1138a:	872e                	mv	a4,a1
   1138c:	c422                	sw	s0,8(sp)
   1138e:	c226                	sw	s1,4(sp)
   11390:	85b2                	mv	a1,a2
   11392:	842a                	mv	s0,a0
   11394:	8636                	mv	a2,a3
   11396:	853a                	mv	a0,a4
   11398:	c606                	sw	ra,12(sp)
   1139a:	f201a223          	sw	zero,-220(gp) # 1cb04 <errno>
   1139e:	106070ef          	jal	184a4 <_lseek>
   113a2:	57fd                	li	a5,-1
   113a4:	00f50763          	beq	a0,a5,113b2 <_lseek_r+0x2a>
   113a8:	40b2                	lw	ra,12(sp)
   113aa:	4422                	lw	s0,8(sp)
   113ac:	4492                	lw	s1,4(sp)
   113ae:	0141                	addi	sp,sp,16
   113b0:	8082                	ret
   113b2:	f241a783          	lw	a5,-220(gp) # 1cb04 <errno>
   113b6:	dbed                	beqz	a5,113a8 <_lseek_r+0x20>
   113b8:	40b2                	lw	ra,12(sp)
   113ba:	c01c                	sw	a5,0(s0)
   113bc:	4422                	lw	s0,8(sp)
   113be:	4492                	lw	s1,4(sp)
   113c0:	0141                	addi	sp,sp,16
   113c2:	8082                	ret

000113c4 <_read_r>:
   113c4:	1141                	addi	sp,sp,-16
   113c6:	872e                	mv	a4,a1
   113c8:	c422                	sw	s0,8(sp)
   113ca:	c226                	sw	s1,4(sp)
   113cc:	85b2                	mv	a1,a2
   113ce:	842a                	mv	s0,a0
   113d0:	8636                	mv	a2,a3
   113d2:	853a                	mv	a0,a4
   113d4:	c606                	sw	ra,12(sp)
   113d6:	f201a223          	sw	zero,-220(gp) # 1cb04 <errno>
   113da:	0f6070ef          	jal	184d0 <_read>
   113de:	57fd                	li	a5,-1
   113e0:	00f50763          	beq	a0,a5,113ee <_read_r+0x2a>
   113e4:	40b2                	lw	ra,12(sp)
   113e6:	4422                	lw	s0,8(sp)
   113e8:	4492                	lw	s1,4(sp)
   113ea:	0141                	addi	sp,sp,16
   113ec:	8082                	ret
   113ee:	f241a783          	lw	a5,-220(gp) # 1cb04 <errno>
   113f2:	dbed                	beqz	a5,113e4 <_read_r+0x20>
   113f4:	40b2                	lw	ra,12(sp)
   113f6:	c01c                	sw	a5,0(s0)
   113f8:	4422                	lw	s0,8(sp)
   113fa:	4492                	lw	s1,4(sp)
   113fc:	0141                	addi	sp,sp,16
   113fe:	8082                	ret

00011400 <_write_r>:
   11400:	1141                	addi	sp,sp,-16
   11402:	872e                	mv	a4,a1
   11404:	c422                	sw	s0,8(sp)
   11406:	c226                	sw	s1,4(sp)
   11408:	85b2                	mv	a1,a2
   1140a:	842a                	mv	s0,a0
   1140c:	8636                	mv	a2,a3
   1140e:	853a                	mv	a0,a4
   11410:	c606                	sw	ra,12(sp)
   11412:	f201a223          	sw	zero,-220(gp) # 1cb04 <errno>
   11416:	13a070ef          	jal	18550 <_write>
   1141a:	57fd                	li	a5,-1
   1141c:	00f50763          	beq	a0,a5,1142a <_write_r+0x2a>
   11420:	40b2                	lw	ra,12(sp)
   11422:	4422                	lw	s0,8(sp)
   11424:	4492                	lw	s1,4(sp)
   11426:	0141                	addi	sp,sp,16
   11428:	8082                	ret
   1142a:	f241a783          	lw	a5,-220(gp) # 1cb04 <errno>
   1142e:	dbed                	beqz	a5,11420 <_write_r+0x20>
   11430:	40b2                	lw	ra,12(sp)
   11432:	c01c                	sw	a5,0(s0)
   11434:	4422                	lw	s0,8(sp)
   11436:	4492                	lw	s1,4(sp)
   11438:	0141                	addi	sp,sp,16
   1143a:	8082                	ret

0001143c <__libc_init_array>:
   1143c:	1141                	addi	sp,sp,-16
   1143e:	c422                	sw	s0,8(sp)
   11440:	67f1                	lui	a5,0x1c
   11442:	6471                	lui	s0,0x1c
   11444:	c04a                	sw	s2,0(sp)
   11446:	3d478793          	addi	a5,a5,980 # 1c3d4 <__init_array_start>
   1144a:	3d440713          	addi	a4,s0,980 # 1c3d4 <__init_array_start>
   1144e:	c606                	sw	ra,12(sp)
   11450:	c226                	sw	s1,4(sp)
   11452:	40e78933          	sub	s2,a5,a4
   11456:	00e78d63          	beq	a5,a4,11470 <__libc_init_array+0x34>
   1145a:	40295913          	srai	s2,s2,0x2
   1145e:	3d440413          	addi	s0,s0,980
   11462:	4481                	li	s1,0
   11464:	401c                	lw	a5,0(s0)
   11466:	0485                	addi	s1,s1,1
   11468:	0411                	addi	s0,s0,4
   1146a:	9782                	jalr	a5
   1146c:	ff24ece3          	bltu	s1,s2,11464 <__libc_init_array+0x28>
   11470:	6471                	lui	s0,0x1c
   11472:	67f1                	lui	a5,0x1c
   11474:	3dc78793          	addi	a5,a5,988 # 1c3dc <__do_global_dtors_aux_fini_array_entry>
   11478:	3d440713          	addi	a4,s0,980 # 1c3d4 <__init_array_start>
   1147c:	40e78933          	sub	s2,a5,a4
   11480:	40295913          	srai	s2,s2,0x2
   11484:	00e78b63          	beq	a5,a4,1149a <__libc_init_array+0x5e>
   11488:	3d440413          	addi	s0,s0,980
   1148c:	4481                	li	s1,0
   1148e:	401c                	lw	a5,0(s0)
   11490:	0485                	addi	s1,s1,1
   11492:	0411                	addi	s0,s0,4
   11494:	9782                	jalr	a5
   11496:	ff24ece3          	bltu	s1,s2,1148e <__libc_init_array+0x52>
   1149a:	40b2                	lw	ra,12(sp)
   1149c:	4422                	lw	s0,8(sp)
   1149e:	4492                	lw	s1,4(sp)
   114a0:	4902                	lw	s2,0(sp)
   114a2:	0141                	addi	sp,sp,16
   114a4:	8082                	ret

000114a6 <memset>:
   114a6:	433d                	li	t1,15
   114a8:	872a                	mv	a4,a0
   114aa:	02c37363          	bgeu	t1,a2,114d0 <memset+0x2a>
   114ae:	00f77793          	andi	a5,a4,15
   114b2:	efbd                	bnez	a5,11530 <memset+0x8a>
   114b4:	e5ad                	bnez	a1,1151e <memset+0x78>
   114b6:	ff067693          	andi	a3,a2,-16
   114ba:	8a3d                	andi	a2,a2,15
   114bc:	96ba                	add	a3,a3,a4
   114be:	c30c                	sw	a1,0(a4)
   114c0:	c34c                	sw	a1,4(a4)
   114c2:	c70c                	sw	a1,8(a4)
   114c4:	c74c                	sw	a1,12(a4)
   114c6:	0741                	addi	a4,a4,16
   114c8:	fed76be3          	bltu	a4,a3,114be <memset+0x18>
   114cc:	e211                	bnez	a2,114d0 <memset+0x2a>
   114ce:	8082                	ret
   114d0:	40c306b3          	sub	a3,t1,a2
   114d4:	068a                	slli	a3,a3,0x2
   114d6:	00000297          	auipc	t0,0x0
   114da:	9696                	add	a3,a3,t0
   114dc:	00a68067          	jr	10(a3)
   114e0:	00b70723          	sb	a1,14(a4)
   114e4:	00b706a3          	sb	a1,13(a4)
   114e8:	00b70623          	sb	a1,12(a4)
   114ec:	00b705a3          	sb	a1,11(a4)
   114f0:	00b70523          	sb	a1,10(a4)
   114f4:	00b704a3          	sb	a1,9(a4)
   114f8:	00b70423          	sb	a1,8(a4)
   114fc:	00b703a3          	sb	a1,7(a4)
   11500:	00b70323          	sb	a1,6(a4)
   11504:	00b702a3          	sb	a1,5(a4)
   11508:	00b70223          	sb	a1,4(a4)
   1150c:	00b701a3          	sb	a1,3(a4)
   11510:	00b70123          	sb	a1,2(a4)
   11514:	00b700a3          	sb	a1,1(a4)
   11518:	00b70023          	sb	a1,0(a4)
   1151c:	8082                	ret
   1151e:	0ff5f593          	zext.b	a1,a1
   11522:	00859693          	slli	a3,a1,0x8
   11526:	8dd5                	or	a1,a1,a3
   11528:	01059693          	slli	a3,a1,0x10
   1152c:	8dd5                	or	a1,a1,a3
   1152e:	b761                	j	114b6 <memset+0x10>
   11530:	00279693          	slli	a3,a5,0x2
   11534:	00000297          	auipc	t0,0x0
   11538:	9696                	add	a3,a3,t0
   1153a:	8286                	mv	t0,ra
   1153c:	fa8680e7          	jalr	-88(a3)
   11540:	8096                	mv	ra,t0
   11542:	17c1                	addi	a5,a5,-16
   11544:	8f1d                	sub	a4,a4,a5
   11546:	963e                	add	a2,a2,a5
   11548:	f8c374e3          	bgeu	t1,a2,114d0 <memset+0x2a>
   1154c:	b7a5                	j	114b4 <memset+0xe>

0001154e <memcpy>:
   1154e:	00a5c7b3          	xor	a5,a1,a0
   11552:	8b8d                	andi	a5,a5,3
   11554:	00c508b3          	add	a7,a0,a2
   11558:	e7b1                	bnez	a5,115a4 <memcpy+0x56>
   1155a:	478d                	li	a5,3
   1155c:	04c7f463          	bgeu	a5,a2,115a4 <memcpy+0x56>
   11560:	00357793          	andi	a5,a0,3
   11564:	872a                	mv	a4,a0
   11566:	ebb9                	bnez	a5,115bc <memcpy+0x6e>
   11568:	ffc8f613          	andi	a2,a7,-4
   1156c:	40e606b3          	sub	a3,a2,a4
   11570:	02000793          	li	a5,32
   11574:	06d7c863          	blt	a5,a3,115e4 <memcpy+0x96>
   11578:	86ae                	mv	a3,a1
   1157a:	87ba                	mv	a5,a4
   1157c:	02c77163          	bgeu	a4,a2,1159e <memcpy+0x50>
   11580:	0006a803          	lw	a6,0(a3)
   11584:	0791                	addi	a5,a5,4
   11586:	0691                	addi	a3,a3,4
   11588:	ff07ae23          	sw	a6,-4(a5)
   1158c:	fec7eae3          	bltu	a5,a2,11580 <memcpy+0x32>
   11590:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   11594:	8f99                	sub	a5,a5,a4
   11596:	9bf1                	andi	a5,a5,-4
   11598:	0791                	addi	a5,a5,4
   1159a:	973e                	add	a4,a4,a5
   1159c:	95be                	add	a1,a1,a5
   1159e:	01176663          	bltu	a4,a7,115aa <memcpy+0x5c>
   115a2:	8082                	ret
   115a4:	872a                	mv	a4,a0
   115a6:	03157e63          	bgeu	a0,a7,115e2 <memcpy+0x94>
   115aa:	0005c783          	lbu	a5,0(a1)
   115ae:	0705                	addi	a4,a4,1
   115b0:	0585                	addi	a1,a1,1
   115b2:	fef70fa3          	sb	a5,-1(a4)
   115b6:	fee89ae3          	bne	a7,a4,115aa <memcpy+0x5c>
   115ba:	8082                	ret
   115bc:	0005c683          	lbu	a3,0(a1)
   115c0:	0705                	addi	a4,a4,1
   115c2:	00377793          	andi	a5,a4,3
   115c6:	fed70fa3          	sb	a3,-1(a4)
   115ca:	0585                	addi	a1,a1,1
   115cc:	dfd1                	beqz	a5,11568 <memcpy+0x1a>
   115ce:	0005c683          	lbu	a3,0(a1)
   115d2:	0705                	addi	a4,a4,1
   115d4:	00377793          	andi	a5,a4,3
   115d8:	fed70fa3          	sb	a3,-1(a4)
   115dc:	0585                	addi	a1,a1,1
   115de:	fff9                	bnez	a5,115bc <memcpy+0x6e>
   115e0:	b761                	j	11568 <memcpy+0x1a>
   115e2:	8082                	ret
   115e4:	1141                	addi	sp,sp,-16
   115e6:	c622                	sw	s0,12(sp)
   115e8:	02000413          	li	s0,32
   115ec:	0005a383          	lw	t2,0(a1)
   115f0:	0045a283          	lw	t0,4(a1)
   115f4:	0085af83          	lw	t6,8(a1)
   115f8:	00c5af03          	lw	t5,12(a1)
   115fc:	0105ae83          	lw	t4,16(a1)
   11600:	0145ae03          	lw	t3,20(a1)
   11604:	0185a303          	lw	t1,24(a1)
   11608:	01c5a803          	lw	a6,28(a1)
   1160c:	5194                	lw	a3,32(a1)
   1160e:	02470713          	addi	a4,a4,36
   11612:	40e607b3          	sub	a5,a2,a4
   11616:	fc772e23          	sw	t2,-36(a4)
   1161a:	fe572023          	sw	t0,-32(a4)
   1161e:	fff72223          	sw	t6,-28(a4)
   11622:	ffe72423          	sw	t5,-24(a4)
   11626:	ffd72623          	sw	t4,-20(a4)
   1162a:	ffc72823          	sw	t3,-16(a4)
   1162e:	fe672a23          	sw	t1,-12(a4)
   11632:	ff072c23          	sw	a6,-8(a4)
   11636:	fed72e23          	sw	a3,-4(a4)
   1163a:	02458593          	addi	a1,a1,36
   1163e:	faf447e3          	blt	s0,a5,115ec <memcpy+0x9e>
   11642:	86ae                	mv	a3,a1
   11644:	87ba                	mv	a5,a4
   11646:	02c77163          	bgeu	a4,a2,11668 <memcpy+0x11a>
   1164a:	0006a803          	lw	a6,0(a3)
   1164e:	0791                	addi	a5,a5,4
   11650:	0691                	addi	a3,a3,4
   11652:	ff07ae23          	sw	a6,-4(a5)
   11656:	fec7eae3          	bltu	a5,a2,1164a <memcpy+0xfc>
   1165a:	fff60793          	addi	a5,a2,-1
   1165e:	8f99                	sub	a5,a5,a4
   11660:	9bf1                	andi	a5,a5,-4
   11662:	0791                	addi	a5,a5,4
   11664:	973e                	add	a4,a4,a5
   11666:	95be                	add	a1,a1,a5
   11668:	01176563          	bltu	a4,a7,11672 <memcpy+0x124>
   1166c:	4432                	lw	s0,12(sp)
   1166e:	0141                	addi	sp,sp,16
   11670:	8082                	ret
   11672:	0005c783          	lbu	a5,0(a1)
   11676:	0705                	addi	a4,a4,1
   11678:	0585                	addi	a1,a1,1
   1167a:	fef70fa3          	sb	a5,-1(a4)
   1167e:	fee887e3          	beq	a7,a4,1166c <memcpy+0x11e>
   11682:	0005c783          	lbu	a5,0(a1)
   11686:	0705                	addi	a4,a4,1
   11688:	0585                	addi	a1,a1,1
   1168a:	fef70fa3          	sb	a5,-1(a4)
   1168e:	fee892e3          	bne	a7,a4,11672 <memcpy+0x124>
   11692:	bfe9                	j	1166c <memcpy+0x11e>

00011694 <strlen>:
   11694:	00357793          	andi	a5,a0,3
   11698:	872a                	mv	a4,a0
   1169a:	ef9d                	bnez	a5,116d8 <strlen+0x44>
   1169c:	7f7f86b7          	lui	a3,0x7f7f8
   116a0:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7db153>
   116a4:	55fd                	li	a1,-1
   116a6:	4310                	lw	a2,0(a4)
   116a8:	0711                	addi	a4,a4,4
   116aa:	00d677b3          	and	a5,a2,a3
   116ae:	97b6                	add	a5,a5,a3
   116b0:	8fd1                	or	a5,a5,a2
   116b2:	8fd5                	or	a5,a5,a3
   116b4:	feb789e3          	beq	a5,a1,116a6 <strlen+0x12>
   116b8:	ffc74683          	lbu	a3,-4(a4)
   116bc:	40a707b3          	sub	a5,a4,a0
   116c0:	ca8d                	beqz	a3,116f2 <strlen+0x5e>
   116c2:	ffd74683          	lbu	a3,-3(a4)
   116c6:	c29d                	beqz	a3,116ec <strlen+0x58>
   116c8:	ffe74503          	lbu	a0,-2(a4)
   116cc:	00a03533          	snez	a0,a0
   116d0:	953e                	add	a0,a0,a5
   116d2:	1579                	addi	a0,a0,-2
   116d4:	8082                	ret
   116d6:	d2f9                	beqz	a3,1169c <strlen+0x8>
   116d8:	00074783          	lbu	a5,0(a4)
   116dc:	0705                	addi	a4,a4,1
   116de:	00377693          	andi	a3,a4,3
   116e2:	fbf5                	bnez	a5,116d6 <strlen+0x42>
   116e4:	8f09                	sub	a4,a4,a0
   116e6:	fff70513          	addi	a0,a4,-1
   116ea:	8082                	ret
   116ec:	ffd78513          	addi	a0,a5,-3
   116f0:	8082                	ret
   116f2:	ffc78513          	addi	a0,a5,-4
   116f6:	8082                	ret

000116f8 <__call_exitprocs>:
   116f8:	7179                	addi	sp,sp,-48
   116fa:	cc52                	sw	s4,24(sp)
   116fc:	d04a                	sw	s2,32(sp)
   116fe:	f281a903          	lw	s2,-216(gp) # 1cb08 <__atexit>
   11702:	d606                	sw	ra,44(sp)
   11704:	06090c63          	beqz	s2,1177c <__call_exitprocs+0x84>
   11708:	ce4e                	sw	s3,28(sp)
   1170a:	ca56                	sw	s5,20(sp)
   1170c:	c85a                	sw	s6,16(sp)
   1170e:	c65e                	sw	s7,12(sp)
   11710:	d422                	sw	s0,40(sp)
   11712:	d226                	sw	s1,36(sp)
   11714:	c462                	sw	s8,8(sp)
   11716:	8b2a                	mv	s6,a0
   11718:	8bae                	mv	s7,a1
   1171a:	59fd                	li	s3,-1
   1171c:	4a85                	li	s5,1
   1171e:	00492483          	lw	s1,4(s2)
   11722:	fff48413          	addi	s0,s1,-1
   11726:	04044463          	bltz	s0,1176e <__call_exitprocs+0x76>
   1172a:	048a                	slli	s1,s1,0x2
   1172c:	94ca                	add	s1,s1,s2
   1172e:	040b9c63          	bnez	s7,11786 <__call_exitprocs+0x8e>
   11732:	00492783          	lw	a5,4(s2)
   11736:	40d4                	lw	a3,4(s1)
   11738:	17fd                	addi	a5,a5,-1
   1173a:	08878063          	beq	a5,s0,117ba <__call_exitprocs+0xc2>
   1173e:	0004a223          	sw	zero,4(s1)
   11742:	c295                	beqz	a3,11766 <__call_exitprocs+0x6e>
   11744:	18892783          	lw	a5,392(s2)
   11748:	008a9733          	sll	a4,s5,s0
   1174c:	00492c03          	lw	s8,4(s2)
   11750:	8ff9                	and	a5,a5,a4
   11752:	e3b9                	bnez	a5,11798 <__call_exitprocs+0xa0>
   11754:	9682                	jalr	a3
   11756:	00492703          	lw	a4,4(s2)
   1175a:	f281a783          	lw	a5,-216(gp) # 1cb08 <__atexit>
   1175e:	05871b63          	bne	a4,s8,117b4 <__call_exitprocs+0xbc>
   11762:	05279963          	bne	a5,s2,117b4 <__call_exitprocs+0xbc>
   11766:	147d                	addi	s0,s0,-1
   11768:	14f1                	addi	s1,s1,-4
   1176a:	fd3412e3          	bne	s0,s3,1172e <__call_exitprocs+0x36>
   1176e:	5422                	lw	s0,40(sp)
   11770:	5492                	lw	s1,36(sp)
   11772:	49f2                	lw	s3,28(sp)
   11774:	4ad2                	lw	s5,20(sp)
   11776:	4b42                	lw	s6,16(sp)
   11778:	4bb2                	lw	s7,12(sp)
   1177a:	4c22                	lw	s8,8(sp)
   1177c:	50b2                	lw	ra,44(sp)
   1177e:	5902                	lw	s2,32(sp)
   11780:	4a62                	lw	s4,24(sp)
   11782:	6145                	addi	sp,sp,48
   11784:	8082                	ret
   11786:	1044a783          	lw	a5,260(s1)
   1178a:	fb7784e3          	beq	a5,s7,11732 <__call_exitprocs+0x3a>
   1178e:	147d                	addi	s0,s0,-1
   11790:	14f1                	addi	s1,s1,-4
   11792:	ff341ae3          	bne	s0,s3,11786 <__call_exitprocs+0x8e>
   11796:	bfe1                	j	1176e <__call_exitprocs+0x76>
   11798:	18c92783          	lw	a5,396(s2)
   1179c:	0844a583          	lw	a1,132(s1)
   117a0:	8f7d                	and	a4,a4,a5
   117a2:	ef19                	bnez	a4,117c0 <__call_exitprocs+0xc8>
   117a4:	855a                	mv	a0,s6
   117a6:	9682                	jalr	a3
   117a8:	00492703          	lw	a4,4(s2)
   117ac:	f281a783          	lw	a5,-216(gp) # 1cb08 <__atexit>
   117b0:	fb8709e3          	beq	a4,s8,11762 <__call_exitprocs+0x6a>
   117b4:	dfcd                	beqz	a5,1176e <__call_exitprocs+0x76>
   117b6:	893e                	mv	s2,a5
   117b8:	b79d                	j	1171e <__call_exitprocs+0x26>
   117ba:	00892223          	sw	s0,4(s2)
   117be:	b751                	j	11742 <__call_exitprocs+0x4a>
   117c0:	852e                	mv	a0,a1
   117c2:	9682                	jalr	a3
   117c4:	bf49                	j	11756 <__call_exitprocs+0x5e>

000117c6 <atexit>:
   117c6:	85aa                	mv	a1,a0
   117c8:	4681                	li	a3,0
   117ca:	4601                	li	a2,0
   117cc:	4501                	li	a0,0
   117ce:	0f00306f          	j	148be <__register_exitproc>

000117d2 <_malloc_trim_r>:
   117d2:	1101                	addi	sp,sp,-32
   117d4:	c64e                	sw	s3,12(sp)
   117d6:	69f1                	lui	s3,0x1c
   117d8:	cc22                	sw	s0,24(sp)
   117da:	ca26                	sw	s1,20(sp)
   117dc:	c84a                	sw	s2,16(sp)
   117de:	c452                	sw	s4,8(sp)
   117e0:	ce06                	sw	ra,28(sp)
   117e2:	8a2e                	mv	s4,a1
   117e4:	892a                	mv	s2,a0
   117e6:	51098993          	addi	s3,s3,1296 # 1c510 <__malloc_av_>
   117ea:	07b000ef          	jal	12064 <__malloc_lock>
   117ee:	0089a703          	lw	a4,8(s3)
   117f2:	6785                	lui	a5,0x1
   117f4:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   117f6:	4344                	lw	s1,4(a4)
   117f8:	6705                	lui	a4,0x1
   117fa:	98f1                	andi	s1,s1,-4
   117fc:	00f48433          	add	s0,s1,a5
   11800:	41440433          	sub	s0,s0,s4
   11804:	8031                	srli	s0,s0,0xc
   11806:	147d                	addi	s0,s0,-1
   11808:	0432                	slli	s0,s0,0xc
   1180a:	00e44b63          	blt	s0,a4,11820 <_malloc_trim_r+0x4e>
   1180e:	4581                	li	a1,0
   11810:	854a                	mv	a0,s2
   11812:	687020ef          	jal	14698 <_sbrk_r>
   11816:	0089a783          	lw	a5,8(s3)
   1181a:	97a6                	add	a5,a5,s1
   1181c:	00f50e63          	beq	a0,a5,11838 <_malloc_trim_r+0x66>
   11820:	854a                	mv	a0,s2
   11822:	045000ef          	jal	12066 <__malloc_unlock>
   11826:	40f2                	lw	ra,28(sp)
   11828:	4462                	lw	s0,24(sp)
   1182a:	44d2                	lw	s1,20(sp)
   1182c:	4942                	lw	s2,16(sp)
   1182e:	49b2                	lw	s3,12(sp)
   11830:	4a22                	lw	s4,8(sp)
   11832:	4501                	li	a0,0
   11834:	6105                	addi	sp,sp,32
   11836:	8082                	ret
   11838:	408005b3          	neg	a1,s0
   1183c:	854a                	mv	a0,s2
   1183e:	65b020ef          	jal	14698 <_sbrk_r>
   11842:	57fd                	li	a5,-1
   11844:	02f50963          	beq	a0,a5,11876 <_malloc_trim_r+0xa4>
   11848:	09418793          	addi	a5,gp,148 # 1cc74 <__malloc_current_mallinfo>
   1184c:	4398                	lw	a4,0(a5)
   1184e:	0089a683          	lw	a3,8(s3)
   11852:	8c81                	sub	s1,s1,s0
   11854:	0014e493          	ori	s1,s1,1
   11858:	8f01                	sub	a4,a4,s0
   1185a:	854a                	mv	a0,s2
   1185c:	c2c4                	sw	s1,4(a3)
   1185e:	c398                	sw	a4,0(a5)
   11860:	007000ef          	jal	12066 <__malloc_unlock>
   11864:	40f2                	lw	ra,28(sp)
   11866:	4462                	lw	s0,24(sp)
   11868:	44d2                	lw	s1,20(sp)
   1186a:	4942                	lw	s2,16(sp)
   1186c:	49b2                	lw	s3,12(sp)
   1186e:	4a22                	lw	s4,8(sp)
   11870:	4505                	li	a0,1
   11872:	6105                	addi	sp,sp,32
   11874:	8082                	ret
   11876:	4581                	li	a1,0
   11878:	854a                	mv	a0,s2
   1187a:	61f020ef          	jal	14698 <_sbrk_r>
   1187e:	0089a703          	lw	a4,8(s3)
   11882:	46bd                	li	a3,15
   11884:	40e507b3          	sub	a5,a0,a4
   11888:	f8f6dce3          	bge	a3,a5,11820 <_malloc_trim_r+0x4e>
   1188c:	f181a683          	lw	a3,-232(gp) # 1caf8 <__malloc_sbrk_base>
   11890:	0017e793          	ori	a5,a5,1
   11894:	c35c                	sw	a5,4(a4)
   11896:	8d15                	sub	a0,a0,a3
   11898:	08a1aa23          	sw	a0,148(gp) # 1cc74 <__malloc_current_mallinfo>
   1189c:	b751                	j	11820 <_malloc_trim_r+0x4e>

0001189e <_free_r>:
   1189e:	10058a63          	beqz	a1,119b2 <_free_r+0x114>
   118a2:	1141                	addi	sp,sp,-16
   118a4:	c422                	sw	s0,8(sp)
   118a6:	c226                	sw	s1,4(sp)
   118a8:	842e                	mv	s0,a1
   118aa:	84aa                	mv	s1,a0
   118ac:	c606                	sw	ra,12(sp)
   118ae:	7b6000ef          	jal	12064 <__malloc_lock>
   118b2:	ffc42503          	lw	a0,-4(s0)
   118b6:	ff840713          	addi	a4,s0,-8
   118ba:	65f1                	lui	a1,0x1c
   118bc:	ffe57793          	andi	a5,a0,-2
   118c0:	00f70633          	add	a2,a4,a5
   118c4:	51058593          	addi	a1,a1,1296 # 1c510 <__malloc_av_>
   118c8:	4254                	lw	a3,4(a2)
   118ca:	0085a803          	lw	a6,8(a1)
   118ce:	9af1                	andi	a3,a3,-4
   118d0:	12c80363          	beq	a6,a2,119f6 <_free_r+0x158>
   118d4:	c254                	sw	a3,4(a2)
   118d6:	8905                	andi	a0,a0,1
   118d8:	00d60833          	add	a6,a2,a3
   118dc:	e935                	bnez	a0,11950 <_free_r+0xb2>
   118de:	ff842303          	lw	t1,-8(s0)
   118e2:	00482803          	lw	a6,4(a6)
   118e6:	6571                	lui	a0,0x1c
   118e8:	40670733          	sub	a4,a4,t1
   118ec:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   118f0:	51850513          	addi	a0,a0,1304 # 1c518 <__malloc_av_+0x8>
   118f4:	979a                	add	a5,a5,t1
   118f6:	00187813          	andi	a6,a6,1
   118fa:	0ea88163          	beq	a7,a0,119dc <_free_r+0x13e>
   118fe:	00c72303          	lw	t1,12(a4)
   11902:	0068a623          	sw	t1,12(a7)
   11906:	01132423          	sw	a7,8(t1)
   1190a:	10080e63          	beqz	a6,11a26 <_free_r+0x188>
   1190e:	0017e693          	ori	a3,a5,1
   11912:	c354                	sw	a3,4(a4)
   11914:	c21c                	sw	a5,0(a2)
   11916:	1ff00693          	li	a3,511
   1191a:	04f6e863          	bltu	a3,a5,1196a <_free_r+0xcc>
   1191e:	ff87f693          	andi	a3,a5,-8
   11922:	06a1                	addi	a3,a3,8
   11924:	41c8                	lw	a0,4(a1)
   11926:	96ae                	add	a3,a3,a1
   11928:	4290                	lw	a2,0(a3)
   1192a:	0057d813          	srli	a6,a5,0x5
   1192e:	4785                	li	a5,1
   11930:	010797b3          	sll	a5,a5,a6
   11934:	8fc9                	or	a5,a5,a0
   11936:	ff868513          	addi	a0,a3,-8
   1193a:	c748                	sw	a0,12(a4)
   1193c:	c710                	sw	a2,8(a4)
   1193e:	c1dc                	sw	a5,4(a1)
   11940:	c298                	sw	a4,0(a3)
   11942:	c658                	sw	a4,12(a2)
   11944:	4422                	lw	s0,8(sp)
   11946:	40b2                	lw	ra,12(sp)
   11948:	8526                	mv	a0,s1
   1194a:	4492                	lw	s1,4(sp)
   1194c:	0141                	addi	sp,sp,16
   1194e:	af21                	j	12066 <__malloc_unlock>
   11950:	00482503          	lw	a0,4(a6)
   11954:	8905                	andi	a0,a0,1
   11956:	cd39                	beqz	a0,119b4 <_free_r+0x116>
   11958:	0017e693          	ori	a3,a5,1
   1195c:	fed42e23          	sw	a3,-4(s0)
   11960:	c21c                	sw	a5,0(a2)
   11962:	1ff00693          	li	a3,511
   11966:	faf6fce3          	bgeu	a3,a5,1191e <_free_r+0x80>
   1196a:	0097d693          	srli	a3,a5,0x9
   1196e:	4611                	li	a2,4
   11970:	0ad66d63          	bltu	a2,a3,11a2a <_free_r+0x18c>
   11974:	0067d693          	srli	a3,a5,0x6
   11978:	03968513          	addi	a0,a3,57
   1197c:	03868613          	addi	a2,a3,56
   11980:	050e                	slli	a0,a0,0x3
   11982:	952e                	add	a0,a0,a1
   11984:	4114                	lw	a3,0(a0)
   11986:	1561                	addi	a0,a0,-8
   11988:	00d51663          	bne	a0,a3,11994 <_free_r+0xf6>
   1198c:	a8f1                	j	11a68 <_free_r+0x1ca>
   1198e:	4694                	lw	a3,8(a3)
   11990:	00d50663          	beq	a0,a3,1199c <_free_r+0xfe>
   11994:	42d0                	lw	a2,4(a3)
   11996:	9a71                	andi	a2,a2,-4
   11998:	fec7ebe3          	bltu	a5,a2,1198e <_free_r+0xf0>
   1199c:	46c8                	lw	a0,12(a3)
   1199e:	c748                	sw	a0,12(a4)
   119a0:	c714                	sw	a3,8(a4)
   119a2:	4422                	lw	s0,8(sp)
   119a4:	c518                	sw	a4,8(a0)
   119a6:	40b2                	lw	ra,12(sp)
   119a8:	8526                	mv	a0,s1
   119aa:	4492                	lw	s1,4(sp)
   119ac:	c6d8                	sw	a4,12(a3)
   119ae:	0141                	addi	sp,sp,16
   119b0:	ad5d                	j	12066 <__malloc_unlock>
   119b2:	8082                	ret
   119b4:	6571                	lui	a0,0x1c
   119b6:	97b6                	add	a5,a5,a3
   119b8:	51850513          	addi	a0,a0,1304 # 1c518 <__malloc_av_+0x8>
   119bc:	4614                	lw	a3,8(a2)
   119be:	08a68b63          	beq	a3,a0,11a54 <_free_r+0x1b6>
   119c2:	00c62803          	lw	a6,12(a2)
   119c6:	0017e513          	ori	a0,a5,1
   119ca:	00f70633          	add	a2,a4,a5
   119ce:	0106a623          	sw	a6,12(a3)
   119d2:	00d82423          	sw	a3,8(a6)
   119d6:	c348                	sw	a0,4(a4)
   119d8:	c21c                	sw	a5,0(a2)
   119da:	bf35                	j	11916 <_free_r+0x78>
   119dc:	0c081d63          	bnez	a6,11ab6 <_free_r+0x218>
   119e0:	460c                	lw	a1,8(a2)
   119e2:	4650                	lw	a2,12(a2)
   119e4:	96be                	add	a3,a3,a5
   119e6:	0016e793          	ori	a5,a3,1
   119ea:	c5d0                	sw	a2,12(a1)
   119ec:	c60c                	sw	a1,8(a2)
   119ee:	c35c                	sw	a5,4(a4)
   119f0:	9736                	add	a4,a4,a3
   119f2:	c314                	sw	a3,0(a4)
   119f4:	bf81                	j	11944 <_free_r+0xa6>
   119f6:	8905                	andi	a0,a0,1
   119f8:	96be                	add	a3,a3,a5
   119fa:	e909                	bnez	a0,11a0c <_free_r+0x16e>
   119fc:	ff842503          	lw	a0,-8(s0)
   11a00:	8f09                	sub	a4,a4,a0
   11a02:	475c                	lw	a5,12(a4)
   11a04:	4710                	lw	a2,8(a4)
   11a06:	96aa                	add	a3,a3,a0
   11a08:	c65c                	sw	a5,12(a2)
   11a0a:	c790                	sw	a2,8(a5)
   11a0c:	0016e613          	ori	a2,a3,1
   11a10:	f1c1a783          	lw	a5,-228(gp) # 1cafc <__malloc_trim_threshold>
   11a14:	c350                	sw	a2,4(a4)
   11a16:	c598                	sw	a4,8(a1)
   11a18:	f2f6e6e3          	bltu	a3,a5,11944 <_free_r+0xa6>
   11a1c:	f341a583          	lw	a1,-204(gp) # 1cb14 <__malloc_top_pad>
   11a20:	8526                	mv	a0,s1
   11a22:	3b45                	jal	117d2 <_malloc_trim_r>
   11a24:	b705                	j	11944 <_free_r+0xa6>
   11a26:	97b6                	add	a5,a5,a3
   11a28:	bf51                	j	119bc <_free_r+0x11e>
   11a2a:	4651                	li	a2,20
   11a2c:	00d67e63          	bgeu	a2,a3,11a48 <_free_r+0x1aa>
   11a30:	05400613          	li	a2,84
   11a34:	04d66463          	bltu	a2,a3,11a7c <_free_r+0x1de>
   11a38:	00c7d693          	srli	a3,a5,0xc
   11a3c:	06f68513          	addi	a0,a3,111
   11a40:	06e68613          	addi	a2,a3,110
   11a44:	050e                	slli	a0,a0,0x3
   11a46:	bf35                	j	11982 <_free_r+0xe4>
   11a48:	05c68513          	addi	a0,a3,92
   11a4c:	05b68613          	addi	a2,a3,91
   11a50:	050e                	slli	a0,a0,0x3
   11a52:	bf05                	j	11982 <_free_r+0xe4>
   11a54:	c9d8                	sw	a4,20(a1)
   11a56:	c998                	sw	a4,16(a1)
   11a58:	0017e693          	ori	a3,a5,1
   11a5c:	c748                	sw	a0,12(a4)
   11a5e:	c708                	sw	a0,8(a4)
   11a60:	c354                	sw	a3,4(a4)
   11a62:	973e                	add	a4,a4,a5
   11a64:	c31c                	sw	a5,0(a4)
   11a66:	bdf9                	j	11944 <_free_r+0xa6>
   11a68:	0045a803          	lw	a6,4(a1)
   11a6c:	8609                	srai	a2,a2,0x2
   11a6e:	4785                	li	a5,1
   11a70:	00c797b3          	sll	a5,a5,a2
   11a74:	0107e7b3          	or	a5,a5,a6
   11a78:	c1dc                	sw	a5,4(a1)
   11a7a:	b715                	j	1199e <_free_r+0x100>
   11a7c:	15400613          	li	a2,340
   11a80:	00d66a63          	bltu	a2,a3,11a94 <_free_r+0x1f6>
   11a84:	00f7d693          	srli	a3,a5,0xf
   11a88:	07868513          	addi	a0,a3,120
   11a8c:	07768613          	addi	a2,a3,119
   11a90:	050e                	slli	a0,a0,0x3
   11a92:	bdc5                	j	11982 <_free_r+0xe4>
   11a94:	55400613          	li	a2,1364
   11a98:	00d66a63          	bltu	a2,a3,11aac <_free_r+0x20e>
   11a9c:	0127d693          	srli	a3,a5,0x12
   11aa0:	07d68513          	addi	a0,a3,125
   11aa4:	07c68613          	addi	a2,a3,124
   11aa8:	050e                	slli	a0,a0,0x3
   11aaa:	bde1                	j	11982 <_free_r+0xe4>
   11aac:	3f800513          	li	a0,1016
   11ab0:	07e00613          	li	a2,126
   11ab4:	b5f9                	j	11982 <_free_r+0xe4>
   11ab6:	0017e693          	ori	a3,a5,1
   11aba:	c354                	sw	a3,4(a4)
   11abc:	c21c                	sw	a5,0(a2)
   11abe:	b559                	j	11944 <_free_r+0xa6>

00011ac0 <_malloc_r>:
   11ac0:	7179                	addi	sp,sp,-48
   11ac2:	ce4e                	sw	s3,28(sp)
   11ac4:	d606                	sw	ra,44(sp)
   11ac6:	d422                	sw	s0,40(sp)
   11ac8:	d226                	sw	s1,36(sp)
   11aca:	d04a                	sw	s2,32(sp)
   11acc:	00b58793          	addi	a5,a1,11
   11ad0:	4759                	li	a4,22
   11ad2:	89aa                	mv	s3,a0
   11ad4:	04f76863          	bltu	a4,a5,11b24 <_malloc_r+0x64>
   11ad8:	47c1                	li	a5,16
   11ada:	16b7e863          	bltu	a5,a1,11c4a <_malloc_r+0x18a>
   11ade:	2359                	jal	12064 <__malloc_lock>
   11ae0:	47e1                	li	a5,24
   11ae2:	4589                	li	a1,2
   11ae4:	44c1                	li	s1,16
   11ae6:	6971                	lui	s2,0x1c
   11ae8:	51090913          	addi	s2,s2,1296 # 1c510 <__malloc_av_>
   11aec:	97ca                	add	a5,a5,s2
   11aee:	43c0                	lw	s0,4(a5)
   11af0:	ff878713          	addi	a4,a5,-8
   11af4:	24e40d63          	beq	s0,a4,11d4e <_malloc_r+0x28e>
   11af8:	405c                	lw	a5,4(s0)
   11afa:	4454                	lw	a3,12(s0)
   11afc:	4410                	lw	a2,8(s0)
   11afe:	9bf1                	andi	a5,a5,-4
   11b00:	97a2                	add	a5,a5,s0
   11b02:	43d8                	lw	a4,4(a5)
   11b04:	c654                	sw	a3,12(a2)
   11b06:	c690                	sw	a2,8(a3)
   11b08:	00176713          	ori	a4,a4,1
   11b0c:	854e                	mv	a0,s3
   11b0e:	c3d8                	sw	a4,4(a5)
   11b10:	2b99                	jal	12066 <__malloc_unlock>
   11b12:	00840513          	addi	a0,s0,8
   11b16:	50b2                	lw	ra,44(sp)
   11b18:	5422                	lw	s0,40(sp)
   11b1a:	5492                	lw	s1,36(sp)
   11b1c:	5902                	lw	s2,32(sp)
   11b1e:	49f2                	lw	s3,28(sp)
   11b20:	6145                	addi	sp,sp,48
   11b22:	8082                	ret
   11b24:	ff87f493          	andi	s1,a5,-8
   11b28:	1207c163          	bltz	a5,11c4a <_malloc_r+0x18a>
   11b2c:	10b4ef63          	bltu	s1,a1,11c4a <_malloc_r+0x18a>
   11b30:	2b15                	jal	12064 <__malloc_lock>
   11b32:	1f700793          	li	a5,503
   11b36:	2c97fb63          	bgeu	a5,s1,11e0c <_malloc_r+0x34c>
   11b3a:	0094d793          	srli	a5,s1,0x9
   11b3e:	10078b63          	beqz	a5,11c54 <_malloc_r+0x194>
   11b42:	4711                	li	a4,4
   11b44:	24f76a63          	bltu	a4,a5,11d98 <_malloc_r+0x2d8>
   11b48:	0064d793          	srli	a5,s1,0x6
   11b4c:	03978593          	addi	a1,a5,57
   11b50:	03878813          	addi	a6,a5,56
   11b54:	00359613          	slli	a2,a1,0x3
   11b58:	6971                	lui	s2,0x1c
   11b5a:	51090913          	addi	s2,s2,1296 # 1c510 <__malloc_av_>
   11b5e:	964a                	add	a2,a2,s2
   11b60:	4240                	lw	s0,4(a2)
   11b62:	1661                	addi	a2,a2,-8
   11b64:	02860163          	beq	a2,s0,11b86 <_malloc_r+0xc6>
   11b68:	453d                	li	a0,15
   11b6a:	a039                	j	11b78 <_malloc_r+0xb8>
   11b6c:	4454                	lw	a3,12(s0)
   11b6e:	1c075e63          	bgez	a4,11d4a <_malloc_r+0x28a>
   11b72:	00d60a63          	beq	a2,a3,11b86 <_malloc_r+0xc6>
   11b76:	8436                	mv	s0,a3
   11b78:	405c                	lw	a5,4(s0)
   11b7a:	9bf1                	andi	a5,a5,-4
   11b7c:	40978733          	sub	a4,a5,s1
   11b80:	fee556e3          	bge	a0,a4,11b6c <_malloc_r+0xac>
   11b84:	85c2                	mv	a1,a6
   11b86:	01092403          	lw	s0,16(s2)
   11b8a:	6871                	lui	a6,0x1c
   11b8c:	51880813          	addi	a6,a6,1304 # 1c518 <__malloc_av_+0x8>
   11b90:	1b040a63          	beq	s0,a6,11d44 <_malloc_r+0x284>
   11b94:	405c                	lw	a5,4(s0)
   11b96:	46bd                	li	a3,15
   11b98:	9bf1                	andi	a5,a5,-4
   11b9a:	40978733          	sub	a4,a5,s1
   11b9e:	26e6cc63          	blt	a3,a4,11e16 <_malloc_r+0x356>
   11ba2:	01092a23          	sw	a6,20(s2)
   11ba6:	01092823          	sw	a6,16(s2)
   11baa:	24075763          	bgez	a4,11df8 <_malloc_r+0x338>
   11bae:	1ff00713          	li	a4,511
   11bb2:	00492503          	lw	a0,4(s2)
   11bb6:	1af76163          	bltu	a4,a5,11d58 <_malloc_r+0x298>
   11bba:	ff87f713          	andi	a4,a5,-8
   11bbe:	0721                	addi	a4,a4,8
   11bc0:	974a                	add	a4,a4,s2
   11bc2:	4314                	lw	a3,0(a4)
   11bc4:	0057d613          	srli	a2,a5,0x5
   11bc8:	4785                	li	a5,1
   11bca:	00c797b3          	sll	a5,a5,a2
   11bce:	8d5d                	or	a0,a0,a5
   11bd0:	ff870793          	addi	a5,a4,-8
   11bd4:	c45c                	sw	a5,12(s0)
   11bd6:	c414                	sw	a3,8(s0)
   11bd8:	00a92223          	sw	a0,4(s2)
   11bdc:	c300                	sw	s0,0(a4)
   11bde:	c6c0                	sw	s0,12(a3)
   11be0:	4025d793          	srai	a5,a1,0x2
   11be4:	4605                	li	a2,1
   11be6:	00f61633          	sll	a2,a2,a5
   11bea:	06c56c63          	bltu	a0,a2,11c62 <_malloc_r+0x1a2>
   11bee:	00a677b3          	and	a5,a2,a0
   11bf2:	ef81                	bnez	a5,11c0a <_malloc_r+0x14a>
   11bf4:	0606                	slli	a2,a2,0x1
   11bf6:	99f1                	andi	a1,a1,-4
   11bf8:	00a677b3          	and	a5,a2,a0
   11bfc:	0591                	addi	a1,a1,4
   11bfe:	e791                	bnez	a5,11c0a <_malloc_r+0x14a>
   11c00:	0606                	slli	a2,a2,0x1
   11c02:	00a677b3          	and	a5,a2,a0
   11c06:	0591                	addi	a1,a1,4
   11c08:	dfe5                	beqz	a5,11c00 <_malloc_r+0x140>
   11c0a:	48bd                	li	a7,15
   11c0c:	00359313          	slli	t1,a1,0x3
   11c10:	934a                	add	t1,t1,s2
   11c12:	851a                	mv	a0,t1
   11c14:	455c                	lw	a5,12(a0)
   11c16:	8e2e                	mv	t3,a1
   11c18:	1af50063          	beq	a0,a5,11db8 <_malloc_r+0x2f8>
   11c1c:	43d8                	lw	a4,4(a5)
   11c1e:	843e                	mv	s0,a5
   11c20:	47dc                	lw	a5,12(a5)
   11c22:	9b71                	andi	a4,a4,-4
   11c24:	409706b3          	sub	a3,a4,s1
   11c28:	18d8cf63          	blt	a7,a3,11dc6 <_malloc_r+0x306>
   11c2c:	fe06c6e3          	bltz	a3,11c18 <_malloc_r+0x158>
   11c30:	9722                	add	a4,a4,s0
   11c32:	4354                	lw	a3,4(a4)
   11c34:	4410                	lw	a2,8(s0)
   11c36:	854e                	mv	a0,s3
   11c38:	0016e693          	ori	a3,a3,1
   11c3c:	c354                	sw	a3,4(a4)
   11c3e:	c65c                	sw	a5,12(a2)
   11c40:	c790                	sw	a2,8(a5)
   11c42:	2115                	jal	12066 <__malloc_unlock>
   11c44:	00840513          	addi	a0,s0,8
   11c48:	b5f9                	j	11b16 <_malloc_r+0x56>
   11c4a:	47b1                	li	a5,12
   11c4c:	00f9a023          	sw	a5,0(s3)
   11c50:	4501                	li	a0,0
   11c52:	b5d1                	j	11b16 <_malloc_r+0x56>
   11c54:	20000613          	li	a2,512
   11c58:	04000593          	li	a1,64
   11c5c:	03f00813          	li	a6,63
   11c60:	bde5                	j	11b58 <_malloc_r+0x98>
   11c62:	00892403          	lw	s0,8(s2)
   11c66:	c85a                	sw	s6,16(sp)
   11c68:	405c                	lw	a5,4(s0)
   11c6a:	ffc7fb13          	andi	s6,a5,-4
   11c6e:	009b6763          	bltu	s6,s1,11c7c <_malloc_r+0x1bc>
   11c72:	409b0733          	sub	a4,s6,s1
   11c76:	47bd                	li	a5,15
   11c78:	0ae7c163          	blt	a5,a4,11d1a <_malloc_r+0x25a>
   11c7c:	c266                	sw	s9,4(sp)
   11c7e:	ca56                	sw	s5,20(sp)
   11c80:	f181a703          	lw	a4,-232(gp) # 1caf8 <__malloc_sbrk_base>
   11c84:	f341aa83          	lw	s5,-204(gp) # 1cb14 <__malloc_top_pad>
   11c88:	cc52                	sw	s4,24(sp)
   11c8a:	c65e                	sw	s7,12(sp)
   11c8c:	57fd                	li	a5,-1
   11c8e:	01640a33          	add	s4,s0,s6
   11c92:	9aa6                	add	s5,s5,s1
   11c94:	2cf70763          	beq	a4,a5,11f62 <_malloc_r+0x4a2>
   11c98:	6785                	lui	a5,0x1
   11c9a:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   11c9c:	9abe                	add	s5,s5,a5
   11c9e:	77fd                	lui	a5,0xfffff
   11ca0:	00fafab3          	and	s5,s5,a5
   11ca4:	85d6                	mv	a1,s5
   11ca6:	854e                	mv	a0,s3
   11ca8:	1f1020ef          	jal	14698 <_sbrk_r>
   11cac:	57fd                	li	a5,-1
   11cae:	8baa                	mv	s7,a0
   11cb0:	32f50963          	beq	a0,a5,11fe2 <_malloc_r+0x522>
   11cb4:	c462                	sw	s8,8(sp)
   11cb6:	19456e63          	bltu	a0,s4,11e52 <_malloc_r+0x392>
   11cba:	09418c13          	addi	s8,gp,148 # 1cc74 <__malloc_current_mallinfo>
   11cbe:	000c2583          	lw	a1,0(s8)
   11cc2:	95d6                	add	a1,a1,s5
   11cc4:	00bc2023          	sw	a1,0(s8)
   11cc8:	872e                	mv	a4,a1
   11cca:	1eaa1863          	bne	s4,a0,11eba <_malloc_r+0x3fa>
   11cce:	01451793          	slli	a5,a0,0x14
   11cd2:	1e079463          	bnez	a5,11eba <_malloc_r+0x3fa>
   11cd6:	00892b83          	lw	s7,8(s2)
   11cda:	015b07b3          	add	a5,s6,s5
   11cde:	0017e793          	ori	a5,a5,1
   11ce2:	00fba223          	sw	a5,4(s7)
   11ce6:	f301a683          	lw	a3,-208(gp) # 1cb10 <__malloc_max_sbrked_mem>
   11cea:	00b6f463          	bgeu	a3,a1,11cf2 <_malloc_r+0x232>
   11cee:	f2b1a823          	sw	a1,-208(gp) # 1cb10 <__malloc_max_sbrked_mem>
   11cf2:	f2c1a683          	lw	a3,-212(gp) # 1cb0c <__malloc_max_total_mem>
   11cf6:	00b6f463          	bgeu	a3,a1,11cfe <_malloc_r+0x23e>
   11cfa:	f2b1a623          	sw	a1,-212(gp) # 1cb0c <__malloc_max_total_mem>
   11cfe:	4c22                	lw	s8,8(sp)
   11d00:	845e                	mv	s0,s7
   11d02:	9bf1                	andi	a5,a5,-4
   11d04:	40978733          	sub	a4,a5,s1
   11d08:	2897eb63          	bltu	a5,s1,11f9e <_malloc_r+0x4de>
   11d0c:	47bd                	li	a5,15
   11d0e:	28e7d863          	bge	a5,a4,11f9e <_malloc_r+0x4de>
   11d12:	4a62                	lw	s4,24(sp)
   11d14:	4ad2                	lw	s5,20(sp)
   11d16:	4bb2                	lw	s7,12(sp)
   11d18:	4c92                	lw	s9,4(sp)
   11d1a:	0014e793          	ori	a5,s1,1
   11d1e:	c05c                	sw	a5,4(s0)
   11d20:	94a2                	add	s1,s1,s0
   11d22:	00992423          	sw	s1,8(s2)
   11d26:	00176713          	ori	a4,a4,1
   11d2a:	854e                	mv	a0,s3
   11d2c:	c0d8                	sw	a4,4(s1)
   11d2e:	2e25                	jal	12066 <__malloc_unlock>
   11d30:	50b2                	lw	ra,44(sp)
   11d32:	00840513          	addi	a0,s0,8
   11d36:	5422                	lw	s0,40(sp)
   11d38:	4b42                	lw	s6,16(sp)
   11d3a:	5492                	lw	s1,36(sp)
   11d3c:	5902                	lw	s2,32(sp)
   11d3e:	49f2                	lw	s3,28(sp)
   11d40:	6145                	addi	sp,sp,48
   11d42:	8082                	ret
   11d44:	00492503          	lw	a0,4(s2)
   11d48:	bd61                	j	11be0 <_malloc_r+0x120>
   11d4a:	4410                	lw	a2,8(s0)
   11d4c:	bb55                	j	11b00 <_malloc_r+0x40>
   11d4e:	47c0                	lw	s0,12(a5)
   11d50:	0589                	addi	a1,a1,2
   11d52:	e2878ae3          	beq	a5,s0,11b86 <_malloc_r+0xc6>
   11d56:	b34d                	j	11af8 <_malloc_r+0x38>
   11d58:	0097d713          	srli	a4,a5,0x9
   11d5c:	4691                	li	a3,4
   11d5e:	0ee6f263          	bgeu	a3,a4,11e42 <_malloc_r+0x382>
   11d62:	46d1                	li	a3,20
   11d64:	24e6e663          	bltu	a3,a4,11fb0 <_malloc_r+0x4f0>
   11d68:	05c70613          	addi	a2,a4,92
   11d6c:	05b70693          	addi	a3,a4,91
   11d70:	060e                	slli	a2,a2,0x3
   11d72:	964a                	add	a2,a2,s2
   11d74:	4218                	lw	a4,0(a2)
   11d76:	1661                	addi	a2,a2,-8
   11d78:	00e61663          	bne	a2,a4,11d84 <_malloc_r+0x2c4>
   11d7c:	a2ed                	j	11f66 <_malloc_r+0x4a6>
   11d7e:	4718                	lw	a4,8(a4)
   11d80:	00e60663          	beq	a2,a4,11d8c <_malloc_r+0x2cc>
   11d84:	4354                	lw	a3,4(a4)
   11d86:	9af1                	andi	a3,a3,-4
   11d88:	fed7ebe3          	bltu	a5,a3,11d7e <_malloc_r+0x2be>
   11d8c:	4750                	lw	a2,12(a4)
   11d8e:	c450                	sw	a2,12(s0)
   11d90:	c418                	sw	a4,8(s0)
   11d92:	c600                	sw	s0,8(a2)
   11d94:	c740                	sw	s0,12(a4)
   11d96:	b5a9                	j	11be0 <_malloc_r+0x120>
   11d98:	4751                	li	a4,20
   11d9a:	0cf77363          	bgeu	a4,a5,11e60 <_malloc_r+0x3a0>
   11d9e:	05400713          	li	a4,84
   11da2:	22f76363          	bltu	a4,a5,11fc8 <_malloc_r+0x508>
   11da6:	00c4d793          	srli	a5,s1,0xc
   11daa:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe2243>
   11dae:	06e78813          	addi	a6,a5,110
   11db2:	00359613          	slli	a2,a1,0x3
   11db6:	b34d                	j	11b58 <_malloc_r+0x98>
   11db8:	0e05                	addi	t3,t3,1
   11dba:	003e7793          	andi	a5,t3,3
   11dbe:	0521                	addi	a0,a0,8
   11dc0:	cfc5                	beqz	a5,11e78 <_malloc_r+0x3b8>
   11dc2:	455c                	lw	a5,12(a0)
   11dc4:	bd91                	j	11c18 <_malloc_r+0x158>
   11dc6:	4410                	lw	a2,8(s0)
   11dc8:	0014e593          	ori	a1,s1,1
   11dcc:	c04c                	sw	a1,4(s0)
   11dce:	c65c                	sw	a5,12(a2)
   11dd0:	c790                	sw	a2,8(a5)
   11dd2:	94a2                	add	s1,s1,s0
   11dd4:	00992a23          	sw	s1,20(s2)
   11dd8:	00992823          	sw	s1,16(s2)
   11ddc:	0016e793          	ori	a5,a3,1
   11de0:	0104a623          	sw	a6,12(s1)
   11de4:	0104a423          	sw	a6,8(s1)
   11de8:	c0dc                	sw	a5,4(s1)
   11dea:	9722                	add	a4,a4,s0
   11dec:	854e                	mv	a0,s3
   11dee:	c314                	sw	a3,0(a4)
   11df0:	2c9d                	jal	12066 <__malloc_unlock>
   11df2:	00840513          	addi	a0,s0,8
   11df6:	b305                	j	11b16 <_malloc_r+0x56>
   11df8:	97a2                	add	a5,a5,s0
   11dfa:	43d8                	lw	a4,4(a5)
   11dfc:	854e                	mv	a0,s3
   11dfe:	00176713          	ori	a4,a4,1
   11e02:	c3d8                	sw	a4,4(a5)
   11e04:	248d                	jal	12066 <__malloc_unlock>
   11e06:	00840513          	addi	a0,s0,8
   11e0a:	b331                	j	11b16 <_malloc_r+0x56>
   11e0c:	0034d593          	srli	a1,s1,0x3
   11e10:	00848793          	addi	a5,s1,8
   11e14:	b9c9                	j	11ae6 <_malloc_r+0x26>
   11e16:	0014e693          	ori	a3,s1,1
   11e1a:	c054                	sw	a3,4(s0)
   11e1c:	94a2                	add	s1,s1,s0
   11e1e:	00992a23          	sw	s1,20(s2)
   11e22:	00992823          	sw	s1,16(s2)
   11e26:	00176693          	ori	a3,a4,1
   11e2a:	0104a623          	sw	a6,12(s1)
   11e2e:	0104a423          	sw	a6,8(s1)
   11e32:	c0d4                	sw	a3,4(s1)
   11e34:	97a2                	add	a5,a5,s0
   11e36:	854e                	mv	a0,s3
   11e38:	c398                	sw	a4,0(a5)
   11e3a:	2435                	jal	12066 <__malloc_unlock>
   11e3c:	00840513          	addi	a0,s0,8
   11e40:	b9d9                	j	11b16 <_malloc_r+0x56>
   11e42:	0067d713          	srli	a4,a5,0x6
   11e46:	03970613          	addi	a2,a4,57
   11e4a:	03870693          	addi	a3,a4,56
   11e4e:	060e                	slli	a2,a2,0x3
   11e50:	b70d                	j	11d72 <_malloc_r+0x2b2>
   11e52:	05240d63          	beq	s0,s2,11eac <_malloc_r+0x3ec>
   11e56:	00892403          	lw	s0,8(s2)
   11e5a:	4c22                	lw	s8,8(sp)
   11e5c:	405c                	lw	a5,4(s0)
   11e5e:	b555                	j	11d02 <_malloc_r+0x242>
   11e60:	05c78593          	addi	a1,a5,92
   11e64:	05b78813          	addi	a6,a5,91
   11e68:	00359613          	slli	a2,a1,0x3
   11e6c:	b1f5                	j	11b58 <_malloc_r+0x98>
   11e6e:	00832783          	lw	a5,8(t1)
   11e72:	15fd                	addi	a1,a1,-1
   11e74:	1e679563          	bne	a5,t1,1205e <_malloc_r+0x59e>
   11e78:	0035f793          	andi	a5,a1,3
   11e7c:	1361                	addi	t1,t1,-8
   11e7e:	fbe5                	bnez	a5,11e6e <_malloc_r+0x3ae>
   11e80:	00492703          	lw	a4,4(s2)
   11e84:	fff64793          	not	a5,a2
   11e88:	8ff9                	and	a5,a5,a4
   11e8a:	00f92223          	sw	a5,4(s2)
   11e8e:	0606                	slli	a2,a2,0x1
   11e90:	dcc7e9e3          	bltu	a5,a2,11c62 <_malloc_r+0x1a2>
   11e94:	dc0607e3          	beqz	a2,11c62 <_malloc_r+0x1a2>
   11e98:	00f67733          	and	a4,a2,a5
   11e9c:	e711                	bnez	a4,11ea8 <_malloc_r+0x3e8>
   11e9e:	0606                	slli	a2,a2,0x1
   11ea0:	00f67733          	and	a4,a2,a5
   11ea4:	0e11                	addi	t3,t3,4
   11ea6:	df65                	beqz	a4,11e9e <_malloc_r+0x3de>
   11ea8:	85f2                	mv	a1,t3
   11eaa:	b38d                	j	11c0c <_malloc_r+0x14c>
   11eac:	09418c13          	addi	s8,gp,148 # 1cc74 <__malloc_current_mallinfo>
   11eb0:	000c2703          	lw	a4,0(s8)
   11eb4:	9756                	add	a4,a4,s5
   11eb6:	00ec2023          	sw	a4,0(s8)
   11eba:	f181a683          	lw	a3,-232(gp) # 1caf8 <__malloc_sbrk_base>
   11ebe:	57fd                	li	a5,-1
   11ec0:	12f68563          	beq	a3,a5,11fea <_malloc_r+0x52a>
   11ec4:	414b87b3          	sub	a5,s7,s4
   11ec8:	97ba                	add	a5,a5,a4
   11eca:	00fc2023          	sw	a5,0(s8)
   11ece:	007bfc93          	andi	s9,s7,7
   11ed2:	0a0c8263          	beqz	s9,11f76 <_malloc_r+0x4b6>
   11ed6:	419b8bb3          	sub	s7,s7,s9
   11eda:	6785                	lui	a5,0x1
   11edc:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   11ede:	0ba1                	addi	s7,s7,8
   11ee0:	419785b3          	sub	a1,a5,s9
   11ee4:	9ade                	add	s5,s5,s7
   11ee6:	415585b3          	sub	a1,a1,s5
   11eea:	05d2                	slli	a1,a1,0x14
   11eec:	0145da13          	srli	s4,a1,0x14
   11ef0:	85d2                	mv	a1,s4
   11ef2:	854e                	mv	a0,s3
   11ef4:	7a4020ef          	jal	14698 <_sbrk_r>
   11ef8:	57fd                	li	a5,-1
   11efa:	12f50463          	beq	a0,a5,12022 <_malloc_r+0x562>
   11efe:	41750533          	sub	a0,a0,s7
   11f02:	01450ab3          	add	s5,a0,s4
   11f06:	000c2703          	lw	a4,0(s8)
   11f0a:	01792423          	sw	s7,8(s2)
   11f0e:	001ae793          	ori	a5,s5,1
   11f12:	00ea05b3          	add	a1,s4,a4
   11f16:	00bc2023          	sw	a1,0(s8)
   11f1a:	00fba223          	sw	a5,4(s7)
   11f1e:	dd2404e3          	beq	s0,s2,11ce6 <_malloc_r+0x226>
   11f22:	46bd                	li	a3,15
   11f24:	0766f963          	bgeu	a3,s6,11f96 <_malloc_r+0x4d6>
   11f28:	4058                	lw	a4,4(s0)
   11f2a:	ff4b0793          	addi	a5,s6,-12
   11f2e:	9be1                	andi	a5,a5,-8
   11f30:	8b05                	andi	a4,a4,1
   11f32:	8f5d                	or	a4,a4,a5
   11f34:	c058                	sw	a4,4(s0)
   11f36:	4615                	li	a2,5
   11f38:	00f40733          	add	a4,s0,a5
   11f3c:	c350                	sw	a2,4(a4)
   11f3e:	c710                	sw	a2,8(a4)
   11f40:	00f6e563          	bltu	a3,a5,11f4a <_malloc_r+0x48a>
   11f44:	004ba783          	lw	a5,4(s7)
   11f48:	bb79                	j	11ce6 <_malloc_r+0x226>
   11f4a:	00840593          	addi	a1,s0,8
   11f4e:	854e                	mv	a0,s3
   11f50:	94fff0ef          	jal	1189e <_free_r>
   11f54:	00892b83          	lw	s7,8(s2)
   11f58:	000c2583          	lw	a1,0(s8)
   11f5c:	004ba783          	lw	a5,4(s7)
   11f60:	b359                	j	11ce6 <_malloc_r+0x226>
   11f62:	0ac1                	addi	s5,s5,16
   11f64:	b381                	j	11ca4 <_malloc_r+0x1e4>
   11f66:	8689                	srai	a3,a3,0x2
   11f68:	4785                	li	a5,1
   11f6a:	00d797b3          	sll	a5,a5,a3
   11f6e:	8d5d                	or	a0,a0,a5
   11f70:	00a92223          	sw	a0,4(s2)
   11f74:	bd29                	j	11d8e <_malloc_r+0x2ce>
   11f76:	015b85b3          	add	a1,s7,s5
   11f7a:	40b005b3          	neg	a1,a1
   11f7e:	05d2                	slli	a1,a1,0x14
   11f80:	0145da13          	srli	s4,a1,0x14
   11f84:	85d2                	mv	a1,s4
   11f86:	854e                	mv	a0,s3
   11f88:	710020ef          	jal	14698 <_sbrk_r>
   11f8c:	57fd                	li	a5,-1
   11f8e:	f6f518e3          	bne	a0,a5,11efe <_malloc_r+0x43e>
   11f92:	4a01                	li	s4,0
   11f94:	bf8d                	j	11f06 <_malloc_r+0x446>
   11f96:	4c22                	lw	s8,8(sp)
   11f98:	4785                	li	a5,1
   11f9a:	00fba223          	sw	a5,4(s7)
   11f9e:	854e                	mv	a0,s3
   11fa0:	20d9                	jal	12066 <__malloc_unlock>
   11fa2:	4501                	li	a0,0
   11fa4:	4a62                	lw	s4,24(sp)
   11fa6:	4ad2                	lw	s5,20(sp)
   11fa8:	4b42                	lw	s6,16(sp)
   11faa:	4bb2                	lw	s7,12(sp)
   11fac:	4c92                	lw	s9,4(sp)
   11fae:	b6a5                	j	11b16 <_malloc_r+0x56>
   11fb0:	05400693          	li	a3,84
   11fb4:	02e6ee63          	bltu	a3,a4,11ff0 <_malloc_r+0x530>
   11fb8:	00c7d713          	srli	a4,a5,0xc
   11fbc:	06f70613          	addi	a2,a4,111
   11fc0:	06e70693          	addi	a3,a4,110
   11fc4:	060e                	slli	a2,a2,0x3
   11fc6:	b375                	j	11d72 <_malloc_r+0x2b2>
   11fc8:	15400713          	li	a4,340
   11fcc:	02f76e63          	bltu	a4,a5,12008 <_malloc_r+0x548>
   11fd0:	00f4d793          	srli	a5,s1,0xf
   11fd4:	07878593          	addi	a1,a5,120
   11fd8:	07778813          	addi	a6,a5,119
   11fdc:	00359613          	slli	a2,a1,0x3
   11fe0:	bea5                	j	11b58 <_malloc_r+0x98>
   11fe2:	00892403          	lw	s0,8(s2)
   11fe6:	405c                	lw	a5,4(s0)
   11fe8:	bb29                	j	11d02 <_malloc_r+0x242>
   11fea:	f171ac23          	sw	s7,-232(gp) # 1caf8 <__malloc_sbrk_base>
   11fee:	b5c5                	j	11ece <_malloc_r+0x40e>
   11ff0:	15400693          	li	a3,340
   11ff4:	02e6ed63          	bltu	a3,a4,1202e <_malloc_r+0x56e>
   11ff8:	00f7d713          	srli	a4,a5,0xf
   11ffc:	07870613          	addi	a2,a4,120
   12000:	07770693          	addi	a3,a4,119
   12004:	060e                	slli	a2,a2,0x3
   12006:	b3b5                	j	11d72 <_malloc_r+0x2b2>
   12008:	55400713          	li	a4,1364
   1200c:	02f76d63          	bltu	a4,a5,12046 <_malloc_r+0x586>
   12010:	0124d793          	srli	a5,s1,0x12
   12014:	07d78593          	addi	a1,a5,125
   12018:	07c78813          	addi	a6,a5,124
   1201c:	00359613          	slli	a2,a1,0x3
   12020:	be25                	j	11b58 <_malloc_r+0x98>
   12022:	1ce1                	addi	s9,s9,-8
   12024:	9ae6                	add	s5,s5,s9
   12026:	417a8ab3          	sub	s5,s5,s7
   1202a:	4a01                	li	s4,0
   1202c:	bde9                	j	11f06 <_malloc_r+0x446>
   1202e:	55400693          	li	a3,1364
   12032:	02e6e163          	bltu	a3,a4,12054 <_malloc_r+0x594>
   12036:	0127d713          	srli	a4,a5,0x12
   1203a:	07d70613          	addi	a2,a4,125
   1203e:	07c70693          	addi	a3,a4,124
   12042:	060e                	slli	a2,a2,0x3
   12044:	b33d                	j	11d72 <_malloc_r+0x2b2>
   12046:	3f800613          	li	a2,1016
   1204a:	07f00593          	li	a1,127
   1204e:	07e00813          	li	a6,126
   12052:	b619                	j	11b58 <_malloc_r+0x98>
   12054:	3f800613          	li	a2,1016
   12058:	07e00693          	li	a3,126
   1205c:	bb19                	j	11d72 <_malloc_r+0x2b2>
   1205e:	00492783          	lw	a5,4(s2)
   12062:	b535                	j	11e8e <_malloc_r+0x3ce>

00012064 <__malloc_lock>:
   12064:	8082                	ret

00012066 <__malloc_unlock>:
   12066:	8082                	ret

00012068 <_vfprintf_r>:
   12068:	7145                	addi	sp,sp,-464
   1206a:	1c112623          	sw	ra,460(sp)
   1206e:	1c812423          	sw	s0,456(sp)
   12072:	1c912223          	sw	s1,452(sp)
   12076:	1b612823          	sw	s6,432(sp)
   1207a:	84ae                	mv	s1,a1
   1207c:	8b32                	mv	s6,a2
   1207e:	ca36                	sw	a3,20(sp)
   12080:	842a                	mv	s0,a0
   12082:	c42a                	sw	a0,8(sp)
   12084:	608020ef          	jal	1468c <_localeconv_r>
   12088:	411c                	lw	a5,0(a0)
   1208a:	853e                	mv	a0,a5
   1208c:	d83e                	sw	a5,48(sp)
   1208e:	e06ff0ef          	jal	11694 <strlen>
   12092:	d62a                	sw	a0,44(sp)
   12094:	c982                	sw	zero,208(sp)
   12096:	cb82                	sw	zero,212(sp)
   12098:	cd82                	sw	zero,216(sp)
   1209a:	cf82                	sw	zero,220(sp)
   1209c:	c409                	beqz	s0,120a6 <_vfprintf_r+0x3e>
   1209e:	5858                	lw	a4,52(s0)
   120a0:	e319                	bnez	a4,120a6 <_vfprintf_r+0x3e>
   120a2:	1960106f          	j	13238 <_vfprintf_r+0x11d0>
   120a6:	00c49683          	lh	a3,12(s1)
   120aa:	50f8                	lw	a4,100(s1)
   120ac:	01269613          	slli	a2,a3,0x12
   120b0:	00064a63          	bltz	a2,120c4 <_vfprintf_r+0x5c>
   120b4:	7679                	lui	a2,0xffffe
   120b6:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe11d3>
   120b8:	6589                	lui	a1,0x2
   120ba:	8ecd                	or	a3,a3,a1
   120bc:	8f71                	and	a4,a4,a2
   120be:	00d49623          	sh	a3,12(s1)
   120c2:	d0f8                	sw	a4,100(s1)
   120c4:	01271693          	slli	a3,a4,0x12
   120c8:	0006d463          	bgez	a3,120d0 <_vfprintf_r+0x68>
   120cc:	07b0106f          	j	13946 <_vfprintf_r+0x18de>
   120d0:	00c49703          	lh	a4,12(s1)
   120d4:	00877693          	andi	a3,a4,8
   120d8:	22068a63          	beqz	a3,1230c <_vfprintf_r+0x2a4>
   120dc:	4894                	lw	a3,16(s1)
   120de:	22068763          	beqz	a3,1230c <_vfprintf_r+0x2a4>
   120e2:	8b69                	andi	a4,a4,26
   120e4:	46a9                	li	a3,10
   120e6:	24d70063          	beq	a4,a3,12326 <_vfprintf_r+0x2be>
   120ea:	1b312e23          	sw	s3,444(sp)
   120ee:	1b412c23          	sw	s4,440(sp)
   120f2:	1ba12023          	sw	s10,416(sp)
   120f6:	676d                	lui	a4,0x1b
   120f8:	1d212023          	sw	s2,448(sp)
   120fc:	1b512a23          	sw	s5,436(sp)
   12100:	1b712623          	sw	s7,428(sp)
   12104:	1b812423          	sw	s8,424(sp)
   12108:	1b912223          	sw	s9,420(sp)
   1210c:	19b12e23          	sw	s11,412(sp)
   12110:	8d5a                	mv	s10,s6
   12112:	ce070793          	addi	a5,a4,-800 # 1ace0 <__clzsi2+0x272>
   12116:	000d4703          	lbu	a4,0(s10)
   1211a:	0ec10993          	addi	s3,sp,236
   1211e:	6a6d                	lui	s4,0x1b
   12120:	c3ce                	sw	s3,196(sp)
   12122:	c782                	sw	zero,204(sp)
   12124:	c582                	sw	zero,200(sp)
   12126:	d002                	sw	zero,32(sp)
   12128:	da02                	sw	zero,52(sp)
   1212a:	c082                	sw	zero,64(sp)
   1212c:	de02                	sw	zero,60(sp)
   1212e:	c482                	sw	zero,72(sp)
   12130:	c282                	sw	zero,68(sp)
   12132:	c602                	sw	zero,12(sp)
   12134:	cc3e                	sw	a5,24(sp)
   12136:	844e                	mv	s0,s3
   12138:	ee4a0a13          	addi	s4,s4,-284 # 1aee4 <zeroes.0>
   1213c:	18070063          	beqz	a4,122bc <_vfprintf_r+0x254>
   12140:	896a                	mv	s2,s10
   12142:	02500693          	li	a3,37
   12146:	2ed70a63          	beq	a4,a3,1243a <_vfprintf_r+0x3d2>
   1214a:	00194703          	lbu	a4,1(s2)
   1214e:	0905                	addi	s2,s2,1
   12150:	fb7d                	bnez	a4,12146 <_vfprintf_r+0xde>
   12152:	41a90ab3          	sub	s5,s2,s10
   12156:	17a90363          	beq	s2,s10,122bc <_vfprintf_r+0x254>
   1215a:	46be                	lw	a3,204(sp)
   1215c:	472e                	lw	a4,200(sp)
   1215e:	01a42023          	sw	s10,0(s0)
   12162:	96d6                	add	a3,a3,s5
   12164:	0705                	addi	a4,a4,1
   12166:	01542223          	sw	s5,4(s0)
   1216a:	c7b6                	sw	a3,204(sp)
   1216c:	c5ba                	sw	a4,200(sp)
   1216e:	469d                	li	a3,7
   12170:	0421                	addi	s0,s0,8
   12172:	2ce6cb63          	blt	a3,a4,12448 <_vfprintf_r+0x3e0>
   12176:	47b2                	lw	a5,12(sp)
   12178:	00094703          	lbu	a4,0(s2)
   1217c:	97d6                	add	a5,a5,s5
   1217e:	c63e                	sw	a5,12(sp)
   12180:	12070e63          	beqz	a4,122bc <_vfprintf_r+0x254>
   12184:	00194883          	lbu	a7,1(s2)
   12188:	0a0103a3          	sb	zero,167(sp)
   1218c:	0905                	addi	s2,s2,1
   1218e:	5afd                	li	s5,-1
   12190:	4b81                	li	s7,0
   12192:	4c81                	li	s9,0
   12194:	05a00b13          	li	s6,90
   12198:	0905                	addi	s2,s2,1
   1219a:	fe088793          	addi	a5,a7,-32
   1219e:	02fb6b63          	bltu	s6,a5,121d4 <_vfprintf_r+0x16c>
   121a2:	4762                	lw	a4,24(sp)
   121a4:	078a                	slli	a5,a5,0x2
   121a6:	97ba                	add	a5,a5,a4
   121a8:	439c                	lw	a5,0(a5)
   121aa:	8782                	jr	a5
   121ac:	4b81                	li	s7,0
   121ae:	fd088793          	addi	a5,a7,-48
   121b2:	46a5                	li	a3,9
   121b4:	00094883          	lbu	a7,0(s2)
   121b8:	002b9713          	slli	a4,s7,0x2
   121bc:	9bba                	add	s7,s7,a4
   121be:	0b86                	slli	s7,s7,0x1
   121c0:	9bbe                	add	s7,s7,a5
   121c2:	fd088793          	addi	a5,a7,-48
   121c6:	0905                	addi	s2,s2,1
   121c8:	fef6f6e3          	bgeu	a3,a5,121b4 <_vfprintf_r+0x14c>
   121cc:	fe088793          	addi	a5,a7,-32
   121d0:	fcfb79e3          	bgeu	s6,a5,121a2 <_vfprintf_r+0x13a>
   121d4:	0e088463          	beqz	a7,122bc <_vfprintf_r+0x254>
   121d8:	13110623          	sb	a7,300(sp)
   121dc:	0a0103a3          	sb	zero,167(sp)
   121e0:	4d85                	li	s11,1
   121e2:	4b05                	li	s6,1
   121e4:	12c10d13          	addi	s10,sp,300
   121e8:	c802                	sw	zero,16(sp)
   121ea:	4a81                	li	s5,0
   121ec:	d402                	sw	zero,40(sp)
   121ee:	d202                	sw	zero,36(sp)
   121f0:	ce02                	sw	zero,28(sp)
   121f2:	002cf293          	andi	t0,s9,2
   121f6:	00028363          	beqz	t0,121fc <_vfprintf_r+0x194>
   121fa:	0d89                	addi	s11,s11,2
   121fc:	084cff93          	andi	t6,s9,132
   12200:	463e                	lw	a2,204(sp)
   12202:	000f9663          	bnez	t6,1220e <_vfprintf_r+0x1a6>
   12206:	41bb8733          	sub	a4,s7,s11
   1220a:	0ce047e3          	bgtz	a4,12ad8 <_vfprintf_r+0xa70>
   1220e:	0a714703          	lbu	a4,167(sp)
   12212:	cf19                	beqz	a4,12230 <_vfprintf_r+0x1c8>
   12214:	472e                	lw	a4,200(sp)
   12216:	0a710593          	addi	a1,sp,167
   1221a:	c00c                	sw	a1,0(s0)
   1221c:	0605                	addi	a2,a2,1
   1221e:	4585                	li	a1,1
   12220:	0705                	addi	a4,a4,1
   12222:	c04c                	sw	a1,4(s0)
   12224:	c7b2                	sw	a2,204(sp)
   12226:	c5ba                	sw	a4,200(sp)
   12228:	459d                	li	a1,7
   1222a:	0421                	addi	s0,s0,8
   1222c:	2ee5c763          	blt	a1,a4,1251a <_vfprintf_r+0x4b2>
   12230:	00028f63          	beqz	t0,1224e <_vfprintf_r+0x1e6>
   12234:	472e                	lw	a4,200(sp)
   12236:	4589                	li	a1,2
   12238:	0609                	addi	a2,a2,2
   1223a:	0705                	addi	a4,a4,1
   1223c:	113c                	addi	a5,sp,168
   1223e:	c04c                	sw	a1,4(s0)
   12240:	c01c                	sw	a5,0(s0)
   12242:	c7b2                	sw	a2,204(sp)
   12244:	c5ba                	sw	a4,200(sp)
   12246:	459d                	li	a1,7
   12248:	0421                	addi	s0,s0,8
   1224a:	12e5cae3          	blt	a1,a4,12b7e <_vfprintf_r+0xb16>
   1224e:	08000713          	li	a4,128
   12252:	72ef8e63          	beq	t6,a4,1298e <_vfprintf_r+0x926>
   12256:	416a8ab3          	sub	s5,s5,s6
   1225a:	7d504a63          	bgtz	s5,12a2e <_vfprintf_r+0x9c6>
   1225e:	100cf713          	andi	a4,s9,256
   12262:	60071e63          	bnez	a4,1287e <_vfprintf_r+0x816>
   12266:	47ae                	lw	a5,200(sp)
   12268:	965a                	add	a2,a2,s6
   1226a:	01a42023          	sw	s10,0(s0)
   1226e:	0785                	addi	a5,a5,1
   12270:	01642223          	sw	s6,4(s0)
   12274:	c7b2                	sw	a2,204(sp)
   12276:	c5be                	sw	a5,200(sp)
   12278:	471d                	li	a4,7
   1227a:	36f74563          	blt	a4,a5,125e4 <_vfprintf_r+0x57c>
   1227e:	0421                	addi	s0,s0,8
   12280:	004cfe13          	andi	t3,s9,4
   12284:	000e0663          	beqz	t3,12290 <_vfprintf_r+0x228>
   12288:	41bb8ab3          	sub	s5,s7,s11
   1228c:	115047e3          	bgtz	s5,12b9a <_vfprintf_r+0xb32>
   12290:	835e                	mv	t1,s7
   12292:	01bbd363          	bge	s7,s11,12298 <_vfprintf_r+0x230>
   12296:	836e                	mv	t1,s11
   12298:	47b2                	lw	a5,12(sp)
   1229a:	979a                	add	a5,a5,t1
   1229c:	c63e                	sw	a5,12(sp)
   1229e:	00061ce3          	bnez	a2,12ab6 <_vfprintf_r+0xa4e>
   122a2:	47c2                	lw	a5,16(sp)
   122a4:	c582                	sw	zero,200(sp)
   122a6:	c789                	beqz	a5,122b0 <_vfprintf_r+0x248>
   122a8:	45c2                	lw	a1,16(sp)
   122aa:	4522                	lw	a0,8(sp)
   122ac:	df2ff0ef          	jal	1189e <_free_r>
   122b0:	844e                	mv	s0,s3
   122b2:	8d4a                	mv	s10,s2
   122b4:	000d4703          	lbu	a4,0(s10)
   122b8:	e80714e3          	bnez	a4,12140 <_vfprintf_r+0xd8>
   122bc:	47be                	lw	a5,204(sp)
   122be:	c399                	beqz	a5,122c4 <_vfprintf_r+0x25c>
   122c0:	31a0106f          	j	135da <_vfprintf_r+0x1572>
   122c4:	00c4d783          	lhu	a5,12(s1)
   122c8:	1c012903          	lw	s2,448(sp)
   122cc:	1bc12983          	lw	s3,444(sp)
   122d0:	0407f793          	andi	a5,a5,64
   122d4:	1b812a03          	lw	s4,440(sp)
   122d8:	1b412a83          	lw	s5,436(sp)
   122dc:	1ac12b83          	lw	s7,428(sp)
   122e0:	1a812c03          	lw	s8,424(sp)
   122e4:	1a412c83          	lw	s9,420(sp)
   122e8:	1a012d03          	lw	s10,416(sp)
   122ec:	19c12d83          	lw	s11,412(sp)
   122f0:	c399                	beqz	a5,122f6 <_vfprintf_r+0x28e>
   122f2:	6540106f          	j	13946 <_vfprintf_r+0x18de>
   122f6:	1cc12083          	lw	ra,460(sp)
   122fa:	1c812403          	lw	s0,456(sp)
   122fe:	4532                	lw	a0,12(sp)
   12300:	1c412483          	lw	s1,452(sp)
   12304:	1b012b03          	lw	s6,432(sp)
   12308:	6179                	addi	sp,sp,464
   1230a:	8082                	ret
   1230c:	4522                	lw	a0,8(sp)
   1230e:	85a6                	mv	a1,s1
   12310:	194020ef          	jal	144a4 <__swsetup_r>
   12314:	c119                	beqz	a0,1231a <_vfprintf_r+0x2b2>
   12316:	6300106f          	j	13946 <_vfprintf_r+0x18de>
   1231a:	00c49703          	lh	a4,12(s1)
   1231e:	46a9                	li	a3,10
   12320:	8b69                	andi	a4,a4,26
   12322:	dcd714e3          	bne	a4,a3,120ea <_vfprintf_r+0x82>
   12326:	00e49703          	lh	a4,14(s1)
   1232a:	dc0740e3          	bltz	a4,120ea <_vfprintf_r+0x82>
   1232e:	46d2                	lw	a3,20(sp)
   12330:	4522                	lw	a0,8(sp)
   12332:	865a                	mv	a2,s6
   12334:	85a6                	mv	a1,s1
   12336:	0e9010ef          	jal	13c1e <__sbprintf>
   1233a:	c62a                	sw	a0,12(sp)
   1233c:	bf6d                	j	122f6 <_vfprintf_r+0x28e>
   1233e:	4c22                	lw	s8,8(sp)
   12340:	8562                	mv	a0,s8
   12342:	34a020ef          	jal	1468c <_localeconv_r>
   12346:	415c                	lw	a5,4(a0)
   12348:	853e                	mv	a0,a5
   1234a:	c2be                	sw	a5,68(sp)
   1234c:	b48ff0ef          	jal	11694 <strlen>
   12350:	87aa                	mv	a5,a0
   12352:	8562                	mv	a0,s8
   12354:	c4be                	sw	a5,72(sp)
   12356:	8c3e                	mv	s8,a5
   12358:	334020ef          	jal	1468c <_localeconv_r>
   1235c:	451c                	lw	a5,8(a0)
   1235e:	de3e                	sw	a5,60(sp)
   12360:	280c16e3          	bnez	s8,12dec <_vfprintf_r+0xd84>
   12364:	00094883          	lbu	a7,0(s2)
   12368:	bd05                	j	12198 <_vfprintf_r+0x130>
   1236a:	00094883          	lbu	a7,0(s2)
   1236e:	020cec93          	ori	s9,s9,32
   12372:	b51d                	j	12198 <_vfprintf_r+0x130>
   12374:	010cec93          	ori	s9,s9,16
   12378:	020cf793          	andi	a5,s9,32
   1237c:	26078e63          	beqz	a5,125f8 <_vfprintf_r+0x590>
   12380:	47d2                	lw	a5,20(sp)
   12382:	00778c13          	addi	s8,a5,7
   12386:	ff8c7c13          	andi	s8,s8,-8
   1238a:	004c2783          	lw	a5,4(s8)
   1238e:	000c2b03          	lw	s6,0(s8)
   12392:	008c0713          	addi	a4,s8,8
   12396:	ca3a                	sw	a4,20(sp)
   12398:	8dbe                	mv	s11,a5
   1239a:	2807c463          	bltz	a5,12622 <_vfprintf_r+0x5ba>
   1239e:	8ee6                	mv	t4,s9
   123a0:	380ac563          	bltz	s5,1272a <_vfprintf_r+0x6c2>
   123a4:	01bb67b3          	or	a5,s6,s11
   123a8:	f7fcfe93          	andi	t4,s9,-129
   123ac:	36079f63          	bnez	a5,1272a <_vfprintf_r+0x6c2>
   123b0:	380a9263          	bnez	s5,12734 <_vfprintf_r+0x6cc>
   123b4:	4b01                	li	s6,0
   123b6:	8cf6                	mv	s9,t4
   123b8:	19010d13          	addi	s10,sp,400
   123bc:	0a714703          	lbu	a4,167(sp)
   123c0:	8dd6                	mv	s11,s5
   123c2:	016ad363          	bge	s5,s6,123c8 <_vfprintf_r+0x360>
   123c6:	8dda                	mv	s11,s6
   123c8:	c802                	sw	zero,16(sp)
   123ca:	d402                	sw	zero,40(sp)
   123cc:	d202                	sw	zero,36(sp)
   123ce:	ce02                	sw	zero,28(sp)
   123d0:	e20701e3          	beqz	a4,121f2 <_vfprintf_r+0x18a>
   123d4:	0d85                	addi	s11,s11,1
   123d6:	bd31                	j	121f2 <_vfprintf_r+0x18a>
   123d8:	010cec93          	ori	s9,s9,16
   123dc:	020cf793          	andi	a5,s9,32
   123e0:	2a078d63          	beqz	a5,1269a <_vfprintf_r+0x632>
   123e4:	47d2                	lw	a5,20(sp)
   123e6:	00778c13          	addi	s8,a5,7
   123ea:	ff8c7c13          	andi	s8,s8,-8
   123ee:	000c2b03          	lw	s6,0(s8)
   123f2:	004c2d83          	lw	s11,4(s8)
   123f6:	008c0793          	addi	a5,s8,8
   123fa:	ca3e                	sw	a5,20(sp)
   123fc:	bffcfe93          	andi	t4,s9,-1025
   12400:	4781                	li	a5,0
   12402:	4701                	li	a4,0
   12404:	0ae103a3          	sb	a4,167(sp)
   12408:	220acd63          	bltz	s5,12642 <_vfprintf_r+0x5da>
   1240c:	01bb6733          	or	a4,s6,s11
   12410:	f7fefc93          	andi	s9,t4,-129
   12414:	6c071063          	bnez	a4,12ad4 <_vfprintf_r+0xa6c>
   12418:	520a9763          	bnez	s5,12946 <_vfprintf_r+0x8de>
   1241c:	180790e3          	bnez	a5,12d9c <_vfprintf_r+0xd34>
   12420:	001efb13          	andi	s6,t4,1
   12424:	19010d13          	addi	s10,sp,400
   12428:	f80b0ae3          	beqz	s6,123bc <_vfprintf_r+0x354>
   1242c:	03000793          	li	a5,48
   12430:	18f107a3          	sb	a5,399(sp)
   12434:	18f10d13          	addi	s10,sp,399
   12438:	b751                	j	123bc <_vfprintf_r+0x354>
   1243a:	41a90ab3          	sub	s5,s2,s10
   1243e:	d1a91ee3          	bne	s2,s10,1215a <_vfprintf_r+0xf2>
   12442:	00094703          	lbu	a4,0(s2)
   12446:	bb2d                	j	12180 <_vfprintf_r+0x118>
   12448:	4522                	lw	a0,8(sp)
   1244a:	01d0                	addi	a2,sp,196
   1244c:	85a6                	mv	a1,s1
   1244e:	065010ef          	jal	13cb2 <__sprint_r>
   12452:	e60519e3          	bnez	a0,122c4 <_vfprintf_r+0x25c>
   12456:	844e                	mv	s0,s3
   12458:	bb39                	j	12176 <_vfprintf_r+0x10e>
   1245a:	008cf713          	andi	a4,s9,8
   1245e:	1c0716e3          	bnez	a4,12e2a <_vfprintf_r+0xdc2>
   12462:	47d2                	lw	a5,20(sp)
   12464:	0908                	addi	a0,sp,144
   12466:	c846                	sw	a7,16(sp)
   12468:	00778c13          	addi	s8,a5,7
   1246c:	ff8c7c13          	andi	s8,s8,-8
   12470:	000c2583          	lw	a1,0(s8)
   12474:	004c2603          	lw	a2,4(s8)
   12478:	008c0793          	addi	a5,s8,8
   1247c:	ca3e                	sw	a5,20(sp)
   1247e:	464080ef          	jal	1a8e2 <__extenddftf2>
   12482:	45ca                	lw	a1,144(sp)
   12484:	465a                	lw	a2,148(sp)
   12486:	46ea                	lw	a3,152(sp)
   12488:	477a                	lw	a4,156(sp)
   1248a:	48c2                	lw	a7,16(sp)
   1248c:	0988                	addi	a0,sp,208
   1248e:	c846                	sw	a7,16(sp)
   12490:	cfba                	sw	a4,220(sp)
   12492:	c9ae                	sw	a1,208(sp)
   12494:	cbb2                	sw	a2,212(sp)
   12496:	cdb6                	sw	a3,216(sp)
   12498:	632020ef          	jal	14aca <_ldcheck>
   1249c:	d72a                	sw	a0,172(sp)
   1249e:	4709                	li	a4,2
   124a0:	48c2                	lw	a7,16(sp)
   124a2:	5ce50be3          	beq	a0,a4,13278 <_vfprintf_r+0x1210>
   124a6:	4705                	li	a4,1
   124a8:	6ae505e3          	beq	a0,a4,13352 <_vfprintf_r+0x12ea>
   124ac:	06100713          	li	a4,97
   124b0:	2ae88ce3          	beq	a7,a4,12f68 <_vfprintf_r+0xf00>
   124b4:	04100713          	li	a4,65
   124b8:	05800793          	li	a5,88
   124bc:	2ae888e3          	beq	a7,a4,12f6c <_vfprintf_r+0xf04>
   124c0:	577d                	li	a4,-1
   124c2:	00ea9463          	bne	s5,a4,124ca <_vfprintf_r+0x462>
   124c6:	6260106f          	j	13aec <_vfprintf_r+0x1a84>
   124ca:	fdf8f713          	andi	a4,a7,-33
   124ce:	04700693          	li	a3,71
   124d2:	c802                	sw	zero,16(sp)
   124d4:	00d71563          	bne	a4,a3,124de <_vfprintf_r+0x476>
   124d8:	000a9363          	bnez	s5,124de <_vfprintf_r+0x476>
   124dc:	4a85                	li	s5,1
   124de:	4c7e                	lw	s8,220(sp)
   124e0:	100ce793          	ori	a5,s9,256
   124e4:	c6be                	sw	a5,76(sp)
   124e6:	dc02                	sw	zero,56(sp)
   124e8:	4fce                	lw	t6,208(sp)
   124ea:	4f5e                	lw	t5,212(sp)
   124ec:	4eee                	lw	t4,216(sp)
   124ee:	000c5963          	bgez	s8,12500 <_vfprintf_r+0x498>
   124f2:	80000737          	lui	a4,0x80000
   124f6:	02d00793          	li	a5,45
   124fa:	01874c33          	xor	s8,a4,s8
   124fe:	dc3e                	sw	a5,56(sp)
   12500:	fbf88713          	addi	a4,a7,-65
   12504:	02500693          	li	a3,37
   12508:	28e6eee3          	bltu	a3,a4,12fa4 <_vfprintf_r+0xf3c>
   1250c:	66ed                	lui	a3,0x1b
   1250e:	070a                	slli	a4,a4,0x2
   12510:	e4c68693          	addi	a3,a3,-436 # 1ae4c <__clzsi2+0x3de>
   12514:	9736                	add	a4,a4,a3
   12516:	4318                	lw	a4,0(a4)
   12518:	8702                	jr	a4
   1251a:	4522                	lw	a0,8(sp)
   1251c:	01d0                	addi	a2,sp,196
   1251e:	85a6                	mv	a1,s1
   12520:	c8c6                	sw	a7,80(sp)
   12522:	c6fe                	sw	t6,76(sp)
   12524:	dc16                	sw	t0,56(sp)
   12526:	78c010ef          	jal	13cb2 <__sprint_r>
   1252a:	58051d63          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   1252e:	463e                	lw	a2,204(sp)
   12530:	48c6                	lw	a7,80(sp)
   12532:	4fb6                	lw	t6,76(sp)
   12534:	52e2                	lw	t0,56(sp)
   12536:	844e                	mv	s0,s3
   12538:	b9e5                	j	12230 <_vfprintf_r+0x1c8>
   1253a:	4aae                	lw	s5,200(sp)
   1253c:	5782                	lw	a5,32(sp)
   1253e:	4705                	li	a4,1
   12540:	01a42023          	sw	s10,0(s0)
   12544:	00160c13          	addi	s8,a2,1
   12548:	0a85                	addi	s5,s5,1
   1254a:	00840b13          	addi	s6,s0,8
   1254e:	7af75763          	bge	a4,a5,12cfc <_vfprintf_r+0xc94>
   12552:	4705                	li	a4,1
   12554:	c058                	sw	a4,4(s0)
   12556:	c7e2                	sw	s8,204(sp)
   12558:	c5d6                	sw	s5,200(sp)
   1255a:	471d                	li	a4,7
   1255c:	395741e3          	blt	a4,s5,130de <_vfprintf_r+0x1076>
   12560:	57b2                	lw	a5,44(sp)
   12562:	5742                	lw	a4,48(sp)
   12564:	0a85                	addi	s5,s5,1
   12566:	9c3e                	add	s8,s8,a5
   12568:	00eb2023          	sw	a4,0(s6)
   1256c:	00fb2223          	sw	a5,4(s6)
   12570:	c7e2                	sw	s8,204(sp)
   12572:	c5d6                	sw	s5,200(sp)
   12574:	471d                	li	a4,7
   12576:	0b21                	addi	s6,s6,8
   12578:	37574fe3          	blt	a4,s5,130f6 <_vfprintf_r+0x108e>
   1257c:	474e                	lw	a4,208(sp)
   1257e:	5782                	lw	a5,32(sp)
   12580:	010c                	addi	a1,sp,128
   12582:	c93a                	sw	a4,144(sp)
   12584:	475e                	lw	a4,212(sp)
   12586:	0908                	addi	a0,sp,144
   12588:	c102                	sw	zero,128(sp)
   1258a:	cb3a                	sw	a4,148(sp)
   1258c:	476e                	lw	a4,216(sp)
   1258e:	c302                	sw	zero,132(sp)
   12590:	c502                	sw	zero,136(sp)
   12592:	cd3a                	sw	a4,152(sp)
   12594:	477e                	lw	a4,220(sp)
   12596:	c702                	sw	zero,140(sp)
   12598:	fff78413          	addi	s0,a5,-1
   1259c:	cf3a                	sw	a4,156(sp)
   1259e:	060060ef          	jal	185fe <__eqtf2>
   125a2:	78050263          	beqz	a0,12d26 <_vfprintf_r+0xcbe>
   125a6:	001d0793          	addi	a5,s10,1
   125aa:	0a85                	addi	s5,s5,1
   125ac:	9c22                	add	s8,s8,s0
   125ae:	00fb2023          	sw	a5,0(s6)
   125b2:	008b2223          	sw	s0,4(s6)
   125b6:	c7e2                	sw	s8,204(sp)
   125b8:	c5d6                	sw	s5,200(sp)
   125ba:	479d                	li	a5,7
   125bc:	0b21                	addi	s6,s6,8
   125be:	7557c963          	blt	a5,s5,12d10 <_vfprintf_r+0xca8>
   125c2:	4686                	lw	a3,64(sp)
   125c4:	1958                	addi	a4,sp,180
   125c6:	001a8793          	addi	a5,s5,1
   125ca:	01868633          	add	a2,a3,s8
   125ce:	00eb2023          	sw	a4,0(s6)
   125d2:	00db2223          	sw	a3,4(s6)
   125d6:	c7b2                	sw	a2,204(sp)
   125d8:	c5be                	sw	a5,200(sp)
   125da:	471d                	li	a4,7
   125dc:	008b0413          	addi	s0,s6,8
   125e0:	caf750e3          	bge	a4,a5,12280 <_vfprintf_r+0x218>
   125e4:	4522                	lw	a0,8(sp)
   125e6:	01d0                	addi	a2,sp,196
   125e8:	85a6                	mv	a1,s1
   125ea:	6c8010ef          	jal	13cb2 <__sprint_r>
   125ee:	4c051b63          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   125f2:	463e                	lw	a2,204(sp)
   125f4:	844e                	mv	s0,s3
   125f6:	b169                	j	12280 <_vfprintf_r+0x218>
   125f8:	4752                	lw	a4,20(sp)
   125fa:	010cf793          	andi	a5,s9,16
   125fe:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe31d4>
   12602:	0711                	addi	a4,a4,4
   12604:	ca3a                	sw	a4,20(sp)
   12606:	7c079e63          	bnez	a5,12de2 <_vfprintf_r+0xd7a>
   1260a:	040cf793          	andi	a5,s9,64
   1260e:	7c078663          	beqz	a5,12dda <_vfprintf_r+0xd72>
   12612:	0b42                	slli	s6,s6,0x10
   12614:	410b5b13          	srai	s6,s6,0x10
   12618:	41fb5d93          	srai	s11,s6,0x1f
   1261c:	87ee                	mv	a5,s11
   1261e:	d807d0e3          	bgez	a5,1239e <_vfprintf_r+0x336>
   12622:	02d00713          	li	a4,45
   12626:	016037b3          	snez	a5,s6
   1262a:	41b00db3          	neg	s11,s11
   1262e:	0ae103a3          	sb	a4,167(sp)
   12632:	40fd8db3          	sub	s11,s11,a5
   12636:	41600b33          	neg	s6,s6
   1263a:	8ee6                	mv	t4,s9
   1263c:	4785                	li	a5,1
   1263e:	dc0ad7e3          	bgez	s5,1240c <_vfprintf_r+0x3a4>
   12642:	4705                	li	a4,1
   12644:	0ee78363          	beq	a5,a4,1272a <_vfprintf_r+0x6c2>
   12648:	4709                	li	a4,2
   1264a:	30e78763          	beq	a5,a4,12958 <_vfprintf_r+0x8f0>
   1264e:	19010d13          	addi	s10,sp,400
   12652:	01dd9793          	slli	a5,s11,0x1d
   12656:	007b7713          	andi	a4,s6,7
   1265a:	003b5b13          	srli	s6,s6,0x3
   1265e:	03070713          	addi	a4,a4,48
   12662:	0167eb33          	or	s6,a5,s6
   12666:	003ddd93          	srli	s11,s11,0x3
   1266a:	feed0fa3          	sb	a4,-1(s10)
   1266e:	01bb67b3          	or	a5,s6,s11
   12672:	866a                	mv	a2,s10
   12674:	1d7d                	addi	s10,s10,-1
   12676:	fff1                	bnez	a5,12652 <_vfprintf_r+0x5ea>
   12678:	001ef693          	andi	a3,t4,1
   1267c:	30068463          	beqz	a3,12984 <_vfprintf_r+0x91c>
   12680:	03000693          	li	a3,48
   12684:	30d70063          	beq	a4,a3,12984 <_vfprintf_r+0x91c>
   12688:	1679                	addi	a2,a2,-2
   1268a:	0b1c                	addi	a5,sp,400
   1268c:	fedd0fa3          	sb	a3,-1(s10)
   12690:	40c78b33          	sub	s6,a5,a2
   12694:	8cf6                	mv	s9,t4
   12696:	8d32                	mv	s10,a2
   12698:	b315                	j	123bc <_vfprintf_r+0x354>
   1269a:	4752                	lw	a4,20(sp)
   1269c:	010cf793          	andi	a5,s9,16
   126a0:	00072b03          	lw	s6,0(a4)
   126a4:	0711                	addi	a4,a4,4
   126a6:	ca3a                	sw	a4,20(sp)
   126a8:	72079663          	bnez	a5,12dd4 <_vfprintf_r+0xd6c>
   126ac:	040cf793          	andi	a5,s9,64
   126b0:	70078e63          	beqz	a5,12dcc <_vfprintf_r+0xd64>
   126b4:	0b42                	slli	s6,s6,0x10
   126b6:	010b5b13          	srli	s6,s6,0x10
   126ba:	4d81                	li	s11,0
   126bc:	b381                	j	123fc <_vfprintf_r+0x394>
   126be:	4752                	lw	a4,20(sp)
   126c0:	0a0103a3          	sb	zero,167(sp)
   126c4:	4d85                	li	s11,1
   126c6:	431c                	lw	a5,0(a4)
   126c8:	0711                	addi	a4,a4,4
   126ca:	ca3a                	sw	a4,20(sp)
   126cc:	12f10623          	sb	a5,300(sp)
   126d0:	4b05                	li	s6,1
   126d2:	12c10d13          	addi	s10,sp,300
   126d6:	be09                	j	121e8 <_vfprintf_r+0x180>
   126d8:	47d2                	lw	a5,20(sp)
   126da:	0a0103a3          	sb	zero,167(sp)
   126de:	0007ad03          	lw	s10,0(a5)
   126e2:	00478c13          	addi	s8,a5,4
   126e6:	7e0d0a63          	beqz	s10,12eda <_vfprintf_r+0xe72>
   126ea:	420ac4e3          	bltz	s5,13312 <_vfprintf_r+0x12aa>
   126ee:	8656                	mv	a2,s5
   126f0:	4581                	li	a1,0
   126f2:	856a                	mv	a0,s10
   126f4:	ca46                	sw	a7,20(sp)
   126f6:	689010ef          	jal	1457e <memchr>
   126fa:	c82a                	sw	a0,16(sp)
   126fc:	48d2                	lw	a7,20(sp)
   126fe:	e119                	bnez	a0,12704 <_vfprintf_r+0x69c>
   12700:	25c0106f          	j	1395c <_vfprintf_r+0x18f4>
   12704:	47c2                	lw	a5,16(sp)
   12706:	0a714703          	lbu	a4,167(sp)
   1270a:	ca62                	sw	s8,20(sp)
   1270c:	41a78b33          	sub	s6,a5,s10
   12710:	fffb4693          	not	a3,s6
   12714:	86fd                	srai	a3,a3,0x1f
   12716:	c802                	sw	zero,16(sp)
   12718:	d402                	sw	zero,40(sp)
   1271a:	d202                	sw	zero,36(sp)
   1271c:	ce02                	sw	zero,28(sp)
   1271e:	00db7db3          	and	s11,s6,a3
   12722:	4a81                	li	s5,0
   12724:	ca0718e3          	bnez	a4,123d4 <_vfprintf_r+0x36c>
   12728:	b4e9                	j	121f2 <_vfprintf_r+0x18a>
   1272a:	1e0d98e3          	bnez	s11,1311a <_vfprintf_r+0x10b2>
   1272e:	47a5                	li	a5,9
   12730:	1f67e5e3          	bltu	a5,s6,1311a <_vfprintf_r+0x10b2>
   12734:	030b0b13          	addi	s6,s6,48
   12738:	196107a3          	sb	s6,399(sp)
   1273c:	8cf6                	mv	s9,t4
   1273e:	4b05                	li	s6,1
   12740:	18f10d13          	addi	s10,sp,399
   12744:	b9a5                	j	123bc <_vfprintf_r+0x354>
   12746:	47d2                	lw	a5,20(sp)
   12748:	0007ab83          	lw	s7,0(a5)
   1274c:	0791                	addi	a5,a5,4
   1274e:	660bd163          	bgez	s7,12db0 <_vfprintf_r+0xd48>
   12752:	41700bb3          	neg	s7,s7
   12756:	ca3e                	sw	a5,20(sp)
   12758:	00094883          	lbu	a7,0(s2)
   1275c:	004cec93          	ori	s9,s9,4
   12760:	bc25                	j	12198 <_vfprintf_r+0x130>
   12762:	02b00793          	li	a5,43
   12766:	00094883          	lbu	a7,0(s2)
   1276a:	0af103a3          	sb	a5,167(sp)
   1276e:	b42d                	j	12198 <_vfprintf_r+0x130>
   12770:	00094883          	lbu	a7,0(s2)
   12774:	080cec93          	ori	s9,s9,128
   12778:	b405                	j	12198 <_vfprintf_r+0x130>
   1277a:	00094883          	lbu	a7,0(s2)
   1277e:	02a00793          	li	a5,42
   12782:	00190693          	addi	a3,s2,1
   12786:	00f89463          	bne	a7,a5,1278e <_vfprintf_r+0x726>
   1278a:	44c0106f          	j	13bd6 <_vfprintf_r+0x1b6e>
   1278e:	fd088793          	addi	a5,a7,-48
   12792:	4725                	li	a4,9
   12794:	4a81                	li	s5,0
   12796:	4625                	li	a2,9
   12798:	02f76063          	bltu	a4,a5,127b8 <_vfprintf_r+0x750>
   1279c:	0006c883          	lbu	a7,0(a3)
   127a0:	002a9713          	slli	a4,s5,0x2
   127a4:	9aba                	add	s5,s5,a4
   127a6:	0a86                	slli	s5,s5,0x1
   127a8:	9abe                	add	s5,s5,a5
   127aa:	fd088793          	addi	a5,a7,-48
   127ae:	0685                	addi	a3,a3,1
   127b0:	fef676e3          	bgeu	a2,a5,1279c <_vfprintf_r+0x734>
   127b4:	680ac963          	bltz	s5,12e46 <_vfprintf_r+0xdde>
   127b8:	8936                	mv	s2,a3
   127ba:	b2c5                	j	1219a <_vfprintf_r+0x132>
   127bc:	00094883          	lbu	a7,0(s2)
   127c0:	001cec93          	ori	s9,s9,1
   127c4:	bad1                	j	12198 <_vfprintf_r+0x130>
   127c6:	0a714783          	lbu	a5,167(sp)
   127ca:	00094883          	lbu	a7,0(s2)
   127ce:	9c0795e3          	bnez	a5,12198 <_vfprintf_r+0x130>
   127d2:	02000793          	li	a5,32
   127d6:	0af103a3          	sb	a5,167(sp)
   127da:	ba7d                	j	12198 <_vfprintf_r+0x130>
   127dc:	010cee93          	ori	t4,s9,16
   127e0:	020ef793          	andi	a5,t4,32
   127e4:	58078a63          	beqz	a5,12d78 <_vfprintf_r+0xd10>
   127e8:	47d2                	lw	a5,20(sp)
   127ea:	00778c13          	addi	s8,a5,7
   127ee:	ff8c7c13          	andi	s8,s8,-8
   127f2:	008c0793          	addi	a5,s8,8
   127f6:	ca3e                	sw	a5,20(sp)
   127f8:	000c2b03          	lw	s6,0(s8)
   127fc:	004c2d83          	lw	s11,4(s8)
   12800:	4785                	li	a5,1
   12802:	b101                	j	12402 <_vfprintf_r+0x39a>
   12804:	00094883          	lbu	a7,0(s2)
   12808:	008cec93          	ori	s9,s9,8
   1280c:	b271                	j	12198 <_vfprintf_r+0x130>
   1280e:	4752                	lw	a4,20(sp)
   12810:	67a1                	lui	a5,0x8
   12812:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   12816:	0af11423          	sh	a5,168(sp)
   1281a:	00470793          	addi	a5,a4,4
   1281e:	ca3e                	sw	a5,20(sp)
   12820:	67ed                	lui	a5,0x1b
   12822:	b7878793          	addi	a5,a5,-1160 # 1ab78 <__clzsi2+0x10a>
   12826:	da3e                	sw	a5,52(sp)
   12828:	00072b03          	lw	s6,0(a4)
   1282c:	4d81                	li	s11,0
   1282e:	002cee93          	ori	t4,s9,2
   12832:	4789                	li	a5,2
   12834:	07800893          	li	a7,120
   12838:	b6e9                	j	12402 <_vfprintf_r+0x39a>
   1283a:	020cf793          	andi	a5,s9,32
   1283e:	5c078463          	beqz	a5,12e06 <_vfprintf_r+0xd9e>
   12842:	47d2                	lw	a5,20(sp)
   12844:	46b2                	lw	a3,12(sp)
   12846:	439c                	lw	a5,0(a5)
   12848:	41f6d713          	srai	a4,a3,0x1f
   1284c:	c394                	sw	a3,0(a5)
   1284e:	c3d8                	sw	a4,4(a5)
   12850:	47d2                	lw	a5,20(sp)
   12852:	8d4a                	mv	s10,s2
   12854:	0791                	addi	a5,a5,4
   12856:	ca3e                	sw	a5,20(sp)
   12858:	bcb1                	j	122b4 <_vfprintf_r+0x24c>
   1285a:	00094883          	lbu	a7,0(s2)
   1285e:	06c00793          	li	a5,108
   12862:	64f88b63          	beq	a7,a5,12eb8 <_vfprintf_r+0xe50>
   12866:	010cec93          	ori	s9,s9,16
   1286a:	b23d                	j	12198 <_vfprintf_r+0x130>
   1286c:	00094883          	lbu	a7,0(s2)
   12870:	06800793          	li	a5,104
   12874:	62f88b63          	beq	a7,a5,12eaa <_vfprintf_r+0xe42>
   12878:	040cec93          	ori	s9,s9,64
   1287c:	ba31                	j	12198 <_vfprintf_r+0x130>
   1287e:	06500713          	li	a4,101
   12882:	cb175ce3          	bge	a4,a7,1253a <_vfprintf_r+0x4d2>
   12886:	474e                	lw	a4,208(sp)
   12888:	010c                	addi	a1,sp,128
   1288a:	0908                	addi	a0,sp,144
   1288c:	c93a                	sw	a4,144(sp)
   1288e:	475e                	lw	a4,212(sp)
   12890:	dc32                	sw	a2,56(sp)
   12892:	c102                	sw	zero,128(sp)
   12894:	cb3a                	sw	a4,148(sp)
   12896:	476e                	lw	a4,216(sp)
   12898:	c302                	sw	zero,132(sp)
   1289a:	c502                	sw	zero,136(sp)
   1289c:	cd3a                	sw	a4,152(sp)
   1289e:	477e                	lw	a4,220(sp)
   128a0:	c702                	sw	zero,140(sp)
   128a2:	cf3a                	sw	a4,156(sp)
   128a4:	55b050ef          	jal	185fe <__eqtf2>
   128a8:	5662                	lw	a2,56(sp)
   128aa:	36051363          	bnez	a0,12c10 <_vfprintf_r+0xba8>
   128ae:	47ae                	lw	a5,200(sp)
   128b0:	676d                	lui	a4,0x1b
   128b2:	ba870713          	addi	a4,a4,-1112 # 1aba8 <__clzsi2+0x13a>
   128b6:	c018                	sw	a4,0(s0)
   128b8:	0605                	addi	a2,a2,1
   128ba:	4705                	li	a4,1
   128bc:	0785                	addi	a5,a5,1
   128be:	c058                	sw	a4,4(s0)
   128c0:	c7b2                	sw	a2,204(sp)
   128c2:	c5be                	sw	a5,200(sp)
   128c4:	471d                	li	a4,7
   128c6:	0421                	addi	s0,s0,8
   128c8:	16f74de3          	blt	a4,a5,13242 <_vfprintf_r+0x11da>
   128cc:	57ba                	lw	a5,172(sp)
   128ce:	5702                	lw	a4,32(sp)
   128d0:	4ce7db63          	bge	a5,a4,12da6 <_vfprintf_r+0xd3e>
   128d4:	57c2                	lw	a5,48(sp)
   128d6:	5732                	lw	a4,44(sp)
   128d8:	0421                	addi	s0,s0,8
   128da:	fef42c23          	sw	a5,-8(s0)
   128de:	47ae                	lw	a5,200(sp)
   128e0:	963a                	add	a2,a2,a4
   128e2:	fee42e23          	sw	a4,-4(s0)
   128e6:	0785                	addi	a5,a5,1
   128e8:	c7b2                	sw	a2,204(sp)
   128ea:	c5be                	sw	a5,200(sp)
   128ec:	471d                	li	a4,7
   128ee:	5cf74c63          	blt	a4,a5,12ec6 <_vfprintf_r+0xe5e>
   128f2:	5782                	lw	a5,32(sp)
   128f4:	fff78a93          	addi	s5,a5,-1
   128f8:	995054e3          	blez	s5,12280 <_vfprintf_r+0x218>
   128fc:	686d                	lui	a6,0x1b
   128fe:	ee480813          	addi	a6,a6,-284 # 1aee4 <zeroes.0>
   12902:	4741                	li	a4,16
   12904:	47ae                	lw	a5,200(sp)
   12906:	4b41                	li	s6,16
   12908:	4c1d                	li	s8,7
   1290a:	8d42                	mv	s10,a6
   1290c:	01574763          	blt	a4,s5,1291a <_vfprintf_r+0x8b2>
   12910:	14b0006f          	j	1325a <_vfprintf_r+0x11f2>
   12914:	1ac1                	addi	s5,s5,-16
   12916:	155b51e3          	bge	s6,s5,13258 <_vfprintf_r+0x11f0>
   1291a:	0641                	addi	a2,a2,16
   1291c:	0785                	addi	a5,a5,1
   1291e:	01a42023          	sw	s10,0(s0)
   12922:	01642223          	sw	s6,4(s0)
   12926:	c7b2                	sw	a2,204(sp)
   12928:	c5be                	sw	a5,200(sp)
   1292a:	0421                	addi	s0,s0,8
   1292c:	fefc54e3          	bge	s8,a5,12914 <_vfprintf_r+0x8ac>
   12930:	4522                	lw	a0,8(sp)
   12932:	01d0                	addi	a2,sp,196
   12934:	85a6                	mv	a1,s1
   12936:	37c010ef          	jal	13cb2 <__sprint_r>
   1293a:	18051563          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   1293e:	463e                	lw	a2,204(sp)
   12940:	47ae                	lw	a5,200(sp)
   12942:	844e                	mv	s0,s3
   12944:	bfc1                	j	12914 <_vfprintf_r+0x8ac>
   12946:	4705                	li	a4,1
   12948:	00e79463          	bne	a5,a4,12950 <_vfprintf_r+0x8e8>
   1294c:	0f20106f          	j	13a3e <_vfprintf_r+0x19d6>
   12950:	4709                	li	a4,2
   12952:	8ee6                	mv	t4,s9
   12954:	cee79de3          	bne	a5,a4,1264e <_vfprintf_r+0x5e6>
   12958:	56d2                	lw	a3,52(sp)
   1295a:	19010d13          	addi	s10,sp,400
   1295e:	00fb7793          	andi	a5,s6,15
   12962:	97b6                	add	a5,a5,a3
   12964:	0007c703          	lbu	a4,0(a5)
   12968:	004b5b13          	srli	s6,s6,0x4
   1296c:	01cd9793          	slli	a5,s11,0x1c
   12970:	0167eb33          	or	s6,a5,s6
   12974:	004ddd93          	srli	s11,s11,0x4
   12978:	feed0fa3          	sb	a4,-1(s10)
   1297c:	01bb67b3          	or	a5,s6,s11
   12980:	1d7d                	addi	s10,s10,-1
   12982:	fff1                	bnez	a5,1295e <_vfprintf_r+0x8f6>
   12984:	0b1c                	addi	a5,sp,400
   12986:	41a78b33          	sub	s6,a5,s10
   1298a:	8cf6                	mv	s9,t4
   1298c:	bc05                	j	123bc <_vfprintf_r+0x354>
   1298e:	41bb8c33          	sub	s8,s7,s11
   12992:	8d8052e3          	blez	s8,12256 <_vfprintf_r+0x1ee>
   12996:	686d                	lui	a6,0x1b
   12998:	4541                	li	a0,16
   1299a:	45ae                	lw	a1,200(sp)
   1299c:	ee480813          	addi	a6,a6,-284 # 1aee4 <zeroes.0>
   129a0:	05855f63          	bge	a0,s8,129fe <_vfprintf_r+0x996>
   129a4:	dc4a                	sw	s2,56(sp)
   129a6:	87a2                	mv	a5,s0
   129a8:	4ec1                	li	t4,16
   129aa:	8462                	mv	s0,s8
   129ac:	4f9d                	li	t6,7
   129ae:	8c5a                	mv	s8,s6
   129b0:	8942                	mv	s2,a6
   129b2:	8b56                	mv	s6,s5
   129b4:	8ac6                	mv	s5,a7
   129b6:	a021                	j	129be <_vfprintf_r+0x956>
   129b8:	1441                	addi	s0,s0,-16
   129ba:	028edb63          	bge	t4,s0,129f0 <_vfprintf_r+0x988>
   129be:	0641                	addi	a2,a2,16
   129c0:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   129c2:	0127a023          	sw	s2,0(a5)
   129c6:	01d7a223          	sw	t4,4(a5)
   129ca:	c7b2                	sw	a2,204(sp)
   129cc:	c5ae                	sw	a1,200(sp)
   129ce:	07a1                	addi	a5,a5,8
   129d0:	febfd4e3          	bge	t6,a1,129b8 <_vfprintf_r+0x950>
   129d4:	4522                	lw	a0,8(sp)
   129d6:	01d0                	addi	a2,sp,196
   129d8:	85a6                	mv	a1,s1
   129da:	2d8010ef          	jal	13cb2 <__sprint_r>
   129de:	e17d                	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   129e0:	4ec1                	li	t4,16
   129e2:	1441                	addi	s0,s0,-16
   129e4:	463e                	lw	a2,204(sp)
   129e6:	45ae                	lw	a1,200(sp)
   129e8:	87ce                	mv	a5,s3
   129ea:	4f9d                	li	t6,7
   129ec:	fc8ec9e3          	blt	t4,s0,129be <_vfprintf_r+0x956>
   129f0:	884a                	mv	a6,s2
   129f2:	5962                	lw	s2,56(sp)
   129f4:	88d6                	mv	a7,s5
   129f6:	8ada                	mv	s5,s6
   129f8:	8b62                	mv	s6,s8
   129fa:	8c22                	mv	s8,s0
   129fc:	843e                	mv	s0,a5
   129fe:	9662                	add	a2,a2,s8
   12a00:	0585                	addi	a1,a1,1
   12a02:	01042023          	sw	a6,0(s0)
   12a06:	01842223          	sw	s8,4(s0)
   12a0a:	c7b2                	sw	a2,204(sp)
   12a0c:	c5ae                	sw	a1,200(sp)
   12a0e:	471d                	li	a4,7
   12a10:	0421                	addi	s0,s0,8
   12a12:	84b752e3          	bge	a4,a1,12256 <_vfprintf_r+0x1ee>
   12a16:	4522                	lw	a0,8(sp)
   12a18:	01d0                	addi	a2,sp,196
   12a1a:	85a6                	mv	a1,s1
   12a1c:	dc46                	sw	a7,56(sp)
   12a1e:	294010ef          	jal	13cb2 <__sprint_r>
   12a22:	e14d                	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12a24:	463e                	lw	a2,204(sp)
   12a26:	58e2                	lw	a7,56(sp)
   12a28:	844e                	mv	s0,s3
   12a2a:	82dff06f          	j	12256 <_vfprintf_r+0x1ee>
   12a2e:	686d                	lui	a6,0x1b
   12a30:	4741                	li	a4,16
   12a32:	45ae                	lw	a1,200(sp)
   12a34:	ee480813          	addi	a6,a6,-284 # 1aee4 <zeroes.0>
   12a38:	05575763          	bge	a4,s5,12a86 <_vfprintf_r+0xa1e>
   12a3c:	87a2                	mv	a5,s0
   12a3e:	4741                	li	a4,16
   12a40:	8456                	mv	s0,s5
   12a42:	4c1d                	li	s8,7
   12a44:	dc46                	sw	a7,56(sp)
   12a46:	8ad2                	mv	s5,s4
   12a48:	a021                	j	12a50 <_vfprintf_r+0x9e8>
   12a4a:	1441                	addi	s0,s0,-16
   12a4c:	02875963          	bge	a4,s0,12a7e <_vfprintf_r+0xa16>
   12a50:	0641                	addi	a2,a2,16
   12a52:	0585                	addi	a1,a1,1
   12a54:	0147a023          	sw	s4,0(a5)
   12a58:	c3d8                	sw	a4,4(a5)
   12a5a:	c7b2                	sw	a2,204(sp)
   12a5c:	c5ae                	sw	a1,200(sp)
   12a5e:	07a1                	addi	a5,a5,8
   12a60:	febc55e3          	bge	s8,a1,12a4a <_vfprintf_r+0x9e2>
   12a64:	4522                	lw	a0,8(sp)
   12a66:	01d0                	addi	a2,sp,196
   12a68:	85a6                	mv	a1,s1
   12a6a:	248010ef          	jal	13cb2 <__sprint_r>
   12a6e:	e939                	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12a70:	4741                	li	a4,16
   12a72:	1441                	addi	s0,s0,-16
   12a74:	463e                	lw	a2,204(sp)
   12a76:	45ae                	lw	a1,200(sp)
   12a78:	87ce                	mv	a5,s3
   12a7a:	fc874be3          	blt	a4,s0,12a50 <_vfprintf_r+0x9e8>
   12a7e:	58e2                	lw	a7,56(sp)
   12a80:	8856                	mv	a6,s5
   12a82:	8aa2                	mv	s5,s0
   12a84:	843e                	mv	s0,a5
   12a86:	9656                	add	a2,a2,s5
   12a88:	0585                	addi	a1,a1,1
   12a8a:	01042023          	sw	a6,0(s0)
   12a8e:	01542223          	sw	s5,4(s0)
   12a92:	c7b2                	sw	a2,204(sp)
   12a94:	c5ae                	sw	a1,200(sp)
   12a96:	471d                	li	a4,7
   12a98:	0421                	addi	s0,s0,8
   12a9a:	fcb75263          	bge	a4,a1,1225e <_vfprintf_r+0x1f6>
   12a9e:	4522                	lw	a0,8(sp)
   12aa0:	01d0                	addi	a2,sp,196
   12aa2:	85a6                	mv	a1,s1
   12aa4:	dc46                	sw	a7,56(sp)
   12aa6:	20c010ef          	jal	13cb2 <__sprint_r>
   12aaa:	ed09                	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12aac:	463e                	lw	a2,204(sp)
   12aae:	58e2                	lw	a7,56(sp)
   12ab0:	844e                	mv	s0,s3
   12ab2:	facff06f          	j	1225e <_vfprintf_r+0x1f6>
   12ab6:	4522                	lw	a0,8(sp)
   12ab8:	01d0                	addi	a2,sp,196
   12aba:	85a6                	mv	a1,s1
   12abc:	1f6010ef          	jal	13cb2 <__sprint_r>
   12ac0:	fe050163          	beqz	a0,122a2 <_vfprintf_r+0x23a>
   12ac4:	45c2                	lw	a1,16(sp)
   12ac6:	fe058f63          	beqz	a1,122c4 <_vfprintf_r+0x25c>
   12aca:	4522                	lw	a0,8(sp)
   12acc:	dd3fe0ef          	jal	1189e <_free_r>
   12ad0:	ff4ff06f          	j	122c4 <_vfprintf_r+0x25c>
   12ad4:	8ee6                	mv	t4,s9
   12ad6:	b6b5                	j	12642 <_vfprintf_r+0x5da>
   12ad8:	686d                	lui	a6,0x1b
   12ada:	4541                	li	a0,16
   12adc:	45ae                	lw	a1,200(sp)
   12ade:	ef480c13          	addi	s8,a6,-268 # 1aef4 <blanks.1>
   12ae2:	06e55363          	bge	a0,a4,12b48 <_vfprintf_r+0xae0>
   12ae6:	c8ca                	sw	s2,80(sp)
   12ae8:	87a2                	mv	a5,s0
   12aea:	8962                	mv	s2,s8
   12aec:	4ec1                	li	t4,16
   12aee:	8c5a                	mv	s8,s6
   12af0:	439d                	li	t2,7
   12af2:	8b56                	mv	s6,s5
   12af4:	dc16                	sw	t0,56(sp)
   12af6:	c6fe                	sw	t6,76(sp)
   12af8:	843a                	mv	s0,a4
   12afa:	8ac6                	mv	s5,a7
   12afc:	a021                	j	12b04 <_vfprintf_r+0xa9c>
   12afe:	1441                	addi	s0,s0,-16
   12b00:	028edb63          	bge	t4,s0,12b36 <_vfprintf_r+0xace>
   12b04:	0641                	addi	a2,a2,16
   12b06:	0585                	addi	a1,a1,1
   12b08:	0127a023          	sw	s2,0(a5)
   12b0c:	01d7a223          	sw	t4,4(a5)
   12b10:	c7b2                	sw	a2,204(sp)
   12b12:	c5ae                	sw	a1,200(sp)
   12b14:	07a1                	addi	a5,a5,8
   12b16:	feb3d4e3          	bge	t2,a1,12afe <_vfprintf_r+0xa96>
   12b1a:	4522                	lw	a0,8(sp)
   12b1c:	01d0                	addi	a2,sp,196
   12b1e:	85a6                	mv	a1,s1
   12b20:	192010ef          	jal	13cb2 <__sprint_r>
   12b24:	f145                	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12b26:	4ec1                	li	t4,16
   12b28:	1441                	addi	s0,s0,-16
   12b2a:	463e                	lw	a2,204(sp)
   12b2c:	45ae                	lw	a1,200(sp)
   12b2e:	87ce                	mv	a5,s3
   12b30:	439d                	li	t2,7
   12b32:	fc8ec9e3          	blt	t4,s0,12b04 <_vfprintf_r+0xa9c>
   12b36:	88d6                	mv	a7,s5
   12b38:	52e2                	lw	t0,56(sp)
   12b3a:	8ada                	mv	s5,s6
   12b3c:	4fb6                	lw	t6,76(sp)
   12b3e:	8b62                	mv	s6,s8
   12b40:	8c4a                	mv	s8,s2
   12b42:	4946                	lw	s2,80(sp)
   12b44:	8722                	mv	a4,s0
   12b46:	843e                	mv	s0,a5
   12b48:	963a                	add	a2,a2,a4
   12b4a:	0585                	addi	a1,a1,1
   12b4c:	c058                	sw	a4,4(s0)
   12b4e:	01842023          	sw	s8,0(s0)
   12b52:	c7b2                	sw	a2,204(sp)
   12b54:	c5ae                	sw	a1,200(sp)
   12b56:	471d                	li	a4,7
   12b58:	0421                	addi	s0,s0,8
   12b5a:	eab75a63          	bge	a4,a1,1220e <_vfprintf_r+0x1a6>
   12b5e:	4522                	lw	a0,8(sp)
   12b60:	01d0                	addi	a2,sp,196
   12b62:	85a6                	mv	a1,s1
   12b64:	c8c6                	sw	a7,80(sp)
   12b66:	c6fe                	sw	t6,76(sp)
   12b68:	dc16                	sw	t0,56(sp)
   12b6a:	148010ef          	jal	13cb2 <__sprint_r>
   12b6e:	f939                	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12b70:	463e                	lw	a2,204(sp)
   12b72:	48c6                	lw	a7,80(sp)
   12b74:	4fb6                	lw	t6,76(sp)
   12b76:	52e2                	lw	t0,56(sp)
   12b78:	844e                	mv	s0,s3
   12b7a:	e94ff06f          	j	1220e <_vfprintf_r+0x1a6>
   12b7e:	4522                	lw	a0,8(sp)
   12b80:	01d0                	addi	a2,sp,196
   12b82:	85a6                	mv	a1,s1
   12b84:	c6c6                	sw	a7,76(sp)
   12b86:	dc7e                	sw	t6,56(sp)
   12b88:	12a010ef          	jal	13cb2 <__sprint_r>
   12b8c:	fd05                	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12b8e:	463e                	lw	a2,204(sp)
   12b90:	48b6                	lw	a7,76(sp)
   12b92:	5fe2                	lw	t6,56(sp)
   12b94:	844e                	mv	s0,s3
   12b96:	eb8ff06f          	j	1224e <_vfprintf_r+0x1e6>
   12b9a:	686d                	lui	a6,0x1b
   12b9c:	4741                	li	a4,16
   12b9e:	47ae                	lw	a5,200(sp)
   12ba0:	ef480c13          	addi	s8,a6,-268 # 1aef4 <blanks.1>
   12ba4:	05575163          	bge	a4,s5,12be6 <_vfprintf_r+0xb7e>
   12ba8:	4d22                	lw	s10,8(sp)
   12baa:	4b41                	li	s6,16
   12bac:	4c9d                	li	s9,7
   12bae:	a021                	j	12bb6 <_vfprintf_r+0xb4e>
   12bb0:	1ac1                	addi	s5,s5,-16
   12bb2:	035b5a63          	bge	s6,s5,12be6 <_vfprintf_r+0xb7e>
   12bb6:	0641                	addi	a2,a2,16
   12bb8:	0785                	addi	a5,a5,1
   12bba:	01842023          	sw	s8,0(s0)
   12bbe:	01642223          	sw	s6,4(s0)
   12bc2:	c7b2                	sw	a2,204(sp)
   12bc4:	c5be                	sw	a5,200(sp)
   12bc6:	0421                	addi	s0,s0,8
   12bc8:	fefcd4e3          	bge	s9,a5,12bb0 <_vfprintf_r+0xb48>
   12bcc:	01d0                	addi	a2,sp,196
   12bce:	85a6                	mv	a1,s1
   12bd0:	856a                	mv	a0,s10
   12bd2:	0e0010ef          	jal	13cb2 <__sprint_r>
   12bd6:	ee0517e3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12bda:	1ac1                	addi	s5,s5,-16
   12bdc:	463e                	lw	a2,204(sp)
   12bde:	47ae                	lw	a5,200(sp)
   12be0:	844e                	mv	s0,s3
   12be2:	fd5b4ae3          	blt	s6,s5,12bb6 <_vfprintf_r+0xb4e>
   12be6:	9656                	add	a2,a2,s5
   12be8:	0785                	addi	a5,a5,1
   12bea:	01842023          	sw	s8,0(s0)
   12bee:	01542223          	sw	s5,4(s0)
   12bf2:	c7b2                	sw	a2,204(sp)
   12bf4:	c5be                	sw	a5,200(sp)
   12bf6:	471d                	li	a4,7
   12bf8:	e8f75c63          	bge	a4,a5,12290 <_vfprintf_r+0x228>
   12bfc:	4522                	lw	a0,8(sp)
   12bfe:	01d0                	addi	a2,sp,196
   12c00:	85a6                	mv	a1,s1
   12c02:	0b0010ef          	jal	13cb2 <__sprint_r>
   12c06:	ea051fe3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12c0a:	463e                	lw	a2,204(sp)
   12c0c:	e84ff06f          	j	12290 <_vfprintf_r+0x228>
   12c10:	553a                	lw	a0,172(sp)
   12c12:	5ca05e63          	blez	a0,131ee <_vfprintf_r+0x1186>
   12c16:	47f2                	lw	a5,28(sp)
   12c18:	5702                	lw	a4,32(sp)
   12c1a:	8abe                	mv	s5,a5
   12c1c:	22f74163          	blt	a4,a5,12e3e <_vfprintf_r+0xdd6>
   12c20:	01505f63          	blez	s5,12c3e <_vfprintf_r+0xbd6>
   12c24:	472e                	lw	a4,200(sp)
   12c26:	9656                	add	a2,a2,s5
   12c28:	01a42023          	sw	s10,0(s0)
   12c2c:	0705                	addi	a4,a4,1
   12c2e:	01542223          	sw	s5,4(s0)
   12c32:	c7b2                	sw	a2,204(sp)
   12c34:	c5ba                	sw	a4,200(sp)
   12c36:	459d                	li	a1,7
   12c38:	0421                	addi	s0,s0,8
   12c3a:	14e5c5e3          	blt	a1,a4,13584 <_vfprintf_r+0x151c>
   12c3e:	fffac713          	not	a4,s5
   12c42:	47f2                	lw	a5,28(sp)
   12c44:	877d                	srai	a4,a4,0x1f
   12c46:	00eafab3          	and	s5,s5,a4
   12c4a:	41578ab3          	sub	s5,a5,s5
   12c4e:	2b504163          	bgtz	s5,12ef0 <_vfprintf_r+0xe88>
   12c52:	47f2                	lw	a5,28(sp)
   12c54:	400cf713          	andi	a4,s9,1024
   12c58:	00fd0c33          	add	s8,s10,a5
   12c5c:	7a071e63          	bnez	a4,13418 <_vfprintf_r+0x13b0>
   12c60:	5aba                	lw	s5,172(sp)
   12c62:	5782                	lw	a5,32(sp)
   12c64:	2cfaca63          	blt	s5,a5,12f38 <_vfprintf_r+0xed0>
   12c68:	001cf713          	andi	a4,s9,1
   12c6c:	2c071663          	bnez	a4,12f38 <_vfprintf_r+0xed0>
   12c70:	5702                	lw	a4,32(sp)
   12c72:	00ed07b3          	add	a5,s10,a4
   12c76:	41570ab3          	sub	s5,a4,s5
   12c7a:	41878b33          	sub	s6,a5,s8
   12c7e:	016ad363          	bge	s5,s6,12c84 <_vfprintf_r+0xc1c>
   12c82:	8b56                	mv	s6,s5
   12c84:	01605f63          	blez	s6,12ca2 <_vfprintf_r+0xc3a>
   12c88:	47ae                	lw	a5,200(sp)
   12c8a:	965a                	add	a2,a2,s6
   12c8c:	01842023          	sw	s8,0(s0)
   12c90:	0785                	addi	a5,a5,1
   12c92:	01642223          	sw	s6,4(s0)
   12c96:	c7b2                	sw	a2,204(sp)
   12c98:	c5be                	sw	a5,200(sp)
   12c9a:	471d                	li	a4,7
   12c9c:	0421                	addi	s0,s0,8
   12c9e:	4cf74de3          	blt	a4,a5,13978 <_vfprintf_r+0x1910>
   12ca2:	fffb4793          	not	a5,s6
   12ca6:	87fd                	srai	a5,a5,0x1f
   12ca8:	00fb7b33          	and	s6,s6,a5
   12cac:	416a8ab3          	sub	s5,s5,s6
   12cb0:	dd505863          	blez	s5,12280 <_vfprintf_r+0x218>
   12cb4:	686d                	lui	a6,0x1b
   12cb6:	ee480813          	addi	a6,a6,-284 # 1aee4 <zeroes.0>
   12cba:	4741                	li	a4,16
   12cbc:	47ae                	lw	a5,200(sp)
   12cbe:	4b41                	li	s6,16
   12cc0:	4c1d                	li	s8,7
   12cc2:	8d42                	mv	s10,a6
   12cc4:	01574663          	blt	a4,s5,12cd0 <_vfprintf_r+0xc68>
   12cc8:	ab49                	j	1325a <_vfprintf_r+0x11f2>
   12cca:	1ac1                	addi	s5,s5,-16
   12ccc:	595b5663          	bge	s6,s5,13258 <_vfprintf_r+0x11f0>
   12cd0:	0641                	addi	a2,a2,16
   12cd2:	0785                	addi	a5,a5,1
   12cd4:	01a42023          	sw	s10,0(s0)
   12cd8:	01642223          	sw	s6,4(s0)
   12cdc:	c7b2                	sw	a2,204(sp)
   12cde:	c5be                	sw	a5,200(sp)
   12ce0:	0421                	addi	s0,s0,8
   12ce2:	fefc54e3          	bge	s8,a5,12cca <_vfprintf_r+0xc62>
   12ce6:	4522                	lw	a0,8(sp)
   12ce8:	01d0                	addi	a2,sp,196
   12cea:	85a6                	mv	a1,s1
   12cec:	7c7000ef          	jal	13cb2 <__sprint_r>
   12cf0:	dc051ae3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12cf4:	463e                	lw	a2,204(sp)
   12cf6:	47ae                	lw	a5,200(sp)
   12cf8:	844e                	mv	s0,s3
   12cfa:	bfc1                	j	12cca <_vfprintf_r+0xc62>
   12cfc:	001cf593          	andi	a1,s9,1
   12d00:	840599e3          	bnez	a1,12552 <_vfprintf_r+0x4ea>
   12d04:	c058                	sw	a4,4(s0)
   12d06:	c7e2                	sw	s8,204(sp)
   12d08:	c5d6                	sw	s5,200(sp)
   12d0a:	479d                	li	a5,7
   12d0c:	8b57dbe3          	bge	a5,s5,125c2 <_vfprintf_r+0x55a>
   12d10:	4522                	lw	a0,8(sp)
   12d12:	01d0                	addi	a2,sp,196
   12d14:	85a6                	mv	a1,s1
   12d16:	79d000ef          	jal	13cb2 <__sprint_r>
   12d1a:	da0515e3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12d1e:	4c3e                	lw	s8,204(sp)
   12d20:	4aae                	lw	s5,200(sp)
   12d22:	8b4e                	mv	s6,s3
   12d24:	b879                	j	125c2 <_vfprintf_r+0x55a>
   12d26:	5702                	lw	a4,32(sp)
   12d28:	4785                	li	a5,1
   12d2a:	88e7dce3          	bge	a5,a4,125c2 <_vfprintf_r+0x55a>
   12d2e:	686d                	lui	a6,0x1b
   12d30:	47c5                	li	a5,17
   12d32:	ee480813          	addi	a6,a6,-284 # 1aee4 <zeroes.0>
   12d36:	60e7d863          	bge	a5,a4,13346 <_vfprintf_r+0x12de>
   12d3a:	ce4a                	sw	s2,28(sp)
   12d3c:	47c1                	li	a5,16
   12d3e:	4d1d                	li	s10,7
   12d40:	8942                	mv	s2,a6
   12d42:	a021                	j	12d4a <_vfprintf_r+0xce2>
   12d44:	1441                	addi	s0,s0,-16
   12d46:	5e87de63          	bge	a5,s0,13342 <_vfprintf_r+0x12da>
   12d4a:	0c41                	addi	s8,s8,16
   12d4c:	0a85                	addi	s5,s5,1
   12d4e:	012b2023          	sw	s2,0(s6)
   12d52:	00fb2223          	sw	a5,4(s6)
   12d56:	c7e2                	sw	s8,204(sp)
   12d58:	c5d6                	sw	s5,200(sp)
   12d5a:	0b21                	addi	s6,s6,8
   12d5c:	ff5d54e3          	bge	s10,s5,12d44 <_vfprintf_r+0xcdc>
   12d60:	4522                	lw	a0,8(sp)
   12d62:	01d0                	addi	a2,sp,196
   12d64:	85a6                	mv	a1,s1
   12d66:	74d000ef          	jal	13cb2 <__sprint_r>
   12d6a:	d4051de3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12d6e:	4c3e                	lw	s8,204(sp)
   12d70:	4aae                	lw	s5,200(sp)
   12d72:	8b4e                	mv	s6,s3
   12d74:	47c1                	li	a5,16
   12d76:	b7f9                	j	12d44 <_vfprintf_r+0xcdc>
   12d78:	4752                	lw	a4,20(sp)
   12d7a:	010ef793          	andi	a5,t4,16
   12d7e:	00072b03          	lw	s6,0(a4)
   12d82:	0711                	addi	a4,a4,4
   12d84:	ca3a                	sw	a4,20(sp)
   12d86:	ef9d                	bnez	a5,12dc4 <_vfprintf_r+0xd5c>
   12d88:	040ef793          	andi	a5,t4,64
   12d8c:	c79d                	beqz	a5,12dba <_vfprintf_r+0xd52>
   12d8e:	0b42                	slli	s6,s6,0x10
   12d90:	010b5b13          	srli	s6,s6,0x10
   12d94:	4d81                	li	s11,0
   12d96:	4785                	li	a5,1
   12d98:	e6aff06f          	j	12402 <_vfprintf_r+0x39a>
   12d9c:	4b01                	li	s6,0
   12d9e:	19010d13          	addi	s10,sp,400
   12da2:	e1aff06f          	j	123bc <_vfprintf_r+0x354>
   12da6:	001cf793          	andi	a5,s9,1
   12daa:	cc078b63          	beqz	a5,12280 <_vfprintf_r+0x218>
   12dae:	b61d                	j	128d4 <_vfprintf_r+0x86c>
   12db0:	00094883          	lbu	a7,0(s2)
   12db4:	ca3e                	sw	a5,20(sp)
   12db6:	be2ff06f          	j	12198 <_vfprintf_r+0x130>
   12dba:	200ef793          	andi	a5,t4,512
   12dbe:	c399                	beqz	a5,12dc4 <_vfprintf_r+0xd5c>
   12dc0:	0ffb7b13          	zext.b	s6,s6
   12dc4:	4d81                	li	s11,0
   12dc6:	4785                	li	a5,1
   12dc8:	e3aff06f          	j	12402 <_vfprintf_r+0x39a>
   12dcc:	200cf793          	andi	a5,s9,512
   12dd0:	7e079563          	bnez	a5,135ba <_vfprintf_r+0x1552>
   12dd4:	4d81                	li	s11,0
   12dd6:	e26ff06f          	j	123fc <_vfprintf_r+0x394>
   12dda:	200cf793          	andi	a5,s9,512
   12dde:	7c079663          	bnez	a5,135aa <_vfprintf_r+0x1542>
   12de2:	41fb5d93          	srai	s11,s6,0x1f
   12de6:	87ee                	mv	a5,s11
   12de8:	db2ff06f          	j	1239a <_vfprintf_r+0x332>
   12dec:	57f2                	lw	a5,60(sp)
   12dee:	00094883          	lbu	a7,0(s2)
   12df2:	ba078363          	beqz	a5,12198 <_vfprintf_r+0x130>
   12df6:	0007c783          	lbu	a5,0(a5)
   12dfa:	b8078f63          	beqz	a5,12198 <_vfprintf_r+0x130>
   12dfe:	400cec93          	ori	s9,s9,1024
   12e02:	b96ff06f          	j	12198 <_vfprintf_r+0x130>
   12e06:	010cf793          	andi	a5,s9,16
   12e0a:	4c079063          	bnez	a5,132ca <_vfprintf_r+0x1262>
   12e0e:	040cf793          	andi	a5,s9,64
   12e12:	78079563          	bnez	a5,1359c <_vfprintf_r+0x1534>
   12e16:	200cfe13          	andi	t3,s9,512
   12e1a:	4a0e0863          	beqz	t3,132ca <_vfprintf_r+0x1262>
   12e1e:	47d2                	lw	a5,20(sp)
   12e20:	4732                	lw	a4,12(sp)
   12e22:	439c                	lw	a5,0(a5)
   12e24:	00e78023          	sb	a4,0(a5)
   12e28:	b425                	j	12850 <_vfprintf_r+0x7e8>
   12e2a:	47d2                	lw	a5,20(sp)
   12e2c:	4398                	lw	a4,0(a5)
   12e2e:	0791                	addi	a5,a5,4
   12e30:	ca3e                	sw	a5,20(sp)
   12e32:	430c                	lw	a1,0(a4)
   12e34:	4350                	lw	a2,4(a4)
   12e36:	4714                	lw	a3,8(a4)
   12e38:	4758                	lw	a4,12(a4)
   12e3a:	e52ff06f          	j	1248c <_vfprintf_r+0x424>
   12e3e:	8aba                	mv	s5,a4
   12e40:	df5042e3          	bgtz	s5,12c24 <_vfprintf_r+0xbbc>
   12e44:	bbed                	j	12c3e <_vfprintf_r+0xbd6>
   12e46:	5afd                	li	s5,-1
   12e48:	8936                	mv	s2,a3
   12e4a:	b50ff06f          	j	1219a <_vfprintf_r+0x132>
   12e4e:	67ed                	lui	a5,0x1b
   12e50:	b8c78793          	addi	a5,a5,-1140 # 1ab8c <__clzsi2+0x11e>
   12e54:	da3e                	sw	a5,52(sp)
   12e56:	020cf793          	andi	a5,s9,32
   12e5a:	26078263          	beqz	a5,130be <_vfprintf_r+0x1056>
   12e5e:	47d2                	lw	a5,20(sp)
   12e60:	00778c13          	addi	s8,a5,7
   12e64:	ff8c7c13          	andi	s8,s8,-8
   12e68:	000c2b03          	lw	s6,0(s8)
   12e6c:	004c2d83          	lw	s11,4(s8)
   12e70:	008c0793          	addi	a5,s8,8
   12e74:	ca3e                	sw	a5,20(sp)
   12e76:	001cf793          	andi	a5,s9,1
   12e7a:	cf81                	beqz	a5,12e92 <_vfprintf_r+0xe2a>
   12e7c:	01bb67b3          	or	a5,s6,s11
   12e80:	cb89                	beqz	a5,12e92 <_vfprintf_r+0xe2a>
   12e82:	03000793          	li	a5,48
   12e86:	0af10423          	sb	a5,168(sp)
   12e8a:	0b1104a3          	sb	a7,169(sp)
   12e8e:	002cec93          	ori	s9,s9,2
   12e92:	bffcfe93          	andi	t4,s9,-1025
   12e96:	4789                	li	a5,2
   12e98:	d6aff06f          	j	12402 <_vfprintf_r+0x39a>
   12e9c:	8ee6                	mv	t4,s9
   12e9e:	b289                	j	127e0 <_vfprintf_r+0x778>
   12ea0:	67ed                	lui	a5,0x1b
   12ea2:	b7878793          	addi	a5,a5,-1160 # 1ab78 <__clzsi2+0x10a>
   12ea6:	da3e                	sw	a5,52(sp)
   12ea8:	b77d                	j	12e56 <_vfprintf_r+0xdee>
   12eaa:	00194883          	lbu	a7,1(s2)
   12eae:	200cec93          	ori	s9,s9,512
   12eb2:	0905                	addi	s2,s2,1
   12eb4:	ae4ff06f          	j	12198 <_vfprintf_r+0x130>
   12eb8:	00194883          	lbu	a7,1(s2)
   12ebc:	020cec93          	ori	s9,s9,32
   12ec0:	0905                	addi	s2,s2,1
   12ec2:	ad6ff06f          	j	12198 <_vfprintf_r+0x130>
   12ec6:	4522                	lw	a0,8(sp)
   12ec8:	01d0                	addi	a2,sp,196
   12eca:	85a6                	mv	a1,s1
   12ecc:	5e7000ef          	jal	13cb2 <__sprint_r>
   12ed0:	be051ae3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12ed4:	463e                	lw	a2,204(sp)
   12ed6:	844e                	mv	s0,s3
   12ed8:	bc29                	j	128f2 <_vfprintf_r+0x88a>
   12eda:	4799                	li	a5,6
   12edc:	8b56                	mv	s6,s5
   12ede:	6b57ed63          	bltu	a5,s5,13598 <_vfprintf_r+0x1530>
   12ee2:	67ed                	lui	a5,0x1b
   12ee4:	8dda                	mv	s11,s6
   12ee6:	ca62                	sw	s8,20(sp)
   12ee8:	ba078d13          	addi	s10,a5,-1120 # 1aba0 <__clzsi2+0x132>
   12eec:	afcff06f          	j	121e8 <_vfprintf_r+0x180>
   12ef0:	686d                	lui	a6,0x1b
   12ef2:	45c1                	li	a1,16
   12ef4:	472e                	lw	a4,200(sp)
   12ef6:	ee480813          	addi	a6,a6,-284 # 1aee4 <zeroes.0>
   12efa:	4755db63          	bge	a1,s5,13370 <_vfprintf_r+0x1308>
   12efe:	87a2                	mv	a5,s0
   12f00:	4c41                	li	s8,16
   12f02:	4b1d                	li	s6,7
   12f04:	8442                	mv	s0,a6
   12f06:	a021                	j	12f0e <_vfprintf_r+0xea6>
   12f08:	1ac1                	addi	s5,s5,-16
   12f0a:	475c5163          	bge	s8,s5,1336c <_vfprintf_r+0x1304>
   12f0e:	0641                	addi	a2,a2,16
   12f10:	0705                	addi	a4,a4,1
   12f12:	c380                	sw	s0,0(a5)
   12f14:	0187a223          	sw	s8,4(a5)
   12f18:	c7b2                	sw	a2,204(sp)
   12f1a:	c5ba                	sw	a4,200(sp)
   12f1c:	07a1                	addi	a5,a5,8
   12f1e:	feeb55e3          	bge	s6,a4,12f08 <_vfprintf_r+0xea0>
   12f22:	4522                	lw	a0,8(sp)
   12f24:	01d0                	addi	a2,sp,196
   12f26:	85a6                	mv	a1,s1
   12f28:	58b000ef          	jal	13cb2 <__sprint_r>
   12f2c:	b8051ce3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12f30:	463e                	lw	a2,204(sp)
   12f32:	472e                	lw	a4,200(sp)
   12f34:	87ce                	mv	a5,s3
   12f36:	bfc9                	j	12f08 <_vfprintf_r+0xea0>
   12f38:	5742                	lw	a4,48(sp)
   12f3a:	57b2                	lw	a5,44(sp)
   12f3c:	459d                	li	a1,7
   12f3e:	c018                	sw	a4,0(s0)
   12f40:	472e                	lw	a4,200(sp)
   12f42:	963e                	add	a2,a2,a5
   12f44:	c05c                	sw	a5,4(s0)
   12f46:	0705                	addi	a4,a4,1
   12f48:	c7b2                	sw	a2,204(sp)
   12f4a:	c5ba                	sw	a4,200(sp)
   12f4c:	0421                	addi	s0,s0,8
   12f4e:	d2e5d1e3          	bge	a1,a4,12c70 <_vfprintf_r+0xc08>
   12f52:	4522                	lw	a0,8(sp)
   12f54:	01d0                	addi	a2,sp,196
   12f56:	85a6                	mv	a1,s1
   12f58:	55b000ef          	jal	13cb2 <__sprint_r>
   12f5c:	b60514e3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   12f60:	5aba                	lw	s5,172(sp)
   12f62:	463e                	lw	a2,204(sp)
   12f64:	844e                	mv	s0,s3
   12f66:	b329                	j	12c70 <_vfprintf_r+0xc08>
   12f68:	07800793          	li	a5,120
   12f6c:	03000713          	li	a4,48
   12f70:	0ae10423          	sb	a4,168(sp)
   12f74:	0af104a3          	sb	a5,169(sp)
   12f78:	06300713          	li	a4,99
   12f7c:	c802                	sw	zero,16(sp)
   12f7e:	002cec93          	ori	s9,s9,2
   12f82:	12c10d13          	addi	s10,sp,300
   12f86:	d5575c63          	bge	a4,s5,124de <_vfprintf_r+0x476>
   12f8a:	4522                	lw	a0,8(sp)
   12f8c:	001a8593          	addi	a1,s5,1
   12f90:	c846                	sw	a7,16(sp)
   12f92:	b2ffe0ef          	jal	11ac0 <_malloc_r>
   12f96:	48c2                	lw	a7,16(sp)
   12f98:	8d2a                	mv	s10,a0
   12f9a:	460502e3          	beqz	a0,13bfe <_vfprintf_r+0x1b96>
   12f9e:	c82a                	sw	a0,16(sp)
   12fa0:	d3eff06f          	j	124de <_vfprintf_r+0x476>
   12fa4:	4522                	lw	a0,8(sp)
   12fa6:	09010b13          	addi	s6,sp,144
   12faa:	1178                	addi	a4,sp,172
   12fac:	0bc10813          	addi	a6,sp,188
   12fb0:	191c                	addi	a5,sp,176
   12fb2:	86d6                	mv	a3,s5
   12fb4:	4609                	li	a2,2
   12fb6:	85da                	mv	a1,s6
   12fb8:	d446                	sw	a7,40(sp)
   12fba:	c97e                	sw	t6,144(sp)
   12fbc:	d27e                	sw	t6,36(sp)
   12fbe:	cb7a                	sw	t5,148(sp)
   12fc0:	d07a                	sw	t5,32(sp)
   12fc2:	cd76                	sw	t4,152(sp)
   12fc4:	ce76                	sw	t4,28(sp)
   12fc6:	cf62                	sw	s8,156(sp)
   12fc8:	163010ef          	jal	1492a <_ldtoa_r>
   12fcc:	001cf713          	andi	a4,s9,1
   12fd0:	4ef2                	lw	t4,28(sp)
   12fd2:	5f02                	lw	t5,32(sp)
   12fd4:	5f92                	lw	t6,36(sp)
   12fd6:	58a2                	lw	a7,40(sp)
   12fd8:	8d2a                	mv	s10,a0
   12fda:	62071163          	bnez	a4,135fc <_vfprintf_r+0x1594>
   12fde:	57ba                	lw	a5,172(sp)
   12fe0:	ce3e                	sw	a5,28(sp)
   12fe2:	57fa                	lw	a5,188(sp)
   12fe4:	8f89                	sub	a5,a5,a0
   12fe6:	d03e                	sw	a5,32(sp)
   12fe8:	47f2                	lw	a5,28(sp)
   12fea:	5775                	li	a4,-3
   12fec:	00e7c463          	blt	a5,a4,12ff4 <_vfprintf_r+0xf8c>
   12ff0:	0efadbe3          	bge	s5,a5,138e6 <_vfprintf_r+0x187e>
   12ff4:	47f2                	lw	a5,28(sp)
   12ff6:	18f9                	addi	a7,a7,-2
   12ff8:	fff78713          	addi	a4,a5,-1
   12ffc:	d73a                	sw	a4,172(sp)
   12ffe:	0ff8f693          	zext.b	a3,a7
   13002:	4601                	li	a2,0
   13004:	0ad10a23          	sb	a3,180(sp)
   13008:	02b00693          	li	a3,43
   1300c:	00075763          	bgez	a4,1301a <_vfprintf_r+0xfb2>
   13010:	47f2                	lw	a5,28(sp)
   13012:	4705                	li	a4,1
   13014:	02d00693          	li	a3,45
   13018:	8f1d                	sub	a4,a4,a5
   1301a:	0ad10aa3          	sb	a3,181(sp)
   1301e:	46a5                	li	a3,9
   13020:	2ae6d1e3          	bge	a3,a4,13ac2 <_vfprintf_r+0x1a5a>
   13024:	0c310813          	addi	a6,sp,195
   13028:	85c2                	mv	a1,a6
   1302a:	4529                	li	a0,10
   1302c:	06300f13          	li	t5,99
   13030:	02a767b3          	rem	a5,a4,a0
   13034:	862e                	mv	a2,a1
   13036:	86ba                	mv	a3,a4
   13038:	15fd                	addi	a1,a1,-1
   1303a:	03078793          	addi	a5,a5,48
   1303e:	fef60fa3          	sb	a5,-1(a2)
   13042:	02a74733          	div	a4,a4,a0
   13046:	fedf45e3          	blt	t5,a3,13030 <_vfprintf_r+0xfc8>
   1304a:	03070713          	addi	a4,a4,48
   1304e:	ffe60693          	addi	a3,a2,-2
   13052:	fee58fa3          	sb	a4,-1(a1)
   13056:	3706fce3          	bgeu	a3,a6,13bce <_vfprintf_r+0x1b66>
   1305a:	0b610713          	addi	a4,sp,182
   1305e:	0006c783          	lbu	a5,0(a3)
   13062:	0685                	addi	a3,a3,1
   13064:	0705                	addi	a4,a4,1
   13066:	fef70fa3          	sb	a5,-1(a4)
   1306a:	ff069ae3          	bne	a3,a6,1305e <_vfprintf_r+0xff6>
   1306e:	0b1c                	addi	a5,sp,400
   13070:	40c78733          	sub	a4,a5,a2
   13074:	f3770793          	addi	a5,a4,-201
   13078:	c0be                	sw	a5,64(sp)
   1307a:	5782                	lw	a5,32(sp)
   1307c:	4686                	lw	a3,64(sp)
   1307e:	4705                	li	a4,1
   13080:	00d78b33          	add	s6,a5,a3
   13084:	26f758e3          	bge	a4,a5,13af4 <_vfprintf_r+0x1a8c>
   13088:	57b2                	lw	a5,44(sp)
   1308a:	9b3e                	add	s6,s6,a5
   1308c:	fffb4693          	not	a3,s6
   13090:	bffcfe13          	andi	t3,s9,-1025
   13094:	86fd                	srai	a3,a3,0x1f
   13096:	100e6793          	ori	a5,t3,256
   1309a:	c6be                	sw	a5,76(sp)
   1309c:	00db7db3          	and	s11,s6,a3
   130a0:	d402                	sw	zero,40(sp)
   130a2:	d202                	sw	zero,36(sp)
   130a4:	ce02                	sw	zero,28(sp)
   130a6:	57e2                	lw	a5,56(sp)
   130a8:	020786e3          	beqz	a5,138d4 <_vfprintf_r+0x186c>
   130ac:	02d00713          	li	a4,45
   130b0:	4cb6                	lw	s9,76(sp)
   130b2:	0ae103a3          	sb	a4,167(sp)
   130b6:	4a81                	li	s5,0
   130b8:	0d85                	addi	s11,s11,1
   130ba:	938ff06f          	j	121f2 <_vfprintf_r+0x18a>
   130be:	4752                	lw	a4,20(sp)
   130c0:	010cf793          	andi	a5,s9,16
   130c4:	00072b03          	lw	s6,0(a4)
   130c8:	0711                	addi	a4,a4,4
   130ca:	ca3a                	sw	a4,20(sp)
   130cc:	e7a9                	bnez	a5,13116 <_vfprintf_r+0x10ae>
   130ce:	040cf793          	andi	a5,s9,64
   130d2:	cf95                	beqz	a5,1310e <_vfprintf_r+0x10a6>
   130d4:	0b42                	slli	s6,s6,0x10
   130d6:	010b5b13          	srli	s6,s6,0x10
   130da:	4d81                	li	s11,0
   130dc:	bb69                	j	12e76 <_vfprintf_r+0xe0e>
   130de:	4522                	lw	a0,8(sp)
   130e0:	01d0                	addi	a2,sp,196
   130e2:	85a6                	mv	a1,s1
   130e4:	3cf000ef          	jal	13cb2 <__sprint_r>
   130e8:	9c051ee3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   130ec:	4c3e                	lw	s8,204(sp)
   130ee:	4aae                	lw	s5,200(sp)
   130f0:	8b4e                	mv	s6,s3
   130f2:	c6eff06f          	j	12560 <_vfprintf_r+0x4f8>
   130f6:	4522                	lw	a0,8(sp)
   130f8:	01d0                	addi	a2,sp,196
   130fa:	85a6                	mv	a1,s1
   130fc:	3b7000ef          	jal	13cb2 <__sprint_r>
   13100:	9c0512e3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   13104:	4c3e                	lw	s8,204(sp)
   13106:	4aae                	lw	s5,200(sp)
   13108:	8b4e                	mv	s6,s3
   1310a:	c72ff06f          	j	1257c <_vfprintf_r+0x514>
   1310e:	200cf793          	andi	a5,s9,512
   13112:	4a079963          	bnez	a5,135c4 <_vfprintf_r+0x155c>
   13116:	4d81                	li	s11,0
   13118:	bbb9                	j	12e76 <_vfprintf_r+0xe0e>
   1311a:	ccccd837          	lui	a6,0xccccd
   1311e:	ccccdcb7          	lui	s9,0xccccd
   13122:	5772                	lw	a4,60(sp)
   13124:	400eff13          	andi	t5,t4,1024
   13128:	4601                	li	a2,0
   1312a:	0b0c                	addi	a1,sp,400
   1312c:	4e15                	li	t3,5
   1312e:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccafea1>
   13132:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccafea0>
   13136:	0ff00c13          	li	s8,255
   1313a:	a081                	j	1317a <_vfprintf_r+0x1112>
   1313c:	016d37b3          	sltu	a5,s10,s6
   13140:	97ea                	add	a5,a5,s10
   13142:	03c7f7b3          	remu	a5,a5,t3
   13146:	40fb07b3          	sub	a5,s6,a5
   1314a:	00fb35b3          	sltu	a1,s6,a5
   1314e:	40bd85b3          	sub	a1,s11,a1
   13152:	03978333          	mul	t1,a5,s9
   13156:	030585b3          	mul	a1,a1,a6
   1315a:	0307b533          	mulhu	a0,a5,a6
   1315e:	959a                	add	a1,a1,t1
   13160:	030787b3          	mul	a5,a5,a6
   13164:	95aa                	add	a1,a1,a0
   13166:	01f59513          	slli	a0,a1,0x1f
   1316a:	8185                	srli	a1,a1,0x1
   1316c:	8385                	srli	a5,a5,0x1
   1316e:	8fc9                	or	a5,a5,a0
   13170:	7c0d8763          	beqz	s11,1393e <_vfprintf_r+0x18d6>
   13174:	8dae                	mv	s11,a1
   13176:	8b3e                	mv	s6,a5
   13178:	85b6                	mv	a1,a3
   1317a:	01bb0d33          	add	s10,s6,s11
   1317e:	016d37b3          	sltu	a5,s10,s6
   13182:	97ea                	add	a5,a5,s10
   13184:	03c7f7b3          	remu	a5,a5,t3
   13188:	fff58693          	addi	a3,a1,-1
   1318c:	0605                	addi	a2,a2,1
   1318e:	40fb07b3          	sub	a5,s6,a5
   13192:	00fb3533          	sltu	a0,s6,a5
   13196:	40ad8533          	sub	a0,s11,a0
   1319a:	0307b333          	mulhu	t1,a5,a6
   1319e:	03050533          	mul	a0,a0,a6
   131a2:	030787b3          	mul	a5,a5,a6
   131a6:	951a                	add	a0,a0,t1
   131a8:	057e                	slli	a0,a0,0x1f
   131aa:	8385                	srli	a5,a5,0x1
   131ac:	8fc9                	or	a5,a5,a0
   131ae:	00279513          	slli	a0,a5,0x2
   131b2:	97aa                	add	a5,a5,a0
   131b4:	0786                	slli	a5,a5,0x1
   131b6:	40fb07b3          	sub	a5,s6,a5
   131ba:	03078793          	addi	a5,a5,48
   131be:	fef58fa3          	sb	a5,-1(a1)
   131c2:	f60f0de3          	beqz	t5,1313c <_vfprintf_r+0x10d4>
   131c6:	00074783          	lbu	a5,0(a4)
   131ca:	f6f619e3          	bne	a2,a5,1313c <_vfprintf_r+0x10d4>
   131ce:	f78607e3          	beq	a2,s8,1313c <_vfprintf_r+0x10d4>
   131d2:	1c0d9563          	bnez	s11,1339c <_vfprintf_r+0x1334>
   131d6:	47a5                	li	a5,9
   131d8:	1d67e263          	bltu	a5,s6,1339c <_vfprintf_r+0x1334>
   131dc:	8d36                	mv	s10,a3
   131de:	0b1c                	addi	a5,sp,400
   131e0:	d032                	sw	a2,32(sp)
   131e2:	de3a                	sw	a4,60(sp)
   131e4:	41a78b33          	sub	s6,a5,s10
   131e8:	8cf6                	mv	s9,t4
   131ea:	9d2ff06f          	j	123bc <_vfprintf_r+0x354>
   131ee:	472e                	lw	a4,200(sp)
   131f0:	65ed                	lui	a1,0x1b
   131f2:	ba858593          	addi	a1,a1,-1112 # 1aba8 <__clzsi2+0x13a>
   131f6:	c00c                	sw	a1,0(s0)
   131f8:	0605                	addi	a2,a2,1
   131fa:	4585                	li	a1,1
   131fc:	0705                	addi	a4,a4,1
   131fe:	c04c                	sw	a1,4(s0)
   13200:	c7b2                	sw	a2,204(sp)
   13202:	c5ba                	sw	a4,200(sp)
   13204:	459d                	li	a1,7
   13206:	0421                	addi	s0,s0,8
   13208:	36e5c063          	blt	a1,a4,13568 <_vfprintf_r+0x1500>
   1320c:	e569                	bnez	a0,132d6 <_vfprintf_r+0x126e>
   1320e:	5782                	lw	a5,32(sp)
   13210:	001cf713          	andi	a4,s9,1
   13214:	8f5d                	or	a4,a4,a5
   13216:	e319                	bnez	a4,1321c <_vfprintf_r+0x11b4>
   13218:	868ff06f          	j	12280 <_vfprintf_r+0x218>
   1321c:	5742                	lw	a4,48(sp)
   1321e:	57b2                	lw	a5,44(sp)
   13220:	459d                	li	a1,7
   13222:	c018                	sw	a4,0(s0)
   13224:	472e                	lw	a4,200(sp)
   13226:	963e                	add	a2,a2,a5
   13228:	c05c                	sw	a5,4(s0)
   1322a:	0705                	addi	a4,a4,1
   1322c:	c7b2                	sw	a2,204(sp)
   1322e:	c5ba                	sw	a4,200(sp)
   13230:	3ae5cb63          	blt	a1,a4,135e6 <_vfprintf_r+0x157e>
   13234:	0421                	addi	s0,s0,8
   13236:	a87d                	j	132f4 <_vfprintf_r+0x128c>
   13238:	4522                	lw	a0,8(sp)
   1323a:	e31fd0ef          	jal	1106a <__sinit>
   1323e:	e69fe06f          	j	120a6 <_vfprintf_r+0x3e>
   13242:	4522                	lw	a0,8(sp)
   13244:	01d0                	addi	a2,sp,196
   13246:	85a6                	mv	a1,s1
   13248:	26b000ef          	jal	13cb2 <__sprint_r>
   1324c:	86051ce3          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   13250:	463e                	lw	a2,204(sp)
   13252:	844e                	mv	s0,s3
   13254:	e78ff06f          	j	128cc <_vfprintf_r+0x864>
   13258:	886a                	mv	a6,s10
   1325a:	01042023          	sw	a6,0(s0)
   1325e:	01542223          	sw	s5,4(s0)
   13262:	9656                	add	a2,a2,s5
   13264:	0785                	addi	a5,a5,1
   13266:	c7b2                	sw	a2,204(sp)
   13268:	c5be                	sw	a5,200(sp)
   1326a:	471d                	li	a4,7
   1326c:	00f74463          	blt	a4,a5,13274 <_vfprintf_r+0x120c>
   13270:	80eff06f          	j	1227e <_vfprintf_r+0x216>
   13274:	b70ff06f          	j	125e4 <_vfprintf_r+0x57c>
   13278:	47ce                	lw	a5,208(sp)
   1327a:	010c                	addi	a1,sp,128
   1327c:	0908                	addi	a0,sp,144
   1327e:	c93e                	sw	a5,144(sp)
   13280:	47de                	lw	a5,212(sp)
   13282:	c102                	sw	zero,128(sp)
   13284:	c302                	sw	zero,132(sp)
   13286:	cb3e                	sw	a5,148(sp)
   13288:	47ee                	lw	a5,216(sp)
   1328a:	c502                	sw	zero,136(sp)
   1328c:	c702                	sw	zero,140(sp)
   1328e:	cd3e                	sw	a5,152(sp)
   13290:	47fe                	lw	a5,220(sp)
   13292:	cf3e                	sw	a5,156(sp)
   13294:	542050ef          	jal	187d6 <__letf2>
   13298:	48c2                	lw	a7,16(sp)
   1329a:	6a054a63          	bltz	a0,1394e <_vfprintf_r+0x18e6>
   1329e:	0a714703          	lbu	a4,167(sp)
   132a2:	04700793          	li	a5,71
   132a6:	2d17db63          	bge	a5,a7,1357c <_vfprintf_r+0x1514>
   132aa:	67ed                	lui	a5,0x1b
   132ac:	b6c78d13          	addi	s10,a5,-1172 # 1ab6c <__clzsi2+0xfe>
   132b0:	c802                	sw	zero,16(sp)
   132b2:	d402                	sw	zero,40(sp)
   132b4:	d202                	sw	zero,36(sp)
   132b6:	ce02                	sw	zero,28(sp)
   132b8:	f7fcfc93          	andi	s9,s9,-129
   132bc:	4d8d                	li	s11,3
   132be:	4b0d                	li	s6,3
   132c0:	4a81                	li	s5,0
   132c2:	90071963          	bnez	a4,123d4 <_vfprintf_r+0x36c>
   132c6:	f2dfe06f          	j	121f2 <_vfprintf_r+0x18a>
   132ca:	47d2                	lw	a5,20(sp)
   132cc:	4732                	lw	a4,12(sp)
   132ce:	439c                	lw	a5,0(a5)
   132d0:	c398                	sw	a4,0(a5)
   132d2:	d7eff06f          	j	12850 <_vfprintf_r+0x7e8>
   132d6:	5742                	lw	a4,48(sp)
   132d8:	57b2                	lw	a5,44(sp)
   132da:	459d                	li	a1,7
   132dc:	c018                	sw	a4,0(s0)
   132de:	472e                	lw	a4,200(sp)
   132e0:	963e                	add	a2,a2,a5
   132e2:	c05c                	sw	a5,4(s0)
   132e4:	0705                	addi	a4,a4,1
   132e6:	c7b2                	sw	a2,204(sp)
   132e8:	c5ba                	sw	a4,200(sp)
   132ea:	0421                	addi	s0,s0,8
   132ec:	2ee5cd63          	blt	a1,a4,135e6 <_vfprintf_r+0x157e>
   132f0:	74054a63          	bltz	a0,13a44 <_vfprintf_r+0x19dc>
   132f4:	5782                	lw	a5,32(sp)
   132f6:	0705                	addi	a4,a4,1
   132f8:	01a42023          	sw	s10,0(s0)
   132fc:	963e                	add	a2,a2,a5
   132fe:	c05c                	sw	a5,4(s0)
   13300:	c7b2                	sw	a2,204(sp)
   13302:	c5ba                	sw	a4,200(sp)
   13304:	479d                	li	a5,7
   13306:	00e7c463          	blt	a5,a4,1330e <_vfprintf_r+0x12a6>
   1330a:	f75fe06f          	j	1227e <_vfprintf_r+0x216>
   1330e:	ad6ff06f          	j	125e4 <_vfprintf_r+0x57c>
   13312:	856a                	mv	a0,s10
   13314:	dc46                	sw	a7,56(sp)
   13316:	b7efe0ef          	jal	11694 <strlen>
   1331a:	0a714703          	lbu	a4,167(sp)
   1331e:	fff54693          	not	a3,a0
   13322:	86fd                	srai	a3,a3,0x1f
   13324:	ca62                	sw	s8,20(sp)
   13326:	c802                	sw	zero,16(sp)
   13328:	d402                	sw	zero,40(sp)
   1332a:	d202                	sw	zero,36(sp)
   1332c:	ce02                	sw	zero,28(sp)
   1332e:	58e2                	lw	a7,56(sp)
   13330:	8b2a                	mv	s6,a0
   13332:	00d57db3          	and	s11,a0,a3
   13336:	4a81                	li	s5,0
   13338:	c319                	beqz	a4,1333e <_vfprintf_r+0x12d6>
   1333a:	89aff06f          	j	123d4 <_vfprintf_r+0x36c>
   1333e:	eb5fe06f          	j	121f2 <_vfprintf_r+0x18a>
   13342:	884a                	mv	a6,s2
   13344:	4972                	lw	s2,28(sp)
   13346:	9c22                	add	s8,s8,s0
   13348:	0a85                	addi	s5,s5,1
   1334a:	010b2023          	sw	a6,0(s6)
   1334e:	a64ff06f          	j	125b2 <_vfprintf_r+0x54a>
   13352:	47fe                	lw	a5,220(sp)
   13354:	2607cc63          	bltz	a5,135cc <_vfprintf_r+0x1564>
   13358:	0a714703          	lbu	a4,167(sp)
   1335c:	04700793          	li	a5,71
   13360:	6317ca63          	blt	a5,a7,13994 <_vfprintf_r+0x192c>
   13364:	67ed                	lui	a5,0x1b
   13366:	b7078d13          	addi	s10,a5,-1168 # 1ab70 <__clzsi2+0x102>
   1336a:	b799                	j	132b0 <_vfprintf_r+0x1248>
   1336c:	8822                	mv	a6,s0
   1336e:	843e                	mv	s0,a5
   13370:	9656                	add	a2,a2,s5
   13372:	0705                	addi	a4,a4,1
   13374:	01042023          	sw	a6,0(s0)
   13378:	01542223          	sw	s5,4(s0)
   1337c:	c7b2                	sw	a2,204(sp)
   1337e:	c5ba                	sw	a4,200(sp)
   13380:	459d                	li	a1,7
   13382:	0421                	addi	s0,s0,8
   13384:	8ce5d7e3          	bge	a1,a4,12c52 <_vfprintf_r+0xbea>
   13388:	4522                	lw	a0,8(sp)
   1338a:	01d0                	addi	a2,sp,196
   1338c:	85a6                	mv	a1,s1
   1338e:	125000ef          	jal	13cb2 <__sprint_r>
   13392:	f2051963          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   13396:	463e                	lw	a2,204(sp)
   13398:	844e                	mv	s0,s3
   1339a:	b865                	j	12c52 <_vfprintf_r+0xbea>
   1339c:	47a6                	lw	a5,72(sp)
   1339e:	4596                	lw	a1,68(sp)
   133a0:	dc42                	sw	a6,56(sp)
   133a2:	8e9d                	sub	a3,a3,a5
   133a4:	863e                	mv	a2,a5
   133a6:	8536                	mv	a0,a3
   133a8:	d47a                	sw	t5,40(sp)
   133aa:	d276                	sw	t4,36(sp)
   133ac:	d046                	sw	a7,32(sp)
   133ae:	ce3a                	sw	a4,28(sp)
   133b0:	c836                	sw	a3,16(sp)
   133b2:	25a010ef          	jal	1460c <strncpy>
   133b6:	016d37b3          	sltu	a5,s10,s6
   133ba:	4615                	li	a2,5
   133bc:	97ea                	add	a5,a5,s10
   133be:	02c7f7b3          	remu	a5,a5,a2
   133c2:	4772                	lw	a4,28(sp)
   133c4:	ccccd337          	lui	t1,0xccccd
   133c8:	ccccd537          	lui	a0,0xccccd
   133cc:	00174583          	lbu	a1,1(a4)
   133d0:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccafea1>
   133d4:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccafea0>
   133d8:	00b035b3          	snez	a1,a1
   133dc:	972e                	add	a4,a4,a1
   133de:	46c2                	lw	a3,16(sp)
   133e0:	5882                	lw	a7,32(sp)
   133e2:	5e92                	lw	t4,36(sp)
   133e4:	5f22                	lw	t5,40(sp)
   133e6:	5862                	lw	a6,56(sp)
   133e8:	4601                	li	a2,0
   133ea:	4e15                	li	t3,5
   133ec:	40fb07b3          	sub	a5,s6,a5
   133f0:	00fb35b3          	sltu	a1,s6,a5
   133f4:	40bd85b3          	sub	a1,s11,a1
   133f8:	02a78533          	mul	a0,a5,a0
   133fc:	026585b3          	mul	a1,a1,t1
   13400:	0267bfb3          	mulhu	t6,a5,t1
   13404:	95aa                	add	a1,a1,a0
   13406:	02678533          	mul	a0,a5,t1
   1340a:	95fe                	add	a1,a1,t6
   1340c:	01f59793          	slli	a5,a1,0x1f
   13410:	8185                	srli	a1,a1,0x1
   13412:	8105                	srli	a0,a0,0x1
   13414:	8fc9                	or	a5,a5,a0
   13416:	bbb9                	j	13174 <_vfprintf_r+0x110c>
   13418:	5782                	lw	a5,32(sp)
   1341a:	5b12                	lw	s6,36(sp)
   1341c:	68ed                	lui	a7,0x1b
   1341e:	97ea                	add	a5,a5,s10
   13420:	dc4a                	sw	s2,56(sp)
   13422:	c6e6                	sw	s9,76(sp)
   13424:	c8de                	sw	s7,80(sp)
   13426:	d26e                	sw	s11,36(sp)
   13428:	5da2                	lw	s11,40(sp)
   1342a:	d46a                	sw	s10,40(sp)
   1342c:	5cf2                	lw	s9,60(sp)
   1342e:	8d62                	mv	s10,s8
   13430:	4922                	lw	s2,8(sp)
   13432:	4c26                	lw	s8,72(sp)
   13434:	481d                	li	a6,7
   13436:	4741                	li	a4,16
   13438:	ee488a93          	addi	s5,a7,-284 # 1aee4 <zeroes.0>
   1343c:	85a2                	mv	a1,s0
   1343e:	8bbe                	mv	s7,a5
   13440:	07605363          	blez	s6,134a6 <_vfprintf_r+0x143e>
   13444:	0fb05663          	blez	s11,13530 <_vfprintf_r+0x14c8>
   13448:	1dfd                	addi	s11,s11,-1
   1344a:	4796                	lw	a5,68(sp)
   1344c:	9662                	add	a2,a2,s8
   1344e:	0185a223          	sw	s8,4(a1)
   13452:	c19c                	sw	a5,0(a1)
   13454:	47ae                	lw	a5,200(sp)
   13456:	c7b2                	sw	a2,204(sp)
   13458:	05a1                	addi	a1,a1,8
   1345a:	0785                	addi	a5,a5,1
   1345c:	c5be                	sw	a5,200(sp)
   1345e:	0cf84c63          	blt	a6,a5,13536 <_vfprintf_r+0x14ce>
   13462:	000cc683          	lbu	a3,0(s9)
   13466:	41ab8433          	sub	s0,s7,s10
   1346a:	0086d363          	bge	a3,s0,13470 <_vfprintf_r+0x1408>
   1346e:	8436                	mv	s0,a3
   13470:	00805f63          	blez	s0,1348e <_vfprintf_r+0x1426>
   13474:	46ae                	lw	a3,200(sp)
   13476:	9622                	add	a2,a2,s0
   13478:	01a5a023          	sw	s10,0(a1)
   1347c:	0685                	addi	a3,a3,1
   1347e:	c1c0                	sw	s0,4(a1)
   13480:	c7b2                	sw	a2,204(sp)
   13482:	c5b6                	sw	a3,200(sp)
   13484:	0cd84563          	blt	a6,a3,1354e <_vfprintf_r+0x14e6>
   13488:	000cc683          	lbu	a3,0(s9)
   1348c:	05a1                	addi	a1,a1,8
   1348e:	fff44513          	not	a0,s0
   13492:	857d                	srai	a0,a0,0x1f
   13494:	00a477b3          	and	a5,s0,a0
   13498:	40f68433          	sub	s0,a3,a5
   1349c:	02804763          	bgtz	s0,134ca <_vfprintf_r+0x1462>
   134a0:	9d36                	add	s10,s10,a3
   134a2:	fb6041e3          	bgtz	s6,13444 <_vfprintf_r+0x13dc>
   134a6:	fbb041e3          	bgtz	s11,13448 <_vfprintf_r+0x13e0>
   134aa:	5782                	lw	a5,32(sp)
   134ac:	8c6a                	mv	s8,s10
   134ae:	5d22                	lw	s10,40(sp)
   134b0:	de66                	sw	s9,60(sp)
   134b2:	5962                	lw	s2,56(sp)
   134b4:	00fd0733          	add	a4,s10,a5
   134b8:	4cb6                	lw	s9,76(sp)
   134ba:	4bc6                	lw	s7,80(sp)
   134bc:	5d92                	lw	s11,36(sp)
   134be:	842e                	mv	s0,a1
   134c0:	fb877063          	bgeu	a4,s8,12c60 <_vfprintf_r+0xbf8>
   134c4:	8c3a                	mv	s8,a4
   134c6:	f9aff06f          	j	12c60 <_vfprintf_r+0xbf8>
   134ca:	6f6d                	lui	t5,0x1b
   134cc:	46ae                	lw	a3,200(sp)
   134ce:	ee4f0f13          	addi	t5,t5,-284 # 1aee4 <zeroes.0>
   134d2:	04875163          	bge	a4,s0,13514 <_vfprintf_r+0x14ac>
   134d6:	ce56                	sw	s5,28(sp)
   134d8:	a021                	j	134e0 <_vfprintf_r+0x1478>
   134da:	1441                	addi	s0,s0,-16
   134dc:	02875b63          	bge	a4,s0,13512 <_vfprintf_r+0x14aa>
   134e0:	0641                	addi	a2,a2,16
   134e2:	0685                	addi	a3,a3,1
   134e4:	0155a023          	sw	s5,0(a1)
   134e8:	c1d8                	sw	a4,4(a1)
   134ea:	c7b2                	sw	a2,204(sp)
   134ec:	c5b6                	sw	a3,200(sp)
   134ee:	05a1                	addi	a1,a1,8
   134f0:	fed855e3          	bge	a6,a3,134da <_vfprintf_r+0x1472>
   134f4:	01d0                	addi	a2,sp,196
   134f6:	85a6                	mv	a1,s1
   134f8:	854a                	mv	a0,s2
   134fa:	7b8000ef          	jal	13cb2 <__sprint_r>
   134fe:	dc051363          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   13502:	4741                	li	a4,16
   13504:	1441                	addi	s0,s0,-16
   13506:	463e                	lw	a2,204(sp)
   13508:	46ae                	lw	a3,200(sp)
   1350a:	85ce                	mv	a1,s3
   1350c:	481d                	li	a6,7
   1350e:	fc8749e3          	blt	a4,s0,134e0 <_vfprintf_r+0x1478>
   13512:	4f72                	lw	t5,28(sp)
   13514:	9622                	add	a2,a2,s0
   13516:	0685                	addi	a3,a3,1
   13518:	01e5a023          	sw	t5,0(a1)
   1351c:	c1c0                	sw	s0,4(a1)
   1351e:	c7b2                	sw	a2,204(sp)
   13520:	c5b6                	sw	a3,200(sp)
   13522:	40d84063          	blt	a6,a3,13922 <_vfprintf_r+0x18ba>
   13526:	000cc683          	lbu	a3,0(s9)
   1352a:	05a1                	addi	a1,a1,8
   1352c:	9d36                	add	s10,s10,a3
   1352e:	bf95                	j	134a2 <_vfprintf_r+0x143a>
   13530:	1cfd                	addi	s9,s9,-1
   13532:	1b7d                	addi	s6,s6,-1
   13534:	bf19                	j	1344a <_vfprintf_r+0x13e2>
   13536:	01d0                	addi	a2,sp,196
   13538:	85a6                	mv	a1,s1
   1353a:	854a                	mv	a0,s2
   1353c:	776000ef          	jal	13cb2 <__sprint_r>
   13540:	d8051263          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   13544:	463e                	lw	a2,204(sp)
   13546:	85ce                	mv	a1,s3
   13548:	4741                	li	a4,16
   1354a:	481d                	li	a6,7
   1354c:	bf19                	j	13462 <_vfprintf_r+0x13fa>
   1354e:	01d0                	addi	a2,sp,196
   13550:	85a6                	mv	a1,s1
   13552:	854a                	mv	a0,s2
   13554:	2fb9                	jal	13cb2 <__sprint_r>
   13556:	d6051763          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   1355a:	000cc683          	lbu	a3,0(s9)
   1355e:	463e                	lw	a2,204(sp)
   13560:	85ce                	mv	a1,s3
   13562:	4741                	li	a4,16
   13564:	481d                	li	a6,7
   13566:	b725                	j	1348e <_vfprintf_r+0x1426>
   13568:	4522                	lw	a0,8(sp)
   1356a:	01d0                	addi	a2,sp,196
   1356c:	85a6                	mv	a1,s1
   1356e:	2791                	jal	13cb2 <__sprint_r>
   13570:	d4051a63          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   13574:	553a                	lw	a0,172(sp)
   13576:	463e                	lw	a2,204(sp)
   13578:	844e                	mv	s0,s3
   1357a:	b949                	j	1320c <_vfprintf_r+0x11a4>
   1357c:	67ed                	lui	a5,0x1b
   1357e:	b6878d13          	addi	s10,a5,-1176 # 1ab68 <__clzsi2+0xfa>
   13582:	b33d                	j	132b0 <_vfprintf_r+0x1248>
   13584:	4522                	lw	a0,8(sp)
   13586:	01d0                	addi	a2,sp,196
   13588:	85a6                	mv	a1,s1
   1358a:	2725                	jal	13cb2 <__sprint_r>
   1358c:	d2051c63          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   13590:	463e                	lw	a2,204(sp)
   13592:	844e                	mv	s0,s3
   13594:	eaaff06f          	j	12c3e <_vfprintf_r+0xbd6>
   13598:	4b19                	li	s6,6
   1359a:	b2a1                	j	12ee2 <_vfprintf_r+0xe7a>
   1359c:	47d2                	lw	a5,20(sp)
   1359e:	4732                	lw	a4,12(sp)
   135a0:	439c                	lw	a5,0(a5)
   135a2:	00e79023          	sh	a4,0(a5)
   135a6:	aaaff06f          	j	12850 <_vfprintf_r+0x7e8>
   135aa:	0b62                	slli	s6,s6,0x18
   135ac:	418b5b13          	srai	s6,s6,0x18
   135b0:	41fb5d93          	srai	s11,s6,0x1f
   135b4:	87ee                	mv	a5,s11
   135b6:	de5fe06f          	j	1239a <_vfprintf_r+0x332>
   135ba:	0ffb7b13          	zext.b	s6,s6
   135be:	4d81                	li	s11,0
   135c0:	e3dfe06f          	j	123fc <_vfprintf_r+0x394>
   135c4:	0ffb7b13          	zext.b	s6,s6
   135c8:	4d81                	li	s11,0
   135ca:	b075                	j	12e76 <_vfprintf_r+0xe0e>
   135cc:	02d00793          	li	a5,45
   135d0:	0af103a3          	sb	a5,167(sp)
   135d4:	02d00713          	li	a4,45
   135d8:	b351                	j	1335c <_vfprintf_r+0x12f4>
   135da:	4522                	lw	a0,8(sp)
   135dc:	01d0                	addi	a2,sp,196
   135de:	85a6                	mv	a1,s1
   135e0:	2dc9                	jal	13cb2 <__sprint_r>
   135e2:	ce3fe06f          	j	122c4 <_vfprintf_r+0x25c>
   135e6:	4522                	lw	a0,8(sp)
   135e8:	01d0                	addi	a2,sp,196
   135ea:	85a6                	mv	a1,s1
   135ec:	25d9                	jal	13cb2 <__sprint_r>
   135ee:	cc051b63          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   135f2:	553a                	lw	a0,172(sp)
   135f4:	463e                	lw	a2,204(sp)
   135f6:	472e                	lw	a4,200(sp)
   135f8:	844e                	mv	s0,s3
   135fa:	b9dd                	j	132f0 <_vfprintf_r+0x1288>
   135fc:	01550733          	add	a4,a0,s5
   13600:	04700613          	li	a2,71
   13604:	010c                	addi	a1,sp,128
   13606:	855a                	mv	a0,s6
   13608:	d23a                	sw	a4,36(sp)
   1360a:	d032                	sw	a2,32(sp)
   1360c:	ce46                	sw	a7,28(sp)
   1360e:	c97e                	sw	t6,144(sp)
   13610:	cb7a                	sw	t5,148(sp)
   13612:	cd76                	sw	t4,152(sp)
   13614:	cf62                	sw	s8,156(sp)
   13616:	c102                	sw	zero,128(sp)
   13618:	c302                	sw	zero,132(sp)
   1361a:	c502                	sw	zero,136(sp)
   1361c:	c702                	sw	zero,140(sp)
   1361e:	7e1040ef          	jal	185fe <__eqtf2>
   13622:	48f2                	lw	a7,28(sp)
   13624:	5602                	lw	a2,32(sp)
   13626:	5712                	lw	a4,36(sp)
   13628:	36050a63          	beqz	a0,1399c <_vfprintf_r+0x1934>
   1362c:	57fa                	lw	a5,188(sp)
   1362e:	00e7fc63          	bgeu	a5,a4,13646 <_vfprintf_r+0x15de>
   13632:	03000593          	li	a1,48
   13636:	00178693          	addi	a3,a5,1
   1363a:	df36                	sw	a3,188(sp)
   1363c:	00b78023          	sb	a1,0(a5)
   13640:	57fa                	lw	a5,188(sp)
   13642:	fee7eae3          	bltu	a5,a4,13636 <_vfprintf_r+0x15ce>
   13646:	573a                	lw	a4,172(sp)
   13648:	ce3a                	sw	a4,28(sp)
   1364a:	41a787b3          	sub	a5,a5,s10
   1364e:	04700713          	li	a4,71
   13652:	d03e                	sw	a5,32(sp)
   13654:	98e60ae3          	beq	a2,a4,12fe8 <_vfprintf_r+0xf80>
   13658:	04600713          	li	a4,70
   1365c:	38e60863          	beq	a2,a4,139ec <_vfprintf_r+0x1984>
   13660:	47f2                	lw	a5,28(sp)
   13662:	fff78713          	addi	a4,a5,-1
   13666:	ba59                	j	12ffc <_vfprintf_r+0xf94>
   13668:	001a8693          	addi	a3,s5,1
   1366c:	4609                	li	a2,2
   1366e:	4522                	lw	a0,8(sp)
   13670:	09010b13          	addi	s6,sp,144
   13674:	1178                	addi	a4,sp,172
   13676:	85da                	mv	a1,s6
   13678:	0bc10813          	addi	a6,sp,188
   1367c:	191c                	addi	a5,sp,176
   1367e:	c8c6                	sw	a7,80(sp)
   13680:	d436                	sw	a3,40(sp)
   13682:	c97e                	sw	t6,144(sp)
   13684:	d27e                	sw	t6,36(sp)
   13686:	cb7a                	sw	t5,148(sp)
   13688:	d07a                	sw	t5,32(sp)
   1368a:	cd76                	sw	t4,152(sp)
   1368c:	ce76                	sw	t4,28(sp)
   1368e:	cf62                	sw	s8,156(sp)
   13690:	29a010ef          	jal	1492a <_ldtoa_r>
   13694:	48c6                	lw	a7,80(sp)
   13696:	56a2                	lw	a3,40(sp)
   13698:	04600593          	li	a1,70
   1369c:	fdf8f613          	andi	a2,a7,-33
   136a0:	4ef2                	lw	t4,28(sp)
   136a2:	5f02                	lw	t5,32(sp)
   136a4:	5f92                	lw	t6,36(sp)
   136a6:	8d2a                	mv	s10,a0
   136a8:	00d50733          	add	a4,a0,a3
   136ac:	54b61563          	bne	a2,a1,13bf6 <_vfprintf_r+0x1b8e>
   136b0:	000d4503          	lbu	a0,0(s10)
   136b4:	03000593          	li	a1,48
   136b8:	2eb50663          	beq	a0,a1,139a4 <_vfprintf_r+0x193c>
   136bc:	56ba                	lw	a3,172(sp)
   136be:	010c                	addi	a1,sp,128
   136c0:	9736                	add	a4,a4,a3
   136c2:	b791                	j	13606 <_vfprintf_r+0x159e>
   136c4:	09010b13          	addi	s6,sp,144
   136c8:	010c                	addi	a1,sp,128
   136ca:	1170                	addi	a2,sp,172
   136cc:	855a                	mv	a0,s6
   136ce:	c0c6                	sw	a7,64(sp)
   136d0:	c17e                	sw	t6,128(sp)
   136d2:	c37a                	sw	t5,132(sp)
   136d4:	c576                	sw	t4,136(sp)
   136d6:	ce2e                	sw	a1,28(sp)
   136d8:	c762                	sw	s8,140(sp)
   136da:	0f4010ef          	jal	147ce <frexpl>
   136de:	474a                	lw	a4,144(sp)
   136e0:	45f2                	lw	a1,28(sp)
   136e2:	1890                	addi	a2,sp,112
   136e4:	c13a                	sw	a4,128(sp)
   136e6:	475a                	lw	a4,148(sp)
   136e8:	855a                	mv	a0,s6
   136ea:	d882                	sw	zero,112(sp)
   136ec:	c33a                	sw	a4,132(sp)
   136ee:	476a                	lw	a4,152(sp)
   136f0:	da82                	sw	zero,116(sp)
   136f2:	dc82                	sw	zero,120(sp)
   136f4:	c53a                	sw	a4,136(sp)
   136f6:	477a                	lw	a4,156(sp)
   136f8:	c73a                	sw	a4,140(sp)
   136fa:	3ffc0737          	lui	a4,0x3ffc0
   136fe:	deba                	sw	a4,124(sp)
   13700:	1c2050ef          	jal	188c2 <__multf3>
   13704:	45f2                	lw	a1,28(sp)
   13706:	4f4a                	lw	t5,144(sp)
   13708:	4eda                	lw	t4,148(sp)
   1370a:	486a                	lw	a6,152(sp)
   1370c:	855a                	mv	a0,s6
   1370e:	d42e                	sw	a1,40(sp)
   13710:	d27a                	sw	t5,36(sp)
   13712:	d076                	sw	t4,32(sp)
   13714:	ce42                	sw	a6,28(sp)
   13716:	c102                	sw	zero,128(sp)
   13718:	c302                	sw	zero,132(sp)
   1371a:	c502                	sw	zero,136(sp)
   1371c:	c702                	sw	zero,140(sp)
   1371e:	6e1040ef          	jal	185fe <__eqtf2>
   13722:	4dfa                	lw	s11,156(sp)
   13724:	4872                	lw	a6,28(sp)
   13726:	5e82                	lw	t4,32(sp)
   13728:	5f12                	lw	t5,36(sp)
   1372a:	55a2                	lw	a1,40(sp)
   1372c:	4886                	lw	a7,64(sp)
   1372e:	e119                	bnez	a0,13734 <_vfprintf_r+0x16cc>
   13730:	4705                	li	a4,1
   13732:	d73a                	sw	a4,172(sp)
   13734:	06100713          	li	a4,97
   13738:	44e88d63          	beq	a7,a4,13b92 <_vfprintf_r+0x1b2a>
   1373c:	676d                	lui	a4,0x1b
   1373e:	b8c70793          	addi	a5,a4,-1140 # 1ab8c <__clzsi2+0x11e>
   13742:	ce3e                	sw	a5,28(sp)
   13744:	d04a                	sw	s2,32(sp)
   13746:	d466                	sw	s9,40(sp)
   13748:	c0de                	sw	s7,64(sp)
   1374a:	c6a2                	sw	s0,76(sp)
   1374c:	896a                	mv	s2,s10
   1374e:	c8a6                	sw	s1,80(sp)
   13750:	caea                	sw	s10,84(sp)
   13752:	44f2                	lw	s1,28(sp)
   13754:	1afd                	addi	s5,s5,-1
   13756:	d246                	sw	a7,36(sp)
   13758:	8bfa                	mv	s7,t5
   1375a:	8c76                	mv	s8,t4
   1375c:	8cc2                	mv	s9,a6
   1375e:	8d6e                	mv	s10,s11
   13760:	842e                	mv	s0,a1
   13762:	a015                	j	13786 <_vfprintf_r+0x171e>
   13764:	85a2                	mv	a1,s0
   13766:	855a                	mv	a0,s6
   13768:	c95e                	sw	s7,144(sp)
   1376a:	cb62                	sw	s8,148(sp)
   1376c:	cd66                	sw	s9,152(sp)
   1376e:	cf6a                	sw	s10,156(sp)
   13770:	c102                	sw	zero,128(sp)
   13772:	c302                	sw	zero,132(sp)
   13774:	c502                	sw	zero,136(sp)
   13776:	c702                	sw	zero,140(sp)
   13778:	fffa8d93          	addi	s11,s5,-1
   1377c:	683040ef          	jal	185fe <__eqtf2>
   13780:	3c050c63          	beqz	a0,13b58 <_vfprintf_r+0x1af0>
   13784:	8aee                	mv	s5,s11
   13786:	400307b7          	lui	a5,0x40030
   1378a:	1890                	addi	a2,sp,112
   1378c:	85a2                	mv	a1,s0
   1378e:	855a                	mv	a0,s6
   13790:	debe                	sw	a5,124(sp)
   13792:	c15e                	sw	s7,128(sp)
   13794:	c362                	sw	s8,132(sp)
   13796:	c566                	sw	s9,136(sp)
   13798:	c76a                	sw	s10,140(sp)
   1379a:	d882                	sw	zero,112(sp)
   1379c:	da82                	sw	zero,116(sp)
   1379e:	dc82                	sw	zero,120(sp)
   137a0:	122050ef          	jal	188c2 <__multf3>
   137a4:	855a                	mv	a0,s6
   137a6:	747060ef          	jal	1a6ec <__fixtfsi>
   137aa:	85aa                	mv	a1,a0
   137ac:	8daa                	mv	s11,a0
   137ae:	855a                	mv	a0,s6
   137b0:	4d4a                	lw	s10,144(sp)
   137b2:	4cda                	lw	s9,148(sp)
   137b4:	4c6a                	lw	s8,152(sp)
   137b6:	4bfa                	lw	s7,156(sp)
   137b8:	058070ef          	jal	1a810 <__floatsitf>
   137bc:	46ca                	lw	a3,144(sp)
   137be:	1090                	addi	a2,sp,96
   137c0:	188c                	addi	a1,sp,112
   137c2:	d0b6                	sw	a3,96(sp)
   137c4:	46da                	lw	a3,148(sp)
   137c6:	8522                	mv	a0,s0
   137c8:	d8ea                	sw	s10,112(sp)
   137ca:	d2b6                	sw	a3,100(sp)
   137cc:	46ea                	lw	a3,152(sp)
   137ce:	dae6                	sw	s9,116(sp)
   137d0:	dce2                	sw	s8,120(sp)
   137d2:	d4b6                	sw	a3,104(sp)
   137d4:	46fa                	lw	a3,156(sp)
   137d6:	dede                	sw	s7,124(sp)
   137d8:	d6b6                	sw	a3,108(sp)
   137da:	585050ef          	jal	1955e <__subtf3>
   137de:	01b486b3          	add	a3,s1,s11
   137e2:	0006c603          	lbu	a2,0(a3)
   137e6:	8fca                	mv	t6,s2
   137e8:	0905                	addi	s2,s2,1
   137ea:	4b8a                	lw	s7,128(sp)
   137ec:	4c1a                	lw	s8,132(sp)
   137ee:	4caa                	lw	s9,136(sp)
   137f0:	4d3a                	lw	s10,140(sp)
   137f2:	57fd                	li	a5,-1
   137f4:	fec90fa3          	sb	a2,-1(s2)
   137f8:	f6fa96e3          	bne	s5,a5,13764 <_vfprintf_r+0x16fc>
   137fc:	5892                	lw	a7,36(sp)
   137fe:	8f5e                	mv	t5,s7
   13800:	8ee2                	mv	t4,s8
   13802:	8866                	mv	a6,s9
   13804:	85a2                	mv	a1,s0
   13806:	ccee                	sw	s11,88(sp)
   13808:	3ffe0ab7          	lui	s5,0x3ffe0
   1380c:	8dea                	mv	s11,s10
   1380e:	855a                	mv	a0,s6
   13810:	cec6                	sw	a7,92(sp)
   13812:	d27e                	sw	t6,36(sp)
   13814:	44c6                	lw	s1,80(sp)
   13816:	4b86                	lw	s7,64(sp)
   13818:	5ca2                	lw	s9,40(sp)
   1381a:	4436                	lw	s0,76(sp)
   1381c:	c97a                	sw	t5,144(sp)
   1381e:	c8fa                	sw	t5,80(sp)
   13820:	cb76                	sw	t4,148(sp)
   13822:	c6f6                	sw	t4,76(sp)
   13824:	cd42                	sw	a6,152(sp)
   13826:	c0c2                	sw	a6,64(sp)
   13828:	cf6e                	sw	s11,156(sp)
   1382a:	c102                	sw	zero,128(sp)
   1382c:	c302                	sw	zero,132(sp)
   1382e:	c502                	sw	zero,136(sp)
   13830:	c756                	sw	s5,140(sp)
   13832:	d42e                	sw	a1,40(sp)
   13834:	6b7040ef          	jal	186ea <__getf2>
   13838:	8c4a                	mv	s8,s2
   1383a:	4d56                	lw	s10,84(sp)
   1383c:	5902                	lw	s2,32(sp)
   1383e:	5f92                	lw	t6,36(sp)
   13840:	48f6                	lw	a7,92(sp)
   13842:	00a04e63          	bgtz	a0,1385e <_vfprintf_r+0x17f6>
   13846:	55a2                	lw	a1,40(sp)
   13848:	855a                	mv	a0,s6
   1384a:	d046                	sw	a7,32(sp)
   1384c:	5b3040ef          	jal	185fe <__eqtf2>
   13850:	5882                	lw	a7,32(sp)
   13852:	e529                	bnez	a0,1389c <_vfprintf_r+0x1834>
   13854:	47e6                	lw	a5,88(sp)
   13856:	5f92                	lw	t6,36(sp)
   13858:	0017f693          	andi	a3,a5,1
   1385c:	c2a1                	beqz	a3,1389c <_vfprintf_r+0x1834>
   1385e:	47f2                	lw	a5,28(sp)
   13860:	df7e                	sw	t6,188(sp)
   13862:	fffc4603          	lbu	a2,-1(s8)
   13866:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x400131e3>
   1386a:	86e2                	mv	a3,s8
   1386c:	00b61e63          	bne	a2,a1,13888 <_vfprintf_r+0x1820>
   13870:	03000513          	li	a0,48
   13874:	fea68fa3          	sb	a0,-1(a3)
   13878:	56fa                	lw	a3,188(sp)
   1387a:	fff68793          	addi	a5,a3,-1
   1387e:	df3e                	sw	a5,188(sp)
   13880:	fff6c603          	lbu	a2,-1(a3)
   13884:	fec588e3          	beq	a1,a2,13874 <_vfprintf_r+0x180c>
   13888:	00160593          	addi	a1,a2,1
   1388c:	03900513          	li	a0,57
   13890:	0ff5f593          	zext.b	a1,a1
   13894:	02a60c63          	beq	a2,a0,138cc <_vfprintf_r+0x1864>
   13898:	feb68fa3          	sb	a1,-1(a3)
   1389c:	57ba                	lw	a5,172(sp)
   1389e:	41ac0733          	sub	a4,s8,s10
   138a2:	d03a                	sw	a4,32(sp)
   138a4:	fff78713          	addi	a4,a5,-1
   138a8:	ce3e                	sw	a5,28(sp)
   138aa:	06100613          	li	a2,97
   138ae:	d73a                	sw	a4,172(sp)
   138b0:	07000693          	li	a3,112
   138b4:	00c88663          	beq	a7,a2,138c0 <_vfprintf_r+0x1858>
   138b8:	05000693          	li	a3,80
   138bc:	04100893          	li	a7,65
   138c0:	4605                	li	a2,1
   138c2:	f42ff06f          	j	13004 <_vfprintf_r+0xf9c>
   138c6:	86d6                	mv	a3,s5
   138c8:	460d                	li	a2,3
   138ca:	b355                	j	1366e <_vfprintf_r+0x1606>
   138cc:	47f2                	lw	a5,28(sp)
   138ce:	00a7c583          	lbu	a1,10(a5)
   138d2:	b7d9                	j	13898 <_vfprintf_r+0x1830>
   138d4:	0a714703          	lbu	a4,167(sp)
   138d8:	4cb6                	lw	s9,76(sp)
   138da:	4a81                	li	s5,0
   138dc:	c319                	beqz	a4,138e2 <_vfprintf_r+0x187a>
   138de:	af7fe06f          	j	123d4 <_vfprintf_r+0x36c>
   138e2:	911fe06f          	j	121f2 <_vfprintf_r+0x18a>
   138e6:	5782                	lw	a5,32(sp)
   138e8:	4772                	lw	a4,28(sp)
   138ea:	12f74763          	blt	a4,a5,13a18 <_vfprintf_r+0x19b0>
   138ee:	47f2                	lw	a5,28(sp)
   138f0:	001cf713          	andi	a4,s9,1
   138f4:	8b3e                	mv	s6,a5
   138f6:	c701                	beqz	a4,138fe <_vfprintf_r+0x1896>
   138f8:	5732                	lw	a4,44(sp)
   138fa:	00e78b33          	add	s6,a5,a4
   138fe:	400cfe13          	andi	t3,s9,1024
   13902:	000e0563          	beqz	t3,1390c <_vfprintf_r+0x18a4>
   13906:	47f2                	lw	a5,28(sp)
   13908:	1ef04c63          	bgtz	a5,13b00 <_vfprintf_r+0x1a98>
   1390c:	fffb4693          	not	a3,s6
   13910:	86fd                	srai	a3,a3,0x1f
   13912:	00db7db3          	and	s11,s6,a3
   13916:	06700893          	li	a7,103
   1391a:	d402                	sw	zero,40(sp)
   1391c:	d202                	sw	zero,36(sp)
   1391e:	f88ff06f          	j	130a6 <_vfprintf_r+0x103e>
   13922:	01d0                	addi	a2,sp,196
   13924:	85a6                	mv	a1,s1
   13926:	854a                	mv	a0,s2
   13928:	2669                	jal	13cb2 <__sprint_r>
   1392a:	98051d63          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   1392e:	000cc683          	lbu	a3,0(s9)
   13932:	463e                	lw	a2,204(sp)
   13934:	85ce                	mv	a1,s3
   13936:	4741                	li	a4,16
   13938:	481d                	li	a6,7
   1393a:	9d36                	add	s10,s10,a3
   1393c:	b69d                	j	134a2 <_vfprintf_r+0x143a>
   1393e:	4525                	li	a0,9
   13940:	83656ae3          	bltu	a0,s6,13174 <_vfprintf_r+0x110c>
   13944:	b861                	j	131dc <_vfprintf_r+0x1174>
   13946:	57fd                	li	a5,-1
   13948:	c63e                	sw	a5,12(sp)
   1394a:	9adfe06f          	j	122f6 <_vfprintf_r+0x28e>
   1394e:	02d00793          	li	a5,45
   13952:	0af103a3          	sb	a5,167(sp)
   13956:	02d00713          	li	a4,45
   1395a:	b2a1                	j	132a2 <_vfprintf_r+0x123a>
   1395c:	0a714703          	lbu	a4,167(sp)
   13960:	ca62                	sw	s8,20(sp)
   13962:	d402                	sw	zero,40(sp)
   13964:	d202                	sw	zero,36(sp)
   13966:	ce02                	sw	zero,28(sp)
   13968:	8dd6                	mv	s11,s5
   1396a:	8b56                	mv	s6,s5
   1396c:	4a81                	li	s5,0
   1396e:	c319                	beqz	a4,13974 <_vfprintf_r+0x190c>
   13970:	a65fe06f          	j	123d4 <_vfprintf_r+0x36c>
   13974:	87ffe06f          	j	121f2 <_vfprintf_r+0x18a>
   13978:	4522                	lw	a0,8(sp)
   1397a:	01d0                	addi	a2,sp,196
   1397c:	85a6                	mv	a1,s1
   1397e:	2e15                	jal	13cb2 <__sprint_r>
   13980:	94051263          	bnez	a0,12ac4 <_vfprintf_r+0xa5c>
   13984:	5aba                	lw	s5,172(sp)
   13986:	5782                	lw	a5,32(sp)
   13988:	463e                	lw	a2,204(sp)
   1398a:	844e                	mv	s0,s3
   1398c:	41578ab3          	sub	s5,a5,s5
   13990:	b12ff06f          	j	12ca2 <_vfprintf_r+0xc3a>
   13994:	67ed                	lui	a5,0x1b
   13996:	b7478d13          	addi	s10,a5,-1164 # 1ab74 <__clzsi2+0x106>
   1399a:	ba19                	j	132b0 <_vfprintf_r+0x1248>
   1399c:	57ba                	lw	a5,172(sp)
   1399e:	ce3e                	sw	a5,28(sp)
   139a0:	87ba                	mv	a5,a4
   139a2:	b165                	j	1364a <_vfprintf_r+0x15e2>
   139a4:	010c                	addi	a1,sp,128
   139a6:	855a                	mv	a0,s6
   139a8:	ceba                	sw	a4,92(sp)
   139aa:	ccb2                	sw	a2,88(sp)
   139ac:	cac6                	sw	a7,84(sp)
   139ae:	c8b6                	sw	a3,80(sp)
   139b0:	c97e                	sw	t6,144(sp)
   139b2:	d47e                	sw	t6,40(sp)
   139b4:	cb7a                	sw	t5,148(sp)
   139b6:	d27a                	sw	t5,36(sp)
   139b8:	cd76                	sw	t4,152(sp)
   139ba:	d076                	sw	t4,32(sp)
   139bc:	ce2e                	sw	a1,28(sp)
   139be:	cf62                	sw	s8,156(sp)
   139c0:	c102                	sw	zero,128(sp)
   139c2:	c302                	sw	zero,132(sp)
   139c4:	c502                	sw	zero,136(sp)
   139c6:	c702                	sw	zero,140(sp)
   139c8:	437040ef          	jal	185fe <__eqtf2>
   139cc:	45f2                	lw	a1,28(sp)
   139ce:	5e82                	lw	t4,32(sp)
   139d0:	5f12                	lw	t5,36(sp)
   139d2:	5fa2                	lw	t6,40(sp)
   139d4:	46c6                	lw	a3,80(sp)
   139d6:	48d6                	lw	a7,84(sp)
   139d8:	4666                	lw	a2,88(sp)
   139da:	4776                	lw	a4,92(sp)
   139dc:	1c051063          	bnez	a0,13b9c <_vfprintf_r+0x1b34>
   139e0:	57ba                	lw	a5,172(sp)
   139e2:	973e                	add	a4,a4,a5
   139e4:	ce3e                	sw	a5,28(sp)
   139e6:	41a707b3          	sub	a5,a4,s10
   139ea:	d03e                	sw	a5,32(sp)
   139ec:	47f2                	lw	a5,28(sp)
   139ee:	001cf713          	andi	a4,s9,1
   139f2:	01576733          	or	a4,a4,s5
   139f6:	1af05963          	blez	a5,13ba8 <_vfprintf_r+0x1b40>
   139fa:	18071463          	bnez	a4,13b82 <_vfprintf_r+0x1b1a>
   139fe:	4b72                	lw	s6,28(sp)
   13a00:	06600893          	li	a7,102
   13a04:	400cfe13          	andi	t3,s9,1024
   13a08:	0e0e1e63          	bnez	t3,13b04 <_vfprintf_r+0x1a9c>
   13a0c:	fffb4693          	not	a3,s6
   13a10:	86fd                	srai	a3,a3,0x1f
   13a12:	00db7db3          	and	s11,s6,a3
   13a16:	b711                	j	1391a <_vfprintf_r+0x18b2>
   13a18:	5782                	lw	a5,32(sp)
   13a1a:	5732                	lw	a4,44(sp)
   13a1c:	06700893          	li	a7,103
   13a20:	00e78b33          	add	s6,a5,a4
   13a24:	47f2                	lw	a5,28(sp)
   13a26:	fcf04fe3          	bgtz	a5,13a04 <_vfprintf_r+0x199c>
   13a2a:	40fb0f33          	sub	t5,s6,a5
   13a2e:	001f0b13          	addi	s6,t5,1
   13a32:	fffb4693          	not	a3,s6
   13a36:	86fd                	srai	a3,a3,0x1f
   13a38:	00db7db3          	and	s11,s6,a3
   13a3c:	bdf9                	j	1391a <_vfprintf_r+0x18b2>
   13a3e:	8ee6                	mv	t4,s9
   13a40:	cf5fe06f          	j	12734 <_vfprintf_r+0x6cc>
   13a44:	686d                	lui	a6,0x1b
   13a46:	55c1                	li	a1,-16
   13a48:	40a00ab3          	neg	s5,a0
   13a4c:	ee480813          	addi	a6,a6,-284 # 1aee4 <zeroes.0>
   13a50:	04b55263          	bge	a0,a1,13a94 <_vfprintf_r+0x1a2c>
   13a54:	ce4a                	sw	s2,28(sp)
   13a56:	4b41                	li	s6,16
   13a58:	4c1d                	li	s8,7
   13a5a:	8942                	mv	s2,a6
   13a5c:	a021                	j	13a64 <_vfprintf_r+0x19fc>
   13a5e:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc31c4>
   13a60:	035b5863          	bge	s6,s5,13a90 <_vfprintf_r+0x1a28>
   13a64:	0641                	addi	a2,a2,16
   13a66:	0705                	addi	a4,a4,1
   13a68:	01242023          	sw	s2,0(s0)
   13a6c:	01642223          	sw	s6,4(s0)
   13a70:	c7b2                	sw	a2,204(sp)
   13a72:	c5ba                	sw	a4,200(sp)
   13a74:	0421                	addi	s0,s0,8
   13a76:	feec54e3          	bge	s8,a4,13a5e <_vfprintf_r+0x19f6>
   13a7a:	4522                	lw	a0,8(sp)
   13a7c:	01d0                	addi	a2,sp,196
   13a7e:	85a6                	mv	a1,s1
   13a80:	2c0d                	jal	13cb2 <__sprint_r>
   13a82:	c119                	beqz	a0,13a88 <_vfprintf_r+0x1a20>
   13a84:	840ff06f          	j	12ac4 <_vfprintf_r+0xa5c>
   13a88:	463e                	lw	a2,204(sp)
   13a8a:	472e                	lw	a4,200(sp)
   13a8c:	844e                	mv	s0,s3
   13a8e:	bfc1                	j	13a5e <_vfprintf_r+0x19f6>
   13a90:	884a                	mv	a6,s2
   13a92:	4972                	lw	s2,28(sp)
   13a94:	9656                	add	a2,a2,s5
   13a96:	0705                	addi	a4,a4,1
   13a98:	01042023          	sw	a6,0(s0)
   13a9c:	01542223          	sw	s5,4(s0)
   13aa0:	c7b2                	sw	a2,204(sp)
   13aa2:	c5ba                	sw	a4,200(sp)
   13aa4:	459d                	li	a1,7
   13aa6:	f8e5d763          	bge	a1,a4,13234 <_vfprintf_r+0x11cc>
   13aaa:	4522                	lw	a0,8(sp)
   13aac:	01d0                	addi	a2,sp,196
   13aae:	85a6                	mv	a1,s1
   13ab0:	2409                	jal	13cb2 <__sprint_r>
   13ab2:	c119                	beqz	a0,13ab8 <_vfprintf_r+0x1a50>
   13ab4:	810ff06f          	j	12ac4 <_vfprintf_r+0xa5c>
   13ab8:	463e                	lw	a2,204(sp)
   13aba:	472e                	lw	a4,200(sp)
   13abc:	844e                	mv	s0,s3
   13abe:	837ff06f          	j	132f4 <_vfprintf_r+0x128c>
   13ac2:	0b610693          	addi	a3,sp,182
   13ac6:	e619                	bnez	a2,13ad4 <_vfprintf_r+0x1a6c>
   13ac8:	03000693          	li	a3,48
   13acc:	0ad10b23          	sb	a3,182(sp)
   13ad0:	0b710693          	addi	a3,sp,183
   13ad4:	0b1c                	addi	a5,sp,400
   13ad6:	40f68633          	sub	a2,a3,a5
   13ada:	03070713          	addi	a4,a4,48
   13ade:	0dd60793          	addi	a5,a2,221
   13ae2:	00e68023          	sb	a4,0(a3)
   13ae6:	c0be                	sw	a5,64(sp)
   13ae8:	d92ff06f          	j	1307a <_vfprintf_r+0x1012>
   13aec:	c802                	sw	zero,16(sp)
   13aee:	4a99                	li	s5,6
   13af0:	9effe06f          	j	124de <_vfprintf_r+0x476>
   13af4:	001cf713          	andi	a4,s9,1
   13af8:	d8070a63          	beqz	a4,1308c <_vfprintf_r+0x1024>
   13afc:	d8cff06f          	j	13088 <_vfprintf_r+0x1020>
   13b00:	06700893          	li	a7,103
   13b04:	5672                	lw	a2,60(sp)
   13b06:	0ff00693          	li	a3,255
   13b0a:	00064703          	lbu	a4,0(a2)
   13b0e:	0ed70163          	beq	a4,a3,13bf0 <_vfprintf_r+0x1b88>
   13b12:	47f2                	lw	a5,28(sp)
   13b14:	4501                	li	a0,0
   13b16:	4581                	li	a1,0
   13b18:	00f75a63          	bge	a4,a5,13b2c <_vfprintf_r+0x1ac4>
   13b1c:	8f99                	sub	a5,a5,a4
   13b1e:	00164703          	lbu	a4,1(a2)
   13b22:	c71d                	beqz	a4,13b50 <_vfprintf_r+0x1ae8>
   13b24:	0585                	addi	a1,a1,1
   13b26:	0605                	addi	a2,a2,1
   13b28:	fed718e3          	bne	a4,a3,13b18 <_vfprintf_r+0x1ab0>
   13b2c:	de32                	sw	a2,60(sp)
   13b2e:	d22e                	sw	a1,36(sp)
   13b30:	d42a                	sw	a0,40(sp)
   13b32:	ce3e                	sw	a5,28(sp)
   13b34:	57a2                	lw	a5,40(sp)
   13b36:	5712                	lw	a4,36(sp)
   13b38:	973e                	add	a4,a4,a5
   13b3a:	47a6                	lw	a5,72(sp)
   13b3c:	02f70733          	mul	a4,a4,a5
   13b40:	9b3a                	add	s6,s6,a4
   13b42:	fffb4693          	not	a3,s6
   13b46:	86fd                	srai	a3,a3,0x1f
   13b48:	00db7db3          	and	s11,s6,a3
   13b4c:	d5aff06f          	j	130a6 <_vfprintf_r+0x103e>
   13b50:	00064703          	lbu	a4,0(a2)
   13b54:	0505                	addi	a0,a0,1
   13b56:	bfc9                	j	13b28 <_vfprintf_r+0x1ac0>
   13b58:	8c4a                	mv	s8,s2
   13b5a:	001a8693          	addi	a3,s5,1
   13b5e:	5892                	lw	a7,36(sp)
   13b60:	5ca2                	lw	s9,40(sp)
   13b62:	4b86                	lw	s7,64(sp)
   13b64:	4436                	lw	s0,76(sp)
   13b66:	5902                	lw	s2,32(sp)
   13b68:	44c6                	lw	s1,80(sp)
   13b6a:	4d56                	lw	s10,84(sp)
   13b6c:	96e2                	add	a3,a3,s8
   13b6e:	03000613          	li	a2,48
   13b72:	d20ac5e3          	bltz	s5,1389c <_vfprintf_r+0x1834>
   13b76:	0c05                	addi	s8,s8,1
   13b78:	fecc0fa3          	sb	a2,-1(s8)
   13b7c:	fedc1de3          	bne	s8,a3,13b76 <_vfprintf_r+0x1b0e>
   13b80:	bb31                	j	1389c <_vfprintf_r+0x1834>
   13b82:	5732                	lw	a4,44(sp)
   13b84:	06600893          	li	a7,102
   13b88:	00ea8f33          	add	t5,s5,a4
   13b8c:	00ff0b33          	add	s6,t5,a5
   13b90:	bd95                	j	13a04 <_vfprintf_r+0x199c>
   13b92:	676d                	lui	a4,0x1b
   13b94:	b7870793          	addi	a5,a4,-1160 # 1ab78 <__clzsi2+0x10a>
   13b98:	ce3e                	sw	a5,28(sp)
   13b9a:	b66d                	j	13744 <_vfprintf_r+0x16dc>
   13b9c:	4505                	li	a0,1
   13b9e:	40d506b3          	sub	a3,a0,a3
   13ba2:	d736                	sw	a3,172(sp)
   13ba4:	9736                	add	a4,a4,a3
   13ba6:	b485                	j	13606 <_vfprintf_r+0x159e>
   13ba8:	e711                	bnez	a4,13bb4 <_vfprintf_r+0x1b4c>
   13baa:	4d85                	li	s11,1
   13bac:	06600893          	li	a7,102
   13bb0:	4b05                	li	s6,1
   13bb2:	b3a5                	j	1391a <_vfprintf_r+0x18b2>
   13bb4:	57b2                	lw	a5,44(sp)
   13bb6:	06600893          	li	a7,102
   13bba:	00178f13          	addi	t5,a5,1
   13bbe:	015f0b33          	add	s6,t5,s5
   13bc2:	fffb4693          	not	a3,s6
   13bc6:	86fd                	srai	a3,a3,0x1f
   13bc8:	00db7db3          	and	s11,s6,a3
   13bcc:	b3b9                	j	1391a <_vfprintf_r+0x18b2>
   13bce:	4789                	li	a5,2
   13bd0:	c0be                	sw	a5,64(sp)
   13bd2:	ca8ff06f          	j	1307a <_vfprintf_r+0x1012>
   13bd6:	47d2                	lw	a5,20(sp)
   13bd8:	0007aa83          	lw	s5,0(a5)
   13bdc:	0791                	addi	a5,a5,4
   13bde:	000ad363          	bgez	s5,13be4 <_vfprintf_r+0x1b7c>
   13be2:	5afd                	li	s5,-1
   13be4:	00194883          	lbu	a7,1(s2)
   13be8:	ca3e                	sw	a5,20(sp)
   13bea:	8936                	mv	s2,a3
   13bec:	dacfe06f          	j	12198 <_vfprintf_r+0x130>
   13bf0:	d402                	sw	zero,40(sp)
   13bf2:	d202                	sw	zero,36(sp)
   13bf4:	b781                	j	13b34 <_vfprintf_r+0x1acc>
   13bf6:	04500613          	li	a2,69
   13bfa:	010c                	addi	a1,sp,128
   13bfc:	b429                	j	13606 <_vfprintf_r+0x159e>
   13bfe:	00c4d783          	lhu	a5,12(s1)
   13c02:	0407e793          	ori	a5,a5,64
   13c06:	00f49623          	sh	a5,12(s1)
   13c0a:	ebafe06f          	j	122c4 <_vfprintf_r+0x25c>

00013c0e <vfprintf>:
   13c0e:	87aa                	mv	a5,a0
   13c10:	f141a503          	lw	a0,-236(gp) # 1caf4 <_impure_ptr>
   13c14:	86b2                	mv	a3,a2
   13c16:	862e                	mv	a2,a1
   13c18:	85be                	mv	a1,a5
   13c1a:	c4efe06f          	j	12068 <_vfprintf_r>

00013c1e <__sbprintf>:
   13c1e:	b8010113          	addi	sp,sp,-1152
   13c22:	00c59783          	lh	a5,12(a1)
   13c26:	00e5d703          	lhu	a4,14(a1)
   13c2a:	46812c23          	sw	s0,1144(sp)
   13c2e:	842e                	mv	s0,a1
   13c30:	65c1                	lui	a1,0x10
   13c32:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   13c34:	06442e03          	lw	t3,100(s0)
   13c38:	01c42303          	lw	t1,28(s0)
   13c3c:	02442883          	lw	a7,36(s0)
   13c40:	0742                	slli	a4,a4,0x10
   13c42:	8fed                	and	a5,a5,a1
   13c44:	8fd9                	or	a5,a5,a4
   13c46:	40000813          	li	a6,1024
   13c4a:	ca3e                	sw	a5,20(sp)
   13c4c:	002c                	addi	a1,sp,8
   13c4e:	189c                	addi	a5,sp,112
   13c50:	46912a23          	sw	s1,1140(sp)
   13c54:	47212823          	sw	s2,1136(sp)
   13c58:	46112e23          	sw	ra,1148(sp)
   13c5c:	892a                	mv	s2,a0
   13c5e:	d6f2                	sw	t3,108(sp)
   13c60:	d21a                	sw	t1,36(sp)
   13c62:	d646                	sw	a7,44(sp)
   13c64:	c43e                	sw	a5,8(sp)
   13c66:	cc3e                	sw	a5,24(sp)
   13c68:	c842                	sw	a6,16(sp)
   13c6a:	ce42                	sw	a6,28(sp)
   13c6c:	d002                	sw	zero,32(sp)
   13c6e:	bfafe0ef          	jal	12068 <_vfprintf_r>
   13c72:	84aa                	mv	s1,a0
   13c74:	02055963          	bgez	a0,13ca6 <__sbprintf+0x88>
   13c78:	01415783          	lhu	a5,20(sp)
   13c7c:	0407f793          	andi	a5,a5,64
   13c80:	c799                	beqz	a5,13c8e <__sbprintf+0x70>
   13c82:	00c45783          	lhu	a5,12(s0)
   13c86:	0407e793          	ori	a5,a5,64
   13c8a:	00f41623          	sh	a5,12(s0)
   13c8e:	47c12083          	lw	ra,1148(sp)
   13c92:	47812403          	lw	s0,1144(sp)
   13c96:	47012903          	lw	s2,1136(sp)
   13c9a:	8526                	mv	a0,s1
   13c9c:	47412483          	lw	s1,1140(sp)
   13ca0:	48010113          	addi	sp,sp,1152
   13ca4:	8082                	ret
   13ca6:	002c                	addi	a1,sp,8
   13ca8:	854a                	mv	a0,s2
   13caa:	2c9d                	jal	13f20 <_fflush_r>
   13cac:	d571                	beqz	a0,13c78 <__sbprintf+0x5a>
   13cae:	54fd                	li	s1,-1
   13cb0:	b7e1                	j	13c78 <__sbprintf+0x5a>

00013cb2 <__sprint_r>:
   13cb2:	461c                	lw	a5,8(a2)
   13cb4:	1141                	addi	sp,sp,-16
   13cb6:	c422                	sw	s0,8(sp)
   13cb8:	c606                	sw	ra,12(sp)
   13cba:	8432                	mv	s0,a2
   13cbc:	eb81                	bnez	a5,13ccc <__sprint_r+0x1a>
   13cbe:	40b2                	lw	ra,12(sp)
   13cc0:	00042223          	sw	zero,4(s0)
   13cc4:	4422                	lw	s0,8(sp)
   13cc6:	4501                	li	a0,0
   13cc8:	0141                	addi	sp,sp,16
   13cca:	8082                	ret
   13ccc:	2cf1                	jal	13fa8 <__sfvwrite_r>
   13cce:	40b2                	lw	ra,12(sp)
   13cd0:	00042423          	sw	zero,8(s0)
   13cd4:	00042223          	sw	zero,4(s0)
   13cd8:	4422                	lw	s0,8(sp)
   13cda:	0141                	addi	sp,sp,16
   13cdc:	8082                	ret

00013cde <_fclose_r>:
   13cde:	1141                	addi	sp,sp,-16
   13ce0:	c606                	sw	ra,12(sp)
   13ce2:	c04a                	sw	s2,0(sp)
   13ce4:	cd89                	beqz	a1,13cfe <_fclose_r+0x20>
   13ce6:	c422                	sw	s0,8(sp)
   13ce8:	c226                	sw	s1,4(sp)
   13cea:	842e                	mv	s0,a1
   13cec:	84aa                	mv	s1,a0
   13cee:	c119                	beqz	a0,13cf4 <_fclose_r+0x16>
   13cf0:	595c                	lw	a5,52(a0)
   13cf2:	c7d1                	beqz	a5,13d7e <_fclose_r+0xa0>
   13cf4:	00c41783          	lh	a5,12(s0)
   13cf8:	eb89                	bnez	a5,13d0a <_fclose_r+0x2c>
   13cfa:	4422                	lw	s0,8(sp)
   13cfc:	4492                	lw	s1,4(sp)
   13cfe:	40b2                	lw	ra,12(sp)
   13d00:	4901                	li	s2,0
   13d02:	854a                	mv	a0,s2
   13d04:	4902                	lw	s2,0(sp)
   13d06:	0141                	addi	sp,sp,16
   13d08:	8082                	ret
   13d0a:	85a2                	mv	a1,s0
   13d0c:	8526                	mv	a0,s1
   13d0e:	28bd                	jal	13d8c <__sflush_r>
   13d10:	545c                	lw	a5,44(s0)
   13d12:	892a                	mv	s2,a0
   13d14:	c791                	beqz	a5,13d20 <_fclose_r+0x42>
   13d16:	4c4c                	lw	a1,28(s0)
   13d18:	8526                	mv	a0,s1
   13d1a:	9782                	jalr	a5
   13d1c:	04054663          	bltz	a0,13d68 <_fclose_r+0x8a>
   13d20:	00c45783          	lhu	a5,12(s0)
   13d24:	0807f793          	andi	a5,a5,128
   13d28:	e7b1                	bnez	a5,13d74 <_fclose_r+0x96>
   13d2a:	580c                	lw	a1,48(s0)
   13d2c:	c991                	beqz	a1,13d40 <_fclose_r+0x62>
   13d2e:	04040793          	addi	a5,s0,64
   13d32:	00f58563          	beq	a1,a5,13d3c <_fclose_r+0x5e>
   13d36:	8526                	mv	a0,s1
   13d38:	b67fd0ef          	jal	1189e <_free_r>
   13d3c:	02042823          	sw	zero,48(s0)
   13d40:	406c                	lw	a1,68(s0)
   13d42:	c591                	beqz	a1,13d4e <_fclose_r+0x70>
   13d44:	8526                	mv	a0,s1
   13d46:	b59fd0ef          	jal	1189e <_free_r>
   13d4a:	04042223          	sw	zero,68(s0)
   13d4e:	b32fd0ef          	jal	11080 <__sfp_lock_acquire>
   13d52:	00041623          	sh	zero,12(s0)
   13d56:	b2cfd0ef          	jal	11082 <__sfp_lock_release>
   13d5a:	40b2                	lw	ra,12(sp)
   13d5c:	4422                	lw	s0,8(sp)
   13d5e:	4492                	lw	s1,4(sp)
   13d60:	854a                	mv	a0,s2
   13d62:	4902                	lw	s2,0(sp)
   13d64:	0141                	addi	sp,sp,16
   13d66:	8082                	ret
   13d68:	00c45783          	lhu	a5,12(s0)
   13d6c:	597d                	li	s2,-1
   13d6e:	0807f793          	andi	a5,a5,128
   13d72:	dfc5                	beqz	a5,13d2a <_fclose_r+0x4c>
   13d74:	480c                	lw	a1,16(s0)
   13d76:	8526                	mv	a0,s1
   13d78:	b27fd0ef          	jal	1189e <_free_r>
   13d7c:	b77d                	j	13d2a <_fclose_r+0x4c>
   13d7e:	aecfd0ef          	jal	1106a <__sinit>
   13d82:	bf8d                	j	13cf4 <_fclose_r+0x16>

00013d84 <fclose>:
   13d84:	85aa                	mv	a1,a0
   13d86:	f141a503          	lw	a0,-236(gp) # 1caf4 <_impure_ptr>
   13d8a:	bf91                	j	13cde <_fclose_r>

00013d8c <__sflush_r>:
   13d8c:	00c59703          	lh	a4,12(a1)
   13d90:	1101                	addi	sp,sp,-32
   13d92:	cc22                	sw	s0,24(sp)
   13d94:	c64e                	sw	s3,12(sp)
   13d96:	ce06                	sw	ra,28(sp)
   13d98:	00877793          	andi	a5,a4,8
   13d9c:	842e                	mv	s0,a1
   13d9e:	89aa                	mv	s3,a0
   13da0:	e7e1                	bnez	a5,13e68 <__sflush_r+0xdc>
   13da2:	6785                	lui	a5,0x1
   13da4:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   13da8:	41d4                	lw	a3,4(a1)
   13daa:	8fd9                	or	a5,a5,a4
   13dac:	00f59623          	sh	a5,12(a1)
   13db0:	10d05563          	blez	a3,13eba <__sflush_r+0x12e>
   13db4:	02842803          	lw	a6,40(s0)
   13db8:	0a080263          	beqz	a6,13e5c <__sflush_r+0xd0>
   13dbc:	ca26                	sw	s1,20(sp)
   13dbe:	01371693          	slli	a3,a4,0x13
   13dc2:	0009a483          	lw	s1,0(s3)
   13dc6:	0009a023          	sw	zero,0(s3)
   13dca:	4c4c                	lw	a1,28(s0)
   13dcc:	0e06ce63          	bltz	a3,13ec8 <__sflush_r+0x13c>
   13dd0:	4601                	li	a2,0
   13dd2:	4685                	li	a3,1
   13dd4:	854e                	mv	a0,s3
   13dd6:	9802                	jalr	a6
   13dd8:	57fd                	li	a5,-1
   13dda:	862a                	mv	a2,a0
   13ddc:	10f50f63          	beq	a0,a5,13efa <__sflush_r+0x16e>
   13de0:	00c41783          	lh	a5,12(s0)
   13de4:	02842803          	lw	a6,40(s0)
   13de8:	4c4c                	lw	a1,28(s0)
   13dea:	8b91                	andi	a5,a5,4
   13dec:	c799                	beqz	a5,13dfa <__sflush_r+0x6e>
   13dee:	4058                	lw	a4,4(s0)
   13df0:	581c                	lw	a5,48(s0)
   13df2:	8e19                	sub	a2,a2,a4
   13df4:	c399                	beqz	a5,13dfa <__sflush_r+0x6e>
   13df6:	5c5c                	lw	a5,60(s0)
   13df8:	8e1d                	sub	a2,a2,a5
   13dfa:	4681                	li	a3,0
   13dfc:	854e                	mv	a0,s3
   13dfe:	9802                	jalr	a6
   13e00:	57fd                	li	a5,-1
   13e02:	0cf51563          	bne	a0,a5,13ecc <__sflush_r+0x140>
   13e06:	0009a683          	lw	a3,0(s3)
   13e0a:	47f5                	li	a5,29
   13e0c:	00c41703          	lh	a4,12(s0)
   13e10:	10d7e163          	bltu	a5,a3,13f12 <__sflush_r+0x186>
   13e14:	204007b7          	lui	a5,0x20400
   13e18:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e31d5>
   13e1a:	00d7d7b3          	srl	a5,a5,a3
   13e1e:	8b85                	andi	a5,a5,1
   13e20:	cbed                	beqz	a5,13f12 <__sflush_r+0x186>
   13e22:	4810                	lw	a2,16(s0)
   13e24:	77fd                	lui	a5,0xfffff
   13e26:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe29d3>
   13e2a:	8ff9                	and	a5,a5,a4
   13e2c:	00f41623          	sh	a5,12(s0)
   13e30:	00042223          	sw	zero,4(s0)
   13e34:	c010                	sw	a2,0(s0)
   13e36:	01371793          	slli	a5,a4,0x13
   13e3a:	0007d363          	bgez	a5,13e40 <__sflush_r+0xb4>
   13e3e:	c6dd                	beqz	a3,13eec <__sflush_r+0x160>
   13e40:	580c                	lw	a1,48(s0)
   13e42:	0099a023          	sw	s1,0(s3)
   13e46:	c9c5                	beqz	a1,13ef6 <__sflush_r+0x16a>
   13e48:	04040793          	addi	a5,s0,64
   13e4c:	00f58563          	beq	a1,a5,13e56 <__sflush_r+0xca>
   13e50:	854e                	mv	a0,s3
   13e52:	a4dfd0ef          	jal	1189e <_free_r>
   13e56:	44d2                	lw	s1,20(sp)
   13e58:	02042823          	sw	zero,48(s0)
   13e5c:	4501                	li	a0,0
   13e5e:	40f2                	lw	ra,28(sp)
   13e60:	4462                	lw	s0,24(sp)
   13e62:	49b2                	lw	s3,12(sp)
   13e64:	6105                	addi	sp,sp,32
   13e66:	8082                	ret
   13e68:	c84a                	sw	s2,16(sp)
   13e6a:	0105a903          	lw	s2,16(a1)
   13e6e:	04090b63          	beqz	s2,13ec4 <__sflush_r+0x138>
   13e72:	ca26                	sw	s1,20(sp)
   13e74:	4184                	lw	s1,0(a1)
   13e76:	8b0d                	andi	a4,a4,3
   13e78:	0125a023          	sw	s2,0(a1)
   13e7c:	412484b3          	sub	s1,s1,s2
   13e80:	4781                	li	a5,0
   13e82:	e311                	bnez	a4,13e86 <__sflush_r+0xfa>
   13e84:	49dc                	lw	a5,20(a1)
   13e86:	c41c                	sw	a5,8(s0)
   13e88:	00904663          	bgtz	s1,13e94 <__sflush_r+0x108>
   13e8c:	a81d                	j	13ec2 <__sflush_r+0x136>
   13e8e:	992a                	add	s2,s2,a0
   13e90:	02905963          	blez	s1,13ec2 <__sflush_r+0x136>
   13e94:	505c                	lw	a5,36(s0)
   13e96:	4c4c                	lw	a1,28(s0)
   13e98:	86a6                	mv	a3,s1
   13e9a:	864a                	mv	a2,s2
   13e9c:	854e                	mv	a0,s3
   13e9e:	9782                	jalr	a5
   13ea0:	8c89                	sub	s1,s1,a0
   13ea2:	fea046e3          	bgtz	a0,13e8e <__sflush_r+0x102>
   13ea6:	00c41703          	lh	a4,12(s0)
   13eaa:	4942                	lw	s2,16(sp)
   13eac:	04076713          	ori	a4,a4,64
   13eb0:	44d2                	lw	s1,20(sp)
   13eb2:	00e41623          	sh	a4,12(s0)
   13eb6:	557d                	li	a0,-1
   13eb8:	b75d                	j	13e5e <__sflush_r+0xd2>
   13eba:	5dd4                	lw	a3,60(a1)
   13ebc:	eed04ce3          	bgtz	a3,13db4 <__sflush_r+0x28>
   13ec0:	bf71                	j	13e5c <__sflush_r+0xd0>
   13ec2:	44d2                	lw	s1,20(sp)
   13ec4:	4942                	lw	s2,16(sp)
   13ec6:	bf59                	j	13e5c <__sflush_r+0xd0>
   13ec8:	4830                	lw	a2,80(s0)
   13eca:	b705                	j	13dea <__sflush_r+0x5e>
   13ecc:	00c41703          	lh	a4,12(s0)
   13ed0:	4814                	lw	a3,16(s0)
   13ed2:	77fd                	lui	a5,0xfffff
   13ed4:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe29d3>
   13ed8:	8ff9                	and	a5,a5,a4
   13eda:	00f41623          	sh	a5,12(s0)
   13ede:	00042223          	sw	zero,4(s0)
   13ee2:	c014                	sw	a3,0(s0)
   13ee4:	01371793          	slli	a5,a4,0x13
   13ee8:	f407dce3          	bgez	a5,13e40 <__sflush_r+0xb4>
   13eec:	580c                	lw	a1,48(s0)
   13eee:	c828                	sw	a0,80(s0)
   13ef0:	0099a023          	sw	s1,0(s3)
   13ef4:	f9b1                	bnez	a1,13e48 <__sflush_r+0xbc>
   13ef6:	44d2                	lw	s1,20(sp)
   13ef8:	b795                	j	13e5c <__sflush_r+0xd0>
   13efa:	0009a783          	lw	a5,0(s3)
   13efe:	ee0781e3          	beqz	a5,13de0 <__sflush_r+0x54>
   13f02:	4775                	li	a4,29
   13f04:	00e78a63          	beq	a5,a4,13f18 <__sflush_r+0x18c>
   13f08:	4759                	li	a4,22
   13f0a:	00e78763          	beq	a5,a4,13f18 <__sflush_r+0x18c>
   13f0e:	00c41703          	lh	a4,12(s0)
   13f12:	04076713          	ori	a4,a4,64
   13f16:	bf69                	j	13eb0 <__sflush_r+0x124>
   13f18:	0099a023          	sw	s1,0(s3)
   13f1c:	44d2                	lw	s1,20(sp)
   13f1e:	bf3d                	j	13e5c <__sflush_r+0xd0>

00013f20 <_fflush_r>:
   13f20:	1101                	addi	sp,sp,-32
   13f22:	cc22                	sw	s0,24(sp)
   13f24:	ce06                	sw	ra,28(sp)
   13f26:	842a                	mv	s0,a0
   13f28:	c119                	beqz	a0,13f2e <_fflush_r+0xe>
   13f2a:	595c                	lw	a5,52(a0)
   13f2c:	cf91                	beqz	a5,13f48 <_fflush_r+0x28>
   13f2e:	00c59783          	lh	a5,12(a1)
   13f32:	e791                	bnez	a5,13f3e <_fflush_r+0x1e>
   13f34:	40f2                	lw	ra,28(sp)
   13f36:	4462                	lw	s0,24(sp)
   13f38:	4501                	li	a0,0
   13f3a:	6105                	addi	sp,sp,32
   13f3c:	8082                	ret
   13f3e:	8522                	mv	a0,s0
   13f40:	4462                	lw	s0,24(sp)
   13f42:	40f2                	lw	ra,28(sp)
   13f44:	6105                	addi	sp,sp,32
   13f46:	b599                	j	13d8c <__sflush_r>
   13f48:	c62e                	sw	a1,12(sp)
   13f4a:	920fd0ef          	jal	1106a <__sinit>
   13f4e:	45b2                	lw	a1,12(sp)
   13f50:	bff9                	j	13f2e <_fflush_r+0xe>

00013f52 <fflush>:
   13f52:	cd05                	beqz	a0,13f8a <fflush+0x38>
   13f54:	85aa                	mv	a1,a0
   13f56:	f141a503          	lw	a0,-236(gp) # 1caf4 <_impure_ptr>
   13f5a:	c119                	beqz	a0,13f60 <fflush+0xe>
   13f5c:	595c                	lw	a5,52(a0)
   13f5e:	c799                	beqz	a5,13f6c <fflush+0x1a>
   13f60:	00c59783          	lh	a5,12(a1)
   13f64:	e399                	bnez	a5,13f6a <fflush+0x18>
   13f66:	4501                	li	a0,0
   13f68:	8082                	ret
   13f6a:	b50d                	j	13d8c <__sflush_r>
   13f6c:	1101                	addi	sp,sp,-32
   13f6e:	c62e                	sw	a1,12(sp)
   13f70:	c42a                	sw	a0,8(sp)
   13f72:	ce06                	sw	ra,28(sp)
   13f74:	8f6fd0ef          	jal	1106a <__sinit>
   13f78:	45b2                	lw	a1,12(sp)
   13f7a:	4522                	lw	a0,8(sp)
   13f7c:	00c59783          	lh	a5,12(a1)
   13f80:	e385                	bnez	a5,13fa0 <fflush+0x4e>
   13f82:	40f2                	lw	ra,28(sp)
   13f84:	4501                	li	a0,0
   13f86:	6105                	addi	sp,sp,32
   13f88:	8082                	ret
   13f8a:	6671                	lui	a2,0x1c
   13f8c:	65d1                	lui	a1,0x14
   13f8e:	6571                	lui	a0,0x1c
   13f90:	3e060613          	addi	a2,a2,992 # 1c3e0 <__sglue>
   13f94:	f2058593          	addi	a1,a1,-224 # 13f20 <_fflush_r>
   13f98:	3f050513          	addi	a0,a0,1008 # 1c3f0 <_impure_data>
   13f9c:	908fd06f          	j	110a4 <_fwalk_sglue>
   13fa0:	40f2                	lw	ra,28(sp)
   13fa2:	6105                	addi	sp,sp,32
   13fa4:	de9ff06f          	j	13d8c <__sflush_r>

00013fa8 <__sfvwrite_r>:
   13fa8:	461c                	lw	a5,8(a2)
   13faa:	1c078e63          	beqz	a5,14186 <__sfvwrite_r+0x1de>
   13fae:	00c59683          	lh	a3,12(a1)
   13fb2:	7179                	addi	sp,sp,-48
   13fb4:	d422                	sw	s0,40(sp)
   13fb6:	cc52                	sw	s4,24(sp)
   13fb8:	c85a                	sw	s6,16(sp)
   13fba:	d606                	sw	ra,44(sp)
   13fbc:	0086f793          	andi	a5,a3,8
   13fc0:	8b32                	mv	s6,a2
   13fc2:	8a2a                	mv	s4,a0
   13fc4:	842e                	mv	s0,a1
   13fc6:	c7ad                	beqz	a5,14030 <__sfvwrite_r+0x88>
   13fc8:	499c                	lw	a5,16(a1)
   13fca:	c3bd                	beqz	a5,14030 <__sfvwrite_r+0x88>
   13fcc:	d226                	sw	s1,36(sp)
   13fce:	d04a                	sw	s2,32(sp)
   13fd0:	ce4e                	sw	s3,28(sp)
   13fd2:	ca56                	sw	s5,20(sp)
   13fd4:	0026f793          	andi	a5,a3,2
   13fd8:	000b2483          	lw	s1,0(s6)
   13fdc:	cbb5                	beqz	a5,14050 <__sfvwrite_r+0xa8>
   13fde:	505c                	lw	a5,36(s0)
   13fe0:	4c4c                	lw	a1,28(s0)
   13fe2:	80000ab7          	lui	s5,0x80000
   13fe6:	4981                	li	s3,0
   13fe8:	4901                	li	s2,0
   13fea:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe2dd4>
   13fee:	864e                	mv	a2,s3
   13ff0:	8552                	mv	a0,s4
   13ff2:	02090963          	beqz	s2,14024 <__sfvwrite_r+0x7c>
   13ff6:	86ca                	mv	a3,s2
   13ff8:	012af363          	bgeu	s5,s2,13ffe <__sfvwrite_r+0x56>
   13ffc:	86d6                	mv	a3,s5
   13ffe:	9782                	jalr	a5
   14000:	2ea05063          	blez	a0,142e0 <__sfvwrite_r+0x338>
   14004:	008b2783          	lw	a5,8(s6)
   14008:	99aa                	add	s3,s3,a0
   1400a:	40a90933          	sub	s2,s2,a0
   1400e:	8f89                	sub	a5,a5,a0
   14010:	00fb2423          	sw	a5,8(s6)
   14014:	12078663          	beqz	a5,14140 <__sfvwrite_r+0x198>
   14018:	505c                	lw	a5,36(s0)
   1401a:	4c4c                	lw	a1,28(s0)
   1401c:	864e                	mv	a2,s3
   1401e:	8552                	mv	a0,s4
   14020:	fc091be3          	bnez	s2,13ff6 <__sfvwrite_r+0x4e>
   14024:	0004a983          	lw	s3,0(s1)
   14028:	0044a903          	lw	s2,4(s1)
   1402c:	04a1                	addi	s1,s1,8
   1402e:	b7c1                	j	13fee <__sfvwrite_r+0x46>
   14030:	85a2                	mv	a1,s0
   14032:	8552                	mv	a0,s4
   14034:	2985                	jal	144a4 <__swsetup_r>
   14036:	14051163          	bnez	a0,14178 <__sfvwrite_r+0x1d0>
   1403a:	00c41683          	lh	a3,12(s0)
   1403e:	d226                	sw	s1,36(sp)
   14040:	d04a                	sw	s2,32(sp)
   14042:	ce4e                	sw	s3,28(sp)
   14044:	ca56                	sw	s5,20(sp)
   14046:	0026f793          	andi	a5,a3,2
   1404a:	000b2483          	lw	s1,0(s6)
   1404e:	fbc1                	bnez	a5,13fde <__sfvwrite_r+0x36>
   14050:	c65e                	sw	s7,12(sp)
   14052:	c462                	sw	s8,8(sp)
   14054:	0016f793          	andi	a5,a3,1
   14058:	12079963          	bnez	a5,1418a <__sfvwrite_r+0x1e2>
   1405c:	401c                	lw	a5,0(s0)
   1405e:	4418                	lw	a4,8(s0)
   14060:	80000ab7          	lui	s5,0x80000
   14064:	c266                	sw	s9,4(sp)
   14066:	4b81                	li	s7,0
   14068:	4981                	li	s3,0
   1406a:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe31d3>
   1406c:	853e                	mv	a0,a5
   1406e:	8c3a                	mv	s8,a4
   14070:	0a098f63          	beqz	s3,1412e <__sfvwrite_r+0x186>
   14074:	2006f613          	andi	a2,a3,512
   14078:	1a060863          	beqz	a2,14228 <__sfvwrite_r+0x280>
   1407c:	8cba                	mv	s9,a4
   1407e:	20e9e963          	bltu	s3,a4,14290 <__sfvwrite_r+0x2e8>
   14082:	4806f713          	andi	a4,a3,1152
   14086:	cb25                	beqz	a4,140f6 <__sfvwrite_r+0x14e>
   14088:	4850                	lw	a2,20(s0)
   1408a:	480c                	lw	a1,16(s0)
   1408c:	00161713          	slli	a4,a2,0x1
   14090:	9732                	add	a4,a4,a2
   14092:	40b78933          	sub	s2,a5,a1
   14096:	01f75c13          	srli	s8,a4,0x1f
   1409a:	9c3a                	add	s8,s8,a4
   1409c:	00190793          	addi	a5,s2,1
   140a0:	401c5c13          	srai	s8,s8,0x1
   140a4:	97ce                	add	a5,a5,s3
   140a6:	8662                	mv	a2,s8
   140a8:	00fc7463          	bgeu	s8,a5,140b0 <__sfvwrite_r+0x108>
   140ac:	8c3e                	mv	s8,a5
   140ae:	863e                	mv	a2,a5
   140b0:	4006f693          	andi	a3,a3,1024
   140b4:	1e068d63          	beqz	a3,142ae <__sfvwrite_r+0x306>
   140b8:	85b2                	mv	a1,a2
   140ba:	8552                	mv	a0,s4
   140bc:	a05fd0ef          	jal	11ac0 <_malloc_r>
   140c0:	8caa                	mv	s9,a0
   140c2:	22050263          	beqz	a0,142e6 <__sfvwrite_r+0x33e>
   140c6:	480c                	lw	a1,16(s0)
   140c8:	864a                	mv	a2,s2
   140ca:	c84fd0ef          	jal	1154e <memcpy>
   140ce:	00c45783          	lhu	a5,12(s0)
   140d2:	b7f7f793          	andi	a5,a5,-1153
   140d6:	0807e793          	ori	a5,a5,128
   140da:	00f41623          	sh	a5,12(s0)
   140de:	012c8533          	add	a0,s9,s2
   140e2:	412c07b3          	sub	a5,s8,s2
   140e6:	01942823          	sw	s9,16(s0)
   140ea:	01842a23          	sw	s8,20(s0)
   140ee:	c008                	sw	a0,0(s0)
   140f0:	8c4e                	mv	s8,s3
   140f2:	c41c                	sw	a5,8(s0)
   140f4:	8cce                	mv	s9,s3
   140f6:	8666                	mv	a2,s9
   140f8:	85de                	mv	a1,s7
   140fa:	2521                	jal	14702 <memmove>
   140fc:	4418                	lw	a4,8(s0)
   140fe:	401c                	lw	a5,0(s0)
   14100:	894e                	mv	s2,s3
   14102:	41870733          	sub	a4,a4,s8
   14106:	97e6                	add	a5,a5,s9
   14108:	c418                	sw	a4,8(s0)
   1410a:	c01c                	sw	a5,0(s0)
   1410c:	4981                	li	s3,0
   1410e:	008b2783          	lw	a5,8(s6)
   14112:	9bca                	add	s7,s7,s2
   14114:	412787b3          	sub	a5,a5,s2
   14118:	00fb2423          	sw	a5,8(s6)
   1411c:	cf99                	beqz	a5,1413a <__sfvwrite_r+0x192>
   1411e:	401c                	lw	a5,0(s0)
   14120:	4418                	lw	a4,8(s0)
   14122:	00c41683          	lh	a3,12(s0)
   14126:	853e                	mv	a0,a5
   14128:	8c3a                	mv	s8,a4
   1412a:	f40995e3          	bnez	s3,14074 <__sfvwrite_r+0xcc>
   1412e:	0004ab83          	lw	s7,0(s1)
   14132:	0044a983          	lw	s3,4(s1)
   14136:	04a1                	addi	s1,s1,8
   14138:	bf15                	j	1406c <__sfvwrite_r+0xc4>
   1413a:	4bb2                	lw	s7,12(sp)
   1413c:	4c22                	lw	s8,8(sp)
   1413e:	4c92                	lw	s9,4(sp)
   14140:	50b2                	lw	ra,44(sp)
   14142:	5422                	lw	s0,40(sp)
   14144:	5492                	lw	s1,36(sp)
   14146:	5902                	lw	s2,32(sp)
   14148:	49f2                	lw	s3,28(sp)
   1414a:	4ad2                	lw	s5,20(sp)
   1414c:	4a62                	lw	s4,24(sp)
   1414e:	4b42                	lw	s6,16(sp)
   14150:	4501                	li	a0,0
   14152:	6145                	addi	sp,sp,48
   14154:	8082                	ret
   14156:	85a2                	mv	a1,s0
   14158:	8552                	mv	a0,s4
   1415a:	dc7ff0ef          	jal	13f20 <_fflush_r>
   1415e:	c93d                	beqz	a0,141d4 <__sfvwrite_r+0x22c>
   14160:	00c41783          	lh	a5,12(s0)
   14164:	4bb2                	lw	s7,12(sp)
   14166:	4c22                	lw	s8,8(sp)
   14168:	5492                	lw	s1,36(sp)
   1416a:	5902                	lw	s2,32(sp)
   1416c:	49f2                	lw	s3,28(sp)
   1416e:	4ad2                	lw	s5,20(sp)
   14170:	0407e793          	ori	a5,a5,64
   14174:	00f41623          	sh	a5,12(s0)
   14178:	50b2                	lw	ra,44(sp)
   1417a:	5422                	lw	s0,40(sp)
   1417c:	4a62                	lw	s4,24(sp)
   1417e:	4b42                	lw	s6,16(sp)
   14180:	557d                	li	a0,-1
   14182:	6145                	addi	sp,sp,48
   14184:	8082                	ret
   14186:	4501                	li	a0,0
   14188:	8082                	ret
   1418a:	4a81                	li	s5,0
   1418c:	4501                	li	a0,0
   1418e:	4c01                	li	s8,0
   14190:	4981                	li	s3,0
   14192:	04098e63          	beqz	s3,141ee <__sfvwrite_r+0x246>
   14196:	c525                	beqz	a0,141fe <__sfvwrite_r+0x256>
   14198:	87d6                	mv	a5,s5
   1419a:	8bce                	mv	s7,s3
   1419c:	0137f363          	bgeu	a5,s3,141a2 <__sfvwrite_r+0x1fa>
   141a0:	8bbe                	mv	s7,a5
   141a2:	4008                	lw	a0,0(s0)
   141a4:	481c                	lw	a5,16(s0)
   141a6:	00842903          	lw	s2,8(s0)
   141aa:	4854                	lw	a3,20(s0)
   141ac:	00a7f563          	bgeu	a5,a0,141b6 <__sfvwrite_r+0x20e>
   141b0:	9936                	add	s2,s2,a3
   141b2:	05794f63          	blt	s2,s7,14210 <__sfvwrite_r+0x268>
   141b6:	0edbc063          	blt	s7,a3,14296 <__sfvwrite_r+0x2ee>
   141ba:	505c                	lw	a5,36(s0)
   141bc:	4c4c                	lw	a1,28(s0)
   141be:	8662                	mv	a2,s8
   141c0:	8552                	mv	a0,s4
   141c2:	9782                	jalr	a5
   141c4:	892a                	mv	s2,a0
   141c6:	f8a05de3          	blez	a0,14160 <__sfvwrite_r+0x1b8>
   141ca:	412a8ab3          	sub	s5,s5,s2
   141ce:	4505                	li	a0,1
   141d0:	f80a83e3          	beqz	s5,14156 <__sfvwrite_r+0x1ae>
   141d4:	008b2783          	lw	a5,8(s6)
   141d8:	9c4a                	add	s8,s8,s2
   141da:	412989b3          	sub	s3,s3,s2
   141de:	412787b3          	sub	a5,a5,s2
   141e2:	00fb2423          	sw	a5,8(s6)
   141e6:	f7d5                	bnez	a5,14192 <__sfvwrite_r+0x1ea>
   141e8:	4bb2                	lw	s7,12(sp)
   141ea:	4c22                	lw	s8,8(sp)
   141ec:	bf91                	j	14140 <__sfvwrite_r+0x198>
   141ee:	0044a983          	lw	s3,4(s1)
   141f2:	87a6                	mv	a5,s1
   141f4:	04a1                	addi	s1,s1,8
   141f6:	fe098ce3          	beqz	s3,141ee <__sfvwrite_r+0x246>
   141fa:	0007ac03          	lw	s8,0(a5)
   141fe:	864e                	mv	a2,s3
   14200:	45a9                	li	a1,10
   14202:	8562                	mv	a0,s8
   14204:	2ead                	jal	1457e <memchr>
   14206:	c969                	beqz	a0,142d8 <__sfvwrite_r+0x330>
   14208:	0505                	addi	a0,a0,1
   1420a:	41850ab3          	sub	s5,a0,s8
   1420e:	b769                	j	14198 <__sfvwrite_r+0x1f0>
   14210:	85e2                	mv	a1,s8
   14212:	864a                	mv	a2,s2
   14214:	21fd                	jal	14702 <memmove>
   14216:	401c                	lw	a5,0(s0)
   14218:	85a2                	mv	a1,s0
   1421a:	8552                	mv	a0,s4
   1421c:	97ca                	add	a5,a5,s2
   1421e:	c01c                	sw	a5,0(s0)
   14220:	d01ff0ef          	jal	13f20 <_fflush_r>
   14224:	d15d                	beqz	a0,141ca <__sfvwrite_r+0x222>
   14226:	bf2d                	j	14160 <__sfvwrite_r+0x1b8>
   14228:	4814                	lw	a3,16(s0)
   1422a:	02f6e863          	bltu	a3,a5,1425a <__sfvwrite_r+0x2b2>
   1422e:	4850                	lw	a2,20(s0)
   14230:	02c9e563          	bltu	s3,a2,1425a <__sfvwrite_r+0x2b2>
   14234:	87ce                	mv	a5,s3
   14236:	013af363          	bgeu	s5,s3,1423c <__sfvwrite_r+0x294>
   1423a:	87d6                	mv	a5,s5
   1423c:	02c7e6b3          	rem	a3,a5,a2
   14240:	5058                	lw	a4,36(s0)
   14242:	4c4c                	lw	a1,28(s0)
   14244:	865e                	mv	a2,s7
   14246:	8552                	mv	a0,s4
   14248:	40d786b3          	sub	a3,a5,a3
   1424c:	9702                	jalr	a4
   1424e:	892a                	mv	s2,a0
   14250:	02a05a63          	blez	a0,14284 <__sfvwrite_r+0x2dc>
   14254:	412989b3          	sub	s3,s3,s2
   14258:	bd5d                	j	1410e <__sfvwrite_r+0x166>
   1425a:	893a                	mv	s2,a4
   1425c:	00e9f363          	bgeu	s3,a4,14262 <__sfvwrite_r+0x2ba>
   14260:	894e                	mv	s2,s3
   14262:	853e                	mv	a0,a5
   14264:	864a                	mv	a2,s2
   14266:	85de                	mv	a1,s7
   14268:	2969                	jal	14702 <memmove>
   1426a:	4418                	lw	a4,8(s0)
   1426c:	401c                	lw	a5,0(s0)
   1426e:	41270733          	sub	a4,a4,s2
   14272:	97ca                	add	a5,a5,s2
   14274:	c418                	sw	a4,8(s0)
   14276:	c01c                	sw	a5,0(s0)
   14278:	ff71                	bnez	a4,14254 <__sfvwrite_r+0x2ac>
   1427a:	85a2                	mv	a1,s0
   1427c:	8552                	mv	a0,s4
   1427e:	ca3ff0ef          	jal	13f20 <_fflush_r>
   14282:	d969                	beqz	a0,14254 <__sfvwrite_r+0x2ac>
   14284:	00c41783          	lh	a5,12(s0)
   14288:	4bb2                	lw	s7,12(sp)
   1428a:	4c22                	lw	s8,8(sp)
   1428c:	4c92                	lw	s9,4(sp)
   1428e:	bde9                	j	14168 <__sfvwrite_r+0x1c0>
   14290:	8c4e                	mv	s8,s3
   14292:	8cce                	mv	s9,s3
   14294:	b58d                	j	140f6 <__sfvwrite_r+0x14e>
   14296:	865e                	mv	a2,s7
   14298:	85e2                	mv	a1,s8
   1429a:	21a5                	jal	14702 <memmove>
   1429c:	4418                	lw	a4,8(s0)
   1429e:	401c                	lw	a5,0(s0)
   142a0:	895e                	mv	s2,s7
   142a2:	41770733          	sub	a4,a4,s7
   142a6:	97de                	add	a5,a5,s7
   142a8:	c418                	sw	a4,8(s0)
   142aa:	c01c                	sw	a5,0(s0)
   142ac:	bf39                	j	141ca <__sfvwrite_r+0x222>
   142ae:	8552                	mv	a0,s4
   142b0:	770020ef          	jal	16a20 <_realloc_r>
   142b4:	8caa                	mv	s9,a0
   142b6:	e20514e3          	bnez	a0,140de <__sfvwrite_r+0x136>
   142ba:	480c                	lw	a1,16(s0)
   142bc:	8552                	mv	a0,s4
   142be:	de0fd0ef          	jal	1189e <_free_r>
   142c2:	00c41783          	lh	a5,12(s0)
   142c6:	4731                	li	a4,12
   142c8:	4bb2                	lw	s7,12(sp)
   142ca:	4c22                	lw	s8,8(sp)
   142cc:	4c92                	lw	s9,4(sp)
   142ce:	00ea2023          	sw	a4,0(s4)
   142d2:	f7f7f793          	andi	a5,a5,-129
   142d6:	bd49                	j	14168 <__sfvwrite_r+0x1c0>
   142d8:	00198793          	addi	a5,s3,1
   142dc:	8abe                	mv	s5,a5
   142de:	bd75                	j	1419a <__sfvwrite_r+0x1f2>
   142e0:	00c41783          	lh	a5,12(s0)
   142e4:	b551                	j	14168 <__sfvwrite_r+0x1c0>
   142e6:	4731                	li	a4,12
   142e8:	00c41783          	lh	a5,12(s0)
   142ec:	4bb2                	lw	s7,12(sp)
   142ee:	4c22                	lw	s8,8(sp)
   142f0:	4c92                	lw	s9,4(sp)
   142f2:	00ea2023          	sw	a4,0(s4)
   142f6:	bd8d                	j	14168 <__sfvwrite_r+0x1c0>

000142f8 <_putc_r>:
   142f8:	1101                	addi	sp,sp,-32
   142fa:	cc22                	sw	s0,24(sp)
   142fc:	ce06                	sw	ra,28(sp)
   142fe:	842a                	mv	s0,a0
   14300:	c119                	beqz	a0,14306 <_putc_r+0xe>
   14302:	595c                	lw	a5,52(a0)
   14304:	cf9d                	beqz	a5,14342 <_putc_r+0x4a>
   14306:	461c                	lw	a5,8(a2)
   14308:	17fd                	addi	a5,a5,-1
   1430a:	c61c                	sw	a5,8(a2)
   1430c:	0007da63          	bgez	a5,14320 <_putc_r+0x28>
   14310:	4e18                	lw	a4,24(a2)
   14312:	02e7c363          	blt	a5,a4,14338 <_putc_r+0x40>
   14316:	0ff5f793          	zext.b	a5,a1
   1431a:	4729                	li	a4,10
   1431c:	00e78e63          	beq	a5,a4,14338 <_putc_r+0x40>
   14320:	421c                	lw	a5,0(a2)
   14322:	0ff5f513          	zext.b	a0,a1
   14326:	00178713          	addi	a4,a5,1
   1432a:	c218                	sw	a4,0(a2)
   1432c:	00b78023          	sb	a1,0(a5)
   14330:	40f2                	lw	ra,28(sp)
   14332:	4462                	lw	s0,24(sp)
   14334:	6105                	addi	sp,sp,32
   14336:	8082                	ret
   14338:	8522                	mv	a0,s0
   1433a:	4462                	lw	s0,24(sp)
   1433c:	40f2                	lw	ra,28(sp)
   1433e:	6105                	addi	sp,sp,32
   14340:	a8a5                	j	143b8 <__swbuf_r>
   14342:	c632                	sw	a2,12(sp)
   14344:	c42e                	sw	a1,8(sp)
   14346:	d25fc0ef          	jal	1106a <__sinit>
   1434a:	4632                	lw	a2,12(sp)
   1434c:	45a2                	lw	a1,8(sp)
   1434e:	bf65                	j	14306 <_putc_r+0xe>

00014350 <putc>:
   14350:	1101                	addi	sp,sp,-32
   14352:	ca4a                	sw	s2,20(sp)
   14354:	f141a903          	lw	s2,-236(gp) # 1caf4 <_impure_ptr>
   14358:	cc26                	sw	s1,24(sp)
   1435a:	ce06                	sw	ra,28(sp)
   1435c:	84aa                	mv	s1,a0
   1435e:	00090563          	beqz	s2,14368 <putc+0x18>
   14362:	03492783          	lw	a5,52(s2)
   14366:	c3b9                	beqz	a5,143ac <putc+0x5c>
   14368:	459c                	lw	a5,8(a1)
   1436a:	17fd                	addi	a5,a5,-1
   1436c:	c59c                	sw	a5,8(a1)
   1436e:	0007da63          	bgez	a5,14382 <putc+0x32>
   14372:	4d98                	lw	a4,24(a1)
   14374:	02e7c463          	blt	a5,a4,1439c <putc+0x4c>
   14378:	0ff4f793          	zext.b	a5,s1
   1437c:	4729                	li	a4,10
   1437e:	00e78f63          	beq	a5,a4,1439c <putc+0x4c>
   14382:	419c                	lw	a5,0(a1)
   14384:	0ff4f513          	zext.b	a0,s1
   14388:	00178713          	addi	a4,a5,1
   1438c:	c198                	sw	a4,0(a1)
   1438e:	00978023          	sb	s1,0(a5)
   14392:	40f2                	lw	ra,28(sp)
   14394:	44e2                	lw	s1,24(sp)
   14396:	4952                	lw	s2,20(sp)
   14398:	6105                	addi	sp,sp,32
   1439a:	8082                	ret
   1439c:	40f2                	lw	ra,28(sp)
   1439e:	862e                	mv	a2,a1
   143a0:	854a                	mv	a0,s2
   143a2:	85a6                	mv	a1,s1
   143a4:	4952                	lw	s2,20(sp)
   143a6:	44e2                	lw	s1,24(sp)
   143a8:	6105                	addi	sp,sp,32
   143aa:	a039                	j	143b8 <__swbuf_r>
   143ac:	854a                	mv	a0,s2
   143ae:	c62e                	sw	a1,12(sp)
   143b0:	cbbfc0ef          	jal	1106a <__sinit>
   143b4:	45b2                	lw	a1,12(sp)
   143b6:	bf4d                	j	14368 <putc+0x18>

000143b8 <__swbuf_r>:
   143b8:	1101                	addi	sp,sp,-32
   143ba:	cc22                	sw	s0,24(sp)
   143bc:	ca26                	sw	s1,20(sp)
   143be:	c84a                	sw	s2,16(sp)
   143c0:	ce06                	sw	ra,28(sp)
   143c2:	892a                	mv	s2,a0
   143c4:	84ae                	mv	s1,a1
   143c6:	8432                	mv	s0,a2
   143c8:	c119                	beqz	a0,143ce <__swbuf_r+0x16>
   143ca:	595c                	lw	a5,52(a0)
   143cc:	c3f9                	beqz	a5,14492 <__swbuf_r+0xda>
   143ce:	4c18                	lw	a4,24(s0)
   143d0:	00c41783          	lh	a5,12(s0)
   143d4:	c418                	sw	a4,8(s0)
   143d6:	0087f713          	andi	a4,a5,8
   143da:	c325                	beqz	a4,1443a <__swbuf_r+0x82>
   143dc:	4818                	lw	a4,16(s0)
   143de:	cf31                	beqz	a4,1443a <__swbuf_r+0x82>
   143e0:	c64e                	sw	s3,12(sp)
   143e2:	01279693          	slli	a3,a5,0x12
   143e6:	0ff4f993          	zext.b	s3,s1
   143ea:	5078                	lw	a4,100(s0)
   143ec:	0ff4f493          	zext.b	s1,s1
   143f0:	0606d563          	bgez	a3,1445a <__swbuf_r+0xa2>
   143f4:	01271793          	slli	a5,a4,0x12
   143f8:	0807c263          	bltz	a5,1447c <__swbuf_r+0xc4>
   143fc:	4018                	lw	a4,0(s0)
   143fe:	481c                	lw	a5,16(s0)
   14400:	4854                	lw	a3,20(s0)
   14402:	40f707b3          	sub	a5,a4,a5
   14406:	06d7de63          	bge	a5,a3,14482 <__swbuf_r+0xca>
   1440a:	0785                	addi	a5,a5,1
   1440c:	4414                	lw	a3,8(s0)
   1440e:	00170613          	addi	a2,a4,1
   14412:	c010                	sw	a2,0(s0)
   14414:	16fd                	addi	a3,a3,-1
   14416:	c414                	sw	a3,8(s0)
   14418:	01370023          	sb	s3,0(a4)
   1441c:	4858                	lw	a4,20(s0)
   1441e:	04f70a63          	beq	a4,a5,14472 <__swbuf_r+0xba>
   14422:	00c45783          	lhu	a5,12(s0)
   14426:	8b85                	andi	a5,a5,1
   14428:	e3b1                	bnez	a5,1446c <__swbuf_r+0xb4>
   1442a:	49b2                	lw	s3,12(sp)
   1442c:	40f2                	lw	ra,28(sp)
   1442e:	4462                	lw	s0,24(sp)
   14430:	4942                	lw	s2,16(sp)
   14432:	8526                	mv	a0,s1
   14434:	44d2                	lw	s1,20(sp)
   14436:	6105                	addi	sp,sp,32
   14438:	8082                	ret
   1443a:	85a2                	mv	a1,s0
   1443c:	854a                	mv	a0,s2
   1443e:	209d                	jal	144a4 <__swsetup_r>
   14440:	ed1d                	bnez	a0,1447e <__swbuf_r+0xc6>
   14442:	00c41783          	lh	a5,12(s0)
   14446:	c64e                	sw	s3,12(sp)
   14448:	5078                	lw	a4,100(s0)
   1444a:	01279693          	slli	a3,a5,0x12
   1444e:	0ff4f993          	zext.b	s3,s1
   14452:	0ff4f493          	zext.b	s1,s1
   14456:	f806cfe3          	bltz	a3,143f4 <__swbuf_r+0x3c>
   1445a:	76f9                	lui	a3,0xffffe
   1445c:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe11d3>
   1445e:	6609                	lui	a2,0x2
   14460:	8fd1                	or	a5,a5,a2
   14462:	8f75                	and	a4,a4,a3
   14464:	00f41623          	sh	a5,12(s0)
   14468:	d078                	sw	a4,100(s0)
   1446a:	b769                	j	143f4 <__swbuf_r+0x3c>
   1446c:	47a9                	li	a5,10
   1446e:	faf49ee3          	bne	s1,a5,1442a <__swbuf_r+0x72>
   14472:	85a2                	mv	a1,s0
   14474:	854a                	mv	a0,s2
   14476:	aabff0ef          	jal	13f20 <_fflush_r>
   1447a:	d945                	beqz	a0,1442a <__swbuf_r+0x72>
   1447c:	49b2                	lw	s3,12(sp)
   1447e:	54fd                	li	s1,-1
   14480:	b775                	j	1442c <__swbuf_r+0x74>
   14482:	85a2                	mv	a1,s0
   14484:	854a                	mv	a0,s2
   14486:	a9bff0ef          	jal	13f20 <_fflush_r>
   1448a:	f96d                	bnez	a0,1447c <__swbuf_r+0xc4>
   1448c:	4018                	lw	a4,0(s0)
   1448e:	4785                	li	a5,1
   14490:	bfb5                	j	1440c <__swbuf_r+0x54>
   14492:	bd9fc0ef          	jal	1106a <__sinit>
   14496:	bf25                	j	143ce <__swbuf_r+0x16>

00014498 <__swbuf>:
   14498:	87aa                	mv	a5,a0
   1449a:	f141a503          	lw	a0,-236(gp) # 1caf4 <_impure_ptr>
   1449e:	862e                	mv	a2,a1
   144a0:	85be                	mv	a1,a5
   144a2:	bf19                	j	143b8 <__swbuf_r>

000144a4 <__swsetup_r>:
   144a4:	f141a783          	lw	a5,-236(gp) # 1caf4 <_impure_ptr>
   144a8:	1141                	addi	sp,sp,-16
   144aa:	c422                	sw	s0,8(sp)
   144ac:	c226                	sw	s1,4(sp)
   144ae:	c606                	sw	ra,12(sp)
   144b0:	84aa                	mv	s1,a0
   144b2:	842e                	mv	s0,a1
   144b4:	c399                	beqz	a5,144ba <__swsetup_r+0x16>
   144b6:	5bd8                	lw	a4,52(a5)
   144b8:	c75d                	beqz	a4,14566 <__swsetup_r+0xc2>
   144ba:	00c41783          	lh	a5,12(s0)
   144be:	0087f713          	andi	a4,a5,8
   144c2:	c721                	beqz	a4,1450a <__swsetup_r+0x66>
   144c4:	4818                	lw	a4,16(s0)
   144c6:	cf31                	beqz	a4,14522 <__swsetup_r+0x7e>
   144c8:	0017f693          	andi	a3,a5,1
   144cc:	ce91                	beqz	a3,144e8 <__swsetup_r+0x44>
   144ce:	4854                	lw	a3,20(s0)
   144d0:	00042423          	sw	zero,8(s0)
   144d4:	4501                	li	a0,0
   144d6:	40d006b3          	neg	a3,a3
   144da:	cc14                	sw	a3,24(s0)
   144dc:	cf11                	beqz	a4,144f8 <__swsetup_r+0x54>
   144de:	40b2                	lw	ra,12(sp)
   144e0:	4422                	lw	s0,8(sp)
   144e2:	4492                	lw	s1,4(sp)
   144e4:	0141                	addi	sp,sp,16
   144e6:	8082                	ret
   144e8:	0027f693          	andi	a3,a5,2
   144ec:	4601                	li	a2,0
   144ee:	e291                	bnez	a3,144f2 <__swsetup_r+0x4e>
   144f0:	4850                	lw	a2,20(s0)
   144f2:	c410                	sw	a2,8(s0)
   144f4:	4501                	li	a0,0
   144f6:	f765                	bnez	a4,144de <__swsetup_r+0x3a>
   144f8:	0807f713          	andi	a4,a5,128
   144fc:	d36d                	beqz	a4,144de <__swsetup_r+0x3a>
   144fe:	0407e793          	ori	a5,a5,64
   14502:	00f41623          	sh	a5,12(s0)
   14506:	557d                	li	a0,-1
   14508:	bfd9                	j	144de <__swsetup_r+0x3a>
   1450a:	0107f713          	andi	a4,a5,16
   1450e:	c325                	beqz	a4,1456e <__swsetup_r+0xca>
   14510:	0047f713          	andi	a4,a5,4
   14514:	e70d                	bnez	a4,1453e <__swsetup_r+0x9a>
   14516:	4818                	lw	a4,16(s0)
   14518:	0087e793          	ori	a5,a5,8
   1451c:	00f41623          	sh	a5,12(s0)
   14520:	f745                	bnez	a4,144c8 <__swsetup_r+0x24>
   14522:	2807f693          	andi	a3,a5,640
   14526:	20000613          	li	a2,512
   1452a:	f8c68fe3          	beq	a3,a2,144c8 <__swsetup_r+0x24>
   1452e:	85a2                	mv	a1,s0
   14530:	8526                	mv	a0,s1
   14532:	0c9020ef          	jal	16dfa <__smakebuf_r>
   14536:	00c41783          	lh	a5,12(s0)
   1453a:	4818                	lw	a4,16(s0)
   1453c:	b771                	j	144c8 <__swsetup_r+0x24>
   1453e:	580c                	lw	a1,48(s0)
   14540:	cd81                	beqz	a1,14558 <__swsetup_r+0xb4>
   14542:	04040713          	addi	a4,s0,64
   14546:	00e58763          	beq	a1,a4,14554 <__swsetup_r+0xb0>
   1454a:	8526                	mv	a0,s1
   1454c:	b52fd0ef          	jal	1189e <_free_r>
   14550:	00c41783          	lh	a5,12(s0)
   14554:	02042823          	sw	zero,48(s0)
   14558:	4818                	lw	a4,16(s0)
   1455a:	fdb7f793          	andi	a5,a5,-37
   1455e:	00042223          	sw	zero,4(s0)
   14562:	c018                	sw	a4,0(s0)
   14564:	bf55                	j	14518 <__swsetup_r+0x74>
   14566:	853e                	mv	a0,a5
   14568:	b03fc0ef          	jal	1106a <__sinit>
   1456c:	b7b9                	j	144ba <__swsetup_r+0x16>
   1456e:	4725                	li	a4,9
   14570:	c098                	sw	a4,0(s1)
   14572:	0407e793          	ori	a5,a5,64
   14576:	00f41623          	sh	a5,12(s0)
   1457a:	557d                	li	a0,-1
   1457c:	b78d                	j	144de <__swsetup_r+0x3a>

0001457e <memchr>:
   1457e:	00357793          	andi	a5,a0,3
   14582:	0ff5f693          	zext.b	a3,a1
   14586:	c395                	beqz	a5,145aa <memchr+0x2c>
   14588:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   1458c:	c605                	beqz	a2,145b4 <memchr+0x36>
   1458e:	567d                	li	a2,-1
   14590:	a801                	j	145a0 <memchr+0x22>
   14592:	0505                	addi	a0,a0,1
   14594:	00357713          	andi	a4,a0,3
   14598:	cb11                	beqz	a4,145ac <memchr+0x2e>
   1459a:	17fd                	addi	a5,a5,-1
   1459c:	00c78c63          	beq	a5,a2,145b4 <memchr+0x36>
   145a0:	00054703          	lbu	a4,0(a0)
   145a4:	fed717e3          	bne	a4,a3,14592 <memchr+0x14>
   145a8:	8082                	ret
   145aa:	87b2                	mv	a5,a2
   145ac:	470d                	li	a4,3
   145ae:	00f76563          	bltu	a4,a5,145b8 <memchr+0x3a>
   145b2:	e3b9                	bnez	a5,145f8 <memchr+0x7a>
   145b4:	4501                	li	a0,0
   145b6:	8082                	ret
   145b8:	0ff5f593          	zext.b	a1,a1
   145bc:	00859713          	slli	a4,a1,0x8
   145c0:	95ba                	add	a1,a1,a4
   145c2:	01059713          	slli	a4,a1,0x10
   145c6:	feff08b7          	lui	a7,0xfeff0
   145ca:	80808837          	lui	a6,0x80808
   145ce:	95ba                	add	a1,a1,a4
   145d0:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd30d3>
   145d4:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807eb254>
   145d8:	430d                	li	t1,3
   145da:	a029                	j	145e4 <memchr+0x66>
   145dc:	17f1                	addi	a5,a5,-4
   145de:	0511                	addi	a0,a0,4
   145e0:	fcf379e3          	bgeu	t1,a5,145b2 <memchr+0x34>
   145e4:	4118                	lw	a4,0(a0)
   145e6:	8f2d                	xor	a4,a4,a1
   145e8:	01170633          	add	a2,a4,a7
   145ec:	fff74713          	not	a4,a4
   145f0:	8f71                	and	a4,a4,a2
   145f2:	01077733          	and	a4,a4,a6
   145f6:	d37d                	beqz	a4,145dc <memchr+0x5e>
   145f8:	97aa                	add	a5,a5,a0
   145fa:	a021                	j	14602 <memchr+0x84>
   145fc:	0505                	addi	a0,a0,1
   145fe:	faa78be3          	beq	a5,a0,145b4 <memchr+0x36>
   14602:	00054703          	lbu	a4,0(a0)
   14606:	fed71be3          	bne	a4,a3,145fc <memchr+0x7e>
   1460a:	8082                	ret

0001460c <strncpy>:
   1460c:	00a5e7b3          	or	a5,a1,a0
   14610:	8b8d                	andi	a5,a5,3
   14612:	e781                	bnez	a5,1461a <strncpy+0xe>
   14614:	478d                	li	a5,3
   14616:	02c7eb63          	bltu	a5,a2,1464c <strncpy+0x40>
   1461a:	872a                	mv	a4,a0
   1461c:	a811                	j	14630 <strncpy+0x24>
   1461e:	fff5c683          	lbu	a3,-1(a1)
   14622:	fff60813          	addi	a6,a2,-1
   14626:	fed78fa3          	sb	a3,-1(a5)
   1462a:	ca81                	beqz	a3,1463a <strncpy+0x2e>
   1462c:	873e                	mv	a4,a5
   1462e:	8642                	mv	a2,a6
   14630:	0585                	addi	a1,a1,1
   14632:	00170793          	addi	a5,a4,1
   14636:	f665                	bnez	a2,1461e <strncpy+0x12>
   14638:	8082                	ret
   1463a:	9732                	add	a4,a4,a2
   1463c:	04080463          	beqz	a6,14684 <strncpy+0x78>
   14640:	0785                	addi	a5,a5,1
   14642:	fe078fa3          	sb	zero,-1(a5)
   14646:	fee79de3          	bne	a5,a4,14640 <strncpy+0x34>
   1464a:	8082                	ret
   1464c:	feff0337          	lui	t1,0xfeff0
   14650:	808088b7          	lui	a7,0x80808
   14654:	872a                	mv	a4,a0
   14656:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd30d3>
   1465a:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807eb254>
   1465e:	4e0d                	li	t3,3
   14660:	a039                	j	1466e <strncpy+0x62>
   14662:	c314                	sw	a3,0(a4)
   14664:	1671                	addi	a2,a2,-4
   14666:	0711                	addi	a4,a4,4
   14668:	0591                	addi	a1,a1,4
   1466a:	fcce73e3          	bgeu	t3,a2,14630 <strncpy+0x24>
   1466e:	4194                	lw	a3,0(a1)
   14670:	006687b3          	add	a5,a3,t1
   14674:	fff6c813          	not	a6,a3
   14678:	0107f7b3          	and	a5,a5,a6
   1467c:	0117f7b3          	and	a5,a5,a7
   14680:	d3ed                	beqz	a5,14662 <strncpy+0x56>
   14682:	b77d                	j	14630 <strncpy+0x24>
   14684:	8082                	ret

00014686 <__localeconv_l>:
   14686:	0f050513          	addi	a0,a0,240
   1468a:	8082                	ret

0001468c <_localeconv_r>:
   1468c:	e2818513          	addi	a0,gp,-472 # 1ca08 <__global_locale+0xf0>
   14690:	8082                	ret

00014692 <localeconv>:
   14692:	e2818513          	addi	a0,gp,-472 # 1ca08 <__global_locale+0xf0>
   14696:	8082                	ret

00014698 <_sbrk_r>:
   14698:	1141                	addi	sp,sp,-16
   1469a:	c422                	sw	s0,8(sp)
   1469c:	c226                	sw	s1,4(sp)
   1469e:	842a                	mv	s0,a0
   146a0:	852e                	mv	a0,a1
   146a2:	c606                	sw	ra,12(sp)
   146a4:	f201a223          	sw	zero,-220(gp) # 1cb04 <errno>
   146a8:	655030ef          	jal	184fc <_sbrk>
   146ac:	57fd                	li	a5,-1
   146ae:	00f50763          	beq	a0,a5,146bc <_sbrk_r+0x24>
   146b2:	40b2                	lw	ra,12(sp)
   146b4:	4422                	lw	s0,8(sp)
   146b6:	4492                	lw	s1,4(sp)
   146b8:	0141                	addi	sp,sp,16
   146ba:	8082                	ret
   146bc:	f241a783          	lw	a5,-220(gp) # 1cb04 <errno>
   146c0:	dbed                	beqz	a5,146b2 <_sbrk_r+0x1a>
   146c2:	40b2                	lw	ra,12(sp)
   146c4:	c01c                	sw	a5,0(s0)
   146c6:	4422                	lw	s0,8(sp)
   146c8:	4492                	lw	s1,4(sp)
   146ca:	0141                	addi	sp,sp,16
   146cc:	8082                	ret

000146ce <__libc_fini_array>:
   146ce:	1141                	addi	sp,sp,-16
   146d0:	c422                	sw	s0,8(sp)
   146d2:	67f1                	lui	a5,0x1c
   146d4:	6471                	lui	s0,0x1c
   146d6:	3dc78793          	addi	a5,a5,988 # 1c3dc <__do_global_dtors_aux_fini_array_entry>
   146da:	3e040413          	addi	s0,s0,992 # 1c3e0 <__sglue>
   146de:	8c1d                	sub	s0,s0,a5
   146e0:	c226                	sw	s1,4(sp)
   146e2:	c606                	sw	ra,12(sp)
   146e4:	40245493          	srai	s1,s0,0x2
   146e8:	c881                	beqz	s1,146f8 <__libc_fini_array+0x2a>
   146ea:	1471                	addi	s0,s0,-4
   146ec:	943e                	add	s0,s0,a5
   146ee:	401c                	lw	a5,0(s0)
   146f0:	14fd                	addi	s1,s1,-1
   146f2:	1471                	addi	s0,s0,-4
   146f4:	9782                	jalr	a5
   146f6:	fce5                	bnez	s1,146ee <__libc_fini_array+0x20>
   146f8:	40b2                	lw	ra,12(sp)
   146fa:	4422                	lw	s0,8(sp)
   146fc:	4492                	lw	s1,4(sp)
   146fe:	0141                	addi	sp,sp,16
   14700:	8082                	ret

00014702 <memmove>:
   14702:	02a5f263          	bgeu	a1,a0,14726 <memmove+0x24>
   14706:	00c58733          	add	a4,a1,a2
   1470a:	00e57e63          	bgeu	a0,a4,14726 <memmove+0x24>
   1470e:	00c507b3          	add	a5,a0,a2
   14712:	ca1d                	beqz	a2,14748 <memmove+0x46>
   14714:	fff74683          	lbu	a3,-1(a4)
   14718:	17fd                	addi	a5,a5,-1
   1471a:	177d                	addi	a4,a4,-1
   1471c:	00d78023          	sb	a3,0(a5)
   14720:	fef51ae3          	bne	a0,a5,14714 <memmove+0x12>
   14724:	8082                	ret
   14726:	47bd                	li	a5,15
   14728:	02c7e163          	bltu	a5,a2,1474a <memmove+0x48>
   1472c:	87aa                	mv	a5,a0
   1472e:	fff60693          	addi	a3,a2,-1
   14732:	ca59                	beqz	a2,147c8 <memmove+0xc6>
   14734:	0685                	addi	a3,a3,1
   14736:	96be                	add	a3,a3,a5
   14738:	0005c703          	lbu	a4,0(a1)
   1473c:	0785                	addi	a5,a5,1
   1473e:	0585                	addi	a1,a1,1
   14740:	fee78fa3          	sb	a4,-1(a5)
   14744:	fed79ae3          	bne	a5,a3,14738 <memmove+0x36>
   14748:	8082                	ret
   1474a:	00b567b3          	or	a5,a0,a1
   1474e:	8b8d                	andi	a5,a5,3
   14750:	eba5                	bnez	a5,147c0 <memmove+0xbe>
   14752:	ff060893          	addi	a7,a2,-16
   14756:	ff08f893          	andi	a7,a7,-16
   1475a:	08c1                	addi	a7,a7,16
   1475c:	011506b3          	add	a3,a0,a7
   14760:	872e                	mv	a4,a1
   14762:	87aa                	mv	a5,a0
   14764:	00072803          	lw	a6,0(a4)
   14768:	0741                	addi	a4,a4,16
   1476a:	07c1                	addi	a5,a5,16
   1476c:	ff07a823          	sw	a6,-16(a5)
   14770:	ff472803          	lw	a6,-12(a4)
   14774:	ff07aa23          	sw	a6,-12(a5)
   14778:	ff872803          	lw	a6,-8(a4)
   1477c:	ff07ac23          	sw	a6,-8(a5)
   14780:	ffc72803          	lw	a6,-4(a4)
   14784:	ff07ae23          	sw	a6,-4(a5)
   14788:	fcd79ee3          	bne	a5,a3,14764 <memmove+0x62>
   1478c:	00c67813          	andi	a6,a2,12
   14790:	95c6                	add	a1,a1,a7
   14792:	00f67713          	andi	a4,a2,15
   14796:	02080a63          	beqz	a6,147ca <memmove+0xc8>
   1479a:	ffc70813          	addi	a6,a4,-4
   1479e:	ffc87813          	andi	a6,a6,-4
   147a2:	0811                	addi	a6,a6,4
   147a4:	010687b3          	add	a5,a3,a6
   147a8:	872e                	mv	a4,a1
   147aa:	00072883          	lw	a7,0(a4)
   147ae:	0691                	addi	a3,a3,4
   147b0:	0711                	addi	a4,a4,4
   147b2:	ff16ae23          	sw	a7,-4(a3)
   147b6:	fef69ae3          	bne	a3,a5,147aa <memmove+0xa8>
   147ba:	8a0d                	andi	a2,a2,3
   147bc:	95c2                	add	a1,a1,a6
   147be:	bf85                	j	1472e <memmove+0x2c>
   147c0:	fff60693          	addi	a3,a2,-1
   147c4:	87aa                	mv	a5,a0
   147c6:	b7bd                	j	14734 <memmove+0x32>
   147c8:	8082                	ret
   147ca:	863a                	mv	a2,a4
   147cc:	b78d                	j	1472e <memmove+0x2c>

000147ce <frexpl>:
   147ce:	7159                	addi	sp,sp,-112
   147d0:	d0ca                	sw	s2,96(sp)
   147d2:	00c5a903          	lw	s2,12(a1)
   147d6:	ccd2                	sw	s4,88(sp)
   147d8:	cad6                	sw	s5,84(sp)
   147da:	c8da                	sw	s6,80(sp)
   147dc:	0045aa83          	lw	s5,4(a1)
   147e0:	0005ab03          	lw	s6,0(a1)
   147e4:	0085aa03          	lw	s4,8(a1)
   147e8:	cece                	sw	s3,92(sp)
   147ea:	69a1                	lui	s3,0x8
   147ec:	d4a2                	sw	s0,104(sp)
   147ee:	d2a6                	sw	s1,100(sp)
   147f0:	d686                	sw	ra,108(sp)
   147f2:	01095493          	srli	s1,s2,0x10
   147f6:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   147f8:	d85a                	sw	s6,48(sp)
   147fa:	da56                	sw	s5,52(sp)
   147fc:	dc52                	sw	s4,56(sp)
   147fe:	de4a                	sw	s2,60(sp)
   14800:	0134f4b3          	and	s1,s1,s3
   14804:	00062023          	sw	zero,0(a2)
   14808:	842a                	mv	s0,a0
   1480a:	05348763          	beq	s1,s3,14858 <frexpl+0x8a>
   1480e:	080c                	addi	a1,sp,16
   14810:	1008                	addi	a0,sp,32
   14812:	c6de                	sw	s7,76(sp)
   14814:	d05a                	sw	s6,32(sp)
   14816:	8bb2                	mv	s7,a2
   14818:	d256                	sw	s5,36(sp)
   1481a:	d452                	sw	s4,40(sp)
   1481c:	d64a                	sw	s2,44(sp)
   1481e:	c802                	sw	zero,16(sp)
   14820:	ca02                	sw	zero,20(sp)
   14822:	cc02                	sw	zero,24(sp)
   14824:	ce02                	sw	zero,28(sp)
   14826:	5d9030ef          	jal	185fe <__eqtf2>
   1482a:	c941                	beqz	a0,148ba <frexpl+0xec>
   1482c:	4681                	li	a3,0
   1482e:	c8a1                	beqz	s1,1487e <frexpl+0xb0>
   14830:	7771                	lui	a4,0xffffc
   14832:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffdf1d6>
   14834:	5972                	lw	s2,60(sp)
   14836:	94ba                	add	s1,s1,a4
   14838:	800107b7          	lui	a5,0x80010
   1483c:	94b6                	add	s1,s1,a3
   1483e:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff31d3>
   14840:	009ba023          	sw	s1,0(s7)
   14844:	5b42                	lw	s6,48(sp)
   14846:	5ad2                	lw	s5,52(sp)
   14848:	5a62                	lw	s4,56(sp)
   1484a:	4bb6                	lw	s7,76(sp)
   1484c:	00f97933          	and	s2,s2,a5
   14850:	3ffe07b7          	lui	a5,0x3ffe0
   14854:	00f96933          	or	s2,s2,a5
   14858:	01642023          	sw	s6,0(s0)
   1485c:	01542223          	sw	s5,4(s0)
   14860:	01442423          	sw	s4,8(s0)
   14864:	01242623          	sw	s2,12(s0)
   14868:	50b6                	lw	ra,108(sp)
   1486a:	8522                	mv	a0,s0
   1486c:	5426                	lw	s0,104(sp)
   1486e:	5496                	lw	s1,100(sp)
   14870:	5906                	lw	s2,96(sp)
   14872:	49f6                	lw	s3,92(sp)
   14874:	4a66                	lw	s4,88(sp)
   14876:	4ad6                	lw	s5,84(sp)
   14878:	4b46                	lw	s6,80(sp)
   1487a:	6165                	addi	sp,sp,112
   1487c:	8082                	ret
   1487e:	407107b7          	lui	a5,0x40710
   14882:	860a                	mv	a2,sp
   14884:	080c                	addi	a1,sp,16
   14886:	1008                	addi	a0,sp,32
   14888:	c63e                	sw	a5,12(sp)
   1488a:	c85a                	sw	s6,16(sp)
   1488c:	ca56                	sw	s5,20(sp)
   1488e:	cc52                	sw	s4,24(sp)
   14890:	ce4a                	sw	s2,28(sp)
   14892:	c002                	sw	zero,0(sp)
   14894:	c202                	sw	zero,4(sp)
   14896:	c402                	sw	zero,8(sp)
   14898:	02a040ef          	jal	188c2 <__multf3>
   1489c:	5702                	lw	a4,32(sp)
   1489e:	57b2                	lw	a5,44(sp)
   148a0:	f8e00693          	li	a3,-114
   148a4:	d83a                	sw	a4,48(sp)
   148a6:	5712                	lw	a4,36(sp)
   148a8:	0107d493          	srli	s1,a5,0x10
   148ac:	de3e                	sw	a5,60(sp)
   148ae:	da3a                	sw	a4,52(sp)
   148b0:	5722                	lw	a4,40(sp)
   148b2:	0134f4b3          	and	s1,s1,s3
   148b6:	dc3a                	sw	a4,56(sp)
   148b8:	bfa5                	j	14830 <frexpl+0x62>
   148ba:	4bb6                	lw	s7,76(sp)
   148bc:	bf71                	j	14858 <frexpl+0x8a>

000148be <__register_exitproc>:
   148be:	f281a783          	lw	a5,-216(gp) # 1cb08 <__atexit>
   148c2:	c3a1                	beqz	a5,14902 <__register_exitproc+0x44>
   148c4:	43d8                	lw	a4,4(a5)
   148c6:	487d                	li	a6,31
   148c8:	04e84f63          	blt	a6,a4,14926 <__register_exitproc+0x68>
   148cc:	00271813          	slli	a6,a4,0x2
   148d0:	c11d                	beqz	a0,148f6 <__register_exitproc+0x38>
   148d2:	01078333          	add	t1,a5,a6
   148d6:	08c32423          	sw	a2,136(t1)
   148da:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f335c>
   148de:	4605                	li	a2,1
   148e0:	00e61633          	sll	a2,a2,a4
   148e4:	00c8e8b3          	or	a7,a7,a2
   148e8:	1917a423          	sw	a7,392(a5)
   148ec:	10d32423          	sw	a3,264(t1)
   148f0:	4689                	li	a3,2
   148f2:	00d50f63          	beq	a0,a3,14910 <__register_exitproc+0x52>
   148f6:	0705                	addi	a4,a4,1
   148f8:	c3d8                	sw	a4,4(a5)
   148fa:	97c2                	add	a5,a5,a6
   148fc:	c78c                	sw	a1,8(a5)
   148fe:	4501                	li	a0,0
   14900:	8082                	ret
   14902:	0bc18813          	addi	a6,gp,188 # 1cc9c <__atexit0>
   14906:	f301a423          	sw	a6,-216(gp) # 1cb08 <__atexit>
   1490a:	0bc18793          	addi	a5,gp,188 # 1cc9c <__atexit0>
   1490e:	bf5d                	j	148c4 <__register_exitproc+0x6>
   14910:	18c7a683          	lw	a3,396(a5)
   14914:	0705                	addi	a4,a4,1
   14916:	c3d8                	sw	a4,4(a5)
   14918:	8ed1                	or	a3,a3,a2
   1491a:	18d7a623          	sw	a3,396(a5)
   1491e:	97c2                	add	a5,a5,a6
   14920:	c78c                	sw	a1,8(a5)
   14922:	4501                	li	a0,0
   14924:	8082                	ret
   14926:	557d                	li	a0,-1
   14928:	8082                	ret

0001492a <_ldtoa_r>:
   1492a:	68ed                	lui	a7,0x1b
   1492c:	f0488893          	addi	a7,a7,-252 # 1af04 <blanks.1+0x10>
   14930:	0008af83          	lw	t6,0(a7)
   14934:	0048af03          	lw	t5,4(a7)
   14938:	0088ae83          	lw	t4,8(a7)
   1493c:	00c8ae03          	lw	t3,12(a7)
   14940:	0108a303          	lw	t1,16(a7)
   14944:	03852883          	lw	a7,56(a0)
   14948:	7171                	addi	sp,sp,-176
   1494a:	d14a                	sw	s2,160(sp)
   1494c:	cf4e                	sw	s3,156(sp)
   1494e:	cd52                	sw	s4,152(sp)
   14950:	c95a                	sw	s6,144(sp)
   14952:	c75e                	sw	s7,140(sp)
   14954:	c562                	sw	s8,136(sp)
   14956:	c366                	sw	s9,132(sp)
   14958:	c16a                	sw	s10,128(sp)
   1495a:	d706                	sw	ra,172(sp)
   1495c:	d522                	sw	s0,168(sp)
   1495e:	d326                	sw	s1,164(sp)
   14960:	cb56                	sw	s5,148(sp)
   14962:	deee                	sw	s11,124(sp)
   14964:	cefe                	sw	t6,92(sp)
   14966:	d0fa                	sw	t5,96(sp)
   14968:	d2f6                	sw	t4,100(sp)
   1496a:	d4f2                	sw	t3,104(sp)
   1496c:	d69a                	sw	t1,108(sp)
   1496e:	cc32                	sw	a2,24(sp)
   14970:	ce36                	sw	a3,28(sp)
   14972:	0005aa03          	lw	s4,0(a1)
   14976:	0045a983          	lw	s3,4(a1)
   1497a:	0085a903          	lw	s2,8(a1)
   1497e:	00c5ac03          	lw	s8,12(a1)
   14982:	8b2a                	mv	s6,a0
   14984:	8bba                	mv	s7,a4
   14986:	8cbe                	mv	s9,a5
   14988:	8d42                	mv	s10,a6
   1498a:	00088763          	beqz	a7,14998 <_ldtoa_r+0x6e>
   1498e:	85c6                	mv	a1,a7
   14990:	24a010ef          	jal	15bda <__freedtoa>
   14994:	020b2c23          	sw	zero,56(s6)
   14998:	5626                	lw	a2,104(sp)
   1499a:	01fc5693          	srli	a3,s8,0x1f
   1499e:	001c1a93          	slli	s5,s8,0x1
   149a2:	40165713          	srai	a4,a2,0x1
   149a6:	74f1                	lui	s1,0xffffc
   149a8:	001c1413          	slli	s0,s8,0x1
   149ac:	8f75                	and	a4,a4,a3
   149ae:	011ada93          	srli	s5,s5,0x11
   149b2:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffdf165>
   149b6:	010c1d93          	slli	s11,s8,0x10
   149ba:	00dca023          	sw	a3,0(s9)
   149be:	8005                	srli	s0,s0,0x1
   149c0:	8f31                	xor	a4,a4,a2
   149c2:	010ddd93          	srli	s11,s11,0x10
   149c6:	009a87b3          	add	a5,s5,s1
   149ca:	100c                	addi	a1,sp,32
   149cc:	1808                	addi	a0,sp,48
   149ce:	d852                	sw	s4,48(sp)
   149d0:	da4e                	sw	s3,52(sp)
   149d2:	dc4a                	sw	s2,56(sp)
   149d4:	de22                	sw	s0,60(sp)
   149d6:	d052                	sw	s4,32(sp)
   149d8:	d24e                	sw	s3,36(sp)
   149da:	d44a                	sw	s2,40(sp)
   149dc:	d622                	sw	s0,44(sp)
   149de:	d4ba                	sw	a4,104(sp)
   149e0:	ca3e                	sw	a5,20(sp)
   149e2:	c6d2                	sw	s4,76(sp)
   149e4:	c8ce                	sw	s3,80(sp)
   149e6:	caca                	sw	s2,84(sp)
   149e8:	ccee                	sw	s11,88(sp)
   149ea:	457050ef          	jal	1a640 <__unordtf2>
   149ee:	e979                	bnez	a0,14ac4 <_ldtoa_r+0x19a>
   149f0:	7fff0cb7          	lui	s9,0x7fff0
   149f4:	54fd                	li	s1,-1
   149f6:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd31d3>
   149f8:	100c                	addi	a1,sp,32
   149fa:	1808                	addi	a0,sp,48
   149fc:	d852                	sw	s4,48(sp)
   149fe:	da4e                	sw	s3,52(sp)
   14a00:	dc4a                	sw	s2,56(sp)
   14a02:	de22                	sw	s0,60(sp)
   14a04:	d026                	sw	s1,32(sp)
   14a06:	d226                	sw	s1,36(sp)
   14a08:	d426                	sw	s1,40(sp)
   14a0a:	d666                	sw	s9,44(sp)
   14a0c:	435050ef          	jal	1a640 <__unordtf2>
   14a10:	ed21                	bnez	a0,14a68 <_ldtoa_r+0x13e>
   14a12:	100c                	addi	a1,sp,32
   14a14:	1808                	addi	a0,sp,48
   14a16:	5c1030ef          	jal	187d6 <__letf2>
   14a1a:	04a05763          	blez	a0,14a68 <_ldtoa_r+0x13e>
   14a1e:	478d                	li	a5,3
   14a20:	c4be                	sw	a5,72(sp)
   14a22:	47e2                	lw	a5,24(sp)
   14a24:	4872                	lw	a6,28(sp)
   14a26:	4652                	lw	a2,20(sp)
   14a28:	00b8                	addi	a4,sp,72
   14a2a:	c06a                	sw	s10,0(sp)
   14a2c:	88de                	mv	a7,s7
   14a2e:	00f4                	addi	a3,sp,76
   14a30:	08ec                	addi	a1,sp,92
   14a32:	855a                	mv	a0,s6
   14a34:	2235                	jal	14b60 <__gdtoa>
   14a36:	000ba703          	lw	a4,0(s7)
   14a3a:	77e1                	lui	a5,0xffff8
   14a3c:	00f71763          	bne	a4,a5,14a4a <_ldtoa_r+0x120>
   14a40:	800007b7          	lui	a5,0x80000
   14a44:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe31d3>
   14a46:	00fba023          	sw	a5,0(s7)
   14a4a:	50ba                	lw	ra,172(sp)
   14a4c:	542a                	lw	s0,168(sp)
   14a4e:	549a                	lw	s1,164(sp)
   14a50:	590a                	lw	s2,160(sp)
   14a52:	49fa                	lw	s3,156(sp)
   14a54:	4a6a                	lw	s4,152(sp)
   14a56:	4ada                	lw	s5,148(sp)
   14a58:	4b4a                	lw	s6,144(sp)
   14a5a:	4bba                	lw	s7,140(sp)
   14a5c:	4c2a                	lw	s8,136(sp)
   14a5e:	4c9a                	lw	s9,132(sp)
   14a60:	4d0a                	lw	s10,128(sp)
   14a62:	5df6                	lw	s11,124(sp)
   14a64:	614d                	addi	sp,sp,176
   14a66:	8082                	ret
   14a68:	67c1                	lui	a5,0x10
   14a6a:	100c                	addi	a1,sp,32
   14a6c:	1808                	addi	a0,sp,48
   14a6e:	d852                	sw	s4,48(sp)
   14a70:	da4e                	sw	s3,52(sp)
   14a72:	dc4a                	sw	s2,56(sp)
   14a74:	de22                	sw	s0,60(sp)
   14a76:	d002                	sw	zero,32(sp)
   14a78:	d202                	sw	zero,36(sp)
   14a7a:	d402                	sw	zero,40(sp)
   14a7c:	d63e                	sw	a5,44(sp)
   14a7e:	46d030ef          	jal	186ea <__getf2>
   14a82:	00054963          	bltz	a0,14a94 <_ldtoa_r+0x16a>
   14a86:	67c1                	lui	a5,0x10
   14a88:	00fdedb3          	or	s11,s11,a5
   14a8c:	4785                	li	a5,1
   14a8e:	c4be                	sw	a5,72(sp)
   14a90:	ccee                	sw	s11,88(sp)
   14a92:	bf41                	j	14a22 <_ldtoa_r+0xf8>
   14a94:	100c                	addi	a1,sp,32
   14a96:	1808                	addi	a0,sp,48
   14a98:	d852                	sw	s4,48(sp)
   14a9a:	da4e                	sw	s3,52(sp)
   14a9c:	dc4a                	sw	s2,56(sp)
   14a9e:	de62                	sw	s8,60(sp)
   14aa0:	d002                	sw	zero,32(sp)
   14aa2:	d202                	sw	zero,36(sp)
   14aa4:	d402                	sw	zero,40(sp)
   14aa6:	d602                	sw	zero,44(sp)
   14aa8:	357030ef          	jal	185fe <__eqtf2>
   14aac:	e119                	bnez	a0,14ab2 <_ldtoa_r+0x188>
   14aae:	c482                	sw	zero,72(sp)
   14ab0:	bf8d                	j	14a22 <_ldtoa_r+0xf8>
   14ab2:	74f1                	lui	s1,0xffffc
   14ab4:	4789                	li	a5,2
   14ab6:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffdf166>
   14aba:	c4be                	sw	a5,72(sp)
   14abc:	009a87b3          	add	a5,s5,s1
   14ac0:	ca3e                	sw	a5,20(sp)
   14ac2:	b785                	j	14a22 <_ldtoa_r+0xf8>
   14ac4:	4791                	li	a5,4
   14ac6:	c4be                	sw	a5,72(sp)
   14ac8:	bfa9                	j	14a22 <_ldtoa_r+0xf8>

00014aca <_ldcheck>:
   14aca:	7139                	addi	sp,sp,-64
   14acc:	da26                	sw	s1,52(sp)
   14ace:	4544                	lw	s1,12(a0)
   14ad0:	d64e                	sw	s3,44(sp)
   14ad2:	d452                	sw	s4,40(sp)
   14ad4:	00852983          	lw	s3,8(a0)
   14ad8:	00452a03          	lw	s4,4(a0)
   14adc:	d256                	sw	s5,36(sp)
   14ade:	00052a83          	lw	s5,0(a0)
   14ae2:	0486                	slli	s1,s1,0x1
   14ae4:	8085                	srli	s1,s1,0x1
   14ae6:	858a                	mv	a1,sp
   14ae8:	0808                	addi	a0,sp,16
   14aea:	de06                	sw	ra,60(sp)
   14aec:	c856                	sw	s5,16(sp)
   14aee:	ca52                	sw	s4,20(sp)
   14af0:	cc4e                	sw	s3,24(sp)
   14af2:	ce26                	sw	s1,28(sp)
   14af4:	c056                	sw	s5,0(sp)
   14af6:	c252                	sw	s4,4(sp)
   14af8:	c44e                	sw	s3,8(sp)
   14afa:	c626                	sw	s1,12(sp)
   14afc:	345050ef          	jal	1a640 <__unordtf2>
   14b00:	e921                	bnez	a0,14b50 <_ldcheck+0x86>
   14b02:	d05a                	sw	s6,32(sp)
   14b04:	7fff0b37          	lui	s6,0x7fff0
   14b08:	d84a                	sw	s2,48(sp)
   14b0a:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd31d3>
   14b0c:	597d                	li	s2,-1
   14b0e:	858a                	mv	a1,sp
   14b10:	0808                	addi	a0,sp,16
   14b12:	dc22                	sw	s0,56(sp)
   14b14:	c04a                	sw	s2,0(sp)
   14b16:	c24a                	sw	s2,4(sp)
   14b18:	c44a                	sw	s2,8(sp)
   14b1a:	c65a                	sw	s6,12(sp)
   14b1c:	4405                	li	s0,1
   14b1e:	323050ef          	jal	1a640 <__unordtf2>
   14b22:	c105                	beqz	a0,14b42 <_ldcheck+0x78>
   14b24:	50f2                	lw	ra,60(sp)
   14b26:	00144513          	xori	a0,s0,1
   14b2a:	5462                	lw	s0,56(sp)
   14b2c:	0ff57513          	zext.b	a0,a0
   14b30:	5942                	lw	s2,48(sp)
   14b32:	5b02                	lw	s6,32(sp)
   14b34:	54d2                	lw	s1,52(sp)
   14b36:	59b2                	lw	s3,44(sp)
   14b38:	5a22                	lw	s4,40(sp)
   14b3a:	5a92                	lw	s5,36(sp)
   14b3c:	0506                	slli	a0,a0,0x1
   14b3e:	6121                	addi	sp,sp,64
   14b40:	8082                	ret
   14b42:	858a                	mv	a1,sp
   14b44:	0808                	addi	a0,sp,16
   14b46:	491030ef          	jal	187d6 <__letf2>
   14b4a:	00152413          	slti	s0,a0,1
   14b4e:	bfd9                	j	14b24 <_ldcheck+0x5a>
   14b50:	50f2                	lw	ra,60(sp)
   14b52:	54d2                	lw	s1,52(sp)
   14b54:	59b2                	lw	s3,44(sp)
   14b56:	5a22                	lw	s4,40(sp)
   14b58:	5a92                	lw	s5,36(sp)
   14b5a:	4505                	li	a0,1
   14b5c:	6121                	addi	sp,sp,64
   14b5e:	8082                	ret

00014b60 <__gdtoa>:
   14b60:	7171                	addi	sp,sp,-176
   14b62:	cb56                	sw	s5,148(sp)
   14b64:	00072a83          	lw	s5,0(a4)
   14b68:	d326                	sw	s1,164(sp)
   14b6a:	c75e                	sw	s7,140(sp)
   14b6c:	fcfafe13          	andi	t3,s5,-49
   14b70:	d706                	sw	ra,172(sp)
   14b72:	01c72023          	sw	t3,0(a4)
   14b76:	8bba                	mv	s7,a4
   14b78:	574a                	lw	a4,176(sp)
   14b7a:	00fafe13          	andi	t3,s5,15
   14b7e:	4e8d                	li	t4,3
   14b80:	c63a                	sw	a4,12(sp)
   14b82:	c832                	sw	a2,16(sp)
   14b84:	d442                	sw	a6,40(sp)
   14b86:	84c6                	mv	s1,a7
   14b88:	4fde0263          	beq	t3,t4,1506c <__gdtoa+0x50c>
   14b8c:	c95a                	sw	s6,144(sp)
   14b8e:	00cafb13          	andi	s6,s5,12
   14b92:	460b1b63          	bnez	s6,15008 <__gdtoa+0x4a8>
   14b96:	d522                	sw	s0,168(sp)
   14b98:	842a                	mv	s0,a0
   14b9a:	4a0e0563          	beqz	t3,15044 <__gdtoa+0x4e4>
   14b9e:	c16a                	sw	s10,128(sp)
   14ba0:	0005ad03          	lw	s10,0(a1)
   14ba4:	d14a                	sw	s2,160(sp)
   14ba6:	cf4e                	sw	s3,156(sp)
   14ba8:	cd52                	sw	s4,152(sp)
   14baa:	c366                	sw	s9,132(sp)
   14bac:	02000613          	li	a2,32
   14bb0:	8a2e                	mv	s4,a1
   14bb2:	893e                	mv	s2,a5
   14bb4:	89b6                	mv	s3,a3
   14bb6:	4581                	li	a1,0
   14bb8:	02000793          	li	a5,32
   14bbc:	01a65663          	bge	a2,s10,14bc8 <__gdtoa+0x68>
   14bc0:	0786                	slli	a5,a5,0x1
   14bc2:	0585                	addi	a1,a1,1
   14bc4:	ffa7cee3          	blt	a5,s10,14bc0 <__gdtoa+0x60>
   14bc8:	8522                	mv	a0,s0
   14bca:	252010ef          	jal	15e1c <_Balloc>
   14bce:	8caa                	mv	s9,a0
   14bd0:	68050163          	beqz	a0,15252 <__gdtoa+0x6f2>
   14bd4:	fffd0893          	addi	a7,s10,-1
   14bd8:	4058d893          	srai	a7,a7,0x5
   14bdc:	00289513          	slli	a0,a7,0x2
   14be0:	c562                	sw	s8,136(sp)
   14be2:	deee                	sw	s11,124(sp)
   14be4:	954e                	add	a0,a0,s3
   14be6:	014c8613          	addi	a2,s9,20
   14bea:	87ce                	mv	a5,s3
   14bec:	4398                	lw	a4,0(a5)
   14bee:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   14bf0:	0611                	addi	a2,a2,4
   14bf2:	fee62e23          	sw	a4,-4(a2)
   14bf6:	fef57be3          	bgeu	a0,a5,14bec <__gdtoa+0x8c>
   14bfa:	0505                	addi	a0,a0,1
   14bfc:	00198793          	addi	a5,s3,1
   14c00:	4611                	li	a2,4
   14c02:	00f56563          	bltu	a0,a5,14c0c <__gdtoa+0xac>
   14c06:	088a                	slli	a7,a7,0x2
   14c08:	00488613          	addi	a2,a7,4
   14c0c:	40265d93          	srai	s11,a2,0x2
   14c10:	9666                	add	a2,a2,s9
   14c12:	a021                	j	14c1a <__gdtoa+0xba>
   14c14:	1671                	addi	a2,a2,-4
   14c16:	480d8f63          	beqz	s11,150b4 <__gdtoa+0x554>
   14c1a:	4a1c                	lw	a5,16(a2)
   14c1c:	8c6e                	mv	s8,s11
   14c1e:	1dfd                	addi	s11,s11,-1
   14c20:	dbf5                	beqz	a5,14c14 <__gdtoa+0xb4>
   14c22:	004d8793          	addi	a5,s11,4
   14c26:	078a                	slli	a5,a5,0x2
   14c28:	97e6                	add	a5,a5,s9
   14c2a:	43c8                	lw	a0,4(a5)
   14c2c:	018ca823          	sw	s8,16(s9)
   14c30:	0c16                	slli	s8,s8,0x5
   14c32:	414010ef          	jal	16046 <__hi0bits>
   14c36:	40ac0db3          	sub	s11,s8,a0
   14c3a:	8566                	mv	a0,s9
   14c3c:	1a6010ef          	jal	15de2 <__trailz_D2A>
   14c40:	d6aa                	sw	a0,108(sp)
   14c42:	4c42                	lw	s8,16(sp)
   14c44:	48051c63          	bnez	a0,150dc <__gdtoa+0x57c>
   14c48:	010ca603          	lw	a2,16(s9)
   14c4c:	3e060163          	beqz	a2,1502e <__gdtoa+0x4ce>
   14c50:	10ec                	addi	a1,sp,108
   14c52:	8566                	mv	a0,s9
   14c54:	2e5010ef          	jal	16738 <__b2d>
   14c58:	00c59613          	slli	a2,a1,0xc
   14c5c:	8231                	srli	a2,a2,0xc
   14c5e:	3ff005b7          	lui	a1,0x3ff00
   14c62:	8f2a                	mv	t5,a0
   14c64:	8e4d                	or	a2,a2,a1
   14c66:	cc7a                	sw	t5,24(sp)
   14c68:	ce32                	sw	a2,28(sp)
   14c6a:	ea81b707          	fld	fa4,-344(gp) # 1ca88 <__SDATA_BEGIN__>
   14c6e:	27e2                	fld	fa5,24(sp)
   14c70:	eb01b687          	fld	fa3,-336(gp) # 1ca90 <__SDATA_BEGIN__+0x8>
   14c74:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14c78:	eb81b787          	fld	fa5,-328(gp) # 1ca98 <__SDATA_BEGIN__+0x10>
   14c7c:	01bc08b3          	add	a7,s8,s11
   14c80:	fff88593          	addi	a1,a7,-1
   14c84:	852e                	mv	a0,a1
   14c86:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   14c8a:	d20587d3          	fcvt.d.w	fa5,a1
   14c8e:	ec01b687          	fld	fa3,-320(gp) # 1caa0 <__SDATA_BEGIN__+0x18>
   14c92:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   14c96:	0005d563          	bgez	a1,14ca0 <__gdtoa+0x140>
   14c9a:	4505                	li	a0,1
   14c9c:	41150533          	sub	a0,a0,a7
   14ca0:	bcb50513          	addi	a0,a0,-1077
   14ca4:	00a05863          	blez	a0,14cb4 <__gdtoa+0x154>
   14ca8:	d20506d3          	fcvt.d.w	fa3,a0
   14cac:	ec81b707          	fld	fa4,-312(gp) # 1caa8 <__SDATA_BEGIN__+0x20>
   14cb0:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14cb4:	d2000753          	fcvt.d.w	fa4,zero
   14cb8:	c2079853          	fcvt.w.d	a6,fa5,rtz
   14cbc:	a2e79553          	flt.d	a0,fa5,fa4
   14cc0:	c909                	beqz	a0,14cd2 <__gdtoa+0x172>
   14cc2:	d2080753          	fcvt.d.w	fa4,a6
   14cc6:	a2f72553          	feq.d	a0,fa4,fa5
   14cca:	00153513          	seqz	a0,a0
   14cce:	40a80833          	sub	a6,a6,a0
   14cd2:	01459e93          	slli	t4,a1,0x14
   14cd6:	40bd8533          	sub	a0,s11,a1
   14cda:	45d9                	li	a1,22
   14cdc:	00ce8fb3          	add	t6,t4,a2
   14ce0:	fff50e93          	addi	t4,a0,-1
   14ce4:	3d05eb63          	bltu	a1,a6,150ba <__gdtoa+0x55a>
   14ce8:	65ed                	lui	a1,0x1b
   14cea:	00381613          	slli	a2,a6,0x3
   14cee:	f7858593          	addi	a1,a1,-136 # 1af78 <__mprec_tens>
   14cf2:	962e                	add	a2,a2,a1
   14cf4:	cc7a                	sw	t5,24(sp)
   14cf6:	ce7e                	sw	t6,28(sp)
   14cf8:	221c                	fld	fa5,0(a2)
   14cfa:	2762                	fld	fa4,24(sp)
   14cfc:	a2f71653          	flt.d	a2,fa4,fa5
   14d00:	58061163          	bnez	a2,15282 <__gdtoa+0x722>
   14d04:	ca82                	sw	zero,84(sp)
   14d06:	cc02                	sw	zero,24(sp)
   14d08:	00a04763          	bgtz	a0,14d16 <__gdtoa+0x1b6>
   14d0c:	4605                	li	a2,1
   14d0e:	40a607b3          	sub	a5,a2,a0
   14d12:	cc3e                	sw	a5,24(sp)
   14d14:	4e81                	li	t4,0
   14d16:	9ec2                	add	t4,t4,a6
   14d18:	da42                	sw	a6,52(sp)
   14d1a:	d802                	sw	zero,48(sp)
   14d1c:	4625                	li	a2,9
   14d1e:	3d266a63          	bltu	a2,s2,150f2 <__gdtoa+0x592>
   14d22:	4615                	li	a2,5
   14d24:	57264263          	blt	a2,s2,15288 <__gdtoa+0x728>
   14d28:	3fd88893          	addi	a7,a7,1021
   14d2c:	7f88b793          	sltiu	a5,a7,2040
   14d30:	4591                	li	a1,4
   14d32:	ccbe                	sw	a5,88(sp)
   14d34:	18b909e3          	beq	s2,a1,156c6 <__gdtoa+0xb66>
   14d38:	18c903e3          	beq	s2,a2,156be <__gdtoa+0xb5e>
   14d3c:	4609                	li	a2,2
   14d3e:	18c907e3          	beq	s2,a2,156cc <__gdtoa+0xb6c>
   14d42:	460d                	li	a2,3
   14d44:	c882                	sw	zero,80(sp)
   14d46:	3ac91c63          	bne	s2,a2,150fe <__gdtoa+0x59e>
   14d4a:	57d2                	lw	a5,52(sp)
   14d4c:	5722                	lw	a4,40(sp)
   14d4e:	97ba                	add	a5,a5,a4
   14d50:	cebe                	sw	a5,92(sp)
   14d52:	0785                	addi	a5,a5,1
   14d54:	d63e                	sw	a5,44(sp)
   14d56:	00f05ce3          	blez	a5,1556e <__gdtoa+0xa0e>
   14d5a:	863e                	mv	a2,a5
   14d5c:	85be                	mv	a1,a5
   14d5e:	8522                	mv	a0,s0
   14d60:	c4fa                	sw	t5,72(sp)
   14d62:	c6fe                	sw	t6,76(sp)
   14d64:	c0f6                	sw	t4,64(sp)
   14d66:	dc42                	sw	a6,56(sp)
   14d68:	d6b2                	sw	a2,108(sp)
   14d6a:	5bd000ef          	jal	15b26 <__rv_alloc_D2A>
   14d6e:	88aa                	mv	a7,a0
   14d70:	32050863          	beqz	a0,150a0 <__gdtoa+0x540>
   14d74:	00ca2783          	lw	a5,12(s4)
   14d78:	5862                	lw	a6,56(sp)
   14d7a:	4e86                	lw	t4,64(sp)
   14d7c:	17fd                	addi	a5,a5,-1
   14d7e:	d03e                	sw	a5,32(sp)
   14d80:	4f26                	lw	t5,72(sp)
   14d82:	4fb6                	lw	t6,76(sp)
   14d84:	3a078363          	beqz	a5,1512a <__gdtoa+0x5ca>
   14d88:	4e07ca63          	bltz	a5,1527c <__gdtoa+0x71c>
   14d8c:	100af313          	andi	t1,s5,256
   14d90:	38031863          	bnez	t1,15120 <__gdtoa+0x5c0>
   14d94:	000c4663          	bltz	s8,14da0 <__gdtoa+0x240>
   14d98:	57d2                	lw	a5,52(sp)
   14d9a:	4639                	li	a2,14
   14d9c:	50f65363          	bge	a2,a5,152a2 <__gdtoa+0x742>
   14da0:	47c6                	lw	a5,80(sp)
   14da2:	4c078863          	beqz	a5,15272 <__gdtoa+0x712>
   14da6:	41bd06b3          	sub	a3,s10,s11
   14daa:	004a2603          	lw	a2,4(s4)
   14dae:	00168593          	addi	a1,a3,1
   14db2:	d6ae                	sw	a1,108(sp)
   14db4:	40dc06b3          	sub	a3,s8,a3
   14db8:	7ec6dd63          	bge	a3,a2,155b2 <__gdtoa+0xa52>
   14dbc:	ffd90693          	addi	a3,s2,-3
   14dc0:	9af5                	andi	a3,a3,-3
   14dc2:	72068863          	beqz	a3,154f2 <__gdtoa+0x992>
   14dc6:	40cc06b3          	sub	a3,s8,a2
   14dca:	0685                	addi	a3,a3,1
   14dcc:	d6b6                	sw	a3,108(sp)
   14dce:	4605                	li	a2,1
   14dd0:	01265863          	bge	a2,s2,14de0 <__gdtoa+0x280>
   14dd4:	57b2                	lw	a5,44(sp)
   14dd6:	00f05563          	blez	a5,14de0 <__gdtoa+0x280>
   14dda:	57b2                	lw	a5,44(sp)
   14ddc:	40d7c1e3          	blt	a5,a3,159de <__gdtoa+0xe7e>
   14de0:	47e2                	lw	a5,24(sp)
   14de2:	5d42                	lw	s10,48(sp)
   14de4:	9eb6                	add	t4,t4,a3
   14de6:	dc3e                	sw	a5,56(sp)
   14de8:	97b6                	add	a5,a5,a3
   14dea:	cc3e                	sw	a5,24(sp)
   14dec:	4585                	li	a1,1
   14dee:	8522                	mv	a0,s0
   14df0:	ccc6                	sw	a7,88(sp)
   14df2:	c4f6                	sw	t4,72(sp)
   14df4:	c0c2                	sw	a6,64(sp)
   14df6:	32e010ef          	jal	16124 <__i2b>
   14dfa:	4806                	lw	a6,64(sp)
   14dfc:	4ea6                	lw	t4,72(sp)
   14dfe:	48e6                	lw	a7,88(sp)
   14e00:	8c2a                	mv	s8,a0
   14e02:	28050f63          	beqz	a0,150a0 <__gdtoa+0x540>
   14e06:	57e2                	lw	a5,56(sp)
   14e08:	c385                	beqz	a5,14e28 <__gdtoa+0x2c8>
   14e0a:	01d05f63          	blez	t4,14e28 <__gdtoa+0x2c8>
   14e0e:	86be                	mv	a3,a5
   14e10:	00fed363          	bge	t4,a5,14e16 <__gdtoa+0x2b6>
   14e14:	86f6                	mv	a3,t4
   14e16:	47e2                	lw	a5,24(sp)
   14e18:	d6b6                	sw	a3,108(sp)
   14e1a:	40de8eb3          	sub	t4,t4,a3
   14e1e:	8f95                	sub	a5,a5,a3
   14e20:	cc3e                	sw	a5,24(sp)
   14e22:	57e2                	lw	a5,56(sp)
   14e24:	8f95                	sub	a5,a5,a3
   14e26:	dc3e                	sw	a5,56(sp)
   14e28:	57c2                	lw	a5,48(sp)
   14e2a:	c39d                	beqz	a5,14e50 <__gdtoa+0x2f0>
   14e2c:	47c6                	lw	a5,80(sp)
   14e2e:	c399                	beqz	a5,14e34 <__gdtoa+0x2d4>
   14e30:	7e0d1863          	bnez	s10,15620 <__gdtoa+0xac0>
   14e34:	5642                	lw	a2,48(sp)
   14e36:	85e6                	mv	a1,s9
   14e38:	8522                	mv	a0,s0
   14e3a:	ccc6                	sw	a7,88(sp)
   14e3c:	c4f6                	sw	t4,72(sp)
   14e3e:	c0c2                	sw	a6,64(sp)
   14e40:	4e2010ef          	jal	16322 <__pow5mult>
   14e44:	4806                	lw	a6,64(sp)
   14e46:	4ea6                	lw	t4,72(sp)
   14e48:	48e6                	lw	a7,88(sp)
   14e4a:	8caa                	mv	s9,a0
   14e4c:	24050a63          	beqz	a0,150a0 <__gdtoa+0x540>
   14e50:	4585                	li	a1,1
   14e52:	8522                	mv	a0,s0
   14e54:	c4c6                	sw	a7,72(sp)
   14e56:	c0f6                	sw	t4,64(sp)
   14e58:	d842                	sw	a6,48(sp)
   14e5a:	2ca010ef          	jal	16124 <__i2b>
   14e5e:	8d2a                	mv	s10,a0
   14e60:	24050063          	beqz	a0,150a0 <__gdtoa+0x540>
   14e64:	5842                	lw	a6,48(sp)
   14e66:	4e86                	lw	t4,64(sp)
   14e68:	48a6                	lw	a7,72(sp)
   14e6a:	70081663          	bnez	a6,15576 <__gdtoa+0xa16>
   14e6e:	4685                	li	a3,1
   14e70:	5126d263          	bge	a3,s2,15374 <__gdtoa+0x814>
   14e74:	4a7d                	li	s4,31
   14e76:	47e2                	lw	a5,24(sp)
   14e78:	41da0a33          	sub	s4,s4,t4
   14e7c:	1a71                	addi	s4,s4,-4
   14e7e:	01fa7a13          	andi	s4,s4,31
   14e82:	00fa0633          	add	a2,s4,a5
   14e86:	d6d2                	sw	s4,108(sp)
   14e88:	87d2                	mv	a5,s4
   14e8a:	58c04d63          	bgtz	a2,15424 <__gdtoa+0x8c4>
   14e8e:	00fe8633          	add	a2,t4,a5
   14e92:	1ec04c63          	bgtz	a2,1508a <__gdtoa+0x52a>
   14e96:	47d6                	lw	a5,84(sp)
   14e98:	5a079563          	bnez	a5,15442 <__gdtoa+0x8e2>
   14e9c:	57b2                	lw	a5,44(sp)
   14e9e:	66f05a63          	blez	a5,15512 <__gdtoa+0x9b2>
   14ea2:	47c6                	lw	a5,80(sp)
   14ea4:	5c078d63          	beqz	a5,1547e <__gdtoa+0x91e>
   14ea8:	57e2                	lw	a5,56(sp)
   14eaa:	00fa0633          	add	a2,s4,a5
   14eae:	7ec04763          	bgtz	a2,1569c <__gdtoa+0xb3c>
   14eb2:	8a62                	mv	s4,s8
   14eb4:	02081ce3          	bnez	a6,156ec <__gdtoa+0xb8c>
   14eb8:	5b32                	lw	s6,44(sp)
   14eba:	8dc6                	mv	s11,a7
   14ebc:	4685                	li	a3,1
   14ebe:	d446                	sw	a7,40(sp)
   14ec0:	cc5e                	sw	s7,24(sp)
   14ec2:	d626                	sw	s1,44(sp)
   14ec4:	a885                	j	14f34 <__gdtoa+0x3d4>
   14ec6:	8522                	mv	a0,s0
   14ec8:	7c1000ef          	jal	15e88 <_Bfree>
   14ecc:	100ac3e3          	bltz	s5,157d2 <__gdtoa+0xc72>
   14ed0:	01596ab3          	or	s5,s2,s5
   14ed4:	000a9763          	bnez	s5,14ee2 <__gdtoa+0x382>
   14ed8:	0009a783          	lw	a5,0(s3)
   14edc:	8b85                	andi	a5,a5,1
   14ede:	0e078ae3          	beqz	a5,157d2 <__gdtoa+0xc72>
   14ee2:	5782                	lw	a5,32(sp)
   14ee4:	4709                	li	a4,2
   14ee6:	26e798e3          	bne	a5,a4,15956 <__gdtoa+0xdf6>
   14eea:	017d8023          	sb	s7,0(s11)
   14eee:	57b6                	lw	a5,108(sp)
   14ef0:	0d85                	addi	s11,s11,1
   14ef2:	1efb0fe3          	beq	s6,a5,158f0 <__gdtoa+0xd90>
   14ef6:	85e6                	mv	a1,s9
   14ef8:	4681                	li	a3,0
   14efa:	4629                	li	a2,10
   14efc:	8522                	mv	a0,s0
   14efe:	79d000ef          	jal	15e9a <__multadd>
   14f02:	8caa                	mv	s9,a0
   14f04:	18050e63          	beqz	a0,150a0 <__gdtoa+0x540>
   14f08:	4681                	li	a3,0
   14f0a:	4629                	li	a2,10
   14f0c:	85e2                	mv	a1,s8
   14f0e:	8522                	mv	a0,s0
   14f10:	494c0c63          	beq	s8,s4,153a8 <__gdtoa+0x848>
   14f14:	787000ef          	jal	15e9a <__multadd>
   14f18:	8c2a                	mv	s8,a0
   14f1a:	18050363          	beqz	a0,150a0 <__gdtoa+0x540>
   14f1e:	85d2                	mv	a1,s4
   14f20:	4681                	li	a3,0
   14f22:	4629                	li	a2,10
   14f24:	8522                	mv	a0,s0
   14f26:	775000ef          	jal	15e9a <__multadd>
   14f2a:	8a2a                	mv	s4,a0
   14f2c:	16050a63          	beqz	a0,150a0 <__gdtoa+0x540>
   14f30:	56b6                	lw	a3,108(sp)
   14f32:	0685                	addi	a3,a3,1
   14f34:	85ea                	mv	a1,s10
   14f36:	8566                	mv	a0,s9
   14f38:	d6b6                	sw	a3,108(sp)
   14f3a:	4af000ef          	jal	15be8 <__quorem_D2A>
   14f3e:	84aa                	mv	s1,a0
   14f40:	85e2                	mv	a1,s8
   14f42:	8566                	mv	a0,s9
   14f44:	5c0010ef          	jal	16504 <__mcmp>
   14f48:	85ea                	mv	a1,s10
   14f4a:	8aaa                	mv	s5,a0
   14f4c:	8652                	mv	a2,s4
   14f4e:	8522                	mv	a0,s0
   14f50:	5f0010ef          	jal	16540 <__mdiff>
   14f54:	03048b93          	addi	s7,s1,48
   14f58:	85aa                	mv	a1,a0
   14f5a:	14050363          	beqz	a0,150a0 <__gdtoa+0x540>
   14f5e:	455c                	lw	a5,12(a0)
   14f60:	f3bd                	bnez	a5,14ec6 <__gdtoa+0x366>
   14f62:	c82a                	sw	a0,16(sp)
   14f64:	8566                	mv	a0,s9
   14f66:	59e010ef          	jal	16504 <__mcmp>
   14f6a:	45c2                	lw	a1,16(sp)
   14f6c:	86aa                	mv	a3,a0
   14f6e:	8522                	mv	a0,s0
   14f70:	c836                	sw	a3,16(sp)
   14f72:	717000ef          	jal	15e88 <_Bfree>
   14f76:	46c2                	lw	a3,16(sp)
   14f78:	00d96733          	or	a4,s2,a3
   14f7c:	340711e3          	bnez	a4,15abe <__gdtoa+0xf5e>
   14f80:	0009a783          	lw	a5,0(s3)
   14f84:	8b85                	andi	a5,a5,1
   14f86:	42079863          	bnez	a5,153b6 <__gdtoa+0x856>
   14f8a:	5782                	lw	a5,32(sp)
   14f8c:	280787e3          	beqz	a5,15a1a <__gdtoa+0xeba>
   14f90:	f5504de3          	bgtz	s5,14eea <__gdtoa+0x38a>
   14f94:	010ca603          	lw	a2,16(s9)
   14f98:	4685                	li	a3,1
   14f9a:	835e                	mv	t1,s7
   14f9c:	58a2                	lw	a7,40(sp)
   14f9e:	4be2                	lw	s7,24(sp)
   14fa0:	54b2                	lw	s1,44(sp)
   14fa2:	8b3a                	mv	s6,a4
   14fa4:	2ec6dae3          	bge	a3,a2,15a98 <__gdtoa+0xf38>
   14fa8:	5782                	lw	a5,32(sp)
   14faa:	4689                	li	a3,2
   14fac:	8a9a                	mv	s5,t1
   14fae:	8b46                	mv	s6,a7
   14fb0:	02d79063          	bne	a5,a3,14fd0 <__gdtoa+0x470>
   14fb4:	2cb0006f          	j	15a7e <__gdtoa+0xf1e>
   14fb8:	6e3000ef          	jal	15e9a <__multadd>
   14fbc:	85ea                	mv	a1,s10
   14fbe:	8caa                	mv	s9,a0
   14fc0:	0e050063          	beqz	a0,150a0 <__gdtoa+0x540>
   14fc4:	425000ef          	jal	15be8 <__quorem_D2A>
   14fc8:	03050a93          	addi	s5,a0,48
   14fcc:	8dca                	mv	s11,s2
   14fce:	8a4e                	mv	s4,s3
   14fd0:	85d2                	mv	a1,s4
   14fd2:	856a                	mv	a0,s10
   14fd4:	530010ef          	jal	16504 <__mcmp>
   14fd8:	87aa                	mv	a5,a0
   14fda:	4681                	li	a3,0
   14fdc:	4629                	li	a2,10
   14fde:	85d2                	mv	a1,s4
   14fe0:	8522                	mv	a0,s0
   14fe2:	001d8913          	addi	s2,s11,1
   14fe6:	28f052e3          	blez	a5,15a6a <__gdtoa+0xf0a>
   14fea:	ff590fa3          	sb	s5,-1(s2)
   14fee:	6ad000ef          	jal	15e9a <__multadd>
   14ff2:	89aa                	mv	s3,a0
   14ff4:	4681                	li	a3,0
   14ff6:	4629                	li	a2,10
   14ff8:	85e6                	mv	a1,s9
   14ffa:	8522                	mv	a0,s0
   14ffc:	0a098263          	beqz	s3,150a0 <__gdtoa+0x540>
   15000:	fb4c1ce3          	bne	s8,s4,14fb8 <__gdtoa+0x458>
   15004:	8c4e                	mv	s8,s3
   15006:	bf4d                	j	14fb8 <__gdtoa+0x458>
   15008:	4791                	li	a5,4
   1500a:	0afe1363          	bne	t3,a5,150b0 <__gdtoa+0x550>
   1500e:	4632                	lw	a2,12(sp)
   15010:	4b4a                	lw	s6,144(sp)
   15012:	50ba                	lw	ra,172(sp)
   15014:	549a                	lw	s1,164(sp)
   15016:	4ada                	lw	s5,148(sp)
   15018:	4bba                	lw	s7,140(sp)
   1501a:	77e1                	lui	a5,0xffff8
   1501c:	00f8a023          	sw	a5,0(a7)
   15020:	65ed                	lui	a1,0x1b
   15022:	468d                	li	a3,3
   15024:	bb858593          	addi	a1,a1,-1096 # 1abb8 <__clzsi2+0x14a>
   15028:	614d                	addi	sp,sp,176
   1502a:	33d0006f          	j	15b66 <__nrv_alloc_D2A>
   1502e:	85e6                	mv	a1,s9
   15030:	8522                	mv	a0,s0
   15032:	657000ef          	jal	15e88 <_Bfree>
   15036:	590a                	lw	s2,160(sp)
   15038:	49fa                	lw	s3,156(sp)
   1503a:	4a6a                	lw	s4,152(sp)
   1503c:	4c2a                	lw	s8,136(sp)
   1503e:	4c9a                	lw	s9,132(sp)
   15040:	4d0a                	lw	s10,128(sp)
   15042:	5df6                	lw	s11,124(sp)
   15044:	4632                	lw	a2,12(sp)
   15046:	4785                	li	a5,1
   15048:	65ed                	lui	a1,0x1b
   1504a:	8522                	mv	a0,s0
   1504c:	c09c                	sw	a5,0(s1)
   1504e:	4685                	li	a3,1
   15050:	ba858593          	addi	a1,a1,-1112 # 1aba8 <__clzsi2+0x13a>
   15054:	313000ef          	jal	15b66 <__nrv_alloc_D2A>
   15058:	542a                	lw	s0,168(sp)
   1505a:	88aa                	mv	a7,a0
   1505c:	50ba                	lw	ra,172(sp)
   1505e:	4b4a                	lw	s6,144(sp)
   15060:	549a                	lw	s1,164(sp)
   15062:	4ada                	lw	s5,148(sp)
   15064:	4bba                	lw	s7,140(sp)
   15066:	8546                	mv	a0,a7
   15068:	614d                	addi	sp,sp,176
   1506a:	8082                	ret
   1506c:	4632                	lw	a2,12(sp)
   1506e:	50ba                	lw	ra,172(sp)
   15070:	549a                	lw	s1,164(sp)
   15072:	4ada                	lw	s5,148(sp)
   15074:	4bba                	lw	s7,140(sp)
   15076:	77e1                	lui	a5,0xffff8
   15078:	00f8a023          	sw	a5,0(a7)
   1507c:	65ed                	lui	a1,0x1b
   1507e:	46a1                	li	a3,8
   15080:	bac58593          	addi	a1,a1,-1108 # 1abac <__clzsi2+0x13e>
   15084:	614d                	addi	sp,sp,176
   15086:	2e10006f          	j	15b66 <__nrv_alloc_D2A>
   1508a:	85ea                	mv	a1,s10
   1508c:	8522                	mv	a0,s0
   1508e:	cc46                	sw	a7,24(sp)
   15090:	c842                	sw	a6,16(sp)
   15092:	364010ef          	jal	163f6 <__lshift>
   15096:	4842                	lw	a6,16(sp)
   15098:	48e2                	lw	a7,24(sp)
   1509a:	8d2a                	mv	s10,a0
   1509c:	de051de3          	bnez	a0,14e96 <__gdtoa+0x336>
   150a0:	542a                	lw	s0,168(sp)
   150a2:	590a                	lw	s2,160(sp)
   150a4:	49fa                	lw	s3,156(sp)
   150a6:	4a6a                	lw	s4,152(sp)
   150a8:	4c2a                	lw	s8,136(sp)
   150aa:	4c9a                	lw	s9,132(sp)
   150ac:	4d0a                	lw	s10,128(sp)
   150ae:	5df6                	lw	s11,124(sp)
   150b0:	4881                	li	a7,0
   150b2:	b76d                	j	1505c <__gdtoa+0x4fc>
   150b4:	000ca823          	sw	zero,16(s9)
   150b8:	b649                	j	14c3a <__gdtoa+0xda>
   150ba:	4785                	li	a5,1
   150bc:	cabe                	sw	a5,84(sp)
   150be:	cc02                	sw	zero,24(sp)
   150c0:	1a0ec163          	bltz	t4,15262 <__gdtoa+0x702>
   150c4:	c40859e3          	bgez	a6,14d16 <__gdtoa+0x1b6>
   150c8:	47e2                	lw	a5,24(sp)
   150ca:	da42                	sw	a6,52(sp)
   150cc:	410787b3          	sub	a5,a5,a6
   150d0:	cc3e                	sw	a5,24(sp)
   150d2:	410007b3          	neg	a5,a6
   150d6:	d83e                	sw	a5,48(sp)
   150d8:	4801                	li	a6,0
   150da:	b189                	j	14d1c <__gdtoa+0x1bc>
   150dc:	85aa                	mv	a1,a0
   150de:	8566                	mv	a0,s9
   150e0:	45f000ef          	jal	15d3e <__rshift_D2A>
   150e4:	5636                	lw	a2,108(sp)
   150e6:	47c2                	lw	a5,16(sp)
   150e8:	40cd8db3          	sub	s11,s11,a2
   150ec:	00f60c33          	add	s8,a2,a5
   150f0:	bea1                	j	14c48 <__gdtoa+0xe8>
   150f2:	3fd88893          	addi	a7,a7,1021
   150f6:	7f88b793          	sltiu	a5,a7,2040
   150fa:	ccbe                	sw	a5,88(sp)
   150fc:	4901                	li	s2,0
   150fe:	ed01b707          	fld	fa4,-304(gp) # 1cab0 <__SDATA_BEGIN__+0x28>
   15102:	d20d07d3          	fcvt.d.w	fa5,s10
   15106:	4785                	li	a5,1
   15108:	c8be                	sw	a5,80(sp)
   1510a:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1510e:	57fd                	li	a5,-1
   15110:	d402                	sw	zero,40(sp)
   15112:	cebe                	sw	a5,92(sp)
   15114:	d63e                	sw	a5,44(sp)
   15116:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   1511a:	058d                	addi	a1,a1,3
   1511c:	862e                	mv	a2,a1
   1511e:	b181                	j	14d5e <__gdtoa+0x1fe>
   15120:	5782                	lw	a5,32(sp)
   15122:	460d                	li	a2,3
   15124:	40f607b3          	sub	a5,a2,a5
   15128:	d03e                	sw	a5,32(sp)
   1512a:	57b2                	lw	a5,44(sp)
   1512c:	4639                	li	a2,14
   1512e:	c6f663e3          	bltu	a2,a5,14d94 <__gdtoa+0x234>
   15132:	4766                	lw	a4,88(sp)
   15134:	c60700e3          	beqz	a4,14d94 <__gdtoa+0x234>
   15138:	5752                	lw	a4,52(sp)
   1513a:	5682                	lw	a3,32(sp)
   1513c:	00d76633          	or	a2,a4,a3
   15140:	c4061ae3          	bnez	a2,14d94 <__gdtoa+0x234>
   15144:	4756                	lw	a4,84(sp)
   15146:	d682                	sw	zero,108(sp)
   15148:	d07a                	sw	t5,32(sp)
   1514a:	d27e                	sw	t6,36(sp)
   1514c:	cb11                	beqz	a4,15160 <__gdtoa+0x600>
   1514e:	dc7a                	sw	t5,56(sp)
   15150:	de7e                	sw	t6,60(sp)
   15152:	ed81b787          	fld	fa5,-296(gp) # 1cab8 <__SDATA_BEGIN__+0x30>
   15156:	3762                	fld	fa4,56(sp)
   15158:	a2f71653          	flt.d	a2,fa4,fa5
   1515c:	7a061163          	bnez	a2,158fe <__gdtoa+0xd9e>
   15160:	ef81b707          	fld	fa4,-264(gp) # 1cad8 <__SDATA_BEGIN__+0x50>
   15164:	ef01b787          	fld	fa5,-272(gp) # 1cad0 <__SDATA_BEGIN__+0x48>
   15168:	3682                	fld	fa3,32(sp)
   1516a:	57b2                	lw	a5,44(sp)
   1516c:	fcc00637          	lui	a2,0xfcc00
   15170:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15174:	bc3e                	fsd	fa5,56(sp)
   15176:	5562                	lw	a0,56(sp)
   15178:	55f2                	lw	a1,60(sp)
   1517a:	832a                	mv	t1,a0
   1517c:	962e                	add	a2,a2,a1
   1517e:	5c078063          	beqz	a5,1573e <__gdtoa+0xbde>
   15182:	3782                	fld	fa5,32(sp)
   15184:	5532                	lw	a0,44(sp)
   15186:	4381                	li	t2,0
   15188:	bc3e                	fsd	fa5,56(sp)
   1518a:	65ed                	lui	a1,0x1b
   1518c:	fff50793          	addi	a5,a0,-1
   15190:	078e                	slli	a5,a5,0x3
   15192:	f7858293          	addi	t0,a1,-136 # 1af78 <__mprec_tens>
   15196:	005786b3          	add	a3,a5,t0
   1519a:	229c                	fld	fa5,0(a3)
   1519c:	46c6                	lw	a3,80(sp)
   1519e:	871a                	mv	a4,t1
   151a0:	87b2                	mv	a5,a2
   151a2:	6c068163          	beqz	a3,15864 <__gdtoa+0xd04>
   151a6:	3762                	fld	fa4,56(sp)
   151a8:	36e2                	fld	fa3,56(sp)
   151aa:	c2071353          	fcvt.w.d	t1,fa4,rtz
   151ae:	f081b707          	fld	fa4,-248(gp) # 1cae8 <__SDATA_BEGIN__+0x60>
   151b2:	dc3a                	sw	a4,56(sp)
   151b4:	de3e                	sw	a5,60(sp)
   151b6:	1af77753          	fdiv.d	fa4,fa4,fa5
   151ba:	d20307d3          	fcvt.d.w	fa5,t1
   151be:	03030313          	addi	t1,t1,48
   151c2:	00688023          	sb	t1,0(a7)
   151c6:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   151ca:	36e2                	fld	fa3,56(sp)
   151cc:	00188613          	addi	a2,a7,1
   151d0:	0ad77753          	fsub.d	fa4,fa4,fa3
   151d4:	a2e79353          	flt.d	t1,fa5,fa4
   151d8:	7c031e63          	bnez	t1,159b4 <__gdtoa+0xe54>
   151dc:	ed81b587          	fld	fa1,-296(gp) # 1cab8 <__SDATA_BEGIN__+0x30>
   151e0:	ee01b607          	fld	fa2,-288(gp) # 1cac0 <__SDATA_BEGIN__+0x38>
   151e4:	a80d                	j	15216 <__gdtoa+0x6b6>
   151e6:	57b6                	lw	a5,108(sp)
   151e8:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe31d5>
   151ea:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffdb1d5>
   151ec:	d6be                	sw	a5,108(sp)
   151ee:	7ea7d163          	bge	a5,a0,159d0 <__gdtoa+0xe70>
   151f2:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   151f6:	12c77753          	fmul.d	fa4,fa4,fa2
   151fa:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   151fe:	d20786d3          	fcvt.d.w	fa3,a5
   15202:	03078793          	addi	a5,a5,48
   15206:	fef60fa3          	sb	a5,-1(a2)
   1520a:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   1520e:	a2e797d3          	flt.d	a5,fa5,fa4
   15212:	7a079163          	bnez	a5,159b4 <__gdtoa+0xe54>
   15216:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   1521a:	a2e697d3          	flt.d	a5,fa3,fa4
   1521e:	d7e1                	beqz	a5,151e6 <__gdtoa+0x686>
   15220:	fff64683          	lbu	a3,-1(a2)
   15224:	00138513          	addi	a0,t2,1
   15228:	03900593          	li	a1,57
   1522c:	a031                	j	15238 <__gdtoa+0x6d8>
   1522e:	62f88763          	beq	a7,a5,1585c <__gdtoa+0xcfc>
   15232:	fff7c683          	lbu	a3,-1(a5)
   15236:	863e                	mv	a2,a5
   15238:	fff60793          	addi	a5,a2,-1
   1523c:	feb689e3          	beq	a3,a1,1522e <__gdtoa+0x6ce>
   15240:	0685                	addi	a3,a3,1
   15242:	0ff6f693          	zext.b	a3,a3
   15246:	00d78023          	sb	a3,0(a5)
   1524a:	892a                	mv	s2,a0
   1524c:	02000b13          	li	s6,32
   15250:	a0e5                	j	15338 <__gdtoa+0x7d8>
   15252:	542a                	lw	s0,168(sp)
   15254:	590a                	lw	s2,160(sp)
   15256:	49fa                	lw	s3,156(sp)
   15258:	4a6a                	lw	s4,152(sp)
   1525a:	4c9a                	lw	s9,132(sp)
   1525c:	4d0a                	lw	s10,128(sp)
   1525e:	4881                	li	a7,0
   15260:	bbf5                	j	1505c <__gdtoa+0x4fc>
   15262:	4605                	li	a2,1
   15264:	40a607b3          	sub	a5,a2,a0
   15268:	cc3e                	sw	a5,24(sp)
   1526a:	4e81                	li	t4,0
   1526c:	e4084ee3          	bltz	a6,150c8 <__gdtoa+0x568>
   15270:	b45d                	j	14d16 <__gdtoa+0x1b6>
   15272:	47e2                	lw	a5,24(sp)
   15274:	5d42                	lw	s10,48(sp)
   15276:	4c01                	li	s8,0
   15278:	dc3e                	sw	a5,56(sp)
   1527a:	b671                	j	14e06 <__gdtoa+0x2a6>
   1527c:	4789                	li	a5,2
   1527e:	d03e                	sw	a5,32(sp)
   15280:	b631                	j	14d8c <__gdtoa+0x22c>
   15282:	187d                	addi	a6,a6,-1
   15284:	ca82                	sw	zero,84(sp)
   15286:	bd25                	j	150be <__gdtoa+0x55e>
   15288:	1971                	addi	s2,s2,-4
   1528a:	4591                	li	a1,4
   1528c:	10b90263          	beq	s2,a1,15390 <__gdtoa+0x830>
   15290:	42c90263          	beq	s2,a2,156b4 <__gdtoa+0xb54>
   15294:	4609                	li	a2,2
   15296:	cc82                	sw	zero,88(sp)
   15298:	c882                	sw	zero,80(sp)
   1529a:	0ec90e63          	beq	s2,a2,15396 <__gdtoa+0x836>
   1529e:	490d                	li	s2,3
   152a0:	b46d                	j	14d4a <__gdtoa+0x1ea>
   152a2:	66ed                	lui	a3,0x1b
   152a4:	078e                	slli	a5,a5,0x3
   152a6:	f7868693          	addi	a3,a3,-136 # 1af78 <__mprec_tens>
   152aa:	97b6                	add	a5,a5,a3
   152ac:	2398                	fld	fa4,0(a5)
   152ae:	57a2                	lw	a5,40(sp)
   152b0:	3207c263          	bltz	a5,155d4 <__gdtoa+0xa74>
   152b4:	c87a                	sw	t5,16(sp)
   152b6:	ca7e                	sw	t6,20(sp)
   152b8:	27c2                	fld	fa5,16(sp)
   152ba:	4785                	li	a5,1
   152bc:	d6be                	sw	a5,108(sp)
   152be:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   152c2:	57d2                	lw	a5,52(sp)
   152c4:	26c2                	fld	fa3,16(sp)
   152c6:	00188613          	addi	a2,a7,1
   152ca:	00178513          	addi	a0,a5,1
   152ce:	892a                	mv	s2,a0
   152d0:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   152d4:	d20787d3          	fcvt.d.w	fa5,a5
   152d8:	03078693          	addi	a3,a5,48
   152dc:	00d88023          	sb	a3,0(a7)
   152e0:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   152e4:	d20006d3          	fcvt.d.w	fa3,zero
   152e8:	a2d7a6d3          	feq.d	a3,fa5,fa3
   152ec:	e6b1                	bnez	a3,15338 <__gdtoa+0x7d8>
   152ee:	ee01b587          	fld	fa1,-288(gp) # 1cac0 <__SDATA_BEGIN__+0x38>
   152f2:	22d68653          	fmv.d	fa2,fa3
   152f6:	55b2                	lw	a1,44(sp)
   152f8:	a025                	j	15320 <__gdtoa+0x7c0>
   152fa:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   152fe:	d6b6                	sw	a3,108(sp)
   15300:	0605                	addi	a2,a2,1
   15302:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   15306:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   1530a:	d20786d3          	fcvt.d.w	fa3,a5
   1530e:	03078713          	addi	a4,a5,48
   15312:	fee60fa3          	sb	a4,-1(a2)
   15316:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   1531a:	a2c7a753          	feq.d	a4,fa5,fa2
   1531e:	ef09                	bnez	a4,15338 <__gdtoa+0x7d8>
   15320:	5736                	lw	a4,108(sp)
   15322:	00170693          	addi	a3,a4,1
   15326:	fcb71ae3          	bne	a4,a1,152fa <__gdtoa+0x79a>
   1532a:	5702                	lw	a4,32(sp)
   1532c:	4e070e63          	beqz	a4,15828 <__gdtoa+0xcc8>
   15330:	4785                	li	a5,1
   15332:	4b41                	li	s6,16
   15334:	60f70263          	beq	a4,a5,15938 <__gdtoa+0xdd8>
   15338:	85e6                	mv	a1,s9
   1533a:	8522                	mv	a0,s0
   1533c:	d446                	sw	a7,40(sp)
   1533e:	c832                	sw	a2,16(sp)
   15340:	349000ef          	jal	15e88 <_Bfree>
   15344:	4642                	lw	a2,16(sp)
   15346:	47b2                	lw	a5,12(sp)
   15348:	58a2                	lw	a7,40(sp)
   1534a:	00060023          	sb	zero,0(a2)
   1534e:	0124a023          	sw	s2,0(s1)
   15352:	c391                	beqz	a5,15356 <__gdtoa+0x7f6>
   15354:	c390                	sw	a2,0(a5)
   15356:	000ba783          	lw	a5,0(s7)
   1535a:	542a                	lw	s0,168(sp)
   1535c:	590a                	lw	s2,160(sp)
   1535e:	0167e7b3          	or	a5,a5,s6
   15362:	49fa                	lw	s3,156(sp)
   15364:	4a6a                	lw	s4,152(sp)
   15366:	4c2a                	lw	s8,136(sp)
   15368:	4c9a                	lw	s9,132(sp)
   1536a:	4d0a                	lw	s10,128(sp)
   1536c:	5df6                	lw	s11,124(sp)
   1536e:	00fba023          	sw	a5,0(s7)
   15372:	b1ed                	j	1505c <__gdtoa+0x4fc>
   15374:	b0dd90e3          	bne	s11,a3,14e74 <__gdtoa+0x314>
   15378:	004a2783          	lw	a5,4(s4)
   1537c:	4742                	lw	a4,16(sp)
   1537e:	0785                	addi	a5,a5,1
   15380:	aee7dae3          	bge	a5,a4,14e74 <__gdtoa+0x314>
   15384:	47e2                	lw	a5,24(sp)
   15386:	0e85                	addi	t4,t4,1
   15388:	4805                	li	a6,1
   1538a:	0785                	addi	a5,a5,1
   1538c:	cc3e                	sw	a5,24(sp)
   1538e:	b4dd                	j	14e74 <__gdtoa+0x314>
   15390:	4785                	li	a5,1
   15392:	cc82                	sw	zero,88(sp)
   15394:	c8be                	sw	a5,80(sp)
   15396:	55a2                	lw	a1,40(sp)
   15398:	00b04363          	bgtz	a1,1539e <__gdtoa+0x83e>
   1539c:	4585                	li	a1,1
   1539e:	862e                	mv	a2,a1
   153a0:	ceae                	sw	a1,92(sp)
   153a2:	d62e                	sw	a1,44(sp)
   153a4:	d42e                	sw	a1,40(sp)
   153a6:	ba65                	j	14d5e <__gdtoa+0x1fe>
   153a8:	2f3000ef          	jal	15e9a <__multadd>
   153ac:	8c2a                	mv	s8,a0
   153ae:	ce0509e3          	beqz	a0,150a0 <__gdtoa+0x540>
   153b2:	8a2a                	mv	s4,a0
   153b4:	beb5                	j	14f30 <__gdtoa+0x3d0>
   153b6:	b20adae3          	bgez	s5,14eea <__gdtoa+0x38a>
   153ba:	5782                	lw	a5,32(sp)
   153bc:	835e                	mv	t1,s7
   153be:	58a2                	lw	a7,40(sp)
   153c0:	4be2                	lw	s7,24(sp)
   153c2:	54b2                	lw	s1,44(sp)
   153c4:	8b3a                	mv	s6,a4
   153c6:	6c079463          	bnez	a5,15a8e <__gdtoa+0xf2e>
   153ca:	010ca603          	lw	a2,16(s9)
   153ce:	4685                	li	a3,1
   153d0:	4b41                	li	s6,16
   153d2:	001d8913          	addi	s2,s11,1
   153d6:	68c6d463          	bge	a3,a2,15a5e <__gdtoa+0xefe>
   153da:	89e2                	mv	s3,s8
   153dc:	864a                	mv	a2,s2
   153de:	006d8023          	sb	t1,0(s11)
   153e2:	8c52                	mv	s8,s4
   153e4:	85ea                	mv	a1,s10
   153e6:	8522                	mv	a0,s0
   153e8:	d446                	sw	a7,40(sp)
   153ea:	c832                	sw	a2,16(sp)
   153ec:	29d000ef          	jal	15e88 <_Bfree>
   153f0:	57d2                	lw	a5,52(sp)
   153f2:	4642                	lw	a2,16(sp)
   153f4:	58a2                	lw	a7,40(sp)
   153f6:	00178913          	addi	s2,a5,1
   153fa:	f20c0fe3          	beqz	s8,15338 <__gdtoa+0x7d8>
   153fe:	00098a63          	beqz	s3,15412 <__gdtoa+0x8b2>
   15402:	01898863          	beq	s3,s8,15412 <__gdtoa+0x8b2>
   15406:	85ce                	mv	a1,s3
   15408:	8522                	mv	a0,s0
   1540a:	27f000ef          	jal	15e88 <_Bfree>
   1540e:	58a2                	lw	a7,40(sp)
   15410:	4642                	lw	a2,16(sp)
   15412:	85e2                	mv	a1,s8
   15414:	8522                	mv	a0,s0
   15416:	d446                	sw	a7,40(sp)
   15418:	c832                	sw	a2,16(sp)
   1541a:	26f000ef          	jal	15e88 <_Bfree>
   1541e:	58a2                	lw	a7,40(sp)
   15420:	4642                	lw	a2,16(sp)
   15422:	bf19                	j	15338 <__gdtoa+0x7d8>
   15424:	85e6                	mv	a1,s9
   15426:	8522                	mv	a0,s0
   15428:	d846                	sw	a7,48(sp)
   1542a:	cc76                	sw	t4,24(sp)
   1542c:	c842                	sw	a6,16(sp)
   1542e:	7c9000ef          	jal	163f6 <__lshift>
   15432:	8caa                	mv	s9,a0
   15434:	c60506e3          	beqz	a0,150a0 <__gdtoa+0x540>
   15438:	57b6                	lw	a5,108(sp)
   1543a:	58c2                	lw	a7,48(sp)
   1543c:	4ee2                	lw	t4,24(sp)
   1543e:	4842                	lw	a6,16(sp)
   15440:	b4b9                	j	14e8e <__gdtoa+0x32e>
   15442:	85ea                	mv	a1,s10
   15444:	8566                	mv	a0,s9
   15446:	cc46                	sw	a7,24(sp)
   15448:	c842                	sw	a6,16(sp)
   1544a:	0ba010ef          	jal	16504 <__mcmp>
   1544e:	4842                	lw	a6,16(sp)
   15450:	48e2                	lw	a7,24(sp)
   15452:	a40555e3          	bgez	a0,14e9c <__gdtoa+0x33c>
   15456:	57d2                	lw	a5,52(sp)
   15458:	85e6                	mv	a1,s9
   1545a:	4681                	li	a3,0
   1545c:	17fd                	addi	a5,a5,-1
   1545e:	4629                	li	a2,10
   15460:	8522                	mv	a0,s0
   15462:	da3e                	sw	a5,52(sp)
   15464:	237000ef          	jal	15e9a <__multadd>
   15468:	8caa                	mv	s9,a0
   1546a:	c2050be3          	beqz	a0,150a0 <__gdtoa+0x540>
   1546e:	47c6                	lw	a5,80(sp)
   15470:	48e2                	lw	a7,24(sp)
   15472:	50079a63          	bnez	a5,15986 <__gdtoa+0xe26>
   15476:	47f6                	lw	a5,92(sp)
   15478:	14f05863          	blez	a5,155c8 <__gdtoa+0xa68>
   1547c:	d63e                	sw	a5,44(sp)
   1547e:	5932                	lw	s2,44(sp)
   15480:	8dc6                	mv	s11,a7
   15482:	4685                	li	a3,1
   15484:	89c6                	mv	s3,a7
   15486:	a801                	j	15496 <__gdtoa+0x936>
   15488:	213000ef          	jal	15e9a <__multadd>
   1548c:	8caa                	mv	s9,a0
   1548e:	c00509e3          	beqz	a0,150a0 <__gdtoa+0x540>
   15492:	56b6                	lw	a3,108(sp)
   15494:	0685                	addi	a3,a3,1
   15496:	85ea                	mv	a1,s10
   15498:	8566                	mv	a0,s9
   1549a:	d6b6                	sw	a3,108(sp)
   1549c:	27b1                	jal	15be8 <__quorem_D2A>
   1549e:	03050313          	addi	t1,a0,48
   154a2:	006d8023          	sb	t1,0(s11)
   154a6:	57b6                	lw	a5,108(sp)
   154a8:	4681                	li	a3,0
   154aa:	4629                	li	a2,10
   154ac:	85e6                	mv	a1,s9
   154ae:	8522                	mv	a0,s0
   154b0:	0d85                	addi	s11,s11,1
   154b2:	fd27cbe3          	blt	a5,s2,15488 <__gdtoa+0x928>
   154b6:	88ce                	mv	a7,s3
   154b8:	4981                	li	s3,0
   154ba:	5782                	lw	a5,32(sp)
   154bc:	2c078263          	beqz	a5,15780 <__gdtoa+0xc20>
   154c0:	4689                	li	a3,2
   154c2:	010ca603          	lw	a2,16(s9)
   154c6:	2ed78363          	beq	a5,a3,157ac <__gdtoa+0xc4c>
   154ca:	4685                	li	a3,1
   154cc:	1ac6c763          	blt	a3,a2,1567a <__gdtoa+0xb1a>
   154d0:	014ca683          	lw	a3,20(s9)
   154d4:	1a069363          	bnez	a3,1567a <__gdtoa+0xb1a>
   154d8:	00d036b3          	snez	a3,a3
   154dc:	00469b13          	slli	s6,a3,0x4
   154e0:	03000593          	li	a1,48
   154e4:	fffdc783          	lbu	a5,-1(s11)
   154e8:	866e                	mv	a2,s11
   154ea:	1dfd                	addi	s11,s11,-1
   154ec:	feb78ce3          	beq	a5,a1,154e4 <__gdtoa+0x984>
   154f0:	bdd5                	j	153e4 <__gdtoa+0x884>
   154f2:	57b2                	lw	a5,44(sp)
   154f4:	5742                	lw	a4,48(sp)
   154f6:	fff78693          	addi	a3,a5,-1
   154fa:	10d74463          	blt	a4,a3,15602 <__gdtoa+0xaa2>
   154fe:	40d70d33          	sub	s10,a4,a3
   15502:	4407d263          	bgez	a5,15946 <__gdtoa+0xde6>
   15506:	47e2                	lw	a5,24(sp)
   15508:	5732                	lw	a4,44(sp)
   1550a:	d682                	sw	zero,108(sp)
   1550c:	8f99                	sub	a5,a5,a4
   1550e:	dc3e                	sw	a5,56(sp)
   15510:	b8f1                	j	14dec <__gdtoa+0x28c>
   15512:	4789                	li	a5,2
   15514:	9927d7e3          	bge	a5,s2,14ea2 <__gdtoa+0x342>
   15518:	85ea                	mv	a1,s10
   1551a:	4681                	li	a3,0
   1551c:	4615                	li	a2,5
   1551e:	8522                	mv	a0,s0
   15520:	c846                	sw	a7,16(sp)
   15522:	179000ef          	jal	15e9a <__multadd>
   15526:	85aa                	mv	a1,a0
   15528:	b6050ce3          	beqz	a0,150a0 <__gdtoa+0x540>
   1552c:	57b2                	lw	a5,44(sp)
   1552e:	48c2                	lw	a7,16(sp)
   15530:	e3f9                	bnez	a5,155f6 <__gdtoa+0xa96>
   15532:	c82a                	sw	a0,16(sp)
   15534:	8566                	mv	a0,s9
   15536:	cc46                	sw	a7,24(sp)
   15538:	7cd000ef          	jal	16504 <__mcmp>
   1553c:	45c2                	lw	a1,16(sp)
   1553e:	48e2                	lw	a7,24(sp)
   15540:	0aa05b63          	blez	a0,155f6 <__gdtoa+0xa96>
   15544:	57d2                	lw	a5,52(sp)
   15546:	00278913          	addi	s2,a5,2
   1554a:	03100793          	li	a5,49
   1554e:	00188613          	addi	a2,a7,1
   15552:	00f88023          	sb	a5,0(a7)
   15556:	02000b13          	li	s6,32
   1555a:	8522                	mv	a0,s0
   1555c:	d446                	sw	a7,40(sp)
   1555e:	c832                	sw	a2,16(sp)
   15560:	129000ef          	jal	15e88 <_Bfree>
   15564:	4642                	lw	a2,16(sp)
   15566:	58a2                	lw	a7,40(sp)
   15568:	dc0c08e3          	beqz	s8,15338 <__gdtoa+0x7d8>
   1556c:	b55d                	j	15412 <__gdtoa+0x8b2>
   1556e:	4605                	li	a2,1
   15570:	4585                	li	a1,1
   15572:	fecff06f          	j	14d5e <__gdtoa+0x1fe>
   15576:	85aa                	mv	a1,a0
   15578:	8642                	mv	a2,a6
   1557a:	8522                	mv	a0,s0
   1557c:	c0c6                	sw	a7,64(sp)
   1557e:	d876                	sw	t4,48(sp)
   15580:	5a3000ef          	jal	16322 <__pow5mult>
   15584:	8d2a                	mv	s10,a0
   15586:	b0050de3          	beqz	a0,150a0 <__gdtoa+0x540>
   1558a:	4685                	li	a3,1
   1558c:	5ec2                	lw	t4,48(sp)
   1558e:	4886                	lw	a7,64(sp)
   15590:	1526d063          	bge	a3,s2,156d0 <__gdtoa+0xb70>
   15594:	010d2783          	lw	a5,16(s10)
   15598:	d846                	sw	a7,48(sp)
   1559a:	c876                	sw	t4,16(sp)
   1559c:	078d                	addi	a5,a5,3
   1559e:	078a                	slli	a5,a5,0x2
   155a0:	97ea                	add	a5,a5,s10
   155a2:	43c8                	lw	a0,4(a5)
   155a4:	2a3000ef          	jal	16046 <__hi0bits>
   155a8:	58c2                	lw	a7,48(sp)
   155aa:	4ec2                	lw	t4,16(sp)
   155ac:	8a2a                	mv	s4,a0
   155ae:	885a                	mv	a6,s6
   155b0:	b0d9                	j	14e76 <__gdtoa+0x316>
   155b2:	4685                	li	a3,1
   155b4:	f326cfe3          	blt	a3,s2,154f2 <__gdtoa+0x992>
   155b8:	47e2                	lw	a5,24(sp)
   155ba:	5d42                	lw	s10,48(sp)
   155bc:	9eae                	add	t4,t4,a1
   155be:	dc3e                	sw	a5,56(sp)
   155c0:	97ae                	add	a5,a5,a1
   155c2:	cc3e                	sw	a5,24(sp)
   155c4:	829ff06f          	j	14dec <__gdtoa+0x28c>
   155c8:	4789                	li	a5,2
   155ca:	4727ce63          	blt	a5,s2,15a46 <__gdtoa+0xee6>
   155ce:	47f6                	lw	a5,92(sp)
   155d0:	d63e                	sw	a5,44(sp)
   155d2:	b575                	j	1547e <__gdtoa+0x91e>
   155d4:	57b2                	lw	a5,44(sp)
   155d6:	ccf04fe3          	bgtz	a5,152b4 <__gdtoa+0x754>
   155da:	ef81                	bnez	a5,155f2 <__gdtoa+0xa92>
   155dc:	f001b787          	fld	fa5,-256(gp) # 1cae0 <__SDATA_BEGIN__+0x58>
   155e0:	c87a                	sw	t5,16(sp)
   155e2:	ca7e                	sw	t6,20(sp)
   155e4:	12f77753          	fmul.d	fa4,fa4,fa5
   155e8:	27c2                	fld	fa5,16(sp)
   155ea:	a2e787d3          	fle.d	a5,fa5,fa4
   155ee:	38078663          	beqz	a5,1597a <__gdtoa+0xe1a>
   155f2:	4581                	li	a1,0
   155f4:	4c01                	li	s8,0
   155f6:	57a2                	lw	a5,40(sp)
   155f8:	8646                	mv	a2,a7
   155fa:	4b41                	li	s6,16
   155fc:	40f00933          	neg	s2,a5
   15600:	bfa9                	j	1555a <__gdtoa+0x9fa>
   15602:	57c2                	lw	a5,48(sp)
   15604:	4762                	lw	a4,24(sp)
   15606:	4d01                	li	s10,0
   15608:	40f68633          	sub	a2,a3,a5
   1560c:	57b2                	lw	a5,44(sp)
   1560e:	dc3a                	sw	a4,56(sp)
   15610:	9832                	add	a6,a6,a2
   15612:	d6be                	sw	a5,108(sp)
   15614:	9ebe                	add	t4,t4,a5
   15616:	97ba                	add	a5,a5,a4
   15618:	cc3e                	sw	a5,24(sp)
   1561a:	d836                	sw	a3,48(sp)
   1561c:	fd0ff06f          	j	14dec <__gdtoa+0x28c>
   15620:	85e2                	mv	a1,s8
   15622:	866a                	mv	a2,s10
   15624:	8522                	mv	a0,s0
   15626:	ccc6                	sw	a7,88(sp)
   15628:	c4f6                	sw	t4,72(sp)
   1562a:	c0c2                	sw	a6,64(sp)
   1562c:	4f7000ef          	jal	16322 <__pow5mult>
   15630:	8c2a                	mv	s8,a0
   15632:	a60507e3          	beqz	a0,150a0 <__gdtoa+0x540>
   15636:	85aa                	mv	a1,a0
   15638:	8666                	mv	a2,s9
   1563a:	8522                	mv	a0,s0
   1563c:	351000ef          	jal	1618c <__multiply>
   15640:	8aaa                	mv	s5,a0
   15642:	a4050fe3          	beqz	a0,150a0 <__gdtoa+0x540>
   15646:	85e6                	mv	a1,s9
   15648:	8522                	mv	a0,s0
   1564a:	03f000ef          	jal	15e88 <_Bfree>
   1564e:	57c2                	lw	a5,48(sp)
   15650:	4806                	lw	a6,64(sp)
   15652:	4ea6                	lw	t4,72(sp)
   15654:	41a787b3          	sub	a5,a5,s10
   15658:	d83e                	sw	a5,48(sp)
   1565a:	48e6                	lw	a7,88(sp)
   1565c:	8cd6                	mv	s9,s5
   1565e:	fe078963          	beqz	a5,14e50 <__gdtoa+0x2f0>
   15662:	fd2ff06f          	j	14e34 <__gdtoa+0x2d4>
   15666:	89e2                	mv	s3,s8
   15668:	86ee                	mv	a3,s11
   1566a:	001d8913          	addi	s2,s11,1
   1566e:	8c52                	mv	s8,s4
   15670:	03900613          	li	a2,57
   15674:	8dca                	mv	s11,s2
   15676:	00c68023          	sb	a2,0(a3)
   1567a:	03900593          	li	a1,57
   1567e:	a019                	j	15684 <__gdtoa+0xb24>
   15680:	13b88f63          	beq	a7,s11,157be <__gdtoa+0xc5e>
   15684:	fffdc683          	lbu	a3,-1(s11)
   15688:	866e                	mv	a2,s11
   1568a:	1dfd                	addi	s11,s11,-1
   1568c:	feb68ae3          	beq	a3,a1,15680 <__gdtoa+0xb20>
   15690:	0685                	addi	a3,a3,1
   15692:	00dd8023          	sb	a3,0(s11)
   15696:	02000b13          	li	s6,32
   1569a:	b3a9                	j	153e4 <__gdtoa+0x884>
   1569c:	85e2                	mv	a1,s8
   1569e:	8522                	mv	a0,s0
   156a0:	d446                	sw	a7,40(sp)
   156a2:	c842                	sw	a6,16(sp)
   156a4:	553000ef          	jal	163f6 <__lshift>
   156a8:	4842                	lw	a6,16(sp)
   156aa:	58a2                	lw	a7,40(sp)
   156ac:	8c2a                	mv	s8,a0
   156ae:	800512e3          	bnez	a0,14eb2 <__gdtoa+0x352>
   156b2:	b2fd                	j	150a0 <__gdtoa+0x540>
   156b4:	4785                	li	a5,1
   156b6:	cc82                	sw	zero,88(sp)
   156b8:	c8be                	sw	a5,80(sp)
   156ba:	e90ff06f          	j	14d4a <__gdtoa+0x1ea>
   156be:	4785                	li	a5,1
   156c0:	c8be                	sw	a5,80(sp)
   156c2:	e88ff06f          	j	14d4a <__gdtoa+0x1ea>
   156c6:	4785                	li	a5,1
   156c8:	c8be                	sw	a5,80(sp)
   156ca:	b1f1                	j	15396 <__gdtoa+0x836>
   156cc:	c882                	sw	zero,80(sp)
   156ce:	b1e1                	j	15396 <__gdtoa+0x836>
   156d0:	ecdd92e3          	bne	s11,a3,15594 <__gdtoa+0xa34>
   156d4:	004a2783          	lw	a5,4(s4)
   156d8:	4742                	lw	a4,16(sp)
   156da:	0785                	addi	a5,a5,1
   156dc:	eae7dce3          	bge	a5,a4,15594 <__gdtoa+0xa34>
   156e0:	47e2                	lw	a5,24(sp)
   156e2:	0e85                	addi	t4,t4,1
   156e4:	4b05                	li	s6,1
   156e6:	0785                	addi	a5,a5,1
   156e8:	cc3e                	sw	a5,24(sp)
   156ea:	b56d                	j	15594 <__gdtoa+0xa34>
   156ec:	004c2583          	lw	a1,4(s8)
   156f0:	8522                	mv	a0,s0
   156f2:	c846                	sw	a7,16(sp)
   156f4:	2725                	jal	15e1c <_Balloc>
   156f6:	8a2a                	mv	s4,a0
   156f8:	9a0504e3          	beqz	a0,150a0 <__gdtoa+0x540>
   156fc:	010c2603          	lw	a2,16(s8)
   15700:	00cc0593          	addi	a1,s8,12
   15704:	0531                	addi	a0,a0,12
   15706:	0609                	addi	a2,a2,2
   15708:	060a                	slli	a2,a2,0x2
   1570a:	e45fb0ef          	jal	1154e <memcpy>
   1570e:	85d2                	mv	a1,s4
   15710:	4605                	li	a2,1
   15712:	8522                	mv	a0,s0
   15714:	4e3000ef          	jal	163f6 <__lshift>
   15718:	48c2                	lw	a7,16(sp)
   1571a:	8a2a                	mv	s4,a0
   1571c:	f8051e63          	bnez	a0,14eb8 <__gdtoa+0x358>
   15720:	b241                	j	150a0 <__gdtoa+0x540>
   15722:	ef81b707          	fld	fa4,-264(gp) # 1cad8 <__SDATA_BEGIN__+0x50>
   15726:	ef01b787          	fld	fa5,-272(gp) # 1cad0 <__SDATA_BEGIN__+0x48>
   1572a:	3682                	fld	fa3,32(sp)
   1572c:	fcc00637          	lui	a2,0xfcc00
   15730:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15734:	bc3e                	fsd	fa5,56(sp)
   15736:	5562                	lw	a0,56(sp)
   15738:	55f2                	lw	a1,60(sp)
   1573a:	832a                	mv	t1,a0
   1573c:	962e                	add	a2,a2,a1
   1573e:	de32                	sw	a2,60(sp)
   15740:	f001b707          	fld	fa4,-256(gp) # 1cae0 <__SDATA_BEGIN__+0x58>
   15744:	3782                	fld	fa5,32(sp)
   15746:	dc1a                	sw	t1,56(sp)
   15748:	0ae7f753          	fsub.d	fa4,fa5,fa4
   1574c:	37e2                	fld	fa5,56(sp)
   1574e:	a2e79653          	flt.d	a2,fa5,fa4
   15752:	1e061663          	bnez	a2,1593e <__gdtoa+0xdde>
   15756:	22f797d3          	fneg.d	fa5,fa5
   1575a:	a2f71653          	flt.d	a2,fa4,fa5
   1575e:	e8061ae3          	bnez	a2,155f2 <__gdtoa+0xa92>
   15762:	5f02                	lw	t5,32(sp)
   15764:	5f92                	lw	t6,36(sp)
   15766:	65ed                	lui	a1,0x1b
   15768:	280c4b63          	bltz	s8,159fe <__gdtoa+0xe9e>
   1576c:	57a2                	lw	a5,40(sp)
   1576e:	d002                	sw	zero,32(sp)
   15770:	f785b707          	fld	fa4,-136(a1) # 1af78 <__mprec_tens>
   15774:	b407d0e3          	bgez	a5,152b4 <__gdtoa+0x754>
   15778:	57b2                	lw	a5,44(sp)
   1577a:	b2079de3          	bnez	a5,152b4 <__gdtoa+0x754>
   1577e:	bdb9                	j	155dc <__gdtoa+0xa7c>
   15780:	85e6                	mv	a1,s9
   15782:	4605                	li	a2,1
   15784:	8522                	mv	a0,s0
   15786:	c846                	sw	a7,16(sp)
   15788:	d41a                	sw	t1,40(sp)
   1578a:	46d000ef          	jal	163f6 <__lshift>
   1578e:	8caa                	mv	s9,a0
   15790:	900508e3          	beqz	a0,150a0 <__gdtoa+0x540>
   15794:	85ea                	mv	a1,s10
   15796:	56f000ef          	jal	16504 <__mcmp>
   1579a:	48c2                	lw	a7,16(sp)
   1579c:	eca04fe3          	bgtz	a0,1567a <__gdtoa+0xb1a>
   157a0:	e511                	bnez	a0,157ac <__gdtoa+0xc4c>
   157a2:	5322                	lw	t1,40(sp)
   157a4:	00137313          	andi	t1,t1,1
   157a8:	ec0319e3          	bnez	t1,1567a <__gdtoa+0xb1a>
   157ac:	010ca603          	lw	a2,16(s9)
   157b0:	4685                	li	a3,1
   157b2:	4b41                	li	s6,16
   157b4:	d2c6c6e3          	blt	a3,a2,154e0 <__gdtoa+0x980>
   157b8:	014ca683          	lw	a3,20(s9)
   157bc:	bb31                	j	154d8 <__gdtoa+0x978>
   157be:	57d2                	lw	a5,52(sp)
   157c0:	02000b13          	li	s6,32
   157c4:	0785                	addi	a5,a5,1
   157c6:	da3e                	sw	a5,52(sp)
   157c8:	03100793          	li	a5,49
   157cc:	00f88023          	sb	a5,0(a7)
   157d0:	b911                	j	153e4 <__gdtoa+0x884>
   157d2:	5782                	lw	a5,32(sp)
   157d4:	8926                	mv	s2,s1
   157d6:	835e                	mv	t1,s7
   157d8:	58a2                	lw	a7,40(sp)
   157da:	4be2                	lw	s7,24(sp)
   157dc:	54b2                	lw	s1,44(sp)
   157de:	cb91                	beqz	a5,157f2 <__gdtoa+0xc92>
   157e0:	010ca603          	lw	a2,16(s9)
   157e4:	4685                	li	a3,1
   157e6:	fcc6c163          	blt	a3,a2,14fa8 <__gdtoa+0x448>
   157ea:	014ca683          	lw	a3,20(s9)
   157ee:	fa069d63          	bnez	a3,14fa8 <__gdtoa+0x448>
   157f2:	85e6                	mv	a1,s9
   157f4:	4605                	li	a2,1
   157f6:	8522                	mv	a0,s0
   157f8:	d446                	sw	a7,40(sp)
   157fa:	c81a                	sw	t1,16(sp)
   157fc:	3fb000ef          	jal	163f6 <__lshift>
   15800:	8caa                	mv	s9,a0
   15802:	88050fe3          	beqz	a0,150a0 <__gdtoa+0x540>
   15806:	85ea                	mv	a1,s10
   15808:	4fd000ef          	jal	16504 <__mcmp>
   1580c:	4342                	lw	t1,16(sp)
   1580e:	58a2                	lw	a7,40(sp)
   15810:	22a05e63          	blez	a0,15a4c <__gdtoa+0xeec>
   15814:	03900693          	li	a3,57
   15818:	e4d307e3          	beq	t1,a3,15666 <__gdtoa+0xb06>
   1581c:	02000793          	li	a5,32
   15820:	03190313          	addi	t1,s2,49
   15824:	d03e                	sw	a5,32(sp)
   15826:	b655                	j	153ca <__gdtoa+0x86a>
   15828:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   1582c:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe31d3>
   15830:	a2f715d3          	flt.d	a1,fa4,fa5
   15834:	9e059ae3          	bnez	a1,15228 <__gdtoa+0x6c8>
   15838:	a2e7a5d3          	feq.d	a1,fa5,fa4
   1583c:	c581                	beqz	a1,15844 <__gdtoa+0xce4>
   1583e:	8b85                	andi	a5,a5,1
   15840:	9e0794e3          	bnez	a5,15228 <__gdtoa+0x6c8>
   15844:	87b2                	mv	a5,a2
   15846:	4b41                	li	s6,16
   15848:	03000593          	li	a1,48
   1584c:	fff7c703          	lbu	a4,-1(a5)
   15850:	863e                	mv	a2,a5
   15852:	17fd                	addi	a5,a5,-1
   15854:	feb70ce3          	beq	a4,a1,1584c <__gdtoa+0xcec>
   15858:	892a                	mv	s2,a0
   1585a:	bcf9                	j	15338 <__gdtoa+0x7d8>
   1585c:	03100693          	li	a3,49
   15860:	0505                	addi	a0,a0,1
   15862:	b2d5                	j	15246 <__gdtoa+0x6e6>
   15864:	de32                	sw	a2,60(sp)
   15866:	dc1a                	sw	t1,56(sp)
   15868:	3762                	fld	fa4,56(sp)
   1586a:	de7e                	sw	t6,60(sp)
   1586c:	dc7a                	sw	t5,56(sp)
   1586e:	35e2                	fld	fa1,56(sp)
   15870:	12e7f653          	fmul.d	fa2,fa5,fa4
   15874:	ee01b707          	fld	fa4,-288(gp) # 1cac0 <__SDATA_BEGIN__+0x38>
   15878:	4685                	li	a3,1
   1587a:	22b587d3          	fmv.d	fa5,fa1
   1587e:	d6b6                	sw	a3,108(sp)
   15880:	8646                	mv	a2,a7
   15882:	4f81                	li	t6,0
   15884:	a029                	j	1588e <__gdtoa+0xd2e>
   15886:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1588a:	d6ba                	sw	a4,108(sp)
   1588c:	4f85                	li	t6,1
   1588e:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   15892:	0605                	addi	a2,a2,1
   15894:	03078693          	addi	a3,a5,48
   15898:	0ff6f693          	zext.b	a3,a3
   1589c:	c791                	beqz	a5,158a8 <__gdtoa+0xd48>
   1589e:	d20786d3          	fcvt.d.w	fa3,a5
   158a2:	4f85                	li	t6,1
   158a4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   158a8:	fed60fa3          	sb	a3,-1(a2)
   158ac:	57b6                	lw	a5,108(sp)
   158ae:	00178713          	addi	a4,a5,1
   158b2:	fca79ae3          	bne	a5,a0,15886 <__gdtoa+0xd26>
   158b6:	000f8463          	beqz	t6,158be <__gdtoa+0xd5e>
   158ba:	22f785d3          	fmv.d	fa1,fa5
   158be:	f081b787          	fld	fa5,-248(gp) # 1cae8 <__SDATA_BEGIN__+0x60>
   158c2:	02f67753          	fadd.d	fa4,fa2,fa5
   158c6:	a2b71553          	flt.d	a0,fa4,fa1
   158ca:	0e051f63          	bnez	a0,159c8 <__gdtoa+0xe68>
   158ce:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   158d2:	a2f596d3          	flt.d	a3,fa1,fa5
   158d6:	12069763          	bnez	a3,15a04 <__gdtoa+0xea4>
   158da:	5f02                	lw	t5,32(sp)
   158dc:	5f92                	lw	t6,36(sp)
   158de:	e80c57e3          	bgez	s8,1576c <__gdtoa+0xc0c>
   158e2:	47e2                	lw	a5,24(sp)
   158e4:	5d42                	lw	s10,48(sp)
   158e6:	d002                	sw	zero,32(sp)
   158e8:	dc3e                	sw	a5,56(sp)
   158ea:	4c01                	li	s8,0
   158ec:	d1aff06f          	j	14e06 <__gdtoa+0x2a6>
   158f0:	835e                	mv	t1,s7
   158f2:	89e2                	mv	s3,s8
   158f4:	58a2                	lw	a7,40(sp)
   158f6:	4be2                	lw	s7,24(sp)
   158f8:	54b2                	lw	s1,44(sp)
   158fa:	8c52                	mv	s8,s4
   158fc:	be7d                	j	154ba <__gdtoa+0x95a>
   158fe:	e20782e3          	beqz	a5,15722 <__gdtoa+0xbc2>
   15902:	4576                	lw	a0,92(sp)
   15904:	e4a05fe3          	blez	a0,15762 <__gdtoa+0xc02>
   15908:	ee01b787          	fld	fa5,-288(gp) # 1cac0 <__SDATA_BEGIN__+0x38>
   1590c:	53fd                	li	t2,-1
   1590e:	12f777d3          	fmul.d	fa5,fa4,fa5
   15912:	ee81b707          	fld	fa4,-280(gp) # 1cac8 <__SDATA_BEGIN__+0x40>
   15916:	bc3e                	fsd	fa5,56(sp)
   15918:	36e2                	fld	fa3,56(sp)
   1591a:	ef01b787          	fld	fa5,-272(gp) # 1cad0 <__SDATA_BEGIN__+0x48>
   1591e:	fcc00637          	lui	a2,0xfcc00
   15922:	5f62                	lw	t5,56(sp)
   15924:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15928:	5ff2                	lw	t6,60(sp)
   1592a:	a0be                	fsd	fa5,64(sp)
   1592c:	4706                	lw	a4,64(sp)
   1592e:	4796                	lw	a5,68(sp)
   15930:	833a                	mv	t1,a4
   15932:	963e                	add	a2,a2,a5
   15934:	857ff06f          	j	1518a <__gdtoa+0x62a>
   15938:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe31d3>
   1593c:	b0f5                	j	15228 <__gdtoa+0x6c8>
   1593e:	4909                	li	s2,2
   15940:	4581                	li	a1,0
   15942:	4c01                	li	s8,0
   15944:	b119                	j	1554a <__gdtoa+0x9ea>
   15946:	4762                	lw	a4,24(sp)
   15948:	d6be                	sw	a5,108(sp)
   1594a:	9ebe                	add	t4,t4,a5
   1594c:	97ba                	add	a5,a5,a4
   1594e:	dc3a                	sw	a4,56(sp)
   15950:	cc3e                	sw	a5,24(sp)
   15952:	c9aff06f          	j	14dec <__gdtoa+0x28c>
   15956:	835e                	mv	t1,s7
   15958:	03900693          	li	a3,57
   1595c:	58a2                	lw	a7,40(sp)
   1595e:	4be2                	lw	s7,24(sp)
   15960:	54b2                	lw	s1,44(sp)
   15962:	d0d302e3          	beq	t1,a3,15666 <__gdtoa+0xb06>
   15966:	0305                	addi	t1,t1,1
   15968:	89e2                	mv	s3,s8
   1596a:	001d8613          	addi	a2,s11,1
   1596e:	006d8023          	sb	t1,0(s11)
   15972:	8c52                	mv	s8,s4
   15974:	02000b13          	li	s6,32
   15978:	b4b5                	j	153e4 <__gdtoa+0x884>
   1597a:	57d2                	lw	a5,52(sp)
   1597c:	4581                	li	a1,0
   1597e:	4c01                	li	s8,0
   15980:	00278913          	addi	s2,a5,2
   15984:	b6d9                	j	1554a <__gdtoa+0x9ea>
   15986:	85e2                	mv	a1,s8
   15988:	4681                	li	a3,0
   1598a:	4629                	li	a2,10
   1598c:	8522                	mv	a0,s0
   1598e:	2331                	jal	15e9a <__multadd>
   15990:	8c2a                	mv	s8,a0
   15992:	f0050763          	beqz	a0,150a0 <__gdtoa+0x540>
   15996:	47f6                	lw	a5,92(sp)
   15998:	4842                	lw	a6,16(sp)
   1599a:	48e2                	lw	a7,24(sp)
   1599c:	00f05563          	blez	a5,159a6 <__gdtoa+0xe46>
   159a0:	d63e                	sw	a5,44(sp)
   159a2:	d06ff06f          	j	14ea8 <__gdtoa+0x348>
   159a6:	4789                	li	a5,2
   159a8:	0927cf63          	blt	a5,s2,15a46 <__gdtoa+0xee6>
   159ac:	47f6                	lw	a5,92(sp)
   159ae:	d63e                	sw	a5,44(sp)
   159b0:	cf8ff06f          	j	14ea8 <__gdtoa+0x348>
   159b4:	d2000753          	fcvt.d.w	fa4,zero
   159b8:	00138913          	addi	s2,t2,1
   159bc:	a2e7ab53          	feq.d	s6,fa5,fa4
   159c0:	001b3b13          	seqz	s6,s6
   159c4:	0b12                	slli	s6,s6,0x4
   159c6:	ba8d                	j	15338 <__gdtoa+0x7d8>
   159c8:	00138513          	addi	a0,t2,1
   159cc:	85dff06f          	j	15228 <__gdtoa+0x6c8>
   159d0:	5f02                	lw	t5,32(sp)
   159d2:	5f92                	lw	t6,36(sp)
   159d4:	d80c5ce3          	bgez	s8,1576c <__gdtoa+0xc0c>
   159d8:	d002                	sw	zero,32(sp)
   159da:	bccff06f          	j	14da6 <__gdtoa+0x246>
   159de:	57b2                	lw	a5,44(sp)
   159e0:	5742                	lw	a4,48(sp)
   159e2:	fff78693          	addi	a3,a5,-1
   159e6:	c0d74ee3          	blt	a4,a3,15602 <__gdtoa+0xaa2>
   159ea:	4662                	lw	a2,24(sp)
   159ec:	9ebe                	add	t4,t4,a5
   159ee:	d6be                	sw	a5,108(sp)
   159f0:	97b2                	add	a5,a5,a2
   159f2:	dc32                	sw	a2,56(sp)
   159f4:	40d70d33          	sub	s10,a4,a3
   159f8:	cc3e                	sw	a5,24(sp)
   159fa:	bf2ff06f          	j	14dec <__gdtoa+0x28c>
   159fe:	d002                	sw	zero,32(sp)
   15a00:	ba0ff06f          	j	14da0 <__gdtoa+0x240>
   15a04:	d20007d3          	fcvt.d.w	fa5,zero
   15a08:	87b2                	mv	a5,a2
   15a0a:	00138513          	addi	a0,t2,1
   15a0e:	a2f5ab53          	feq.d	s6,fa1,fa5
   15a12:	001b3b13          	seqz	s6,s6
   15a16:	0b12                	slli	s6,s6,0x4
   15a18:	bd05                	j	15848 <__gdtoa+0xce8>
   15a1a:	835e                	mv	t1,s7
   15a1c:	03900693          	li	a3,57
   15a20:	8926                	mv	s2,s1
   15a22:	58a2                	lw	a7,40(sp)
   15a24:	4be2                	lw	s7,24(sp)
   15a26:	54b2                	lw	s1,44(sp)
   15a28:	c2d30fe3          	beq	t1,a3,15666 <__gdtoa+0xb06>
   15a2c:	07505d63          	blez	s5,15aa6 <__gdtoa+0xf46>
   15a30:	03190313          	addi	t1,s2,49
   15a34:	02000b13          	li	s6,32
   15a38:	89e2                	mv	s3,s8
   15a3a:	001d8613          	addi	a2,s11,1
   15a3e:	006d8023          	sb	t1,0(s11)
   15a42:	8c52                	mv	s8,s4
   15a44:	b245                	j	153e4 <__gdtoa+0x884>
   15a46:	47f6                	lw	a5,92(sp)
   15a48:	d63e                	sw	a5,44(sp)
   15a4a:	b4f9                	j	15518 <__gdtoa+0x9b8>
   15a4c:	e509                	bnez	a0,15a56 <__gdtoa+0xef6>
   15a4e:	00137693          	andi	a3,t1,1
   15a52:	dc0691e3          	bnez	a3,15814 <__gdtoa+0xcb4>
   15a56:	02000793          	li	a5,32
   15a5a:	d03e                	sw	a5,32(sp)
   15a5c:	b2bd                	j	153ca <__gdtoa+0x86a>
   15a5e:	014ca683          	lw	a3,20(s9)
   15a62:	96069ce3          	bnez	a3,153da <__gdtoa+0x87a>
   15a66:	5b02                	lw	s6,32(sp)
   15a68:	ba8d                	j	153da <__gdtoa+0x87a>
   15a6a:	03900693          	li	a3,57
   15a6e:	88da                	mv	a7,s6
   15a70:	00da8b63          	beq	s5,a3,15a86 <__gdtoa+0xf26>
   15a74:	001a8313          	addi	t1,s5,1
   15a78:	02000b13          	li	s6,32
   15a7c:	bab9                	j	153da <__gdtoa+0x87a>
   15a7e:	4b41                	li	s6,16
   15a80:	001d8913          	addi	s2,s11,1
   15a84:	ba99                	j	153da <__gdtoa+0x87a>
   15a86:	89e2                	mv	s3,s8
   15a88:	86ee                	mv	a3,s11
   15a8a:	8c52                	mv	s8,s4
   15a8c:	b6d5                	j	15670 <__gdtoa+0xb10>
   15a8e:	010ca603          	lw	a2,16(s9)
   15a92:	4685                	li	a3,1
   15a94:	d0c6ca63          	blt	a3,a2,14fa8 <__gdtoa+0x448>
   15a98:	014ca683          	lw	a3,20(s9)
   15a9c:	d0069663          	bnez	a3,14fa8 <__gdtoa+0x448>
   15aa0:	001d8913          	addi	s2,s11,1
   15aa4:	ba1d                	j	153da <__gdtoa+0x87a>
   15aa6:	010ca603          	lw	a2,16(s9)
   15aaa:	4685                	li	a3,1
   15aac:	4b41                	li	s6,16
   15aae:	f8c6c5e3          	blt	a3,a2,15a38 <__gdtoa+0xed8>
   15ab2:	014cab03          	lw	s6,20(s9)
   15ab6:	01603b33          	snez	s6,s6
   15aba:	0b12                	slli	s6,s6,0x4
   15abc:	bfb5                	j	15a38 <__gdtoa+0xed8>
   15abe:	000ace63          	bltz	s5,15ada <__gdtoa+0xf7a>
   15ac2:	01596ab3          	or	s5,s2,s5
   15ac6:	000a9663          	bnez	s5,15ad2 <__gdtoa+0xf72>
   15aca:	0009a783          	lw	a5,0(s3)
   15ace:	8b85                	andi	a5,a5,1
   15ad0:	c789                	beqz	a5,15ada <__gdtoa+0xf7a>
   15ad2:	c0d05c63          	blez	a3,14eea <__gdtoa+0x38a>
   15ad6:	c0cff06f          	j	14ee2 <__gdtoa+0x382>
   15ada:	5782                	lw	a5,32(sp)
   15adc:	8926                	mv	s2,s1
   15ade:	835e                	mv	t1,s7
   15ae0:	58a2                	lw	a7,40(sp)
   15ae2:	4be2                	lw	s7,24(sp)
   15ae4:	54b2                	lw	s1,44(sp)
   15ae6:	c385                	beqz	a5,15b06 <__gdtoa+0xfa6>
   15ae8:	010ca583          	lw	a1,16(s9)
   15aec:	4605                	li	a2,1
   15aee:	cab64d63          	blt	a2,a1,14fa8 <__gdtoa+0x448>
   15af2:	014ca603          	lw	a2,20(s9)
   15af6:	ca061963          	bnez	a2,14fa8 <__gdtoa+0x448>
   15afa:	ced04ce3          	bgtz	a3,157f2 <__gdtoa+0xc92>
   15afe:	4b01                	li	s6,0
   15b00:	001d8913          	addi	s2,s11,1
   15b04:	b8d9                	j	153da <__gdtoa+0x87a>
   15b06:	8cd052e3          	blez	a3,153ca <__gdtoa+0x86a>
   15b0a:	b1e5                	j	157f2 <__gdtoa+0xc92>

00015b0c <__rv_alloc_D2A.part.0>:
   15b0c:	66ed                	lui	a3,0x1b
   15b0e:	656d                	lui	a0,0x1b
   15b10:	1141                	addi	sp,sp,-16
   15b12:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   15b16:	4601                	li	a2,0
   15b18:	03900593          	li	a1,57
   15b1c:	bd050513          	addi	a0,a0,-1072 # 1abd0 <__clzsi2+0x162>
   15b20:	c606                	sw	ra,12(sp)
   15b22:	68e010ef          	jal	171b0 <__assert_func>

00015b26 <__rv_alloc_D2A>:
   15b26:	1141                	addi	sp,sp,-16
   15b28:	c422                	sw	s0,8(sp)
   15b2a:	c606                	sw	ra,12(sp)
   15b2c:	46dd                	li	a3,23
   15b2e:	842a                	mv	s0,a0
   15b30:	4705                	li	a4,1
   15b32:	4791                	li	a5,4
   15b34:	02b6f363          	bgeu	a3,a1,15b5a <__rv_alloc_D2A+0x34>
   15b38:	0786                	slli	a5,a5,0x1
   15b3a:	01478693          	addi	a3,a5,20
   15b3e:	863a                	mv	a2,a4
   15b40:	0705                	addi	a4,a4,1
   15b42:	fed5fbe3          	bgeu	a1,a3,15b38 <__rv_alloc_D2A+0x12>
   15b46:	85b2                	mv	a1,a2
   15b48:	dc50                	sw	a2,60(s0)
   15b4a:	8522                	mv	a0,s0
   15b4c:	2cc1                	jal	15e1c <_Balloc>
   15b4e:	c911                	beqz	a0,15b62 <__rv_alloc_D2A+0x3c>
   15b50:	40b2                	lw	ra,12(sp)
   15b52:	dc08                	sw	a0,56(s0)
   15b54:	4422                	lw	s0,8(sp)
   15b56:	0141                	addi	sp,sp,16
   15b58:	8082                	ret
   15b5a:	02052e23          	sw	zero,60(a0)
   15b5e:	4581                	li	a1,0
   15b60:	b7ed                	j	15b4a <__rv_alloc_D2A+0x24>
   15b62:	fabff0ef          	jal	15b0c <__rv_alloc_D2A.part.0>

00015b66 <__nrv_alloc_D2A>:
   15b66:	1141                	addi	sp,sp,-16
   15b68:	c422                	sw	s0,8(sp)
   15b6a:	c226                	sw	s1,4(sp)
   15b6c:	c04a                	sw	s2,0(sp)
   15b6e:	c606                	sw	ra,12(sp)
   15b70:	485d                	li	a6,23
   15b72:	84aa                	mv	s1,a0
   15b74:	842e                	mv	s0,a1
   15b76:	8932                	mv	s2,a2
   15b78:	4705                	li	a4,1
   15b7a:	4791                	li	a5,4
   15b7c:	04d87763          	bgeu	a6,a3,15bca <__nrv_alloc_D2A+0x64>
   15b80:	0786                	slli	a5,a5,0x1
   15b82:	01478813          	addi	a6,a5,20
   15b86:	85ba                	mv	a1,a4
   15b88:	0705                	addi	a4,a4,1
   15b8a:	ff06fbe3          	bgeu	a3,a6,15b80 <__nrv_alloc_D2A+0x1a>
   15b8e:	dccc                	sw	a1,60(s1)
   15b90:	8526                	mv	a0,s1
   15b92:	2469                	jal	15e1c <_Balloc>
   15b94:	c129                	beqz	a0,15bd6 <__nrv_alloc_D2A+0x70>
   15b96:	dc88                	sw	a0,56(s1)
   15b98:	00044783          	lbu	a5,0(s0)
   15b9c:	00140593          	addi	a1,s0,1
   15ba0:	00f50023          	sb	a5,0(a0)
   15ba4:	c79d                	beqz	a5,15bd2 <__nrv_alloc_D2A+0x6c>
   15ba6:	87aa                	mv	a5,a0
   15ba8:	0005c703          	lbu	a4,0(a1)
   15bac:	0785                	addi	a5,a5,1
   15bae:	0585                	addi	a1,a1,1
   15bb0:	00e78023          	sb	a4,0(a5)
   15bb4:	fb75                	bnez	a4,15ba8 <__nrv_alloc_D2A+0x42>
   15bb6:	00090463          	beqz	s2,15bbe <__nrv_alloc_D2A+0x58>
   15bba:	00f92023          	sw	a5,0(s2)
   15bbe:	40b2                	lw	ra,12(sp)
   15bc0:	4422                	lw	s0,8(sp)
   15bc2:	4492                	lw	s1,4(sp)
   15bc4:	4902                	lw	s2,0(sp)
   15bc6:	0141                	addi	sp,sp,16
   15bc8:	8082                	ret
   15bca:	02052e23          	sw	zero,60(a0)
   15bce:	4581                	li	a1,0
   15bd0:	b7c1                	j	15b90 <__nrv_alloc_D2A+0x2a>
   15bd2:	87aa                	mv	a5,a0
   15bd4:	b7cd                	j	15bb6 <__nrv_alloc_D2A+0x50>
   15bd6:	f37ff0ef          	jal	15b0c <__rv_alloc_D2A.part.0>

00015bda <__freedtoa>:
   15bda:	5d54                	lw	a3,60(a0)
   15bdc:	4705                	li	a4,1
   15bde:	00d71733          	sll	a4,a4,a3
   15be2:	c1d4                	sw	a3,4(a1)
   15be4:	c598                	sw	a4,8(a1)
   15be6:	a44d                	j	15e88 <_Bfree>

00015be8 <__quorem_D2A>:
   15be8:	1101                	addi	sp,sp,-32
   15bea:	ca26                	sw	s1,20(sp)
   15bec:	491c                	lw	a5,16(a0)
   15bee:	4984                	lw	s1,16(a1)
   15bf0:	ce06                	sw	ra,28(sp)
   15bf2:	1497c163          	blt	a5,s1,15d34 <__quorem_D2A+0x14c>
   15bf6:	14fd                	addi	s1,s1,-1
   15bf8:	00249313          	slli	t1,s1,0x2
   15bfc:	cc22                	sw	s0,24(sp)
   15bfe:	01458413          	addi	s0,a1,20
   15c02:	c64e                	sw	s3,12(sp)
   15c04:	c452                	sw	s4,8(sp)
   15c06:	006409b3          	add	s3,s0,t1
   15c0a:	01450a13          	addi	s4,a0,20
   15c0e:	0009a783          	lw	a5,0(s3)
   15c12:	9352                	add	t1,t1,s4
   15c14:	00032703          	lw	a4,0(t1)
   15c18:	c84a                	sw	s2,16(sp)
   15c1a:	c256                	sw	s5,4(sp)
   15c1c:	0785                	addi	a5,a5,1
   15c1e:	02f75933          	divu	s2,a4,a5
   15c22:	8aaa                	mv	s5,a0
   15c24:	08f76663          	bltu	a4,a5,15cb0 <__quorem_D2A+0xc8>
   15c28:	6541                	lui	a0,0x10
   15c2a:	88a2                	mv	a7,s0
   15c2c:	8852                	mv	a6,s4
   15c2e:	4f01                	li	t5,0
   15c30:	4e81                	li	t4,0
   15c32:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15c34:	0008a783          	lw	a5,0(a7)
   15c38:	00082603          	lw	a2,0(a6)
   15c3c:	0811                	addi	a6,a6,4
   15c3e:	00a7f6b3          	and	a3,a5,a0
   15c42:	83c1                	srli	a5,a5,0x10
   15c44:	00a67733          	and	a4,a2,a0
   15c48:	01065e13          	srli	t3,a2,0x10
   15c4c:	0891                	addi	a7,a7,4
   15c4e:	032686b3          	mul	a3,a3,s2
   15c52:	032787b3          	mul	a5,a5,s2
   15c56:	96fa                	add	a3,a3,t5
   15c58:	00a6f633          	and	a2,a3,a0
   15c5c:	8f11                	sub	a4,a4,a2
   15c5e:	41d70733          	sub	a4,a4,t4
   15c62:	82c1                	srli	a3,a3,0x10
   15c64:	01075613          	srli	a2,a4,0x10
   15c68:	8a05                	andi	a2,a2,1
   15c6a:	8f69                	and	a4,a4,a0
   15c6c:	97b6                	add	a5,a5,a3
   15c6e:	00a7f6b3          	and	a3,a5,a0
   15c72:	9636                	add	a2,a2,a3
   15c74:	40ce06b3          	sub	a3,t3,a2
   15c78:	01069613          	slli	a2,a3,0x10
   15c7c:	8f51                	or	a4,a4,a2
   15c7e:	82c1                	srli	a3,a3,0x10
   15c80:	fee82e23          	sw	a4,-4(a6)
   15c84:	0107df13          	srli	t5,a5,0x10
   15c88:	0016fe93          	andi	t4,a3,1
   15c8c:	fb19f4e3          	bgeu	s3,a7,15c34 <__quorem_D2A+0x4c>
   15c90:	00032783          	lw	a5,0(t1)
   15c94:	ef91                	bnez	a5,15cb0 <__quorem_D2A+0xc8>
   15c96:	1371                	addi	t1,t1,-4
   15c98:	006a6663          	bltu	s4,t1,15ca4 <__quorem_D2A+0xbc>
   15c9c:	a801                	j	15cac <__quorem_D2A+0xc4>
   15c9e:	14fd                	addi	s1,s1,-1
   15ca0:	006a7663          	bgeu	s4,t1,15cac <__quorem_D2A+0xc4>
   15ca4:	00032783          	lw	a5,0(t1)
   15ca8:	1371                	addi	t1,t1,-4
   15caa:	dbf5                	beqz	a5,15c9e <__quorem_D2A+0xb6>
   15cac:	009aa823          	sw	s1,16(s5)
   15cb0:	8556                	mv	a0,s5
   15cb2:	053000ef          	jal	16504 <__mcmp>
   15cb6:	06054563          	bltz	a0,15d20 <__quorem_D2A+0x138>
   15cba:	6541                	lui	a0,0x10
   15cbc:	85d2                	mv	a1,s4
   15cbe:	4681                	li	a3,0
   15cc0:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15cc2:	419c                	lw	a5,0(a1)
   15cc4:	4010                	lw	a2,0(s0)
   15cc6:	0591                	addi	a1,a1,4
   15cc8:	00a7f733          	and	a4,a5,a0
   15ccc:	00a67833          	and	a6,a2,a0
   15cd0:	41070733          	sub	a4,a4,a6
   15cd4:	8f15                	sub	a4,a4,a3
   15cd6:	01075693          	srli	a3,a4,0x10
   15cda:	8a85                	andi	a3,a3,1
   15cdc:	8241                	srli	a2,a2,0x10
   15cde:	96b2                	add	a3,a3,a2
   15ce0:	83c1                	srli	a5,a5,0x10
   15ce2:	8f95                	sub	a5,a5,a3
   15ce4:	01079693          	slli	a3,a5,0x10
   15ce8:	8f69                	and	a4,a4,a0
   15cea:	8f55                	or	a4,a4,a3
   15cec:	83c1                	srli	a5,a5,0x10
   15cee:	0411                	addi	s0,s0,4
   15cf0:	fee5ae23          	sw	a4,-4(a1)
   15cf4:	0017f693          	andi	a3,a5,1
   15cf8:	fc89f5e3          	bgeu	s3,s0,15cc2 <__quorem_D2A+0xda>
   15cfc:	00249793          	slli	a5,s1,0x2
   15d00:	97d2                	add	a5,a5,s4
   15d02:	4398                	lw	a4,0(a5)
   15d04:	ef09                	bnez	a4,15d1e <__quorem_D2A+0x136>
   15d06:	17f1                	addi	a5,a5,-4
   15d08:	00fa6663          	bltu	s4,a5,15d14 <__quorem_D2A+0x12c>
   15d0c:	a039                	j	15d1a <__quorem_D2A+0x132>
   15d0e:	14fd                	addi	s1,s1,-1
   15d10:	00fa7563          	bgeu	s4,a5,15d1a <__quorem_D2A+0x132>
   15d14:	4398                	lw	a4,0(a5)
   15d16:	17f1                	addi	a5,a5,-4
   15d18:	db7d                	beqz	a4,15d0e <__quorem_D2A+0x126>
   15d1a:	009aa823          	sw	s1,16(s5)
   15d1e:	0905                	addi	s2,s2,1
   15d20:	4462                	lw	s0,24(sp)
   15d22:	40f2                	lw	ra,28(sp)
   15d24:	49b2                	lw	s3,12(sp)
   15d26:	4a22                	lw	s4,8(sp)
   15d28:	4a92                	lw	s5,4(sp)
   15d2a:	44d2                	lw	s1,20(sp)
   15d2c:	854a                	mv	a0,s2
   15d2e:	4942                	lw	s2,16(sp)
   15d30:	6105                	addi	sp,sp,32
   15d32:	8082                	ret
   15d34:	40f2                	lw	ra,28(sp)
   15d36:	44d2                	lw	s1,20(sp)
   15d38:	4501                	li	a0,0
   15d3a:	6105                	addi	sp,sp,32
   15d3c:	8082                	ret

00015d3e <__rshift_D2A>:
   15d3e:	01052803          	lw	a6,16(a0)
   15d42:	4055de13          	srai	t3,a1,0x5
   15d46:	010e4763          	blt	t3,a6,15d54 <__rshift_D2A+0x16>
   15d4a:	00052823          	sw	zero,16(a0)
   15d4e:	00052a23          	sw	zero,20(a0)
   15d52:	8082                	ret
   15d54:	01450313          	addi	t1,a0,20
   15d58:	00281613          	slli	a2,a6,0x2
   15d5c:	002e1793          	slli	a5,t3,0x2
   15d60:	89fd                	andi	a1,a1,31
   15d62:	961a                	add	a2,a2,t1
   15d64:	979a                	add	a5,a5,t1
   15d66:	c5a1                	beqz	a1,15dae <__rshift_D2A+0x70>
   15d68:	4394                	lw	a3,0(a5)
   15d6a:	02000e93          	li	t4,32
   15d6e:	0791                	addi	a5,a5,4
   15d70:	40be8eb3          	sub	t4,t4,a1
   15d74:	00b6d6b3          	srl	a3,a3,a1
   15d78:	06c7f063          	bgeu	a5,a2,15dd8 <__rshift_D2A+0x9a>
   15d7c:	889a                	mv	a7,t1
   15d7e:	4398                	lw	a4,0(a5)
   15d80:	0891                	addi	a7,a7,4
   15d82:	0791                	addi	a5,a5,4
   15d84:	01d71733          	sll	a4,a4,t4
   15d88:	8f55                	or	a4,a4,a3
   15d8a:	fee8ae23          	sw	a4,-4(a7)
   15d8e:	ffc7a683          	lw	a3,-4(a5)
   15d92:	00b6d6b3          	srl	a3,a3,a1
   15d96:	fec7e4e3          	bltu	a5,a2,15d7e <__rshift_D2A+0x40>
   15d9a:	41c80833          	sub	a6,a6,t3
   15d9e:	080a                	slli	a6,a6,0x2
   15da0:	1871                	addi	a6,a6,-4
   15da2:	981a                	add	a6,a6,t1
   15da4:	00d82023          	sw	a3,0(a6)
   15da8:	c28d                	beqz	a3,15dca <__rshift_D2A+0x8c>
   15daa:	0811                	addi	a6,a6,4
   15dac:	a839                	j	15dca <__rshift_D2A+0x8c>
   15dae:	871a                	mv	a4,t1
   15db0:	f8c7fde3          	bgeu	a5,a2,15d4a <__rshift_D2A+0xc>
   15db4:	4394                	lw	a3,0(a5)
   15db6:	0791                	addi	a5,a5,4
   15db8:	0711                	addi	a4,a4,4
   15dba:	fed72e23          	sw	a3,-4(a4)
   15dbe:	fec7ebe3          	bltu	a5,a2,15db4 <__rshift_D2A+0x76>
   15dc2:	41c80833          	sub	a6,a6,t3
   15dc6:	080a                	slli	a6,a6,0x2
   15dc8:	981a                	add	a6,a6,t1
   15dca:	406807b3          	sub	a5,a6,t1
   15dce:	8789                	srai	a5,a5,0x2
   15dd0:	c91c                	sw	a5,16(a0)
   15dd2:	f6680ee3          	beq	a6,t1,15d4e <__rshift_D2A+0x10>
   15dd6:	8082                	ret
   15dd8:	c954                	sw	a3,20(a0)
   15dda:	daa5                	beqz	a3,15d4a <__rshift_D2A+0xc>
   15ddc:	881a                	mv	a6,t1
   15dde:	0811                	addi	a6,a6,4
   15de0:	b7ed                	j	15dca <__rshift_D2A+0x8c>

00015de2 <__trailz_D2A>:
   15de2:	4918                	lw	a4,16(a0)
   15de4:	1101                	addi	sp,sp,-32
   15de6:	0551                	addi	a0,a0,20
   15de8:	070a                	slli	a4,a4,0x2
   15dea:	cc22                	sw	s0,24(sp)
   15dec:	ce06                	sw	ra,28(sp)
   15dee:	972a                	add	a4,a4,a0
   15df0:	4401                	li	s0,0
   15df2:	00e56863          	bltu	a0,a4,15e02 <__trailz_D2A+0x20>
   15df6:	a831                	j	15e12 <__trailz_D2A+0x30>
   15df8:	0511                	addi	a0,a0,4
   15dfa:	02040413          	addi	s0,s0,32
   15dfe:	00e57a63          	bgeu	a0,a4,15e12 <__trailz_D2A+0x30>
   15e02:	411c                	lw	a5,0(a0)
   15e04:	dbf5                	beqz	a5,15df8 <__trailz_D2A+0x16>
   15e06:	00e57663          	bgeu	a0,a4,15e12 <__trailz_D2A+0x30>
   15e0a:	0068                	addi	a0,sp,12
   15e0c:	c63e                	sw	a5,12(sp)
   15e0e:	2471                	jal	1609a <__lo0bits>
   15e10:	942a                	add	s0,s0,a0
   15e12:	40f2                	lw	ra,28(sp)
   15e14:	8522                	mv	a0,s0
   15e16:	4462                	lw	s0,24(sp)
   15e18:	6105                	addi	sp,sp,32
   15e1a:	8082                	ret

00015e1c <_Balloc>:
   15e1c:	417c                	lw	a5,68(a0)
   15e1e:	1141                	addi	sp,sp,-16
   15e20:	c422                	sw	s0,8(sp)
   15e22:	c226                	sw	s1,4(sp)
   15e24:	c606                	sw	ra,12(sp)
   15e26:	842a                	mv	s0,a0
   15e28:	84ae                	mv	s1,a1
   15e2a:	c38d                	beqz	a5,15e4c <_Balloc+0x30>
   15e2c:	00249713          	slli	a4,s1,0x2
   15e30:	97ba                	add	a5,a5,a4
   15e32:	4388                	lw	a0,0(a5)
   15e34:	c515                	beqz	a0,15e60 <_Balloc+0x44>
   15e36:	4118                	lw	a4,0(a0)
   15e38:	c398                	sw	a4,0(a5)
   15e3a:	00052823          	sw	zero,16(a0)
   15e3e:	00052623          	sw	zero,12(a0)
   15e42:	40b2                	lw	ra,12(sp)
   15e44:	4422                	lw	s0,8(sp)
   15e46:	4492                	lw	s1,4(sp)
   15e48:	0141                	addi	sp,sp,16
   15e4a:	8082                	ret
   15e4c:	02100613          	li	a2,33
   15e50:	4591                	li	a1,4
   15e52:	3a4010ef          	jal	171f6 <_calloc_r>
   15e56:	c068                	sw	a0,68(s0)
   15e58:	87aa                	mv	a5,a0
   15e5a:	f969                	bnez	a0,15e2c <_Balloc+0x10>
   15e5c:	4501                	li	a0,0
   15e5e:	b7d5                	j	15e42 <_Balloc+0x26>
   15e60:	c04a                	sw	s2,0(sp)
   15e62:	4905                	li	s2,1
   15e64:	00991933          	sll	s2,s2,s1
   15e68:	00590613          	addi	a2,s2,5
   15e6c:	060a                	slli	a2,a2,0x2
   15e6e:	4585                	li	a1,1
   15e70:	8522                	mv	a0,s0
   15e72:	384010ef          	jal	171f6 <_calloc_r>
   15e76:	c511                	beqz	a0,15e82 <_Balloc+0x66>
   15e78:	01252423          	sw	s2,8(a0)
   15e7c:	c144                	sw	s1,4(a0)
   15e7e:	4902                	lw	s2,0(sp)
   15e80:	bf6d                	j	15e3a <_Balloc+0x1e>
   15e82:	4902                	lw	s2,0(sp)
   15e84:	4501                	li	a0,0
   15e86:	bf75                	j	15e42 <_Balloc+0x26>

00015e88 <_Bfree>:
   15e88:	c981                	beqz	a1,15e98 <_Bfree+0x10>
   15e8a:	41d8                	lw	a4,4(a1)
   15e8c:	417c                	lw	a5,68(a0)
   15e8e:	070a                	slli	a4,a4,0x2
   15e90:	97ba                	add	a5,a5,a4
   15e92:	4398                	lw	a4,0(a5)
   15e94:	c198                	sw	a4,0(a1)
   15e96:	c38c                	sw	a1,0(a5)
   15e98:	8082                	ret

00015e9a <__multadd>:
   15e9a:	1101                	addi	sp,sp,-32
   15e9c:	ca26                	sw	s1,20(sp)
   15e9e:	4984                	lw	s1,16(a1)
   15ea0:	6341                	lui	t1,0x10
   15ea2:	cc22                	sw	s0,24(sp)
   15ea4:	c84a                	sw	s2,16(sp)
   15ea6:	c64e                	sw	s3,12(sp)
   15ea8:	ce06                	sw	ra,28(sp)
   15eaa:	892e                	mv	s2,a1
   15eac:	89aa                	mv	s3,a0
   15eae:	8436                	mv	s0,a3
   15eb0:	01458813          	addi	a6,a1,20
   15eb4:	4881                	li	a7,0
   15eb6:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   15eb8:	00082783          	lw	a5,0(a6)
   15ebc:	0811                	addi	a6,a6,4
   15ebe:	0885                	addi	a7,a7,1
   15ec0:	0067f733          	and	a4,a5,t1
   15ec4:	02c70733          	mul	a4,a4,a2
   15ec8:	0107d693          	srli	a3,a5,0x10
   15ecc:	02c686b3          	mul	a3,a3,a2
   15ed0:	008707b3          	add	a5,a4,s0
   15ed4:	0107d713          	srli	a4,a5,0x10
   15ed8:	0067f7b3          	and	a5,a5,t1
   15edc:	96ba                	add	a3,a3,a4
   15ede:	01069713          	slli	a4,a3,0x10
   15ee2:	97ba                	add	a5,a5,a4
   15ee4:	fef82e23          	sw	a5,-4(a6)
   15ee8:	0106d413          	srli	s0,a3,0x10
   15eec:	fc98c6e3          	blt	a7,s1,15eb8 <__multadd+0x1e>
   15ef0:	cc09                	beqz	s0,15f0a <__multadd+0x70>
   15ef2:	00892783          	lw	a5,8(s2)
   15ef6:	02f4d263          	bge	s1,a5,15f1a <__multadd+0x80>
   15efa:	00448793          	addi	a5,s1,4
   15efe:	078a                	slli	a5,a5,0x2
   15f00:	97ca                	add	a5,a5,s2
   15f02:	c3c0                	sw	s0,4(a5)
   15f04:	0485                	addi	s1,s1,1
   15f06:	00992823          	sw	s1,16(s2)
   15f0a:	40f2                	lw	ra,28(sp)
   15f0c:	4462                	lw	s0,24(sp)
   15f0e:	44d2                	lw	s1,20(sp)
   15f10:	49b2                	lw	s3,12(sp)
   15f12:	854a                	mv	a0,s2
   15f14:	4942                	lw	s2,16(sp)
   15f16:	6105                	addi	sp,sp,32
   15f18:	8082                	ret
   15f1a:	00492583          	lw	a1,4(s2)
   15f1e:	854e                	mv	a0,s3
   15f20:	c452                	sw	s4,8(sp)
   15f22:	0585                	addi	a1,a1,1
   15f24:	ef9ff0ef          	jal	15e1c <_Balloc>
   15f28:	8a2a                	mv	s4,a0
   15f2a:	c121                	beqz	a0,15f6a <__multadd+0xd0>
   15f2c:	01092603          	lw	a2,16(s2)
   15f30:	00c90593          	addi	a1,s2,12
   15f34:	0531                	addi	a0,a0,12
   15f36:	0609                	addi	a2,a2,2
   15f38:	060a                	slli	a2,a2,0x2
   15f3a:	e14fb0ef          	jal	1154e <memcpy>
   15f3e:	00492703          	lw	a4,4(s2)
   15f42:	0449a783          	lw	a5,68(s3)
   15f46:	070a                	slli	a4,a4,0x2
   15f48:	97ba                	add	a5,a5,a4
   15f4a:	4398                	lw	a4,0(a5)
   15f4c:	00e92023          	sw	a4,0(s2)
   15f50:	0127a023          	sw	s2,0(a5)
   15f54:	00448793          	addi	a5,s1,4
   15f58:	8952                	mv	s2,s4
   15f5a:	078a                	slli	a5,a5,0x2
   15f5c:	97ca                	add	a5,a5,s2
   15f5e:	4a22                	lw	s4,8(sp)
   15f60:	0485                	addi	s1,s1,1
   15f62:	c3c0                	sw	s0,4(a5)
   15f64:	00992823          	sw	s1,16(s2)
   15f68:	b74d                	j	15f0a <__multadd+0x70>
   15f6a:	66ed                	lui	a3,0x1b
   15f6c:	656d                	lui	a0,0x1b
   15f6e:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   15f72:	4601                	li	a2,0
   15f74:	0ba00593          	li	a1,186
   15f78:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   15f7c:	234010ef          	jal	171b0 <__assert_func>

00015f80 <__s2b>:
   15f80:	1101                	addi	sp,sp,-32
   15f82:	cc22                	sw	s0,24(sp)
   15f84:	ca26                	sw	s1,20(sp)
   15f86:	c84a                	sw	s2,16(sp)
   15f88:	c64e                	sw	s3,12(sp)
   15f8a:	c452                	sw	s4,8(sp)
   15f8c:	89b6                	mv	s3,a3
   15f8e:	47a5                	li	a5,9
   15f90:	06a1                	addi	a3,a3,8
   15f92:	ce06                	sw	ra,28(sp)
   15f94:	02f6c6b3          	div	a3,a3,a5
   15f98:	892a                	mv	s2,a0
   15f9a:	842e                	mv	s0,a1
   15f9c:	8a32                	mv	s4,a2
   15f9e:	84ba                	mv	s1,a4
   15fa0:	0937d563          	bge	a5,s3,1602a <__s2b+0xaa>
   15fa4:	4785                	li	a5,1
   15fa6:	4581                	li	a1,0
   15fa8:	0786                	slli	a5,a5,0x1
   15faa:	0585                	addi	a1,a1,1
   15fac:	fed7cee3          	blt	a5,a3,15fa8 <__s2b+0x28>
   15fb0:	854a                	mv	a0,s2
   15fb2:	e6bff0ef          	jal	15e1c <_Balloc>
   15fb6:	85aa                	mv	a1,a0
   15fb8:	c93d                	beqz	a0,1602e <__s2b+0xae>
   15fba:	4785                	li	a5,1
   15fbc:	c91c                	sw	a5,16(a0)
   15fbe:	c944                	sw	s1,20(a0)
   15fc0:	47a5                	li	a5,9
   15fc2:	0747d163          	bge	a5,s4,16024 <__s2b+0xa4>
   15fc6:	c256                	sw	s5,4(sp)
   15fc8:	00940a93          	addi	s5,s0,9
   15fcc:	84d6                	mv	s1,s5
   15fce:	9452                	add	s0,s0,s4
   15fd0:	0004c683          	lbu	a3,0(s1)
   15fd4:	4629                	li	a2,10
   15fd6:	854a                	mv	a0,s2
   15fd8:	fd068693          	addi	a3,a3,-48
   15fdc:	ebfff0ef          	jal	15e9a <__multadd>
   15fe0:	0485                	addi	s1,s1,1
   15fe2:	85aa                	mv	a1,a0
   15fe4:	fe8496e3          	bne	s1,s0,15fd0 <__s2b+0x50>
   15fe8:	ff8a0413          	addi	s0,s4,-8
   15fec:	9456                	add	s0,s0,s5
   15fee:	4a92                	lw	s5,4(sp)
   15ff0:	033a5163          	bge	s4,s3,16012 <__s2b+0x92>
   15ff4:	414989b3          	sub	s3,s3,s4
   15ff8:	99a2                	add	s3,s3,s0
   15ffa:	00044683          	lbu	a3,0(s0)
   15ffe:	4629                	li	a2,10
   16000:	854a                	mv	a0,s2
   16002:	fd068693          	addi	a3,a3,-48
   16006:	e95ff0ef          	jal	15e9a <__multadd>
   1600a:	0405                	addi	s0,s0,1
   1600c:	85aa                	mv	a1,a0
   1600e:	ff3416e3          	bne	s0,s3,15ffa <__s2b+0x7a>
   16012:	40f2                	lw	ra,28(sp)
   16014:	4462                	lw	s0,24(sp)
   16016:	44d2                	lw	s1,20(sp)
   16018:	4942                	lw	s2,16(sp)
   1601a:	49b2                	lw	s3,12(sp)
   1601c:	4a22                	lw	s4,8(sp)
   1601e:	852e                	mv	a0,a1
   16020:	6105                	addi	sp,sp,32
   16022:	8082                	ret
   16024:	0429                	addi	s0,s0,10
   16026:	4a25                	li	s4,9
   16028:	b7e1                	j	15ff0 <__s2b+0x70>
   1602a:	4581                	li	a1,0
   1602c:	b751                	j	15fb0 <__s2b+0x30>
   1602e:	66ed                	lui	a3,0x1b
   16030:	656d                	lui	a0,0x1b
   16032:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   16036:	4601                	li	a2,0
   16038:	0d300593          	li	a1,211
   1603c:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   16040:	c256                	sw	s5,4(sp)
   16042:	16e010ef          	jal	171b0 <__assert_func>

00016046 <__hi0bits>:
   16046:	87aa                	mv	a5,a0
   16048:	6741                	lui	a4,0x10
   1604a:	4501                	li	a0,0
   1604c:	00e7f463          	bgeu	a5,a4,16054 <__hi0bits+0xe>
   16050:	07c2                	slli	a5,a5,0x10
   16052:	4541                	li	a0,16
   16054:	01000737          	lui	a4,0x1000
   16058:	00e7f463          	bgeu	a5,a4,16060 <__hi0bits+0x1a>
   1605c:	0521                	addi	a0,a0,8
   1605e:	07a2                	slli	a5,a5,0x8
   16060:	10000737          	lui	a4,0x10000
   16064:	00e7f463          	bgeu	a5,a4,1606c <__hi0bits+0x26>
   16068:	0511                	addi	a0,a0,4
   1606a:	0792                	slli	a5,a5,0x4
   1606c:	40000737          	lui	a4,0x40000
   16070:	00e7e763          	bltu	a5,a4,1607e <__hi0bits+0x38>
   16074:	fff7c793          	not	a5,a5
   16078:	83fd                	srli	a5,a5,0x1f
   1607a:	953e                	add	a0,a0,a5
   1607c:	8082                	ret
   1607e:	078a                	slli	a5,a5,0x2
   16080:	0007c963          	bltz	a5,16092 <__hi0bits+0x4c>
   16084:	00179713          	slli	a4,a5,0x1
   16088:	00074763          	bltz	a4,16096 <__hi0bits+0x50>
   1608c:	02000513          	li	a0,32
   16090:	8082                	ret
   16092:	0509                	addi	a0,a0,2
   16094:	8082                	ret
   16096:	050d                	addi	a0,a0,3
   16098:	8082                	ret

0001609a <__lo0bits>:
   1609a:	411c                	lw	a5,0(a0)
   1609c:	872a                	mv	a4,a0
   1609e:	0077f693          	andi	a3,a5,7
   160a2:	ce81                	beqz	a3,160ba <__lo0bits+0x20>
   160a4:	0017f693          	andi	a3,a5,1
   160a8:	4501                	li	a0,0
   160aa:	ee95                	bnez	a3,160e6 <__lo0bits+0x4c>
   160ac:	0027f693          	andi	a3,a5,2
   160b0:	c6b5                	beqz	a3,1611c <__lo0bits+0x82>
   160b2:	8385                	srli	a5,a5,0x1
   160b4:	c31c                	sw	a5,0(a4)
   160b6:	4505                	li	a0,1
   160b8:	8082                	ret
   160ba:	01079693          	slli	a3,a5,0x10
   160be:	82c1                	srli	a3,a3,0x10
   160c0:	4501                	li	a0,0
   160c2:	c6b9                	beqz	a3,16110 <__lo0bits+0x76>
   160c4:	0ff7f693          	zext.b	a3,a5
   160c8:	ce95                	beqz	a3,16104 <__lo0bits+0x6a>
   160ca:	00f7f693          	andi	a3,a5,15
   160ce:	c68d                	beqz	a3,160f8 <__lo0bits+0x5e>
   160d0:	0037f693          	andi	a3,a5,3
   160d4:	ce81                	beqz	a3,160ec <__lo0bits+0x52>
   160d6:	0017f693          	andi	a3,a5,1
   160da:	e699                	bnez	a3,160e8 <__lo0bits+0x4e>
   160dc:	8385                	srli	a5,a5,0x1
   160de:	0505                	addi	a0,a0,1
   160e0:	e781                	bnez	a5,160e8 <__lo0bits+0x4e>
   160e2:	02000513          	li	a0,32
   160e6:	8082                	ret
   160e8:	c31c                	sw	a5,0(a4)
   160ea:	8082                	ret
   160ec:	8389                	srli	a5,a5,0x2
   160ee:	0017f693          	andi	a3,a5,1
   160f2:	0509                	addi	a0,a0,2
   160f4:	faf5                	bnez	a3,160e8 <__lo0bits+0x4e>
   160f6:	b7dd                	j	160dc <__lo0bits+0x42>
   160f8:	8391                	srli	a5,a5,0x4
   160fa:	0037f693          	andi	a3,a5,3
   160fe:	0511                	addi	a0,a0,4
   16100:	faf9                	bnez	a3,160d6 <__lo0bits+0x3c>
   16102:	b7ed                	j	160ec <__lo0bits+0x52>
   16104:	83a1                	srli	a5,a5,0x8
   16106:	00f7f693          	andi	a3,a5,15
   1610a:	0521                	addi	a0,a0,8
   1610c:	f2f1                	bnez	a3,160d0 <__lo0bits+0x36>
   1610e:	b7ed                	j	160f8 <__lo0bits+0x5e>
   16110:	83c1                	srli	a5,a5,0x10
   16112:	0ff7f693          	zext.b	a3,a5
   16116:	4541                	li	a0,16
   16118:	facd                	bnez	a3,160ca <__lo0bits+0x30>
   1611a:	b7ed                	j	16104 <__lo0bits+0x6a>
   1611c:	8389                	srli	a5,a5,0x2
   1611e:	c31c                	sw	a5,0(a4)
   16120:	4509                	li	a0,2
   16122:	8082                	ret

00016124 <__i2b>:
   16124:	417c                	lw	a5,68(a0)
   16126:	1141                	addi	sp,sp,-16
   16128:	c422                	sw	s0,8(sp)
   1612a:	c226                	sw	s1,4(sp)
   1612c:	c606                	sw	ra,12(sp)
   1612e:	842a                	mv	s0,a0
   16130:	84ae                	mv	s1,a1
   16132:	cf99                	beqz	a5,16150 <__i2b+0x2c>
   16134:	43c8                	lw	a0,4(a5)
   16136:	c121                	beqz	a0,16176 <__i2b+0x52>
   16138:	4118                	lw	a4,0(a0)
   1613a:	c3d8                	sw	a4,4(a5)
   1613c:	40b2                	lw	ra,12(sp)
   1613e:	4422                	lw	s0,8(sp)
   16140:	4785                	li	a5,1
   16142:	c944                	sw	s1,20(a0)
   16144:	00052623          	sw	zero,12(a0)
   16148:	c91c                	sw	a5,16(a0)
   1614a:	4492                	lw	s1,4(sp)
   1614c:	0141                	addi	sp,sp,16
   1614e:	8082                	ret
   16150:	02100613          	li	a2,33
   16154:	4591                	li	a1,4
   16156:	0a0010ef          	jal	171f6 <_calloc_r>
   1615a:	c068                	sw	a0,68(s0)
   1615c:	87aa                	mv	a5,a0
   1615e:	f979                	bnez	a0,16134 <__i2b+0x10>
   16160:	66ed                	lui	a3,0x1b
   16162:	656d                	lui	a0,0x1b
   16164:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   16168:	4601                	li	a2,0
   1616a:	14500593          	li	a1,325
   1616e:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   16172:	03e010ef          	jal	171b0 <__assert_func>
   16176:	4671                	li	a2,28
   16178:	4585                	li	a1,1
   1617a:	8522                	mv	a0,s0
   1617c:	07a010ef          	jal	171f6 <_calloc_r>
   16180:	d165                	beqz	a0,16160 <__i2b+0x3c>
   16182:	4785                	li	a5,1
   16184:	c15c                	sw	a5,4(a0)
   16186:	4789                	li	a5,2
   16188:	c51c                	sw	a5,8(a0)
   1618a:	bf4d                	j	1613c <__i2b+0x18>

0001618c <__multiply>:
   1618c:	1101                	addi	sp,sp,-32
   1618e:	c84a                	sw	s2,16(sp)
   16190:	c64e                	sw	s3,12(sp)
   16192:	0105a903          	lw	s2,16(a1)
   16196:	01062983          	lw	s3,16(a2)
   1619a:	ca26                	sw	s1,20(sp)
   1619c:	c452                	sw	s4,8(sp)
   1619e:	ce06                	sw	ra,28(sp)
   161a0:	cc22                	sw	s0,24(sp)
   161a2:	8a2e                	mv	s4,a1
   161a4:	84b2                	mv	s1,a2
   161a6:	01394763          	blt	s2,s3,161b4 <__multiply+0x28>
   161aa:	874e                	mv	a4,s3
   161ac:	84ae                	mv	s1,a1
   161ae:	89ca                	mv	s3,s2
   161b0:	8a32                	mv	s4,a2
   161b2:	893a                	mv	s2,a4
   161b4:	449c                	lw	a5,8(s1)
   161b6:	40cc                	lw	a1,4(s1)
   161b8:	01298433          	add	s0,s3,s2
   161bc:	0087a7b3          	slt	a5,a5,s0
   161c0:	95be                	add	a1,a1,a5
   161c2:	c5bff0ef          	jal	15e1c <_Balloc>
   161c6:	14050363          	beqz	a0,1630c <__multiply+0x180>
   161ca:	01450313          	addi	t1,a0,20
   161ce:	00241893          	slli	a7,s0,0x2
   161d2:	989a                	add	a7,a7,t1
   161d4:	879a                	mv	a5,t1
   161d6:	01137763          	bgeu	t1,a7,161e4 <__multiply+0x58>
   161da:	0007a023          	sw	zero,0(a5)
   161de:	0791                	addi	a5,a5,4
   161e0:	ff17ede3          	bltu	a5,a7,161da <__multiply+0x4e>
   161e4:	014a0813          	addi	a6,s4,20
   161e8:	00291e13          	slli	t3,s2,0x2
   161ec:	01448e93          	addi	t4,s1,20
   161f0:	00299593          	slli	a1,s3,0x2
   161f4:	9e42                	add	t3,t3,a6
   161f6:	95f6                	add	a1,a1,t4
   161f8:	0fc87163          	bgeu	a6,t3,162da <__multiply+0x14e>
   161fc:	01548793          	addi	a5,s1,21
   16200:	4f11                	li	t5,4
   16202:	0ef5fe63          	bgeu	a1,a5,162fe <__multiply+0x172>
   16206:	66c1                	lui	a3,0x10
   16208:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   1620a:	a809                	j	1621c <__multiply+0x90>
   1620c:	010fdf93          	srli	t6,t6,0x10
   16210:	060f9863          	bnez	t6,16280 <__multiply+0xf4>
   16214:	0811                	addi	a6,a6,4
   16216:	0311                	addi	t1,t1,4
   16218:	0dc87163          	bgeu	a6,t3,162da <__multiply+0x14e>
   1621c:	00082f83          	lw	t6,0(a6)
   16220:	00dff3b3          	and	t2,t6,a3
   16224:	fe0384e3          	beqz	t2,1620c <__multiply+0x80>
   16228:	829a                	mv	t0,t1
   1622a:	8ff6                	mv	t6,t4
   1622c:	4481                	li	s1,0
   1622e:	000fa783          	lw	a5,0(t6)
   16232:	0002a603          	lw	a2,0(t0) # 11534 <memset+0x8e>
   16236:	0291                	addi	t0,t0,4
   16238:	00d7f733          	and	a4,a5,a3
   1623c:	02770733          	mul	a4,a4,t2
   16240:	83c1                	srli	a5,a5,0x10
   16242:	00d67933          	and	s2,a2,a3
   16246:	8241                	srli	a2,a2,0x10
   16248:	0f91                	addi	t6,t6,4
   1624a:	027787b3          	mul	a5,a5,t2
   1624e:	974a                	add	a4,a4,s2
   16250:	9726                	add	a4,a4,s1
   16252:	01075493          	srli	s1,a4,0x10
   16256:	8f75                	and	a4,a4,a3
   16258:	97b2                	add	a5,a5,a2
   1625a:	97a6                	add	a5,a5,s1
   1625c:	01079613          	slli	a2,a5,0x10
   16260:	8f51                	or	a4,a4,a2
   16262:	fee2ae23          	sw	a4,-4(t0)
   16266:	0107d493          	srli	s1,a5,0x10
   1626a:	fcbfe2e3          	bltu	t6,a1,1622e <__multiply+0xa2>
   1626e:	01e307b3          	add	a5,t1,t5
   16272:	c384                	sw	s1,0(a5)
   16274:	00082f83          	lw	t6,0(a6)
   16278:	010fdf93          	srli	t6,t6,0x10
   1627c:	f80f8ce3          	beqz	t6,16214 <__multiply+0x88>
   16280:	00032703          	lw	a4,0(t1)
   16284:	829a                	mv	t0,t1
   16286:	8676                	mv	a2,t4
   16288:	84ba                	mv	s1,a4
   1628a:	4381                	li	t2,0
   1628c:	421c                	lw	a5,0(a2)
   1628e:	0104d993          	srli	s3,s1,0x10
   16292:	8f75                	and	a4,a4,a3
   16294:	8ff5                	and	a5,a5,a3
   16296:	03f787b3          	mul	a5,a5,t6
   1629a:	0042a483          	lw	s1,4(t0)
   1629e:	0291                	addi	t0,t0,4
   162a0:	0611                	addi	a2,a2,4
   162a2:	00d4f933          	and	s2,s1,a3
   162a6:	979e                	add	a5,a5,t2
   162a8:	97ce                	add	a5,a5,s3
   162aa:	01079393          	slli	t2,a5,0x10
   162ae:	00e3e733          	or	a4,t2,a4
   162b2:	fee2ae23          	sw	a4,-4(t0)
   162b6:	ffe65703          	lhu	a4,-2(a2)
   162ba:	83c1                	srli	a5,a5,0x10
   162bc:	03f70733          	mul	a4,a4,t6
   162c0:	974a                	add	a4,a4,s2
   162c2:	973e                	add	a4,a4,a5
   162c4:	01075393          	srli	t2,a4,0x10
   162c8:	fcb662e3          	bltu	a2,a1,1628c <__multiply+0x100>
   162cc:	01e307b3          	add	a5,t1,t5
   162d0:	c398                	sw	a4,0(a5)
   162d2:	0811                	addi	a6,a6,4
   162d4:	0311                	addi	t1,t1,4
   162d6:	f5c863e3          	bltu	a6,t3,1621c <__multiply+0x90>
   162da:	00804563          	bgtz	s0,162e4 <__multiply+0x158>
   162de:	a039                	j	162ec <__multiply+0x160>
   162e0:	147d                	addi	s0,s0,-1
   162e2:	c409                	beqz	s0,162ec <__multiply+0x160>
   162e4:	ffc8a783          	lw	a5,-4(a7)
   162e8:	18f1                	addi	a7,a7,-4
   162ea:	dbfd                	beqz	a5,162e0 <__multiply+0x154>
   162ec:	40f2                	lw	ra,28(sp)
   162ee:	c900                	sw	s0,16(a0)
   162f0:	4462                	lw	s0,24(sp)
   162f2:	44d2                	lw	s1,20(sp)
   162f4:	4942                	lw	s2,16(sp)
   162f6:	49b2                	lw	s3,12(sp)
   162f8:	4a22                	lw	s4,8(sp)
   162fa:	6105                	addi	sp,sp,32
   162fc:	8082                	ret
   162fe:	409587b3          	sub	a5,a1,s1
   16302:	17ad                	addi	a5,a5,-21
   16304:	9bf1                	andi	a5,a5,-4
   16306:	00478f13          	addi	t5,a5,4
   1630a:	bdf5                	j	16206 <__multiply+0x7a>
   1630c:	66ed                	lui	a3,0x1b
   1630e:	656d                	lui	a0,0x1b
   16310:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   16314:	4601                	li	a2,0
   16316:	16200593          	li	a1,354
   1631a:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   1631e:	693000ef          	jal	171b0 <__assert_func>

00016322 <__pow5mult>:
   16322:	1101                	addi	sp,sp,-32
   16324:	cc22                	sw	s0,24(sp)
   16326:	c84a                	sw	s2,16(sp)
   16328:	c64e                	sw	s3,12(sp)
   1632a:	ce06                	sw	ra,28(sp)
   1632c:	00367793          	andi	a5,a2,3
   16330:	8432                	mv	s0,a2
   16332:	89aa                	mv	s3,a0
   16334:	892e                	mv	s2,a1
   16336:	ebad                	bnez	a5,163a8 <__pow5mult+0x86>
   16338:	8409                	srai	s0,s0,0x2
   1633a:	c431                	beqz	s0,16386 <__pow5mult+0x64>
   1633c:	ca26                	sw	s1,20(sp)
   1633e:	0409a483          	lw	s1,64(s3)
   16342:	ccbd                	beqz	s1,163c0 <__pow5mult+0x9e>
   16344:	00147793          	andi	a5,s0,1
   16348:	eb89                	bnez	a5,1635a <__pow5mult+0x38>
   1634a:	8405                	srai	s0,s0,0x1
   1634c:	cc05                	beqz	s0,16384 <__pow5mult+0x62>
   1634e:	4088                	lw	a0,0(s1)
   16350:	c131                	beqz	a0,16394 <__pow5mult+0x72>
   16352:	84aa                	mv	s1,a0
   16354:	00147793          	andi	a5,s0,1
   16358:	dbed                	beqz	a5,1634a <__pow5mult+0x28>
   1635a:	8626                	mv	a2,s1
   1635c:	85ca                	mv	a1,s2
   1635e:	854e                	mv	a0,s3
   16360:	e2dff0ef          	jal	1618c <__multiply>
   16364:	00090d63          	beqz	s2,1637e <__pow5mult+0x5c>
   16368:	00492703          	lw	a4,4(s2)
   1636c:	0449a783          	lw	a5,68(s3)
   16370:	070a                	slli	a4,a4,0x2
   16372:	97ba                	add	a5,a5,a4
   16374:	4398                	lw	a4,0(a5)
   16376:	00e92023          	sw	a4,0(s2)
   1637a:	0127a023          	sw	s2,0(a5)
   1637e:	8405                	srai	s0,s0,0x1
   16380:	892a                	mv	s2,a0
   16382:	f471                	bnez	s0,1634e <__pow5mult+0x2c>
   16384:	44d2                	lw	s1,20(sp)
   16386:	40f2                	lw	ra,28(sp)
   16388:	4462                	lw	s0,24(sp)
   1638a:	49b2                	lw	s3,12(sp)
   1638c:	854a                	mv	a0,s2
   1638e:	4942                	lw	s2,16(sp)
   16390:	6105                	addi	sp,sp,32
   16392:	8082                	ret
   16394:	8626                	mv	a2,s1
   16396:	85a6                	mv	a1,s1
   16398:	854e                	mv	a0,s3
   1639a:	df3ff0ef          	jal	1618c <__multiply>
   1639e:	c088                	sw	a0,0(s1)
   163a0:	00052023          	sw	zero,0(a0)
   163a4:	84aa                	mv	s1,a0
   163a6:	b77d                	j	16354 <__pow5mult+0x32>
   163a8:	17fd                	addi	a5,a5,-1
   163aa:	676d                	lui	a4,0x1b
   163ac:	f1870713          	addi	a4,a4,-232 # 1af18 <p05.0>
   163b0:	078a                	slli	a5,a5,0x2
   163b2:	97ba                	add	a5,a5,a4
   163b4:	4390                	lw	a2,0(a5)
   163b6:	4681                	li	a3,0
   163b8:	ae3ff0ef          	jal	15e9a <__multadd>
   163bc:	892a                	mv	s2,a0
   163be:	bfad                	j	16338 <__pow5mult+0x16>
   163c0:	4585                	li	a1,1
   163c2:	854e                	mv	a0,s3
   163c4:	a59ff0ef          	jal	15e1c <_Balloc>
   163c8:	84aa                	mv	s1,a0
   163ca:	c919                	beqz	a0,163e0 <__pow5mult+0xbe>
   163cc:	27100793          	li	a5,625
   163d0:	c95c                	sw	a5,20(a0)
   163d2:	4785                	li	a5,1
   163d4:	c91c                	sw	a5,16(a0)
   163d6:	04a9a023          	sw	a0,64(s3)
   163da:	00052023          	sw	zero,0(a0)
   163de:	b79d                	j	16344 <__pow5mult+0x22>
   163e0:	66ed                	lui	a3,0x1b
   163e2:	656d                	lui	a0,0x1b
   163e4:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   163e8:	4601                	li	a2,0
   163ea:	14500593          	li	a1,325
   163ee:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   163f2:	5bf000ef          	jal	171b0 <__assert_func>

000163f6 <__lshift>:
   163f6:	1101                	addi	sp,sp,-32
   163f8:	c256                	sw	s5,4(sp)
   163fa:	0105aa83          	lw	s5,16(a1)
   163fe:	459c                	lw	a5,8(a1)
   16400:	c64e                	sw	s3,12(sp)
   16402:	40565993          	srai	s3,a2,0x5
   16406:	9ace                	add	s5,s5,s3
   16408:	cc22                	sw	s0,24(sp)
   1640a:	ca26                	sw	s1,20(sp)
   1640c:	c84a                	sw	s2,16(sp)
   1640e:	c452                	sw	s4,8(sp)
   16410:	ce06                	sw	ra,28(sp)
   16412:	001a8913          	addi	s2,s5,1
   16416:	84ae                	mv	s1,a1
   16418:	8432                	mv	s0,a2
   1641a:	41cc                	lw	a1,4(a1)
   1641c:	8a2a                	mv	s4,a0
   1641e:	0127d663          	bge	a5,s2,1642a <__lshift+0x34>
   16422:	0786                	slli	a5,a5,0x1
   16424:	0585                	addi	a1,a1,1
   16426:	ff27cee3          	blt	a5,s2,16422 <__lshift+0x2c>
   1642a:	8552                	mv	a0,s4
   1642c:	9f1ff0ef          	jal	15e1c <_Balloc>
   16430:	cd5d                	beqz	a0,164ee <__lshift+0xf8>
   16432:	01450813          	addi	a6,a0,20
   16436:	01305e63          	blez	s3,16452 <__lshift+0x5c>
   1643a:	0995                	addi	s3,s3,5
   1643c:	098a                	slli	s3,s3,0x2
   1643e:	01350733          	add	a4,a0,s3
   16442:	87c2                	mv	a5,a6
   16444:	0791                	addi	a5,a5,4
   16446:	fe07ae23          	sw	zero,-4(a5)
   1644a:	fee79de3          	bne	a5,a4,16444 <__lshift+0x4e>
   1644e:	19b1                	addi	s3,s3,-20
   16450:	984e                	add	a6,a6,s3
   16452:	0104a883          	lw	a7,16(s1)
   16456:	01448793          	addi	a5,s1,20
   1645a:	01f47613          	andi	a2,s0,31
   1645e:	088a                	slli	a7,a7,0x2
   16460:	98be                	add	a7,a7,a5
   16462:	c63d                	beqz	a2,164d0 <__lshift+0xda>
   16464:	02000593          	li	a1,32
   16468:	8d91                	sub	a1,a1,a2
   1646a:	8342                	mv	t1,a6
   1646c:	4681                	li	a3,0
   1646e:	4398                	lw	a4,0(a5)
   16470:	0311                	addi	t1,t1,4
   16472:	0791                	addi	a5,a5,4
   16474:	00c71733          	sll	a4,a4,a2
   16478:	8f55                	or	a4,a4,a3
   1647a:	fee32e23          	sw	a4,-4(t1)
   1647e:	ffc7a683          	lw	a3,-4(a5)
   16482:	00b6d6b3          	srl	a3,a3,a1
   16486:	ff17e4e3          	bltu	a5,a7,1646e <__lshift+0x78>
   1648a:	01548793          	addi	a5,s1,21
   1648e:	4711                	li	a4,4
   16490:	00f8e863          	bltu	a7,a5,164a0 <__lshift+0xaa>
   16494:	409887b3          	sub	a5,a7,s1
   16498:	17ad                	addi	a5,a5,-21
   1649a:	9bf1                	andi	a5,a5,-4
   1649c:	00478713          	addi	a4,a5,4
   164a0:	983a                	add	a6,a6,a4
   164a2:	00d82023          	sw	a3,0(a6)
   164a6:	e291                	bnez	a3,164aa <__lshift+0xb4>
   164a8:	8956                	mv	s2,s5
   164aa:	40d8                	lw	a4,4(s1)
   164ac:	044a2783          	lw	a5,68(s4)
   164b0:	40f2                	lw	ra,28(sp)
   164b2:	070a                	slli	a4,a4,0x2
   164b4:	97ba                	add	a5,a5,a4
   164b6:	4398                	lw	a4,0(a5)
   164b8:	01252823          	sw	s2,16(a0)
   164bc:	4462                	lw	s0,24(sp)
   164be:	c098                	sw	a4,0(s1)
   164c0:	c384                	sw	s1,0(a5)
   164c2:	4942                	lw	s2,16(sp)
   164c4:	44d2                	lw	s1,20(sp)
   164c6:	49b2                	lw	s3,12(sp)
   164c8:	4a22                	lw	s4,8(sp)
   164ca:	4a92                	lw	s5,4(sp)
   164cc:	6105                	addi	sp,sp,32
   164ce:	8082                	ret
   164d0:	4398                	lw	a4,0(a5)
   164d2:	0791                	addi	a5,a5,4
   164d4:	0811                	addi	a6,a6,4
   164d6:	fee82e23          	sw	a4,-4(a6)
   164da:	fd17f7e3          	bgeu	a5,a7,164a8 <__lshift+0xb2>
   164de:	4398                	lw	a4,0(a5)
   164e0:	0791                	addi	a5,a5,4
   164e2:	0811                	addi	a6,a6,4
   164e4:	fee82e23          	sw	a4,-4(a6)
   164e8:	ff17e4e3          	bltu	a5,a7,164d0 <__lshift+0xda>
   164ec:	bf75                	j	164a8 <__lshift+0xb2>
   164ee:	66ed                	lui	a3,0x1b
   164f0:	656d                	lui	a0,0x1b
   164f2:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   164f6:	4601                	li	a2,0
   164f8:	1de00593          	li	a1,478
   164fc:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   16500:	4b1000ef          	jal	171b0 <__assert_func>

00016504 <__mcmp>:
   16504:	4918                	lw	a4,16(a0)
   16506:	499c                	lw	a5,16(a1)
   16508:	882a                	mv	a6,a0
   1650a:	40f70533          	sub	a0,a4,a5
   1650e:	02f71863          	bne	a4,a5,1653e <__mcmp+0x3a>
   16512:	078a                	slli	a5,a5,0x2
   16514:	0851                	addi	a6,a6,20
   16516:	05d1                	addi	a1,a1,20
   16518:	00f80733          	add	a4,a6,a5
   1651c:	97ae                	add	a5,a5,a1
   1651e:	a019                	j	16524 <__mcmp+0x20>
   16520:	00e87f63          	bgeu	a6,a4,1653e <__mcmp+0x3a>
   16524:	ffc72603          	lw	a2,-4(a4)
   16528:	ffc7a683          	lw	a3,-4(a5)
   1652c:	1771                	addi	a4,a4,-4
   1652e:	17f1                	addi	a5,a5,-4
   16530:	fed608e3          	beq	a2,a3,16520 <__mcmp+0x1c>
   16534:	4505                	li	a0,1
   16536:	00d67463          	bgeu	a2,a3,1653e <__mcmp+0x3a>
   1653a:	557d                	li	a0,-1
   1653c:	8082                	ret
   1653e:	8082                	ret

00016540 <__mdiff>:
   16540:	4998                	lw	a4,16(a1)
   16542:	4a1c                	lw	a5,16(a2)
   16544:	1141                	addi	sp,sp,-16
   16546:	c422                	sw	s0,8(sp)
   16548:	c226                	sw	s1,4(sp)
   1654a:	c606                	sw	ra,12(sp)
   1654c:	c04a                	sw	s2,0(sp)
   1654e:	842e                	mv	s0,a1
   16550:	84b2                	mv	s1,a2
   16552:	40f706b3          	sub	a3,a4,a5
   16556:	12f71863          	bne	a4,a5,16686 <__mdiff+0x146>
   1655a:	00279693          	slli	a3,a5,0x2
   1655e:	01458613          	addi	a2,a1,20
   16562:	01448713          	addi	a4,s1,20
   16566:	00d607b3          	add	a5,a2,a3
   1656a:	9736                	add	a4,a4,a3
   1656c:	a019                	j	16572 <__mdiff+0x32>
   1656e:	12f67463          	bgeu	a2,a5,16696 <__mdiff+0x156>
   16572:	ffc7a583          	lw	a1,-4(a5)
   16576:	ffc72683          	lw	a3,-4(a4)
   1657a:	17f1                	addi	a5,a5,-4
   1657c:	1771                	addi	a4,a4,-4
   1657e:	fed588e3          	beq	a1,a3,1656e <__mdiff+0x2e>
   16582:	4905                	li	s2,1
   16584:	00d5e663          	bltu	a1,a3,16590 <__mdiff+0x50>
   16588:	87a6                	mv	a5,s1
   1658a:	4901                	li	s2,0
   1658c:	84a2                	mv	s1,s0
   1658e:	843e                	mv	s0,a5
   16590:	40cc                	lw	a1,4(s1)
   16592:	88bff0ef          	jal	15e1c <_Balloc>
   16596:	12050763          	beqz	a0,166c4 <__mdiff+0x184>
   1659a:	0104a883          	lw	a7,16(s1)
   1659e:	01042283          	lw	t0,16(s0)
   165a2:	01448f93          	addi	t6,s1,20
   165a6:	00289313          	slli	t1,a7,0x2
   165aa:	01440813          	addi	a6,s0,20
   165ae:	028a                	slli	t0,t0,0x2
   165b0:	01450593          	addi	a1,a0,20
   165b4:	6e41                	lui	t3,0x10
   165b6:	01252623          	sw	s2,12(a0)
   165ba:	937e                	add	t1,t1,t6
   165bc:	92c2                	add	t0,t0,a6
   165be:	8f2e                	mv	t5,a1
   165c0:	8efe                	mv	t4,t6
   165c2:	4681                	li	a3,0
   165c4:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   165c6:	000ea703          	lw	a4,0(t4)
   165ca:	00082603          	lw	a2,0(a6)
   165ce:	0f11                	addi	t5,t5,4
   165d0:	01c777b3          	and	a5,a4,t3
   165d4:	01c673b3          	and	t2,a2,t3
   165d8:	407787b3          	sub	a5,a5,t2
   165dc:	97b6                	add	a5,a5,a3
   165de:	8341                	srli	a4,a4,0x10
   165e0:	8241                	srli	a2,a2,0x10
   165e2:	4107d693          	srai	a3,a5,0x10
   165e6:	8f11                	sub	a4,a4,a2
   165e8:	9736                	add	a4,a4,a3
   165ea:	01071693          	slli	a3,a4,0x10
   165ee:	01c7f7b3          	and	a5,a5,t3
   165f2:	8fd5                	or	a5,a5,a3
   165f4:	0811                	addi	a6,a6,4
   165f6:	feff2e23          	sw	a5,-4(t5)
   165fa:	0e91                	addi	t4,t4,4
   165fc:	41075693          	srai	a3,a4,0x10
   16600:	fc5863e3          	bltu	a6,t0,165c6 <__mdiff+0x86>
   16604:	01540713          	addi	a4,s0,21
   16608:	40828433          	sub	s0,t0,s0
   1660c:	142d                	addi	s0,s0,-21
   1660e:	00e2b2b3          	sltu	t0,t0,a4
   16612:	0012cf13          	xori	t5,t0,1
   16616:	8009                	srli	s0,s0,0x2
   16618:	4711                	li	a4,4
   1661a:	06028a63          	beqz	t0,1668e <__mdiff+0x14e>
   1661e:	9fba                	add	t6,t6,a4
   16620:	00e58833          	add	a6,a1,a4
   16624:	6ec1                	lui	t4,0x10
   16626:	8e42                	mv	t3,a6
   16628:	867e                	mv	a2,t6
   1662a:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   1662c:	086ff363          	bgeu	t6,t1,166b2 <__mdiff+0x172>
   16630:	421c                	lw	a5,0(a2)
   16632:	0e11                	addi	t3,t3,4
   16634:	0611                	addi	a2,a2,4
   16636:	01d7f733          	and	a4,a5,t4
   1663a:	9736                	add	a4,a4,a3
   1663c:	0107d593          	srli	a1,a5,0x10
   16640:	8741                	srai	a4,a4,0x10
   16642:	972e                	add	a4,a4,a1
   16644:	97b6                	add	a5,a5,a3
   16646:	01d7f7b3          	and	a5,a5,t4
   1664a:	01071693          	slli	a3,a4,0x10
   1664e:	8fd5                	or	a5,a5,a3
   16650:	fefe2e23          	sw	a5,-4(t3)
   16654:	41075693          	srai	a3,a4,0x10
   16658:	fc666ce3          	bltu	a2,t1,16630 <__mdiff+0xf0>
   1665c:	137d                	addi	t1,t1,-1
   1665e:	41f30333          	sub	t1,t1,t6
   16662:	ffc37313          	andi	t1,t1,-4
   16666:	00680733          	add	a4,a6,t1
   1666a:	e791                	bnez	a5,16676 <__mdiff+0x136>
   1666c:	ffc72783          	lw	a5,-4(a4)
   16670:	18fd                	addi	a7,a7,-1
   16672:	1771                	addi	a4,a4,-4
   16674:	dfe5                	beqz	a5,1666c <__mdiff+0x12c>
   16676:	40b2                	lw	ra,12(sp)
   16678:	4422                	lw	s0,8(sp)
   1667a:	01152823          	sw	a7,16(a0)
   1667e:	4492                	lw	s1,4(sp)
   16680:	4902                	lw	s2,0(sp)
   16682:	0141                	addi	sp,sp,16
   16684:	8082                	ret
   16686:	4905                	li	s2,1
   16688:	f006d0e3          	bgez	a3,16588 <__mdiff+0x48>
   1668c:	b711                	j	16590 <__mdiff+0x50>
   1668e:	00140713          	addi	a4,s0,1
   16692:	070a                	slli	a4,a4,0x2
   16694:	b769                	j	1661e <__mdiff+0xde>
   16696:	4581                	li	a1,0
   16698:	f84ff0ef          	jal	15e1c <_Balloc>
   1669c:	cd1d                	beqz	a0,166da <__mdiff+0x19a>
   1669e:	40b2                	lw	ra,12(sp)
   166a0:	4422                	lw	s0,8(sp)
   166a2:	4785                	li	a5,1
   166a4:	c91c                	sw	a5,16(a0)
   166a6:	00052a23          	sw	zero,20(a0)
   166aa:	4492                	lw	s1,4(sp)
   166ac:	4902                	lw	s2,0(sp)
   166ae:	0141                	addi	sp,sp,16
   166b0:	8082                	ret
   166b2:	4701                	li	a4,0
   166b4:	000f1463          	bnez	t5,166bc <__mdiff+0x17c>
   166b8:	972e                	add	a4,a4,a1
   166ba:	bf45                	j	1666a <__mdiff+0x12a>
   166bc:	00241713          	slli	a4,s0,0x2
   166c0:	972e                	add	a4,a4,a1
   166c2:	b765                	j	1666a <__mdiff+0x12a>
   166c4:	66ed                	lui	a3,0x1b
   166c6:	656d                	lui	a0,0x1b
   166c8:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   166cc:	4601                	li	a2,0
   166ce:	24500593          	li	a1,581
   166d2:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   166d6:	2db000ef          	jal	171b0 <__assert_func>
   166da:	66ed                	lui	a3,0x1b
   166dc:	656d                	lui	a0,0x1b
   166de:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   166e2:	4601                	li	a2,0
   166e4:	23700593          	li	a1,567
   166e8:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   166ec:	2c5000ef          	jal	171b0 <__assert_func>

000166f0 <__ulp>:
   166f0:	7ff007b7          	lui	a5,0x7ff00
   166f4:	8dfd                	and	a1,a1,a5
   166f6:	fcc007b7          	lui	a5,0xfcc00
   166fa:	95be                	add	a1,a1,a5
   166fc:	4781                	li	a5,0
   166fe:	00b05463          	blez	a1,16706 <__ulp+0x16>
   16702:	853e                	mv	a0,a5
   16704:	8082                	ret
   16706:	40b005b3          	neg	a1,a1
   1670a:	85d1                	srai	a1,a1,0x14
   1670c:	47cd                	li	a5,19
   1670e:	00b7c963          	blt	a5,a1,16720 <__ulp+0x30>
   16712:	000807b7          	lui	a5,0x80
   16716:	40b7d5b3          	sra	a1,a5,a1
   1671a:	4781                	li	a5,0
   1671c:	853e                	mv	a0,a5
   1671e:	8082                	ret
   16720:	15b1                	addi	a1,a1,-20
   16722:	4779                	li	a4,30
   16724:	4785                	li	a5,1
   16726:	00b74663          	blt	a4,a1,16732 <__ulp+0x42>
   1672a:	800007b7          	lui	a5,0x80000
   1672e:	00b7d7b3          	srl	a5,a5,a1
   16732:	4581                	li	a1,0
   16734:	853e                	mv	a0,a5
   16736:	8082                	ret

00016738 <__b2d>:
   16738:	1101                	addi	sp,sp,-32
   1673a:	ca26                	sw	s1,20(sp)
   1673c:	4904                	lw	s1,16(a0)
   1673e:	cc22                	sw	s0,24(sp)
   16740:	01450413          	addi	s0,a0,20
   16744:	048a                	slli	s1,s1,0x2
   16746:	94a2                	add	s1,s1,s0
   16748:	c84a                	sw	s2,16(sp)
   1674a:	ffc4a903          	lw	s2,-4(s1)
   1674e:	c64e                	sw	s3,12(sp)
   16750:	c452                	sw	s4,8(sp)
   16752:	854a                	mv	a0,s2
   16754:	89ae                	mv	s3,a1
   16756:	ce06                	sw	ra,28(sp)
   16758:	8efff0ef          	jal	16046 <__hi0bits>
   1675c:	02000713          	li	a4,32
   16760:	40a707b3          	sub	a5,a4,a0
   16764:	00f9a023          	sw	a5,0(s3)
   16768:	47a9                	li	a5,10
   1676a:	ffc48a13          	addi	s4,s1,-4
   1676e:	06a7db63          	bge	a5,a0,167e4 <__b2d+0xac>
   16772:	ff550613          	addi	a2,a0,-11
   16776:	03447d63          	bgeu	s0,s4,167b0 <__b2d+0x78>
   1677a:	ff84a783          	lw	a5,-8(s1)
   1677e:	c629                	beqz	a2,167c8 <__b2d+0x90>
   16780:	40c706b3          	sub	a3,a4,a2
   16784:	00d7d733          	srl	a4,a5,a3
   16788:	00c91933          	sll	s2,s2,a2
   1678c:	00e96933          	or	s2,s2,a4
   16790:	ff848593          	addi	a1,s1,-8
   16794:	3ff00737          	lui	a4,0x3ff00
   16798:	00e96733          	or	a4,s2,a4
   1679c:	00c797b3          	sll	a5,a5,a2
   167a0:	02b47863          	bgeu	s0,a1,167d0 <__b2d+0x98>
   167a4:	ff44a603          	lw	a2,-12(s1)
   167a8:	00d656b3          	srl	a3,a2,a3
   167ac:	8fd5                	or	a5,a5,a3
   167ae:	a00d                	j	167d0 <__b2d+0x98>
   167b0:	47ad                	li	a5,11
   167b2:	00f50a63          	beq	a0,a5,167c6 <__b2d+0x8e>
   167b6:	00c91933          	sll	s2,s2,a2
   167ba:	3ff00737          	lui	a4,0x3ff00
   167be:	00e96733          	or	a4,s2,a4
   167c2:	4781                	li	a5,0
   167c4:	a031                	j	167d0 <__b2d+0x98>
   167c6:	4781                	li	a5,0
   167c8:	3ff00737          	lui	a4,0x3ff00
   167cc:	00e96733          	or	a4,s2,a4
   167d0:	40f2                	lw	ra,28(sp)
   167d2:	4462                	lw	s0,24(sp)
   167d4:	44d2                	lw	s1,20(sp)
   167d6:	4942                	lw	s2,16(sp)
   167d8:	49b2                	lw	s3,12(sp)
   167da:	4a22                	lw	s4,8(sp)
   167dc:	853e                	mv	a0,a5
   167de:	85ba                	mv	a1,a4
   167e0:	6105                	addi	sp,sp,32
   167e2:	8082                	ret
   167e4:	46ad                	li	a3,11
   167e6:	8e89                	sub	a3,a3,a0
   167e8:	3ff007b7          	lui	a5,0x3ff00
   167ec:	00d95733          	srl	a4,s2,a3
   167f0:	8f5d                	or	a4,a4,a5
   167f2:	4781                	li	a5,0
   167f4:	01447663          	bgeu	s0,s4,16800 <__b2d+0xc8>
   167f8:	ff84a783          	lw	a5,-8(s1)
   167fc:	00d7d7b3          	srl	a5,a5,a3
   16800:	0555                	addi	a0,a0,21
   16802:	00a91933          	sll	s2,s2,a0
   16806:	00f967b3          	or	a5,s2,a5
   1680a:	b7d9                	j	167d0 <__b2d+0x98>

0001680c <__d2b>:
   1680c:	7179                	addi	sp,sp,-48
   1680e:	ca56                	sw	s5,20(sp)
   16810:	8aae                	mv	s5,a1
   16812:	4585                	li	a1,1
   16814:	d226                	sw	s1,36(sp)
   16816:	ce4e                	sw	s3,28(sp)
   16818:	cc52                	sw	s4,24(sp)
   1681a:	d606                	sw	ra,44(sp)
   1681c:	d422                	sw	s0,40(sp)
   1681e:	d04a                	sw	s2,32(sp)
   16820:	84b2                	mv	s1,a2
   16822:	8a36                	mv	s4,a3
   16824:	89ba                	mv	s3,a4
   16826:	df6ff0ef          	jal	15e1c <_Balloc>
   1682a:	c955                	beqz	a0,168de <__d2b+0xd2>
   1682c:	00100737          	lui	a4,0x100
   16830:	0144d913          	srli	s2,s1,0x14
   16834:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe31d3>
   16838:	7ff97913          	andi	s2,s2,2047
   1683c:	842a                	mv	s0,a0
   1683e:	8fe5                	and	a5,a5,s1
   16840:	00090363          	beqz	s2,16846 <__d2b+0x3a>
   16844:	8fd9                	or	a5,a5,a4
   16846:	c63e                	sw	a5,12(sp)
   16848:	040a9263          	bnez	s5,1688c <__d2b+0x80>
   1684c:	0068                	addi	a0,sp,12
   1684e:	84dff0ef          	jal	1609a <__lo0bits>
   16852:	4732                	lw	a4,12(sp)
   16854:	4485                	li	s1,1
   16856:	c804                	sw	s1,16(s0)
   16858:	c858                	sw	a4,20(s0)
   1685a:	02050793          	addi	a5,a0,32
   1685e:	06090063          	beqz	s2,168be <__d2b+0xb2>
   16862:	bcd90913          	addi	s2,s2,-1075
   16866:	993e                	add	s2,s2,a5
   16868:	03500493          	li	s1,53
   1686c:	012a2023          	sw	s2,0(s4)
   16870:	40f48533          	sub	a0,s1,a5
   16874:	00a9a023          	sw	a0,0(s3)
   16878:	50b2                	lw	ra,44(sp)
   1687a:	8522                	mv	a0,s0
   1687c:	5422                	lw	s0,40(sp)
   1687e:	5492                	lw	s1,36(sp)
   16880:	5902                	lw	s2,32(sp)
   16882:	49f2                	lw	s3,28(sp)
   16884:	4a62                	lw	s4,24(sp)
   16886:	4ad2                	lw	s5,20(sp)
   16888:	6145                	addi	sp,sp,48
   1688a:	8082                	ret
   1688c:	0028                	addi	a0,sp,8
   1688e:	c456                	sw	s5,8(sp)
   16890:	80bff0ef          	jal	1609a <__lo0bits>
   16894:	4732                	lw	a4,12(sp)
   16896:	87aa                	mv	a5,a0
   16898:	c129                	beqz	a0,168da <__d2b+0xce>
   1689a:	4622                	lw	a2,8(sp)
   1689c:	02000693          	li	a3,32
   168a0:	8e89                	sub	a3,a3,a0
   168a2:	00d716b3          	sll	a3,a4,a3
   168a6:	00a75733          	srl	a4,a4,a0
   168aa:	8ed1                	or	a3,a3,a2
   168ac:	c63a                	sw	a4,12(sp)
   168ae:	00e034b3          	snez	s1,a4
   168b2:	0485                	addi	s1,s1,1
   168b4:	c854                	sw	a3,20(s0)
   168b6:	cc18                	sw	a4,24(s0)
   168b8:	c804                	sw	s1,16(s0)
   168ba:	fa0914e3          	bnez	s2,16862 <__d2b+0x56>
   168be:	00249713          	slli	a4,s1,0x2
   168c2:	9722                	add	a4,a4,s0
   168c4:	4b08                	lw	a0,16(a4)
   168c6:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee2da2>
   168ca:	00fa2023          	sw	a5,0(s4)
   168ce:	f78ff0ef          	jal	16046 <__hi0bits>
   168d2:	0496                	slli	s1,s1,0x5
   168d4:	40a48533          	sub	a0,s1,a0
   168d8:	bf71                	j	16874 <__d2b+0x68>
   168da:	46a2                	lw	a3,8(sp)
   168dc:	bfc9                	j	168ae <__d2b+0xa2>
   168de:	66ed                	lui	a3,0x1b
   168e0:	656d                	lui	a0,0x1b
   168e2:	bbc68693          	addi	a3,a3,-1092 # 1abbc <__clzsi2+0x14e>
   168e6:	4601                	li	a2,0
   168e8:	30f00593          	li	a1,783
   168ec:	c2c50513          	addi	a0,a0,-980 # 1ac2c <__clzsi2+0x1be>
   168f0:	0c1000ef          	jal	171b0 <__assert_func>

000168f4 <__ratio>:
   168f4:	7179                	addi	sp,sp,-48
   168f6:	d422                	sw	s0,40(sp)
   168f8:	842e                	mv	s0,a1
   168fa:	082c                	addi	a1,sp,24
   168fc:	d606                	sw	ra,44(sp)
   168fe:	d226                	sw	s1,36(sp)
   16900:	84aa                	mv	s1,a0
   16902:	e37ff0ef          	jal	16738 <__b2d>
   16906:	c02a                	sw	a0,0(sp)
   16908:	c22e                	sw	a1,4(sp)
   1690a:	2782                	fld	fa5,0(sp)
   1690c:	086c                	addi	a1,sp,28
   1690e:	8522                	mv	a0,s0
   16910:	a43e                	fsd	fa5,8(sp)
   16912:	e27ff0ef          	jal	16738 <__b2d>
   16916:	4818                	lw	a4,16(s0)
   16918:	489c                	lw	a5,16(s1)
   1691a:	46f2                	lw	a3,28(sp)
   1691c:	c02a                	sw	a0,0(sp)
   1691e:	8f99                	sub	a5,a5,a4
   16920:	4762                	lw	a4,24(sp)
   16922:	0796                	slli	a5,a5,0x5
   16924:	c22e                	sw	a1,4(sp)
   16926:	8f15                	sub	a4,a4,a3
   16928:	97ba                	add	a5,a5,a4
   1692a:	02f05263          	blez	a5,1694e <__ratio+0x5a>
   1692e:	46b2                	lw	a3,12(sp)
   16930:	07d2                	slli	a5,a5,0x14
   16932:	97b6                	add	a5,a5,a3
   16934:	c63e                	sw	a5,12(sp)
   16936:	2702                	fld	fa4,0(sp)
   16938:	27a2                	fld	fa5,8(sp)
   1693a:	50b2                	lw	ra,44(sp)
   1693c:	5422                	lw	s0,40(sp)
   1693e:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   16942:	5492                	lw	s1,36(sp)
   16944:	a03e                	fsd	fa5,0(sp)
   16946:	4502                	lw	a0,0(sp)
   16948:	4592                	lw	a1,4(sp)
   1694a:	6145                	addi	sp,sp,48
   1694c:	8082                	ret
   1694e:	4692                	lw	a3,4(sp)
   16950:	07d2                	slli	a5,a5,0x14
   16952:	40f687b3          	sub	a5,a3,a5
   16956:	c23e                	sw	a5,4(sp)
   16958:	bff9                	j	16936 <__ratio+0x42>

0001695a <_mprec_log10>:
   1695a:	47dd                	li	a5,23
   1695c:	1141                	addi	sp,sp,-16
   1695e:	00a7df63          	bge	a5,a0,1697c <_mprec_log10+0x22>
   16962:	ed81b787          	fld	fa5,-296(gp) # 1cab8 <__SDATA_BEGIN__+0x30>
   16966:	ee01b707          	fld	fa4,-288(gp) # 1cac0 <__SDATA_BEGIN__+0x38>
   1696a:	157d                	addi	a0,a0,-1
   1696c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   16970:	fd6d                	bnez	a0,1696a <_mprec_log10+0x10>
   16972:	a43e                	fsd	fa5,8(sp)
   16974:	4522                	lw	a0,8(sp)
   16976:	45b2                	lw	a1,12(sp)
   16978:	0141                	addi	sp,sp,16
   1697a:	8082                	ret
   1697c:	67ed                	lui	a5,0x1b
   1697e:	050e                	slli	a0,a0,0x3
   16980:	f7878793          	addi	a5,a5,-136 # 1af78 <__mprec_tens>
   16984:	97aa                	add	a5,a5,a0
   16986:	239c                	fld	fa5,0(a5)
   16988:	a43e                	fsd	fa5,8(sp)
   1698a:	4522                	lw	a0,8(sp)
   1698c:	45b2                	lw	a1,12(sp)
   1698e:	0141                	addi	sp,sp,16
   16990:	8082                	ret

00016992 <__copybits>:
   16992:	4a14                	lw	a3,16(a2)
   16994:	15fd                	addi	a1,a1,-1
   16996:	8595                	srai	a1,a1,0x5
   16998:	0585                	addi	a1,a1,1
   1699a:	01460793          	addi	a5,a2,20
   1699e:	068a                	slli	a3,a3,0x2
   169a0:	058a                	slli	a1,a1,0x2
   169a2:	96be                	add	a3,a3,a5
   169a4:	95aa                	add	a1,a1,a0
   169a6:	02d7f163          	bgeu	a5,a3,169c8 <__copybits+0x36>
   169aa:	872a                	mv	a4,a0
   169ac:	0007a803          	lw	a6,0(a5)
   169b0:	0791                	addi	a5,a5,4
   169b2:	0711                	addi	a4,a4,4
   169b4:	ff072e23          	sw	a6,-4(a4)
   169b8:	fed7eae3          	bltu	a5,a3,169ac <__copybits+0x1a>
   169bc:	40c687b3          	sub	a5,a3,a2
   169c0:	17ad                	addi	a5,a5,-21
   169c2:	9bf1                	andi	a5,a5,-4
   169c4:	0791                	addi	a5,a5,4
   169c6:	953e                	add	a0,a0,a5
   169c8:	00b57763          	bgeu	a0,a1,169d6 <__copybits+0x44>
   169cc:	0511                	addi	a0,a0,4
   169ce:	fe052e23          	sw	zero,-4(a0)
   169d2:	feb56de3          	bltu	a0,a1,169cc <__copybits+0x3a>
   169d6:	8082                	ret

000169d8 <__any_on>:
   169d8:	4918                	lw	a4,16(a0)
   169da:	4055d613          	srai	a2,a1,0x5
   169de:	01450693          	addi	a3,a0,20
   169e2:	00c75d63          	bge	a4,a2,169fc <__any_on+0x24>
   169e6:	070a                	slli	a4,a4,0x2
   169e8:	00e687b3          	add	a5,a3,a4
   169ec:	02f6f863          	bgeu	a3,a5,16a1c <__any_on+0x44>
   169f0:	ffc7a703          	lw	a4,-4(a5)
   169f4:	17f1                	addi	a5,a5,-4
   169f6:	db7d                	beqz	a4,169ec <__any_on+0x14>
   169f8:	4505                	li	a0,1
   169fa:	8082                	ret
   169fc:	00261793          	slli	a5,a2,0x2
   16a00:	97b6                	add	a5,a5,a3
   16a02:	fee655e3          	bge	a2,a4,169ec <__any_on+0x14>
   16a06:	89fd                	andi	a1,a1,31
   16a08:	d1f5                	beqz	a1,169ec <__any_on+0x14>
   16a0a:	4390                	lw	a2,0(a5)
   16a0c:	4505                	li	a0,1
   16a0e:	00b65733          	srl	a4,a2,a1
   16a12:	00b71733          	sll	a4,a4,a1
   16a16:	fce60be3          	beq	a2,a4,169ec <__any_on+0x14>
   16a1a:	8082                	ret
   16a1c:	4501                	li	a0,0
   16a1e:	8082                	ret

00016a20 <_realloc_r>:
   16a20:	7179                	addi	sp,sp,-48
   16a22:	d226                	sw	s1,36(sp)
   16a24:	d606                	sw	ra,44(sp)
   16a26:	84b2                	mv	s1,a2
   16a28:	14058d63          	beqz	a1,16b82 <_realloc_r+0x162>
   16a2c:	d422                	sw	s0,40(sp)
   16a2e:	d04a                	sw	s2,32(sp)
   16a30:	842e                	mv	s0,a1
   16a32:	ce4e                	sw	s3,28(sp)
   16a34:	ca56                	sw	s5,20(sp)
   16a36:	cc52                	sw	s4,24(sp)
   16a38:	892a                	mv	s2,a0
   16a3a:	e2afb0ef          	jal	12064 <__malloc_lock>
   16a3e:	ffc42703          	lw	a4,-4(s0)
   16a42:	00b48793          	addi	a5,s1,11
   16a46:	46d9                	li	a3,22
   16a48:	ff840a93          	addi	s5,s0,-8
   16a4c:	ffc77993          	andi	s3,a4,-4
   16a50:	0af6ff63          	bgeu	a3,a5,16b0e <_realloc_r+0xee>
   16a54:	ff87fa13          	andi	s4,a5,-8
   16a58:	0a07ce63          	bltz	a5,16b14 <_realloc_r+0xf4>
   16a5c:	0a9a6c63          	bltu	s4,s1,16b14 <_realloc_r+0xf4>
   16a60:	0d49d563          	bge	s3,s4,16b2a <_realloc_r+0x10a>
   16a64:	67f1                	lui	a5,0x1c
   16a66:	c462                	sw	s8,8(sp)
   16a68:	51078c13          	addi	s8,a5,1296 # 1c510 <__malloc_av_>
   16a6c:	008c2603          	lw	a2,8(s8)
   16a70:	013a86b3          	add	a3,s5,s3
   16a74:	42dc                	lw	a5,4(a3)
   16a76:	12d60e63          	beq	a2,a3,16bb2 <_realloc_r+0x192>
   16a7a:	ffe7f613          	andi	a2,a5,-2
   16a7e:	9636                	add	a2,a2,a3
   16a80:	4250                	lw	a2,4(a2)
   16a82:	8a05                	andi	a2,a2,1
   16a84:	e27d                	bnez	a2,16b6a <_realloc_r+0x14a>
   16a86:	9bf1                	andi	a5,a5,-4
   16a88:	00f98633          	add	a2,s3,a5
   16a8c:	09465963          	bge	a2,s4,16b1e <_realloc_r+0xfe>
   16a90:	8b05                	andi	a4,a4,1
   16a92:	e70d                	bnez	a4,16abc <_realloc_r+0x9c>
   16a94:	c65e                	sw	s7,12(sp)
   16a96:	ff842b83          	lw	s7,-8(s0)
   16a9a:	c85a                	sw	s6,16(sp)
   16a9c:	417a8bb3          	sub	s7,s5,s7
   16aa0:	004ba703          	lw	a4,4(s7)
   16aa4:	9b71                	andi	a4,a4,-4
   16aa6:	97ba                	add	a5,a5,a4
   16aa8:	01378b33          	add	s6,a5,s3
   16aac:	234b5f63          	bge	s6,s4,16cea <_realloc_r+0x2ca>
   16ab0:	00e98b33          	add	s6,s3,a4
   16ab4:	1d4b5463          	bge	s6,s4,16c7c <_realloc_r+0x25c>
   16ab8:	4b42                	lw	s6,16(sp)
   16aba:	4bb2                	lw	s7,12(sp)
   16abc:	85a6                	mv	a1,s1
   16abe:	854a                	mv	a0,s2
   16ac0:	800fb0ef          	jal	11ac0 <_malloc_r>
   16ac4:	84aa                	mv	s1,a0
   16ac6:	2e050063          	beqz	a0,16da6 <_realloc_r+0x386>
   16aca:	ffc42783          	lw	a5,-4(s0)
   16ace:	ff850713          	addi	a4,a0,-8
   16ad2:	9bf9                	andi	a5,a5,-2
   16ad4:	97d6                	add	a5,a5,s5
   16ad6:	18e78d63          	beq	a5,a4,16c70 <_realloc_r+0x250>
   16ada:	ffc98613          	addi	a2,s3,-4
   16ade:	02400793          	li	a5,36
   16ae2:	20c7e063          	bltu	a5,a2,16ce2 <_realloc_r+0x2c2>
   16ae6:	474d                	li	a4,19
   16ae8:	16c76863          	bltu	a4,a2,16c58 <_realloc_r+0x238>
   16aec:	87aa                	mv	a5,a0
   16aee:	8722                	mv	a4,s0
   16af0:	4314                	lw	a3,0(a4)
   16af2:	c394                	sw	a3,0(a5)
   16af4:	4354                	lw	a3,4(a4)
   16af6:	c3d4                	sw	a3,4(a5)
   16af8:	4718                	lw	a4,8(a4)
   16afa:	c798                	sw	a4,8(a5)
   16afc:	85a2                	mv	a1,s0
   16afe:	854a                	mv	a0,s2
   16b00:	d9ffa0ef          	jal	1189e <_free_r>
   16b04:	854a                	mv	a0,s2
   16b06:	d60fb0ef          	jal	12066 <__malloc_unlock>
   16b0a:	4c22                	lw	s8,8(sp)
   16b0c:	a0a9                	j	16b56 <_realloc_r+0x136>
   16b0e:	4a41                	li	s4,16
   16b10:	f49a78e3          	bgeu	s4,s1,16a60 <_realloc_r+0x40>
   16b14:	47b1                	li	a5,12
   16b16:	00f92023          	sw	a5,0(s2)
   16b1a:	4481                	li	s1,0
   16b1c:	a82d                	j	16b56 <_realloc_r+0x136>
   16b1e:	46dc                	lw	a5,12(a3)
   16b20:	4698                	lw	a4,8(a3)
   16b22:	4c22                	lw	s8,8(sp)
   16b24:	89b2                	mv	s3,a2
   16b26:	c75c                	sw	a5,12(a4)
   16b28:	c798                	sw	a4,8(a5)
   16b2a:	004aa783          	lw	a5,4(s5)
   16b2e:	414986b3          	sub	a3,s3,s4
   16b32:	463d                	li	a2,15
   16b34:	8b85                	andi	a5,a5,1
   16b36:	013a8733          	add	a4,s5,s3
   16b3a:	04d66a63          	bltu	a2,a3,16b8e <_realloc_r+0x16e>
   16b3e:	0137e7b3          	or	a5,a5,s3
   16b42:	00faa223          	sw	a5,4(s5)
   16b46:	435c                	lw	a5,4(a4)
   16b48:	0017e793          	ori	a5,a5,1
   16b4c:	c35c                	sw	a5,4(a4)
   16b4e:	854a                	mv	a0,s2
   16b50:	d16fb0ef          	jal	12066 <__malloc_unlock>
   16b54:	84a2                	mv	s1,s0
   16b56:	5422                	lw	s0,40(sp)
   16b58:	50b2                	lw	ra,44(sp)
   16b5a:	5902                	lw	s2,32(sp)
   16b5c:	49f2                	lw	s3,28(sp)
   16b5e:	4a62                	lw	s4,24(sp)
   16b60:	4ad2                	lw	s5,20(sp)
   16b62:	8526                	mv	a0,s1
   16b64:	5492                	lw	s1,36(sp)
   16b66:	6145                	addi	sp,sp,48
   16b68:	8082                	ret
   16b6a:	8b05                	andi	a4,a4,1
   16b6c:	fb21                	bnez	a4,16abc <_realloc_r+0x9c>
   16b6e:	c65e                	sw	s7,12(sp)
   16b70:	ff842b83          	lw	s7,-8(s0)
   16b74:	c85a                	sw	s6,16(sp)
   16b76:	417a8bb3          	sub	s7,s5,s7
   16b7a:	004ba703          	lw	a4,4(s7)
   16b7e:	9b71                	andi	a4,a4,-4
   16b80:	bf05                	j	16ab0 <_realloc_r+0x90>
   16b82:	50b2                	lw	ra,44(sp)
   16b84:	5492                	lw	s1,36(sp)
   16b86:	85b2                	mv	a1,a2
   16b88:	6145                	addi	sp,sp,48
   16b8a:	f37fa06f          	j	11ac0 <_malloc_r>
   16b8e:	0147e7b3          	or	a5,a5,s4
   16b92:	00faa223          	sw	a5,4(s5)
   16b96:	014a85b3          	add	a1,s5,s4
   16b9a:	0016e693          	ori	a3,a3,1
   16b9e:	c1d4                	sw	a3,4(a1)
   16ba0:	435c                	lw	a5,4(a4)
   16ba2:	05a1                	addi	a1,a1,8
   16ba4:	854a                	mv	a0,s2
   16ba6:	0017e793          	ori	a5,a5,1
   16baa:	c35c                	sw	a5,4(a4)
   16bac:	cf3fa0ef          	jal	1189e <_free_r>
   16bb0:	bf79                	j	16b4e <_realloc_r+0x12e>
   16bb2:	9bf1                	andi	a5,a5,-4
   16bb4:	013786b3          	add	a3,a5,s3
   16bb8:	010a0613          	addi	a2,s4,16
   16bbc:	1ac6db63          	bge	a3,a2,16d72 <_realloc_r+0x352>
   16bc0:	8b05                	andi	a4,a4,1
   16bc2:	ee071de3          	bnez	a4,16abc <_realloc_r+0x9c>
   16bc6:	c65e                	sw	s7,12(sp)
   16bc8:	ff842b83          	lw	s7,-8(s0)
   16bcc:	c85a                	sw	s6,16(sp)
   16bce:	417a8bb3          	sub	s7,s5,s7
   16bd2:	004ba703          	lw	a4,4(s7)
   16bd6:	9b71                	andi	a4,a4,-4
   16bd8:	97ba                	add	a5,a5,a4
   16bda:	01378b33          	add	s6,a5,s3
   16bde:	eccb49e3          	blt	s6,a2,16ab0 <_realloc_r+0x90>
   16be2:	00cba783          	lw	a5,12(s7)
   16be6:	008ba703          	lw	a4,8(s7)
   16bea:	ffc98613          	addi	a2,s3,-4
   16bee:	02400693          	li	a3,36
   16bf2:	c75c                	sw	a5,12(a4)
   16bf4:	c798                	sw	a4,8(a5)
   16bf6:	008b8493          	addi	s1,s7,8
   16bfa:	1cc6e563          	bltu	a3,a2,16dc4 <_realloc_r+0x3a4>
   16bfe:	474d                	li	a4,19
   16c00:	87a6                	mv	a5,s1
   16c02:	00c77e63          	bgeu	a4,a2,16c1e <_realloc_r+0x1fe>
   16c06:	4018                	lw	a4,0(s0)
   16c08:	47ed                	li	a5,27
   16c0a:	00eba423          	sw	a4,8(s7)
   16c0e:	4058                	lw	a4,4(s0)
   16c10:	00eba623          	sw	a4,12(s7)
   16c14:	1ac7ed63          	bltu	a5,a2,16dce <_realloc_r+0x3ae>
   16c18:	0421                	addi	s0,s0,8
   16c1a:	010b8793          	addi	a5,s7,16
   16c1e:	4018                	lw	a4,0(s0)
   16c20:	c398                	sw	a4,0(a5)
   16c22:	4058                	lw	a4,4(s0)
   16c24:	c3d8                	sw	a4,4(a5)
   16c26:	4418                	lw	a4,8(s0)
   16c28:	c798                	sw	a4,8(a5)
   16c2a:	014b8733          	add	a4,s7,s4
   16c2e:	414b0b33          	sub	s6,s6,s4
   16c32:	00ec2423          	sw	a4,8(s8)
   16c36:	001b6793          	ori	a5,s6,1
   16c3a:	c35c                	sw	a5,4(a4)
   16c3c:	004ba783          	lw	a5,4(s7)
   16c40:	854a                	mv	a0,s2
   16c42:	8b85                	andi	a5,a5,1
   16c44:	0147e7b3          	or	a5,a5,s4
   16c48:	00fba223          	sw	a5,4(s7)
   16c4c:	c1afb0ef          	jal	12066 <__malloc_unlock>
   16c50:	4b42                	lw	s6,16(sp)
   16c52:	4bb2                	lw	s7,12(sp)
   16c54:	4c22                	lw	s8,8(sp)
   16c56:	b701                	j	16b56 <_realloc_r+0x136>
   16c58:	4014                	lw	a3,0(s0)
   16c5a:	476d                	li	a4,27
   16c5c:	c114                	sw	a3,0(a0)
   16c5e:	4054                	lw	a3,4(s0)
   16c60:	c154                	sw	a3,4(a0)
   16c62:	0ec76d63          	bltu	a4,a2,16d5c <_realloc_r+0x33c>
   16c66:	00840713          	addi	a4,s0,8
   16c6a:	00850793          	addi	a5,a0,8
   16c6e:	b549                	j	16af0 <_realloc_r+0xd0>
   16c70:	ffc52783          	lw	a5,-4(a0)
   16c74:	4c22                	lw	s8,8(sp)
   16c76:	9bf1                	andi	a5,a5,-4
   16c78:	99be                	add	s3,s3,a5
   16c7a:	bd45                	j	16b2a <_realloc_r+0x10a>
   16c7c:	00cba783          	lw	a5,12(s7)
   16c80:	008ba703          	lw	a4,8(s7)
   16c84:	ffc98613          	addi	a2,s3,-4
   16c88:	02400693          	li	a3,36
   16c8c:	c75c                	sw	a5,12(a4)
   16c8e:	c798                	sw	a4,8(a5)
   16c90:	008b8493          	addi	s1,s7,8
   16c94:	0ac6ef63          	bltu	a3,a2,16d52 <_realloc_r+0x332>
   16c98:	474d                	li	a4,19
   16c9a:	87a6                	mv	a5,s1
   16c9c:	02c77663          	bgeu	a4,a2,16cc8 <_realloc_r+0x2a8>
   16ca0:	4018                	lw	a4,0(s0)
   16ca2:	47ed                	li	a5,27
   16ca4:	00eba423          	sw	a4,8(s7)
   16ca8:	4058                	lw	a4,4(s0)
   16caa:	00eba623          	sw	a4,12(s7)
   16cae:	0ec7f863          	bgeu	a5,a2,16d9e <_realloc_r+0x37e>
   16cb2:	441c                	lw	a5,8(s0)
   16cb4:	00fba823          	sw	a5,16(s7)
   16cb8:	445c                	lw	a5,12(s0)
   16cba:	00fbaa23          	sw	a5,20(s7)
   16cbe:	06d60f63          	beq	a2,a3,16d3c <_realloc_r+0x31c>
   16cc2:	0441                	addi	s0,s0,16
   16cc4:	018b8793          	addi	a5,s7,24
   16cc8:	4018                	lw	a4,0(s0)
   16cca:	c398                	sw	a4,0(a5)
   16ccc:	4058                	lw	a4,4(s0)
   16cce:	c3d8                	sw	a4,4(a5)
   16cd0:	4418                	lw	a4,8(s0)
   16cd2:	c798                	sw	a4,8(a5)
   16cd4:	89da                	mv	s3,s6
   16cd6:	8ade                	mv	s5,s7
   16cd8:	4b42                	lw	s6,16(sp)
   16cda:	4bb2                	lw	s7,12(sp)
   16cdc:	4c22                	lw	s8,8(sp)
   16cde:	8426                	mv	s0,s1
   16ce0:	b5a9                	j	16b2a <_realloc_r+0x10a>
   16ce2:	85a2                	mv	a1,s0
   16ce4:	a1ffd0ef          	jal	14702 <memmove>
   16ce8:	bd11                	j	16afc <_realloc_r+0xdc>
   16cea:	46dc                	lw	a5,12(a3)
   16cec:	4698                	lw	a4,8(a3)
   16cee:	ffc98613          	addi	a2,s3,-4
   16cf2:	02400693          	li	a3,36
   16cf6:	c75c                	sw	a5,12(a4)
   16cf8:	c798                	sw	a4,8(a5)
   16cfa:	008ba703          	lw	a4,8(s7)
   16cfe:	00cba783          	lw	a5,12(s7)
   16d02:	008b8493          	addi	s1,s7,8
   16d06:	c75c                	sw	a5,12(a4)
   16d08:	c798                	sw	a4,8(a5)
   16d0a:	04c6e463          	bltu	a3,a2,16d52 <_realloc_r+0x332>
   16d0e:	474d                	li	a4,19
   16d10:	87a6                	mv	a5,s1
   16d12:	fac77be3          	bgeu	a4,a2,16cc8 <_realloc_r+0x2a8>
   16d16:	4018                	lw	a4,0(s0)
   16d18:	47ed                	li	a5,27
   16d1a:	00eba423          	sw	a4,8(s7)
   16d1e:	4058                	lw	a4,4(s0)
   16d20:	00eba623          	sw	a4,12(s7)
   16d24:	06c7fd63          	bgeu	a5,a2,16d9e <_realloc_r+0x37e>
   16d28:	4418                	lw	a4,8(s0)
   16d2a:	02400793          	li	a5,36
   16d2e:	00eba823          	sw	a4,16(s7)
   16d32:	4458                	lw	a4,12(s0)
   16d34:	00ebaa23          	sw	a4,20(s7)
   16d38:	f8f615e3          	bne	a2,a5,16cc2 <_realloc_r+0x2a2>
   16d3c:	4818                	lw	a4,16(s0)
   16d3e:	020b8793          	addi	a5,s7,32
   16d42:	0461                	addi	s0,s0,24
   16d44:	00ebac23          	sw	a4,24(s7)
   16d48:	ffc42703          	lw	a4,-4(s0)
   16d4c:	00ebae23          	sw	a4,28(s7)
   16d50:	bfa5                	j	16cc8 <_realloc_r+0x2a8>
   16d52:	85a2                	mv	a1,s0
   16d54:	8526                	mv	a0,s1
   16d56:	9adfd0ef          	jal	14702 <memmove>
   16d5a:	bfad                	j	16cd4 <_realloc_r+0x2b4>
   16d5c:	4418                	lw	a4,8(s0)
   16d5e:	c518                	sw	a4,8(a0)
   16d60:	4458                	lw	a4,12(s0)
   16d62:	c558                	sw	a4,12(a0)
   16d64:	04f60763          	beq	a2,a5,16db2 <_realloc_r+0x392>
   16d68:	01040713          	addi	a4,s0,16
   16d6c:	01050793          	addi	a5,a0,16
   16d70:	b341                	j	16af0 <_realloc_r+0xd0>
   16d72:	9ad2                	add	s5,s5,s4
   16d74:	414686b3          	sub	a3,a3,s4
   16d78:	015c2423          	sw	s5,8(s8)
   16d7c:	0016e793          	ori	a5,a3,1
   16d80:	00faa223          	sw	a5,4(s5)
   16d84:	ffc42783          	lw	a5,-4(s0)
   16d88:	854a                	mv	a0,s2
   16d8a:	84a2                	mv	s1,s0
   16d8c:	8b85                	andi	a5,a5,1
   16d8e:	0147e7b3          	or	a5,a5,s4
   16d92:	fef42e23          	sw	a5,-4(s0)
   16d96:	ad0fb0ef          	jal	12066 <__malloc_unlock>
   16d9a:	4c22                	lw	s8,8(sp)
   16d9c:	bb6d                	j	16b56 <_realloc_r+0x136>
   16d9e:	0421                	addi	s0,s0,8
   16da0:	010b8793          	addi	a5,s7,16
   16da4:	b715                	j	16cc8 <_realloc_r+0x2a8>
   16da6:	854a                	mv	a0,s2
   16da8:	abefb0ef          	jal	12066 <__malloc_unlock>
   16dac:	4481                	li	s1,0
   16dae:	4c22                	lw	s8,8(sp)
   16db0:	b35d                	j	16b56 <_realloc_r+0x136>
   16db2:	4814                	lw	a3,16(s0)
   16db4:	01840713          	addi	a4,s0,24
   16db8:	01850793          	addi	a5,a0,24
   16dbc:	c914                	sw	a3,16(a0)
   16dbe:	4854                	lw	a3,20(s0)
   16dc0:	c954                	sw	a3,20(a0)
   16dc2:	b33d                	j	16af0 <_realloc_r+0xd0>
   16dc4:	85a2                	mv	a1,s0
   16dc6:	8526                	mv	a0,s1
   16dc8:	93bfd0ef          	jal	14702 <memmove>
   16dcc:	bdb9                	j	16c2a <_realloc_r+0x20a>
   16dce:	441c                	lw	a5,8(s0)
   16dd0:	00fba823          	sw	a5,16(s7)
   16dd4:	445c                	lw	a5,12(s0)
   16dd6:	00fbaa23          	sw	a5,20(s7)
   16dda:	00d60663          	beq	a2,a3,16de6 <_realloc_r+0x3c6>
   16dde:	0441                	addi	s0,s0,16
   16de0:	018b8793          	addi	a5,s7,24
   16de4:	bd2d                	j	16c1e <_realloc_r+0x1fe>
   16de6:	4818                	lw	a4,16(s0)
   16de8:	020b8793          	addi	a5,s7,32
   16dec:	00ebac23          	sw	a4,24(s7)
   16df0:	4858                	lw	a4,20(s0)
   16df2:	0461                	addi	s0,s0,24
   16df4:	00ebae23          	sw	a4,28(s7)
   16df8:	b51d                	j	16c1e <_realloc_r+0x1fe>

00016dfa <__smakebuf_r>:
   16dfa:	00c59783          	lh	a5,12(a1)
   16dfe:	7119                	addi	sp,sp,-128
   16e00:	dca2                	sw	s0,120(sp)
   16e02:	de86                	sw	ra,124(sp)
   16e04:	0027f713          	andi	a4,a5,2
   16e08:	842e                	mv	s0,a1
   16e0a:	cb19                	beqz	a4,16e20 <__smakebuf_r+0x26>
   16e0c:	04358793          	addi	a5,a1,67
   16e10:	c19c                	sw	a5,0(a1)
   16e12:	c99c                	sw	a5,16(a1)
   16e14:	4785                	li	a5,1
   16e16:	c9dc                	sw	a5,20(a1)
   16e18:	50f6                	lw	ra,124(sp)
   16e1a:	5466                	lw	s0,120(sp)
   16e1c:	6109                	addi	sp,sp,128
   16e1e:	8082                	ret
   16e20:	00e59583          	lh	a1,14(a1)
   16e24:	daa6                	sw	s1,116(sp)
   16e26:	d8ca                	sw	s2,112(sp)
   16e28:	d6ce                	sw	s3,108(sp)
   16e2a:	d4d2                	sw	s4,104(sp)
   16e2c:	84aa                	mv	s1,a0
   16e2e:	0605c263          	bltz	a1,16e92 <__smakebuf_r+0x98>
   16e32:	0030                	addi	a2,sp,8
   16e34:	22fd                	jal	17022 <_fstat_r>
   16e36:	04054c63          	bltz	a0,16e8e <__smakebuf_r+0x94>
   16e3a:	47b2                	lw	a5,12(sp)
   16e3c:	693d                	lui	s2,0xf
   16e3e:	6985                	lui	s3,0x1
   16e40:	00f97933          	and	s2,s2,a5
   16e44:	77f9                	lui	a5,0xffffe
   16e46:	993e                	add	s2,s2,a5
   16e48:	00193913          	seqz	s2,s2
   16e4c:	40000a13          	li	s4,1024
   16e50:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   16e54:	85d2                	mv	a1,s4
   16e56:	8526                	mv	a0,s1
   16e58:	c69fa0ef          	jal	11ac0 <_malloc_r>
   16e5c:	00c41783          	lh	a5,12(s0)
   16e60:	c539                	beqz	a0,16eae <__smakebuf_r+0xb4>
   16e62:	0807e793          	ori	a5,a5,128
   16e66:	c008                	sw	a0,0(s0)
   16e68:	c808                	sw	a0,16(s0)
   16e6a:	00f41623          	sh	a5,12(s0)
   16e6e:	01442a23          	sw	s4,20(s0)
   16e72:	06091563          	bnez	s2,16edc <__smakebuf_r+0xe2>
   16e76:	0137e7b3          	or	a5,a5,s3
   16e7a:	50f6                	lw	ra,124(sp)
   16e7c:	00f41623          	sh	a5,12(s0)
   16e80:	5466                	lw	s0,120(sp)
   16e82:	54d6                	lw	s1,116(sp)
   16e84:	5946                	lw	s2,112(sp)
   16e86:	59b6                	lw	s3,108(sp)
   16e88:	5a26                	lw	s4,104(sp)
   16e8a:	6109                	addi	sp,sp,128
   16e8c:	8082                	ret
   16e8e:	00c41783          	lh	a5,12(s0)
   16e92:	0807f793          	andi	a5,a5,128
   16e96:	4901                	li	s2,0
   16e98:	cf95                	beqz	a5,16ed4 <__smakebuf_r+0xda>
   16e9a:	04000a13          	li	s4,64
   16e9e:	85d2                	mv	a1,s4
   16ea0:	8526                	mv	a0,s1
   16ea2:	c1ffa0ef          	jal	11ac0 <_malloc_r>
   16ea6:	00c41783          	lh	a5,12(s0)
   16eaa:	4981                	li	s3,0
   16eac:	f95d                	bnez	a0,16e62 <__smakebuf_r+0x68>
   16eae:	2007f713          	andi	a4,a5,512
   16eb2:	ef0d                	bnez	a4,16eec <__smakebuf_r+0xf2>
   16eb4:	9bf1                	andi	a5,a5,-4
   16eb6:	0027e793          	ori	a5,a5,2
   16eba:	04340713          	addi	a4,s0,67
   16ebe:	00f41623          	sh	a5,12(s0)
   16ec2:	4785                	li	a5,1
   16ec4:	54d6                	lw	s1,116(sp)
   16ec6:	5946                	lw	s2,112(sp)
   16ec8:	59b6                	lw	s3,108(sp)
   16eca:	5a26                	lw	s4,104(sp)
   16ecc:	c018                	sw	a4,0(s0)
   16ece:	c818                	sw	a4,16(s0)
   16ed0:	c85c                	sw	a5,20(s0)
   16ed2:	b799                	j	16e18 <__smakebuf_r+0x1e>
   16ed4:	40000a13          	li	s4,1024
   16ed8:	4981                	li	s3,0
   16eda:	bfad                	j	16e54 <__smakebuf_r+0x5a>
   16edc:	00e41583          	lh	a1,14(s0)
   16ee0:	8526                	mv	a0,s1
   16ee2:	2aad                	jal	1705c <_isatty_r>
   16ee4:	e909                	bnez	a0,16ef6 <__smakebuf_r+0xfc>
   16ee6:	00c41783          	lh	a5,12(s0)
   16eea:	b771                	j	16e76 <__smakebuf_r+0x7c>
   16eec:	54d6                	lw	s1,116(sp)
   16eee:	5946                	lw	s2,112(sp)
   16ef0:	59b6                	lw	s3,108(sp)
   16ef2:	5a26                	lw	s4,104(sp)
   16ef4:	b715                	j	16e18 <__smakebuf_r+0x1e>
   16ef6:	00c45783          	lhu	a5,12(s0)
   16efa:	9bf1                	andi	a5,a5,-4
   16efc:	0017e793          	ori	a5,a5,1
   16f00:	07c2                	slli	a5,a5,0x10
   16f02:	87c1                	srai	a5,a5,0x10
   16f04:	bf8d                	j	16e76 <__smakebuf_r+0x7c>

00016f06 <__swhatbuf_r>:
   16f06:	7159                	addi	sp,sp,-112
   16f08:	d4a2                	sw	s0,104(sp)
   16f0a:	842e                	mv	s0,a1
   16f0c:	00e59583          	lh	a1,14(a1)
   16f10:	d2a6                	sw	s1,100(sp)
   16f12:	d0ca                	sw	s2,96(sp)
   16f14:	d686                	sw	ra,108(sp)
   16f16:	84b2                	mv	s1,a2
   16f18:	8936                	mv	s2,a3
   16f1a:	0205cb63          	bltz	a1,16f50 <__swhatbuf_r+0x4a>
   16f1e:	0030                	addi	a2,sp,8
   16f20:	2209                	jal	17022 <_fstat_r>
   16f22:	02054763          	bltz	a0,16f50 <__swhatbuf_r+0x4a>
   16f26:	4732                	lw	a4,12(sp)
   16f28:	67bd                	lui	a5,0xf
   16f2a:	50b6                	lw	ra,108(sp)
   16f2c:	8ff9                	and	a5,a5,a4
   16f2e:	7779                	lui	a4,0xffffe
   16f30:	97ba                	add	a5,a5,a4
   16f32:	5426                	lw	s0,104(sp)
   16f34:	0017b793          	seqz	a5,a5
   16f38:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   16f3c:	40000713          	li	a4,1024
   16f40:	c098                	sw	a4,0(s1)
   16f42:	6505                	lui	a0,0x1
   16f44:	5496                	lw	s1,100(sp)
   16f46:	5906                	lw	s2,96(sp)
   16f48:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   16f4c:	6165                	addi	sp,sp,112
   16f4e:	8082                	ret
   16f50:	00c45783          	lhu	a5,12(s0)
   16f54:	0807f793          	andi	a5,a5,128
   16f58:	cf91                	beqz	a5,16f74 <__swhatbuf_r+0x6e>
   16f5a:	50b6                	lw	ra,108(sp)
   16f5c:	5426                	lw	s0,104(sp)
   16f5e:	4781                	li	a5,0
   16f60:	00f92023          	sw	a5,0(s2)
   16f64:	04000713          	li	a4,64
   16f68:	c098                	sw	a4,0(s1)
   16f6a:	5906                	lw	s2,96(sp)
   16f6c:	5496                	lw	s1,100(sp)
   16f6e:	4501                	li	a0,0
   16f70:	6165                	addi	sp,sp,112
   16f72:	8082                	ret
   16f74:	50b6                	lw	ra,108(sp)
   16f76:	5426                	lw	s0,104(sp)
   16f78:	00f92023          	sw	a5,0(s2)
   16f7c:	40000713          	li	a4,1024
   16f80:	c098                	sw	a4,0(s1)
   16f82:	5906                	lw	s2,96(sp)
   16f84:	5496                	lw	s1,100(sp)
   16f86:	4501                	li	a0,0
   16f88:	6165                	addi	sp,sp,112
   16f8a:	8082                	ret

00016f8c <_setlocale_r>:
   16f8c:	1141                	addi	sp,sp,-16
   16f8e:	c606                	sw	ra,12(sp)
   16f90:	c226                	sw	s1,4(sp)
   16f92:	c20d                	beqz	a2,16fb4 <_setlocale_r+0x28>
   16f94:	65ed                	lui	a1,0x1b
   16f96:	c8458593          	addi	a1,a1,-892 # 1ac84 <__clzsi2+0x216>
   16f9a:	8532                	mv	a0,a2
   16f9c:	c422                	sw	s0,8(sp)
   16f9e:	8432                	mv	s0,a2
   16fa0:	28cd                	jal	17092 <strcmp>
   16fa2:	64ed                	lui	s1,0x1b
   16fa4:	e911                	bnez	a0,16fb8 <_setlocale_r+0x2c>
   16fa6:	4422                	lw	s0,8(sp)
   16fa8:	c8048513          	addi	a0,s1,-896 # 1ac80 <__clzsi2+0x212>
   16fac:	40b2                	lw	ra,12(sp)
   16fae:	4492                	lw	s1,4(sp)
   16fb0:	0141                	addi	sp,sp,16
   16fb2:	8082                	ret
   16fb4:	64ed                	lui	s1,0x1b
   16fb6:	bfcd                	j	16fa8 <_setlocale_r+0x1c>
   16fb8:	c8048593          	addi	a1,s1,-896 # 1ac80 <__clzsi2+0x212>
   16fbc:	8522                	mv	a0,s0
   16fbe:	28d1                	jal	17092 <strcmp>
   16fc0:	d17d                	beqz	a0,16fa6 <_setlocale_r+0x1a>
   16fc2:	65ed                	lui	a1,0x1b
   16fc4:	ae458593          	addi	a1,a1,-1308 # 1aae4 <__clzsi2+0x76>
   16fc8:	8522                	mv	a0,s0
   16fca:	20e1                	jal	17092 <strcmp>
   16fcc:	dd69                	beqz	a0,16fa6 <_setlocale_r+0x1a>
   16fce:	4422                	lw	s0,8(sp)
   16fd0:	4501                	li	a0,0
   16fd2:	bfe9                	j	16fac <_setlocale_r+0x20>

00016fd4 <__locale_mb_cur_max>:
   16fd4:	e601c503          	lbu	a0,-416(gp) # 1ca40 <__global_locale+0x128>
   16fd8:	8082                	ret

00016fda <setlocale>:
   16fda:	1141                	addi	sp,sp,-16
   16fdc:	c606                	sw	ra,12(sp)
   16fde:	c226                	sw	s1,4(sp)
   16fe0:	c18d                	beqz	a1,17002 <setlocale+0x28>
   16fe2:	c422                	sw	s0,8(sp)
   16fe4:	842e                	mv	s0,a1
   16fe6:	65ed                	lui	a1,0x1b
   16fe8:	c8458593          	addi	a1,a1,-892 # 1ac84 <__clzsi2+0x216>
   16fec:	8522                	mv	a0,s0
   16fee:	2055                	jal	17092 <strcmp>
   16ff0:	64ed                	lui	s1,0x1b
   16ff2:	e911                	bnez	a0,17006 <setlocale+0x2c>
   16ff4:	4422                	lw	s0,8(sp)
   16ff6:	c8048513          	addi	a0,s1,-896 # 1ac80 <__clzsi2+0x212>
   16ffa:	40b2                	lw	ra,12(sp)
   16ffc:	4492                	lw	s1,4(sp)
   16ffe:	0141                	addi	sp,sp,16
   17000:	8082                	ret
   17002:	64ed                	lui	s1,0x1b
   17004:	bfcd                	j	16ff6 <setlocale+0x1c>
   17006:	c8048593          	addi	a1,s1,-896 # 1ac80 <__clzsi2+0x212>
   1700a:	8522                	mv	a0,s0
   1700c:	2059                	jal	17092 <strcmp>
   1700e:	d17d                	beqz	a0,16ff4 <setlocale+0x1a>
   17010:	65ed                	lui	a1,0x1b
   17012:	ae458593          	addi	a1,a1,-1308 # 1aae4 <__clzsi2+0x76>
   17016:	8522                	mv	a0,s0
   17018:	28ad                	jal	17092 <strcmp>
   1701a:	dd69                	beqz	a0,16ff4 <setlocale+0x1a>
   1701c:	4422                	lw	s0,8(sp)
   1701e:	4501                	li	a0,0
   17020:	bfe9                	j	16ffa <setlocale+0x20>

00017022 <_fstat_r>:
   17022:	1141                	addi	sp,sp,-16
   17024:	872e                	mv	a4,a1
   17026:	c422                	sw	s0,8(sp)
   17028:	c226                	sw	s1,4(sp)
   1702a:	842a                	mv	s0,a0
   1702c:	85b2                	mv	a1,a2
   1702e:	853a                	mv	a0,a4
   17030:	c606                	sw	ra,12(sp)
   17032:	f201a223          	sw	zero,-220(gp) # 1cb04 <errno>
   17036:	3f8010ef          	jal	1842e <_fstat>
   1703a:	57fd                	li	a5,-1
   1703c:	00f50763          	beq	a0,a5,1704a <_fstat_r+0x28>
   17040:	40b2                	lw	ra,12(sp)
   17042:	4422                	lw	s0,8(sp)
   17044:	4492                	lw	s1,4(sp)
   17046:	0141                	addi	sp,sp,16
   17048:	8082                	ret
   1704a:	f241a783          	lw	a5,-220(gp) # 1cb04 <errno>
   1704e:	dbed                	beqz	a5,17040 <_fstat_r+0x1e>
   17050:	40b2                	lw	ra,12(sp)
   17052:	c01c                	sw	a5,0(s0)
   17054:	4422                	lw	s0,8(sp)
   17056:	4492                	lw	s1,4(sp)
   17058:	0141                	addi	sp,sp,16
   1705a:	8082                	ret

0001705c <_isatty_r>:
   1705c:	1141                	addi	sp,sp,-16
   1705e:	c422                	sw	s0,8(sp)
   17060:	c226                	sw	s1,4(sp)
   17062:	842a                	mv	s0,a0
   17064:	852e                	mv	a0,a1
   17066:	c606                	sw	ra,12(sp)
   17068:	f201a223          	sw	zero,-220(gp) # 1cb04 <errno>
   1706c:	400010ef          	jal	1846c <_isatty>
   17070:	57fd                	li	a5,-1
   17072:	00f50763          	beq	a0,a5,17080 <_isatty_r+0x24>
   17076:	40b2                	lw	ra,12(sp)
   17078:	4422                	lw	s0,8(sp)
   1707a:	4492                	lw	s1,4(sp)
   1707c:	0141                	addi	sp,sp,16
   1707e:	8082                	ret
   17080:	f241a783          	lw	a5,-220(gp) # 1cb04 <errno>
   17084:	dbed                	beqz	a5,17076 <_isatty_r+0x1a>
   17086:	40b2                	lw	ra,12(sp)
   17088:	c01c                	sw	a5,0(s0)
   1708a:	4422                	lw	s0,8(sp)
   1708c:	4492                	lw	s1,4(sp)
   1708e:	0141                	addi	sp,sp,16
   17090:	8082                	ret

00017092 <strcmp>:
   17092:	00b56733          	or	a4,a0,a1
   17096:	53fd                	li	t2,-1
   17098:	8b0d                	andi	a4,a4,3
   1709a:	e779                	bnez	a4,17168 <strcmp+0xd6>
   1709c:	7f7f87b7          	lui	a5,0x7f7f8
   170a0:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7db153>
   170a4:	4110                	lw	a2,0(a0)
   170a6:	4194                	lw	a3,0(a1)
   170a8:	00f672b3          	and	t0,a2,a5
   170ac:	00f66333          	or	t1,a2,a5
   170b0:	92be                	add	t0,t0,a5
   170b2:	0062e2b3          	or	t0,t0,t1
   170b6:	0c729763          	bne	t0,t2,17184 <strcmp+0xf2>
   170ba:	06d61863          	bne	a2,a3,1712a <strcmp+0x98>
   170be:	4150                	lw	a2,4(a0)
   170c0:	41d4                	lw	a3,4(a1)
   170c2:	00f672b3          	and	t0,a2,a5
   170c6:	00f66333          	or	t1,a2,a5
   170ca:	92be                	add	t0,t0,a5
   170cc:	0062e2b3          	or	t0,t0,t1
   170d0:	0a729863          	bne	t0,t2,17180 <strcmp+0xee>
   170d4:	04d61b63          	bne	a2,a3,1712a <strcmp+0x98>
   170d8:	4510                	lw	a2,8(a0)
   170da:	4594                	lw	a3,8(a1)
   170dc:	00f672b3          	and	t0,a2,a5
   170e0:	00f66333          	or	t1,a2,a5
   170e4:	92be                	add	t0,t0,a5
   170e6:	0062e2b3          	or	t0,t0,t1
   170ea:	0a729163          	bne	t0,t2,1718c <strcmp+0xfa>
   170ee:	02d61e63          	bne	a2,a3,1712a <strcmp+0x98>
   170f2:	4550                	lw	a2,12(a0)
   170f4:	45d4                	lw	a3,12(a1)
   170f6:	00f672b3          	and	t0,a2,a5
   170fa:	00f66333          	or	t1,a2,a5
   170fe:	92be                	add	t0,t0,a5
   17100:	0062e2b3          	or	t0,t0,t1
   17104:	08729a63          	bne	t0,t2,17198 <strcmp+0x106>
   17108:	02d61163          	bne	a2,a3,1712a <strcmp+0x98>
   1710c:	4910                	lw	a2,16(a0)
   1710e:	4994                	lw	a3,16(a1)
   17110:	00f672b3          	and	t0,a2,a5
   17114:	00f66333          	or	t1,a2,a5
   17118:	92be                	add	t0,t0,a5
   1711a:	0062e2b3          	or	t0,t0,t1
   1711e:	08729363          	bne	t0,t2,171a4 <strcmp+0x112>
   17122:	0551                	addi	a0,a0,20
   17124:	05d1                	addi	a1,a1,20
   17126:	f6d60fe3          	beq	a2,a3,170a4 <strcmp+0x12>
   1712a:	01061713          	slli	a4,a2,0x10
   1712e:	01069793          	slli	a5,a3,0x10
   17132:	00f71c63          	bne	a4,a5,1714a <strcmp+0xb8>
   17136:	01065713          	srli	a4,a2,0x10
   1713a:	0106d793          	srli	a5,a3,0x10
   1713e:	40f70533          	sub	a0,a4,a5
   17142:	0ff57593          	zext.b	a1,a0
   17146:	e991                	bnez	a1,1715a <strcmp+0xc8>
   17148:	8082                	ret
   1714a:	8341                	srli	a4,a4,0x10
   1714c:	83c1                	srli	a5,a5,0x10
   1714e:	40f70533          	sub	a0,a4,a5
   17152:	0ff57593          	zext.b	a1,a0
   17156:	e191                	bnez	a1,1715a <strcmp+0xc8>
   17158:	8082                	ret
   1715a:	0ff77713          	zext.b	a4,a4
   1715e:	0ff7f793          	zext.b	a5,a5
   17162:	40f70533          	sub	a0,a4,a5
   17166:	8082                	ret
   17168:	00054603          	lbu	a2,0(a0)
   1716c:	0005c683          	lbu	a3,0(a1)
   17170:	0505                	addi	a0,a0,1
   17172:	0585                	addi	a1,a1,1
   17174:	00d61363          	bne	a2,a3,1717a <strcmp+0xe8>
   17178:	fa65                	bnez	a2,17168 <strcmp+0xd6>
   1717a:	40d60533          	sub	a0,a2,a3
   1717e:	8082                	ret
   17180:	0511                	addi	a0,a0,4
   17182:	0591                	addi	a1,a1,4
   17184:	fed612e3          	bne	a2,a3,17168 <strcmp+0xd6>
   17188:	4501                	li	a0,0
   1718a:	8082                	ret
   1718c:	0521                	addi	a0,a0,8
   1718e:	05a1                	addi	a1,a1,8
   17190:	fcd61ce3          	bne	a2,a3,17168 <strcmp+0xd6>
   17194:	4501                	li	a0,0
   17196:	8082                	ret
   17198:	0531                	addi	a0,a0,12
   1719a:	05b1                	addi	a1,a1,12
   1719c:	fcd616e3          	bne	a2,a3,17168 <strcmp+0xd6>
   171a0:	4501                	li	a0,0
   171a2:	8082                	ret
   171a4:	0541                	addi	a0,a0,16
   171a6:	05c1                	addi	a1,a1,16
   171a8:	fcd610e3          	bne	a2,a3,17168 <strcmp+0xd6>
   171ac:	4501                	li	a0,0
   171ae:	8082                	ret

000171b0 <__assert_func>:
   171b0:	f141a703          	lw	a4,-236(gp) # 1caf4 <_impure_ptr>
   171b4:	1141                	addi	sp,sp,-16
   171b6:	87b6                	mv	a5,a3
   171b8:	8832                	mv	a6,a2
   171ba:	c606                	sw	ra,12(sp)
   171bc:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffe11e0>
   171c0:	86aa                	mv	a3,a0
   171c2:	872e                	mv	a4,a1
   171c4:	863e                	mv	a2,a5
   171c6:	00080c63          	beqz	a6,171de <__assert_func+0x2e>
   171ca:	67ed                	lui	a5,0x1b
   171cc:	c9078793          	addi	a5,a5,-880 # 1ac90 <__clzsi2+0x222>
   171d0:	65ed                	lui	a1,0x1b
   171d2:	ca058593          	addi	a1,a1,-864 # 1aca0 <__clzsi2+0x232>
   171d6:	8546                	mv	a0,a7
   171d8:	2a81                	jal	17328 <fiprintf>
   171da:	691000ef          	jal	1806a <abort>
   171de:	686d                	lui	a6,0x1b
   171e0:	ae480793          	addi	a5,a6,-1308 # 1aae4 <__clzsi2+0x76>
   171e4:	ae480813          	addi	a6,a6,-1308
   171e8:	b7e5                	j	171d0 <__assert_func+0x20>

000171ea <__assert>:
   171ea:	1141                	addi	sp,sp,-16
   171ec:	86b2                	mv	a3,a2
   171ee:	4601                	li	a2,0
   171f0:	c606                	sw	ra,12(sp)
   171f2:	fbfff0ef          	jal	171b0 <__assert_func>

000171f6 <_calloc_r>:
   171f6:	02c5b7b3          	mulhu	a5,a1,a2
   171fa:	1141                	addi	sp,sp,-16
   171fc:	c606                	sw	ra,12(sp)
   171fe:	c422                	sw	s0,8(sp)
   17200:	02c585b3          	mul	a1,a1,a2
   17204:	efa5                	bnez	a5,1727c <_calloc_r+0x86>
   17206:	8bbfa0ef          	jal	11ac0 <_malloc_r>
   1720a:	842a                	mv	s0,a0
   1720c:	cd25                	beqz	a0,17284 <_calloc_r+0x8e>
   1720e:	ffc52603          	lw	a2,-4(a0)
   17212:	02400713          	li	a4,36
   17216:	9a71                	andi	a2,a2,-4
   17218:	1671                	addi	a2,a2,-4
   1721a:	04c76063          	bltu	a4,a2,1725a <_calloc_r+0x64>
   1721e:	46cd                	li	a3,19
   17220:	87aa                	mv	a5,a0
   17222:	02c6f163          	bgeu	a3,a2,17244 <_calloc_r+0x4e>
   17226:	00052023          	sw	zero,0(a0)
   1722a:	00052223          	sw	zero,4(a0)
   1722e:	47ed                	li	a5,27
   17230:	02c7fd63          	bgeu	a5,a2,1726a <_calloc_r+0x74>
   17234:	00052423          	sw	zero,8(a0)
   17238:	00052623          	sw	zero,12(a0)
   1723c:	01050793          	addi	a5,a0,16
   17240:	04e60863          	beq	a2,a4,17290 <_calloc_r+0x9a>
   17244:	0007a023          	sw	zero,0(a5)
   17248:	0007a223          	sw	zero,4(a5)
   1724c:	0007a423          	sw	zero,8(a5)
   17250:	40b2                	lw	ra,12(sp)
   17252:	8522                	mv	a0,s0
   17254:	4422                	lw	s0,8(sp)
   17256:	0141                	addi	sp,sp,16
   17258:	8082                	ret
   1725a:	4581                	li	a1,0
   1725c:	a4afa0ef          	jal	114a6 <memset>
   17260:	40b2                	lw	ra,12(sp)
   17262:	8522                	mv	a0,s0
   17264:	4422                	lw	s0,8(sp)
   17266:	0141                	addi	sp,sp,16
   17268:	8082                	ret
   1726a:	00850793          	addi	a5,a0,8
   1726e:	0007a023          	sw	zero,0(a5)
   17272:	0007a223          	sw	zero,4(a5)
   17276:	0007a423          	sw	zero,8(a5)
   1727a:	bfd9                	j	17250 <_calloc_r+0x5a>
   1727c:	5e9000ef          	jal	18064 <__errno>
   17280:	47b1                	li	a5,12
   17282:	c11c                	sw	a5,0(a0)
   17284:	4401                	li	s0,0
   17286:	40b2                	lw	ra,12(sp)
   17288:	8522                	mv	a0,s0
   1728a:	4422                	lw	s0,8(sp)
   1728c:	0141                	addi	sp,sp,16
   1728e:	8082                	ret
   17290:	00052823          	sw	zero,16(a0)
   17294:	01850793          	addi	a5,a0,24
   17298:	00052a23          	sw	zero,20(a0)
   1729c:	b765                	j	17244 <_calloc_r+0x4e>

0001729e <_mbtowc_r>:
   1729e:	e1c1a783          	lw	a5,-484(gp) # 1c9fc <__global_locale+0xe4>
   172a2:	8782                	jr	a5

000172a4 <__ascii_mbtowc>:
   172a4:	c999                	beqz	a1,172ba <__ascii_mbtowc+0x16>
   172a6:	c61d                	beqz	a2,172d4 <__ascii_mbtowc+0x30>
   172a8:	ca95                	beqz	a3,172dc <__ascii_mbtowc+0x38>
   172aa:	00064783          	lbu	a5,0(a2)
   172ae:	c19c                	sw	a5,0(a1)
   172b0:	00064503          	lbu	a0,0(a2)
   172b4:	00a03533          	snez	a0,a0
   172b8:	8082                	ret
   172ba:	1141                	addi	sp,sp,-16
   172bc:	006c                	addi	a1,sp,12
   172be:	ce09                	beqz	a2,172d8 <__ascii_mbtowc+0x34>
   172c0:	c285                	beqz	a3,172e0 <__ascii_mbtowc+0x3c>
   172c2:	00064783          	lbu	a5,0(a2)
   172c6:	c19c                	sw	a5,0(a1)
   172c8:	00064503          	lbu	a0,0(a2)
   172cc:	00a03533          	snez	a0,a0
   172d0:	0141                	addi	sp,sp,16
   172d2:	8082                	ret
   172d4:	4501                	li	a0,0
   172d6:	8082                	ret
   172d8:	4501                	li	a0,0
   172da:	bfdd                	j	172d0 <__ascii_mbtowc+0x2c>
   172dc:	5579                	li	a0,-2
   172de:	8082                	ret
   172e0:	5579                	li	a0,-2
   172e2:	b7fd                	j	172d0 <__ascii_mbtowc+0x2c>

000172e4 <_wctomb_r>:
   172e4:	e181a783          	lw	a5,-488(gp) # 1c9f8 <__global_locale+0xe0>
   172e8:	8782                	jr	a5

000172ea <__ascii_wctomb>:
   172ea:	cd91                	beqz	a1,17306 <__ascii_wctomb+0x1c>
   172ec:	0ff00793          	li	a5,255
   172f0:	00c7e663          	bltu	a5,a2,172fc <__ascii_wctomb+0x12>
   172f4:	00c58023          	sb	a2,0(a1)
   172f8:	4505                	li	a0,1
   172fa:	8082                	ret
   172fc:	08a00793          	li	a5,138
   17300:	c11c                	sw	a5,0(a0)
   17302:	557d                	li	a0,-1
   17304:	8082                	ret
   17306:	4501                	li	a0,0
   17308:	8082                	ret

0001730a <_fiprintf_r>:
   1730a:	7139                	addi	sp,sp,-64
   1730c:	02c10313          	addi	t1,sp,44
   17310:	d636                	sw	a3,44(sp)
   17312:	869a                	mv	a3,t1
   17314:	ce06                	sw	ra,28(sp)
   17316:	d83a                	sw	a4,48(sp)
   17318:	da3e                	sw	a5,52(sp)
   1731a:	dc42                	sw	a6,56(sp)
   1731c:	de46                	sw	a7,60(sp)
   1731e:	c61a                	sw	t1,12(sp)
   17320:	280d                	jal	17352 <_vfiprintf_r>
   17322:	40f2                	lw	ra,28(sp)
   17324:	6121                	addi	sp,sp,64
   17326:	8082                	ret

00017328 <fiprintf>:
   17328:	8e2a                	mv	t3,a0
   1732a:	7139                	addi	sp,sp,-64
   1732c:	f141a503          	lw	a0,-236(gp) # 1caf4 <_impure_ptr>
   17330:	02810313          	addi	t1,sp,40
   17334:	d432                	sw	a2,40(sp)
   17336:	d636                	sw	a3,44(sp)
   17338:	862e                	mv	a2,a1
   1733a:	869a                	mv	a3,t1
   1733c:	85f2                	mv	a1,t3
   1733e:	ce06                	sw	ra,28(sp)
   17340:	d83a                	sw	a4,48(sp)
   17342:	da3e                	sw	a5,52(sp)
   17344:	dc42                	sw	a6,56(sp)
   17346:	de46                	sw	a7,60(sp)
   17348:	c61a                	sw	t1,12(sp)
   1734a:	2021                	jal	17352 <_vfiprintf_r>
   1734c:	40f2                	lw	ra,28(sp)
   1734e:	6121                	addi	sp,sp,64
   17350:	8082                	ret

00017352 <_vfiprintf_r>:
   17352:	7169                	addi	sp,sp,-304
   17354:	11312e23          	sw	s3,284(sp)
   17358:	11512a23          	sw	s5,276(sp)
   1735c:	11612823          	sw	s6,272(sp)
   17360:	11712623          	sw	s7,268(sp)
   17364:	12112623          	sw	ra,300(sp)
   17368:	11a12023          	sw	s10,256(sp)
   1736c:	8baa                	mv	s7,a0
   1736e:	8aae                	mv	s5,a1
   17370:	89b2                	mv	s3,a2
   17372:	8b36                	mv	s6,a3
   17374:	c501                	beqz	a0,1737c <_vfiprintf_r+0x2a>
   17376:	595c                	lw	a5,52(a0)
   17378:	300783e3          	beqz	a5,17e7e <_vfiprintf_r+0xb2c>
   1737c:	00ca9703          	lh	a4,12(s5)
   17380:	064aa783          	lw	a5,100(s5)
   17384:	01271693          	slli	a3,a4,0x12
   17388:	0006cb63          	bltz	a3,1739e <_vfiprintf_r+0x4c>
   1738c:	76f9                	lui	a3,0xffffe
   1738e:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe11d3>
   17390:	6609                	lui	a2,0x2
   17392:	8f51                	or	a4,a4,a2
   17394:	8ff5                	and	a5,a5,a3
   17396:	00ea9623          	sh	a4,12(s5)
   1739a:	06faa223          	sw	a5,100(s5)
   1739e:	01279713          	slli	a4,a5,0x12
   173a2:	400740e3          	bltz	a4,17fa2 <_vfiprintf_r+0xc50>
   173a6:	00ca9783          	lh	a5,12(s5)
   173aa:	0087f713          	andi	a4,a5,8
   173ae:	22070363          	beqz	a4,175d4 <_vfiprintf_r+0x282>
   173b2:	010aa703          	lw	a4,16(s5)
   173b6:	20070f63          	beqz	a4,175d4 <_vfiprintf_r+0x282>
   173ba:	8be9                	andi	a5,a5,26
   173bc:	4729                	li	a4,10
   173be:	22e78763          	beq	a5,a4,175ec <_vfiprintf_r+0x29a>
   173c2:	67ed                	lui	a5,0x1b
   173c4:	4d01                	li	s10,0
   173c6:	11812423          	sw	s8,264(sp)
   173ca:	11912223          	sw	s9,260(sp)
   173ce:	04c10c13          	addi	s8,sp,76
   173d2:	14478793          	addi	a5,a5,324 # 1b144 <_ctype_+0x104>
   173d6:	6ced                	lui	s9,0x1b
   173d8:	12812423          	sw	s0,296(sp)
   173dc:	13212023          	sw	s2,288(sp)
   173e0:	11412c23          	sw	s4,280(sp)
   173e4:	896a                	mv	s2,s10
   173e6:	12912223          	sw	s1,292(sp)
   173ea:	dfee                	sw	s11,252(sp)
   173ec:	c0e2                	sw	s8,64(sp)
   173ee:	c482                	sw	zero,72(sp)
   173f0:	c282                	sw	zero,68(sp)
   173f2:	8462                	mv	s0,s8
   173f4:	c202                	sw	zero,4(sp)
   173f6:	ca02                	sw	zero,20(sp)
   173f8:	cc02                	sw	zero,24(sp)
   173fa:	ce02                	sw	zero,28(sp)
   173fc:	c03e                	sw	a5,0(sp)
   173fe:	4a41                	li	s4,16
   17400:	2b0c8c93          	addi	s9,s9,688 # 1b2b0 <zeroes.0>
   17404:	8d5a                	mv	s10,s6
   17406:	0009c783          	lbu	a5,0(s3)
   1740a:	14078563          	beqz	a5,17554 <_vfiprintf_r+0x202>
   1740e:	84ce                	mv	s1,s3
   17410:	02500713          	li	a4,37
   17414:	20e78363          	beq	a5,a4,1761a <_vfiprintf_r+0x2c8>
   17418:	0014c783          	lbu	a5,1(s1)
   1741c:	0485                	addi	s1,s1,1
   1741e:	fbfd                	bnez	a5,17414 <_vfiprintf_r+0xc2>
   17420:	41348b33          	sub	s6,s1,s3
   17424:	13348863          	beq	s1,s3,17554 <_vfiprintf_r+0x202>
   17428:	4726                	lw	a4,72(sp)
   1742a:	4796                	lw	a5,68(sp)
   1742c:	01342023          	sw	s3,0(s0)
   17430:	975a                	add	a4,a4,s6
   17432:	0785                	addi	a5,a5,1
   17434:	01642223          	sw	s6,4(s0)
   17438:	c4ba                	sw	a4,72(sp)
   1743a:	c2be                	sw	a5,68(sp)
   1743c:	471d                	li	a4,7
   1743e:	0421                	addi	s0,s0,8
   17440:	1ef74463          	blt	a4,a5,17628 <_vfiprintf_r+0x2d6>
   17444:	0004c783          	lbu	a5,0(s1)
   17448:	995a                	add	s2,s2,s6
   1744a:	10078563          	beqz	a5,17554 <_vfiprintf_r+0x202>
   1744e:	0014c783          	lbu	a5,1(s1)
   17452:	00148993          	addi	s3,s1,1
   17456:	02010da3          	sb	zero,59(sp)
   1745a:	5dfd                	li	s11,-1
   1745c:	4b01                	li	s6,0
   1745e:	4801                	li	a6,0
   17460:	05a00493          	li	s1,90
   17464:	0985                	addi	s3,s3,1
   17466:	863e                	mv	a2,a5
   17468:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   1746c:	02e4eb63          	bltu	s1,a4,174a2 <_vfiprintf_r+0x150>
   17470:	4782                	lw	a5,0(sp)
   17472:	070a                	slli	a4,a4,0x2
   17474:	973e                	add	a4,a4,a5
   17476:	431c                	lw	a5,0(a4)
   17478:	8782                	jr	a5
   1747a:	4b01                	li	s6,0
   1747c:	fd060793          	addi	a5,a2,-48
   17480:	46a5                	li	a3,9
   17482:	0009c603          	lbu	a2,0(s3)
   17486:	002b1713          	slli	a4,s6,0x2
   1748a:	9b3a                	add	s6,s6,a4
   1748c:	0b06                	slli	s6,s6,0x1
   1748e:	9b3e                	add	s6,s6,a5
   17490:	fd060793          	addi	a5,a2,-48
   17494:	0985                	addi	s3,s3,1
   17496:	fef6f6e3          	bgeu	a3,a5,17482 <_vfiprintf_r+0x130>
   1749a:	fe060713          	addi	a4,a2,-32
   1749e:	fce4f9e3          	bgeu	s1,a4,17470 <_vfiprintf_r+0x11e>
   174a2:	ca4d                	beqz	a2,17554 <_vfiprintf_r+0x202>
   174a4:	08c10623          	sb	a2,140(sp)
   174a8:	02010da3          	sb	zero,59(sp)
   174ac:	4885                	li	a7,1
   174ae:	4e05                	li	t3,1
   174b0:	0164                	addi	s1,sp,140
   174b2:	4d81                	li	s11,0
   174b4:	4281                	li	t0,0
   174b6:	08487f93          	andi	t6,a6,132
   174ba:	4726                	lw	a4,72(sp)
   174bc:	4796                	lw	a5,68(sp)
   174be:	000f9663          	bnez	t6,174ca <_vfiprintf_r+0x178>
   174c2:	411b0eb3          	sub	t4,s6,a7
   174c6:	71d04b63          	bgtz	t4,17bdc <_vfiprintf_r+0x88a>
   174ca:	03b14603          	lbu	a2,59(sp)
   174ce:	ce11                	beqz	a2,174ea <_vfiprintf_r+0x198>
   174d0:	03b10613          	addi	a2,sp,59
   174d4:	c010                	sw	a2,0(s0)
   174d6:	0785                	addi	a5,a5,1
   174d8:	4605                	li	a2,1
   174da:	0705                	addi	a4,a4,1
   174dc:	c050                	sw	a2,4(s0)
   174de:	c4ba                	sw	a4,72(sp)
   174e0:	c2be                	sw	a5,68(sp)
   174e2:	461d                	li	a2,7
   174e4:	0421                	addi	s0,s0,8
   174e6:	1af64363          	blt	a2,a5,1768c <_vfiprintf_r+0x33a>
   174ea:	00028e63          	beqz	t0,17506 <_vfiprintf_r+0x1b4>
   174ee:	1870                	addi	a2,sp,60
   174f0:	c010                	sw	a2,0(s0)
   174f2:	0785                	addi	a5,a5,1
   174f4:	4609                	li	a2,2
   174f6:	0709                	addi	a4,a4,2
   174f8:	c050                	sw	a2,4(s0)
   174fa:	c4ba                	sw	a4,72(sp)
   174fc:	c2be                	sw	a5,68(sp)
   174fe:	461d                	li	a2,7
   17500:	0421                	addi	s0,s0,8
   17502:	78f64663          	blt	a2,a5,17c8e <_vfiprintf_r+0x93c>
   17506:	08000613          	li	a2,128
   1750a:	52cf8a63          	beq	t6,a2,17a3e <_vfiprintf_r+0x6ec>
   1750e:	41cd8db3          	sub	s11,s11,t3
   17512:	5db04d63          	bgtz	s11,17aec <_vfiprintf_r+0x79a>
   17516:	9772                	add	a4,a4,t3
   17518:	0785                	addi	a5,a5,1
   1751a:	c004                	sw	s1,0(s0)
   1751c:	01c42223          	sw	t3,4(s0)
   17520:	c4ba                	sw	a4,72(sp)
   17522:	c2be                	sw	a5,68(sp)
   17524:	461d                	li	a2,7
   17526:	0421                	addi	s0,s0,8
   17528:	64f64e63          	blt	a2,a5,17b84 <_vfiprintf_r+0x832>
   1752c:	00487813          	andi	a6,a6,4
   17530:	00080663          	beqz	a6,1753c <_vfiprintf_r+0x1ea>
   17534:	411b04b3          	sub	s1,s6,a7
   17538:	16904e63          	bgtz	s1,176b4 <_vfiprintf_r+0x362>
   1753c:	011b5363          	bge	s6,a7,17542 <_vfiprintf_r+0x1f0>
   17540:	8b46                	mv	s6,a7
   17542:	995a                	add	s2,s2,s6
   17544:	0e071a63          	bnez	a4,17638 <_vfiprintf_r+0x2e6>
   17548:	0009c783          	lbu	a5,0(s3)
   1754c:	c282                	sw	zero,68(sp)
   1754e:	8462                	mv	s0,s8
   17550:	ea079fe3          	bnez	a5,1740e <_vfiprintf_r+0xbc>
   17554:	47a6                	lw	a5,72(sp)
   17556:	8d4a                	mv	s10,s2
   17558:	0e078863          	beqz	a5,17648 <_vfiprintf_r+0x2f6>
   1755c:	0090                	addi	a2,sp,64
   1755e:	85d6                	mv	a1,s5
   17560:	855e                	mv	a0,s7
   17562:	f50fc0ef          	jal	13cb2 <__sprint_r>
   17566:	a0cd                	j	17648 <_vfiprintf_r+0x2f6>
   17568:	000d2b03          	lw	s6,0(s10)
   1756c:	0d11                	addi	s10,s10,4
   1756e:	280b4c63          	bltz	s6,17806 <_vfiprintf_r+0x4b4>
   17572:	0009c783          	lbu	a5,0(s3)
   17576:	b5fd                	j	17464 <_vfiprintf_r+0x112>
   17578:	0009c783          	lbu	a5,0(s3)
   1757c:	02086813          	ori	a6,a6,32
   17580:	b5d5                	j	17464 <_vfiprintf_r+0x112>
   17582:	01086813          	ori	a6,a6,16
   17586:	02087793          	andi	a5,a6,32
   1758a:	1a078363          	beqz	a5,17730 <_vfiprintf_r+0x3de>
   1758e:	0d1d                	addi	s10,s10,7
   17590:	ff8d7d13          	andi	s10,s10,-8
   17594:	004d2703          	lw	a4,4(s10)
   17598:	000d2783          	lw	a5,0(s10)
   1759c:	0d21                	addi	s10,s10,8
   1759e:	88ba                	mv	a7,a4
   175a0:	1a074863          	bltz	a4,17750 <_vfiprintf_r+0x3fe>
   175a4:	1c0dc663          	bltz	s11,17770 <_vfiprintf_r+0x41e>
   175a8:	0117e733          	or	a4,a5,a7
   175ac:	f7f87813          	andi	a6,a6,-129
   175b0:	1c071063          	bnez	a4,17770 <_vfiprintf_r+0x41e>
   175b4:	1e0d93e3          	bnez	s11,17f9a <_vfiprintf_r+0xc48>
   175b8:	03b14783          	lbu	a5,59(sp)
   175bc:	4881                	li	a7,0
   175be:	4e01                	li	t3,0
   175c0:	1984                	addi	s1,sp,240
   175c2:	c391                	beqz	a5,175c6 <_vfiprintf_r+0x274>
   175c4:	0885                	addi	a7,a7,1
   175c6:	00287293          	andi	t0,a6,2
   175ca:	ee0286e3          	beqz	t0,174b6 <_vfiprintf_r+0x164>
   175ce:	0889                	addi	a7,a7,2
   175d0:	4289                	li	t0,2
   175d2:	b5d5                	j	174b6 <_vfiprintf_r+0x164>
   175d4:	85d6                	mv	a1,s5
   175d6:	855e                	mv	a0,s7
   175d8:	ecdfc0ef          	jal	144a4 <__swsetup_r>
   175dc:	1c0513e3          	bnez	a0,17fa2 <_vfiprintf_r+0xc50>
   175e0:	00ca9783          	lh	a5,12(s5)
   175e4:	4729                	li	a4,10
   175e6:	8be9                	andi	a5,a5,26
   175e8:	dce79de3          	bne	a5,a4,173c2 <_vfiprintf_r+0x70>
   175ec:	00ea9783          	lh	a5,14(s5)
   175f0:	dc07c9e3          	bltz	a5,173c2 <_vfiprintf_r+0x70>
   175f4:	12c12083          	lw	ra,300(sp)
   175f8:	10012d03          	lw	s10,256(sp)
   175fc:	86da                	mv	a3,s6
   175fe:	864e                	mv	a2,s3
   17600:	11012b03          	lw	s6,272(sp)
   17604:	11c12983          	lw	s3,284(sp)
   17608:	85d6                	mv	a1,s5
   1760a:	855e                	mv	a0,s7
   1760c:	11412a83          	lw	s5,276(sp)
   17610:	10c12b83          	lw	s7,268(sp)
   17614:	6155                	addi	sp,sp,304
   17616:	1b90006f          	j	17fce <__sbprintf>
   1761a:	41348b33          	sub	s6,s1,s3
   1761e:	e13495e3          	bne	s1,s3,17428 <_vfiprintf_r+0xd6>
   17622:	0004c783          	lbu	a5,0(s1)
   17626:	b515                	j	1744a <_vfiprintf_r+0xf8>
   17628:	0090                	addi	a2,sp,64
   1762a:	85d6                	mv	a1,s5
   1762c:	855e                	mv	a0,s7
   1762e:	e84fc0ef          	jal	13cb2 <__sprint_r>
   17632:	e911                	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17634:	8462                	mv	s0,s8
   17636:	b539                	j	17444 <_vfiprintf_r+0xf2>
   17638:	0090                	addi	a2,sp,64
   1763a:	85d6                	mv	a1,s5
   1763c:	855e                	mv	a0,s7
   1763e:	e74fc0ef          	jal	13cb2 <__sprint_r>
   17642:	f00503e3          	beqz	a0,17548 <_vfiprintf_r+0x1f6>
   17646:	8d4a                	mv	s10,s2
   17648:	00cad783          	lhu	a5,12(s5)
   1764c:	12812403          	lw	s0,296(sp)
   17650:	12412483          	lw	s1,292(sp)
   17654:	0407f793          	andi	a5,a5,64
   17658:	12012903          	lw	s2,288(sp)
   1765c:	11812a03          	lw	s4,280(sp)
   17660:	10812c03          	lw	s8,264(sp)
   17664:	10412c83          	lw	s9,260(sp)
   17668:	5dfe                	lw	s11,252(sp)
   1766a:	12079ce3          	bnez	a5,17fa2 <_vfiprintf_r+0xc50>
   1766e:	12c12083          	lw	ra,300(sp)
   17672:	11c12983          	lw	s3,284(sp)
   17676:	11412a83          	lw	s5,276(sp)
   1767a:	11012b03          	lw	s6,272(sp)
   1767e:	10c12b83          	lw	s7,268(sp)
   17682:	856a                	mv	a0,s10
   17684:	10012d03          	lw	s10,256(sp)
   17688:	6155                	addi	sp,sp,304
   1768a:	8082                	ret
   1768c:	0090                	addi	a2,sp,64
   1768e:	85d6                	mv	a1,s5
   17690:	855e                	mv	a0,s7
   17692:	d246                	sw	a7,36(sp)
   17694:	d072                	sw	t3,32(sp)
   17696:	c842                	sw	a6,16(sp)
   17698:	c67e                	sw	t6,12(sp)
   1769a:	c416                	sw	t0,8(sp)
   1769c:	e16fc0ef          	jal	13cb2 <__sprint_r>
   176a0:	f15d                	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   176a2:	4726                	lw	a4,72(sp)
   176a4:	4796                	lw	a5,68(sp)
   176a6:	5892                	lw	a7,36(sp)
   176a8:	5e02                	lw	t3,32(sp)
   176aa:	4842                	lw	a6,16(sp)
   176ac:	4fb2                	lw	t6,12(sp)
   176ae:	42a2                	lw	t0,8(sp)
   176b0:	8462                	mv	s0,s8
   176b2:	bd25                	j	174ea <_vfiprintf_r+0x198>
   176b4:	636d                	lui	t1,0x1b
   176b6:	4641                	li	a2,16
   176b8:	4796                	lw	a5,68(sp)
   176ba:	2c030313          	addi	t1,t1,704 # 1b2c0 <blanks.1>
   176be:	04965563          	bge	a2,s1,17708 <_vfiprintf_r+0x3b6>
   176c2:	86a2                	mv	a3,s0
   176c4:	4dc1                	li	s11,16
   176c6:	481d                	li	a6,7
   176c8:	c446                	sw	a7,8(sp)
   176ca:	841a                	mv	s0,t1
   176cc:	a021                	j	176d4 <_vfiprintf_r+0x382>
   176ce:	14c1                	addi	s1,s1,-16
   176d0:	029dd963          	bge	s11,s1,17702 <_vfiprintf_r+0x3b0>
   176d4:	0741                	addi	a4,a4,16
   176d6:	0785                	addi	a5,a5,1
   176d8:	c280                	sw	s0,0(a3)
   176da:	01b6a223          	sw	s11,4(a3)
   176de:	c4ba                	sw	a4,72(sp)
   176e0:	c2be                	sw	a5,68(sp)
   176e2:	06a1                	addi	a3,a3,8
   176e4:	fef855e3          	bge	a6,a5,176ce <_vfiprintf_r+0x37c>
   176e8:	0090                	addi	a2,sp,64
   176ea:	85d6                	mv	a1,s5
   176ec:	855e                	mv	a0,s7
   176ee:	dc4fc0ef          	jal	13cb2 <__sprint_r>
   176f2:	f931                	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   176f4:	14c1                	addi	s1,s1,-16
   176f6:	4726                	lw	a4,72(sp)
   176f8:	4796                	lw	a5,68(sp)
   176fa:	86e2                	mv	a3,s8
   176fc:	481d                	li	a6,7
   176fe:	fc9dcbe3          	blt	s11,s1,176d4 <_vfiprintf_r+0x382>
   17702:	48a2                	lw	a7,8(sp)
   17704:	8322                	mv	t1,s0
   17706:	8436                	mv	s0,a3
   17708:	9726                	add	a4,a4,s1
   1770a:	0785                	addi	a5,a5,1
   1770c:	00642023          	sw	t1,0(s0)
   17710:	c044                	sw	s1,4(s0)
   17712:	c4ba                	sw	a4,72(sp)
   17714:	c2be                	sw	a5,68(sp)
   17716:	461d                	li	a2,7
   17718:	e2f652e3          	bge	a2,a5,1753c <_vfiprintf_r+0x1ea>
   1771c:	0090                	addi	a2,sp,64
   1771e:	85d6                	mv	a1,s5
   17720:	855e                	mv	a0,s7
   17722:	c446                	sw	a7,8(sp)
   17724:	d8efc0ef          	jal	13cb2 <__sprint_r>
   17728:	fd19                	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   1772a:	4726                	lw	a4,72(sp)
   1772c:	48a2                	lw	a7,8(sp)
   1772e:	b539                	j	1753c <_vfiprintf_r+0x1ea>
   17730:	01087713          	andi	a4,a6,16
   17734:	000d2783          	lw	a5,0(s10)
   17738:	0d11                	addi	s10,s10,4
   1773a:	e371                	bnez	a4,177fe <_vfiprintf_r+0x4ac>
   1773c:	04087713          	andi	a4,a6,64
   17740:	cb5d                	beqz	a4,177f6 <_vfiprintf_r+0x4a4>
   17742:	07c2                	slli	a5,a5,0x10
   17744:	87c1                	srai	a5,a5,0x10
   17746:	41f7d893          	srai	a7,a5,0x1f
   1774a:	8746                	mv	a4,a7
   1774c:	e4075ce3          	bgez	a4,175a4 <_vfiprintf_r+0x252>
   17750:	02d00613          	li	a2,45
   17754:	00f03733          	snez	a4,a5
   17758:	411008b3          	neg	a7,a7
   1775c:	02c10da3          	sb	a2,59(sp)
   17760:	40e888b3          	sub	a7,a7,a4
   17764:	40f007b3          	neg	a5,a5
   17768:	000dc463          	bltz	s11,17770 <_vfiprintf_r+0x41e>
   1776c:	f7f87813          	andi	a6,a6,-129
   17770:	62089c63          	bnez	a7,17da8 <_vfiprintf_r+0xa56>
   17774:	4725                	li	a4,9
   17776:	62f76963          	bltu	a4,a5,17da8 <_vfiprintf_r+0xa56>
   1777a:	03078793          	addi	a5,a5,48
   1777e:	0ff7f793          	zext.b	a5,a5
   17782:	0ef107a3          	sb	a5,239(sp)
   17786:	88ee                	mv	a7,s11
   17788:	01b04363          	bgtz	s11,1778e <_vfiprintf_r+0x43c>
   1778c:	4885                	li	a7,1
   1778e:	4e05                	li	t3,1
   17790:	0ef10493          	addi	s1,sp,239
   17794:	03b14783          	lbu	a5,59(sp)
   17798:	e20796e3          	bnez	a5,175c4 <_vfiprintf_r+0x272>
   1779c:	b52d                	j	175c6 <_vfiprintf_r+0x274>
   1779e:	000d2483          	lw	s1,0(s10)
   177a2:	02010da3          	sb	zero,59(sp)
   177a6:	0d11                	addi	s10,s10,4
   177a8:	70048463          	beqz	s1,17eb0 <_vfiprintf_r+0xb5e>
   177ac:	c442                	sw	a6,8(sp)
   177ae:	5e0dc163          	bltz	s11,17d90 <_vfiprintf_r+0xa3e>
   177b2:	866e                	mv	a2,s11
   177b4:	4581                	li	a1,0
   177b6:	8526                	mv	a0,s1
   177b8:	dc7fc0ef          	jal	1457e <memchr>
   177bc:	4822                	lw	a6,8(sp)
   177be:	8e6e                	mv	t3,s11
   177c0:	c119                	beqz	a0,177c6 <_vfiprintf_r+0x474>
   177c2:	40950e33          	sub	t3,a0,s1
   177c6:	03b14783          	lbu	a5,59(sp)
   177ca:	fffe4893          	not	a7,t3
   177ce:	41f8d893          	srai	a7,a7,0x1f
   177d2:	011e78b3          	and	a7,t3,a7
   177d6:	4d81                	li	s11,0
   177d8:	4281                	li	t0,0
   177da:	de0795e3          	bnez	a5,175c4 <_vfiprintf_r+0x272>
   177de:	b9e1                	j	174b6 <_vfiprintf_r+0x164>
   177e0:	000d2783          	lw	a5,0(s10)
   177e4:	02010da3          	sb	zero,59(sp)
   177e8:	0d11                	addi	s10,s10,4
   177ea:	08f10623          	sb	a5,140(sp)
   177ee:	4885                	li	a7,1
   177f0:	4e05                	li	t3,1
   177f2:	0164                	addi	s1,sp,140
   177f4:	b97d                	j	174b2 <_vfiprintf_r+0x160>
   177f6:	20087713          	andi	a4,a6,512
   177fa:	76071e63          	bnez	a4,17f76 <_vfiprintf_r+0xc24>
   177fe:	41f7d893          	srai	a7,a5,0x1f
   17802:	8746                	mv	a4,a7
   17804:	bb71                	j	175a0 <_vfiprintf_r+0x24e>
   17806:	41600b33          	neg	s6,s6
   1780a:	0009c783          	lbu	a5,0(s3)
   1780e:	00486813          	ori	a6,a6,4
   17812:	b989                	j	17464 <_vfiprintf_r+0x112>
   17814:	02b00713          	li	a4,43
   17818:	0009c783          	lbu	a5,0(s3)
   1781c:	02e10da3          	sb	a4,59(sp)
   17820:	b191                	j	17464 <_vfiprintf_r+0x112>
   17822:	0009c783          	lbu	a5,0(s3)
   17826:	08086813          	ori	a6,a6,128
   1782a:	b92d                	j	17464 <_vfiprintf_r+0x112>
   1782c:	0009c603          	lbu	a2,0(s3)
   17830:	02a00793          	li	a5,42
   17834:	00198693          	addi	a3,s3,1
   17838:	76f60863          	beq	a2,a5,17fa8 <_vfiprintf_r+0xc56>
   1783c:	fd060793          	addi	a5,a2,-48
   17840:	4725                	li	a4,9
   17842:	4d81                	li	s11,0
   17844:	45a5                	li	a1,9
   17846:	02f76063          	bltu	a4,a5,17866 <_vfiprintf_r+0x514>
   1784a:	0006c603          	lbu	a2,0(a3)
   1784e:	002d9713          	slli	a4,s11,0x2
   17852:	9dba                	add	s11,s11,a4
   17854:	0d86                	slli	s11,s11,0x1
   17856:	9dbe                	add	s11,s11,a5
   17858:	fd060793          	addi	a5,a2,-48
   1785c:	0685                	addi	a3,a3,1
   1785e:	fef5f6e3          	bgeu	a1,a5,1784a <_vfiprintf_r+0x4f8>
   17862:	4a0dcb63          	bltz	s11,17d18 <_vfiprintf_r+0x9c6>
   17866:	89b6                	mv	s3,a3
   17868:	b101                	j	17468 <_vfiprintf_r+0x116>
   1786a:	855e                	mv	a0,s7
   1786c:	c442                	sw	a6,8(sp)
   1786e:	e1ffc0ef          	jal	1468c <_localeconv_r>
   17872:	415c                	lw	a5,4(a0)
   17874:	853e                	mv	a0,a5
   17876:	ce3e                	sw	a5,28(sp)
   17878:	e1df90ef          	jal	11694 <strlen>
   1787c:	87aa                	mv	a5,a0
   1787e:	855e                	mv	a0,s7
   17880:	cc3e                	sw	a5,24(sp)
   17882:	e0bfc0ef          	jal	1468c <_localeconv_r>
   17886:	4518                	lw	a4,8(a0)
   17888:	47e2                	lw	a5,24(sp)
   1788a:	4822                	lw	a6,8(sp)
   1788c:	ca3a                	sw	a4,20(sp)
   1788e:	ce0782e3          	beqz	a5,17572 <_vfiprintf_r+0x220>
   17892:	4752                	lw	a4,20(sp)
   17894:	0009c783          	lbu	a5,0(s3)
   17898:	bc0706e3          	beqz	a4,17464 <_vfiprintf_r+0x112>
   1789c:	00074703          	lbu	a4,0(a4)
   178a0:	bc0702e3          	beqz	a4,17464 <_vfiprintf_r+0x112>
   178a4:	40086813          	ori	a6,a6,1024
   178a8:	be75                	j	17464 <_vfiprintf_r+0x112>
   178aa:	0009c783          	lbu	a5,0(s3)
   178ae:	00186813          	ori	a6,a6,1
   178b2:	be4d                	j	17464 <_vfiprintf_r+0x112>
   178b4:	03b14703          	lbu	a4,59(sp)
   178b8:	0009c783          	lbu	a5,0(s3)
   178bc:	ba0714e3          	bnez	a4,17464 <_vfiprintf_r+0x112>
   178c0:	02000713          	li	a4,32
   178c4:	02e10da3          	sb	a4,59(sp)
   178c8:	be71                	j	17464 <_vfiprintf_r+0x112>
   178ca:	01086713          	ori	a4,a6,16
   178ce:	02077793          	andi	a5,a4,32
   178d2:	40078063          	beqz	a5,17cd2 <_vfiprintf_r+0x980>
   178d6:	0d1d                	addi	s10,s10,7
   178d8:	ff8d7d13          	andi	s10,s10,-8
   178dc:	000d2783          	lw	a5,0(s10)
   178e0:	004d2583          	lw	a1,4(s10)
   178e4:	0d21                	addi	s10,s10,8
   178e6:	02010da3          	sb	zero,59(sp)
   178ea:	bff77813          	andi	a6,a4,-1025
   178ee:	0a0dc163          	bltz	s11,17990 <_vfiprintf_r+0x63e>
   178f2:	00b7e633          	or	a2,a5,a1
   178f6:	b7f77713          	andi	a4,a4,-1153
   178fa:	56061d63          	bnez	a2,17e74 <_vfiprintf_r+0xb22>
   178fe:	8e42                	mv	t3,a6
   17900:	4781                	li	a5,0
   17902:	883a                	mv	a6,a4
   17904:	060d9e63          	bnez	s11,17980 <_vfiprintf_r+0x62e>
   17908:	ca0798e3          	bnez	a5,175b8 <_vfiprintf_r+0x266>
   1790c:	001e7e13          	andi	t3,t3,1
   17910:	3e0e0463          	beqz	t3,17cf8 <_vfiprintf_r+0x9a6>
   17914:	03000793          	li	a5,48
   17918:	0ef107a3          	sb	a5,239(sp)
   1791c:	88f2                	mv	a7,t3
   1791e:	0ef10493          	addi	s1,sp,239
   17922:	bd8d                	j	17794 <_vfiprintf_r+0x442>
   17924:	0009c783          	lbu	a5,0(s3)
   17928:	06c00713          	li	a4,108
   1792c:	56e78463          	beq	a5,a4,17e94 <_vfiprintf_r+0xb42>
   17930:	01086813          	ori	a6,a6,16
   17934:	be05                	j	17464 <_vfiprintf_r+0x112>
   17936:	0009c783          	lbu	a5,0(s3)
   1793a:	06800713          	li	a4,104
   1793e:	54e78463          	beq	a5,a4,17e86 <_vfiprintf_r+0xb34>
   17942:	04086813          	ori	a6,a6,64
   17946:	be39                	j	17464 <_vfiprintf_r+0x112>
   17948:	01086e13          	ori	t3,a6,16
   1794c:	020e7793          	andi	a5,t3,32
   17950:	36078363          	beqz	a5,17cb6 <_vfiprintf_r+0x964>
   17954:	0d1d                	addi	s10,s10,7
   17956:	ff8d7d13          	andi	s10,s10,-8
   1795a:	000d2783          	lw	a5,0(s10)
   1795e:	004d2883          	lw	a7,4(s10)
   17962:	0d21                	addi	s10,s10,8
   17964:	02010da3          	sb	zero,59(sp)
   17968:	8872                	mv	a6,t3
   1796a:	e00dc3e3          	bltz	s11,17770 <_vfiprintf_r+0x41e>
   1796e:	0117e733          	or	a4,a5,a7
   17972:	f7fe7813          	andi	a6,t3,-129
   17976:	de071de3          	bnez	a4,17770 <_vfiprintf_r+0x41e>
   1797a:	4785                	li	a5,1
   1797c:	f80d86e3          	beqz	s11,17908 <_vfiprintf_r+0x5b6>
   17980:	4705                	li	a4,1
   17982:	60e78c63          	beq	a5,a4,17f9a <_vfiprintf_r+0xc48>
   17986:	4709                	li	a4,2
   17988:	54e78663          	beq	a5,a4,17ed4 <_vfiprintf_r+0xb82>
   1798c:	4781                	li	a5,0
   1798e:	4581                	li	a1,0
   17990:	1984                	addi	s1,sp,240
   17992:	01d59693          	slli	a3,a1,0x1d
   17996:	0077f713          	andi	a4,a5,7
   1799a:	838d                	srli	a5,a5,0x3
   1799c:	03070713          	addi	a4,a4,48
   179a0:	8fd5                	or	a5,a5,a3
   179a2:	818d                	srli	a1,a1,0x3
   179a4:	fee48fa3          	sb	a4,-1(s1)
   179a8:	00b7e6b3          	or	a3,a5,a1
   179ac:	8526                	mv	a0,s1
   179ae:	14fd                	addi	s1,s1,-1
   179b0:	f2ed                	bnez	a3,17992 <_vfiprintf_r+0x640>
   179b2:	00187793          	andi	a5,a6,1
   179b6:	20078b63          	beqz	a5,17bcc <_vfiprintf_r+0x87a>
   179ba:	03000793          	li	a5,48
   179be:	20f70763          	beq	a4,a5,17bcc <_vfiprintf_r+0x87a>
   179c2:	1579                	addi	a0,a0,-2
   179c4:	fef48fa3          	sb	a5,-1(s1)
   179c8:	199c                	addi	a5,sp,240
   179ca:	40a78e33          	sub	t3,a5,a0
   179ce:	88ee                	mv	a7,s11
   179d0:	35cdc163          	blt	s11,t3,17d12 <_vfiprintf_r+0x9c0>
   179d4:	84aa                	mv	s1,a0
   179d6:	bb7d                	j	17794 <_vfiprintf_r+0x442>
   179d8:	6721                	lui	a4,0x8
   179da:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   179de:	02e11e23          	sh	a4,60(sp)
   179e2:	676d                	lui	a4,0x1b
   179e4:	b7870713          	addi	a4,a4,-1160 # 1ab78 <__clzsi2+0x10a>
   179e8:	000d2783          	lw	a5,0(s10)
   179ec:	4581                	li	a1,0
   179ee:	00286813          	ori	a6,a6,2
   179f2:	0d11                	addi	s10,s10,4
   179f4:	c23a                	sw	a4,4(sp)
   179f6:	02010da3          	sb	zero,59(sp)
   179fa:	1a0dc763          	bltz	s11,17ba8 <_vfiprintf_r+0x856>
   179fe:	00b7e733          	or	a4,a5,a1
   17a02:	f7f87613          	andi	a2,a6,-129
   17a06:	18071d63          	bnez	a4,17ba0 <_vfiprintf_r+0x84e>
   17a0a:	8e42                	mv	t3,a6
   17a0c:	4789                	li	a5,2
   17a0e:	8832                	mv	a6,a2
   17a10:	bdd5                	j	17904 <_vfiprintf_r+0x5b2>
   17a12:	02087793          	andi	a5,a6,32
   17a16:	2e079463          	bnez	a5,17cfe <_vfiprintf_r+0x9ac>
   17a1a:	01087793          	andi	a5,a6,16
   17a1e:	48079263          	bnez	a5,17ea2 <_vfiprintf_r+0xb50>
   17a22:	04087793          	andi	a5,a6,64
   17a26:	54079f63          	bnez	a5,17f84 <_vfiprintf_r+0xc32>
   17a2a:	20087813          	andi	a6,a6,512
   17a2e:	46080a63          	beqz	a6,17ea2 <_vfiprintf_r+0xb50>
   17a32:	000d2783          	lw	a5,0(s10)
   17a36:	0d11                	addi	s10,s10,4
   17a38:	01278023          	sb	s2,0(a5)
   17a3c:	b2e9                	j	17406 <_vfiprintf_r+0xb4>
   17a3e:	411b0333          	sub	t1,s6,a7
   17a42:	ac6056e3          	blez	t1,1750e <_vfiprintf_r+0x1bc>
   17a46:	6f6d                	lui	t5,0x1b
   17a48:	4641                	li	a2,16
   17a4a:	2b0f0f13          	addi	t5,t5,688 # 1b2b0 <zeroes.0>
   17a4e:	04665f63          	bge	a2,t1,17aac <_vfiprintf_r+0x75a>
   17a52:	c426                	sw	s1,8(sp)
   17a54:	86a2                	mv	a3,s0
   17a56:	4ec1                	li	t4,16
   17a58:	4f9d                	li	t6,7
   17a5a:	c642                	sw	a6,12(sp)
   17a5c:	c872                	sw	t3,16(sp)
   17a5e:	841a                	mv	s0,t1
   17a60:	d046                	sw	a7,32(sp)
   17a62:	84fa                	mv	s1,t5
   17a64:	a021                	j	17a6c <_vfiprintf_r+0x71a>
   17a66:	1441                	addi	s0,s0,-16
   17a68:	028edb63          	bge	t4,s0,17a9e <_vfiprintf_r+0x74c>
   17a6c:	0741                	addi	a4,a4,16
   17a6e:	0785                	addi	a5,a5,1
   17a70:	c284                	sw	s1,0(a3)
   17a72:	01d6a223          	sw	t4,4(a3)
   17a76:	c4ba                	sw	a4,72(sp)
   17a78:	c2be                	sw	a5,68(sp)
   17a7a:	06a1                	addi	a3,a3,8
   17a7c:	feffd5e3          	bge	t6,a5,17a66 <_vfiprintf_r+0x714>
   17a80:	0090                	addi	a2,sp,64
   17a82:	85d6                	mv	a1,s5
   17a84:	855e                	mv	a0,s7
   17a86:	a2cfc0ef          	jal	13cb2 <__sprint_r>
   17a8a:	ba051ee3          	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17a8e:	4ec1                	li	t4,16
   17a90:	1441                	addi	s0,s0,-16
   17a92:	4726                	lw	a4,72(sp)
   17a94:	4796                	lw	a5,68(sp)
   17a96:	86e2                	mv	a3,s8
   17a98:	4f9d                	li	t6,7
   17a9a:	fc8ec9e3          	blt	t4,s0,17a6c <_vfiprintf_r+0x71a>
   17a9e:	8f26                	mv	t5,s1
   17aa0:	4832                	lw	a6,12(sp)
   17aa2:	4e42                	lw	t3,16(sp)
   17aa4:	5882                	lw	a7,32(sp)
   17aa6:	44a2                	lw	s1,8(sp)
   17aa8:	8322                	mv	t1,s0
   17aaa:	8436                	mv	s0,a3
   17aac:	971a                	add	a4,a4,t1
   17aae:	0785                	addi	a5,a5,1
   17ab0:	01e42023          	sw	t5,0(s0)
   17ab4:	00642223          	sw	t1,4(s0)
   17ab8:	c4ba                	sw	a4,72(sp)
   17aba:	c2be                	sw	a5,68(sp)
   17abc:	461d                	li	a2,7
   17abe:	0421                	addi	s0,s0,8
   17ac0:	a4f657e3          	bge	a2,a5,1750e <_vfiprintf_r+0x1bc>
   17ac4:	0090                	addi	a2,sp,64
   17ac6:	85d6                	mv	a1,s5
   17ac8:	855e                	mv	a0,s7
   17aca:	c846                	sw	a7,16(sp)
   17acc:	c672                	sw	t3,12(sp)
   17ace:	c442                	sw	a6,8(sp)
   17ad0:	9e2fc0ef          	jal	13cb2 <__sprint_r>
   17ad4:	b60519e3          	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17ad8:	4e32                	lw	t3,12(sp)
   17ada:	4726                	lw	a4,72(sp)
   17adc:	4796                	lw	a5,68(sp)
   17ade:	41cd8db3          	sub	s11,s11,t3
   17ae2:	48c2                	lw	a7,16(sp)
   17ae4:	4822                	lw	a6,8(sp)
   17ae6:	8462                	mv	s0,s8
   17ae8:	a3b057e3          	blez	s11,17516 <_vfiprintf_r+0x1c4>
   17aec:	6f6d                	lui	t5,0x1b
   17aee:	2b0f0f13          	addi	t5,t5,688 # 1b2b0 <zeroes.0>
   17af2:	05ba5c63          	bge	s4,s11,17b4a <_vfiprintf_r+0x7f8>
   17af6:	86a2                	mv	a3,s0
   17af8:	431d                	li	t1,7
   17afa:	846e                	mv	s0,s11
   17afc:	c442                	sw	a6,8(sp)
   17afe:	c672                	sw	t3,12(sp)
   17b00:	c846                	sw	a7,16(sp)
   17b02:	8de6                	mv	s11,s9
   17b04:	a021                	j	17b0c <_vfiprintf_r+0x7ba>
   17b06:	1441                	addi	s0,s0,-16
   17b08:	028a5b63          	bge	s4,s0,17b3e <_vfiprintf_r+0x7ec>
   17b0c:	0741                	addi	a4,a4,16
   17b0e:	0785                	addi	a5,a5,1
   17b10:	0196a023          	sw	s9,0(a3)
   17b14:	0146a223          	sw	s4,4(a3)
   17b18:	c4ba                	sw	a4,72(sp)
   17b1a:	c2be                	sw	a5,68(sp)
   17b1c:	06a1                	addi	a3,a3,8
   17b1e:	fef354e3          	bge	t1,a5,17b06 <_vfiprintf_r+0x7b4>
   17b22:	0090                	addi	a2,sp,64
   17b24:	85d6                	mv	a1,s5
   17b26:	855e                	mv	a0,s7
   17b28:	98afc0ef          	jal	13cb2 <__sprint_r>
   17b2c:	b0051de3          	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17b30:	1441                	addi	s0,s0,-16
   17b32:	4726                	lw	a4,72(sp)
   17b34:	4796                	lw	a5,68(sp)
   17b36:	86e2                	mv	a3,s8
   17b38:	431d                	li	t1,7
   17b3a:	fc8a49e3          	blt	s4,s0,17b0c <_vfiprintf_r+0x7ba>
   17b3e:	4822                	lw	a6,8(sp)
   17b40:	4e32                	lw	t3,12(sp)
   17b42:	48c2                	lw	a7,16(sp)
   17b44:	8f6e                	mv	t5,s11
   17b46:	8da2                	mv	s11,s0
   17b48:	8436                	mv	s0,a3
   17b4a:	976e                	add	a4,a4,s11
   17b4c:	0785                	addi	a5,a5,1
   17b4e:	01e42023          	sw	t5,0(s0)
   17b52:	01b42223          	sw	s11,4(s0)
   17b56:	c4ba                	sw	a4,72(sp)
   17b58:	c2be                	sw	a5,68(sp)
   17b5a:	461d                	li	a2,7
   17b5c:	0421                	addi	s0,s0,8
   17b5e:	9af65ce3          	bge	a2,a5,17516 <_vfiprintf_r+0x1c4>
   17b62:	0090                	addi	a2,sp,64
   17b64:	85d6                	mv	a1,s5
   17b66:	855e                	mv	a0,s7
   17b68:	c846                	sw	a7,16(sp)
   17b6a:	c672                	sw	t3,12(sp)
   17b6c:	c442                	sw	a6,8(sp)
   17b6e:	944fc0ef          	jal	13cb2 <__sprint_r>
   17b72:	ac051ae3          	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17b76:	4726                	lw	a4,72(sp)
   17b78:	4796                	lw	a5,68(sp)
   17b7a:	48c2                	lw	a7,16(sp)
   17b7c:	4e32                	lw	t3,12(sp)
   17b7e:	4822                	lw	a6,8(sp)
   17b80:	8462                	mv	s0,s8
   17b82:	ba51                	j	17516 <_vfiprintf_r+0x1c4>
   17b84:	0090                	addi	a2,sp,64
   17b86:	85d6                	mv	a1,s5
   17b88:	855e                	mv	a0,s7
   17b8a:	c646                	sw	a7,12(sp)
   17b8c:	c442                	sw	a6,8(sp)
   17b8e:	924fc0ef          	jal	13cb2 <__sprint_r>
   17b92:	aa051ae3          	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17b96:	4726                	lw	a4,72(sp)
   17b98:	48b2                	lw	a7,12(sp)
   17b9a:	4822                	lw	a6,8(sp)
   17b9c:	8462                	mv	s0,s8
   17b9e:	b279                	j	1752c <_vfiprintf_r+0x1da>
   17ba0:	4709                	li	a4,2
   17ba2:	8832                	mv	a6,a2
   17ba4:	de0706e3          	beqz	a4,17990 <_vfiprintf_r+0x63e>
   17ba8:	4612                	lw	a2,4(sp)
   17baa:	1984                	addi	s1,sp,240
   17bac:	00f7f713          	andi	a4,a5,15
   17bb0:	9732                	add	a4,a4,a2
   17bb2:	00074683          	lbu	a3,0(a4)
   17bb6:	8391                	srli	a5,a5,0x4
   17bb8:	01c59713          	slli	a4,a1,0x1c
   17bbc:	8fd9                	or	a5,a5,a4
   17bbe:	8191                	srli	a1,a1,0x4
   17bc0:	fed48fa3          	sb	a3,-1(s1)
   17bc4:	00b7e733          	or	a4,a5,a1
   17bc8:	14fd                	addi	s1,s1,-1
   17bca:	f36d                	bnez	a4,17bac <_vfiprintf_r+0x85a>
   17bcc:	199c                	addi	a5,sp,240
   17bce:	40978e33          	sub	t3,a5,s1
   17bd2:	88ee                	mv	a7,s11
   17bd4:	bdcdd0e3          	bge	s11,t3,17794 <_vfiprintf_r+0x442>
   17bd8:	88f2                	mv	a7,t3
   17bda:	be6d                	j	17794 <_vfiprintf_r+0x442>
   17bdc:	636d                	lui	t1,0x1b
   17bde:	4641                	li	a2,16
   17be0:	2c030313          	addi	t1,t1,704 # 1b2c0 <blanks.1>
   17be4:	07d65363          	bge	a2,t4,17c4a <_vfiprintf_r+0x8f8>
   17be8:	c826                	sw	s1,16(sp)
   17bea:	86a2                	mv	a3,s0
   17bec:	4f41                	li	t5,16
   17bee:	439d                	li	t2,7
   17bf0:	c416                	sw	t0,8(sp)
   17bf2:	c67e                	sw	t6,12(sp)
   17bf4:	d042                	sw	a6,32(sp)
   17bf6:	d272                	sw	t3,36(sp)
   17bf8:	8476                	mv	s0,t4
   17bfa:	d446                	sw	a7,40(sp)
   17bfc:	849a                	mv	s1,t1
   17bfe:	a021                	j	17c06 <_vfiprintf_r+0x8b4>
   17c00:	1441                	addi	s0,s0,-16
   17c02:	028f5b63          	bge	t5,s0,17c38 <_vfiprintf_r+0x8e6>
   17c06:	0741                	addi	a4,a4,16
   17c08:	0785                	addi	a5,a5,1
   17c0a:	c284                	sw	s1,0(a3)
   17c0c:	01e6a223          	sw	t5,4(a3)
   17c10:	c4ba                	sw	a4,72(sp)
   17c12:	c2be                	sw	a5,68(sp)
   17c14:	06a1                	addi	a3,a3,8
   17c16:	fef3d5e3          	bge	t2,a5,17c00 <_vfiprintf_r+0x8ae>
   17c1a:	0090                	addi	a2,sp,64
   17c1c:	85d6                	mv	a1,s5
   17c1e:	855e                	mv	a0,s7
   17c20:	892fc0ef          	jal	13cb2 <__sprint_r>
   17c24:	a20511e3          	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17c28:	4f41                	li	t5,16
   17c2a:	1441                	addi	s0,s0,-16
   17c2c:	4726                	lw	a4,72(sp)
   17c2e:	4796                	lw	a5,68(sp)
   17c30:	86e2                	mv	a3,s8
   17c32:	439d                	li	t2,7
   17c34:	fc8f49e3          	blt	t5,s0,17c06 <_vfiprintf_r+0x8b4>
   17c38:	8326                	mv	t1,s1
   17c3a:	42a2                	lw	t0,8(sp)
   17c3c:	4fb2                	lw	t6,12(sp)
   17c3e:	5802                	lw	a6,32(sp)
   17c40:	5e12                	lw	t3,36(sp)
   17c42:	58a2                	lw	a7,40(sp)
   17c44:	44c2                	lw	s1,16(sp)
   17c46:	8ea2                	mv	t4,s0
   17c48:	8436                	mv	s0,a3
   17c4a:	9776                	add	a4,a4,t4
   17c4c:	0785                	addi	a5,a5,1
   17c4e:	00642023          	sw	t1,0(s0)
   17c52:	01d42223          	sw	t4,4(s0)
   17c56:	c4ba                	sw	a4,72(sp)
   17c58:	c2be                	sw	a5,68(sp)
   17c5a:	461d                	li	a2,7
   17c5c:	0421                	addi	s0,s0,8
   17c5e:	86f656e3          	bge	a2,a5,174ca <_vfiprintf_r+0x178>
   17c62:	0090                	addi	a2,sp,64
   17c64:	85d6                	mv	a1,s5
   17c66:	855e                	mv	a0,s7
   17c68:	d246                	sw	a7,36(sp)
   17c6a:	d072                	sw	t3,32(sp)
   17c6c:	c842                	sw	a6,16(sp)
   17c6e:	c67e                	sw	t6,12(sp)
   17c70:	c416                	sw	t0,8(sp)
   17c72:	840fc0ef          	jal	13cb2 <__sprint_r>
   17c76:	9c0518e3          	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17c7a:	4726                	lw	a4,72(sp)
   17c7c:	4796                	lw	a5,68(sp)
   17c7e:	5892                	lw	a7,36(sp)
   17c80:	5e02                	lw	t3,32(sp)
   17c82:	4842                	lw	a6,16(sp)
   17c84:	4fb2                	lw	t6,12(sp)
   17c86:	42a2                	lw	t0,8(sp)
   17c88:	8462                	mv	s0,s8
   17c8a:	841ff06f          	j	174ca <_vfiprintf_r+0x178>
   17c8e:	0090                	addi	a2,sp,64
   17c90:	85d6                	mv	a1,s5
   17c92:	855e                	mv	a0,s7
   17c94:	d046                	sw	a7,32(sp)
   17c96:	c872                	sw	t3,16(sp)
   17c98:	c642                	sw	a6,12(sp)
   17c9a:	c47e                	sw	t6,8(sp)
   17c9c:	816fc0ef          	jal	13cb2 <__sprint_r>
   17ca0:	9a0513e3          	bnez	a0,17646 <_vfiprintf_r+0x2f4>
   17ca4:	4726                	lw	a4,72(sp)
   17ca6:	4796                	lw	a5,68(sp)
   17ca8:	5882                	lw	a7,32(sp)
   17caa:	4e42                	lw	t3,16(sp)
   17cac:	4832                	lw	a6,12(sp)
   17cae:	4fa2                	lw	t6,8(sp)
   17cb0:	8462                	mv	s0,s8
   17cb2:	855ff06f          	j	17506 <_vfiprintf_r+0x1b4>
   17cb6:	010e7713          	andi	a4,t3,16
   17cba:	000d2783          	lw	a5,0(s10)
   17cbe:	0d11                	addi	s10,s10,4
   17cc0:	e719                	bnez	a4,17cce <_vfiprintf_r+0x97c>
   17cc2:	040e7713          	andi	a4,t3,64
   17cc6:	1e070f63          	beqz	a4,17ec4 <_vfiprintf_r+0xb72>
   17cca:	07c2                	slli	a5,a5,0x10
   17ccc:	83c1                	srli	a5,a5,0x10
   17cce:	4881                	li	a7,0
   17cd0:	b951                	j	17964 <_vfiprintf_r+0x612>
   17cd2:	01077613          	andi	a2,a4,16
   17cd6:	000d2783          	lw	a5,0(s10)
   17cda:	0d11                	addi	s10,s10,4
   17cdc:	ee01                	bnez	a2,17cf4 <_vfiprintf_r+0x9a2>
   17cde:	04077613          	andi	a2,a4,64
   17ce2:	c609                	beqz	a2,17cec <_vfiprintf_r+0x99a>
   17ce4:	07c2                	slli	a5,a5,0x10
   17ce6:	83c1                	srli	a5,a5,0x10
   17ce8:	4581                	li	a1,0
   17cea:	bef5                	j	178e6 <_vfiprintf_r+0x594>
   17cec:	20077613          	andi	a2,a4,512
   17cf0:	2a061163          	bnez	a2,17f92 <_vfiprintf_r+0xc40>
   17cf4:	4581                	li	a1,0
   17cf6:	bec5                	j	178e6 <_vfiprintf_r+0x594>
   17cf8:	4881                	li	a7,0
   17cfa:	1984                	addi	s1,sp,240
   17cfc:	bc61                	j	17794 <_vfiprintf_r+0x442>
   17cfe:	000d2783          	lw	a5,0(s10)
   17d02:	41f95713          	srai	a4,s2,0x1f
   17d06:	0d11                	addi	s10,s10,4
   17d08:	0127a023          	sw	s2,0(a5)
   17d0c:	c3d8                	sw	a4,4(a5)
   17d0e:	ef8ff06f          	j	17406 <_vfiprintf_r+0xb4>
   17d12:	88f2                	mv	a7,t3
   17d14:	84aa                	mv	s1,a0
   17d16:	bcbd                	j	17794 <_vfiprintf_r+0x442>
   17d18:	5dfd                	li	s11,-1
   17d1a:	89b6                	mv	s3,a3
   17d1c:	f4cff06f          	j	17468 <_vfiprintf_r+0x116>
   17d20:	8e42                	mv	t3,a6
   17d22:	b12d                	j	1794c <_vfiprintf_r+0x5fa>
   17d24:	8742                	mv	a4,a6
   17d26:	b665                	j	178ce <_vfiprintf_r+0x57c>
   17d28:	67ed                	lui	a5,0x1b
   17d2a:	b8c78793          	addi	a5,a5,-1140 # 1ab8c <__clzsi2+0x11e>
   17d2e:	c23e                	sw	a5,4(sp)
   17d30:	02087793          	andi	a5,a6,32
   17d34:	c3a9                	beqz	a5,17d76 <_vfiprintf_r+0xa24>
   17d36:	0d1d                	addi	s10,s10,7
   17d38:	ff8d7d13          	andi	s10,s10,-8
   17d3c:	000d2783          	lw	a5,0(s10)
   17d40:	004d2583          	lw	a1,4(s10)
   17d44:	0d21                	addi	s10,s10,8
   17d46:	00187713          	andi	a4,a6,1
   17d4a:	cf01                	beqz	a4,17d62 <_vfiprintf_r+0xa10>
   17d4c:	00b7e733          	or	a4,a5,a1
   17d50:	cb09                	beqz	a4,17d62 <_vfiprintf_r+0xa10>
   17d52:	03000713          	li	a4,48
   17d56:	02e10e23          	sb	a4,60(sp)
   17d5a:	02c10ea3          	sb	a2,61(sp)
   17d5e:	00286813          	ori	a6,a6,2
   17d62:	bff87813          	andi	a6,a6,-1025
   17d66:	b941                	j	179f6 <_vfiprintf_r+0x6a4>
   17d68:	67ed                	lui	a5,0x1b
   17d6a:	b7878793          	addi	a5,a5,-1160 # 1ab78 <__clzsi2+0x10a>
   17d6e:	c23e                	sw	a5,4(sp)
   17d70:	02087793          	andi	a5,a6,32
   17d74:	f3e9                	bnez	a5,17d36 <_vfiprintf_r+0x9e4>
   17d76:	01087713          	andi	a4,a6,16
   17d7a:	000d2783          	lw	a5,0(s10)
   17d7e:	0d11                	addi	s10,s10,4
   17d80:	e315                	bnez	a4,17da4 <_vfiprintf_r+0xa52>
   17d82:	04087713          	andi	a4,a6,64
   17d86:	cb19                	beqz	a4,17d9c <_vfiprintf_r+0xa4a>
   17d88:	07c2                	slli	a5,a5,0x10
   17d8a:	83c1                	srli	a5,a5,0x10
   17d8c:	4581                	li	a1,0
   17d8e:	bf65                	j	17d46 <_vfiprintf_r+0x9f4>
   17d90:	8526                	mv	a0,s1
   17d92:	903f90ef          	jal	11694 <strlen>
   17d96:	4822                	lw	a6,8(sp)
   17d98:	8e2a                	mv	t3,a0
   17d9a:	b435                	j	177c6 <_vfiprintf_r+0x474>
   17d9c:	20087713          	andi	a4,a6,512
   17da0:	1c071763          	bnez	a4,17f6e <_vfiprintf_r+0xc1c>
   17da4:	4581                	li	a1,0
   17da6:	b745                	j	17d46 <_vfiprintf_r+0x9f4>
   17da8:	ccccdf37          	lui	t5,0xccccd
   17dac:	ccccdfb7          	lui	t6,0xccccd
   17db0:	42d2                	lw	t0,20(sp)
   17db2:	40087e13          	andi	t3,a6,1024
   17db6:	4581                	li	a1,0
   17db8:	1988                	addi	a0,sp,240
   17dba:	4315                	li	t1,5
   17dbc:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccafea1>
   17dc0:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccafea0>
   17dc4:	0ff00e93          	li	t4,255
   17dc8:	a081                	j	17e08 <_vfiprintf_r+0xab6>
   17dca:	00f4b733          	sltu	a4,s1,a5
   17dce:	9726                	add	a4,a4,s1
   17dd0:	02677733          	remu	a4,a4,t1
   17dd4:	40e78733          	sub	a4,a5,a4
   17dd8:	00e7b633          	sltu	a2,a5,a4
   17ddc:	40c88633          	sub	a2,a7,a2
   17de0:	03f703b3          	mul	t2,a4,t6
   17de4:	03e60633          	mul	a2,a2,t5
   17de8:	03e73533          	mulhu	a0,a4,t5
   17dec:	961e                	add	a2,a2,t2
   17dee:	03e70733          	mul	a4,a4,t5
   17df2:	962a                	add	a2,a2,a0
   17df4:	01f61513          	slli	a0,a2,0x1f
   17df8:	8205                	srli	a2,a2,0x1
   17dfa:	8305                	srli	a4,a4,0x1
   17dfc:	8f49                	or	a4,a4,a0
   17dfe:	16088263          	beqz	a7,17f62 <_vfiprintf_r+0xc10>
   17e02:	87ba                	mv	a5,a4
   17e04:	88b2                	mv	a7,a2
   17e06:	8536                	mv	a0,a3
   17e08:	011784b3          	add	s1,a5,a7
   17e0c:	00f4b733          	sltu	a4,s1,a5
   17e10:	9726                	add	a4,a4,s1
   17e12:	02677733          	remu	a4,a4,t1
   17e16:	fff50693          	addi	a3,a0,-1
   17e1a:	0585                	addi	a1,a1,1
   17e1c:	40e78733          	sub	a4,a5,a4
   17e20:	00e7b3b3          	sltu	t2,a5,a4
   17e24:	407883b3          	sub	t2,a7,t2
   17e28:	03e73633          	mulhu	a2,a4,t5
   17e2c:	03e383b3          	mul	t2,t2,t5
   17e30:	03e70733          	mul	a4,a4,t5
   17e34:	93b2                	add	t2,t2,a2
   17e36:	03fe                	slli	t2,t2,0x1f
   17e38:	00175613          	srli	a2,a4,0x1
   17e3c:	00c3e633          	or	a2,t2,a2
   17e40:	00261713          	slli	a4,a2,0x2
   17e44:	9732                	add	a4,a4,a2
   17e46:	0706                	slli	a4,a4,0x1
   17e48:	40e78733          	sub	a4,a5,a4
   17e4c:	03070713          	addi	a4,a4,48
   17e50:	fee50fa3          	sb	a4,-1(a0)
   17e54:	f60e0be3          	beqz	t3,17dca <_vfiprintf_r+0xa78>
   17e58:	0002c703          	lbu	a4,0(t0)
   17e5c:	f6b717e3          	bne	a4,a1,17dca <_vfiprintf_r+0xa78>
   17e60:	f7d585e3          	beq	a1,t4,17dca <_vfiprintf_r+0xa78>
   17e64:	06089b63          	bnez	a7,17eda <_vfiprintf_r+0xb88>
   17e68:	4725                	li	a4,9
   17e6a:	06f76863          	bltu	a4,a5,17eda <_vfiprintf_r+0xb88>
   17e6e:	84b6                	mv	s1,a3
   17e70:	ca16                	sw	t0,20(sp)
   17e72:	bba9                	j	17bcc <_vfiprintf_r+0x87a>
   17e74:	883a                	mv	a6,a4
   17e76:	4701                	li	a4,0
   17e78:	b0070ce3          	beqz	a4,17990 <_vfiprintf_r+0x63e>
   17e7c:	b335                	j	17ba8 <_vfiprintf_r+0x856>
   17e7e:	9ecf90ef          	jal	1106a <__sinit>
   17e82:	cfaff06f          	j	1737c <_vfiprintf_r+0x2a>
   17e86:	0019c783          	lbu	a5,1(s3)
   17e8a:	20086813          	ori	a6,a6,512
   17e8e:	0985                	addi	s3,s3,1
   17e90:	dd4ff06f          	j	17464 <_vfiprintf_r+0x112>
   17e94:	0019c783          	lbu	a5,1(s3)
   17e98:	02086813          	ori	a6,a6,32
   17e9c:	0985                	addi	s3,s3,1
   17e9e:	dc6ff06f          	j	17464 <_vfiprintf_r+0x112>
   17ea2:	000d2783          	lw	a5,0(s10)
   17ea6:	0d11                	addi	s10,s10,4
   17ea8:	0127a023          	sw	s2,0(a5)
   17eac:	d5aff06f          	j	17406 <_vfiprintf_r+0xb4>
   17eb0:	4799                	li	a5,6
   17eb2:	8e6e                	mv	t3,s11
   17eb4:	0bb7eb63          	bltu	a5,s11,17f6a <_vfiprintf_r+0xc18>
   17eb8:	64ed                	lui	s1,0x1b
   17eba:	88f2                	mv	a7,t3
   17ebc:	ba048493          	addi	s1,s1,-1120 # 1aba0 <__clzsi2+0x132>
   17ec0:	df2ff06f          	j	174b2 <_vfiprintf_r+0x160>
   17ec4:	200e7713          	andi	a4,t3,512
   17ec8:	e00703e3          	beqz	a4,17cce <_vfiprintf_r+0x97c>
   17ecc:	0ff7f793          	zext.b	a5,a5
   17ed0:	4881                	li	a7,0
   17ed2:	bc49                	j	17964 <_vfiprintf_r+0x612>
   17ed4:	4781                	li	a5,0
   17ed6:	4581                	li	a1,0
   17ed8:	b9c1                	j	17ba8 <_vfiprintf_r+0x856>
   17eda:	d43e                	sw	a5,40(sp)
   17edc:	47e2                	lw	a5,24(sp)
   17ede:	45f2                	lw	a1,28(sp)
   17ee0:	d646                	sw	a7,44(sp)
   17ee2:	8e9d                	sub	a3,a3,a5
   17ee4:	863e                	mv	a2,a5
   17ee6:	8536                	mv	a0,a3
   17ee8:	d27e                	sw	t6,36(sp)
   17eea:	d07a                	sw	t5,32(sp)
   17eec:	ca72                	sw	t3,20(sp)
   17eee:	c842                	sw	a6,16(sp)
   17ef0:	c616                	sw	t0,12(sp)
   17ef2:	c436                	sw	a3,8(sp)
   17ef4:	f18fc0ef          	jal	1460c <strncpy>
   17ef8:	57a2                	lw	a5,40(sp)
   17efa:	4615                	li	a2,5
   17efc:	42b2                	lw	t0,12(sp)
   17efe:	00f4b733          	sltu	a4,s1,a5
   17f02:	9726                	add	a4,a4,s1
   17f04:	02c77733          	remu	a4,a4,a2
   17f08:	0012c603          	lbu	a2,1(t0)
   17f0c:	58b2                	lw	a7,44(sp)
   17f0e:	ccccd537          	lui	a0,0xccccd
   17f12:	00c03633          	snez	a2,a2
   17f16:	ccccd3b7          	lui	t2,0xccccd
   17f1a:	92b2                	add	t0,t0,a2
   17f1c:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccafea1>
   17f20:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccafea0>
   17f24:	46a2                	lw	a3,8(sp)
   17f26:	4842                	lw	a6,16(sp)
   17f28:	4e52                	lw	t3,20(sp)
   17f2a:	5f02                	lw	t5,32(sp)
   17f2c:	5f92                	lw	t6,36(sp)
   17f2e:	4581                	li	a1,0
   17f30:	4315                	li	t1,5
   17f32:	0ff00e93          	li	t4,255
   17f36:	40e78733          	sub	a4,a5,a4
   17f3a:	00e7b633          	sltu	a2,a5,a4
   17f3e:	40c88633          	sub	a2,a7,a2
   17f42:	027703b3          	mul	t2,a4,t2
   17f46:	02a60633          	mul	a2,a2,a0
   17f4a:	02a738b3          	mulhu	a7,a4,a0
   17f4e:	961e                	add	a2,a2,t2
   17f50:	02a707b3          	mul	a5,a4,a0
   17f54:	9646                	add	a2,a2,a7
   17f56:	01f61713          	slli	a4,a2,0x1f
   17f5a:	8205                	srli	a2,a2,0x1
   17f5c:	8385                	srli	a5,a5,0x1
   17f5e:	8f5d                	or	a4,a4,a5
   17f60:	b54d                	j	17e02 <_vfiprintf_r+0xab0>
   17f62:	4525                	li	a0,9
   17f64:	e8f56fe3          	bltu	a0,a5,17e02 <_vfiprintf_r+0xab0>
   17f68:	b719                	j	17e6e <_vfiprintf_r+0xb1c>
   17f6a:	4e19                	li	t3,6
   17f6c:	b7b1                	j	17eb8 <_vfiprintf_r+0xb66>
   17f6e:	0ff7f793          	zext.b	a5,a5
   17f72:	4581                	li	a1,0
   17f74:	bbc9                	j	17d46 <_vfiprintf_r+0x9f4>
   17f76:	07e2                	slli	a5,a5,0x18
   17f78:	87e1                	srai	a5,a5,0x18
   17f7a:	41f7d893          	srai	a7,a5,0x1f
   17f7e:	8746                	mv	a4,a7
   17f80:	e20ff06f          	j	175a0 <_vfiprintf_r+0x24e>
   17f84:	000d2783          	lw	a5,0(s10)
   17f88:	0d11                	addi	s10,s10,4
   17f8a:	01279023          	sh	s2,0(a5)
   17f8e:	c78ff06f          	j	17406 <_vfiprintf_r+0xb4>
   17f92:	0ff7f793          	zext.b	a5,a5
   17f96:	4581                	li	a1,0
   17f98:	b2b9                	j	178e6 <_vfiprintf_r+0x594>
   17f9a:	03000793          	li	a5,48
   17f9e:	fe4ff06f          	j	17782 <_vfiprintf_r+0x430>
   17fa2:	5d7d                	li	s10,-1
   17fa4:	ecaff06f          	j	1766e <_vfiprintf_r+0x31c>
   17fa8:	000d2d83          	lw	s11,0(s10)
   17fac:	0d11                	addi	s10,s10,4
   17fae:	000dd363          	bgez	s11,17fb4 <_vfiprintf_r+0xc62>
   17fb2:	5dfd                	li	s11,-1
   17fb4:	0019c783          	lbu	a5,1(s3)
   17fb8:	89b6                	mv	s3,a3
   17fba:	caaff06f          	j	17464 <_vfiprintf_r+0x112>

00017fbe <vfiprintf>:
   17fbe:	87aa                	mv	a5,a0
   17fc0:	f141a503          	lw	a0,-236(gp) # 1caf4 <_impure_ptr>
   17fc4:	86b2                	mv	a3,a2
   17fc6:	862e                	mv	a2,a1
   17fc8:	85be                	mv	a1,a5
   17fca:	b88ff06f          	j	17352 <_vfiprintf_r>

00017fce <__sbprintf>:
   17fce:	b8010113          	addi	sp,sp,-1152
   17fd2:	00c59783          	lh	a5,12(a1)
   17fd6:	00e5d703          	lhu	a4,14(a1)
   17fda:	46812c23          	sw	s0,1144(sp)
   17fde:	842e                	mv	s0,a1
   17fe0:	65c1                	lui	a1,0x10
   17fe2:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   17fe4:	06442e03          	lw	t3,100(s0)
   17fe8:	01c42303          	lw	t1,28(s0)
   17fec:	02442883          	lw	a7,36(s0)
   17ff0:	0742                	slli	a4,a4,0x10
   17ff2:	8fed                	and	a5,a5,a1
   17ff4:	8fd9                	or	a5,a5,a4
   17ff6:	40000813          	li	a6,1024
   17ffa:	ca3e                	sw	a5,20(sp)
   17ffc:	002c                	addi	a1,sp,8
   17ffe:	189c                	addi	a5,sp,112
   18000:	46912a23          	sw	s1,1140(sp)
   18004:	47212823          	sw	s2,1136(sp)
   18008:	46112e23          	sw	ra,1148(sp)
   1800c:	892a                	mv	s2,a0
   1800e:	d6f2                	sw	t3,108(sp)
   18010:	d21a                	sw	t1,36(sp)
   18012:	d646                	sw	a7,44(sp)
   18014:	c43e                	sw	a5,8(sp)
   18016:	cc3e                	sw	a5,24(sp)
   18018:	c842                	sw	a6,16(sp)
   1801a:	ce42                	sw	a6,28(sp)
   1801c:	d002                	sw	zero,32(sp)
   1801e:	b34ff0ef          	jal	17352 <_vfiprintf_r>
   18022:	84aa                	mv	s1,a0
   18024:	02055963          	bgez	a0,18056 <__sbprintf+0x88>
   18028:	01415783          	lhu	a5,20(sp)
   1802c:	0407f793          	andi	a5,a5,64
   18030:	c799                	beqz	a5,1803e <__sbprintf+0x70>
   18032:	00c45783          	lhu	a5,12(s0)
   18036:	0407e793          	ori	a5,a5,64
   1803a:	00f41623          	sh	a5,12(s0)
   1803e:	47c12083          	lw	ra,1148(sp)
   18042:	47812403          	lw	s0,1144(sp)
   18046:	47012903          	lw	s2,1136(sp)
   1804a:	8526                	mv	a0,s1
   1804c:	47412483          	lw	s1,1140(sp)
   18050:	48010113          	addi	sp,sp,1152
   18054:	8082                	ret
   18056:	002c                	addi	a1,sp,8
   18058:	854a                	mv	a0,s2
   1805a:	ec7fb0ef          	jal	13f20 <_fflush_r>
   1805e:	d569                	beqz	a0,18028 <__sbprintf+0x5a>
   18060:	54fd                	li	s1,-1
   18062:	b7d9                	j	18028 <__sbprintf+0x5a>

00018064 <__errno>:
   18064:	f141a503          	lw	a0,-236(gp) # 1caf4 <_impure_ptr>
   18068:	8082                	ret

0001806a <abort>:
   1806a:	1141                	addi	sp,sp,-16
   1806c:	4519                	li	a0,6
   1806e:	c606                	sw	ra,12(sp)
   18070:	2a59                	jal	18206 <raise>
   18072:	4505                	li	a0,1
   18074:	2e61                	jal	1840c <_exit>

00018076 <_init_signal_r>:
   18076:	11852783          	lw	a5,280(a0)
   1807a:	c399                	beqz	a5,18080 <_init_signal_r+0xa>
   1807c:	4501                	li	a0,0
   1807e:	8082                	ret
   18080:	1141                	addi	sp,sp,-16
   18082:	08000593          	li	a1,128
   18086:	c422                	sw	s0,8(sp)
   18088:	c606                	sw	ra,12(sp)
   1808a:	842a                	mv	s0,a0
   1808c:	a35f90ef          	jal	11ac0 <_malloc_r>
   18090:	10a42c23          	sw	a0,280(s0)
   18094:	cd09                	beqz	a0,180ae <_init_signal_r+0x38>
   18096:	08050793          	addi	a5,a0,128
   1809a:	00052023          	sw	zero,0(a0)
   1809e:	0511                	addi	a0,a0,4
   180a0:	fef51de3          	bne	a0,a5,1809a <_init_signal_r+0x24>
   180a4:	4501                	li	a0,0
   180a6:	40b2                	lw	ra,12(sp)
   180a8:	4422                	lw	s0,8(sp)
   180aa:	0141                	addi	sp,sp,16
   180ac:	8082                	ret
   180ae:	557d                	li	a0,-1
   180b0:	bfdd                	j	180a6 <_init_signal_r+0x30>

000180b2 <_signal_r>:
   180b2:	1101                	addi	sp,sp,-32
   180b4:	ca26                	sw	s1,20(sp)
   180b6:	ce06                	sw	ra,28(sp)
   180b8:	47fd                	li	a5,31
   180ba:	84aa                	mv	s1,a0
   180bc:	02b7e063          	bltu	a5,a1,180dc <_signal_r+0x2a>
   180c0:	11852783          	lw	a5,280(a0)
   180c4:	cc22                	sw	s0,24(sp)
   180c6:	842e                	mv	s0,a1
   180c8:	cf91                	beqz	a5,180e4 <_signal_r+0x32>
   180ca:	040a                	slli	s0,s0,0x2
   180cc:	97a2                	add	a5,a5,s0
   180ce:	4462                	lw	s0,24(sp)
   180d0:	4388                	lw	a0,0(a5)
   180d2:	c390                	sw	a2,0(a5)
   180d4:	40f2                	lw	ra,28(sp)
   180d6:	44d2                	lw	s1,20(sp)
   180d8:	6105                	addi	sp,sp,32
   180da:	8082                	ret
   180dc:	47d9                	li	a5,22
   180de:	c11c                	sw	a5,0(a0)
   180e0:	557d                	li	a0,-1
   180e2:	bfcd                	j	180d4 <_signal_r+0x22>
   180e4:	08000593          	li	a1,128
   180e8:	c632                	sw	a2,12(sp)
   180ea:	9d7f90ef          	jal	11ac0 <_malloc_r>
   180ee:	10a4ac23          	sw	a0,280(s1)
   180f2:	4632                	lw	a2,12(sp)
   180f4:	87aa                	mv	a5,a0
   180f6:	872a                	mv	a4,a0
   180f8:	08050693          	addi	a3,a0,128
   180fc:	c519                	beqz	a0,1810a <_signal_r+0x58>
   180fe:	00072023          	sw	zero,0(a4)
   18102:	0711                	addi	a4,a4,4
   18104:	fed71de3          	bne	a4,a3,180fe <_signal_r+0x4c>
   18108:	b7c9                	j	180ca <_signal_r+0x18>
   1810a:	4462                	lw	s0,24(sp)
   1810c:	557d                	li	a0,-1
   1810e:	b7d9                	j	180d4 <_signal_r+0x22>

00018110 <_raise_r>:
   18110:	1141                	addi	sp,sp,-16
   18112:	c226                	sw	s1,4(sp)
   18114:	c606                	sw	ra,12(sp)
   18116:	47fd                	li	a5,31
   18118:	84aa                	mv	s1,a0
   1811a:	04b7ee63          	bltu	a5,a1,18176 <_raise_r+0x66>
   1811e:	11852783          	lw	a5,280(a0)
   18122:	c422                	sw	s0,8(sp)
   18124:	842e                	mv	s0,a1
   18126:	c795                	beqz	a5,18152 <_raise_r+0x42>
   18128:	00259713          	slli	a4,a1,0x2
   1812c:	97ba                	add	a5,a5,a4
   1812e:	4398                	lw	a4,0(a5)
   18130:	c30d                	beqz	a4,18152 <_raise_r+0x42>
   18132:	4685                	li	a3,1
   18134:	00d70963          	beq	a4,a3,18146 <_raise_r+0x36>
   18138:	56fd                	li	a3,-1
   1813a:	02d70663          	beq	a4,a3,18166 <_raise_r+0x56>
   1813e:	0007a023          	sw	zero,0(a5)
   18142:	852e                	mv	a0,a1
   18144:	9702                	jalr	a4
   18146:	4422                	lw	s0,8(sp)
   18148:	4501                	li	a0,0
   1814a:	40b2                	lw	ra,12(sp)
   1814c:	4492                	lw	s1,4(sp)
   1814e:	0141                	addi	sp,sp,16
   18150:	8082                	ret
   18152:	8526                	mv	a0,s1
   18154:	2469                	jal	183de <_getpid_r>
   18156:	8622                	mv	a2,s0
   18158:	4422                	lw	s0,8(sp)
   1815a:	40b2                	lw	ra,12(sp)
   1815c:	85aa                	mv	a1,a0
   1815e:	8526                	mv	a0,s1
   18160:	4492                	lw	s1,4(sp)
   18162:	0141                	addi	sp,sp,16
   18164:	a489                	j	183a6 <_kill_r>
   18166:	4422                	lw	s0,8(sp)
   18168:	40b2                	lw	ra,12(sp)
   1816a:	47d9                	li	a5,22
   1816c:	c11c                	sw	a5,0(a0)
   1816e:	4492                	lw	s1,4(sp)
   18170:	4505                	li	a0,1
   18172:	0141                	addi	sp,sp,16
   18174:	8082                	ret
   18176:	47d9                	li	a5,22
   18178:	c11c                	sw	a5,0(a0)
   1817a:	557d                	li	a0,-1
   1817c:	b7f9                	j	1814a <_raise_r+0x3a>

0001817e <__sigtramp_r>:
   1817e:	47fd                	li	a5,31
   18180:	08b7e163          	bltu	a5,a1,18202 <__sigtramp_r+0x84>
   18184:	11852783          	lw	a5,280(a0)
   18188:	1141                	addi	sp,sp,-16
   1818a:	c422                	sw	s0,8(sp)
   1818c:	c226                	sw	s1,4(sp)
   1818e:	c606                	sw	ra,12(sp)
   18190:	842e                	mv	s0,a1
   18192:	84aa                	mv	s1,a0
   18194:	c7a1                	beqz	a5,181dc <__sigtramp_r+0x5e>
   18196:	00241713          	slli	a4,s0,0x2
   1819a:	97ba                	add	a5,a5,a4
   1819c:	4398                	lw	a4,0(a5)
   1819e:	c30d                	beqz	a4,181c0 <__sigtramp_r+0x42>
   181a0:	56fd                	li	a3,-1
   181a2:	02d70b63          	beq	a4,a3,181d8 <__sigtramp_r+0x5a>
   181a6:	4685                	li	a3,1
   181a8:	02d70263          	beq	a4,a3,181cc <__sigtramp_r+0x4e>
   181ac:	8522                	mv	a0,s0
   181ae:	0007a023          	sw	zero,0(a5)
   181b2:	9702                	jalr	a4
   181b4:	4501                	li	a0,0
   181b6:	40b2                	lw	ra,12(sp)
   181b8:	4422                	lw	s0,8(sp)
   181ba:	4492                	lw	s1,4(sp)
   181bc:	0141                	addi	sp,sp,16
   181be:	8082                	ret
   181c0:	40b2                	lw	ra,12(sp)
   181c2:	4422                	lw	s0,8(sp)
   181c4:	4492                	lw	s1,4(sp)
   181c6:	4505                	li	a0,1
   181c8:	0141                	addi	sp,sp,16
   181ca:	8082                	ret
   181cc:	40b2                	lw	ra,12(sp)
   181ce:	4422                	lw	s0,8(sp)
   181d0:	4492                	lw	s1,4(sp)
   181d2:	450d                	li	a0,3
   181d4:	0141                	addi	sp,sp,16
   181d6:	8082                	ret
   181d8:	4509                	li	a0,2
   181da:	bff1                	j	181b6 <__sigtramp_r+0x38>
   181dc:	08000593          	li	a1,128
   181e0:	8e1f90ef          	jal	11ac0 <_malloc_r>
   181e4:	10a4ac23          	sw	a0,280(s1)
   181e8:	87aa                	mv	a5,a0
   181ea:	c911                	beqz	a0,181fe <__sigtramp_r+0x80>
   181ec:	872a                	mv	a4,a0
   181ee:	08050693          	addi	a3,a0,128
   181f2:	00072023          	sw	zero,0(a4)
   181f6:	0711                	addi	a4,a4,4
   181f8:	fed71de3          	bne	a4,a3,181f2 <__sigtramp_r+0x74>
   181fc:	bf69                	j	18196 <__sigtramp_r+0x18>
   181fe:	557d                	li	a0,-1
   18200:	bf5d                	j	181b6 <__sigtramp_r+0x38>
   18202:	557d                	li	a0,-1
   18204:	8082                	ret

00018206 <raise>:
   18206:	1141                	addi	sp,sp,-16
   18208:	c226                	sw	s1,4(sp)
   1820a:	c606                	sw	ra,12(sp)
   1820c:	47fd                	li	a5,31
   1820e:	f141a483          	lw	s1,-236(gp) # 1caf4 <_impure_ptr>
   18212:	04a7ed63          	bltu	a5,a0,1826c <raise+0x66>
   18216:	1184a783          	lw	a5,280(s1)
   1821a:	c422                	sw	s0,8(sp)
   1821c:	842a                	mv	s0,a0
   1821e:	c78d                	beqz	a5,18248 <raise+0x42>
   18220:	00251713          	slli	a4,a0,0x2
   18224:	97ba                	add	a5,a5,a4
   18226:	4398                	lw	a4,0(a5)
   18228:	c305                	beqz	a4,18248 <raise+0x42>
   1822a:	4685                	li	a3,1
   1822c:	00d70863          	beq	a4,a3,1823c <raise+0x36>
   18230:	56fd                	li	a3,-1
   18232:	02d70563          	beq	a4,a3,1825c <raise+0x56>
   18236:	0007a023          	sw	zero,0(a5)
   1823a:	9702                	jalr	a4
   1823c:	4422                	lw	s0,8(sp)
   1823e:	4501                	li	a0,0
   18240:	40b2                	lw	ra,12(sp)
   18242:	4492                	lw	s1,4(sp)
   18244:	0141                	addi	sp,sp,16
   18246:	8082                	ret
   18248:	8526                	mv	a0,s1
   1824a:	2a51                	jal	183de <_getpid_r>
   1824c:	8622                	mv	a2,s0
   1824e:	4422                	lw	s0,8(sp)
   18250:	40b2                	lw	ra,12(sp)
   18252:	85aa                	mv	a1,a0
   18254:	8526                	mv	a0,s1
   18256:	4492                	lw	s1,4(sp)
   18258:	0141                	addi	sp,sp,16
   1825a:	a2b1                	j	183a6 <_kill_r>
   1825c:	4422                	lw	s0,8(sp)
   1825e:	40b2                	lw	ra,12(sp)
   18260:	47d9                	li	a5,22
   18262:	c09c                	sw	a5,0(s1)
   18264:	4505                	li	a0,1
   18266:	4492                	lw	s1,4(sp)
   18268:	0141                	addi	sp,sp,16
   1826a:	8082                	ret
   1826c:	47d9                	li	a5,22
   1826e:	c09c                	sw	a5,0(s1)
   18270:	557d                	li	a0,-1
   18272:	b7f9                	j	18240 <raise+0x3a>

00018274 <signal>:
   18274:	1141                	addi	sp,sp,-16
   18276:	c04a                	sw	s2,0(sp)
   18278:	c606                	sw	ra,12(sp)
   1827a:	47fd                	li	a5,31
   1827c:	f141a903          	lw	s2,-236(gp) # 1caf4 <_impure_ptr>
   18280:	02a7e463          	bltu	a5,a0,182a8 <signal+0x34>
   18284:	c422                	sw	s0,8(sp)
   18286:	842a                	mv	s0,a0
   18288:	11892503          	lw	a0,280(s2)
   1828c:	c226                	sw	s1,4(sp)
   1828e:	84ae                	mv	s1,a1
   18290:	c10d                	beqz	a0,182b2 <signal+0x3e>
   18292:	040a                	slli	s0,s0,0x2
   18294:	008507b3          	add	a5,a0,s0
   18298:	4388                	lw	a0,0(a5)
   1829a:	4422                	lw	s0,8(sp)
   1829c:	c384                	sw	s1,0(a5)
   1829e:	4492                	lw	s1,4(sp)
   182a0:	40b2                	lw	ra,12(sp)
   182a2:	4902                	lw	s2,0(sp)
   182a4:	0141                	addi	sp,sp,16
   182a6:	8082                	ret
   182a8:	47d9                	li	a5,22
   182aa:	00f92023          	sw	a5,0(s2)
   182ae:	557d                	li	a0,-1
   182b0:	bfc5                	j	182a0 <signal+0x2c>
   182b2:	08000593          	li	a1,128
   182b6:	854a                	mv	a0,s2
   182b8:	809f90ef          	jal	11ac0 <_malloc_r>
   182bc:	10a92c23          	sw	a0,280(s2)
   182c0:	87aa                	mv	a5,a0
   182c2:	08050713          	addi	a4,a0,128
   182c6:	c519                	beqz	a0,182d4 <signal+0x60>
   182c8:	0007a023          	sw	zero,0(a5)
   182cc:	0791                	addi	a5,a5,4
   182ce:	fef71de3          	bne	a4,a5,182c8 <signal+0x54>
   182d2:	b7c1                	j	18292 <signal+0x1e>
   182d4:	4422                	lw	s0,8(sp)
   182d6:	4492                	lw	s1,4(sp)
   182d8:	557d                	li	a0,-1
   182da:	b7d9                	j	182a0 <signal+0x2c>

000182dc <_init_signal>:
   182dc:	1141                	addi	sp,sp,-16
   182de:	c422                	sw	s0,8(sp)
   182e0:	f141a403          	lw	s0,-236(gp) # 1caf4 <_impure_ptr>
   182e4:	c606                	sw	ra,12(sp)
   182e6:	11842783          	lw	a5,280(s0)
   182ea:	c791                	beqz	a5,182f6 <_init_signal+0x1a>
   182ec:	4501                	li	a0,0
   182ee:	40b2                	lw	ra,12(sp)
   182f0:	4422                	lw	s0,8(sp)
   182f2:	0141                	addi	sp,sp,16
   182f4:	8082                	ret
   182f6:	08000593          	li	a1,128
   182fa:	8522                	mv	a0,s0
   182fc:	fc4f90ef          	jal	11ac0 <_malloc_r>
   18300:	10a42c23          	sw	a0,280(s0)
   18304:	c909                	beqz	a0,18316 <_init_signal+0x3a>
   18306:	08050793          	addi	a5,a0,128
   1830a:	00052023          	sw	zero,0(a0)
   1830e:	0511                	addi	a0,a0,4
   18310:	fef51de3          	bne	a0,a5,1830a <_init_signal+0x2e>
   18314:	bfe1                	j	182ec <_init_signal+0x10>
   18316:	557d                	li	a0,-1
   18318:	bfd9                	j	182ee <_init_signal+0x12>

0001831a <__sigtramp>:
   1831a:	1141                	addi	sp,sp,-16
   1831c:	c226                	sw	s1,4(sp)
   1831e:	c606                	sw	ra,12(sp)
   18320:	47fd                	li	a5,31
   18322:	f141a483          	lw	s1,-236(gp) # 1caf4 <_impure_ptr>
   18326:	06a7ee63          	bltu	a5,a0,183a2 <__sigtramp+0x88>
   1832a:	1184a783          	lw	a5,280(s1)
   1832e:	c422                	sw	s0,8(sp)
   18330:	842a                	mv	s0,a0
   18332:	c7a9                	beqz	a5,1837c <__sigtramp+0x62>
   18334:	00241713          	slli	a4,s0,0x2
   18338:	97ba                	add	a5,a5,a4
   1833a:	4398                	lw	a4,0(a5)
   1833c:	c30d                	beqz	a4,1835e <__sigtramp+0x44>
   1833e:	56fd                	li	a3,-1
   18340:	02d70b63          	beq	a4,a3,18376 <__sigtramp+0x5c>
   18344:	4685                	li	a3,1
   18346:	02d70263          	beq	a4,a3,1836a <__sigtramp+0x50>
   1834a:	8522                	mv	a0,s0
   1834c:	0007a023          	sw	zero,0(a5)
   18350:	9702                	jalr	a4
   18352:	4422                	lw	s0,8(sp)
   18354:	4501                	li	a0,0
   18356:	40b2                	lw	ra,12(sp)
   18358:	4492                	lw	s1,4(sp)
   1835a:	0141                	addi	sp,sp,16
   1835c:	8082                	ret
   1835e:	4422                	lw	s0,8(sp)
   18360:	40b2                	lw	ra,12(sp)
   18362:	4492                	lw	s1,4(sp)
   18364:	4505                	li	a0,1
   18366:	0141                	addi	sp,sp,16
   18368:	8082                	ret
   1836a:	4422                	lw	s0,8(sp)
   1836c:	40b2                	lw	ra,12(sp)
   1836e:	4492                	lw	s1,4(sp)
   18370:	450d                	li	a0,3
   18372:	0141                	addi	sp,sp,16
   18374:	8082                	ret
   18376:	4422                	lw	s0,8(sp)
   18378:	4509                	li	a0,2
   1837a:	bff1                	j	18356 <__sigtramp+0x3c>
   1837c:	08000593          	li	a1,128
   18380:	8526                	mv	a0,s1
   18382:	f3ef90ef          	jal	11ac0 <_malloc_r>
   18386:	10a4ac23          	sw	a0,280(s1)
   1838a:	87aa                	mv	a5,a0
   1838c:	c911                	beqz	a0,183a0 <__sigtramp+0x86>
   1838e:	872a                	mv	a4,a0
   18390:	08050693          	addi	a3,a0,128
   18394:	00072023          	sw	zero,0(a4)
   18398:	0711                	addi	a4,a4,4
   1839a:	fee69de3          	bne	a3,a4,18394 <__sigtramp+0x7a>
   1839e:	bf59                	j	18334 <__sigtramp+0x1a>
   183a0:	4422                	lw	s0,8(sp)
   183a2:	557d                	li	a0,-1
   183a4:	bf4d                	j	18356 <__sigtramp+0x3c>

000183a6 <_kill_r>:
   183a6:	1141                	addi	sp,sp,-16
   183a8:	872e                	mv	a4,a1
   183aa:	c422                	sw	s0,8(sp)
   183ac:	c226                	sw	s1,4(sp)
   183ae:	842a                	mv	s0,a0
   183b0:	85b2                	mv	a1,a2
   183b2:	853a                	mv	a0,a4
   183b4:	c606                	sw	ra,12(sp)
   183b6:	f201a223          	sw	zero,-220(gp) # 1cb04 <errno>
   183ba:	28d9                	jal	18490 <_kill>
   183bc:	57fd                	li	a5,-1
   183be:	00f50763          	beq	a0,a5,183cc <_kill_r+0x26>
   183c2:	40b2                	lw	ra,12(sp)
   183c4:	4422                	lw	s0,8(sp)
   183c6:	4492                	lw	s1,4(sp)
   183c8:	0141                	addi	sp,sp,16
   183ca:	8082                	ret
   183cc:	f241a783          	lw	a5,-220(gp) # 1cb04 <errno>
   183d0:	dbed                	beqz	a5,183c2 <_kill_r+0x1c>
   183d2:	40b2                	lw	ra,12(sp)
   183d4:	c01c                	sw	a5,0(s0)
   183d6:	4422                	lw	s0,8(sp)
   183d8:	4492                	lw	s1,4(sp)
   183da:	0141                	addi	sp,sp,16
   183dc:	8082                	ret

000183de <_getpid_r>:
   183de:	a069                	j	18468 <_getpid>

000183e0 <_close>:
   183e0:	1141                	addi	sp,sp,-16
   183e2:	c606                	sw	ra,12(sp)
   183e4:	c422                	sw	s0,8(sp)
   183e6:	03900893          	li	a7,57
   183ea:	00000073          	ecall
   183ee:	842a                	mv	s0,a0
   183f0:	00054763          	bltz	a0,183fe <_close+0x1e>
   183f4:	40b2                	lw	ra,12(sp)
   183f6:	8522                	mv	a0,s0
   183f8:	4422                	lw	s0,8(sp)
   183fa:	0141                	addi	sp,sp,16
   183fc:	8082                	ret
   183fe:	40800433          	neg	s0,s0
   18402:	c63ff0ef          	jal	18064 <__errno>
   18406:	c100                	sw	s0,0(a0)
   18408:	547d                	li	s0,-1
   1840a:	b7ed                	j	183f4 <_close+0x14>

0001840c <_exit>:
   1840c:	05d00893          	li	a7,93
   18410:	00000073          	ecall
   18414:	00054363          	bltz	a0,1841a <_exit+0xe>
   18418:	a001                	j	18418 <_exit+0xc>
   1841a:	1141                	addi	sp,sp,-16
   1841c:	c422                	sw	s0,8(sp)
   1841e:	842a                	mv	s0,a0
   18420:	c606                	sw	ra,12(sp)
   18422:	40800433          	neg	s0,s0
   18426:	c3fff0ef          	jal	18064 <__errno>
   1842a:	c100                	sw	s0,0(a0)
   1842c:	a001                	j	1842c <_exit+0x20>

0001842e <_fstat>:
   1842e:	7175                	addi	sp,sp,-144
   18430:	c326                	sw	s1,132(sp)
   18432:	c706                	sw	ra,140(sp)
   18434:	84ae                	mv	s1,a1
   18436:	c522                	sw	s0,136(sp)
   18438:	05000893          	li	a7,80
   1843c:	858a                	mv	a1,sp
   1843e:	00000073          	ecall
   18442:	842a                	mv	s0,a0
   18444:	00054b63          	bltz	a0,1845a <_fstat+0x2c>
   18448:	8526                	mv	a0,s1
   1844a:	858a                	mv	a1,sp
   1844c:	2a05                	jal	1857c <_conv_stat>
   1844e:	40ba                	lw	ra,140(sp)
   18450:	8522                	mv	a0,s0
   18452:	442a                	lw	s0,136(sp)
   18454:	449a                	lw	s1,132(sp)
   18456:	6149                	addi	sp,sp,144
   18458:	8082                	ret
   1845a:	40800433          	neg	s0,s0
   1845e:	c07ff0ef          	jal	18064 <__errno>
   18462:	c100                	sw	s0,0(a0)
   18464:	547d                	li	s0,-1
   18466:	b7cd                	j	18448 <_fstat+0x1a>

00018468 <_getpid>:
   18468:	4505                	li	a0,1
   1846a:	8082                	ret

0001846c <_isatty>:
   1846c:	7159                	addi	sp,sp,-112
   1846e:	002c                	addi	a1,sp,8
   18470:	d686                	sw	ra,108(sp)
   18472:	fbdff0ef          	jal	1842e <_fstat>
   18476:	57fd                	li	a5,-1
   18478:	00f50863          	beq	a0,a5,18488 <_isatty+0x1c>
   1847c:	4532                	lw	a0,12(sp)
   1847e:	50b6                	lw	ra,108(sp)
   18480:	8135                	srli	a0,a0,0xd
   18482:	8905                	andi	a0,a0,1
   18484:	6165                	addi	sp,sp,112
   18486:	8082                	ret
   18488:	50b6                	lw	ra,108(sp)
   1848a:	4501                	li	a0,0
   1848c:	6165                	addi	sp,sp,112
   1848e:	8082                	ret

00018490 <_kill>:
   18490:	1141                	addi	sp,sp,-16
   18492:	c606                	sw	ra,12(sp)
   18494:	bd1ff0ef          	jal	18064 <__errno>
   18498:	40b2                	lw	ra,12(sp)
   1849a:	47d9                	li	a5,22
   1849c:	c11c                	sw	a5,0(a0)
   1849e:	557d                	li	a0,-1
   184a0:	0141                	addi	sp,sp,16
   184a2:	8082                	ret

000184a4 <_lseek>:
   184a4:	1141                	addi	sp,sp,-16
   184a6:	c606                	sw	ra,12(sp)
   184a8:	c422                	sw	s0,8(sp)
   184aa:	03e00893          	li	a7,62
   184ae:	00000073          	ecall
   184b2:	842a                	mv	s0,a0
   184b4:	00054763          	bltz	a0,184c2 <_lseek+0x1e>
   184b8:	40b2                	lw	ra,12(sp)
   184ba:	8522                	mv	a0,s0
   184bc:	4422                	lw	s0,8(sp)
   184be:	0141                	addi	sp,sp,16
   184c0:	8082                	ret
   184c2:	40800433          	neg	s0,s0
   184c6:	b9fff0ef          	jal	18064 <__errno>
   184ca:	c100                	sw	s0,0(a0)
   184cc:	547d                	li	s0,-1
   184ce:	b7ed                	j	184b8 <_lseek+0x14>

000184d0 <_read>:
   184d0:	1141                	addi	sp,sp,-16
   184d2:	c606                	sw	ra,12(sp)
   184d4:	c422                	sw	s0,8(sp)
   184d6:	03f00893          	li	a7,63
   184da:	00000073          	ecall
   184de:	842a                	mv	s0,a0
   184e0:	00054763          	bltz	a0,184ee <_read+0x1e>
   184e4:	40b2                	lw	ra,12(sp)
   184e6:	8522                	mv	a0,s0
   184e8:	4422                	lw	s0,8(sp)
   184ea:	0141                	addi	sp,sp,16
   184ec:	8082                	ret
   184ee:	40800433          	neg	s0,s0
   184f2:	b73ff0ef          	jal	18064 <__errno>
   184f6:	c100                	sw	s0,0(a0)
   184f8:	547d                	li	s0,-1
   184fa:	b7ed                	j	184e4 <_read+0x14>

000184fc <_sbrk>:
   184fc:	f3c1a703          	lw	a4,-196(gp) # 1cb1c <heap_end.0>
   18500:	1141                	addi	sp,sp,-16
   18502:	c606                	sw	ra,12(sp)
   18504:	87aa                	mv	a5,a0
   18506:	ef01                	bnez	a4,1851e <_sbrk+0x22>
   18508:	0d600893          	li	a7,214
   1850c:	4501                	li	a0,0
   1850e:	00000073          	ecall
   18512:	567d                	li	a2,-1
   18514:	872a                	mv	a4,a0
   18516:	02c50563          	beq	a0,a2,18540 <_sbrk+0x44>
   1851a:	f2a1ae23          	sw	a0,-196(gp) # 1cb1c <heap_end.0>
   1851e:	0d600893          	li	a7,214
   18522:	00e78533          	add	a0,a5,a4
   18526:	00000073          	ecall
   1852a:	f3c1a703          	lw	a4,-196(gp) # 1cb1c <heap_end.0>
   1852e:	97ba                	add	a5,a5,a4
   18530:	00f51863          	bne	a0,a5,18540 <_sbrk+0x44>
   18534:	40b2                	lw	ra,12(sp)
   18536:	f2a1ae23          	sw	a0,-196(gp) # 1cb1c <heap_end.0>
   1853a:	853a                	mv	a0,a4
   1853c:	0141                	addi	sp,sp,16
   1853e:	8082                	ret
   18540:	b25ff0ef          	jal	18064 <__errno>
   18544:	40b2                	lw	ra,12(sp)
   18546:	47b1                	li	a5,12
   18548:	c11c                	sw	a5,0(a0)
   1854a:	557d                	li	a0,-1
   1854c:	0141                	addi	sp,sp,16
   1854e:	8082                	ret

00018550 <_write>:
   18550:	1141                	addi	sp,sp,-16
   18552:	c606                	sw	ra,12(sp)
   18554:	c422                	sw	s0,8(sp)
   18556:	04000893          	li	a7,64
   1855a:	00000073          	ecall
   1855e:	842a                	mv	s0,a0
   18560:	00054763          	bltz	a0,1856e <_write+0x1e>
   18564:	40b2                	lw	ra,12(sp)
   18566:	8522                	mv	a0,s0
   18568:	4422                	lw	s0,8(sp)
   1856a:	0141                	addi	sp,sp,16
   1856c:	8082                	ret
   1856e:	40800433          	neg	s0,s0
   18572:	af3ff0ef          	jal	18064 <__errno>
   18576:	c100                	sw	s0,0(a0)
   18578:	547d                	li	s0,-1
   1857a:	b7ed                	j	18564 <_write+0x14>

0001857c <_conv_stat>:
   1857c:	0185d703          	lhu	a4,24(a1)
   18580:	0145d783          	lhu	a5,20(a1)
   18584:	1141                	addi	sp,sp,-16
   18586:	01c5a283          	lw	t0,28(a1)
   1858a:	0205af83          	lw	t6,32(a1)
   1858e:	0305af03          	lw	t5,48(a1)
   18592:	0405ae83          	lw	t4,64(a1)
   18596:	0385ae03          	lw	t3,56(a1)
   1859a:	0485a303          	lw	t1,72(a1)
   1859e:	04c5a383          	lw	t2,76(a1)
   185a2:	0585a803          	lw	a6,88(a1)
   185a6:	05c5a883          	lw	a7,92(a1)
   185aa:	c622                	sw	s0,12(sp)
   185ac:	c426                	sw	s1,8(sp)
   185ae:	4980                	lw	s0,16(a1)
   185b0:	4584                	lw	s1,8(a1)
   185b2:	c24a                	sw	s2,4(sp)
   185b4:	0005a903          	lw	s2,0(a1)
   185b8:	55b0                	lw	a2,104(a1)
   185ba:	0742                	slli	a4,a4,0x10
   185bc:	8fd9                	or	a5,a5,a4
   185be:	55f4                	lw	a3,108(a1)
   185c0:	01251023          	sh	s2,0(a0)
   185c4:	00951123          	sh	s1,2(a0)
   185c8:	c140                	sw	s0,4(a0)
   185ca:	c51c                	sw	a5,8(a0)
   185cc:	00551623          	sh	t0,12(a0)
   185d0:	01f51723          	sh	t6,14(a0)
   185d4:	01e52823          	sw	t5,16(a0)
   185d8:	05d52623          	sw	t4,76(a0)
   185dc:	05c52423          	sw	t3,72(a0)
   185e0:	00652c23          	sw	t1,24(a0)
   185e4:	00752e23          	sw	t2,28(a0)
   185e8:	03052423          	sw	a6,40(a0)
   185ec:	03152623          	sw	a7,44(a0)
   185f0:	dd10                	sw	a2,56(a0)
   185f2:	4432                	lw	s0,12(sp)
   185f4:	dd54                	sw	a3,60(a0)
   185f6:	44a2                	lw	s1,8(sp)
   185f8:	4912                	lw	s2,4(sp)
   185fa:	0141                	addi	sp,sp,16
   185fc:	8082                	ret

000185fe <__eqtf2>:
   185fe:	411c                	lw	a5,0(a0)
   18600:	00452e03          	lw	t3,4(a0)
   18604:	00852e83          	lw	t4,8(a0)
   18608:	4554                	lw	a3,12(a0)
   1860a:	4198                	lw	a4,0(a1)
   1860c:	0045af83          	lw	t6,4(a1)
   18610:	0085af03          	lw	t5,8(a1)
   18614:	00c5a883          	lw	a7,12(a1)
   18618:	1141                	addi	sp,sp,-16
   1861a:	00202673          	frrm	a2
   1861e:	6521                	lui	a0,0x8
   18620:	0106d613          	srli	a2,a3,0x10
   18624:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   18626:	01069313          	slli	t1,a3,0x10
   1862a:	01089593          	slli	a1,a7,0x10
   1862e:	01f6d813          	srli	a6,a3,0x1f
   18632:	8e69                	and	a2,a2,a0
   18634:	0108d693          	srli	a3,a7,0x10
   18638:	01035313          	srli	t1,t1,0x10
   1863c:	81c1                	srli	a1,a1,0x10
   1863e:	8ee9                	and	a3,a3,a0
   18640:	01f8d893          	srli	a7,a7,0x1f
   18644:	00a61c63          	bne	a2,a0,1865c <__eqtf2+0x5e>
   18648:	01c7e533          	or	a0,a5,t3
   1864c:	01d56533          	or	a0,a0,t4
   18650:	00656533          	or	a0,a0,t1
   18654:	e51d                	bnez	a0,18682 <__eqtf2+0x84>
   18656:	04c69b63          	bne	a3,a2,186ac <__eqtf2+0xae>
   1865a:	a019                	j	18660 <__eqtf2+0x62>
   1865c:	04a69a63          	bne	a3,a0,186b0 <__eqtf2+0xb2>
   18660:	01f76533          	or	a0,a4,t6
   18664:	01e56533          	or	a0,a0,t5
   18668:	8d4d                	or	a0,a0,a1
   1866a:	c139                	beqz	a0,186b0 <__eqtf2+0xb2>
   1866c:	6521                	lui	a0,0x8
   1866e:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   18670:	02a61a63          	bne	a2,a0,186a4 <__eqtf2+0xa6>
   18674:	01c7e7b3          	or	a5,a5,t3
   18678:	01d7e7b3          	or	a5,a5,t4
   1867c:	0067e7b3          	or	a5,a5,t1
   18680:	cb99                	beqz	a5,18696 <__eqtf2+0x98>
   18682:	0342                	slli	t1,t1,0x10
   18684:	41035313          	srai	t1,t1,0x10
   18688:	04035c63          	bgez	t1,186e0 <__eqtf2+0xe2>
   1868c:	67a1                	lui	a5,0x8
   1868e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18690:	4505                	li	a0,1
   18692:	04f69563          	bne	a3,a5,186dc <__eqtf2+0xde>
   18696:	01f76733          	or	a4,a4,t6
   1869a:	01e76733          	or	a4,a4,t5
   1869e:	8f4d                	or	a4,a4,a1
   186a0:	4505                	li	a0,1
   186a2:	cf0d                	beqz	a4,186dc <__eqtf2+0xde>
   186a4:	05c2                	slli	a1,a1,0x10
   186a6:	85c1                	srai	a1,a1,0x10
   186a8:	0205dc63          	bgez	a1,186e0 <__eqtf2+0xe2>
   186ac:	4505                	li	a0,1
   186ae:	a03d                	j	186dc <__eqtf2+0xde>
   186b0:	4505                	li	a0,1
   186b2:	02c69563          	bne	a3,a2,186dc <__eqtf2+0xde>
   186b6:	02e79363          	bne	a5,a4,186dc <__eqtf2+0xde>
   186ba:	03fe1163          	bne	t3,t6,186dc <__eqtf2+0xde>
   186be:	01ee9f63          	bne	t4,t5,186dc <__eqtf2+0xde>
   186c2:	00b31d63          	bne	t1,a1,186dc <__eqtf2+0xde>
   186c6:	03180063          	beq	a6,a7,186e6 <__eqtf2+0xe8>
   186ca:	ea89                	bnez	a3,186dc <__eqtf2+0xde>
   186cc:	01c7e533          	or	a0,a5,t3
   186d0:	01d56533          	or	a0,a0,t4
   186d4:	00656533          	or	a0,a0,t1
   186d8:	00a03533          	snez	a0,a0
   186dc:	0141                	addi	sp,sp,16
   186de:	8082                	ret
   186e0:	00186073          	csrsi	fflags,16
   186e4:	b7e1                	j	186ac <__eqtf2+0xae>
   186e6:	4501                	li	a0,0
   186e8:	bfd5                	j	186dc <__eqtf2+0xde>

000186ea <__getf2>:
   186ea:	00052883          	lw	a7,0(a0)
   186ee:	00452303          	lw	t1,4(a0)
   186f2:	00852e03          	lw	t3,8(a0)
   186f6:	455c                	lw	a5,12(a0)
   186f8:	0005ae83          	lw	t4,0(a1)
   186fc:	0045af03          	lw	t5,4(a1)
   18700:	0085af83          	lw	t6,8(a1)
   18704:	45d4                	lw	a3,12(a1)
   18706:	1141                	addi	sp,sp,-16
   18708:	00202773          	frrm	a4
   1870c:	6721                	lui	a4,0x8
   1870e:	0107d613          	srli	a2,a5,0x10
   18712:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18714:	01079813          	slli	a6,a5,0x10
   18718:	01069293          	slli	t0,a3,0x10
   1871c:	0106d513          	srli	a0,a3,0x10
   18720:	8e79                	and	a2,a2,a4
   18722:	01085813          	srli	a6,a6,0x10
   18726:	83fd                	srli	a5,a5,0x1f
   18728:	0102d293          	srli	t0,t0,0x10
   1872c:	8d79                	and	a0,a0,a4
   1872e:	82fd                	srli	a3,a3,0x1f
   18730:	00e61963          	bne	a2,a4,18742 <__getf2+0x58>
   18734:	01136733          	or	a4,t1,a7
   18738:	01c76733          	or	a4,a4,t3
   1873c:	01076733          	or	a4,a4,a6
   18740:	ef35                	bnez	a4,187bc <__getf2+0xd2>
   18742:	6721                	lui	a4,0x8
   18744:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18746:	00e51963          	bne	a0,a4,18758 <__getf2+0x6e>
   1874a:	01eee733          	or	a4,t4,t5
   1874e:	01f76733          	or	a4,a4,t6
   18752:	00576733          	or	a4,a4,t0
   18756:	e33d                	bnez	a4,187bc <__getf2+0xd2>
   18758:	4701                	li	a4,0
   1875a:	ea09                	bnez	a2,1876c <__getf2+0x82>
   1875c:	01136733          	or	a4,t1,a7
   18760:	01c76733          	or	a4,a4,t3
   18764:	01076733          	or	a4,a4,a6
   18768:	00173713          	seqz	a4,a4
   1876c:	ed21                	bnez	a0,187c4 <__getf2+0xda>
   1876e:	01eee5b3          	or	a1,t4,t5
   18772:	01f5e5b3          	or	a1,a1,t6
   18776:	0055e5b3          	or	a1,a1,t0
   1877a:	c711                	beqz	a4,18786 <__getf2+0x9c>
   1877c:	c981                	beqz	a1,1878c <__getf2+0xa2>
   1877e:	4505                	li	a0,1
   18780:	e691                	bnez	a3,1878c <__getf2+0xa2>
   18782:	557d                	li	a0,-1
   18784:	a021                	j	1878c <__getf2+0xa2>
   18786:	e1a1                	bnez	a1,187c6 <__getf2+0xdc>
   18788:	557d                	li	a0,-1
   1878a:	c7a1                	beqz	a5,187d2 <__getf2+0xe8>
   1878c:	0141                	addi	sp,sp,16
   1878e:	8082                	ret
   18790:	fea647e3          	blt	a2,a0,1877e <__getf2+0x94>
   18794:	ff02eae3          	bltu	t0,a6,18788 <__getf2+0x9e>
   18798:	00581f63          	bne	a6,t0,187b6 <__getf2+0xcc>
   1879c:	ffcfe6e3          	bltu	t6,t3,18788 <__getf2+0x9e>
   187a0:	01fe1b63          	bne	t3,t6,187b6 <__getf2+0xcc>
   187a4:	fe6f62e3          	bltu	t5,t1,18788 <__getf2+0x9e>
   187a8:	01e31763          	bne	t1,t5,187b6 <__getf2+0xcc>
   187ac:	fd1eeee3          	bltu	t4,a7,18788 <__getf2+0x9e>
   187b0:	4501                	li	a0,0
   187b2:	fdd8fde3          	bgeu	a7,t4,1878c <__getf2+0xa2>
   187b6:	4505                	li	a0,1
   187b8:	fbf1                	bnez	a5,1878c <__getf2+0xa2>
   187ba:	b7e1                	j	18782 <__getf2+0x98>
   187bc:	00186073          	csrsi	fflags,16
   187c0:	5579                	li	a0,-2
   187c2:	b7e9                	j	1878c <__getf2+0xa2>
   187c4:	ff4d                	bnez	a4,1877e <__getf2+0x94>
   187c6:	fcf691e3          	bne	a3,a5,18788 <__getf2+0x9e>
   187ca:	fcc553e3          	bge	a0,a2,18790 <__getf2+0xa6>
   187ce:	557d                	li	a0,-1
   187d0:	fed5                	bnez	a3,1878c <__getf2+0xa2>
   187d2:	4505                	li	a0,1
   187d4:	bf65                	j	1878c <__getf2+0xa2>

000187d6 <__letf2>:
   187d6:	00052883          	lw	a7,0(a0)
   187da:	00452303          	lw	t1,4(a0)
   187de:	00852e03          	lw	t3,8(a0)
   187e2:	455c                	lw	a5,12(a0)
   187e4:	0005ae83          	lw	t4,0(a1)
   187e8:	0045af03          	lw	t5,4(a1)
   187ec:	0085af83          	lw	t6,8(a1)
   187f0:	45d4                	lw	a3,12(a1)
   187f2:	1141                	addi	sp,sp,-16
   187f4:	00202773          	frrm	a4
   187f8:	6721                	lui	a4,0x8
   187fa:	0107d613          	srli	a2,a5,0x10
   187fe:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18800:	01079813          	slli	a6,a5,0x10
   18804:	01069293          	slli	t0,a3,0x10
   18808:	0106d513          	srli	a0,a3,0x10
   1880c:	8e79                	and	a2,a2,a4
   1880e:	01085813          	srli	a6,a6,0x10
   18812:	83fd                	srli	a5,a5,0x1f
   18814:	0102d293          	srli	t0,t0,0x10
   18818:	8d79                	and	a0,a0,a4
   1881a:	82fd                	srli	a3,a3,0x1f
   1881c:	00e61963          	bne	a2,a4,1882e <__letf2+0x58>
   18820:	01136733          	or	a4,t1,a7
   18824:	01c76733          	or	a4,a4,t3
   18828:	01076733          	or	a4,a4,a6
   1882c:	ef35                	bnez	a4,188a8 <__letf2+0xd2>
   1882e:	6721                	lui	a4,0x8
   18830:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18832:	00e51963          	bne	a0,a4,18844 <__letf2+0x6e>
   18836:	01eee733          	or	a4,t4,t5
   1883a:	01f76733          	or	a4,a4,t6
   1883e:	00576733          	or	a4,a4,t0
   18842:	e33d                	bnez	a4,188a8 <__letf2+0xd2>
   18844:	4701                	li	a4,0
   18846:	ea09                	bnez	a2,18858 <__letf2+0x82>
   18848:	01136733          	or	a4,t1,a7
   1884c:	01c76733          	or	a4,a4,t3
   18850:	01076733          	or	a4,a4,a6
   18854:	00173713          	seqz	a4,a4
   18858:	ed21                	bnez	a0,188b0 <__letf2+0xda>
   1885a:	01eee5b3          	or	a1,t4,t5
   1885e:	01f5e5b3          	or	a1,a1,t6
   18862:	0055e5b3          	or	a1,a1,t0
   18866:	c711                	beqz	a4,18872 <__letf2+0x9c>
   18868:	c981                	beqz	a1,18878 <__letf2+0xa2>
   1886a:	4505                	li	a0,1
   1886c:	e691                	bnez	a3,18878 <__letf2+0xa2>
   1886e:	557d                	li	a0,-1
   18870:	a021                	j	18878 <__letf2+0xa2>
   18872:	e1a1                	bnez	a1,188b2 <__letf2+0xdc>
   18874:	557d                	li	a0,-1
   18876:	c7a1                	beqz	a5,188be <__letf2+0xe8>
   18878:	0141                	addi	sp,sp,16
   1887a:	8082                	ret
   1887c:	fea647e3          	blt	a2,a0,1886a <__letf2+0x94>
   18880:	ff02eae3          	bltu	t0,a6,18874 <__letf2+0x9e>
   18884:	00581f63          	bne	a6,t0,188a2 <__letf2+0xcc>
   18888:	ffcfe6e3          	bltu	t6,t3,18874 <__letf2+0x9e>
   1888c:	01fe1b63          	bne	t3,t6,188a2 <__letf2+0xcc>
   18890:	fe6f62e3          	bltu	t5,t1,18874 <__letf2+0x9e>
   18894:	01e31763          	bne	t1,t5,188a2 <__letf2+0xcc>
   18898:	fd1eeee3          	bltu	t4,a7,18874 <__letf2+0x9e>
   1889c:	4501                	li	a0,0
   1889e:	fdd8fde3          	bgeu	a7,t4,18878 <__letf2+0xa2>
   188a2:	4505                	li	a0,1
   188a4:	fbf1                	bnez	a5,18878 <__letf2+0xa2>
   188a6:	b7e1                	j	1886e <__letf2+0x98>
   188a8:	00186073          	csrsi	fflags,16
   188ac:	4509                	li	a0,2
   188ae:	b7e9                	j	18878 <__letf2+0xa2>
   188b0:	ff4d                	bnez	a4,1886a <__letf2+0x94>
   188b2:	fcf691e3          	bne	a3,a5,18874 <__letf2+0x9e>
   188b6:	fcc553e3          	bge	a0,a2,1887c <__letf2+0xa6>
   188ba:	557d                	li	a0,-1
   188bc:	fed5                	bnez	a3,18878 <__letf2+0xa2>
   188be:	4505                	li	a0,1
   188c0:	bf65                	j	18878 <__letf2+0xa2>

000188c2 <__multf3>:
   188c2:	7131                	addi	sp,sp,-192
   188c4:	d552                	sw	s4,168(sp)
   188c6:	d356                	sw	s5,164(sp)
   188c8:	d15a                	sw	s6,160(sp)
   188ca:	cf5e                	sw	s7,156(sp)
   188cc:	c62a                	sw	a0,12(sp)
   188ce:	419c                	lw	a5,0(a1)
   188d0:	41c8                	lw	a0,4(a1)
   188d2:	4594                	lw	a3,8(a1)
   188d4:	45d8                	lw	a4,12(a1)
   188d6:	00062a83          	lw	s5,0(a2)
   188da:	00462b83          	lw	s7,4(a2)
   188de:	00862b03          	lw	s6,8(a2)
   188e2:	00c62a03          	lw	s4,12(a2)
   188e6:	df06                	sw	ra,188(sp)
   188e8:	dd22                	sw	s0,184(sp)
   188ea:	db26                	sw	s1,180(sp)
   188ec:	d94a                	sw	s2,176(sp)
   188ee:	d74e                	sw	s3,172(sp)
   188f0:	cd62                	sw	s8,152(sp)
   188f2:	cb66                	sw	s9,148(sp)
   188f4:	c96a                	sw	s10,144(sp)
   188f6:	c76e                	sw	s11,140(sp)
   188f8:	002024f3          	frrm	s1
   188fc:	6621                	lui	a2,0x8
   188fe:	01071413          	slli	s0,a4,0x10
   18902:	8041                	srli	s0,s0,0x10
   18904:	01075913          	srli	s2,a4,0x10
   18908:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   1890a:	d0be                	sw	a5,96(sp)
   1890c:	d2aa                	sw	a0,100(sp)
   1890e:	d4b6                	sw	a3,104(sp)
   18910:	d6ba                	sw	a4,108(sp)
   18912:	d83e                	sw	a5,48(sp)
   18914:	da2a                	sw	a0,52(sp)
   18916:	dc36                	sw	a3,56(sp)
   18918:	de22                	sw	s0,60(sp)
   1891a:	00c97933          	and	s2,s2,a2
   1891e:	01f75993          	srli	s3,a4,0x1f
   18922:	02090a63          	beqz	s2,18956 <__multf3+0x94>
   18926:	10c90d63          	beq	s2,a2,18a40 <__multf3+0x17e>
   1892a:	6741                	lui	a4,0x10
   1892c:	8c59                	or	s0,s0,a4
   1892e:	de22                	sw	s0,60(sp)
   18930:	1818                	addi	a4,sp,48
   18932:	104c                	addi	a1,sp,36
   18934:	4754                	lw	a3,12(a4)
   18936:	4710                	lw	a2,8(a4)
   18938:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1893a:	068e                	slli	a3,a3,0x3
   1893c:	8275                	srli	a2,a2,0x1d
   1893e:	8ed1                	or	a3,a3,a2
   18940:	cb14                	sw	a3,16(a4)
   18942:	fee599e3          	bne	a1,a4,18934 <__multf3+0x72>
   18946:	078e                	slli	a5,a5,0x3
   18948:	d83e                	sw	a5,48(sp)
   1894a:	77f1                	lui	a5,0xffffc
   1894c:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffdf1d5>
   1894e:	993e                	add	s2,s2,a5
   18950:	4c01                	li	s8,0
   18952:	4401                	li	s0,0
   18954:	a211                	j	18a58 <__multf3+0x196>
   18956:	00a7e733          	or	a4,a5,a0
   1895a:	8f55                	or	a4,a4,a3
   1895c:	8f41                	or	a4,a4,s0
   1895e:	70070d63          	beqz	a4,19078 <__multf3+0x7b6>
   18962:	cc2d                	beqz	s0,189dc <__multf3+0x11a>
   18964:	8522                	mv	a0,s0
   18966:	108020ef          	jal	1aa6e <__clzsi2>
   1896a:	ff450693          	addi	a3,a0,-12
   1896e:	4056d793          	srai	a5,a3,0x5
   18972:	8afd                	andi	a3,a3,31
   18974:	c6d9                	beqz	a3,18a02 <__multf3+0x140>
   18976:	5671                	li	a2,-4
   18978:	02c78633          	mul	a2,a5,a2
   1897c:	02000813          	li	a6,32
   18980:	03010313          	addi	t1,sp,48
   18984:	40d80833          	sub	a6,a6,a3
   18988:	00c60713          	addi	a4,a2,12
   1898c:	971a                	add	a4,a4,t1
   1898e:	40c00633          	neg	a2,a2
   18992:	08e31863          	bne	t1,a4,18a22 <__multf3+0x160>
   18996:	fff78713          	addi	a4,a5,-1
   1899a:	078a                	slli	a5,a5,0x2
   1899c:	1810                	addi	a2,sp,48
   1899e:	05078793          	addi	a5,a5,80
   189a2:	97b2                	add	a5,a5,a2
   189a4:	5642                	lw	a2,48(sp)
   189a6:	00d616b3          	sll	a3,a2,a3
   189aa:	fad7a823          	sw	a3,-80(a5)
   189ae:	00170793          	addi	a5,a4,1
   189b2:	078a                	slli	a5,a5,0x2
   189b4:	46a1                	li	a3,8
   189b6:	1818                	addi	a4,sp,48
   189b8:	00d7e863          	bltu	a5,a3,189c8 <__multf3+0x106>
   189bc:	00072023          	sw	zero,0(a4)
   189c0:	00072223          	sw	zero,4(a4)
   189c4:	17e1                	addi	a5,a5,-8
   189c6:	1838                	addi	a4,sp,56
   189c8:	4691                	li	a3,4
   189ca:	00d7e463          	bltu	a5,a3,189d2 <__multf3+0x110>
   189ce:	00072023          	sw	zero,0(a4)
   189d2:	7971                	lui	s2,0xffffc
   189d4:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffdf1e5>
   189d6:	40a90933          	sub	s2,s2,a0
   189da:	bf9d                	j	18950 <__multf3+0x8e>
   189dc:	c699                	beqz	a3,189ea <__multf3+0x128>
   189de:	8536                	mv	a0,a3
   189e0:	08e020ef          	jal	1aa6e <__clzsi2>
   189e4:	02050513          	addi	a0,a0,32
   189e8:	b749                	j	1896a <__multf3+0xa8>
   189ea:	c511                	beqz	a0,189f6 <__multf3+0x134>
   189ec:	082020ef          	jal	1aa6e <__clzsi2>
   189f0:	04050513          	addi	a0,a0,64
   189f4:	bf9d                	j	1896a <__multf3+0xa8>
   189f6:	853e                	mv	a0,a5
   189f8:	076020ef          	jal	1aa6e <__clzsi2>
   189fc:	06050513          	addi	a0,a0,96
   18a00:	b7ad                	j	1896a <__multf3+0xa8>
   18a02:	5671                	li	a2,-4
   18a04:	02c78633          	mul	a2,a5,a2
   18a08:	1878                	addi	a4,sp,60
   18a0a:	468d                	li	a3,3
   18a0c:	00c705b3          	add	a1,a4,a2
   18a10:	418c                	lw	a1,0(a1)
   18a12:	16fd                	addi	a3,a3,-1
   18a14:	1771                	addi	a4,a4,-4
   18a16:	c34c                	sw	a1,4(a4)
   18a18:	fef6dae3          	bge	a3,a5,18a0c <__multf3+0x14a>
   18a1c:	fff78713          	addi	a4,a5,-1
   18a20:	b779                	j	189ae <__multf3+0xec>
   18a22:	430c                	lw	a1,0(a4)
   18a24:	ffc72883          	lw	a7,-4(a4)
   18a28:	00c70e33          	add	t3,a4,a2
   18a2c:	00d595b3          	sll	a1,a1,a3
   18a30:	0108d8b3          	srl	a7,a7,a6
   18a34:	0115e5b3          	or	a1,a1,a7
   18a38:	00be2023          	sw	a1,0(t3)
   18a3c:	1771                	addi	a4,a4,-4
   18a3e:	bf91                	j	18992 <__multf3+0xd0>
   18a40:	8fc9                	or	a5,a5,a0
   18a42:	8fd5                	or	a5,a5,a3
   18a44:	8fc1                	or	a5,a5,s0
   18a46:	62078c63          	beqz	a5,1907e <__multf3+0x7bc>
   18a4a:	0442                	slli	s0,s0,0x10
   18a4c:	8441                	srai	s0,s0,0x10
   18a4e:	fff44413          	not	s0,s0
   18a52:	807d                	srli	s0,s0,0x1f
   18a54:	0412                	slli	s0,s0,0x4
   18a56:	4c0d                	li	s8,3
   18a58:	010a1513          	slli	a0,s4,0x10
   18a5c:	6721                	lui	a4,0x8
   18a5e:	010a5793          	srli	a5,s4,0x10
   18a62:	8141                	srli	a0,a0,0x10
   18a64:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18a66:	d6d2                	sw	s4,108(sp)
   18a68:	d0d6                	sw	s5,96(sp)
   18a6a:	d2de                	sw	s7,100(sp)
   18a6c:	d4da                	sw	s6,104(sp)
   18a6e:	c0d6                	sw	s5,64(sp)
   18a70:	c2de                	sw	s7,68(sp)
   18a72:	c4da                	sw	s6,72(sp)
   18a74:	c6aa                	sw	a0,76(sp)
   18a76:	8ff9                	and	a5,a5,a4
   18a78:	01fa5a13          	srli	s4,s4,0x1f
   18a7c:	60078363          	beqz	a5,19082 <__multf3+0x7c0>
   18a80:	6ee78863          	beq	a5,a4,19170 <__multf3+0x8ae>
   18a84:	6741                	lui	a4,0x10
   18a86:	8d59                	or	a0,a0,a4
   18a88:	c6aa                	sw	a0,76(sp)
   18a8a:	0098                	addi	a4,sp,64
   18a8c:	184c                	addi	a1,sp,52
   18a8e:	4754                	lw	a3,12(a4)
   18a90:	4710                	lw	a2,8(a4)
   18a92:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   18a94:	068e                	slli	a3,a3,0x3
   18a96:	8275                	srli	a2,a2,0x1d
   18a98:	8ed1                	or	a3,a3,a2
   18a9a:	cb14                	sw	a3,16(a4)
   18a9c:	fee599e3          	bne	a1,a4,18a8e <__multf3+0x1cc>
   18aa0:	7771                	lui	a4,0xffffc
   18aa2:	0a8e                	slli	s5,s5,0x3
   18aa4:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffdf1d5>
   18aa6:	c0d6                	sw	s5,64(sp)
   18aa8:	97ba                	add	a5,a5,a4
   18aaa:	4681                	li	a3,0
   18aac:	97ca                	add	a5,a5,s2
   18aae:	ca3e                	sw	a5,20(sp)
   18ab0:	0785                	addi	a5,a5,1
   18ab2:	c83e                	sw	a5,16(sp)
   18ab4:	002c1793          	slli	a5,s8,0x2
   18ab8:	8fd5                	or	a5,a5,a3
   18aba:	4729                	li	a4,10
   18abc:	70f74363          	blt	a4,a5,191c2 <__multf3+0x900>
   18ac0:	4609                	li	a2,2
   18ac2:	0149c733          	xor	a4,s3,s4
   18ac6:	6cf64863          	blt	a2,a5,19196 <__multf3+0x8d4>
   18aca:	17fd                	addi	a5,a5,-1
   18acc:	4605                	li	a2,1
   18ace:	70f67263          	bgeu	a2,a5,191d2 <__multf3+0x910>
   18ad2:	5542                	lw	a0,48(sp)
   18ad4:	4306                	lw	t1,64(sp)
   18ad6:	6841                	lui	a6,0x10
   18ad8:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   18adc:	01055913          	srli	s2,a0,0x10
   18ae0:	01035393          	srli	t2,t1,0x10
   18ae4:	8d6d                	and	a0,a0,a1
   18ae6:	00b37333          	and	t1,t1,a1
   18aea:	02a30633          	mul	a2,t1,a0
   18aee:	026908b3          	mul	a7,s2,t1
   18af2:	01065793          	srli	a5,a2,0x10
   18af6:	02a386b3          	mul	a3,t2,a0
   18afa:	96c6                	add	a3,a3,a7
   18afc:	97b6                	add	a5,a5,a3
   18afe:	02790bb3          	mul	s7,s2,t2
   18b02:	0117f363          	bgeu	a5,a7,18b08 <__multf3+0x246>
   18b06:	9bc2                	add	s7,s7,a6
   18b08:	4896                	lw	a7,68(sp)
   18b0a:	0107d693          	srli	a3,a5,0x10
   18b0e:	8fed                	and	a5,a5,a1
   18b10:	8e6d                	and	a2,a2,a1
   18b12:	07c2                	slli	a5,a5,0x10
   18b14:	97b2                	add	a5,a5,a2
   18b16:	0108df93          	srli	t6,a7,0x10
   18b1a:	00b8f8b3          	and	a7,a7,a1
   18b1e:	031905b3          	mul	a1,s2,a7
   18b22:	d03e                	sw	a5,32(sp)
   18b24:	d0be                	sw	a5,96(sp)
   18b26:	02af8633          	mul	a2,t6,a0
   18b2a:	02a887b3          	mul	a5,a7,a0
   18b2e:	962e                	add	a2,a2,a1
   18b30:	0107d813          	srli	a6,a5,0x10
   18b34:	9832                	add	a6,a6,a2
   18b36:	03f90b33          	mul	s6,s2,t6
   18b3a:	00b87463          	bgeu	a6,a1,18b42 <__multf3+0x280>
   18b3e:	6641                	lui	a2,0x10
   18b40:	9b32                	add	s6,s6,a2
   18b42:	01085613          	srli	a2,a6,0x10
   18b46:	55d2                	lw	a1,52(sp)
   18b48:	cc32                	sw	a2,24(sp)
   18b4a:	6641                	lui	a2,0x10
   18b4c:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   18b50:	01d87833          	and	a6,a6,t4
   18b54:	01d7f7b3          	and	a5,a5,t4
   18b58:	0105d293          	srli	t0,a1,0x10
   18b5c:	0842                	slli	a6,a6,0x10
   18b5e:	01d5f5b3          	and	a1,a1,t4
   18b62:	983e                	add	a6,a6,a5
   18b64:	02628a33          	mul	s4,t0,t1
   18b68:	96c2                	add	a3,a3,a6
   18b6a:	026587b3          	mul	a5,a1,t1
   18b6e:	02b38eb3          	mul	t4,t2,a1
   18b72:	0107d993          	srli	s3,a5,0x10
   18b76:	9ed2                	add	t4,t4,s4
   18b78:	99f6                	add	s3,s3,t4
   18b7a:	02538f33          	mul	t5,t2,t0
   18b7e:	0149f363          	bgeu	s3,s4,18b84 <__multf3+0x2c2>
   18b82:	9f32                	add	t5,t5,a2
   18b84:	6c41                	lui	s8,0x10
   18b86:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   18b8a:	8ff1                	and	a5,a5,a2
   18b8c:	0109da13          	srli	s4,s3,0x10
   18b90:	00c9f9b3          	and	s3,s3,a2
   18b94:	09c2                	slli	s3,s3,0x10
   18b96:	99be                	add	s3,s3,a5
   18b98:	02b88eb3          	mul	t4,a7,a1
   18b9c:	9a7a                	add	s4,s4,t5
   18b9e:	03128633          	mul	a2,t0,a7
   18ba2:	010ed793          	srli	a5,t4,0x10
   18ba6:	02bf8ab3          	mul	s5,t6,a1
   18baa:	9ab2                	add	s5,s5,a2
   18bac:	97d6                	add	a5,a5,s5
   18bae:	025f8f33          	mul	t5,t6,t0
   18bb2:	00c7f363          	bgeu	a5,a2,18bb8 <__multf3+0x2f6>
   18bb6:	9f62                	add	t5,t5,s8
   18bb8:	0107d613          	srli	a2,a5,0x10
   18bbc:	967a                	add	a2,a2,t5
   18bbe:	6ac1                	lui	s5,0x10
   18bc0:	ce32                	sw	a2,28(sp)
   18bc2:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   18bc6:	8ff1                	and	a5,a5,a2
   18bc8:	00cefeb3          	and	t4,t4,a2
   18bcc:	07c2                	slli	a5,a5,0x10
   18bce:	97f6                	add	a5,a5,t4
   18bd0:	d23e                	sw	a5,36(sp)
   18bd2:	47a6                	lw	a5,72(sp)
   18bd4:	0107dd93          	srli	s11,a5,0x10
   18bd8:	00c7fd33          	and	s10,a5,a2
   18bdc:	02ad0633          	mul	a2,s10,a0
   18be0:	03a90c33          	mul	s8,s2,s10
   18be4:	01065793          	srli	a5,a2,0x10
   18be8:	02ad8f33          	mul	t5,s11,a0
   18bec:	9f62                	add	t5,t5,s8
   18bee:	97fa                	add	a5,a5,t5
   18bf0:	03b90eb3          	mul	t4,s2,s11
   18bf4:	0187f363          	bgeu	a5,s8,18bfa <__multf3+0x338>
   18bf8:	9ed6                	add	t4,t4,s5
   18bfa:	0107df13          	srli	t5,a5,0x10
   18bfe:	6cc1                	lui	s9,0x10
   18c00:	01df0e33          	add	t3,t5,t4
   18c04:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   18c08:	01d7f7b3          	and	a5,a5,t4
   18c0c:	01d67633          	and	a2,a2,t4
   18c10:	07c2                	slli	a5,a5,0x10
   18c12:	97b2                	add	a5,a5,a2
   18c14:	5662                	lw	a2,56(sp)
   18c16:	d472                	sw	t3,40(sp)
   18c18:	d63e                	sw	a5,44(sp)
   18c1a:	01065f13          	srli	t5,a2,0x10
   18c1e:	01d67633          	and	a2,a2,t4
   18c22:	02660ab3          	mul	s5,a2,t1
   18c26:	026f0e33          	mul	t3,t5,t1
   18c2a:	010ad793          	srli	a5,s5,0x10
   18c2e:	02c38eb3          	mul	t4,t2,a2
   18c32:	9ef2                	add	t4,t4,t3
   18c34:	9ebe                	add	t4,t4,a5
   18c36:	03e38c33          	mul	s8,t2,t5
   18c3a:	01cef363          	bgeu	t4,t3,18c40 <__multf3+0x37e>
   18c3e:	9c66                	add	s8,s8,s9
   18c40:	47e2                	lw	a5,24(sp)
   18c42:	96de                	add	a3,a3,s7
   18c44:	0106b833          	sltu	a6,a3,a6
   18c48:	010edc93          	srli	s9,t4,0x10
   18c4c:	6e41                	lui	t3,0x10
   18c4e:	9c66                	add	s8,s8,s9
   18c50:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   18c54:	01078e33          	add	t3,a5,a6
   18c58:	013687b3          	add	a5,a3,s3
   18c5c:	9e5a                	add	t3,t3,s6
   18c5e:	00d7b6b3          	sltu	a3,a5,a3
   18c62:	cc3e                	sw	a5,24(sp)
   18c64:	d2be                	sw	a5,100(sp)
   18c66:	5792                	lw	a5,36(sp)
   18c68:	9a72                	add	s4,s4,t3
   18c6a:	96d2                	add	a3,a3,s4
   18c6c:	01ca39b3          	sltu	s3,s4,t3
   18c70:	0146ba33          	sltu	s4,a3,s4
   18c74:	010e3e33          	sltu	t3,t3,a6
   18c78:	00f68833          	add	a6,a3,a5
   18c7c:	47f2                	lw	a5,28(sp)
   18c7e:	0149e9b3          	or	s3,s3,s4
   18c82:	9e4e                	add	t3,t3,s3
   18c84:	00fe09b3          	add	s3,t3,a5
   18c88:	57b2                	lw	a5,44(sp)
   18c8a:	5a22                	lw	s4,40(sp)
   18c8c:	00d836b3          	sltu	a3,a6,a3
   18c90:	019efeb3          	and	t4,t4,s9
   18c94:	96ce                	add	a3,a3,s3
   18c96:	97c2                	add	a5,a5,a6
   18c98:	0ec2                	slli	t4,t4,0x10
   18c9a:	019afab3          	and	s5,s5,s9
   18c9e:	9a36                	add	s4,s4,a3
   18ca0:	0107b833          	sltu	a6,a5,a6
   18ca4:	9ed6                	add	t4,t4,s5
   18ca6:	9ebe                	add	t4,t4,a5
   18ca8:	9852                	add	a6,a6,s4
   18caa:	9c42                	add	s8,s8,a6
   18cac:	00feb7b3          	sltu	a5,t4,a5
   18cb0:	ce76                	sw	t4,28(sp)
   18cb2:	d4f6                	sw	t4,104(sp)
   18cb4:	4eb6                	lw	t4,76(sp)
   18cb6:	01c9be33          	sltu	t3,s3,t3
   18cba:	97e2                	add	a5,a5,s8
   18cbc:	0136b9b3          	sltu	s3,a3,s3
   18cc0:	00da36b3          	sltu	a3,s4,a3
   18cc4:	01483a33          	sltu	s4,a6,s4
   18cc8:	013e69b3          	or	s3,t3,s3
   18ccc:	0146e6b3          	or	a3,a3,s4
   18cd0:	010c3833          	sltu	a6,s8,a6
   18cd4:	0187bc33          	sltu	s8,a5,s8
   18cd8:	96ce                	add	a3,a3,s3
   18cda:	01886833          	or	a6,a6,s8
   18cde:	010ed993          	srli	s3,t4,0x10
   18ce2:	019efeb3          	and	t4,t4,s9
   18ce6:	03d90a33          	mul	s4,s2,t4
   18cea:	00d80e33          	add	t3,a6,a3
   18cee:	02ae86b3          	mul	a3,t4,a0
   18cf2:	02a98533          	mul	a0,s3,a0
   18cf6:	0106d813          	srli	a6,a3,0x10
   18cfa:	9552                	add	a0,a0,s4
   18cfc:	982a                	add	a6,a6,a0
   18cfe:	03390933          	mul	s2,s2,s3
   18d02:	01487463          	bgeu	a6,s4,18d0a <__multf3+0x448>
   18d06:	6541                	lui	a0,0x10
   18d08:	992a                	add	s2,s2,a0
   18d0a:	01085513          	srli	a0,a6,0x10
   18d0e:	954a                	add	a0,a0,s2
   18d10:	5a72                	lw	s4,60(sp)
   18d12:	6ac1                	lui	s5,0x10
   18d14:	d22a                	sw	a0,36(sp)
   18d16:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   18d1a:	00a87833          	and	a6,a6,a0
   18d1e:	010a5913          	srli	s2,s4,0x10
   18d22:	0842                	slli	a6,a6,0x10
   18d24:	8ee9                	and	a3,a3,a0
   18d26:	00aa7a33          	and	s4,s4,a0
   18d2a:	96c2                	add	a3,a3,a6
   18d2c:	026a0533          	mul	a0,s4,t1
   18d30:	d436                	sw	a3,40(sp)
   18d32:	02690333          	mul	t1,s2,t1
   18d36:	01055693          	srli	a3,a0,0x10
   18d3a:	03238833          	mul	a6,t2,s2
   18d3e:	034383b3          	mul	t2,t2,s4
   18d42:	939a                	add	t2,t2,t1
   18d44:	969e                	add	a3,a3,t2
   18d46:	0066f363          	bgeu	a3,t1,18d4c <__multf3+0x48a>
   18d4a:	9856                	add	a6,a6,s5
   18d4c:	0106da93          	srli	s5,a3,0x10
   18d50:	6bc1                	lui	s7,0x10
   18d52:	9ac2                	add	s5,s5,a6
   18d54:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   18d58:	01057533          	and	a0,a0,a6
   18d5c:	0106f6b3          	and	a3,a3,a6
   18d60:	03a28333          	mul	t1,t0,s10
   18d64:	06c2                	slli	a3,a3,0x10
   18d66:	96aa                	add	a3,a3,a0
   18d68:	03a58833          	mul	a6,a1,s10
   18d6c:	02bd83b3          	mul	t2,s11,a1
   18d70:	01085513          	srli	a0,a6,0x10
   18d74:	939a                	add	t2,t2,t1
   18d76:	951e                	add	a0,a0,t2
   18d78:	03b28b33          	mul	s6,t0,s11
   18d7c:	00657363          	bgeu	a0,t1,18d82 <__multf3+0x4c0>
   18d80:	9b5e                	add	s6,s6,s7
   18d82:	6c41                	lui	s8,0x10
   18d84:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   18d88:	01055393          	srli	t2,a0,0x10
   18d8c:	00657533          	and	a0,a0,t1
   18d90:	00687833          	and	a6,a6,t1
   18d94:	0542                	slli	a0,a0,0x10
   18d96:	93da                	add	t2,t2,s6
   18d98:	02cf8333          	mul	t1,t6,a2
   18d9c:	9542                	add	a0,a0,a6
   18d9e:	031f0b33          	mul	s6,t5,a7
   18da2:	02c88833          	mul	a6,a7,a2
   18da6:	935a                	add	t1,t1,s6
   18da8:	01085c93          	srli	s9,a6,0x10
   18dac:	9366                	add	t1,t1,s9
   18dae:	03ef8bb3          	mul	s7,t6,t5
   18db2:	01637363          	bgeu	t1,s6,18db8 <__multf3+0x4f6>
   18db6:	9be2                	add	s7,s7,s8
   18db8:	01035b13          	srli	s6,t1,0x10
   18dbc:	9b5e                	add	s6,s6,s7
   18dbe:	6bc1                	lui	s7,0x10
   18dc0:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   18dc4:	01837333          	and	t1,t1,s8
   18dc8:	0342                	slli	t1,t1,0x10
   18dca:	01887833          	and	a6,a6,s8
   18dce:	981a                	add	a6,a6,t1
   18dd0:	5322                	lw	t1,40(sp)
   18dd2:	5c12                	lw	s8,36(sp)
   18dd4:	933e                	add	t1,t1,a5
   18dd6:	9c72                	add	s8,s8,t3
   18dd8:	00f337b3          	sltu	a5,t1,a5
   18ddc:	97e2                	add	a5,a5,s8
   18dde:	969a                	add	a3,a3,t1
   18de0:	9abe                	add	s5,s5,a5
   18de2:	0066b333          	sltu	t1,a3,t1
   18de6:	9356                	add	t1,t1,s5
   18de8:	9536                	add	a0,a0,a3
   18dea:	939a                	add	t2,t2,t1
   18dec:	00d536b3          	sltu	a3,a0,a3
   18df0:	969e                	add	a3,a3,t2
   18df2:	982a                	add	a6,a6,a0
   18df4:	01cc3e33          	sltu	t3,s8,t3
   18df8:	9b36                	add	s6,s6,a3
   18dfa:	0187bc33          	sltu	s8,a5,s8
   18dfe:	00a83533          	sltu	a0,a6,a0
   18e02:	00fab7b3          	sltu	a5,s5,a5
   18e06:	01533ab3          	sltu	s5,t1,s5
   18e0a:	018e6c33          	or	s8,t3,s8
   18e0e:	0157e7b3          	or	a5,a5,s5
   18e12:	0063b333          	sltu	t1,t2,t1
   18e16:	955a                	add	a0,a0,s6
   18e18:	0076b3b3          	sltu	t2,a3,t2
   18e1c:	97e2                	add	a5,a5,s8
   18e1e:	00736333          	or	t1,t1,t2
   18e22:	00db36b3          	sltu	a3,s6,a3
   18e26:	01653b33          	sltu	s6,a0,s6
   18e2a:	00f303b3          	add	t2,t1,a5
   18e2e:	0166e6b3          	or	a3,a3,s6
   18e32:	00768333          	add	t1,a3,t2
   18e36:	03af0e33          	mul	t3,t5,s10
   18e3a:	d6c2                	sw	a6,108(sp)
   18e3c:	03a606b3          	mul	a3,a2,s10
   18e40:	02cd8ab3          	mul	s5,s11,a2
   18e44:	0106d793          	srli	a5,a3,0x10
   18e48:	9af2                	add	s5,s5,t3
   18e4a:	97d6                	add	a5,a5,s5
   18e4c:	03ed83b3          	mul	t2,s11,t5
   18e50:	01c7f363          	bgeu	a5,t3,18e56 <__multf3+0x594>
   18e54:	93de                	add	t2,t2,s7
   18e56:	0107de13          	srli	t3,a5,0x10
   18e5a:	6ac1                	lui	s5,0x10
   18e5c:	9e1e                	add	t3,t3,t2
   18e5e:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   18e62:	0077f7b3          	and	a5,a5,t2
   18e66:	0076f6b3          	and	a3,a3,t2
   18e6a:	07c2                	slli	a5,a5,0x10
   18e6c:	03d28b33          	mul	s6,t0,t4
   18e70:	97b6                	add	a5,a5,a3
   18e72:	02be86b3          	mul	a3,t4,a1
   18e76:	02b985b3          	mul	a1,s3,a1
   18e7a:	0106d393          	srli	t2,a3,0x10
   18e7e:	95da                	add	a1,a1,s6
   18e80:	93ae                	add	t2,t2,a1
   18e82:	033282b3          	mul	t0,t0,s3
   18e86:	0163f363          	bgeu	t2,s6,18e8c <__multf3+0x5ca>
   18e8a:	92d6                	add	t0,t0,s5
   18e8c:	0103d593          	srli	a1,t2,0x10
   18e90:	6b41                	lui	s6,0x10
   18e92:	92ae                	add	t0,t0,a1
   18e94:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   18e98:	8eed                	and	a3,a3,a1
   18e9a:	00b3f3b3          	and	t2,t2,a1
   18e9e:	03c2                	slli	t2,t2,0x10
   18ea0:	031a05b3          	mul	a1,s4,a7
   18ea4:	93b6                	add	t2,t2,a3
   18ea6:	031908b3          	mul	a7,s2,a7
   18eaa:	0105d693          	srli	a3,a1,0x10
   18eae:	032f8ab3          	mul	s5,t6,s2
   18eb2:	034f8fb3          	mul	t6,t6,s4
   18eb6:	9fc6                	add	t6,t6,a7
   18eb8:	96fe                	add	a3,a3,t6
   18eba:	0116f363          	bgeu	a3,a7,18ec0 <__multf3+0x5fe>
   18ebe:	9ada                	add	s5,s5,s6
   18ec0:	0106df93          	srli	t6,a3,0x10
   18ec4:	68c1                	lui	a7,0x10
   18ec6:	9fd6                	add	t6,t6,s5
   18ec8:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   18ecc:	0156f6b3          	and	a3,a3,s5
   18ed0:	0155f5b3          	and	a1,a1,s5
   18ed4:	06c2                	slli	a3,a3,0x10
   18ed6:	03df0ab3          	mul	s5,t5,t4
   18eda:	96ae                	add	a3,a3,a1
   18edc:	03d605b3          	mul	a1,a2,t4
   18ee0:	02c98633          	mul	a2,s3,a2
   18ee4:	01560b33          	add	s6,a2,s5
   18ee8:	0105d613          	srli	a2,a1,0x10
   18eec:	965a                	add	a2,a2,s6
   18eee:	033f0f33          	mul	t5,t5,s3
   18ef2:	01567363          	bgeu	a2,s5,18ef8 <__multf3+0x636>
   18ef6:	9f46                	add	t5,t5,a7
   18ef8:	6ac1                	lui	s5,0x10
   18efa:	01065893          	srli	a7,a2,0x10
   18efe:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   18f02:	9f46                	add	t5,t5,a7
   18f04:	016678b3          	and	a7,a2,s6
   18f08:	0165f5b3          	and	a1,a1,s6
   18f0c:	08c2                	slli	a7,a7,0x10
   18f0e:	03aa0633          	mul	a2,s4,s10
   18f12:	98ae                	add	a7,a7,a1
   18f14:	03a90bb3          	mul	s7,s2,s10
   18f18:	01065c13          	srli	s8,a2,0x10
   18f1c:	034d85b3          	mul	a1,s11,s4
   18f20:	95de                	add	a1,a1,s7
   18f22:	95e2                	add	a1,a1,s8
   18f24:	032d8b33          	mul	s6,s11,s2
   18f28:	0175f363          	bgeu	a1,s7,18f2e <__multf3+0x66c>
   18f2c:	9b56                	add	s6,s6,s5
   18f2e:	97aa                	add	a5,a5,a0
   18f30:	9e1a                	add	t3,t3,t1
   18f32:	00a7b533          	sltu	a0,a5,a0
   18f36:	9572                	add	a0,a0,t3
   18f38:	93be                	add	t2,t2,a5
   18f3a:	92aa                	add	t0,t0,a0
   18f3c:	00f3b7b3          	sltu	a5,t2,a5
   18f40:	9796                	add	a5,a5,t0
   18f42:	006e3333          	sltu	t1,t3,t1
   18f46:	01c53e33          	sltu	t3,a0,t3
   18f4a:	00a2b533          	sltu	a0,t0,a0
   18f4e:	0057b2b3          	sltu	t0,a5,t0
   18f52:	00556533          	or	a0,a0,t0
   18f56:	01c36333          	or	t1,t1,t3
   18f5a:	932a                	add	t1,t1,a0
   18f5c:	03da0533          	mul	a0,s4,t4
   18f60:	969e                	add	a3,a3,t2
   18f62:	9fbe                	add	t6,t6,a5
   18f64:	0105da93          	srli	s5,a1,0x10
   18f68:	d8b6                	sw	a3,112(sp)
   18f6a:	0076b6b3          	sltu	a3,a3,t2
   18f6e:	96fe                	add	a3,a3,t6
   18f70:	9ada                	add	s5,s5,s6
   18f72:	6b41                	lui	s6,0x10
   18f74:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   18f78:	03d90eb3          	mul	t4,s2,t4
   18f7c:	00ffb7b3          	sltu	a5,t6,a5
   18f80:	01f6bfb3          	sltu	t6,a3,t6
   18f84:	0175f5b3          	and	a1,a1,s7
   18f88:	01f7e7b3          	or	a5,a5,t6
   18f8c:	98b6                	add	a7,a7,a3
   18f8e:	05c2                	slli	a1,a1,0x10
   18f90:	979a                	add	a5,a5,t1
   18f92:	01767633          	and	a2,a2,s7
   18f96:	9f3e                	add	t5,t5,a5
   18f98:	03298933          	mul	s2,s3,s2
   18f9c:	962e                	add	a2,a2,a1
   18f9e:	00d8b6b3          	sltu	a3,a7,a3
   18fa2:	96fa                	add	a3,a3,t5
   18fa4:	9646                	add	a2,a2,a7
   18fa6:	00ff37b3          	sltu	a5,t5,a5
   18faa:	9ab6                	add	s5,s5,a3
   18fac:	01e6bf33          	sltu	t5,a3,t5
   18fb0:	dab2                	sw	a2,116(sp)
   18fb2:	01163633          	sltu	a2,a2,a7
   18fb6:	034989b3          	mul	s3,s3,s4
   18fba:	01e7e5b3          	or	a1,a5,t5
   18fbe:	9656                	add	a2,a2,s5
   18fc0:	01055793          	srli	a5,a0,0x10
   18fc4:	00dab6b3          	sltu	a3,s5,a3
   18fc8:	01563ab3          	sltu	s5,a2,s5
   18fcc:	0156e6b3          	or	a3,a3,s5
   18fd0:	99f6                	add	s3,s3,t4
   18fd2:	97ce                	add	a5,a5,s3
   18fd4:	01d7f363          	bgeu	a5,t4,18fda <__multf3+0x718>
   18fd8:	995a                	add	s2,s2,s6
   18fda:	0107d893          	srli	a7,a5,0x10
   18fde:	95c6                	add	a1,a1,a7
   18fe0:	68c1                	lui	a7,0x10
   18fe2:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   18fe4:	0117f7b3          	and	a5,a5,a7
   18fe8:	07c2                	slli	a5,a5,0x10
   18fea:	01157533          	and	a0,a0,a7
   18fee:	97aa                	add	a5,a5,a0
   18ff0:	97b2                	add	a5,a5,a2
   18ff2:	96ae                	add	a3,a3,a1
   18ff4:	00c7b633          	sltu	a2,a5,a2
   18ff8:	9636                	add	a2,a2,a3
   18ffa:	dcbe                	sw	a5,120(sp)
   18ffc:	46e2                	lw	a3,24(sp)
   18ffe:	5782                	lw	a5,32(sp)
   19000:	964a                	add	a2,a2,s2
   19002:	0836                	slli	a6,a6,0xd
   19004:	8fd5                	or	a5,a5,a3
   19006:	46f2                	lw	a3,28(sp)
   19008:	deb2                	sw	a2,124(sp)
   1900a:	188c                	addi	a1,sp,112
   1900c:	8fd5                	or	a5,a5,a3
   1900e:	00f86833          	or	a6,a6,a5
   19012:	109c                	addi	a5,sp,96
   19014:	47d4                	lw	a3,12(a5)
   19016:	4b90                	lw	a2,16(a5)
   19018:	82cd                	srli	a3,a3,0x13
   1901a:	0636                	slli	a2,a2,0xd
   1901c:	8ed1                	or	a3,a3,a2
   1901e:	c394                	sw	a3,0(a5)
   19020:	0791                	addi	a5,a5,4
   19022:	fef599e3          	bne	a1,a5,19014 <__multf3+0x752>
   19026:	5786                	lw	a5,96(sp)
   19028:	01003833          	snez	a6,a6
   1902c:	56b6                	lw	a3,108(sp)
   1902e:	00f86833          	or	a6,a6,a5
   19032:	57a6                	lw	a5,104(sp)
   19034:	ceb6                	sw	a3,92(sp)
   19036:	c8c2                	sw	a6,80(sp)
   19038:	ccbe                	sw	a5,88(sp)
   1903a:	5796                	lw	a5,100(sp)
   1903c:	cabe                	sw	a5,84(sp)
   1903e:	00b69793          	slli	a5,a3,0xb
   19042:	0207d863          	bgez	a5,19072 <__multf3+0x7b0>
   19046:	087e                	slli	a6,a6,0x1f
   19048:	089c                	addi	a5,sp,80
   1904a:	08e8                	addi	a0,sp,92
   1904c:	4390                	lw	a2,0(a5)
   1904e:	43cc                	lw	a1,4(a5)
   19050:	8205                	srli	a2,a2,0x1
   19052:	05fe                	slli	a1,a1,0x1f
   19054:	8e4d                	or	a2,a2,a1
   19056:	c390                	sw	a2,0(a5)
   19058:	0791                	addi	a5,a5,4
   1905a:	fef519e3          	bne	a0,a5,1904c <__multf3+0x78a>
   1905e:	47c6                	lw	a5,80(sp)
   19060:	01003833          	snez	a6,a6
   19064:	8285                	srli	a3,a3,0x1
   19066:	0107e7b3          	or	a5,a5,a6
   1906a:	c8be                	sw	a5,80(sp)
   1906c:	47c2                	lw	a5,16(sp)
   1906e:	ceb6                	sw	a3,92(sp)
   19070:	ca3e                	sw	a5,20(sp)
   19072:	47d2                	lw	a5,20(sp)
   19074:	c83e                	sw	a5,16(sp)
   19076:	aa41                	j	19206 <__multf3+0x944>
   19078:	4901                	li	s2,0
   1907a:	4c05                	li	s8,1
   1907c:	b8d9                	j	18952 <__multf3+0x90>
   1907e:	4c09                	li	s8,2
   19080:	b8c9                	j	18952 <__multf3+0x90>
   19082:	017ae7b3          	or	a5,s5,s7
   19086:	0167e7b3          	or	a5,a5,s6
   1908a:	8fc9                	or	a5,a5,a0
   1908c:	10078263          	beqz	a5,19190 <__multf3+0x8ce>
   19090:	c93d                	beqz	a0,19106 <__multf3+0x844>
   19092:	1dd010ef          	jal	1aa6e <__clzsi2>
   19096:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   1909a:	4056d793          	srai	a5,a3,0x5
   1909e:	8afd                	andi	a3,a3,31
   190a0:	cac9                	beqz	a3,19132 <__multf3+0x870>
   190a2:	5671                	li	a2,-4
   190a4:	02c78633          	mul	a2,a5,a2
   190a8:	02000813          	li	a6,32
   190ac:	04010313          	addi	t1,sp,64
   190b0:	40d80833          	sub	a6,a6,a3
   190b4:	00c60713          	addi	a4,a2,12
   190b8:	971a                	add	a4,a4,t1
   190ba:	40c00633          	neg	a2,a2
   190be:	08e31a63          	bne	t1,a4,19152 <__multf3+0x890>
   190c2:	fff78713          	addi	a4,a5,-1
   190c6:	078a                	slli	a5,a5,0x2
   190c8:	1810                	addi	a2,sp,48
   190ca:	05078793          	addi	a5,a5,80
   190ce:	97b2                	add	a5,a5,a2
   190d0:	4606                	lw	a2,64(sp)
   190d2:	00d616b3          	sll	a3,a2,a3
   190d6:	fcd7a023          	sw	a3,-64(a5)
   190da:	00170793          	addi	a5,a4,1
   190de:	078a                	slli	a5,a5,0x2
   190e0:	46a1                	li	a3,8
   190e2:	0098                	addi	a4,sp,64
   190e4:	00d7e863          	bltu	a5,a3,190f4 <__multf3+0x832>
   190e8:	00072023          	sw	zero,0(a4)
   190ec:	00072223          	sw	zero,4(a4)
   190f0:	17e1                	addi	a5,a5,-8
   190f2:	00b8                	addi	a4,sp,72
   190f4:	4691                	li	a3,4
   190f6:	00d7e463          	bltu	a5,a3,190fe <__multf3+0x83c>
   190fa:	00072023          	sw	zero,0(a4)
   190fe:	77f1                	lui	a5,0xffffc
   19100:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffdf1e5>
   19102:	8f89                	sub	a5,a5,a0
   19104:	b25d                	j	18aaa <__multf3+0x1e8>
   19106:	000b0863          	beqz	s6,19116 <__multf3+0x854>
   1910a:	855a                	mv	a0,s6
   1910c:	163010ef          	jal	1aa6e <__clzsi2>
   19110:	02050513          	addi	a0,a0,32
   19114:	b749                	j	19096 <__multf3+0x7d4>
   19116:	000b8863          	beqz	s7,19126 <__multf3+0x864>
   1911a:	855e                	mv	a0,s7
   1911c:	153010ef          	jal	1aa6e <__clzsi2>
   19120:	04050513          	addi	a0,a0,64
   19124:	bf8d                	j	19096 <__multf3+0x7d4>
   19126:	8556                	mv	a0,s5
   19128:	147010ef          	jal	1aa6e <__clzsi2>
   1912c:	06050513          	addi	a0,a0,96
   19130:	b79d                	j	19096 <__multf3+0x7d4>
   19132:	5671                	li	a2,-4
   19134:	02c78633          	mul	a2,a5,a2
   19138:	00f8                	addi	a4,sp,76
   1913a:	468d                	li	a3,3
   1913c:	00c705b3          	add	a1,a4,a2
   19140:	418c                	lw	a1,0(a1)
   19142:	16fd                	addi	a3,a3,-1
   19144:	1771                	addi	a4,a4,-4
   19146:	c34c                	sw	a1,4(a4)
   19148:	fef6dae3          	bge	a3,a5,1913c <__multf3+0x87a>
   1914c:	fff78713          	addi	a4,a5,-1
   19150:	b769                	j	190da <__multf3+0x818>
   19152:	430c                	lw	a1,0(a4)
   19154:	ffc72883          	lw	a7,-4(a4)
   19158:	00c70e33          	add	t3,a4,a2
   1915c:	00d595b3          	sll	a1,a1,a3
   19160:	0108d8b3          	srl	a7,a7,a6
   19164:	0115e5b3          	or	a1,a1,a7
   19168:	00be2023          	sw	a1,0(t3)
   1916c:	1771                	addi	a4,a4,-4
   1916e:	bf81                	j	190be <__multf3+0x7fc>
   19170:	017aeab3          	or	s5,s5,s7
   19174:	016aeab3          	or	s5,s5,s6
   19178:	00aaeab3          	or	s5,s5,a0
   1917c:	4689                	li	a3,2
   1917e:	920a87e3          	beqz	s5,18aac <__multf3+0x1ea>
   19182:	0542                	slli	a0,a0,0x10
   19184:	8541                	srai	a0,a0,0x10
   19186:	468d                	li	a3,3
   19188:	920542e3          	bltz	a0,18aac <__multf3+0x1ea>
   1918c:	4441                	li	s0,16
   1918e:	ba39                	j	18aac <__multf3+0x1ea>
   19190:	4781                	li	a5,0
   19192:	4685                	li	a3,1
   19194:	ba21                	j	18aac <__multf3+0x1ea>
   19196:	4605                	li	a2,1
   19198:	00f617b3          	sll	a5,a2,a5
   1919c:	5307f613          	andi	a2,a5,1328
   191a0:	e231                	bnez	a2,191e4 <__multf3+0x922>
   191a2:	0887f613          	andi	a2,a5,136
   191a6:	e60d                	bnez	a2,191d0 <__multf3+0x90e>
   191a8:	2407f793          	andi	a5,a5,576
   191ac:	920783e3          	beqz	a5,18ad2 <__multf3+0x210>
   191b0:	4441                	li	s0,16
   191b2:	67a1                	lui	a5,0x8
   191b4:	cebe                	sw	a5,92(sp)
   191b6:	cc82                	sw	zero,88(sp)
   191b8:	ca82                	sw	zero,84(sp)
   191ba:	c882                	sw	zero,80(sp)
   191bc:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   191be:	4701                	li	a4,0
   191c0:	a8e1                	j	19298 <__multf3+0x9d6>
   191c2:	473d                	li	a4,15
   191c4:	fee787e3          	beq	a5,a4,191b2 <__multf3+0x8f0>
   191c8:	462d                	li	a2,11
   191ca:	874e                	mv	a4,s3
   191cc:	00c79c63          	bne	a5,a2,191e4 <__multf3+0x922>
   191d0:	8752                	mv	a4,s4
   191d2:	4786                	lw	a5,64(sp)
   191d4:	8c36                	mv	s8,a3
   191d6:	c8be                	sw	a5,80(sp)
   191d8:	4796                	lw	a5,68(sp)
   191da:	cabe                	sw	a5,84(sp)
   191dc:	47a6                	lw	a5,72(sp)
   191de:	ccbe                	sw	a5,88(sp)
   191e0:	47b6                	lw	a5,76(sp)
   191e2:	a801                	j	191f2 <__multf3+0x930>
   191e4:	57c2                	lw	a5,48(sp)
   191e6:	c8be                	sw	a5,80(sp)
   191e8:	57d2                	lw	a5,52(sp)
   191ea:	cabe                	sw	a5,84(sp)
   191ec:	57e2                	lw	a5,56(sp)
   191ee:	ccbe                	sw	a5,88(sp)
   191f0:	57f2                	lw	a5,60(sp)
   191f2:	cebe                	sw	a5,92(sp)
   191f4:	4789                	li	a5,2
   191f6:	34fc0d63          	beq	s8,a5,19550 <__multf3+0xc8e>
   191fa:	478d                	li	a5,3
   191fc:	fafc0be3          	beq	s8,a5,191b2 <__multf3+0x8f0>
   19200:	4785                	li	a5,1
   19202:	34fc0263          	beq	s8,a5,19546 <__multf3+0xc84>
   19206:	46c2                	lw	a3,16(sp)
   19208:	6791                	lui	a5,0x4
   1920a:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   1920c:	97b6                	add	a5,a5,a3
   1920e:	10f05763          	blez	a5,1931c <__multf3+0xa5a>
   19212:	4646                	lw	a2,80(sp)
   19214:	00767693          	andi	a3,a2,7
   19218:	c2a1                	beqz	a3,19258 <__multf3+0x996>
   1921a:	4509                	li	a0,2
   1921c:	46d6                	lw	a3,84(sp)
   1921e:	45f6                	lw	a1,92(sp)
   19220:	0ca48563          	beq	s1,a0,192ea <__multf3+0xa28>
   19224:	450d                	li	a0,3
   19226:	0aa48c63          	beq	s1,a0,192de <__multf3+0xa1c>
   1922a:	e48d                	bnez	s1,19254 <__multf3+0x992>
   1922c:	00f67513          	andi	a0,a2,15
   19230:	4811                	li	a6,4
   19232:	03050163          	beq	a0,a6,19254 <__multf3+0x992>
   19236:	0611                	addi	a2,a2,4
   19238:	c8b2                	sw	a2,80(sp)
   1923a:	00463613          	sltiu	a2,a2,4
   1923e:	96b2                	add	a3,a3,a2
   19240:	cab6                	sw	a3,84(sp)
   19242:	00c6b6b3          	sltu	a3,a3,a2
   19246:	4666                	lw	a2,88(sp)
   19248:	96b2                	add	a3,a3,a2
   1924a:	ccb6                	sw	a3,88(sp)
   1924c:	00c6b6b3          	sltu	a3,a3,a2
   19250:	96ae                	add	a3,a3,a1
   19252:	ceb6                	sw	a3,92(sp)
   19254:	00146413          	ori	s0,s0,1
   19258:	46f6                	lw	a3,92(sp)
   1925a:	00b69613          	slli	a2,a3,0xb
   1925e:	00065a63          	bgez	a2,19272 <__multf3+0x9b0>
   19262:	fff007b7          	lui	a5,0xfff00
   19266:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee31d3>
   19268:	8efd                	and	a3,a3,a5
   1926a:	ceb6                	sw	a3,92(sp)
   1926c:	46c2                	lw	a3,16(sp)
   1926e:	6791                	lui	a5,0x4
   19270:	97b6                	add	a5,a5,a3
   19272:	0894                	addi	a3,sp,80
   19274:	08e8                	addi	a0,sp,92
   19276:	4290                	lw	a2,0(a3)
   19278:	42cc                	lw	a1,4(a3)
   1927a:	820d                	srli	a2,a2,0x3
   1927c:	05f6                	slli	a1,a1,0x1d
   1927e:	8e4d                	or	a2,a2,a1
   19280:	c290                	sw	a2,0(a3)
   19282:	0691                	addi	a3,a3,4
   19284:	fed519e3          	bne	a0,a3,19276 <__multf3+0x9b4>
   19288:	6621                	lui	a2,0x8
   1928a:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   1928c:	46f6                	lw	a3,92(sp)
   1928e:	65a1                	lui	a1,0x8
   19290:	04f64f63          	blt	a2,a5,192ee <__multf3+0xa2c>
   19294:	828d                	srli	a3,a3,0x3
   19296:	ceb6                	sw	a3,92(sp)
   19298:	4576                	lw	a0,92(sp)
   1929a:	073e                	slli	a4,a4,0xf
   1929c:	8f5d                	or	a4,a4,a5
   1929e:	06a11623          	sh	a0,108(sp)
   192a2:	06e11723          	sh	a4,110(sp)
   192a6:	45c6                	lw	a1,80(sp)
   192a8:	4656                	lw	a2,84(sp)
   192aa:	46e6                	lw	a3,88(sp)
   192ac:	57b6                	lw	a5,108(sp)
   192ae:	c019                	beqz	s0,192b4 <__multf3+0x9f2>
   192b0:	00142073          	csrs	fflags,s0
   192b4:	4732                	lw	a4,12(sp)
   192b6:	50fa                	lw	ra,188(sp)
   192b8:	546a                	lw	s0,184(sp)
   192ba:	c30c                	sw	a1,0(a4)
   192bc:	c350                	sw	a2,4(a4)
   192be:	c714                	sw	a3,8(a4)
   192c0:	c75c                	sw	a5,12(a4)
   192c2:	54da                	lw	s1,180(sp)
   192c4:	594a                	lw	s2,176(sp)
   192c6:	59ba                	lw	s3,172(sp)
   192c8:	5a2a                	lw	s4,168(sp)
   192ca:	5a9a                	lw	s5,164(sp)
   192cc:	5b0a                	lw	s6,160(sp)
   192ce:	4bfa                	lw	s7,156(sp)
   192d0:	4c6a                	lw	s8,152(sp)
   192d2:	4cda                	lw	s9,148(sp)
   192d4:	4d4a                	lw	s10,144(sp)
   192d6:	4dba                	lw	s11,140(sp)
   192d8:	853a                	mv	a0,a4
   192da:	6129                	addi	sp,sp,192
   192dc:	8082                	ret
   192de:	fb3d                	bnez	a4,19254 <__multf3+0x992>
   192e0:	0621                	addi	a2,a2,8
   192e2:	c8b2                	sw	a2,80(sp)
   192e4:	00863613          	sltiu	a2,a2,8
   192e8:	bf99                	j	1923e <__multf3+0x97c>
   192ea:	d72d                	beqz	a4,19254 <__multf3+0x992>
   192ec:	bfd5                	j	192e0 <__multf3+0xa1e>
   192ee:	4789                	li	a5,2
   192f0:	02f48463          	beq	s1,a5,19318 <__multf3+0xa56>
   192f4:	478d                	li	a5,3
   192f6:	00f48763          	beq	s1,a5,19304 <__multf3+0xa42>
   192fa:	e491                	bnez	s1,19306 <__multf3+0xa44>
   192fc:	4681                	li	a3,0
   192fe:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   19302:	a021                	j	1930a <__multf3+0xa48>
   19304:	df65                	beqz	a4,192fc <__multf3+0xa3a>
   19306:	56fd                	li	a3,-1
   19308:	87b2                	mv	a5,a2
   1930a:	ceb6                	sw	a3,92(sp)
   1930c:	ccb6                	sw	a3,88(sp)
   1930e:	cab6                	sw	a3,84(sp)
   19310:	c8b6                	sw	a3,80(sp)
   19312:	00546413          	ori	s0,s0,5
   19316:	b749                	j	19298 <__multf3+0x9d6>
   19318:	f375                	bnez	a4,192fc <__multf3+0xa3a>
   1931a:	b7f5                	j	19306 <__multf3+0xa44>
   1931c:	4685                	li	a3,1
   1931e:	ebb9                	bnez	a5,19374 <__multf3+0xab2>
   19320:	4646                	lw	a2,80(sp)
   19322:	46f6                	lw	a3,92(sp)
   19324:	00767593          	andi	a1,a2,7
   19328:	c1b1                	beqz	a1,1936c <__multf3+0xaaa>
   1932a:	4809                	li	a6,2
   1932c:	45d6                	lw	a1,84(sp)
   1932e:	4566                	lw	a0,88(sp)
   19330:	00146413          	ori	s0,s0,1
   19334:	03048b63          	beq	s1,a6,1936a <__multf3+0xaa8>
   19338:	480d                	li	a6,3
   1933a:	03048363          	beq	s1,a6,19360 <__multf3+0xa9e>
   1933e:	e49d                	bnez	s1,1936c <__multf3+0xaaa>
   19340:	00f67813          	andi	a6,a2,15
   19344:	4891                	li	a7,4
   19346:	03180363          	beq	a6,a7,1936c <__multf3+0xaaa>
   1934a:	0611                	addi	a2,a2,4
   1934c:	00463613          	sltiu	a2,a2,4
   19350:	95b2                	add	a1,a1,a2
   19352:	00c5b5b3          	sltu	a1,a1,a2
   19356:	952e                	add	a0,a0,a1
   19358:	00b53533          	sltu	a0,a0,a1
   1935c:	96aa                	add	a3,a3,a0
   1935e:	a039                	j	1936c <__multf3+0xaaa>
   19360:	e711                	bnez	a4,1936c <__multf3+0xaaa>
   19362:	0621                	addi	a2,a2,8
   19364:	00863613          	sltiu	a2,a2,8
   19368:	b7e5                	j	19350 <__multf3+0xa8e>
   1936a:	ff65                	bnez	a4,19362 <__multf3+0xaa0>
   1936c:	82d1                	srli	a3,a3,0x14
   1936e:	0016c693          	xori	a3,a3,1
   19372:	8a85                	andi	a3,a3,1
   19374:	4605                	li	a2,1
   19376:	40f607b3          	sub	a5,a2,a5
   1937a:	07400593          	li	a1,116
   1937e:	18f5c163          	blt	a1,a5,19500 <__multf3+0xc3e>
   19382:	0890                	addi	a2,sp,80
   19384:	4057d593          	srai	a1,a5,0x5
   19388:	01f7f513          	andi	a0,a5,31
   1938c:	88b2                	mv	a7,a2
   1938e:	4781                	li	a5,0
   19390:	4801                	li	a6,0
   19392:	02b81763          	bne	a6,a1,193c0 <__multf3+0xafe>
   19396:	480d                	li	a6,3
   19398:	40b80833          	sub	a6,a6,a1
   1939c:	00259893          	slli	a7,a1,0x2
   193a0:	e51d                	bnez	a0,193ce <__multf3+0xb0c>
   193a2:	8332                	mv	t1,a2
   193a4:	01130e33          	add	t3,t1,a7
   193a8:	000e2e03          	lw	t3,0(t3)
   193ac:	0505                	addi	a0,a0,1
   193ae:	0311                	addi	t1,t1,4
   193b0:	ffc32e23          	sw	t3,-4(t1)
   193b4:	fea858e3          	bge	a6,a0,193a4 <__multf3+0xae2>
   193b8:	4511                	li	a0,4
   193ba:	40b505b3          	sub	a1,a0,a1
   193be:	a8a1                	j	19416 <__multf3+0xb54>
   193c0:	0008a303          	lw	t1,0(a7)
   193c4:	0805                	addi	a6,a6,1
   193c6:	0891                	addi	a7,a7,4
   193c8:	0067e7b3          	or	a5,a5,t1
   193cc:	b7d9                	j	19392 <__multf3+0xad0>
   193ce:	05088313          	addi	t1,a7,80
   193d2:	03010e13          	addi	t3,sp,48
   193d6:	9372                	add	t1,t1,t3
   193d8:	fd032303          	lw	t1,-48(t1)
   193dc:	02000e93          	li	t4,32
   193e0:	40ae8eb3          	sub	t4,t4,a0
   193e4:	01d31333          	sll	t1,t1,t4
   193e8:	0067e7b3          	or	a5,a5,t1
   193ec:	4f01                	li	t5,0
   193ee:	01160333          	add	t1,a2,a7
   193f2:	411008b3          	neg	a7,a7
   193f6:	0b0f4d63          	blt	t5,a6,194b0 <__multf3+0xbee>
   193fa:	4891                	li	a7,4
   193fc:	080a                	slli	a6,a6,0x2
   193fe:	40b885b3          	sub	a1,a7,a1
   19402:	05080813          	addi	a6,a6,80
   19406:	03010893          	addi	a7,sp,48
   1940a:	9846                	add	a6,a6,a7
   1940c:	48f6                	lw	a7,92(sp)
   1940e:	00a8d533          	srl	a0,a7,a0
   19412:	fca82823          	sw	a0,-48(a6)
   19416:	4511                	li	a0,4
   19418:	8d0d                	sub	a0,a0,a1
   1941a:	050a                	slli	a0,a0,0x2
   1941c:	058a                	slli	a1,a1,0x2
   1941e:	4821                	li	a6,8
   19420:	95b2                	add	a1,a1,a2
   19422:	01056863          	bltu	a0,a6,19432 <__multf3+0xb70>
   19426:	0005a023          	sw	zero,0(a1)
   1942a:	0005a223          	sw	zero,4(a1)
   1942e:	1561                	addi	a0,a0,-8
   19430:	05a1                	addi	a1,a1,8
   19432:	4811                	li	a6,4
   19434:	01056463          	bltu	a0,a6,1943c <__multf3+0xb7a>
   19438:	0005a023          	sw	zero,0(a1)
   1943c:	45c6                	lw	a1,80(sp)
   1943e:	00f037b3          	snez	a5,a5
   19442:	8fcd                	or	a5,a5,a1
   19444:	c8be                	sw	a5,80(sp)
   19446:	0077f593          	andi	a1,a5,7
   1944a:	c1a1                	beqz	a1,1948a <__multf3+0xbc8>
   1944c:	4509                	li	a0,2
   1944e:	45f6                	lw	a1,92(sp)
   19450:	08a48763          	beq	s1,a0,194de <__multf3+0xc1c>
   19454:	450d                	li	a0,3
   19456:	06a48e63          	beq	s1,a0,194d2 <__multf3+0xc10>
   1945a:	e495                	bnez	s1,19486 <__multf3+0xbc4>
   1945c:	00f7f513          	andi	a0,a5,15
   19460:	4811                	li	a6,4
   19462:	03050263          	beq	a0,a6,19486 <__multf3+0xbc4>
   19466:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   19468:	c8be                	sw	a5,80(sp)
   1946a:	0047b793          	sltiu	a5,a5,4
   1946e:	4556                	lw	a0,84(sp)
   19470:	97aa                	add	a5,a5,a0
   19472:	cabe                	sw	a5,84(sp)
   19474:	00a7b7b3          	sltu	a5,a5,a0
   19478:	4566                	lw	a0,88(sp)
   1947a:	97aa                	add	a5,a5,a0
   1947c:	ccbe                	sw	a5,88(sp)
   1947e:	00a7b7b3          	sltu	a5,a5,a0
   19482:	97ae                	add	a5,a5,a1
   19484:	cebe                	sw	a5,92(sp)
   19486:	00146413          	ori	s0,s0,1
   1948a:	45f6                	lw	a1,92(sp)
   1948c:	00c59793          	slli	a5,a1,0xc
   19490:	0407d963          	bgez	a5,194e2 <__multf3+0xc20>
   19494:	ce82                	sw	zero,92(sp)
   19496:	cc82                	sw	zero,88(sp)
   19498:	ca82                	sw	zero,84(sp)
   1949a:	c882                	sw	zero,80(sp)
   1949c:	00146413          	ori	s0,s0,1
   194a0:	4785                	li	a5,1
   194a2:	de068be3          	beqz	a3,19298 <__multf3+0x9d6>
   194a6:	00147693          	andi	a3,s0,1
   194aa:	0686                	slli	a3,a3,0x1
   194ac:	8c55                	or	s0,s0,a3
   194ae:	b3ed                	j	19298 <__multf3+0x9d6>
   194b0:	00032e03          	lw	t3,0(t1)
   194b4:	00432f83          	lw	t6,4(t1)
   194b8:	011302b3          	add	t0,t1,a7
   194bc:	00ae5e33          	srl	t3,t3,a0
   194c0:	01df9fb3          	sll	t6,t6,t4
   194c4:	01fe6e33          	or	t3,t3,t6
   194c8:	01c2a023          	sw	t3,0(t0)
   194cc:	0f05                	addi	t5,t5,1
   194ce:	0311                	addi	t1,t1,4
   194d0:	b71d                	j	193f6 <__multf3+0xb34>
   194d2:	fb55                	bnez	a4,19486 <__multf3+0xbc4>
   194d4:	07a1                	addi	a5,a5,8
   194d6:	c8be                	sw	a5,80(sp)
   194d8:	0087b793          	sltiu	a5,a5,8
   194dc:	bf49                	j	1946e <__multf3+0xbac>
   194de:	d745                	beqz	a4,19486 <__multf3+0xbc4>
   194e0:	bfd5                	j	194d4 <__multf3+0xc12>
   194e2:	00c60813          	addi	a6,a2,12
   194e6:	421c                	lw	a5,0(a2)
   194e8:	4248                	lw	a0,4(a2)
   194ea:	838d                	srli	a5,a5,0x3
   194ec:	0576                	slli	a0,a0,0x1d
   194ee:	8fc9                	or	a5,a5,a0
   194f0:	c21c                	sw	a5,0(a2)
   194f2:	0611                	addi	a2,a2,4
   194f4:	fec819e3          	bne	a6,a2,194e6 <__multf3+0xc24>
   194f8:	818d                	srli	a1,a1,0x3
   194fa:	ceae                	sw	a1,92(sp)
   194fc:	4781                	li	a5,0
   194fe:	b755                	j	194a2 <__multf3+0xbe0>
   19500:	46d6                	lw	a3,84(sp)
   19502:	47c6                	lw	a5,80(sp)
   19504:	8fd5                	or	a5,a5,a3
   19506:	46e6                	lw	a3,88(sp)
   19508:	8fd5                	or	a5,a5,a3
   1950a:	46f6                	lw	a3,92(sp)
   1950c:	8fd5                	or	a5,a5,a3
   1950e:	c395                	beqz	a5,19532 <__multf3+0xc70>
   19510:	ce82                	sw	zero,92(sp)
   19512:	cc82                	sw	zero,88(sp)
   19514:	ca82                	sw	zero,84(sp)
   19516:	c8b2                	sw	a2,80(sp)
   19518:	4789                	li	a5,2
   1951a:	00146413          	ori	s0,s0,1
   1951e:	02f48263          	beq	s1,a5,19542 <__multf3+0xc80>
   19522:	478d                	li	a5,3
   19524:	00f48b63          	beq	s1,a5,1953a <__multf3+0xc78>
   19528:	4795                	li	a5,5
   1952a:	c891                	beqz	s1,1953e <__multf3+0xc7c>
   1952c:	47c6                	lw	a5,80(sp)
   1952e:	838d                	srli	a5,a5,0x3
   19530:	c8be                	sw	a5,80(sp)
   19532:	00246413          	ori	s0,s0,2
   19536:	4781                	li	a5,0
   19538:	b385                	j	19298 <__multf3+0x9d6>
   1953a:	fb6d                	bnez	a4,1952c <__multf3+0xc6a>
   1953c:	47a5                	li	a5,9
   1953e:	c8be                	sw	a5,80(sp)
   19540:	b7f5                	j	1952c <__multf3+0xc6a>
   19542:	ff6d                	bnez	a4,1953c <__multf3+0xc7a>
   19544:	b7e5                	j	1952c <__multf3+0xc6a>
   19546:	ce82                	sw	zero,92(sp)
   19548:	cc82                	sw	zero,88(sp)
   1954a:	ca82                	sw	zero,84(sp)
   1954c:	c882                	sw	zero,80(sp)
   1954e:	b7e5                	j	19536 <__multf3+0xc74>
   19550:	67a1                	lui	a5,0x8
   19552:	ce82                	sw	zero,92(sp)
   19554:	cc82                	sw	zero,88(sp)
   19556:	ca82                	sw	zero,84(sp)
   19558:	c882                	sw	zero,80(sp)
   1955a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1955c:	bb35                	j	19298 <__multf3+0x9d6>

0001955e <__subtf3>:
   1955e:	7159                	addi	sp,sp,-112
   19560:	d2a6                	sw	s1,100(sp)
   19562:	d0ca                	sw	s2,96(sp)
   19564:	cece                	sw	s3,92(sp)
   19566:	c2e6                	sw	s9,68(sp)
   19568:	d686                	sw	ra,108(sp)
   1956a:	d4a2                	sw	s0,104(sp)
   1956c:	ccd2                	sw	s4,88(sp)
   1956e:	cad6                	sw	s5,84(sp)
   19570:	c8da                	sw	s6,80(sp)
   19572:	c6de                	sw	s7,76(sp)
   19574:	c4e2                	sw	s8,72(sp)
   19576:	892a                	mv	s2,a0
   19578:	4198                	lw	a4,0(a1)
   1957a:	41d4                	lw	a3,4(a1)
   1957c:	459c                	lw	a5,8(a1)
   1957e:	00c5a983          	lw	s3,12(a1)
   19582:	4204                	lw	s1,0(a2)
   19584:	00462883          	lw	a7,4(a2)
   19588:	00862803          	lw	a6,8(a2)
   1958c:	00c62c83          	lw	s9,12(a2)
   19590:	00202a73          	frrm	s4
   19594:	dc3e                	sw	a5,56(sp)
   19596:	c43e                	sw	a5,8(sp)
   19598:	01099793          	slli	a5,s3,0x10
   1959c:	83c1                	srli	a5,a5,0x10
   1959e:	00199413          	slli	s0,s3,0x1
   195a2:	858a                	mv	a1,sp
   195a4:	de4e                	sw	s3,60(sp)
   195a6:	c63e                	sw	a5,12(sp)
   195a8:	d83a                	sw	a4,48(sp)
   195aa:	da36                	sw	a3,52(sp)
   195ac:	c03a                	sw	a4,0(sp)
   195ae:	c236                	sw	a3,4(sp)
   195b0:	8045                	srli	s0,s0,0x11
   195b2:	01f9d993          	srli	s3,s3,0x1f
   195b6:	ff410313          	addi	t1,sp,-12
   195ba:	87ae                	mv	a5,a1
   195bc:	852e                	mv	a0,a1
   195be:	47d4                	lw	a3,12(a5)
   195c0:	4790                	lw	a2,8(a5)
   195c2:	17f1                	addi	a5,a5,-4
   195c4:	068e                	slli	a3,a3,0x3
   195c6:	8275                	srli	a2,a2,0x1d
   195c8:	8ed1                	or	a3,a3,a2
   195ca:	cb94                	sw	a3,16(a5)
   195cc:	fef319e3          	bne	t1,a5,195be <__subtf3+0x60>
   195d0:	010c9793          	slli	a5,s9,0x10
   195d4:	83c1                	srli	a5,a5,0x10
   195d6:	001c9a93          	slli	s5,s9,0x1
   195da:	070e                	slli	a4,a4,0x3
   195dc:	dc42                	sw	a6,56(sp)
   195de:	cc42                	sw	a6,24(sp)
   195e0:	01010813          	addi	a6,sp,16
   195e4:	da46                	sw	a7,52(sp)
   195e6:	de66                	sw	s9,60(sp)
   195e8:	ca46                	sw	a7,20(sp)
   195ea:	ce3e                	sw	a5,28(sp)
   195ec:	c03a                	sw	a4,0(sp)
   195ee:	d826                	sw	s1,48(sp)
   195f0:	c826                	sw	s1,16(sp)
   195f2:	011ada93          	srli	s5,s5,0x11
   195f6:	01fcdc93          	srli	s9,s9,0x1f
   195fa:	00410893          	addi	a7,sp,4
   195fe:	87c2                	mv	a5,a6
   19600:	8e42                	mv	t3,a6
   19602:	47d4                	lw	a3,12(a5)
   19604:	4790                	lw	a2,8(a5)
   19606:	17f1                	addi	a5,a5,-4
   19608:	068e                	slli	a3,a3,0x3
   1960a:	8275                	srli	a2,a2,0x1d
   1960c:	8ed1                	or	a3,a3,a2
   1960e:	cb94                	sw	a3,16(a5)
   19610:	fef899e3          	bne	a7,a5,19602 <__subtf3+0xa4>
   19614:	048e                	slli	s1,s1,0x3
   19616:	67a1                	lui	a5,0x8
   19618:	c826                	sw	s1,16(sp)
   1961a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1961c:	00fa9963          	bne	s5,a5,1962e <__subtf3+0xd0>
   19620:	46e2                	lw	a3,24(sp)
   19622:	47d2                	lw	a5,20(sp)
   19624:	8fd5                	or	a5,a5,a3
   19626:	46f2                	lw	a3,28(sp)
   19628:	8fd5                	or	a5,a5,a3
   1962a:	8fc5                	or	a5,a5,s1
   1962c:	e399                	bnez	a5,19632 <__subtf3+0xd4>
   1962e:	001ccc93          	xori	s9,s9,1
   19632:	415407b3          	sub	a5,s0,s5
   19636:	5d3c9c63          	bne	s9,s3,19c0e <__subtf3+0x6b0>
   1963a:	24f05963          	blez	a5,1988c <__subtf3+0x32e>
   1963e:	4312                	lw	t1,4(sp)
   19640:	48a2                	lw	a7,8(sp)
   19642:	45b2                	lw	a1,12(sp)
   19644:	080a9963          	bnez	s5,196d6 <__subtf3+0x178>
   19648:	4552                	lw	a0,20(sp)
   1964a:	46e2                	lw	a3,24(sp)
   1964c:	4ef2                	lw	t4,28(sp)
   1964e:	00d56633          	or	a2,a0,a3
   19652:	01d66633          	or	a2,a2,t4
   19656:	8e45                	or	a2,a2,s1
   19658:	e61d                	bnez	a2,19686 <__subtf3+0x128>
   1965a:	66a1                	lui	a3,0x8
   1965c:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1965e:	00d79e63          	bne	a5,a3,1967a <__subtf3+0x11c>
   19662:	011366b3          	or	a3,t1,a7
   19666:	8ecd                	or	a3,a3,a1
   19668:	8ed9                	or	a3,a3,a4
   1966a:	ca81                	beqz	a3,1967a <__subtf3+0x11c>
   1966c:	0125da93          	srli	s5,a1,0x12
   19670:	001aca93          	xori	s5,s5,1
   19674:	001afa93          	andi	s5,s5,1
   19678:	0a92                	slli	s5,s5,0x4
   1967a:	d03a                	sw	a4,32(sp)
   1967c:	d21a                	sw	t1,36(sp)
   1967e:	d446                	sw	a7,40(sp)
   19680:	d62e                	sw	a1,44(sp)
   19682:	8456                	mv	s0,s5
   19684:	ac99                	j	198da <__subtf3+0x37c>
   19686:	fff78613          	addi	a2,a5,-1
   1968a:	ea0d                	bnez	a2,196bc <__subtf3+0x15e>
   1968c:	94ba                	add	s1,s1,a4
   1968e:	932a                	add	t1,t1,a0
   19690:	d026                	sw	s1,32(sp)
   19692:	00e4b4b3          	sltu	s1,s1,a4
   19696:	949a                	add	s1,s1,t1
   19698:	d226                	sw	s1,36(sp)
   1969a:	00a33533          	sltu	a0,t1,a0
   1969e:	0064b4b3          	sltu	s1,s1,t1
   196a2:	98b6                	add	a7,a7,a3
   196a4:	8d45                	or	a0,a0,s1
   196a6:	9546                	add	a0,a0,a7
   196a8:	d42a                	sw	a0,40(sp)
   196aa:	00d8b733          	sltu	a4,a7,a3
   196ae:	01153533          	sltu	a0,a0,a7
   196b2:	8f49                	or	a4,a4,a0
   196b4:	9eae                	add	t4,t4,a1
   196b6:	9776                	add	a4,a4,t4
   196b8:	4785                	li	a5,1
   196ba:	a299                	j	19800 <__subtf3+0x2a2>
   196bc:	66a1                	lui	a3,0x8
   196be:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   196c0:	fad781e3          	beq	a5,a3,19662 <__subtf3+0x104>
   196c4:	07400793          	li	a5,116
   196c8:	04c7d863          	bge	a5,a2,19718 <__subtf3+0x1ba>
   196cc:	ce02                	sw	zero,28(sp)
   196ce:	cc02                	sw	zero,24(sp)
   196d0:	ca02                	sw	zero,20(sp)
   196d2:	4785                	li	a5,1
   196d4:	a8dd                	j	197ca <__subtf3+0x26c>
   196d6:	66a1                	lui	a3,0x8
   196d8:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   196da:	02d41563          	bne	s0,a3,19704 <__subtf3+0x1a6>
   196de:	011367b3          	or	a5,t1,a7
   196e2:	8fcd                	or	a5,a5,a1
   196e4:	8fd9                	or	a5,a5,a4
   196e6:	4681                	li	a3,0
   196e8:	c799                	beqz	a5,196f6 <__subtf3+0x198>
   196ea:	0125d693          	srli	a3,a1,0x12
   196ee:	0016c693          	xori	a3,a3,1
   196f2:	8a85                	andi	a3,a3,1
   196f4:	0692                	slli	a3,a3,0x4
   196f6:	d03a                	sw	a4,32(sp)
   196f8:	d21a                	sw	t1,36(sp)
   196fa:	d446                	sw	a7,40(sp)
   196fc:	d62e                	sw	a1,44(sp)
   196fe:	87a2                	mv	a5,s0
   19700:	8436                	mv	s0,a3
   19702:	aae1                	j	198da <__subtf3+0x37c>
   19704:	46f2                	lw	a3,28(sp)
   19706:	00080637          	lui	a2,0x80
   1970a:	8ed1                	or	a3,a3,a2
   1970c:	ce36                	sw	a3,28(sp)
   1970e:	07400693          	li	a3,116
   19712:	faf6cde3          	blt	a3,a5,196cc <__subtf3+0x16e>
   19716:	863e                	mv	a2,a5
   19718:	40565693          	srai	a3,a2,0x5
   1971c:	8ec2                	mv	t4,a6
   1971e:	8a7d                	andi	a2,a2,31
   19720:	4781                	li	a5,0
   19722:	4501                	li	a0,0
   19724:	02d51563          	bne	a0,a3,1974e <__subtf3+0x1f0>
   19728:	450d                	li	a0,3
   1972a:	8d15                	sub	a0,a0,a3
   1972c:	00269e93          	slli	t4,a3,0x2
   19730:	e615                	bnez	a2,1975c <__subtf3+0x1fe>
   19732:	01d80f33          	add	t5,a6,t4
   19736:	000f2f03          	lw	t5,0(t5)
   1973a:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x631d5>
   1973c:	0811                	addi	a6,a6,4
   1973e:	ffe82e23          	sw	t5,-4(a6)
   19742:	fec558e3          	bge	a0,a2,19732 <__subtf3+0x1d4>
   19746:	4611                	li	a2,4
   19748:	40d606b3          	sub	a3,a2,a3
   1974c:	a881                	j	1979c <__subtf3+0x23e>
   1974e:	000eaf03          	lw	t5,0(t4)
   19752:	0505                	addi	a0,a0,1
   19754:	0e91                	addi	t4,t4,4
   19756:	01e7e7b3          	or	a5,a5,t5
   1975a:	b7e9                	j	19724 <__subtf3+0x1c6>
   1975c:	040e8493          	addi	s1,t4,64
   19760:	00248f33          	add	t5,s1,sp
   19764:	fd0f2f03          	lw	t5,-48(t5)
   19768:	02000393          	li	t2,32
   1976c:	40c383b3          	sub	t2,t2,a2
   19770:	007f1f33          	sll	t5,t5,t2
   19774:	9876                	add	a6,a6,t4
   19776:	01e7e7b3          	or	a5,a5,t5
   1977a:	41d00eb3          	neg	t4,t4
   1977e:	4f81                	li	t6,0
   19780:	0eafc563          	blt	t6,a0,1986a <__subtf3+0x30c>
   19784:	4811                	li	a6,4
   19786:	40d806b3          	sub	a3,a6,a3
   1978a:	4872                	lw	a6,28(sp)
   1978c:	050a                	slli	a0,a0,0x2
   1978e:	04050513          	addi	a0,a0,64
   19792:	950a                	add	a0,a0,sp
   19794:	00c85633          	srl	a2,a6,a2
   19798:	fcc52823          	sw	a2,-48(a0)
   1979c:	4611                	li	a2,4
   1979e:	8e15                	sub	a2,a2,a3
   197a0:	060a                	slli	a2,a2,0x2
   197a2:	068a                	slli	a3,a3,0x2
   197a4:	4521                	li	a0,8
   197a6:	96f2                	add	a3,a3,t3
   197a8:	00a66863          	bltu	a2,a0,197b8 <__subtf3+0x25a>
   197ac:	0006a023          	sw	zero,0(a3)
   197b0:	0006a223          	sw	zero,4(a3)
   197b4:	1661                	addi	a2,a2,-8
   197b6:	06a1                	addi	a3,a3,8
   197b8:	4511                	li	a0,4
   197ba:	00a66463          	bltu	a2,a0,197c2 <__subtf3+0x264>
   197be:	0006a023          	sw	zero,0(a3)
   197c2:	46c2                	lw	a3,16(sp)
   197c4:	00f037b3          	snez	a5,a5
   197c8:	8fd5                	or	a5,a5,a3
   197ca:	46d2                	lw	a3,20(sp)
   197cc:	c83e                	sw	a5,16(sp)
   197ce:	97ba                	add	a5,a5,a4
   197d0:	9336                	add	t1,t1,a3
   197d2:	d03e                	sw	a5,32(sp)
   197d4:	00e7b7b3          	sltu	a5,a5,a4
   197d8:	4762                	lw	a4,24(sp)
   197da:	979a                	add	a5,a5,t1
   197dc:	d23e                	sw	a5,36(sp)
   197de:	00d336b3          	sltu	a3,t1,a3
   197e2:	0067b7b3          	sltu	a5,a5,t1
   197e6:	98ba                	add	a7,a7,a4
   197e8:	8fd5                	or	a5,a5,a3
   197ea:	97c6                	add	a5,a5,a7
   197ec:	d43e                	sw	a5,40(sp)
   197ee:	00e8b733          	sltu	a4,a7,a4
   197f2:	0117b7b3          	sltu	a5,a5,a7
   197f6:	8f5d                	or	a4,a4,a5
   197f8:	47f2                	lw	a5,28(sp)
   197fa:	97ae                	add	a5,a5,a1
   197fc:	973e                	add	a4,a4,a5
   197fe:	87a2                	mv	a5,s0
   19800:	d63a                	sw	a4,44(sp)
   19802:	00c71693          	slli	a3,a4,0xc
   19806:	4401                	li	s0,0
   19808:	0c06d963          	bgez	a3,198da <__subtf3+0x37c>
   1980c:	5602                	lw	a2,32(sp)
   1980e:	fff806b7          	lui	a3,0xfff80
   19812:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff631d3>
   19814:	8f75                	and	a4,a4,a3
   19816:	d63a                	sw	a4,44(sp)
   19818:	0785                	addi	a5,a5,1
   1981a:	067e                	slli	a2,a2,0x1f
   1981c:	1014                	addi	a3,sp,32
   1981e:	02c10813          	addi	a6,sp,44
   19822:	428c                	lw	a1,0(a3)
   19824:	42c8                	lw	a0,4(a3)
   19826:	8185                	srli	a1,a1,0x1
   19828:	057e                	slli	a0,a0,0x1f
   1982a:	8dc9                	or	a1,a1,a0
   1982c:	c28c                	sw	a1,0(a3)
   1982e:	0691                	addi	a3,a3,4
   19830:	fed819e3          	bne	a6,a3,19822 <__subtf3+0x2c4>
   19834:	5682                	lw	a3,32(sp)
   19836:	8305                	srli	a4,a4,0x1
   19838:	d63a                	sw	a4,44(sp)
   1983a:	00c03733          	snez	a4,a2
   1983e:	8f55                	or	a4,a4,a3
   19840:	d03a                	sw	a4,32(sp)
   19842:	6721                	lui	a4,0x8
   19844:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19846:	4401                	li	s0,0
   19848:	08e79963          	bne	a5,a4,198da <__subtf3+0x37c>
   1984c:	3a0a0963          	beqz	s4,19bfe <__subtf3+0x6a0>
   19850:	478d                	li	a5,3
   19852:	3afa1163          	bne	s4,a5,19bf4 <__subtf3+0x696>
   19856:	3a098463          	beqz	s3,19bfe <__subtf3+0x6a0>
   1985a:	57fd                	li	a5,-1
   1985c:	d63e                	sw	a5,44(sp)
   1985e:	d43e                	sw	a5,40(sp)
   19860:	d23e                	sw	a5,36(sp)
   19862:	d03e                	sw	a5,32(sp)
   19864:	67a1                	lui	a5,0x8
   19866:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   19868:	a64d                	j	19c0a <__subtf3+0x6ac>
   1986a:	00082f03          	lw	t5,0(a6)
   1986e:	00482283          	lw	t0,4(a6)
   19872:	01d804b3          	add	s1,a6,t4
   19876:	00cf5f33          	srl	t5,t5,a2
   1987a:	007292b3          	sll	t0,t0,t2
   1987e:	005f6f33          	or	t5,t5,t0
   19882:	01e4a023          	sw	t5,0(s1)
   19886:	0f85                	addi	t6,t6,1
   19888:	0811                	addi	a6,a6,4
   1988a:	bddd                	j	19780 <__subtf3+0x222>
   1988c:	4bd2                	lw	s7,20(sp)
   1988e:	4c62                	lw	s8,24(sp)
   19890:	4b72                	lw	s6,28(sp)
   19892:	1e078363          	beqz	a5,19a78 <__subtf3+0x51a>
   19896:	408a87b3          	sub	a5,s5,s0
   1989a:	e859                	bnez	s0,19930 <__subtf3+0x3d2>
   1989c:	4612                	lw	a2,4(sp)
   1989e:	46a2                	lw	a3,8(sp)
   198a0:	48b2                	lw	a7,12(sp)
   198a2:	00d66833          	or	a6,a2,a3
   198a6:	01186833          	or	a6,a6,a7
   198aa:	00e86833          	or	a6,a6,a4
   198ae:	02081963          	bnez	a6,198e0 <__subtf3+0x382>
   198b2:	6721                	lui	a4,0x8
   198b4:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   198b6:	00e79e63          	bne	a5,a4,198d2 <__subtf3+0x374>
   198ba:	018be733          	or	a4,s7,s8
   198be:	01676733          	or	a4,a4,s6
   198c2:	8f45                	or	a4,a4,s1
   198c4:	c719                	beqz	a4,198d2 <__subtf3+0x374>
   198c6:	012b5413          	srli	s0,s6,0x12
   198ca:	00144413          	xori	s0,s0,1
   198ce:	8805                	andi	s0,s0,1
   198d0:	0412                	slli	s0,s0,0x4
   198d2:	d026                	sw	s1,32(sp)
   198d4:	d25e                	sw	s7,36(sp)
   198d6:	d462                	sw	s8,40(sp)
   198d8:	d65a                	sw	s6,44(sp)
   198da:	4681                	li	a3,0
   198dc:	3fb0006f          	j	1a4d6 <__subtf3+0xf78>
   198e0:	fff78813          	addi	a6,a5,-1
   198e4:	02081963          	bnez	a6,19916 <__subtf3+0x3b8>
   198e8:	94ba                	add	s1,s1,a4
   198ea:	9bb2                	add	s7,s7,a2
   198ec:	d026                	sw	s1,32(sp)
   198ee:	00e4b4b3          	sltu	s1,s1,a4
   198f2:	94de                	add	s1,s1,s7
   198f4:	d226                	sw	s1,36(sp)
   198f6:	00cbb633          	sltu	a2,s7,a2
   198fa:	0174b4b3          	sltu	s1,s1,s7
   198fe:	9c36                	add	s8,s8,a3
   19900:	8e45                	or	a2,a2,s1
   19902:	9662                	add	a2,a2,s8
   19904:	d432                	sw	a2,40(sp)
   19906:	00dc3733          	sltu	a4,s8,a3
   1990a:	01863633          	sltu	a2,a2,s8
   1990e:	8f51                	or	a4,a4,a2
   19910:	98da                	add	a7,a7,s6
   19912:	9746                	add	a4,a4,a7
   19914:	b355                	j	196b8 <__subtf3+0x15a>
   19916:	6721                	lui	a4,0x8
   19918:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1991a:	fae780e3          	beq	a5,a4,198ba <__subtf3+0x35c>
   1991e:	07400793          	li	a5,116
   19922:	0507d863          	bge	a5,a6,19972 <__subtf3+0x414>
   19926:	c602                	sw	zero,12(sp)
   19928:	c402                	sw	zero,8(sp)
   1992a:	c202                	sw	zero,4(sp)
   1992c:	4785                	li	a5,1
   1992e:	a8cd                	j	19a20 <__subtf3+0x4c2>
   19930:	6721                	lui	a4,0x8
   19932:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19934:	02ea9563          	bne	s5,a4,1995e <__subtf3+0x400>
   19938:	018be7b3          	or	a5,s7,s8
   1993c:	0167e7b3          	or	a5,a5,s6
   19940:	8fc5                	or	a5,a5,s1
   19942:	4401                	li	s0,0
   19944:	c799                	beqz	a5,19952 <__subtf3+0x3f4>
   19946:	012b5413          	srli	s0,s6,0x12
   1994a:	00144413          	xori	s0,s0,1
   1994e:	8805                	andi	s0,s0,1
   19950:	0412                	slli	s0,s0,0x4
   19952:	d026                	sw	s1,32(sp)
   19954:	d25e                	sw	s7,36(sp)
   19956:	d462                	sw	s8,40(sp)
   19958:	d65a                	sw	s6,44(sp)
   1995a:	87d6                	mv	a5,s5
   1995c:	bfbd                	j	198da <__subtf3+0x37c>
   1995e:	4732                	lw	a4,12(sp)
   19960:	000806b7          	lui	a3,0x80
   19964:	8f55                	or	a4,a4,a3
   19966:	c63a                	sw	a4,12(sp)
   19968:	07400713          	li	a4,116
   1996c:	faf74de3          	blt	a4,a5,19926 <__subtf3+0x3c8>
   19970:	883e                	mv	a6,a5
   19972:	02000713          	li	a4,32
   19976:	02e84733          	div	a4,a6,a4
   1997a:	86ae                	mv	a3,a1
   1997c:	4401                	li	s0,0
   1997e:	4781                	li	a5,0
   19980:	02e7c663          	blt	a5,a4,199ac <__subtf3+0x44e>
   19984:	478d                	li	a5,3
   19986:	01f87893          	andi	a7,a6,31
   1998a:	8f99                	sub	a5,a5,a4
   1998c:	00271613          	slli	a2,a4,0x2
   19990:	02089363          	bnez	a7,199b6 <__subtf3+0x458>
   19994:	00c586b3          	add	a3,a1,a2
   19998:	4294                	lw	a3,0(a3)
   1999a:	0885                	addi	a7,a7,1
   1999c:	c194                	sw	a3,0(a1)
   1999e:	0591                	addi	a1,a1,4
   199a0:	ff17dae3          	bge	a5,a7,19994 <__subtf3+0x436>
   199a4:	4791                	li	a5,4
   199a6:	40e78733          	sub	a4,a5,a4
   199aa:	a899                	j	19a00 <__subtf3+0x4a2>
   199ac:	4290                	lw	a2,0(a3)
   199ae:	0785                	addi	a5,a5,1
   199b0:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x631d8>
   199b2:	8c51                	or	s0,s0,a2
   199b4:	b7f1                	j	19980 <__subtf3+0x422>
   199b6:	02000693          	li	a3,32
   199ba:	02d86833          	rem	a6,a6,a3
   199be:	41068833          	sub	a6,a3,a6
   199c2:	86ba                	mv	a3,a4
   199c4:	00075363          	bgez	a4,199ca <__subtf3+0x46c>
   199c8:	4681                	li	a3,0
   199ca:	068a                	slli	a3,a3,0x2
   199cc:	04068693          	addi	a3,a3,64
   199d0:	968a                	add	a3,a3,sp
   199d2:	fc06a683          	lw	a3,-64(a3)
   199d6:	95b2                	add	a1,a1,a2
   199d8:	4301                	li	t1,0
   199da:	010696b3          	sll	a3,a3,a6
   199de:	8c55                	or	s0,s0,a3
   199e0:	40c00633          	neg	a2,a2
   199e4:	06f34a63          	blt	t1,a5,19a58 <__subtf3+0x4fa>
   199e8:	4691                	li	a3,4
   199ea:	40e68733          	sub	a4,a3,a4
   199ee:	46b2                	lw	a3,12(sp)
   199f0:	078a                	slli	a5,a5,0x2
   199f2:	04078793          	addi	a5,a5,64
   199f6:	978a                	add	a5,a5,sp
   199f8:	0116d6b3          	srl	a3,a3,a7
   199fc:	fcd7a023          	sw	a3,-64(a5)
   19a00:	00572793          	slti	a5,a4,5
   19a04:	4601                	li	a2,0
   19a06:	c781                	beqz	a5,19a0e <__subtf3+0x4b0>
   19a08:	4611                	li	a2,4
   19a0a:	8e19                	sub	a2,a2,a4
   19a0c:	060a                	slli	a2,a2,0x2
   19a0e:	070a                	slli	a4,a4,0x2
   19a10:	953a                	add	a0,a0,a4
   19a12:	4581                	li	a1,0
   19a14:	a93f70ef          	jal	114a6 <memset>
   19a18:	4702                	lw	a4,0(sp)
   19a1a:	008037b3          	snez	a5,s0
   19a1e:	8fd9                	or	a5,a5,a4
   19a20:	4692                	lw	a3,4(sp)
   19a22:	c03e                	sw	a5,0(sp)
   19a24:	97a6                	add	a5,a5,s1
   19a26:	9bb6                	add	s7,s7,a3
   19a28:	4722                	lw	a4,8(sp)
   19a2a:	d03e                	sw	a5,32(sp)
   19a2c:	0097b7b3          	sltu	a5,a5,s1
   19a30:	97de                	add	a5,a5,s7
   19a32:	d23e                	sw	a5,36(sp)
   19a34:	00dbb6b3          	sltu	a3,s7,a3
   19a38:	0177b7b3          	sltu	a5,a5,s7
   19a3c:	9c3a                	add	s8,s8,a4
   19a3e:	8fd5                	or	a5,a5,a3
   19a40:	97e2                	add	a5,a5,s8
   19a42:	d43e                	sw	a5,40(sp)
   19a44:	00ec3733          	sltu	a4,s8,a4
   19a48:	0187b7b3          	sltu	a5,a5,s8
   19a4c:	8f5d                	or	a4,a4,a5
   19a4e:	47b2                	lw	a5,12(sp)
   19a50:	97da                	add	a5,a5,s6
   19a52:	973e                	add	a4,a4,a5
   19a54:	87d6                	mv	a5,s5
   19a56:	b36d                	j	19800 <__subtf3+0x2a2>
   19a58:	4194                	lw	a3,0(a1)
   19a5a:	0045ae03          	lw	t3,4(a1)
   19a5e:	00c58eb3          	add	t4,a1,a2
   19a62:	0116d6b3          	srl	a3,a3,a7
   19a66:	010e1e33          	sll	t3,t3,a6
   19a6a:	01c6e6b3          	or	a3,a3,t3
   19a6e:	00dea023          	sw	a3,0(t4)
   19a72:	0305                	addi	t1,t1,1
   19a74:	0591                	addi	a1,a1,4
   19a76:	b7bd                	j	199e4 <__subtf3+0x486>
   19a78:	00140793          	addi	a5,s0,1
   19a7c:	01179513          	slli	a0,a5,0x11
   19a80:	8149                	srli	a0,a0,0x12
   19a82:	4612                	lw	a2,4(sp)
   19a84:	46a2                	lw	a3,8(sp)
   19a86:	45b2                	lw	a1,12(sp)
   19a88:	10051c63          	bnez	a0,19ba0 <__subtf3+0x642>
   19a8c:	00d667b3          	or	a5,a2,a3
   19a90:	8fcd                	or	a5,a5,a1
   19a92:	8fd9                	or	a5,a5,a4
   19a94:	e049                	bnez	s0,19b16 <__subtf3+0x5b8>
   19a96:	e785                	bnez	a5,19abe <__subtf3+0x560>
   19a98:	d026                	sw	s1,32(sp)
   19a9a:	d25e                	sw	s7,36(sp)
   19a9c:	d462                	sw	s8,40(sp)
   19a9e:	d65a                	sw	s6,44(sp)
   19aa0:	5782                	lw	a5,32(sp)
   19aa2:	5592                	lw	a1,36(sp)
   19aa4:	5622                	lw	a2,40(sp)
   19aa6:	56b2                	lw	a3,44(sp)
   19aa8:	00b7e733          	or	a4,a5,a1
   19aac:	8f51                	or	a4,a4,a2
   19aae:	8f55                	or	a4,a4,a3
   19ab0:	1a071de3          	bnez	a4,1a46a <__subtf3+0xf0c>
   19ab4:	4781                	li	a5,0
   19ab6:	4681                	li	a3,0
   19ab8:	4401                	li	s0,0
   19aba:	21d0006f          	j	1a4d6 <__subtf3+0xf78>
   19abe:	018be7b3          	or	a5,s7,s8
   19ac2:	0167e7b3          	or	a5,a5,s6
   19ac6:	8fc5                	or	a5,a5,s1
   19ac8:	e791                	bnez	a5,19ad4 <__subtf3+0x576>
   19aca:	d03a                	sw	a4,32(sp)
   19acc:	d232                	sw	a2,36(sp)
   19ace:	d436                	sw	a3,40(sp)
   19ad0:	d62e                	sw	a1,44(sp)
   19ad2:	b7f9                	j	19aa0 <__subtf3+0x542>
   19ad4:	94ba                	add	s1,s1,a4
   19ad6:	9bb2                	add	s7,s7,a2
   19ad8:	d026                	sw	s1,32(sp)
   19ada:	00e4b4b3          	sltu	s1,s1,a4
   19ade:	94de                	add	s1,s1,s7
   19ae0:	d226                	sw	s1,36(sp)
   19ae2:	00cbb633          	sltu	a2,s7,a2
   19ae6:	0174b4b3          	sltu	s1,s1,s7
   19aea:	9c36                	add	s8,s8,a3
   19aec:	8e45                	or	a2,a2,s1
   19aee:	9662                	add	a2,a2,s8
   19af0:	d432                	sw	a2,40(sp)
   19af2:	00dc36b3          	sltu	a3,s8,a3
   19af6:	01863633          	sltu	a2,a2,s8
   19afa:	8ed1                	or	a3,a3,a2
   19afc:	95da                	add	a1,a1,s6
   19afe:	96ae                	add	a3,a3,a1
   19b00:	00c69793          	slli	a5,a3,0xc
   19b04:	3207d2e3          	bgez	a5,1a628 <__subtf3+0x10ca>
   19b08:	fff807b7          	lui	a5,0xfff80
   19b0c:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff631d3>
   19b0e:	8efd                	and	a3,a3,a5
   19b10:	d636                	sw	a3,44(sp)
   19b12:	4785                	li	a5,1
   19b14:	b3d9                	j	198da <__subtf3+0x37c>
   19b16:	6521                	lui	a0,0x8
   19b18:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19b1a:	04a41363          	bne	s0,a0,19b60 <__subtf3+0x602>
   19b1e:	300788e3          	beqz	a5,1a62e <__subtf3+0x10d0>
   19b22:	0125d413          	srli	s0,a1,0x12
   19b26:	00144413          	xori	s0,s0,1
   19b2a:	8805                	andi	s0,s0,1
   19b2c:	0412                	slli	s0,s0,0x4
   19b2e:	02aa9d63          	bne	s5,a0,19b68 <__subtf3+0x60a>
   19b32:	018be533          	or	a0,s7,s8
   19b36:	01656533          	or	a0,a0,s6
   19b3a:	8d45                	or	a0,a0,s1
   19b3c:	c50d                	beqz	a0,19b66 <__subtf3+0x608>
   19b3e:	00db1513          	slli	a0,s6,0xd
   19b42:	02054263          	bltz	a0,19b66 <__subtf3+0x608>
   19b46:	4441                	li	s0,16
   19b48:	eb85                	bnez	a5,19b78 <__subtf3+0x61a>
   19b4a:	8726                	mv	a4,s1
   19b4c:	865e                	mv	a2,s7
   19b4e:	86e2                	mv	a3,s8
   19b50:	85da                	mv	a1,s6
   19b52:	d03a                	sw	a4,32(sp)
   19b54:	d232                	sw	a2,36(sp)
   19b56:	d436                	sw	a3,40(sp)
   19b58:	d62e                	sw	a1,44(sp)
   19b5a:	67a1                	lui	a5,0x8
   19b5c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19b5e:	bbb5                	j	198da <__subtf3+0x37c>
   19b60:	4401                	li	s0,0
   19b62:	fcaa88e3          	beq	s5,a0,19b32 <__subtf3+0x5d4>
   19b66:	d3f5                	beqz	a5,19b4a <__subtf3+0x5ec>
   19b68:	018bebb3          	or	s7,s7,s8
   19b6c:	016bebb3          	or	s7,s7,s6
   19b70:	009bebb3          	or	s7,s7,s1
   19b74:	fc0b8fe3          	beqz	s7,19b52 <__subtf3+0x5f4>
   19b78:	67a1                	lui	a5,0x8
   19b7a:	d63e                	sw	a5,44(sp)
   19b7c:	d402                	sw	zero,40(sp)
   19b7e:	d202                	sw	zero,36(sp)
   19b80:	d002                	sw	zero,32(sp)
   19b82:	101c                	addi	a5,sp,32
   19b84:	0850                	addi	a2,sp,20
   19b86:	47d8                	lw	a4,12(a5)
   19b88:	4794                	lw	a3,8(a5)
   19b8a:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19b8c:	070e                	slli	a4,a4,0x3
   19b8e:	82f5                	srli	a3,a3,0x1d
   19b90:	8f55                	or	a4,a4,a3
   19b92:	cb98                	sw	a4,16(a5)
   19b94:	fef619e3          	bne	a2,a5,19b86 <__subtf3+0x628>
   19b98:	4981                	li	s3,0
   19b9a:	b7c1                	j	19b5a <__subtf3+0x5fc>
   19b9c:	4401                	li	s0,0
   19b9e:	bf51                	j	19b32 <__subtf3+0x5d4>
   19ba0:	94ba                	add	s1,s1,a4
   19ba2:	9bb2                	add	s7,s7,a2
   19ba4:	d026                	sw	s1,32(sp)
   19ba6:	00e4b4b3          	sltu	s1,s1,a4
   19baa:	94de                	add	s1,s1,s7
   19bac:	d226                	sw	s1,36(sp)
   19bae:	00cbb633          	sltu	a2,s7,a2
   19bb2:	0174b4b3          	sltu	s1,s1,s7
   19bb6:	9c36                	add	s8,s8,a3
   19bb8:	8e45                	or	a2,a2,s1
   19bba:	9662                	add	a2,a2,s8
   19bbc:	d432                	sw	a2,40(sp)
   19bbe:	00dc36b3          	sltu	a3,s8,a3
   19bc2:	01863633          	sltu	a2,a2,s8
   19bc6:	8ed1                	or	a3,a3,a2
   19bc8:	95da                	add	a1,a1,s6
   19bca:	96ae                	add	a3,a3,a1
   19bcc:	d636                	sw	a3,44(sp)
   19bce:	1018                	addi	a4,sp,32
   19bd0:	1068                	addi	a0,sp,44
   19bd2:	4310                	lw	a2,0(a4)
   19bd4:	434c                	lw	a1,4(a4)
   19bd6:	8205                	srli	a2,a2,0x1
   19bd8:	05fe                	slli	a1,a1,0x1f
   19bda:	8e4d                	or	a2,a2,a1
   19bdc:	c310                	sw	a2,0(a4)
   19bde:	0711                	addi	a4,a4,4
   19be0:	fee519e3          	bne	a0,a4,19bd2 <__subtf3+0x674>
   19be4:	6721                	lui	a4,0x8
   19be6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19be8:	c6e782e3          	beq	a5,a4,1984c <__subtf3+0x2ee>
   19bec:	8285                	srli	a3,a3,0x1
   19bee:	d636                	sw	a3,44(sp)
   19bf0:	4401                	li	s0,0
   19bf2:	b1e5                	j	198da <__subtf3+0x37c>
   19bf4:	4789                	li	a5,2
   19bf6:	c6fa12e3          	bne	s4,a5,1985a <__subtf3+0x2fc>
   19bfa:	c60980e3          	beqz	s3,1985a <__subtf3+0x2fc>
   19bfe:	67a1                	lui	a5,0x8
   19c00:	d602                	sw	zero,44(sp)
   19c02:	d402                	sw	zero,40(sp)
   19c04:	d202                	sw	zero,36(sp)
   19c06:	d002                	sw	zero,32(sp)
   19c08:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19c0a:	4415                	li	s0,5
   19c0c:	b1f9                	j	198da <__subtf3+0x37c>
   19c0e:	22f05b63          	blez	a5,19e44 <__subtf3+0x8e6>
   19c12:	4592                	lw	a1,4(sp)
   19c14:	4522                	lw	a0,8(sp)
   19c16:	48b2                	lw	a7,12(sp)
   19c18:	0a0a9563          	bnez	s5,19cc2 <__subtf3+0x764>
   19c1c:	4ed2                	lw	t4,20(sp)
   19c1e:	4fe2                	lw	t6,24(sp)
   19c20:	4672                	lw	a2,28(sp)
   19c22:	01fee6b3          	or	a3,t4,t6
   19c26:	8ed1                	or	a3,a3,a2
   19c28:	8ec5                	or	a3,a3,s1
   19c2a:	e69d                	bnez	a3,19c58 <__subtf3+0x6fa>
   19c2c:	66a1                	lui	a3,0x8
   19c2e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19c30:	00d79f63          	bne	a5,a3,19c4e <__subtf3+0x6f0>
   19c34:	00a5e6b3          	or	a3,a1,a0
   19c38:	0116e6b3          	or	a3,a3,a7
   19c3c:	8ed9                	or	a3,a3,a4
   19c3e:	ca81                	beqz	a3,19c4e <__subtf3+0x6f0>
   19c40:	0128da93          	srli	s5,a7,0x12
   19c44:	001aca93          	xori	s5,s5,1
   19c48:	001afa93          	andi	s5,s5,1
   19c4c:	0a92                	slli	s5,s5,0x4
   19c4e:	d03a                	sw	a4,32(sp)
   19c50:	d22e                	sw	a1,36(sp)
   19c52:	d42a                	sw	a0,40(sp)
   19c54:	d646                	sw	a7,44(sp)
   19c56:	b435                	j	19682 <__subtf3+0x124>
   19c58:	fff78f13          	addi	t5,a5,-1
   19c5c:	040f1663          	bnez	t5,19ca8 <__subtf3+0x74a>
   19c60:	409706b3          	sub	a3,a4,s1
   19c64:	41d58833          	sub	a6,a1,t4
   19c68:	00d73333          	sltu	t1,a4,a3
   19c6c:	0105b7b3          	sltu	a5,a1,a6
   19c70:	40680833          	sub	a6,a6,t1
   19c74:	4301                	li	t1,0
   19c76:	00d77663          	bgeu	a4,a3,19c82 <__subtf3+0x724>
   19c7a:	40be8eb3          	sub	t4,t4,a1
   19c7e:	001eb313          	seqz	t1,t4
   19c82:	00f36733          	or	a4,t1,a5
   19c86:	41f505b3          	sub	a1,a0,t6
   19c8a:	00b53333          	sltu	t1,a0,a1
   19c8e:	8d99                	sub	a1,a1,a4
   19c90:	c709                	beqz	a4,19c9a <__subtf3+0x73c>
   19c92:	40af87b3          	sub	a5,t6,a0
   19c96:	0017bf13          	seqz	t5,a5
   19c9a:	40c88733          	sub	a4,a7,a2
   19c9e:	006f67b3          	or	a5,t5,t1
   19ca2:	8f1d                	sub	a4,a4,a5
   19ca4:	4785                	li	a5,1
   19ca6:	aab9                	j	19e04 <__subtf3+0x8a6>
   19ca8:	66a1                	lui	a3,0x8
   19caa:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19cac:	f8d784e3          	beq	a5,a3,19c34 <__subtf3+0x6d6>
   19cb0:	07400793          	li	a5,116
   19cb4:	05e7d763          	bge	a5,t5,19d02 <__subtf3+0x7a4>
   19cb8:	ce02                	sw	zero,28(sp)
   19cba:	cc02                	sw	zero,24(sp)
   19cbc:	ca02                	sw	zero,20(sp)
   19cbe:	4685                	li	a3,1
   19cc0:	a8e5                	j	19db8 <__subtf3+0x85a>
   19cc2:	66a1                	lui	a3,0x8
   19cc4:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19cc6:	02d41463          	bne	s0,a3,19cee <__subtf3+0x790>
   19cca:	00a5e7b3          	or	a5,a1,a0
   19cce:	0117e7b3          	or	a5,a5,a7
   19cd2:	8fd9                	or	a5,a5,a4
   19cd4:	4681                	li	a3,0
   19cd6:	c799                	beqz	a5,19ce4 <__subtf3+0x786>
   19cd8:	0128d693          	srli	a3,a7,0x12
   19cdc:	0016c693          	xori	a3,a3,1
   19ce0:	8a85                	andi	a3,a3,1
   19ce2:	0692                	slli	a3,a3,0x4
   19ce4:	d03a                	sw	a4,32(sp)
   19ce6:	d22e                	sw	a1,36(sp)
   19ce8:	d42a                	sw	a0,40(sp)
   19cea:	d646                	sw	a7,44(sp)
   19cec:	bc09                	j	196fe <__subtf3+0x1a0>
   19cee:	46f2                	lw	a3,28(sp)
   19cf0:	00080637          	lui	a2,0x80
   19cf4:	8ed1                	or	a3,a3,a2
   19cf6:	ce36                	sw	a3,28(sp)
   19cf8:	07400693          	li	a3,116
   19cfc:	faf6cee3          	blt	a3,a5,19cb8 <__subtf3+0x75a>
   19d00:	8f3e                	mv	t5,a5
   19d02:	405f5793          	srai	a5,t5,0x5
   19d06:	8342                	mv	t1,a6
   19d08:	01ff7f13          	andi	t5,t5,31
   19d0c:	4681                	li	a3,0
   19d0e:	4601                	li	a2,0
   19d10:	02f61663          	bne	a2,a5,19d3c <__subtf3+0x7de>
   19d14:	460d                	li	a2,3
   19d16:	8e1d                	sub	a2,a2,a5
   19d18:	00279313          	slli	t1,a5,0x2
   19d1c:	020f1763          	bnez	t5,19d4a <__subtf3+0x7ec>
   19d20:	00680eb3          	add	t4,a6,t1
   19d24:	000eae83          	lw	t4,0(t4)
   19d28:	0f05                	addi	t5,t5,1
   19d2a:	0811                	addi	a6,a6,4
   19d2c:	ffd82e23          	sw	t4,-4(a6)
   19d30:	ffe658e3          	bge	a2,t5,19d20 <__subtf3+0x7c2>
   19d34:	4611                	li	a2,4
   19d36:	40f607b3          	sub	a5,a2,a5
   19d3a:	a881                	j	19d8a <__subtf3+0x82c>
   19d3c:	00032e83          	lw	t4,0(t1)
   19d40:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x631d5>
   19d42:	0311                	addi	t1,t1,4
   19d44:	01d6e6b3          	or	a3,a3,t4
   19d48:	b7e1                	j	19d10 <__subtf3+0x7b2>
   19d4a:	04030493          	addi	s1,t1,64
   19d4e:	00248eb3          	add	t4,s1,sp
   19d52:	fd0eae83          	lw	t4,-48(t4)
   19d56:	02000393          	li	t2,32
   19d5a:	41e383b3          	sub	t2,t2,t5
   19d5e:	007e9eb3          	sll	t4,t4,t2
   19d62:	981a                	add	a6,a6,t1
   19d64:	01d6e6b3          	or	a3,a3,t4
   19d68:	40600333          	neg	t1,t1
   19d6c:	4f81                	li	t6,0
   19d6e:	0acfca63          	blt	t6,a2,19e22 <__subtf3+0x8c4>
   19d72:	4811                	li	a6,4
   19d74:	40f807b3          	sub	a5,a6,a5
   19d78:	4872                	lw	a6,28(sp)
   19d7a:	060a                	slli	a2,a2,0x2
   19d7c:	04060613          	addi	a2,a2,64
   19d80:	960a                	add	a2,a2,sp
   19d82:	01e85833          	srl	a6,a6,t5
   19d86:	fd062823          	sw	a6,-48(a2)
   19d8a:	4611                	li	a2,4
   19d8c:	8e1d                	sub	a2,a2,a5
   19d8e:	060a                	slli	a2,a2,0x2
   19d90:	078a                	slli	a5,a5,0x2
   19d92:	4821                	li	a6,8
   19d94:	97f2                	add	a5,a5,t3
   19d96:	01066863          	bltu	a2,a6,19da6 <__subtf3+0x848>
   19d9a:	0007a023          	sw	zero,0(a5)
   19d9e:	0007a223          	sw	zero,4(a5)
   19da2:	1661                	addi	a2,a2,-8
   19da4:	07a1                	addi	a5,a5,8
   19da6:	4811                	li	a6,4
   19da8:	01066463          	bltu	a2,a6,19db0 <__subtf3+0x852>
   19dac:	0007a023          	sw	zero,0(a5)
   19db0:	47c2                	lw	a5,16(sp)
   19db2:	00d036b3          	snez	a3,a3
   19db6:	8edd                	or	a3,a3,a5
   19db8:	4652                	lw	a2,20(sp)
   19dba:	c836                	sw	a3,16(sp)
   19dbc:	40d706b3          	sub	a3,a4,a3
   19dc0:	40c58833          	sub	a6,a1,a2
   19dc4:	00d737b3          	sltu	a5,a4,a3
   19dc8:	0105b333          	sltu	t1,a1,a6
   19dcc:	40f80833          	sub	a6,a6,a5
   19dd0:	4781                	li	a5,0
   19dd2:	00d77563          	bgeu	a4,a3,19ddc <__subtf3+0x87e>
   19dd6:	8e0d                	sub	a2,a2,a1
   19dd8:	00163793          	seqz	a5,a2
   19ddc:	4762                	lw	a4,24(sp)
   19dde:	0067e7b3          	or	a5,a5,t1
   19de2:	4601                	li	a2,0
   19de4:	40e505b3          	sub	a1,a0,a4
   19de8:	00b53333          	sltu	t1,a0,a1
   19dec:	8d9d                	sub	a1,a1,a5
   19dee:	c781                	beqz	a5,19df6 <__subtf3+0x898>
   19df0:	8f09                	sub	a4,a4,a0
   19df2:	00173613          	seqz	a2,a4
   19df6:	4772                	lw	a4,28(sp)
   19df8:	00666633          	or	a2,a2,t1
   19dfc:	87a2                	mv	a5,s0
   19dfe:	40e88733          	sub	a4,a7,a4
   19e02:	8f11                	sub	a4,a4,a2
   19e04:	d036                	sw	a3,32(sp)
   19e06:	d63a                	sw	a4,44(sp)
   19e08:	d42e                	sw	a1,40(sp)
   19e0a:	d242                	sw	a6,36(sp)
   19e0c:	00c71693          	slli	a3,a4,0xc
   19e10:	de06d0e3          	bgez	a3,19bf0 <__subtf3+0x692>
   19e14:	000806b7          	lui	a3,0x80
   19e18:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x631d3>
   19e1a:	8f75                	and	a4,a4,a3
   19e1c:	d63a                	sw	a4,44(sp)
   19e1e:	843e                	mv	s0,a5
   19e20:	a1bd                	j	1a28e <__subtf3+0xd30>
   19e22:	00082e83          	lw	t4,0(a6)
   19e26:	00482283          	lw	t0,4(a6)
   19e2a:	006804b3          	add	s1,a6,t1
   19e2e:	01eedeb3          	srl	t4,t4,t5
   19e32:	007292b3          	sll	t0,t0,t2
   19e36:	005eeeb3          	or	t4,t4,t0
   19e3a:	01d4a023          	sw	t4,0(s1)
   19e3e:	0f85                	addi	t6,t6,1
   19e40:	0811                	addi	a6,a6,4
   19e42:	b735                	j	19d6e <__subtf3+0x810>
   19e44:	4bd2                	lw	s7,20(sp)
   19e46:	4b62                	lw	s6,24(sp)
   19e48:	4c72                	lw	s8,28(sp)
   19e4a:	20078763          	beqz	a5,1a058 <__subtf3+0xafa>
   19e4e:	408a87b3          	sub	a5,s5,s0
   19e52:	e05d                	bnez	s0,19ef8 <__subtf3+0x99a>
   19e54:	4892                	lw	a7,4(sp)
   19e56:	4e22                	lw	t3,8(sp)
   19e58:	4632                	lw	a2,12(sp)
   19e5a:	01c8e6b3          	or	a3,a7,t3
   19e5e:	8ed1                	or	a3,a3,a2
   19e60:	8ed9                	or	a3,a3,a4
   19e62:	e69d                	bnez	a3,19e90 <__subtf3+0x932>
   19e64:	6721                	lui	a4,0x8
   19e66:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19e68:	00e79e63          	bne	a5,a4,19e84 <__subtf3+0x926>
   19e6c:	016be733          	or	a4,s7,s6
   19e70:	01876733          	or	a4,a4,s8
   19e74:	8f45                	or	a4,a4,s1
   19e76:	c719                	beqz	a4,19e84 <__subtf3+0x926>
   19e78:	012c5413          	srli	s0,s8,0x12
   19e7c:	00144413          	xori	s0,s0,1
   19e80:	8805                	andi	s0,s0,1
   19e82:	0412                	slli	s0,s0,0x4
   19e84:	d026                	sw	s1,32(sp)
   19e86:	d25e                	sw	s7,36(sp)
   19e88:	d45a                	sw	s6,40(sp)
   19e8a:	d662                	sw	s8,44(sp)
   19e8c:	89e6                	mv	s3,s9
   19e8e:	b4b1                	j	198da <__subtf3+0x37c>
   19e90:	fff78313          	addi	t1,a5,-1
   19e94:	04031563          	bnez	t1,19ede <__subtf3+0x980>
   19e98:	40e486b3          	sub	a3,s1,a4
   19e9c:	411b8833          	sub	a6,s7,a7
   19ea0:	00d4b733          	sltu	a4,s1,a3
   19ea4:	010bb7b3          	sltu	a5,s7,a6
   19ea8:	40e80833          	sub	a6,a6,a4
   19eac:	4701                	li	a4,0
   19eae:	00d4f663          	bgeu	s1,a3,19eba <__subtf3+0x95c>
   19eb2:	417888b3          	sub	a7,a7,s7
   19eb6:	0018b713          	seqz	a4,a7
   19eba:	41cb05b3          	sub	a1,s6,t3
   19ebe:	8f5d                	or	a4,a4,a5
   19ec0:	00bb3533          	sltu	a0,s6,a1
   19ec4:	8d99                	sub	a1,a1,a4
   19ec6:	c709                	beqz	a4,19ed0 <__subtf3+0x972>
   19ec8:	416e07b3          	sub	a5,t3,s6
   19ecc:	0017b313          	seqz	t1,a5
   19ed0:	40cc0733          	sub	a4,s8,a2
   19ed4:	00a367b3          	or	a5,t1,a0
   19ed8:	8f1d                	sub	a4,a4,a5
   19eda:	89e6                	mv	s3,s9
   19edc:	b3e1                	j	19ca4 <__subtf3+0x746>
   19ede:	6721                	lui	a4,0x8
   19ee0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19ee2:	f8e785e3          	beq	a5,a4,19e6c <__subtf3+0x90e>
   19ee6:	07400793          	li	a5,116
   19eea:	0467d863          	bge	a5,t1,19f3a <__subtf3+0x9dc>
   19eee:	c602                	sw	zero,12(sp)
   19ef0:	c402                	sw	zero,8(sp)
   19ef2:	c202                	sw	zero,4(sp)
   19ef4:	4685                	li	a3,1
   19ef6:	a8cd                	j	19fe8 <__subtf3+0xa8a>
   19ef8:	6721                	lui	a4,0x8
   19efa:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19efc:	02ea9563          	bne	s5,a4,19f26 <__subtf3+0x9c8>
   19f00:	016be7b3          	or	a5,s7,s6
   19f04:	0187e7b3          	or	a5,a5,s8
   19f08:	8fc5                	or	a5,a5,s1
   19f0a:	4401                	li	s0,0
   19f0c:	c799                	beqz	a5,19f1a <__subtf3+0x9bc>
   19f0e:	012c5413          	srli	s0,s8,0x12
   19f12:	00144413          	xori	s0,s0,1
   19f16:	8805                	andi	s0,s0,1
   19f18:	0412                	slli	s0,s0,0x4
   19f1a:	d026                	sw	s1,32(sp)
   19f1c:	d25e                	sw	s7,36(sp)
   19f1e:	d45a                	sw	s6,40(sp)
   19f20:	d662                	sw	s8,44(sp)
   19f22:	87d6                	mv	a5,s5
   19f24:	b7a5                	j	19e8c <__subtf3+0x92e>
   19f26:	4732                	lw	a4,12(sp)
   19f28:	000806b7          	lui	a3,0x80
   19f2c:	8f55                	or	a4,a4,a3
   19f2e:	c63a                	sw	a4,12(sp)
   19f30:	07400713          	li	a4,116
   19f34:	faf74de3          	blt	a4,a5,19eee <__subtf3+0x990>
   19f38:	833e                	mv	t1,a5
   19f3a:	02000793          	li	a5,32
   19f3e:	02f347b3          	div	a5,t1,a5
   19f42:	86ae                	mv	a3,a1
   19f44:	4401                	li	s0,0
   19f46:	4701                	li	a4,0
   19f48:	02f74663          	blt	a4,a5,19f74 <__subtf3+0xa16>
   19f4c:	470d                	li	a4,3
   19f4e:	01f37813          	andi	a6,t1,31
   19f52:	8f1d                	sub	a4,a4,a5
   19f54:	00279613          	slli	a2,a5,0x2
   19f58:	02081363          	bnez	a6,19f7e <__subtf3+0xa20>
   19f5c:	00c586b3          	add	a3,a1,a2
   19f60:	4294                	lw	a3,0(a3)
   19f62:	0805                	addi	a6,a6,1
   19f64:	c194                	sw	a3,0(a1)
   19f66:	0591                	addi	a1,a1,4
   19f68:	ff075ae3          	bge	a4,a6,19f5c <__subtf3+0x9fe>
   19f6c:	4711                	li	a4,4
   19f6e:	40f707b3          	sub	a5,a4,a5
   19f72:	a899                	j	19fc8 <__subtf3+0xa6a>
   19f74:	4290                	lw	a2,0(a3)
   19f76:	0705                	addi	a4,a4,1
   19f78:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x631d8>
   19f7a:	8c51                	or	s0,s0,a2
   19f7c:	b7f1                	j	19f48 <__subtf3+0x9ea>
   19f7e:	02000693          	li	a3,32
   19f82:	02d36333          	rem	t1,t1,a3
   19f86:	40668333          	sub	t1,a3,t1
   19f8a:	86be                	mv	a3,a5
   19f8c:	0007d363          	bgez	a5,19f92 <__subtf3+0xa34>
   19f90:	4681                	li	a3,0
   19f92:	068a                	slli	a3,a3,0x2
   19f94:	04068693          	addi	a3,a3,64
   19f98:	968a                	add	a3,a3,sp
   19f9a:	fc06a683          	lw	a3,-64(a3)
   19f9e:	95b2                	add	a1,a1,a2
   19fa0:	4881                	li	a7,0
   19fa2:	006696b3          	sll	a3,a3,t1
   19fa6:	8c55                	or	s0,s0,a3
   19fa8:	40c00633          	neg	a2,a2
   19fac:	08e8c663          	blt	a7,a4,1a038 <__subtf3+0xada>
   19fb0:	4691                	li	a3,4
   19fb2:	40f687b3          	sub	a5,a3,a5
   19fb6:	46b2                	lw	a3,12(sp)
   19fb8:	070a                	slli	a4,a4,0x2
   19fba:	04070713          	addi	a4,a4,64
   19fbe:	970a                	add	a4,a4,sp
   19fc0:	0106d6b3          	srl	a3,a3,a6
   19fc4:	fcd72023          	sw	a3,-64(a4)
   19fc8:	0057a713          	slti	a4,a5,5
   19fcc:	4601                	li	a2,0
   19fce:	c701                	beqz	a4,19fd6 <__subtf3+0xa78>
   19fd0:	4611                	li	a2,4
   19fd2:	8e1d                	sub	a2,a2,a5
   19fd4:	060a                	slli	a2,a2,0x2
   19fd6:	078a                	slli	a5,a5,0x2
   19fd8:	953e                	add	a0,a0,a5
   19fda:	4581                	li	a1,0
   19fdc:	ccaf70ef          	jal	114a6 <memset>
   19fe0:	4782                	lw	a5,0(sp)
   19fe2:	008036b3          	snez	a3,s0
   19fe6:	8edd                	or	a3,a3,a5
   19fe8:	4712                	lw	a4,4(sp)
   19fea:	c036                	sw	a3,0(sp)
   19fec:	40d486b3          	sub	a3,s1,a3
   19ff0:	40eb8833          	sub	a6,s7,a4
   19ff4:	00d4b7b3          	sltu	a5,s1,a3
   19ff8:	010bb633          	sltu	a2,s7,a6
   19ffc:	40f80833          	sub	a6,a6,a5
   1a000:	4781                	li	a5,0
   1a002:	00d4f663          	bgeu	s1,a3,1a00e <__subtf3+0xab0>
   1a006:	41770733          	sub	a4,a4,s7
   1a00a:	00173793          	seqz	a5,a4
   1a00e:	4722                	lw	a4,8(sp)
   1a010:	8fd1                	or	a5,a5,a2
   1a012:	4601                	li	a2,0
   1a014:	40eb05b3          	sub	a1,s6,a4
   1a018:	00bb3533          	sltu	a0,s6,a1
   1a01c:	8d9d                	sub	a1,a1,a5
   1a01e:	c789                	beqz	a5,1a028 <__subtf3+0xaca>
   1a020:	41670733          	sub	a4,a4,s6
   1a024:	00173613          	seqz	a2,a4
   1a028:	4732                	lw	a4,12(sp)
   1a02a:	8e49                	or	a2,a2,a0
   1a02c:	87d6                	mv	a5,s5
   1a02e:	40ec0733          	sub	a4,s8,a4
   1a032:	8f11                	sub	a4,a4,a2
   1a034:	89e6                	mv	s3,s9
   1a036:	b3f9                	j	19e04 <__subtf3+0x8a6>
   1a038:	4194                	lw	a3,0(a1)
   1a03a:	0045ae03          	lw	t3,4(a1)
   1a03e:	00c58eb3          	add	t4,a1,a2
   1a042:	0106d6b3          	srl	a3,a3,a6
   1a046:	006e1e33          	sll	t3,t3,t1
   1a04a:	01c6e6b3          	or	a3,a3,t3
   1a04e:	00dea023          	sw	a3,0(t4)
   1a052:	0885                	addi	a7,a7,1
   1a054:	0591                	addi	a1,a1,4
   1a056:	bf99                	j	19fac <__subtf3+0xa4e>
   1a058:	00140693          	addi	a3,s0,1
   1a05c:	01169813          	slli	a6,a3,0x11
   1a060:	01285813          	srli	a6,a6,0x12
   1a064:	4612                	lw	a2,4(sp)
   1a066:	45a2                	lw	a1,8(sp)
   1a068:	4532                	lw	a0,12(sp)
   1a06a:	18081363          	bnez	a6,1a1f0 <__subtf3+0xc92>
   1a06e:	016be7b3          	or	a5,s7,s6
   1a072:	00b666b3          	or	a3,a2,a1
   1a076:	0187e7b3          	or	a5,a5,s8
   1a07a:	8ec9                	or	a3,a3,a0
   1a07c:	8fc5                	or	a5,a5,s1
   1a07e:	8ed9                	or	a3,a3,a4
   1a080:	e869                	bnez	s0,1a152 <__subtf3+0xbf4>
   1a082:	ea99                	bnez	a3,1a098 <__subtf3+0xb3a>
   1a084:	d026                	sw	s1,32(sp)
   1a086:	d25e                	sw	s7,36(sp)
   1a088:	d45a                	sw	s6,40(sp)
   1a08a:	d662                	sw	s8,44(sp)
   1a08c:	ebcd                	bnez	a5,1a13e <__subtf3+0xbe0>
   1a08e:	ffea0993          	addi	s3,s4,-2
   1a092:	0019b993          	seqz	s3,s3
   1a096:	b429                	j	19aa0 <__subtf3+0x542>
   1a098:	e791                	bnez	a5,1a0a4 <__subtf3+0xb46>
   1a09a:	d03a                	sw	a4,32(sp)
   1a09c:	d232                	sw	a2,36(sp)
   1a09e:	d42e                	sw	a1,40(sp)
   1a0a0:	d62a                	sw	a0,44(sp)
   1a0a2:	bafd                	j	19aa0 <__subtf3+0x542>
   1a0a4:	409707b3          	sub	a5,a4,s1
   1a0a8:	41760e33          	sub	t3,a2,s7
   1a0ac:	00f73833          	sltu	a6,a4,a5
   1a0b0:	01c638b3          	sltu	a7,a2,t3
   1a0b4:	410e0833          	sub	a6,t3,a6
   1a0b8:	4681                	li	a3,0
   1a0ba:	00f77463          	bgeu	a4,a5,1a0c2 <__subtf3+0xb64>
   1a0be:	001e3693          	seqz	a3,t3
   1a0c2:	0116e6b3          	or	a3,a3,a7
   1a0c6:	416588b3          	sub	a7,a1,s6
   1a0ca:	0115bf33          	sltu	t5,a1,a7
   1a0ce:	40d88eb3          	sub	t4,a7,a3
   1a0d2:	4301                	li	t1,0
   1a0d4:	c299                	beqz	a3,1a0da <__subtf3+0xb7c>
   1a0d6:	0018b313          	seqz	t1,a7
   1a0da:	01e36333          	or	t1,t1,t5
   1a0de:	418506b3          	sub	a3,a0,s8
   1a0e2:	406686b3          	sub	a3,a3,t1
   1a0e6:	d636                	sw	a3,44(sp)
   1a0e8:	d476                	sw	t4,40(sp)
   1a0ea:	d242                	sw	a6,36(sp)
   1a0ec:	d03e                	sw	a5,32(sp)
   1a0ee:	00c69313          	slli	t1,a3,0xc
   1a0f2:	04035863          	bgez	t1,1a142 <__subtf3+0xbe4>
   1a0f6:	40e48733          	sub	a4,s1,a4
   1a0fa:	40cb8633          	sub	a2,s7,a2
   1a0fe:	00e4b7b3          	sltu	a5,s1,a4
   1a102:	00cbbbb3          	sltu	s7,s7,a2
   1a106:	8e1d                	sub	a2,a2,a5
   1a108:	4781                	li	a5,0
   1a10a:	00e4f463          	bgeu	s1,a4,1a112 <__subtf3+0xbb4>
   1a10e:	001e3793          	seqz	a5,t3
   1a112:	40bb05b3          	sub	a1,s6,a1
   1a116:	0177ebb3          	or	s7,a5,s7
   1a11a:	00bb3b33          	sltu	s6,s6,a1
   1a11e:	417585b3          	sub	a1,a1,s7
   1a122:	000b8463          	beqz	s7,1a12a <__subtf3+0xbcc>
   1a126:	0018b413          	seqz	s0,a7
   1a12a:	40ac0533          	sub	a0,s8,a0
   1a12e:	01646b33          	or	s6,s0,s6
   1a132:	41650533          	sub	a0,a0,s6
   1a136:	d62a                	sw	a0,44(sp)
   1a138:	d42e                	sw	a1,40(sp)
   1a13a:	d232                	sw	a2,36(sp)
   1a13c:	d03a                	sw	a4,32(sp)
   1a13e:	89e6                	mv	s3,s9
   1a140:	b285                	j	19aa0 <__subtf3+0x542>
   1a142:	0107e7b3          	or	a5,a5,a6
   1a146:	01d7e7b3          	or	a5,a5,t4
   1a14a:	8fd5                	or	a5,a5,a3
   1a14c:	94079ae3          	bnez	a5,19aa0 <__subtf3+0x542>
   1a150:	bf3d                	j	1a08e <__subtf3+0xb30>
   1a152:	6821                	lui	a6,0x8
   1a154:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   1a156:	03041263          	bne	s0,a6,1a17a <__subtf3+0xc1c>
   1a15a:	4c068f63          	beqz	a3,1a638 <__subtf3+0x10da>
   1a15e:	01255413          	srli	s0,a0,0x12
   1a162:	00144413          	xori	s0,s0,1
   1a166:	8805                	andi	s0,s0,1
   1a168:	0412                	slli	s0,s0,0x4
   1a16a:	010a8b63          	beq	s5,a6,1a180 <__subtf3+0xc22>
   1a16e:	ebb1                	bnez	a5,1a1c2 <__subtf3+0xc64>
   1a170:	d03a                	sw	a4,32(sp)
   1a172:	d232                	sw	a2,36(sp)
   1a174:	d42e                	sw	a1,40(sp)
   1a176:	d62a                	sw	a0,44(sp)
   1a178:	b2cd                	j	19b5a <__subtf3+0x5fc>
   1a17a:	4401                	li	s0,0
   1a17c:	010a9363          	bne	s5,a6,1a182 <__subtf3+0xc24>
   1a180:	eb9d                	bnez	a5,1a1b6 <__subtf3+0xc58>
   1a182:	f6f5                	bnez	a3,1a16e <__subtf3+0xc10>
   1a184:	e3a5                	bnez	a5,1a1e4 <__subtf3+0xc86>
   1a186:	67a1                	lui	a5,0x8
   1a188:	d63e                	sw	a5,44(sp)
   1a18a:	d402                	sw	zero,40(sp)
   1a18c:	d202                	sw	zero,36(sp)
   1a18e:	d002                	sw	zero,32(sp)
   1a190:	101c                	addi	a5,sp,32
   1a192:	0850                	addi	a2,sp,20
   1a194:	47d8                	lw	a4,12(a5)
   1a196:	4794                	lw	a3,8(a5)
   1a198:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1a19a:	070e                	slli	a4,a4,0x3
   1a19c:	82f5                	srli	a3,a3,0x1d
   1a19e:	8f55                	or	a4,a4,a3
   1a1a0:	cb98                	sw	a4,16(a5)
   1a1a2:	fef619e3          	bne	a2,a5,1a194 <__subtf3+0xc36>
   1a1a6:	67a1                	lui	a5,0x8
   1a1a8:	4981                	li	s3,0
   1a1aa:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1a1ac:	4441                	li	s0,16
   1a1ae:	f2cff06f          	j	198da <__subtf3+0x37c>
   1a1b2:	4401                	li	s0,0
   1a1b4:	b7f1                	j	1a180 <__subtf3+0xc22>
   1a1b6:	00dc1813          	slli	a6,s8,0xd
   1a1ba:	fc0844e3          	bltz	a6,1a182 <__subtf3+0xc24>
   1a1be:	4441                	li	s0,16
   1a1c0:	c295                	beqz	a3,1a1e4 <__subtf3+0xc86>
   1a1c2:	67a1                	lui	a5,0x8
   1a1c4:	d63e                	sw	a5,44(sp)
   1a1c6:	d402                	sw	zero,40(sp)
   1a1c8:	d202                	sw	zero,36(sp)
   1a1ca:	d002                	sw	zero,32(sp)
   1a1cc:	101c                	addi	a5,sp,32
   1a1ce:	0850                	addi	a2,sp,20
   1a1d0:	47d8                	lw	a4,12(a5)
   1a1d2:	4794                	lw	a3,8(a5)
   1a1d4:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1a1d6:	070e                	slli	a4,a4,0x3
   1a1d8:	82f5                	srli	a3,a3,0x1d
   1a1da:	8f55                	or	a4,a4,a3
   1a1dc:	cb98                	sw	a4,16(a5)
   1a1de:	fef619e3          	bne	a2,a5,1a1d0 <__subtf3+0xc72>
   1a1e2:	ba5d                	j	19b98 <__subtf3+0x63a>
   1a1e4:	d026                	sw	s1,32(sp)
   1a1e6:	d25e                	sw	s7,36(sp)
   1a1e8:	d45a                	sw	s6,40(sp)
   1a1ea:	d662                	sw	s8,44(sp)
   1a1ec:	89e6                	mv	s3,s9
   1a1ee:	b2b5                	j	19b5a <__subtf3+0x5fc>
   1a1f0:	409706b3          	sub	a3,a4,s1
   1a1f4:	41760e33          	sub	t3,a2,s7
   1a1f8:	00d73eb3          	sltu	t4,a4,a3
   1a1fc:	01c638b3          	sltu	a7,a2,t3
   1a200:	41de0eb3          	sub	t4,t3,t4
   1a204:	4801                	li	a6,0
   1a206:	00d77463          	bgeu	a4,a3,1a20e <__subtf3+0xcb0>
   1a20a:	001e3813          	seqz	a6,t3
   1a20e:	01186833          	or	a6,a6,a7
   1a212:	416588b3          	sub	a7,a1,s6
   1a216:	0115bf33          	sltu	t5,a1,a7
   1a21a:	41088fb3          	sub	t6,a7,a6
   1a21e:	4301                	li	t1,0
   1a220:	00080463          	beqz	a6,1a228 <__subtf3+0xcca>
   1a224:	0018b313          	seqz	t1,a7
   1a228:	01e36333          	or	t1,t1,t5
   1a22c:	41850833          	sub	a6,a0,s8
   1a230:	40680833          	sub	a6,a6,t1
   1a234:	d642                	sw	a6,44(sp)
   1a236:	d47e                	sw	t6,40(sp)
   1a238:	d276                	sw	t4,36(sp)
   1a23a:	d036                	sw	a3,32(sp)
   1a23c:	00c81313          	slli	t1,a6,0xc
   1a240:	10035163          	bgez	t1,1a342 <__subtf3+0xde4>
   1a244:	40e48733          	sub	a4,s1,a4
   1a248:	40cb8633          	sub	a2,s7,a2
   1a24c:	00e4b6b3          	sltu	a3,s1,a4
   1a250:	00cbbbb3          	sltu	s7,s7,a2
   1a254:	8e15                	sub	a2,a2,a3
   1a256:	4681                	li	a3,0
   1a258:	00e4f463          	bgeu	s1,a4,1a260 <__subtf3+0xd02>
   1a25c:	001e3693          	seqz	a3,t3
   1a260:	40bb05b3          	sub	a1,s6,a1
   1a264:	0176ebb3          	or	s7,a3,s7
   1a268:	00bb3b33          	sltu	s6,s6,a1
   1a26c:	417585b3          	sub	a1,a1,s7
   1a270:	000b8463          	beqz	s7,1a278 <__subtf3+0xd1a>
   1a274:	0018b793          	seqz	a5,a7
   1a278:	40ac0533          	sub	a0,s8,a0
   1a27c:	0167eb33          	or	s6,a5,s6
   1a280:	41650533          	sub	a0,a0,s6
   1a284:	d62a                	sw	a0,44(sp)
   1a286:	d42e                	sw	a1,40(sp)
   1a288:	d232                	sw	a2,36(sp)
   1a28a:	d03a                	sw	a4,32(sp)
   1a28c:	89e6                	mv	s3,s9
   1a28e:	5532                	lw	a0,44(sp)
   1a290:	c169                	beqz	a0,1a352 <__subtf3+0xdf4>
   1a292:	7dc000ef          	jal	1aa6e <__clzsi2>
   1a296:	ff450793          	addi	a5,a0,-12
   1a29a:	02000693          	li	a3,32
   1a29e:	01f7f813          	andi	a6,a5,31
   1a2a2:	02d7c733          	div	a4,a5,a3
   1a2a6:	0c080763          	beqz	a6,1a374 <__subtf3+0xe16>
   1a2aa:	02010313          	addi	t1,sp,32
   1a2ae:	02d7e633          	rem	a2,a5,a3
   1a2b2:	40c685b3          	sub	a1,a3,a2
   1a2b6:	5671                	li	a2,-4
   1a2b8:	02c70633          	mul	a2,a4,a2
   1a2bc:	00c60693          	addi	a3,a2,12
   1a2c0:	969a                	add	a3,a3,t1
   1a2c2:	40c00633          	neg	a2,a2
   1a2c6:	0cd31763          	bne	t1,a3,1a394 <__subtf3+0xe36>
   1a2ca:	5602                	lw	a2,32(sp)
   1a2cc:	fff70693          	addi	a3,a4,-1
   1a2d0:	070a                	slli	a4,a4,0x2
   1a2d2:	04070713          	addi	a4,a4,64
   1a2d6:	970a                	add	a4,a4,sp
   1a2d8:	01061633          	sll	a2,a2,a6
   1a2dc:	fec72023          	sw	a2,-32(a4)
   1a2e0:	00168713          	addi	a4,a3,1
   1a2e4:	070a                	slli	a4,a4,0x2
   1a2e6:	1014                	addi	a3,sp,32
   1a2e8:	4621                	li	a2,8
   1a2ea:	88b6                	mv	a7,a3
   1a2ec:	00c76863          	bltu	a4,a2,1a2fc <__subtf3+0xd9e>
   1a2f0:	0006a023          	sw	zero,0(a3)
   1a2f4:	0006a223          	sw	zero,4(a3)
   1a2f8:	1761                	addi	a4,a4,-8
   1a2fa:	1034                	addi	a3,sp,40
   1a2fc:	4611                	li	a2,4
   1a2fe:	00c76463          	bltu	a4,a2,1a306 <__subtf3+0xda8>
   1a302:	0006a023          	sw	zero,0(a3)
   1a306:	1487c863          	blt	a5,s0,1a456 <__subtf3+0xef8>
   1a30a:	8f81                	sub	a5,a5,s0
   1a30c:	0785                	addi	a5,a5,1
   1a30e:	4057d713          	srai	a4,a5,0x5
   1a312:	85c6                	mv	a1,a7
   1a314:	8bfd                	andi	a5,a5,31
   1a316:	8646                	mv	a2,a7
   1a318:	4301                	li	t1,0
   1a31a:	4681                	li	a3,0
   1a31c:	08e69b63          	bne	a3,a4,1a3b2 <__subtf3+0xe54>
   1a320:	468d                	li	a3,3
   1a322:	8e99                	sub	a3,a3,a4
   1a324:	00271613          	slli	a2,a4,0x2
   1a328:	ebd9                	bnez	a5,1a3be <__subtf3+0xe60>
   1a32a:	00c58533          	add	a0,a1,a2
   1a32e:	4108                	lw	a0,0(a0)
   1a330:	0785                	addi	a5,a5,1
   1a332:	c188                	sw	a0,0(a1)
   1a334:	0591                	addi	a1,a1,4
   1a336:	fef6dae3          	bge	a3,a5,1a32a <__subtf3+0xdcc>
   1a33a:	4791                	li	a5,4
   1a33c:	40e78733          	sub	a4,a5,a4
   1a340:	a87d                	j	1a3fe <__subtf3+0xea0>
   1a342:	01d6e6b3          	or	a3,a3,t4
   1a346:	01f6e6b3          	or	a3,a3,t6
   1a34a:	0106e6b3          	or	a3,a3,a6
   1a34e:	f2a1                	bnez	a3,1a28e <__subtf3+0xd30>
   1a350:	bb3d                	j	1a08e <__subtf3+0xb30>
   1a352:	5522                	lw	a0,40(sp)
   1a354:	c509                	beqz	a0,1a35e <__subtf3+0xe00>
   1a356:	2f21                	jal	1aa6e <__clzsi2>
   1a358:	02050513          	addi	a0,a0,32
   1a35c:	bf2d                	j	1a296 <__subtf3+0xd38>
   1a35e:	5512                	lw	a0,36(sp)
   1a360:	c509                	beqz	a0,1a36a <__subtf3+0xe0c>
   1a362:	2731                	jal	1aa6e <__clzsi2>
   1a364:	04050513          	addi	a0,a0,64
   1a368:	b73d                	j	1a296 <__subtf3+0xd38>
   1a36a:	5502                	lw	a0,32(sp)
   1a36c:	2709                	jal	1aa6e <__clzsi2>
   1a36e:	06050513          	addi	a0,a0,96
   1a372:	b715                	j	1a296 <__subtf3+0xd38>
   1a374:	55f1                	li	a1,-4
   1a376:	02b705b3          	mul	a1,a4,a1
   1a37a:	1074                	addi	a3,sp,44
   1a37c:	460d                	li	a2,3
   1a37e:	00b68533          	add	a0,a3,a1
   1a382:	4108                	lw	a0,0(a0)
   1a384:	167d                	addi	a2,a2,-1
   1a386:	16f1                	addi	a3,a3,-4
   1a388:	c2c8                	sw	a0,4(a3)
   1a38a:	fee65ae3          	bge	a2,a4,1a37e <__subtf3+0xe20>
   1a38e:	fff70693          	addi	a3,a4,-1
   1a392:	b7b9                	j	1a2e0 <__subtf3+0xd82>
   1a394:	4288                	lw	a0,0(a3)
   1a396:	ffc6a883          	lw	a7,-4(a3)
   1a39a:	00c68e33          	add	t3,a3,a2
   1a39e:	01051533          	sll	a0,a0,a6
   1a3a2:	00b8d8b3          	srl	a7,a7,a1
   1a3a6:	01156533          	or	a0,a0,a7
   1a3aa:	00ae2023          	sw	a0,0(t3)
   1a3ae:	16f1                	addi	a3,a3,-4
   1a3b0:	bf19                	j	1a2c6 <__subtf3+0xd68>
   1a3b2:	4208                	lw	a0,0(a2)
   1a3b4:	0685                	addi	a3,a3,1
   1a3b6:	0611                	addi	a2,a2,4
   1a3b8:	00a36333          	or	t1,t1,a0
   1a3bc:	b785                	j	1a31c <__subtf3+0xdbe>
   1a3be:	04060593          	addi	a1,a2,64
   1a3c2:	958a                	add	a1,a1,sp
   1a3c4:	fe05a583          	lw	a1,-32(a1)
   1a3c8:	02000813          	li	a6,32
   1a3cc:	40f80833          	sub	a6,a6,a5
   1a3d0:	010595b3          	sll	a1,a1,a6
   1a3d4:	00b36333          	or	t1,t1,a1
   1a3d8:	4e01                	li	t3,0
   1a3da:	00c885b3          	add	a1,a7,a2
   1a3de:	40c00633          	neg	a2,a2
   1a3e2:	04de4a63          	blt	t3,a3,1a436 <__subtf3+0xed8>
   1a3e6:	4611                	li	a2,4
   1a3e8:	40e60733          	sub	a4,a2,a4
   1a3ec:	5632                	lw	a2,44(sp)
   1a3ee:	068a                	slli	a3,a3,0x2
   1a3f0:	04068693          	addi	a3,a3,64
   1a3f4:	968a                	add	a3,a3,sp
   1a3f6:	00f657b3          	srl	a5,a2,a5
   1a3fa:	fef6a023          	sw	a5,-32(a3)
   1a3fe:	4691                	li	a3,4
   1a400:	8e99                	sub	a3,a3,a4
   1a402:	070a                	slli	a4,a4,0x2
   1a404:	00e887b3          	add	a5,a7,a4
   1a408:	00269713          	slli	a4,a3,0x2
   1a40c:	46a1                	li	a3,8
   1a40e:	00d76863          	bltu	a4,a3,1a41e <__subtf3+0xec0>
   1a412:	0007a023          	sw	zero,0(a5)
   1a416:	0007a223          	sw	zero,4(a5)
   1a41a:	1761                	addi	a4,a4,-8
   1a41c:	07a1                	addi	a5,a5,8
   1a41e:	4691                	li	a3,4
   1a420:	00d76463          	bltu	a4,a3,1a428 <__subtf3+0xeca>
   1a424:	0007a023          	sw	zero,0(a5)
   1a428:	5702                	lw	a4,32(sp)
   1a42a:	006037b3          	snez	a5,t1
   1a42e:	8fd9                	or	a5,a5,a4
   1a430:	d03e                	sw	a5,32(sp)
   1a432:	e6eff06f          	j	19aa0 <__subtf3+0x542>
   1a436:	4188                	lw	a0,0(a1)
   1a438:	0045ae83          	lw	t4,4(a1)
   1a43c:	00c58f33          	add	t5,a1,a2
   1a440:	00f55533          	srl	a0,a0,a5
   1a444:	010e9eb3          	sll	t4,t4,a6
   1a448:	01d56533          	or	a0,a0,t4
   1a44c:	00af2023          	sw	a0,0(t5)
   1a450:	0e05                	addi	t3,t3,1
   1a452:	0591                	addi	a1,a1,4
   1a454:	b779                	j	1a3e2 <__subtf3+0xe84>
   1a456:	5732                	lw	a4,44(sp)
   1a458:	fff806b7          	lui	a3,0xfff80
   1a45c:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff631d3>
   1a45e:	8f75                	and	a4,a4,a3
   1a460:	40f407b3          	sub	a5,s0,a5
   1a464:	d63a                	sw	a4,44(sp)
   1a466:	f8aff06f          	j	19bf0 <__subtf3+0x692>
   1a46a:	da2e                	sw	a1,52(sp)
   1a46c:	d83e                	sw	a5,48(sp)
   1a46e:	dc32                	sw	a2,56(sp)
   1a470:	de36                	sw	a3,60(sp)
   1a472:	1818                	addi	a4,sp,48
   1a474:	104c                	addi	a1,sp,36
   1a476:	4754                	lw	a3,12(a4)
   1a478:	4710                	lw	a2,8(a4)
   1a47a:	1771                	addi	a4,a4,-4
   1a47c:	0686                	slli	a3,a3,0x1
   1a47e:	827d                	srli	a2,a2,0x1f
   1a480:	8ed1                	or	a3,a3,a2
   1a482:	cb14                	sw	a3,16(a4)
   1a484:	fee599e3          	bne	a1,a4,1a476 <__subtf3+0xf18>
   1a488:	0786                	slli	a5,a5,0x1
   1a48a:	0077f713          	andi	a4,a5,7
   1a48e:	4401                	li	s0,0
   1a490:	cf0d                	beqz	a4,1a4ca <__subtf3+0xf6c>
   1a492:	4709                	li	a4,2
   1a494:	56f2                	lw	a3,60(sp)
   1a496:	14ea0463          	beq	s4,a4,1a5de <__subtf3+0x1080>
   1a49a:	470d                	li	a4,3
   1a49c:	12ea0b63          	beq	s4,a4,1a5d2 <__subtf3+0x1074>
   1a4a0:	020a1463          	bnez	s4,1a4c8 <__subtf3+0xf6a>
   1a4a4:	00f7f713          	andi	a4,a5,15
   1a4a8:	4611                	li	a2,4
   1a4aa:	00c70f63          	beq	a4,a2,1a4c8 <__subtf3+0xf6a>
   1a4ae:	0791                	addi	a5,a5,4
   1a4b0:	0047b793          	sltiu	a5,a5,4
   1a4b4:	5752                	lw	a4,52(sp)
   1a4b6:	973e                	add	a4,a4,a5
   1a4b8:	00f73733          	sltu	a4,a4,a5
   1a4bc:	57e2                	lw	a5,56(sp)
   1a4be:	97ba                	add	a5,a5,a4
   1a4c0:	00e7b7b3          	sltu	a5,a5,a4
   1a4c4:	97b6                	add	a5,a5,a3
   1a4c6:	de3e                	sw	a5,60(sp)
   1a4c8:	4405                	li	s0,1
   1a4ca:	56f2                	lw	a3,60(sp)
   1a4cc:	4781                	li	a5,0
   1a4ce:	82d1                	srli	a3,a3,0x14
   1a4d0:	0016c693          	xori	a3,a3,1
   1a4d4:	8a85                	andi	a3,a3,1
   1a4d6:	5702                	lw	a4,32(sp)
   1a4d8:	00777613          	andi	a2,a4,7
   1a4dc:	c229                	beqz	a2,1a51e <__subtf3+0xfc0>
   1a4de:	4589                	li	a1,2
   1a4e0:	5632                	lw	a2,44(sp)
   1a4e2:	10ba0863          	beq	s4,a1,1a5f2 <__subtf3+0x1094>
   1a4e6:	458d                	li	a1,3
   1a4e8:	0eba0e63          	beq	s4,a1,1a5e4 <__subtf3+0x1086>
   1a4ec:	020a1763          	bnez	s4,1a51a <__subtf3+0xfbc>
   1a4f0:	00f77593          	andi	a1,a4,15
   1a4f4:	4511                	li	a0,4
   1a4f6:	02a58263          	beq	a1,a0,1a51a <__subtf3+0xfbc>
   1a4fa:	0711                	addi	a4,a4,4
   1a4fc:	d03a                	sw	a4,32(sp)
   1a4fe:	00473713          	sltiu	a4,a4,4
   1a502:	5592                	lw	a1,36(sp)
   1a504:	972e                	add	a4,a4,a1
   1a506:	d23a                	sw	a4,36(sp)
   1a508:	00b73733          	sltu	a4,a4,a1
   1a50c:	55a2                	lw	a1,40(sp)
   1a50e:	972e                	add	a4,a4,a1
   1a510:	d43a                	sw	a4,40(sp)
   1a512:	00b73733          	sltu	a4,a4,a1
   1a516:	9732                	add	a4,a4,a2
   1a518:	d63a                	sw	a4,44(sp)
   1a51a:	00146413          	ori	s0,s0,1
   1a51e:	c689                	beqz	a3,1a528 <__subtf3+0xfca>
   1a520:	00147713          	andi	a4,s0,1
   1a524:	0706                	slli	a4,a4,0x1
   1a526:	8c59                	or	s0,s0,a4
   1a528:	5732                	lw	a4,44(sp)
   1a52a:	00c71693          	slli	a3,a4,0xc
   1a52e:	0006dc63          	bgez	a3,1a546 <__subtf3+0xfe8>
   1a532:	66a1                	lui	a3,0x8
   1a534:	0785                	addi	a5,a5,1
   1a536:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a538:	0cd78063          	beq	a5,a3,1a5f8 <__subtf3+0x109a>
   1a53c:	fff806b7          	lui	a3,0xfff80
   1a540:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff631d3>
   1a542:	8f75                	and	a4,a4,a3
   1a544:	d63a                	sw	a4,44(sp)
   1a546:	1018                	addi	a4,sp,32
   1a548:	106c                	addi	a1,sp,44
   1a54a:	4314                	lw	a3,0(a4)
   1a54c:	4350                	lw	a2,4(a4)
   1a54e:	828d                	srli	a3,a3,0x3
   1a550:	0676                	slli	a2,a2,0x1d
   1a552:	8ed1                	or	a3,a3,a2
   1a554:	c314                	sw	a3,0(a4)
   1a556:	0711                	addi	a4,a4,4
   1a558:	feb719e3          	bne	a4,a1,1a54a <__subtf3+0xfec>
   1a55c:	56b2                	lw	a3,44(sp)
   1a55e:	6621                	lui	a2,0x8
   1a560:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   1a564:	828d                	srli	a3,a3,0x3
   1a566:	d636                	sw	a3,44(sp)
   1a568:	00e79e63          	bne	a5,a4,1a584 <__subtf3+0x1026>
   1a56c:	5592                	lw	a1,36(sp)
   1a56e:	5702                	lw	a4,32(sp)
   1a570:	8f4d                	or	a4,a4,a1
   1a572:	55a2                	lw	a1,40(sp)
   1a574:	8f4d                	or	a4,a4,a1
   1a576:	8f55                	or	a4,a4,a3
   1a578:	c711                	beqz	a4,1a584 <__subtf3+0x1026>
   1a57a:	d632                	sw	a2,44(sp)
   1a57c:	d402                	sw	zero,40(sp)
   1a57e:	d202                	sw	zero,36(sp)
   1a580:	d002                	sw	zero,32(sp)
   1a582:	4981                	li	s3,0
   1a584:	55b2                	lw	a1,44(sp)
   1a586:	07c6                	slli	a5,a5,0x11
   1a588:	83c5                	srli	a5,a5,0x11
   1a58a:	09be                	slli	s3,s3,0xf
   1a58c:	00f9e9b3          	or	s3,s3,a5
   1a590:	02b11e23          	sh	a1,60(sp)
   1a594:	03311f23          	sh	s3,62(sp)
   1a598:	5602                	lw	a2,32(sp)
   1a59a:	5692                	lw	a3,36(sp)
   1a59c:	5722                	lw	a4,40(sp)
   1a59e:	57f2                	lw	a5,60(sp)
   1a5a0:	c019                	beqz	s0,1a5a6 <__subtf3+0x1048>
   1a5a2:	00142073          	csrs	fflags,s0
   1a5a6:	50b6                	lw	ra,108(sp)
   1a5a8:	5426                	lw	s0,104(sp)
   1a5aa:	00c92023          	sw	a2,0(s2)
   1a5ae:	00d92223          	sw	a3,4(s2)
   1a5b2:	00e92423          	sw	a4,8(s2)
   1a5b6:	00f92623          	sw	a5,12(s2)
   1a5ba:	5496                	lw	s1,100(sp)
   1a5bc:	49f6                	lw	s3,92(sp)
   1a5be:	4a66                	lw	s4,88(sp)
   1a5c0:	4ad6                	lw	s5,84(sp)
   1a5c2:	4b46                	lw	s6,80(sp)
   1a5c4:	4bb6                	lw	s7,76(sp)
   1a5c6:	4c26                	lw	s8,72(sp)
   1a5c8:	4c96                	lw	s9,68(sp)
   1a5ca:	854a                	mv	a0,s2
   1a5cc:	5906                	lw	s2,96(sp)
   1a5ce:	6165                	addi	sp,sp,112
   1a5d0:	8082                	ret
   1a5d2:	ee099be3          	bnez	s3,1a4c8 <__subtf3+0xf6a>
   1a5d6:	07a1                	addi	a5,a5,8
   1a5d8:	0087b793          	sltiu	a5,a5,8
   1a5dc:	bde1                	j	1a4b4 <__subtf3+0xf56>
   1a5de:	ee0985e3          	beqz	s3,1a4c8 <__subtf3+0xf6a>
   1a5e2:	bfd5                	j	1a5d6 <__subtf3+0x1078>
   1a5e4:	f2099be3          	bnez	s3,1a51a <__subtf3+0xfbc>
   1a5e8:	0721                	addi	a4,a4,8
   1a5ea:	d03a                	sw	a4,32(sp)
   1a5ec:	00873713          	sltiu	a4,a4,8
   1a5f0:	bf09                	j	1a502 <__subtf3+0xfa4>
   1a5f2:	f20984e3          	beqz	s3,1a51a <__subtf3+0xfbc>
   1a5f6:	bfcd                	j	1a5e8 <__subtf3+0x108a>
   1a5f8:	4701                	li	a4,0
   1a5fa:	020a0063          	beqz	s4,1a61a <__subtf3+0x10bc>
   1a5fe:	468d                	li	a3,3
   1a600:	00da1863          	bne	s4,a3,1a610 <__subtf3+0x10b2>
   1a604:	00098b63          	beqz	s3,1a61a <__subtf3+0x10bc>
   1a608:	67a1                	lui	a5,0x8
   1a60a:	577d                	li	a4,-1
   1a60c:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1a60e:	a031                	j	1a61a <__subtf3+0x10bc>
   1a610:	4689                	li	a3,2
   1a612:	feda1be3          	bne	s4,a3,1a608 <__subtf3+0x10aa>
   1a616:	fe0989e3          	beqz	s3,1a608 <__subtf3+0x10aa>
   1a61a:	d63a                	sw	a4,44(sp)
   1a61c:	d43a                	sw	a4,40(sp)
   1a61e:	d23a                	sw	a4,36(sp)
   1a620:	d03a                	sw	a4,32(sp)
   1a622:	00546413          	ori	s0,s0,5
   1a626:	b705                	j	1a546 <__subtf3+0xfe8>
   1a628:	d636                	sw	a3,44(sp)
   1a62a:	c76ff06f          	j	19aa0 <__subtf3+0x542>
   1a62e:	d68a8763          	beq	s5,s0,19b9c <__subtf3+0x63e>
   1a632:	4401                	li	s0,0
   1a634:	d16ff06f          	j	19b4a <__subtf3+0x5ec>
   1a638:	b68a8de3          	beq	s5,s0,1a1b2 <__subtf3+0xc54>
   1a63c:	4401                	li	s0,0
   1a63e:	b699                	j	1a184 <__subtf3+0xc26>

0001a640 <__unordtf2>:
   1a640:	4114                	lw	a3,0(a0)
   1a642:	00452f03          	lw	t5,4(a0)
   1a646:	00852e83          	lw	t4,8(a0)
   1a64a:	4550                	lw	a2,12(a0)
   1a64c:	419c                	lw	a5,0(a1)
   1a64e:	0045ae03          	lw	t3,4(a1)
   1a652:	0085a303          	lw	t1,8(a1)
   1a656:	45d8                	lw	a4,12(a1)
   1a658:	1141                	addi	sp,sp,-16
   1a65a:	002025f3          	frrm	a1
   1a65e:	6521                	lui	a0,0x8
   1a660:	01061813          	slli	a6,a2,0x10
   1a664:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1a666:	8241                	srli	a2,a2,0x10
   1a668:	01071593          	slli	a1,a4,0x10
   1a66c:	8e69                	and	a2,a2,a0
   1a66e:	8341                	srli	a4,a4,0x10
   1a670:	01085813          	srli	a6,a6,0x10
   1a674:	81c1                	srli	a1,a1,0x10
   1a676:	8f69                	and	a4,a4,a0
   1a678:	00a61963          	bne	a2,a0,1a68a <__unordtf2+0x4a>
   1a67c:	01e6e533          	or	a0,a3,t5
   1a680:	01d56533          	or	a0,a0,t4
   1a684:	01056533          	or	a0,a0,a6
   1a688:	e51d                	bnez	a0,1a6b6 <__unordtf2+0x76>
   1a68a:	68a1                	lui	a7,0x8
   1a68c:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   1a68e:	4501                	li	a0,0
   1a690:	05171c63          	bne	a4,a7,1a6e8 <__unordtf2+0xa8>
   1a694:	01c7e8b3          	or	a7,a5,t3
   1a698:	0068e8b3          	or	a7,a7,t1
   1a69c:	00b8e8b3          	or	a7,a7,a1
   1a6a0:	04088463          	beqz	a7,1a6e8 <__unordtf2+0xa8>
   1a6a4:	02e61a63          	bne	a2,a4,1a6d8 <__unordtf2+0x98>
   1a6a8:	01e6e6b3          	or	a3,a3,t5
   1a6ac:	01d6e6b3          	or	a3,a3,t4
   1a6b0:	0106e6b3          	or	a3,a3,a6
   1a6b4:	ca99                	beqz	a3,1a6ca <__unordtf2+0x8a>
   1a6b6:	0842                	slli	a6,a6,0x10
   1a6b8:	41085813          	srai	a6,a6,0x10
   1a6bc:	02085363          	bgez	a6,1a6e2 <__unordtf2+0xa2>
   1a6c0:	66a1                	lui	a3,0x8
   1a6c2:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a6c4:	4505                	li	a0,1
   1a6c6:	02d71163          	bne	a4,a3,1a6e8 <__unordtf2+0xa8>
   1a6ca:	01c7e7b3          	or	a5,a5,t3
   1a6ce:	0067e7b3          	or	a5,a5,t1
   1a6d2:	8fcd                	or	a5,a5,a1
   1a6d4:	4505                	li	a0,1
   1a6d6:	cb89                	beqz	a5,1a6e8 <__unordtf2+0xa8>
   1a6d8:	05c2                	slli	a1,a1,0x10
   1a6da:	85c1                	srai	a1,a1,0x10
   1a6dc:	4505                	li	a0,1
   1a6de:	0005c563          	bltz	a1,1a6e8 <__unordtf2+0xa8>
   1a6e2:	00186073          	csrsi	fflags,16
   1a6e6:	4505                	li	a0,1
   1a6e8:	0141                	addi	sp,sp,16
   1a6ea:	8082                	ret

0001a6ec <__fixtfsi>:
   1a6ec:	411c                	lw	a5,0(a0)
   1a6ee:	00452803          	lw	a6,4(a0)
   1a6f2:	4518                	lw	a4,8(a0)
   1a6f4:	4550                	lw	a2,12(a0)
   1a6f6:	1101                	addi	sp,sp,-32
   1a6f8:	002026f3          	frrm	a3
   1a6fc:	01061693          	slli	a3,a2,0x10
   1a700:	00161593          	slli	a1,a2,0x1
   1a704:	c632                	sw	a2,12(sp)
   1a706:	01f65893          	srli	a7,a2,0x1f
   1a70a:	6611                	lui	a2,0x4
   1a70c:	c03e                	sw	a5,0(sp)
   1a70e:	c242                	sw	a6,4(sp)
   1a710:	c43a                	sw	a4,8(sp)
   1a712:	c83e                	sw	a5,16(sp)
   1a714:	ca42                	sw	a6,20(sp)
   1a716:	cc3a                	sw	a4,24(sp)
   1a718:	81c5                	srli	a1,a1,0x11
   1a71a:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   1a71c:	82c1                	srli	a3,a3,0x10
   1a71e:	00b64a63          	blt	a2,a1,1a732 <__fixtfsi+0x46>
   1a722:	e9f9                	bnez	a1,1a7f8 <__fixtfsi+0x10c>
   1a724:	0107e533          	or	a0,a5,a6
   1a728:	8d59                	or	a0,a0,a4
   1a72a:	8d55                	or	a0,a0,a3
   1a72c:	e571                	bnez	a0,1a7f8 <__fixtfsi+0x10c>
   1a72e:	6105                	addi	sp,sp,32
   1a730:	8082                	ret
   1a732:	6511                	lui	a0,0x4
   1a734:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   1a736:	8646                	mv	a2,a7
   1a738:	02b55763          	bge	a0,a1,1a766 <__fixtfsi+0x7a>
   1a73c:	0c088163          	beqz	a7,1a7fe <__fixtfsi+0x112>
   1a740:	6511                	lui	a0,0x4
   1a742:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   1a744:	0ca59263          	bne	a1,a0,1a808 <__fixtfsi+0x11c>
   1a748:	01175593          	srli	a1,a4,0x11
   1a74c:	06be                	slli	a3,a3,0xf
   1a74e:	8ecd                	or	a3,a3,a1
   1a750:	eec5                	bnez	a3,1a808 <__fixtfsi+0x11c>
   1a752:	0107e7b3          	or	a5,a5,a6
   1a756:	073e                	slli	a4,a4,0xf
   1a758:	8f5d                	or	a4,a4,a5
   1a75a:	80000537          	lui	a0,0x80000
   1a75e:	db61                	beqz	a4,1a72e <__fixtfsi+0x42>
   1a760:	00162073          	csrs	fflags,a2
   1a764:	b7e9                	j	1a72e <__fixtfsi+0x42>
   1a766:	67c1                	lui	a5,0x10
   1a768:	8fd5                	or	a5,a5,a3
   1a76a:	6691                	lui	a3,0x4
   1a76c:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   1a770:	8e8d                	sub	a3,a3,a1
   1a772:	4056d513          	srai	a0,a3,0x5
   1a776:	ce3e                	sw	a5,28(sp)
   1a778:	8afd                	andi	a3,a3,31
   1a77a:	080c                	addi	a1,sp,16
   1a77c:	4801                	li	a6,0
   1a77e:	4601                	li	a2,0
   1a780:	0005a303          	lw	t1,0(a1)
   1a784:	0605                	addi	a2,a2,1
   1a786:	0591                	addi	a1,a1,4
   1a788:	00686833          	or	a6,a6,t1
   1a78c:	fec51ae3          	bne	a0,a2,1a780 <__fixtfsi+0x94>
   1a790:	00251613          	slli	a2,a0,0x2
   1a794:	e28d                	bnez	a3,1a7b6 <__fixtfsi+0xca>
   1a796:	02060793          	addi	a5,a2,32
   1a79a:	00278633          	add	a2,a5,sp
   1a79e:	ff062783          	lw	a5,-16(a2)
   1a7a2:	c83e                	sw	a5,16(sp)
   1a7a4:	4542                	lw	a0,16(sp)
   1a7a6:	00088463          	beqz	a7,1a7ae <__fixtfsi+0xc2>
   1a7aa:	40a00533          	neg	a0,a0
   1a7ae:	4605                	li	a2,1
   1a7b0:	fa0818e3          	bnez	a6,1a760 <__fixtfsi+0x74>
   1a7b4:	bfad                	j	1a72e <__fixtfsi+0x42>
   1a7b6:	02060613          	addi	a2,a2,32
   1a7ba:	960a                	add	a2,a2,sp
   1a7bc:	ff062603          	lw	a2,-16(a2)
   1a7c0:	02000593          	li	a1,32
   1a7c4:	8d95                	sub	a1,a1,a3
   1a7c6:	00b61633          	sll	a2,a2,a1
   1a7ca:	4309                	li	t1,2
   1a7cc:	00c86833          	or	a6,a6,a2
   1a7d0:	4601                	li	a2,0
   1a7d2:	00651963          	bne	a0,t1,1a7e4 <__fixtfsi+0xf8>
   1a7d6:	00d75733          	srl	a4,a4,a3
   1a7da:	00b795b3          	sll	a1,a5,a1
   1a7de:	8f4d                	or	a4,a4,a1
   1a7e0:	c83a                	sw	a4,16(sp)
   1a7e2:	4605                	li	a2,1
   1a7e4:	060a                	slli	a2,a2,0x2
   1a7e6:	02060713          	addi	a4,a2,32
   1a7ea:	00270633          	add	a2,a4,sp
   1a7ee:	00d7d7b3          	srl	a5,a5,a3
   1a7f2:	fef62823          	sw	a5,-16(a2)
   1a7f6:	b77d                	j	1a7a4 <__fixtfsi+0xb8>
   1a7f8:	4605                	li	a2,1
   1a7fa:	4501                	li	a0,0
   1a7fc:	b795                	j	1a760 <__fixtfsi+0x74>
   1a7fe:	80000537          	lui	a0,0x80000
   1a802:	4641                	li	a2,16
   1a804:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe31d3>
   1a806:	bfa9                	j	1a760 <__fixtfsi+0x74>
   1a808:	4641                	li	a2,16
   1a80a:	80000537          	lui	a0,0x80000
   1a80e:	bf89                	j	1a760 <__fixtfsi+0x74>

0001a810 <__floatsitf>:
   1a810:	7179                	addi	sp,sp,-48
   1a812:	d226                	sw	s1,36(sp)
   1a814:	d606                	sw	ra,44(sp)
   1a816:	d422                	sw	s0,40(sp)
   1a818:	d04a                	sw	s2,32(sp)
   1a81a:	84aa                	mv	s1,a0
   1a81c:	cdcd                	beqz	a1,1a8d6 <__floatsitf+0xc6>
   1a81e:	41f5d793          	srai	a5,a1,0x1f
   1a822:	00b7c433          	xor	s0,a5,a1
   1a826:	8c1d                	sub	s0,s0,a5
   1a828:	8522                	mv	a0,s0
   1a82a:	01f5d913          	srli	s2,a1,0x1f
   1a82e:	2481                	jal	1aa6e <__clzsi2>
   1a830:	6711                	lui	a4,0x4
   1a832:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1a834:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe3225>
   1a838:	40a70633          	sub	a2,a4,a0
   1a83c:	c822                	sw	s0,16(sp)
   1a83e:	4057d713          	srai	a4,a5,0x5
   1a842:	ca02                	sw	zero,20(sp)
   1a844:	cc02                	sw	zero,24(sp)
   1a846:	ce02                	sw	zero,28(sp)
   1a848:	8bfd                	andi	a5,a5,31
   1a84a:	c78d                	beqz	a5,1a874 <__floatsitf+0x64>
   1a84c:	4689                	li	a3,2
   1a84e:	08d71263          	bne	a4,a3,1a8d2 <__floatsitf+0xc2>
   1a852:	02000693          	li	a3,32
   1a856:	8e9d                	sub	a3,a3,a5
   1a858:	00d456b3          	srl	a3,s0,a3
   1a85c:	ce36                	sw	a3,28(sp)
   1a85e:	fff70693          	addi	a3,a4,-1
   1a862:	070a                	slli	a4,a4,0x2
   1a864:	02070713          	addi	a4,a4,32
   1a868:	970a                	add	a4,a4,sp
   1a86a:	00f41433          	sll	s0,s0,a5
   1a86e:	fe872823          	sw	s0,-16(a4)
   1a872:	a005                	j	1a892 <__floatsitf+0x82>
   1a874:	478d                	li	a5,3
   1a876:	8f99                	sub	a5,a5,a4
   1a878:	078a                	slli	a5,a5,0x2
   1a87a:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1a87e:	978a                	add	a5,a5,sp
   1a880:	ff07a783          	lw	a5,-16(a5)
   1a884:	4689                	li	a3,2
   1a886:	ce3e                	sw	a5,28(sp)
   1a888:	4789                	li	a5,2
   1a88a:	00f71463          	bne	a4,a5,1a892 <__floatsitf+0x82>
   1a88e:	cc22                	sw	s0,24(sp)
   1a890:	4685                	li	a3,1
   1a892:	068a                	slli	a3,a3,0x2
   1a894:	c802                	sw	zero,16(sp)
   1a896:	ca02                	sw	zero,20(sp)
   1a898:	16f1                	addi	a3,a3,-4
   1a89a:	4791                	li	a5,4
   1a89c:	00f6e363          	bltu	a3,a5,1a8a2 <__floatsitf+0x92>
   1a8a0:	cc02                	sw	zero,24(sp)
   1a8a2:	85ca                	mv	a1,s2
   1a8a4:	47f2                	lw	a5,28(sp)
   1a8a6:	00f59413          	slli	s0,a1,0xf
   1a8aa:	8c51                	or	s0,s0,a2
   1a8ac:	00811723          	sh	s0,14(sp)
   1a8b0:	00f11623          	sh	a5,12(sp)
   1a8b4:	4542                	lw	a0,16(sp)
   1a8b6:	46d2                	lw	a3,20(sp)
   1a8b8:	4762                	lw	a4,24(sp)
   1a8ba:	47b2                	lw	a5,12(sp)
   1a8bc:	50b2                	lw	ra,44(sp)
   1a8be:	5422                	lw	s0,40(sp)
   1a8c0:	c088                	sw	a0,0(s1)
   1a8c2:	c0d4                	sw	a3,4(s1)
   1a8c4:	c498                	sw	a4,8(s1)
   1a8c6:	c4dc                	sw	a5,12(s1)
   1a8c8:	5902                	lw	s2,32(sp)
   1a8ca:	8526                	mv	a0,s1
   1a8cc:	5492                	lw	s1,36(sp)
   1a8ce:	6145                	addi	sp,sp,48
   1a8d0:	8082                	ret
   1a8d2:	470d                	li	a4,3
   1a8d4:	b769                	j	1a85e <__floatsitf+0x4e>
   1a8d6:	ce02                	sw	zero,28(sp)
   1a8d8:	cc02                	sw	zero,24(sp)
   1a8da:	ca02                	sw	zero,20(sp)
   1a8dc:	c802                	sw	zero,16(sp)
   1a8de:	4601                	li	a2,0
   1a8e0:	b7d1                	j	1a8a4 <__floatsitf+0x94>

0001a8e2 <__extenddftf2>:
   1a8e2:	7139                	addi	sp,sp,-64
   1a8e4:	d84a                	sw	s2,48(sp)
   1a8e6:	d64e                	sw	s3,44(sp)
   1a8e8:	de06                	sw	ra,60(sp)
   1a8ea:	dc22                	sw	s0,56(sp)
   1a8ec:	da26                	sw	s1,52(sp)
   1a8ee:	89aa                	mv	s3,a0
   1a8f0:	892e                	mv	s2,a1
   1a8f2:	002027f3          	frrm	a5
   1a8f6:	01465413          	srli	s0,a2,0x14
   1a8fa:	00c61793          	slli	a5,a2,0xc
   1a8fe:	7ff47413          	andi	s0,s0,2047
   1a902:	83b1                	srli	a5,a5,0xc
   1a904:	00140713          	addi	a4,s0,1
   1a908:	c82e                	sw	a1,16(sp)
   1a90a:	ca3e                	sw	a5,20(sp)
   1a90c:	ce02                	sw	zero,28(sp)
   1a90e:	cc02                	sw	zero,24(sp)
   1a910:	7fe77713          	andi	a4,a4,2046
   1a914:	01f65493          	srli	s1,a2,0x1f
   1a918:	c325                	beqz	a4,1a978 <__extenddftf2+0x96>
   1a91a:	0047d693          	srli	a3,a5,0x4
   1a91e:	6711                	lui	a4,0x4
   1a920:	ce36                	sw	a3,28(sp)
   1a922:	07f2                	slli	a5,a5,0x1c
   1a924:	0045d693          	srli	a3,a1,0x4
   1a928:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1a92c:	8fd5                	or	a5,a5,a3
   1a92e:	01c59913          	slli	s2,a1,0x1c
   1a932:	9722                	add	a4,a4,s0
   1a934:	cc3e                	sw	a5,24(sp)
   1a936:	ca4a                	sw	s2,20(sp)
   1a938:	c802                	sw	zero,16(sp)
   1a93a:	4401                	li	s0,0
   1a93c:	47f2                	lw	a5,28(sp)
   1a93e:	04be                	slli	s1,s1,0xf
   1a940:	8cd9                	or	s1,s1,a4
   1a942:	00f11623          	sh	a5,12(sp)
   1a946:	00911723          	sh	s1,14(sp)
   1a94a:	45c2                	lw	a1,16(sp)
   1a94c:	4652                	lw	a2,20(sp)
   1a94e:	46e2                	lw	a3,24(sp)
   1a950:	47b2                	lw	a5,12(sp)
   1a952:	c019                	beqz	s0,1a958 <__extenddftf2+0x76>
   1a954:	00186073          	csrsi	fflags,16
   1a958:	50f2                	lw	ra,60(sp)
   1a95a:	5462                	lw	s0,56(sp)
   1a95c:	00b9a023          	sw	a1,0(s3)
   1a960:	00c9a223          	sw	a2,4(s3)
   1a964:	00d9a423          	sw	a3,8(s3)
   1a968:	00f9a623          	sw	a5,12(s3)
   1a96c:	54d2                	lw	s1,52(sp)
   1a96e:	5942                	lw	s2,48(sp)
   1a970:	854e                	mv	a0,s3
   1a972:	59b2                	lw	s3,44(sp)
   1a974:	6121                	addi	sp,sp,64
   1a976:	8082                	ret
   1a978:	00b7e533          	or	a0,a5,a1
   1a97c:	e061                	bnez	s0,1aa3c <__extenddftf2+0x15a>
   1a97e:	4701                	li	a4,0
   1a980:	dd55                	beqz	a0,1a93c <__extenddftf2+0x5a>
   1a982:	c7a1                	beqz	a5,1a9ca <__extenddftf2+0xe8>
   1a984:	853e                	mv	a0,a5
   1a986:	20e5                	jal	1aa6e <__clzsi2>
   1a988:	03150693          	addi	a3,a0,49
   1a98c:	4056d793          	srai	a5,a3,0x5
   1a990:	8afd                	andi	a3,a3,31
   1a992:	c2a1                	beqz	a3,1a9d2 <__extenddftf2+0xf0>
   1a994:	5671                	li	a2,-4
   1a996:	02c78633          	mul	a2,a5,a2
   1a99a:	02000813          	li	a6,32
   1a99e:	01010313          	addi	t1,sp,16
   1a9a2:	40d80833          	sub	a6,a6,a3
   1a9a6:	00c60713          	addi	a4,a2,12
   1a9aa:	971a                	add	a4,a4,t1
   1a9ac:	40c00633          	neg	a2,a2
   1a9b0:	06e31763          	bne	t1,a4,1aa1e <__extenddftf2+0x13c>
   1a9b4:	fff78713          	addi	a4,a5,-1
   1a9b8:	078a                	slli	a5,a5,0x2
   1a9ba:	02078793          	addi	a5,a5,32
   1a9be:	978a                	add	a5,a5,sp
   1a9c0:	00d916b3          	sll	a3,s2,a3
   1a9c4:	fed7a823          	sw	a3,-16(a5)
   1a9c8:	a025                	j	1a9f0 <__extenddftf2+0x10e>
   1a9ca:	2055                	jal	1aa6e <__clzsi2>
   1a9cc:	02050513          	addi	a0,a0,32
   1a9d0:	bf65                	j	1a988 <__extenddftf2+0xa6>
   1a9d2:	5671                	li	a2,-4
   1a9d4:	02c78633          	mul	a2,a5,a2
   1a9d8:	0878                	addi	a4,sp,28
   1a9da:	468d                	li	a3,3
   1a9dc:	00c705b3          	add	a1,a4,a2
   1a9e0:	418c                	lw	a1,0(a1)
   1a9e2:	16fd                	addi	a3,a3,-1
   1a9e4:	1771                	addi	a4,a4,-4
   1a9e6:	c34c                	sw	a1,4(a4)
   1a9e8:	fef6dae3          	bge	a3,a5,1a9dc <__extenddftf2+0xfa>
   1a9ec:	fff78713          	addi	a4,a5,-1
   1a9f0:	00170793          	addi	a5,a4,1
   1a9f4:	078a                	slli	a5,a5,0x2
   1a9f6:	46a1                	li	a3,8
   1a9f8:	0818                	addi	a4,sp,16
   1a9fa:	00d7e863          	bltu	a5,a3,1aa0a <__extenddftf2+0x128>
   1a9fe:	00072023          	sw	zero,0(a4)
   1aa02:	00072223          	sw	zero,4(a4)
   1aa06:	17e1                	addi	a5,a5,-8
   1aa08:	0838                	addi	a4,sp,24
   1aa0a:	4691                	li	a3,4
   1aa0c:	00d7e463          	bltu	a5,a3,1aa14 <__extenddftf2+0x132>
   1aa10:	00072023          	sw	zero,0(a4)
   1aa14:	6711                	lui	a4,0x4
   1aa16:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1aa1a:	8f09                	sub	a4,a4,a0
   1aa1c:	b705                	j	1a93c <__extenddftf2+0x5a>
   1aa1e:	430c                	lw	a1,0(a4)
   1aa20:	ffc72883          	lw	a7,-4(a4)
   1aa24:	00c70e33          	add	t3,a4,a2
   1aa28:	00d595b3          	sll	a1,a1,a3
   1aa2c:	0108d8b3          	srl	a7,a7,a6
   1aa30:	0115e5b3          	or	a1,a1,a7
   1aa34:	00be2023          	sw	a1,0(t3)
   1aa38:	1771                	addi	a4,a4,-4
   1aa3a:	bf9d                	j	1a9b0 <__extenddftf2+0xce>
   1aa3c:	c515                	beqz	a0,1aa68 <__extenddftf2+0x186>
   1aa3e:	01c79713          	slli	a4,a5,0x1c
   1aa42:	0045d693          	srli	a3,a1,0x4
   1aa46:	8f55                	or	a4,a4,a3
   1aa48:	00080437          	lui	s0,0x80
   1aa4c:	0087b433          	sltu	s0,a5,s0
   1aa50:	cc3a                	sw	a4,24(sp)
   1aa52:	8391                	srli	a5,a5,0x4
   1aa54:	6721                	lui	a4,0x8
   1aa56:	01c59913          	slli	s2,a1,0x1c
   1aa5a:	8fd9                	or	a5,a5,a4
   1aa5c:	0412                	slli	s0,s0,0x4
   1aa5e:	ca4a                	sw	s2,20(sp)
   1aa60:	c802                	sw	zero,16(sp)
   1aa62:	ce3e                	sw	a5,28(sp)
   1aa64:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1aa66:	bdd9                	j	1a93c <__extenddftf2+0x5a>
   1aa68:	4401                	li	s0,0
   1aa6a:	6721                	lui	a4,0x8
   1aa6c:	bfe5                	j	1aa64 <__extenddftf2+0x182>

0001aa6e <__clzsi2>:
   1aa6e:	67c1                	lui	a5,0x10
   1aa70:	02f57563          	bgeu	a0,a5,1aa9a <__clzsi2+0x2c>
   1aa74:	10053793          	sltiu	a5,a0,256
   1aa78:	0017b793          	seqz	a5,a5
   1aa7c:	078e                	slli	a5,a5,0x3
   1aa7e:	676d                	lui	a4,0x1b
   1aa80:	02000693          	li	a3,32
   1aa84:	8e9d                	sub	a3,a3,a5
   1aa86:	00f55533          	srl	a0,a0,a5
   1aa8a:	2d070793          	addi	a5,a4,720 # 1b2d0 <__clz_tab>
   1aa8e:	97aa                	add	a5,a5,a0
   1aa90:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1aa94:	40a68533          	sub	a0,a3,a0
   1aa98:	8082                	ret
   1aa9a:	01000737          	lui	a4,0x1000
   1aa9e:	47e1                	li	a5,24
   1aaa0:	fce57fe3          	bgeu	a0,a4,1aa7e <__clzsi2+0x10>
   1aaa4:	47c1                	li	a5,16
   1aaa6:	bfe1                	j	1aa7e <__clzsi2+0x10>
