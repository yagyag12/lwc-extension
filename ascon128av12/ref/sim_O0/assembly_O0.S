
sim_O0/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	68e020ef          	jal	1272c <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1dc68 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	4d8090ef          	jal	19584 <_exit>

000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c791                	beqz	a5,100c0 <register_fini+0x10>
   100b6:	6555                	lui	a0,0x15
   100b8:	70050513          	addi	a0,a0,1792 # 15700 <__libc_fini_array>
   100bc:	73e0206f          	j	127fa <atexit>
   100c0:	8082                	ret

000100c2 <_start>:
   100c2:	0000e197          	auipc	gp,0xe
   100c6:	c8618193          	addi	gp,gp,-890 # 1dd48 <__global_pointer$>
   100ca:	f2018513          	addi	a0,gp,-224 # 1dc68 <__stdio_exit_handler>
   100ce:	24c18613          	addi	a2,gp,588 # 1df94 <__BSS_END__>
   100d2:	8e09                	sub	a2,a2,a0
   100d4:	4581                	li	a1,0
   100d6:	54a020ef          	jal	12620 <memset>
   100da:	00002517          	auipc	a0,0x2
   100de:	72050513          	addi	a0,a0,1824 # 127fa <atexit>
   100e2:	c519                	beqz	a0,100f0 <_start+0x2e>
   100e4:	00005517          	auipc	a0,0x5
   100e8:	61c50513          	addi	a0,a0,1564 # 15700 <__libc_fini_array>
   100ec:	70e020ef          	jal	127fa <atexit>
   100f0:	4c6020ef          	jal	125b6 <__libc_init_array>
   100f4:	4502                	lw	a0,0(sp)
   100f6:	004c                	addi	a1,sp,4
   100f8:	4601                	li	a2,0
   100fa:	28dd                	jal	101f0 <main>
   100fc:	bf61                	j	10094 <exit>

000100fe <__do_global_dtors_aux>:
   100fe:	1141                	addi	sp,sp,-16
   10100:	c422                	sw	s0,8(sp)
   10102:	f401c783          	lbu	a5,-192(gp) # 1dc88 <completed.1>
   10106:	c606                	sw	ra,12(sp)
   10108:	ef91                	bnez	a5,10124 <__do_global_dtors_aux+0x26>
   1010a:	00000793          	li	a5,0
   1010e:	cb81                	beqz	a5,1011e <__do_global_dtors_aux+0x20>
   10110:	6575                	lui	a0,0x1d
   10112:	53850513          	addi	a0,a0,1336 # 1d538 <__EH_FRAME_BEGIN__>
   10116:	00000097          	auipc	ra,0x0
   1011a:	000000e7          	jalr	zero # 0 <exit-0x10094>
   1011e:	4785                	li	a5,1
   10120:	f4f18023          	sb	a5,-192(gp) # 1dc88 <completed.1>
   10124:	40b2                	lw	ra,12(sp)
   10126:	4422                	lw	s0,8(sp)
   10128:	0141                	addi	sp,sp,16
   1012a:	8082                	ret

0001012c <frame_dummy>:
   1012c:	00000793          	li	a5,0
   10130:	cb91                	beqz	a5,10144 <frame_dummy+0x18>
   10132:	6575                	lui	a0,0x1d
   10134:	f4418593          	addi	a1,gp,-188 # 1dc8c <object.0>
   10138:	53850513          	addi	a0,a0,1336 # 1d538 <__EH_FRAME_BEGIN__>
   1013c:	00000317          	auipc	t1,0x0
   10140:	00000067          	jr	zero # 0 <exit-0x10094>
   10144:	8082                	ret

00010146 <print_hex>:
   10146:	7179                	addi	sp,sp,-48
   10148:	d606                	sw	ra,44(sp)
   1014a:	d422                	sw	s0,40(sp)
   1014c:	1800                	addi	s0,sp,48
   1014e:	fca42e23          	sw	a0,-36(s0)
   10152:	fcb42c23          	sw	a1,-40(s0)
   10156:	fcc42823          	sw	a2,-48(s0)
   1015a:	fcd42a23          	sw	a3,-44(s0)
   1015e:	fdc42583          	lw	a1,-36(s0)
   10162:	67f1                	lui	a5,0x1c
   10164:	c2078513          	addi	a0,a5,-992 # 1bc20 <__clzsi2+0x3a>
   10168:	14a020ef          	jal	122b2 <printf>
   1016c:	4781                	li	a5,0
   1016e:	4801                	li	a6,0
   10170:	fef42423          	sw	a5,-24(s0)
   10174:	ff042623          	sw	a6,-20(s0)
   10178:	a091                	j	101bc <print_hex+0x76>
   1017a:	fe842783          	lw	a5,-24(s0)
   1017e:	fd842703          	lw	a4,-40(s0)
   10182:	97ba                	add	a5,a5,a4
   10184:	0007c783          	lbu	a5,0(a5)
   10188:	85be                	mv	a1,a5
   1018a:	67f1                	lui	a5,0x1c
   1018c:	c2878513          	addi	a0,a5,-984 # 1bc28 <__clzsi2+0x42>
   10190:	122020ef          	jal	122b2 <printf>
   10194:	fe842603          	lw	a2,-24(s0)
   10198:	fec42683          	lw	a3,-20(s0)
   1019c:	4505                	li	a0,1
   1019e:	4581                	li	a1,0
   101a0:	00a60733          	add	a4,a2,a0
   101a4:	883a                	mv	a6,a4
   101a6:	00c83833          	sltu	a6,a6,a2
   101aa:	00b687b3          	add	a5,a3,a1
   101ae:	00f806b3          	add	a3,a6,a5
   101b2:	87b6                	mv	a5,a3
   101b4:	fee42423          	sw	a4,-24(s0)
   101b8:	fef42623          	sw	a5,-20(s0)
   101bc:	fd442703          	lw	a4,-44(s0)
   101c0:	fec42783          	lw	a5,-20(s0)
   101c4:	fae7ebe3          	bltu	a5,a4,1017a <print_hex+0x34>
   101c8:	fd442703          	lw	a4,-44(s0)
   101cc:	fec42783          	lw	a5,-20(s0)
   101d0:	00f71863          	bne	a4,a5,101e0 <print_hex+0x9a>
   101d4:	fd042703          	lw	a4,-48(s0)
   101d8:	fe842783          	lw	a5,-24(s0)
   101dc:	f8e7efe3          	bltu	a5,a4,1017a <print_hex+0x34>
   101e0:	4529                	li	a0,10
   101e2:	102020ef          	jal	122e4 <putchar>
   101e6:	0001                	nop
   101e8:	50b2                	lw	ra,44(sp)
   101ea:	5422                	lw	s0,40(sp)
   101ec:	6145                	addi	sp,sp,48
   101ee:	8082                	ret

000101f0 <main>:
   101f0:	7171                	addi	sp,sp,-176
   101f2:	d706                	sw	ra,172(sp)
   101f4:	d522                	sw	s0,168(sp)
   101f6:	d326                	sw	s1,164(sp)
   101f8:	d14a                	sw	s2,160(sp)
   101fa:	cf4e                	sw	s3,156(sp)
   101fc:	cd52                	sw	s4,152(sp)
   101fe:	cb56                	sw	s5,148(sp)
   10200:	c95a                	sw	s6,144(sp)
   10202:	c75e                	sw	s7,140(sp)
   10204:	c562                	sw	s8,136(sp)
   10206:	c366                	sw	s9,132(sp)
   10208:	1900                	addi	s0,sp,176
   1020a:	830a                	mv	t1,sp
   1020c:	849a                	mv	s1,t1
   1020e:	6371                	lui	t1,0x1c
   10210:	cbc30313          	addi	t1,t1,-836 # 1bcbc <__clzsi2+0xd6>
   10214:	00032283          	lw	t0,0(t1)
   10218:	00432e83          	lw	t4,4(t1)
   1021c:	00832e03          	lw	t3,8(t1)
   10220:	00c32303          	lw	t1,12(t1)
   10224:	fa542023          	sw	t0,-96(s0)
   10228:	fbd42223          	sw	t4,-92(s0)
   1022c:	fbc42423          	sw	t3,-88(s0)
   10230:	fa642623          	sw	t1,-84(s0)
   10234:	34333337          	lui	t1,0x34333
   10238:	23130313          	addi	t1,t1,561 # 34333231 <__BSS_END__+0x3431529d>
   1023c:	f8642823          	sw	t1,-112(s0)
   10240:	38373337          	lui	t1,0x38373
   10244:	63530313          	addi	t1,t1,1589 # 38373635 <__BSS_END__+0x383556a1>
   10248:	f8642a23          	sw	t1,-108(s0)
   1024c:	32313337          	lui	t1,0x32313
   10250:	03930313          	addi	t1,t1,57 # 32313039 <__BSS_END__+0x322f50a5>
   10254:	f8642c23          	sw	t1,-104(s0)
   10258:	f8042e23          	sw	zero,-100(s0)
   1025c:	6371                	lui	t1,0x1c
   1025e:	ccc30313          	addi	t1,t1,-820 # 1bccc <__clzsi2+0xe6>
   10262:	00032283          	lw	t0,0(t1)
   10266:	00432e83          	lw	t4,4(t1)
   1026a:	00832e03          	lw	t3,8(t1)
   1026e:	f8542023          	sw	t0,-128(s0)
   10272:	f9d42223          	sw	t4,-124(s0)
   10276:	f9c42423          	sw	t3,-120(s0)
   1027a:	00c35303          	lhu	t1,12(t1)
   1027e:	f8641623          	sh	t1,-116(s0)
   10282:	6311                	lui	t1,0x4
   10284:	44130313          	addi	t1,t1,1089 # 4441 <exit-0xbc53>
   10288:	f6641e23          	sh	t1,-132(s0)
   1028c:	f6040f23          	sb	zero,-130(s0)
   10290:	4335                	li	t1,13
   10292:	4381                	li	t2,0
   10294:	fc642423          	sw	t1,-56(s0)
   10298:	fc742623          	sw	t2,-52(s0)
   1029c:	4309                	li	t1,2
   1029e:	4381                	li	t2,0
   102a0:	fc642023          	sw	t1,-64(s0)
   102a4:	fc742223          	sw	t2,-60(s0)
   102a8:	fc842303          	lw	t1,-56(s0)
   102ac:	fcc42383          	lw	t2,-52(s0)
   102b0:	4c41                	li	s8,16
   102b2:	4c81                	li	s9,0
   102b4:	01830e33          	add	t3,t1,s8
   102b8:	82f2                	mv	t0,t3
   102ba:	0062b2b3          	sltu	t0,t0,t1
   102be:	01938eb3          	add	t4,t2,s9
   102c2:	01d28333          	add	t1,t0,t4
   102c6:	8e9a                	mv	t4,t1
   102c8:	8372                	mv	t1,t3
   102ca:	83f6                	mv	t2,t4
   102cc:	8e1a                	mv	t3,t1
   102ce:	1e7d                	addi	t3,t3,-1
   102d0:	fbc42e23          	sw	t3,-68(s0)
   102d4:	8e1a                	mv	t3,t1
   102d6:	8b72                	mv	s6,t3
   102d8:	4b81                	li	s7,0
   102da:	01db5e13          	srli	t3,s6,0x1d
   102de:	003b9893          	slli	a7,s7,0x3
   102e2:	011e68b3          	or	a7,t3,a7
   102e6:	003b1813          	slli	a6,s6,0x3
   102ea:	881a                	mv	a6,t1
   102ec:	8a42                	mv	s4,a6
   102ee:	4a81                	li	s5,0
   102f0:	01da5813          	srli	a6,s4,0x1d
   102f4:	003a9593          	slli	a1,s5,0x3
   102f8:	00b865b3          	or	a1,a6,a1
   102fc:	003a1513          	slli	a0,s4,0x3
   10300:	859a                	mv	a1,t1
   10302:	05bd                	addi	a1,a1,15
   10304:	8191                	srli	a1,a1,0x4
   10306:	0592                	slli	a1,a1,0x4
   10308:	40b10133          	sub	sp,sp,a1
   1030c:	080c                	addi	a1,sp,16
   1030e:	85ae                	mv	a1,a1
   10310:	fab42c23          	sw	a1,-72(s0)
   10314:	fc842503          	lw	a0,-56(s0)
   10318:	fcc42583          	lw	a1,-52(s0)
   1031c:	882a                	mv	a6,a0
   1031e:	187d                	addi	a6,a6,-1
   10320:	fb042a23          	sw	a6,-76(s0)
   10324:	882a                	mv	a6,a0
   10326:	8942                	mv	s2,a6
   10328:	4981                	li	s3,0
   1032a:	01d95813          	srli	a6,s2,0x1d
   1032e:	00399693          	slli	a3,s3,0x3
   10332:	00d866b3          	or	a3,a6,a3
   10336:	00391613          	slli	a2,s2,0x3
   1033a:	86aa                	mv	a3,a0
   1033c:	8f36                	mv	t5,a3
   1033e:	4f81                	li	t6,0
   10340:	01df5693          	srli	a3,t5,0x1d
   10344:	003f9793          	slli	a5,t6,0x3
   10348:	8fd5                	or	a5,a5,a3
   1034a:	003f1713          	slli	a4,t5,0x3
   1034e:	87aa                	mv	a5,a0
   10350:	07bd                	addi	a5,a5,15
   10352:	8391                	srli	a5,a5,0x4
   10354:	0792                	slli	a5,a5,0x4
   10356:	40f10133          	sub	sp,sp,a5
   1035a:	081c                	addi	a5,sp,16
   1035c:	87be                	mv	a5,a5
   1035e:	faf42823          	sw	a5,-80(s0)
   10362:	f8040793          	addi	a5,s0,-128
   10366:	85be                	mv	a1,a5
   10368:	67f1                	lui	a5,0x1c
   1036a:	c3078513          	addi	a0,a5,-976 # 1bc30 <__clzsi2+0x4a>
   1036e:	745010ef          	jal	122b2 <printf>
   10372:	f7c40793          	addi	a5,s0,-132
   10376:	85be                	mv	a1,a5
   10378:	67f1                	lui	a5,0x1c
   1037a:	c4878513          	addi	a0,a5,-952 # 1bc48 <__clzsi2+0x62>
   1037e:	735010ef          	jal	122b2 <printf>
   10382:	fa040793          	addi	a5,s0,-96
   10386:	4641                	li	a2,16
   10388:	4681                	li	a3,0
   1038a:	85be                	mv	a1,a5
   1038c:	67f1                	lui	a5,0x1c
   1038e:	c6078513          	addi	a0,a5,-928 # 1bc60 <__clzsi2+0x7a>
   10392:	3b55                	jal	10146 <print_hex>
   10394:	f9040793          	addi	a5,s0,-112
   10398:	4641                	li	a2,16
   1039a:	4681                	li	a3,0
   1039c:	85be                	mv	a1,a5
   1039e:	67f1                	lui	a5,0x1c
   103a0:	c6478513          	addi	a0,a5,-924 # 1bc64 <__clzsi2+0x7e>
   103a4:	334d                	jal	10146 <print_hex>
   103a6:	f7c40713          	addi	a4,s0,-132
   103aa:	f8040613          	addi	a2,s0,-128
   103ae:	f7040593          	addi	a1,s0,-144
   103b2:	fa040793          	addi	a5,s0,-96
   103b6:	c43e                	sw	a5,8(sp)
   103b8:	f9040793          	addi	a5,s0,-112
   103bc:	c23e                	sw	a5,4(sp)
   103be:	c002                	sw	zero,0(sp)
   103c0:	fc042803          	lw	a6,-64(s0)
   103c4:	fc442883          	lw	a7,-60(s0)
   103c8:	87ba                	mv	a5,a4
   103ca:	fc842683          	lw	a3,-56(s0)
   103ce:	fcc42703          	lw	a4,-52(s0)
   103d2:	fb842503          	lw	a0,-72(s0)
   103d6:	1c3000ef          	jal	10d98 <crypto_aead_encrypt>
   103da:	87aa                	mv	a5,a0
   103dc:	cb81                	beqz	a5,103ec <main+0x1fc>
   103de:	67f1                	lui	a5,0x1c
   103e0:	c6c78513          	addi	a0,a5,-916 # 1bc6c <__clzsi2+0x86>
   103e4:	78d010ef          	jal	12370 <puts>
   103e8:	57fd                	li	a5,-1
   103ea:	a8bd                	j	10468 <main+0x278>
   103ec:	f7042703          	lw	a4,-144(s0)
   103f0:	f7442783          	lw	a5,-140(s0)
   103f4:	863a                	mv	a2,a4
   103f6:	86be                	mv	a3,a5
   103f8:	fb842583          	lw	a1,-72(s0)
   103fc:	67f1                	lui	a5,0x1c
   103fe:	c8078513          	addi	a0,a5,-896 # 1bc80 <__clzsi2+0x9a>
   10402:	3391                	jal	10146 <print_hex>
   10404:	f7042703          	lw	a4,-144(s0)
   10408:	f7442783          	lw	a5,-140(s0)
   1040c:	f7c40613          	addi	a2,s0,-132
   10410:	f6840593          	addi	a1,s0,-152
   10414:	fa040693          	addi	a3,s0,-96
   10418:	c436                	sw	a3,8(sp)
   1041a:	f9040693          	addi	a3,s0,-112
   1041e:	c236                	sw	a3,4(sp)
   10420:	fc442683          	lw	a3,-60(s0)
   10424:	c036                	sw	a3,0(sp)
   10426:	fc042883          	lw	a7,-64(s0)
   1042a:	8832                	mv	a6,a2
   1042c:	fb842683          	lw	a3,-72(s0)
   10430:	4601                	li	a2,0
   10432:	fb042503          	lw	a0,-80(s0)
   10436:	1c6010ef          	jal	115fc <crypto_aead_decrypt>
   1043a:	87aa                	mv	a5,a0
   1043c:	cb81                	beqz	a5,1044c <main+0x25c>
   1043e:	67f1                	lui	a5,0x1c
   10440:	c8c78513          	addi	a0,a5,-884 # 1bc8c <__clzsi2+0xa6>
   10444:	72d010ef          	jal	12370 <puts>
   10448:	57fd                	li	a5,-1
   1044a:	a839                	j	10468 <main+0x278>
   1044c:	f6842703          	lw	a4,-152(s0)
   10450:	f6c42783          	lw	a5,-148(s0)
   10454:	87ba                	mv	a5,a4
   10456:	fb042603          	lw	a2,-80(s0)
   1045a:	85be                	mv	a1,a5
   1045c:	67f1                	lui	a5,0x1c
   1045e:	ca078513          	addi	a0,a5,-864 # 1bca0 <__clzsi2+0xba>
   10462:	651010ef          	jal	122b2 <printf>
   10466:	4781                	li	a5,0
   10468:	8126                	mv	sp,s1
   1046a:	853e                	mv	a0,a5
   1046c:	f5040113          	addi	sp,s0,-176
   10470:	50ba                	lw	ra,172(sp)
   10472:	542a                	lw	s0,168(sp)
   10474:	549a                	lw	s1,164(sp)
   10476:	590a                	lw	s2,160(sp)
   10478:	49fa                	lw	s3,156(sp)
   1047a:	4a6a                	lw	s4,152(sp)
   1047c:	4ada                	lw	s5,148(sp)
   1047e:	4b4a                	lw	s6,144(sp)
   10480:	4bba                	lw	s7,140(sp)
   10482:	4c2a                	lw	s8,136(sp)
   10484:	4c9a                	lw	s9,132(sp)
   10486:	614d                	addi	sp,sp,176
   10488:	8082                	ret

0001048a <ROR>:
   1048a:	1101                	addi	sp,sp,-32
   1048c:	ce22                	sw	s0,28(sp)
   1048e:	1000                	addi	s0,sp,32
   10490:	fea42423          	sw	a0,-24(s0)
   10494:	feb42623          	sw	a1,-20(s0)
   10498:	fec42223          	sw	a2,-28(s0)
   1049c:	fe842703          	lw	a4,-24(s0)
   104a0:	fec42783          	lw	a5,-20(s0)
   104a4:	fe442683          	lw	a3,-28(s0)
   104a8:	1681                	addi	a3,a3,-32
   104aa:	0006c663          	bltz	a3,104b6 <ROR+0x2c>
   104ae:	00d7d333          	srl	t1,a5,a3
   104b2:	4381                	li	t2,0
   104b4:	a025                	j	104dc <ROR+0x52>
   104b6:	00179613          	slli	a2,a5,0x1
   104ba:	45fd                	li	a1,31
   104bc:	fe442683          	lw	a3,-28(s0)
   104c0:	40d586b3          	sub	a3,a1,a3
   104c4:	00d616b3          	sll	a3,a2,a3
   104c8:	fe442603          	lw	a2,-28(s0)
   104cc:	00c75333          	srl	t1,a4,a2
   104d0:	0066e333          	or	t1,a3,t1
   104d4:	fe442683          	lw	a3,-28(s0)
   104d8:	00d7d3b3          	srl	t2,a5,a3
   104dc:	fe442683          	lw	a3,-28(s0)
   104e0:	40d006b3          	neg	a3,a3
   104e4:	03f6f693          	andi	a3,a3,63
   104e8:	1681                	addi	a3,a3,-32
   104ea:	0006c663          	bltz	a3,104f6 <ROR+0x6c>
   104ee:	00d718b3          	sll	a7,a4,a3
   104f2:	4801                	li	a6,0
   104f4:	a081                	j	10534 <ROR+0xaa>
   104f6:	00175613          	srli	a2,a4,0x1
   104fa:	45fd                	li	a1,31
   104fc:	fe442683          	lw	a3,-28(s0)
   10500:	40d006b3          	neg	a3,a3
   10504:	03f6f693          	andi	a3,a3,63
   10508:	40d586b3          	sub	a3,a1,a3
   1050c:	00d656b3          	srl	a3,a2,a3
   10510:	fe442603          	lw	a2,-28(s0)
   10514:	40c00633          	neg	a2,a2
   10518:	03f67613          	andi	a2,a2,63
   1051c:	00c798b3          	sll	a7,a5,a2
   10520:	0116e8b3          	or	a7,a3,a7
   10524:	fe442683          	lw	a3,-28(s0)
   10528:	40d006b3          	neg	a3,a3
   1052c:	03f6f693          	andi	a3,a3,63
   10530:	00d71833          	sll	a6,a4,a3
   10534:	00686e33          	or	t3,a6,t1
   10538:	0078eeb3          	or	t4,a7,t2
   1053c:	8872                	mv	a6,t3
   1053e:	88f6                	mv	a7,t4
   10540:	8742                	mv	a4,a6
   10542:	87c6                	mv	a5,a7
   10544:	853a                	mv	a0,a4
   10546:	85be                	mv	a1,a5
   10548:	4472                	lw	s0,28(sp)
   1054a:	6105                	addi	sp,sp,32
   1054c:	8082                	ret

0001054e <ROUND>:
   1054e:	7169                	addi	sp,sp,-304
   10550:	12112623          	sw	ra,300(sp)
   10554:	12812423          	sw	s0,296(sp)
   10558:	13212223          	sw	s2,292(sp)
   1055c:	13312023          	sw	s3,288(sp)
   10560:	11412e23          	sw	s4,284(sp)
   10564:	11512c23          	sw	s5,280(sp)
   10568:	11612a23          	sw	s6,276(sp)
   1056c:	11712823          	sw	s7,272(sp)
   10570:	11812623          	sw	s8,268(sp)
   10574:	11912423          	sw	s9,264(sp)
   10578:	11a12223          	sw	s10,260(sp)
   1057c:	11b12023          	sw	s11,256(sp)
   10580:	1a00                	addi	s0,sp,304
   10582:	f8a42e23          	sw	a0,-100(s0)
   10586:	87ae                	mv	a5,a1
   10588:	f8f40da3          	sb	a5,-101(s0)
   1058c:	f9c42783          	lw	a5,-100(s0)
   10590:	4b90                	lw	a2,16(a5)
   10592:	4bd4                	lw	a3,20(a5)
   10594:	f9b44783          	lbu	a5,-101(s0)
   10598:	0ff7f793          	zext.b	a5,a5
   1059c:	883e                	mv	a6,a5
   1059e:	4881                	li	a7,0
   105a0:	01064333          	xor	t1,a2,a6
   105a4:	0116c3b3          	xor	t2,a3,a7
   105a8:	f9c42783          	lw	a5,-100(s0)
   105ac:	0067a823          	sw	t1,16(a5)
   105b0:	0077aa23          	sw	t2,20(a5)
   105b4:	f9c42783          	lw	a5,-100(s0)
   105b8:	4390                	lw	a2,0(a5)
   105ba:	43d4                	lw	a3,4(a5)
   105bc:	f9c42783          	lw	a5,-100(s0)
   105c0:	5398                	lw	a4,32(a5)
   105c2:	53dc                	lw	a5,36(a5)
   105c4:	00e64e33          	xor	t3,a2,a4
   105c8:	00f6ceb3          	xor	t4,a3,a5
   105cc:	f9c42783          	lw	a5,-100(s0)
   105d0:	01c7a023          	sw	t3,0(a5)
   105d4:	01d7a223          	sw	t4,4(a5)
   105d8:	f9c42783          	lw	a5,-100(s0)
   105dc:	5390                	lw	a2,32(a5)
   105de:	53d4                	lw	a3,36(a5)
   105e0:	f9c42783          	lw	a5,-100(s0)
   105e4:	4f98                	lw	a4,24(a5)
   105e6:	4fdc                	lw	a5,28(a5)
   105e8:	00e64c33          	xor	s8,a2,a4
   105ec:	00f6ccb3          	xor	s9,a3,a5
   105f0:	f9c42783          	lw	a5,-100(s0)
   105f4:	0387a023          	sw	s8,32(a5)
   105f8:	0397a223          	sw	s9,36(a5)
   105fc:	f9c42783          	lw	a5,-100(s0)
   10600:	4b90                	lw	a2,16(a5)
   10602:	4bd4                	lw	a3,20(a5)
   10604:	f9c42783          	lw	a5,-100(s0)
   10608:	4798                	lw	a4,8(a5)
   1060a:	47dc                	lw	a5,12(a5)
   1060c:	00e645b3          	xor	a1,a2,a4
   10610:	f8b42823          	sw	a1,-112(s0)
   10614:	8fb5                	xor	a5,a5,a3
   10616:	f8f42a23          	sw	a5,-108(s0)
   1061a:	f9c42783          	lw	a5,-100(s0)
   1061e:	f9042683          	lw	a3,-112(s0)
   10622:	f9442703          	lw	a4,-108(s0)
   10626:	cb94                	sw	a3,16(a5)
   10628:	cbd8                	sw	a4,20(a5)
   1062a:	f9c42783          	lw	a5,-100(s0)
   1062e:	4390                	lw	a2,0(a5)
   10630:	43d4                	lw	a3,4(a5)
   10632:	f9c42783          	lw	a5,-100(s0)
   10636:	4798                	lw	a4,8(a5)
   10638:	47dc                	lw	a5,12(a5)
   1063a:	fff74913          	not	s2,a4
   1063e:	fff7c993          	not	s3,a5
   10642:	f9c42783          	lw	a5,-100(s0)
   10646:	4b98                	lw	a4,16(a5)
   10648:	4bdc                	lw	a5,20(a5)
   1064a:	00e97f33          	and	t5,s2,a4
   1064e:	00f9ffb3          	and	t6,s3,a5
   10652:	01e647b3          	xor	a5,a2,t5
   10656:	f8f42423          	sw	a5,-120(s0)
   1065a:	01f6c7b3          	xor	a5,a3,t6
   1065e:	f8f42623          	sw	a5,-116(s0)
   10662:	f8842783          	lw	a5,-120(s0)
   10666:	f8c42803          	lw	a6,-116(s0)
   1066a:	faf42423          	sw	a5,-88(s0)
   1066e:	fb042623          	sw	a6,-84(s0)
   10672:	f9c42783          	lw	a5,-100(s0)
   10676:	4790                	lw	a2,8(a5)
   10678:	47d4                	lw	a3,12(a5)
   1067a:	f9c42783          	lw	a5,-100(s0)
   1067e:	4b98                	lw	a4,16(a5)
   10680:	4bdc                	lw	a5,20(a5)
   10682:	fff74b13          	not	s6,a4
   10686:	fff7cb93          	not	s7,a5
   1068a:	f9c42783          	lw	a5,-100(s0)
   1068e:	4f98                	lw	a4,24(a5)
   10690:	4fdc                	lw	a5,28(a5)
   10692:	00eb7a33          	and	s4,s6,a4
   10696:	00fbfab3          	and	s5,s7,a5
   1069a:	014647b3          	xor	a5,a2,s4
   1069e:	f8f42023          	sw	a5,-128(s0)
   106a2:	0156c7b3          	xor	a5,a3,s5
   106a6:	f8f42223          	sw	a5,-124(s0)
   106aa:	f8042783          	lw	a5,-128(s0)
   106ae:	f8442803          	lw	a6,-124(s0)
   106b2:	faf42823          	sw	a5,-80(s0)
   106b6:	fb042a23          	sw	a6,-76(s0)
   106ba:	f9c42783          	lw	a5,-100(s0)
   106be:	4b90                	lw	a2,16(a5)
   106c0:	4bd4                	lw	a3,20(a5)
   106c2:	f9c42783          	lw	a5,-100(s0)
   106c6:	4f98                	lw	a4,24(a5)
   106c8:	4fdc                	lw	a5,28(a5)
   106ca:	fff74593          	not	a1,a4
   106ce:	f6b42c23          	sw	a1,-136(s0)
   106d2:	fff7c793          	not	a5,a5
   106d6:	f6f42e23          	sw	a5,-132(s0)
   106da:	f9c42783          	lw	a5,-100(s0)
   106de:	5398                	lw	a4,32(a5)
   106e0:	53dc                	lw	a5,36(a5)
   106e2:	f7842503          	lw	a0,-136(s0)
   106e6:	f7c42583          	lw	a1,-132(s0)
   106ea:	882a                	mv	a6,a0
   106ec:	00e87d33          	and	s10,a6,a4
   106f0:	00f5fdb3          	and	s11,a1,a5
   106f4:	01a647b3          	xor	a5,a2,s10
   106f8:	f6f42823          	sw	a5,-144(s0)
   106fc:	01b6c7b3          	xor	a5,a3,s11
   10700:	f6f42a23          	sw	a5,-140(s0)
   10704:	f7042783          	lw	a5,-144(s0)
   10708:	f7442803          	lw	a6,-140(s0)
   1070c:	faf42c23          	sw	a5,-72(s0)
   10710:	fb042e23          	sw	a6,-68(s0)
   10714:	f9c42783          	lw	a5,-100(s0)
   10718:	4f90                	lw	a2,24(a5)
   1071a:	4fd4                	lw	a3,28(a5)
   1071c:	f9c42783          	lw	a5,-100(s0)
   10720:	5398                	lw	a4,32(a5)
   10722:	53dc                	lw	a5,36(a5)
   10724:	fff74593          	not	a1,a4
   10728:	f6b42423          	sw	a1,-152(s0)
   1072c:	fff7c793          	not	a5,a5
   10730:	f6f42623          	sw	a5,-148(s0)
   10734:	f9c42783          	lw	a5,-100(s0)
   10738:	4398                	lw	a4,0(a5)
   1073a:	43dc                	lw	a5,4(a5)
   1073c:	f6842503          	lw	a0,-152(s0)
   10740:	f6c42583          	lw	a1,-148(s0)
   10744:	882a                	mv	a6,a0
   10746:	00e87833          	and	a6,a6,a4
   1074a:	f7042023          	sw	a6,-160(s0)
   1074e:	8fed                	and	a5,a5,a1
   10750:	f6f42223          	sw	a5,-156(s0)
   10754:	f6042783          	lw	a5,-160(s0)
   10758:	f6442803          	lw	a6,-156(s0)
   1075c:	873e                	mv	a4,a5
   1075e:	8f31                	xor	a4,a4,a2
   10760:	f4e42c23          	sw	a4,-168(s0)
   10764:	87c2                	mv	a5,a6
   10766:	8fb5                	xor	a5,a5,a3
   10768:	f4f42e23          	sw	a5,-164(s0)
   1076c:	f5842783          	lw	a5,-168(s0)
   10770:	f5c42803          	lw	a6,-164(s0)
   10774:	fcf42023          	sw	a5,-64(s0)
   10778:	fd042223          	sw	a6,-60(s0)
   1077c:	f9c42783          	lw	a5,-100(s0)
   10780:	5390                	lw	a2,32(a5)
   10782:	53d4                	lw	a3,36(a5)
   10784:	f9c42783          	lw	a5,-100(s0)
   10788:	4398                	lw	a4,0(a5)
   1078a:	43dc                	lw	a5,4(a5)
   1078c:	fff74593          	not	a1,a4
   10790:	f4b42823          	sw	a1,-176(s0)
   10794:	fff7c793          	not	a5,a5
   10798:	f4f42a23          	sw	a5,-172(s0)
   1079c:	f9c42783          	lw	a5,-100(s0)
   107a0:	4798                	lw	a4,8(a5)
   107a2:	47dc                	lw	a5,12(a5)
   107a4:	f5042503          	lw	a0,-176(s0)
   107a8:	f5442583          	lw	a1,-172(s0)
   107ac:	882a                	mv	a6,a0
   107ae:	00e87833          	and	a6,a6,a4
   107b2:	f5042423          	sw	a6,-184(s0)
   107b6:	8fed                	and	a5,a5,a1
   107b8:	f4f42623          	sw	a5,-180(s0)
   107bc:	f4842783          	lw	a5,-184(s0)
   107c0:	f4c42803          	lw	a6,-180(s0)
   107c4:	873e                	mv	a4,a5
   107c6:	8f31                	xor	a4,a4,a2
   107c8:	f4e42023          	sw	a4,-192(s0)
   107cc:	87c2                	mv	a5,a6
   107ce:	8fb5                	xor	a5,a5,a3
   107d0:	f4f42223          	sw	a5,-188(s0)
   107d4:	f4042783          	lw	a5,-192(s0)
   107d8:	f4442803          	lw	a6,-188(s0)
   107dc:	fcf42423          	sw	a5,-56(s0)
   107e0:	fd042623          	sw	a6,-52(s0)
   107e4:	fb042603          	lw	a2,-80(s0)
   107e8:	fb442683          	lw	a3,-76(s0)
   107ec:	fa842703          	lw	a4,-88(s0)
   107f0:	fac42783          	lw	a5,-84(s0)
   107f4:	00e645b3          	xor	a1,a2,a4
   107f8:	f2b42c23          	sw	a1,-200(s0)
   107fc:	8fb5                	xor	a5,a5,a3
   107fe:	f2f42e23          	sw	a5,-196(s0)
   10802:	f3842783          	lw	a5,-200(s0)
   10806:	f3c42803          	lw	a6,-196(s0)
   1080a:	faf42823          	sw	a5,-80(s0)
   1080e:	fb042a23          	sw	a6,-76(s0)
   10812:	fa842603          	lw	a2,-88(s0)
   10816:	fac42683          	lw	a3,-84(s0)
   1081a:	fc842703          	lw	a4,-56(s0)
   1081e:	fcc42783          	lw	a5,-52(s0)
   10822:	00e645b3          	xor	a1,a2,a4
   10826:	f2b42823          	sw	a1,-208(s0)
   1082a:	8fb5                	xor	a5,a5,a3
   1082c:	f2f42a23          	sw	a5,-204(s0)
   10830:	f3042783          	lw	a5,-208(s0)
   10834:	f3442803          	lw	a6,-204(s0)
   10838:	faf42423          	sw	a5,-88(s0)
   1083c:	fb042623          	sw	a6,-84(s0)
   10840:	fc042603          	lw	a2,-64(s0)
   10844:	fc442683          	lw	a3,-60(s0)
   10848:	fb842703          	lw	a4,-72(s0)
   1084c:	fbc42783          	lw	a5,-68(s0)
   10850:	00e645b3          	xor	a1,a2,a4
   10854:	f2b42423          	sw	a1,-216(s0)
   10858:	8fb5                	xor	a5,a5,a3
   1085a:	f2f42623          	sw	a5,-212(s0)
   1085e:	f2842783          	lw	a5,-216(s0)
   10862:	f2c42803          	lw	a6,-212(s0)
   10866:	fcf42023          	sw	a5,-64(s0)
   1086a:	fd042223          	sw	a6,-60(s0)
   1086e:	fb842703          	lw	a4,-72(s0)
   10872:	fbc42783          	lw	a5,-68(s0)
   10876:	fff74693          	not	a3,a4
   1087a:	f2d42023          	sw	a3,-224(s0)
   1087e:	fff7c793          	not	a5,a5
   10882:	f2f42223          	sw	a5,-220(s0)
   10886:	f2042783          	lw	a5,-224(s0)
   1088a:	f2442803          	lw	a6,-220(s0)
   1088e:	faf42c23          	sw	a5,-72(s0)
   10892:	fb042e23          	sw	a6,-68(s0)
   10896:	fa842903          	lw	s2,-88(s0)
   1089a:	fac42983          	lw	s3,-84(s0)
   1089e:	fa842703          	lw	a4,-88(s0)
   108a2:	fac42783          	lw	a5,-84(s0)
   108a6:	464d                	li	a2,19
   108a8:	853a                	mv	a0,a4
   108aa:	85be                	mv	a1,a5
   108ac:	3ef9                	jal	1048a <ROR>
   108ae:	872a                	mv	a4,a0
   108b0:	87ae                	mv	a5,a1
   108b2:	00e946b3          	xor	a3,s2,a4
   108b6:	f0d42c23          	sw	a3,-232(s0)
   108ba:	00f9c7b3          	xor	a5,s3,a5
   108be:	f0f42e23          	sw	a5,-228(s0)
   108c2:	fa842703          	lw	a4,-88(s0)
   108c6:	fac42783          	lw	a5,-84(s0)
   108ca:	4671                	li	a2,28
   108cc:	853a                	mv	a0,a4
   108ce:	85be                	mv	a1,a5
   108d0:	3e6d                	jal	1048a <ROR>
   108d2:	872a                	mv	a4,a0
   108d4:	87ae                	mv	a5,a1
   108d6:	f1842603          	lw	a2,-232(s0)
   108da:	f1c42683          	lw	a3,-228(s0)
   108de:	85b2                	mv	a1,a2
   108e0:	8db9                	xor	a1,a1,a4
   108e2:	f0b42823          	sw	a1,-240(s0)
   108e6:	8fb5                	xor	a5,a5,a3
   108e8:	f0f42a23          	sw	a5,-236(s0)
   108ec:	f9c42783          	lw	a5,-100(s0)
   108f0:	f1042683          	lw	a3,-240(s0)
   108f4:	f1442703          	lw	a4,-236(s0)
   108f8:	c394                	sw	a3,0(a5)
   108fa:	c3d8                	sw	a4,4(a5)
   108fc:	fb042903          	lw	s2,-80(s0)
   10900:	fb442983          	lw	s3,-76(s0)
   10904:	fb042703          	lw	a4,-80(s0)
   10908:	fb442783          	lw	a5,-76(s0)
   1090c:	03d00613          	li	a2,61
   10910:	853a                	mv	a0,a4
   10912:	85be                	mv	a1,a5
   10914:	3e9d                	jal	1048a <ROR>
   10916:	872a                	mv	a4,a0
   10918:	87ae                	mv	a5,a1
   1091a:	00e946b3          	xor	a3,s2,a4
   1091e:	f0d42423          	sw	a3,-248(s0)
   10922:	00f9c7b3          	xor	a5,s3,a5
   10926:	f0f42623          	sw	a5,-244(s0)
   1092a:	fb042703          	lw	a4,-80(s0)
   1092e:	fb442783          	lw	a5,-76(s0)
   10932:	02700613          	li	a2,39
   10936:	853a                	mv	a0,a4
   10938:	85be                	mv	a1,a5
   1093a:	3e81                	jal	1048a <ROR>
   1093c:	872a                	mv	a4,a0
   1093e:	87ae                	mv	a5,a1
   10940:	f0842603          	lw	a2,-248(s0)
   10944:	f0c42683          	lw	a3,-244(s0)
   10948:	85b2                	mv	a1,a2
   1094a:	8db9                	xor	a1,a1,a4
   1094c:	f0b42023          	sw	a1,-256(s0)
   10950:	8fb5                	xor	a5,a5,a3
   10952:	f0f42223          	sw	a5,-252(s0)
   10956:	f9c42783          	lw	a5,-100(s0)
   1095a:	f0042683          	lw	a3,-256(s0)
   1095e:	f0442703          	lw	a4,-252(s0)
   10962:	c794                	sw	a3,8(a5)
   10964:	c7d8                	sw	a4,12(a5)
   10966:	fb842903          	lw	s2,-72(s0)
   1096a:	fbc42983          	lw	s3,-68(s0)
   1096e:	fb842703          	lw	a4,-72(s0)
   10972:	fbc42783          	lw	a5,-68(s0)
   10976:	4605                	li	a2,1
   10978:	853a                	mv	a0,a4
   1097a:	85be                	mv	a1,a5
   1097c:	3639                	jal	1048a <ROR>
   1097e:	872a                	mv	a4,a0
   10980:	87ae                	mv	a5,a1
   10982:	00e946b3          	xor	a3,s2,a4
   10986:	eed42c23          	sw	a3,-264(s0)
   1098a:	00f9c7b3          	xor	a5,s3,a5
   1098e:	eef42e23          	sw	a5,-260(s0)
   10992:	fb842703          	lw	a4,-72(s0)
   10996:	fbc42783          	lw	a5,-68(s0)
   1099a:	4619                	li	a2,6
   1099c:	853a                	mv	a0,a4
   1099e:	85be                	mv	a1,a5
   109a0:	34ed                	jal	1048a <ROR>
   109a2:	872a                	mv	a4,a0
   109a4:	87ae                	mv	a5,a1
   109a6:	ef842603          	lw	a2,-264(s0)
   109aa:	efc42683          	lw	a3,-260(s0)
   109ae:	85b2                	mv	a1,a2
   109b0:	8db9                	xor	a1,a1,a4
   109b2:	eeb42823          	sw	a1,-272(s0)
   109b6:	8fb5                	xor	a5,a5,a3
   109b8:	eef42a23          	sw	a5,-268(s0)
   109bc:	f9c42783          	lw	a5,-100(s0)
   109c0:	ef042683          	lw	a3,-272(s0)
   109c4:	ef442703          	lw	a4,-268(s0)
   109c8:	cb94                	sw	a3,16(a5)
   109ca:	cbd8                	sw	a4,20(a5)
   109cc:	fc042903          	lw	s2,-64(s0)
   109d0:	fc442983          	lw	s3,-60(s0)
   109d4:	fc042703          	lw	a4,-64(s0)
   109d8:	fc442783          	lw	a5,-60(s0)
   109dc:	4629                	li	a2,10
   109de:	853a                	mv	a0,a4
   109e0:	85be                	mv	a1,a5
   109e2:	3465                	jal	1048a <ROR>
   109e4:	872a                	mv	a4,a0
   109e6:	87ae                	mv	a5,a1
   109e8:	00e946b3          	xor	a3,s2,a4
   109ec:	eed42423          	sw	a3,-280(s0)
   109f0:	00f9c7b3          	xor	a5,s3,a5
   109f4:	eef42623          	sw	a5,-276(s0)
   109f8:	fc042703          	lw	a4,-64(s0)
   109fc:	fc442783          	lw	a5,-60(s0)
   10a00:	4645                	li	a2,17
   10a02:	853a                	mv	a0,a4
   10a04:	85be                	mv	a1,a5
   10a06:	3451                	jal	1048a <ROR>
   10a08:	872a                	mv	a4,a0
   10a0a:	87ae                	mv	a5,a1
   10a0c:	ee842603          	lw	a2,-280(s0)
   10a10:	eec42683          	lw	a3,-276(s0)
   10a14:	85b2                	mv	a1,a2
   10a16:	8db9                	xor	a1,a1,a4
   10a18:	eeb42023          	sw	a1,-288(s0)
   10a1c:	8fb5                	xor	a5,a5,a3
   10a1e:	eef42223          	sw	a5,-284(s0)
   10a22:	f9c42783          	lw	a5,-100(s0)
   10a26:	ee042683          	lw	a3,-288(s0)
   10a2a:	ee442703          	lw	a4,-284(s0)
   10a2e:	cf94                	sw	a3,24(a5)
   10a30:	cfd8                	sw	a4,28(a5)
   10a32:	fc842903          	lw	s2,-56(s0)
   10a36:	fcc42983          	lw	s3,-52(s0)
   10a3a:	fc842703          	lw	a4,-56(s0)
   10a3e:	fcc42783          	lw	a5,-52(s0)
   10a42:	461d                	li	a2,7
   10a44:	853a                	mv	a0,a4
   10a46:	85be                	mv	a1,a5
   10a48:	3489                	jal	1048a <ROR>
   10a4a:	872a                	mv	a4,a0
   10a4c:	87ae                	mv	a5,a1
   10a4e:	00e946b3          	xor	a3,s2,a4
   10a52:	ecd42c23          	sw	a3,-296(s0)
   10a56:	00f9c7b3          	xor	a5,s3,a5
   10a5a:	ecf42e23          	sw	a5,-292(s0)
   10a5e:	fc842703          	lw	a4,-56(s0)
   10a62:	fcc42783          	lw	a5,-52(s0)
   10a66:	02900613          	li	a2,41
   10a6a:	853a                	mv	a0,a4
   10a6c:	85be                	mv	a1,a5
   10a6e:	3c31                	jal	1048a <ROR>
   10a70:	872a                	mv	a4,a0
   10a72:	87ae                	mv	a5,a1
   10a74:	ed842603          	lw	a2,-296(s0)
   10a78:	edc42683          	lw	a3,-292(s0)
   10a7c:	85b2                	mv	a1,a2
   10a7e:	8db9                	xor	a1,a1,a4
   10a80:	ecb42823          	sw	a1,-304(s0)
   10a84:	8fb5                	xor	a5,a5,a3
   10a86:	ecf42a23          	sw	a5,-300(s0)
   10a8a:	f9c42783          	lw	a5,-100(s0)
   10a8e:	ed042683          	lw	a3,-304(s0)
   10a92:	ed442703          	lw	a4,-300(s0)
   10a96:	d394                	sw	a3,32(a5)
   10a98:	d3d8                	sw	a4,36(a5)
   10a9a:	0001                	nop
   10a9c:	12c12083          	lw	ra,300(sp)
   10aa0:	12812403          	lw	s0,296(sp)
   10aa4:	12412903          	lw	s2,292(sp)
   10aa8:	12012983          	lw	s3,288(sp)
   10aac:	11c12a03          	lw	s4,284(sp)
   10ab0:	11812a83          	lw	s5,280(sp)
   10ab4:	11412b03          	lw	s6,276(sp)
   10ab8:	11012b83          	lw	s7,272(sp)
   10abc:	10c12c03          	lw	s8,268(sp)
   10ac0:	10812c83          	lw	s9,264(sp)
   10ac4:	10412d03          	lw	s10,260(sp)
   10ac8:	10012d83          	lw	s11,256(sp)
   10acc:	6155                	addi	sp,sp,304
   10ace:	8082                	ret

00010ad0 <P12>:
   10ad0:	1101                	addi	sp,sp,-32
   10ad2:	ce06                	sw	ra,28(sp)
   10ad4:	cc22                	sw	s0,24(sp)
   10ad6:	1000                	addi	s0,sp,32
   10ad8:	fea42623          	sw	a0,-20(s0)
   10adc:	0f000593          	li	a1,240
   10ae0:	fec42503          	lw	a0,-20(s0)
   10ae4:	34ad                	jal	1054e <ROUND>
   10ae6:	0e100593          	li	a1,225
   10aea:	fec42503          	lw	a0,-20(s0)
   10aee:	3485                	jal	1054e <ROUND>
   10af0:	0d200593          	li	a1,210
   10af4:	fec42503          	lw	a0,-20(s0)
   10af8:	3c99                	jal	1054e <ROUND>
   10afa:	0c300593          	li	a1,195
   10afe:	fec42503          	lw	a0,-20(s0)
   10b02:	34b1                	jal	1054e <ROUND>
   10b04:	0b400593          	li	a1,180
   10b08:	fec42503          	lw	a0,-20(s0)
   10b0c:	3489                	jal	1054e <ROUND>
   10b0e:	0a500593          	li	a1,165
   10b12:	fec42503          	lw	a0,-20(s0)
   10b16:	3c25                	jal	1054e <ROUND>
   10b18:	09600593          	li	a1,150
   10b1c:	fec42503          	lw	a0,-20(s0)
   10b20:	343d                	jal	1054e <ROUND>
   10b22:	08700593          	li	a1,135
   10b26:	fec42503          	lw	a0,-20(s0)
   10b2a:	3415                	jal	1054e <ROUND>
   10b2c:	07800593          	li	a1,120
   10b30:	fec42503          	lw	a0,-20(s0)
   10b34:	3c29                	jal	1054e <ROUND>
   10b36:	06900593          	li	a1,105
   10b3a:	fec42503          	lw	a0,-20(s0)
   10b3e:	3c01                	jal	1054e <ROUND>
   10b40:	05a00593          	li	a1,90
   10b44:	fec42503          	lw	a0,-20(s0)
   10b48:	3419                	jal	1054e <ROUND>
   10b4a:	04b00593          	li	a1,75
   10b4e:	fec42503          	lw	a0,-20(s0)
   10b52:	3af5                	jal	1054e <ROUND>
   10b54:	0001                	nop
   10b56:	40f2                	lw	ra,28(sp)
   10b58:	4462                	lw	s0,24(sp)
   10b5a:	6105                	addi	sp,sp,32
   10b5c:	8082                	ret

00010b5e <P8>:
   10b5e:	1101                	addi	sp,sp,-32
   10b60:	ce06                	sw	ra,28(sp)
   10b62:	cc22                	sw	s0,24(sp)
   10b64:	1000                	addi	s0,sp,32
   10b66:	fea42623          	sw	a0,-20(s0)
   10b6a:	0b400593          	li	a1,180
   10b6e:	fec42503          	lw	a0,-20(s0)
   10b72:	3af1                	jal	1054e <ROUND>
   10b74:	0a500593          	li	a1,165
   10b78:	fec42503          	lw	a0,-20(s0)
   10b7c:	3ac9                	jal	1054e <ROUND>
   10b7e:	09600593          	li	a1,150
   10b82:	fec42503          	lw	a0,-20(s0)
   10b86:	32e1                	jal	1054e <ROUND>
   10b88:	08700593          	li	a1,135
   10b8c:	fec42503          	lw	a0,-20(s0)
   10b90:	3a7d                	jal	1054e <ROUND>
   10b92:	07800593          	li	a1,120
   10b96:	fec42503          	lw	a0,-20(s0)
   10b9a:	3a55                	jal	1054e <ROUND>
   10b9c:	06900593          	li	a1,105
   10ba0:	fec42503          	lw	a0,-20(s0)
   10ba4:	326d                	jal	1054e <ROUND>
   10ba6:	05a00593          	li	a1,90
   10baa:	fec42503          	lw	a0,-20(s0)
   10bae:	3245                	jal	1054e <ROUND>
   10bb0:	04b00593          	li	a1,75
   10bb4:	fec42503          	lw	a0,-20(s0)
   10bb8:	3a59                	jal	1054e <ROUND>
   10bba:	0001                	nop
   10bbc:	40f2                	lw	ra,28(sp)
   10bbe:	4462                	lw	s0,24(sp)
   10bc0:	6105                	addi	sp,sp,32
   10bc2:	8082                	ret

00010bc4 <LOADBYTES>:
   10bc4:	7179                	addi	sp,sp,-48
   10bc6:	d622                	sw	s0,44(sp)
   10bc8:	1800                	addi	s0,sp,48
   10bca:	fca42e23          	sw	a0,-36(s0)
   10bce:	fcb42c23          	sw	a1,-40(s0)
   10bd2:	4501                	li	a0,0
   10bd4:	4581                	li	a1,0
   10bd6:	fea42023          	sw	a0,-32(s0)
   10bda:	feb42223          	sw	a1,-28(s0)
   10bde:	fe042623          	sw	zero,-20(s0)
   10be2:	a0a5                	j	10c4a <LOADBYTES+0x86>
   10be4:	fec42583          	lw	a1,-20(s0)
   10be8:	fdc42503          	lw	a0,-36(s0)
   10bec:	95aa                	add	a1,a1,a0
   10bee:	0005c583          	lbu	a1,0(a1)
   10bf2:	862e                	mv	a2,a1
   10bf4:	4681                	li	a3,0
   10bf6:	451d                	li	a0,7
   10bf8:	fec42583          	lw	a1,-20(s0)
   10bfc:	40b505b3          	sub	a1,a0,a1
   10c00:	058e                	slli	a1,a1,0x3
   10c02:	fe058513          	addi	a0,a1,-32
   10c06:	00054663          	bltz	a0,10c12 <LOADBYTES+0x4e>
   10c0a:	00a617b3          	sll	a5,a2,a0
   10c0e:	4701                	li	a4,0
   10c10:	a821                	j	10c28 <LOADBYTES+0x64>
   10c12:	00165313          	srli	t1,a2,0x1
   10c16:	457d                	li	a0,31
   10c18:	8d0d                	sub	a0,a0,a1
   10c1a:	00a35533          	srl	a0,t1,a0
   10c1e:	00b697b3          	sll	a5,a3,a1
   10c22:	8fc9                	or	a5,a5,a0
   10c24:	00b61733          	sll	a4,a2,a1
   10c28:	fe042583          	lw	a1,-32(s0)
   10c2c:	00e5e833          	or	a6,a1,a4
   10c30:	fe442583          	lw	a1,-28(s0)
   10c34:	00f5e8b3          	or	a7,a1,a5
   10c38:	ff042023          	sw	a6,-32(s0)
   10c3c:	ff142223          	sw	a7,-28(s0)
   10c40:	fec42583          	lw	a1,-20(s0)
   10c44:	0585                	addi	a1,a1,1
   10c46:	feb42623          	sw	a1,-20(s0)
   10c4a:	fec42503          	lw	a0,-20(s0)
   10c4e:	fd842583          	lw	a1,-40(s0)
   10c52:	f8b549e3          	blt	a0,a1,10be4 <LOADBYTES+0x20>
   10c56:	fe042703          	lw	a4,-32(s0)
   10c5a:	fe442783          	lw	a5,-28(s0)
   10c5e:	853a                	mv	a0,a4
   10c60:	85be                	mv	a1,a5
   10c62:	5432                	lw	s0,44(sp)
   10c64:	6145                	addi	sp,sp,48
   10c66:	8082                	ret

00010c68 <STOREBYTES>:
   10c68:	7179                	addi	sp,sp,-48
   10c6a:	d622                	sw	s0,44(sp)
   10c6c:	1800                	addi	s0,sp,48
   10c6e:	fca42e23          	sw	a0,-36(s0)
   10c72:	fcb42823          	sw	a1,-48(s0)
   10c76:	fcc42a23          	sw	a2,-44(s0)
   10c7a:	fcd42c23          	sw	a3,-40(s0)
   10c7e:	fe042623          	sw	zero,-20(s0)
   10c82:	a085                	j	10ce2 <STOREBYTES+0x7a>
   10c84:	461d                	li	a2,7
   10c86:	fec42683          	lw	a3,-20(s0)
   10c8a:	40d606b3          	sub	a3,a2,a3
   10c8e:	068e                	slli	a3,a3,0x3
   10c90:	fe068613          	addi	a2,a3,-32
   10c94:	00064863          	bltz	a2,10ca4 <STOREBYTES+0x3c>
   10c98:	fd442683          	lw	a3,-44(s0)
   10c9c:	00c6d733          	srl	a4,a3,a2
   10ca0:	4781                	li	a5,0
   10ca2:	a015                	j	10cc6 <STOREBYTES+0x5e>
   10ca4:	fd442603          	lw	a2,-44(s0)
   10ca8:	00161593          	slli	a1,a2,0x1
   10cac:	467d                	li	a2,31
   10cae:	8e15                	sub	a2,a2,a3
   10cb0:	00c59633          	sll	a2,a1,a2
   10cb4:	fd042583          	lw	a1,-48(s0)
   10cb8:	00d5d733          	srl	a4,a1,a3
   10cbc:	8f51                	or	a4,a4,a2
   10cbe:	fd442603          	lw	a2,-44(s0)
   10cc2:	00d657b3          	srl	a5,a2,a3
   10cc6:	fec42683          	lw	a3,-20(s0)
   10cca:	fdc42603          	lw	a2,-36(s0)
   10cce:	96b2                	add	a3,a3,a2
   10cd0:	0ff77613          	zext.b	a2,a4
   10cd4:	00c68023          	sb	a2,0(a3)
   10cd8:	fec42683          	lw	a3,-20(s0)
   10cdc:	0685                	addi	a3,a3,1
   10cde:	fed42623          	sw	a3,-20(s0)
   10ce2:	fec42603          	lw	a2,-20(s0)
   10ce6:	fd842683          	lw	a3,-40(s0)
   10cea:	f8d64de3          	blt	a2,a3,10c84 <STOREBYTES+0x1c>
   10cee:	0001                	nop
   10cf0:	0001                	nop
   10cf2:	5432                	lw	s0,44(sp)
   10cf4:	6145                	addi	sp,sp,48
   10cf6:	8082                	ret

00010cf8 <CLEARBYTES>:
   10cf8:	7179                	addi	sp,sp,-48
   10cfa:	d622                	sw	s0,44(sp)
   10cfc:	1800                	addi	s0,sp,48
   10cfe:	fca42c23          	sw	a0,-40(s0)
   10d02:	fcb42e23          	sw	a1,-36(s0)
   10d06:	fcc42a23          	sw	a2,-44(s0)
   10d0a:	fe042623          	sw	zero,-20(s0)
   10d0e:	a0b5                	j	10d7a <CLEARBYTES+0x82>
   10d10:	461d                	li	a2,7
   10d12:	fec42683          	lw	a3,-20(s0)
   10d16:	40d606b3          	sub	a3,a2,a3
   10d1a:	068e                	slli	a3,a3,0x3
   10d1c:	fe068613          	addi	a2,a3,-32
   10d20:	00064863          	bltz	a2,10d30 <CLEARBYTES+0x38>
   10d24:	0ff00693          	li	a3,255
   10d28:	00c697b3          	sll	a5,a3,a2
   10d2c:	4701                	li	a4,0
   10d2e:	a00d                	j	10d50 <CLEARBYTES+0x58>
   10d30:	0ff00613          	li	a2,255
   10d34:	00165593          	srli	a1,a2,0x1
   10d38:	467d                	li	a2,31
   10d3a:	8e15                	sub	a2,a2,a3
   10d3c:	00c5d633          	srl	a2,a1,a2
   10d40:	4581                	li	a1,0
   10d42:	00d597b3          	sll	a5,a1,a3
   10d46:	8fd1                	or	a5,a5,a2
   10d48:	0ff00613          	li	a2,255
   10d4c:	00d61733          	sll	a4,a2,a3
   10d50:	fff74813          	not	a6,a4
   10d54:	fff7c893          	not	a7,a5
   10d58:	fd842683          	lw	a3,-40(s0)
   10d5c:	0106f333          	and	t1,a3,a6
   10d60:	fdc42683          	lw	a3,-36(s0)
   10d64:	0116f3b3          	and	t2,a3,a7
   10d68:	fc642c23          	sw	t1,-40(s0)
   10d6c:	fc742e23          	sw	t2,-36(s0)
   10d70:	fec42683          	lw	a3,-20(s0)
   10d74:	0685                	addi	a3,a3,1
   10d76:	fed42623          	sw	a3,-20(s0)
   10d7a:	fec42603          	lw	a2,-20(s0)
   10d7e:	fd442683          	lw	a3,-44(s0)
   10d82:	f8d647e3          	blt	a2,a3,10d10 <CLEARBYTES+0x18>
   10d86:	fd842703          	lw	a4,-40(s0)
   10d8a:	fdc42783          	lw	a5,-36(s0)
   10d8e:	853a                	mv	a0,a4
   10d90:	85be                	mv	a1,a5
   10d92:	5432                	lw	s0,44(sp)
   10d94:	6145                	addi	sp,sp,48
   10d96:	8082                	ret

00010d98 <crypto_aead_encrypt>:
   10d98:	7129                	addi	sp,sp,-320
   10d9a:	12112e23          	sw	ra,316(sp)
   10d9e:	12812c23          	sw	s0,312(sp)
   10da2:	13212a23          	sw	s2,308(sp)
   10da6:	13312823          	sw	s3,304(sp)
   10daa:	13412623          	sw	s4,300(sp)
   10dae:	13512423          	sw	s5,296(sp)
   10db2:	13612223          	sw	s6,292(sp)
   10db6:	13712023          	sw	s7,288(sp)
   10dba:	11812e23          	sw	s8,284(sp)
   10dbe:	11912c23          	sw	s9,280(sp)
   10dc2:	11a12a23          	sw	s10,276(sp)
   10dc6:	11b12823          	sw	s11,272(sp)
   10dca:	0280                	addi	s0,sp,320
   10dcc:	f6a42e23          	sw	a0,-132(s0)
   10dd0:	f6b42c23          	sw	a1,-136(s0)
   10dd4:	f6c42a23          	sw	a2,-140(s0)
   10dd8:	f6d42423          	sw	a3,-152(s0)
   10ddc:	f6e42623          	sw	a4,-148(s0)
   10de0:	f6f42823          	sw	a5,-144(s0)
   10de4:	f7042023          	sw	a6,-160(s0)
   10de8:	f7142223          	sw	a7,-156(s0)
   10dec:	f6842703          	lw	a4,-152(s0)
   10df0:	f6c42783          	lw	a5,-148(s0)
   10df4:	4641                	li	a2,16
   10df6:	4681                	li	a3,0
   10df8:	00c70833          	add	a6,a4,a2
   10dfc:	85c2                	mv	a1,a6
   10dfe:	00e5b5b3          	sltu	a1,a1,a4
   10e02:	00d788b3          	add	a7,a5,a3
   10e06:	011587b3          	add	a5,a1,a7
   10e0a:	88be                	mv	a7,a5
   10e0c:	8642                	mv	a2,a6
   10e0e:	86c6                	mv	a3,a7
   10e10:	f7842783          	lw	a5,-136(s0)
   10e14:	c390                	sw	a2,0(a5)
   10e16:	c3d4                	sw	a3,4(a5)
   10e18:	45a1                	li	a1,8
   10e1a:	4408                	lw	a0,8(s0)
   10e1c:	3365                	jal	10bc4 <LOADBYTES>
   10e1e:	fca42423          	sw	a0,-56(s0)
   10e22:	fcb42623          	sw	a1,-52(s0)
   10e26:	441c                	lw	a5,8(s0)
   10e28:	07a1                	addi	a5,a5,8
   10e2a:	45a1                	li	a1,8
   10e2c:	853e                	mv	a0,a5
   10e2e:	3b59                	jal	10bc4 <LOADBYTES>
   10e30:	fca42023          	sw	a0,-64(s0)
   10e34:	fcb42223          	sw	a1,-60(s0)
   10e38:	45a1                	li	a1,8
   10e3a:	4048                	lw	a0,4(s0)
   10e3c:	3361                	jal	10bc4 <LOADBYTES>
   10e3e:	faa42c23          	sw	a0,-72(s0)
   10e42:	fab42e23          	sw	a1,-68(s0)
   10e46:	405c                	lw	a5,4(s0)
   10e48:	07a1                	addi	a5,a5,8
   10e4a:	45a1                	li	a1,8
   10e4c:	853e                	mv	a0,a5
   10e4e:	3b9d                	jal	10bc4 <LOADBYTES>
   10e50:	faa42823          	sw	a0,-80(s0)
   10e54:	fab42a23          	sw	a1,-76(s0)
   10e58:	4701                	li	a4,0
   10e5a:	808017b7          	lui	a5,0x80801
   10e5e:	c0878793          	addi	a5,a5,-1016 # 80800c08 <__BSS_END__+0x807e2c74>
   10e62:	f8e42423          	sw	a4,-120(s0)
   10e66:	f8f42623          	sw	a5,-116(s0)
   10e6a:	fc842703          	lw	a4,-56(s0)
   10e6e:	fcc42783          	lw	a5,-52(s0)
   10e72:	f8e42823          	sw	a4,-112(s0)
   10e76:	f8f42a23          	sw	a5,-108(s0)
   10e7a:	fc042703          	lw	a4,-64(s0)
   10e7e:	fc442783          	lw	a5,-60(s0)
   10e82:	f8e42c23          	sw	a4,-104(s0)
   10e86:	f8f42e23          	sw	a5,-100(s0)
   10e8a:	fb842703          	lw	a4,-72(s0)
   10e8e:	fbc42783          	lw	a5,-68(s0)
   10e92:	fae42023          	sw	a4,-96(s0)
   10e96:	faf42223          	sw	a5,-92(s0)
   10e9a:	fb042703          	lw	a4,-80(s0)
   10e9e:	fb442783          	lw	a5,-76(s0)
   10ea2:	fae42423          	sw	a4,-88(s0)
   10ea6:	faf42623          	sw	a5,-84(s0)
   10eaa:	f8840793          	addi	a5,s0,-120
   10eae:	853e                	mv	a0,a5
   10eb0:	3105                	jal	10ad0 <P12>
   10eb2:	fa042703          	lw	a4,-96(s0)
   10eb6:	fa442783          	lw	a5,-92(s0)
   10eba:	fc842683          	lw	a3,-56(s0)
   10ebe:	00e6cd33          	xor	s10,a3,a4
   10ec2:	fcc42683          	lw	a3,-52(s0)
   10ec6:	00f6cdb3          	xor	s11,a3,a5
   10eca:	fba42023          	sw	s10,-96(s0)
   10ece:	fbb42223          	sw	s11,-92(s0)
   10ed2:	fa842703          	lw	a4,-88(s0)
   10ed6:	fac42783          	lw	a5,-84(s0)
   10eda:	fc042683          	lw	a3,-64(s0)
   10ede:	8eb9                	xor	a3,a3,a4
   10ee0:	f4d42c23          	sw	a3,-168(s0)
   10ee4:	fc442683          	lw	a3,-60(s0)
   10ee8:	8fb5                	xor	a5,a5,a3
   10eea:	f4f42e23          	sw	a5,-164(s0)
   10eee:	f5842783          	lw	a5,-168(s0)
   10ef2:	f5c42803          	lw	a6,-164(s0)
   10ef6:	faf42423          	sw	a5,-88(s0)
   10efa:	fb042623          	sw	a6,-84(s0)
   10efe:	f6042703          	lw	a4,-160(s0)
   10f02:	f6442783          	lw	a5,-156(s0)
   10f06:	8f5d                	or	a4,a4,a5
   10f08:	28070b63          	beqz	a4,1119e <crypto_aead_encrypt+0x406>
   10f0c:	a055                	j	10fb0 <crypto_aead_encrypt+0x218>
   10f0e:	45a1                	li	a1,8
   10f10:	f7042503          	lw	a0,-144(s0)
   10f14:	3945                	jal	10bc4 <LOADBYTES>
   10f16:	862a                	mv	a2,a0
   10f18:	86ae                	mv	a3,a1
   10f1a:	f8842703          	lw	a4,-120(s0)
   10f1e:	f8c42783          	lw	a5,-116(s0)
   10f22:	00e645b3          	xor	a1,a2,a4
   10f26:	f4b42823          	sw	a1,-176(s0)
   10f2a:	8fb5                	xor	a5,a5,a3
   10f2c:	f4f42a23          	sw	a5,-172(s0)
   10f30:	f5042783          	lw	a5,-176(s0)
   10f34:	f5442803          	lw	a6,-172(s0)
   10f38:	f8f42423          	sw	a5,-120(s0)
   10f3c:	f9042623          	sw	a6,-116(s0)
   10f40:	f7042783          	lw	a5,-144(s0)
   10f44:	07a1                	addi	a5,a5,8
   10f46:	45a1                	li	a1,8
   10f48:	853e                	mv	a0,a5
   10f4a:	39ad                	jal	10bc4 <LOADBYTES>
   10f4c:	862a                	mv	a2,a0
   10f4e:	86ae                	mv	a3,a1
   10f50:	f9042703          	lw	a4,-112(s0)
   10f54:	f9442783          	lw	a5,-108(s0)
   10f58:	00e645b3          	xor	a1,a2,a4
   10f5c:	f4b42423          	sw	a1,-184(s0)
   10f60:	8fb5                	xor	a5,a5,a3
   10f62:	f4f42623          	sw	a5,-180(s0)
   10f66:	f4842783          	lw	a5,-184(s0)
   10f6a:	f4c42803          	lw	a6,-180(s0)
   10f6e:	f8f42823          	sw	a5,-112(s0)
   10f72:	f9042a23          	sw	a6,-108(s0)
   10f76:	f8840793          	addi	a5,s0,-120
   10f7a:	853e                	mv	a0,a5
   10f7c:	36cd                	jal	10b5e <P8>
   10f7e:	f7042783          	lw	a5,-144(s0)
   10f82:	07c1                	addi	a5,a5,16
   10f84:	f6f42823          	sw	a5,-144(s0)
   10f88:	f6042703          	lw	a4,-160(s0)
   10f8c:	f6442783          	lw	a5,-156(s0)
   10f90:	5641                	li	a2,-16
   10f92:	56fd                	li	a3,-1
   10f94:	00c70833          	add	a6,a4,a2
   10f98:	85c2                	mv	a1,a6
   10f9a:	00e5b5b3          	sltu	a1,a1,a4
   10f9e:	00d788b3          	add	a7,a5,a3
   10fa2:	011587b3          	add	a5,a1,a7
   10fa6:	88be                	mv	a7,a5
   10fa8:	f7042023          	sw	a6,-160(s0)
   10fac:	f7142223          	sw	a7,-156(s0)
   10fb0:	f6442783          	lw	a5,-156(s0)
   10fb4:	ffa9                	bnez	a5,10f0e <crypto_aead_encrypt+0x176>
   10fb6:	f6442783          	lw	a5,-156(s0)
   10fba:	e791                	bnez	a5,10fc6 <crypto_aead_encrypt+0x22e>
   10fbc:	f6042703          	lw	a4,-160(s0)
   10fc0:	47bd                	li	a5,15
   10fc2:	f4e7e6e3          	bltu	a5,a4,10f0e <crypto_aead_encrypt+0x176>
   10fc6:	f6442783          	lw	a5,-156(s0)
   10fca:	eb91                	bnez	a5,10fde <crypto_aead_encrypt+0x246>
   10fcc:	f6442783          	lw	a5,-156(s0)
   10fd0:	10079463          	bnez	a5,110d8 <crypto_aead_encrypt+0x340>
   10fd4:	f6042703          	lw	a4,-160(s0)
   10fd8:	479d                	li	a5,7
   10fda:	0ee7ff63          	bgeu	a5,a4,110d8 <crypto_aead_encrypt+0x340>
   10fde:	45a1                	li	a1,8
   10fe0:	f7042503          	lw	a0,-144(s0)
   10fe4:	36c5                	jal	10bc4 <LOADBYTES>
   10fe6:	862a                	mv	a2,a0
   10fe8:	86ae                	mv	a3,a1
   10fea:	f8842703          	lw	a4,-120(s0)
   10fee:	f8c42783          	lw	a5,-116(s0)
   10ff2:	00e645b3          	xor	a1,a2,a4
   10ff6:	f4b42023          	sw	a1,-192(s0)
   10ffa:	8fb5                	xor	a5,a5,a3
   10ffc:	f4f42223          	sw	a5,-188(s0)
   11000:	f4042783          	lw	a5,-192(s0)
   11004:	f4442803          	lw	a6,-188(s0)
   11008:	f8f42423          	sw	a5,-120(s0)
   1100c:	f9042623          	sw	a6,-116(s0)
   11010:	f7042783          	lw	a5,-144(s0)
   11014:	00878713          	addi	a4,a5,8
   11018:	f6042783          	lw	a5,-160(s0)
   1101c:	17e1                	addi	a5,a5,-8
   1101e:	85be                	mv	a1,a5
   11020:	853a                	mv	a0,a4
   11022:	364d                	jal	10bc4 <LOADBYTES>
   11024:	862a                	mv	a2,a0
   11026:	86ae                	mv	a3,a1
   11028:	f9042703          	lw	a4,-112(s0)
   1102c:	f9442783          	lw	a5,-108(s0)
   11030:	00e645b3          	xor	a1,a2,a4
   11034:	f2b42c23          	sw	a1,-200(s0)
   11038:	8fb5                	xor	a5,a5,a3
   1103a:	f2f42e23          	sw	a5,-196(s0)
   1103e:	f3842783          	lw	a5,-200(s0)
   11042:	f3c42803          	lw	a6,-196(s0)
   11046:	f8f42823          	sw	a5,-112(s0)
   1104a:	f9042a23          	sw	a6,-108(s0)
   1104e:	f9042303          	lw	t1,-112(s0)
   11052:	f9442383          	lw	t2,-108(s0)
   11056:	473d                	li	a4,15
   11058:	4781                	li	a5,0
   1105a:	f6042603          	lw	a2,-160(s0)
   1105e:	f6442683          	lw	a3,-156(s0)
   11062:	40c70833          	sub	a6,a4,a2
   11066:	85c2                	mv	a1,a6
   11068:	00b735b3          	sltu	a1,a4,a1
   1106c:	40d788b3          	sub	a7,a5,a3
   11070:	40b887b3          	sub	a5,a7,a1
   11074:	88be                	mv	a7,a5
   11076:	8742                	mv	a4,a6
   11078:	87c6                	mv	a5,a7
   1107a:	87ba                	mv	a5,a4
   1107c:	00379693          	slli	a3,a5,0x3
   11080:	fe068713          	addi	a4,a3,-32
   11084:	00074863          	bltz	a4,11094 <crypto_aead_encrypt+0x2fc>
   11088:	08000793          	li	a5,128
   1108c:	00e79ab3          	sll	s5,a5,a4
   11090:	4a01                	li	s4,0
   11092:	a015                	j	110b6 <crypto_aead_encrypt+0x31e>
   11094:	08000793          	li	a5,128
   11098:	0017d713          	srli	a4,a5,0x1
   1109c:	47fd                	li	a5,31
   1109e:	8f95                	sub	a5,a5,a3
   110a0:	00f75733          	srl	a4,a4,a5
   110a4:	4781                	li	a5,0
   110a6:	00d79ab3          	sll	s5,a5,a3
   110aa:	01576ab3          	or	s5,a4,s5
   110ae:	08000793          	li	a5,128
   110b2:	00d79a33          	sll	s4,a5,a3
   110b6:	014347b3          	xor	a5,t1,s4
   110ba:	f2f42823          	sw	a5,-208(s0)
   110be:	0153c7b3          	xor	a5,t2,s5
   110c2:	f2f42a23          	sw	a5,-204(s0)
   110c6:	f3042783          	lw	a5,-208(s0)
   110ca:	f3442803          	lw	a6,-204(s0)
   110ce:	f8f42823          	sw	a5,-112(s0)
   110d2:	f9042a23          	sw	a6,-108(s0)
   110d6:	a0c1                	j	11196 <crypto_aead_encrypt+0x3fe>
   110d8:	f6042783          	lw	a5,-160(s0)
   110dc:	85be                	mv	a1,a5
   110de:	f7042503          	lw	a0,-144(s0)
   110e2:	34cd                	jal	10bc4 <LOADBYTES>
   110e4:	862a                	mv	a2,a0
   110e6:	86ae                	mv	a3,a1
   110e8:	f8842703          	lw	a4,-120(s0)
   110ec:	f8c42783          	lw	a5,-116(s0)
   110f0:	00e645b3          	xor	a1,a2,a4
   110f4:	f2b42423          	sw	a1,-216(s0)
   110f8:	8fb5                	xor	a5,a5,a3
   110fa:	f2f42623          	sw	a5,-212(s0)
   110fe:	f2842783          	lw	a5,-216(s0)
   11102:	f2c42803          	lw	a6,-212(s0)
   11106:	f8f42423          	sw	a5,-120(s0)
   1110a:	f9042623          	sw	a6,-116(s0)
   1110e:	f8842303          	lw	t1,-120(s0)
   11112:	f8c42383          	lw	t2,-116(s0)
   11116:	471d                	li	a4,7
   11118:	4781                	li	a5,0
   1111a:	f6042603          	lw	a2,-160(s0)
   1111e:	f6442683          	lw	a3,-156(s0)
   11122:	40c70833          	sub	a6,a4,a2
   11126:	85c2                	mv	a1,a6
   11128:	00b735b3          	sltu	a1,a4,a1
   1112c:	40d788b3          	sub	a7,a5,a3
   11130:	40b887b3          	sub	a5,a7,a1
   11134:	88be                	mv	a7,a5
   11136:	8742                	mv	a4,a6
   11138:	87c6                	mv	a5,a7
   1113a:	87ba                	mv	a5,a4
   1113c:	00379693          	slli	a3,a5,0x3
   11140:	fe068713          	addi	a4,a3,-32
   11144:	00074863          	bltz	a4,11154 <crypto_aead_encrypt+0x3bc>
   11148:	08000793          	li	a5,128
   1114c:	00e799b3          	sll	s3,a5,a4
   11150:	4901                	li	s2,0
   11152:	a015                	j	11176 <crypto_aead_encrypt+0x3de>
   11154:	08000793          	li	a5,128
   11158:	0017d713          	srli	a4,a5,0x1
   1115c:	47fd                	li	a5,31
   1115e:	8f95                	sub	a5,a5,a3
   11160:	00f75733          	srl	a4,a4,a5
   11164:	4781                	li	a5,0
   11166:	00d799b3          	sll	s3,a5,a3
   1116a:	013769b3          	or	s3,a4,s3
   1116e:	08000793          	li	a5,128
   11172:	00d79933          	sll	s2,a5,a3
   11176:	012347b3          	xor	a5,t1,s2
   1117a:	f2f42023          	sw	a5,-224(s0)
   1117e:	0133c7b3          	xor	a5,t2,s3
   11182:	f2f42223          	sw	a5,-220(s0)
   11186:	f2042783          	lw	a5,-224(s0)
   1118a:	f2442803          	lw	a6,-220(s0)
   1118e:	f8f42423          	sw	a5,-120(s0)
   11192:	f9042623          	sw	a6,-116(s0)
   11196:	f8840793          	addi	a5,s0,-120
   1119a:	853e                	mv	a0,a5
   1119c:	32c9                	jal	10b5e <P8>
   1119e:	fa842703          	lw	a4,-88(s0)
   111a2:	fac42783          	lw	a5,-84(s0)
   111a6:	00174693          	xori	a3,a4,1
   111aa:	f0d42c23          	sw	a3,-232(s0)
   111ae:	0007c793          	xori	a5,a5,0
   111b2:	f0f42e23          	sw	a5,-228(s0)
   111b6:	f1842783          	lw	a5,-232(s0)
   111ba:	f1c42803          	lw	a6,-228(s0)
   111be:	faf42423          	sw	a5,-88(s0)
   111c2:	fb042623          	sw	a6,-84(s0)
   111c6:	a8e9                	j	112a0 <crypto_aead_encrypt+0x508>
   111c8:	45a1                	li	a1,8
   111ca:	f7442503          	lw	a0,-140(s0)
   111ce:	3add                	jal	10bc4 <LOADBYTES>
   111d0:	862a                	mv	a2,a0
   111d2:	86ae                	mv	a3,a1
   111d4:	f8842703          	lw	a4,-120(s0)
   111d8:	f8c42783          	lw	a5,-116(s0)
   111dc:	00e645b3          	xor	a1,a2,a4
   111e0:	f0b42823          	sw	a1,-240(s0)
   111e4:	8fb5                	xor	a5,a5,a3
   111e6:	f0f42a23          	sw	a5,-236(s0)
   111ea:	f1042783          	lw	a5,-240(s0)
   111ee:	f1442803          	lw	a6,-236(s0)
   111f2:	f8f42423          	sw	a5,-120(s0)
   111f6:	f9042623          	sw	a6,-116(s0)
   111fa:	f7442783          	lw	a5,-140(s0)
   111fe:	07a1                	addi	a5,a5,8
   11200:	45a1                	li	a1,8
   11202:	853e                	mv	a0,a5
   11204:	32c1                	jal	10bc4 <LOADBYTES>
   11206:	862a                	mv	a2,a0
   11208:	86ae                	mv	a3,a1
   1120a:	f9042703          	lw	a4,-112(s0)
   1120e:	f9442783          	lw	a5,-108(s0)
   11212:	00e645b3          	xor	a1,a2,a4
   11216:	f0b42423          	sw	a1,-248(s0)
   1121a:	8fb5                	xor	a5,a5,a3
   1121c:	f0f42623          	sw	a5,-244(s0)
   11220:	f0842783          	lw	a5,-248(s0)
   11224:	f0c42803          	lw	a6,-244(s0)
   11228:	f8f42823          	sw	a5,-112(s0)
   1122c:	f9042a23          	sw	a6,-108(s0)
   11230:	f8842703          	lw	a4,-120(s0)
   11234:	f8c42783          	lw	a5,-116(s0)
   11238:	46a1                	li	a3,8
   1123a:	85ba                	mv	a1,a4
   1123c:	863e                	mv	a2,a5
   1123e:	f7c42503          	lw	a0,-132(s0)
   11242:	341d                	jal	10c68 <STOREBYTES>
   11244:	f7c42783          	lw	a5,-132(s0)
   11248:	00878513          	addi	a0,a5,8
   1124c:	f9042703          	lw	a4,-112(s0)
   11250:	f9442783          	lw	a5,-108(s0)
   11254:	46a1                	li	a3,8
   11256:	85ba                	mv	a1,a4
   11258:	863e                	mv	a2,a5
   1125a:	3439                	jal	10c68 <STOREBYTES>
   1125c:	f8840793          	addi	a5,s0,-120
   11260:	853e                	mv	a0,a5
   11262:	38f5                	jal	10b5e <P8>
   11264:	f7442783          	lw	a5,-140(s0)
   11268:	07c1                	addi	a5,a5,16
   1126a:	f6f42a23          	sw	a5,-140(s0)
   1126e:	f7c42783          	lw	a5,-132(s0)
   11272:	07c1                	addi	a5,a5,16
   11274:	f6f42e23          	sw	a5,-132(s0)
   11278:	f6842703          	lw	a4,-152(s0)
   1127c:	f6c42783          	lw	a5,-148(s0)
   11280:	5641                	li	a2,-16
   11282:	56fd                	li	a3,-1
   11284:	00c70533          	add	a0,a4,a2
   11288:	882a                	mv	a6,a0
   1128a:	00e83833          	sltu	a6,a6,a4
   1128e:	00d785b3          	add	a1,a5,a3
   11292:	00b807b3          	add	a5,a6,a1
   11296:	85be                	mv	a1,a5
   11298:	f6a42423          	sw	a0,-152(s0)
   1129c:	f6b42623          	sw	a1,-148(s0)
   112a0:	f6c42783          	lw	a5,-148(s0)
   112a4:	f395                	bnez	a5,111c8 <crypto_aead_encrypt+0x430>
   112a6:	f6c42783          	lw	a5,-148(s0)
   112aa:	e791                	bnez	a5,112b6 <crypto_aead_encrypt+0x51e>
   112ac:	f6842703          	lw	a4,-152(s0)
   112b0:	47bd                	li	a5,15
   112b2:	f0e7ebe3          	bltu	a5,a4,111c8 <crypto_aead_encrypt+0x430>
   112b6:	f6c42783          	lw	a5,-148(s0)
   112ba:	eb91                	bnez	a5,112ce <crypto_aead_encrypt+0x536>
   112bc:	f6c42783          	lw	a5,-148(s0)
   112c0:	12079b63          	bnez	a5,113f6 <crypto_aead_encrypt+0x65e>
   112c4:	f6842703          	lw	a4,-152(s0)
   112c8:	479d                	li	a5,7
   112ca:	12e7f663          	bgeu	a5,a4,113f6 <crypto_aead_encrypt+0x65e>
   112ce:	45a1                	li	a1,8
   112d0:	f7442503          	lw	a0,-140(s0)
   112d4:	38c5                	jal	10bc4 <LOADBYTES>
   112d6:	862a                	mv	a2,a0
   112d8:	86ae                	mv	a3,a1
   112da:	f8842703          	lw	a4,-120(s0)
   112de:	f8c42783          	lw	a5,-116(s0)
   112e2:	00e645b3          	xor	a1,a2,a4
   112e6:	f0b42023          	sw	a1,-256(s0)
   112ea:	8fb5                	xor	a5,a5,a3
   112ec:	f0f42223          	sw	a5,-252(s0)
   112f0:	f0042783          	lw	a5,-256(s0)
   112f4:	f0442803          	lw	a6,-252(s0)
   112f8:	f8f42423          	sw	a5,-120(s0)
   112fc:	f9042623          	sw	a6,-116(s0)
   11300:	f7442783          	lw	a5,-140(s0)
   11304:	00878713          	addi	a4,a5,8
   11308:	f6842783          	lw	a5,-152(s0)
   1130c:	17e1                	addi	a5,a5,-8
   1130e:	85be                	mv	a1,a5
   11310:	853a                	mv	a0,a4
   11312:	384d                	jal	10bc4 <LOADBYTES>
   11314:	862a                	mv	a2,a0
   11316:	86ae                	mv	a3,a1
   11318:	f9042703          	lw	a4,-112(s0)
   1131c:	f9442783          	lw	a5,-108(s0)
   11320:	00e645b3          	xor	a1,a2,a4
   11324:	eeb42c23          	sw	a1,-264(s0)
   11328:	8fb5                	xor	a5,a5,a3
   1132a:	eef42e23          	sw	a5,-260(s0)
   1132e:	ef842783          	lw	a5,-264(s0)
   11332:	efc42803          	lw	a6,-260(s0)
   11336:	f8f42823          	sw	a5,-112(s0)
   1133a:	f9042a23          	sw	a6,-108(s0)
   1133e:	f8842703          	lw	a4,-120(s0)
   11342:	f8c42783          	lw	a5,-116(s0)
   11346:	46a1                	li	a3,8
   11348:	85ba                	mv	a1,a4
   1134a:	863e                	mv	a2,a5
   1134c:	f7c42503          	lw	a0,-132(s0)
   11350:	3a21                	jal	10c68 <STOREBYTES>
   11352:	f7c42783          	lw	a5,-132(s0)
   11356:	00878513          	addi	a0,a5,8
   1135a:	f9042703          	lw	a4,-112(s0)
   1135e:	f9442783          	lw	a5,-108(s0)
   11362:	f6842683          	lw	a3,-152(s0)
   11366:	16e1                	addi	a3,a3,-8
   11368:	85ba                	mv	a1,a4
   1136a:	863e                	mv	a2,a5
   1136c:	38f5                	jal	10c68 <STOREBYTES>
   1136e:	f9042503          	lw	a0,-112(s0)
   11372:	f9442583          	lw	a1,-108(s0)
   11376:	473d                	li	a4,15
   11378:	4781                	li	a5,0
   1137a:	f6842803          	lw	a6,-152(s0)
   1137e:	f6c42883          	lw	a7,-148(s0)
   11382:	41070633          	sub	a2,a4,a6
   11386:	8332                	mv	t1,a2
   11388:	00673333          	sltu	t1,a4,t1
   1138c:	411786b3          	sub	a3,a5,a7
   11390:	406687b3          	sub	a5,a3,t1
   11394:	86be                	mv	a3,a5
   11396:	8732                	mv	a4,a2
   11398:	87b6                	mv	a5,a3
   1139a:	87ba                	mv	a5,a4
   1139c:	078e                	slli	a5,a5,0x3
   1139e:	fe078713          	addi	a4,a5,-32
   113a2:	00074863          	bltz	a4,113b2 <crypto_aead_encrypt+0x61a>
   113a6:	08000793          	li	a5,128
   113aa:	00e79cb3          	sll	s9,a5,a4
   113ae:	4c01                	li	s8,0
   113b0:	a015                	j	113d4 <crypto_aead_encrypt+0x63c>
   113b2:	08000713          	li	a4,128
   113b6:	00175693          	srli	a3,a4,0x1
   113ba:	477d                	li	a4,31
   113bc:	8f1d                	sub	a4,a4,a5
   113be:	00e6d733          	srl	a4,a3,a4
   113c2:	4681                	li	a3,0
   113c4:	00f69cb3          	sll	s9,a3,a5
   113c8:	01976cb3          	or	s9,a4,s9
   113cc:	08000713          	li	a4,128
   113d0:	00f71c33          	sll	s8,a4,a5
   113d4:	018547b3          	xor	a5,a0,s8
   113d8:	eef42823          	sw	a5,-272(s0)
   113dc:	0195c7b3          	xor	a5,a1,s9
   113e0:	eef42a23          	sw	a5,-268(s0)
   113e4:	ef042783          	lw	a5,-272(s0)
   113e8:	ef442803          	lw	a6,-268(s0)
   113ec:	f8f42823          	sw	a5,-112(s0)
   113f0:	f9042a23          	sw	a6,-108(s0)
   113f4:	a8e1                	j	114cc <crypto_aead_encrypt+0x734>
   113f6:	f6842783          	lw	a5,-152(s0)
   113fa:	85be                	mv	a1,a5
   113fc:	f7442503          	lw	a0,-140(s0)
   11400:	fc4ff0ef          	jal	10bc4 <LOADBYTES>
   11404:	862a                	mv	a2,a0
   11406:	86ae                	mv	a3,a1
   11408:	f8842703          	lw	a4,-120(s0)
   1140c:	f8c42783          	lw	a5,-116(s0)
   11410:	00e645b3          	xor	a1,a2,a4
   11414:	eeb42423          	sw	a1,-280(s0)
   11418:	8fb5                	xor	a5,a5,a3
   1141a:	eef42623          	sw	a5,-276(s0)
   1141e:	ee842783          	lw	a5,-280(s0)
   11422:	eec42803          	lw	a6,-276(s0)
   11426:	f8f42423          	sw	a5,-120(s0)
   1142a:	f9042623          	sw	a6,-116(s0)
   1142e:	f8842703          	lw	a4,-120(s0)
   11432:	f8c42783          	lw	a5,-116(s0)
   11436:	f6842683          	lw	a3,-152(s0)
   1143a:	85ba                	mv	a1,a4
   1143c:	863e                	mv	a2,a5
   1143e:	f7c42503          	lw	a0,-132(s0)
   11442:	827ff0ef          	jal	10c68 <STOREBYTES>
   11446:	f8842503          	lw	a0,-120(s0)
   1144a:	f8c42583          	lw	a1,-116(s0)
   1144e:	471d                	li	a4,7
   11450:	4781                	li	a5,0
   11452:	f6842803          	lw	a6,-152(s0)
   11456:	f6c42883          	lw	a7,-148(s0)
   1145a:	41070633          	sub	a2,a4,a6
   1145e:	8332                	mv	t1,a2
   11460:	00673333          	sltu	t1,a4,t1
   11464:	411786b3          	sub	a3,a5,a7
   11468:	406687b3          	sub	a5,a3,t1
   1146c:	86be                	mv	a3,a5
   1146e:	8732                	mv	a4,a2
   11470:	87b6                	mv	a5,a3
   11472:	87ba                	mv	a5,a4
   11474:	078e                	slli	a5,a5,0x3
   11476:	fe078713          	addi	a4,a5,-32
   1147a:	00074863          	bltz	a4,1148a <crypto_aead_encrypt+0x6f2>
   1147e:	08000793          	li	a5,128
   11482:	00e79bb3          	sll	s7,a5,a4
   11486:	4b01                	li	s6,0
   11488:	a015                	j	114ac <crypto_aead_encrypt+0x714>
   1148a:	08000713          	li	a4,128
   1148e:	00175693          	srli	a3,a4,0x1
   11492:	477d                	li	a4,31
   11494:	8f1d                	sub	a4,a4,a5
   11496:	00e6d733          	srl	a4,a3,a4
   1149a:	4681                	li	a3,0
   1149c:	00f69bb3          	sll	s7,a3,a5
   114a0:	01776bb3          	or	s7,a4,s7
   114a4:	08000713          	li	a4,128
   114a8:	00f71b33          	sll	s6,a4,a5
   114ac:	016547b3          	xor	a5,a0,s6
   114b0:	eef42023          	sw	a5,-288(s0)
   114b4:	0175c7b3          	xor	a5,a1,s7
   114b8:	eef42223          	sw	a5,-284(s0)
   114bc:	ee042783          	lw	a5,-288(s0)
   114c0:	ee442803          	lw	a6,-284(s0)
   114c4:	f8f42423          	sw	a5,-120(s0)
   114c8:	f9042623          	sw	a6,-116(s0)
   114cc:	f6842783          	lw	a5,-152(s0)
   114d0:	f7c42703          	lw	a4,-132(s0)
   114d4:	97ba                	add	a5,a5,a4
   114d6:	f6f42e23          	sw	a5,-132(s0)
   114da:	f9842703          	lw	a4,-104(s0)
   114de:	f9c42783          	lw	a5,-100(s0)
   114e2:	fc842683          	lw	a3,-56(s0)
   114e6:	8eb9                	xor	a3,a3,a4
   114e8:	ecd42c23          	sw	a3,-296(s0)
   114ec:	fcc42683          	lw	a3,-52(s0)
   114f0:	8fb5                	xor	a5,a5,a3
   114f2:	ecf42e23          	sw	a5,-292(s0)
   114f6:	ed842783          	lw	a5,-296(s0)
   114fa:	edc42803          	lw	a6,-292(s0)
   114fe:	f8f42c23          	sw	a5,-104(s0)
   11502:	f9042e23          	sw	a6,-100(s0)
   11506:	fa042703          	lw	a4,-96(s0)
   1150a:	fa442783          	lw	a5,-92(s0)
   1150e:	fc042683          	lw	a3,-64(s0)
   11512:	8eb9                	xor	a3,a3,a4
   11514:	ecd42823          	sw	a3,-304(s0)
   11518:	fc442683          	lw	a3,-60(s0)
   1151c:	8fb5                	xor	a5,a5,a3
   1151e:	ecf42a23          	sw	a5,-300(s0)
   11522:	ed042783          	lw	a5,-304(s0)
   11526:	ed442803          	lw	a6,-300(s0)
   1152a:	faf42023          	sw	a5,-96(s0)
   1152e:	fb042223          	sw	a6,-92(s0)
   11532:	f8840793          	addi	a5,s0,-120
   11536:	853e                	mv	a0,a5
   11538:	d98ff0ef          	jal	10ad0 <P12>
   1153c:	fa042703          	lw	a4,-96(s0)
   11540:	fa442783          	lw	a5,-92(s0)
   11544:	fc842683          	lw	a3,-56(s0)
   11548:	8eb9                	xor	a3,a3,a4
   1154a:	ecd42423          	sw	a3,-312(s0)
   1154e:	fcc42683          	lw	a3,-52(s0)
   11552:	8fb5                	xor	a5,a5,a3
   11554:	ecf42623          	sw	a5,-308(s0)
   11558:	ec842783          	lw	a5,-312(s0)
   1155c:	ecc42803          	lw	a6,-308(s0)
   11560:	faf42023          	sw	a5,-96(s0)
   11564:	fb042223          	sw	a6,-92(s0)
   11568:	fa842703          	lw	a4,-88(s0)
   1156c:	fac42783          	lw	a5,-84(s0)
   11570:	fc042683          	lw	a3,-64(s0)
   11574:	8eb9                	xor	a3,a3,a4
   11576:	ecd42023          	sw	a3,-320(s0)
   1157a:	fc442683          	lw	a3,-60(s0)
   1157e:	8fb5                	xor	a5,a5,a3
   11580:	ecf42223          	sw	a5,-316(s0)
   11584:	ec042783          	lw	a5,-320(s0)
   11588:	ec442803          	lw	a6,-316(s0)
   1158c:	faf42423          	sw	a5,-88(s0)
   11590:	fb042623          	sw	a6,-84(s0)
   11594:	fa042703          	lw	a4,-96(s0)
   11598:	fa442783          	lw	a5,-92(s0)
   1159c:	46a1                	li	a3,8
   1159e:	85ba                	mv	a1,a4
   115a0:	863e                	mv	a2,a5
   115a2:	f7c42503          	lw	a0,-132(s0)
   115a6:	ec2ff0ef          	jal	10c68 <STOREBYTES>
   115aa:	f7c42783          	lw	a5,-132(s0)
   115ae:	00878513          	addi	a0,a5,8
   115b2:	fa842703          	lw	a4,-88(s0)
   115b6:	fac42783          	lw	a5,-84(s0)
   115ba:	46a1                	li	a3,8
   115bc:	85ba                	mv	a1,a4
   115be:	863e                	mv	a2,a5
   115c0:	ea8ff0ef          	jal	10c68 <STOREBYTES>
   115c4:	4781                	li	a5,0
   115c6:	853e                	mv	a0,a5
   115c8:	13c12083          	lw	ra,316(sp)
   115cc:	13812403          	lw	s0,312(sp)
   115d0:	13412903          	lw	s2,308(sp)
   115d4:	13012983          	lw	s3,304(sp)
   115d8:	12c12a03          	lw	s4,300(sp)
   115dc:	12812a83          	lw	s5,296(sp)
   115e0:	12412b03          	lw	s6,292(sp)
   115e4:	12012b83          	lw	s7,288(sp)
   115e8:	11c12c03          	lw	s8,284(sp)
   115ec:	11812c83          	lw	s9,280(sp)
   115f0:	11412d03          	lw	s10,276(sp)
   115f4:	11012d83          	lw	s11,272(sp)
   115f8:	6131                	addi	sp,sp,320
   115fa:	8082                	ret

000115fc <crypto_aead_decrypt>:
   115fc:	7125                	addi	sp,sp,-416
   115fe:	18112623          	sw	ra,396(sp)
   11602:	18812423          	sw	s0,392(sp)
   11606:	19212223          	sw	s2,388(sp)
   1160a:	19312023          	sw	s3,384(sp)
   1160e:	17412e23          	sw	s4,380(sp)
   11612:	17512c23          	sw	s5,376(sp)
   11616:	17612a23          	sw	s6,372(sp)
   1161a:	17712823          	sw	s7,368(sp)
   1161e:	17812623          	sw	s8,364(sp)
   11622:	17912423          	sw	s9,360(sp)
   11626:	17a12223          	sw	s10,356(sp)
   1162a:	17b12023          	sw	s11,352(sp)
   1162e:	0b00                	addi	s0,sp,400
   11630:	f2a42e23          	sw	a0,-196(s0)
   11634:	f2b42c23          	sw	a1,-200(s0)
   11638:	f2c42a23          	sw	a2,-204(s0)
   1163c:	f2d42823          	sw	a3,-208(s0)
   11640:	f2e42423          	sw	a4,-216(s0)
   11644:	f2f42623          	sw	a5,-212(s0)
   11648:	f3042223          	sw	a6,-220(s0)
   1164c:	01142623          	sw	a7,12(s0)
   11650:	f2c42783          	lw	a5,-212(s0)
   11654:	ef81                	bnez	a5,1166c <crypto_aead_decrypt+0x70>
   11656:	f2c42783          	lw	a5,-212(s0)
   1165a:	e791                	bnez	a5,11666 <crypto_aead_decrypt+0x6a>
   1165c:	f2842703          	lw	a4,-216(s0)
   11660:	47bd                	li	a5,15
   11662:	00e7e563          	bltu	a5,a4,1166c <crypto_aead_decrypt+0x70>
   11666:	57fd                	li	a5,-1
   11668:	1110006f          	j	11f78 <crypto_aead_decrypt+0x97c>
   1166c:	f2842703          	lw	a4,-216(s0)
   11670:	f2c42783          	lw	a5,-212(s0)
   11674:	5641                	li	a2,-16
   11676:	56fd                	li	a3,-1
   11678:	00c70833          	add	a6,a4,a2
   1167c:	85c2                	mv	a1,a6
   1167e:	00e5b5b3          	sltu	a1,a1,a4
   11682:	00d788b3          	add	a7,a5,a3
   11686:	011587b3          	add	a5,a1,a7
   1168a:	88be                	mv	a7,a5
   1168c:	8642                	mv	a2,a6
   1168e:	86c6                	mv	a3,a7
   11690:	f3842783          	lw	a5,-200(s0)
   11694:	c390                	sw	a2,0(a5)
   11696:	c3d4                	sw	a3,4(a5)
   11698:	45a1                	li	a1,8
   1169a:	4c08                	lw	a0,24(s0)
   1169c:	d28ff0ef          	jal	10bc4 <LOADBYTES>
   116a0:	fca42023          	sw	a0,-64(s0)
   116a4:	fcb42223          	sw	a1,-60(s0)
   116a8:	4c1c                	lw	a5,24(s0)
   116aa:	07a1                	addi	a5,a5,8
   116ac:	45a1                	li	a1,8
   116ae:	853e                	mv	a0,a5
   116b0:	d14ff0ef          	jal	10bc4 <LOADBYTES>
   116b4:	faa42c23          	sw	a0,-72(s0)
   116b8:	fab42e23          	sw	a1,-68(s0)
   116bc:	45a1                	li	a1,8
   116be:	4848                	lw	a0,20(s0)
   116c0:	d04ff0ef          	jal	10bc4 <LOADBYTES>
   116c4:	faa42823          	sw	a0,-80(s0)
   116c8:	fab42a23          	sw	a1,-76(s0)
   116cc:	485c                	lw	a5,20(s0)
   116ce:	07a1                	addi	a5,a5,8
   116d0:	45a1                	li	a1,8
   116d2:	853e                	mv	a0,a5
   116d4:	cf0ff0ef          	jal	10bc4 <LOADBYTES>
   116d8:	faa42423          	sw	a0,-88(s0)
   116dc:	fab42623          	sw	a1,-84(s0)
   116e0:	4701                	li	a4,0
   116e2:	808017b7          	lui	a5,0x80801
   116e6:	c0878793          	addi	a5,a5,-1016 # 80800c08 <__BSS_END__+0x807e2c74>
   116ea:	f4e42c23          	sw	a4,-168(s0)
   116ee:	f4f42e23          	sw	a5,-164(s0)
   116f2:	fc042703          	lw	a4,-64(s0)
   116f6:	fc442783          	lw	a5,-60(s0)
   116fa:	f6e42023          	sw	a4,-160(s0)
   116fe:	f6f42223          	sw	a5,-156(s0)
   11702:	fb842703          	lw	a4,-72(s0)
   11706:	fbc42783          	lw	a5,-68(s0)
   1170a:	f6e42423          	sw	a4,-152(s0)
   1170e:	f6f42623          	sw	a5,-148(s0)
   11712:	fb042703          	lw	a4,-80(s0)
   11716:	fb442783          	lw	a5,-76(s0)
   1171a:	f6e42823          	sw	a4,-144(s0)
   1171e:	f6f42a23          	sw	a5,-140(s0)
   11722:	fa842703          	lw	a4,-88(s0)
   11726:	fac42783          	lw	a5,-84(s0)
   1172a:	f6e42c23          	sw	a4,-136(s0)
   1172e:	f6f42e23          	sw	a5,-132(s0)
   11732:	f5840793          	addi	a5,s0,-168
   11736:	853e                	mv	a0,a5
   11738:	b98ff0ef          	jal	10ad0 <P12>
   1173c:	f7042703          	lw	a4,-144(s0)
   11740:	f7442783          	lw	a5,-140(s0)
   11744:	fc042683          	lw	a3,-64(s0)
   11748:	00e6cd33          	xor	s10,a3,a4
   1174c:	fc442683          	lw	a3,-60(s0)
   11750:	00f6cdb3          	xor	s11,a3,a5
   11754:	f7a42823          	sw	s10,-144(s0)
   11758:	f7b42a23          	sw	s11,-140(s0)
   1175c:	f7842703          	lw	a4,-136(s0)
   11760:	f7c42783          	lw	a5,-132(s0)
   11764:	fb842683          	lw	a3,-72(s0)
   11768:	8eb9                	xor	a3,a3,a4
   1176a:	f0d42c23          	sw	a3,-232(s0)
   1176e:	fbc42683          	lw	a3,-68(s0)
   11772:	8fb5                	xor	a5,a5,a3
   11774:	f0f42e23          	sw	a5,-228(s0)
   11778:	f1842783          	lw	a5,-232(s0)
   1177c:	f1c42803          	lw	a6,-228(s0)
   11780:	f6f42c23          	sw	a5,-136(s0)
   11784:	f7042e23          	sw	a6,-132(s0)
   11788:	4458                	lw	a4,12(s0)
   1178a:	481c                	lw	a5,16(s0)
   1178c:	8f5d                	or	a4,a4,a5
   1178e:	28070463          	beqz	a4,11a16 <crypto_aead_decrypt+0x41a>
   11792:	a05d                	j	11838 <crypto_aead_decrypt+0x23c>
   11794:	45a1                	li	a1,8
   11796:	f2442503          	lw	a0,-220(s0)
   1179a:	c2aff0ef          	jal	10bc4 <LOADBYTES>
   1179e:	862a                	mv	a2,a0
   117a0:	86ae                	mv	a3,a1
   117a2:	f5842703          	lw	a4,-168(s0)
   117a6:	f5c42783          	lw	a5,-164(s0)
   117aa:	00e645b3          	xor	a1,a2,a4
   117ae:	f0b42823          	sw	a1,-240(s0)
   117b2:	8fb5                	xor	a5,a5,a3
   117b4:	f0f42a23          	sw	a5,-236(s0)
   117b8:	f1042783          	lw	a5,-240(s0)
   117bc:	f1442803          	lw	a6,-236(s0)
   117c0:	f4f42c23          	sw	a5,-168(s0)
   117c4:	f5042e23          	sw	a6,-164(s0)
   117c8:	f2442783          	lw	a5,-220(s0)
   117cc:	07a1                	addi	a5,a5,8
   117ce:	45a1                	li	a1,8
   117d0:	853e                	mv	a0,a5
   117d2:	bf2ff0ef          	jal	10bc4 <LOADBYTES>
   117d6:	862a                	mv	a2,a0
   117d8:	86ae                	mv	a3,a1
   117da:	f6042703          	lw	a4,-160(s0)
   117de:	f6442783          	lw	a5,-156(s0)
   117e2:	00e645b3          	xor	a1,a2,a4
   117e6:	f0b42423          	sw	a1,-248(s0)
   117ea:	8fb5                	xor	a5,a5,a3
   117ec:	f0f42623          	sw	a5,-244(s0)
   117f0:	f0842783          	lw	a5,-248(s0)
   117f4:	f0c42803          	lw	a6,-244(s0)
   117f8:	f6f42023          	sw	a5,-160(s0)
   117fc:	f7042223          	sw	a6,-156(s0)
   11800:	f5840793          	addi	a5,s0,-168
   11804:	853e                	mv	a0,a5
   11806:	b58ff0ef          	jal	10b5e <P8>
   1180a:	f2442783          	lw	a5,-220(s0)
   1180e:	07c1                	addi	a5,a5,16
   11810:	f2f42223          	sw	a5,-220(s0)
   11814:	4458                	lw	a4,12(s0)
   11816:	481c                	lw	a5,16(s0)
   11818:	5641                	li	a2,-16
   1181a:	56fd                	li	a3,-1
   1181c:	00c70833          	add	a6,a4,a2
   11820:	85c2                	mv	a1,a6
   11822:	00e5b5b3          	sltu	a1,a1,a4
   11826:	00d788b3          	add	a7,a5,a3
   1182a:	011587b3          	add	a5,a1,a7
   1182e:	88be                	mv	a7,a5
   11830:	01042623          	sw	a6,12(s0)
   11834:	01142823          	sw	a7,16(s0)
   11838:	481c                	lw	a5,16(s0)
   1183a:	ffa9                	bnez	a5,11794 <crypto_aead_decrypt+0x198>
   1183c:	481c                	lw	a5,16(s0)
   1183e:	e789                	bnez	a5,11848 <crypto_aead_decrypt+0x24c>
   11840:	4458                	lw	a4,12(s0)
   11842:	47bd                	li	a5,15
   11844:	f4e7e8e3          	bltu	a5,a4,11794 <crypto_aead_decrypt+0x198>
   11848:	481c                	lw	a5,16(s0)
   1184a:	eb81                	bnez	a5,1185a <crypto_aead_decrypt+0x25e>
   1184c:	481c                	lw	a5,16(s0)
   1184e:	10079263          	bnez	a5,11952 <crypto_aead_decrypt+0x356>
   11852:	4458                	lw	a4,12(s0)
   11854:	479d                	li	a5,7
   11856:	0ee7fe63          	bgeu	a5,a4,11952 <crypto_aead_decrypt+0x356>
   1185a:	45a1                	li	a1,8
   1185c:	f2442503          	lw	a0,-220(s0)
   11860:	b64ff0ef          	jal	10bc4 <LOADBYTES>
   11864:	862a                	mv	a2,a0
   11866:	86ae                	mv	a3,a1
   11868:	f5842703          	lw	a4,-168(s0)
   1186c:	f5c42783          	lw	a5,-164(s0)
   11870:	00e645b3          	xor	a1,a2,a4
   11874:	f0b42023          	sw	a1,-256(s0)
   11878:	8fb5                	xor	a5,a5,a3
   1187a:	f0f42223          	sw	a5,-252(s0)
   1187e:	f0042783          	lw	a5,-256(s0)
   11882:	f0442803          	lw	a6,-252(s0)
   11886:	f4f42c23          	sw	a5,-168(s0)
   1188a:	f5042e23          	sw	a6,-164(s0)
   1188e:	f2442783          	lw	a5,-220(s0)
   11892:	00878713          	addi	a4,a5,8
   11896:	445c                	lw	a5,12(s0)
   11898:	17e1                	addi	a5,a5,-8
   1189a:	85be                	mv	a1,a5
   1189c:	853a                	mv	a0,a4
   1189e:	b26ff0ef          	jal	10bc4 <LOADBYTES>
   118a2:	862a                	mv	a2,a0
   118a4:	86ae                	mv	a3,a1
   118a6:	f6042703          	lw	a4,-160(s0)
   118aa:	f6442783          	lw	a5,-156(s0)
   118ae:	00e645b3          	xor	a1,a2,a4
   118b2:	eeb42c23          	sw	a1,-264(s0)
   118b6:	8fb5                	xor	a5,a5,a3
   118b8:	eef42e23          	sw	a5,-260(s0)
   118bc:	ef842783          	lw	a5,-264(s0)
   118c0:	efc42803          	lw	a6,-260(s0)
   118c4:	f6f42023          	sw	a5,-160(s0)
   118c8:	f7042223          	sw	a6,-156(s0)
   118cc:	f6042303          	lw	t1,-160(s0)
   118d0:	f6442383          	lw	t2,-156(s0)
   118d4:	473d                	li	a4,15
   118d6:	4781                	li	a5,0
   118d8:	4450                	lw	a2,12(s0)
   118da:	4814                	lw	a3,16(s0)
   118dc:	40c70833          	sub	a6,a4,a2
   118e0:	85c2                	mv	a1,a6
   118e2:	00b735b3          	sltu	a1,a4,a1
   118e6:	40d788b3          	sub	a7,a5,a3
   118ea:	40b887b3          	sub	a5,a7,a1
   118ee:	88be                	mv	a7,a5
   118f0:	8742                	mv	a4,a6
   118f2:	87c6                	mv	a5,a7
   118f4:	87ba                	mv	a5,a4
   118f6:	00379693          	slli	a3,a5,0x3
   118fa:	fe068713          	addi	a4,a3,-32
   118fe:	00074863          	bltz	a4,1190e <crypto_aead_decrypt+0x312>
   11902:	08000793          	li	a5,128
   11906:	00e79ab3          	sll	s5,a5,a4
   1190a:	4a01                	li	s4,0
   1190c:	a015                	j	11930 <crypto_aead_decrypt+0x334>
   1190e:	08000793          	li	a5,128
   11912:	0017d713          	srli	a4,a5,0x1
   11916:	47fd                	li	a5,31
   11918:	8f95                	sub	a5,a5,a3
   1191a:	00f75733          	srl	a4,a4,a5
   1191e:	4781                	li	a5,0
   11920:	00d79ab3          	sll	s5,a5,a3
   11924:	01576ab3          	or	s5,a4,s5
   11928:	08000793          	li	a5,128
   1192c:	00d79a33          	sll	s4,a5,a3
   11930:	014347b3          	xor	a5,t1,s4
   11934:	eef42823          	sw	a5,-272(s0)
   11938:	0153c7b3          	xor	a5,t2,s5
   1193c:	eef42a23          	sw	a5,-268(s0)
   11940:	ef042783          	lw	a5,-272(s0)
   11944:	ef442803          	lw	a6,-268(s0)
   11948:	f6f42023          	sw	a5,-160(s0)
   1194c:	f7042223          	sw	a6,-156(s0)
   11950:	a875                	j	11a0c <crypto_aead_decrypt+0x410>
   11952:	445c                	lw	a5,12(s0)
   11954:	85be                	mv	a1,a5
   11956:	f2442503          	lw	a0,-220(s0)
   1195a:	a6aff0ef          	jal	10bc4 <LOADBYTES>
   1195e:	862a                	mv	a2,a0
   11960:	86ae                	mv	a3,a1
   11962:	f5842703          	lw	a4,-168(s0)
   11966:	f5c42783          	lw	a5,-164(s0)
   1196a:	00e645b3          	xor	a1,a2,a4
   1196e:	eeb42423          	sw	a1,-280(s0)
   11972:	8fb5                	xor	a5,a5,a3
   11974:	eef42623          	sw	a5,-276(s0)
   11978:	ee842783          	lw	a5,-280(s0)
   1197c:	eec42803          	lw	a6,-276(s0)
   11980:	f4f42c23          	sw	a5,-168(s0)
   11984:	f5042e23          	sw	a6,-164(s0)
   11988:	f5842303          	lw	t1,-168(s0)
   1198c:	f5c42383          	lw	t2,-164(s0)
   11990:	471d                	li	a4,7
   11992:	4781                	li	a5,0
   11994:	4450                	lw	a2,12(s0)
   11996:	4814                	lw	a3,16(s0)
   11998:	40c70833          	sub	a6,a4,a2
   1199c:	85c2                	mv	a1,a6
   1199e:	00b735b3          	sltu	a1,a4,a1
   119a2:	40d788b3          	sub	a7,a5,a3
   119a6:	40b887b3          	sub	a5,a7,a1
   119aa:	88be                	mv	a7,a5
   119ac:	8742                	mv	a4,a6
   119ae:	87c6                	mv	a5,a7
   119b0:	87ba                	mv	a5,a4
   119b2:	00379693          	slli	a3,a5,0x3
   119b6:	fe068713          	addi	a4,a3,-32
   119ba:	00074863          	bltz	a4,119ca <crypto_aead_decrypt+0x3ce>
   119be:	08000793          	li	a5,128
   119c2:	00e799b3          	sll	s3,a5,a4
   119c6:	4901                	li	s2,0
   119c8:	a015                	j	119ec <crypto_aead_decrypt+0x3f0>
   119ca:	08000793          	li	a5,128
   119ce:	0017d713          	srli	a4,a5,0x1
   119d2:	47fd                	li	a5,31
   119d4:	8f95                	sub	a5,a5,a3
   119d6:	00f75733          	srl	a4,a4,a5
   119da:	4781                	li	a5,0
   119dc:	00d799b3          	sll	s3,a5,a3
   119e0:	013769b3          	or	s3,a4,s3
   119e4:	08000793          	li	a5,128
   119e8:	00d79933          	sll	s2,a5,a3
   119ec:	012347b3          	xor	a5,t1,s2
   119f0:	eef42023          	sw	a5,-288(s0)
   119f4:	0133c7b3          	xor	a5,t2,s3
   119f8:	eef42223          	sw	a5,-284(s0)
   119fc:	ee042783          	lw	a5,-288(s0)
   11a00:	ee442803          	lw	a6,-284(s0)
   11a04:	f4f42c23          	sw	a5,-168(s0)
   11a08:	f5042e23          	sw	a6,-164(s0)
   11a0c:	f5840793          	addi	a5,s0,-168
   11a10:	853e                	mv	a0,a5
   11a12:	94cff0ef          	jal	10b5e <P8>
   11a16:	f7842703          	lw	a4,-136(s0)
   11a1a:	f7c42783          	lw	a5,-132(s0)
   11a1e:	00174693          	xori	a3,a4,1
   11a22:	ecd42c23          	sw	a3,-296(s0)
   11a26:	0007c793          	xori	a5,a5,0
   11a2a:	ecf42e23          	sw	a5,-292(s0)
   11a2e:	ed842783          	lw	a5,-296(s0)
   11a32:	edc42803          	lw	a6,-292(s0)
   11a36:	f6f42c23          	sw	a5,-136(s0)
   11a3a:	f7042e23          	sw	a6,-132(s0)
   11a3e:	f2842703          	lw	a4,-216(s0)
   11a42:	f2c42783          	lw	a5,-212(s0)
   11a46:	5641                	li	a2,-16
   11a48:	56fd                	li	a3,-1
   11a4a:	00c70833          	add	a6,a4,a2
   11a4e:	85c2                	mv	a1,a6
   11a50:	00e5b5b3          	sltu	a1,a1,a4
   11a54:	00d788b3          	add	a7,a5,a3
   11a58:	011587b3          	add	a5,a1,a7
   11a5c:	88be                	mv	a7,a5
   11a5e:	f3042423          	sw	a6,-216(s0)
   11a62:	f3142623          	sw	a7,-212(s0)
   11a66:	a8c5                	j	11b56 <crypto_aead_decrypt+0x55a>
   11a68:	45a1                	li	a1,8
   11a6a:	f3042503          	lw	a0,-208(s0)
   11a6e:	956ff0ef          	jal	10bc4 <LOADBYTES>
   11a72:	f8a42423          	sw	a0,-120(s0)
   11a76:	f8b42623          	sw	a1,-116(s0)
   11a7a:	f3042783          	lw	a5,-208(s0)
   11a7e:	07a1                	addi	a5,a5,8
   11a80:	45a1                	li	a1,8
   11a82:	853e                	mv	a0,a5
   11a84:	940ff0ef          	jal	10bc4 <LOADBYTES>
   11a88:	f8a42023          	sw	a0,-128(s0)
   11a8c:	f8b42223          	sw	a1,-124(s0)
   11a90:	f5842703          	lw	a4,-168(s0)
   11a94:	f5c42783          	lw	a5,-164(s0)
   11a98:	f8842683          	lw	a3,-120(s0)
   11a9c:	8eb9                	xor	a3,a3,a4
   11a9e:	ecd42823          	sw	a3,-304(s0)
   11aa2:	f8c42683          	lw	a3,-116(s0)
   11aa6:	8fb5                	xor	a5,a5,a3
   11aa8:	ecf42a23          	sw	a5,-300(s0)
   11aac:	46a1                	li	a3,8
   11aae:	ed042583          	lw	a1,-304(s0)
   11ab2:	ed442603          	lw	a2,-300(s0)
   11ab6:	f3c42503          	lw	a0,-196(s0)
   11aba:	9aeff0ef          	jal	10c68 <STOREBYTES>
   11abe:	f3c42783          	lw	a5,-196(s0)
   11ac2:	00878513          	addi	a0,a5,8
   11ac6:	f6042703          	lw	a4,-160(s0)
   11aca:	f6442783          	lw	a5,-156(s0)
   11ace:	f8042683          	lw	a3,-128(s0)
   11ad2:	8eb9                	xor	a3,a3,a4
   11ad4:	ecd42423          	sw	a3,-312(s0)
   11ad8:	f8442683          	lw	a3,-124(s0)
   11adc:	8fb5                	xor	a5,a5,a3
   11ade:	ecf42623          	sw	a5,-308(s0)
   11ae2:	46a1                	li	a3,8
   11ae4:	ec842583          	lw	a1,-312(s0)
   11ae8:	ecc42603          	lw	a2,-308(s0)
   11aec:	97cff0ef          	jal	10c68 <STOREBYTES>
   11af0:	f8842703          	lw	a4,-120(s0)
   11af4:	f8c42783          	lw	a5,-116(s0)
   11af8:	f4e42c23          	sw	a4,-168(s0)
   11afc:	f4f42e23          	sw	a5,-164(s0)
   11b00:	f8042703          	lw	a4,-128(s0)
   11b04:	f8442783          	lw	a5,-124(s0)
   11b08:	f6e42023          	sw	a4,-160(s0)
   11b0c:	f6f42223          	sw	a5,-156(s0)
   11b10:	f5840793          	addi	a5,s0,-168
   11b14:	853e                	mv	a0,a5
   11b16:	848ff0ef          	jal	10b5e <P8>
   11b1a:	f3c42783          	lw	a5,-196(s0)
   11b1e:	07c1                	addi	a5,a5,16
   11b20:	f2f42e23          	sw	a5,-196(s0)
   11b24:	f3042783          	lw	a5,-208(s0)
   11b28:	07c1                	addi	a5,a5,16
   11b2a:	f2f42823          	sw	a5,-208(s0)
   11b2e:	f2842703          	lw	a4,-216(s0)
   11b32:	f2c42783          	lw	a5,-212(s0)
   11b36:	5641                	li	a2,-16
   11b38:	56fd                	li	a3,-1
   11b3a:	00c70833          	add	a6,a4,a2
   11b3e:	85c2                	mv	a1,a6
   11b40:	00e5b5b3          	sltu	a1,a1,a4
   11b44:	00d788b3          	add	a7,a5,a3
   11b48:	011587b3          	add	a5,a1,a7
   11b4c:	88be                	mv	a7,a5
   11b4e:	f3042423          	sw	a6,-216(s0)
   11b52:	f3142623          	sw	a7,-212(s0)
   11b56:	f2c42783          	lw	a5,-212(s0)
   11b5a:	f00797e3          	bnez	a5,11a68 <crypto_aead_decrypt+0x46c>
   11b5e:	f2c42783          	lw	a5,-212(s0)
   11b62:	e791                	bnez	a5,11b6e <crypto_aead_decrypt+0x572>
   11b64:	f2842703          	lw	a4,-216(s0)
   11b68:	47bd                	li	a5,15
   11b6a:	eee7efe3          	bltu	a5,a4,11a68 <crypto_aead_decrypt+0x46c>
   11b6e:	f2c42783          	lw	a5,-212(s0)
   11b72:	eb91                	bnez	a5,11b86 <crypto_aead_decrypt+0x58a>
   11b74:	f2c42783          	lw	a5,-212(s0)
   11b78:	18079663          	bnez	a5,11d04 <crypto_aead_decrypt+0x708>
   11b7c:	f2842703          	lw	a4,-216(s0)
   11b80:	479d                	li	a5,7
   11b82:	18e7f163          	bgeu	a5,a4,11d04 <crypto_aead_decrypt+0x708>
   11b86:	45a1                	li	a1,8
   11b88:	f3042503          	lw	a0,-208(s0)
   11b8c:	838ff0ef          	jal	10bc4 <LOADBYTES>
   11b90:	f8a42c23          	sw	a0,-104(s0)
   11b94:	f8b42e23          	sw	a1,-100(s0)
   11b98:	f3042783          	lw	a5,-208(s0)
   11b9c:	00878713          	addi	a4,a5,8
   11ba0:	f2842783          	lw	a5,-216(s0)
   11ba4:	17e1                	addi	a5,a5,-8
   11ba6:	85be                	mv	a1,a5
   11ba8:	853a                	mv	a0,a4
   11baa:	81aff0ef          	jal	10bc4 <LOADBYTES>
   11bae:	f8a42823          	sw	a0,-112(s0)
   11bb2:	f8b42a23          	sw	a1,-108(s0)
   11bb6:	f5842703          	lw	a4,-168(s0)
   11bba:	f5c42783          	lw	a5,-164(s0)
   11bbe:	f9842683          	lw	a3,-104(s0)
   11bc2:	8eb9                	xor	a3,a3,a4
   11bc4:	ecd42023          	sw	a3,-320(s0)
   11bc8:	f9c42683          	lw	a3,-100(s0)
   11bcc:	8fb5                	xor	a5,a5,a3
   11bce:	ecf42223          	sw	a5,-316(s0)
   11bd2:	46a1                	li	a3,8
   11bd4:	ec042583          	lw	a1,-320(s0)
   11bd8:	ec442603          	lw	a2,-316(s0)
   11bdc:	f3c42503          	lw	a0,-196(s0)
   11be0:	888ff0ef          	jal	10c68 <STOREBYTES>
   11be4:	f3c42783          	lw	a5,-196(s0)
   11be8:	00878513          	addi	a0,a5,8
   11bec:	f6042703          	lw	a4,-160(s0)
   11bf0:	f6442783          	lw	a5,-156(s0)
   11bf4:	f9042683          	lw	a3,-112(s0)
   11bf8:	8eb9                	xor	a3,a3,a4
   11bfa:	ead42c23          	sw	a3,-328(s0)
   11bfe:	f9442683          	lw	a3,-108(s0)
   11c02:	8fb5                	xor	a5,a5,a3
   11c04:	eaf42e23          	sw	a5,-324(s0)
   11c08:	f2842783          	lw	a5,-216(s0)
   11c0c:	17e1                	addi	a5,a5,-8
   11c0e:	86be                	mv	a3,a5
   11c10:	eb842583          	lw	a1,-328(s0)
   11c14:	ebc42603          	lw	a2,-324(s0)
   11c18:	850ff0ef          	jal	10c68 <STOREBYTES>
   11c1c:	f9842703          	lw	a4,-104(s0)
   11c20:	f9c42783          	lw	a5,-100(s0)
   11c24:	f4e42c23          	sw	a4,-168(s0)
   11c28:	f4f42e23          	sw	a5,-164(s0)
   11c2c:	f6042703          	lw	a4,-160(s0)
   11c30:	f6442783          	lw	a5,-156(s0)
   11c34:	f2842683          	lw	a3,-216(s0)
   11c38:	16e1                	addi	a3,a3,-8
   11c3a:	8636                	mv	a2,a3
   11c3c:	853a                	mv	a0,a4
   11c3e:	85be                	mv	a1,a5
   11c40:	8b8ff0ef          	jal	10cf8 <CLEARBYTES>
   11c44:	872a                	mv	a4,a0
   11c46:	87ae                	mv	a5,a1
   11c48:	f6e42023          	sw	a4,-160(s0)
   11c4c:	f6f42223          	sw	a5,-156(s0)
   11c50:	f6042703          	lw	a4,-160(s0)
   11c54:	f6442783          	lw	a5,-156(s0)
   11c58:	f9042683          	lw	a3,-112(s0)
   11c5c:	8ed9                	or	a3,a3,a4
   11c5e:	ead42823          	sw	a3,-336(s0)
   11c62:	f9442683          	lw	a3,-108(s0)
   11c66:	8fd5                	or	a5,a5,a3
   11c68:	eaf42a23          	sw	a5,-332(s0)
   11c6c:	eb042783          	lw	a5,-336(s0)
   11c70:	eb442803          	lw	a6,-332(s0)
   11c74:	f6f42023          	sw	a5,-160(s0)
   11c78:	f7042223          	sw	a6,-156(s0)
   11c7c:	f6042503          	lw	a0,-160(s0)
   11c80:	f6442583          	lw	a1,-156(s0)
   11c84:	473d                	li	a4,15
   11c86:	4781                	li	a5,0
   11c88:	f2842803          	lw	a6,-216(s0)
   11c8c:	f2c42883          	lw	a7,-212(s0)
   11c90:	41070633          	sub	a2,a4,a6
   11c94:	8332                	mv	t1,a2
   11c96:	00673333          	sltu	t1,a4,t1
   11c9a:	411786b3          	sub	a3,a5,a7
   11c9e:	406687b3          	sub	a5,a3,t1
   11ca2:	86be                	mv	a3,a5
   11ca4:	8732                	mv	a4,a2
   11ca6:	87b6                	mv	a5,a3
   11ca8:	87ba                	mv	a5,a4
   11caa:	078e                	slli	a5,a5,0x3
   11cac:	fe078713          	addi	a4,a5,-32
   11cb0:	00074863          	bltz	a4,11cc0 <crypto_aead_decrypt+0x6c4>
   11cb4:	08000793          	li	a5,128
   11cb8:	00e79cb3          	sll	s9,a5,a4
   11cbc:	4c01                	li	s8,0
   11cbe:	a015                	j	11ce2 <crypto_aead_decrypt+0x6e6>
   11cc0:	08000713          	li	a4,128
   11cc4:	00175693          	srli	a3,a4,0x1
   11cc8:	477d                	li	a4,31
   11cca:	8f1d                	sub	a4,a4,a5
   11ccc:	00e6d733          	srl	a4,a3,a4
   11cd0:	4681                	li	a3,0
   11cd2:	00f69cb3          	sll	s9,a3,a5
   11cd6:	01976cb3          	or	s9,a4,s9
   11cda:	08000713          	li	a4,128
   11cde:	00f71c33          	sll	s8,a4,a5
   11ce2:	018547b3          	xor	a5,a0,s8
   11ce6:	eaf42423          	sw	a5,-344(s0)
   11cea:	0195c7b3          	xor	a5,a1,s9
   11cee:	eaf42623          	sw	a5,-340(s0)
   11cf2:	ea842783          	lw	a5,-344(s0)
   11cf6:	eac42803          	lw	a6,-340(s0)
   11cfa:	f6f42023          	sw	a5,-160(s0)
   11cfe:	f7042223          	sw	a6,-156(s0)
   11d02:	aa39                	j	11e20 <crypto_aead_decrypt+0x824>
   11d04:	f2842783          	lw	a5,-216(s0)
   11d08:	85be                	mv	a1,a5
   11d0a:	f3042503          	lw	a0,-208(s0)
   11d0e:	eb7fe0ef          	jal	10bc4 <LOADBYTES>
   11d12:	faa42023          	sw	a0,-96(s0)
   11d16:	fab42223          	sw	a1,-92(s0)
   11d1a:	f5842703          	lw	a4,-168(s0)
   11d1e:	f5c42783          	lw	a5,-164(s0)
   11d22:	fa042683          	lw	a3,-96(s0)
   11d26:	8eb9                	xor	a3,a3,a4
   11d28:	ead42023          	sw	a3,-352(s0)
   11d2c:	fa442683          	lw	a3,-92(s0)
   11d30:	8fb5                	xor	a5,a5,a3
   11d32:	eaf42223          	sw	a5,-348(s0)
   11d36:	f2842783          	lw	a5,-216(s0)
   11d3a:	86be                	mv	a3,a5
   11d3c:	ea042583          	lw	a1,-352(s0)
   11d40:	ea442603          	lw	a2,-348(s0)
   11d44:	f3c42503          	lw	a0,-196(s0)
   11d48:	f21fe0ef          	jal	10c68 <STOREBYTES>
   11d4c:	f5842703          	lw	a4,-168(s0)
   11d50:	f5c42783          	lw	a5,-164(s0)
   11d54:	f2842683          	lw	a3,-216(s0)
   11d58:	8636                	mv	a2,a3
   11d5a:	853a                	mv	a0,a4
   11d5c:	85be                	mv	a1,a5
   11d5e:	f9bfe0ef          	jal	10cf8 <CLEARBYTES>
   11d62:	872a                	mv	a4,a0
   11d64:	87ae                	mv	a5,a1
   11d66:	f4e42c23          	sw	a4,-168(s0)
   11d6a:	f4f42e23          	sw	a5,-164(s0)
   11d6e:	f5842703          	lw	a4,-168(s0)
   11d72:	f5c42783          	lw	a5,-164(s0)
   11d76:	fa042683          	lw	a3,-96(s0)
   11d7a:	8ed9                	or	a3,a3,a4
   11d7c:	e8d42c23          	sw	a3,-360(s0)
   11d80:	fa442683          	lw	a3,-92(s0)
   11d84:	8fd5                	or	a5,a5,a3
   11d86:	e8f42e23          	sw	a5,-356(s0)
   11d8a:	e9842783          	lw	a5,-360(s0)
   11d8e:	e9c42803          	lw	a6,-356(s0)
   11d92:	f4f42c23          	sw	a5,-168(s0)
   11d96:	f5042e23          	sw	a6,-164(s0)
   11d9a:	f5842503          	lw	a0,-168(s0)
   11d9e:	f5c42583          	lw	a1,-164(s0)
   11da2:	471d                	li	a4,7
   11da4:	4781                	li	a5,0
   11da6:	f2842803          	lw	a6,-216(s0)
   11daa:	f2c42883          	lw	a7,-212(s0)
   11dae:	41070633          	sub	a2,a4,a6
   11db2:	8332                	mv	t1,a2
   11db4:	00673333          	sltu	t1,a4,t1
   11db8:	411786b3          	sub	a3,a5,a7
   11dbc:	406687b3          	sub	a5,a3,t1
   11dc0:	86be                	mv	a3,a5
   11dc2:	8732                	mv	a4,a2
   11dc4:	87b6                	mv	a5,a3
   11dc6:	87ba                	mv	a5,a4
   11dc8:	078e                	slli	a5,a5,0x3
   11dca:	fe078713          	addi	a4,a5,-32
   11dce:	00074863          	bltz	a4,11dde <crypto_aead_decrypt+0x7e2>
   11dd2:	08000793          	li	a5,128
   11dd6:	00e79bb3          	sll	s7,a5,a4
   11dda:	4b01                	li	s6,0
   11ddc:	a015                	j	11e00 <crypto_aead_decrypt+0x804>
   11dde:	08000713          	li	a4,128
   11de2:	00175693          	srli	a3,a4,0x1
   11de6:	477d                	li	a4,31
   11de8:	8f1d                	sub	a4,a4,a5
   11dea:	00e6d733          	srl	a4,a3,a4
   11dee:	4681                	li	a3,0
   11df0:	00f69bb3          	sll	s7,a3,a5
   11df4:	01776bb3          	or	s7,a4,s7
   11df8:	08000713          	li	a4,128
   11dfc:	00f71b33          	sll	s6,a4,a5
   11e00:	016547b3          	xor	a5,a0,s6
   11e04:	e8f42823          	sw	a5,-368(s0)
   11e08:	0175c7b3          	xor	a5,a1,s7
   11e0c:	e8f42a23          	sw	a5,-364(s0)
   11e10:	e9042783          	lw	a5,-368(s0)
   11e14:	e9442803          	lw	a6,-364(s0)
   11e18:	f4f42c23          	sw	a5,-168(s0)
   11e1c:	f5042e23          	sw	a6,-164(s0)
   11e20:	f2842783          	lw	a5,-216(s0)
   11e24:	f3042703          	lw	a4,-208(s0)
   11e28:	97ba                	add	a5,a5,a4
   11e2a:	f2f42823          	sw	a5,-208(s0)
   11e2e:	f6842703          	lw	a4,-152(s0)
   11e32:	f6c42783          	lw	a5,-148(s0)
   11e36:	fc042683          	lw	a3,-64(s0)
   11e3a:	8eb9                	xor	a3,a3,a4
   11e3c:	e8d42423          	sw	a3,-376(s0)
   11e40:	fc442683          	lw	a3,-60(s0)
   11e44:	8fb5                	xor	a5,a5,a3
   11e46:	e8f42623          	sw	a5,-372(s0)
   11e4a:	e8842783          	lw	a5,-376(s0)
   11e4e:	e8c42803          	lw	a6,-372(s0)
   11e52:	f6f42423          	sw	a5,-152(s0)
   11e56:	f7042623          	sw	a6,-148(s0)
   11e5a:	f7042703          	lw	a4,-144(s0)
   11e5e:	f7442783          	lw	a5,-140(s0)
   11e62:	fb842683          	lw	a3,-72(s0)
   11e66:	8eb9                	xor	a3,a3,a4
   11e68:	e8d42023          	sw	a3,-384(s0)
   11e6c:	fbc42683          	lw	a3,-68(s0)
   11e70:	8fb5                	xor	a5,a5,a3
   11e72:	e8f42223          	sw	a5,-380(s0)
   11e76:	e8042783          	lw	a5,-384(s0)
   11e7a:	e8442803          	lw	a6,-380(s0)
   11e7e:	f6f42823          	sw	a5,-144(s0)
   11e82:	f7042a23          	sw	a6,-140(s0)
   11e86:	f5840793          	addi	a5,s0,-168
   11e8a:	853e                	mv	a0,a5
   11e8c:	c45fe0ef          	jal	10ad0 <P12>
   11e90:	f7042703          	lw	a4,-144(s0)
   11e94:	f7442783          	lw	a5,-140(s0)
   11e98:	fc042683          	lw	a3,-64(s0)
   11e9c:	8eb9                	xor	a3,a3,a4
   11e9e:	e6d42c23          	sw	a3,-392(s0)
   11ea2:	fc442683          	lw	a3,-60(s0)
   11ea6:	8fb5                	xor	a5,a5,a3
   11ea8:	e6f42e23          	sw	a5,-388(s0)
   11eac:	e7842783          	lw	a5,-392(s0)
   11eb0:	e7c42803          	lw	a6,-388(s0)
   11eb4:	f6f42823          	sw	a5,-144(s0)
   11eb8:	f7042a23          	sw	a6,-140(s0)
   11ebc:	f7842703          	lw	a4,-136(s0)
   11ec0:	f7c42783          	lw	a5,-132(s0)
   11ec4:	fb842683          	lw	a3,-72(s0)
   11ec8:	8eb9                	xor	a3,a3,a4
   11eca:	e6d42823          	sw	a3,-400(s0)
   11ece:	fbc42683          	lw	a3,-68(s0)
   11ed2:	8fb5                	xor	a5,a5,a3
   11ed4:	e6f42a23          	sw	a5,-396(s0)
   11ed8:	e7042783          	lw	a5,-400(s0)
   11edc:	e7442803          	lw	a6,-396(s0)
   11ee0:	f6f42c23          	sw	a5,-136(s0)
   11ee4:	f7042e23          	sw	a6,-132(s0)
   11ee8:	f7042703          	lw	a4,-144(s0)
   11eec:	f7442783          	lw	a5,-140(s0)
   11ef0:	f4840513          	addi	a0,s0,-184
   11ef4:	46a1                	li	a3,8
   11ef6:	85ba                	mv	a1,a4
   11ef8:	863e                	mv	a2,a5
   11efa:	d6ffe0ef          	jal	10c68 <STOREBYTES>
   11efe:	f4840793          	addi	a5,s0,-184
   11f02:	07a1                	addi	a5,a5,8
   11f04:	f7842503          	lw	a0,-136(s0)
   11f08:	f7c42583          	lw	a1,-132(s0)
   11f0c:	46a1                	li	a3,8
   11f0e:	862e                	mv	a2,a1
   11f10:	85aa                	mv	a1,a0
   11f12:	853e                	mv	a0,a5
   11f14:	d55fe0ef          	jal	10c68 <STOREBYTES>
   11f18:	fc042423          	sw	zero,-56(s0)
   11f1c:	fc042623          	sw	zero,-52(s0)
   11f20:	a82d                	j	11f5a <crypto_aead_decrypt+0x95e>
   11f22:	fcc42783          	lw	a5,-52(s0)
   11f26:	f3042703          	lw	a4,-208(s0)
   11f2a:	97ba                	add	a5,a5,a4
   11f2c:	0007c703          	lbu	a4,0(a5)
   11f30:	fcc42783          	lw	a5,-52(s0)
   11f34:	fd078793          	addi	a5,a5,-48
   11f38:	97a2                	add	a5,a5,s0
   11f3a:	f787c783          	lbu	a5,-136(a5)
   11f3e:	8fb9                	xor	a5,a5,a4
   11f40:	0ff7f793          	zext.b	a5,a5
   11f44:	873e                	mv	a4,a5
   11f46:	fc842783          	lw	a5,-56(s0)
   11f4a:	8fd9                	or	a5,a5,a4
   11f4c:	fcf42423          	sw	a5,-56(s0)
   11f50:	fcc42783          	lw	a5,-52(s0)
   11f54:	0785                	addi	a5,a5,1
   11f56:	fcf42623          	sw	a5,-52(s0)
   11f5a:	fcc42703          	lw	a4,-52(s0)
   11f5e:	47bd                	li	a5,15
   11f60:	fce7d1e3          	bge	a5,a4,11f22 <crypto_aead_decrypt+0x926>
   11f64:	fc842783          	lw	a5,-56(s0)
   11f68:	17fd                	addi	a5,a5,-1
   11f6a:	87a1                	srai	a5,a5,0x8
   11f6c:	8b85                	andi	a5,a5,1
   11f6e:	17fd                	addi	a5,a5,-1
   11f70:	fcf42423          	sw	a5,-56(s0)
   11f74:	fc842783          	lw	a5,-56(s0)
   11f78:	853e                	mv	a0,a5
   11f7a:	18c12083          	lw	ra,396(sp)
   11f7e:	18812403          	lw	s0,392(sp)
   11f82:	18412903          	lw	s2,388(sp)
   11f86:	18012983          	lw	s3,384(sp)
   11f8a:	17c12a03          	lw	s4,380(sp)
   11f8e:	17812a83          	lw	s5,376(sp)
   11f92:	17412b03          	lw	s6,372(sp)
   11f96:	17012b83          	lw	s7,368(sp)
   11f9a:	16c12c03          	lw	s8,364(sp)
   11f9e:	16812c83          	lw	s9,360(sp)
   11fa2:	16412d03          	lw	s10,356(sp)
   11fa6:	16012d83          	lw	s11,352(sp)
   11faa:	611d                	addi	sp,sp,416
   11fac:	8082                	ret

00011fae <__fp_lock>:
   11fae:	4501                	li	a0,0
   11fb0:	8082                	ret

00011fb2 <stdio_exit_handler>:
   11fb2:	6675                	lui	a2,0x1d
   11fb4:	65d5                	lui	a1,0x15
   11fb6:	6575                	lui	a0,0x1d
   11fb8:	54860613          	addi	a2,a2,1352 # 1d548 <__sglue>
   11fbc:	d1258593          	addi	a1,a1,-750 # 14d12 <_fclose_r>
   11fc0:	55850513          	addi	a0,a0,1368 # 1d558 <_impure_data>
   11fc4:	aca9                	j	1221e <_fwalk_sglue>

00011fc6 <cleanup_stdio>:
   11fc6:	414c                	lw	a1,4(a0)
   11fc8:	1141                	addi	sp,sp,-16
   11fca:	c422                	sw	s0,8(sp)
   11fcc:	c606                	sw	ra,12(sp)
   11fce:	f5c18793          	addi	a5,gp,-164 # 1dca4 <__sf>
   11fd2:	842a                	mv	s0,a0
   11fd4:	00f58463          	beq	a1,a5,11fdc <cleanup_stdio+0x16>
   11fd8:	53b020ef          	jal	14d12 <_fclose_r>
   11fdc:	440c                	lw	a1,8(s0)
   11fde:	fc418793          	addi	a5,gp,-60 # 1dd0c <__sf+0x68>
   11fe2:	00f58563          	beq	a1,a5,11fec <cleanup_stdio+0x26>
   11fe6:	8522                	mv	a0,s0
   11fe8:	52b020ef          	jal	14d12 <_fclose_r>
   11fec:	444c                	lw	a1,12(s0)
   11fee:	02c18793          	addi	a5,gp,44 # 1dd74 <__global_pointer$+0x2c>
   11ff2:	00f58863          	beq	a1,a5,12002 <cleanup_stdio+0x3c>
   11ff6:	8522                	mv	a0,s0
   11ff8:	4422                	lw	s0,8(sp)
   11ffa:	40b2                	lw	ra,12(sp)
   11ffc:	0141                	addi	sp,sp,16
   11ffe:	5150206f          	j	14d12 <_fclose_r>
   12002:	40b2                	lw	ra,12(sp)
   12004:	4422                	lw	s0,8(sp)
   12006:	0141                	addi	sp,sp,16
   12008:	8082                	ret

0001200a <__fp_unlock>:
   1200a:	4501                	li	a0,0
   1200c:	8082                	ret

0001200e <global_stdio_init.part.0>:
   1200e:	1101                	addi	sp,sp,-32
   12010:	67c9                	lui	a5,0x12
   12012:	cc22                	sw	s0,24(sp)
   12014:	fb278793          	addi	a5,a5,-78 # 11fb2 <stdio_exit_handler>
   12018:	f5c18413          	addi	s0,gp,-164 # 1dca4 <__sf>
   1201c:	ce06                	sw	ra,28(sp)
   1201e:	ca26                	sw	s1,20(sp)
   12020:	c84a                	sw	s2,16(sp)
   12022:	c64e                	sw	s3,12(sp)
   12024:	c452                	sw	s4,8(sp)
   12026:	f2f1a023          	sw	a5,-224(gp) # 1dc68 <__stdio_exit_handler>
   1202a:	4621                	li	a2,8
   1202c:	4791                	li	a5,4
   1202e:	4581                	li	a1,0
   12030:	fb818513          	addi	a0,gp,-72 # 1dd00 <__sf+0x5c>
   12034:	c45c                	sw	a5,12(s0)
   12036:	00042023          	sw	zero,0(s0)
   1203a:	00042223          	sw	zero,4(s0)
   1203e:	00042423          	sw	zero,8(s0)
   12042:	06042223          	sw	zero,100(s0)
   12046:	00042823          	sw	zero,16(s0)
   1204a:	00042a23          	sw	zero,20(s0)
   1204e:	00042c23          	sw	zero,24(s0)
   12052:	23f9                	jal	12620 <memset>
   12054:	67c1                	lui	a5,0x10
   12056:	6a49                	lui	s4,0x12
   12058:	69c9                	lui	s3,0x12
   1205a:	6949                	lui	s2,0x12
   1205c:	64c9                	lui	s1,0x12
   1205e:	378a0a13          	addi	s4,s4,888 # 12378 <__sread>
   12062:	3b298993          	addi	s3,s3,946 # 123b2 <__swrite>
   12066:	40290913          	addi	s2,s2,1026 # 12402 <__sseek>
   1206a:	44a48493          	addi	s1,s1,1098 # 1244a <__sclose>
   1206e:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   12070:	4621                	li	a2,8
   12072:	4581                	li	a1,0
   12074:	02018513          	addi	a0,gp,32 # 1dd68 <__global_pointer$+0x20>
   12078:	03442023          	sw	s4,32(s0)
   1207c:	03342223          	sw	s3,36(s0)
   12080:	03242423          	sw	s2,40(s0)
   12084:	d444                	sw	s1,44(s0)
   12086:	d87c                	sw	a5,116(s0)
   12088:	cc40                	sw	s0,28(s0)
   1208a:	06042423          	sw	zero,104(s0)
   1208e:	06042623          	sw	zero,108(s0)
   12092:	06042823          	sw	zero,112(s0)
   12096:	0c042623          	sw	zero,204(s0)
   1209a:	06042c23          	sw	zero,120(s0)
   1209e:	06042e23          	sw	zero,124(s0)
   120a2:	08042023          	sw	zero,128(s0)
   120a6:	2bad                	jal	12620 <memset>
   120a8:	000207b7          	lui	a5,0x20
   120ac:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x207e>
   120ae:	fc418713          	addi	a4,gp,-60 # 1dd0c <__sf+0x68>
   120b2:	4621                	li	a2,8
   120b4:	4581                	li	a1,0
   120b6:	08818513          	addi	a0,gp,136 # 1ddd0 <__global_pointer$+0x88>
   120ba:	09442423          	sw	s4,136(s0)
   120be:	09342623          	sw	s3,140(s0)
   120c2:	09242823          	sw	s2,144(s0)
   120c6:	08942a23          	sw	s1,148(s0)
   120ca:	0cf42e23          	sw	a5,220(s0)
   120ce:	08e42223          	sw	a4,132(s0)
   120d2:	0c042823          	sw	zero,208(s0)
   120d6:	0c042a23          	sw	zero,212(s0)
   120da:	0c042c23          	sw	zero,216(s0)
   120de:	12042a23          	sw	zero,308(s0)
   120e2:	0e042023          	sw	zero,224(s0)
   120e6:	0e042223          	sw	zero,228(s0)
   120ea:	0e042423          	sw	zero,232(s0)
   120ee:	2b0d                	jal	12620 <memset>
   120f0:	02c18793          	addi	a5,gp,44 # 1dd74 <__global_pointer$+0x2c>
   120f4:	0f442823          	sw	s4,240(s0)
   120f8:	0f342a23          	sw	s3,244(s0)
   120fc:	0f242c23          	sw	s2,248(s0)
   12100:	0e942e23          	sw	s1,252(s0)
   12104:	40f2                	lw	ra,28(sp)
   12106:	0ef42623          	sw	a5,236(s0)
   1210a:	4462                	lw	s0,24(sp)
   1210c:	44d2                	lw	s1,20(sp)
   1210e:	4942                	lw	s2,16(sp)
   12110:	49b2                	lw	s3,12(sp)
   12112:	4a22                	lw	s4,8(sp)
   12114:	6105                	addi	sp,sp,32
   12116:	8082                	ret

00012118 <__sfp>:
   12118:	f201a783          	lw	a5,-224(gp) # 1dc68 <__stdio_exit_handler>
   1211c:	1101                	addi	sp,sp,-32
   1211e:	c64e                	sw	s3,12(sp)
   12120:	ce06                	sw	ra,28(sp)
   12122:	cc22                	sw	s0,24(sp)
   12124:	ca26                	sw	s1,20(sp)
   12126:	c84a                	sw	s2,16(sp)
   12128:	89aa                	mv	s3,a0
   1212a:	c7cd                	beqz	a5,121d4 <__sfp+0xbc>
   1212c:	6975                	lui	s2,0x1d
   1212e:	54890913          	addi	s2,s2,1352 # 1d548 <__sglue>
   12132:	54fd                	li	s1,-1
   12134:	00492783          	lw	a5,4(s2)
   12138:	00892403          	lw	s0,8(s2)
   1213c:	17fd                	addi	a5,a5,-1
   1213e:	0007d763          	bgez	a5,1214c <__sfp+0x34>
   12142:	a8b9                	j	121a0 <__sfp+0x88>
   12144:	06840413          	addi	s0,s0,104
   12148:	04978c63          	beq	a5,s1,121a0 <__sfp+0x88>
   1214c:	00c41703          	lh	a4,12(s0)
   12150:	17fd                	addi	a5,a5,-1
   12152:	fb6d                	bnez	a4,12144 <__sfp+0x2c>
   12154:	77c1                	lui	a5,0xffff0
   12156:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd206d>
   12158:	c45c                	sw	a5,12(s0)
   1215a:	06042223          	sw	zero,100(s0)
   1215e:	00042023          	sw	zero,0(s0)
   12162:	00042423          	sw	zero,8(s0)
   12166:	00042223          	sw	zero,4(s0)
   1216a:	00042823          	sw	zero,16(s0)
   1216e:	00042a23          	sw	zero,20(s0)
   12172:	00042c23          	sw	zero,24(s0)
   12176:	4621                	li	a2,8
   12178:	4581                	li	a1,0
   1217a:	05c40513          	addi	a0,s0,92
   1217e:	214d                	jal	12620 <memset>
   12180:	02042823          	sw	zero,48(s0)
   12184:	02042a23          	sw	zero,52(s0)
   12188:	04042223          	sw	zero,68(s0)
   1218c:	04042423          	sw	zero,72(s0)
   12190:	40f2                	lw	ra,28(sp)
   12192:	8522                	mv	a0,s0
   12194:	4462                	lw	s0,24(sp)
   12196:	44d2                	lw	s1,20(sp)
   12198:	4942                	lw	s2,16(sp)
   1219a:	49b2                	lw	s3,12(sp)
   1219c:	6105                	addi	sp,sp,32
   1219e:	8082                	ret
   121a0:	00092403          	lw	s0,0(s2)
   121a4:	c019                	beqz	s0,121aa <__sfp+0x92>
   121a6:	8922                	mv	s2,s0
   121a8:	b771                	j	12134 <__sfp+0x1c>
   121aa:	1ac00593          	li	a1,428
   121ae:	854e                	mv	a0,s3
   121b0:	145000ef          	jal	12af4 <_malloc_r>
   121b4:	842a                	mv	s0,a0
   121b6:	c10d                	beqz	a0,121d8 <__sfp+0xc0>
   121b8:	0531                	addi	a0,a0,12
   121ba:	4791                	li	a5,4
   121bc:	00042023          	sw	zero,0(s0)
   121c0:	c05c                	sw	a5,4(s0)
   121c2:	c408                	sw	a0,8(s0)
   121c4:	1a000613          	li	a2,416
   121c8:	4581                	li	a1,0
   121ca:	2999                	jal	12620 <memset>
   121cc:	00892023          	sw	s0,0(s2)
   121d0:	8922                	mv	s2,s0
   121d2:	b78d                	j	12134 <__sfp+0x1c>
   121d4:	3d2d                	jal	1200e <global_stdio_init.part.0>
   121d6:	bf99                	j	1212c <__sfp+0x14>
   121d8:	00092023          	sw	zero,0(s2)
   121dc:	47b1                	li	a5,12
   121de:	00f9a023          	sw	a5,0(s3)
   121e2:	b77d                	j	12190 <__sfp+0x78>

000121e4 <__sinit>:
   121e4:	595c                	lw	a5,52(a0)
   121e6:	c391                	beqz	a5,121ea <__sinit+0x6>
   121e8:	8082                	ret
   121ea:	f201a703          	lw	a4,-224(gp) # 1dc68 <__stdio_exit_handler>
   121ee:	67c9                	lui	a5,0x12
   121f0:	fc678793          	addi	a5,a5,-58 # 11fc6 <cleanup_stdio>
   121f4:	d95c                	sw	a5,52(a0)
   121f6:	fb6d                	bnez	a4,121e8 <__sinit+0x4>
   121f8:	bd19                	j	1200e <global_stdio_init.part.0>

000121fa <__sfp_lock_acquire>:
   121fa:	8082                	ret

000121fc <__sfp_lock_release>:
   121fc:	8082                	ret

000121fe <__fp_lock_all>:
   121fe:	6675                	lui	a2,0x1d
   12200:	65c9                	lui	a1,0x12
   12202:	54860613          	addi	a2,a2,1352 # 1d548 <__sglue>
   12206:	fae58593          	addi	a1,a1,-82 # 11fae <__fp_lock>
   1220a:	4501                	li	a0,0
   1220c:	a809                	j	1221e <_fwalk_sglue>

0001220e <__fp_unlock_all>:
   1220e:	6675                	lui	a2,0x1d
   12210:	65c9                	lui	a1,0x12
   12212:	54860613          	addi	a2,a2,1352 # 1d548 <__sglue>
   12216:	00a58593          	addi	a1,a1,10 # 1200a <__fp_unlock>
   1221a:	4501                	li	a0,0
   1221c:	a009                	j	1221e <_fwalk_sglue>

0001221e <_fwalk_sglue>:
   1221e:	7179                	addi	sp,sp,-48
   12220:	d04a                	sw	s2,32(sp)
   12222:	ce4e                	sw	s3,28(sp)
   12224:	cc52                	sw	s4,24(sp)
   12226:	ca56                	sw	s5,20(sp)
   12228:	c85a                	sw	s6,16(sp)
   1222a:	c65e                	sw	s7,12(sp)
   1222c:	d606                	sw	ra,44(sp)
   1222e:	d422                	sw	s0,40(sp)
   12230:	d226                	sw	s1,36(sp)
   12232:	8b2a                	mv	s6,a0
   12234:	8bae                	mv	s7,a1
   12236:	8ab2                	mv	s5,a2
   12238:	4a01                	li	s4,0
   1223a:	4985                	li	s3,1
   1223c:	597d                	li	s2,-1
   1223e:	004aa483          	lw	s1,4(s5)
   12242:	008aa403          	lw	s0,8(s5)
   12246:	14fd                	addi	s1,s1,-1
   12248:	0204c463          	bltz	s1,12270 <_fwalk_sglue+0x52>
   1224c:	00c45783          	lhu	a5,12(s0)
   12250:	00f9fb63          	bgeu	s3,a5,12266 <_fwalk_sglue+0x48>
   12254:	00e41783          	lh	a5,14(s0)
   12258:	85a2                	mv	a1,s0
   1225a:	855a                	mv	a0,s6
   1225c:	01278563          	beq	a5,s2,12266 <_fwalk_sglue+0x48>
   12260:	9b82                	jalr	s7
   12262:	00aa6a33          	or	s4,s4,a0
   12266:	14fd                	addi	s1,s1,-1
   12268:	06840413          	addi	s0,s0,104
   1226c:	ff2490e3          	bne	s1,s2,1224c <_fwalk_sglue+0x2e>
   12270:	000aaa83          	lw	s5,0(s5)
   12274:	fc0a95e3          	bnez	s5,1223e <_fwalk_sglue+0x20>
   12278:	50b2                	lw	ra,44(sp)
   1227a:	5422                	lw	s0,40(sp)
   1227c:	5492                	lw	s1,36(sp)
   1227e:	5902                	lw	s2,32(sp)
   12280:	49f2                	lw	s3,28(sp)
   12282:	4ad2                	lw	s5,20(sp)
   12284:	4b42                	lw	s6,16(sp)
   12286:	4bb2                	lw	s7,12(sp)
   12288:	8552                	mv	a0,s4
   1228a:	4a62                	lw	s4,24(sp)
   1228c:	6145                	addi	sp,sp,48
   1228e:	8082                	ret

00012290 <_printf_r>:
   12290:	7139                	addi	sp,sp,-64
   12292:	d432                	sw	a2,40(sp)
   12294:	d636                	sw	a3,44(sp)
   12296:	d83a                	sw	a4,48(sp)
   12298:	da3e                	sw	a5,52(sp)
   1229a:	dc42                	sw	a6,56(sp)
   1229c:	de46                	sw	a7,60(sp)
   1229e:	862e                	mv	a2,a1
   122a0:	450c                	lw	a1,8(a0)
   122a2:	1034                	addi	a3,sp,40
   122a4:	ce06                	sw	ra,28(sp)
   122a6:	c636                	sw	a3,12(sp)
   122a8:	5f5000ef          	jal	1309c <_vfprintf_r>
   122ac:	40f2                	lw	ra,28(sp)
   122ae:	6121                	addi	sp,sp,64
   122b0:	8082                	ret

000122b2 <printf>:
   122b2:	f141a303          	lw	t1,-236(gp) # 1dc5c <_impure_ptr>
   122b6:	7139                	addi	sp,sp,-64
   122b8:	d432                	sw	a2,40(sp)
   122ba:	d636                	sw	a3,44(sp)
   122bc:	d22e                	sw	a1,36(sp)
   122be:	d83a                	sw	a4,48(sp)
   122c0:	da3e                	sw	a5,52(sp)
   122c2:	dc42                	sw	a6,56(sp)
   122c4:	de46                	sw	a7,60(sp)
   122c6:	00832583          	lw	a1,8(t1)
   122ca:	1054                	addi	a3,sp,36
   122cc:	862a                	mv	a2,a0
   122ce:	851a                	mv	a0,t1
   122d0:	ce06                	sw	ra,28(sp)
   122d2:	c636                	sw	a3,12(sp)
   122d4:	5c9000ef          	jal	1309c <_vfprintf_r>
   122d8:	40f2                	lw	ra,28(sp)
   122da:	6121                	addi	sp,sp,64
   122dc:	8082                	ret

000122de <_putchar_r>:
   122de:	4510                	lw	a2,8(a0)
   122e0:	04a0306f          	j	1532a <_putc_r>

000122e4 <putchar>:
   122e4:	f141a783          	lw	a5,-236(gp) # 1dc5c <_impure_ptr>
   122e8:	85aa                	mv	a1,a0
   122ea:	4790                	lw	a2,8(a5)
   122ec:	853e                	mv	a0,a5
   122ee:	03c0306f          	j	1532a <_putc_r>

000122f2 <_puts_r>:
   122f2:	7139                	addi	sp,sp,-64
   122f4:	dc22                	sw	s0,56(sp)
   122f6:	842a                	mv	s0,a0
   122f8:	852e                	mv	a0,a1
   122fa:	da26                	sw	s1,52(sp)
   122fc:	de06                	sw	ra,60(sp)
   122fe:	84ae                	mv	s1,a1
   12300:	26e1                	jal	126c8 <strlen>
   12302:	67f1                	lui	a5,0x1c
   12304:	cdc78793          	addi	a5,a5,-804 # 1bcdc <__clzsi2+0xf6>
   12308:	d43e                	sw	a5,40(sp)
   1230a:	4785                	li	a5,1
   1230c:	d63e                	sw	a5,44(sp)
   1230e:	5858                	lw	a4,52(s0)
   12310:	101c                	addi	a5,sp,32
   12312:	00150693          	addi	a3,a0,1
   12316:	ca3e                	sw	a5,20(sp)
   12318:	4789                	li	a5,2
   1231a:	d026                	sw	s1,32(sp)
   1231c:	d22a                	sw	a0,36(sp)
   1231e:	ce36                	sw	a3,28(sp)
   12320:	cc3e                	sw	a5,24(sp)
   12322:	440c                	lw	a1,8(s0)
   12324:	cf1d                	beqz	a4,12362 <_puts_r+0x70>
   12326:	00c59703          	lh	a4,12(a1)
   1232a:	51fc                	lw	a5,100(a1)
   1232c:	01271693          	slli	a3,a4,0x12
   12330:	0006ca63          	bltz	a3,12344 <_puts_r+0x52>
   12334:	76f9                	lui	a3,0xffffe
   12336:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe006b>
   12338:	6609                	lui	a2,0x2
   1233a:	8f51                	or	a4,a4,a2
   1233c:	8ff5                	and	a5,a5,a3
   1233e:	00e59623          	sh	a4,12(a1)
   12342:	d1fc                	sw	a5,100(a1)
   12344:	01279713          	slli	a4,a5,0x12
   12348:	02074263          	bltz	a4,1236c <_puts_r+0x7a>
   1234c:	0850                	addi	a2,sp,20
   1234e:	8522                	mv	a0,s0
   12350:	48d020ef          	jal	14fdc <__sfvwrite_r>
   12354:	ed01                	bnez	a0,1236c <_puts_r+0x7a>
   12356:	4529                	li	a0,10
   12358:	50f2                	lw	ra,60(sp)
   1235a:	5462                	lw	s0,56(sp)
   1235c:	54d2                	lw	s1,52(sp)
   1235e:	6121                	addi	sp,sp,64
   12360:	8082                	ret
   12362:	8522                	mv	a0,s0
   12364:	c62e                	sw	a1,12(sp)
   12366:	3dbd                	jal	121e4 <__sinit>
   12368:	45b2                	lw	a1,12(sp)
   1236a:	bf75                	j	12326 <_puts_r+0x34>
   1236c:	557d                	li	a0,-1
   1236e:	b7ed                	j	12358 <_puts_r+0x66>

00012370 <puts>:
   12370:	85aa                	mv	a1,a0
   12372:	f141a503          	lw	a0,-236(gp) # 1dc5c <_impure_ptr>
   12376:	bfb5                	j	122f2 <_puts_r>

00012378 <__sread>:
   12378:	1141                	addi	sp,sp,-16
   1237a:	c422                	sw	s0,8(sp)
   1237c:	842e                	mv	s0,a1
   1237e:	00e59583          	lh	a1,14(a1)
   12382:	c606                	sw	ra,12(sp)
   12384:	2a6d                	jal	1253e <_read_r>
   12386:	00054963          	bltz	a0,12398 <__sread+0x20>
   1238a:	483c                	lw	a5,80(s0)
   1238c:	40b2                	lw	ra,12(sp)
   1238e:	97aa                	add	a5,a5,a0
   12390:	c83c                	sw	a5,80(s0)
   12392:	4422                	lw	s0,8(sp)
   12394:	0141                	addi	sp,sp,16
   12396:	8082                	ret
   12398:	00c45783          	lhu	a5,12(s0)
   1239c:	777d                	lui	a4,0xfffff
   1239e:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe106b>
   123a0:	8ff9                	and	a5,a5,a4
   123a2:	40b2                	lw	ra,12(sp)
   123a4:	00f41623          	sh	a5,12(s0)
   123a8:	4422                	lw	s0,8(sp)
   123aa:	0141                	addi	sp,sp,16
   123ac:	8082                	ret

000123ae <__seofread>:
   123ae:	4501                	li	a0,0
   123b0:	8082                	ret

000123b2 <__swrite>:
   123b2:	00c59783          	lh	a5,12(a1)
   123b6:	1101                	addi	sp,sp,-32
   123b8:	cc22                	sw	s0,24(sp)
   123ba:	ca26                	sw	s1,20(sp)
   123bc:	c84a                	sw	s2,16(sp)
   123be:	c64e                	sw	s3,12(sp)
   123c0:	ce06                	sw	ra,28(sp)
   123c2:	1007f713          	andi	a4,a5,256
   123c6:	842e                	mv	s0,a1
   123c8:	84aa                	mv	s1,a0
   123ca:	8932                	mv	s2,a2
   123cc:	89b6                	mv	s3,a3
   123ce:	e315                	bnez	a4,123f2 <__swrite+0x40>
   123d0:	777d                	lui	a4,0xfffff
   123d2:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe106b>
   123d4:	8ff9                	and	a5,a5,a4
   123d6:	00e41583          	lh	a1,14(s0)
   123da:	00f41623          	sh	a5,12(s0)
   123de:	4462                	lw	s0,24(sp)
   123e0:	40f2                	lw	ra,28(sp)
   123e2:	86ce                	mv	a3,s3
   123e4:	864a                	mv	a2,s2
   123e6:	49b2                	lw	s3,12(sp)
   123e8:	4942                	lw	s2,16(sp)
   123ea:	8526                	mv	a0,s1
   123ec:	44d2                	lw	s1,20(sp)
   123ee:	6105                	addi	sp,sp,32
   123f0:	a269                	j	1257a <_write_r>
   123f2:	00e59583          	lh	a1,14(a1)
   123f6:	4689                	li	a3,2
   123f8:	4601                	li	a2,0
   123fa:	2221                	jal	12502 <_lseek_r>
   123fc:	00c41783          	lh	a5,12(s0)
   12400:	bfc1                	j	123d0 <__swrite+0x1e>

00012402 <__sseek>:
   12402:	1141                	addi	sp,sp,-16
   12404:	c422                	sw	s0,8(sp)
   12406:	842e                	mv	s0,a1
   12408:	00e59583          	lh	a1,14(a1)
   1240c:	c606                	sw	ra,12(sp)
   1240e:	28d5                	jal	12502 <_lseek_r>
   12410:	57fd                	li	a5,-1
   12412:	00f50f63          	beq	a0,a5,12430 <__sseek+0x2e>
   12416:	00c45783          	lhu	a5,12(s0)
   1241a:	6705                	lui	a4,0x1
   1241c:	40b2                	lw	ra,12(sp)
   1241e:	8fd9                	or	a5,a5,a4
   12420:	07c2                	slli	a5,a5,0x10
   12422:	87c1                	srai	a5,a5,0x10
   12424:	c828                	sw	a0,80(s0)
   12426:	00f41623          	sh	a5,12(s0)
   1242a:	4422                	lw	s0,8(sp)
   1242c:	0141                	addi	sp,sp,16
   1242e:	8082                	ret
   12430:	00c45783          	lhu	a5,12(s0)
   12434:	777d                	lui	a4,0xfffff
   12436:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe106b>
   12438:	8ff9                	and	a5,a5,a4
   1243a:	07c2                	slli	a5,a5,0x10
   1243c:	87c1                	srai	a5,a5,0x10
   1243e:	40b2                	lw	ra,12(sp)
   12440:	00f41623          	sh	a5,12(s0)
   12444:	4422                	lw	s0,8(sp)
   12446:	0141                	addi	sp,sp,16
   12448:	8082                	ret

0001244a <__sclose>:
   1244a:	00e59583          	lh	a1,14(a1)
   1244e:	a009                	j	12450 <_close_r>

00012450 <_close_r>:
   12450:	1141                	addi	sp,sp,-16
   12452:	c422                	sw	s0,8(sp)
   12454:	c226                	sw	s1,4(sp)
   12456:	842a                	mv	s0,a0
   12458:	852e                	mv	a0,a1
   1245a:	c606                	sw	ra,12(sp)
   1245c:	f201a223          	sw	zero,-220(gp) # 1dc6c <errno>
   12460:	0f8070ef          	jal	19558 <_close>
   12464:	57fd                	li	a5,-1
   12466:	00f50763          	beq	a0,a5,12474 <_close_r+0x24>
   1246a:	40b2                	lw	ra,12(sp)
   1246c:	4422                	lw	s0,8(sp)
   1246e:	4492                	lw	s1,4(sp)
   12470:	0141                	addi	sp,sp,16
   12472:	8082                	ret
   12474:	f241a783          	lw	a5,-220(gp) # 1dc6c <errno>
   12478:	dbed                	beqz	a5,1246a <_close_r+0x1a>
   1247a:	40b2                	lw	ra,12(sp)
   1247c:	c01c                	sw	a5,0(s0)
   1247e:	4422                	lw	s0,8(sp)
   12480:	4492                	lw	s1,4(sp)
   12482:	0141                	addi	sp,sp,16
   12484:	8082                	ret

00012486 <_reclaim_reent>:
   12486:	f141a783          	lw	a5,-236(gp) # 1dc5c <_impure_ptr>
   1248a:	06a78b63          	beq	a5,a0,12500 <_reclaim_reent+0x7a>
   1248e:	416c                	lw	a1,68(a0)
   12490:	1101                	addi	sp,sp,-32
   12492:	ca26                	sw	s1,20(sp)
   12494:	ce06                	sw	ra,28(sp)
   12496:	cc22                	sw	s0,24(sp)
   12498:	84aa                	mv	s1,a0
   1249a:	c59d                	beqz	a1,124c8 <_reclaim_reent+0x42>
   1249c:	c84a                	sw	s2,16(sp)
   1249e:	c64e                	sw	s3,12(sp)
   124a0:	4901                	li	s2,0
   124a2:	08000993          	li	s3,128
   124a6:	012587b3          	add	a5,a1,s2
   124aa:	4380                	lw	s0,0(a5)
   124ac:	c419                	beqz	s0,124ba <_reclaim_reent+0x34>
   124ae:	85a2                	mv	a1,s0
   124b0:	4000                	lw	s0,0(s0)
   124b2:	8526                	mv	a0,s1
   124b4:	2939                	jal	128d2 <_free_r>
   124b6:	fc65                	bnez	s0,124ae <_reclaim_reent+0x28>
   124b8:	40ec                	lw	a1,68(s1)
   124ba:	0911                	addi	s2,s2,4
   124bc:	ff3915e3          	bne	s2,s3,124a6 <_reclaim_reent+0x20>
   124c0:	8526                	mv	a0,s1
   124c2:	2901                	jal	128d2 <_free_r>
   124c4:	4942                	lw	s2,16(sp)
   124c6:	49b2                	lw	s3,12(sp)
   124c8:	5c8c                	lw	a1,56(s1)
   124ca:	c199                	beqz	a1,124d0 <_reclaim_reent+0x4a>
   124cc:	8526                	mv	a0,s1
   124ce:	2111                	jal	128d2 <_free_r>
   124d0:	40a0                	lw	s0,64(s1)
   124d2:	c411                	beqz	s0,124de <_reclaim_reent+0x58>
   124d4:	85a2                	mv	a1,s0
   124d6:	4000                	lw	s0,0(s0)
   124d8:	8526                	mv	a0,s1
   124da:	2ee5                	jal	128d2 <_free_r>
   124dc:	fc65                	bnez	s0,124d4 <_reclaim_reent+0x4e>
   124de:	44ec                	lw	a1,76(s1)
   124e0:	c199                	beqz	a1,124e6 <_reclaim_reent+0x60>
   124e2:	8526                	mv	a0,s1
   124e4:	26fd                	jal	128d2 <_free_r>
   124e6:	58dc                	lw	a5,52(s1)
   124e8:	c799                	beqz	a5,124f6 <_reclaim_reent+0x70>
   124ea:	4462                	lw	s0,24(sp)
   124ec:	40f2                	lw	ra,28(sp)
   124ee:	8526                	mv	a0,s1
   124f0:	44d2                	lw	s1,20(sp)
   124f2:	6105                	addi	sp,sp,32
   124f4:	8782                	jr	a5
   124f6:	40f2                	lw	ra,28(sp)
   124f8:	4462                	lw	s0,24(sp)
   124fa:	44d2                	lw	s1,20(sp)
   124fc:	6105                	addi	sp,sp,32
   124fe:	8082                	ret
   12500:	8082                	ret

00012502 <_lseek_r>:
   12502:	1141                	addi	sp,sp,-16
   12504:	872e                	mv	a4,a1
   12506:	c422                	sw	s0,8(sp)
   12508:	c226                	sw	s1,4(sp)
   1250a:	85b2                	mv	a1,a2
   1250c:	842a                	mv	s0,a0
   1250e:	8636                	mv	a2,a3
   12510:	853a                	mv	a0,a4
   12512:	c606                	sw	ra,12(sp)
   12514:	f201a223          	sw	zero,-220(gp) # 1dc6c <errno>
   12518:	104070ef          	jal	1961c <_lseek>
   1251c:	57fd                	li	a5,-1
   1251e:	00f50763          	beq	a0,a5,1252c <_lseek_r+0x2a>
   12522:	40b2                	lw	ra,12(sp)
   12524:	4422                	lw	s0,8(sp)
   12526:	4492                	lw	s1,4(sp)
   12528:	0141                	addi	sp,sp,16
   1252a:	8082                	ret
   1252c:	f241a783          	lw	a5,-220(gp) # 1dc6c <errno>
   12530:	dbed                	beqz	a5,12522 <_lseek_r+0x20>
   12532:	40b2                	lw	ra,12(sp)
   12534:	c01c                	sw	a5,0(s0)
   12536:	4422                	lw	s0,8(sp)
   12538:	4492                	lw	s1,4(sp)
   1253a:	0141                	addi	sp,sp,16
   1253c:	8082                	ret

0001253e <_read_r>:
   1253e:	1141                	addi	sp,sp,-16
   12540:	872e                	mv	a4,a1
   12542:	c422                	sw	s0,8(sp)
   12544:	c226                	sw	s1,4(sp)
   12546:	85b2                	mv	a1,a2
   12548:	842a                	mv	s0,a0
   1254a:	8636                	mv	a2,a3
   1254c:	853a                	mv	a0,a4
   1254e:	c606                	sw	ra,12(sp)
   12550:	f201a223          	sw	zero,-220(gp) # 1dc6c <errno>
   12554:	0f4070ef          	jal	19648 <_read>
   12558:	57fd                	li	a5,-1
   1255a:	00f50763          	beq	a0,a5,12568 <_read_r+0x2a>
   1255e:	40b2                	lw	ra,12(sp)
   12560:	4422                	lw	s0,8(sp)
   12562:	4492                	lw	s1,4(sp)
   12564:	0141                	addi	sp,sp,16
   12566:	8082                	ret
   12568:	f241a783          	lw	a5,-220(gp) # 1dc6c <errno>
   1256c:	dbed                	beqz	a5,1255e <_read_r+0x20>
   1256e:	40b2                	lw	ra,12(sp)
   12570:	c01c                	sw	a5,0(s0)
   12572:	4422                	lw	s0,8(sp)
   12574:	4492                	lw	s1,4(sp)
   12576:	0141                	addi	sp,sp,16
   12578:	8082                	ret

0001257a <_write_r>:
   1257a:	1141                	addi	sp,sp,-16
   1257c:	872e                	mv	a4,a1
   1257e:	c422                	sw	s0,8(sp)
   12580:	c226                	sw	s1,4(sp)
   12582:	85b2                	mv	a1,a2
   12584:	842a                	mv	s0,a0
   12586:	8636                	mv	a2,a3
   12588:	853a                	mv	a0,a4
   1258a:	c606                	sw	ra,12(sp)
   1258c:	f201a223          	sw	zero,-220(gp) # 1dc6c <errno>
   12590:	138070ef          	jal	196c8 <_write>
   12594:	57fd                	li	a5,-1
   12596:	00f50763          	beq	a0,a5,125a4 <_write_r+0x2a>
   1259a:	40b2                	lw	ra,12(sp)
   1259c:	4422                	lw	s0,8(sp)
   1259e:	4492                	lw	s1,4(sp)
   125a0:	0141                	addi	sp,sp,16
   125a2:	8082                	ret
   125a4:	f241a783          	lw	a5,-220(gp) # 1dc6c <errno>
   125a8:	dbed                	beqz	a5,1259a <_write_r+0x20>
   125aa:	40b2                	lw	ra,12(sp)
   125ac:	c01c                	sw	a5,0(s0)
   125ae:	4422                	lw	s0,8(sp)
   125b0:	4492                	lw	s1,4(sp)
   125b2:	0141                	addi	sp,sp,16
   125b4:	8082                	ret

000125b6 <__libc_init_array>:
   125b6:	1141                	addi	sp,sp,-16
   125b8:	c422                	sw	s0,8(sp)
   125ba:	67f5                	lui	a5,0x1d
   125bc:	6475                	lui	s0,0x1d
   125be:	c04a                	sw	s2,0(sp)
   125c0:	53c78793          	addi	a5,a5,1340 # 1d53c <__init_array_start>
   125c4:	53c40713          	addi	a4,s0,1340 # 1d53c <__init_array_start>
   125c8:	c606                	sw	ra,12(sp)
   125ca:	c226                	sw	s1,4(sp)
   125cc:	40e78933          	sub	s2,a5,a4
   125d0:	00e78d63          	beq	a5,a4,125ea <__libc_init_array+0x34>
   125d4:	40295913          	srai	s2,s2,0x2
   125d8:	53c40413          	addi	s0,s0,1340
   125dc:	4481                	li	s1,0
   125de:	401c                	lw	a5,0(s0)
   125e0:	0485                	addi	s1,s1,1
   125e2:	0411                	addi	s0,s0,4
   125e4:	9782                	jalr	a5
   125e6:	ff24ece3          	bltu	s1,s2,125de <__libc_init_array+0x28>
   125ea:	6475                	lui	s0,0x1d
   125ec:	67f5                	lui	a5,0x1d
   125ee:	54478793          	addi	a5,a5,1348 # 1d544 <__do_global_dtors_aux_fini_array_entry>
   125f2:	53c40713          	addi	a4,s0,1340 # 1d53c <__init_array_start>
   125f6:	40e78933          	sub	s2,a5,a4
   125fa:	40295913          	srai	s2,s2,0x2
   125fe:	00e78b63          	beq	a5,a4,12614 <__libc_init_array+0x5e>
   12602:	53c40413          	addi	s0,s0,1340
   12606:	4481                	li	s1,0
   12608:	401c                	lw	a5,0(s0)
   1260a:	0485                	addi	s1,s1,1
   1260c:	0411                	addi	s0,s0,4
   1260e:	9782                	jalr	a5
   12610:	ff24ece3          	bltu	s1,s2,12608 <__libc_init_array+0x52>
   12614:	40b2                	lw	ra,12(sp)
   12616:	4422                	lw	s0,8(sp)
   12618:	4492                	lw	s1,4(sp)
   1261a:	4902                	lw	s2,0(sp)
   1261c:	0141                	addi	sp,sp,16
   1261e:	8082                	ret

00012620 <memset>:
   12620:	433d                	li	t1,15
   12622:	872a                	mv	a4,a0
   12624:	02c37363          	bgeu	t1,a2,1264a <memset+0x2a>
   12628:	00f77793          	andi	a5,a4,15
   1262c:	efbd                	bnez	a5,126aa <memset+0x8a>
   1262e:	e5ad                	bnez	a1,12698 <memset+0x78>
   12630:	ff067693          	andi	a3,a2,-16
   12634:	8a3d                	andi	a2,a2,15
   12636:	96ba                	add	a3,a3,a4
   12638:	c30c                	sw	a1,0(a4)
   1263a:	c34c                	sw	a1,4(a4)
   1263c:	c70c                	sw	a1,8(a4)
   1263e:	c74c                	sw	a1,12(a4)
   12640:	0741                	addi	a4,a4,16
   12642:	fed76be3          	bltu	a4,a3,12638 <memset+0x18>
   12646:	e211                	bnez	a2,1264a <memset+0x2a>
   12648:	8082                	ret
   1264a:	40c306b3          	sub	a3,t1,a2
   1264e:	068a                	slli	a3,a3,0x2
   12650:	00000297          	auipc	t0,0x0
   12654:	9696                	add	a3,a3,t0
   12656:	00a68067          	jr	10(a3)
   1265a:	00b70723          	sb	a1,14(a4)
   1265e:	00b706a3          	sb	a1,13(a4)
   12662:	00b70623          	sb	a1,12(a4)
   12666:	00b705a3          	sb	a1,11(a4)
   1266a:	00b70523          	sb	a1,10(a4)
   1266e:	00b704a3          	sb	a1,9(a4)
   12672:	00b70423          	sb	a1,8(a4)
   12676:	00b703a3          	sb	a1,7(a4)
   1267a:	00b70323          	sb	a1,6(a4)
   1267e:	00b702a3          	sb	a1,5(a4)
   12682:	00b70223          	sb	a1,4(a4)
   12686:	00b701a3          	sb	a1,3(a4)
   1268a:	00b70123          	sb	a1,2(a4)
   1268e:	00b700a3          	sb	a1,1(a4)
   12692:	00b70023          	sb	a1,0(a4)
   12696:	8082                	ret
   12698:	0ff5f593          	zext.b	a1,a1
   1269c:	00859693          	slli	a3,a1,0x8
   126a0:	8dd5                	or	a1,a1,a3
   126a2:	01059693          	slli	a3,a1,0x10
   126a6:	8dd5                	or	a1,a1,a3
   126a8:	b761                	j	12630 <memset+0x10>
   126aa:	00279693          	slli	a3,a5,0x2
   126ae:	00000297          	auipc	t0,0x0
   126b2:	9696                	add	a3,a3,t0
   126b4:	8286                	mv	t0,ra
   126b6:	fa8680e7          	jalr	-88(a3)
   126ba:	8096                	mv	ra,t0
   126bc:	17c1                	addi	a5,a5,-16
   126be:	8f1d                	sub	a4,a4,a5
   126c0:	963e                	add	a2,a2,a5
   126c2:	f8c374e3          	bgeu	t1,a2,1264a <memset+0x2a>
   126c6:	b7a5                	j	1262e <memset+0xe>

000126c8 <strlen>:
   126c8:	00357793          	andi	a5,a0,3
   126cc:	872a                	mv	a4,a0
   126ce:	ef9d                	bnez	a5,1270c <strlen+0x44>
   126d0:	7f7f86b7          	lui	a3,0x7f7f8
   126d4:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d9feb>
   126d8:	55fd                	li	a1,-1
   126da:	4310                	lw	a2,0(a4)
   126dc:	0711                	addi	a4,a4,4
   126de:	00d677b3          	and	a5,a2,a3
   126e2:	97b6                	add	a5,a5,a3
   126e4:	8fd1                	or	a5,a5,a2
   126e6:	8fd5                	or	a5,a5,a3
   126e8:	feb789e3          	beq	a5,a1,126da <strlen+0x12>
   126ec:	ffc74683          	lbu	a3,-4(a4)
   126f0:	40a707b3          	sub	a5,a4,a0
   126f4:	ca8d                	beqz	a3,12726 <strlen+0x5e>
   126f6:	ffd74683          	lbu	a3,-3(a4)
   126fa:	c29d                	beqz	a3,12720 <strlen+0x58>
   126fc:	ffe74503          	lbu	a0,-2(a4)
   12700:	00a03533          	snez	a0,a0
   12704:	953e                	add	a0,a0,a5
   12706:	1579                	addi	a0,a0,-2
   12708:	8082                	ret
   1270a:	d2f9                	beqz	a3,126d0 <strlen+0x8>
   1270c:	00074783          	lbu	a5,0(a4)
   12710:	0705                	addi	a4,a4,1
   12712:	00377693          	andi	a3,a4,3
   12716:	fbf5                	bnez	a5,1270a <strlen+0x42>
   12718:	8f09                	sub	a4,a4,a0
   1271a:	fff70513          	addi	a0,a4,-1
   1271e:	8082                	ret
   12720:	ffd78513          	addi	a0,a5,-3
   12724:	8082                	ret
   12726:	ffc78513          	addi	a0,a5,-4
   1272a:	8082                	ret

0001272c <__call_exitprocs>:
   1272c:	7179                	addi	sp,sp,-48
   1272e:	cc52                	sw	s4,24(sp)
   12730:	d04a                	sw	s2,32(sp)
   12732:	f281a903          	lw	s2,-216(gp) # 1dc70 <__atexit>
   12736:	d606                	sw	ra,44(sp)
   12738:	06090c63          	beqz	s2,127b0 <__call_exitprocs+0x84>
   1273c:	ce4e                	sw	s3,28(sp)
   1273e:	ca56                	sw	s5,20(sp)
   12740:	c85a                	sw	s6,16(sp)
   12742:	c65e                	sw	s7,12(sp)
   12744:	d422                	sw	s0,40(sp)
   12746:	d226                	sw	s1,36(sp)
   12748:	c462                	sw	s8,8(sp)
   1274a:	8b2a                	mv	s6,a0
   1274c:	8bae                	mv	s7,a1
   1274e:	59fd                	li	s3,-1
   12750:	4a85                	li	s5,1
   12752:	00492483          	lw	s1,4(s2)
   12756:	fff48413          	addi	s0,s1,-1
   1275a:	04044463          	bltz	s0,127a2 <__call_exitprocs+0x76>
   1275e:	048a                	slli	s1,s1,0x2
   12760:	94ca                	add	s1,s1,s2
   12762:	040b9c63          	bnez	s7,127ba <__call_exitprocs+0x8e>
   12766:	00492783          	lw	a5,4(s2)
   1276a:	40d4                	lw	a3,4(s1)
   1276c:	17fd                	addi	a5,a5,-1
   1276e:	08878063          	beq	a5,s0,127ee <__call_exitprocs+0xc2>
   12772:	0004a223          	sw	zero,4(s1)
   12776:	c295                	beqz	a3,1279a <__call_exitprocs+0x6e>
   12778:	18892783          	lw	a5,392(s2)
   1277c:	008a9733          	sll	a4,s5,s0
   12780:	00492c03          	lw	s8,4(s2)
   12784:	8ff9                	and	a5,a5,a4
   12786:	e3b9                	bnez	a5,127cc <__call_exitprocs+0xa0>
   12788:	9682                	jalr	a3
   1278a:	00492703          	lw	a4,4(s2)
   1278e:	f281a783          	lw	a5,-216(gp) # 1dc70 <__atexit>
   12792:	05871b63          	bne	a4,s8,127e8 <__call_exitprocs+0xbc>
   12796:	05279963          	bne	a5,s2,127e8 <__call_exitprocs+0xbc>
   1279a:	147d                	addi	s0,s0,-1
   1279c:	14f1                	addi	s1,s1,-4
   1279e:	fd3412e3          	bne	s0,s3,12762 <__call_exitprocs+0x36>
   127a2:	5422                	lw	s0,40(sp)
   127a4:	5492                	lw	s1,36(sp)
   127a6:	49f2                	lw	s3,28(sp)
   127a8:	4ad2                	lw	s5,20(sp)
   127aa:	4b42                	lw	s6,16(sp)
   127ac:	4bb2                	lw	s7,12(sp)
   127ae:	4c22                	lw	s8,8(sp)
   127b0:	50b2                	lw	ra,44(sp)
   127b2:	5902                	lw	s2,32(sp)
   127b4:	4a62                	lw	s4,24(sp)
   127b6:	6145                	addi	sp,sp,48
   127b8:	8082                	ret
   127ba:	1044a783          	lw	a5,260(s1)
   127be:	fb7784e3          	beq	a5,s7,12766 <__call_exitprocs+0x3a>
   127c2:	147d                	addi	s0,s0,-1
   127c4:	14f1                	addi	s1,s1,-4
   127c6:	ff341ae3          	bne	s0,s3,127ba <__call_exitprocs+0x8e>
   127ca:	bfe1                	j	127a2 <__call_exitprocs+0x76>
   127cc:	18c92783          	lw	a5,396(s2)
   127d0:	0844a583          	lw	a1,132(s1)
   127d4:	8f7d                	and	a4,a4,a5
   127d6:	ef19                	bnez	a4,127f4 <__call_exitprocs+0xc8>
   127d8:	855a                	mv	a0,s6
   127da:	9682                	jalr	a3
   127dc:	00492703          	lw	a4,4(s2)
   127e0:	f281a783          	lw	a5,-216(gp) # 1dc70 <__atexit>
   127e4:	fb8709e3          	beq	a4,s8,12796 <__call_exitprocs+0x6a>
   127e8:	dfcd                	beqz	a5,127a2 <__call_exitprocs+0x76>
   127ea:	893e                	mv	s2,a5
   127ec:	b79d                	j	12752 <__call_exitprocs+0x26>
   127ee:	00892223          	sw	s0,4(s2)
   127f2:	b751                	j	12776 <__call_exitprocs+0x4a>
   127f4:	852e                	mv	a0,a1
   127f6:	9682                	jalr	a3
   127f8:	bf49                	j	1278a <__call_exitprocs+0x5e>

000127fa <atexit>:
   127fa:	85aa                	mv	a1,a0
   127fc:	4681                	li	a3,0
   127fe:	4601                	li	a2,0
   12800:	4501                	li	a0,0
   12802:	2340306f          	j	15a36 <__register_exitproc>

00012806 <_malloc_trim_r>:
   12806:	1101                	addi	sp,sp,-32
   12808:	c64e                	sw	s3,12(sp)
   1280a:	69f5                	lui	s3,0x1d
   1280c:	cc22                	sw	s0,24(sp)
   1280e:	ca26                	sw	s1,20(sp)
   12810:	c84a                	sw	s2,16(sp)
   12812:	c452                	sw	s4,8(sp)
   12814:	ce06                	sw	ra,28(sp)
   12816:	8a2e                	mv	s4,a1
   12818:	892a                	mv	s2,a0
   1281a:	67898993          	addi	s3,s3,1656 # 1d678 <__malloc_av_>
   1281e:	07b000ef          	jal	13098 <__malloc_lock>
   12822:	0089a703          	lw	a4,8(s3)
   12826:	6785                	lui	a5,0x1
   12828:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   1282a:	4344                	lw	s1,4(a4)
   1282c:	6705                	lui	a4,0x1
   1282e:	98f1                	andi	s1,s1,-4
   12830:	00f48433          	add	s0,s1,a5
   12834:	41440433          	sub	s0,s0,s4
   12838:	8031                	srli	s0,s0,0xc
   1283a:	147d                	addi	s0,s0,-1
   1283c:	0432                	slli	s0,s0,0xc
   1283e:	00e44b63          	blt	s0,a4,12854 <_malloc_trim_r+0x4e>
   12842:	4581                	li	a1,0
   12844:	854a                	mv	a0,s2
   12846:	685020ef          	jal	156ca <_sbrk_r>
   1284a:	0089a783          	lw	a5,8(s3)
   1284e:	97a6                	add	a5,a5,s1
   12850:	00f50e63          	beq	a0,a5,1286c <_malloc_trim_r+0x66>
   12854:	854a                	mv	a0,s2
   12856:	045000ef          	jal	1309a <__malloc_unlock>
   1285a:	40f2                	lw	ra,28(sp)
   1285c:	4462                	lw	s0,24(sp)
   1285e:	44d2                	lw	s1,20(sp)
   12860:	4942                	lw	s2,16(sp)
   12862:	49b2                	lw	s3,12(sp)
   12864:	4a22                	lw	s4,8(sp)
   12866:	4501                	li	a0,0
   12868:	6105                	addi	sp,sp,32
   1286a:	8082                	ret
   1286c:	408005b3          	neg	a1,s0
   12870:	854a                	mv	a0,s2
   12872:	659020ef          	jal	156ca <_sbrk_r>
   12876:	57fd                	li	a5,-1
   12878:	02f50963          	beq	a0,a5,128aa <_malloc_trim_r+0xa4>
   1287c:	09418793          	addi	a5,gp,148 # 1dddc <__malloc_current_mallinfo>
   12880:	4398                	lw	a4,0(a5)
   12882:	0089a683          	lw	a3,8(s3)
   12886:	8c81                	sub	s1,s1,s0
   12888:	0014e493          	ori	s1,s1,1
   1288c:	8f01                	sub	a4,a4,s0
   1288e:	854a                	mv	a0,s2
   12890:	c2c4                	sw	s1,4(a3)
   12892:	c398                	sw	a4,0(a5)
   12894:	007000ef          	jal	1309a <__malloc_unlock>
   12898:	40f2                	lw	ra,28(sp)
   1289a:	4462                	lw	s0,24(sp)
   1289c:	44d2                	lw	s1,20(sp)
   1289e:	4942                	lw	s2,16(sp)
   128a0:	49b2                	lw	s3,12(sp)
   128a2:	4a22                	lw	s4,8(sp)
   128a4:	4505                	li	a0,1
   128a6:	6105                	addi	sp,sp,32
   128a8:	8082                	ret
   128aa:	4581                	li	a1,0
   128ac:	854a                	mv	a0,s2
   128ae:	61d020ef          	jal	156ca <_sbrk_r>
   128b2:	0089a703          	lw	a4,8(s3)
   128b6:	46bd                	li	a3,15
   128b8:	40e507b3          	sub	a5,a0,a4
   128bc:	f8f6dce3          	bge	a3,a5,12854 <_malloc_trim_r+0x4e>
   128c0:	f181a683          	lw	a3,-232(gp) # 1dc60 <__malloc_sbrk_base>
   128c4:	0017e793          	ori	a5,a5,1
   128c8:	c35c                	sw	a5,4(a4)
   128ca:	8d15                	sub	a0,a0,a3
   128cc:	08a1aa23          	sw	a0,148(gp) # 1dddc <__malloc_current_mallinfo>
   128d0:	b751                	j	12854 <_malloc_trim_r+0x4e>

000128d2 <_free_r>:
   128d2:	10058a63          	beqz	a1,129e6 <_free_r+0x114>
   128d6:	1141                	addi	sp,sp,-16
   128d8:	c422                	sw	s0,8(sp)
   128da:	c226                	sw	s1,4(sp)
   128dc:	842e                	mv	s0,a1
   128de:	84aa                	mv	s1,a0
   128e0:	c606                	sw	ra,12(sp)
   128e2:	7b6000ef          	jal	13098 <__malloc_lock>
   128e6:	ffc42503          	lw	a0,-4(s0)
   128ea:	ff840713          	addi	a4,s0,-8
   128ee:	65f5                	lui	a1,0x1d
   128f0:	ffe57793          	andi	a5,a0,-2
   128f4:	00f70633          	add	a2,a4,a5
   128f8:	67858593          	addi	a1,a1,1656 # 1d678 <__malloc_av_>
   128fc:	4254                	lw	a3,4(a2)
   128fe:	0085a803          	lw	a6,8(a1)
   12902:	9af1                	andi	a3,a3,-4
   12904:	12c80363          	beq	a6,a2,12a2a <_free_r+0x158>
   12908:	c254                	sw	a3,4(a2)
   1290a:	8905                	andi	a0,a0,1
   1290c:	00d60833          	add	a6,a2,a3
   12910:	e935                	bnez	a0,12984 <_free_r+0xb2>
   12912:	ff842303          	lw	t1,-8(s0)
   12916:	00482803          	lw	a6,4(a6)
   1291a:	6575                	lui	a0,0x1d
   1291c:	40670733          	sub	a4,a4,t1
   12920:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   12924:	68050513          	addi	a0,a0,1664 # 1d680 <__malloc_av_+0x8>
   12928:	979a                	add	a5,a5,t1
   1292a:	00187813          	andi	a6,a6,1
   1292e:	0ea88163          	beq	a7,a0,12a10 <_free_r+0x13e>
   12932:	00c72303          	lw	t1,12(a4)
   12936:	0068a623          	sw	t1,12(a7)
   1293a:	01132423          	sw	a7,8(t1)
   1293e:	10080e63          	beqz	a6,12a5a <_free_r+0x188>
   12942:	0017e693          	ori	a3,a5,1
   12946:	c354                	sw	a3,4(a4)
   12948:	c21c                	sw	a5,0(a2)
   1294a:	1ff00693          	li	a3,511
   1294e:	04f6e863          	bltu	a3,a5,1299e <_free_r+0xcc>
   12952:	ff87f693          	andi	a3,a5,-8
   12956:	06a1                	addi	a3,a3,8
   12958:	41c8                	lw	a0,4(a1)
   1295a:	96ae                	add	a3,a3,a1
   1295c:	4290                	lw	a2,0(a3)
   1295e:	0057d813          	srli	a6,a5,0x5
   12962:	4785                	li	a5,1
   12964:	010797b3          	sll	a5,a5,a6
   12968:	8fc9                	or	a5,a5,a0
   1296a:	ff868513          	addi	a0,a3,-8
   1296e:	c748                	sw	a0,12(a4)
   12970:	c710                	sw	a2,8(a4)
   12972:	c1dc                	sw	a5,4(a1)
   12974:	c298                	sw	a4,0(a3)
   12976:	c658                	sw	a4,12(a2)
   12978:	4422                	lw	s0,8(sp)
   1297a:	40b2                	lw	ra,12(sp)
   1297c:	8526                	mv	a0,s1
   1297e:	4492                	lw	s1,4(sp)
   12980:	0141                	addi	sp,sp,16
   12982:	af21                	j	1309a <__malloc_unlock>
   12984:	00482503          	lw	a0,4(a6)
   12988:	8905                	andi	a0,a0,1
   1298a:	cd39                	beqz	a0,129e8 <_free_r+0x116>
   1298c:	0017e693          	ori	a3,a5,1
   12990:	fed42e23          	sw	a3,-4(s0)
   12994:	c21c                	sw	a5,0(a2)
   12996:	1ff00693          	li	a3,511
   1299a:	faf6fce3          	bgeu	a3,a5,12952 <_free_r+0x80>
   1299e:	0097d693          	srli	a3,a5,0x9
   129a2:	4611                	li	a2,4
   129a4:	0ad66d63          	bltu	a2,a3,12a5e <_free_r+0x18c>
   129a8:	0067d693          	srli	a3,a5,0x6
   129ac:	03968513          	addi	a0,a3,57
   129b0:	03868613          	addi	a2,a3,56
   129b4:	050e                	slli	a0,a0,0x3
   129b6:	952e                	add	a0,a0,a1
   129b8:	4114                	lw	a3,0(a0)
   129ba:	1561                	addi	a0,a0,-8
   129bc:	00d51663          	bne	a0,a3,129c8 <_free_r+0xf6>
   129c0:	a8f1                	j	12a9c <_free_r+0x1ca>
   129c2:	4694                	lw	a3,8(a3)
   129c4:	00d50663          	beq	a0,a3,129d0 <_free_r+0xfe>
   129c8:	42d0                	lw	a2,4(a3)
   129ca:	9a71                	andi	a2,a2,-4
   129cc:	fec7ebe3          	bltu	a5,a2,129c2 <_free_r+0xf0>
   129d0:	46c8                	lw	a0,12(a3)
   129d2:	c748                	sw	a0,12(a4)
   129d4:	c714                	sw	a3,8(a4)
   129d6:	4422                	lw	s0,8(sp)
   129d8:	c518                	sw	a4,8(a0)
   129da:	40b2                	lw	ra,12(sp)
   129dc:	8526                	mv	a0,s1
   129de:	4492                	lw	s1,4(sp)
   129e0:	c6d8                	sw	a4,12(a3)
   129e2:	0141                	addi	sp,sp,16
   129e4:	ad5d                	j	1309a <__malloc_unlock>
   129e6:	8082                	ret
   129e8:	6575                	lui	a0,0x1d
   129ea:	97b6                	add	a5,a5,a3
   129ec:	68050513          	addi	a0,a0,1664 # 1d680 <__malloc_av_+0x8>
   129f0:	4614                	lw	a3,8(a2)
   129f2:	08a68b63          	beq	a3,a0,12a88 <_free_r+0x1b6>
   129f6:	00c62803          	lw	a6,12(a2) # 200c <exit-0xe088>
   129fa:	0017e513          	ori	a0,a5,1
   129fe:	00f70633          	add	a2,a4,a5
   12a02:	0106a623          	sw	a6,12(a3)
   12a06:	00d82423          	sw	a3,8(a6)
   12a0a:	c348                	sw	a0,4(a4)
   12a0c:	c21c                	sw	a5,0(a2)
   12a0e:	bf35                	j	1294a <_free_r+0x78>
   12a10:	0c081d63          	bnez	a6,12aea <_free_r+0x218>
   12a14:	460c                	lw	a1,8(a2)
   12a16:	4650                	lw	a2,12(a2)
   12a18:	96be                	add	a3,a3,a5
   12a1a:	0016e793          	ori	a5,a3,1
   12a1e:	c5d0                	sw	a2,12(a1)
   12a20:	c60c                	sw	a1,8(a2)
   12a22:	c35c                	sw	a5,4(a4)
   12a24:	9736                	add	a4,a4,a3
   12a26:	c314                	sw	a3,0(a4)
   12a28:	bf81                	j	12978 <_free_r+0xa6>
   12a2a:	8905                	andi	a0,a0,1
   12a2c:	96be                	add	a3,a3,a5
   12a2e:	e909                	bnez	a0,12a40 <_free_r+0x16e>
   12a30:	ff842503          	lw	a0,-8(s0)
   12a34:	8f09                	sub	a4,a4,a0
   12a36:	475c                	lw	a5,12(a4)
   12a38:	4710                	lw	a2,8(a4)
   12a3a:	96aa                	add	a3,a3,a0
   12a3c:	c65c                	sw	a5,12(a2)
   12a3e:	c790                	sw	a2,8(a5)
   12a40:	0016e613          	ori	a2,a3,1
   12a44:	f1c1a783          	lw	a5,-228(gp) # 1dc64 <__malloc_trim_threshold>
   12a48:	c350                	sw	a2,4(a4)
   12a4a:	c598                	sw	a4,8(a1)
   12a4c:	f2f6e6e3          	bltu	a3,a5,12978 <_free_r+0xa6>
   12a50:	f341a583          	lw	a1,-204(gp) # 1dc7c <__malloc_top_pad>
   12a54:	8526                	mv	a0,s1
   12a56:	3b45                	jal	12806 <_malloc_trim_r>
   12a58:	b705                	j	12978 <_free_r+0xa6>
   12a5a:	97b6                	add	a5,a5,a3
   12a5c:	bf51                	j	129f0 <_free_r+0x11e>
   12a5e:	4651                	li	a2,20
   12a60:	00d67e63          	bgeu	a2,a3,12a7c <_free_r+0x1aa>
   12a64:	05400613          	li	a2,84
   12a68:	04d66463          	bltu	a2,a3,12ab0 <_free_r+0x1de>
   12a6c:	00c7d693          	srli	a3,a5,0xc
   12a70:	06f68513          	addi	a0,a3,111
   12a74:	06e68613          	addi	a2,a3,110
   12a78:	050e                	slli	a0,a0,0x3
   12a7a:	bf35                	j	129b6 <_free_r+0xe4>
   12a7c:	05c68513          	addi	a0,a3,92
   12a80:	05b68613          	addi	a2,a3,91
   12a84:	050e                	slli	a0,a0,0x3
   12a86:	bf05                	j	129b6 <_free_r+0xe4>
   12a88:	c9d8                	sw	a4,20(a1)
   12a8a:	c998                	sw	a4,16(a1)
   12a8c:	0017e693          	ori	a3,a5,1
   12a90:	c748                	sw	a0,12(a4)
   12a92:	c708                	sw	a0,8(a4)
   12a94:	c354                	sw	a3,4(a4)
   12a96:	973e                	add	a4,a4,a5
   12a98:	c31c                	sw	a5,0(a4)
   12a9a:	bdf9                	j	12978 <_free_r+0xa6>
   12a9c:	0045a803          	lw	a6,4(a1)
   12aa0:	8609                	srai	a2,a2,0x2
   12aa2:	4785                	li	a5,1
   12aa4:	00c797b3          	sll	a5,a5,a2
   12aa8:	0107e7b3          	or	a5,a5,a6
   12aac:	c1dc                	sw	a5,4(a1)
   12aae:	b715                	j	129d2 <_free_r+0x100>
   12ab0:	15400613          	li	a2,340
   12ab4:	00d66a63          	bltu	a2,a3,12ac8 <_free_r+0x1f6>
   12ab8:	00f7d693          	srli	a3,a5,0xf
   12abc:	07868513          	addi	a0,a3,120
   12ac0:	07768613          	addi	a2,a3,119
   12ac4:	050e                	slli	a0,a0,0x3
   12ac6:	bdc5                	j	129b6 <_free_r+0xe4>
   12ac8:	55400613          	li	a2,1364
   12acc:	00d66a63          	bltu	a2,a3,12ae0 <_free_r+0x20e>
   12ad0:	0127d693          	srli	a3,a5,0x12
   12ad4:	07d68513          	addi	a0,a3,125
   12ad8:	07c68613          	addi	a2,a3,124
   12adc:	050e                	slli	a0,a0,0x3
   12ade:	bde1                	j	129b6 <_free_r+0xe4>
   12ae0:	3f800513          	li	a0,1016
   12ae4:	07e00613          	li	a2,126
   12ae8:	b5f9                	j	129b6 <_free_r+0xe4>
   12aea:	0017e693          	ori	a3,a5,1
   12aee:	c354                	sw	a3,4(a4)
   12af0:	c21c                	sw	a5,0(a2)
   12af2:	b559                	j	12978 <_free_r+0xa6>

00012af4 <_malloc_r>:
   12af4:	7179                	addi	sp,sp,-48
   12af6:	ce4e                	sw	s3,28(sp)
   12af8:	d606                	sw	ra,44(sp)
   12afa:	d422                	sw	s0,40(sp)
   12afc:	d226                	sw	s1,36(sp)
   12afe:	d04a                	sw	s2,32(sp)
   12b00:	00b58793          	addi	a5,a1,11
   12b04:	4759                	li	a4,22
   12b06:	89aa                	mv	s3,a0
   12b08:	04f76863          	bltu	a4,a5,12b58 <_malloc_r+0x64>
   12b0c:	47c1                	li	a5,16
   12b0e:	16b7e863          	bltu	a5,a1,12c7e <_malloc_r+0x18a>
   12b12:	2359                	jal	13098 <__malloc_lock>
   12b14:	47e1                	li	a5,24
   12b16:	4589                	li	a1,2
   12b18:	44c1                	li	s1,16
   12b1a:	6975                	lui	s2,0x1d
   12b1c:	67890913          	addi	s2,s2,1656 # 1d678 <__malloc_av_>
   12b20:	97ca                	add	a5,a5,s2
   12b22:	43c0                	lw	s0,4(a5)
   12b24:	ff878713          	addi	a4,a5,-8
   12b28:	24e40d63          	beq	s0,a4,12d82 <_malloc_r+0x28e>
   12b2c:	405c                	lw	a5,4(s0)
   12b2e:	4454                	lw	a3,12(s0)
   12b30:	4410                	lw	a2,8(s0)
   12b32:	9bf1                	andi	a5,a5,-4
   12b34:	97a2                	add	a5,a5,s0
   12b36:	43d8                	lw	a4,4(a5)
   12b38:	c654                	sw	a3,12(a2)
   12b3a:	c690                	sw	a2,8(a3)
   12b3c:	00176713          	ori	a4,a4,1
   12b40:	854e                	mv	a0,s3
   12b42:	c3d8                	sw	a4,4(a5)
   12b44:	2b99                	jal	1309a <__malloc_unlock>
   12b46:	00840513          	addi	a0,s0,8
   12b4a:	50b2                	lw	ra,44(sp)
   12b4c:	5422                	lw	s0,40(sp)
   12b4e:	5492                	lw	s1,36(sp)
   12b50:	5902                	lw	s2,32(sp)
   12b52:	49f2                	lw	s3,28(sp)
   12b54:	6145                	addi	sp,sp,48
   12b56:	8082                	ret
   12b58:	ff87f493          	andi	s1,a5,-8
   12b5c:	1207c163          	bltz	a5,12c7e <_malloc_r+0x18a>
   12b60:	10b4ef63          	bltu	s1,a1,12c7e <_malloc_r+0x18a>
   12b64:	2b15                	jal	13098 <__malloc_lock>
   12b66:	1f700793          	li	a5,503
   12b6a:	2c97fb63          	bgeu	a5,s1,12e40 <_malloc_r+0x34c>
   12b6e:	0094d793          	srli	a5,s1,0x9
   12b72:	10078b63          	beqz	a5,12c88 <_malloc_r+0x194>
   12b76:	4711                	li	a4,4
   12b78:	24f76a63          	bltu	a4,a5,12dcc <_malloc_r+0x2d8>
   12b7c:	0064d793          	srli	a5,s1,0x6
   12b80:	03978593          	addi	a1,a5,57
   12b84:	03878813          	addi	a6,a5,56
   12b88:	00359613          	slli	a2,a1,0x3
   12b8c:	6975                	lui	s2,0x1d
   12b8e:	67890913          	addi	s2,s2,1656 # 1d678 <__malloc_av_>
   12b92:	964a                	add	a2,a2,s2
   12b94:	4240                	lw	s0,4(a2)
   12b96:	1661                	addi	a2,a2,-8
   12b98:	02860163          	beq	a2,s0,12bba <_malloc_r+0xc6>
   12b9c:	453d                	li	a0,15
   12b9e:	a039                	j	12bac <_malloc_r+0xb8>
   12ba0:	4454                	lw	a3,12(s0)
   12ba2:	1c075e63          	bgez	a4,12d7e <_malloc_r+0x28a>
   12ba6:	00d60a63          	beq	a2,a3,12bba <_malloc_r+0xc6>
   12baa:	8436                	mv	s0,a3
   12bac:	405c                	lw	a5,4(s0)
   12bae:	9bf1                	andi	a5,a5,-4
   12bb0:	40978733          	sub	a4,a5,s1
   12bb4:	fee556e3          	bge	a0,a4,12ba0 <_malloc_r+0xac>
   12bb8:	85c2                	mv	a1,a6
   12bba:	01092403          	lw	s0,16(s2)
   12bbe:	6875                	lui	a6,0x1d
   12bc0:	68080813          	addi	a6,a6,1664 # 1d680 <__malloc_av_+0x8>
   12bc4:	1b040a63          	beq	s0,a6,12d78 <_malloc_r+0x284>
   12bc8:	405c                	lw	a5,4(s0)
   12bca:	46bd                	li	a3,15
   12bcc:	9bf1                	andi	a5,a5,-4
   12bce:	40978733          	sub	a4,a5,s1
   12bd2:	26e6cc63          	blt	a3,a4,12e4a <_malloc_r+0x356>
   12bd6:	01092a23          	sw	a6,20(s2)
   12bda:	01092823          	sw	a6,16(s2)
   12bde:	24075763          	bgez	a4,12e2c <_malloc_r+0x338>
   12be2:	1ff00713          	li	a4,511
   12be6:	00492503          	lw	a0,4(s2)
   12bea:	1af76163          	bltu	a4,a5,12d8c <_malloc_r+0x298>
   12bee:	ff87f713          	andi	a4,a5,-8
   12bf2:	0721                	addi	a4,a4,8
   12bf4:	974a                	add	a4,a4,s2
   12bf6:	4314                	lw	a3,0(a4)
   12bf8:	0057d613          	srli	a2,a5,0x5
   12bfc:	4785                	li	a5,1
   12bfe:	00c797b3          	sll	a5,a5,a2
   12c02:	8d5d                	or	a0,a0,a5
   12c04:	ff870793          	addi	a5,a4,-8
   12c08:	c45c                	sw	a5,12(s0)
   12c0a:	c414                	sw	a3,8(s0)
   12c0c:	00a92223          	sw	a0,4(s2)
   12c10:	c300                	sw	s0,0(a4)
   12c12:	c6c0                	sw	s0,12(a3)
   12c14:	4025d793          	srai	a5,a1,0x2
   12c18:	4605                	li	a2,1
   12c1a:	00f61633          	sll	a2,a2,a5
   12c1e:	06c56c63          	bltu	a0,a2,12c96 <_malloc_r+0x1a2>
   12c22:	00a677b3          	and	a5,a2,a0
   12c26:	ef81                	bnez	a5,12c3e <_malloc_r+0x14a>
   12c28:	0606                	slli	a2,a2,0x1
   12c2a:	99f1                	andi	a1,a1,-4
   12c2c:	00a677b3          	and	a5,a2,a0
   12c30:	0591                	addi	a1,a1,4
   12c32:	e791                	bnez	a5,12c3e <_malloc_r+0x14a>
   12c34:	0606                	slli	a2,a2,0x1
   12c36:	00a677b3          	and	a5,a2,a0
   12c3a:	0591                	addi	a1,a1,4
   12c3c:	dfe5                	beqz	a5,12c34 <_malloc_r+0x140>
   12c3e:	48bd                	li	a7,15
   12c40:	00359313          	slli	t1,a1,0x3
   12c44:	934a                	add	t1,t1,s2
   12c46:	851a                	mv	a0,t1
   12c48:	455c                	lw	a5,12(a0)
   12c4a:	8e2e                	mv	t3,a1
   12c4c:	1af50063          	beq	a0,a5,12dec <_malloc_r+0x2f8>
   12c50:	43d8                	lw	a4,4(a5)
   12c52:	843e                	mv	s0,a5
   12c54:	47dc                	lw	a5,12(a5)
   12c56:	9b71                	andi	a4,a4,-4
   12c58:	409706b3          	sub	a3,a4,s1
   12c5c:	18d8cf63          	blt	a7,a3,12dfa <_malloc_r+0x306>
   12c60:	fe06c6e3          	bltz	a3,12c4c <_malloc_r+0x158>
   12c64:	9722                	add	a4,a4,s0
   12c66:	4354                	lw	a3,4(a4)
   12c68:	4410                	lw	a2,8(s0)
   12c6a:	854e                	mv	a0,s3
   12c6c:	0016e693          	ori	a3,a3,1
   12c70:	c354                	sw	a3,4(a4)
   12c72:	c65c                	sw	a5,12(a2)
   12c74:	c790                	sw	a2,8(a5)
   12c76:	2115                	jal	1309a <__malloc_unlock>
   12c78:	00840513          	addi	a0,s0,8
   12c7c:	b5f9                	j	12b4a <_malloc_r+0x56>
   12c7e:	47b1                	li	a5,12
   12c80:	00f9a023          	sw	a5,0(s3)
   12c84:	4501                	li	a0,0
   12c86:	b5d1                	j	12b4a <_malloc_r+0x56>
   12c88:	20000613          	li	a2,512
   12c8c:	04000593          	li	a1,64
   12c90:	03f00813          	li	a6,63
   12c94:	bde5                	j	12b8c <_malloc_r+0x98>
   12c96:	00892403          	lw	s0,8(s2)
   12c9a:	c85a                	sw	s6,16(sp)
   12c9c:	405c                	lw	a5,4(s0)
   12c9e:	ffc7fb13          	andi	s6,a5,-4
   12ca2:	009b6763          	bltu	s6,s1,12cb0 <_malloc_r+0x1bc>
   12ca6:	409b0733          	sub	a4,s6,s1
   12caa:	47bd                	li	a5,15
   12cac:	0ae7c163          	blt	a5,a4,12d4e <_malloc_r+0x25a>
   12cb0:	c266                	sw	s9,4(sp)
   12cb2:	ca56                	sw	s5,20(sp)
   12cb4:	f181a703          	lw	a4,-232(gp) # 1dc60 <__malloc_sbrk_base>
   12cb8:	f341aa83          	lw	s5,-204(gp) # 1dc7c <__malloc_top_pad>
   12cbc:	cc52                	sw	s4,24(sp)
   12cbe:	c65e                	sw	s7,12(sp)
   12cc0:	57fd                	li	a5,-1
   12cc2:	01640a33          	add	s4,s0,s6
   12cc6:	9aa6                	add	s5,s5,s1
   12cc8:	2cf70763          	beq	a4,a5,12f96 <_malloc_r+0x4a2>
   12ccc:	6785                	lui	a5,0x1
   12cce:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   12cd0:	9abe                	add	s5,s5,a5
   12cd2:	77fd                	lui	a5,0xfffff
   12cd4:	00fafab3          	and	s5,s5,a5
   12cd8:	85d6                	mv	a1,s5
   12cda:	854e                	mv	a0,s3
   12cdc:	1ef020ef          	jal	156ca <_sbrk_r>
   12ce0:	57fd                	li	a5,-1
   12ce2:	8baa                	mv	s7,a0
   12ce4:	32f50963          	beq	a0,a5,13016 <_malloc_r+0x522>
   12ce8:	c462                	sw	s8,8(sp)
   12cea:	19456e63          	bltu	a0,s4,12e86 <_malloc_r+0x392>
   12cee:	09418c13          	addi	s8,gp,148 # 1dddc <__malloc_current_mallinfo>
   12cf2:	000c2583          	lw	a1,0(s8)
   12cf6:	95d6                	add	a1,a1,s5
   12cf8:	00bc2023          	sw	a1,0(s8)
   12cfc:	872e                	mv	a4,a1
   12cfe:	1eaa1863          	bne	s4,a0,12eee <_malloc_r+0x3fa>
   12d02:	01451793          	slli	a5,a0,0x14
   12d06:	1e079463          	bnez	a5,12eee <_malloc_r+0x3fa>
   12d0a:	00892b83          	lw	s7,8(s2)
   12d0e:	015b07b3          	add	a5,s6,s5
   12d12:	0017e793          	ori	a5,a5,1
   12d16:	00fba223          	sw	a5,4(s7)
   12d1a:	f301a683          	lw	a3,-208(gp) # 1dc78 <__malloc_max_sbrked_mem>
   12d1e:	00b6f463          	bgeu	a3,a1,12d26 <_malloc_r+0x232>
   12d22:	f2b1a823          	sw	a1,-208(gp) # 1dc78 <__malloc_max_sbrked_mem>
   12d26:	f2c1a683          	lw	a3,-212(gp) # 1dc74 <__malloc_max_total_mem>
   12d2a:	00b6f463          	bgeu	a3,a1,12d32 <_malloc_r+0x23e>
   12d2e:	f2b1a623          	sw	a1,-212(gp) # 1dc74 <__malloc_max_total_mem>
   12d32:	4c22                	lw	s8,8(sp)
   12d34:	845e                	mv	s0,s7
   12d36:	9bf1                	andi	a5,a5,-4
   12d38:	40978733          	sub	a4,a5,s1
   12d3c:	2897eb63          	bltu	a5,s1,12fd2 <_malloc_r+0x4de>
   12d40:	47bd                	li	a5,15
   12d42:	28e7d863          	bge	a5,a4,12fd2 <_malloc_r+0x4de>
   12d46:	4a62                	lw	s4,24(sp)
   12d48:	4ad2                	lw	s5,20(sp)
   12d4a:	4bb2                	lw	s7,12(sp)
   12d4c:	4c92                	lw	s9,4(sp)
   12d4e:	0014e793          	ori	a5,s1,1
   12d52:	c05c                	sw	a5,4(s0)
   12d54:	94a2                	add	s1,s1,s0
   12d56:	00992423          	sw	s1,8(s2)
   12d5a:	00176713          	ori	a4,a4,1
   12d5e:	854e                	mv	a0,s3
   12d60:	c0d8                	sw	a4,4(s1)
   12d62:	2e25                	jal	1309a <__malloc_unlock>
   12d64:	50b2                	lw	ra,44(sp)
   12d66:	00840513          	addi	a0,s0,8
   12d6a:	5422                	lw	s0,40(sp)
   12d6c:	4b42                	lw	s6,16(sp)
   12d6e:	5492                	lw	s1,36(sp)
   12d70:	5902                	lw	s2,32(sp)
   12d72:	49f2                	lw	s3,28(sp)
   12d74:	6145                	addi	sp,sp,48
   12d76:	8082                	ret
   12d78:	00492503          	lw	a0,4(s2)
   12d7c:	bd61                	j	12c14 <_malloc_r+0x120>
   12d7e:	4410                	lw	a2,8(s0)
   12d80:	bb55                	j	12b34 <_malloc_r+0x40>
   12d82:	47c0                	lw	s0,12(a5)
   12d84:	0589                	addi	a1,a1,2
   12d86:	e2878ae3          	beq	a5,s0,12bba <_malloc_r+0xc6>
   12d8a:	b34d                	j	12b2c <_malloc_r+0x38>
   12d8c:	0097d713          	srli	a4,a5,0x9
   12d90:	4691                	li	a3,4
   12d92:	0ee6f263          	bgeu	a3,a4,12e76 <_malloc_r+0x382>
   12d96:	46d1                	li	a3,20
   12d98:	24e6e663          	bltu	a3,a4,12fe4 <_malloc_r+0x4f0>
   12d9c:	05c70613          	addi	a2,a4,92
   12da0:	05b70693          	addi	a3,a4,91
   12da4:	060e                	slli	a2,a2,0x3
   12da6:	964a                	add	a2,a2,s2
   12da8:	4218                	lw	a4,0(a2)
   12daa:	1661                	addi	a2,a2,-8
   12dac:	00e61663          	bne	a2,a4,12db8 <_malloc_r+0x2c4>
   12db0:	a2ed                	j	12f9a <_malloc_r+0x4a6>
   12db2:	4718                	lw	a4,8(a4)
   12db4:	00e60663          	beq	a2,a4,12dc0 <_malloc_r+0x2cc>
   12db8:	4354                	lw	a3,4(a4)
   12dba:	9af1                	andi	a3,a3,-4
   12dbc:	fed7ebe3          	bltu	a5,a3,12db2 <_malloc_r+0x2be>
   12dc0:	4750                	lw	a2,12(a4)
   12dc2:	c450                	sw	a2,12(s0)
   12dc4:	c418                	sw	a4,8(s0)
   12dc6:	c600                	sw	s0,8(a2)
   12dc8:	c740                	sw	s0,12(a4)
   12dca:	b5a9                	j	12c14 <_malloc_r+0x120>
   12dcc:	4751                	li	a4,20
   12dce:	0cf77363          	bgeu	a4,a5,12e94 <_malloc_r+0x3a0>
   12dd2:	05400713          	li	a4,84
   12dd6:	22f76363          	bltu	a4,a5,12ffc <_malloc_r+0x508>
   12dda:	00c4d793          	srli	a5,s1,0xc
   12dde:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe10db>
   12de2:	06e78813          	addi	a6,a5,110
   12de6:	00359613          	slli	a2,a1,0x3
   12dea:	b34d                	j	12b8c <_malloc_r+0x98>
   12dec:	0e05                	addi	t3,t3,1
   12dee:	003e7793          	andi	a5,t3,3
   12df2:	0521                	addi	a0,a0,8
   12df4:	cfc5                	beqz	a5,12eac <_malloc_r+0x3b8>
   12df6:	455c                	lw	a5,12(a0)
   12df8:	bd91                	j	12c4c <_malloc_r+0x158>
   12dfa:	4410                	lw	a2,8(s0)
   12dfc:	0014e593          	ori	a1,s1,1
   12e00:	c04c                	sw	a1,4(s0)
   12e02:	c65c                	sw	a5,12(a2)
   12e04:	c790                	sw	a2,8(a5)
   12e06:	94a2                	add	s1,s1,s0
   12e08:	00992a23          	sw	s1,20(s2)
   12e0c:	00992823          	sw	s1,16(s2)
   12e10:	0016e793          	ori	a5,a3,1
   12e14:	0104a623          	sw	a6,12(s1)
   12e18:	0104a423          	sw	a6,8(s1)
   12e1c:	c0dc                	sw	a5,4(s1)
   12e1e:	9722                	add	a4,a4,s0
   12e20:	854e                	mv	a0,s3
   12e22:	c314                	sw	a3,0(a4)
   12e24:	2c9d                	jal	1309a <__malloc_unlock>
   12e26:	00840513          	addi	a0,s0,8
   12e2a:	b305                	j	12b4a <_malloc_r+0x56>
   12e2c:	97a2                	add	a5,a5,s0
   12e2e:	43d8                	lw	a4,4(a5)
   12e30:	854e                	mv	a0,s3
   12e32:	00176713          	ori	a4,a4,1
   12e36:	c3d8                	sw	a4,4(a5)
   12e38:	248d                	jal	1309a <__malloc_unlock>
   12e3a:	00840513          	addi	a0,s0,8
   12e3e:	b331                	j	12b4a <_malloc_r+0x56>
   12e40:	0034d593          	srli	a1,s1,0x3
   12e44:	00848793          	addi	a5,s1,8
   12e48:	b9c9                	j	12b1a <_malloc_r+0x26>
   12e4a:	0014e693          	ori	a3,s1,1
   12e4e:	c054                	sw	a3,4(s0)
   12e50:	94a2                	add	s1,s1,s0
   12e52:	00992a23          	sw	s1,20(s2)
   12e56:	00992823          	sw	s1,16(s2)
   12e5a:	00176693          	ori	a3,a4,1
   12e5e:	0104a623          	sw	a6,12(s1)
   12e62:	0104a423          	sw	a6,8(s1)
   12e66:	c0d4                	sw	a3,4(s1)
   12e68:	97a2                	add	a5,a5,s0
   12e6a:	854e                	mv	a0,s3
   12e6c:	c398                	sw	a4,0(a5)
   12e6e:	2435                	jal	1309a <__malloc_unlock>
   12e70:	00840513          	addi	a0,s0,8
   12e74:	b9d9                	j	12b4a <_malloc_r+0x56>
   12e76:	0067d713          	srli	a4,a5,0x6
   12e7a:	03970613          	addi	a2,a4,57
   12e7e:	03870693          	addi	a3,a4,56
   12e82:	060e                	slli	a2,a2,0x3
   12e84:	b70d                	j	12da6 <_malloc_r+0x2b2>
   12e86:	05240d63          	beq	s0,s2,12ee0 <_malloc_r+0x3ec>
   12e8a:	00892403          	lw	s0,8(s2)
   12e8e:	4c22                	lw	s8,8(sp)
   12e90:	405c                	lw	a5,4(s0)
   12e92:	b555                	j	12d36 <_malloc_r+0x242>
   12e94:	05c78593          	addi	a1,a5,92
   12e98:	05b78813          	addi	a6,a5,91
   12e9c:	00359613          	slli	a2,a1,0x3
   12ea0:	b1f5                	j	12b8c <_malloc_r+0x98>
   12ea2:	00832783          	lw	a5,8(t1)
   12ea6:	15fd                	addi	a1,a1,-1
   12ea8:	1e679563          	bne	a5,t1,13092 <_malloc_r+0x59e>
   12eac:	0035f793          	andi	a5,a1,3
   12eb0:	1361                	addi	t1,t1,-8
   12eb2:	fbe5                	bnez	a5,12ea2 <_malloc_r+0x3ae>
   12eb4:	00492703          	lw	a4,4(s2)
   12eb8:	fff64793          	not	a5,a2
   12ebc:	8ff9                	and	a5,a5,a4
   12ebe:	00f92223          	sw	a5,4(s2)
   12ec2:	0606                	slli	a2,a2,0x1
   12ec4:	dcc7e9e3          	bltu	a5,a2,12c96 <_malloc_r+0x1a2>
   12ec8:	dc0607e3          	beqz	a2,12c96 <_malloc_r+0x1a2>
   12ecc:	00f67733          	and	a4,a2,a5
   12ed0:	e711                	bnez	a4,12edc <_malloc_r+0x3e8>
   12ed2:	0606                	slli	a2,a2,0x1
   12ed4:	00f67733          	and	a4,a2,a5
   12ed8:	0e11                	addi	t3,t3,4
   12eda:	df65                	beqz	a4,12ed2 <_malloc_r+0x3de>
   12edc:	85f2                	mv	a1,t3
   12ede:	b38d                	j	12c40 <_malloc_r+0x14c>
   12ee0:	09418c13          	addi	s8,gp,148 # 1dddc <__malloc_current_mallinfo>
   12ee4:	000c2703          	lw	a4,0(s8)
   12ee8:	9756                	add	a4,a4,s5
   12eea:	00ec2023          	sw	a4,0(s8)
   12eee:	f181a683          	lw	a3,-232(gp) # 1dc60 <__malloc_sbrk_base>
   12ef2:	57fd                	li	a5,-1
   12ef4:	12f68563          	beq	a3,a5,1301e <_malloc_r+0x52a>
   12ef8:	414b87b3          	sub	a5,s7,s4
   12efc:	97ba                	add	a5,a5,a4
   12efe:	00fc2023          	sw	a5,0(s8)
   12f02:	007bfc93          	andi	s9,s7,7
   12f06:	0a0c8263          	beqz	s9,12faa <_malloc_r+0x4b6>
   12f0a:	419b8bb3          	sub	s7,s7,s9
   12f0e:	6785                	lui	a5,0x1
   12f10:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   12f12:	0ba1                	addi	s7,s7,8
   12f14:	419785b3          	sub	a1,a5,s9
   12f18:	9ade                	add	s5,s5,s7
   12f1a:	415585b3          	sub	a1,a1,s5
   12f1e:	05d2                	slli	a1,a1,0x14
   12f20:	0145da13          	srli	s4,a1,0x14
   12f24:	85d2                	mv	a1,s4
   12f26:	854e                	mv	a0,s3
   12f28:	7a2020ef          	jal	156ca <_sbrk_r>
   12f2c:	57fd                	li	a5,-1
   12f2e:	12f50463          	beq	a0,a5,13056 <_malloc_r+0x562>
   12f32:	41750533          	sub	a0,a0,s7
   12f36:	01450ab3          	add	s5,a0,s4
   12f3a:	000c2703          	lw	a4,0(s8)
   12f3e:	01792423          	sw	s7,8(s2)
   12f42:	001ae793          	ori	a5,s5,1
   12f46:	00ea05b3          	add	a1,s4,a4
   12f4a:	00bc2023          	sw	a1,0(s8)
   12f4e:	00fba223          	sw	a5,4(s7)
   12f52:	dd2404e3          	beq	s0,s2,12d1a <_malloc_r+0x226>
   12f56:	46bd                	li	a3,15
   12f58:	0766f963          	bgeu	a3,s6,12fca <_malloc_r+0x4d6>
   12f5c:	4058                	lw	a4,4(s0)
   12f5e:	ff4b0793          	addi	a5,s6,-12
   12f62:	9be1                	andi	a5,a5,-8
   12f64:	8b05                	andi	a4,a4,1
   12f66:	8f5d                	or	a4,a4,a5
   12f68:	c058                	sw	a4,4(s0)
   12f6a:	4615                	li	a2,5
   12f6c:	00f40733          	add	a4,s0,a5
   12f70:	c350                	sw	a2,4(a4)
   12f72:	c710                	sw	a2,8(a4)
   12f74:	00f6e563          	bltu	a3,a5,12f7e <_malloc_r+0x48a>
   12f78:	004ba783          	lw	a5,4(s7)
   12f7c:	bb79                	j	12d1a <_malloc_r+0x226>
   12f7e:	00840593          	addi	a1,s0,8
   12f82:	854e                	mv	a0,s3
   12f84:	94fff0ef          	jal	128d2 <_free_r>
   12f88:	00892b83          	lw	s7,8(s2)
   12f8c:	000c2583          	lw	a1,0(s8)
   12f90:	004ba783          	lw	a5,4(s7)
   12f94:	b359                	j	12d1a <_malloc_r+0x226>
   12f96:	0ac1                	addi	s5,s5,16
   12f98:	b381                	j	12cd8 <_malloc_r+0x1e4>
   12f9a:	8689                	srai	a3,a3,0x2
   12f9c:	4785                	li	a5,1
   12f9e:	00d797b3          	sll	a5,a5,a3
   12fa2:	8d5d                	or	a0,a0,a5
   12fa4:	00a92223          	sw	a0,4(s2)
   12fa8:	bd29                	j	12dc2 <_malloc_r+0x2ce>
   12faa:	015b85b3          	add	a1,s7,s5
   12fae:	40b005b3          	neg	a1,a1
   12fb2:	05d2                	slli	a1,a1,0x14
   12fb4:	0145da13          	srli	s4,a1,0x14
   12fb8:	85d2                	mv	a1,s4
   12fba:	854e                	mv	a0,s3
   12fbc:	70e020ef          	jal	156ca <_sbrk_r>
   12fc0:	57fd                	li	a5,-1
   12fc2:	f6f518e3          	bne	a0,a5,12f32 <_malloc_r+0x43e>
   12fc6:	4a01                	li	s4,0
   12fc8:	bf8d                	j	12f3a <_malloc_r+0x446>
   12fca:	4c22                	lw	s8,8(sp)
   12fcc:	4785                	li	a5,1
   12fce:	00fba223          	sw	a5,4(s7)
   12fd2:	854e                	mv	a0,s3
   12fd4:	20d9                	jal	1309a <__malloc_unlock>
   12fd6:	4501                	li	a0,0
   12fd8:	4a62                	lw	s4,24(sp)
   12fda:	4ad2                	lw	s5,20(sp)
   12fdc:	4b42                	lw	s6,16(sp)
   12fde:	4bb2                	lw	s7,12(sp)
   12fe0:	4c92                	lw	s9,4(sp)
   12fe2:	b6a5                	j	12b4a <_malloc_r+0x56>
   12fe4:	05400693          	li	a3,84
   12fe8:	02e6ee63          	bltu	a3,a4,13024 <_malloc_r+0x530>
   12fec:	00c7d713          	srli	a4,a5,0xc
   12ff0:	06f70613          	addi	a2,a4,111
   12ff4:	06e70693          	addi	a3,a4,110
   12ff8:	060e                	slli	a2,a2,0x3
   12ffa:	b375                	j	12da6 <_malloc_r+0x2b2>
   12ffc:	15400713          	li	a4,340
   13000:	02f76e63          	bltu	a4,a5,1303c <_malloc_r+0x548>
   13004:	00f4d793          	srli	a5,s1,0xf
   13008:	07878593          	addi	a1,a5,120
   1300c:	07778813          	addi	a6,a5,119
   13010:	00359613          	slli	a2,a1,0x3
   13014:	bea5                	j	12b8c <_malloc_r+0x98>
   13016:	00892403          	lw	s0,8(s2)
   1301a:	405c                	lw	a5,4(s0)
   1301c:	bb29                	j	12d36 <_malloc_r+0x242>
   1301e:	f171ac23          	sw	s7,-232(gp) # 1dc60 <__malloc_sbrk_base>
   13022:	b5c5                	j	12f02 <_malloc_r+0x40e>
   13024:	15400693          	li	a3,340
   13028:	02e6ed63          	bltu	a3,a4,13062 <_malloc_r+0x56e>
   1302c:	00f7d713          	srli	a4,a5,0xf
   13030:	07870613          	addi	a2,a4,120
   13034:	07770693          	addi	a3,a4,119
   13038:	060e                	slli	a2,a2,0x3
   1303a:	b3b5                	j	12da6 <_malloc_r+0x2b2>
   1303c:	55400713          	li	a4,1364
   13040:	02f76d63          	bltu	a4,a5,1307a <_malloc_r+0x586>
   13044:	0124d793          	srli	a5,s1,0x12
   13048:	07d78593          	addi	a1,a5,125
   1304c:	07c78813          	addi	a6,a5,124
   13050:	00359613          	slli	a2,a1,0x3
   13054:	be25                	j	12b8c <_malloc_r+0x98>
   13056:	1ce1                	addi	s9,s9,-8
   13058:	9ae6                	add	s5,s5,s9
   1305a:	417a8ab3          	sub	s5,s5,s7
   1305e:	4a01                	li	s4,0
   13060:	bde9                	j	12f3a <_malloc_r+0x446>
   13062:	55400693          	li	a3,1364
   13066:	02e6e163          	bltu	a3,a4,13088 <_malloc_r+0x594>
   1306a:	0127d713          	srli	a4,a5,0x12
   1306e:	07d70613          	addi	a2,a4,125
   13072:	07c70693          	addi	a3,a4,124
   13076:	060e                	slli	a2,a2,0x3
   13078:	b33d                	j	12da6 <_malloc_r+0x2b2>
   1307a:	3f800613          	li	a2,1016
   1307e:	07f00593          	li	a1,127
   13082:	07e00813          	li	a6,126
   13086:	b619                	j	12b8c <_malloc_r+0x98>
   13088:	3f800613          	li	a2,1016
   1308c:	07e00693          	li	a3,126
   13090:	bb19                	j	12da6 <_malloc_r+0x2b2>
   13092:	00492783          	lw	a5,4(s2)
   13096:	b535                	j	12ec2 <_malloc_r+0x3ce>

00013098 <__malloc_lock>:
   13098:	8082                	ret

0001309a <__malloc_unlock>:
   1309a:	8082                	ret

0001309c <_vfprintf_r>:
   1309c:	7145                	addi	sp,sp,-464
   1309e:	1c112623          	sw	ra,460(sp)
   130a2:	1c812423          	sw	s0,456(sp)
   130a6:	1c912223          	sw	s1,452(sp)
   130aa:	1b612823          	sw	s6,432(sp)
   130ae:	84ae                	mv	s1,a1
   130b0:	8b32                	mv	s6,a2
   130b2:	ca36                	sw	a3,20(sp)
   130b4:	842a                	mv	s0,a0
   130b6:	c42a                	sw	a0,8(sp)
   130b8:	606020ef          	jal	156be <_localeconv_r>
   130bc:	411c                	lw	a5,0(a0)
   130be:	853e                	mv	a0,a5
   130c0:	d83e                	sw	a5,48(sp)
   130c2:	e06ff0ef          	jal	126c8 <strlen>
   130c6:	d62a                	sw	a0,44(sp)
   130c8:	c982                	sw	zero,208(sp)
   130ca:	cb82                	sw	zero,212(sp)
   130cc:	cd82                	sw	zero,216(sp)
   130ce:	cf82                	sw	zero,220(sp)
   130d0:	c409                	beqz	s0,130da <_vfprintf_r+0x3e>
   130d2:	5858                	lw	a4,52(s0)
   130d4:	e319                	bnez	a4,130da <_vfprintf_r+0x3e>
   130d6:	1960106f          	j	1426c <_vfprintf_r+0x11d0>
   130da:	00c49683          	lh	a3,12(s1)
   130de:	50f8                	lw	a4,100(s1)
   130e0:	01269613          	slli	a2,a3,0x12
   130e4:	00064a63          	bltz	a2,130f8 <_vfprintf_r+0x5c>
   130e8:	7679                	lui	a2,0xffffe
   130ea:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe006b>
   130ec:	6589                	lui	a1,0x2
   130ee:	8ecd                	or	a3,a3,a1
   130f0:	8f71                	and	a4,a4,a2
   130f2:	00d49623          	sh	a3,12(s1)
   130f6:	d0f8                	sw	a4,100(s1)
   130f8:	01271693          	slli	a3,a4,0x12
   130fc:	0006d463          	bgez	a3,13104 <_vfprintf_r+0x68>
   13100:	07b0106f          	j	1497a <_vfprintf_r+0x18de>
   13104:	00c49703          	lh	a4,12(s1)
   13108:	00877693          	andi	a3,a4,8
   1310c:	22068a63          	beqz	a3,13340 <_vfprintf_r+0x2a4>
   13110:	4894                	lw	a3,16(s1)
   13112:	22068763          	beqz	a3,13340 <_vfprintf_r+0x2a4>
   13116:	8b69                	andi	a4,a4,26
   13118:	46a9                	li	a3,10
   1311a:	24d70063          	beq	a4,a3,1335a <_vfprintf_r+0x2be>
   1311e:	1b312e23          	sw	s3,444(sp)
   13122:	1b412c23          	sw	s4,440(sp)
   13126:	1ba12023          	sw	s10,416(sp)
   1312a:	6771                	lui	a4,0x1c
   1312c:	1d212023          	sw	s2,448(sp)
   13130:	1b512a23          	sw	s5,436(sp)
   13134:	1b712623          	sw	s7,428(sp)
   13138:	1b812423          	sw	s8,424(sp)
   1313c:	1b912223          	sw	s9,420(sp)
   13140:	19b12e23          	sw	s11,412(sp)
   13144:	8d5a                	mv	s10,s6
   13146:	e4870793          	addi	a5,a4,-440 # 1be48 <__clzsi2+0x262>
   1314a:	000d4703          	lbu	a4,0(s10)
   1314e:	0ec10993          	addi	s3,sp,236
   13152:	6a71                	lui	s4,0x1c
   13154:	c3ce                	sw	s3,196(sp)
   13156:	c782                	sw	zero,204(sp)
   13158:	c582                	sw	zero,200(sp)
   1315a:	d002                	sw	zero,32(sp)
   1315c:	da02                	sw	zero,52(sp)
   1315e:	c082                	sw	zero,64(sp)
   13160:	de02                	sw	zero,60(sp)
   13162:	c482                	sw	zero,72(sp)
   13164:	c282                	sw	zero,68(sp)
   13166:	c602                	sw	zero,12(sp)
   13168:	cc3e                	sw	a5,24(sp)
   1316a:	844e                	mv	s0,s3
   1316c:	04ca0a13          	addi	s4,s4,76 # 1c04c <zeroes.0>
   13170:	18070063          	beqz	a4,132f0 <_vfprintf_r+0x254>
   13174:	896a                	mv	s2,s10
   13176:	02500693          	li	a3,37
   1317a:	2ed70a63          	beq	a4,a3,1346e <_vfprintf_r+0x3d2>
   1317e:	00194703          	lbu	a4,1(s2)
   13182:	0905                	addi	s2,s2,1
   13184:	fb7d                	bnez	a4,1317a <_vfprintf_r+0xde>
   13186:	41a90ab3          	sub	s5,s2,s10
   1318a:	17a90363          	beq	s2,s10,132f0 <_vfprintf_r+0x254>
   1318e:	46be                	lw	a3,204(sp)
   13190:	472e                	lw	a4,200(sp)
   13192:	01a42023          	sw	s10,0(s0)
   13196:	96d6                	add	a3,a3,s5
   13198:	0705                	addi	a4,a4,1
   1319a:	01542223          	sw	s5,4(s0)
   1319e:	c7b6                	sw	a3,204(sp)
   131a0:	c5ba                	sw	a4,200(sp)
   131a2:	469d                	li	a3,7
   131a4:	0421                	addi	s0,s0,8
   131a6:	2ce6cb63          	blt	a3,a4,1347c <_vfprintf_r+0x3e0>
   131aa:	47b2                	lw	a5,12(sp)
   131ac:	00094703          	lbu	a4,0(s2)
   131b0:	97d6                	add	a5,a5,s5
   131b2:	c63e                	sw	a5,12(sp)
   131b4:	12070e63          	beqz	a4,132f0 <_vfprintf_r+0x254>
   131b8:	00194883          	lbu	a7,1(s2)
   131bc:	0a0103a3          	sb	zero,167(sp)
   131c0:	0905                	addi	s2,s2,1
   131c2:	5afd                	li	s5,-1
   131c4:	4b81                	li	s7,0
   131c6:	4c81                	li	s9,0
   131c8:	05a00b13          	li	s6,90
   131cc:	0905                	addi	s2,s2,1
   131ce:	fe088793          	addi	a5,a7,-32
   131d2:	02fb6b63          	bltu	s6,a5,13208 <_vfprintf_r+0x16c>
   131d6:	4762                	lw	a4,24(sp)
   131d8:	078a                	slli	a5,a5,0x2
   131da:	97ba                	add	a5,a5,a4
   131dc:	439c                	lw	a5,0(a5)
   131de:	8782                	jr	a5
   131e0:	4b81                	li	s7,0
   131e2:	fd088793          	addi	a5,a7,-48
   131e6:	46a5                	li	a3,9
   131e8:	00094883          	lbu	a7,0(s2)
   131ec:	002b9713          	slli	a4,s7,0x2
   131f0:	9bba                	add	s7,s7,a4
   131f2:	0b86                	slli	s7,s7,0x1
   131f4:	9bbe                	add	s7,s7,a5
   131f6:	fd088793          	addi	a5,a7,-48
   131fa:	0905                	addi	s2,s2,1
   131fc:	fef6f6e3          	bgeu	a3,a5,131e8 <_vfprintf_r+0x14c>
   13200:	fe088793          	addi	a5,a7,-32
   13204:	fcfb79e3          	bgeu	s6,a5,131d6 <_vfprintf_r+0x13a>
   13208:	0e088463          	beqz	a7,132f0 <_vfprintf_r+0x254>
   1320c:	13110623          	sb	a7,300(sp)
   13210:	0a0103a3          	sb	zero,167(sp)
   13214:	4d85                	li	s11,1
   13216:	4b05                	li	s6,1
   13218:	12c10d13          	addi	s10,sp,300
   1321c:	c802                	sw	zero,16(sp)
   1321e:	4a81                	li	s5,0
   13220:	d402                	sw	zero,40(sp)
   13222:	d202                	sw	zero,36(sp)
   13224:	ce02                	sw	zero,28(sp)
   13226:	002cf293          	andi	t0,s9,2
   1322a:	00028363          	beqz	t0,13230 <_vfprintf_r+0x194>
   1322e:	0d89                	addi	s11,s11,2
   13230:	084cff93          	andi	t6,s9,132
   13234:	463e                	lw	a2,204(sp)
   13236:	000f9663          	bnez	t6,13242 <_vfprintf_r+0x1a6>
   1323a:	41bb8733          	sub	a4,s7,s11
   1323e:	0ce047e3          	bgtz	a4,13b0c <_vfprintf_r+0xa70>
   13242:	0a714703          	lbu	a4,167(sp)
   13246:	cf19                	beqz	a4,13264 <_vfprintf_r+0x1c8>
   13248:	472e                	lw	a4,200(sp)
   1324a:	0a710593          	addi	a1,sp,167
   1324e:	c00c                	sw	a1,0(s0)
   13250:	0605                	addi	a2,a2,1
   13252:	4585                	li	a1,1
   13254:	0705                	addi	a4,a4,1
   13256:	c04c                	sw	a1,4(s0)
   13258:	c7b2                	sw	a2,204(sp)
   1325a:	c5ba                	sw	a4,200(sp)
   1325c:	459d                	li	a1,7
   1325e:	0421                	addi	s0,s0,8
   13260:	2ee5c763          	blt	a1,a4,1354e <_vfprintf_r+0x4b2>
   13264:	00028f63          	beqz	t0,13282 <_vfprintf_r+0x1e6>
   13268:	472e                	lw	a4,200(sp)
   1326a:	4589                	li	a1,2
   1326c:	0609                	addi	a2,a2,2
   1326e:	0705                	addi	a4,a4,1
   13270:	113c                	addi	a5,sp,168
   13272:	c04c                	sw	a1,4(s0)
   13274:	c01c                	sw	a5,0(s0)
   13276:	c7b2                	sw	a2,204(sp)
   13278:	c5ba                	sw	a4,200(sp)
   1327a:	459d                	li	a1,7
   1327c:	0421                	addi	s0,s0,8
   1327e:	12e5cae3          	blt	a1,a4,13bb2 <_vfprintf_r+0xb16>
   13282:	08000713          	li	a4,128
   13286:	72ef8e63          	beq	t6,a4,139c2 <_vfprintf_r+0x926>
   1328a:	416a8ab3          	sub	s5,s5,s6
   1328e:	7d504a63          	bgtz	s5,13a62 <_vfprintf_r+0x9c6>
   13292:	100cf713          	andi	a4,s9,256
   13296:	60071e63          	bnez	a4,138b2 <_vfprintf_r+0x816>
   1329a:	47ae                	lw	a5,200(sp)
   1329c:	965a                	add	a2,a2,s6
   1329e:	01a42023          	sw	s10,0(s0)
   132a2:	0785                	addi	a5,a5,1
   132a4:	01642223          	sw	s6,4(s0)
   132a8:	c7b2                	sw	a2,204(sp)
   132aa:	c5be                	sw	a5,200(sp)
   132ac:	471d                	li	a4,7
   132ae:	36f74563          	blt	a4,a5,13618 <_vfprintf_r+0x57c>
   132b2:	0421                	addi	s0,s0,8
   132b4:	004cfe13          	andi	t3,s9,4
   132b8:	000e0663          	beqz	t3,132c4 <_vfprintf_r+0x228>
   132bc:	41bb8ab3          	sub	s5,s7,s11
   132c0:	115047e3          	bgtz	s5,13bce <_vfprintf_r+0xb32>
   132c4:	835e                	mv	t1,s7
   132c6:	01bbd363          	bge	s7,s11,132cc <_vfprintf_r+0x230>
   132ca:	836e                	mv	t1,s11
   132cc:	47b2                	lw	a5,12(sp)
   132ce:	979a                	add	a5,a5,t1
   132d0:	c63e                	sw	a5,12(sp)
   132d2:	00061ce3          	bnez	a2,13aea <_vfprintf_r+0xa4e>
   132d6:	47c2                	lw	a5,16(sp)
   132d8:	c582                	sw	zero,200(sp)
   132da:	c789                	beqz	a5,132e4 <_vfprintf_r+0x248>
   132dc:	45c2                	lw	a1,16(sp)
   132de:	4522                	lw	a0,8(sp)
   132e0:	df2ff0ef          	jal	128d2 <_free_r>
   132e4:	844e                	mv	s0,s3
   132e6:	8d4a                	mv	s10,s2
   132e8:	000d4703          	lbu	a4,0(s10)
   132ec:	e80714e3          	bnez	a4,13174 <_vfprintf_r+0xd8>
   132f0:	47be                	lw	a5,204(sp)
   132f2:	c399                	beqz	a5,132f8 <_vfprintf_r+0x25c>
   132f4:	31a0106f          	j	1460e <_vfprintf_r+0x1572>
   132f8:	00c4d783          	lhu	a5,12(s1)
   132fc:	1c012903          	lw	s2,448(sp)
   13300:	1bc12983          	lw	s3,444(sp)
   13304:	0407f793          	andi	a5,a5,64
   13308:	1b812a03          	lw	s4,440(sp)
   1330c:	1b412a83          	lw	s5,436(sp)
   13310:	1ac12b83          	lw	s7,428(sp)
   13314:	1a812c03          	lw	s8,424(sp)
   13318:	1a412c83          	lw	s9,420(sp)
   1331c:	1a012d03          	lw	s10,416(sp)
   13320:	19c12d83          	lw	s11,412(sp)
   13324:	c399                	beqz	a5,1332a <_vfprintf_r+0x28e>
   13326:	6540106f          	j	1497a <_vfprintf_r+0x18de>
   1332a:	1cc12083          	lw	ra,460(sp)
   1332e:	1c812403          	lw	s0,456(sp)
   13332:	4532                	lw	a0,12(sp)
   13334:	1c412483          	lw	s1,452(sp)
   13338:	1b012b03          	lw	s6,432(sp)
   1333c:	6179                	addi	sp,sp,464
   1333e:	8082                	ret
   13340:	4522                	lw	a0,8(sp)
   13342:	85a6                	mv	a1,s1
   13344:	192020ef          	jal	154d6 <__swsetup_r>
   13348:	c119                	beqz	a0,1334e <_vfprintf_r+0x2b2>
   1334a:	6300106f          	j	1497a <_vfprintf_r+0x18de>
   1334e:	00c49703          	lh	a4,12(s1)
   13352:	46a9                	li	a3,10
   13354:	8b69                	andi	a4,a4,26
   13356:	dcd714e3          	bne	a4,a3,1311e <_vfprintf_r+0x82>
   1335a:	00e49703          	lh	a4,14(s1)
   1335e:	dc0740e3          	bltz	a4,1311e <_vfprintf_r+0x82>
   13362:	46d2                	lw	a3,20(sp)
   13364:	4522                	lw	a0,8(sp)
   13366:	865a                	mv	a2,s6
   13368:	85a6                	mv	a1,s1
   1336a:	0e9010ef          	jal	14c52 <__sbprintf>
   1336e:	c62a                	sw	a0,12(sp)
   13370:	bf6d                	j	1332a <_vfprintf_r+0x28e>
   13372:	4c22                	lw	s8,8(sp)
   13374:	8562                	mv	a0,s8
   13376:	348020ef          	jal	156be <_localeconv_r>
   1337a:	415c                	lw	a5,4(a0)
   1337c:	853e                	mv	a0,a5
   1337e:	c2be                	sw	a5,68(sp)
   13380:	b48ff0ef          	jal	126c8 <strlen>
   13384:	87aa                	mv	a5,a0
   13386:	8562                	mv	a0,s8
   13388:	c4be                	sw	a5,72(sp)
   1338a:	8c3e                	mv	s8,a5
   1338c:	332020ef          	jal	156be <_localeconv_r>
   13390:	451c                	lw	a5,8(a0)
   13392:	de3e                	sw	a5,60(sp)
   13394:	280c16e3          	bnez	s8,13e20 <_vfprintf_r+0xd84>
   13398:	00094883          	lbu	a7,0(s2)
   1339c:	bd05                	j	131cc <_vfprintf_r+0x130>
   1339e:	00094883          	lbu	a7,0(s2)
   133a2:	020cec93          	ori	s9,s9,32
   133a6:	b51d                	j	131cc <_vfprintf_r+0x130>
   133a8:	010cec93          	ori	s9,s9,16
   133ac:	020cf793          	andi	a5,s9,32
   133b0:	26078e63          	beqz	a5,1362c <_vfprintf_r+0x590>
   133b4:	47d2                	lw	a5,20(sp)
   133b6:	00778c13          	addi	s8,a5,7
   133ba:	ff8c7c13          	andi	s8,s8,-8
   133be:	004c2783          	lw	a5,4(s8)
   133c2:	000c2b03          	lw	s6,0(s8)
   133c6:	008c0713          	addi	a4,s8,8
   133ca:	ca3a                	sw	a4,20(sp)
   133cc:	8dbe                	mv	s11,a5
   133ce:	2807c463          	bltz	a5,13656 <_vfprintf_r+0x5ba>
   133d2:	8ee6                	mv	t4,s9
   133d4:	380ac563          	bltz	s5,1375e <_vfprintf_r+0x6c2>
   133d8:	01bb67b3          	or	a5,s6,s11
   133dc:	f7fcfe93          	andi	t4,s9,-129
   133e0:	36079f63          	bnez	a5,1375e <_vfprintf_r+0x6c2>
   133e4:	380a9263          	bnez	s5,13768 <_vfprintf_r+0x6cc>
   133e8:	4b01                	li	s6,0
   133ea:	8cf6                	mv	s9,t4
   133ec:	19010d13          	addi	s10,sp,400
   133f0:	0a714703          	lbu	a4,167(sp)
   133f4:	8dd6                	mv	s11,s5
   133f6:	016ad363          	bge	s5,s6,133fc <_vfprintf_r+0x360>
   133fa:	8dda                	mv	s11,s6
   133fc:	c802                	sw	zero,16(sp)
   133fe:	d402                	sw	zero,40(sp)
   13400:	d202                	sw	zero,36(sp)
   13402:	ce02                	sw	zero,28(sp)
   13404:	e20701e3          	beqz	a4,13226 <_vfprintf_r+0x18a>
   13408:	0d85                	addi	s11,s11,1
   1340a:	bd31                	j	13226 <_vfprintf_r+0x18a>
   1340c:	010cec93          	ori	s9,s9,16
   13410:	020cf793          	andi	a5,s9,32
   13414:	2a078d63          	beqz	a5,136ce <_vfprintf_r+0x632>
   13418:	47d2                	lw	a5,20(sp)
   1341a:	00778c13          	addi	s8,a5,7
   1341e:	ff8c7c13          	andi	s8,s8,-8
   13422:	000c2b03          	lw	s6,0(s8)
   13426:	004c2d83          	lw	s11,4(s8)
   1342a:	008c0793          	addi	a5,s8,8
   1342e:	ca3e                	sw	a5,20(sp)
   13430:	bffcfe93          	andi	t4,s9,-1025
   13434:	4781                	li	a5,0
   13436:	4701                	li	a4,0
   13438:	0ae103a3          	sb	a4,167(sp)
   1343c:	220acd63          	bltz	s5,13676 <_vfprintf_r+0x5da>
   13440:	01bb6733          	or	a4,s6,s11
   13444:	f7fefc93          	andi	s9,t4,-129
   13448:	6c071063          	bnez	a4,13b08 <_vfprintf_r+0xa6c>
   1344c:	520a9763          	bnez	s5,1397a <_vfprintf_r+0x8de>
   13450:	180790e3          	bnez	a5,13dd0 <_vfprintf_r+0xd34>
   13454:	001efb13          	andi	s6,t4,1
   13458:	19010d13          	addi	s10,sp,400
   1345c:	f80b0ae3          	beqz	s6,133f0 <_vfprintf_r+0x354>
   13460:	03000793          	li	a5,48
   13464:	18f107a3          	sb	a5,399(sp)
   13468:	18f10d13          	addi	s10,sp,399
   1346c:	b751                	j	133f0 <_vfprintf_r+0x354>
   1346e:	41a90ab3          	sub	s5,s2,s10
   13472:	d1a91ee3          	bne	s2,s10,1318e <_vfprintf_r+0xf2>
   13476:	00094703          	lbu	a4,0(s2)
   1347a:	bb2d                	j	131b4 <_vfprintf_r+0x118>
   1347c:	4522                	lw	a0,8(sp)
   1347e:	01d0                	addi	a2,sp,196
   13480:	85a6                	mv	a1,s1
   13482:	065010ef          	jal	14ce6 <__sprint_r>
   13486:	e60519e3          	bnez	a0,132f8 <_vfprintf_r+0x25c>
   1348a:	844e                	mv	s0,s3
   1348c:	bb39                	j	131aa <_vfprintf_r+0x10e>
   1348e:	008cf713          	andi	a4,s9,8
   13492:	1c0716e3          	bnez	a4,13e5e <_vfprintf_r+0xdc2>
   13496:	47d2                	lw	a5,20(sp)
   13498:	0908                	addi	a0,sp,144
   1349a:	c846                	sw	a7,16(sp)
   1349c:	00778c13          	addi	s8,a5,7
   134a0:	ff8c7c13          	andi	s8,s8,-8
   134a4:	000c2583          	lw	a1,0(s8)
   134a8:	004c2603          	lw	a2,4(s8)
   134ac:	008c0793          	addi	a5,s8,8
   134b0:	ca3e                	sw	a5,20(sp)
   134b2:	5a8080ef          	jal	1ba5a <__extenddftf2>
   134b6:	45ca                	lw	a1,144(sp)
   134b8:	465a                	lw	a2,148(sp)
   134ba:	46ea                	lw	a3,152(sp)
   134bc:	477a                	lw	a4,156(sp)
   134be:	48c2                	lw	a7,16(sp)
   134c0:	0988                	addi	a0,sp,208
   134c2:	c846                	sw	a7,16(sp)
   134c4:	cfba                	sw	a4,220(sp)
   134c6:	c9ae                	sw	a1,208(sp)
   134c8:	cbb2                	sw	a2,212(sp)
   134ca:	cdb6                	sw	a3,216(sp)
   134cc:	776020ef          	jal	15c42 <_ldcheck>
   134d0:	d72a                	sw	a0,172(sp)
   134d2:	4709                	li	a4,2
   134d4:	48c2                	lw	a7,16(sp)
   134d6:	5ce50be3          	beq	a0,a4,142ac <_vfprintf_r+0x1210>
   134da:	4705                	li	a4,1
   134dc:	6ae505e3          	beq	a0,a4,14386 <_vfprintf_r+0x12ea>
   134e0:	06100713          	li	a4,97
   134e4:	2ae88ce3          	beq	a7,a4,13f9c <_vfprintf_r+0xf00>
   134e8:	04100713          	li	a4,65
   134ec:	05800793          	li	a5,88
   134f0:	2ae888e3          	beq	a7,a4,13fa0 <_vfprintf_r+0xf04>
   134f4:	577d                	li	a4,-1
   134f6:	00ea9463          	bne	s5,a4,134fe <_vfprintf_r+0x462>
   134fa:	6260106f          	j	14b20 <_vfprintf_r+0x1a84>
   134fe:	fdf8f713          	andi	a4,a7,-33
   13502:	04700693          	li	a3,71
   13506:	c802                	sw	zero,16(sp)
   13508:	00d71563          	bne	a4,a3,13512 <_vfprintf_r+0x476>
   1350c:	000a9363          	bnez	s5,13512 <_vfprintf_r+0x476>
   13510:	4a85                	li	s5,1
   13512:	4c7e                	lw	s8,220(sp)
   13514:	100ce793          	ori	a5,s9,256
   13518:	c6be                	sw	a5,76(sp)
   1351a:	dc02                	sw	zero,56(sp)
   1351c:	4fce                	lw	t6,208(sp)
   1351e:	4f5e                	lw	t5,212(sp)
   13520:	4eee                	lw	t4,216(sp)
   13522:	000c5963          	bgez	s8,13534 <_vfprintf_r+0x498>
   13526:	80000737          	lui	a4,0x80000
   1352a:	02d00793          	li	a5,45
   1352e:	01874c33          	xor	s8,a4,s8
   13532:	dc3e                	sw	a5,56(sp)
   13534:	fbf88713          	addi	a4,a7,-65
   13538:	02500693          	li	a3,37
   1353c:	28e6eee3          	bltu	a3,a4,13fd8 <_vfprintf_r+0xf3c>
   13540:	66f1                	lui	a3,0x1c
   13542:	070a                	slli	a4,a4,0x2
   13544:	fb468693          	addi	a3,a3,-76 # 1bfb4 <__clzsi2+0x3ce>
   13548:	9736                	add	a4,a4,a3
   1354a:	4318                	lw	a4,0(a4)
   1354c:	8702                	jr	a4
   1354e:	4522                	lw	a0,8(sp)
   13550:	01d0                	addi	a2,sp,196
   13552:	85a6                	mv	a1,s1
   13554:	c8c6                	sw	a7,80(sp)
   13556:	c6fe                	sw	t6,76(sp)
   13558:	dc16                	sw	t0,56(sp)
   1355a:	78c010ef          	jal	14ce6 <__sprint_r>
   1355e:	58051d63          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13562:	463e                	lw	a2,204(sp)
   13564:	48c6                	lw	a7,80(sp)
   13566:	4fb6                	lw	t6,76(sp)
   13568:	52e2                	lw	t0,56(sp)
   1356a:	844e                	mv	s0,s3
   1356c:	b9e5                	j	13264 <_vfprintf_r+0x1c8>
   1356e:	4aae                	lw	s5,200(sp)
   13570:	5782                	lw	a5,32(sp)
   13572:	4705                	li	a4,1
   13574:	01a42023          	sw	s10,0(s0)
   13578:	00160c13          	addi	s8,a2,1
   1357c:	0a85                	addi	s5,s5,1
   1357e:	00840b13          	addi	s6,s0,8
   13582:	7af75763          	bge	a4,a5,13d30 <_vfprintf_r+0xc94>
   13586:	4705                	li	a4,1
   13588:	c058                	sw	a4,4(s0)
   1358a:	c7e2                	sw	s8,204(sp)
   1358c:	c5d6                	sw	s5,200(sp)
   1358e:	471d                	li	a4,7
   13590:	395741e3          	blt	a4,s5,14112 <_vfprintf_r+0x1076>
   13594:	57b2                	lw	a5,44(sp)
   13596:	5742                	lw	a4,48(sp)
   13598:	0a85                	addi	s5,s5,1
   1359a:	9c3e                	add	s8,s8,a5
   1359c:	00eb2023          	sw	a4,0(s6)
   135a0:	00fb2223          	sw	a5,4(s6)
   135a4:	c7e2                	sw	s8,204(sp)
   135a6:	c5d6                	sw	s5,200(sp)
   135a8:	471d                	li	a4,7
   135aa:	0b21                	addi	s6,s6,8
   135ac:	37574fe3          	blt	a4,s5,1412a <_vfprintf_r+0x108e>
   135b0:	474e                	lw	a4,208(sp)
   135b2:	5782                	lw	a5,32(sp)
   135b4:	010c                	addi	a1,sp,128
   135b6:	c93a                	sw	a4,144(sp)
   135b8:	475e                	lw	a4,212(sp)
   135ba:	0908                	addi	a0,sp,144
   135bc:	c102                	sw	zero,128(sp)
   135be:	cb3a                	sw	a4,148(sp)
   135c0:	476e                	lw	a4,216(sp)
   135c2:	c302                	sw	zero,132(sp)
   135c4:	c502                	sw	zero,136(sp)
   135c6:	cd3a                	sw	a4,152(sp)
   135c8:	477e                	lw	a4,220(sp)
   135ca:	c702                	sw	zero,140(sp)
   135cc:	fff78413          	addi	s0,a5,-1
   135d0:	cf3a                	sw	a4,156(sp)
   135d2:	1a4060ef          	jal	19776 <__eqtf2>
   135d6:	78050263          	beqz	a0,13d5a <_vfprintf_r+0xcbe>
   135da:	001d0793          	addi	a5,s10,1
   135de:	0a85                	addi	s5,s5,1
   135e0:	9c22                	add	s8,s8,s0
   135e2:	00fb2023          	sw	a5,0(s6)
   135e6:	008b2223          	sw	s0,4(s6)
   135ea:	c7e2                	sw	s8,204(sp)
   135ec:	c5d6                	sw	s5,200(sp)
   135ee:	479d                	li	a5,7
   135f0:	0b21                	addi	s6,s6,8
   135f2:	7557c963          	blt	a5,s5,13d44 <_vfprintf_r+0xca8>
   135f6:	4686                	lw	a3,64(sp)
   135f8:	1958                	addi	a4,sp,180
   135fa:	001a8793          	addi	a5,s5,1
   135fe:	01868633          	add	a2,a3,s8
   13602:	00eb2023          	sw	a4,0(s6)
   13606:	00db2223          	sw	a3,4(s6)
   1360a:	c7b2                	sw	a2,204(sp)
   1360c:	c5be                	sw	a5,200(sp)
   1360e:	471d                	li	a4,7
   13610:	008b0413          	addi	s0,s6,8
   13614:	caf750e3          	bge	a4,a5,132b4 <_vfprintf_r+0x218>
   13618:	4522                	lw	a0,8(sp)
   1361a:	01d0                	addi	a2,sp,196
   1361c:	85a6                	mv	a1,s1
   1361e:	6c8010ef          	jal	14ce6 <__sprint_r>
   13622:	4c051b63          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13626:	463e                	lw	a2,204(sp)
   13628:	844e                	mv	s0,s3
   1362a:	b169                	j	132b4 <_vfprintf_r+0x218>
   1362c:	4752                	lw	a4,20(sp)
   1362e:	010cf793          	andi	a5,s9,16
   13632:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe206c>
   13636:	0711                	addi	a4,a4,4
   13638:	ca3a                	sw	a4,20(sp)
   1363a:	7c079e63          	bnez	a5,13e16 <_vfprintf_r+0xd7a>
   1363e:	040cf793          	andi	a5,s9,64
   13642:	7c078663          	beqz	a5,13e0e <_vfprintf_r+0xd72>
   13646:	0b42                	slli	s6,s6,0x10
   13648:	410b5b13          	srai	s6,s6,0x10
   1364c:	41fb5d93          	srai	s11,s6,0x1f
   13650:	87ee                	mv	a5,s11
   13652:	d807d0e3          	bgez	a5,133d2 <_vfprintf_r+0x336>
   13656:	02d00713          	li	a4,45
   1365a:	016037b3          	snez	a5,s6
   1365e:	41b00db3          	neg	s11,s11
   13662:	0ae103a3          	sb	a4,167(sp)
   13666:	40fd8db3          	sub	s11,s11,a5
   1366a:	41600b33          	neg	s6,s6
   1366e:	8ee6                	mv	t4,s9
   13670:	4785                	li	a5,1
   13672:	dc0ad7e3          	bgez	s5,13440 <_vfprintf_r+0x3a4>
   13676:	4705                	li	a4,1
   13678:	0ee78363          	beq	a5,a4,1375e <_vfprintf_r+0x6c2>
   1367c:	4709                	li	a4,2
   1367e:	30e78763          	beq	a5,a4,1398c <_vfprintf_r+0x8f0>
   13682:	19010d13          	addi	s10,sp,400
   13686:	01dd9793          	slli	a5,s11,0x1d
   1368a:	007b7713          	andi	a4,s6,7
   1368e:	003b5b13          	srli	s6,s6,0x3
   13692:	03070713          	addi	a4,a4,48
   13696:	0167eb33          	or	s6,a5,s6
   1369a:	003ddd93          	srli	s11,s11,0x3
   1369e:	feed0fa3          	sb	a4,-1(s10)
   136a2:	01bb67b3          	or	a5,s6,s11
   136a6:	866a                	mv	a2,s10
   136a8:	1d7d                	addi	s10,s10,-1
   136aa:	fff1                	bnez	a5,13686 <_vfprintf_r+0x5ea>
   136ac:	001ef693          	andi	a3,t4,1
   136b0:	30068463          	beqz	a3,139b8 <_vfprintf_r+0x91c>
   136b4:	03000693          	li	a3,48
   136b8:	30d70063          	beq	a4,a3,139b8 <_vfprintf_r+0x91c>
   136bc:	1679                	addi	a2,a2,-2
   136be:	0b1c                	addi	a5,sp,400
   136c0:	fedd0fa3          	sb	a3,-1(s10)
   136c4:	40c78b33          	sub	s6,a5,a2
   136c8:	8cf6                	mv	s9,t4
   136ca:	8d32                	mv	s10,a2
   136cc:	b315                	j	133f0 <_vfprintf_r+0x354>
   136ce:	4752                	lw	a4,20(sp)
   136d0:	010cf793          	andi	a5,s9,16
   136d4:	00072b03          	lw	s6,0(a4)
   136d8:	0711                	addi	a4,a4,4
   136da:	ca3a                	sw	a4,20(sp)
   136dc:	72079663          	bnez	a5,13e08 <_vfprintf_r+0xd6c>
   136e0:	040cf793          	andi	a5,s9,64
   136e4:	70078e63          	beqz	a5,13e00 <_vfprintf_r+0xd64>
   136e8:	0b42                	slli	s6,s6,0x10
   136ea:	010b5b13          	srli	s6,s6,0x10
   136ee:	4d81                	li	s11,0
   136f0:	b381                	j	13430 <_vfprintf_r+0x394>
   136f2:	4752                	lw	a4,20(sp)
   136f4:	0a0103a3          	sb	zero,167(sp)
   136f8:	4d85                	li	s11,1
   136fa:	431c                	lw	a5,0(a4)
   136fc:	0711                	addi	a4,a4,4
   136fe:	ca3a                	sw	a4,20(sp)
   13700:	12f10623          	sb	a5,300(sp)
   13704:	4b05                	li	s6,1
   13706:	12c10d13          	addi	s10,sp,300
   1370a:	be09                	j	1321c <_vfprintf_r+0x180>
   1370c:	47d2                	lw	a5,20(sp)
   1370e:	0a0103a3          	sb	zero,167(sp)
   13712:	0007ad03          	lw	s10,0(a5)
   13716:	00478c13          	addi	s8,a5,4
   1371a:	7e0d0a63          	beqz	s10,13f0e <_vfprintf_r+0xe72>
   1371e:	420ac4e3          	bltz	s5,14346 <_vfprintf_r+0x12aa>
   13722:	8656                	mv	a2,s5
   13724:	4581                	li	a1,0
   13726:	856a                	mv	a0,s10
   13728:	ca46                	sw	a7,20(sp)
   1372a:	687010ef          	jal	155b0 <memchr>
   1372e:	c82a                	sw	a0,16(sp)
   13730:	48d2                	lw	a7,20(sp)
   13732:	e119                	bnez	a0,13738 <_vfprintf_r+0x69c>
   13734:	25c0106f          	j	14990 <_vfprintf_r+0x18f4>
   13738:	47c2                	lw	a5,16(sp)
   1373a:	0a714703          	lbu	a4,167(sp)
   1373e:	ca62                	sw	s8,20(sp)
   13740:	41a78b33          	sub	s6,a5,s10
   13744:	fffb4693          	not	a3,s6
   13748:	86fd                	srai	a3,a3,0x1f
   1374a:	c802                	sw	zero,16(sp)
   1374c:	d402                	sw	zero,40(sp)
   1374e:	d202                	sw	zero,36(sp)
   13750:	ce02                	sw	zero,28(sp)
   13752:	00db7db3          	and	s11,s6,a3
   13756:	4a81                	li	s5,0
   13758:	ca0718e3          	bnez	a4,13408 <_vfprintf_r+0x36c>
   1375c:	b4e9                	j	13226 <_vfprintf_r+0x18a>
   1375e:	1e0d98e3          	bnez	s11,1414e <_vfprintf_r+0x10b2>
   13762:	47a5                	li	a5,9
   13764:	1f67e5e3          	bltu	a5,s6,1414e <_vfprintf_r+0x10b2>
   13768:	030b0b13          	addi	s6,s6,48
   1376c:	196107a3          	sb	s6,399(sp)
   13770:	8cf6                	mv	s9,t4
   13772:	4b05                	li	s6,1
   13774:	18f10d13          	addi	s10,sp,399
   13778:	b9a5                	j	133f0 <_vfprintf_r+0x354>
   1377a:	47d2                	lw	a5,20(sp)
   1377c:	0007ab83          	lw	s7,0(a5)
   13780:	0791                	addi	a5,a5,4
   13782:	660bd163          	bgez	s7,13de4 <_vfprintf_r+0xd48>
   13786:	41700bb3          	neg	s7,s7
   1378a:	ca3e                	sw	a5,20(sp)
   1378c:	00094883          	lbu	a7,0(s2)
   13790:	004cec93          	ori	s9,s9,4
   13794:	bc25                	j	131cc <_vfprintf_r+0x130>
   13796:	02b00793          	li	a5,43
   1379a:	00094883          	lbu	a7,0(s2)
   1379e:	0af103a3          	sb	a5,167(sp)
   137a2:	b42d                	j	131cc <_vfprintf_r+0x130>
   137a4:	00094883          	lbu	a7,0(s2)
   137a8:	080cec93          	ori	s9,s9,128
   137ac:	b405                	j	131cc <_vfprintf_r+0x130>
   137ae:	00094883          	lbu	a7,0(s2)
   137b2:	02a00793          	li	a5,42
   137b6:	00190693          	addi	a3,s2,1
   137ba:	00f89463          	bne	a7,a5,137c2 <_vfprintf_r+0x726>
   137be:	44c0106f          	j	14c0a <_vfprintf_r+0x1b6e>
   137c2:	fd088793          	addi	a5,a7,-48
   137c6:	4725                	li	a4,9
   137c8:	4a81                	li	s5,0
   137ca:	4625                	li	a2,9
   137cc:	02f76063          	bltu	a4,a5,137ec <_vfprintf_r+0x750>
   137d0:	0006c883          	lbu	a7,0(a3)
   137d4:	002a9713          	slli	a4,s5,0x2
   137d8:	9aba                	add	s5,s5,a4
   137da:	0a86                	slli	s5,s5,0x1
   137dc:	9abe                	add	s5,s5,a5
   137de:	fd088793          	addi	a5,a7,-48
   137e2:	0685                	addi	a3,a3,1
   137e4:	fef676e3          	bgeu	a2,a5,137d0 <_vfprintf_r+0x734>
   137e8:	680ac963          	bltz	s5,13e7a <_vfprintf_r+0xdde>
   137ec:	8936                	mv	s2,a3
   137ee:	b2c5                	j	131ce <_vfprintf_r+0x132>
   137f0:	00094883          	lbu	a7,0(s2)
   137f4:	001cec93          	ori	s9,s9,1
   137f8:	bad1                	j	131cc <_vfprintf_r+0x130>
   137fa:	0a714783          	lbu	a5,167(sp)
   137fe:	00094883          	lbu	a7,0(s2)
   13802:	9c0795e3          	bnez	a5,131cc <_vfprintf_r+0x130>
   13806:	02000793          	li	a5,32
   1380a:	0af103a3          	sb	a5,167(sp)
   1380e:	ba7d                	j	131cc <_vfprintf_r+0x130>
   13810:	010cee93          	ori	t4,s9,16
   13814:	020ef793          	andi	a5,t4,32
   13818:	58078a63          	beqz	a5,13dac <_vfprintf_r+0xd10>
   1381c:	47d2                	lw	a5,20(sp)
   1381e:	00778c13          	addi	s8,a5,7
   13822:	ff8c7c13          	andi	s8,s8,-8
   13826:	008c0793          	addi	a5,s8,8
   1382a:	ca3e                	sw	a5,20(sp)
   1382c:	000c2b03          	lw	s6,0(s8)
   13830:	004c2d83          	lw	s11,4(s8)
   13834:	4785                	li	a5,1
   13836:	b101                	j	13436 <_vfprintf_r+0x39a>
   13838:	00094883          	lbu	a7,0(s2)
   1383c:	008cec93          	ori	s9,s9,8
   13840:	b271                	j	131cc <_vfprintf_r+0x130>
   13842:	4752                	lw	a4,20(sp)
   13844:	67a1                	lui	a5,0x8
   13846:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   1384a:	0af11423          	sh	a5,168(sp)
   1384e:	00470793          	addi	a5,a4,4
   13852:	ca3e                	sw	a5,20(sp)
   13854:	67f1                	lui	a5,0x1c
   13856:	cf078793          	addi	a5,a5,-784 # 1bcf0 <__clzsi2+0x10a>
   1385a:	da3e                	sw	a5,52(sp)
   1385c:	00072b03          	lw	s6,0(a4)
   13860:	4d81                	li	s11,0
   13862:	002cee93          	ori	t4,s9,2
   13866:	4789                	li	a5,2
   13868:	07800893          	li	a7,120
   1386c:	b6e9                	j	13436 <_vfprintf_r+0x39a>
   1386e:	020cf793          	andi	a5,s9,32
   13872:	5c078463          	beqz	a5,13e3a <_vfprintf_r+0xd9e>
   13876:	47d2                	lw	a5,20(sp)
   13878:	46b2                	lw	a3,12(sp)
   1387a:	439c                	lw	a5,0(a5)
   1387c:	41f6d713          	srai	a4,a3,0x1f
   13880:	c394                	sw	a3,0(a5)
   13882:	c3d8                	sw	a4,4(a5)
   13884:	47d2                	lw	a5,20(sp)
   13886:	8d4a                	mv	s10,s2
   13888:	0791                	addi	a5,a5,4
   1388a:	ca3e                	sw	a5,20(sp)
   1388c:	bcb1                	j	132e8 <_vfprintf_r+0x24c>
   1388e:	00094883          	lbu	a7,0(s2)
   13892:	06c00793          	li	a5,108
   13896:	64f88b63          	beq	a7,a5,13eec <_vfprintf_r+0xe50>
   1389a:	010cec93          	ori	s9,s9,16
   1389e:	b23d                	j	131cc <_vfprintf_r+0x130>
   138a0:	00094883          	lbu	a7,0(s2)
   138a4:	06800793          	li	a5,104
   138a8:	62f88b63          	beq	a7,a5,13ede <_vfprintf_r+0xe42>
   138ac:	040cec93          	ori	s9,s9,64
   138b0:	ba31                	j	131cc <_vfprintf_r+0x130>
   138b2:	06500713          	li	a4,101
   138b6:	cb175ce3          	bge	a4,a7,1356e <_vfprintf_r+0x4d2>
   138ba:	474e                	lw	a4,208(sp)
   138bc:	010c                	addi	a1,sp,128
   138be:	0908                	addi	a0,sp,144
   138c0:	c93a                	sw	a4,144(sp)
   138c2:	475e                	lw	a4,212(sp)
   138c4:	dc32                	sw	a2,56(sp)
   138c6:	c102                	sw	zero,128(sp)
   138c8:	cb3a                	sw	a4,148(sp)
   138ca:	476e                	lw	a4,216(sp)
   138cc:	c302                	sw	zero,132(sp)
   138ce:	c502                	sw	zero,136(sp)
   138d0:	cd3a                	sw	a4,152(sp)
   138d2:	477e                	lw	a4,220(sp)
   138d4:	c702                	sw	zero,140(sp)
   138d6:	cf3a                	sw	a4,156(sp)
   138d8:	69f050ef          	jal	19776 <__eqtf2>
   138dc:	5662                	lw	a2,56(sp)
   138de:	36051363          	bnez	a0,13c44 <_vfprintf_r+0xba8>
   138e2:	47ae                	lw	a5,200(sp)
   138e4:	6771                	lui	a4,0x1c
   138e6:	d2070713          	addi	a4,a4,-736 # 1bd20 <__clzsi2+0x13a>
   138ea:	c018                	sw	a4,0(s0)
   138ec:	0605                	addi	a2,a2,1
   138ee:	4705                	li	a4,1
   138f0:	0785                	addi	a5,a5,1
   138f2:	c058                	sw	a4,4(s0)
   138f4:	c7b2                	sw	a2,204(sp)
   138f6:	c5be                	sw	a5,200(sp)
   138f8:	471d                	li	a4,7
   138fa:	0421                	addi	s0,s0,8
   138fc:	16f74de3          	blt	a4,a5,14276 <_vfprintf_r+0x11da>
   13900:	57ba                	lw	a5,172(sp)
   13902:	5702                	lw	a4,32(sp)
   13904:	4ce7db63          	bge	a5,a4,13dda <_vfprintf_r+0xd3e>
   13908:	57c2                	lw	a5,48(sp)
   1390a:	5732                	lw	a4,44(sp)
   1390c:	0421                	addi	s0,s0,8
   1390e:	fef42c23          	sw	a5,-8(s0)
   13912:	47ae                	lw	a5,200(sp)
   13914:	963a                	add	a2,a2,a4
   13916:	fee42e23          	sw	a4,-4(s0)
   1391a:	0785                	addi	a5,a5,1
   1391c:	c7b2                	sw	a2,204(sp)
   1391e:	c5be                	sw	a5,200(sp)
   13920:	471d                	li	a4,7
   13922:	5cf74c63          	blt	a4,a5,13efa <_vfprintf_r+0xe5e>
   13926:	5782                	lw	a5,32(sp)
   13928:	fff78a93          	addi	s5,a5,-1
   1392c:	995054e3          	blez	s5,132b4 <_vfprintf_r+0x218>
   13930:	6871                	lui	a6,0x1c
   13932:	04c80813          	addi	a6,a6,76 # 1c04c <zeroes.0>
   13936:	4741                	li	a4,16
   13938:	47ae                	lw	a5,200(sp)
   1393a:	4b41                	li	s6,16
   1393c:	4c1d                	li	s8,7
   1393e:	8d42                	mv	s10,a6
   13940:	01574763          	blt	a4,s5,1394e <_vfprintf_r+0x8b2>
   13944:	14b0006f          	j	1428e <_vfprintf_r+0x11f2>
   13948:	1ac1                	addi	s5,s5,-16
   1394a:	155b51e3          	bge	s6,s5,1428c <_vfprintf_r+0x11f0>
   1394e:	0641                	addi	a2,a2,16
   13950:	0785                	addi	a5,a5,1
   13952:	01a42023          	sw	s10,0(s0)
   13956:	01642223          	sw	s6,4(s0)
   1395a:	c7b2                	sw	a2,204(sp)
   1395c:	c5be                	sw	a5,200(sp)
   1395e:	0421                	addi	s0,s0,8
   13960:	fefc54e3          	bge	s8,a5,13948 <_vfprintf_r+0x8ac>
   13964:	4522                	lw	a0,8(sp)
   13966:	01d0                	addi	a2,sp,196
   13968:	85a6                	mv	a1,s1
   1396a:	37c010ef          	jal	14ce6 <__sprint_r>
   1396e:	18051563          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13972:	463e                	lw	a2,204(sp)
   13974:	47ae                	lw	a5,200(sp)
   13976:	844e                	mv	s0,s3
   13978:	bfc1                	j	13948 <_vfprintf_r+0x8ac>
   1397a:	4705                	li	a4,1
   1397c:	00e79463          	bne	a5,a4,13984 <_vfprintf_r+0x8e8>
   13980:	0f20106f          	j	14a72 <_vfprintf_r+0x19d6>
   13984:	4709                	li	a4,2
   13986:	8ee6                	mv	t4,s9
   13988:	cee79de3          	bne	a5,a4,13682 <_vfprintf_r+0x5e6>
   1398c:	56d2                	lw	a3,52(sp)
   1398e:	19010d13          	addi	s10,sp,400
   13992:	00fb7793          	andi	a5,s6,15
   13996:	97b6                	add	a5,a5,a3
   13998:	0007c703          	lbu	a4,0(a5)
   1399c:	004b5b13          	srli	s6,s6,0x4
   139a0:	01cd9793          	slli	a5,s11,0x1c
   139a4:	0167eb33          	or	s6,a5,s6
   139a8:	004ddd93          	srli	s11,s11,0x4
   139ac:	feed0fa3          	sb	a4,-1(s10)
   139b0:	01bb67b3          	or	a5,s6,s11
   139b4:	1d7d                	addi	s10,s10,-1
   139b6:	fff1                	bnez	a5,13992 <_vfprintf_r+0x8f6>
   139b8:	0b1c                	addi	a5,sp,400
   139ba:	41a78b33          	sub	s6,a5,s10
   139be:	8cf6                	mv	s9,t4
   139c0:	bc05                	j	133f0 <_vfprintf_r+0x354>
   139c2:	41bb8c33          	sub	s8,s7,s11
   139c6:	8d8052e3          	blez	s8,1328a <_vfprintf_r+0x1ee>
   139ca:	6871                	lui	a6,0x1c
   139cc:	4541                	li	a0,16
   139ce:	45ae                	lw	a1,200(sp)
   139d0:	04c80813          	addi	a6,a6,76 # 1c04c <zeroes.0>
   139d4:	05855f63          	bge	a0,s8,13a32 <_vfprintf_r+0x996>
   139d8:	dc4a                	sw	s2,56(sp)
   139da:	87a2                	mv	a5,s0
   139dc:	4ec1                	li	t4,16
   139de:	8462                	mv	s0,s8
   139e0:	4f9d                	li	t6,7
   139e2:	8c5a                	mv	s8,s6
   139e4:	8942                	mv	s2,a6
   139e6:	8b56                	mv	s6,s5
   139e8:	8ac6                	mv	s5,a7
   139ea:	a021                	j	139f2 <_vfprintf_r+0x956>
   139ec:	1441                	addi	s0,s0,-16
   139ee:	028edb63          	bge	t4,s0,13a24 <_vfprintf_r+0x988>
   139f2:	0641                	addi	a2,a2,16
   139f4:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   139f6:	0127a023          	sw	s2,0(a5)
   139fa:	01d7a223          	sw	t4,4(a5)
   139fe:	c7b2                	sw	a2,204(sp)
   13a00:	c5ae                	sw	a1,200(sp)
   13a02:	07a1                	addi	a5,a5,8
   13a04:	febfd4e3          	bge	t6,a1,139ec <_vfprintf_r+0x950>
   13a08:	4522                	lw	a0,8(sp)
   13a0a:	01d0                	addi	a2,sp,196
   13a0c:	85a6                	mv	a1,s1
   13a0e:	2d8010ef          	jal	14ce6 <__sprint_r>
   13a12:	e17d                	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13a14:	4ec1                	li	t4,16
   13a16:	1441                	addi	s0,s0,-16
   13a18:	463e                	lw	a2,204(sp)
   13a1a:	45ae                	lw	a1,200(sp)
   13a1c:	87ce                	mv	a5,s3
   13a1e:	4f9d                	li	t6,7
   13a20:	fc8ec9e3          	blt	t4,s0,139f2 <_vfprintf_r+0x956>
   13a24:	884a                	mv	a6,s2
   13a26:	5962                	lw	s2,56(sp)
   13a28:	88d6                	mv	a7,s5
   13a2a:	8ada                	mv	s5,s6
   13a2c:	8b62                	mv	s6,s8
   13a2e:	8c22                	mv	s8,s0
   13a30:	843e                	mv	s0,a5
   13a32:	9662                	add	a2,a2,s8
   13a34:	0585                	addi	a1,a1,1
   13a36:	01042023          	sw	a6,0(s0)
   13a3a:	01842223          	sw	s8,4(s0)
   13a3e:	c7b2                	sw	a2,204(sp)
   13a40:	c5ae                	sw	a1,200(sp)
   13a42:	471d                	li	a4,7
   13a44:	0421                	addi	s0,s0,8
   13a46:	84b752e3          	bge	a4,a1,1328a <_vfprintf_r+0x1ee>
   13a4a:	4522                	lw	a0,8(sp)
   13a4c:	01d0                	addi	a2,sp,196
   13a4e:	85a6                	mv	a1,s1
   13a50:	dc46                	sw	a7,56(sp)
   13a52:	294010ef          	jal	14ce6 <__sprint_r>
   13a56:	e14d                	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13a58:	463e                	lw	a2,204(sp)
   13a5a:	58e2                	lw	a7,56(sp)
   13a5c:	844e                	mv	s0,s3
   13a5e:	82dff06f          	j	1328a <_vfprintf_r+0x1ee>
   13a62:	6871                	lui	a6,0x1c
   13a64:	4741                	li	a4,16
   13a66:	45ae                	lw	a1,200(sp)
   13a68:	04c80813          	addi	a6,a6,76 # 1c04c <zeroes.0>
   13a6c:	05575763          	bge	a4,s5,13aba <_vfprintf_r+0xa1e>
   13a70:	87a2                	mv	a5,s0
   13a72:	4741                	li	a4,16
   13a74:	8456                	mv	s0,s5
   13a76:	4c1d                	li	s8,7
   13a78:	dc46                	sw	a7,56(sp)
   13a7a:	8ad2                	mv	s5,s4
   13a7c:	a021                	j	13a84 <_vfprintf_r+0x9e8>
   13a7e:	1441                	addi	s0,s0,-16
   13a80:	02875963          	bge	a4,s0,13ab2 <_vfprintf_r+0xa16>
   13a84:	0641                	addi	a2,a2,16
   13a86:	0585                	addi	a1,a1,1
   13a88:	0147a023          	sw	s4,0(a5)
   13a8c:	c3d8                	sw	a4,4(a5)
   13a8e:	c7b2                	sw	a2,204(sp)
   13a90:	c5ae                	sw	a1,200(sp)
   13a92:	07a1                	addi	a5,a5,8
   13a94:	febc55e3          	bge	s8,a1,13a7e <_vfprintf_r+0x9e2>
   13a98:	4522                	lw	a0,8(sp)
   13a9a:	01d0                	addi	a2,sp,196
   13a9c:	85a6                	mv	a1,s1
   13a9e:	248010ef          	jal	14ce6 <__sprint_r>
   13aa2:	e939                	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13aa4:	4741                	li	a4,16
   13aa6:	1441                	addi	s0,s0,-16
   13aa8:	463e                	lw	a2,204(sp)
   13aaa:	45ae                	lw	a1,200(sp)
   13aac:	87ce                	mv	a5,s3
   13aae:	fc874be3          	blt	a4,s0,13a84 <_vfprintf_r+0x9e8>
   13ab2:	58e2                	lw	a7,56(sp)
   13ab4:	8856                	mv	a6,s5
   13ab6:	8aa2                	mv	s5,s0
   13ab8:	843e                	mv	s0,a5
   13aba:	9656                	add	a2,a2,s5
   13abc:	0585                	addi	a1,a1,1
   13abe:	01042023          	sw	a6,0(s0)
   13ac2:	01542223          	sw	s5,4(s0)
   13ac6:	c7b2                	sw	a2,204(sp)
   13ac8:	c5ae                	sw	a1,200(sp)
   13aca:	471d                	li	a4,7
   13acc:	0421                	addi	s0,s0,8
   13ace:	fcb75263          	bge	a4,a1,13292 <_vfprintf_r+0x1f6>
   13ad2:	4522                	lw	a0,8(sp)
   13ad4:	01d0                	addi	a2,sp,196
   13ad6:	85a6                	mv	a1,s1
   13ad8:	dc46                	sw	a7,56(sp)
   13ada:	20c010ef          	jal	14ce6 <__sprint_r>
   13ade:	ed09                	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13ae0:	463e                	lw	a2,204(sp)
   13ae2:	58e2                	lw	a7,56(sp)
   13ae4:	844e                	mv	s0,s3
   13ae6:	facff06f          	j	13292 <_vfprintf_r+0x1f6>
   13aea:	4522                	lw	a0,8(sp)
   13aec:	01d0                	addi	a2,sp,196
   13aee:	85a6                	mv	a1,s1
   13af0:	1f6010ef          	jal	14ce6 <__sprint_r>
   13af4:	fe050163          	beqz	a0,132d6 <_vfprintf_r+0x23a>
   13af8:	45c2                	lw	a1,16(sp)
   13afa:	fe058f63          	beqz	a1,132f8 <_vfprintf_r+0x25c>
   13afe:	4522                	lw	a0,8(sp)
   13b00:	dd3fe0ef          	jal	128d2 <_free_r>
   13b04:	ff4ff06f          	j	132f8 <_vfprintf_r+0x25c>
   13b08:	8ee6                	mv	t4,s9
   13b0a:	b6b5                	j	13676 <_vfprintf_r+0x5da>
   13b0c:	6871                	lui	a6,0x1c
   13b0e:	4541                	li	a0,16
   13b10:	45ae                	lw	a1,200(sp)
   13b12:	05c80c13          	addi	s8,a6,92 # 1c05c <blanks.1>
   13b16:	06e55363          	bge	a0,a4,13b7c <_vfprintf_r+0xae0>
   13b1a:	c8ca                	sw	s2,80(sp)
   13b1c:	87a2                	mv	a5,s0
   13b1e:	8962                	mv	s2,s8
   13b20:	4ec1                	li	t4,16
   13b22:	8c5a                	mv	s8,s6
   13b24:	439d                	li	t2,7
   13b26:	8b56                	mv	s6,s5
   13b28:	dc16                	sw	t0,56(sp)
   13b2a:	c6fe                	sw	t6,76(sp)
   13b2c:	843a                	mv	s0,a4
   13b2e:	8ac6                	mv	s5,a7
   13b30:	a021                	j	13b38 <_vfprintf_r+0xa9c>
   13b32:	1441                	addi	s0,s0,-16
   13b34:	028edb63          	bge	t4,s0,13b6a <_vfprintf_r+0xace>
   13b38:	0641                	addi	a2,a2,16
   13b3a:	0585                	addi	a1,a1,1
   13b3c:	0127a023          	sw	s2,0(a5)
   13b40:	01d7a223          	sw	t4,4(a5)
   13b44:	c7b2                	sw	a2,204(sp)
   13b46:	c5ae                	sw	a1,200(sp)
   13b48:	07a1                	addi	a5,a5,8
   13b4a:	feb3d4e3          	bge	t2,a1,13b32 <_vfprintf_r+0xa96>
   13b4e:	4522                	lw	a0,8(sp)
   13b50:	01d0                	addi	a2,sp,196
   13b52:	85a6                	mv	a1,s1
   13b54:	192010ef          	jal	14ce6 <__sprint_r>
   13b58:	f145                	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13b5a:	4ec1                	li	t4,16
   13b5c:	1441                	addi	s0,s0,-16
   13b5e:	463e                	lw	a2,204(sp)
   13b60:	45ae                	lw	a1,200(sp)
   13b62:	87ce                	mv	a5,s3
   13b64:	439d                	li	t2,7
   13b66:	fc8ec9e3          	blt	t4,s0,13b38 <_vfprintf_r+0xa9c>
   13b6a:	88d6                	mv	a7,s5
   13b6c:	52e2                	lw	t0,56(sp)
   13b6e:	8ada                	mv	s5,s6
   13b70:	4fb6                	lw	t6,76(sp)
   13b72:	8b62                	mv	s6,s8
   13b74:	8c4a                	mv	s8,s2
   13b76:	4946                	lw	s2,80(sp)
   13b78:	8722                	mv	a4,s0
   13b7a:	843e                	mv	s0,a5
   13b7c:	963a                	add	a2,a2,a4
   13b7e:	0585                	addi	a1,a1,1
   13b80:	c058                	sw	a4,4(s0)
   13b82:	01842023          	sw	s8,0(s0)
   13b86:	c7b2                	sw	a2,204(sp)
   13b88:	c5ae                	sw	a1,200(sp)
   13b8a:	471d                	li	a4,7
   13b8c:	0421                	addi	s0,s0,8
   13b8e:	eab75a63          	bge	a4,a1,13242 <_vfprintf_r+0x1a6>
   13b92:	4522                	lw	a0,8(sp)
   13b94:	01d0                	addi	a2,sp,196
   13b96:	85a6                	mv	a1,s1
   13b98:	c8c6                	sw	a7,80(sp)
   13b9a:	c6fe                	sw	t6,76(sp)
   13b9c:	dc16                	sw	t0,56(sp)
   13b9e:	148010ef          	jal	14ce6 <__sprint_r>
   13ba2:	f939                	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13ba4:	463e                	lw	a2,204(sp)
   13ba6:	48c6                	lw	a7,80(sp)
   13ba8:	4fb6                	lw	t6,76(sp)
   13baa:	52e2                	lw	t0,56(sp)
   13bac:	844e                	mv	s0,s3
   13bae:	e94ff06f          	j	13242 <_vfprintf_r+0x1a6>
   13bb2:	4522                	lw	a0,8(sp)
   13bb4:	01d0                	addi	a2,sp,196
   13bb6:	85a6                	mv	a1,s1
   13bb8:	c6c6                	sw	a7,76(sp)
   13bba:	dc7e                	sw	t6,56(sp)
   13bbc:	12a010ef          	jal	14ce6 <__sprint_r>
   13bc0:	fd05                	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13bc2:	463e                	lw	a2,204(sp)
   13bc4:	48b6                	lw	a7,76(sp)
   13bc6:	5fe2                	lw	t6,56(sp)
   13bc8:	844e                	mv	s0,s3
   13bca:	eb8ff06f          	j	13282 <_vfprintf_r+0x1e6>
   13bce:	6871                	lui	a6,0x1c
   13bd0:	4741                	li	a4,16
   13bd2:	47ae                	lw	a5,200(sp)
   13bd4:	05c80c13          	addi	s8,a6,92 # 1c05c <blanks.1>
   13bd8:	05575163          	bge	a4,s5,13c1a <_vfprintf_r+0xb7e>
   13bdc:	4d22                	lw	s10,8(sp)
   13bde:	4b41                	li	s6,16
   13be0:	4c9d                	li	s9,7
   13be2:	a021                	j	13bea <_vfprintf_r+0xb4e>
   13be4:	1ac1                	addi	s5,s5,-16
   13be6:	035b5a63          	bge	s6,s5,13c1a <_vfprintf_r+0xb7e>
   13bea:	0641                	addi	a2,a2,16
   13bec:	0785                	addi	a5,a5,1
   13bee:	01842023          	sw	s8,0(s0)
   13bf2:	01642223          	sw	s6,4(s0)
   13bf6:	c7b2                	sw	a2,204(sp)
   13bf8:	c5be                	sw	a5,200(sp)
   13bfa:	0421                	addi	s0,s0,8
   13bfc:	fefcd4e3          	bge	s9,a5,13be4 <_vfprintf_r+0xb48>
   13c00:	01d0                	addi	a2,sp,196
   13c02:	85a6                	mv	a1,s1
   13c04:	856a                	mv	a0,s10
   13c06:	0e0010ef          	jal	14ce6 <__sprint_r>
   13c0a:	ee0517e3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13c0e:	1ac1                	addi	s5,s5,-16
   13c10:	463e                	lw	a2,204(sp)
   13c12:	47ae                	lw	a5,200(sp)
   13c14:	844e                	mv	s0,s3
   13c16:	fd5b4ae3          	blt	s6,s5,13bea <_vfprintf_r+0xb4e>
   13c1a:	9656                	add	a2,a2,s5
   13c1c:	0785                	addi	a5,a5,1
   13c1e:	01842023          	sw	s8,0(s0)
   13c22:	01542223          	sw	s5,4(s0)
   13c26:	c7b2                	sw	a2,204(sp)
   13c28:	c5be                	sw	a5,200(sp)
   13c2a:	471d                	li	a4,7
   13c2c:	e8f75c63          	bge	a4,a5,132c4 <_vfprintf_r+0x228>
   13c30:	4522                	lw	a0,8(sp)
   13c32:	01d0                	addi	a2,sp,196
   13c34:	85a6                	mv	a1,s1
   13c36:	0b0010ef          	jal	14ce6 <__sprint_r>
   13c3a:	ea051fe3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13c3e:	463e                	lw	a2,204(sp)
   13c40:	e84ff06f          	j	132c4 <_vfprintf_r+0x228>
   13c44:	553a                	lw	a0,172(sp)
   13c46:	5ca05e63          	blez	a0,14222 <_vfprintf_r+0x1186>
   13c4a:	47f2                	lw	a5,28(sp)
   13c4c:	5702                	lw	a4,32(sp)
   13c4e:	8abe                	mv	s5,a5
   13c50:	22f74163          	blt	a4,a5,13e72 <_vfprintf_r+0xdd6>
   13c54:	01505f63          	blez	s5,13c72 <_vfprintf_r+0xbd6>
   13c58:	472e                	lw	a4,200(sp)
   13c5a:	9656                	add	a2,a2,s5
   13c5c:	01a42023          	sw	s10,0(s0)
   13c60:	0705                	addi	a4,a4,1
   13c62:	01542223          	sw	s5,4(s0)
   13c66:	c7b2                	sw	a2,204(sp)
   13c68:	c5ba                	sw	a4,200(sp)
   13c6a:	459d                	li	a1,7
   13c6c:	0421                	addi	s0,s0,8
   13c6e:	14e5c5e3          	blt	a1,a4,145b8 <_vfprintf_r+0x151c>
   13c72:	fffac713          	not	a4,s5
   13c76:	47f2                	lw	a5,28(sp)
   13c78:	877d                	srai	a4,a4,0x1f
   13c7a:	00eafab3          	and	s5,s5,a4
   13c7e:	41578ab3          	sub	s5,a5,s5
   13c82:	2b504163          	bgtz	s5,13f24 <_vfprintf_r+0xe88>
   13c86:	47f2                	lw	a5,28(sp)
   13c88:	400cf713          	andi	a4,s9,1024
   13c8c:	00fd0c33          	add	s8,s10,a5
   13c90:	7a071e63          	bnez	a4,1444c <_vfprintf_r+0x13b0>
   13c94:	5aba                	lw	s5,172(sp)
   13c96:	5782                	lw	a5,32(sp)
   13c98:	2cfaca63          	blt	s5,a5,13f6c <_vfprintf_r+0xed0>
   13c9c:	001cf713          	andi	a4,s9,1
   13ca0:	2c071663          	bnez	a4,13f6c <_vfprintf_r+0xed0>
   13ca4:	5702                	lw	a4,32(sp)
   13ca6:	00ed07b3          	add	a5,s10,a4
   13caa:	41570ab3          	sub	s5,a4,s5
   13cae:	41878b33          	sub	s6,a5,s8
   13cb2:	016ad363          	bge	s5,s6,13cb8 <_vfprintf_r+0xc1c>
   13cb6:	8b56                	mv	s6,s5
   13cb8:	01605f63          	blez	s6,13cd6 <_vfprintf_r+0xc3a>
   13cbc:	47ae                	lw	a5,200(sp)
   13cbe:	965a                	add	a2,a2,s6
   13cc0:	01842023          	sw	s8,0(s0)
   13cc4:	0785                	addi	a5,a5,1
   13cc6:	01642223          	sw	s6,4(s0)
   13cca:	c7b2                	sw	a2,204(sp)
   13ccc:	c5be                	sw	a5,200(sp)
   13cce:	471d                	li	a4,7
   13cd0:	0421                	addi	s0,s0,8
   13cd2:	4cf74de3          	blt	a4,a5,149ac <_vfprintf_r+0x1910>
   13cd6:	fffb4793          	not	a5,s6
   13cda:	87fd                	srai	a5,a5,0x1f
   13cdc:	00fb7b33          	and	s6,s6,a5
   13ce0:	416a8ab3          	sub	s5,s5,s6
   13ce4:	dd505863          	blez	s5,132b4 <_vfprintf_r+0x218>
   13ce8:	6871                	lui	a6,0x1c
   13cea:	04c80813          	addi	a6,a6,76 # 1c04c <zeroes.0>
   13cee:	4741                	li	a4,16
   13cf0:	47ae                	lw	a5,200(sp)
   13cf2:	4b41                	li	s6,16
   13cf4:	4c1d                	li	s8,7
   13cf6:	8d42                	mv	s10,a6
   13cf8:	01574663          	blt	a4,s5,13d04 <_vfprintf_r+0xc68>
   13cfc:	ab49                	j	1428e <_vfprintf_r+0x11f2>
   13cfe:	1ac1                	addi	s5,s5,-16
   13d00:	595b5663          	bge	s6,s5,1428c <_vfprintf_r+0x11f0>
   13d04:	0641                	addi	a2,a2,16
   13d06:	0785                	addi	a5,a5,1
   13d08:	01a42023          	sw	s10,0(s0)
   13d0c:	01642223          	sw	s6,4(s0)
   13d10:	c7b2                	sw	a2,204(sp)
   13d12:	c5be                	sw	a5,200(sp)
   13d14:	0421                	addi	s0,s0,8
   13d16:	fefc54e3          	bge	s8,a5,13cfe <_vfprintf_r+0xc62>
   13d1a:	4522                	lw	a0,8(sp)
   13d1c:	01d0                	addi	a2,sp,196
   13d1e:	85a6                	mv	a1,s1
   13d20:	7c7000ef          	jal	14ce6 <__sprint_r>
   13d24:	dc051ae3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13d28:	463e                	lw	a2,204(sp)
   13d2a:	47ae                	lw	a5,200(sp)
   13d2c:	844e                	mv	s0,s3
   13d2e:	bfc1                	j	13cfe <_vfprintf_r+0xc62>
   13d30:	001cf593          	andi	a1,s9,1
   13d34:	840599e3          	bnez	a1,13586 <_vfprintf_r+0x4ea>
   13d38:	c058                	sw	a4,4(s0)
   13d3a:	c7e2                	sw	s8,204(sp)
   13d3c:	c5d6                	sw	s5,200(sp)
   13d3e:	479d                	li	a5,7
   13d40:	8b57dbe3          	bge	a5,s5,135f6 <_vfprintf_r+0x55a>
   13d44:	4522                	lw	a0,8(sp)
   13d46:	01d0                	addi	a2,sp,196
   13d48:	85a6                	mv	a1,s1
   13d4a:	79d000ef          	jal	14ce6 <__sprint_r>
   13d4e:	da0515e3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13d52:	4c3e                	lw	s8,204(sp)
   13d54:	4aae                	lw	s5,200(sp)
   13d56:	8b4e                	mv	s6,s3
   13d58:	b879                	j	135f6 <_vfprintf_r+0x55a>
   13d5a:	5702                	lw	a4,32(sp)
   13d5c:	4785                	li	a5,1
   13d5e:	88e7dce3          	bge	a5,a4,135f6 <_vfprintf_r+0x55a>
   13d62:	6871                	lui	a6,0x1c
   13d64:	47c5                	li	a5,17
   13d66:	04c80813          	addi	a6,a6,76 # 1c04c <zeroes.0>
   13d6a:	60e7d863          	bge	a5,a4,1437a <_vfprintf_r+0x12de>
   13d6e:	ce4a                	sw	s2,28(sp)
   13d70:	47c1                	li	a5,16
   13d72:	4d1d                	li	s10,7
   13d74:	8942                	mv	s2,a6
   13d76:	a021                	j	13d7e <_vfprintf_r+0xce2>
   13d78:	1441                	addi	s0,s0,-16
   13d7a:	5e87de63          	bge	a5,s0,14376 <_vfprintf_r+0x12da>
   13d7e:	0c41                	addi	s8,s8,16
   13d80:	0a85                	addi	s5,s5,1
   13d82:	012b2023          	sw	s2,0(s6)
   13d86:	00fb2223          	sw	a5,4(s6)
   13d8a:	c7e2                	sw	s8,204(sp)
   13d8c:	c5d6                	sw	s5,200(sp)
   13d8e:	0b21                	addi	s6,s6,8
   13d90:	ff5d54e3          	bge	s10,s5,13d78 <_vfprintf_r+0xcdc>
   13d94:	4522                	lw	a0,8(sp)
   13d96:	01d0                	addi	a2,sp,196
   13d98:	85a6                	mv	a1,s1
   13d9a:	74d000ef          	jal	14ce6 <__sprint_r>
   13d9e:	d4051de3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13da2:	4c3e                	lw	s8,204(sp)
   13da4:	4aae                	lw	s5,200(sp)
   13da6:	8b4e                	mv	s6,s3
   13da8:	47c1                	li	a5,16
   13daa:	b7f9                	j	13d78 <_vfprintf_r+0xcdc>
   13dac:	4752                	lw	a4,20(sp)
   13dae:	010ef793          	andi	a5,t4,16
   13db2:	00072b03          	lw	s6,0(a4)
   13db6:	0711                	addi	a4,a4,4
   13db8:	ca3a                	sw	a4,20(sp)
   13dba:	ef9d                	bnez	a5,13df8 <_vfprintf_r+0xd5c>
   13dbc:	040ef793          	andi	a5,t4,64
   13dc0:	c79d                	beqz	a5,13dee <_vfprintf_r+0xd52>
   13dc2:	0b42                	slli	s6,s6,0x10
   13dc4:	010b5b13          	srli	s6,s6,0x10
   13dc8:	4d81                	li	s11,0
   13dca:	4785                	li	a5,1
   13dcc:	e6aff06f          	j	13436 <_vfprintf_r+0x39a>
   13dd0:	4b01                	li	s6,0
   13dd2:	19010d13          	addi	s10,sp,400
   13dd6:	e1aff06f          	j	133f0 <_vfprintf_r+0x354>
   13dda:	001cf793          	andi	a5,s9,1
   13dde:	cc078b63          	beqz	a5,132b4 <_vfprintf_r+0x218>
   13de2:	b61d                	j	13908 <_vfprintf_r+0x86c>
   13de4:	00094883          	lbu	a7,0(s2)
   13de8:	ca3e                	sw	a5,20(sp)
   13dea:	be2ff06f          	j	131cc <_vfprintf_r+0x130>
   13dee:	200ef793          	andi	a5,t4,512
   13df2:	c399                	beqz	a5,13df8 <_vfprintf_r+0xd5c>
   13df4:	0ffb7b13          	zext.b	s6,s6
   13df8:	4d81                	li	s11,0
   13dfa:	4785                	li	a5,1
   13dfc:	e3aff06f          	j	13436 <_vfprintf_r+0x39a>
   13e00:	200cf793          	andi	a5,s9,512
   13e04:	7e079563          	bnez	a5,145ee <_vfprintf_r+0x1552>
   13e08:	4d81                	li	s11,0
   13e0a:	e26ff06f          	j	13430 <_vfprintf_r+0x394>
   13e0e:	200cf793          	andi	a5,s9,512
   13e12:	7c079663          	bnez	a5,145de <_vfprintf_r+0x1542>
   13e16:	41fb5d93          	srai	s11,s6,0x1f
   13e1a:	87ee                	mv	a5,s11
   13e1c:	db2ff06f          	j	133ce <_vfprintf_r+0x332>
   13e20:	57f2                	lw	a5,60(sp)
   13e22:	00094883          	lbu	a7,0(s2)
   13e26:	ba078363          	beqz	a5,131cc <_vfprintf_r+0x130>
   13e2a:	0007c783          	lbu	a5,0(a5)
   13e2e:	b8078f63          	beqz	a5,131cc <_vfprintf_r+0x130>
   13e32:	400cec93          	ori	s9,s9,1024
   13e36:	b96ff06f          	j	131cc <_vfprintf_r+0x130>
   13e3a:	010cf793          	andi	a5,s9,16
   13e3e:	4c079063          	bnez	a5,142fe <_vfprintf_r+0x1262>
   13e42:	040cf793          	andi	a5,s9,64
   13e46:	78079563          	bnez	a5,145d0 <_vfprintf_r+0x1534>
   13e4a:	200cfe13          	andi	t3,s9,512
   13e4e:	4a0e0863          	beqz	t3,142fe <_vfprintf_r+0x1262>
   13e52:	47d2                	lw	a5,20(sp)
   13e54:	4732                	lw	a4,12(sp)
   13e56:	439c                	lw	a5,0(a5)
   13e58:	00e78023          	sb	a4,0(a5)
   13e5c:	b425                	j	13884 <_vfprintf_r+0x7e8>
   13e5e:	47d2                	lw	a5,20(sp)
   13e60:	4398                	lw	a4,0(a5)
   13e62:	0791                	addi	a5,a5,4
   13e64:	ca3e                	sw	a5,20(sp)
   13e66:	430c                	lw	a1,0(a4)
   13e68:	4350                	lw	a2,4(a4)
   13e6a:	4714                	lw	a3,8(a4)
   13e6c:	4758                	lw	a4,12(a4)
   13e6e:	e52ff06f          	j	134c0 <_vfprintf_r+0x424>
   13e72:	8aba                	mv	s5,a4
   13e74:	df5042e3          	bgtz	s5,13c58 <_vfprintf_r+0xbbc>
   13e78:	bbed                	j	13c72 <_vfprintf_r+0xbd6>
   13e7a:	5afd                	li	s5,-1
   13e7c:	8936                	mv	s2,a3
   13e7e:	b50ff06f          	j	131ce <_vfprintf_r+0x132>
   13e82:	67f1                	lui	a5,0x1c
   13e84:	d0478793          	addi	a5,a5,-764 # 1bd04 <__clzsi2+0x11e>
   13e88:	da3e                	sw	a5,52(sp)
   13e8a:	020cf793          	andi	a5,s9,32
   13e8e:	26078263          	beqz	a5,140f2 <_vfprintf_r+0x1056>
   13e92:	47d2                	lw	a5,20(sp)
   13e94:	00778c13          	addi	s8,a5,7
   13e98:	ff8c7c13          	andi	s8,s8,-8
   13e9c:	000c2b03          	lw	s6,0(s8)
   13ea0:	004c2d83          	lw	s11,4(s8)
   13ea4:	008c0793          	addi	a5,s8,8
   13ea8:	ca3e                	sw	a5,20(sp)
   13eaa:	001cf793          	andi	a5,s9,1
   13eae:	cf81                	beqz	a5,13ec6 <_vfprintf_r+0xe2a>
   13eb0:	01bb67b3          	or	a5,s6,s11
   13eb4:	cb89                	beqz	a5,13ec6 <_vfprintf_r+0xe2a>
   13eb6:	03000793          	li	a5,48
   13eba:	0af10423          	sb	a5,168(sp)
   13ebe:	0b1104a3          	sb	a7,169(sp)
   13ec2:	002cec93          	ori	s9,s9,2
   13ec6:	bffcfe93          	andi	t4,s9,-1025
   13eca:	4789                	li	a5,2
   13ecc:	d6aff06f          	j	13436 <_vfprintf_r+0x39a>
   13ed0:	8ee6                	mv	t4,s9
   13ed2:	b289                	j	13814 <_vfprintf_r+0x778>
   13ed4:	67f1                	lui	a5,0x1c
   13ed6:	cf078793          	addi	a5,a5,-784 # 1bcf0 <__clzsi2+0x10a>
   13eda:	da3e                	sw	a5,52(sp)
   13edc:	b77d                	j	13e8a <_vfprintf_r+0xdee>
   13ede:	00194883          	lbu	a7,1(s2)
   13ee2:	200cec93          	ori	s9,s9,512
   13ee6:	0905                	addi	s2,s2,1
   13ee8:	ae4ff06f          	j	131cc <_vfprintf_r+0x130>
   13eec:	00194883          	lbu	a7,1(s2)
   13ef0:	020cec93          	ori	s9,s9,32
   13ef4:	0905                	addi	s2,s2,1
   13ef6:	ad6ff06f          	j	131cc <_vfprintf_r+0x130>
   13efa:	4522                	lw	a0,8(sp)
   13efc:	01d0                	addi	a2,sp,196
   13efe:	85a6                	mv	a1,s1
   13f00:	5e7000ef          	jal	14ce6 <__sprint_r>
   13f04:	be051ae3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13f08:	463e                	lw	a2,204(sp)
   13f0a:	844e                	mv	s0,s3
   13f0c:	bc29                	j	13926 <_vfprintf_r+0x88a>
   13f0e:	4799                	li	a5,6
   13f10:	8b56                	mv	s6,s5
   13f12:	6b57ed63          	bltu	a5,s5,145cc <_vfprintf_r+0x1530>
   13f16:	67f1                	lui	a5,0x1c
   13f18:	8dda                	mv	s11,s6
   13f1a:	ca62                	sw	s8,20(sp)
   13f1c:	d1878d13          	addi	s10,a5,-744 # 1bd18 <__clzsi2+0x132>
   13f20:	afcff06f          	j	1321c <_vfprintf_r+0x180>
   13f24:	6871                	lui	a6,0x1c
   13f26:	45c1                	li	a1,16
   13f28:	472e                	lw	a4,200(sp)
   13f2a:	04c80813          	addi	a6,a6,76 # 1c04c <zeroes.0>
   13f2e:	4755db63          	bge	a1,s5,143a4 <_vfprintf_r+0x1308>
   13f32:	87a2                	mv	a5,s0
   13f34:	4c41                	li	s8,16
   13f36:	4b1d                	li	s6,7
   13f38:	8442                	mv	s0,a6
   13f3a:	a021                	j	13f42 <_vfprintf_r+0xea6>
   13f3c:	1ac1                	addi	s5,s5,-16
   13f3e:	475c5163          	bge	s8,s5,143a0 <_vfprintf_r+0x1304>
   13f42:	0641                	addi	a2,a2,16
   13f44:	0705                	addi	a4,a4,1
   13f46:	c380                	sw	s0,0(a5)
   13f48:	0187a223          	sw	s8,4(a5)
   13f4c:	c7b2                	sw	a2,204(sp)
   13f4e:	c5ba                	sw	a4,200(sp)
   13f50:	07a1                	addi	a5,a5,8
   13f52:	feeb55e3          	bge	s6,a4,13f3c <_vfprintf_r+0xea0>
   13f56:	4522                	lw	a0,8(sp)
   13f58:	01d0                	addi	a2,sp,196
   13f5a:	85a6                	mv	a1,s1
   13f5c:	58b000ef          	jal	14ce6 <__sprint_r>
   13f60:	b8051ce3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13f64:	463e                	lw	a2,204(sp)
   13f66:	472e                	lw	a4,200(sp)
   13f68:	87ce                	mv	a5,s3
   13f6a:	bfc9                	j	13f3c <_vfprintf_r+0xea0>
   13f6c:	5742                	lw	a4,48(sp)
   13f6e:	57b2                	lw	a5,44(sp)
   13f70:	459d                	li	a1,7
   13f72:	c018                	sw	a4,0(s0)
   13f74:	472e                	lw	a4,200(sp)
   13f76:	963e                	add	a2,a2,a5
   13f78:	c05c                	sw	a5,4(s0)
   13f7a:	0705                	addi	a4,a4,1
   13f7c:	c7b2                	sw	a2,204(sp)
   13f7e:	c5ba                	sw	a4,200(sp)
   13f80:	0421                	addi	s0,s0,8
   13f82:	d2e5d1e3          	bge	a1,a4,13ca4 <_vfprintf_r+0xc08>
   13f86:	4522                	lw	a0,8(sp)
   13f88:	01d0                	addi	a2,sp,196
   13f8a:	85a6                	mv	a1,s1
   13f8c:	55b000ef          	jal	14ce6 <__sprint_r>
   13f90:	b60514e3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   13f94:	5aba                	lw	s5,172(sp)
   13f96:	463e                	lw	a2,204(sp)
   13f98:	844e                	mv	s0,s3
   13f9a:	b329                	j	13ca4 <_vfprintf_r+0xc08>
   13f9c:	07800793          	li	a5,120
   13fa0:	03000713          	li	a4,48
   13fa4:	0ae10423          	sb	a4,168(sp)
   13fa8:	0af104a3          	sb	a5,169(sp)
   13fac:	06300713          	li	a4,99
   13fb0:	c802                	sw	zero,16(sp)
   13fb2:	002cec93          	ori	s9,s9,2
   13fb6:	12c10d13          	addi	s10,sp,300
   13fba:	d5575c63          	bge	a4,s5,13512 <_vfprintf_r+0x476>
   13fbe:	4522                	lw	a0,8(sp)
   13fc0:	001a8593          	addi	a1,s5,1
   13fc4:	c846                	sw	a7,16(sp)
   13fc6:	b2ffe0ef          	jal	12af4 <_malloc_r>
   13fca:	48c2                	lw	a7,16(sp)
   13fcc:	8d2a                	mv	s10,a0
   13fce:	460502e3          	beqz	a0,14c32 <_vfprintf_r+0x1b96>
   13fd2:	c82a                	sw	a0,16(sp)
   13fd4:	d3eff06f          	j	13512 <_vfprintf_r+0x476>
   13fd8:	4522                	lw	a0,8(sp)
   13fda:	09010b13          	addi	s6,sp,144
   13fde:	1178                	addi	a4,sp,172
   13fe0:	0bc10813          	addi	a6,sp,188
   13fe4:	191c                	addi	a5,sp,176
   13fe6:	86d6                	mv	a3,s5
   13fe8:	4609                	li	a2,2
   13fea:	85da                	mv	a1,s6
   13fec:	d446                	sw	a7,40(sp)
   13fee:	c97e                	sw	t6,144(sp)
   13ff0:	d27e                	sw	t6,36(sp)
   13ff2:	cb7a                	sw	t5,148(sp)
   13ff4:	d07a                	sw	t5,32(sp)
   13ff6:	cd76                	sw	t4,152(sp)
   13ff8:	ce76                	sw	t4,28(sp)
   13ffa:	cf62                	sw	s8,156(sp)
   13ffc:	2a7010ef          	jal	15aa2 <_ldtoa_r>
   14000:	001cf713          	andi	a4,s9,1
   14004:	4ef2                	lw	t4,28(sp)
   14006:	5f02                	lw	t5,32(sp)
   14008:	5f92                	lw	t6,36(sp)
   1400a:	58a2                	lw	a7,40(sp)
   1400c:	8d2a                	mv	s10,a0
   1400e:	62071163          	bnez	a4,14630 <_vfprintf_r+0x1594>
   14012:	57ba                	lw	a5,172(sp)
   14014:	ce3e                	sw	a5,28(sp)
   14016:	57fa                	lw	a5,188(sp)
   14018:	8f89                	sub	a5,a5,a0
   1401a:	d03e                	sw	a5,32(sp)
   1401c:	47f2                	lw	a5,28(sp)
   1401e:	5775                	li	a4,-3
   14020:	00e7c463          	blt	a5,a4,14028 <_vfprintf_r+0xf8c>
   14024:	0efadbe3          	bge	s5,a5,1491a <_vfprintf_r+0x187e>
   14028:	47f2                	lw	a5,28(sp)
   1402a:	18f9                	addi	a7,a7,-2
   1402c:	fff78713          	addi	a4,a5,-1
   14030:	d73a                	sw	a4,172(sp)
   14032:	0ff8f693          	zext.b	a3,a7
   14036:	4601                	li	a2,0
   14038:	0ad10a23          	sb	a3,180(sp)
   1403c:	02b00693          	li	a3,43
   14040:	00075763          	bgez	a4,1404e <_vfprintf_r+0xfb2>
   14044:	47f2                	lw	a5,28(sp)
   14046:	4705                	li	a4,1
   14048:	02d00693          	li	a3,45
   1404c:	8f1d                	sub	a4,a4,a5
   1404e:	0ad10aa3          	sb	a3,181(sp)
   14052:	46a5                	li	a3,9
   14054:	2ae6d1e3          	bge	a3,a4,14af6 <_vfprintf_r+0x1a5a>
   14058:	0c310813          	addi	a6,sp,195
   1405c:	85c2                	mv	a1,a6
   1405e:	4529                	li	a0,10
   14060:	06300f13          	li	t5,99
   14064:	02a767b3          	rem	a5,a4,a0
   14068:	862e                	mv	a2,a1
   1406a:	86ba                	mv	a3,a4
   1406c:	15fd                	addi	a1,a1,-1
   1406e:	03078793          	addi	a5,a5,48
   14072:	fef60fa3          	sb	a5,-1(a2)
   14076:	02a74733          	div	a4,a4,a0
   1407a:	fedf45e3          	blt	t5,a3,14064 <_vfprintf_r+0xfc8>
   1407e:	03070713          	addi	a4,a4,48
   14082:	ffe60693          	addi	a3,a2,-2
   14086:	fee58fa3          	sb	a4,-1(a1)
   1408a:	3706fce3          	bgeu	a3,a6,14c02 <_vfprintf_r+0x1b66>
   1408e:	0b610713          	addi	a4,sp,182
   14092:	0006c783          	lbu	a5,0(a3)
   14096:	0685                	addi	a3,a3,1
   14098:	0705                	addi	a4,a4,1
   1409a:	fef70fa3          	sb	a5,-1(a4)
   1409e:	ff069ae3          	bne	a3,a6,14092 <_vfprintf_r+0xff6>
   140a2:	0b1c                	addi	a5,sp,400
   140a4:	40c78733          	sub	a4,a5,a2
   140a8:	f3770793          	addi	a5,a4,-201
   140ac:	c0be                	sw	a5,64(sp)
   140ae:	5782                	lw	a5,32(sp)
   140b0:	4686                	lw	a3,64(sp)
   140b2:	4705                	li	a4,1
   140b4:	00d78b33          	add	s6,a5,a3
   140b8:	26f758e3          	bge	a4,a5,14b28 <_vfprintf_r+0x1a8c>
   140bc:	57b2                	lw	a5,44(sp)
   140be:	9b3e                	add	s6,s6,a5
   140c0:	fffb4693          	not	a3,s6
   140c4:	bffcfe13          	andi	t3,s9,-1025
   140c8:	86fd                	srai	a3,a3,0x1f
   140ca:	100e6793          	ori	a5,t3,256
   140ce:	c6be                	sw	a5,76(sp)
   140d0:	00db7db3          	and	s11,s6,a3
   140d4:	d402                	sw	zero,40(sp)
   140d6:	d202                	sw	zero,36(sp)
   140d8:	ce02                	sw	zero,28(sp)
   140da:	57e2                	lw	a5,56(sp)
   140dc:	020786e3          	beqz	a5,14908 <_vfprintf_r+0x186c>
   140e0:	02d00713          	li	a4,45
   140e4:	4cb6                	lw	s9,76(sp)
   140e6:	0ae103a3          	sb	a4,167(sp)
   140ea:	4a81                	li	s5,0
   140ec:	0d85                	addi	s11,s11,1
   140ee:	938ff06f          	j	13226 <_vfprintf_r+0x18a>
   140f2:	4752                	lw	a4,20(sp)
   140f4:	010cf793          	andi	a5,s9,16
   140f8:	00072b03          	lw	s6,0(a4)
   140fc:	0711                	addi	a4,a4,4
   140fe:	ca3a                	sw	a4,20(sp)
   14100:	e7a9                	bnez	a5,1414a <_vfprintf_r+0x10ae>
   14102:	040cf793          	andi	a5,s9,64
   14106:	cf95                	beqz	a5,14142 <_vfprintf_r+0x10a6>
   14108:	0b42                	slli	s6,s6,0x10
   1410a:	010b5b13          	srli	s6,s6,0x10
   1410e:	4d81                	li	s11,0
   14110:	bb69                	j	13eaa <_vfprintf_r+0xe0e>
   14112:	4522                	lw	a0,8(sp)
   14114:	01d0                	addi	a2,sp,196
   14116:	85a6                	mv	a1,s1
   14118:	3cf000ef          	jal	14ce6 <__sprint_r>
   1411c:	9c051ee3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   14120:	4c3e                	lw	s8,204(sp)
   14122:	4aae                	lw	s5,200(sp)
   14124:	8b4e                	mv	s6,s3
   14126:	c6eff06f          	j	13594 <_vfprintf_r+0x4f8>
   1412a:	4522                	lw	a0,8(sp)
   1412c:	01d0                	addi	a2,sp,196
   1412e:	85a6                	mv	a1,s1
   14130:	3b7000ef          	jal	14ce6 <__sprint_r>
   14134:	9c0512e3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   14138:	4c3e                	lw	s8,204(sp)
   1413a:	4aae                	lw	s5,200(sp)
   1413c:	8b4e                	mv	s6,s3
   1413e:	c72ff06f          	j	135b0 <_vfprintf_r+0x514>
   14142:	200cf793          	andi	a5,s9,512
   14146:	4a079963          	bnez	a5,145f8 <_vfprintf_r+0x155c>
   1414a:	4d81                	li	s11,0
   1414c:	bbb9                	j	13eaa <_vfprintf_r+0xe0e>
   1414e:	ccccd837          	lui	a6,0xccccd
   14152:	ccccdcb7          	lui	s9,0xccccd
   14156:	5772                	lw	a4,60(sp)
   14158:	400eff13          	andi	t5,t4,1024
   1415c:	4601                	li	a2,0
   1415e:	0b0c                	addi	a1,sp,400
   14160:	4e15                	li	t3,5
   14162:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccaed39>
   14166:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccaed38>
   1416a:	0ff00c13          	li	s8,255
   1416e:	a081                	j	141ae <_vfprintf_r+0x1112>
   14170:	016d37b3          	sltu	a5,s10,s6
   14174:	97ea                	add	a5,a5,s10
   14176:	03c7f7b3          	remu	a5,a5,t3
   1417a:	40fb07b3          	sub	a5,s6,a5
   1417e:	00fb35b3          	sltu	a1,s6,a5
   14182:	40bd85b3          	sub	a1,s11,a1
   14186:	03978333          	mul	t1,a5,s9
   1418a:	030585b3          	mul	a1,a1,a6
   1418e:	0307b533          	mulhu	a0,a5,a6
   14192:	959a                	add	a1,a1,t1
   14194:	030787b3          	mul	a5,a5,a6
   14198:	95aa                	add	a1,a1,a0
   1419a:	01f59513          	slli	a0,a1,0x1f
   1419e:	8185                	srli	a1,a1,0x1
   141a0:	8385                	srli	a5,a5,0x1
   141a2:	8fc9                	or	a5,a5,a0
   141a4:	7c0d8763          	beqz	s11,14972 <_vfprintf_r+0x18d6>
   141a8:	8dae                	mv	s11,a1
   141aa:	8b3e                	mv	s6,a5
   141ac:	85b6                	mv	a1,a3
   141ae:	01bb0d33          	add	s10,s6,s11
   141b2:	016d37b3          	sltu	a5,s10,s6
   141b6:	97ea                	add	a5,a5,s10
   141b8:	03c7f7b3          	remu	a5,a5,t3
   141bc:	fff58693          	addi	a3,a1,-1
   141c0:	0605                	addi	a2,a2,1
   141c2:	40fb07b3          	sub	a5,s6,a5
   141c6:	00fb3533          	sltu	a0,s6,a5
   141ca:	40ad8533          	sub	a0,s11,a0
   141ce:	0307b333          	mulhu	t1,a5,a6
   141d2:	03050533          	mul	a0,a0,a6
   141d6:	030787b3          	mul	a5,a5,a6
   141da:	951a                	add	a0,a0,t1
   141dc:	057e                	slli	a0,a0,0x1f
   141de:	8385                	srli	a5,a5,0x1
   141e0:	8fc9                	or	a5,a5,a0
   141e2:	00279513          	slli	a0,a5,0x2
   141e6:	97aa                	add	a5,a5,a0
   141e8:	0786                	slli	a5,a5,0x1
   141ea:	40fb07b3          	sub	a5,s6,a5
   141ee:	03078793          	addi	a5,a5,48
   141f2:	fef58fa3          	sb	a5,-1(a1)
   141f6:	f60f0de3          	beqz	t5,14170 <_vfprintf_r+0x10d4>
   141fa:	00074783          	lbu	a5,0(a4)
   141fe:	f6f619e3          	bne	a2,a5,14170 <_vfprintf_r+0x10d4>
   14202:	f78607e3          	beq	a2,s8,14170 <_vfprintf_r+0x10d4>
   14206:	1c0d9563          	bnez	s11,143d0 <_vfprintf_r+0x1334>
   1420a:	47a5                	li	a5,9
   1420c:	1d67e263          	bltu	a5,s6,143d0 <_vfprintf_r+0x1334>
   14210:	8d36                	mv	s10,a3
   14212:	0b1c                	addi	a5,sp,400
   14214:	d032                	sw	a2,32(sp)
   14216:	de3a                	sw	a4,60(sp)
   14218:	41a78b33          	sub	s6,a5,s10
   1421c:	8cf6                	mv	s9,t4
   1421e:	9d2ff06f          	j	133f0 <_vfprintf_r+0x354>
   14222:	472e                	lw	a4,200(sp)
   14224:	65f1                	lui	a1,0x1c
   14226:	d2058593          	addi	a1,a1,-736 # 1bd20 <__clzsi2+0x13a>
   1422a:	c00c                	sw	a1,0(s0)
   1422c:	0605                	addi	a2,a2,1
   1422e:	4585                	li	a1,1
   14230:	0705                	addi	a4,a4,1
   14232:	c04c                	sw	a1,4(s0)
   14234:	c7b2                	sw	a2,204(sp)
   14236:	c5ba                	sw	a4,200(sp)
   14238:	459d                	li	a1,7
   1423a:	0421                	addi	s0,s0,8
   1423c:	36e5c063          	blt	a1,a4,1459c <_vfprintf_r+0x1500>
   14240:	e569                	bnez	a0,1430a <_vfprintf_r+0x126e>
   14242:	5782                	lw	a5,32(sp)
   14244:	001cf713          	andi	a4,s9,1
   14248:	8f5d                	or	a4,a4,a5
   1424a:	e319                	bnez	a4,14250 <_vfprintf_r+0x11b4>
   1424c:	868ff06f          	j	132b4 <_vfprintf_r+0x218>
   14250:	5742                	lw	a4,48(sp)
   14252:	57b2                	lw	a5,44(sp)
   14254:	459d                	li	a1,7
   14256:	c018                	sw	a4,0(s0)
   14258:	472e                	lw	a4,200(sp)
   1425a:	963e                	add	a2,a2,a5
   1425c:	c05c                	sw	a5,4(s0)
   1425e:	0705                	addi	a4,a4,1
   14260:	c7b2                	sw	a2,204(sp)
   14262:	c5ba                	sw	a4,200(sp)
   14264:	3ae5cb63          	blt	a1,a4,1461a <_vfprintf_r+0x157e>
   14268:	0421                	addi	s0,s0,8
   1426a:	a87d                	j	14328 <_vfprintf_r+0x128c>
   1426c:	4522                	lw	a0,8(sp)
   1426e:	f77fd0ef          	jal	121e4 <__sinit>
   14272:	e69fe06f          	j	130da <_vfprintf_r+0x3e>
   14276:	4522                	lw	a0,8(sp)
   14278:	01d0                	addi	a2,sp,196
   1427a:	85a6                	mv	a1,s1
   1427c:	26b000ef          	jal	14ce6 <__sprint_r>
   14280:	86051ce3          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   14284:	463e                	lw	a2,204(sp)
   14286:	844e                	mv	s0,s3
   14288:	e78ff06f          	j	13900 <_vfprintf_r+0x864>
   1428c:	886a                	mv	a6,s10
   1428e:	01042023          	sw	a6,0(s0)
   14292:	01542223          	sw	s5,4(s0)
   14296:	9656                	add	a2,a2,s5
   14298:	0785                	addi	a5,a5,1
   1429a:	c7b2                	sw	a2,204(sp)
   1429c:	c5be                	sw	a5,200(sp)
   1429e:	471d                	li	a4,7
   142a0:	00f74463          	blt	a4,a5,142a8 <_vfprintf_r+0x120c>
   142a4:	80eff06f          	j	132b2 <_vfprintf_r+0x216>
   142a8:	b70ff06f          	j	13618 <_vfprintf_r+0x57c>
   142ac:	47ce                	lw	a5,208(sp)
   142ae:	010c                	addi	a1,sp,128
   142b0:	0908                	addi	a0,sp,144
   142b2:	c93e                	sw	a5,144(sp)
   142b4:	47de                	lw	a5,212(sp)
   142b6:	c102                	sw	zero,128(sp)
   142b8:	c302                	sw	zero,132(sp)
   142ba:	cb3e                	sw	a5,148(sp)
   142bc:	47ee                	lw	a5,216(sp)
   142be:	c502                	sw	zero,136(sp)
   142c0:	c702                	sw	zero,140(sp)
   142c2:	cd3e                	sw	a5,152(sp)
   142c4:	47fe                	lw	a5,220(sp)
   142c6:	cf3e                	sw	a5,156(sp)
   142c8:	686050ef          	jal	1994e <__letf2>
   142cc:	48c2                	lw	a7,16(sp)
   142ce:	6a054a63          	bltz	a0,14982 <_vfprintf_r+0x18e6>
   142d2:	0a714703          	lbu	a4,167(sp)
   142d6:	04700793          	li	a5,71
   142da:	2d17db63          	bge	a5,a7,145b0 <_vfprintf_r+0x1514>
   142de:	67f1                	lui	a5,0x1c
   142e0:	ce478d13          	addi	s10,a5,-796 # 1bce4 <__clzsi2+0xfe>
   142e4:	c802                	sw	zero,16(sp)
   142e6:	d402                	sw	zero,40(sp)
   142e8:	d202                	sw	zero,36(sp)
   142ea:	ce02                	sw	zero,28(sp)
   142ec:	f7fcfc93          	andi	s9,s9,-129
   142f0:	4d8d                	li	s11,3
   142f2:	4b0d                	li	s6,3
   142f4:	4a81                	li	s5,0
   142f6:	90071963          	bnez	a4,13408 <_vfprintf_r+0x36c>
   142fa:	f2dfe06f          	j	13226 <_vfprintf_r+0x18a>
   142fe:	47d2                	lw	a5,20(sp)
   14300:	4732                	lw	a4,12(sp)
   14302:	439c                	lw	a5,0(a5)
   14304:	c398                	sw	a4,0(a5)
   14306:	d7eff06f          	j	13884 <_vfprintf_r+0x7e8>
   1430a:	5742                	lw	a4,48(sp)
   1430c:	57b2                	lw	a5,44(sp)
   1430e:	459d                	li	a1,7
   14310:	c018                	sw	a4,0(s0)
   14312:	472e                	lw	a4,200(sp)
   14314:	963e                	add	a2,a2,a5
   14316:	c05c                	sw	a5,4(s0)
   14318:	0705                	addi	a4,a4,1
   1431a:	c7b2                	sw	a2,204(sp)
   1431c:	c5ba                	sw	a4,200(sp)
   1431e:	0421                	addi	s0,s0,8
   14320:	2ee5cd63          	blt	a1,a4,1461a <_vfprintf_r+0x157e>
   14324:	74054a63          	bltz	a0,14a78 <_vfprintf_r+0x19dc>
   14328:	5782                	lw	a5,32(sp)
   1432a:	0705                	addi	a4,a4,1
   1432c:	01a42023          	sw	s10,0(s0)
   14330:	963e                	add	a2,a2,a5
   14332:	c05c                	sw	a5,4(s0)
   14334:	c7b2                	sw	a2,204(sp)
   14336:	c5ba                	sw	a4,200(sp)
   14338:	479d                	li	a5,7
   1433a:	00e7c463          	blt	a5,a4,14342 <_vfprintf_r+0x12a6>
   1433e:	f75fe06f          	j	132b2 <_vfprintf_r+0x216>
   14342:	ad6ff06f          	j	13618 <_vfprintf_r+0x57c>
   14346:	856a                	mv	a0,s10
   14348:	dc46                	sw	a7,56(sp)
   1434a:	b7efe0ef          	jal	126c8 <strlen>
   1434e:	0a714703          	lbu	a4,167(sp)
   14352:	fff54693          	not	a3,a0
   14356:	86fd                	srai	a3,a3,0x1f
   14358:	ca62                	sw	s8,20(sp)
   1435a:	c802                	sw	zero,16(sp)
   1435c:	d402                	sw	zero,40(sp)
   1435e:	d202                	sw	zero,36(sp)
   14360:	ce02                	sw	zero,28(sp)
   14362:	58e2                	lw	a7,56(sp)
   14364:	8b2a                	mv	s6,a0
   14366:	00d57db3          	and	s11,a0,a3
   1436a:	4a81                	li	s5,0
   1436c:	c319                	beqz	a4,14372 <_vfprintf_r+0x12d6>
   1436e:	89aff06f          	j	13408 <_vfprintf_r+0x36c>
   14372:	eb5fe06f          	j	13226 <_vfprintf_r+0x18a>
   14376:	884a                	mv	a6,s2
   14378:	4972                	lw	s2,28(sp)
   1437a:	9c22                	add	s8,s8,s0
   1437c:	0a85                	addi	s5,s5,1
   1437e:	010b2023          	sw	a6,0(s6)
   14382:	a64ff06f          	j	135e6 <_vfprintf_r+0x54a>
   14386:	47fe                	lw	a5,220(sp)
   14388:	2607cc63          	bltz	a5,14600 <_vfprintf_r+0x1564>
   1438c:	0a714703          	lbu	a4,167(sp)
   14390:	04700793          	li	a5,71
   14394:	6317ca63          	blt	a5,a7,149c8 <_vfprintf_r+0x192c>
   14398:	67f1                	lui	a5,0x1c
   1439a:	ce878d13          	addi	s10,a5,-792 # 1bce8 <__clzsi2+0x102>
   1439e:	b799                	j	142e4 <_vfprintf_r+0x1248>
   143a0:	8822                	mv	a6,s0
   143a2:	843e                	mv	s0,a5
   143a4:	9656                	add	a2,a2,s5
   143a6:	0705                	addi	a4,a4,1
   143a8:	01042023          	sw	a6,0(s0)
   143ac:	01542223          	sw	s5,4(s0)
   143b0:	c7b2                	sw	a2,204(sp)
   143b2:	c5ba                	sw	a4,200(sp)
   143b4:	459d                	li	a1,7
   143b6:	0421                	addi	s0,s0,8
   143b8:	8ce5d7e3          	bge	a1,a4,13c86 <_vfprintf_r+0xbea>
   143bc:	4522                	lw	a0,8(sp)
   143be:	01d0                	addi	a2,sp,196
   143c0:	85a6                	mv	a1,s1
   143c2:	125000ef          	jal	14ce6 <__sprint_r>
   143c6:	f2051963          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   143ca:	463e                	lw	a2,204(sp)
   143cc:	844e                	mv	s0,s3
   143ce:	b865                	j	13c86 <_vfprintf_r+0xbea>
   143d0:	47a6                	lw	a5,72(sp)
   143d2:	4596                	lw	a1,68(sp)
   143d4:	dc42                	sw	a6,56(sp)
   143d6:	8e9d                	sub	a3,a3,a5
   143d8:	863e                	mv	a2,a5
   143da:	8536                	mv	a0,a3
   143dc:	d47a                	sw	t5,40(sp)
   143de:	d276                	sw	t4,36(sp)
   143e0:	d046                	sw	a7,32(sp)
   143e2:	ce3a                	sw	a4,28(sp)
   143e4:	c836                	sw	a3,16(sp)
   143e6:	258010ef          	jal	1563e <strncpy>
   143ea:	016d37b3          	sltu	a5,s10,s6
   143ee:	4615                	li	a2,5
   143f0:	97ea                	add	a5,a5,s10
   143f2:	02c7f7b3          	remu	a5,a5,a2
   143f6:	4772                	lw	a4,28(sp)
   143f8:	ccccd337          	lui	t1,0xccccd
   143fc:	ccccd537          	lui	a0,0xccccd
   14400:	00174583          	lbu	a1,1(a4)
   14404:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccaed39>
   14408:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccaed38>
   1440c:	00b035b3          	snez	a1,a1
   14410:	972e                	add	a4,a4,a1
   14412:	46c2                	lw	a3,16(sp)
   14414:	5882                	lw	a7,32(sp)
   14416:	5e92                	lw	t4,36(sp)
   14418:	5f22                	lw	t5,40(sp)
   1441a:	5862                	lw	a6,56(sp)
   1441c:	4601                	li	a2,0
   1441e:	4e15                	li	t3,5
   14420:	40fb07b3          	sub	a5,s6,a5
   14424:	00fb35b3          	sltu	a1,s6,a5
   14428:	40bd85b3          	sub	a1,s11,a1
   1442c:	02a78533          	mul	a0,a5,a0
   14430:	026585b3          	mul	a1,a1,t1
   14434:	0267bfb3          	mulhu	t6,a5,t1
   14438:	95aa                	add	a1,a1,a0
   1443a:	02678533          	mul	a0,a5,t1
   1443e:	95fe                	add	a1,a1,t6
   14440:	01f59793          	slli	a5,a1,0x1f
   14444:	8185                	srli	a1,a1,0x1
   14446:	8105                	srli	a0,a0,0x1
   14448:	8fc9                	or	a5,a5,a0
   1444a:	bbb9                	j	141a8 <_vfprintf_r+0x110c>
   1444c:	5782                	lw	a5,32(sp)
   1444e:	5b12                	lw	s6,36(sp)
   14450:	68f1                	lui	a7,0x1c
   14452:	97ea                	add	a5,a5,s10
   14454:	dc4a                	sw	s2,56(sp)
   14456:	c6e6                	sw	s9,76(sp)
   14458:	c8de                	sw	s7,80(sp)
   1445a:	d26e                	sw	s11,36(sp)
   1445c:	5da2                	lw	s11,40(sp)
   1445e:	d46a                	sw	s10,40(sp)
   14460:	5cf2                	lw	s9,60(sp)
   14462:	8d62                	mv	s10,s8
   14464:	4922                	lw	s2,8(sp)
   14466:	4c26                	lw	s8,72(sp)
   14468:	481d                	li	a6,7
   1446a:	4741                	li	a4,16
   1446c:	04c88a93          	addi	s5,a7,76 # 1c04c <zeroes.0>
   14470:	85a2                	mv	a1,s0
   14472:	8bbe                	mv	s7,a5
   14474:	07605363          	blez	s6,144da <_vfprintf_r+0x143e>
   14478:	0fb05663          	blez	s11,14564 <_vfprintf_r+0x14c8>
   1447c:	1dfd                	addi	s11,s11,-1
   1447e:	4796                	lw	a5,68(sp)
   14480:	9662                	add	a2,a2,s8
   14482:	0185a223          	sw	s8,4(a1)
   14486:	c19c                	sw	a5,0(a1)
   14488:	47ae                	lw	a5,200(sp)
   1448a:	c7b2                	sw	a2,204(sp)
   1448c:	05a1                	addi	a1,a1,8
   1448e:	0785                	addi	a5,a5,1
   14490:	c5be                	sw	a5,200(sp)
   14492:	0cf84c63          	blt	a6,a5,1456a <_vfprintf_r+0x14ce>
   14496:	000cc683          	lbu	a3,0(s9)
   1449a:	41ab8433          	sub	s0,s7,s10
   1449e:	0086d363          	bge	a3,s0,144a4 <_vfprintf_r+0x1408>
   144a2:	8436                	mv	s0,a3
   144a4:	00805f63          	blez	s0,144c2 <_vfprintf_r+0x1426>
   144a8:	46ae                	lw	a3,200(sp)
   144aa:	9622                	add	a2,a2,s0
   144ac:	01a5a023          	sw	s10,0(a1)
   144b0:	0685                	addi	a3,a3,1
   144b2:	c1c0                	sw	s0,4(a1)
   144b4:	c7b2                	sw	a2,204(sp)
   144b6:	c5b6                	sw	a3,200(sp)
   144b8:	0cd84563          	blt	a6,a3,14582 <_vfprintf_r+0x14e6>
   144bc:	000cc683          	lbu	a3,0(s9)
   144c0:	05a1                	addi	a1,a1,8
   144c2:	fff44513          	not	a0,s0
   144c6:	857d                	srai	a0,a0,0x1f
   144c8:	00a477b3          	and	a5,s0,a0
   144cc:	40f68433          	sub	s0,a3,a5
   144d0:	02804763          	bgtz	s0,144fe <_vfprintf_r+0x1462>
   144d4:	9d36                	add	s10,s10,a3
   144d6:	fb6041e3          	bgtz	s6,14478 <_vfprintf_r+0x13dc>
   144da:	fbb041e3          	bgtz	s11,1447c <_vfprintf_r+0x13e0>
   144de:	5782                	lw	a5,32(sp)
   144e0:	8c6a                	mv	s8,s10
   144e2:	5d22                	lw	s10,40(sp)
   144e4:	de66                	sw	s9,60(sp)
   144e6:	5962                	lw	s2,56(sp)
   144e8:	00fd0733          	add	a4,s10,a5
   144ec:	4cb6                	lw	s9,76(sp)
   144ee:	4bc6                	lw	s7,80(sp)
   144f0:	5d92                	lw	s11,36(sp)
   144f2:	842e                	mv	s0,a1
   144f4:	fb877063          	bgeu	a4,s8,13c94 <_vfprintf_r+0xbf8>
   144f8:	8c3a                	mv	s8,a4
   144fa:	f9aff06f          	j	13c94 <_vfprintf_r+0xbf8>
   144fe:	6f71                	lui	t5,0x1c
   14500:	46ae                	lw	a3,200(sp)
   14502:	04cf0f13          	addi	t5,t5,76 # 1c04c <zeroes.0>
   14506:	04875163          	bge	a4,s0,14548 <_vfprintf_r+0x14ac>
   1450a:	ce56                	sw	s5,28(sp)
   1450c:	a021                	j	14514 <_vfprintf_r+0x1478>
   1450e:	1441                	addi	s0,s0,-16
   14510:	02875b63          	bge	a4,s0,14546 <_vfprintf_r+0x14aa>
   14514:	0641                	addi	a2,a2,16
   14516:	0685                	addi	a3,a3,1
   14518:	0155a023          	sw	s5,0(a1)
   1451c:	c1d8                	sw	a4,4(a1)
   1451e:	c7b2                	sw	a2,204(sp)
   14520:	c5b6                	sw	a3,200(sp)
   14522:	05a1                	addi	a1,a1,8
   14524:	fed855e3          	bge	a6,a3,1450e <_vfprintf_r+0x1472>
   14528:	01d0                	addi	a2,sp,196
   1452a:	85a6                	mv	a1,s1
   1452c:	854a                	mv	a0,s2
   1452e:	7b8000ef          	jal	14ce6 <__sprint_r>
   14532:	dc051363          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   14536:	4741                	li	a4,16
   14538:	1441                	addi	s0,s0,-16
   1453a:	463e                	lw	a2,204(sp)
   1453c:	46ae                	lw	a3,200(sp)
   1453e:	85ce                	mv	a1,s3
   14540:	481d                	li	a6,7
   14542:	fc8749e3          	blt	a4,s0,14514 <_vfprintf_r+0x1478>
   14546:	4f72                	lw	t5,28(sp)
   14548:	9622                	add	a2,a2,s0
   1454a:	0685                	addi	a3,a3,1
   1454c:	01e5a023          	sw	t5,0(a1)
   14550:	c1c0                	sw	s0,4(a1)
   14552:	c7b2                	sw	a2,204(sp)
   14554:	c5b6                	sw	a3,200(sp)
   14556:	40d84063          	blt	a6,a3,14956 <_vfprintf_r+0x18ba>
   1455a:	000cc683          	lbu	a3,0(s9)
   1455e:	05a1                	addi	a1,a1,8
   14560:	9d36                	add	s10,s10,a3
   14562:	bf95                	j	144d6 <_vfprintf_r+0x143a>
   14564:	1cfd                	addi	s9,s9,-1
   14566:	1b7d                	addi	s6,s6,-1
   14568:	bf19                	j	1447e <_vfprintf_r+0x13e2>
   1456a:	01d0                	addi	a2,sp,196
   1456c:	85a6                	mv	a1,s1
   1456e:	854a                	mv	a0,s2
   14570:	776000ef          	jal	14ce6 <__sprint_r>
   14574:	d8051263          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   14578:	463e                	lw	a2,204(sp)
   1457a:	85ce                	mv	a1,s3
   1457c:	4741                	li	a4,16
   1457e:	481d                	li	a6,7
   14580:	bf19                	j	14496 <_vfprintf_r+0x13fa>
   14582:	01d0                	addi	a2,sp,196
   14584:	85a6                	mv	a1,s1
   14586:	854a                	mv	a0,s2
   14588:	2fb9                	jal	14ce6 <__sprint_r>
   1458a:	d6051763          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   1458e:	000cc683          	lbu	a3,0(s9)
   14592:	463e                	lw	a2,204(sp)
   14594:	85ce                	mv	a1,s3
   14596:	4741                	li	a4,16
   14598:	481d                	li	a6,7
   1459a:	b725                	j	144c2 <_vfprintf_r+0x1426>
   1459c:	4522                	lw	a0,8(sp)
   1459e:	01d0                	addi	a2,sp,196
   145a0:	85a6                	mv	a1,s1
   145a2:	2791                	jal	14ce6 <__sprint_r>
   145a4:	d4051a63          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   145a8:	553a                	lw	a0,172(sp)
   145aa:	463e                	lw	a2,204(sp)
   145ac:	844e                	mv	s0,s3
   145ae:	b949                	j	14240 <_vfprintf_r+0x11a4>
   145b0:	67f1                	lui	a5,0x1c
   145b2:	ce078d13          	addi	s10,a5,-800 # 1bce0 <__clzsi2+0xfa>
   145b6:	b33d                	j	142e4 <_vfprintf_r+0x1248>
   145b8:	4522                	lw	a0,8(sp)
   145ba:	01d0                	addi	a2,sp,196
   145bc:	85a6                	mv	a1,s1
   145be:	2725                	jal	14ce6 <__sprint_r>
   145c0:	d2051c63          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   145c4:	463e                	lw	a2,204(sp)
   145c6:	844e                	mv	s0,s3
   145c8:	eaaff06f          	j	13c72 <_vfprintf_r+0xbd6>
   145cc:	4b19                	li	s6,6
   145ce:	b2a1                	j	13f16 <_vfprintf_r+0xe7a>
   145d0:	47d2                	lw	a5,20(sp)
   145d2:	4732                	lw	a4,12(sp)
   145d4:	439c                	lw	a5,0(a5)
   145d6:	00e79023          	sh	a4,0(a5)
   145da:	aaaff06f          	j	13884 <_vfprintf_r+0x7e8>
   145de:	0b62                	slli	s6,s6,0x18
   145e0:	418b5b13          	srai	s6,s6,0x18
   145e4:	41fb5d93          	srai	s11,s6,0x1f
   145e8:	87ee                	mv	a5,s11
   145ea:	de5fe06f          	j	133ce <_vfprintf_r+0x332>
   145ee:	0ffb7b13          	zext.b	s6,s6
   145f2:	4d81                	li	s11,0
   145f4:	e3dfe06f          	j	13430 <_vfprintf_r+0x394>
   145f8:	0ffb7b13          	zext.b	s6,s6
   145fc:	4d81                	li	s11,0
   145fe:	b075                	j	13eaa <_vfprintf_r+0xe0e>
   14600:	02d00793          	li	a5,45
   14604:	0af103a3          	sb	a5,167(sp)
   14608:	02d00713          	li	a4,45
   1460c:	b351                	j	14390 <_vfprintf_r+0x12f4>
   1460e:	4522                	lw	a0,8(sp)
   14610:	01d0                	addi	a2,sp,196
   14612:	85a6                	mv	a1,s1
   14614:	2dc9                	jal	14ce6 <__sprint_r>
   14616:	ce3fe06f          	j	132f8 <_vfprintf_r+0x25c>
   1461a:	4522                	lw	a0,8(sp)
   1461c:	01d0                	addi	a2,sp,196
   1461e:	85a6                	mv	a1,s1
   14620:	25d9                	jal	14ce6 <__sprint_r>
   14622:	cc051b63          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   14626:	553a                	lw	a0,172(sp)
   14628:	463e                	lw	a2,204(sp)
   1462a:	472e                	lw	a4,200(sp)
   1462c:	844e                	mv	s0,s3
   1462e:	b9dd                	j	14324 <_vfprintf_r+0x1288>
   14630:	01550733          	add	a4,a0,s5
   14634:	04700613          	li	a2,71
   14638:	010c                	addi	a1,sp,128
   1463a:	855a                	mv	a0,s6
   1463c:	d23a                	sw	a4,36(sp)
   1463e:	d032                	sw	a2,32(sp)
   14640:	ce46                	sw	a7,28(sp)
   14642:	c97e                	sw	t6,144(sp)
   14644:	cb7a                	sw	t5,148(sp)
   14646:	cd76                	sw	t4,152(sp)
   14648:	cf62                	sw	s8,156(sp)
   1464a:	c102                	sw	zero,128(sp)
   1464c:	c302                	sw	zero,132(sp)
   1464e:	c502                	sw	zero,136(sp)
   14650:	c702                	sw	zero,140(sp)
   14652:	124050ef          	jal	19776 <__eqtf2>
   14656:	48f2                	lw	a7,28(sp)
   14658:	5602                	lw	a2,32(sp)
   1465a:	5712                	lw	a4,36(sp)
   1465c:	36050a63          	beqz	a0,149d0 <_vfprintf_r+0x1934>
   14660:	57fa                	lw	a5,188(sp)
   14662:	00e7fc63          	bgeu	a5,a4,1467a <_vfprintf_r+0x15de>
   14666:	03000593          	li	a1,48
   1466a:	00178693          	addi	a3,a5,1
   1466e:	df36                	sw	a3,188(sp)
   14670:	00b78023          	sb	a1,0(a5)
   14674:	57fa                	lw	a5,188(sp)
   14676:	fee7eae3          	bltu	a5,a4,1466a <_vfprintf_r+0x15ce>
   1467a:	573a                	lw	a4,172(sp)
   1467c:	ce3a                	sw	a4,28(sp)
   1467e:	41a787b3          	sub	a5,a5,s10
   14682:	04700713          	li	a4,71
   14686:	d03e                	sw	a5,32(sp)
   14688:	98e60ae3          	beq	a2,a4,1401c <_vfprintf_r+0xf80>
   1468c:	04600713          	li	a4,70
   14690:	38e60863          	beq	a2,a4,14a20 <_vfprintf_r+0x1984>
   14694:	47f2                	lw	a5,28(sp)
   14696:	fff78713          	addi	a4,a5,-1
   1469a:	ba59                	j	14030 <_vfprintf_r+0xf94>
   1469c:	001a8693          	addi	a3,s5,1
   146a0:	4609                	li	a2,2
   146a2:	4522                	lw	a0,8(sp)
   146a4:	09010b13          	addi	s6,sp,144
   146a8:	1178                	addi	a4,sp,172
   146aa:	85da                	mv	a1,s6
   146ac:	0bc10813          	addi	a6,sp,188
   146b0:	191c                	addi	a5,sp,176
   146b2:	c8c6                	sw	a7,80(sp)
   146b4:	d436                	sw	a3,40(sp)
   146b6:	c97e                	sw	t6,144(sp)
   146b8:	d27e                	sw	t6,36(sp)
   146ba:	cb7a                	sw	t5,148(sp)
   146bc:	d07a                	sw	t5,32(sp)
   146be:	cd76                	sw	t4,152(sp)
   146c0:	ce76                	sw	t4,28(sp)
   146c2:	cf62                	sw	s8,156(sp)
   146c4:	3de010ef          	jal	15aa2 <_ldtoa_r>
   146c8:	48c6                	lw	a7,80(sp)
   146ca:	56a2                	lw	a3,40(sp)
   146cc:	04600593          	li	a1,70
   146d0:	fdf8f613          	andi	a2,a7,-33
   146d4:	4ef2                	lw	t4,28(sp)
   146d6:	5f02                	lw	t5,32(sp)
   146d8:	5f92                	lw	t6,36(sp)
   146da:	8d2a                	mv	s10,a0
   146dc:	00d50733          	add	a4,a0,a3
   146e0:	54b61563          	bne	a2,a1,14c2a <_vfprintf_r+0x1b8e>
   146e4:	000d4503          	lbu	a0,0(s10)
   146e8:	03000593          	li	a1,48
   146ec:	2eb50663          	beq	a0,a1,149d8 <_vfprintf_r+0x193c>
   146f0:	56ba                	lw	a3,172(sp)
   146f2:	010c                	addi	a1,sp,128
   146f4:	9736                	add	a4,a4,a3
   146f6:	b791                	j	1463a <_vfprintf_r+0x159e>
   146f8:	09010b13          	addi	s6,sp,144
   146fc:	010c                	addi	a1,sp,128
   146fe:	1170                	addi	a2,sp,172
   14700:	855a                	mv	a0,s6
   14702:	c0c6                	sw	a7,64(sp)
   14704:	c17e                	sw	t6,128(sp)
   14706:	c37a                	sw	t5,132(sp)
   14708:	c576                	sw	t4,136(sp)
   1470a:	ce2e                	sw	a1,28(sp)
   1470c:	c762                	sw	s8,140(sp)
   1470e:	238010ef          	jal	15946 <frexpl>
   14712:	474a                	lw	a4,144(sp)
   14714:	45f2                	lw	a1,28(sp)
   14716:	1890                	addi	a2,sp,112
   14718:	c13a                	sw	a4,128(sp)
   1471a:	475a                	lw	a4,148(sp)
   1471c:	855a                	mv	a0,s6
   1471e:	d882                	sw	zero,112(sp)
   14720:	c33a                	sw	a4,132(sp)
   14722:	476a                	lw	a4,152(sp)
   14724:	da82                	sw	zero,116(sp)
   14726:	dc82                	sw	zero,120(sp)
   14728:	c53a                	sw	a4,136(sp)
   1472a:	477a                	lw	a4,156(sp)
   1472c:	c73a                	sw	a4,140(sp)
   1472e:	3ffc0737          	lui	a4,0x3ffc0
   14732:	deba                	sw	a4,124(sp)
   14734:	306050ef          	jal	19a3a <__multf3>
   14738:	45f2                	lw	a1,28(sp)
   1473a:	4f4a                	lw	t5,144(sp)
   1473c:	4eda                	lw	t4,148(sp)
   1473e:	486a                	lw	a6,152(sp)
   14740:	855a                	mv	a0,s6
   14742:	d42e                	sw	a1,40(sp)
   14744:	d27a                	sw	t5,36(sp)
   14746:	d076                	sw	t4,32(sp)
   14748:	ce42                	sw	a6,28(sp)
   1474a:	c102                	sw	zero,128(sp)
   1474c:	c302                	sw	zero,132(sp)
   1474e:	c502                	sw	zero,136(sp)
   14750:	c702                	sw	zero,140(sp)
   14752:	024050ef          	jal	19776 <__eqtf2>
   14756:	4dfa                	lw	s11,156(sp)
   14758:	4872                	lw	a6,28(sp)
   1475a:	5e82                	lw	t4,32(sp)
   1475c:	5f12                	lw	t5,36(sp)
   1475e:	55a2                	lw	a1,40(sp)
   14760:	4886                	lw	a7,64(sp)
   14762:	e119                	bnez	a0,14768 <_vfprintf_r+0x16cc>
   14764:	4705                	li	a4,1
   14766:	d73a                	sw	a4,172(sp)
   14768:	06100713          	li	a4,97
   1476c:	44e88d63          	beq	a7,a4,14bc6 <_vfprintf_r+0x1b2a>
   14770:	6771                	lui	a4,0x1c
   14772:	d0470793          	addi	a5,a4,-764 # 1bd04 <__clzsi2+0x11e>
   14776:	ce3e                	sw	a5,28(sp)
   14778:	d04a                	sw	s2,32(sp)
   1477a:	d466                	sw	s9,40(sp)
   1477c:	c0de                	sw	s7,64(sp)
   1477e:	c6a2                	sw	s0,76(sp)
   14780:	896a                	mv	s2,s10
   14782:	c8a6                	sw	s1,80(sp)
   14784:	caea                	sw	s10,84(sp)
   14786:	44f2                	lw	s1,28(sp)
   14788:	1afd                	addi	s5,s5,-1
   1478a:	d246                	sw	a7,36(sp)
   1478c:	8bfa                	mv	s7,t5
   1478e:	8c76                	mv	s8,t4
   14790:	8cc2                	mv	s9,a6
   14792:	8d6e                	mv	s10,s11
   14794:	842e                	mv	s0,a1
   14796:	a015                	j	147ba <_vfprintf_r+0x171e>
   14798:	85a2                	mv	a1,s0
   1479a:	855a                	mv	a0,s6
   1479c:	c95e                	sw	s7,144(sp)
   1479e:	cb62                	sw	s8,148(sp)
   147a0:	cd66                	sw	s9,152(sp)
   147a2:	cf6a                	sw	s10,156(sp)
   147a4:	c102                	sw	zero,128(sp)
   147a6:	c302                	sw	zero,132(sp)
   147a8:	c502                	sw	zero,136(sp)
   147aa:	c702                	sw	zero,140(sp)
   147ac:	fffa8d93          	addi	s11,s5,-1
   147b0:	7c7040ef          	jal	19776 <__eqtf2>
   147b4:	3c050c63          	beqz	a0,14b8c <_vfprintf_r+0x1af0>
   147b8:	8aee                	mv	s5,s11
   147ba:	400307b7          	lui	a5,0x40030
   147be:	1890                	addi	a2,sp,112
   147c0:	85a2                	mv	a1,s0
   147c2:	855a                	mv	a0,s6
   147c4:	debe                	sw	a5,124(sp)
   147c6:	c15e                	sw	s7,128(sp)
   147c8:	c362                	sw	s8,132(sp)
   147ca:	c566                	sw	s9,136(sp)
   147cc:	c76a                	sw	s10,140(sp)
   147ce:	d882                	sw	zero,112(sp)
   147d0:	da82                	sw	zero,116(sp)
   147d2:	dc82                	sw	zero,120(sp)
   147d4:	266050ef          	jal	19a3a <__multf3>
   147d8:	855a                	mv	a0,s6
   147da:	08a070ef          	jal	1b864 <__fixtfsi>
   147de:	85aa                	mv	a1,a0
   147e0:	8daa                	mv	s11,a0
   147e2:	855a                	mv	a0,s6
   147e4:	4d4a                	lw	s10,144(sp)
   147e6:	4cda                	lw	s9,148(sp)
   147e8:	4c6a                	lw	s8,152(sp)
   147ea:	4bfa                	lw	s7,156(sp)
   147ec:	19c070ef          	jal	1b988 <__floatsitf>
   147f0:	46ca                	lw	a3,144(sp)
   147f2:	1090                	addi	a2,sp,96
   147f4:	188c                	addi	a1,sp,112
   147f6:	d0b6                	sw	a3,96(sp)
   147f8:	46da                	lw	a3,148(sp)
   147fa:	8522                	mv	a0,s0
   147fc:	d8ea                	sw	s10,112(sp)
   147fe:	d2b6                	sw	a3,100(sp)
   14800:	46ea                	lw	a3,152(sp)
   14802:	dae6                	sw	s9,116(sp)
   14804:	dce2                	sw	s8,120(sp)
   14806:	d4b6                	sw	a3,104(sp)
   14808:	46fa                	lw	a3,156(sp)
   1480a:	dede                	sw	s7,124(sp)
   1480c:	d6b6                	sw	a3,108(sp)
   1480e:	6c9050ef          	jal	1a6d6 <__subtf3>
   14812:	01b486b3          	add	a3,s1,s11
   14816:	0006c603          	lbu	a2,0(a3)
   1481a:	8fca                	mv	t6,s2
   1481c:	0905                	addi	s2,s2,1
   1481e:	4b8a                	lw	s7,128(sp)
   14820:	4c1a                	lw	s8,132(sp)
   14822:	4caa                	lw	s9,136(sp)
   14824:	4d3a                	lw	s10,140(sp)
   14826:	57fd                	li	a5,-1
   14828:	fec90fa3          	sb	a2,-1(s2)
   1482c:	f6fa96e3          	bne	s5,a5,14798 <_vfprintf_r+0x16fc>
   14830:	5892                	lw	a7,36(sp)
   14832:	8f5e                	mv	t5,s7
   14834:	8ee2                	mv	t4,s8
   14836:	8866                	mv	a6,s9
   14838:	85a2                	mv	a1,s0
   1483a:	ccee                	sw	s11,88(sp)
   1483c:	3ffe0ab7          	lui	s5,0x3ffe0
   14840:	8dea                	mv	s11,s10
   14842:	855a                	mv	a0,s6
   14844:	cec6                	sw	a7,92(sp)
   14846:	d27e                	sw	t6,36(sp)
   14848:	44c6                	lw	s1,80(sp)
   1484a:	4b86                	lw	s7,64(sp)
   1484c:	5ca2                	lw	s9,40(sp)
   1484e:	4436                	lw	s0,76(sp)
   14850:	c97a                	sw	t5,144(sp)
   14852:	c8fa                	sw	t5,80(sp)
   14854:	cb76                	sw	t4,148(sp)
   14856:	c6f6                	sw	t4,76(sp)
   14858:	cd42                	sw	a6,152(sp)
   1485a:	c0c2                	sw	a6,64(sp)
   1485c:	cf6e                	sw	s11,156(sp)
   1485e:	c102                	sw	zero,128(sp)
   14860:	c302                	sw	zero,132(sp)
   14862:	c502                	sw	zero,136(sp)
   14864:	c756                	sw	s5,140(sp)
   14866:	d42e                	sw	a1,40(sp)
   14868:	7fb040ef          	jal	19862 <__getf2>
   1486c:	8c4a                	mv	s8,s2
   1486e:	4d56                	lw	s10,84(sp)
   14870:	5902                	lw	s2,32(sp)
   14872:	5f92                	lw	t6,36(sp)
   14874:	48f6                	lw	a7,92(sp)
   14876:	00a04e63          	bgtz	a0,14892 <_vfprintf_r+0x17f6>
   1487a:	55a2                	lw	a1,40(sp)
   1487c:	855a                	mv	a0,s6
   1487e:	d046                	sw	a7,32(sp)
   14880:	6f7040ef          	jal	19776 <__eqtf2>
   14884:	5882                	lw	a7,32(sp)
   14886:	e529                	bnez	a0,148d0 <_vfprintf_r+0x1834>
   14888:	47e6                	lw	a5,88(sp)
   1488a:	5f92                	lw	t6,36(sp)
   1488c:	0017f693          	andi	a3,a5,1
   14890:	c2a1                	beqz	a3,148d0 <_vfprintf_r+0x1834>
   14892:	47f2                	lw	a5,28(sp)
   14894:	df7e                	sw	t6,188(sp)
   14896:	fffc4603          	lbu	a2,-1(s8)
   1489a:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x4001207b>
   1489e:	86e2                	mv	a3,s8
   148a0:	00b61e63          	bne	a2,a1,148bc <_vfprintf_r+0x1820>
   148a4:	03000513          	li	a0,48
   148a8:	fea68fa3          	sb	a0,-1(a3)
   148ac:	56fa                	lw	a3,188(sp)
   148ae:	fff68793          	addi	a5,a3,-1
   148b2:	df3e                	sw	a5,188(sp)
   148b4:	fff6c603          	lbu	a2,-1(a3)
   148b8:	fec588e3          	beq	a1,a2,148a8 <_vfprintf_r+0x180c>
   148bc:	00160593          	addi	a1,a2,1
   148c0:	03900513          	li	a0,57
   148c4:	0ff5f593          	zext.b	a1,a1
   148c8:	02a60c63          	beq	a2,a0,14900 <_vfprintf_r+0x1864>
   148cc:	feb68fa3          	sb	a1,-1(a3)
   148d0:	57ba                	lw	a5,172(sp)
   148d2:	41ac0733          	sub	a4,s8,s10
   148d6:	d03a                	sw	a4,32(sp)
   148d8:	fff78713          	addi	a4,a5,-1
   148dc:	ce3e                	sw	a5,28(sp)
   148de:	06100613          	li	a2,97
   148e2:	d73a                	sw	a4,172(sp)
   148e4:	07000693          	li	a3,112
   148e8:	00c88663          	beq	a7,a2,148f4 <_vfprintf_r+0x1858>
   148ec:	05000693          	li	a3,80
   148f0:	04100893          	li	a7,65
   148f4:	4605                	li	a2,1
   148f6:	f42ff06f          	j	14038 <_vfprintf_r+0xf9c>
   148fa:	86d6                	mv	a3,s5
   148fc:	460d                	li	a2,3
   148fe:	b355                	j	146a2 <_vfprintf_r+0x1606>
   14900:	47f2                	lw	a5,28(sp)
   14902:	00a7c583          	lbu	a1,10(a5)
   14906:	b7d9                	j	148cc <_vfprintf_r+0x1830>
   14908:	0a714703          	lbu	a4,167(sp)
   1490c:	4cb6                	lw	s9,76(sp)
   1490e:	4a81                	li	s5,0
   14910:	c319                	beqz	a4,14916 <_vfprintf_r+0x187a>
   14912:	af7fe06f          	j	13408 <_vfprintf_r+0x36c>
   14916:	911fe06f          	j	13226 <_vfprintf_r+0x18a>
   1491a:	5782                	lw	a5,32(sp)
   1491c:	4772                	lw	a4,28(sp)
   1491e:	12f74763          	blt	a4,a5,14a4c <_vfprintf_r+0x19b0>
   14922:	47f2                	lw	a5,28(sp)
   14924:	001cf713          	andi	a4,s9,1
   14928:	8b3e                	mv	s6,a5
   1492a:	c701                	beqz	a4,14932 <_vfprintf_r+0x1896>
   1492c:	5732                	lw	a4,44(sp)
   1492e:	00e78b33          	add	s6,a5,a4
   14932:	400cfe13          	andi	t3,s9,1024
   14936:	000e0563          	beqz	t3,14940 <_vfprintf_r+0x18a4>
   1493a:	47f2                	lw	a5,28(sp)
   1493c:	1ef04c63          	bgtz	a5,14b34 <_vfprintf_r+0x1a98>
   14940:	fffb4693          	not	a3,s6
   14944:	86fd                	srai	a3,a3,0x1f
   14946:	00db7db3          	and	s11,s6,a3
   1494a:	06700893          	li	a7,103
   1494e:	d402                	sw	zero,40(sp)
   14950:	d202                	sw	zero,36(sp)
   14952:	f88ff06f          	j	140da <_vfprintf_r+0x103e>
   14956:	01d0                	addi	a2,sp,196
   14958:	85a6                	mv	a1,s1
   1495a:	854a                	mv	a0,s2
   1495c:	2669                	jal	14ce6 <__sprint_r>
   1495e:	98051d63          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   14962:	000cc683          	lbu	a3,0(s9)
   14966:	463e                	lw	a2,204(sp)
   14968:	85ce                	mv	a1,s3
   1496a:	4741                	li	a4,16
   1496c:	481d                	li	a6,7
   1496e:	9d36                	add	s10,s10,a3
   14970:	b69d                	j	144d6 <_vfprintf_r+0x143a>
   14972:	4525                	li	a0,9
   14974:	83656ae3          	bltu	a0,s6,141a8 <_vfprintf_r+0x110c>
   14978:	b861                	j	14210 <_vfprintf_r+0x1174>
   1497a:	57fd                	li	a5,-1
   1497c:	c63e                	sw	a5,12(sp)
   1497e:	9adfe06f          	j	1332a <_vfprintf_r+0x28e>
   14982:	02d00793          	li	a5,45
   14986:	0af103a3          	sb	a5,167(sp)
   1498a:	02d00713          	li	a4,45
   1498e:	b2a1                	j	142d6 <_vfprintf_r+0x123a>
   14990:	0a714703          	lbu	a4,167(sp)
   14994:	ca62                	sw	s8,20(sp)
   14996:	d402                	sw	zero,40(sp)
   14998:	d202                	sw	zero,36(sp)
   1499a:	ce02                	sw	zero,28(sp)
   1499c:	8dd6                	mv	s11,s5
   1499e:	8b56                	mv	s6,s5
   149a0:	4a81                	li	s5,0
   149a2:	c319                	beqz	a4,149a8 <_vfprintf_r+0x190c>
   149a4:	a65fe06f          	j	13408 <_vfprintf_r+0x36c>
   149a8:	87ffe06f          	j	13226 <_vfprintf_r+0x18a>
   149ac:	4522                	lw	a0,8(sp)
   149ae:	01d0                	addi	a2,sp,196
   149b0:	85a6                	mv	a1,s1
   149b2:	2e15                	jal	14ce6 <__sprint_r>
   149b4:	94051263          	bnez	a0,13af8 <_vfprintf_r+0xa5c>
   149b8:	5aba                	lw	s5,172(sp)
   149ba:	5782                	lw	a5,32(sp)
   149bc:	463e                	lw	a2,204(sp)
   149be:	844e                	mv	s0,s3
   149c0:	41578ab3          	sub	s5,a5,s5
   149c4:	b12ff06f          	j	13cd6 <_vfprintf_r+0xc3a>
   149c8:	67f1                	lui	a5,0x1c
   149ca:	cec78d13          	addi	s10,a5,-788 # 1bcec <__clzsi2+0x106>
   149ce:	ba19                	j	142e4 <_vfprintf_r+0x1248>
   149d0:	57ba                	lw	a5,172(sp)
   149d2:	ce3e                	sw	a5,28(sp)
   149d4:	87ba                	mv	a5,a4
   149d6:	b165                	j	1467e <_vfprintf_r+0x15e2>
   149d8:	010c                	addi	a1,sp,128
   149da:	855a                	mv	a0,s6
   149dc:	ceba                	sw	a4,92(sp)
   149de:	ccb2                	sw	a2,88(sp)
   149e0:	cac6                	sw	a7,84(sp)
   149e2:	c8b6                	sw	a3,80(sp)
   149e4:	c97e                	sw	t6,144(sp)
   149e6:	d47e                	sw	t6,40(sp)
   149e8:	cb7a                	sw	t5,148(sp)
   149ea:	d27a                	sw	t5,36(sp)
   149ec:	cd76                	sw	t4,152(sp)
   149ee:	d076                	sw	t4,32(sp)
   149f0:	ce2e                	sw	a1,28(sp)
   149f2:	cf62                	sw	s8,156(sp)
   149f4:	c102                	sw	zero,128(sp)
   149f6:	c302                	sw	zero,132(sp)
   149f8:	c502                	sw	zero,136(sp)
   149fa:	c702                	sw	zero,140(sp)
   149fc:	57b040ef          	jal	19776 <__eqtf2>
   14a00:	45f2                	lw	a1,28(sp)
   14a02:	5e82                	lw	t4,32(sp)
   14a04:	5f12                	lw	t5,36(sp)
   14a06:	5fa2                	lw	t6,40(sp)
   14a08:	46c6                	lw	a3,80(sp)
   14a0a:	48d6                	lw	a7,84(sp)
   14a0c:	4666                	lw	a2,88(sp)
   14a0e:	4776                	lw	a4,92(sp)
   14a10:	1c051063          	bnez	a0,14bd0 <_vfprintf_r+0x1b34>
   14a14:	57ba                	lw	a5,172(sp)
   14a16:	973e                	add	a4,a4,a5
   14a18:	ce3e                	sw	a5,28(sp)
   14a1a:	41a707b3          	sub	a5,a4,s10
   14a1e:	d03e                	sw	a5,32(sp)
   14a20:	47f2                	lw	a5,28(sp)
   14a22:	001cf713          	andi	a4,s9,1
   14a26:	01576733          	or	a4,a4,s5
   14a2a:	1af05963          	blez	a5,14bdc <_vfprintf_r+0x1b40>
   14a2e:	18071463          	bnez	a4,14bb6 <_vfprintf_r+0x1b1a>
   14a32:	4b72                	lw	s6,28(sp)
   14a34:	06600893          	li	a7,102
   14a38:	400cfe13          	andi	t3,s9,1024
   14a3c:	0e0e1e63          	bnez	t3,14b38 <_vfprintf_r+0x1a9c>
   14a40:	fffb4693          	not	a3,s6
   14a44:	86fd                	srai	a3,a3,0x1f
   14a46:	00db7db3          	and	s11,s6,a3
   14a4a:	b711                	j	1494e <_vfprintf_r+0x18b2>
   14a4c:	5782                	lw	a5,32(sp)
   14a4e:	5732                	lw	a4,44(sp)
   14a50:	06700893          	li	a7,103
   14a54:	00e78b33          	add	s6,a5,a4
   14a58:	47f2                	lw	a5,28(sp)
   14a5a:	fcf04fe3          	bgtz	a5,14a38 <_vfprintf_r+0x199c>
   14a5e:	40fb0f33          	sub	t5,s6,a5
   14a62:	001f0b13          	addi	s6,t5,1
   14a66:	fffb4693          	not	a3,s6
   14a6a:	86fd                	srai	a3,a3,0x1f
   14a6c:	00db7db3          	and	s11,s6,a3
   14a70:	bdf9                	j	1494e <_vfprintf_r+0x18b2>
   14a72:	8ee6                	mv	t4,s9
   14a74:	cf5fe06f          	j	13768 <_vfprintf_r+0x6cc>
   14a78:	6871                	lui	a6,0x1c
   14a7a:	55c1                	li	a1,-16
   14a7c:	40a00ab3          	neg	s5,a0
   14a80:	04c80813          	addi	a6,a6,76 # 1c04c <zeroes.0>
   14a84:	04b55263          	bge	a0,a1,14ac8 <_vfprintf_r+0x1a2c>
   14a88:	ce4a                	sw	s2,28(sp)
   14a8a:	4b41                	li	s6,16
   14a8c:	4c1d                	li	s8,7
   14a8e:	8942                	mv	s2,a6
   14a90:	a021                	j	14a98 <_vfprintf_r+0x19fc>
   14a92:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc205c>
   14a94:	035b5863          	bge	s6,s5,14ac4 <_vfprintf_r+0x1a28>
   14a98:	0641                	addi	a2,a2,16
   14a9a:	0705                	addi	a4,a4,1
   14a9c:	01242023          	sw	s2,0(s0)
   14aa0:	01642223          	sw	s6,4(s0)
   14aa4:	c7b2                	sw	a2,204(sp)
   14aa6:	c5ba                	sw	a4,200(sp)
   14aa8:	0421                	addi	s0,s0,8
   14aaa:	feec54e3          	bge	s8,a4,14a92 <_vfprintf_r+0x19f6>
   14aae:	4522                	lw	a0,8(sp)
   14ab0:	01d0                	addi	a2,sp,196
   14ab2:	85a6                	mv	a1,s1
   14ab4:	2c0d                	jal	14ce6 <__sprint_r>
   14ab6:	c119                	beqz	a0,14abc <_vfprintf_r+0x1a20>
   14ab8:	840ff06f          	j	13af8 <_vfprintf_r+0xa5c>
   14abc:	463e                	lw	a2,204(sp)
   14abe:	472e                	lw	a4,200(sp)
   14ac0:	844e                	mv	s0,s3
   14ac2:	bfc1                	j	14a92 <_vfprintf_r+0x19f6>
   14ac4:	884a                	mv	a6,s2
   14ac6:	4972                	lw	s2,28(sp)
   14ac8:	9656                	add	a2,a2,s5
   14aca:	0705                	addi	a4,a4,1
   14acc:	01042023          	sw	a6,0(s0)
   14ad0:	01542223          	sw	s5,4(s0)
   14ad4:	c7b2                	sw	a2,204(sp)
   14ad6:	c5ba                	sw	a4,200(sp)
   14ad8:	459d                	li	a1,7
   14ada:	f8e5d763          	bge	a1,a4,14268 <_vfprintf_r+0x11cc>
   14ade:	4522                	lw	a0,8(sp)
   14ae0:	01d0                	addi	a2,sp,196
   14ae2:	85a6                	mv	a1,s1
   14ae4:	2409                	jal	14ce6 <__sprint_r>
   14ae6:	c119                	beqz	a0,14aec <_vfprintf_r+0x1a50>
   14ae8:	810ff06f          	j	13af8 <_vfprintf_r+0xa5c>
   14aec:	463e                	lw	a2,204(sp)
   14aee:	472e                	lw	a4,200(sp)
   14af0:	844e                	mv	s0,s3
   14af2:	837ff06f          	j	14328 <_vfprintf_r+0x128c>
   14af6:	0b610693          	addi	a3,sp,182
   14afa:	e619                	bnez	a2,14b08 <_vfprintf_r+0x1a6c>
   14afc:	03000693          	li	a3,48
   14b00:	0ad10b23          	sb	a3,182(sp)
   14b04:	0b710693          	addi	a3,sp,183
   14b08:	0b1c                	addi	a5,sp,400
   14b0a:	40f68633          	sub	a2,a3,a5
   14b0e:	03070713          	addi	a4,a4,48
   14b12:	0dd60793          	addi	a5,a2,221
   14b16:	00e68023          	sb	a4,0(a3)
   14b1a:	c0be                	sw	a5,64(sp)
   14b1c:	d92ff06f          	j	140ae <_vfprintf_r+0x1012>
   14b20:	c802                	sw	zero,16(sp)
   14b22:	4a99                	li	s5,6
   14b24:	9effe06f          	j	13512 <_vfprintf_r+0x476>
   14b28:	001cf713          	andi	a4,s9,1
   14b2c:	d8070a63          	beqz	a4,140c0 <_vfprintf_r+0x1024>
   14b30:	d8cff06f          	j	140bc <_vfprintf_r+0x1020>
   14b34:	06700893          	li	a7,103
   14b38:	5672                	lw	a2,60(sp)
   14b3a:	0ff00693          	li	a3,255
   14b3e:	00064703          	lbu	a4,0(a2)
   14b42:	0ed70163          	beq	a4,a3,14c24 <_vfprintf_r+0x1b88>
   14b46:	47f2                	lw	a5,28(sp)
   14b48:	4501                	li	a0,0
   14b4a:	4581                	li	a1,0
   14b4c:	00f75a63          	bge	a4,a5,14b60 <_vfprintf_r+0x1ac4>
   14b50:	8f99                	sub	a5,a5,a4
   14b52:	00164703          	lbu	a4,1(a2)
   14b56:	c71d                	beqz	a4,14b84 <_vfprintf_r+0x1ae8>
   14b58:	0585                	addi	a1,a1,1
   14b5a:	0605                	addi	a2,a2,1
   14b5c:	fed718e3          	bne	a4,a3,14b4c <_vfprintf_r+0x1ab0>
   14b60:	de32                	sw	a2,60(sp)
   14b62:	d22e                	sw	a1,36(sp)
   14b64:	d42a                	sw	a0,40(sp)
   14b66:	ce3e                	sw	a5,28(sp)
   14b68:	57a2                	lw	a5,40(sp)
   14b6a:	5712                	lw	a4,36(sp)
   14b6c:	973e                	add	a4,a4,a5
   14b6e:	47a6                	lw	a5,72(sp)
   14b70:	02f70733          	mul	a4,a4,a5
   14b74:	9b3a                	add	s6,s6,a4
   14b76:	fffb4693          	not	a3,s6
   14b7a:	86fd                	srai	a3,a3,0x1f
   14b7c:	00db7db3          	and	s11,s6,a3
   14b80:	d5aff06f          	j	140da <_vfprintf_r+0x103e>
   14b84:	00064703          	lbu	a4,0(a2)
   14b88:	0505                	addi	a0,a0,1
   14b8a:	bfc9                	j	14b5c <_vfprintf_r+0x1ac0>
   14b8c:	8c4a                	mv	s8,s2
   14b8e:	001a8693          	addi	a3,s5,1
   14b92:	5892                	lw	a7,36(sp)
   14b94:	5ca2                	lw	s9,40(sp)
   14b96:	4b86                	lw	s7,64(sp)
   14b98:	4436                	lw	s0,76(sp)
   14b9a:	5902                	lw	s2,32(sp)
   14b9c:	44c6                	lw	s1,80(sp)
   14b9e:	4d56                	lw	s10,84(sp)
   14ba0:	96e2                	add	a3,a3,s8
   14ba2:	03000613          	li	a2,48
   14ba6:	d20ac5e3          	bltz	s5,148d0 <_vfprintf_r+0x1834>
   14baa:	0c05                	addi	s8,s8,1
   14bac:	fecc0fa3          	sb	a2,-1(s8)
   14bb0:	fedc1de3          	bne	s8,a3,14baa <_vfprintf_r+0x1b0e>
   14bb4:	bb31                	j	148d0 <_vfprintf_r+0x1834>
   14bb6:	5732                	lw	a4,44(sp)
   14bb8:	06600893          	li	a7,102
   14bbc:	00ea8f33          	add	t5,s5,a4
   14bc0:	00ff0b33          	add	s6,t5,a5
   14bc4:	bd95                	j	14a38 <_vfprintf_r+0x199c>
   14bc6:	6771                	lui	a4,0x1c
   14bc8:	cf070793          	addi	a5,a4,-784 # 1bcf0 <__clzsi2+0x10a>
   14bcc:	ce3e                	sw	a5,28(sp)
   14bce:	b66d                	j	14778 <_vfprintf_r+0x16dc>
   14bd0:	4505                	li	a0,1
   14bd2:	40d506b3          	sub	a3,a0,a3
   14bd6:	d736                	sw	a3,172(sp)
   14bd8:	9736                	add	a4,a4,a3
   14bda:	b485                	j	1463a <_vfprintf_r+0x159e>
   14bdc:	e711                	bnez	a4,14be8 <_vfprintf_r+0x1b4c>
   14bde:	4d85                	li	s11,1
   14be0:	06600893          	li	a7,102
   14be4:	4b05                	li	s6,1
   14be6:	b3a5                	j	1494e <_vfprintf_r+0x18b2>
   14be8:	57b2                	lw	a5,44(sp)
   14bea:	06600893          	li	a7,102
   14bee:	00178f13          	addi	t5,a5,1
   14bf2:	015f0b33          	add	s6,t5,s5
   14bf6:	fffb4693          	not	a3,s6
   14bfa:	86fd                	srai	a3,a3,0x1f
   14bfc:	00db7db3          	and	s11,s6,a3
   14c00:	b3b9                	j	1494e <_vfprintf_r+0x18b2>
   14c02:	4789                	li	a5,2
   14c04:	c0be                	sw	a5,64(sp)
   14c06:	ca8ff06f          	j	140ae <_vfprintf_r+0x1012>
   14c0a:	47d2                	lw	a5,20(sp)
   14c0c:	0007aa83          	lw	s5,0(a5)
   14c10:	0791                	addi	a5,a5,4
   14c12:	000ad363          	bgez	s5,14c18 <_vfprintf_r+0x1b7c>
   14c16:	5afd                	li	s5,-1
   14c18:	00194883          	lbu	a7,1(s2)
   14c1c:	ca3e                	sw	a5,20(sp)
   14c1e:	8936                	mv	s2,a3
   14c20:	dacfe06f          	j	131cc <_vfprintf_r+0x130>
   14c24:	d402                	sw	zero,40(sp)
   14c26:	d202                	sw	zero,36(sp)
   14c28:	b781                	j	14b68 <_vfprintf_r+0x1acc>
   14c2a:	04500613          	li	a2,69
   14c2e:	010c                	addi	a1,sp,128
   14c30:	b429                	j	1463a <_vfprintf_r+0x159e>
   14c32:	00c4d783          	lhu	a5,12(s1)
   14c36:	0407e793          	ori	a5,a5,64
   14c3a:	00f49623          	sh	a5,12(s1)
   14c3e:	ebafe06f          	j	132f8 <_vfprintf_r+0x25c>

00014c42 <vfprintf>:
   14c42:	87aa                	mv	a5,a0
   14c44:	f141a503          	lw	a0,-236(gp) # 1dc5c <_impure_ptr>
   14c48:	86b2                	mv	a3,a2
   14c4a:	862e                	mv	a2,a1
   14c4c:	85be                	mv	a1,a5
   14c4e:	c4efe06f          	j	1309c <_vfprintf_r>

00014c52 <__sbprintf>:
   14c52:	b8010113          	addi	sp,sp,-1152
   14c56:	00c59783          	lh	a5,12(a1)
   14c5a:	00e5d703          	lhu	a4,14(a1)
   14c5e:	46812c23          	sw	s0,1144(sp)
   14c62:	842e                	mv	s0,a1
   14c64:	65c1                	lui	a1,0x10
   14c66:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   14c68:	06442e03          	lw	t3,100(s0)
   14c6c:	01c42303          	lw	t1,28(s0)
   14c70:	02442883          	lw	a7,36(s0)
   14c74:	0742                	slli	a4,a4,0x10
   14c76:	8fed                	and	a5,a5,a1
   14c78:	8fd9                	or	a5,a5,a4
   14c7a:	40000813          	li	a6,1024
   14c7e:	ca3e                	sw	a5,20(sp)
   14c80:	002c                	addi	a1,sp,8
   14c82:	189c                	addi	a5,sp,112
   14c84:	46912a23          	sw	s1,1140(sp)
   14c88:	47212823          	sw	s2,1136(sp)
   14c8c:	46112e23          	sw	ra,1148(sp)
   14c90:	892a                	mv	s2,a0
   14c92:	d6f2                	sw	t3,108(sp)
   14c94:	d21a                	sw	t1,36(sp)
   14c96:	d646                	sw	a7,44(sp)
   14c98:	c43e                	sw	a5,8(sp)
   14c9a:	cc3e                	sw	a5,24(sp)
   14c9c:	c842                	sw	a6,16(sp)
   14c9e:	ce42                	sw	a6,28(sp)
   14ca0:	d002                	sw	zero,32(sp)
   14ca2:	bfafe0ef          	jal	1309c <_vfprintf_r>
   14ca6:	84aa                	mv	s1,a0
   14ca8:	02055963          	bgez	a0,14cda <__sbprintf+0x88>
   14cac:	01415783          	lhu	a5,20(sp)
   14cb0:	0407f793          	andi	a5,a5,64
   14cb4:	c799                	beqz	a5,14cc2 <__sbprintf+0x70>
   14cb6:	00c45783          	lhu	a5,12(s0)
   14cba:	0407e793          	ori	a5,a5,64
   14cbe:	00f41623          	sh	a5,12(s0)
   14cc2:	47c12083          	lw	ra,1148(sp)
   14cc6:	47812403          	lw	s0,1144(sp)
   14cca:	47012903          	lw	s2,1136(sp)
   14cce:	8526                	mv	a0,s1
   14cd0:	47412483          	lw	s1,1140(sp)
   14cd4:	48010113          	addi	sp,sp,1152
   14cd8:	8082                	ret
   14cda:	002c                	addi	a1,sp,8
   14cdc:	854a                	mv	a0,s2
   14cde:	2c9d                	jal	14f54 <_fflush_r>
   14ce0:	d571                	beqz	a0,14cac <__sbprintf+0x5a>
   14ce2:	54fd                	li	s1,-1
   14ce4:	b7e1                	j	14cac <__sbprintf+0x5a>

00014ce6 <__sprint_r>:
   14ce6:	461c                	lw	a5,8(a2)
   14ce8:	1141                	addi	sp,sp,-16
   14cea:	c422                	sw	s0,8(sp)
   14cec:	c606                	sw	ra,12(sp)
   14cee:	8432                	mv	s0,a2
   14cf0:	eb81                	bnez	a5,14d00 <__sprint_r+0x1a>
   14cf2:	40b2                	lw	ra,12(sp)
   14cf4:	00042223          	sw	zero,4(s0)
   14cf8:	4422                	lw	s0,8(sp)
   14cfa:	4501                	li	a0,0
   14cfc:	0141                	addi	sp,sp,16
   14cfe:	8082                	ret
   14d00:	2cf1                	jal	14fdc <__sfvwrite_r>
   14d02:	40b2                	lw	ra,12(sp)
   14d04:	00042423          	sw	zero,8(s0)
   14d08:	00042223          	sw	zero,4(s0)
   14d0c:	4422                	lw	s0,8(sp)
   14d0e:	0141                	addi	sp,sp,16
   14d10:	8082                	ret

00014d12 <_fclose_r>:
   14d12:	1141                	addi	sp,sp,-16
   14d14:	c606                	sw	ra,12(sp)
   14d16:	c04a                	sw	s2,0(sp)
   14d18:	cd89                	beqz	a1,14d32 <_fclose_r+0x20>
   14d1a:	c422                	sw	s0,8(sp)
   14d1c:	c226                	sw	s1,4(sp)
   14d1e:	842e                	mv	s0,a1
   14d20:	84aa                	mv	s1,a0
   14d22:	c119                	beqz	a0,14d28 <_fclose_r+0x16>
   14d24:	595c                	lw	a5,52(a0)
   14d26:	c7d1                	beqz	a5,14db2 <_fclose_r+0xa0>
   14d28:	00c41783          	lh	a5,12(s0)
   14d2c:	eb89                	bnez	a5,14d3e <_fclose_r+0x2c>
   14d2e:	4422                	lw	s0,8(sp)
   14d30:	4492                	lw	s1,4(sp)
   14d32:	40b2                	lw	ra,12(sp)
   14d34:	4901                	li	s2,0
   14d36:	854a                	mv	a0,s2
   14d38:	4902                	lw	s2,0(sp)
   14d3a:	0141                	addi	sp,sp,16
   14d3c:	8082                	ret
   14d3e:	85a2                	mv	a1,s0
   14d40:	8526                	mv	a0,s1
   14d42:	28bd                	jal	14dc0 <__sflush_r>
   14d44:	545c                	lw	a5,44(s0)
   14d46:	892a                	mv	s2,a0
   14d48:	c791                	beqz	a5,14d54 <_fclose_r+0x42>
   14d4a:	4c4c                	lw	a1,28(s0)
   14d4c:	8526                	mv	a0,s1
   14d4e:	9782                	jalr	a5
   14d50:	04054663          	bltz	a0,14d9c <_fclose_r+0x8a>
   14d54:	00c45783          	lhu	a5,12(s0)
   14d58:	0807f793          	andi	a5,a5,128
   14d5c:	e7b1                	bnez	a5,14da8 <_fclose_r+0x96>
   14d5e:	580c                	lw	a1,48(s0)
   14d60:	c991                	beqz	a1,14d74 <_fclose_r+0x62>
   14d62:	04040793          	addi	a5,s0,64
   14d66:	00f58563          	beq	a1,a5,14d70 <_fclose_r+0x5e>
   14d6a:	8526                	mv	a0,s1
   14d6c:	b67fd0ef          	jal	128d2 <_free_r>
   14d70:	02042823          	sw	zero,48(s0)
   14d74:	406c                	lw	a1,68(s0)
   14d76:	c591                	beqz	a1,14d82 <_fclose_r+0x70>
   14d78:	8526                	mv	a0,s1
   14d7a:	b59fd0ef          	jal	128d2 <_free_r>
   14d7e:	04042223          	sw	zero,68(s0)
   14d82:	c78fd0ef          	jal	121fa <__sfp_lock_acquire>
   14d86:	00041623          	sh	zero,12(s0)
   14d8a:	c72fd0ef          	jal	121fc <__sfp_lock_release>
   14d8e:	40b2                	lw	ra,12(sp)
   14d90:	4422                	lw	s0,8(sp)
   14d92:	4492                	lw	s1,4(sp)
   14d94:	854a                	mv	a0,s2
   14d96:	4902                	lw	s2,0(sp)
   14d98:	0141                	addi	sp,sp,16
   14d9a:	8082                	ret
   14d9c:	00c45783          	lhu	a5,12(s0)
   14da0:	597d                	li	s2,-1
   14da2:	0807f793          	andi	a5,a5,128
   14da6:	dfc5                	beqz	a5,14d5e <_fclose_r+0x4c>
   14da8:	480c                	lw	a1,16(s0)
   14daa:	8526                	mv	a0,s1
   14dac:	b27fd0ef          	jal	128d2 <_free_r>
   14db0:	b77d                	j	14d5e <_fclose_r+0x4c>
   14db2:	c32fd0ef          	jal	121e4 <__sinit>
   14db6:	bf8d                	j	14d28 <_fclose_r+0x16>

00014db8 <fclose>:
   14db8:	85aa                	mv	a1,a0
   14dba:	f141a503          	lw	a0,-236(gp) # 1dc5c <_impure_ptr>
   14dbe:	bf91                	j	14d12 <_fclose_r>

00014dc0 <__sflush_r>:
   14dc0:	00c59703          	lh	a4,12(a1)
   14dc4:	1101                	addi	sp,sp,-32
   14dc6:	cc22                	sw	s0,24(sp)
   14dc8:	c64e                	sw	s3,12(sp)
   14dca:	ce06                	sw	ra,28(sp)
   14dcc:	00877793          	andi	a5,a4,8
   14dd0:	842e                	mv	s0,a1
   14dd2:	89aa                	mv	s3,a0
   14dd4:	e7e1                	bnez	a5,14e9c <__sflush_r+0xdc>
   14dd6:	6785                	lui	a5,0x1
   14dd8:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   14ddc:	41d4                	lw	a3,4(a1)
   14dde:	8fd9                	or	a5,a5,a4
   14de0:	00f59623          	sh	a5,12(a1)
   14de4:	10d05563          	blez	a3,14eee <__sflush_r+0x12e>
   14de8:	02842803          	lw	a6,40(s0)
   14dec:	0a080263          	beqz	a6,14e90 <__sflush_r+0xd0>
   14df0:	ca26                	sw	s1,20(sp)
   14df2:	01371693          	slli	a3,a4,0x13
   14df6:	0009a483          	lw	s1,0(s3)
   14dfa:	0009a023          	sw	zero,0(s3)
   14dfe:	4c4c                	lw	a1,28(s0)
   14e00:	0e06ce63          	bltz	a3,14efc <__sflush_r+0x13c>
   14e04:	4601                	li	a2,0
   14e06:	4685                	li	a3,1
   14e08:	854e                	mv	a0,s3
   14e0a:	9802                	jalr	a6
   14e0c:	57fd                	li	a5,-1
   14e0e:	862a                	mv	a2,a0
   14e10:	10f50f63          	beq	a0,a5,14f2e <__sflush_r+0x16e>
   14e14:	00c41783          	lh	a5,12(s0)
   14e18:	02842803          	lw	a6,40(s0)
   14e1c:	4c4c                	lw	a1,28(s0)
   14e1e:	8b91                	andi	a5,a5,4
   14e20:	c799                	beqz	a5,14e2e <__sflush_r+0x6e>
   14e22:	4058                	lw	a4,4(s0)
   14e24:	581c                	lw	a5,48(s0)
   14e26:	8e19                	sub	a2,a2,a4
   14e28:	c399                	beqz	a5,14e2e <__sflush_r+0x6e>
   14e2a:	5c5c                	lw	a5,60(s0)
   14e2c:	8e1d                	sub	a2,a2,a5
   14e2e:	4681                	li	a3,0
   14e30:	854e                	mv	a0,s3
   14e32:	9802                	jalr	a6
   14e34:	57fd                	li	a5,-1
   14e36:	0cf51563          	bne	a0,a5,14f00 <__sflush_r+0x140>
   14e3a:	0009a683          	lw	a3,0(s3)
   14e3e:	47f5                	li	a5,29
   14e40:	00c41703          	lh	a4,12(s0)
   14e44:	10d7e163          	bltu	a5,a3,14f46 <__sflush_r+0x186>
   14e48:	204007b7          	lui	a5,0x20400
   14e4c:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e206d>
   14e4e:	00d7d7b3          	srl	a5,a5,a3
   14e52:	8b85                	andi	a5,a5,1
   14e54:	cbed                	beqz	a5,14f46 <__sflush_r+0x186>
   14e56:	4810                	lw	a2,16(s0)
   14e58:	77fd                	lui	a5,0xfffff
   14e5a:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe186b>
   14e5e:	8ff9                	and	a5,a5,a4
   14e60:	00f41623          	sh	a5,12(s0)
   14e64:	00042223          	sw	zero,4(s0)
   14e68:	c010                	sw	a2,0(s0)
   14e6a:	01371793          	slli	a5,a4,0x13
   14e6e:	0007d363          	bgez	a5,14e74 <__sflush_r+0xb4>
   14e72:	c6dd                	beqz	a3,14f20 <__sflush_r+0x160>
   14e74:	580c                	lw	a1,48(s0)
   14e76:	0099a023          	sw	s1,0(s3)
   14e7a:	c9c5                	beqz	a1,14f2a <__sflush_r+0x16a>
   14e7c:	04040793          	addi	a5,s0,64
   14e80:	00f58563          	beq	a1,a5,14e8a <__sflush_r+0xca>
   14e84:	854e                	mv	a0,s3
   14e86:	a4dfd0ef          	jal	128d2 <_free_r>
   14e8a:	44d2                	lw	s1,20(sp)
   14e8c:	02042823          	sw	zero,48(s0)
   14e90:	4501                	li	a0,0
   14e92:	40f2                	lw	ra,28(sp)
   14e94:	4462                	lw	s0,24(sp)
   14e96:	49b2                	lw	s3,12(sp)
   14e98:	6105                	addi	sp,sp,32
   14e9a:	8082                	ret
   14e9c:	c84a                	sw	s2,16(sp)
   14e9e:	0105a903          	lw	s2,16(a1)
   14ea2:	04090b63          	beqz	s2,14ef8 <__sflush_r+0x138>
   14ea6:	ca26                	sw	s1,20(sp)
   14ea8:	4184                	lw	s1,0(a1)
   14eaa:	8b0d                	andi	a4,a4,3
   14eac:	0125a023          	sw	s2,0(a1)
   14eb0:	412484b3          	sub	s1,s1,s2
   14eb4:	4781                	li	a5,0
   14eb6:	e311                	bnez	a4,14eba <__sflush_r+0xfa>
   14eb8:	49dc                	lw	a5,20(a1)
   14eba:	c41c                	sw	a5,8(s0)
   14ebc:	00904663          	bgtz	s1,14ec8 <__sflush_r+0x108>
   14ec0:	a81d                	j	14ef6 <__sflush_r+0x136>
   14ec2:	992a                	add	s2,s2,a0
   14ec4:	02905963          	blez	s1,14ef6 <__sflush_r+0x136>
   14ec8:	505c                	lw	a5,36(s0)
   14eca:	4c4c                	lw	a1,28(s0)
   14ecc:	86a6                	mv	a3,s1
   14ece:	864a                	mv	a2,s2
   14ed0:	854e                	mv	a0,s3
   14ed2:	9782                	jalr	a5
   14ed4:	8c89                	sub	s1,s1,a0
   14ed6:	fea046e3          	bgtz	a0,14ec2 <__sflush_r+0x102>
   14eda:	00c41703          	lh	a4,12(s0)
   14ede:	4942                	lw	s2,16(sp)
   14ee0:	04076713          	ori	a4,a4,64
   14ee4:	44d2                	lw	s1,20(sp)
   14ee6:	00e41623          	sh	a4,12(s0)
   14eea:	557d                	li	a0,-1
   14eec:	b75d                	j	14e92 <__sflush_r+0xd2>
   14eee:	5dd4                	lw	a3,60(a1)
   14ef0:	eed04ce3          	bgtz	a3,14de8 <__sflush_r+0x28>
   14ef4:	bf71                	j	14e90 <__sflush_r+0xd0>
   14ef6:	44d2                	lw	s1,20(sp)
   14ef8:	4942                	lw	s2,16(sp)
   14efa:	bf59                	j	14e90 <__sflush_r+0xd0>
   14efc:	4830                	lw	a2,80(s0)
   14efe:	b705                	j	14e1e <__sflush_r+0x5e>
   14f00:	00c41703          	lh	a4,12(s0)
   14f04:	4814                	lw	a3,16(s0)
   14f06:	77fd                	lui	a5,0xfffff
   14f08:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe186b>
   14f0c:	8ff9                	and	a5,a5,a4
   14f0e:	00f41623          	sh	a5,12(s0)
   14f12:	00042223          	sw	zero,4(s0)
   14f16:	c014                	sw	a3,0(s0)
   14f18:	01371793          	slli	a5,a4,0x13
   14f1c:	f407dce3          	bgez	a5,14e74 <__sflush_r+0xb4>
   14f20:	580c                	lw	a1,48(s0)
   14f22:	c828                	sw	a0,80(s0)
   14f24:	0099a023          	sw	s1,0(s3)
   14f28:	f9b1                	bnez	a1,14e7c <__sflush_r+0xbc>
   14f2a:	44d2                	lw	s1,20(sp)
   14f2c:	b795                	j	14e90 <__sflush_r+0xd0>
   14f2e:	0009a783          	lw	a5,0(s3)
   14f32:	ee0781e3          	beqz	a5,14e14 <__sflush_r+0x54>
   14f36:	4775                	li	a4,29
   14f38:	00e78a63          	beq	a5,a4,14f4c <__sflush_r+0x18c>
   14f3c:	4759                	li	a4,22
   14f3e:	00e78763          	beq	a5,a4,14f4c <__sflush_r+0x18c>
   14f42:	00c41703          	lh	a4,12(s0)
   14f46:	04076713          	ori	a4,a4,64
   14f4a:	bf69                	j	14ee4 <__sflush_r+0x124>
   14f4c:	0099a023          	sw	s1,0(s3)
   14f50:	44d2                	lw	s1,20(sp)
   14f52:	bf3d                	j	14e90 <__sflush_r+0xd0>

00014f54 <_fflush_r>:
   14f54:	1101                	addi	sp,sp,-32
   14f56:	cc22                	sw	s0,24(sp)
   14f58:	ce06                	sw	ra,28(sp)
   14f5a:	842a                	mv	s0,a0
   14f5c:	c119                	beqz	a0,14f62 <_fflush_r+0xe>
   14f5e:	595c                	lw	a5,52(a0)
   14f60:	cf91                	beqz	a5,14f7c <_fflush_r+0x28>
   14f62:	00c59783          	lh	a5,12(a1)
   14f66:	e791                	bnez	a5,14f72 <_fflush_r+0x1e>
   14f68:	40f2                	lw	ra,28(sp)
   14f6a:	4462                	lw	s0,24(sp)
   14f6c:	4501                	li	a0,0
   14f6e:	6105                	addi	sp,sp,32
   14f70:	8082                	ret
   14f72:	8522                	mv	a0,s0
   14f74:	4462                	lw	s0,24(sp)
   14f76:	40f2                	lw	ra,28(sp)
   14f78:	6105                	addi	sp,sp,32
   14f7a:	b599                	j	14dc0 <__sflush_r>
   14f7c:	c62e                	sw	a1,12(sp)
   14f7e:	a66fd0ef          	jal	121e4 <__sinit>
   14f82:	45b2                	lw	a1,12(sp)
   14f84:	bff9                	j	14f62 <_fflush_r+0xe>

00014f86 <fflush>:
   14f86:	cd05                	beqz	a0,14fbe <fflush+0x38>
   14f88:	85aa                	mv	a1,a0
   14f8a:	f141a503          	lw	a0,-236(gp) # 1dc5c <_impure_ptr>
   14f8e:	c119                	beqz	a0,14f94 <fflush+0xe>
   14f90:	595c                	lw	a5,52(a0)
   14f92:	c799                	beqz	a5,14fa0 <fflush+0x1a>
   14f94:	00c59783          	lh	a5,12(a1)
   14f98:	e399                	bnez	a5,14f9e <fflush+0x18>
   14f9a:	4501                	li	a0,0
   14f9c:	8082                	ret
   14f9e:	b50d                	j	14dc0 <__sflush_r>
   14fa0:	1101                	addi	sp,sp,-32
   14fa2:	c62e                	sw	a1,12(sp)
   14fa4:	c42a                	sw	a0,8(sp)
   14fa6:	ce06                	sw	ra,28(sp)
   14fa8:	a3cfd0ef          	jal	121e4 <__sinit>
   14fac:	45b2                	lw	a1,12(sp)
   14fae:	4522                	lw	a0,8(sp)
   14fb0:	00c59783          	lh	a5,12(a1)
   14fb4:	e385                	bnez	a5,14fd4 <fflush+0x4e>
   14fb6:	40f2                	lw	ra,28(sp)
   14fb8:	4501                	li	a0,0
   14fba:	6105                	addi	sp,sp,32
   14fbc:	8082                	ret
   14fbe:	6675                	lui	a2,0x1d
   14fc0:	65d5                	lui	a1,0x15
   14fc2:	6575                	lui	a0,0x1d
   14fc4:	54860613          	addi	a2,a2,1352 # 1d548 <__sglue>
   14fc8:	f5458593          	addi	a1,a1,-172 # 14f54 <_fflush_r>
   14fcc:	55850513          	addi	a0,a0,1368 # 1d558 <_impure_data>
   14fd0:	a4efd06f          	j	1221e <_fwalk_sglue>
   14fd4:	40f2                	lw	ra,28(sp)
   14fd6:	6105                	addi	sp,sp,32
   14fd8:	de9ff06f          	j	14dc0 <__sflush_r>

00014fdc <__sfvwrite_r>:
   14fdc:	461c                	lw	a5,8(a2)
   14fde:	1c078d63          	beqz	a5,151b8 <__sfvwrite_r+0x1dc>
   14fe2:	00c59683          	lh	a3,12(a1)
   14fe6:	7179                	addi	sp,sp,-48
   14fe8:	d422                	sw	s0,40(sp)
   14fea:	cc52                	sw	s4,24(sp)
   14fec:	c85a                	sw	s6,16(sp)
   14fee:	d606                	sw	ra,44(sp)
   14ff0:	0086f793          	andi	a5,a3,8
   14ff4:	8b32                	mv	s6,a2
   14ff6:	8a2a                	mv	s4,a0
   14ff8:	842e                	mv	s0,a1
   14ffa:	c7ad                	beqz	a5,15064 <__sfvwrite_r+0x88>
   14ffc:	499c                	lw	a5,16(a1)
   14ffe:	c3bd                	beqz	a5,15064 <__sfvwrite_r+0x88>
   15000:	d226                	sw	s1,36(sp)
   15002:	d04a                	sw	s2,32(sp)
   15004:	ce4e                	sw	s3,28(sp)
   15006:	ca56                	sw	s5,20(sp)
   15008:	0026f793          	andi	a5,a3,2
   1500c:	000b2483          	lw	s1,0(s6)
   15010:	cbb5                	beqz	a5,15084 <__sfvwrite_r+0xa8>
   15012:	505c                	lw	a5,36(s0)
   15014:	4c4c                	lw	a1,28(s0)
   15016:	80000ab7          	lui	s5,0x80000
   1501a:	4981                	li	s3,0
   1501c:	4901                	li	s2,0
   1501e:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe1c6c>
   15022:	864e                	mv	a2,s3
   15024:	8552                	mv	a0,s4
   15026:	02090963          	beqz	s2,15058 <__sfvwrite_r+0x7c>
   1502a:	86ca                	mv	a3,s2
   1502c:	012af363          	bgeu	s5,s2,15032 <__sfvwrite_r+0x56>
   15030:	86d6                	mv	a3,s5
   15032:	9782                	jalr	a5
   15034:	2ca05f63          	blez	a0,15312 <__sfvwrite_r+0x336>
   15038:	008b2783          	lw	a5,8(s6)
   1503c:	99aa                	add	s3,s3,a0
   1503e:	40a90933          	sub	s2,s2,a0
   15042:	8f89                	sub	a5,a5,a0
   15044:	00fb2423          	sw	a5,8(s6)
   15048:	12078563          	beqz	a5,15172 <__sfvwrite_r+0x196>
   1504c:	505c                	lw	a5,36(s0)
   1504e:	4c4c                	lw	a1,28(s0)
   15050:	864e                	mv	a2,s3
   15052:	8552                	mv	a0,s4
   15054:	fc091be3          	bnez	s2,1502a <__sfvwrite_r+0x4e>
   15058:	0004a983          	lw	s3,0(s1)
   1505c:	0044a903          	lw	s2,4(s1)
   15060:	04a1                	addi	s1,s1,8
   15062:	b7c1                	j	15022 <__sfvwrite_r+0x46>
   15064:	85a2                	mv	a1,s0
   15066:	8552                	mv	a0,s4
   15068:	21bd                	jal	154d6 <__swsetup_r>
   1506a:	14051063          	bnez	a0,151aa <__sfvwrite_r+0x1ce>
   1506e:	00c41683          	lh	a3,12(s0)
   15072:	d226                	sw	s1,36(sp)
   15074:	d04a                	sw	s2,32(sp)
   15076:	ce4e                	sw	s3,28(sp)
   15078:	ca56                	sw	s5,20(sp)
   1507a:	0026f793          	andi	a5,a3,2
   1507e:	000b2483          	lw	s1,0(s6)
   15082:	fbc1                	bnez	a5,15012 <__sfvwrite_r+0x36>
   15084:	c65e                	sw	s7,12(sp)
   15086:	c462                	sw	s8,8(sp)
   15088:	0016f793          	andi	a5,a3,1
   1508c:	12079863          	bnez	a5,151bc <__sfvwrite_r+0x1e0>
   15090:	401c                	lw	a5,0(s0)
   15092:	4418                	lw	a4,8(s0)
   15094:	80000ab7          	lui	s5,0x80000
   15098:	c266                	sw	s9,4(sp)
   1509a:	4b81                	li	s7,0
   1509c:	4981                	li	s3,0
   1509e:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe206b>
   150a0:	853e                	mv	a0,a5
   150a2:	8c3a                	mv	s8,a4
   150a4:	0a098e63          	beqz	s3,15160 <__sfvwrite_r+0x184>
   150a8:	2006f613          	andi	a2,a3,512
   150ac:	1a060763          	beqz	a2,1525a <__sfvwrite_r+0x27e>
   150b0:	8cba                	mv	s9,a4
   150b2:	20e9e863          	bltu	s3,a4,152c2 <__sfvwrite_r+0x2e6>
   150b6:	4806f713          	andi	a4,a3,1152
   150ba:	c73d                	beqz	a4,15128 <__sfvwrite_r+0x14c>
   150bc:	4850                	lw	a2,20(s0)
   150be:	480c                	lw	a1,16(s0)
   150c0:	00161713          	slli	a4,a2,0x1
   150c4:	9732                	add	a4,a4,a2
   150c6:	40b78933          	sub	s2,a5,a1
   150ca:	01f75c13          	srli	s8,a4,0x1f
   150ce:	9c3a                	add	s8,s8,a4
   150d0:	00190793          	addi	a5,s2,1
   150d4:	401c5c13          	srai	s8,s8,0x1
   150d8:	97ce                	add	a5,a5,s3
   150da:	8662                	mv	a2,s8
   150dc:	00fc7463          	bgeu	s8,a5,150e4 <__sfvwrite_r+0x108>
   150e0:	8c3e                	mv	s8,a5
   150e2:	863e                	mv	a2,a5
   150e4:	4006f693          	andi	a3,a3,1024
   150e8:	1e068c63          	beqz	a3,152e0 <__sfvwrite_r+0x304>
   150ec:	85b2                	mv	a1,a2
   150ee:	8552                	mv	a0,s4
   150f0:	a05fd0ef          	jal	12af4 <_malloc_r>
   150f4:	8caa                	mv	s9,a0
   150f6:	22050163          	beqz	a0,15318 <__sfvwrite_r+0x33c>
   150fa:	480c                	lw	a1,16(s0)
   150fc:	864a                	mv	a2,s2
   150fe:	2709                	jal	15800 <memcpy>
   15100:	00c45783          	lhu	a5,12(s0)
   15104:	b7f7f793          	andi	a5,a5,-1153
   15108:	0807e793          	ori	a5,a5,128
   1510c:	00f41623          	sh	a5,12(s0)
   15110:	012c8533          	add	a0,s9,s2
   15114:	412c07b3          	sub	a5,s8,s2
   15118:	01942823          	sw	s9,16(s0)
   1511c:	01842a23          	sw	s8,20(s0)
   15120:	c008                	sw	a0,0(s0)
   15122:	8c4e                	mv	s8,s3
   15124:	c41c                	sw	a5,8(s0)
   15126:	8cce                	mv	s9,s3
   15128:	8666                	mv	a2,s9
   1512a:	85de                	mv	a1,s7
   1512c:	2521                	jal	15734 <memmove>
   1512e:	4418                	lw	a4,8(s0)
   15130:	401c                	lw	a5,0(s0)
   15132:	894e                	mv	s2,s3
   15134:	41870733          	sub	a4,a4,s8
   15138:	97e6                	add	a5,a5,s9
   1513a:	c418                	sw	a4,8(s0)
   1513c:	c01c                	sw	a5,0(s0)
   1513e:	4981                	li	s3,0
   15140:	008b2783          	lw	a5,8(s6)
   15144:	9bca                	add	s7,s7,s2
   15146:	412787b3          	sub	a5,a5,s2
   1514a:	00fb2423          	sw	a5,8(s6)
   1514e:	cf99                	beqz	a5,1516c <__sfvwrite_r+0x190>
   15150:	401c                	lw	a5,0(s0)
   15152:	4418                	lw	a4,8(s0)
   15154:	00c41683          	lh	a3,12(s0)
   15158:	853e                	mv	a0,a5
   1515a:	8c3a                	mv	s8,a4
   1515c:	f40996e3          	bnez	s3,150a8 <__sfvwrite_r+0xcc>
   15160:	0004ab83          	lw	s7,0(s1)
   15164:	0044a983          	lw	s3,4(s1)
   15168:	04a1                	addi	s1,s1,8
   1516a:	bf1d                	j	150a0 <__sfvwrite_r+0xc4>
   1516c:	4bb2                	lw	s7,12(sp)
   1516e:	4c22                	lw	s8,8(sp)
   15170:	4c92                	lw	s9,4(sp)
   15172:	50b2                	lw	ra,44(sp)
   15174:	5422                	lw	s0,40(sp)
   15176:	5492                	lw	s1,36(sp)
   15178:	5902                	lw	s2,32(sp)
   1517a:	49f2                	lw	s3,28(sp)
   1517c:	4ad2                	lw	s5,20(sp)
   1517e:	4a62                	lw	s4,24(sp)
   15180:	4b42                	lw	s6,16(sp)
   15182:	4501                	li	a0,0
   15184:	6145                	addi	sp,sp,48
   15186:	8082                	ret
   15188:	85a2                	mv	a1,s0
   1518a:	8552                	mv	a0,s4
   1518c:	dc9ff0ef          	jal	14f54 <_fflush_r>
   15190:	c93d                	beqz	a0,15206 <__sfvwrite_r+0x22a>
   15192:	00c41783          	lh	a5,12(s0)
   15196:	4bb2                	lw	s7,12(sp)
   15198:	4c22                	lw	s8,8(sp)
   1519a:	5492                	lw	s1,36(sp)
   1519c:	5902                	lw	s2,32(sp)
   1519e:	49f2                	lw	s3,28(sp)
   151a0:	4ad2                	lw	s5,20(sp)
   151a2:	0407e793          	ori	a5,a5,64
   151a6:	00f41623          	sh	a5,12(s0)
   151aa:	50b2                	lw	ra,44(sp)
   151ac:	5422                	lw	s0,40(sp)
   151ae:	4a62                	lw	s4,24(sp)
   151b0:	4b42                	lw	s6,16(sp)
   151b2:	557d                	li	a0,-1
   151b4:	6145                	addi	sp,sp,48
   151b6:	8082                	ret
   151b8:	4501                	li	a0,0
   151ba:	8082                	ret
   151bc:	4a81                	li	s5,0
   151be:	4501                	li	a0,0
   151c0:	4c01                	li	s8,0
   151c2:	4981                	li	s3,0
   151c4:	04098e63          	beqz	s3,15220 <__sfvwrite_r+0x244>
   151c8:	c525                	beqz	a0,15230 <__sfvwrite_r+0x254>
   151ca:	87d6                	mv	a5,s5
   151cc:	8bce                	mv	s7,s3
   151ce:	0137f363          	bgeu	a5,s3,151d4 <__sfvwrite_r+0x1f8>
   151d2:	8bbe                	mv	s7,a5
   151d4:	4008                	lw	a0,0(s0)
   151d6:	481c                	lw	a5,16(s0)
   151d8:	00842903          	lw	s2,8(s0)
   151dc:	4854                	lw	a3,20(s0)
   151de:	00a7f563          	bgeu	a5,a0,151e8 <__sfvwrite_r+0x20c>
   151e2:	9936                	add	s2,s2,a3
   151e4:	05794f63          	blt	s2,s7,15242 <__sfvwrite_r+0x266>
   151e8:	0edbc063          	blt	s7,a3,152c8 <__sfvwrite_r+0x2ec>
   151ec:	505c                	lw	a5,36(s0)
   151ee:	4c4c                	lw	a1,28(s0)
   151f0:	8662                	mv	a2,s8
   151f2:	8552                	mv	a0,s4
   151f4:	9782                	jalr	a5
   151f6:	892a                	mv	s2,a0
   151f8:	f8a05de3          	blez	a0,15192 <__sfvwrite_r+0x1b6>
   151fc:	412a8ab3          	sub	s5,s5,s2
   15200:	4505                	li	a0,1
   15202:	f80a83e3          	beqz	s5,15188 <__sfvwrite_r+0x1ac>
   15206:	008b2783          	lw	a5,8(s6)
   1520a:	9c4a                	add	s8,s8,s2
   1520c:	412989b3          	sub	s3,s3,s2
   15210:	412787b3          	sub	a5,a5,s2
   15214:	00fb2423          	sw	a5,8(s6)
   15218:	f7d5                	bnez	a5,151c4 <__sfvwrite_r+0x1e8>
   1521a:	4bb2                	lw	s7,12(sp)
   1521c:	4c22                	lw	s8,8(sp)
   1521e:	bf91                	j	15172 <__sfvwrite_r+0x196>
   15220:	0044a983          	lw	s3,4(s1)
   15224:	87a6                	mv	a5,s1
   15226:	04a1                	addi	s1,s1,8
   15228:	fe098ce3          	beqz	s3,15220 <__sfvwrite_r+0x244>
   1522c:	0007ac03          	lw	s8,0(a5)
   15230:	864e                	mv	a2,s3
   15232:	45a9                	li	a1,10
   15234:	8562                	mv	a0,s8
   15236:	2ead                	jal	155b0 <memchr>
   15238:	c969                	beqz	a0,1530a <__sfvwrite_r+0x32e>
   1523a:	0505                	addi	a0,a0,1
   1523c:	41850ab3          	sub	s5,a0,s8
   15240:	b769                	j	151ca <__sfvwrite_r+0x1ee>
   15242:	85e2                	mv	a1,s8
   15244:	864a                	mv	a2,s2
   15246:	21fd                	jal	15734 <memmove>
   15248:	401c                	lw	a5,0(s0)
   1524a:	85a2                	mv	a1,s0
   1524c:	8552                	mv	a0,s4
   1524e:	97ca                	add	a5,a5,s2
   15250:	c01c                	sw	a5,0(s0)
   15252:	d03ff0ef          	jal	14f54 <_fflush_r>
   15256:	d15d                	beqz	a0,151fc <__sfvwrite_r+0x220>
   15258:	bf2d                	j	15192 <__sfvwrite_r+0x1b6>
   1525a:	4814                	lw	a3,16(s0)
   1525c:	02f6e863          	bltu	a3,a5,1528c <__sfvwrite_r+0x2b0>
   15260:	4850                	lw	a2,20(s0)
   15262:	02c9e563          	bltu	s3,a2,1528c <__sfvwrite_r+0x2b0>
   15266:	87ce                	mv	a5,s3
   15268:	013af363          	bgeu	s5,s3,1526e <__sfvwrite_r+0x292>
   1526c:	87d6                	mv	a5,s5
   1526e:	02c7e6b3          	rem	a3,a5,a2
   15272:	5058                	lw	a4,36(s0)
   15274:	4c4c                	lw	a1,28(s0)
   15276:	865e                	mv	a2,s7
   15278:	8552                	mv	a0,s4
   1527a:	40d786b3          	sub	a3,a5,a3
   1527e:	9702                	jalr	a4
   15280:	892a                	mv	s2,a0
   15282:	02a05a63          	blez	a0,152b6 <__sfvwrite_r+0x2da>
   15286:	412989b3          	sub	s3,s3,s2
   1528a:	bd5d                	j	15140 <__sfvwrite_r+0x164>
   1528c:	893a                	mv	s2,a4
   1528e:	00e9f363          	bgeu	s3,a4,15294 <__sfvwrite_r+0x2b8>
   15292:	894e                	mv	s2,s3
   15294:	853e                	mv	a0,a5
   15296:	864a                	mv	a2,s2
   15298:	85de                	mv	a1,s7
   1529a:	2969                	jal	15734 <memmove>
   1529c:	4418                	lw	a4,8(s0)
   1529e:	401c                	lw	a5,0(s0)
   152a0:	41270733          	sub	a4,a4,s2
   152a4:	97ca                	add	a5,a5,s2
   152a6:	c418                	sw	a4,8(s0)
   152a8:	c01c                	sw	a5,0(s0)
   152aa:	ff71                	bnez	a4,15286 <__sfvwrite_r+0x2aa>
   152ac:	85a2                	mv	a1,s0
   152ae:	8552                	mv	a0,s4
   152b0:	ca5ff0ef          	jal	14f54 <_fflush_r>
   152b4:	d969                	beqz	a0,15286 <__sfvwrite_r+0x2aa>
   152b6:	00c41783          	lh	a5,12(s0)
   152ba:	4bb2                	lw	s7,12(sp)
   152bc:	4c22                	lw	s8,8(sp)
   152be:	4c92                	lw	s9,4(sp)
   152c0:	bde9                	j	1519a <__sfvwrite_r+0x1be>
   152c2:	8c4e                	mv	s8,s3
   152c4:	8cce                	mv	s9,s3
   152c6:	b58d                	j	15128 <__sfvwrite_r+0x14c>
   152c8:	865e                	mv	a2,s7
   152ca:	85e2                	mv	a1,s8
   152cc:	21a5                	jal	15734 <memmove>
   152ce:	4418                	lw	a4,8(s0)
   152d0:	401c                	lw	a5,0(s0)
   152d2:	895e                	mv	s2,s7
   152d4:	41770733          	sub	a4,a4,s7
   152d8:	97de                	add	a5,a5,s7
   152da:	c418                	sw	a4,8(s0)
   152dc:	c01c                	sw	a5,0(s0)
   152de:	bf39                	j	151fc <__sfvwrite_r+0x220>
   152e0:	8552                	mv	a0,s4
   152e2:	0b7020ef          	jal	17b98 <_realloc_r>
   152e6:	8caa                	mv	s9,a0
   152e8:	e20514e3          	bnez	a0,15110 <__sfvwrite_r+0x134>
   152ec:	480c                	lw	a1,16(s0)
   152ee:	8552                	mv	a0,s4
   152f0:	de2fd0ef          	jal	128d2 <_free_r>
   152f4:	00c41783          	lh	a5,12(s0)
   152f8:	4731                	li	a4,12
   152fa:	4bb2                	lw	s7,12(sp)
   152fc:	4c22                	lw	s8,8(sp)
   152fe:	4c92                	lw	s9,4(sp)
   15300:	00ea2023          	sw	a4,0(s4)
   15304:	f7f7f793          	andi	a5,a5,-129
   15308:	bd49                	j	1519a <__sfvwrite_r+0x1be>
   1530a:	00198793          	addi	a5,s3,1
   1530e:	8abe                	mv	s5,a5
   15310:	bd75                	j	151cc <__sfvwrite_r+0x1f0>
   15312:	00c41783          	lh	a5,12(s0)
   15316:	b551                	j	1519a <__sfvwrite_r+0x1be>
   15318:	4731                	li	a4,12
   1531a:	00c41783          	lh	a5,12(s0)
   1531e:	4bb2                	lw	s7,12(sp)
   15320:	4c22                	lw	s8,8(sp)
   15322:	4c92                	lw	s9,4(sp)
   15324:	00ea2023          	sw	a4,0(s4)
   15328:	bd8d                	j	1519a <__sfvwrite_r+0x1be>

0001532a <_putc_r>:
   1532a:	1101                	addi	sp,sp,-32
   1532c:	cc22                	sw	s0,24(sp)
   1532e:	ce06                	sw	ra,28(sp)
   15330:	842a                	mv	s0,a0
   15332:	c119                	beqz	a0,15338 <_putc_r+0xe>
   15334:	595c                	lw	a5,52(a0)
   15336:	cf9d                	beqz	a5,15374 <_putc_r+0x4a>
   15338:	461c                	lw	a5,8(a2)
   1533a:	17fd                	addi	a5,a5,-1
   1533c:	c61c                	sw	a5,8(a2)
   1533e:	0007da63          	bgez	a5,15352 <_putc_r+0x28>
   15342:	4e18                	lw	a4,24(a2)
   15344:	02e7c363          	blt	a5,a4,1536a <_putc_r+0x40>
   15348:	0ff5f793          	zext.b	a5,a1
   1534c:	4729                	li	a4,10
   1534e:	00e78e63          	beq	a5,a4,1536a <_putc_r+0x40>
   15352:	421c                	lw	a5,0(a2)
   15354:	0ff5f513          	zext.b	a0,a1
   15358:	00178713          	addi	a4,a5,1
   1535c:	c218                	sw	a4,0(a2)
   1535e:	00b78023          	sb	a1,0(a5)
   15362:	40f2                	lw	ra,28(sp)
   15364:	4462                	lw	s0,24(sp)
   15366:	6105                	addi	sp,sp,32
   15368:	8082                	ret
   1536a:	8522                	mv	a0,s0
   1536c:	4462                	lw	s0,24(sp)
   1536e:	40f2                	lw	ra,28(sp)
   15370:	6105                	addi	sp,sp,32
   15372:	a8a5                	j	153ea <__swbuf_r>
   15374:	c632                	sw	a2,12(sp)
   15376:	c42e                	sw	a1,8(sp)
   15378:	e6dfc0ef          	jal	121e4 <__sinit>
   1537c:	4632                	lw	a2,12(sp)
   1537e:	45a2                	lw	a1,8(sp)
   15380:	bf65                	j	15338 <_putc_r+0xe>

00015382 <putc>:
   15382:	1101                	addi	sp,sp,-32
   15384:	ca4a                	sw	s2,20(sp)
   15386:	f141a903          	lw	s2,-236(gp) # 1dc5c <_impure_ptr>
   1538a:	cc26                	sw	s1,24(sp)
   1538c:	ce06                	sw	ra,28(sp)
   1538e:	84aa                	mv	s1,a0
   15390:	00090563          	beqz	s2,1539a <putc+0x18>
   15394:	03492783          	lw	a5,52(s2)
   15398:	c3b9                	beqz	a5,153de <putc+0x5c>
   1539a:	459c                	lw	a5,8(a1)
   1539c:	17fd                	addi	a5,a5,-1
   1539e:	c59c                	sw	a5,8(a1)
   153a0:	0007da63          	bgez	a5,153b4 <putc+0x32>
   153a4:	4d98                	lw	a4,24(a1)
   153a6:	02e7c463          	blt	a5,a4,153ce <putc+0x4c>
   153aa:	0ff4f793          	zext.b	a5,s1
   153ae:	4729                	li	a4,10
   153b0:	00e78f63          	beq	a5,a4,153ce <putc+0x4c>
   153b4:	419c                	lw	a5,0(a1)
   153b6:	0ff4f513          	zext.b	a0,s1
   153ba:	00178713          	addi	a4,a5,1
   153be:	c198                	sw	a4,0(a1)
   153c0:	00978023          	sb	s1,0(a5)
   153c4:	40f2                	lw	ra,28(sp)
   153c6:	44e2                	lw	s1,24(sp)
   153c8:	4952                	lw	s2,20(sp)
   153ca:	6105                	addi	sp,sp,32
   153cc:	8082                	ret
   153ce:	40f2                	lw	ra,28(sp)
   153d0:	862e                	mv	a2,a1
   153d2:	854a                	mv	a0,s2
   153d4:	85a6                	mv	a1,s1
   153d6:	4952                	lw	s2,20(sp)
   153d8:	44e2                	lw	s1,24(sp)
   153da:	6105                	addi	sp,sp,32
   153dc:	a039                	j	153ea <__swbuf_r>
   153de:	854a                	mv	a0,s2
   153e0:	c62e                	sw	a1,12(sp)
   153e2:	e03fc0ef          	jal	121e4 <__sinit>
   153e6:	45b2                	lw	a1,12(sp)
   153e8:	bf4d                	j	1539a <putc+0x18>

000153ea <__swbuf_r>:
   153ea:	1101                	addi	sp,sp,-32
   153ec:	cc22                	sw	s0,24(sp)
   153ee:	ca26                	sw	s1,20(sp)
   153f0:	c84a                	sw	s2,16(sp)
   153f2:	ce06                	sw	ra,28(sp)
   153f4:	892a                	mv	s2,a0
   153f6:	84ae                	mv	s1,a1
   153f8:	8432                	mv	s0,a2
   153fa:	c119                	beqz	a0,15400 <__swbuf_r+0x16>
   153fc:	595c                	lw	a5,52(a0)
   153fe:	c3f9                	beqz	a5,154c4 <__swbuf_r+0xda>
   15400:	4c18                	lw	a4,24(s0)
   15402:	00c41783          	lh	a5,12(s0)
   15406:	c418                	sw	a4,8(s0)
   15408:	0087f713          	andi	a4,a5,8
   1540c:	c325                	beqz	a4,1546c <__swbuf_r+0x82>
   1540e:	4818                	lw	a4,16(s0)
   15410:	cf31                	beqz	a4,1546c <__swbuf_r+0x82>
   15412:	c64e                	sw	s3,12(sp)
   15414:	01279693          	slli	a3,a5,0x12
   15418:	0ff4f993          	zext.b	s3,s1
   1541c:	5078                	lw	a4,100(s0)
   1541e:	0ff4f493          	zext.b	s1,s1
   15422:	0606d563          	bgez	a3,1548c <__swbuf_r+0xa2>
   15426:	01271793          	slli	a5,a4,0x12
   1542a:	0807c263          	bltz	a5,154ae <__swbuf_r+0xc4>
   1542e:	4018                	lw	a4,0(s0)
   15430:	481c                	lw	a5,16(s0)
   15432:	4854                	lw	a3,20(s0)
   15434:	40f707b3          	sub	a5,a4,a5
   15438:	06d7de63          	bge	a5,a3,154b4 <__swbuf_r+0xca>
   1543c:	0785                	addi	a5,a5,1
   1543e:	4414                	lw	a3,8(s0)
   15440:	00170613          	addi	a2,a4,1
   15444:	c010                	sw	a2,0(s0)
   15446:	16fd                	addi	a3,a3,-1
   15448:	c414                	sw	a3,8(s0)
   1544a:	01370023          	sb	s3,0(a4)
   1544e:	4858                	lw	a4,20(s0)
   15450:	04f70a63          	beq	a4,a5,154a4 <__swbuf_r+0xba>
   15454:	00c45783          	lhu	a5,12(s0)
   15458:	8b85                	andi	a5,a5,1
   1545a:	e3b1                	bnez	a5,1549e <__swbuf_r+0xb4>
   1545c:	49b2                	lw	s3,12(sp)
   1545e:	40f2                	lw	ra,28(sp)
   15460:	4462                	lw	s0,24(sp)
   15462:	4942                	lw	s2,16(sp)
   15464:	8526                	mv	a0,s1
   15466:	44d2                	lw	s1,20(sp)
   15468:	6105                	addi	sp,sp,32
   1546a:	8082                	ret
   1546c:	85a2                	mv	a1,s0
   1546e:	854a                	mv	a0,s2
   15470:	209d                	jal	154d6 <__swsetup_r>
   15472:	ed1d                	bnez	a0,154b0 <__swbuf_r+0xc6>
   15474:	00c41783          	lh	a5,12(s0)
   15478:	c64e                	sw	s3,12(sp)
   1547a:	5078                	lw	a4,100(s0)
   1547c:	01279693          	slli	a3,a5,0x12
   15480:	0ff4f993          	zext.b	s3,s1
   15484:	0ff4f493          	zext.b	s1,s1
   15488:	f806cfe3          	bltz	a3,15426 <__swbuf_r+0x3c>
   1548c:	76f9                	lui	a3,0xffffe
   1548e:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe006b>
   15490:	6609                	lui	a2,0x2
   15492:	8fd1                	or	a5,a5,a2
   15494:	8f75                	and	a4,a4,a3
   15496:	00f41623          	sh	a5,12(s0)
   1549a:	d078                	sw	a4,100(s0)
   1549c:	b769                	j	15426 <__swbuf_r+0x3c>
   1549e:	47a9                	li	a5,10
   154a0:	faf49ee3          	bne	s1,a5,1545c <__swbuf_r+0x72>
   154a4:	85a2                	mv	a1,s0
   154a6:	854a                	mv	a0,s2
   154a8:	aadff0ef          	jal	14f54 <_fflush_r>
   154ac:	d945                	beqz	a0,1545c <__swbuf_r+0x72>
   154ae:	49b2                	lw	s3,12(sp)
   154b0:	54fd                	li	s1,-1
   154b2:	b775                	j	1545e <__swbuf_r+0x74>
   154b4:	85a2                	mv	a1,s0
   154b6:	854a                	mv	a0,s2
   154b8:	a9dff0ef          	jal	14f54 <_fflush_r>
   154bc:	f96d                	bnez	a0,154ae <__swbuf_r+0xc4>
   154be:	4018                	lw	a4,0(s0)
   154c0:	4785                	li	a5,1
   154c2:	bfb5                	j	1543e <__swbuf_r+0x54>
   154c4:	d21fc0ef          	jal	121e4 <__sinit>
   154c8:	bf25                	j	15400 <__swbuf_r+0x16>

000154ca <__swbuf>:
   154ca:	87aa                	mv	a5,a0
   154cc:	f141a503          	lw	a0,-236(gp) # 1dc5c <_impure_ptr>
   154d0:	862e                	mv	a2,a1
   154d2:	85be                	mv	a1,a5
   154d4:	bf19                	j	153ea <__swbuf_r>

000154d6 <__swsetup_r>:
   154d6:	f141a783          	lw	a5,-236(gp) # 1dc5c <_impure_ptr>
   154da:	1141                	addi	sp,sp,-16
   154dc:	c422                	sw	s0,8(sp)
   154de:	c226                	sw	s1,4(sp)
   154e0:	c606                	sw	ra,12(sp)
   154e2:	84aa                	mv	s1,a0
   154e4:	842e                	mv	s0,a1
   154e6:	c399                	beqz	a5,154ec <__swsetup_r+0x16>
   154e8:	5bd8                	lw	a4,52(a5)
   154ea:	c75d                	beqz	a4,15598 <__swsetup_r+0xc2>
   154ec:	00c41783          	lh	a5,12(s0)
   154f0:	0087f713          	andi	a4,a5,8
   154f4:	c721                	beqz	a4,1553c <__swsetup_r+0x66>
   154f6:	4818                	lw	a4,16(s0)
   154f8:	cf31                	beqz	a4,15554 <__swsetup_r+0x7e>
   154fa:	0017f693          	andi	a3,a5,1
   154fe:	ce91                	beqz	a3,1551a <__swsetup_r+0x44>
   15500:	4854                	lw	a3,20(s0)
   15502:	00042423          	sw	zero,8(s0)
   15506:	4501                	li	a0,0
   15508:	40d006b3          	neg	a3,a3
   1550c:	cc14                	sw	a3,24(s0)
   1550e:	cf11                	beqz	a4,1552a <__swsetup_r+0x54>
   15510:	40b2                	lw	ra,12(sp)
   15512:	4422                	lw	s0,8(sp)
   15514:	4492                	lw	s1,4(sp)
   15516:	0141                	addi	sp,sp,16
   15518:	8082                	ret
   1551a:	0027f693          	andi	a3,a5,2
   1551e:	4601                	li	a2,0
   15520:	e291                	bnez	a3,15524 <__swsetup_r+0x4e>
   15522:	4850                	lw	a2,20(s0)
   15524:	c410                	sw	a2,8(s0)
   15526:	4501                	li	a0,0
   15528:	f765                	bnez	a4,15510 <__swsetup_r+0x3a>
   1552a:	0807f713          	andi	a4,a5,128
   1552e:	d36d                	beqz	a4,15510 <__swsetup_r+0x3a>
   15530:	0407e793          	ori	a5,a5,64
   15534:	00f41623          	sh	a5,12(s0)
   15538:	557d                	li	a0,-1
   1553a:	bfd9                	j	15510 <__swsetup_r+0x3a>
   1553c:	0107f713          	andi	a4,a5,16
   15540:	c325                	beqz	a4,155a0 <__swsetup_r+0xca>
   15542:	0047f713          	andi	a4,a5,4
   15546:	e70d                	bnez	a4,15570 <__swsetup_r+0x9a>
   15548:	4818                	lw	a4,16(s0)
   1554a:	0087e793          	ori	a5,a5,8
   1554e:	00f41623          	sh	a5,12(s0)
   15552:	f745                	bnez	a4,154fa <__swsetup_r+0x24>
   15554:	2807f693          	andi	a3,a5,640
   15558:	20000613          	li	a2,512
   1555c:	f8c68fe3          	beq	a3,a2,154fa <__swsetup_r+0x24>
   15560:	85a2                	mv	a1,s0
   15562:	8526                	mv	a0,s1
   15564:	20f020ef          	jal	17f72 <__smakebuf_r>
   15568:	00c41783          	lh	a5,12(s0)
   1556c:	4818                	lw	a4,16(s0)
   1556e:	b771                	j	154fa <__swsetup_r+0x24>
   15570:	580c                	lw	a1,48(s0)
   15572:	cd81                	beqz	a1,1558a <__swsetup_r+0xb4>
   15574:	04040713          	addi	a4,s0,64
   15578:	00e58763          	beq	a1,a4,15586 <__swsetup_r+0xb0>
   1557c:	8526                	mv	a0,s1
   1557e:	b54fd0ef          	jal	128d2 <_free_r>
   15582:	00c41783          	lh	a5,12(s0)
   15586:	02042823          	sw	zero,48(s0)
   1558a:	4818                	lw	a4,16(s0)
   1558c:	fdb7f793          	andi	a5,a5,-37
   15590:	00042223          	sw	zero,4(s0)
   15594:	c018                	sw	a4,0(s0)
   15596:	bf55                	j	1554a <__swsetup_r+0x74>
   15598:	853e                	mv	a0,a5
   1559a:	c4bfc0ef          	jal	121e4 <__sinit>
   1559e:	b7b9                	j	154ec <__swsetup_r+0x16>
   155a0:	4725                	li	a4,9
   155a2:	c098                	sw	a4,0(s1)
   155a4:	0407e793          	ori	a5,a5,64
   155a8:	00f41623          	sh	a5,12(s0)
   155ac:	557d                	li	a0,-1
   155ae:	b78d                	j	15510 <__swsetup_r+0x3a>

000155b0 <memchr>:
   155b0:	00357793          	andi	a5,a0,3
   155b4:	0ff5f693          	zext.b	a3,a1
   155b8:	c395                	beqz	a5,155dc <memchr+0x2c>
   155ba:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   155be:	c605                	beqz	a2,155e6 <memchr+0x36>
   155c0:	567d                	li	a2,-1
   155c2:	a801                	j	155d2 <memchr+0x22>
   155c4:	0505                	addi	a0,a0,1
   155c6:	00357713          	andi	a4,a0,3
   155ca:	cb11                	beqz	a4,155de <memchr+0x2e>
   155cc:	17fd                	addi	a5,a5,-1
   155ce:	00c78c63          	beq	a5,a2,155e6 <memchr+0x36>
   155d2:	00054703          	lbu	a4,0(a0)
   155d6:	fed717e3          	bne	a4,a3,155c4 <memchr+0x14>
   155da:	8082                	ret
   155dc:	87b2                	mv	a5,a2
   155de:	470d                	li	a4,3
   155e0:	00f76563          	bltu	a4,a5,155ea <memchr+0x3a>
   155e4:	e3b9                	bnez	a5,1562a <memchr+0x7a>
   155e6:	4501                	li	a0,0
   155e8:	8082                	ret
   155ea:	0ff5f593          	zext.b	a1,a1
   155ee:	00859713          	slli	a4,a1,0x8
   155f2:	95ba                	add	a1,a1,a4
   155f4:	01059713          	slli	a4,a1,0x10
   155f8:	feff08b7          	lui	a7,0xfeff0
   155fc:	80808837          	lui	a6,0x80808
   15600:	95ba                	add	a1,a1,a4
   15602:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd1f6b>
   15606:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807ea0ec>
   1560a:	430d                	li	t1,3
   1560c:	a029                	j	15616 <memchr+0x66>
   1560e:	17f1                	addi	a5,a5,-4
   15610:	0511                	addi	a0,a0,4
   15612:	fcf379e3          	bgeu	t1,a5,155e4 <memchr+0x34>
   15616:	4118                	lw	a4,0(a0)
   15618:	8f2d                	xor	a4,a4,a1
   1561a:	01170633          	add	a2,a4,a7
   1561e:	fff74713          	not	a4,a4
   15622:	8f71                	and	a4,a4,a2
   15624:	01077733          	and	a4,a4,a6
   15628:	d37d                	beqz	a4,1560e <memchr+0x5e>
   1562a:	97aa                	add	a5,a5,a0
   1562c:	a021                	j	15634 <memchr+0x84>
   1562e:	0505                	addi	a0,a0,1
   15630:	faa78be3          	beq	a5,a0,155e6 <memchr+0x36>
   15634:	00054703          	lbu	a4,0(a0)
   15638:	fed71be3          	bne	a4,a3,1562e <memchr+0x7e>
   1563c:	8082                	ret

0001563e <strncpy>:
   1563e:	00a5e7b3          	or	a5,a1,a0
   15642:	8b8d                	andi	a5,a5,3
   15644:	e781                	bnez	a5,1564c <strncpy+0xe>
   15646:	478d                	li	a5,3
   15648:	02c7eb63          	bltu	a5,a2,1567e <strncpy+0x40>
   1564c:	872a                	mv	a4,a0
   1564e:	a811                	j	15662 <strncpy+0x24>
   15650:	fff5c683          	lbu	a3,-1(a1)
   15654:	fff60813          	addi	a6,a2,-1
   15658:	fed78fa3          	sb	a3,-1(a5)
   1565c:	ca81                	beqz	a3,1566c <strncpy+0x2e>
   1565e:	873e                	mv	a4,a5
   15660:	8642                	mv	a2,a6
   15662:	0585                	addi	a1,a1,1
   15664:	00170793          	addi	a5,a4,1
   15668:	f665                	bnez	a2,15650 <strncpy+0x12>
   1566a:	8082                	ret
   1566c:	9732                	add	a4,a4,a2
   1566e:	04080463          	beqz	a6,156b6 <strncpy+0x78>
   15672:	0785                	addi	a5,a5,1
   15674:	fe078fa3          	sb	zero,-1(a5)
   15678:	fee79de3          	bne	a5,a4,15672 <strncpy+0x34>
   1567c:	8082                	ret
   1567e:	feff0337          	lui	t1,0xfeff0
   15682:	808088b7          	lui	a7,0x80808
   15686:	872a                	mv	a4,a0
   15688:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd1f6b>
   1568c:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807ea0ec>
   15690:	4e0d                	li	t3,3
   15692:	a039                	j	156a0 <strncpy+0x62>
   15694:	c314                	sw	a3,0(a4)
   15696:	1671                	addi	a2,a2,-4
   15698:	0711                	addi	a4,a4,4
   1569a:	0591                	addi	a1,a1,4
   1569c:	fcce73e3          	bgeu	t3,a2,15662 <strncpy+0x24>
   156a0:	4194                	lw	a3,0(a1)
   156a2:	006687b3          	add	a5,a3,t1
   156a6:	fff6c813          	not	a6,a3
   156aa:	0107f7b3          	and	a5,a5,a6
   156ae:	0117f7b3          	and	a5,a5,a7
   156b2:	d3ed                	beqz	a5,15694 <strncpy+0x56>
   156b4:	b77d                	j	15662 <strncpy+0x24>
   156b6:	8082                	ret

000156b8 <__localeconv_l>:
   156b8:	0f050513          	addi	a0,a0,240
   156bc:	8082                	ret

000156be <_localeconv_r>:
   156be:	e2818513          	addi	a0,gp,-472 # 1db70 <__global_locale+0xf0>
   156c2:	8082                	ret

000156c4 <localeconv>:
   156c4:	e2818513          	addi	a0,gp,-472 # 1db70 <__global_locale+0xf0>
   156c8:	8082                	ret

000156ca <_sbrk_r>:
   156ca:	1141                	addi	sp,sp,-16
   156cc:	c422                	sw	s0,8(sp)
   156ce:	c226                	sw	s1,4(sp)
   156d0:	842a                	mv	s0,a0
   156d2:	852e                	mv	a0,a1
   156d4:	c606                	sw	ra,12(sp)
   156d6:	f201a223          	sw	zero,-220(gp) # 1dc6c <errno>
   156da:	79b030ef          	jal	19674 <_sbrk>
   156de:	57fd                	li	a5,-1
   156e0:	00f50763          	beq	a0,a5,156ee <_sbrk_r+0x24>
   156e4:	40b2                	lw	ra,12(sp)
   156e6:	4422                	lw	s0,8(sp)
   156e8:	4492                	lw	s1,4(sp)
   156ea:	0141                	addi	sp,sp,16
   156ec:	8082                	ret
   156ee:	f241a783          	lw	a5,-220(gp) # 1dc6c <errno>
   156f2:	dbed                	beqz	a5,156e4 <_sbrk_r+0x1a>
   156f4:	40b2                	lw	ra,12(sp)
   156f6:	c01c                	sw	a5,0(s0)
   156f8:	4422                	lw	s0,8(sp)
   156fa:	4492                	lw	s1,4(sp)
   156fc:	0141                	addi	sp,sp,16
   156fe:	8082                	ret

00015700 <__libc_fini_array>:
   15700:	1141                	addi	sp,sp,-16
   15702:	c422                	sw	s0,8(sp)
   15704:	67f5                	lui	a5,0x1d
   15706:	6475                	lui	s0,0x1d
   15708:	54478793          	addi	a5,a5,1348 # 1d544 <__do_global_dtors_aux_fini_array_entry>
   1570c:	54840413          	addi	s0,s0,1352 # 1d548 <__sglue>
   15710:	8c1d                	sub	s0,s0,a5
   15712:	c226                	sw	s1,4(sp)
   15714:	c606                	sw	ra,12(sp)
   15716:	40245493          	srai	s1,s0,0x2
   1571a:	c881                	beqz	s1,1572a <__libc_fini_array+0x2a>
   1571c:	1471                	addi	s0,s0,-4
   1571e:	943e                	add	s0,s0,a5
   15720:	401c                	lw	a5,0(s0)
   15722:	14fd                	addi	s1,s1,-1
   15724:	1471                	addi	s0,s0,-4
   15726:	9782                	jalr	a5
   15728:	fce5                	bnez	s1,15720 <__libc_fini_array+0x20>
   1572a:	40b2                	lw	ra,12(sp)
   1572c:	4422                	lw	s0,8(sp)
   1572e:	4492                	lw	s1,4(sp)
   15730:	0141                	addi	sp,sp,16
   15732:	8082                	ret

00015734 <memmove>:
   15734:	02a5f263          	bgeu	a1,a0,15758 <memmove+0x24>
   15738:	00c58733          	add	a4,a1,a2
   1573c:	00e57e63          	bgeu	a0,a4,15758 <memmove+0x24>
   15740:	00c507b3          	add	a5,a0,a2
   15744:	ca1d                	beqz	a2,1577a <memmove+0x46>
   15746:	fff74683          	lbu	a3,-1(a4)
   1574a:	17fd                	addi	a5,a5,-1
   1574c:	177d                	addi	a4,a4,-1
   1574e:	00d78023          	sb	a3,0(a5)
   15752:	fef51ae3          	bne	a0,a5,15746 <memmove+0x12>
   15756:	8082                	ret
   15758:	47bd                	li	a5,15
   1575a:	02c7e163          	bltu	a5,a2,1577c <memmove+0x48>
   1575e:	87aa                	mv	a5,a0
   15760:	fff60693          	addi	a3,a2,-1
   15764:	ca59                	beqz	a2,157fa <memmove+0xc6>
   15766:	0685                	addi	a3,a3,1
   15768:	96be                	add	a3,a3,a5
   1576a:	0005c703          	lbu	a4,0(a1)
   1576e:	0785                	addi	a5,a5,1
   15770:	0585                	addi	a1,a1,1
   15772:	fee78fa3          	sb	a4,-1(a5)
   15776:	fed79ae3          	bne	a5,a3,1576a <memmove+0x36>
   1577a:	8082                	ret
   1577c:	00b567b3          	or	a5,a0,a1
   15780:	8b8d                	andi	a5,a5,3
   15782:	eba5                	bnez	a5,157f2 <memmove+0xbe>
   15784:	ff060893          	addi	a7,a2,-16
   15788:	ff08f893          	andi	a7,a7,-16
   1578c:	08c1                	addi	a7,a7,16
   1578e:	011506b3          	add	a3,a0,a7
   15792:	872e                	mv	a4,a1
   15794:	87aa                	mv	a5,a0
   15796:	00072803          	lw	a6,0(a4)
   1579a:	0741                	addi	a4,a4,16
   1579c:	07c1                	addi	a5,a5,16
   1579e:	ff07a823          	sw	a6,-16(a5)
   157a2:	ff472803          	lw	a6,-12(a4)
   157a6:	ff07aa23          	sw	a6,-12(a5)
   157aa:	ff872803          	lw	a6,-8(a4)
   157ae:	ff07ac23          	sw	a6,-8(a5)
   157b2:	ffc72803          	lw	a6,-4(a4)
   157b6:	ff07ae23          	sw	a6,-4(a5)
   157ba:	fcd79ee3          	bne	a5,a3,15796 <memmove+0x62>
   157be:	00c67813          	andi	a6,a2,12
   157c2:	95c6                	add	a1,a1,a7
   157c4:	00f67713          	andi	a4,a2,15
   157c8:	02080a63          	beqz	a6,157fc <memmove+0xc8>
   157cc:	ffc70813          	addi	a6,a4,-4
   157d0:	ffc87813          	andi	a6,a6,-4
   157d4:	0811                	addi	a6,a6,4
   157d6:	010687b3          	add	a5,a3,a6
   157da:	872e                	mv	a4,a1
   157dc:	00072883          	lw	a7,0(a4)
   157e0:	0691                	addi	a3,a3,4
   157e2:	0711                	addi	a4,a4,4
   157e4:	ff16ae23          	sw	a7,-4(a3)
   157e8:	fef69ae3          	bne	a3,a5,157dc <memmove+0xa8>
   157ec:	8a0d                	andi	a2,a2,3
   157ee:	95c2                	add	a1,a1,a6
   157f0:	bf85                	j	15760 <memmove+0x2c>
   157f2:	fff60693          	addi	a3,a2,-1
   157f6:	87aa                	mv	a5,a0
   157f8:	b7bd                	j	15766 <memmove+0x32>
   157fa:	8082                	ret
   157fc:	863a                	mv	a2,a4
   157fe:	b78d                	j	15760 <memmove+0x2c>

00015800 <memcpy>:
   15800:	00a5c7b3          	xor	a5,a1,a0
   15804:	8b8d                	andi	a5,a5,3
   15806:	00c508b3          	add	a7,a0,a2
   1580a:	e7b1                	bnez	a5,15856 <memcpy+0x56>
   1580c:	478d                	li	a5,3
   1580e:	04c7f463          	bgeu	a5,a2,15856 <memcpy+0x56>
   15812:	00357793          	andi	a5,a0,3
   15816:	872a                	mv	a4,a0
   15818:	ebb9                	bnez	a5,1586e <memcpy+0x6e>
   1581a:	ffc8f613          	andi	a2,a7,-4
   1581e:	40e606b3          	sub	a3,a2,a4
   15822:	02000793          	li	a5,32
   15826:	06d7c863          	blt	a5,a3,15896 <memcpy+0x96>
   1582a:	86ae                	mv	a3,a1
   1582c:	87ba                	mv	a5,a4
   1582e:	02c77163          	bgeu	a4,a2,15850 <memcpy+0x50>
   15832:	0006a803          	lw	a6,0(a3)
   15836:	0791                	addi	a5,a5,4
   15838:	0691                	addi	a3,a3,4
   1583a:	ff07ae23          	sw	a6,-4(a5)
   1583e:	fec7eae3          	bltu	a5,a2,15832 <memcpy+0x32>
   15842:	fff60793          	addi	a5,a2,-1
   15846:	8f99                	sub	a5,a5,a4
   15848:	9bf1                	andi	a5,a5,-4
   1584a:	0791                	addi	a5,a5,4
   1584c:	973e                	add	a4,a4,a5
   1584e:	95be                	add	a1,a1,a5
   15850:	01176663          	bltu	a4,a7,1585c <memcpy+0x5c>
   15854:	8082                	ret
   15856:	872a                	mv	a4,a0
   15858:	03157e63          	bgeu	a0,a7,15894 <memcpy+0x94>
   1585c:	0005c783          	lbu	a5,0(a1)
   15860:	0705                	addi	a4,a4,1
   15862:	0585                	addi	a1,a1,1
   15864:	fef70fa3          	sb	a5,-1(a4)
   15868:	fee89ae3          	bne	a7,a4,1585c <memcpy+0x5c>
   1586c:	8082                	ret
   1586e:	0005c683          	lbu	a3,0(a1)
   15872:	0705                	addi	a4,a4,1
   15874:	00377793          	andi	a5,a4,3
   15878:	fed70fa3          	sb	a3,-1(a4)
   1587c:	0585                	addi	a1,a1,1
   1587e:	dfd1                	beqz	a5,1581a <memcpy+0x1a>
   15880:	0005c683          	lbu	a3,0(a1)
   15884:	0705                	addi	a4,a4,1
   15886:	00377793          	andi	a5,a4,3
   1588a:	fed70fa3          	sb	a3,-1(a4)
   1588e:	0585                	addi	a1,a1,1
   15890:	fff9                	bnez	a5,1586e <memcpy+0x6e>
   15892:	b761                	j	1581a <memcpy+0x1a>
   15894:	8082                	ret
   15896:	1141                	addi	sp,sp,-16
   15898:	c622                	sw	s0,12(sp)
   1589a:	02000413          	li	s0,32
   1589e:	0005a383          	lw	t2,0(a1)
   158a2:	0045a283          	lw	t0,4(a1)
   158a6:	0085af83          	lw	t6,8(a1)
   158aa:	00c5af03          	lw	t5,12(a1)
   158ae:	0105ae83          	lw	t4,16(a1)
   158b2:	0145ae03          	lw	t3,20(a1)
   158b6:	0185a303          	lw	t1,24(a1)
   158ba:	01c5a803          	lw	a6,28(a1)
   158be:	5194                	lw	a3,32(a1)
   158c0:	02470713          	addi	a4,a4,36
   158c4:	40e607b3          	sub	a5,a2,a4
   158c8:	fc772e23          	sw	t2,-36(a4)
   158cc:	fe572023          	sw	t0,-32(a4)
   158d0:	fff72223          	sw	t6,-28(a4)
   158d4:	ffe72423          	sw	t5,-24(a4)
   158d8:	ffd72623          	sw	t4,-20(a4)
   158dc:	ffc72823          	sw	t3,-16(a4)
   158e0:	fe672a23          	sw	t1,-12(a4)
   158e4:	ff072c23          	sw	a6,-8(a4)
   158e8:	fed72e23          	sw	a3,-4(a4)
   158ec:	02458593          	addi	a1,a1,36
   158f0:	faf447e3          	blt	s0,a5,1589e <memcpy+0x9e>
   158f4:	86ae                	mv	a3,a1
   158f6:	87ba                	mv	a5,a4
   158f8:	02c77163          	bgeu	a4,a2,1591a <memcpy+0x11a>
   158fc:	0006a803          	lw	a6,0(a3)
   15900:	0791                	addi	a5,a5,4
   15902:	0691                	addi	a3,a3,4
   15904:	ff07ae23          	sw	a6,-4(a5)
   15908:	fec7eae3          	bltu	a5,a2,158fc <memcpy+0xfc>
   1590c:	fff60793          	addi	a5,a2,-1
   15910:	8f99                	sub	a5,a5,a4
   15912:	9bf1                	andi	a5,a5,-4
   15914:	0791                	addi	a5,a5,4
   15916:	973e                	add	a4,a4,a5
   15918:	95be                	add	a1,a1,a5
   1591a:	01176563          	bltu	a4,a7,15924 <memcpy+0x124>
   1591e:	4432                	lw	s0,12(sp)
   15920:	0141                	addi	sp,sp,16
   15922:	8082                	ret
   15924:	0005c783          	lbu	a5,0(a1)
   15928:	0705                	addi	a4,a4,1
   1592a:	0585                	addi	a1,a1,1
   1592c:	fef70fa3          	sb	a5,-1(a4)
   15930:	fee887e3          	beq	a7,a4,1591e <memcpy+0x11e>
   15934:	0005c783          	lbu	a5,0(a1)
   15938:	0705                	addi	a4,a4,1
   1593a:	0585                	addi	a1,a1,1
   1593c:	fef70fa3          	sb	a5,-1(a4)
   15940:	fee892e3          	bne	a7,a4,15924 <memcpy+0x124>
   15944:	bfe9                	j	1591e <memcpy+0x11e>

00015946 <frexpl>:
   15946:	7159                	addi	sp,sp,-112
   15948:	d0ca                	sw	s2,96(sp)
   1594a:	00c5a903          	lw	s2,12(a1)
   1594e:	ccd2                	sw	s4,88(sp)
   15950:	cad6                	sw	s5,84(sp)
   15952:	c8da                	sw	s6,80(sp)
   15954:	0045aa83          	lw	s5,4(a1)
   15958:	0005ab03          	lw	s6,0(a1)
   1595c:	0085aa03          	lw	s4,8(a1)
   15960:	cece                	sw	s3,92(sp)
   15962:	69a1                	lui	s3,0x8
   15964:	d4a2                	sw	s0,104(sp)
   15966:	d2a6                	sw	s1,100(sp)
   15968:	d686                	sw	ra,108(sp)
   1596a:	01095493          	srli	s1,s2,0x10
   1596e:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   15970:	d85a                	sw	s6,48(sp)
   15972:	da56                	sw	s5,52(sp)
   15974:	dc52                	sw	s4,56(sp)
   15976:	de4a                	sw	s2,60(sp)
   15978:	0134f4b3          	and	s1,s1,s3
   1597c:	00062023          	sw	zero,0(a2)
   15980:	842a                	mv	s0,a0
   15982:	05348763          	beq	s1,s3,159d0 <frexpl+0x8a>
   15986:	080c                	addi	a1,sp,16
   15988:	1008                	addi	a0,sp,32
   1598a:	c6de                	sw	s7,76(sp)
   1598c:	d05a                	sw	s6,32(sp)
   1598e:	8bb2                	mv	s7,a2
   15990:	d256                	sw	s5,36(sp)
   15992:	d452                	sw	s4,40(sp)
   15994:	d64a                	sw	s2,44(sp)
   15996:	c802                	sw	zero,16(sp)
   15998:	ca02                	sw	zero,20(sp)
   1599a:	cc02                	sw	zero,24(sp)
   1599c:	ce02                	sw	zero,28(sp)
   1599e:	5d9030ef          	jal	19776 <__eqtf2>
   159a2:	c941                	beqz	a0,15a32 <frexpl+0xec>
   159a4:	4681                	li	a3,0
   159a6:	c8a1                	beqz	s1,159f6 <frexpl+0xb0>
   159a8:	7771                	lui	a4,0xffffc
   159aa:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffde06e>
   159ac:	5972                	lw	s2,60(sp)
   159ae:	94ba                	add	s1,s1,a4
   159b0:	800107b7          	lui	a5,0x80010
   159b4:	94b6                	add	s1,s1,a3
   159b6:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff206b>
   159b8:	009ba023          	sw	s1,0(s7)
   159bc:	5b42                	lw	s6,48(sp)
   159be:	5ad2                	lw	s5,52(sp)
   159c0:	5a62                	lw	s4,56(sp)
   159c2:	4bb6                	lw	s7,76(sp)
   159c4:	00f97933          	and	s2,s2,a5
   159c8:	3ffe07b7          	lui	a5,0x3ffe0
   159cc:	00f96933          	or	s2,s2,a5
   159d0:	01642023          	sw	s6,0(s0)
   159d4:	01542223          	sw	s5,4(s0)
   159d8:	01442423          	sw	s4,8(s0)
   159dc:	01242623          	sw	s2,12(s0)
   159e0:	50b6                	lw	ra,108(sp)
   159e2:	8522                	mv	a0,s0
   159e4:	5426                	lw	s0,104(sp)
   159e6:	5496                	lw	s1,100(sp)
   159e8:	5906                	lw	s2,96(sp)
   159ea:	49f6                	lw	s3,92(sp)
   159ec:	4a66                	lw	s4,88(sp)
   159ee:	4ad6                	lw	s5,84(sp)
   159f0:	4b46                	lw	s6,80(sp)
   159f2:	6165                	addi	sp,sp,112
   159f4:	8082                	ret
   159f6:	407107b7          	lui	a5,0x40710
   159fa:	860a                	mv	a2,sp
   159fc:	080c                	addi	a1,sp,16
   159fe:	1008                	addi	a0,sp,32
   15a00:	c63e                	sw	a5,12(sp)
   15a02:	c85a                	sw	s6,16(sp)
   15a04:	ca56                	sw	s5,20(sp)
   15a06:	cc52                	sw	s4,24(sp)
   15a08:	ce4a                	sw	s2,28(sp)
   15a0a:	c002                	sw	zero,0(sp)
   15a0c:	c202                	sw	zero,4(sp)
   15a0e:	c402                	sw	zero,8(sp)
   15a10:	02a040ef          	jal	19a3a <__multf3>
   15a14:	5702                	lw	a4,32(sp)
   15a16:	57b2                	lw	a5,44(sp)
   15a18:	f8e00693          	li	a3,-114
   15a1c:	d83a                	sw	a4,48(sp)
   15a1e:	5712                	lw	a4,36(sp)
   15a20:	0107d493          	srli	s1,a5,0x10
   15a24:	de3e                	sw	a5,60(sp)
   15a26:	da3a                	sw	a4,52(sp)
   15a28:	5722                	lw	a4,40(sp)
   15a2a:	0134f4b3          	and	s1,s1,s3
   15a2e:	dc3a                	sw	a4,56(sp)
   15a30:	bfa5                	j	159a8 <frexpl+0x62>
   15a32:	4bb6                	lw	s7,76(sp)
   15a34:	bf71                	j	159d0 <frexpl+0x8a>

00015a36 <__register_exitproc>:
   15a36:	f281a783          	lw	a5,-216(gp) # 1dc70 <__atexit>
   15a3a:	c3a1                	beqz	a5,15a7a <__register_exitproc+0x44>
   15a3c:	43d8                	lw	a4,4(a5)
   15a3e:	487d                	li	a6,31
   15a40:	04e84f63          	blt	a6,a4,15a9e <__register_exitproc+0x68>
   15a44:	00271813          	slli	a6,a4,0x2
   15a48:	c11d                	beqz	a0,15a6e <__register_exitproc+0x38>
   15a4a:	01078333          	add	t1,a5,a6
   15a4e:	08c32423          	sw	a2,136(t1)
   15a52:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f21f4>
   15a56:	4605                	li	a2,1
   15a58:	00e61633          	sll	a2,a2,a4
   15a5c:	00c8e8b3          	or	a7,a7,a2
   15a60:	1917a423          	sw	a7,392(a5)
   15a64:	10d32423          	sw	a3,264(t1)
   15a68:	4689                	li	a3,2
   15a6a:	00d50f63          	beq	a0,a3,15a88 <__register_exitproc+0x52>
   15a6e:	0705                	addi	a4,a4,1
   15a70:	c3d8                	sw	a4,4(a5)
   15a72:	97c2                	add	a5,a5,a6
   15a74:	c78c                	sw	a1,8(a5)
   15a76:	4501                	li	a0,0
   15a78:	8082                	ret
   15a7a:	0bc18813          	addi	a6,gp,188 # 1de04 <__atexit0>
   15a7e:	f301a423          	sw	a6,-216(gp) # 1dc70 <__atexit>
   15a82:	0bc18793          	addi	a5,gp,188 # 1de04 <__atexit0>
   15a86:	bf5d                	j	15a3c <__register_exitproc+0x6>
   15a88:	18c7a683          	lw	a3,396(a5)
   15a8c:	0705                	addi	a4,a4,1
   15a8e:	c3d8                	sw	a4,4(a5)
   15a90:	8ed1                	or	a3,a3,a2
   15a92:	18d7a623          	sw	a3,396(a5)
   15a96:	97c2                	add	a5,a5,a6
   15a98:	c78c                	sw	a1,8(a5)
   15a9a:	4501                	li	a0,0
   15a9c:	8082                	ret
   15a9e:	557d                	li	a0,-1
   15aa0:	8082                	ret

00015aa2 <_ldtoa_r>:
   15aa2:	68f1                	lui	a7,0x1c
   15aa4:	06c88893          	addi	a7,a7,108 # 1c06c <blanks.1+0x10>
   15aa8:	0008af83          	lw	t6,0(a7)
   15aac:	0048af03          	lw	t5,4(a7)
   15ab0:	0088ae83          	lw	t4,8(a7)
   15ab4:	00c8ae03          	lw	t3,12(a7)
   15ab8:	0108a303          	lw	t1,16(a7)
   15abc:	03852883          	lw	a7,56(a0)
   15ac0:	7171                	addi	sp,sp,-176
   15ac2:	d14a                	sw	s2,160(sp)
   15ac4:	cf4e                	sw	s3,156(sp)
   15ac6:	cd52                	sw	s4,152(sp)
   15ac8:	c95a                	sw	s6,144(sp)
   15aca:	c75e                	sw	s7,140(sp)
   15acc:	c562                	sw	s8,136(sp)
   15ace:	c366                	sw	s9,132(sp)
   15ad0:	c16a                	sw	s10,128(sp)
   15ad2:	d706                	sw	ra,172(sp)
   15ad4:	d522                	sw	s0,168(sp)
   15ad6:	d326                	sw	s1,164(sp)
   15ad8:	cb56                	sw	s5,148(sp)
   15ada:	deee                	sw	s11,124(sp)
   15adc:	cefe                	sw	t6,92(sp)
   15ade:	d0fa                	sw	t5,96(sp)
   15ae0:	d2f6                	sw	t4,100(sp)
   15ae2:	d4f2                	sw	t3,104(sp)
   15ae4:	d69a                	sw	t1,108(sp)
   15ae6:	cc32                	sw	a2,24(sp)
   15ae8:	ce36                	sw	a3,28(sp)
   15aea:	0005aa03          	lw	s4,0(a1)
   15aee:	0045a983          	lw	s3,4(a1)
   15af2:	0085a903          	lw	s2,8(a1)
   15af6:	00c5ac03          	lw	s8,12(a1)
   15afa:	8b2a                	mv	s6,a0
   15afc:	8bba                	mv	s7,a4
   15afe:	8cbe                	mv	s9,a5
   15b00:	8d42                	mv	s10,a6
   15b02:	00088763          	beqz	a7,15b10 <_ldtoa_r+0x6e>
   15b06:	85c6                	mv	a1,a7
   15b08:	24a010ef          	jal	16d52 <__freedtoa>
   15b0c:	020b2c23          	sw	zero,56(s6)
   15b10:	5626                	lw	a2,104(sp)
   15b12:	01fc5693          	srli	a3,s8,0x1f
   15b16:	001c1a93          	slli	s5,s8,0x1
   15b1a:	40165713          	srai	a4,a2,0x1
   15b1e:	74f1                	lui	s1,0xffffc
   15b20:	001c1413          	slli	s0,s8,0x1
   15b24:	8f75                	and	a4,a4,a3
   15b26:	011ada93          	srli	s5,s5,0x11
   15b2a:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffddffd>
   15b2e:	010c1d93          	slli	s11,s8,0x10
   15b32:	00dca023          	sw	a3,0(s9)
   15b36:	8005                	srli	s0,s0,0x1
   15b38:	8f31                	xor	a4,a4,a2
   15b3a:	010ddd93          	srli	s11,s11,0x10
   15b3e:	009a87b3          	add	a5,s5,s1
   15b42:	100c                	addi	a1,sp,32
   15b44:	1808                	addi	a0,sp,48
   15b46:	d852                	sw	s4,48(sp)
   15b48:	da4e                	sw	s3,52(sp)
   15b4a:	dc4a                	sw	s2,56(sp)
   15b4c:	de22                	sw	s0,60(sp)
   15b4e:	d052                	sw	s4,32(sp)
   15b50:	d24e                	sw	s3,36(sp)
   15b52:	d44a                	sw	s2,40(sp)
   15b54:	d622                	sw	s0,44(sp)
   15b56:	d4ba                	sw	a4,104(sp)
   15b58:	ca3e                	sw	a5,20(sp)
   15b5a:	c6d2                	sw	s4,76(sp)
   15b5c:	c8ce                	sw	s3,80(sp)
   15b5e:	caca                	sw	s2,84(sp)
   15b60:	ccee                	sw	s11,88(sp)
   15b62:	457050ef          	jal	1b7b8 <__unordtf2>
   15b66:	e979                	bnez	a0,15c3c <_ldtoa_r+0x19a>
   15b68:	7fff0cb7          	lui	s9,0x7fff0
   15b6c:	54fd                	li	s1,-1
   15b6e:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd206b>
   15b70:	100c                	addi	a1,sp,32
   15b72:	1808                	addi	a0,sp,48
   15b74:	d852                	sw	s4,48(sp)
   15b76:	da4e                	sw	s3,52(sp)
   15b78:	dc4a                	sw	s2,56(sp)
   15b7a:	de22                	sw	s0,60(sp)
   15b7c:	d026                	sw	s1,32(sp)
   15b7e:	d226                	sw	s1,36(sp)
   15b80:	d426                	sw	s1,40(sp)
   15b82:	d666                	sw	s9,44(sp)
   15b84:	435050ef          	jal	1b7b8 <__unordtf2>
   15b88:	ed21                	bnez	a0,15be0 <_ldtoa_r+0x13e>
   15b8a:	100c                	addi	a1,sp,32
   15b8c:	1808                	addi	a0,sp,48
   15b8e:	5c1030ef          	jal	1994e <__letf2>
   15b92:	04a05763          	blez	a0,15be0 <_ldtoa_r+0x13e>
   15b96:	478d                	li	a5,3
   15b98:	c4be                	sw	a5,72(sp)
   15b9a:	47e2                	lw	a5,24(sp)
   15b9c:	4872                	lw	a6,28(sp)
   15b9e:	4652                	lw	a2,20(sp)
   15ba0:	00b8                	addi	a4,sp,72
   15ba2:	c06a                	sw	s10,0(sp)
   15ba4:	88de                	mv	a7,s7
   15ba6:	00f4                	addi	a3,sp,76
   15ba8:	08ec                	addi	a1,sp,92
   15baa:	855a                	mv	a0,s6
   15bac:	2235                	jal	15cd8 <__gdtoa>
   15bae:	000ba703          	lw	a4,0(s7)
   15bb2:	77e1                	lui	a5,0xffff8
   15bb4:	00f71763          	bne	a4,a5,15bc2 <_ldtoa_r+0x120>
   15bb8:	800007b7          	lui	a5,0x80000
   15bbc:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe206b>
   15bbe:	00fba023          	sw	a5,0(s7)
   15bc2:	50ba                	lw	ra,172(sp)
   15bc4:	542a                	lw	s0,168(sp)
   15bc6:	549a                	lw	s1,164(sp)
   15bc8:	590a                	lw	s2,160(sp)
   15bca:	49fa                	lw	s3,156(sp)
   15bcc:	4a6a                	lw	s4,152(sp)
   15bce:	4ada                	lw	s5,148(sp)
   15bd0:	4b4a                	lw	s6,144(sp)
   15bd2:	4bba                	lw	s7,140(sp)
   15bd4:	4c2a                	lw	s8,136(sp)
   15bd6:	4c9a                	lw	s9,132(sp)
   15bd8:	4d0a                	lw	s10,128(sp)
   15bda:	5df6                	lw	s11,124(sp)
   15bdc:	614d                	addi	sp,sp,176
   15bde:	8082                	ret
   15be0:	67c1                	lui	a5,0x10
   15be2:	100c                	addi	a1,sp,32
   15be4:	1808                	addi	a0,sp,48
   15be6:	d852                	sw	s4,48(sp)
   15be8:	da4e                	sw	s3,52(sp)
   15bea:	dc4a                	sw	s2,56(sp)
   15bec:	de22                	sw	s0,60(sp)
   15bee:	d002                	sw	zero,32(sp)
   15bf0:	d202                	sw	zero,36(sp)
   15bf2:	d402                	sw	zero,40(sp)
   15bf4:	d63e                	sw	a5,44(sp)
   15bf6:	46d030ef          	jal	19862 <__getf2>
   15bfa:	00054963          	bltz	a0,15c0c <_ldtoa_r+0x16a>
   15bfe:	67c1                	lui	a5,0x10
   15c00:	00fdedb3          	or	s11,s11,a5
   15c04:	4785                	li	a5,1
   15c06:	c4be                	sw	a5,72(sp)
   15c08:	ccee                	sw	s11,88(sp)
   15c0a:	bf41                	j	15b9a <_ldtoa_r+0xf8>
   15c0c:	100c                	addi	a1,sp,32
   15c0e:	1808                	addi	a0,sp,48
   15c10:	d852                	sw	s4,48(sp)
   15c12:	da4e                	sw	s3,52(sp)
   15c14:	dc4a                	sw	s2,56(sp)
   15c16:	de62                	sw	s8,60(sp)
   15c18:	d002                	sw	zero,32(sp)
   15c1a:	d202                	sw	zero,36(sp)
   15c1c:	d402                	sw	zero,40(sp)
   15c1e:	d602                	sw	zero,44(sp)
   15c20:	357030ef          	jal	19776 <__eqtf2>
   15c24:	e119                	bnez	a0,15c2a <_ldtoa_r+0x188>
   15c26:	c482                	sw	zero,72(sp)
   15c28:	bf8d                	j	15b9a <_ldtoa_r+0xf8>
   15c2a:	74f1                	lui	s1,0xffffc
   15c2c:	4789                	li	a5,2
   15c2e:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffddffe>
   15c32:	c4be                	sw	a5,72(sp)
   15c34:	009a87b3          	add	a5,s5,s1
   15c38:	ca3e                	sw	a5,20(sp)
   15c3a:	b785                	j	15b9a <_ldtoa_r+0xf8>
   15c3c:	4791                	li	a5,4
   15c3e:	c4be                	sw	a5,72(sp)
   15c40:	bfa9                	j	15b9a <_ldtoa_r+0xf8>

00015c42 <_ldcheck>:
   15c42:	7139                	addi	sp,sp,-64
   15c44:	da26                	sw	s1,52(sp)
   15c46:	4544                	lw	s1,12(a0)
   15c48:	d64e                	sw	s3,44(sp)
   15c4a:	d452                	sw	s4,40(sp)
   15c4c:	00852983          	lw	s3,8(a0)
   15c50:	00452a03          	lw	s4,4(a0)
   15c54:	d256                	sw	s5,36(sp)
   15c56:	00052a83          	lw	s5,0(a0)
   15c5a:	0486                	slli	s1,s1,0x1
   15c5c:	8085                	srli	s1,s1,0x1
   15c5e:	858a                	mv	a1,sp
   15c60:	0808                	addi	a0,sp,16
   15c62:	de06                	sw	ra,60(sp)
   15c64:	c856                	sw	s5,16(sp)
   15c66:	ca52                	sw	s4,20(sp)
   15c68:	cc4e                	sw	s3,24(sp)
   15c6a:	ce26                	sw	s1,28(sp)
   15c6c:	c056                	sw	s5,0(sp)
   15c6e:	c252                	sw	s4,4(sp)
   15c70:	c44e                	sw	s3,8(sp)
   15c72:	c626                	sw	s1,12(sp)
   15c74:	345050ef          	jal	1b7b8 <__unordtf2>
   15c78:	e921                	bnez	a0,15cc8 <_ldcheck+0x86>
   15c7a:	d05a                	sw	s6,32(sp)
   15c7c:	7fff0b37          	lui	s6,0x7fff0
   15c80:	d84a                	sw	s2,48(sp)
   15c82:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd206b>
   15c84:	597d                	li	s2,-1
   15c86:	858a                	mv	a1,sp
   15c88:	0808                	addi	a0,sp,16
   15c8a:	dc22                	sw	s0,56(sp)
   15c8c:	c04a                	sw	s2,0(sp)
   15c8e:	c24a                	sw	s2,4(sp)
   15c90:	c44a                	sw	s2,8(sp)
   15c92:	c65a                	sw	s6,12(sp)
   15c94:	4405                	li	s0,1
   15c96:	323050ef          	jal	1b7b8 <__unordtf2>
   15c9a:	c105                	beqz	a0,15cba <_ldcheck+0x78>
   15c9c:	50f2                	lw	ra,60(sp)
   15c9e:	00144513          	xori	a0,s0,1
   15ca2:	5462                	lw	s0,56(sp)
   15ca4:	0ff57513          	zext.b	a0,a0
   15ca8:	5942                	lw	s2,48(sp)
   15caa:	5b02                	lw	s6,32(sp)
   15cac:	54d2                	lw	s1,52(sp)
   15cae:	59b2                	lw	s3,44(sp)
   15cb0:	5a22                	lw	s4,40(sp)
   15cb2:	5a92                	lw	s5,36(sp)
   15cb4:	0506                	slli	a0,a0,0x1
   15cb6:	6121                	addi	sp,sp,64
   15cb8:	8082                	ret
   15cba:	858a                	mv	a1,sp
   15cbc:	0808                	addi	a0,sp,16
   15cbe:	491030ef          	jal	1994e <__letf2>
   15cc2:	00152413          	slti	s0,a0,1
   15cc6:	bfd9                	j	15c9c <_ldcheck+0x5a>
   15cc8:	50f2                	lw	ra,60(sp)
   15cca:	54d2                	lw	s1,52(sp)
   15ccc:	59b2                	lw	s3,44(sp)
   15cce:	5a22                	lw	s4,40(sp)
   15cd0:	5a92                	lw	s5,36(sp)
   15cd2:	4505                	li	a0,1
   15cd4:	6121                	addi	sp,sp,64
   15cd6:	8082                	ret

00015cd8 <__gdtoa>:
   15cd8:	7171                	addi	sp,sp,-176
   15cda:	cb56                	sw	s5,148(sp)
   15cdc:	00072a83          	lw	s5,0(a4)
   15ce0:	d326                	sw	s1,164(sp)
   15ce2:	c75e                	sw	s7,140(sp)
   15ce4:	fcfafe13          	andi	t3,s5,-49
   15ce8:	d706                	sw	ra,172(sp)
   15cea:	01c72023          	sw	t3,0(a4)
   15cee:	8bba                	mv	s7,a4
   15cf0:	574a                	lw	a4,176(sp)
   15cf2:	00fafe13          	andi	t3,s5,15
   15cf6:	4e8d                	li	t4,3
   15cf8:	c63a                	sw	a4,12(sp)
   15cfa:	c832                	sw	a2,16(sp)
   15cfc:	d442                	sw	a6,40(sp)
   15cfe:	84c6                	mv	s1,a7
   15d00:	4fde0263          	beq	t3,t4,161e4 <__gdtoa+0x50c>
   15d04:	c95a                	sw	s6,144(sp)
   15d06:	00cafb13          	andi	s6,s5,12
   15d0a:	460b1b63          	bnez	s6,16180 <__gdtoa+0x4a8>
   15d0e:	d522                	sw	s0,168(sp)
   15d10:	842a                	mv	s0,a0
   15d12:	4a0e0563          	beqz	t3,161bc <__gdtoa+0x4e4>
   15d16:	c16a                	sw	s10,128(sp)
   15d18:	0005ad03          	lw	s10,0(a1)
   15d1c:	d14a                	sw	s2,160(sp)
   15d1e:	cf4e                	sw	s3,156(sp)
   15d20:	cd52                	sw	s4,152(sp)
   15d22:	c366                	sw	s9,132(sp)
   15d24:	02000613          	li	a2,32
   15d28:	8a2e                	mv	s4,a1
   15d2a:	893e                	mv	s2,a5
   15d2c:	89b6                	mv	s3,a3
   15d2e:	4581                	li	a1,0
   15d30:	02000793          	li	a5,32
   15d34:	01a65663          	bge	a2,s10,15d40 <__gdtoa+0x68>
   15d38:	0786                	slli	a5,a5,0x1
   15d3a:	0585                	addi	a1,a1,1
   15d3c:	ffa7cee3          	blt	a5,s10,15d38 <__gdtoa+0x60>
   15d40:	8522                	mv	a0,s0
   15d42:	252010ef          	jal	16f94 <_Balloc>
   15d46:	8caa                	mv	s9,a0
   15d48:	68050163          	beqz	a0,163ca <__gdtoa+0x6f2>
   15d4c:	fffd0893          	addi	a7,s10,-1
   15d50:	4058d893          	srai	a7,a7,0x5
   15d54:	00289513          	slli	a0,a7,0x2
   15d58:	c562                	sw	s8,136(sp)
   15d5a:	deee                	sw	s11,124(sp)
   15d5c:	954e                	add	a0,a0,s3
   15d5e:	014c8613          	addi	a2,s9,20
   15d62:	87ce                	mv	a5,s3
   15d64:	4398                	lw	a4,0(a5)
   15d66:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   15d68:	0611                	addi	a2,a2,4
   15d6a:	fee62e23          	sw	a4,-4(a2)
   15d6e:	fef57be3          	bgeu	a0,a5,15d64 <__gdtoa+0x8c>
   15d72:	0505                	addi	a0,a0,1
   15d74:	00198793          	addi	a5,s3,1
   15d78:	4611                	li	a2,4
   15d7a:	00f56563          	bltu	a0,a5,15d84 <__gdtoa+0xac>
   15d7e:	088a                	slli	a7,a7,0x2
   15d80:	00488613          	addi	a2,a7,4
   15d84:	40265d93          	srai	s11,a2,0x2
   15d88:	9666                	add	a2,a2,s9
   15d8a:	a021                	j	15d92 <__gdtoa+0xba>
   15d8c:	1671                	addi	a2,a2,-4
   15d8e:	480d8f63          	beqz	s11,1622c <__gdtoa+0x554>
   15d92:	4a1c                	lw	a5,16(a2)
   15d94:	8c6e                	mv	s8,s11
   15d96:	1dfd                	addi	s11,s11,-1
   15d98:	dbf5                	beqz	a5,15d8c <__gdtoa+0xb4>
   15d9a:	004d8793          	addi	a5,s11,4
   15d9e:	078a                	slli	a5,a5,0x2
   15da0:	97e6                	add	a5,a5,s9
   15da2:	43c8                	lw	a0,4(a5)
   15da4:	018ca823          	sw	s8,16(s9)
   15da8:	0c16                	slli	s8,s8,0x5
   15daa:	414010ef          	jal	171be <__hi0bits>
   15dae:	40ac0db3          	sub	s11,s8,a0
   15db2:	8566                	mv	a0,s9
   15db4:	1a6010ef          	jal	16f5a <__trailz_D2A>
   15db8:	d6aa                	sw	a0,108(sp)
   15dba:	4c42                	lw	s8,16(sp)
   15dbc:	48051c63          	bnez	a0,16254 <__gdtoa+0x57c>
   15dc0:	010ca603          	lw	a2,16(s9)
   15dc4:	3e060163          	beqz	a2,161a6 <__gdtoa+0x4ce>
   15dc8:	10ec                	addi	a1,sp,108
   15dca:	8566                	mv	a0,s9
   15dcc:	2e5010ef          	jal	178b0 <__b2d>
   15dd0:	00c59613          	slli	a2,a1,0xc
   15dd4:	8231                	srli	a2,a2,0xc
   15dd6:	3ff005b7          	lui	a1,0x3ff00
   15dda:	8f2a                	mv	t5,a0
   15ddc:	8e4d                	or	a2,a2,a1
   15dde:	cc7a                	sw	t5,24(sp)
   15de0:	ce32                	sw	a2,28(sp)
   15de2:	ea81b707          	fld	fa4,-344(gp) # 1dbf0 <__SDATA_BEGIN__>
   15de6:	27e2                	fld	fa5,24(sp)
   15de8:	eb01b687          	fld	fa3,-336(gp) # 1dbf8 <__SDATA_BEGIN__+0x8>
   15dec:	0ae7f753          	fsub.d	fa4,fa5,fa4
   15df0:	eb81b787          	fld	fa5,-328(gp) # 1dc00 <__SDATA_BEGIN__+0x10>
   15df4:	01bc08b3          	add	a7,s8,s11
   15df8:	fff88593          	addi	a1,a7,-1
   15dfc:	852e                	mv	a0,a1
   15dfe:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   15e02:	d20587d3          	fcvt.d.w	fa5,a1
   15e06:	ec01b687          	fld	fa3,-320(gp) # 1dc08 <__SDATA_BEGIN__+0x18>
   15e0a:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   15e0e:	0005d563          	bgez	a1,15e18 <__gdtoa+0x140>
   15e12:	4505                	li	a0,1
   15e14:	41150533          	sub	a0,a0,a7
   15e18:	bcb50513          	addi	a0,a0,-1077
   15e1c:	00a05863          	blez	a0,15e2c <__gdtoa+0x154>
   15e20:	d20506d3          	fcvt.d.w	fa3,a0
   15e24:	ec81b707          	fld	fa4,-312(gp) # 1dc10 <__SDATA_BEGIN__+0x20>
   15e28:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15e2c:	d2000753          	fcvt.d.w	fa4,zero
   15e30:	c2079853          	fcvt.w.d	a6,fa5,rtz
   15e34:	a2e79553          	flt.d	a0,fa5,fa4
   15e38:	c909                	beqz	a0,15e4a <__gdtoa+0x172>
   15e3a:	d2080753          	fcvt.d.w	fa4,a6
   15e3e:	a2f72553          	feq.d	a0,fa4,fa5
   15e42:	00153513          	seqz	a0,a0
   15e46:	40a80833          	sub	a6,a6,a0
   15e4a:	01459e93          	slli	t4,a1,0x14
   15e4e:	40bd8533          	sub	a0,s11,a1
   15e52:	45d9                	li	a1,22
   15e54:	00ce8fb3          	add	t6,t4,a2
   15e58:	fff50e93          	addi	t4,a0,-1
   15e5c:	3d05eb63          	bltu	a1,a6,16232 <__gdtoa+0x55a>
   15e60:	65f1                	lui	a1,0x1c
   15e62:	00381613          	slli	a2,a6,0x3
   15e66:	0e058593          	addi	a1,a1,224 # 1c0e0 <__mprec_tens>
   15e6a:	962e                	add	a2,a2,a1
   15e6c:	cc7a                	sw	t5,24(sp)
   15e6e:	ce7e                	sw	t6,28(sp)
   15e70:	221c                	fld	fa5,0(a2)
   15e72:	2762                	fld	fa4,24(sp)
   15e74:	a2f71653          	flt.d	a2,fa4,fa5
   15e78:	58061163          	bnez	a2,163fa <__gdtoa+0x722>
   15e7c:	ca82                	sw	zero,84(sp)
   15e7e:	cc02                	sw	zero,24(sp)
   15e80:	00a04763          	bgtz	a0,15e8e <__gdtoa+0x1b6>
   15e84:	4605                	li	a2,1
   15e86:	40a607b3          	sub	a5,a2,a0
   15e8a:	cc3e                	sw	a5,24(sp)
   15e8c:	4e81                	li	t4,0
   15e8e:	9ec2                	add	t4,t4,a6
   15e90:	da42                	sw	a6,52(sp)
   15e92:	d802                	sw	zero,48(sp)
   15e94:	4625                	li	a2,9
   15e96:	3d266a63          	bltu	a2,s2,1626a <__gdtoa+0x592>
   15e9a:	4615                	li	a2,5
   15e9c:	57264263          	blt	a2,s2,16400 <__gdtoa+0x728>
   15ea0:	3fd88893          	addi	a7,a7,1021
   15ea4:	7f88b793          	sltiu	a5,a7,2040
   15ea8:	4591                	li	a1,4
   15eaa:	ccbe                	sw	a5,88(sp)
   15eac:	18b909e3          	beq	s2,a1,1683e <__gdtoa+0xb66>
   15eb0:	18c903e3          	beq	s2,a2,16836 <__gdtoa+0xb5e>
   15eb4:	4609                	li	a2,2
   15eb6:	18c907e3          	beq	s2,a2,16844 <__gdtoa+0xb6c>
   15eba:	460d                	li	a2,3
   15ebc:	c882                	sw	zero,80(sp)
   15ebe:	3ac91c63          	bne	s2,a2,16276 <__gdtoa+0x59e>
   15ec2:	57d2                	lw	a5,52(sp)
   15ec4:	5722                	lw	a4,40(sp)
   15ec6:	97ba                	add	a5,a5,a4
   15ec8:	cebe                	sw	a5,92(sp)
   15eca:	0785                	addi	a5,a5,1
   15ecc:	d63e                	sw	a5,44(sp)
   15ece:	00f05ce3          	blez	a5,166e6 <__gdtoa+0xa0e>
   15ed2:	863e                	mv	a2,a5
   15ed4:	85be                	mv	a1,a5
   15ed6:	8522                	mv	a0,s0
   15ed8:	c4fa                	sw	t5,72(sp)
   15eda:	c6fe                	sw	t6,76(sp)
   15edc:	c0f6                	sw	t4,64(sp)
   15ede:	dc42                	sw	a6,56(sp)
   15ee0:	d6b2                	sw	a2,108(sp)
   15ee2:	5bd000ef          	jal	16c9e <__rv_alloc_D2A>
   15ee6:	88aa                	mv	a7,a0
   15ee8:	32050863          	beqz	a0,16218 <__gdtoa+0x540>
   15eec:	00ca2783          	lw	a5,12(s4)
   15ef0:	5862                	lw	a6,56(sp)
   15ef2:	4e86                	lw	t4,64(sp)
   15ef4:	17fd                	addi	a5,a5,-1
   15ef6:	d03e                	sw	a5,32(sp)
   15ef8:	4f26                	lw	t5,72(sp)
   15efa:	4fb6                	lw	t6,76(sp)
   15efc:	3a078363          	beqz	a5,162a2 <__gdtoa+0x5ca>
   15f00:	4e07ca63          	bltz	a5,163f4 <__gdtoa+0x71c>
   15f04:	100af313          	andi	t1,s5,256
   15f08:	38031863          	bnez	t1,16298 <__gdtoa+0x5c0>
   15f0c:	000c4663          	bltz	s8,15f18 <__gdtoa+0x240>
   15f10:	57d2                	lw	a5,52(sp)
   15f12:	4639                	li	a2,14
   15f14:	50f65363          	bge	a2,a5,1641a <__gdtoa+0x742>
   15f18:	47c6                	lw	a5,80(sp)
   15f1a:	4c078863          	beqz	a5,163ea <__gdtoa+0x712>
   15f1e:	41bd06b3          	sub	a3,s10,s11
   15f22:	004a2603          	lw	a2,4(s4)
   15f26:	00168593          	addi	a1,a3,1
   15f2a:	d6ae                	sw	a1,108(sp)
   15f2c:	40dc06b3          	sub	a3,s8,a3
   15f30:	7ec6dd63          	bge	a3,a2,1672a <__gdtoa+0xa52>
   15f34:	ffd90693          	addi	a3,s2,-3
   15f38:	9af5                	andi	a3,a3,-3
   15f3a:	72068863          	beqz	a3,1666a <__gdtoa+0x992>
   15f3e:	40cc06b3          	sub	a3,s8,a2
   15f42:	0685                	addi	a3,a3,1
   15f44:	d6b6                	sw	a3,108(sp)
   15f46:	4605                	li	a2,1
   15f48:	01265863          	bge	a2,s2,15f58 <__gdtoa+0x280>
   15f4c:	57b2                	lw	a5,44(sp)
   15f4e:	00f05563          	blez	a5,15f58 <__gdtoa+0x280>
   15f52:	57b2                	lw	a5,44(sp)
   15f54:	40d7c1e3          	blt	a5,a3,16b56 <__gdtoa+0xe7e>
   15f58:	47e2                	lw	a5,24(sp)
   15f5a:	5d42                	lw	s10,48(sp)
   15f5c:	9eb6                	add	t4,t4,a3
   15f5e:	dc3e                	sw	a5,56(sp)
   15f60:	97b6                	add	a5,a5,a3
   15f62:	cc3e                	sw	a5,24(sp)
   15f64:	4585                	li	a1,1
   15f66:	8522                	mv	a0,s0
   15f68:	ccc6                	sw	a7,88(sp)
   15f6a:	c4f6                	sw	t4,72(sp)
   15f6c:	c0c2                	sw	a6,64(sp)
   15f6e:	32e010ef          	jal	1729c <__i2b>
   15f72:	4806                	lw	a6,64(sp)
   15f74:	4ea6                	lw	t4,72(sp)
   15f76:	48e6                	lw	a7,88(sp)
   15f78:	8c2a                	mv	s8,a0
   15f7a:	28050f63          	beqz	a0,16218 <__gdtoa+0x540>
   15f7e:	57e2                	lw	a5,56(sp)
   15f80:	c385                	beqz	a5,15fa0 <__gdtoa+0x2c8>
   15f82:	01d05f63          	blez	t4,15fa0 <__gdtoa+0x2c8>
   15f86:	86be                	mv	a3,a5
   15f88:	00fed363          	bge	t4,a5,15f8e <__gdtoa+0x2b6>
   15f8c:	86f6                	mv	a3,t4
   15f8e:	47e2                	lw	a5,24(sp)
   15f90:	d6b6                	sw	a3,108(sp)
   15f92:	40de8eb3          	sub	t4,t4,a3
   15f96:	8f95                	sub	a5,a5,a3
   15f98:	cc3e                	sw	a5,24(sp)
   15f9a:	57e2                	lw	a5,56(sp)
   15f9c:	8f95                	sub	a5,a5,a3
   15f9e:	dc3e                	sw	a5,56(sp)
   15fa0:	57c2                	lw	a5,48(sp)
   15fa2:	c39d                	beqz	a5,15fc8 <__gdtoa+0x2f0>
   15fa4:	47c6                	lw	a5,80(sp)
   15fa6:	c399                	beqz	a5,15fac <__gdtoa+0x2d4>
   15fa8:	7e0d1863          	bnez	s10,16798 <__gdtoa+0xac0>
   15fac:	5642                	lw	a2,48(sp)
   15fae:	85e6                	mv	a1,s9
   15fb0:	8522                	mv	a0,s0
   15fb2:	ccc6                	sw	a7,88(sp)
   15fb4:	c4f6                	sw	t4,72(sp)
   15fb6:	c0c2                	sw	a6,64(sp)
   15fb8:	4e2010ef          	jal	1749a <__pow5mult>
   15fbc:	4806                	lw	a6,64(sp)
   15fbe:	4ea6                	lw	t4,72(sp)
   15fc0:	48e6                	lw	a7,88(sp)
   15fc2:	8caa                	mv	s9,a0
   15fc4:	24050a63          	beqz	a0,16218 <__gdtoa+0x540>
   15fc8:	4585                	li	a1,1
   15fca:	8522                	mv	a0,s0
   15fcc:	c4c6                	sw	a7,72(sp)
   15fce:	c0f6                	sw	t4,64(sp)
   15fd0:	d842                	sw	a6,48(sp)
   15fd2:	2ca010ef          	jal	1729c <__i2b>
   15fd6:	8d2a                	mv	s10,a0
   15fd8:	24050063          	beqz	a0,16218 <__gdtoa+0x540>
   15fdc:	5842                	lw	a6,48(sp)
   15fde:	4e86                	lw	t4,64(sp)
   15fe0:	48a6                	lw	a7,72(sp)
   15fe2:	70081663          	bnez	a6,166ee <__gdtoa+0xa16>
   15fe6:	4685                	li	a3,1
   15fe8:	5126d263          	bge	a3,s2,164ec <__gdtoa+0x814>
   15fec:	4a7d                	li	s4,31
   15fee:	47e2                	lw	a5,24(sp)
   15ff0:	41da0a33          	sub	s4,s4,t4
   15ff4:	1a71                	addi	s4,s4,-4
   15ff6:	01fa7a13          	andi	s4,s4,31
   15ffa:	00fa0633          	add	a2,s4,a5
   15ffe:	d6d2                	sw	s4,108(sp)
   16000:	87d2                	mv	a5,s4
   16002:	58c04d63          	bgtz	a2,1659c <__gdtoa+0x8c4>
   16006:	00fe8633          	add	a2,t4,a5
   1600a:	1ec04c63          	bgtz	a2,16202 <__gdtoa+0x52a>
   1600e:	47d6                	lw	a5,84(sp)
   16010:	5a079563          	bnez	a5,165ba <__gdtoa+0x8e2>
   16014:	57b2                	lw	a5,44(sp)
   16016:	66f05a63          	blez	a5,1668a <__gdtoa+0x9b2>
   1601a:	47c6                	lw	a5,80(sp)
   1601c:	5c078d63          	beqz	a5,165f6 <__gdtoa+0x91e>
   16020:	57e2                	lw	a5,56(sp)
   16022:	00fa0633          	add	a2,s4,a5
   16026:	7ec04763          	bgtz	a2,16814 <__gdtoa+0xb3c>
   1602a:	8a62                	mv	s4,s8
   1602c:	02081ce3          	bnez	a6,16864 <__gdtoa+0xb8c>
   16030:	5b32                	lw	s6,44(sp)
   16032:	8dc6                	mv	s11,a7
   16034:	4685                	li	a3,1
   16036:	d446                	sw	a7,40(sp)
   16038:	cc5e                	sw	s7,24(sp)
   1603a:	d626                	sw	s1,44(sp)
   1603c:	a885                	j	160ac <__gdtoa+0x3d4>
   1603e:	8522                	mv	a0,s0
   16040:	7c1000ef          	jal	17000 <_Bfree>
   16044:	100ac3e3          	bltz	s5,1694a <__gdtoa+0xc72>
   16048:	01596ab3          	or	s5,s2,s5
   1604c:	000a9763          	bnez	s5,1605a <__gdtoa+0x382>
   16050:	0009a783          	lw	a5,0(s3)
   16054:	8b85                	andi	a5,a5,1
   16056:	0e078ae3          	beqz	a5,1694a <__gdtoa+0xc72>
   1605a:	5782                	lw	a5,32(sp)
   1605c:	4709                	li	a4,2
   1605e:	26e798e3          	bne	a5,a4,16ace <__gdtoa+0xdf6>
   16062:	017d8023          	sb	s7,0(s11)
   16066:	57b6                	lw	a5,108(sp)
   16068:	0d85                	addi	s11,s11,1
   1606a:	1efb0fe3          	beq	s6,a5,16a68 <__gdtoa+0xd90>
   1606e:	85e6                	mv	a1,s9
   16070:	4681                	li	a3,0
   16072:	4629                	li	a2,10
   16074:	8522                	mv	a0,s0
   16076:	79d000ef          	jal	17012 <__multadd>
   1607a:	8caa                	mv	s9,a0
   1607c:	18050e63          	beqz	a0,16218 <__gdtoa+0x540>
   16080:	4681                	li	a3,0
   16082:	4629                	li	a2,10
   16084:	85e2                	mv	a1,s8
   16086:	8522                	mv	a0,s0
   16088:	494c0c63          	beq	s8,s4,16520 <__gdtoa+0x848>
   1608c:	787000ef          	jal	17012 <__multadd>
   16090:	8c2a                	mv	s8,a0
   16092:	18050363          	beqz	a0,16218 <__gdtoa+0x540>
   16096:	85d2                	mv	a1,s4
   16098:	4681                	li	a3,0
   1609a:	4629                	li	a2,10
   1609c:	8522                	mv	a0,s0
   1609e:	775000ef          	jal	17012 <__multadd>
   160a2:	8a2a                	mv	s4,a0
   160a4:	16050a63          	beqz	a0,16218 <__gdtoa+0x540>
   160a8:	56b6                	lw	a3,108(sp)
   160aa:	0685                	addi	a3,a3,1
   160ac:	85ea                	mv	a1,s10
   160ae:	8566                	mv	a0,s9
   160b0:	d6b6                	sw	a3,108(sp)
   160b2:	4af000ef          	jal	16d60 <__quorem_D2A>
   160b6:	84aa                	mv	s1,a0
   160b8:	85e2                	mv	a1,s8
   160ba:	8566                	mv	a0,s9
   160bc:	5c0010ef          	jal	1767c <__mcmp>
   160c0:	85ea                	mv	a1,s10
   160c2:	8aaa                	mv	s5,a0
   160c4:	8652                	mv	a2,s4
   160c6:	8522                	mv	a0,s0
   160c8:	5f0010ef          	jal	176b8 <__mdiff>
   160cc:	03048b93          	addi	s7,s1,48
   160d0:	85aa                	mv	a1,a0
   160d2:	14050363          	beqz	a0,16218 <__gdtoa+0x540>
   160d6:	455c                	lw	a5,12(a0)
   160d8:	f3bd                	bnez	a5,1603e <__gdtoa+0x366>
   160da:	c82a                	sw	a0,16(sp)
   160dc:	8566                	mv	a0,s9
   160de:	59e010ef          	jal	1767c <__mcmp>
   160e2:	45c2                	lw	a1,16(sp)
   160e4:	86aa                	mv	a3,a0
   160e6:	8522                	mv	a0,s0
   160e8:	c836                	sw	a3,16(sp)
   160ea:	717000ef          	jal	17000 <_Bfree>
   160ee:	46c2                	lw	a3,16(sp)
   160f0:	00d96733          	or	a4,s2,a3
   160f4:	340711e3          	bnez	a4,16c36 <__gdtoa+0xf5e>
   160f8:	0009a783          	lw	a5,0(s3)
   160fc:	8b85                	andi	a5,a5,1
   160fe:	42079863          	bnez	a5,1652e <__gdtoa+0x856>
   16102:	5782                	lw	a5,32(sp)
   16104:	280787e3          	beqz	a5,16b92 <__gdtoa+0xeba>
   16108:	f5504de3          	bgtz	s5,16062 <__gdtoa+0x38a>
   1610c:	010ca603          	lw	a2,16(s9)
   16110:	4685                	li	a3,1
   16112:	835e                	mv	t1,s7
   16114:	58a2                	lw	a7,40(sp)
   16116:	4be2                	lw	s7,24(sp)
   16118:	54b2                	lw	s1,44(sp)
   1611a:	8b3a                	mv	s6,a4
   1611c:	2ec6dae3          	bge	a3,a2,16c10 <__gdtoa+0xf38>
   16120:	5782                	lw	a5,32(sp)
   16122:	4689                	li	a3,2
   16124:	8a9a                	mv	s5,t1
   16126:	8b46                	mv	s6,a7
   16128:	02d79063          	bne	a5,a3,16148 <__gdtoa+0x470>
   1612c:	2cb0006f          	j	16bf6 <__gdtoa+0xf1e>
   16130:	6e3000ef          	jal	17012 <__multadd>
   16134:	85ea                	mv	a1,s10
   16136:	8caa                	mv	s9,a0
   16138:	0e050063          	beqz	a0,16218 <__gdtoa+0x540>
   1613c:	425000ef          	jal	16d60 <__quorem_D2A>
   16140:	03050a93          	addi	s5,a0,48
   16144:	8dca                	mv	s11,s2
   16146:	8a4e                	mv	s4,s3
   16148:	85d2                	mv	a1,s4
   1614a:	856a                	mv	a0,s10
   1614c:	530010ef          	jal	1767c <__mcmp>
   16150:	87aa                	mv	a5,a0
   16152:	4681                	li	a3,0
   16154:	4629                	li	a2,10
   16156:	85d2                	mv	a1,s4
   16158:	8522                	mv	a0,s0
   1615a:	001d8913          	addi	s2,s11,1
   1615e:	28f052e3          	blez	a5,16be2 <__gdtoa+0xf0a>
   16162:	ff590fa3          	sb	s5,-1(s2)
   16166:	6ad000ef          	jal	17012 <__multadd>
   1616a:	89aa                	mv	s3,a0
   1616c:	4681                	li	a3,0
   1616e:	4629                	li	a2,10
   16170:	85e6                	mv	a1,s9
   16172:	8522                	mv	a0,s0
   16174:	0a098263          	beqz	s3,16218 <__gdtoa+0x540>
   16178:	fb4c1ce3          	bne	s8,s4,16130 <__gdtoa+0x458>
   1617c:	8c4e                	mv	s8,s3
   1617e:	bf4d                	j	16130 <__gdtoa+0x458>
   16180:	4791                	li	a5,4
   16182:	0afe1363          	bne	t3,a5,16228 <__gdtoa+0x550>
   16186:	4632                	lw	a2,12(sp)
   16188:	4b4a                	lw	s6,144(sp)
   1618a:	50ba                	lw	ra,172(sp)
   1618c:	549a                	lw	s1,164(sp)
   1618e:	4ada                	lw	s5,148(sp)
   16190:	4bba                	lw	s7,140(sp)
   16192:	77e1                	lui	a5,0xffff8
   16194:	00f8a023          	sw	a5,0(a7)
   16198:	65f1                	lui	a1,0x1c
   1619a:	468d                	li	a3,3
   1619c:	d3058593          	addi	a1,a1,-720 # 1bd30 <__clzsi2+0x14a>
   161a0:	614d                	addi	sp,sp,176
   161a2:	33d0006f          	j	16cde <__nrv_alloc_D2A>
   161a6:	85e6                	mv	a1,s9
   161a8:	8522                	mv	a0,s0
   161aa:	657000ef          	jal	17000 <_Bfree>
   161ae:	590a                	lw	s2,160(sp)
   161b0:	49fa                	lw	s3,156(sp)
   161b2:	4a6a                	lw	s4,152(sp)
   161b4:	4c2a                	lw	s8,136(sp)
   161b6:	4c9a                	lw	s9,132(sp)
   161b8:	4d0a                	lw	s10,128(sp)
   161ba:	5df6                	lw	s11,124(sp)
   161bc:	4632                	lw	a2,12(sp)
   161be:	4785                	li	a5,1
   161c0:	65f1                	lui	a1,0x1c
   161c2:	8522                	mv	a0,s0
   161c4:	c09c                	sw	a5,0(s1)
   161c6:	4685                	li	a3,1
   161c8:	d2058593          	addi	a1,a1,-736 # 1bd20 <__clzsi2+0x13a>
   161cc:	313000ef          	jal	16cde <__nrv_alloc_D2A>
   161d0:	542a                	lw	s0,168(sp)
   161d2:	88aa                	mv	a7,a0
   161d4:	50ba                	lw	ra,172(sp)
   161d6:	4b4a                	lw	s6,144(sp)
   161d8:	549a                	lw	s1,164(sp)
   161da:	4ada                	lw	s5,148(sp)
   161dc:	4bba                	lw	s7,140(sp)
   161de:	8546                	mv	a0,a7
   161e0:	614d                	addi	sp,sp,176
   161e2:	8082                	ret
   161e4:	4632                	lw	a2,12(sp)
   161e6:	50ba                	lw	ra,172(sp)
   161e8:	549a                	lw	s1,164(sp)
   161ea:	4ada                	lw	s5,148(sp)
   161ec:	4bba                	lw	s7,140(sp)
   161ee:	77e1                	lui	a5,0xffff8
   161f0:	00f8a023          	sw	a5,0(a7)
   161f4:	65f1                	lui	a1,0x1c
   161f6:	46a1                	li	a3,8
   161f8:	d2458593          	addi	a1,a1,-732 # 1bd24 <__clzsi2+0x13e>
   161fc:	614d                	addi	sp,sp,176
   161fe:	2e10006f          	j	16cde <__nrv_alloc_D2A>
   16202:	85ea                	mv	a1,s10
   16204:	8522                	mv	a0,s0
   16206:	cc46                	sw	a7,24(sp)
   16208:	c842                	sw	a6,16(sp)
   1620a:	364010ef          	jal	1756e <__lshift>
   1620e:	4842                	lw	a6,16(sp)
   16210:	48e2                	lw	a7,24(sp)
   16212:	8d2a                	mv	s10,a0
   16214:	de051de3          	bnez	a0,1600e <__gdtoa+0x336>
   16218:	542a                	lw	s0,168(sp)
   1621a:	590a                	lw	s2,160(sp)
   1621c:	49fa                	lw	s3,156(sp)
   1621e:	4a6a                	lw	s4,152(sp)
   16220:	4c2a                	lw	s8,136(sp)
   16222:	4c9a                	lw	s9,132(sp)
   16224:	4d0a                	lw	s10,128(sp)
   16226:	5df6                	lw	s11,124(sp)
   16228:	4881                	li	a7,0
   1622a:	b76d                	j	161d4 <__gdtoa+0x4fc>
   1622c:	000ca823          	sw	zero,16(s9)
   16230:	b649                	j	15db2 <__gdtoa+0xda>
   16232:	4785                	li	a5,1
   16234:	cabe                	sw	a5,84(sp)
   16236:	cc02                	sw	zero,24(sp)
   16238:	1a0ec163          	bltz	t4,163da <__gdtoa+0x702>
   1623c:	c40859e3          	bgez	a6,15e8e <__gdtoa+0x1b6>
   16240:	47e2                	lw	a5,24(sp)
   16242:	da42                	sw	a6,52(sp)
   16244:	410787b3          	sub	a5,a5,a6
   16248:	cc3e                	sw	a5,24(sp)
   1624a:	410007b3          	neg	a5,a6
   1624e:	d83e                	sw	a5,48(sp)
   16250:	4801                	li	a6,0
   16252:	b189                	j	15e94 <__gdtoa+0x1bc>
   16254:	85aa                	mv	a1,a0
   16256:	8566                	mv	a0,s9
   16258:	45f000ef          	jal	16eb6 <__rshift_D2A>
   1625c:	5636                	lw	a2,108(sp)
   1625e:	47c2                	lw	a5,16(sp)
   16260:	40cd8db3          	sub	s11,s11,a2
   16264:	00f60c33          	add	s8,a2,a5
   16268:	bea1                	j	15dc0 <__gdtoa+0xe8>
   1626a:	3fd88893          	addi	a7,a7,1021
   1626e:	7f88b793          	sltiu	a5,a7,2040
   16272:	ccbe                	sw	a5,88(sp)
   16274:	4901                	li	s2,0
   16276:	ed01b707          	fld	fa4,-304(gp) # 1dc18 <__SDATA_BEGIN__+0x28>
   1627a:	d20d07d3          	fcvt.d.w	fa5,s10
   1627e:	4785                	li	a5,1
   16280:	c8be                	sw	a5,80(sp)
   16282:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   16286:	57fd                	li	a5,-1
   16288:	d402                	sw	zero,40(sp)
   1628a:	cebe                	sw	a5,92(sp)
   1628c:	d63e                	sw	a5,44(sp)
   1628e:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   16292:	058d                	addi	a1,a1,3
   16294:	862e                	mv	a2,a1
   16296:	b181                	j	15ed6 <__gdtoa+0x1fe>
   16298:	5782                	lw	a5,32(sp)
   1629a:	460d                	li	a2,3
   1629c:	40f607b3          	sub	a5,a2,a5
   162a0:	d03e                	sw	a5,32(sp)
   162a2:	57b2                	lw	a5,44(sp)
   162a4:	4639                	li	a2,14
   162a6:	c6f663e3          	bltu	a2,a5,15f0c <__gdtoa+0x234>
   162aa:	4766                	lw	a4,88(sp)
   162ac:	c60700e3          	beqz	a4,15f0c <__gdtoa+0x234>
   162b0:	5752                	lw	a4,52(sp)
   162b2:	5682                	lw	a3,32(sp)
   162b4:	00d76633          	or	a2,a4,a3
   162b8:	c4061ae3          	bnez	a2,15f0c <__gdtoa+0x234>
   162bc:	4756                	lw	a4,84(sp)
   162be:	d682                	sw	zero,108(sp)
   162c0:	d07a                	sw	t5,32(sp)
   162c2:	d27e                	sw	t6,36(sp)
   162c4:	cb11                	beqz	a4,162d8 <__gdtoa+0x600>
   162c6:	dc7a                	sw	t5,56(sp)
   162c8:	de7e                	sw	t6,60(sp)
   162ca:	ed81b787          	fld	fa5,-296(gp) # 1dc20 <__SDATA_BEGIN__+0x30>
   162ce:	3762                	fld	fa4,56(sp)
   162d0:	a2f71653          	flt.d	a2,fa4,fa5
   162d4:	7a061163          	bnez	a2,16a76 <__gdtoa+0xd9e>
   162d8:	ef81b707          	fld	fa4,-264(gp) # 1dc40 <__SDATA_BEGIN__+0x50>
   162dc:	ef01b787          	fld	fa5,-272(gp) # 1dc38 <__SDATA_BEGIN__+0x48>
   162e0:	3682                	fld	fa3,32(sp)
   162e2:	57b2                	lw	a5,44(sp)
   162e4:	fcc00637          	lui	a2,0xfcc00
   162e8:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   162ec:	bc3e                	fsd	fa5,56(sp)
   162ee:	5562                	lw	a0,56(sp)
   162f0:	55f2                	lw	a1,60(sp)
   162f2:	832a                	mv	t1,a0
   162f4:	962e                	add	a2,a2,a1
   162f6:	5c078063          	beqz	a5,168b6 <__gdtoa+0xbde>
   162fa:	3782                	fld	fa5,32(sp)
   162fc:	5532                	lw	a0,44(sp)
   162fe:	4381                	li	t2,0
   16300:	bc3e                	fsd	fa5,56(sp)
   16302:	65f1                	lui	a1,0x1c
   16304:	fff50793          	addi	a5,a0,-1
   16308:	078e                	slli	a5,a5,0x3
   1630a:	0e058293          	addi	t0,a1,224 # 1c0e0 <__mprec_tens>
   1630e:	005786b3          	add	a3,a5,t0
   16312:	229c                	fld	fa5,0(a3)
   16314:	46c6                	lw	a3,80(sp)
   16316:	871a                	mv	a4,t1
   16318:	87b2                	mv	a5,a2
   1631a:	6c068163          	beqz	a3,169dc <__gdtoa+0xd04>
   1631e:	3762                	fld	fa4,56(sp)
   16320:	36e2                	fld	fa3,56(sp)
   16322:	c2071353          	fcvt.w.d	t1,fa4,rtz
   16326:	f081b707          	fld	fa4,-248(gp) # 1dc50 <__SDATA_BEGIN__+0x60>
   1632a:	dc3a                	sw	a4,56(sp)
   1632c:	de3e                	sw	a5,60(sp)
   1632e:	1af77753          	fdiv.d	fa4,fa4,fa5
   16332:	d20307d3          	fcvt.d.w	fa5,t1
   16336:	03030313          	addi	t1,t1,48
   1633a:	00688023          	sb	t1,0(a7)
   1633e:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   16342:	36e2                	fld	fa3,56(sp)
   16344:	00188613          	addi	a2,a7,1
   16348:	0ad77753          	fsub.d	fa4,fa4,fa3
   1634c:	a2e79353          	flt.d	t1,fa5,fa4
   16350:	7c031e63          	bnez	t1,16b2c <__gdtoa+0xe54>
   16354:	ed81b587          	fld	fa1,-296(gp) # 1dc20 <__SDATA_BEGIN__+0x30>
   16358:	ee01b607          	fld	fa2,-288(gp) # 1dc28 <__SDATA_BEGIN__+0x38>
   1635c:	a80d                	j	1638e <__gdtoa+0x6b6>
   1635e:	57b6                	lw	a5,108(sp)
   16360:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe206d>
   16362:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffda06d>
   16364:	d6be                	sw	a5,108(sp)
   16366:	7ea7d163          	bge	a5,a0,16b48 <__gdtoa+0xe70>
   1636a:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   1636e:	12c77753          	fmul.d	fa4,fa4,fa2
   16372:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   16376:	d20786d3          	fcvt.d.w	fa3,a5
   1637a:	03078793          	addi	a5,a5,48
   1637e:	fef60fa3          	sb	a5,-1(a2)
   16382:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   16386:	a2e797d3          	flt.d	a5,fa5,fa4
   1638a:	7a079163          	bnez	a5,16b2c <__gdtoa+0xe54>
   1638e:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   16392:	a2e697d3          	flt.d	a5,fa3,fa4
   16396:	d7e1                	beqz	a5,1635e <__gdtoa+0x686>
   16398:	fff64683          	lbu	a3,-1(a2)
   1639c:	00138513          	addi	a0,t2,1
   163a0:	03900593          	li	a1,57
   163a4:	a031                	j	163b0 <__gdtoa+0x6d8>
   163a6:	62f88763          	beq	a7,a5,169d4 <__gdtoa+0xcfc>
   163aa:	fff7c683          	lbu	a3,-1(a5)
   163ae:	863e                	mv	a2,a5
   163b0:	fff60793          	addi	a5,a2,-1
   163b4:	feb689e3          	beq	a3,a1,163a6 <__gdtoa+0x6ce>
   163b8:	0685                	addi	a3,a3,1
   163ba:	0ff6f693          	zext.b	a3,a3
   163be:	00d78023          	sb	a3,0(a5)
   163c2:	892a                	mv	s2,a0
   163c4:	02000b13          	li	s6,32
   163c8:	a0e5                	j	164b0 <__gdtoa+0x7d8>
   163ca:	542a                	lw	s0,168(sp)
   163cc:	590a                	lw	s2,160(sp)
   163ce:	49fa                	lw	s3,156(sp)
   163d0:	4a6a                	lw	s4,152(sp)
   163d2:	4c9a                	lw	s9,132(sp)
   163d4:	4d0a                	lw	s10,128(sp)
   163d6:	4881                	li	a7,0
   163d8:	bbf5                	j	161d4 <__gdtoa+0x4fc>
   163da:	4605                	li	a2,1
   163dc:	40a607b3          	sub	a5,a2,a0
   163e0:	cc3e                	sw	a5,24(sp)
   163e2:	4e81                	li	t4,0
   163e4:	e4084ee3          	bltz	a6,16240 <__gdtoa+0x568>
   163e8:	b45d                	j	15e8e <__gdtoa+0x1b6>
   163ea:	47e2                	lw	a5,24(sp)
   163ec:	5d42                	lw	s10,48(sp)
   163ee:	4c01                	li	s8,0
   163f0:	dc3e                	sw	a5,56(sp)
   163f2:	b671                	j	15f7e <__gdtoa+0x2a6>
   163f4:	4789                	li	a5,2
   163f6:	d03e                	sw	a5,32(sp)
   163f8:	b631                	j	15f04 <__gdtoa+0x22c>
   163fa:	187d                	addi	a6,a6,-1
   163fc:	ca82                	sw	zero,84(sp)
   163fe:	bd25                	j	16236 <__gdtoa+0x55e>
   16400:	1971                	addi	s2,s2,-4
   16402:	4591                	li	a1,4
   16404:	10b90263          	beq	s2,a1,16508 <__gdtoa+0x830>
   16408:	42c90263          	beq	s2,a2,1682c <__gdtoa+0xb54>
   1640c:	4609                	li	a2,2
   1640e:	cc82                	sw	zero,88(sp)
   16410:	c882                	sw	zero,80(sp)
   16412:	0ec90e63          	beq	s2,a2,1650e <__gdtoa+0x836>
   16416:	490d                	li	s2,3
   16418:	b46d                	j	15ec2 <__gdtoa+0x1ea>
   1641a:	66f1                	lui	a3,0x1c
   1641c:	078e                	slli	a5,a5,0x3
   1641e:	0e068693          	addi	a3,a3,224 # 1c0e0 <__mprec_tens>
   16422:	97b6                	add	a5,a5,a3
   16424:	2398                	fld	fa4,0(a5)
   16426:	57a2                	lw	a5,40(sp)
   16428:	3207c263          	bltz	a5,1674c <__gdtoa+0xa74>
   1642c:	c87a                	sw	t5,16(sp)
   1642e:	ca7e                	sw	t6,20(sp)
   16430:	27c2                	fld	fa5,16(sp)
   16432:	4785                	li	a5,1
   16434:	d6be                	sw	a5,108(sp)
   16436:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   1643a:	57d2                	lw	a5,52(sp)
   1643c:	26c2                	fld	fa3,16(sp)
   1643e:	00188613          	addi	a2,a7,1
   16442:	00178513          	addi	a0,a5,1
   16446:	892a                	mv	s2,a0
   16448:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1644c:	d20787d3          	fcvt.d.w	fa5,a5
   16450:	03078693          	addi	a3,a5,48
   16454:	00d88023          	sb	a3,0(a7)
   16458:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   1645c:	d20006d3          	fcvt.d.w	fa3,zero
   16460:	a2d7a6d3          	feq.d	a3,fa5,fa3
   16464:	e6b1                	bnez	a3,164b0 <__gdtoa+0x7d8>
   16466:	ee01b587          	fld	fa1,-288(gp) # 1dc28 <__SDATA_BEGIN__+0x38>
   1646a:	22d68653          	fmv.d	fa2,fa3
   1646e:	55b2                	lw	a1,44(sp)
   16470:	a025                	j	16498 <__gdtoa+0x7c0>
   16472:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   16476:	d6b6                	sw	a3,108(sp)
   16478:	0605                	addi	a2,a2,1
   1647a:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   1647e:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   16482:	d20786d3          	fcvt.d.w	fa3,a5
   16486:	03078713          	addi	a4,a5,48
   1648a:	fee60fa3          	sb	a4,-1(a2)
   1648e:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   16492:	a2c7a753          	feq.d	a4,fa5,fa2
   16496:	ef09                	bnez	a4,164b0 <__gdtoa+0x7d8>
   16498:	5736                	lw	a4,108(sp)
   1649a:	00170693          	addi	a3,a4,1
   1649e:	fcb71ae3          	bne	a4,a1,16472 <__gdtoa+0x79a>
   164a2:	5702                	lw	a4,32(sp)
   164a4:	4e070e63          	beqz	a4,169a0 <__gdtoa+0xcc8>
   164a8:	4785                	li	a5,1
   164aa:	4b41                	li	s6,16
   164ac:	60f70263          	beq	a4,a5,16ab0 <__gdtoa+0xdd8>
   164b0:	85e6                	mv	a1,s9
   164b2:	8522                	mv	a0,s0
   164b4:	d446                	sw	a7,40(sp)
   164b6:	c832                	sw	a2,16(sp)
   164b8:	349000ef          	jal	17000 <_Bfree>
   164bc:	4642                	lw	a2,16(sp)
   164be:	47b2                	lw	a5,12(sp)
   164c0:	58a2                	lw	a7,40(sp)
   164c2:	00060023          	sb	zero,0(a2)
   164c6:	0124a023          	sw	s2,0(s1)
   164ca:	c391                	beqz	a5,164ce <__gdtoa+0x7f6>
   164cc:	c390                	sw	a2,0(a5)
   164ce:	000ba783          	lw	a5,0(s7)
   164d2:	542a                	lw	s0,168(sp)
   164d4:	590a                	lw	s2,160(sp)
   164d6:	0167e7b3          	or	a5,a5,s6
   164da:	49fa                	lw	s3,156(sp)
   164dc:	4a6a                	lw	s4,152(sp)
   164de:	4c2a                	lw	s8,136(sp)
   164e0:	4c9a                	lw	s9,132(sp)
   164e2:	4d0a                	lw	s10,128(sp)
   164e4:	5df6                	lw	s11,124(sp)
   164e6:	00fba023          	sw	a5,0(s7)
   164ea:	b1ed                	j	161d4 <__gdtoa+0x4fc>
   164ec:	b0dd90e3          	bne	s11,a3,15fec <__gdtoa+0x314>
   164f0:	004a2783          	lw	a5,4(s4)
   164f4:	4742                	lw	a4,16(sp)
   164f6:	0785                	addi	a5,a5,1
   164f8:	aee7dae3          	bge	a5,a4,15fec <__gdtoa+0x314>
   164fc:	47e2                	lw	a5,24(sp)
   164fe:	0e85                	addi	t4,t4,1
   16500:	4805                	li	a6,1
   16502:	0785                	addi	a5,a5,1
   16504:	cc3e                	sw	a5,24(sp)
   16506:	b4dd                	j	15fec <__gdtoa+0x314>
   16508:	4785                	li	a5,1
   1650a:	cc82                	sw	zero,88(sp)
   1650c:	c8be                	sw	a5,80(sp)
   1650e:	55a2                	lw	a1,40(sp)
   16510:	00b04363          	bgtz	a1,16516 <__gdtoa+0x83e>
   16514:	4585                	li	a1,1
   16516:	862e                	mv	a2,a1
   16518:	ceae                	sw	a1,92(sp)
   1651a:	d62e                	sw	a1,44(sp)
   1651c:	d42e                	sw	a1,40(sp)
   1651e:	ba65                	j	15ed6 <__gdtoa+0x1fe>
   16520:	2f3000ef          	jal	17012 <__multadd>
   16524:	8c2a                	mv	s8,a0
   16526:	ce0509e3          	beqz	a0,16218 <__gdtoa+0x540>
   1652a:	8a2a                	mv	s4,a0
   1652c:	beb5                	j	160a8 <__gdtoa+0x3d0>
   1652e:	b20adae3          	bgez	s5,16062 <__gdtoa+0x38a>
   16532:	5782                	lw	a5,32(sp)
   16534:	835e                	mv	t1,s7
   16536:	58a2                	lw	a7,40(sp)
   16538:	4be2                	lw	s7,24(sp)
   1653a:	54b2                	lw	s1,44(sp)
   1653c:	8b3a                	mv	s6,a4
   1653e:	6c079463          	bnez	a5,16c06 <__gdtoa+0xf2e>
   16542:	010ca603          	lw	a2,16(s9)
   16546:	4685                	li	a3,1
   16548:	4b41                	li	s6,16
   1654a:	001d8913          	addi	s2,s11,1
   1654e:	68c6d463          	bge	a3,a2,16bd6 <__gdtoa+0xefe>
   16552:	89e2                	mv	s3,s8
   16554:	864a                	mv	a2,s2
   16556:	006d8023          	sb	t1,0(s11)
   1655a:	8c52                	mv	s8,s4
   1655c:	85ea                	mv	a1,s10
   1655e:	8522                	mv	a0,s0
   16560:	d446                	sw	a7,40(sp)
   16562:	c832                	sw	a2,16(sp)
   16564:	29d000ef          	jal	17000 <_Bfree>
   16568:	57d2                	lw	a5,52(sp)
   1656a:	4642                	lw	a2,16(sp)
   1656c:	58a2                	lw	a7,40(sp)
   1656e:	00178913          	addi	s2,a5,1
   16572:	f20c0fe3          	beqz	s8,164b0 <__gdtoa+0x7d8>
   16576:	00098a63          	beqz	s3,1658a <__gdtoa+0x8b2>
   1657a:	01898863          	beq	s3,s8,1658a <__gdtoa+0x8b2>
   1657e:	85ce                	mv	a1,s3
   16580:	8522                	mv	a0,s0
   16582:	27f000ef          	jal	17000 <_Bfree>
   16586:	58a2                	lw	a7,40(sp)
   16588:	4642                	lw	a2,16(sp)
   1658a:	85e2                	mv	a1,s8
   1658c:	8522                	mv	a0,s0
   1658e:	d446                	sw	a7,40(sp)
   16590:	c832                	sw	a2,16(sp)
   16592:	26f000ef          	jal	17000 <_Bfree>
   16596:	58a2                	lw	a7,40(sp)
   16598:	4642                	lw	a2,16(sp)
   1659a:	bf19                	j	164b0 <__gdtoa+0x7d8>
   1659c:	85e6                	mv	a1,s9
   1659e:	8522                	mv	a0,s0
   165a0:	d846                	sw	a7,48(sp)
   165a2:	cc76                	sw	t4,24(sp)
   165a4:	c842                	sw	a6,16(sp)
   165a6:	7c9000ef          	jal	1756e <__lshift>
   165aa:	8caa                	mv	s9,a0
   165ac:	c60506e3          	beqz	a0,16218 <__gdtoa+0x540>
   165b0:	57b6                	lw	a5,108(sp)
   165b2:	58c2                	lw	a7,48(sp)
   165b4:	4ee2                	lw	t4,24(sp)
   165b6:	4842                	lw	a6,16(sp)
   165b8:	b4b9                	j	16006 <__gdtoa+0x32e>
   165ba:	85ea                	mv	a1,s10
   165bc:	8566                	mv	a0,s9
   165be:	cc46                	sw	a7,24(sp)
   165c0:	c842                	sw	a6,16(sp)
   165c2:	0ba010ef          	jal	1767c <__mcmp>
   165c6:	4842                	lw	a6,16(sp)
   165c8:	48e2                	lw	a7,24(sp)
   165ca:	a40555e3          	bgez	a0,16014 <__gdtoa+0x33c>
   165ce:	57d2                	lw	a5,52(sp)
   165d0:	85e6                	mv	a1,s9
   165d2:	4681                	li	a3,0
   165d4:	17fd                	addi	a5,a5,-1
   165d6:	4629                	li	a2,10
   165d8:	8522                	mv	a0,s0
   165da:	da3e                	sw	a5,52(sp)
   165dc:	237000ef          	jal	17012 <__multadd>
   165e0:	8caa                	mv	s9,a0
   165e2:	c2050be3          	beqz	a0,16218 <__gdtoa+0x540>
   165e6:	47c6                	lw	a5,80(sp)
   165e8:	48e2                	lw	a7,24(sp)
   165ea:	50079a63          	bnez	a5,16afe <__gdtoa+0xe26>
   165ee:	47f6                	lw	a5,92(sp)
   165f0:	14f05863          	blez	a5,16740 <__gdtoa+0xa68>
   165f4:	d63e                	sw	a5,44(sp)
   165f6:	5932                	lw	s2,44(sp)
   165f8:	8dc6                	mv	s11,a7
   165fa:	4685                	li	a3,1
   165fc:	89c6                	mv	s3,a7
   165fe:	a801                	j	1660e <__gdtoa+0x936>
   16600:	213000ef          	jal	17012 <__multadd>
   16604:	8caa                	mv	s9,a0
   16606:	c00509e3          	beqz	a0,16218 <__gdtoa+0x540>
   1660a:	56b6                	lw	a3,108(sp)
   1660c:	0685                	addi	a3,a3,1
   1660e:	85ea                	mv	a1,s10
   16610:	8566                	mv	a0,s9
   16612:	d6b6                	sw	a3,108(sp)
   16614:	27b1                	jal	16d60 <__quorem_D2A>
   16616:	03050313          	addi	t1,a0,48
   1661a:	006d8023          	sb	t1,0(s11)
   1661e:	57b6                	lw	a5,108(sp)
   16620:	4681                	li	a3,0
   16622:	4629                	li	a2,10
   16624:	85e6                	mv	a1,s9
   16626:	8522                	mv	a0,s0
   16628:	0d85                	addi	s11,s11,1
   1662a:	fd27cbe3          	blt	a5,s2,16600 <__gdtoa+0x928>
   1662e:	88ce                	mv	a7,s3
   16630:	4981                	li	s3,0
   16632:	5782                	lw	a5,32(sp)
   16634:	2c078263          	beqz	a5,168f8 <__gdtoa+0xc20>
   16638:	4689                	li	a3,2
   1663a:	010ca603          	lw	a2,16(s9)
   1663e:	2ed78363          	beq	a5,a3,16924 <__gdtoa+0xc4c>
   16642:	4685                	li	a3,1
   16644:	1ac6c763          	blt	a3,a2,167f2 <__gdtoa+0xb1a>
   16648:	014ca683          	lw	a3,20(s9)
   1664c:	1a069363          	bnez	a3,167f2 <__gdtoa+0xb1a>
   16650:	00d036b3          	snez	a3,a3
   16654:	00469b13          	slli	s6,a3,0x4
   16658:	03000593          	li	a1,48
   1665c:	fffdc783          	lbu	a5,-1(s11)
   16660:	866e                	mv	a2,s11
   16662:	1dfd                	addi	s11,s11,-1
   16664:	feb78ce3          	beq	a5,a1,1665c <__gdtoa+0x984>
   16668:	bdd5                	j	1655c <__gdtoa+0x884>
   1666a:	57b2                	lw	a5,44(sp)
   1666c:	5742                	lw	a4,48(sp)
   1666e:	fff78693          	addi	a3,a5,-1
   16672:	10d74463          	blt	a4,a3,1677a <__gdtoa+0xaa2>
   16676:	40d70d33          	sub	s10,a4,a3
   1667a:	4407d263          	bgez	a5,16abe <__gdtoa+0xde6>
   1667e:	47e2                	lw	a5,24(sp)
   16680:	5732                	lw	a4,44(sp)
   16682:	d682                	sw	zero,108(sp)
   16684:	8f99                	sub	a5,a5,a4
   16686:	dc3e                	sw	a5,56(sp)
   16688:	b8f1                	j	15f64 <__gdtoa+0x28c>
   1668a:	4789                	li	a5,2
   1668c:	9927d7e3          	bge	a5,s2,1601a <__gdtoa+0x342>
   16690:	85ea                	mv	a1,s10
   16692:	4681                	li	a3,0
   16694:	4615                	li	a2,5
   16696:	8522                	mv	a0,s0
   16698:	c846                	sw	a7,16(sp)
   1669a:	179000ef          	jal	17012 <__multadd>
   1669e:	85aa                	mv	a1,a0
   166a0:	b6050ce3          	beqz	a0,16218 <__gdtoa+0x540>
   166a4:	57b2                	lw	a5,44(sp)
   166a6:	48c2                	lw	a7,16(sp)
   166a8:	e3f9                	bnez	a5,1676e <__gdtoa+0xa96>
   166aa:	c82a                	sw	a0,16(sp)
   166ac:	8566                	mv	a0,s9
   166ae:	cc46                	sw	a7,24(sp)
   166b0:	7cd000ef          	jal	1767c <__mcmp>
   166b4:	45c2                	lw	a1,16(sp)
   166b6:	48e2                	lw	a7,24(sp)
   166b8:	0aa05b63          	blez	a0,1676e <__gdtoa+0xa96>
   166bc:	57d2                	lw	a5,52(sp)
   166be:	00278913          	addi	s2,a5,2
   166c2:	03100793          	li	a5,49
   166c6:	00188613          	addi	a2,a7,1
   166ca:	00f88023          	sb	a5,0(a7)
   166ce:	02000b13          	li	s6,32
   166d2:	8522                	mv	a0,s0
   166d4:	d446                	sw	a7,40(sp)
   166d6:	c832                	sw	a2,16(sp)
   166d8:	129000ef          	jal	17000 <_Bfree>
   166dc:	4642                	lw	a2,16(sp)
   166de:	58a2                	lw	a7,40(sp)
   166e0:	dc0c08e3          	beqz	s8,164b0 <__gdtoa+0x7d8>
   166e4:	b55d                	j	1658a <__gdtoa+0x8b2>
   166e6:	4605                	li	a2,1
   166e8:	4585                	li	a1,1
   166ea:	fecff06f          	j	15ed6 <__gdtoa+0x1fe>
   166ee:	85aa                	mv	a1,a0
   166f0:	8642                	mv	a2,a6
   166f2:	8522                	mv	a0,s0
   166f4:	c0c6                	sw	a7,64(sp)
   166f6:	d876                	sw	t4,48(sp)
   166f8:	5a3000ef          	jal	1749a <__pow5mult>
   166fc:	8d2a                	mv	s10,a0
   166fe:	b0050de3          	beqz	a0,16218 <__gdtoa+0x540>
   16702:	4685                	li	a3,1
   16704:	5ec2                	lw	t4,48(sp)
   16706:	4886                	lw	a7,64(sp)
   16708:	1526d063          	bge	a3,s2,16848 <__gdtoa+0xb70>
   1670c:	010d2783          	lw	a5,16(s10)
   16710:	d846                	sw	a7,48(sp)
   16712:	c876                	sw	t4,16(sp)
   16714:	078d                	addi	a5,a5,3
   16716:	078a                	slli	a5,a5,0x2
   16718:	97ea                	add	a5,a5,s10
   1671a:	43c8                	lw	a0,4(a5)
   1671c:	2a3000ef          	jal	171be <__hi0bits>
   16720:	58c2                	lw	a7,48(sp)
   16722:	4ec2                	lw	t4,16(sp)
   16724:	8a2a                	mv	s4,a0
   16726:	885a                	mv	a6,s6
   16728:	b0d9                	j	15fee <__gdtoa+0x316>
   1672a:	4685                	li	a3,1
   1672c:	f326cfe3          	blt	a3,s2,1666a <__gdtoa+0x992>
   16730:	47e2                	lw	a5,24(sp)
   16732:	5d42                	lw	s10,48(sp)
   16734:	9eae                	add	t4,t4,a1
   16736:	dc3e                	sw	a5,56(sp)
   16738:	97ae                	add	a5,a5,a1
   1673a:	cc3e                	sw	a5,24(sp)
   1673c:	829ff06f          	j	15f64 <__gdtoa+0x28c>
   16740:	4789                	li	a5,2
   16742:	4727ce63          	blt	a5,s2,16bbe <__gdtoa+0xee6>
   16746:	47f6                	lw	a5,92(sp)
   16748:	d63e                	sw	a5,44(sp)
   1674a:	b575                	j	165f6 <__gdtoa+0x91e>
   1674c:	57b2                	lw	a5,44(sp)
   1674e:	ccf04fe3          	bgtz	a5,1642c <__gdtoa+0x754>
   16752:	ef81                	bnez	a5,1676a <__gdtoa+0xa92>
   16754:	f001b787          	fld	fa5,-256(gp) # 1dc48 <__SDATA_BEGIN__+0x58>
   16758:	c87a                	sw	t5,16(sp)
   1675a:	ca7e                	sw	t6,20(sp)
   1675c:	12f77753          	fmul.d	fa4,fa4,fa5
   16760:	27c2                	fld	fa5,16(sp)
   16762:	a2e787d3          	fle.d	a5,fa5,fa4
   16766:	38078663          	beqz	a5,16af2 <__gdtoa+0xe1a>
   1676a:	4581                	li	a1,0
   1676c:	4c01                	li	s8,0
   1676e:	57a2                	lw	a5,40(sp)
   16770:	8646                	mv	a2,a7
   16772:	4b41                	li	s6,16
   16774:	40f00933          	neg	s2,a5
   16778:	bfa9                	j	166d2 <__gdtoa+0x9fa>
   1677a:	57c2                	lw	a5,48(sp)
   1677c:	4762                	lw	a4,24(sp)
   1677e:	4d01                	li	s10,0
   16780:	40f68633          	sub	a2,a3,a5
   16784:	57b2                	lw	a5,44(sp)
   16786:	dc3a                	sw	a4,56(sp)
   16788:	9832                	add	a6,a6,a2
   1678a:	d6be                	sw	a5,108(sp)
   1678c:	9ebe                	add	t4,t4,a5
   1678e:	97ba                	add	a5,a5,a4
   16790:	cc3e                	sw	a5,24(sp)
   16792:	d836                	sw	a3,48(sp)
   16794:	fd0ff06f          	j	15f64 <__gdtoa+0x28c>
   16798:	85e2                	mv	a1,s8
   1679a:	866a                	mv	a2,s10
   1679c:	8522                	mv	a0,s0
   1679e:	ccc6                	sw	a7,88(sp)
   167a0:	c4f6                	sw	t4,72(sp)
   167a2:	c0c2                	sw	a6,64(sp)
   167a4:	4f7000ef          	jal	1749a <__pow5mult>
   167a8:	8c2a                	mv	s8,a0
   167aa:	a60507e3          	beqz	a0,16218 <__gdtoa+0x540>
   167ae:	85aa                	mv	a1,a0
   167b0:	8666                	mv	a2,s9
   167b2:	8522                	mv	a0,s0
   167b4:	351000ef          	jal	17304 <__multiply>
   167b8:	8aaa                	mv	s5,a0
   167ba:	a4050fe3          	beqz	a0,16218 <__gdtoa+0x540>
   167be:	85e6                	mv	a1,s9
   167c0:	8522                	mv	a0,s0
   167c2:	03f000ef          	jal	17000 <_Bfree>
   167c6:	57c2                	lw	a5,48(sp)
   167c8:	4806                	lw	a6,64(sp)
   167ca:	4ea6                	lw	t4,72(sp)
   167cc:	41a787b3          	sub	a5,a5,s10
   167d0:	d83e                	sw	a5,48(sp)
   167d2:	48e6                	lw	a7,88(sp)
   167d4:	8cd6                	mv	s9,s5
   167d6:	fe078963          	beqz	a5,15fc8 <__gdtoa+0x2f0>
   167da:	fd2ff06f          	j	15fac <__gdtoa+0x2d4>
   167de:	89e2                	mv	s3,s8
   167e0:	86ee                	mv	a3,s11
   167e2:	001d8913          	addi	s2,s11,1
   167e6:	8c52                	mv	s8,s4
   167e8:	03900613          	li	a2,57
   167ec:	8dca                	mv	s11,s2
   167ee:	00c68023          	sb	a2,0(a3)
   167f2:	03900593          	li	a1,57
   167f6:	a019                	j	167fc <__gdtoa+0xb24>
   167f8:	13b88f63          	beq	a7,s11,16936 <__gdtoa+0xc5e>
   167fc:	fffdc683          	lbu	a3,-1(s11)
   16800:	866e                	mv	a2,s11
   16802:	1dfd                	addi	s11,s11,-1
   16804:	feb68ae3          	beq	a3,a1,167f8 <__gdtoa+0xb20>
   16808:	0685                	addi	a3,a3,1
   1680a:	00dd8023          	sb	a3,0(s11)
   1680e:	02000b13          	li	s6,32
   16812:	b3a9                	j	1655c <__gdtoa+0x884>
   16814:	85e2                	mv	a1,s8
   16816:	8522                	mv	a0,s0
   16818:	d446                	sw	a7,40(sp)
   1681a:	c842                	sw	a6,16(sp)
   1681c:	553000ef          	jal	1756e <__lshift>
   16820:	4842                	lw	a6,16(sp)
   16822:	58a2                	lw	a7,40(sp)
   16824:	8c2a                	mv	s8,a0
   16826:	800512e3          	bnez	a0,1602a <__gdtoa+0x352>
   1682a:	b2fd                	j	16218 <__gdtoa+0x540>
   1682c:	4785                	li	a5,1
   1682e:	cc82                	sw	zero,88(sp)
   16830:	c8be                	sw	a5,80(sp)
   16832:	e90ff06f          	j	15ec2 <__gdtoa+0x1ea>
   16836:	4785                	li	a5,1
   16838:	c8be                	sw	a5,80(sp)
   1683a:	e88ff06f          	j	15ec2 <__gdtoa+0x1ea>
   1683e:	4785                	li	a5,1
   16840:	c8be                	sw	a5,80(sp)
   16842:	b1f1                	j	1650e <__gdtoa+0x836>
   16844:	c882                	sw	zero,80(sp)
   16846:	b1e1                	j	1650e <__gdtoa+0x836>
   16848:	ecdd92e3          	bne	s11,a3,1670c <__gdtoa+0xa34>
   1684c:	004a2783          	lw	a5,4(s4)
   16850:	4742                	lw	a4,16(sp)
   16852:	0785                	addi	a5,a5,1
   16854:	eae7dce3          	bge	a5,a4,1670c <__gdtoa+0xa34>
   16858:	47e2                	lw	a5,24(sp)
   1685a:	0e85                	addi	t4,t4,1
   1685c:	4b05                	li	s6,1
   1685e:	0785                	addi	a5,a5,1
   16860:	cc3e                	sw	a5,24(sp)
   16862:	b56d                	j	1670c <__gdtoa+0xa34>
   16864:	004c2583          	lw	a1,4(s8)
   16868:	8522                	mv	a0,s0
   1686a:	c846                	sw	a7,16(sp)
   1686c:	2725                	jal	16f94 <_Balloc>
   1686e:	8a2a                	mv	s4,a0
   16870:	9a0504e3          	beqz	a0,16218 <__gdtoa+0x540>
   16874:	010c2603          	lw	a2,16(s8)
   16878:	00cc0593          	addi	a1,s8,12
   1687c:	0531                	addi	a0,a0,12
   1687e:	0609                	addi	a2,a2,2
   16880:	060a                	slli	a2,a2,0x2
   16882:	f7ffe0ef          	jal	15800 <memcpy>
   16886:	85d2                	mv	a1,s4
   16888:	4605                	li	a2,1
   1688a:	8522                	mv	a0,s0
   1688c:	4e3000ef          	jal	1756e <__lshift>
   16890:	48c2                	lw	a7,16(sp)
   16892:	8a2a                	mv	s4,a0
   16894:	f8051e63          	bnez	a0,16030 <__gdtoa+0x358>
   16898:	b241                	j	16218 <__gdtoa+0x540>
   1689a:	ef81b707          	fld	fa4,-264(gp) # 1dc40 <__SDATA_BEGIN__+0x50>
   1689e:	ef01b787          	fld	fa5,-272(gp) # 1dc38 <__SDATA_BEGIN__+0x48>
   168a2:	3682                	fld	fa3,32(sp)
   168a4:	fcc00637          	lui	a2,0xfcc00
   168a8:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   168ac:	bc3e                	fsd	fa5,56(sp)
   168ae:	5562                	lw	a0,56(sp)
   168b0:	55f2                	lw	a1,60(sp)
   168b2:	832a                	mv	t1,a0
   168b4:	962e                	add	a2,a2,a1
   168b6:	de32                	sw	a2,60(sp)
   168b8:	f001b707          	fld	fa4,-256(gp) # 1dc48 <__SDATA_BEGIN__+0x58>
   168bc:	3782                	fld	fa5,32(sp)
   168be:	dc1a                	sw	t1,56(sp)
   168c0:	0ae7f753          	fsub.d	fa4,fa5,fa4
   168c4:	37e2                	fld	fa5,56(sp)
   168c6:	a2e79653          	flt.d	a2,fa5,fa4
   168ca:	1e061663          	bnez	a2,16ab6 <__gdtoa+0xdde>
   168ce:	22f797d3          	fneg.d	fa5,fa5
   168d2:	a2f71653          	flt.d	a2,fa4,fa5
   168d6:	e8061ae3          	bnez	a2,1676a <__gdtoa+0xa92>
   168da:	5f02                	lw	t5,32(sp)
   168dc:	5f92                	lw	t6,36(sp)
   168de:	65f1                	lui	a1,0x1c
   168e0:	280c4b63          	bltz	s8,16b76 <__gdtoa+0xe9e>
   168e4:	57a2                	lw	a5,40(sp)
   168e6:	d002                	sw	zero,32(sp)
   168e8:	0e05b707          	fld	fa4,224(a1) # 1c0e0 <__mprec_tens>
   168ec:	b407d0e3          	bgez	a5,1642c <__gdtoa+0x754>
   168f0:	57b2                	lw	a5,44(sp)
   168f2:	b2079de3          	bnez	a5,1642c <__gdtoa+0x754>
   168f6:	bdb9                	j	16754 <__gdtoa+0xa7c>
   168f8:	85e6                	mv	a1,s9
   168fa:	4605                	li	a2,1
   168fc:	8522                	mv	a0,s0
   168fe:	c846                	sw	a7,16(sp)
   16900:	d41a                	sw	t1,40(sp)
   16902:	46d000ef          	jal	1756e <__lshift>
   16906:	8caa                	mv	s9,a0
   16908:	900508e3          	beqz	a0,16218 <__gdtoa+0x540>
   1690c:	85ea                	mv	a1,s10
   1690e:	56f000ef          	jal	1767c <__mcmp>
   16912:	48c2                	lw	a7,16(sp)
   16914:	eca04fe3          	bgtz	a0,167f2 <__gdtoa+0xb1a>
   16918:	e511                	bnez	a0,16924 <__gdtoa+0xc4c>
   1691a:	5322                	lw	t1,40(sp)
   1691c:	00137313          	andi	t1,t1,1
   16920:	ec0319e3          	bnez	t1,167f2 <__gdtoa+0xb1a>
   16924:	010ca603          	lw	a2,16(s9)
   16928:	4685                	li	a3,1
   1692a:	4b41                	li	s6,16
   1692c:	d2c6c6e3          	blt	a3,a2,16658 <__gdtoa+0x980>
   16930:	014ca683          	lw	a3,20(s9)
   16934:	bb31                	j	16650 <__gdtoa+0x978>
   16936:	57d2                	lw	a5,52(sp)
   16938:	02000b13          	li	s6,32
   1693c:	0785                	addi	a5,a5,1
   1693e:	da3e                	sw	a5,52(sp)
   16940:	03100793          	li	a5,49
   16944:	00f88023          	sb	a5,0(a7)
   16948:	b911                	j	1655c <__gdtoa+0x884>
   1694a:	5782                	lw	a5,32(sp)
   1694c:	8926                	mv	s2,s1
   1694e:	835e                	mv	t1,s7
   16950:	58a2                	lw	a7,40(sp)
   16952:	4be2                	lw	s7,24(sp)
   16954:	54b2                	lw	s1,44(sp)
   16956:	cb91                	beqz	a5,1696a <__gdtoa+0xc92>
   16958:	010ca603          	lw	a2,16(s9)
   1695c:	4685                	li	a3,1
   1695e:	fcc6c163          	blt	a3,a2,16120 <__gdtoa+0x448>
   16962:	014ca683          	lw	a3,20(s9)
   16966:	fa069d63          	bnez	a3,16120 <__gdtoa+0x448>
   1696a:	85e6                	mv	a1,s9
   1696c:	4605                	li	a2,1
   1696e:	8522                	mv	a0,s0
   16970:	d446                	sw	a7,40(sp)
   16972:	c81a                	sw	t1,16(sp)
   16974:	3fb000ef          	jal	1756e <__lshift>
   16978:	8caa                	mv	s9,a0
   1697a:	88050fe3          	beqz	a0,16218 <__gdtoa+0x540>
   1697e:	85ea                	mv	a1,s10
   16980:	4fd000ef          	jal	1767c <__mcmp>
   16984:	4342                	lw	t1,16(sp)
   16986:	58a2                	lw	a7,40(sp)
   16988:	22a05e63          	blez	a0,16bc4 <__gdtoa+0xeec>
   1698c:	03900693          	li	a3,57
   16990:	e4d307e3          	beq	t1,a3,167de <__gdtoa+0xb06>
   16994:	02000793          	li	a5,32
   16998:	03190313          	addi	t1,s2,49
   1699c:	d03e                	sw	a5,32(sp)
   1699e:	b655                	j	16542 <__gdtoa+0x86a>
   169a0:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   169a4:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe206b>
   169a8:	a2f715d3          	flt.d	a1,fa4,fa5
   169ac:	9e059ae3          	bnez	a1,163a0 <__gdtoa+0x6c8>
   169b0:	a2e7a5d3          	feq.d	a1,fa5,fa4
   169b4:	c581                	beqz	a1,169bc <__gdtoa+0xce4>
   169b6:	8b85                	andi	a5,a5,1
   169b8:	9e0794e3          	bnez	a5,163a0 <__gdtoa+0x6c8>
   169bc:	87b2                	mv	a5,a2
   169be:	4b41                	li	s6,16
   169c0:	03000593          	li	a1,48
   169c4:	fff7c703          	lbu	a4,-1(a5)
   169c8:	863e                	mv	a2,a5
   169ca:	17fd                	addi	a5,a5,-1
   169cc:	feb70ce3          	beq	a4,a1,169c4 <__gdtoa+0xcec>
   169d0:	892a                	mv	s2,a0
   169d2:	bcf9                	j	164b0 <__gdtoa+0x7d8>
   169d4:	03100693          	li	a3,49
   169d8:	0505                	addi	a0,a0,1
   169da:	b2d5                	j	163be <__gdtoa+0x6e6>
   169dc:	de32                	sw	a2,60(sp)
   169de:	dc1a                	sw	t1,56(sp)
   169e0:	3762                	fld	fa4,56(sp)
   169e2:	de7e                	sw	t6,60(sp)
   169e4:	dc7a                	sw	t5,56(sp)
   169e6:	35e2                	fld	fa1,56(sp)
   169e8:	12e7f653          	fmul.d	fa2,fa5,fa4
   169ec:	ee01b707          	fld	fa4,-288(gp) # 1dc28 <__SDATA_BEGIN__+0x38>
   169f0:	4685                	li	a3,1
   169f2:	22b587d3          	fmv.d	fa5,fa1
   169f6:	d6b6                	sw	a3,108(sp)
   169f8:	8646                	mv	a2,a7
   169fa:	4f81                	li	t6,0
   169fc:	a029                	j	16a06 <__gdtoa+0xd2e>
   169fe:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   16a02:	d6ba                	sw	a4,108(sp)
   16a04:	4f85                	li	t6,1
   16a06:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   16a0a:	0605                	addi	a2,a2,1
   16a0c:	03078693          	addi	a3,a5,48
   16a10:	0ff6f693          	zext.b	a3,a3
   16a14:	c791                	beqz	a5,16a20 <__gdtoa+0xd48>
   16a16:	d20786d3          	fcvt.d.w	fa3,a5
   16a1a:	4f85                	li	t6,1
   16a1c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   16a20:	fed60fa3          	sb	a3,-1(a2)
   16a24:	57b6                	lw	a5,108(sp)
   16a26:	00178713          	addi	a4,a5,1
   16a2a:	fca79ae3          	bne	a5,a0,169fe <__gdtoa+0xd26>
   16a2e:	000f8463          	beqz	t6,16a36 <__gdtoa+0xd5e>
   16a32:	22f785d3          	fmv.d	fa1,fa5
   16a36:	f081b787          	fld	fa5,-248(gp) # 1dc50 <__SDATA_BEGIN__+0x60>
   16a3a:	02f67753          	fadd.d	fa4,fa2,fa5
   16a3e:	a2b71553          	flt.d	a0,fa4,fa1
   16a42:	0e051f63          	bnez	a0,16b40 <__gdtoa+0xe68>
   16a46:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   16a4a:	a2f596d3          	flt.d	a3,fa1,fa5
   16a4e:	12069763          	bnez	a3,16b7c <__gdtoa+0xea4>
   16a52:	5f02                	lw	t5,32(sp)
   16a54:	5f92                	lw	t6,36(sp)
   16a56:	e80c57e3          	bgez	s8,168e4 <__gdtoa+0xc0c>
   16a5a:	47e2                	lw	a5,24(sp)
   16a5c:	5d42                	lw	s10,48(sp)
   16a5e:	d002                	sw	zero,32(sp)
   16a60:	dc3e                	sw	a5,56(sp)
   16a62:	4c01                	li	s8,0
   16a64:	d1aff06f          	j	15f7e <__gdtoa+0x2a6>
   16a68:	835e                	mv	t1,s7
   16a6a:	89e2                	mv	s3,s8
   16a6c:	58a2                	lw	a7,40(sp)
   16a6e:	4be2                	lw	s7,24(sp)
   16a70:	54b2                	lw	s1,44(sp)
   16a72:	8c52                	mv	s8,s4
   16a74:	be7d                	j	16632 <__gdtoa+0x95a>
   16a76:	e20782e3          	beqz	a5,1689a <__gdtoa+0xbc2>
   16a7a:	4576                	lw	a0,92(sp)
   16a7c:	e4a05fe3          	blez	a0,168da <__gdtoa+0xc02>
   16a80:	ee01b787          	fld	fa5,-288(gp) # 1dc28 <__SDATA_BEGIN__+0x38>
   16a84:	53fd                	li	t2,-1
   16a86:	12f777d3          	fmul.d	fa5,fa4,fa5
   16a8a:	ee81b707          	fld	fa4,-280(gp) # 1dc30 <__SDATA_BEGIN__+0x40>
   16a8e:	bc3e                	fsd	fa5,56(sp)
   16a90:	36e2                	fld	fa3,56(sp)
   16a92:	ef01b787          	fld	fa5,-272(gp) # 1dc38 <__SDATA_BEGIN__+0x48>
   16a96:	fcc00637          	lui	a2,0xfcc00
   16a9a:	5f62                	lw	t5,56(sp)
   16a9c:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   16aa0:	5ff2                	lw	t6,60(sp)
   16aa2:	a0be                	fsd	fa5,64(sp)
   16aa4:	4706                	lw	a4,64(sp)
   16aa6:	4796                	lw	a5,68(sp)
   16aa8:	833a                	mv	t1,a4
   16aaa:	963e                	add	a2,a2,a5
   16aac:	857ff06f          	j	16302 <__gdtoa+0x62a>
   16ab0:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe206b>
   16ab4:	b0f5                	j	163a0 <__gdtoa+0x6c8>
   16ab6:	4909                	li	s2,2
   16ab8:	4581                	li	a1,0
   16aba:	4c01                	li	s8,0
   16abc:	b119                	j	166c2 <__gdtoa+0x9ea>
   16abe:	4762                	lw	a4,24(sp)
   16ac0:	d6be                	sw	a5,108(sp)
   16ac2:	9ebe                	add	t4,t4,a5
   16ac4:	97ba                	add	a5,a5,a4
   16ac6:	dc3a                	sw	a4,56(sp)
   16ac8:	cc3e                	sw	a5,24(sp)
   16aca:	c9aff06f          	j	15f64 <__gdtoa+0x28c>
   16ace:	835e                	mv	t1,s7
   16ad0:	03900693          	li	a3,57
   16ad4:	58a2                	lw	a7,40(sp)
   16ad6:	4be2                	lw	s7,24(sp)
   16ad8:	54b2                	lw	s1,44(sp)
   16ada:	d0d302e3          	beq	t1,a3,167de <__gdtoa+0xb06>
   16ade:	0305                	addi	t1,t1,1
   16ae0:	89e2                	mv	s3,s8
   16ae2:	001d8613          	addi	a2,s11,1
   16ae6:	006d8023          	sb	t1,0(s11)
   16aea:	8c52                	mv	s8,s4
   16aec:	02000b13          	li	s6,32
   16af0:	b4b5                	j	1655c <__gdtoa+0x884>
   16af2:	57d2                	lw	a5,52(sp)
   16af4:	4581                	li	a1,0
   16af6:	4c01                	li	s8,0
   16af8:	00278913          	addi	s2,a5,2
   16afc:	b6d9                	j	166c2 <__gdtoa+0x9ea>
   16afe:	85e2                	mv	a1,s8
   16b00:	4681                	li	a3,0
   16b02:	4629                	li	a2,10
   16b04:	8522                	mv	a0,s0
   16b06:	2331                	jal	17012 <__multadd>
   16b08:	8c2a                	mv	s8,a0
   16b0a:	f0050763          	beqz	a0,16218 <__gdtoa+0x540>
   16b0e:	47f6                	lw	a5,92(sp)
   16b10:	4842                	lw	a6,16(sp)
   16b12:	48e2                	lw	a7,24(sp)
   16b14:	00f05563          	blez	a5,16b1e <__gdtoa+0xe46>
   16b18:	d63e                	sw	a5,44(sp)
   16b1a:	d06ff06f          	j	16020 <__gdtoa+0x348>
   16b1e:	4789                	li	a5,2
   16b20:	0927cf63          	blt	a5,s2,16bbe <__gdtoa+0xee6>
   16b24:	47f6                	lw	a5,92(sp)
   16b26:	d63e                	sw	a5,44(sp)
   16b28:	cf8ff06f          	j	16020 <__gdtoa+0x348>
   16b2c:	d2000753          	fcvt.d.w	fa4,zero
   16b30:	00138913          	addi	s2,t2,1
   16b34:	a2e7ab53          	feq.d	s6,fa5,fa4
   16b38:	001b3b13          	seqz	s6,s6
   16b3c:	0b12                	slli	s6,s6,0x4
   16b3e:	ba8d                	j	164b0 <__gdtoa+0x7d8>
   16b40:	00138513          	addi	a0,t2,1
   16b44:	85dff06f          	j	163a0 <__gdtoa+0x6c8>
   16b48:	5f02                	lw	t5,32(sp)
   16b4a:	5f92                	lw	t6,36(sp)
   16b4c:	d80c5ce3          	bgez	s8,168e4 <__gdtoa+0xc0c>
   16b50:	d002                	sw	zero,32(sp)
   16b52:	bccff06f          	j	15f1e <__gdtoa+0x246>
   16b56:	57b2                	lw	a5,44(sp)
   16b58:	5742                	lw	a4,48(sp)
   16b5a:	fff78693          	addi	a3,a5,-1
   16b5e:	c0d74ee3          	blt	a4,a3,1677a <__gdtoa+0xaa2>
   16b62:	4662                	lw	a2,24(sp)
   16b64:	9ebe                	add	t4,t4,a5
   16b66:	d6be                	sw	a5,108(sp)
   16b68:	97b2                	add	a5,a5,a2
   16b6a:	dc32                	sw	a2,56(sp)
   16b6c:	40d70d33          	sub	s10,a4,a3
   16b70:	cc3e                	sw	a5,24(sp)
   16b72:	bf2ff06f          	j	15f64 <__gdtoa+0x28c>
   16b76:	d002                	sw	zero,32(sp)
   16b78:	ba0ff06f          	j	15f18 <__gdtoa+0x240>
   16b7c:	d20007d3          	fcvt.d.w	fa5,zero
   16b80:	87b2                	mv	a5,a2
   16b82:	00138513          	addi	a0,t2,1
   16b86:	a2f5ab53          	feq.d	s6,fa1,fa5
   16b8a:	001b3b13          	seqz	s6,s6
   16b8e:	0b12                	slli	s6,s6,0x4
   16b90:	bd05                	j	169c0 <__gdtoa+0xce8>
   16b92:	835e                	mv	t1,s7
   16b94:	03900693          	li	a3,57
   16b98:	8926                	mv	s2,s1
   16b9a:	58a2                	lw	a7,40(sp)
   16b9c:	4be2                	lw	s7,24(sp)
   16b9e:	54b2                	lw	s1,44(sp)
   16ba0:	c2d30fe3          	beq	t1,a3,167de <__gdtoa+0xb06>
   16ba4:	07505d63          	blez	s5,16c1e <__gdtoa+0xf46>
   16ba8:	03190313          	addi	t1,s2,49
   16bac:	02000b13          	li	s6,32
   16bb0:	89e2                	mv	s3,s8
   16bb2:	001d8613          	addi	a2,s11,1
   16bb6:	006d8023          	sb	t1,0(s11)
   16bba:	8c52                	mv	s8,s4
   16bbc:	b245                	j	1655c <__gdtoa+0x884>
   16bbe:	47f6                	lw	a5,92(sp)
   16bc0:	d63e                	sw	a5,44(sp)
   16bc2:	b4f9                	j	16690 <__gdtoa+0x9b8>
   16bc4:	e509                	bnez	a0,16bce <__gdtoa+0xef6>
   16bc6:	00137693          	andi	a3,t1,1
   16bca:	dc0691e3          	bnez	a3,1698c <__gdtoa+0xcb4>
   16bce:	02000793          	li	a5,32
   16bd2:	d03e                	sw	a5,32(sp)
   16bd4:	b2bd                	j	16542 <__gdtoa+0x86a>
   16bd6:	014ca683          	lw	a3,20(s9)
   16bda:	96069ce3          	bnez	a3,16552 <__gdtoa+0x87a>
   16bde:	5b02                	lw	s6,32(sp)
   16be0:	ba8d                	j	16552 <__gdtoa+0x87a>
   16be2:	03900693          	li	a3,57
   16be6:	88da                	mv	a7,s6
   16be8:	00da8b63          	beq	s5,a3,16bfe <__gdtoa+0xf26>
   16bec:	001a8313          	addi	t1,s5,1
   16bf0:	02000b13          	li	s6,32
   16bf4:	bab9                	j	16552 <__gdtoa+0x87a>
   16bf6:	4b41                	li	s6,16
   16bf8:	001d8913          	addi	s2,s11,1
   16bfc:	ba99                	j	16552 <__gdtoa+0x87a>
   16bfe:	89e2                	mv	s3,s8
   16c00:	86ee                	mv	a3,s11
   16c02:	8c52                	mv	s8,s4
   16c04:	b6d5                	j	167e8 <__gdtoa+0xb10>
   16c06:	010ca603          	lw	a2,16(s9)
   16c0a:	4685                	li	a3,1
   16c0c:	d0c6ca63          	blt	a3,a2,16120 <__gdtoa+0x448>
   16c10:	014ca683          	lw	a3,20(s9)
   16c14:	d0069663          	bnez	a3,16120 <__gdtoa+0x448>
   16c18:	001d8913          	addi	s2,s11,1
   16c1c:	ba1d                	j	16552 <__gdtoa+0x87a>
   16c1e:	010ca603          	lw	a2,16(s9)
   16c22:	4685                	li	a3,1
   16c24:	4b41                	li	s6,16
   16c26:	f8c6c5e3          	blt	a3,a2,16bb0 <__gdtoa+0xed8>
   16c2a:	014cab03          	lw	s6,20(s9)
   16c2e:	01603b33          	snez	s6,s6
   16c32:	0b12                	slli	s6,s6,0x4
   16c34:	bfb5                	j	16bb0 <__gdtoa+0xed8>
   16c36:	000ace63          	bltz	s5,16c52 <__gdtoa+0xf7a>
   16c3a:	01596ab3          	or	s5,s2,s5
   16c3e:	000a9663          	bnez	s5,16c4a <__gdtoa+0xf72>
   16c42:	0009a783          	lw	a5,0(s3)
   16c46:	8b85                	andi	a5,a5,1
   16c48:	c789                	beqz	a5,16c52 <__gdtoa+0xf7a>
   16c4a:	c0d05c63          	blez	a3,16062 <__gdtoa+0x38a>
   16c4e:	c0cff06f          	j	1605a <__gdtoa+0x382>
   16c52:	5782                	lw	a5,32(sp)
   16c54:	8926                	mv	s2,s1
   16c56:	835e                	mv	t1,s7
   16c58:	58a2                	lw	a7,40(sp)
   16c5a:	4be2                	lw	s7,24(sp)
   16c5c:	54b2                	lw	s1,44(sp)
   16c5e:	c385                	beqz	a5,16c7e <__gdtoa+0xfa6>
   16c60:	010ca583          	lw	a1,16(s9)
   16c64:	4605                	li	a2,1
   16c66:	cab64d63          	blt	a2,a1,16120 <__gdtoa+0x448>
   16c6a:	014ca603          	lw	a2,20(s9)
   16c6e:	ca061963          	bnez	a2,16120 <__gdtoa+0x448>
   16c72:	ced04ce3          	bgtz	a3,1696a <__gdtoa+0xc92>
   16c76:	4b01                	li	s6,0
   16c78:	001d8913          	addi	s2,s11,1
   16c7c:	b8d9                	j	16552 <__gdtoa+0x87a>
   16c7e:	8cd052e3          	blez	a3,16542 <__gdtoa+0x86a>
   16c82:	b1e5                	j	1696a <__gdtoa+0xc92>

00016c84 <__rv_alloc_D2A.part.0>:
   16c84:	66f1                	lui	a3,0x1c
   16c86:	6571                	lui	a0,0x1c
   16c88:	1141                	addi	sp,sp,-16
   16c8a:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   16c8e:	4601                	li	a2,0
   16c90:	03900593          	li	a1,57
   16c94:	d4850513          	addi	a0,a0,-696 # 1bd48 <__clzsi2+0x162>
   16c98:	c606                	sw	ra,12(sp)
   16c9a:	68e010ef          	jal	18328 <__assert_func>

00016c9e <__rv_alloc_D2A>:
   16c9e:	1141                	addi	sp,sp,-16
   16ca0:	c422                	sw	s0,8(sp)
   16ca2:	c606                	sw	ra,12(sp)
   16ca4:	46dd                	li	a3,23
   16ca6:	842a                	mv	s0,a0
   16ca8:	4705                	li	a4,1
   16caa:	4791                	li	a5,4
   16cac:	02b6f363          	bgeu	a3,a1,16cd2 <__rv_alloc_D2A+0x34>
   16cb0:	0786                	slli	a5,a5,0x1
   16cb2:	01478693          	addi	a3,a5,20
   16cb6:	863a                	mv	a2,a4
   16cb8:	0705                	addi	a4,a4,1
   16cba:	fed5fbe3          	bgeu	a1,a3,16cb0 <__rv_alloc_D2A+0x12>
   16cbe:	85b2                	mv	a1,a2
   16cc0:	dc50                	sw	a2,60(s0)
   16cc2:	8522                	mv	a0,s0
   16cc4:	2cc1                	jal	16f94 <_Balloc>
   16cc6:	c911                	beqz	a0,16cda <__rv_alloc_D2A+0x3c>
   16cc8:	40b2                	lw	ra,12(sp)
   16cca:	dc08                	sw	a0,56(s0)
   16ccc:	4422                	lw	s0,8(sp)
   16cce:	0141                	addi	sp,sp,16
   16cd0:	8082                	ret
   16cd2:	02052e23          	sw	zero,60(a0)
   16cd6:	4581                	li	a1,0
   16cd8:	b7ed                	j	16cc2 <__rv_alloc_D2A+0x24>
   16cda:	fabff0ef          	jal	16c84 <__rv_alloc_D2A.part.0>

00016cde <__nrv_alloc_D2A>:
   16cde:	1141                	addi	sp,sp,-16
   16ce0:	c422                	sw	s0,8(sp)
   16ce2:	c226                	sw	s1,4(sp)
   16ce4:	c04a                	sw	s2,0(sp)
   16ce6:	c606                	sw	ra,12(sp)
   16ce8:	485d                	li	a6,23
   16cea:	84aa                	mv	s1,a0
   16cec:	842e                	mv	s0,a1
   16cee:	8932                	mv	s2,a2
   16cf0:	4705                	li	a4,1
   16cf2:	4791                	li	a5,4
   16cf4:	04d87763          	bgeu	a6,a3,16d42 <__nrv_alloc_D2A+0x64>
   16cf8:	0786                	slli	a5,a5,0x1
   16cfa:	01478813          	addi	a6,a5,20
   16cfe:	85ba                	mv	a1,a4
   16d00:	0705                	addi	a4,a4,1
   16d02:	ff06fbe3          	bgeu	a3,a6,16cf8 <__nrv_alloc_D2A+0x1a>
   16d06:	dccc                	sw	a1,60(s1)
   16d08:	8526                	mv	a0,s1
   16d0a:	2469                	jal	16f94 <_Balloc>
   16d0c:	c129                	beqz	a0,16d4e <__nrv_alloc_D2A+0x70>
   16d0e:	dc88                	sw	a0,56(s1)
   16d10:	00044783          	lbu	a5,0(s0)
   16d14:	00140593          	addi	a1,s0,1
   16d18:	00f50023          	sb	a5,0(a0)
   16d1c:	c79d                	beqz	a5,16d4a <__nrv_alloc_D2A+0x6c>
   16d1e:	87aa                	mv	a5,a0
   16d20:	0005c703          	lbu	a4,0(a1)
   16d24:	0785                	addi	a5,a5,1
   16d26:	0585                	addi	a1,a1,1
   16d28:	00e78023          	sb	a4,0(a5)
   16d2c:	fb75                	bnez	a4,16d20 <__nrv_alloc_D2A+0x42>
   16d2e:	00090463          	beqz	s2,16d36 <__nrv_alloc_D2A+0x58>
   16d32:	00f92023          	sw	a5,0(s2)
   16d36:	40b2                	lw	ra,12(sp)
   16d38:	4422                	lw	s0,8(sp)
   16d3a:	4492                	lw	s1,4(sp)
   16d3c:	4902                	lw	s2,0(sp)
   16d3e:	0141                	addi	sp,sp,16
   16d40:	8082                	ret
   16d42:	02052e23          	sw	zero,60(a0)
   16d46:	4581                	li	a1,0
   16d48:	b7c1                	j	16d08 <__nrv_alloc_D2A+0x2a>
   16d4a:	87aa                	mv	a5,a0
   16d4c:	b7cd                	j	16d2e <__nrv_alloc_D2A+0x50>
   16d4e:	f37ff0ef          	jal	16c84 <__rv_alloc_D2A.part.0>

00016d52 <__freedtoa>:
   16d52:	5d54                	lw	a3,60(a0)
   16d54:	4705                	li	a4,1
   16d56:	00d71733          	sll	a4,a4,a3
   16d5a:	c1d4                	sw	a3,4(a1)
   16d5c:	c598                	sw	a4,8(a1)
   16d5e:	a44d                	j	17000 <_Bfree>

00016d60 <__quorem_D2A>:
   16d60:	1101                	addi	sp,sp,-32
   16d62:	ca26                	sw	s1,20(sp)
   16d64:	491c                	lw	a5,16(a0)
   16d66:	4984                	lw	s1,16(a1)
   16d68:	ce06                	sw	ra,28(sp)
   16d6a:	1497c163          	blt	a5,s1,16eac <__quorem_D2A+0x14c>
   16d6e:	14fd                	addi	s1,s1,-1
   16d70:	00249313          	slli	t1,s1,0x2
   16d74:	cc22                	sw	s0,24(sp)
   16d76:	01458413          	addi	s0,a1,20
   16d7a:	c64e                	sw	s3,12(sp)
   16d7c:	c452                	sw	s4,8(sp)
   16d7e:	006409b3          	add	s3,s0,t1
   16d82:	01450a13          	addi	s4,a0,20
   16d86:	0009a783          	lw	a5,0(s3)
   16d8a:	9352                	add	t1,t1,s4
   16d8c:	00032703          	lw	a4,0(t1)
   16d90:	c84a                	sw	s2,16(sp)
   16d92:	c256                	sw	s5,4(sp)
   16d94:	0785                	addi	a5,a5,1
   16d96:	02f75933          	divu	s2,a4,a5
   16d9a:	8aaa                	mv	s5,a0
   16d9c:	08f76663          	bltu	a4,a5,16e28 <__quorem_D2A+0xc8>
   16da0:	6541                	lui	a0,0x10
   16da2:	88a2                	mv	a7,s0
   16da4:	8852                	mv	a6,s4
   16da6:	4f01                	li	t5,0
   16da8:	4e81                	li	t4,0
   16daa:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   16dac:	0008a783          	lw	a5,0(a7)
   16db0:	00082603          	lw	a2,0(a6)
   16db4:	0811                	addi	a6,a6,4
   16db6:	00a7f6b3          	and	a3,a5,a0
   16dba:	83c1                	srli	a5,a5,0x10
   16dbc:	00a67733          	and	a4,a2,a0
   16dc0:	01065e13          	srli	t3,a2,0x10
   16dc4:	0891                	addi	a7,a7,4
   16dc6:	032686b3          	mul	a3,a3,s2
   16dca:	032787b3          	mul	a5,a5,s2
   16dce:	96fa                	add	a3,a3,t5
   16dd0:	00a6f633          	and	a2,a3,a0
   16dd4:	8f11                	sub	a4,a4,a2
   16dd6:	41d70733          	sub	a4,a4,t4
   16dda:	82c1                	srli	a3,a3,0x10
   16ddc:	01075613          	srli	a2,a4,0x10
   16de0:	8a05                	andi	a2,a2,1
   16de2:	8f69                	and	a4,a4,a0
   16de4:	97b6                	add	a5,a5,a3
   16de6:	00a7f6b3          	and	a3,a5,a0
   16dea:	9636                	add	a2,a2,a3
   16dec:	40ce06b3          	sub	a3,t3,a2
   16df0:	01069613          	slli	a2,a3,0x10
   16df4:	8f51                	or	a4,a4,a2
   16df6:	82c1                	srli	a3,a3,0x10
   16df8:	fee82e23          	sw	a4,-4(a6)
   16dfc:	0107df13          	srli	t5,a5,0x10
   16e00:	0016fe93          	andi	t4,a3,1
   16e04:	fb19f4e3          	bgeu	s3,a7,16dac <__quorem_D2A+0x4c>
   16e08:	00032783          	lw	a5,0(t1)
   16e0c:	ef91                	bnez	a5,16e28 <__quorem_D2A+0xc8>
   16e0e:	1371                	addi	t1,t1,-4
   16e10:	006a6663          	bltu	s4,t1,16e1c <__quorem_D2A+0xbc>
   16e14:	a801                	j	16e24 <__quorem_D2A+0xc4>
   16e16:	14fd                	addi	s1,s1,-1
   16e18:	006a7663          	bgeu	s4,t1,16e24 <__quorem_D2A+0xc4>
   16e1c:	00032783          	lw	a5,0(t1)
   16e20:	1371                	addi	t1,t1,-4
   16e22:	dbf5                	beqz	a5,16e16 <__quorem_D2A+0xb6>
   16e24:	009aa823          	sw	s1,16(s5)
   16e28:	8556                	mv	a0,s5
   16e2a:	053000ef          	jal	1767c <__mcmp>
   16e2e:	06054563          	bltz	a0,16e98 <__quorem_D2A+0x138>
   16e32:	6541                	lui	a0,0x10
   16e34:	85d2                	mv	a1,s4
   16e36:	4681                	li	a3,0
   16e38:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   16e3a:	419c                	lw	a5,0(a1)
   16e3c:	4010                	lw	a2,0(s0)
   16e3e:	0591                	addi	a1,a1,4
   16e40:	00a7f733          	and	a4,a5,a0
   16e44:	00a67833          	and	a6,a2,a0
   16e48:	41070733          	sub	a4,a4,a6
   16e4c:	8f15                	sub	a4,a4,a3
   16e4e:	01075693          	srli	a3,a4,0x10
   16e52:	8a85                	andi	a3,a3,1
   16e54:	8241                	srli	a2,a2,0x10
   16e56:	96b2                	add	a3,a3,a2
   16e58:	83c1                	srli	a5,a5,0x10
   16e5a:	8f95                	sub	a5,a5,a3
   16e5c:	01079693          	slli	a3,a5,0x10
   16e60:	8f69                	and	a4,a4,a0
   16e62:	8f55                	or	a4,a4,a3
   16e64:	83c1                	srli	a5,a5,0x10
   16e66:	0411                	addi	s0,s0,4
   16e68:	fee5ae23          	sw	a4,-4(a1)
   16e6c:	0017f693          	andi	a3,a5,1
   16e70:	fc89f5e3          	bgeu	s3,s0,16e3a <__quorem_D2A+0xda>
   16e74:	00249793          	slli	a5,s1,0x2
   16e78:	97d2                	add	a5,a5,s4
   16e7a:	4398                	lw	a4,0(a5)
   16e7c:	ef09                	bnez	a4,16e96 <__quorem_D2A+0x136>
   16e7e:	17f1                	addi	a5,a5,-4
   16e80:	00fa6663          	bltu	s4,a5,16e8c <__quorem_D2A+0x12c>
   16e84:	a039                	j	16e92 <__quorem_D2A+0x132>
   16e86:	14fd                	addi	s1,s1,-1
   16e88:	00fa7563          	bgeu	s4,a5,16e92 <__quorem_D2A+0x132>
   16e8c:	4398                	lw	a4,0(a5)
   16e8e:	17f1                	addi	a5,a5,-4
   16e90:	db7d                	beqz	a4,16e86 <__quorem_D2A+0x126>
   16e92:	009aa823          	sw	s1,16(s5)
   16e96:	0905                	addi	s2,s2,1
   16e98:	4462                	lw	s0,24(sp)
   16e9a:	40f2                	lw	ra,28(sp)
   16e9c:	49b2                	lw	s3,12(sp)
   16e9e:	4a22                	lw	s4,8(sp)
   16ea0:	4a92                	lw	s5,4(sp)
   16ea2:	44d2                	lw	s1,20(sp)
   16ea4:	854a                	mv	a0,s2
   16ea6:	4942                	lw	s2,16(sp)
   16ea8:	6105                	addi	sp,sp,32
   16eaa:	8082                	ret
   16eac:	40f2                	lw	ra,28(sp)
   16eae:	44d2                	lw	s1,20(sp)
   16eb0:	4501                	li	a0,0
   16eb2:	6105                	addi	sp,sp,32
   16eb4:	8082                	ret

00016eb6 <__rshift_D2A>:
   16eb6:	01052803          	lw	a6,16(a0)
   16eba:	4055de13          	srai	t3,a1,0x5
   16ebe:	010e4763          	blt	t3,a6,16ecc <__rshift_D2A+0x16>
   16ec2:	00052823          	sw	zero,16(a0)
   16ec6:	00052a23          	sw	zero,20(a0)
   16eca:	8082                	ret
   16ecc:	01450313          	addi	t1,a0,20
   16ed0:	00281613          	slli	a2,a6,0x2
   16ed4:	002e1793          	slli	a5,t3,0x2
   16ed8:	89fd                	andi	a1,a1,31
   16eda:	961a                	add	a2,a2,t1
   16edc:	979a                	add	a5,a5,t1
   16ede:	c5a1                	beqz	a1,16f26 <__rshift_D2A+0x70>
   16ee0:	4394                	lw	a3,0(a5)
   16ee2:	02000e93          	li	t4,32
   16ee6:	0791                	addi	a5,a5,4
   16ee8:	40be8eb3          	sub	t4,t4,a1
   16eec:	00b6d6b3          	srl	a3,a3,a1
   16ef0:	06c7f063          	bgeu	a5,a2,16f50 <__rshift_D2A+0x9a>
   16ef4:	889a                	mv	a7,t1
   16ef6:	4398                	lw	a4,0(a5)
   16ef8:	0891                	addi	a7,a7,4
   16efa:	0791                	addi	a5,a5,4
   16efc:	01d71733          	sll	a4,a4,t4
   16f00:	8f55                	or	a4,a4,a3
   16f02:	fee8ae23          	sw	a4,-4(a7)
   16f06:	ffc7a683          	lw	a3,-4(a5)
   16f0a:	00b6d6b3          	srl	a3,a3,a1
   16f0e:	fec7e4e3          	bltu	a5,a2,16ef6 <__rshift_D2A+0x40>
   16f12:	41c80833          	sub	a6,a6,t3
   16f16:	080a                	slli	a6,a6,0x2
   16f18:	1871                	addi	a6,a6,-4
   16f1a:	981a                	add	a6,a6,t1
   16f1c:	00d82023          	sw	a3,0(a6)
   16f20:	c28d                	beqz	a3,16f42 <__rshift_D2A+0x8c>
   16f22:	0811                	addi	a6,a6,4
   16f24:	a839                	j	16f42 <__rshift_D2A+0x8c>
   16f26:	871a                	mv	a4,t1
   16f28:	f8c7fde3          	bgeu	a5,a2,16ec2 <__rshift_D2A+0xc>
   16f2c:	4394                	lw	a3,0(a5)
   16f2e:	0791                	addi	a5,a5,4
   16f30:	0711                	addi	a4,a4,4
   16f32:	fed72e23          	sw	a3,-4(a4)
   16f36:	fec7ebe3          	bltu	a5,a2,16f2c <__rshift_D2A+0x76>
   16f3a:	41c80833          	sub	a6,a6,t3
   16f3e:	080a                	slli	a6,a6,0x2
   16f40:	981a                	add	a6,a6,t1
   16f42:	406807b3          	sub	a5,a6,t1
   16f46:	8789                	srai	a5,a5,0x2
   16f48:	c91c                	sw	a5,16(a0)
   16f4a:	f6680ee3          	beq	a6,t1,16ec6 <__rshift_D2A+0x10>
   16f4e:	8082                	ret
   16f50:	c954                	sw	a3,20(a0)
   16f52:	daa5                	beqz	a3,16ec2 <__rshift_D2A+0xc>
   16f54:	881a                	mv	a6,t1
   16f56:	0811                	addi	a6,a6,4
   16f58:	b7ed                	j	16f42 <__rshift_D2A+0x8c>

00016f5a <__trailz_D2A>:
   16f5a:	4918                	lw	a4,16(a0)
   16f5c:	1101                	addi	sp,sp,-32
   16f5e:	0551                	addi	a0,a0,20
   16f60:	070a                	slli	a4,a4,0x2
   16f62:	cc22                	sw	s0,24(sp)
   16f64:	ce06                	sw	ra,28(sp)
   16f66:	972a                	add	a4,a4,a0
   16f68:	4401                	li	s0,0
   16f6a:	00e56863          	bltu	a0,a4,16f7a <__trailz_D2A+0x20>
   16f6e:	a831                	j	16f8a <__trailz_D2A+0x30>
   16f70:	0511                	addi	a0,a0,4
   16f72:	02040413          	addi	s0,s0,32
   16f76:	00e57a63          	bgeu	a0,a4,16f8a <__trailz_D2A+0x30>
   16f7a:	411c                	lw	a5,0(a0)
   16f7c:	dbf5                	beqz	a5,16f70 <__trailz_D2A+0x16>
   16f7e:	00e57663          	bgeu	a0,a4,16f8a <__trailz_D2A+0x30>
   16f82:	0068                	addi	a0,sp,12
   16f84:	c63e                	sw	a5,12(sp)
   16f86:	2471                	jal	17212 <__lo0bits>
   16f88:	942a                	add	s0,s0,a0
   16f8a:	40f2                	lw	ra,28(sp)
   16f8c:	8522                	mv	a0,s0
   16f8e:	4462                	lw	s0,24(sp)
   16f90:	6105                	addi	sp,sp,32
   16f92:	8082                	ret

00016f94 <_Balloc>:
   16f94:	417c                	lw	a5,68(a0)
   16f96:	1141                	addi	sp,sp,-16
   16f98:	c422                	sw	s0,8(sp)
   16f9a:	c226                	sw	s1,4(sp)
   16f9c:	c606                	sw	ra,12(sp)
   16f9e:	842a                	mv	s0,a0
   16fa0:	84ae                	mv	s1,a1
   16fa2:	c38d                	beqz	a5,16fc4 <_Balloc+0x30>
   16fa4:	00249713          	slli	a4,s1,0x2
   16fa8:	97ba                	add	a5,a5,a4
   16faa:	4388                	lw	a0,0(a5)
   16fac:	c515                	beqz	a0,16fd8 <_Balloc+0x44>
   16fae:	4118                	lw	a4,0(a0)
   16fb0:	c398                	sw	a4,0(a5)
   16fb2:	00052823          	sw	zero,16(a0)
   16fb6:	00052623          	sw	zero,12(a0)
   16fba:	40b2                	lw	ra,12(sp)
   16fbc:	4422                	lw	s0,8(sp)
   16fbe:	4492                	lw	s1,4(sp)
   16fc0:	0141                	addi	sp,sp,16
   16fc2:	8082                	ret
   16fc4:	02100613          	li	a2,33
   16fc8:	4591                	li	a1,4
   16fca:	3a4010ef          	jal	1836e <_calloc_r>
   16fce:	c068                	sw	a0,68(s0)
   16fd0:	87aa                	mv	a5,a0
   16fd2:	f969                	bnez	a0,16fa4 <_Balloc+0x10>
   16fd4:	4501                	li	a0,0
   16fd6:	b7d5                	j	16fba <_Balloc+0x26>
   16fd8:	c04a                	sw	s2,0(sp)
   16fda:	4905                	li	s2,1
   16fdc:	00991933          	sll	s2,s2,s1
   16fe0:	00590613          	addi	a2,s2,5
   16fe4:	060a                	slli	a2,a2,0x2
   16fe6:	4585                	li	a1,1
   16fe8:	8522                	mv	a0,s0
   16fea:	384010ef          	jal	1836e <_calloc_r>
   16fee:	c511                	beqz	a0,16ffa <_Balloc+0x66>
   16ff0:	01252423          	sw	s2,8(a0)
   16ff4:	c144                	sw	s1,4(a0)
   16ff6:	4902                	lw	s2,0(sp)
   16ff8:	bf6d                	j	16fb2 <_Balloc+0x1e>
   16ffa:	4902                	lw	s2,0(sp)
   16ffc:	4501                	li	a0,0
   16ffe:	bf75                	j	16fba <_Balloc+0x26>

00017000 <_Bfree>:
   17000:	c981                	beqz	a1,17010 <_Bfree+0x10>
   17002:	41d8                	lw	a4,4(a1)
   17004:	417c                	lw	a5,68(a0)
   17006:	070a                	slli	a4,a4,0x2
   17008:	97ba                	add	a5,a5,a4
   1700a:	4398                	lw	a4,0(a5)
   1700c:	c198                	sw	a4,0(a1)
   1700e:	c38c                	sw	a1,0(a5)
   17010:	8082                	ret

00017012 <__multadd>:
   17012:	1101                	addi	sp,sp,-32
   17014:	ca26                	sw	s1,20(sp)
   17016:	4984                	lw	s1,16(a1)
   17018:	6341                	lui	t1,0x10
   1701a:	cc22                	sw	s0,24(sp)
   1701c:	c84a                	sw	s2,16(sp)
   1701e:	c64e                	sw	s3,12(sp)
   17020:	ce06                	sw	ra,28(sp)
   17022:	892e                	mv	s2,a1
   17024:	89aa                	mv	s3,a0
   17026:	8436                	mv	s0,a3
   17028:	01458813          	addi	a6,a1,20
   1702c:	4881                	li	a7,0
   1702e:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   17030:	00082783          	lw	a5,0(a6)
   17034:	0811                	addi	a6,a6,4
   17036:	0885                	addi	a7,a7,1
   17038:	0067f733          	and	a4,a5,t1
   1703c:	02c70733          	mul	a4,a4,a2
   17040:	0107d693          	srli	a3,a5,0x10
   17044:	02c686b3          	mul	a3,a3,a2
   17048:	008707b3          	add	a5,a4,s0
   1704c:	0107d713          	srli	a4,a5,0x10
   17050:	0067f7b3          	and	a5,a5,t1
   17054:	96ba                	add	a3,a3,a4
   17056:	01069713          	slli	a4,a3,0x10
   1705a:	97ba                	add	a5,a5,a4
   1705c:	fef82e23          	sw	a5,-4(a6)
   17060:	0106d413          	srli	s0,a3,0x10
   17064:	fc98c6e3          	blt	a7,s1,17030 <__multadd+0x1e>
   17068:	cc09                	beqz	s0,17082 <__multadd+0x70>
   1706a:	00892783          	lw	a5,8(s2)
   1706e:	02f4d263          	bge	s1,a5,17092 <__multadd+0x80>
   17072:	00448793          	addi	a5,s1,4
   17076:	078a                	slli	a5,a5,0x2
   17078:	97ca                	add	a5,a5,s2
   1707a:	c3c0                	sw	s0,4(a5)
   1707c:	0485                	addi	s1,s1,1
   1707e:	00992823          	sw	s1,16(s2)
   17082:	40f2                	lw	ra,28(sp)
   17084:	4462                	lw	s0,24(sp)
   17086:	44d2                	lw	s1,20(sp)
   17088:	49b2                	lw	s3,12(sp)
   1708a:	854a                	mv	a0,s2
   1708c:	4942                	lw	s2,16(sp)
   1708e:	6105                	addi	sp,sp,32
   17090:	8082                	ret
   17092:	00492583          	lw	a1,4(s2)
   17096:	854e                	mv	a0,s3
   17098:	c452                	sw	s4,8(sp)
   1709a:	0585                	addi	a1,a1,1
   1709c:	ef9ff0ef          	jal	16f94 <_Balloc>
   170a0:	8a2a                	mv	s4,a0
   170a2:	c121                	beqz	a0,170e2 <__multadd+0xd0>
   170a4:	01092603          	lw	a2,16(s2)
   170a8:	00c90593          	addi	a1,s2,12
   170ac:	0531                	addi	a0,a0,12
   170ae:	0609                	addi	a2,a2,2
   170b0:	060a                	slli	a2,a2,0x2
   170b2:	f4efe0ef          	jal	15800 <memcpy>
   170b6:	00492703          	lw	a4,4(s2)
   170ba:	0449a783          	lw	a5,68(s3)
   170be:	070a                	slli	a4,a4,0x2
   170c0:	97ba                	add	a5,a5,a4
   170c2:	4398                	lw	a4,0(a5)
   170c4:	00e92023          	sw	a4,0(s2)
   170c8:	0127a023          	sw	s2,0(a5)
   170cc:	00448793          	addi	a5,s1,4
   170d0:	8952                	mv	s2,s4
   170d2:	078a                	slli	a5,a5,0x2
   170d4:	97ca                	add	a5,a5,s2
   170d6:	4a22                	lw	s4,8(sp)
   170d8:	0485                	addi	s1,s1,1
   170da:	c3c0                	sw	s0,4(a5)
   170dc:	00992823          	sw	s1,16(s2)
   170e0:	b74d                	j	17082 <__multadd+0x70>
   170e2:	66f1                	lui	a3,0x1c
   170e4:	6571                	lui	a0,0x1c
   170e6:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   170ea:	4601                	li	a2,0
   170ec:	0ba00593          	li	a1,186
   170f0:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   170f4:	234010ef          	jal	18328 <__assert_func>

000170f8 <__s2b>:
   170f8:	1101                	addi	sp,sp,-32
   170fa:	cc22                	sw	s0,24(sp)
   170fc:	ca26                	sw	s1,20(sp)
   170fe:	c84a                	sw	s2,16(sp)
   17100:	c64e                	sw	s3,12(sp)
   17102:	c452                	sw	s4,8(sp)
   17104:	89b6                	mv	s3,a3
   17106:	47a5                	li	a5,9
   17108:	06a1                	addi	a3,a3,8
   1710a:	ce06                	sw	ra,28(sp)
   1710c:	02f6c6b3          	div	a3,a3,a5
   17110:	892a                	mv	s2,a0
   17112:	842e                	mv	s0,a1
   17114:	8a32                	mv	s4,a2
   17116:	84ba                	mv	s1,a4
   17118:	0937d563          	bge	a5,s3,171a2 <__s2b+0xaa>
   1711c:	4785                	li	a5,1
   1711e:	4581                	li	a1,0
   17120:	0786                	slli	a5,a5,0x1
   17122:	0585                	addi	a1,a1,1
   17124:	fed7cee3          	blt	a5,a3,17120 <__s2b+0x28>
   17128:	854a                	mv	a0,s2
   1712a:	e6bff0ef          	jal	16f94 <_Balloc>
   1712e:	85aa                	mv	a1,a0
   17130:	c93d                	beqz	a0,171a6 <__s2b+0xae>
   17132:	4785                	li	a5,1
   17134:	c91c                	sw	a5,16(a0)
   17136:	c944                	sw	s1,20(a0)
   17138:	47a5                	li	a5,9
   1713a:	0747d163          	bge	a5,s4,1719c <__s2b+0xa4>
   1713e:	c256                	sw	s5,4(sp)
   17140:	00940a93          	addi	s5,s0,9
   17144:	84d6                	mv	s1,s5
   17146:	9452                	add	s0,s0,s4
   17148:	0004c683          	lbu	a3,0(s1)
   1714c:	4629                	li	a2,10
   1714e:	854a                	mv	a0,s2
   17150:	fd068693          	addi	a3,a3,-48
   17154:	ebfff0ef          	jal	17012 <__multadd>
   17158:	0485                	addi	s1,s1,1
   1715a:	85aa                	mv	a1,a0
   1715c:	fe8496e3          	bne	s1,s0,17148 <__s2b+0x50>
   17160:	ff8a0413          	addi	s0,s4,-8
   17164:	9456                	add	s0,s0,s5
   17166:	4a92                	lw	s5,4(sp)
   17168:	033a5163          	bge	s4,s3,1718a <__s2b+0x92>
   1716c:	414989b3          	sub	s3,s3,s4
   17170:	99a2                	add	s3,s3,s0
   17172:	00044683          	lbu	a3,0(s0)
   17176:	4629                	li	a2,10
   17178:	854a                	mv	a0,s2
   1717a:	fd068693          	addi	a3,a3,-48
   1717e:	e95ff0ef          	jal	17012 <__multadd>
   17182:	0405                	addi	s0,s0,1
   17184:	85aa                	mv	a1,a0
   17186:	ff3416e3          	bne	s0,s3,17172 <__s2b+0x7a>
   1718a:	40f2                	lw	ra,28(sp)
   1718c:	4462                	lw	s0,24(sp)
   1718e:	44d2                	lw	s1,20(sp)
   17190:	4942                	lw	s2,16(sp)
   17192:	49b2                	lw	s3,12(sp)
   17194:	4a22                	lw	s4,8(sp)
   17196:	852e                	mv	a0,a1
   17198:	6105                	addi	sp,sp,32
   1719a:	8082                	ret
   1719c:	0429                	addi	s0,s0,10
   1719e:	4a25                	li	s4,9
   171a0:	b7e1                	j	17168 <__s2b+0x70>
   171a2:	4581                	li	a1,0
   171a4:	b751                	j	17128 <__s2b+0x30>
   171a6:	66f1                	lui	a3,0x1c
   171a8:	6571                	lui	a0,0x1c
   171aa:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   171ae:	4601                	li	a2,0
   171b0:	0d300593          	li	a1,211
   171b4:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   171b8:	c256                	sw	s5,4(sp)
   171ba:	16e010ef          	jal	18328 <__assert_func>

000171be <__hi0bits>:
   171be:	87aa                	mv	a5,a0
   171c0:	6741                	lui	a4,0x10
   171c2:	4501                	li	a0,0
   171c4:	00e7f463          	bgeu	a5,a4,171cc <__hi0bits+0xe>
   171c8:	07c2                	slli	a5,a5,0x10
   171ca:	4541                	li	a0,16
   171cc:	01000737          	lui	a4,0x1000
   171d0:	00e7f463          	bgeu	a5,a4,171d8 <__hi0bits+0x1a>
   171d4:	0521                	addi	a0,a0,8
   171d6:	07a2                	slli	a5,a5,0x8
   171d8:	10000737          	lui	a4,0x10000
   171dc:	00e7f463          	bgeu	a5,a4,171e4 <__hi0bits+0x26>
   171e0:	0511                	addi	a0,a0,4
   171e2:	0792                	slli	a5,a5,0x4
   171e4:	40000737          	lui	a4,0x40000
   171e8:	00e7e763          	bltu	a5,a4,171f6 <__hi0bits+0x38>
   171ec:	fff7c793          	not	a5,a5
   171f0:	83fd                	srli	a5,a5,0x1f
   171f2:	953e                	add	a0,a0,a5
   171f4:	8082                	ret
   171f6:	078a                	slli	a5,a5,0x2
   171f8:	0007c963          	bltz	a5,1720a <__hi0bits+0x4c>
   171fc:	00179713          	slli	a4,a5,0x1
   17200:	00074763          	bltz	a4,1720e <__hi0bits+0x50>
   17204:	02000513          	li	a0,32
   17208:	8082                	ret
   1720a:	0509                	addi	a0,a0,2
   1720c:	8082                	ret
   1720e:	050d                	addi	a0,a0,3
   17210:	8082                	ret

00017212 <__lo0bits>:
   17212:	411c                	lw	a5,0(a0)
   17214:	872a                	mv	a4,a0
   17216:	0077f693          	andi	a3,a5,7
   1721a:	ce81                	beqz	a3,17232 <__lo0bits+0x20>
   1721c:	0017f693          	andi	a3,a5,1
   17220:	4501                	li	a0,0
   17222:	ee95                	bnez	a3,1725e <__lo0bits+0x4c>
   17224:	0027f693          	andi	a3,a5,2
   17228:	c6b5                	beqz	a3,17294 <__lo0bits+0x82>
   1722a:	8385                	srli	a5,a5,0x1
   1722c:	c31c                	sw	a5,0(a4)
   1722e:	4505                	li	a0,1
   17230:	8082                	ret
   17232:	01079693          	slli	a3,a5,0x10
   17236:	82c1                	srli	a3,a3,0x10
   17238:	4501                	li	a0,0
   1723a:	c6b9                	beqz	a3,17288 <__lo0bits+0x76>
   1723c:	0ff7f693          	zext.b	a3,a5
   17240:	ce95                	beqz	a3,1727c <__lo0bits+0x6a>
   17242:	00f7f693          	andi	a3,a5,15
   17246:	c68d                	beqz	a3,17270 <__lo0bits+0x5e>
   17248:	0037f693          	andi	a3,a5,3
   1724c:	ce81                	beqz	a3,17264 <__lo0bits+0x52>
   1724e:	0017f693          	andi	a3,a5,1
   17252:	e699                	bnez	a3,17260 <__lo0bits+0x4e>
   17254:	8385                	srli	a5,a5,0x1
   17256:	0505                	addi	a0,a0,1
   17258:	e781                	bnez	a5,17260 <__lo0bits+0x4e>
   1725a:	02000513          	li	a0,32
   1725e:	8082                	ret
   17260:	c31c                	sw	a5,0(a4)
   17262:	8082                	ret
   17264:	8389                	srli	a5,a5,0x2
   17266:	0017f693          	andi	a3,a5,1
   1726a:	0509                	addi	a0,a0,2
   1726c:	faf5                	bnez	a3,17260 <__lo0bits+0x4e>
   1726e:	b7dd                	j	17254 <__lo0bits+0x42>
   17270:	8391                	srli	a5,a5,0x4
   17272:	0037f693          	andi	a3,a5,3
   17276:	0511                	addi	a0,a0,4
   17278:	faf9                	bnez	a3,1724e <__lo0bits+0x3c>
   1727a:	b7ed                	j	17264 <__lo0bits+0x52>
   1727c:	83a1                	srli	a5,a5,0x8
   1727e:	00f7f693          	andi	a3,a5,15
   17282:	0521                	addi	a0,a0,8
   17284:	f2f1                	bnez	a3,17248 <__lo0bits+0x36>
   17286:	b7ed                	j	17270 <__lo0bits+0x5e>
   17288:	83c1                	srli	a5,a5,0x10
   1728a:	0ff7f693          	zext.b	a3,a5
   1728e:	4541                	li	a0,16
   17290:	facd                	bnez	a3,17242 <__lo0bits+0x30>
   17292:	b7ed                	j	1727c <__lo0bits+0x6a>
   17294:	8389                	srli	a5,a5,0x2
   17296:	c31c                	sw	a5,0(a4)
   17298:	4509                	li	a0,2
   1729a:	8082                	ret

0001729c <__i2b>:
   1729c:	417c                	lw	a5,68(a0)
   1729e:	1141                	addi	sp,sp,-16
   172a0:	c422                	sw	s0,8(sp)
   172a2:	c226                	sw	s1,4(sp)
   172a4:	c606                	sw	ra,12(sp)
   172a6:	842a                	mv	s0,a0
   172a8:	84ae                	mv	s1,a1
   172aa:	cf99                	beqz	a5,172c8 <__i2b+0x2c>
   172ac:	43c8                	lw	a0,4(a5)
   172ae:	c121                	beqz	a0,172ee <__i2b+0x52>
   172b0:	4118                	lw	a4,0(a0)
   172b2:	c3d8                	sw	a4,4(a5)
   172b4:	40b2                	lw	ra,12(sp)
   172b6:	4422                	lw	s0,8(sp)
   172b8:	4785                	li	a5,1
   172ba:	c944                	sw	s1,20(a0)
   172bc:	00052623          	sw	zero,12(a0)
   172c0:	c91c                	sw	a5,16(a0)
   172c2:	4492                	lw	s1,4(sp)
   172c4:	0141                	addi	sp,sp,16
   172c6:	8082                	ret
   172c8:	02100613          	li	a2,33
   172cc:	4591                	li	a1,4
   172ce:	0a0010ef          	jal	1836e <_calloc_r>
   172d2:	c068                	sw	a0,68(s0)
   172d4:	87aa                	mv	a5,a0
   172d6:	f979                	bnez	a0,172ac <__i2b+0x10>
   172d8:	66f1                	lui	a3,0x1c
   172da:	6571                	lui	a0,0x1c
   172dc:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   172e0:	4601                	li	a2,0
   172e2:	14500593          	li	a1,325
   172e6:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   172ea:	03e010ef          	jal	18328 <__assert_func>
   172ee:	4671                	li	a2,28
   172f0:	4585                	li	a1,1
   172f2:	8522                	mv	a0,s0
   172f4:	07a010ef          	jal	1836e <_calloc_r>
   172f8:	d165                	beqz	a0,172d8 <__i2b+0x3c>
   172fa:	4785                	li	a5,1
   172fc:	c15c                	sw	a5,4(a0)
   172fe:	4789                	li	a5,2
   17300:	c51c                	sw	a5,8(a0)
   17302:	bf4d                	j	172b4 <__i2b+0x18>

00017304 <__multiply>:
   17304:	1101                	addi	sp,sp,-32
   17306:	c84a                	sw	s2,16(sp)
   17308:	c64e                	sw	s3,12(sp)
   1730a:	0105a903          	lw	s2,16(a1)
   1730e:	01062983          	lw	s3,16(a2)
   17312:	ca26                	sw	s1,20(sp)
   17314:	c452                	sw	s4,8(sp)
   17316:	ce06                	sw	ra,28(sp)
   17318:	cc22                	sw	s0,24(sp)
   1731a:	8a2e                	mv	s4,a1
   1731c:	84b2                	mv	s1,a2
   1731e:	01394763          	blt	s2,s3,1732c <__multiply+0x28>
   17322:	874e                	mv	a4,s3
   17324:	84ae                	mv	s1,a1
   17326:	89ca                	mv	s3,s2
   17328:	8a32                	mv	s4,a2
   1732a:	893a                	mv	s2,a4
   1732c:	449c                	lw	a5,8(s1)
   1732e:	40cc                	lw	a1,4(s1)
   17330:	01298433          	add	s0,s3,s2
   17334:	0087a7b3          	slt	a5,a5,s0
   17338:	95be                	add	a1,a1,a5
   1733a:	c5bff0ef          	jal	16f94 <_Balloc>
   1733e:	14050363          	beqz	a0,17484 <__multiply+0x180>
   17342:	01450313          	addi	t1,a0,20
   17346:	00241893          	slli	a7,s0,0x2
   1734a:	989a                	add	a7,a7,t1
   1734c:	879a                	mv	a5,t1
   1734e:	01137763          	bgeu	t1,a7,1735c <__multiply+0x58>
   17352:	0007a023          	sw	zero,0(a5)
   17356:	0791                	addi	a5,a5,4
   17358:	ff17ede3          	bltu	a5,a7,17352 <__multiply+0x4e>
   1735c:	014a0813          	addi	a6,s4,20
   17360:	00291e13          	slli	t3,s2,0x2
   17364:	01448e93          	addi	t4,s1,20
   17368:	00299593          	slli	a1,s3,0x2
   1736c:	9e42                	add	t3,t3,a6
   1736e:	95f6                	add	a1,a1,t4
   17370:	0fc87163          	bgeu	a6,t3,17452 <__multiply+0x14e>
   17374:	01548793          	addi	a5,s1,21
   17378:	4f11                	li	t5,4
   1737a:	0ef5fe63          	bgeu	a1,a5,17476 <__multiply+0x172>
   1737e:	66c1                	lui	a3,0x10
   17380:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   17382:	a809                	j	17394 <__multiply+0x90>
   17384:	010fdf93          	srli	t6,t6,0x10
   17388:	060f9863          	bnez	t6,173f8 <__multiply+0xf4>
   1738c:	0811                	addi	a6,a6,4
   1738e:	0311                	addi	t1,t1,4
   17390:	0dc87163          	bgeu	a6,t3,17452 <__multiply+0x14e>
   17394:	00082f83          	lw	t6,0(a6)
   17398:	00dff3b3          	and	t2,t6,a3
   1739c:	fe0384e3          	beqz	t2,17384 <__multiply+0x80>
   173a0:	829a                	mv	t0,t1
   173a2:	8ff6                	mv	t6,t4
   173a4:	4481                	li	s1,0
   173a6:	000fa783          	lw	a5,0(t6)
   173aa:	0002a603          	lw	a2,0(t0) # 126ae <memset+0x8e>
   173ae:	0291                	addi	t0,t0,4
   173b0:	00d7f733          	and	a4,a5,a3
   173b4:	02770733          	mul	a4,a4,t2
   173b8:	83c1                	srli	a5,a5,0x10
   173ba:	00d67933          	and	s2,a2,a3
   173be:	8241                	srli	a2,a2,0x10
   173c0:	0f91                	addi	t6,t6,4
   173c2:	027787b3          	mul	a5,a5,t2
   173c6:	974a                	add	a4,a4,s2
   173c8:	9726                	add	a4,a4,s1
   173ca:	01075493          	srli	s1,a4,0x10
   173ce:	8f75                	and	a4,a4,a3
   173d0:	97b2                	add	a5,a5,a2
   173d2:	97a6                	add	a5,a5,s1
   173d4:	01079613          	slli	a2,a5,0x10
   173d8:	8f51                	or	a4,a4,a2
   173da:	fee2ae23          	sw	a4,-4(t0)
   173de:	0107d493          	srli	s1,a5,0x10
   173e2:	fcbfe2e3          	bltu	t6,a1,173a6 <__multiply+0xa2>
   173e6:	01e307b3          	add	a5,t1,t5
   173ea:	c384                	sw	s1,0(a5)
   173ec:	00082f83          	lw	t6,0(a6)
   173f0:	010fdf93          	srli	t6,t6,0x10
   173f4:	f80f8ce3          	beqz	t6,1738c <__multiply+0x88>
   173f8:	00032703          	lw	a4,0(t1)
   173fc:	829a                	mv	t0,t1
   173fe:	8676                	mv	a2,t4
   17400:	84ba                	mv	s1,a4
   17402:	4381                	li	t2,0
   17404:	421c                	lw	a5,0(a2)
   17406:	0104d993          	srli	s3,s1,0x10
   1740a:	8f75                	and	a4,a4,a3
   1740c:	8ff5                	and	a5,a5,a3
   1740e:	03f787b3          	mul	a5,a5,t6
   17412:	0042a483          	lw	s1,4(t0)
   17416:	0291                	addi	t0,t0,4
   17418:	0611                	addi	a2,a2,4
   1741a:	00d4f933          	and	s2,s1,a3
   1741e:	979e                	add	a5,a5,t2
   17420:	97ce                	add	a5,a5,s3
   17422:	01079393          	slli	t2,a5,0x10
   17426:	00e3e733          	or	a4,t2,a4
   1742a:	fee2ae23          	sw	a4,-4(t0)
   1742e:	ffe65703          	lhu	a4,-2(a2)
   17432:	83c1                	srli	a5,a5,0x10
   17434:	03f70733          	mul	a4,a4,t6
   17438:	974a                	add	a4,a4,s2
   1743a:	973e                	add	a4,a4,a5
   1743c:	01075393          	srli	t2,a4,0x10
   17440:	fcb662e3          	bltu	a2,a1,17404 <__multiply+0x100>
   17444:	01e307b3          	add	a5,t1,t5
   17448:	c398                	sw	a4,0(a5)
   1744a:	0811                	addi	a6,a6,4
   1744c:	0311                	addi	t1,t1,4
   1744e:	f5c863e3          	bltu	a6,t3,17394 <__multiply+0x90>
   17452:	00804563          	bgtz	s0,1745c <__multiply+0x158>
   17456:	a039                	j	17464 <__multiply+0x160>
   17458:	147d                	addi	s0,s0,-1
   1745a:	c409                	beqz	s0,17464 <__multiply+0x160>
   1745c:	ffc8a783          	lw	a5,-4(a7)
   17460:	18f1                	addi	a7,a7,-4
   17462:	dbfd                	beqz	a5,17458 <__multiply+0x154>
   17464:	40f2                	lw	ra,28(sp)
   17466:	c900                	sw	s0,16(a0)
   17468:	4462                	lw	s0,24(sp)
   1746a:	44d2                	lw	s1,20(sp)
   1746c:	4942                	lw	s2,16(sp)
   1746e:	49b2                	lw	s3,12(sp)
   17470:	4a22                	lw	s4,8(sp)
   17472:	6105                	addi	sp,sp,32
   17474:	8082                	ret
   17476:	409587b3          	sub	a5,a1,s1
   1747a:	17ad                	addi	a5,a5,-21
   1747c:	9bf1                	andi	a5,a5,-4
   1747e:	00478f13          	addi	t5,a5,4
   17482:	bdf5                	j	1737e <__multiply+0x7a>
   17484:	66f1                	lui	a3,0x1c
   17486:	6571                	lui	a0,0x1c
   17488:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   1748c:	4601                	li	a2,0
   1748e:	16200593          	li	a1,354
   17492:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   17496:	693000ef          	jal	18328 <__assert_func>

0001749a <__pow5mult>:
   1749a:	1101                	addi	sp,sp,-32
   1749c:	cc22                	sw	s0,24(sp)
   1749e:	c84a                	sw	s2,16(sp)
   174a0:	c64e                	sw	s3,12(sp)
   174a2:	ce06                	sw	ra,28(sp)
   174a4:	00367793          	andi	a5,a2,3
   174a8:	8432                	mv	s0,a2
   174aa:	89aa                	mv	s3,a0
   174ac:	892e                	mv	s2,a1
   174ae:	ebad                	bnez	a5,17520 <__pow5mult+0x86>
   174b0:	8409                	srai	s0,s0,0x2
   174b2:	c431                	beqz	s0,174fe <__pow5mult+0x64>
   174b4:	ca26                	sw	s1,20(sp)
   174b6:	0409a483          	lw	s1,64(s3)
   174ba:	ccbd                	beqz	s1,17538 <__pow5mult+0x9e>
   174bc:	00147793          	andi	a5,s0,1
   174c0:	eb89                	bnez	a5,174d2 <__pow5mult+0x38>
   174c2:	8405                	srai	s0,s0,0x1
   174c4:	cc05                	beqz	s0,174fc <__pow5mult+0x62>
   174c6:	4088                	lw	a0,0(s1)
   174c8:	c131                	beqz	a0,1750c <__pow5mult+0x72>
   174ca:	84aa                	mv	s1,a0
   174cc:	00147793          	andi	a5,s0,1
   174d0:	dbed                	beqz	a5,174c2 <__pow5mult+0x28>
   174d2:	8626                	mv	a2,s1
   174d4:	85ca                	mv	a1,s2
   174d6:	854e                	mv	a0,s3
   174d8:	e2dff0ef          	jal	17304 <__multiply>
   174dc:	00090d63          	beqz	s2,174f6 <__pow5mult+0x5c>
   174e0:	00492703          	lw	a4,4(s2)
   174e4:	0449a783          	lw	a5,68(s3)
   174e8:	070a                	slli	a4,a4,0x2
   174ea:	97ba                	add	a5,a5,a4
   174ec:	4398                	lw	a4,0(a5)
   174ee:	00e92023          	sw	a4,0(s2)
   174f2:	0127a023          	sw	s2,0(a5)
   174f6:	8405                	srai	s0,s0,0x1
   174f8:	892a                	mv	s2,a0
   174fa:	f471                	bnez	s0,174c6 <__pow5mult+0x2c>
   174fc:	44d2                	lw	s1,20(sp)
   174fe:	40f2                	lw	ra,28(sp)
   17500:	4462                	lw	s0,24(sp)
   17502:	49b2                	lw	s3,12(sp)
   17504:	854a                	mv	a0,s2
   17506:	4942                	lw	s2,16(sp)
   17508:	6105                	addi	sp,sp,32
   1750a:	8082                	ret
   1750c:	8626                	mv	a2,s1
   1750e:	85a6                	mv	a1,s1
   17510:	854e                	mv	a0,s3
   17512:	df3ff0ef          	jal	17304 <__multiply>
   17516:	c088                	sw	a0,0(s1)
   17518:	00052023          	sw	zero,0(a0)
   1751c:	84aa                	mv	s1,a0
   1751e:	b77d                	j	174cc <__pow5mult+0x32>
   17520:	17fd                	addi	a5,a5,-1
   17522:	6771                	lui	a4,0x1c
   17524:	08070713          	addi	a4,a4,128 # 1c080 <p05.0>
   17528:	078a                	slli	a5,a5,0x2
   1752a:	97ba                	add	a5,a5,a4
   1752c:	4390                	lw	a2,0(a5)
   1752e:	4681                	li	a3,0
   17530:	ae3ff0ef          	jal	17012 <__multadd>
   17534:	892a                	mv	s2,a0
   17536:	bfad                	j	174b0 <__pow5mult+0x16>
   17538:	4585                	li	a1,1
   1753a:	854e                	mv	a0,s3
   1753c:	a59ff0ef          	jal	16f94 <_Balloc>
   17540:	84aa                	mv	s1,a0
   17542:	c919                	beqz	a0,17558 <__pow5mult+0xbe>
   17544:	27100793          	li	a5,625
   17548:	c95c                	sw	a5,20(a0)
   1754a:	4785                	li	a5,1
   1754c:	c91c                	sw	a5,16(a0)
   1754e:	04a9a023          	sw	a0,64(s3)
   17552:	00052023          	sw	zero,0(a0)
   17556:	b79d                	j	174bc <__pow5mult+0x22>
   17558:	66f1                	lui	a3,0x1c
   1755a:	6571                	lui	a0,0x1c
   1755c:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   17560:	4601                	li	a2,0
   17562:	14500593          	li	a1,325
   17566:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   1756a:	5bf000ef          	jal	18328 <__assert_func>

0001756e <__lshift>:
   1756e:	1101                	addi	sp,sp,-32
   17570:	c256                	sw	s5,4(sp)
   17572:	0105aa83          	lw	s5,16(a1)
   17576:	459c                	lw	a5,8(a1)
   17578:	c64e                	sw	s3,12(sp)
   1757a:	40565993          	srai	s3,a2,0x5
   1757e:	9ace                	add	s5,s5,s3
   17580:	cc22                	sw	s0,24(sp)
   17582:	ca26                	sw	s1,20(sp)
   17584:	c84a                	sw	s2,16(sp)
   17586:	c452                	sw	s4,8(sp)
   17588:	ce06                	sw	ra,28(sp)
   1758a:	001a8913          	addi	s2,s5,1
   1758e:	84ae                	mv	s1,a1
   17590:	8432                	mv	s0,a2
   17592:	41cc                	lw	a1,4(a1)
   17594:	8a2a                	mv	s4,a0
   17596:	0127d663          	bge	a5,s2,175a2 <__lshift+0x34>
   1759a:	0786                	slli	a5,a5,0x1
   1759c:	0585                	addi	a1,a1,1
   1759e:	ff27cee3          	blt	a5,s2,1759a <__lshift+0x2c>
   175a2:	8552                	mv	a0,s4
   175a4:	9f1ff0ef          	jal	16f94 <_Balloc>
   175a8:	cd5d                	beqz	a0,17666 <__lshift+0xf8>
   175aa:	01450813          	addi	a6,a0,20
   175ae:	01305e63          	blez	s3,175ca <__lshift+0x5c>
   175b2:	0995                	addi	s3,s3,5
   175b4:	098a                	slli	s3,s3,0x2
   175b6:	01350733          	add	a4,a0,s3
   175ba:	87c2                	mv	a5,a6
   175bc:	0791                	addi	a5,a5,4
   175be:	fe07ae23          	sw	zero,-4(a5)
   175c2:	fee79de3          	bne	a5,a4,175bc <__lshift+0x4e>
   175c6:	19b1                	addi	s3,s3,-20
   175c8:	984e                	add	a6,a6,s3
   175ca:	0104a883          	lw	a7,16(s1)
   175ce:	01448793          	addi	a5,s1,20
   175d2:	01f47613          	andi	a2,s0,31
   175d6:	088a                	slli	a7,a7,0x2
   175d8:	98be                	add	a7,a7,a5
   175da:	c63d                	beqz	a2,17648 <__lshift+0xda>
   175dc:	02000593          	li	a1,32
   175e0:	8d91                	sub	a1,a1,a2
   175e2:	8342                	mv	t1,a6
   175e4:	4681                	li	a3,0
   175e6:	4398                	lw	a4,0(a5)
   175e8:	0311                	addi	t1,t1,4
   175ea:	0791                	addi	a5,a5,4
   175ec:	00c71733          	sll	a4,a4,a2
   175f0:	8f55                	or	a4,a4,a3
   175f2:	fee32e23          	sw	a4,-4(t1)
   175f6:	ffc7a683          	lw	a3,-4(a5)
   175fa:	00b6d6b3          	srl	a3,a3,a1
   175fe:	ff17e4e3          	bltu	a5,a7,175e6 <__lshift+0x78>
   17602:	01548793          	addi	a5,s1,21
   17606:	4711                	li	a4,4
   17608:	00f8e863          	bltu	a7,a5,17618 <__lshift+0xaa>
   1760c:	409887b3          	sub	a5,a7,s1
   17610:	17ad                	addi	a5,a5,-21
   17612:	9bf1                	andi	a5,a5,-4
   17614:	00478713          	addi	a4,a5,4
   17618:	983a                	add	a6,a6,a4
   1761a:	00d82023          	sw	a3,0(a6)
   1761e:	e291                	bnez	a3,17622 <__lshift+0xb4>
   17620:	8956                	mv	s2,s5
   17622:	40d8                	lw	a4,4(s1)
   17624:	044a2783          	lw	a5,68(s4)
   17628:	40f2                	lw	ra,28(sp)
   1762a:	070a                	slli	a4,a4,0x2
   1762c:	97ba                	add	a5,a5,a4
   1762e:	4398                	lw	a4,0(a5)
   17630:	01252823          	sw	s2,16(a0)
   17634:	4462                	lw	s0,24(sp)
   17636:	c098                	sw	a4,0(s1)
   17638:	c384                	sw	s1,0(a5)
   1763a:	4942                	lw	s2,16(sp)
   1763c:	44d2                	lw	s1,20(sp)
   1763e:	49b2                	lw	s3,12(sp)
   17640:	4a22                	lw	s4,8(sp)
   17642:	4a92                	lw	s5,4(sp)
   17644:	6105                	addi	sp,sp,32
   17646:	8082                	ret
   17648:	4398                	lw	a4,0(a5)
   1764a:	0791                	addi	a5,a5,4
   1764c:	0811                	addi	a6,a6,4
   1764e:	fee82e23          	sw	a4,-4(a6)
   17652:	fd17f7e3          	bgeu	a5,a7,17620 <__lshift+0xb2>
   17656:	4398                	lw	a4,0(a5)
   17658:	0791                	addi	a5,a5,4
   1765a:	0811                	addi	a6,a6,4
   1765c:	fee82e23          	sw	a4,-4(a6)
   17660:	ff17e4e3          	bltu	a5,a7,17648 <__lshift+0xda>
   17664:	bf75                	j	17620 <__lshift+0xb2>
   17666:	66f1                	lui	a3,0x1c
   17668:	6571                	lui	a0,0x1c
   1766a:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   1766e:	4601                	li	a2,0
   17670:	1de00593          	li	a1,478
   17674:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   17678:	4b1000ef          	jal	18328 <__assert_func>

0001767c <__mcmp>:
   1767c:	4918                	lw	a4,16(a0)
   1767e:	499c                	lw	a5,16(a1)
   17680:	882a                	mv	a6,a0
   17682:	40f70533          	sub	a0,a4,a5
   17686:	02f71863          	bne	a4,a5,176b6 <__mcmp+0x3a>
   1768a:	078a                	slli	a5,a5,0x2
   1768c:	0851                	addi	a6,a6,20
   1768e:	05d1                	addi	a1,a1,20
   17690:	00f80733          	add	a4,a6,a5
   17694:	97ae                	add	a5,a5,a1
   17696:	a019                	j	1769c <__mcmp+0x20>
   17698:	00e87f63          	bgeu	a6,a4,176b6 <__mcmp+0x3a>
   1769c:	ffc72603          	lw	a2,-4(a4)
   176a0:	ffc7a683          	lw	a3,-4(a5)
   176a4:	1771                	addi	a4,a4,-4
   176a6:	17f1                	addi	a5,a5,-4
   176a8:	fed608e3          	beq	a2,a3,17698 <__mcmp+0x1c>
   176ac:	4505                	li	a0,1
   176ae:	00d67463          	bgeu	a2,a3,176b6 <__mcmp+0x3a>
   176b2:	557d                	li	a0,-1
   176b4:	8082                	ret
   176b6:	8082                	ret

000176b8 <__mdiff>:
   176b8:	4998                	lw	a4,16(a1)
   176ba:	4a1c                	lw	a5,16(a2)
   176bc:	1141                	addi	sp,sp,-16
   176be:	c422                	sw	s0,8(sp)
   176c0:	c226                	sw	s1,4(sp)
   176c2:	c606                	sw	ra,12(sp)
   176c4:	c04a                	sw	s2,0(sp)
   176c6:	842e                	mv	s0,a1
   176c8:	84b2                	mv	s1,a2
   176ca:	40f706b3          	sub	a3,a4,a5
   176ce:	12f71863          	bne	a4,a5,177fe <__mdiff+0x146>
   176d2:	00279693          	slli	a3,a5,0x2
   176d6:	01458613          	addi	a2,a1,20
   176da:	01448713          	addi	a4,s1,20
   176de:	00d607b3          	add	a5,a2,a3
   176e2:	9736                	add	a4,a4,a3
   176e4:	a019                	j	176ea <__mdiff+0x32>
   176e6:	12f67463          	bgeu	a2,a5,1780e <__mdiff+0x156>
   176ea:	ffc7a583          	lw	a1,-4(a5)
   176ee:	ffc72683          	lw	a3,-4(a4)
   176f2:	17f1                	addi	a5,a5,-4
   176f4:	1771                	addi	a4,a4,-4
   176f6:	fed588e3          	beq	a1,a3,176e6 <__mdiff+0x2e>
   176fa:	4905                	li	s2,1
   176fc:	00d5e663          	bltu	a1,a3,17708 <__mdiff+0x50>
   17700:	87a6                	mv	a5,s1
   17702:	4901                	li	s2,0
   17704:	84a2                	mv	s1,s0
   17706:	843e                	mv	s0,a5
   17708:	40cc                	lw	a1,4(s1)
   1770a:	88bff0ef          	jal	16f94 <_Balloc>
   1770e:	12050763          	beqz	a0,1783c <__mdiff+0x184>
   17712:	0104a883          	lw	a7,16(s1)
   17716:	01042283          	lw	t0,16(s0)
   1771a:	01448f93          	addi	t6,s1,20
   1771e:	00289313          	slli	t1,a7,0x2
   17722:	01440813          	addi	a6,s0,20
   17726:	028a                	slli	t0,t0,0x2
   17728:	01450593          	addi	a1,a0,20
   1772c:	6e41                	lui	t3,0x10
   1772e:	01252623          	sw	s2,12(a0)
   17732:	937e                	add	t1,t1,t6
   17734:	92c2                	add	t0,t0,a6
   17736:	8f2e                	mv	t5,a1
   17738:	8efe                	mv	t4,t6
   1773a:	4681                	li	a3,0
   1773c:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   1773e:	000ea703          	lw	a4,0(t4)
   17742:	00082603          	lw	a2,0(a6)
   17746:	0f11                	addi	t5,t5,4
   17748:	01c777b3          	and	a5,a4,t3
   1774c:	01c673b3          	and	t2,a2,t3
   17750:	407787b3          	sub	a5,a5,t2
   17754:	97b6                	add	a5,a5,a3
   17756:	8341                	srli	a4,a4,0x10
   17758:	8241                	srli	a2,a2,0x10
   1775a:	4107d693          	srai	a3,a5,0x10
   1775e:	8f11                	sub	a4,a4,a2
   17760:	9736                	add	a4,a4,a3
   17762:	01071693          	slli	a3,a4,0x10
   17766:	01c7f7b3          	and	a5,a5,t3
   1776a:	8fd5                	or	a5,a5,a3
   1776c:	0811                	addi	a6,a6,4
   1776e:	feff2e23          	sw	a5,-4(t5)
   17772:	0e91                	addi	t4,t4,4
   17774:	41075693          	srai	a3,a4,0x10
   17778:	fc5863e3          	bltu	a6,t0,1773e <__mdiff+0x86>
   1777c:	01540713          	addi	a4,s0,21
   17780:	40828433          	sub	s0,t0,s0
   17784:	142d                	addi	s0,s0,-21
   17786:	00e2b2b3          	sltu	t0,t0,a4
   1778a:	0012cf13          	xori	t5,t0,1
   1778e:	8009                	srli	s0,s0,0x2
   17790:	4711                	li	a4,4
   17792:	06028a63          	beqz	t0,17806 <__mdiff+0x14e>
   17796:	9fba                	add	t6,t6,a4
   17798:	00e58833          	add	a6,a1,a4
   1779c:	6ec1                	lui	t4,0x10
   1779e:	8e42                	mv	t3,a6
   177a0:	867e                	mv	a2,t6
   177a2:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   177a4:	086ff363          	bgeu	t6,t1,1782a <__mdiff+0x172>
   177a8:	421c                	lw	a5,0(a2)
   177aa:	0e11                	addi	t3,t3,4
   177ac:	0611                	addi	a2,a2,4
   177ae:	01d7f733          	and	a4,a5,t4
   177b2:	9736                	add	a4,a4,a3
   177b4:	0107d593          	srli	a1,a5,0x10
   177b8:	8741                	srai	a4,a4,0x10
   177ba:	972e                	add	a4,a4,a1
   177bc:	97b6                	add	a5,a5,a3
   177be:	01d7f7b3          	and	a5,a5,t4
   177c2:	01071693          	slli	a3,a4,0x10
   177c6:	8fd5                	or	a5,a5,a3
   177c8:	fefe2e23          	sw	a5,-4(t3)
   177cc:	41075693          	srai	a3,a4,0x10
   177d0:	fc666ce3          	bltu	a2,t1,177a8 <__mdiff+0xf0>
   177d4:	137d                	addi	t1,t1,-1
   177d6:	41f30333          	sub	t1,t1,t6
   177da:	ffc37313          	andi	t1,t1,-4
   177de:	00680733          	add	a4,a6,t1
   177e2:	e791                	bnez	a5,177ee <__mdiff+0x136>
   177e4:	ffc72783          	lw	a5,-4(a4)
   177e8:	18fd                	addi	a7,a7,-1
   177ea:	1771                	addi	a4,a4,-4
   177ec:	dfe5                	beqz	a5,177e4 <__mdiff+0x12c>
   177ee:	40b2                	lw	ra,12(sp)
   177f0:	4422                	lw	s0,8(sp)
   177f2:	01152823          	sw	a7,16(a0)
   177f6:	4492                	lw	s1,4(sp)
   177f8:	4902                	lw	s2,0(sp)
   177fa:	0141                	addi	sp,sp,16
   177fc:	8082                	ret
   177fe:	4905                	li	s2,1
   17800:	f006d0e3          	bgez	a3,17700 <__mdiff+0x48>
   17804:	b711                	j	17708 <__mdiff+0x50>
   17806:	00140713          	addi	a4,s0,1
   1780a:	070a                	slli	a4,a4,0x2
   1780c:	b769                	j	17796 <__mdiff+0xde>
   1780e:	4581                	li	a1,0
   17810:	f84ff0ef          	jal	16f94 <_Balloc>
   17814:	cd1d                	beqz	a0,17852 <__mdiff+0x19a>
   17816:	40b2                	lw	ra,12(sp)
   17818:	4422                	lw	s0,8(sp)
   1781a:	4785                	li	a5,1
   1781c:	c91c                	sw	a5,16(a0)
   1781e:	00052a23          	sw	zero,20(a0)
   17822:	4492                	lw	s1,4(sp)
   17824:	4902                	lw	s2,0(sp)
   17826:	0141                	addi	sp,sp,16
   17828:	8082                	ret
   1782a:	4701                	li	a4,0
   1782c:	000f1463          	bnez	t5,17834 <__mdiff+0x17c>
   17830:	972e                	add	a4,a4,a1
   17832:	bf45                	j	177e2 <__mdiff+0x12a>
   17834:	00241713          	slli	a4,s0,0x2
   17838:	972e                	add	a4,a4,a1
   1783a:	b765                	j	177e2 <__mdiff+0x12a>
   1783c:	66f1                	lui	a3,0x1c
   1783e:	6571                	lui	a0,0x1c
   17840:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   17844:	4601                	li	a2,0
   17846:	24500593          	li	a1,581
   1784a:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   1784e:	2db000ef          	jal	18328 <__assert_func>
   17852:	66f1                	lui	a3,0x1c
   17854:	6571                	lui	a0,0x1c
   17856:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   1785a:	4601                	li	a2,0
   1785c:	23700593          	li	a1,567
   17860:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   17864:	2c5000ef          	jal	18328 <__assert_func>

00017868 <__ulp>:
   17868:	7ff007b7          	lui	a5,0x7ff00
   1786c:	8dfd                	and	a1,a1,a5
   1786e:	fcc007b7          	lui	a5,0xfcc00
   17872:	95be                	add	a1,a1,a5
   17874:	4781                	li	a5,0
   17876:	00b05463          	blez	a1,1787e <__ulp+0x16>
   1787a:	853e                	mv	a0,a5
   1787c:	8082                	ret
   1787e:	40b005b3          	neg	a1,a1
   17882:	85d1                	srai	a1,a1,0x14
   17884:	47cd                	li	a5,19
   17886:	00b7c963          	blt	a5,a1,17898 <__ulp+0x30>
   1788a:	000807b7          	lui	a5,0x80
   1788e:	40b7d5b3          	sra	a1,a5,a1
   17892:	4781                	li	a5,0
   17894:	853e                	mv	a0,a5
   17896:	8082                	ret
   17898:	15b1                	addi	a1,a1,-20
   1789a:	4779                	li	a4,30
   1789c:	4785                	li	a5,1
   1789e:	00b74663          	blt	a4,a1,178aa <__ulp+0x42>
   178a2:	800007b7          	lui	a5,0x80000
   178a6:	00b7d7b3          	srl	a5,a5,a1
   178aa:	4581                	li	a1,0
   178ac:	853e                	mv	a0,a5
   178ae:	8082                	ret

000178b0 <__b2d>:
   178b0:	1101                	addi	sp,sp,-32
   178b2:	ca26                	sw	s1,20(sp)
   178b4:	4904                	lw	s1,16(a0)
   178b6:	cc22                	sw	s0,24(sp)
   178b8:	01450413          	addi	s0,a0,20
   178bc:	048a                	slli	s1,s1,0x2
   178be:	94a2                	add	s1,s1,s0
   178c0:	c84a                	sw	s2,16(sp)
   178c2:	ffc4a903          	lw	s2,-4(s1)
   178c6:	c64e                	sw	s3,12(sp)
   178c8:	c452                	sw	s4,8(sp)
   178ca:	854a                	mv	a0,s2
   178cc:	89ae                	mv	s3,a1
   178ce:	ce06                	sw	ra,28(sp)
   178d0:	8efff0ef          	jal	171be <__hi0bits>
   178d4:	02000713          	li	a4,32
   178d8:	40a707b3          	sub	a5,a4,a0
   178dc:	00f9a023          	sw	a5,0(s3)
   178e0:	47a9                	li	a5,10
   178e2:	ffc48a13          	addi	s4,s1,-4
   178e6:	06a7db63          	bge	a5,a0,1795c <__b2d+0xac>
   178ea:	ff550613          	addi	a2,a0,-11
   178ee:	03447d63          	bgeu	s0,s4,17928 <__b2d+0x78>
   178f2:	ff84a783          	lw	a5,-8(s1)
   178f6:	c629                	beqz	a2,17940 <__b2d+0x90>
   178f8:	40c706b3          	sub	a3,a4,a2
   178fc:	00d7d733          	srl	a4,a5,a3
   17900:	00c91933          	sll	s2,s2,a2
   17904:	00e96933          	or	s2,s2,a4
   17908:	ff848593          	addi	a1,s1,-8
   1790c:	3ff00737          	lui	a4,0x3ff00
   17910:	00e96733          	or	a4,s2,a4
   17914:	00c797b3          	sll	a5,a5,a2
   17918:	02b47863          	bgeu	s0,a1,17948 <__b2d+0x98>
   1791c:	ff44a603          	lw	a2,-12(s1)
   17920:	00d656b3          	srl	a3,a2,a3
   17924:	8fd5                	or	a5,a5,a3
   17926:	a00d                	j	17948 <__b2d+0x98>
   17928:	47ad                	li	a5,11
   1792a:	00f50a63          	beq	a0,a5,1793e <__b2d+0x8e>
   1792e:	00c91933          	sll	s2,s2,a2
   17932:	3ff00737          	lui	a4,0x3ff00
   17936:	00e96733          	or	a4,s2,a4
   1793a:	4781                	li	a5,0
   1793c:	a031                	j	17948 <__b2d+0x98>
   1793e:	4781                	li	a5,0
   17940:	3ff00737          	lui	a4,0x3ff00
   17944:	00e96733          	or	a4,s2,a4
   17948:	40f2                	lw	ra,28(sp)
   1794a:	4462                	lw	s0,24(sp)
   1794c:	44d2                	lw	s1,20(sp)
   1794e:	4942                	lw	s2,16(sp)
   17950:	49b2                	lw	s3,12(sp)
   17952:	4a22                	lw	s4,8(sp)
   17954:	853e                	mv	a0,a5
   17956:	85ba                	mv	a1,a4
   17958:	6105                	addi	sp,sp,32
   1795a:	8082                	ret
   1795c:	46ad                	li	a3,11
   1795e:	8e89                	sub	a3,a3,a0
   17960:	3ff007b7          	lui	a5,0x3ff00
   17964:	00d95733          	srl	a4,s2,a3
   17968:	8f5d                	or	a4,a4,a5
   1796a:	4781                	li	a5,0
   1796c:	01447663          	bgeu	s0,s4,17978 <__b2d+0xc8>
   17970:	ff84a783          	lw	a5,-8(s1)
   17974:	00d7d7b3          	srl	a5,a5,a3
   17978:	0555                	addi	a0,a0,21
   1797a:	00a91933          	sll	s2,s2,a0
   1797e:	00f967b3          	or	a5,s2,a5
   17982:	b7d9                	j	17948 <__b2d+0x98>

00017984 <__d2b>:
   17984:	7179                	addi	sp,sp,-48
   17986:	ca56                	sw	s5,20(sp)
   17988:	8aae                	mv	s5,a1
   1798a:	4585                	li	a1,1
   1798c:	d226                	sw	s1,36(sp)
   1798e:	ce4e                	sw	s3,28(sp)
   17990:	cc52                	sw	s4,24(sp)
   17992:	d606                	sw	ra,44(sp)
   17994:	d422                	sw	s0,40(sp)
   17996:	d04a                	sw	s2,32(sp)
   17998:	84b2                	mv	s1,a2
   1799a:	8a36                	mv	s4,a3
   1799c:	89ba                	mv	s3,a4
   1799e:	df6ff0ef          	jal	16f94 <_Balloc>
   179a2:	c955                	beqz	a0,17a56 <__d2b+0xd2>
   179a4:	00100737          	lui	a4,0x100
   179a8:	0144d913          	srli	s2,s1,0x14
   179ac:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe206b>
   179b0:	7ff97913          	andi	s2,s2,2047
   179b4:	842a                	mv	s0,a0
   179b6:	8fe5                	and	a5,a5,s1
   179b8:	00090363          	beqz	s2,179be <__d2b+0x3a>
   179bc:	8fd9                	or	a5,a5,a4
   179be:	c63e                	sw	a5,12(sp)
   179c0:	040a9263          	bnez	s5,17a04 <__d2b+0x80>
   179c4:	0068                	addi	a0,sp,12
   179c6:	84dff0ef          	jal	17212 <__lo0bits>
   179ca:	4732                	lw	a4,12(sp)
   179cc:	4485                	li	s1,1
   179ce:	c804                	sw	s1,16(s0)
   179d0:	c858                	sw	a4,20(s0)
   179d2:	02050793          	addi	a5,a0,32
   179d6:	06090063          	beqz	s2,17a36 <__d2b+0xb2>
   179da:	bcd90913          	addi	s2,s2,-1075
   179de:	993e                	add	s2,s2,a5
   179e0:	03500493          	li	s1,53
   179e4:	012a2023          	sw	s2,0(s4)
   179e8:	40f48533          	sub	a0,s1,a5
   179ec:	00a9a023          	sw	a0,0(s3)
   179f0:	50b2                	lw	ra,44(sp)
   179f2:	8522                	mv	a0,s0
   179f4:	5422                	lw	s0,40(sp)
   179f6:	5492                	lw	s1,36(sp)
   179f8:	5902                	lw	s2,32(sp)
   179fa:	49f2                	lw	s3,28(sp)
   179fc:	4a62                	lw	s4,24(sp)
   179fe:	4ad2                	lw	s5,20(sp)
   17a00:	6145                	addi	sp,sp,48
   17a02:	8082                	ret
   17a04:	0028                	addi	a0,sp,8
   17a06:	c456                	sw	s5,8(sp)
   17a08:	80bff0ef          	jal	17212 <__lo0bits>
   17a0c:	4732                	lw	a4,12(sp)
   17a0e:	87aa                	mv	a5,a0
   17a10:	c129                	beqz	a0,17a52 <__d2b+0xce>
   17a12:	4622                	lw	a2,8(sp)
   17a14:	02000693          	li	a3,32
   17a18:	8e89                	sub	a3,a3,a0
   17a1a:	00d716b3          	sll	a3,a4,a3
   17a1e:	00a75733          	srl	a4,a4,a0
   17a22:	8ed1                	or	a3,a3,a2
   17a24:	c63a                	sw	a4,12(sp)
   17a26:	00e034b3          	snez	s1,a4
   17a2a:	0485                	addi	s1,s1,1
   17a2c:	c854                	sw	a3,20(s0)
   17a2e:	cc18                	sw	a4,24(s0)
   17a30:	c804                	sw	s1,16(s0)
   17a32:	fa0914e3          	bnez	s2,179da <__d2b+0x56>
   17a36:	00249713          	slli	a4,s1,0x2
   17a3a:	9722                	add	a4,a4,s0
   17a3c:	4b08                	lw	a0,16(a4)
   17a3e:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee1c3a>
   17a42:	00fa2023          	sw	a5,0(s4)
   17a46:	f78ff0ef          	jal	171be <__hi0bits>
   17a4a:	0496                	slli	s1,s1,0x5
   17a4c:	40a48533          	sub	a0,s1,a0
   17a50:	bf71                	j	179ec <__d2b+0x68>
   17a52:	46a2                	lw	a3,8(sp)
   17a54:	bfc9                	j	17a26 <__d2b+0xa2>
   17a56:	66f1                	lui	a3,0x1c
   17a58:	6571                	lui	a0,0x1c
   17a5a:	d3468693          	addi	a3,a3,-716 # 1bd34 <__clzsi2+0x14e>
   17a5e:	4601                	li	a2,0
   17a60:	30f00593          	li	a1,783
   17a64:	da450513          	addi	a0,a0,-604 # 1bda4 <__clzsi2+0x1be>
   17a68:	0c1000ef          	jal	18328 <__assert_func>

00017a6c <__ratio>:
   17a6c:	7179                	addi	sp,sp,-48
   17a6e:	d422                	sw	s0,40(sp)
   17a70:	842e                	mv	s0,a1
   17a72:	082c                	addi	a1,sp,24
   17a74:	d606                	sw	ra,44(sp)
   17a76:	d226                	sw	s1,36(sp)
   17a78:	84aa                	mv	s1,a0
   17a7a:	e37ff0ef          	jal	178b0 <__b2d>
   17a7e:	c02a                	sw	a0,0(sp)
   17a80:	c22e                	sw	a1,4(sp)
   17a82:	2782                	fld	fa5,0(sp)
   17a84:	086c                	addi	a1,sp,28
   17a86:	8522                	mv	a0,s0
   17a88:	a43e                	fsd	fa5,8(sp)
   17a8a:	e27ff0ef          	jal	178b0 <__b2d>
   17a8e:	4818                	lw	a4,16(s0)
   17a90:	489c                	lw	a5,16(s1)
   17a92:	46f2                	lw	a3,28(sp)
   17a94:	c02a                	sw	a0,0(sp)
   17a96:	8f99                	sub	a5,a5,a4
   17a98:	4762                	lw	a4,24(sp)
   17a9a:	0796                	slli	a5,a5,0x5
   17a9c:	c22e                	sw	a1,4(sp)
   17a9e:	8f15                	sub	a4,a4,a3
   17aa0:	97ba                	add	a5,a5,a4
   17aa2:	02f05263          	blez	a5,17ac6 <__ratio+0x5a>
   17aa6:	46b2                	lw	a3,12(sp)
   17aa8:	07d2                	slli	a5,a5,0x14
   17aaa:	97b6                	add	a5,a5,a3
   17aac:	c63e                	sw	a5,12(sp)
   17aae:	2702                	fld	fa4,0(sp)
   17ab0:	27a2                	fld	fa5,8(sp)
   17ab2:	50b2                	lw	ra,44(sp)
   17ab4:	5422                	lw	s0,40(sp)
   17ab6:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   17aba:	5492                	lw	s1,36(sp)
   17abc:	a03e                	fsd	fa5,0(sp)
   17abe:	4502                	lw	a0,0(sp)
   17ac0:	4592                	lw	a1,4(sp)
   17ac2:	6145                	addi	sp,sp,48
   17ac4:	8082                	ret
   17ac6:	4692                	lw	a3,4(sp)
   17ac8:	07d2                	slli	a5,a5,0x14
   17aca:	40f687b3          	sub	a5,a3,a5
   17ace:	c23e                	sw	a5,4(sp)
   17ad0:	bff9                	j	17aae <__ratio+0x42>

00017ad2 <_mprec_log10>:
   17ad2:	47dd                	li	a5,23
   17ad4:	1141                	addi	sp,sp,-16
   17ad6:	00a7df63          	bge	a5,a0,17af4 <_mprec_log10+0x22>
   17ada:	ed81b787          	fld	fa5,-296(gp) # 1dc20 <__SDATA_BEGIN__+0x30>
   17ade:	ee01b707          	fld	fa4,-288(gp) # 1dc28 <__SDATA_BEGIN__+0x38>
   17ae2:	157d                	addi	a0,a0,-1
   17ae4:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   17ae8:	fd6d                	bnez	a0,17ae2 <_mprec_log10+0x10>
   17aea:	a43e                	fsd	fa5,8(sp)
   17aec:	4522                	lw	a0,8(sp)
   17aee:	45b2                	lw	a1,12(sp)
   17af0:	0141                	addi	sp,sp,16
   17af2:	8082                	ret
   17af4:	67f1                	lui	a5,0x1c
   17af6:	050e                	slli	a0,a0,0x3
   17af8:	0e078793          	addi	a5,a5,224 # 1c0e0 <__mprec_tens>
   17afc:	97aa                	add	a5,a5,a0
   17afe:	239c                	fld	fa5,0(a5)
   17b00:	a43e                	fsd	fa5,8(sp)
   17b02:	4522                	lw	a0,8(sp)
   17b04:	45b2                	lw	a1,12(sp)
   17b06:	0141                	addi	sp,sp,16
   17b08:	8082                	ret

00017b0a <__copybits>:
   17b0a:	4a14                	lw	a3,16(a2)
   17b0c:	15fd                	addi	a1,a1,-1
   17b0e:	8595                	srai	a1,a1,0x5
   17b10:	0585                	addi	a1,a1,1
   17b12:	01460793          	addi	a5,a2,20
   17b16:	068a                	slli	a3,a3,0x2
   17b18:	058a                	slli	a1,a1,0x2
   17b1a:	96be                	add	a3,a3,a5
   17b1c:	95aa                	add	a1,a1,a0
   17b1e:	02d7f163          	bgeu	a5,a3,17b40 <__copybits+0x36>
   17b22:	872a                	mv	a4,a0
   17b24:	0007a803          	lw	a6,0(a5)
   17b28:	0791                	addi	a5,a5,4
   17b2a:	0711                	addi	a4,a4,4
   17b2c:	ff072e23          	sw	a6,-4(a4)
   17b30:	fed7eae3          	bltu	a5,a3,17b24 <__copybits+0x1a>
   17b34:	40c687b3          	sub	a5,a3,a2
   17b38:	17ad                	addi	a5,a5,-21
   17b3a:	9bf1                	andi	a5,a5,-4
   17b3c:	0791                	addi	a5,a5,4
   17b3e:	953e                	add	a0,a0,a5
   17b40:	00b57763          	bgeu	a0,a1,17b4e <__copybits+0x44>
   17b44:	0511                	addi	a0,a0,4
   17b46:	fe052e23          	sw	zero,-4(a0)
   17b4a:	feb56de3          	bltu	a0,a1,17b44 <__copybits+0x3a>
   17b4e:	8082                	ret

00017b50 <__any_on>:
   17b50:	4918                	lw	a4,16(a0)
   17b52:	4055d613          	srai	a2,a1,0x5
   17b56:	01450693          	addi	a3,a0,20
   17b5a:	00c75d63          	bge	a4,a2,17b74 <__any_on+0x24>
   17b5e:	070a                	slli	a4,a4,0x2
   17b60:	00e687b3          	add	a5,a3,a4
   17b64:	02f6f863          	bgeu	a3,a5,17b94 <__any_on+0x44>
   17b68:	ffc7a703          	lw	a4,-4(a5)
   17b6c:	17f1                	addi	a5,a5,-4
   17b6e:	db7d                	beqz	a4,17b64 <__any_on+0x14>
   17b70:	4505                	li	a0,1
   17b72:	8082                	ret
   17b74:	00261793          	slli	a5,a2,0x2
   17b78:	97b6                	add	a5,a5,a3
   17b7a:	fee655e3          	bge	a2,a4,17b64 <__any_on+0x14>
   17b7e:	89fd                	andi	a1,a1,31
   17b80:	d1f5                	beqz	a1,17b64 <__any_on+0x14>
   17b82:	4390                	lw	a2,0(a5)
   17b84:	4505                	li	a0,1
   17b86:	00b65733          	srl	a4,a2,a1
   17b8a:	00b71733          	sll	a4,a4,a1
   17b8e:	fce60be3          	beq	a2,a4,17b64 <__any_on+0x14>
   17b92:	8082                	ret
   17b94:	4501                	li	a0,0
   17b96:	8082                	ret

00017b98 <_realloc_r>:
   17b98:	7179                	addi	sp,sp,-48
   17b9a:	d226                	sw	s1,36(sp)
   17b9c:	d606                	sw	ra,44(sp)
   17b9e:	84b2                	mv	s1,a2
   17ba0:	14058d63          	beqz	a1,17cfa <_realloc_r+0x162>
   17ba4:	d422                	sw	s0,40(sp)
   17ba6:	d04a                	sw	s2,32(sp)
   17ba8:	842e                	mv	s0,a1
   17baa:	ce4e                	sw	s3,28(sp)
   17bac:	ca56                	sw	s5,20(sp)
   17bae:	cc52                	sw	s4,24(sp)
   17bb0:	892a                	mv	s2,a0
   17bb2:	ce6fb0ef          	jal	13098 <__malloc_lock>
   17bb6:	ffc42703          	lw	a4,-4(s0)
   17bba:	00b48793          	addi	a5,s1,11
   17bbe:	46d9                	li	a3,22
   17bc0:	ff840a93          	addi	s5,s0,-8
   17bc4:	ffc77993          	andi	s3,a4,-4
   17bc8:	0af6ff63          	bgeu	a3,a5,17c86 <_realloc_r+0xee>
   17bcc:	ff87fa13          	andi	s4,a5,-8
   17bd0:	0a07ce63          	bltz	a5,17c8c <_realloc_r+0xf4>
   17bd4:	0a9a6c63          	bltu	s4,s1,17c8c <_realloc_r+0xf4>
   17bd8:	0d49d563          	bge	s3,s4,17ca2 <_realloc_r+0x10a>
   17bdc:	67f5                	lui	a5,0x1d
   17bde:	c462                	sw	s8,8(sp)
   17be0:	67878c13          	addi	s8,a5,1656 # 1d678 <__malloc_av_>
   17be4:	008c2603          	lw	a2,8(s8)
   17be8:	013a86b3          	add	a3,s5,s3
   17bec:	42dc                	lw	a5,4(a3)
   17bee:	12d60e63          	beq	a2,a3,17d2a <_realloc_r+0x192>
   17bf2:	ffe7f613          	andi	a2,a5,-2
   17bf6:	9636                	add	a2,a2,a3
   17bf8:	4250                	lw	a2,4(a2)
   17bfa:	8a05                	andi	a2,a2,1
   17bfc:	e27d                	bnez	a2,17ce2 <_realloc_r+0x14a>
   17bfe:	9bf1                	andi	a5,a5,-4
   17c00:	00f98633          	add	a2,s3,a5
   17c04:	09465963          	bge	a2,s4,17c96 <_realloc_r+0xfe>
   17c08:	8b05                	andi	a4,a4,1
   17c0a:	e70d                	bnez	a4,17c34 <_realloc_r+0x9c>
   17c0c:	c65e                	sw	s7,12(sp)
   17c0e:	ff842b83          	lw	s7,-8(s0)
   17c12:	c85a                	sw	s6,16(sp)
   17c14:	417a8bb3          	sub	s7,s5,s7
   17c18:	004ba703          	lw	a4,4(s7)
   17c1c:	9b71                	andi	a4,a4,-4
   17c1e:	97ba                	add	a5,a5,a4
   17c20:	01378b33          	add	s6,a5,s3
   17c24:	234b5f63          	bge	s6,s4,17e62 <_realloc_r+0x2ca>
   17c28:	00e98b33          	add	s6,s3,a4
   17c2c:	1d4b5463          	bge	s6,s4,17df4 <_realloc_r+0x25c>
   17c30:	4b42                	lw	s6,16(sp)
   17c32:	4bb2                	lw	s7,12(sp)
   17c34:	85a6                	mv	a1,s1
   17c36:	854a                	mv	a0,s2
   17c38:	ebdfa0ef          	jal	12af4 <_malloc_r>
   17c3c:	84aa                	mv	s1,a0
   17c3e:	2e050063          	beqz	a0,17f1e <_realloc_r+0x386>
   17c42:	ffc42783          	lw	a5,-4(s0)
   17c46:	ff850713          	addi	a4,a0,-8
   17c4a:	9bf9                	andi	a5,a5,-2
   17c4c:	97d6                	add	a5,a5,s5
   17c4e:	18e78d63          	beq	a5,a4,17de8 <_realloc_r+0x250>
   17c52:	ffc98613          	addi	a2,s3,-4
   17c56:	02400793          	li	a5,36
   17c5a:	20c7e063          	bltu	a5,a2,17e5a <_realloc_r+0x2c2>
   17c5e:	474d                	li	a4,19
   17c60:	16c76863          	bltu	a4,a2,17dd0 <_realloc_r+0x238>
   17c64:	87aa                	mv	a5,a0
   17c66:	8722                	mv	a4,s0
   17c68:	4314                	lw	a3,0(a4)
   17c6a:	c394                	sw	a3,0(a5)
   17c6c:	4354                	lw	a3,4(a4)
   17c6e:	c3d4                	sw	a3,4(a5)
   17c70:	4718                	lw	a4,8(a4)
   17c72:	c798                	sw	a4,8(a5)
   17c74:	85a2                	mv	a1,s0
   17c76:	854a                	mv	a0,s2
   17c78:	c5bfa0ef          	jal	128d2 <_free_r>
   17c7c:	854a                	mv	a0,s2
   17c7e:	c1cfb0ef          	jal	1309a <__malloc_unlock>
   17c82:	4c22                	lw	s8,8(sp)
   17c84:	a0a9                	j	17cce <_realloc_r+0x136>
   17c86:	4a41                	li	s4,16
   17c88:	f49a78e3          	bgeu	s4,s1,17bd8 <_realloc_r+0x40>
   17c8c:	47b1                	li	a5,12
   17c8e:	00f92023          	sw	a5,0(s2)
   17c92:	4481                	li	s1,0
   17c94:	a82d                	j	17cce <_realloc_r+0x136>
   17c96:	46dc                	lw	a5,12(a3)
   17c98:	4698                	lw	a4,8(a3)
   17c9a:	4c22                	lw	s8,8(sp)
   17c9c:	89b2                	mv	s3,a2
   17c9e:	c75c                	sw	a5,12(a4)
   17ca0:	c798                	sw	a4,8(a5)
   17ca2:	004aa783          	lw	a5,4(s5)
   17ca6:	414986b3          	sub	a3,s3,s4
   17caa:	463d                	li	a2,15
   17cac:	8b85                	andi	a5,a5,1
   17cae:	013a8733          	add	a4,s5,s3
   17cb2:	04d66a63          	bltu	a2,a3,17d06 <_realloc_r+0x16e>
   17cb6:	0137e7b3          	or	a5,a5,s3
   17cba:	00faa223          	sw	a5,4(s5)
   17cbe:	435c                	lw	a5,4(a4)
   17cc0:	0017e793          	ori	a5,a5,1
   17cc4:	c35c                	sw	a5,4(a4)
   17cc6:	854a                	mv	a0,s2
   17cc8:	bd2fb0ef          	jal	1309a <__malloc_unlock>
   17ccc:	84a2                	mv	s1,s0
   17cce:	5422                	lw	s0,40(sp)
   17cd0:	50b2                	lw	ra,44(sp)
   17cd2:	5902                	lw	s2,32(sp)
   17cd4:	49f2                	lw	s3,28(sp)
   17cd6:	4a62                	lw	s4,24(sp)
   17cd8:	4ad2                	lw	s5,20(sp)
   17cda:	8526                	mv	a0,s1
   17cdc:	5492                	lw	s1,36(sp)
   17cde:	6145                	addi	sp,sp,48
   17ce0:	8082                	ret
   17ce2:	8b05                	andi	a4,a4,1
   17ce4:	fb21                	bnez	a4,17c34 <_realloc_r+0x9c>
   17ce6:	c65e                	sw	s7,12(sp)
   17ce8:	ff842b83          	lw	s7,-8(s0)
   17cec:	c85a                	sw	s6,16(sp)
   17cee:	417a8bb3          	sub	s7,s5,s7
   17cf2:	004ba703          	lw	a4,4(s7)
   17cf6:	9b71                	andi	a4,a4,-4
   17cf8:	bf05                	j	17c28 <_realloc_r+0x90>
   17cfa:	50b2                	lw	ra,44(sp)
   17cfc:	5492                	lw	s1,36(sp)
   17cfe:	85b2                	mv	a1,a2
   17d00:	6145                	addi	sp,sp,48
   17d02:	df3fa06f          	j	12af4 <_malloc_r>
   17d06:	0147e7b3          	or	a5,a5,s4
   17d0a:	00faa223          	sw	a5,4(s5)
   17d0e:	014a85b3          	add	a1,s5,s4
   17d12:	0016e693          	ori	a3,a3,1
   17d16:	c1d4                	sw	a3,4(a1)
   17d18:	435c                	lw	a5,4(a4)
   17d1a:	05a1                	addi	a1,a1,8
   17d1c:	854a                	mv	a0,s2
   17d1e:	0017e793          	ori	a5,a5,1
   17d22:	c35c                	sw	a5,4(a4)
   17d24:	baffa0ef          	jal	128d2 <_free_r>
   17d28:	bf79                	j	17cc6 <_realloc_r+0x12e>
   17d2a:	9bf1                	andi	a5,a5,-4
   17d2c:	013786b3          	add	a3,a5,s3
   17d30:	010a0613          	addi	a2,s4,16
   17d34:	1ac6db63          	bge	a3,a2,17eea <_realloc_r+0x352>
   17d38:	8b05                	andi	a4,a4,1
   17d3a:	ee071de3          	bnez	a4,17c34 <_realloc_r+0x9c>
   17d3e:	c65e                	sw	s7,12(sp)
   17d40:	ff842b83          	lw	s7,-8(s0)
   17d44:	c85a                	sw	s6,16(sp)
   17d46:	417a8bb3          	sub	s7,s5,s7
   17d4a:	004ba703          	lw	a4,4(s7)
   17d4e:	9b71                	andi	a4,a4,-4
   17d50:	97ba                	add	a5,a5,a4
   17d52:	01378b33          	add	s6,a5,s3
   17d56:	eccb49e3          	blt	s6,a2,17c28 <_realloc_r+0x90>
   17d5a:	00cba783          	lw	a5,12(s7)
   17d5e:	008ba703          	lw	a4,8(s7)
   17d62:	ffc98613          	addi	a2,s3,-4
   17d66:	02400693          	li	a3,36
   17d6a:	c75c                	sw	a5,12(a4)
   17d6c:	c798                	sw	a4,8(a5)
   17d6e:	008b8493          	addi	s1,s7,8
   17d72:	1cc6e563          	bltu	a3,a2,17f3c <_realloc_r+0x3a4>
   17d76:	474d                	li	a4,19
   17d78:	87a6                	mv	a5,s1
   17d7a:	00c77e63          	bgeu	a4,a2,17d96 <_realloc_r+0x1fe>
   17d7e:	4018                	lw	a4,0(s0)
   17d80:	47ed                	li	a5,27
   17d82:	00eba423          	sw	a4,8(s7)
   17d86:	4058                	lw	a4,4(s0)
   17d88:	00eba623          	sw	a4,12(s7)
   17d8c:	1ac7ed63          	bltu	a5,a2,17f46 <_realloc_r+0x3ae>
   17d90:	0421                	addi	s0,s0,8
   17d92:	010b8793          	addi	a5,s7,16
   17d96:	4018                	lw	a4,0(s0)
   17d98:	c398                	sw	a4,0(a5)
   17d9a:	4058                	lw	a4,4(s0)
   17d9c:	c3d8                	sw	a4,4(a5)
   17d9e:	4418                	lw	a4,8(s0)
   17da0:	c798                	sw	a4,8(a5)
   17da2:	014b8733          	add	a4,s7,s4
   17da6:	414b0b33          	sub	s6,s6,s4
   17daa:	00ec2423          	sw	a4,8(s8)
   17dae:	001b6793          	ori	a5,s6,1
   17db2:	c35c                	sw	a5,4(a4)
   17db4:	004ba783          	lw	a5,4(s7)
   17db8:	854a                	mv	a0,s2
   17dba:	8b85                	andi	a5,a5,1
   17dbc:	0147e7b3          	or	a5,a5,s4
   17dc0:	00fba223          	sw	a5,4(s7)
   17dc4:	ad6fb0ef          	jal	1309a <__malloc_unlock>
   17dc8:	4b42                	lw	s6,16(sp)
   17dca:	4bb2                	lw	s7,12(sp)
   17dcc:	4c22                	lw	s8,8(sp)
   17dce:	b701                	j	17cce <_realloc_r+0x136>
   17dd0:	4014                	lw	a3,0(s0)
   17dd2:	476d                	li	a4,27
   17dd4:	c114                	sw	a3,0(a0)
   17dd6:	4054                	lw	a3,4(s0)
   17dd8:	c154                	sw	a3,4(a0)
   17dda:	0ec76d63          	bltu	a4,a2,17ed4 <_realloc_r+0x33c>
   17dde:	00840713          	addi	a4,s0,8
   17de2:	00850793          	addi	a5,a0,8
   17de6:	b549                	j	17c68 <_realloc_r+0xd0>
   17de8:	ffc52783          	lw	a5,-4(a0)
   17dec:	4c22                	lw	s8,8(sp)
   17dee:	9bf1                	andi	a5,a5,-4
   17df0:	99be                	add	s3,s3,a5
   17df2:	bd45                	j	17ca2 <_realloc_r+0x10a>
   17df4:	00cba783          	lw	a5,12(s7)
   17df8:	008ba703          	lw	a4,8(s7)
   17dfc:	ffc98613          	addi	a2,s3,-4
   17e00:	02400693          	li	a3,36
   17e04:	c75c                	sw	a5,12(a4)
   17e06:	c798                	sw	a4,8(a5)
   17e08:	008b8493          	addi	s1,s7,8
   17e0c:	0ac6ef63          	bltu	a3,a2,17eca <_realloc_r+0x332>
   17e10:	474d                	li	a4,19
   17e12:	87a6                	mv	a5,s1
   17e14:	02c77663          	bgeu	a4,a2,17e40 <_realloc_r+0x2a8>
   17e18:	4018                	lw	a4,0(s0)
   17e1a:	47ed                	li	a5,27
   17e1c:	00eba423          	sw	a4,8(s7)
   17e20:	4058                	lw	a4,4(s0)
   17e22:	00eba623          	sw	a4,12(s7)
   17e26:	0ec7f863          	bgeu	a5,a2,17f16 <_realloc_r+0x37e>
   17e2a:	441c                	lw	a5,8(s0)
   17e2c:	00fba823          	sw	a5,16(s7)
   17e30:	445c                	lw	a5,12(s0)
   17e32:	00fbaa23          	sw	a5,20(s7)
   17e36:	06d60f63          	beq	a2,a3,17eb4 <_realloc_r+0x31c>
   17e3a:	0441                	addi	s0,s0,16
   17e3c:	018b8793          	addi	a5,s7,24
   17e40:	4018                	lw	a4,0(s0)
   17e42:	c398                	sw	a4,0(a5)
   17e44:	4058                	lw	a4,4(s0)
   17e46:	c3d8                	sw	a4,4(a5)
   17e48:	4418                	lw	a4,8(s0)
   17e4a:	c798                	sw	a4,8(a5)
   17e4c:	89da                	mv	s3,s6
   17e4e:	8ade                	mv	s5,s7
   17e50:	4b42                	lw	s6,16(sp)
   17e52:	4bb2                	lw	s7,12(sp)
   17e54:	4c22                	lw	s8,8(sp)
   17e56:	8426                	mv	s0,s1
   17e58:	b5a9                	j	17ca2 <_realloc_r+0x10a>
   17e5a:	85a2                	mv	a1,s0
   17e5c:	8d9fd0ef          	jal	15734 <memmove>
   17e60:	bd11                	j	17c74 <_realloc_r+0xdc>
   17e62:	46dc                	lw	a5,12(a3)
   17e64:	4698                	lw	a4,8(a3)
   17e66:	ffc98613          	addi	a2,s3,-4
   17e6a:	02400693          	li	a3,36
   17e6e:	c75c                	sw	a5,12(a4)
   17e70:	c798                	sw	a4,8(a5)
   17e72:	008ba703          	lw	a4,8(s7)
   17e76:	00cba783          	lw	a5,12(s7)
   17e7a:	008b8493          	addi	s1,s7,8
   17e7e:	c75c                	sw	a5,12(a4)
   17e80:	c798                	sw	a4,8(a5)
   17e82:	04c6e463          	bltu	a3,a2,17eca <_realloc_r+0x332>
   17e86:	474d                	li	a4,19
   17e88:	87a6                	mv	a5,s1
   17e8a:	fac77be3          	bgeu	a4,a2,17e40 <_realloc_r+0x2a8>
   17e8e:	4018                	lw	a4,0(s0)
   17e90:	47ed                	li	a5,27
   17e92:	00eba423          	sw	a4,8(s7)
   17e96:	4058                	lw	a4,4(s0)
   17e98:	00eba623          	sw	a4,12(s7)
   17e9c:	06c7fd63          	bgeu	a5,a2,17f16 <_realloc_r+0x37e>
   17ea0:	4418                	lw	a4,8(s0)
   17ea2:	02400793          	li	a5,36
   17ea6:	00eba823          	sw	a4,16(s7)
   17eaa:	4458                	lw	a4,12(s0)
   17eac:	00ebaa23          	sw	a4,20(s7)
   17eb0:	f8f615e3          	bne	a2,a5,17e3a <_realloc_r+0x2a2>
   17eb4:	4818                	lw	a4,16(s0)
   17eb6:	020b8793          	addi	a5,s7,32
   17eba:	0461                	addi	s0,s0,24
   17ebc:	00ebac23          	sw	a4,24(s7)
   17ec0:	ffc42703          	lw	a4,-4(s0)
   17ec4:	00ebae23          	sw	a4,28(s7)
   17ec8:	bfa5                	j	17e40 <_realloc_r+0x2a8>
   17eca:	85a2                	mv	a1,s0
   17ecc:	8526                	mv	a0,s1
   17ece:	867fd0ef          	jal	15734 <memmove>
   17ed2:	bfad                	j	17e4c <_realloc_r+0x2b4>
   17ed4:	4418                	lw	a4,8(s0)
   17ed6:	c518                	sw	a4,8(a0)
   17ed8:	4458                	lw	a4,12(s0)
   17eda:	c558                	sw	a4,12(a0)
   17edc:	04f60763          	beq	a2,a5,17f2a <_realloc_r+0x392>
   17ee0:	01040713          	addi	a4,s0,16
   17ee4:	01050793          	addi	a5,a0,16
   17ee8:	b341                	j	17c68 <_realloc_r+0xd0>
   17eea:	9ad2                	add	s5,s5,s4
   17eec:	414686b3          	sub	a3,a3,s4
   17ef0:	015c2423          	sw	s5,8(s8)
   17ef4:	0016e793          	ori	a5,a3,1
   17ef8:	00faa223          	sw	a5,4(s5)
   17efc:	ffc42783          	lw	a5,-4(s0)
   17f00:	854a                	mv	a0,s2
   17f02:	84a2                	mv	s1,s0
   17f04:	8b85                	andi	a5,a5,1
   17f06:	0147e7b3          	or	a5,a5,s4
   17f0a:	fef42e23          	sw	a5,-4(s0)
   17f0e:	98cfb0ef          	jal	1309a <__malloc_unlock>
   17f12:	4c22                	lw	s8,8(sp)
   17f14:	bb6d                	j	17cce <_realloc_r+0x136>
   17f16:	0421                	addi	s0,s0,8
   17f18:	010b8793          	addi	a5,s7,16
   17f1c:	b715                	j	17e40 <_realloc_r+0x2a8>
   17f1e:	854a                	mv	a0,s2
   17f20:	97afb0ef          	jal	1309a <__malloc_unlock>
   17f24:	4481                	li	s1,0
   17f26:	4c22                	lw	s8,8(sp)
   17f28:	b35d                	j	17cce <_realloc_r+0x136>
   17f2a:	4814                	lw	a3,16(s0)
   17f2c:	01840713          	addi	a4,s0,24
   17f30:	01850793          	addi	a5,a0,24
   17f34:	c914                	sw	a3,16(a0)
   17f36:	4854                	lw	a3,20(s0)
   17f38:	c954                	sw	a3,20(a0)
   17f3a:	b33d                	j	17c68 <_realloc_r+0xd0>
   17f3c:	85a2                	mv	a1,s0
   17f3e:	8526                	mv	a0,s1
   17f40:	ff4fd0ef          	jal	15734 <memmove>
   17f44:	bdb9                	j	17da2 <_realloc_r+0x20a>
   17f46:	441c                	lw	a5,8(s0)
   17f48:	00fba823          	sw	a5,16(s7)
   17f4c:	445c                	lw	a5,12(s0)
   17f4e:	00fbaa23          	sw	a5,20(s7)
   17f52:	00d60663          	beq	a2,a3,17f5e <_realloc_r+0x3c6>
   17f56:	0441                	addi	s0,s0,16
   17f58:	018b8793          	addi	a5,s7,24
   17f5c:	bd2d                	j	17d96 <_realloc_r+0x1fe>
   17f5e:	4818                	lw	a4,16(s0)
   17f60:	020b8793          	addi	a5,s7,32
   17f64:	00ebac23          	sw	a4,24(s7)
   17f68:	4858                	lw	a4,20(s0)
   17f6a:	0461                	addi	s0,s0,24
   17f6c:	00ebae23          	sw	a4,28(s7)
   17f70:	b51d                	j	17d96 <_realloc_r+0x1fe>

00017f72 <__smakebuf_r>:
   17f72:	00c59783          	lh	a5,12(a1)
   17f76:	7119                	addi	sp,sp,-128
   17f78:	dca2                	sw	s0,120(sp)
   17f7a:	de86                	sw	ra,124(sp)
   17f7c:	0027f713          	andi	a4,a5,2
   17f80:	842e                	mv	s0,a1
   17f82:	cb19                	beqz	a4,17f98 <__smakebuf_r+0x26>
   17f84:	04358793          	addi	a5,a1,67
   17f88:	c19c                	sw	a5,0(a1)
   17f8a:	c99c                	sw	a5,16(a1)
   17f8c:	4785                	li	a5,1
   17f8e:	c9dc                	sw	a5,20(a1)
   17f90:	50f6                	lw	ra,124(sp)
   17f92:	5466                	lw	s0,120(sp)
   17f94:	6109                	addi	sp,sp,128
   17f96:	8082                	ret
   17f98:	00e59583          	lh	a1,14(a1)
   17f9c:	daa6                	sw	s1,116(sp)
   17f9e:	d8ca                	sw	s2,112(sp)
   17fa0:	d6ce                	sw	s3,108(sp)
   17fa2:	d4d2                	sw	s4,104(sp)
   17fa4:	84aa                	mv	s1,a0
   17fa6:	0605c263          	bltz	a1,1800a <__smakebuf_r+0x98>
   17faa:	0030                	addi	a2,sp,8
   17fac:	22fd                	jal	1819a <_fstat_r>
   17fae:	04054c63          	bltz	a0,18006 <__smakebuf_r+0x94>
   17fb2:	47b2                	lw	a5,12(sp)
   17fb4:	693d                	lui	s2,0xf
   17fb6:	6985                	lui	s3,0x1
   17fb8:	00f97933          	and	s2,s2,a5
   17fbc:	77f9                	lui	a5,0xffffe
   17fbe:	993e                	add	s2,s2,a5
   17fc0:	00193913          	seqz	s2,s2
   17fc4:	40000a13          	li	s4,1024
   17fc8:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   17fcc:	85d2                	mv	a1,s4
   17fce:	8526                	mv	a0,s1
   17fd0:	b25fa0ef          	jal	12af4 <_malloc_r>
   17fd4:	00c41783          	lh	a5,12(s0)
   17fd8:	c539                	beqz	a0,18026 <__smakebuf_r+0xb4>
   17fda:	0807e793          	ori	a5,a5,128
   17fde:	c008                	sw	a0,0(s0)
   17fe0:	c808                	sw	a0,16(s0)
   17fe2:	00f41623          	sh	a5,12(s0)
   17fe6:	01442a23          	sw	s4,20(s0)
   17fea:	06091563          	bnez	s2,18054 <__smakebuf_r+0xe2>
   17fee:	0137e7b3          	or	a5,a5,s3
   17ff2:	50f6                	lw	ra,124(sp)
   17ff4:	00f41623          	sh	a5,12(s0)
   17ff8:	5466                	lw	s0,120(sp)
   17ffa:	54d6                	lw	s1,116(sp)
   17ffc:	5946                	lw	s2,112(sp)
   17ffe:	59b6                	lw	s3,108(sp)
   18000:	5a26                	lw	s4,104(sp)
   18002:	6109                	addi	sp,sp,128
   18004:	8082                	ret
   18006:	00c41783          	lh	a5,12(s0)
   1800a:	0807f793          	andi	a5,a5,128
   1800e:	4901                	li	s2,0
   18010:	cf95                	beqz	a5,1804c <__smakebuf_r+0xda>
   18012:	04000a13          	li	s4,64
   18016:	85d2                	mv	a1,s4
   18018:	8526                	mv	a0,s1
   1801a:	adbfa0ef          	jal	12af4 <_malloc_r>
   1801e:	00c41783          	lh	a5,12(s0)
   18022:	4981                	li	s3,0
   18024:	f95d                	bnez	a0,17fda <__smakebuf_r+0x68>
   18026:	2007f713          	andi	a4,a5,512
   1802a:	ef0d                	bnez	a4,18064 <__smakebuf_r+0xf2>
   1802c:	9bf1                	andi	a5,a5,-4
   1802e:	0027e793          	ori	a5,a5,2
   18032:	04340713          	addi	a4,s0,67
   18036:	00f41623          	sh	a5,12(s0)
   1803a:	4785                	li	a5,1
   1803c:	54d6                	lw	s1,116(sp)
   1803e:	5946                	lw	s2,112(sp)
   18040:	59b6                	lw	s3,108(sp)
   18042:	5a26                	lw	s4,104(sp)
   18044:	c018                	sw	a4,0(s0)
   18046:	c818                	sw	a4,16(s0)
   18048:	c85c                	sw	a5,20(s0)
   1804a:	b799                	j	17f90 <__smakebuf_r+0x1e>
   1804c:	40000a13          	li	s4,1024
   18050:	4981                	li	s3,0
   18052:	bfad                	j	17fcc <__smakebuf_r+0x5a>
   18054:	00e41583          	lh	a1,14(s0)
   18058:	8526                	mv	a0,s1
   1805a:	2aad                	jal	181d4 <_isatty_r>
   1805c:	e909                	bnez	a0,1806e <__smakebuf_r+0xfc>
   1805e:	00c41783          	lh	a5,12(s0)
   18062:	b771                	j	17fee <__smakebuf_r+0x7c>
   18064:	54d6                	lw	s1,116(sp)
   18066:	5946                	lw	s2,112(sp)
   18068:	59b6                	lw	s3,108(sp)
   1806a:	5a26                	lw	s4,104(sp)
   1806c:	b715                	j	17f90 <__smakebuf_r+0x1e>
   1806e:	00c45783          	lhu	a5,12(s0)
   18072:	9bf1                	andi	a5,a5,-4
   18074:	0017e793          	ori	a5,a5,1
   18078:	07c2                	slli	a5,a5,0x10
   1807a:	87c1                	srai	a5,a5,0x10
   1807c:	bf8d                	j	17fee <__smakebuf_r+0x7c>

0001807e <__swhatbuf_r>:
   1807e:	7159                	addi	sp,sp,-112
   18080:	d4a2                	sw	s0,104(sp)
   18082:	842e                	mv	s0,a1
   18084:	00e59583          	lh	a1,14(a1)
   18088:	d2a6                	sw	s1,100(sp)
   1808a:	d0ca                	sw	s2,96(sp)
   1808c:	d686                	sw	ra,108(sp)
   1808e:	84b2                	mv	s1,a2
   18090:	8936                	mv	s2,a3
   18092:	0205cb63          	bltz	a1,180c8 <__swhatbuf_r+0x4a>
   18096:	0030                	addi	a2,sp,8
   18098:	2209                	jal	1819a <_fstat_r>
   1809a:	02054763          	bltz	a0,180c8 <__swhatbuf_r+0x4a>
   1809e:	4732                	lw	a4,12(sp)
   180a0:	67bd                	lui	a5,0xf
   180a2:	50b6                	lw	ra,108(sp)
   180a4:	8ff9                	and	a5,a5,a4
   180a6:	7779                	lui	a4,0xffffe
   180a8:	97ba                	add	a5,a5,a4
   180aa:	5426                	lw	s0,104(sp)
   180ac:	0017b793          	seqz	a5,a5
   180b0:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   180b4:	40000713          	li	a4,1024
   180b8:	c098                	sw	a4,0(s1)
   180ba:	6505                	lui	a0,0x1
   180bc:	5496                	lw	s1,100(sp)
   180be:	5906                	lw	s2,96(sp)
   180c0:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   180c4:	6165                	addi	sp,sp,112
   180c6:	8082                	ret
   180c8:	00c45783          	lhu	a5,12(s0)
   180cc:	0807f793          	andi	a5,a5,128
   180d0:	cf91                	beqz	a5,180ec <__swhatbuf_r+0x6e>
   180d2:	50b6                	lw	ra,108(sp)
   180d4:	5426                	lw	s0,104(sp)
   180d6:	4781                	li	a5,0
   180d8:	00f92023          	sw	a5,0(s2)
   180dc:	04000713          	li	a4,64
   180e0:	c098                	sw	a4,0(s1)
   180e2:	5906                	lw	s2,96(sp)
   180e4:	5496                	lw	s1,100(sp)
   180e6:	4501                	li	a0,0
   180e8:	6165                	addi	sp,sp,112
   180ea:	8082                	ret
   180ec:	50b6                	lw	ra,108(sp)
   180ee:	5426                	lw	s0,104(sp)
   180f0:	00f92023          	sw	a5,0(s2)
   180f4:	40000713          	li	a4,1024
   180f8:	c098                	sw	a4,0(s1)
   180fa:	5906                	lw	s2,96(sp)
   180fc:	5496                	lw	s1,100(sp)
   180fe:	4501                	li	a0,0
   18100:	6165                	addi	sp,sp,112
   18102:	8082                	ret

00018104 <_setlocale_r>:
   18104:	1141                	addi	sp,sp,-16
   18106:	c606                	sw	ra,12(sp)
   18108:	c226                	sw	s1,4(sp)
   1810a:	c20d                	beqz	a2,1812c <_setlocale_r+0x28>
   1810c:	65f1                	lui	a1,0x1c
   1810e:	dfc58593          	addi	a1,a1,-516 # 1bdfc <__clzsi2+0x216>
   18112:	8532                	mv	a0,a2
   18114:	c422                	sw	s0,8(sp)
   18116:	8432                	mv	s0,a2
   18118:	28cd                	jal	1820a <strcmp>
   1811a:	64f1                	lui	s1,0x1c
   1811c:	e911                	bnez	a0,18130 <_setlocale_r+0x2c>
   1811e:	4422                	lw	s0,8(sp)
   18120:	df848513          	addi	a0,s1,-520 # 1bdf8 <__clzsi2+0x212>
   18124:	40b2                	lw	ra,12(sp)
   18126:	4492                	lw	s1,4(sp)
   18128:	0141                	addi	sp,sp,16
   1812a:	8082                	ret
   1812c:	64f1                	lui	s1,0x1c
   1812e:	bfcd                	j	18120 <_setlocale_r+0x1c>
   18130:	df848593          	addi	a1,s1,-520 # 1bdf8 <__clzsi2+0x212>
   18134:	8522                	mv	a0,s0
   18136:	28d1                	jal	1820a <strcmp>
   18138:	d17d                	beqz	a0,1811e <_setlocale_r+0x1a>
   1813a:	65f1                	lui	a1,0x1c
   1813c:	e1458593          	addi	a1,a1,-492 # 1be14 <__clzsi2+0x22e>
   18140:	8522                	mv	a0,s0
   18142:	20e1                	jal	1820a <strcmp>
   18144:	dd69                	beqz	a0,1811e <_setlocale_r+0x1a>
   18146:	4422                	lw	s0,8(sp)
   18148:	4501                	li	a0,0
   1814a:	bfe9                	j	18124 <_setlocale_r+0x20>

0001814c <__locale_mb_cur_max>:
   1814c:	e601c503          	lbu	a0,-416(gp) # 1dba8 <__global_locale+0x128>
   18150:	8082                	ret

00018152 <setlocale>:
   18152:	1141                	addi	sp,sp,-16
   18154:	c606                	sw	ra,12(sp)
   18156:	c226                	sw	s1,4(sp)
   18158:	c18d                	beqz	a1,1817a <setlocale+0x28>
   1815a:	c422                	sw	s0,8(sp)
   1815c:	842e                	mv	s0,a1
   1815e:	65f1                	lui	a1,0x1c
   18160:	dfc58593          	addi	a1,a1,-516 # 1bdfc <__clzsi2+0x216>
   18164:	8522                	mv	a0,s0
   18166:	2055                	jal	1820a <strcmp>
   18168:	64f1                	lui	s1,0x1c
   1816a:	e911                	bnez	a0,1817e <setlocale+0x2c>
   1816c:	4422                	lw	s0,8(sp)
   1816e:	df848513          	addi	a0,s1,-520 # 1bdf8 <__clzsi2+0x212>
   18172:	40b2                	lw	ra,12(sp)
   18174:	4492                	lw	s1,4(sp)
   18176:	0141                	addi	sp,sp,16
   18178:	8082                	ret
   1817a:	64f1                	lui	s1,0x1c
   1817c:	bfcd                	j	1816e <setlocale+0x1c>
   1817e:	df848593          	addi	a1,s1,-520 # 1bdf8 <__clzsi2+0x212>
   18182:	8522                	mv	a0,s0
   18184:	2059                	jal	1820a <strcmp>
   18186:	d17d                	beqz	a0,1816c <setlocale+0x1a>
   18188:	65f1                	lui	a1,0x1c
   1818a:	e1458593          	addi	a1,a1,-492 # 1be14 <__clzsi2+0x22e>
   1818e:	8522                	mv	a0,s0
   18190:	28ad                	jal	1820a <strcmp>
   18192:	dd69                	beqz	a0,1816c <setlocale+0x1a>
   18194:	4422                	lw	s0,8(sp)
   18196:	4501                	li	a0,0
   18198:	bfe9                	j	18172 <setlocale+0x20>

0001819a <_fstat_r>:
   1819a:	1141                	addi	sp,sp,-16
   1819c:	872e                	mv	a4,a1
   1819e:	c422                	sw	s0,8(sp)
   181a0:	c226                	sw	s1,4(sp)
   181a2:	842a                	mv	s0,a0
   181a4:	85b2                	mv	a1,a2
   181a6:	853a                	mv	a0,a4
   181a8:	c606                	sw	ra,12(sp)
   181aa:	f201a223          	sw	zero,-220(gp) # 1dc6c <errno>
   181ae:	3f8010ef          	jal	195a6 <_fstat>
   181b2:	57fd                	li	a5,-1
   181b4:	00f50763          	beq	a0,a5,181c2 <_fstat_r+0x28>
   181b8:	40b2                	lw	ra,12(sp)
   181ba:	4422                	lw	s0,8(sp)
   181bc:	4492                	lw	s1,4(sp)
   181be:	0141                	addi	sp,sp,16
   181c0:	8082                	ret
   181c2:	f241a783          	lw	a5,-220(gp) # 1dc6c <errno>
   181c6:	dbed                	beqz	a5,181b8 <_fstat_r+0x1e>
   181c8:	40b2                	lw	ra,12(sp)
   181ca:	c01c                	sw	a5,0(s0)
   181cc:	4422                	lw	s0,8(sp)
   181ce:	4492                	lw	s1,4(sp)
   181d0:	0141                	addi	sp,sp,16
   181d2:	8082                	ret

000181d4 <_isatty_r>:
   181d4:	1141                	addi	sp,sp,-16
   181d6:	c422                	sw	s0,8(sp)
   181d8:	c226                	sw	s1,4(sp)
   181da:	842a                	mv	s0,a0
   181dc:	852e                	mv	a0,a1
   181de:	c606                	sw	ra,12(sp)
   181e0:	f201a223          	sw	zero,-220(gp) # 1dc6c <errno>
   181e4:	400010ef          	jal	195e4 <_isatty>
   181e8:	57fd                	li	a5,-1
   181ea:	00f50763          	beq	a0,a5,181f8 <_isatty_r+0x24>
   181ee:	40b2                	lw	ra,12(sp)
   181f0:	4422                	lw	s0,8(sp)
   181f2:	4492                	lw	s1,4(sp)
   181f4:	0141                	addi	sp,sp,16
   181f6:	8082                	ret
   181f8:	f241a783          	lw	a5,-220(gp) # 1dc6c <errno>
   181fc:	dbed                	beqz	a5,181ee <_isatty_r+0x1a>
   181fe:	40b2                	lw	ra,12(sp)
   18200:	c01c                	sw	a5,0(s0)
   18202:	4422                	lw	s0,8(sp)
   18204:	4492                	lw	s1,4(sp)
   18206:	0141                	addi	sp,sp,16
   18208:	8082                	ret

0001820a <strcmp>:
   1820a:	00b56733          	or	a4,a0,a1
   1820e:	53fd                	li	t2,-1
   18210:	8b0d                	andi	a4,a4,3
   18212:	e779                	bnez	a4,182e0 <strcmp+0xd6>
   18214:	7f7f87b7          	lui	a5,0x7f7f8
   18218:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d9feb>
   1821c:	4110                	lw	a2,0(a0)
   1821e:	4194                	lw	a3,0(a1)
   18220:	00f672b3          	and	t0,a2,a5
   18224:	00f66333          	or	t1,a2,a5
   18228:	92be                	add	t0,t0,a5
   1822a:	0062e2b3          	or	t0,t0,t1
   1822e:	0c729763          	bne	t0,t2,182fc <strcmp+0xf2>
   18232:	06d61863          	bne	a2,a3,182a2 <strcmp+0x98>
   18236:	4150                	lw	a2,4(a0)
   18238:	41d4                	lw	a3,4(a1)
   1823a:	00f672b3          	and	t0,a2,a5
   1823e:	00f66333          	or	t1,a2,a5
   18242:	92be                	add	t0,t0,a5
   18244:	0062e2b3          	or	t0,t0,t1
   18248:	0a729863          	bne	t0,t2,182f8 <strcmp+0xee>
   1824c:	04d61b63          	bne	a2,a3,182a2 <strcmp+0x98>
   18250:	4510                	lw	a2,8(a0)
   18252:	4594                	lw	a3,8(a1)
   18254:	00f672b3          	and	t0,a2,a5
   18258:	00f66333          	or	t1,a2,a5
   1825c:	92be                	add	t0,t0,a5
   1825e:	0062e2b3          	or	t0,t0,t1
   18262:	0a729163          	bne	t0,t2,18304 <strcmp+0xfa>
   18266:	02d61e63          	bne	a2,a3,182a2 <strcmp+0x98>
   1826a:	4550                	lw	a2,12(a0)
   1826c:	45d4                	lw	a3,12(a1)
   1826e:	00f672b3          	and	t0,a2,a5
   18272:	00f66333          	or	t1,a2,a5
   18276:	92be                	add	t0,t0,a5
   18278:	0062e2b3          	or	t0,t0,t1
   1827c:	08729a63          	bne	t0,t2,18310 <strcmp+0x106>
   18280:	02d61163          	bne	a2,a3,182a2 <strcmp+0x98>
   18284:	4910                	lw	a2,16(a0)
   18286:	4994                	lw	a3,16(a1)
   18288:	00f672b3          	and	t0,a2,a5
   1828c:	00f66333          	or	t1,a2,a5
   18290:	92be                	add	t0,t0,a5
   18292:	0062e2b3          	or	t0,t0,t1
   18296:	08729363          	bne	t0,t2,1831c <strcmp+0x112>
   1829a:	0551                	addi	a0,a0,20
   1829c:	05d1                	addi	a1,a1,20
   1829e:	f6d60fe3          	beq	a2,a3,1821c <strcmp+0x12>
   182a2:	01061713          	slli	a4,a2,0x10
   182a6:	01069793          	slli	a5,a3,0x10
   182aa:	00f71c63          	bne	a4,a5,182c2 <strcmp+0xb8>
   182ae:	01065713          	srli	a4,a2,0x10
   182b2:	0106d793          	srli	a5,a3,0x10
   182b6:	40f70533          	sub	a0,a4,a5
   182ba:	0ff57593          	zext.b	a1,a0
   182be:	e991                	bnez	a1,182d2 <strcmp+0xc8>
   182c0:	8082                	ret
   182c2:	8341                	srli	a4,a4,0x10
   182c4:	83c1                	srli	a5,a5,0x10
   182c6:	40f70533          	sub	a0,a4,a5
   182ca:	0ff57593          	zext.b	a1,a0
   182ce:	e191                	bnez	a1,182d2 <strcmp+0xc8>
   182d0:	8082                	ret
   182d2:	0ff77713          	zext.b	a4,a4
   182d6:	0ff7f793          	zext.b	a5,a5
   182da:	40f70533          	sub	a0,a4,a5
   182de:	8082                	ret
   182e0:	00054603          	lbu	a2,0(a0)
   182e4:	0005c683          	lbu	a3,0(a1)
   182e8:	0505                	addi	a0,a0,1
   182ea:	0585                	addi	a1,a1,1
   182ec:	00d61363          	bne	a2,a3,182f2 <strcmp+0xe8>
   182f0:	fa65                	bnez	a2,182e0 <strcmp+0xd6>
   182f2:	40d60533          	sub	a0,a2,a3
   182f6:	8082                	ret
   182f8:	0511                	addi	a0,a0,4
   182fa:	0591                	addi	a1,a1,4
   182fc:	fed612e3          	bne	a2,a3,182e0 <strcmp+0xd6>
   18300:	4501                	li	a0,0
   18302:	8082                	ret
   18304:	0521                	addi	a0,a0,8
   18306:	05a1                	addi	a1,a1,8
   18308:	fcd61ce3          	bne	a2,a3,182e0 <strcmp+0xd6>
   1830c:	4501                	li	a0,0
   1830e:	8082                	ret
   18310:	0531                	addi	a0,a0,12
   18312:	05b1                	addi	a1,a1,12
   18314:	fcd616e3          	bne	a2,a3,182e0 <strcmp+0xd6>
   18318:	4501                	li	a0,0
   1831a:	8082                	ret
   1831c:	0541                	addi	a0,a0,16
   1831e:	05c1                	addi	a1,a1,16
   18320:	fcd610e3          	bne	a2,a3,182e0 <strcmp+0xd6>
   18324:	4501                	li	a0,0
   18326:	8082                	ret

00018328 <__assert_func>:
   18328:	f141a703          	lw	a4,-236(gp) # 1dc5c <_impure_ptr>
   1832c:	1141                	addi	sp,sp,-16
   1832e:	87b6                	mv	a5,a3
   18330:	8832                	mv	a6,a2
   18332:	c606                	sw	ra,12(sp)
   18334:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffe0078>
   18338:	86aa                	mv	a3,a0
   1833a:	872e                	mv	a4,a1
   1833c:	863e                	mv	a2,a5
   1833e:	00080c63          	beqz	a6,18356 <__assert_func+0x2e>
   18342:	67f1                	lui	a5,0x1c
   18344:	e0878793          	addi	a5,a5,-504 # 1be08 <__clzsi2+0x222>
   18348:	65f1                	lui	a1,0x1c
   1834a:	e1858593          	addi	a1,a1,-488 # 1be18 <__clzsi2+0x232>
   1834e:	8546                	mv	a0,a7
   18350:	2a81                	jal	184a0 <fiprintf>
   18352:	691000ef          	jal	191e2 <abort>
   18356:	6871                	lui	a6,0x1c
   18358:	e1480793          	addi	a5,a6,-492 # 1be14 <__clzsi2+0x22e>
   1835c:	e1480813          	addi	a6,a6,-492
   18360:	b7e5                	j	18348 <__assert_func+0x20>

00018362 <__assert>:
   18362:	1141                	addi	sp,sp,-16
   18364:	86b2                	mv	a3,a2
   18366:	4601                	li	a2,0
   18368:	c606                	sw	ra,12(sp)
   1836a:	fbfff0ef          	jal	18328 <__assert_func>

0001836e <_calloc_r>:
   1836e:	02c5b7b3          	mulhu	a5,a1,a2
   18372:	1141                	addi	sp,sp,-16
   18374:	c606                	sw	ra,12(sp)
   18376:	c422                	sw	s0,8(sp)
   18378:	02c585b3          	mul	a1,a1,a2
   1837c:	efa5                	bnez	a5,183f4 <_calloc_r+0x86>
   1837e:	f76fa0ef          	jal	12af4 <_malloc_r>
   18382:	842a                	mv	s0,a0
   18384:	cd25                	beqz	a0,183fc <_calloc_r+0x8e>
   18386:	ffc52603          	lw	a2,-4(a0)
   1838a:	02400713          	li	a4,36
   1838e:	9a71                	andi	a2,a2,-4
   18390:	1671                	addi	a2,a2,-4
   18392:	04c76063          	bltu	a4,a2,183d2 <_calloc_r+0x64>
   18396:	46cd                	li	a3,19
   18398:	87aa                	mv	a5,a0
   1839a:	02c6f163          	bgeu	a3,a2,183bc <_calloc_r+0x4e>
   1839e:	00052023          	sw	zero,0(a0)
   183a2:	00052223          	sw	zero,4(a0)
   183a6:	47ed                	li	a5,27
   183a8:	02c7fd63          	bgeu	a5,a2,183e2 <_calloc_r+0x74>
   183ac:	00052423          	sw	zero,8(a0)
   183b0:	00052623          	sw	zero,12(a0)
   183b4:	01050793          	addi	a5,a0,16
   183b8:	04e60863          	beq	a2,a4,18408 <_calloc_r+0x9a>
   183bc:	0007a023          	sw	zero,0(a5)
   183c0:	0007a223          	sw	zero,4(a5)
   183c4:	0007a423          	sw	zero,8(a5)
   183c8:	40b2                	lw	ra,12(sp)
   183ca:	8522                	mv	a0,s0
   183cc:	4422                	lw	s0,8(sp)
   183ce:	0141                	addi	sp,sp,16
   183d0:	8082                	ret
   183d2:	4581                	li	a1,0
   183d4:	a4cfa0ef          	jal	12620 <memset>
   183d8:	40b2                	lw	ra,12(sp)
   183da:	8522                	mv	a0,s0
   183dc:	4422                	lw	s0,8(sp)
   183de:	0141                	addi	sp,sp,16
   183e0:	8082                	ret
   183e2:	00850793          	addi	a5,a0,8
   183e6:	0007a023          	sw	zero,0(a5)
   183ea:	0007a223          	sw	zero,4(a5)
   183ee:	0007a423          	sw	zero,8(a5)
   183f2:	bfd9                	j	183c8 <_calloc_r+0x5a>
   183f4:	5e9000ef          	jal	191dc <__errno>
   183f8:	47b1                	li	a5,12
   183fa:	c11c                	sw	a5,0(a0)
   183fc:	4401                	li	s0,0
   183fe:	40b2                	lw	ra,12(sp)
   18400:	8522                	mv	a0,s0
   18402:	4422                	lw	s0,8(sp)
   18404:	0141                	addi	sp,sp,16
   18406:	8082                	ret
   18408:	00052823          	sw	zero,16(a0)
   1840c:	01850793          	addi	a5,a0,24
   18410:	00052a23          	sw	zero,20(a0)
   18414:	b765                	j	183bc <_calloc_r+0x4e>

00018416 <_mbtowc_r>:
   18416:	e1c1a783          	lw	a5,-484(gp) # 1db64 <__global_locale+0xe4>
   1841a:	8782                	jr	a5

0001841c <__ascii_mbtowc>:
   1841c:	c999                	beqz	a1,18432 <__ascii_mbtowc+0x16>
   1841e:	c61d                	beqz	a2,1844c <__ascii_mbtowc+0x30>
   18420:	ca95                	beqz	a3,18454 <__ascii_mbtowc+0x38>
   18422:	00064783          	lbu	a5,0(a2)
   18426:	c19c                	sw	a5,0(a1)
   18428:	00064503          	lbu	a0,0(a2)
   1842c:	00a03533          	snez	a0,a0
   18430:	8082                	ret
   18432:	1141                	addi	sp,sp,-16
   18434:	006c                	addi	a1,sp,12
   18436:	ce09                	beqz	a2,18450 <__ascii_mbtowc+0x34>
   18438:	c285                	beqz	a3,18458 <__ascii_mbtowc+0x3c>
   1843a:	00064783          	lbu	a5,0(a2)
   1843e:	c19c                	sw	a5,0(a1)
   18440:	00064503          	lbu	a0,0(a2)
   18444:	00a03533          	snez	a0,a0
   18448:	0141                	addi	sp,sp,16
   1844a:	8082                	ret
   1844c:	4501                	li	a0,0
   1844e:	8082                	ret
   18450:	4501                	li	a0,0
   18452:	bfdd                	j	18448 <__ascii_mbtowc+0x2c>
   18454:	5579                	li	a0,-2
   18456:	8082                	ret
   18458:	5579                	li	a0,-2
   1845a:	b7fd                	j	18448 <__ascii_mbtowc+0x2c>

0001845c <_wctomb_r>:
   1845c:	e181a783          	lw	a5,-488(gp) # 1db60 <__global_locale+0xe0>
   18460:	8782                	jr	a5

00018462 <__ascii_wctomb>:
   18462:	cd91                	beqz	a1,1847e <__ascii_wctomb+0x1c>
   18464:	0ff00793          	li	a5,255
   18468:	00c7e663          	bltu	a5,a2,18474 <__ascii_wctomb+0x12>
   1846c:	00c58023          	sb	a2,0(a1)
   18470:	4505                	li	a0,1
   18472:	8082                	ret
   18474:	08a00793          	li	a5,138
   18478:	c11c                	sw	a5,0(a0)
   1847a:	557d                	li	a0,-1
   1847c:	8082                	ret
   1847e:	4501                	li	a0,0
   18480:	8082                	ret

00018482 <_fiprintf_r>:
   18482:	7139                	addi	sp,sp,-64
   18484:	02c10313          	addi	t1,sp,44
   18488:	d636                	sw	a3,44(sp)
   1848a:	869a                	mv	a3,t1
   1848c:	ce06                	sw	ra,28(sp)
   1848e:	d83a                	sw	a4,48(sp)
   18490:	da3e                	sw	a5,52(sp)
   18492:	dc42                	sw	a6,56(sp)
   18494:	de46                	sw	a7,60(sp)
   18496:	c61a                	sw	t1,12(sp)
   18498:	280d                	jal	184ca <_vfiprintf_r>
   1849a:	40f2                	lw	ra,28(sp)
   1849c:	6121                	addi	sp,sp,64
   1849e:	8082                	ret

000184a0 <fiprintf>:
   184a0:	8e2a                	mv	t3,a0
   184a2:	7139                	addi	sp,sp,-64
   184a4:	f141a503          	lw	a0,-236(gp) # 1dc5c <_impure_ptr>
   184a8:	02810313          	addi	t1,sp,40
   184ac:	d432                	sw	a2,40(sp)
   184ae:	d636                	sw	a3,44(sp)
   184b0:	862e                	mv	a2,a1
   184b2:	869a                	mv	a3,t1
   184b4:	85f2                	mv	a1,t3
   184b6:	ce06                	sw	ra,28(sp)
   184b8:	d83a                	sw	a4,48(sp)
   184ba:	da3e                	sw	a5,52(sp)
   184bc:	dc42                	sw	a6,56(sp)
   184be:	de46                	sw	a7,60(sp)
   184c0:	c61a                	sw	t1,12(sp)
   184c2:	2021                	jal	184ca <_vfiprintf_r>
   184c4:	40f2                	lw	ra,28(sp)
   184c6:	6121                	addi	sp,sp,64
   184c8:	8082                	ret

000184ca <_vfiprintf_r>:
   184ca:	7169                	addi	sp,sp,-304
   184cc:	11312e23          	sw	s3,284(sp)
   184d0:	11512a23          	sw	s5,276(sp)
   184d4:	11612823          	sw	s6,272(sp)
   184d8:	11712623          	sw	s7,268(sp)
   184dc:	12112623          	sw	ra,300(sp)
   184e0:	11a12023          	sw	s10,256(sp)
   184e4:	8baa                	mv	s7,a0
   184e6:	8aae                	mv	s5,a1
   184e8:	89b2                	mv	s3,a2
   184ea:	8b36                	mv	s6,a3
   184ec:	c501                	beqz	a0,184f4 <_vfiprintf_r+0x2a>
   184ee:	595c                	lw	a5,52(a0)
   184f0:	300783e3          	beqz	a5,18ff6 <_vfiprintf_r+0xb2c>
   184f4:	00ca9703          	lh	a4,12(s5)
   184f8:	064aa783          	lw	a5,100(s5)
   184fc:	01271693          	slli	a3,a4,0x12
   18500:	0006cb63          	bltz	a3,18516 <_vfiprintf_r+0x4c>
   18504:	76f9                	lui	a3,0xffffe
   18506:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe006b>
   18508:	6609                	lui	a2,0x2
   1850a:	8f51                	or	a4,a4,a2
   1850c:	8ff5                	and	a5,a5,a3
   1850e:	00ea9623          	sh	a4,12(s5)
   18512:	06faa223          	sw	a5,100(s5)
   18516:	01279713          	slli	a4,a5,0x12
   1851a:	400740e3          	bltz	a4,1911a <_vfiprintf_r+0xc50>
   1851e:	00ca9783          	lh	a5,12(s5)
   18522:	0087f713          	andi	a4,a5,8
   18526:	22070363          	beqz	a4,1874c <_vfiprintf_r+0x282>
   1852a:	010aa703          	lw	a4,16(s5)
   1852e:	20070f63          	beqz	a4,1874c <_vfiprintf_r+0x282>
   18532:	8be9                	andi	a5,a5,26
   18534:	4729                	li	a4,10
   18536:	22e78763          	beq	a5,a4,18764 <_vfiprintf_r+0x29a>
   1853a:	67f1                	lui	a5,0x1c
   1853c:	4d01                	li	s10,0
   1853e:	11812423          	sw	s8,264(sp)
   18542:	11912223          	sw	s9,260(sp)
   18546:	04c10c13          	addi	s8,sp,76
   1854a:	2ac78793          	addi	a5,a5,684 # 1c2ac <_ctype_+0x104>
   1854e:	6cf1                	lui	s9,0x1c
   18550:	12812423          	sw	s0,296(sp)
   18554:	13212023          	sw	s2,288(sp)
   18558:	11412c23          	sw	s4,280(sp)
   1855c:	896a                	mv	s2,s10
   1855e:	12912223          	sw	s1,292(sp)
   18562:	dfee                	sw	s11,252(sp)
   18564:	c0e2                	sw	s8,64(sp)
   18566:	c482                	sw	zero,72(sp)
   18568:	c282                	sw	zero,68(sp)
   1856a:	8462                	mv	s0,s8
   1856c:	c202                	sw	zero,4(sp)
   1856e:	ca02                	sw	zero,20(sp)
   18570:	cc02                	sw	zero,24(sp)
   18572:	ce02                	sw	zero,28(sp)
   18574:	c03e                	sw	a5,0(sp)
   18576:	4a41                	li	s4,16
   18578:	418c8c93          	addi	s9,s9,1048 # 1c418 <zeroes.0>
   1857c:	8d5a                	mv	s10,s6
   1857e:	0009c783          	lbu	a5,0(s3)
   18582:	14078563          	beqz	a5,186cc <_vfiprintf_r+0x202>
   18586:	84ce                	mv	s1,s3
   18588:	02500713          	li	a4,37
   1858c:	20e78363          	beq	a5,a4,18792 <_vfiprintf_r+0x2c8>
   18590:	0014c783          	lbu	a5,1(s1)
   18594:	0485                	addi	s1,s1,1
   18596:	fbfd                	bnez	a5,1858c <_vfiprintf_r+0xc2>
   18598:	41348b33          	sub	s6,s1,s3
   1859c:	13348863          	beq	s1,s3,186cc <_vfiprintf_r+0x202>
   185a0:	4726                	lw	a4,72(sp)
   185a2:	4796                	lw	a5,68(sp)
   185a4:	01342023          	sw	s3,0(s0)
   185a8:	975a                	add	a4,a4,s6
   185aa:	0785                	addi	a5,a5,1
   185ac:	01642223          	sw	s6,4(s0)
   185b0:	c4ba                	sw	a4,72(sp)
   185b2:	c2be                	sw	a5,68(sp)
   185b4:	471d                	li	a4,7
   185b6:	0421                	addi	s0,s0,8
   185b8:	1ef74463          	blt	a4,a5,187a0 <_vfiprintf_r+0x2d6>
   185bc:	0004c783          	lbu	a5,0(s1)
   185c0:	995a                	add	s2,s2,s6
   185c2:	10078563          	beqz	a5,186cc <_vfiprintf_r+0x202>
   185c6:	0014c783          	lbu	a5,1(s1)
   185ca:	00148993          	addi	s3,s1,1
   185ce:	02010da3          	sb	zero,59(sp)
   185d2:	5dfd                	li	s11,-1
   185d4:	4b01                	li	s6,0
   185d6:	4801                	li	a6,0
   185d8:	05a00493          	li	s1,90
   185dc:	0985                	addi	s3,s3,1
   185de:	863e                	mv	a2,a5
   185e0:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   185e4:	02e4eb63          	bltu	s1,a4,1861a <_vfiprintf_r+0x150>
   185e8:	4782                	lw	a5,0(sp)
   185ea:	070a                	slli	a4,a4,0x2
   185ec:	973e                	add	a4,a4,a5
   185ee:	431c                	lw	a5,0(a4)
   185f0:	8782                	jr	a5
   185f2:	4b01                	li	s6,0
   185f4:	fd060793          	addi	a5,a2,-48
   185f8:	46a5                	li	a3,9
   185fa:	0009c603          	lbu	a2,0(s3)
   185fe:	002b1713          	slli	a4,s6,0x2
   18602:	9b3a                	add	s6,s6,a4
   18604:	0b06                	slli	s6,s6,0x1
   18606:	9b3e                	add	s6,s6,a5
   18608:	fd060793          	addi	a5,a2,-48
   1860c:	0985                	addi	s3,s3,1
   1860e:	fef6f6e3          	bgeu	a3,a5,185fa <_vfiprintf_r+0x130>
   18612:	fe060713          	addi	a4,a2,-32
   18616:	fce4f9e3          	bgeu	s1,a4,185e8 <_vfiprintf_r+0x11e>
   1861a:	ca4d                	beqz	a2,186cc <_vfiprintf_r+0x202>
   1861c:	08c10623          	sb	a2,140(sp)
   18620:	02010da3          	sb	zero,59(sp)
   18624:	4885                	li	a7,1
   18626:	4e05                	li	t3,1
   18628:	0164                	addi	s1,sp,140
   1862a:	4d81                	li	s11,0
   1862c:	4281                	li	t0,0
   1862e:	08487f93          	andi	t6,a6,132
   18632:	4726                	lw	a4,72(sp)
   18634:	4796                	lw	a5,68(sp)
   18636:	000f9663          	bnez	t6,18642 <_vfiprintf_r+0x178>
   1863a:	411b0eb3          	sub	t4,s6,a7
   1863e:	71d04b63          	bgtz	t4,18d54 <_vfiprintf_r+0x88a>
   18642:	03b14603          	lbu	a2,59(sp)
   18646:	ce11                	beqz	a2,18662 <_vfiprintf_r+0x198>
   18648:	03b10613          	addi	a2,sp,59
   1864c:	c010                	sw	a2,0(s0)
   1864e:	0785                	addi	a5,a5,1
   18650:	4605                	li	a2,1
   18652:	0705                	addi	a4,a4,1
   18654:	c050                	sw	a2,4(s0)
   18656:	c4ba                	sw	a4,72(sp)
   18658:	c2be                	sw	a5,68(sp)
   1865a:	461d                	li	a2,7
   1865c:	0421                	addi	s0,s0,8
   1865e:	1af64363          	blt	a2,a5,18804 <_vfiprintf_r+0x33a>
   18662:	00028e63          	beqz	t0,1867e <_vfiprintf_r+0x1b4>
   18666:	1870                	addi	a2,sp,60
   18668:	c010                	sw	a2,0(s0)
   1866a:	0785                	addi	a5,a5,1
   1866c:	4609                	li	a2,2
   1866e:	0709                	addi	a4,a4,2
   18670:	c050                	sw	a2,4(s0)
   18672:	c4ba                	sw	a4,72(sp)
   18674:	c2be                	sw	a5,68(sp)
   18676:	461d                	li	a2,7
   18678:	0421                	addi	s0,s0,8
   1867a:	78f64663          	blt	a2,a5,18e06 <_vfiprintf_r+0x93c>
   1867e:	08000613          	li	a2,128
   18682:	52cf8a63          	beq	t6,a2,18bb6 <_vfiprintf_r+0x6ec>
   18686:	41cd8db3          	sub	s11,s11,t3
   1868a:	5db04d63          	bgtz	s11,18c64 <_vfiprintf_r+0x79a>
   1868e:	9772                	add	a4,a4,t3
   18690:	0785                	addi	a5,a5,1
   18692:	c004                	sw	s1,0(s0)
   18694:	01c42223          	sw	t3,4(s0)
   18698:	c4ba                	sw	a4,72(sp)
   1869a:	c2be                	sw	a5,68(sp)
   1869c:	461d                	li	a2,7
   1869e:	0421                	addi	s0,s0,8
   186a0:	64f64e63          	blt	a2,a5,18cfc <_vfiprintf_r+0x832>
   186a4:	00487813          	andi	a6,a6,4
   186a8:	00080663          	beqz	a6,186b4 <_vfiprintf_r+0x1ea>
   186ac:	411b04b3          	sub	s1,s6,a7
   186b0:	16904e63          	bgtz	s1,1882c <_vfiprintf_r+0x362>
   186b4:	011b5363          	bge	s6,a7,186ba <_vfiprintf_r+0x1f0>
   186b8:	8b46                	mv	s6,a7
   186ba:	995a                	add	s2,s2,s6
   186bc:	0e071a63          	bnez	a4,187b0 <_vfiprintf_r+0x2e6>
   186c0:	0009c783          	lbu	a5,0(s3)
   186c4:	c282                	sw	zero,68(sp)
   186c6:	8462                	mv	s0,s8
   186c8:	ea079fe3          	bnez	a5,18586 <_vfiprintf_r+0xbc>
   186cc:	47a6                	lw	a5,72(sp)
   186ce:	8d4a                	mv	s10,s2
   186d0:	0e078863          	beqz	a5,187c0 <_vfiprintf_r+0x2f6>
   186d4:	0090                	addi	a2,sp,64
   186d6:	85d6                	mv	a1,s5
   186d8:	855e                	mv	a0,s7
   186da:	e0cfc0ef          	jal	14ce6 <__sprint_r>
   186de:	a0cd                	j	187c0 <_vfiprintf_r+0x2f6>
   186e0:	000d2b03          	lw	s6,0(s10)
   186e4:	0d11                	addi	s10,s10,4
   186e6:	280b4c63          	bltz	s6,1897e <_vfiprintf_r+0x4b4>
   186ea:	0009c783          	lbu	a5,0(s3)
   186ee:	b5fd                	j	185dc <_vfiprintf_r+0x112>
   186f0:	0009c783          	lbu	a5,0(s3)
   186f4:	02086813          	ori	a6,a6,32
   186f8:	b5d5                	j	185dc <_vfiprintf_r+0x112>
   186fa:	01086813          	ori	a6,a6,16
   186fe:	02087793          	andi	a5,a6,32
   18702:	1a078363          	beqz	a5,188a8 <_vfiprintf_r+0x3de>
   18706:	0d1d                	addi	s10,s10,7
   18708:	ff8d7d13          	andi	s10,s10,-8
   1870c:	004d2703          	lw	a4,4(s10)
   18710:	000d2783          	lw	a5,0(s10)
   18714:	0d21                	addi	s10,s10,8
   18716:	88ba                	mv	a7,a4
   18718:	1a074863          	bltz	a4,188c8 <_vfiprintf_r+0x3fe>
   1871c:	1c0dc663          	bltz	s11,188e8 <_vfiprintf_r+0x41e>
   18720:	0117e733          	or	a4,a5,a7
   18724:	f7f87813          	andi	a6,a6,-129
   18728:	1c071063          	bnez	a4,188e8 <_vfiprintf_r+0x41e>
   1872c:	1e0d93e3          	bnez	s11,19112 <_vfiprintf_r+0xc48>
   18730:	03b14783          	lbu	a5,59(sp)
   18734:	4881                	li	a7,0
   18736:	4e01                	li	t3,0
   18738:	1984                	addi	s1,sp,240
   1873a:	c391                	beqz	a5,1873e <_vfiprintf_r+0x274>
   1873c:	0885                	addi	a7,a7,1
   1873e:	00287293          	andi	t0,a6,2
   18742:	ee0286e3          	beqz	t0,1862e <_vfiprintf_r+0x164>
   18746:	0889                	addi	a7,a7,2
   18748:	4289                	li	t0,2
   1874a:	b5d5                	j	1862e <_vfiprintf_r+0x164>
   1874c:	85d6                	mv	a1,s5
   1874e:	855e                	mv	a0,s7
   18750:	d87fc0ef          	jal	154d6 <__swsetup_r>
   18754:	1c0513e3          	bnez	a0,1911a <_vfiprintf_r+0xc50>
   18758:	00ca9783          	lh	a5,12(s5)
   1875c:	4729                	li	a4,10
   1875e:	8be9                	andi	a5,a5,26
   18760:	dce79de3          	bne	a5,a4,1853a <_vfiprintf_r+0x70>
   18764:	00ea9783          	lh	a5,14(s5)
   18768:	dc07c9e3          	bltz	a5,1853a <_vfiprintf_r+0x70>
   1876c:	12c12083          	lw	ra,300(sp)
   18770:	10012d03          	lw	s10,256(sp)
   18774:	86da                	mv	a3,s6
   18776:	864e                	mv	a2,s3
   18778:	11012b03          	lw	s6,272(sp)
   1877c:	11c12983          	lw	s3,284(sp)
   18780:	85d6                	mv	a1,s5
   18782:	855e                	mv	a0,s7
   18784:	11412a83          	lw	s5,276(sp)
   18788:	10c12b83          	lw	s7,268(sp)
   1878c:	6155                	addi	sp,sp,304
   1878e:	1b90006f          	j	19146 <__sbprintf>
   18792:	41348b33          	sub	s6,s1,s3
   18796:	e13495e3          	bne	s1,s3,185a0 <_vfiprintf_r+0xd6>
   1879a:	0004c783          	lbu	a5,0(s1)
   1879e:	b515                	j	185c2 <_vfiprintf_r+0xf8>
   187a0:	0090                	addi	a2,sp,64
   187a2:	85d6                	mv	a1,s5
   187a4:	855e                	mv	a0,s7
   187a6:	d40fc0ef          	jal	14ce6 <__sprint_r>
   187aa:	e911                	bnez	a0,187be <_vfiprintf_r+0x2f4>
   187ac:	8462                	mv	s0,s8
   187ae:	b539                	j	185bc <_vfiprintf_r+0xf2>
   187b0:	0090                	addi	a2,sp,64
   187b2:	85d6                	mv	a1,s5
   187b4:	855e                	mv	a0,s7
   187b6:	d30fc0ef          	jal	14ce6 <__sprint_r>
   187ba:	f00503e3          	beqz	a0,186c0 <_vfiprintf_r+0x1f6>
   187be:	8d4a                	mv	s10,s2
   187c0:	00cad783          	lhu	a5,12(s5)
   187c4:	12812403          	lw	s0,296(sp)
   187c8:	12412483          	lw	s1,292(sp)
   187cc:	0407f793          	andi	a5,a5,64
   187d0:	12012903          	lw	s2,288(sp)
   187d4:	11812a03          	lw	s4,280(sp)
   187d8:	10812c03          	lw	s8,264(sp)
   187dc:	10412c83          	lw	s9,260(sp)
   187e0:	5dfe                	lw	s11,252(sp)
   187e2:	12079ce3          	bnez	a5,1911a <_vfiprintf_r+0xc50>
   187e6:	12c12083          	lw	ra,300(sp)
   187ea:	11c12983          	lw	s3,284(sp)
   187ee:	11412a83          	lw	s5,276(sp)
   187f2:	11012b03          	lw	s6,272(sp)
   187f6:	10c12b83          	lw	s7,268(sp)
   187fa:	856a                	mv	a0,s10
   187fc:	10012d03          	lw	s10,256(sp)
   18800:	6155                	addi	sp,sp,304
   18802:	8082                	ret
   18804:	0090                	addi	a2,sp,64
   18806:	85d6                	mv	a1,s5
   18808:	855e                	mv	a0,s7
   1880a:	d246                	sw	a7,36(sp)
   1880c:	d072                	sw	t3,32(sp)
   1880e:	c842                	sw	a6,16(sp)
   18810:	c67e                	sw	t6,12(sp)
   18812:	c416                	sw	t0,8(sp)
   18814:	cd2fc0ef          	jal	14ce6 <__sprint_r>
   18818:	f15d                	bnez	a0,187be <_vfiprintf_r+0x2f4>
   1881a:	4726                	lw	a4,72(sp)
   1881c:	4796                	lw	a5,68(sp)
   1881e:	5892                	lw	a7,36(sp)
   18820:	5e02                	lw	t3,32(sp)
   18822:	4842                	lw	a6,16(sp)
   18824:	4fb2                	lw	t6,12(sp)
   18826:	42a2                	lw	t0,8(sp)
   18828:	8462                	mv	s0,s8
   1882a:	bd25                	j	18662 <_vfiprintf_r+0x198>
   1882c:	6371                	lui	t1,0x1c
   1882e:	4641                	li	a2,16
   18830:	4796                	lw	a5,68(sp)
   18832:	42830313          	addi	t1,t1,1064 # 1c428 <blanks.1>
   18836:	04965563          	bge	a2,s1,18880 <_vfiprintf_r+0x3b6>
   1883a:	86a2                	mv	a3,s0
   1883c:	4dc1                	li	s11,16
   1883e:	481d                	li	a6,7
   18840:	c446                	sw	a7,8(sp)
   18842:	841a                	mv	s0,t1
   18844:	a021                	j	1884c <_vfiprintf_r+0x382>
   18846:	14c1                	addi	s1,s1,-16
   18848:	029dd963          	bge	s11,s1,1887a <_vfiprintf_r+0x3b0>
   1884c:	0741                	addi	a4,a4,16
   1884e:	0785                	addi	a5,a5,1
   18850:	c280                	sw	s0,0(a3)
   18852:	01b6a223          	sw	s11,4(a3)
   18856:	c4ba                	sw	a4,72(sp)
   18858:	c2be                	sw	a5,68(sp)
   1885a:	06a1                	addi	a3,a3,8
   1885c:	fef855e3          	bge	a6,a5,18846 <_vfiprintf_r+0x37c>
   18860:	0090                	addi	a2,sp,64
   18862:	85d6                	mv	a1,s5
   18864:	855e                	mv	a0,s7
   18866:	c80fc0ef          	jal	14ce6 <__sprint_r>
   1886a:	f931                	bnez	a0,187be <_vfiprintf_r+0x2f4>
   1886c:	14c1                	addi	s1,s1,-16
   1886e:	4726                	lw	a4,72(sp)
   18870:	4796                	lw	a5,68(sp)
   18872:	86e2                	mv	a3,s8
   18874:	481d                	li	a6,7
   18876:	fc9dcbe3          	blt	s11,s1,1884c <_vfiprintf_r+0x382>
   1887a:	48a2                	lw	a7,8(sp)
   1887c:	8322                	mv	t1,s0
   1887e:	8436                	mv	s0,a3
   18880:	9726                	add	a4,a4,s1
   18882:	0785                	addi	a5,a5,1
   18884:	00642023          	sw	t1,0(s0)
   18888:	c044                	sw	s1,4(s0)
   1888a:	c4ba                	sw	a4,72(sp)
   1888c:	c2be                	sw	a5,68(sp)
   1888e:	461d                	li	a2,7
   18890:	e2f652e3          	bge	a2,a5,186b4 <_vfiprintf_r+0x1ea>
   18894:	0090                	addi	a2,sp,64
   18896:	85d6                	mv	a1,s5
   18898:	855e                	mv	a0,s7
   1889a:	c446                	sw	a7,8(sp)
   1889c:	c4afc0ef          	jal	14ce6 <__sprint_r>
   188a0:	fd19                	bnez	a0,187be <_vfiprintf_r+0x2f4>
   188a2:	4726                	lw	a4,72(sp)
   188a4:	48a2                	lw	a7,8(sp)
   188a6:	b539                	j	186b4 <_vfiprintf_r+0x1ea>
   188a8:	01087713          	andi	a4,a6,16
   188ac:	000d2783          	lw	a5,0(s10)
   188b0:	0d11                	addi	s10,s10,4
   188b2:	e371                	bnez	a4,18976 <_vfiprintf_r+0x4ac>
   188b4:	04087713          	andi	a4,a6,64
   188b8:	cb5d                	beqz	a4,1896e <_vfiprintf_r+0x4a4>
   188ba:	07c2                	slli	a5,a5,0x10
   188bc:	87c1                	srai	a5,a5,0x10
   188be:	41f7d893          	srai	a7,a5,0x1f
   188c2:	8746                	mv	a4,a7
   188c4:	e4075ce3          	bgez	a4,1871c <_vfiprintf_r+0x252>
   188c8:	02d00613          	li	a2,45
   188cc:	00f03733          	snez	a4,a5
   188d0:	411008b3          	neg	a7,a7
   188d4:	02c10da3          	sb	a2,59(sp)
   188d8:	40e888b3          	sub	a7,a7,a4
   188dc:	40f007b3          	neg	a5,a5
   188e0:	000dc463          	bltz	s11,188e8 <_vfiprintf_r+0x41e>
   188e4:	f7f87813          	andi	a6,a6,-129
   188e8:	62089c63          	bnez	a7,18f20 <_vfiprintf_r+0xa56>
   188ec:	4725                	li	a4,9
   188ee:	62f76963          	bltu	a4,a5,18f20 <_vfiprintf_r+0xa56>
   188f2:	03078793          	addi	a5,a5,48
   188f6:	0ff7f793          	zext.b	a5,a5
   188fa:	0ef107a3          	sb	a5,239(sp)
   188fe:	88ee                	mv	a7,s11
   18900:	01b04363          	bgtz	s11,18906 <_vfiprintf_r+0x43c>
   18904:	4885                	li	a7,1
   18906:	4e05                	li	t3,1
   18908:	0ef10493          	addi	s1,sp,239
   1890c:	03b14783          	lbu	a5,59(sp)
   18910:	e20796e3          	bnez	a5,1873c <_vfiprintf_r+0x272>
   18914:	b52d                	j	1873e <_vfiprintf_r+0x274>
   18916:	000d2483          	lw	s1,0(s10)
   1891a:	02010da3          	sb	zero,59(sp)
   1891e:	0d11                	addi	s10,s10,4
   18920:	70048463          	beqz	s1,19028 <_vfiprintf_r+0xb5e>
   18924:	c442                	sw	a6,8(sp)
   18926:	5e0dc163          	bltz	s11,18f08 <_vfiprintf_r+0xa3e>
   1892a:	866e                	mv	a2,s11
   1892c:	4581                	li	a1,0
   1892e:	8526                	mv	a0,s1
   18930:	c81fc0ef          	jal	155b0 <memchr>
   18934:	4822                	lw	a6,8(sp)
   18936:	8e6e                	mv	t3,s11
   18938:	c119                	beqz	a0,1893e <_vfiprintf_r+0x474>
   1893a:	40950e33          	sub	t3,a0,s1
   1893e:	03b14783          	lbu	a5,59(sp)
   18942:	fffe4893          	not	a7,t3
   18946:	41f8d893          	srai	a7,a7,0x1f
   1894a:	011e78b3          	and	a7,t3,a7
   1894e:	4d81                	li	s11,0
   18950:	4281                	li	t0,0
   18952:	de0795e3          	bnez	a5,1873c <_vfiprintf_r+0x272>
   18956:	b9e1                	j	1862e <_vfiprintf_r+0x164>
   18958:	000d2783          	lw	a5,0(s10)
   1895c:	02010da3          	sb	zero,59(sp)
   18960:	0d11                	addi	s10,s10,4
   18962:	08f10623          	sb	a5,140(sp)
   18966:	4885                	li	a7,1
   18968:	4e05                	li	t3,1
   1896a:	0164                	addi	s1,sp,140
   1896c:	b97d                	j	1862a <_vfiprintf_r+0x160>
   1896e:	20087713          	andi	a4,a6,512
   18972:	76071e63          	bnez	a4,190ee <_vfiprintf_r+0xc24>
   18976:	41f7d893          	srai	a7,a5,0x1f
   1897a:	8746                	mv	a4,a7
   1897c:	bb71                	j	18718 <_vfiprintf_r+0x24e>
   1897e:	41600b33          	neg	s6,s6
   18982:	0009c783          	lbu	a5,0(s3)
   18986:	00486813          	ori	a6,a6,4
   1898a:	b989                	j	185dc <_vfiprintf_r+0x112>
   1898c:	02b00713          	li	a4,43
   18990:	0009c783          	lbu	a5,0(s3)
   18994:	02e10da3          	sb	a4,59(sp)
   18998:	b191                	j	185dc <_vfiprintf_r+0x112>
   1899a:	0009c783          	lbu	a5,0(s3)
   1899e:	08086813          	ori	a6,a6,128
   189a2:	b92d                	j	185dc <_vfiprintf_r+0x112>
   189a4:	0009c603          	lbu	a2,0(s3)
   189a8:	02a00793          	li	a5,42
   189ac:	00198693          	addi	a3,s3,1
   189b0:	76f60863          	beq	a2,a5,19120 <_vfiprintf_r+0xc56>
   189b4:	fd060793          	addi	a5,a2,-48
   189b8:	4725                	li	a4,9
   189ba:	4d81                	li	s11,0
   189bc:	45a5                	li	a1,9
   189be:	02f76063          	bltu	a4,a5,189de <_vfiprintf_r+0x514>
   189c2:	0006c603          	lbu	a2,0(a3)
   189c6:	002d9713          	slli	a4,s11,0x2
   189ca:	9dba                	add	s11,s11,a4
   189cc:	0d86                	slli	s11,s11,0x1
   189ce:	9dbe                	add	s11,s11,a5
   189d0:	fd060793          	addi	a5,a2,-48
   189d4:	0685                	addi	a3,a3,1
   189d6:	fef5f6e3          	bgeu	a1,a5,189c2 <_vfiprintf_r+0x4f8>
   189da:	4a0dcb63          	bltz	s11,18e90 <_vfiprintf_r+0x9c6>
   189de:	89b6                	mv	s3,a3
   189e0:	b101                	j	185e0 <_vfiprintf_r+0x116>
   189e2:	855e                	mv	a0,s7
   189e4:	c442                	sw	a6,8(sp)
   189e6:	cd9fc0ef          	jal	156be <_localeconv_r>
   189ea:	415c                	lw	a5,4(a0)
   189ec:	853e                	mv	a0,a5
   189ee:	ce3e                	sw	a5,28(sp)
   189f0:	cd9f90ef          	jal	126c8 <strlen>
   189f4:	87aa                	mv	a5,a0
   189f6:	855e                	mv	a0,s7
   189f8:	cc3e                	sw	a5,24(sp)
   189fa:	cc5fc0ef          	jal	156be <_localeconv_r>
   189fe:	4518                	lw	a4,8(a0)
   18a00:	47e2                	lw	a5,24(sp)
   18a02:	4822                	lw	a6,8(sp)
   18a04:	ca3a                	sw	a4,20(sp)
   18a06:	ce0782e3          	beqz	a5,186ea <_vfiprintf_r+0x220>
   18a0a:	4752                	lw	a4,20(sp)
   18a0c:	0009c783          	lbu	a5,0(s3)
   18a10:	bc0706e3          	beqz	a4,185dc <_vfiprintf_r+0x112>
   18a14:	00074703          	lbu	a4,0(a4)
   18a18:	bc0702e3          	beqz	a4,185dc <_vfiprintf_r+0x112>
   18a1c:	40086813          	ori	a6,a6,1024
   18a20:	be75                	j	185dc <_vfiprintf_r+0x112>
   18a22:	0009c783          	lbu	a5,0(s3)
   18a26:	00186813          	ori	a6,a6,1
   18a2a:	be4d                	j	185dc <_vfiprintf_r+0x112>
   18a2c:	03b14703          	lbu	a4,59(sp)
   18a30:	0009c783          	lbu	a5,0(s3)
   18a34:	ba0714e3          	bnez	a4,185dc <_vfiprintf_r+0x112>
   18a38:	02000713          	li	a4,32
   18a3c:	02e10da3          	sb	a4,59(sp)
   18a40:	be71                	j	185dc <_vfiprintf_r+0x112>
   18a42:	01086713          	ori	a4,a6,16
   18a46:	02077793          	andi	a5,a4,32
   18a4a:	40078063          	beqz	a5,18e4a <_vfiprintf_r+0x980>
   18a4e:	0d1d                	addi	s10,s10,7
   18a50:	ff8d7d13          	andi	s10,s10,-8
   18a54:	000d2783          	lw	a5,0(s10)
   18a58:	004d2583          	lw	a1,4(s10)
   18a5c:	0d21                	addi	s10,s10,8
   18a5e:	02010da3          	sb	zero,59(sp)
   18a62:	bff77813          	andi	a6,a4,-1025
   18a66:	0a0dc163          	bltz	s11,18b08 <_vfiprintf_r+0x63e>
   18a6a:	00b7e633          	or	a2,a5,a1
   18a6e:	b7f77713          	andi	a4,a4,-1153
   18a72:	56061d63          	bnez	a2,18fec <_vfiprintf_r+0xb22>
   18a76:	8e42                	mv	t3,a6
   18a78:	4781                	li	a5,0
   18a7a:	883a                	mv	a6,a4
   18a7c:	060d9e63          	bnez	s11,18af8 <_vfiprintf_r+0x62e>
   18a80:	ca0798e3          	bnez	a5,18730 <_vfiprintf_r+0x266>
   18a84:	001e7e13          	andi	t3,t3,1
   18a88:	3e0e0463          	beqz	t3,18e70 <_vfiprintf_r+0x9a6>
   18a8c:	03000793          	li	a5,48
   18a90:	0ef107a3          	sb	a5,239(sp)
   18a94:	88f2                	mv	a7,t3
   18a96:	0ef10493          	addi	s1,sp,239
   18a9a:	bd8d                	j	1890c <_vfiprintf_r+0x442>
   18a9c:	0009c783          	lbu	a5,0(s3)
   18aa0:	06c00713          	li	a4,108
   18aa4:	56e78463          	beq	a5,a4,1900c <_vfiprintf_r+0xb42>
   18aa8:	01086813          	ori	a6,a6,16
   18aac:	be05                	j	185dc <_vfiprintf_r+0x112>
   18aae:	0009c783          	lbu	a5,0(s3)
   18ab2:	06800713          	li	a4,104
   18ab6:	54e78463          	beq	a5,a4,18ffe <_vfiprintf_r+0xb34>
   18aba:	04086813          	ori	a6,a6,64
   18abe:	be39                	j	185dc <_vfiprintf_r+0x112>
   18ac0:	01086e13          	ori	t3,a6,16
   18ac4:	020e7793          	andi	a5,t3,32
   18ac8:	36078363          	beqz	a5,18e2e <_vfiprintf_r+0x964>
   18acc:	0d1d                	addi	s10,s10,7
   18ace:	ff8d7d13          	andi	s10,s10,-8
   18ad2:	000d2783          	lw	a5,0(s10)
   18ad6:	004d2883          	lw	a7,4(s10)
   18ada:	0d21                	addi	s10,s10,8
   18adc:	02010da3          	sb	zero,59(sp)
   18ae0:	8872                	mv	a6,t3
   18ae2:	e00dc3e3          	bltz	s11,188e8 <_vfiprintf_r+0x41e>
   18ae6:	0117e733          	or	a4,a5,a7
   18aea:	f7fe7813          	andi	a6,t3,-129
   18aee:	de071de3          	bnez	a4,188e8 <_vfiprintf_r+0x41e>
   18af2:	4785                	li	a5,1
   18af4:	f80d86e3          	beqz	s11,18a80 <_vfiprintf_r+0x5b6>
   18af8:	4705                	li	a4,1
   18afa:	60e78c63          	beq	a5,a4,19112 <_vfiprintf_r+0xc48>
   18afe:	4709                	li	a4,2
   18b00:	54e78663          	beq	a5,a4,1904c <_vfiprintf_r+0xb82>
   18b04:	4781                	li	a5,0
   18b06:	4581                	li	a1,0
   18b08:	1984                	addi	s1,sp,240
   18b0a:	01d59693          	slli	a3,a1,0x1d
   18b0e:	0077f713          	andi	a4,a5,7
   18b12:	838d                	srli	a5,a5,0x3
   18b14:	03070713          	addi	a4,a4,48
   18b18:	8fd5                	or	a5,a5,a3
   18b1a:	818d                	srli	a1,a1,0x3
   18b1c:	fee48fa3          	sb	a4,-1(s1)
   18b20:	00b7e6b3          	or	a3,a5,a1
   18b24:	8526                	mv	a0,s1
   18b26:	14fd                	addi	s1,s1,-1
   18b28:	f2ed                	bnez	a3,18b0a <_vfiprintf_r+0x640>
   18b2a:	00187793          	andi	a5,a6,1
   18b2e:	20078b63          	beqz	a5,18d44 <_vfiprintf_r+0x87a>
   18b32:	03000793          	li	a5,48
   18b36:	20f70763          	beq	a4,a5,18d44 <_vfiprintf_r+0x87a>
   18b3a:	1579                	addi	a0,a0,-2
   18b3c:	fef48fa3          	sb	a5,-1(s1)
   18b40:	199c                	addi	a5,sp,240
   18b42:	40a78e33          	sub	t3,a5,a0
   18b46:	88ee                	mv	a7,s11
   18b48:	35cdc163          	blt	s11,t3,18e8a <_vfiprintf_r+0x9c0>
   18b4c:	84aa                	mv	s1,a0
   18b4e:	bb7d                	j	1890c <_vfiprintf_r+0x442>
   18b50:	6721                	lui	a4,0x8
   18b52:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   18b56:	02e11e23          	sh	a4,60(sp)
   18b5a:	6771                	lui	a4,0x1c
   18b5c:	cf070713          	addi	a4,a4,-784 # 1bcf0 <__clzsi2+0x10a>
   18b60:	000d2783          	lw	a5,0(s10)
   18b64:	4581                	li	a1,0
   18b66:	00286813          	ori	a6,a6,2
   18b6a:	0d11                	addi	s10,s10,4
   18b6c:	c23a                	sw	a4,4(sp)
   18b6e:	02010da3          	sb	zero,59(sp)
   18b72:	1a0dc763          	bltz	s11,18d20 <_vfiprintf_r+0x856>
   18b76:	00b7e733          	or	a4,a5,a1
   18b7a:	f7f87613          	andi	a2,a6,-129
   18b7e:	18071d63          	bnez	a4,18d18 <_vfiprintf_r+0x84e>
   18b82:	8e42                	mv	t3,a6
   18b84:	4789                	li	a5,2
   18b86:	8832                	mv	a6,a2
   18b88:	bdd5                	j	18a7c <_vfiprintf_r+0x5b2>
   18b8a:	02087793          	andi	a5,a6,32
   18b8e:	2e079463          	bnez	a5,18e76 <_vfiprintf_r+0x9ac>
   18b92:	01087793          	andi	a5,a6,16
   18b96:	48079263          	bnez	a5,1901a <_vfiprintf_r+0xb50>
   18b9a:	04087793          	andi	a5,a6,64
   18b9e:	54079f63          	bnez	a5,190fc <_vfiprintf_r+0xc32>
   18ba2:	20087813          	andi	a6,a6,512
   18ba6:	46080a63          	beqz	a6,1901a <_vfiprintf_r+0xb50>
   18baa:	000d2783          	lw	a5,0(s10)
   18bae:	0d11                	addi	s10,s10,4
   18bb0:	01278023          	sb	s2,0(a5)
   18bb4:	b2e9                	j	1857e <_vfiprintf_r+0xb4>
   18bb6:	411b0333          	sub	t1,s6,a7
   18bba:	ac6056e3          	blez	t1,18686 <_vfiprintf_r+0x1bc>
   18bbe:	6f71                	lui	t5,0x1c
   18bc0:	4641                	li	a2,16
   18bc2:	418f0f13          	addi	t5,t5,1048 # 1c418 <zeroes.0>
   18bc6:	04665f63          	bge	a2,t1,18c24 <_vfiprintf_r+0x75a>
   18bca:	c426                	sw	s1,8(sp)
   18bcc:	86a2                	mv	a3,s0
   18bce:	4ec1                	li	t4,16
   18bd0:	4f9d                	li	t6,7
   18bd2:	c642                	sw	a6,12(sp)
   18bd4:	c872                	sw	t3,16(sp)
   18bd6:	841a                	mv	s0,t1
   18bd8:	d046                	sw	a7,32(sp)
   18bda:	84fa                	mv	s1,t5
   18bdc:	a021                	j	18be4 <_vfiprintf_r+0x71a>
   18bde:	1441                	addi	s0,s0,-16
   18be0:	028edb63          	bge	t4,s0,18c16 <_vfiprintf_r+0x74c>
   18be4:	0741                	addi	a4,a4,16
   18be6:	0785                	addi	a5,a5,1
   18be8:	c284                	sw	s1,0(a3)
   18bea:	01d6a223          	sw	t4,4(a3)
   18bee:	c4ba                	sw	a4,72(sp)
   18bf0:	c2be                	sw	a5,68(sp)
   18bf2:	06a1                	addi	a3,a3,8
   18bf4:	feffd5e3          	bge	t6,a5,18bde <_vfiprintf_r+0x714>
   18bf8:	0090                	addi	a2,sp,64
   18bfa:	85d6                	mv	a1,s5
   18bfc:	855e                	mv	a0,s7
   18bfe:	8e8fc0ef          	jal	14ce6 <__sprint_r>
   18c02:	ba051ee3          	bnez	a0,187be <_vfiprintf_r+0x2f4>
   18c06:	4ec1                	li	t4,16
   18c08:	1441                	addi	s0,s0,-16
   18c0a:	4726                	lw	a4,72(sp)
   18c0c:	4796                	lw	a5,68(sp)
   18c0e:	86e2                	mv	a3,s8
   18c10:	4f9d                	li	t6,7
   18c12:	fc8ec9e3          	blt	t4,s0,18be4 <_vfiprintf_r+0x71a>
   18c16:	8f26                	mv	t5,s1
   18c18:	4832                	lw	a6,12(sp)
   18c1a:	4e42                	lw	t3,16(sp)
   18c1c:	5882                	lw	a7,32(sp)
   18c1e:	44a2                	lw	s1,8(sp)
   18c20:	8322                	mv	t1,s0
   18c22:	8436                	mv	s0,a3
   18c24:	971a                	add	a4,a4,t1
   18c26:	0785                	addi	a5,a5,1
   18c28:	01e42023          	sw	t5,0(s0)
   18c2c:	00642223          	sw	t1,4(s0)
   18c30:	c4ba                	sw	a4,72(sp)
   18c32:	c2be                	sw	a5,68(sp)
   18c34:	461d                	li	a2,7
   18c36:	0421                	addi	s0,s0,8
   18c38:	a4f657e3          	bge	a2,a5,18686 <_vfiprintf_r+0x1bc>
   18c3c:	0090                	addi	a2,sp,64
   18c3e:	85d6                	mv	a1,s5
   18c40:	855e                	mv	a0,s7
   18c42:	c846                	sw	a7,16(sp)
   18c44:	c672                	sw	t3,12(sp)
   18c46:	c442                	sw	a6,8(sp)
   18c48:	89efc0ef          	jal	14ce6 <__sprint_r>
   18c4c:	b60519e3          	bnez	a0,187be <_vfiprintf_r+0x2f4>
   18c50:	4e32                	lw	t3,12(sp)
   18c52:	4726                	lw	a4,72(sp)
   18c54:	4796                	lw	a5,68(sp)
   18c56:	41cd8db3          	sub	s11,s11,t3
   18c5a:	48c2                	lw	a7,16(sp)
   18c5c:	4822                	lw	a6,8(sp)
   18c5e:	8462                	mv	s0,s8
   18c60:	a3b057e3          	blez	s11,1868e <_vfiprintf_r+0x1c4>
   18c64:	6f71                	lui	t5,0x1c
   18c66:	418f0f13          	addi	t5,t5,1048 # 1c418 <zeroes.0>
   18c6a:	05ba5c63          	bge	s4,s11,18cc2 <_vfiprintf_r+0x7f8>
   18c6e:	86a2                	mv	a3,s0
   18c70:	431d                	li	t1,7
   18c72:	846e                	mv	s0,s11
   18c74:	c442                	sw	a6,8(sp)
   18c76:	c672                	sw	t3,12(sp)
   18c78:	c846                	sw	a7,16(sp)
   18c7a:	8de6                	mv	s11,s9
   18c7c:	a021                	j	18c84 <_vfiprintf_r+0x7ba>
   18c7e:	1441                	addi	s0,s0,-16
   18c80:	028a5b63          	bge	s4,s0,18cb6 <_vfiprintf_r+0x7ec>
   18c84:	0741                	addi	a4,a4,16
   18c86:	0785                	addi	a5,a5,1
   18c88:	0196a023          	sw	s9,0(a3)
   18c8c:	0146a223          	sw	s4,4(a3)
   18c90:	c4ba                	sw	a4,72(sp)
   18c92:	c2be                	sw	a5,68(sp)
   18c94:	06a1                	addi	a3,a3,8
   18c96:	fef354e3          	bge	t1,a5,18c7e <_vfiprintf_r+0x7b4>
   18c9a:	0090                	addi	a2,sp,64
   18c9c:	85d6                	mv	a1,s5
   18c9e:	855e                	mv	a0,s7
   18ca0:	846fc0ef          	jal	14ce6 <__sprint_r>
   18ca4:	b0051de3          	bnez	a0,187be <_vfiprintf_r+0x2f4>
   18ca8:	1441                	addi	s0,s0,-16
   18caa:	4726                	lw	a4,72(sp)
   18cac:	4796                	lw	a5,68(sp)
   18cae:	86e2                	mv	a3,s8
   18cb0:	431d                	li	t1,7
   18cb2:	fc8a49e3          	blt	s4,s0,18c84 <_vfiprintf_r+0x7ba>
   18cb6:	4822                	lw	a6,8(sp)
   18cb8:	4e32                	lw	t3,12(sp)
   18cba:	48c2                	lw	a7,16(sp)
   18cbc:	8f6e                	mv	t5,s11
   18cbe:	8da2                	mv	s11,s0
   18cc0:	8436                	mv	s0,a3
   18cc2:	976e                	add	a4,a4,s11
   18cc4:	0785                	addi	a5,a5,1
   18cc6:	01e42023          	sw	t5,0(s0)
   18cca:	01b42223          	sw	s11,4(s0)
   18cce:	c4ba                	sw	a4,72(sp)
   18cd0:	c2be                	sw	a5,68(sp)
   18cd2:	461d                	li	a2,7
   18cd4:	0421                	addi	s0,s0,8
   18cd6:	9af65ce3          	bge	a2,a5,1868e <_vfiprintf_r+0x1c4>
   18cda:	0090                	addi	a2,sp,64
   18cdc:	85d6                	mv	a1,s5
   18cde:	855e                	mv	a0,s7
   18ce0:	c846                	sw	a7,16(sp)
   18ce2:	c672                	sw	t3,12(sp)
   18ce4:	c442                	sw	a6,8(sp)
   18ce6:	800fc0ef          	jal	14ce6 <__sprint_r>
   18cea:	ac051ae3          	bnez	a0,187be <_vfiprintf_r+0x2f4>
   18cee:	4726                	lw	a4,72(sp)
   18cf0:	4796                	lw	a5,68(sp)
   18cf2:	48c2                	lw	a7,16(sp)
   18cf4:	4e32                	lw	t3,12(sp)
   18cf6:	4822                	lw	a6,8(sp)
   18cf8:	8462                	mv	s0,s8
   18cfa:	ba51                	j	1868e <_vfiprintf_r+0x1c4>
   18cfc:	0090                	addi	a2,sp,64
   18cfe:	85d6                	mv	a1,s5
   18d00:	855e                	mv	a0,s7
   18d02:	c646                	sw	a7,12(sp)
   18d04:	c442                	sw	a6,8(sp)
   18d06:	fe1fb0ef          	jal	14ce6 <__sprint_r>
   18d0a:	aa051ae3          	bnez	a0,187be <_vfiprintf_r+0x2f4>
   18d0e:	4726                	lw	a4,72(sp)
   18d10:	48b2                	lw	a7,12(sp)
   18d12:	4822                	lw	a6,8(sp)
   18d14:	8462                	mv	s0,s8
   18d16:	b279                	j	186a4 <_vfiprintf_r+0x1da>
   18d18:	4709                	li	a4,2
   18d1a:	8832                	mv	a6,a2
   18d1c:	de0706e3          	beqz	a4,18b08 <_vfiprintf_r+0x63e>
   18d20:	4612                	lw	a2,4(sp)
   18d22:	1984                	addi	s1,sp,240
   18d24:	00f7f713          	andi	a4,a5,15
   18d28:	9732                	add	a4,a4,a2
   18d2a:	00074683          	lbu	a3,0(a4)
   18d2e:	8391                	srli	a5,a5,0x4
   18d30:	01c59713          	slli	a4,a1,0x1c
   18d34:	8fd9                	or	a5,a5,a4
   18d36:	8191                	srli	a1,a1,0x4
   18d38:	fed48fa3          	sb	a3,-1(s1)
   18d3c:	00b7e733          	or	a4,a5,a1
   18d40:	14fd                	addi	s1,s1,-1
   18d42:	f36d                	bnez	a4,18d24 <_vfiprintf_r+0x85a>
   18d44:	199c                	addi	a5,sp,240
   18d46:	40978e33          	sub	t3,a5,s1
   18d4a:	88ee                	mv	a7,s11
   18d4c:	bdcdd0e3          	bge	s11,t3,1890c <_vfiprintf_r+0x442>
   18d50:	88f2                	mv	a7,t3
   18d52:	be6d                	j	1890c <_vfiprintf_r+0x442>
   18d54:	6371                	lui	t1,0x1c
   18d56:	4641                	li	a2,16
   18d58:	42830313          	addi	t1,t1,1064 # 1c428 <blanks.1>
   18d5c:	07d65363          	bge	a2,t4,18dc2 <_vfiprintf_r+0x8f8>
   18d60:	c826                	sw	s1,16(sp)
   18d62:	86a2                	mv	a3,s0
   18d64:	4f41                	li	t5,16
   18d66:	439d                	li	t2,7
   18d68:	c416                	sw	t0,8(sp)
   18d6a:	c67e                	sw	t6,12(sp)
   18d6c:	d042                	sw	a6,32(sp)
   18d6e:	d272                	sw	t3,36(sp)
   18d70:	8476                	mv	s0,t4
   18d72:	d446                	sw	a7,40(sp)
   18d74:	849a                	mv	s1,t1
   18d76:	a021                	j	18d7e <_vfiprintf_r+0x8b4>
   18d78:	1441                	addi	s0,s0,-16
   18d7a:	028f5b63          	bge	t5,s0,18db0 <_vfiprintf_r+0x8e6>
   18d7e:	0741                	addi	a4,a4,16
   18d80:	0785                	addi	a5,a5,1
   18d82:	c284                	sw	s1,0(a3)
   18d84:	01e6a223          	sw	t5,4(a3)
   18d88:	c4ba                	sw	a4,72(sp)
   18d8a:	c2be                	sw	a5,68(sp)
   18d8c:	06a1                	addi	a3,a3,8
   18d8e:	fef3d5e3          	bge	t2,a5,18d78 <_vfiprintf_r+0x8ae>
   18d92:	0090                	addi	a2,sp,64
   18d94:	85d6                	mv	a1,s5
   18d96:	855e                	mv	a0,s7
   18d98:	f4ffb0ef          	jal	14ce6 <__sprint_r>
   18d9c:	a20511e3          	bnez	a0,187be <_vfiprintf_r+0x2f4>
   18da0:	4f41                	li	t5,16
   18da2:	1441                	addi	s0,s0,-16
   18da4:	4726                	lw	a4,72(sp)
   18da6:	4796                	lw	a5,68(sp)
   18da8:	86e2                	mv	a3,s8
   18daa:	439d                	li	t2,7
   18dac:	fc8f49e3          	blt	t5,s0,18d7e <_vfiprintf_r+0x8b4>
   18db0:	8326                	mv	t1,s1
   18db2:	42a2                	lw	t0,8(sp)
   18db4:	4fb2                	lw	t6,12(sp)
   18db6:	5802                	lw	a6,32(sp)
   18db8:	5e12                	lw	t3,36(sp)
   18dba:	58a2                	lw	a7,40(sp)
   18dbc:	44c2                	lw	s1,16(sp)
   18dbe:	8ea2                	mv	t4,s0
   18dc0:	8436                	mv	s0,a3
   18dc2:	9776                	add	a4,a4,t4
   18dc4:	0785                	addi	a5,a5,1
   18dc6:	00642023          	sw	t1,0(s0)
   18dca:	01d42223          	sw	t4,4(s0)
   18dce:	c4ba                	sw	a4,72(sp)
   18dd0:	c2be                	sw	a5,68(sp)
   18dd2:	461d                	li	a2,7
   18dd4:	0421                	addi	s0,s0,8
   18dd6:	86f656e3          	bge	a2,a5,18642 <_vfiprintf_r+0x178>
   18dda:	0090                	addi	a2,sp,64
   18ddc:	85d6                	mv	a1,s5
   18dde:	855e                	mv	a0,s7
   18de0:	d246                	sw	a7,36(sp)
   18de2:	d072                	sw	t3,32(sp)
   18de4:	c842                	sw	a6,16(sp)
   18de6:	c67e                	sw	t6,12(sp)
   18de8:	c416                	sw	t0,8(sp)
   18dea:	efdfb0ef          	jal	14ce6 <__sprint_r>
   18dee:	9c0518e3          	bnez	a0,187be <_vfiprintf_r+0x2f4>
   18df2:	4726                	lw	a4,72(sp)
   18df4:	4796                	lw	a5,68(sp)
   18df6:	5892                	lw	a7,36(sp)
   18df8:	5e02                	lw	t3,32(sp)
   18dfa:	4842                	lw	a6,16(sp)
   18dfc:	4fb2                	lw	t6,12(sp)
   18dfe:	42a2                	lw	t0,8(sp)
   18e00:	8462                	mv	s0,s8
   18e02:	841ff06f          	j	18642 <_vfiprintf_r+0x178>
   18e06:	0090                	addi	a2,sp,64
   18e08:	85d6                	mv	a1,s5
   18e0a:	855e                	mv	a0,s7
   18e0c:	d046                	sw	a7,32(sp)
   18e0e:	c872                	sw	t3,16(sp)
   18e10:	c642                	sw	a6,12(sp)
   18e12:	c47e                	sw	t6,8(sp)
   18e14:	ed3fb0ef          	jal	14ce6 <__sprint_r>
   18e18:	9a0513e3          	bnez	a0,187be <_vfiprintf_r+0x2f4>
   18e1c:	4726                	lw	a4,72(sp)
   18e1e:	4796                	lw	a5,68(sp)
   18e20:	5882                	lw	a7,32(sp)
   18e22:	4e42                	lw	t3,16(sp)
   18e24:	4832                	lw	a6,12(sp)
   18e26:	4fa2                	lw	t6,8(sp)
   18e28:	8462                	mv	s0,s8
   18e2a:	855ff06f          	j	1867e <_vfiprintf_r+0x1b4>
   18e2e:	010e7713          	andi	a4,t3,16
   18e32:	000d2783          	lw	a5,0(s10)
   18e36:	0d11                	addi	s10,s10,4
   18e38:	e719                	bnez	a4,18e46 <_vfiprintf_r+0x97c>
   18e3a:	040e7713          	andi	a4,t3,64
   18e3e:	1e070f63          	beqz	a4,1903c <_vfiprintf_r+0xb72>
   18e42:	07c2                	slli	a5,a5,0x10
   18e44:	83c1                	srli	a5,a5,0x10
   18e46:	4881                	li	a7,0
   18e48:	b951                	j	18adc <_vfiprintf_r+0x612>
   18e4a:	01077613          	andi	a2,a4,16
   18e4e:	000d2783          	lw	a5,0(s10)
   18e52:	0d11                	addi	s10,s10,4
   18e54:	ee01                	bnez	a2,18e6c <_vfiprintf_r+0x9a2>
   18e56:	04077613          	andi	a2,a4,64
   18e5a:	c609                	beqz	a2,18e64 <_vfiprintf_r+0x99a>
   18e5c:	07c2                	slli	a5,a5,0x10
   18e5e:	83c1                	srli	a5,a5,0x10
   18e60:	4581                	li	a1,0
   18e62:	bef5                	j	18a5e <_vfiprintf_r+0x594>
   18e64:	20077613          	andi	a2,a4,512
   18e68:	2a061163          	bnez	a2,1910a <_vfiprintf_r+0xc40>
   18e6c:	4581                	li	a1,0
   18e6e:	bec5                	j	18a5e <_vfiprintf_r+0x594>
   18e70:	4881                	li	a7,0
   18e72:	1984                	addi	s1,sp,240
   18e74:	bc61                	j	1890c <_vfiprintf_r+0x442>
   18e76:	000d2783          	lw	a5,0(s10)
   18e7a:	41f95713          	srai	a4,s2,0x1f
   18e7e:	0d11                	addi	s10,s10,4
   18e80:	0127a023          	sw	s2,0(a5)
   18e84:	c3d8                	sw	a4,4(a5)
   18e86:	ef8ff06f          	j	1857e <_vfiprintf_r+0xb4>
   18e8a:	88f2                	mv	a7,t3
   18e8c:	84aa                	mv	s1,a0
   18e8e:	bcbd                	j	1890c <_vfiprintf_r+0x442>
   18e90:	5dfd                	li	s11,-1
   18e92:	89b6                	mv	s3,a3
   18e94:	f4cff06f          	j	185e0 <_vfiprintf_r+0x116>
   18e98:	8e42                	mv	t3,a6
   18e9a:	b12d                	j	18ac4 <_vfiprintf_r+0x5fa>
   18e9c:	8742                	mv	a4,a6
   18e9e:	b665                	j	18a46 <_vfiprintf_r+0x57c>
   18ea0:	67f1                	lui	a5,0x1c
   18ea2:	d0478793          	addi	a5,a5,-764 # 1bd04 <__clzsi2+0x11e>
   18ea6:	c23e                	sw	a5,4(sp)
   18ea8:	02087793          	andi	a5,a6,32
   18eac:	c3a9                	beqz	a5,18eee <_vfiprintf_r+0xa24>
   18eae:	0d1d                	addi	s10,s10,7
   18eb0:	ff8d7d13          	andi	s10,s10,-8
   18eb4:	000d2783          	lw	a5,0(s10)
   18eb8:	004d2583          	lw	a1,4(s10)
   18ebc:	0d21                	addi	s10,s10,8
   18ebe:	00187713          	andi	a4,a6,1
   18ec2:	cf01                	beqz	a4,18eda <_vfiprintf_r+0xa10>
   18ec4:	00b7e733          	or	a4,a5,a1
   18ec8:	cb09                	beqz	a4,18eda <_vfiprintf_r+0xa10>
   18eca:	03000713          	li	a4,48
   18ece:	02e10e23          	sb	a4,60(sp)
   18ed2:	02c10ea3          	sb	a2,61(sp)
   18ed6:	00286813          	ori	a6,a6,2
   18eda:	bff87813          	andi	a6,a6,-1025
   18ede:	b941                	j	18b6e <_vfiprintf_r+0x6a4>
   18ee0:	67f1                	lui	a5,0x1c
   18ee2:	cf078793          	addi	a5,a5,-784 # 1bcf0 <__clzsi2+0x10a>
   18ee6:	c23e                	sw	a5,4(sp)
   18ee8:	02087793          	andi	a5,a6,32
   18eec:	f3e9                	bnez	a5,18eae <_vfiprintf_r+0x9e4>
   18eee:	01087713          	andi	a4,a6,16
   18ef2:	000d2783          	lw	a5,0(s10)
   18ef6:	0d11                	addi	s10,s10,4
   18ef8:	e315                	bnez	a4,18f1c <_vfiprintf_r+0xa52>
   18efa:	04087713          	andi	a4,a6,64
   18efe:	cb19                	beqz	a4,18f14 <_vfiprintf_r+0xa4a>
   18f00:	07c2                	slli	a5,a5,0x10
   18f02:	83c1                	srli	a5,a5,0x10
   18f04:	4581                	li	a1,0
   18f06:	bf65                	j	18ebe <_vfiprintf_r+0x9f4>
   18f08:	8526                	mv	a0,s1
   18f0a:	fbef90ef          	jal	126c8 <strlen>
   18f0e:	4822                	lw	a6,8(sp)
   18f10:	8e2a                	mv	t3,a0
   18f12:	b435                	j	1893e <_vfiprintf_r+0x474>
   18f14:	20087713          	andi	a4,a6,512
   18f18:	1c071763          	bnez	a4,190e6 <_vfiprintf_r+0xc1c>
   18f1c:	4581                	li	a1,0
   18f1e:	b745                	j	18ebe <_vfiprintf_r+0x9f4>
   18f20:	ccccdf37          	lui	t5,0xccccd
   18f24:	ccccdfb7          	lui	t6,0xccccd
   18f28:	42d2                	lw	t0,20(sp)
   18f2a:	40087e13          	andi	t3,a6,1024
   18f2e:	4581                	li	a1,0
   18f30:	1988                	addi	a0,sp,240
   18f32:	4315                	li	t1,5
   18f34:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccaed39>
   18f38:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccaed38>
   18f3c:	0ff00e93          	li	t4,255
   18f40:	a081                	j	18f80 <_vfiprintf_r+0xab6>
   18f42:	00f4b733          	sltu	a4,s1,a5
   18f46:	9726                	add	a4,a4,s1
   18f48:	02677733          	remu	a4,a4,t1
   18f4c:	40e78733          	sub	a4,a5,a4
   18f50:	00e7b633          	sltu	a2,a5,a4
   18f54:	40c88633          	sub	a2,a7,a2
   18f58:	03f703b3          	mul	t2,a4,t6
   18f5c:	03e60633          	mul	a2,a2,t5
   18f60:	03e73533          	mulhu	a0,a4,t5
   18f64:	961e                	add	a2,a2,t2
   18f66:	03e70733          	mul	a4,a4,t5
   18f6a:	962a                	add	a2,a2,a0
   18f6c:	01f61513          	slli	a0,a2,0x1f
   18f70:	8205                	srli	a2,a2,0x1
   18f72:	8305                	srli	a4,a4,0x1
   18f74:	8f49                	or	a4,a4,a0
   18f76:	16088263          	beqz	a7,190da <_vfiprintf_r+0xc10>
   18f7a:	87ba                	mv	a5,a4
   18f7c:	88b2                	mv	a7,a2
   18f7e:	8536                	mv	a0,a3
   18f80:	011784b3          	add	s1,a5,a7
   18f84:	00f4b733          	sltu	a4,s1,a5
   18f88:	9726                	add	a4,a4,s1
   18f8a:	02677733          	remu	a4,a4,t1
   18f8e:	fff50693          	addi	a3,a0,-1
   18f92:	0585                	addi	a1,a1,1
   18f94:	40e78733          	sub	a4,a5,a4
   18f98:	00e7b3b3          	sltu	t2,a5,a4
   18f9c:	407883b3          	sub	t2,a7,t2
   18fa0:	03e73633          	mulhu	a2,a4,t5
   18fa4:	03e383b3          	mul	t2,t2,t5
   18fa8:	03e70733          	mul	a4,a4,t5
   18fac:	93b2                	add	t2,t2,a2
   18fae:	03fe                	slli	t2,t2,0x1f
   18fb0:	00175613          	srli	a2,a4,0x1
   18fb4:	00c3e633          	or	a2,t2,a2
   18fb8:	00261713          	slli	a4,a2,0x2
   18fbc:	9732                	add	a4,a4,a2
   18fbe:	0706                	slli	a4,a4,0x1
   18fc0:	40e78733          	sub	a4,a5,a4
   18fc4:	03070713          	addi	a4,a4,48
   18fc8:	fee50fa3          	sb	a4,-1(a0)
   18fcc:	f60e0be3          	beqz	t3,18f42 <_vfiprintf_r+0xa78>
   18fd0:	0002c703          	lbu	a4,0(t0)
   18fd4:	f6b717e3          	bne	a4,a1,18f42 <_vfiprintf_r+0xa78>
   18fd8:	f7d585e3          	beq	a1,t4,18f42 <_vfiprintf_r+0xa78>
   18fdc:	06089b63          	bnez	a7,19052 <_vfiprintf_r+0xb88>
   18fe0:	4725                	li	a4,9
   18fe2:	06f76863          	bltu	a4,a5,19052 <_vfiprintf_r+0xb88>
   18fe6:	84b6                	mv	s1,a3
   18fe8:	ca16                	sw	t0,20(sp)
   18fea:	bba9                	j	18d44 <_vfiprintf_r+0x87a>
   18fec:	883a                	mv	a6,a4
   18fee:	4701                	li	a4,0
   18ff0:	b0070ce3          	beqz	a4,18b08 <_vfiprintf_r+0x63e>
   18ff4:	b335                	j	18d20 <_vfiprintf_r+0x856>
   18ff6:	9eef90ef          	jal	121e4 <__sinit>
   18ffa:	cfaff06f          	j	184f4 <_vfiprintf_r+0x2a>
   18ffe:	0019c783          	lbu	a5,1(s3)
   19002:	20086813          	ori	a6,a6,512
   19006:	0985                	addi	s3,s3,1
   19008:	dd4ff06f          	j	185dc <_vfiprintf_r+0x112>
   1900c:	0019c783          	lbu	a5,1(s3)
   19010:	02086813          	ori	a6,a6,32
   19014:	0985                	addi	s3,s3,1
   19016:	dc6ff06f          	j	185dc <_vfiprintf_r+0x112>
   1901a:	000d2783          	lw	a5,0(s10)
   1901e:	0d11                	addi	s10,s10,4
   19020:	0127a023          	sw	s2,0(a5)
   19024:	d5aff06f          	j	1857e <_vfiprintf_r+0xb4>
   19028:	4799                	li	a5,6
   1902a:	8e6e                	mv	t3,s11
   1902c:	0bb7eb63          	bltu	a5,s11,190e2 <_vfiprintf_r+0xc18>
   19030:	64f1                	lui	s1,0x1c
   19032:	88f2                	mv	a7,t3
   19034:	d1848493          	addi	s1,s1,-744 # 1bd18 <__clzsi2+0x132>
   19038:	df2ff06f          	j	1862a <_vfiprintf_r+0x160>
   1903c:	200e7713          	andi	a4,t3,512
   19040:	e00703e3          	beqz	a4,18e46 <_vfiprintf_r+0x97c>
   19044:	0ff7f793          	zext.b	a5,a5
   19048:	4881                	li	a7,0
   1904a:	bc49                	j	18adc <_vfiprintf_r+0x612>
   1904c:	4781                	li	a5,0
   1904e:	4581                	li	a1,0
   19050:	b9c1                	j	18d20 <_vfiprintf_r+0x856>
   19052:	d43e                	sw	a5,40(sp)
   19054:	47e2                	lw	a5,24(sp)
   19056:	45f2                	lw	a1,28(sp)
   19058:	d646                	sw	a7,44(sp)
   1905a:	8e9d                	sub	a3,a3,a5
   1905c:	863e                	mv	a2,a5
   1905e:	8536                	mv	a0,a3
   19060:	d27e                	sw	t6,36(sp)
   19062:	d07a                	sw	t5,32(sp)
   19064:	ca72                	sw	t3,20(sp)
   19066:	c842                	sw	a6,16(sp)
   19068:	c616                	sw	t0,12(sp)
   1906a:	c436                	sw	a3,8(sp)
   1906c:	dd2fc0ef          	jal	1563e <strncpy>
   19070:	57a2                	lw	a5,40(sp)
   19072:	4615                	li	a2,5
   19074:	42b2                	lw	t0,12(sp)
   19076:	00f4b733          	sltu	a4,s1,a5
   1907a:	9726                	add	a4,a4,s1
   1907c:	02c77733          	remu	a4,a4,a2
   19080:	0012c603          	lbu	a2,1(t0)
   19084:	58b2                	lw	a7,44(sp)
   19086:	ccccd537          	lui	a0,0xccccd
   1908a:	00c03633          	snez	a2,a2
   1908e:	ccccd3b7          	lui	t2,0xccccd
   19092:	92b2                	add	t0,t0,a2
   19094:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccaed39>
   19098:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccaed38>
   1909c:	46a2                	lw	a3,8(sp)
   1909e:	4842                	lw	a6,16(sp)
   190a0:	4e52                	lw	t3,20(sp)
   190a2:	5f02                	lw	t5,32(sp)
   190a4:	5f92                	lw	t6,36(sp)
   190a6:	4581                	li	a1,0
   190a8:	4315                	li	t1,5
   190aa:	0ff00e93          	li	t4,255
   190ae:	40e78733          	sub	a4,a5,a4
   190b2:	00e7b633          	sltu	a2,a5,a4
   190b6:	40c88633          	sub	a2,a7,a2
   190ba:	027703b3          	mul	t2,a4,t2
   190be:	02a60633          	mul	a2,a2,a0
   190c2:	02a738b3          	mulhu	a7,a4,a0
   190c6:	961e                	add	a2,a2,t2
   190c8:	02a707b3          	mul	a5,a4,a0
   190cc:	9646                	add	a2,a2,a7
   190ce:	01f61713          	slli	a4,a2,0x1f
   190d2:	8205                	srli	a2,a2,0x1
   190d4:	8385                	srli	a5,a5,0x1
   190d6:	8f5d                	or	a4,a4,a5
   190d8:	b54d                	j	18f7a <_vfiprintf_r+0xab0>
   190da:	4525                	li	a0,9
   190dc:	e8f56fe3          	bltu	a0,a5,18f7a <_vfiprintf_r+0xab0>
   190e0:	b719                	j	18fe6 <_vfiprintf_r+0xb1c>
   190e2:	4e19                	li	t3,6
   190e4:	b7b1                	j	19030 <_vfiprintf_r+0xb66>
   190e6:	0ff7f793          	zext.b	a5,a5
   190ea:	4581                	li	a1,0
   190ec:	bbc9                	j	18ebe <_vfiprintf_r+0x9f4>
   190ee:	07e2                	slli	a5,a5,0x18
   190f0:	87e1                	srai	a5,a5,0x18
   190f2:	41f7d893          	srai	a7,a5,0x1f
   190f6:	8746                	mv	a4,a7
   190f8:	e20ff06f          	j	18718 <_vfiprintf_r+0x24e>
   190fc:	000d2783          	lw	a5,0(s10)
   19100:	0d11                	addi	s10,s10,4
   19102:	01279023          	sh	s2,0(a5)
   19106:	c78ff06f          	j	1857e <_vfiprintf_r+0xb4>
   1910a:	0ff7f793          	zext.b	a5,a5
   1910e:	4581                	li	a1,0
   19110:	b2b9                	j	18a5e <_vfiprintf_r+0x594>
   19112:	03000793          	li	a5,48
   19116:	fe4ff06f          	j	188fa <_vfiprintf_r+0x430>
   1911a:	5d7d                	li	s10,-1
   1911c:	ecaff06f          	j	187e6 <_vfiprintf_r+0x31c>
   19120:	000d2d83          	lw	s11,0(s10)
   19124:	0d11                	addi	s10,s10,4
   19126:	000dd363          	bgez	s11,1912c <_vfiprintf_r+0xc62>
   1912a:	5dfd                	li	s11,-1
   1912c:	0019c783          	lbu	a5,1(s3)
   19130:	89b6                	mv	s3,a3
   19132:	caaff06f          	j	185dc <_vfiprintf_r+0x112>

00019136 <vfiprintf>:
   19136:	87aa                	mv	a5,a0
   19138:	f141a503          	lw	a0,-236(gp) # 1dc5c <_impure_ptr>
   1913c:	86b2                	mv	a3,a2
   1913e:	862e                	mv	a2,a1
   19140:	85be                	mv	a1,a5
   19142:	b88ff06f          	j	184ca <_vfiprintf_r>

00019146 <__sbprintf>:
   19146:	b8010113          	addi	sp,sp,-1152
   1914a:	00c59783          	lh	a5,12(a1)
   1914e:	00e5d703          	lhu	a4,14(a1)
   19152:	46812c23          	sw	s0,1144(sp)
   19156:	842e                	mv	s0,a1
   19158:	65c1                	lui	a1,0x10
   1915a:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   1915c:	06442e03          	lw	t3,100(s0)
   19160:	01c42303          	lw	t1,28(s0)
   19164:	02442883          	lw	a7,36(s0)
   19168:	0742                	slli	a4,a4,0x10
   1916a:	8fed                	and	a5,a5,a1
   1916c:	8fd9                	or	a5,a5,a4
   1916e:	40000813          	li	a6,1024
   19172:	ca3e                	sw	a5,20(sp)
   19174:	002c                	addi	a1,sp,8
   19176:	189c                	addi	a5,sp,112
   19178:	46912a23          	sw	s1,1140(sp)
   1917c:	47212823          	sw	s2,1136(sp)
   19180:	46112e23          	sw	ra,1148(sp)
   19184:	892a                	mv	s2,a0
   19186:	d6f2                	sw	t3,108(sp)
   19188:	d21a                	sw	t1,36(sp)
   1918a:	d646                	sw	a7,44(sp)
   1918c:	c43e                	sw	a5,8(sp)
   1918e:	cc3e                	sw	a5,24(sp)
   19190:	c842                	sw	a6,16(sp)
   19192:	ce42                	sw	a6,28(sp)
   19194:	d002                	sw	zero,32(sp)
   19196:	b34ff0ef          	jal	184ca <_vfiprintf_r>
   1919a:	84aa                	mv	s1,a0
   1919c:	02055963          	bgez	a0,191ce <__sbprintf+0x88>
   191a0:	01415783          	lhu	a5,20(sp)
   191a4:	0407f793          	andi	a5,a5,64
   191a8:	c799                	beqz	a5,191b6 <__sbprintf+0x70>
   191aa:	00c45783          	lhu	a5,12(s0)
   191ae:	0407e793          	ori	a5,a5,64
   191b2:	00f41623          	sh	a5,12(s0)
   191b6:	47c12083          	lw	ra,1148(sp)
   191ba:	47812403          	lw	s0,1144(sp)
   191be:	47012903          	lw	s2,1136(sp)
   191c2:	8526                	mv	a0,s1
   191c4:	47412483          	lw	s1,1140(sp)
   191c8:	48010113          	addi	sp,sp,1152
   191cc:	8082                	ret
   191ce:	002c                	addi	a1,sp,8
   191d0:	854a                	mv	a0,s2
   191d2:	d83fb0ef          	jal	14f54 <_fflush_r>
   191d6:	d569                	beqz	a0,191a0 <__sbprintf+0x5a>
   191d8:	54fd                	li	s1,-1
   191da:	b7d9                	j	191a0 <__sbprintf+0x5a>

000191dc <__errno>:
   191dc:	f141a503          	lw	a0,-236(gp) # 1dc5c <_impure_ptr>
   191e0:	8082                	ret

000191e2 <abort>:
   191e2:	1141                	addi	sp,sp,-16
   191e4:	4519                	li	a0,6
   191e6:	c606                	sw	ra,12(sp)
   191e8:	2a59                	jal	1937e <raise>
   191ea:	4505                	li	a0,1
   191ec:	2e61                	jal	19584 <_exit>

000191ee <_init_signal_r>:
   191ee:	11852783          	lw	a5,280(a0)
   191f2:	c399                	beqz	a5,191f8 <_init_signal_r+0xa>
   191f4:	4501                	li	a0,0
   191f6:	8082                	ret
   191f8:	1141                	addi	sp,sp,-16
   191fa:	08000593          	li	a1,128
   191fe:	c422                	sw	s0,8(sp)
   19200:	c606                	sw	ra,12(sp)
   19202:	842a                	mv	s0,a0
   19204:	8f1f90ef          	jal	12af4 <_malloc_r>
   19208:	10a42c23          	sw	a0,280(s0)
   1920c:	cd09                	beqz	a0,19226 <_init_signal_r+0x38>
   1920e:	08050793          	addi	a5,a0,128
   19212:	00052023          	sw	zero,0(a0)
   19216:	0511                	addi	a0,a0,4
   19218:	fef51de3          	bne	a0,a5,19212 <_init_signal_r+0x24>
   1921c:	4501                	li	a0,0
   1921e:	40b2                	lw	ra,12(sp)
   19220:	4422                	lw	s0,8(sp)
   19222:	0141                	addi	sp,sp,16
   19224:	8082                	ret
   19226:	557d                	li	a0,-1
   19228:	bfdd                	j	1921e <_init_signal_r+0x30>

0001922a <_signal_r>:
   1922a:	1101                	addi	sp,sp,-32
   1922c:	ca26                	sw	s1,20(sp)
   1922e:	ce06                	sw	ra,28(sp)
   19230:	47fd                	li	a5,31
   19232:	84aa                	mv	s1,a0
   19234:	02b7e063          	bltu	a5,a1,19254 <_signal_r+0x2a>
   19238:	11852783          	lw	a5,280(a0)
   1923c:	cc22                	sw	s0,24(sp)
   1923e:	842e                	mv	s0,a1
   19240:	cf91                	beqz	a5,1925c <_signal_r+0x32>
   19242:	040a                	slli	s0,s0,0x2
   19244:	97a2                	add	a5,a5,s0
   19246:	4462                	lw	s0,24(sp)
   19248:	4388                	lw	a0,0(a5)
   1924a:	c390                	sw	a2,0(a5)
   1924c:	40f2                	lw	ra,28(sp)
   1924e:	44d2                	lw	s1,20(sp)
   19250:	6105                	addi	sp,sp,32
   19252:	8082                	ret
   19254:	47d9                	li	a5,22
   19256:	c11c                	sw	a5,0(a0)
   19258:	557d                	li	a0,-1
   1925a:	bfcd                	j	1924c <_signal_r+0x22>
   1925c:	08000593          	li	a1,128
   19260:	c632                	sw	a2,12(sp)
   19262:	893f90ef          	jal	12af4 <_malloc_r>
   19266:	10a4ac23          	sw	a0,280(s1)
   1926a:	4632                	lw	a2,12(sp)
   1926c:	87aa                	mv	a5,a0
   1926e:	872a                	mv	a4,a0
   19270:	08050693          	addi	a3,a0,128
   19274:	c519                	beqz	a0,19282 <_signal_r+0x58>
   19276:	00072023          	sw	zero,0(a4)
   1927a:	0711                	addi	a4,a4,4
   1927c:	fed71de3          	bne	a4,a3,19276 <_signal_r+0x4c>
   19280:	b7c9                	j	19242 <_signal_r+0x18>
   19282:	4462                	lw	s0,24(sp)
   19284:	557d                	li	a0,-1
   19286:	b7d9                	j	1924c <_signal_r+0x22>

00019288 <_raise_r>:
   19288:	1141                	addi	sp,sp,-16
   1928a:	c226                	sw	s1,4(sp)
   1928c:	c606                	sw	ra,12(sp)
   1928e:	47fd                	li	a5,31
   19290:	84aa                	mv	s1,a0
   19292:	04b7ee63          	bltu	a5,a1,192ee <_raise_r+0x66>
   19296:	11852783          	lw	a5,280(a0)
   1929a:	c422                	sw	s0,8(sp)
   1929c:	842e                	mv	s0,a1
   1929e:	c795                	beqz	a5,192ca <_raise_r+0x42>
   192a0:	00259713          	slli	a4,a1,0x2
   192a4:	97ba                	add	a5,a5,a4
   192a6:	4398                	lw	a4,0(a5)
   192a8:	c30d                	beqz	a4,192ca <_raise_r+0x42>
   192aa:	4685                	li	a3,1
   192ac:	00d70963          	beq	a4,a3,192be <_raise_r+0x36>
   192b0:	56fd                	li	a3,-1
   192b2:	02d70663          	beq	a4,a3,192de <_raise_r+0x56>
   192b6:	0007a023          	sw	zero,0(a5)
   192ba:	852e                	mv	a0,a1
   192bc:	9702                	jalr	a4
   192be:	4422                	lw	s0,8(sp)
   192c0:	4501                	li	a0,0
   192c2:	40b2                	lw	ra,12(sp)
   192c4:	4492                	lw	s1,4(sp)
   192c6:	0141                	addi	sp,sp,16
   192c8:	8082                	ret
   192ca:	8526                	mv	a0,s1
   192cc:	2469                	jal	19556 <_getpid_r>
   192ce:	8622                	mv	a2,s0
   192d0:	4422                	lw	s0,8(sp)
   192d2:	40b2                	lw	ra,12(sp)
   192d4:	85aa                	mv	a1,a0
   192d6:	8526                	mv	a0,s1
   192d8:	4492                	lw	s1,4(sp)
   192da:	0141                	addi	sp,sp,16
   192dc:	a489                	j	1951e <_kill_r>
   192de:	4422                	lw	s0,8(sp)
   192e0:	40b2                	lw	ra,12(sp)
   192e2:	47d9                	li	a5,22
   192e4:	c11c                	sw	a5,0(a0)
   192e6:	4492                	lw	s1,4(sp)
   192e8:	4505                	li	a0,1
   192ea:	0141                	addi	sp,sp,16
   192ec:	8082                	ret
   192ee:	47d9                	li	a5,22
   192f0:	c11c                	sw	a5,0(a0)
   192f2:	557d                	li	a0,-1
   192f4:	b7f9                	j	192c2 <_raise_r+0x3a>

000192f6 <__sigtramp_r>:
   192f6:	47fd                	li	a5,31
   192f8:	08b7e163          	bltu	a5,a1,1937a <__sigtramp_r+0x84>
   192fc:	11852783          	lw	a5,280(a0)
   19300:	1141                	addi	sp,sp,-16
   19302:	c422                	sw	s0,8(sp)
   19304:	c226                	sw	s1,4(sp)
   19306:	c606                	sw	ra,12(sp)
   19308:	842e                	mv	s0,a1
   1930a:	84aa                	mv	s1,a0
   1930c:	c7a1                	beqz	a5,19354 <__sigtramp_r+0x5e>
   1930e:	00241713          	slli	a4,s0,0x2
   19312:	97ba                	add	a5,a5,a4
   19314:	4398                	lw	a4,0(a5)
   19316:	c30d                	beqz	a4,19338 <__sigtramp_r+0x42>
   19318:	56fd                	li	a3,-1
   1931a:	02d70b63          	beq	a4,a3,19350 <__sigtramp_r+0x5a>
   1931e:	4685                	li	a3,1
   19320:	02d70263          	beq	a4,a3,19344 <__sigtramp_r+0x4e>
   19324:	8522                	mv	a0,s0
   19326:	0007a023          	sw	zero,0(a5)
   1932a:	9702                	jalr	a4
   1932c:	4501                	li	a0,0
   1932e:	40b2                	lw	ra,12(sp)
   19330:	4422                	lw	s0,8(sp)
   19332:	4492                	lw	s1,4(sp)
   19334:	0141                	addi	sp,sp,16
   19336:	8082                	ret
   19338:	40b2                	lw	ra,12(sp)
   1933a:	4422                	lw	s0,8(sp)
   1933c:	4492                	lw	s1,4(sp)
   1933e:	4505                	li	a0,1
   19340:	0141                	addi	sp,sp,16
   19342:	8082                	ret
   19344:	40b2                	lw	ra,12(sp)
   19346:	4422                	lw	s0,8(sp)
   19348:	4492                	lw	s1,4(sp)
   1934a:	450d                	li	a0,3
   1934c:	0141                	addi	sp,sp,16
   1934e:	8082                	ret
   19350:	4509                	li	a0,2
   19352:	bff1                	j	1932e <__sigtramp_r+0x38>
   19354:	08000593          	li	a1,128
   19358:	f9cf90ef          	jal	12af4 <_malloc_r>
   1935c:	10a4ac23          	sw	a0,280(s1)
   19360:	87aa                	mv	a5,a0
   19362:	c911                	beqz	a0,19376 <__sigtramp_r+0x80>
   19364:	872a                	mv	a4,a0
   19366:	08050693          	addi	a3,a0,128
   1936a:	00072023          	sw	zero,0(a4)
   1936e:	0711                	addi	a4,a4,4
   19370:	fed71de3          	bne	a4,a3,1936a <__sigtramp_r+0x74>
   19374:	bf69                	j	1930e <__sigtramp_r+0x18>
   19376:	557d                	li	a0,-1
   19378:	bf5d                	j	1932e <__sigtramp_r+0x38>
   1937a:	557d                	li	a0,-1
   1937c:	8082                	ret

0001937e <raise>:
   1937e:	1141                	addi	sp,sp,-16
   19380:	c226                	sw	s1,4(sp)
   19382:	c606                	sw	ra,12(sp)
   19384:	47fd                	li	a5,31
   19386:	f141a483          	lw	s1,-236(gp) # 1dc5c <_impure_ptr>
   1938a:	04a7ed63          	bltu	a5,a0,193e4 <raise+0x66>
   1938e:	1184a783          	lw	a5,280(s1)
   19392:	c422                	sw	s0,8(sp)
   19394:	842a                	mv	s0,a0
   19396:	c78d                	beqz	a5,193c0 <raise+0x42>
   19398:	00251713          	slli	a4,a0,0x2
   1939c:	97ba                	add	a5,a5,a4
   1939e:	4398                	lw	a4,0(a5)
   193a0:	c305                	beqz	a4,193c0 <raise+0x42>
   193a2:	4685                	li	a3,1
   193a4:	00d70863          	beq	a4,a3,193b4 <raise+0x36>
   193a8:	56fd                	li	a3,-1
   193aa:	02d70563          	beq	a4,a3,193d4 <raise+0x56>
   193ae:	0007a023          	sw	zero,0(a5)
   193b2:	9702                	jalr	a4
   193b4:	4422                	lw	s0,8(sp)
   193b6:	4501                	li	a0,0
   193b8:	40b2                	lw	ra,12(sp)
   193ba:	4492                	lw	s1,4(sp)
   193bc:	0141                	addi	sp,sp,16
   193be:	8082                	ret
   193c0:	8526                	mv	a0,s1
   193c2:	2a51                	jal	19556 <_getpid_r>
   193c4:	8622                	mv	a2,s0
   193c6:	4422                	lw	s0,8(sp)
   193c8:	40b2                	lw	ra,12(sp)
   193ca:	85aa                	mv	a1,a0
   193cc:	8526                	mv	a0,s1
   193ce:	4492                	lw	s1,4(sp)
   193d0:	0141                	addi	sp,sp,16
   193d2:	a2b1                	j	1951e <_kill_r>
   193d4:	4422                	lw	s0,8(sp)
   193d6:	40b2                	lw	ra,12(sp)
   193d8:	47d9                	li	a5,22
   193da:	c09c                	sw	a5,0(s1)
   193dc:	4505                	li	a0,1
   193de:	4492                	lw	s1,4(sp)
   193e0:	0141                	addi	sp,sp,16
   193e2:	8082                	ret
   193e4:	47d9                	li	a5,22
   193e6:	c09c                	sw	a5,0(s1)
   193e8:	557d                	li	a0,-1
   193ea:	b7f9                	j	193b8 <raise+0x3a>

000193ec <signal>:
   193ec:	1141                	addi	sp,sp,-16
   193ee:	c04a                	sw	s2,0(sp)
   193f0:	c606                	sw	ra,12(sp)
   193f2:	47fd                	li	a5,31
   193f4:	f141a903          	lw	s2,-236(gp) # 1dc5c <_impure_ptr>
   193f8:	02a7e463          	bltu	a5,a0,19420 <signal+0x34>
   193fc:	c422                	sw	s0,8(sp)
   193fe:	842a                	mv	s0,a0
   19400:	11892503          	lw	a0,280(s2)
   19404:	c226                	sw	s1,4(sp)
   19406:	84ae                	mv	s1,a1
   19408:	c10d                	beqz	a0,1942a <signal+0x3e>
   1940a:	040a                	slli	s0,s0,0x2
   1940c:	008507b3          	add	a5,a0,s0
   19410:	4388                	lw	a0,0(a5)
   19412:	4422                	lw	s0,8(sp)
   19414:	c384                	sw	s1,0(a5)
   19416:	4492                	lw	s1,4(sp)
   19418:	40b2                	lw	ra,12(sp)
   1941a:	4902                	lw	s2,0(sp)
   1941c:	0141                	addi	sp,sp,16
   1941e:	8082                	ret
   19420:	47d9                	li	a5,22
   19422:	00f92023          	sw	a5,0(s2)
   19426:	557d                	li	a0,-1
   19428:	bfc5                	j	19418 <signal+0x2c>
   1942a:	08000593          	li	a1,128
   1942e:	854a                	mv	a0,s2
   19430:	ec4f90ef          	jal	12af4 <_malloc_r>
   19434:	10a92c23          	sw	a0,280(s2)
   19438:	87aa                	mv	a5,a0
   1943a:	08050713          	addi	a4,a0,128
   1943e:	c519                	beqz	a0,1944c <signal+0x60>
   19440:	0007a023          	sw	zero,0(a5)
   19444:	0791                	addi	a5,a5,4
   19446:	fef71de3          	bne	a4,a5,19440 <signal+0x54>
   1944a:	b7c1                	j	1940a <signal+0x1e>
   1944c:	4422                	lw	s0,8(sp)
   1944e:	4492                	lw	s1,4(sp)
   19450:	557d                	li	a0,-1
   19452:	b7d9                	j	19418 <signal+0x2c>

00019454 <_init_signal>:
   19454:	1141                	addi	sp,sp,-16
   19456:	c422                	sw	s0,8(sp)
   19458:	f141a403          	lw	s0,-236(gp) # 1dc5c <_impure_ptr>
   1945c:	c606                	sw	ra,12(sp)
   1945e:	11842783          	lw	a5,280(s0)
   19462:	c791                	beqz	a5,1946e <_init_signal+0x1a>
   19464:	4501                	li	a0,0
   19466:	40b2                	lw	ra,12(sp)
   19468:	4422                	lw	s0,8(sp)
   1946a:	0141                	addi	sp,sp,16
   1946c:	8082                	ret
   1946e:	08000593          	li	a1,128
   19472:	8522                	mv	a0,s0
   19474:	e80f90ef          	jal	12af4 <_malloc_r>
   19478:	10a42c23          	sw	a0,280(s0)
   1947c:	c909                	beqz	a0,1948e <_init_signal+0x3a>
   1947e:	08050793          	addi	a5,a0,128
   19482:	00052023          	sw	zero,0(a0)
   19486:	0511                	addi	a0,a0,4
   19488:	fef51de3          	bne	a0,a5,19482 <_init_signal+0x2e>
   1948c:	bfe1                	j	19464 <_init_signal+0x10>
   1948e:	557d                	li	a0,-1
   19490:	bfd9                	j	19466 <_init_signal+0x12>

00019492 <__sigtramp>:
   19492:	1141                	addi	sp,sp,-16
   19494:	c226                	sw	s1,4(sp)
   19496:	c606                	sw	ra,12(sp)
   19498:	47fd                	li	a5,31
   1949a:	f141a483          	lw	s1,-236(gp) # 1dc5c <_impure_ptr>
   1949e:	06a7ee63          	bltu	a5,a0,1951a <__sigtramp+0x88>
   194a2:	1184a783          	lw	a5,280(s1)
   194a6:	c422                	sw	s0,8(sp)
   194a8:	842a                	mv	s0,a0
   194aa:	c7a9                	beqz	a5,194f4 <__sigtramp+0x62>
   194ac:	00241713          	slli	a4,s0,0x2
   194b0:	97ba                	add	a5,a5,a4
   194b2:	4398                	lw	a4,0(a5)
   194b4:	c30d                	beqz	a4,194d6 <__sigtramp+0x44>
   194b6:	56fd                	li	a3,-1
   194b8:	02d70b63          	beq	a4,a3,194ee <__sigtramp+0x5c>
   194bc:	4685                	li	a3,1
   194be:	02d70263          	beq	a4,a3,194e2 <__sigtramp+0x50>
   194c2:	8522                	mv	a0,s0
   194c4:	0007a023          	sw	zero,0(a5)
   194c8:	9702                	jalr	a4
   194ca:	4422                	lw	s0,8(sp)
   194cc:	4501                	li	a0,0
   194ce:	40b2                	lw	ra,12(sp)
   194d0:	4492                	lw	s1,4(sp)
   194d2:	0141                	addi	sp,sp,16
   194d4:	8082                	ret
   194d6:	4422                	lw	s0,8(sp)
   194d8:	40b2                	lw	ra,12(sp)
   194da:	4492                	lw	s1,4(sp)
   194dc:	4505                	li	a0,1
   194de:	0141                	addi	sp,sp,16
   194e0:	8082                	ret
   194e2:	4422                	lw	s0,8(sp)
   194e4:	40b2                	lw	ra,12(sp)
   194e6:	4492                	lw	s1,4(sp)
   194e8:	450d                	li	a0,3
   194ea:	0141                	addi	sp,sp,16
   194ec:	8082                	ret
   194ee:	4422                	lw	s0,8(sp)
   194f0:	4509                	li	a0,2
   194f2:	bff1                	j	194ce <__sigtramp+0x3c>
   194f4:	08000593          	li	a1,128
   194f8:	8526                	mv	a0,s1
   194fa:	dfaf90ef          	jal	12af4 <_malloc_r>
   194fe:	10a4ac23          	sw	a0,280(s1)
   19502:	87aa                	mv	a5,a0
   19504:	c911                	beqz	a0,19518 <__sigtramp+0x86>
   19506:	872a                	mv	a4,a0
   19508:	08050693          	addi	a3,a0,128
   1950c:	00072023          	sw	zero,0(a4)
   19510:	0711                	addi	a4,a4,4
   19512:	fee69de3          	bne	a3,a4,1950c <__sigtramp+0x7a>
   19516:	bf59                	j	194ac <__sigtramp+0x1a>
   19518:	4422                	lw	s0,8(sp)
   1951a:	557d                	li	a0,-1
   1951c:	bf4d                	j	194ce <__sigtramp+0x3c>

0001951e <_kill_r>:
   1951e:	1141                	addi	sp,sp,-16
   19520:	872e                	mv	a4,a1
   19522:	c422                	sw	s0,8(sp)
   19524:	c226                	sw	s1,4(sp)
   19526:	842a                	mv	s0,a0
   19528:	85b2                	mv	a1,a2
   1952a:	853a                	mv	a0,a4
   1952c:	c606                	sw	ra,12(sp)
   1952e:	f201a223          	sw	zero,-220(gp) # 1dc6c <errno>
   19532:	28d9                	jal	19608 <_kill>
   19534:	57fd                	li	a5,-1
   19536:	00f50763          	beq	a0,a5,19544 <_kill_r+0x26>
   1953a:	40b2                	lw	ra,12(sp)
   1953c:	4422                	lw	s0,8(sp)
   1953e:	4492                	lw	s1,4(sp)
   19540:	0141                	addi	sp,sp,16
   19542:	8082                	ret
   19544:	f241a783          	lw	a5,-220(gp) # 1dc6c <errno>
   19548:	dbed                	beqz	a5,1953a <_kill_r+0x1c>
   1954a:	40b2                	lw	ra,12(sp)
   1954c:	c01c                	sw	a5,0(s0)
   1954e:	4422                	lw	s0,8(sp)
   19550:	4492                	lw	s1,4(sp)
   19552:	0141                	addi	sp,sp,16
   19554:	8082                	ret

00019556 <_getpid_r>:
   19556:	a069                	j	195e0 <_getpid>

00019558 <_close>:
   19558:	1141                	addi	sp,sp,-16
   1955a:	c606                	sw	ra,12(sp)
   1955c:	c422                	sw	s0,8(sp)
   1955e:	03900893          	li	a7,57
   19562:	00000073          	ecall
   19566:	842a                	mv	s0,a0
   19568:	00054763          	bltz	a0,19576 <_close+0x1e>
   1956c:	40b2                	lw	ra,12(sp)
   1956e:	8522                	mv	a0,s0
   19570:	4422                	lw	s0,8(sp)
   19572:	0141                	addi	sp,sp,16
   19574:	8082                	ret
   19576:	40800433          	neg	s0,s0
   1957a:	c63ff0ef          	jal	191dc <__errno>
   1957e:	c100                	sw	s0,0(a0)
   19580:	547d                	li	s0,-1
   19582:	b7ed                	j	1956c <_close+0x14>

00019584 <_exit>:
   19584:	05d00893          	li	a7,93
   19588:	00000073          	ecall
   1958c:	00054363          	bltz	a0,19592 <_exit+0xe>
   19590:	a001                	j	19590 <_exit+0xc>
   19592:	1141                	addi	sp,sp,-16
   19594:	c422                	sw	s0,8(sp)
   19596:	842a                	mv	s0,a0
   19598:	c606                	sw	ra,12(sp)
   1959a:	40800433          	neg	s0,s0
   1959e:	c3fff0ef          	jal	191dc <__errno>
   195a2:	c100                	sw	s0,0(a0)
   195a4:	a001                	j	195a4 <_exit+0x20>

000195a6 <_fstat>:
   195a6:	7175                	addi	sp,sp,-144
   195a8:	c326                	sw	s1,132(sp)
   195aa:	c706                	sw	ra,140(sp)
   195ac:	84ae                	mv	s1,a1
   195ae:	c522                	sw	s0,136(sp)
   195b0:	05000893          	li	a7,80
   195b4:	858a                	mv	a1,sp
   195b6:	00000073          	ecall
   195ba:	842a                	mv	s0,a0
   195bc:	00054b63          	bltz	a0,195d2 <_fstat+0x2c>
   195c0:	8526                	mv	a0,s1
   195c2:	858a                	mv	a1,sp
   195c4:	2a05                	jal	196f4 <_conv_stat>
   195c6:	40ba                	lw	ra,140(sp)
   195c8:	8522                	mv	a0,s0
   195ca:	442a                	lw	s0,136(sp)
   195cc:	449a                	lw	s1,132(sp)
   195ce:	6149                	addi	sp,sp,144
   195d0:	8082                	ret
   195d2:	40800433          	neg	s0,s0
   195d6:	c07ff0ef          	jal	191dc <__errno>
   195da:	c100                	sw	s0,0(a0)
   195dc:	547d                	li	s0,-1
   195de:	b7cd                	j	195c0 <_fstat+0x1a>

000195e0 <_getpid>:
   195e0:	4505                	li	a0,1
   195e2:	8082                	ret

000195e4 <_isatty>:
   195e4:	7159                	addi	sp,sp,-112
   195e6:	002c                	addi	a1,sp,8
   195e8:	d686                	sw	ra,108(sp)
   195ea:	fbdff0ef          	jal	195a6 <_fstat>
   195ee:	57fd                	li	a5,-1
   195f0:	00f50863          	beq	a0,a5,19600 <_isatty+0x1c>
   195f4:	4532                	lw	a0,12(sp)
   195f6:	50b6                	lw	ra,108(sp)
   195f8:	8135                	srli	a0,a0,0xd
   195fa:	8905                	andi	a0,a0,1
   195fc:	6165                	addi	sp,sp,112
   195fe:	8082                	ret
   19600:	50b6                	lw	ra,108(sp)
   19602:	4501                	li	a0,0
   19604:	6165                	addi	sp,sp,112
   19606:	8082                	ret

00019608 <_kill>:
   19608:	1141                	addi	sp,sp,-16
   1960a:	c606                	sw	ra,12(sp)
   1960c:	bd1ff0ef          	jal	191dc <__errno>
   19610:	40b2                	lw	ra,12(sp)
   19612:	47d9                	li	a5,22
   19614:	c11c                	sw	a5,0(a0)
   19616:	557d                	li	a0,-1
   19618:	0141                	addi	sp,sp,16
   1961a:	8082                	ret

0001961c <_lseek>:
   1961c:	1141                	addi	sp,sp,-16
   1961e:	c606                	sw	ra,12(sp)
   19620:	c422                	sw	s0,8(sp)
   19622:	03e00893          	li	a7,62
   19626:	00000073          	ecall
   1962a:	842a                	mv	s0,a0
   1962c:	00054763          	bltz	a0,1963a <_lseek+0x1e>
   19630:	40b2                	lw	ra,12(sp)
   19632:	8522                	mv	a0,s0
   19634:	4422                	lw	s0,8(sp)
   19636:	0141                	addi	sp,sp,16
   19638:	8082                	ret
   1963a:	40800433          	neg	s0,s0
   1963e:	b9fff0ef          	jal	191dc <__errno>
   19642:	c100                	sw	s0,0(a0)
   19644:	547d                	li	s0,-1
   19646:	b7ed                	j	19630 <_lseek+0x14>

00019648 <_read>:
   19648:	1141                	addi	sp,sp,-16
   1964a:	c606                	sw	ra,12(sp)
   1964c:	c422                	sw	s0,8(sp)
   1964e:	03f00893          	li	a7,63
   19652:	00000073          	ecall
   19656:	842a                	mv	s0,a0
   19658:	00054763          	bltz	a0,19666 <_read+0x1e>
   1965c:	40b2                	lw	ra,12(sp)
   1965e:	8522                	mv	a0,s0
   19660:	4422                	lw	s0,8(sp)
   19662:	0141                	addi	sp,sp,16
   19664:	8082                	ret
   19666:	40800433          	neg	s0,s0
   1966a:	b73ff0ef          	jal	191dc <__errno>
   1966e:	c100                	sw	s0,0(a0)
   19670:	547d                	li	s0,-1
   19672:	b7ed                	j	1965c <_read+0x14>

00019674 <_sbrk>:
   19674:	f3c1a703          	lw	a4,-196(gp) # 1dc84 <heap_end.0>
   19678:	1141                	addi	sp,sp,-16
   1967a:	c606                	sw	ra,12(sp)
   1967c:	87aa                	mv	a5,a0
   1967e:	ef01                	bnez	a4,19696 <_sbrk+0x22>
   19680:	0d600893          	li	a7,214
   19684:	4501                	li	a0,0
   19686:	00000073          	ecall
   1968a:	567d                	li	a2,-1
   1968c:	872a                	mv	a4,a0
   1968e:	02c50563          	beq	a0,a2,196b8 <_sbrk+0x44>
   19692:	f2a1ae23          	sw	a0,-196(gp) # 1dc84 <heap_end.0>
   19696:	0d600893          	li	a7,214
   1969a:	00e78533          	add	a0,a5,a4
   1969e:	00000073          	ecall
   196a2:	f3c1a703          	lw	a4,-196(gp) # 1dc84 <heap_end.0>
   196a6:	97ba                	add	a5,a5,a4
   196a8:	00f51863          	bne	a0,a5,196b8 <_sbrk+0x44>
   196ac:	40b2                	lw	ra,12(sp)
   196ae:	f2a1ae23          	sw	a0,-196(gp) # 1dc84 <heap_end.0>
   196b2:	853a                	mv	a0,a4
   196b4:	0141                	addi	sp,sp,16
   196b6:	8082                	ret
   196b8:	b25ff0ef          	jal	191dc <__errno>
   196bc:	40b2                	lw	ra,12(sp)
   196be:	47b1                	li	a5,12
   196c0:	c11c                	sw	a5,0(a0)
   196c2:	557d                	li	a0,-1
   196c4:	0141                	addi	sp,sp,16
   196c6:	8082                	ret

000196c8 <_write>:
   196c8:	1141                	addi	sp,sp,-16
   196ca:	c606                	sw	ra,12(sp)
   196cc:	c422                	sw	s0,8(sp)
   196ce:	04000893          	li	a7,64
   196d2:	00000073          	ecall
   196d6:	842a                	mv	s0,a0
   196d8:	00054763          	bltz	a0,196e6 <_write+0x1e>
   196dc:	40b2                	lw	ra,12(sp)
   196de:	8522                	mv	a0,s0
   196e0:	4422                	lw	s0,8(sp)
   196e2:	0141                	addi	sp,sp,16
   196e4:	8082                	ret
   196e6:	40800433          	neg	s0,s0
   196ea:	af3ff0ef          	jal	191dc <__errno>
   196ee:	c100                	sw	s0,0(a0)
   196f0:	547d                	li	s0,-1
   196f2:	b7ed                	j	196dc <_write+0x14>

000196f4 <_conv_stat>:
   196f4:	0185d703          	lhu	a4,24(a1)
   196f8:	0145d783          	lhu	a5,20(a1)
   196fc:	1141                	addi	sp,sp,-16
   196fe:	01c5a283          	lw	t0,28(a1)
   19702:	0205af83          	lw	t6,32(a1)
   19706:	0305af03          	lw	t5,48(a1)
   1970a:	0405ae83          	lw	t4,64(a1)
   1970e:	0385ae03          	lw	t3,56(a1)
   19712:	0485a303          	lw	t1,72(a1)
   19716:	04c5a383          	lw	t2,76(a1)
   1971a:	0585a803          	lw	a6,88(a1)
   1971e:	05c5a883          	lw	a7,92(a1)
   19722:	c622                	sw	s0,12(sp)
   19724:	c426                	sw	s1,8(sp)
   19726:	4980                	lw	s0,16(a1)
   19728:	4584                	lw	s1,8(a1)
   1972a:	c24a                	sw	s2,4(sp)
   1972c:	0005a903          	lw	s2,0(a1)
   19730:	55b0                	lw	a2,104(a1)
   19732:	0742                	slli	a4,a4,0x10
   19734:	8fd9                	or	a5,a5,a4
   19736:	55f4                	lw	a3,108(a1)
   19738:	01251023          	sh	s2,0(a0)
   1973c:	00951123          	sh	s1,2(a0)
   19740:	c140                	sw	s0,4(a0)
   19742:	c51c                	sw	a5,8(a0)
   19744:	00551623          	sh	t0,12(a0)
   19748:	01f51723          	sh	t6,14(a0)
   1974c:	01e52823          	sw	t5,16(a0)
   19750:	05d52623          	sw	t4,76(a0)
   19754:	05c52423          	sw	t3,72(a0)
   19758:	00652c23          	sw	t1,24(a0)
   1975c:	00752e23          	sw	t2,28(a0)
   19760:	03052423          	sw	a6,40(a0)
   19764:	03152623          	sw	a7,44(a0)
   19768:	dd10                	sw	a2,56(a0)
   1976a:	4432                	lw	s0,12(sp)
   1976c:	dd54                	sw	a3,60(a0)
   1976e:	44a2                	lw	s1,8(sp)
   19770:	4912                	lw	s2,4(sp)
   19772:	0141                	addi	sp,sp,16
   19774:	8082                	ret

00019776 <__eqtf2>:
   19776:	411c                	lw	a5,0(a0)
   19778:	00452e03          	lw	t3,4(a0)
   1977c:	00852e83          	lw	t4,8(a0)
   19780:	4554                	lw	a3,12(a0)
   19782:	4198                	lw	a4,0(a1)
   19784:	0045af83          	lw	t6,4(a1)
   19788:	0085af03          	lw	t5,8(a1)
   1978c:	00c5a883          	lw	a7,12(a1)
   19790:	1141                	addi	sp,sp,-16
   19792:	00202673          	frrm	a2
   19796:	6521                	lui	a0,0x8
   19798:	0106d613          	srli	a2,a3,0x10
   1979c:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1979e:	01069313          	slli	t1,a3,0x10
   197a2:	01089593          	slli	a1,a7,0x10
   197a6:	01f6d813          	srli	a6,a3,0x1f
   197aa:	8e69                	and	a2,a2,a0
   197ac:	0108d693          	srli	a3,a7,0x10
   197b0:	01035313          	srli	t1,t1,0x10
   197b4:	81c1                	srli	a1,a1,0x10
   197b6:	8ee9                	and	a3,a3,a0
   197b8:	01f8d893          	srli	a7,a7,0x1f
   197bc:	00a61c63          	bne	a2,a0,197d4 <__eqtf2+0x5e>
   197c0:	01c7e533          	or	a0,a5,t3
   197c4:	01d56533          	or	a0,a0,t4
   197c8:	00656533          	or	a0,a0,t1
   197cc:	e51d                	bnez	a0,197fa <__eqtf2+0x84>
   197ce:	04c69b63          	bne	a3,a2,19824 <__eqtf2+0xae>
   197d2:	a019                	j	197d8 <__eqtf2+0x62>
   197d4:	04a69a63          	bne	a3,a0,19828 <__eqtf2+0xb2>
   197d8:	01f76533          	or	a0,a4,t6
   197dc:	01e56533          	or	a0,a0,t5
   197e0:	8d4d                	or	a0,a0,a1
   197e2:	c139                	beqz	a0,19828 <__eqtf2+0xb2>
   197e4:	6521                	lui	a0,0x8
   197e6:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   197e8:	02a61a63          	bne	a2,a0,1981c <__eqtf2+0xa6>
   197ec:	01c7e7b3          	or	a5,a5,t3
   197f0:	01d7e7b3          	or	a5,a5,t4
   197f4:	0067e7b3          	or	a5,a5,t1
   197f8:	cb99                	beqz	a5,1980e <__eqtf2+0x98>
   197fa:	0342                	slli	t1,t1,0x10
   197fc:	41035313          	srai	t1,t1,0x10
   19800:	04035c63          	bgez	t1,19858 <__eqtf2+0xe2>
   19804:	67a1                	lui	a5,0x8
   19806:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19808:	4505                	li	a0,1
   1980a:	04f69563          	bne	a3,a5,19854 <__eqtf2+0xde>
   1980e:	01f76733          	or	a4,a4,t6
   19812:	01e76733          	or	a4,a4,t5
   19816:	8f4d                	or	a4,a4,a1
   19818:	4505                	li	a0,1
   1981a:	cf0d                	beqz	a4,19854 <__eqtf2+0xde>
   1981c:	05c2                	slli	a1,a1,0x10
   1981e:	85c1                	srai	a1,a1,0x10
   19820:	0205dc63          	bgez	a1,19858 <__eqtf2+0xe2>
   19824:	4505                	li	a0,1
   19826:	a03d                	j	19854 <__eqtf2+0xde>
   19828:	4505                	li	a0,1
   1982a:	02c69563          	bne	a3,a2,19854 <__eqtf2+0xde>
   1982e:	02e79363          	bne	a5,a4,19854 <__eqtf2+0xde>
   19832:	03fe1163          	bne	t3,t6,19854 <__eqtf2+0xde>
   19836:	01ee9f63          	bne	t4,t5,19854 <__eqtf2+0xde>
   1983a:	00b31d63          	bne	t1,a1,19854 <__eqtf2+0xde>
   1983e:	03180063          	beq	a6,a7,1985e <__eqtf2+0xe8>
   19842:	ea89                	bnez	a3,19854 <__eqtf2+0xde>
   19844:	01c7e533          	or	a0,a5,t3
   19848:	01d56533          	or	a0,a0,t4
   1984c:	00656533          	or	a0,a0,t1
   19850:	00a03533          	snez	a0,a0
   19854:	0141                	addi	sp,sp,16
   19856:	8082                	ret
   19858:	00186073          	csrsi	fflags,16
   1985c:	b7e1                	j	19824 <__eqtf2+0xae>
   1985e:	4501                	li	a0,0
   19860:	bfd5                	j	19854 <__eqtf2+0xde>

00019862 <__getf2>:
   19862:	00052883          	lw	a7,0(a0)
   19866:	00452303          	lw	t1,4(a0)
   1986a:	00852e03          	lw	t3,8(a0)
   1986e:	455c                	lw	a5,12(a0)
   19870:	0005ae83          	lw	t4,0(a1)
   19874:	0045af03          	lw	t5,4(a1)
   19878:	0085af83          	lw	t6,8(a1)
   1987c:	45d4                	lw	a3,12(a1)
   1987e:	1141                	addi	sp,sp,-16
   19880:	00202773          	frrm	a4
   19884:	6721                	lui	a4,0x8
   19886:	0107d613          	srli	a2,a5,0x10
   1988a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1988c:	01079813          	slli	a6,a5,0x10
   19890:	01069293          	slli	t0,a3,0x10
   19894:	0106d513          	srli	a0,a3,0x10
   19898:	8e79                	and	a2,a2,a4
   1989a:	01085813          	srli	a6,a6,0x10
   1989e:	83fd                	srli	a5,a5,0x1f
   198a0:	0102d293          	srli	t0,t0,0x10
   198a4:	8d79                	and	a0,a0,a4
   198a6:	82fd                	srli	a3,a3,0x1f
   198a8:	00e61963          	bne	a2,a4,198ba <__getf2+0x58>
   198ac:	01136733          	or	a4,t1,a7
   198b0:	01c76733          	or	a4,a4,t3
   198b4:	01076733          	or	a4,a4,a6
   198b8:	ef35                	bnez	a4,19934 <__getf2+0xd2>
   198ba:	6721                	lui	a4,0x8
   198bc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   198be:	00e51963          	bne	a0,a4,198d0 <__getf2+0x6e>
   198c2:	01eee733          	or	a4,t4,t5
   198c6:	01f76733          	or	a4,a4,t6
   198ca:	00576733          	or	a4,a4,t0
   198ce:	e33d                	bnez	a4,19934 <__getf2+0xd2>
   198d0:	4701                	li	a4,0
   198d2:	ea09                	bnez	a2,198e4 <__getf2+0x82>
   198d4:	01136733          	or	a4,t1,a7
   198d8:	01c76733          	or	a4,a4,t3
   198dc:	01076733          	or	a4,a4,a6
   198e0:	00173713          	seqz	a4,a4
   198e4:	ed21                	bnez	a0,1993c <__getf2+0xda>
   198e6:	01eee5b3          	or	a1,t4,t5
   198ea:	01f5e5b3          	or	a1,a1,t6
   198ee:	0055e5b3          	or	a1,a1,t0
   198f2:	c711                	beqz	a4,198fe <__getf2+0x9c>
   198f4:	c981                	beqz	a1,19904 <__getf2+0xa2>
   198f6:	4505                	li	a0,1
   198f8:	e691                	bnez	a3,19904 <__getf2+0xa2>
   198fa:	557d                	li	a0,-1
   198fc:	a021                	j	19904 <__getf2+0xa2>
   198fe:	e1a1                	bnez	a1,1993e <__getf2+0xdc>
   19900:	557d                	li	a0,-1
   19902:	c7a1                	beqz	a5,1994a <__getf2+0xe8>
   19904:	0141                	addi	sp,sp,16
   19906:	8082                	ret
   19908:	fea647e3          	blt	a2,a0,198f6 <__getf2+0x94>
   1990c:	ff02eae3          	bltu	t0,a6,19900 <__getf2+0x9e>
   19910:	00581f63          	bne	a6,t0,1992e <__getf2+0xcc>
   19914:	ffcfe6e3          	bltu	t6,t3,19900 <__getf2+0x9e>
   19918:	01fe1b63          	bne	t3,t6,1992e <__getf2+0xcc>
   1991c:	fe6f62e3          	bltu	t5,t1,19900 <__getf2+0x9e>
   19920:	01e31763          	bne	t1,t5,1992e <__getf2+0xcc>
   19924:	fd1eeee3          	bltu	t4,a7,19900 <__getf2+0x9e>
   19928:	4501                	li	a0,0
   1992a:	fdd8fde3          	bgeu	a7,t4,19904 <__getf2+0xa2>
   1992e:	4505                	li	a0,1
   19930:	fbf1                	bnez	a5,19904 <__getf2+0xa2>
   19932:	b7e1                	j	198fa <__getf2+0x98>
   19934:	00186073          	csrsi	fflags,16
   19938:	5579                	li	a0,-2
   1993a:	b7e9                	j	19904 <__getf2+0xa2>
   1993c:	ff4d                	bnez	a4,198f6 <__getf2+0x94>
   1993e:	fcf691e3          	bne	a3,a5,19900 <__getf2+0x9e>
   19942:	fcc553e3          	bge	a0,a2,19908 <__getf2+0xa6>
   19946:	557d                	li	a0,-1
   19948:	fed5                	bnez	a3,19904 <__getf2+0xa2>
   1994a:	4505                	li	a0,1
   1994c:	bf65                	j	19904 <__getf2+0xa2>

0001994e <__letf2>:
   1994e:	00052883          	lw	a7,0(a0)
   19952:	00452303          	lw	t1,4(a0)
   19956:	00852e03          	lw	t3,8(a0)
   1995a:	455c                	lw	a5,12(a0)
   1995c:	0005ae83          	lw	t4,0(a1)
   19960:	0045af03          	lw	t5,4(a1)
   19964:	0085af83          	lw	t6,8(a1)
   19968:	45d4                	lw	a3,12(a1)
   1996a:	1141                	addi	sp,sp,-16
   1996c:	00202773          	frrm	a4
   19970:	6721                	lui	a4,0x8
   19972:	0107d613          	srli	a2,a5,0x10
   19976:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19978:	01079813          	slli	a6,a5,0x10
   1997c:	01069293          	slli	t0,a3,0x10
   19980:	0106d513          	srli	a0,a3,0x10
   19984:	8e79                	and	a2,a2,a4
   19986:	01085813          	srli	a6,a6,0x10
   1998a:	83fd                	srli	a5,a5,0x1f
   1998c:	0102d293          	srli	t0,t0,0x10
   19990:	8d79                	and	a0,a0,a4
   19992:	82fd                	srli	a3,a3,0x1f
   19994:	00e61963          	bne	a2,a4,199a6 <__letf2+0x58>
   19998:	01136733          	or	a4,t1,a7
   1999c:	01c76733          	or	a4,a4,t3
   199a0:	01076733          	or	a4,a4,a6
   199a4:	ef35                	bnez	a4,19a20 <__letf2+0xd2>
   199a6:	6721                	lui	a4,0x8
   199a8:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   199aa:	00e51963          	bne	a0,a4,199bc <__letf2+0x6e>
   199ae:	01eee733          	or	a4,t4,t5
   199b2:	01f76733          	or	a4,a4,t6
   199b6:	00576733          	or	a4,a4,t0
   199ba:	e33d                	bnez	a4,19a20 <__letf2+0xd2>
   199bc:	4701                	li	a4,0
   199be:	ea09                	bnez	a2,199d0 <__letf2+0x82>
   199c0:	01136733          	or	a4,t1,a7
   199c4:	01c76733          	or	a4,a4,t3
   199c8:	01076733          	or	a4,a4,a6
   199cc:	00173713          	seqz	a4,a4
   199d0:	ed21                	bnez	a0,19a28 <__letf2+0xda>
   199d2:	01eee5b3          	or	a1,t4,t5
   199d6:	01f5e5b3          	or	a1,a1,t6
   199da:	0055e5b3          	or	a1,a1,t0
   199de:	c711                	beqz	a4,199ea <__letf2+0x9c>
   199e0:	c981                	beqz	a1,199f0 <__letf2+0xa2>
   199e2:	4505                	li	a0,1
   199e4:	e691                	bnez	a3,199f0 <__letf2+0xa2>
   199e6:	557d                	li	a0,-1
   199e8:	a021                	j	199f0 <__letf2+0xa2>
   199ea:	e1a1                	bnez	a1,19a2a <__letf2+0xdc>
   199ec:	557d                	li	a0,-1
   199ee:	c7a1                	beqz	a5,19a36 <__letf2+0xe8>
   199f0:	0141                	addi	sp,sp,16
   199f2:	8082                	ret
   199f4:	fea647e3          	blt	a2,a0,199e2 <__letf2+0x94>
   199f8:	ff02eae3          	bltu	t0,a6,199ec <__letf2+0x9e>
   199fc:	00581f63          	bne	a6,t0,19a1a <__letf2+0xcc>
   19a00:	ffcfe6e3          	bltu	t6,t3,199ec <__letf2+0x9e>
   19a04:	01fe1b63          	bne	t3,t6,19a1a <__letf2+0xcc>
   19a08:	fe6f62e3          	bltu	t5,t1,199ec <__letf2+0x9e>
   19a0c:	01e31763          	bne	t1,t5,19a1a <__letf2+0xcc>
   19a10:	fd1eeee3          	bltu	t4,a7,199ec <__letf2+0x9e>
   19a14:	4501                	li	a0,0
   19a16:	fdd8fde3          	bgeu	a7,t4,199f0 <__letf2+0xa2>
   19a1a:	4505                	li	a0,1
   19a1c:	fbf1                	bnez	a5,199f0 <__letf2+0xa2>
   19a1e:	b7e1                	j	199e6 <__letf2+0x98>
   19a20:	00186073          	csrsi	fflags,16
   19a24:	4509                	li	a0,2
   19a26:	b7e9                	j	199f0 <__letf2+0xa2>
   19a28:	ff4d                	bnez	a4,199e2 <__letf2+0x94>
   19a2a:	fcf691e3          	bne	a3,a5,199ec <__letf2+0x9e>
   19a2e:	fcc553e3          	bge	a0,a2,199f4 <__letf2+0xa6>
   19a32:	557d                	li	a0,-1
   19a34:	fed5                	bnez	a3,199f0 <__letf2+0xa2>
   19a36:	4505                	li	a0,1
   19a38:	bf65                	j	199f0 <__letf2+0xa2>

00019a3a <__multf3>:
   19a3a:	7131                	addi	sp,sp,-192
   19a3c:	d552                	sw	s4,168(sp)
   19a3e:	d356                	sw	s5,164(sp)
   19a40:	d15a                	sw	s6,160(sp)
   19a42:	cf5e                	sw	s7,156(sp)
   19a44:	c62a                	sw	a0,12(sp)
   19a46:	419c                	lw	a5,0(a1)
   19a48:	41c8                	lw	a0,4(a1)
   19a4a:	4594                	lw	a3,8(a1)
   19a4c:	45d8                	lw	a4,12(a1)
   19a4e:	00062a83          	lw	s5,0(a2)
   19a52:	00462b83          	lw	s7,4(a2)
   19a56:	00862b03          	lw	s6,8(a2)
   19a5a:	00c62a03          	lw	s4,12(a2)
   19a5e:	df06                	sw	ra,188(sp)
   19a60:	dd22                	sw	s0,184(sp)
   19a62:	db26                	sw	s1,180(sp)
   19a64:	d94a                	sw	s2,176(sp)
   19a66:	d74e                	sw	s3,172(sp)
   19a68:	cd62                	sw	s8,152(sp)
   19a6a:	cb66                	sw	s9,148(sp)
   19a6c:	c96a                	sw	s10,144(sp)
   19a6e:	c76e                	sw	s11,140(sp)
   19a70:	002024f3          	frrm	s1
   19a74:	6621                	lui	a2,0x8
   19a76:	01071413          	slli	s0,a4,0x10
   19a7a:	8041                	srli	s0,s0,0x10
   19a7c:	01075913          	srli	s2,a4,0x10
   19a80:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   19a82:	d0be                	sw	a5,96(sp)
   19a84:	d2aa                	sw	a0,100(sp)
   19a86:	d4b6                	sw	a3,104(sp)
   19a88:	d6ba                	sw	a4,108(sp)
   19a8a:	d83e                	sw	a5,48(sp)
   19a8c:	da2a                	sw	a0,52(sp)
   19a8e:	dc36                	sw	a3,56(sp)
   19a90:	de22                	sw	s0,60(sp)
   19a92:	00c97933          	and	s2,s2,a2
   19a96:	01f75993          	srli	s3,a4,0x1f
   19a9a:	02090a63          	beqz	s2,19ace <__multf3+0x94>
   19a9e:	10c90d63          	beq	s2,a2,19bb8 <__multf3+0x17e>
   19aa2:	6741                	lui	a4,0x10
   19aa4:	8c59                	or	s0,s0,a4
   19aa6:	de22                	sw	s0,60(sp)
   19aa8:	1818                	addi	a4,sp,48
   19aaa:	104c                	addi	a1,sp,36
   19aac:	4754                	lw	a3,12(a4)
   19aae:	4710                	lw	a2,8(a4)
   19ab0:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   19ab2:	068e                	slli	a3,a3,0x3
   19ab4:	8275                	srli	a2,a2,0x1d
   19ab6:	8ed1                	or	a3,a3,a2
   19ab8:	cb14                	sw	a3,16(a4)
   19aba:	fee599e3          	bne	a1,a4,19aac <__multf3+0x72>
   19abe:	078e                	slli	a5,a5,0x3
   19ac0:	d83e                	sw	a5,48(sp)
   19ac2:	77f1                	lui	a5,0xffffc
   19ac4:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffde06d>
   19ac6:	993e                	add	s2,s2,a5
   19ac8:	4c01                	li	s8,0
   19aca:	4401                	li	s0,0
   19acc:	a211                	j	19bd0 <__multf3+0x196>
   19ace:	00a7e733          	or	a4,a5,a0
   19ad2:	8f55                	or	a4,a4,a3
   19ad4:	8f41                	or	a4,a4,s0
   19ad6:	70070d63          	beqz	a4,1a1f0 <__multf3+0x7b6>
   19ada:	cc2d                	beqz	s0,19b54 <__multf3+0x11a>
   19adc:	8522                	mv	a0,s0
   19ade:	108020ef          	jal	1bbe6 <__clzsi2>
   19ae2:	ff450693          	addi	a3,a0,-12
   19ae6:	4056d793          	srai	a5,a3,0x5
   19aea:	8afd                	andi	a3,a3,31
   19aec:	c6d9                	beqz	a3,19b7a <__multf3+0x140>
   19aee:	5671                	li	a2,-4
   19af0:	02c78633          	mul	a2,a5,a2
   19af4:	02000813          	li	a6,32
   19af8:	03010313          	addi	t1,sp,48
   19afc:	40d80833          	sub	a6,a6,a3
   19b00:	00c60713          	addi	a4,a2,12
   19b04:	971a                	add	a4,a4,t1
   19b06:	40c00633          	neg	a2,a2
   19b0a:	08e31863          	bne	t1,a4,19b9a <__multf3+0x160>
   19b0e:	fff78713          	addi	a4,a5,-1
   19b12:	078a                	slli	a5,a5,0x2
   19b14:	1810                	addi	a2,sp,48
   19b16:	05078793          	addi	a5,a5,80
   19b1a:	97b2                	add	a5,a5,a2
   19b1c:	5642                	lw	a2,48(sp)
   19b1e:	00d616b3          	sll	a3,a2,a3
   19b22:	fad7a823          	sw	a3,-80(a5)
   19b26:	00170793          	addi	a5,a4,1
   19b2a:	078a                	slli	a5,a5,0x2
   19b2c:	46a1                	li	a3,8
   19b2e:	1818                	addi	a4,sp,48
   19b30:	00d7e863          	bltu	a5,a3,19b40 <__multf3+0x106>
   19b34:	00072023          	sw	zero,0(a4)
   19b38:	00072223          	sw	zero,4(a4)
   19b3c:	17e1                	addi	a5,a5,-8
   19b3e:	1838                	addi	a4,sp,56
   19b40:	4691                	li	a3,4
   19b42:	00d7e463          	bltu	a5,a3,19b4a <__multf3+0x110>
   19b46:	00072023          	sw	zero,0(a4)
   19b4a:	7971                	lui	s2,0xffffc
   19b4c:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffde07d>
   19b4e:	40a90933          	sub	s2,s2,a0
   19b52:	bf9d                	j	19ac8 <__multf3+0x8e>
   19b54:	c699                	beqz	a3,19b62 <__multf3+0x128>
   19b56:	8536                	mv	a0,a3
   19b58:	08e020ef          	jal	1bbe6 <__clzsi2>
   19b5c:	02050513          	addi	a0,a0,32
   19b60:	b749                	j	19ae2 <__multf3+0xa8>
   19b62:	c511                	beqz	a0,19b6e <__multf3+0x134>
   19b64:	082020ef          	jal	1bbe6 <__clzsi2>
   19b68:	04050513          	addi	a0,a0,64
   19b6c:	bf9d                	j	19ae2 <__multf3+0xa8>
   19b6e:	853e                	mv	a0,a5
   19b70:	076020ef          	jal	1bbe6 <__clzsi2>
   19b74:	06050513          	addi	a0,a0,96
   19b78:	b7ad                	j	19ae2 <__multf3+0xa8>
   19b7a:	5671                	li	a2,-4
   19b7c:	02c78633          	mul	a2,a5,a2
   19b80:	1878                	addi	a4,sp,60
   19b82:	468d                	li	a3,3
   19b84:	00c705b3          	add	a1,a4,a2
   19b88:	418c                	lw	a1,0(a1)
   19b8a:	16fd                	addi	a3,a3,-1
   19b8c:	1771                	addi	a4,a4,-4
   19b8e:	c34c                	sw	a1,4(a4)
   19b90:	fef6dae3          	bge	a3,a5,19b84 <__multf3+0x14a>
   19b94:	fff78713          	addi	a4,a5,-1
   19b98:	b779                	j	19b26 <__multf3+0xec>
   19b9a:	430c                	lw	a1,0(a4)
   19b9c:	ffc72883          	lw	a7,-4(a4)
   19ba0:	00c70e33          	add	t3,a4,a2
   19ba4:	00d595b3          	sll	a1,a1,a3
   19ba8:	0108d8b3          	srl	a7,a7,a6
   19bac:	0115e5b3          	or	a1,a1,a7
   19bb0:	00be2023          	sw	a1,0(t3)
   19bb4:	1771                	addi	a4,a4,-4
   19bb6:	bf91                	j	19b0a <__multf3+0xd0>
   19bb8:	8fc9                	or	a5,a5,a0
   19bba:	8fd5                	or	a5,a5,a3
   19bbc:	8fc1                	or	a5,a5,s0
   19bbe:	62078c63          	beqz	a5,1a1f6 <__multf3+0x7bc>
   19bc2:	0442                	slli	s0,s0,0x10
   19bc4:	8441                	srai	s0,s0,0x10
   19bc6:	fff44413          	not	s0,s0
   19bca:	807d                	srli	s0,s0,0x1f
   19bcc:	0412                	slli	s0,s0,0x4
   19bce:	4c0d                	li	s8,3
   19bd0:	010a1513          	slli	a0,s4,0x10
   19bd4:	6721                	lui	a4,0x8
   19bd6:	010a5793          	srli	a5,s4,0x10
   19bda:	8141                	srli	a0,a0,0x10
   19bdc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19bde:	d6d2                	sw	s4,108(sp)
   19be0:	d0d6                	sw	s5,96(sp)
   19be2:	d2de                	sw	s7,100(sp)
   19be4:	d4da                	sw	s6,104(sp)
   19be6:	c0d6                	sw	s5,64(sp)
   19be8:	c2de                	sw	s7,68(sp)
   19bea:	c4da                	sw	s6,72(sp)
   19bec:	c6aa                	sw	a0,76(sp)
   19bee:	8ff9                	and	a5,a5,a4
   19bf0:	01fa5a13          	srli	s4,s4,0x1f
   19bf4:	60078363          	beqz	a5,1a1fa <__multf3+0x7c0>
   19bf8:	6ee78863          	beq	a5,a4,1a2e8 <__multf3+0x8ae>
   19bfc:	6741                	lui	a4,0x10
   19bfe:	8d59                	or	a0,a0,a4
   19c00:	c6aa                	sw	a0,76(sp)
   19c02:	0098                	addi	a4,sp,64
   19c04:	184c                	addi	a1,sp,52
   19c06:	4754                	lw	a3,12(a4)
   19c08:	4710                	lw	a2,8(a4)
   19c0a:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   19c0c:	068e                	slli	a3,a3,0x3
   19c0e:	8275                	srli	a2,a2,0x1d
   19c10:	8ed1                	or	a3,a3,a2
   19c12:	cb14                	sw	a3,16(a4)
   19c14:	fee599e3          	bne	a1,a4,19c06 <__multf3+0x1cc>
   19c18:	7771                	lui	a4,0xffffc
   19c1a:	0a8e                	slli	s5,s5,0x3
   19c1c:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffde06d>
   19c1e:	c0d6                	sw	s5,64(sp)
   19c20:	97ba                	add	a5,a5,a4
   19c22:	4681                	li	a3,0
   19c24:	97ca                	add	a5,a5,s2
   19c26:	ca3e                	sw	a5,20(sp)
   19c28:	0785                	addi	a5,a5,1
   19c2a:	c83e                	sw	a5,16(sp)
   19c2c:	002c1793          	slli	a5,s8,0x2
   19c30:	8fd5                	or	a5,a5,a3
   19c32:	4729                	li	a4,10
   19c34:	70f74363          	blt	a4,a5,1a33a <__multf3+0x900>
   19c38:	4609                	li	a2,2
   19c3a:	0149c733          	xor	a4,s3,s4
   19c3e:	6cf64863          	blt	a2,a5,1a30e <__multf3+0x8d4>
   19c42:	17fd                	addi	a5,a5,-1
   19c44:	4605                	li	a2,1
   19c46:	70f67263          	bgeu	a2,a5,1a34a <__multf3+0x910>
   19c4a:	5542                	lw	a0,48(sp)
   19c4c:	4306                	lw	t1,64(sp)
   19c4e:	6841                	lui	a6,0x10
   19c50:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   19c54:	01055913          	srli	s2,a0,0x10
   19c58:	01035393          	srli	t2,t1,0x10
   19c5c:	8d6d                	and	a0,a0,a1
   19c5e:	00b37333          	and	t1,t1,a1
   19c62:	02a30633          	mul	a2,t1,a0
   19c66:	026908b3          	mul	a7,s2,t1
   19c6a:	01065793          	srli	a5,a2,0x10
   19c6e:	02a386b3          	mul	a3,t2,a0
   19c72:	96c6                	add	a3,a3,a7
   19c74:	97b6                	add	a5,a5,a3
   19c76:	02790bb3          	mul	s7,s2,t2
   19c7a:	0117f363          	bgeu	a5,a7,19c80 <__multf3+0x246>
   19c7e:	9bc2                	add	s7,s7,a6
   19c80:	4896                	lw	a7,68(sp)
   19c82:	0107d693          	srli	a3,a5,0x10
   19c86:	8fed                	and	a5,a5,a1
   19c88:	8e6d                	and	a2,a2,a1
   19c8a:	07c2                	slli	a5,a5,0x10
   19c8c:	97b2                	add	a5,a5,a2
   19c8e:	0108df93          	srli	t6,a7,0x10
   19c92:	00b8f8b3          	and	a7,a7,a1
   19c96:	031905b3          	mul	a1,s2,a7
   19c9a:	d03e                	sw	a5,32(sp)
   19c9c:	d0be                	sw	a5,96(sp)
   19c9e:	02af8633          	mul	a2,t6,a0
   19ca2:	02a887b3          	mul	a5,a7,a0
   19ca6:	962e                	add	a2,a2,a1
   19ca8:	0107d813          	srli	a6,a5,0x10
   19cac:	9832                	add	a6,a6,a2
   19cae:	03f90b33          	mul	s6,s2,t6
   19cb2:	00b87463          	bgeu	a6,a1,19cba <__multf3+0x280>
   19cb6:	6641                	lui	a2,0x10
   19cb8:	9b32                	add	s6,s6,a2
   19cba:	01085613          	srli	a2,a6,0x10
   19cbe:	55d2                	lw	a1,52(sp)
   19cc0:	cc32                	sw	a2,24(sp)
   19cc2:	6641                	lui	a2,0x10
   19cc4:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   19cc8:	01d87833          	and	a6,a6,t4
   19ccc:	01d7f7b3          	and	a5,a5,t4
   19cd0:	0105d293          	srli	t0,a1,0x10
   19cd4:	0842                	slli	a6,a6,0x10
   19cd6:	01d5f5b3          	and	a1,a1,t4
   19cda:	983e                	add	a6,a6,a5
   19cdc:	02628a33          	mul	s4,t0,t1
   19ce0:	96c2                	add	a3,a3,a6
   19ce2:	026587b3          	mul	a5,a1,t1
   19ce6:	02b38eb3          	mul	t4,t2,a1
   19cea:	0107d993          	srli	s3,a5,0x10
   19cee:	9ed2                	add	t4,t4,s4
   19cf0:	99f6                	add	s3,s3,t4
   19cf2:	02538f33          	mul	t5,t2,t0
   19cf6:	0149f363          	bgeu	s3,s4,19cfc <__multf3+0x2c2>
   19cfa:	9f32                	add	t5,t5,a2
   19cfc:	6c41                	lui	s8,0x10
   19cfe:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   19d02:	8ff1                	and	a5,a5,a2
   19d04:	0109da13          	srli	s4,s3,0x10
   19d08:	00c9f9b3          	and	s3,s3,a2
   19d0c:	09c2                	slli	s3,s3,0x10
   19d0e:	99be                	add	s3,s3,a5
   19d10:	02b88eb3          	mul	t4,a7,a1
   19d14:	9a7a                	add	s4,s4,t5
   19d16:	03128633          	mul	a2,t0,a7
   19d1a:	010ed793          	srli	a5,t4,0x10
   19d1e:	02bf8ab3          	mul	s5,t6,a1
   19d22:	9ab2                	add	s5,s5,a2
   19d24:	97d6                	add	a5,a5,s5
   19d26:	025f8f33          	mul	t5,t6,t0
   19d2a:	00c7f363          	bgeu	a5,a2,19d30 <__multf3+0x2f6>
   19d2e:	9f62                	add	t5,t5,s8
   19d30:	0107d613          	srli	a2,a5,0x10
   19d34:	967a                	add	a2,a2,t5
   19d36:	6ac1                	lui	s5,0x10
   19d38:	ce32                	sw	a2,28(sp)
   19d3a:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   19d3e:	8ff1                	and	a5,a5,a2
   19d40:	00cefeb3          	and	t4,t4,a2
   19d44:	07c2                	slli	a5,a5,0x10
   19d46:	97f6                	add	a5,a5,t4
   19d48:	d23e                	sw	a5,36(sp)
   19d4a:	47a6                	lw	a5,72(sp)
   19d4c:	0107dd93          	srli	s11,a5,0x10
   19d50:	00c7fd33          	and	s10,a5,a2
   19d54:	02ad0633          	mul	a2,s10,a0
   19d58:	03a90c33          	mul	s8,s2,s10
   19d5c:	01065793          	srli	a5,a2,0x10
   19d60:	02ad8f33          	mul	t5,s11,a0
   19d64:	9f62                	add	t5,t5,s8
   19d66:	97fa                	add	a5,a5,t5
   19d68:	03b90eb3          	mul	t4,s2,s11
   19d6c:	0187f363          	bgeu	a5,s8,19d72 <__multf3+0x338>
   19d70:	9ed6                	add	t4,t4,s5
   19d72:	0107df13          	srli	t5,a5,0x10
   19d76:	6cc1                	lui	s9,0x10
   19d78:	01df0e33          	add	t3,t5,t4
   19d7c:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   19d80:	01d7f7b3          	and	a5,a5,t4
   19d84:	01d67633          	and	a2,a2,t4
   19d88:	07c2                	slli	a5,a5,0x10
   19d8a:	97b2                	add	a5,a5,a2
   19d8c:	5662                	lw	a2,56(sp)
   19d8e:	d472                	sw	t3,40(sp)
   19d90:	d63e                	sw	a5,44(sp)
   19d92:	01065f13          	srli	t5,a2,0x10
   19d96:	01d67633          	and	a2,a2,t4
   19d9a:	02660ab3          	mul	s5,a2,t1
   19d9e:	026f0e33          	mul	t3,t5,t1
   19da2:	010ad793          	srli	a5,s5,0x10
   19da6:	02c38eb3          	mul	t4,t2,a2
   19daa:	9ef2                	add	t4,t4,t3
   19dac:	9ebe                	add	t4,t4,a5
   19dae:	03e38c33          	mul	s8,t2,t5
   19db2:	01cef363          	bgeu	t4,t3,19db8 <__multf3+0x37e>
   19db6:	9c66                	add	s8,s8,s9
   19db8:	47e2                	lw	a5,24(sp)
   19dba:	96de                	add	a3,a3,s7
   19dbc:	0106b833          	sltu	a6,a3,a6
   19dc0:	010edc93          	srli	s9,t4,0x10
   19dc4:	6e41                	lui	t3,0x10
   19dc6:	9c66                	add	s8,s8,s9
   19dc8:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   19dcc:	01078e33          	add	t3,a5,a6
   19dd0:	013687b3          	add	a5,a3,s3
   19dd4:	9e5a                	add	t3,t3,s6
   19dd6:	00d7b6b3          	sltu	a3,a5,a3
   19dda:	cc3e                	sw	a5,24(sp)
   19ddc:	d2be                	sw	a5,100(sp)
   19dde:	5792                	lw	a5,36(sp)
   19de0:	9a72                	add	s4,s4,t3
   19de2:	96d2                	add	a3,a3,s4
   19de4:	01ca39b3          	sltu	s3,s4,t3
   19de8:	0146ba33          	sltu	s4,a3,s4
   19dec:	010e3e33          	sltu	t3,t3,a6
   19df0:	00f68833          	add	a6,a3,a5
   19df4:	47f2                	lw	a5,28(sp)
   19df6:	0149e9b3          	or	s3,s3,s4
   19dfa:	9e4e                	add	t3,t3,s3
   19dfc:	00fe09b3          	add	s3,t3,a5
   19e00:	57b2                	lw	a5,44(sp)
   19e02:	5a22                	lw	s4,40(sp)
   19e04:	00d836b3          	sltu	a3,a6,a3
   19e08:	019efeb3          	and	t4,t4,s9
   19e0c:	96ce                	add	a3,a3,s3
   19e0e:	97c2                	add	a5,a5,a6
   19e10:	0ec2                	slli	t4,t4,0x10
   19e12:	019afab3          	and	s5,s5,s9
   19e16:	9a36                	add	s4,s4,a3
   19e18:	0107b833          	sltu	a6,a5,a6
   19e1c:	9ed6                	add	t4,t4,s5
   19e1e:	9ebe                	add	t4,t4,a5
   19e20:	9852                	add	a6,a6,s4
   19e22:	9c42                	add	s8,s8,a6
   19e24:	00feb7b3          	sltu	a5,t4,a5
   19e28:	ce76                	sw	t4,28(sp)
   19e2a:	d4f6                	sw	t4,104(sp)
   19e2c:	4eb6                	lw	t4,76(sp)
   19e2e:	01c9be33          	sltu	t3,s3,t3
   19e32:	97e2                	add	a5,a5,s8
   19e34:	0136b9b3          	sltu	s3,a3,s3
   19e38:	00da36b3          	sltu	a3,s4,a3
   19e3c:	01483a33          	sltu	s4,a6,s4
   19e40:	013e69b3          	or	s3,t3,s3
   19e44:	0146e6b3          	or	a3,a3,s4
   19e48:	010c3833          	sltu	a6,s8,a6
   19e4c:	0187bc33          	sltu	s8,a5,s8
   19e50:	96ce                	add	a3,a3,s3
   19e52:	01886833          	or	a6,a6,s8
   19e56:	010ed993          	srli	s3,t4,0x10
   19e5a:	019efeb3          	and	t4,t4,s9
   19e5e:	03d90a33          	mul	s4,s2,t4
   19e62:	00d80e33          	add	t3,a6,a3
   19e66:	02ae86b3          	mul	a3,t4,a0
   19e6a:	02a98533          	mul	a0,s3,a0
   19e6e:	0106d813          	srli	a6,a3,0x10
   19e72:	9552                	add	a0,a0,s4
   19e74:	982a                	add	a6,a6,a0
   19e76:	03390933          	mul	s2,s2,s3
   19e7a:	01487463          	bgeu	a6,s4,19e82 <__multf3+0x448>
   19e7e:	6541                	lui	a0,0x10
   19e80:	992a                	add	s2,s2,a0
   19e82:	01085513          	srli	a0,a6,0x10
   19e86:	954a                	add	a0,a0,s2
   19e88:	5a72                	lw	s4,60(sp)
   19e8a:	6ac1                	lui	s5,0x10
   19e8c:	d22a                	sw	a0,36(sp)
   19e8e:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   19e92:	00a87833          	and	a6,a6,a0
   19e96:	010a5913          	srli	s2,s4,0x10
   19e9a:	0842                	slli	a6,a6,0x10
   19e9c:	8ee9                	and	a3,a3,a0
   19e9e:	00aa7a33          	and	s4,s4,a0
   19ea2:	96c2                	add	a3,a3,a6
   19ea4:	026a0533          	mul	a0,s4,t1
   19ea8:	d436                	sw	a3,40(sp)
   19eaa:	02690333          	mul	t1,s2,t1
   19eae:	01055693          	srli	a3,a0,0x10
   19eb2:	03238833          	mul	a6,t2,s2
   19eb6:	034383b3          	mul	t2,t2,s4
   19eba:	939a                	add	t2,t2,t1
   19ebc:	969e                	add	a3,a3,t2
   19ebe:	0066f363          	bgeu	a3,t1,19ec4 <__multf3+0x48a>
   19ec2:	9856                	add	a6,a6,s5
   19ec4:	0106da93          	srli	s5,a3,0x10
   19ec8:	6bc1                	lui	s7,0x10
   19eca:	9ac2                	add	s5,s5,a6
   19ecc:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   19ed0:	01057533          	and	a0,a0,a6
   19ed4:	0106f6b3          	and	a3,a3,a6
   19ed8:	03a28333          	mul	t1,t0,s10
   19edc:	06c2                	slli	a3,a3,0x10
   19ede:	96aa                	add	a3,a3,a0
   19ee0:	03a58833          	mul	a6,a1,s10
   19ee4:	02bd83b3          	mul	t2,s11,a1
   19ee8:	01085513          	srli	a0,a6,0x10
   19eec:	939a                	add	t2,t2,t1
   19eee:	951e                	add	a0,a0,t2
   19ef0:	03b28b33          	mul	s6,t0,s11
   19ef4:	00657363          	bgeu	a0,t1,19efa <__multf3+0x4c0>
   19ef8:	9b5e                	add	s6,s6,s7
   19efa:	6c41                	lui	s8,0x10
   19efc:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   19f00:	01055393          	srli	t2,a0,0x10
   19f04:	00657533          	and	a0,a0,t1
   19f08:	00687833          	and	a6,a6,t1
   19f0c:	0542                	slli	a0,a0,0x10
   19f0e:	93da                	add	t2,t2,s6
   19f10:	02cf8333          	mul	t1,t6,a2
   19f14:	9542                	add	a0,a0,a6
   19f16:	031f0b33          	mul	s6,t5,a7
   19f1a:	02c88833          	mul	a6,a7,a2
   19f1e:	935a                	add	t1,t1,s6
   19f20:	01085c93          	srli	s9,a6,0x10
   19f24:	9366                	add	t1,t1,s9
   19f26:	03ef8bb3          	mul	s7,t6,t5
   19f2a:	01637363          	bgeu	t1,s6,19f30 <__multf3+0x4f6>
   19f2e:	9be2                	add	s7,s7,s8
   19f30:	01035b13          	srli	s6,t1,0x10
   19f34:	9b5e                	add	s6,s6,s7
   19f36:	6bc1                	lui	s7,0x10
   19f38:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   19f3c:	01837333          	and	t1,t1,s8
   19f40:	0342                	slli	t1,t1,0x10
   19f42:	01887833          	and	a6,a6,s8
   19f46:	981a                	add	a6,a6,t1
   19f48:	5322                	lw	t1,40(sp)
   19f4a:	5c12                	lw	s8,36(sp)
   19f4c:	933e                	add	t1,t1,a5
   19f4e:	9c72                	add	s8,s8,t3
   19f50:	00f337b3          	sltu	a5,t1,a5
   19f54:	97e2                	add	a5,a5,s8
   19f56:	969a                	add	a3,a3,t1
   19f58:	9abe                	add	s5,s5,a5
   19f5a:	0066b333          	sltu	t1,a3,t1
   19f5e:	9356                	add	t1,t1,s5
   19f60:	9536                	add	a0,a0,a3
   19f62:	939a                	add	t2,t2,t1
   19f64:	00d536b3          	sltu	a3,a0,a3
   19f68:	969e                	add	a3,a3,t2
   19f6a:	982a                	add	a6,a6,a0
   19f6c:	01cc3e33          	sltu	t3,s8,t3
   19f70:	9b36                	add	s6,s6,a3
   19f72:	0187bc33          	sltu	s8,a5,s8
   19f76:	00a83533          	sltu	a0,a6,a0
   19f7a:	00fab7b3          	sltu	a5,s5,a5
   19f7e:	01533ab3          	sltu	s5,t1,s5
   19f82:	018e6c33          	or	s8,t3,s8
   19f86:	0157e7b3          	or	a5,a5,s5
   19f8a:	0063b333          	sltu	t1,t2,t1
   19f8e:	955a                	add	a0,a0,s6
   19f90:	0076b3b3          	sltu	t2,a3,t2
   19f94:	97e2                	add	a5,a5,s8
   19f96:	00736333          	or	t1,t1,t2
   19f9a:	00db36b3          	sltu	a3,s6,a3
   19f9e:	01653b33          	sltu	s6,a0,s6
   19fa2:	00f303b3          	add	t2,t1,a5
   19fa6:	0166e6b3          	or	a3,a3,s6
   19faa:	00768333          	add	t1,a3,t2
   19fae:	03af0e33          	mul	t3,t5,s10
   19fb2:	d6c2                	sw	a6,108(sp)
   19fb4:	03a606b3          	mul	a3,a2,s10
   19fb8:	02cd8ab3          	mul	s5,s11,a2
   19fbc:	0106d793          	srli	a5,a3,0x10
   19fc0:	9af2                	add	s5,s5,t3
   19fc2:	97d6                	add	a5,a5,s5
   19fc4:	03ed83b3          	mul	t2,s11,t5
   19fc8:	01c7f363          	bgeu	a5,t3,19fce <__multf3+0x594>
   19fcc:	93de                	add	t2,t2,s7
   19fce:	0107de13          	srli	t3,a5,0x10
   19fd2:	6ac1                	lui	s5,0x10
   19fd4:	9e1e                	add	t3,t3,t2
   19fd6:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   19fda:	0077f7b3          	and	a5,a5,t2
   19fde:	0076f6b3          	and	a3,a3,t2
   19fe2:	07c2                	slli	a5,a5,0x10
   19fe4:	03d28b33          	mul	s6,t0,t4
   19fe8:	97b6                	add	a5,a5,a3
   19fea:	02be86b3          	mul	a3,t4,a1
   19fee:	02b985b3          	mul	a1,s3,a1
   19ff2:	0106d393          	srli	t2,a3,0x10
   19ff6:	95da                	add	a1,a1,s6
   19ff8:	93ae                	add	t2,t2,a1
   19ffa:	033282b3          	mul	t0,t0,s3
   19ffe:	0163f363          	bgeu	t2,s6,1a004 <__multf3+0x5ca>
   1a002:	92d6                	add	t0,t0,s5
   1a004:	0103d593          	srli	a1,t2,0x10
   1a008:	6b41                	lui	s6,0x10
   1a00a:	92ae                	add	t0,t0,a1
   1a00c:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   1a010:	8eed                	and	a3,a3,a1
   1a012:	00b3f3b3          	and	t2,t2,a1
   1a016:	03c2                	slli	t2,t2,0x10
   1a018:	031a05b3          	mul	a1,s4,a7
   1a01c:	93b6                	add	t2,t2,a3
   1a01e:	031908b3          	mul	a7,s2,a7
   1a022:	0105d693          	srli	a3,a1,0x10
   1a026:	032f8ab3          	mul	s5,t6,s2
   1a02a:	034f8fb3          	mul	t6,t6,s4
   1a02e:	9fc6                	add	t6,t6,a7
   1a030:	96fe                	add	a3,a3,t6
   1a032:	0116f363          	bgeu	a3,a7,1a038 <__multf3+0x5fe>
   1a036:	9ada                	add	s5,s5,s6
   1a038:	0106df93          	srli	t6,a3,0x10
   1a03c:	68c1                	lui	a7,0x10
   1a03e:	9fd6                	add	t6,t6,s5
   1a040:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   1a044:	0156f6b3          	and	a3,a3,s5
   1a048:	0155f5b3          	and	a1,a1,s5
   1a04c:	06c2                	slli	a3,a3,0x10
   1a04e:	03df0ab3          	mul	s5,t5,t4
   1a052:	96ae                	add	a3,a3,a1
   1a054:	03d605b3          	mul	a1,a2,t4
   1a058:	02c98633          	mul	a2,s3,a2
   1a05c:	01560b33          	add	s6,a2,s5
   1a060:	0105d613          	srli	a2,a1,0x10
   1a064:	965a                	add	a2,a2,s6
   1a066:	033f0f33          	mul	t5,t5,s3
   1a06a:	01567363          	bgeu	a2,s5,1a070 <__multf3+0x636>
   1a06e:	9f46                	add	t5,t5,a7
   1a070:	6ac1                	lui	s5,0x10
   1a072:	01065893          	srli	a7,a2,0x10
   1a076:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   1a07a:	9f46                	add	t5,t5,a7
   1a07c:	016678b3          	and	a7,a2,s6
   1a080:	0165f5b3          	and	a1,a1,s6
   1a084:	08c2                	slli	a7,a7,0x10
   1a086:	03aa0633          	mul	a2,s4,s10
   1a08a:	98ae                	add	a7,a7,a1
   1a08c:	03a90bb3          	mul	s7,s2,s10
   1a090:	01065c13          	srli	s8,a2,0x10
   1a094:	034d85b3          	mul	a1,s11,s4
   1a098:	95de                	add	a1,a1,s7
   1a09a:	95e2                	add	a1,a1,s8
   1a09c:	032d8b33          	mul	s6,s11,s2
   1a0a0:	0175f363          	bgeu	a1,s7,1a0a6 <__multf3+0x66c>
   1a0a4:	9b56                	add	s6,s6,s5
   1a0a6:	97aa                	add	a5,a5,a0
   1a0a8:	9e1a                	add	t3,t3,t1
   1a0aa:	00a7b533          	sltu	a0,a5,a0
   1a0ae:	9572                	add	a0,a0,t3
   1a0b0:	93be                	add	t2,t2,a5
   1a0b2:	92aa                	add	t0,t0,a0
   1a0b4:	00f3b7b3          	sltu	a5,t2,a5
   1a0b8:	9796                	add	a5,a5,t0
   1a0ba:	006e3333          	sltu	t1,t3,t1
   1a0be:	01c53e33          	sltu	t3,a0,t3
   1a0c2:	00a2b533          	sltu	a0,t0,a0
   1a0c6:	0057b2b3          	sltu	t0,a5,t0
   1a0ca:	00556533          	or	a0,a0,t0
   1a0ce:	01c36333          	or	t1,t1,t3
   1a0d2:	932a                	add	t1,t1,a0
   1a0d4:	03da0533          	mul	a0,s4,t4
   1a0d8:	969e                	add	a3,a3,t2
   1a0da:	9fbe                	add	t6,t6,a5
   1a0dc:	0105da93          	srli	s5,a1,0x10
   1a0e0:	d8b6                	sw	a3,112(sp)
   1a0e2:	0076b6b3          	sltu	a3,a3,t2
   1a0e6:	96fe                	add	a3,a3,t6
   1a0e8:	9ada                	add	s5,s5,s6
   1a0ea:	6b41                	lui	s6,0x10
   1a0ec:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   1a0f0:	03d90eb3          	mul	t4,s2,t4
   1a0f4:	00ffb7b3          	sltu	a5,t6,a5
   1a0f8:	01f6bfb3          	sltu	t6,a3,t6
   1a0fc:	0175f5b3          	and	a1,a1,s7
   1a100:	01f7e7b3          	or	a5,a5,t6
   1a104:	98b6                	add	a7,a7,a3
   1a106:	05c2                	slli	a1,a1,0x10
   1a108:	979a                	add	a5,a5,t1
   1a10a:	01767633          	and	a2,a2,s7
   1a10e:	9f3e                	add	t5,t5,a5
   1a110:	03298933          	mul	s2,s3,s2
   1a114:	962e                	add	a2,a2,a1
   1a116:	00d8b6b3          	sltu	a3,a7,a3
   1a11a:	96fa                	add	a3,a3,t5
   1a11c:	9646                	add	a2,a2,a7
   1a11e:	00ff37b3          	sltu	a5,t5,a5
   1a122:	9ab6                	add	s5,s5,a3
   1a124:	01e6bf33          	sltu	t5,a3,t5
   1a128:	dab2                	sw	a2,116(sp)
   1a12a:	01163633          	sltu	a2,a2,a7
   1a12e:	034989b3          	mul	s3,s3,s4
   1a132:	01e7e5b3          	or	a1,a5,t5
   1a136:	9656                	add	a2,a2,s5
   1a138:	01055793          	srli	a5,a0,0x10
   1a13c:	00dab6b3          	sltu	a3,s5,a3
   1a140:	01563ab3          	sltu	s5,a2,s5
   1a144:	0156e6b3          	or	a3,a3,s5
   1a148:	99f6                	add	s3,s3,t4
   1a14a:	97ce                	add	a5,a5,s3
   1a14c:	01d7f363          	bgeu	a5,t4,1a152 <__multf3+0x718>
   1a150:	995a                	add	s2,s2,s6
   1a152:	0107d893          	srli	a7,a5,0x10
   1a156:	95c6                	add	a1,a1,a7
   1a158:	68c1                	lui	a7,0x10
   1a15a:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   1a15c:	0117f7b3          	and	a5,a5,a7
   1a160:	07c2                	slli	a5,a5,0x10
   1a162:	01157533          	and	a0,a0,a7
   1a166:	97aa                	add	a5,a5,a0
   1a168:	97b2                	add	a5,a5,a2
   1a16a:	96ae                	add	a3,a3,a1
   1a16c:	00c7b633          	sltu	a2,a5,a2
   1a170:	9636                	add	a2,a2,a3
   1a172:	dcbe                	sw	a5,120(sp)
   1a174:	46e2                	lw	a3,24(sp)
   1a176:	5782                	lw	a5,32(sp)
   1a178:	964a                	add	a2,a2,s2
   1a17a:	0836                	slli	a6,a6,0xd
   1a17c:	8fd5                	or	a5,a5,a3
   1a17e:	46f2                	lw	a3,28(sp)
   1a180:	deb2                	sw	a2,124(sp)
   1a182:	188c                	addi	a1,sp,112
   1a184:	8fd5                	or	a5,a5,a3
   1a186:	00f86833          	or	a6,a6,a5
   1a18a:	109c                	addi	a5,sp,96
   1a18c:	47d4                	lw	a3,12(a5)
   1a18e:	4b90                	lw	a2,16(a5)
   1a190:	82cd                	srli	a3,a3,0x13
   1a192:	0636                	slli	a2,a2,0xd
   1a194:	8ed1                	or	a3,a3,a2
   1a196:	c394                	sw	a3,0(a5)
   1a198:	0791                	addi	a5,a5,4
   1a19a:	fef599e3          	bne	a1,a5,1a18c <__multf3+0x752>
   1a19e:	5786                	lw	a5,96(sp)
   1a1a0:	01003833          	snez	a6,a6
   1a1a4:	56b6                	lw	a3,108(sp)
   1a1a6:	00f86833          	or	a6,a6,a5
   1a1aa:	57a6                	lw	a5,104(sp)
   1a1ac:	ceb6                	sw	a3,92(sp)
   1a1ae:	c8c2                	sw	a6,80(sp)
   1a1b0:	ccbe                	sw	a5,88(sp)
   1a1b2:	5796                	lw	a5,100(sp)
   1a1b4:	cabe                	sw	a5,84(sp)
   1a1b6:	00b69793          	slli	a5,a3,0xb
   1a1ba:	0207d863          	bgez	a5,1a1ea <__multf3+0x7b0>
   1a1be:	087e                	slli	a6,a6,0x1f
   1a1c0:	089c                	addi	a5,sp,80
   1a1c2:	08e8                	addi	a0,sp,92
   1a1c4:	4390                	lw	a2,0(a5)
   1a1c6:	43cc                	lw	a1,4(a5)
   1a1c8:	8205                	srli	a2,a2,0x1
   1a1ca:	05fe                	slli	a1,a1,0x1f
   1a1cc:	8e4d                	or	a2,a2,a1
   1a1ce:	c390                	sw	a2,0(a5)
   1a1d0:	0791                	addi	a5,a5,4
   1a1d2:	fef519e3          	bne	a0,a5,1a1c4 <__multf3+0x78a>
   1a1d6:	47c6                	lw	a5,80(sp)
   1a1d8:	01003833          	snez	a6,a6
   1a1dc:	8285                	srli	a3,a3,0x1
   1a1de:	0107e7b3          	or	a5,a5,a6
   1a1e2:	c8be                	sw	a5,80(sp)
   1a1e4:	47c2                	lw	a5,16(sp)
   1a1e6:	ceb6                	sw	a3,92(sp)
   1a1e8:	ca3e                	sw	a5,20(sp)
   1a1ea:	47d2                	lw	a5,20(sp)
   1a1ec:	c83e                	sw	a5,16(sp)
   1a1ee:	aa41                	j	1a37e <__multf3+0x944>
   1a1f0:	4901                	li	s2,0
   1a1f2:	4c05                	li	s8,1
   1a1f4:	b8d9                	j	19aca <__multf3+0x90>
   1a1f6:	4c09                	li	s8,2
   1a1f8:	b8c9                	j	19aca <__multf3+0x90>
   1a1fa:	017ae7b3          	or	a5,s5,s7
   1a1fe:	0167e7b3          	or	a5,a5,s6
   1a202:	8fc9                	or	a5,a5,a0
   1a204:	10078263          	beqz	a5,1a308 <__multf3+0x8ce>
   1a208:	c93d                	beqz	a0,1a27e <__multf3+0x844>
   1a20a:	1dd010ef          	jal	1bbe6 <__clzsi2>
   1a20e:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   1a212:	4056d793          	srai	a5,a3,0x5
   1a216:	8afd                	andi	a3,a3,31
   1a218:	cac9                	beqz	a3,1a2aa <__multf3+0x870>
   1a21a:	5671                	li	a2,-4
   1a21c:	02c78633          	mul	a2,a5,a2
   1a220:	02000813          	li	a6,32
   1a224:	04010313          	addi	t1,sp,64
   1a228:	40d80833          	sub	a6,a6,a3
   1a22c:	00c60713          	addi	a4,a2,12
   1a230:	971a                	add	a4,a4,t1
   1a232:	40c00633          	neg	a2,a2
   1a236:	08e31a63          	bne	t1,a4,1a2ca <__multf3+0x890>
   1a23a:	fff78713          	addi	a4,a5,-1
   1a23e:	078a                	slli	a5,a5,0x2
   1a240:	1810                	addi	a2,sp,48
   1a242:	05078793          	addi	a5,a5,80
   1a246:	97b2                	add	a5,a5,a2
   1a248:	4606                	lw	a2,64(sp)
   1a24a:	00d616b3          	sll	a3,a2,a3
   1a24e:	fcd7a023          	sw	a3,-64(a5)
   1a252:	00170793          	addi	a5,a4,1
   1a256:	078a                	slli	a5,a5,0x2
   1a258:	46a1                	li	a3,8
   1a25a:	0098                	addi	a4,sp,64
   1a25c:	00d7e863          	bltu	a5,a3,1a26c <__multf3+0x832>
   1a260:	00072023          	sw	zero,0(a4)
   1a264:	00072223          	sw	zero,4(a4)
   1a268:	17e1                	addi	a5,a5,-8
   1a26a:	00b8                	addi	a4,sp,72
   1a26c:	4691                	li	a3,4
   1a26e:	00d7e463          	bltu	a5,a3,1a276 <__multf3+0x83c>
   1a272:	00072023          	sw	zero,0(a4)
   1a276:	77f1                	lui	a5,0xffffc
   1a278:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffde07d>
   1a27a:	8f89                	sub	a5,a5,a0
   1a27c:	b25d                	j	19c22 <__multf3+0x1e8>
   1a27e:	000b0863          	beqz	s6,1a28e <__multf3+0x854>
   1a282:	855a                	mv	a0,s6
   1a284:	163010ef          	jal	1bbe6 <__clzsi2>
   1a288:	02050513          	addi	a0,a0,32
   1a28c:	b749                	j	1a20e <__multf3+0x7d4>
   1a28e:	000b8863          	beqz	s7,1a29e <__multf3+0x864>
   1a292:	855e                	mv	a0,s7
   1a294:	153010ef          	jal	1bbe6 <__clzsi2>
   1a298:	04050513          	addi	a0,a0,64
   1a29c:	bf8d                	j	1a20e <__multf3+0x7d4>
   1a29e:	8556                	mv	a0,s5
   1a2a0:	147010ef          	jal	1bbe6 <__clzsi2>
   1a2a4:	06050513          	addi	a0,a0,96
   1a2a8:	b79d                	j	1a20e <__multf3+0x7d4>
   1a2aa:	5671                	li	a2,-4
   1a2ac:	02c78633          	mul	a2,a5,a2
   1a2b0:	00f8                	addi	a4,sp,76
   1a2b2:	468d                	li	a3,3
   1a2b4:	00c705b3          	add	a1,a4,a2
   1a2b8:	418c                	lw	a1,0(a1)
   1a2ba:	16fd                	addi	a3,a3,-1
   1a2bc:	1771                	addi	a4,a4,-4
   1a2be:	c34c                	sw	a1,4(a4)
   1a2c0:	fef6dae3          	bge	a3,a5,1a2b4 <__multf3+0x87a>
   1a2c4:	fff78713          	addi	a4,a5,-1
   1a2c8:	b769                	j	1a252 <__multf3+0x818>
   1a2ca:	430c                	lw	a1,0(a4)
   1a2cc:	ffc72883          	lw	a7,-4(a4)
   1a2d0:	00c70e33          	add	t3,a4,a2
   1a2d4:	00d595b3          	sll	a1,a1,a3
   1a2d8:	0108d8b3          	srl	a7,a7,a6
   1a2dc:	0115e5b3          	or	a1,a1,a7
   1a2e0:	00be2023          	sw	a1,0(t3)
   1a2e4:	1771                	addi	a4,a4,-4
   1a2e6:	bf81                	j	1a236 <__multf3+0x7fc>
   1a2e8:	017aeab3          	or	s5,s5,s7
   1a2ec:	016aeab3          	or	s5,s5,s6
   1a2f0:	00aaeab3          	or	s5,s5,a0
   1a2f4:	4689                	li	a3,2
   1a2f6:	920a87e3          	beqz	s5,19c24 <__multf3+0x1ea>
   1a2fa:	0542                	slli	a0,a0,0x10
   1a2fc:	8541                	srai	a0,a0,0x10
   1a2fe:	468d                	li	a3,3
   1a300:	920542e3          	bltz	a0,19c24 <__multf3+0x1ea>
   1a304:	4441                	li	s0,16
   1a306:	ba39                	j	19c24 <__multf3+0x1ea>
   1a308:	4781                	li	a5,0
   1a30a:	4685                	li	a3,1
   1a30c:	ba21                	j	19c24 <__multf3+0x1ea>
   1a30e:	4605                	li	a2,1
   1a310:	00f617b3          	sll	a5,a2,a5
   1a314:	5307f613          	andi	a2,a5,1328
   1a318:	e231                	bnez	a2,1a35c <__multf3+0x922>
   1a31a:	0887f613          	andi	a2,a5,136
   1a31e:	e60d                	bnez	a2,1a348 <__multf3+0x90e>
   1a320:	2407f793          	andi	a5,a5,576
   1a324:	920783e3          	beqz	a5,19c4a <__multf3+0x210>
   1a328:	4441                	li	s0,16
   1a32a:	67a1                	lui	a5,0x8
   1a32c:	cebe                	sw	a5,92(sp)
   1a32e:	cc82                	sw	zero,88(sp)
   1a330:	ca82                	sw	zero,84(sp)
   1a332:	c882                	sw	zero,80(sp)
   1a334:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1a336:	4701                	li	a4,0
   1a338:	a8e1                	j	1a410 <__multf3+0x9d6>
   1a33a:	473d                	li	a4,15
   1a33c:	fee787e3          	beq	a5,a4,1a32a <__multf3+0x8f0>
   1a340:	462d                	li	a2,11
   1a342:	874e                	mv	a4,s3
   1a344:	00c79c63          	bne	a5,a2,1a35c <__multf3+0x922>
   1a348:	8752                	mv	a4,s4
   1a34a:	4786                	lw	a5,64(sp)
   1a34c:	8c36                	mv	s8,a3
   1a34e:	c8be                	sw	a5,80(sp)
   1a350:	4796                	lw	a5,68(sp)
   1a352:	cabe                	sw	a5,84(sp)
   1a354:	47a6                	lw	a5,72(sp)
   1a356:	ccbe                	sw	a5,88(sp)
   1a358:	47b6                	lw	a5,76(sp)
   1a35a:	a801                	j	1a36a <__multf3+0x930>
   1a35c:	57c2                	lw	a5,48(sp)
   1a35e:	c8be                	sw	a5,80(sp)
   1a360:	57d2                	lw	a5,52(sp)
   1a362:	cabe                	sw	a5,84(sp)
   1a364:	57e2                	lw	a5,56(sp)
   1a366:	ccbe                	sw	a5,88(sp)
   1a368:	57f2                	lw	a5,60(sp)
   1a36a:	cebe                	sw	a5,92(sp)
   1a36c:	4789                	li	a5,2
   1a36e:	34fc0d63          	beq	s8,a5,1a6c8 <__multf3+0xc8e>
   1a372:	478d                	li	a5,3
   1a374:	fafc0be3          	beq	s8,a5,1a32a <__multf3+0x8f0>
   1a378:	4785                	li	a5,1
   1a37a:	34fc0263          	beq	s8,a5,1a6be <__multf3+0xc84>
   1a37e:	46c2                	lw	a3,16(sp)
   1a380:	6791                	lui	a5,0x4
   1a382:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   1a384:	97b6                	add	a5,a5,a3
   1a386:	10f05763          	blez	a5,1a494 <__multf3+0xa5a>
   1a38a:	4646                	lw	a2,80(sp)
   1a38c:	00767693          	andi	a3,a2,7
   1a390:	c2a1                	beqz	a3,1a3d0 <__multf3+0x996>
   1a392:	4509                	li	a0,2
   1a394:	46d6                	lw	a3,84(sp)
   1a396:	45f6                	lw	a1,92(sp)
   1a398:	0ca48563          	beq	s1,a0,1a462 <__multf3+0xa28>
   1a39c:	450d                	li	a0,3
   1a39e:	0aa48c63          	beq	s1,a0,1a456 <__multf3+0xa1c>
   1a3a2:	e48d                	bnez	s1,1a3cc <__multf3+0x992>
   1a3a4:	00f67513          	andi	a0,a2,15
   1a3a8:	4811                	li	a6,4
   1a3aa:	03050163          	beq	a0,a6,1a3cc <__multf3+0x992>
   1a3ae:	0611                	addi	a2,a2,4
   1a3b0:	c8b2                	sw	a2,80(sp)
   1a3b2:	00463613          	sltiu	a2,a2,4
   1a3b6:	96b2                	add	a3,a3,a2
   1a3b8:	cab6                	sw	a3,84(sp)
   1a3ba:	00c6b6b3          	sltu	a3,a3,a2
   1a3be:	4666                	lw	a2,88(sp)
   1a3c0:	96b2                	add	a3,a3,a2
   1a3c2:	ccb6                	sw	a3,88(sp)
   1a3c4:	00c6b6b3          	sltu	a3,a3,a2
   1a3c8:	96ae                	add	a3,a3,a1
   1a3ca:	ceb6                	sw	a3,92(sp)
   1a3cc:	00146413          	ori	s0,s0,1
   1a3d0:	46f6                	lw	a3,92(sp)
   1a3d2:	00b69613          	slli	a2,a3,0xb
   1a3d6:	00065a63          	bgez	a2,1a3ea <__multf3+0x9b0>
   1a3da:	fff007b7          	lui	a5,0xfff00
   1a3de:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee206b>
   1a3e0:	8efd                	and	a3,a3,a5
   1a3e2:	ceb6                	sw	a3,92(sp)
   1a3e4:	46c2                	lw	a3,16(sp)
   1a3e6:	6791                	lui	a5,0x4
   1a3e8:	97b6                	add	a5,a5,a3
   1a3ea:	0894                	addi	a3,sp,80
   1a3ec:	08e8                	addi	a0,sp,92
   1a3ee:	4290                	lw	a2,0(a3)
   1a3f0:	42cc                	lw	a1,4(a3)
   1a3f2:	820d                	srli	a2,a2,0x3
   1a3f4:	05f6                	slli	a1,a1,0x1d
   1a3f6:	8e4d                	or	a2,a2,a1
   1a3f8:	c290                	sw	a2,0(a3)
   1a3fa:	0691                	addi	a3,a3,4
   1a3fc:	fed519e3          	bne	a0,a3,1a3ee <__multf3+0x9b4>
   1a400:	6621                	lui	a2,0x8
   1a402:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   1a404:	46f6                	lw	a3,92(sp)
   1a406:	65a1                	lui	a1,0x8
   1a408:	04f64f63          	blt	a2,a5,1a466 <__multf3+0xa2c>
   1a40c:	828d                	srli	a3,a3,0x3
   1a40e:	ceb6                	sw	a3,92(sp)
   1a410:	4576                	lw	a0,92(sp)
   1a412:	073e                	slli	a4,a4,0xf
   1a414:	8f5d                	or	a4,a4,a5
   1a416:	06a11623          	sh	a0,108(sp)
   1a41a:	06e11723          	sh	a4,110(sp)
   1a41e:	45c6                	lw	a1,80(sp)
   1a420:	4656                	lw	a2,84(sp)
   1a422:	46e6                	lw	a3,88(sp)
   1a424:	57b6                	lw	a5,108(sp)
   1a426:	c019                	beqz	s0,1a42c <__multf3+0x9f2>
   1a428:	00142073          	csrs	fflags,s0
   1a42c:	4732                	lw	a4,12(sp)
   1a42e:	50fa                	lw	ra,188(sp)
   1a430:	546a                	lw	s0,184(sp)
   1a432:	c30c                	sw	a1,0(a4)
   1a434:	c350                	sw	a2,4(a4)
   1a436:	c714                	sw	a3,8(a4)
   1a438:	c75c                	sw	a5,12(a4)
   1a43a:	54da                	lw	s1,180(sp)
   1a43c:	594a                	lw	s2,176(sp)
   1a43e:	59ba                	lw	s3,172(sp)
   1a440:	5a2a                	lw	s4,168(sp)
   1a442:	5a9a                	lw	s5,164(sp)
   1a444:	5b0a                	lw	s6,160(sp)
   1a446:	4bfa                	lw	s7,156(sp)
   1a448:	4c6a                	lw	s8,152(sp)
   1a44a:	4cda                	lw	s9,148(sp)
   1a44c:	4d4a                	lw	s10,144(sp)
   1a44e:	4dba                	lw	s11,140(sp)
   1a450:	853a                	mv	a0,a4
   1a452:	6129                	addi	sp,sp,192
   1a454:	8082                	ret
   1a456:	fb3d                	bnez	a4,1a3cc <__multf3+0x992>
   1a458:	0621                	addi	a2,a2,8
   1a45a:	c8b2                	sw	a2,80(sp)
   1a45c:	00863613          	sltiu	a2,a2,8
   1a460:	bf99                	j	1a3b6 <__multf3+0x97c>
   1a462:	d72d                	beqz	a4,1a3cc <__multf3+0x992>
   1a464:	bfd5                	j	1a458 <__multf3+0xa1e>
   1a466:	4789                	li	a5,2
   1a468:	02f48463          	beq	s1,a5,1a490 <__multf3+0xa56>
   1a46c:	478d                	li	a5,3
   1a46e:	00f48763          	beq	s1,a5,1a47c <__multf3+0xa42>
   1a472:	e491                	bnez	s1,1a47e <__multf3+0xa44>
   1a474:	4681                	li	a3,0
   1a476:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   1a47a:	a021                	j	1a482 <__multf3+0xa48>
   1a47c:	df65                	beqz	a4,1a474 <__multf3+0xa3a>
   1a47e:	56fd                	li	a3,-1
   1a480:	87b2                	mv	a5,a2
   1a482:	ceb6                	sw	a3,92(sp)
   1a484:	ccb6                	sw	a3,88(sp)
   1a486:	cab6                	sw	a3,84(sp)
   1a488:	c8b6                	sw	a3,80(sp)
   1a48a:	00546413          	ori	s0,s0,5
   1a48e:	b749                	j	1a410 <__multf3+0x9d6>
   1a490:	f375                	bnez	a4,1a474 <__multf3+0xa3a>
   1a492:	b7f5                	j	1a47e <__multf3+0xa44>
   1a494:	4685                	li	a3,1
   1a496:	ebb9                	bnez	a5,1a4ec <__multf3+0xab2>
   1a498:	4646                	lw	a2,80(sp)
   1a49a:	46f6                	lw	a3,92(sp)
   1a49c:	00767593          	andi	a1,a2,7
   1a4a0:	c1b1                	beqz	a1,1a4e4 <__multf3+0xaaa>
   1a4a2:	4809                	li	a6,2
   1a4a4:	45d6                	lw	a1,84(sp)
   1a4a6:	4566                	lw	a0,88(sp)
   1a4a8:	00146413          	ori	s0,s0,1
   1a4ac:	03048b63          	beq	s1,a6,1a4e2 <__multf3+0xaa8>
   1a4b0:	480d                	li	a6,3
   1a4b2:	03048363          	beq	s1,a6,1a4d8 <__multf3+0xa9e>
   1a4b6:	e49d                	bnez	s1,1a4e4 <__multf3+0xaaa>
   1a4b8:	00f67813          	andi	a6,a2,15
   1a4bc:	4891                	li	a7,4
   1a4be:	03180363          	beq	a6,a7,1a4e4 <__multf3+0xaaa>
   1a4c2:	0611                	addi	a2,a2,4
   1a4c4:	00463613          	sltiu	a2,a2,4
   1a4c8:	95b2                	add	a1,a1,a2
   1a4ca:	00c5b5b3          	sltu	a1,a1,a2
   1a4ce:	952e                	add	a0,a0,a1
   1a4d0:	00b53533          	sltu	a0,a0,a1
   1a4d4:	96aa                	add	a3,a3,a0
   1a4d6:	a039                	j	1a4e4 <__multf3+0xaaa>
   1a4d8:	e711                	bnez	a4,1a4e4 <__multf3+0xaaa>
   1a4da:	0621                	addi	a2,a2,8
   1a4dc:	00863613          	sltiu	a2,a2,8
   1a4e0:	b7e5                	j	1a4c8 <__multf3+0xa8e>
   1a4e2:	ff65                	bnez	a4,1a4da <__multf3+0xaa0>
   1a4e4:	82d1                	srli	a3,a3,0x14
   1a4e6:	0016c693          	xori	a3,a3,1
   1a4ea:	8a85                	andi	a3,a3,1
   1a4ec:	4605                	li	a2,1
   1a4ee:	40f607b3          	sub	a5,a2,a5
   1a4f2:	07400593          	li	a1,116
   1a4f6:	18f5c163          	blt	a1,a5,1a678 <__multf3+0xc3e>
   1a4fa:	0890                	addi	a2,sp,80
   1a4fc:	4057d593          	srai	a1,a5,0x5
   1a500:	01f7f513          	andi	a0,a5,31
   1a504:	88b2                	mv	a7,a2
   1a506:	4781                	li	a5,0
   1a508:	4801                	li	a6,0
   1a50a:	02b81763          	bne	a6,a1,1a538 <__multf3+0xafe>
   1a50e:	480d                	li	a6,3
   1a510:	40b80833          	sub	a6,a6,a1
   1a514:	00259893          	slli	a7,a1,0x2
   1a518:	e51d                	bnez	a0,1a546 <__multf3+0xb0c>
   1a51a:	8332                	mv	t1,a2
   1a51c:	01130e33          	add	t3,t1,a7
   1a520:	000e2e03          	lw	t3,0(t3)
   1a524:	0505                	addi	a0,a0,1
   1a526:	0311                	addi	t1,t1,4
   1a528:	ffc32e23          	sw	t3,-4(t1)
   1a52c:	fea858e3          	bge	a6,a0,1a51c <__multf3+0xae2>
   1a530:	4511                	li	a0,4
   1a532:	40b505b3          	sub	a1,a0,a1
   1a536:	a8a1                	j	1a58e <__multf3+0xb54>
   1a538:	0008a303          	lw	t1,0(a7)
   1a53c:	0805                	addi	a6,a6,1
   1a53e:	0891                	addi	a7,a7,4
   1a540:	0067e7b3          	or	a5,a5,t1
   1a544:	b7d9                	j	1a50a <__multf3+0xad0>
   1a546:	05088313          	addi	t1,a7,80
   1a54a:	03010e13          	addi	t3,sp,48
   1a54e:	9372                	add	t1,t1,t3
   1a550:	fd032303          	lw	t1,-48(t1)
   1a554:	02000e93          	li	t4,32
   1a558:	40ae8eb3          	sub	t4,t4,a0
   1a55c:	01d31333          	sll	t1,t1,t4
   1a560:	0067e7b3          	or	a5,a5,t1
   1a564:	4f01                	li	t5,0
   1a566:	01160333          	add	t1,a2,a7
   1a56a:	411008b3          	neg	a7,a7
   1a56e:	0b0f4d63          	blt	t5,a6,1a628 <__multf3+0xbee>
   1a572:	4891                	li	a7,4
   1a574:	080a                	slli	a6,a6,0x2
   1a576:	40b885b3          	sub	a1,a7,a1
   1a57a:	05080813          	addi	a6,a6,80
   1a57e:	03010893          	addi	a7,sp,48
   1a582:	9846                	add	a6,a6,a7
   1a584:	48f6                	lw	a7,92(sp)
   1a586:	00a8d533          	srl	a0,a7,a0
   1a58a:	fca82823          	sw	a0,-48(a6)
   1a58e:	4511                	li	a0,4
   1a590:	8d0d                	sub	a0,a0,a1
   1a592:	050a                	slli	a0,a0,0x2
   1a594:	058a                	slli	a1,a1,0x2
   1a596:	4821                	li	a6,8
   1a598:	95b2                	add	a1,a1,a2
   1a59a:	01056863          	bltu	a0,a6,1a5aa <__multf3+0xb70>
   1a59e:	0005a023          	sw	zero,0(a1)
   1a5a2:	0005a223          	sw	zero,4(a1)
   1a5a6:	1561                	addi	a0,a0,-8
   1a5a8:	05a1                	addi	a1,a1,8
   1a5aa:	4811                	li	a6,4
   1a5ac:	01056463          	bltu	a0,a6,1a5b4 <__multf3+0xb7a>
   1a5b0:	0005a023          	sw	zero,0(a1)
   1a5b4:	45c6                	lw	a1,80(sp)
   1a5b6:	00f037b3          	snez	a5,a5
   1a5ba:	8fcd                	or	a5,a5,a1
   1a5bc:	c8be                	sw	a5,80(sp)
   1a5be:	0077f593          	andi	a1,a5,7
   1a5c2:	c1a1                	beqz	a1,1a602 <__multf3+0xbc8>
   1a5c4:	4509                	li	a0,2
   1a5c6:	45f6                	lw	a1,92(sp)
   1a5c8:	08a48763          	beq	s1,a0,1a656 <__multf3+0xc1c>
   1a5cc:	450d                	li	a0,3
   1a5ce:	06a48e63          	beq	s1,a0,1a64a <__multf3+0xc10>
   1a5d2:	e495                	bnez	s1,1a5fe <__multf3+0xbc4>
   1a5d4:	00f7f513          	andi	a0,a5,15
   1a5d8:	4811                	li	a6,4
   1a5da:	03050263          	beq	a0,a6,1a5fe <__multf3+0xbc4>
   1a5de:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   1a5e0:	c8be                	sw	a5,80(sp)
   1a5e2:	0047b793          	sltiu	a5,a5,4
   1a5e6:	4556                	lw	a0,84(sp)
   1a5e8:	97aa                	add	a5,a5,a0
   1a5ea:	cabe                	sw	a5,84(sp)
   1a5ec:	00a7b7b3          	sltu	a5,a5,a0
   1a5f0:	4566                	lw	a0,88(sp)
   1a5f2:	97aa                	add	a5,a5,a0
   1a5f4:	ccbe                	sw	a5,88(sp)
   1a5f6:	00a7b7b3          	sltu	a5,a5,a0
   1a5fa:	97ae                	add	a5,a5,a1
   1a5fc:	cebe                	sw	a5,92(sp)
   1a5fe:	00146413          	ori	s0,s0,1
   1a602:	45f6                	lw	a1,92(sp)
   1a604:	00c59793          	slli	a5,a1,0xc
   1a608:	0407d963          	bgez	a5,1a65a <__multf3+0xc20>
   1a60c:	ce82                	sw	zero,92(sp)
   1a60e:	cc82                	sw	zero,88(sp)
   1a610:	ca82                	sw	zero,84(sp)
   1a612:	c882                	sw	zero,80(sp)
   1a614:	00146413          	ori	s0,s0,1
   1a618:	4785                	li	a5,1
   1a61a:	de068be3          	beqz	a3,1a410 <__multf3+0x9d6>
   1a61e:	00147693          	andi	a3,s0,1
   1a622:	0686                	slli	a3,a3,0x1
   1a624:	8c55                	or	s0,s0,a3
   1a626:	b3ed                	j	1a410 <__multf3+0x9d6>
   1a628:	00032e03          	lw	t3,0(t1)
   1a62c:	00432f83          	lw	t6,4(t1)
   1a630:	011302b3          	add	t0,t1,a7
   1a634:	00ae5e33          	srl	t3,t3,a0
   1a638:	01df9fb3          	sll	t6,t6,t4
   1a63c:	01fe6e33          	or	t3,t3,t6
   1a640:	01c2a023          	sw	t3,0(t0)
   1a644:	0f05                	addi	t5,t5,1
   1a646:	0311                	addi	t1,t1,4
   1a648:	b71d                	j	1a56e <__multf3+0xb34>
   1a64a:	fb55                	bnez	a4,1a5fe <__multf3+0xbc4>
   1a64c:	07a1                	addi	a5,a5,8
   1a64e:	c8be                	sw	a5,80(sp)
   1a650:	0087b793          	sltiu	a5,a5,8
   1a654:	bf49                	j	1a5e6 <__multf3+0xbac>
   1a656:	d745                	beqz	a4,1a5fe <__multf3+0xbc4>
   1a658:	bfd5                	j	1a64c <__multf3+0xc12>
   1a65a:	00c60813          	addi	a6,a2,12
   1a65e:	421c                	lw	a5,0(a2)
   1a660:	4248                	lw	a0,4(a2)
   1a662:	838d                	srli	a5,a5,0x3
   1a664:	0576                	slli	a0,a0,0x1d
   1a666:	8fc9                	or	a5,a5,a0
   1a668:	c21c                	sw	a5,0(a2)
   1a66a:	0611                	addi	a2,a2,4
   1a66c:	fec819e3          	bne	a6,a2,1a65e <__multf3+0xc24>
   1a670:	818d                	srli	a1,a1,0x3
   1a672:	ceae                	sw	a1,92(sp)
   1a674:	4781                	li	a5,0
   1a676:	b755                	j	1a61a <__multf3+0xbe0>
   1a678:	46d6                	lw	a3,84(sp)
   1a67a:	47c6                	lw	a5,80(sp)
   1a67c:	8fd5                	or	a5,a5,a3
   1a67e:	46e6                	lw	a3,88(sp)
   1a680:	8fd5                	or	a5,a5,a3
   1a682:	46f6                	lw	a3,92(sp)
   1a684:	8fd5                	or	a5,a5,a3
   1a686:	c395                	beqz	a5,1a6aa <__multf3+0xc70>
   1a688:	ce82                	sw	zero,92(sp)
   1a68a:	cc82                	sw	zero,88(sp)
   1a68c:	ca82                	sw	zero,84(sp)
   1a68e:	c8b2                	sw	a2,80(sp)
   1a690:	4789                	li	a5,2
   1a692:	00146413          	ori	s0,s0,1
   1a696:	02f48263          	beq	s1,a5,1a6ba <__multf3+0xc80>
   1a69a:	478d                	li	a5,3
   1a69c:	00f48b63          	beq	s1,a5,1a6b2 <__multf3+0xc78>
   1a6a0:	4795                	li	a5,5
   1a6a2:	c891                	beqz	s1,1a6b6 <__multf3+0xc7c>
   1a6a4:	47c6                	lw	a5,80(sp)
   1a6a6:	838d                	srli	a5,a5,0x3
   1a6a8:	c8be                	sw	a5,80(sp)
   1a6aa:	00246413          	ori	s0,s0,2
   1a6ae:	4781                	li	a5,0
   1a6b0:	b385                	j	1a410 <__multf3+0x9d6>
   1a6b2:	fb6d                	bnez	a4,1a6a4 <__multf3+0xc6a>
   1a6b4:	47a5                	li	a5,9
   1a6b6:	c8be                	sw	a5,80(sp)
   1a6b8:	b7f5                	j	1a6a4 <__multf3+0xc6a>
   1a6ba:	ff6d                	bnez	a4,1a6b4 <__multf3+0xc7a>
   1a6bc:	b7e5                	j	1a6a4 <__multf3+0xc6a>
   1a6be:	ce82                	sw	zero,92(sp)
   1a6c0:	cc82                	sw	zero,88(sp)
   1a6c2:	ca82                	sw	zero,84(sp)
   1a6c4:	c882                	sw	zero,80(sp)
   1a6c6:	b7e5                	j	1a6ae <__multf3+0xc74>
   1a6c8:	67a1                	lui	a5,0x8
   1a6ca:	ce82                	sw	zero,92(sp)
   1a6cc:	cc82                	sw	zero,88(sp)
   1a6ce:	ca82                	sw	zero,84(sp)
   1a6d0:	c882                	sw	zero,80(sp)
   1a6d2:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1a6d4:	bb35                	j	1a410 <__multf3+0x9d6>

0001a6d6 <__subtf3>:
   1a6d6:	7159                	addi	sp,sp,-112
   1a6d8:	d2a6                	sw	s1,100(sp)
   1a6da:	d0ca                	sw	s2,96(sp)
   1a6dc:	cece                	sw	s3,92(sp)
   1a6de:	c2e6                	sw	s9,68(sp)
   1a6e0:	d686                	sw	ra,108(sp)
   1a6e2:	d4a2                	sw	s0,104(sp)
   1a6e4:	ccd2                	sw	s4,88(sp)
   1a6e6:	cad6                	sw	s5,84(sp)
   1a6e8:	c8da                	sw	s6,80(sp)
   1a6ea:	c6de                	sw	s7,76(sp)
   1a6ec:	c4e2                	sw	s8,72(sp)
   1a6ee:	892a                	mv	s2,a0
   1a6f0:	4198                	lw	a4,0(a1)
   1a6f2:	41d4                	lw	a3,4(a1)
   1a6f4:	459c                	lw	a5,8(a1)
   1a6f6:	00c5a983          	lw	s3,12(a1)
   1a6fa:	4204                	lw	s1,0(a2)
   1a6fc:	00462883          	lw	a7,4(a2)
   1a700:	00862803          	lw	a6,8(a2)
   1a704:	00c62c83          	lw	s9,12(a2)
   1a708:	00202a73          	frrm	s4
   1a70c:	dc3e                	sw	a5,56(sp)
   1a70e:	c43e                	sw	a5,8(sp)
   1a710:	01099793          	slli	a5,s3,0x10
   1a714:	83c1                	srli	a5,a5,0x10
   1a716:	00199413          	slli	s0,s3,0x1
   1a71a:	858a                	mv	a1,sp
   1a71c:	de4e                	sw	s3,60(sp)
   1a71e:	c63e                	sw	a5,12(sp)
   1a720:	d83a                	sw	a4,48(sp)
   1a722:	da36                	sw	a3,52(sp)
   1a724:	c03a                	sw	a4,0(sp)
   1a726:	c236                	sw	a3,4(sp)
   1a728:	8045                	srli	s0,s0,0x11
   1a72a:	01f9d993          	srli	s3,s3,0x1f
   1a72e:	ff410313          	addi	t1,sp,-12
   1a732:	87ae                	mv	a5,a1
   1a734:	852e                	mv	a0,a1
   1a736:	47d4                	lw	a3,12(a5)
   1a738:	4790                	lw	a2,8(a5)
   1a73a:	17f1                	addi	a5,a5,-4
   1a73c:	068e                	slli	a3,a3,0x3
   1a73e:	8275                	srli	a2,a2,0x1d
   1a740:	8ed1                	or	a3,a3,a2
   1a742:	cb94                	sw	a3,16(a5)
   1a744:	fef319e3          	bne	t1,a5,1a736 <__subtf3+0x60>
   1a748:	010c9793          	slli	a5,s9,0x10
   1a74c:	83c1                	srli	a5,a5,0x10
   1a74e:	001c9a93          	slli	s5,s9,0x1
   1a752:	070e                	slli	a4,a4,0x3
   1a754:	dc42                	sw	a6,56(sp)
   1a756:	cc42                	sw	a6,24(sp)
   1a758:	01010813          	addi	a6,sp,16
   1a75c:	da46                	sw	a7,52(sp)
   1a75e:	de66                	sw	s9,60(sp)
   1a760:	ca46                	sw	a7,20(sp)
   1a762:	ce3e                	sw	a5,28(sp)
   1a764:	c03a                	sw	a4,0(sp)
   1a766:	d826                	sw	s1,48(sp)
   1a768:	c826                	sw	s1,16(sp)
   1a76a:	011ada93          	srli	s5,s5,0x11
   1a76e:	01fcdc93          	srli	s9,s9,0x1f
   1a772:	00410893          	addi	a7,sp,4
   1a776:	87c2                	mv	a5,a6
   1a778:	8e42                	mv	t3,a6
   1a77a:	47d4                	lw	a3,12(a5)
   1a77c:	4790                	lw	a2,8(a5)
   1a77e:	17f1                	addi	a5,a5,-4
   1a780:	068e                	slli	a3,a3,0x3
   1a782:	8275                	srli	a2,a2,0x1d
   1a784:	8ed1                	or	a3,a3,a2
   1a786:	cb94                	sw	a3,16(a5)
   1a788:	fef899e3          	bne	a7,a5,1a77a <__subtf3+0xa4>
   1a78c:	048e                	slli	s1,s1,0x3
   1a78e:	67a1                	lui	a5,0x8
   1a790:	c826                	sw	s1,16(sp)
   1a792:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1a794:	00fa9963          	bne	s5,a5,1a7a6 <__subtf3+0xd0>
   1a798:	46e2                	lw	a3,24(sp)
   1a79a:	47d2                	lw	a5,20(sp)
   1a79c:	8fd5                	or	a5,a5,a3
   1a79e:	46f2                	lw	a3,28(sp)
   1a7a0:	8fd5                	or	a5,a5,a3
   1a7a2:	8fc5                	or	a5,a5,s1
   1a7a4:	e399                	bnez	a5,1a7aa <__subtf3+0xd4>
   1a7a6:	001ccc93          	xori	s9,s9,1
   1a7aa:	415407b3          	sub	a5,s0,s5
   1a7ae:	5d3c9c63          	bne	s9,s3,1ad86 <__subtf3+0x6b0>
   1a7b2:	24f05963          	blez	a5,1aa04 <__subtf3+0x32e>
   1a7b6:	4312                	lw	t1,4(sp)
   1a7b8:	48a2                	lw	a7,8(sp)
   1a7ba:	45b2                	lw	a1,12(sp)
   1a7bc:	080a9963          	bnez	s5,1a84e <__subtf3+0x178>
   1a7c0:	4552                	lw	a0,20(sp)
   1a7c2:	46e2                	lw	a3,24(sp)
   1a7c4:	4ef2                	lw	t4,28(sp)
   1a7c6:	00d56633          	or	a2,a0,a3
   1a7ca:	01d66633          	or	a2,a2,t4
   1a7ce:	8e45                	or	a2,a2,s1
   1a7d0:	e61d                	bnez	a2,1a7fe <__subtf3+0x128>
   1a7d2:	66a1                	lui	a3,0x8
   1a7d4:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a7d6:	00d79e63          	bne	a5,a3,1a7f2 <__subtf3+0x11c>
   1a7da:	011366b3          	or	a3,t1,a7
   1a7de:	8ecd                	or	a3,a3,a1
   1a7e0:	8ed9                	or	a3,a3,a4
   1a7e2:	ca81                	beqz	a3,1a7f2 <__subtf3+0x11c>
   1a7e4:	0125da93          	srli	s5,a1,0x12
   1a7e8:	001aca93          	xori	s5,s5,1
   1a7ec:	001afa93          	andi	s5,s5,1
   1a7f0:	0a92                	slli	s5,s5,0x4
   1a7f2:	d03a                	sw	a4,32(sp)
   1a7f4:	d21a                	sw	t1,36(sp)
   1a7f6:	d446                	sw	a7,40(sp)
   1a7f8:	d62e                	sw	a1,44(sp)
   1a7fa:	8456                	mv	s0,s5
   1a7fc:	ac99                	j	1aa52 <__subtf3+0x37c>
   1a7fe:	fff78613          	addi	a2,a5,-1
   1a802:	ea0d                	bnez	a2,1a834 <__subtf3+0x15e>
   1a804:	94ba                	add	s1,s1,a4
   1a806:	932a                	add	t1,t1,a0
   1a808:	d026                	sw	s1,32(sp)
   1a80a:	00e4b4b3          	sltu	s1,s1,a4
   1a80e:	949a                	add	s1,s1,t1
   1a810:	d226                	sw	s1,36(sp)
   1a812:	00a33533          	sltu	a0,t1,a0
   1a816:	0064b4b3          	sltu	s1,s1,t1
   1a81a:	98b6                	add	a7,a7,a3
   1a81c:	8d45                	or	a0,a0,s1
   1a81e:	9546                	add	a0,a0,a7
   1a820:	d42a                	sw	a0,40(sp)
   1a822:	00d8b733          	sltu	a4,a7,a3
   1a826:	01153533          	sltu	a0,a0,a7
   1a82a:	8f49                	or	a4,a4,a0
   1a82c:	9eae                	add	t4,t4,a1
   1a82e:	9776                	add	a4,a4,t4
   1a830:	4785                	li	a5,1
   1a832:	a299                	j	1a978 <__subtf3+0x2a2>
   1a834:	66a1                	lui	a3,0x8
   1a836:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a838:	fad781e3          	beq	a5,a3,1a7da <__subtf3+0x104>
   1a83c:	07400793          	li	a5,116
   1a840:	04c7d863          	bge	a5,a2,1a890 <__subtf3+0x1ba>
   1a844:	ce02                	sw	zero,28(sp)
   1a846:	cc02                	sw	zero,24(sp)
   1a848:	ca02                	sw	zero,20(sp)
   1a84a:	4785                	li	a5,1
   1a84c:	a8dd                	j	1a942 <__subtf3+0x26c>
   1a84e:	66a1                	lui	a3,0x8
   1a850:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a852:	02d41563          	bne	s0,a3,1a87c <__subtf3+0x1a6>
   1a856:	011367b3          	or	a5,t1,a7
   1a85a:	8fcd                	or	a5,a5,a1
   1a85c:	8fd9                	or	a5,a5,a4
   1a85e:	4681                	li	a3,0
   1a860:	c799                	beqz	a5,1a86e <__subtf3+0x198>
   1a862:	0125d693          	srli	a3,a1,0x12
   1a866:	0016c693          	xori	a3,a3,1
   1a86a:	8a85                	andi	a3,a3,1
   1a86c:	0692                	slli	a3,a3,0x4
   1a86e:	d03a                	sw	a4,32(sp)
   1a870:	d21a                	sw	t1,36(sp)
   1a872:	d446                	sw	a7,40(sp)
   1a874:	d62e                	sw	a1,44(sp)
   1a876:	87a2                	mv	a5,s0
   1a878:	8436                	mv	s0,a3
   1a87a:	aae1                	j	1aa52 <__subtf3+0x37c>
   1a87c:	46f2                	lw	a3,28(sp)
   1a87e:	00080637          	lui	a2,0x80
   1a882:	8ed1                	or	a3,a3,a2
   1a884:	ce36                	sw	a3,28(sp)
   1a886:	07400693          	li	a3,116
   1a88a:	faf6cde3          	blt	a3,a5,1a844 <__subtf3+0x16e>
   1a88e:	863e                	mv	a2,a5
   1a890:	40565693          	srai	a3,a2,0x5
   1a894:	8ec2                	mv	t4,a6
   1a896:	8a7d                	andi	a2,a2,31
   1a898:	4781                	li	a5,0
   1a89a:	4501                	li	a0,0
   1a89c:	02d51563          	bne	a0,a3,1a8c6 <__subtf3+0x1f0>
   1a8a0:	450d                	li	a0,3
   1a8a2:	8d15                	sub	a0,a0,a3
   1a8a4:	00269e93          	slli	t4,a3,0x2
   1a8a8:	e615                	bnez	a2,1a8d4 <__subtf3+0x1fe>
   1a8aa:	01d80f33          	add	t5,a6,t4
   1a8ae:	000f2f03          	lw	t5,0(t5)
   1a8b2:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x6206d>
   1a8b4:	0811                	addi	a6,a6,4
   1a8b6:	ffe82e23          	sw	t5,-4(a6)
   1a8ba:	fec558e3          	bge	a0,a2,1a8aa <__subtf3+0x1d4>
   1a8be:	4611                	li	a2,4
   1a8c0:	40d606b3          	sub	a3,a2,a3
   1a8c4:	a881                	j	1a914 <__subtf3+0x23e>
   1a8c6:	000eaf03          	lw	t5,0(t4)
   1a8ca:	0505                	addi	a0,a0,1
   1a8cc:	0e91                	addi	t4,t4,4
   1a8ce:	01e7e7b3          	or	a5,a5,t5
   1a8d2:	b7e9                	j	1a89c <__subtf3+0x1c6>
   1a8d4:	040e8493          	addi	s1,t4,64
   1a8d8:	00248f33          	add	t5,s1,sp
   1a8dc:	fd0f2f03          	lw	t5,-48(t5)
   1a8e0:	02000393          	li	t2,32
   1a8e4:	40c383b3          	sub	t2,t2,a2
   1a8e8:	007f1f33          	sll	t5,t5,t2
   1a8ec:	9876                	add	a6,a6,t4
   1a8ee:	01e7e7b3          	or	a5,a5,t5
   1a8f2:	41d00eb3          	neg	t4,t4
   1a8f6:	4f81                	li	t6,0
   1a8f8:	0eafc563          	blt	t6,a0,1a9e2 <__subtf3+0x30c>
   1a8fc:	4811                	li	a6,4
   1a8fe:	40d806b3          	sub	a3,a6,a3
   1a902:	4872                	lw	a6,28(sp)
   1a904:	050a                	slli	a0,a0,0x2
   1a906:	04050513          	addi	a0,a0,64
   1a90a:	950a                	add	a0,a0,sp
   1a90c:	00c85633          	srl	a2,a6,a2
   1a910:	fcc52823          	sw	a2,-48(a0)
   1a914:	4611                	li	a2,4
   1a916:	8e15                	sub	a2,a2,a3
   1a918:	060a                	slli	a2,a2,0x2
   1a91a:	068a                	slli	a3,a3,0x2
   1a91c:	4521                	li	a0,8
   1a91e:	96f2                	add	a3,a3,t3
   1a920:	00a66863          	bltu	a2,a0,1a930 <__subtf3+0x25a>
   1a924:	0006a023          	sw	zero,0(a3)
   1a928:	0006a223          	sw	zero,4(a3)
   1a92c:	1661                	addi	a2,a2,-8
   1a92e:	06a1                	addi	a3,a3,8
   1a930:	4511                	li	a0,4
   1a932:	00a66463          	bltu	a2,a0,1a93a <__subtf3+0x264>
   1a936:	0006a023          	sw	zero,0(a3)
   1a93a:	46c2                	lw	a3,16(sp)
   1a93c:	00f037b3          	snez	a5,a5
   1a940:	8fd5                	or	a5,a5,a3
   1a942:	46d2                	lw	a3,20(sp)
   1a944:	c83e                	sw	a5,16(sp)
   1a946:	97ba                	add	a5,a5,a4
   1a948:	9336                	add	t1,t1,a3
   1a94a:	d03e                	sw	a5,32(sp)
   1a94c:	00e7b7b3          	sltu	a5,a5,a4
   1a950:	4762                	lw	a4,24(sp)
   1a952:	979a                	add	a5,a5,t1
   1a954:	d23e                	sw	a5,36(sp)
   1a956:	00d336b3          	sltu	a3,t1,a3
   1a95a:	0067b7b3          	sltu	a5,a5,t1
   1a95e:	98ba                	add	a7,a7,a4
   1a960:	8fd5                	or	a5,a5,a3
   1a962:	97c6                	add	a5,a5,a7
   1a964:	d43e                	sw	a5,40(sp)
   1a966:	00e8b733          	sltu	a4,a7,a4
   1a96a:	0117b7b3          	sltu	a5,a5,a7
   1a96e:	8f5d                	or	a4,a4,a5
   1a970:	47f2                	lw	a5,28(sp)
   1a972:	97ae                	add	a5,a5,a1
   1a974:	973e                	add	a4,a4,a5
   1a976:	87a2                	mv	a5,s0
   1a978:	d63a                	sw	a4,44(sp)
   1a97a:	00c71693          	slli	a3,a4,0xc
   1a97e:	4401                	li	s0,0
   1a980:	0c06d963          	bgez	a3,1aa52 <__subtf3+0x37c>
   1a984:	5602                	lw	a2,32(sp)
   1a986:	fff806b7          	lui	a3,0xfff80
   1a98a:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff6206b>
   1a98c:	8f75                	and	a4,a4,a3
   1a98e:	d63a                	sw	a4,44(sp)
   1a990:	0785                	addi	a5,a5,1
   1a992:	067e                	slli	a2,a2,0x1f
   1a994:	1014                	addi	a3,sp,32
   1a996:	02c10813          	addi	a6,sp,44
   1a99a:	428c                	lw	a1,0(a3)
   1a99c:	42c8                	lw	a0,4(a3)
   1a99e:	8185                	srli	a1,a1,0x1
   1a9a0:	057e                	slli	a0,a0,0x1f
   1a9a2:	8dc9                	or	a1,a1,a0
   1a9a4:	c28c                	sw	a1,0(a3)
   1a9a6:	0691                	addi	a3,a3,4
   1a9a8:	fed819e3          	bne	a6,a3,1a99a <__subtf3+0x2c4>
   1a9ac:	5682                	lw	a3,32(sp)
   1a9ae:	8305                	srli	a4,a4,0x1
   1a9b0:	d63a                	sw	a4,44(sp)
   1a9b2:	00c03733          	snez	a4,a2
   1a9b6:	8f55                	or	a4,a4,a3
   1a9b8:	d03a                	sw	a4,32(sp)
   1a9ba:	6721                	lui	a4,0x8
   1a9bc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a9be:	4401                	li	s0,0
   1a9c0:	08e79963          	bne	a5,a4,1aa52 <__subtf3+0x37c>
   1a9c4:	3a0a0963          	beqz	s4,1ad76 <__subtf3+0x6a0>
   1a9c8:	478d                	li	a5,3
   1a9ca:	3afa1163          	bne	s4,a5,1ad6c <__subtf3+0x696>
   1a9ce:	3a098463          	beqz	s3,1ad76 <__subtf3+0x6a0>
   1a9d2:	57fd                	li	a5,-1
   1a9d4:	d63e                	sw	a5,44(sp)
   1a9d6:	d43e                	sw	a5,40(sp)
   1a9d8:	d23e                	sw	a5,36(sp)
   1a9da:	d03e                	sw	a5,32(sp)
   1a9dc:	67a1                	lui	a5,0x8
   1a9de:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1a9e0:	a64d                	j	1ad82 <__subtf3+0x6ac>
   1a9e2:	00082f03          	lw	t5,0(a6)
   1a9e6:	00482283          	lw	t0,4(a6)
   1a9ea:	01d804b3          	add	s1,a6,t4
   1a9ee:	00cf5f33          	srl	t5,t5,a2
   1a9f2:	007292b3          	sll	t0,t0,t2
   1a9f6:	005f6f33          	or	t5,t5,t0
   1a9fa:	01e4a023          	sw	t5,0(s1)
   1a9fe:	0f85                	addi	t6,t6,1
   1aa00:	0811                	addi	a6,a6,4
   1aa02:	bddd                	j	1a8f8 <__subtf3+0x222>
   1aa04:	4bd2                	lw	s7,20(sp)
   1aa06:	4c62                	lw	s8,24(sp)
   1aa08:	4b72                	lw	s6,28(sp)
   1aa0a:	1e078363          	beqz	a5,1abf0 <__subtf3+0x51a>
   1aa0e:	408a87b3          	sub	a5,s5,s0
   1aa12:	e859                	bnez	s0,1aaa8 <__subtf3+0x3d2>
   1aa14:	4612                	lw	a2,4(sp)
   1aa16:	46a2                	lw	a3,8(sp)
   1aa18:	48b2                	lw	a7,12(sp)
   1aa1a:	00d66833          	or	a6,a2,a3
   1aa1e:	01186833          	or	a6,a6,a7
   1aa22:	00e86833          	or	a6,a6,a4
   1aa26:	02081963          	bnez	a6,1aa58 <__subtf3+0x382>
   1aa2a:	6721                	lui	a4,0x8
   1aa2c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1aa2e:	00e79e63          	bne	a5,a4,1aa4a <__subtf3+0x374>
   1aa32:	018be733          	or	a4,s7,s8
   1aa36:	01676733          	or	a4,a4,s6
   1aa3a:	8f45                	or	a4,a4,s1
   1aa3c:	c719                	beqz	a4,1aa4a <__subtf3+0x374>
   1aa3e:	012b5413          	srli	s0,s6,0x12
   1aa42:	00144413          	xori	s0,s0,1
   1aa46:	8805                	andi	s0,s0,1
   1aa48:	0412                	slli	s0,s0,0x4
   1aa4a:	d026                	sw	s1,32(sp)
   1aa4c:	d25e                	sw	s7,36(sp)
   1aa4e:	d462                	sw	s8,40(sp)
   1aa50:	d65a                	sw	s6,44(sp)
   1aa52:	4681                	li	a3,0
   1aa54:	3fb0006f          	j	1b64e <__subtf3+0xf78>
   1aa58:	fff78813          	addi	a6,a5,-1
   1aa5c:	02081963          	bnez	a6,1aa8e <__subtf3+0x3b8>
   1aa60:	94ba                	add	s1,s1,a4
   1aa62:	9bb2                	add	s7,s7,a2
   1aa64:	d026                	sw	s1,32(sp)
   1aa66:	00e4b4b3          	sltu	s1,s1,a4
   1aa6a:	94de                	add	s1,s1,s7
   1aa6c:	d226                	sw	s1,36(sp)
   1aa6e:	00cbb633          	sltu	a2,s7,a2
   1aa72:	0174b4b3          	sltu	s1,s1,s7
   1aa76:	9c36                	add	s8,s8,a3
   1aa78:	8e45                	or	a2,a2,s1
   1aa7a:	9662                	add	a2,a2,s8
   1aa7c:	d432                	sw	a2,40(sp)
   1aa7e:	00dc3733          	sltu	a4,s8,a3
   1aa82:	01863633          	sltu	a2,a2,s8
   1aa86:	8f51                	or	a4,a4,a2
   1aa88:	98da                	add	a7,a7,s6
   1aa8a:	9746                	add	a4,a4,a7
   1aa8c:	b355                	j	1a830 <__subtf3+0x15a>
   1aa8e:	6721                	lui	a4,0x8
   1aa90:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1aa92:	fae780e3          	beq	a5,a4,1aa32 <__subtf3+0x35c>
   1aa96:	07400793          	li	a5,116
   1aa9a:	0507d863          	bge	a5,a6,1aaea <__subtf3+0x414>
   1aa9e:	c602                	sw	zero,12(sp)
   1aaa0:	c402                	sw	zero,8(sp)
   1aaa2:	c202                	sw	zero,4(sp)
   1aaa4:	4785                	li	a5,1
   1aaa6:	a8cd                	j	1ab98 <__subtf3+0x4c2>
   1aaa8:	6721                	lui	a4,0x8
   1aaaa:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1aaac:	02ea9563          	bne	s5,a4,1aad6 <__subtf3+0x400>
   1aab0:	018be7b3          	or	a5,s7,s8
   1aab4:	0167e7b3          	or	a5,a5,s6
   1aab8:	8fc5                	or	a5,a5,s1
   1aaba:	4401                	li	s0,0
   1aabc:	c799                	beqz	a5,1aaca <__subtf3+0x3f4>
   1aabe:	012b5413          	srli	s0,s6,0x12
   1aac2:	00144413          	xori	s0,s0,1
   1aac6:	8805                	andi	s0,s0,1
   1aac8:	0412                	slli	s0,s0,0x4
   1aaca:	d026                	sw	s1,32(sp)
   1aacc:	d25e                	sw	s7,36(sp)
   1aace:	d462                	sw	s8,40(sp)
   1aad0:	d65a                	sw	s6,44(sp)
   1aad2:	87d6                	mv	a5,s5
   1aad4:	bfbd                	j	1aa52 <__subtf3+0x37c>
   1aad6:	4732                	lw	a4,12(sp)
   1aad8:	000806b7          	lui	a3,0x80
   1aadc:	8f55                	or	a4,a4,a3
   1aade:	c63a                	sw	a4,12(sp)
   1aae0:	07400713          	li	a4,116
   1aae4:	faf74de3          	blt	a4,a5,1aa9e <__subtf3+0x3c8>
   1aae8:	883e                	mv	a6,a5
   1aaea:	02000713          	li	a4,32
   1aaee:	02e84733          	div	a4,a6,a4
   1aaf2:	86ae                	mv	a3,a1
   1aaf4:	4401                	li	s0,0
   1aaf6:	4781                	li	a5,0
   1aaf8:	02e7c663          	blt	a5,a4,1ab24 <__subtf3+0x44e>
   1aafc:	478d                	li	a5,3
   1aafe:	01f87893          	andi	a7,a6,31
   1ab02:	8f99                	sub	a5,a5,a4
   1ab04:	00271613          	slli	a2,a4,0x2
   1ab08:	02089363          	bnez	a7,1ab2e <__subtf3+0x458>
   1ab0c:	00c586b3          	add	a3,a1,a2
   1ab10:	4294                	lw	a3,0(a3)
   1ab12:	0885                	addi	a7,a7,1
   1ab14:	c194                	sw	a3,0(a1)
   1ab16:	0591                	addi	a1,a1,4
   1ab18:	ff17dae3          	bge	a5,a7,1ab0c <__subtf3+0x436>
   1ab1c:	4791                	li	a5,4
   1ab1e:	40e78733          	sub	a4,a5,a4
   1ab22:	a899                	j	1ab78 <__subtf3+0x4a2>
   1ab24:	4290                	lw	a2,0(a3)
   1ab26:	0785                	addi	a5,a5,1
   1ab28:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x62070>
   1ab2a:	8c51                	or	s0,s0,a2
   1ab2c:	b7f1                	j	1aaf8 <__subtf3+0x422>
   1ab2e:	02000693          	li	a3,32
   1ab32:	02d86833          	rem	a6,a6,a3
   1ab36:	41068833          	sub	a6,a3,a6
   1ab3a:	86ba                	mv	a3,a4
   1ab3c:	00075363          	bgez	a4,1ab42 <__subtf3+0x46c>
   1ab40:	4681                	li	a3,0
   1ab42:	068a                	slli	a3,a3,0x2
   1ab44:	04068693          	addi	a3,a3,64
   1ab48:	968a                	add	a3,a3,sp
   1ab4a:	fc06a683          	lw	a3,-64(a3)
   1ab4e:	95b2                	add	a1,a1,a2
   1ab50:	4301                	li	t1,0
   1ab52:	010696b3          	sll	a3,a3,a6
   1ab56:	8c55                	or	s0,s0,a3
   1ab58:	40c00633          	neg	a2,a2
   1ab5c:	06f34a63          	blt	t1,a5,1abd0 <__subtf3+0x4fa>
   1ab60:	4691                	li	a3,4
   1ab62:	40e68733          	sub	a4,a3,a4
   1ab66:	46b2                	lw	a3,12(sp)
   1ab68:	078a                	slli	a5,a5,0x2
   1ab6a:	04078793          	addi	a5,a5,64
   1ab6e:	978a                	add	a5,a5,sp
   1ab70:	0116d6b3          	srl	a3,a3,a7
   1ab74:	fcd7a023          	sw	a3,-64(a5)
   1ab78:	00572793          	slti	a5,a4,5
   1ab7c:	4601                	li	a2,0
   1ab7e:	c781                	beqz	a5,1ab86 <__subtf3+0x4b0>
   1ab80:	4611                	li	a2,4
   1ab82:	8e19                	sub	a2,a2,a4
   1ab84:	060a                	slli	a2,a2,0x2
   1ab86:	070a                	slli	a4,a4,0x2
   1ab88:	953a                	add	a0,a0,a4
   1ab8a:	4581                	li	a1,0
   1ab8c:	a95f70ef          	jal	12620 <memset>
   1ab90:	4702                	lw	a4,0(sp)
   1ab92:	008037b3          	snez	a5,s0
   1ab96:	8fd9                	or	a5,a5,a4
   1ab98:	4692                	lw	a3,4(sp)
   1ab9a:	c03e                	sw	a5,0(sp)
   1ab9c:	97a6                	add	a5,a5,s1
   1ab9e:	9bb6                	add	s7,s7,a3
   1aba0:	4722                	lw	a4,8(sp)
   1aba2:	d03e                	sw	a5,32(sp)
   1aba4:	0097b7b3          	sltu	a5,a5,s1
   1aba8:	97de                	add	a5,a5,s7
   1abaa:	d23e                	sw	a5,36(sp)
   1abac:	00dbb6b3          	sltu	a3,s7,a3
   1abb0:	0177b7b3          	sltu	a5,a5,s7
   1abb4:	9c3a                	add	s8,s8,a4
   1abb6:	8fd5                	or	a5,a5,a3
   1abb8:	97e2                	add	a5,a5,s8
   1abba:	d43e                	sw	a5,40(sp)
   1abbc:	00ec3733          	sltu	a4,s8,a4
   1abc0:	0187b7b3          	sltu	a5,a5,s8
   1abc4:	8f5d                	or	a4,a4,a5
   1abc6:	47b2                	lw	a5,12(sp)
   1abc8:	97da                	add	a5,a5,s6
   1abca:	973e                	add	a4,a4,a5
   1abcc:	87d6                	mv	a5,s5
   1abce:	b36d                	j	1a978 <__subtf3+0x2a2>
   1abd0:	4194                	lw	a3,0(a1)
   1abd2:	0045ae03          	lw	t3,4(a1)
   1abd6:	00c58eb3          	add	t4,a1,a2
   1abda:	0116d6b3          	srl	a3,a3,a7
   1abde:	010e1e33          	sll	t3,t3,a6
   1abe2:	01c6e6b3          	or	a3,a3,t3
   1abe6:	00dea023          	sw	a3,0(t4)
   1abea:	0305                	addi	t1,t1,1
   1abec:	0591                	addi	a1,a1,4
   1abee:	b7bd                	j	1ab5c <__subtf3+0x486>
   1abf0:	00140793          	addi	a5,s0,1
   1abf4:	01179513          	slli	a0,a5,0x11
   1abf8:	8149                	srli	a0,a0,0x12
   1abfa:	4612                	lw	a2,4(sp)
   1abfc:	46a2                	lw	a3,8(sp)
   1abfe:	45b2                	lw	a1,12(sp)
   1ac00:	10051c63          	bnez	a0,1ad18 <__subtf3+0x642>
   1ac04:	00d667b3          	or	a5,a2,a3
   1ac08:	8fcd                	or	a5,a5,a1
   1ac0a:	8fd9                	or	a5,a5,a4
   1ac0c:	e049                	bnez	s0,1ac8e <__subtf3+0x5b8>
   1ac0e:	e785                	bnez	a5,1ac36 <__subtf3+0x560>
   1ac10:	d026                	sw	s1,32(sp)
   1ac12:	d25e                	sw	s7,36(sp)
   1ac14:	d462                	sw	s8,40(sp)
   1ac16:	d65a                	sw	s6,44(sp)
   1ac18:	5782                	lw	a5,32(sp)
   1ac1a:	5592                	lw	a1,36(sp)
   1ac1c:	5622                	lw	a2,40(sp)
   1ac1e:	56b2                	lw	a3,44(sp)
   1ac20:	00b7e733          	or	a4,a5,a1
   1ac24:	8f51                	or	a4,a4,a2
   1ac26:	8f55                	or	a4,a4,a3
   1ac28:	1a071de3          	bnez	a4,1b5e2 <__subtf3+0xf0c>
   1ac2c:	4781                	li	a5,0
   1ac2e:	4681                	li	a3,0
   1ac30:	4401                	li	s0,0
   1ac32:	21d0006f          	j	1b64e <__subtf3+0xf78>
   1ac36:	018be7b3          	or	a5,s7,s8
   1ac3a:	0167e7b3          	or	a5,a5,s6
   1ac3e:	8fc5                	or	a5,a5,s1
   1ac40:	e791                	bnez	a5,1ac4c <__subtf3+0x576>
   1ac42:	d03a                	sw	a4,32(sp)
   1ac44:	d232                	sw	a2,36(sp)
   1ac46:	d436                	sw	a3,40(sp)
   1ac48:	d62e                	sw	a1,44(sp)
   1ac4a:	b7f9                	j	1ac18 <__subtf3+0x542>
   1ac4c:	94ba                	add	s1,s1,a4
   1ac4e:	9bb2                	add	s7,s7,a2
   1ac50:	d026                	sw	s1,32(sp)
   1ac52:	00e4b4b3          	sltu	s1,s1,a4
   1ac56:	94de                	add	s1,s1,s7
   1ac58:	d226                	sw	s1,36(sp)
   1ac5a:	00cbb633          	sltu	a2,s7,a2
   1ac5e:	0174b4b3          	sltu	s1,s1,s7
   1ac62:	9c36                	add	s8,s8,a3
   1ac64:	8e45                	or	a2,a2,s1
   1ac66:	9662                	add	a2,a2,s8
   1ac68:	d432                	sw	a2,40(sp)
   1ac6a:	00dc36b3          	sltu	a3,s8,a3
   1ac6e:	01863633          	sltu	a2,a2,s8
   1ac72:	8ed1                	or	a3,a3,a2
   1ac74:	95da                	add	a1,a1,s6
   1ac76:	96ae                	add	a3,a3,a1
   1ac78:	00c69793          	slli	a5,a3,0xc
   1ac7c:	3207d2e3          	bgez	a5,1b7a0 <__subtf3+0x10ca>
   1ac80:	fff807b7          	lui	a5,0xfff80
   1ac84:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff6206b>
   1ac86:	8efd                	and	a3,a3,a5
   1ac88:	d636                	sw	a3,44(sp)
   1ac8a:	4785                	li	a5,1
   1ac8c:	b3d9                	j	1aa52 <__subtf3+0x37c>
   1ac8e:	6521                	lui	a0,0x8
   1ac90:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1ac92:	04a41363          	bne	s0,a0,1acd8 <__subtf3+0x602>
   1ac96:	300788e3          	beqz	a5,1b7a6 <__subtf3+0x10d0>
   1ac9a:	0125d413          	srli	s0,a1,0x12
   1ac9e:	00144413          	xori	s0,s0,1
   1aca2:	8805                	andi	s0,s0,1
   1aca4:	0412                	slli	s0,s0,0x4
   1aca6:	02aa9d63          	bne	s5,a0,1ace0 <__subtf3+0x60a>
   1acaa:	018be533          	or	a0,s7,s8
   1acae:	01656533          	or	a0,a0,s6
   1acb2:	8d45                	or	a0,a0,s1
   1acb4:	c50d                	beqz	a0,1acde <__subtf3+0x608>
   1acb6:	00db1513          	slli	a0,s6,0xd
   1acba:	02054263          	bltz	a0,1acde <__subtf3+0x608>
   1acbe:	4441                	li	s0,16
   1acc0:	eb85                	bnez	a5,1acf0 <__subtf3+0x61a>
   1acc2:	8726                	mv	a4,s1
   1acc4:	865e                	mv	a2,s7
   1acc6:	86e2                	mv	a3,s8
   1acc8:	85da                	mv	a1,s6
   1acca:	d03a                	sw	a4,32(sp)
   1accc:	d232                	sw	a2,36(sp)
   1acce:	d436                	sw	a3,40(sp)
   1acd0:	d62e                	sw	a1,44(sp)
   1acd2:	67a1                	lui	a5,0x8
   1acd4:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1acd6:	bbb5                	j	1aa52 <__subtf3+0x37c>
   1acd8:	4401                	li	s0,0
   1acda:	fcaa88e3          	beq	s5,a0,1acaa <__subtf3+0x5d4>
   1acde:	d3f5                	beqz	a5,1acc2 <__subtf3+0x5ec>
   1ace0:	018bebb3          	or	s7,s7,s8
   1ace4:	016bebb3          	or	s7,s7,s6
   1ace8:	009bebb3          	or	s7,s7,s1
   1acec:	fc0b8fe3          	beqz	s7,1acca <__subtf3+0x5f4>
   1acf0:	67a1                	lui	a5,0x8
   1acf2:	d63e                	sw	a5,44(sp)
   1acf4:	d402                	sw	zero,40(sp)
   1acf6:	d202                	sw	zero,36(sp)
   1acf8:	d002                	sw	zero,32(sp)
   1acfa:	101c                	addi	a5,sp,32
   1acfc:	0850                	addi	a2,sp,20
   1acfe:	47d8                	lw	a4,12(a5)
   1ad00:	4794                	lw	a3,8(a5)
   1ad02:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1ad04:	070e                	slli	a4,a4,0x3
   1ad06:	82f5                	srli	a3,a3,0x1d
   1ad08:	8f55                	or	a4,a4,a3
   1ad0a:	cb98                	sw	a4,16(a5)
   1ad0c:	fef619e3          	bne	a2,a5,1acfe <__subtf3+0x628>
   1ad10:	4981                	li	s3,0
   1ad12:	b7c1                	j	1acd2 <__subtf3+0x5fc>
   1ad14:	4401                	li	s0,0
   1ad16:	bf51                	j	1acaa <__subtf3+0x5d4>
   1ad18:	94ba                	add	s1,s1,a4
   1ad1a:	9bb2                	add	s7,s7,a2
   1ad1c:	d026                	sw	s1,32(sp)
   1ad1e:	00e4b4b3          	sltu	s1,s1,a4
   1ad22:	94de                	add	s1,s1,s7
   1ad24:	d226                	sw	s1,36(sp)
   1ad26:	00cbb633          	sltu	a2,s7,a2
   1ad2a:	0174b4b3          	sltu	s1,s1,s7
   1ad2e:	9c36                	add	s8,s8,a3
   1ad30:	8e45                	or	a2,a2,s1
   1ad32:	9662                	add	a2,a2,s8
   1ad34:	d432                	sw	a2,40(sp)
   1ad36:	00dc36b3          	sltu	a3,s8,a3
   1ad3a:	01863633          	sltu	a2,a2,s8
   1ad3e:	8ed1                	or	a3,a3,a2
   1ad40:	95da                	add	a1,a1,s6
   1ad42:	96ae                	add	a3,a3,a1
   1ad44:	d636                	sw	a3,44(sp)
   1ad46:	1018                	addi	a4,sp,32
   1ad48:	1068                	addi	a0,sp,44
   1ad4a:	4310                	lw	a2,0(a4)
   1ad4c:	434c                	lw	a1,4(a4)
   1ad4e:	8205                	srli	a2,a2,0x1
   1ad50:	05fe                	slli	a1,a1,0x1f
   1ad52:	8e4d                	or	a2,a2,a1
   1ad54:	c310                	sw	a2,0(a4)
   1ad56:	0711                	addi	a4,a4,4
   1ad58:	fee519e3          	bne	a0,a4,1ad4a <__subtf3+0x674>
   1ad5c:	6721                	lui	a4,0x8
   1ad5e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1ad60:	c6e782e3          	beq	a5,a4,1a9c4 <__subtf3+0x2ee>
   1ad64:	8285                	srli	a3,a3,0x1
   1ad66:	d636                	sw	a3,44(sp)
   1ad68:	4401                	li	s0,0
   1ad6a:	b1e5                	j	1aa52 <__subtf3+0x37c>
   1ad6c:	4789                	li	a5,2
   1ad6e:	c6fa12e3          	bne	s4,a5,1a9d2 <__subtf3+0x2fc>
   1ad72:	c60980e3          	beqz	s3,1a9d2 <__subtf3+0x2fc>
   1ad76:	67a1                	lui	a5,0x8
   1ad78:	d602                	sw	zero,44(sp)
   1ad7a:	d402                	sw	zero,40(sp)
   1ad7c:	d202                	sw	zero,36(sp)
   1ad7e:	d002                	sw	zero,32(sp)
   1ad80:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1ad82:	4415                	li	s0,5
   1ad84:	b1f9                	j	1aa52 <__subtf3+0x37c>
   1ad86:	22f05b63          	blez	a5,1afbc <__subtf3+0x8e6>
   1ad8a:	4592                	lw	a1,4(sp)
   1ad8c:	4522                	lw	a0,8(sp)
   1ad8e:	48b2                	lw	a7,12(sp)
   1ad90:	0a0a9563          	bnez	s5,1ae3a <__subtf3+0x764>
   1ad94:	4ed2                	lw	t4,20(sp)
   1ad96:	4fe2                	lw	t6,24(sp)
   1ad98:	4672                	lw	a2,28(sp)
   1ad9a:	01fee6b3          	or	a3,t4,t6
   1ad9e:	8ed1                	or	a3,a3,a2
   1ada0:	8ec5                	or	a3,a3,s1
   1ada2:	e69d                	bnez	a3,1add0 <__subtf3+0x6fa>
   1ada4:	66a1                	lui	a3,0x8
   1ada6:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1ada8:	00d79f63          	bne	a5,a3,1adc6 <__subtf3+0x6f0>
   1adac:	00a5e6b3          	or	a3,a1,a0
   1adb0:	0116e6b3          	or	a3,a3,a7
   1adb4:	8ed9                	or	a3,a3,a4
   1adb6:	ca81                	beqz	a3,1adc6 <__subtf3+0x6f0>
   1adb8:	0128da93          	srli	s5,a7,0x12
   1adbc:	001aca93          	xori	s5,s5,1
   1adc0:	001afa93          	andi	s5,s5,1
   1adc4:	0a92                	slli	s5,s5,0x4
   1adc6:	d03a                	sw	a4,32(sp)
   1adc8:	d22e                	sw	a1,36(sp)
   1adca:	d42a                	sw	a0,40(sp)
   1adcc:	d646                	sw	a7,44(sp)
   1adce:	b435                	j	1a7fa <__subtf3+0x124>
   1add0:	fff78f13          	addi	t5,a5,-1
   1add4:	040f1663          	bnez	t5,1ae20 <__subtf3+0x74a>
   1add8:	409706b3          	sub	a3,a4,s1
   1addc:	41d58833          	sub	a6,a1,t4
   1ade0:	00d73333          	sltu	t1,a4,a3
   1ade4:	0105b7b3          	sltu	a5,a1,a6
   1ade8:	40680833          	sub	a6,a6,t1
   1adec:	4301                	li	t1,0
   1adee:	00d77663          	bgeu	a4,a3,1adfa <__subtf3+0x724>
   1adf2:	40be8eb3          	sub	t4,t4,a1
   1adf6:	001eb313          	seqz	t1,t4
   1adfa:	00f36733          	or	a4,t1,a5
   1adfe:	41f505b3          	sub	a1,a0,t6
   1ae02:	00b53333          	sltu	t1,a0,a1
   1ae06:	8d99                	sub	a1,a1,a4
   1ae08:	c709                	beqz	a4,1ae12 <__subtf3+0x73c>
   1ae0a:	40af87b3          	sub	a5,t6,a0
   1ae0e:	0017bf13          	seqz	t5,a5
   1ae12:	40c88733          	sub	a4,a7,a2
   1ae16:	006f67b3          	or	a5,t5,t1
   1ae1a:	8f1d                	sub	a4,a4,a5
   1ae1c:	4785                	li	a5,1
   1ae1e:	aab9                	j	1af7c <__subtf3+0x8a6>
   1ae20:	66a1                	lui	a3,0x8
   1ae22:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1ae24:	f8d784e3          	beq	a5,a3,1adac <__subtf3+0x6d6>
   1ae28:	07400793          	li	a5,116
   1ae2c:	05e7d763          	bge	a5,t5,1ae7a <__subtf3+0x7a4>
   1ae30:	ce02                	sw	zero,28(sp)
   1ae32:	cc02                	sw	zero,24(sp)
   1ae34:	ca02                	sw	zero,20(sp)
   1ae36:	4685                	li	a3,1
   1ae38:	a8e5                	j	1af30 <__subtf3+0x85a>
   1ae3a:	66a1                	lui	a3,0x8
   1ae3c:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1ae3e:	02d41463          	bne	s0,a3,1ae66 <__subtf3+0x790>
   1ae42:	00a5e7b3          	or	a5,a1,a0
   1ae46:	0117e7b3          	or	a5,a5,a7
   1ae4a:	8fd9                	or	a5,a5,a4
   1ae4c:	4681                	li	a3,0
   1ae4e:	c799                	beqz	a5,1ae5c <__subtf3+0x786>
   1ae50:	0128d693          	srli	a3,a7,0x12
   1ae54:	0016c693          	xori	a3,a3,1
   1ae58:	8a85                	andi	a3,a3,1
   1ae5a:	0692                	slli	a3,a3,0x4
   1ae5c:	d03a                	sw	a4,32(sp)
   1ae5e:	d22e                	sw	a1,36(sp)
   1ae60:	d42a                	sw	a0,40(sp)
   1ae62:	d646                	sw	a7,44(sp)
   1ae64:	bc09                	j	1a876 <__subtf3+0x1a0>
   1ae66:	46f2                	lw	a3,28(sp)
   1ae68:	00080637          	lui	a2,0x80
   1ae6c:	8ed1                	or	a3,a3,a2
   1ae6e:	ce36                	sw	a3,28(sp)
   1ae70:	07400693          	li	a3,116
   1ae74:	faf6cee3          	blt	a3,a5,1ae30 <__subtf3+0x75a>
   1ae78:	8f3e                	mv	t5,a5
   1ae7a:	405f5793          	srai	a5,t5,0x5
   1ae7e:	8342                	mv	t1,a6
   1ae80:	01ff7f13          	andi	t5,t5,31
   1ae84:	4681                	li	a3,0
   1ae86:	4601                	li	a2,0
   1ae88:	02f61663          	bne	a2,a5,1aeb4 <__subtf3+0x7de>
   1ae8c:	460d                	li	a2,3
   1ae8e:	8e1d                	sub	a2,a2,a5
   1ae90:	00279313          	slli	t1,a5,0x2
   1ae94:	020f1763          	bnez	t5,1aec2 <__subtf3+0x7ec>
   1ae98:	00680eb3          	add	t4,a6,t1
   1ae9c:	000eae83          	lw	t4,0(t4)
   1aea0:	0f05                	addi	t5,t5,1
   1aea2:	0811                	addi	a6,a6,4
   1aea4:	ffd82e23          	sw	t4,-4(a6)
   1aea8:	ffe658e3          	bge	a2,t5,1ae98 <__subtf3+0x7c2>
   1aeac:	4611                	li	a2,4
   1aeae:	40f607b3          	sub	a5,a2,a5
   1aeb2:	a881                	j	1af02 <__subtf3+0x82c>
   1aeb4:	00032e83          	lw	t4,0(t1)
   1aeb8:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x6206d>
   1aeba:	0311                	addi	t1,t1,4
   1aebc:	01d6e6b3          	or	a3,a3,t4
   1aec0:	b7e1                	j	1ae88 <__subtf3+0x7b2>
   1aec2:	04030493          	addi	s1,t1,64
   1aec6:	00248eb3          	add	t4,s1,sp
   1aeca:	fd0eae83          	lw	t4,-48(t4)
   1aece:	02000393          	li	t2,32
   1aed2:	41e383b3          	sub	t2,t2,t5
   1aed6:	007e9eb3          	sll	t4,t4,t2
   1aeda:	981a                	add	a6,a6,t1
   1aedc:	01d6e6b3          	or	a3,a3,t4
   1aee0:	40600333          	neg	t1,t1
   1aee4:	4f81                	li	t6,0
   1aee6:	0acfca63          	blt	t6,a2,1af9a <__subtf3+0x8c4>
   1aeea:	4811                	li	a6,4
   1aeec:	40f807b3          	sub	a5,a6,a5
   1aef0:	4872                	lw	a6,28(sp)
   1aef2:	060a                	slli	a2,a2,0x2
   1aef4:	04060613          	addi	a2,a2,64
   1aef8:	960a                	add	a2,a2,sp
   1aefa:	01e85833          	srl	a6,a6,t5
   1aefe:	fd062823          	sw	a6,-48(a2)
   1af02:	4611                	li	a2,4
   1af04:	8e1d                	sub	a2,a2,a5
   1af06:	060a                	slli	a2,a2,0x2
   1af08:	078a                	slli	a5,a5,0x2
   1af0a:	4821                	li	a6,8
   1af0c:	97f2                	add	a5,a5,t3
   1af0e:	01066863          	bltu	a2,a6,1af1e <__subtf3+0x848>
   1af12:	0007a023          	sw	zero,0(a5)
   1af16:	0007a223          	sw	zero,4(a5)
   1af1a:	1661                	addi	a2,a2,-8
   1af1c:	07a1                	addi	a5,a5,8
   1af1e:	4811                	li	a6,4
   1af20:	01066463          	bltu	a2,a6,1af28 <__subtf3+0x852>
   1af24:	0007a023          	sw	zero,0(a5)
   1af28:	47c2                	lw	a5,16(sp)
   1af2a:	00d036b3          	snez	a3,a3
   1af2e:	8edd                	or	a3,a3,a5
   1af30:	4652                	lw	a2,20(sp)
   1af32:	c836                	sw	a3,16(sp)
   1af34:	40d706b3          	sub	a3,a4,a3
   1af38:	40c58833          	sub	a6,a1,a2
   1af3c:	00d737b3          	sltu	a5,a4,a3
   1af40:	0105b333          	sltu	t1,a1,a6
   1af44:	40f80833          	sub	a6,a6,a5
   1af48:	4781                	li	a5,0
   1af4a:	00d77563          	bgeu	a4,a3,1af54 <__subtf3+0x87e>
   1af4e:	8e0d                	sub	a2,a2,a1
   1af50:	00163793          	seqz	a5,a2
   1af54:	4762                	lw	a4,24(sp)
   1af56:	0067e7b3          	or	a5,a5,t1
   1af5a:	4601                	li	a2,0
   1af5c:	40e505b3          	sub	a1,a0,a4
   1af60:	00b53333          	sltu	t1,a0,a1
   1af64:	8d9d                	sub	a1,a1,a5
   1af66:	c781                	beqz	a5,1af6e <__subtf3+0x898>
   1af68:	8f09                	sub	a4,a4,a0
   1af6a:	00173613          	seqz	a2,a4
   1af6e:	4772                	lw	a4,28(sp)
   1af70:	00666633          	or	a2,a2,t1
   1af74:	87a2                	mv	a5,s0
   1af76:	40e88733          	sub	a4,a7,a4
   1af7a:	8f11                	sub	a4,a4,a2
   1af7c:	d036                	sw	a3,32(sp)
   1af7e:	d63a                	sw	a4,44(sp)
   1af80:	d42e                	sw	a1,40(sp)
   1af82:	d242                	sw	a6,36(sp)
   1af84:	00c71693          	slli	a3,a4,0xc
   1af88:	de06d0e3          	bgez	a3,1ad68 <__subtf3+0x692>
   1af8c:	000806b7          	lui	a3,0x80
   1af90:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x6206b>
   1af92:	8f75                	and	a4,a4,a3
   1af94:	d63a                	sw	a4,44(sp)
   1af96:	843e                	mv	s0,a5
   1af98:	a1bd                	j	1b406 <__subtf3+0xd30>
   1af9a:	00082e83          	lw	t4,0(a6)
   1af9e:	00482283          	lw	t0,4(a6)
   1afa2:	006804b3          	add	s1,a6,t1
   1afa6:	01eedeb3          	srl	t4,t4,t5
   1afaa:	007292b3          	sll	t0,t0,t2
   1afae:	005eeeb3          	or	t4,t4,t0
   1afb2:	01d4a023          	sw	t4,0(s1)
   1afb6:	0f85                	addi	t6,t6,1
   1afb8:	0811                	addi	a6,a6,4
   1afba:	b735                	j	1aee6 <__subtf3+0x810>
   1afbc:	4bd2                	lw	s7,20(sp)
   1afbe:	4b62                	lw	s6,24(sp)
   1afc0:	4c72                	lw	s8,28(sp)
   1afc2:	20078763          	beqz	a5,1b1d0 <__subtf3+0xafa>
   1afc6:	408a87b3          	sub	a5,s5,s0
   1afca:	e05d                	bnez	s0,1b070 <__subtf3+0x99a>
   1afcc:	4892                	lw	a7,4(sp)
   1afce:	4e22                	lw	t3,8(sp)
   1afd0:	4632                	lw	a2,12(sp)
   1afd2:	01c8e6b3          	or	a3,a7,t3
   1afd6:	8ed1                	or	a3,a3,a2
   1afd8:	8ed9                	or	a3,a3,a4
   1afda:	e69d                	bnez	a3,1b008 <__subtf3+0x932>
   1afdc:	6721                	lui	a4,0x8
   1afde:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1afe0:	00e79e63          	bne	a5,a4,1affc <__subtf3+0x926>
   1afe4:	016be733          	or	a4,s7,s6
   1afe8:	01876733          	or	a4,a4,s8
   1afec:	8f45                	or	a4,a4,s1
   1afee:	c719                	beqz	a4,1affc <__subtf3+0x926>
   1aff0:	012c5413          	srli	s0,s8,0x12
   1aff4:	00144413          	xori	s0,s0,1
   1aff8:	8805                	andi	s0,s0,1
   1affa:	0412                	slli	s0,s0,0x4
   1affc:	d026                	sw	s1,32(sp)
   1affe:	d25e                	sw	s7,36(sp)
   1b000:	d45a                	sw	s6,40(sp)
   1b002:	d662                	sw	s8,44(sp)
   1b004:	89e6                	mv	s3,s9
   1b006:	b4b1                	j	1aa52 <__subtf3+0x37c>
   1b008:	fff78313          	addi	t1,a5,-1
   1b00c:	04031563          	bnez	t1,1b056 <__subtf3+0x980>
   1b010:	40e486b3          	sub	a3,s1,a4
   1b014:	411b8833          	sub	a6,s7,a7
   1b018:	00d4b733          	sltu	a4,s1,a3
   1b01c:	010bb7b3          	sltu	a5,s7,a6
   1b020:	40e80833          	sub	a6,a6,a4
   1b024:	4701                	li	a4,0
   1b026:	00d4f663          	bgeu	s1,a3,1b032 <__subtf3+0x95c>
   1b02a:	417888b3          	sub	a7,a7,s7
   1b02e:	0018b713          	seqz	a4,a7
   1b032:	41cb05b3          	sub	a1,s6,t3
   1b036:	8f5d                	or	a4,a4,a5
   1b038:	00bb3533          	sltu	a0,s6,a1
   1b03c:	8d99                	sub	a1,a1,a4
   1b03e:	c709                	beqz	a4,1b048 <__subtf3+0x972>
   1b040:	416e07b3          	sub	a5,t3,s6
   1b044:	0017b313          	seqz	t1,a5
   1b048:	40cc0733          	sub	a4,s8,a2
   1b04c:	00a367b3          	or	a5,t1,a0
   1b050:	8f1d                	sub	a4,a4,a5
   1b052:	89e6                	mv	s3,s9
   1b054:	b3e1                	j	1ae1c <__subtf3+0x746>
   1b056:	6721                	lui	a4,0x8
   1b058:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b05a:	f8e785e3          	beq	a5,a4,1afe4 <__subtf3+0x90e>
   1b05e:	07400793          	li	a5,116
   1b062:	0467d863          	bge	a5,t1,1b0b2 <__subtf3+0x9dc>
   1b066:	c602                	sw	zero,12(sp)
   1b068:	c402                	sw	zero,8(sp)
   1b06a:	c202                	sw	zero,4(sp)
   1b06c:	4685                	li	a3,1
   1b06e:	a8cd                	j	1b160 <__subtf3+0xa8a>
   1b070:	6721                	lui	a4,0x8
   1b072:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b074:	02ea9563          	bne	s5,a4,1b09e <__subtf3+0x9c8>
   1b078:	016be7b3          	or	a5,s7,s6
   1b07c:	0187e7b3          	or	a5,a5,s8
   1b080:	8fc5                	or	a5,a5,s1
   1b082:	4401                	li	s0,0
   1b084:	c799                	beqz	a5,1b092 <__subtf3+0x9bc>
   1b086:	012c5413          	srli	s0,s8,0x12
   1b08a:	00144413          	xori	s0,s0,1
   1b08e:	8805                	andi	s0,s0,1
   1b090:	0412                	slli	s0,s0,0x4
   1b092:	d026                	sw	s1,32(sp)
   1b094:	d25e                	sw	s7,36(sp)
   1b096:	d45a                	sw	s6,40(sp)
   1b098:	d662                	sw	s8,44(sp)
   1b09a:	87d6                	mv	a5,s5
   1b09c:	b7a5                	j	1b004 <__subtf3+0x92e>
   1b09e:	4732                	lw	a4,12(sp)
   1b0a0:	000806b7          	lui	a3,0x80
   1b0a4:	8f55                	or	a4,a4,a3
   1b0a6:	c63a                	sw	a4,12(sp)
   1b0a8:	07400713          	li	a4,116
   1b0ac:	faf74de3          	blt	a4,a5,1b066 <__subtf3+0x990>
   1b0b0:	833e                	mv	t1,a5
   1b0b2:	02000793          	li	a5,32
   1b0b6:	02f347b3          	div	a5,t1,a5
   1b0ba:	86ae                	mv	a3,a1
   1b0bc:	4401                	li	s0,0
   1b0be:	4701                	li	a4,0
   1b0c0:	02f74663          	blt	a4,a5,1b0ec <__subtf3+0xa16>
   1b0c4:	470d                	li	a4,3
   1b0c6:	01f37813          	andi	a6,t1,31
   1b0ca:	8f1d                	sub	a4,a4,a5
   1b0cc:	00279613          	slli	a2,a5,0x2
   1b0d0:	02081363          	bnez	a6,1b0f6 <__subtf3+0xa20>
   1b0d4:	00c586b3          	add	a3,a1,a2
   1b0d8:	4294                	lw	a3,0(a3)
   1b0da:	0805                	addi	a6,a6,1
   1b0dc:	c194                	sw	a3,0(a1)
   1b0de:	0591                	addi	a1,a1,4
   1b0e0:	ff075ae3          	bge	a4,a6,1b0d4 <__subtf3+0x9fe>
   1b0e4:	4711                	li	a4,4
   1b0e6:	40f707b3          	sub	a5,a4,a5
   1b0ea:	a899                	j	1b140 <__subtf3+0xa6a>
   1b0ec:	4290                	lw	a2,0(a3)
   1b0ee:	0705                	addi	a4,a4,1
   1b0f0:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x62070>
   1b0f2:	8c51                	or	s0,s0,a2
   1b0f4:	b7f1                	j	1b0c0 <__subtf3+0x9ea>
   1b0f6:	02000693          	li	a3,32
   1b0fa:	02d36333          	rem	t1,t1,a3
   1b0fe:	40668333          	sub	t1,a3,t1
   1b102:	86be                	mv	a3,a5
   1b104:	0007d363          	bgez	a5,1b10a <__subtf3+0xa34>
   1b108:	4681                	li	a3,0
   1b10a:	068a                	slli	a3,a3,0x2
   1b10c:	04068693          	addi	a3,a3,64
   1b110:	968a                	add	a3,a3,sp
   1b112:	fc06a683          	lw	a3,-64(a3)
   1b116:	95b2                	add	a1,a1,a2
   1b118:	4881                	li	a7,0
   1b11a:	006696b3          	sll	a3,a3,t1
   1b11e:	8c55                	or	s0,s0,a3
   1b120:	40c00633          	neg	a2,a2
   1b124:	08e8c663          	blt	a7,a4,1b1b0 <__subtf3+0xada>
   1b128:	4691                	li	a3,4
   1b12a:	40f687b3          	sub	a5,a3,a5
   1b12e:	46b2                	lw	a3,12(sp)
   1b130:	070a                	slli	a4,a4,0x2
   1b132:	04070713          	addi	a4,a4,64
   1b136:	970a                	add	a4,a4,sp
   1b138:	0106d6b3          	srl	a3,a3,a6
   1b13c:	fcd72023          	sw	a3,-64(a4)
   1b140:	0057a713          	slti	a4,a5,5
   1b144:	4601                	li	a2,0
   1b146:	c701                	beqz	a4,1b14e <__subtf3+0xa78>
   1b148:	4611                	li	a2,4
   1b14a:	8e1d                	sub	a2,a2,a5
   1b14c:	060a                	slli	a2,a2,0x2
   1b14e:	078a                	slli	a5,a5,0x2
   1b150:	953e                	add	a0,a0,a5
   1b152:	4581                	li	a1,0
   1b154:	cccf70ef          	jal	12620 <memset>
   1b158:	4782                	lw	a5,0(sp)
   1b15a:	008036b3          	snez	a3,s0
   1b15e:	8edd                	or	a3,a3,a5
   1b160:	4712                	lw	a4,4(sp)
   1b162:	c036                	sw	a3,0(sp)
   1b164:	40d486b3          	sub	a3,s1,a3
   1b168:	40eb8833          	sub	a6,s7,a4
   1b16c:	00d4b7b3          	sltu	a5,s1,a3
   1b170:	010bb633          	sltu	a2,s7,a6
   1b174:	40f80833          	sub	a6,a6,a5
   1b178:	4781                	li	a5,0
   1b17a:	00d4f663          	bgeu	s1,a3,1b186 <__subtf3+0xab0>
   1b17e:	41770733          	sub	a4,a4,s7
   1b182:	00173793          	seqz	a5,a4
   1b186:	4722                	lw	a4,8(sp)
   1b188:	8fd1                	or	a5,a5,a2
   1b18a:	4601                	li	a2,0
   1b18c:	40eb05b3          	sub	a1,s6,a4
   1b190:	00bb3533          	sltu	a0,s6,a1
   1b194:	8d9d                	sub	a1,a1,a5
   1b196:	c789                	beqz	a5,1b1a0 <__subtf3+0xaca>
   1b198:	41670733          	sub	a4,a4,s6
   1b19c:	00173613          	seqz	a2,a4
   1b1a0:	4732                	lw	a4,12(sp)
   1b1a2:	8e49                	or	a2,a2,a0
   1b1a4:	87d6                	mv	a5,s5
   1b1a6:	40ec0733          	sub	a4,s8,a4
   1b1aa:	8f11                	sub	a4,a4,a2
   1b1ac:	89e6                	mv	s3,s9
   1b1ae:	b3f9                	j	1af7c <__subtf3+0x8a6>
   1b1b0:	4194                	lw	a3,0(a1)
   1b1b2:	0045ae03          	lw	t3,4(a1)
   1b1b6:	00c58eb3          	add	t4,a1,a2
   1b1ba:	0106d6b3          	srl	a3,a3,a6
   1b1be:	006e1e33          	sll	t3,t3,t1
   1b1c2:	01c6e6b3          	or	a3,a3,t3
   1b1c6:	00dea023          	sw	a3,0(t4)
   1b1ca:	0885                	addi	a7,a7,1
   1b1cc:	0591                	addi	a1,a1,4
   1b1ce:	bf99                	j	1b124 <__subtf3+0xa4e>
   1b1d0:	00140693          	addi	a3,s0,1
   1b1d4:	01169813          	slli	a6,a3,0x11
   1b1d8:	01285813          	srli	a6,a6,0x12
   1b1dc:	4612                	lw	a2,4(sp)
   1b1de:	45a2                	lw	a1,8(sp)
   1b1e0:	4532                	lw	a0,12(sp)
   1b1e2:	18081363          	bnez	a6,1b368 <__subtf3+0xc92>
   1b1e6:	016be7b3          	or	a5,s7,s6
   1b1ea:	00b666b3          	or	a3,a2,a1
   1b1ee:	0187e7b3          	or	a5,a5,s8
   1b1f2:	8ec9                	or	a3,a3,a0
   1b1f4:	8fc5                	or	a5,a5,s1
   1b1f6:	8ed9                	or	a3,a3,a4
   1b1f8:	e869                	bnez	s0,1b2ca <__subtf3+0xbf4>
   1b1fa:	ea99                	bnez	a3,1b210 <__subtf3+0xb3a>
   1b1fc:	d026                	sw	s1,32(sp)
   1b1fe:	d25e                	sw	s7,36(sp)
   1b200:	d45a                	sw	s6,40(sp)
   1b202:	d662                	sw	s8,44(sp)
   1b204:	ebcd                	bnez	a5,1b2b6 <__subtf3+0xbe0>
   1b206:	ffea0993          	addi	s3,s4,-2
   1b20a:	0019b993          	seqz	s3,s3
   1b20e:	b429                	j	1ac18 <__subtf3+0x542>
   1b210:	e791                	bnez	a5,1b21c <__subtf3+0xb46>
   1b212:	d03a                	sw	a4,32(sp)
   1b214:	d232                	sw	a2,36(sp)
   1b216:	d42e                	sw	a1,40(sp)
   1b218:	d62a                	sw	a0,44(sp)
   1b21a:	bafd                	j	1ac18 <__subtf3+0x542>
   1b21c:	409707b3          	sub	a5,a4,s1
   1b220:	41760e33          	sub	t3,a2,s7
   1b224:	00f73833          	sltu	a6,a4,a5
   1b228:	01c638b3          	sltu	a7,a2,t3
   1b22c:	410e0833          	sub	a6,t3,a6
   1b230:	4681                	li	a3,0
   1b232:	00f77463          	bgeu	a4,a5,1b23a <__subtf3+0xb64>
   1b236:	001e3693          	seqz	a3,t3
   1b23a:	0116e6b3          	or	a3,a3,a7
   1b23e:	416588b3          	sub	a7,a1,s6
   1b242:	0115bf33          	sltu	t5,a1,a7
   1b246:	40d88eb3          	sub	t4,a7,a3
   1b24a:	4301                	li	t1,0
   1b24c:	c299                	beqz	a3,1b252 <__subtf3+0xb7c>
   1b24e:	0018b313          	seqz	t1,a7
   1b252:	01e36333          	or	t1,t1,t5
   1b256:	418506b3          	sub	a3,a0,s8
   1b25a:	406686b3          	sub	a3,a3,t1
   1b25e:	d636                	sw	a3,44(sp)
   1b260:	d476                	sw	t4,40(sp)
   1b262:	d242                	sw	a6,36(sp)
   1b264:	d03e                	sw	a5,32(sp)
   1b266:	00c69313          	slli	t1,a3,0xc
   1b26a:	04035863          	bgez	t1,1b2ba <__subtf3+0xbe4>
   1b26e:	40e48733          	sub	a4,s1,a4
   1b272:	40cb8633          	sub	a2,s7,a2
   1b276:	00e4b7b3          	sltu	a5,s1,a4
   1b27a:	00cbbbb3          	sltu	s7,s7,a2
   1b27e:	8e1d                	sub	a2,a2,a5
   1b280:	4781                	li	a5,0
   1b282:	00e4f463          	bgeu	s1,a4,1b28a <__subtf3+0xbb4>
   1b286:	001e3793          	seqz	a5,t3
   1b28a:	40bb05b3          	sub	a1,s6,a1
   1b28e:	0177ebb3          	or	s7,a5,s7
   1b292:	00bb3b33          	sltu	s6,s6,a1
   1b296:	417585b3          	sub	a1,a1,s7
   1b29a:	000b8463          	beqz	s7,1b2a2 <__subtf3+0xbcc>
   1b29e:	0018b413          	seqz	s0,a7
   1b2a2:	40ac0533          	sub	a0,s8,a0
   1b2a6:	01646b33          	or	s6,s0,s6
   1b2aa:	41650533          	sub	a0,a0,s6
   1b2ae:	d62a                	sw	a0,44(sp)
   1b2b0:	d42e                	sw	a1,40(sp)
   1b2b2:	d232                	sw	a2,36(sp)
   1b2b4:	d03a                	sw	a4,32(sp)
   1b2b6:	89e6                	mv	s3,s9
   1b2b8:	b285                	j	1ac18 <__subtf3+0x542>
   1b2ba:	0107e7b3          	or	a5,a5,a6
   1b2be:	01d7e7b3          	or	a5,a5,t4
   1b2c2:	8fd5                	or	a5,a5,a3
   1b2c4:	94079ae3          	bnez	a5,1ac18 <__subtf3+0x542>
   1b2c8:	bf3d                	j	1b206 <__subtf3+0xb30>
   1b2ca:	6821                	lui	a6,0x8
   1b2cc:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   1b2ce:	03041263          	bne	s0,a6,1b2f2 <__subtf3+0xc1c>
   1b2d2:	4c068f63          	beqz	a3,1b7b0 <__subtf3+0x10da>
   1b2d6:	01255413          	srli	s0,a0,0x12
   1b2da:	00144413          	xori	s0,s0,1
   1b2de:	8805                	andi	s0,s0,1
   1b2e0:	0412                	slli	s0,s0,0x4
   1b2e2:	010a8b63          	beq	s5,a6,1b2f8 <__subtf3+0xc22>
   1b2e6:	ebb1                	bnez	a5,1b33a <__subtf3+0xc64>
   1b2e8:	d03a                	sw	a4,32(sp)
   1b2ea:	d232                	sw	a2,36(sp)
   1b2ec:	d42e                	sw	a1,40(sp)
   1b2ee:	d62a                	sw	a0,44(sp)
   1b2f0:	b2cd                	j	1acd2 <__subtf3+0x5fc>
   1b2f2:	4401                	li	s0,0
   1b2f4:	010a9363          	bne	s5,a6,1b2fa <__subtf3+0xc24>
   1b2f8:	eb9d                	bnez	a5,1b32e <__subtf3+0xc58>
   1b2fa:	f6f5                	bnez	a3,1b2e6 <__subtf3+0xc10>
   1b2fc:	e3a5                	bnez	a5,1b35c <__subtf3+0xc86>
   1b2fe:	67a1                	lui	a5,0x8
   1b300:	d63e                	sw	a5,44(sp)
   1b302:	d402                	sw	zero,40(sp)
   1b304:	d202                	sw	zero,36(sp)
   1b306:	d002                	sw	zero,32(sp)
   1b308:	101c                	addi	a5,sp,32
   1b30a:	0850                	addi	a2,sp,20
   1b30c:	47d8                	lw	a4,12(a5)
   1b30e:	4794                	lw	a3,8(a5)
   1b310:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1b312:	070e                	slli	a4,a4,0x3
   1b314:	82f5                	srli	a3,a3,0x1d
   1b316:	8f55                	or	a4,a4,a3
   1b318:	cb98                	sw	a4,16(a5)
   1b31a:	fef619e3          	bne	a2,a5,1b30c <__subtf3+0xc36>
   1b31e:	67a1                	lui	a5,0x8
   1b320:	4981                	li	s3,0
   1b322:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b324:	4441                	li	s0,16
   1b326:	f2cff06f          	j	1aa52 <__subtf3+0x37c>
   1b32a:	4401                	li	s0,0
   1b32c:	b7f1                	j	1b2f8 <__subtf3+0xc22>
   1b32e:	00dc1813          	slli	a6,s8,0xd
   1b332:	fc0844e3          	bltz	a6,1b2fa <__subtf3+0xc24>
   1b336:	4441                	li	s0,16
   1b338:	c295                	beqz	a3,1b35c <__subtf3+0xc86>
   1b33a:	67a1                	lui	a5,0x8
   1b33c:	d63e                	sw	a5,44(sp)
   1b33e:	d402                	sw	zero,40(sp)
   1b340:	d202                	sw	zero,36(sp)
   1b342:	d002                	sw	zero,32(sp)
   1b344:	101c                	addi	a5,sp,32
   1b346:	0850                	addi	a2,sp,20
   1b348:	47d8                	lw	a4,12(a5)
   1b34a:	4794                	lw	a3,8(a5)
   1b34c:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1b34e:	070e                	slli	a4,a4,0x3
   1b350:	82f5                	srli	a3,a3,0x1d
   1b352:	8f55                	or	a4,a4,a3
   1b354:	cb98                	sw	a4,16(a5)
   1b356:	fef619e3          	bne	a2,a5,1b348 <__subtf3+0xc72>
   1b35a:	ba5d                	j	1ad10 <__subtf3+0x63a>
   1b35c:	d026                	sw	s1,32(sp)
   1b35e:	d25e                	sw	s7,36(sp)
   1b360:	d45a                	sw	s6,40(sp)
   1b362:	d662                	sw	s8,44(sp)
   1b364:	89e6                	mv	s3,s9
   1b366:	b2b5                	j	1acd2 <__subtf3+0x5fc>
   1b368:	409706b3          	sub	a3,a4,s1
   1b36c:	41760e33          	sub	t3,a2,s7
   1b370:	00d73eb3          	sltu	t4,a4,a3
   1b374:	01c638b3          	sltu	a7,a2,t3
   1b378:	41de0eb3          	sub	t4,t3,t4
   1b37c:	4801                	li	a6,0
   1b37e:	00d77463          	bgeu	a4,a3,1b386 <__subtf3+0xcb0>
   1b382:	001e3813          	seqz	a6,t3
   1b386:	01186833          	or	a6,a6,a7
   1b38a:	416588b3          	sub	a7,a1,s6
   1b38e:	0115bf33          	sltu	t5,a1,a7
   1b392:	41088fb3          	sub	t6,a7,a6
   1b396:	4301                	li	t1,0
   1b398:	00080463          	beqz	a6,1b3a0 <__subtf3+0xcca>
   1b39c:	0018b313          	seqz	t1,a7
   1b3a0:	01e36333          	or	t1,t1,t5
   1b3a4:	41850833          	sub	a6,a0,s8
   1b3a8:	40680833          	sub	a6,a6,t1
   1b3ac:	d642                	sw	a6,44(sp)
   1b3ae:	d47e                	sw	t6,40(sp)
   1b3b0:	d276                	sw	t4,36(sp)
   1b3b2:	d036                	sw	a3,32(sp)
   1b3b4:	00c81313          	slli	t1,a6,0xc
   1b3b8:	10035163          	bgez	t1,1b4ba <__subtf3+0xde4>
   1b3bc:	40e48733          	sub	a4,s1,a4
   1b3c0:	40cb8633          	sub	a2,s7,a2
   1b3c4:	00e4b6b3          	sltu	a3,s1,a4
   1b3c8:	00cbbbb3          	sltu	s7,s7,a2
   1b3cc:	8e15                	sub	a2,a2,a3
   1b3ce:	4681                	li	a3,0
   1b3d0:	00e4f463          	bgeu	s1,a4,1b3d8 <__subtf3+0xd02>
   1b3d4:	001e3693          	seqz	a3,t3
   1b3d8:	40bb05b3          	sub	a1,s6,a1
   1b3dc:	0176ebb3          	or	s7,a3,s7
   1b3e0:	00bb3b33          	sltu	s6,s6,a1
   1b3e4:	417585b3          	sub	a1,a1,s7
   1b3e8:	000b8463          	beqz	s7,1b3f0 <__subtf3+0xd1a>
   1b3ec:	0018b793          	seqz	a5,a7
   1b3f0:	40ac0533          	sub	a0,s8,a0
   1b3f4:	0167eb33          	or	s6,a5,s6
   1b3f8:	41650533          	sub	a0,a0,s6
   1b3fc:	d62a                	sw	a0,44(sp)
   1b3fe:	d42e                	sw	a1,40(sp)
   1b400:	d232                	sw	a2,36(sp)
   1b402:	d03a                	sw	a4,32(sp)
   1b404:	89e6                	mv	s3,s9
   1b406:	5532                	lw	a0,44(sp)
   1b408:	c169                	beqz	a0,1b4ca <__subtf3+0xdf4>
   1b40a:	7dc000ef          	jal	1bbe6 <__clzsi2>
   1b40e:	ff450793          	addi	a5,a0,-12
   1b412:	02000693          	li	a3,32
   1b416:	01f7f813          	andi	a6,a5,31
   1b41a:	02d7c733          	div	a4,a5,a3
   1b41e:	0c080763          	beqz	a6,1b4ec <__subtf3+0xe16>
   1b422:	02010313          	addi	t1,sp,32
   1b426:	02d7e633          	rem	a2,a5,a3
   1b42a:	40c685b3          	sub	a1,a3,a2
   1b42e:	5671                	li	a2,-4
   1b430:	02c70633          	mul	a2,a4,a2
   1b434:	00c60693          	addi	a3,a2,12
   1b438:	969a                	add	a3,a3,t1
   1b43a:	40c00633          	neg	a2,a2
   1b43e:	0cd31763          	bne	t1,a3,1b50c <__subtf3+0xe36>
   1b442:	5602                	lw	a2,32(sp)
   1b444:	fff70693          	addi	a3,a4,-1
   1b448:	070a                	slli	a4,a4,0x2
   1b44a:	04070713          	addi	a4,a4,64
   1b44e:	970a                	add	a4,a4,sp
   1b450:	01061633          	sll	a2,a2,a6
   1b454:	fec72023          	sw	a2,-32(a4)
   1b458:	00168713          	addi	a4,a3,1
   1b45c:	070a                	slli	a4,a4,0x2
   1b45e:	1014                	addi	a3,sp,32
   1b460:	4621                	li	a2,8
   1b462:	88b6                	mv	a7,a3
   1b464:	00c76863          	bltu	a4,a2,1b474 <__subtf3+0xd9e>
   1b468:	0006a023          	sw	zero,0(a3)
   1b46c:	0006a223          	sw	zero,4(a3)
   1b470:	1761                	addi	a4,a4,-8
   1b472:	1034                	addi	a3,sp,40
   1b474:	4611                	li	a2,4
   1b476:	00c76463          	bltu	a4,a2,1b47e <__subtf3+0xda8>
   1b47a:	0006a023          	sw	zero,0(a3)
   1b47e:	1487c863          	blt	a5,s0,1b5ce <__subtf3+0xef8>
   1b482:	8f81                	sub	a5,a5,s0
   1b484:	0785                	addi	a5,a5,1
   1b486:	4057d713          	srai	a4,a5,0x5
   1b48a:	85c6                	mv	a1,a7
   1b48c:	8bfd                	andi	a5,a5,31
   1b48e:	8646                	mv	a2,a7
   1b490:	4301                	li	t1,0
   1b492:	4681                	li	a3,0
   1b494:	08e69b63          	bne	a3,a4,1b52a <__subtf3+0xe54>
   1b498:	468d                	li	a3,3
   1b49a:	8e99                	sub	a3,a3,a4
   1b49c:	00271613          	slli	a2,a4,0x2
   1b4a0:	ebd9                	bnez	a5,1b536 <__subtf3+0xe60>
   1b4a2:	00c58533          	add	a0,a1,a2
   1b4a6:	4108                	lw	a0,0(a0)
   1b4a8:	0785                	addi	a5,a5,1
   1b4aa:	c188                	sw	a0,0(a1)
   1b4ac:	0591                	addi	a1,a1,4
   1b4ae:	fef6dae3          	bge	a3,a5,1b4a2 <__subtf3+0xdcc>
   1b4b2:	4791                	li	a5,4
   1b4b4:	40e78733          	sub	a4,a5,a4
   1b4b8:	a87d                	j	1b576 <__subtf3+0xea0>
   1b4ba:	01d6e6b3          	or	a3,a3,t4
   1b4be:	01f6e6b3          	or	a3,a3,t6
   1b4c2:	0106e6b3          	or	a3,a3,a6
   1b4c6:	f2a1                	bnez	a3,1b406 <__subtf3+0xd30>
   1b4c8:	bb3d                	j	1b206 <__subtf3+0xb30>
   1b4ca:	5522                	lw	a0,40(sp)
   1b4cc:	c509                	beqz	a0,1b4d6 <__subtf3+0xe00>
   1b4ce:	2f21                	jal	1bbe6 <__clzsi2>
   1b4d0:	02050513          	addi	a0,a0,32
   1b4d4:	bf2d                	j	1b40e <__subtf3+0xd38>
   1b4d6:	5512                	lw	a0,36(sp)
   1b4d8:	c509                	beqz	a0,1b4e2 <__subtf3+0xe0c>
   1b4da:	2731                	jal	1bbe6 <__clzsi2>
   1b4dc:	04050513          	addi	a0,a0,64
   1b4e0:	b73d                	j	1b40e <__subtf3+0xd38>
   1b4e2:	5502                	lw	a0,32(sp)
   1b4e4:	2709                	jal	1bbe6 <__clzsi2>
   1b4e6:	06050513          	addi	a0,a0,96
   1b4ea:	b715                	j	1b40e <__subtf3+0xd38>
   1b4ec:	55f1                	li	a1,-4
   1b4ee:	02b705b3          	mul	a1,a4,a1
   1b4f2:	1074                	addi	a3,sp,44
   1b4f4:	460d                	li	a2,3
   1b4f6:	00b68533          	add	a0,a3,a1
   1b4fa:	4108                	lw	a0,0(a0)
   1b4fc:	167d                	addi	a2,a2,-1
   1b4fe:	16f1                	addi	a3,a3,-4
   1b500:	c2c8                	sw	a0,4(a3)
   1b502:	fee65ae3          	bge	a2,a4,1b4f6 <__subtf3+0xe20>
   1b506:	fff70693          	addi	a3,a4,-1
   1b50a:	b7b9                	j	1b458 <__subtf3+0xd82>
   1b50c:	4288                	lw	a0,0(a3)
   1b50e:	ffc6a883          	lw	a7,-4(a3)
   1b512:	00c68e33          	add	t3,a3,a2
   1b516:	01051533          	sll	a0,a0,a6
   1b51a:	00b8d8b3          	srl	a7,a7,a1
   1b51e:	01156533          	or	a0,a0,a7
   1b522:	00ae2023          	sw	a0,0(t3)
   1b526:	16f1                	addi	a3,a3,-4
   1b528:	bf19                	j	1b43e <__subtf3+0xd68>
   1b52a:	4208                	lw	a0,0(a2)
   1b52c:	0685                	addi	a3,a3,1
   1b52e:	0611                	addi	a2,a2,4
   1b530:	00a36333          	or	t1,t1,a0
   1b534:	b785                	j	1b494 <__subtf3+0xdbe>
   1b536:	04060593          	addi	a1,a2,64
   1b53a:	958a                	add	a1,a1,sp
   1b53c:	fe05a583          	lw	a1,-32(a1)
   1b540:	02000813          	li	a6,32
   1b544:	40f80833          	sub	a6,a6,a5
   1b548:	010595b3          	sll	a1,a1,a6
   1b54c:	00b36333          	or	t1,t1,a1
   1b550:	4e01                	li	t3,0
   1b552:	00c885b3          	add	a1,a7,a2
   1b556:	40c00633          	neg	a2,a2
   1b55a:	04de4a63          	blt	t3,a3,1b5ae <__subtf3+0xed8>
   1b55e:	4611                	li	a2,4
   1b560:	40e60733          	sub	a4,a2,a4
   1b564:	5632                	lw	a2,44(sp)
   1b566:	068a                	slli	a3,a3,0x2
   1b568:	04068693          	addi	a3,a3,64
   1b56c:	968a                	add	a3,a3,sp
   1b56e:	00f657b3          	srl	a5,a2,a5
   1b572:	fef6a023          	sw	a5,-32(a3)
   1b576:	4691                	li	a3,4
   1b578:	8e99                	sub	a3,a3,a4
   1b57a:	070a                	slli	a4,a4,0x2
   1b57c:	00e887b3          	add	a5,a7,a4
   1b580:	00269713          	slli	a4,a3,0x2
   1b584:	46a1                	li	a3,8
   1b586:	00d76863          	bltu	a4,a3,1b596 <__subtf3+0xec0>
   1b58a:	0007a023          	sw	zero,0(a5)
   1b58e:	0007a223          	sw	zero,4(a5)
   1b592:	1761                	addi	a4,a4,-8
   1b594:	07a1                	addi	a5,a5,8
   1b596:	4691                	li	a3,4
   1b598:	00d76463          	bltu	a4,a3,1b5a0 <__subtf3+0xeca>
   1b59c:	0007a023          	sw	zero,0(a5)
   1b5a0:	5702                	lw	a4,32(sp)
   1b5a2:	006037b3          	snez	a5,t1
   1b5a6:	8fd9                	or	a5,a5,a4
   1b5a8:	d03e                	sw	a5,32(sp)
   1b5aa:	e6eff06f          	j	1ac18 <__subtf3+0x542>
   1b5ae:	4188                	lw	a0,0(a1)
   1b5b0:	0045ae83          	lw	t4,4(a1)
   1b5b4:	00c58f33          	add	t5,a1,a2
   1b5b8:	00f55533          	srl	a0,a0,a5
   1b5bc:	010e9eb3          	sll	t4,t4,a6
   1b5c0:	01d56533          	or	a0,a0,t4
   1b5c4:	00af2023          	sw	a0,0(t5)
   1b5c8:	0e05                	addi	t3,t3,1
   1b5ca:	0591                	addi	a1,a1,4
   1b5cc:	b779                	j	1b55a <__subtf3+0xe84>
   1b5ce:	5732                	lw	a4,44(sp)
   1b5d0:	fff806b7          	lui	a3,0xfff80
   1b5d4:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff6206b>
   1b5d6:	8f75                	and	a4,a4,a3
   1b5d8:	40f407b3          	sub	a5,s0,a5
   1b5dc:	d63a                	sw	a4,44(sp)
   1b5de:	f8aff06f          	j	1ad68 <__subtf3+0x692>
   1b5e2:	da2e                	sw	a1,52(sp)
   1b5e4:	d83e                	sw	a5,48(sp)
   1b5e6:	dc32                	sw	a2,56(sp)
   1b5e8:	de36                	sw	a3,60(sp)
   1b5ea:	1818                	addi	a4,sp,48
   1b5ec:	104c                	addi	a1,sp,36
   1b5ee:	4754                	lw	a3,12(a4)
   1b5f0:	4710                	lw	a2,8(a4)
   1b5f2:	1771                	addi	a4,a4,-4
   1b5f4:	0686                	slli	a3,a3,0x1
   1b5f6:	827d                	srli	a2,a2,0x1f
   1b5f8:	8ed1                	or	a3,a3,a2
   1b5fa:	cb14                	sw	a3,16(a4)
   1b5fc:	fee599e3          	bne	a1,a4,1b5ee <__subtf3+0xf18>
   1b600:	0786                	slli	a5,a5,0x1
   1b602:	0077f713          	andi	a4,a5,7
   1b606:	4401                	li	s0,0
   1b608:	cf0d                	beqz	a4,1b642 <__subtf3+0xf6c>
   1b60a:	4709                	li	a4,2
   1b60c:	56f2                	lw	a3,60(sp)
   1b60e:	14ea0463          	beq	s4,a4,1b756 <__subtf3+0x1080>
   1b612:	470d                	li	a4,3
   1b614:	12ea0b63          	beq	s4,a4,1b74a <__subtf3+0x1074>
   1b618:	020a1463          	bnez	s4,1b640 <__subtf3+0xf6a>
   1b61c:	00f7f713          	andi	a4,a5,15
   1b620:	4611                	li	a2,4
   1b622:	00c70f63          	beq	a4,a2,1b640 <__subtf3+0xf6a>
   1b626:	0791                	addi	a5,a5,4
   1b628:	0047b793          	sltiu	a5,a5,4
   1b62c:	5752                	lw	a4,52(sp)
   1b62e:	973e                	add	a4,a4,a5
   1b630:	00f73733          	sltu	a4,a4,a5
   1b634:	57e2                	lw	a5,56(sp)
   1b636:	97ba                	add	a5,a5,a4
   1b638:	00e7b7b3          	sltu	a5,a5,a4
   1b63c:	97b6                	add	a5,a5,a3
   1b63e:	de3e                	sw	a5,60(sp)
   1b640:	4405                	li	s0,1
   1b642:	56f2                	lw	a3,60(sp)
   1b644:	4781                	li	a5,0
   1b646:	82d1                	srli	a3,a3,0x14
   1b648:	0016c693          	xori	a3,a3,1
   1b64c:	8a85                	andi	a3,a3,1
   1b64e:	5702                	lw	a4,32(sp)
   1b650:	00777613          	andi	a2,a4,7
   1b654:	c229                	beqz	a2,1b696 <__subtf3+0xfc0>
   1b656:	4589                	li	a1,2
   1b658:	5632                	lw	a2,44(sp)
   1b65a:	10ba0863          	beq	s4,a1,1b76a <__subtf3+0x1094>
   1b65e:	458d                	li	a1,3
   1b660:	0eba0e63          	beq	s4,a1,1b75c <__subtf3+0x1086>
   1b664:	020a1763          	bnez	s4,1b692 <__subtf3+0xfbc>
   1b668:	00f77593          	andi	a1,a4,15
   1b66c:	4511                	li	a0,4
   1b66e:	02a58263          	beq	a1,a0,1b692 <__subtf3+0xfbc>
   1b672:	0711                	addi	a4,a4,4
   1b674:	d03a                	sw	a4,32(sp)
   1b676:	00473713          	sltiu	a4,a4,4
   1b67a:	5592                	lw	a1,36(sp)
   1b67c:	972e                	add	a4,a4,a1
   1b67e:	d23a                	sw	a4,36(sp)
   1b680:	00b73733          	sltu	a4,a4,a1
   1b684:	55a2                	lw	a1,40(sp)
   1b686:	972e                	add	a4,a4,a1
   1b688:	d43a                	sw	a4,40(sp)
   1b68a:	00b73733          	sltu	a4,a4,a1
   1b68e:	9732                	add	a4,a4,a2
   1b690:	d63a                	sw	a4,44(sp)
   1b692:	00146413          	ori	s0,s0,1
   1b696:	c689                	beqz	a3,1b6a0 <__subtf3+0xfca>
   1b698:	00147713          	andi	a4,s0,1
   1b69c:	0706                	slli	a4,a4,0x1
   1b69e:	8c59                	or	s0,s0,a4
   1b6a0:	5732                	lw	a4,44(sp)
   1b6a2:	00c71693          	slli	a3,a4,0xc
   1b6a6:	0006dc63          	bgez	a3,1b6be <__subtf3+0xfe8>
   1b6aa:	66a1                	lui	a3,0x8
   1b6ac:	0785                	addi	a5,a5,1
   1b6ae:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1b6b0:	0cd78063          	beq	a5,a3,1b770 <__subtf3+0x109a>
   1b6b4:	fff806b7          	lui	a3,0xfff80
   1b6b8:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff6206b>
   1b6ba:	8f75                	and	a4,a4,a3
   1b6bc:	d63a                	sw	a4,44(sp)
   1b6be:	1018                	addi	a4,sp,32
   1b6c0:	106c                	addi	a1,sp,44
   1b6c2:	4314                	lw	a3,0(a4)
   1b6c4:	4350                	lw	a2,4(a4)
   1b6c6:	828d                	srli	a3,a3,0x3
   1b6c8:	0676                	slli	a2,a2,0x1d
   1b6ca:	8ed1                	or	a3,a3,a2
   1b6cc:	c314                	sw	a3,0(a4)
   1b6ce:	0711                	addi	a4,a4,4
   1b6d0:	feb719e3          	bne	a4,a1,1b6c2 <__subtf3+0xfec>
   1b6d4:	56b2                	lw	a3,44(sp)
   1b6d6:	6621                	lui	a2,0x8
   1b6d8:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   1b6dc:	828d                	srli	a3,a3,0x3
   1b6de:	d636                	sw	a3,44(sp)
   1b6e0:	00e79e63          	bne	a5,a4,1b6fc <__subtf3+0x1026>
   1b6e4:	5592                	lw	a1,36(sp)
   1b6e6:	5702                	lw	a4,32(sp)
   1b6e8:	8f4d                	or	a4,a4,a1
   1b6ea:	55a2                	lw	a1,40(sp)
   1b6ec:	8f4d                	or	a4,a4,a1
   1b6ee:	8f55                	or	a4,a4,a3
   1b6f0:	c711                	beqz	a4,1b6fc <__subtf3+0x1026>
   1b6f2:	d632                	sw	a2,44(sp)
   1b6f4:	d402                	sw	zero,40(sp)
   1b6f6:	d202                	sw	zero,36(sp)
   1b6f8:	d002                	sw	zero,32(sp)
   1b6fa:	4981                	li	s3,0
   1b6fc:	55b2                	lw	a1,44(sp)
   1b6fe:	07c6                	slli	a5,a5,0x11
   1b700:	83c5                	srli	a5,a5,0x11
   1b702:	09be                	slli	s3,s3,0xf
   1b704:	00f9e9b3          	or	s3,s3,a5
   1b708:	02b11e23          	sh	a1,60(sp)
   1b70c:	03311f23          	sh	s3,62(sp)
   1b710:	5602                	lw	a2,32(sp)
   1b712:	5692                	lw	a3,36(sp)
   1b714:	5722                	lw	a4,40(sp)
   1b716:	57f2                	lw	a5,60(sp)
   1b718:	c019                	beqz	s0,1b71e <__subtf3+0x1048>
   1b71a:	00142073          	csrs	fflags,s0
   1b71e:	50b6                	lw	ra,108(sp)
   1b720:	5426                	lw	s0,104(sp)
   1b722:	00c92023          	sw	a2,0(s2)
   1b726:	00d92223          	sw	a3,4(s2)
   1b72a:	00e92423          	sw	a4,8(s2)
   1b72e:	00f92623          	sw	a5,12(s2)
   1b732:	5496                	lw	s1,100(sp)
   1b734:	49f6                	lw	s3,92(sp)
   1b736:	4a66                	lw	s4,88(sp)
   1b738:	4ad6                	lw	s5,84(sp)
   1b73a:	4b46                	lw	s6,80(sp)
   1b73c:	4bb6                	lw	s7,76(sp)
   1b73e:	4c26                	lw	s8,72(sp)
   1b740:	4c96                	lw	s9,68(sp)
   1b742:	854a                	mv	a0,s2
   1b744:	5906                	lw	s2,96(sp)
   1b746:	6165                	addi	sp,sp,112
   1b748:	8082                	ret
   1b74a:	ee099be3          	bnez	s3,1b640 <__subtf3+0xf6a>
   1b74e:	07a1                	addi	a5,a5,8
   1b750:	0087b793          	sltiu	a5,a5,8
   1b754:	bde1                	j	1b62c <__subtf3+0xf56>
   1b756:	ee0985e3          	beqz	s3,1b640 <__subtf3+0xf6a>
   1b75a:	bfd5                	j	1b74e <__subtf3+0x1078>
   1b75c:	f2099be3          	bnez	s3,1b692 <__subtf3+0xfbc>
   1b760:	0721                	addi	a4,a4,8
   1b762:	d03a                	sw	a4,32(sp)
   1b764:	00873713          	sltiu	a4,a4,8
   1b768:	bf09                	j	1b67a <__subtf3+0xfa4>
   1b76a:	f20984e3          	beqz	s3,1b692 <__subtf3+0xfbc>
   1b76e:	bfcd                	j	1b760 <__subtf3+0x108a>
   1b770:	4701                	li	a4,0
   1b772:	020a0063          	beqz	s4,1b792 <__subtf3+0x10bc>
   1b776:	468d                	li	a3,3
   1b778:	00da1863          	bne	s4,a3,1b788 <__subtf3+0x10b2>
   1b77c:	00098b63          	beqz	s3,1b792 <__subtf3+0x10bc>
   1b780:	67a1                	lui	a5,0x8
   1b782:	577d                	li	a4,-1
   1b784:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1b786:	a031                	j	1b792 <__subtf3+0x10bc>
   1b788:	4689                	li	a3,2
   1b78a:	feda1be3          	bne	s4,a3,1b780 <__subtf3+0x10aa>
   1b78e:	fe0989e3          	beqz	s3,1b780 <__subtf3+0x10aa>
   1b792:	d63a                	sw	a4,44(sp)
   1b794:	d43a                	sw	a4,40(sp)
   1b796:	d23a                	sw	a4,36(sp)
   1b798:	d03a                	sw	a4,32(sp)
   1b79a:	00546413          	ori	s0,s0,5
   1b79e:	b705                	j	1b6be <__subtf3+0xfe8>
   1b7a0:	d636                	sw	a3,44(sp)
   1b7a2:	c76ff06f          	j	1ac18 <__subtf3+0x542>
   1b7a6:	d68a8763          	beq	s5,s0,1ad14 <__subtf3+0x63e>
   1b7aa:	4401                	li	s0,0
   1b7ac:	d16ff06f          	j	1acc2 <__subtf3+0x5ec>
   1b7b0:	b68a8de3          	beq	s5,s0,1b32a <__subtf3+0xc54>
   1b7b4:	4401                	li	s0,0
   1b7b6:	b699                	j	1b2fc <__subtf3+0xc26>

0001b7b8 <__unordtf2>:
   1b7b8:	4114                	lw	a3,0(a0)
   1b7ba:	00452f03          	lw	t5,4(a0)
   1b7be:	00852e83          	lw	t4,8(a0)
   1b7c2:	4550                	lw	a2,12(a0)
   1b7c4:	419c                	lw	a5,0(a1)
   1b7c6:	0045ae03          	lw	t3,4(a1)
   1b7ca:	0085a303          	lw	t1,8(a1)
   1b7ce:	45d8                	lw	a4,12(a1)
   1b7d0:	1141                	addi	sp,sp,-16
   1b7d2:	002025f3          	frrm	a1
   1b7d6:	6521                	lui	a0,0x8
   1b7d8:	01061813          	slli	a6,a2,0x10
   1b7dc:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1b7de:	8241                	srli	a2,a2,0x10
   1b7e0:	01071593          	slli	a1,a4,0x10
   1b7e4:	8e69                	and	a2,a2,a0
   1b7e6:	8341                	srli	a4,a4,0x10
   1b7e8:	01085813          	srli	a6,a6,0x10
   1b7ec:	81c1                	srli	a1,a1,0x10
   1b7ee:	8f69                	and	a4,a4,a0
   1b7f0:	00a61963          	bne	a2,a0,1b802 <__unordtf2+0x4a>
   1b7f4:	01e6e533          	or	a0,a3,t5
   1b7f8:	01d56533          	or	a0,a0,t4
   1b7fc:	01056533          	or	a0,a0,a6
   1b800:	e51d                	bnez	a0,1b82e <__unordtf2+0x76>
   1b802:	68a1                	lui	a7,0x8
   1b804:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   1b806:	4501                	li	a0,0
   1b808:	05171c63          	bne	a4,a7,1b860 <__unordtf2+0xa8>
   1b80c:	01c7e8b3          	or	a7,a5,t3
   1b810:	0068e8b3          	or	a7,a7,t1
   1b814:	00b8e8b3          	or	a7,a7,a1
   1b818:	04088463          	beqz	a7,1b860 <__unordtf2+0xa8>
   1b81c:	02e61a63          	bne	a2,a4,1b850 <__unordtf2+0x98>
   1b820:	01e6e6b3          	or	a3,a3,t5
   1b824:	01d6e6b3          	or	a3,a3,t4
   1b828:	0106e6b3          	or	a3,a3,a6
   1b82c:	ca99                	beqz	a3,1b842 <__unordtf2+0x8a>
   1b82e:	0842                	slli	a6,a6,0x10
   1b830:	41085813          	srai	a6,a6,0x10
   1b834:	02085363          	bgez	a6,1b85a <__unordtf2+0xa2>
   1b838:	66a1                	lui	a3,0x8
   1b83a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1b83c:	4505                	li	a0,1
   1b83e:	02d71163          	bne	a4,a3,1b860 <__unordtf2+0xa8>
   1b842:	01c7e7b3          	or	a5,a5,t3
   1b846:	0067e7b3          	or	a5,a5,t1
   1b84a:	8fcd                	or	a5,a5,a1
   1b84c:	4505                	li	a0,1
   1b84e:	cb89                	beqz	a5,1b860 <__unordtf2+0xa8>
   1b850:	05c2                	slli	a1,a1,0x10
   1b852:	85c1                	srai	a1,a1,0x10
   1b854:	4505                	li	a0,1
   1b856:	0005c563          	bltz	a1,1b860 <__unordtf2+0xa8>
   1b85a:	00186073          	csrsi	fflags,16
   1b85e:	4505                	li	a0,1
   1b860:	0141                	addi	sp,sp,16
   1b862:	8082                	ret

0001b864 <__fixtfsi>:
   1b864:	411c                	lw	a5,0(a0)
   1b866:	00452803          	lw	a6,4(a0)
   1b86a:	4518                	lw	a4,8(a0)
   1b86c:	4550                	lw	a2,12(a0)
   1b86e:	1101                	addi	sp,sp,-32
   1b870:	002026f3          	frrm	a3
   1b874:	01061693          	slli	a3,a2,0x10
   1b878:	00161593          	slli	a1,a2,0x1
   1b87c:	c632                	sw	a2,12(sp)
   1b87e:	01f65893          	srli	a7,a2,0x1f
   1b882:	6611                	lui	a2,0x4
   1b884:	c03e                	sw	a5,0(sp)
   1b886:	c242                	sw	a6,4(sp)
   1b888:	c43a                	sw	a4,8(sp)
   1b88a:	c83e                	sw	a5,16(sp)
   1b88c:	ca42                	sw	a6,20(sp)
   1b88e:	cc3a                	sw	a4,24(sp)
   1b890:	81c5                	srli	a1,a1,0x11
   1b892:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   1b894:	82c1                	srli	a3,a3,0x10
   1b896:	00b64a63          	blt	a2,a1,1b8aa <__fixtfsi+0x46>
   1b89a:	e9f9                	bnez	a1,1b970 <__fixtfsi+0x10c>
   1b89c:	0107e533          	or	a0,a5,a6
   1b8a0:	8d59                	or	a0,a0,a4
   1b8a2:	8d55                	or	a0,a0,a3
   1b8a4:	e571                	bnez	a0,1b970 <__fixtfsi+0x10c>
   1b8a6:	6105                	addi	sp,sp,32
   1b8a8:	8082                	ret
   1b8aa:	6511                	lui	a0,0x4
   1b8ac:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   1b8ae:	8646                	mv	a2,a7
   1b8b0:	02b55763          	bge	a0,a1,1b8de <__fixtfsi+0x7a>
   1b8b4:	0c088163          	beqz	a7,1b976 <__fixtfsi+0x112>
   1b8b8:	6511                	lui	a0,0x4
   1b8ba:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   1b8bc:	0ca59263          	bne	a1,a0,1b980 <__fixtfsi+0x11c>
   1b8c0:	01175593          	srli	a1,a4,0x11
   1b8c4:	06be                	slli	a3,a3,0xf
   1b8c6:	8ecd                	or	a3,a3,a1
   1b8c8:	eec5                	bnez	a3,1b980 <__fixtfsi+0x11c>
   1b8ca:	0107e7b3          	or	a5,a5,a6
   1b8ce:	073e                	slli	a4,a4,0xf
   1b8d0:	8f5d                	or	a4,a4,a5
   1b8d2:	80000537          	lui	a0,0x80000
   1b8d6:	db61                	beqz	a4,1b8a6 <__fixtfsi+0x42>
   1b8d8:	00162073          	csrs	fflags,a2
   1b8dc:	b7e9                	j	1b8a6 <__fixtfsi+0x42>
   1b8de:	67c1                	lui	a5,0x10
   1b8e0:	8fd5                	or	a5,a5,a3
   1b8e2:	6691                	lui	a3,0x4
   1b8e4:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   1b8e8:	8e8d                	sub	a3,a3,a1
   1b8ea:	4056d513          	srai	a0,a3,0x5
   1b8ee:	ce3e                	sw	a5,28(sp)
   1b8f0:	8afd                	andi	a3,a3,31
   1b8f2:	080c                	addi	a1,sp,16
   1b8f4:	4801                	li	a6,0
   1b8f6:	4601                	li	a2,0
   1b8f8:	0005a303          	lw	t1,0(a1)
   1b8fc:	0605                	addi	a2,a2,1
   1b8fe:	0591                	addi	a1,a1,4
   1b900:	00686833          	or	a6,a6,t1
   1b904:	fec51ae3          	bne	a0,a2,1b8f8 <__fixtfsi+0x94>
   1b908:	00251613          	slli	a2,a0,0x2
   1b90c:	e28d                	bnez	a3,1b92e <__fixtfsi+0xca>
   1b90e:	02060793          	addi	a5,a2,32
   1b912:	00278633          	add	a2,a5,sp
   1b916:	ff062783          	lw	a5,-16(a2)
   1b91a:	c83e                	sw	a5,16(sp)
   1b91c:	4542                	lw	a0,16(sp)
   1b91e:	00088463          	beqz	a7,1b926 <__fixtfsi+0xc2>
   1b922:	40a00533          	neg	a0,a0
   1b926:	4605                	li	a2,1
   1b928:	fa0818e3          	bnez	a6,1b8d8 <__fixtfsi+0x74>
   1b92c:	bfad                	j	1b8a6 <__fixtfsi+0x42>
   1b92e:	02060613          	addi	a2,a2,32
   1b932:	960a                	add	a2,a2,sp
   1b934:	ff062603          	lw	a2,-16(a2)
   1b938:	02000593          	li	a1,32
   1b93c:	8d95                	sub	a1,a1,a3
   1b93e:	00b61633          	sll	a2,a2,a1
   1b942:	4309                	li	t1,2
   1b944:	00c86833          	or	a6,a6,a2
   1b948:	4601                	li	a2,0
   1b94a:	00651963          	bne	a0,t1,1b95c <__fixtfsi+0xf8>
   1b94e:	00d75733          	srl	a4,a4,a3
   1b952:	00b795b3          	sll	a1,a5,a1
   1b956:	8f4d                	or	a4,a4,a1
   1b958:	c83a                	sw	a4,16(sp)
   1b95a:	4605                	li	a2,1
   1b95c:	060a                	slli	a2,a2,0x2
   1b95e:	02060713          	addi	a4,a2,32
   1b962:	00270633          	add	a2,a4,sp
   1b966:	00d7d7b3          	srl	a5,a5,a3
   1b96a:	fef62823          	sw	a5,-16(a2)
   1b96e:	b77d                	j	1b91c <__fixtfsi+0xb8>
   1b970:	4605                	li	a2,1
   1b972:	4501                	li	a0,0
   1b974:	b795                	j	1b8d8 <__fixtfsi+0x74>
   1b976:	80000537          	lui	a0,0x80000
   1b97a:	4641                	li	a2,16
   1b97c:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe206b>
   1b97e:	bfa9                	j	1b8d8 <__fixtfsi+0x74>
   1b980:	4641                	li	a2,16
   1b982:	80000537          	lui	a0,0x80000
   1b986:	bf89                	j	1b8d8 <__fixtfsi+0x74>

0001b988 <__floatsitf>:
   1b988:	7179                	addi	sp,sp,-48
   1b98a:	d226                	sw	s1,36(sp)
   1b98c:	d606                	sw	ra,44(sp)
   1b98e:	d422                	sw	s0,40(sp)
   1b990:	d04a                	sw	s2,32(sp)
   1b992:	84aa                	mv	s1,a0
   1b994:	cdcd                	beqz	a1,1ba4e <__floatsitf+0xc6>
   1b996:	41f5d793          	srai	a5,a1,0x1f
   1b99a:	00b7c433          	xor	s0,a5,a1
   1b99e:	8c1d                	sub	s0,s0,a5
   1b9a0:	8522                	mv	a0,s0
   1b9a2:	01f5d913          	srli	s2,a1,0x1f
   1b9a6:	2481                	jal	1bbe6 <__clzsi2>
   1b9a8:	6711                	lui	a4,0x4
   1b9aa:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1b9ac:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe20bd>
   1b9b0:	40a70633          	sub	a2,a4,a0
   1b9b4:	c822                	sw	s0,16(sp)
   1b9b6:	4057d713          	srai	a4,a5,0x5
   1b9ba:	ca02                	sw	zero,20(sp)
   1b9bc:	cc02                	sw	zero,24(sp)
   1b9be:	ce02                	sw	zero,28(sp)
   1b9c0:	8bfd                	andi	a5,a5,31
   1b9c2:	c78d                	beqz	a5,1b9ec <__floatsitf+0x64>
   1b9c4:	4689                	li	a3,2
   1b9c6:	08d71263          	bne	a4,a3,1ba4a <__floatsitf+0xc2>
   1b9ca:	02000693          	li	a3,32
   1b9ce:	8e9d                	sub	a3,a3,a5
   1b9d0:	00d456b3          	srl	a3,s0,a3
   1b9d4:	ce36                	sw	a3,28(sp)
   1b9d6:	fff70693          	addi	a3,a4,-1
   1b9da:	070a                	slli	a4,a4,0x2
   1b9dc:	02070713          	addi	a4,a4,32
   1b9e0:	970a                	add	a4,a4,sp
   1b9e2:	00f41433          	sll	s0,s0,a5
   1b9e6:	fe872823          	sw	s0,-16(a4)
   1b9ea:	a005                	j	1ba0a <__floatsitf+0x82>
   1b9ec:	478d                	li	a5,3
   1b9ee:	8f99                	sub	a5,a5,a4
   1b9f0:	078a                	slli	a5,a5,0x2
   1b9f2:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1b9f6:	978a                	add	a5,a5,sp
   1b9f8:	ff07a783          	lw	a5,-16(a5)
   1b9fc:	4689                	li	a3,2
   1b9fe:	ce3e                	sw	a5,28(sp)
   1ba00:	4789                	li	a5,2
   1ba02:	00f71463          	bne	a4,a5,1ba0a <__floatsitf+0x82>
   1ba06:	cc22                	sw	s0,24(sp)
   1ba08:	4685                	li	a3,1
   1ba0a:	068a                	slli	a3,a3,0x2
   1ba0c:	c802                	sw	zero,16(sp)
   1ba0e:	ca02                	sw	zero,20(sp)
   1ba10:	16f1                	addi	a3,a3,-4
   1ba12:	4791                	li	a5,4
   1ba14:	00f6e363          	bltu	a3,a5,1ba1a <__floatsitf+0x92>
   1ba18:	cc02                	sw	zero,24(sp)
   1ba1a:	85ca                	mv	a1,s2
   1ba1c:	47f2                	lw	a5,28(sp)
   1ba1e:	00f59413          	slli	s0,a1,0xf
   1ba22:	8c51                	or	s0,s0,a2
   1ba24:	00811723          	sh	s0,14(sp)
   1ba28:	00f11623          	sh	a5,12(sp)
   1ba2c:	4542                	lw	a0,16(sp)
   1ba2e:	46d2                	lw	a3,20(sp)
   1ba30:	4762                	lw	a4,24(sp)
   1ba32:	47b2                	lw	a5,12(sp)
   1ba34:	50b2                	lw	ra,44(sp)
   1ba36:	5422                	lw	s0,40(sp)
   1ba38:	c088                	sw	a0,0(s1)
   1ba3a:	c0d4                	sw	a3,4(s1)
   1ba3c:	c498                	sw	a4,8(s1)
   1ba3e:	c4dc                	sw	a5,12(s1)
   1ba40:	5902                	lw	s2,32(sp)
   1ba42:	8526                	mv	a0,s1
   1ba44:	5492                	lw	s1,36(sp)
   1ba46:	6145                	addi	sp,sp,48
   1ba48:	8082                	ret
   1ba4a:	470d                	li	a4,3
   1ba4c:	b769                	j	1b9d6 <__floatsitf+0x4e>
   1ba4e:	ce02                	sw	zero,28(sp)
   1ba50:	cc02                	sw	zero,24(sp)
   1ba52:	ca02                	sw	zero,20(sp)
   1ba54:	c802                	sw	zero,16(sp)
   1ba56:	4601                	li	a2,0
   1ba58:	b7d1                	j	1ba1c <__floatsitf+0x94>

0001ba5a <__extenddftf2>:
   1ba5a:	7139                	addi	sp,sp,-64
   1ba5c:	d84a                	sw	s2,48(sp)
   1ba5e:	d64e                	sw	s3,44(sp)
   1ba60:	de06                	sw	ra,60(sp)
   1ba62:	dc22                	sw	s0,56(sp)
   1ba64:	da26                	sw	s1,52(sp)
   1ba66:	89aa                	mv	s3,a0
   1ba68:	892e                	mv	s2,a1
   1ba6a:	002027f3          	frrm	a5
   1ba6e:	01465413          	srli	s0,a2,0x14
   1ba72:	00c61793          	slli	a5,a2,0xc
   1ba76:	7ff47413          	andi	s0,s0,2047
   1ba7a:	83b1                	srli	a5,a5,0xc
   1ba7c:	00140713          	addi	a4,s0,1
   1ba80:	c82e                	sw	a1,16(sp)
   1ba82:	ca3e                	sw	a5,20(sp)
   1ba84:	ce02                	sw	zero,28(sp)
   1ba86:	cc02                	sw	zero,24(sp)
   1ba88:	7fe77713          	andi	a4,a4,2046
   1ba8c:	01f65493          	srli	s1,a2,0x1f
   1ba90:	c325                	beqz	a4,1baf0 <__extenddftf2+0x96>
   1ba92:	0047d693          	srli	a3,a5,0x4
   1ba96:	6711                	lui	a4,0x4
   1ba98:	ce36                	sw	a3,28(sp)
   1ba9a:	07f2                	slli	a5,a5,0x1c
   1ba9c:	0045d693          	srli	a3,a1,0x4
   1baa0:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1baa4:	8fd5                	or	a5,a5,a3
   1baa6:	01c59913          	slli	s2,a1,0x1c
   1baaa:	9722                	add	a4,a4,s0
   1baac:	cc3e                	sw	a5,24(sp)
   1baae:	ca4a                	sw	s2,20(sp)
   1bab0:	c802                	sw	zero,16(sp)
   1bab2:	4401                	li	s0,0
   1bab4:	47f2                	lw	a5,28(sp)
   1bab6:	04be                	slli	s1,s1,0xf
   1bab8:	8cd9                	or	s1,s1,a4
   1baba:	00f11623          	sh	a5,12(sp)
   1babe:	00911723          	sh	s1,14(sp)
   1bac2:	45c2                	lw	a1,16(sp)
   1bac4:	4652                	lw	a2,20(sp)
   1bac6:	46e2                	lw	a3,24(sp)
   1bac8:	47b2                	lw	a5,12(sp)
   1baca:	c019                	beqz	s0,1bad0 <__extenddftf2+0x76>
   1bacc:	00186073          	csrsi	fflags,16
   1bad0:	50f2                	lw	ra,60(sp)
   1bad2:	5462                	lw	s0,56(sp)
   1bad4:	00b9a023          	sw	a1,0(s3)
   1bad8:	00c9a223          	sw	a2,4(s3)
   1badc:	00d9a423          	sw	a3,8(s3)
   1bae0:	00f9a623          	sw	a5,12(s3)
   1bae4:	54d2                	lw	s1,52(sp)
   1bae6:	5942                	lw	s2,48(sp)
   1bae8:	854e                	mv	a0,s3
   1baea:	59b2                	lw	s3,44(sp)
   1baec:	6121                	addi	sp,sp,64
   1baee:	8082                	ret
   1baf0:	00b7e533          	or	a0,a5,a1
   1baf4:	e061                	bnez	s0,1bbb4 <__extenddftf2+0x15a>
   1baf6:	4701                	li	a4,0
   1baf8:	dd55                	beqz	a0,1bab4 <__extenddftf2+0x5a>
   1bafa:	c7a1                	beqz	a5,1bb42 <__extenddftf2+0xe8>
   1bafc:	853e                	mv	a0,a5
   1bafe:	20e5                	jal	1bbe6 <__clzsi2>
   1bb00:	03150693          	addi	a3,a0,49
   1bb04:	4056d793          	srai	a5,a3,0x5
   1bb08:	8afd                	andi	a3,a3,31
   1bb0a:	c2a1                	beqz	a3,1bb4a <__extenddftf2+0xf0>
   1bb0c:	5671                	li	a2,-4
   1bb0e:	02c78633          	mul	a2,a5,a2
   1bb12:	02000813          	li	a6,32
   1bb16:	01010313          	addi	t1,sp,16
   1bb1a:	40d80833          	sub	a6,a6,a3
   1bb1e:	00c60713          	addi	a4,a2,12
   1bb22:	971a                	add	a4,a4,t1
   1bb24:	40c00633          	neg	a2,a2
   1bb28:	06e31763          	bne	t1,a4,1bb96 <__extenddftf2+0x13c>
   1bb2c:	fff78713          	addi	a4,a5,-1
   1bb30:	078a                	slli	a5,a5,0x2
   1bb32:	02078793          	addi	a5,a5,32
   1bb36:	978a                	add	a5,a5,sp
   1bb38:	00d916b3          	sll	a3,s2,a3
   1bb3c:	fed7a823          	sw	a3,-16(a5)
   1bb40:	a025                	j	1bb68 <__extenddftf2+0x10e>
   1bb42:	2055                	jal	1bbe6 <__clzsi2>
   1bb44:	02050513          	addi	a0,a0,32
   1bb48:	bf65                	j	1bb00 <__extenddftf2+0xa6>
   1bb4a:	5671                	li	a2,-4
   1bb4c:	02c78633          	mul	a2,a5,a2
   1bb50:	0878                	addi	a4,sp,28
   1bb52:	468d                	li	a3,3
   1bb54:	00c705b3          	add	a1,a4,a2
   1bb58:	418c                	lw	a1,0(a1)
   1bb5a:	16fd                	addi	a3,a3,-1
   1bb5c:	1771                	addi	a4,a4,-4
   1bb5e:	c34c                	sw	a1,4(a4)
   1bb60:	fef6dae3          	bge	a3,a5,1bb54 <__extenddftf2+0xfa>
   1bb64:	fff78713          	addi	a4,a5,-1
   1bb68:	00170793          	addi	a5,a4,1
   1bb6c:	078a                	slli	a5,a5,0x2
   1bb6e:	46a1                	li	a3,8
   1bb70:	0818                	addi	a4,sp,16
   1bb72:	00d7e863          	bltu	a5,a3,1bb82 <__extenddftf2+0x128>
   1bb76:	00072023          	sw	zero,0(a4)
   1bb7a:	00072223          	sw	zero,4(a4)
   1bb7e:	17e1                	addi	a5,a5,-8
   1bb80:	0838                	addi	a4,sp,24
   1bb82:	4691                	li	a3,4
   1bb84:	00d7e463          	bltu	a5,a3,1bb8c <__extenddftf2+0x132>
   1bb88:	00072023          	sw	zero,0(a4)
   1bb8c:	6711                	lui	a4,0x4
   1bb8e:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1bb92:	8f09                	sub	a4,a4,a0
   1bb94:	b705                	j	1bab4 <__extenddftf2+0x5a>
   1bb96:	430c                	lw	a1,0(a4)
   1bb98:	ffc72883          	lw	a7,-4(a4)
   1bb9c:	00c70e33          	add	t3,a4,a2
   1bba0:	00d595b3          	sll	a1,a1,a3
   1bba4:	0108d8b3          	srl	a7,a7,a6
   1bba8:	0115e5b3          	or	a1,a1,a7
   1bbac:	00be2023          	sw	a1,0(t3)
   1bbb0:	1771                	addi	a4,a4,-4
   1bbb2:	bf9d                	j	1bb28 <__extenddftf2+0xce>
   1bbb4:	c515                	beqz	a0,1bbe0 <__extenddftf2+0x186>
   1bbb6:	01c79713          	slli	a4,a5,0x1c
   1bbba:	0045d693          	srli	a3,a1,0x4
   1bbbe:	8f55                	or	a4,a4,a3
   1bbc0:	00080437          	lui	s0,0x80
   1bbc4:	0087b433          	sltu	s0,a5,s0
   1bbc8:	cc3a                	sw	a4,24(sp)
   1bbca:	8391                	srli	a5,a5,0x4
   1bbcc:	6721                	lui	a4,0x8
   1bbce:	01c59913          	slli	s2,a1,0x1c
   1bbd2:	8fd9                	or	a5,a5,a4
   1bbd4:	0412                	slli	s0,s0,0x4
   1bbd6:	ca4a                	sw	s2,20(sp)
   1bbd8:	c802                	sw	zero,16(sp)
   1bbda:	ce3e                	sw	a5,28(sp)
   1bbdc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1bbde:	bdd9                	j	1bab4 <__extenddftf2+0x5a>
   1bbe0:	4401                	li	s0,0
   1bbe2:	6721                	lui	a4,0x8
   1bbe4:	bfe5                	j	1bbdc <__extenddftf2+0x182>

0001bbe6 <__clzsi2>:
   1bbe6:	67c1                	lui	a5,0x10
   1bbe8:	02f57563          	bgeu	a0,a5,1bc12 <__clzsi2+0x2c>
   1bbec:	10053793          	sltiu	a5,a0,256
   1bbf0:	0017b793          	seqz	a5,a5
   1bbf4:	078e                	slli	a5,a5,0x3
   1bbf6:	6771                	lui	a4,0x1c
   1bbf8:	02000693          	li	a3,32
   1bbfc:	8e9d                	sub	a3,a3,a5
   1bbfe:	00f55533          	srl	a0,a0,a5
   1bc02:	43870793          	addi	a5,a4,1080 # 1c438 <__clz_tab>
   1bc06:	97aa                	add	a5,a5,a0
   1bc08:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1bc0c:	40a68533          	sub	a0,a3,a0
   1bc10:	8082                	ret
   1bc12:	01000737          	lui	a4,0x1000
   1bc16:	47e1                	li	a5,24
   1bc18:	fce57fe3          	bgeu	a0,a4,1bbf6 <__clzsi2+0x10>
   1bc1c:	47c1                	li	a5,16
   1bc1e:	bfe1                	j	1bbf6 <__clzsi2+0x10>
