
sim_Os/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	404010ef          	jal	114a2 <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	373070ef          	jal	17c1e <_exit>

000100b0 <main>:
   100b0:	715d                	addi	sp,sp,-80
   100b2:	65e9                	lui	a1,0x1a
   100b4:	4639                	li	a2,14
   100b6:	2f458593          	addi	a1,a1,756 # 1a2f4 <__clzsi2+0x74>
   100ba:	850a                	mv	a0,sp
   100bc:	c686                	sw	ra,76(sp)
   100be:	c4a2                	sw	s0,72(sp)
   100c0:	c2a6                	sw	s1,68(sp)
   100c2:	c0ca                	sw	s2,64(sp)
   100c4:	de4e                	sw	s3,60(sp)
   100c6:	232010ef          	jal	112f8 <memcpy>
   100ca:	4635                	li	a2,13
   100cc:	4681                	li	a3,0
   100ce:	858a                	mv	a1,sp
   100d0:	0808                	addi	a0,sp,16
   100d2:	26e1                	jal	1049a <crypto_hash>
   100d4:	c115                	beqz	a0,100f8 <main+0x48>
   100d6:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   100da:	6569                	lui	a0,0x1a
   100dc:	2c050513          	addi	a0,a0,704 # 1a2c0 <__clzsi2+0x40>
   100e0:	47cc                	lw	a1,12(a5)
   100e2:	4405                	li	s0,1
   100e4:	063000ef          	jal	10946 <fputs>
   100e8:	40b6                	lw	ra,76(sp)
   100ea:	8522                	mv	a0,s0
   100ec:	4426                	lw	s0,72(sp)
   100ee:	4496                	lw	s1,68(sp)
   100f0:	4906                	lw	s2,64(sp)
   100f2:	59f2                	lw	s3,60(sp)
   100f4:	6161                	addi	sp,sp,80
   100f6:	8082                	ret
   100f8:	842a                	mv	s0,a0
   100fa:	6569                	lui	a0,0x1a
   100fc:	858a                	mv	a1,sp
   100fe:	2d850513          	addi	a0,a0,728 # 1a2d8 <__clzsi2+0x58>
   10102:	435000ef          	jal	10d36 <printf>
   10106:	6569                	lui	a0,0x1a
   10108:	2e450513          	addi	a0,a0,740 # 1a2e4 <__clzsi2+0x64>
   1010c:	42b000ef          	jal	10d36 <printf>
   10110:	4481                	li	s1,0
   10112:	69e9                	lui	s3,0x1a
   10114:	02000913          	li	s2,32
   10118:	081c                	addi	a5,sp,16
   1011a:	97a6                	add	a5,a5,s1
   1011c:	0007c583          	lbu	a1,0(a5)
   10120:	2ec98513          	addi	a0,s3,748 # 1a2ec <__clzsi2+0x6c>
   10124:	0485                	addi	s1,s1,1
   10126:	411000ef          	jal	10d36 <printf>
   1012a:	ff2497e3          	bne	s1,s2,10118 <main+0x68>
   1012e:	4529                	li	a0,10
   10130:	439000ef          	jal	10d68 <putchar>
   10134:	bf55                	j	100e8 <main+0x38>

00010136 <register_fini>:
   10136:	00000793          	li	a5,0
   1013a:	c791                	beqz	a5,10146 <register_fini+0x10>
   1013c:	6551                	lui	a0,0x14
   1013e:	59250513          	addi	a0,a0,1426 # 14592 <__libc_fini_array>
   10142:	42e0106f          	j	11570 <atexit>
   10146:	8082                	ret

00010148 <_start>:
   10148:	0000b197          	auipc	gp,0xb
   1014c:	6c818193          	addi	gp,gp,1736 # 1b810 <__global_pointer$>
   10150:	f2018513          	addi	a0,gp,-224 # 1b730 <__stdio_exit_handler>
   10154:	24c18613          	addi	a2,gp,588 # 1ba5c <__BSS_END__>
   10158:	8e09                	sub	a2,a2,a0
   1015a:	4581                	li	a1,0
   1015c:	0f4010ef          	jal	11250 <memset>
   10160:	00001517          	auipc	a0,0x1
   10164:	41050513          	addi	a0,a0,1040 # 11570 <atexit>
   10168:	c519                	beqz	a0,10176 <_start+0x2e>
   1016a:	00004517          	auipc	a0,0x4
   1016e:	42850513          	addi	a0,a0,1064 # 14592 <__libc_fini_array>
   10172:	3fe010ef          	jal	11570 <atexit>
   10176:	7a5000ef          	jal	1111a <__libc_init_array>
   1017a:	4502                	lw	a0,0(sp)
   1017c:	004c                	addi	a1,sp,4
   1017e:	4601                	li	a2,0
   10180:	3f05                	jal	100b0 <main>
   10182:	bf09                	j	10094 <exit>

00010184 <__do_global_dtors_aux>:
   10184:	1141                	addi	sp,sp,-16
   10186:	c422                	sw	s0,8(sp)
   10188:	f401c783          	lbu	a5,-192(gp) # 1b750 <completed.1>
   1018c:	c606                	sw	ra,12(sp)
   1018e:	ef91                	bnez	a5,101aa <__do_global_dtors_aux+0x26>
   10190:	00000793          	li	a5,0
   10194:	cb81                	beqz	a5,101a4 <__do_global_dtors_aux+0x20>
   10196:	656d                	lui	a0,0x1b
   10198:	00050513          	mv	a0,a0
   1019c:	00000097          	auipc	ra,0x0
   101a0:	000000e7          	jalr	zero # 0 <exit-0x10094>
   101a4:	4785                	li	a5,1
   101a6:	f4f18023          	sb	a5,-192(gp) # 1b750 <completed.1>
   101aa:	40b2                	lw	ra,12(sp)
   101ac:	4422                	lw	s0,8(sp)
   101ae:	0141                	addi	sp,sp,16
   101b0:	8082                	ret

000101b2 <frame_dummy>:
   101b2:	00000793          	li	a5,0
   101b6:	cb91                	beqz	a5,101ca <frame_dummy+0x18>
   101b8:	656d                	lui	a0,0x1b
   101ba:	f4418593          	addi	a1,gp,-188 # 1b754 <object.0>
   101be:	00050513          	mv	a0,a0
   101c2:	00000317          	auipc	t1,0x0
   101c6:	00000067          	jr	zero # 0 <exit-0x10094>
   101ca:	8082                	ret

000101cc <ROUND>:
   101cc:	1141                	addi	sp,sp,-16
   101ce:	5154                	lw	a3,36(a0)
   101d0:	00452383          	lw	t2,4(a0) # 1b004 <__init_array_start>
   101d4:	01c52f83          	lw	t6,28(a0)
   101d8:	c622                	sw	s0,12(sp)
   101da:	c24a                	sw	s2,4(sp)
   101dc:	5110                	lw	a2,32(a0)
   101de:	00852903          	lw	s2,8(a0)
   101e2:	4100                	lw	s0,0(a0)
   101e4:	491c                	lw	a5,16(a0)
   101e6:	c426                	sw	s1,8(sp)
   101e8:	4958                	lw	a4,20(a0)
   101ea:	4544                	lw	s1,12(a0)
   101ec:	01852283          	lw	t0,24(a0)
   101f0:	00d3c3b3          	xor	t2,t2,a3
   101f4:	8c31                	xor	s0,s0,a2
   101f6:	01f6c6b3          	xor	a3,a3,t6
   101fa:	0127c7b3          	xor	a5,a5,s2
   101fe:	ffffcf13          	not	t5,t6
   10202:	fff3ce13          	not	t3,t2
   10206:	8f25                	xor	a4,a4,s1
   10208:	8dbd                	xor	a1,a1,a5
   1020a:	fff94313          	not	t1,s2
   1020e:	fff4c893          	not	a7,s1
   10212:	00df7f33          	and	t5,t5,a3
   10216:	fff44e93          	not	t4,s0
   1021a:	009e7e33          	and	t3,t3,s1
   1021e:	00de4e33          	xor	t3,t3,a3
   10222:	00564633          	xor	a2,a2,t0
   10226:	00ef4f33          	xor	t5,t5,a4
   1022a:	00b37333          	and	t1,t1,a1
   1022e:	00e8f8b3          	and	a7,a7,a4
   10232:	fff2c813          	not	a6,t0
   10236:	012efeb3          	and	t4,t4,s2
   1023a:	fff5c793          	not	a5,a1
   1023e:	fff74713          	not	a4,a4
   10242:	fff6c693          	not	a3,a3
   10246:	00ceceb3          	xor	t4,t4,a2
   1024a:	00834333          	xor	t1,t1,s0
   1024e:	0078c8b3          	xor	a7,a7,t2
   10252:	00c87833          	and	a6,a6,a2
   10256:	0057f7b3          	and	a5,a5,t0
   1025a:	01f77733          	and	a4,a4,t6
   1025e:	0076f6b3          	and	a3,a3,t2
   10262:	fff64613          	not	a2,a2
   10266:	00b84833          	xor	a6,a6,a1
   1026a:	0067c7b3          	xor	a5,a5,t1
   1026e:	01174733          	xor	a4,a4,a7
   10272:	01d34333          	xor	t1,t1,t4
   10276:	01c8c8b3          	xor	a7,a7,t3
   1027a:	8e61                	and	a2,a2,s0
   1027c:	01e6c6b3          	xor	a3,a3,t5
   10280:	01f6c6b3          	xor	a3,a3,t6
   10284:	ffff4593          	not	a1,t5
   10288:	01064633          	xor	a2,a2,a6
   1028c:	01335f13          	srli	t5,t1,0x13
   10290:	00d89f93          	slli	t6,a7,0xd
   10294:	00564633          	xor	a2,a2,t0
   10298:	01efefb3          	or	t6,t6,t5
   1029c:	0138d293          	srli	t0,a7,0x13
   102a0:	00d31f13          	slli	t5,t1,0xd
   102a4:	005f6f33          	or	t5,t5,t0
   102a8:	00489393          	slli	t2,a7,0x4
   102ac:	01c35293          	srli	t0,t1,0x1c
   102b0:	01c8d413          	srli	s0,a7,0x1c
   102b4:	0053e3b3          	or	t2,t2,t0
   102b8:	00431293          	slli	t0,t1,0x4
   102bc:	0082e2b3          	or	t0,t0,s0
   102c0:	005f4f33          	xor	t5,t5,t0
   102c4:	007fcfb3          	xor	t6,t6,t2
   102c8:	8f25                	xor	a4,a4,s1
   102ca:	0127c7b3          	xor	a5,a5,s2
   102ce:	006fc333          	xor	t1,t6,t1
   102d2:	011f48b3          	xor	a7,t5,a7
   102d6:	00652023          	sw	t1,0(a0)
   102da:	01152223          	sw	a7,4(a0)
   102de:	00371313          	slli	t1,a4,0x3
   102e2:	01d7d893          	srli	a7,a5,0x1d
   102e6:	00379f13          	slli	t5,a5,0x3
   102ea:	0068e8b3          	or	a7,a7,t1
   102ee:	01d75313          	srli	t1,a4,0x1d
   102f2:	01971f93          	slli	t6,a4,0x19
   102f6:	01e36333          	or	t1,t1,t5
   102fa:	0077df13          	srli	t5,a5,0x7
   102fe:	01ff6f33          	or	t5,t5,t6
   10302:	01979293          	slli	t0,a5,0x19
   10306:	00775f93          	srli	t6,a4,0x7
   1030a:	005fefb3          	or	t6,t6,t0
   1030e:	01f34333          	xor	t1,t1,t6
   10312:	01e8c8b3          	xor	a7,a7,t5
   10316:	00f347b3          	xor	a5,t1,a5
   1031a:	fff84813          	not	a6,a6
   1031e:	c51c                	sw	a5,8(a0)
   10320:	00e8c7b3          	xor	a5,a7,a4
   10324:	c55c                	sw	a5,12(a0)
   10326:	01f59713          	slli	a4,a1,0x1f
   1032a:	00185793          	srli	a5,a6,0x1
   1032e:	0015d893          	srli	a7,a1,0x1
   10332:	8f5d                	or	a4,a4,a5
   10334:	01f81793          	slli	a5,a6,0x1f
   10338:	0117e7b3          	or	a5,a5,a7
   1033c:	01a59313          	slli	t1,a1,0x1a
   10340:	00685893          	srli	a7,a6,0x6
   10344:	01136333          	or	t1,t1,a7
   10348:	0065df13          	srli	t5,a1,0x6
   1034c:	01a81893          	slli	a7,a6,0x1a
   10350:	01e8e8b3          	or	a7,a7,t5
   10354:	0117c7b3          	xor	a5,a5,a7
   10358:	00674733          	xor	a4,a4,t1
   1035c:	01074733          	xor	a4,a4,a6
   10360:	8fad                	xor	a5,a5,a1
   10362:	c918                	sw	a4,16(a0)
   10364:	c95c                	sw	a5,20(a0)
   10366:	01669713          	slli	a4,a3,0x16
   1036a:	00a65793          	srli	a5,a2,0xa
   1036e:	00a6d593          	srli	a1,a3,0xa
   10372:	8f5d                	or	a4,a4,a5
   10374:	01661793          	slli	a5,a2,0x16
   10378:	8fcd                	or	a5,a5,a1
   1037a:	00f69813          	slli	a6,a3,0xf
   1037e:	01165593          	srli	a1,a2,0x11
   10382:	00b86833          	or	a6,a6,a1
   10386:	0116d893          	srli	a7,a3,0x11
   1038a:	00f61593          	slli	a1,a2,0xf
   1038e:	0115e5b3          	or	a1,a1,a7
   10392:	8fad                	xor	a5,a5,a1
   10394:	01074733          	xor	a4,a4,a6
   10398:	8f31                	xor	a4,a4,a2
   1039a:	8fb5                	xor	a5,a5,a3
   1039c:	cd18                	sw	a4,24(a0)
   1039e:	cd5c                	sw	a5,28(a0)
   103a0:	019e1713          	slli	a4,t3,0x19
   103a4:	007ed793          	srli	a5,t4,0x7
   103a8:	8f5d                	or	a4,a4,a5
   103aa:	007e5693          	srli	a3,t3,0x7
   103ae:	019e9793          	slli	a5,t4,0x19
   103b2:	8fd5                	or	a5,a5,a3
   103b4:	017e1613          	slli	a2,t3,0x17
   103b8:	009ed693          	srli	a3,t4,0x9
   103bc:	8ed1                	or	a3,a3,a2
   103be:	017e9593          	slli	a1,t4,0x17
   103c2:	009e5613          	srli	a2,t3,0x9
   103c6:	8e4d                	or	a2,a2,a1
   103c8:	4432                	lw	s0,12(sp)
   103ca:	8f31                	xor	a4,a4,a2
   103cc:	8fb5                	xor	a5,a5,a3
   103ce:	01d74733          	xor	a4,a4,t4
   103d2:	01c7c7b3          	xor	a5,a5,t3
   103d6:	d118                	sw	a4,32(a0)
   103d8:	d15c                	sw	a5,36(a0)
   103da:	44a2                	lw	s1,8(sp)
   103dc:	4912                	lw	s2,4(sp)
   103de:	0141                	addi	sp,sp,16
   103e0:	8082                	ret

000103e2 <P12>:
   103e2:	1141                	addi	sp,sp,-16
   103e4:	0f000593          	li	a1,240
   103e8:	c606                	sw	ra,12(sp)
   103ea:	c422                	sw	s0,8(sp)
   103ec:	842a                	mv	s0,a0
   103ee:	3bf9                	jal	101cc <ROUND>
   103f0:	8522                	mv	a0,s0
   103f2:	0e100593          	li	a1,225
   103f6:	3bd9                	jal	101cc <ROUND>
   103f8:	8522                	mv	a0,s0
   103fa:	0d200593          	li	a1,210
   103fe:	33f9                	jal	101cc <ROUND>
   10400:	8522                	mv	a0,s0
   10402:	0c300593          	li	a1,195
   10406:	33d9                	jal	101cc <ROUND>
   10408:	8522                	mv	a0,s0
   1040a:	0b400593          	li	a1,180
   1040e:	3b7d                	jal	101cc <ROUND>
   10410:	8522                	mv	a0,s0
   10412:	0a500593          	li	a1,165
   10416:	3b5d                	jal	101cc <ROUND>
   10418:	8522                	mv	a0,s0
   1041a:	09600593          	li	a1,150
   1041e:	337d                	jal	101cc <ROUND>
   10420:	8522                	mv	a0,s0
   10422:	08700593          	li	a1,135
   10426:	335d                	jal	101cc <ROUND>
   10428:	8522                	mv	a0,s0
   1042a:	07800593          	li	a1,120
   1042e:	3b79                	jal	101cc <ROUND>
   10430:	8522                	mv	a0,s0
   10432:	06900593          	li	a1,105
   10436:	3b59                	jal	101cc <ROUND>
   10438:	8522                	mv	a0,s0
   1043a:	05a00593          	li	a1,90
   1043e:	3379                	jal	101cc <ROUND>
   10440:	8522                	mv	a0,s0
   10442:	4422                	lw	s0,8(sp)
   10444:	40b2                	lw	ra,12(sp)
   10446:	04b00593          	li	a1,75
   1044a:	0141                	addi	sp,sp,16
   1044c:	b341                	j	101cc <ROUND>

0001044e <P8>:
   1044e:	1141                	addi	sp,sp,-16
   10450:	0b400593          	li	a1,180
   10454:	c606                	sw	ra,12(sp)
   10456:	c422                	sw	s0,8(sp)
   10458:	842a                	mv	s0,a0
   1045a:	3b8d                	jal	101cc <ROUND>
   1045c:	8522                	mv	a0,s0
   1045e:	0a500593          	li	a1,165
   10462:	33ad                	jal	101cc <ROUND>
   10464:	8522                	mv	a0,s0
   10466:	09600593          	li	a1,150
   1046a:	338d                	jal	101cc <ROUND>
   1046c:	8522                	mv	a0,s0
   1046e:	08700593          	li	a1,135
   10472:	3ba9                	jal	101cc <ROUND>
   10474:	8522                	mv	a0,s0
   10476:	07800593          	li	a1,120
   1047a:	3b89                	jal	101cc <ROUND>
   1047c:	8522                	mv	a0,s0
   1047e:	06900593          	li	a1,105
   10482:	33a9                	jal	101cc <ROUND>
   10484:	8522                	mv	a0,s0
   10486:	05a00593          	li	a1,90
   1048a:	3389                	jal	101cc <ROUND>
   1048c:	8522                	mv	a0,s0
   1048e:	4422                	lw	s0,8(sp)
   10490:	40b2                	lw	ra,12(sp)
   10492:	04b00593          	li	a1,75
   10496:	0141                	addi	sp,sp,16
   10498:	bb15                	j	101cc <ROUND>

0001049a <crypto_hash>:
   1049a:	004017b7          	lui	a5,0x401
   1049e:	7159                	addi	sp,sp,-112
   104a0:	c0478793          	addi	a5,a5,-1020 # 400c04 <__BSS_END__+0x3e51a8>
   104a4:	4801                	li	a6,0
   104a6:	d4a2                	sw	s0,104(sp)
   104a8:	d2a6                	sw	s1,100(sp)
   104aa:	cece                	sw	s3,92(sp)
   104ac:	ccd2                	sw	s4,88(sp)
   104ae:	89b2                	mv	s3,a2
   104b0:	8a2e                	mv	s4,a1
   104b2:	84b6                	mv	s1,a3
   104b4:	10000713          	li	a4,256
   104b8:	c63e                	sw	a5,12(sp)
   104ba:	842a                	mv	s0,a0
   104bc:	4781                	li	a5,0
   104be:	0028                	addi	a0,sp,8
   104c0:	d0ca                	sw	s2,96(sp)
   104c2:	cad6                	sw	s5,84(sp)
   104c4:	c6de                	sw	s7,76(sp)
   104c6:	c4e2                	sw	s8,72(sp)
   104c8:	d686                	sw	ra,108(sp)
   104ca:	c8da                	sw	s6,80(sp)
   104cc:	c2e6                	sw	s9,68(sp)
   104ce:	c0ea                	sw	s10,64(sp)
   104d0:	de6e                	sw	s11,60(sp)
   104d2:	c43a                	sw	a4,8(sp)
   104d4:	c83e                	sw	a5,16(sp)
   104d6:	ca42                	sw	a6,20(sp)
   104d8:	cc3e                	sw	a5,24(sp)
   104da:	ce42                	sw	a6,28(sp)
   104dc:	d03e                	sw	a5,32(sp)
   104de:	d242                	sw	a6,36(sp)
   104e0:	d43e                	sw	a5,40(sp)
   104e2:	d642                	sw	a6,44(sp)
   104e4:	8ace                	mv	s5,s3
   104e6:	3df5                	jal	103e2 <P12>
   104e8:	8926                	mv	s2,s1
   104ea:	8bd2                	mv	s7,s4
   104ec:	5c61                	li	s8,-8
   104ee:	0a091d63          	bnez	s2,105a8 <crypto_hash+0x10e>
   104f2:	479d                	li	a5,7
   104f4:	0b57ea63          	bltu	a5,s5,105a8 <crypto_hash+0x10e>
   104f8:	04f6                	slli	s1,s1,0x1d
   104fa:	0039d793          	srli	a5,s3,0x3
   104fe:	8fc5                	or	a5,a5,s1
   10500:	54e1                	li	s1,-8
   10502:	02f484b3          	mul	s1,s1,a5
   10506:	00379b13          	slli	s6,a5,0x3
   1050a:	4a81                	li	s5,0
   1050c:	5be1                	li	s7,-8
   1050e:	94ce                	add	s1,s1,s3
   10510:	4981                	li	s3,0
   10512:	0e994063          	blt	s2,s1,105f2 <crypto_hash+0x158>
   10516:	461d                	li	a2,7
   10518:	8e05                	sub	a2,a2,s1
   1051a:	060e                	slli	a2,a2,0x3
   1051c:	08000513          	li	a0,128
   10520:	4581                	li	a1,0
   10522:	2a29                	jal	1063c <__ashldi3>
   10524:	47a2                	lw	a5,8(sp)
   10526:	5a61                	li	s4,-8
   10528:	8d3d                	xor	a0,a0,a5
   1052a:	47b2                	lw	a5,12(sp)
   1052c:	01554533          	xor	a0,a0,s5
   10530:	c42a                	sw	a0,8(sp)
   10532:	8fad                	xor	a5,a5,a1
   10534:	0137c7b3          	xor	a5,a5,s3
   10538:	0028                	addi	a0,sp,8
   1053a:	c63e                	sw	a5,12(sp)
   1053c:	01840993          	addi	s3,s0,24
   10540:	354d                	jal	103e2 <P12>
   10542:	4b22                	lw	s6,8(sp)
   10544:	4bb2                	lw	s7,12(sp)
   10546:	8922                	mv	s2,s0
   10548:	03800493          	li	s1,56
   1054c:	8626                	mv	a2,s1
   1054e:	855a                	mv	a0,s6
   10550:	85de                	mv	a1,s7
   10552:	20c9                	jal	10614 <__lshrdi3>
   10554:	00a90023          	sb	a0,0(s2)
   10558:	14e1                	addi	s1,s1,-8
   1055a:	0905                	addi	s2,s2,1
   1055c:	ff4498e3          	bne	s1,s4,1054c <crypto_hash+0xb2>
   10560:	0028                	addi	a0,sp,8
   10562:	0421                	addi	s0,s0,8
   10564:	35ed                	jal	1044e <P8>
   10566:	fd341ee3          	bne	s0,s3,10542 <crypto_hash+0xa8>
   1056a:	4a22                	lw	s4,8(sp)
   1056c:	4ab2                	lw	s5,12(sp)
   1056e:	03800493          	li	s1,56
   10572:	5961                	li	s2,-8
   10574:	8626                	mv	a2,s1
   10576:	8552                	mv	a0,s4
   10578:	85d6                	mv	a1,s5
   1057a:	2869                	jal	10614 <__lshrdi3>
   1057c:	00a40023          	sb	a0,0(s0)
   10580:	14e1                	addi	s1,s1,-8
   10582:	0405                	addi	s0,s0,1
   10584:	ff2498e3          	bne	s1,s2,10574 <crypto_hash+0xda>
   10588:	50b6                	lw	ra,108(sp)
   1058a:	5426                	lw	s0,104(sp)
   1058c:	5496                	lw	s1,100(sp)
   1058e:	5906                	lw	s2,96(sp)
   10590:	49f6                	lw	s3,92(sp)
   10592:	4a66                	lw	s4,88(sp)
   10594:	4ad6                	lw	s5,84(sp)
   10596:	4b46                	lw	s6,80(sp)
   10598:	4bb6                	lw	s7,76(sp)
   1059a:	4c26                	lw	s8,72(sp)
   1059c:	4c96                	lw	s9,68(sp)
   1059e:	4d06                	lw	s10,64(sp)
   105a0:	5df2                	lw	s11,60(sp)
   105a2:	4501                	li	a0,0
   105a4:	6165                	addi	sp,sp,112
   105a6:	8082                	ret
   105a8:	8dde                	mv	s11,s7
   105aa:	03800b13          	li	s6,56
   105ae:	4d01                	li	s10,0
   105b0:	4c81                	li	s9,0
   105b2:	000dc503          	lbu	a0,0(s11)
   105b6:	865a                	mv	a2,s6
   105b8:	4581                	li	a1,0
   105ba:	2049                	jal	1063c <__ashldi3>
   105bc:	1b61                	addi	s6,s6,-8
   105be:	00ad6d33          	or	s10,s10,a0
   105c2:	00bcecb3          	or	s9,s9,a1
   105c6:	0d85                	addi	s11,s11,1
   105c8:	ff8b15e3          	bne	s6,s8,105b2 <crypto_hash+0x118>
   105cc:	4722                	lw	a4,8(sp)
   105ce:	47b2                	lw	a5,12(sp)
   105d0:	0028                	addi	a0,sp,8
   105d2:	01a74733          	xor	a4,a4,s10
   105d6:	0197c7b3          	xor	a5,a5,s9
   105da:	c43a                	sw	a4,8(sp)
   105dc:	c63e                	sw	a5,12(sp)
   105de:	3d85                	jal	1044e <P8>
   105e0:	ff8a8793          	addi	a5,s5,-8
   105e4:	0157b733          	sltu	a4,a5,s5
   105e8:	197d                	addi	s2,s2,-1
   105ea:	0ba1                	addi	s7,s7,8
   105ec:	8abe                	mv	s5,a5
   105ee:	993a                	add	s2,s2,a4
   105f0:	bdfd                	j	104ee <crypto_hash+0x54>
   105f2:	03790633          	mul	a2,s2,s7
   105f6:	012b07b3          	add	a5,s6,s2
   105fa:	97d2                	add	a5,a5,s4
   105fc:	0007c503          	lbu	a0,0(a5)
   10600:	4581                	li	a1,0
   10602:	0905                	addi	s2,s2,1
   10604:	03860613          	addi	a2,a2,56
   10608:	2815                	jal	1063c <__ashldi3>
   1060a:	00aaeab3          	or	s5,s5,a0
   1060e:	00b9e9b3          	or	s3,s3,a1
   10612:	b701                	j	10512 <crypto_hash+0x78>

00010614 <__lshrdi3>:
   10614:	ca19                	beqz	a2,1062a <__lshrdi3+0x16>
   10616:	02000793          	li	a5,32
   1061a:	8f91                	sub	a5,a5,a2
   1061c:	00f04863          	bgtz	a5,1062c <__lshrdi3+0x18>
   10620:	1601                	addi	a2,a2,-32
   10622:	00c5d533          	srl	a0,a1,a2
   10626:	4701                	li	a4,0
   10628:	85ba                	mv	a1,a4
   1062a:	8082                	ret
   1062c:	00c5d733          	srl	a4,a1,a2
   10630:	00c55533          	srl	a0,a0,a2
   10634:	00f595b3          	sll	a1,a1,a5
   10638:	8d4d                	or	a0,a0,a1
   1063a:	b7fd                	j	10628 <__lshrdi3+0x14>

0001063c <__ashldi3>:
   1063c:	ca19                	beqz	a2,10652 <__ashldi3+0x16>
   1063e:	02000793          	li	a5,32
   10642:	8f91                	sub	a5,a5,a2
   10644:	00f04863          	bgtz	a5,10654 <__ashldi3+0x18>
   10648:	1601                	addi	a2,a2,-32
   1064a:	00c515b3          	sll	a1,a0,a2
   1064e:	4701                	li	a4,0
   10650:	853a                	mv	a0,a4
   10652:	8082                	ret
   10654:	00c51733          	sll	a4,a0,a2
   10658:	00c595b3          	sll	a1,a1,a2
   1065c:	00f55533          	srl	a0,a0,a5
   10660:	8dc9                	or	a1,a1,a0
   10662:	b7fd                	j	10650 <__ashldi3+0x14>

00010664 <__fp_lock>:
   10664:	4501                	li	a0,0
   10666:	8082                	ret

00010668 <stdio_exit_handler>:
   10668:	666d                	lui	a2,0x1b
   1066a:	65d1                	lui	a1,0x14
   1066c:	656d                	lui	a0,0x1b
   1066e:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   10672:	e5858593          	addi	a1,a1,-424 # 13e58 <_fclose_r>
   10676:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   1067a:	a525                	j	10ca2 <_fwalk_sglue>

0001067c <cleanup_stdio>:
   1067c:	414c                	lw	a1,4(a0)
   1067e:	1141                	addi	sp,sp,-16
   10680:	c422                	sw	s0,8(sp)
   10682:	c606                	sw	ra,12(sp)
   10684:	f5c18793          	addi	a5,gp,-164 # 1b76c <__sf>
   10688:	842a                	mv	s0,a0
   1068a:	00f58463          	beq	a1,a5,10692 <cleanup_stdio+0x16>
   1068e:	7ca030ef          	jal	13e58 <_fclose_r>
   10692:	440c                	lw	a1,8(s0)
   10694:	fc418793          	addi	a5,gp,-60 # 1b7d4 <__sf+0x68>
   10698:	00f58563          	beq	a1,a5,106a2 <cleanup_stdio+0x26>
   1069c:	8522                	mv	a0,s0
   1069e:	7ba030ef          	jal	13e58 <_fclose_r>
   106a2:	444c                	lw	a1,12(s0)
   106a4:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   106a8:	00f58863          	beq	a1,a5,106b8 <cleanup_stdio+0x3c>
   106ac:	8522                	mv	a0,s0
   106ae:	4422                	lw	s0,8(sp)
   106b0:	40b2                	lw	ra,12(sp)
   106b2:	0141                	addi	sp,sp,16
   106b4:	7a40306f          	j	13e58 <_fclose_r>
   106b8:	40b2                	lw	ra,12(sp)
   106ba:	4422                	lw	s0,8(sp)
   106bc:	0141                	addi	sp,sp,16
   106be:	8082                	ret

000106c0 <__fp_unlock>:
   106c0:	4501                	li	a0,0
   106c2:	8082                	ret

000106c4 <global_stdio_init.part.0>:
   106c4:	1101                	addi	sp,sp,-32
   106c6:	67c1                	lui	a5,0x10
   106c8:	cc22                	sw	s0,24(sp)
   106ca:	66878793          	addi	a5,a5,1640 # 10668 <stdio_exit_handler>
   106ce:	f5c18413          	addi	s0,gp,-164 # 1b76c <__sf>
   106d2:	ce06                	sw	ra,28(sp)
   106d4:	ca26                	sw	s1,20(sp)
   106d6:	c84a                	sw	s2,16(sp)
   106d8:	c64e                	sw	s3,12(sp)
   106da:	c452                	sw	s4,8(sp)
   106dc:	f2f1a023          	sw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   106e0:	4621                	li	a2,8
   106e2:	4791                	li	a5,4
   106e4:	4581                	li	a1,0
   106e6:	fb818513          	addi	a0,gp,-72 # 1b7c8 <__sf+0x5c>
   106ea:	c45c                	sw	a5,12(s0)
   106ec:	00042023          	sw	zero,0(s0)
   106f0:	00042223          	sw	zero,4(s0)
   106f4:	00042423          	sw	zero,8(s0)
   106f8:	06042223          	sw	zero,100(s0)
   106fc:	00042823          	sw	zero,16(s0)
   10700:	00042a23          	sw	zero,20(s0)
   10704:	00042c23          	sw	zero,24(s0)
   10708:	349000ef          	jal	11250 <memset>
   1070c:	67c1                	lui	a5,0x10
   1070e:	6a45                	lui	s4,0x11
   10710:	69c5                	lui	s3,0x11
   10712:	6945                	lui	s2,0x11
   10714:	64c5                	lui	s1,0x11
   10716:	d76a0a13          	addi	s4,s4,-650 # 10d76 <__sread>
   1071a:	db098993          	addi	s3,s3,-592 # 10db0 <__swrite>
   1071e:	e0090913          	addi	s2,s2,-512 # 10e00 <__sseek>
   10722:	e4848493          	addi	s1,s1,-440 # 10e48 <__sclose>
   10726:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   10728:	4621                	li	a2,8
   1072a:	4581                	li	a1,0
   1072c:	02018513          	addi	a0,gp,32 # 1b830 <__global_pointer$+0x20>
   10730:	03442023          	sw	s4,32(s0)
   10734:	03342223          	sw	s3,36(s0)
   10738:	03242423          	sw	s2,40(s0)
   1073c:	d444                	sw	s1,44(s0)
   1073e:	d87c                	sw	a5,116(s0)
   10740:	cc40                	sw	s0,28(s0)
   10742:	06042423          	sw	zero,104(s0)
   10746:	06042623          	sw	zero,108(s0)
   1074a:	06042823          	sw	zero,112(s0)
   1074e:	0c042623          	sw	zero,204(s0)
   10752:	06042c23          	sw	zero,120(s0)
   10756:	06042e23          	sw	zero,124(s0)
   1075a:	08042023          	sw	zero,128(s0)
   1075e:	2f3000ef          	jal	11250 <memset>
   10762:	000207b7          	lui	a5,0x20
   10766:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x45b6>
   10768:	fc418713          	addi	a4,gp,-60 # 1b7d4 <__sf+0x68>
   1076c:	4621                	li	a2,8
   1076e:	4581                	li	a1,0
   10770:	08818513          	addi	a0,gp,136 # 1b898 <__global_pointer$+0x88>
   10774:	09442423          	sw	s4,136(s0)
   10778:	09342623          	sw	s3,140(s0)
   1077c:	09242823          	sw	s2,144(s0)
   10780:	08942a23          	sw	s1,148(s0)
   10784:	0cf42e23          	sw	a5,220(s0)
   10788:	08e42223          	sw	a4,132(s0)
   1078c:	0c042823          	sw	zero,208(s0)
   10790:	0c042a23          	sw	zero,212(s0)
   10794:	0c042c23          	sw	zero,216(s0)
   10798:	12042a23          	sw	zero,308(s0)
   1079c:	0e042023          	sw	zero,224(s0)
   107a0:	0e042223          	sw	zero,228(s0)
   107a4:	0e042423          	sw	zero,232(s0)
   107a8:	2a9000ef          	jal	11250 <memset>
   107ac:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   107b0:	0f442823          	sw	s4,240(s0)
   107b4:	0f342a23          	sw	s3,244(s0)
   107b8:	0f242c23          	sw	s2,248(s0)
   107bc:	0e942e23          	sw	s1,252(s0)
   107c0:	40f2                	lw	ra,28(sp)
   107c2:	0ef42623          	sw	a5,236(s0)
   107c6:	4462                	lw	s0,24(sp)
   107c8:	44d2                	lw	s1,20(sp)
   107ca:	4942                	lw	s2,16(sp)
   107cc:	49b2                	lw	s3,12(sp)
   107ce:	4a22                	lw	s4,8(sp)
   107d0:	6105                	addi	sp,sp,32
   107d2:	8082                	ret

000107d4 <__sfp>:
   107d4:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   107d8:	1101                	addi	sp,sp,-32
   107da:	c64e                	sw	s3,12(sp)
   107dc:	ce06                	sw	ra,28(sp)
   107de:	cc22                	sw	s0,24(sp)
   107e0:	ca26                	sw	s1,20(sp)
   107e2:	c84a                	sw	s2,16(sp)
   107e4:	89aa                	mv	s3,a0
   107e6:	c7dd                	beqz	a5,10894 <__sfp+0xc0>
   107e8:	696d                	lui	s2,0x1b
   107ea:	01090913          	addi	s2,s2,16 # 1b010 <__sglue>
   107ee:	54fd                	li	s1,-1
   107f0:	00492783          	lw	a5,4(s2)
   107f4:	00892403          	lw	s0,8(s2)
   107f8:	17fd                	addi	a5,a5,-1
   107fa:	0007d763          	bgez	a5,10808 <__sfp+0x34>
   107fe:	a085                	j	1085e <__sfp+0x8a>
   10800:	06840413          	addi	s0,s0,104
   10804:	04978d63          	beq	a5,s1,1085e <__sfp+0x8a>
   10808:	00c41703          	lh	a4,12(s0)
   1080c:	17fd                	addi	a5,a5,-1
   1080e:	fb6d                	bnez	a4,10800 <__sfp+0x2c>
   10810:	77c1                	lui	a5,0xffff0
   10812:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd45a5>
   10814:	c45c                	sw	a5,12(s0)
   10816:	06042223          	sw	zero,100(s0)
   1081a:	00042023          	sw	zero,0(s0)
   1081e:	00042423          	sw	zero,8(s0)
   10822:	00042223          	sw	zero,4(s0)
   10826:	00042823          	sw	zero,16(s0)
   1082a:	00042a23          	sw	zero,20(s0)
   1082e:	00042c23          	sw	zero,24(s0)
   10832:	4621                	li	a2,8
   10834:	4581                	li	a1,0
   10836:	05c40513          	addi	a0,s0,92
   1083a:	217000ef          	jal	11250 <memset>
   1083e:	02042823          	sw	zero,48(s0)
   10842:	02042a23          	sw	zero,52(s0)
   10846:	04042223          	sw	zero,68(s0)
   1084a:	04042423          	sw	zero,72(s0)
   1084e:	40f2                	lw	ra,28(sp)
   10850:	8522                	mv	a0,s0
   10852:	4462                	lw	s0,24(sp)
   10854:	44d2                	lw	s1,20(sp)
   10856:	4942                	lw	s2,16(sp)
   10858:	49b2                	lw	s3,12(sp)
   1085a:	6105                	addi	sp,sp,32
   1085c:	8082                	ret
   1085e:	00092403          	lw	s0,0(s2)
   10862:	c019                	beqz	s0,10868 <__sfp+0x94>
   10864:	8922                	mv	s2,s0
   10866:	b769                	j	107f0 <__sfp+0x1c>
   10868:	1ac00593          	li	a1,428
   1086c:	854e                	mv	a0,s3
   1086e:	7fd000ef          	jal	1186a <_malloc_r>
   10872:	842a                	mv	s0,a0
   10874:	c115                	beqz	a0,10898 <__sfp+0xc4>
   10876:	0531                	addi	a0,a0,12
   10878:	4791                	li	a5,4
   1087a:	00042023          	sw	zero,0(s0)
   1087e:	c05c                	sw	a5,4(s0)
   10880:	c408                	sw	a0,8(s0)
   10882:	1a000613          	li	a2,416
   10886:	4581                	li	a1,0
   10888:	1c9000ef          	jal	11250 <memset>
   1088c:	00892023          	sw	s0,0(s2)
   10890:	8922                	mv	s2,s0
   10892:	bfb9                	j	107f0 <__sfp+0x1c>
   10894:	3d05                	jal	106c4 <global_stdio_init.part.0>
   10896:	bf89                	j	107e8 <__sfp+0x14>
   10898:	00092023          	sw	zero,0(s2)
   1089c:	47b1                	li	a5,12
   1089e:	00f9a023          	sw	a5,0(s3)
   108a2:	b775                	j	1084e <__sfp+0x7a>

000108a4 <__sinit>:
   108a4:	595c                	lw	a5,52(a0)
   108a6:	c391                	beqz	a5,108aa <__sinit+0x6>
   108a8:	8082                	ret
   108aa:	f201a703          	lw	a4,-224(gp) # 1b730 <__stdio_exit_handler>
   108ae:	67c1                	lui	a5,0x10
   108b0:	67c78793          	addi	a5,a5,1660 # 1067c <cleanup_stdio>
   108b4:	d95c                	sw	a5,52(a0)
   108b6:	fb6d                	bnez	a4,108a8 <__sinit+0x4>
   108b8:	b531                	j	106c4 <global_stdio_init.part.0>

000108ba <__sfp_lock_acquire>:
   108ba:	8082                	ret

000108bc <__sfp_lock_release>:
   108bc:	8082                	ret

000108be <__fp_lock_all>:
   108be:	666d                	lui	a2,0x1b
   108c0:	65c1                	lui	a1,0x10
   108c2:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   108c6:	66458593          	addi	a1,a1,1636 # 10664 <__fp_lock>
   108ca:	4501                	li	a0,0
   108cc:	aed9                	j	10ca2 <_fwalk_sglue>

000108ce <__fp_unlock_all>:
   108ce:	666d                	lui	a2,0x1b
   108d0:	65c1                	lui	a1,0x10
   108d2:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   108d6:	6c058593          	addi	a1,a1,1728 # 106c0 <__fp_unlock>
   108da:	4501                	li	a0,0
   108dc:	a6d9                	j	10ca2 <_fwalk_sglue>

000108de <_fputs_r>:
   108de:	7179                	addi	sp,sp,-48
   108e0:	d226                	sw	s1,36(sp)
   108e2:	84aa                	mv	s1,a0
   108e4:	852e                	mv	a0,a1
   108e6:	d422                	sw	s0,40(sp)
   108e8:	d606                	sw	ra,44(sp)
   108ea:	8432                	mv	s0,a2
   108ec:	c62e                	sw	a1,12(sp)
   108ee:	351000ef          	jal	1143e <strlen>
   108f2:	007c                	addi	a5,sp,12
   108f4:	ca3e                	sw	a5,20(sp)
   108f6:	4785                	li	a5,1
   108f8:	ce2a                	sw	a0,28(sp)
   108fa:	c82a                	sw	a0,16(sp)
   108fc:	cc3e                	sw	a5,24(sp)
   108fe:	c099                	beqz	s1,10904 <_fputs_r+0x26>
   10900:	58dc                	lw	a5,52(s1)
   10902:	cf8d                	beqz	a5,1093c <_fputs_r+0x5e>
   10904:	00c41703          	lh	a4,12(s0)
   10908:	507c                	lw	a5,100(s0)
   1090a:	01271693          	slli	a3,a4,0x12
   1090e:	0006ca63          	bltz	a3,10922 <_fputs_r+0x44>
   10912:	76f9                	lui	a3,0xffffe
   10914:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   10916:	6609                	lui	a2,0x2
   10918:	8f51                	or	a4,a4,a2
   1091a:	8ff5                	and	a5,a5,a3
   1091c:	00e41623          	sh	a4,12(s0)
   10920:	d07c                	sw	a5,100(s0)
   10922:	01279713          	slli	a4,a5,0x12
   10926:	00074e63          	bltz	a4,10942 <_fputs_r+0x64>
   1092a:	0850                	addi	a2,sp,20
   1092c:	85a2                	mv	a1,s0
   1092e:	8526                	mv	a0,s1
   10930:	200d                	jal	10952 <__sfvwrite_r>
   10932:	50b2                	lw	ra,44(sp)
   10934:	5422                	lw	s0,40(sp)
   10936:	5492                	lw	s1,36(sp)
   10938:	6145                	addi	sp,sp,48
   1093a:	8082                	ret
   1093c:	8526                	mv	a0,s1
   1093e:	379d                	jal	108a4 <__sinit>
   10940:	b7d1                	j	10904 <_fputs_r+0x26>
   10942:	557d                	li	a0,-1
   10944:	b7fd                	j	10932 <_fputs_r+0x54>

00010946 <fputs>:
   10946:	87aa                	mv	a5,a0
   10948:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   1094c:	862e                	mv	a2,a1
   1094e:	85be                	mv	a1,a5
   10950:	b779                	j	108de <_fputs_r>

00010952 <__sfvwrite_r>:
   10952:	461c                	lw	a5,8(a2)
   10954:	1c078e63          	beqz	a5,10b30 <__sfvwrite_r+0x1de>
   10958:	00c59683          	lh	a3,12(a1)
   1095c:	7179                	addi	sp,sp,-48
   1095e:	d422                	sw	s0,40(sp)
   10960:	cc52                	sw	s4,24(sp)
   10962:	c85a                	sw	s6,16(sp)
   10964:	d606                	sw	ra,44(sp)
   10966:	0086f793          	andi	a5,a3,8
   1096a:	8b32                	mv	s6,a2
   1096c:	8a2a                	mv	s4,a0
   1096e:	842e                	mv	s0,a1
   10970:	c7ad                	beqz	a5,109da <__sfvwrite_r+0x88>
   10972:	499c                	lw	a5,16(a1)
   10974:	c3bd                	beqz	a5,109da <__sfvwrite_r+0x88>
   10976:	d226                	sw	s1,36(sp)
   10978:	d04a                	sw	s2,32(sp)
   1097a:	ce4e                	sw	s3,28(sp)
   1097c:	ca56                	sw	s5,20(sp)
   1097e:	0026f793          	andi	a5,a3,2
   10982:	000b2483          	lw	s1,0(s6)
   10986:	cbb5                	beqz	a5,109fa <__sfvwrite_r+0xa8>
   10988:	505c                	lw	a5,36(s0)
   1098a:	4c4c                	lw	a1,28(s0)
   1098c:	80000ab7          	lui	s5,0x80000
   10990:	4981                	li	s3,0
   10992:	4901                	li	s2,0
   10994:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe41a4>
   10998:	864e                	mv	a2,s3
   1099a:	8552                	mv	a0,s4
   1099c:	02090963          	beqz	s2,109ce <__sfvwrite_r+0x7c>
   109a0:	86ca                	mv	a3,s2
   109a2:	012af363          	bgeu	s5,s2,109a8 <__sfvwrite_r+0x56>
   109a6:	86d6                	mv	a3,s5
   109a8:	9782                	jalr	a5
   109aa:	2ea05063          	blez	a0,10c8a <__sfvwrite_r+0x338>
   109ae:	008b2783          	lw	a5,8(s6)
   109b2:	99aa                	add	s3,s3,a0
   109b4:	40a90933          	sub	s2,s2,a0
   109b8:	8f89                	sub	a5,a5,a0
   109ba:	00fb2423          	sw	a5,8(s6)
   109be:	12078663          	beqz	a5,10aea <__sfvwrite_r+0x198>
   109c2:	505c                	lw	a5,36(s0)
   109c4:	4c4c                	lw	a1,28(s0)
   109c6:	864e                	mv	a2,s3
   109c8:	8552                	mv	a0,s4
   109ca:	fc091be3          	bnez	s2,109a0 <__sfvwrite_r+0x4e>
   109ce:	0004a983          	lw	s3,0(s1)
   109d2:	0044a903          	lw	s2,4(s1)
   109d6:	04a1                	addi	s1,s1,8
   109d8:	b7c1                	j	10998 <__sfvwrite_r+0x46>
   109da:	85a2                	mv	a1,s0
   109dc:	8552                	mv	a0,s4
   109de:	2985                	jal	10e4e <__swsetup_r>
   109e0:	14051163          	bnez	a0,10b22 <__sfvwrite_r+0x1d0>
   109e4:	00c41683          	lh	a3,12(s0)
   109e8:	d226                	sw	s1,36(sp)
   109ea:	d04a                	sw	s2,32(sp)
   109ec:	ce4e                	sw	s3,28(sp)
   109ee:	ca56                	sw	s5,20(sp)
   109f0:	0026f793          	andi	a5,a3,2
   109f4:	000b2483          	lw	s1,0(s6)
   109f8:	fbc1                	bnez	a5,10988 <__sfvwrite_r+0x36>
   109fa:	c65e                	sw	s7,12(sp)
   109fc:	c462                	sw	s8,8(sp)
   109fe:	0016f793          	andi	a5,a3,1
   10a02:	12079963          	bnez	a5,10b34 <__sfvwrite_r+0x1e2>
   10a06:	401c                	lw	a5,0(s0)
   10a08:	4418                	lw	a4,8(s0)
   10a0a:	80000ab7          	lui	s5,0x80000
   10a0e:	c266                	sw	s9,4(sp)
   10a10:	4b81                	li	s7,0
   10a12:	4981                	li	s3,0
   10a14:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   10a16:	853e                	mv	a0,a5
   10a18:	8c3a                	mv	s8,a4
   10a1a:	0a098f63          	beqz	s3,10ad8 <__sfvwrite_r+0x186>
   10a1e:	2006f613          	andi	a2,a3,512
   10a22:	1a060863          	beqz	a2,10bd2 <__sfvwrite_r+0x280>
   10a26:	8cba                	mv	s9,a4
   10a28:	20e9e963          	bltu	s3,a4,10c3a <__sfvwrite_r+0x2e8>
   10a2c:	4806f713          	andi	a4,a3,1152
   10a30:	cb25                	beqz	a4,10aa0 <__sfvwrite_r+0x14e>
   10a32:	4850                	lw	a2,20(s0)
   10a34:	480c                	lw	a1,16(s0)
   10a36:	00161713          	slli	a4,a2,0x1
   10a3a:	9732                	add	a4,a4,a2
   10a3c:	40b78933          	sub	s2,a5,a1
   10a40:	01f75c13          	srli	s8,a4,0x1f
   10a44:	9c3a                	add	s8,s8,a4
   10a46:	00190793          	addi	a5,s2,1
   10a4a:	401c5c13          	srai	s8,s8,0x1
   10a4e:	97ce                	add	a5,a5,s3
   10a50:	8662                	mv	a2,s8
   10a52:	00fc7463          	bgeu	s8,a5,10a5a <__sfvwrite_r+0x108>
   10a56:	8c3e                	mv	s8,a5
   10a58:	863e                	mv	a2,a5
   10a5a:	4006f693          	andi	a3,a3,1024
   10a5e:	1e068d63          	beqz	a3,10c58 <__sfvwrite_r+0x306>
   10a62:	85b2                	mv	a1,a2
   10a64:	8552                	mv	a0,s4
   10a66:	605000ef          	jal	1186a <_malloc_r>
   10a6a:	8caa                	mv	s9,a0
   10a6c:	22050263          	beqz	a0,10c90 <__sfvwrite_r+0x33e>
   10a70:	480c                	lw	a1,16(s0)
   10a72:	864a                	mv	a2,s2
   10a74:	085000ef          	jal	112f8 <memcpy>
   10a78:	00c45783          	lhu	a5,12(s0)
   10a7c:	b7f7f793          	andi	a5,a5,-1153
   10a80:	0807e793          	ori	a5,a5,128
   10a84:	00f41623          	sh	a5,12(s0)
   10a88:	012c8533          	add	a0,s9,s2
   10a8c:	412c07b3          	sub	a5,s8,s2
   10a90:	01942823          	sw	s9,16(s0)
   10a94:	01842a23          	sw	s8,20(s0)
   10a98:	c008                	sw	a0,0(s0)
   10a9a:	8c4e                	mv	s8,s3
   10a9c:	c41c                	sw	a5,8(s0)
   10a9e:	8cce                	mv	s9,s3
   10aa0:	8666                	mv	a2,s9
   10aa2:	85de                	mv	a1,s7
   10aa4:	25c5                	jal	11184 <memmove>
   10aa6:	4418                	lw	a4,8(s0)
   10aa8:	401c                	lw	a5,0(s0)
   10aaa:	894e                	mv	s2,s3
   10aac:	41870733          	sub	a4,a4,s8
   10ab0:	97e6                	add	a5,a5,s9
   10ab2:	c418                	sw	a4,8(s0)
   10ab4:	c01c                	sw	a5,0(s0)
   10ab6:	4981                	li	s3,0
   10ab8:	008b2783          	lw	a5,8(s6)
   10abc:	9bca                	add	s7,s7,s2
   10abe:	412787b3          	sub	a5,a5,s2
   10ac2:	00fb2423          	sw	a5,8(s6)
   10ac6:	cf99                	beqz	a5,10ae4 <__sfvwrite_r+0x192>
   10ac8:	401c                	lw	a5,0(s0)
   10aca:	4418                	lw	a4,8(s0)
   10acc:	00c41683          	lh	a3,12(s0)
   10ad0:	853e                	mv	a0,a5
   10ad2:	8c3a                	mv	s8,a4
   10ad4:	f40995e3          	bnez	s3,10a1e <__sfvwrite_r+0xcc>
   10ad8:	0004ab83          	lw	s7,0(s1)
   10adc:	0044a983          	lw	s3,4(s1)
   10ae0:	04a1                	addi	s1,s1,8
   10ae2:	bf15                	j	10a16 <__sfvwrite_r+0xc4>
   10ae4:	4bb2                	lw	s7,12(sp)
   10ae6:	4c22                	lw	s8,8(sp)
   10ae8:	4c92                	lw	s9,4(sp)
   10aea:	50b2                	lw	ra,44(sp)
   10aec:	5422                	lw	s0,40(sp)
   10aee:	5492                	lw	s1,36(sp)
   10af0:	5902                	lw	s2,32(sp)
   10af2:	49f2                	lw	s3,28(sp)
   10af4:	4ad2                	lw	s5,20(sp)
   10af6:	4a62                	lw	s4,24(sp)
   10af8:	4b42                	lw	s6,16(sp)
   10afa:	4501                	li	a0,0
   10afc:	6145                	addi	sp,sp,48
   10afe:	8082                	ret
   10b00:	85a2                	mv	a1,s0
   10b02:	8552                	mv	a0,s4
   10b04:	596030ef          	jal	1409a <_fflush_r>
   10b08:	c93d                	beqz	a0,10b7e <__sfvwrite_r+0x22c>
   10b0a:	00c41783          	lh	a5,12(s0)
   10b0e:	4bb2                	lw	s7,12(sp)
   10b10:	4c22                	lw	s8,8(sp)
   10b12:	5492                	lw	s1,36(sp)
   10b14:	5902                	lw	s2,32(sp)
   10b16:	49f2                	lw	s3,28(sp)
   10b18:	4ad2                	lw	s5,20(sp)
   10b1a:	0407e793          	ori	a5,a5,64
   10b1e:	00f41623          	sh	a5,12(s0)
   10b22:	50b2                	lw	ra,44(sp)
   10b24:	5422                	lw	s0,40(sp)
   10b26:	4a62                	lw	s4,24(sp)
   10b28:	4b42                	lw	s6,16(sp)
   10b2a:	557d                	li	a0,-1
   10b2c:	6145                	addi	sp,sp,48
   10b2e:	8082                	ret
   10b30:	4501                	li	a0,0
   10b32:	8082                	ret
   10b34:	4a81                	li	s5,0
   10b36:	4501                	li	a0,0
   10b38:	4c01                	li	s8,0
   10b3a:	4981                	li	s3,0
   10b3c:	04098e63          	beqz	s3,10b98 <__sfvwrite_r+0x246>
   10b40:	c525                	beqz	a0,10ba8 <__sfvwrite_r+0x256>
   10b42:	87d6                	mv	a5,s5
   10b44:	8bce                	mv	s7,s3
   10b46:	0137f363          	bgeu	a5,s3,10b4c <__sfvwrite_r+0x1fa>
   10b4a:	8bbe                	mv	s7,a5
   10b4c:	4008                	lw	a0,0(s0)
   10b4e:	481c                	lw	a5,16(s0)
   10b50:	00842903          	lw	s2,8(s0)
   10b54:	4854                	lw	a3,20(s0)
   10b56:	00a7f563          	bgeu	a5,a0,10b60 <__sfvwrite_r+0x20e>
   10b5a:	9936                	add	s2,s2,a3
   10b5c:	05794f63          	blt	s2,s7,10bba <__sfvwrite_r+0x268>
   10b60:	0edbc063          	blt	s7,a3,10c40 <__sfvwrite_r+0x2ee>
   10b64:	505c                	lw	a5,36(s0)
   10b66:	4c4c                	lw	a1,28(s0)
   10b68:	8662                	mv	a2,s8
   10b6a:	8552                	mv	a0,s4
   10b6c:	9782                	jalr	a5
   10b6e:	892a                	mv	s2,a0
   10b70:	f8a05de3          	blez	a0,10b0a <__sfvwrite_r+0x1b8>
   10b74:	412a8ab3          	sub	s5,s5,s2
   10b78:	4505                	li	a0,1
   10b7a:	f80a83e3          	beqz	s5,10b00 <__sfvwrite_r+0x1ae>
   10b7e:	008b2783          	lw	a5,8(s6)
   10b82:	9c4a                	add	s8,s8,s2
   10b84:	412989b3          	sub	s3,s3,s2
   10b88:	412787b3          	sub	a5,a5,s2
   10b8c:	00fb2423          	sw	a5,8(s6)
   10b90:	f7d5                	bnez	a5,10b3c <__sfvwrite_r+0x1ea>
   10b92:	4bb2                	lw	s7,12(sp)
   10b94:	4c22                	lw	s8,8(sp)
   10b96:	bf91                	j	10aea <__sfvwrite_r+0x198>
   10b98:	0044a983          	lw	s3,4(s1)
   10b9c:	87a6                	mv	a5,s1
   10b9e:	04a1                	addi	s1,s1,8
   10ba0:	fe098ce3          	beqz	s3,10b98 <__sfvwrite_r+0x246>
   10ba4:	0007ac03          	lw	s8,0(a5)
   10ba8:	864e                	mv	a2,s3
   10baa:	45a9                	li	a1,10
   10bac:	8562                	mv	a0,s8
   10bae:	2ea5                	jal	10f26 <memchr>
   10bb0:	c969                	beqz	a0,10c82 <__sfvwrite_r+0x330>
   10bb2:	0505                	addi	a0,a0,1
   10bb4:	41850ab3          	sub	s5,a0,s8
   10bb8:	b769                	j	10b42 <__sfvwrite_r+0x1f0>
   10bba:	85e2                	mv	a1,s8
   10bbc:	864a                	mv	a2,s2
   10bbe:	23d9                	jal	11184 <memmove>
   10bc0:	401c                	lw	a5,0(s0)
   10bc2:	85a2                	mv	a1,s0
   10bc4:	8552                	mv	a0,s4
   10bc6:	97ca                	add	a5,a5,s2
   10bc8:	c01c                	sw	a5,0(s0)
   10bca:	4d0030ef          	jal	1409a <_fflush_r>
   10bce:	d15d                	beqz	a0,10b74 <__sfvwrite_r+0x222>
   10bd0:	bf2d                	j	10b0a <__sfvwrite_r+0x1b8>
   10bd2:	4814                	lw	a3,16(s0)
   10bd4:	02f6e863          	bltu	a3,a5,10c04 <__sfvwrite_r+0x2b2>
   10bd8:	4850                	lw	a2,20(s0)
   10bda:	02c9e563          	bltu	s3,a2,10c04 <__sfvwrite_r+0x2b2>
   10bde:	87ce                	mv	a5,s3
   10be0:	013af363          	bgeu	s5,s3,10be6 <__sfvwrite_r+0x294>
   10be4:	87d6                	mv	a5,s5
   10be6:	02c7e6b3          	rem	a3,a5,a2
   10bea:	5058                	lw	a4,36(s0)
   10bec:	4c4c                	lw	a1,28(s0)
   10bee:	865e                	mv	a2,s7
   10bf0:	8552                	mv	a0,s4
   10bf2:	40d786b3          	sub	a3,a5,a3
   10bf6:	9702                	jalr	a4
   10bf8:	892a                	mv	s2,a0
   10bfa:	02a05a63          	blez	a0,10c2e <__sfvwrite_r+0x2dc>
   10bfe:	412989b3          	sub	s3,s3,s2
   10c02:	bd5d                	j	10ab8 <__sfvwrite_r+0x166>
   10c04:	893a                	mv	s2,a4
   10c06:	00e9f363          	bgeu	s3,a4,10c0c <__sfvwrite_r+0x2ba>
   10c0a:	894e                	mv	s2,s3
   10c0c:	853e                	mv	a0,a5
   10c0e:	864a                	mv	a2,s2
   10c10:	85de                	mv	a1,s7
   10c12:	2b8d                	jal	11184 <memmove>
   10c14:	4418                	lw	a4,8(s0)
   10c16:	401c                	lw	a5,0(s0)
   10c18:	41270733          	sub	a4,a4,s2
   10c1c:	97ca                	add	a5,a5,s2
   10c1e:	c418                	sw	a4,8(s0)
   10c20:	c01c                	sw	a5,0(s0)
   10c22:	ff71                	bnez	a4,10bfe <__sfvwrite_r+0x2ac>
   10c24:	85a2                	mv	a1,s0
   10c26:	8552                	mv	a0,s4
   10c28:	472030ef          	jal	1409a <_fflush_r>
   10c2c:	d969                	beqz	a0,10bfe <__sfvwrite_r+0x2ac>
   10c2e:	00c41783          	lh	a5,12(s0)
   10c32:	4bb2                	lw	s7,12(sp)
   10c34:	4c22                	lw	s8,8(sp)
   10c36:	4c92                	lw	s9,4(sp)
   10c38:	bde9                	j	10b12 <__sfvwrite_r+0x1c0>
   10c3a:	8c4e                	mv	s8,s3
   10c3c:	8cce                	mv	s9,s3
   10c3e:	b58d                	j	10aa0 <__sfvwrite_r+0x14e>
   10c40:	865e                	mv	a2,s7
   10c42:	85e2                	mv	a1,s8
   10c44:	2381                	jal	11184 <memmove>
   10c46:	4418                	lw	a4,8(s0)
   10c48:	401c                	lw	a5,0(s0)
   10c4a:	895e                	mv	s2,s7
   10c4c:	41770733          	sub	a4,a4,s7
   10c50:	97de                	add	a5,a5,s7
   10c52:	c418                	sw	a4,8(s0)
   10c54:	c01c                	sw	a5,0(s0)
   10c56:	bf39                	j	10b74 <__sfvwrite_r+0x222>
   10c58:	8552                	mv	a0,s4
   10c5a:	1b8010ef          	jal	11e12 <_realloc_r>
   10c5e:	8caa                	mv	s9,a0
   10c60:	e20514e3          	bnez	a0,10a88 <__sfvwrite_r+0x136>
   10c64:	480c                	lw	a1,16(s0)
   10c66:	8552                	mv	a0,s4
   10c68:	1e1000ef          	jal	11648 <_free_r>
   10c6c:	00c41783          	lh	a5,12(s0)
   10c70:	4731                	li	a4,12
   10c72:	4bb2                	lw	s7,12(sp)
   10c74:	4c22                	lw	s8,8(sp)
   10c76:	4c92                	lw	s9,4(sp)
   10c78:	00ea2023          	sw	a4,0(s4)
   10c7c:	f7f7f793          	andi	a5,a5,-129
   10c80:	bd49                	j	10b12 <__sfvwrite_r+0x1c0>
   10c82:	00198793          	addi	a5,s3,1
   10c86:	8abe                	mv	s5,a5
   10c88:	bd75                	j	10b44 <__sfvwrite_r+0x1f2>
   10c8a:	00c41783          	lh	a5,12(s0)
   10c8e:	b551                	j	10b12 <__sfvwrite_r+0x1c0>
   10c90:	4731                	li	a4,12
   10c92:	00c41783          	lh	a5,12(s0)
   10c96:	4bb2                	lw	s7,12(sp)
   10c98:	4c22                	lw	s8,8(sp)
   10c9a:	4c92                	lw	s9,4(sp)
   10c9c:	00ea2023          	sw	a4,0(s4)
   10ca0:	bd8d                	j	10b12 <__sfvwrite_r+0x1c0>

00010ca2 <_fwalk_sglue>:
   10ca2:	7179                	addi	sp,sp,-48
   10ca4:	d04a                	sw	s2,32(sp)
   10ca6:	ce4e                	sw	s3,28(sp)
   10ca8:	cc52                	sw	s4,24(sp)
   10caa:	ca56                	sw	s5,20(sp)
   10cac:	c85a                	sw	s6,16(sp)
   10cae:	c65e                	sw	s7,12(sp)
   10cb0:	d606                	sw	ra,44(sp)
   10cb2:	d422                	sw	s0,40(sp)
   10cb4:	d226                	sw	s1,36(sp)
   10cb6:	8b2a                	mv	s6,a0
   10cb8:	8bae                	mv	s7,a1
   10cba:	8ab2                	mv	s5,a2
   10cbc:	4a01                	li	s4,0
   10cbe:	4985                	li	s3,1
   10cc0:	597d                	li	s2,-1
   10cc2:	004aa483          	lw	s1,4(s5)
   10cc6:	008aa403          	lw	s0,8(s5)
   10cca:	14fd                	addi	s1,s1,-1
   10ccc:	0204c463          	bltz	s1,10cf4 <_fwalk_sglue+0x52>
   10cd0:	00c45783          	lhu	a5,12(s0)
   10cd4:	00f9fb63          	bgeu	s3,a5,10cea <_fwalk_sglue+0x48>
   10cd8:	00e41783          	lh	a5,14(s0)
   10cdc:	85a2                	mv	a1,s0
   10cde:	855a                	mv	a0,s6
   10ce0:	01278563          	beq	a5,s2,10cea <_fwalk_sglue+0x48>
   10ce4:	9b82                	jalr	s7
   10ce6:	00aa6a33          	or	s4,s4,a0
   10cea:	14fd                	addi	s1,s1,-1
   10cec:	06840413          	addi	s0,s0,104
   10cf0:	ff2490e3          	bne	s1,s2,10cd0 <_fwalk_sglue+0x2e>
   10cf4:	000aaa83          	lw	s5,0(s5)
   10cf8:	fc0a95e3          	bnez	s5,10cc2 <_fwalk_sglue+0x20>
   10cfc:	50b2                	lw	ra,44(sp)
   10cfe:	5422                	lw	s0,40(sp)
   10d00:	5492                	lw	s1,36(sp)
   10d02:	5902                	lw	s2,32(sp)
   10d04:	49f2                	lw	s3,28(sp)
   10d06:	4ad2                	lw	s5,20(sp)
   10d08:	4b42                	lw	s6,16(sp)
   10d0a:	4bb2                	lw	s7,12(sp)
   10d0c:	8552                	mv	a0,s4
   10d0e:	4a62                	lw	s4,24(sp)
   10d10:	6145                	addi	sp,sp,48
   10d12:	8082                	ret

00010d14 <_printf_r>:
   10d14:	7139                	addi	sp,sp,-64
   10d16:	d432                	sw	a2,40(sp)
   10d18:	d636                	sw	a3,44(sp)
   10d1a:	d83a                	sw	a4,48(sp)
   10d1c:	da3e                	sw	a5,52(sp)
   10d1e:	dc42                	sw	a6,56(sp)
   10d20:	de46                	sw	a7,60(sp)
   10d22:	862e                	mv	a2,a1
   10d24:	450c                	lw	a1,8(a0)
   10d26:	1034                	addi	a3,sp,40
   10d28:	ce06                	sw	ra,28(sp)
   10d2a:	c636                	sw	a3,12(sp)
   10d2c:	4b4010ef          	jal	121e0 <_vfprintf_r>
   10d30:	40f2                	lw	ra,28(sp)
   10d32:	6121                	addi	sp,sp,64
   10d34:	8082                	ret

00010d36 <printf>:
   10d36:	f141a303          	lw	t1,-236(gp) # 1b724 <_impure_ptr>
   10d3a:	7139                	addi	sp,sp,-64
   10d3c:	d432                	sw	a2,40(sp)
   10d3e:	d636                	sw	a3,44(sp)
   10d40:	d22e                	sw	a1,36(sp)
   10d42:	d83a                	sw	a4,48(sp)
   10d44:	da3e                	sw	a5,52(sp)
   10d46:	dc42                	sw	a6,56(sp)
   10d48:	de46                	sw	a7,60(sp)
   10d4a:	00832583          	lw	a1,8(t1) # 101ca <frame_dummy+0x18>
   10d4e:	1054                	addi	a3,sp,36
   10d50:	862a                	mv	a2,a0
   10d52:	851a                	mv	a0,t1
   10d54:	ce06                	sw	ra,28(sp)
   10d56:	c636                	sw	a3,12(sp)
   10d58:	488010ef          	jal	121e0 <_vfprintf_r>
   10d5c:	40f2                	lw	ra,28(sp)
   10d5e:	6121                	addi	sp,sp,64
   10d60:	8082                	ret

00010d62 <_putchar_r>:
   10d62:	4510                	lw	a2,8(a0)
   10d64:	54e0306f          	j	142b2 <_putc_r>

00010d68 <putchar>:
   10d68:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10d6c:	85aa                	mv	a1,a0
   10d6e:	4790                	lw	a2,8(a5)
   10d70:	853e                	mv	a0,a5
   10d72:	5400306f          	j	142b2 <_putc_r>

00010d76 <__sread>:
   10d76:	1141                	addi	sp,sp,-16
   10d78:	c422                	sw	s0,8(sp)
   10d7a:	842e                	mv	s0,a1
   10d7c:	00e59583          	lh	a1,14(a1)
   10d80:	c606                	sw	ra,12(sp)
   10d82:	2605                	jal	110a2 <_read_r>
   10d84:	00054963          	bltz	a0,10d96 <__sread+0x20>
   10d88:	483c                	lw	a5,80(s0)
   10d8a:	40b2                	lw	ra,12(sp)
   10d8c:	97aa                	add	a5,a5,a0
   10d8e:	c83c                	sw	a5,80(s0)
   10d90:	4422                	lw	s0,8(sp)
   10d92:	0141                	addi	sp,sp,16
   10d94:	8082                	ret
   10d96:	00c45783          	lhu	a5,12(s0)
   10d9a:	777d                	lui	a4,0xfffff
   10d9c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10d9e:	8ff9                	and	a5,a5,a4
   10da0:	40b2                	lw	ra,12(sp)
   10da2:	00f41623          	sh	a5,12(s0)
   10da6:	4422                	lw	s0,8(sp)
   10da8:	0141                	addi	sp,sp,16
   10daa:	8082                	ret

00010dac <__seofread>:
   10dac:	4501                	li	a0,0
   10dae:	8082                	ret

00010db0 <__swrite>:
   10db0:	00c59783          	lh	a5,12(a1)
   10db4:	1101                	addi	sp,sp,-32
   10db6:	cc22                	sw	s0,24(sp)
   10db8:	ca26                	sw	s1,20(sp)
   10dba:	c84a                	sw	s2,16(sp)
   10dbc:	c64e                	sw	s3,12(sp)
   10dbe:	ce06                	sw	ra,28(sp)
   10dc0:	1007f713          	andi	a4,a5,256
   10dc4:	842e                	mv	s0,a1
   10dc6:	84aa                	mv	s1,a0
   10dc8:	8932                	mv	s2,a2
   10dca:	89b6                	mv	s3,a3
   10dcc:	e315                	bnez	a4,10df0 <__swrite+0x40>
   10dce:	777d                	lui	a4,0xfffff
   10dd0:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10dd2:	8ff9                	and	a5,a5,a4
   10dd4:	00e41583          	lh	a1,14(s0)
   10dd8:	00f41623          	sh	a5,12(s0)
   10ddc:	4462                	lw	s0,24(sp)
   10dde:	40f2                	lw	ra,28(sp)
   10de0:	86ce                	mv	a3,s3
   10de2:	864a                	mv	a2,s2
   10de4:	49b2                	lw	s3,12(sp)
   10de6:	4942                	lw	s2,16(sp)
   10de8:	8526                	mv	a0,s1
   10dea:	44d2                	lw	s1,20(sp)
   10dec:	6105                	addi	sp,sp,32
   10dee:	acc5                	j	110de <_write_r>
   10df0:	00e59583          	lh	a1,14(a1)
   10df4:	4689                	li	a3,2
   10df6:	4601                	li	a2,0
   10df8:	24bd                	jal	11066 <_lseek_r>
   10dfa:	00c41783          	lh	a5,12(s0)
   10dfe:	bfc1                	j	10dce <__swrite+0x1e>

00010e00 <__sseek>:
   10e00:	1141                	addi	sp,sp,-16
   10e02:	c422                	sw	s0,8(sp)
   10e04:	842e                	mv	s0,a1
   10e06:	00e59583          	lh	a1,14(a1)
   10e0a:	c606                	sw	ra,12(sp)
   10e0c:	2ca9                	jal	11066 <_lseek_r>
   10e0e:	57fd                	li	a5,-1
   10e10:	00f50f63          	beq	a0,a5,10e2e <__sseek+0x2e>
   10e14:	00c45783          	lhu	a5,12(s0)
   10e18:	6705                	lui	a4,0x1
   10e1a:	40b2                	lw	ra,12(sp)
   10e1c:	8fd9                	or	a5,a5,a4
   10e1e:	07c2                	slli	a5,a5,0x10
   10e20:	87c1                	srai	a5,a5,0x10
   10e22:	c828                	sw	a0,80(s0)
   10e24:	00f41623          	sh	a5,12(s0)
   10e28:	4422                	lw	s0,8(sp)
   10e2a:	0141                	addi	sp,sp,16
   10e2c:	8082                	ret
   10e2e:	00c45783          	lhu	a5,12(s0)
   10e32:	777d                	lui	a4,0xfffff
   10e34:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10e36:	8ff9                	and	a5,a5,a4
   10e38:	07c2                	slli	a5,a5,0x10
   10e3a:	87c1                	srai	a5,a5,0x10
   10e3c:	40b2                	lw	ra,12(sp)
   10e3e:	00f41623          	sh	a5,12(s0)
   10e42:	4422                	lw	s0,8(sp)
   10e44:	0141                	addi	sp,sp,16
   10e46:	8082                	ret

00010e48 <__sclose>:
   10e48:	00e59583          	lh	a1,14(a1)
   10e4c:	a2a5                	j	10fb4 <_close_r>

00010e4e <__swsetup_r>:
   10e4e:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10e52:	1141                	addi	sp,sp,-16
   10e54:	c422                	sw	s0,8(sp)
   10e56:	c226                	sw	s1,4(sp)
   10e58:	c606                	sw	ra,12(sp)
   10e5a:	84aa                	mv	s1,a0
   10e5c:	842e                	mv	s0,a1
   10e5e:	c399                	beqz	a5,10e64 <__swsetup_r+0x16>
   10e60:	5bd8                	lw	a4,52(a5)
   10e62:	c755                	beqz	a4,10f0e <__swsetup_r+0xc0>
   10e64:	00c41783          	lh	a5,12(s0)
   10e68:	0087f713          	andi	a4,a5,8
   10e6c:	c721                	beqz	a4,10eb4 <__swsetup_r+0x66>
   10e6e:	4818                	lw	a4,16(s0)
   10e70:	cf31                	beqz	a4,10ecc <__swsetup_r+0x7e>
   10e72:	0017f693          	andi	a3,a5,1
   10e76:	ce91                	beqz	a3,10e92 <__swsetup_r+0x44>
   10e78:	4854                	lw	a3,20(s0)
   10e7a:	00042423          	sw	zero,8(s0)
   10e7e:	4501                	li	a0,0
   10e80:	40d006b3          	neg	a3,a3
   10e84:	cc14                	sw	a3,24(s0)
   10e86:	cf11                	beqz	a4,10ea2 <__swsetup_r+0x54>
   10e88:	40b2                	lw	ra,12(sp)
   10e8a:	4422                	lw	s0,8(sp)
   10e8c:	4492                	lw	s1,4(sp)
   10e8e:	0141                	addi	sp,sp,16
   10e90:	8082                	ret
   10e92:	0027f693          	andi	a3,a5,2
   10e96:	4601                	li	a2,0
   10e98:	e291                	bnez	a3,10e9c <__swsetup_r+0x4e>
   10e9a:	4850                	lw	a2,20(s0)
   10e9c:	c410                	sw	a2,8(s0)
   10e9e:	4501                	li	a0,0
   10ea0:	f765                	bnez	a4,10e88 <__swsetup_r+0x3a>
   10ea2:	0807f713          	andi	a4,a5,128
   10ea6:	d36d                	beqz	a4,10e88 <__swsetup_r+0x3a>
   10ea8:	0407e793          	ori	a5,a5,64
   10eac:	00f41623          	sh	a5,12(s0)
   10eb0:	557d                	li	a0,-1
   10eb2:	bfd9                	j	10e88 <__swsetup_r+0x3a>
   10eb4:	0107f713          	andi	a4,a5,16
   10eb8:	cf39                	beqz	a4,10f16 <__swsetup_r+0xc8>
   10eba:	0047f713          	andi	a4,a5,4
   10ebe:	e70d                	bnez	a4,10ee8 <__swsetup_r+0x9a>
   10ec0:	4818                	lw	a4,16(s0)
   10ec2:	0087e793          	ori	a5,a5,8
   10ec6:	00f41623          	sh	a5,12(s0)
   10eca:	f745                	bnez	a4,10e72 <__swsetup_r+0x24>
   10ecc:	2807f693          	andi	a3,a5,640
   10ed0:	20000613          	li	a2,512
   10ed4:	f8c68fe3          	beq	a3,a2,10e72 <__swsetup_r+0x24>
   10ed8:	85a2                	mv	a1,s0
   10eda:	8526                	mv	a0,s1
   10edc:	244030ef          	jal	14120 <__smakebuf_r>
   10ee0:	00c41783          	lh	a5,12(s0)
   10ee4:	4818                	lw	a4,16(s0)
   10ee6:	b771                	j	10e72 <__swsetup_r+0x24>
   10ee8:	580c                	lw	a1,48(s0)
   10eea:	c999                	beqz	a1,10f00 <__swsetup_r+0xb2>
   10eec:	04040713          	addi	a4,s0,64
   10ef0:	00e58663          	beq	a1,a4,10efc <__swsetup_r+0xae>
   10ef4:	8526                	mv	a0,s1
   10ef6:	2f89                	jal	11648 <_free_r>
   10ef8:	00c41783          	lh	a5,12(s0)
   10efc:	02042823          	sw	zero,48(s0)
   10f00:	4818                	lw	a4,16(s0)
   10f02:	fdb7f793          	andi	a5,a5,-37
   10f06:	00042223          	sw	zero,4(s0)
   10f0a:	c018                	sw	a4,0(s0)
   10f0c:	bf5d                	j	10ec2 <__swsetup_r+0x74>
   10f0e:	853e                	mv	a0,a5
   10f10:	995ff0ef          	jal	108a4 <__sinit>
   10f14:	bf81                	j	10e64 <__swsetup_r+0x16>
   10f16:	4725                	li	a4,9
   10f18:	c098                	sw	a4,0(s1)
   10f1a:	0407e793          	ori	a5,a5,64
   10f1e:	00f41623          	sh	a5,12(s0)
   10f22:	557d                	li	a0,-1
   10f24:	b795                	j	10e88 <__swsetup_r+0x3a>

00010f26 <memchr>:
   10f26:	00357793          	andi	a5,a0,3
   10f2a:	0ff5f693          	zext.b	a3,a1
   10f2e:	c395                	beqz	a5,10f52 <memchr+0x2c>
   10f30:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   10f34:	c605                	beqz	a2,10f5c <memchr+0x36>
   10f36:	567d                	li	a2,-1
   10f38:	a801                	j	10f48 <memchr+0x22>
   10f3a:	0505                	addi	a0,a0,1
   10f3c:	00357713          	andi	a4,a0,3
   10f40:	cb11                	beqz	a4,10f54 <memchr+0x2e>
   10f42:	17fd                	addi	a5,a5,-1
   10f44:	00c78c63          	beq	a5,a2,10f5c <memchr+0x36>
   10f48:	00054703          	lbu	a4,0(a0)
   10f4c:	fed717e3          	bne	a4,a3,10f3a <memchr+0x14>
   10f50:	8082                	ret
   10f52:	87b2                	mv	a5,a2
   10f54:	470d                	li	a4,3
   10f56:	00f76563          	bltu	a4,a5,10f60 <memchr+0x3a>
   10f5a:	e3b9                	bnez	a5,10fa0 <memchr+0x7a>
   10f5c:	4501                	li	a0,0
   10f5e:	8082                	ret
   10f60:	0ff5f593          	zext.b	a1,a1
   10f64:	00859713          	slli	a4,a1,0x8
   10f68:	95ba                	add	a1,a1,a4
   10f6a:	01059713          	slli	a4,a1,0x10
   10f6e:	feff08b7          	lui	a7,0xfeff0
   10f72:	80808837          	lui	a6,0x80808
   10f76:	95ba                	add	a1,a1,a4
   10f78:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   10f7c:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807ec624>
   10f80:	430d                	li	t1,3
   10f82:	a029                	j	10f8c <memchr+0x66>
   10f84:	17f1                	addi	a5,a5,-4
   10f86:	0511                	addi	a0,a0,4
   10f88:	fcf379e3          	bgeu	t1,a5,10f5a <memchr+0x34>
   10f8c:	4118                	lw	a4,0(a0)
   10f8e:	8f2d                	xor	a4,a4,a1
   10f90:	01170633          	add	a2,a4,a7
   10f94:	fff74713          	not	a4,a4
   10f98:	8f71                	and	a4,a4,a2
   10f9a:	01077733          	and	a4,a4,a6
   10f9e:	d37d                	beqz	a4,10f84 <memchr+0x5e>
   10fa0:	97aa                	add	a5,a5,a0
   10fa2:	a021                	j	10faa <memchr+0x84>
   10fa4:	0505                	addi	a0,a0,1
   10fa6:	faa78be3          	beq	a5,a0,10f5c <memchr+0x36>
   10faa:	00054703          	lbu	a4,0(a0)
   10fae:	fed71be3          	bne	a4,a3,10fa4 <memchr+0x7e>
   10fb2:	8082                	ret

00010fb4 <_close_r>:
   10fb4:	1141                	addi	sp,sp,-16
   10fb6:	c422                	sw	s0,8(sp)
   10fb8:	c226                	sw	s1,4(sp)
   10fba:	842a                	mv	s0,a0
   10fbc:	852e                	mv	a0,a1
   10fbe:	c606                	sw	ra,12(sp)
   10fc0:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   10fc4:	42f060ef          	jal	17bf2 <_close>
   10fc8:	57fd                	li	a5,-1
   10fca:	00f50763          	beq	a0,a5,10fd8 <_close_r+0x24>
   10fce:	40b2                	lw	ra,12(sp)
   10fd0:	4422                	lw	s0,8(sp)
   10fd2:	4492                	lw	s1,4(sp)
   10fd4:	0141                	addi	sp,sp,16
   10fd6:	8082                	ret
   10fd8:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10fdc:	dbed                	beqz	a5,10fce <_close_r+0x1a>
   10fde:	40b2                	lw	ra,12(sp)
   10fe0:	c01c                	sw	a5,0(s0)
   10fe2:	4422                	lw	s0,8(sp)
   10fe4:	4492                	lw	s1,4(sp)
   10fe6:	0141                	addi	sp,sp,16
   10fe8:	8082                	ret

00010fea <_reclaim_reent>:
   10fea:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   10fee:	06a78b63          	beq	a5,a0,11064 <_reclaim_reent+0x7a>
   10ff2:	416c                	lw	a1,68(a0)
   10ff4:	1101                	addi	sp,sp,-32
   10ff6:	ca26                	sw	s1,20(sp)
   10ff8:	ce06                	sw	ra,28(sp)
   10ffa:	cc22                	sw	s0,24(sp)
   10ffc:	84aa                	mv	s1,a0
   10ffe:	c59d                	beqz	a1,1102c <_reclaim_reent+0x42>
   11000:	c84a                	sw	s2,16(sp)
   11002:	c64e                	sw	s3,12(sp)
   11004:	4901                	li	s2,0
   11006:	08000993          	li	s3,128
   1100a:	012587b3          	add	a5,a1,s2
   1100e:	4380                	lw	s0,0(a5)
   11010:	c419                	beqz	s0,1101e <_reclaim_reent+0x34>
   11012:	85a2                	mv	a1,s0
   11014:	4000                	lw	s0,0(s0)
   11016:	8526                	mv	a0,s1
   11018:	2d05                	jal	11648 <_free_r>
   1101a:	fc65                	bnez	s0,11012 <_reclaim_reent+0x28>
   1101c:	40ec                	lw	a1,68(s1)
   1101e:	0911                	addi	s2,s2,4
   11020:	ff3915e3          	bne	s2,s3,1100a <_reclaim_reent+0x20>
   11024:	8526                	mv	a0,s1
   11026:	250d                	jal	11648 <_free_r>
   11028:	4942                	lw	s2,16(sp)
   1102a:	49b2                	lw	s3,12(sp)
   1102c:	5c8c                	lw	a1,56(s1)
   1102e:	c199                	beqz	a1,11034 <_reclaim_reent+0x4a>
   11030:	8526                	mv	a0,s1
   11032:	2d19                	jal	11648 <_free_r>
   11034:	40a0                	lw	s0,64(s1)
   11036:	c411                	beqz	s0,11042 <_reclaim_reent+0x58>
   11038:	85a2                	mv	a1,s0
   1103a:	4000                	lw	s0,0(s0)
   1103c:	8526                	mv	a0,s1
   1103e:	2529                	jal	11648 <_free_r>
   11040:	fc65                	bnez	s0,11038 <_reclaim_reent+0x4e>
   11042:	44ec                	lw	a1,76(s1)
   11044:	c199                	beqz	a1,1104a <_reclaim_reent+0x60>
   11046:	8526                	mv	a0,s1
   11048:	2501                	jal	11648 <_free_r>
   1104a:	58dc                	lw	a5,52(s1)
   1104c:	c799                	beqz	a5,1105a <_reclaim_reent+0x70>
   1104e:	4462                	lw	s0,24(sp)
   11050:	40f2                	lw	ra,28(sp)
   11052:	8526                	mv	a0,s1
   11054:	44d2                	lw	s1,20(sp)
   11056:	6105                	addi	sp,sp,32
   11058:	8782                	jr	a5
   1105a:	40f2                	lw	ra,28(sp)
   1105c:	4462                	lw	s0,24(sp)
   1105e:	44d2                	lw	s1,20(sp)
   11060:	6105                	addi	sp,sp,32
   11062:	8082                	ret
   11064:	8082                	ret

00011066 <_lseek_r>:
   11066:	1141                	addi	sp,sp,-16
   11068:	872e                	mv	a4,a1
   1106a:	c422                	sw	s0,8(sp)
   1106c:	c226                	sw	s1,4(sp)
   1106e:	85b2                	mv	a1,a2
   11070:	842a                	mv	s0,a0
   11072:	8636                	mv	a2,a3
   11074:	853a                	mv	a0,a4
   11076:	c606                	sw	ra,12(sp)
   11078:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   1107c:	43b060ef          	jal	17cb6 <_lseek>
   11080:	57fd                	li	a5,-1
   11082:	00f50763          	beq	a0,a5,11090 <_lseek_r+0x2a>
   11086:	40b2                	lw	ra,12(sp)
   11088:	4422                	lw	s0,8(sp)
   1108a:	4492                	lw	s1,4(sp)
   1108c:	0141                	addi	sp,sp,16
   1108e:	8082                	ret
   11090:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   11094:	dbed                	beqz	a5,11086 <_lseek_r+0x20>
   11096:	40b2                	lw	ra,12(sp)
   11098:	c01c                	sw	a5,0(s0)
   1109a:	4422                	lw	s0,8(sp)
   1109c:	4492                	lw	s1,4(sp)
   1109e:	0141                	addi	sp,sp,16
   110a0:	8082                	ret

000110a2 <_read_r>:
   110a2:	1141                	addi	sp,sp,-16
   110a4:	872e                	mv	a4,a1
   110a6:	c422                	sw	s0,8(sp)
   110a8:	c226                	sw	s1,4(sp)
   110aa:	85b2                	mv	a1,a2
   110ac:	842a                	mv	s0,a0
   110ae:	8636                	mv	a2,a3
   110b0:	853a                	mv	a0,a4
   110b2:	c606                	sw	ra,12(sp)
   110b4:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   110b8:	42b060ef          	jal	17ce2 <_read>
   110bc:	57fd                	li	a5,-1
   110be:	00f50763          	beq	a0,a5,110cc <_read_r+0x2a>
   110c2:	40b2                	lw	ra,12(sp)
   110c4:	4422                	lw	s0,8(sp)
   110c6:	4492                	lw	s1,4(sp)
   110c8:	0141                	addi	sp,sp,16
   110ca:	8082                	ret
   110cc:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   110d0:	dbed                	beqz	a5,110c2 <_read_r+0x20>
   110d2:	40b2                	lw	ra,12(sp)
   110d4:	c01c                	sw	a5,0(s0)
   110d6:	4422                	lw	s0,8(sp)
   110d8:	4492                	lw	s1,4(sp)
   110da:	0141                	addi	sp,sp,16
   110dc:	8082                	ret

000110de <_write_r>:
   110de:	1141                	addi	sp,sp,-16
   110e0:	872e                	mv	a4,a1
   110e2:	c422                	sw	s0,8(sp)
   110e4:	c226                	sw	s1,4(sp)
   110e6:	85b2                	mv	a1,a2
   110e8:	842a                	mv	s0,a0
   110ea:	8636                	mv	a2,a3
   110ec:	853a                	mv	a0,a4
   110ee:	c606                	sw	ra,12(sp)
   110f0:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   110f4:	46f060ef          	jal	17d62 <_write>
   110f8:	57fd                	li	a5,-1
   110fa:	00f50763          	beq	a0,a5,11108 <_write_r+0x2a>
   110fe:	40b2                	lw	ra,12(sp)
   11100:	4422                	lw	s0,8(sp)
   11102:	4492                	lw	s1,4(sp)
   11104:	0141                	addi	sp,sp,16
   11106:	8082                	ret
   11108:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   1110c:	dbed                	beqz	a5,110fe <_write_r+0x20>
   1110e:	40b2                	lw	ra,12(sp)
   11110:	c01c                	sw	a5,0(s0)
   11112:	4422                	lw	s0,8(sp)
   11114:	4492                	lw	s1,4(sp)
   11116:	0141                	addi	sp,sp,16
   11118:	8082                	ret

0001111a <__libc_init_array>:
   1111a:	1141                	addi	sp,sp,-16
   1111c:	c422                	sw	s0,8(sp)
   1111e:	67ed                	lui	a5,0x1b
   11120:	646d                	lui	s0,0x1b
   11122:	c04a                	sw	s2,0(sp)
   11124:	00478793          	addi	a5,a5,4 # 1b004 <__init_array_start>
   11128:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   1112c:	c606                	sw	ra,12(sp)
   1112e:	c226                	sw	s1,4(sp)
   11130:	40e78933          	sub	s2,a5,a4
   11134:	00e78d63          	beq	a5,a4,1114e <__libc_init_array+0x34>
   11138:	40295913          	srai	s2,s2,0x2
   1113c:	00440413          	addi	s0,s0,4
   11140:	4481                	li	s1,0
   11142:	401c                	lw	a5,0(s0)
   11144:	0485                	addi	s1,s1,1
   11146:	0411                	addi	s0,s0,4
   11148:	9782                	jalr	a5
   1114a:	ff24ece3          	bltu	s1,s2,11142 <__libc_init_array+0x28>
   1114e:	646d                	lui	s0,0x1b
   11150:	67ed                	lui	a5,0x1b
   11152:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   11156:	00440713          	addi	a4,s0,4 # 1b004 <__init_array_start>
   1115a:	40e78933          	sub	s2,a5,a4
   1115e:	40295913          	srai	s2,s2,0x2
   11162:	00e78b63          	beq	a5,a4,11178 <__libc_init_array+0x5e>
   11166:	00440413          	addi	s0,s0,4
   1116a:	4481                	li	s1,0
   1116c:	401c                	lw	a5,0(s0)
   1116e:	0485                	addi	s1,s1,1
   11170:	0411                	addi	s0,s0,4
   11172:	9782                	jalr	a5
   11174:	ff24ece3          	bltu	s1,s2,1116c <__libc_init_array+0x52>
   11178:	40b2                	lw	ra,12(sp)
   1117a:	4422                	lw	s0,8(sp)
   1117c:	4492                	lw	s1,4(sp)
   1117e:	4902                	lw	s2,0(sp)
   11180:	0141                	addi	sp,sp,16
   11182:	8082                	ret

00011184 <memmove>:
   11184:	02a5f263          	bgeu	a1,a0,111a8 <memmove+0x24>
   11188:	00c58733          	add	a4,a1,a2
   1118c:	00e57e63          	bgeu	a0,a4,111a8 <memmove+0x24>
   11190:	00c507b3          	add	a5,a0,a2
   11194:	ca1d                	beqz	a2,111ca <memmove+0x46>
   11196:	fff74683          	lbu	a3,-1(a4)
   1119a:	17fd                	addi	a5,a5,-1
   1119c:	177d                	addi	a4,a4,-1
   1119e:	00d78023          	sb	a3,0(a5)
   111a2:	fef51ae3          	bne	a0,a5,11196 <memmove+0x12>
   111a6:	8082                	ret
   111a8:	47bd                	li	a5,15
   111aa:	02c7e163          	bltu	a5,a2,111cc <memmove+0x48>
   111ae:	87aa                	mv	a5,a0
   111b0:	fff60693          	addi	a3,a2,-1
   111b4:	ca59                	beqz	a2,1124a <memmove+0xc6>
   111b6:	0685                	addi	a3,a3,1
   111b8:	96be                	add	a3,a3,a5
   111ba:	0005c703          	lbu	a4,0(a1)
   111be:	0785                	addi	a5,a5,1
   111c0:	0585                	addi	a1,a1,1
   111c2:	fee78fa3          	sb	a4,-1(a5)
   111c6:	fed79ae3          	bne	a5,a3,111ba <memmove+0x36>
   111ca:	8082                	ret
   111cc:	00b567b3          	or	a5,a0,a1
   111d0:	8b8d                	andi	a5,a5,3
   111d2:	eba5                	bnez	a5,11242 <memmove+0xbe>
   111d4:	ff060893          	addi	a7,a2,-16
   111d8:	ff08f893          	andi	a7,a7,-16
   111dc:	08c1                	addi	a7,a7,16
   111de:	011506b3          	add	a3,a0,a7
   111e2:	872e                	mv	a4,a1
   111e4:	87aa                	mv	a5,a0
   111e6:	00072803          	lw	a6,0(a4)
   111ea:	0741                	addi	a4,a4,16
   111ec:	07c1                	addi	a5,a5,16
   111ee:	ff07a823          	sw	a6,-16(a5)
   111f2:	ff472803          	lw	a6,-12(a4)
   111f6:	ff07aa23          	sw	a6,-12(a5)
   111fa:	ff872803          	lw	a6,-8(a4)
   111fe:	ff07ac23          	sw	a6,-8(a5)
   11202:	ffc72803          	lw	a6,-4(a4)
   11206:	ff07ae23          	sw	a6,-4(a5)
   1120a:	fcd79ee3          	bne	a5,a3,111e6 <memmove+0x62>
   1120e:	00c67813          	andi	a6,a2,12
   11212:	95c6                	add	a1,a1,a7
   11214:	00f67713          	andi	a4,a2,15
   11218:	02080a63          	beqz	a6,1124c <memmove+0xc8>
   1121c:	ffc70813          	addi	a6,a4,-4
   11220:	ffc87813          	andi	a6,a6,-4
   11224:	0811                	addi	a6,a6,4
   11226:	010687b3          	add	a5,a3,a6
   1122a:	872e                	mv	a4,a1
   1122c:	00072883          	lw	a7,0(a4)
   11230:	0691                	addi	a3,a3,4
   11232:	0711                	addi	a4,a4,4
   11234:	ff16ae23          	sw	a7,-4(a3)
   11238:	fef69ae3          	bne	a3,a5,1122c <memmove+0xa8>
   1123c:	8a0d                	andi	a2,a2,3
   1123e:	95c2                	add	a1,a1,a6
   11240:	bf85                	j	111b0 <memmove+0x2c>
   11242:	fff60693          	addi	a3,a2,-1
   11246:	87aa                	mv	a5,a0
   11248:	b7bd                	j	111b6 <memmove+0x32>
   1124a:	8082                	ret
   1124c:	863a                	mv	a2,a4
   1124e:	b78d                	j	111b0 <memmove+0x2c>

00011250 <memset>:
   11250:	433d                	li	t1,15
   11252:	872a                	mv	a4,a0
   11254:	02c37363          	bgeu	t1,a2,1127a <memset+0x2a>
   11258:	00f77793          	andi	a5,a4,15
   1125c:	efbd                	bnez	a5,112da <memset+0x8a>
   1125e:	e5ad                	bnez	a1,112c8 <memset+0x78>
   11260:	ff067693          	andi	a3,a2,-16
   11264:	8a3d                	andi	a2,a2,15
   11266:	96ba                	add	a3,a3,a4
   11268:	c30c                	sw	a1,0(a4)
   1126a:	c34c                	sw	a1,4(a4)
   1126c:	c70c                	sw	a1,8(a4)
   1126e:	c74c                	sw	a1,12(a4)
   11270:	0741                	addi	a4,a4,16
   11272:	fed76be3          	bltu	a4,a3,11268 <memset+0x18>
   11276:	e211                	bnez	a2,1127a <memset+0x2a>
   11278:	8082                	ret
   1127a:	40c306b3          	sub	a3,t1,a2
   1127e:	068a                	slli	a3,a3,0x2
   11280:	00000297          	auipc	t0,0x0
   11284:	9696                	add	a3,a3,t0
   11286:	00a68067          	jr	10(a3)
   1128a:	00b70723          	sb	a1,14(a4)
   1128e:	00b706a3          	sb	a1,13(a4)
   11292:	00b70623          	sb	a1,12(a4)
   11296:	00b705a3          	sb	a1,11(a4)
   1129a:	00b70523          	sb	a1,10(a4)
   1129e:	00b704a3          	sb	a1,9(a4)
   112a2:	00b70423          	sb	a1,8(a4)
   112a6:	00b703a3          	sb	a1,7(a4)
   112aa:	00b70323          	sb	a1,6(a4)
   112ae:	00b702a3          	sb	a1,5(a4)
   112b2:	00b70223          	sb	a1,4(a4)
   112b6:	00b701a3          	sb	a1,3(a4)
   112ba:	00b70123          	sb	a1,2(a4)
   112be:	00b700a3          	sb	a1,1(a4)
   112c2:	00b70023          	sb	a1,0(a4)
   112c6:	8082                	ret
   112c8:	0ff5f593          	zext.b	a1,a1
   112cc:	00859693          	slli	a3,a1,0x8
   112d0:	8dd5                	or	a1,a1,a3
   112d2:	01059693          	slli	a3,a1,0x10
   112d6:	8dd5                	or	a1,a1,a3
   112d8:	b761                	j	11260 <memset+0x10>
   112da:	00279693          	slli	a3,a5,0x2
   112de:	00000297          	auipc	t0,0x0
   112e2:	9696                	add	a3,a3,t0
   112e4:	8286                	mv	t0,ra
   112e6:	fa8680e7          	jalr	-88(a3)
   112ea:	8096                	mv	ra,t0
   112ec:	17c1                	addi	a5,a5,-16
   112ee:	8f1d                	sub	a4,a4,a5
   112f0:	963e                	add	a2,a2,a5
   112f2:	f8c374e3          	bgeu	t1,a2,1127a <memset+0x2a>
   112f6:	b7a5                	j	1125e <memset+0xe>

000112f8 <memcpy>:
   112f8:	00a5c7b3          	xor	a5,a1,a0
   112fc:	8b8d                	andi	a5,a5,3
   112fe:	00c508b3          	add	a7,a0,a2
   11302:	e7b1                	bnez	a5,1134e <memcpy+0x56>
   11304:	478d                	li	a5,3
   11306:	04c7f463          	bgeu	a5,a2,1134e <memcpy+0x56>
   1130a:	00357793          	andi	a5,a0,3
   1130e:	872a                	mv	a4,a0
   11310:	ebb9                	bnez	a5,11366 <memcpy+0x6e>
   11312:	ffc8f613          	andi	a2,a7,-4
   11316:	40e606b3          	sub	a3,a2,a4
   1131a:	02000793          	li	a5,32
   1131e:	06d7c863          	blt	a5,a3,1138e <memcpy+0x96>
   11322:	86ae                	mv	a3,a1
   11324:	87ba                	mv	a5,a4
   11326:	02c77163          	bgeu	a4,a2,11348 <memcpy+0x50>
   1132a:	0006a803          	lw	a6,0(a3)
   1132e:	0791                	addi	a5,a5,4
   11330:	0691                	addi	a3,a3,4
   11332:	ff07ae23          	sw	a6,-4(a5)
   11336:	fec7eae3          	bltu	a5,a2,1132a <memcpy+0x32>
   1133a:	fff60793          	addi	a5,a2,-1
   1133e:	8f99                	sub	a5,a5,a4
   11340:	9bf1                	andi	a5,a5,-4
   11342:	0791                	addi	a5,a5,4
   11344:	973e                	add	a4,a4,a5
   11346:	95be                	add	a1,a1,a5
   11348:	01176663          	bltu	a4,a7,11354 <memcpy+0x5c>
   1134c:	8082                	ret
   1134e:	872a                	mv	a4,a0
   11350:	03157e63          	bgeu	a0,a7,1138c <memcpy+0x94>
   11354:	0005c783          	lbu	a5,0(a1)
   11358:	0705                	addi	a4,a4,1
   1135a:	0585                	addi	a1,a1,1
   1135c:	fef70fa3          	sb	a5,-1(a4)
   11360:	fee89ae3          	bne	a7,a4,11354 <memcpy+0x5c>
   11364:	8082                	ret
   11366:	0005c683          	lbu	a3,0(a1)
   1136a:	0705                	addi	a4,a4,1
   1136c:	00377793          	andi	a5,a4,3
   11370:	fed70fa3          	sb	a3,-1(a4)
   11374:	0585                	addi	a1,a1,1
   11376:	dfd1                	beqz	a5,11312 <memcpy+0x1a>
   11378:	0005c683          	lbu	a3,0(a1)
   1137c:	0705                	addi	a4,a4,1
   1137e:	00377793          	andi	a5,a4,3
   11382:	fed70fa3          	sb	a3,-1(a4)
   11386:	0585                	addi	a1,a1,1
   11388:	fff9                	bnez	a5,11366 <memcpy+0x6e>
   1138a:	b761                	j	11312 <memcpy+0x1a>
   1138c:	8082                	ret
   1138e:	1141                	addi	sp,sp,-16
   11390:	c622                	sw	s0,12(sp)
   11392:	02000413          	li	s0,32
   11396:	0005a383          	lw	t2,0(a1)
   1139a:	0045a283          	lw	t0,4(a1)
   1139e:	0085af83          	lw	t6,8(a1)
   113a2:	00c5af03          	lw	t5,12(a1)
   113a6:	0105ae83          	lw	t4,16(a1)
   113aa:	0145ae03          	lw	t3,20(a1)
   113ae:	0185a303          	lw	t1,24(a1)
   113b2:	01c5a803          	lw	a6,28(a1)
   113b6:	5194                	lw	a3,32(a1)
   113b8:	02470713          	addi	a4,a4,36
   113bc:	40e607b3          	sub	a5,a2,a4
   113c0:	fc772e23          	sw	t2,-36(a4)
   113c4:	fe572023          	sw	t0,-32(a4)
   113c8:	fff72223          	sw	t6,-28(a4)
   113cc:	ffe72423          	sw	t5,-24(a4)
   113d0:	ffd72623          	sw	t4,-20(a4)
   113d4:	ffc72823          	sw	t3,-16(a4)
   113d8:	fe672a23          	sw	t1,-12(a4)
   113dc:	ff072c23          	sw	a6,-8(a4)
   113e0:	fed72e23          	sw	a3,-4(a4)
   113e4:	02458593          	addi	a1,a1,36
   113e8:	faf447e3          	blt	s0,a5,11396 <memcpy+0x9e>
   113ec:	86ae                	mv	a3,a1
   113ee:	87ba                	mv	a5,a4
   113f0:	02c77163          	bgeu	a4,a2,11412 <memcpy+0x11a>
   113f4:	0006a803          	lw	a6,0(a3)
   113f8:	0791                	addi	a5,a5,4
   113fa:	0691                	addi	a3,a3,4
   113fc:	ff07ae23          	sw	a6,-4(a5)
   11400:	fec7eae3          	bltu	a5,a2,113f4 <memcpy+0xfc>
   11404:	fff60793          	addi	a5,a2,-1
   11408:	8f99                	sub	a5,a5,a4
   1140a:	9bf1                	andi	a5,a5,-4
   1140c:	0791                	addi	a5,a5,4
   1140e:	973e                	add	a4,a4,a5
   11410:	95be                	add	a1,a1,a5
   11412:	01176563          	bltu	a4,a7,1141c <memcpy+0x124>
   11416:	4432                	lw	s0,12(sp)
   11418:	0141                	addi	sp,sp,16
   1141a:	8082                	ret
   1141c:	0005c783          	lbu	a5,0(a1)
   11420:	0705                	addi	a4,a4,1
   11422:	0585                	addi	a1,a1,1
   11424:	fef70fa3          	sb	a5,-1(a4)
   11428:	fee887e3          	beq	a7,a4,11416 <memcpy+0x11e>
   1142c:	0005c783          	lbu	a5,0(a1)
   11430:	0705                	addi	a4,a4,1
   11432:	0585                	addi	a1,a1,1
   11434:	fef70fa3          	sb	a5,-1(a4)
   11438:	fee892e3          	bne	a7,a4,1141c <memcpy+0x124>
   1143c:	bfe9                	j	11416 <memcpy+0x11e>

0001143e <strlen>:
   1143e:	00357793          	andi	a5,a0,3
   11442:	872a                	mv	a4,a0
   11444:	ef9d                	bnez	a5,11482 <strlen+0x44>
   11446:	7f7f86b7          	lui	a3,0x7f7f8
   1144a:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   1144e:	55fd                	li	a1,-1
   11450:	4310                	lw	a2,0(a4)
   11452:	0711                	addi	a4,a4,4
   11454:	00d677b3          	and	a5,a2,a3
   11458:	97b6                	add	a5,a5,a3
   1145a:	8fd1                	or	a5,a5,a2
   1145c:	8fd5                	or	a5,a5,a3
   1145e:	feb789e3          	beq	a5,a1,11450 <strlen+0x12>
   11462:	ffc74683          	lbu	a3,-4(a4)
   11466:	40a707b3          	sub	a5,a4,a0
   1146a:	ca8d                	beqz	a3,1149c <strlen+0x5e>
   1146c:	ffd74683          	lbu	a3,-3(a4)
   11470:	c29d                	beqz	a3,11496 <strlen+0x58>
   11472:	ffe74503          	lbu	a0,-2(a4)
   11476:	00a03533          	snez	a0,a0
   1147a:	953e                	add	a0,a0,a5
   1147c:	1579                	addi	a0,a0,-2
   1147e:	8082                	ret
   11480:	d2f9                	beqz	a3,11446 <strlen+0x8>
   11482:	00074783          	lbu	a5,0(a4)
   11486:	0705                	addi	a4,a4,1
   11488:	00377693          	andi	a3,a4,3
   1148c:	fbf5                	bnez	a5,11480 <strlen+0x42>
   1148e:	8f09                	sub	a4,a4,a0
   11490:	fff70513          	addi	a0,a4,-1
   11494:	8082                	ret
   11496:	ffd78513          	addi	a0,a5,-3
   1149a:	8082                	ret
   1149c:	ffc78513          	addi	a0,a5,-4
   114a0:	8082                	ret

000114a2 <__call_exitprocs>:
   114a2:	7179                	addi	sp,sp,-48
   114a4:	cc52                	sw	s4,24(sp)
   114a6:	d04a                	sw	s2,32(sp)
   114a8:	f281a903          	lw	s2,-216(gp) # 1b738 <__atexit>
   114ac:	d606                	sw	ra,44(sp)
   114ae:	06090c63          	beqz	s2,11526 <__call_exitprocs+0x84>
   114b2:	ce4e                	sw	s3,28(sp)
   114b4:	ca56                	sw	s5,20(sp)
   114b6:	c85a                	sw	s6,16(sp)
   114b8:	c65e                	sw	s7,12(sp)
   114ba:	d422                	sw	s0,40(sp)
   114bc:	d226                	sw	s1,36(sp)
   114be:	c462                	sw	s8,8(sp)
   114c0:	8b2a                	mv	s6,a0
   114c2:	8bae                	mv	s7,a1
   114c4:	59fd                	li	s3,-1
   114c6:	4a85                	li	s5,1
   114c8:	00492483          	lw	s1,4(s2)
   114cc:	fff48413          	addi	s0,s1,-1
   114d0:	04044463          	bltz	s0,11518 <__call_exitprocs+0x76>
   114d4:	048a                	slli	s1,s1,0x2
   114d6:	94ca                	add	s1,s1,s2
   114d8:	040b9c63          	bnez	s7,11530 <__call_exitprocs+0x8e>
   114dc:	00492783          	lw	a5,4(s2)
   114e0:	40d4                	lw	a3,4(s1)
   114e2:	17fd                	addi	a5,a5,-1
   114e4:	08878063          	beq	a5,s0,11564 <__call_exitprocs+0xc2>
   114e8:	0004a223          	sw	zero,4(s1)
   114ec:	c295                	beqz	a3,11510 <__call_exitprocs+0x6e>
   114ee:	18892783          	lw	a5,392(s2)
   114f2:	008a9733          	sll	a4,s5,s0
   114f6:	00492c03          	lw	s8,4(s2)
   114fa:	8ff9                	and	a5,a5,a4
   114fc:	e3b9                	bnez	a5,11542 <__call_exitprocs+0xa0>
   114fe:	9682                	jalr	a3
   11500:	00492703          	lw	a4,4(s2)
   11504:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   11508:	05871b63          	bne	a4,s8,1155e <__call_exitprocs+0xbc>
   1150c:	05279963          	bne	a5,s2,1155e <__call_exitprocs+0xbc>
   11510:	147d                	addi	s0,s0,-1
   11512:	14f1                	addi	s1,s1,-4
   11514:	fd3412e3          	bne	s0,s3,114d8 <__call_exitprocs+0x36>
   11518:	5422                	lw	s0,40(sp)
   1151a:	5492                	lw	s1,36(sp)
   1151c:	49f2                	lw	s3,28(sp)
   1151e:	4ad2                	lw	s5,20(sp)
   11520:	4b42                	lw	s6,16(sp)
   11522:	4bb2                	lw	s7,12(sp)
   11524:	4c22                	lw	s8,8(sp)
   11526:	50b2                	lw	ra,44(sp)
   11528:	5902                	lw	s2,32(sp)
   1152a:	4a62                	lw	s4,24(sp)
   1152c:	6145                	addi	sp,sp,48
   1152e:	8082                	ret
   11530:	1044a783          	lw	a5,260(s1)
   11534:	fb7784e3          	beq	a5,s7,114dc <__call_exitprocs+0x3a>
   11538:	147d                	addi	s0,s0,-1
   1153a:	14f1                	addi	s1,s1,-4
   1153c:	ff341ae3          	bne	s0,s3,11530 <__call_exitprocs+0x8e>
   11540:	bfe1                	j	11518 <__call_exitprocs+0x76>
   11542:	18c92783          	lw	a5,396(s2)
   11546:	0844a583          	lw	a1,132(s1)
   1154a:	8f7d                	and	a4,a4,a5
   1154c:	ef19                	bnez	a4,1156a <__call_exitprocs+0xc8>
   1154e:	855a                	mv	a0,s6
   11550:	9682                	jalr	a3
   11552:	00492703          	lw	a4,4(s2)
   11556:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   1155a:	fb8709e3          	beq	a4,s8,1150c <__call_exitprocs+0x6a>
   1155e:	dfcd                	beqz	a5,11518 <__call_exitprocs+0x76>
   11560:	893e                	mv	s2,a5
   11562:	b79d                	j	114c8 <__call_exitprocs+0x26>
   11564:	00892223          	sw	s0,4(s2)
   11568:	b751                	j	114ec <__call_exitprocs+0x4a>
   1156a:	852e                	mv	a0,a1
   1156c:	9682                	jalr	a3
   1156e:	bf49                	j	11500 <__call_exitprocs+0x5e>

00011570 <atexit>:
   11570:	85aa                	mv	a1,a0
   11572:	4681                	li	a3,0
   11574:	4601                	li	a2,0
   11576:	4501                	li	a0,0
   11578:	13e0306f          	j	146b6 <__register_exitproc>

0001157c <_malloc_trim_r>:
   1157c:	1101                	addi	sp,sp,-32
   1157e:	c64e                	sw	s3,12(sp)
   11580:	69ed                	lui	s3,0x1b
   11582:	cc22                	sw	s0,24(sp)
   11584:	ca26                	sw	s1,20(sp)
   11586:	c84a                	sw	s2,16(sp)
   11588:	c452                	sw	s4,8(sp)
   1158a:	ce06                	sw	ra,28(sp)
   1158c:	8a2e                	mv	s4,a1
   1158e:	892a                	mv	s2,a0
   11590:	14098993          	addi	s3,s3,320 # 1b140 <__malloc_av_>
   11594:	07b000ef          	jal	11e0e <__malloc_lock>
   11598:	0089a703          	lw	a4,8(s3)
   1159c:	6785                	lui	a5,0x1
   1159e:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   115a0:	4344                	lw	s1,4(a4)
   115a2:	6705                	lui	a4,0x1
   115a4:	98f1                	andi	s1,s1,-4
   115a6:	00f48433          	add	s0,s1,a5
   115aa:	41440433          	sub	s0,s0,s4
   115ae:	8031                	srli	s0,s0,0xc
   115b0:	147d                	addi	s0,s0,-1
   115b2:	0432                	slli	s0,s0,0xc
   115b4:	00e44b63          	blt	s0,a4,115ca <_malloc_trim_r+0x4e>
   115b8:	4581                	li	a1,0
   115ba:	854a                	mv	a0,s2
   115bc:	7a1020ef          	jal	1455c <_sbrk_r>
   115c0:	0089a783          	lw	a5,8(s3)
   115c4:	97a6                	add	a5,a5,s1
   115c6:	00f50e63          	beq	a0,a5,115e2 <_malloc_trim_r+0x66>
   115ca:	854a                	mv	a0,s2
   115cc:	045000ef          	jal	11e10 <__malloc_unlock>
   115d0:	40f2                	lw	ra,28(sp)
   115d2:	4462                	lw	s0,24(sp)
   115d4:	44d2                	lw	s1,20(sp)
   115d6:	4942                	lw	s2,16(sp)
   115d8:	49b2                	lw	s3,12(sp)
   115da:	4a22                	lw	s4,8(sp)
   115dc:	4501                	li	a0,0
   115de:	6105                	addi	sp,sp,32
   115e0:	8082                	ret
   115e2:	408005b3          	neg	a1,s0
   115e6:	854a                	mv	a0,s2
   115e8:	775020ef          	jal	1455c <_sbrk_r>
   115ec:	57fd                	li	a5,-1
   115ee:	02f50963          	beq	a0,a5,11620 <_malloc_trim_r+0xa4>
   115f2:	09418793          	addi	a5,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   115f6:	4398                	lw	a4,0(a5)
   115f8:	0089a683          	lw	a3,8(s3)
   115fc:	8c81                	sub	s1,s1,s0
   115fe:	0014e493          	ori	s1,s1,1
   11602:	8f01                	sub	a4,a4,s0
   11604:	854a                	mv	a0,s2
   11606:	c2c4                	sw	s1,4(a3)
   11608:	c398                	sw	a4,0(a5)
   1160a:	007000ef          	jal	11e10 <__malloc_unlock>
   1160e:	40f2                	lw	ra,28(sp)
   11610:	4462                	lw	s0,24(sp)
   11612:	44d2                	lw	s1,20(sp)
   11614:	4942                	lw	s2,16(sp)
   11616:	49b2                	lw	s3,12(sp)
   11618:	4a22                	lw	s4,8(sp)
   1161a:	4505                	li	a0,1
   1161c:	6105                	addi	sp,sp,32
   1161e:	8082                	ret
   11620:	4581                	li	a1,0
   11622:	854a                	mv	a0,s2
   11624:	739020ef          	jal	1455c <_sbrk_r>
   11628:	0089a703          	lw	a4,8(s3)
   1162c:	46bd                	li	a3,15
   1162e:	40e507b3          	sub	a5,a0,a4
   11632:	f8f6dce3          	bge	a3,a5,115ca <_malloc_trim_r+0x4e>
   11636:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   1163a:	0017e793          	ori	a5,a5,1
   1163e:	c35c                	sw	a5,4(a4)
   11640:	8d15                	sub	a0,a0,a3
   11642:	08a1aa23          	sw	a0,148(gp) # 1b8a4 <__malloc_current_mallinfo>
   11646:	b751                	j	115ca <_malloc_trim_r+0x4e>

00011648 <_free_r>:
   11648:	10058a63          	beqz	a1,1175c <_free_r+0x114>
   1164c:	1141                	addi	sp,sp,-16
   1164e:	c422                	sw	s0,8(sp)
   11650:	c226                	sw	s1,4(sp)
   11652:	842e                	mv	s0,a1
   11654:	84aa                	mv	s1,a0
   11656:	c606                	sw	ra,12(sp)
   11658:	7b6000ef          	jal	11e0e <__malloc_lock>
   1165c:	ffc42503          	lw	a0,-4(s0)
   11660:	ff840713          	addi	a4,s0,-8
   11664:	65ed                	lui	a1,0x1b
   11666:	ffe57793          	andi	a5,a0,-2
   1166a:	00f70633          	add	a2,a4,a5
   1166e:	14058593          	addi	a1,a1,320 # 1b140 <__malloc_av_>
   11672:	4254                	lw	a3,4(a2)
   11674:	0085a803          	lw	a6,8(a1)
   11678:	9af1                	andi	a3,a3,-4
   1167a:	12c80363          	beq	a6,a2,117a0 <_free_r+0x158>
   1167e:	c254                	sw	a3,4(a2)
   11680:	8905                	andi	a0,a0,1
   11682:	00d60833          	add	a6,a2,a3
   11686:	e935                	bnez	a0,116fa <_free_r+0xb2>
   11688:	ff842303          	lw	t1,-8(s0)
   1168c:	00482803          	lw	a6,4(a6)
   11690:	656d                	lui	a0,0x1b
   11692:	40670733          	sub	a4,a4,t1
   11696:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   1169a:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   1169e:	979a                	add	a5,a5,t1
   116a0:	00187813          	andi	a6,a6,1
   116a4:	0ea88163          	beq	a7,a0,11786 <_free_r+0x13e>
   116a8:	00c72303          	lw	t1,12(a4)
   116ac:	0068a623          	sw	t1,12(a7)
   116b0:	01132423          	sw	a7,8(t1)
   116b4:	10080e63          	beqz	a6,117d0 <_free_r+0x188>
   116b8:	0017e693          	ori	a3,a5,1
   116bc:	c354                	sw	a3,4(a4)
   116be:	c21c                	sw	a5,0(a2)
   116c0:	1ff00693          	li	a3,511
   116c4:	04f6e863          	bltu	a3,a5,11714 <_free_r+0xcc>
   116c8:	ff87f693          	andi	a3,a5,-8
   116cc:	06a1                	addi	a3,a3,8
   116ce:	41c8                	lw	a0,4(a1)
   116d0:	96ae                	add	a3,a3,a1
   116d2:	4290                	lw	a2,0(a3)
   116d4:	0057d813          	srli	a6,a5,0x5
   116d8:	4785                	li	a5,1
   116da:	010797b3          	sll	a5,a5,a6
   116de:	8fc9                	or	a5,a5,a0
   116e0:	ff868513          	addi	a0,a3,-8
   116e4:	c748                	sw	a0,12(a4)
   116e6:	c710                	sw	a2,8(a4)
   116e8:	c1dc                	sw	a5,4(a1)
   116ea:	c298                	sw	a4,0(a3)
   116ec:	c658                	sw	a4,12(a2)
   116ee:	4422                	lw	s0,8(sp)
   116f0:	40b2                	lw	ra,12(sp)
   116f2:	8526                	mv	a0,s1
   116f4:	4492                	lw	s1,4(sp)
   116f6:	0141                	addi	sp,sp,16
   116f8:	af21                	j	11e10 <__malloc_unlock>
   116fa:	00482503          	lw	a0,4(a6)
   116fe:	8905                	andi	a0,a0,1
   11700:	cd39                	beqz	a0,1175e <_free_r+0x116>
   11702:	0017e693          	ori	a3,a5,1
   11706:	fed42e23          	sw	a3,-4(s0)
   1170a:	c21c                	sw	a5,0(a2)
   1170c:	1ff00693          	li	a3,511
   11710:	faf6fce3          	bgeu	a3,a5,116c8 <_free_r+0x80>
   11714:	0097d693          	srli	a3,a5,0x9
   11718:	4611                	li	a2,4
   1171a:	0ad66d63          	bltu	a2,a3,117d4 <_free_r+0x18c>
   1171e:	0067d693          	srli	a3,a5,0x6
   11722:	03968513          	addi	a0,a3,57
   11726:	03868613          	addi	a2,a3,56
   1172a:	050e                	slli	a0,a0,0x3
   1172c:	952e                	add	a0,a0,a1
   1172e:	4114                	lw	a3,0(a0)
   11730:	1561                	addi	a0,a0,-8
   11732:	00d51663          	bne	a0,a3,1173e <_free_r+0xf6>
   11736:	a8f1                	j	11812 <_free_r+0x1ca>
   11738:	4694                	lw	a3,8(a3)
   1173a:	00d50663          	beq	a0,a3,11746 <_free_r+0xfe>
   1173e:	42d0                	lw	a2,4(a3)
   11740:	9a71                	andi	a2,a2,-4
   11742:	fec7ebe3          	bltu	a5,a2,11738 <_free_r+0xf0>
   11746:	46c8                	lw	a0,12(a3)
   11748:	c748                	sw	a0,12(a4)
   1174a:	c714                	sw	a3,8(a4)
   1174c:	4422                	lw	s0,8(sp)
   1174e:	c518                	sw	a4,8(a0)
   11750:	40b2                	lw	ra,12(sp)
   11752:	8526                	mv	a0,s1
   11754:	4492                	lw	s1,4(sp)
   11756:	c6d8                	sw	a4,12(a3)
   11758:	0141                	addi	sp,sp,16
   1175a:	ad5d                	j	11e10 <__malloc_unlock>
   1175c:	8082                	ret
   1175e:	656d                	lui	a0,0x1b
   11760:	97b6                	add	a5,a5,a3
   11762:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   11766:	4614                	lw	a3,8(a2)
   11768:	08a68b63          	beq	a3,a0,117fe <_free_r+0x1b6>
   1176c:	00c62803          	lw	a6,12(a2)
   11770:	0017e513          	ori	a0,a5,1
   11774:	00f70633          	add	a2,a4,a5
   11778:	0106a623          	sw	a6,12(a3)
   1177c:	00d82423          	sw	a3,8(a6)
   11780:	c348                	sw	a0,4(a4)
   11782:	c21c                	sw	a5,0(a2)
   11784:	bf35                	j	116c0 <_free_r+0x78>
   11786:	0c081d63          	bnez	a6,11860 <_free_r+0x218>
   1178a:	460c                	lw	a1,8(a2)
   1178c:	4650                	lw	a2,12(a2)
   1178e:	96be                	add	a3,a3,a5
   11790:	0016e793          	ori	a5,a3,1
   11794:	c5d0                	sw	a2,12(a1)
   11796:	c60c                	sw	a1,8(a2)
   11798:	c35c                	sw	a5,4(a4)
   1179a:	9736                	add	a4,a4,a3
   1179c:	c314                	sw	a3,0(a4)
   1179e:	bf81                	j	116ee <_free_r+0xa6>
   117a0:	8905                	andi	a0,a0,1
   117a2:	96be                	add	a3,a3,a5
   117a4:	e909                	bnez	a0,117b6 <_free_r+0x16e>
   117a6:	ff842503          	lw	a0,-8(s0)
   117aa:	8f09                	sub	a4,a4,a0
   117ac:	475c                	lw	a5,12(a4)
   117ae:	4710                	lw	a2,8(a4)
   117b0:	96aa                	add	a3,a3,a0
   117b2:	c65c                	sw	a5,12(a2)
   117b4:	c790                	sw	a2,8(a5)
   117b6:	0016e613          	ori	a2,a3,1
   117ba:	f1c1a783          	lw	a5,-228(gp) # 1b72c <__malloc_trim_threshold>
   117be:	c350                	sw	a2,4(a4)
   117c0:	c598                	sw	a4,8(a1)
   117c2:	f2f6e6e3          	bltu	a3,a5,116ee <_free_r+0xa6>
   117c6:	f341a583          	lw	a1,-204(gp) # 1b744 <__malloc_top_pad>
   117ca:	8526                	mv	a0,s1
   117cc:	3b45                	jal	1157c <_malloc_trim_r>
   117ce:	b705                	j	116ee <_free_r+0xa6>
   117d0:	97b6                	add	a5,a5,a3
   117d2:	bf51                	j	11766 <_free_r+0x11e>
   117d4:	4651                	li	a2,20
   117d6:	00d67e63          	bgeu	a2,a3,117f2 <_free_r+0x1aa>
   117da:	05400613          	li	a2,84
   117de:	04d66463          	bltu	a2,a3,11826 <_free_r+0x1de>
   117e2:	00c7d693          	srli	a3,a5,0xc
   117e6:	06f68513          	addi	a0,a3,111
   117ea:	06e68613          	addi	a2,a3,110
   117ee:	050e                	slli	a0,a0,0x3
   117f0:	bf35                	j	1172c <_free_r+0xe4>
   117f2:	05c68513          	addi	a0,a3,92
   117f6:	05b68613          	addi	a2,a3,91
   117fa:	050e                	slli	a0,a0,0x3
   117fc:	bf05                	j	1172c <_free_r+0xe4>
   117fe:	c9d8                	sw	a4,20(a1)
   11800:	c998                	sw	a4,16(a1)
   11802:	0017e693          	ori	a3,a5,1
   11806:	c748                	sw	a0,12(a4)
   11808:	c708                	sw	a0,8(a4)
   1180a:	c354                	sw	a3,4(a4)
   1180c:	973e                	add	a4,a4,a5
   1180e:	c31c                	sw	a5,0(a4)
   11810:	bdf9                	j	116ee <_free_r+0xa6>
   11812:	0045a803          	lw	a6,4(a1)
   11816:	8609                	srai	a2,a2,0x2
   11818:	4785                	li	a5,1
   1181a:	00c797b3          	sll	a5,a5,a2
   1181e:	0107e7b3          	or	a5,a5,a6
   11822:	c1dc                	sw	a5,4(a1)
   11824:	b715                	j	11748 <_free_r+0x100>
   11826:	15400613          	li	a2,340
   1182a:	00d66a63          	bltu	a2,a3,1183e <_free_r+0x1f6>
   1182e:	00f7d693          	srli	a3,a5,0xf
   11832:	07868513          	addi	a0,a3,120
   11836:	07768613          	addi	a2,a3,119
   1183a:	050e                	slli	a0,a0,0x3
   1183c:	bdc5                	j	1172c <_free_r+0xe4>
   1183e:	55400613          	li	a2,1364
   11842:	00d66a63          	bltu	a2,a3,11856 <_free_r+0x20e>
   11846:	0127d693          	srli	a3,a5,0x12
   1184a:	07d68513          	addi	a0,a3,125
   1184e:	07c68613          	addi	a2,a3,124
   11852:	050e                	slli	a0,a0,0x3
   11854:	bde1                	j	1172c <_free_r+0xe4>
   11856:	3f800513          	li	a0,1016
   1185a:	07e00613          	li	a2,126
   1185e:	b5f9                	j	1172c <_free_r+0xe4>
   11860:	0017e693          	ori	a3,a5,1
   11864:	c354                	sw	a3,4(a4)
   11866:	c21c                	sw	a5,0(a2)
   11868:	b559                	j	116ee <_free_r+0xa6>

0001186a <_malloc_r>:
   1186a:	7179                	addi	sp,sp,-48
   1186c:	ce4e                	sw	s3,28(sp)
   1186e:	d606                	sw	ra,44(sp)
   11870:	d422                	sw	s0,40(sp)
   11872:	d226                	sw	s1,36(sp)
   11874:	d04a                	sw	s2,32(sp)
   11876:	00b58793          	addi	a5,a1,11
   1187a:	4759                	li	a4,22
   1187c:	89aa                	mv	s3,a0
   1187e:	04f76863          	bltu	a4,a5,118ce <_malloc_r+0x64>
   11882:	47c1                	li	a5,16
   11884:	16b7e863          	bltu	a5,a1,119f4 <_malloc_r+0x18a>
   11888:	2359                	jal	11e0e <__malloc_lock>
   1188a:	47e1                	li	a5,24
   1188c:	4589                	li	a1,2
   1188e:	44c1                	li	s1,16
   11890:	696d                	lui	s2,0x1b
   11892:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   11896:	97ca                	add	a5,a5,s2
   11898:	43c0                	lw	s0,4(a5)
   1189a:	ff878713          	addi	a4,a5,-8
   1189e:	24e40d63          	beq	s0,a4,11af8 <_malloc_r+0x28e>
   118a2:	405c                	lw	a5,4(s0)
   118a4:	4454                	lw	a3,12(s0)
   118a6:	4410                	lw	a2,8(s0)
   118a8:	9bf1                	andi	a5,a5,-4
   118aa:	97a2                	add	a5,a5,s0
   118ac:	43d8                	lw	a4,4(a5)
   118ae:	c654                	sw	a3,12(a2)
   118b0:	c690                	sw	a2,8(a3)
   118b2:	00176713          	ori	a4,a4,1
   118b6:	854e                	mv	a0,s3
   118b8:	c3d8                	sw	a4,4(a5)
   118ba:	2b99                	jal	11e10 <__malloc_unlock>
   118bc:	00840513          	addi	a0,s0,8
   118c0:	50b2                	lw	ra,44(sp)
   118c2:	5422                	lw	s0,40(sp)
   118c4:	5492                	lw	s1,36(sp)
   118c6:	5902                	lw	s2,32(sp)
   118c8:	49f2                	lw	s3,28(sp)
   118ca:	6145                	addi	sp,sp,48
   118cc:	8082                	ret
   118ce:	ff87f493          	andi	s1,a5,-8
   118d2:	1207c163          	bltz	a5,119f4 <_malloc_r+0x18a>
   118d6:	10b4ef63          	bltu	s1,a1,119f4 <_malloc_r+0x18a>
   118da:	2b15                	jal	11e0e <__malloc_lock>
   118dc:	1f700793          	li	a5,503
   118e0:	2c97fb63          	bgeu	a5,s1,11bb6 <_malloc_r+0x34c>
   118e4:	0094d793          	srli	a5,s1,0x9
   118e8:	10078b63          	beqz	a5,119fe <_malloc_r+0x194>
   118ec:	4711                	li	a4,4
   118ee:	24f76a63          	bltu	a4,a5,11b42 <_malloc_r+0x2d8>
   118f2:	0064d793          	srli	a5,s1,0x6
   118f6:	03978593          	addi	a1,a5,57
   118fa:	03878813          	addi	a6,a5,56
   118fe:	00359613          	slli	a2,a1,0x3
   11902:	696d                	lui	s2,0x1b
   11904:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   11908:	964a                	add	a2,a2,s2
   1190a:	4240                	lw	s0,4(a2)
   1190c:	1661                	addi	a2,a2,-8
   1190e:	02860163          	beq	a2,s0,11930 <_malloc_r+0xc6>
   11912:	453d                	li	a0,15
   11914:	a039                	j	11922 <_malloc_r+0xb8>
   11916:	4454                	lw	a3,12(s0)
   11918:	1c075e63          	bgez	a4,11af4 <_malloc_r+0x28a>
   1191c:	00d60a63          	beq	a2,a3,11930 <_malloc_r+0xc6>
   11920:	8436                	mv	s0,a3
   11922:	405c                	lw	a5,4(s0)
   11924:	9bf1                	andi	a5,a5,-4
   11926:	40978733          	sub	a4,a5,s1
   1192a:	fee556e3          	bge	a0,a4,11916 <_malloc_r+0xac>
   1192e:	85c2                	mv	a1,a6
   11930:	01092403          	lw	s0,16(s2)
   11934:	686d                	lui	a6,0x1b
   11936:	14880813          	addi	a6,a6,328 # 1b148 <__malloc_av_+0x8>
   1193a:	1b040a63          	beq	s0,a6,11aee <_malloc_r+0x284>
   1193e:	405c                	lw	a5,4(s0)
   11940:	46bd                	li	a3,15
   11942:	9bf1                	andi	a5,a5,-4
   11944:	40978733          	sub	a4,a5,s1
   11948:	26e6cc63          	blt	a3,a4,11bc0 <_malloc_r+0x356>
   1194c:	01092a23          	sw	a6,20(s2)
   11950:	01092823          	sw	a6,16(s2)
   11954:	24075763          	bgez	a4,11ba2 <_malloc_r+0x338>
   11958:	1ff00713          	li	a4,511
   1195c:	00492503          	lw	a0,4(s2)
   11960:	1af76163          	bltu	a4,a5,11b02 <_malloc_r+0x298>
   11964:	ff87f713          	andi	a4,a5,-8
   11968:	0721                	addi	a4,a4,8
   1196a:	974a                	add	a4,a4,s2
   1196c:	4314                	lw	a3,0(a4)
   1196e:	0057d613          	srli	a2,a5,0x5
   11972:	4785                	li	a5,1
   11974:	00c797b3          	sll	a5,a5,a2
   11978:	8d5d                	or	a0,a0,a5
   1197a:	ff870793          	addi	a5,a4,-8
   1197e:	c45c                	sw	a5,12(s0)
   11980:	c414                	sw	a3,8(s0)
   11982:	00a92223          	sw	a0,4(s2)
   11986:	c300                	sw	s0,0(a4)
   11988:	c6c0                	sw	s0,12(a3)
   1198a:	4025d793          	srai	a5,a1,0x2
   1198e:	4605                	li	a2,1
   11990:	00f61633          	sll	a2,a2,a5
   11994:	06c56c63          	bltu	a0,a2,11a0c <_malloc_r+0x1a2>
   11998:	00a677b3          	and	a5,a2,a0
   1199c:	ef81                	bnez	a5,119b4 <_malloc_r+0x14a>
   1199e:	0606                	slli	a2,a2,0x1
   119a0:	99f1                	andi	a1,a1,-4
   119a2:	00a677b3          	and	a5,a2,a0
   119a6:	0591                	addi	a1,a1,4
   119a8:	e791                	bnez	a5,119b4 <_malloc_r+0x14a>
   119aa:	0606                	slli	a2,a2,0x1
   119ac:	00a677b3          	and	a5,a2,a0
   119b0:	0591                	addi	a1,a1,4
   119b2:	dfe5                	beqz	a5,119aa <_malloc_r+0x140>
   119b4:	48bd                	li	a7,15
   119b6:	00359313          	slli	t1,a1,0x3
   119ba:	934a                	add	t1,t1,s2
   119bc:	851a                	mv	a0,t1
   119be:	455c                	lw	a5,12(a0)
   119c0:	8e2e                	mv	t3,a1
   119c2:	1af50063          	beq	a0,a5,11b62 <_malloc_r+0x2f8>
   119c6:	43d8                	lw	a4,4(a5)
   119c8:	843e                	mv	s0,a5
   119ca:	47dc                	lw	a5,12(a5)
   119cc:	9b71                	andi	a4,a4,-4
   119ce:	409706b3          	sub	a3,a4,s1
   119d2:	18d8cf63          	blt	a7,a3,11b70 <_malloc_r+0x306>
   119d6:	fe06c6e3          	bltz	a3,119c2 <_malloc_r+0x158>
   119da:	9722                	add	a4,a4,s0
   119dc:	4354                	lw	a3,4(a4)
   119de:	4410                	lw	a2,8(s0)
   119e0:	854e                	mv	a0,s3
   119e2:	0016e693          	ori	a3,a3,1
   119e6:	c354                	sw	a3,4(a4)
   119e8:	c65c                	sw	a5,12(a2)
   119ea:	c790                	sw	a2,8(a5)
   119ec:	2115                	jal	11e10 <__malloc_unlock>
   119ee:	00840513          	addi	a0,s0,8
   119f2:	b5f9                	j	118c0 <_malloc_r+0x56>
   119f4:	47b1                	li	a5,12
   119f6:	00f9a023          	sw	a5,0(s3)
   119fa:	4501                	li	a0,0
   119fc:	b5d1                	j	118c0 <_malloc_r+0x56>
   119fe:	20000613          	li	a2,512
   11a02:	04000593          	li	a1,64
   11a06:	03f00813          	li	a6,63
   11a0a:	bde5                	j	11902 <_malloc_r+0x98>
   11a0c:	00892403          	lw	s0,8(s2)
   11a10:	c85a                	sw	s6,16(sp)
   11a12:	405c                	lw	a5,4(s0)
   11a14:	ffc7fb13          	andi	s6,a5,-4
   11a18:	009b6763          	bltu	s6,s1,11a26 <_malloc_r+0x1bc>
   11a1c:	409b0733          	sub	a4,s6,s1
   11a20:	47bd                	li	a5,15
   11a22:	0ae7c163          	blt	a5,a4,11ac4 <_malloc_r+0x25a>
   11a26:	c266                	sw	s9,4(sp)
   11a28:	ca56                	sw	s5,20(sp)
   11a2a:	f181a703          	lw	a4,-232(gp) # 1b728 <__malloc_sbrk_base>
   11a2e:	f341aa83          	lw	s5,-204(gp) # 1b744 <__malloc_top_pad>
   11a32:	cc52                	sw	s4,24(sp)
   11a34:	c65e                	sw	s7,12(sp)
   11a36:	57fd                	li	a5,-1
   11a38:	01640a33          	add	s4,s0,s6
   11a3c:	9aa6                	add	s5,s5,s1
   11a3e:	2cf70763          	beq	a4,a5,11d0c <_malloc_r+0x4a2>
   11a42:	6785                	lui	a5,0x1
   11a44:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   11a46:	9abe                	add	s5,s5,a5
   11a48:	77fd                	lui	a5,0xfffff
   11a4a:	00fafab3          	and	s5,s5,a5
   11a4e:	85d6                	mv	a1,s5
   11a50:	854e                	mv	a0,s3
   11a52:	30b020ef          	jal	1455c <_sbrk_r>
   11a56:	57fd                	li	a5,-1
   11a58:	8baa                	mv	s7,a0
   11a5a:	32f50963          	beq	a0,a5,11d8c <_malloc_r+0x522>
   11a5e:	c462                	sw	s8,8(sp)
   11a60:	19456e63          	bltu	a0,s4,11bfc <_malloc_r+0x392>
   11a64:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   11a68:	000c2583          	lw	a1,0(s8)
   11a6c:	95d6                	add	a1,a1,s5
   11a6e:	00bc2023          	sw	a1,0(s8)
   11a72:	872e                	mv	a4,a1
   11a74:	1eaa1863          	bne	s4,a0,11c64 <_malloc_r+0x3fa>
   11a78:	01451793          	slli	a5,a0,0x14
   11a7c:	1e079463          	bnez	a5,11c64 <_malloc_r+0x3fa>
   11a80:	00892b83          	lw	s7,8(s2)
   11a84:	015b07b3          	add	a5,s6,s5
   11a88:	0017e793          	ori	a5,a5,1
   11a8c:	00fba223          	sw	a5,4(s7)
   11a90:	f301a683          	lw	a3,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   11a94:	00b6f463          	bgeu	a3,a1,11a9c <_malloc_r+0x232>
   11a98:	f2b1a823          	sw	a1,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   11a9c:	f2c1a683          	lw	a3,-212(gp) # 1b73c <__malloc_max_total_mem>
   11aa0:	00b6f463          	bgeu	a3,a1,11aa8 <_malloc_r+0x23e>
   11aa4:	f2b1a623          	sw	a1,-212(gp) # 1b73c <__malloc_max_total_mem>
   11aa8:	4c22                	lw	s8,8(sp)
   11aaa:	845e                	mv	s0,s7
   11aac:	9bf1                	andi	a5,a5,-4
   11aae:	40978733          	sub	a4,a5,s1
   11ab2:	2897eb63          	bltu	a5,s1,11d48 <_malloc_r+0x4de>
   11ab6:	47bd                	li	a5,15
   11ab8:	28e7d863          	bge	a5,a4,11d48 <_malloc_r+0x4de>
   11abc:	4a62                	lw	s4,24(sp)
   11abe:	4ad2                	lw	s5,20(sp)
   11ac0:	4bb2                	lw	s7,12(sp)
   11ac2:	4c92                	lw	s9,4(sp)
   11ac4:	0014e793          	ori	a5,s1,1
   11ac8:	c05c                	sw	a5,4(s0)
   11aca:	94a2                	add	s1,s1,s0
   11acc:	00992423          	sw	s1,8(s2)
   11ad0:	00176713          	ori	a4,a4,1
   11ad4:	854e                	mv	a0,s3
   11ad6:	c0d8                	sw	a4,4(s1)
   11ad8:	2e25                	jal	11e10 <__malloc_unlock>
   11ada:	50b2                	lw	ra,44(sp)
   11adc:	00840513          	addi	a0,s0,8
   11ae0:	5422                	lw	s0,40(sp)
   11ae2:	4b42                	lw	s6,16(sp)
   11ae4:	5492                	lw	s1,36(sp)
   11ae6:	5902                	lw	s2,32(sp)
   11ae8:	49f2                	lw	s3,28(sp)
   11aea:	6145                	addi	sp,sp,48
   11aec:	8082                	ret
   11aee:	00492503          	lw	a0,4(s2)
   11af2:	bd61                	j	1198a <_malloc_r+0x120>
   11af4:	4410                	lw	a2,8(s0)
   11af6:	bb55                	j	118aa <_malloc_r+0x40>
   11af8:	47c0                	lw	s0,12(a5)
   11afa:	0589                	addi	a1,a1,2
   11afc:	e2878ae3          	beq	a5,s0,11930 <_malloc_r+0xc6>
   11b00:	b34d                	j	118a2 <_malloc_r+0x38>
   11b02:	0097d713          	srli	a4,a5,0x9
   11b06:	4691                	li	a3,4
   11b08:	0ee6f263          	bgeu	a3,a4,11bec <_malloc_r+0x382>
   11b0c:	46d1                	li	a3,20
   11b0e:	24e6e663          	bltu	a3,a4,11d5a <_malloc_r+0x4f0>
   11b12:	05c70613          	addi	a2,a4,92
   11b16:	05b70693          	addi	a3,a4,91
   11b1a:	060e                	slli	a2,a2,0x3
   11b1c:	964a                	add	a2,a2,s2
   11b1e:	4218                	lw	a4,0(a2)
   11b20:	1661                	addi	a2,a2,-8
   11b22:	00e61663          	bne	a2,a4,11b2e <_malloc_r+0x2c4>
   11b26:	a2ed                	j	11d10 <_malloc_r+0x4a6>
   11b28:	4718                	lw	a4,8(a4)
   11b2a:	00e60663          	beq	a2,a4,11b36 <_malloc_r+0x2cc>
   11b2e:	4354                	lw	a3,4(a4)
   11b30:	9af1                	andi	a3,a3,-4
   11b32:	fed7ebe3          	bltu	a5,a3,11b28 <_malloc_r+0x2be>
   11b36:	4750                	lw	a2,12(a4)
   11b38:	c450                	sw	a2,12(s0)
   11b3a:	c418                	sw	a4,8(s0)
   11b3c:	c600                	sw	s0,8(a2)
   11b3e:	c740                	sw	s0,12(a4)
   11b40:	b5a9                	j	1198a <_malloc_r+0x120>
   11b42:	4751                	li	a4,20
   11b44:	0cf77363          	bgeu	a4,a5,11c0a <_malloc_r+0x3a0>
   11b48:	05400713          	li	a4,84
   11b4c:	22f76363          	bltu	a4,a5,11d72 <_malloc_r+0x508>
   11b50:	00c4d793          	srli	a5,s1,0xc
   11b54:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe3613>
   11b58:	06e78813          	addi	a6,a5,110
   11b5c:	00359613          	slli	a2,a1,0x3
   11b60:	b34d                	j	11902 <_malloc_r+0x98>
   11b62:	0e05                	addi	t3,t3,1
   11b64:	003e7793          	andi	a5,t3,3
   11b68:	0521                	addi	a0,a0,8
   11b6a:	cfc5                	beqz	a5,11c22 <_malloc_r+0x3b8>
   11b6c:	455c                	lw	a5,12(a0)
   11b6e:	bd91                	j	119c2 <_malloc_r+0x158>
   11b70:	4410                	lw	a2,8(s0)
   11b72:	0014e593          	ori	a1,s1,1
   11b76:	c04c                	sw	a1,4(s0)
   11b78:	c65c                	sw	a5,12(a2)
   11b7a:	c790                	sw	a2,8(a5)
   11b7c:	94a2                	add	s1,s1,s0
   11b7e:	00992a23          	sw	s1,20(s2)
   11b82:	00992823          	sw	s1,16(s2)
   11b86:	0016e793          	ori	a5,a3,1
   11b8a:	0104a623          	sw	a6,12(s1)
   11b8e:	0104a423          	sw	a6,8(s1)
   11b92:	c0dc                	sw	a5,4(s1)
   11b94:	9722                	add	a4,a4,s0
   11b96:	854e                	mv	a0,s3
   11b98:	c314                	sw	a3,0(a4)
   11b9a:	2c9d                	jal	11e10 <__malloc_unlock>
   11b9c:	00840513          	addi	a0,s0,8
   11ba0:	b305                	j	118c0 <_malloc_r+0x56>
   11ba2:	97a2                	add	a5,a5,s0
   11ba4:	43d8                	lw	a4,4(a5)
   11ba6:	854e                	mv	a0,s3
   11ba8:	00176713          	ori	a4,a4,1
   11bac:	c3d8                	sw	a4,4(a5)
   11bae:	248d                	jal	11e10 <__malloc_unlock>
   11bb0:	00840513          	addi	a0,s0,8
   11bb4:	b331                	j	118c0 <_malloc_r+0x56>
   11bb6:	0034d593          	srli	a1,s1,0x3
   11bba:	00848793          	addi	a5,s1,8
   11bbe:	b9c9                	j	11890 <_malloc_r+0x26>
   11bc0:	0014e693          	ori	a3,s1,1
   11bc4:	c054                	sw	a3,4(s0)
   11bc6:	94a2                	add	s1,s1,s0
   11bc8:	00992a23          	sw	s1,20(s2)
   11bcc:	00992823          	sw	s1,16(s2)
   11bd0:	00176693          	ori	a3,a4,1
   11bd4:	0104a623          	sw	a6,12(s1)
   11bd8:	0104a423          	sw	a6,8(s1)
   11bdc:	c0d4                	sw	a3,4(s1)
   11bde:	97a2                	add	a5,a5,s0
   11be0:	854e                	mv	a0,s3
   11be2:	c398                	sw	a4,0(a5)
   11be4:	2435                	jal	11e10 <__malloc_unlock>
   11be6:	00840513          	addi	a0,s0,8
   11bea:	b9d9                	j	118c0 <_malloc_r+0x56>
   11bec:	0067d713          	srli	a4,a5,0x6
   11bf0:	03970613          	addi	a2,a4,57
   11bf4:	03870693          	addi	a3,a4,56
   11bf8:	060e                	slli	a2,a2,0x3
   11bfa:	b70d                	j	11b1c <_malloc_r+0x2b2>
   11bfc:	05240d63          	beq	s0,s2,11c56 <_malloc_r+0x3ec>
   11c00:	00892403          	lw	s0,8(s2)
   11c04:	4c22                	lw	s8,8(sp)
   11c06:	405c                	lw	a5,4(s0)
   11c08:	b555                	j	11aac <_malloc_r+0x242>
   11c0a:	05c78593          	addi	a1,a5,92
   11c0e:	05b78813          	addi	a6,a5,91
   11c12:	00359613          	slli	a2,a1,0x3
   11c16:	b1f5                	j	11902 <_malloc_r+0x98>
   11c18:	00832783          	lw	a5,8(t1)
   11c1c:	15fd                	addi	a1,a1,-1
   11c1e:	1e679563          	bne	a5,t1,11e08 <_malloc_r+0x59e>
   11c22:	0035f793          	andi	a5,a1,3
   11c26:	1361                	addi	t1,t1,-8
   11c28:	fbe5                	bnez	a5,11c18 <_malloc_r+0x3ae>
   11c2a:	00492703          	lw	a4,4(s2)
   11c2e:	fff64793          	not	a5,a2
   11c32:	8ff9                	and	a5,a5,a4
   11c34:	00f92223          	sw	a5,4(s2)
   11c38:	0606                	slli	a2,a2,0x1
   11c3a:	dcc7e9e3          	bltu	a5,a2,11a0c <_malloc_r+0x1a2>
   11c3e:	dc0607e3          	beqz	a2,11a0c <_malloc_r+0x1a2>
   11c42:	00f67733          	and	a4,a2,a5
   11c46:	e711                	bnez	a4,11c52 <_malloc_r+0x3e8>
   11c48:	0606                	slli	a2,a2,0x1
   11c4a:	00f67733          	and	a4,a2,a5
   11c4e:	0e11                	addi	t3,t3,4
   11c50:	df65                	beqz	a4,11c48 <_malloc_r+0x3de>
   11c52:	85f2                	mv	a1,t3
   11c54:	b38d                	j	119b6 <_malloc_r+0x14c>
   11c56:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   11c5a:	000c2703          	lw	a4,0(s8)
   11c5e:	9756                	add	a4,a4,s5
   11c60:	00ec2023          	sw	a4,0(s8)
   11c64:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   11c68:	57fd                	li	a5,-1
   11c6a:	12f68563          	beq	a3,a5,11d94 <_malloc_r+0x52a>
   11c6e:	414b87b3          	sub	a5,s7,s4
   11c72:	97ba                	add	a5,a5,a4
   11c74:	00fc2023          	sw	a5,0(s8)
   11c78:	007bfc93          	andi	s9,s7,7
   11c7c:	0a0c8263          	beqz	s9,11d20 <_malloc_r+0x4b6>
   11c80:	419b8bb3          	sub	s7,s7,s9
   11c84:	6785                	lui	a5,0x1
   11c86:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   11c88:	0ba1                	addi	s7,s7,8
   11c8a:	419785b3          	sub	a1,a5,s9
   11c8e:	9ade                	add	s5,s5,s7
   11c90:	415585b3          	sub	a1,a1,s5
   11c94:	05d2                	slli	a1,a1,0x14
   11c96:	0145da13          	srli	s4,a1,0x14
   11c9a:	85d2                	mv	a1,s4
   11c9c:	854e                	mv	a0,s3
   11c9e:	0bf020ef          	jal	1455c <_sbrk_r>
   11ca2:	57fd                	li	a5,-1
   11ca4:	12f50463          	beq	a0,a5,11dcc <_malloc_r+0x562>
   11ca8:	41750533          	sub	a0,a0,s7
   11cac:	01450ab3          	add	s5,a0,s4
   11cb0:	000c2703          	lw	a4,0(s8)
   11cb4:	01792423          	sw	s7,8(s2)
   11cb8:	001ae793          	ori	a5,s5,1
   11cbc:	00ea05b3          	add	a1,s4,a4
   11cc0:	00bc2023          	sw	a1,0(s8)
   11cc4:	00fba223          	sw	a5,4(s7)
   11cc8:	dd2404e3          	beq	s0,s2,11a90 <_malloc_r+0x226>
   11ccc:	46bd                	li	a3,15
   11cce:	0766f963          	bgeu	a3,s6,11d40 <_malloc_r+0x4d6>
   11cd2:	4058                	lw	a4,4(s0)
   11cd4:	ff4b0793          	addi	a5,s6,-12
   11cd8:	9be1                	andi	a5,a5,-8
   11cda:	8b05                	andi	a4,a4,1
   11cdc:	8f5d                	or	a4,a4,a5
   11cde:	c058                	sw	a4,4(s0)
   11ce0:	4615                	li	a2,5
   11ce2:	00f40733          	add	a4,s0,a5
   11ce6:	c350                	sw	a2,4(a4)
   11ce8:	c710                	sw	a2,8(a4)
   11cea:	00f6e563          	bltu	a3,a5,11cf4 <_malloc_r+0x48a>
   11cee:	004ba783          	lw	a5,4(s7)
   11cf2:	bb79                	j	11a90 <_malloc_r+0x226>
   11cf4:	00840593          	addi	a1,s0,8
   11cf8:	854e                	mv	a0,s3
   11cfa:	94fff0ef          	jal	11648 <_free_r>
   11cfe:	00892b83          	lw	s7,8(s2)
   11d02:	000c2583          	lw	a1,0(s8)
   11d06:	004ba783          	lw	a5,4(s7)
   11d0a:	b359                	j	11a90 <_malloc_r+0x226>
   11d0c:	0ac1                	addi	s5,s5,16
   11d0e:	b381                	j	11a4e <_malloc_r+0x1e4>
   11d10:	8689                	srai	a3,a3,0x2
   11d12:	4785                	li	a5,1
   11d14:	00d797b3          	sll	a5,a5,a3
   11d18:	8d5d                	or	a0,a0,a5
   11d1a:	00a92223          	sw	a0,4(s2)
   11d1e:	bd29                	j	11b38 <_malloc_r+0x2ce>
   11d20:	015b85b3          	add	a1,s7,s5
   11d24:	40b005b3          	neg	a1,a1
   11d28:	05d2                	slli	a1,a1,0x14
   11d2a:	0145da13          	srli	s4,a1,0x14
   11d2e:	85d2                	mv	a1,s4
   11d30:	854e                	mv	a0,s3
   11d32:	02b020ef          	jal	1455c <_sbrk_r>
   11d36:	57fd                	li	a5,-1
   11d38:	f6f518e3          	bne	a0,a5,11ca8 <_malloc_r+0x43e>
   11d3c:	4a01                	li	s4,0
   11d3e:	bf8d                	j	11cb0 <_malloc_r+0x446>
   11d40:	4c22                	lw	s8,8(sp)
   11d42:	4785                	li	a5,1
   11d44:	00fba223          	sw	a5,4(s7)
   11d48:	854e                	mv	a0,s3
   11d4a:	20d9                	jal	11e10 <__malloc_unlock>
   11d4c:	4501                	li	a0,0
   11d4e:	4a62                	lw	s4,24(sp)
   11d50:	4ad2                	lw	s5,20(sp)
   11d52:	4b42                	lw	s6,16(sp)
   11d54:	4bb2                	lw	s7,12(sp)
   11d56:	4c92                	lw	s9,4(sp)
   11d58:	b6a5                	j	118c0 <_malloc_r+0x56>
   11d5a:	05400693          	li	a3,84
   11d5e:	02e6ee63          	bltu	a3,a4,11d9a <_malloc_r+0x530>
   11d62:	00c7d713          	srli	a4,a5,0xc
   11d66:	06f70613          	addi	a2,a4,111
   11d6a:	06e70693          	addi	a3,a4,110
   11d6e:	060e                	slli	a2,a2,0x3
   11d70:	b375                	j	11b1c <_malloc_r+0x2b2>
   11d72:	15400713          	li	a4,340
   11d76:	02f76e63          	bltu	a4,a5,11db2 <_malloc_r+0x548>
   11d7a:	00f4d793          	srli	a5,s1,0xf
   11d7e:	07878593          	addi	a1,a5,120
   11d82:	07778813          	addi	a6,a5,119
   11d86:	00359613          	slli	a2,a1,0x3
   11d8a:	bea5                	j	11902 <_malloc_r+0x98>
   11d8c:	00892403          	lw	s0,8(s2)
   11d90:	405c                	lw	a5,4(s0)
   11d92:	bb29                	j	11aac <_malloc_r+0x242>
   11d94:	f171ac23          	sw	s7,-232(gp) # 1b728 <__malloc_sbrk_base>
   11d98:	b5c5                	j	11c78 <_malloc_r+0x40e>
   11d9a:	15400693          	li	a3,340
   11d9e:	02e6ed63          	bltu	a3,a4,11dd8 <_malloc_r+0x56e>
   11da2:	00f7d713          	srli	a4,a5,0xf
   11da6:	07870613          	addi	a2,a4,120
   11daa:	07770693          	addi	a3,a4,119
   11dae:	060e                	slli	a2,a2,0x3
   11db0:	b3b5                	j	11b1c <_malloc_r+0x2b2>
   11db2:	55400713          	li	a4,1364
   11db6:	02f76d63          	bltu	a4,a5,11df0 <_malloc_r+0x586>
   11dba:	0124d793          	srli	a5,s1,0x12
   11dbe:	07d78593          	addi	a1,a5,125
   11dc2:	07c78813          	addi	a6,a5,124
   11dc6:	00359613          	slli	a2,a1,0x3
   11dca:	be25                	j	11902 <_malloc_r+0x98>
   11dcc:	1ce1                	addi	s9,s9,-8
   11dce:	9ae6                	add	s5,s5,s9
   11dd0:	417a8ab3          	sub	s5,s5,s7
   11dd4:	4a01                	li	s4,0
   11dd6:	bde9                	j	11cb0 <_malloc_r+0x446>
   11dd8:	55400693          	li	a3,1364
   11ddc:	02e6e163          	bltu	a3,a4,11dfe <_malloc_r+0x594>
   11de0:	0127d713          	srli	a4,a5,0x12
   11de4:	07d70613          	addi	a2,a4,125
   11de8:	07c70693          	addi	a3,a4,124
   11dec:	060e                	slli	a2,a2,0x3
   11dee:	b33d                	j	11b1c <_malloc_r+0x2b2>
   11df0:	3f800613          	li	a2,1016
   11df4:	07f00593          	li	a1,127
   11df8:	07e00813          	li	a6,126
   11dfc:	b619                	j	11902 <_malloc_r+0x98>
   11dfe:	3f800613          	li	a2,1016
   11e02:	07e00693          	li	a3,126
   11e06:	bb19                	j	11b1c <_malloc_r+0x2b2>
   11e08:	00492783          	lw	a5,4(s2)
   11e0c:	b535                	j	11c38 <_malloc_r+0x3ce>

00011e0e <__malloc_lock>:
   11e0e:	8082                	ret

00011e10 <__malloc_unlock>:
   11e10:	8082                	ret

00011e12 <_realloc_r>:
   11e12:	7179                	addi	sp,sp,-48
   11e14:	d226                	sw	s1,36(sp)
   11e16:	d606                	sw	ra,44(sp)
   11e18:	84b2                	mv	s1,a2
   11e1a:	14058a63          	beqz	a1,11f6e <_realloc_r+0x15c>
   11e1e:	d422                	sw	s0,40(sp)
   11e20:	d04a                	sw	s2,32(sp)
   11e22:	842e                	mv	s0,a1
   11e24:	ce4e                	sw	s3,28(sp)
   11e26:	ca56                	sw	s5,20(sp)
   11e28:	cc52                	sw	s4,24(sp)
   11e2a:	892a                	mv	s2,a0
   11e2c:	37cd                	jal	11e0e <__malloc_lock>
   11e2e:	ffc42703          	lw	a4,-4(s0)
   11e32:	00b48793          	addi	a5,s1,11
   11e36:	46d9                	li	a3,22
   11e38:	ff840a93          	addi	s5,s0,-8
   11e3c:	ffc77993          	andi	s3,a4,-4
   11e40:	0af6fe63          	bgeu	a3,a5,11efc <_realloc_r+0xea>
   11e44:	ff87fa13          	andi	s4,a5,-8
   11e48:	0a07cd63          	bltz	a5,11f02 <_realloc_r+0xf0>
   11e4c:	0a9a6b63          	bltu	s4,s1,11f02 <_realloc_r+0xf0>
   11e50:	0d49d463          	bge	s3,s4,11f18 <_realloc_r+0x106>
   11e54:	67ed                	lui	a5,0x1b
   11e56:	c462                	sw	s8,8(sp)
   11e58:	14078c13          	addi	s8,a5,320 # 1b140 <__malloc_av_>
   11e5c:	008c2603          	lw	a2,8(s8)
   11e60:	013a86b3          	add	a3,s5,s3
   11e64:	42dc                	lw	a5,4(a3)
   11e66:	12d60c63          	beq	a2,a3,11f9e <_realloc_r+0x18c>
   11e6a:	ffe7f613          	andi	a2,a5,-2
   11e6e:	9636                	add	a2,a2,a3
   11e70:	4250                	lw	a2,4(a2)
   11e72:	8a05                	andi	a2,a2,1
   11e74:	e26d                	bnez	a2,11f56 <_realloc_r+0x144>
   11e76:	9bf1                	andi	a5,a5,-4
   11e78:	00f98633          	add	a2,s3,a5
   11e7c:	09465863          	bge	a2,s4,11f0c <_realloc_r+0xfa>
   11e80:	8b05                	andi	a4,a4,1
   11e82:	e70d                	bnez	a4,11eac <_realloc_r+0x9a>
   11e84:	c65e                	sw	s7,12(sp)
   11e86:	ff842b83          	lw	s7,-8(s0)
   11e8a:	c85a                	sw	s6,16(sp)
   11e8c:	417a8bb3          	sub	s7,s5,s7
   11e90:	004ba703          	lw	a4,4(s7)
   11e94:	9b71                	andi	a4,a4,-4
   11e96:	97ba                	add	a5,a5,a4
   11e98:	01378b33          	add	s6,a5,s3
   11e9c:	234b5c63          	bge	s6,s4,120d4 <_realloc_r+0x2c2>
   11ea0:	00e98b33          	add	s6,s3,a4
   11ea4:	1d4b5163          	bge	s6,s4,12066 <_realloc_r+0x254>
   11ea8:	4b42                	lw	s6,16(sp)
   11eaa:	4bb2                	lw	s7,12(sp)
   11eac:	85a6                	mv	a1,s1
   11eae:	854a                	mv	a0,s2
   11eb0:	9bbff0ef          	jal	1186a <_malloc_r>
   11eb4:	84aa                	mv	s1,a0
   11eb6:	2c050c63          	beqz	a0,1218e <_realloc_r+0x37c>
   11eba:	ffc42783          	lw	a5,-4(s0)
   11ebe:	ff850713          	addi	a4,a0,-8
   11ec2:	9bf9                	andi	a5,a5,-2
   11ec4:	97d6                	add	a5,a5,s5
   11ec6:	18e78a63          	beq	a5,a4,1205a <_realloc_r+0x248>
   11eca:	ffc98613          	addi	a2,s3,-4
   11ece:	02400793          	li	a5,36
   11ed2:	1ec7ed63          	bltu	a5,a2,120cc <_realloc_r+0x2ba>
   11ed6:	474d                	li	a4,19
   11ed8:	16c76563          	bltu	a4,a2,12042 <_realloc_r+0x230>
   11edc:	87aa                	mv	a5,a0
   11ede:	8722                	mv	a4,s0
   11ee0:	4314                	lw	a3,0(a4)
   11ee2:	c394                	sw	a3,0(a5)
   11ee4:	4354                	lw	a3,4(a4)
   11ee6:	c3d4                	sw	a3,4(a5)
   11ee8:	4718                	lw	a4,8(a4)
   11eea:	c798                	sw	a4,8(a5)
   11eec:	85a2                	mv	a1,s0
   11eee:	854a                	mv	a0,s2
   11ef0:	f58ff0ef          	jal	11648 <_free_r>
   11ef4:	854a                	mv	a0,s2
   11ef6:	3f29                	jal	11e10 <__malloc_unlock>
   11ef8:	4c22                	lw	s8,8(sp)
   11efa:	a0a1                	j	11f42 <_realloc_r+0x130>
   11efc:	4a41                	li	s4,16
   11efe:	f49a79e3          	bgeu	s4,s1,11e50 <_realloc_r+0x3e>
   11f02:	47b1                	li	a5,12
   11f04:	00f92023          	sw	a5,0(s2)
   11f08:	4481                	li	s1,0
   11f0a:	a825                	j	11f42 <_realloc_r+0x130>
   11f0c:	46dc                	lw	a5,12(a3)
   11f0e:	4698                	lw	a4,8(a3)
   11f10:	4c22                	lw	s8,8(sp)
   11f12:	89b2                	mv	s3,a2
   11f14:	c75c                	sw	a5,12(a4)
   11f16:	c798                	sw	a4,8(a5)
   11f18:	004aa783          	lw	a5,4(s5)
   11f1c:	414986b3          	sub	a3,s3,s4
   11f20:	463d                	li	a2,15
   11f22:	8b85                	andi	a5,a5,1
   11f24:	013a8733          	add	a4,s5,s3
   11f28:	04d66963          	bltu	a2,a3,11f7a <_realloc_r+0x168>
   11f2c:	0137e7b3          	or	a5,a5,s3
   11f30:	00faa223          	sw	a5,4(s5)
   11f34:	435c                	lw	a5,4(a4)
   11f36:	0017e793          	ori	a5,a5,1
   11f3a:	c35c                	sw	a5,4(a4)
   11f3c:	854a                	mv	a0,s2
   11f3e:	3dc9                	jal	11e10 <__malloc_unlock>
   11f40:	84a2                	mv	s1,s0
   11f42:	5422                	lw	s0,40(sp)
   11f44:	50b2                	lw	ra,44(sp)
   11f46:	5902                	lw	s2,32(sp)
   11f48:	49f2                	lw	s3,28(sp)
   11f4a:	4a62                	lw	s4,24(sp)
   11f4c:	4ad2                	lw	s5,20(sp)
   11f4e:	8526                	mv	a0,s1
   11f50:	5492                	lw	s1,36(sp)
   11f52:	6145                	addi	sp,sp,48
   11f54:	8082                	ret
   11f56:	8b05                	andi	a4,a4,1
   11f58:	fb31                	bnez	a4,11eac <_realloc_r+0x9a>
   11f5a:	c65e                	sw	s7,12(sp)
   11f5c:	ff842b83          	lw	s7,-8(s0)
   11f60:	c85a                	sw	s6,16(sp)
   11f62:	417a8bb3          	sub	s7,s5,s7
   11f66:	004ba703          	lw	a4,4(s7)
   11f6a:	9b71                	andi	a4,a4,-4
   11f6c:	bf15                	j	11ea0 <_realloc_r+0x8e>
   11f6e:	50b2                	lw	ra,44(sp)
   11f70:	5492                	lw	s1,36(sp)
   11f72:	85b2                	mv	a1,a2
   11f74:	6145                	addi	sp,sp,48
   11f76:	8f5ff06f          	j	1186a <_malloc_r>
   11f7a:	0147e7b3          	or	a5,a5,s4
   11f7e:	00faa223          	sw	a5,4(s5)
   11f82:	014a85b3          	add	a1,s5,s4
   11f86:	0016e693          	ori	a3,a3,1
   11f8a:	c1d4                	sw	a3,4(a1)
   11f8c:	435c                	lw	a5,4(a4)
   11f8e:	05a1                	addi	a1,a1,8
   11f90:	854a                	mv	a0,s2
   11f92:	0017e793          	ori	a5,a5,1
   11f96:	c35c                	sw	a5,4(a4)
   11f98:	eb0ff0ef          	jal	11648 <_free_r>
   11f9c:	b745                	j	11f3c <_realloc_r+0x12a>
   11f9e:	9bf1                	andi	a5,a5,-4
   11fa0:	013786b3          	add	a3,a5,s3
   11fa4:	010a0613          	addi	a2,s4,16
   11fa8:	1ac6da63          	bge	a3,a2,1215c <_realloc_r+0x34a>
   11fac:	8b05                	andi	a4,a4,1
   11fae:	ee071fe3          	bnez	a4,11eac <_realloc_r+0x9a>
   11fb2:	c65e                	sw	s7,12(sp)
   11fb4:	ff842b83          	lw	s7,-8(s0)
   11fb8:	c85a                	sw	s6,16(sp)
   11fba:	417a8bb3          	sub	s7,s5,s7
   11fbe:	004ba703          	lw	a4,4(s7)
   11fc2:	9b71                	andi	a4,a4,-4
   11fc4:	97ba                	add	a5,a5,a4
   11fc6:	01378b33          	add	s6,a5,s3
   11fca:	eccb4be3          	blt	s6,a2,11ea0 <_realloc_r+0x8e>
   11fce:	00cba783          	lw	a5,12(s7)
   11fd2:	008ba703          	lw	a4,8(s7)
   11fd6:	ffc98613          	addi	a2,s3,-4
   11fda:	02400693          	li	a3,36
   11fde:	c75c                	sw	a5,12(a4)
   11fe0:	c798                	sw	a4,8(a5)
   11fe2:	008b8493          	addi	s1,s7,8
   11fe6:	1cc6e263          	bltu	a3,a2,121aa <_realloc_r+0x398>
   11fea:	474d                	li	a4,19
   11fec:	87a6                	mv	a5,s1
   11fee:	00c77e63          	bgeu	a4,a2,1200a <_realloc_r+0x1f8>
   11ff2:	4018                	lw	a4,0(s0)
   11ff4:	47ed                	li	a5,27
   11ff6:	00eba423          	sw	a4,8(s7)
   11ffa:	4058                	lw	a4,4(s0)
   11ffc:	00eba623          	sw	a4,12(s7)
   12000:	1ac7ea63          	bltu	a5,a2,121b4 <_realloc_r+0x3a2>
   12004:	0421                	addi	s0,s0,8
   12006:	010b8793          	addi	a5,s7,16
   1200a:	4018                	lw	a4,0(s0)
   1200c:	c398                	sw	a4,0(a5)
   1200e:	4058                	lw	a4,4(s0)
   12010:	c3d8                	sw	a4,4(a5)
   12012:	4418                	lw	a4,8(s0)
   12014:	c798                	sw	a4,8(a5)
   12016:	014b8733          	add	a4,s7,s4
   1201a:	414b0b33          	sub	s6,s6,s4
   1201e:	00ec2423          	sw	a4,8(s8)
   12022:	001b6793          	ori	a5,s6,1
   12026:	c35c                	sw	a5,4(a4)
   12028:	004ba783          	lw	a5,4(s7)
   1202c:	854a                	mv	a0,s2
   1202e:	8b85                	andi	a5,a5,1
   12030:	0147e7b3          	or	a5,a5,s4
   12034:	00fba223          	sw	a5,4(s7)
   12038:	3be1                	jal	11e10 <__malloc_unlock>
   1203a:	4b42                	lw	s6,16(sp)
   1203c:	4bb2                	lw	s7,12(sp)
   1203e:	4c22                	lw	s8,8(sp)
   12040:	b709                	j	11f42 <_realloc_r+0x130>
   12042:	4014                	lw	a3,0(s0)
   12044:	476d                	li	a4,27
   12046:	c114                	sw	a3,0(a0)
   12048:	4054                	lw	a3,4(s0)
   1204a:	c154                	sw	a3,4(a0)
   1204c:	0ec76d63          	bltu	a4,a2,12146 <_realloc_r+0x334>
   12050:	00840713          	addi	a4,s0,8
   12054:	00850793          	addi	a5,a0,8
   12058:	b561                	j	11ee0 <_realloc_r+0xce>
   1205a:	ffc52783          	lw	a5,-4(a0)
   1205e:	4c22                	lw	s8,8(sp)
   12060:	9bf1                	andi	a5,a5,-4
   12062:	99be                	add	s3,s3,a5
   12064:	bd55                	j	11f18 <_realloc_r+0x106>
   12066:	00cba783          	lw	a5,12(s7)
   1206a:	008ba703          	lw	a4,8(s7)
   1206e:	ffc98613          	addi	a2,s3,-4
   12072:	02400693          	li	a3,36
   12076:	c75c                	sw	a5,12(a4)
   12078:	c798                	sw	a4,8(a5)
   1207a:	008b8493          	addi	s1,s7,8
   1207e:	0ac6ef63          	bltu	a3,a2,1213c <_realloc_r+0x32a>
   12082:	474d                	li	a4,19
   12084:	87a6                	mv	a5,s1
   12086:	02c77663          	bgeu	a4,a2,120b2 <_realloc_r+0x2a0>
   1208a:	4018                	lw	a4,0(s0)
   1208c:	47ed                	li	a5,27
   1208e:	00eba423          	sw	a4,8(s7)
   12092:	4058                	lw	a4,4(s0)
   12094:	00eba623          	sw	a4,12(s7)
   12098:	0ec7f763          	bgeu	a5,a2,12186 <_realloc_r+0x374>
   1209c:	441c                	lw	a5,8(s0)
   1209e:	00fba823          	sw	a5,16(s7)
   120a2:	445c                	lw	a5,12(s0)
   120a4:	00fbaa23          	sw	a5,20(s7)
   120a8:	06d60f63          	beq	a2,a3,12126 <_realloc_r+0x314>
   120ac:	0441                	addi	s0,s0,16
   120ae:	018b8793          	addi	a5,s7,24
   120b2:	4018                	lw	a4,0(s0)
   120b4:	c398                	sw	a4,0(a5)
   120b6:	4058                	lw	a4,4(s0)
   120b8:	c3d8                	sw	a4,4(a5)
   120ba:	4418                	lw	a4,8(s0)
   120bc:	c798                	sw	a4,8(a5)
   120be:	89da                	mv	s3,s6
   120c0:	8ade                	mv	s5,s7
   120c2:	4b42                	lw	s6,16(sp)
   120c4:	4bb2                	lw	s7,12(sp)
   120c6:	4c22                	lw	s8,8(sp)
   120c8:	8426                	mv	s0,s1
   120ca:	b5b9                	j	11f18 <_realloc_r+0x106>
   120cc:	85a2                	mv	a1,s0
   120ce:	8b6ff0ef          	jal	11184 <memmove>
   120d2:	bd29                	j	11eec <_realloc_r+0xda>
   120d4:	46dc                	lw	a5,12(a3)
   120d6:	4698                	lw	a4,8(a3)
   120d8:	ffc98613          	addi	a2,s3,-4
   120dc:	02400693          	li	a3,36
   120e0:	c75c                	sw	a5,12(a4)
   120e2:	c798                	sw	a4,8(a5)
   120e4:	008ba703          	lw	a4,8(s7)
   120e8:	00cba783          	lw	a5,12(s7)
   120ec:	008b8493          	addi	s1,s7,8
   120f0:	c75c                	sw	a5,12(a4)
   120f2:	c798                	sw	a4,8(a5)
   120f4:	04c6e463          	bltu	a3,a2,1213c <_realloc_r+0x32a>
   120f8:	474d                	li	a4,19
   120fa:	87a6                	mv	a5,s1
   120fc:	fac77be3          	bgeu	a4,a2,120b2 <_realloc_r+0x2a0>
   12100:	4018                	lw	a4,0(s0)
   12102:	47ed                	li	a5,27
   12104:	00eba423          	sw	a4,8(s7)
   12108:	4058                	lw	a4,4(s0)
   1210a:	00eba623          	sw	a4,12(s7)
   1210e:	06c7fc63          	bgeu	a5,a2,12186 <_realloc_r+0x374>
   12112:	4418                	lw	a4,8(s0)
   12114:	02400793          	li	a5,36
   12118:	00eba823          	sw	a4,16(s7)
   1211c:	4458                	lw	a4,12(s0)
   1211e:	00ebaa23          	sw	a4,20(s7)
   12122:	f8f615e3          	bne	a2,a5,120ac <_realloc_r+0x29a>
   12126:	4818                	lw	a4,16(s0)
   12128:	020b8793          	addi	a5,s7,32
   1212c:	0461                	addi	s0,s0,24
   1212e:	00ebac23          	sw	a4,24(s7)
   12132:	ffc42703          	lw	a4,-4(s0)
   12136:	00ebae23          	sw	a4,28(s7)
   1213a:	bfa5                	j	120b2 <_realloc_r+0x2a0>
   1213c:	85a2                	mv	a1,s0
   1213e:	8526                	mv	a0,s1
   12140:	844ff0ef          	jal	11184 <memmove>
   12144:	bfad                	j	120be <_realloc_r+0x2ac>
   12146:	4418                	lw	a4,8(s0)
   12148:	c518                	sw	a4,8(a0)
   1214a:	4458                	lw	a4,12(s0)
   1214c:	c558                	sw	a4,12(a0)
   1214e:	04f60563          	beq	a2,a5,12198 <_realloc_r+0x386>
   12152:	01040713          	addi	a4,s0,16
   12156:	01050793          	addi	a5,a0,16
   1215a:	b359                	j	11ee0 <_realloc_r+0xce>
   1215c:	9ad2                	add	s5,s5,s4
   1215e:	414686b3          	sub	a3,a3,s4
   12162:	015c2423          	sw	s5,8(s8)
   12166:	0016e793          	ori	a5,a3,1
   1216a:	00faa223          	sw	a5,4(s5)
   1216e:	ffc42783          	lw	a5,-4(s0)
   12172:	854a                	mv	a0,s2
   12174:	84a2                	mv	s1,s0
   12176:	8b85                	andi	a5,a5,1
   12178:	0147e7b3          	or	a5,a5,s4
   1217c:	fef42e23          	sw	a5,-4(s0)
   12180:	3941                	jal	11e10 <__malloc_unlock>
   12182:	4c22                	lw	s8,8(sp)
   12184:	bb7d                	j	11f42 <_realloc_r+0x130>
   12186:	0421                	addi	s0,s0,8
   12188:	010b8793          	addi	a5,s7,16
   1218c:	b71d                	j	120b2 <_realloc_r+0x2a0>
   1218e:	854a                	mv	a0,s2
   12190:	3141                	jal	11e10 <__malloc_unlock>
   12192:	4481                	li	s1,0
   12194:	4c22                	lw	s8,8(sp)
   12196:	b375                	j	11f42 <_realloc_r+0x130>
   12198:	4814                	lw	a3,16(s0)
   1219a:	01840713          	addi	a4,s0,24
   1219e:	01850793          	addi	a5,a0,24
   121a2:	c914                	sw	a3,16(a0)
   121a4:	4854                	lw	a3,20(s0)
   121a6:	c954                	sw	a3,20(a0)
   121a8:	bb25                	j	11ee0 <_realloc_r+0xce>
   121aa:	85a2                	mv	a1,s0
   121ac:	8526                	mv	a0,s1
   121ae:	fd7fe0ef          	jal	11184 <memmove>
   121b2:	b595                	j	12016 <_realloc_r+0x204>
   121b4:	441c                	lw	a5,8(s0)
   121b6:	00fba823          	sw	a5,16(s7)
   121ba:	445c                	lw	a5,12(s0)
   121bc:	00fbaa23          	sw	a5,20(s7)
   121c0:	00d60663          	beq	a2,a3,121cc <_realloc_r+0x3ba>
   121c4:	0441                	addi	s0,s0,16
   121c6:	018b8793          	addi	a5,s7,24
   121ca:	b581                	j	1200a <_realloc_r+0x1f8>
   121cc:	4818                	lw	a4,16(s0)
   121ce:	020b8793          	addi	a5,s7,32
   121d2:	00ebac23          	sw	a4,24(s7)
   121d6:	4858                	lw	a4,20(s0)
   121d8:	0461                	addi	s0,s0,24
   121da:	00ebae23          	sw	a4,28(s7)
   121de:	b535                	j	1200a <_realloc_r+0x1f8>

000121e0 <_vfprintf_r>:
   121e0:	7145                	addi	sp,sp,-464
   121e2:	1c112623          	sw	ra,460(sp)
   121e6:	1c812423          	sw	s0,456(sp)
   121ea:	1c912223          	sw	s1,452(sp)
   121ee:	1b612823          	sw	s6,432(sp)
   121f2:	84ae                	mv	s1,a1
   121f4:	8b32                	mv	s6,a2
   121f6:	ca36                	sw	a3,20(sp)
   121f8:	842a                	mv	s0,a0
   121fa:	c42a                	sw	a0,8(sp)
   121fc:	2e4020ef          	jal	144e0 <_localeconv_r>
   12200:	411c                	lw	a5,0(a0)
   12202:	853e                	mv	a0,a5
   12204:	d83e                	sw	a5,48(sp)
   12206:	a38ff0ef          	jal	1143e <strlen>
   1220a:	d62a                	sw	a0,44(sp)
   1220c:	c982                	sw	zero,208(sp)
   1220e:	cb82                	sw	zero,212(sp)
   12210:	cd82                	sw	zero,216(sp)
   12212:	cf82                	sw	zero,220(sp)
   12214:	c409                	beqz	s0,1221e <_vfprintf_r+0x3e>
   12216:	5858                	lw	a4,52(s0)
   12218:	e319                	bnez	a4,1221e <_vfprintf_r+0x3e>
   1221a:	1960106f          	j	133b0 <_vfprintf_r+0x11d0>
   1221e:	00c49683          	lh	a3,12(s1)
   12222:	50f8                	lw	a4,100(s1)
   12224:	01269613          	slli	a2,a3,0x12
   12228:	00064a63          	bltz	a2,1223c <_vfprintf_r+0x5c>
   1222c:	7679                	lui	a2,0xffffe
   1222e:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   12230:	6589                	lui	a1,0x2
   12232:	8ecd                	or	a3,a3,a1
   12234:	8f71                	and	a4,a4,a2
   12236:	00d49623          	sh	a3,12(s1)
   1223a:	d0f8                	sw	a4,100(s1)
   1223c:	01271693          	slli	a3,a4,0x12
   12240:	0006d463          	bgez	a3,12248 <_vfprintf_r+0x68>
   12244:	07b0106f          	j	13abe <_vfprintf_r+0x18de>
   12248:	00c49703          	lh	a4,12(s1)
   1224c:	00877693          	andi	a3,a4,8
   12250:	22068a63          	beqz	a3,12484 <_vfprintf_r+0x2a4>
   12254:	4894                	lw	a3,16(s1)
   12256:	22068763          	beqz	a3,12484 <_vfprintf_r+0x2a4>
   1225a:	8b69                	andi	a4,a4,26
   1225c:	46a9                	li	a3,10
   1225e:	24d70063          	beq	a4,a3,1249e <_vfprintf_r+0x2be>
   12262:	1b312e23          	sw	s3,444(sp)
   12266:	1b412c23          	sw	s4,440(sp)
   1226a:	1ba12023          	sw	s10,416(sp)
   1226e:	6769                	lui	a4,0x1a
   12270:	1d212023          	sw	s2,448(sp)
   12274:	1b512a23          	sw	s5,436(sp)
   12278:	1b712623          	sw	s7,428(sp)
   1227c:	1b812423          	sw	s8,424(sp)
   12280:	1b912223          	sw	s9,420(sp)
   12284:	19b12e23          	sw	s11,412(sp)
   12288:	8d5a                	mv	s10,s6
   1228a:	46c70793          	addi	a5,a4,1132 # 1a46c <__clzsi2+0x1ec>
   1228e:	000d4703          	lbu	a4,0(s10)
   12292:	0ec10993          	addi	s3,sp,236
   12296:	6a69                	lui	s4,0x1a
   12298:	c3ce                	sw	s3,196(sp)
   1229a:	c782                	sw	zero,204(sp)
   1229c:	c582                	sw	zero,200(sp)
   1229e:	d002                	sw	zero,32(sp)
   122a0:	da02                	sw	zero,52(sp)
   122a2:	c082                	sw	zero,64(sp)
   122a4:	de02                	sw	zero,60(sp)
   122a6:	c482                	sw	zero,72(sp)
   122a8:	c282                	sw	zero,68(sp)
   122aa:	c602                	sw	zero,12(sp)
   122ac:	cc3e                	sw	a5,24(sp)
   122ae:	844e                	mv	s0,s3
   122b0:	670a0a13          	addi	s4,s4,1648 # 1a670 <zeroes.0>
   122b4:	18070063          	beqz	a4,12434 <_vfprintf_r+0x254>
   122b8:	896a                	mv	s2,s10
   122ba:	02500693          	li	a3,37
   122be:	2ed70a63          	beq	a4,a3,125b2 <_vfprintf_r+0x3d2>
   122c2:	00194703          	lbu	a4,1(s2)
   122c6:	0905                	addi	s2,s2,1
   122c8:	fb7d                	bnez	a4,122be <_vfprintf_r+0xde>
   122ca:	41a90ab3          	sub	s5,s2,s10
   122ce:	17a90363          	beq	s2,s10,12434 <_vfprintf_r+0x254>
   122d2:	46be                	lw	a3,204(sp)
   122d4:	472e                	lw	a4,200(sp)
   122d6:	01a42023          	sw	s10,0(s0)
   122da:	96d6                	add	a3,a3,s5
   122dc:	0705                	addi	a4,a4,1
   122de:	01542223          	sw	s5,4(s0)
   122e2:	c7b6                	sw	a3,204(sp)
   122e4:	c5ba                	sw	a4,200(sp)
   122e6:	469d                	li	a3,7
   122e8:	0421                	addi	s0,s0,8
   122ea:	2ce6cb63          	blt	a3,a4,125c0 <_vfprintf_r+0x3e0>
   122ee:	47b2                	lw	a5,12(sp)
   122f0:	00094703          	lbu	a4,0(s2)
   122f4:	97d6                	add	a5,a5,s5
   122f6:	c63e                	sw	a5,12(sp)
   122f8:	12070e63          	beqz	a4,12434 <_vfprintf_r+0x254>
   122fc:	00194883          	lbu	a7,1(s2)
   12300:	0a0103a3          	sb	zero,167(sp)
   12304:	0905                	addi	s2,s2,1
   12306:	5afd                	li	s5,-1
   12308:	4b81                	li	s7,0
   1230a:	4c81                	li	s9,0
   1230c:	05a00b13          	li	s6,90
   12310:	0905                	addi	s2,s2,1
   12312:	fe088793          	addi	a5,a7,-32
   12316:	02fb6b63          	bltu	s6,a5,1234c <_vfprintf_r+0x16c>
   1231a:	4762                	lw	a4,24(sp)
   1231c:	078a                	slli	a5,a5,0x2
   1231e:	97ba                	add	a5,a5,a4
   12320:	439c                	lw	a5,0(a5)
   12322:	8782                	jr	a5
   12324:	4b81                	li	s7,0
   12326:	fd088793          	addi	a5,a7,-48
   1232a:	46a5                	li	a3,9
   1232c:	00094883          	lbu	a7,0(s2)
   12330:	002b9713          	slli	a4,s7,0x2
   12334:	9bba                	add	s7,s7,a4
   12336:	0b86                	slli	s7,s7,0x1
   12338:	9bbe                	add	s7,s7,a5
   1233a:	fd088793          	addi	a5,a7,-48
   1233e:	0905                	addi	s2,s2,1
   12340:	fef6f6e3          	bgeu	a3,a5,1232c <_vfprintf_r+0x14c>
   12344:	fe088793          	addi	a5,a7,-32
   12348:	fcfb79e3          	bgeu	s6,a5,1231a <_vfprintf_r+0x13a>
   1234c:	0e088463          	beqz	a7,12434 <_vfprintf_r+0x254>
   12350:	13110623          	sb	a7,300(sp)
   12354:	0a0103a3          	sb	zero,167(sp)
   12358:	4d85                	li	s11,1
   1235a:	4b05                	li	s6,1
   1235c:	12c10d13          	addi	s10,sp,300
   12360:	c802                	sw	zero,16(sp)
   12362:	4a81                	li	s5,0
   12364:	d402                	sw	zero,40(sp)
   12366:	d202                	sw	zero,36(sp)
   12368:	ce02                	sw	zero,28(sp)
   1236a:	002cf293          	andi	t0,s9,2
   1236e:	00028363          	beqz	t0,12374 <_vfprintf_r+0x194>
   12372:	0d89                	addi	s11,s11,2
   12374:	084cff93          	andi	t6,s9,132
   12378:	463e                	lw	a2,204(sp)
   1237a:	000f9663          	bnez	t6,12386 <_vfprintf_r+0x1a6>
   1237e:	41bb8733          	sub	a4,s7,s11
   12382:	0ce047e3          	bgtz	a4,12c50 <_vfprintf_r+0xa70>
   12386:	0a714703          	lbu	a4,167(sp)
   1238a:	cf19                	beqz	a4,123a8 <_vfprintf_r+0x1c8>
   1238c:	472e                	lw	a4,200(sp)
   1238e:	0a710593          	addi	a1,sp,167
   12392:	c00c                	sw	a1,0(s0)
   12394:	0605                	addi	a2,a2,1
   12396:	4585                	li	a1,1
   12398:	0705                	addi	a4,a4,1
   1239a:	c04c                	sw	a1,4(s0)
   1239c:	c7b2                	sw	a2,204(sp)
   1239e:	c5ba                	sw	a4,200(sp)
   123a0:	459d                	li	a1,7
   123a2:	0421                	addi	s0,s0,8
   123a4:	2ee5c763          	blt	a1,a4,12692 <_vfprintf_r+0x4b2>
   123a8:	00028f63          	beqz	t0,123c6 <_vfprintf_r+0x1e6>
   123ac:	472e                	lw	a4,200(sp)
   123ae:	4589                	li	a1,2
   123b0:	0609                	addi	a2,a2,2
   123b2:	0705                	addi	a4,a4,1
   123b4:	113c                	addi	a5,sp,168
   123b6:	c04c                	sw	a1,4(s0)
   123b8:	c01c                	sw	a5,0(s0)
   123ba:	c7b2                	sw	a2,204(sp)
   123bc:	c5ba                	sw	a4,200(sp)
   123be:	459d                	li	a1,7
   123c0:	0421                	addi	s0,s0,8
   123c2:	12e5cae3          	blt	a1,a4,12cf6 <_vfprintf_r+0xb16>
   123c6:	08000713          	li	a4,128
   123ca:	72ef8e63          	beq	t6,a4,12b06 <_vfprintf_r+0x926>
   123ce:	416a8ab3          	sub	s5,s5,s6
   123d2:	7d504a63          	bgtz	s5,12ba6 <_vfprintf_r+0x9c6>
   123d6:	100cf713          	andi	a4,s9,256
   123da:	60071e63          	bnez	a4,129f6 <_vfprintf_r+0x816>
   123de:	47ae                	lw	a5,200(sp)
   123e0:	965a                	add	a2,a2,s6
   123e2:	01a42023          	sw	s10,0(s0)
   123e6:	0785                	addi	a5,a5,1
   123e8:	01642223          	sw	s6,4(s0)
   123ec:	c7b2                	sw	a2,204(sp)
   123ee:	c5be                	sw	a5,200(sp)
   123f0:	471d                	li	a4,7
   123f2:	36f74563          	blt	a4,a5,1275c <_vfprintf_r+0x57c>
   123f6:	0421                	addi	s0,s0,8
   123f8:	004cfe13          	andi	t3,s9,4
   123fc:	000e0663          	beqz	t3,12408 <_vfprintf_r+0x228>
   12400:	41bb8ab3          	sub	s5,s7,s11
   12404:	115047e3          	bgtz	s5,12d12 <_vfprintf_r+0xb32>
   12408:	835e                	mv	t1,s7
   1240a:	01bbd363          	bge	s7,s11,12410 <_vfprintf_r+0x230>
   1240e:	836e                	mv	t1,s11
   12410:	47b2                	lw	a5,12(sp)
   12412:	979a                	add	a5,a5,t1
   12414:	c63e                	sw	a5,12(sp)
   12416:	00061ce3          	bnez	a2,12c2e <_vfprintf_r+0xa4e>
   1241a:	47c2                	lw	a5,16(sp)
   1241c:	c582                	sw	zero,200(sp)
   1241e:	c789                	beqz	a5,12428 <_vfprintf_r+0x248>
   12420:	45c2                	lw	a1,16(sp)
   12422:	4522                	lw	a0,8(sp)
   12424:	a24ff0ef          	jal	11648 <_free_r>
   12428:	844e                	mv	s0,s3
   1242a:	8d4a                	mv	s10,s2
   1242c:	000d4703          	lbu	a4,0(s10)
   12430:	e80714e3          	bnez	a4,122b8 <_vfprintf_r+0xd8>
   12434:	47be                	lw	a5,204(sp)
   12436:	c399                	beqz	a5,1243c <_vfprintf_r+0x25c>
   12438:	31a0106f          	j	13752 <_vfprintf_r+0x1572>
   1243c:	00c4d783          	lhu	a5,12(s1)
   12440:	1c012903          	lw	s2,448(sp)
   12444:	1bc12983          	lw	s3,444(sp)
   12448:	0407f793          	andi	a5,a5,64
   1244c:	1b812a03          	lw	s4,440(sp)
   12450:	1b412a83          	lw	s5,436(sp)
   12454:	1ac12b83          	lw	s7,428(sp)
   12458:	1a812c03          	lw	s8,424(sp)
   1245c:	1a412c83          	lw	s9,420(sp)
   12460:	1a012d03          	lw	s10,416(sp)
   12464:	19c12d83          	lw	s11,412(sp)
   12468:	c399                	beqz	a5,1246e <_vfprintf_r+0x28e>
   1246a:	6540106f          	j	13abe <_vfprintf_r+0x18de>
   1246e:	1cc12083          	lw	ra,460(sp)
   12472:	1c812403          	lw	s0,456(sp)
   12476:	4532                	lw	a0,12(sp)
   12478:	1c412483          	lw	s1,452(sp)
   1247c:	1b012b03          	lw	s6,432(sp)
   12480:	6179                	addi	sp,sp,464
   12482:	8082                	ret
   12484:	4522                	lw	a0,8(sp)
   12486:	85a6                	mv	a1,s1
   12488:	9c7fe0ef          	jal	10e4e <__swsetup_r>
   1248c:	c119                	beqz	a0,12492 <_vfprintf_r+0x2b2>
   1248e:	6300106f          	j	13abe <_vfprintf_r+0x18de>
   12492:	00c49703          	lh	a4,12(s1)
   12496:	46a9                	li	a3,10
   12498:	8b69                	andi	a4,a4,26
   1249a:	dcd714e3          	bne	a4,a3,12262 <_vfprintf_r+0x82>
   1249e:	00e49703          	lh	a4,14(s1)
   124a2:	dc0740e3          	bltz	a4,12262 <_vfprintf_r+0x82>
   124a6:	46d2                	lw	a3,20(sp)
   124a8:	4522                	lw	a0,8(sp)
   124aa:	865a                	mv	a2,s6
   124ac:	85a6                	mv	a1,s1
   124ae:	0e9010ef          	jal	13d96 <__sbprintf>
   124b2:	c62a                	sw	a0,12(sp)
   124b4:	bf6d                	j	1246e <_vfprintf_r+0x28e>
   124b6:	4c22                	lw	s8,8(sp)
   124b8:	8562                	mv	a0,s8
   124ba:	026020ef          	jal	144e0 <_localeconv_r>
   124be:	415c                	lw	a5,4(a0)
   124c0:	853e                	mv	a0,a5
   124c2:	c2be                	sw	a5,68(sp)
   124c4:	f7bfe0ef          	jal	1143e <strlen>
   124c8:	87aa                	mv	a5,a0
   124ca:	8562                	mv	a0,s8
   124cc:	c4be                	sw	a5,72(sp)
   124ce:	8c3e                	mv	s8,a5
   124d0:	010020ef          	jal	144e0 <_localeconv_r>
   124d4:	451c                	lw	a5,8(a0)
   124d6:	de3e                	sw	a5,60(sp)
   124d8:	280c16e3          	bnez	s8,12f64 <_vfprintf_r+0xd84>
   124dc:	00094883          	lbu	a7,0(s2)
   124e0:	bd05                	j	12310 <_vfprintf_r+0x130>
   124e2:	00094883          	lbu	a7,0(s2)
   124e6:	020cec93          	ori	s9,s9,32
   124ea:	b51d                	j	12310 <_vfprintf_r+0x130>
   124ec:	010cec93          	ori	s9,s9,16
   124f0:	020cf793          	andi	a5,s9,32
   124f4:	26078e63          	beqz	a5,12770 <_vfprintf_r+0x590>
   124f8:	47d2                	lw	a5,20(sp)
   124fa:	00778c13          	addi	s8,a5,7
   124fe:	ff8c7c13          	andi	s8,s8,-8
   12502:	004c2783          	lw	a5,4(s8)
   12506:	000c2b03          	lw	s6,0(s8)
   1250a:	008c0713          	addi	a4,s8,8
   1250e:	ca3a                	sw	a4,20(sp)
   12510:	8dbe                	mv	s11,a5
   12512:	2807c463          	bltz	a5,1279a <_vfprintf_r+0x5ba>
   12516:	8ee6                	mv	t4,s9
   12518:	380ac563          	bltz	s5,128a2 <_vfprintf_r+0x6c2>
   1251c:	01bb67b3          	or	a5,s6,s11
   12520:	f7fcfe93          	andi	t4,s9,-129
   12524:	36079f63          	bnez	a5,128a2 <_vfprintf_r+0x6c2>
   12528:	380a9263          	bnez	s5,128ac <_vfprintf_r+0x6cc>
   1252c:	4b01                	li	s6,0
   1252e:	8cf6                	mv	s9,t4
   12530:	19010d13          	addi	s10,sp,400
   12534:	0a714703          	lbu	a4,167(sp)
   12538:	8dd6                	mv	s11,s5
   1253a:	016ad363          	bge	s5,s6,12540 <_vfprintf_r+0x360>
   1253e:	8dda                	mv	s11,s6
   12540:	c802                	sw	zero,16(sp)
   12542:	d402                	sw	zero,40(sp)
   12544:	d202                	sw	zero,36(sp)
   12546:	ce02                	sw	zero,28(sp)
   12548:	e20701e3          	beqz	a4,1236a <_vfprintf_r+0x18a>
   1254c:	0d85                	addi	s11,s11,1
   1254e:	bd31                	j	1236a <_vfprintf_r+0x18a>
   12550:	010cec93          	ori	s9,s9,16
   12554:	020cf793          	andi	a5,s9,32
   12558:	2a078d63          	beqz	a5,12812 <_vfprintf_r+0x632>
   1255c:	47d2                	lw	a5,20(sp)
   1255e:	00778c13          	addi	s8,a5,7
   12562:	ff8c7c13          	andi	s8,s8,-8
   12566:	000c2b03          	lw	s6,0(s8)
   1256a:	004c2d83          	lw	s11,4(s8)
   1256e:	008c0793          	addi	a5,s8,8
   12572:	ca3e                	sw	a5,20(sp)
   12574:	bffcfe93          	andi	t4,s9,-1025
   12578:	4781                	li	a5,0
   1257a:	4701                	li	a4,0
   1257c:	0ae103a3          	sb	a4,167(sp)
   12580:	220acd63          	bltz	s5,127ba <_vfprintf_r+0x5da>
   12584:	01bb6733          	or	a4,s6,s11
   12588:	f7fefc93          	andi	s9,t4,-129
   1258c:	6c071063          	bnez	a4,12c4c <_vfprintf_r+0xa6c>
   12590:	520a9763          	bnez	s5,12abe <_vfprintf_r+0x8de>
   12594:	180790e3          	bnez	a5,12f14 <_vfprintf_r+0xd34>
   12598:	001efb13          	andi	s6,t4,1
   1259c:	19010d13          	addi	s10,sp,400
   125a0:	f80b0ae3          	beqz	s6,12534 <_vfprintf_r+0x354>
   125a4:	03000793          	li	a5,48
   125a8:	18f107a3          	sb	a5,399(sp)
   125ac:	18f10d13          	addi	s10,sp,399
   125b0:	b751                	j	12534 <_vfprintf_r+0x354>
   125b2:	41a90ab3          	sub	s5,s2,s10
   125b6:	d1a91ee3          	bne	s2,s10,122d2 <_vfprintf_r+0xf2>
   125ba:	00094703          	lbu	a4,0(s2)
   125be:	bb2d                	j	122f8 <_vfprintf_r+0x118>
   125c0:	4522                	lw	a0,8(sp)
   125c2:	01d0                	addi	a2,sp,196
   125c4:	85a6                	mv	a1,s1
   125c6:	065010ef          	jal	13e2a <__sprint_r>
   125ca:	e60519e3          	bnez	a0,1243c <_vfprintf_r+0x25c>
   125ce:	844e                	mv	s0,s3
   125d0:	bb39                	j	122ee <_vfprintf_r+0x10e>
   125d2:	008cf713          	andi	a4,s9,8
   125d6:	1c0716e3          	bnez	a4,12fa2 <_vfprintf_r+0xdc2>
   125da:	47d2                	lw	a5,20(sp)
   125dc:	0908                	addi	a0,sp,144
   125de:	c846                	sw	a7,16(sp)
   125e0:	00778c13          	addi	s8,a5,7
   125e4:	ff8c7c13          	andi	s8,s8,-8
   125e8:	000c2583          	lw	a1,0(s8)
   125ec:	004c2603          	lw	a2,4(s8)
   125f0:	008c0793          	addi	a5,s8,8
   125f4:	ca3e                	sw	a5,20(sp)
   125f6:	2ff070ef          	jal	1a0f4 <__extenddftf2>
   125fa:	45ca                	lw	a1,144(sp)
   125fc:	465a                	lw	a2,148(sp)
   125fe:	46ea                	lw	a3,152(sp)
   12600:	477a                	lw	a4,156(sp)
   12602:	48c2                	lw	a7,16(sp)
   12604:	0988                	addi	a0,sp,208
   12606:	c846                	sw	a7,16(sp)
   12608:	cfba                	sw	a4,220(sp)
   1260a:	c9ae                	sw	a1,208(sp)
   1260c:	cbb2                	sw	a2,212(sp)
   1260e:	cdb6                	sw	a3,216(sp)
   12610:	2b2020ef          	jal	148c2 <_ldcheck>
   12614:	d72a                	sw	a0,172(sp)
   12616:	4709                	li	a4,2
   12618:	48c2                	lw	a7,16(sp)
   1261a:	5ce50be3          	beq	a0,a4,133f0 <_vfprintf_r+0x1210>
   1261e:	4705                	li	a4,1
   12620:	6ae505e3          	beq	a0,a4,134ca <_vfprintf_r+0x12ea>
   12624:	06100713          	li	a4,97
   12628:	2ae88ce3          	beq	a7,a4,130e0 <_vfprintf_r+0xf00>
   1262c:	04100713          	li	a4,65
   12630:	05800793          	li	a5,88
   12634:	2ae888e3          	beq	a7,a4,130e4 <_vfprintf_r+0xf04>
   12638:	577d                	li	a4,-1
   1263a:	00ea9463          	bne	s5,a4,12642 <_vfprintf_r+0x462>
   1263e:	6260106f          	j	13c64 <_vfprintf_r+0x1a84>
   12642:	fdf8f713          	andi	a4,a7,-33
   12646:	04700693          	li	a3,71
   1264a:	c802                	sw	zero,16(sp)
   1264c:	00d71563          	bne	a4,a3,12656 <_vfprintf_r+0x476>
   12650:	000a9363          	bnez	s5,12656 <_vfprintf_r+0x476>
   12654:	4a85                	li	s5,1
   12656:	4c7e                	lw	s8,220(sp)
   12658:	100ce793          	ori	a5,s9,256
   1265c:	c6be                	sw	a5,76(sp)
   1265e:	dc02                	sw	zero,56(sp)
   12660:	4fce                	lw	t6,208(sp)
   12662:	4f5e                	lw	t5,212(sp)
   12664:	4eee                	lw	t4,216(sp)
   12666:	000c5963          	bgez	s8,12678 <_vfprintf_r+0x498>
   1266a:	80000737          	lui	a4,0x80000
   1266e:	02d00793          	li	a5,45
   12672:	01874c33          	xor	s8,a4,s8
   12676:	dc3e                	sw	a5,56(sp)
   12678:	fbf88713          	addi	a4,a7,-65
   1267c:	02500693          	li	a3,37
   12680:	28e6eee3          	bltu	a3,a4,1311c <_vfprintf_r+0xf3c>
   12684:	66e9                	lui	a3,0x1a
   12686:	070a                	slli	a4,a4,0x2
   12688:	5d868693          	addi	a3,a3,1496 # 1a5d8 <__clzsi2+0x358>
   1268c:	9736                	add	a4,a4,a3
   1268e:	4318                	lw	a4,0(a4)
   12690:	8702                	jr	a4
   12692:	4522                	lw	a0,8(sp)
   12694:	01d0                	addi	a2,sp,196
   12696:	85a6                	mv	a1,s1
   12698:	c8c6                	sw	a7,80(sp)
   1269a:	c6fe                	sw	t6,76(sp)
   1269c:	dc16                	sw	t0,56(sp)
   1269e:	78c010ef          	jal	13e2a <__sprint_r>
   126a2:	58051d63          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   126a6:	463e                	lw	a2,204(sp)
   126a8:	48c6                	lw	a7,80(sp)
   126aa:	4fb6                	lw	t6,76(sp)
   126ac:	52e2                	lw	t0,56(sp)
   126ae:	844e                	mv	s0,s3
   126b0:	b9e5                	j	123a8 <_vfprintf_r+0x1c8>
   126b2:	4aae                	lw	s5,200(sp)
   126b4:	5782                	lw	a5,32(sp)
   126b6:	4705                	li	a4,1
   126b8:	01a42023          	sw	s10,0(s0)
   126bc:	00160c13          	addi	s8,a2,1
   126c0:	0a85                	addi	s5,s5,1
   126c2:	00840b13          	addi	s6,s0,8
   126c6:	7af75763          	bge	a4,a5,12e74 <_vfprintf_r+0xc94>
   126ca:	4705                	li	a4,1
   126cc:	c058                	sw	a4,4(s0)
   126ce:	c7e2                	sw	s8,204(sp)
   126d0:	c5d6                	sw	s5,200(sp)
   126d2:	471d                	li	a4,7
   126d4:	395741e3          	blt	a4,s5,13256 <_vfprintf_r+0x1076>
   126d8:	57b2                	lw	a5,44(sp)
   126da:	5742                	lw	a4,48(sp)
   126dc:	0a85                	addi	s5,s5,1
   126de:	9c3e                	add	s8,s8,a5
   126e0:	00eb2023          	sw	a4,0(s6)
   126e4:	00fb2223          	sw	a5,4(s6)
   126e8:	c7e2                	sw	s8,204(sp)
   126ea:	c5d6                	sw	s5,200(sp)
   126ec:	471d                	li	a4,7
   126ee:	0b21                	addi	s6,s6,8
   126f0:	37574fe3          	blt	a4,s5,1326e <_vfprintf_r+0x108e>
   126f4:	474e                	lw	a4,208(sp)
   126f6:	5782                	lw	a5,32(sp)
   126f8:	010c                	addi	a1,sp,128
   126fa:	c93a                	sw	a4,144(sp)
   126fc:	475e                	lw	a4,212(sp)
   126fe:	0908                	addi	a0,sp,144
   12700:	c102                	sw	zero,128(sp)
   12702:	cb3a                	sw	a4,148(sp)
   12704:	476e                	lw	a4,216(sp)
   12706:	c302                	sw	zero,132(sp)
   12708:	c502                	sw	zero,136(sp)
   1270a:	cd3a                	sw	a4,152(sp)
   1270c:	477e                	lw	a4,220(sp)
   1270e:	c702                	sw	zero,140(sp)
   12710:	fff78413          	addi	s0,a5,-1
   12714:	cf3a                	sw	a4,156(sp)
   12716:	6fa050ef          	jal	17e10 <__eqtf2>
   1271a:	78050263          	beqz	a0,12e9e <_vfprintf_r+0xcbe>
   1271e:	001d0793          	addi	a5,s10,1
   12722:	0a85                	addi	s5,s5,1
   12724:	9c22                	add	s8,s8,s0
   12726:	00fb2023          	sw	a5,0(s6)
   1272a:	008b2223          	sw	s0,4(s6)
   1272e:	c7e2                	sw	s8,204(sp)
   12730:	c5d6                	sw	s5,200(sp)
   12732:	479d                	li	a5,7
   12734:	0b21                	addi	s6,s6,8
   12736:	7557c963          	blt	a5,s5,12e88 <_vfprintf_r+0xca8>
   1273a:	4686                	lw	a3,64(sp)
   1273c:	1958                	addi	a4,sp,180
   1273e:	001a8793          	addi	a5,s5,1
   12742:	01868633          	add	a2,a3,s8
   12746:	00eb2023          	sw	a4,0(s6)
   1274a:	00db2223          	sw	a3,4(s6)
   1274e:	c7b2                	sw	a2,204(sp)
   12750:	c5be                	sw	a5,200(sp)
   12752:	471d                	li	a4,7
   12754:	008b0413          	addi	s0,s6,8
   12758:	caf750e3          	bge	a4,a5,123f8 <_vfprintf_r+0x218>
   1275c:	4522                	lw	a0,8(sp)
   1275e:	01d0                	addi	a2,sp,196
   12760:	85a6                	mv	a1,s1
   12762:	6c8010ef          	jal	13e2a <__sprint_r>
   12766:	4c051b63          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   1276a:	463e                	lw	a2,204(sp)
   1276c:	844e                	mv	s0,s3
   1276e:	b169                	j	123f8 <_vfprintf_r+0x218>
   12770:	4752                	lw	a4,20(sp)
   12772:	010cf793          	andi	a5,s9,16
   12776:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe45a4>
   1277a:	0711                	addi	a4,a4,4
   1277c:	ca3a                	sw	a4,20(sp)
   1277e:	7c079e63          	bnez	a5,12f5a <_vfprintf_r+0xd7a>
   12782:	040cf793          	andi	a5,s9,64
   12786:	7c078663          	beqz	a5,12f52 <_vfprintf_r+0xd72>
   1278a:	0b42                	slli	s6,s6,0x10
   1278c:	410b5b13          	srai	s6,s6,0x10
   12790:	41fb5d93          	srai	s11,s6,0x1f
   12794:	87ee                	mv	a5,s11
   12796:	d807d0e3          	bgez	a5,12516 <_vfprintf_r+0x336>
   1279a:	02d00713          	li	a4,45
   1279e:	016037b3          	snez	a5,s6
   127a2:	41b00db3          	neg	s11,s11
   127a6:	0ae103a3          	sb	a4,167(sp)
   127aa:	40fd8db3          	sub	s11,s11,a5
   127ae:	41600b33          	neg	s6,s6
   127b2:	8ee6                	mv	t4,s9
   127b4:	4785                	li	a5,1
   127b6:	dc0ad7e3          	bgez	s5,12584 <_vfprintf_r+0x3a4>
   127ba:	4705                	li	a4,1
   127bc:	0ee78363          	beq	a5,a4,128a2 <_vfprintf_r+0x6c2>
   127c0:	4709                	li	a4,2
   127c2:	30e78763          	beq	a5,a4,12ad0 <_vfprintf_r+0x8f0>
   127c6:	19010d13          	addi	s10,sp,400
   127ca:	01dd9793          	slli	a5,s11,0x1d
   127ce:	007b7713          	andi	a4,s6,7
   127d2:	003b5b13          	srli	s6,s6,0x3
   127d6:	03070713          	addi	a4,a4,48
   127da:	0167eb33          	or	s6,a5,s6
   127de:	003ddd93          	srli	s11,s11,0x3
   127e2:	feed0fa3          	sb	a4,-1(s10)
   127e6:	01bb67b3          	or	a5,s6,s11
   127ea:	866a                	mv	a2,s10
   127ec:	1d7d                	addi	s10,s10,-1
   127ee:	fff1                	bnez	a5,127ca <_vfprintf_r+0x5ea>
   127f0:	001ef693          	andi	a3,t4,1
   127f4:	30068463          	beqz	a3,12afc <_vfprintf_r+0x91c>
   127f8:	03000693          	li	a3,48
   127fc:	30d70063          	beq	a4,a3,12afc <_vfprintf_r+0x91c>
   12800:	1679                	addi	a2,a2,-2
   12802:	0b1c                	addi	a5,sp,400
   12804:	fedd0fa3          	sb	a3,-1(s10)
   12808:	40c78b33          	sub	s6,a5,a2
   1280c:	8cf6                	mv	s9,t4
   1280e:	8d32                	mv	s10,a2
   12810:	b315                	j	12534 <_vfprintf_r+0x354>
   12812:	4752                	lw	a4,20(sp)
   12814:	010cf793          	andi	a5,s9,16
   12818:	00072b03          	lw	s6,0(a4)
   1281c:	0711                	addi	a4,a4,4
   1281e:	ca3a                	sw	a4,20(sp)
   12820:	72079663          	bnez	a5,12f4c <_vfprintf_r+0xd6c>
   12824:	040cf793          	andi	a5,s9,64
   12828:	70078e63          	beqz	a5,12f44 <_vfprintf_r+0xd64>
   1282c:	0b42                	slli	s6,s6,0x10
   1282e:	010b5b13          	srli	s6,s6,0x10
   12832:	4d81                	li	s11,0
   12834:	b381                	j	12574 <_vfprintf_r+0x394>
   12836:	4752                	lw	a4,20(sp)
   12838:	0a0103a3          	sb	zero,167(sp)
   1283c:	4d85                	li	s11,1
   1283e:	431c                	lw	a5,0(a4)
   12840:	0711                	addi	a4,a4,4
   12842:	ca3a                	sw	a4,20(sp)
   12844:	12f10623          	sb	a5,300(sp)
   12848:	4b05                	li	s6,1
   1284a:	12c10d13          	addi	s10,sp,300
   1284e:	be09                	j	12360 <_vfprintf_r+0x180>
   12850:	47d2                	lw	a5,20(sp)
   12852:	0a0103a3          	sb	zero,167(sp)
   12856:	0007ad03          	lw	s10,0(a5)
   1285a:	00478c13          	addi	s8,a5,4
   1285e:	7e0d0a63          	beqz	s10,13052 <_vfprintf_r+0xe72>
   12862:	420ac4e3          	bltz	s5,1348a <_vfprintf_r+0x12aa>
   12866:	8656                	mv	a2,s5
   12868:	4581                	li	a1,0
   1286a:	856a                	mv	a0,s10
   1286c:	ca46                	sw	a7,20(sp)
   1286e:	eb8fe0ef          	jal	10f26 <memchr>
   12872:	c82a                	sw	a0,16(sp)
   12874:	48d2                	lw	a7,20(sp)
   12876:	e119                	bnez	a0,1287c <_vfprintf_r+0x69c>
   12878:	25c0106f          	j	13ad4 <_vfprintf_r+0x18f4>
   1287c:	47c2                	lw	a5,16(sp)
   1287e:	0a714703          	lbu	a4,167(sp)
   12882:	ca62                	sw	s8,20(sp)
   12884:	41a78b33          	sub	s6,a5,s10
   12888:	fffb4693          	not	a3,s6
   1288c:	86fd                	srai	a3,a3,0x1f
   1288e:	c802                	sw	zero,16(sp)
   12890:	d402                	sw	zero,40(sp)
   12892:	d202                	sw	zero,36(sp)
   12894:	ce02                	sw	zero,28(sp)
   12896:	00db7db3          	and	s11,s6,a3
   1289a:	4a81                	li	s5,0
   1289c:	ca0718e3          	bnez	a4,1254c <_vfprintf_r+0x36c>
   128a0:	b4e9                	j	1236a <_vfprintf_r+0x18a>
   128a2:	1e0d98e3          	bnez	s11,13292 <_vfprintf_r+0x10b2>
   128a6:	47a5                	li	a5,9
   128a8:	1f67e5e3          	bltu	a5,s6,13292 <_vfprintf_r+0x10b2>
   128ac:	030b0b13          	addi	s6,s6,48
   128b0:	196107a3          	sb	s6,399(sp)
   128b4:	8cf6                	mv	s9,t4
   128b6:	4b05                	li	s6,1
   128b8:	18f10d13          	addi	s10,sp,399
   128bc:	b9a5                	j	12534 <_vfprintf_r+0x354>
   128be:	47d2                	lw	a5,20(sp)
   128c0:	0007ab83          	lw	s7,0(a5)
   128c4:	0791                	addi	a5,a5,4
   128c6:	660bd163          	bgez	s7,12f28 <_vfprintf_r+0xd48>
   128ca:	41700bb3          	neg	s7,s7
   128ce:	ca3e                	sw	a5,20(sp)
   128d0:	00094883          	lbu	a7,0(s2)
   128d4:	004cec93          	ori	s9,s9,4
   128d8:	bc25                	j	12310 <_vfprintf_r+0x130>
   128da:	02b00793          	li	a5,43
   128de:	00094883          	lbu	a7,0(s2)
   128e2:	0af103a3          	sb	a5,167(sp)
   128e6:	b42d                	j	12310 <_vfprintf_r+0x130>
   128e8:	00094883          	lbu	a7,0(s2)
   128ec:	080cec93          	ori	s9,s9,128
   128f0:	b405                	j	12310 <_vfprintf_r+0x130>
   128f2:	00094883          	lbu	a7,0(s2)
   128f6:	02a00793          	li	a5,42
   128fa:	00190693          	addi	a3,s2,1
   128fe:	00f89463          	bne	a7,a5,12906 <_vfprintf_r+0x726>
   12902:	44c0106f          	j	13d4e <_vfprintf_r+0x1b6e>
   12906:	fd088793          	addi	a5,a7,-48
   1290a:	4725                	li	a4,9
   1290c:	4a81                	li	s5,0
   1290e:	4625                	li	a2,9
   12910:	02f76063          	bltu	a4,a5,12930 <_vfprintf_r+0x750>
   12914:	0006c883          	lbu	a7,0(a3)
   12918:	002a9713          	slli	a4,s5,0x2
   1291c:	9aba                	add	s5,s5,a4
   1291e:	0a86                	slli	s5,s5,0x1
   12920:	9abe                	add	s5,s5,a5
   12922:	fd088793          	addi	a5,a7,-48
   12926:	0685                	addi	a3,a3,1
   12928:	fef676e3          	bgeu	a2,a5,12914 <_vfprintf_r+0x734>
   1292c:	680ac963          	bltz	s5,12fbe <_vfprintf_r+0xdde>
   12930:	8936                	mv	s2,a3
   12932:	b2c5                	j	12312 <_vfprintf_r+0x132>
   12934:	00094883          	lbu	a7,0(s2)
   12938:	001cec93          	ori	s9,s9,1
   1293c:	bad1                	j	12310 <_vfprintf_r+0x130>
   1293e:	0a714783          	lbu	a5,167(sp)
   12942:	00094883          	lbu	a7,0(s2)
   12946:	9c0795e3          	bnez	a5,12310 <_vfprintf_r+0x130>
   1294a:	02000793          	li	a5,32
   1294e:	0af103a3          	sb	a5,167(sp)
   12952:	ba7d                	j	12310 <_vfprintf_r+0x130>
   12954:	010cee93          	ori	t4,s9,16
   12958:	020ef793          	andi	a5,t4,32
   1295c:	58078a63          	beqz	a5,12ef0 <_vfprintf_r+0xd10>
   12960:	47d2                	lw	a5,20(sp)
   12962:	00778c13          	addi	s8,a5,7
   12966:	ff8c7c13          	andi	s8,s8,-8
   1296a:	008c0793          	addi	a5,s8,8
   1296e:	ca3e                	sw	a5,20(sp)
   12970:	000c2b03          	lw	s6,0(s8)
   12974:	004c2d83          	lw	s11,4(s8)
   12978:	4785                	li	a5,1
   1297a:	b101                	j	1257a <_vfprintf_r+0x39a>
   1297c:	00094883          	lbu	a7,0(s2)
   12980:	008cec93          	ori	s9,s9,8
   12984:	b271                	j	12310 <_vfprintf_r+0x130>
   12986:	4752                	lw	a4,20(sp)
   12988:	67a1                	lui	a5,0x8
   1298a:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   1298e:	0af11423          	sh	a5,168(sp)
   12992:	00470793          	addi	a5,a4,4
   12996:	ca3e                	sw	a5,20(sp)
   12998:	67e9                	lui	a5,0x1a
   1299a:	31478793          	addi	a5,a5,788 # 1a314 <__clzsi2+0x94>
   1299e:	da3e                	sw	a5,52(sp)
   129a0:	00072b03          	lw	s6,0(a4)
   129a4:	4d81                	li	s11,0
   129a6:	002cee93          	ori	t4,s9,2
   129aa:	4789                	li	a5,2
   129ac:	07800893          	li	a7,120
   129b0:	b6e9                	j	1257a <_vfprintf_r+0x39a>
   129b2:	020cf793          	andi	a5,s9,32
   129b6:	5c078463          	beqz	a5,12f7e <_vfprintf_r+0xd9e>
   129ba:	47d2                	lw	a5,20(sp)
   129bc:	46b2                	lw	a3,12(sp)
   129be:	439c                	lw	a5,0(a5)
   129c0:	41f6d713          	srai	a4,a3,0x1f
   129c4:	c394                	sw	a3,0(a5)
   129c6:	c3d8                	sw	a4,4(a5)
   129c8:	47d2                	lw	a5,20(sp)
   129ca:	8d4a                	mv	s10,s2
   129cc:	0791                	addi	a5,a5,4
   129ce:	ca3e                	sw	a5,20(sp)
   129d0:	bcb1                	j	1242c <_vfprintf_r+0x24c>
   129d2:	00094883          	lbu	a7,0(s2)
   129d6:	06c00793          	li	a5,108
   129da:	64f88b63          	beq	a7,a5,13030 <_vfprintf_r+0xe50>
   129de:	010cec93          	ori	s9,s9,16
   129e2:	b23d                	j	12310 <_vfprintf_r+0x130>
   129e4:	00094883          	lbu	a7,0(s2)
   129e8:	06800793          	li	a5,104
   129ec:	62f88b63          	beq	a7,a5,13022 <_vfprintf_r+0xe42>
   129f0:	040cec93          	ori	s9,s9,64
   129f4:	ba31                	j	12310 <_vfprintf_r+0x130>
   129f6:	06500713          	li	a4,101
   129fa:	cb175ce3          	bge	a4,a7,126b2 <_vfprintf_r+0x4d2>
   129fe:	474e                	lw	a4,208(sp)
   12a00:	010c                	addi	a1,sp,128
   12a02:	0908                	addi	a0,sp,144
   12a04:	c93a                	sw	a4,144(sp)
   12a06:	475e                	lw	a4,212(sp)
   12a08:	dc32                	sw	a2,56(sp)
   12a0a:	c102                	sw	zero,128(sp)
   12a0c:	cb3a                	sw	a4,148(sp)
   12a0e:	476e                	lw	a4,216(sp)
   12a10:	c302                	sw	zero,132(sp)
   12a12:	c502                	sw	zero,136(sp)
   12a14:	cd3a                	sw	a4,152(sp)
   12a16:	477e                	lw	a4,220(sp)
   12a18:	c702                	sw	zero,140(sp)
   12a1a:	cf3a                	sw	a4,156(sp)
   12a1c:	3f4050ef          	jal	17e10 <__eqtf2>
   12a20:	5662                	lw	a2,56(sp)
   12a22:	36051363          	bnez	a0,12d88 <_vfprintf_r+0xba8>
   12a26:	47ae                	lw	a5,200(sp)
   12a28:	6769                	lui	a4,0x1a
   12a2a:	34470713          	addi	a4,a4,836 # 1a344 <__clzsi2+0xc4>
   12a2e:	c018                	sw	a4,0(s0)
   12a30:	0605                	addi	a2,a2,1
   12a32:	4705                	li	a4,1
   12a34:	0785                	addi	a5,a5,1
   12a36:	c058                	sw	a4,4(s0)
   12a38:	c7b2                	sw	a2,204(sp)
   12a3a:	c5be                	sw	a5,200(sp)
   12a3c:	471d                	li	a4,7
   12a3e:	0421                	addi	s0,s0,8
   12a40:	16f74de3          	blt	a4,a5,133ba <_vfprintf_r+0x11da>
   12a44:	57ba                	lw	a5,172(sp)
   12a46:	5702                	lw	a4,32(sp)
   12a48:	4ce7db63          	bge	a5,a4,12f1e <_vfprintf_r+0xd3e>
   12a4c:	57c2                	lw	a5,48(sp)
   12a4e:	5732                	lw	a4,44(sp)
   12a50:	0421                	addi	s0,s0,8
   12a52:	fef42c23          	sw	a5,-8(s0)
   12a56:	47ae                	lw	a5,200(sp)
   12a58:	963a                	add	a2,a2,a4
   12a5a:	fee42e23          	sw	a4,-4(s0)
   12a5e:	0785                	addi	a5,a5,1
   12a60:	c7b2                	sw	a2,204(sp)
   12a62:	c5be                	sw	a5,200(sp)
   12a64:	471d                	li	a4,7
   12a66:	5cf74c63          	blt	a4,a5,1303e <_vfprintf_r+0xe5e>
   12a6a:	5782                	lw	a5,32(sp)
   12a6c:	fff78a93          	addi	s5,a5,-1
   12a70:	995054e3          	blez	s5,123f8 <_vfprintf_r+0x218>
   12a74:	6869                	lui	a6,0x1a
   12a76:	67080813          	addi	a6,a6,1648 # 1a670 <zeroes.0>
   12a7a:	4741                	li	a4,16
   12a7c:	47ae                	lw	a5,200(sp)
   12a7e:	4b41                	li	s6,16
   12a80:	4c1d                	li	s8,7
   12a82:	8d42                	mv	s10,a6
   12a84:	01574763          	blt	a4,s5,12a92 <_vfprintf_r+0x8b2>
   12a88:	14b0006f          	j	133d2 <_vfprintf_r+0x11f2>
   12a8c:	1ac1                	addi	s5,s5,-16
   12a8e:	155b51e3          	bge	s6,s5,133d0 <_vfprintf_r+0x11f0>
   12a92:	0641                	addi	a2,a2,16
   12a94:	0785                	addi	a5,a5,1
   12a96:	01a42023          	sw	s10,0(s0)
   12a9a:	01642223          	sw	s6,4(s0)
   12a9e:	c7b2                	sw	a2,204(sp)
   12aa0:	c5be                	sw	a5,200(sp)
   12aa2:	0421                	addi	s0,s0,8
   12aa4:	fefc54e3          	bge	s8,a5,12a8c <_vfprintf_r+0x8ac>
   12aa8:	4522                	lw	a0,8(sp)
   12aaa:	01d0                	addi	a2,sp,196
   12aac:	85a6                	mv	a1,s1
   12aae:	37c010ef          	jal	13e2a <__sprint_r>
   12ab2:	18051563          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12ab6:	463e                	lw	a2,204(sp)
   12ab8:	47ae                	lw	a5,200(sp)
   12aba:	844e                	mv	s0,s3
   12abc:	bfc1                	j	12a8c <_vfprintf_r+0x8ac>
   12abe:	4705                	li	a4,1
   12ac0:	00e79463          	bne	a5,a4,12ac8 <_vfprintf_r+0x8e8>
   12ac4:	0f20106f          	j	13bb6 <_vfprintf_r+0x19d6>
   12ac8:	4709                	li	a4,2
   12aca:	8ee6                	mv	t4,s9
   12acc:	cee79de3          	bne	a5,a4,127c6 <_vfprintf_r+0x5e6>
   12ad0:	56d2                	lw	a3,52(sp)
   12ad2:	19010d13          	addi	s10,sp,400
   12ad6:	00fb7793          	andi	a5,s6,15
   12ada:	97b6                	add	a5,a5,a3
   12adc:	0007c703          	lbu	a4,0(a5)
   12ae0:	004b5b13          	srli	s6,s6,0x4
   12ae4:	01cd9793          	slli	a5,s11,0x1c
   12ae8:	0167eb33          	or	s6,a5,s6
   12aec:	004ddd93          	srli	s11,s11,0x4
   12af0:	feed0fa3          	sb	a4,-1(s10)
   12af4:	01bb67b3          	or	a5,s6,s11
   12af8:	1d7d                	addi	s10,s10,-1
   12afa:	fff1                	bnez	a5,12ad6 <_vfprintf_r+0x8f6>
   12afc:	0b1c                	addi	a5,sp,400
   12afe:	41a78b33          	sub	s6,a5,s10
   12b02:	8cf6                	mv	s9,t4
   12b04:	bc05                	j	12534 <_vfprintf_r+0x354>
   12b06:	41bb8c33          	sub	s8,s7,s11
   12b0a:	8d8052e3          	blez	s8,123ce <_vfprintf_r+0x1ee>
   12b0e:	6869                	lui	a6,0x1a
   12b10:	4541                	li	a0,16
   12b12:	45ae                	lw	a1,200(sp)
   12b14:	67080813          	addi	a6,a6,1648 # 1a670 <zeroes.0>
   12b18:	05855f63          	bge	a0,s8,12b76 <_vfprintf_r+0x996>
   12b1c:	dc4a                	sw	s2,56(sp)
   12b1e:	87a2                	mv	a5,s0
   12b20:	4ec1                	li	t4,16
   12b22:	8462                	mv	s0,s8
   12b24:	4f9d                	li	t6,7
   12b26:	8c5a                	mv	s8,s6
   12b28:	8942                	mv	s2,a6
   12b2a:	8b56                	mv	s6,s5
   12b2c:	8ac6                	mv	s5,a7
   12b2e:	a021                	j	12b36 <_vfprintf_r+0x956>
   12b30:	1441                	addi	s0,s0,-16
   12b32:	028edb63          	bge	t4,s0,12b68 <_vfprintf_r+0x988>
   12b36:	0641                	addi	a2,a2,16
   12b38:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   12b3a:	0127a023          	sw	s2,0(a5)
   12b3e:	01d7a223          	sw	t4,4(a5)
   12b42:	c7b2                	sw	a2,204(sp)
   12b44:	c5ae                	sw	a1,200(sp)
   12b46:	07a1                	addi	a5,a5,8
   12b48:	febfd4e3          	bge	t6,a1,12b30 <_vfprintf_r+0x950>
   12b4c:	4522                	lw	a0,8(sp)
   12b4e:	01d0                	addi	a2,sp,196
   12b50:	85a6                	mv	a1,s1
   12b52:	2d8010ef          	jal	13e2a <__sprint_r>
   12b56:	e17d                	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12b58:	4ec1                	li	t4,16
   12b5a:	1441                	addi	s0,s0,-16
   12b5c:	463e                	lw	a2,204(sp)
   12b5e:	45ae                	lw	a1,200(sp)
   12b60:	87ce                	mv	a5,s3
   12b62:	4f9d                	li	t6,7
   12b64:	fc8ec9e3          	blt	t4,s0,12b36 <_vfprintf_r+0x956>
   12b68:	884a                	mv	a6,s2
   12b6a:	5962                	lw	s2,56(sp)
   12b6c:	88d6                	mv	a7,s5
   12b6e:	8ada                	mv	s5,s6
   12b70:	8b62                	mv	s6,s8
   12b72:	8c22                	mv	s8,s0
   12b74:	843e                	mv	s0,a5
   12b76:	9662                	add	a2,a2,s8
   12b78:	0585                	addi	a1,a1,1
   12b7a:	01042023          	sw	a6,0(s0)
   12b7e:	01842223          	sw	s8,4(s0)
   12b82:	c7b2                	sw	a2,204(sp)
   12b84:	c5ae                	sw	a1,200(sp)
   12b86:	471d                	li	a4,7
   12b88:	0421                	addi	s0,s0,8
   12b8a:	84b752e3          	bge	a4,a1,123ce <_vfprintf_r+0x1ee>
   12b8e:	4522                	lw	a0,8(sp)
   12b90:	01d0                	addi	a2,sp,196
   12b92:	85a6                	mv	a1,s1
   12b94:	dc46                	sw	a7,56(sp)
   12b96:	294010ef          	jal	13e2a <__sprint_r>
   12b9a:	e14d                	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12b9c:	463e                	lw	a2,204(sp)
   12b9e:	58e2                	lw	a7,56(sp)
   12ba0:	844e                	mv	s0,s3
   12ba2:	82dff06f          	j	123ce <_vfprintf_r+0x1ee>
   12ba6:	6869                	lui	a6,0x1a
   12ba8:	4741                	li	a4,16
   12baa:	45ae                	lw	a1,200(sp)
   12bac:	67080813          	addi	a6,a6,1648 # 1a670 <zeroes.0>
   12bb0:	05575763          	bge	a4,s5,12bfe <_vfprintf_r+0xa1e>
   12bb4:	87a2                	mv	a5,s0
   12bb6:	4741                	li	a4,16
   12bb8:	8456                	mv	s0,s5
   12bba:	4c1d                	li	s8,7
   12bbc:	dc46                	sw	a7,56(sp)
   12bbe:	8ad2                	mv	s5,s4
   12bc0:	a021                	j	12bc8 <_vfprintf_r+0x9e8>
   12bc2:	1441                	addi	s0,s0,-16
   12bc4:	02875963          	bge	a4,s0,12bf6 <_vfprintf_r+0xa16>
   12bc8:	0641                	addi	a2,a2,16
   12bca:	0585                	addi	a1,a1,1
   12bcc:	0147a023          	sw	s4,0(a5)
   12bd0:	c3d8                	sw	a4,4(a5)
   12bd2:	c7b2                	sw	a2,204(sp)
   12bd4:	c5ae                	sw	a1,200(sp)
   12bd6:	07a1                	addi	a5,a5,8
   12bd8:	febc55e3          	bge	s8,a1,12bc2 <_vfprintf_r+0x9e2>
   12bdc:	4522                	lw	a0,8(sp)
   12bde:	01d0                	addi	a2,sp,196
   12be0:	85a6                	mv	a1,s1
   12be2:	248010ef          	jal	13e2a <__sprint_r>
   12be6:	e939                	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12be8:	4741                	li	a4,16
   12bea:	1441                	addi	s0,s0,-16
   12bec:	463e                	lw	a2,204(sp)
   12bee:	45ae                	lw	a1,200(sp)
   12bf0:	87ce                	mv	a5,s3
   12bf2:	fc874be3          	blt	a4,s0,12bc8 <_vfprintf_r+0x9e8>
   12bf6:	58e2                	lw	a7,56(sp)
   12bf8:	8856                	mv	a6,s5
   12bfa:	8aa2                	mv	s5,s0
   12bfc:	843e                	mv	s0,a5
   12bfe:	9656                	add	a2,a2,s5
   12c00:	0585                	addi	a1,a1,1
   12c02:	01042023          	sw	a6,0(s0)
   12c06:	01542223          	sw	s5,4(s0)
   12c0a:	c7b2                	sw	a2,204(sp)
   12c0c:	c5ae                	sw	a1,200(sp)
   12c0e:	471d                	li	a4,7
   12c10:	0421                	addi	s0,s0,8
   12c12:	fcb75263          	bge	a4,a1,123d6 <_vfprintf_r+0x1f6>
   12c16:	4522                	lw	a0,8(sp)
   12c18:	01d0                	addi	a2,sp,196
   12c1a:	85a6                	mv	a1,s1
   12c1c:	dc46                	sw	a7,56(sp)
   12c1e:	20c010ef          	jal	13e2a <__sprint_r>
   12c22:	ed09                	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12c24:	463e                	lw	a2,204(sp)
   12c26:	58e2                	lw	a7,56(sp)
   12c28:	844e                	mv	s0,s3
   12c2a:	facff06f          	j	123d6 <_vfprintf_r+0x1f6>
   12c2e:	4522                	lw	a0,8(sp)
   12c30:	01d0                	addi	a2,sp,196
   12c32:	85a6                	mv	a1,s1
   12c34:	1f6010ef          	jal	13e2a <__sprint_r>
   12c38:	fe050163          	beqz	a0,1241a <_vfprintf_r+0x23a>
   12c3c:	45c2                	lw	a1,16(sp)
   12c3e:	fe058f63          	beqz	a1,1243c <_vfprintf_r+0x25c>
   12c42:	4522                	lw	a0,8(sp)
   12c44:	a05fe0ef          	jal	11648 <_free_r>
   12c48:	ff4ff06f          	j	1243c <_vfprintf_r+0x25c>
   12c4c:	8ee6                	mv	t4,s9
   12c4e:	b6b5                	j	127ba <_vfprintf_r+0x5da>
   12c50:	6869                	lui	a6,0x1a
   12c52:	4541                	li	a0,16
   12c54:	45ae                	lw	a1,200(sp)
   12c56:	68080c13          	addi	s8,a6,1664 # 1a680 <blanks.1>
   12c5a:	06e55363          	bge	a0,a4,12cc0 <_vfprintf_r+0xae0>
   12c5e:	c8ca                	sw	s2,80(sp)
   12c60:	87a2                	mv	a5,s0
   12c62:	8962                	mv	s2,s8
   12c64:	4ec1                	li	t4,16
   12c66:	8c5a                	mv	s8,s6
   12c68:	439d                	li	t2,7
   12c6a:	8b56                	mv	s6,s5
   12c6c:	dc16                	sw	t0,56(sp)
   12c6e:	c6fe                	sw	t6,76(sp)
   12c70:	843a                	mv	s0,a4
   12c72:	8ac6                	mv	s5,a7
   12c74:	a021                	j	12c7c <_vfprintf_r+0xa9c>
   12c76:	1441                	addi	s0,s0,-16
   12c78:	028edb63          	bge	t4,s0,12cae <_vfprintf_r+0xace>
   12c7c:	0641                	addi	a2,a2,16
   12c7e:	0585                	addi	a1,a1,1
   12c80:	0127a023          	sw	s2,0(a5)
   12c84:	01d7a223          	sw	t4,4(a5)
   12c88:	c7b2                	sw	a2,204(sp)
   12c8a:	c5ae                	sw	a1,200(sp)
   12c8c:	07a1                	addi	a5,a5,8
   12c8e:	feb3d4e3          	bge	t2,a1,12c76 <_vfprintf_r+0xa96>
   12c92:	4522                	lw	a0,8(sp)
   12c94:	01d0                	addi	a2,sp,196
   12c96:	85a6                	mv	a1,s1
   12c98:	192010ef          	jal	13e2a <__sprint_r>
   12c9c:	f145                	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12c9e:	4ec1                	li	t4,16
   12ca0:	1441                	addi	s0,s0,-16
   12ca2:	463e                	lw	a2,204(sp)
   12ca4:	45ae                	lw	a1,200(sp)
   12ca6:	87ce                	mv	a5,s3
   12ca8:	439d                	li	t2,7
   12caa:	fc8ec9e3          	blt	t4,s0,12c7c <_vfprintf_r+0xa9c>
   12cae:	88d6                	mv	a7,s5
   12cb0:	52e2                	lw	t0,56(sp)
   12cb2:	8ada                	mv	s5,s6
   12cb4:	4fb6                	lw	t6,76(sp)
   12cb6:	8b62                	mv	s6,s8
   12cb8:	8c4a                	mv	s8,s2
   12cba:	4946                	lw	s2,80(sp)
   12cbc:	8722                	mv	a4,s0
   12cbe:	843e                	mv	s0,a5
   12cc0:	963a                	add	a2,a2,a4
   12cc2:	0585                	addi	a1,a1,1
   12cc4:	c058                	sw	a4,4(s0)
   12cc6:	01842023          	sw	s8,0(s0)
   12cca:	c7b2                	sw	a2,204(sp)
   12ccc:	c5ae                	sw	a1,200(sp)
   12cce:	471d                	li	a4,7
   12cd0:	0421                	addi	s0,s0,8
   12cd2:	eab75a63          	bge	a4,a1,12386 <_vfprintf_r+0x1a6>
   12cd6:	4522                	lw	a0,8(sp)
   12cd8:	01d0                	addi	a2,sp,196
   12cda:	85a6                	mv	a1,s1
   12cdc:	c8c6                	sw	a7,80(sp)
   12cde:	c6fe                	sw	t6,76(sp)
   12ce0:	dc16                	sw	t0,56(sp)
   12ce2:	148010ef          	jal	13e2a <__sprint_r>
   12ce6:	f939                	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12ce8:	463e                	lw	a2,204(sp)
   12cea:	48c6                	lw	a7,80(sp)
   12cec:	4fb6                	lw	t6,76(sp)
   12cee:	52e2                	lw	t0,56(sp)
   12cf0:	844e                	mv	s0,s3
   12cf2:	e94ff06f          	j	12386 <_vfprintf_r+0x1a6>
   12cf6:	4522                	lw	a0,8(sp)
   12cf8:	01d0                	addi	a2,sp,196
   12cfa:	85a6                	mv	a1,s1
   12cfc:	c6c6                	sw	a7,76(sp)
   12cfe:	dc7e                	sw	t6,56(sp)
   12d00:	12a010ef          	jal	13e2a <__sprint_r>
   12d04:	fd05                	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12d06:	463e                	lw	a2,204(sp)
   12d08:	48b6                	lw	a7,76(sp)
   12d0a:	5fe2                	lw	t6,56(sp)
   12d0c:	844e                	mv	s0,s3
   12d0e:	eb8ff06f          	j	123c6 <_vfprintf_r+0x1e6>
   12d12:	6869                	lui	a6,0x1a
   12d14:	4741                	li	a4,16
   12d16:	47ae                	lw	a5,200(sp)
   12d18:	68080c13          	addi	s8,a6,1664 # 1a680 <blanks.1>
   12d1c:	05575163          	bge	a4,s5,12d5e <_vfprintf_r+0xb7e>
   12d20:	4d22                	lw	s10,8(sp)
   12d22:	4b41                	li	s6,16
   12d24:	4c9d                	li	s9,7
   12d26:	a021                	j	12d2e <_vfprintf_r+0xb4e>
   12d28:	1ac1                	addi	s5,s5,-16
   12d2a:	035b5a63          	bge	s6,s5,12d5e <_vfprintf_r+0xb7e>
   12d2e:	0641                	addi	a2,a2,16
   12d30:	0785                	addi	a5,a5,1
   12d32:	01842023          	sw	s8,0(s0)
   12d36:	01642223          	sw	s6,4(s0)
   12d3a:	c7b2                	sw	a2,204(sp)
   12d3c:	c5be                	sw	a5,200(sp)
   12d3e:	0421                	addi	s0,s0,8
   12d40:	fefcd4e3          	bge	s9,a5,12d28 <_vfprintf_r+0xb48>
   12d44:	01d0                	addi	a2,sp,196
   12d46:	85a6                	mv	a1,s1
   12d48:	856a                	mv	a0,s10
   12d4a:	0e0010ef          	jal	13e2a <__sprint_r>
   12d4e:	ee0517e3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12d52:	1ac1                	addi	s5,s5,-16
   12d54:	463e                	lw	a2,204(sp)
   12d56:	47ae                	lw	a5,200(sp)
   12d58:	844e                	mv	s0,s3
   12d5a:	fd5b4ae3          	blt	s6,s5,12d2e <_vfprintf_r+0xb4e>
   12d5e:	9656                	add	a2,a2,s5
   12d60:	0785                	addi	a5,a5,1
   12d62:	01842023          	sw	s8,0(s0)
   12d66:	01542223          	sw	s5,4(s0)
   12d6a:	c7b2                	sw	a2,204(sp)
   12d6c:	c5be                	sw	a5,200(sp)
   12d6e:	471d                	li	a4,7
   12d70:	e8f75c63          	bge	a4,a5,12408 <_vfprintf_r+0x228>
   12d74:	4522                	lw	a0,8(sp)
   12d76:	01d0                	addi	a2,sp,196
   12d78:	85a6                	mv	a1,s1
   12d7a:	0b0010ef          	jal	13e2a <__sprint_r>
   12d7e:	ea051fe3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12d82:	463e                	lw	a2,204(sp)
   12d84:	e84ff06f          	j	12408 <_vfprintf_r+0x228>
   12d88:	553a                	lw	a0,172(sp)
   12d8a:	5ca05e63          	blez	a0,13366 <_vfprintf_r+0x1186>
   12d8e:	47f2                	lw	a5,28(sp)
   12d90:	5702                	lw	a4,32(sp)
   12d92:	8abe                	mv	s5,a5
   12d94:	22f74163          	blt	a4,a5,12fb6 <_vfprintf_r+0xdd6>
   12d98:	01505f63          	blez	s5,12db6 <_vfprintf_r+0xbd6>
   12d9c:	472e                	lw	a4,200(sp)
   12d9e:	9656                	add	a2,a2,s5
   12da0:	01a42023          	sw	s10,0(s0)
   12da4:	0705                	addi	a4,a4,1
   12da6:	01542223          	sw	s5,4(s0)
   12daa:	c7b2                	sw	a2,204(sp)
   12dac:	c5ba                	sw	a4,200(sp)
   12dae:	459d                	li	a1,7
   12db0:	0421                	addi	s0,s0,8
   12db2:	14e5c5e3          	blt	a1,a4,136fc <_vfprintf_r+0x151c>
   12db6:	fffac713          	not	a4,s5
   12dba:	47f2                	lw	a5,28(sp)
   12dbc:	877d                	srai	a4,a4,0x1f
   12dbe:	00eafab3          	and	s5,s5,a4
   12dc2:	41578ab3          	sub	s5,a5,s5
   12dc6:	2b504163          	bgtz	s5,13068 <_vfprintf_r+0xe88>
   12dca:	47f2                	lw	a5,28(sp)
   12dcc:	400cf713          	andi	a4,s9,1024
   12dd0:	00fd0c33          	add	s8,s10,a5
   12dd4:	7a071e63          	bnez	a4,13590 <_vfprintf_r+0x13b0>
   12dd8:	5aba                	lw	s5,172(sp)
   12dda:	5782                	lw	a5,32(sp)
   12ddc:	2cfaca63          	blt	s5,a5,130b0 <_vfprintf_r+0xed0>
   12de0:	001cf713          	andi	a4,s9,1
   12de4:	2c071663          	bnez	a4,130b0 <_vfprintf_r+0xed0>
   12de8:	5702                	lw	a4,32(sp)
   12dea:	00ed07b3          	add	a5,s10,a4
   12dee:	41570ab3          	sub	s5,a4,s5
   12df2:	41878b33          	sub	s6,a5,s8
   12df6:	016ad363          	bge	s5,s6,12dfc <_vfprintf_r+0xc1c>
   12dfa:	8b56                	mv	s6,s5
   12dfc:	01605f63          	blez	s6,12e1a <_vfprintf_r+0xc3a>
   12e00:	47ae                	lw	a5,200(sp)
   12e02:	965a                	add	a2,a2,s6
   12e04:	01842023          	sw	s8,0(s0)
   12e08:	0785                	addi	a5,a5,1
   12e0a:	01642223          	sw	s6,4(s0)
   12e0e:	c7b2                	sw	a2,204(sp)
   12e10:	c5be                	sw	a5,200(sp)
   12e12:	471d                	li	a4,7
   12e14:	0421                	addi	s0,s0,8
   12e16:	4cf74de3          	blt	a4,a5,13af0 <_vfprintf_r+0x1910>
   12e1a:	fffb4793          	not	a5,s6
   12e1e:	87fd                	srai	a5,a5,0x1f
   12e20:	00fb7b33          	and	s6,s6,a5
   12e24:	416a8ab3          	sub	s5,s5,s6
   12e28:	dd505863          	blez	s5,123f8 <_vfprintf_r+0x218>
   12e2c:	6869                	lui	a6,0x1a
   12e2e:	67080813          	addi	a6,a6,1648 # 1a670 <zeroes.0>
   12e32:	4741                	li	a4,16
   12e34:	47ae                	lw	a5,200(sp)
   12e36:	4b41                	li	s6,16
   12e38:	4c1d                	li	s8,7
   12e3a:	8d42                	mv	s10,a6
   12e3c:	01574663          	blt	a4,s5,12e48 <_vfprintf_r+0xc68>
   12e40:	ab49                	j	133d2 <_vfprintf_r+0x11f2>
   12e42:	1ac1                	addi	s5,s5,-16
   12e44:	595b5663          	bge	s6,s5,133d0 <_vfprintf_r+0x11f0>
   12e48:	0641                	addi	a2,a2,16
   12e4a:	0785                	addi	a5,a5,1
   12e4c:	01a42023          	sw	s10,0(s0)
   12e50:	01642223          	sw	s6,4(s0)
   12e54:	c7b2                	sw	a2,204(sp)
   12e56:	c5be                	sw	a5,200(sp)
   12e58:	0421                	addi	s0,s0,8
   12e5a:	fefc54e3          	bge	s8,a5,12e42 <_vfprintf_r+0xc62>
   12e5e:	4522                	lw	a0,8(sp)
   12e60:	01d0                	addi	a2,sp,196
   12e62:	85a6                	mv	a1,s1
   12e64:	7c7000ef          	jal	13e2a <__sprint_r>
   12e68:	dc051ae3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12e6c:	463e                	lw	a2,204(sp)
   12e6e:	47ae                	lw	a5,200(sp)
   12e70:	844e                	mv	s0,s3
   12e72:	bfc1                	j	12e42 <_vfprintf_r+0xc62>
   12e74:	001cf593          	andi	a1,s9,1
   12e78:	840599e3          	bnez	a1,126ca <_vfprintf_r+0x4ea>
   12e7c:	c058                	sw	a4,4(s0)
   12e7e:	c7e2                	sw	s8,204(sp)
   12e80:	c5d6                	sw	s5,200(sp)
   12e82:	479d                	li	a5,7
   12e84:	8b57dbe3          	bge	a5,s5,1273a <_vfprintf_r+0x55a>
   12e88:	4522                	lw	a0,8(sp)
   12e8a:	01d0                	addi	a2,sp,196
   12e8c:	85a6                	mv	a1,s1
   12e8e:	79d000ef          	jal	13e2a <__sprint_r>
   12e92:	da0515e3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12e96:	4c3e                	lw	s8,204(sp)
   12e98:	4aae                	lw	s5,200(sp)
   12e9a:	8b4e                	mv	s6,s3
   12e9c:	b879                	j	1273a <_vfprintf_r+0x55a>
   12e9e:	5702                	lw	a4,32(sp)
   12ea0:	4785                	li	a5,1
   12ea2:	88e7dce3          	bge	a5,a4,1273a <_vfprintf_r+0x55a>
   12ea6:	6869                	lui	a6,0x1a
   12ea8:	47c5                	li	a5,17
   12eaa:	67080813          	addi	a6,a6,1648 # 1a670 <zeroes.0>
   12eae:	60e7d863          	bge	a5,a4,134be <_vfprintf_r+0x12de>
   12eb2:	ce4a                	sw	s2,28(sp)
   12eb4:	47c1                	li	a5,16
   12eb6:	4d1d                	li	s10,7
   12eb8:	8942                	mv	s2,a6
   12eba:	a021                	j	12ec2 <_vfprintf_r+0xce2>
   12ebc:	1441                	addi	s0,s0,-16
   12ebe:	5e87de63          	bge	a5,s0,134ba <_vfprintf_r+0x12da>
   12ec2:	0c41                	addi	s8,s8,16
   12ec4:	0a85                	addi	s5,s5,1
   12ec6:	012b2023          	sw	s2,0(s6)
   12eca:	00fb2223          	sw	a5,4(s6)
   12ece:	c7e2                	sw	s8,204(sp)
   12ed0:	c5d6                	sw	s5,200(sp)
   12ed2:	0b21                	addi	s6,s6,8
   12ed4:	ff5d54e3          	bge	s10,s5,12ebc <_vfprintf_r+0xcdc>
   12ed8:	4522                	lw	a0,8(sp)
   12eda:	01d0                	addi	a2,sp,196
   12edc:	85a6                	mv	a1,s1
   12ede:	74d000ef          	jal	13e2a <__sprint_r>
   12ee2:	d4051de3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   12ee6:	4c3e                	lw	s8,204(sp)
   12ee8:	4aae                	lw	s5,200(sp)
   12eea:	8b4e                	mv	s6,s3
   12eec:	47c1                	li	a5,16
   12eee:	b7f9                	j	12ebc <_vfprintf_r+0xcdc>
   12ef0:	4752                	lw	a4,20(sp)
   12ef2:	010ef793          	andi	a5,t4,16
   12ef6:	00072b03          	lw	s6,0(a4)
   12efa:	0711                	addi	a4,a4,4
   12efc:	ca3a                	sw	a4,20(sp)
   12efe:	ef9d                	bnez	a5,12f3c <_vfprintf_r+0xd5c>
   12f00:	040ef793          	andi	a5,t4,64
   12f04:	c79d                	beqz	a5,12f32 <_vfprintf_r+0xd52>
   12f06:	0b42                	slli	s6,s6,0x10
   12f08:	010b5b13          	srli	s6,s6,0x10
   12f0c:	4d81                	li	s11,0
   12f0e:	4785                	li	a5,1
   12f10:	e6aff06f          	j	1257a <_vfprintf_r+0x39a>
   12f14:	4b01                	li	s6,0
   12f16:	19010d13          	addi	s10,sp,400
   12f1a:	e1aff06f          	j	12534 <_vfprintf_r+0x354>
   12f1e:	001cf793          	andi	a5,s9,1
   12f22:	cc078b63          	beqz	a5,123f8 <_vfprintf_r+0x218>
   12f26:	b61d                	j	12a4c <_vfprintf_r+0x86c>
   12f28:	00094883          	lbu	a7,0(s2)
   12f2c:	ca3e                	sw	a5,20(sp)
   12f2e:	be2ff06f          	j	12310 <_vfprintf_r+0x130>
   12f32:	200ef793          	andi	a5,t4,512
   12f36:	c399                	beqz	a5,12f3c <_vfprintf_r+0xd5c>
   12f38:	0ffb7b13          	zext.b	s6,s6
   12f3c:	4d81                	li	s11,0
   12f3e:	4785                	li	a5,1
   12f40:	e3aff06f          	j	1257a <_vfprintf_r+0x39a>
   12f44:	200cf793          	andi	a5,s9,512
   12f48:	7e079563          	bnez	a5,13732 <_vfprintf_r+0x1552>
   12f4c:	4d81                	li	s11,0
   12f4e:	e26ff06f          	j	12574 <_vfprintf_r+0x394>
   12f52:	200cf793          	andi	a5,s9,512
   12f56:	7c079663          	bnez	a5,13722 <_vfprintf_r+0x1542>
   12f5a:	41fb5d93          	srai	s11,s6,0x1f
   12f5e:	87ee                	mv	a5,s11
   12f60:	db2ff06f          	j	12512 <_vfprintf_r+0x332>
   12f64:	57f2                	lw	a5,60(sp)
   12f66:	00094883          	lbu	a7,0(s2)
   12f6a:	ba078363          	beqz	a5,12310 <_vfprintf_r+0x130>
   12f6e:	0007c783          	lbu	a5,0(a5)
   12f72:	b8078f63          	beqz	a5,12310 <_vfprintf_r+0x130>
   12f76:	400cec93          	ori	s9,s9,1024
   12f7a:	b96ff06f          	j	12310 <_vfprintf_r+0x130>
   12f7e:	010cf793          	andi	a5,s9,16
   12f82:	4c079063          	bnez	a5,13442 <_vfprintf_r+0x1262>
   12f86:	040cf793          	andi	a5,s9,64
   12f8a:	78079563          	bnez	a5,13714 <_vfprintf_r+0x1534>
   12f8e:	200cfe13          	andi	t3,s9,512
   12f92:	4a0e0863          	beqz	t3,13442 <_vfprintf_r+0x1262>
   12f96:	47d2                	lw	a5,20(sp)
   12f98:	4732                	lw	a4,12(sp)
   12f9a:	439c                	lw	a5,0(a5)
   12f9c:	00e78023          	sb	a4,0(a5)
   12fa0:	b425                	j	129c8 <_vfprintf_r+0x7e8>
   12fa2:	47d2                	lw	a5,20(sp)
   12fa4:	4398                	lw	a4,0(a5)
   12fa6:	0791                	addi	a5,a5,4
   12fa8:	ca3e                	sw	a5,20(sp)
   12faa:	430c                	lw	a1,0(a4)
   12fac:	4350                	lw	a2,4(a4)
   12fae:	4714                	lw	a3,8(a4)
   12fb0:	4758                	lw	a4,12(a4)
   12fb2:	e52ff06f          	j	12604 <_vfprintf_r+0x424>
   12fb6:	8aba                	mv	s5,a4
   12fb8:	df5042e3          	bgtz	s5,12d9c <_vfprintf_r+0xbbc>
   12fbc:	bbed                	j	12db6 <_vfprintf_r+0xbd6>
   12fbe:	5afd                	li	s5,-1
   12fc0:	8936                	mv	s2,a3
   12fc2:	b50ff06f          	j	12312 <_vfprintf_r+0x132>
   12fc6:	67e9                	lui	a5,0x1a
   12fc8:	32878793          	addi	a5,a5,808 # 1a328 <__clzsi2+0xa8>
   12fcc:	da3e                	sw	a5,52(sp)
   12fce:	020cf793          	andi	a5,s9,32
   12fd2:	26078263          	beqz	a5,13236 <_vfprintf_r+0x1056>
   12fd6:	47d2                	lw	a5,20(sp)
   12fd8:	00778c13          	addi	s8,a5,7
   12fdc:	ff8c7c13          	andi	s8,s8,-8
   12fe0:	000c2b03          	lw	s6,0(s8)
   12fe4:	004c2d83          	lw	s11,4(s8)
   12fe8:	008c0793          	addi	a5,s8,8
   12fec:	ca3e                	sw	a5,20(sp)
   12fee:	001cf793          	andi	a5,s9,1
   12ff2:	cf81                	beqz	a5,1300a <_vfprintf_r+0xe2a>
   12ff4:	01bb67b3          	or	a5,s6,s11
   12ff8:	cb89                	beqz	a5,1300a <_vfprintf_r+0xe2a>
   12ffa:	03000793          	li	a5,48
   12ffe:	0af10423          	sb	a5,168(sp)
   13002:	0b1104a3          	sb	a7,169(sp)
   13006:	002cec93          	ori	s9,s9,2
   1300a:	bffcfe93          	andi	t4,s9,-1025
   1300e:	4789                	li	a5,2
   13010:	d6aff06f          	j	1257a <_vfprintf_r+0x39a>
   13014:	8ee6                	mv	t4,s9
   13016:	b289                	j	12958 <_vfprintf_r+0x778>
   13018:	67e9                	lui	a5,0x1a
   1301a:	31478793          	addi	a5,a5,788 # 1a314 <__clzsi2+0x94>
   1301e:	da3e                	sw	a5,52(sp)
   13020:	b77d                	j	12fce <_vfprintf_r+0xdee>
   13022:	00194883          	lbu	a7,1(s2)
   13026:	200cec93          	ori	s9,s9,512
   1302a:	0905                	addi	s2,s2,1
   1302c:	ae4ff06f          	j	12310 <_vfprintf_r+0x130>
   13030:	00194883          	lbu	a7,1(s2)
   13034:	020cec93          	ori	s9,s9,32
   13038:	0905                	addi	s2,s2,1
   1303a:	ad6ff06f          	j	12310 <_vfprintf_r+0x130>
   1303e:	4522                	lw	a0,8(sp)
   13040:	01d0                	addi	a2,sp,196
   13042:	85a6                	mv	a1,s1
   13044:	5e7000ef          	jal	13e2a <__sprint_r>
   13048:	be051ae3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   1304c:	463e                	lw	a2,204(sp)
   1304e:	844e                	mv	s0,s3
   13050:	bc29                	j	12a6a <_vfprintf_r+0x88a>
   13052:	4799                	li	a5,6
   13054:	8b56                	mv	s6,s5
   13056:	6b57ed63          	bltu	a5,s5,13710 <_vfprintf_r+0x1530>
   1305a:	67e9                	lui	a5,0x1a
   1305c:	8dda                	mv	s11,s6
   1305e:	ca62                	sw	s8,20(sp)
   13060:	33c78d13          	addi	s10,a5,828 # 1a33c <__clzsi2+0xbc>
   13064:	afcff06f          	j	12360 <_vfprintf_r+0x180>
   13068:	6869                	lui	a6,0x1a
   1306a:	45c1                	li	a1,16
   1306c:	472e                	lw	a4,200(sp)
   1306e:	67080813          	addi	a6,a6,1648 # 1a670 <zeroes.0>
   13072:	4755db63          	bge	a1,s5,134e8 <_vfprintf_r+0x1308>
   13076:	87a2                	mv	a5,s0
   13078:	4c41                	li	s8,16
   1307a:	4b1d                	li	s6,7
   1307c:	8442                	mv	s0,a6
   1307e:	a021                	j	13086 <_vfprintf_r+0xea6>
   13080:	1ac1                	addi	s5,s5,-16
   13082:	475c5163          	bge	s8,s5,134e4 <_vfprintf_r+0x1304>
   13086:	0641                	addi	a2,a2,16
   13088:	0705                	addi	a4,a4,1
   1308a:	c380                	sw	s0,0(a5)
   1308c:	0187a223          	sw	s8,4(a5)
   13090:	c7b2                	sw	a2,204(sp)
   13092:	c5ba                	sw	a4,200(sp)
   13094:	07a1                	addi	a5,a5,8
   13096:	feeb55e3          	bge	s6,a4,13080 <_vfprintf_r+0xea0>
   1309a:	4522                	lw	a0,8(sp)
   1309c:	01d0                	addi	a2,sp,196
   1309e:	85a6                	mv	a1,s1
   130a0:	58b000ef          	jal	13e2a <__sprint_r>
   130a4:	b8051ce3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   130a8:	463e                	lw	a2,204(sp)
   130aa:	472e                	lw	a4,200(sp)
   130ac:	87ce                	mv	a5,s3
   130ae:	bfc9                	j	13080 <_vfprintf_r+0xea0>
   130b0:	5742                	lw	a4,48(sp)
   130b2:	57b2                	lw	a5,44(sp)
   130b4:	459d                	li	a1,7
   130b6:	c018                	sw	a4,0(s0)
   130b8:	472e                	lw	a4,200(sp)
   130ba:	963e                	add	a2,a2,a5
   130bc:	c05c                	sw	a5,4(s0)
   130be:	0705                	addi	a4,a4,1
   130c0:	c7b2                	sw	a2,204(sp)
   130c2:	c5ba                	sw	a4,200(sp)
   130c4:	0421                	addi	s0,s0,8
   130c6:	d2e5d1e3          	bge	a1,a4,12de8 <_vfprintf_r+0xc08>
   130ca:	4522                	lw	a0,8(sp)
   130cc:	01d0                	addi	a2,sp,196
   130ce:	85a6                	mv	a1,s1
   130d0:	55b000ef          	jal	13e2a <__sprint_r>
   130d4:	b60514e3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   130d8:	5aba                	lw	s5,172(sp)
   130da:	463e                	lw	a2,204(sp)
   130dc:	844e                	mv	s0,s3
   130de:	b329                	j	12de8 <_vfprintf_r+0xc08>
   130e0:	07800793          	li	a5,120
   130e4:	03000713          	li	a4,48
   130e8:	0ae10423          	sb	a4,168(sp)
   130ec:	0af104a3          	sb	a5,169(sp)
   130f0:	06300713          	li	a4,99
   130f4:	c802                	sw	zero,16(sp)
   130f6:	002cec93          	ori	s9,s9,2
   130fa:	12c10d13          	addi	s10,sp,300
   130fe:	d5575c63          	bge	a4,s5,12656 <_vfprintf_r+0x476>
   13102:	4522                	lw	a0,8(sp)
   13104:	001a8593          	addi	a1,s5,1
   13108:	c846                	sw	a7,16(sp)
   1310a:	f60fe0ef          	jal	1186a <_malloc_r>
   1310e:	48c2                	lw	a7,16(sp)
   13110:	8d2a                	mv	s10,a0
   13112:	460502e3          	beqz	a0,13d76 <_vfprintf_r+0x1b96>
   13116:	c82a                	sw	a0,16(sp)
   13118:	d3eff06f          	j	12656 <_vfprintf_r+0x476>
   1311c:	4522                	lw	a0,8(sp)
   1311e:	09010b13          	addi	s6,sp,144
   13122:	1178                	addi	a4,sp,172
   13124:	0bc10813          	addi	a6,sp,188
   13128:	191c                	addi	a5,sp,176
   1312a:	86d6                	mv	a3,s5
   1312c:	4609                	li	a2,2
   1312e:	85da                	mv	a1,s6
   13130:	d446                	sw	a7,40(sp)
   13132:	c97e                	sw	t6,144(sp)
   13134:	d27e                	sw	t6,36(sp)
   13136:	cb7a                	sw	t5,148(sp)
   13138:	d07a                	sw	t5,32(sp)
   1313a:	cd76                	sw	t4,152(sp)
   1313c:	ce76                	sw	t4,28(sp)
   1313e:	cf62                	sw	s8,156(sp)
   13140:	5e2010ef          	jal	14722 <_ldtoa_r>
   13144:	001cf713          	andi	a4,s9,1
   13148:	4ef2                	lw	t4,28(sp)
   1314a:	5f02                	lw	t5,32(sp)
   1314c:	5f92                	lw	t6,36(sp)
   1314e:	58a2                	lw	a7,40(sp)
   13150:	8d2a                	mv	s10,a0
   13152:	62071163          	bnez	a4,13774 <_vfprintf_r+0x1594>
   13156:	57ba                	lw	a5,172(sp)
   13158:	ce3e                	sw	a5,28(sp)
   1315a:	57fa                	lw	a5,188(sp)
   1315c:	8f89                	sub	a5,a5,a0
   1315e:	d03e                	sw	a5,32(sp)
   13160:	47f2                	lw	a5,28(sp)
   13162:	5775                	li	a4,-3
   13164:	00e7c463          	blt	a5,a4,1316c <_vfprintf_r+0xf8c>
   13168:	0efadbe3          	bge	s5,a5,13a5e <_vfprintf_r+0x187e>
   1316c:	47f2                	lw	a5,28(sp)
   1316e:	18f9                	addi	a7,a7,-2
   13170:	fff78713          	addi	a4,a5,-1
   13174:	d73a                	sw	a4,172(sp)
   13176:	0ff8f693          	zext.b	a3,a7
   1317a:	4601                	li	a2,0
   1317c:	0ad10a23          	sb	a3,180(sp)
   13180:	02b00693          	li	a3,43
   13184:	00075763          	bgez	a4,13192 <_vfprintf_r+0xfb2>
   13188:	47f2                	lw	a5,28(sp)
   1318a:	4705                	li	a4,1
   1318c:	02d00693          	li	a3,45
   13190:	8f1d                	sub	a4,a4,a5
   13192:	0ad10aa3          	sb	a3,181(sp)
   13196:	46a5                	li	a3,9
   13198:	2ae6d1e3          	bge	a3,a4,13c3a <_vfprintf_r+0x1a5a>
   1319c:	0c310813          	addi	a6,sp,195
   131a0:	85c2                	mv	a1,a6
   131a2:	4529                	li	a0,10
   131a4:	06300f13          	li	t5,99
   131a8:	02a767b3          	rem	a5,a4,a0
   131ac:	862e                	mv	a2,a1
   131ae:	86ba                	mv	a3,a4
   131b0:	15fd                	addi	a1,a1,-1
   131b2:	03078793          	addi	a5,a5,48
   131b6:	fef60fa3          	sb	a5,-1(a2)
   131ba:	02a74733          	div	a4,a4,a0
   131be:	fedf45e3          	blt	t5,a3,131a8 <_vfprintf_r+0xfc8>
   131c2:	03070713          	addi	a4,a4,48
   131c6:	ffe60693          	addi	a3,a2,-2
   131ca:	fee58fa3          	sb	a4,-1(a1)
   131ce:	3706fce3          	bgeu	a3,a6,13d46 <_vfprintf_r+0x1b66>
   131d2:	0b610713          	addi	a4,sp,182
   131d6:	0006c783          	lbu	a5,0(a3)
   131da:	0685                	addi	a3,a3,1
   131dc:	0705                	addi	a4,a4,1
   131de:	fef70fa3          	sb	a5,-1(a4)
   131e2:	ff069ae3          	bne	a3,a6,131d6 <_vfprintf_r+0xff6>
   131e6:	0b1c                	addi	a5,sp,400
   131e8:	40c78733          	sub	a4,a5,a2
   131ec:	f3770793          	addi	a5,a4,-201
   131f0:	c0be                	sw	a5,64(sp)
   131f2:	5782                	lw	a5,32(sp)
   131f4:	4686                	lw	a3,64(sp)
   131f6:	4705                	li	a4,1
   131f8:	00d78b33          	add	s6,a5,a3
   131fc:	26f758e3          	bge	a4,a5,13c6c <_vfprintf_r+0x1a8c>
   13200:	57b2                	lw	a5,44(sp)
   13202:	9b3e                	add	s6,s6,a5
   13204:	fffb4693          	not	a3,s6
   13208:	bffcfe13          	andi	t3,s9,-1025
   1320c:	86fd                	srai	a3,a3,0x1f
   1320e:	100e6793          	ori	a5,t3,256
   13212:	c6be                	sw	a5,76(sp)
   13214:	00db7db3          	and	s11,s6,a3
   13218:	d402                	sw	zero,40(sp)
   1321a:	d202                	sw	zero,36(sp)
   1321c:	ce02                	sw	zero,28(sp)
   1321e:	57e2                	lw	a5,56(sp)
   13220:	020786e3          	beqz	a5,13a4c <_vfprintf_r+0x186c>
   13224:	02d00713          	li	a4,45
   13228:	4cb6                	lw	s9,76(sp)
   1322a:	0ae103a3          	sb	a4,167(sp)
   1322e:	4a81                	li	s5,0
   13230:	0d85                	addi	s11,s11,1
   13232:	938ff06f          	j	1236a <_vfprintf_r+0x18a>
   13236:	4752                	lw	a4,20(sp)
   13238:	010cf793          	andi	a5,s9,16
   1323c:	00072b03          	lw	s6,0(a4)
   13240:	0711                	addi	a4,a4,4
   13242:	ca3a                	sw	a4,20(sp)
   13244:	e7a9                	bnez	a5,1328e <_vfprintf_r+0x10ae>
   13246:	040cf793          	andi	a5,s9,64
   1324a:	cf95                	beqz	a5,13286 <_vfprintf_r+0x10a6>
   1324c:	0b42                	slli	s6,s6,0x10
   1324e:	010b5b13          	srli	s6,s6,0x10
   13252:	4d81                	li	s11,0
   13254:	bb69                	j	12fee <_vfprintf_r+0xe0e>
   13256:	4522                	lw	a0,8(sp)
   13258:	01d0                	addi	a2,sp,196
   1325a:	85a6                	mv	a1,s1
   1325c:	3cf000ef          	jal	13e2a <__sprint_r>
   13260:	9c051ee3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   13264:	4c3e                	lw	s8,204(sp)
   13266:	4aae                	lw	s5,200(sp)
   13268:	8b4e                	mv	s6,s3
   1326a:	c6eff06f          	j	126d8 <_vfprintf_r+0x4f8>
   1326e:	4522                	lw	a0,8(sp)
   13270:	01d0                	addi	a2,sp,196
   13272:	85a6                	mv	a1,s1
   13274:	3b7000ef          	jal	13e2a <__sprint_r>
   13278:	9c0512e3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   1327c:	4c3e                	lw	s8,204(sp)
   1327e:	4aae                	lw	s5,200(sp)
   13280:	8b4e                	mv	s6,s3
   13282:	c72ff06f          	j	126f4 <_vfprintf_r+0x514>
   13286:	200cf793          	andi	a5,s9,512
   1328a:	4a079963          	bnez	a5,1373c <_vfprintf_r+0x155c>
   1328e:	4d81                	li	s11,0
   13290:	bbb9                	j	12fee <_vfprintf_r+0xe0e>
   13292:	ccccd837          	lui	a6,0xccccd
   13296:	ccccdcb7          	lui	s9,0xccccd
   1329a:	5772                	lw	a4,60(sp)
   1329c:	400eff13          	andi	t5,t4,1024
   132a0:	4601                	li	a2,0
   132a2:	0b0c                	addi	a1,sp,400
   132a4:	4e15                	li	t3,5
   132a6:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccb1271>
   132aa:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccb1270>
   132ae:	0ff00c13          	li	s8,255
   132b2:	a081                	j	132f2 <_vfprintf_r+0x1112>
   132b4:	016d37b3          	sltu	a5,s10,s6
   132b8:	97ea                	add	a5,a5,s10
   132ba:	03c7f7b3          	remu	a5,a5,t3
   132be:	40fb07b3          	sub	a5,s6,a5
   132c2:	00fb35b3          	sltu	a1,s6,a5
   132c6:	40bd85b3          	sub	a1,s11,a1
   132ca:	03978333          	mul	t1,a5,s9
   132ce:	030585b3          	mul	a1,a1,a6
   132d2:	0307b533          	mulhu	a0,a5,a6
   132d6:	959a                	add	a1,a1,t1
   132d8:	030787b3          	mul	a5,a5,a6
   132dc:	95aa                	add	a1,a1,a0
   132de:	01f59513          	slli	a0,a1,0x1f
   132e2:	8185                	srli	a1,a1,0x1
   132e4:	8385                	srli	a5,a5,0x1
   132e6:	8fc9                	or	a5,a5,a0
   132e8:	7c0d8763          	beqz	s11,13ab6 <_vfprintf_r+0x18d6>
   132ec:	8dae                	mv	s11,a1
   132ee:	8b3e                	mv	s6,a5
   132f0:	85b6                	mv	a1,a3
   132f2:	01bb0d33          	add	s10,s6,s11
   132f6:	016d37b3          	sltu	a5,s10,s6
   132fa:	97ea                	add	a5,a5,s10
   132fc:	03c7f7b3          	remu	a5,a5,t3
   13300:	fff58693          	addi	a3,a1,-1
   13304:	0605                	addi	a2,a2,1
   13306:	40fb07b3          	sub	a5,s6,a5
   1330a:	00fb3533          	sltu	a0,s6,a5
   1330e:	40ad8533          	sub	a0,s11,a0
   13312:	0307b333          	mulhu	t1,a5,a6
   13316:	03050533          	mul	a0,a0,a6
   1331a:	030787b3          	mul	a5,a5,a6
   1331e:	951a                	add	a0,a0,t1
   13320:	057e                	slli	a0,a0,0x1f
   13322:	8385                	srli	a5,a5,0x1
   13324:	8fc9                	or	a5,a5,a0
   13326:	00279513          	slli	a0,a5,0x2
   1332a:	97aa                	add	a5,a5,a0
   1332c:	0786                	slli	a5,a5,0x1
   1332e:	40fb07b3          	sub	a5,s6,a5
   13332:	03078793          	addi	a5,a5,48
   13336:	fef58fa3          	sb	a5,-1(a1)
   1333a:	f60f0de3          	beqz	t5,132b4 <_vfprintf_r+0x10d4>
   1333e:	00074783          	lbu	a5,0(a4)
   13342:	f6f619e3          	bne	a2,a5,132b4 <_vfprintf_r+0x10d4>
   13346:	f78607e3          	beq	a2,s8,132b4 <_vfprintf_r+0x10d4>
   1334a:	1c0d9563          	bnez	s11,13514 <_vfprintf_r+0x1334>
   1334e:	47a5                	li	a5,9
   13350:	1d67e263          	bltu	a5,s6,13514 <_vfprintf_r+0x1334>
   13354:	8d36                	mv	s10,a3
   13356:	0b1c                	addi	a5,sp,400
   13358:	d032                	sw	a2,32(sp)
   1335a:	de3a                	sw	a4,60(sp)
   1335c:	41a78b33          	sub	s6,a5,s10
   13360:	8cf6                	mv	s9,t4
   13362:	9d2ff06f          	j	12534 <_vfprintf_r+0x354>
   13366:	472e                	lw	a4,200(sp)
   13368:	65e9                	lui	a1,0x1a
   1336a:	34458593          	addi	a1,a1,836 # 1a344 <__clzsi2+0xc4>
   1336e:	c00c                	sw	a1,0(s0)
   13370:	0605                	addi	a2,a2,1
   13372:	4585                	li	a1,1
   13374:	0705                	addi	a4,a4,1
   13376:	c04c                	sw	a1,4(s0)
   13378:	c7b2                	sw	a2,204(sp)
   1337a:	c5ba                	sw	a4,200(sp)
   1337c:	459d                	li	a1,7
   1337e:	0421                	addi	s0,s0,8
   13380:	36e5c063          	blt	a1,a4,136e0 <_vfprintf_r+0x1500>
   13384:	e569                	bnez	a0,1344e <_vfprintf_r+0x126e>
   13386:	5782                	lw	a5,32(sp)
   13388:	001cf713          	andi	a4,s9,1
   1338c:	8f5d                	or	a4,a4,a5
   1338e:	e319                	bnez	a4,13394 <_vfprintf_r+0x11b4>
   13390:	868ff06f          	j	123f8 <_vfprintf_r+0x218>
   13394:	5742                	lw	a4,48(sp)
   13396:	57b2                	lw	a5,44(sp)
   13398:	459d                	li	a1,7
   1339a:	c018                	sw	a4,0(s0)
   1339c:	472e                	lw	a4,200(sp)
   1339e:	963e                	add	a2,a2,a5
   133a0:	c05c                	sw	a5,4(s0)
   133a2:	0705                	addi	a4,a4,1
   133a4:	c7b2                	sw	a2,204(sp)
   133a6:	c5ba                	sw	a4,200(sp)
   133a8:	3ae5cb63          	blt	a1,a4,1375e <_vfprintf_r+0x157e>
   133ac:	0421                	addi	s0,s0,8
   133ae:	a87d                	j	1346c <_vfprintf_r+0x128c>
   133b0:	4522                	lw	a0,8(sp)
   133b2:	cf2fd0ef          	jal	108a4 <__sinit>
   133b6:	e69fe06f          	j	1221e <_vfprintf_r+0x3e>
   133ba:	4522                	lw	a0,8(sp)
   133bc:	01d0                	addi	a2,sp,196
   133be:	85a6                	mv	a1,s1
   133c0:	26b000ef          	jal	13e2a <__sprint_r>
   133c4:	86051ce3          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   133c8:	463e                	lw	a2,204(sp)
   133ca:	844e                	mv	s0,s3
   133cc:	e78ff06f          	j	12a44 <_vfprintf_r+0x864>
   133d0:	886a                	mv	a6,s10
   133d2:	01042023          	sw	a6,0(s0)
   133d6:	01542223          	sw	s5,4(s0)
   133da:	9656                	add	a2,a2,s5
   133dc:	0785                	addi	a5,a5,1
   133de:	c7b2                	sw	a2,204(sp)
   133e0:	c5be                	sw	a5,200(sp)
   133e2:	471d                	li	a4,7
   133e4:	00f74463          	blt	a4,a5,133ec <_vfprintf_r+0x120c>
   133e8:	80eff06f          	j	123f6 <_vfprintf_r+0x216>
   133ec:	b70ff06f          	j	1275c <_vfprintf_r+0x57c>
   133f0:	47ce                	lw	a5,208(sp)
   133f2:	010c                	addi	a1,sp,128
   133f4:	0908                	addi	a0,sp,144
   133f6:	c93e                	sw	a5,144(sp)
   133f8:	47de                	lw	a5,212(sp)
   133fa:	c102                	sw	zero,128(sp)
   133fc:	c302                	sw	zero,132(sp)
   133fe:	cb3e                	sw	a5,148(sp)
   13400:	47ee                	lw	a5,216(sp)
   13402:	c502                	sw	zero,136(sp)
   13404:	c702                	sw	zero,140(sp)
   13406:	cd3e                	sw	a5,152(sp)
   13408:	47fe                	lw	a5,220(sp)
   1340a:	cf3e                	sw	a5,156(sp)
   1340c:	3dd040ef          	jal	17fe8 <__letf2>
   13410:	48c2                	lw	a7,16(sp)
   13412:	6a054a63          	bltz	a0,13ac6 <_vfprintf_r+0x18e6>
   13416:	0a714703          	lbu	a4,167(sp)
   1341a:	04700793          	li	a5,71
   1341e:	2d17db63          	bge	a5,a7,136f4 <_vfprintf_r+0x1514>
   13422:	67e9                	lui	a5,0x1a
   13424:	30878d13          	addi	s10,a5,776 # 1a308 <__clzsi2+0x88>
   13428:	c802                	sw	zero,16(sp)
   1342a:	d402                	sw	zero,40(sp)
   1342c:	d202                	sw	zero,36(sp)
   1342e:	ce02                	sw	zero,28(sp)
   13430:	f7fcfc93          	andi	s9,s9,-129
   13434:	4d8d                	li	s11,3
   13436:	4b0d                	li	s6,3
   13438:	4a81                	li	s5,0
   1343a:	90071963          	bnez	a4,1254c <_vfprintf_r+0x36c>
   1343e:	f2dfe06f          	j	1236a <_vfprintf_r+0x18a>
   13442:	47d2                	lw	a5,20(sp)
   13444:	4732                	lw	a4,12(sp)
   13446:	439c                	lw	a5,0(a5)
   13448:	c398                	sw	a4,0(a5)
   1344a:	d7eff06f          	j	129c8 <_vfprintf_r+0x7e8>
   1344e:	5742                	lw	a4,48(sp)
   13450:	57b2                	lw	a5,44(sp)
   13452:	459d                	li	a1,7
   13454:	c018                	sw	a4,0(s0)
   13456:	472e                	lw	a4,200(sp)
   13458:	963e                	add	a2,a2,a5
   1345a:	c05c                	sw	a5,4(s0)
   1345c:	0705                	addi	a4,a4,1
   1345e:	c7b2                	sw	a2,204(sp)
   13460:	c5ba                	sw	a4,200(sp)
   13462:	0421                	addi	s0,s0,8
   13464:	2ee5cd63          	blt	a1,a4,1375e <_vfprintf_r+0x157e>
   13468:	74054a63          	bltz	a0,13bbc <_vfprintf_r+0x19dc>
   1346c:	5782                	lw	a5,32(sp)
   1346e:	0705                	addi	a4,a4,1
   13470:	01a42023          	sw	s10,0(s0)
   13474:	963e                	add	a2,a2,a5
   13476:	c05c                	sw	a5,4(s0)
   13478:	c7b2                	sw	a2,204(sp)
   1347a:	c5ba                	sw	a4,200(sp)
   1347c:	479d                	li	a5,7
   1347e:	00e7c463          	blt	a5,a4,13486 <_vfprintf_r+0x12a6>
   13482:	f75fe06f          	j	123f6 <_vfprintf_r+0x216>
   13486:	ad6ff06f          	j	1275c <_vfprintf_r+0x57c>
   1348a:	856a                	mv	a0,s10
   1348c:	dc46                	sw	a7,56(sp)
   1348e:	fb1fd0ef          	jal	1143e <strlen>
   13492:	0a714703          	lbu	a4,167(sp)
   13496:	fff54693          	not	a3,a0
   1349a:	86fd                	srai	a3,a3,0x1f
   1349c:	ca62                	sw	s8,20(sp)
   1349e:	c802                	sw	zero,16(sp)
   134a0:	d402                	sw	zero,40(sp)
   134a2:	d202                	sw	zero,36(sp)
   134a4:	ce02                	sw	zero,28(sp)
   134a6:	58e2                	lw	a7,56(sp)
   134a8:	8b2a                	mv	s6,a0
   134aa:	00d57db3          	and	s11,a0,a3
   134ae:	4a81                	li	s5,0
   134b0:	c319                	beqz	a4,134b6 <_vfprintf_r+0x12d6>
   134b2:	89aff06f          	j	1254c <_vfprintf_r+0x36c>
   134b6:	eb5fe06f          	j	1236a <_vfprintf_r+0x18a>
   134ba:	884a                	mv	a6,s2
   134bc:	4972                	lw	s2,28(sp)
   134be:	9c22                	add	s8,s8,s0
   134c0:	0a85                	addi	s5,s5,1
   134c2:	010b2023          	sw	a6,0(s6)
   134c6:	a64ff06f          	j	1272a <_vfprintf_r+0x54a>
   134ca:	47fe                	lw	a5,220(sp)
   134cc:	2607cc63          	bltz	a5,13744 <_vfprintf_r+0x1564>
   134d0:	0a714703          	lbu	a4,167(sp)
   134d4:	04700793          	li	a5,71
   134d8:	6317ca63          	blt	a5,a7,13b0c <_vfprintf_r+0x192c>
   134dc:	67e9                	lui	a5,0x1a
   134de:	30c78d13          	addi	s10,a5,780 # 1a30c <__clzsi2+0x8c>
   134e2:	b799                	j	13428 <_vfprintf_r+0x1248>
   134e4:	8822                	mv	a6,s0
   134e6:	843e                	mv	s0,a5
   134e8:	9656                	add	a2,a2,s5
   134ea:	0705                	addi	a4,a4,1
   134ec:	01042023          	sw	a6,0(s0)
   134f0:	01542223          	sw	s5,4(s0)
   134f4:	c7b2                	sw	a2,204(sp)
   134f6:	c5ba                	sw	a4,200(sp)
   134f8:	459d                	li	a1,7
   134fa:	0421                	addi	s0,s0,8
   134fc:	8ce5d7e3          	bge	a1,a4,12dca <_vfprintf_r+0xbea>
   13500:	4522                	lw	a0,8(sp)
   13502:	01d0                	addi	a2,sp,196
   13504:	85a6                	mv	a1,s1
   13506:	125000ef          	jal	13e2a <__sprint_r>
   1350a:	f2051963          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   1350e:	463e                	lw	a2,204(sp)
   13510:	844e                	mv	s0,s3
   13512:	b865                	j	12dca <_vfprintf_r+0xbea>
   13514:	47a6                	lw	a5,72(sp)
   13516:	4596                	lw	a1,68(sp)
   13518:	dc42                	sw	a6,56(sp)
   1351a:	8e9d                	sub	a3,a3,a5
   1351c:	863e                	mv	a2,a5
   1351e:	8536                	mv	a0,a3
   13520:	d47a                	sw	t5,40(sp)
   13522:	d276                	sw	t4,36(sp)
   13524:	d046                	sw	a7,32(sp)
   13526:	ce3a                	sw	a4,28(sp)
   13528:	c836                	sw	a3,16(sp)
   1352a:	737000ef          	jal	14460 <strncpy>
   1352e:	016d37b3          	sltu	a5,s10,s6
   13532:	4615                	li	a2,5
   13534:	97ea                	add	a5,a5,s10
   13536:	02c7f7b3          	remu	a5,a5,a2
   1353a:	4772                	lw	a4,28(sp)
   1353c:	ccccd337          	lui	t1,0xccccd
   13540:	ccccd537          	lui	a0,0xccccd
   13544:	00174583          	lbu	a1,1(a4)
   13548:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccb1271>
   1354c:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccb1270>
   13550:	00b035b3          	snez	a1,a1
   13554:	972e                	add	a4,a4,a1
   13556:	46c2                	lw	a3,16(sp)
   13558:	5882                	lw	a7,32(sp)
   1355a:	5e92                	lw	t4,36(sp)
   1355c:	5f22                	lw	t5,40(sp)
   1355e:	5862                	lw	a6,56(sp)
   13560:	4601                	li	a2,0
   13562:	4e15                	li	t3,5
   13564:	40fb07b3          	sub	a5,s6,a5
   13568:	00fb35b3          	sltu	a1,s6,a5
   1356c:	40bd85b3          	sub	a1,s11,a1
   13570:	02a78533          	mul	a0,a5,a0
   13574:	026585b3          	mul	a1,a1,t1
   13578:	0267bfb3          	mulhu	t6,a5,t1
   1357c:	95aa                	add	a1,a1,a0
   1357e:	02678533          	mul	a0,a5,t1
   13582:	95fe                	add	a1,a1,t6
   13584:	01f59793          	slli	a5,a1,0x1f
   13588:	8185                	srli	a1,a1,0x1
   1358a:	8105                	srli	a0,a0,0x1
   1358c:	8fc9                	or	a5,a5,a0
   1358e:	bbb9                	j	132ec <_vfprintf_r+0x110c>
   13590:	5782                	lw	a5,32(sp)
   13592:	5b12                	lw	s6,36(sp)
   13594:	68e9                	lui	a7,0x1a
   13596:	97ea                	add	a5,a5,s10
   13598:	dc4a                	sw	s2,56(sp)
   1359a:	c6e6                	sw	s9,76(sp)
   1359c:	c8de                	sw	s7,80(sp)
   1359e:	d26e                	sw	s11,36(sp)
   135a0:	5da2                	lw	s11,40(sp)
   135a2:	d46a                	sw	s10,40(sp)
   135a4:	5cf2                	lw	s9,60(sp)
   135a6:	8d62                	mv	s10,s8
   135a8:	4922                	lw	s2,8(sp)
   135aa:	4c26                	lw	s8,72(sp)
   135ac:	481d                	li	a6,7
   135ae:	4741                	li	a4,16
   135b0:	67088a93          	addi	s5,a7,1648 # 1a670 <zeroes.0>
   135b4:	85a2                	mv	a1,s0
   135b6:	8bbe                	mv	s7,a5
   135b8:	07605363          	blez	s6,1361e <_vfprintf_r+0x143e>
   135bc:	0fb05663          	blez	s11,136a8 <_vfprintf_r+0x14c8>
   135c0:	1dfd                	addi	s11,s11,-1
   135c2:	4796                	lw	a5,68(sp)
   135c4:	9662                	add	a2,a2,s8
   135c6:	0185a223          	sw	s8,4(a1)
   135ca:	c19c                	sw	a5,0(a1)
   135cc:	47ae                	lw	a5,200(sp)
   135ce:	c7b2                	sw	a2,204(sp)
   135d0:	05a1                	addi	a1,a1,8
   135d2:	0785                	addi	a5,a5,1
   135d4:	c5be                	sw	a5,200(sp)
   135d6:	0cf84c63          	blt	a6,a5,136ae <_vfprintf_r+0x14ce>
   135da:	000cc683          	lbu	a3,0(s9)
   135de:	41ab8433          	sub	s0,s7,s10
   135e2:	0086d363          	bge	a3,s0,135e8 <_vfprintf_r+0x1408>
   135e6:	8436                	mv	s0,a3
   135e8:	00805f63          	blez	s0,13606 <_vfprintf_r+0x1426>
   135ec:	46ae                	lw	a3,200(sp)
   135ee:	9622                	add	a2,a2,s0
   135f0:	01a5a023          	sw	s10,0(a1)
   135f4:	0685                	addi	a3,a3,1
   135f6:	c1c0                	sw	s0,4(a1)
   135f8:	c7b2                	sw	a2,204(sp)
   135fa:	c5b6                	sw	a3,200(sp)
   135fc:	0cd84563          	blt	a6,a3,136c6 <_vfprintf_r+0x14e6>
   13600:	000cc683          	lbu	a3,0(s9)
   13604:	05a1                	addi	a1,a1,8
   13606:	fff44513          	not	a0,s0
   1360a:	857d                	srai	a0,a0,0x1f
   1360c:	00a477b3          	and	a5,s0,a0
   13610:	40f68433          	sub	s0,a3,a5
   13614:	02804763          	bgtz	s0,13642 <_vfprintf_r+0x1462>
   13618:	9d36                	add	s10,s10,a3
   1361a:	fb6041e3          	bgtz	s6,135bc <_vfprintf_r+0x13dc>
   1361e:	fbb041e3          	bgtz	s11,135c0 <_vfprintf_r+0x13e0>
   13622:	5782                	lw	a5,32(sp)
   13624:	8c6a                	mv	s8,s10
   13626:	5d22                	lw	s10,40(sp)
   13628:	de66                	sw	s9,60(sp)
   1362a:	5962                	lw	s2,56(sp)
   1362c:	00fd0733          	add	a4,s10,a5
   13630:	4cb6                	lw	s9,76(sp)
   13632:	4bc6                	lw	s7,80(sp)
   13634:	5d92                	lw	s11,36(sp)
   13636:	842e                	mv	s0,a1
   13638:	fb877063          	bgeu	a4,s8,12dd8 <_vfprintf_r+0xbf8>
   1363c:	8c3a                	mv	s8,a4
   1363e:	f9aff06f          	j	12dd8 <_vfprintf_r+0xbf8>
   13642:	6f69                	lui	t5,0x1a
   13644:	46ae                	lw	a3,200(sp)
   13646:	670f0f13          	addi	t5,t5,1648 # 1a670 <zeroes.0>
   1364a:	04875163          	bge	a4,s0,1368c <_vfprintf_r+0x14ac>
   1364e:	ce56                	sw	s5,28(sp)
   13650:	a021                	j	13658 <_vfprintf_r+0x1478>
   13652:	1441                	addi	s0,s0,-16
   13654:	02875b63          	bge	a4,s0,1368a <_vfprintf_r+0x14aa>
   13658:	0641                	addi	a2,a2,16
   1365a:	0685                	addi	a3,a3,1
   1365c:	0155a023          	sw	s5,0(a1)
   13660:	c1d8                	sw	a4,4(a1)
   13662:	c7b2                	sw	a2,204(sp)
   13664:	c5b6                	sw	a3,200(sp)
   13666:	05a1                	addi	a1,a1,8
   13668:	fed855e3          	bge	a6,a3,13652 <_vfprintf_r+0x1472>
   1366c:	01d0                	addi	a2,sp,196
   1366e:	85a6                	mv	a1,s1
   13670:	854a                	mv	a0,s2
   13672:	7b8000ef          	jal	13e2a <__sprint_r>
   13676:	dc051363          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   1367a:	4741                	li	a4,16
   1367c:	1441                	addi	s0,s0,-16
   1367e:	463e                	lw	a2,204(sp)
   13680:	46ae                	lw	a3,200(sp)
   13682:	85ce                	mv	a1,s3
   13684:	481d                	li	a6,7
   13686:	fc8749e3          	blt	a4,s0,13658 <_vfprintf_r+0x1478>
   1368a:	4f72                	lw	t5,28(sp)
   1368c:	9622                	add	a2,a2,s0
   1368e:	0685                	addi	a3,a3,1
   13690:	01e5a023          	sw	t5,0(a1)
   13694:	c1c0                	sw	s0,4(a1)
   13696:	c7b2                	sw	a2,204(sp)
   13698:	c5b6                	sw	a3,200(sp)
   1369a:	40d84063          	blt	a6,a3,13a9a <_vfprintf_r+0x18ba>
   1369e:	000cc683          	lbu	a3,0(s9)
   136a2:	05a1                	addi	a1,a1,8
   136a4:	9d36                	add	s10,s10,a3
   136a6:	bf95                	j	1361a <_vfprintf_r+0x143a>
   136a8:	1cfd                	addi	s9,s9,-1
   136aa:	1b7d                	addi	s6,s6,-1
   136ac:	bf19                	j	135c2 <_vfprintf_r+0x13e2>
   136ae:	01d0                	addi	a2,sp,196
   136b0:	85a6                	mv	a1,s1
   136b2:	854a                	mv	a0,s2
   136b4:	776000ef          	jal	13e2a <__sprint_r>
   136b8:	d8051263          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   136bc:	463e                	lw	a2,204(sp)
   136be:	85ce                	mv	a1,s3
   136c0:	4741                	li	a4,16
   136c2:	481d                	li	a6,7
   136c4:	bf19                	j	135da <_vfprintf_r+0x13fa>
   136c6:	01d0                	addi	a2,sp,196
   136c8:	85a6                	mv	a1,s1
   136ca:	854a                	mv	a0,s2
   136cc:	2fb9                	jal	13e2a <__sprint_r>
   136ce:	d6051763          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   136d2:	000cc683          	lbu	a3,0(s9)
   136d6:	463e                	lw	a2,204(sp)
   136d8:	85ce                	mv	a1,s3
   136da:	4741                	li	a4,16
   136dc:	481d                	li	a6,7
   136de:	b725                	j	13606 <_vfprintf_r+0x1426>
   136e0:	4522                	lw	a0,8(sp)
   136e2:	01d0                	addi	a2,sp,196
   136e4:	85a6                	mv	a1,s1
   136e6:	2791                	jal	13e2a <__sprint_r>
   136e8:	d4051a63          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   136ec:	553a                	lw	a0,172(sp)
   136ee:	463e                	lw	a2,204(sp)
   136f0:	844e                	mv	s0,s3
   136f2:	b949                	j	13384 <_vfprintf_r+0x11a4>
   136f4:	67e9                	lui	a5,0x1a
   136f6:	30478d13          	addi	s10,a5,772 # 1a304 <__clzsi2+0x84>
   136fa:	b33d                	j	13428 <_vfprintf_r+0x1248>
   136fc:	4522                	lw	a0,8(sp)
   136fe:	01d0                	addi	a2,sp,196
   13700:	85a6                	mv	a1,s1
   13702:	2725                	jal	13e2a <__sprint_r>
   13704:	d2051c63          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   13708:	463e                	lw	a2,204(sp)
   1370a:	844e                	mv	s0,s3
   1370c:	eaaff06f          	j	12db6 <_vfprintf_r+0xbd6>
   13710:	4b19                	li	s6,6
   13712:	b2a1                	j	1305a <_vfprintf_r+0xe7a>
   13714:	47d2                	lw	a5,20(sp)
   13716:	4732                	lw	a4,12(sp)
   13718:	439c                	lw	a5,0(a5)
   1371a:	00e79023          	sh	a4,0(a5)
   1371e:	aaaff06f          	j	129c8 <_vfprintf_r+0x7e8>
   13722:	0b62                	slli	s6,s6,0x18
   13724:	418b5b13          	srai	s6,s6,0x18
   13728:	41fb5d93          	srai	s11,s6,0x1f
   1372c:	87ee                	mv	a5,s11
   1372e:	de5fe06f          	j	12512 <_vfprintf_r+0x332>
   13732:	0ffb7b13          	zext.b	s6,s6
   13736:	4d81                	li	s11,0
   13738:	e3dfe06f          	j	12574 <_vfprintf_r+0x394>
   1373c:	0ffb7b13          	zext.b	s6,s6
   13740:	4d81                	li	s11,0
   13742:	b075                	j	12fee <_vfprintf_r+0xe0e>
   13744:	02d00793          	li	a5,45
   13748:	0af103a3          	sb	a5,167(sp)
   1374c:	02d00713          	li	a4,45
   13750:	b351                	j	134d4 <_vfprintf_r+0x12f4>
   13752:	4522                	lw	a0,8(sp)
   13754:	01d0                	addi	a2,sp,196
   13756:	85a6                	mv	a1,s1
   13758:	2dc9                	jal	13e2a <__sprint_r>
   1375a:	ce3fe06f          	j	1243c <_vfprintf_r+0x25c>
   1375e:	4522                	lw	a0,8(sp)
   13760:	01d0                	addi	a2,sp,196
   13762:	85a6                	mv	a1,s1
   13764:	25d9                	jal	13e2a <__sprint_r>
   13766:	cc051b63          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   1376a:	553a                	lw	a0,172(sp)
   1376c:	463e                	lw	a2,204(sp)
   1376e:	472e                	lw	a4,200(sp)
   13770:	844e                	mv	s0,s3
   13772:	b9dd                	j	13468 <_vfprintf_r+0x1288>
   13774:	01550733          	add	a4,a0,s5
   13778:	04700613          	li	a2,71
   1377c:	010c                	addi	a1,sp,128
   1377e:	855a                	mv	a0,s6
   13780:	d23a                	sw	a4,36(sp)
   13782:	d032                	sw	a2,32(sp)
   13784:	ce46                	sw	a7,28(sp)
   13786:	c97e                	sw	t6,144(sp)
   13788:	cb7a                	sw	t5,148(sp)
   1378a:	cd76                	sw	t4,152(sp)
   1378c:	cf62                	sw	s8,156(sp)
   1378e:	c102                	sw	zero,128(sp)
   13790:	c302                	sw	zero,132(sp)
   13792:	c502                	sw	zero,136(sp)
   13794:	c702                	sw	zero,140(sp)
   13796:	67a040ef          	jal	17e10 <__eqtf2>
   1379a:	48f2                	lw	a7,28(sp)
   1379c:	5602                	lw	a2,32(sp)
   1379e:	5712                	lw	a4,36(sp)
   137a0:	36050a63          	beqz	a0,13b14 <_vfprintf_r+0x1934>
   137a4:	57fa                	lw	a5,188(sp)
   137a6:	00e7fc63          	bgeu	a5,a4,137be <_vfprintf_r+0x15de>
   137aa:	03000593          	li	a1,48
   137ae:	00178693          	addi	a3,a5,1
   137b2:	df36                	sw	a3,188(sp)
   137b4:	00b78023          	sb	a1,0(a5)
   137b8:	57fa                	lw	a5,188(sp)
   137ba:	fee7eae3          	bltu	a5,a4,137ae <_vfprintf_r+0x15ce>
   137be:	573a                	lw	a4,172(sp)
   137c0:	ce3a                	sw	a4,28(sp)
   137c2:	41a787b3          	sub	a5,a5,s10
   137c6:	04700713          	li	a4,71
   137ca:	d03e                	sw	a5,32(sp)
   137cc:	98e60ae3          	beq	a2,a4,13160 <_vfprintf_r+0xf80>
   137d0:	04600713          	li	a4,70
   137d4:	38e60863          	beq	a2,a4,13b64 <_vfprintf_r+0x1984>
   137d8:	47f2                	lw	a5,28(sp)
   137da:	fff78713          	addi	a4,a5,-1
   137de:	ba59                	j	13174 <_vfprintf_r+0xf94>
   137e0:	001a8693          	addi	a3,s5,1
   137e4:	4609                	li	a2,2
   137e6:	4522                	lw	a0,8(sp)
   137e8:	09010b13          	addi	s6,sp,144
   137ec:	1178                	addi	a4,sp,172
   137ee:	85da                	mv	a1,s6
   137f0:	0bc10813          	addi	a6,sp,188
   137f4:	191c                	addi	a5,sp,176
   137f6:	c8c6                	sw	a7,80(sp)
   137f8:	d436                	sw	a3,40(sp)
   137fa:	c97e                	sw	t6,144(sp)
   137fc:	d27e                	sw	t6,36(sp)
   137fe:	cb7a                	sw	t5,148(sp)
   13800:	d07a                	sw	t5,32(sp)
   13802:	cd76                	sw	t4,152(sp)
   13804:	ce76                	sw	t4,28(sp)
   13806:	cf62                	sw	s8,156(sp)
   13808:	71b000ef          	jal	14722 <_ldtoa_r>
   1380c:	48c6                	lw	a7,80(sp)
   1380e:	56a2                	lw	a3,40(sp)
   13810:	04600593          	li	a1,70
   13814:	fdf8f613          	andi	a2,a7,-33
   13818:	4ef2                	lw	t4,28(sp)
   1381a:	5f02                	lw	t5,32(sp)
   1381c:	5f92                	lw	t6,36(sp)
   1381e:	8d2a                	mv	s10,a0
   13820:	00d50733          	add	a4,a0,a3
   13824:	54b61563          	bne	a2,a1,13d6e <_vfprintf_r+0x1b8e>
   13828:	000d4503          	lbu	a0,0(s10)
   1382c:	03000593          	li	a1,48
   13830:	2eb50663          	beq	a0,a1,13b1c <_vfprintf_r+0x193c>
   13834:	56ba                	lw	a3,172(sp)
   13836:	010c                	addi	a1,sp,128
   13838:	9736                	add	a4,a4,a3
   1383a:	b791                	j	1377e <_vfprintf_r+0x159e>
   1383c:	09010b13          	addi	s6,sp,144
   13840:	010c                	addi	a1,sp,128
   13842:	1170                	addi	a2,sp,172
   13844:	855a                	mv	a0,s6
   13846:	c0c6                	sw	a7,64(sp)
   13848:	c17e                	sw	t6,128(sp)
   1384a:	c37a                	sw	t5,132(sp)
   1384c:	c576                	sw	t4,136(sp)
   1384e:	ce2e                	sw	a1,28(sp)
   13850:	c762                	sw	s8,140(sp)
   13852:	575000ef          	jal	145c6 <frexpl>
   13856:	474a                	lw	a4,144(sp)
   13858:	45f2                	lw	a1,28(sp)
   1385a:	1890                	addi	a2,sp,112
   1385c:	c13a                	sw	a4,128(sp)
   1385e:	475a                	lw	a4,148(sp)
   13860:	855a                	mv	a0,s6
   13862:	d882                	sw	zero,112(sp)
   13864:	c33a                	sw	a4,132(sp)
   13866:	476a                	lw	a4,152(sp)
   13868:	da82                	sw	zero,116(sp)
   1386a:	dc82                	sw	zero,120(sp)
   1386c:	c53a                	sw	a4,136(sp)
   1386e:	477a                	lw	a4,156(sp)
   13870:	c73a                	sw	a4,140(sp)
   13872:	3ffc0737          	lui	a4,0x3ffc0
   13876:	deba                	sw	a4,124(sp)
   13878:	05d040ef          	jal	180d4 <__multf3>
   1387c:	45f2                	lw	a1,28(sp)
   1387e:	4f4a                	lw	t5,144(sp)
   13880:	4eda                	lw	t4,148(sp)
   13882:	486a                	lw	a6,152(sp)
   13884:	855a                	mv	a0,s6
   13886:	d42e                	sw	a1,40(sp)
   13888:	d27a                	sw	t5,36(sp)
   1388a:	d076                	sw	t4,32(sp)
   1388c:	ce42                	sw	a6,28(sp)
   1388e:	c102                	sw	zero,128(sp)
   13890:	c302                	sw	zero,132(sp)
   13892:	c502                	sw	zero,136(sp)
   13894:	c702                	sw	zero,140(sp)
   13896:	57a040ef          	jal	17e10 <__eqtf2>
   1389a:	4dfa                	lw	s11,156(sp)
   1389c:	4872                	lw	a6,28(sp)
   1389e:	5e82                	lw	t4,32(sp)
   138a0:	5f12                	lw	t5,36(sp)
   138a2:	55a2                	lw	a1,40(sp)
   138a4:	4886                	lw	a7,64(sp)
   138a6:	e119                	bnez	a0,138ac <_vfprintf_r+0x16cc>
   138a8:	4705                	li	a4,1
   138aa:	d73a                	sw	a4,172(sp)
   138ac:	06100713          	li	a4,97
   138b0:	44e88d63          	beq	a7,a4,13d0a <_vfprintf_r+0x1b2a>
   138b4:	6769                	lui	a4,0x1a
   138b6:	32870793          	addi	a5,a4,808 # 1a328 <__clzsi2+0xa8>
   138ba:	ce3e                	sw	a5,28(sp)
   138bc:	d04a                	sw	s2,32(sp)
   138be:	d466                	sw	s9,40(sp)
   138c0:	c0de                	sw	s7,64(sp)
   138c2:	c6a2                	sw	s0,76(sp)
   138c4:	896a                	mv	s2,s10
   138c6:	c8a6                	sw	s1,80(sp)
   138c8:	caea                	sw	s10,84(sp)
   138ca:	44f2                	lw	s1,28(sp)
   138cc:	1afd                	addi	s5,s5,-1
   138ce:	d246                	sw	a7,36(sp)
   138d0:	8bfa                	mv	s7,t5
   138d2:	8c76                	mv	s8,t4
   138d4:	8cc2                	mv	s9,a6
   138d6:	8d6e                	mv	s10,s11
   138d8:	842e                	mv	s0,a1
   138da:	a015                	j	138fe <_vfprintf_r+0x171e>
   138dc:	85a2                	mv	a1,s0
   138de:	855a                	mv	a0,s6
   138e0:	c95e                	sw	s7,144(sp)
   138e2:	cb62                	sw	s8,148(sp)
   138e4:	cd66                	sw	s9,152(sp)
   138e6:	cf6a                	sw	s10,156(sp)
   138e8:	c102                	sw	zero,128(sp)
   138ea:	c302                	sw	zero,132(sp)
   138ec:	c502                	sw	zero,136(sp)
   138ee:	c702                	sw	zero,140(sp)
   138f0:	fffa8d93          	addi	s11,s5,-1
   138f4:	51c040ef          	jal	17e10 <__eqtf2>
   138f8:	3c050c63          	beqz	a0,13cd0 <_vfprintf_r+0x1af0>
   138fc:	8aee                	mv	s5,s11
   138fe:	400307b7          	lui	a5,0x40030
   13902:	1890                	addi	a2,sp,112
   13904:	85a2                	mv	a1,s0
   13906:	855a                	mv	a0,s6
   13908:	debe                	sw	a5,124(sp)
   1390a:	c15e                	sw	s7,128(sp)
   1390c:	c362                	sw	s8,132(sp)
   1390e:	c566                	sw	s9,136(sp)
   13910:	c76a                	sw	s10,140(sp)
   13912:	d882                	sw	zero,112(sp)
   13914:	da82                	sw	zero,116(sp)
   13916:	dc82                	sw	zero,120(sp)
   13918:	7bc040ef          	jal	180d4 <__multf3>
   1391c:	855a                	mv	a0,s6
   1391e:	5e0060ef          	jal	19efe <__fixtfsi>
   13922:	85aa                	mv	a1,a0
   13924:	8daa                	mv	s11,a0
   13926:	855a                	mv	a0,s6
   13928:	4d4a                	lw	s10,144(sp)
   1392a:	4cda                	lw	s9,148(sp)
   1392c:	4c6a                	lw	s8,152(sp)
   1392e:	4bfa                	lw	s7,156(sp)
   13930:	6f2060ef          	jal	1a022 <__floatsitf>
   13934:	46ca                	lw	a3,144(sp)
   13936:	1090                	addi	a2,sp,96
   13938:	188c                	addi	a1,sp,112
   1393a:	d0b6                	sw	a3,96(sp)
   1393c:	46da                	lw	a3,148(sp)
   1393e:	8522                	mv	a0,s0
   13940:	d8ea                	sw	s10,112(sp)
   13942:	d2b6                	sw	a3,100(sp)
   13944:	46ea                	lw	a3,152(sp)
   13946:	dae6                	sw	s9,116(sp)
   13948:	dce2                	sw	s8,120(sp)
   1394a:	d4b6                	sw	a3,104(sp)
   1394c:	46fa                	lw	a3,156(sp)
   1394e:	dede                	sw	s7,124(sp)
   13950:	d6b6                	sw	a3,108(sp)
   13952:	41e050ef          	jal	18d70 <__subtf3>
   13956:	01b486b3          	add	a3,s1,s11
   1395a:	0006c603          	lbu	a2,0(a3)
   1395e:	8fca                	mv	t6,s2
   13960:	0905                	addi	s2,s2,1
   13962:	4b8a                	lw	s7,128(sp)
   13964:	4c1a                	lw	s8,132(sp)
   13966:	4caa                	lw	s9,136(sp)
   13968:	4d3a                	lw	s10,140(sp)
   1396a:	57fd                	li	a5,-1
   1396c:	fec90fa3          	sb	a2,-1(s2)
   13970:	f6fa96e3          	bne	s5,a5,138dc <_vfprintf_r+0x16fc>
   13974:	5892                	lw	a7,36(sp)
   13976:	8f5e                	mv	t5,s7
   13978:	8ee2                	mv	t4,s8
   1397a:	8866                	mv	a6,s9
   1397c:	85a2                	mv	a1,s0
   1397e:	ccee                	sw	s11,88(sp)
   13980:	3ffe0ab7          	lui	s5,0x3ffe0
   13984:	8dea                	mv	s11,s10
   13986:	855a                	mv	a0,s6
   13988:	cec6                	sw	a7,92(sp)
   1398a:	d27e                	sw	t6,36(sp)
   1398c:	44c6                	lw	s1,80(sp)
   1398e:	4b86                	lw	s7,64(sp)
   13990:	5ca2                	lw	s9,40(sp)
   13992:	4436                	lw	s0,76(sp)
   13994:	c97a                	sw	t5,144(sp)
   13996:	c8fa                	sw	t5,80(sp)
   13998:	cb76                	sw	t4,148(sp)
   1399a:	c6f6                	sw	t4,76(sp)
   1399c:	cd42                	sw	a6,152(sp)
   1399e:	c0c2                	sw	a6,64(sp)
   139a0:	cf6e                	sw	s11,156(sp)
   139a2:	c102                	sw	zero,128(sp)
   139a4:	c302                	sw	zero,132(sp)
   139a6:	c502                	sw	zero,136(sp)
   139a8:	c756                	sw	s5,140(sp)
   139aa:	d42e                	sw	a1,40(sp)
   139ac:	550040ef          	jal	17efc <__getf2>
   139b0:	8c4a                	mv	s8,s2
   139b2:	4d56                	lw	s10,84(sp)
   139b4:	5902                	lw	s2,32(sp)
   139b6:	5f92                	lw	t6,36(sp)
   139b8:	48f6                	lw	a7,92(sp)
   139ba:	00a04e63          	bgtz	a0,139d6 <_vfprintf_r+0x17f6>
   139be:	55a2                	lw	a1,40(sp)
   139c0:	855a                	mv	a0,s6
   139c2:	d046                	sw	a7,32(sp)
   139c4:	44c040ef          	jal	17e10 <__eqtf2>
   139c8:	5882                	lw	a7,32(sp)
   139ca:	e529                	bnez	a0,13a14 <_vfprintf_r+0x1834>
   139cc:	47e6                	lw	a5,88(sp)
   139ce:	5f92                	lw	t6,36(sp)
   139d0:	0017f693          	andi	a3,a5,1
   139d4:	c2a1                	beqz	a3,13a14 <_vfprintf_r+0x1834>
   139d6:	47f2                	lw	a5,28(sp)
   139d8:	df7e                	sw	t6,188(sp)
   139da:	fffc4603          	lbu	a2,-1(s8)
   139de:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x400145b3>
   139e2:	86e2                	mv	a3,s8
   139e4:	00b61e63          	bne	a2,a1,13a00 <_vfprintf_r+0x1820>
   139e8:	03000513          	li	a0,48
   139ec:	fea68fa3          	sb	a0,-1(a3)
   139f0:	56fa                	lw	a3,188(sp)
   139f2:	fff68793          	addi	a5,a3,-1
   139f6:	df3e                	sw	a5,188(sp)
   139f8:	fff6c603          	lbu	a2,-1(a3)
   139fc:	fec588e3          	beq	a1,a2,139ec <_vfprintf_r+0x180c>
   13a00:	00160593          	addi	a1,a2,1
   13a04:	03900513          	li	a0,57
   13a08:	0ff5f593          	zext.b	a1,a1
   13a0c:	02a60c63          	beq	a2,a0,13a44 <_vfprintf_r+0x1864>
   13a10:	feb68fa3          	sb	a1,-1(a3)
   13a14:	57ba                	lw	a5,172(sp)
   13a16:	41ac0733          	sub	a4,s8,s10
   13a1a:	d03a                	sw	a4,32(sp)
   13a1c:	fff78713          	addi	a4,a5,-1
   13a20:	ce3e                	sw	a5,28(sp)
   13a22:	06100613          	li	a2,97
   13a26:	d73a                	sw	a4,172(sp)
   13a28:	07000693          	li	a3,112
   13a2c:	00c88663          	beq	a7,a2,13a38 <_vfprintf_r+0x1858>
   13a30:	05000693          	li	a3,80
   13a34:	04100893          	li	a7,65
   13a38:	4605                	li	a2,1
   13a3a:	f42ff06f          	j	1317c <_vfprintf_r+0xf9c>
   13a3e:	86d6                	mv	a3,s5
   13a40:	460d                	li	a2,3
   13a42:	b355                	j	137e6 <_vfprintf_r+0x1606>
   13a44:	47f2                	lw	a5,28(sp)
   13a46:	00a7c583          	lbu	a1,10(a5)
   13a4a:	b7d9                	j	13a10 <_vfprintf_r+0x1830>
   13a4c:	0a714703          	lbu	a4,167(sp)
   13a50:	4cb6                	lw	s9,76(sp)
   13a52:	4a81                	li	s5,0
   13a54:	c319                	beqz	a4,13a5a <_vfprintf_r+0x187a>
   13a56:	af7fe06f          	j	1254c <_vfprintf_r+0x36c>
   13a5a:	911fe06f          	j	1236a <_vfprintf_r+0x18a>
   13a5e:	5782                	lw	a5,32(sp)
   13a60:	4772                	lw	a4,28(sp)
   13a62:	12f74763          	blt	a4,a5,13b90 <_vfprintf_r+0x19b0>
   13a66:	47f2                	lw	a5,28(sp)
   13a68:	001cf713          	andi	a4,s9,1
   13a6c:	8b3e                	mv	s6,a5
   13a6e:	c701                	beqz	a4,13a76 <_vfprintf_r+0x1896>
   13a70:	5732                	lw	a4,44(sp)
   13a72:	00e78b33          	add	s6,a5,a4
   13a76:	400cfe13          	andi	t3,s9,1024
   13a7a:	000e0563          	beqz	t3,13a84 <_vfprintf_r+0x18a4>
   13a7e:	47f2                	lw	a5,28(sp)
   13a80:	1ef04c63          	bgtz	a5,13c78 <_vfprintf_r+0x1a98>
   13a84:	fffb4693          	not	a3,s6
   13a88:	86fd                	srai	a3,a3,0x1f
   13a8a:	00db7db3          	and	s11,s6,a3
   13a8e:	06700893          	li	a7,103
   13a92:	d402                	sw	zero,40(sp)
   13a94:	d202                	sw	zero,36(sp)
   13a96:	f88ff06f          	j	1321e <_vfprintf_r+0x103e>
   13a9a:	01d0                	addi	a2,sp,196
   13a9c:	85a6                	mv	a1,s1
   13a9e:	854a                	mv	a0,s2
   13aa0:	2669                	jal	13e2a <__sprint_r>
   13aa2:	98051d63          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   13aa6:	000cc683          	lbu	a3,0(s9)
   13aaa:	463e                	lw	a2,204(sp)
   13aac:	85ce                	mv	a1,s3
   13aae:	4741                	li	a4,16
   13ab0:	481d                	li	a6,7
   13ab2:	9d36                	add	s10,s10,a3
   13ab4:	b69d                	j	1361a <_vfprintf_r+0x143a>
   13ab6:	4525                	li	a0,9
   13ab8:	83656ae3          	bltu	a0,s6,132ec <_vfprintf_r+0x110c>
   13abc:	b861                	j	13354 <_vfprintf_r+0x1174>
   13abe:	57fd                	li	a5,-1
   13ac0:	c63e                	sw	a5,12(sp)
   13ac2:	9adfe06f          	j	1246e <_vfprintf_r+0x28e>
   13ac6:	02d00793          	li	a5,45
   13aca:	0af103a3          	sb	a5,167(sp)
   13ace:	02d00713          	li	a4,45
   13ad2:	b2a1                	j	1341a <_vfprintf_r+0x123a>
   13ad4:	0a714703          	lbu	a4,167(sp)
   13ad8:	ca62                	sw	s8,20(sp)
   13ada:	d402                	sw	zero,40(sp)
   13adc:	d202                	sw	zero,36(sp)
   13ade:	ce02                	sw	zero,28(sp)
   13ae0:	8dd6                	mv	s11,s5
   13ae2:	8b56                	mv	s6,s5
   13ae4:	4a81                	li	s5,0
   13ae6:	c319                	beqz	a4,13aec <_vfprintf_r+0x190c>
   13ae8:	a65fe06f          	j	1254c <_vfprintf_r+0x36c>
   13aec:	87ffe06f          	j	1236a <_vfprintf_r+0x18a>
   13af0:	4522                	lw	a0,8(sp)
   13af2:	01d0                	addi	a2,sp,196
   13af4:	85a6                	mv	a1,s1
   13af6:	2e15                	jal	13e2a <__sprint_r>
   13af8:	94051263          	bnez	a0,12c3c <_vfprintf_r+0xa5c>
   13afc:	5aba                	lw	s5,172(sp)
   13afe:	5782                	lw	a5,32(sp)
   13b00:	463e                	lw	a2,204(sp)
   13b02:	844e                	mv	s0,s3
   13b04:	41578ab3          	sub	s5,a5,s5
   13b08:	b12ff06f          	j	12e1a <_vfprintf_r+0xc3a>
   13b0c:	67e9                	lui	a5,0x1a
   13b0e:	31078d13          	addi	s10,a5,784 # 1a310 <__clzsi2+0x90>
   13b12:	ba19                	j	13428 <_vfprintf_r+0x1248>
   13b14:	57ba                	lw	a5,172(sp)
   13b16:	ce3e                	sw	a5,28(sp)
   13b18:	87ba                	mv	a5,a4
   13b1a:	b165                	j	137c2 <_vfprintf_r+0x15e2>
   13b1c:	010c                	addi	a1,sp,128
   13b1e:	855a                	mv	a0,s6
   13b20:	ceba                	sw	a4,92(sp)
   13b22:	ccb2                	sw	a2,88(sp)
   13b24:	cac6                	sw	a7,84(sp)
   13b26:	c8b6                	sw	a3,80(sp)
   13b28:	c97e                	sw	t6,144(sp)
   13b2a:	d47e                	sw	t6,40(sp)
   13b2c:	cb7a                	sw	t5,148(sp)
   13b2e:	d27a                	sw	t5,36(sp)
   13b30:	cd76                	sw	t4,152(sp)
   13b32:	d076                	sw	t4,32(sp)
   13b34:	ce2e                	sw	a1,28(sp)
   13b36:	cf62                	sw	s8,156(sp)
   13b38:	c102                	sw	zero,128(sp)
   13b3a:	c302                	sw	zero,132(sp)
   13b3c:	c502                	sw	zero,136(sp)
   13b3e:	c702                	sw	zero,140(sp)
   13b40:	2d0040ef          	jal	17e10 <__eqtf2>
   13b44:	45f2                	lw	a1,28(sp)
   13b46:	5e82                	lw	t4,32(sp)
   13b48:	5f12                	lw	t5,36(sp)
   13b4a:	5fa2                	lw	t6,40(sp)
   13b4c:	46c6                	lw	a3,80(sp)
   13b4e:	48d6                	lw	a7,84(sp)
   13b50:	4666                	lw	a2,88(sp)
   13b52:	4776                	lw	a4,92(sp)
   13b54:	1c051063          	bnez	a0,13d14 <_vfprintf_r+0x1b34>
   13b58:	57ba                	lw	a5,172(sp)
   13b5a:	973e                	add	a4,a4,a5
   13b5c:	ce3e                	sw	a5,28(sp)
   13b5e:	41a707b3          	sub	a5,a4,s10
   13b62:	d03e                	sw	a5,32(sp)
   13b64:	47f2                	lw	a5,28(sp)
   13b66:	001cf713          	andi	a4,s9,1
   13b6a:	01576733          	or	a4,a4,s5
   13b6e:	1af05963          	blez	a5,13d20 <_vfprintf_r+0x1b40>
   13b72:	18071463          	bnez	a4,13cfa <_vfprintf_r+0x1b1a>
   13b76:	4b72                	lw	s6,28(sp)
   13b78:	06600893          	li	a7,102
   13b7c:	400cfe13          	andi	t3,s9,1024
   13b80:	0e0e1e63          	bnez	t3,13c7c <_vfprintf_r+0x1a9c>
   13b84:	fffb4693          	not	a3,s6
   13b88:	86fd                	srai	a3,a3,0x1f
   13b8a:	00db7db3          	and	s11,s6,a3
   13b8e:	b711                	j	13a92 <_vfprintf_r+0x18b2>
   13b90:	5782                	lw	a5,32(sp)
   13b92:	5732                	lw	a4,44(sp)
   13b94:	06700893          	li	a7,103
   13b98:	00e78b33          	add	s6,a5,a4
   13b9c:	47f2                	lw	a5,28(sp)
   13b9e:	fcf04fe3          	bgtz	a5,13b7c <_vfprintf_r+0x199c>
   13ba2:	40fb0f33          	sub	t5,s6,a5
   13ba6:	001f0b13          	addi	s6,t5,1
   13baa:	fffb4693          	not	a3,s6
   13bae:	86fd                	srai	a3,a3,0x1f
   13bb0:	00db7db3          	and	s11,s6,a3
   13bb4:	bdf9                	j	13a92 <_vfprintf_r+0x18b2>
   13bb6:	8ee6                	mv	t4,s9
   13bb8:	cf5fe06f          	j	128ac <_vfprintf_r+0x6cc>
   13bbc:	6869                	lui	a6,0x1a
   13bbe:	55c1                	li	a1,-16
   13bc0:	40a00ab3          	neg	s5,a0
   13bc4:	67080813          	addi	a6,a6,1648 # 1a670 <zeroes.0>
   13bc8:	04b55263          	bge	a0,a1,13c0c <_vfprintf_r+0x1a2c>
   13bcc:	ce4a                	sw	s2,28(sp)
   13bce:	4b41                	li	s6,16
   13bd0:	4c1d                	li	s8,7
   13bd2:	8942                	mv	s2,a6
   13bd4:	a021                	j	13bdc <_vfprintf_r+0x19fc>
   13bd6:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc4594>
   13bd8:	035b5863          	bge	s6,s5,13c08 <_vfprintf_r+0x1a28>
   13bdc:	0641                	addi	a2,a2,16
   13bde:	0705                	addi	a4,a4,1
   13be0:	01242023          	sw	s2,0(s0)
   13be4:	01642223          	sw	s6,4(s0)
   13be8:	c7b2                	sw	a2,204(sp)
   13bea:	c5ba                	sw	a4,200(sp)
   13bec:	0421                	addi	s0,s0,8
   13bee:	feec54e3          	bge	s8,a4,13bd6 <_vfprintf_r+0x19f6>
   13bf2:	4522                	lw	a0,8(sp)
   13bf4:	01d0                	addi	a2,sp,196
   13bf6:	85a6                	mv	a1,s1
   13bf8:	2c0d                	jal	13e2a <__sprint_r>
   13bfa:	c119                	beqz	a0,13c00 <_vfprintf_r+0x1a20>
   13bfc:	840ff06f          	j	12c3c <_vfprintf_r+0xa5c>
   13c00:	463e                	lw	a2,204(sp)
   13c02:	472e                	lw	a4,200(sp)
   13c04:	844e                	mv	s0,s3
   13c06:	bfc1                	j	13bd6 <_vfprintf_r+0x19f6>
   13c08:	884a                	mv	a6,s2
   13c0a:	4972                	lw	s2,28(sp)
   13c0c:	9656                	add	a2,a2,s5
   13c0e:	0705                	addi	a4,a4,1
   13c10:	01042023          	sw	a6,0(s0)
   13c14:	01542223          	sw	s5,4(s0)
   13c18:	c7b2                	sw	a2,204(sp)
   13c1a:	c5ba                	sw	a4,200(sp)
   13c1c:	459d                	li	a1,7
   13c1e:	f8e5d763          	bge	a1,a4,133ac <_vfprintf_r+0x11cc>
   13c22:	4522                	lw	a0,8(sp)
   13c24:	01d0                	addi	a2,sp,196
   13c26:	85a6                	mv	a1,s1
   13c28:	2409                	jal	13e2a <__sprint_r>
   13c2a:	c119                	beqz	a0,13c30 <_vfprintf_r+0x1a50>
   13c2c:	810ff06f          	j	12c3c <_vfprintf_r+0xa5c>
   13c30:	463e                	lw	a2,204(sp)
   13c32:	472e                	lw	a4,200(sp)
   13c34:	844e                	mv	s0,s3
   13c36:	837ff06f          	j	1346c <_vfprintf_r+0x128c>
   13c3a:	0b610693          	addi	a3,sp,182
   13c3e:	e619                	bnez	a2,13c4c <_vfprintf_r+0x1a6c>
   13c40:	03000693          	li	a3,48
   13c44:	0ad10b23          	sb	a3,182(sp)
   13c48:	0b710693          	addi	a3,sp,183
   13c4c:	0b1c                	addi	a5,sp,400
   13c4e:	40f68633          	sub	a2,a3,a5
   13c52:	03070713          	addi	a4,a4,48
   13c56:	0dd60793          	addi	a5,a2,221
   13c5a:	00e68023          	sb	a4,0(a3)
   13c5e:	c0be                	sw	a5,64(sp)
   13c60:	d92ff06f          	j	131f2 <_vfprintf_r+0x1012>
   13c64:	c802                	sw	zero,16(sp)
   13c66:	4a99                	li	s5,6
   13c68:	9effe06f          	j	12656 <_vfprintf_r+0x476>
   13c6c:	001cf713          	andi	a4,s9,1
   13c70:	d8070a63          	beqz	a4,13204 <_vfprintf_r+0x1024>
   13c74:	d8cff06f          	j	13200 <_vfprintf_r+0x1020>
   13c78:	06700893          	li	a7,103
   13c7c:	5672                	lw	a2,60(sp)
   13c7e:	0ff00693          	li	a3,255
   13c82:	00064703          	lbu	a4,0(a2)
   13c86:	0ed70163          	beq	a4,a3,13d68 <_vfprintf_r+0x1b88>
   13c8a:	47f2                	lw	a5,28(sp)
   13c8c:	4501                	li	a0,0
   13c8e:	4581                	li	a1,0
   13c90:	00f75a63          	bge	a4,a5,13ca4 <_vfprintf_r+0x1ac4>
   13c94:	8f99                	sub	a5,a5,a4
   13c96:	00164703          	lbu	a4,1(a2)
   13c9a:	c71d                	beqz	a4,13cc8 <_vfprintf_r+0x1ae8>
   13c9c:	0585                	addi	a1,a1,1
   13c9e:	0605                	addi	a2,a2,1
   13ca0:	fed718e3          	bne	a4,a3,13c90 <_vfprintf_r+0x1ab0>
   13ca4:	de32                	sw	a2,60(sp)
   13ca6:	d22e                	sw	a1,36(sp)
   13ca8:	d42a                	sw	a0,40(sp)
   13caa:	ce3e                	sw	a5,28(sp)
   13cac:	57a2                	lw	a5,40(sp)
   13cae:	5712                	lw	a4,36(sp)
   13cb0:	973e                	add	a4,a4,a5
   13cb2:	47a6                	lw	a5,72(sp)
   13cb4:	02f70733          	mul	a4,a4,a5
   13cb8:	9b3a                	add	s6,s6,a4
   13cba:	fffb4693          	not	a3,s6
   13cbe:	86fd                	srai	a3,a3,0x1f
   13cc0:	00db7db3          	and	s11,s6,a3
   13cc4:	d5aff06f          	j	1321e <_vfprintf_r+0x103e>
   13cc8:	00064703          	lbu	a4,0(a2)
   13ccc:	0505                	addi	a0,a0,1
   13cce:	bfc9                	j	13ca0 <_vfprintf_r+0x1ac0>
   13cd0:	8c4a                	mv	s8,s2
   13cd2:	001a8693          	addi	a3,s5,1
   13cd6:	5892                	lw	a7,36(sp)
   13cd8:	5ca2                	lw	s9,40(sp)
   13cda:	4b86                	lw	s7,64(sp)
   13cdc:	4436                	lw	s0,76(sp)
   13cde:	5902                	lw	s2,32(sp)
   13ce0:	44c6                	lw	s1,80(sp)
   13ce2:	4d56                	lw	s10,84(sp)
   13ce4:	96e2                	add	a3,a3,s8
   13ce6:	03000613          	li	a2,48
   13cea:	d20ac5e3          	bltz	s5,13a14 <_vfprintf_r+0x1834>
   13cee:	0c05                	addi	s8,s8,1
   13cf0:	fecc0fa3          	sb	a2,-1(s8)
   13cf4:	fedc1de3          	bne	s8,a3,13cee <_vfprintf_r+0x1b0e>
   13cf8:	bb31                	j	13a14 <_vfprintf_r+0x1834>
   13cfa:	5732                	lw	a4,44(sp)
   13cfc:	06600893          	li	a7,102
   13d00:	00ea8f33          	add	t5,s5,a4
   13d04:	00ff0b33          	add	s6,t5,a5
   13d08:	bd95                	j	13b7c <_vfprintf_r+0x199c>
   13d0a:	6769                	lui	a4,0x1a
   13d0c:	31470793          	addi	a5,a4,788 # 1a314 <__clzsi2+0x94>
   13d10:	ce3e                	sw	a5,28(sp)
   13d12:	b66d                	j	138bc <_vfprintf_r+0x16dc>
   13d14:	4505                	li	a0,1
   13d16:	40d506b3          	sub	a3,a0,a3
   13d1a:	d736                	sw	a3,172(sp)
   13d1c:	9736                	add	a4,a4,a3
   13d1e:	b485                	j	1377e <_vfprintf_r+0x159e>
   13d20:	e711                	bnez	a4,13d2c <_vfprintf_r+0x1b4c>
   13d22:	4d85                	li	s11,1
   13d24:	06600893          	li	a7,102
   13d28:	4b05                	li	s6,1
   13d2a:	b3a5                	j	13a92 <_vfprintf_r+0x18b2>
   13d2c:	57b2                	lw	a5,44(sp)
   13d2e:	06600893          	li	a7,102
   13d32:	00178f13          	addi	t5,a5,1
   13d36:	015f0b33          	add	s6,t5,s5
   13d3a:	fffb4693          	not	a3,s6
   13d3e:	86fd                	srai	a3,a3,0x1f
   13d40:	00db7db3          	and	s11,s6,a3
   13d44:	b3b9                	j	13a92 <_vfprintf_r+0x18b2>
   13d46:	4789                	li	a5,2
   13d48:	c0be                	sw	a5,64(sp)
   13d4a:	ca8ff06f          	j	131f2 <_vfprintf_r+0x1012>
   13d4e:	47d2                	lw	a5,20(sp)
   13d50:	0007aa83          	lw	s5,0(a5)
   13d54:	0791                	addi	a5,a5,4
   13d56:	000ad363          	bgez	s5,13d5c <_vfprintf_r+0x1b7c>
   13d5a:	5afd                	li	s5,-1
   13d5c:	00194883          	lbu	a7,1(s2)
   13d60:	ca3e                	sw	a5,20(sp)
   13d62:	8936                	mv	s2,a3
   13d64:	dacfe06f          	j	12310 <_vfprintf_r+0x130>
   13d68:	d402                	sw	zero,40(sp)
   13d6a:	d202                	sw	zero,36(sp)
   13d6c:	b781                	j	13cac <_vfprintf_r+0x1acc>
   13d6e:	04500613          	li	a2,69
   13d72:	010c                	addi	a1,sp,128
   13d74:	b429                	j	1377e <_vfprintf_r+0x159e>
   13d76:	00c4d783          	lhu	a5,12(s1)
   13d7a:	0407e793          	ori	a5,a5,64
   13d7e:	00f49623          	sh	a5,12(s1)
   13d82:	ebafe06f          	j	1243c <_vfprintf_r+0x25c>

00013d86 <vfprintf>:
   13d86:	87aa                	mv	a5,a0
   13d88:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13d8c:	86b2                	mv	a3,a2
   13d8e:	862e                	mv	a2,a1
   13d90:	85be                	mv	a1,a5
   13d92:	c4efe06f          	j	121e0 <_vfprintf_r>

00013d96 <__sbprintf>:
   13d96:	b8010113          	addi	sp,sp,-1152
   13d9a:	00c59783          	lh	a5,12(a1)
   13d9e:	00e5d703          	lhu	a4,14(a1)
   13da2:	46812c23          	sw	s0,1144(sp)
   13da6:	842e                	mv	s0,a1
   13da8:	65c1                	lui	a1,0x10
   13daa:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   13dac:	06442e03          	lw	t3,100(s0)
   13db0:	01c42303          	lw	t1,28(s0)
   13db4:	02442883          	lw	a7,36(s0)
   13db8:	0742                	slli	a4,a4,0x10
   13dba:	8fed                	and	a5,a5,a1
   13dbc:	8fd9                	or	a5,a5,a4
   13dbe:	40000813          	li	a6,1024
   13dc2:	ca3e                	sw	a5,20(sp)
   13dc4:	002c                	addi	a1,sp,8
   13dc6:	189c                	addi	a5,sp,112
   13dc8:	46912a23          	sw	s1,1140(sp)
   13dcc:	47212823          	sw	s2,1136(sp)
   13dd0:	46112e23          	sw	ra,1148(sp)
   13dd4:	892a                	mv	s2,a0
   13dd6:	d6f2                	sw	t3,108(sp)
   13dd8:	d21a                	sw	t1,36(sp)
   13dda:	d646                	sw	a7,44(sp)
   13ddc:	c43e                	sw	a5,8(sp)
   13dde:	cc3e                	sw	a5,24(sp)
   13de0:	c842                	sw	a6,16(sp)
   13de2:	ce42                	sw	a6,28(sp)
   13de4:	d002                	sw	zero,32(sp)
   13de6:	bfafe0ef          	jal	121e0 <_vfprintf_r>
   13dea:	84aa                	mv	s1,a0
   13dec:	02055963          	bgez	a0,13e1e <__sbprintf+0x88>
   13df0:	01415783          	lhu	a5,20(sp)
   13df4:	0407f793          	andi	a5,a5,64
   13df8:	c799                	beqz	a5,13e06 <__sbprintf+0x70>
   13dfa:	00c45783          	lhu	a5,12(s0)
   13dfe:	0407e793          	ori	a5,a5,64
   13e02:	00f41623          	sh	a5,12(s0)
   13e06:	47c12083          	lw	ra,1148(sp)
   13e0a:	47812403          	lw	s0,1144(sp)
   13e0e:	47012903          	lw	s2,1136(sp)
   13e12:	8526                	mv	a0,s1
   13e14:	47412483          	lw	s1,1140(sp)
   13e18:	48010113          	addi	sp,sp,1152
   13e1c:	8082                	ret
   13e1e:	002c                	addi	a1,sp,8
   13e20:	854a                	mv	a0,s2
   13e22:	2ca5                	jal	1409a <_fflush_r>
   13e24:	d571                	beqz	a0,13df0 <__sbprintf+0x5a>
   13e26:	54fd                	li	s1,-1
   13e28:	b7e1                	j	13df0 <__sbprintf+0x5a>

00013e2a <__sprint_r>:
   13e2a:	461c                	lw	a5,8(a2)
   13e2c:	1141                	addi	sp,sp,-16
   13e2e:	c422                	sw	s0,8(sp)
   13e30:	c606                	sw	ra,12(sp)
   13e32:	8432                	mv	s0,a2
   13e34:	eb81                	bnez	a5,13e44 <__sprint_r+0x1a>
   13e36:	40b2                	lw	ra,12(sp)
   13e38:	00042223          	sw	zero,4(s0)
   13e3c:	4422                	lw	s0,8(sp)
   13e3e:	4501                	li	a0,0
   13e40:	0141                	addi	sp,sp,16
   13e42:	8082                	ret
   13e44:	b0ffc0ef          	jal	10952 <__sfvwrite_r>
   13e48:	40b2                	lw	ra,12(sp)
   13e4a:	00042423          	sw	zero,8(s0)
   13e4e:	00042223          	sw	zero,4(s0)
   13e52:	4422                	lw	s0,8(sp)
   13e54:	0141                	addi	sp,sp,16
   13e56:	8082                	ret

00013e58 <_fclose_r>:
   13e58:	1141                	addi	sp,sp,-16
   13e5a:	c606                	sw	ra,12(sp)
   13e5c:	c04a                	sw	s2,0(sp)
   13e5e:	cd89                	beqz	a1,13e78 <_fclose_r+0x20>
   13e60:	c422                	sw	s0,8(sp)
   13e62:	c226                	sw	s1,4(sp)
   13e64:	842e                	mv	s0,a1
   13e66:	84aa                	mv	s1,a0
   13e68:	c119                	beqz	a0,13e6e <_fclose_r+0x16>
   13e6a:	595c                	lw	a5,52(a0)
   13e6c:	c7d1                	beqz	a5,13ef8 <_fclose_r+0xa0>
   13e6e:	00c41783          	lh	a5,12(s0)
   13e72:	eb89                	bnez	a5,13e84 <_fclose_r+0x2c>
   13e74:	4422                	lw	s0,8(sp)
   13e76:	4492                	lw	s1,4(sp)
   13e78:	40b2                	lw	ra,12(sp)
   13e7a:	4901                	li	s2,0
   13e7c:	854a                	mv	a0,s2
   13e7e:	4902                	lw	s2,0(sp)
   13e80:	0141                	addi	sp,sp,16
   13e82:	8082                	ret
   13e84:	85a2                	mv	a1,s0
   13e86:	8526                	mv	a0,s1
   13e88:	28bd                	jal	13f06 <__sflush_r>
   13e8a:	545c                	lw	a5,44(s0)
   13e8c:	892a                	mv	s2,a0
   13e8e:	c791                	beqz	a5,13e9a <_fclose_r+0x42>
   13e90:	4c4c                	lw	a1,28(s0)
   13e92:	8526                	mv	a0,s1
   13e94:	9782                	jalr	a5
   13e96:	04054663          	bltz	a0,13ee2 <_fclose_r+0x8a>
   13e9a:	00c45783          	lhu	a5,12(s0)
   13e9e:	0807f793          	andi	a5,a5,128
   13ea2:	e7b1                	bnez	a5,13eee <_fclose_r+0x96>
   13ea4:	580c                	lw	a1,48(s0)
   13ea6:	c991                	beqz	a1,13eba <_fclose_r+0x62>
   13ea8:	04040793          	addi	a5,s0,64
   13eac:	00f58563          	beq	a1,a5,13eb6 <_fclose_r+0x5e>
   13eb0:	8526                	mv	a0,s1
   13eb2:	f96fd0ef          	jal	11648 <_free_r>
   13eb6:	02042823          	sw	zero,48(s0)
   13eba:	406c                	lw	a1,68(s0)
   13ebc:	c591                	beqz	a1,13ec8 <_fclose_r+0x70>
   13ebe:	8526                	mv	a0,s1
   13ec0:	f88fd0ef          	jal	11648 <_free_r>
   13ec4:	04042223          	sw	zero,68(s0)
   13ec8:	9f3fc0ef          	jal	108ba <__sfp_lock_acquire>
   13ecc:	00041623          	sh	zero,12(s0)
   13ed0:	9edfc0ef          	jal	108bc <__sfp_lock_release>
   13ed4:	40b2                	lw	ra,12(sp)
   13ed6:	4422                	lw	s0,8(sp)
   13ed8:	4492                	lw	s1,4(sp)
   13eda:	854a                	mv	a0,s2
   13edc:	4902                	lw	s2,0(sp)
   13ede:	0141                	addi	sp,sp,16
   13ee0:	8082                	ret
   13ee2:	00c45783          	lhu	a5,12(s0)
   13ee6:	597d                	li	s2,-1
   13ee8:	0807f793          	andi	a5,a5,128
   13eec:	dfc5                	beqz	a5,13ea4 <_fclose_r+0x4c>
   13eee:	480c                	lw	a1,16(s0)
   13ef0:	8526                	mv	a0,s1
   13ef2:	f56fd0ef          	jal	11648 <_free_r>
   13ef6:	b77d                	j	13ea4 <_fclose_r+0x4c>
   13ef8:	9adfc0ef          	jal	108a4 <__sinit>
   13efc:	bf8d                	j	13e6e <_fclose_r+0x16>

00013efe <fclose>:
   13efe:	85aa                	mv	a1,a0
   13f00:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13f04:	bf91                	j	13e58 <_fclose_r>

00013f06 <__sflush_r>:
   13f06:	00c59703          	lh	a4,12(a1)
   13f0a:	1101                	addi	sp,sp,-32
   13f0c:	cc22                	sw	s0,24(sp)
   13f0e:	c64e                	sw	s3,12(sp)
   13f10:	ce06                	sw	ra,28(sp)
   13f12:	00877793          	andi	a5,a4,8
   13f16:	842e                	mv	s0,a1
   13f18:	89aa                	mv	s3,a0
   13f1a:	e7e1                	bnez	a5,13fe2 <__sflush_r+0xdc>
   13f1c:	6785                	lui	a5,0x1
   13f1e:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   13f22:	41d4                	lw	a3,4(a1)
   13f24:	8fd9                	or	a5,a5,a4
   13f26:	00f59623          	sh	a5,12(a1)
   13f2a:	10d05563          	blez	a3,14034 <__sflush_r+0x12e>
   13f2e:	02842803          	lw	a6,40(s0)
   13f32:	0a080263          	beqz	a6,13fd6 <__sflush_r+0xd0>
   13f36:	ca26                	sw	s1,20(sp)
   13f38:	01371693          	slli	a3,a4,0x13
   13f3c:	0009a483          	lw	s1,0(s3)
   13f40:	0009a023          	sw	zero,0(s3)
   13f44:	4c4c                	lw	a1,28(s0)
   13f46:	0e06ce63          	bltz	a3,14042 <__sflush_r+0x13c>
   13f4a:	4601                	li	a2,0
   13f4c:	4685                	li	a3,1
   13f4e:	854e                	mv	a0,s3
   13f50:	9802                	jalr	a6
   13f52:	57fd                	li	a5,-1
   13f54:	862a                	mv	a2,a0
   13f56:	10f50f63          	beq	a0,a5,14074 <__sflush_r+0x16e>
   13f5a:	00c41783          	lh	a5,12(s0)
   13f5e:	02842803          	lw	a6,40(s0)
   13f62:	4c4c                	lw	a1,28(s0)
   13f64:	8b91                	andi	a5,a5,4
   13f66:	c799                	beqz	a5,13f74 <__sflush_r+0x6e>
   13f68:	4058                	lw	a4,4(s0)
   13f6a:	581c                	lw	a5,48(s0)
   13f6c:	8e19                	sub	a2,a2,a4
   13f6e:	c399                	beqz	a5,13f74 <__sflush_r+0x6e>
   13f70:	5c5c                	lw	a5,60(s0)
   13f72:	8e1d                	sub	a2,a2,a5
   13f74:	4681                	li	a3,0
   13f76:	854e                	mv	a0,s3
   13f78:	9802                	jalr	a6
   13f7a:	57fd                	li	a5,-1
   13f7c:	0cf51563          	bne	a0,a5,14046 <__sflush_r+0x140>
   13f80:	0009a683          	lw	a3,0(s3)
   13f84:	47f5                	li	a5,29
   13f86:	00c41703          	lh	a4,12(s0)
   13f8a:	10d7e163          	bltu	a5,a3,1408c <__sflush_r+0x186>
   13f8e:	204007b7          	lui	a5,0x20400
   13f92:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e45a5>
   13f94:	00d7d7b3          	srl	a5,a5,a3
   13f98:	8b85                	andi	a5,a5,1
   13f9a:	cbed                	beqz	a5,1408c <__sflush_r+0x186>
   13f9c:	4810                	lw	a2,16(s0)
   13f9e:	77fd                	lui	a5,0xfffff
   13fa0:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   13fa4:	8ff9                	and	a5,a5,a4
   13fa6:	00f41623          	sh	a5,12(s0)
   13faa:	00042223          	sw	zero,4(s0)
   13fae:	c010                	sw	a2,0(s0)
   13fb0:	01371793          	slli	a5,a4,0x13
   13fb4:	0007d363          	bgez	a5,13fba <__sflush_r+0xb4>
   13fb8:	c6dd                	beqz	a3,14066 <__sflush_r+0x160>
   13fba:	580c                	lw	a1,48(s0)
   13fbc:	0099a023          	sw	s1,0(s3)
   13fc0:	c9c5                	beqz	a1,14070 <__sflush_r+0x16a>
   13fc2:	04040793          	addi	a5,s0,64
   13fc6:	00f58563          	beq	a1,a5,13fd0 <__sflush_r+0xca>
   13fca:	854e                	mv	a0,s3
   13fcc:	e7cfd0ef          	jal	11648 <_free_r>
   13fd0:	44d2                	lw	s1,20(sp)
   13fd2:	02042823          	sw	zero,48(s0)
   13fd6:	4501                	li	a0,0
   13fd8:	40f2                	lw	ra,28(sp)
   13fda:	4462                	lw	s0,24(sp)
   13fdc:	49b2                	lw	s3,12(sp)
   13fde:	6105                	addi	sp,sp,32
   13fe0:	8082                	ret
   13fe2:	c84a                	sw	s2,16(sp)
   13fe4:	0105a903          	lw	s2,16(a1)
   13fe8:	04090b63          	beqz	s2,1403e <__sflush_r+0x138>
   13fec:	ca26                	sw	s1,20(sp)
   13fee:	4184                	lw	s1,0(a1)
   13ff0:	8b0d                	andi	a4,a4,3
   13ff2:	0125a023          	sw	s2,0(a1)
   13ff6:	412484b3          	sub	s1,s1,s2
   13ffa:	4781                	li	a5,0
   13ffc:	e311                	bnez	a4,14000 <__sflush_r+0xfa>
   13ffe:	49dc                	lw	a5,20(a1)
   14000:	c41c                	sw	a5,8(s0)
   14002:	00904663          	bgtz	s1,1400e <__sflush_r+0x108>
   14006:	a81d                	j	1403c <__sflush_r+0x136>
   14008:	992a                	add	s2,s2,a0
   1400a:	02905963          	blez	s1,1403c <__sflush_r+0x136>
   1400e:	505c                	lw	a5,36(s0)
   14010:	4c4c                	lw	a1,28(s0)
   14012:	86a6                	mv	a3,s1
   14014:	864a                	mv	a2,s2
   14016:	854e                	mv	a0,s3
   14018:	9782                	jalr	a5
   1401a:	8c89                	sub	s1,s1,a0
   1401c:	fea046e3          	bgtz	a0,14008 <__sflush_r+0x102>
   14020:	00c41703          	lh	a4,12(s0)
   14024:	4942                	lw	s2,16(sp)
   14026:	04076713          	ori	a4,a4,64
   1402a:	44d2                	lw	s1,20(sp)
   1402c:	00e41623          	sh	a4,12(s0)
   14030:	557d                	li	a0,-1
   14032:	b75d                	j	13fd8 <__sflush_r+0xd2>
   14034:	5dd4                	lw	a3,60(a1)
   14036:	eed04ce3          	bgtz	a3,13f2e <__sflush_r+0x28>
   1403a:	bf71                	j	13fd6 <__sflush_r+0xd0>
   1403c:	44d2                	lw	s1,20(sp)
   1403e:	4942                	lw	s2,16(sp)
   14040:	bf59                	j	13fd6 <__sflush_r+0xd0>
   14042:	4830                	lw	a2,80(s0)
   14044:	b705                	j	13f64 <__sflush_r+0x5e>
   14046:	00c41703          	lh	a4,12(s0)
   1404a:	4814                	lw	a3,16(s0)
   1404c:	77fd                	lui	a5,0xfffff
   1404e:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   14052:	8ff9                	and	a5,a5,a4
   14054:	00f41623          	sh	a5,12(s0)
   14058:	00042223          	sw	zero,4(s0)
   1405c:	c014                	sw	a3,0(s0)
   1405e:	01371793          	slli	a5,a4,0x13
   14062:	f407dce3          	bgez	a5,13fba <__sflush_r+0xb4>
   14066:	580c                	lw	a1,48(s0)
   14068:	c828                	sw	a0,80(s0)
   1406a:	0099a023          	sw	s1,0(s3)
   1406e:	f9b1                	bnez	a1,13fc2 <__sflush_r+0xbc>
   14070:	44d2                	lw	s1,20(sp)
   14072:	b795                	j	13fd6 <__sflush_r+0xd0>
   14074:	0009a783          	lw	a5,0(s3)
   14078:	ee0781e3          	beqz	a5,13f5a <__sflush_r+0x54>
   1407c:	4775                	li	a4,29
   1407e:	00e78a63          	beq	a5,a4,14092 <__sflush_r+0x18c>
   14082:	4759                	li	a4,22
   14084:	00e78763          	beq	a5,a4,14092 <__sflush_r+0x18c>
   14088:	00c41703          	lh	a4,12(s0)
   1408c:	04076713          	ori	a4,a4,64
   14090:	bf69                	j	1402a <__sflush_r+0x124>
   14092:	0099a023          	sw	s1,0(s3)
   14096:	44d2                	lw	s1,20(sp)
   14098:	bf3d                	j	13fd6 <__sflush_r+0xd0>

0001409a <_fflush_r>:
   1409a:	1101                	addi	sp,sp,-32
   1409c:	cc22                	sw	s0,24(sp)
   1409e:	ce06                	sw	ra,28(sp)
   140a0:	842a                	mv	s0,a0
   140a2:	c119                	beqz	a0,140a8 <_fflush_r+0xe>
   140a4:	595c                	lw	a5,52(a0)
   140a6:	cf91                	beqz	a5,140c2 <_fflush_r+0x28>
   140a8:	00c59783          	lh	a5,12(a1)
   140ac:	e791                	bnez	a5,140b8 <_fflush_r+0x1e>
   140ae:	40f2                	lw	ra,28(sp)
   140b0:	4462                	lw	s0,24(sp)
   140b2:	4501                	li	a0,0
   140b4:	6105                	addi	sp,sp,32
   140b6:	8082                	ret
   140b8:	8522                	mv	a0,s0
   140ba:	4462                	lw	s0,24(sp)
   140bc:	40f2                	lw	ra,28(sp)
   140be:	6105                	addi	sp,sp,32
   140c0:	b599                	j	13f06 <__sflush_r>
   140c2:	c62e                	sw	a1,12(sp)
   140c4:	fe0fc0ef          	jal	108a4 <__sinit>
   140c8:	45b2                	lw	a1,12(sp)
   140ca:	bff9                	j	140a8 <_fflush_r+0xe>

000140cc <fflush>:
   140cc:	cd05                	beqz	a0,14104 <fflush+0x38>
   140ce:	85aa                	mv	a1,a0
   140d0:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   140d4:	c119                	beqz	a0,140da <fflush+0xe>
   140d6:	595c                	lw	a5,52(a0)
   140d8:	c799                	beqz	a5,140e6 <fflush+0x1a>
   140da:	00c59783          	lh	a5,12(a1)
   140de:	e399                	bnez	a5,140e4 <fflush+0x18>
   140e0:	4501                	li	a0,0
   140e2:	8082                	ret
   140e4:	b50d                	j	13f06 <__sflush_r>
   140e6:	1101                	addi	sp,sp,-32
   140e8:	c62e                	sw	a1,12(sp)
   140ea:	c42a                	sw	a0,8(sp)
   140ec:	ce06                	sw	ra,28(sp)
   140ee:	fb6fc0ef          	jal	108a4 <__sinit>
   140f2:	45b2                	lw	a1,12(sp)
   140f4:	4522                	lw	a0,8(sp)
   140f6:	00c59783          	lh	a5,12(a1)
   140fa:	e385                	bnez	a5,1411a <fflush+0x4e>
   140fc:	40f2                	lw	ra,28(sp)
   140fe:	4501                	li	a0,0
   14100:	6105                	addi	sp,sp,32
   14102:	8082                	ret
   14104:	666d                	lui	a2,0x1b
   14106:	65d1                	lui	a1,0x14
   14108:	656d                	lui	a0,0x1b
   1410a:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   1410e:	09a58593          	addi	a1,a1,154 # 1409a <_fflush_r>
   14112:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   14116:	b8dfc06f          	j	10ca2 <_fwalk_sglue>
   1411a:	40f2                	lw	ra,28(sp)
   1411c:	6105                	addi	sp,sp,32
   1411e:	b3e5                	j	13f06 <__sflush_r>

00014120 <__smakebuf_r>:
   14120:	00c59783          	lh	a5,12(a1)
   14124:	7119                	addi	sp,sp,-128
   14126:	dca2                	sw	s0,120(sp)
   14128:	de86                	sw	ra,124(sp)
   1412a:	0027f713          	andi	a4,a5,2
   1412e:	842e                	mv	s0,a1
   14130:	cb19                	beqz	a4,14146 <__smakebuf_r+0x26>
   14132:	04358793          	addi	a5,a1,67
   14136:	c19c                	sw	a5,0(a1)
   14138:	c99c                	sw	a5,16(a1)
   1413a:	4785                	li	a5,1
   1413c:	c9dc                	sw	a5,20(a1)
   1413e:	50f6                	lw	ra,124(sp)
   14140:	5466                	lw	s0,120(sp)
   14142:	6109                	addi	sp,sp,128
   14144:	8082                	ret
   14146:	00e59583          	lh	a1,14(a1)
   1414a:	daa6                	sw	s1,116(sp)
   1414c:	d8ca                	sw	s2,112(sp)
   1414e:	d6ce                	sw	s3,108(sp)
   14150:	d4d2                	sw	s4,104(sp)
   14152:	84aa                	mv	s1,a0
   14154:	0605c263          	bltz	a1,141b8 <__smakebuf_r+0x98>
   14158:	0030                	addi	a2,sp,8
   1415a:	2e49                	jal	144ec <_fstat_r>
   1415c:	04054c63          	bltz	a0,141b4 <__smakebuf_r+0x94>
   14160:	47b2                	lw	a5,12(sp)
   14162:	693d                	lui	s2,0xf
   14164:	6985                	lui	s3,0x1
   14166:	00f97933          	and	s2,s2,a5
   1416a:	77f9                	lui	a5,0xffffe
   1416c:	993e                	add	s2,s2,a5
   1416e:	00193913          	seqz	s2,s2
   14172:	40000a13          	li	s4,1024
   14176:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   1417a:	85d2                	mv	a1,s4
   1417c:	8526                	mv	a0,s1
   1417e:	eecfd0ef          	jal	1186a <_malloc_r>
   14182:	00c41783          	lh	a5,12(s0)
   14186:	c539                	beqz	a0,141d4 <__smakebuf_r+0xb4>
   14188:	0807e793          	ori	a5,a5,128
   1418c:	c008                	sw	a0,0(s0)
   1418e:	c808                	sw	a0,16(s0)
   14190:	00f41623          	sh	a5,12(s0)
   14194:	01442a23          	sw	s4,20(s0)
   14198:	06091563          	bnez	s2,14202 <__smakebuf_r+0xe2>
   1419c:	0137e7b3          	or	a5,a5,s3
   141a0:	50f6                	lw	ra,124(sp)
   141a2:	00f41623          	sh	a5,12(s0)
   141a6:	5466                	lw	s0,120(sp)
   141a8:	54d6                	lw	s1,116(sp)
   141aa:	5946                	lw	s2,112(sp)
   141ac:	59b6                	lw	s3,108(sp)
   141ae:	5a26                	lw	s4,104(sp)
   141b0:	6109                	addi	sp,sp,128
   141b2:	8082                	ret
   141b4:	00c41783          	lh	a5,12(s0)
   141b8:	0807f793          	andi	a5,a5,128
   141bc:	4901                	li	s2,0
   141be:	cf95                	beqz	a5,141fa <__smakebuf_r+0xda>
   141c0:	04000a13          	li	s4,64
   141c4:	85d2                	mv	a1,s4
   141c6:	8526                	mv	a0,s1
   141c8:	ea2fd0ef          	jal	1186a <_malloc_r>
   141cc:	00c41783          	lh	a5,12(s0)
   141d0:	4981                	li	s3,0
   141d2:	f95d                	bnez	a0,14188 <__smakebuf_r+0x68>
   141d4:	2007f713          	andi	a4,a5,512
   141d8:	ef0d                	bnez	a4,14212 <__smakebuf_r+0xf2>
   141da:	9bf1                	andi	a5,a5,-4
   141dc:	0027e793          	ori	a5,a5,2
   141e0:	04340713          	addi	a4,s0,67
   141e4:	00f41623          	sh	a5,12(s0)
   141e8:	4785                	li	a5,1
   141ea:	54d6                	lw	s1,116(sp)
   141ec:	5946                	lw	s2,112(sp)
   141ee:	59b6                	lw	s3,108(sp)
   141f0:	5a26                	lw	s4,104(sp)
   141f2:	c018                	sw	a4,0(s0)
   141f4:	c818                	sw	a4,16(s0)
   141f6:	c85c                	sw	a5,20(s0)
   141f8:	b799                	j	1413e <__smakebuf_r+0x1e>
   141fa:	40000a13          	li	s4,1024
   141fe:	4981                	li	s3,0
   14200:	bfad                	j	1417a <__smakebuf_r+0x5a>
   14202:	00e41583          	lh	a1,14(s0)
   14206:	8526                	mv	a0,s1
   14208:	2e39                	jal	14526 <_isatty_r>
   1420a:	e909                	bnez	a0,1421c <__smakebuf_r+0xfc>
   1420c:	00c41783          	lh	a5,12(s0)
   14210:	b771                	j	1419c <__smakebuf_r+0x7c>
   14212:	54d6                	lw	s1,116(sp)
   14214:	5946                	lw	s2,112(sp)
   14216:	59b6                	lw	s3,108(sp)
   14218:	5a26                	lw	s4,104(sp)
   1421a:	b715                	j	1413e <__smakebuf_r+0x1e>
   1421c:	00c45783          	lhu	a5,12(s0)
   14220:	9bf1                	andi	a5,a5,-4
   14222:	0017e793          	ori	a5,a5,1
   14226:	07c2                	slli	a5,a5,0x10
   14228:	87c1                	srai	a5,a5,0x10
   1422a:	bf8d                	j	1419c <__smakebuf_r+0x7c>

0001422c <__swhatbuf_r>:
   1422c:	7159                	addi	sp,sp,-112
   1422e:	d4a2                	sw	s0,104(sp)
   14230:	842e                	mv	s0,a1
   14232:	00e59583          	lh	a1,14(a1)
   14236:	d2a6                	sw	s1,100(sp)
   14238:	d0ca                	sw	s2,96(sp)
   1423a:	d686                	sw	ra,108(sp)
   1423c:	84b2                	mv	s1,a2
   1423e:	8936                	mv	s2,a3
   14240:	0205cb63          	bltz	a1,14276 <__swhatbuf_r+0x4a>
   14244:	0030                	addi	a2,sp,8
   14246:	245d                	jal	144ec <_fstat_r>
   14248:	02054763          	bltz	a0,14276 <__swhatbuf_r+0x4a>
   1424c:	4732                	lw	a4,12(sp)
   1424e:	67bd                	lui	a5,0xf
   14250:	50b6                	lw	ra,108(sp)
   14252:	8ff9                	and	a5,a5,a4
   14254:	7779                	lui	a4,0xffffe
   14256:	97ba                	add	a5,a5,a4
   14258:	5426                	lw	s0,104(sp)
   1425a:	0017b793          	seqz	a5,a5
   1425e:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   14262:	40000713          	li	a4,1024
   14266:	c098                	sw	a4,0(s1)
   14268:	6505                	lui	a0,0x1
   1426a:	5496                	lw	s1,100(sp)
   1426c:	5906                	lw	s2,96(sp)
   1426e:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   14272:	6165                	addi	sp,sp,112
   14274:	8082                	ret
   14276:	00c45783          	lhu	a5,12(s0)
   1427a:	0807f793          	andi	a5,a5,128
   1427e:	cf91                	beqz	a5,1429a <__swhatbuf_r+0x6e>
   14280:	50b6                	lw	ra,108(sp)
   14282:	5426                	lw	s0,104(sp)
   14284:	4781                	li	a5,0
   14286:	00f92023          	sw	a5,0(s2)
   1428a:	04000713          	li	a4,64
   1428e:	c098                	sw	a4,0(s1)
   14290:	5906                	lw	s2,96(sp)
   14292:	5496                	lw	s1,100(sp)
   14294:	4501                	li	a0,0
   14296:	6165                	addi	sp,sp,112
   14298:	8082                	ret
   1429a:	50b6                	lw	ra,108(sp)
   1429c:	5426                	lw	s0,104(sp)
   1429e:	00f92023          	sw	a5,0(s2)
   142a2:	40000713          	li	a4,1024
   142a6:	c098                	sw	a4,0(s1)
   142a8:	5906                	lw	s2,96(sp)
   142aa:	5496                	lw	s1,100(sp)
   142ac:	4501                	li	a0,0
   142ae:	6165                	addi	sp,sp,112
   142b0:	8082                	ret

000142b2 <_putc_r>:
   142b2:	1101                	addi	sp,sp,-32
   142b4:	cc22                	sw	s0,24(sp)
   142b6:	ce06                	sw	ra,28(sp)
   142b8:	842a                	mv	s0,a0
   142ba:	c119                	beqz	a0,142c0 <_putc_r+0xe>
   142bc:	595c                	lw	a5,52(a0)
   142be:	cf9d                	beqz	a5,142fc <_putc_r+0x4a>
   142c0:	461c                	lw	a5,8(a2)
   142c2:	17fd                	addi	a5,a5,-1 # efff <exit-0x1095>
   142c4:	c61c                	sw	a5,8(a2)
   142c6:	0007da63          	bgez	a5,142da <_putc_r+0x28>
   142ca:	4e18                	lw	a4,24(a2)
   142cc:	02e7c363          	blt	a5,a4,142f2 <_putc_r+0x40>
   142d0:	0ff5f793          	zext.b	a5,a1
   142d4:	4729                	li	a4,10
   142d6:	00e78e63          	beq	a5,a4,142f2 <_putc_r+0x40>
   142da:	421c                	lw	a5,0(a2)
   142dc:	0ff5f513          	zext.b	a0,a1
   142e0:	00178713          	addi	a4,a5,1
   142e4:	c218                	sw	a4,0(a2)
   142e6:	00b78023          	sb	a1,0(a5)
   142ea:	40f2                	lw	ra,28(sp)
   142ec:	4462                	lw	s0,24(sp)
   142ee:	6105                	addi	sp,sp,32
   142f0:	8082                	ret
   142f2:	8522                	mv	a0,s0
   142f4:	4462                	lw	s0,24(sp)
   142f6:	40f2                	lw	ra,28(sp)
   142f8:	6105                	addi	sp,sp,32
   142fa:	a8a5                	j	14372 <__swbuf_r>
   142fc:	c632                	sw	a2,12(sp)
   142fe:	c42e                	sw	a1,8(sp)
   14300:	da4fc0ef          	jal	108a4 <__sinit>
   14304:	4632                	lw	a2,12(sp)
   14306:	45a2                	lw	a1,8(sp)
   14308:	bf65                	j	142c0 <_putc_r+0xe>

0001430a <putc>:
   1430a:	1101                	addi	sp,sp,-32
   1430c:	ca4a                	sw	s2,20(sp)
   1430e:	f141a903          	lw	s2,-236(gp) # 1b724 <_impure_ptr>
   14312:	cc26                	sw	s1,24(sp)
   14314:	ce06                	sw	ra,28(sp)
   14316:	84aa                	mv	s1,a0
   14318:	00090563          	beqz	s2,14322 <putc+0x18>
   1431c:	03492783          	lw	a5,52(s2)
   14320:	c3b9                	beqz	a5,14366 <putc+0x5c>
   14322:	459c                	lw	a5,8(a1)
   14324:	17fd                	addi	a5,a5,-1
   14326:	c59c                	sw	a5,8(a1)
   14328:	0007da63          	bgez	a5,1433c <putc+0x32>
   1432c:	4d98                	lw	a4,24(a1)
   1432e:	02e7c463          	blt	a5,a4,14356 <putc+0x4c>
   14332:	0ff4f793          	zext.b	a5,s1
   14336:	4729                	li	a4,10
   14338:	00e78f63          	beq	a5,a4,14356 <putc+0x4c>
   1433c:	419c                	lw	a5,0(a1)
   1433e:	0ff4f513          	zext.b	a0,s1
   14342:	00178713          	addi	a4,a5,1
   14346:	c198                	sw	a4,0(a1)
   14348:	00978023          	sb	s1,0(a5)
   1434c:	40f2                	lw	ra,28(sp)
   1434e:	44e2                	lw	s1,24(sp)
   14350:	4952                	lw	s2,20(sp)
   14352:	6105                	addi	sp,sp,32
   14354:	8082                	ret
   14356:	40f2                	lw	ra,28(sp)
   14358:	862e                	mv	a2,a1
   1435a:	854a                	mv	a0,s2
   1435c:	85a6                	mv	a1,s1
   1435e:	4952                	lw	s2,20(sp)
   14360:	44e2                	lw	s1,24(sp)
   14362:	6105                	addi	sp,sp,32
   14364:	a039                	j	14372 <__swbuf_r>
   14366:	854a                	mv	a0,s2
   14368:	c62e                	sw	a1,12(sp)
   1436a:	d3afc0ef          	jal	108a4 <__sinit>
   1436e:	45b2                	lw	a1,12(sp)
   14370:	bf4d                	j	14322 <putc+0x18>

00014372 <__swbuf_r>:
   14372:	1101                	addi	sp,sp,-32
   14374:	cc22                	sw	s0,24(sp)
   14376:	ca26                	sw	s1,20(sp)
   14378:	c84a                	sw	s2,16(sp)
   1437a:	ce06                	sw	ra,28(sp)
   1437c:	892a                	mv	s2,a0
   1437e:	84ae                	mv	s1,a1
   14380:	8432                	mv	s0,a2
   14382:	c119                	beqz	a0,14388 <__swbuf_r+0x16>
   14384:	595c                	lw	a5,52(a0)
   14386:	c7e1                	beqz	a5,1444e <__swbuf_r+0xdc>
   14388:	4c18                	lw	a4,24(s0)
   1438a:	00c41783          	lh	a5,12(s0)
   1438e:	c418                	sw	a4,8(s0)
   14390:	0087f713          	andi	a4,a5,8
   14394:	c325                	beqz	a4,143f4 <__swbuf_r+0x82>
   14396:	4818                	lw	a4,16(s0)
   14398:	cf31                	beqz	a4,143f4 <__swbuf_r+0x82>
   1439a:	c64e                	sw	s3,12(sp)
   1439c:	01279693          	slli	a3,a5,0x12
   143a0:	0ff4f993          	zext.b	s3,s1
   143a4:	5078                	lw	a4,100(s0)
   143a6:	0ff4f493          	zext.b	s1,s1
   143aa:	0606d663          	bgez	a3,14416 <__swbuf_r+0xa4>
   143ae:	01271793          	slli	a5,a4,0x12
   143b2:	0807c363          	bltz	a5,14438 <__swbuf_r+0xc6>
   143b6:	4018                	lw	a4,0(s0)
   143b8:	481c                	lw	a5,16(s0)
   143ba:	4854                	lw	a3,20(s0)
   143bc:	40f707b3          	sub	a5,a4,a5
   143c0:	06d7df63          	bge	a5,a3,1443e <__swbuf_r+0xcc>
   143c4:	0785                	addi	a5,a5,1
   143c6:	4414                	lw	a3,8(s0)
   143c8:	00170613          	addi	a2,a4,1 # ffffe001 <__BSS_END__+0xfffe25a5>
   143cc:	c010                	sw	a2,0(s0)
   143ce:	16fd                	addi	a3,a3,-1
   143d0:	c414                	sw	a3,8(s0)
   143d2:	01370023          	sb	s3,0(a4)
   143d6:	4858                	lw	a4,20(s0)
   143d8:	04f70b63          	beq	a4,a5,1442e <__swbuf_r+0xbc>
   143dc:	00c45783          	lhu	a5,12(s0)
   143e0:	8b85                	andi	a5,a5,1
   143e2:	e3b9                	bnez	a5,14428 <__swbuf_r+0xb6>
   143e4:	49b2                	lw	s3,12(sp)
   143e6:	40f2                	lw	ra,28(sp)
   143e8:	4462                	lw	s0,24(sp)
   143ea:	4942                	lw	s2,16(sp)
   143ec:	8526                	mv	a0,s1
   143ee:	44d2                	lw	s1,20(sp)
   143f0:	6105                	addi	sp,sp,32
   143f2:	8082                	ret
   143f4:	85a2                	mv	a1,s0
   143f6:	854a                	mv	a0,s2
   143f8:	a57fc0ef          	jal	10e4e <__swsetup_r>
   143fc:	ed1d                	bnez	a0,1443a <__swbuf_r+0xc8>
   143fe:	00c41783          	lh	a5,12(s0)
   14402:	c64e                	sw	s3,12(sp)
   14404:	5078                	lw	a4,100(s0)
   14406:	01279693          	slli	a3,a5,0x12
   1440a:	0ff4f993          	zext.b	s3,s1
   1440e:	0ff4f493          	zext.b	s1,s1
   14412:	f806cee3          	bltz	a3,143ae <__swbuf_r+0x3c>
   14416:	76f9                	lui	a3,0xffffe
   14418:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   1441a:	6609                	lui	a2,0x2
   1441c:	8fd1                	or	a5,a5,a2
   1441e:	8f75                	and	a4,a4,a3
   14420:	00f41623          	sh	a5,12(s0)
   14424:	d078                	sw	a4,100(s0)
   14426:	b761                	j	143ae <__swbuf_r+0x3c>
   14428:	47a9                	li	a5,10
   1442a:	faf49de3          	bne	s1,a5,143e4 <__swbuf_r+0x72>
   1442e:	85a2                	mv	a1,s0
   14430:	854a                	mv	a0,s2
   14432:	c69ff0ef          	jal	1409a <_fflush_r>
   14436:	d55d                	beqz	a0,143e4 <__swbuf_r+0x72>
   14438:	49b2                	lw	s3,12(sp)
   1443a:	54fd                	li	s1,-1
   1443c:	b76d                	j	143e6 <__swbuf_r+0x74>
   1443e:	85a2                	mv	a1,s0
   14440:	854a                	mv	a0,s2
   14442:	c59ff0ef          	jal	1409a <_fflush_r>
   14446:	f96d                	bnez	a0,14438 <__swbuf_r+0xc6>
   14448:	4018                	lw	a4,0(s0)
   1444a:	4785                	li	a5,1
   1444c:	bfad                	j	143c6 <__swbuf_r+0x54>
   1444e:	c56fc0ef          	jal	108a4 <__sinit>
   14452:	bf1d                	j	14388 <__swbuf_r+0x16>

00014454 <__swbuf>:
   14454:	87aa                	mv	a5,a0
   14456:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   1445a:	862e                	mv	a2,a1
   1445c:	85be                	mv	a1,a5
   1445e:	bf11                	j	14372 <__swbuf_r>

00014460 <strncpy>:
   14460:	00a5e7b3          	or	a5,a1,a0
   14464:	8b8d                	andi	a5,a5,3
   14466:	e781                	bnez	a5,1446e <strncpy+0xe>
   14468:	478d                	li	a5,3
   1446a:	02c7eb63          	bltu	a5,a2,144a0 <strncpy+0x40>
   1446e:	872a                	mv	a4,a0
   14470:	a811                	j	14484 <strncpy+0x24>
   14472:	fff5c683          	lbu	a3,-1(a1)
   14476:	fff60813          	addi	a6,a2,-1 # 1fff <exit-0xe095>
   1447a:	fed78fa3          	sb	a3,-1(a5)
   1447e:	ca81                	beqz	a3,1448e <strncpy+0x2e>
   14480:	873e                	mv	a4,a5
   14482:	8642                	mv	a2,a6
   14484:	0585                	addi	a1,a1,1
   14486:	00170793          	addi	a5,a4,1
   1448a:	f665                	bnez	a2,14472 <strncpy+0x12>
   1448c:	8082                	ret
   1448e:	9732                	add	a4,a4,a2
   14490:	04080463          	beqz	a6,144d8 <strncpy+0x78>
   14494:	0785                	addi	a5,a5,1
   14496:	fe078fa3          	sb	zero,-1(a5)
   1449a:	fee79de3          	bne	a5,a4,14494 <strncpy+0x34>
   1449e:	8082                	ret
   144a0:	feff0337          	lui	t1,0xfeff0
   144a4:	808088b7          	lui	a7,0x80808
   144a8:	872a                	mv	a4,a0
   144aa:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   144ae:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807ec624>
   144b2:	4e0d                	li	t3,3
   144b4:	a039                	j	144c2 <strncpy+0x62>
   144b6:	c314                	sw	a3,0(a4)
   144b8:	1671                	addi	a2,a2,-4
   144ba:	0711                	addi	a4,a4,4
   144bc:	0591                	addi	a1,a1,4
   144be:	fcce73e3          	bgeu	t3,a2,14484 <strncpy+0x24>
   144c2:	4194                	lw	a3,0(a1)
   144c4:	006687b3          	add	a5,a3,t1
   144c8:	fff6c813          	not	a6,a3
   144cc:	0107f7b3          	and	a5,a5,a6
   144d0:	0117f7b3          	and	a5,a5,a7
   144d4:	d3ed                	beqz	a5,144b6 <strncpy+0x56>
   144d6:	b77d                	j	14484 <strncpy+0x24>
   144d8:	8082                	ret

000144da <__localeconv_l>:
   144da:	0f050513          	addi	a0,a0,240
   144de:	8082                	ret

000144e0 <_localeconv_r>:
   144e0:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   144e4:	8082                	ret

000144e6 <localeconv>:
   144e6:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   144ea:	8082                	ret

000144ec <_fstat_r>:
   144ec:	1141                	addi	sp,sp,-16
   144ee:	872e                	mv	a4,a1
   144f0:	c422                	sw	s0,8(sp)
   144f2:	c226                	sw	s1,4(sp)
   144f4:	842a                	mv	s0,a0
   144f6:	85b2                	mv	a1,a2
   144f8:	853a                	mv	a0,a4
   144fa:	c606                	sw	ra,12(sp)
   144fc:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   14500:	740030ef          	jal	17c40 <_fstat>
   14504:	57fd                	li	a5,-1
   14506:	00f50763          	beq	a0,a5,14514 <_fstat_r+0x28>
   1450a:	40b2                	lw	ra,12(sp)
   1450c:	4422                	lw	s0,8(sp)
   1450e:	4492                	lw	s1,4(sp)
   14510:	0141                	addi	sp,sp,16
   14512:	8082                	ret
   14514:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   14518:	dbed                	beqz	a5,1450a <_fstat_r+0x1e>
   1451a:	40b2                	lw	ra,12(sp)
   1451c:	c01c                	sw	a5,0(s0)
   1451e:	4422                	lw	s0,8(sp)
   14520:	4492                	lw	s1,4(sp)
   14522:	0141                	addi	sp,sp,16
   14524:	8082                	ret

00014526 <_isatty_r>:
   14526:	1141                	addi	sp,sp,-16
   14528:	c422                	sw	s0,8(sp)
   1452a:	c226                	sw	s1,4(sp)
   1452c:	842a                	mv	s0,a0
   1452e:	852e                	mv	a0,a1
   14530:	c606                	sw	ra,12(sp)
   14532:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   14536:	748030ef          	jal	17c7e <_isatty>
   1453a:	57fd                	li	a5,-1
   1453c:	00f50763          	beq	a0,a5,1454a <_isatty_r+0x24>
   14540:	40b2                	lw	ra,12(sp)
   14542:	4422                	lw	s0,8(sp)
   14544:	4492                	lw	s1,4(sp)
   14546:	0141                	addi	sp,sp,16
   14548:	8082                	ret
   1454a:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   1454e:	dbed                	beqz	a5,14540 <_isatty_r+0x1a>
   14550:	40b2                	lw	ra,12(sp)
   14552:	c01c                	sw	a5,0(s0)
   14554:	4422                	lw	s0,8(sp)
   14556:	4492                	lw	s1,4(sp)
   14558:	0141                	addi	sp,sp,16
   1455a:	8082                	ret

0001455c <_sbrk_r>:
   1455c:	1141                	addi	sp,sp,-16
   1455e:	c422                	sw	s0,8(sp)
   14560:	c226                	sw	s1,4(sp)
   14562:	842a                	mv	s0,a0
   14564:	852e                	mv	a0,a1
   14566:	c606                	sw	ra,12(sp)
   14568:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   1456c:	7a2030ef          	jal	17d0e <_sbrk>
   14570:	57fd                	li	a5,-1
   14572:	00f50763          	beq	a0,a5,14580 <_sbrk_r+0x24>
   14576:	40b2                	lw	ra,12(sp)
   14578:	4422                	lw	s0,8(sp)
   1457a:	4492                	lw	s1,4(sp)
   1457c:	0141                	addi	sp,sp,16
   1457e:	8082                	ret
   14580:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   14584:	dbed                	beqz	a5,14576 <_sbrk_r+0x1a>
   14586:	40b2                	lw	ra,12(sp)
   14588:	c01c                	sw	a5,0(s0)
   1458a:	4422                	lw	s0,8(sp)
   1458c:	4492                	lw	s1,4(sp)
   1458e:	0141                	addi	sp,sp,16
   14590:	8082                	ret

00014592 <__libc_fini_array>:
   14592:	1141                	addi	sp,sp,-16
   14594:	c422                	sw	s0,8(sp)
   14596:	67ed                	lui	a5,0x1b
   14598:	646d                	lui	s0,0x1b
   1459a:	00c78793          	addi	a5,a5,12 # 1b00c <__do_global_dtors_aux_fini_array_entry>
   1459e:	01040413          	addi	s0,s0,16 # 1b010 <__sglue>
   145a2:	8c1d                	sub	s0,s0,a5
   145a4:	c226                	sw	s1,4(sp)
   145a6:	c606                	sw	ra,12(sp)
   145a8:	40245493          	srai	s1,s0,0x2
   145ac:	c881                	beqz	s1,145bc <__libc_fini_array+0x2a>
   145ae:	1471                	addi	s0,s0,-4
   145b0:	943e                	add	s0,s0,a5
   145b2:	401c                	lw	a5,0(s0)
   145b4:	14fd                	addi	s1,s1,-1
   145b6:	1471                	addi	s0,s0,-4
   145b8:	9782                	jalr	a5
   145ba:	fce5                	bnez	s1,145b2 <__libc_fini_array+0x20>
   145bc:	40b2                	lw	ra,12(sp)
   145be:	4422                	lw	s0,8(sp)
   145c0:	4492                	lw	s1,4(sp)
   145c2:	0141                	addi	sp,sp,16
   145c4:	8082                	ret

000145c6 <frexpl>:
   145c6:	7159                	addi	sp,sp,-112
   145c8:	d0ca                	sw	s2,96(sp)
   145ca:	00c5a903          	lw	s2,12(a1)
   145ce:	ccd2                	sw	s4,88(sp)
   145d0:	cad6                	sw	s5,84(sp)
   145d2:	c8da                	sw	s6,80(sp)
   145d4:	0045aa83          	lw	s5,4(a1)
   145d8:	0005ab03          	lw	s6,0(a1)
   145dc:	0085aa03          	lw	s4,8(a1)
   145e0:	cece                	sw	s3,92(sp)
   145e2:	69a1                	lui	s3,0x8
   145e4:	d4a2                	sw	s0,104(sp)
   145e6:	d2a6                	sw	s1,100(sp)
   145e8:	d686                	sw	ra,108(sp)
   145ea:	01095493          	srli	s1,s2,0x10
   145ee:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   145f0:	d85a                	sw	s6,48(sp)
   145f2:	da56                	sw	s5,52(sp)
   145f4:	dc52                	sw	s4,56(sp)
   145f6:	de4a                	sw	s2,60(sp)
   145f8:	0134f4b3          	and	s1,s1,s3
   145fc:	00062023          	sw	zero,0(a2)
   14600:	842a                	mv	s0,a0
   14602:	05348763          	beq	s1,s3,14650 <frexpl+0x8a>
   14606:	080c                	addi	a1,sp,16
   14608:	1008                	addi	a0,sp,32
   1460a:	c6de                	sw	s7,76(sp)
   1460c:	d05a                	sw	s6,32(sp)
   1460e:	8bb2                	mv	s7,a2
   14610:	d256                	sw	s5,36(sp)
   14612:	d452                	sw	s4,40(sp)
   14614:	d64a                	sw	s2,44(sp)
   14616:	c802                	sw	zero,16(sp)
   14618:	ca02                	sw	zero,20(sp)
   1461a:	cc02                	sw	zero,24(sp)
   1461c:	ce02                	sw	zero,28(sp)
   1461e:	7f2030ef          	jal	17e10 <__eqtf2>
   14622:	c941                	beqz	a0,146b2 <frexpl+0xec>
   14624:	4681                	li	a3,0
   14626:	c8a1                	beqz	s1,14676 <frexpl+0xb0>
   14628:	7771                	lui	a4,0xffffc
   1462a:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffe05a6>
   1462c:	5972                	lw	s2,60(sp)
   1462e:	94ba                	add	s1,s1,a4
   14630:	800107b7          	lui	a5,0x80010
   14634:	94b6                	add	s1,s1,a3
   14636:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff45a3>
   14638:	009ba023          	sw	s1,0(s7)
   1463c:	5b42                	lw	s6,48(sp)
   1463e:	5ad2                	lw	s5,52(sp)
   14640:	5a62                	lw	s4,56(sp)
   14642:	4bb6                	lw	s7,76(sp)
   14644:	00f97933          	and	s2,s2,a5
   14648:	3ffe07b7          	lui	a5,0x3ffe0
   1464c:	00f96933          	or	s2,s2,a5
   14650:	01642023          	sw	s6,0(s0)
   14654:	01542223          	sw	s5,4(s0)
   14658:	01442423          	sw	s4,8(s0)
   1465c:	01242623          	sw	s2,12(s0)
   14660:	50b6                	lw	ra,108(sp)
   14662:	8522                	mv	a0,s0
   14664:	5426                	lw	s0,104(sp)
   14666:	5496                	lw	s1,100(sp)
   14668:	5906                	lw	s2,96(sp)
   1466a:	49f6                	lw	s3,92(sp)
   1466c:	4a66                	lw	s4,88(sp)
   1466e:	4ad6                	lw	s5,84(sp)
   14670:	4b46                	lw	s6,80(sp)
   14672:	6165                	addi	sp,sp,112
   14674:	8082                	ret
   14676:	407107b7          	lui	a5,0x40710
   1467a:	860a                	mv	a2,sp
   1467c:	080c                	addi	a1,sp,16
   1467e:	1008                	addi	a0,sp,32
   14680:	c63e                	sw	a5,12(sp)
   14682:	c85a                	sw	s6,16(sp)
   14684:	ca56                	sw	s5,20(sp)
   14686:	cc52                	sw	s4,24(sp)
   14688:	ce4a                	sw	s2,28(sp)
   1468a:	c002                	sw	zero,0(sp)
   1468c:	c202                	sw	zero,4(sp)
   1468e:	c402                	sw	zero,8(sp)
   14690:	245030ef          	jal	180d4 <__multf3>
   14694:	5702                	lw	a4,32(sp)
   14696:	57b2                	lw	a5,44(sp)
   14698:	f8e00693          	li	a3,-114
   1469c:	d83a                	sw	a4,48(sp)
   1469e:	5712                	lw	a4,36(sp)
   146a0:	0107d493          	srli	s1,a5,0x10
   146a4:	de3e                	sw	a5,60(sp)
   146a6:	da3a                	sw	a4,52(sp)
   146a8:	5722                	lw	a4,40(sp)
   146aa:	0134f4b3          	and	s1,s1,s3
   146ae:	dc3a                	sw	a4,56(sp)
   146b0:	bfa5                	j	14628 <frexpl+0x62>
   146b2:	4bb6                	lw	s7,76(sp)
   146b4:	bf71                	j	14650 <frexpl+0x8a>

000146b6 <__register_exitproc>:
   146b6:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   146ba:	c3a1                	beqz	a5,146fa <__register_exitproc+0x44>
   146bc:	43d8                	lw	a4,4(a5)
   146be:	487d                	li	a6,31
   146c0:	04e84f63          	blt	a6,a4,1471e <__register_exitproc+0x68>
   146c4:	00271813          	slli	a6,a4,0x2
   146c8:	c11d                	beqz	a0,146ee <__register_exitproc+0x38>
   146ca:	01078333          	add	t1,a5,a6
   146ce:	08c32423          	sw	a2,136(t1)
   146d2:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f472c>
   146d6:	4605                	li	a2,1
   146d8:	00e61633          	sll	a2,a2,a4
   146dc:	00c8e8b3          	or	a7,a7,a2
   146e0:	1917a423          	sw	a7,392(a5)
   146e4:	10d32423          	sw	a3,264(t1)
   146e8:	4689                	li	a3,2
   146ea:	00d50f63          	beq	a0,a3,14708 <__register_exitproc+0x52>
   146ee:	0705                	addi	a4,a4,1
   146f0:	c3d8                	sw	a4,4(a5)
   146f2:	97c2                	add	a5,a5,a6
   146f4:	c78c                	sw	a1,8(a5)
   146f6:	4501                	li	a0,0
   146f8:	8082                	ret
   146fa:	0bc18813          	addi	a6,gp,188 # 1b8cc <__atexit0>
   146fe:	f301a423          	sw	a6,-216(gp) # 1b738 <__atexit>
   14702:	0bc18793          	addi	a5,gp,188 # 1b8cc <__atexit0>
   14706:	bf5d                	j	146bc <__register_exitproc+0x6>
   14708:	18c7a683          	lw	a3,396(a5)
   1470c:	0705                	addi	a4,a4,1
   1470e:	c3d8                	sw	a4,4(a5)
   14710:	8ed1                	or	a3,a3,a2
   14712:	18d7a623          	sw	a3,396(a5)
   14716:	97c2                	add	a5,a5,a6
   14718:	c78c                	sw	a1,8(a5)
   1471a:	4501                	li	a0,0
   1471c:	8082                	ret
   1471e:	557d                	li	a0,-1
   14720:	8082                	ret

00014722 <_ldtoa_r>:
   14722:	68e9                	lui	a7,0x1a
   14724:	69088893          	addi	a7,a7,1680 # 1a690 <blanks.1+0x10>
   14728:	0008af83          	lw	t6,0(a7)
   1472c:	0048af03          	lw	t5,4(a7)
   14730:	0088ae83          	lw	t4,8(a7)
   14734:	00c8ae03          	lw	t3,12(a7)
   14738:	0108a303          	lw	t1,16(a7)
   1473c:	03852883          	lw	a7,56(a0)
   14740:	7171                	addi	sp,sp,-176
   14742:	d14a                	sw	s2,160(sp)
   14744:	cf4e                	sw	s3,156(sp)
   14746:	cd52                	sw	s4,152(sp)
   14748:	c95a                	sw	s6,144(sp)
   1474a:	c75e                	sw	s7,140(sp)
   1474c:	c562                	sw	s8,136(sp)
   1474e:	c366                	sw	s9,132(sp)
   14750:	c16a                	sw	s10,128(sp)
   14752:	d706                	sw	ra,172(sp)
   14754:	d522                	sw	s0,168(sp)
   14756:	d326                	sw	s1,164(sp)
   14758:	cb56                	sw	s5,148(sp)
   1475a:	deee                	sw	s11,124(sp)
   1475c:	cefe                	sw	t6,92(sp)
   1475e:	d0fa                	sw	t5,96(sp)
   14760:	d2f6                	sw	t4,100(sp)
   14762:	d4f2                	sw	t3,104(sp)
   14764:	d69a                	sw	t1,108(sp)
   14766:	cc32                	sw	a2,24(sp)
   14768:	ce36                	sw	a3,28(sp)
   1476a:	0005aa03          	lw	s4,0(a1)
   1476e:	0045a983          	lw	s3,4(a1)
   14772:	0085a903          	lw	s2,8(a1)
   14776:	00c5ac03          	lw	s8,12(a1)
   1477a:	8b2a                	mv	s6,a0
   1477c:	8bba                	mv	s7,a4
   1477e:	8cbe                	mv	s9,a5
   14780:	8d42                	mv	s10,a6
   14782:	00088763          	beqz	a7,14790 <_ldtoa_r+0x6e>
   14786:	85c6                	mv	a1,a7
   14788:	248010ef          	jal	159d0 <__freedtoa>
   1478c:	020b2c23          	sw	zero,56(s6)
   14790:	5626                	lw	a2,104(sp)
   14792:	01fc5693          	srli	a3,s8,0x1f
   14796:	001c1a93          	slli	s5,s8,0x1
   1479a:	40165713          	srai	a4,a2,0x1
   1479e:	74f1                	lui	s1,0xffffc
   147a0:	001c1413          	slli	s0,s8,0x1
   147a4:	8f75                	and	a4,a4,a3
   147a6:	011ada93          	srli	s5,s5,0x11
   147aa:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffe0535>
   147ae:	010c1d93          	slli	s11,s8,0x10
   147b2:	00dca023          	sw	a3,0(s9)
   147b6:	8005                	srli	s0,s0,0x1
   147b8:	8f31                	xor	a4,a4,a2
   147ba:	010ddd93          	srli	s11,s11,0x10
   147be:	009a87b3          	add	a5,s5,s1
   147c2:	100c                	addi	a1,sp,32
   147c4:	1808                	addi	a0,sp,48
   147c6:	d852                	sw	s4,48(sp)
   147c8:	da4e                	sw	s3,52(sp)
   147ca:	dc4a                	sw	s2,56(sp)
   147cc:	de22                	sw	s0,60(sp)
   147ce:	d052                	sw	s4,32(sp)
   147d0:	d24e                	sw	s3,36(sp)
   147d2:	d44a                	sw	s2,40(sp)
   147d4:	d622                	sw	s0,44(sp)
   147d6:	d4ba                	sw	a4,104(sp)
   147d8:	ca3e                	sw	a5,20(sp)
   147da:	c6d2                	sw	s4,76(sp)
   147dc:	c8ce                	sw	s3,80(sp)
   147de:	caca                	sw	s2,84(sp)
   147e0:	ccee                	sw	s11,88(sp)
   147e2:	670050ef          	jal	19e52 <__unordtf2>
   147e6:	e979                	bnez	a0,148bc <_ldtoa_r+0x19a>
   147e8:	7fff0cb7          	lui	s9,0x7fff0
   147ec:	54fd                	li	s1,-1
   147ee:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   147f0:	100c                	addi	a1,sp,32
   147f2:	1808                	addi	a0,sp,48
   147f4:	d852                	sw	s4,48(sp)
   147f6:	da4e                	sw	s3,52(sp)
   147f8:	dc4a                	sw	s2,56(sp)
   147fa:	de22                	sw	s0,60(sp)
   147fc:	d026                	sw	s1,32(sp)
   147fe:	d226                	sw	s1,36(sp)
   14800:	d426                	sw	s1,40(sp)
   14802:	d666                	sw	s9,44(sp)
   14804:	64e050ef          	jal	19e52 <__unordtf2>
   14808:	ed21                	bnez	a0,14860 <_ldtoa_r+0x13e>
   1480a:	100c                	addi	a1,sp,32
   1480c:	1808                	addi	a0,sp,48
   1480e:	7da030ef          	jal	17fe8 <__letf2>
   14812:	04a05763          	blez	a0,14860 <_ldtoa_r+0x13e>
   14816:	478d                	li	a5,3
   14818:	c4be                	sw	a5,72(sp)
   1481a:	47e2                	lw	a5,24(sp)
   1481c:	4872                	lw	a6,28(sp)
   1481e:	4652                	lw	a2,20(sp)
   14820:	00b8                	addi	a4,sp,72
   14822:	c06a                	sw	s10,0(sp)
   14824:	88de                	mv	a7,s7
   14826:	00f4                	addi	a3,sp,76
   14828:	08ec                	addi	a1,sp,92
   1482a:	855a                	mv	a0,s6
   1482c:	2235                	jal	14958 <__gdtoa>
   1482e:	000ba703          	lw	a4,0(s7)
   14832:	77e1                	lui	a5,0xffff8
   14834:	00f71763          	bne	a4,a5,14842 <_ldtoa_r+0x120>
   14838:	800007b7          	lui	a5,0x80000
   1483c:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   1483e:	00fba023          	sw	a5,0(s7)
   14842:	50ba                	lw	ra,172(sp)
   14844:	542a                	lw	s0,168(sp)
   14846:	549a                	lw	s1,164(sp)
   14848:	590a                	lw	s2,160(sp)
   1484a:	49fa                	lw	s3,156(sp)
   1484c:	4a6a                	lw	s4,152(sp)
   1484e:	4ada                	lw	s5,148(sp)
   14850:	4b4a                	lw	s6,144(sp)
   14852:	4bba                	lw	s7,140(sp)
   14854:	4c2a                	lw	s8,136(sp)
   14856:	4c9a                	lw	s9,132(sp)
   14858:	4d0a                	lw	s10,128(sp)
   1485a:	5df6                	lw	s11,124(sp)
   1485c:	614d                	addi	sp,sp,176
   1485e:	8082                	ret
   14860:	67c1                	lui	a5,0x10
   14862:	100c                	addi	a1,sp,32
   14864:	1808                	addi	a0,sp,48
   14866:	d852                	sw	s4,48(sp)
   14868:	da4e                	sw	s3,52(sp)
   1486a:	dc4a                	sw	s2,56(sp)
   1486c:	de22                	sw	s0,60(sp)
   1486e:	d002                	sw	zero,32(sp)
   14870:	d202                	sw	zero,36(sp)
   14872:	d402                	sw	zero,40(sp)
   14874:	d63e                	sw	a5,44(sp)
   14876:	686030ef          	jal	17efc <__getf2>
   1487a:	00054963          	bltz	a0,1488c <_ldtoa_r+0x16a>
   1487e:	67c1                	lui	a5,0x10
   14880:	00fdedb3          	or	s11,s11,a5
   14884:	4785                	li	a5,1
   14886:	c4be                	sw	a5,72(sp)
   14888:	ccee                	sw	s11,88(sp)
   1488a:	bf41                	j	1481a <_ldtoa_r+0xf8>
   1488c:	100c                	addi	a1,sp,32
   1488e:	1808                	addi	a0,sp,48
   14890:	d852                	sw	s4,48(sp)
   14892:	da4e                	sw	s3,52(sp)
   14894:	dc4a                	sw	s2,56(sp)
   14896:	de62                	sw	s8,60(sp)
   14898:	d002                	sw	zero,32(sp)
   1489a:	d202                	sw	zero,36(sp)
   1489c:	d402                	sw	zero,40(sp)
   1489e:	d602                	sw	zero,44(sp)
   148a0:	570030ef          	jal	17e10 <__eqtf2>
   148a4:	e119                	bnez	a0,148aa <_ldtoa_r+0x188>
   148a6:	c482                	sw	zero,72(sp)
   148a8:	bf8d                	j	1481a <_ldtoa_r+0xf8>
   148aa:	74f1                	lui	s1,0xffffc
   148ac:	4789                	li	a5,2
   148ae:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffe0536>
   148b2:	c4be                	sw	a5,72(sp)
   148b4:	009a87b3          	add	a5,s5,s1
   148b8:	ca3e                	sw	a5,20(sp)
   148ba:	b785                	j	1481a <_ldtoa_r+0xf8>
   148bc:	4791                	li	a5,4
   148be:	c4be                	sw	a5,72(sp)
   148c0:	bfa9                	j	1481a <_ldtoa_r+0xf8>

000148c2 <_ldcheck>:
   148c2:	7139                	addi	sp,sp,-64
   148c4:	da26                	sw	s1,52(sp)
   148c6:	4544                	lw	s1,12(a0)
   148c8:	d64e                	sw	s3,44(sp)
   148ca:	d452                	sw	s4,40(sp)
   148cc:	00852983          	lw	s3,8(a0)
   148d0:	00452a03          	lw	s4,4(a0)
   148d4:	d256                	sw	s5,36(sp)
   148d6:	00052a83          	lw	s5,0(a0)
   148da:	0486                	slli	s1,s1,0x1
   148dc:	8085                	srli	s1,s1,0x1
   148de:	858a                	mv	a1,sp
   148e0:	0808                	addi	a0,sp,16
   148e2:	de06                	sw	ra,60(sp)
   148e4:	c856                	sw	s5,16(sp)
   148e6:	ca52                	sw	s4,20(sp)
   148e8:	cc4e                	sw	s3,24(sp)
   148ea:	ce26                	sw	s1,28(sp)
   148ec:	c056                	sw	s5,0(sp)
   148ee:	c252                	sw	s4,4(sp)
   148f0:	c44e                	sw	s3,8(sp)
   148f2:	c626                	sw	s1,12(sp)
   148f4:	55e050ef          	jal	19e52 <__unordtf2>
   148f8:	e921                	bnez	a0,14948 <_ldcheck+0x86>
   148fa:	d05a                	sw	s6,32(sp)
   148fc:	7fff0b37          	lui	s6,0x7fff0
   14900:	d84a                	sw	s2,48(sp)
   14902:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   14904:	597d                	li	s2,-1
   14906:	858a                	mv	a1,sp
   14908:	0808                	addi	a0,sp,16
   1490a:	dc22                	sw	s0,56(sp)
   1490c:	c04a                	sw	s2,0(sp)
   1490e:	c24a                	sw	s2,4(sp)
   14910:	c44a                	sw	s2,8(sp)
   14912:	c65a                	sw	s6,12(sp)
   14914:	4405                	li	s0,1
   14916:	53c050ef          	jal	19e52 <__unordtf2>
   1491a:	c105                	beqz	a0,1493a <_ldcheck+0x78>
   1491c:	50f2                	lw	ra,60(sp)
   1491e:	00144513          	xori	a0,s0,1
   14922:	5462                	lw	s0,56(sp)
   14924:	0ff57513          	zext.b	a0,a0
   14928:	5942                	lw	s2,48(sp)
   1492a:	5b02                	lw	s6,32(sp)
   1492c:	54d2                	lw	s1,52(sp)
   1492e:	59b2                	lw	s3,44(sp)
   14930:	5a22                	lw	s4,40(sp)
   14932:	5a92                	lw	s5,36(sp)
   14934:	0506                	slli	a0,a0,0x1
   14936:	6121                	addi	sp,sp,64
   14938:	8082                	ret
   1493a:	858a                	mv	a1,sp
   1493c:	0808                	addi	a0,sp,16
   1493e:	6aa030ef          	jal	17fe8 <__letf2>
   14942:	00152413          	slti	s0,a0,1
   14946:	bfd9                	j	1491c <_ldcheck+0x5a>
   14948:	50f2                	lw	ra,60(sp)
   1494a:	54d2                	lw	s1,52(sp)
   1494c:	59b2                	lw	s3,44(sp)
   1494e:	5a22                	lw	s4,40(sp)
   14950:	5a92                	lw	s5,36(sp)
   14952:	4505                	li	a0,1
   14954:	6121                	addi	sp,sp,64
   14956:	8082                	ret

00014958 <__gdtoa>:
   14958:	7171                	addi	sp,sp,-176
   1495a:	cb56                	sw	s5,148(sp)
   1495c:	00072a83          	lw	s5,0(a4)
   14960:	d326                	sw	s1,164(sp)
   14962:	c75e                	sw	s7,140(sp)
   14964:	fcfafe13          	andi	t3,s5,-49
   14968:	d706                	sw	ra,172(sp)
   1496a:	01c72023          	sw	t3,0(a4)
   1496e:	8bba                	mv	s7,a4
   14970:	574a                	lw	a4,176(sp)
   14972:	00fafe13          	andi	t3,s5,15
   14976:	4e8d                	li	t4,3
   14978:	c63a                	sw	a4,12(sp)
   1497a:	c832                	sw	a2,16(sp)
   1497c:	d442                	sw	a6,40(sp)
   1497e:	84c6                	mv	s1,a7
   14980:	4fde0263          	beq	t3,t4,14e64 <__gdtoa+0x50c>
   14984:	c95a                	sw	s6,144(sp)
   14986:	00cafb13          	andi	s6,s5,12
   1498a:	460b1b63          	bnez	s6,14e00 <__gdtoa+0x4a8>
   1498e:	d522                	sw	s0,168(sp)
   14990:	842a                	mv	s0,a0
   14992:	4a0e0563          	beqz	t3,14e3c <__gdtoa+0x4e4>
   14996:	c16a                	sw	s10,128(sp)
   14998:	0005ad03          	lw	s10,0(a1)
   1499c:	d14a                	sw	s2,160(sp)
   1499e:	cf4e                	sw	s3,156(sp)
   149a0:	cd52                	sw	s4,152(sp)
   149a2:	c366                	sw	s9,132(sp)
   149a4:	02000613          	li	a2,32
   149a8:	8a2e                	mv	s4,a1
   149aa:	893e                	mv	s2,a5
   149ac:	89b6                	mv	s3,a3
   149ae:	4581                	li	a1,0
   149b0:	02000793          	li	a5,32
   149b4:	01a65663          	bge	a2,s10,149c0 <__gdtoa+0x68>
   149b8:	0786                	slli	a5,a5,0x1
   149ba:	0585                	addi	a1,a1,1
   149bc:	ffa7cee3          	blt	a5,s10,149b8 <__gdtoa+0x60>
   149c0:	8522                	mv	a0,s0
   149c2:	250010ef          	jal	15c12 <_Balloc>
   149c6:	8caa                	mv	s9,a0
   149c8:	68050163          	beqz	a0,1504a <__gdtoa+0x6f2>
   149cc:	fffd0893          	addi	a7,s10,-1
   149d0:	4058d893          	srai	a7,a7,0x5
   149d4:	00289513          	slli	a0,a7,0x2
   149d8:	c562                	sw	s8,136(sp)
   149da:	deee                	sw	s11,124(sp)
   149dc:	954e                	add	a0,a0,s3
   149de:	014c8613          	addi	a2,s9,20
   149e2:	87ce                	mv	a5,s3
   149e4:	4398                	lw	a4,0(a5)
   149e6:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   149e8:	0611                	addi	a2,a2,4
   149ea:	fee62e23          	sw	a4,-4(a2)
   149ee:	fef57be3          	bgeu	a0,a5,149e4 <__gdtoa+0x8c>
   149f2:	0505                	addi	a0,a0,1
   149f4:	00198793          	addi	a5,s3,1
   149f8:	4611                	li	a2,4
   149fa:	00f56563          	bltu	a0,a5,14a04 <__gdtoa+0xac>
   149fe:	088a                	slli	a7,a7,0x2
   14a00:	00488613          	addi	a2,a7,4
   14a04:	40265d93          	srai	s11,a2,0x2
   14a08:	9666                	add	a2,a2,s9
   14a0a:	a021                	j	14a12 <__gdtoa+0xba>
   14a0c:	1671                	addi	a2,a2,-4
   14a0e:	480d8f63          	beqz	s11,14eac <__gdtoa+0x554>
   14a12:	4a1c                	lw	a5,16(a2)
   14a14:	8c6e                	mv	s8,s11
   14a16:	1dfd                	addi	s11,s11,-1
   14a18:	dbf5                	beqz	a5,14a0c <__gdtoa+0xb4>
   14a1a:	004d8793          	addi	a5,s11,4
   14a1e:	078a                	slli	a5,a5,0x2
   14a20:	97e6                	add	a5,a5,s9
   14a22:	43c8                	lw	a0,4(a5)
   14a24:	018ca823          	sw	s8,16(s9)
   14a28:	0c16                	slli	s8,s8,0x5
   14a2a:	412010ef          	jal	15e3c <__hi0bits>
   14a2e:	40ac0db3          	sub	s11,s8,a0
   14a32:	8566                	mv	a0,s9
   14a34:	1a4010ef          	jal	15bd8 <__trailz_D2A>
   14a38:	d6aa                	sw	a0,108(sp)
   14a3a:	4c42                	lw	s8,16(sp)
   14a3c:	48051c63          	bnez	a0,14ed4 <__gdtoa+0x57c>
   14a40:	010ca603          	lw	a2,16(s9)
   14a44:	3e060163          	beqz	a2,14e26 <__gdtoa+0x4ce>
   14a48:	10ec                	addi	a1,sp,108
   14a4a:	8566                	mv	a0,s9
   14a4c:	2dd010ef          	jal	16528 <__b2d>
   14a50:	00c59613          	slli	a2,a1,0xc
   14a54:	8231                	srli	a2,a2,0xc
   14a56:	3ff005b7          	lui	a1,0x3ff00
   14a5a:	8f2a                	mv	t5,a0
   14a5c:	8e4d                	or	a2,a2,a1
   14a5e:	cc7a                	sw	t5,24(sp)
   14a60:	ce32                	sw	a2,28(sp)
   14a62:	ea81b707          	fld	fa4,-344(gp) # 1b6b8 <__SDATA_BEGIN__>
   14a66:	27e2                	fld	fa5,24(sp)
   14a68:	eb01b687          	fld	fa3,-336(gp) # 1b6c0 <__SDATA_BEGIN__+0x8>
   14a6c:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14a70:	eb81b787          	fld	fa5,-328(gp) # 1b6c8 <__SDATA_BEGIN__+0x10>
   14a74:	01bc08b3          	add	a7,s8,s11
   14a78:	fff88593          	addi	a1,a7,-1
   14a7c:	852e                	mv	a0,a1
   14a7e:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   14a82:	d20587d3          	fcvt.d.w	fa5,a1
   14a86:	ec01b687          	fld	fa3,-320(gp) # 1b6d0 <__SDATA_BEGIN__+0x18>
   14a8a:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   14a8e:	0005d563          	bgez	a1,14a98 <__gdtoa+0x140>
   14a92:	4505                	li	a0,1
   14a94:	41150533          	sub	a0,a0,a7
   14a98:	bcb50513          	addi	a0,a0,-1077
   14a9c:	00a05863          	blez	a0,14aac <__gdtoa+0x154>
   14aa0:	d20506d3          	fcvt.d.w	fa3,a0
   14aa4:	ec81b707          	fld	fa4,-312(gp) # 1b6d8 <__SDATA_BEGIN__+0x20>
   14aa8:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14aac:	d2000753          	fcvt.d.w	fa4,zero
   14ab0:	c2079853          	fcvt.w.d	a6,fa5,rtz
   14ab4:	a2e79553          	flt.d	a0,fa5,fa4
   14ab8:	c909                	beqz	a0,14aca <__gdtoa+0x172>
   14aba:	d2080753          	fcvt.d.w	fa4,a6
   14abe:	a2f72553          	feq.d	a0,fa4,fa5
   14ac2:	00153513          	seqz	a0,a0
   14ac6:	40a80833          	sub	a6,a6,a0
   14aca:	01459e93          	slli	t4,a1,0x14
   14ace:	40bd8533          	sub	a0,s11,a1
   14ad2:	45d9                	li	a1,22
   14ad4:	00ce8fb3          	add	t6,t4,a2
   14ad8:	fff50e93          	addi	t4,a0,-1
   14adc:	3d05eb63          	bltu	a1,a6,14eb2 <__gdtoa+0x55a>
   14ae0:	65e9                	lui	a1,0x1a
   14ae2:	00381613          	slli	a2,a6,0x3
   14ae6:	70058593          	addi	a1,a1,1792 # 1a700 <__mprec_tens>
   14aea:	962e                	add	a2,a2,a1
   14aec:	cc7a                	sw	t5,24(sp)
   14aee:	ce7e                	sw	t6,28(sp)
   14af0:	221c                	fld	fa5,0(a2)
   14af2:	2762                	fld	fa4,24(sp)
   14af4:	a2f71653          	flt.d	a2,fa4,fa5
   14af8:	58061163          	bnez	a2,1507a <__gdtoa+0x722>
   14afc:	ca82                	sw	zero,84(sp)
   14afe:	cc02                	sw	zero,24(sp)
   14b00:	00a04763          	bgtz	a0,14b0e <__gdtoa+0x1b6>
   14b04:	4605                	li	a2,1
   14b06:	40a607b3          	sub	a5,a2,a0
   14b0a:	cc3e                	sw	a5,24(sp)
   14b0c:	4e81                	li	t4,0
   14b0e:	9ec2                	add	t4,t4,a6
   14b10:	da42                	sw	a6,52(sp)
   14b12:	d802                	sw	zero,48(sp)
   14b14:	4625                	li	a2,9
   14b16:	3d266a63          	bltu	a2,s2,14eea <__gdtoa+0x592>
   14b1a:	4615                	li	a2,5
   14b1c:	57264263          	blt	a2,s2,15080 <__gdtoa+0x728>
   14b20:	3fd88893          	addi	a7,a7,1021
   14b24:	7f88b793          	sltiu	a5,a7,2040
   14b28:	4591                	li	a1,4
   14b2a:	ccbe                	sw	a5,88(sp)
   14b2c:	18b909e3          	beq	s2,a1,154be <__gdtoa+0xb66>
   14b30:	18c903e3          	beq	s2,a2,154b6 <__gdtoa+0xb5e>
   14b34:	4609                	li	a2,2
   14b36:	18c907e3          	beq	s2,a2,154c4 <__gdtoa+0xb6c>
   14b3a:	460d                	li	a2,3
   14b3c:	c882                	sw	zero,80(sp)
   14b3e:	3ac91c63          	bne	s2,a2,14ef6 <__gdtoa+0x59e>
   14b42:	57d2                	lw	a5,52(sp)
   14b44:	5722                	lw	a4,40(sp)
   14b46:	97ba                	add	a5,a5,a4
   14b48:	cebe                	sw	a5,92(sp)
   14b4a:	0785                	addi	a5,a5,1
   14b4c:	d63e                	sw	a5,44(sp)
   14b4e:	00f05ce3          	blez	a5,15366 <__gdtoa+0xa0e>
   14b52:	863e                	mv	a2,a5
   14b54:	85be                	mv	a1,a5
   14b56:	8522                	mv	a0,s0
   14b58:	c4fa                	sw	t5,72(sp)
   14b5a:	c6fe                	sw	t6,76(sp)
   14b5c:	c0f6                	sw	t4,64(sp)
   14b5e:	dc42                	sw	a6,56(sp)
   14b60:	d6b2                	sw	a2,108(sp)
   14b62:	5bd000ef          	jal	1591e <__rv_alloc_D2A>
   14b66:	88aa                	mv	a7,a0
   14b68:	32050863          	beqz	a0,14e98 <__gdtoa+0x540>
   14b6c:	00ca2783          	lw	a5,12(s4)
   14b70:	5862                	lw	a6,56(sp)
   14b72:	4e86                	lw	t4,64(sp)
   14b74:	17fd                	addi	a5,a5,-1
   14b76:	d03e                	sw	a5,32(sp)
   14b78:	4f26                	lw	t5,72(sp)
   14b7a:	4fb6                	lw	t6,76(sp)
   14b7c:	3a078363          	beqz	a5,14f22 <__gdtoa+0x5ca>
   14b80:	4e07ca63          	bltz	a5,15074 <__gdtoa+0x71c>
   14b84:	100af313          	andi	t1,s5,256
   14b88:	38031863          	bnez	t1,14f18 <__gdtoa+0x5c0>
   14b8c:	000c4663          	bltz	s8,14b98 <__gdtoa+0x240>
   14b90:	57d2                	lw	a5,52(sp)
   14b92:	4639                	li	a2,14
   14b94:	50f65363          	bge	a2,a5,1509a <__gdtoa+0x742>
   14b98:	47c6                	lw	a5,80(sp)
   14b9a:	4c078863          	beqz	a5,1506a <__gdtoa+0x712>
   14b9e:	41bd06b3          	sub	a3,s10,s11
   14ba2:	004a2603          	lw	a2,4(s4)
   14ba6:	00168593          	addi	a1,a3,1
   14baa:	d6ae                	sw	a1,108(sp)
   14bac:	40dc06b3          	sub	a3,s8,a3
   14bb0:	7ec6dd63          	bge	a3,a2,153aa <__gdtoa+0xa52>
   14bb4:	ffd90693          	addi	a3,s2,-3
   14bb8:	9af5                	andi	a3,a3,-3
   14bba:	72068863          	beqz	a3,152ea <__gdtoa+0x992>
   14bbe:	40cc06b3          	sub	a3,s8,a2
   14bc2:	0685                	addi	a3,a3,1
   14bc4:	d6b6                	sw	a3,108(sp)
   14bc6:	4605                	li	a2,1
   14bc8:	01265863          	bge	a2,s2,14bd8 <__gdtoa+0x280>
   14bcc:	57b2                	lw	a5,44(sp)
   14bce:	00f05563          	blez	a5,14bd8 <__gdtoa+0x280>
   14bd2:	57b2                	lw	a5,44(sp)
   14bd4:	40d7c1e3          	blt	a5,a3,157d6 <__gdtoa+0xe7e>
   14bd8:	47e2                	lw	a5,24(sp)
   14bda:	5d42                	lw	s10,48(sp)
   14bdc:	9eb6                	add	t4,t4,a3
   14bde:	dc3e                	sw	a5,56(sp)
   14be0:	97b6                	add	a5,a5,a3
   14be2:	cc3e                	sw	a5,24(sp)
   14be4:	4585                	li	a1,1
   14be6:	8522                	mv	a0,s0
   14be8:	ccc6                	sw	a7,88(sp)
   14bea:	c4f6                	sw	t4,72(sp)
   14bec:	c0c2                	sw	a6,64(sp)
   14bee:	32c010ef          	jal	15f1a <__i2b>
   14bf2:	4806                	lw	a6,64(sp)
   14bf4:	4ea6                	lw	t4,72(sp)
   14bf6:	48e6                	lw	a7,88(sp)
   14bf8:	8c2a                	mv	s8,a0
   14bfa:	28050f63          	beqz	a0,14e98 <__gdtoa+0x540>
   14bfe:	57e2                	lw	a5,56(sp)
   14c00:	c385                	beqz	a5,14c20 <__gdtoa+0x2c8>
   14c02:	01d05f63          	blez	t4,14c20 <__gdtoa+0x2c8>
   14c06:	86be                	mv	a3,a5
   14c08:	00fed363          	bge	t4,a5,14c0e <__gdtoa+0x2b6>
   14c0c:	86f6                	mv	a3,t4
   14c0e:	47e2                	lw	a5,24(sp)
   14c10:	d6b6                	sw	a3,108(sp)
   14c12:	40de8eb3          	sub	t4,t4,a3
   14c16:	8f95                	sub	a5,a5,a3
   14c18:	cc3e                	sw	a5,24(sp)
   14c1a:	57e2                	lw	a5,56(sp)
   14c1c:	8f95                	sub	a5,a5,a3
   14c1e:	dc3e                	sw	a5,56(sp)
   14c20:	57c2                	lw	a5,48(sp)
   14c22:	c39d                	beqz	a5,14c48 <__gdtoa+0x2f0>
   14c24:	47c6                	lw	a5,80(sp)
   14c26:	c399                	beqz	a5,14c2c <__gdtoa+0x2d4>
   14c28:	7e0d1863          	bnez	s10,15418 <__gdtoa+0xac0>
   14c2c:	5642                	lw	a2,48(sp)
   14c2e:	85e6                	mv	a1,s9
   14c30:	8522                	mv	a0,s0
   14c32:	ccc6                	sw	a7,88(sp)
   14c34:	c4f6                	sw	t4,72(sp)
   14c36:	c0c2                	sw	a6,64(sp)
   14c38:	4e0010ef          	jal	16118 <__pow5mult>
   14c3c:	4806                	lw	a6,64(sp)
   14c3e:	4ea6                	lw	t4,72(sp)
   14c40:	48e6                	lw	a7,88(sp)
   14c42:	8caa                	mv	s9,a0
   14c44:	24050a63          	beqz	a0,14e98 <__gdtoa+0x540>
   14c48:	4585                	li	a1,1
   14c4a:	8522                	mv	a0,s0
   14c4c:	c4c6                	sw	a7,72(sp)
   14c4e:	c0f6                	sw	t4,64(sp)
   14c50:	d842                	sw	a6,48(sp)
   14c52:	2c8010ef          	jal	15f1a <__i2b>
   14c56:	8d2a                	mv	s10,a0
   14c58:	24050063          	beqz	a0,14e98 <__gdtoa+0x540>
   14c5c:	5842                	lw	a6,48(sp)
   14c5e:	4e86                	lw	t4,64(sp)
   14c60:	48a6                	lw	a7,72(sp)
   14c62:	70081663          	bnez	a6,1536e <__gdtoa+0xa16>
   14c66:	4685                	li	a3,1
   14c68:	5126d263          	bge	a3,s2,1516c <__gdtoa+0x814>
   14c6c:	4a7d                	li	s4,31
   14c6e:	47e2                	lw	a5,24(sp)
   14c70:	41da0a33          	sub	s4,s4,t4
   14c74:	1a71                	addi	s4,s4,-4
   14c76:	01fa7a13          	andi	s4,s4,31
   14c7a:	00fa0633          	add	a2,s4,a5
   14c7e:	d6d2                	sw	s4,108(sp)
   14c80:	87d2                	mv	a5,s4
   14c82:	58c04d63          	bgtz	a2,1521c <__gdtoa+0x8c4>
   14c86:	00fe8633          	add	a2,t4,a5
   14c8a:	1ec04c63          	bgtz	a2,14e82 <__gdtoa+0x52a>
   14c8e:	47d6                	lw	a5,84(sp)
   14c90:	5a079563          	bnez	a5,1523a <__gdtoa+0x8e2>
   14c94:	57b2                	lw	a5,44(sp)
   14c96:	66f05a63          	blez	a5,1530a <__gdtoa+0x9b2>
   14c9a:	47c6                	lw	a5,80(sp)
   14c9c:	5c078d63          	beqz	a5,15276 <__gdtoa+0x91e>
   14ca0:	57e2                	lw	a5,56(sp)
   14ca2:	00fa0633          	add	a2,s4,a5
   14ca6:	7ec04763          	bgtz	a2,15494 <__gdtoa+0xb3c>
   14caa:	8a62                	mv	s4,s8
   14cac:	02081ce3          	bnez	a6,154e4 <__gdtoa+0xb8c>
   14cb0:	5b32                	lw	s6,44(sp)
   14cb2:	8dc6                	mv	s11,a7
   14cb4:	4685                	li	a3,1
   14cb6:	d446                	sw	a7,40(sp)
   14cb8:	cc5e                	sw	s7,24(sp)
   14cba:	d626                	sw	s1,44(sp)
   14cbc:	a885                	j	14d2c <__gdtoa+0x3d4>
   14cbe:	8522                	mv	a0,s0
   14cc0:	7bf000ef          	jal	15c7e <_Bfree>
   14cc4:	100ac3e3          	bltz	s5,155ca <__gdtoa+0xc72>
   14cc8:	01596ab3          	or	s5,s2,s5
   14ccc:	000a9763          	bnez	s5,14cda <__gdtoa+0x382>
   14cd0:	0009a783          	lw	a5,0(s3)
   14cd4:	8b85                	andi	a5,a5,1
   14cd6:	0e078ae3          	beqz	a5,155ca <__gdtoa+0xc72>
   14cda:	5782                	lw	a5,32(sp)
   14cdc:	4709                	li	a4,2
   14cde:	26e798e3          	bne	a5,a4,1574e <__gdtoa+0xdf6>
   14ce2:	017d8023          	sb	s7,0(s11)
   14ce6:	57b6                	lw	a5,108(sp)
   14ce8:	0d85                	addi	s11,s11,1
   14cea:	1efb0fe3          	beq	s6,a5,156e8 <__gdtoa+0xd90>
   14cee:	85e6                	mv	a1,s9
   14cf0:	4681                	li	a3,0
   14cf2:	4629                	li	a2,10
   14cf4:	8522                	mv	a0,s0
   14cf6:	79b000ef          	jal	15c90 <__multadd>
   14cfa:	8caa                	mv	s9,a0
   14cfc:	18050e63          	beqz	a0,14e98 <__gdtoa+0x540>
   14d00:	4681                	li	a3,0
   14d02:	4629                	li	a2,10
   14d04:	85e2                	mv	a1,s8
   14d06:	8522                	mv	a0,s0
   14d08:	494c0c63          	beq	s8,s4,151a0 <__gdtoa+0x848>
   14d0c:	785000ef          	jal	15c90 <__multadd>
   14d10:	8c2a                	mv	s8,a0
   14d12:	18050363          	beqz	a0,14e98 <__gdtoa+0x540>
   14d16:	85d2                	mv	a1,s4
   14d18:	4681                	li	a3,0
   14d1a:	4629                	li	a2,10
   14d1c:	8522                	mv	a0,s0
   14d1e:	773000ef          	jal	15c90 <__multadd>
   14d22:	8a2a                	mv	s4,a0
   14d24:	16050a63          	beqz	a0,14e98 <__gdtoa+0x540>
   14d28:	56b6                	lw	a3,108(sp)
   14d2a:	0685                	addi	a3,a3,1
   14d2c:	85ea                	mv	a1,s10
   14d2e:	8566                	mv	a0,s9
   14d30:	d6b6                	sw	a3,108(sp)
   14d32:	4ad000ef          	jal	159de <__quorem_D2A>
   14d36:	84aa                	mv	s1,a0
   14d38:	85e2                	mv	a1,s8
   14d3a:	8566                	mv	a0,s9
   14d3c:	5bc010ef          	jal	162f8 <__mcmp>
   14d40:	85ea                	mv	a1,s10
   14d42:	8aaa                	mv	s5,a0
   14d44:	8652                	mv	a2,s4
   14d46:	8522                	mv	a0,s0
   14d48:	5ec010ef          	jal	16334 <__mdiff>
   14d4c:	03048b93          	addi	s7,s1,48
   14d50:	85aa                	mv	a1,a0
   14d52:	14050363          	beqz	a0,14e98 <__gdtoa+0x540>
   14d56:	455c                	lw	a5,12(a0)
   14d58:	f3bd                	bnez	a5,14cbe <__gdtoa+0x366>
   14d5a:	c82a                	sw	a0,16(sp)
   14d5c:	8566                	mv	a0,s9
   14d5e:	59a010ef          	jal	162f8 <__mcmp>
   14d62:	45c2                	lw	a1,16(sp)
   14d64:	86aa                	mv	a3,a0
   14d66:	8522                	mv	a0,s0
   14d68:	c836                	sw	a3,16(sp)
   14d6a:	715000ef          	jal	15c7e <_Bfree>
   14d6e:	46c2                	lw	a3,16(sp)
   14d70:	00d96733          	or	a4,s2,a3
   14d74:	340711e3          	bnez	a4,158b6 <__gdtoa+0xf5e>
   14d78:	0009a783          	lw	a5,0(s3)
   14d7c:	8b85                	andi	a5,a5,1
   14d7e:	42079863          	bnez	a5,151ae <__gdtoa+0x856>
   14d82:	5782                	lw	a5,32(sp)
   14d84:	280787e3          	beqz	a5,15812 <__gdtoa+0xeba>
   14d88:	f5504de3          	bgtz	s5,14ce2 <__gdtoa+0x38a>
   14d8c:	010ca603          	lw	a2,16(s9)
   14d90:	4685                	li	a3,1
   14d92:	835e                	mv	t1,s7
   14d94:	58a2                	lw	a7,40(sp)
   14d96:	4be2                	lw	s7,24(sp)
   14d98:	54b2                	lw	s1,44(sp)
   14d9a:	8b3a                	mv	s6,a4
   14d9c:	2ec6dae3          	bge	a3,a2,15890 <__gdtoa+0xf38>
   14da0:	5782                	lw	a5,32(sp)
   14da2:	4689                	li	a3,2
   14da4:	8a9a                	mv	s5,t1
   14da6:	8b46                	mv	s6,a7
   14da8:	02d79063          	bne	a5,a3,14dc8 <__gdtoa+0x470>
   14dac:	2cb0006f          	j	15876 <__gdtoa+0xf1e>
   14db0:	6e1000ef          	jal	15c90 <__multadd>
   14db4:	85ea                	mv	a1,s10
   14db6:	8caa                	mv	s9,a0
   14db8:	0e050063          	beqz	a0,14e98 <__gdtoa+0x540>
   14dbc:	423000ef          	jal	159de <__quorem_D2A>
   14dc0:	03050a93          	addi	s5,a0,48
   14dc4:	8dca                	mv	s11,s2
   14dc6:	8a4e                	mv	s4,s3
   14dc8:	85d2                	mv	a1,s4
   14dca:	856a                	mv	a0,s10
   14dcc:	52c010ef          	jal	162f8 <__mcmp>
   14dd0:	87aa                	mv	a5,a0
   14dd2:	4681                	li	a3,0
   14dd4:	4629                	li	a2,10
   14dd6:	85d2                	mv	a1,s4
   14dd8:	8522                	mv	a0,s0
   14dda:	001d8913          	addi	s2,s11,1
   14dde:	28f052e3          	blez	a5,15862 <__gdtoa+0xf0a>
   14de2:	ff590fa3          	sb	s5,-1(s2)
   14de6:	6ab000ef          	jal	15c90 <__multadd>
   14dea:	89aa                	mv	s3,a0
   14dec:	4681                	li	a3,0
   14dee:	4629                	li	a2,10
   14df0:	85e6                	mv	a1,s9
   14df2:	8522                	mv	a0,s0
   14df4:	0a098263          	beqz	s3,14e98 <__gdtoa+0x540>
   14df8:	fb4c1ce3          	bne	s8,s4,14db0 <__gdtoa+0x458>
   14dfc:	8c4e                	mv	s8,s3
   14dfe:	bf4d                	j	14db0 <__gdtoa+0x458>
   14e00:	4791                	li	a5,4
   14e02:	0afe1363          	bne	t3,a5,14ea8 <__gdtoa+0x550>
   14e06:	4632                	lw	a2,12(sp)
   14e08:	4b4a                	lw	s6,144(sp)
   14e0a:	50ba                	lw	ra,172(sp)
   14e0c:	549a                	lw	s1,164(sp)
   14e0e:	4ada                	lw	s5,148(sp)
   14e10:	4bba                	lw	s7,140(sp)
   14e12:	77e1                	lui	a5,0xffff8
   14e14:	00f8a023          	sw	a5,0(a7)
   14e18:	65e9                	lui	a1,0x1a
   14e1a:	468d                	li	a3,3
   14e1c:	35458593          	addi	a1,a1,852 # 1a354 <__clzsi2+0xd4>
   14e20:	614d                	addi	sp,sp,176
   14e22:	33b0006f          	j	1595c <__nrv_alloc_D2A>
   14e26:	85e6                	mv	a1,s9
   14e28:	8522                	mv	a0,s0
   14e2a:	655000ef          	jal	15c7e <_Bfree>
   14e2e:	590a                	lw	s2,160(sp)
   14e30:	49fa                	lw	s3,156(sp)
   14e32:	4a6a                	lw	s4,152(sp)
   14e34:	4c2a                	lw	s8,136(sp)
   14e36:	4c9a                	lw	s9,132(sp)
   14e38:	4d0a                	lw	s10,128(sp)
   14e3a:	5df6                	lw	s11,124(sp)
   14e3c:	4632                	lw	a2,12(sp)
   14e3e:	4785                	li	a5,1
   14e40:	65e9                	lui	a1,0x1a
   14e42:	8522                	mv	a0,s0
   14e44:	c09c                	sw	a5,0(s1)
   14e46:	4685                	li	a3,1
   14e48:	34458593          	addi	a1,a1,836 # 1a344 <__clzsi2+0xc4>
   14e4c:	311000ef          	jal	1595c <__nrv_alloc_D2A>
   14e50:	542a                	lw	s0,168(sp)
   14e52:	88aa                	mv	a7,a0
   14e54:	50ba                	lw	ra,172(sp)
   14e56:	4b4a                	lw	s6,144(sp)
   14e58:	549a                	lw	s1,164(sp)
   14e5a:	4ada                	lw	s5,148(sp)
   14e5c:	4bba                	lw	s7,140(sp)
   14e5e:	8546                	mv	a0,a7
   14e60:	614d                	addi	sp,sp,176
   14e62:	8082                	ret
   14e64:	4632                	lw	a2,12(sp)
   14e66:	50ba                	lw	ra,172(sp)
   14e68:	549a                	lw	s1,164(sp)
   14e6a:	4ada                	lw	s5,148(sp)
   14e6c:	4bba                	lw	s7,140(sp)
   14e6e:	77e1                	lui	a5,0xffff8
   14e70:	00f8a023          	sw	a5,0(a7)
   14e74:	65e9                	lui	a1,0x1a
   14e76:	46a1                	li	a3,8
   14e78:	34858593          	addi	a1,a1,840 # 1a348 <__clzsi2+0xc8>
   14e7c:	614d                	addi	sp,sp,176
   14e7e:	2df0006f          	j	1595c <__nrv_alloc_D2A>
   14e82:	85ea                	mv	a1,s10
   14e84:	8522                	mv	a0,s0
   14e86:	cc46                	sw	a7,24(sp)
   14e88:	c842                	sw	a6,16(sp)
   14e8a:	362010ef          	jal	161ec <__lshift>
   14e8e:	4842                	lw	a6,16(sp)
   14e90:	48e2                	lw	a7,24(sp)
   14e92:	8d2a                	mv	s10,a0
   14e94:	de051de3          	bnez	a0,14c8e <__gdtoa+0x336>
   14e98:	542a                	lw	s0,168(sp)
   14e9a:	590a                	lw	s2,160(sp)
   14e9c:	49fa                	lw	s3,156(sp)
   14e9e:	4a6a                	lw	s4,152(sp)
   14ea0:	4c2a                	lw	s8,136(sp)
   14ea2:	4c9a                	lw	s9,132(sp)
   14ea4:	4d0a                	lw	s10,128(sp)
   14ea6:	5df6                	lw	s11,124(sp)
   14ea8:	4881                	li	a7,0
   14eaa:	b76d                	j	14e54 <__gdtoa+0x4fc>
   14eac:	000ca823          	sw	zero,16(s9)
   14eb0:	b649                	j	14a32 <__gdtoa+0xda>
   14eb2:	4785                	li	a5,1
   14eb4:	cabe                	sw	a5,84(sp)
   14eb6:	cc02                	sw	zero,24(sp)
   14eb8:	1a0ec163          	bltz	t4,1505a <__gdtoa+0x702>
   14ebc:	c40859e3          	bgez	a6,14b0e <__gdtoa+0x1b6>
   14ec0:	47e2                	lw	a5,24(sp)
   14ec2:	da42                	sw	a6,52(sp)
   14ec4:	410787b3          	sub	a5,a5,a6
   14ec8:	cc3e                	sw	a5,24(sp)
   14eca:	410007b3          	neg	a5,a6
   14ece:	d83e                	sw	a5,48(sp)
   14ed0:	4801                	li	a6,0
   14ed2:	b189                	j	14b14 <__gdtoa+0x1bc>
   14ed4:	85aa                	mv	a1,a0
   14ed6:	8566                	mv	a0,s9
   14ed8:	45d000ef          	jal	15b34 <__rshift_D2A>
   14edc:	5636                	lw	a2,108(sp)
   14ede:	47c2                	lw	a5,16(sp)
   14ee0:	40cd8db3          	sub	s11,s11,a2
   14ee4:	00f60c33          	add	s8,a2,a5
   14ee8:	bea1                	j	14a40 <__gdtoa+0xe8>
   14eea:	3fd88893          	addi	a7,a7,1021
   14eee:	7f88b793          	sltiu	a5,a7,2040
   14ef2:	ccbe                	sw	a5,88(sp)
   14ef4:	4901                	li	s2,0
   14ef6:	ed01b707          	fld	fa4,-304(gp) # 1b6e0 <__SDATA_BEGIN__+0x28>
   14efa:	d20d07d3          	fcvt.d.w	fa5,s10
   14efe:	4785                	li	a5,1
   14f00:	c8be                	sw	a5,80(sp)
   14f02:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14f06:	57fd                	li	a5,-1
   14f08:	d402                	sw	zero,40(sp)
   14f0a:	cebe                	sw	a5,92(sp)
   14f0c:	d63e                	sw	a5,44(sp)
   14f0e:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   14f12:	058d                	addi	a1,a1,3
   14f14:	862e                	mv	a2,a1
   14f16:	b181                	j	14b56 <__gdtoa+0x1fe>
   14f18:	5782                	lw	a5,32(sp)
   14f1a:	460d                	li	a2,3
   14f1c:	40f607b3          	sub	a5,a2,a5
   14f20:	d03e                	sw	a5,32(sp)
   14f22:	57b2                	lw	a5,44(sp)
   14f24:	4639                	li	a2,14
   14f26:	c6f663e3          	bltu	a2,a5,14b8c <__gdtoa+0x234>
   14f2a:	4766                	lw	a4,88(sp)
   14f2c:	c60700e3          	beqz	a4,14b8c <__gdtoa+0x234>
   14f30:	5752                	lw	a4,52(sp)
   14f32:	5682                	lw	a3,32(sp)
   14f34:	00d76633          	or	a2,a4,a3
   14f38:	c4061ae3          	bnez	a2,14b8c <__gdtoa+0x234>
   14f3c:	4756                	lw	a4,84(sp)
   14f3e:	d682                	sw	zero,108(sp)
   14f40:	d07a                	sw	t5,32(sp)
   14f42:	d27e                	sw	t6,36(sp)
   14f44:	cb11                	beqz	a4,14f58 <__gdtoa+0x600>
   14f46:	dc7a                	sw	t5,56(sp)
   14f48:	de7e                	sw	t6,60(sp)
   14f4a:	ed81b787          	fld	fa5,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   14f4e:	3762                	fld	fa4,56(sp)
   14f50:	a2f71653          	flt.d	a2,fa4,fa5
   14f54:	7a061163          	bnez	a2,156f6 <__gdtoa+0xd9e>
   14f58:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   14f5c:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   14f60:	3682                	fld	fa3,32(sp)
   14f62:	57b2                	lw	a5,44(sp)
   14f64:	fcc00637          	lui	a2,0xfcc00
   14f68:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14f6c:	bc3e                	fsd	fa5,56(sp)
   14f6e:	5562                	lw	a0,56(sp)
   14f70:	55f2                	lw	a1,60(sp)
   14f72:	832a                	mv	t1,a0
   14f74:	962e                	add	a2,a2,a1
   14f76:	5c078063          	beqz	a5,15536 <__gdtoa+0xbde>
   14f7a:	3782                	fld	fa5,32(sp)
   14f7c:	5532                	lw	a0,44(sp)
   14f7e:	4381                	li	t2,0
   14f80:	bc3e                	fsd	fa5,56(sp)
   14f82:	65e9                	lui	a1,0x1a
   14f84:	fff50793          	addi	a5,a0,-1
   14f88:	078e                	slli	a5,a5,0x3
   14f8a:	70058293          	addi	t0,a1,1792 # 1a700 <__mprec_tens>
   14f8e:	005786b3          	add	a3,a5,t0
   14f92:	229c                	fld	fa5,0(a3)
   14f94:	46c6                	lw	a3,80(sp)
   14f96:	871a                	mv	a4,t1
   14f98:	87b2                	mv	a5,a2
   14f9a:	6c068163          	beqz	a3,1565c <__gdtoa+0xd04>
   14f9e:	3762                	fld	fa4,56(sp)
   14fa0:	36e2                	fld	fa3,56(sp)
   14fa2:	c2071353          	fcvt.w.d	t1,fa4,rtz
   14fa6:	f081b707          	fld	fa4,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   14faa:	dc3a                	sw	a4,56(sp)
   14fac:	de3e                	sw	a5,60(sp)
   14fae:	1af77753          	fdiv.d	fa4,fa4,fa5
   14fb2:	d20307d3          	fcvt.d.w	fa5,t1
   14fb6:	03030313          	addi	t1,t1,48
   14fba:	00688023          	sb	t1,0(a7)
   14fbe:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   14fc2:	36e2                	fld	fa3,56(sp)
   14fc4:	00188613          	addi	a2,a7,1
   14fc8:	0ad77753          	fsub.d	fa4,fa4,fa3
   14fcc:	a2e79353          	flt.d	t1,fa5,fa4
   14fd0:	7c031e63          	bnez	t1,157ac <__gdtoa+0xe54>
   14fd4:	ed81b587          	fld	fa1,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   14fd8:	ee01b607          	fld	fa2,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14fdc:	a80d                	j	1500e <__gdtoa+0x6b6>
   14fde:	57b6                	lw	a5,108(sp)
   14fe0:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe45a5>
   14fe2:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffdc5a5>
   14fe4:	d6be                	sw	a5,108(sp)
   14fe6:	7ea7d163          	bge	a5,a0,157c8 <__gdtoa+0xe70>
   14fea:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   14fee:	12c77753          	fmul.d	fa4,fa4,fa2
   14ff2:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14ff6:	d20786d3          	fcvt.d.w	fa3,a5
   14ffa:	03078793          	addi	a5,a5,48
   14ffe:	fef60fa3          	sb	a5,-1(a2)
   15002:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   15006:	a2e797d3          	flt.d	a5,fa5,fa4
   1500a:	7a079163          	bnez	a5,157ac <__gdtoa+0xe54>
   1500e:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15012:	a2e697d3          	flt.d	a5,fa3,fa4
   15016:	d7e1                	beqz	a5,14fde <__gdtoa+0x686>
   15018:	fff64683          	lbu	a3,-1(a2)
   1501c:	00138513          	addi	a0,t2,1
   15020:	03900593          	li	a1,57
   15024:	a031                	j	15030 <__gdtoa+0x6d8>
   15026:	62f88763          	beq	a7,a5,15654 <__gdtoa+0xcfc>
   1502a:	fff7c683          	lbu	a3,-1(a5)
   1502e:	863e                	mv	a2,a5
   15030:	fff60793          	addi	a5,a2,-1
   15034:	feb689e3          	beq	a3,a1,15026 <__gdtoa+0x6ce>
   15038:	0685                	addi	a3,a3,1
   1503a:	0ff6f693          	zext.b	a3,a3
   1503e:	00d78023          	sb	a3,0(a5)
   15042:	892a                	mv	s2,a0
   15044:	02000b13          	li	s6,32
   15048:	a0e5                	j	15130 <__gdtoa+0x7d8>
   1504a:	542a                	lw	s0,168(sp)
   1504c:	590a                	lw	s2,160(sp)
   1504e:	49fa                	lw	s3,156(sp)
   15050:	4a6a                	lw	s4,152(sp)
   15052:	4c9a                	lw	s9,132(sp)
   15054:	4d0a                	lw	s10,128(sp)
   15056:	4881                	li	a7,0
   15058:	bbf5                	j	14e54 <__gdtoa+0x4fc>
   1505a:	4605                	li	a2,1
   1505c:	40a607b3          	sub	a5,a2,a0
   15060:	cc3e                	sw	a5,24(sp)
   15062:	4e81                	li	t4,0
   15064:	e4084ee3          	bltz	a6,14ec0 <__gdtoa+0x568>
   15068:	b45d                	j	14b0e <__gdtoa+0x1b6>
   1506a:	47e2                	lw	a5,24(sp)
   1506c:	5d42                	lw	s10,48(sp)
   1506e:	4c01                	li	s8,0
   15070:	dc3e                	sw	a5,56(sp)
   15072:	b671                	j	14bfe <__gdtoa+0x2a6>
   15074:	4789                	li	a5,2
   15076:	d03e                	sw	a5,32(sp)
   15078:	b631                	j	14b84 <__gdtoa+0x22c>
   1507a:	187d                	addi	a6,a6,-1
   1507c:	ca82                	sw	zero,84(sp)
   1507e:	bd25                	j	14eb6 <__gdtoa+0x55e>
   15080:	1971                	addi	s2,s2,-4
   15082:	4591                	li	a1,4
   15084:	10b90263          	beq	s2,a1,15188 <__gdtoa+0x830>
   15088:	42c90263          	beq	s2,a2,154ac <__gdtoa+0xb54>
   1508c:	4609                	li	a2,2
   1508e:	cc82                	sw	zero,88(sp)
   15090:	c882                	sw	zero,80(sp)
   15092:	0ec90e63          	beq	s2,a2,1518e <__gdtoa+0x836>
   15096:	490d                	li	s2,3
   15098:	b46d                	j	14b42 <__gdtoa+0x1ea>
   1509a:	66e9                	lui	a3,0x1a
   1509c:	078e                	slli	a5,a5,0x3
   1509e:	70068693          	addi	a3,a3,1792 # 1a700 <__mprec_tens>
   150a2:	97b6                	add	a5,a5,a3
   150a4:	2398                	fld	fa4,0(a5)
   150a6:	57a2                	lw	a5,40(sp)
   150a8:	3207c263          	bltz	a5,153cc <__gdtoa+0xa74>
   150ac:	c87a                	sw	t5,16(sp)
   150ae:	ca7e                	sw	t6,20(sp)
   150b0:	27c2                	fld	fa5,16(sp)
   150b2:	4785                	li	a5,1
   150b4:	d6be                	sw	a5,108(sp)
   150b6:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   150ba:	57d2                	lw	a5,52(sp)
   150bc:	26c2                	fld	fa3,16(sp)
   150be:	00188613          	addi	a2,a7,1
   150c2:	00178513          	addi	a0,a5,1
   150c6:	892a                	mv	s2,a0
   150c8:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   150cc:	d20787d3          	fcvt.d.w	fa5,a5
   150d0:	03078693          	addi	a3,a5,48
   150d4:	00d88023          	sb	a3,0(a7)
   150d8:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   150dc:	d20006d3          	fcvt.d.w	fa3,zero
   150e0:	a2d7a6d3          	feq.d	a3,fa5,fa3
   150e4:	e6b1                	bnez	a3,15130 <__gdtoa+0x7d8>
   150e6:	ee01b587          	fld	fa1,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   150ea:	22d68653          	fmv.d	fa2,fa3
   150ee:	55b2                	lw	a1,44(sp)
   150f0:	a025                	j	15118 <__gdtoa+0x7c0>
   150f2:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   150f6:	d6b6                	sw	a3,108(sp)
   150f8:	0605                	addi	a2,a2,1
   150fa:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   150fe:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   15102:	d20786d3          	fcvt.d.w	fa3,a5
   15106:	03078713          	addi	a4,a5,48
   1510a:	fee60fa3          	sb	a4,-1(a2)
   1510e:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   15112:	a2c7a753          	feq.d	a4,fa5,fa2
   15116:	ef09                	bnez	a4,15130 <__gdtoa+0x7d8>
   15118:	5736                	lw	a4,108(sp)
   1511a:	00170693          	addi	a3,a4,1
   1511e:	fcb71ae3          	bne	a4,a1,150f2 <__gdtoa+0x79a>
   15122:	5702                	lw	a4,32(sp)
   15124:	4e070e63          	beqz	a4,15620 <__gdtoa+0xcc8>
   15128:	4785                	li	a5,1
   1512a:	4b41                	li	s6,16
   1512c:	60f70263          	beq	a4,a5,15730 <__gdtoa+0xdd8>
   15130:	85e6                	mv	a1,s9
   15132:	8522                	mv	a0,s0
   15134:	d446                	sw	a7,40(sp)
   15136:	c832                	sw	a2,16(sp)
   15138:	347000ef          	jal	15c7e <_Bfree>
   1513c:	4642                	lw	a2,16(sp)
   1513e:	47b2                	lw	a5,12(sp)
   15140:	58a2                	lw	a7,40(sp)
   15142:	00060023          	sb	zero,0(a2)
   15146:	0124a023          	sw	s2,0(s1)
   1514a:	c391                	beqz	a5,1514e <__gdtoa+0x7f6>
   1514c:	c390                	sw	a2,0(a5)
   1514e:	000ba783          	lw	a5,0(s7)
   15152:	542a                	lw	s0,168(sp)
   15154:	590a                	lw	s2,160(sp)
   15156:	0167e7b3          	or	a5,a5,s6
   1515a:	49fa                	lw	s3,156(sp)
   1515c:	4a6a                	lw	s4,152(sp)
   1515e:	4c2a                	lw	s8,136(sp)
   15160:	4c9a                	lw	s9,132(sp)
   15162:	4d0a                	lw	s10,128(sp)
   15164:	5df6                	lw	s11,124(sp)
   15166:	00fba023          	sw	a5,0(s7)
   1516a:	b1ed                	j	14e54 <__gdtoa+0x4fc>
   1516c:	b0dd90e3          	bne	s11,a3,14c6c <__gdtoa+0x314>
   15170:	004a2783          	lw	a5,4(s4)
   15174:	4742                	lw	a4,16(sp)
   15176:	0785                	addi	a5,a5,1
   15178:	aee7dae3          	bge	a5,a4,14c6c <__gdtoa+0x314>
   1517c:	47e2                	lw	a5,24(sp)
   1517e:	0e85                	addi	t4,t4,1
   15180:	4805                	li	a6,1
   15182:	0785                	addi	a5,a5,1
   15184:	cc3e                	sw	a5,24(sp)
   15186:	b4dd                	j	14c6c <__gdtoa+0x314>
   15188:	4785                	li	a5,1
   1518a:	cc82                	sw	zero,88(sp)
   1518c:	c8be                	sw	a5,80(sp)
   1518e:	55a2                	lw	a1,40(sp)
   15190:	00b04363          	bgtz	a1,15196 <__gdtoa+0x83e>
   15194:	4585                	li	a1,1
   15196:	862e                	mv	a2,a1
   15198:	ceae                	sw	a1,92(sp)
   1519a:	d62e                	sw	a1,44(sp)
   1519c:	d42e                	sw	a1,40(sp)
   1519e:	ba65                	j	14b56 <__gdtoa+0x1fe>
   151a0:	2f1000ef          	jal	15c90 <__multadd>
   151a4:	8c2a                	mv	s8,a0
   151a6:	ce0509e3          	beqz	a0,14e98 <__gdtoa+0x540>
   151aa:	8a2a                	mv	s4,a0
   151ac:	beb5                	j	14d28 <__gdtoa+0x3d0>
   151ae:	b20adae3          	bgez	s5,14ce2 <__gdtoa+0x38a>
   151b2:	5782                	lw	a5,32(sp)
   151b4:	835e                	mv	t1,s7
   151b6:	58a2                	lw	a7,40(sp)
   151b8:	4be2                	lw	s7,24(sp)
   151ba:	54b2                	lw	s1,44(sp)
   151bc:	8b3a                	mv	s6,a4
   151be:	6c079463          	bnez	a5,15886 <__gdtoa+0xf2e>
   151c2:	010ca603          	lw	a2,16(s9)
   151c6:	4685                	li	a3,1
   151c8:	4b41                	li	s6,16
   151ca:	001d8913          	addi	s2,s11,1
   151ce:	68c6d463          	bge	a3,a2,15856 <__gdtoa+0xefe>
   151d2:	89e2                	mv	s3,s8
   151d4:	864a                	mv	a2,s2
   151d6:	006d8023          	sb	t1,0(s11)
   151da:	8c52                	mv	s8,s4
   151dc:	85ea                	mv	a1,s10
   151de:	8522                	mv	a0,s0
   151e0:	d446                	sw	a7,40(sp)
   151e2:	c832                	sw	a2,16(sp)
   151e4:	29b000ef          	jal	15c7e <_Bfree>
   151e8:	57d2                	lw	a5,52(sp)
   151ea:	4642                	lw	a2,16(sp)
   151ec:	58a2                	lw	a7,40(sp)
   151ee:	00178913          	addi	s2,a5,1
   151f2:	f20c0fe3          	beqz	s8,15130 <__gdtoa+0x7d8>
   151f6:	00098a63          	beqz	s3,1520a <__gdtoa+0x8b2>
   151fa:	01898863          	beq	s3,s8,1520a <__gdtoa+0x8b2>
   151fe:	85ce                	mv	a1,s3
   15200:	8522                	mv	a0,s0
   15202:	27d000ef          	jal	15c7e <_Bfree>
   15206:	58a2                	lw	a7,40(sp)
   15208:	4642                	lw	a2,16(sp)
   1520a:	85e2                	mv	a1,s8
   1520c:	8522                	mv	a0,s0
   1520e:	d446                	sw	a7,40(sp)
   15210:	c832                	sw	a2,16(sp)
   15212:	26d000ef          	jal	15c7e <_Bfree>
   15216:	58a2                	lw	a7,40(sp)
   15218:	4642                	lw	a2,16(sp)
   1521a:	bf19                	j	15130 <__gdtoa+0x7d8>
   1521c:	85e6                	mv	a1,s9
   1521e:	8522                	mv	a0,s0
   15220:	d846                	sw	a7,48(sp)
   15222:	cc76                	sw	t4,24(sp)
   15224:	c842                	sw	a6,16(sp)
   15226:	7c7000ef          	jal	161ec <__lshift>
   1522a:	8caa                	mv	s9,a0
   1522c:	c60506e3          	beqz	a0,14e98 <__gdtoa+0x540>
   15230:	57b6                	lw	a5,108(sp)
   15232:	58c2                	lw	a7,48(sp)
   15234:	4ee2                	lw	t4,24(sp)
   15236:	4842                	lw	a6,16(sp)
   15238:	b4b9                	j	14c86 <__gdtoa+0x32e>
   1523a:	85ea                	mv	a1,s10
   1523c:	8566                	mv	a0,s9
   1523e:	cc46                	sw	a7,24(sp)
   15240:	c842                	sw	a6,16(sp)
   15242:	0b6010ef          	jal	162f8 <__mcmp>
   15246:	4842                	lw	a6,16(sp)
   15248:	48e2                	lw	a7,24(sp)
   1524a:	a40555e3          	bgez	a0,14c94 <__gdtoa+0x33c>
   1524e:	57d2                	lw	a5,52(sp)
   15250:	85e6                	mv	a1,s9
   15252:	4681                	li	a3,0
   15254:	17fd                	addi	a5,a5,-1
   15256:	4629                	li	a2,10
   15258:	8522                	mv	a0,s0
   1525a:	da3e                	sw	a5,52(sp)
   1525c:	235000ef          	jal	15c90 <__multadd>
   15260:	8caa                	mv	s9,a0
   15262:	c2050be3          	beqz	a0,14e98 <__gdtoa+0x540>
   15266:	47c6                	lw	a5,80(sp)
   15268:	48e2                	lw	a7,24(sp)
   1526a:	50079a63          	bnez	a5,1577e <__gdtoa+0xe26>
   1526e:	47f6                	lw	a5,92(sp)
   15270:	14f05863          	blez	a5,153c0 <__gdtoa+0xa68>
   15274:	d63e                	sw	a5,44(sp)
   15276:	5932                	lw	s2,44(sp)
   15278:	8dc6                	mv	s11,a7
   1527a:	4685                	li	a3,1
   1527c:	89c6                	mv	s3,a7
   1527e:	a801                	j	1528e <__gdtoa+0x936>
   15280:	211000ef          	jal	15c90 <__multadd>
   15284:	8caa                	mv	s9,a0
   15286:	c00509e3          	beqz	a0,14e98 <__gdtoa+0x540>
   1528a:	56b6                	lw	a3,108(sp)
   1528c:	0685                	addi	a3,a3,1
   1528e:	85ea                	mv	a1,s10
   15290:	8566                	mv	a0,s9
   15292:	d6b6                	sw	a3,108(sp)
   15294:	27a9                	jal	159de <__quorem_D2A>
   15296:	03050313          	addi	t1,a0,48
   1529a:	006d8023          	sb	t1,0(s11)
   1529e:	57b6                	lw	a5,108(sp)
   152a0:	4681                	li	a3,0
   152a2:	4629                	li	a2,10
   152a4:	85e6                	mv	a1,s9
   152a6:	8522                	mv	a0,s0
   152a8:	0d85                	addi	s11,s11,1
   152aa:	fd27cbe3          	blt	a5,s2,15280 <__gdtoa+0x928>
   152ae:	88ce                	mv	a7,s3
   152b0:	4981                	li	s3,0
   152b2:	5782                	lw	a5,32(sp)
   152b4:	2c078263          	beqz	a5,15578 <__gdtoa+0xc20>
   152b8:	4689                	li	a3,2
   152ba:	010ca603          	lw	a2,16(s9)
   152be:	2ed78363          	beq	a5,a3,155a4 <__gdtoa+0xc4c>
   152c2:	4685                	li	a3,1
   152c4:	1ac6c763          	blt	a3,a2,15472 <__gdtoa+0xb1a>
   152c8:	014ca683          	lw	a3,20(s9)
   152cc:	1a069363          	bnez	a3,15472 <__gdtoa+0xb1a>
   152d0:	00d036b3          	snez	a3,a3
   152d4:	00469b13          	slli	s6,a3,0x4
   152d8:	03000593          	li	a1,48
   152dc:	fffdc783          	lbu	a5,-1(s11)
   152e0:	866e                	mv	a2,s11
   152e2:	1dfd                	addi	s11,s11,-1
   152e4:	feb78ce3          	beq	a5,a1,152dc <__gdtoa+0x984>
   152e8:	bdd5                	j	151dc <__gdtoa+0x884>
   152ea:	57b2                	lw	a5,44(sp)
   152ec:	5742                	lw	a4,48(sp)
   152ee:	fff78693          	addi	a3,a5,-1
   152f2:	10d74463          	blt	a4,a3,153fa <__gdtoa+0xaa2>
   152f6:	40d70d33          	sub	s10,a4,a3
   152fa:	4407d263          	bgez	a5,1573e <__gdtoa+0xde6>
   152fe:	47e2                	lw	a5,24(sp)
   15300:	5732                	lw	a4,44(sp)
   15302:	d682                	sw	zero,108(sp)
   15304:	8f99                	sub	a5,a5,a4
   15306:	dc3e                	sw	a5,56(sp)
   15308:	b8f1                	j	14be4 <__gdtoa+0x28c>
   1530a:	4789                	li	a5,2
   1530c:	9927d7e3          	bge	a5,s2,14c9a <__gdtoa+0x342>
   15310:	85ea                	mv	a1,s10
   15312:	4681                	li	a3,0
   15314:	4615                	li	a2,5
   15316:	8522                	mv	a0,s0
   15318:	c846                	sw	a7,16(sp)
   1531a:	177000ef          	jal	15c90 <__multadd>
   1531e:	85aa                	mv	a1,a0
   15320:	b6050ce3          	beqz	a0,14e98 <__gdtoa+0x540>
   15324:	57b2                	lw	a5,44(sp)
   15326:	48c2                	lw	a7,16(sp)
   15328:	e3f9                	bnez	a5,153ee <__gdtoa+0xa96>
   1532a:	c82a                	sw	a0,16(sp)
   1532c:	8566                	mv	a0,s9
   1532e:	cc46                	sw	a7,24(sp)
   15330:	7c9000ef          	jal	162f8 <__mcmp>
   15334:	45c2                	lw	a1,16(sp)
   15336:	48e2                	lw	a7,24(sp)
   15338:	0aa05b63          	blez	a0,153ee <__gdtoa+0xa96>
   1533c:	57d2                	lw	a5,52(sp)
   1533e:	00278913          	addi	s2,a5,2
   15342:	03100793          	li	a5,49
   15346:	00188613          	addi	a2,a7,1
   1534a:	00f88023          	sb	a5,0(a7)
   1534e:	02000b13          	li	s6,32
   15352:	8522                	mv	a0,s0
   15354:	d446                	sw	a7,40(sp)
   15356:	c832                	sw	a2,16(sp)
   15358:	127000ef          	jal	15c7e <_Bfree>
   1535c:	4642                	lw	a2,16(sp)
   1535e:	58a2                	lw	a7,40(sp)
   15360:	dc0c08e3          	beqz	s8,15130 <__gdtoa+0x7d8>
   15364:	b55d                	j	1520a <__gdtoa+0x8b2>
   15366:	4605                	li	a2,1
   15368:	4585                	li	a1,1
   1536a:	fecff06f          	j	14b56 <__gdtoa+0x1fe>
   1536e:	85aa                	mv	a1,a0
   15370:	8642                	mv	a2,a6
   15372:	8522                	mv	a0,s0
   15374:	c0c6                	sw	a7,64(sp)
   15376:	d876                	sw	t4,48(sp)
   15378:	5a1000ef          	jal	16118 <__pow5mult>
   1537c:	8d2a                	mv	s10,a0
   1537e:	b0050de3          	beqz	a0,14e98 <__gdtoa+0x540>
   15382:	4685                	li	a3,1
   15384:	5ec2                	lw	t4,48(sp)
   15386:	4886                	lw	a7,64(sp)
   15388:	1526d063          	bge	a3,s2,154c8 <__gdtoa+0xb70>
   1538c:	010d2783          	lw	a5,16(s10)
   15390:	d846                	sw	a7,48(sp)
   15392:	c876                	sw	t4,16(sp)
   15394:	078d                	addi	a5,a5,3
   15396:	078a                	slli	a5,a5,0x2
   15398:	97ea                	add	a5,a5,s10
   1539a:	43c8                	lw	a0,4(a5)
   1539c:	2a1000ef          	jal	15e3c <__hi0bits>
   153a0:	58c2                	lw	a7,48(sp)
   153a2:	4ec2                	lw	t4,16(sp)
   153a4:	8a2a                	mv	s4,a0
   153a6:	885a                	mv	a6,s6
   153a8:	b0d9                	j	14c6e <__gdtoa+0x316>
   153aa:	4685                	li	a3,1
   153ac:	f326cfe3          	blt	a3,s2,152ea <__gdtoa+0x992>
   153b0:	47e2                	lw	a5,24(sp)
   153b2:	5d42                	lw	s10,48(sp)
   153b4:	9eae                	add	t4,t4,a1
   153b6:	dc3e                	sw	a5,56(sp)
   153b8:	97ae                	add	a5,a5,a1
   153ba:	cc3e                	sw	a5,24(sp)
   153bc:	829ff06f          	j	14be4 <__gdtoa+0x28c>
   153c0:	4789                	li	a5,2
   153c2:	4727ce63          	blt	a5,s2,1583e <__gdtoa+0xee6>
   153c6:	47f6                	lw	a5,92(sp)
   153c8:	d63e                	sw	a5,44(sp)
   153ca:	b575                	j	15276 <__gdtoa+0x91e>
   153cc:	57b2                	lw	a5,44(sp)
   153ce:	ccf04fe3          	bgtz	a5,150ac <__gdtoa+0x754>
   153d2:	ef81                	bnez	a5,153ea <__gdtoa+0xa92>
   153d4:	f001b787          	fld	fa5,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   153d8:	c87a                	sw	t5,16(sp)
   153da:	ca7e                	sw	t6,20(sp)
   153dc:	12f77753          	fmul.d	fa4,fa4,fa5
   153e0:	27c2                	fld	fa5,16(sp)
   153e2:	a2e787d3          	fle.d	a5,fa5,fa4
   153e6:	38078663          	beqz	a5,15772 <__gdtoa+0xe1a>
   153ea:	4581                	li	a1,0
   153ec:	4c01                	li	s8,0
   153ee:	57a2                	lw	a5,40(sp)
   153f0:	8646                	mv	a2,a7
   153f2:	4b41                	li	s6,16
   153f4:	40f00933          	neg	s2,a5
   153f8:	bfa9                	j	15352 <__gdtoa+0x9fa>
   153fa:	57c2                	lw	a5,48(sp)
   153fc:	4762                	lw	a4,24(sp)
   153fe:	4d01                	li	s10,0
   15400:	40f68633          	sub	a2,a3,a5
   15404:	57b2                	lw	a5,44(sp)
   15406:	dc3a                	sw	a4,56(sp)
   15408:	9832                	add	a6,a6,a2
   1540a:	d6be                	sw	a5,108(sp)
   1540c:	9ebe                	add	t4,t4,a5
   1540e:	97ba                	add	a5,a5,a4
   15410:	cc3e                	sw	a5,24(sp)
   15412:	d836                	sw	a3,48(sp)
   15414:	fd0ff06f          	j	14be4 <__gdtoa+0x28c>
   15418:	85e2                	mv	a1,s8
   1541a:	866a                	mv	a2,s10
   1541c:	8522                	mv	a0,s0
   1541e:	ccc6                	sw	a7,88(sp)
   15420:	c4f6                	sw	t4,72(sp)
   15422:	c0c2                	sw	a6,64(sp)
   15424:	4f5000ef          	jal	16118 <__pow5mult>
   15428:	8c2a                	mv	s8,a0
   1542a:	a60507e3          	beqz	a0,14e98 <__gdtoa+0x540>
   1542e:	85aa                	mv	a1,a0
   15430:	8666                	mv	a2,s9
   15432:	8522                	mv	a0,s0
   15434:	34f000ef          	jal	15f82 <__multiply>
   15438:	8aaa                	mv	s5,a0
   1543a:	a4050fe3          	beqz	a0,14e98 <__gdtoa+0x540>
   1543e:	85e6                	mv	a1,s9
   15440:	8522                	mv	a0,s0
   15442:	03d000ef          	jal	15c7e <_Bfree>
   15446:	57c2                	lw	a5,48(sp)
   15448:	4806                	lw	a6,64(sp)
   1544a:	4ea6                	lw	t4,72(sp)
   1544c:	41a787b3          	sub	a5,a5,s10
   15450:	d83e                	sw	a5,48(sp)
   15452:	48e6                	lw	a7,88(sp)
   15454:	8cd6                	mv	s9,s5
   15456:	fe078963          	beqz	a5,14c48 <__gdtoa+0x2f0>
   1545a:	fd2ff06f          	j	14c2c <__gdtoa+0x2d4>
   1545e:	89e2                	mv	s3,s8
   15460:	86ee                	mv	a3,s11
   15462:	001d8913          	addi	s2,s11,1
   15466:	8c52                	mv	s8,s4
   15468:	03900613          	li	a2,57
   1546c:	8dca                	mv	s11,s2
   1546e:	00c68023          	sb	a2,0(a3)
   15472:	03900593          	li	a1,57
   15476:	a019                	j	1547c <__gdtoa+0xb24>
   15478:	13b88f63          	beq	a7,s11,155b6 <__gdtoa+0xc5e>
   1547c:	fffdc683          	lbu	a3,-1(s11)
   15480:	866e                	mv	a2,s11
   15482:	1dfd                	addi	s11,s11,-1
   15484:	feb68ae3          	beq	a3,a1,15478 <__gdtoa+0xb20>
   15488:	0685                	addi	a3,a3,1
   1548a:	00dd8023          	sb	a3,0(s11)
   1548e:	02000b13          	li	s6,32
   15492:	b3a9                	j	151dc <__gdtoa+0x884>
   15494:	85e2                	mv	a1,s8
   15496:	8522                	mv	a0,s0
   15498:	d446                	sw	a7,40(sp)
   1549a:	c842                	sw	a6,16(sp)
   1549c:	551000ef          	jal	161ec <__lshift>
   154a0:	4842                	lw	a6,16(sp)
   154a2:	58a2                	lw	a7,40(sp)
   154a4:	8c2a                	mv	s8,a0
   154a6:	800512e3          	bnez	a0,14caa <__gdtoa+0x352>
   154aa:	b2fd                	j	14e98 <__gdtoa+0x540>
   154ac:	4785                	li	a5,1
   154ae:	cc82                	sw	zero,88(sp)
   154b0:	c8be                	sw	a5,80(sp)
   154b2:	e90ff06f          	j	14b42 <__gdtoa+0x1ea>
   154b6:	4785                	li	a5,1
   154b8:	c8be                	sw	a5,80(sp)
   154ba:	e88ff06f          	j	14b42 <__gdtoa+0x1ea>
   154be:	4785                	li	a5,1
   154c0:	c8be                	sw	a5,80(sp)
   154c2:	b1f1                	j	1518e <__gdtoa+0x836>
   154c4:	c882                	sw	zero,80(sp)
   154c6:	b1e1                	j	1518e <__gdtoa+0x836>
   154c8:	ecdd92e3          	bne	s11,a3,1538c <__gdtoa+0xa34>
   154cc:	004a2783          	lw	a5,4(s4)
   154d0:	4742                	lw	a4,16(sp)
   154d2:	0785                	addi	a5,a5,1
   154d4:	eae7dce3          	bge	a5,a4,1538c <__gdtoa+0xa34>
   154d8:	47e2                	lw	a5,24(sp)
   154da:	0e85                	addi	t4,t4,1
   154dc:	4b05                	li	s6,1
   154de:	0785                	addi	a5,a5,1
   154e0:	cc3e                	sw	a5,24(sp)
   154e2:	b56d                	j	1538c <__gdtoa+0xa34>
   154e4:	004c2583          	lw	a1,4(s8)
   154e8:	8522                	mv	a0,s0
   154ea:	c846                	sw	a7,16(sp)
   154ec:	271d                	jal	15c12 <_Balloc>
   154ee:	8a2a                	mv	s4,a0
   154f0:	9a0504e3          	beqz	a0,14e98 <__gdtoa+0x540>
   154f4:	010c2603          	lw	a2,16(s8)
   154f8:	00cc0593          	addi	a1,s8,12
   154fc:	0531                	addi	a0,a0,12
   154fe:	0609                	addi	a2,a2,2
   15500:	060a                	slli	a2,a2,0x2
   15502:	df7fb0ef          	jal	112f8 <memcpy>
   15506:	85d2                	mv	a1,s4
   15508:	4605                	li	a2,1
   1550a:	8522                	mv	a0,s0
   1550c:	4e1000ef          	jal	161ec <__lshift>
   15510:	48c2                	lw	a7,16(sp)
   15512:	8a2a                	mv	s4,a0
   15514:	f8051e63          	bnez	a0,14cb0 <__gdtoa+0x358>
   15518:	b241                	j	14e98 <__gdtoa+0x540>
   1551a:	ef81b707          	fld	fa4,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   1551e:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   15522:	3682                	fld	fa3,32(sp)
   15524:	fcc00637          	lui	a2,0xfcc00
   15528:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   1552c:	bc3e                	fsd	fa5,56(sp)
   1552e:	5562                	lw	a0,56(sp)
   15530:	55f2                	lw	a1,60(sp)
   15532:	832a                	mv	t1,a0
   15534:	962e                	add	a2,a2,a1
   15536:	de32                	sw	a2,60(sp)
   15538:	f001b707          	fld	fa4,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   1553c:	3782                	fld	fa5,32(sp)
   1553e:	dc1a                	sw	t1,56(sp)
   15540:	0ae7f753          	fsub.d	fa4,fa5,fa4
   15544:	37e2                	fld	fa5,56(sp)
   15546:	a2e79653          	flt.d	a2,fa5,fa4
   1554a:	1e061663          	bnez	a2,15736 <__gdtoa+0xdde>
   1554e:	22f797d3          	fneg.d	fa5,fa5
   15552:	a2f71653          	flt.d	a2,fa4,fa5
   15556:	e8061ae3          	bnez	a2,153ea <__gdtoa+0xa92>
   1555a:	5f02                	lw	t5,32(sp)
   1555c:	5f92                	lw	t6,36(sp)
   1555e:	65e9                	lui	a1,0x1a
   15560:	280c4b63          	bltz	s8,157f6 <__gdtoa+0xe9e>
   15564:	57a2                	lw	a5,40(sp)
   15566:	d002                	sw	zero,32(sp)
   15568:	7005b707          	fld	fa4,1792(a1) # 1a700 <__mprec_tens>
   1556c:	b407d0e3          	bgez	a5,150ac <__gdtoa+0x754>
   15570:	57b2                	lw	a5,44(sp)
   15572:	b2079de3          	bnez	a5,150ac <__gdtoa+0x754>
   15576:	bdb9                	j	153d4 <__gdtoa+0xa7c>
   15578:	85e6                	mv	a1,s9
   1557a:	4605                	li	a2,1
   1557c:	8522                	mv	a0,s0
   1557e:	c846                	sw	a7,16(sp)
   15580:	d41a                	sw	t1,40(sp)
   15582:	46b000ef          	jal	161ec <__lshift>
   15586:	8caa                	mv	s9,a0
   15588:	900508e3          	beqz	a0,14e98 <__gdtoa+0x540>
   1558c:	85ea                	mv	a1,s10
   1558e:	56b000ef          	jal	162f8 <__mcmp>
   15592:	48c2                	lw	a7,16(sp)
   15594:	eca04fe3          	bgtz	a0,15472 <__gdtoa+0xb1a>
   15598:	e511                	bnez	a0,155a4 <__gdtoa+0xc4c>
   1559a:	5322                	lw	t1,40(sp)
   1559c:	00137313          	andi	t1,t1,1
   155a0:	ec0319e3          	bnez	t1,15472 <__gdtoa+0xb1a>
   155a4:	010ca603          	lw	a2,16(s9)
   155a8:	4685                	li	a3,1
   155aa:	4b41                	li	s6,16
   155ac:	d2c6c6e3          	blt	a3,a2,152d8 <__gdtoa+0x980>
   155b0:	014ca683          	lw	a3,20(s9)
   155b4:	bb31                	j	152d0 <__gdtoa+0x978>
   155b6:	57d2                	lw	a5,52(sp)
   155b8:	02000b13          	li	s6,32
   155bc:	0785                	addi	a5,a5,1
   155be:	da3e                	sw	a5,52(sp)
   155c0:	03100793          	li	a5,49
   155c4:	00f88023          	sb	a5,0(a7)
   155c8:	b911                	j	151dc <__gdtoa+0x884>
   155ca:	5782                	lw	a5,32(sp)
   155cc:	8926                	mv	s2,s1
   155ce:	835e                	mv	t1,s7
   155d0:	58a2                	lw	a7,40(sp)
   155d2:	4be2                	lw	s7,24(sp)
   155d4:	54b2                	lw	s1,44(sp)
   155d6:	cb91                	beqz	a5,155ea <__gdtoa+0xc92>
   155d8:	010ca603          	lw	a2,16(s9)
   155dc:	4685                	li	a3,1
   155de:	fcc6c163          	blt	a3,a2,14da0 <__gdtoa+0x448>
   155e2:	014ca683          	lw	a3,20(s9)
   155e6:	fa069d63          	bnez	a3,14da0 <__gdtoa+0x448>
   155ea:	85e6                	mv	a1,s9
   155ec:	4605                	li	a2,1
   155ee:	8522                	mv	a0,s0
   155f0:	d446                	sw	a7,40(sp)
   155f2:	c81a                	sw	t1,16(sp)
   155f4:	3f9000ef          	jal	161ec <__lshift>
   155f8:	8caa                	mv	s9,a0
   155fa:	88050fe3          	beqz	a0,14e98 <__gdtoa+0x540>
   155fe:	85ea                	mv	a1,s10
   15600:	4f9000ef          	jal	162f8 <__mcmp>
   15604:	4342                	lw	t1,16(sp)
   15606:	58a2                	lw	a7,40(sp)
   15608:	22a05e63          	blez	a0,15844 <__gdtoa+0xeec>
   1560c:	03900693          	li	a3,57
   15610:	e4d307e3          	beq	t1,a3,1545e <__gdtoa+0xb06>
   15614:	02000793          	li	a5,32
   15618:	03190313          	addi	t1,s2,49
   1561c:	d03e                	sw	a5,32(sp)
   1561e:	b655                	j	151c2 <__gdtoa+0x86a>
   15620:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   15624:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   15628:	a2f715d3          	flt.d	a1,fa4,fa5
   1562c:	9e059ae3          	bnez	a1,15020 <__gdtoa+0x6c8>
   15630:	a2e7a5d3          	feq.d	a1,fa5,fa4
   15634:	c581                	beqz	a1,1563c <__gdtoa+0xce4>
   15636:	8b85                	andi	a5,a5,1
   15638:	9e0794e3          	bnez	a5,15020 <__gdtoa+0x6c8>
   1563c:	87b2                	mv	a5,a2
   1563e:	4b41                	li	s6,16
   15640:	03000593          	li	a1,48
   15644:	fff7c703          	lbu	a4,-1(a5)
   15648:	863e                	mv	a2,a5
   1564a:	17fd                	addi	a5,a5,-1
   1564c:	feb70ce3          	beq	a4,a1,15644 <__gdtoa+0xcec>
   15650:	892a                	mv	s2,a0
   15652:	bcf9                	j	15130 <__gdtoa+0x7d8>
   15654:	03100693          	li	a3,49
   15658:	0505                	addi	a0,a0,1
   1565a:	b2d5                	j	1503e <__gdtoa+0x6e6>
   1565c:	de32                	sw	a2,60(sp)
   1565e:	dc1a                	sw	t1,56(sp)
   15660:	3762                	fld	fa4,56(sp)
   15662:	de7e                	sw	t6,60(sp)
   15664:	dc7a                	sw	t5,56(sp)
   15666:	35e2                	fld	fa1,56(sp)
   15668:	12e7f653          	fmul.d	fa2,fa5,fa4
   1566c:	ee01b707          	fld	fa4,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   15670:	4685                	li	a3,1
   15672:	22b587d3          	fmv.d	fa5,fa1
   15676:	d6b6                	sw	a3,108(sp)
   15678:	8646                	mv	a2,a7
   1567a:	4f81                	li	t6,0
   1567c:	a029                	j	15686 <__gdtoa+0xd2e>
   1567e:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   15682:	d6ba                	sw	a4,108(sp)
   15684:	4f85                	li	t6,1
   15686:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1568a:	0605                	addi	a2,a2,1
   1568c:	03078693          	addi	a3,a5,48
   15690:	0ff6f693          	zext.b	a3,a3
   15694:	c791                	beqz	a5,156a0 <__gdtoa+0xd48>
   15696:	d20786d3          	fcvt.d.w	fa3,a5
   1569a:	4f85                	li	t6,1
   1569c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   156a0:	fed60fa3          	sb	a3,-1(a2)
   156a4:	57b6                	lw	a5,108(sp)
   156a6:	00178713          	addi	a4,a5,1
   156aa:	fca79ae3          	bne	a5,a0,1567e <__gdtoa+0xd26>
   156ae:	000f8463          	beqz	t6,156b6 <__gdtoa+0xd5e>
   156b2:	22f785d3          	fmv.d	fa1,fa5
   156b6:	f081b787          	fld	fa5,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   156ba:	02f67753          	fadd.d	fa4,fa2,fa5
   156be:	a2b71553          	flt.d	a0,fa4,fa1
   156c2:	0e051f63          	bnez	a0,157c0 <__gdtoa+0xe68>
   156c6:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   156ca:	a2f596d3          	flt.d	a3,fa1,fa5
   156ce:	12069763          	bnez	a3,157fc <__gdtoa+0xea4>
   156d2:	5f02                	lw	t5,32(sp)
   156d4:	5f92                	lw	t6,36(sp)
   156d6:	e80c57e3          	bgez	s8,15564 <__gdtoa+0xc0c>
   156da:	47e2                	lw	a5,24(sp)
   156dc:	5d42                	lw	s10,48(sp)
   156de:	d002                	sw	zero,32(sp)
   156e0:	dc3e                	sw	a5,56(sp)
   156e2:	4c01                	li	s8,0
   156e4:	d1aff06f          	j	14bfe <__gdtoa+0x2a6>
   156e8:	835e                	mv	t1,s7
   156ea:	89e2                	mv	s3,s8
   156ec:	58a2                	lw	a7,40(sp)
   156ee:	4be2                	lw	s7,24(sp)
   156f0:	54b2                	lw	s1,44(sp)
   156f2:	8c52                	mv	s8,s4
   156f4:	be7d                	j	152b2 <__gdtoa+0x95a>
   156f6:	e20782e3          	beqz	a5,1551a <__gdtoa+0xbc2>
   156fa:	4576                	lw	a0,92(sp)
   156fc:	e4a05fe3          	blez	a0,1555a <__gdtoa+0xc02>
   15700:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   15704:	53fd                	li	t2,-1
   15706:	12f777d3          	fmul.d	fa5,fa4,fa5
   1570a:	ee81b707          	fld	fa4,-280(gp) # 1b6f8 <__SDATA_BEGIN__+0x40>
   1570e:	bc3e                	fsd	fa5,56(sp)
   15710:	36e2                	fld	fa3,56(sp)
   15712:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   15716:	fcc00637          	lui	a2,0xfcc00
   1571a:	5f62                	lw	t5,56(sp)
   1571c:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15720:	5ff2                	lw	t6,60(sp)
   15722:	a0be                	fsd	fa5,64(sp)
   15724:	4706                	lw	a4,64(sp)
   15726:	4796                	lw	a5,68(sp)
   15728:	833a                	mv	t1,a4
   1572a:	963e                	add	a2,a2,a5
   1572c:	857ff06f          	j	14f82 <__gdtoa+0x62a>
   15730:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe45a3>
   15734:	b0f5                	j	15020 <__gdtoa+0x6c8>
   15736:	4909                	li	s2,2
   15738:	4581                	li	a1,0
   1573a:	4c01                	li	s8,0
   1573c:	b119                	j	15342 <__gdtoa+0x9ea>
   1573e:	4762                	lw	a4,24(sp)
   15740:	d6be                	sw	a5,108(sp)
   15742:	9ebe                	add	t4,t4,a5
   15744:	97ba                	add	a5,a5,a4
   15746:	dc3a                	sw	a4,56(sp)
   15748:	cc3e                	sw	a5,24(sp)
   1574a:	c9aff06f          	j	14be4 <__gdtoa+0x28c>
   1574e:	835e                	mv	t1,s7
   15750:	03900693          	li	a3,57
   15754:	58a2                	lw	a7,40(sp)
   15756:	4be2                	lw	s7,24(sp)
   15758:	54b2                	lw	s1,44(sp)
   1575a:	d0d302e3          	beq	t1,a3,1545e <__gdtoa+0xb06>
   1575e:	0305                	addi	t1,t1,1
   15760:	89e2                	mv	s3,s8
   15762:	001d8613          	addi	a2,s11,1
   15766:	006d8023          	sb	t1,0(s11)
   1576a:	8c52                	mv	s8,s4
   1576c:	02000b13          	li	s6,32
   15770:	b4b5                	j	151dc <__gdtoa+0x884>
   15772:	57d2                	lw	a5,52(sp)
   15774:	4581                	li	a1,0
   15776:	4c01                	li	s8,0
   15778:	00278913          	addi	s2,a5,2
   1577c:	b6d9                	j	15342 <__gdtoa+0x9ea>
   1577e:	85e2                	mv	a1,s8
   15780:	4681                	li	a3,0
   15782:	4629                	li	a2,10
   15784:	8522                	mv	a0,s0
   15786:	2329                	jal	15c90 <__multadd>
   15788:	8c2a                	mv	s8,a0
   1578a:	f0050763          	beqz	a0,14e98 <__gdtoa+0x540>
   1578e:	47f6                	lw	a5,92(sp)
   15790:	4842                	lw	a6,16(sp)
   15792:	48e2                	lw	a7,24(sp)
   15794:	00f05563          	blez	a5,1579e <__gdtoa+0xe46>
   15798:	d63e                	sw	a5,44(sp)
   1579a:	d06ff06f          	j	14ca0 <__gdtoa+0x348>
   1579e:	4789                	li	a5,2
   157a0:	0927cf63          	blt	a5,s2,1583e <__gdtoa+0xee6>
   157a4:	47f6                	lw	a5,92(sp)
   157a6:	d63e                	sw	a5,44(sp)
   157a8:	cf8ff06f          	j	14ca0 <__gdtoa+0x348>
   157ac:	d2000753          	fcvt.d.w	fa4,zero
   157b0:	00138913          	addi	s2,t2,1
   157b4:	a2e7ab53          	feq.d	s6,fa5,fa4
   157b8:	001b3b13          	seqz	s6,s6
   157bc:	0b12                	slli	s6,s6,0x4
   157be:	ba8d                	j	15130 <__gdtoa+0x7d8>
   157c0:	00138513          	addi	a0,t2,1
   157c4:	85dff06f          	j	15020 <__gdtoa+0x6c8>
   157c8:	5f02                	lw	t5,32(sp)
   157ca:	5f92                	lw	t6,36(sp)
   157cc:	d80c5ce3          	bgez	s8,15564 <__gdtoa+0xc0c>
   157d0:	d002                	sw	zero,32(sp)
   157d2:	bccff06f          	j	14b9e <__gdtoa+0x246>
   157d6:	57b2                	lw	a5,44(sp)
   157d8:	5742                	lw	a4,48(sp)
   157da:	fff78693          	addi	a3,a5,-1
   157de:	c0d74ee3          	blt	a4,a3,153fa <__gdtoa+0xaa2>
   157e2:	4662                	lw	a2,24(sp)
   157e4:	9ebe                	add	t4,t4,a5
   157e6:	d6be                	sw	a5,108(sp)
   157e8:	97b2                	add	a5,a5,a2
   157ea:	dc32                	sw	a2,56(sp)
   157ec:	40d70d33          	sub	s10,a4,a3
   157f0:	cc3e                	sw	a5,24(sp)
   157f2:	bf2ff06f          	j	14be4 <__gdtoa+0x28c>
   157f6:	d002                	sw	zero,32(sp)
   157f8:	ba0ff06f          	j	14b98 <__gdtoa+0x240>
   157fc:	d20007d3          	fcvt.d.w	fa5,zero
   15800:	87b2                	mv	a5,a2
   15802:	00138513          	addi	a0,t2,1
   15806:	a2f5ab53          	feq.d	s6,fa1,fa5
   1580a:	001b3b13          	seqz	s6,s6
   1580e:	0b12                	slli	s6,s6,0x4
   15810:	bd05                	j	15640 <__gdtoa+0xce8>
   15812:	835e                	mv	t1,s7
   15814:	03900693          	li	a3,57
   15818:	8926                	mv	s2,s1
   1581a:	58a2                	lw	a7,40(sp)
   1581c:	4be2                	lw	s7,24(sp)
   1581e:	54b2                	lw	s1,44(sp)
   15820:	c2d30fe3          	beq	t1,a3,1545e <__gdtoa+0xb06>
   15824:	07505d63          	blez	s5,1589e <__gdtoa+0xf46>
   15828:	03190313          	addi	t1,s2,49
   1582c:	02000b13          	li	s6,32
   15830:	89e2                	mv	s3,s8
   15832:	001d8613          	addi	a2,s11,1
   15836:	006d8023          	sb	t1,0(s11)
   1583a:	8c52                	mv	s8,s4
   1583c:	b245                	j	151dc <__gdtoa+0x884>
   1583e:	47f6                	lw	a5,92(sp)
   15840:	d63e                	sw	a5,44(sp)
   15842:	b4f9                	j	15310 <__gdtoa+0x9b8>
   15844:	e509                	bnez	a0,1584e <__gdtoa+0xef6>
   15846:	00137693          	andi	a3,t1,1
   1584a:	dc0691e3          	bnez	a3,1560c <__gdtoa+0xcb4>
   1584e:	02000793          	li	a5,32
   15852:	d03e                	sw	a5,32(sp)
   15854:	b2bd                	j	151c2 <__gdtoa+0x86a>
   15856:	014ca683          	lw	a3,20(s9)
   1585a:	96069ce3          	bnez	a3,151d2 <__gdtoa+0x87a>
   1585e:	5b02                	lw	s6,32(sp)
   15860:	ba8d                	j	151d2 <__gdtoa+0x87a>
   15862:	03900693          	li	a3,57
   15866:	88da                	mv	a7,s6
   15868:	00da8b63          	beq	s5,a3,1587e <__gdtoa+0xf26>
   1586c:	001a8313          	addi	t1,s5,1
   15870:	02000b13          	li	s6,32
   15874:	bab9                	j	151d2 <__gdtoa+0x87a>
   15876:	4b41                	li	s6,16
   15878:	001d8913          	addi	s2,s11,1
   1587c:	ba99                	j	151d2 <__gdtoa+0x87a>
   1587e:	89e2                	mv	s3,s8
   15880:	86ee                	mv	a3,s11
   15882:	8c52                	mv	s8,s4
   15884:	b6d5                	j	15468 <__gdtoa+0xb10>
   15886:	010ca603          	lw	a2,16(s9)
   1588a:	4685                	li	a3,1
   1588c:	d0c6ca63          	blt	a3,a2,14da0 <__gdtoa+0x448>
   15890:	014ca683          	lw	a3,20(s9)
   15894:	d0069663          	bnez	a3,14da0 <__gdtoa+0x448>
   15898:	001d8913          	addi	s2,s11,1
   1589c:	ba1d                	j	151d2 <__gdtoa+0x87a>
   1589e:	010ca603          	lw	a2,16(s9)
   158a2:	4685                	li	a3,1
   158a4:	4b41                	li	s6,16
   158a6:	f8c6c5e3          	blt	a3,a2,15830 <__gdtoa+0xed8>
   158aa:	014cab03          	lw	s6,20(s9)
   158ae:	01603b33          	snez	s6,s6
   158b2:	0b12                	slli	s6,s6,0x4
   158b4:	bfb5                	j	15830 <__gdtoa+0xed8>
   158b6:	000ace63          	bltz	s5,158d2 <__gdtoa+0xf7a>
   158ba:	01596ab3          	or	s5,s2,s5
   158be:	000a9663          	bnez	s5,158ca <__gdtoa+0xf72>
   158c2:	0009a783          	lw	a5,0(s3)
   158c6:	8b85                	andi	a5,a5,1
   158c8:	c789                	beqz	a5,158d2 <__gdtoa+0xf7a>
   158ca:	c0d05c63          	blez	a3,14ce2 <__gdtoa+0x38a>
   158ce:	c0cff06f          	j	14cda <__gdtoa+0x382>
   158d2:	5782                	lw	a5,32(sp)
   158d4:	8926                	mv	s2,s1
   158d6:	835e                	mv	t1,s7
   158d8:	58a2                	lw	a7,40(sp)
   158da:	4be2                	lw	s7,24(sp)
   158dc:	54b2                	lw	s1,44(sp)
   158de:	c385                	beqz	a5,158fe <__gdtoa+0xfa6>
   158e0:	010ca583          	lw	a1,16(s9)
   158e4:	4605                	li	a2,1
   158e6:	cab64d63          	blt	a2,a1,14da0 <__gdtoa+0x448>
   158ea:	014ca603          	lw	a2,20(s9)
   158ee:	ca061963          	bnez	a2,14da0 <__gdtoa+0x448>
   158f2:	ced04ce3          	bgtz	a3,155ea <__gdtoa+0xc92>
   158f6:	4b01                	li	s6,0
   158f8:	001d8913          	addi	s2,s11,1
   158fc:	b8d9                	j	151d2 <__gdtoa+0x87a>
   158fe:	8cd052e3          	blez	a3,151c2 <__gdtoa+0x86a>
   15902:	b1e5                	j	155ea <__gdtoa+0xc92>

00015904 <__rv_alloc_D2A.part.0>:
   15904:	66e9                	lui	a3,0x1a
   15906:	6569                	lui	a0,0x1a
   15908:	1141                	addi	sp,sp,-16
   1590a:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   1590e:	4601                	li	a2,0
   15910:	03900593          	li	a1,57
   15914:	36c50513          	addi	a0,a0,876 # 1a36c <__clzsi2+0xec>
   15918:	c606                	sw	ra,12(sp)
   1591a:	0a8010ef          	jal	169c2 <__assert_func>

0001591e <__rv_alloc_D2A>:
   1591e:	1141                	addi	sp,sp,-16
   15920:	c422                	sw	s0,8(sp)
   15922:	c606                	sw	ra,12(sp)
   15924:	46dd                	li	a3,23
   15926:	842a                	mv	s0,a0
   15928:	4705                	li	a4,1
   1592a:	4791                	li	a5,4
   1592c:	02b6f363          	bgeu	a3,a1,15952 <__rv_alloc_D2A+0x34>
   15930:	0786                	slli	a5,a5,0x1
   15932:	01478693          	addi	a3,a5,20
   15936:	863a                	mv	a2,a4
   15938:	0705                	addi	a4,a4,1
   1593a:	fed5fbe3          	bgeu	a1,a3,15930 <__rv_alloc_D2A+0x12>
   1593e:	85b2                	mv	a1,a2
   15940:	dc50                	sw	a2,60(s0)
   15942:	8522                	mv	a0,s0
   15944:	24f9                	jal	15c12 <_Balloc>
   15946:	c911                	beqz	a0,1595a <__rv_alloc_D2A+0x3c>
   15948:	40b2                	lw	ra,12(sp)
   1594a:	dc08                	sw	a0,56(s0)
   1594c:	4422                	lw	s0,8(sp)
   1594e:	0141                	addi	sp,sp,16
   15950:	8082                	ret
   15952:	02052e23          	sw	zero,60(a0)
   15956:	4581                	li	a1,0
   15958:	b7ed                	j	15942 <__rv_alloc_D2A+0x24>
   1595a:	376d                	jal	15904 <__rv_alloc_D2A.part.0>

0001595c <__nrv_alloc_D2A>:
   1595c:	1141                	addi	sp,sp,-16
   1595e:	c422                	sw	s0,8(sp)
   15960:	c226                	sw	s1,4(sp)
   15962:	c04a                	sw	s2,0(sp)
   15964:	c606                	sw	ra,12(sp)
   15966:	485d                	li	a6,23
   15968:	84aa                	mv	s1,a0
   1596a:	842e                	mv	s0,a1
   1596c:	8932                	mv	s2,a2
   1596e:	4705                	li	a4,1
   15970:	4791                	li	a5,4
   15972:	04d87763          	bgeu	a6,a3,159c0 <__nrv_alloc_D2A+0x64>
   15976:	0786                	slli	a5,a5,0x1
   15978:	01478813          	addi	a6,a5,20
   1597c:	85ba                	mv	a1,a4
   1597e:	0705                	addi	a4,a4,1
   15980:	ff06fbe3          	bgeu	a3,a6,15976 <__nrv_alloc_D2A+0x1a>
   15984:	dccc                	sw	a1,60(s1)
   15986:	8526                	mv	a0,s1
   15988:	2469                	jal	15c12 <_Balloc>
   1598a:	c129                	beqz	a0,159cc <__nrv_alloc_D2A+0x70>
   1598c:	dc88                	sw	a0,56(s1)
   1598e:	00044783          	lbu	a5,0(s0)
   15992:	00140593          	addi	a1,s0,1
   15996:	00f50023          	sb	a5,0(a0)
   1599a:	c79d                	beqz	a5,159c8 <__nrv_alloc_D2A+0x6c>
   1599c:	87aa                	mv	a5,a0
   1599e:	0005c703          	lbu	a4,0(a1)
   159a2:	0785                	addi	a5,a5,1
   159a4:	0585                	addi	a1,a1,1
   159a6:	00e78023          	sb	a4,0(a5)
   159aa:	fb75                	bnez	a4,1599e <__nrv_alloc_D2A+0x42>
   159ac:	00090463          	beqz	s2,159b4 <__nrv_alloc_D2A+0x58>
   159b0:	00f92023          	sw	a5,0(s2)
   159b4:	40b2                	lw	ra,12(sp)
   159b6:	4422                	lw	s0,8(sp)
   159b8:	4492                	lw	s1,4(sp)
   159ba:	4902                	lw	s2,0(sp)
   159bc:	0141                	addi	sp,sp,16
   159be:	8082                	ret
   159c0:	02052e23          	sw	zero,60(a0)
   159c4:	4581                	li	a1,0
   159c6:	b7c1                	j	15986 <__nrv_alloc_D2A+0x2a>
   159c8:	87aa                	mv	a5,a0
   159ca:	b7cd                	j	159ac <__nrv_alloc_D2A+0x50>
   159cc:	f39ff0ef          	jal	15904 <__rv_alloc_D2A.part.0>

000159d0 <__freedtoa>:
   159d0:	5d54                	lw	a3,60(a0)
   159d2:	4705                	li	a4,1
   159d4:	00d71733          	sll	a4,a4,a3
   159d8:	c1d4                	sw	a3,4(a1)
   159da:	c598                	sw	a4,8(a1)
   159dc:	a44d                	j	15c7e <_Bfree>

000159de <__quorem_D2A>:
   159de:	1101                	addi	sp,sp,-32
   159e0:	ca26                	sw	s1,20(sp)
   159e2:	491c                	lw	a5,16(a0)
   159e4:	4984                	lw	s1,16(a1)
   159e6:	ce06                	sw	ra,28(sp)
   159e8:	1497c163          	blt	a5,s1,15b2a <__quorem_D2A+0x14c>
   159ec:	14fd                	addi	s1,s1,-1
   159ee:	00249313          	slli	t1,s1,0x2
   159f2:	cc22                	sw	s0,24(sp)
   159f4:	01458413          	addi	s0,a1,20
   159f8:	c64e                	sw	s3,12(sp)
   159fa:	c452                	sw	s4,8(sp)
   159fc:	006409b3          	add	s3,s0,t1
   15a00:	01450a13          	addi	s4,a0,20
   15a04:	0009a783          	lw	a5,0(s3)
   15a08:	9352                	add	t1,t1,s4
   15a0a:	00032703          	lw	a4,0(t1)
   15a0e:	c84a                	sw	s2,16(sp)
   15a10:	c256                	sw	s5,4(sp)
   15a12:	0785                	addi	a5,a5,1
   15a14:	02f75933          	divu	s2,a4,a5
   15a18:	8aaa                	mv	s5,a0
   15a1a:	08f76663          	bltu	a4,a5,15aa6 <__quorem_D2A+0xc8>
   15a1e:	6541                	lui	a0,0x10
   15a20:	88a2                	mv	a7,s0
   15a22:	8852                	mv	a6,s4
   15a24:	4f01                	li	t5,0
   15a26:	4e81                	li	t4,0
   15a28:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15a2a:	0008a783          	lw	a5,0(a7)
   15a2e:	00082603          	lw	a2,0(a6)
   15a32:	0811                	addi	a6,a6,4
   15a34:	00a7f6b3          	and	a3,a5,a0
   15a38:	83c1                	srli	a5,a5,0x10
   15a3a:	00a67733          	and	a4,a2,a0
   15a3e:	01065e13          	srli	t3,a2,0x10
   15a42:	0891                	addi	a7,a7,4
   15a44:	032686b3          	mul	a3,a3,s2
   15a48:	032787b3          	mul	a5,a5,s2
   15a4c:	96fa                	add	a3,a3,t5
   15a4e:	00a6f633          	and	a2,a3,a0
   15a52:	8f11                	sub	a4,a4,a2
   15a54:	41d70733          	sub	a4,a4,t4
   15a58:	82c1                	srli	a3,a3,0x10
   15a5a:	01075613          	srli	a2,a4,0x10
   15a5e:	8a05                	andi	a2,a2,1
   15a60:	8f69                	and	a4,a4,a0
   15a62:	97b6                	add	a5,a5,a3
   15a64:	00a7f6b3          	and	a3,a5,a0
   15a68:	9636                	add	a2,a2,a3
   15a6a:	40ce06b3          	sub	a3,t3,a2
   15a6e:	01069613          	slli	a2,a3,0x10
   15a72:	8f51                	or	a4,a4,a2
   15a74:	82c1                	srli	a3,a3,0x10
   15a76:	fee82e23          	sw	a4,-4(a6)
   15a7a:	0107df13          	srli	t5,a5,0x10
   15a7e:	0016fe93          	andi	t4,a3,1
   15a82:	fb19f4e3          	bgeu	s3,a7,15a2a <__quorem_D2A+0x4c>
   15a86:	00032783          	lw	a5,0(t1)
   15a8a:	ef91                	bnez	a5,15aa6 <__quorem_D2A+0xc8>
   15a8c:	1371                	addi	t1,t1,-4
   15a8e:	006a6663          	bltu	s4,t1,15a9a <__quorem_D2A+0xbc>
   15a92:	a801                	j	15aa2 <__quorem_D2A+0xc4>
   15a94:	14fd                	addi	s1,s1,-1
   15a96:	006a7663          	bgeu	s4,t1,15aa2 <__quorem_D2A+0xc4>
   15a9a:	00032783          	lw	a5,0(t1)
   15a9e:	1371                	addi	t1,t1,-4
   15aa0:	dbf5                	beqz	a5,15a94 <__quorem_D2A+0xb6>
   15aa2:	009aa823          	sw	s1,16(s5)
   15aa6:	8556                	mv	a0,s5
   15aa8:	051000ef          	jal	162f8 <__mcmp>
   15aac:	06054563          	bltz	a0,15b16 <__quorem_D2A+0x138>
   15ab0:	6541                	lui	a0,0x10
   15ab2:	85d2                	mv	a1,s4
   15ab4:	4681                	li	a3,0
   15ab6:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15ab8:	419c                	lw	a5,0(a1)
   15aba:	4010                	lw	a2,0(s0)
   15abc:	0591                	addi	a1,a1,4
   15abe:	00a7f733          	and	a4,a5,a0
   15ac2:	00a67833          	and	a6,a2,a0
   15ac6:	41070733          	sub	a4,a4,a6
   15aca:	8f15                	sub	a4,a4,a3
   15acc:	01075693          	srli	a3,a4,0x10
   15ad0:	8a85                	andi	a3,a3,1
   15ad2:	8241                	srli	a2,a2,0x10
   15ad4:	96b2                	add	a3,a3,a2
   15ad6:	83c1                	srli	a5,a5,0x10
   15ad8:	8f95                	sub	a5,a5,a3
   15ada:	01079693          	slli	a3,a5,0x10
   15ade:	8f69                	and	a4,a4,a0
   15ae0:	8f55                	or	a4,a4,a3
   15ae2:	83c1                	srli	a5,a5,0x10
   15ae4:	0411                	addi	s0,s0,4
   15ae6:	fee5ae23          	sw	a4,-4(a1)
   15aea:	0017f693          	andi	a3,a5,1
   15aee:	fc89f5e3          	bgeu	s3,s0,15ab8 <__quorem_D2A+0xda>
   15af2:	00249793          	slli	a5,s1,0x2
   15af6:	97d2                	add	a5,a5,s4
   15af8:	4398                	lw	a4,0(a5)
   15afa:	ef09                	bnez	a4,15b14 <__quorem_D2A+0x136>
   15afc:	17f1                	addi	a5,a5,-4
   15afe:	00fa6663          	bltu	s4,a5,15b0a <__quorem_D2A+0x12c>
   15b02:	a039                	j	15b10 <__quorem_D2A+0x132>
   15b04:	14fd                	addi	s1,s1,-1
   15b06:	00fa7563          	bgeu	s4,a5,15b10 <__quorem_D2A+0x132>
   15b0a:	4398                	lw	a4,0(a5)
   15b0c:	17f1                	addi	a5,a5,-4
   15b0e:	db7d                	beqz	a4,15b04 <__quorem_D2A+0x126>
   15b10:	009aa823          	sw	s1,16(s5)
   15b14:	0905                	addi	s2,s2,1
   15b16:	4462                	lw	s0,24(sp)
   15b18:	40f2                	lw	ra,28(sp)
   15b1a:	49b2                	lw	s3,12(sp)
   15b1c:	4a22                	lw	s4,8(sp)
   15b1e:	4a92                	lw	s5,4(sp)
   15b20:	44d2                	lw	s1,20(sp)
   15b22:	854a                	mv	a0,s2
   15b24:	4942                	lw	s2,16(sp)
   15b26:	6105                	addi	sp,sp,32
   15b28:	8082                	ret
   15b2a:	40f2                	lw	ra,28(sp)
   15b2c:	44d2                	lw	s1,20(sp)
   15b2e:	4501                	li	a0,0
   15b30:	6105                	addi	sp,sp,32
   15b32:	8082                	ret

00015b34 <__rshift_D2A>:
   15b34:	01052803          	lw	a6,16(a0)
   15b38:	4055de13          	srai	t3,a1,0x5
   15b3c:	010e4763          	blt	t3,a6,15b4a <__rshift_D2A+0x16>
   15b40:	00052823          	sw	zero,16(a0)
   15b44:	00052a23          	sw	zero,20(a0)
   15b48:	8082                	ret
   15b4a:	01450313          	addi	t1,a0,20
   15b4e:	00281613          	slli	a2,a6,0x2
   15b52:	002e1793          	slli	a5,t3,0x2
   15b56:	89fd                	andi	a1,a1,31
   15b58:	961a                	add	a2,a2,t1
   15b5a:	979a                	add	a5,a5,t1
   15b5c:	c5a1                	beqz	a1,15ba4 <__rshift_D2A+0x70>
   15b5e:	4394                	lw	a3,0(a5)
   15b60:	02000e93          	li	t4,32
   15b64:	0791                	addi	a5,a5,4
   15b66:	40be8eb3          	sub	t4,t4,a1
   15b6a:	00b6d6b3          	srl	a3,a3,a1
   15b6e:	06c7f063          	bgeu	a5,a2,15bce <__rshift_D2A+0x9a>
   15b72:	889a                	mv	a7,t1
   15b74:	4398                	lw	a4,0(a5)
   15b76:	0891                	addi	a7,a7,4
   15b78:	0791                	addi	a5,a5,4
   15b7a:	01d71733          	sll	a4,a4,t4
   15b7e:	8f55                	or	a4,a4,a3
   15b80:	fee8ae23          	sw	a4,-4(a7)
   15b84:	ffc7a683          	lw	a3,-4(a5)
   15b88:	00b6d6b3          	srl	a3,a3,a1
   15b8c:	fec7e4e3          	bltu	a5,a2,15b74 <__rshift_D2A+0x40>
   15b90:	41c80833          	sub	a6,a6,t3
   15b94:	080a                	slli	a6,a6,0x2
   15b96:	1871                	addi	a6,a6,-4
   15b98:	981a                	add	a6,a6,t1
   15b9a:	00d82023          	sw	a3,0(a6)
   15b9e:	c28d                	beqz	a3,15bc0 <__rshift_D2A+0x8c>
   15ba0:	0811                	addi	a6,a6,4
   15ba2:	a839                	j	15bc0 <__rshift_D2A+0x8c>
   15ba4:	871a                	mv	a4,t1
   15ba6:	f8c7fde3          	bgeu	a5,a2,15b40 <__rshift_D2A+0xc>
   15baa:	4394                	lw	a3,0(a5)
   15bac:	0791                	addi	a5,a5,4
   15bae:	0711                	addi	a4,a4,4
   15bb0:	fed72e23          	sw	a3,-4(a4)
   15bb4:	fec7ebe3          	bltu	a5,a2,15baa <__rshift_D2A+0x76>
   15bb8:	41c80833          	sub	a6,a6,t3
   15bbc:	080a                	slli	a6,a6,0x2
   15bbe:	981a                	add	a6,a6,t1
   15bc0:	406807b3          	sub	a5,a6,t1
   15bc4:	8789                	srai	a5,a5,0x2
   15bc6:	c91c                	sw	a5,16(a0)
   15bc8:	f6680ee3          	beq	a6,t1,15b44 <__rshift_D2A+0x10>
   15bcc:	8082                	ret
   15bce:	c954                	sw	a3,20(a0)
   15bd0:	daa5                	beqz	a3,15b40 <__rshift_D2A+0xc>
   15bd2:	881a                	mv	a6,t1
   15bd4:	0811                	addi	a6,a6,4
   15bd6:	b7ed                	j	15bc0 <__rshift_D2A+0x8c>

00015bd8 <__trailz_D2A>:
   15bd8:	4918                	lw	a4,16(a0)
   15bda:	1101                	addi	sp,sp,-32
   15bdc:	0551                	addi	a0,a0,20
   15bde:	070a                	slli	a4,a4,0x2
   15be0:	cc22                	sw	s0,24(sp)
   15be2:	ce06                	sw	ra,28(sp)
   15be4:	972a                	add	a4,a4,a0
   15be6:	4401                	li	s0,0
   15be8:	00e56863          	bltu	a0,a4,15bf8 <__trailz_D2A+0x20>
   15bec:	a831                	j	15c08 <__trailz_D2A+0x30>
   15bee:	0511                	addi	a0,a0,4
   15bf0:	02040413          	addi	s0,s0,32
   15bf4:	00e57a63          	bgeu	a0,a4,15c08 <__trailz_D2A+0x30>
   15bf8:	411c                	lw	a5,0(a0)
   15bfa:	dbf5                	beqz	a5,15bee <__trailz_D2A+0x16>
   15bfc:	00e57663          	bgeu	a0,a4,15c08 <__trailz_D2A+0x30>
   15c00:	0068                	addi	a0,sp,12
   15c02:	c63e                	sw	a5,12(sp)
   15c04:	2471                	jal	15e90 <__lo0bits>
   15c06:	942a                	add	s0,s0,a0
   15c08:	40f2                	lw	ra,28(sp)
   15c0a:	8522                	mv	a0,s0
   15c0c:	4462                	lw	s0,24(sp)
   15c0e:	6105                	addi	sp,sp,32
   15c10:	8082                	ret

00015c12 <_Balloc>:
   15c12:	417c                	lw	a5,68(a0)
   15c14:	1141                	addi	sp,sp,-16
   15c16:	c422                	sw	s0,8(sp)
   15c18:	c226                	sw	s1,4(sp)
   15c1a:	c606                	sw	ra,12(sp)
   15c1c:	842a                	mv	s0,a0
   15c1e:	84ae                	mv	s1,a1
   15c20:	c38d                	beqz	a5,15c42 <_Balloc+0x30>
   15c22:	00249713          	slli	a4,s1,0x2
   15c26:	97ba                	add	a5,a5,a4
   15c28:	4388                	lw	a0,0(a5)
   15c2a:	c515                	beqz	a0,15c56 <_Balloc+0x44>
   15c2c:	4118                	lw	a4,0(a0)
   15c2e:	c398                	sw	a4,0(a5)
   15c30:	00052823          	sw	zero,16(a0)
   15c34:	00052623          	sw	zero,12(a0)
   15c38:	40b2                	lw	ra,12(sp)
   15c3a:	4422                	lw	s0,8(sp)
   15c3c:	4492                	lw	s1,4(sp)
   15c3e:	0141                	addi	sp,sp,16
   15c40:	8082                	ret
   15c42:	02100613          	li	a2,33
   15c46:	4591                	li	a1,4
   15c48:	5c1000ef          	jal	16a08 <_calloc_r>
   15c4c:	c068                	sw	a0,68(s0)
   15c4e:	87aa                	mv	a5,a0
   15c50:	f969                	bnez	a0,15c22 <_Balloc+0x10>
   15c52:	4501                	li	a0,0
   15c54:	b7d5                	j	15c38 <_Balloc+0x26>
   15c56:	c04a                	sw	s2,0(sp)
   15c58:	4905                	li	s2,1
   15c5a:	00991933          	sll	s2,s2,s1
   15c5e:	00590613          	addi	a2,s2,5
   15c62:	060a                	slli	a2,a2,0x2
   15c64:	4585                	li	a1,1
   15c66:	8522                	mv	a0,s0
   15c68:	5a1000ef          	jal	16a08 <_calloc_r>
   15c6c:	c511                	beqz	a0,15c78 <_Balloc+0x66>
   15c6e:	01252423          	sw	s2,8(a0)
   15c72:	c144                	sw	s1,4(a0)
   15c74:	4902                	lw	s2,0(sp)
   15c76:	bf6d                	j	15c30 <_Balloc+0x1e>
   15c78:	4902                	lw	s2,0(sp)
   15c7a:	4501                	li	a0,0
   15c7c:	bf75                	j	15c38 <_Balloc+0x26>

00015c7e <_Bfree>:
   15c7e:	c981                	beqz	a1,15c8e <_Bfree+0x10>
   15c80:	41d8                	lw	a4,4(a1)
   15c82:	417c                	lw	a5,68(a0)
   15c84:	070a                	slli	a4,a4,0x2
   15c86:	97ba                	add	a5,a5,a4
   15c88:	4398                	lw	a4,0(a5)
   15c8a:	c198                	sw	a4,0(a1)
   15c8c:	c38c                	sw	a1,0(a5)
   15c8e:	8082                	ret

00015c90 <__multadd>:
   15c90:	1101                	addi	sp,sp,-32
   15c92:	ca26                	sw	s1,20(sp)
   15c94:	4984                	lw	s1,16(a1)
   15c96:	6341                	lui	t1,0x10
   15c98:	cc22                	sw	s0,24(sp)
   15c9a:	c84a                	sw	s2,16(sp)
   15c9c:	c64e                	sw	s3,12(sp)
   15c9e:	ce06                	sw	ra,28(sp)
   15ca0:	892e                	mv	s2,a1
   15ca2:	89aa                	mv	s3,a0
   15ca4:	8436                	mv	s0,a3
   15ca6:	01458813          	addi	a6,a1,20
   15caa:	4881                	li	a7,0
   15cac:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   15cae:	00082783          	lw	a5,0(a6)
   15cb2:	0811                	addi	a6,a6,4
   15cb4:	0885                	addi	a7,a7,1
   15cb6:	0067f733          	and	a4,a5,t1
   15cba:	02c70733          	mul	a4,a4,a2
   15cbe:	0107d693          	srli	a3,a5,0x10
   15cc2:	02c686b3          	mul	a3,a3,a2
   15cc6:	008707b3          	add	a5,a4,s0
   15cca:	0107d713          	srli	a4,a5,0x10
   15cce:	0067f7b3          	and	a5,a5,t1
   15cd2:	96ba                	add	a3,a3,a4
   15cd4:	01069713          	slli	a4,a3,0x10
   15cd8:	97ba                	add	a5,a5,a4
   15cda:	fef82e23          	sw	a5,-4(a6)
   15cde:	0106d413          	srli	s0,a3,0x10
   15ce2:	fc98c6e3          	blt	a7,s1,15cae <__multadd+0x1e>
   15ce6:	cc09                	beqz	s0,15d00 <__multadd+0x70>
   15ce8:	00892783          	lw	a5,8(s2)
   15cec:	02f4d263          	bge	s1,a5,15d10 <__multadd+0x80>
   15cf0:	00448793          	addi	a5,s1,4
   15cf4:	078a                	slli	a5,a5,0x2
   15cf6:	97ca                	add	a5,a5,s2
   15cf8:	c3c0                	sw	s0,4(a5)
   15cfa:	0485                	addi	s1,s1,1
   15cfc:	00992823          	sw	s1,16(s2)
   15d00:	40f2                	lw	ra,28(sp)
   15d02:	4462                	lw	s0,24(sp)
   15d04:	44d2                	lw	s1,20(sp)
   15d06:	49b2                	lw	s3,12(sp)
   15d08:	854a                	mv	a0,s2
   15d0a:	4942                	lw	s2,16(sp)
   15d0c:	6105                	addi	sp,sp,32
   15d0e:	8082                	ret
   15d10:	00492583          	lw	a1,4(s2)
   15d14:	854e                	mv	a0,s3
   15d16:	c452                	sw	s4,8(sp)
   15d18:	0585                	addi	a1,a1,1
   15d1a:	ef9ff0ef          	jal	15c12 <_Balloc>
   15d1e:	8a2a                	mv	s4,a0
   15d20:	c121                	beqz	a0,15d60 <__multadd+0xd0>
   15d22:	01092603          	lw	a2,16(s2)
   15d26:	00c90593          	addi	a1,s2,12
   15d2a:	0531                	addi	a0,a0,12
   15d2c:	0609                	addi	a2,a2,2
   15d2e:	060a                	slli	a2,a2,0x2
   15d30:	dc8fb0ef          	jal	112f8 <memcpy>
   15d34:	00492703          	lw	a4,4(s2)
   15d38:	0449a783          	lw	a5,68(s3)
   15d3c:	070a                	slli	a4,a4,0x2
   15d3e:	97ba                	add	a5,a5,a4
   15d40:	4398                	lw	a4,0(a5)
   15d42:	00e92023          	sw	a4,0(s2)
   15d46:	0127a023          	sw	s2,0(a5)
   15d4a:	00448793          	addi	a5,s1,4
   15d4e:	8952                	mv	s2,s4
   15d50:	078a                	slli	a5,a5,0x2
   15d52:	97ca                	add	a5,a5,s2
   15d54:	4a22                	lw	s4,8(sp)
   15d56:	0485                	addi	s1,s1,1
   15d58:	c3c0                	sw	s0,4(a5)
   15d5a:	00992823          	sw	s1,16(s2)
   15d5e:	b74d                	j	15d00 <__multadd+0x70>
   15d60:	66e9                	lui	a3,0x1a
   15d62:	6569                	lui	a0,0x1a
   15d64:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   15d68:	4601                	li	a2,0
   15d6a:	0ba00593          	li	a1,186
   15d6e:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   15d72:	451000ef          	jal	169c2 <__assert_func>

00015d76 <__s2b>:
   15d76:	1101                	addi	sp,sp,-32
   15d78:	cc22                	sw	s0,24(sp)
   15d7a:	ca26                	sw	s1,20(sp)
   15d7c:	c84a                	sw	s2,16(sp)
   15d7e:	c64e                	sw	s3,12(sp)
   15d80:	c452                	sw	s4,8(sp)
   15d82:	89b6                	mv	s3,a3
   15d84:	47a5                	li	a5,9
   15d86:	06a1                	addi	a3,a3,8
   15d88:	ce06                	sw	ra,28(sp)
   15d8a:	02f6c6b3          	div	a3,a3,a5
   15d8e:	892a                	mv	s2,a0
   15d90:	842e                	mv	s0,a1
   15d92:	8a32                	mv	s4,a2
   15d94:	84ba                	mv	s1,a4
   15d96:	0937d563          	bge	a5,s3,15e20 <__s2b+0xaa>
   15d9a:	4785                	li	a5,1
   15d9c:	4581                	li	a1,0
   15d9e:	0786                	slli	a5,a5,0x1
   15da0:	0585                	addi	a1,a1,1
   15da2:	fed7cee3          	blt	a5,a3,15d9e <__s2b+0x28>
   15da6:	854a                	mv	a0,s2
   15da8:	e6bff0ef          	jal	15c12 <_Balloc>
   15dac:	85aa                	mv	a1,a0
   15dae:	c93d                	beqz	a0,15e24 <__s2b+0xae>
   15db0:	4785                	li	a5,1
   15db2:	c91c                	sw	a5,16(a0)
   15db4:	c944                	sw	s1,20(a0)
   15db6:	47a5                	li	a5,9
   15db8:	0747d163          	bge	a5,s4,15e1a <__s2b+0xa4>
   15dbc:	c256                	sw	s5,4(sp)
   15dbe:	00940a93          	addi	s5,s0,9
   15dc2:	84d6                	mv	s1,s5
   15dc4:	9452                	add	s0,s0,s4
   15dc6:	0004c683          	lbu	a3,0(s1)
   15dca:	4629                	li	a2,10
   15dcc:	854a                	mv	a0,s2
   15dce:	fd068693          	addi	a3,a3,-48
   15dd2:	ebfff0ef          	jal	15c90 <__multadd>
   15dd6:	0485                	addi	s1,s1,1
   15dd8:	85aa                	mv	a1,a0
   15dda:	fe8496e3          	bne	s1,s0,15dc6 <__s2b+0x50>
   15dde:	ff8a0413          	addi	s0,s4,-8
   15de2:	9456                	add	s0,s0,s5
   15de4:	4a92                	lw	s5,4(sp)
   15de6:	033a5163          	bge	s4,s3,15e08 <__s2b+0x92>
   15dea:	414989b3          	sub	s3,s3,s4
   15dee:	99a2                	add	s3,s3,s0
   15df0:	00044683          	lbu	a3,0(s0)
   15df4:	4629                	li	a2,10
   15df6:	854a                	mv	a0,s2
   15df8:	fd068693          	addi	a3,a3,-48
   15dfc:	e95ff0ef          	jal	15c90 <__multadd>
   15e00:	0405                	addi	s0,s0,1
   15e02:	85aa                	mv	a1,a0
   15e04:	ff3416e3          	bne	s0,s3,15df0 <__s2b+0x7a>
   15e08:	40f2                	lw	ra,28(sp)
   15e0a:	4462                	lw	s0,24(sp)
   15e0c:	44d2                	lw	s1,20(sp)
   15e0e:	4942                	lw	s2,16(sp)
   15e10:	49b2                	lw	s3,12(sp)
   15e12:	4a22                	lw	s4,8(sp)
   15e14:	852e                	mv	a0,a1
   15e16:	6105                	addi	sp,sp,32
   15e18:	8082                	ret
   15e1a:	0429                	addi	s0,s0,10
   15e1c:	4a25                	li	s4,9
   15e1e:	b7e1                	j	15de6 <__s2b+0x70>
   15e20:	4581                	li	a1,0
   15e22:	b751                	j	15da6 <__s2b+0x30>
   15e24:	66e9                	lui	a3,0x1a
   15e26:	6569                	lui	a0,0x1a
   15e28:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   15e2c:	4601                	li	a2,0
   15e2e:	0d300593          	li	a1,211
   15e32:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   15e36:	c256                	sw	s5,4(sp)
   15e38:	38b000ef          	jal	169c2 <__assert_func>

00015e3c <__hi0bits>:
   15e3c:	87aa                	mv	a5,a0
   15e3e:	6741                	lui	a4,0x10
   15e40:	4501                	li	a0,0
   15e42:	00e7f463          	bgeu	a5,a4,15e4a <__hi0bits+0xe>
   15e46:	07c2                	slli	a5,a5,0x10
   15e48:	4541                	li	a0,16
   15e4a:	01000737          	lui	a4,0x1000
   15e4e:	00e7f463          	bgeu	a5,a4,15e56 <__hi0bits+0x1a>
   15e52:	0521                	addi	a0,a0,8
   15e54:	07a2                	slli	a5,a5,0x8
   15e56:	10000737          	lui	a4,0x10000
   15e5a:	00e7f463          	bgeu	a5,a4,15e62 <__hi0bits+0x26>
   15e5e:	0511                	addi	a0,a0,4
   15e60:	0792                	slli	a5,a5,0x4
   15e62:	40000737          	lui	a4,0x40000
   15e66:	00e7e763          	bltu	a5,a4,15e74 <__hi0bits+0x38>
   15e6a:	fff7c793          	not	a5,a5
   15e6e:	83fd                	srli	a5,a5,0x1f
   15e70:	953e                	add	a0,a0,a5
   15e72:	8082                	ret
   15e74:	078a                	slli	a5,a5,0x2
   15e76:	0007c963          	bltz	a5,15e88 <__hi0bits+0x4c>
   15e7a:	00179713          	slli	a4,a5,0x1
   15e7e:	00074763          	bltz	a4,15e8c <__hi0bits+0x50>
   15e82:	02000513          	li	a0,32
   15e86:	8082                	ret
   15e88:	0509                	addi	a0,a0,2
   15e8a:	8082                	ret
   15e8c:	050d                	addi	a0,a0,3
   15e8e:	8082                	ret

00015e90 <__lo0bits>:
   15e90:	411c                	lw	a5,0(a0)
   15e92:	872a                	mv	a4,a0
   15e94:	0077f693          	andi	a3,a5,7
   15e98:	ce81                	beqz	a3,15eb0 <__lo0bits+0x20>
   15e9a:	0017f693          	andi	a3,a5,1
   15e9e:	4501                	li	a0,0
   15ea0:	ee95                	bnez	a3,15edc <__lo0bits+0x4c>
   15ea2:	0027f693          	andi	a3,a5,2
   15ea6:	c6b5                	beqz	a3,15f12 <__lo0bits+0x82>
   15ea8:	8385                	srli	a5,a5,0x1
   15eaa:	c31c                	sw	a5,0(a4)
   15eac:	4505                	li	a0,1
   15eae:	8082                	ret
   15eb0:	01079693          	slli	a3,a5,0x10
   15eb4:	82c1                	srli	a3,a3,0x10
   15eb6:	4501                	li	a0,0
   15eb8:	c6b9                	beqz	a3,15f06 <__lo0bits+0x76>
   15eba:	0ff7f693          	zext.b	a3,a5
   15ebe:	ce95                	beqz	a3,15efa <__lo0bits+0x6a>
   15ec0:	00f7f693          	andi	a3,a5,15
   15ec4:	c68d                	beqz	a3,15eee <__lo0bits+0x5e>
   15ec6:	0037f693          	andi	a3,a5,3
   15eca:	ce81                	beqz	a3,15ee2 <__lo0bits+0x52>
   15ecc:	0017f693          	andi	a3,a5,1
   15ed0:	e699                	bnez	a3,15ede <__lo0bits+0x4e>
   15ed2:	8385                	srli	a5,a5,0x1
   15ed4:	0505                	addi	a0,a0,1
   15ed6:	e781                	bnez	a5,15ede <__lo0bits+0x4e>
   15ed8:	02000513          	li	a0,32
   15edc:	8082                	ret
   15ede:	c31c                	sw	a5,0(a4)
   15ee0:	8082                	ret
   15ee2:	8389                	srli	a5,a5,0x2
   15ee4:	0017f693          	andi	a3,a5,1
   15ee8:	0509                	addi	a0,a0,2
   15eea:	faf5                	bnez	a3,15ede <__lo0bits+0x4e>
   15eec:	b7dd                	j	15ed2 <__lo0bits+0x42>
   15eee:	8391                	srli	a5,a5,0x4
   15ef0:	0037f693          	andi	a3,a5,3
   15ef4:	0511                	addi	a0,a0,4
   15ef6:	faf9                	bnez	a3,15ecc <__lo0bits+0x3c>
   15ef8:	b7ed                	j	15ee2 <__lo0bits+0x52>
   15efa:	83a1                	srli	a5,a5,0x8
   15efc:	00f7f693          	andi	a3,a5,15
   15f00:	0521                	addi	a0,a0,8
   15f02:	f2f1                	bnez	a3,15ec6 <__lo0bits+0x36>
   15f04:	b7ed                	j	15eee <__lo0bits+0x5e>
   15f06:	83c1                	srli	a5,a5,0x10
   15f08:	0ff7f693          	zext.b	a3,a5
   15f0c:	4541                	li	a0,16
   15f0e:	facd                	bnez	a3,15ec0 <__lo0bits+0x30>
   15f10:	b7ed                	j	15efa <__lo0bits+0x6a>
   15f12:	8389                	srli	a5,a5,0x2
   15f14:	c31c                	sw	a5,0(a4)
   15f16:	4509                	li	a0,2
   15f18:	8082                	ret

00015f1a <__i2b>:
   15f1a:	417c                	lw	a5,68(a0)
   15f1c:	1141                	addi	sp,sp,-16
   15f1e:	c422                	sw	s0,8(sp)
   15f20:	c226                	sw	s1,4(sp)
   15f22:	c606                	sw	ra,12(sp)
   15f24:	842a                	mv	s0,a0
   15f26:	84ae                	mv	s1,a1
   15f28:	cf99                	beqz	a5,15f46 <__i2b+0x2c>
   15f2a:	43c8                	lw	a0,4(a5)
   15f2c:	c121                	beqz	a0,15f6c <__i2b+0x52>
   15f2e:	4118                	lw	a4,0(a0)
   15f30:	c3d8                	sw	a4,4(a5)
   15f32:	40b2                	lw	ra,12(sp)
   15f34:	4422                	lw	s0,8(sp)
   15f36:	4785                	li	a5,1
   15f38:	c944                	sw	s1,20(a0)
   15f3a:	00052623          	sw	zero,12(a0)
   15f3e:	c91c                	sw	a5,16(a0)
   15f40:	4492                	lw	s1,4(sp)
   15f42:	0141                	addi	sp,sp,16
   15f44:	8082                	ret
   15f46:	02100613          	li	a2,33
   15f4a:	4591                	li	a1,4
   15f4c:	2bd000ef          	jal	16a08 <_calloc_r>
   15f50:	c068                	sw	a0,68(s0)
   15f52:	87aa                	mv	a5,a0
   15f54:	f979                	bnez	a0,15f2a <__i2b+0x10>
   15f56:	66e9                	lui	a3,0x1a
   15f58:	6569                	lui	a0,0x1a
   15f5a:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   15f5e:	4601                	li	a2,0
   15f60:	14500593          	li	a1,325
   15f64:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   15f68:	25b000ef          	jal	169c2 <__assert_func>
   15f6c:	4671                	li	a2,28
   15f6e:	4585                	li	a1,1
   15f70:	8522                	mv	a0,s0
   15f72:	297000ef          	jal	16a08 <_calloc_r>
   15f76:	d165                	beqz	a0,15f56 <__i2b+0x3c>
   15f78:	4785                	li	a5,1
   15f7a:	c15c                	sw	a5,4(a0)
   15f7c:	4789                	li	a5,2
   15f7e:	c51c                	sw	a5,8(a0)
   15f80:	bf4d                	j	15f32 <__i2b+0x18>

00015f82 <__multiply>:
   15f82:	1101                	addi	sp,sp,-32
   15f84:	c84a                	sw	s2,16(sp)
   15f86:	c64e                	sw	s3,12(sp)
   15f88:	0105a903          	lw	s2,16(a1)
   15f8c:	01062983          	lw	s3,16(a2)
   15f90:	ca26                	sw	s1,20(sp)
   15f92:	c452                	sw	s4,8(sp)
   15f94:	ce06                	sw	ra,28(sp)
   15f96:	cc22                	sw	s0,24(sp)
   15f98:	8a2e                	mv	s4,a1
   15f9a:	84b2                	mv	s1,a2
   15f9c:	01394763          	blt	s2,s3,15faa <__multiply+0x28>
   15fa0:	874e                	mv	a4,s3
   15fa2:	84ae                	mv	s1,a1
   15fa4:	89ca                	mv	s3,s2
   15fa6:	8a32                	mv	s4,a2
   15fa8:	893a                	mv	s2,a4
   15faa:	449c                	lw	a5,8(s1)
   15fac:	40cc                	lw	a1,4(s1)
   15fae:	01298433          	add	s0,s3,s2
   15fb2:	0087a7b3          	slt	a5,a5,s0
   15fb6:	95be                	add	a1,a1,a5
   15fb8:	c5bff0ef          	jal	15c12 <_Balloc>
   15fbc:	14050363          	beqz	a0,16102 <__multiply+0x180>
   15fc0:	01450313          	addi	t1,a0,20
   15fc4:	00241893          	slli	a7,s0,0x2
   15fc8:	989a                	add	a7,a7,t1
   15fca:	879a                	mv	a5,t1
   15fcc:	01137763          	bgeu	t1,a7,15fda <__multiply+0x58>
   15fd0:	0007a023          	sw	zero,0(a5)
   15fd4:	0791                	addi	a5,a5,4
   15fd6:	ff17ede3          	bltu	a5,a7,15fd0 <__multiply+0x4e>
   15fda:	014a0813          	addi	a6,s4,20
   15fde:	00291e13          	slli	t3,s2,0x2
   15fe2:	01448e93          	addi	t4,s1,20
   15fe6:	00299593          	slli	a1,s3,0x2
   15fea:	9e42                	add	t3,t3,a6
   15fec:	95f6                	add	a1,a1,t4
   15fee:	0fc87163          	bgeu	a6,t3,160d0 <__multiply+0x14e>
   15ff2:	01548793          	addi	a5,s1,21
   15ff6:	4f11                	li	t5,4
   15ff8:	0ef5fe63          	bgeu	a1,a5,160f4 <__multiply+0x172>
   15ffc:	66c1                	lui	a3,0x10
   15ffe:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   16000:	a809                	j	16012 <__multiply+0x90>
   16002:	010fdf93          	srli	t6,t6,0x10
   16006:	060f9863          	bnez	t6,16076 <__multiply+0xf4>
   1600a:	0811                	addi	a6,a6,4
   1600c:	0311                	addi	t1,t1,4
   1600e:	0dc87163          	bgeu	a6,t3,160d0 <__multiply+0x14e>
   16012:	00082f83          	lw	t6,0(a6)
   16016:	00dff3b3          	and	t2,t6,a3
   1601a:	fe0384e3          	beqz	t2,16002 <__multiply+0x80>
   1601e:	829a                	mv	t0,t1
   16020:	8ff6                	mv	t6,t4
   16022:	4481                	li	s1,0
   16024:	000fa783          	lw	a5,0(t6)
   16028:	0002a603          	lw	a2,0(t0) # 112de <memset+0x8e>
   1602c:	0291                	addi	t0,t0,4
   1602e:	00d7f733          	and	a4,a5,a3
   16032:	02770733          	mul	a4,a4,t2
   16036:	83c1                	srli	a5,a5,0x10
   16038:	00d67933          	and	s2,a2,a3
   1603c:	8241                	srli	a2,a2,0x10
   1603e:	0f91                	addi	t6,t6,4
   16040:	027787b3          	mul	a5,a5,t2
   16044:	974a                	add	a4,a4,s2
   16046:	9726                	add	a4,a4,s1
   16048:	01075493          	srli	s1,a4,0x10
   1604c:	8f75                	and	a4,a4,a3
   1604e:	97b2                	add	a5,a5,a2
   16050:	97a6                	add	a5,a5,s1
   16052:	01079613          	slli	a2,a5,0x10
   16056:	8f51                	or	a4,a4,a2
   16058:	fee2ae23          	sw	a4,-4(t0)
   1605c:	0107d493          	srli	s1,a5,0x10
   16060:	fcbfe2e3          	bltu	t6,a1,16024 <__multiply+0xa2>
   16064:	01e307b3          	add	a5,t1,t5
   16068:	c384                	sw	s1,0(a5)
   1606a:	00082f83          	lw	t6,0(a6)
   1606e:	010fdf93          	srli	t6,t6,0x10
   16072:	f80f8ce3          	beqz	t6,1600a <__multiply+0x88>
   16076:	00032703          	lw	a4,0(t1)
   1607a:	829a                	mv	t0,t1
   1607c:	8676                	mv	a2,t4
   1607e:	84ba                	mv	s1,a4
   16080:	4381                	li	t2,0
   16082:	421c                	lw	a5,0(a2)
   16084:	0104d993          	srli	s3,s1,0x10
   16088:	8f75                	and	a4,a4,a3
   1608a:	8ff5                	and	a5,a5,a3
   1608c:	03f787b3          	mul	a5,a5,t6
   16090:	0042a483          	lw	s1,4(t0)
   16094:	0291                	addi	t0,t0,4
   16096:	0611                	addi	a2,a2,4
   16098:	00d4f933          	and	s2,s1,a3
   1609c:	979e                	add	a5,a5,t2
   1609e:	97ce                	add	a5,a5,s3
   160a0:	01079393          	slli	t2,a5,0x10
   160a4:	00e3e733          	or	a4,t2,a4
   160a8:	fee2ae23          	sw	a4,-4(t0)
   160ac:	ffe65703          	lhu	a4,-2(a2)
   160b0:	83c1                	srli	a5,a5,0x10
   160b2:	03f70733          	mul	a4,a4,t6
   160b6:	974a                	add	a4,a4,s2
   160b8:	973e                	add	a4,a4,a5
   160ba:	01075393          	srli	t2,a4,0x10
   160be:	fcb662e3          	bltu	a2,a1,16082 <__multiply+0x100>
   160c2:	01e307b3          	add	a5,t1,t5
   160c6:	c398                	sw	a4,0(a5)
   160c8:	0811                	addi	a6,a6,4
   160ca:	0311                	addi	t1,t1,4
   160cc:	f5c863e3          	bltu	a6,t3,16012 <__multiply+0x90>
   160d0:	00804563          	bgtz	s0,160da <__multiply+0x158>
   160d4:	a039                	j	160e2 <__multiply+0x160>
   160d6:	147d                	addi	s0,s0,-1
   160d8:	c409                	beqz	s0,160e2 <__multiply+0x160>
   160da:	ffc8a783          	lw	a5,-4(a7)
   160de:	18f1                	addi	a7,a7,-4
   160e0:	dbfd                	beqz	a5,160d6 <__multiply+0x154>
   160e2:	40f2                	lw	ra,28(sp)
   160e4:	c900                	sw	s0,16(a0)
   160e6:	4462                	lw	s0,24(sp)
   160e8:	44d2                	lw	s1,20(sp)
   160ea:	4942                	lw	s2,16(sp)
   160ec:	49b2                	lw	s3,12(sp)
   160ee:	4a22                	lw	s4,8(sp)
   160f0:	6105                	addi	sp,sp,32
   160f2:	8082                	ret
   160f4:	409587b3          	sub	a5,a1,s1
   160f8:	17ad                	addi	a5,a5,-21
   160fa:	9bf1                	andi	a5,a5,-4
   160fc:	00478f13          	addi	t5,a5,4
   16100:	bdf5                	j	15ffc <__multiply+0x7a>
   16102:	66e9                	lui	a3,0x1a
   16104:	6569                	lui	a0,0x1a
   16106:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   1610a:	4601                	li	a2,0
   1610c:	16200593          	li	a1,354
   16110:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   16114:	0af000ef          	jal	169c2 <__assert_func>

00016118 <__pow5mult>:
   16118:	1101                	addi	sp,sp,-32
   1611a:	cc22                	sw	s0,24(sp)
   1611c:	c84a                	sw	s2,16(sp)
   1611e:	c64e                	sw	s3,12(sp)
   16120:	ce06                	sw	ra,28(sp)
   16122:	00367793          	andi	a5,a2,3
   16126:	8432                	mv	s0,a2
   16128:	89aa                	mv	s3,a0
   1612a:	892e                	mv	s2,a1
   1612c:	ebad                	bnez	a5,1619e <__pow5mult+0x86>
   1612e:	8409                	srai	s0,s0,0x2
   16130:	c431                	beqz	s0,1617c <__pow5mult+0x64>
   16132:	ca26                	sw	s1,20(sp)
   16134:	0409a483          	lw	s1,64(s3)
   16138:	ccbd                	beqz	s1,161b6 <__pow5mult+0x9e>
   1613a:	00147793          	andi	a5,s0,1
   1613e:	eb89                	bnez	a5,16150 <__pow5mult+0x38>
   16140:	8405                	srai	s0,s0,0x1
   16142:	cc05                	beqz	s0,1617a <__pow5mult+0x62>
   16144:	4088                	lw	a0,0(s1)
   16146:	c131                	beqz	a0,1618a <__pow5mult+0x72>
   16148:	84aa                	mv	s1,a0
   1614a:	00147793          	andi	a5,s0,1
   1614e:	dbed                	beqz	a5,16140 <__pow5mult+0x28>
   16150:	8626                	mv	a2,s1
   16152:	85ca                	mv	a1,s2
   16154:	854e                	mv	a0,s3
   16156:	e2dff0ef          	jal	15f82 <__multiply>
   1615a:	00090d63          	beqz	s2,16174 <__pow5mult+0x5c>
   1615e:	00492703          	lw	a4,4(s2)
   16162:	0449a783          	lw	a5,68(s3)
   16166:	070a                	slli	a4,a4,0x2
   16168:	97ba                	add	a5,a5,a4
   1616a:	4398                	lw	a4,0(a5)
   1616c:	00e92023          	sw	a4,0(s2)
   16170:	0127a023          	sw	s2,0(a5)
   16174:	8405                	srai	s0,s0,0x1
   16176:	892a                	mv	s2,a0
   16178:	f471                	bnez	s0,16144 <__pow5mult+0x2c>
   1617a:	44d2                	lw	s1,20(sp)
   1617c:	40f2                	lw	ra,28(sp)
   1617e:	4462                	lw	s0,24(sp)
   16180:	49b2                	lw	s3,12(sp)
   16182:	854a                	mv	a0,s2
   16184:	4942                	lw	s2,16(sp)
   16186:	6105                	addi	sp,sp,32
   16188:	8082                	ret
   1618a:	8626                	mv	a2,s1
   1618c:	85a6                	mv	a1,s1
   1618e:	854e                	mv	a0,s3
   16190:	df3ff0ef          	jal	15f82 <__multiply>
   16194:	c088                	sw	a0,0(s1)
   16196:	00052023          	sw	zero,0(a0)
   1619a:	84aa                	mv	s1,a0
   1619c:	b77d                	j	1614a <__pow5mult+0x32>
   1619e:	17fd                	addi	a5,a5,-1
   161a0:	6769                	lui	a4,0x1a
   161a2:	6a470713          	addi	a4,a4,1700 # 1a6a4 <p05.0>
   161a6:	078a                	slli	a5,a5,0x2
   161a8:	97ba                	add	a5,a5,a4
   161aa:	4390                	lw	a2,0(a5)
   161ac:	4681                	li	a3,0
   161ae:	ae3ff0ef          	jal	15c90 <__multadd>
   161b2:	892a                	mv	s2,a0
   161b4:	bfad                	j	1612e <__pow5mult+0x16>
   161b6:	4585                	li	a1,1
   161b8:	854e                	mv	a0,s3
   161ba:	a59ff0ef          	jal	15c12 <_Balloc>
   161be:	84aa                	mv	s1,a0
   161c0:	c919                	beqz	a0,161d6 <__pow5mult+0xbe>
   161c2:	27100793          	li	a5,625
   161c6:	c95c                	sw	a5,20(a0)
   161c8:	4785                	li	a5,1
   161ca:	c91c                	sw	a5,16(a0)
   161cc:	04a9a023          	sw	a0,64(s3)
   161d0:	00052023          	sw	zero,0(a0)
   161d4:	b79d                	j	1613a <__pow5mult+0x22>
   161d6:	66e9                	lui	a3,0x1a
   161d8:	6569                	lui	a0,0x1a
   161da:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   161de:	4601                	li	a2,0
   161e0:	14500593          	li	a1,325
   161e4:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   161e8:	7da000ef          	jal	169c2 <__assert_func>

000161ec <__lshift>:
   161ec:	1101                	addi	sp,sp,-32
   161ee:	c256                	sw	s5,4(sp)
   161f0:	0105aa83          	lw	s5,16(a1)
   161f4:	459c                	lw	a5,8(a1)
   161f6:	c64e                	sw	s3,12(sp)
   161f8:	40565993          	srai	s3,a2,0x5
   161fc:	9ace                	add	s5,s5,s3
   161fe:	cc22                	sw	s0,24(sp)
   16200:	ca26                	sw	s1,20(sp)
   16202:	c84a                	sw	s2,16(sp)
   16204:	c452                	sw	s4,8(sp)
   16206:	ce06                	sw	ra,28(sp)
   16208:	001a8913          	addi	s2,s5,1
   1620c:	84ae                	mv	s1,a1
   1620e:	8432                	mv	s0,a2
   16210:	41cc                	lw	a1,4(a1)
   16212:	8a2a                	mv	s4,a0
   16214:	0127d663          	bge	a5,s2,16220 <__lshift+0x34>
   16218:	0786                	slli	a5,a5,0x1
   1621a:	0585                	addi	a1,a1,1
   1621c:	ff27cee3          	blt	a5,s2,16218 <__lshift+0x2c>
   16220:	8552                	mv	a0,s4
   16222:	9f1ff0ef          	jal	15c12 <_Balloc>
   16226:	cd5d                	beqz	a0,162e4 <__lshift+0xf8>
   16228:	01450813          	addi	a6,a0,20
   1622c:	01305e63          	blez	s3,16248 <__lshift+0x5c>
   16230:	0995                	addi	s3,s3,5
   16232:	098a                	slli	s3,s3,0x2
   16234:	01350733          	add	a4,a0,s3
   16238:	87c2                	mv	a5,a6
   1623a:	0791                	addi	a5,a5,4
   1623c:	fe07ae23          	sw	zero,-4(a5)
   16240:	fee79de3          	bne	a5,a4,1623a <__lshift+0x4e>
   16244:	19b1                	addi	s3,s3,-20
   16246:	984e                	add	a6,a6,s3
   16248:	0104a883          	lw	a7,16(s1)
   1624c:	01448793          	addi	a5,s1,20
   16250:	01f47613          	andi	a2,s0,31
   16254:	088a                	slli	a7,a7,0x2
   16256:	98be                	add	a7,a7,a5
   16258:	c63d                	beqz	a2,162c6 <__lshift+0xda>
   1625a:	02000593          	li	a1,32
   1625e:	8d91                	sub	a1,a1,a2
   16260:	8342                	mv	t1,a6
   16262:	4681                	li	a3,0
   16264:	4398                	lw	a4,0(a5)
   16266:	0311                	addi	t1,t1,4
   16268:	0791                	addi	a5,a5,4
   1626a:	00c71733          	sll	a4,a4,a2
   1626e:	8f55                	or	a4,a4,a3
   16270:	fee32e23          	sw	a4,-4(t1)
   16274:	ffc7a683          	lw	a3,-4(a5)
   16278:	00b6d6b3          	srl	a3,a3,a1
   1627c:	ff17e4e3          	bltu	a5,a7,16264 <__lshift+0x78>
   16280:	01548793          	addi	a5,s1,21
   16284:	4711                	li	a4,4
   16286:	00f8e863          	bltu	a7,a5,16296 <__lshift+0xaa>
   1628a:	409887b3          	sub	a5,a7,s1
   1628e:	17ad                	addi	a5,a5,-21
   16290:	9bf1                	andi	a5,a5,-4
   16292:	00478713          	addi	a4,a5,4
   16296:	983a                	add	a6,a6,a4
   16298:	00d82023          	sw	a3,0(a6)
   1629c:	e291                	bnez	a3,162a0 <__lshift+0xb4>
   1629e:	8956                	mv	s2,s5
   162a0:	40d8                	lw	a4,4(s1)
   162a2:	044a2783          	lw	a5,68(s4)
   162a6:	40f2                	lw	ra,28(sp)
   162a8:	070a                	slli	a4,a4,0x2
   162aa:	97ba                	add	a5,a5,a4
   162ac:	4398                	lw	a4,0(a5)
   162ae:	01252823          	sw	s2,16(a0)
   162b2:	4462                	lw	s0,24(sp)
   162b4:	c098                	sw	a4,0(s1)
   162b6:	c384                	sw	s1,0(a5)
   162b8:	4942                	lw	s2,16(sp)
   162ba:	44d2                	lw	s1,20(sp)
   162bc:	49b2                	lw	s3,12(sp)
   162be:	4a22                	lw	s4,8(sp)
   162c0:	4a92                	lw	s5,4(sp)
   162c2:	6105                	addi	sp,sp,32
   162c4:	8082                	ret
   162c6:	4398                	lw	a4,0(a5)
   162c8:	0791                	addi	a5,a5,4
   162ca:	0811                	addi	a6,a6,4
   162cc:	fee82e23          	sw	a4,-4(a6)
   162d0:	fd17f7e3          	bgeu	a5,a7,1629e <__lshift+0xb2>
   162d4:	4398                	lw	a4,0(a5)
   162d6:	0791                	addi	a5,a5,4
   162d8:	0811                	addi	a6,a6,4
   162da:	fee82e23          	sw	a4,-4(a6)
   162de:	ff17e4e3          	bltu	a5,a7,162c6 <__lshift+0xda>
   162e2:	bf75                	j	1629e <__lshift+0xb2>
   162e4:	66e9                	lui	a3,0x1a
   162e6:	6569                	lui	a0,0x1a
   162e8:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   162ec:	4601                	li	a2,0
   162ee:	1de00593          	li	a1,478
   162f2:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   162f6:	25f1                	jal	169c2 <__assert_func>

000162f8 <__mcmp>:
   162f8:	4918                	lw	a4,16(a0)
   162fa:	499c                	lw	a5,16(a1)
   162fc:	882a                	mv	a6,a0
   162fe:	40f70533          	sub	a0,a4,a5
   16302:	02f71863          	bne	a4,a5,16332 <__mcmp+0x3a>
   16306:	078a                	slli	a5,a5,0x2
   16308:	0851                	addi	a6,a6,20
   1630a:	05d1                	addi	a1,a1,20
   1630c:	00f80733          	add	a4,a6,a5
   16310:	97ae                	add	a5,a5,a1
   16312:	a019                	j	16318 <__mcmp+0x20>
   16314:	00e87f63          	bgeu	a6,a4,16332 <__mcmp+0x3a>
   16318:	ffc72603          	lw	a2,-4(a4)
   1631c:	ffc7a683          	lw	a3,-4(a5)
   16320:	1771                	addi	a4,a4,-4
   16322:	17f1                	addi	a5,a5,-4
   16324:	fed608e3          	beq	a2,a3,16314 <__mcmp+0x1c>
   16328:	4505                	li	a0,1
   1632a:	00d67463          	bgeu	a2,a3,16332 <__mcmp+0x3a>
   1632e:	557d                	li	a0,-1
   16330:	8082                	ret
   16332:	8082                	ret

00016334 <__mdiff>:
   16334:	4998                	lw	a4,16(a1)
   16336:	4a1c                	lw	a5,16(a2)
   16338:	1141                	addi	sp,sp,-16
   1633a:	c422                	sw	s0,8(sp)
   1633c:	c226                	sw	s1,4(sp)
   1633e:	c606                	sw	ra,12(sp)
   16340:	c04a                	sw	s2,0(sp)
   16342:	842e                	mv	s0,a1
   16344:	84b2                	mv	s1,a2
   16346:	40f706b3          	sub	a3,a4,a5
   1634a:	12f71863          	bne	a4,a5,1647a <__mdiff+0x146>
   1634e:	00279693          	slli	a3,a5,0x2
   16352:	01458613          	addi	a2,a1,20
   16356:	01448713          	addi	a4,s1,20
   1635a:	00d607b3          	add	a5,a2,a3
   1635e:	9736                	add	a4,a4,a3
   16360:	a019                	j	16366 <__mdiff+0x32>
   16362:	12f67463          	bgeu	a2,a5,1648a <__mdiff+0x156>
   16366:	ffc7a583          	lw	a1,-4(a5)
   1636a:	ffc72683          	lw	a3,-4(a4)
   1636e:	17f1                	addi	a5,a5,-4
   16370:	1771                	addi	a4,a4,-4
   16372:	fed588e3          	beq	a1,a3,16362 <__mdiff+0x2e>
   16376:	4905                	li	s2,1
   16378:	00d5e663          	bltu	a1,a3,16384 <__mdiff+0x50>
   1637c:	87a6                	mv	a5,s1
   1637e:	4901                	li	s2,0
   16380:	84a2                	mv	s1,s0
   16382:	843e                	mv	s0,a5
   16384:	40cc                	lw	a1,4(s1)
   16386:	88dff0ef          	jal	15c12 <_Balloc>
   1638a:	12050763          	beqz	a0,164b8 <__mdiff+0x184>
   1638e:	0104a883          	lw	a7,16(s1)
   16392:	01042283          	lw	t0,16(s0)
   16396:	01448f93          	addi	t6,s1,20
   1639a:	00289313          	slli	t1,a7,0x2
   1639e:	01440813          	addi	a6,s0,20
   163a2:	028a                	slli	t0,t0,0x2
   163a4:	01450593          	addi	a1,a0,20
   163a8:	6e41                	lui	t3,0x10
   163aa:	01252623          	sw	s2,12(a0)
   163ae:	937e                	add	t1,t1,t6
   163b0:	92c2                	add	t0,t0,a6
   163b2:	8f2e                	mv	t5,a1
   163b4:	8efe                	mv	t4,t6
   163b6:	4681                	li	a3,0
   163b8:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   163ba:	000ea703          	lw	a4,0(t4)
   163be:	00082603          	lw	a2,0(a6)
   163c2:	0f11                	addi	t5,t5,4
   163c4:	01c777b3          	and	a5,a4,t3
   163c8:	01c673b3          	and	t2,a2,t3
   163cc:	407787b3          	sub	a5,a5,t2
   163d0:	97b6                	add	a5,a5,a3
   163d2:	8341                	srli	a4,a4,0x10
   163d4:	8241                	srli	a2,a2,0x10
   163d6:	4107d693          	srai	a3,a5,0x10
   163da:	8f11                	sub	a4,a4,a2
   163dc:	9736                	add	a4,a4,a3
   163de:	01071693          	slli	a3,a4,0x10
   163e2:	01c7f7b3          	and	a5,a5,t3
   163e6:	8fd5                	or	a5,a5,a3
   163e8:	0811                	addi	a6,a6,4
   163ea:	feff2e23          	sw	a5,-4(t5)
   163ee:	0e91                	addi	t4,t4,4
   163f0:	41075693          	srai	a3,a4,0x10
   163f4:	fc5863e3          	bltu	a6,t0,163ba <__mdiff+0x86>
   163f8:	01540713          	addi	a4,s0,21
   163fc:	40828433          	sub	s0,t0,s0
   16400:	142d                	addi	s0,s0,-21
   16402:	00e2b2b3          	sltu	t0,t0,a4
   16406:	0012cf13          	xori	t5,t0,1
   1640a:	8009                	srli	s0,s0,0x2
   1640c:	4711                	li	a4,4
   1640e:	06028a63          	beqz	t0,16482 <__mdiff+0x14e>
   16412:	9fba                	add	t6,t6,a4
   16414:	00e58833          	add	a6,a1,a4
   16418:	6ec1                	lui	t4,0x10
   1641a:	8e42                	mv	t3,a6
   1641c:	867e                	mv	a2,t6
   1641e:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   16420:	086ff363          	bgeu	t6,t1,164a6 <__mdiff+0x172>
   16424:	421c                	lw	a5,0(a2)
   16426:	0e11                	addi	t3,t3,4
   16428:	0611                	addi	a2,a2,4
   1642a:	01d7f733          	and	a4,a5,t4
   1642e:	9736                	add	a4,a4,a3
   16430:	0107d593          	srli	a1,a5,0x10
   16434:	8741                	srai	a4,a4,0x10
   16436:	972e                	add	a4,a4,a1
   16438:	97b6                	add	a5,a5,a3
   1643a:	01d7f7b3          	and	a5,a5,t4
   1643e:	01071693          	slli	a3,a4,0x10
   16442:	8fd5                	or	a5,a5,a3
   16444:	fefe2e23          	sw	a5,-4(t3)
   16448:	41075693          	srai	a3,a4,0x10
   1644c:	fc666ce3          	bltu	a2,t1,16424 <__mdiff+0xf0>
   16450:	137d                	addi	t1,t1,-1
   16452:	41f30333          	sub	t1,t1,t6
   16456:	ffc37313          	andi	t1,t1,-4
   1645a:	00680733          	add	a4,a6,t1
   1645e:	e791                	bnez	a5,1646a <__mdiff+0x136>
   16460:	ffc72783          	lw	a5,-4(a4)
   16464:	18fd                	addi	a7,a7,-1
   16466:	1771                	addi	a4,a4,-4
   16468:	dfe5                	beqz	a5,16460 <__mdiff+0x12c>
   1646a:	40b2                	lw	ra,12(sp)
   1646c:	4422                	lw	s0,8(sp)
   1646e:	01152823          	sw	a7,16(a0)
   16472:	4492                	lw	s1,4(sp)
   16474:	4902                	lw	s2,0(sp)
   16476:	0141                	addi	sp,sp,16
   16478:	8082                	ret
   1647a:	4905                	li	s2,1
   1647c:	f006d0e3          	bgez	a3,1637c <__mdiff+0x48>
   16480:	b711                	j	16384 <__mdiff+0x50>
   16482:	00140713          	addi	a4,s0,1
   16486:	070a                	slli	a4,a4,0x2
   16488:	b769                	j	16412 <__mdiff+0xde>
   1648a:	4581                	li	a1,0
   1648c:	f86ff0ef          	jal	15c12 <_Balloc>
   16490:	cd15                	beqz	a0,164cc <__mdiff+0x198>
   16492:	40b2                	lw	ra,12(sp)
   16494:	4422                	lw	s0,8(sp)
   16496:	4785                	li	a5,1
   16498:	c91c                	sw	a5,16(a0)
   1649a:	00052a23          	sw	zero,20(a0)
   1649e:	4492                	lw	s1,4(sp)
   164a0:	4902                	lw	s2,0(sp)
   164a2:	0141                	addi	sp,sp,16
   164a4:	8082                	ret
   164a6:	4701                	li	a4,0
   164a8:	000f1463          	bnez	t5,164b0 <__mdiff+0x17c>
   164ac:	972e                	add	a4,a4,a1
   164ae:	bf45                	j	1645e <__mdiff+0x12a>
   164b0:	00241713          	slli	a4,s0,0x2
   164b4:	972e                	add	a4,a4,a1
   164b6:	b765                	j	1645e <__mdiff+0x12a>
   164b8:	66e9                	lui	a3,0x1a
   164ba:	6569                	lui	a0,0x1a
   164bc:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   164c0:	4601                	li	a2,0
   164c2:	24500593          	li	a1,581
   164c6:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   164ca:	29e5                	jal	169c2 <__assert_func>
   164cc:	66e9                	lui	a3,0x1a
   164ce:	6569                	lui	a0,0x1a
   164d0:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   164d4:	4601                	li	a2,0
   164d6:	23700593          	li	a1,567
   164da:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   164de:	21d5                	jal	169c2 <__assert_func>

000164e0 <__ulp>:
   164e0:	7ff007b7          	lui	a5,0x7ff00
   164e4:	8dfd                	and	a1,a1,a5
   164e6:	fcc007b7          	lui	a5,0xfcc00
   164ea:	95be                	add	a1,a1,a5
   164ec:	4781                	li	a5,0
   164ee:	00b05463          	blez	a1,164f6 <__ulp+0x16>
   164f2:	853e                	mv	a0,a5
   164f4:	8082                	ret
   164f6:	40b005b3          	neg	a1,a1
   164fa:	85d1                	srai	a1,a1,0x14
   164fc:	47cd                	li	a5,19
   164fe:	00b7c963          	blt	a5,a1,16510 <__ulp+0x30>
   16502:	000807b7          	lui	a5,0x80
   16506:	40b7d5b3          	sra	a1,a5,a1
   1650a:	4781                	li	a5,0
   1650c:	853e                	mv	a0,a5
   1650e:	8082                	ret
   16510:	15b1                	addi	a1,a1,-20
   16512:	4779                	li	a4,30
   16514:	4785                	li	a5,1
   16516:	00b74663          	blt	a4,a1,16522 <__ulp+0x42>
   1651a:	800007b7          	lui	a5,0x80000
   1651e:	00b7d7b3          	srl	a5,a5,a1
   16522:	4581                	li	a1,0
   16524:	853e                	mv	a0,a5
   16526:	8082                	ret

00016528 <__b2d>:
   16528:	1101                	addi	sp,sp,-32
   1652a:	ca26                	sw	s1,20(sp)
   1652c:	4904                	lw	s1,16(a0)
   1652e:	cc22                	sw	s0,24(sp)
   16530:	01450413          	addi	s0,a0,20
   16534:	048a                	slli	s1,s1,0x2
   16536:	94a2                	add	s1,s1,s0
   16538:	c84a                	sw	s2,16(sp)
   1653a:	ffc4a903          	lw	s2,-4(s1)
   1653e:	c64e                	sw	s3,12(sp)
   16540:	c452                	sw	s4,8(sp)
   16542:	854a                	mv	a0,s2
   16544:	89ae                	mv	s3,a1
   16546:	ce06                	sw	ra,28(sp)
   16548:	8f5ff0ef          	jal	15e3c <__hi0bits>
   1654c:	02000713          	li	a4,32
   16550:	40a707b3          	sub	a5,a4,a0
   16554:	00f9a023          	sw	a5,0(s3)
   16558:	47a9                	li	a5,10
   1655a:	ffc48a13          	addi	s4,s1,-4
   1655e:	06a7db63          	bge	a5,a0,165d4 <__b2d+0xac>
   16562:	ff550613          	addi	a2,a0,-11
   16566:	03447d63          	bgeu	s0,s4,165a0 <__b2d+0x78>
   1656a:	ff84a783          	lw	a5,-8(s1)
   1656e:	c629                	beqz	a2,165b8 <__b2d+0x90>
   16570:	40c706b3          	sub	a3,a4,a2
   16574:	00d7d733          	srl	a4,a5,a3
   16578:	00c91933          	sll	s2,s2,a2
   1657c:	00e96933          	or	s2,s2,a4
   16580:	ff848593          	addi	a1,s1,-8
   16584:	3ff00737          	lui	a4,0x3ff00
   16588:	00e96733          	or	a4,s2,a4
   1658c:	00c797b3          	sll	a5,a5,a2
   16590:	02b47863          	bgeu	s0,a1,165c0 <__b2d+0x98>
   16594:	ff44a603          	lw	a2,-12(s1)
   16598:	00d656b3          	srl	a3,a2,a3
   1659c:	8fd5                	or	a5,a5,a3
   1659e:	a00d                	j	165c0 <__b2d+0x98>
   165a0:	47ad                	li	a5,11
   165a2:	00f50a63          	beq	a0,a5,165b6 <__b2d+0x8e>
   165a6:	00c91933          	sll	s2,s2,a2
   165aa:	3ff00737          	lui	a4,0x3ff00
   165ae:	00e96733          	or	a4,s2,a4
   165b2:	4781                	li	a5,0
   165b4:	a031                	j	165c0 <__b2d+0x98>
   165b6:	4781                	li	a5,0
   165b8:	3ff00737          	lui	a4,0x3ff00
   165bc:	00e96733          	or	a4,s2,a4
   165c0:	40f2                	lw	ra,28(sp)
   165c2:	4462                	lw	s0,24(sp)
   165c4:	44d2                	lw	s1,20(sp)
   165c6:	4942                	lw	s2,16(sp)
   165c8:	49b2                	lw	s3,12(sp)
   165ca:	4a22                	lw	s4,8(sp)
   165cc:	853e                	mv	a0,a5
   165ce:	85ba                	mv	a1,a4
   165d0:	6105                	addi	sp,sp,32
   165d2:	8082                	ret
   165d4:	46ad                	li	a3,11
   165d6:	8e89                	sub	a3,a3,a0
   165d8:	3ff007b7          	lui	a5,0x3ff00
   165dc:	00d95733          	srl	a4,s2,a3
   165e0:	8f5d                	or	a4,a4,a5
   165e2:	4781                	li	a5,0
   165e4:	01447663          	bgeu	s0,s4,165f0 <__b2d+0xc8>
   165e8:	ff84a783          	lw	a5,-8(s1)
   165ec:	00d7d7b3          	srl	a5,a5,a3
   165f0:	0555                	addi	a0,a0,21
   165f2:	00a91933          	sll	s2,s2,a0
   165f6:	00f967b3          	or	a5,s2,a5
   165fa:	b7d9                	j	165c0 <__b2d+0x98>

000165fc <__d2b>:
   165fc:	7179                	addi	sp,sp,-48
   165fe:	ca56                	sw	s5,20(sp)
   16600:	8aae                	mv	s5,a1
   16602:	4585                	li	a1,1
   16604:	d226                	sw	s1,36(sp)
   16606:	ce4e                	sw	s3,28(sp)
   16608:	cc52                	sw	s4,24(sp)
   1660a:	d606                	sw	ra,44(sp)
   1660c:	d422                	sw	s0,40(sp)
   1660e:	d04a                	sw	s2,32(sp)
   16610:	84b2                	mv	s1,a2
   16612:	8a36                	mv	s4,a3
   16614:	89ba                	mv	s3,a4
   16616:	dfcff0ef          	jal	15c12 <_Balloc>
   1661a:	c955                	beqz	a0,166ce <__d2b+0xd2>
   1661c:	00100737          	lui	a4,0x100
   16620:	0144d913          	srli	s2,s1,0x14
   16624:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe45a3>
   16628:	7ff97913          	andi	s2,s2,2047
   1662c:	842a                	mv	s0,a0
   1662e:	8fe5                	and	a5,a5,s1
   16630:	00090363          	beqz	s2,16636 <__d2b+0x3a>
   16634:	8fd9                	or	a5,a5,a4
   16636:	c63e                	sw	a5,12(sp)
   16638:	040a9263          	bnez	s5,1667c <__d2b+0x80>
   1663c:	0068                	addi	a0,sp,12
   1663e:	853ff0ef          	jal	15e90 <__lo0bits>
   16642:	4732                	lw	a4,12(sp)
   16644:	4485                	li	s1,1
   16646:	c804                	sw	s1,16(s0)
   16648:	c858                	sw	a4,20(s0)
   1664a:	02050793          	addi	a5,a0,32
   1664e:	06090063          	beqz	s2,166ae <__d2b+0xb2>
   16652:	bcd90913          	addi	s2,s2,-1075
   16656:	993e                	add	s2,s2,a5
   16658:	03500493          	li	s1,53
   1665c:	012a2023          	sw	s2,0(s4)
   16660:	40f48533          	sub	a0,s1,a5
   16664:	00a9a023          	sw	a0,0(s3)
   16668:	50b2                	lw	ra,44(sp)
   1666a:	8522                	mv	a0,s0
   1666c:	5422                	lw	s0,40(sp)
   1666e:	5492                	lw	s1,36(sp)
   16670:	5902                	lw	s2,32(sp)
   16672:	49f2                	lw	s3,28(sp)
   16674:	4a62                	lw	s4,24(sp)
   16676:	4ad2                	lw	s5,20(sp)
   16678:	6145                	addi	sp,sp,48
   1667a:	8082                	ret
   1667c:	0028                	addi	a0,sp,8
   1667e:	c456                	sw	s5,8(sp)
   16680:	811ff0ef          	jal	15e90 <__lo0bits>
   16684:	4732                	lw	a4,12(sp)
   16686:	87aa                	mv	a5,a0
   16688:	c129                	beqz	a0,166ca <__d2b+0xce>
   1668a:	4622                	lw	a2,8(sp)
   1668c:	02000693          	li	a3,32
   16690:	8e89                	sub	a3,a3,a0
   16692:	00d716b3          	sll	a3,a4,a3
   16696:	00a75733          	srl	a4,a4,a0
   1669a:	8ed1                	or	a3,a3,a2
   1669c:	c63a                	sw	a4,12(sp)
   1669e:	00e034b3          	snez	s1,a4
   166a2:	0485                	addi	s1,s1,1
   166a4:	c854                	sw	a3,20(s0)
   166a6:	cc18                	sw	a4,24(s0)
   166a8:	c804                	sw	s1,16(s0)
   166aa:	fa0914e3          	bnez	s2,16652 <__d2b+0x56>
   166ae:	00249713          	slli	a4,s1,0x2
   166b2:	9722                	add	a4,a4,s0
   166b4:	4b08                	lw	a0,16(a4)
   166b6:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee4172>
   166ba:	00fa2023          	sw	a5,0(s4)
   166be:	f7eff0ef          	jal	15e3c <__hi0bits>
   166c2:	0496                	slli	s1,s1,0x5
   166c4:	40a48533          	sub	a0,s1,a0
   166c8:	bf71                	j	16664 <__d2b+0x68>
   166ca:	46a2                	lw	a3,8(sp)
   166cc:	bfc9                	j	1669e <__d2b+0xa2>
   166ce:	66e9                	lui	a3,0x1a
   166d0:	6569                	lui	a0,0x1a
   166d2:	35868693          	addi	a3,a3,856 # 1a358 <__clzsi2+0xd8>
   166d6:	4601                	li	a2,0
   166d8:	30f00593          	li	a1,783
   166dc:	3c850513          	addi	a0,a0,968 # 1a3c8 <__clzsi2+0x148>
   166e0:	24cd                	jal	169c2 <__assert_func>

000166e2 <__ratio>:
   166e2:	7179                	addi	sp,sp,-48
   166e4:	d422                	sw	s0,40(sp)
   166e6:	842e                	mv	s0,a1
   166e8:	082c                	addi	a1,sp,24
   166ea:	d606                	sw	ra,44(sp)
   166ec:	d226                	sw	s1,36(sp)
   166ee:	84aa                	mv	s1,a0
   166f0:	e39ff0ef          	jal	16528 <__b2d>
   166f4:	c02a                	sw	a0,0(sp)
   166f6:	c22e                	sw	a1,4(sp)
   166f8:	2782                	fld	fa5,0(sp)
   166fa:	086c                	addi	a1,sp,28
   166fc:	8522                	mv	a0,s0
   166fe:	a43e                	fsd	fa5,8(sp)
   16700:	e29ff0ef          	jal	16528 <__b2d>
   16704:	4818                	lw	a4,16(s0)
   16706:	489c                	lw	a5,16(s1)
   16708:	46f2                	lw	a3,28(sp)
   1670a:	c02a                	sw	a0,0(sp)
   1670c:	8f99                	sub	a5,a5,a4
   1670e:	4762                	lw	a4,24(sp)
   16710:	0796                	slli	a5,a5,0x5
   16712:	c22e                	sw	a1,4(sp)
   16714:	8f15                	sub	a4,a4,a3
   16716:	97ba                	add	a5,a5,a4
   16718:	02f05263          	blez	a5,1673c <__ratio+0x5a>
   1671c:	46b2                	lw	a3,12(sp)
   1671e:	07d2                	slli	a5,a5,0x14
   16720:	97b6                	add	a5,a5,a3
   16722:	c63e                	sw	a5,12(sp)
   16724:	2702                	fld	fa4,0(sp)
   16726:	27a2                	fld	fa5,8(sp)
   16728:	50b2                	lw	ra,44(sp)
   1672a:	5422                	lw	s0,40(sp)
   1672c:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   16730:	5492                	lw	s1,36(sp)
   16732:	a03e                	fsd	fa5,0(sp)
   16734:	4502                	lw	a0,0(sp)
   16736:	4592                	lw	a1,4(sp)
   16738:	6145                	addi	sp,sp,48
   1673a:	8082                	ret
   1673c:	4692                	lw	a3,4(sp)
   1673e:	07d2                	slli	a5,a5,0x14
   16740:	40f687b3          	sub	a5,a3,a5
   16744:	c23e                	sw	a5,4(sp)
   16746:	bff9                	j	16724 <__ratio+0x42>

00016748 <_mprec_log10>:
   16748:	47dd                	li	a5,23
   1674a:	1141                	addi	sp,sp,-16
   1674c:	00a7df63          	bge	a5,a0,1676a <_mprec_log10+0x22>
   16750:	ed81b787          	fld	fa5,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   16754:	ee01b707          	fld	fa4,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   16758:	157d                	addi	a0,a0,-1
   1675a:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1675e:	fd6d                	bnez	a0,16758 <_mprec_log10+0x10>
   16760:	a43e                	fsd	fa5,8(sp)
   16762:	4522                	lw	a0,8(sp)
   16764:	45b2                	lw	a1,12(sp)
   16766:	0141                	addi	sp,sp,16
   16768:	8082                	ret
   1676a:	67e9                	lui	a5,0x1a
   1676c:	050e                	slli	a0,a0,0x3
   1676e:	70078793          	addi	a5,a5,1792 # 1a700 <__mprec_tens>
   16772:	97aa                	add	a5,a5,a0
   16774:	239c                	fld	fa5,0(a5)
   16776:	a43e                	fsd	fa5,8(sp)
   16778:	4522                	lw	a0,8(sp)
   1677a:	45b2                	lw	a1,12(sp)
   1677c:	0141                	addi	sp,sp,16
   1677e:	8082                	ret

00016780 <__copybits>:
   16780:	4a14                	lw	a3,16(a2)
   16782:	15fd                	addi	a1,a1,-1
   16784:	8595                	srai	a1,a1,0x5
   16786:	0585                	addi	a1,a1,1
   16788:	01460793          	addi	a5,a2,20
   1678c:	068a                	slli	a3,a3,0x2
   1678e:	058a                	slli	a1,a1,0x2
   16790:	96be                	add	a3,a3,a5
   16792:	95aa                	add	a1,a1,a0
   16794:	02d7f163          	bgeu	a5,a3,167b6 <__copybits+0x36>
   16798:	872a                	mv	a4,a0
   1679a:	0007a803          	lw	a6,0(a5)
   1679e:	0791                	addi	a5,a5,4
   167a0:	0711                	addi	a4,a4,4
   167a2:	ff072e23          	sw	a6,-4(a4)
   167a6:	fed7eae3          	bltu	a5,a3,1679a <__copybits+0x1a>
   167aa:	40c687b3          	sub	a5,a3,a2
   167ae:	17ad                	addi	a5,a5,-21
   167b0:	9bf1                	andi	a5,a5,-4
   167b2:	0791                	addi	a5,a5,4
   167b4:	953e                	add	a0,a0,a5
   167b6:	00b57763          	bgeu	a0,a1,167c4 <__copybits+0x44>
   167ba:	0511                	addi	a0,a0,4
   167bc:	fe052e23          	sw	zero,-4(a0)
   167c0:	feb56de3          	bltu	a0,a1,167ba <__copybits+0x3a>
   167c4:	8082                	ret

000167c6 <__any_on>:
   167c6:	4918                	lw	a4,16(a0)
   167c8:	4055d613          	srai	a2,a1,0x5
   167cc:	01450693          	addi	a3,a0,20
   167d0:	00c75d63          	bge	a4,a2,167ea <__any_on+0x24>
   167d4:	070a                	slli	a4,a4,0x2
   167d6:	00e687b3          	add	a5,a3,a4
   167da:	02f6f863          	bgeu	a3,a5,1680a <__any_on+0x44>
   167de:	ffc7a703          	lw	a4,-4(a5)
   167e2:	17f1                	addi	a5,a5,-4
   167e4:	db7d                	beqz	a4,167da <__any_on+0x14>
   167e6:	4505                	li	a0,1
   167e8:	8082                	ret
   167ea:	00261793          	slli	a5,a2,0x2
   167ee:	97b6                	add	a5,a5,a3
   167f0:	fee655e3          	bge	a2,a4,167da <__any_on+0x14>
   167f4:	89fd                	andi	a1,a1,31
   167f6:	d1f5                	beqz	a1,167da <__any_on+0x14>
   167f8:	4390                	lw	a2,0(a5)
   167fa:	4505                	li	a0,1
   167fc:	00b65733          	srl	a4,a2,a1
   16800:	00b71733          	sll	a4,a4,a1
   16804:	fce60be3          	beq	a2,a4,167da <__any_on+0x14>
   16808:	8082                	ret
   1680a:	4501                	li	a0,0
   1680c:	8082                	ret

0001680e <_setlocale_r>:
   1680e:	1141                	addi	sp,sp,-16
   16810:	c606                	sw	ra,12(sp)
   16812:	c226                	sw	s1,4(sp)
   16814:	c20d                	beqz	a2,16836 <_setlocale_r+0x28>
   16816:	65e9                	lui	a1,0x1a
   16818:	42058593          	addi	a1,a1,1056 # 1a420 <__clzsi2+0x1a0>
   1681c:	8532                	mv	a0,a2
   1681e:	c422                	sw	s0,8(sp)
   16820:	8432                	mv	s0,a2
   16822:	2049                	jal	168a4 <strcmp>
   16824:	64e9                	lui	s1,0x1a
   16826:	e911                	bnez	a0,1683a <_setlocale_r+0x2c>
   16828:	4422                	lw	s0,8(sp)
   1682a:	41c48513          	addi	a0,s1,1052 # 1a41c <__clzsi2+0x19c>
   1682e:	40b2                	lw	ra,12(sp)
   16830:	4492                	lw	s1,4(sp)
   16832:	0141                	addi	sp,sp,16
   16834:	8082                	ret
   16836:	64e9                	lui	s1,0x1a
   16838:	bfcd                	j	1682a <_setlocale_r+0x1c>
   1683a:	41c48593          	addi	a1,s1,1052 # 1a41c <__clzsi2+0x19c>
   1683e:	8522                	mv	a0,s0
   16840:	2095                	jal	168a4 <strcmp>
   16842:	d17d                	beqz	a0,16828 <_setlocale_r+0x1a>
   16844:	65e9                	lui	a1,0x1a
   16846:	43858593          	addi	a1,a1,1080 # 1a438 <__clzsi2+0x1b8>
   1684a:	8522                	mv	a0,s0
   1684c:	28a1                	jal	168a4 <strcmp>
   1684e:	dd69                	beqz	a0,16828 <_setlocale_r+0x1a>
   16850:	4422                	lw	s0,8(sp)
   16852:	4501                	li	a0,0
   16854:	bfe9                	j	1682e <_setlocale_r+0x20>

00016856 <__locale_mb_cur_max>:
   16856:	e601c503          	lbu	a0,-416(gp) # 1b670 <__global_locale+0x128>
   1685a:	8082                	ret

0001685c <setlocale>:
   1685c:	1141                	addi	sp,sp,-16
   1685e:	c606                	sw	ra,12(sp)
   16860:	c226                	sw	s1,4(sp)
   16862:	c18d                	beqz	a1,16884 <setlocale+0x28>
   16864:	c422                	sw	s0,8(sp)
   16866:	842e                	mv	s0,a1
   16868:	65e9                	lui	a1,0x1a
   1686a:	42058593          	addi	a1,a1,1056 # 1a420 <__clzsi2+0x1a0>
   1686e:	8522                	mv	a0,s0
   16870:	2815                	jal	168a4 <strcmp>
   16872:	64e9                	lui	s1,0x1a
   16874:	e911                	bnez	a0,16888 <setlocale+0x2c>
   16876:	4422                	lw	s0,8(sp)
   16878:	41c48513          	addi	a0,s1,1052 # 1a41c <__clzsi2+0x19c>
   1687c:	40b2                	lw	ra,12(sp)
   1687e:	4492                	lw	s1,4(sp)
   16880:	0141                	addi	sp,sp,16
   16882:	8082                	ret
   16884:	64e9                	lui	s1,0x1a
   16886:	bfcd                	j	16878 <setlocale+0x1c>
   16888:	41c48593          	addi	a1,s1,1052 # 1a41c <__clzsi2+0x19c>
   1688c:	8522                	mv	a0,s0
   1688e:	2819                	jal	168a4 <strcmp>
   16890:	d17d                	beqz	a0,16876 <setlocale+0x1a>
   16892:	65e9                	lui	a1,0x1a
   16894:	43858593          	addi	a1,a1,1080 # 1a438 <__clzsi2+0x1b8>
   16898:	8522                	mv	a0,s0
   1689a:	2029                	jal	168a4 <strcmp>
   1689c:	dd69                	beqz	a0,16876 <setlocale+0x1a>
   1689e:	4422                	lw	s0,8(sp)
   168a0:	4501                	li	a0,0
   168a2:	bfe9                	j	1687c <setlocale+0x20>

000168a4 <strcmp>:
   168a4:	00b56733          	or	a4,a0,a1
   168a8:	53fd                	li	t2,-1
   168aa:	8b0d                	andi	a4,a4,3
   168ac:	e779                	bnez	a4,1697a <strcmp+0xd6>
   168ae:	7f7f87b7          	lui	a5,0x7f7f8
   168b2:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   168b6:	4110                	lw	a2,0(a0)
   168b8:	4194                	lw	a3,0(a1)
   168ba:	00f672b3          	and	t0,a2,a5
   168be:	00f66333          	or	t1,a2,a5
   168c2:	92be                	add	t0,t0,a5
   168c4:	0062e2b3          	or	t0,t0,t1
   168c8:	0c729763          	bne	t0,t2,16996 <strcmp+0xf2>
   168cc:	06d61863          	bne	a2,a3,1693c <strcmp+0x98>
   168d0:	4150                	lw	a2,4(a0)
   168d2:	41d4                	lw	a3,4(a1)
   168d4:	00f672b3          	and	t0,a2,a5
   168d8:	00f66333          	or	t1,a2,a5
   168dc:	92be                	add	t0,t0,a5
   168de:	0062e2b3          	or	t0,t0,t1
   168e2:	0a729863          	bne	t0,t2,16992 <strcmp+0xee>
   168e6:	04d61b63          	bne	a2,a3,1693c <strcmp+0x98>
   168ea:	4510                	lw	a2,8(a0)
   168ec:	4594                	lw	a3,8(a1)
   168ee:	00f672b3          	and	t0,a2,a5
   168f2:	00f66333          	or	t1,a2,a5
   168f6:	92be                	add	t0,t0,a5
   168f8:	0062e2b3          	or	t0,t0,t1
   168fc:	0a729163          	bne	t0,t2,1699e <strcmp+0xfa>
   16900:	02d61e63          	bne	a2,a3,1693c <strcmp+0x98>
   16904:	4550                	lw	a2,12(a0)
   16906:	45d4                	lw	a3,12(a1)
   16908:	00f672b3          	and	t0,a2,a5
   1690c:	00f66333          	or	t1,a2,a5
   16910:	92be                	add	t0,t0,a5
   16912:	0062e2b3          	or	t0,t0,t1
   16916:	08729a63          	bne	t0,t2,169aa <strcmp+0x106>
   1691a:	02d61163          	bne	a2,a3,1693c <strcmp+0x98>
   1691e:	4910                	lw	a2,16(a0)
   16920:	4994                	lw	a3,16(a1)
   16922:	00f672b3          	and	t0,a2,a5
   16926:	00f66333          	or	t1,a2,a5
   1692a:	92be                	add	t0,t0,a5
   1692c:	0062e2b3          	or	t0,t0,t1
   16930:	08729363          	bne	t0,t2,169b6 <strcmp+0x112>
   16934:	0551                	addi	a0,a0,20
   16936:	05d1                	addi	a1,a1,20
   16938:	f6d60fe3          	beq	a2,a3,168b6 <strcmp+0x12>
   1693c:	01061713          	slli	a4,a2,0x10
   16940:	01069793          	slli	a5,a3,0x10
   16944:	00f71c63          	bne	a4,a5,1695c <strcmp+0xb8>
   16948:	01065713          	srli	a4,a2,0x10
   1694c:	0106d793          	srli	a5,a3,0x10
   16950:	40f70533          	sub	a0,a4,a5
   16954:	0ff57593          	zext.b	a1,a0
   16958:	e991                	bnez	a1,1696c <strcmp+0xc8>
   1695a:	8082                	ret
   1695c:	8341                	srli	a4,a4,0x10
   1695e:	83c1                	srli	a5,a5,0x10
   16960:	40f70533          	sub	a0,a4,a5
   16964:	0ff57593          	zext.b	a1,a0
   16968:	e191                	bnez	a1,1696c <strcmp+0xc8>
   1696a:	8082                	ret
   1696c:	0ff77713          	zext.b	a4,a4
   16970:	0ff7f793          	zext.b	a5,a5
   16974:	40f70533          	sub	a0,a4,a5
   16978:	8082                	ret
   1697a:	00054603          	lbu	a2,0(a0)
   1697e:	0005c683          	lbu	a3,0(a1)
   16982:	0505                	addi	a0,a0,1
   16984:	0585                	addi	a1,a1,1
   16986:	00d61363          	bne	a2,a3,1698c <strcmp+0xe8>
   1698a:	fa65                	bnez	a2,1697a <strcmp+0xd6>
   1698c:	40d60533          	sub	a0,a2,a3
   16990:	8082                	ret
   16992:	0511                	addi	a0,a0,4
   16994:	0591                	addi	a1,a1,4
   16996:	fed612e3          	bne	a2,a3,1697a <strcmp+0xd6>
   1699a:	4501                	li	a0,0
   1699c:	8082                	ret
   1699e:	0521                	addi	a0,a0,8
   169a0:	05a1                	addi	a1,a1,8
   169a2:	fcd61ce3          	bne	a2,a3,1697a <strcmp+0xd6>
   169a6:	4501                	li	a0,0
   169a8:	8082                	ret
   169aa:	0531                	addi	a0,a0,12
   169ac:	05b1                	addi	a1,a1,12
   169ae:	fcd616e3          	bne	a2,a3,1697a <strcmp+0xd6>
   169b2:	4501                	li	a0,0
   169b4:	8082                	ret
   169b6:	0541                	addi	a0,a0,16
   169b8:	05c1                	addi	a1,a1,16
   169ba:	fcd610e3          	bne	a2,a3,1697a <strcmp+0xd6>
   169be:	4501                	li	a0,0
   169c0:	8082                	ret

000169c2 <__assert_func>:
   169c2:	f141a703          	lw	a4,-236(gp) # 1b724 <_impure_ptr>
   169c6:	1141                	addi	sp,sp,-16
   169c8:	87b6                	mv	a5,a3
   169ca:	8832                	mv	a6,a2
   169cc:	c606                	sw	ra,12(sp)
   169ce:	00c72883          	lw	a7,12(a4)
   169d2:	86aa                	mv	a3,a0
   169d4:	872e                	mv	a4,a1
   169d6:	863e                	mv	a2,a5
   169d8:	00080c63          	beqz	a6,169f0 <__assert_func+0x2e>
   169dc:	67e9                	lui	a5,0x1a
   169de:	42c78793          	addi	a5,a5,1068 # 1a42c <__clzsi2+0x1ac>
   169e2:	65e9                	lui	a1,0x1a
   169e4:	43c58593          	addi	a1,a1,1084 # 1a43c <__clzsi2+0x1bc>
   169e8:	8546                	mv	a0,a7
   169ea:	2a81                	jal	16b3a <fiprintf>
   169ec:	691000ef          	jal	1787c <abort>
   169f0:	6869                	lui	a6,0x1a
   169f2:	43880793          	addi	a5,a6,1080 # 1a438 <__clzsi2+0x1b8>
   169f6:	43880813          	addi	a6,a6,1080
   169fa:	b7e5                	j	169e2 <__assert_func+0x20>

000169fc <__assert>:
   169fc:	1141                	addi	sp,sp,-16
   169fe:	86b2                	mv	a3,a2
   16a00:	4601                	li	a2,0
   16a02:	c606                	sw	ra,12(sp)
   16a04:	fbfff0ef          	jal	169c2 <__assert_func>

00016a08 <_calloc_r>:
   16a08:	02c5b7b3          	mulhu	a5,a1,a2
   16a0c:	1141                	addi	sp,sp,-16
   16a0e:	c606                	sw	ra,12(sp)
   16a10:	c422                	sw	s0,8(sp)
   16a12:	02c585b3          	mul	a1,a1,a2
   16a16:	efa5                	bnez	a5,16a8e <_calloc_r+0x86>
   16a18:	e53fa0ef          	jal	1186a <_malloc_r>
   16a1c:	842a                	mv	s0,a0
   16a1e:	cd25                	beqz	a0,16a96 <_calloc_r+0x8e>
   16a20:	ffc52603          	lw	a2,-4(a0)
   16a24:	02400713          	li	a4,36
   16a28:	9a71                	andi	a2,a2,-4
   16a2a:	1671                	addi	a2,a2,-4
   16a2c:	04c76063          	bltu	a4,a2,16a6c <_calloc_r+0x64>
   16a30:	46cd                	li	a3,19
   16a32:	87aa                	mv	a5,a0
   16a34:	02c6f163          	bgeu	a3,a2,16a56 <_calloc_r+0x4e>
   16a38:	00052023          	sw	zero,0(a0)
   16a3c:	00052223          	sw	zero,4(a0)
   16a40:	47ed                	li	a5,27
   16a42:	02c7fd63          	bgeu	a5,a2,16a7c <_calloc_r+0x74>
   16a46:	00052423          	sw	zero,8(a0)
   16a4a:	00052623          	sw	zero,12(a0)
   16a4e:	01050793          	addi	a5,a0,16
   16a52:	04e60863          	beq	a2,a4,16aa2 <_calloc_r+0x9a>
   16a56:	0007a023          	sw	zero,0(a5)
   16a5a:	0007a223          	sw	zero,4(a5)
   16a5e:	0007a423          	sw	zero,8(a5)
   16a62:	40b2                	lw	ra,12(sp)
   16a64:	8522                	mv	a0,s0
   16a66:	4422                	lw	s0,8(sp)
   16a68:	0141                	addi	sp,sp,16
   16a6a:	8082                	ret
   16a6c:	4581                	li	a1,0
   16a6e:	fe2fa0ef          	jal	11250 <memset>
   16a72:	40b2                	lw	ra,12(sp)
   16a74:	8522                	mv	a0,s0
   16a76:	4422                	lw	s0,8(sp)
   16a78:	0141                	addi	sp,sp,16
   16a7a:	8082                	ret
   16a7c:	00850793          	addi	a5,a0,8
   16a80:	0007a023          	sw	zero,0(a5)
   16a84:	0007a223          	sw	zero,4(a5)
   16a88:	0007a423          	sw	zero,8(a5)
   16a8c:	bfd9                	j	16a62 <_calloc_r+0x5a>
   16a8e:	5e9000ef          	jal	17876 <__errno>
   16a92:	47b1                	li	a5,12
   16a94:	c11c                	sw	a5,0(a0)
   16a96:	4401                	li	s0,0
   16a98:	40b2                	lw	ra,12(sp)
   16a9a:	8522                	mv	a0,s0
   16a9c:	4422                	lw	s0,8(sp)
   16a9e:	0141                	addi	sp,sp,16
   16aa0:	8082                	ret
   16aa2:	00052823          	sw	zero,16(a0)
   16aa6:	01850793          	addi	a5,a0,24
   16aaa:	00052a23          	sw	zero,20(a0)
   16aae:	b765                	j	16a56 <_calloc_r+0x4e>

00016ab0 <_mbtowc_r>:
   16ab0:	e1c1a783          	lw	a5,-484(gp) # 1b62c <__global_locale+0xe4>
   16ab4:	8782                	jr	a5

00016ab6 <__ascii_mbtowc>:
   16ab6:	c999                	beqz	a1,16acc <__ascii_mbtowc+0x16>
   16ab8:	c61d                	beqz	a2,16ae6 <__ascii_mbtowc+0x30>
   16aba:	ca95                	beqz	a3,16aee <__ascii_mbtowc+0x38>
   16abc:	00064783          	lbu	a5,0(a2)
   16ac0:	c19c                	sw	a5,0(a1)
   16ac2:	00064503          	lbu	a0,0(a2)
   16ac6:	00a03533          	snez	a0,a0
   16aca:	8082                	ret
   16acc:	1141                	addi	sp,sp,-16
   16ace:	006c                	addi	a1,sp,12
   16ad0:	ce09                	beqz	a2,16aea <__ascii_mbtowc+0x34>
   16ad2:	c285                	beqz	a3,16af2 <__ascii_mbtowc+0x3c>
   16ad4:	00064783          	lbu	a5,0(a2)
   16ad8:	c19c                	sw	a5,0(a1)
   16ada:	00064503          	lbu	a0,0(a2)
   16ade:	00a03533          	snez	a0,a0
   16ae2:	0141                	addi	sp,sp,16
   16ae4:	8082                	ret
   16ae6:	4501                	li	a0,0
   16ae8:	8082                	ret
   16aea:	4501                	li	a0,0
   16aec:	bfdd                	j	16ae2 <__ascii_mbtowc+0x2c>
   16aee:	5579                	li	a0,-2
   16af0:	8082                	ret
   16af2:	5579                	li	a0,-2
   16af4:	b7fd                	j	16ae2 <__ascii_mbtowc+0x2c>

00016af6 <_wctomb_r>:
   16af6:	e181a783          	lw	a5,-488(gp) # 1b628 <__global_locale+0xe0>
   16afa:	8782                	jr	a5

00016afc <__ascii_wctomb>:
   16afc:	cd91                	beqz	a1,16b18 <__ascii_wctomb+0x1c>
   16afe:	0ff00793          	li	a5,255
   16b02:	00c7e663          	bltu	a5,a2,16b0e <__ascii_wctomb+0x12>
   16b06:	00c58023          	sb	a2,0(a1)
   16b0a:	4505                	li	a0,1
   16b0c:	8082                	ret
   16b0e:	08a00793          	li	a5,138
   16b12:	c11c                	sw	a5,0(a0)
   16b14:	557d                	li	a0,-1
   16b16:	8082                	ret
   16b18:	4501                	li	a0,0
   16b1a:	8082                	ret

00016b1c <_fiprintf_r>:
   16b1c:	7139                	addi	sp,sp,-64
   16b1e:	02c10313          	addi	t1,sp,44
   16b22:	d636                	sw	a3,44(sp)
   16b24:	869a                	mv	a3,t1
   16b26:	ce06                	sw	ra,28(sp)
   16b28:	d83a                	sw	a4,48(sp)
   16b2a:	da3e                	sw	a5,52(sp)
   16b2c:	dc42                	sw	a6,56(sp)
   16b2e:	de46                	sw	a7,60(sp)
   16b30:	c61a                	sw	t1,12(sp)
   16b32:	280d                	jal	16b64 <_vfiprintf_r>
   16b34:	40f2                	lw	ra,28(sp)
   16b36:	6121                	addi	sp,sp,64
   16b38:	8082                	ret

00016b3a <fiprintf>:
   16b3a:	8e2a                	mv	t3,a0
   16b3c:	7139                	addi	sp,sp,-64
   16b3e:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   16b42:	02810313          	addi	t1,sp,40
   16b46:	d432                	sw	a2,40(sp)
   16b48:	d636                	sw	a3,44(sp)
   16b4a:	862e                	mv	a2,a1
   16b4c:	869a                	mv	a3,t1
   16b4e:	85f2                	mv	a1,t3
   16b50:	ce06                	sw	ra,28(sp)
   16b52:	d83a                	sw	a4,48(sp)
   16b54:	da3e                	sw	a5,52(sp)
   16b56:	dc42                	sw	a6,56(sp)
   16b58:	de46                	sw	a7,60(sp)
   16b5a:	c61a                	sw	t1,12(sp)
   16b5c:	2021                	jal	16b64 <_vfiprintf_r>
   16b5e:	40f2                	lw	ra,28(sp)
   16b60:	6121                	addi	sp,sp,64
   16b62:	8082                	ret

00016b64 <_vfiprintf_r>:
   16b64:	7169                	addi	sp,sp,-304
   16b66:	11312e23          	sw	s3,284(sp)
   16b6a:	11512a23          	sw	s5,276(sp)
   16b6e:	11612823          	sw	s6,272(sp)
   16b72:	11712623          	sw	s7,268(sp)
   16b76:	12112623          	sw	ra,300(sp)
   16b7a:	11a12023          	sw	s10,256(sp)
   16b7e:	8baa                	mv	s7,a0
   16b80:	8aae                	mv	s5,a1
   16b82:	89b2                	mv	s3,a2
   16b84:	8b36                	mv	s6,a3
   16b86:	c501                	beqz	a0,16b8e <_vfiprintf_r+0x2a>
   16b88:	595c                	lw	a5,52(a0)
   16b8a:	300783e3          	beqz	a5,17690 <_vfiprintf_r+0xb2c>
   16b8e:	00ca9703          	lh	a4,12(s5)
   16b92:	064aa783          	lw	a5,100(s5)
   16b96:	01271693          	slli	a3,a4,0x12
   16b9a:	0006cb63          	bltz	a3,16bb0 <_vfiprintf_r+0x4c>
   16b9e:	76f9                	lui	a3,0xffffe
   16ba0:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   16ba2:	6609                	lui	a2,0x2
   16ba4:	8f51                	or	a4,a4,a2
   16ba6:	8ff5                	and	a5,a5,a3
   16ba8:	00ea9623          	sh	a4,12(s5)
   16bac:	06faa223          	sw	a5,100(s5)
   16bb0:	01279713          	slli	a4,a5,0x12
   16bb4:	400740e3          	bltz	a4,177b4 <_vfiprintf_r+0xc50>
   16bb8:	00ca9783          	lh	a5,12(s5)
   16bbc:	0087f713          	andi	a4,a5,8
   16bc0:	22070363          	beqz	a4,16de6 <_vfiprintf_r+0x282>
   16bc4:	010aa703          	lw	a4,16(s5)
   16bc8:	20070f63          	beqz	a4,16de6 <_vfiprintf_r+0x282>
   16bcc:	8be9                	andi	a5,a5,26
   16bce:	4729                	li	a4,10
   16bd0:	22e78763          	beq	a5,a4,16dfe <_vfiprintf_r+0x29a>
   16bd4:	67ed                	lui	a5,0x1b
   16bd6:	4d01                	li	s10,0
   16bd8:	11812423          	sw	s8,264(sp)
   16bdc:	11912223          	sw	s9,260(sp)
   16be0:	04c10c13          	addi	s8,sp,76
   16be4:	8cc78793          	addi	a5,a5,-1844 # 1a8cc <_ctype_+0x104>
   16be8:	6ced                	lui	s9,0x1b
   16bea:	12812423          	sw	s0,296(sp)
   16bee:	13212023          	sw	s2,288(sp)
   16bf2:	11412c23          	sw	s4,280(sp)
   16bf6:	896a                	mv	s2,s10
   16bf8:	12912223          	sw	s1,292(sp)
   16bfc:	dfee                	sw	s11,252(sp)
   16bfe:	c0e2                	sw	s8,64(sp)
   16c00:	c482                	sw	zero,72(sp)
   16c02:	c282                	sw	zero,68(sp)
   16c04:	8462                	mv	s0,s8
   16c06:	c202                	sw	zero,4(sp)
   16c08:	ca02                	sw	zero,20(sp)
   16c0a:	cc02                	sw	zero,24(sp)
   16c0c:	ce02                	sw	zero,28(sp)
   16c0e:	c03e                	sw	a5,0(sp)
   16c10:	4a41                	li	s4,16
   16c12:	a38c8c93          	addi	s9,s9,-1480 # 1aa38 <zeroes.0>
   16c16:	8d5a                	mv	s10,s6
   16c18:	0009c783          	lbu	a5,0(s3)
   16c1c:	14078563          	beqz	a5,16d66 <_vfiprintf_r+0x202>
   16c20:	84ce                	mv	s1,s3
   16c22:	02500713          	li	a4,37
   16c26:	20e78363          	beq	a5,a4,16e2c <_vfiprintf_r+0x2c8>
   16c2a:	0014c783          	lbu	a5,1(s1)
   16c2e:	0485                	addi	s1,s1,1
   16c30:	fbfd                	bnez	a5,16c26 <_vfiprintf_r+0xc2>
   16c32:	41348b33          	sub	s6,s1,s3
   16c36:	13348863          	beq	s1,s3,16d66 <_vfiprintf_r+0x202>
   16c3a:	4726                	lw	a4,72(sp)
   16c3c:	4796                	lw	a5,68(sp)
   16c3e:	01342023          	sw	s3,0(s0)
   16c42:	975a                	add	a4,a4,s6
   16c44:	0785                	addi	a5,a5,1
   16c46:	01642223          	sw	s6,4(s0)
   16c4a:	c4ba                	sw	a4,72(sp)
   16c4c:	c2be                	sw	a5,68(sp)
   16c4e:	471d                	li	a4,7
   16c50:	0421                	addi	s0,s0,8
   16c52:	1ef74463          	blt	a4,a5,16e3a <_vfiprintf_r+0x2d6>
   16c56:	0004c783          	lbu	a5,0(s1)
   16c5a:	995a                	add	s2,s2,s6
   16c5c:	10078563          	beqz	a5,16d66 <_vfiprintf_r+0x202>
   16c60:	0014c783          	lbu	a5,1(s1)
   16c64:	00148993          	addi	s3,s1,1
   16c68:	02010da3          	sb	zero,59(sp)
   16c6c:	5dfd                	li	s11,-1
   16c6e:	4b01                	li	s6,0
   16c70:	4801                	li	a6,0
   16c72:	05a00493          	li	s1,90
   16c76:	0985                	addi	s3,s3,1
   16c78:	863e                	mv	a2,a5
   16c7a:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   16c7e:	02e4eb63          	bltu	s1,a4,16cb4 <_vfiprintf_r+0x150>
   16c82:	4782                	lw	a5,0(sp)
   16c84:	070a                	slli	a4,a4,0x2
   16c86:	973e                	add	a4,a4,a5
   16c88:	431c                	lw	a5,0(a4)
   16c8a:	8782                	jr	a5
   16c8c:	4b01                	li	s6,0
   16c8e:	fd060793          	addi	a5,a2,-48
   16c92:	46a5                	li	a3,9
   16c94:	0009c603          	lbu	a2,0(s3)
   16c98:	002b1713          	slli	a4,s6,0x2
   16c9c:	9b3a                	add	s6,s6,a4
   16c9e:	0b06                	slli	s6,s6,0x1
   16ca0:	9b3e                	add	s6,s6,a5
   16ca2:	fd060793          	addi	a5,a2,-48
   16ca6:	0985                	addi	s3,s3,1
   16ca8:	fef6f6e3          	bgeu	a3,a5,16c94 <_vfiprintf_r+0x130>
   16cac:	fe060713          	addi	a4,a2,-32
   16cb0:	fce4f9e3          	bgeu	s1,a4,16c82 <_vfiprintf_r+0x11e>
   16cb4:	ca4d                	beqz	a2,16d66 <_vfiprintf_r+0x202>
   16cb6:	08c10623          	sb	a2,140(sp)
   16cba:	02010da3          	sb	zero,59(sp)
   16cbe:	4885                	li	a7,1
   16cc0:	4e05                	li	t3,1
   16cc2:	0164                	addi	s1,sp,140
   16cc4:	4d81                	li	s11,0
   16cc6:	4281                	li	t0,0
   16cc8:	08487f93          	andi	t6,a6,132
   16ccc:	4726                	lw	a4,72(sp)
   16cce:	4796                	lw	a5,68(sp)
   16cd0:	000f9663          	bnez	t6,16cdc <_vfiprintf_r+0x178>
   16cd4:	411b0eb3          	sub	t4,s6,a7
   16cd8:	71d04b63          	bgtz	t4,173ee <_vfiprintf_r+0x88a>
   16cdc:	03b14603          	lbu	a2,59(sp)
   16ce0:	ce11                	beqz	a2,16cfc <_vfiprintf_r+0x198>
   16ce2:	03b10613          	addi	a2,sp,59
   16ce6:	c010                	sw	a2,0(s0)
   16ce8:	0785                	addi	a5,a5,1
   16cea:	4605                	li	a2,1
   16cec:	0705                	addi	a4,a4,1
   16cee:	c050                	sw	a2,4(s0)
   16cf0:	c4ba                	sw	a4,72(sp)
   16cf2:	c2be                	sw	a5,68(sp)
   16cf4:	461d                	li	a2,7
   16cf6:	0421                	addi	s0,s0,8
   16cf8:	1af64363          	blt	a2,a5,16e9e <_vfiprintf_r+0x33a>
   16cfc:	00028e63          	beqz	t0,16d18 <_vfiprintf_r+0x1b4>
   16d00:	1870                	addi	a2,sp,60
   16d02:	c010                	sw	a2,0(s0)
   16d04:	0785                	addi	a5,a5,1
   16d06:	4609                	li	a2,2
   16d08:	0709                	addi	a4,a4,2
   16d0a:	c050                	sw	a2,4(s0)
   16d0c:	c4ba                	sw	a4,72(sp)
   16d0e:	c2be                	sw	a5,68(sp)
   16d10:	461d                	li	a2,7
   16d12:	0421                	addi	s0,s0,8
   16d14:	78f64663          	blt	a2,a5,174a0 <_vfiprintf_r+0x93c>
   16d18:	08000613          	li	a2,128
   16d1c:	52cf8a63          	beq	t6,a2,17250 <_vfiprintf_r+0x6ec>
   16d20:	41cd8db3          	sub	s11,s11,t3
   16d24:	5db04d63          	bgtz	s11,172fe <_vfiprintf_r+0x79a>
   16d28:	9772                	add	a4,a4,t3
   16d2a:	0785                	addi	a5,a5,1
   16d2c:	c004                	sw	s1,0(s0)
   16d2e:	01c42223          	sw	t3,4(s0)
   16d32:	c4ba                	sw	a4,72(sp)
   16d34:	c2be                	sw	a5,68(sp)
   16d36:	461d                	li	a2,7
   16d38:	0421                	addi	s0,s0,8
   16d3a:	64f64e63          	blt	a2,a5,17396 <_vfiprintf_r+0x832>
   16d3e:	00487813          	andi	a6,a6,4
   16d42:	00080663          	beqz	a6,16d4e <_vfiprintf_r+0x1ea>
   16d46:	411b04b3          	sub	s1,s6,a7
   16d4a:	16904e63          	bgtz	s1,16ec6 <_vfiprintf_r+0x362>
   16d4e:	011b5363          	bge	s6,a7,16d54 <_vfiprintf_r+0x1f0>
   16d52:	8b46                	mv	s6,a7
   16d54:	995a                	add	s2,s2,s6
   16d56:	0e071a63          	bnez	a4,16e4a <_vfiprintf_r+0x2e6>
   16d5a:	0009c783          	lbu	a5,0(s3)
   16d5e:	c282                	sw	zero,68(sp)
   16d60:	8462                	mv	s0,s8
   16d62:	ea079fe3          	bnez	a5,16c20 <_vfiprintf_r+0xbc>
   16d66:	47a6                	lw	a5,72(sp)
   16d68:	8d4a                	mv	s10,s2
   16d6a:	0e078863          	beqz	a5,16e5a <_vfiprintf_r+0x2f6>
   16d6e:	0090                	addi	a2,sp,64
   16d70:	85d6                	mv	a1,s5
   16d72:	855e                	mv	a0,s7
   16d74:	8b6fd0ef          	jal	13e2a <__sprint_r>
   16d78:	a0cd                	j	16e5a <_vfiprintf_r+0x2f6>
   16d7a:	000d2b03          	lw	s6,0(s10)
   16d7e:	0d11                	addi	s10,s10,4
   16d80:	280b4c63          	bltz	s6,17018 <_vfiprintf_r+0x4b4>
   16d84:	0009c783          	lbu	a5,0(s3)
   16d88:	b5fd                	j	16c76 <_vfiprintf_r+0x112>
   16d8a:	0009c783          	lbu	a5,0(s3)
   16d8e:	02086813          	ori	a6,a6,32
   16d92:	b5d5                	j	16c76 <_vfiprintf_r+0x112>
   16d94:	01086813          	ori	a6,a6,16
   16d98:	02087793          	andi	a5,a6,32
   16d9c:	1a078363          	beqz	a5,16f42 <_vfiprintf_r+0x3de>
   16da0:	0d1d                	addi	s10,s10,7
   16da2:	ff8d7d13          	andi	s10,s10,-8
   16da6:	004d2703          	lw	a4,4(s10)
   16daa:	000d2783          	lw	a5,0(s10)
   16dae:	0d21                	addi	s10,s10,8
   16db0:	88ba                	mv	a7,a4
   16db2:	1a074863          	bltz	a4,16f62 <_vfiprintf_r+0x3fe>
   16db6:	1c0dc663          	bltz	s11,16f82 <_vfiprintf_r+0x41e>
   16dba:	0117e733          	or	a4,a5,a7
   16dbe:	f7f87813          	andi	a6,a6,-129
   16dc2:	1c071063          	bnez	a4,16f82 <_vfiprintf_r+0x41e>
   16dc6:	1e0d93e3          	bnez	s11,177ac <_vfiprintf_r+0xc48>
   16dca:	03b14783          	lbu	a5,59(sp)
   16dce:	4881                	li	a7,0
   16dd0:	4e01                	li	t3,0
   16dd2:	1984                	addi	s1,sp,240
   16dd4:	c391                	beqz	a5,16dd8 <_vfiprintf_r+0x274>
   16dd6:	0885                	addi	a7,a7,1
   16dd8:	00287293          	andi	t0,a6,2
   16ddc:	ee0286e3          	beqz	t0,16cc8 <_vfiprintf_r+0x164>
   16de0:	0889                	addi	a7,a7,2
   16de2:	4289                	li	t0,2
   16de4:	b5d5                	j	16cc8 <_vfiprintf_r+0x164>
   16de6:	85d6                	mv	a1,s5
   16de8:	855e                	mv	a0,s7
   16dea:	864fa0ef          	jal	10e4e <__swsetup_r>
   16dee:	1c0513e3          	bnez	a0,177b4 <_vfiprintf_r+0xc50>
   16df2:	00ca9783          	lh	a5,12(s5)
   16df6:	4729                	li	a4,10
   16df8:	8be9                	andi	a5,a5,26
   16dfa:	dce79de3          	bne	a5,a4,16bd4 <_vfiprintf_r+0x70>
   16dfe:	00ea9783          	lh	a5,14(s5)
   16e02:	dc07c9e3          	bltz	a5,16bd4 <_vfiprintf_r+0x70>
   16e06:	12c12083          	lw	ra,300(sp)
   16e0a:	10012d03          	lw	s10,256(sp)
   16e0e:	86da                	mv	a3,s6
   16e10:	864e                	mv	a2,s3
   16e12:	11012b03          	lw	s6,272(sp)
   16e16:	11c12983          	lw	s3,284(sp)
   16e1a:	85d6                	mv	a1,s5
   16e1c:	855e                	mv	a0,s7
   16e1e:	11412a83          	lw	s5,276(sp)
   16e22:	10c12b83          	lw	s7,268(sp)
   16e26:	6155                	addi	sp,sp,304
   16e28:	1b90006f          	j	177e0 <__sbprintf>
   16e2c:	41348b33          	sub	s6,s1,s3
   16e30:	e13495e3          	bne	s1,s3,16c3a <_vfiprintf_r+0xd6>
   16e34:	0004c783          	lbu	a5,0(s1)
   16e38:	b515                	j	16c5c <_vfiprintf_r+0xf8>
   16e3a:	0090                	addi	a2,sp,64
   16e3c:	85d6                	mv	a1,s5
   16e3e:	855e                	mv	a0,s7
   16e40:	febfc0ef          	jal	13e2a <__sprint_r>
   16e44:	e911                	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   16e46:	8462                	mv	s0,s8
   16e48:	b539                	j	16c56 <_vfiprintf_r+0xf2>
   16e4a:	0090                	addi	a2,sp,64
   16e4c:	85d6                	mv	a1,s5
   16e4e:	855e                	mv	a0,s7
   16e50:	fdbfc0ef          	jal	13e2a <__sprint_r>
   16e54:	f00503e3          	beqz	a0,16d5a <_vfiprintf_r+0x1f6>
   16e58:	8d4a                	mv	s10,s2
   16e5a:	00cad783          	lhu	a5,12(s5)
   16e5e:	12812403          	lw	s0,296(sp)
   16e62:	12412483          	lw	s1,292(sp)
   16e66:	0407f793          	andi	a5,a5,64
   16e6a:	12012903          	lw	s2,288(sp)
   16e6e:	11812a03          	lw	s4,280(sp)
   16e72:	10812c03          	lw	s8,264(sp)
   16e76:	10412c83          	lw	s9,260(sp)
   16e7a:	5dfe                	lw	s11,252(sp)
   16e7c:	12079ce3          	bnez	a5,177b4 <_vfiprintf_r+0xc50>
   16e80:	12c12083          	lw	ra,300(sp)
   16e84:	11c12983          	lw	s3,284(sp)
   16e88:	11412a83          	lw	s5,276(sp)
   16e8c:	11012b03          	lw	s6,272(sp)
   16e90:	10c12b83          	lw	s7,268(sp)
   16e94:	856a                	mv	a0,s10
   16e96:	10012d03          	lw	s10,256(sp)
   16e9a:	6155                	addi	sp,sp,304
   16e9c:	8082                	ret
   16e9e:	0090                	addi	a2,sp,64
   16ea0:	85d6                	mv	a1,s5
   16ea2:	855e                	mv	a0,s7
   16ea4:	d246                	sw	a7,36(sp)
   16ea6:	d072                	sw	t3,32(sp)
   16ea8:	c842                	sw	a6,16(sp)
   16eaa:	c67e                	sw	t6,12(sp)
   16eac:	c416                	sw	t0,8(sp)
   16eae:	f7dfc0ef          	jal	13e2a <__sprint_r>
   16eb2:	f15d                	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   16eb4:	4726                	lw	a4,72(sp)
   16eb6:	4796                	lw	a5,68(sp)
   16eb8:	5892                	lw	a7,36(sp)
   16eba:	5e02                	lw	t3,32(sp)
   16ebc:	4842                	lw	a6,16(sp)
   16ebe:	4fb2                	lw	t6,12(sp)
   16ec0:	42a2                	lw	t0,8(sp)
   16ec2:	8462                	mv	s0,s8
   16ec4:	bd25                	j	16cfc <_vfiprintf_r+0x198>
   16ec6:	636d                	lui	t1,0x1b
   16ec8:	4641                	li	a2,16
   16eca:	4796                	lw	a5,68(sp)
   16ecc:	a4830313          	addi	t1,t1,-1464 # 1aa48 <blanks.1>
   16ed0:	04965563          	bge	a2,s1,16f1a <_vfiprintf_r+0x3b6>
   16ed4:	86a2                	mv	a3,s0
   16ed6:	4dc1                	li	s11,16
   16ed8:	481d                	li	a6,7
   16eda:	c446                	sw	a7,8(sp)
   16edc:	841a                	mv	s0,t1
   16ede:	a021                	j	16ee6 <_vfiprintf_r+0x382>
   16ee0:	14c1                	addi	s1,s1,-16
   16ee2:	029dd963          	bge	s11,s1,16f14 <_vfiprintf_r+0x3b0>
   16ee6:	0741                	addi	a4,a4,16
   16ee8:	0785                	addi	a5,a5,1
   16eea:	c280                	sw	s0,0(a3)
   16eec:	01b6a223          	sw	s11,4(a3)
   16ef0:	c4ba                	sw	a4,72(sp)
   16ef2:	c2be                	sw	a5,68(sp)
   16ef4:	06a1                	addi	a3,a3,8
   16ef6:	fef855e3          	bge	a6,a5,16ee0 <_vfiprintf_r+0x37c>
   16efa:	0090                	addi	a2,sp,64
   16efc:	85d6                	mv	a1,s5
   16efe:	855e                	mv	a0,s7
   16f00:	f2bfc0ef          	jal	13e2a <__sprint_r>
   16f04:	f931                	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   16f06:	14c1                	addi	s1,s1,-16
   16f08:	4726                	lw	a4,72(sp)
   16f0a:	4796                	lw	a5,68(sp)
   16f0c:	86e2                	mv	a3,s8
   16f0e:	481d                	li	a6,7
   16f10:	fc9dcbe3          	blt	s11,s1,16ee6 <_vfiprintf_r+0x382>
   16f14:	48a2                	lw	a7,8(sp)
   16f16:	8322                	mv	t1,s0
   16f18:	8436                	mv	s0,a3
   16f1a:	9726                	add	a4,a4,s1
   16f1c:	0785                	addi	a5,a5,1
   16f1e:	00642023          	sw	t1,0(s0)
   16f22:	c044                	sw	s1,4(s0)
   16f24:	c4ba                	sw	a4,72(sp)
   16f26:	c2be                	sw	a5,68(sp)
   16f28:	461d                	li	a2,7
   16f2a:	e2f652e3          	bge	a2,a5,16d4e <_vfiprintf_r+0x1ea>
   16f2e:	0090                	addi	a2,sp,64
   16f30:	85d6                	mv	a1,s5
   16f32:	855e                	mv	a0,s7
   16f34:	c446                	sw	a7,8(sp)
   16f36:	ef5fc0ef          	jal	13e2a <__sprint_r>
   16f3a:	fd19                	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   16f3c:	4726                	lw	a4,72(sp)
   16f3e:	48a2                	lw	a7,8(sp)
   16f40:	b539                	j	16d4e <_vfiprintf_r+0x1ea>
   16f42:	01087713          	andi	a4,a6,16
   16f46:	000d2783          	lw	a5,0(s10)
   16f4a:	0d11                	addi	s10,s10,4
   16f4c:	e371                	bnez	a4,17010 <_vfiprintf_r+0x4ac>
   16f4e:	04087713          	andi	a4,a6,64
   16f52:	cb5d                	beqz	a4,17008 <_vfiprintf_r+0x4a4>
   16f54:	07c2                	slli	a5,a5,0x10
   16f56:	87c1                	srai	a5,a5,0x10
   16f58:	41f7d893          	srai	a7,a5,0x1f
   16f5c:	8746                	mv	a4,a7
   16f5e:	e4075ce3          	bgez	a4,16db6 <_vfiprintf_r+0x252>
   16f62:	02d00613          	li	a2,45
   16f66:	00f03733          	snez	a4,a5
   16f6a:	411008b3          	neg	a7,a7
   16f6e:	02c10da3          	sb	a2,59(sp)
   16f72:	40e888b3          	sub	a7,a7,a4
   16f76:	40f007b3          	neg	a5,a5
   16f7a:	000dc463          	bltz	s11,16f82 <_vfiprintf_r+0x41e>
   16f7e:	f7f87813          	andi	a6,a6,-129
   16f82:	62089c63          	bnez	a7,175ba <_vfiprintf_r+0xa56>
   16f86:	4725                	li	a4,9
   16f88:	62f76963          	bltu	a4,a5,175ba <_vfiprintf_r+0xa56>
   16f8c:	03078793          	addi	a5,a5,48
   16f90:	0ff7f793          	zext.b	a5,a5
   16f94:	0ef107a3          	sb	a5,239(sp)
   16f98:	88ee                	mv	a7,s11
   16f9a:	01b04363          	bgtz	s11,16fa0 <_vfiprintf_r+0x43c>
   16f9e:	4885                	li	a7,1
   16fa0:	4e05                	li	t3,1
   16fa2:	0ef10493          	addi	s1,sp,239
   16fa6:	03b14783          	lbu	a5,59(sp)
   16faa:	e20796e3          	bnez	a5,16dd6 <_vfiprintf_r+0x272>
   16fae:	b52d                	j	16dd8 <_vfiprintf_r+0x274>
   16fb0:	000d2483          	lw	s1,0(s10)
   16fb4:	02010da3          	sb	zero,59(sp)
   16fb8:	0d11                	addi	s10,s10,4
   16fba:	70048463          	beqz	s1,176c2 <_vfiprintf_r+0xb5e>
   16fbe:	c442                	sw	a6,8(sp)
   16fc0:	5e0dc163          	bltz	s11,175a2 <_vfiprintf_r+0xa3e>
   16fc4:	866e                	mv	a2,s11
   16fc6:	4581                	li	a1,0
   16fc8:	8526                	mv	a0,s1
   16fca:	f5df90ef          	jal	10f26 <memchr>
   16fce:	4822                	lw	a6,8(sp)
   16fd0:	8e6e                	mv	t3,s11
   16fd2:	c119                	beqz	a0,16fd8 <_vfiprintf_r+0x474>
   16fd4:	40950e33          	sub	t3,a0,s1
   16fd8:	03b14783          	lbu	a5,59(sp)
   16fdc:	fffe4893          	not	a7,t3
   16fe0:	41f8d893          	srai	a7,a7,0x1f
   16fe4:	011e78b3          	and	a7,t3,a7
   16fe8:	4d81                	li	s11,0
   16fea:	4281                	li	t0,0
   16fec:	de0795e3          	bnez	a5,16dd6 <_vfiprintf_r+0x272>
   16ff0:	b9e1                	j	16cc8 <_vfiprintf_r+0x164>
   16ff2:	000d2783          	lw	a5,0(s10)
   16ff6:	02010da3          	sb	zero,59(sp)
   16ffa:	0d11                	addi	s10,s10,4
   16ffc:	08f10623          	sb	a5,140(sp)
   17000:	4885                	li	a7,1
   17002:	4e05                	li	t3,1
   17004:	0164                	addi	s1,sp,140
   17006:	b97d                	j	16cc4 <_vfiprintf_r+0x160>
   17008:	20087713          	andi	a4,a6,512
   1700c:	76071e63          	bnez	a4,17788 <_vfiprintf_r+0xc24>
   17010:	41f7d893          	srai	a7,a5,0x1f
   17014:	8746                	mv	a4,a7
   17016:	bb71                	j	16db2 <_vfiprintf_r+0x24e>
   17018:	41600b33          	neg	s6,s6
   1701c:	0009c783          	lbu	a5,0(s3)
   17020:	00486813          	ori	a6,a6,4
   17024:	b989                	j	16c76 <_vfiprintf_r+0x112>
   17026:	02b00713          	li	a4,43
   1702a:	0009c783          	lbu	a5,0(s3)
   1702e:	02e10da3          	sb	a4,59(sp)
   17032:	b191                	j	16c76 <_vfiprintf_r+0x112>
   17034:	0009c783          	lbu	a5,0(s3)
   17038:	08086813          	ori	a6,a6,128
   1703c:	b92d                	j	16c76 <_vfiprintf_r+0x112>
   1703e:	0009c603          	lbu	a2,0(s3)
   17042:	02a00793          	li	a5,42
   17046:	00198693          	addi	a3,s3,1
   1704a:	76f60863          	beq	a2,a5,177ba <_vfiprintf_r+0xc56>
   1704e:	fd060793          	addi	a5,a2,-48
   17052:	4725                	li	a4,9
   17054:	4d81                	li	s11,0
   17056:	45a5                	li	a1,9
   17058:	02f76063          	bltu	a4,a5,17078 <_vfiprintf_r+0x514>
   1705c:	0006c603          	lbu	a2,0(a3)
   17060:	002d9713          	slli	a4,s11,0x2
   17064:	9dba                	add	s11,s11,a4
   17066:	0d86                	slli	s11,s11,0x1
   17068:	9dbe                	add	s11,s11,a5
   1706a:	fd060793          	addi	a5,a2,-48
   1706e:	0685                	addi	a3,a3,1
   17070:	fef5f6e3          	bgeu	a1,a5,1705c <_vfiprintf_r+0x4f8>
   17074:	4a0dcb63          	bltz	s11,1752a <_vfiprintf_r+0x9c6>
   17078:	89b6                	mv	s3,a3
   1707a:	b101                	j	16c7a <_vfiprintf_r+0x116>
   1707c:	855e                	mv	a0,s7
   1707e:	c442                	sw	a6,8(sp)
   17080:	c60fd0ef          	jal	144e0 <_localeconv_r>
   17084:	415c                	lw	a5,4(a0)
   17086:	853e                	mv	a0,a5
   17088:	ce3e                	sw	a5,28(sp)
   1708a:	bb4fa0ef          	jal	1143e <strlen>
   1708e:	87aa                	mv	a5,a0
   17090:	855e                	mv	a0,s7
   17092:	cc3e                	sw	a5,24(sp)
   17094:	c4cfd0ef          	jal	144e0 <_localeconv_r>
   17098:	4518                	lw	a4,8(a0)
   1709a:	47e2                	lw	a5,24(sp)
   1709c:	4822                	lw	a6,8(sp)
   1709e:	ca3a                	sw	a4,20(sp)
   170a0:	ce0782e3          	beqz	a5,16d84 <_vfiprintf_r+0x220>
   170a4:	4752                	lw	a4,20(sp)
   170a6:	0009c783          	lbu	a5,0(s3)
   170aa:	bc0706e3          	beqz	a4,16c76 <_vfiprintf_r+0x112>
   170ae:	00074703          	lbu	a4,0(a4)
   170b2:	bc0702e3          	beqz	a4,16c76 <_vfiprintf_r+0x112>
   170b6:	40086813          	ori	a6,a6,1024
   170ba:	be75                	j	16c76 <_vfiprintf_r+0x112>
   170bc:	0009c783          	lbu	a5,0(s3)
   170c0:	00186813          	ori	a6,a6,1
   170c4:	be4d                	j	16c76 <_vfiprintf_r+0x112>
   170c6:	03b14703          	lbu	a4,59(sp)
   170ca:	0009c783          	lbu	a5,0(s3)
   170ce:	ba0714e3          	bnez	a4,16c76 <_vfiprintf_r+0x112>
   170d2:	02000713          	li	a4,32
   170d6:	02e10da3          	sb	a4,59(sp)
   170da:	be71                	j	16c76 <_vfiprintf_r+0x112>
   170dc:	01086713          	ori	a4,a6,16
   170e0:	02077793          	andi	a5,a4,32
   170e4:	40078063          	beqz	a5,174e4 <_vfiprintf_r+0x980>
   170e8:	0d1d                	addi	s10,s10,7
   170ea:	ff8d7d13          	andi	s10,s10,-8
   170ee:	000d2783          	lw	a5,0(s10)
   170f2:	004d2583          	lw	a1,4(s10)
   170f6:	0d21                	addi	s10,s10,8
   170f8:	02010da3          	sb	zero,59(sp)
   170fc:	bff77813          	andi	a6,a4,-1025
   17100:	0a0dc163          	bltz	s11,171a2 <_vfiprintf_r+0x63e>
   17104:	00b7e633          	or	a2,a5,a1
   17108:	b7f77713          	andi	a4,a4,-1153
   1710c:	56061d63          	bnez	a2,17686 <_vfiprintf_r+0xb22>
   17110:	8e42                	mv	t3,a6
   17112:	4781                	li	a5,0
   17114:	883a                	mv	a6,a4
   17116:	060d9e63          	bnez	s11,17192 <_vfiprintf_r+0x62e>
   1711a:	ca0798e3          	bnez	a5,16dca <_vfiprintf_r+0x266>
   1711e:	001e7e13          	andi	t3,t3,1
   17122:	3e0e0463          	beqz	t3,1750a <_vfiprintf_r+0x9a6>
   17126:	03000793          	li	a5,48
   1712a:	0ef107a3          	sb	a5,239(sp)
   1712e:	88f2                	mv	a7,t3
   17130:	0ef10493          	addi	s1,sp,239
   17134:	bd8d                	j	16fa6 <_vfiprintf_r+0x442>
   17136:	0009c783          	lbu	a5,0(s3)
   1713a:	06c00713          	li	a4,108
   1713e:	56e78463          	beq	a5,a4,176a6 <_vfiprintf_r+0xb42>
   17142:	01086813          	ori	a6,a6,16
   17146:	be05                	j	16c76 <_vfiprintf_r+0x112>
   17148:	0009c783          	lbu	a5,0(s3)
   1714c:	06800713          	li	a4,104
   17150:	54e78463          	beq	a5,a4,17698 <_vfiprintf_r+0xb34>
   17154:	04086813          	ori	a6,a6,64
   17158:	be39                	j	16c76 <_vfiprintf_r+0x112>
   1715a:	01086e13          	ori	t3,a6,16
   1715e:	020e7793          	andi	a5,t3,32
   17162:	36078363          	beqz	a5,174c8 <_vfiprintf_r+0x964>
   17166:	0d1d                	addi	s10,s10,7
   17168:	ff8d7d13          	andi	s10,s10,-8
   1716c:	000d2783          	lw	a5,0(s10)
   17170:	004d2883          	lw	a7,4(s10)
   17174:	0d21                	addi	s10,s10,8
   17176:	02010da3          	sb	zero,59(sp)
   1717a:	8872                	mv	a6,t3
   1717c:	e00dc3e3          	bltz	s11,16f82 <_vfiprintf_r+0x41e>
   17180:	0117e733          	or	a4,a5,a7
   17184:	f7fe7813          	andi	a6,t3,-129
   17188:	de071de3          	bnez	a4,16f82 <_vfiprintf_r+0x41e>
   1718c:	4785                	li	a5,1
   1718e:	f80d86e3          	beqz	s11,1711a <_vfiprintf_r+0x5b6>
   17192:	4705                	li	a4,1
   17194:	60e78c63          	beq	a5,a4,177ac <_vfiprintf_r+0xc48>
   17198:	4709                	li	a4,2
   1719a:	54e78663          	beq	a5,a4,176e6 <_vfiprintf_r+0xb82>
   1719e:	4781                	li	a5,0
   171a0:	4581                	li	a1,0
   171a2:	1984                	addi	s1,sp,240
   171a4:	01d59693          	slli	a3,a1,0x1d
   171a8:	0077f713          	andi	a4,a5,7
   171ac:	838d                	srli	a5,a5,0x3
   171ae:	03070713          	addi	a4,a4,48
   171b2:	8fd5                	or	a5,a5,a3
   171b4:	818d                	srli	a1,a1,0x3
   171b6:	fee48fa3          	sb	a4,-1(s1)
   171ba:	00b7e6b3          	or	a3,a5,a1
   171be:	8526                	mv	a0,s1
   171c0:	14fd                	addi	s1,s1,-1
   171c2:	f2ed                	bnez	a3,171a4 <_vfiprintf_r+0x640>
   171c4:	00187793          	andi	a5,a6,1
   171c8:	20078b63          	beqz	a5,173de <_vfiprintf_r+0x87a>
   171cc:	03000793          	li	a5,48
   171d0:	20f70763          	beq	a4,a5,173de <_vfiprintf_r+0x87a>
   171d4:	1579                	addi	a0,a0,-2
   171d6:	fef48fa3          	sb	a5,-1(s1)
   171da:	199c                	addi	a5,sp,240
   171dc:	40a78e33          	sub	t3,a5,a0
   171e0:	88ee                	mv	a7,s11
   171e2:	35cdc163          	blt	s11,t3,17524 <_vfiprintf_r+0x9c0>
   171e6:	84aa                	mv	s1,a0
   171e8:	bb7d                	j	16fa6 <_vfiprintf_r+0x442>
   171ea:	6721                	lui	a4,0x8
   171ec:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   171f0:	02e11e23          	sh	a4,60(sp)
   171f4:	6769                	lui	a4,0x1a
   171f6:	31470713          	addi	a4,a4,788 # 1a314 <__clzsi2+0x94>
   171fa:	000d2783          	lw	a5,0(s10)
   171fe:	4581                	li	a1,0
   17200:	00286813          	ori	a6,a6,2
   17204:	0d11                	addi	s10,s10,4
   17206:	c23a                	sw	a4,4(sp)
   17208:	02010da3          	sb	zero,59(sp)
   1720c:	1a0dc763          	bltz	s11,173ba <_vfiprintf_r+0x856>
   17210:	00b7e733          	or	a4,a5,a1
   17214:	f7f87613          	andi	a2,a6,-129
   17218:	18071d63          	bnez	a4,173b2 <_vfiprintf_r+0x84e>
   1721c:	8e42                	mv	t3,a6
   1721e:	4789                	li	a5,2
   17220:	8832                	mv	a6,a2
   17222:	bdd5                	j	17116 <_vfiprintf_r+0x5b2>
   17224:	02087793          	andi	a5,a6,32
   17228:	2e079463          	bnez	a5,17510 <_vfiprintf_r+0x9ac>
   1722c:	01087793          	andi	a5,a6,16
   17230:	48079263          	bnez	a5,176b4 <_vfiprintf_r+0xb50>
   17234:	04087793          	andi	a5,a6,64
   17238:	54079f63          	bnez	a5,17796 <_vfiprintf_r+0xc32>
   1723c:	20087813          	andi	a6,a6,512
   17240:	46080a63          	beqz	a6,176b4 <_vfiprintf_r+0xb50>
   17244:	000d2783          	lw	a5,0(s10)
   17248:	0d11                	addi	s10,s10,4
   1724a:	01278023          	sb	s2,0(a5)
   1724e:	b2e9                	j	16c18 <_vfiprintf_r+0xb4>
   17250:	411b0333          	sub	t1,s6,a7
   17254:	ac6056e3          	blez	t1,16d20 <_vfiprintf_r+0x1bc>
   17258:	6f6d                	lui	t5,0x1b
   1725a:	4641                	li	a2,16
   1725c:	a38f0f13          	addi	t5,t5,-1480 # 1aa38 <zeroes.0>
   17260:	04665f63          	bge	a2,t1,172be <_vfiprintf_r+0x75a>
   17264:	c426                	sw	s1,8(sp)
   17266:	86a2                	mv	a3,s0
   17268:	4ec1                	li	t4,16
   1726a:	4f9d                	li	t6,7
   1726c:	c642                	sw	a6,12(sp)
   1726e:	c872                	sw	t3,16(sp)
   17270:	841a                	mv	s0,t1
   17272:	d046                	sw	a7,32(sp)
   17274:	84fa                	mv	s1,t5
   17276:	a021                	j	1727e <_vfiprintf_r+0x71a>
   17278:	1441                	addi	s0,s0,-16
   1727a:	028edb63          	bge	t4,s0,172b0 <_vfiprintf_r+0x74c>
   1727e:	0741                	addi	a4,a4,16
   17280:	0785                	addi	a5,a5,1
   17282:	c284                	sw	s1,0(a3)
   17284:	01d6a223          	sw	t4,4(a3)
   17288:	c4ba                	sw	a4,72(sp)
   1728a:	c2be                	sw	a5,68(sp)
   1728c:	06a1                	addi	a3,a3,8
   1728e:	feffd5e3          	bge	t6,a5,17278 <_vfiprintf_r+0x714>
   17292:	0090                	addi	a2,sp,64
   17294:	85d6                	mv	a1,s5
   17296:	855e                	mv	a0,s7
   17298:	b93fc0ef          	jal	13e2a <__sprint_r>
   1729c:	ba051ee3          	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   172a0:	4ec1                	li	t4,16
   172a2:	1441                	addi	s0,s0,-16
   172a4:	4726                	lw	a4,72(sp)
   172a6:	4796                	lw	a5,68(sp)
   172a8:	86e2                	mv	a3,s8
   172aa:	4f9d                	li	t6,7
   172ac:	fc8ec9e3          	blt	t4,s0,1727e <_vfiprintf_r+0x71a>
   172b0:	8f26                	mv	t5,s1
   172b2:	4832                	lw	a6,12(sp)
   172b4:	4e42                	lw	t3,16(sp)
   172b6:	5882                	lw	a7,32(sp)
   172b8:	44a2                	lw	s1,8(sp)
   172ba:	8322                	mv	t1,s0
   172bc:	8436                	mv	s0,a3
   172be:	971a                	add	a4,a4,t1
   172c0:	0785                	addi	a5,a5,1
   172c2:	01e42023          	sw	t5,0(s0)
   172c6:	00642223          	sw	t1,4(s0)
   172ca:	c4ba                	sw	a4,72(sp)
   172cc:	c2be                	sw	a5,68(sp)
   172ce:	461d                	li	a2,7
   172d0:	0421                	addi	s0,s0,8
   172d2:	a4f657e3          	bge	a2,a5,16d20 <_vfiprintf_r+0x1bc>
   172d6:	0090                	addi	a2,sp,64
   172d8:	85d6                	mv	a1,s5
   172da:	855e                	mv	a0,s7
   172dc:	c846                	sw	a7,16(sp)
   172de:	c672                	sw	t3,12(sp)
   172e0:	c442                	sw	a6,8(sp)
   172e2:	b49fc0ef          	jal	13e2a <__sprint_r>
   172e6:	b60519e3          	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   172ea:	4e32                	lw	t3,12(sp)
   172ec:	4726                	lw	a4,72(sp)
   172ee:	4796                	lw	a5,68(sp)
   172f0:	41cd8db3          	sub	s11,s11,t3
   172f4:	48c2                	lw	a7,16(sp)
   172f6:	4822                	lw	a6,8(sp)
   172f8:	8462                	mv	s0,s8
   172fa:	a3b057e3          	blez	s11,16d28 <_vfiprintf_r+0x1c4>
   172fe:	6f6d                	lui	t5,0x1b
   17300:	a38f0f13          	addi	t5,t5,-1480 # 1aa38 <zeroes.0>
   17304:	05ba5c63          	bge	s4,s11,1735c <_vfiprintf_r+0x7f8>
   17308:	86a2                	mv	a3,s0
   1730a:	431d                	li	t1,7
   1730c:	846e                	mv	s0,s11
   1730e:	c442                	sw	a6,8(sp)
   17310:	c672                	sw	t3,12(sp)
   17312:	c846                	sw	a7,16(sp)
   17314:	8de6                	mv	s11,s9
   17316:	a021                	j	1731e <_vfiprintf_r+0x7ba>
   17318:	1441                	addi	s0,s0,-16
   1731a:	028a5b63          	bge	s4,s0,17350 <_vfiprintf_r+0x7ec>
   1731e:	0741                	addi	a4,a4,16
   17320:	0785                	addi	a5,a5,1
   17322:	0196a023          	sw	s9,0(a3)
   17326:	0146a223          	sw	s4,4(a3)
   1732a:	c4ba                	sw	a4,72(sp)
   1732c:	c2be                	sw	a5,68(sp)
   1732e:	06a1                	addi	a3,a3,8
   17330:	fef354e3          	bge	t1,a5,17318 <_vfiprintf_r+0x7b4>
   17334:	0090                	addi	a2,sp,64
   17336:	85d6                	mv	a1,s5
   17338:	855e                	mv	a0,s7
   1733a:	af1fc0ef          	jal	13e2a <__sprint_r>
   1733e:	b0051de3          	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   17342:	1441                	addi	s0,s0,-16
   17344:	4726                	lw	a4,72(sp)
   17346:	4796                	lw	a5,68(sp)
   17348:	86e2                	mv	a3,s8
   1734a:	431d                	li	t1,7
   1734c:	fc8a49e3          	blt	s4,s0,1731e <_vfiprintf_r+0x7ba>
   17350:	4822                	lw	a6,8(sp)
   17352:	4e32                	lw	t3,12(sp)
   17354:	48c2                	lw	a7,16(sp)
   17356:	8f6e                	mv	t5,s11
   17358:	8da2                	mv	s11,s0
   1735a:	8436                	mv	s0,a3
   1735c:	976e                	add	a4,a4,s11
   1735e:	0785                	addi	a5,a5,1
   17360:	01e42023          	sw	t5,0(s0)
   17364:	01b42223          	sw	s11,4(s0)
   17368:	c4ba                	sw	a4,72(sp)
   1736a:	c2be                	sw	a5,68(sp)
   1736c:	461d                	li	a2,7
   1736e:	0421                	addi	s0,s0,8
   17370:	9af65ce3          	bge	a2,a5,16d28 <_vfiprintf_r+0x1c4>
   17374:	0090                	addi	a2,sp,64
   17376:	85d6                	mv	a1,s5
   17378:	855e                	mv	a0,s7
   1737a:	c846                	sw	a7,16(sp)
   1737c:	c672                	sw	t3,12(sp)
   1737e:	c442                	sw	a6,8(sp)
   17380:	aabfc0ef          	jal	13e2a <__sprint_r>
   17384:	ac051ae3          	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   17388:	4726                	lw	a4,72(sp)
   1738a:	4796                	lw	a5,68(sp)
   1738c:	48c2                	lw	a7,16(sp)
   1738e:	4e32                	lw	t3,12(sp)
   17390:	4822                	lw	a6,8(sp)
   17392:	8462                	mv	s0,s8
   17394:	ba51                	j	16d28 <_vfiprintf_r+0x1c4>
   17396:	0090                	addi	a2,sp,64
   17398:	85d6                	mv	a1,s5
   1739a:	855e                	mv	a0,s7
   1739c:	c646                	sw	a7,12(sp)
   1739e:	c442                	sw	a6,8(sp)
   173a0:	a8bfc0ef          	jal	13e2a <__sprint_r>
   173a4:	aa051ae3          	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   173a8:	4726                	lw	a4,72(sp)
   173aa:	48b2                	lw	a7,12(sp)
   173ac:	4822                	lw	a6,8(sp)
   173ae:	8462                	mv	s0,s8
   173b0:	b279                	j	16d3e <_vfiprintf_r+0x1da>
   173b2:	4709                	li	a4,2
   173b4:	8832                	mv	a6,a2
   173b6:	de0706e3          	beqz	a4,171a2 <_vfiprintf_r+0x63e>
   173ba:	4612                	lw	a2,4(sp)
   173bc:	1984                	addi	s1,sp,240
   173be:	00f7f713          	andi	a4,a5,15
   173c2:	9732                	add	a4,a4,a2
   173c4:	00074683          	lbu	a3,0(a4)
   173c8:	8391                	srli	a5,a5,0x4
   173ca:	01c59713          	slli	a4,a1,0x1c
   173ce:	8fd9                	or	a5,a5,a4
   173d0:	8191                	srli	a1,a1,0x4
   173d2:	fed48fa3          	sb	a3,-1(s1)
   173d6:	00b7e733          	or	a4,a5,a1
   173da:	14fd                	addi	s1,s1,-1
   173dc:	f36d                	bnez	a4,173be <_vfiprintf_r+0x85a>
   173de:	199c                	addi	a5,sp,240
   173e0:	40978e33          	sub	t3,a5,s1
   173e4:	88ee                	mv	a7,s11
   173e6:	bdcdd0e3          	bge	s11,t3,16fa6 <_vfiprintf_r+0x442>
   173ea:	88f2                	mv	a7,t3
   173ec:	be6d                	j	16fa6 <_vfiprintf_r+0x442>
   173ee:	636d                	lui	t1,0x1b
   173f0:	4641                	li	a2,16
   173f2:	a4830313          	addi	t1,t1,-1464 # 1aa48 <blanks.1>
   173f6:	07d65363          	bge	a2,t4,1745c <_vfiprintf_r+0x8f8>
   173fa:	c826                	sw	s1,16(sp)
   173fc:	86a2                	mv	a3,s0
   173fe:	4f41                	li	t5,16
   17400:	439d                	li	t2,7
   17402:	c416                	sw	t0,8(sp)
   17404:	c67e                	sw	t6,12(sp)
   17406:	d042                	sw	a6,32(sp)
   17408:	d272                	sw	t3,36(sp)
   1740a:	8476                	mv	s0,t4
   1740c:	d446                	sw	a7,40(sp)
   1740e:	849a                	mv	s1,t1
   17410:	a021                	j	17418 <_vfiprintf_r+0x8b4>
   17412:	1441                	addi	s0,s0,-16
   17414:	028f5b63          	bge	t5,s0,1744a <_vfiprintf_r+0x8e6>
   17418:	0741                	addi	a4,a4,16
   1741a:	0785                	addi	a5,a5,1
   1741c:	c284                	sw	s1,0(a3)
   1741e:	01e6a223          	sw	t5,4(a3)
   17422:	c4ba                	sw	a4,72(sp)
   17424:	c2be                	sw	a5,68(sp)
   17426:	06a1                	addi	a3,a3,8
   17428:	fef3d5e3          	bge	t2,a5,17412 <_vfiprintf_r+0x8ae>
   1742c:	0090                	addi	a2,sp,64
   1742e:	85d6                	mv	a1,s5
   17430:	855e                	mv	a0,s7
   17432:	9f9fc0ef          	jal	13e2a <__sprint_r>
   17436:	a20511e3          	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   1743a:	4f41                	li	t5,16
   1743c:	1441                	addi	s0,s0,-16
   1743e:	4726                	lw	a4,72(sp)
   17440:	4796                	lw	a5,68(sp)
   17442:	86e2                	mv	a3,s8
   17444:	439d                	li	t2,7
   17446:	fc8f49e3          	blt	t5,s0,17418 <_vfiprintf_r+0x8b4>
   1744a:	8326                	mv	t1,s1
   1744c:	42a2                	lw	t0,8(sp)
   1744e:	4fb2                	lw	t6,12(sp)
   17450:	5802                	lw	a6,32(sp)
   17452:	5e12                	lw	t3,36(sp)
   17454:	58a2                	lw	a7,40(sp)
   17456:	44c2                	lw	s1,16(sp)
   17458:	8ea2                	mv	t4,s0
   1745a:	8436                	mv	s0,a3
   1745c:	9776                	add	a4,a4,t4
   1745e:	0785                	addi	a5,a5,1
   17460:	00642023          	sw	t1,0(s0)
   17464:	01d42223          	sw	t4,4(s0)
   17468:	c4ba                	sw	a4,72(sp)
   1746a:	c2be                	sw	a5,68(sp)
   1746c:	461d                	li	a2,7
   1746e:	0421                	addi	s0,s0,8
   17470:	86f656e3          	bge	a2,a5,16cdc <_vfiprintf_r+0x178>
   17474:	0090                	addi	a2,sp,64
   17476:	85d6                	mv	a1,s5
   17478:	855e                	mv	a0,s7
   1747a:	d246                	sw	a7,36(sp)
   1747c:	d072                	sw	t3,32(sp)
   1747e:	c842                	sw	a6,16(sp)
   17480:	c67e                	sw	t6,12(sp)
   17482:	c416                	sw	t0,8(sp)
   17484:	9a7fc0ef          	jal	13e2a <__sprint_r>
   17488:	9c0518e3          	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   1748c:	4726                	lw	a4,72(sp)
   1748e:	4796                	lw	a5,68(sp)
   17490:	5892                	lw	a7,36(sp)
   17492:	5e02                	lw	t3,32(sp)
   17494:	4842                	lw	a6,16(sp)
   17496:	4fb2                	lw	t6,12(sp)
   17498:	42a2                	lw	t0,8(sp)
   1749a:	8462                	mv	s0,s8
   1749c:	841ff06f          	j	16cdc <_vfiprintf_r+0x178>
   174a0:	0090                	addi	a2,sp,64
   174a2:	85d6                	mv	a1,s5
   174a4:	855e                	mv	a0,s7
   174a6:	d046                	sw	a7,32(sp)
   174a8:	c872                	sw	t3,16(sp)
   174aa:	c642                	sw	a6,12(sp)
   174ac:	c47e                	sw	t6,8(sp)
   174ae:	97dfc0ef          	jal	13e2a <__sprint_r>
   174b2:	9a0513e3          	bnez	a0,16e58 <_vfiprintf_r+0x2f4>
   174b6:	4726                	lw	a4,72(sp)
   174b8:	4796                	lw	a5,68(sp)
   174ba:	5882                	lw	a7,32(sp)
   174bc:	4e42                	lw	t3,16(sp)
   174be:	4832                	lw	a6,12(sp)
   174c0:	4fa2                	lw	t6,8(sp)
   174c2:	8462                	mv	s0,s8
   174c4:	855ff06f          	j	16d18 <_vfiprintf_r+0x1b4>
   174c8:	010e7713          	andi	a4,t3,16
   174cc:	000d2783          	lw	a5,0(s10)
   174d0:	0d11                	addi	s10,s10,4
   174d2:	e719                	bnez	a4,174e0 <_vfiprintf_r+0x97c>
   174d4:	040e7713          	andi	a4,t3,64
   174d8:	1e070f63          	beqz	a4,176d6 <_vfiprintf_r+0xb72>
   174dc:	07c2                	slli	a5,a5,0x10
   174de:	83c1                	srli	a5,a5,0x10
   174e0:	4881                	li	a7,0
   174e2:	b951                	j	17176 <_vfiprintf_r+0x612>
   174e4:	01077613          	andi	a2,a4,16
   174e8:	000d2783          	lw	a5,0(s10)
   174ec:	0d11                	addi	s10,s10,4
   174ee:	ee01                	bnez	a2,17506 <_vfiprintf_r+0x9a2>
   174f0:	04077613          	andi	a2,a4,64
   174f4:	c609                	beqz	a2,174fe <_vfiprintf_r+0x99a>
   174f6:	07c2                	slli	a5,a5,0x10
   174f8:	83c1                	srli	a5,a5,0x10
   174fa:	4581                	li	a1,0
   174fc:	bef5                	j	170f8 <_vfiprintf_r+0x594>
   174fe:	20077613          	andi	a2,a4,512
   17502:	2a061163          	bnez	a2,177a4 <_vfiprintf_r+0xc40>
   17506:	4581                	li	a1,0
   17508:	bec5                	j	170f8 <_vfiprintf_r+0x594>
   1750a:	4881                	li	a7,0
   1750c:	1984                	addi	s1,sp,240
   1750e:	bc61                	j	16fa6 <_vfiprintf_r+0x442>
   17510:	000d2783          	lw	a5,0(s10)
   17514:	41f95713          	srai	a4,s2,0x1f
   17518:	0d11                	addi	s10,s10,4
   1751a:	0127a023          	sw	s2,0(a5)
   1751e:	c3d8                	sw	a4,4(a5)
   17520:	ef8ff06f          	j	16c18 <_vfiprintf_r+0xb4>
   17524:	88f2                	mv	a7,t3
   17526:	84aa                	mv	s1,a0
   17528:	bcbd                	j	16fa6 <_vfiprintf_r+0x442>
   1752a:	5dfd                	li	s11,-1
   1752c:	89b6                	mv	s3,a3
   1752e:	f4cff06f          	j	16c7a <_vfiprintf_r+0x116>
   17532:	8e42                	mv	t3,a6
   17534:	b12d                	j	1715e <_vfiprintf_r+0x5fa>
   17536:	8742                	mv	a4,a6
   17538:	b665                	j	170e0 <_vfiprintf_r+0x57c>
   1753a:	67e9                	lui	a5,0x1a
   1753c:	32878793          	addi	a5,a5,808 # 1a328 <__clzsi2+0xa8>
   17540:	c23e                	sw	a5,4(sp)
   17542:	02087793          	andi	a5,a6,32
   17546:	c3a9                	beqz	a5,17588 <_vfiprintf_r+0xa24>
   17548:	0d1d                	addi	s10,s10,7
   1754a:	ff8d7d13          	andi	s10,s10,-8
   1754e:	000d2783          	lw	a5,0(s10)
   17552:	004d2583          	lw	a1,4(s10)
   17556:	0d21                	addi	s10,s10,8
   17558:	00187713          	andi	a4,a6,1
   1755c:	cf01                	beqz	a4,17574 <_vfiprintf_r+0xa10>
   1755e:	00b7e733          	or	a4,a5,a1
   17562:	cb09                	beqz	a4,17574 <_vfiprintf_r+0xa10>
   17564:	03000713          	li	a4,48
   17568:	02e10e23          	sb	a4,60(sp)
   1756c:	02c10ea3          	sb	a2,61(sp)
   17570:	00286813          	ori	a6,a6,2
   17574:	bff87813          	andi	a6,a6,-1025
   17578:	b941                	j	17208 <_vfiprintf_r+0x6a4>
   1757a:	67e9                	lui	a5,0x1a
   1757c:	31478793          	addi	a5,a5,788 # 1a314 <__clzsi2+0x94>
   17580:	c23e                	sw	a5,4(sp)
   17582:	02087793          	andi	a5,a6,32
   17586:	f3e9                	bnez	a5,17548 <_vfiprintf_r+0x9e4>
   17588:	01087713          	andi	a4,a6,16
   1758c:	000d2783          	lw	a5,0(s10)
   17590:	0d11                	addi	s10,s10,4
   17592:	e315                	bnez	a4,175b6 <_vfiprintf_r+0xa52>
   17594:	04087713          	andi	a4,a6,64
   17598:	cb19                	beqz	a4,175ae <_vfiprintf_r+0xa4a>
   1759a:	07c2                	slli	a5,a5,0x10
   1759c:	83c1                	srli	a5,a5,0x10
   1759e:	4581                	li	a1,0
   175a0:	bf65                	j	17558 <_vfiprintf_r+0x9f4>
   175a2:	8526                	mv	a0,s1
   175a4:	e9bf90ef          	jal	1143e <strlen>
   175a8:	4822                	lw	a6,8(sp)
   175aa:	8e2a                	mv	t3,a0
   175ac:	b435                	j	16fd8 <_vfiprintf_r+0x474>
   175ae:	20087713          	andi	a4,a6,512
   175b2:	1c071763          	bnez	a4,17780 <_vfiprintf_r+0xc1c>
   175b6:	4581                	li	a1,0
   175b8:	b745                	j	17558 <_vfiprintf_r+0x9f4>
   175ba:	ccccdf37          	lui	t5,0xccccd
   175be:	ccccdfb7          	lui	t6,0xccccd
   175c2:	42d2                	lw	t0,20(sp)
   175c4:	40087e13          	andi	t3,a6,1024
   175c8:	4581                	li	a1,0
   175ca:	1988                	addi	a0,sp,240
   175cc:	4315                	li	t1,5
   175ce:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccb1271>
   175d2:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccb1270>
   175d6:	0ff00e93          	li	t4,255
   175da:	a081                	j	1761a <_vfiprintf_r+0xab6>
   175dc:	00f4b733          	sltu	a4,s1,a5
   175e0:	9726                	add	a4,a4,s1
   175e2:	02677733          	remu	a4,a4,t1
   175e6:	40e78733          	sub	a4,a5,a4
   175ea:	00e7b633          	sltu	a2,a5,a4
   175ee:	40c88633          	sub	a2,a7,a2
   175f2:	03f703b3          	mul	t2,a4,t6
   175f6:	03e60633          	mul	a2,a2,t5
   175fa:	03e73533          	mulhu	a0,a4,t5
   175fe:	961e                	add	a2,a2,t2
   17600:	03e70733          	mul	a4,a4,t5
   17604:	962a                	add	a2,a2,a0
   17606:	01f61513          	slli	a0,a2,0x1f
   1760a:	8205                	srli	a2,a2,0x1
   1760c:	8305                	srli	a4,a4,0x1
   1760e:	8f49                	or	a4,a4,a0
   17610:	16088263          	beqz	a7,17774 <_vfiprintf_r+0xc10>
   17614:	87ba                	mv	a5,a4
   17616:	88b2                	mv	a7,a2
   17618:	8536                	mv	a0,a3
   1761a:	011784b3          	add	s1,a5,a7
   1761e:	00f4b733          	sltu	a4,s1,a5
   17622:	9726                	add	a4,a4,s1
   17624:	02677733          	remu	a4,a4,t1
   17628:	fff50693          	addi	a3,a0,-1
   1762c:	0585                	addi	a1,a1,1
   1762e:	40e78733          	sub	a4,a5,a4
   17632:	00e7b3b3          	sltu	t2,a5,a4
   17636:	407883b3          	sub	t2,a7,t2
   1763a:	03e73633          	mulhu	a2,a4,t5
   1763e:	03e383b3          	mul	t2,t2,t5
   17642:	03e70733          	mul	a4,a4,t5
   17646:	93b2                	add	t2,t2,a2
   17648:	03fe                	slli	t2,t2,0x1f
   1764a:	00175613          	srli	a2,a4,0x1
   1764e:	00c3e633          	or	a2,t2,a2
   17652:	00261713          	slli	a4,a2,0x2
   17656:	9732                	add	a4,a4,a2
   17658:	0706                	slli	a4,a4,0x1
   1765a:	40e78733          	sub	a4,a5,a4
   1765e:	03070713          	addi	a4,a4,48
   17662:	fee50fa3          	sb	a4,-1(a0)
   17666:	f60e0be3          	beqz	t3,175dc <_vfiprintf_r+0xa78>
   1766a:	0002c703          	lbu	a4,0(t0)
   1766e:	f6b717e3          	bne	a4,a1,175dc <_vfiprintf_r+0xa78>
   17672:	f7d585e3          	beq	a1,t4,175dc <_vfiprintf_r+0xa78>
   17676:	06089b63          	bnez	a7,176ec <_vfiprintf_r+0xb88>
   1767a:	4725                	li	a4,9
   1767c:	06f76863          	bltu	a4,a5,176ec <_vfiprintf_r+0xb88>
   17680:	84b6                	mv	s1,a3
   17682:	ca16                	sw	t0,20(sp)
   17684:	bba9                	j	173de <_vfiprintf_r+0x87a>
   17686:	883a                	mv	a6,a4
   17688:	4701                	li	a4,0
   1768a:	b0070ce3          	beqz	a4,171a2 <_vfiprintf_r+0x63e>
   1768e:	b335                	j	173ba <_vfiprintf_r+0x856>
   17690:	a14f90ef          	jal	108a4 <__sinit>
   17694:	cfaff06f          	j	16b8e <_vfiprintf_r+0x2a>
   17698:	0019c783          	lbu	a5,1(s3)
   1769c:	20086813          	ori	a6,a6,512
   176a0:	0985                	addi	s3,s3,1
   176a2:	dd4ff06f          	j	16c76 <_vfiprintf_r+0x112>
   176a6:	0019c783          	lbu	a5,1(s3)
   176aa:	02086813          	ori	a6,a6,32
   176ae:	0985                	addi	s3,s3,1
   176b0:	dc6ff06f          	j	16c76 <_vfiprintf_r+0x112>
   176b4:	000d2783          	lw	a5,0(s10)
   176b8:	0d11                	addi	s10,s10,4
   176ba:	0127a023          	sw	s2,0(a5)
   176be:	d5aff06f          	j	16c18 <_vfiprintf_r+0xb4>
   176c2:	4799                	li	a5,6
   176c4:	8e6e                	mv	t3,s11
   176c6:	0bb7eb63          	bltu	a5,s11,1777c <_vfiprintf_r+0xc18>
   176ca:	64e9                	lui	s1,0x1a
   176cc:	88f2                	mv	a7,t3
   176ce:	33c48493          	addi	s1,s1,828 # 1a33c <__clzsi2+0xbc>
   176d2:	df2ff06f          	j	16cc4 <_vfiprintf_r+0x160>
   176d6:	200e7713          	andi	a4,t3,512
   176da:	e00703e3          	beqz	a4,174e0 <_vfiprintf_r+0x97c>
   176de:	0ff7f793          	zext.b	a5,a5
   176e2:	4881                	li	a7,0
   176e4:	bc49                	j	17176 <_vfiprintf_r+0x612>
   176e6:	4781                	li	a5,0
   176e8:	4581                	li	a1,0
   176ea:	b9c1                	j	173ba <_vfiprintf_r+0x856>
   176ec:	d43e                	sw	a5,40(sp)
   176ee:	47e2                	lw	a5,24(sp)
   176f0:	45f2                	lw	a1,28(sp)
   176f2:	d646                	sw	a7,44(sp)
   176f4:	8e9d                	sub	a3,a3,a5
   176f6:	863e                	mv	a2,a5
   176f8:	8536                	mv	a0,a3
   176fa:	d27e                	sw	t6,36(sp)
   176fc:	d07a                	sw	t5,32(sp)
   176fe:	ca72                	sw	t3,20(sp)
   17700:	c842                	sw	a6,16(sp)
   17702:	c616                	sw	t0,12(sp)
   17704:	c436                	sw	a3,8(sp)
   17706:	d5bfc0ef          	jal	14460 <strncpy>
   1770a:	57a2                	lw	a5,40(sp)
   1770c:	4615                	li	a2,5
   1770e:	42b2                	lw	t0,12(sp)
   17710:	00f4b733          	sltu	a4,s1,a5
   17714:	9726                	add	a4,a4,s1
   17716:	02c77733          	remu	a4,a4,a2
   1771a:	0012c603          	lbu	a2,1(t0)
   1771e:	58b2                	lw	a7,44(sp)
   17720:	ccccd537          	lui	a0,0xccccd
   17724:	00c03633          	snez	a2,a2
   17728:	ccccd3b7          	lui	t2,0xccccd
   1772c:	92b2                	add	t0,t0,a2
   1772e:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb1271>
   17732:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccb1270>
   17736:	46a2                	lw	a3,8(sp)
   17738:	4842                	lw	a6,16(sp)
   1773a:	4e52                	lw	t3,20(sp)
   1773c:	5f02                	lw	t5,32(sp)
   1773e:	5f92                	lw	t6,36(sp)
   17740:	4581                	li	a1,0
   17742:	4315                	li	t1,5
   17744:	0ff00e93          	li	t4,255
   17748:	40e78733          	sub	a4,a5,a4
   1774c:	00e7b633          	sltu	a2,a5,a4
   17750:	40c88633          	sub	a2,a7,a2
   17754:	027703b3          	mul	t2,a4,t2
   17758:	02a60633          	mul	a2,a2,a0
   1775c:	02a738b3          	mulhu	a7,a4,a0
   17760:	961e                	add	a2,a2,t2
   17762:	02a707b3          	mul	a5,a4,a0
   17766:	9646                	add	a2,a2,a7
   17768:	01f61713          	slli	a4,a2,0x1f
   1776c:	8205                	srli	a2,a2,0x1
   1776e:	8385                	srli	a5,a5,0x1
   17770:	8f5d                	or	a4,a4,a5
   17772:	b54d                	j	17614 <_vfiprintf_r+0xab0>
   17774:	4525                	li	a0,9
   17776:	e8f56fe3          	bltu	a0,a5,17614 <_vfiprintf_r+0xab0>
   1777a:	b719                	j	17680 <_vfiprintf_r+0xb1c>
   1777c:	4e19                	li	t3,6
   1777e:	b7b1                	j	176ca <_vfiprintf_r+0xb66>
   17780:	0ff7f793          	zext.b	a5,a5
   17784:	4581                	li	a1,0
   17786:	bbc9                	j	17558 <_vfiprintf_r+0x9f4>
   17788:	07e2                	slli	a5,a5,0x18
   1778a:	87e1                	srai	a5,a5,0x18
   1778c:	41f7d893          	srai	a7,a5,0x1f
   17790:	8746                	mv	a4,a7
   17792:	e20ff06f          	j	16db2 <_vfiprintf_r+0x24e>
   17796:	000d2783          	lw	a5,0(s10)
   1779a:	0d11                	addi	s10,s10,4
   1779c:	01279023          	sh	s2,0(a5)
   177a0:	c78ff06f          	j	16c18 <_vfiprintf_r+0xb4>
   177a4:	0ff7f793          	zext.b	a5,a5
   177a8:	4581                	li	a1,0
   177aa:	b2b9                	j	170f8 <_vfiprintf_r+0x594>
   177ac:	03000793          	li	a5,48
   177b0:	fe4ff06f          	j	16f94 <_vfiprintf_r+0x430>
   177b4:	5d7d                	li	s10,-1
   177b6:	ecaff06f          	j	16e80 <_vfiprintf_r+0x31c>
   177ba:	000d2d83          	lw	s11,0(s10)
   177be:	0d11                	addi	s10,s10,4
   177c0:	000dd363          	bgez	s11,177c6 <_vfiprintf_r+0xc62>
   177c4:	5dfd                	li	s11,-1
   177c6:	0019c783          	lbu	a5,1(s3)
   177ca:	89b6                	mv	s3,a3
   177cc:	caaff06f          	j	16c76 <_vfiprintf_r+0x112>

000177d0 <vfiprintf>:
   177d0:	87aa                	mv	a5,a0
   177d2:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   177d6:	86b2                	mv	a3,a2
   177d8:	862e                	mv	a2,a1
   177da:	85be                	mv	a1,a5
   177dc:	b88ff06f          	j	16b64 <_vfiprintf_r>

000177e0 <__sbprintf>:
   177e0:	b8010113          	addi	sp,sp,-1152
   177e4:	00c59783          	lh	a5,12(a1)
   177e8:	00e5d703          	lhu	a4,14(a1)
   177ec:	46812c23          	sw	s0,1144(sp)
   177f0:	842e                	mv	s0,a1
   177f2:	65c1                	lui	a1,0x10
   177f4:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   177f6:	06442e03          	lw	t3,100(s0)
   177fa:	01c42303          	lw	t1,28(s0)
   177fe:	02442883          	lw	a7,36(s0)
   17802:	0742                	slli	a4,a4,0x10
   17804:	8fed                	and	a5,a5,a1
   17806:	8fd9                	or	a5,a5,a4
   17808:	40000813          	li	a6,1024
   1780c:	ca3e                	sw	a5,20(sp)
   1780e:	002c                	addi	a1,sp,8
   17810:	189c                	addi	a5,sp,112
   17812:	46912a23          	sw	s1,1140(sp)
   17816:	47212823          	sw	s2,1136(sp)
   1781a:	46112e23          	sw	ra,1148(sp)
   1781e:	892a                	mv	s2,a0
   17820:	d6f2                	sw	t3,108(sp)
   17822:	d21a                	sw	t1,36(sp)
   17824:	d646                	sw	a7,44(sp)
   17826:	c43e                	sw	a5,8(sp)
   17828:	cc3e                	sw	a5,24(sp)
   1782a:	c842                	sw	a6,16(sp)
   1782c:	ce42                	sw	a6,28(sp)
   1782e:	d002                	sw	zero,32(sp)
   17830:	b34ff0ef          	jal	16b64 <_vfiprintf_r>
   17834:	84aa                	mv	s1,a0
   17836:	02055963          	bgez	a0,17868 <__sbprintf+0x88>
   1783a:	01415783          	lhu	a5,20(sp)
   1783e:	0407f793          	andi	a5,a5,64
   17842:	c799                	beqz	a5,17850 <__sbprintf+0x70>
   17844:	00c45783          	lhu	a5,12(s0)
   17848:	0407e793          	ori	a5,a5,64
   1784c:	00f41623          	sh	a5,12(s0)
   17850:	47c12083          	lw	ra,1148(sp)
   17854:	47812403          	lw	s0,1144(sp)
   17858:	47012903          	lw	s2,1136(sp)
   1785c:	8526                	mv	a0,s1
   1785e:	47412483          	lw	s1,1140(sp)
   17862:	48010113          	addi	sp,sp,1152
   17866:	8082                	ret
   17868:	002c                	addi	a1,sp,8
   1786a:	854a                	mv	a0,s2
   1786c:	82ffc0ef          	jal	1409a <_fflush_r>
   17870:	d569                	beqz	a0,1783a <__sbprintf+0x5a>
   17872:	54fd                	li	s1,-1
   17874:	b7d9                	j	1783a <__sbprintf+0x5a>

00017876 <__errno>:
   17876:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   1787a:	8082                	ret

0001787c <abort>:
   1787c:	1141                	addi	sp,sp,-16
   1787e:	4519                	li	a0,6
   17880:	c606                	sw	ra,12(sp)
   17882:	2a59                	jal	17a18 <raise>
   17884:	4505                	li	a0,1
   17886:	2e61                	jal	17c1e <_exit>

00017888 <_init_signal_r>:
   17888:	11852783          	lw	a5,280(a0)
   1788c:	c399                	beqz	a5,17892 <_init_signal_r+0xa>
   1788e:	4501                	li	a0,0
   17890:	8082                	ret
   17892:	1141                	addi	sp,sp,-16
   17894:	08000593          	li	a1,128
   17898:	c422                	sw	s0,8(sp)
   1789a:	c606                	sw	ra,12(sp)
   1789c:	842a                	mv	s0,a0
   1789e:	fcdf90ef          	jal	1186a <_malloc_r>
   178a2:	10a42c23          	sw	a0,280(s0)
   178a6:	cd09                	beqz	a0,178c0 <_init_signal_r+0x38>
   178a8:	08050793          	addi	a5,a0,128
   178ac:	00052023          	sw	zero,0(a0)
   178b0:	0511                	addi	a0,a0,4
   178b2:	fef51de3          	bne	a0,a5,178ac <_init_signal_r+0x24>
   178b6:	4501                	li	a0,0
   178b8:	40b2                	lw	ra,12(sp)
   178ba:	4422                	lw	s0,8(sp)
   178bc:	0141                	addi	sp,sp,16
   178be:	8082                	ret
   178c0:	557d                	li	a0,-1
   178c2:	bfdd                	j	178b8 <_init_signal_r+0x30>

000178c4 <_signal_r>:
   178c4:	1101                	addi	sp,sp,-32
   178c6:	ca26                	sw	s1,20(sp)
   178c8:	ce06                	sw	ra,28(sp)
   178ca:	47fd                	li	a5,31
   178cc:	84aa                	mv	s1,a0
   178ce:	02b7e063          	bltu	a5,a1,178ee <_signal_r+0x2a>
   178d2:	11852783          	lw	a5,280(a0)
   178d6:	cc22                	sw	s0,24(sp)
   178d8:	842e                	mv	s0,a1
   178da:	cf91                	beqz	a5,178f6 <_signal_r+0x32>
   178dc:	040a                	slli	s0,s0,0x2
   178de:	97a2                	add	a5,a5,s0
   178e0:	4462                	lw	s0,24(sp)
   178e2:	4388                	lw	a0,0(a5)
   178e4:	c390                	sw	a2,0(a5)
   178e6:	40f2                	lw	ra,28(sp)
   178e8:	44d2                	lw	s1,20(sp)
   178ea:	6105                	addi	sp,sp,32
   178ec:	8082                	ret
   178ee:	47d9                	li	a5,22
   178f0:	c11c                	sw	a5,0(a0)
   178f2:	557d                	li	a0,-1
   178f4:	bfcd                	j	178e6 <_signal_r+0x22>
   178f6:	08000593          	li	a1,128
   178fa:	c632                	sw	a2,12(sp)
   178fc:	f6ff90ef          	jal	1186a <_malloc_r>
   17900:	10a4ac23          	sw	a0,280(s1)
   17904:	4632                	lw	a2,12(sp)
   17906:	87aa                	mv	a5,a0
   17908:	872a                	mv	a4,a0
   1790a:	08050693          	addi	a3,a0,128
   1790e:	c519                	beqz	a0,1791c <_signal_r+0x58>
   17910:	00072023          	sw	zero,0(a4)
   17914:	0711                	addi	a4,a4,4
   17916:	fed71de3          	bne	a4,a3,17910 <_signal_r+0x4c>
   1791a:	b7c9                	j	178dc <_signal_r+0x18>
   1791c:	4462                	lw	s0,24(sp)
   1791e:	557d                	li	a0,-1
   17920:	b7d9                	j	178e6 <_signal_r+0x22>

00017922 <_raise_r>:
   17922:	1141                	addi	sp,sp,-16
   17924:	c226                	sw	s1,4(sp)
   17926:	c606                	sw	ra,12(sp)
   17928:	47fd                	li	a5,31
   1792a:	84aa                	mv	s1,a0
   1792c:	04b7ee63          	bltu	a5,a1,17988 <_raise_r+0x66>
   17930:	11852783          	lw	a5,280(a0)
   17934:	c422                	sw	s0,8(sp)
   17936:	842e                	mv	s0,a1
   17938:	c795                	beqz	a5,17964 <_raise_r+0x42>
   1793a:	00259713          	slli	a4,a1,0x2
   1793e:	97ba                	add	a5,a5,a4
   17940:	4398                	lw	a4,0(a5)
   17942:	c30d                	beqz	a4,17964 <_raise_r+0x42>
   17944:	4685                	li	a3,1
   17946:	00d70963          	beq	a4,a3,17958 <_raise_r+0x36>
   1794a:	56fd                	li	a3,-1
   1794c:	02d70663          	beq	a4,a3,17978 <_raise_r+0x56>
   17950:	0007a023          	sw	zero,0(a5)
   17954:	852e                	mv	a0,a1
   17956:	9702                	jalr	a4
   17958:	4422                	lw	s0,8(sp)
   1795a:	4501                	li	a0,0
   1795c:	40b2                	lw	ra,12(sp)
   1795e:	4492                	lw	s1,4(sp)
   17960:	0141                	addi	sp,sp,16
   17962:	8082                	ret
   17964:	8526                	mv	a0,s1
   17966:	2469                	jal	17bf0 <_getpid_r>
   17968:	8622                	mv	a2,s0
   1796a:	4422                	lw	s0,8(sp)
   1796c:	40b2                	lw	ra,12(sp)
   1796e:	85aa                	mv	a1,a0
   17970:	8526                	mv	a0,s1
   17972:	4492                	lw	s1,4(sp)
   17974:	0141                	addi	sp,sp,16
   17976:	a489                	j	17bb8 <_kill_r>
   17978:	4422                	lw	s0,8(sp)
   1797a:	40b2                	lw	ra,12(sp)
   1797c:	47d9                	li	a5,22
   1797e:	c11c                	sw	a5,0(a0)
   17980:	4492                	lw	s1,4(sp)
   17982:	4505                	li	a0,1
   17984:	0141                	addi	sp,sp,16
   17986:	8082                	ret
   17988:	47d9                	li	a5,22
   1798a:	c11c                	sw	a5,0(a0)
   1798c:	557d                	li	a0,-1
   1798e:	b7f9                	j	1795c <_raise_r+0x3a>

00017990 <__sigtramp_r>:
   17990:	47fd                	li	a5,31
   17992:	08b7e163          	bltu	a5,a1,17a14 <__sigtramp_r+0x84>
   17996:	11852783          	lw	a5,280(a0)
   1799a:	1141                	addi	sp,sp,-16
   1799c:	c422                	sw	s0,8(sp)
   1799e:	c226                	sw	s1,4(sp)
   179a0:	c606                	sw	ra,12(sp)
   179a2:	842e                	mv	s0,a1
   179a4:	84aa                	mv	s1,a0
   179a6:	c7a1                	beqz	a5,179ee <__sigtramp_r+0x5e>
   179a8:	00241713          	slli	a4,s0,0x2
   179ac:	97ba                	add	a5,a5,a4
   179ae:	4398                	lw	a4,0(a5)
   179b0:	c30d                	beqz	a4,179d2 <__sigtramp_r+0x42>
   179b2:	56fd                	li	a3,-1
   179b4:	02d70b63          	beq	a4,a3,179ea <__sigtramp_r+0x5a>
   179b8:	4685                	li	a3,1
   179ba:	02d70263          	beq	a4,a3,179de <__sigtramp_r+0x4e>
   179be:	8522                	mv	a0,s0
   179c0:	0007a023          	sw	zero,0(a5)
   179c4:	9702                	jalr	a4
   179c6:	4501                	li	a0,0
   179c8:	40b2                	lw	ra,12(sp)
   179ca:	4422                	lw	s0,8(sp)
   179cc:	4492                	lw	s1,4(sp)
   179ce:	0141                	addi	sp,sp,16
   179d0:	8082                	ret
   179d2:	40b2                	lw	ra,12(sp)
   179d4:	4422                	lw	s0,8(sp)
   179d6:	4492                	lw	s1,4(sp)
   179d8:	4505                	li	a0,1
   179da:	0141                	addi	sp,sp,16
   179dc:	8082                	ret
   179de:	40b2                	lw	ra,12(sp)
   179e0:	4422                	lw	s0,8(sp)
   179e2:	4492                	lw	s1,4(sp)
   179e4:	450d                	li	a0,3
   179e6:	0141                	addi	sp,sp,16
   179e8:	8082                	ret
   179ea:	4509                	li	a0,2
   179ec:	bff1                	j	179c8 <__sigtramp_r+0x38>
   179ee:	08000593          	li	a1,128
   179f2:	e79f90ef          	jal	1186a <_malloc_r>
   179f6:	10a4ac23          	sw	a0,280(s1)
   179fa:	87aa                	mv	a5,a0
   179fc:	c911                	beqz	a0,17a10 <__sigtramp_r+0x80>
   179fe:	872a                	mv	a4,a0
   17a00:	08050693          	addi	a3,a0,128
   17a04:	00072023          	sw	zero,0(a4)
   17a08:	0711                	addi	a4,a4,4
   17a0a:	fed71de3          	bne	a4,a3,17a04 <__sigtramp_r+0x74>
   17a0e:	bf69                	j	179a8 <__sigtramp_r+0x18>
   17a10:	557d                	li	a0,-1
   17a12:	bf5d                	j	179c8 <__sigtramp_r+0x38>
   17a14:	557d                	li	a0,-1
   17a16:	8082                	ret

00017a18 <raise>:
   17a18:	1141                	addi	sp,sp,-16
   17a1a:	c226                	sw	s1,4(sp)
   17a1c:	c606                	sw	ra,12(sp)
   17a1e:	47fd                	li	a5,31
   17a20:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   17a24:	04a7ed63          	bltu	a5,a0,17a7e <raise+0x66>
   17a28:	1184a783          	lw	a5,280(s1)
   17a2c:	c422                	sw	s0,8(sp)
   17a2e:	842a                	mv	s0,a0
   17a30:	c78d                	beqz	a5,17a5a <raise+0x42>
   17a32:	00251713          	slli	a4,a0,0x2
   17a36:	97ba                	add	a5,a5,a4
   17a38:	4398                	lw	a4,0(a5)
   17a3a:	c305                	beqz	a4,17a5a <raise+0x42>
   17a3c:	4685                	li	a3,1
   17a3e:	00d70863          	beq	a4,a3,17a4e <raise+0x36>
   17a42:	56fd                	li	a3,-1
   17a44:	02d70563          	beq	a4,a3,17a6e <raise+0x56>
   17a48:	0007a023          	sw	zero,0(a5)
   17a4c:	9702                	jalr	a4
   17a4e:	4422                	lw	s0,8(sp)
   17a50:	4501                	li	a0,0
   17a52:	40b2                	lw	ra,12(sp)
   17a54:	4492                	lw	s1,4(sp)
   17a56:	0141                	addi	sp,sp,16
   17a58:	8082                	ret
   17a5a:	8526                	mv	a0,s1
   17a5c:	2a51                	jal	17bf0 <_getpid_r>
   17a5e:	8622                	mv	a2,s0
   17a60:	4422                	lw	s0,8(sp)
   17a62:	40b2                	lw	ra,12(sp)
   17a64:	85aa                	mv	a1,a0
   17a66:	8526                	mv	a0,s1
   17a68:	4492                	lw	s1,4(sp)
   17a6a:	0141                	addi	sp,sp,16
   17a6c:	a2b1                	j	17bb8 <_kill_r>
   17a6e:	4422                	lw	s0,8(sp)
   17a70:	40b2                	lw	ra,12(sp)
   17a72:	47d9                	li	a5,22
   17a74:	c09c                	sw	a5,0(s1)
   17a76:	4505                	li	a0,1
   17a78:	4492                	lw	s1,4(sp)
   17a7a:	0141                	addi	sp,sp,16
   17a7c:	8082                	ret
   17a7e:	47d9                	li	a5,22
   17a80:	c09c                	sw	a5,0(s1)
   17a82:	557d                	li	a0,-1
   17a84:	b7f9                	j	17a52 <raise+0x3a>

00017a86 <signal>:
   17a86:	1141                	addi	sp,sp,-16
   17a88:	c04a                	sw	s2,0(sp)
   17a8a:	c606                	sw	ra,12(sp)
   17a8c:	47fd                	li	a5,31
   17a8e:	f141a903          	lw	s2,-236(gp) # 1b724 <_impure_ptr>
   17a92:	02a7e463          	bltu	a5,a0,17aba <signal+0x34>
   17a96:	c422                	sw	s0,8(sp)
   17a98:	842a                	mv	s0,a0
   17a9a:	11892503          	lw	a0,280(s2)
   17a9e:	c226                	sw	s1,4(sp)
   17aa0:	84ae                	mv	s1,a1
   17aa2:	c10d                	beqz	a0,17ac4 <signal+0x3e>
   17aa4:	040a                	slli	s0,s0,0x2
   17aa6:	008507b3          	add	a5,a0,s0
   17aaa:	4388                	lw	a0,0(a5)
   17aac:	4422                	lw	s0,8(sp)
   17aae:	c384                	sw	s1,0(a5)
   17ab0:	4492                	lw	s1,4(sp)
   17ab2:	40b2                	lw	ra,12(sp)
   17ab4:	4902                	lw	s2,0(sp)
   17ab6:	0141                	addi	sp,sp,16
   17ab8:	8082                	ret
   17aba:	47d9                	li	a5,22
   17abc:	00f92023          	sw	a5,0(s2)
   17ac0:	557d                	li	a0,-1
   17ac2:	bfc5                	j	17ab2 <signal+0x2c>
   17ac4:	08000593          	li	a1,128
   17ac8:	854a                	mv	a0,s2
   17aca:	da1f90ef          	jal	1186a <_malloc_r>
   17ace:	10a92c23          	sw	a0,280(s2)
   17ad2:	87aa                	mv	a5,a0
   17ad4:	08050713          	addi	a4,a0,128
   17ad8:	c519                	beqz	a0,17ae6 <signal+0x60>
   17ada:	0007a023          	sw	zero,0(a5)
   17ade:	0791                	addi	a5,a5,4
   17ae0:	fef71de3          	bne	a4,a5,17ada <signal+0x54>
   17ae4:	b7c1                	j	17aa4 <signal+0x1e>
   17ae6:	4422                	lw	s0,8(sp)
   17ae8:	4492                	lw	s1,4(sp)
   17aea:	557d                	li	a0,-1
   17aec:	b7d9                	j	17ab2 <signal+0x2c>

00017aee <_init_signal>:
   17aee:	1141                	addi	sp,sp,-16
   17af0:	c422                	sw	s0,8(sp)
   17af2:	f141a403          	lw	s0,-236(gp) # 1b724 <_impure_ptr>
   17af6:	c606                	sw	ra,12(sp)
   17af8:	11842783          	lw	a5,280(s0)
   17afc:	c791                	beqz	a5,17b08 <_init_signal+0x1a>
   17afe:	4501                	li	a0,0
   17b00:	40b2                	lw	ra,12(sp)
   17b02:	4422                	lw	s0,8(sp)
   17b04:	0141                	addi	sp,sp,16
   17b06:	8082                	ret
   17b08:	08000593          	li	a1,128
   17b0c:	8522                	mv	a0,s0
   17b0e:	d5df90ef          	jal	1186a <_malloc_r>
   17b12:	10a42c23          	sw	a0,280(s0)
   17b16:	c909                	beqz	a0,17b28 <_init_signal+0x3a>
   17b18:	08050793          	addi	a5,a0,128
   17b1c:	00052023          	sw	zero,0(a0)
   17b20:	0511                	addi	a0,a0,4
   17b22:	fef51de3          	bne	a0,a5,17b1c <_init_signal+0x2e>
   17b26:	bfe1                	j	17afe <_init_signal+0x10>
   17b28:	557d                	li	a0,-1
   17b2a:	bfd9                	j	17b00 <_init_signal+0x12>

00017b2c <__sigtramp>:
   17b2c:	1141                	addi	sp,sp,-16
   17b2e:	c226                	sw	s1,4(sp)
   17b30:	c606                	sw	ra,12(sp)
   17b32:	47fd                	li	a5,31
   17b34:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   17b38:	06a7ee63          	bltu	a5,a0,17bb4 <__sigtramp+0x88>
   17b3c:	1184a783          	lw	a5,280(s1)
   17b40:	c422                	sw	s0,8(sp)
   17b42:	842a                	mv	s0,a0
   17b44:	c7a9                	beqz	a5,17b8e <__sigtramp+0x62>
   17b46:	00241713          	slli	a4,s0,0x2
   17b4a:	97ba                	add	a5,a5,a4
   17b4c:	4398                	lw	a4,0(a5)
   17b4e:	c30d                	beqz	a4,17b70 <__sigtramp+0x44>
   17b50:	56fd                	li	a3,-1
   17b52:	02d70b63          	beq	a4,a3,17b88 <__sigtramp+0x5c>
   17b56:	4685                	li	a3,1
   17b58:	02d70263          	beq	a4,a3,17b7c <__sigtramp+0x50>
   17b5c:	8522                	mv	a0,s0
   17b5e:	0007a023          	sw	zero,0(a5)
   17b62:	9702                	jalr	a4
   17b64:	4422                	lw	s0,8(sp)
   17b66:	4501                	li	a0,0
   17b68:	40b2                	lw	ra,12(sp)
   17b6a:	4492                	lw	s1,4(sp)
   17b6c:	0141                	addi	sp,sp,16
   17b6e:	8082                	ret
   17b70:	4422                	lw	s0,8(sp)
   17b72:	40b2                	lw	ra,12(sp)
   17b74:	4492                	lw	s1,4(sp)
   17b76:	4505                	li	a0,1
   17b78:	0141                	addi	sp,sp,16
   17b7a:	8082                	ret
   17b7c:	4422                	lw	s0,8(sp)
   17b7e:	40b2                	lw	ra,12(sp)
   17b80:	4492                	lw	s1,4(sp)
   17b82:	450d                	li	a0,3
   17b84:	0141                	addi	sp,sp,16
   17b86:	8082                	ret
   17b88:	4422                	lw	s0,8(sp)
   17b8a:	4509                	li	a0,2
   17b8c:	bff1                	j	17b68 <__sigtramp+0x3c>
   17b8e:	08000593          	li	a1,128
   17b92:	8526                	mv	a0,s1
   17b94:	cd7f90ef          	jal	1186a <_malloc_r>
   17b98:	10a4ac23          	sw	a0,280(s1)
   17b9c:	87aa                	mv	a5,a0
   17b9e:	c911                	beqz	a0,17bb2 <__sigtramp+0x86>
   17ba0:	872a                	mv	a4,a0
   17ba2:	08050693          	addi	a3,a0,128
   17ba6:	00072023          	sw	zero,0(a4)
   17baa:	0711                	addi	a4,a4,4
   17bac:	fee69de3          	bne	a3,a4,17ba6 <__sigtramp+0x7a>
   17bb0:	bf59                	j	17b46 <__sigtramp+0x1a>
   17bb2:	4422                	lw	s0,8(sp)
   17bb4:	557d                	li	a0,-1
   17bb6:	bf4d                	j	17b68 <__sigtramp+0x3c>

00017bb8 <_kill_r>:
   17bb8:	1141                	addi	sp,sp,-16
   17bba:	872e                	mv	a4,a1
   17bbc:	c422                	sw	s0,8(sp)
   17bbe:	c226                	sw	s1,4(sp)
   17bc0:	842a                	mv	s0,a0
   17bc2:	85b2                	mv	a1,a2
   17bc4:	853a                	mv	a0,a4
   17bc6:	c606                	sw	ra,12(sp)
   17bc8:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   17bcc:	28d9                	jal	17ca2 <_kill>
   17bce:	57fd                	li	a5,-1
   17bd0:	00f50763          	beq	a0,a5,17bde <_kill_r+0x26>
   17bd4:	40b2                	lw	ra,12(sp)
   17bd6:	4422                	lw	s0,8(sp)
   17bd8:	4492                	lw	s1,4(sp)
   17bda:	0141                	addi	sp,sp,16
   17bdc:	8082                	ret
   17bde:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   17be2:	dbed                	beqz	a5,17bd4 <_kill_r+0x1c>
   17be4:	40b2                	lw	ra,12(sp)
   17be6:	c01c                	sw	a5,0(s0)
   17be8:	4422                	lw	s0,8(sp)
   17bea:	4492                	lw	s1,4(sp)
   17bec:	0141                	addi	sp,sp,16
   17bee:	8082                	ret

00017bf0 <_getpid_r>:
   17bf0:	a069                	j	17c7a <_getpid>

00017bf2 <_close>:
   17bf2:	1141                	addi	sp,sp,-16
   17bf4:	c606                	sw	ra,12(sp)
   17bf6:	c422                	sw	s0,8(sp)
   17bf8:	03900893          	li	a7,57
   17bfc:	00000073          	ecall
   17c00:	842a                	mv	s0,a0
   17c02:	00054763          	bltz	a0,17c10 <_close+0x1e>
   17c06:	40b2                	lw	ra,12(sp)
   17c08:	8522                	mv	a0,s0
   17c0a:	4422                	lw	s0,8(sp)
   17c0c:	0141                	addi	sp,sp,16
   17c0e:	8082                	ret
   17c10:	40800433          	neg	s0,s0
   17c14:	c63ff0ef          	jal	17876 <__errno>
   17c18:	c100                	sw	s0,0(a0)
   17c1a:	547d                	li	s0,-1
   17c1c:	b7ed                	j	17c06 <_close+0x14>

00017c1e <_exit>:
   17c1e:	05d00893          	li	a7,93
   17c22:	00000073          	ecall
   17c26:	00054363          	bltz	a0,17c2c <_exit+0xe>
   17c2a:	a001                	j	17c2a <_exit+0xc>
   17c2c:	1141                	addi	sp,sp,-16
   17c2e:	c422                	sw	s0,8(sp)
   17c30:	842a                	mv	s0,a0
   17c32:	c606                	sw	ra,12(sp)
   17c34:	40800433          	neg	s0,s0
   17c38:	c3fff0ef          	jal	17876 <__errno>
   17c3c:	c100                	sw	s0,0(a0)
   17c3e:	a001                	j	17c3e <_exit+0x20>

00017c40 <_fstat>:
   17c40:	7175                	addi	sp,sp,-144
   17c42:	c326                	sw	s1,132(sp)
   17c44:	c706                	sw	ra,140(sp)
   17c46:	84ae                	mv	s1,a1
   17c48:	c522                	sw	s0,136(sp)
   17c4a:	05000893          	li	a7,80
   17c4e:	858a                	mv	a1,sp
   17c50:	00000073          	ecall
   17c54:	842a                	mv	s0,a0
   17c56:	00054b63          	bltz	a0,17c6c <_fstat+0x2c>
   17c5a:	8526                	mv	a0,s1
   17c5c:	858a                	mv	a1,sp
   17c5e:	2a05                	jal	17d8e <_conv_stat>
   17c60:	40ba                	lw	ra,140(sp)
   17c62:	8522                	mv	a0,s0
   17c64:	442a                	lw	s0,136(sp)
   17c66:	449a                	lw	s1,132(sp)
   17c68:	6149                	addi	sp,sp,144
   17c6a:	8082                	ret
   17c6c:	40800433          	neg	s0,s0
   17c70:	c07ff0ef          	jal	17876 <__errno>
   17c74:	c100                	sw	s0,0(a0)
   17c76:	547d                	li	s0,-1
   17c78:	b7cd                	j	17c5a <_fstat+0x1a>

00017c7a <_getpid>:
   17c7a:	4505                	li	a0,1
   17c7c:	8082                	ret

00017c7e <_isatty>:
   17c7e:	7159                	addi	sp,sp,-112
   17c80:	002c                	addi	a1,sp,8
   17c82:	d686                	sw	ra,108(sp)
   17c84:	fbdff0ef          	jal	17c40 <_fstat>
   17c88:	57fd                	li	a5,-1
   17c8a:	00f50863          	beq	a0,a5,17c9a <_isatty+0x1c>
   17c8e:	4532                	lw	a0,12(sp)
   17c90:	50b6                	lw	ra,108(sp)
   17c92:	8135                	srli	a0,a0,0xd
   17c94:	8905                	andi	a0,a0,1
   17c96:	6165                	addi	sp,sp,112
   17c98:	8082                	ret
   17c9a:	50b6                	lw	ra,108(sp)
   17c9c:	4501                	li	a0,0
   17c9e:	6165                	addi	sp,sp,112
   17ca0:	8082                	ret

00017ca2 <_kill>:
   17ca2:	1141                	addi	sp,sp,-16
   17ca4:	c606                	sw	ra,12(sp)
   17ca6:	bd1ff0ef          	jal	17876 <__errno>
   17caa:	40b2                	lw	ra,12(sp)
   17cac:	47d9                	li	a5,22
   17cae:	c11c                	sw	a5,0(a0)
   17cb0:	557d                	li	a0,-1
   17cb2:	0141                	addi	sp,sp,16
   17cb4:	8082                	ret

00017cb6 <_lseek>:
   17cb6:	1141                	addi	sp,sp,-16
   17cb8:	c606                	sw	ra,12(sp)
   17cba:	c422                	sw	s0,8(sp)
   17cbc:	03e00893          	li	a7,62
   17cc0:	00000073          	ecall
   17cc4:	842a                	mv	s0,a0
   17cc6:	00054763          	bltz	a0,17cd4 <_lseek+0x1e>
   17cca:	40b2                	lw	ra,12(sp)
   17ccc:	8522                	mv	a0,s0
   17cce:	4422                	lw	s0,8(sp)
   17cd0:	0141                	addi	sp,sp,16
   17cd2:	8082                	ret
   17cd4:	40800433          	neg	s0,s0
   17cd8:	b9fff0ef          	jal	17876 <__errno>
   17cdc:	c100                	sw	s0,0(a0)
   17cde:	547d                	li	s0,-1
   17ce0:	b7ed                	j	17cca <_lseek+0x14>

00017ce2 <_read>:
   17ce2:	1141                	addi	sp,sp,-16
   17ce4:	c606                	sw	ra,12(sp)
   17ce6:	c422                	sw	s0,8(sp)
   17ce8:	03f00893          	li	a7,63
   17cec:	00000073          	ecall
   17cf0:	842a                	mv	s0,a0
   17cf2:	00054763          	bltz	a0,17d00 <_read+0x1e>
   17cf6:	40b2                	lw	ra,12(sp)
   17cf8:	8522                	mv	a0,s0
   17cfa:	4422                	lw	s0,8(sp)
   17cfc:	0141                	addi	sp,sp,16
   17cfe:	8082                	ret
   17d00:	40800433          	neg	s0,s0
   17d04:	b73ff0ef          	jal	17876 <__errno>
   17d08:	c100                	sw	s0,0(a0)
   17d0a:	547d                	li	s0,-1
   17d0c:	b7ed                	j	17cf6 <_read+0x14>

00017d0e <_sbrk>:
   17d0e:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17d12:	1141                	addi	sp,sp,-16
   17d14:	c606                	sw	ra,12(sp)
   17d16:	87aa                	mv	a5,a0
   17d18:	ef01                	bnez	a4,17d30 <_sbrk+0x22>
   17d1a:	0d600893          	li	a7,214
   17d1e:	4501                	li	a0,0
   17d20:	00000073          	ecall
   17d24:	567d                	li	a2,-1
   17d26:	872a                	mv	a4,a0
   17d28:	02c50563          	beq	a0,a2,17d52 <_sbrk+0x44>
   17d2c:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17d30:	0d600893          	li	a7,214
   17d34:	00e78533          	add	a0,a5,a4
   17d38:	00000073          	ecall
   17d3c:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   17d40:	97ba                	add	a5,a5,a4
   17d42:	00f51863          	bne	a0,a5,17d52 <_sbrk+0x44>
   17d46:	40b2                	lw	ra,12(sp)
   17d48:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   17d4c:	853a                	mv	a0,a4
   17d4e:	0141                	addi	sp,sp,16
   17d50:	8082                	ret
   17d52:	b25ff0ef          	jal	17876 <__errno>
   17d56:	40b2                	lw	ra,12(sp)
   17d58:	47b1                	li	a5,12
   17d5a:	c11c                	sw	a5,0(a0)
   17d5c:	557d                	li	a0,-1
   17d5e:	0141                	addi	sp,sp,16
   17d60:	8082                	ret

00017d62 <_write>:
   17d62:	1141                	addi	sp,sp,-16
   17d64:	c606                	sw	ra,12(sp)
   17d66:	c422                	sw	s0,8(sp)
   17d68:	04000893          	li	a7,64
   17d6c:	00000073          	ecall
   17d70:	842a                	mv	s0,a0
   17d72:	00054763          	bltz	a0,17d80 <_write+0x1e>
   17d76:	40b2                	lw	ra,12(sp)
   17d78:	8522                	mv	a0,s0
   17d7a:	4422                	lw	s0,8(sp)
   17d7c:	0141                	addi	sp,sp,16
   17d7e:	8082                	ret
   17d80:	40800433          	neg	s0,s0
   17d84:	af3ff0ef          	jal	17876 <__errno>
   17d88:	c100                	sw	s0,0(a0)
   17d8a:	547d                	li	s0,-1
   17d8c:	b7ed                	j	17d76 <_write+0x14>

00017d8e <_conv_stat>:
   17d8e:	0185d703          	lhu	a4,24(a1)
   17d92:	0145d783          	lhu	a5,20(a1)
   17d96:	1141                	addi	sp,sp,-16
   17d98:	01c5a283          	lw	t0,28(a1)
   17d9c:	0205af83          	lw	t6,32(a1)
   17da0:	0305af03          	lw	t5,48(a1)
   17da4:	0405ae83          	lw	t4,64(a1)
   17da8:	0385ae03          	lw	t3,56(a1)
   17dac:	0485a303          	lw	t1,72(a1)
   17db0:	04c5a383          	lw	t2,76(a1)
   17db4:	0585a803          	lw	a6,88(a1)
   17db8:	05c5a883          	lw	a7,92(a1)
   17dbc:	c622                	sw	s0,12(sp)
   17dbe:	c426                	sw	s1,8(sp)
   17dc0:	4980                	lw	s0,16(a1)
   17dc2:	4584                	lw	s1,8(a1)
   17dc4:	c24a                	sw	s2,4(sp)
   17dc6:	0005a903          	lw	s2,0(a1)
   17dca:	55b0                	lw	a2,104(a1)
   17dcc:	0742                	slli	a4,a4,0x10
   17dce:	8fd9                	or	a5,a5,a4
   17dd0:	55f4                	lw	a3,108(a1)
   17dd2:	01251023          	sh	s2,0(a0)
   17dd6:	00951123          	sh	s1,2(a0)
   17dda:	c140                	sw	s0,4(a0)
   17ddc:	c51c                	sw	a5,8(a0)
   17dde:	00551623          	sh	t0,12(a0)
   17de2:	01f51723          	sh	t6,14(a0)
   17de6:	01e52823          	sw	t5,16(a0)
   17dea:	05d52623          	sw	t4,76(a0)
   17dee:	05c52423          	sw	t3,72(a0)
   17df2:	00652c23          	sw	t1,24(a0)
   17df6:	00752e23          	sw	t2,28(a0)
   17dfa:	03052423          	sw	a6,40(a0)
   17dfe:	03152623          	sw	a7,44(a0)
   17e02:	dd10                	sw	a2,56(a0)
   17e04:	4432                	lw	s0,12(sp)
   17e06:	dd54                	sw	a3,60(a0)
   17e08:	44a2                	lw	s1,8(sp)
   17e0a:	4912                	lw	s2,4(sp)
   17e0c:	0141                	addi	sp,sp,16
   17e0e:	8082                	ret

00017e10 <__eqtf2>:
   17e10:	411c                	lw	a5,0(a0)
   17e12:	00452e03          	lw	t3,4(a0)
   17e16:	00852e83          	lw	t4,8(a0)
   17e1a:	4554                	lw	a3,12(a0)
   17e1c:	4198                	lw	a4,0(a1)
   17e1e:	0045af83          	lw	t6,4(a1)
   17e22:	0085af03          	lw	t5,8(a1)
   17e26:	00c5a883          	lw	a7,12(a1)
   17e2a:	1141                	addi	sp,sp,-16
   17e2c:	00202673          	frrm	a2
   17e30:	6521                	lui	a0,0x8
   17e32:	0106d613          	srli	a2,a3,0x10
   17e36:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17e38:	01069313          	slli	t1,a3,0x10
   17e3c:	01089593          	slli	a1,a7,0x10
   17e40:	01f6d813          	srli	a6,a3,0x1f
   17e44:	8e69                	and	a2,a2,a0
   17e46:	0108d693          	srli	a3,a7,0x10
   17e4a:	01035313          	srli	t1,t1,0x10
   17e4e:	81c1                	srli	a1,a1,0x10
   17e50:	8ee9                	and	a3,a3,a0
   17e52:	01f8d893          	srli	a7,a7,0x1f
   17e56:	00a61c63          	bne	a2,a0,17e6e <__eqtf2+0x5e>
   17e5a:	01c7e533          	or	a0,a5,t3
   17e5e:	01d56533          	or	a0,a0,t4
   17e62:	00656533          	or	a0,a0,t1
   17e66:	e51d                	bnez	a0,17e94 <__eqtf2+0x84>
   17e68:	04c69b63          	bne	a3,a2,17ebe <__eqtf2+0xae>
   17e6c:	a019                	j	17e72 <__eqtf2+0x62>
   17e6e:	04a69a63          	bne	a3,a0,17ec2 <__eqtf2+0xb2>
   17e72:	01f76533          	or	a0,a4,t6
   17e76:	01e56533          	or	a0,a0,t5
   17e7a:	8d4d                	or	a0,a0,a1
   17e7c:	c139                	beqz	a0,17ec2 <__eqtf2+0xb2>
   17e7e:	6521                	lui	a0,0x8
   17e80:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   17e82:	02a61a63          	bne	a2,a0,17eb6 <__eqtf2+0xa6>
   17e86:	01c7e7b3          	or	a5,a5,t3
   17e8a:	01d7e7b3          	or	a5,a5,t4
   17e8e:	0067e7b3          	or	a5,a5,t1
   17e92:	cb99                	beqz	a5,17ea8 <__eqtf2+0x98>
   17e94:	0342                	slli	t1,t1,0x10
   17e96:	41035313          	srai	t1,t1,0x10
   17e9a:	04035c63          	bgez	t1,17ef2 <__eqtf2+0xe2>
   17e9e:	67a1                	lui	a5,0x8
   17ea0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   17ea2:	4505                	li	a0,1
   17ea4:	04f69563          	bne	a3,a5,17eee <__eqtf2+0xde>
   17ea8:	01f76733          	or	a4,a4,t6
   17eac:	01e76733          	or	a4,a4,t5
   17eb0:	8f4d                	or	a4,a4,a1
   17eb2:	4505                	li	a0,1
   17eb4:	cf0d                	beqz	a4,17eee <__eqtf2+0xde>
   17eb6:	05c2                	slli	a1,a1,0x10
   17eb8:	85c1                	srai	a1,a1,0x10
   17eba:	0205dc63          	bgez	a1,17ef2 <__eqtf2+0xe2>
   17ebe:	4505                	li	a0,1
   17ec0:	a03d                	j	17eee <__eqtf2+0xde>
   17ec2:	4505                	li	a0,1
   17ec4:	02c69563          	bne	a3,a2,17eee <__eqtf2+0xde>
   17ec8:	02e79363          	bne	a5,a4,17eee <__eqtf2+0xde>
   17ecc:	03fe1163          	bne	t3,t6,17eee <__eqtf2+0xde>
   17ed0:	01ee9f63          	bne	t4,t5,17eee <__eqtf2+0xde>
   17ed4:	00b31d63          	bne	t1,a1,17eee <__eqtf2+0xde>
   17ed8:	03180063          	beq	a6,a7,17ef8 <__eqtf2+0xe8>
   17edc:	ea89                	bnez	a3,17eee <__eqtf2+0xde>
   17ede:	01c7e533          	or	a0,a5,t3
   17ee2:	01d56533          	or	a0,a0,t4
   17ee6:	00656533          	or	a0,a0,t1
   17eea:	00a03533          	snez	a0,a0
   17eee:	0141                	addi	sp,sp,16
   17ef0:	8082                	ret
   17ef2:	00186073          	csrsi	fflags,16
   17ef6:	b7e1                	j	17ebe <__eqtf2+0xae>
   17ef8:	4501                	li	a0,0
   17efa:	bfd5                	j	17eee <__eqtf2+0xde>

00017efc <__getf2>:
   17efc:	00052883          	lw	a7,0(a0)
   17f00:	00452303          	lw	t1,4(a0)
   17f04:	00852e03          	lw	t3,8(a0)
   17f08:	455c                	lw	a5,12(a0)
   17f0a:	0005ae83          	lw	t4,0(a1)
   17f0e:	0045af03          	lw	t5,4(a1)
   17f12:	0085af83          	lw	t6,8(a1)
   17f16:	45d4                	lw	a3,12(a1)
   17f18:	1141                	addi	sp,sp,-16
   17f1a:	00202773          	frrm	a4
   17f1e:	6721                	lui	a4,0x8
   17f20:	0107d613          	srli	a2,a5,0x10
   17f24:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17f26:	01079813          	slli	a6,a5,0x10
   17f2a:	01069293          	slli	t0,a3,0x10
   17f2e:	0106d513          	srli	a0,a3,0x10
   17f32:	8e79                	and	a2,a2,a4
   17f34:	01085813          	srli	a6,a6,0x10
   17f38:	83fd                	srli	a5,a5,0x1f
   17f3a:	0102d293          	srli	t0,t0,0x10
   17f3e:	8d79                	and	a0,a0,a4
   17f40:	82fd                	srli	a3,a3,0x1f
   17f42:	00e61963          	bne	a2,a4,17f54 <__getf2+0x58>
   17f46:	01136733          	or	a4,t1,a7
   17f4a:	01c76733          	or	a4,a4,t3
   17f4e:	01076733          	or	a4,a4,a6
   17f52:	ef35                	bnez	a4,17fce <__getf2+0xd2>
   17f54:	6721                	lui	a4,0x8
   17f56:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   17f58:	00e51963          	bne	a0,a4,17f6a <__getf2+0x6e>
   17f5c:	01eee733          	or	a4,t4,t5
   17f60:	01f76733          	or	a4,a4,t6
   17f64:	00576733          	or	a4,a4,t0
   17f68:	e33d                	bnez	a4,17fce <__getf2+0xd2>
   17f6a:	4701                	li	a4,0
   17f6c:	ea09                	bnez	a2,17f7e <__getf2+0x82>
   17f6e:	01136733          	or	a4,t1,a7
   17f72:	01c76733          	or	a4,a4,t3
   17f76:	01076733          	or	a4,a4,a6
   17f7a:	00173713          	seqz	a4,a4
   17f7e:	ed21                	bnez	a0,17fd6 <__getf2+0xda>
   17f80:	01eee5b3          	or	a1,t4,t5
   17f84:	01f5e5b3          	or	a1,a1,t6
   17f88:	0055e5b3          	or	a1,a1,t0
   17f8c:	c711                	beqz	a4,17f98 <__getf2+0x9c>
   17f8e:	c981                	beqz	a1,17f9e <__getf2+0xa2>
   17f90:	4505                	li	a0,1
   17f92:	e691                	bnez	a3,17f9e <__getf2+0xa2>
   17f94:	557d                	li	a0,-1
   17f96:	a021                	j	17f9e <__getf2+0xa2>
   17f98:	e1a1                	bnez	a1,17fd8 <__getf2+0xdc>
   17f9a:	557d                	li	a0,-1
   17f9c:	c7a1                	beqz	a5,17fe4 <__getf2+0xe8>
   17f9e:	0141                	addi	sp,sp,16
   17fa0:	8082                	ret
   17fa2:	fea647e3          	blt	a2,a0,17f90 <__getf2+0x94>
   17fa6:	ff02eae3          	bltu	t0,a6,17f9a <__getf2+0x9e>
   17faa:	00581f63          	bne	a6,t0,17fc8 <__getf2+0xcc>
   17fae:	ffcfe6e3          	bltu	t6,t3,17f9a <__getf2+0x9e>
   17fb2:	01fe1b63          	bne	t3,t6,17fc8 <__getf2+0xcc>
   17fb6:	fe6f62e3          	bltu	t5,t1,17f9a <__getf2+0x9e>
   17fba:	01e31763          	bne	t1,t5,17fc8 <__getf2+0xcc>
   17fbe:	fd1eeee3          	bltu	t4,a7,17f9a <__getf2+0x9e>
   17fc2:	4501                	li	a0,0
   17fc4:	fdd8fde3          	bgeu	a7,t4,17f9e <__getf2+0xa2>
   17fc8:	4505                	li	a0,1
   17fca:	fbf1                	bnez	a5,17f9e <__getf2+0xa2>
   17fcc:	b7e1                	j	17f94 <__getf2+0x98>
   17fce:	00186073          	csrsi	fflags,16
   17fd2:	5579                	li	a0,-2
   17fd4:	b7e9                	j	17f9e <__getf2+0xa2>
   17fd6:	ff4d                	bnez	a4,17f90 <__getf2+0x94>
   17fd8:	fcf691e3          	bne	a3,a5,17f9a <__getf2+0x9e>
   17fdc:	fcc553e3          	bge	a0,a2,17fa2 <__getf2+0xa6>
   17fe0:	557d                	li	a0,-1
   17fe2:	fed5                	bnez	a3,17f9e <__getf2+0xa2>
   17fe4:	4505                	li	a0,1
   17fe6:	bf65                	j	17f9e <__getf2+0xa2>

00017fe8 <__letf2>:
   17fe8:	00052883          	lw	a7,0(a0)
   17fec:	00452303          	lw	t1,4(a0)
   17ff0:	00852e03          	lw	t3,8(a0)
   17ff4:	455c                	lw	a5,12(a0)
   17ff6:	0005ae83          	lw	t4,0(a1)
   17ffa:	0045af03          	lw	t5,4(a1)
   17ffe:	0085af83          	lw	t6,8(a1)
   18002:	45d4                	lw	a3,12(a1)
   18004:	1141                	addi	sp,sp,-16
   18006:	00202773          	frrm	a4
   1800a:	6721                	lui	a4,0x8
   1800c:	0107d613          	srli	a2,a5,0x10
   18010:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18012:	01079813          	slli	a6,a5,0x10
   18016:	01069293          	slli	t0,a3,0x10
   1801a:	0106d513          	srli	a0,a3,0x10
   1801e:	8e79                	and	a2,a2,a4
   18020:	01085813          	srli	a6,a6,0x10
   18024:	83fd                	srli	a5,a5,0x1f
   18026:	0102d293          	srli	t0,t0,0x10
   1802a:	8d79                	and	a0,a0,a4
   1802c:	82fd                	srli	a3,a3,0x1f
   1802e:	00e61963          	bne	a2,a4,18040 <__letf2+0x58>
   18032:	01136733          	or	a4,t1,a7
   18036:	01c76733          	or	a4,a4,t3
   1803a:	01076733          	or	a4,a4,a6
   1803e:	ef35                	bnez	a4,180ba <__letf2+0xd2>
   18040:	6721                	lui	a4,0x8
   18042:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18044:	00e51963          	bne	a0,a4,18056 <__letf2+0x6e>
   18048:	01eee733          	or	a4,t4,t5
   1804c:	01f76733          	or	a4,a4,t6
   18050:	00576733          	or	a4,a4,t0
   18054:	e33d                	bnez	a4,180ba <__letf2+0xd2>
   18056:	4701                	li	a4,0
   18058:	ea09                	bnez	a2,1806a <__letf2+0x82>
   1805a:	01136733          	or	a4,t1,a7
   1805e:	01c76733          	or	a4,a4,t3
   18062:	01076733          	or	a4,a4,a6
   18066:	00173713          	seqz	a4,a4
   1806a:	ed21                	bnez	a0,180c2 <__letf2+0xda>
   1806c:	01eee5b3          	or	a1,t4,t5
   18070:	01f5e5b3          	or	a1,a1,t6
   18074:	0055e5b3          	or	a1,a1,t0
   18078:	c711                	beqz	a4,18084 <__letf2+0x9c>
   1807a:	c981                	beqz	a1,1808a <__letf2+0xa2>
   1807c:	4505                	li	a0,1
   1807e:	e691                	bnez	a3,1808a <__letf2+0xa2>
   18080:	557d                	li	a0,-1
   18082:	a021                	j	1808a <__letf2+0xa2>
   18084:	e1a1                	bnez	a1,180c4 <__letf2+0xdc>
   18086:	557d                	li	a0,-1
   18088:	c7a1                	beqz	a5,180d0 <__letf2+0xe8>
   1808a:	0141                	addi	sp,sp,16
   1808c:	8082                	ret
   1808e:	fea647e3          	blt	a2,a0,1807c <__letf2+0x94>
   18092:	ff02eae3          	bltu	t0,a6,18086 <__letf2+0x9e>
   18096:	00581f63          	bne	a6,t0,180b4 <__letf2+0xcc>
   1809a:	ffcfe6e3          	bltu	t6,t3,18086 <__letf2+0x9e>
   1809e:	01fe1b63          	bne	t3,t6,180b4 <__letf2+0xcc>
   180a2:	fe6f62e3          	bltu	t5,t1,18086 <__letf2+0x9e>
   180a6:	01e31763          	bne	t1,t5,180b4 <__letf2+0xcc>
   180aa:	fd1eeee3          	bltu	t4,a7,18086 <__letf2+0x9e>
   180ae:	4501                	li	a0,0
   180b0:	fdd8fde3          	bgeu	a7,t4,1808a <__letf2+0xa2>
   180b4:	4505                	li	a0,1
   180b6:	fbf1                	bnez	a5,1808a <__letf2+0xa2>
   180b8:	b7e1                	j	18080 <__letf2+0x98>
   180ba:	00186073          	csrsi	fflags,16
   180be:	4509                	li	a0,2
   180c0:	b7e9                	j	1808a <__letf2+0xa2>
   180c2:	ff4d                	bnez	a4,1807c <__letf2+0x94>
   180c4:	fcf691e3          	bne	a3,a5,18086 <__letf2+0x9e>
   180c8:	fcc553e3          	bge	a0,a2,1808e <__letf2+0xa6>
   180cc:	557d                	li	a0,-1
   180ce:	fed5                	bnez	a3,1808a <__letf2+0xa2>
   180d0:	4505                	li	a0,1
   180d2:	bf65                	j	1808a <__letf2+0xa2>

000180d4 <__multf3>:
   180d4:	7131                	addi	sp,sp,-192
   180d6:	d552                	sw	s4,168(sp)
   180d8:	d356                	sw	s5,164(sp)
   180da:	d15a                	sw	s6,160(sp)
   180dc:	cf5e                	sw	s7,156(sp)
   180de:	c62a                	sw	a0,12(sp)
   180e0:	419c                	lw	a5,0(a1)
   180e2:	41c8                	lw	a0,4(a1)
   180e4:	4594                	lw	a3,8(a1)
   180e6:	45d8                	lw	a4,12(a1)
   180e8:	00062a83          	lw	s5,0(a2)
   180ec:	00462b83          	lw	s7,4(a2)
   180f0:	00862b03          	lw	s6,8(a2)
   180f4:	00c62a03          	lw	s4,12(a2)
   180f8:	df06                	sw	ra,188(sp)
   180fa:	dd22                	sw	s0,184(sp)
   180fc:	db26                	sw	s1,180(sp)
   180fe:	d94a                	sw	s2,176(sp)
   18100:	d74e                	sw	s3,172(sp)
   18102:	cd62                	sw	s8,152(sp)
   18104:	cb66                	sw	s9,148(sp)
   18106:	c96a                	sw	s10,144(sp)
   18108:	c76e                	sw	s11,140(sp)
   1810a:	002024f3          	frrm	s1
   1810e:	6621                	lui	a2,0x8
   18110:	01071413          	slli	s0,a4,0x10
   18114:	8041                	srli	s0,s0,0x10
   18116:	01075913          	srli	s2,a4,0x10
   1811a:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   1811c:	d0be                	sw	a5,96(sp)
   1811e:	d2aa                	sw	a0,100(sp)
   18120:	d4b6                	sw	a3,104(sp)
   18122:	d6ba                	sw	a4,108(sp)
   18124:	d83e                	sw	a5,48(sp)
   18126:	da2a                	sw	a0,52(sp)
   18128:	dc36                	sw	a3,56(sp)
   1812a:	de22                	sw	s0,60(sp)
   1812c:	00c97933          	and	s2,s2,a2
   18130:	01f75993          	srli	s3,a4,0x1f
   18134:	02090a63          	beqz	s2,18168 <__multf3+0x94>
   18138:	10c90d63          	beq	s2,a2,18252 <__multf3+0x17e>
   1813c:	6741                	lui	a4,0x10
   1813e:	8c59                	or	s0,s0,a4
   18140:	de22                	sw	s0,60(sp)
   18142:	1818                	addi	a4,sp,48
   18144:	104c                	addi	a1,sp,36
   18146:	4754                	lw	a3,12(a4)
   18148:	4710                	lw	a2,8(a4)
   1814a:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1814c:	068e                	slli	a3,a3,0x3
   1814e:	8275                	srli	a2,a2,0x1d
   18150:	8ed1                	or	a3,a3,a2
   18152:	cb14                	sw	a3,16(a4)
   18154:	fee599e3          	bne	a1,a4,18146 <__multf3+0x72>
   18158:	078e                	slli	a5,a5,0x3
   1815a:	d83e                	sw	a5,48(sp)
   1815c:	77f1                	lui	a5,0xffffc
   1815e:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   18160:	993e                	add	s2,s2,a5
   18162:	4c01                	li	s8,0
   18164:	4401                	li	s0,0
   18166:	a211                	j	1826a <__multf3+0x196>
   18168:	00a7e733          	or	a4,a5,a0
   1816c:	8f55                	or	a4,a4,a3
   1816e:	8f41                	or	a4,a4,s0
   18170:	70070d63          	beqz	a4,1888a <__multf3+0x7b6>
   18174:	cc2d                	beqz	s0,181ee <__multf3+0x11a>
   18176:	8522                	mv	a0,s0
   18178:	108020ef          	jal	1a280 <__clzsi2>
   1817c:	ff450693          	addi	a3,a0,-12
   18180:	4056d793          	srai	a5,a3,0x5
   18184:	8afd                	andi	a3,a3,31
   18186:	c6d9                	beqz	a3,18214 <__multf3+0x140>
   18188:	5671                	li	a2,-4
   1818a:	02c78633          	mul	a2,a5,a2
   1818e:	02000813          	li	a6,32
   18192:	03010313          	addi	t1,sp,48
   18196:	40d80833          	sub	a6,a6,a3
   1819a:	00c60713          	addi	a4,a2,12
   1819e:	971a                	add	a4,a4,t1
   181a0:	40c00633          	neg	a2,a2
   181a4:	08e31863          	bne	t1,a4,18234 <__multf3+0x160>
   181a8:	fff78713          	addi	a4,a5,-1
   181ac:	078a                	slli	a5,a5,0x2
   181ae:	1810                	addi	a2,sp,48
   181b0:	05078793          	addi	a5,a5,80
   181b4:	97b2                	add	a5,a5,a2
   181b6:	5642                	lw	a2,48(sp)
   181b8:	00d616b3          	sll	a3,a2,a3
   181bc:	fad7a823          	sw	a3,-80(a5)
   181c0:	00170793          	addi	a5,a4,1
   181c4:	078a                	slli	a5,a5,0x2
   181c6:	46a1                	li	a3,8
   181c8:	1818                	addi	a4,sp,48
   181ca:	00d7e863          	bltu	a5,a3,181da <__multf3+0x106>
   181ce:	00072023          	sw	zero,0(a4)
   181d2:	00072223          	sw	zero,4(a4)
   181d6:	17e1                	addi	a5,a5,-8
   181d8:	1838                	addi	a4,sp,56
   181da:	4691                	li	a3,4
   181dc:	00d7e463          	bltu	a5,a3,181e4 <__multf3+0x110>
   181e0:	00072023          	sw	zero,0(a4)
   181e4:	7971                	lui	s2,0xffffc
   181e6:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   181e8:	40a90933          	sub	s2,s2,a0
   181ec:	bf9d                	j	18162 <__multf3+0x8e>
   181ee:	c699                	beqz	a3,181fc <__multf3+0x128>
   181f0:	8536                	mv	a0,a3
   181f2:	08e020ef          	jal	1a280 <__clzsi2>
   181f6:	02050513          	addi	a0,a0,32
   181fa:	b749                	j	1817c <__multf3+0xa8>
   181fc:	c511                	beqz	a0,18208 <__multf3+0x134>
   181fe:	082020ef          	jal	1a280 <__clzsi2>
   18202:	04050513          	addi	a0,a0,64
   18206:	bf9d                	j	1817c <__multf3+0xa8>
   18208:	853e                	mv	a0,a5
   1820a:	076020ef          	jal	1a280 <__clzsi2>
   1820e:	06050513          	addi	a0,a0,96
   18212:	b7ad                	j	1817c <__multf3+0xa8>
   18214:	5671                	li	a2,-4
   18216:	02c78633          	mul	a2,a5,a2
   1821a:	1878                	addi	a4,sp,60
   1821c:	468d                	li	a3,3
   1821e:	00c705b3          	add	a1,a4,a2
   18222:	418c                	lw	a1,0(a1)
   18224:	16fd                	addi	a3,a3,-1
   18226:	1771                	addi	a4,a4,-4
   18228:	c34c                	sw	a1,4(a4)
   1822a:	fef6dae3          	bge	a3,a5,1821e <__multf3+0x14a>
   1822e:	fff78713          	addi	a4,a5,-1
   18232:	b779                	j	181c0 <__multf3+0xec>
   18234:	430c                	lw	a1,0(a4)
   18236:	ffc72883          	lw	a7,-4(a4)
   1823a:	00c70e33          	add	t3,a4,a2
   1823e:	00d595b3          	sll	a1,a1,a3
   18242:	0108d8b3          	srl	a7,a7,a6
   18246:	0115e5b3          	or	a1,a1,a7
   1824a:	00be2023          	sw	a1,0(t3)
   1824e:	1771                	addi	a4,a4,-4
   18250:	bf91                	j	181a4 <__multf3+0xd0>
   18252:	8fc9                	or	a5,a5,a0
   18254:	8fd5                	or	a5,a5,a3
   18256:	8fc1                	or	a5,a5,s0
   18258:	62078c63          	beqz	a5,18890 <__multf3+0x7bc>
   1825c:	0442                	slli	s0,s0,0x10
   1825e:	8441                	srai	s0,s0,0x10
   18260:	fff44413          	not	s0,s0
   18264:	807d                	srli	s0,s0,0x1f
   18266:	0412                	slli	s0,s0,0x4
   18268:	4c0d                	li	s8,3
   1826a:	010a1513          	slli	a0,s4,0x10
   1826e:	6721                	lui	a4,0x8
   18270:	010a5793          	srli	a5,s4,0x10
   18274:	8141                	srli	a0,a0,0x10
   18276:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18278:	d6d2                	sw	s4,108(sp)
   1827a:	d0d6                	sw	s5,96(sp)
   1827c:	d2de                	sw	s7,100(sp)
   1827e:	d4da                	sw	s6,104(sp)
   18280:	c0d6                	sw	s5,64(sp)
   18282:	c2de                	sw	s7,68(sp)
   18284:	c4da                	sw	s6,72(sp)
   18286:	c6aa                	sw	a0,76(sp)
   18288:	8ff9                	and	a5,a5,a4
   1828a:	01fa5a13          	srli	s4,s4,0x1f
   1828e:	60078363          	beqz	a5,18894 <__multf3+0x7c0>
   18292:	6ee78863          	beq	a5,a4,18982 <__multf3+0x8ae>
   18296:	6741                	lui	a4,0x10
   18298:	8d59                	or	a0,a0,a4
   1829a:	c6aa                	sw	a0,76(sp)
   1829c:	0098                	addi	a4,sp,64
   1829e:	184c                	addi	a1,sp,52
   182a0:	4754                	lw	a3,12(a4)
   182a2:	4710                	lw	a2,8(a4)
   182a4:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   182a6:	068e                	slli	a3,a3,0x3
   182a8:	8275                	srli	a2,a2,0x1d
   182aa:	8ed1                	or	a3,a3,a2
   182ac:	cb14                	sw	a3,16(a4)
   182ae:	fee599e3          	bne	a1,a4,182a0 <__multf3+0x1cc>
   182b2:	7771                	lui	a4,0xffffc
   182b4:	0a8e                	slli	s5,s5,0x3
   182b6:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   182b8:	c0d6                	sw	s5,64(sp)
   182ba:	97ba                	add	a5,a5,a4
   182bc:	4681                	li	a3,0
   182be:	97ca                	add	a5,a5,s2
   182c0:	ca3e                	sw	a5,20(sp)
   182c2:	0785                	addi	a5,a5,1
   182c4:	c83e                	sw	a5,16(sp)
   182c6:	002c1793          	slli	a5,s8,0x2
   182ca:	8fd5                	or	a5,a5,a3
   182cc:	4729                	li	a4,10
   182ce:	70f74363          	blt	a4,a5,189d4 <__multf3+0x900>
   182d2:	4609                	li	a2,2
   182d4:	0149c733          	xor	a4,s3,s4
   182d8:	6cf64863          	blt	a2,a5,189a8 <__multf3+0x8d4>
   182dc:	17fd                	addi	a5,a5,-1
   182de:	4605                	li	a2,1
   182e0:	70f67263          	bgeu	a2,a5,189e4 <__multf3+0x910>
   182e4:	5542                	lw	a0,48(sp)
   182e6:	4306                	lw	t1,64(sp)
   182e8:	6841                	lui	a6,0x10
   182ea:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   182ee:	01055913          	srli	s2,a0,0x10
   182f2:	01035393          	srli	t2,t1,0x10
   182f6:	8d6d                	and	a0,a0,a1
   182f8:	00b37333          	and	t1,t1,a1
   182fc:	02a30633          	mul	a2,t1,a0
   18300:	026908b3          	mul	a7,s2,t1
   18304:	01065793          	srli	a5,a2,0x10
   18308:	02a386b3          	mul	a3,t2,a0
   1830c:	96c6                	add	a3,a3,a7
   1830e:	97b6                	add	a5,a5,a3
   18310:	02790bb3          	mul	s7,s2,t2
   18314:	0117f363          	bgeu	a5,a7,1831a <__multf3+0x246>
   18318:	9bc2                	add	s7,s7,a6
   1831a:	4896                	lw	a7,68(sp)
   1831c:	0107d693          	srli	a3,a5,0x10
   18320:	8fed                	and	a5,a5,a1
   18322:	8e6d                	and	a2,a2,a1
   18324:	07c2                	slli	a5,a5,0x10
   18326:	97b2                	add	a5,a5,a2
   18328:	0108df93          	srli	t6,a7,0x10
   1832c:	00b8f8b3          	and	a7,a7,a1
   18330:	031905b3          	mul	a1,s2,a7
   18334:	d03e                	sw	a5,32(sp)
   18336:	d0be                	sw	a5,96(sp)
   18338:	02af8633          	mul	a2,t6,a0
   1833c:	02a887b3          	mul	a5,a7,a0
   18340:	962e                	add	a2,a2,a1
   18342:	0107d813          	srli	a6,a5,0x10
   18346:	9832                	add	a6,a6,a2
   18348:	03f90b33          	mul	s6,s2,t6
   1834c:	00b87463          	bgeu	a6,a1,18354 <__multf3+0x280>
   18350:	6641                	lui	a2,0x10
   18352:	9b32                	add	s6,s6,a2
   18354:	01085613          	srli	a2,a6,0x10
   18358:	55d2                	lw	a1,52(sp)
   1835a:	cc32                	sw	a2,24(sp)
   1835c:	6641                	lui	a2,0x10
   1835e:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   18362:	01d87833          	and	a6,a6,t4
   18366:	01d7f7b3          	and	a5,a5,t4
   1836a:	0105d293          	srli	t0,a1,0x10
   1836e:	0842                	slli	a6,a6,0x10
   18370:	01d5f5b3          	and	a1,a1,t4
   18374:	983e                	add	a6,a6,a5
   18376:	02628a33          	mul	s4,t0,t1
   1837a:	96c2                	add	a3,a3,a6
   1837c:	026587b3          	mul	a5,a1,t1
   18380:	02b38eb3          	mul	t4,t2,a1
   18384:	0107d993          	srli	s3,a5,0x10
   18388:	9ed2                	add	t4,t4,s4
   1838a:	99f6                	add	s3,s3,t4
   1838c:	02538f33          	mul	t5,t2,t0
   18390:	0149f363          	bgeu	s3,s4,18396 <__multf3+0x2c2>
   18394:	9f32                	add	t5,t5,a2
   18396:	6c41                	lui	s8,0x10
   18398:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   1839c:	8ff1                	and	a5,a5,a2
   1839e:	0109da13          	srli	s4,s3,0x10
   183a2:	00c9f9b3          	and	s3,s3,a2
   183a6:	09c2                	slli	s3,s3,0x10
   183a8:	99be                	add	s3,s3,a5
   183aa:	02b88eb3          	mul	t4,a7,a1
   183ae:	9a7a                	add	s4,s4,t5
   183b0:	03128633          	mul	a2,t0,a7
   183b4:	010ed793          	srli	a5,t4,0x10
   183b8:	02bf8ab3          	mul	s5,t6,a1
   183bc:	9ab2                	add	s5,s5,a2
   183be:	97d6                	add	a5,a5,s5
   183c0:	025f8f33          	mul	t5,t6,t0
   183c4:	00c7f363          	bgeu	a5,a2,183ca <__multf3+0x2f6>
   183c8:	9f62                	add	t5,t5,s8
   183ca:	0107d613          	srli	a2,a5,0x10
   183ce:	967a                	add	a2,a2,t5
   183d0:	6ac1                	lui	s5,0x10
   183d2:	ce32                	sw	a2,28(sp)
   183d4:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   183d8:	8ff1                	and	a5,a5,a2
   183da:	00cefeb3          	and	t4,t4,a2
   183de:	07c2                	slli	a5,a5,0x10
   183e0:	97f6                	add	a5,a5,t4
   183e2:	d23e                	sw	a5,36(sp)
   183e4:	47a6                	lw	a5,72(sp)
   183e6:	0107dd93          	srli	s11,a5,0x10
   183ea:	00c7fd33          	and	s10,a5,a2
   183ee:	02ad0633          	mul	a2,s10,a0
   183f2:	03a90c33          	mul	s8,s2,s10
   183f6:	01065793          	srli	a5,a2,0x10
   183fa:	02ad8f33          	mul	t5,s11,a0
   183fe:	9f62                	add	t5,t5,s8
   18400:	97fa                	add	a5,a5,t5
   18402:	03b90eb3          	mul	t4,s2,s11
   18406:	0187f363          	bgeu	a5,s8,1840c <__multf3+0x338>
   1840a:	9ed6                	add	t4,t4,s5
   1840c:	0107df13          	srli	t5,a5,0x10
   18410:	6cc1                	lui	s9,0x10
   18412:	01df0e33          	add	t3,t5,t4
   18416:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   1841a:	01d7f7b3          	and	a5,a5,t4
   1841e:	01d67633          	and	a2,a2,t4
   18422:	07c2                	slli	a5,a5,0x10
   18424:	97b2                	add	a5,a5,a2
   18426:	5662                	lw	a2,56(sp)
   18428:	d472                	sw	t3,40(sp)
   1842a:	d63e                	sw	a5,44(sp)
   1842c:	01065f13          	srli	t5,a2,0x10
   18430:	01d67633          	and	a2,a2,t4
   18434:	02660ab3          	mul	s5,a2,t1
   18438:	026f0e33          	mul	t3,t5,t1
   1843c:	010ad793          	srli	a5,s5,0x10
   18440:	02c38eb3          	mul	t4,t2,a2
   18444:	9ef2                	add	t4,t4,t3
   18446:	9ebe                	add	t4,t4,a5
   18448:	03e38c33          	mul	s8,t2,t5
   1844c:	01cef363          	bgeu	t4,t3,18452 <__multf3+0x37e>
   18450:	9c66                	add	s8,s8,s9
   18452:	47e2                	lw	a5,24(sp)
   18454:	96de                	add	a3,a3,s7
   18456:	0106b833          	sltu	a6,a3,a6
   1845a:	010edc93          	srli	s9,t4,0x10
   1845e:	6e41                	lui	t3,0x10
   18460:	9c66                	add	s8,s8,s9
   18462:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   18466:	01078e33          	add	t3,a5,a6
   1846a:	013687b3          	add	a5,a3,s3
   1846e:	9e5a                	add	t3,t3,s6
   18470:	00d7b6b3          	sltu	a3,a5,a3
   18474:	cc3e                	sw	a5,24(sp)
   18476:	d2be                	sw	a5,100(sp)
   18478:	5792                	lw	a5,36(sp)
   1847a:	9a72                	add	s4,s4,t3
   1847c:	96d2                	add	a3,a3,s4
   1847e:	01ca39b3          	sltu	s3,s4,t3
   18482:	0146ba33          	sltu	s4,a3,s4
   18486:	010e3e33          	sltu	t3,t3,a6
   1848a:	00f68833          	add	a6,a3,a5
   1848e:	47f2                	lw	a5,28(sp)
   18490:	0149e9b3          	or	s3,s3,s4
   18494:	9e4e                	add	t3,t3,s3
   18496:	00fe09b3          	add	s3,t3,a5
   1849a:	57b2                	lw	a5,44(sp)
   1849c:	5a22                	lw	s4,40(sp)
   1849e:	00d836b3          	sltu	a3,a6,a3
   184a2:	019efeb3          	and	t4,t4,s9
   184a6:	96ce                	add	a3,a3,s3
   184a8:	97c2                	add	a5,a5,a6
   184aa:	0ec2                	slli	t4,t4,0x10
   184ac:	019afab3          	and	s5,s5,s9
   184b0:	9a36                	add	s4,s4,a3
   184b2:	0107b833          	sltu	a6,a5,a6
   184b6:	9ed6                	add	t4,t4,s5
   184b8:	9ebe                	add	t4,t4,a5
   184ba:	9852                	add	a6,a6,s4
   184bc:	9c42                	add	s8,s8,a6
   184be:	00feb7b3          	sltu	a5,t4,a5
   184c2:	ce76                	sw	t4,28(sp)
   184c4:	d4f6                	sw	t4,104(sp)
   184c6:	4eb6                	lw	t4,76(sp)
   184c8:	01c9be33          	sltu	t3,s3,t3
   184cc:	97e2                	add	a5,a5,s8
   184ce:	0136b9b3          	sltu	s3,a3,s3
   184d2:	00da36b3          	sltu	a3,s4,a3
   184d6:	01483a33          	sltu	s4,a6,s4
   184da:	013e69b3          	or	s3,t3,s3
   184de:	0146e6b3          	or	a3,a3,s4
   184e2:	010c3833          	sltu	a6,s8,a6
   184e6:	0187bc33          	sltu	s8,a5,s8
   184ea:	96ce                	add	a3,a3,s3
   184ec:	01886833          	or	a6,a6,s8
   184f0:	010ed993          	srli	s3,t4,0x10
   184f4:	019efeb3          	and	t4,t4,s9
   184f8:	03d90a33          	mul	s4,s2,t4
   184fc:	00d80e33          	add	t3,a6,a3
   18500:	02ae86b3          	mul	a3,t4,a0
   18504:	02a98533          	mul	a0,s3,a0
   18508:	0106d813          	srli	a6,a3,0x10
   1850c:	9552                	add	a0,a0,s4
   1850e:	982a                	add	a6,a6,a0
   18510:	03390933          	mul	s2,s2,s3
   18514:	01487463          	bgeu	a6,s4,1851c <__multf3+0x448>
   18518:	6541                	lui	a0,0x10
   1851a:	992a                	add	s2,s2,a0
   1851c:	01085513          	srli	a0,a6,0x10
   18520:	954a                	add	a0,a0,s2
   18522:	5a72                	lw	s4,60(sp)
   18524:	6ac1                	lui	s5,0x10
   18526:	d22a                	sw	a0,36(sp)
   18528:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   1852c:	00a87833          	and	a6,a6,a0
   18530:	010a5913          	srli	s2,s4,0x10
   18534:	0842                	slli	a6,a6,0x10
   18536:	8ee9                	and	a3,a3,a0
   18538:	00aa7a33          	and	s4,s4,a0
   1853c:	96c2                	add	a3,a3,a6
   1853e:	026a0533          	mul	a0,s4,t1
   18542:	d436                	sw	a3,40(sp)
   18544:	02690333          	mul	t1,s2,t1
   18548:	01055693          	srli	a3,a0,0x10
   1854c:	03238833          	mul	a6,t2,s2
   18550:	034383b3          	mul	t2,t2,s4
   18554:	939a                	add	t2,t2,t1
   18556:	969e                	add	a3,a3,t2
   18558:	0066f363          	bgeu	a3,t1,1855e <__multf3+0x48a>
   1855c:	9856                	add	a6,a6,s5
   1855e:	0106da93          	srli	s5,a3,0x10
   18562:	6bc1                	lui	s7,0x10
   18564:	9ac2                	add	s5,s5,a6
   18566:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   1856a:	01057533          	and	a0,a0,a6
   1856e:	0106f6b3          	and	a3,a3,a6
   18572:	03a28333          	mul	t1,t0,s10
   18576:	06c2                	slli	a3,a3,0x10
   18578:	96aa                	add	a3,a3,a0
   1857a:	03a58833          	mul	a6,a1,s10
   1857e:	02bd83b3          	mul	t2,s11,a1
   18582:	01085513          	srli	a0,a6,0x10
   18586:	939a                	add	t2,t2,t1
   18588:	951e                	add	a0,a0,t2
   1858a:	03b28b33          	mul	s6,t0,s11
   1858e:	00657363          	bgeu	a0,t1,18594 <__multf3+0x4c0>
   18592:	9b5e                	add	s6,s6,s7
   18594:	6c41                	lui	s8,0x10
   18596:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   1859a:	01055393          	srli	t2,a0,0x10
   1859e:	00657533          	and	a0,a0,t1
   185a2:	00687833          	and	a6,a6,t1
   185a6:	0542                	slli	a0,a0,0x10
   185a8:	93da                	add	t2,t2,s6
   185aa:	02cf8333          	mul	t1,t6,a2
   185ae:	9542                	add	a0,a0,a6
   185b0:	031f0b33          	mul	s6,t5,a7
   185b4:	02c88833          	mul	a6,a7,a2
   185b8:	935a                	add	t1,t1,s6
   185ba:	01085c93          	srli	s9,a6,0x10
   185be:	9366                	add	t1,t1,s9
   185c0:	03ef8bb3          	mul	s7,t6,t5
   185c4:	01637363          	bgeu	t1,s6,185ca <__multf3+0x4f6>
   185c8:	9be2                	add	s7,s7,s8
   185ca:	01035b13          	srli	s6,t1,0x10
   185ce:	9b5e                	add	s6,s6,s7
   185d0:	6bc1                	lui	s7,0x10
   185d2:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   185d6:	01837333          	and	t1,t1,s8
   185da:	0342                	slli	t1,t1,0x10
   185dc:	01887833          	and	a6,a6,s8
   185e0:	981a                	add	a6,a6,t1
   185e2:	5322                	lw	t1,40(sp)
   185e4:	5c12                	lw	s8,36(sp)
   185e6:	933e                	add	t1,t1,a5
   185e8:	9c72                	add	s8,s8,t3
   185ea:	00f337b3          	sltu	a5,t1,a5
   185ee:	97e2                	add	a5,a5,s8
   185f0:	969a                	add	a3,a3,t1
   185f2:	9abe                	add	s5,s5,a5
   185f4:	0066b333          	sltu	t1,a3,t1
   185f8:	9356                	add	t1,t1,s5
   185fa:	9536                	add	a0,a0,a3
   185fc:	939a                	add	t2,t2,t1
   185fe:	00d536b3          	sltu	a3,a0,a3
   18602:	969e                	add	a3,a3,t2
   18604:	982a                	add	a6,a6,a0
   18606:	01cc3e33          	sltu	t3,s8,t3
   1860a:	9b36                	add	s6,s6,a3
   1860c:	0187bc33          	sltu	s8,a5,s8
   18610:	00a83533          	sltu	a0,a6,a0
   18614:	00fab7b3          	sltu	a5,s5,a5
   18618:	01533ab3          	sltu	s5,t1,s5
   1861c:	018e6c33          	or	s8,t3,s8
   18620:	0157e7b3          	or	a5,a5,s5
   18624:	0063b333          	sltu	t1,t2,t1
   18628:	955a                	add	a0,a0,s6
   1862a:	0076b3b3          	sltu	t2,a3,t2
   1862e:	97e2                	add	a5,a5,s8
   18630:	00736333          	or	t1,t1,t2
   18634:	00db36b3          	sltu	a3,s6,a3
   18638:	01653b33          	sltu	s6,a0,s6
   1863c:	00f303b3          	add	t2,t1,a5
   18640:	0166e6b3          	or	a3,a3,s6
   18644:	00768333          	add	t1,a3,t2
   18648:	03af0e33          	mul	t3,t5,s10
   1864c:	d6c2                	sw	a6,108(sp)
   1864e:	03a606b3          	mul	a3,a2,s10
   18652:	02cd8ab3          	mul	s5,s11,a2
   18656:	0106d793          	srli	a5,a3,0x10
   1865a:	9af2                	add	s5,s5,t3
   1865c:	97d6                	add	a5,a5,s5
   1865e:	03ed83b3          	mul	t2,s11,t5
   18662:	01c7f363          	bgeu	a5,t3,18668 <__multf3+0x594>
   18666:	93de                	add	t2,t2,s7
   18668:	0107de13          	srli	t3,a5,0x10
   1866c:	6ac1                	lui	s5,0x10
   1866e:	9e1e                	add	t3,t3,t2
   18670:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   18674:	0077f7b3          	and	a5,a5,t2
   18678:	0076f6b3          	and	a3,a3,t2
   1867c:	07c2                	slli	a5,a5,0x10
   1867e:	03d28b33          	mul	s6,t0,t4
   18682:	97b6                	add	a5,a5,a3
   18684:	02be86b3          	mul	a3,t4,a1
   18688:	02b985b3          	mul	a1,s3,a1
   1868c:	0106d393          	srli	t2,a3,0x10
   18690:	95da                	add	a1,a1,s6
   18692:	93ae                	add	t2,t2,a1
   18694:	033282b3          	mul	t0,t0,s3
   18698:	0163f363          	bgeu	t2,s6,1869e <__multf3+0x5ca>
   1869c:	92d6                	add	t0,t0,s5
   1869e:	0103d593          	srli	a1,t2,0x10
   186a2:	6b41                	lui	s6,0x10
   186a4:	92ae                	add	t0,t0,a1
   186a6:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   186aa:	8eed                	and	a3,a3,a1
   186ac:	00b3f3b3          	and	t2,t2,a1
   186b0:	03c2                	slli	t2,t2,0x10
   186b2:	031a05b3          	mul	a1,s4,a7
   186b6:	93b6                	add	t2,t2,a3
   186b8:	031908b3          	mul	a7,s2,a7
   186bc:	0105d693          	srli	a3,a1,0x10
   186c0:	032f8ab3          	mul	s5,t6,s2
   186c4:	034f8fb3          	mul	t6,t6,s4
   186c8:	9fc6                	add	t6,t6,a7
   186ca:	96fe                	add	a3,a3,t6
   186cc:	0116f363          	bgeu	a3,a7,186d2 <__multf3+0x5fe>
   186d0:	9ada                	add	s5,s5,s6
   186d2:	0106df93          	srli	t6,a3,0x10
   186d6:	68c1                	lui	a7,0x10
   186d8:	9fd6                	add	t6,t6,s5
   186da:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   186de:	0156f6b3          	and	a3,a3,s5
   186e2:	0155f5b3          	and	a1,a1,s5
   186e6:	06c2                	slli	a3,a3,0x10
   186e8:	03df0ab3          	mul	s5,t5,t4
   186ec:	96ae                	add	a3,a3,a1
   186ee:	03d605b3          	mul	a1,a2,t4
   186f2:	02c98633          	mul	a2,s3,a2
   186f6:	01560b33          	add	s6,a2,s5
   186fa:	0105d613          	srli	a2,a1,0x10
   186fe:	965a                	add	a2,a2,s6
   18700:	033f0f33          	mul	t5,t5,s3
   18704:	01567363          	bgeu	a2,s5,1870a <__multf3+0x636>
   18708:	9f46                	add	t5,t5,a7
   1870a:	6ac1                	lui	s5,0x10
   1870c:	01065893          	srli	a7,a2,0x10
   18710:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   18714:	9f46                	add	t5,t5,a7
   18716:	016678b3          	and	a7,a2,s6
   1871a:	0165f5b3          	and	a1,a1,s6
   1871e:	08c2                	slli	a7,a7,0x10
   18720:	03aa0633          	mul	a2,s4,s10
   18724:	98ae                	add	a7,a7,a1
   18726:	03a90bb3          	mul	s7,s2,s10
   1872a:	01065c13          	srli	s8,a2,0x10
   1872e:	034d85b3          	mul	a1,s11,s4
   18732:	95de                	add	a1,a1,s7
   18734:	95e2                	add	a1,a1,s8
   18736:	032d8b33          	mul	s6,s11,s2
   1873a:	0175f363          	bgeu	a1,s7,18740 <__multf3+0x66c>
   1873e:	9b56                	add	s6,s6,s5
   18740:	97aa                	add	a5,a5,a0
   18742:	9e1a                	add	t3,t3,t1
   18744:	00a7b533          	sltu	a0,a5,a0
   18748:	9572                	add	a0,a0,t3
   1874a:	93be                	add	t2,t2,a5
   1874c:	92aa                	add	t0,t0,a0
   1874e:	00f3b7b3          	sltu	a5,t2,a5
   18752:	9796                	add	a5,a5,t0
   18754:	006e3333          	sltu	t1,t3,t1
   18758:	01c53e33          	sltu	t3,a0,t3
   1875c:	00a2b533          	sltu	a0,t0,a0
   18760:	0057b2b3          	sltu	t0,a5,t0
   18764:	00556533          	or	a0,a0,t0
   18768:	01c36333          	or	t1,t1,t3
   1876c:	932a                	add	t1,t1,a0
   1876e:	03da0533          	mul	a0,s4,t4
   18772:	969e                	add	a3,a3,t2
   18774:	9fbe                	add	t6,t6,a5
   18776:	0105da93          	srli	s5,a1,0x10
   1877a:	d8b6                	sw	a3,112(sp)
   1877c:	0076b6b3          	sltu	a3,a3,t2
   18780:	96fe                	add	a3,a3,t6
   18782:	9ada                	add	s5,s5,s6
   18784:	6b41                	lui	s6,0x10
   18786:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   1878a:	03d90eb3          	mul	t4,s2,t4
   1878e:	00ffb7b3          	sltu	a5,t6,a5
   18792:	01f6bfb3          	sltu	t6,a3,t6
   18796:	0175f5b3          	and	a1,a1,s7
   1879a:	01f7e7b3          	or	a5,a5,t6
   1879e:	98b6                	add	a7,a7,a3
   187a0:	05c2                	slli	a1,a1,0x10
   187a2:	979a                	add	a5,a5,t1
   187a4:	01767633          	and	a2,a2,s7
   187a8:	9f3e                	add	t5,t5,a5
   187aa:	03298933          	mul	s2,s3,s2
   187ae:	962e                	add	a2,a2,a1
   187b0:	00d8b6b3          	sltu	a3,a7,a3
   187b4:	96fa                	add	a3,a3,t5
   187b6:	9646                	add	a2,a2,a7
   187b8:	00ff37b3          	sltu	a5,t5,a5
   187bc:	9ab6                	add	s5,s5,a3
   187be:	01e6bf33          	sltu	t5,a3,t5
   187c2:	dab2                	sw	a2,116(sp)
   187c4:	01163633          	sltu	a2,a2,a7
   187c8:	034989b3          	mul	s3,s3,s4
   187cc:	01e7e5b3          	or	a1,a5,t5
   187d0:	9656                	add	a2,a2,s5
   187d2:	01055793          	srli	a5,a0,0x10
   187d6:	00dab6b3          	sltu	a3,s5,a3
   187da:	01563ab3          	sltu	s5,a2,s5
   187de:	0156e6b3          	or	a3,a3,s5
   187e2:	99f6                	add	s3,s3,t4
   187e4:	97ce                	add	a5,a5,s3
   187e6:	01d7f363          	bgeu	a5,t4,187ec <__multf3+0x718>
   187ea:	995a                	add	s2,s2,s6
   187ec:	0107d893          	srli	a7,a5,0x10
   187f0:	95c6                	add	a1,a1,a7
   187f2:	68c1                	lui	a7,0x10
   187f4:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   187f6:	0117f7b3          	and	a5,a5,a7
   187fa:	07c2                	slli	a5,a5,0x10
   187fc:	01157533          	and	a0,a0,a7
   18800:	97aa                	add	a5,a5,a0
   18802:	97b2                	add	a5,a5,a2
   18804:	96ae                	add	a3,a3,a1
   18806:	00c7b633          	sltu	a2,a5,a2
   1880a:	9636                	add	a2,a2,a3
   1880c:	dcbe                	sw	a5,120(sp)
   1880e:	46e2                	lw	a3,24(sp)
   18810:	5782                	lw	a5,32(sp)
   18812:	964a                	add	a2,a2,s2
   18814:	0836                	slli	a6,a6,0xd
   18816:	8fd5                	or	a5,a5,a3
   18818:	46f2                	lw	a3,28(sp)
   1881a:	deb2                	sw	a2,124(sp)
   1881c:	188c                	addi	a1,sp,112
   1881e:	8fd5                	or	a5,a5,a3
   18820:	00f86833          	or	a6,a6,a5
   18824:	109c                	addi	a5,sp,96
   18826:	47d4                	lw	a3,12(a5)
   18828:	4b90                	lw	a2,16(a5)
   1882a:	82cd                	srli	a3,a3,0x13
   1882c:	0636                	slli	a2,a2,0xd
   1882e:	8ed1                	or	a3,a3,a2
   18830:	c394                	sw	a3,0(a5)
   18832:	0791                	addi	a5,a5,4
   18834:	fef599e3          	bne	a1,a5,18826 <__multf3+0x752>
   18838:	5786                	lw	a5,96(sp)
   1883a:	01003833          	snez	a6,a6
   1883e:	56b6                	lw	a3,108(sp)
   18840:	00f86833          	or	a6,a6,a5
   18844:	57a6                	lw	a5,104(sp)
   18846:	ceb6                	sw	a3,92(sp)
   18848:	c8c2                	sw	a6,80(sp)
   1884a:	ccbe                	sw	a5,88(sp)
   1884c:	5796                	lw	a5,100(sp)
   1884e:	cabe                	sw	a5,84(sp)
   18850:	00b69793          	slli	a5,a3,0xb
   18854:	0207d863          	bgez	a5,18884 <__multf3+0x7b0>
   18858:	087e                	slli	a6,a6,0x1f
   1885a:	089c                	addi	a5,sp,80
   1885c:	08e8                	addi	a0,sp,92
   1885e:	4390                	lw	a2,0(a5)
   18860:	43cc                	lw	a1,4(a5)
   18862:	8205                	srli	a2,a2,0x1
   18864:	05fe                	slli	a1,a1,0x1f
   18866:	8e4d                	or	a2,a2,a1
   18868:	c390                	sw	a2,0(a5)
   1886a:	0791                	addi	a5,a5,4
   1886c:	fef519e3          	bne	a0,a5,1885e <__multf3+0x78a>
   18870:	47c6                	lw	a5,80(sp)
   18872:	01003833          	snez	a6,a6
   18876:	8285                	srli	a3,a3,0x1
   18878:	0107e7b3          	or	a5,a5,a6
   1887c:	c8be                	sw	a5,80(sp)
   1887e:	47c2                	lw	a5,16(sp)
   18880:	ceb6                	sw	a3,92(sp)
   18882:	ca3e                	sw	a5,20(sp)
   18884:	47d2                	lw	a5,20(sp)
   18886:	c83e                	sw	a5,16(sp)
   18888:	aa41                	j	18a18 <__multf3+0x944>
   1888a:	4901                	li	s2,0
   1888c:	4c05                	li	s8,1
   1888e:	b8d9                	j	18164 <__multf3+0x90>
   18890:	4c09                	li	s8,2
   18892:	b8c9                	j	18164 <__multf3+0x90>
   18894:	017ae7b3          	or	a5,s5,s7
   18898:	0167e7b3          	or	a5,a5,s6
   1889c:	8fc9                	or	a5,a5,a0
   1889e:	10078263          	beqz	a5,189a2 <__multf3+0x8ce>
   188a2:	c93d                	beqz	a0,18918 <__multf3+0x844>
   188a4:	1dd010ef          	jal	1a280 <__clzsi2>
   188a8:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   188ac:	4056d793          	srai	a5,a3,0x5
   188b0:	8afd                	andi	a3,a3,31
   188b2:	cac9                	beqz	a3,18944 <__multf3+0x870>
   188b4:	5671                	li	a2,-4
   188b6:	02c78633          	mul	a2,a5,a2
   188ba:	02000813          	li	a6,32
   188be:	04010313          	addi	t1,sp,64
   188c2:	40d80833          	sub	a6,a6,a3
   188c6:	00c60713          	addi	a4,a2,12
   188ca:	971a                	add	a4,a4,t1
   188cc:	40c00633          	neg	a2,a2
   188d0:	08e31a63          	bne	t1,a4,18964 <__multf3+0x890>
   188d4:	fff78713          	addi	a4,a5,-1
   188d8:	078a                	slli	a5,a5,0x2
   188da:	1810                	addi	a2,sp,48
   188dc:	05078793          	addi	a5,a5,80
   188e0:	97b2                	add	a5,a5,a2
   188e2:	4606                	lw	a2,64(sp)
   188e4:	00d616b3          	sll	a3,a2,a3
   188e8:	fcd7a023          	sw	a3,-64(a5)
   188ec:	00170793          	addi	a5,a4,1
   188f0:	078a                	slli	a5,a5,0x2
   188f2:	46a1                	li	a3,8
   188f4:	0098                	addi	a4,sp,64
   188f6:	00d7e863          	bltu	a5,a3,18906 <__multf3+0x832>
   188fa:	00072023          	sw	zero,0(a4)
   188fe:	00072223          	sw	zero,4(a4)
   18902:	17e1                	addi	a5,a5,-8
   18904:	00b8                	addi	a4,sp,72
   18906:	4691                	li	a3,4
   18908:	00d7e463          	bltu	a5,a3,18910 <__multf3+0x83c>
   1890c:	00072023          	sw	zero,0(a4)
   18910:	77f1                	lui	a5,0xffffc
   18912:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   18914:	8f89                	sub	a5,a5,a0
   18916:	b25d                	j	182bc <__multf3+0x1e8>
   18918:	000b0863          	beqz	s6,18928 <__multf3+0x854>
   1891c:	855a                	mv	a0,s6
   1891e:	163010ef          	jal	1a280 <__clzsi2>
   18922:	02050513          	addi	a0,a0,32
   18926:	b749                	j	188a8 <__multf3+0x7d4>
   18928:	000b8863          	beqz	s7,18938 <__multf3+0x864>
   1892c:	855e                	mv	a0,s7
   1892e:	153010ef          	jal	1a280 <__clzsi2>
   18932:	04050513          	addi	a0,a0,64
   18936:	bf8d                	j	188a8 <__multf3+0x7d4>
   18938:	8556                	mv	a0,s5
   1893a:	147010ef          	jal	1a280 <__clzsi2>
   1893e:	06050513          	addi	a0,a0,96
   18942:	b79d                	j	188a8 <__multf3+0x7d4>
   18944:	5671                	li	a2,-4
   18946:	02c78633          	mul	a2,a5,a2
   1894a:	00f8                	addi	a4,sp,76
   1894c:	468d                	li	a3,3
   1894e:	00c705b3          	add	a1,a4,a2
   18952:	418c                	lw	a1,0(a1)
   18954:	16fd                	addi	a3,a3,-1
   18956:	1771                	addi	a4,a4,-4
   18958:	c34c                	sw	a1,4(a4)
   1895a:	fef6dae3          	bge	a3,a5,1894e <__multf3+0x87a>
   1895e:	fff78713          	addi	a4,a5,-1
   18962:	b769                	j	188ec <__multf3+0x818>
   18964:	430c                	lw	a1,0(a4)
   18966:	ffc72883          	lw	a7,-4(a4)
   1896a:	00c70e33          	add	t3,a4,a2
   1896e:	00d595b3          	sll	a1,a1,a3
   18972:	0108d8b3          	srl	a7,a7,a6
   18976:	0115e5b3          	or	a1,a1,a7
   1897a:	00be2023          	sw	a1,0(t3)
   1897e:	1771                	addi	a4,a4,-4
   18980:	bf81                	j	188d0 <__multf3+0x7fc>
   18982:	017aeab3          	or	s5,s5,s7
   18986:	016aeab3          	or	s5,s5,s6
   1898a:	00aaeab3          	or	s5,s5,a0
   1898e:	4689                	li	a3,2
   18990:	920a87e3          	beqz	s5,182be <__multf3+0x1ea>
   18994:	0542                	slli	a0,a0,0x10
   18996:	8541                	srai	a0,a0,0x10
   18998:	468d                	li	a3,3
   1899a:	920542e3          	bltz	a0,182be <__multf3+0x1ea>
   1899e:	4441                	li	s0,16
   189a0:	ba39                	j	182be <__multf3+0x1ea>
   189a2:	4781                	li	a5,0
   189a4:	4685                	li	a3,1
   189a6:	ba21                	j	182be <__multf3+0x1ea>
   189a8:	4605                	li	a2,1
   189aa:	00f617b3          	sll	a5,a2,a5
   189ae:	5307f613          	andi	a2,a5,1328
   189b2:	e231                	bnez	a2,189f6 <__multf3+0x922>
   189b4:	0887f613          	andi	a2,a5,136
   189b8:	e60d                	bnez	a2,189e2 <__multf3+0x90e>
   189ba:	2407f793          	andi	a5,a5,576
   189be:	920783e3          	beqz	a5,182e4 <__multf3+0x210>
   189c2:	4441                	li	s0,16
   189c4:	67a1                	lui	a5,0x8
   189c6:	cebe                	sw	a5,92(sp)
   189c8:	cc82                	sw	zero,88(sp)
   189ca:	ca82                	sw	zero,84(sp)
   189cc:	c882                	sw	zero,80(sp)
   189ce:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   189d0:	4701                	li	a4,0
   189d2:	a8e1                	j	18aaa <__multf3+0x9d6>
   189d4:	473d                	li	a4,15
   189d6:	fee787e3          	beq	a5,a4,189c4 <__multf3+0x8f0>
   189da:	462d                	li	a2,11
   189dc:	874e                	mv	a4,s3
   189de:	00c79c63          	bne	a5,a2,189f6 <__multf3+0x922>
   189e2:	8752                	mv	a4,s4
   189e4:	4786                	lw	a5,64(sp)
   189e6:	8c36                	mv	s8,a3
   189e8:	c8be                	sw	a5,80(sp)
   189ea:	4796                	lw	a5,68(sp)
   189ec:	cabe                	sw	a5,84(sp)
   189ee:	47a6                	lw	a5,72(sp)
   189f0:	ccbe                	sw	a5,88(sp)
   189f2:	47b6                	lw	a5,76(sp)
   189f4:	a801                	j	18a04 <__multf3+0x930>
   189f6:	57c2                	lw	a5,48(sp)
   189f8:	c8be                	sw	a5,80(sp)
   189fa:	57d2                	lw	a5,52(sp)
   189fc:	cabe                	sw	a5,84(sp)
   189fe:	57e2                	lw	a5,56(sp)
   18a00:	ccbe                	sw	a5,88(sp)
   18a02:	57f2                	lw	a5,60(sp)
   18a04:	cebe                	sw	a5,92(sp)
   18a06:	4789                	li	a5,2
   18a08:	34fc0d63          	beq	s8,a5,18d62 <__multf3+0xc8e>
   18a0c:	478d                	li	a5,3
   18a0e:	fafc0be3          	beq	s8,a5,189c4 <__multf3+0x8f0>
   18a12:	4785                	li	a5,1
   18a14:	34fc0263          	beq	s8,a5,18d58 <__multf3+0xc84>
   18a18:	46c2                	lw	a3,16(sp)
   18a1a:	6791                	lui	a5,0x4
   18a1c:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   18a1e:	97b6                	add	a5,a5,a3
   18a20:	10f05763          	blez	a5,18b2e <__multf3+0xa5a>
   18a24:	4646                	lw	a2,80(sp)
   18a26:	00767693          	andi	a3,a2,7
   18a2a:	c2a1                	beqz	a3,18a6a <__multf3+0x996>
   18a2c:	4509                	li	a0,2
   18a2e:	46d6                	lw	a3,84(sp)
   18a30:	45f6                	lw	a1,92(sp)
   18a32:	0ca48563          	beq	s1,a0,18afc <__multf3+0xa28>
   18a36:	450d                	li	a0,3
   18a38:	0aa48c63          	beq	s1,a0,18af0 <__multf3+0xa1c>
   18a3c:	e48d                	bnez	s1,18a66 <__multf3+0x992>
   18a3e:	00f67513          	andi	a0,a2,15
   18a42:	4811                	li	a6,4
   18a44:	03050163          	beq	a0,a6,18a66 <__multf3+0x992>
   18a48:	0611                	addi	a2,a2,4
   18a4a:	c8b2                	sw	a2,80(sp)
   18a4c:	00463613          	sltiu	a2,a2,4
   18a50:	96b2                	add	a3,a3,a2
   18a52:	cab6                	sw	a3,84(sp)
   18a54:	00c6b6b3          	sltu	a3,a3,a2
   18a58:	4666                	lw	a2,88(sp)
   18a5a:	96b2                	add	a3,a3,a2
   18a5c:	ccb6                	sw	a3,88(sp)
   18a5e:	00c6b6b3          	sltu	a3,a3,a2
   18a62:	96ae                	add	a3,a3,a1
   18a64:	ceb6                	sw	a3,92(sp)
   18a66:	00146413          	ori	s0,s0,1
   18a6a:	46f6                	lw	a3,92(sp)
   18a6c:	00b69613          	slli	a2,a3,0xb
   18a70:	00065a63          	bgez	a2,18a84 <__multf3+0x9b0>
   18a74:	fff007b7          	lui	a5,0xfff00
   18a78:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee45a3>
   18a7a:	8efd                	and	a3,a3,a5
   18a7c:	ceb6                	sw	a3,92(sp)
   18a7e:	46c2                	lw	a3,16(sp)
   18a80:	6791                	lui	a5,0x4
   18a82:	97b6                	add	a5,a5,a3
   18a84:	0894                	addi	a3,sp,80
   18a86:	08e8                	addi	a0,sp,92
   18a88:	4290                	lw	a2,0(a3)
   18a8a:	42cc                	lw	a1,4(a3)
   18a8c:	820d                	srli	a2,a2,0x3
   18a8e:	05f6                	slli	a1,a1,0x1d
   18a90:	8e4d                	or	a2,a2,a1
   18a92:	c290                	sw	a2,0(a3)
   18a94:	0691                	addi	a3,a3,4
   18a96:	fed519e3          	bne	a0,a3,18a88 <__multf3+0x9b4>
   18a9a:	6621                	lui	a2,0x8
   18a9c:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   18a9e:	46f6                	lw	a3,92(sp)
   18aa0:	65a1                	lui	a1,0x8
   18aa2:	04f64f63          	blt	a2,a5,18b00 <__multf3+0xa2c>
   18aa6:	828d                	srli	a3,a3,0x3
   18aa8:	ceb6                	sw	a3,92(sp)
   18aaa:	4576                	lw	a0,92(sp)
   18aac:	073e                	slli	a4,a4,0xf
   18aae:	8f5d                	or	a4,a4,a5
   18ab0:	06a11623          	sh	a0,108(sp)
   18ab4:	06e11723          	sh	a4,110(sp)
   18ab8:	45c6                	lw	a1,80(sp)
   18aba:	4656                	lw	a2,84(sp)
   18abc:	46e6                	lw	a3,88(sp)
   18abe:	57b6                	lw	a5,108(sp)
   18ac0:	c019                	beqz	s0,18ac6 <__multf3+0x9f2>
   18ac2:	00142073          	csrs	fflags,s0
   18ac6:	4732                	lw	a4,12(sp)
   18ac8:	50fa                	lw	ra,188(sp)
   18aca:	546a                	lw	s0,184(sp)
   18acc:	c30c                	sw	a1,0(a4)
   18ace:	c350                	sw	a2,4(a4)
   18ad0:	c714                	sw	a3,8(a4)
   18ad2:	c75c                	sw	a5,12(a4)
   18ad4:	54da                	lw	s1,180(sp)
   18ad6:	594a                	lw	s2,176(sp)
   18ad8:	59ba                	lw	s3,172(sp)
   18ada:	5a2a                	lw	s4,168(sp)
   18adc:	5a9a                	lw	s5,164(sp)
   18ade:	5b0a                	lw	s6,160(sp)
   18ae0:	4bfa                	lw	s7,156(sp)
   18ae2:	4c6a                	lw	s8,152(sp)
   18ae4:	4cda                	lw	s9,148(sp)
   18ae6:	4d4a                	lw	s10,144(sp)
   18ae8:	4dba                	lw	s11,140(sp)
   18aea:	853a                	mv	a0,a4
   18aec:	6129                	addi	sp,sp,192
   18aee:	8082                	ret
   18af0:	fb3d                	bnez	a4,18a66 <__multf3+0x992>
   18af2:	0621                	addi	a2,a2,8
   18af4:	c8b2                	sw	a2,80(sp)
   18af6:	00863613          	sltiu	a2,a2,8
   18afa:	bf99                	j	18a50 <__multf3+0x97c>
   18afc:	d72d                	beqz	a4,18a66 <__multf3+0x992>
   18afe:	bfd5                	j	18af2 <__multf3+0xa1e>
   18b00:	4789                	li	a5,2
   18b02:	02f48463          	beq	s1,a5,18b2a <__multf3+0xa56>
   18b06:	478d                	li	a5,3
   18b08:	00f48763          	beq	s1,a5,18b16 <__multf3+0xa42>
   18b0c:	e491                	bnez	s1,18b18 <__multf3+0xa44>
   18b0e:	4681                	li	a3,0
   18b10:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   18b14:	a021                	j	18b1c <__multf3+0xa48>
   18b16:	df65                	beqz	a4,18b0e <__multf3+0xa3a>
   18b18:	56fd                	li	a3,-1
   18b1a:	87b2                	mv	a5,a2
   18b1c:	ceb6                	sw	a3,92(sp)
   18b1e:	ccb6                	sw	a3,88(sp)
   18b20:	cab6                	sw	a3,84(sp)
   18b22:	c8b6                	sw	a3,80(sp)
   18b24:	00546413          	ori	s0,s0,5
   18b28:	b749                	j	18aaa <__multf3+0x9d6>
   18b2a:	f375                	bnez	a4,18b0e <__multf3+0xa3a>
   18b2c:	b7f5                	j	18b18 <__multf3+0xa44>
   18b2e:	4685                	li	a3,1
   18b30:	ebb9                	bnez	a5,18b86 <__multf3+0xab2>
   18b32:	4646                	lw	a2,80(sp)
   18b34:	46f6                	lw	a3,92(sp)
   18b36:	00767593          	andi	a1,a2,7
   18b3a:	c1b1                	beqz	a1,18b7e <__multf3+0xaaa>
   18b3c:	4809                	li	a6,2
   18b3e:	45d6                	lw	a1,84(sp)
   18b40:	4566                	lw	a0,88(sp)
   18b42:	00146413          	ori	s0,s0,1
   18b46:	03048b63          	beq	s1,a6,18b7c <__multf3+0xaa8>
   18b4a:	480d                	li	a6,3
   18b4c:	03048363          	beq	s1,a6,18b72 <__multf3+0xa9e>
   18b50:	e49d                	bnez	s1,18b7e <__multf3+0xaaa>
   18b52:	00f67813          	andi	a6,a2,15
   18b56:	4891                	li	a7,4
   18b58:	03180363          	beq	a6,a7,18b7e <__multf3+0xaaa>
   18b5c:	0611                	addi	a2,a2,4
   18b5e:	00463613          	sltiu	a2,a2,4
   18b62:	95b2                	add	a1,a1,a2
   18b64:	00c5b5b3          	sltu	a1,a1,a2
   18b68:	952e                	add	a0,a0,a1
   18b6a:	00b53533          	sltu	a0,a0,a1
   18b6e:	96aa                	add	a3,a3,a0
   18b70:	a039                	j	18b7e <__multf3+0xaaa>
   18b72:	e711                	bnez	a4,18b7e <__multf3+0xaaa>
   18b74:	0621                	addi	a2,a2,8
   18b76:	00863613          	sltiu	a2,a2,8
   18b7a:	b7e5                	j	18b62 <__multf3+0xa8e>
   18b7c:	ff65                	bnez	a4,18b74 <__multf3+0xaa0>
   18b7e:	82d1                	srli	a3,a3,0x14
   18b80:	0016c693          	xori	a3,a3,1
   18b84:	8a85                	andi	a3,a3,1
   18b86:	4605                	li	a2,1
   18b88:	40f607b3          	sub	a5,a2,a5
   18b8c:	07400593          	li	a1,116
   18b90:	18f5c163          	blt	a1,a5,18d12 <__multf3+0xc3e>
   18b94:	0890                	addi	a2,sp,80
   18b96:	4057d593          	srai	a1,a5,0x5
   18b9a:	01f7f513          	andi	a0,a5,31
   18b9e:	88b2                	mv	a7,a2
   18ba0:	4781                	li	a5,0
   18ba2:	4801                	li	a6,0
   18ba4:	02b81763          	bne	a6,a1,18bd2 <__multf3+0xafe>
   18ba8:	480d                	li	a6,3
   18baa:	40b80833          	sub	a6,a6,a1
   18bae:	00259893          	slli	a7,a1,0x2
   18bb2:	e51d                	bnez	a0,18be0 <__multf3+0xb0c>
   18bb4:	8332                	mv	t1,a2
   18bb6:	01130e33          	add	t3,t1,a7
   18bba:	000e2e03          	lw	t3,0(t3)
   18bbe:	0505                	addi	a0,a0,1
   18bc0:	0311                	addi	t1,t1,4
   18bc2:	ffc32e23          	sw	t3,-4(t1)
   18bc6:	fea858e3          	bge	a6,a0,18bb6 <__multf3+0xae2>
   18bca:	4511                	li	a0,4
   18bcc:	40b505b3          	sub	a1,a0,a1
   18bd0:	a8a1                	j	18c28 <__multf3+0xb54>
   18bd2:	0008a303          	lw	t1,0(a7)
   18bd6:	0805                	addi	a6,a6,1
   18bd8:	0891                	addi	a7,a7,4
   18bda:	0067e7b3          	or	a5,a5,t1
   18bde:	b7d9                	j	18ba4 <__multf3+0xad0>
   18be0:	05088313          	addi	t1,a7,80
   18be4:	03010e13          	addi	t3,sp,48
   18be8:	9372                	add	t1,t1,t3
   18bea:	fd032303          	lw	t1,-48(t1)
   18bee:	02000e93          	li	t4,32
   18bf2:	40ae8eb3          	sub	t4,t4,a0
   18bf6:	01d31333          	sll	t1,t1,t4
   18bfa:	0067e7b3          	or	a5,a5,t1
   18bfe:	4f01                	li	t5,0
   18c00:	01160333          	add	t1,a2,a7
   18c04:	411008b3          	neg	a7,a7
   18c08:	0b0f4d63          	blt	t5,a6,18cc2 <__multf3+0xbee>
   18c0c:	4891                	li	a7,4
   18c0e:	080a                	slli	a6,a6,0x2
   18c10:	40b885b3          	sub	a1,a7,a1
   18c14:	05080813          	addi	a6,a6,80
   18c18:	03010893          	addi	a7,sp,48
   18c1c:	9846                	add	a6,a6,a7
   18c1e:	48f6                	lw	a7,92(sp)
   18c20:	00a8d533          	srl	a0,a7,a0
   18c24:	fca82823          	sw	a0,-48(a6)
   18c28:	4511                	li	a0,4
   18c2a:	8d0d                	sub	a0,a0,a1
   18c2c:	050a                	slli	a0,a0,0x2
   18c2e:	058a                	slli	a1,a1,0x2
   18c30:	4821                	li	a6,8
   18c32:	95b2                	add	a1,a1,a2
   18c34:	01056863          	bltu	a0,a6,18c44 <__multf3+0xb70>
   18c38:	0005a023          	sw	zero,0(a1)
   18c3c:	0005a223          	sw	zero,4(a1)
   18c40:	1561                	addi	a0,a0,-8
   18c42:	05a1                	addi	a1,a1,8
   18c44:	4811                	li	a6,4
   18c46:	01056463          	bltu	a0,a6,18c4e <__multf3+0xb7a>
   18c4a:	0005a023          	sw	zero,0(a1)
   18c4e:	45c6                	lw	a1,80(sp)
   18c50:	00f037b3          	snez	a5,a5
   18c54:	8fcd                	or	a5,a5,a1
   18c56:	c8be                	sw	a5,80(sp)
   18c58:	0077f593          	andi	a1,a5,7
   18c5c:	c1a1                	beqz	a1,18c9c <__multf3+0xbc8>
   18c5e:	4509                	li	a0,2
   18c60:	45f6                	lw	a1,92(sp)
   18c62:	08a48763          	beq	s1,a0,18cf0 <__multf3+0xc1c>
   18c66:	450d                	li	a0,3
   18c68:	06a48e63          	beq	s1,a0,18ce4 <__multf3+0xc10>
   18c6c:	e495                	bnez	s1,18c98 <__multf3+0xbc4>
   18c6e:	00f7f513          	andi	a0,a5,15
   18c72:	4811                	li	a6,4
   18c74:	03050263          	beq	a0,a6,18c98 <__multf3+0xbc4>
   18c78:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   18c7a:	c8be                	sw	a5,80(sp)
   18c7c:	0047b793          	sltiu	a5,a5,4
   18c80:	4556                	lw	a0,84(sp)
   18c82:	97aa                	add	a5,a5,a0
   18c84:	cabe                	sw	a5,84(sp)
   18c86:	00a7b7b3          	sltu	a5,a5,a0
   18c8a:	4566                	lw	a0,88(sp)
   18c8c:	97aa                	add	a5,a5,a0
   18c8e:	ccbe                	sw	a5,88(sp)
   18c90:	00a7b7b3          	sltu	a5,a5,a0
   18c94:	97ae                	add	a5,a5,a1
   18c96:	cebe                	sw	a5,92(sp)
   18c98:	00146413          	ori	s0,s0,1
   18c9c:	45f6                	lw	a1,92(sp)
   18c9e:	00c59793          	slli	a5,a1,0xc
   18ca2:	0407d963          	bgez	a5,18cf4 <__multf3+0xc20>
   18ca6:	ce82                	sw	zero,92(sp)
   18ca8:	cc82                	sw	zero,88(sp)
   18caa:	ca82                	sw	zero,84(sp)
   18cac:	c882                	sw	zero,80(sp)
   18cae:	00146413          	ori	s0,s0,1
   18cb2:	4785                	li	a5,1
   18cb4:	de068be3          	beqz	a3,18aaa <__multf3+0x9d6>
   18cb8:	00147693          	andi	a3,s0,1
   18cbc:	0686                	slli	a3,a3,0x1
   18cbe:	8c55                	or	s0,s0,a3
   18cc0:	b3ed                	j	18aaa <__multf3+0x9d6>
   18cc2:	00032e03          	lw	t3,0(t1)
   18cc6:	00432f83          	lw	t6,4(t1)
   18cca:	011302b3          	add	t0,t1,a7
   18cce:	00ae5e33          	srl	t3,t3,a0
   18cd2:	01df9fb3          	sll	t6,t6,t4
   18cd6:	01fe6e33          	or	t3,t3,t6
   18cda:	01c2a023          	sw	t3,0(t0)
   18cde:	0f05                	addi	t5,t5,1
   18ce0:	0311                	addi	t1,t1,4
   18ce2:	b71d                	j	18c08 <__multf3+0xb34>
   18ce4:	fb55                	bnez	a4,18c98 <__multf3+0xbc4>
   18ce6:	07a1                	addi	a5,a5,8
   18ce8:	c8be                	sw	a5,80(sp)
   18cea:	0087b793          	sltiu	a5,a5,8
   18cee:	bf49                	j	18c80 <__multf3+0xbac>
   18cf0:	d745                	beqz	a4,18c98 <__multf3+0xbc4>
   18cf2:	bfd5                	j	18ce6 <__multf3+0xc12>
   18cf4:	00c60813          	addi	a6,a2,12
   18cf8:	421c                	lw	a5,0(a2)
   18cfa:	4248                	lw	a0,4(a2)
   18cfc:	838d                	srli	a5,a5,0x3
   18cfe:	0576                	slli	a0,a0,0x1d
   18d00:	8fc9                	or	a5,a5,a0
   18d02:	c21c                	sw	a5,0(a2)
   18d04:	0611                	addi	a2,a2,4
   18d06:	fec819e3          	bne	a6,a2,18cf8 <__multf3+0xc24>
   18d0a:	818d                	srli	a1,a1,0x3
   18d0c:	ceae                	sw	a1,92(sp)
   18d0e:	4781                	li	a5,0
   18d10:	b755                	j	18cb4 <__multf3+0xbe0>
   18d12:	46d6                	lw	a3,84(sp)
   18d14:	47c6                	lw	a5,80(sp)
   18d16:	8fd5                	or	a5,a5,a3
   18d18:	46e6                	lw	a3,88(sp)
   18d1a:	8fd5                	or	a5,a5,a3
   18d1c:	46f6                	lw	a3,92(sp)
   18d1e:	8fd5                	or	a5,a5,a3
   18d20:	c395                	beqz	a5,18d44 <__multf3+0xc70>
   18d22:	ce82                	sw	zero,92(sp)
   18d24:	cc82                	sw	zero,88(sp)
   18d26:	ca82                	sw	zero,84(sp)
   18d28:	c8b2                	sw	a2,80(sp)
   18d2a:	4789                	li	a5,2
   18d2c:	00146413          	ori	s0,s0,1
   18d30:	02f48263          	beq	s1,a5,18d54 <__multf3+0xc80>
   18d34:	478d                	li	a5,3
   18d36:	00f48b63          	beq	s1,a5,18d4c <__multf3+0xc78>
   18d3a:	4795                	li	a5,5
   18d3c:	c891                	beqz	s1,18d50 <__multf3+0xc7c>
   18d3e:	47c6                	lw	a5,80(sp)
   18d40:	838d                	srli	a5,a5,0x3
   18d42:	c8be                	sw	a5,80(sp)
   18d44:	00246413          	ori	s0,s0,2
   18d48:	4781                	li	a5,0
   18d4a:	b385                	j	18aaa <__multf3+0x9d6>
   18d4c:	fb6d                	bnez	a4,18d3e <__multf3+0xc6a>
   18d4e:	47a5                	li	a5,9
   18d50:	c8be                	sw	a5,80(sp)
   18d52:	b7f5                	j	18d3e <__multf3+0xc6a>
   18d54:	ff6d                	bnez	a4,18d4e <__multf3+0xc7a>
   18d56:	b7e5                	j	18d3e <__multf3+0xc6a>
   18d58:	ce82                	sw	zero,92(sp)
   18d5a:	cc82                	sw	zero,88(sp)
   18d5c:	ca82                	sw	zero,84(sp)
   18d5e:	c882                	sw	zero,80(sp)
   18d60:	b7e5                	j	18d48 <__multf3+0xc74>
   18d62:	67a1                	lui	a5,0x8
   18d64:	ce82                	sw	zero,92(sp)
   18d66:	cc82                	sw	zero,88(sp)
   18d68:	ca82                	sw	zero,84(sp)
   18d6a:	c882                	sw	zero,80(sp)
   18d6c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18d6e:	bb35                	j	18aaa <__multf3+0x9d6>

00018d70 <__subtf3>:
   18d70:	7159                	addi	sp,sp,-112
   18d72:	d2a6                	sw	s1,100(sp)
   18d74:	d0ca                	sw	s2,96(sp)
   18d76:	cece                	sw	s3,92(sp)
   18d78:	c2e6                	sw	s9,68(sp)
   18d7a:	d686                	sw	ra,108(sp)
   18d7c:	d4a2                	sw	s0,104(sp)
   18d7e:	ccd2                	sw	s4,88(sp)
   18d80:	cad6                	sw	s5,84(sp)
   18d82:	c8da                	sw	s6,80(sp)
   18d84:	c6de                	sw	s7,76(sp)
   18d86:	c4e2                	sw	s8,72(sp)
   18d88:	892a                	mv	s2,a0
   18d8a:	4198                	lw	a4,0(a1)
   18d8c:	41d4                	lw	a3,4(a1)
   18d8e:	459c                	lw	a5,8(a1)
   18d90:	00c5a983          	lw	s3,12(a1)
   18d94:	4204                	lw	s1,0(a2)
   18d96:	00462883          	lw	a7,4(a2)
   18d9a:	00862803          	lw	a6,8(a2)
   18d9e:	00c62c83          	lw	s9,12(a2)
   18da2:	00202a73          	frrm	s4
   18da6:	dc3e                	sw	a5,56(sp)
   18da8:	c43e                	sw	a5,8(sp)
   18daa:	01099793          	slli	a5,s3,0x10
   18dae:	83c1                	srli	a5,a5,0x10
   18db0:	00199413          	slli	s0,s3,0x1
   18db4:	858a                	mv	a1,sp
   18db6:	de4e                	sw	s3,60(sp)
   18db8:	c63e                	sw	a5,12(sp)
   18dba:	d83a                	sw	a4,48(sp)
   18dbc:	da36                	sw	a3,52(sp)
   18dbe:	c03a                	sw	a4,0(sp)
   18dc0:	c236                	sw	a3,4(sp)
   18dc2:	8045                	srli	s0,s0,0x11
   18dc4:	01f9d993          	srli	s3,s3,0x1f
   18dc8:	ff410313          	addi	t1,sp,-12
   18dcc:	87ae                	mv	a5,a1
   18dce:	852e                	mv	a0,a1
   18dd0:	47d4                	lw	a3,12(a5)
   18dd2:	4790                	lw	a2,8(a5)
   18dd4:	17f1                	addi	a5,a5,-4
   18dd6:	068e                	slli	a3,a3,0x3
   18dd8:	8275                	srli	a2,a2,0x1d
   18dda:	8ed1                	or	a3,a3,a2
   18ddc:	cb94                	sw	a3,16(a5)
   18dde:	fef319e3          	bne	t1,a5,18dd0 <__subtf3+0x60>
   18de2:	010c9793          	slli	a5,s9,0x10
   18de6:	83c1                	srli	a5,a5,0x10
   18de8:	001c9a93          	slli	s5,s9,0x1
   18dec:	070e                	slli	a4,a4,0x3
   18dee:	dc42                	sw	a6,56(sp)
   18df0:	cc42                	sw	a6,24(sp)
   18df2:	01010813          	addi	a6,sp,16
   18df6:	da46                	sw	a7,52(sp)
   18df8:	de66                	sw	s9,60(sp)
   18dfa:	ca46                	sw	a7,20(sp)
   18dfc:	ce3e                	sw	a5,28(sp)
   18dfe:	c03a                	sw	a4,0(sp)
   18e00:	d826                	sw	s1,48(sp)
   18e02:	c826                	sw	s1,16(sp)
   18e04:	011ada93          	srli	s5,s5,0x11
   18e08:	01fcdc93          	srli	s9,s9,0x1f
   18e0c:	00410893          	addi	a7,sp,4
   18e10:	87c2                	mv	a5,a6
   18e12:	8e42                	mv	t3,a6
   18e14:	47d4                	lw	a3,12(a5)
   18e16:	4790                	lw	a2,8(a5)
   18e18:	17f1                	addi	a5,a5,-4
   18e1a:	068e                	slli	a3,a3,0x3
   18e1c:	8275                	srli	a2,a2,0x1d
   18e1e:	8ed1                	or	a3,a3,a2
   18e20:	cb94                	sw	a3,16(a5)
   18e22:	fef899e3          	bne	a7,a5,18e14 <__subtf3+0xa4>
   18e26:	048e                	slli	s1,s1,0x3
   18e28:	67a1                	lui	a5,0x8
   18e2a:	c826                	sw	s1,16(sp)
   18e2c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18e2e:	00fa9963          	bne	s5,a5,18e40 <__subtf3+0xd0>
   18e32:	46e2                	lw	a3,24(sp)
   18e34:	47d2                	lw	a5,20(sp)
   18e36:	8fd5                	or	a5,a5,a3
   18e38:	46f2                	lw	a3,28(sp)
   18e3a:	8fd5                	or	a5,a5,a3
   18e3c:	8fc5                	or	a5,a5,s1
   18e3e:	e399                	bnez	a5,18e44 <__subtf3+0xd4>
   18e40:	001ccc93          	xori	s9,s9,1
   18e44:	415407b3          	sub	a5,s0,s5
   18e48:	5d3c9c63          	bne	s9,s3,19420 <__subtf3+0x6b0>
   18e4c:	24f05963          	blez	a5,1909e <__subtf3+0x32e>
   18e50:	4312                	lw	t1,4(sp)
   18e52:	48a2                	lw	a7,8(sp)
   18e54:	45b2                	lw	a1,12(sp)
   18e56:	080a9963          	bnez	s5,18ee8 <__subtf3+0x178>
   18e5a:	4552                	lw	a0,20(sp)
   18e5c:	46e2                	lw	a3,24(sp)
   18e5e:	4ef2                	lw	t4,28(sp)
   18e60:	00d56633          	or	a2,a0,a3
   18e64:	01d66633          	or	a2,a2,t4
   18e68:	8e45                	or	a2,a2,s1
   18e6a:	e61d                	bnez	a2,18e98 <__subtf3+0x128>
   18e6c:	66a1                	lui	a3,0x8
   18e6e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18e70:	00d79e63          	bne	a5,a3,18e8c <__subtf3+0x11c>
   18e74:	011366b3          	or	a3,t1,a7
   18e78:	8ecd                	or	a3,a3,a1
   18e7a:	8ed9                	or	a3,a3,a4
   18e7c:	ca81                	beqz	a3,18e8c <__subtf3+0x11c>
   18e7e:	0125da93          	srli	s5,a1,0x12
   18e82:	001aca93          	xori	s5,s5,1
   18e86:	001afa93          	andi	s5,s5,1
   18e8a:	0a92                	slli	s5,s5,0x4
   18e8c:	d03a                	sw	a4,32(sp)
   18e8e:	d21a                	sw	t1,36(sp)
   18e90:	d446                	sw	a7,40(sp)
   18e92:	d62e                	sw	a1,44(sp)
   18e94:	8456                	mv	s0,s5
   18e96:	ac99                	j	190ec <__subtf3+0x37c>
   18e98:	fff78613          	addi	a2,a5,-1
   18e9c:	ea0d                	bnez	a2,18ece <__subtf3+0x15e>
   18e9e:	94ba                	add	s1,s1,a4
   18ea0:	932a                	add	t1,t1,a0
   18ea2:	d026                	sw	s1,32(sp)
   18ea4:	00e4b4b3          	sltu	s1,s1,a4
   18ea8:	949a                	add	s1,s1,t1
   18eaa:	d226                	sw	s1,36(sp)
   18eac:	00a33533          	sltu	a0,t1,a0
   18eb0:	0064b4b3          	sltu	s1,s1,t1
   18eb4:	98b6                	add	a7,a7,a3
   18eb6:	8d45                	or	a0,a0,s1
   18eb8:	9546                	add	a0,a0,a7
   18eba:	d42a                	sw	a0,40(sp)
   18ebc:	00d8b733          	sltu	a4,a7,a3
   18ec0:	01153533          	sltu	a0,a0,a7
   18ec4:	8f49                	or	a4,a4,a0
   18ec6:	9eae                	add	t4,t4,a1
   18ec8:	9776                	add	a4,a4,t4
   18eca:	4785                	li	a5,1
   18ecc:	a299                	j	19012 <__subtf3+0x2a2>
   18ece:	66a1                	lui	a3,0x8
   18ed0:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18ed2:	fad781e3          	beq	a5,a3,18e74 <__subtf3+0x104>
   18ed6:	07400793          	li	a5,116
   18eda:	04c7d863          	bge	a5,a2,18f2a <__subtf3+0x1ba>
   18ede:	ce02                	sw	zero,28(sp)
   18ee0:	cc02                	sw	zero,24(sp)
   18ee2:	ca02                	sw	zero,20(sp)
   18ee4:	4785                	li	a5,1
   18ee6:	a8dd                	j	18fdc <__subtf3+0x26c>
   18ee8:	66a1                	lui	a3,0x8
   18eea:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   18eec:	02d41563          	bne	s0,a3,18f16 <__subtf3+0x1a6>
   18ef0:	011367b3          	or	a5,t1,a7
   18ef4:	8fcd                	or	a5,a5,a1
   18ef6:	8fd9                	or	a5,a5,a4
   18ef8:	4681                	li	a3,0
   18efa:	c799                	beqz	a5,18f08 <__subtf3+0x198>
   18efc:	0125d693          	srli	a3,a1,0x12
   18f00:	0016c693          	xori	a3,a3,1
   18f04:	8a85                	andi	a3,a3,1
   18f06:	0692                	slli	a3,a3,0x4
   18f08:	d03a                	sw	a4,32(sp)
   18f0a:	d21a                	sw	t1,36(sp)
   18f0c:	d446                	sw	a7,40(sp)
   18f0e:	d62e                	sw	a1,44(sp)
   18f10:	87a2                	mv	a5,s0
   18f12:	8436                	mv	s0,a3
   18f14:	aae1                	j	190ec <__subtf3+0x37c>
   18f16:	46f2                	lw	a3,28(sp)
   18f18:	00080637          	lui	a2,0x80
   18f1c:	8ed1                	or	a3,a3,a2
   18f1e:	ce36                	sw	a3,28(sp)
   18f20:	07400693          	li	a3,116
   18f24:	faf6cde3          	blt	a3,a5,18ede <__subtf3+0x16e>
   18f28:	863e                	mv	a2,a5
   18f2a:	40565693          	srai	a3,a2,0x5
   18f2e:	8ec2                	mv	t4,a6
   18f30:	8a7d                	andi	a2,a2,31
   18f32:	4781                	li	a5,0
   18f34:	4501                	li	a0,0
   18f36:	02d51563          	bne	a0,a3,18f60 <__subtf3+0x1f0>
   18f3a:	450d                	li	a0,3
   18f3c:	8d15                	sub	a0,a0,a3
   18f3e:	00269e93          	slli	t4,a3,0x2
   18f42:	e615                	bnez	a2,18f6e <__subtf3+0x1fe>
   18f44:	01d80f33          	add	t5,a6,t4
   18f48:	000f2f03          	lw	t5,0(t5)
   18f4c:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   18f4e:	0811                	addi	a6,a6,4
   18f50:	ffe82e23          	sw	t5,-4(a6)
   18f54:	fec558e3          	bge	a0,a2,18f44 <__subtf3+0x1d4>
   18f58:	4611                	li	a2,4
   18f5a:	40d606b3          	sub	a3,a2,a3
   18f5e:	a881                	j	18fae <__subtf3+0x23e>
   18f60:	000eaf03          	lw	t5,0(t4)
   18f64:	0505                	addi	a0,a0,1
   18f66:	0e91                	addi	t4,t4,4
   18f68:	01e7e7b3          	or	a5,a5,t5
   18f6c:	b7e9                	j	18f36 <__subtf3+0x1c6>
   18f6e:	040e8493          	addi	s1,t4,64
   18f72:	00248f33          	add	t5,s1,sp
   18f76:	fd0f2f03          	lw	t5,-48(t5)
   18f7a:	02000393          	li	t2,32
   18f7e:	40c383b3          	sub	t2,t2,a2
   18f82:	007f1f33          	sll	t5,t5,t2
   18f86:	9876                	add	a6,a6,t4
   18f88:	01e7e7b3          	or	a5,a5,t5
   18f8c:	41d00eb3          	neg	t4,t4
   18f90:	4f81                	li	t6,0
   18f92:	0eafc563          	blt	t6,a0,1907c <__subtf3+0x30c>
   18f96:	4811                	li	a6,4
   18f98:	40d806b3          	sub	a3,a6,a3
   18f9c:	4872                	lw	a6,28(sp)
   18f9e:	050a                	slli	a0,a0,0x2
   18fa0:	04050513          	addi	a0,a0,64
   18fa4:	950a                	add	a0,a0,sp
   18fa6:	00c85633          	srl	a2,a6,a2
   18faa:	fcc52823          	sw	a2,-48(a0)
   18fae:	4611                	li	a2,4
   18fb0:	8e15                	sub	a2,a2,a3
   18fb2:	060a                	slli	a2,a2,0x2
   18fb4:	068a                	slli	a3,a3,0x2
   18fb6:	4521                	li	a0,8
   18fb8:	96f2                	add	a3,a3,t3
   18fba:	00a66863          	bltu	a2,a0,18fca <__subtf3+0x25a>
   18fbe:	0006a023          	sw	zero,0(a3)
   18fc2:	0006a223          	sw	zero,4(a3)
   18fc6:	1661                	addi	a2,a2,-8
   18fc8:	06a1                	addi	a3,a3,8
   18fca:	4511                	li	a0,4
   18fcc:	00a66463          	bltu	a2,a0,18fd4 <__subtf3+0x264>
   18fd0:	0006a023          	sw	zero,0(a3)
   18fd4:	46c2                	lw	a3,16(sp)
   18fd6:	00f037b3          	snez	a5,a5
   18fda:	8fd5                	or	a5,a5,a3
   18fdc:	46d2                	lw	a3,20(sp)
   18fde:	c83e                	sw	a5,16(sp)
   18fe0:	97ba                	add	a5,a5,a4
   18fe2:	9336                	add	t1,t1,a3
   18fe4:	d03e                	sw	a5,32(sp)
   18fe6:	00e7b7b3          	sltu	a5,a5,a4
   18fea:	4762                	lw	a4,24(sp)
   18fec:	979a                	add	a5,a5,t1
   18fee:	d23e                	sw	a5,36(sp)
   18ff0:	00d336b3          	sltu	a3,t1,a3
   18ff4:	0067b7b3          	sltu	a5,a5,t1
   18ff8:	98ba                	add	a7,a7,a4
   18ffa:	8fd5                	or	a5,a5,a3
   18ffc:	97c6                	add	a5,a5,a7
   18ffe:	d43e                	sw	a5,40(sp)
   19000:	00e8b733          	sltu	a4,a7,a4
   19004:	0117b7b3          	sltu	a5,a5,a7
   19008:	8f5d                	or	a4,a4,a5
   1900a:	47f2                	lw	a5,28(sp)
   1900c:	97ae                	add	a5,a5,a1
   1900e:	973e                	add	a4,a4,a5
   19010:	87a2                	mv	a5,s0
   19012:	d63a                	sw	a4,44(sp)
   19014:	00c71693          	slli	a3,a4,0xc
   19018:	4401                	li	s0,0
   1901a:	0c06d963          	bgez	a3,190ec <__subtf3+0x37c>
   1901e:	5602                	lw	a2,32(sp)
   19020:	fff806b7          	lui	a3,0xfff80
   19024:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19026:	8f75                	and	a4,a4,a3
   19028:	d63a                	sw	a4,44(sp)
   1902a:	0785                	addi	a5,a5,1
   1902c:	067e                	slli	a2,a2,0x1f
   1902e:	1014                	addi	a3,sp,32
   19030:	02c10813          	addi	a6,sp,44
   19034:	428c                	lw	a1,0(a3)
   19036:	42c8                	lw	a0,4(a3)
   19038:	8185                	srli	a1,a1,0x1
   1903a:	057e                	slli	a0,a0,0x1f
   1903c:	8dc9                	or	a1,a1,a0
   1903e:	c28c                	sw	a1,0(a3)
   19040:	0691                	addi	a3,a3,4
   19042:	fed819e3          	bne	a6,a3,19034 <__subtf3+0x2c4>
   19046:	5682                	lw	a3,32(sp)
   19048:	8305                	srli	a4,a4,0x1
   1904a:	d63a                	sw	a4,44(sp)
   1904c:	00c03733          	snez	a4,a2
   19050:	8f55                	or	a4,a4,a3
   19052:	d03a                	sw	a4,32(sp)
   19054:	6721                	lui	a4,0x8
   19056:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19058:	4401                	li	s0,0
   1905a:	08e79963          	bne	a5,a4,190ec <__subtf3+0x37c>
   1905e:	3a0a0963          	beqz	s4,19410 <__subtf3+0x6a0>
   19062:	478d                	li	a5,3
   19064:	3afa1163          	bne	s4,a5,19406 <__subtf3+0x696>
   19068:	3a098463          	beqz	s3,19410 <__subtf3+0x6a0>
   1906c:	57fd                	li	a5,-1
   1906e:	d63e                	sw	a5,44(sp)
   19070:	d43e                	sw	a5,40(sp)
   19072:	d23e                	sw	a5,36(sp)
   19074:	d03e                	sw	a5,32(sp)
   19076:	67a1                	lui	a5,0x8
   19078:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1907a:	a64d                	j	1941c <__subtf3+0x6ac>
   1907c:	00082f03          	lw	t5,0(a6)
   19080:	00482283          	lw	t0,4(a6)
   19084:	01d804b3          	add	s1,a6,t4
   19088:	00cf5f33          	srl	t5,t5,a2
   1908c:	007292b3          	sll	t0,t0,t2
   19090:	005f6f33          	or	t5,t5,t0
   19094:	01e4a023          	sw	t5,0(s1)
   19098:	0f85                	addi	t6,t6,1
   1909a:	0811                	addi	a6,a6,4
   1909c:	bddd                	j	18f92 <__subtf3+0x222>
   1909e:	4bd2                	lw	s7,20(sp)
   190a0:	4c62                	lw	s8,24(sp)
   190a2:	4b72                	lw	s6,28(sp)
   190a4:	1e078363          	beqz	a5,1928a <__subtf3+0x51a>
   190a8:	408a87b3          	sub	a5,s5,s0
   190ac:	e859                	bnez	s0,19142 <__subtf3+0x3d2>
   190ae:	4612                	lw	a2,4(sp)
   190b0:	46a2                	lw	a3,8(sp)
   190b2:	48b2                	lw	a7,12(sp)
   190b4:	00d66833          	or	a6,a2,a3
   190b8:	01186833          	or	a6,a6,a7
   190bc:	00e86833          	or	a6,a6,a4
   190c0:	02081963          	bnez	a6,190f2 <__subtf3+0x382>
   190c4:	6721                	lui	a4,0x8
   190c6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   190c8:	00e79e63          	bne	a5,a4,190e4 <__subtf3+0x374>
   190cc:	018be733          	or	a4,s7,s8
   190d0:	01676733          	or	a4,a4,s6
   190d4:	8f45                	or	a4,a4,s1
   190d6:	c719                	beqz	a4,190e4 <__subtf3+0x374>
   190d8:	012b5413          	srli	s0,s6,0x12
   190dc:	00144413          	xori	s0,s0,1
   190e0:	8805                	andi	s0,s0,1
   190e2:	0412                	slli	s0,s0,0x4
   190e4:	d026                	sw	s1,32(sp)
   190e6:	d25e                	sw	s7,36(sp)
   190e8:	d462                	sw	s8,40(sp)
   190ea:	d65a                	sw	s6,44(sp)
   190ec:	4681                	li	a3,0
   190ee:	3fb0006f          	j	19ce8 <__subtf3+0xf78>
   190f2:	fff78813          	addi	a6,a5,-1
   190f6:	02081963          	bnez	a6,19128 <__subtf3+0x3b8>
   190fa:	94ba                	add	s1,s1,a4
   190fc:	9bb2                	add	s7,s7,a2
   190fe:	d026                	sw	s1,32(sp)
   19100:	00e4b4b3          	sltu	s1,s1,a4
   19104:	94de                	add	s1,s1,s7
   19106:	d226                	sw	s1,36(sp)
   19108:	00cbb633          	sltu	a2,s7,a2
   1910c:	0174b4b3          	sltu	s1,s1,s7
   19110:	9c36                	add	s8,s8,a3
   19112:	8e45                	or	a2,a2,s1
   19114:	9662                	add	a2,a2,s8
   19116:	d432                	sw	a2,40(sp)
   19118:	00dc3733          	sltu	a4,s8,a3
   1911c:	01863633          	sltu	a2,a2,s8
   19120:	8f51                	or	a4,a4,a2
   19122:	98da                	add	a7,a7,s6
   19124:	9746                	add	a4,a4,a7
   19126:	b355                	j	18eca <__subtf3+0x15a>
   19128:	6721                	lui	a4,0x8
   1912a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1912c:	fae780e3          	beq	a5,a4,190cc <__subtf3+0x35c>
   19130:	07400793          	li	a5,116
   19134:	0507d863          	bge	a5,a6,19184 <__subtf3+0x414>
   19138:	c602                	sw	zero,12(sp)
   1913a:	c402                	sw	zero,8(sp)
   1913c:	c202                	sw	zero,4(sp)
   1913e:	4785                	li	a5,1
   19140:	a8cd                	j	19232 <__subtf3+0x4c2>
   19142:	6721                	lui	a4,0x8
   19144:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19146:	02ea9563          	bne	s5,a4,19170 <__subtf3+0x400>
   1914a:	018be7b3          	or	a5,s7,s8
   1914e:	0167e7b3          	or	a5,a5,s6
   19152:	8fc5                	or	a5,a5,s1
   19154:	4401                	li	s0,0
   19156:	c799                	beqz	a5,19164 <__subtf3+0x3f4>
   19158:	012b5413          	srli	s0,s6,0x12
   1915c:	00144413          	xori	s0,s0,1
   19160:	8805                	andi	s0,s0,1
   19162:	0412                	slli	s0,s0,0x4
   19164:	d026                	sw	s1,32(sp)
   19166:	d25e                	sw	s7,36(sp)
   19168:	d462                	sw	s8,40(sp)
   1916a:	d65a                	sw	s6,44(sp)
   1916c:	87d6                	mv	a5,s5
   1916e:	bfbd                	j	190ec <__subtf3+0x37c>
   19170:	4732                	lw	a4,12(sp)
   19172:	000806b7          	lui	a3,0x80
   19176:	8f55                	or	a4,a4,a3
   19178:	c63a                	sw	a4,12(sp)
   1917a:	07400713          	li	a4,116
   1917e:	faf74de3          	blt	a4,a5,19138 <__subtf3+0x3c8>
   19182:	883e                	mv	a6,a5
   19184:	02000713          	li	a4,32
   19188:	02e84733          	div	a4,a6,a4
   1918c:	86ae                	mv	a3,a1
   1918e:	4401                	li	s0,0
   19190:	4781                	li	a5,0
   19192:	02e7c663          	blt	a5,a4,191be <__subtf3+0x44e>
   19196:	478d                	li	a5,3
   19198:	01f87893          	andi	a7,a6,31
   1919c:	8f99                	sub	a5,a5,a4
   1919e:	00271613          	slli	a2,a4,0x2
   191a2:	02089363          	bnez	a7,191c8 <__subtf3+0x458>
   191a6:	00c586b3          	add	a3,a1,a2
   191aa:	4294                	lw	a3,0(a3)
   191ac:	0885                	addi	a7,a7,1
   191ae:	c194                	sw	a3,0(a1)
   191b0:	0591                	addi	a1,a1,4
   191b2:	ff17dae3          	bge	a5,a7,191a6 <__subtf3+0x436>
   191b6:	4791                	li	a5,4
   191b8:	40e78733          	sub	a4,a5,a4
   191bc:	a899                	j	19212 <__subtf3+0x4a2>
   191be:	4290                	lw	a2,0(a3)
   191c0:	0785                	addi	a5,a5,1
   191c2:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   191c4:	8c51                	or	s0,s0,a2
   191c6:	b7f1                	j	19192 <__subtf3+0x422>
   191c8:	02000693          	li	a3,32
   191cc:	02d86833          	rem	a6,a6,a3
   191d0:	41068833          	sub	a6,a3,a6
   191d4:	86ba                	mv	a3,a4
   191d6:	00075363          	bgez	a4,191dc <__subtf3+0x46c>
   191da:	4681                	li	a3,0
   191dc:	068a                	slli	a3,a3,0x2
   191de:	04068693          	addi	a3,a3,64
   191e2:	968a                	add	a3,a3,sp
   191e4:	fc06a683          	lw	a3,-64(a3)
   191e8:	95b2                	add	a1,a1,a2
   191ea:	4301                	li	t1,0
   191ec:	010696b3          	sll	a3,a3,a6
   191f0:	8c55                	or	s0,s0,a3
   191f2:	40c00633          	neg	a2,a2
   191f6:	06f34a63          	blt	t1,a5,1926a <__subtf3+0x4fa>
   191fa:	4691                	li	a3,4
   191fc:	40e68733          	sub	a4,a3,a4
   19200:	46b2                	lw	a3,12(sp)
   19202:	078a                	slli	a5,a5,0x2
   19204:	04078793          	addi	a5,a5,64
   19208:	978a                	add	a5,a5,sp
   1920a:	0116d6b3          	srl	a3,a3,a7
   1920e:	fcd7a023          	sw	a3,-64(a5)
   19212:	00572793          	slti	a5,a4,5
   19216:	4601                	li	a2,0
   19218:	c781                	beqz	a5,19220 <__subtf3+0x4b0>
   1921a:	4611                	li	a2,4
   1921c:	8e19                	sub	a2,a2,a4
   1921e:	060a                	slli	a2,a2,0x2
   19220:	070a                	slli	a4,a4,0x2
   19222:	953a                	add	a0,a0,a4
   19224:	4581                	li	a1,0
   19226:	82af80ef          	jal	11250 <memset>
   1922a:	4702                	lw	a4,0(sp)
   1922c:	008037b3          	snez	a5,s0
   19230:	8fd9                	or	a5,a5,a4
   19232:	4692                	lw	a3,4(sp)
   19234:	c03e                	sw	a5,0(sp)
   19236:	97a6                	add	a5,a5,s1
   19238:	9bb6                	add	s7,s7,a3
   1923a:	4722                	lw	a4,8(sp)
   1923c:	d03e                	sw	a5,32(sp)
   1923e:	0097b7b3          	sltu	a5,a5,s1
   19242:	97de                	add	a5,a5,s7
   19244:	d23e                	sw	a5,36(sp)
   19246:	00dbb6b3          	sltu	a3,s7,a3
   1924a:	0177b7b3          	sltu	a5,a5,s7
   1924e:	9c3a                	add	s8,s8,a4
   19250:	8fd5                	or	a5,a5,a3
   19252:	97e2                	add	a5,a5,s8
   19254:	d43e                	sw	a5,40(sp)
   19256:	00ec3733          	sltu	a4,s8,a4
   1925a:	0187b7b3          	sltu	a5,a5,s8
   1925e:	8f5d                	or	a4,a4,a5
   19260:	47b2                	lw	a5,12(sp)
   19262:	97da                	add	a5,a5,s6
   19264:	973e                	add	a4,a4,a5
   19266:	87d6                	mv	a5,s5
   19268:	b36d                	j	19012 <__subtf3+0x2a2>
   1926a:	4194                	lw	a3,0(a1)
   1926c:	0045ae03          	lw	t3,4(a1)
   19270:	00c58eb3          	add	t4,a1,a2
   19274:	0116d6b3          	srl	a3,a3,a7
   19278:	010e1e33          	sll	t3,t3,a6
   1927c:	01c6e6b3          	or	a3,a3,t3
   19280:	00dea023          	sw	a3,0(t4)
   19284:	0305                	addi	t1,t1,1
   19286:	0591                	addi	a1,a1,4
   19288:	b7bd                	j	191f6 <__subtf3+0x486>
   1928a:	00140793          	addi	a5,s0,1
   1928e:	01179513          	slli	a0,a5,0x11
   19292:	8149                	srli	a0,a0,0x12
   19294:	4612                	lw	a2,4(sp)
   19296:	46a2                	lw	a3,8(sp)
   19298:	45b2                	lw	a1,12(sp)
   1929a:	10051c63          	bnez	a0,193b2 <__subtf3+0x642>
   1929e:	00d667b3          	or	a5,a2,a3
   192a2:	8fcd                	or	a5,a5,a1
   192a4:	8fd9                	or	a5,a5,a4
   192a6:	e049                	bnez	s0,19328 <__subtf3+0x5b8>
   192a8:	e785                	bnez	a5,192d0 <__subtf3+0x560>
   192aa:	d026                	sw	s1,32(sp)
   192ac:	d25e                	sw	s7,36(sp)
   192ae:	d462                	sw	s8,40(sp)
   192b0:	d65a                	sw	s6,44(sp)
   192b2:	5782                	lw	a5,32(sp)
   192b4:	5592                	lw	a1,36(sp)
   192b6:	5622                	lw	a2,40(sp)
   192b8:	56b2                	lw	a3,44(sp)
   192ba:	00b7e733          	or	a4,a5,a1
   192be:	8f51                	or	a4,a4,a2
   192c0:	8f55                	or	a4,a4,a3
   192c2:	1a071de3          	bnez	a4,19c7c <__subtf3+0xf0c>
   192c6:	4781                	li	a5,0
   192c8:	4681                	li	a3,0
   192ca:	4401                	li	s0,0
   192cc:	21d0006f          	j	19ce8 <__subtf3+0xf78>
   192d0:	018be7b3          	or	a5,s7,s8
   192d4:	0167e7b3          	or	a5,a5,s6
   192d8:	8fc5                	or	a5,a5,s1
   192da:	e791                	bnez	a5,192e6 <__subtf3+0x576>
   192dc:	d03a                	sw	a4,32(sp)
   192de:	d232                	sw	a2,36(sp)
   192e0:	d436                	sw	a3,40(sp)
   192e2:	d62e                	sw	a1,44(sp)
   192e4:	b7f9                	j	192b2 <__subtf3+0x542>
   192e6:	94ba                	add	s1,s1,a4
   192e8:	9bb2                	add	s7,s7,a2
   192ea:	d026                	sw	s1,32(sp)
   192ec:	00e4b4b3          	sltu	s1,s1,a4
   192f0:	94de                	add	s1,s1,s7
   192f2:	d226                	sw	s1,36(sp)
   192f4:	00cbb633          	sltu	a2,s7,a2
   192f8:	0174b4b3          	sltu	s1,s1,s7
   192fc:	9c36                	add	s8,s8,a3
   192fe:	8e45                	or	a2,a2,s1
   19300:	9662                	add	a2,a2,s8
   19302:	d432                	sw	a2,40(sp)
   19304:	00dc36b3          	sltu	a3,s8,a3
   19308:	01863633          	sltu	a2,a2,s8
   1930c:	8ed1                	or	a3,a3,a2
   1930e:	95da                	add	a1,a1,s6
   19310:	96ae                	add	a3,a3,a1
   19312:	00c69793          	slli	a5,a3,0xc
   19316:	3207d2e3          	bgez	a5,19e3a <__subtf3+0x10ca>
   1931a:	fff807b7          	lui	a5,0xfff80
   1931e:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19320:	8efd                	and	a3,a3,a5
   19322:	d636                	sw	a3,44(sp)
   19324:	4785                	li	a5,1
   19326:	b3d9                	j	190ec <__subtf3+0x37c>
   19328:	6521                	lui	a0,0x8
   1932a:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1932c:	04a41363          	bne	s0,a0,19372 <__subtf3+0x602>
   19330:	300788e3          	beqz	a5,19e40 <__subtf3+0x10d0>
   19334:	0125d413          	srli	s0,a1,0x12
   19338:	00144413          	xori	s0,s0,1
   1933c:	8805                	andi	s0,s0,1
   1933e:	0412                	slli	s0,s0,0x4
   19340:	02aa9d63          	bne	s5,a0,1937a <__subtf3+0x60a>
   19344:	018be533          	or	a0,s7,s8
   19348:	01656533          	or	a0,a0,s6
   1934c:	8d45                	or	a0,a0,s1
   1934e:	c50d                	beqz	a0,19378 <__subtf3+0x608>
   19350:	00db1513          	slli	a0,s6,0xd
   19354:	02054263          	bltz	a0,19378 <__subtf3+0x608>
   19358:	4441                	li	s0,16
   1935a:	eb85                	bnez	a5,1938a <__subtf3+0x61a>
   1935c:	8726                	mv	a4,s1
   1935e:	865e                	mv	a2,s7
   19360:	86e2                	mv	a3,s8
   19362:	85da                	mv	a1,s6
   19364:	d03a                	sw	a4,32(sp)
   19366:	d232                	sw	a2,36(sp)
   19368:	d436                	sw	a3,40(sp)
   1936a:	d62e                	sw	a1,44(sp)
   1936c:	67a1                	lui	a5,0x8
   1936e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19370:	bbb5                	j	190ec <__subtf3+0x37c>
   19372:	4401                	li	s0,0
   19374:	fcaa88e3          	beq	s5,a0,19344 <__subtf3+0x5d4>
   19378:	d3f5                	beqz	a5,1935c <__subtf3+0x5ec>
   1937a:	018bebb3          	or	s7,s7,s8
   1937e:	016bebb3          	or	s7,s7,s6
   19382:	009bebb3          	or	s7,s7,s1
   19386:	fc0b8fe3          	beqz	s7,19364 <__subtf3+0x5f4>
   1938a:	67a1                	lui	a5,0x8
   1938c:	d63e                	sw	a5,44(sp)
   1938e:	d402                	sw	zero,40(sp)
   19390:	d202                	sw	zero,36(sp)
   19392:	d002                	sw	zero,32(sp)
   19394:	101c                	addi	a5,sp,32
   19396:	0850                	addi	a2,sp,20
   19398:	47d8                	lw	a4,12(a5)
   1939a:	4794                	lw	a3,8(a5)
   1939c:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1939e:	070e                	slli	a4,a4,0x3
   193a0:	82f5                	srli	a3,a3,0x1d
   193a2:	8f55                	or	a4,a4,a3
   193a4:	cb98                	sw	a4,16(a5)
   193a6:	fef619e3          	bne	a2,a5,19398 <__subtf3+0x628>
   193aa:	4981                	li	s3,0
   193ac:	b7c1                	j	1936c <__subtf3+0x5fc>
   193ae:	4401                	li	s0,0
   193b0:	bf51                	j	19344 <__subtf3+0x5d4>
   193b2:	94ba                	add	s1,s1,a4
   193b4:	9bb2                	add	s7,s7,a2
   193b6:	d026                	sw	s1,32(sp)
   193b8:	00e4b4b3          	sltu	s1,s1,a4
   193bc:	94de                	add	s1,s1,s7
   193be:	d226                	sw	s1,36(sp)
   193c0:	00cbb633          	sltu	a2,s7,a2
   193c4:	0174b4b3          	sltu	s1,s1,s7
   193c8:	9c36                	add	s8,s8,a3
   193ca:	8e45                	or	a2,a2,s1
   193cc:	9662                	add	a2,a2,s8
   193ce:	d432                	sw	a2,40(sp)
   193d0:	00dc36b3          	sltu	a3,s8,a3
   193d4:	01863633          	sltu	a2,a2,s8
   193d8:	8ed1                	or	a3,a3,a2
   193da:	95da                	add	a1,a1,s6
   193dc:	96ae                	add	a3,a3,a1
   193de:	d636                	sw	a3,44(sp)
   193e0:	1018                	addi	a4,sp,32
   193e2:	1068                	addi	a0,sp,44
   193e4:	4310                	lw	a2,0(a4)
   193e6:	434c                	lw	a1,4(a4)
   193e8:	8205                	srli	a2,a2,0x1
   193ea:	05fe                	slli	a1,a1,0x1f
   193ec:	8e4d                	or	a2,a2,a1
   193ee:	c310                	sw	a2,0(a4)
   193f0:	0711                	addi	a4,a4,4
   193f2:	fee519e3          	bne	a0,a4,193e4 <__subtf3+0x674>
   193f6:	6721                	lui	a4,0x8
   193f8:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   193fa:	c6e782e3          	beq	a5,a4,1905e <__subtf3+0x2ee>
   193fe:	8285                	srli	a3,a3,0x1
   19400:	d636                	sw	a3,44(sp)
   19402:	4401                	li	s0,0
   19404:	b1e5                	j	190ec <__subtf3+0x37c>
   19406:	4789                	li	a5,2
   19408:	c6fa12e3          	bne	s4,a5,1906c <__subtf3+0x2fc>
   1940c:	c60980e3          	beqz	s3,1906c <__subtf3+0x2fc>
   19410:	67a1                	lui	a5,0x8
   19412:	d602                	sw	zero,44(sp)
   19414:	d402                	sw	zero,40(sp)
   19416:	d202                	sw	zero,36(sp)
   19418:	d002                	sw	zero,32(sp)
   1941a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1941c:	4415                	li	s0,5
   1941e:	b1f9                	j	190ec <__subtf3+0x37c>
   19420:	22f05b63          	blez	a5,19656 <__subtf3+0x8e6>
   19424:	4592                	lw	a1,4(sp)
   19426:	4522                	lw	a0,8(sp)
   19428:	48b2                	lw	a7,12(sp)
   1942a:	0a0a9563          	bnez	s5,194d4 <__subtf3+0x764>
   1942e:	4ed2                	lw	t4,20(sp)
   19430:	4fe2                	lw	t6,24(sp)
   19432:	4672                	lw	a2,28(sp)
   19434:	01fee6b3          	or	a3,t4,t6
   19438:	8ed1                	or	a3,a3,a2
   1943a:	8ec5                	or	a3,a3,s1
   1943c:	e69d                	bnez	a3,1946a <__subtf3+0x6fa>
   1943e:	66a1                	lui	a3,0x8
   19440:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19442:	00d79f63          	bne	a5,a3,19460 <__subtf3+0x6f0>
   19446:	00a5e6b3          	or	a3,a1,a0
   1944a:	0116e6b3          	or	a3,a3,a7
   1944e:	8ed9                	or	a3,a3,a4
   19450:	ca81                	beqz	a3,19460 <__subtf3+0x6f0>
   19452:	0128da93          	srli	s5,a7,0x12
   19456:	001aca93          	xori	s5,s5,1
   1945a:	001afa93          	andi	s5,s5,1
   1945e:	0a92                	slli	s5,s5,0x4
   19460:	d03a                	sw	a4,32(sp)
   19462:	d22e                	sw	a1,36(sp)
   19464:	d42a                	sw	a0,40(sp)
   19466:	d646                	sw	a7,44(sp)
   19468:	b435                	j	18e94 <__subtf3+0x124>
   1946a:	fff78f13          	addi	t5,a5,-1
   1946e:	040f1663          	bnez	t5,194ba <__subtf3+0x74a>
   19472:	409706b3          	sub	a3,a4,s1
   19476:	41d58833          	sub	a6,a1,t4
   1947a:	00d73333          	sltu	t1,a4,a3
   1947e:	0105b7b3          	sltu	a5,a1,a6
   19482:	40680833          	sub	a6,a6,t1
   19486:	4301                	li	t1,0
   19488:	00d77663          	bgeu	a4,a3,19494 <__subtf3+0x724>
   1948c:	40be8eb3          	sub	t4,t4,a1
   19490:	001eb313          	seqz	t1,t4
   19494:	00f36733          	or	a4,t1,a5
   19498:	41f505b3          	sub	a1,a0,t6
   1949c:	00b53333          	sltu	t1,a0,a1
   194a0:	8d99                	sub	a1,a1,a4
   194a2:	c709                	beqz	a4,194ac <__subtf3+0x73c>
   194a4:	40af87b3          	sub	a5,t6,a0
   194a8:	0017bf13          	seqz	t5,a5
   194ac:	40c88733          	sub	a4,a7,a2
   194b0:	006f67b3          	or	a5,t5,t1
   194b4:	8f1d                	sub	a4,a4,a5
   194b6:	4785                	li	a5,1
   194b8:	aab9                	j	19616 <__subtf3+0x8a6>
   194ba:	66a1                	lui	a3,0x8
   194bc:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   194be:	f8d784e3          	beq	a5,a3,19446 <__subtf3+0x6d6>
   194c2:	07400793          	li	a5,116
   194c6:	05e7d763          	bge	a5,t5,19514 <__subtf3+0x7a4>
   194ca:	ce02                	sw	zero,28(sp)
   194cc:	cc02                	sw	zero,24(sp)
   194ce:	ca02                	sw	zero,20(sp)
   194d0:	4685                	li	a3,1
   194d2:	a8e5                	j	195ca <__subtf3+0x85a>
   194d4:	66a1                	lui	a3,0x8
   194d6:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   194d8:	02d41463          	bne	s0,a3,19500 <__subtf3+0x790>
   194dc:	00a5e7b3          	or	a5,a1,a0
   194e0:	0117e7b3          	or	a5,a5,a7
   194e4:	8fd9                	or	a5,a5,a4
   194e6:	4681                	li	a3,0
   194e8:	c799                	beqz	a5,194f6 <__subtf3+0x786>
   194ea:	0128d693          	srli	a3,a7,0x12
   194ee:	0016c693          	xori	a3,a3,1
   194f2:	8a85                	andi	a3,a3,1
   194f4:	0692                	slli	a3,a3,0x4
   194f6:	d03a                	sw	a4,32(sp)
   194f8:	d22e                	sw	a1,36(sp)
   194fa:	d42a                	sw	a0,40(sp)
   194fc:	d646                	sw	a7,44(sp)
   194fe:	bc09                	j	18f10 <__subtf3+0x1a0>
   19500:	46f2                	lw	a3,28(sp)
   19502:	00080637          	lui	a2,0x80
   19506:	8ed1                	or	a3,a3,a2
   19508:	ce36                	sw	a3,28(sp)
   1950a:	07400693          	li	a3,116
   1950e:	faf6cee3          	blt	a3,a5,194ca <__subtf3+0x75a>
   19512:	8f3e                	mv	t5,a5
   19514:	405f5793          	srai	a5,t5,0x5
   19518:	8342                	mv	t1,a6
   1951a:	01ff7f13          	andi	t5,t5,31
   1951e:	4681                	li	a3,0
   19520:	4601                	li	a2,0
   19522:	02f61663          	bne	a2,a5,1954e <__subtf3+0x7de>
   19526:	460d                	li	a2,3
   19528:	8e1d                	sub	a2,a2,a5
   1952a:	00279313          	slli	t1,a5,0x2
   1952e:	020f1763          	bnez	t5,1955c <__subtf3+0x7ec>
   19532:	00680eb3          	add	t4,a6,t1
   19536:	000eae83          	lw	t4,0(t4)
   1953a:	0f05                	addi	t5,t5,1
   1953c:	0811                	addi	a6,a6,4
   1953e:	ffd82e23          	sw	t4,-4(a6)
   19542:	ffe658e3          	bge	a2,t5,19532 <__subtf3+0x7c2>
   19546:	4611                	li	a2,4
   19548:	40f607b3          	sub	a5,a2,a5
   1954c:	a881                	j	1959c <__subtf3+0x82c>
   1954e:	00032e83          	lw	t4,0(t1)
   19552:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x645a5>
   19554:	0311                	addi	t1,t1,4
   19556:	01d6e6b3          	or	a3,a3,t4
   1955a:	b7e1                	j	19522 <__subtf3+0x7b2>
   1955c:	04030493          	addi	s1,t1,64
   19560:	00248eb3          	add	t4,s1,sp
   19564:	fd0eae83          	lw	t4,-48(t4)
   19568:	02000393          	li	t2,32
   1956c:	41e383b3          	sub	t2,t2,t5
   19570:	007e9eb3          	sll	t4,t4,t2
   19574:	981a                	add	a6,a6,t1
   19576:	01d6e6b3          	or	a3,a3,t4
   1957a:	40600333          	neg	t1,t1
   1957e:	4f81                	li	t6,0
   19580:	0acfca63          	blt	t6,a2,19634 <__subtf3+0x8c4>
   19584:	4811                	li	a6,4
   19586:	40f807b3          	sub	a5,a6,a5
   1958a:	4872                	lw	a6,28(sp)
   1958c:	060a                	slli	a2,a2,0x2
   1958e:	04060613          	addi	a2,a2,64
   19592:	960a                	add	a2,a2,sp
   19594:	01e85833          	srl	a6,a6,t5
   19598:	fd062823          	sw	a6,-48(a2)
   1959c:	4611                	li	a2,4
   1959e:	8e1d                	sub	a2,a2,a5
   195a0:	060a                	slli	a2,a2,0x2
   195a2:	078a                	slli	a5,a5,0x2
   195a4:	4821                	li	a6,8
   195a6:	97f2                	add	a5,a5,t3
   195a8:	01066863          	bltu	a2,a6,195b8 <__subtf3+0x848>
   195ac:	0007a023          	sw	zero,0(a5)
   195b0:	0007a223          	sw	zero,4(a5)
   195b4:	1661                	addi	a2,a2,-8
   195b6:	07a1                	addi	a5,a5,8
   195b8:	4811                	li	a6,4
   195ba:	01066463          	bltu	a2,a6,195c2 <__subtf3+0x852>
   195be:	0007a023          	sw	zero,0(a5)
   195c2:	47c2                	lw	a5,16(sp)
   195c4:	00d036b3          	snez	a3,a3
   195c8:	8edd                	or	a3,a3,a5
   195ca:	4652                	lw	a2,20(sp)
   195cc:	c836                	sw	a3,16(sp)
   195ce:	40d706b3          	sub	a3,a4,a3
   195d2:	40c58833          	sub	a6,a1,a2
   195d6:	00d737b3          	sltu	a5,a4,a3
   195da:	0105b333          	sltu	t1,a1,a6
   195de:	40f80833          	sub	a6,a6,a5
   195e2:	4781                	li	a5,0
   195e4:	00d77563          	bgeu	a4,a3,195ee <__subtf3+0x87e>
   195e8:	8e0d                	sub	a2,a2,a1
   195ea:	00163793          	seqz	a5,a2
   195ee:	4762                	lw	a4,24(sp)
   195f0:	0067e7b3          	or	a5,a5,t1
   195f4:	4601                	li	a2,0
   195f6:	40e505b3          	sub	a1,a0,a4
   195fa:	00b53333          	sltu	t1,a0,a1
   195fe:	8d9d                	sub	a1,a1,a5
   19600:	c781                	beqz	a5,19608 <__subtf3+0x898>
   19602:	8f09                	sub	a4,a4,a0
   19604:	00173613          	seqz	a2,a4
   19608:	4772                	lw	a4,28(sp)
   1960a:	00666633          	or	a2,a2,t1
   1960e:	87a2                	mv	a5,s0
   19610:	40e88733          	sub	a4,a7,a4
   19614:	8f11                	sub	a4,a4,a2
   19616:	d036                	sw	a3,32(sp)
   19618:	d63a                	sw	a4,44(sp)
   1961a:	d42e                	sw	a1,40(sp)
   1961c:	d242                	sw	a6,36(sp)
   1961e:	00c71693          	slli	a3,a4,0xc
   19622:	de06d0e3          	bgez	a3,19402 <__subtf3+0x692>
   19626:	000806b7          	lui	a3,0x80
   1962a:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x645a3>
   1962c:	8f75                	and	a4,a4,a3
   1962e:	d63a                	sw	a4,44(sp)
   19630:	843e                	mv	s0,a5
   19632:	a1bd                	j	19aa0 <__subtf3+0xd30>
   19634:	00082e83          	lw	t4,0(a6)
   19638:	00482283          	lw	t0,4(a6)
   1963c:	006804b3          	add	s1,a6,t1
   19640:	01eedeb3          	srl	t4,t4,t5
   19644:	007292b3          	sll	t0,t0,t2
   19648:	005eeeb3          	or	t4,t4,t0
   1964c:	01d4a023          	sw	t4,0(s1)
   19650:	0f85                	addi	t6,t6,1
   19652:	0811                	addi	a6,a6,4
   19654:	b735                	j	19580 <__subtf3+0x810>
   19656:	4bd2                	lw	s7,20(sp)
   19658:	4b62                	lw	s6,24(sp)
   1965a:	4c72                	lw	s8,28(sp)
   1965c:	20078763          	beqz	a5,1986a <__subtf3+0xafa>
   19660:	408a87b3          	sub	a5,s5,s0
   19664:	e05d                	bnez	s0,1970a <__subtf3+0x99a>
   19666:	4892                	lw	a7,4(sp)
   19668:	4e22                	lw	t3,8(sp)
   1966a:	4632                	lw	a2,12(sp)
   1966c:	01c8e6b3          	or	a3,a7,t3
   19670:	8ed1                	or	a3,a3,a2
   19672:	8ed9                	or	a3,a3,a4
   19674:	e69d                	bnez	a3,196a2 <__subtf3+0x932>
   19676:	6721                	lui	a4,0x8
   19678:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1967a:	00e79e63          	bne	a5,a4,19696 <__subtf3+0x926>
   1967e:	016be733          	or	a4,s7,s6
   19682:	01876733          	or	a4,a4,s8
   19686:	8f45                	or	a4,a4,s1
   19688:	c719                	beqz	a4,19696 <__subtf3+0x926>
   1968a:	012c5413          	srli	s0,s8,0x12
   1968e:	00144413          	xori	s0,s0,1
   19692:	8805                	andi	s0,s0,1
   19694:	0412                	slli	s0,s0,0x4
   19696:	d026                	sw	s1,32(sp)
   19698:	d25e                	sw	s7,36(sp)
   1969a:	d45a                	sw	s6,40(sp)
   1969c:	d662                	sw	s8,44(sp)
   1969e:	89e6                	mv	s3,s9
   196a0:	b4b1                	j	190ec <__subtf3+0x37c>
   196a2:	fff78313          	addi	t1,a5,-1
   196a6:	04031563          	bnez	t1,196f0 <__subtf3+0x980>
   196aa:	40e486b3          	sub	a3,s1,a4
   196ae:	411b8833          	sub	a6,s7,a7
   196b2:	00d4b733          	sltu	a4,s1,a3
   196b6:	010bb7b3          	sltu	a5,s7,a6
   196ba:	40e80833          	sub	a6,a6,a4
   196be:	4701                	li	a4,0
   196c0:	00d4f663          	bgeu	s1,a3,196cc <__subtf3+0x95c>
   196c4:	417888b3          	sub	a7,a7,s7
   196c8:	0018b713          	seqz	a4,a7
   196cc:	41cb05b3          	sub	a1,s6,t3
   196d0:	8f5d                	or	a4,a4,a5
   196d2:	00bb3533          	sltu	a0,s6,a1
   196d6:	8d99                	sub	a1,a1,a4
   196d8:	c709                	beqz	a4,196e2 <__subtf3+0x972>
   196da:	416e07b3          	sub	a5,t3,s6
   196de:	0017b313          	seqz	t1,a5
   196e2:	40cc0733          	sub	a4,s8,a2
   196e6:	00a367b3          	or	a5,t1,a0
   196ea:	8f1d                	sub	a4,a4,a5
   196ec:	89e6                	mv	s3,s9
   196ee:	b3e1                	j	194b6 <__subtf3+0x746>
   196f0:	6721                	lui	a4,0x8
   196f2:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   196f4:	f8e785e3          	beq	a5,a4,1967e <__subtf3+0x90e>
   196f8:	07400793          	li	a5,116
   196fc:	0467d863          	bge	a5,t1,1974c <__subtf3+0x9dc>
   19700:	c602                	sw	zero,12(sp)
   19702:	c402                	sw	zero,8(sp)
   19704:	c202                	sw	zero,4(sp)
   19706:	4685                	li	a3,1
   19708:	a8cd                	j	197fa <__subtf3+0xa8a>
   1970a:	6721                	lui	a4,0x8
   1970c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1970e:	02ea9563          	bne	s5,a4,19738 <__subtf3+0x9c8>
   19712:	016be7b3          	or	a5,s7,s6
   19716:	0187e7b3          	or	a5,a5,s8
   1971a:	8fc5                	or	a5,a5,s1
   1971c:	4401                	li	s0,0
   1971e:	c799                	beqz	a5,1972c <__subtf3+0x9bc>
   19720:	012c5413          	srli	s0,s8,0x12
   19724:	00144413          	xori	s0,s0,1
   19728:	8805                	andi	s0,s0,1
   1972a:	0412                	slli	s0,s0,0x4
   1972c:	d026                	sw	s1,32(sp)
   1972e:	d25e                	sw	s7,36(sp)
   19730:	d45a                	sw	s6,40(sp)
   19732:	d662                	sw	s8,44(sp)
   19734:	87d6                	mv	a5,s5
   19736:	b7a5                	j	1969e <__subtf3+0x92e>
   19738:	4732                	lw	a4,12(sp)
   1973a:	000806b7          	lui	a3,0x80
   1973e:	8f55                	or	a4,a4,a3
   19740:	c63a                	sw	a4,12(sp)
   19742:	07400713          	li	a4,116
   19746:	faf74de3          	blt	a4,a5,19700 <__subtf3+0x990>
   1974a:	833e                	mv	t1,a5
   1974c:	02000793          	li	a5,32
   19750:	02f347b3          	div	a5,t1,a5
   19754:	86ae                	mv	a3,a1
   19756:	4401                	li	s0,0
   19758:	4701                	li	a4,0
   1975a:	02f74663          	blt	a4,a5,19786 <__subtf3+0xa16>
   1975e:	470d                	li	a4,3
   19760:	01f37813          	andi	a6,t1,31
   19764:	8f1d                	sub	a4,a4,a5
   19766:	00279613          	slli	a2,a5,0x2
   1976a:	02081363          	bnez	a6,19790 <__subtf3+0xa20>
   1976e:	00c586b3          	add	a3,a1,a2
   19772:	4294                	lw	a3,0(a3)
   19774:	0805                	addi	a6,a6,1
   19776:	c194                	sw	a3,0(a1)
   19778:	0591                	addi	a1,a1,4
   1977a:	ff075ae3          	bge	a4,a6,1976e <__subtf3+0x9fe>
   1977e:	4711                	li	a4,4
   19780:	40f707b3          	sub	a5,a4,a5
   19784:	a899                	j	197da <__subtf3+0xa6a>
   19786:	4290                	lw	a2,0(a3)
   19788:	0705                	addi	a4,a4,1
   1978a:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x645a8>
   1978c:	8c51                	or	s0,s0,a2
   1978e:	b7f1                	j	1975a <__subtf3+0x9ea>
   19790:	02000693          	li	a3,32
   19794:	02d36333          	rem	t1,t1,a3
   19798:	40668333          	sub	t1,a3,t1
   1979c:	86be                	mv	a3,a5
   1979e:	0007d363          	bgez	a5,197a4 <__subtf3+0xa34>
   197a2:	4681                	li	a3,0
   197a4:	068a                	slli	a3,a3,0x2
   197a6:	04068693          	addi	a3,a3,64
   197aa:	968a                	add	a3,a3,sp
   197ac:	fc06a683          	lw	a3,-64(a3)
   197b0:	95b2                	add	a1,a1,a2
   197b2:	4881                	li	a7,0
   197b4:	006696b3          	sll	a3,a3,t1
   197b8:	8c55                	or	s0,s0,a3
   197ba:	40c00633          	neg	a2,a2
   197be:	08e8c663          	blt	a7,a4,1984a <__subtf3+0xada>
   197c2:	4691                	li	a3,4
   197c4:	40f687b3          	sub	a5,a3,a5
   197c8:	46b2                	lw	a3,12(sp)
   197ca:	070a                	slli	a4,a4,0x2
   197cc:	04070713          	addi	a4,a4,64
   197d0:	970a                	add	a4,a4,sp
   197d2:	0106d6b3          	srl	a3,a3,a6
   197d6:	fcd72023          	sw	a3,-64(a4)
   197da:	0057a713          	slti	a4,a5,5
   197de:	4601                	li	a2,0
   197e0:	c701                	beqz	a4,197e8 <__subtf3+0xa78>
   197e2:	4611                	li	a2,4
   197e4:	8e1d                	sub	a2,a2,a5
   197e6:	060a                	slli	a2,a2,0x2
   197e8:	078a                	slli	a5,a5,0x2
   197ea:	953e                	add	a0,a0,a5
   197ec:	4581                	li	a1,0
   197ee:	a63f70ef          	jal	11250 <memset>
   197f2:	4782                	lw	a5,0(sp)
   197f4:	008036b3          	snez	a3,s0
   197f8:	8edd                	or	a3,a3,a5
   197fa:	4712                	lw	a4,4(sp)
   197fc:	c036                	sw	a3,0(sp)
   197fe:	40d486b3          	sub	a3,s1,a3
   19802:	40eb8833          	sub	a6,s7,a4
   19806:	00d4b7b3          	sltu	a5,s1,a3
   1980a:	010bb633          	sltu	a2,s7,a6
   1980e:	40f80833          	sub	a6,a6,a5
   19812:	4781                	li	a5,0
   19814:	00d4f663          	bgeu	s1,a3,19820 <__subtf3+0xab0>
   19818:	41770733          	sub	a4,a4,s7
   1981c:	00173793          	seqz	a5,a4
   19820:	4722                	lw	a4,8(sp)
   19822:	8fd1                	or	a5,a5,a2
   19824:	4601                	li	a2,0
   19826:	40eb05b3          	sub	a1,s6,a4
   1982a:	00bb3533          	sltu	a0,s6,a1
   1982e:	8d9d                	sub	a1,a1,a5
   19830:	c789                	beqz	a5,1983a <__subtf3+0xaca>
   19832:	41670733          	sub	a4,a4,s6
   19836:	00173613          	seqz	a2,a4
   1983a:	4732                	lw	a4,12(sp)
   1983c:	8e49                	or	a2,a2,a0
   1983e:	87d6                	mv	a5,s5
   19840:	40ec0733          	sub	a4,s8,a4
   19844:	8f11                	sub	a4,a4,a2
   19846:	89e6                	mv	s3,s9
   19848:	b3f9                	j	19616 <__subtf3+0x8a6>
   1984a:	4194                	lw	a3,0(a1)
   1984c:	0045ae03          	lw	t3,4(a1)
   19850:	00c58eb3          	add	t4,a1,a2
   19854:	0106d6b3          	srl	a3,a3,a6
   19858:	006e1e33          	sll	t3,t3,t1
   1985c:	01c6e6b3          	or	a3,a3,t3
   19860:	00dea023          	sw	a3,0(t4)
   19864:	0885                	addi	a7,a7,1
   19866:	0591                	addi	a1,a1,4
   19868:	bf99                	j	197be <__subtf3+0xa4e>
   1986a:	00140693          	addi	a3,s0,1
   1986e:	01169813          	slli	a6,a3,0x11
   19872:	01285813          	srli	a6,a6,0x12
   19876:	4612                	lw	a2,4(sp)
   19878:	45a2                	lw	a1,8(sp)
   1987a:	4532                	lw	a0,12(sp)
   1987c:	18081363          	bnez	a6,19a02 <__subtf3+0xc92>
   19880:	016be7b3          	or	a5,s7,s6
   19884:	00b666b3          	or	a3,a2,a1
   19888:	0187e7b3          	or	a5,a5,s8
   1988c:	8ec9                	or	a3,a3,a0
   1988e:	8fc5                	or	a5,a5,s1
   19890:	8ed9                	or	a3,a3,a4
   19892:	e869                	bnez	s0,19964 <__subtf3+0xbf4>
   19894:	ea99                	bnez	a3,198aa <__subtf3+0xb3a>
   19896:	d026                	sw	s1,32(sp)
   19898:	d25e                	sw	s7,36(sp)
   1989a:	d45a                	sw	s6,40(sp)
   1989c:	d662                	sw	s8,44(sp)
   1989e:	ebcd                	bnez	a5,19950 <__subtf3+0xbe0>
   198a0:	ffea0993          	addi	s3,s4,-2
   198a4:	0019b993          	seqz	s3,s3
   198a8:	b429                	j	192b2 <__subtf3+0x542>
   198aa:	e791                	bnez	a5,198b6 <__subtf3+0xb46>
   198ac:	d03a                	sw	a4,32(sp)
   198ae:	d232                	sw	a2,36(sp)
   198b0:	d42e                	sw	a1,40(sp)
   198b2:	d62a                	sw	a0,44(sp)
   198b4:	bafd                	j	192b2 <__subtf3+0x542>
   198b6:	409707b3          	sub	a5,a4,s1
   198ba:	41760e33          	sub	t3,a2,s7
   198be:	00f73833          	sltu	a6,a4,a5
   198c2:	01c638b3          	sltu	a7,a2,t3
   198c6:	410e0833          	sub	a6,t3,a6
   198ca:	4681                	li	a3,0
   198cc:	00f77463          	bgeu	a4,a5,198d4 <__subtf3+0xb64>
   198d0:	001e3693          	seqz	a3,t3
   198d4:	0116e6b3          	or	a3,a3,a7
   198d8:	416588b3          	sub	a7,a1,s6
   198dc:	0115bf33          	sltu	t5,a1,a7
   198e0:	40d88eb3          	sub	t4,a7,a3
   198e4:	4301                	li	t1,0
   198e6:	c299                	beqz	a3,198ec <__subtf3+0xb7c>
   198e8:	0018b313          	seqz	t1,a7
   198ec:	01e36333          	or	t1,t1,t5
   198f0:	418506b3          	sub	a3,a0,s8
   198f4:	406686b3          	sub	a3,a3,t1
   198f8:	d636                	sw	a3,44(sp)
   198fa:	d476                	sw	t4,40(sp)
   198fc:	d242                	sw	a6,36(sp)
   198fe:	d03e                	sw	a5,32(sp)
   19900:	00c69313          	slli	t1,a3,0xc
   19904:	04035863          	bgez	t1,19954 <__subtf3+0xbe4>
   19908:	40e48733          	sub	a4,s1,a4
   1990c:	40cb8633          	sub	a2,s7,a2
   19910:	00e4b7b3          	sltu	a5,s1,a4
   19914:	00cbbbb3          	sltu	s7,s7,a2
   19918:	8e1d                	sub	a2,a2,a5
   1991a:	4781                	li	a5,0
   1991c:	00e4f463          	bgeu	s1,a4,19924 <__subtf3+0xbb4>
   19920:	001e3793          	seqz	a5,t3
   19924:	40bb05b3          	sub	a1,s6,a1
   19928:	0177ebb3          	or	s7,a5,s7
   1992c:	00bb3b33          	sltu	s6,s6,a1
   19930:	417585b3          	sub	a1,a1,s7
   19934:	000b8463          	beqz	s7,1993c <__subtf3+0xbcc>
   19938:	0018b413          	seqz	s0,a7
   1993c:	40ac0533          	sub	a0,s8,a0
   19940:	01646b33          	or	s6,s0,s6
   19944:	41650533          	sub	a0,a0,s6
   19948:	d62a                	sw	a0,44(sp)
   1994a:	d42e                	sw	a1,40(sp)
   1994c:	d232                	sw	a2,36(sp)
   1994e:	d03a                	sw	a4,32(sp)
   19950:	89e6                	mv	s3,s9
   19952:	b285                	j	192b2 <__subtf3+0x542>
   19954:	0107e7b3          	or	a5,a5,a6
   19958:	01d7e7b3          	or	a5,a5,t4
   1995c:	8fd5                	or	a5,a5,a3
   1995e:	94079ae3          	bnez	a5,192b2 <__subtf3+0x542>
   19962:	bf3d                	j	198a0 <__subtf3+0xb30>
   19964:	6821                	lui	a6,0x8
   19966:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   19968:	03041263          	bne	s0,a6,1998c <__subtf3+0xc1c>
   1996c:	4c068f63          	beqz	a3,19e4a <__subtf3+0x10da>
   19970:	01255413          	srli	s0,a0,0x12
   19974:	00144413          	xori	s0,s0,1
   19978:	8805                	andi	s0,s0,1
   1997a:	0412                	slli	s0,s0,0x4
   1997c:	010a8b63          	beq	s5,a6,19992 <__subtf3+0xc22>
   19980:	ebb1                	bnez	a5,199d4 <__subtf3+0xc64>
   19982:	d03a                	sw	a4,32(sp)
   19984:	d232                	sw	a2,36(sp)
   19986:	d42e                	sw	a1,40(sp)
   19988:	d62a                	sw	a0,44(sp)
   1998a:	b2cd                	j	1936c <__subtf3+0x5fc>
   1998c:	4401                	li	s0,0
   1998e:	010a9363          	bne	s5,a6,19994 <__subtf3+0xc24>
   19992:	eb9d                	bnez	a5,199c8 <__subtf3+0xc58>
   19994:	f6f5                	bnez	a3,19980 <__subtf3+0xc10>
   19996:	e3a5                	bnez	a5,199f6 <__subtf3+0xc86>
   19998:	67a1                	lui	a5,0x8
   1999a:	d63e                	sw	a5,44(sp)
   1999c:	d402                	sw	zero,40(sp)
   1999e:	d202                	sw	zero,36(sp)
   199a0:	d002                	sw	zero,32(sp)
   199a2:	101c                	addi	a5,sp,32
   199a4:	0850                	addi	a2,sp,20
   199a6:	47d8                	lw	a4,12(a5)
   199a8:	4794                	lw	a3,8(a5)
   199aa:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   199ac:	070e                	slli	a4,a4,0x3
   199ae:	82f5                	srli	a3,a3,0x1d
   199b0:	8f55                	or	a4,a4,a3
   199b2:	cb98                	sw	a4,16(a5)
   199b4:	fef619e3          	bne	a2,a5,199a6 <__subtf3+0xc36>
   199b8:	67a1                	lui	a5,0x8
   199ba:	4981                	li	s3,0
   199bc:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   199be:	4441                	li	s0,16
   199c0:	f2cff06f          	j	190ec <__subtf3+0x37c>
   199c4:	4401                	li	s0,0
   199c6:	b7f1                	j	19992 <__subtf3+0xc22>
   199c8:	00dc1813          	slli	a6,s8,0xd
   199cc:	fc0844e3          	bltz	a6,19994 <__subtf3+0xc24>
   199d0:	4441                	li	s0,16
   199d2:	c295                	beqz	a3,199f6 <__subtf3+0xc86>
   199d4:	67a1                	lui	a5,0x8
   199d6:	d63e                	sw	a5,44(sp)
   199d8:	d402                	sw	zero,40(sp)
   199da:	d202                	sw	zero,36(sp)
   199dc:	d002                	sw	zero,32(sp)
   199de:	101c                	addi	a5,sp,32
   199e0:	0850                	addi	a2,sp,20
   199e2:	47d8                	lw	a4,12(a5)
   199e4:	4794                	lw	a3,8(a5)
   199e6:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   199e8:	070e                	slli	a4,a4,0x3
   199ea:	82f5                	srli	a3,a3,0x1d
   199ec:	8f55                	or	a4,a4,a3
   199ee:	cb98                	sw	a4,16(a5)
   199f0:	fef619e3          	bne	a2,a5,199e2 <__subtf3+0xc72>
   199f4:	ba5d                	j	193aa <__subtf3+0x63a>
   199f6:	d026                	sw	s1,32(sp)
   199f8:	d25e                	sw	s7,36(sp)
   199fa:	d45a                	sw	s6,40(sp)
   199fc:	d662                	sw	s8,44(sp)
   199fe:	89e6                	mv	s3,s9
   19a00:	b2b5                	j	1936c <__subtf3+0x5fc>
   19a02:	409706b3          	sub	a3,a4,s1
   19a06:	41760e33          	sub	t3,a2,s7
   19a0a:	00d73eb3          	sltu	t4,a4,a3
   19a0e:	01c638b3          	sltu	a7,a2,t3
   19a12:	41de0eb3          	sub	t4,t3,t4
   19a16:	4801                	li	a6,0
   19a18:	00d77463          	bgeu	a4,a3,19a20 <__subtf3+0xcb0>
   19a1c:	001e3813          	seqz	a6,t3
   19a20:	01186833          	or	a6,a6,a7
   19a24:	416588b3          	sub	a7,a1,s6
   19a28:	0115bf33          	sltu	t5,a1,a7
   19a2c:	41088fb3          	sub	t6,a7,a6
   19a30:	4301                	li	t1,0
   19a32:	00080463          	beqz	a6,19a3a <__subtf3+0xcca>
   19a36:	0018b313          	seqz	t1,a7
   19a3a:	01e36333          	or	t1,t1,t5
   19a3e:	41850833          	sub	a6,a0,s8
   19a42:	40680833          	sub	a6,a6,t1
   19a46:	d642                	sw	a6,44(sp)
   19a48:	d47e                	sw	t6,40(sp)
   19a4a:	d276                	sw	t4,36(sp)
   19a4c:	d036                	sw	a3,32(sp)
   19a4e:	00c81313          	slli	t1,a6,0xc
   19a52:	10035163          	bgez	t1,19b54 <__subtf3+0xde4>
   19a56:	40e48733          	sub	a4,s1,a4
   19a5a:	40cb8633          	sub	a2,s7,a2
   19a5e:	00e4b6b3          	sltu	a3,s1,a4
   19a62:	00cbbbb3          	sltu	s7,s7,a2
   19a66:	8e15                	sub	a2,a2,a3
   19a68:	4681                	li	a3,0
   19a6a:	00e4f463          	bgeu	s1,a4,19a72 <__subtf3+0xd02>
   19a6e:	001e3693          	seqz	a3,t3
   19a72:	40bb05b3          	sub	a1,s6,a1
   19a76:	0176ebb3          	or	s7,a3,s7
   19a7a:	00bb3b33          	sltu	s6,s6,a1
   19a7e:	417585b3          	sub	a1,a1,s7
   19a82:	000b8463          	beqz	s7,19a8a <__subtf3+0xd1a>
   19a86:	0018b793          	seqz	a5,a7
   19a8a:	40ac0533          	sub	a0,s8,a0
   19a8e:	0167eb33          	or	s6,a5,s6
   19a92:	41650533          	sub	a0,a0,s6
   19a96:	d62a                	sw	a0,44(sp)
   19a98:	d42e                	sw	a1,40(sp)
   19a9a:	d232                	sw	a2,36(sp)
   19a9c:	d03a                	sw	a4,32(sp)
   19a9e:	89e6                	mv	s3,s9
   19aa0:	5532                	lw	a0,44(sp)
   19aa2:	c169                	beqz	a0,19b64 <__subtf3+0xdf4>
   19aa4:	7dc000ef          	jal	1a280 <__clzsi2>
   19aa8:	ff450793          	addi	a5,a0,-12
   19aac:	02000693          	li	a3,32
   19ab0:	01f7f813          	andi	a6,a5,31
   19ab4:	02d7c733          	div	a4,a5,a3
   19ab8:	0c080763          	beqz	a6,19b86 <__subtf3+0xe16>
   19abc:	02010313          	addi	t1,sp,32
   19ac0:	02d7e633          	rem	a2,a5,a3
   19ac4:	40c685b3          	sub	a1,a3,a2
   19ac8:	5671                	li	a2,-4
   19aca:	02c70633          	mul	a2,a4,a2
   19ace:	00c60693          	addi	a3,a2,12
   19ad2:	969a                	add	a3,a3,t1
   19ad4:	40c00633          	neg	a2,a2
   19ad8:	0cd31763          	bne	t1,a3,19ba6 <__subtf3+0xe36>
   19adc:	5602                	lw	a2,32(sp)
   19ade:	fff70693          	addi	a3,a4,-1
   19ae2:	070a                	slli	a4,a4,0x2
   19ae4:	04070713          	addi	a4,a4,64
   19ae8:	970a                	add	a4,a4,sp
   19aea:	01061633          	sll	a2,a2,a6
   19aee:	fec72023          	sw	a2,-32(a4)
   19af2:	00168713          	addi	a4,a3,1
   19af6:	070a                	slli	a4,a4,0x2
   19af8:	1014                	addi	a3,sp,32
   19afa:	4621                	li	a2,8
   19afc:	88b6                	mv	a7,a3
   19afe:	00c76863          	bltu	a4,a2,19b0e <__subtf3+0xd9e>
   19b02:	0006a023          	sw	zero,0(a3)
   19b06:	0006a223          	sw	zero,4(a3)
   19b0a:	1761                	addi	a4,a4,-8
   19b0c:	1034                	addi	a3,sp,40
   19b0e:	4611                	li	a2,4
   19b10:	00c76463          	bltu	a4,a2,19b18 <__subtf3+0xda8>
   19b14:	0006a023          	sw	zero,0(a3)
   19b18:	1487c863          	blt	a5,s0,19c68 <__subtf3+0xef8>
   19b1c:	8f81                	sub	a5,a5,s0
   19b1e:	0785                	addi	a5,a5,1
   19b20:	4057d713          	srai	a4,a5,0x5
   19b24:	85c6                	mv	a1,a7
   19b26:	8bfd                	andi	a5,a5,31
   19b28:	8646                	mv	a2,a7
   19b2a:	4301                	li	t1,0
   19b2c:	4681                	li	a3,0
   19b2e:	08e69b63          	bne	a3,a4,19bc4 <__subtf3+0xe54>
   19b32:	468d                	li	a3,3
   19b34:	8e99                	sub	a3,a3,a4
   19b36:	00271613          	slli	a2,a4,0x2
   19b3a:	ebd9                	bnez	a5,19bd0 <__subtf3+0xe60>
   19b3c:	00c58533          	add	a0,a1,a2
   19b40:	4108                	lw	a0,0(a0)
   19b42:	0785                	addi	a5,a5,1
   19b44:	c188                	sw	a0,0(a1)
   19b46:	0591                	addi	a1,a1,4
   19b48:	fef6dae3          	bge	a3,a5,19b3c <__subtf3+0xdcc>
   19b4c:	4791                	li	a5,4
   19b4e:	40e78733          	sub	a4,a5,a4
   19b52:	a87d                	j	19c10 <__subtf3+0xea0>
   19b54:	01d6e6b3          	or	a3,a3,t4
   19b58:	01f6e6b3          	or	a3,a3,t6
   19b5c:	0106e6b3          	or	a3,a3,a6
   19b60:	f2a1                	bnez	a3,19aa0 <__subtf3+0xd30>
   19b62:	bb3d                	j	198a0 <__subtf3+0xb30>
   19b64:	5522                	lw	a0,40(sp)
   19b66:	c509                	beqz	a0,19b70 <__subtf3+0xe00>
   19b68:	2f21                	jal	1a280 <__clzsi2>
   19b6a:	02050513          	addi	a0,a0,32
   19b6e:	bf2d                	j	19aa8 <__subtf3+0xd38>
   19b70:	5512                	lw	a0,36(sp)
   19b72:	c509                	beqz	a0,19b7c <__subtf3+0xe0c>
   19b74:	2731                	jal	1a280 <__clzsi2>
   19b76:	04050513          	addi	a0,a0,64
   19b7a:	b73d                	j	19aa8 <__subtf3+0xd38>
   19b7c:	5502                	lw	a0,32(sp)
   19b7e:	2709                	jal	1a280 <__clzsi2>
   19b80:	06050513          	addi	a0,a0,96
   19b84:	b715                	j	19aa8 <__subtf3+0xd38>
   19b86:	55f1                	li	a1,-4
   19b88:	02b705b3          	mul	a1,a4,a1
   19b8c:	1074                	addi	a3,sp,44
   19b8e:	460d                	li	a2,3
   19b90:	00b68533          	add	a0,a3,a1
   19b94:	4108                	lw	a0,0(a0)
   19b96:	167d                	addi	a2,a2,-1
   19b98:	16f1                	addi	a3,a3,-4
   19b9a:	c2c8                	sw	a0,4(a3)
   19b9c:	fee65ae3          	bge	a2,a4,19b90 <__subtf3+0xe20>
   19ba0:	fff70693          	addi	a3,a4,-1
   19ba4:	b7b9                	j	19af2 <__subtf3+0xd82>
   19ba6:	4288                	lw	a0,0(a3)
   19ba8:	ffc6a883          	lw	a7,-4(a3)
   19bac:	00c68e33          	add	t3,a3,a2
   19bb0:	01051533          	sll	a0,a0,a6
   19bb4:	00b8d8b3          	srl	a7,a7,a1
   19bb8:	01156533          	or	a0,a0,a7
   19bbc:	00ae2023          	sw	a0,0(t3)
   19bc0:	16f1                	addi	a3,a3,-4
   19bc2:	bf19                	j	19ad8 <__subtf3+0xd68>
   19bc4:	4208                	lw	a0,0(a2)
   19bc6:	0685                	addi	a3,a3,1
   19bc8:	0611                	addi	a2,a2,4
   19bca:	00a36333          	or	t1,t1,a0
   19bce:	b785                	j	19b2e <__subtf3+0xdbe>
   19bd0:	04060593          	addi	a1,a2,64
   19bd4:	958a                	add	a1,a1,sp
   19bd6:	fe05a583          	lw	a1,-32(a1)
   19bda:	02000813          	li	a6,32
   19bde:	40f80833          	sub	a6,a6,a5
   19be2:	010595b3          	sll	a1,a1,a6
   19be6:	00b36333          	or	t1,t1,a1
   19bea:	4e01                	li	t3,0
   19bec:	00c885b3          	add	a1,a7,a2
   19bf0:	40c00633          	neg	a2,a2
   19bf4:	04de4a63          	blt	t3,a3,19c48 <__subtf3+0xed8>
   19bf8:	4611                	li	a2,4
   19bfa:	40e60733          	sub	a4,a2,a4
   19bfe:	5632                	lw	a2,44(sp)
   19c00:	068a                	slli	a3,a3,0x2
   19c02:	04068693          	addi	a3,a3,64
   19c06:	968a                	add	a3,a3,sp
   19c08:	00f657b3          	srl	a5,a2,a5
   19c0c:	fef6a023          	sw	a5,-32(a3)
   19c10:	4691                	li	a3,4
   19c12:	8e99                	sub	a3,a3,a4
   19c14:	070a                	slli	a4,a4,0x2
   19c16:	00e887b3          	add	a5,a7,a4
   19c1a:	00269713          	slli	a4,a3,0x2
   19c1e:	46a1                	li	a3,8
   19c20:	00d76863          	bltu	a4,a3,19c30 <__subtf3+0xec0>
   19c24:	0007a023          	sw	zero,0(a5)
   19c28:	0007a223          	sw	zero,4(a5)
   19c2c:	1761                	addi	a4,a4,-8
   19c2e:	07a1                	addi	a5,a5,8
   19c30:	4691                	li	a3,4
   19c32:	00d76463          	bltu	a4,a3,19c3a <__subtf3+0xeca>
   19c36:	0007a023          	sw	zero,0(a5)
   19c3a:	5702                	lw	a4,32(sp)
   19c3c:	006037b3          	snez	a5,t1
   19c40:	8fd9                	or	a5,a5,a4
   19c42:	d03e                	sw	a5,32(sp)
   19c44:	e6eff06f          	j	192b2 <__subtf3+0x542>
   19c48:	4188                	lw	a0,0(a1)
   19c4a:	0045ae83          	lw	t4,4(a1)
   19c4e:	00c58f33          	add	t5,a1,a2
   19c52:	00f55533          	srl	a0,a0,a5
   19c56:	010e9eb3          	sll	t4,t4,a6
   19c5a:	01d56533          	or	a0,a0,t4
   19c5e:	00af2023          	sw	a0,0(t5)
   19c62:	0e05                	addi	t3,t3,1
   19c64:	0591                	addi	a1,a1,4
   19c66:	b779                	j	19bf4 <__subtf3+0xe84>
   19c68:	5732                	lw	a4,44(sp)
   19c6a:	fff806b7          	lui	a3,0xfff80
   19c6e:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19c70:	8f75                	and	a4,a4,a3
   19c72:	40f407b3          	sub	a5,s0,a5
   19c76:	d63a                	sw	a4,44(sp)
   19c78:	f8aff06f          	j	19402 <__subtf3+0x692>
   19c7c:	da2e                	sw	a1,52(sp)
   19c7e:	d83e                	sw	a5,48(sp)
   19c80:	dc32                	sw	a2,56(sp)
   19c82:	de36                	sw	a3,60(sp)
   19c84:	1818                	addi	a4,sp,48
   19c86:	104c                	addi	a1,sp,36
   19c88:	4754                	lw	a3,12(a4)
   19c8a:	4710                	lw	a2,8(a4)
   19c8c:	1771                	addi	a4,a4,-4
   19c8e:	0686                	slli	a3,a3,0x1
   19c90:	827d                	srli	a2,a2,0x1f
   19c92:	8ed1                	or	a3,a3,a2
   19c94:	cb14                	sw	a3,16(a4)
   19c96:	fee599e3          	bne	a1,a4,19c88 <__subtf3+0xf18>
   19c9a:	0786                	slli	a5,a5,0x1
   19c9c:	0077f713          	andi	a4,a5,7
   19ca0:	4401                	li	s0,0
   19ca2:	cf0d                	beqz	a4,19cdc <__subtf3+0xf6c>
   19ca4:	4709                	li	a4,2
   19ca6:	56f2                	lw	a3,60(sp)
   19ca8:	14ea0463          	beq	s4,a4,19df0 <__subtf3+0x1080>
   19cac:	470d                	li	a4,3
   19cae:	12ea0b63          	beq	s4,a4,19de4 <__subtf3+0x1074>
   19cb2:	020a1463          	bnez	s4,19cda <__subtf3+0xf6a>
   19cb6:	00f7f713          	andi	a4,a5,15
   19cba:	4611                	li	a2,4
   19cbc:	00c70f63          	beq	a4,a2,19cda <__subtf3+0xf6a>
   19cc0:	0791                	addi	a5,a5,4
   19cc2:	0047b793          	sltiu	a5,a5,4
   19cc6:	5752                	lw	a4,52(sp)
   19cc8:	973e                	add	a4,a4,a5
   19cca:	00f73733          	sltu	a4,a4,a5
   19cce:	57e2                	lw	a5,56(sp)
   19cd0:	97ba                	add	a5,a5,a4
   19cd2:	00e7b7b3          	sltu	a5,a5,a4
   19cd6:	97b6                	add	a5,a5,a3
   19cd8:	de3e                	sw	a5,60(sp)
   19cda:	4405                	li	s0,1
   19cdc:	56f2                	lw	a3,60(sp)
   19cde:	4781                	li	a5,0
   19ce0:	82d1                	srli	a3,a3,0x14
   19ce2:	0016c693          	xori	a3,a3,1
   19ce6:	8a85                	andi	a3,a3,1
   19ce8:	5702                	lw	a4,32(sp)
   19cea:	00777613          	andi	a2,a4,7
   19cee:	c229                	beqz	a2,19d30 <__subtf3+0xfc0>
   19cf0:	4589                	li	a1,2
   19cf2:	5632                	lw	a2,44(sp)
   19cf4:	10ba0863          	beq	s4,a1,19e04 <__subtf3+0x1094>
   19cf8:	458d                	li	a1,3
   19cfa:	0eba0e63          	beq	s4,a1,19df6 <__subtf3+0x1086>
   19cfe:	020a1763          	bnez	s4,19d2c <__subtf3+0xfbc>
   19d02:	00f77593          	andi	a1,a4,15
   19d06:	4511                	li	a0,4
   19d08:	02a58263          	beq	a1,a0,19d2c <__subtf3+0xfbc>
   19d0c:	0711                	addi	a4,a4,4
   19d0e:	d03a                	sw	a4,32(sp)
   19d10:	00473713          	sltiu	a4,a4,4
   19d14:	5592                	lw	a1,36(sp)
   19d16:	972e                	add	a4,a4,a1
   19d18:	d23a                	sw	a4,36(sp)
   19d1a:	00b73733          	sltu	a4,a4,a1
   19d1e:	55a2                	lw	a1,40(sp)
   19d20:	972e                	add	a4,a4,a1
   19d22:	d43a                	sw	a4,40(sp)
   19d24:	00b73733          	sltu	a4,a4,a1
   19d28:	9732                	add	a4,a4,a2
   19d2a:	d63a                	sw	a4,44(sp)
   19d2c:	00146413          	ori	s0,s0,1
   19d30:	c689                	beqz	a3,19d3a <__subtf3+0xfca>
   19d32:	00147713          	andi	a4,s0,1
   19d36:	0706                	slli	a4,a4,0x1
   19d38:	8c59                	or	s0,s0,a4
   19d3a:	5732                	lw	a4,44(sp)
   19d3c:	00c71693          	slli	a3,a4,0xc
   19d40:	0006dc63          	bgez	a3,19d58 <__subtf3+0xfe8>
   19d44:	66a1                	lui	a3,0x8
   19d46:	0785                	addi	a5,a5,1
   19d48:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19d4a:	0cd78063          	beq	a5,a3,19e0a <__subtf3+0x109a>
   19d4e:	fff806b7          	lui	a3,0xfff80
   19d52:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19d54:	8f75                	and	a4,a4,a3
   19d56:	d63a                	sw	a4,44(sp)
   19d58:	1018                	addi	a4,sp,32
   19d5a:	106c                	addi	a1,sp,44
   19d5c:	4314                	lw	a3,0(a4)
   19d5e:	4350                	lw	a2,4(a4)
   19d60:	828d                	srli	a3,a3,0x3
   19d62:	0676                	slli	a2,a2,0x1d
   19d64:	8ed1                	or	a3,a3,a2
   19d66:	c314                	sw	a3,0(a4)
   19d68:	0711                	addi	a4,a4,4
   19d6a:	feb719e3          	bne	a4,a1,19d5c <__subtf3+0xfec>
   19d6e:	56b2                	lw	a3,44(sp)
   19d70:	6621                	lui	a2,0x8
   19d72:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   19d76:	828d                	srli	a3,a3,0x3
   19d78:	d636                	sw	a3,44(sp)
   19d7a:	00e79e63          	bne	a5,a4,19d96 <__subtf3+0x1026>
   19d7e:	5592                	lw	a1,36(sp)
   19d80:	5702                	lw	a4,32(sp)
   19d82:	8f4d                	or	a4,a4,a1
   19d84:	55a2                	lw	a1,40(sp)
   19d86:	8f4d                	or	a4,a4,a1
   19d88:	8f55                	or	a4,a4,a3
   19d8a:	c711                	beqz	a4,19d96 <__subtf3+0x1026>
   19d8c:	d632                	sw	a2,44(sp)
   19d8e:	d402                	sw	zero,40(sp)
   19d90:	d202                	sw	zero,36(sp)
   19d92:	d002                	sw	zero,32(sp)
   19d94:	4981                	li	s3,0
   19d96:	55b2                	lw	a1,44(sp)
   19d98:	07c6                	slli	a5,a5,0x11
   19d9a:	83c5                	srli	a5,a5,0x11
   19d9c:	09be                	slli	s3,s3,0xf
   19d9e:	00f9e9b3          	or	s3,s3,a5
   19da2:	02b11e23          	sh	a1,60(sp)
   19da6:	03311f23          	sh	s3,62(sp)
   19daa:	5602                	lw	a2,32(sp)
   19dac:	5692                	lw	a3,36(sp)
   19dae:	5722                	lw	a4,40(sp)
   19db0:	57f2                	lw	a5,60(sp)
   19db2:	c019                	beqz	s0,19db8 <__subtf3+0x1048>
   19db4:	00142073          	csrs	fflags,s0
   19db8:	50b6                	lw	ra,108(sp)
   19dba:	5426                	lw	s0,104(sp)
   19dbc:	00c92023          	sw	a2,0(s2)
   19dc0:	00d92223          	sw	a3,4(s2)
   19dc4:	00e92423          	sw	a4,8(s2)
   19dc8:	00f92623          	sw	a5,12(s2)
   19dcc:	5496                	lw	s1,100(sp)
   19dce:	49f6                	lw	s3,92(sp)
   19dd0:	4a66                	lw	s4,88(sp)
   19dd2:	4ad6                	lw	s5,84(sp)
   19dd4:	4b46                	lw	s6,80(sp)
   19dd6:	4bb6                	lw	s7,76(sp)
   19dd8:	4c26                	lw	s8,72(sp)
   19dda:	4c96                	lw	s9,68(sp)
   19ddc:	854a                	mv	a0,s2
   19dde:	5906                	lw	s2,96(sp)
   19de0:	6165                	addi	sp,sp,112
   19de2:	8082                	ret
   19de4:	ee099be3          	bnez	s3,19cda <__subtf3+0xf6a>
   19de8:	07a1                	addi	a5,a5,8
   19dea:	0087b793          	sltiu	a5,a5,8
   19dee:	bde1                	j	19cc6 <__subtf3+0xf56>
   19df0:	ee0985e3          	beqz	s3,19cda <__subtf3+0xf6a>
   19df4:	bfd5                	j	19de8 <__subtf3+0x1078>
   19df6:	f2099be3          	bnez	s3,19d2c <__subtf3+0xfbc>
   19dfa:	0721                	addi	a4,a4,8
   19dfc:	d03a                	sw	a4,32(sp)
   19dfe:	00873713          	sltiu	a4,a4,8
   19e02:	bf09                	j	19d14 <__subtf3+0xfa4>
   19e04:	f20984e3          	beqz	s3,19d2c <__subtf3+0xfbc>
   19e08:	bfcd                	j	19dfa <__subtf3+0x108a>
   19e0a:	4701                	li	a4,0
   19e0c:	020a0063          	beqz	s4,19e2c <__subtf3+0x10bc>
   19e10:	468d                	li	a3,3
   19e12:	00da1863          	bne	s4,a3,19e22 <__subtf3+0x10b2>
   19e16:	00098b63          	beqz	s3,19e2c <__subtf3+0x10bc>
   19e1a:	67a1                	lui	a5,0x8
   19e1c:	577d                	li	a4,-1
   19e1e:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   19e20:	a031                	j	19e2c <__subtf3+0x10bc>
   19e22:	4689                	li	a3,2
   19e24:	feda1be3          	bne	s4,a3,19e1a <__subtf3+0x10aa>
   19e28:	fe0989e3          	beqz	s3,19e1a <__subtf3+0x10aa>
   19e2c:	d63a                	sw	a4,44(sp)
   19e2e:	d43a                	sw	a4,40(sp)
   19e30:	d23a                	sw	a4,36(sp)
   19e32:	d03a                	sw	a4,32(sp)
   19e34:	00546413          	ori	s0,s0,5
   19e38:	b705                	j	19d58 <__subtf3+0xfe8>
   19e3a:	d636                	sw	a3,44(sp)
   19e3c:	c76ff06f          	j	192b2 <__subtf3+0x542>
   19e40:	d68a8763          	beq	s5,s0,193ae <__subtf3+0x63e>
   19e44:	4401                	li	s0,0
   19e46:	d16ff06f          	j	1935c <__subtf3+0x5ec>
   19e4a:	b68a8de3          	beq	s5,s0,199c4 <__subtf3+0xc54>
   19e4e:	4401                	li	s0,0
   19e50:	b699                	j	19996 <__subtf3+0xc26>

00019e52 <__unordtf2>:
   19e52:	4114                	lw	a3,0(a0)
   19e54:	00452f03          	lw	t5,4(a0)
   19e58:	00852e83          	lw	t4,8(a0)
   19e5c:	4550                	lw	a2,12(a0)
   19e5e:	419c                	lw	a5,0(a1)
   19e60:	0045ae03          	lw	t3,4(a1)
   19e64:	0085a303          	lw	t1,8(a1)
   19e68:	45d8                	lw	a4,12(a1)
   19e6a:	1141                	addi	sp,sp,-16
   19e6c:	002025f3          	frrm	a1
   19e70:	6521                	lui	a0,0x8
   19e72:	01061813          	slli	a6,a2,0x10
   19e76:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19e78:	8241                	srli	a2,a2,0x10
   19e7a:	01071593          	slli	a1,a4,0x10
   19e7e:	8e69                	and	a2,a2,a0
   19e80:	8341                	srli	a4,a4,0x10
   19e82:	01085813          	srli	a6,a6,0x10
   19e86:	81c1                	srli	a1,a1,0x10
   19e88:	8f69                	and	a4,a4,a0
   19e8a:	00a61963          	bne	a2,a0,19e9c <__unordtf2+0x4a>
   19e8e:	01e6e533          	or	a0,a3,t5
   19e92:	01d56533          	or	a0,a0,t4
   19e96:	01056533          	or	a0,a0,a6
   19e9a:	e51d                	bnez	a0,19ec8 <__unordtf2+0x76>
   19e9c:	68a1                	lui	a7,0x8
   19e9e:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   19ea0:	4501                	li	a0,0
   19ea2:	05171c63          	bne	a4,a7,19efa <__unordtf2+0xa8>
   19ea6:	01c7e8b3          	or	a7,a5,t3
   19eaa:	0068e8b3          	or	a7,a7,t1
   19eae:	00b8e8b3          	or	a7,a7,a1
   19eb2:	04088463          	beqz	a7,19efa <__unordtf2+0xa8>
   19eb6:	02e61a63          	bne	a2,a4,19eea <__unordtf2+0x98>
   19eba:	01e6e6b3          	or	a3,a3,t5
   19ebe:	01d6e6b3          	or	a3,a3,t4
   19ec2:	0106e6b3          	or	a3,a3,a6
   19ec6:	ca99                	beqz	a3,19edc <__unordtf2+0x8a>
   19ec8:	0842                	slli	a6,a6,0x10
   19eca:	41085813          	srai	a6,a6,0x10
   19ece:	02085363          	bgez	a6,19ef4 <__unordtf2+0xa2>
   19ed2:	66a1                	lui	a3,0x8
   19ed4:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19ed6:	4505                	li	a0,1
   19ed8:	02d71163          	bne	a4,a3,19efa <__unordtf2+0xa8>
   19edc:	01c7e7b3          	or	a5,a5,t3
   19ee0:	0067e7b3          	or	a5,a5,t1
   19ee4:	8fcd                	or	a5,a5,a1
   19ee6:	4505                	li	a0,1
   19ee8:	cb89                	beqz	a5,19efa <__unordtf2+0xa8>
   19eea:	05c2                	slli	a1,a1,0x10
   19eec:	85c1                	srai	a1,a1,0x10
   19eee:	4505                	li	a0,1
   19ef0:	0005c563          	bltz	a1,19efa <__unordtf2+0xa8>
   19ef4:	00186073          	csrsi	fflags,16
   19ef8:	4505                	li	a0,1
   19efa:	0141                	addi	sp,sp,16
   19efc:	8082                	ret

00019efe <__fixtfsi>:
   19efe:	411c                	lw	a5,0(a0)
   19f00:	00452803          	lw	a6,4(a0)
   19f04:	4518                	lw	a4,8(a0)
   19f06:	4550                	lw	a2,12(a0)
   19f08:	1101                	addi	sp,sp,-32
   19f0a:	002026f3          	frrm	a3
   19f0e:	01061693          	slli	a3,a2,0x10
   19f12:	00161593          	slli	a1,a2,0x1
   19f16:	c632                	sw	a2,12(sp)
   19f18:	01f65893          	srli	a7,a2,0x1f
   19f1c:	6611                	lui	a2,0x4
   19f1e:	c03e                	sw	a5,0(sp)
   19f20:	c242                	sw	a6,4(sp)
   19f22:	c43a                	sw	a4,8(sp)
   19f24:	c83e                	sw	a5,16(sp)
   19f26:	ca42                	sw	a6,20(sp)
   19f28:	cc3a                	sw	a4,24(sp)
   19f2a:	81c5                	srli	a1,a1,0x11
   19f2c:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   19f2e:	82c1                	srli	a3,a3,0x10
   19f30:	00b64a63          	blt	a2,a1,19f44 <__fixtfsi+0x46>
   19f34:	e9f9                	bnez	a1,1a00a <__fixtfsi+0x10c>
   19f36:	0107e533          	or	a0,a5,a6
   19f3a:	8d59                	or	a0,a0,a4
   19f3c:	8d55                	or	a0,a0,a3
   19f3e:	e571                	bnez	a0,1a00a <__fixtfsi+0x10c>
   19f40:	6105                	addi	sp,sp,32
   19f42:	8082                	ret
   19f44:	6511                	lui	a0,0x4
   19f46:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   19f48:	8646                	mv	a2,a7
   19f4a:	02b55763          	bge	a0,a1,19f78 <__fixtfsi+0x7a>
   19f4e:	0c088163          	beqz	a7,1a010 <__fixtfsi+0x112>
   19f52:	6511                	lui	a0,0x4
   19f54:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   19f56:	0ca59263          	bne	a1,a0,1a01a <__fixtfsi+0x11c>
   19f5a:	01175593          	srli	a1,a4,0x11
   19f5e:	06be                	slli	a3,a3,0xf
   19f60:	8ecd                	or	a3,a3,a1
   19f62:	eec5                	bnez	a3,1a01a <__fixtfsi+0x11c>
   19f64:	0107e7b3          	or	a5,a5,a6
   19f68:	073e                	slli	a4,a4,0xf
   19f6a:	8f5d                	or	a4,a4,a5
   19f6c:	80000537          	lui	a0,0x80000
   19f70:	db61                	beqz	a4,19f40 <__fixtfsi+0x42>
   19f72:	00162073          	csrs	fflags,a2
   19f76:	b7e9                	j	19f40 <__fixtfsi+0x42>
   19f78:	67c1                	lui	a5,0x10
   19f7a:	8fd5                	or	a5,a5,a3
   19f7c:	6691                	lui	a3,0x4
   19f7e:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   19f82:	8e8d                	sub	a3,a3,a1
   19f84:	4056d513          	srai	a0,a3,0x5
   19f88:	ce3e                	sw	a5,28(sp)
   19f8a:	8afd                	andi	a3,a3,31
   19f8c:	080c                	addi	a1,sp,16
   19f8e:	4801                	li	a6,0
   19f90:	4601                	li	a2,0
   19f92:	0005a303          	lw	t1,0(a1)
   19f96:	0605                	addi	a2,a2,1
   19f98:	0591                	addi	a1,a1,4
   19f9a:	00686833          	or	a6,a6,t1
   19f9e:	fec51ae3          	bne	a0,a2,19f92 <__fixtfsi+0x94>
   19fa2:	00251613          	slli	a2,a0,0x2
   19fa6:	e28d                	bnez	a3,19fc8 <__fixtfsi+0xca>
   19fa8:	02060793          	addi	a5,a2,32
   19fac:	00278633          	add	a2,a5,sp
   19fb0:	ff062783          	lw	a5,-16(a2)
   19fb4:	c83e                	sw	a5,16(sp)
   19fb6:	4542                	lw	a0,16(sp)
   19fb8:	00088463          	beqz	a7,19fc0 <__fixtfsi+0xc2>
   19fbc:	40a00533          	neg	a0,a0
   19fc0:	4605                	li	a2,1
   19fc2:	fa0818e3          	bnez	a6,19f72 <__fixtfsi+0x74>
   19fc6:	bfad                	j	19f40 <__fixtfsi+0x42>
   19fc8:	02060613          	addi	a2,a2,32
   19fcc:	960a                	add	a2,a2,sp
   19fce:	ff062603          	lw	a2,-16(a2)
   19fd2:	02000593          	li	a1,32
   19fd6:	8d95                	sub	a1,a1,a3
   19fd8:	00b61633          	sll	a2,a2,a1
   19fdc:	4309                	li	t1,2
   19fde:	00c86833          	or	a6,a6,a2
   19fe2:	4601                	li	a2,0
   19fe4:	00651963          	bne	a0,t1,19ff6 <__fixtfsi+0xf8>
   19fe8:	00d75733          	srl	a4,a4,a3
   19fec:	00b795b3          	sll	a1,a5,a1
   19ff0:	8f4d                	or	a4,a4,a1
   19ff2:	c83a                	sw	a4,16(sp)
   19ff4:	4605                	li	a2,1
   19ff6:	060a                	slli	a2,a2,0x2
   19ff8:	02060713          	addi	a4,a2,32
   19ffc:	00270633          	add	a2,a4,sp
   1a000:	00d7d7b3          	srl	a5,a5,a3
   1a004:	fef62823          	sw	a5,-16(a2)
   1a008:	b77d                	j	19fb6 <__fixtfsi+0xb8>
   1a00a:	4605                	li	a2,1
   1a00c:	4501                	li	a0,0
   1a00e:	b795                	j	19f72 <__fixtfsi+0x74>
   1a010:	80000537          	lui	a0,0x80000
   1a014:	4641                	li	a2,16
   1a016:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   1a018:	bfa9                	j	19f72 <__fixtfsi+0x74>
   1a01a:	4641                	li	a2,16
   1a01c:	80000537          	lui	a0,0x80000
   1a020:	bf89                	j	19f72 <__fixtfsi+0x74>

0001a022 <__floatsitf>:
   1a022:	7179                	addi	sp,sp,-48
   1a024:	d226                	sw	s1,36(sp)
   1a026:	d606                	sw	ra,44(sp)
   1a028:	d422                	sw	s0,40(sp)
   1a02a:	d04a                	sw	s2,32(sp)
   1a02c:	84aa                	mv	s1,a0
   1a02e:	cdcd                	beqz	a1,1a0e8 <__floatsitf+0xc6>
   1a030:	41f5d793          	srai	a5,a1,0x1f
   1a034:	00b7c433          	xor	s0,a5,a1
   1a038:	8c1d                	sub	s0,s0,a5
   1a03a:	8522                	mv	a0,s0
   1a03c:	01f5d913          	srli	s2,a1,0x1f
   1a040:	2481                	jal	1a280 <__clzsi2>
   1a042:	6711                	lui	a4,0x4
   1a044:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1a046:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe45f5>
   1a04a:	40a70633          	sub	a2,a4,a0
   1a04e:	c822                	sw	s0,16(sp)
   1a050:	4057d713          	srai	a4,a5,0x5
   1a054:	ca02                	sw	zero,20(sp)
   1a056:	cc02                	sw	zero,24(sp)
   1a058:	ce02                	sw	zero,28(sp)
   1a05a:	8bfd                	andi	a5,a5,31
   1a05c:	c78d                	beqz	a5,1a086 <__floatsitf+0x64>
   1a05e:	4689                	li	a3,2
   1a060:	08d71263          	bne	a4,a3,1a0e4 <__floatsitf+0xc2>
   1a064:	02000693          	li	a3,32
   1a068:	8e9d                	sub	a3,a3,a5
   1a06a:	00d456b3          	srl	a3,s0,a3
   1a06e:	ce36                	sw	a3,28(sp)
   1a070:	fff70693          	addi	a3,a4,-1
   1a074:	070a                	slli	a4,a4,0x2
   1a076:	02070713          	addi	a4,a4,32
   1a07a:	970a                	add	a4,a4,sp
   1a07c:	00f41433          	sll	s0,s0,a5
   1a080:	fe872823          	sw	s0,-16(a4)
   1a084:	a005                	j	1a0a4 <__floatsitf+0x82>
   1a086:	478d                	li	a5,3
   1a088:	8f99                	sub	a5,a5,a4
   1a08a:	078a                	slli	a5,a5,0x2
   1a08c:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1a090:	978a                	add	a5,a5,sp
   1a092:	ff07a783          	lw	a5,-16(a5)
   1a096:	4689                	li	a3,2
   1a098:	ce3e                	sw	a5,28(sp)
   1a09a:	4789                	li	a5,2
   1a09c:	00f71463          	bne	a4,a5,1a0a4 <__floatsitf+0x82>
   1a0a0:	cc22                	sw	s0,24(sp)
   1a0a2:	4685                	li	a3,1
   1a0a4:	068a                	slli	a3,a3,0x2
   1a0a6:	c802                	sw	zero,16(sp)
   1a0a8:	ca02                	sw	zero,20(sp)
   1a0aa:	16f1                	addi	a3,a3,-4
   1a0ac:	4791                	li	a5,4
   1a0ae:	00f6e363          	bltu	a3,a5,1a0b4 <__floatsitf+0x92>
   1a0b2:	cc02                	sw	zero,24(sp)
   1a0b4:	85ca                	mv	a1,s2
   1a0b6:	47f2                	lw	a5,28(sp)
   1a0b8:	00f59413          	slli	s0,a1,0xf
   1a0bc:	8c51                	or	s0,s0,a2
   1a0be:	00811723          	sh	s0,14(sp)
   1a0c2:	00f11623          	sh	a5,12(sp)
   1a0c6:	4542                	lw	a0,16(sp)
   1a0c8:	46d2                	lw	a3,20(sp)
   1a0ca:	4762                	lw	a4,24(sp)
   1a0cc:	47b2                	lw	a5,12(sp)
   1a0ce:	50b2                	lw	ra,44(sp)
   1a0d0:	5422                	lw	s0,40(sp)
   1a0d2:	c088                	sw	a0,0(s1)
   1a0d4:	c0d4                	sw	a3,4(s1)
   1a0d6:	c498                	sw	a4,8(s1)
   1a0d8:	c4dc                	sw	a5,12(s1)
   1a0da:	5902                	lw	s2,32(sp)
   1a0dc:	8526                	mv	a0,s1
   1a0de:	5492                	lw	s1,36(sp)
   1a0e0:	6145                	addi	sp,sp,48
   1a0e2:	8082                	ret
   1a0e4:	470d                	li	a4,3
   1a0e6:	b769                	j	1a070 <__floatsitf+0x4e>
   1a0e8:	ce02                	sw	zero,28(sp)
   1a0ea:	cc02                	sw	zero,24(sp)
   1a0ec:	ca02                	sw	zero,20(sp)
   1a0ee:	c802                	sw	zero,16(sp)
   1a0f0:	4601                	li	a2,0
   1a0f2:	b7d1                	j	1a0b6 <__floatsitf+0x94>

0001a0f4 <__extenddftf2>:
   1a0f4:	7139                	addi	sp,sp,-64
   1a0f6:	d84a                	sw	s2,48(sp)
   1a0f8:	d64e                	sw	s3,44(sp)
   1a0fa:	de06                	sw	ra,60(sp)
   1a0fc:	dc22                	sw	s0,56(sp)
   1a0fe:	da26                	sw	s1,52(sp)
   1a100:	89aa                	mv	s3,a0
   1a102:	892e                	mv	s2,a1
   1a104:	002027f3          	frrm	a5
   1a108:	01465413          	srli	s0,a2,0x14
   1a10c:	00c61793          	slli	a5,a2,0xc
   1a110:	7ff47413          	andi	s0,s0,2047
   1a114:	83b1                	srli	a5,a5,0xc
   1a116:	00140713          	addi	a4,s0,1
   1a11a:	c82e                	sw	a1,16(sp)
   1a11c:	ca3e                	sw	a5,20(sp)
   1a11e:	ce02                	sw	zero,28(sp)
   1a120:	cc02                	sw	zero,24(sp)
   1a122:	7fe77713          	andi	a4,a4,2046
   1a126:	01f65493          	srli	s1,a2,0x1f
   1a12a:	c325                	beqz	a4,1a18a <__extenddftf2+0x96>
   1a12c:	0047d693          	srli	a3,a5,0x4
   1a130:	6711                	lui	a4,0x4
   1a132:	ce36                	sw	a3,28(sp)
   1a134:	07f2                	slli	a5,a5,0x1c
   1a136:	0045d693          	srli	a3,a1,0x4
   1a13a:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1a13e:	8fd5                	or	a5,a5,a3
   1a140:	01c59913          	slli	s2,a1,0x1c
   1a144:	9722                	add	a4,a4,s0
   1a146:	cc3e                	sw	a5,24(sp)
   1a148:	ca4a                	sw	s2,20(sp)
   1a14a:	c802                	sw	zero,16(sp)
   1a14c:	4401                	li	s0,0
   1a14e:	47f2                	lw	a5,28(sp)
   1a150:	04be                	slli	s1,s1,0xf
   1a152:	8cd9                	or	s1,s1,a4
   1a154:	00f11623          	sh	a5,12(sp)
   1a158:	00911723          	sh	s1,14(sp)
   1a15c:	45c2                	lw	a1,16(sp)
   1a15e:	4652                	lw	a2,20(sp)
   1a160:	46e2                	lw	a3,24(sp)
   1a162:	47b2                	lw	a5,12(sp)
   1a164:	c019                	beqz	s0,1a16a <__extenddftf2+0x76>
   1a166:	00186073          	csrsi	fflags,16
   1a16a:	50f2                	lw	ra,60(sp)
   1a16c:	5462                	lw	s0,56(sp)
   1a16e:	00b9a023          	sw	a1,0(s3)
   1a172:	00c9a223          	sw	a2,4(s3)
   1a176:	00d9a423          	sw	a3,8(s3)
   1a17a:	00f9a623          	sw	a5,12(s3)
   1a17e:	54d2                	lw	s1,52(sp)
   1a180:	5942                	lw	s2,48(sp)
   1a182:	854e                	mv	a0,s3
   1a184:	59b2                	lw	s3,44(sp)
   1a186:	6121                	addi	sp,sp,64
   1a188:	8082                	ret
   1a18a:	00b7e533          	or	a0,a5,a1
   1a18e:	e061                	bnez	s0,1a24e <__extenddftf2+0x15a>
   1a190:	4701                	li	a4,0
   1a192:	dd55                	beqz	a0,1a14e <__extenddftf2+0x5a>
   1a194:	c7a1                	beqz	a5,1a1dc <__extenddftf2+0xe8>
   1a196:	853e                	mv	a0,a5
   1a198:	20e5                	jal	1a280 <__clzsi2>
   1a19a:	03150693          	addi	a3,a0,49
   1a19e:	4056d793          	srai	a5,a3,0x5
   1a1a2:	8afd                	andi	a3,a3,31
   1a1a4:	c2a1                	beqz	a3,1a1e4 <__extenddftf2+0xf0>
   1a1a6:	5671                	li	a2,-4
   1a1a8:	02c78633          	mul	a2,a5,a2
   1a1ac:	02000813          	li	a6,32
   1a1b0:	01010313          	addi	t1,sp,16
   1a1b4:	40d80833          	sub	a6,a6,a3
   1a1b8:	00c60713          	addi	a4,a2,12
   1a1bc:	971a                	add	a4,a4,t1
   1a1be:	40c00633          	neg	a2,a2
   1a1c2:	06e31763          	bne	t1,a4,1a230 <__extenddftf2+0x13c>
   1a1c6:	fff78713          	addi	a4,a5,-1
   1a1ca:	078a                	slli	a5,a5,0x2
   1a1cc:	02078793          	addi	a5,a5,32
   1a1d0:	978a                	add	a5,a5,sp
   1a1d2:	00d916b3          	sll	a3,s2,a3
   1a1d6:	fed7a823          	sw	a3,-16(a5)
   1a1da:	a025                	j	1a202 <__extenddftf2+0x10e>
   1a1dc:	2055                	jal	1a280 <__clzsi2>
   1a1de:	02050513          	addi	a0,a0,32
   1a1e2:	bf65                	j	1a19a <__extenddftf2+0xa6>
   1a1e4:	5671                	li	a2,-4
   1a1e6:	02c78633          	mul	a2,a5,a2
   1a1ea:	0878                	addi	a4,sp,28
   1a1ec:	468d                	li	a3,3
   1a1ee:	00c705b3          	add	a1,a4,a2
   1a1f2:	418c                	lw	a1,0(a1)
   1a1f4:	16fd                	addi	a3,a3,-1
   1a1f6:	1771                	addi	a4,a4,-4
   1a1f8:	c34c                	sw	a1,4(a4)
   1a1fa:	fef6dae3          	bge	a3,a5,1a1ee <__extenddftf2+0xfa>
   1a1fe:	fff78713          	addi	a4,a5,-1
   1a202:	00170793          	addi	a5,a4,1
   1a206:	078a                	slli	a5,a5,0x2
   1a208:	46a1                	li	a3,8
   1a20a:	0818                	addi	a4,sp,16
   1a20c:	00d7e863          	bltu	a5,a3,1a21c <__extenddftf2+0x128>
   1a210:	00072023          	sw	zero,0(a4)
   1a214:	00072223          	sw	zero,4(a4)
   1a218:	17e1                	addi	a5,a5,-8
   1a21a:	0838                	addi	a4,sp,24
   1a21c:	4691                	li	a3,4
   1a21e:	00d7e463          	bltu	a5,a3,1a226 <__extenddftf2+0x132>
   1a222:	00072023          	sw	zero,0(a4)
   1a226:	6711                	lui	a4,0x4
   1a228:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1a22c:	8f09                	sub	a4,a4,a0
   1a22e:	b705                	j	1a14e <__extenddftf2+0x5a>
   1a230:	430c                	lw	a1,0(a4)
   1a232:	ffc72883          	lw	a7,-4(a4)
   1a236:	00c70e33          	add	t3,a4,a2
   1a23a:	00d595b3          	sll	a1,a1,a3
   1a23e:	0108d8b3          	srl	a7,a7,a6
   1a242:	0115e5b3          	or	a1,a1,a7
   1a246:	00be2023          	sw	a1,0(t3)
   1a24a:	1771                	addi	a4,a4,-4
   1a24c:	bf9d                	j	1a1c2 <__extenddftf2+0xce>
   1a24e:	c515                	beqz	a0,1a27a <__extenddftf2+0x186>
   1a250:	01c79713          	slli	a4,a5,0x1c
   1a254:	0045d693          	srli	a3,a1,0x4
   1a258:	8f55                	or	a4,a4,a3
   1a25a:	00080437          	lui	s0,0x80
   1a25e:	0087b433          	sltu	s0,a5,s0
   1a262:	cc3a                	sw	a4,24(sp)
   1a264:	8391                	srli	a5,a5,0x4
   1a266:	6721                	lui	a4,0x8
   1a268:	01c59913          	slli	s2,a1,0x1c
   1a26c:	8fd9                	or	a5,a5,a4
   1a26e:	0412                	slli	s0,s0,0x4
   1a270:	ca4a                	sw	s2,20(sp)
   1a272:	c802                	sw	zero,16(sp)
   1a274:	ce3e                	sw	a5,28(sp)
   1a276:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a278:	bdd9                	j	1a14e <__extenddftf2+0x5a>
   1a27a:	4401                	li	s0,0
   1a27c:	6721                	lui	a4,0x8
   1a27e:	bfe5                	j	1a276 <__extenddftf2+0x182>

0001a280 <__clzsi2>:
   1a280:	67c1                	lui	a5,0x10
   1a282:	02f57563          	bgeu	a0,a5,1a2ac <__clzsi2+0x2c>
   1a286:	10053793          	sltiu	a5,a0,256
   1a28a:	0017b793          	seqz	a5,a5
   1a28e:	078e                	slli	a5,a5,0x3
   1a290:	676d                	lui	a4,0x1b
   1a292:	02000693          	li	a3,32
   1a296:	8e9d                	sub	a3,a3,a5
   1a298:	00f55533          	srl	a0,a0,a5
   1a29c:	a5870793          	addi	a5,a4,-1448 # 1aa58 <__clz_tab>
   1a2a0:	97aa                	add	a5,a5,a0
   1a2a2:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1a2a6:	40a68533          	sub	a0,a3,a0
   1a2aa:	8082                	ret
   1a2ac:	01000737          	lui	a4,0x1000
   1a2b0:	47e1                	li	a5,24
   1a2b2:	fce57fe3          	bgeu	a0,a4,1a290 <__clzsi2+0x10>
   1a2b6:	47c1                	li	a5,16
   1a2b8:	bfe1                	j	1a290 <__clzsi2+0x10>
