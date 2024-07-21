
sim_O1/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	675030ef          	jal	13f12 <__call_exitprocs>
   100a2:	f481a783          	lw	a5,-184(gp) # 1e758 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	5110a0ef          	jal	1adbc <_exit>

000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c791                	beqz	a5,100c0 <register_fini+0x10>
   100b6:	655d                	lui	a0,0x17
   100b8:	ede50513          	addi	a0,a0,-290 # 16ede <__libc_fini_array>
   100bc:	7250306f          	j	13fe0 <atexit>
   100c0:	8082                	ret

000100c2 <_start>:
   100c2:	0000e197          	auipc	gp,0xe
   100c6:	74e18193          	addi	gp,gp,1870 # 1e810 <__global_pointer$>
   100ca:	f4818513          	addi	a0,gp,-184 # 1e758 <__stdio_exit_handler>
   100ce:	27418613          	addi	a2,gp,628 # 1ea84 <__BSS_END__>
   100d2:	8e09                	sub	a2,a2,a0
   100d4:	4581                	li	a1,0
   100d6:	595030ef          	jal	13e6a <memset>
   100da:	00004517          	auipc	a0,0x4
   100de:	f0650513          	addi	a0,a0,-250 # 13fe0 <atexit>
   100e2:	c519                	beqz	a0,100f0 <_start+0x2e>
   100e4:	00007517          	auipc	a0,0x7
   100e8:	dfa50513          	addi	a0,a0,-518 # 16ede <__libc_fini_array>
   100ec:	6f5030ef          	jal	13fe0 <atexit>
   100f0:	511030ef          	jal	13e00 <__libc_init_array>
   100f4:	4502                	lw	a0,0(sp)
   100f6:	004c                	addi	a1,sp,4
   100f8:	4601                	li	a2,0
   100fa:	20b1                	jal	10146 <main>
   100fc:	bf61                	j	10094 <exit>

000100fe <__do_global_dtors_aux>:
   100fe:	1141                	addi	sp,sp,-16
   10100:	c422                	sw	s0,8(sp)
   10102:	f681c783          	lbu	a5,-152(gp) # 1e778 <completed.1>
   10106:	c606                	sw	ra,12(sp)
   10108:	ef91                	bnez	a5,10124 <__do_global_dtors_aux+0x26>
   1010a:	00000793          	li	a5,0
   1010e:	cb81                	beqz	a5,1011e <__do_global_dtors_aux+0x20>
   10110:	6579                	lui	a0,0x1e
   10112:	00050513          	mv	a0,a0
   10116:	00000097          	auipc	ra,0x0
   1011a:	000000e7          	jalr	zero # 0 <exit-0x10094>
   1011e:	4785                	li	a5,1
   10120:	f6f18423          	sb	a5,-152(gp) # 1e778 <completed.1>
   10124:	40b2                	lw	ra,12(sp)
   10126:	4422                	lw	s0,8(sp)
   10128:	0141                	addi	sp,sp,16
   1012a:	8082                	ret

0001012c <frame_dummy>:
   1012c:	00000793          	li	a5,0
   10130:	cb91                	beqz	a5,10144 <frame_dummy+0x18>
   10132:	6579                	lui	a0,0x1e
   10134:	f6c18593          	addi	a1,gp,-148 # 1e77c <object.0>
   10138:	00050513          	mv	a0,a0
   1013c:	00000317          	auipc	t1,0x0
   10140:	00000067          	jr	zero # 0 <exit-0x10094>
   10144:	8082                	ret

00010146 <main>:
   10146:	715d                	addi	sp,sp,-80
   10148:	c686                	sw	ra,76(sp)
   1014a:	de4e                	sw	s3,60(sp)
   1014c:	67f5                	lui	a5,0x1d
   1014e:	48c78793          	addi	a5,a5,1164 # 1d48c <__clzsi2+0x6e>
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
   1016e:	20ad                	jal	101d8 <crypto_hash>
   10170:	e921                	bnez	a0,101c0 <main+0x7a>
   10172:	c4a2                	sw	s0,72(sp)
   10174:	c2a6                	sw	s1,68(sp)
   10176:	c0ca                	sw	s2,64(sp)
   10178:	89aa                	mv	s3,a0
   1017a:	100c                	addi	a1,sp,32
   1017c:	6575                	lui	a0,0x1d
   1017e:	47050513          	addi	a0,a0,1136 # 1d470 <__clzsi2+0x52>
   10182:	201030ef          	jal	13b82 <printf>
   10186:	6575                	lui	a0,0x1d
   10188:	47c50513          	addi	a0,a0,1148 # 1d47c <__clzsi2+0x5e>
   1018c:	1f7030ef          	jal	13b82 <printf>
   10190:	840a                	mv	s0,sp
   10192:	02010913          	addi	s2,sp,32
   10196:	64f5                	lui	s1,0x1d
   10198:	00044583          	lbu	a1,0(s0)
   1019c:	48448513          	addi	a0,s1,1156 # 1d484 <__clzsi2+0x66>
   101a0:	1e3030ef          	jal	13b82 <printf>
   101a4:	0405                	addi	s0,s0,1
   101a6:	ff2419e3          	bne	s0,s2,10198 <main+0x52>
   101aa:	4529                	li	a0,10
   101ac:	209030ef          	jal	13bb4 <putchar>
   101b0:	4426                	lw	s0,72(sp)
   101b2:	4496                	lw	s1,68(sp)
   101b4:	4906                	lw	s2,64(sp)
   101b6:	854e                	mv	a0,s3
   101b8:	40b6                	lw	ra,76(sp)
   101ba:	59f2                	lw	s3,60(sp)
   101bc:	6161                	addi	sp,sp,80
   101be:	8082                	ret
   101c0:	f3c1a783          	lw	a5,-196(gp) # 1e74c <_impure_ptr>
   101c4:	47d4                	lw	a3,12(a5)
   101c6:	4655                	li	a2,21
   101c8:	4585                	li	a1,1
   101ca:	6575                	lui	a0,0x1d
   101cc:	45850513          	addi	a0,a0,1112 # 1d458 <__clzsi2+0x3a>
   101d0:	0f9030ef          	jal	13ac8 <fwrite>
   101d4:	4985                	li	s3,1
   101d6:	b7c5                	j	101b6 <main+0x70>

000101d8 <crypto_hash>:
   101d8:	7139                	addi	sp,sp,-64
   101da:	de22                	sw	s0,60(sp)
   101dc:	dc26                	sw	s1,56(sp)
   101de:	da4a                	sw	s2,52(sp)
   101e0:	d84e                	sw	s3,48(sp)
   101e2:	d652                	sw	s4,44(sp)
   101e4:	d456                	sw	s5,40(sp)
   101e6:	d25a                	sw	s6,36(sp)
   101e8:	d05e                	sw	s7,32(sp)
   101ea:	c86e                	sw	s11,16(sp)
   101ec:	8dae                	mv	s11,a1
   101ee:	8336                	mv	t1,a3
   101f0:	cab1                	beqz	a3,10244 <crypto_hash+0x6c>
   101f2:	ce62                	sw	s8,28(sp)
   101f4:	cc66                	sw	s9,24(sp)
   101f6:	ca6a                	sw	s10,20(sp)
   101f8:	8eb2                	mv	t4,a2
   101fa:	8f6e                	mv	t5,s11
   101fc:	23be92b7          	lui	t0,0x23be9
   10200:	d8728293          	addi	t0,t0,-633 # 23be8d87 <__BSS_END__+0x23bca303>
   10204:	eac1a383          	lw	t2,-340(gp) # 1e6bc <__SDATA_BEGIN__+0x4>
   10208:	7f523a37          	lui	s4,0x7f523
   1020c:	77da0a13          	addi	s4,s4,1917 # 7f52377d <__BSS_END__+0x7f504cf9>
   10210:	eb41aa83          	lw	s5,-332(gp) # 1e6c4 <__SDATA_BEGIN__+0xc>
   10214:	6c764b37          	lui	s6,0x6c764
   10218:	84cb0b13          	addi	s6,s6,-1972 # 6c76384c <__BSS_END__+0x6c744dc8>
   1021c:	ebc1ab83          	lw	s7,-324(gp) # 1e6cc <__SDATA_BEGIN__+0x14>
   10220:	c0ae05b7          	lui	a1,0xc0ae0
   10224:	fa758593          	addi	a1,a1,-89 # c0adffa7 <__BSS_END__+0xc0ac1523>
   10228:	ec41a683          	lw	a3,-316(gp) # 1e6d4 <__SDATA_BEGIN__+0x1c>
   1022c:	fc653937          	lui	s2,0xfc653
   10230:	8a690913          	addi	s2,s2,-1882 # fc6528a6 <__BSS_END__+0xfc633e22>
   10234:	ecc1a983          	lw	s3,-308(gp) # 1e6dc <__SDATA_BEGIN__+0x24>
   10238:	4881                	li	a7,0
   1023a:	4e7d                	li	t3,31
   1023c:	5861                	li	a6,-8
   1023e:	c62a                	sw	a0,12(sp)
   10240:	7370006f          	j	11176 <crypto_hash+0xf9e>
   10244:	e681                	bnez	a3,1024c <crypto_hash+0x74>
   10246:	479d                	li	a5,7
   10248:	fac7e5e3          	bltu	a5,a2,101f2 <crypto_hash+0x1a>
   1024c:	23be92b7          	lui	t0,0x23be9
   10250:	d8728293          	addi	t0,t0,-633 # 23be8d87 <__BSS_END__+0x23bca303>
   10254:	eac1a383          	lw	t2,-340(gp) # 1e6bc <__SDATA_BEGIN__+0x4>
   10258:	7f523a37          	lui	s4,0x7f523
   1025c:	77da0a13          	addi	s4,s4,1917 # 7f52377d <__BSS_END__+0x7f504cf9>
   10260:	eb41aa83          	lw	s5,-332(gp) # 1e6c4 <__SDATA_BEGIN__+0xc>
   10264:	6c764b37          	lui	s6,0x6c764
   10268:	84cb0b13          	addi	s6,s6,-1972 # 6c76384c <__BSS_END__+0x6c744dc8>
   1026c:	ebc1ab83          	lw	s7,-324(gp) # 1e6cc <__SDATA_BEGIN__+0x14>
   10270:	c0ae05b7          	lui	a1,0xc0ae0
   10274:	fa758593          	addi	a1,a1,-89 # c0adffa7 <__BSS_END__+0xc0ac1523>
   10278:	ec41a683          	lw	a3,-316(gp) # 1e6d4 <__SDATA_BEGIN__+0x1c>
   1027c:	fc653937          	lui	s2,0xfc653
   10280:	8a690913          	addi	s2,s2,-1882 # fc6528a6 <__BSS_END__+0xfc633e22>
   10284:	ecc1a983          	lw	s3,-308(gp) # 1e6dc <__SDATA_BEGIN__+0x24>
   10288:	71b0006f          	j	111a2 <crypto_hash+0xfca>
   1028c:	0014d793          	srli	a5,s1,0x1
   10290:	40ee0c33          	sub	s8,t3,a4
   10294:	0187d7b3          	srl	a5,a5,s8
   10298:	00e494b3          	sll	s1,s1,a4
   1029c:	8cc1                	or	s1,s1,s0
   1029e:	00ffe7b3          	or	a5,t6,a5
   102a2:	8426                	mv	s0,s1
   102a4:	8fbe                	mv	t6,a5
   102a6:	0505                	addi	a0,a0,1
   102a8:	1761                	addi	a4,a4,-8
   102aa:	01070c63          	beq	a4,a6,102c2 <crypto_hash+0xea>
   102ae:	00054483          	lbu	s1,0(a0)
   102b2:	fe070793          	addi	a5,a4,-32
   102b6:	fc07cbe3          	bltz	a5,1028c <crypto_hash+0xb4>
   102ba:	00f497b3          	sll	a5,s1,a5
   102be:	84c6                	mv	s1,a7
   102c0:	bff1                	j	1029c <crypto_hash+0xc4>
   102c2:	0165cb33          	xor	s6,a1,s6
   102c6:	0176cbb3          	xor	s7,a3,s7
   102ca:	0122c933          	xor	s2,t0,s2
   102ce:	0133c9b3          	xor	s3,t2,s3
   102d2:	00994933          	xor	s2,s2,s1
   102d6:	00f9c9b3          	xor	s3,s3,a5
   102da:	0142c2b3          	xor	t0,t0,s4
   102de:	0153c3b3          	xor	t2,t2,s5
   102e2:	0b4b4793          	xori	a5,s6,180
   102e6:	fff5cf93          	not	t6,a1
   102ea:	fff6c513          	not	a0,a3
   102ee:	00ffffb3          	and	t6,t6,a5
   102f2:	01757533          	and	a0,a0,s7
   102f6:	012fcfb3          	xor	t6,t6,s2
   102fa:	01354533          	xor	a0,a0,s3
   102fe:	fffa4c13          	not	s8,s4
   10302:	fffac493          	not	s1,s5
   10306:	005c7c33          	and	s8,s8,t0
   1030a:	0074f4b3          	and	s1,s1,t2
   1030e:	00fc4c33          	xor	s8,s8,a5
   10312:	0174c4b3          	xor	s1,s1,s7
   10316:	fff94413          	not	s0,s2
   1031a:	fff9c713          	not	a4,s3
   1031e:	8c6d                	and	s0,s0,a1
   10320:	8f75                	and	a4,a4,a3
   10322:	00544433          	xor	s0,s0,t0
   10326:	00774733          	xor	a4,a4,t2
   1032a:	f4bb4b13          	xori	s6,s6,-181
   1032e:	fffbcb93          	not	s7,s7
   10332:	014b7b33          	and	s6,s6,s4
   10336:	015bfbb3          	and	s7,s7,s5
   1033a:	00bb4b33          	xor	s6,s6,a1
   1033e:	00dbcbb3          	xor	s7,s7,a3
   10342:	01fb46b3          	xor	a3,s6,t6
   10346:	00abcbb3          	xor	s7,s7,a0
   1034a:	008fcfb3          	xor	t6,t6,s0
   1034e:	8d39                	xor	a0,a0,a4
   10350:	fff2c293          	not	t0,t0
   10354:	fff3c393          	not	t2,t2
   10358:	0122f2b3          	and	t0,t0,s2
   1035c:	0133f7b3          	and	a5,t2,s3
   10360:	018a4a33          	xor	s4,s4,s8
   10364:	009acab3          	xor	s5,s5,s1
   10368:	0142c2b3          	xor	t0,t0,s4
   1036c:	0157c7b3          	xor	a5,a5,s5
   10370:	fffc4393          	not	t2,s8
   10374:	fff4c493          	not	s1,s1
   10378:	01d6dc13          	srli	s8,a3,0x1d
   1037c:	003b9593          	slli	a1,s7,0x3
   10380:	00bc6c33          	or	s8,s8,a1
   10384:	01dbdc93          	srli	s9,s7,0x1d
   10388:	00369593          	slli	a1,a3,0x3
   1038c:	00bcecb3          	or	s9,s9,a1
   10390:	0076d593          	srli	a1,a3,0x7
   10394:	019b9913          	slli	s2,s7,0x19
   10398:	0125e5b3          	or	a1,a1,s2
   1039c:	007bd913          	srli	s2,s7,0x7
   103a0:	01969993          	slli	s3,a3,0x19
   103a4:	01396933          	or	s2,s2,s3
   103a8:	012cccb3          	xor	s9,s9,s2
   103ac:	00bc4c33          	xor	s8,s8,a1
   103b0:	00dcccb3          	xor	s9,s9,a3
   103b4:	017c4c33          	xor	s8,s8,s7
   103b8:	01679a93          	slli	s5,a5,0x16
   103bc:	00a2d693          	srli	a3,t0,0xa
   103c0:	00daeab3          	or	s5,s5,a3
   103c4:	01629a13          	slli	s4,t0,0x16
   103c8:	00a7d693          	srli	a3,a5,0xa
   103cc:	00da6a33          	or	s4,s4,a3
   103d0:	00f79593          	slli	a1,a5,0xf
   103d4:	0112d693          	srli	a3,t0,0x11
   103d8:	8dd5                	or	a1,a1,a3
   103da:	00f29693          	slli	a3,t0,0xf
   103de:	0117d913          	srli	s2,a5,0x11
   103e2:	0126e6b3          	or	a3,a3,s2
   103e6:	00bacab3          	xor	s5,s5,a1
   103ea:	00da4a33          	xor	s4,s4,a3
   103ee:	005acab3          	xor	s5,s5,t0
   103f2:	00fa4a33          	xor	s4,s4,a5
   103f6:	01971593          	slli	a1,a4,0x19
   103fa:	00745793          	srli	a5,s0,0x7
   103fe:	8ddd                	or	a1,a1,a5
   10400:	01941693          	slli	a3,s0,0x19
   10404:	00775793          	srli	a5,a4,0x7
   10408:	8edd                	or	a3,a3,a5
   1040a:	00945793          	srli	a5,s0,0x9
   1040e:	01771293          	slli	t0,a4,0x17
   10412:	0057e7b3          	or	a5,a5,t0
   10416:	00975293          	srli	t0,a4,0x9
   1041a:	01741913          	slli	s2,s0,0x17
   1041e:	0122e2b3          	or	t0,t0,s2
   10422:	0055c5b3          	xor	a1,a1,t0
   10426:	8ebd                	xor	a3,a3,a5
   10428:	8da1                	xor	a1,a1,s0
   1042a:	8eb9                	xor	a3,a3,a4
   1042c:	01f49713          	slli	a4,s1,0x1f
   10430:	0013d793          	srli	a5,t2,0x1
   10434:	8f5d                	or	a4,a4,a5
   10436:	01f39793          	slli	a5,t2,0x1f
   1043a:	0014d293          	srli	t0,s1,0x1
   1043e:	0057e7b3          	or	a5,a5,t0
   10442:	01a49413          	slli	s0,s1,0x1a
   10446:	0063d293          	srli	t0,t2,0x6
   1044a:	00546433          	or	s0,s0,t0
   1044e:	01a39293          	slli	t0,t2,0x1a
   10452:	0064d913          	srli	s2,s1,0x6
   10456:	0122e2b3          	or	t0,t0,s2
   1045a:	8f21                	xor	a4,a4,s0
   1045c:	0057c7b3          	xor	a5,a5,t0
   10460:	00774733          	xor	a4,a4,t2
   10464:	8fa5                	xor	a5,a5,s1
   10466:	01974733          	xor	a4,a4,s9
   1046a:	0187c7b3          	xor	a5,a5,s8
   1046e:	00d51b93          	slli	s7,a0,0xd
   10472:	013fd293          	srli	t0,t6,0x13
   10476:	005bebb3          	or	s7,s7,t0
   1047a:	00df9b13          	slli	s6,t6,0xd
   1047e:	01355293          	srli	t0,a0,0x13
   10482:	005b6b33          	or	s6,s6,t0
   10486:	00451393          	slli	t2,a0,0x4
   1048a:	01cfd293          	srli	t0,t6,0x1c
   1048e:	0053e3b3          	or	t2,t2,t0
   10492:	004f9293          	slli	t0,t6,0x4
   10496:	01c55413          	srli	s0,a0,0x1c
   1049a:	0082e2b3          	or	t0,t0,s0
   1049e:	007bcbb3          	xor	s7,s7,t2
   104a2:	005b4b33          	xor	s6,s6,t0
   104a6:	01fbcbb3          	xor	s7,s7,t6
   104aa:	00ab4b33          	xor	s6,s6,a0
   104ae:	00bbcbb3          	xor	s7,s7,a1
   104b2:	00db4b33          	xor	s6,s6,a3
   104b6:	00bac5b3          	xor	a1,s5,a1
   104ba:	00da46b3          	xor	a3,s4,a3
   104be:	0a574293          	xori	t0,a4,165
   104c2:	fffccf93          	not	t6,s9
   104c6:	fffc4513          	not	a0,s8
   104ca:	005fffb3          	and	t6,t6,t0
   104ce:	8d7d                	and	a0,a0,a5
   104d0:	017fcfb3          	xor	t6,t6,s7
   104d4:	01654533          	xor	a0,a0,s6
   104d8:	fffac913          	not	s2,s5
   104dc:	fffa4493          	not	s1,s4
   104e0:	00b97933          	and	s2,s2,a1
   104e4:	8cf5                	and	s1,s1,a3
   104e6:	00594933          	xor	s2,s2,t0
   104ea:	8cbd                	xor	s1,s1,a5
   104ec:	fffbc393          	not	t2,s7
   104f0:	fffb4293          	not	t0,s6
   104f4:	0193f3b3          	and	t2,t2,s9
   104f8:	0182f2b3          	and	t0,t0,s8
   104fc:	00b3c3b3          	xor	t2,t2,a1
   10500:	00d2c2b3          	xor	t0,t0,a3
   10504:	f5a74993          	xori	s3,a4,-166
   10508:	fff7c413          	not	s0,a5
   1050c:	0159f9b3          	and	s3,s3,s5
   10510:	01447433          	and	s0,s0,s4
   10514:	0199c9b3          	xor	s3,s3,s9
   10518:	01844433          	xor	s0,s0,s8
   1051c:	01f9c9b3          	xor	s3,s3,t6
   10520:	8c29                	xor	s0,s0,a0
   10522:	007fcfb3          	xor	t6,t6,t2
   10526:	00554533          	xor	a0,a0,t0
   1052a:	fff5c713          	not	a4,a1
   1052e:	fff6c793          	not	a5,a3
   10532:	01777733          	and	a4,a4,s7
   10536:	0167f7b3          	and	a5,a5,s6
   1053a:	01574733          	xor	a4,a4,s5
   1053e:	0147c7b3          	xor	a5,a5,s4
   10542:	01274733          	xor	a4,a4,s2
   10546:	8fa5                	xor	a5,a5,s1
   10548:	fff94593          	not	a1,s2
   1054c:	fff4c493          	not	s1,s1
   10550:	01d9db13          	srli	s6,s3,0x1d
   10554:	00341693          	slli	a3,s0,0x3
   10558:	00db6b33          	or	s6,s6,a3
   1055c:	01d45b93          	srli	s7,s0,0x1d
   10560:	00399693          	slli	a3,s3,0x3
   10564:	00dbebb3          	or	s7,s7,a3
   10568:	0079d693          	srli	a3,s3,0x7
   1056c:	01941913          	slli	s2,s0,0x19
   10570:	0126e6b3          	or	a3,a3,s2
   10574:	00745913          	srli	s2,s0,0x7
   10578:	01999a13          	slli	s4,s3,0x19
   1057c:	01496933          	or	s2,s2,s4
   10580:	012bcbb3          	xor	s7,s7,s2
   10584:	00db4b33          	xor	s6,s6,a3
   10588:	013bcbb3          	xor	s7,s7,s3
   1058c:	008b4b33          	xor	s6,s6,s0
   10590:	01679913          	slli	s2,a5,0x16
   10594:	00a75693          	srli	a3,a4,0xa
   10598:	00d96933          	or	s2,s2,a3
   1059c:	01671993          	slli	s3,a4,0x16
   105a0:	00a7d693          	srli	a3,a5,0xa
   105a4:	00d9e9b3          	or	s3,s3,a3
   105a8:	00f79413          	slli	s0,a5,0xf
   105ac:	01175693          	srli	a3,a4,0x11
   105b0:	8c55                	or	s0,s0,a3
   105b2:	00f71693          	slli	a3,a4,0xf
   105b6:	0117da13          	srli	s4,a5,0x11
   105ba:	0146e6b3          	or	a3,a3,s4
   105be:	00894933          	xor	s2,s2,s0
   105c2:	00d9c9b3          	xor	s3,s3,a3
   105c6:	00e94933          	xor	s2,s2,a4
   105ca:	00f9c9b3          	xor	s3,s3,a5
   105ce:	01929c93          	slli	s9,t0,0x19
   105d2:	0073d793          	srli	a5,t2,0x7
   105d6:	00fcecb3          	or	s9,s9,a5
   105da:	01939693          	slli	a3,t2,0x19
   105de:	0072d793          	srli	a5,t0,0x7
   105e2:	8edd                	or	a3,a3,a5
   105e4:	0093d793          	srli	a5,t2,0x9
   105e8:	01729713          	slli	a4,t0,0x17
   105ec:	8fd9                	or	a5,a5,a4
   105ee:	0092d713          	srli	a4,t0,0x9
   105f2:	01739413          	slli	s0,t2,0x17
   105f6:	8f41                	or	a4,a4,s0
   105f8:	00ecccb3          	xor	s9,s9,a4
   105fc:	8ebd                	xor	a3,a3,a5
   105fe:	007cccb3          	xor	s9,s9,t2
   10602:	0056c6b3          	xor	a3,a3,t0
   10606:	01f49713          	slli	a4,s1,0x1f
   1060a:	0015d793          	srli	a5,a1,0x1
   1060e:	8f5d                	or	a4,a4,a5
   10610:	01f59793          	slli	a5,a1,0x1f
   10614:	0014d293          	srli	t0,s1,0x1
   10618:	0057e7b3          	or	a5,a5,t0
   1061c:	01a49393          	slli	t2,s1,0x1a
   10620:	0065d293          	srli	t0,a1,0x6
   10624:	0053e3b3          	or	t2,t2,t0
   10628:	01a59293          	slli	t0,a1,0x1a
   1062c:	0064d413          	srli	s0,s1,0x6
   10630:	0082e2b3          	or	t0,t0,s0
   10634:	00774733          	xor	a4,a4,t2
   10638:	0057c7b3          	xor	a5,a5,t0
   1063c:	8f2d                	xor	a4,a4,a1
   1063e:	8fa5                	xor	a5,a5,s1
   10640:	01774733          	xor	a4,a4,s7
   10644:	0167c7b3          	xor	a5,a5,s6
   10648:	00d51c13          	slli	s8,a0,0xd
   1064c:	013fd593          	srli	a1,t6,0x13
   10650:	00bc6c33          	or	s8,s8,a1
   10654:	00df9493          	slli	s1,t6,0xd
   10658:	01355593          	srli	a1,a0,0x13
   1065c:	8ccd                	or	s1,s1,a1
   1065e:	00451293          	slli	t0,a0,0x4
   10662:	01cfd593          	srli	a1,t6,0x1c
   10666:	00b2e2b3          	or	t0,t0,a1
   1066a:	004f9593          	slli	a1,t6,0x4
   1066e:	01c55393          	srli	t2,a0,0x1c
   10672:	0075e5b3          	or	a1,a1,t2
   10676:	005c4c33          	xor	s8,s8,t0
   1067a:	8cad                	xor	s1,s1,a1
   1067c:	01fc4c33          	xor	s8,s8,t6
   10680:	8ca9                	xor	s1,s1,a0
   10682:	019c4c33          	xor	s8,s8,s9
   10686:	8cb5                	xor	s1,s1,a3
   10688:	01994cb3          	xor	s9,s2,s9
   1068c:	00d9c6b3          	xor	a3,s3,a3
   10690:	09674593          	xori	a1,a4,150
   10694:	fffbcf93          	not	t6,s7
   10698:	fffb4513          	not	a0,s6
   1069c:	00bfffb3          	and	t6,t6,a1
   106a0:	8d7d                	and	a0,a0,a5
   106a2:	018fcfb3          	xor	t6,t6,s8
   106a6:	8d25                	xor	a0,a0,s1
   106a8:	fff94393          	not	t2,s2
   106ac:	fff9c293          	not	t0,s3
   106b0:	0193f3b3          	and	t2,t2,s9
   106b4:	00d2f2b3          	and	t0,t0,a3
   106b8:	00b3c3b3          	xor	t2,t2,a1
   106bc:	00f2c2b3          	xor	t0,t0,a5
   106c0:	fffc4a93          	not	s5,s8
   106c4:	fff4ca13          	not	s4,s1
   106c8:	017afab3          	and	s5,s5,s7
   106cc:	016a7a33          	and	s4,s4,s6
   106d0:	019acab3          	xor	s5,s5,s9
   106d4:	00da4a33          	xor	s4,s4,a3
   106d8:	f6974413          	xori	s0,a4,-151
   106dc:	fff7c593          	not	a1,a5
   106e0:	01247433          	and	s0,s0,s2
   106e4:	0135f5b3          	and	a1,a1,s3
   106e8:	01744433          	xor	s0,s0,s7
   106ec:	0165c5b3          	xor	a1,a1,s6
   106f0:	01f44433          	xor	s0,s0,t6
   106f4:	8da9                	xor	a1,a1,a0
   106f6:	015fcb33          	xor	s6,t6,s5
   106fa:	01454bb3          	xor	s7,a0,s4
   106fe:	fffcc713          	not	a4,s9
   10702:	fff6c793          	not	a5,a3
   10706:	01877733          	and	a4,a4,s8
   1070a:	8fe5                	and	a5,a5,s1
   1070c:	01274733          	xor	a4,a4,s2
   10710:	0137c7b3          	xor	a5,a5,s3
   10714:	00774733          	xor	a4,a4,t2
   10718:	0057c7b3          	xor	a5,a5,t0
   1071c:	fff3c393          	not	t2,t2
   10720:	fff2c293          	not	t0,t0
   10724:	01d45913          	srli	s2,s0,0x1d
   10728:	00359693          	slli	a3,a1,0x3
   1072c:	00d96933          	or	s2,s2,a3
   10730:	01d5d993          	srli	s3,a1,0x1d
   10734:	00341693          	slli	a3,s0,0x3
   10738:	00d9e9b3          	or	s3,s3,a3
   1073c:	00745493          	srli	s1,s0,0x7
   10740:	01959693          	slli	a3,a1,0x19
   10744:	8cd5                	or	s1,s1,a3
   10746:	0075d693          	srli	a3,a1,0x7
   1074a:	01941c13          	slli	s8,s0,0x19
   1074e:	0186e6b3          	or	a3,a3,s8
   10752:	00d9c9b3          	xor	s3,s3,a3
   10756:	00994933          	xor	s2,s2,s1
   1075a:	0089c9b3          	xor	s3,s3,s0
   1075e:	00b94933          	xor	s2,s2,a1
   10762:	01679493          	slli	s1,a5,0x16
   10766:	00a75693          	srli	a3,a4,0xa
   1076a:	8cd5                	or	s1,s1,a3
   1076c:	01671413          	slli	s0,a4,0x16
   10770:	00a7d693          	srli	a3,a5,0xa
   10774:	8c55                	or	s0,s0,a3
   10776:	00f79593          	slli	a1,a5,0xf
   1077a:	01175693          	srli	a3,a4,0x11
   1077e:	8dd5                	or	a1,a1,a3
   10780:	00f71693          	slli	a3,a4,0xf
   10784:	0117dc13          	srli	s8,a5,0x11
   10788:	0186e6b3          	or	a3,a3,s8
   1078c:	8cad                	xor	s1,s1,a1
   1078e:	8c35                	xor	s0,s0,a3
   10790:	8cb9                	xor	s1,s1,a4
   10792:	8c3d                	xor	s0,s0,a5
   10794:	019a1713          	slli	a4,s4,0x19
   10798:	007ad793          	srli	a5,s5,0x7
   1079c:	8f5d                	or	a4,a4,a5
   1079e:	019a9793          	slli	a5,s5,0x19
   107a2:	007a5693          	srli	a3,s4,0x7
   107a6:	8fd5                	or	a5,a5,a3
   107a8:	009ad593          	srli	a1,s5,0x9
   107ac:	017a1693          	slli	a3,s4,0x17
   107b0:	8dd5                	or	a1,a1,a3
   107b2:	009a5693          	srli	a3,s4,0x9
   107b6:	017a9c13          	slli	s8,s5,0x17
   107ba:	0186e6b3          	or	a3,a3,s8
   107be:	8f35                	xor	a4,a4,a3
   107c0:	8fad                	xor	a5,a5,a1
   107c2:	01f29593          	slli	a1,t0,0x1f
   107c6:	0013d693          	srli	a3,t2,0x1
   107ca:	8dd5                	or	a1,a1,a3
   107cc:	01f39693          	slli	a3,t2,0x1f
   107d0:	0012dc13          	srli	s8,t0,0x1
   107d4:	0186e6b3          	or	a3,a3,s8
   107d8:	01a29c93          	slli	s9,t0,0x1a
   107dc:	0063dc13          	srli	s8,t2,0x6
   107e0:	018cecb3          	or	s9,s9,s8
   107e4:	01a39d13          	slli	s10,t2,0x1a
   107e8:	0062dc13          	srli	s8,t0,0x6
   107ec:	018d6c33          	or	s8,s10,s8
   107f0:	0195c5b3          	xor	a1,a1,s9
   107f4:	0186c6b3          	xor	a3,a3,s8
   107f8:	0075c5b3          	xor	a1,a1,t2
   107fc:	0056c6b3          	xor	a3,a3,t0
   10800:	0135c5b3          	xor	a1,a1,s3
   10804:	0126c6b3          	xor	a3,a3,s2
   10808:	01f74cb3          	xor	s9,a4,t6
   1080c:	00a7cc33          	xor	s8,a5,a0
   10810:	00db9393          	slli	t2,s7,0xd
   10814:	013b5513          	srli	a0,s6,0x13
   10818:	00a3e3b3          	or	t2,t2,a0
   1081c:	00db1293          	slli	t0,s6,0xd
   10820:	013bd513          	srli	a0,s7,0x13
   10824:	00a2e2b3          	or	t0,t0,a0
   10828:	007cccb3          	xor	s9,s9,t2
   1082c:	005c4c33          	xor	s8,s8,t0
   10830:	004b9513          	slli	a0,s7,0x4
   10834:	01cb5f93          	srli	t6,s6,0x1c
   10838:	01f56533          	or	a0,a0,t6
   1083c:	0b12                	slli	s6,s6,0x4
   1083e:	01cbdb93          	srli	s7,s7,0x1c
   10842:	017b6b33          	or	s6,s6,s7
   10846:	00acccb3          	xor	s9,s9,a0
   1084a:	016c4c33          	xor	s8,s8,s6
   1084e:	01574733          	xor	a4,a4,s5
   10852:	0147c7b3          	xor	a5,a5,s4
   10856:	8f25                	xor	a4,a4,s1
   10858:	8fa1                	xor	a5,a5,s0
   1085a:	0875ca13          	xori	s4,a1,135
   1085e:	fff9cf93          	not	t6,s3
   10862:	fff94513          	not	a0,s2
   10866:	014fffb3          	and	t6,t6,s4
   1086a:	8d75                	and	a0,a0,a3
   1086c:	019fcfb3          	xor	t6,t6,s9
   10870:	01854533          	xor	a0,a0,s8
   10874:	fff4c393          	not	t2,s1
   10878:	fff44293          	not	t0,s0
   1087c:	00e3f3b3          	and	t2,t2,a4
   10880:	00f2f2b3          	and	t0,t0,a5
   10884:	0143c3b3          	xor	t2,t2,s4
   10888:	00d2c2b3          	xor	t0,t0,a3
   1088c:	fffcca93          	not	s5,s9
   10890:	fffc4a13          	not	s4,s8
   10894:	013afab3          	and	s5,s5,s3
   10898:	012a7a33          	and	s4,s4,s2
   1089c:	00eacab3          	xor	s5,s5,a4
   108a0:	00fa4a33          	xor	s4,s4,a5
   108a4:	f785c593          	xori	a1,a1,-136
   108a8:	fff6c693          	not	a3,a3
   108ac:	8de5                	and	a1,a1,s1
   108ae:	8ee1                	and	a3,a3,s0
   108b0:	0135c5b3          	xor	a1,a1,s3
   108b4:	0126c6b3          	xor	a3,a3,s2
   108b8:	01f5c5b3          	xor	a1,a1,t6
   108bc:	8ea9                	xor	a3,a3,a0
   108be:	015fcb33          	xor	s6,t6,s5
   108c2:	01454bb3          	xor	s7,a0,s4
   108c6:	fff74713          	not	a4,a4
   108ca:	fff7c793          	not	a5,a5
   108ce:	01977733          	and	a4,a4,s9
   108d2:	0187f7b3          	and	a5,a5,s8
   108d6:	8f25                	xor	a4,a4,s1
   108d8:	8fa1                	xor	a5,a5,s0
   108da:	00774733          	xor	a4,a4,t2
   108de:	0057c7b3          	xor	a5,a5,t0
   108e2:	fff3c393          	not	t2,t2
   108e6:	fff2c293          	not	t0,t0
   108ea:	01d5d913          	srli	s2,a1,0x1d
   108ee:	00369413          	slli	s0,a3,0x3
   108f2:	00896933          	or	s2,s2,s0
   108f6:	01d6d993          	srli	s3,a3,0x1d
   108fa:	00359413          	slli	s0,a1,0x3
   108fe:	0089e9b3          	or	s3,s3,s0
   10902:	0075d493          	srli	s1,a1,0x7
   10906:	01969413          	slli	s0,a3,0x19
   1090a:	8cc1                	or	s1,s1,s0
   1090c:	0076d413          	srli	s0,a3,0x7
   10910:	01959c13          	slli	s8,a1,0x19
   10914:	01846433          	or	s0,s0,s8
   10918:	0089c9b3          	xor	s3,s3,s0
   1091c:	00994933          	xor	s2,s2,s1
   10920:	00b9c9b3          	xor	s3,s3,a1
   10924:	00d94933          	xor	s2,s2,a3
   10928:	01679493          	slli	s1,a5,0x16
   1092c:	00a75693          	srli	a3,a4,0xa
   10930:	8cd5                	or	s1,s1,a3
   10932:	01671413          	slli	s0,a4,0x16
   10936:	00a7d693          	srli	a3,a5,0xa
   1093a:	8c55                	or	s0,s0,a3
   1093c:	00f79593          	slli	a1,a5,0xf
   10940:	01175693          	srli	a3,a4,0x11
   10944:	8dd5                	or	a1,a1,a3
   10946:	00f71693          	slli	a3,a4,0xf
   1094a:	0117dc13          	srli	s8,a5,0x11
   1094e:	0186e6b3          	or	a3,a3,s8
   10952:	8cad                	xor	s1,s1,a1
   10954:	8c35                	xor	s0,s0,a3
   10956:	8cb9                	xor	s1,s1,a4
   10958:	8c3d                	xor	s0,s0,a5
   1095a:	019a1713          	slli	a4,s4,0x19
   1095e:	007ad793          	srli	a5,s5,0x7
   10962:	8f5d                	or	a4,a4,a5
   10964:	019a9793          	slli	a5,s5,0x19
   10968:	007a5693          	srli	a3,s4,0x7
   1096c:	8fd5                	or	a5,a5,a3
   1096e:	009ad593          	srli	a1,s5,0x9
   10972:	017a1693          	slli	a3,s4,0x17
   10976:	8dd5                	or	a1,a1,a3
   10978:	009a5693          	srli	a3,s4,0x9
   1097c:	017a9c13          	slli	s8,s5,0x17
   10980:	0186e6b3          	or	a3,a3,s8
   10984:	8f35                	xor	a4,a4,a3
   10986:	8fad                	xor	a5,a5,a1
   10988:	01f29593          	slli	a1,t0,0x1f
   1098c:	0013d693          	srli	a3,t2,0x1
   10990:	8dd5                	or	a1,a1,a3
   10992:	01f39693          	slli	a3,t2,0x1f
   10996:	0012dc13          	srli	s8,t0,0x1
   1099a:	0186e6b3          	or	a3,a3,s8
   1099e:	01a29c93          	slli	s9,t0,0x1a
   109a2:	0063dc13          	srli	s8,t2,0x6
   109a6:	018cecb3          	or	s9,s9,s8
   109aa:	01a39d13          	slli	s10,t2,0x1a
   109ae:	0062dc13          	srli	s8,t0,0x6
   109b2:	018d6c33          	or	s8,s10,s8
   109b6:	0195c5b3          	xor	a1,a1,s9
   109ba:	0186c6b3          	xor	a3,a3,s8
   109be:	0075c5b3          	xor	a1,a1,t2
   109c2:	0056c6b3          	xor	a3,a3,t0
   109c6:	0135c5b3          	xor	a1,a1,s3
   109ca:	0126c6b3          	xor	a3,a3,s2
   109ce:	01f74cb3          	xor	s9,a4,t6
   109d2:	00a7cc33          	xor	s8,a5,a0
   109d6:	00db9393          	slli	t2,s7,0xd
   109da:	013b5513          	srli	a0,s6,0x13
   109de:	00a3e3b3          	or	t2,t2,a0
   109e2:	00db1293          	slli	t0,s6,0xd
   109e6:	013bd513          	srli	a0,s7,0x13
   109ea:	00a2e2b3          	or	t0,t0,a0
   109ee:	007cccb3          	xor	s9,s9,t2
   109f2:	005c4c33          	xor	s8,s8,t0
   109f6:	004b9513          	slli	a0,s7,0x4
   109fa:	01cb5f93          	srli	t6,s6,0x1c
   109fe:	01f56533          	or	a0,a0,t6
   10a02:	0b12                	slli	s6,s6,0x4
   10a04:	01cbdb93          	srli	s7,s7,0x1c
   10a08:	017b6b33          	or	s6,s6,s7
   10a0c:	00acccb3          	xor	s9,s9,a0
   10a10:	016c4c33          	xor	s8,s8,s6
   10a14:	01574733          	xor	a4,a4,s5
   10a18:	0147c7b3          	xor	a5,a5,s4
   10a1c:	8f25                	xor	a4,a4,s1
   10a1e:	8fa1                	xor	a5,a5,s0
   10a20:	0785ca13          	xori	s4,a1,120
   10a24:	fff9cf93          	not	t6,s3
   10a28:	fff94513          	not	a0,s2
   10a2c:	014fffb3          	and	t6,t6,s4
   10a30:	8d75                	and	a0,a0,a3
   10a32:	019fcfb3          	xor	t6,t6,s9
   10a36:	01854533          	xor	a0,a0,s8
   10a3a:	fff4c393          	not	t2,s1
   10a3e:	fff44293          	not	t0,s0
   10a42:	00e3f3b3          	and	t2,t2,a4
   10a46:	00f2f2b3          	and	t0,t0,a5
   10a4a:	0143c3b3          	xor	t2,t2,s4
   10a4e:	00d2c2b3          	xor	t0,t0,a3
   10a52:	fffcca93          	not	s5,s9
   10a56:	fffc4a13          	not	s4,s8
   10a5a:	013afab3          	and	s5,s5,s3
   10a5e:	012a7a33          	and	s4,s4,s2
   10a62:	00eacab3          	xor	s5,s5,a4
   10a66:	00fa4a33          	xor	s4,s4,a5
   10a6a:	f875c593          	xori	a1,a1,-121
   10a6e:	fff6c693          	not	a3,a3
   10a72:	8de5                	and	a1,a1,s1
   10a74:	8ee1                	and	a3,a3,s0
   10a76:	0135c5b3          	xor	a1,a1,s3
   10a7a:	0126c6b3          	xor	a3,a3,s2
   10a7e:	01f5c5b3          	xor	a1,a1,t6
   10a82:	8ea9                	xor	a3,a3,a0
   10a84:	015fcb33          	xor	s6,t6,s5
   10a88:	01454bb3          	xor	s7,a0,s4
   10a8c:	fff74713          	not	a4,a4
   10a90:	fff7c793          	not	a5,a5
   10a94:	01977733          	and	a4,a4,s9
   10a98:	0187f7b3          	and	a5,a5,s8
   10a9c:	8f25                	xor	a4,a4,s1
   10a9e:	8fa1                	xor	a5,a5,s0
   10aa0:	00774733          	xor	a4,a4,t2
   10aa4:	0057c7b3          	xor	a5,a5,t0
   10aa8:	fff3c393          	not	t2,t2
   10aac:	fff2c293          	not	t0,t0
   10ab0:	01d5d913          	srli	s2,a1,0x1d
   10ab4:	00369413          	slli	s0,a3,0x3
   10ab8:	00896933          	or	s2,s2,s0
   10abc:	01d6d993          	srli	s3,a3,0x1d
   10ac0:	00359413          	slli	s0,a1,0x3
   10ac4:	0089e9b3          	or	s3,s3,s0
   10ac8:	0075d493          	srli	s1,a1,0x7
   10acc:	01969413          	slli	s0,a3,0x19
   10ad0:	8cc1                	or	s1,s1,s0
   10ad2:	0076d413          	srli	s0,a3,0x7
   10ad6:	01959c13          	slli	s8,a1,0x19
   10ada:	01846433          	or	s0,s0,s8
   10ade:	0089c9b3          	xor	s3,s3,s0
   10ae2:	00994933          	xor	s2,s2,s1
   10ae6:	00b9c9b3          	xor	s3,s3,a1
   10aea:	00d94933          	xor	s2,s2,a3
   10aee:	01679493          	slli	s1,a5,0x16
   10af2:	00a75693          	srli	a3,a4,0xa
   10af6:	8cd5                	or	s1,s1,a3
   10af8:	01671413          	slli	s0,a4,0x16
   10afc:	00a7d693          	srli	a3,a5,0xa
   10b00:	8c55                	or	s0,s0,a3
   10b02:	00f79593          	slli	a1,a5,0xf
   10b06:	01175693          	srli	a3,a4,0x11
   10b0a:	8dd5                	or	a1,a1,a3
   10b0c:	00f71693          	slli	a3,a4,0xf
   10b10:	0117dc13          	srli	s8,a5,0x11
   10b14:	0186e6b3          	or	a3,a3,s8
   10b18:	8cad                	xor	s1,s1,a1
   10b1a:	8c35                	xor	s0,s0,a3
   10b1c:	8cb9                	xor	s1,s1,a4
   10b1e:	8c3d                	xor	s0,s0,a5
   10b20:	019a1713          	slli	a4,s4,0x19
   10b24:	007ad793          	srli	a5,s5,0x7
   10b28:	8f5d                	or	a4,a4,a5
   10b2a:	019a9793          	slli	a5,s5,0x19
   10b2e:	007a5693          	srli	a3,s4,0x7
   10b32:	8fd5                	or	a5,a5,a3
   10b34:	009ad593          	srli	a1,s5,0x9
   10b38:	017a1693          	slli	a3,s4,0x17
   10b3c:	8dd5                	or	a1,a1,a3
   10b3e:	009a5693          	srli	a3,s4,0x9
   10b42:	017a9c13          	slli	s8,s5,0x17
   10b46:	0186e6b3          	or	a3,a3,s8
   10b4a:	8f35                	xor	a4,a4,a3
   10b4c:	8fad                	xor	a5,a5,a1
   10b4e:	01f29593          	slli	a1,t0,0x1f
   10b52:	0013d693          	srli	a3,t2,0x1
   10b56:	8dd5                	or	a1,a1,a3
   10b58:	01f39693          	slli	a3,t2,0x1f
   10b5c:	0012dc13          	srli	s8,t0,0x1
   10b60:	0186e6b3          	or	a3,a3,s8
   10b64:	01a29c93          	slli	s9,t0,0x1a
   10b68:	0063dc13          	srli	s8,t2,0x6
   10b6c:	018cecb3          	or	s9,s9,s8
   10b70:	01a39d13          	slli	s10,t2,0x1a
   10b74:	0062dc13          	srli	s8,t0,0x6
   10b78:	018d6c33          	or	s8,s10,s8
   10b7c:	0195c5b3          	xor	a1,a1,s9
   10b80:	0186c6b3          	xor	a3,a3,s8
   10b84:	0075c5b3          	xor	a1,a1,t2
   10b88:	0056c6b3          	xor	a3,a3,t0
   10b8c:	0135c5b3          	xor	a1,a1,s3
   10b90:	0126c6b3          	xor	a3,a3,s2
   10b94:	01f74c33          	xor	s8,a4,t6
   10b98:	8d3d                	xor	a0,a0,a5
   10b9a:	00db9393          	slli	t2,s7,0xd
   10b9e:	013b5f93          	srli	t6,s6,0x13
   10ba2:	01f3e3b3          	or	t2,t2,t6
   10ba6:	00db1293          	slli	t0,s6,0xd
   10baa:	013bdf93          	srli	t6,s7,0x13
   10bae:	01f2e2b3          	or	t0,t0,t6
   10bb2:	007c4c33          	xor	s8,s8,t2
   10bb6:	00554533          	xor	a0,a0,t0
   10bba:	004b9393          	slli	t2,s7,0x4
   10bbe:	01cb5f93          	srli	t6,s6,0x1c
   10bc2:	01f3e3b3          	or	t2,t2,t6
   10bc6:	004b1293          	slli	t0,s6,0x4
   10bca:	01cbdb93          	srli	s7,s7,0x1c
   10bce:	0172e2b3          	or	t0,t0,s7
   10bd2:	007c4c33          	xor	s8,s8,t2
   10bd6:	00554b33          	xor	s6,a0,t0
   10bda:	01574733          	xor	a4,a4,s5
   10bde:	0147c7b3          	xor	a5,a5,s4
   10be2:	00974cb3          	xor	s9,a4,s1
   10be6:	0087cab3          	xor	s5,a5,s0
   10bea:	0695c793          	xori	a5,a1,105
   10bee:	fff9cf93          	not	t6,s3
   10bf2:	fff94513          	not	a0,s2
   10bf6:	00ffffb3          	and	t6,t6,a5
   10bfa:	8d75                	and	a0,a0,a3
   10bfc:	018fcfb3          	xor	t6,t6,s8
   10c00:	01654533          	xor	a0,a0,s6
   10c04:	fff4c393          	not	t2,s1
   10c08:	fff44293          	not	t0,s0
   10c0c:	0193f3b3          	and	t2,t2,s9
   10c10:	0152f2b3          	and	t0,t0,s5
   10c14:	00f3c3b3          	xor	t2,t2,a5
   10c18:	00d2c2b3          	xor	t0,t0,a3
   10c1c:	fffc4713          	not	a4,s8
   10c20:	fffb4793          	not	a5,s6
   10c24:	01377733          	and	a4,a4,s3
   10c28:	0127f7b3          	and	a5,a5,s2
   10c2c:	01974733          	xor	a4,a4,s9
   10c30:	0157c7b3          	xor	a5,a5,s5
   10c34:	f965c593          	xori	a1,a1,-106
   10c38:	fff6c693          	not	a3,a3
   10c3c:	8de5                	and	a1,a1,s1
   10c3e:	8ee1                	and	a3,a3,s0
   10c40:	0135c5b3          	xor	a1,a1,s3
   10c44:	0126c6b3          	xor	a3,a3,s2
   10c48:	01f5c5b3          	xor	a1,a1,t6
   10c4c:	8ea9                	xor	a3,a3,a0
   10c4e:	00efca33          	xor	s4,t6,a4
   10c52:	00f54bb3          	xor	s7,a0,a5
   10c56:	fffccc93          	not	s9,s9
   10c5a:	fffaca93          	not	s5,s5
   10c5e:	018cfcb3          	and	s9,s9,s8
   10c62:	016afab3          	and	s5,s5,s6
   10c66:	009ccb33          	xor	s6,s9,s1
   10c6a:	008acab3          	xor	s5,s5,s0
   10c6e:	007b4b33          	xor	s6,s6,t2
   10c72:	005acab3          	xor	s5,s5,t0
   10c76:	fff3c393          	not	t2,t2
   10c7a:	fff2c293          	not	t0,t0
   10c7e:	01d5d913          	srli	s2,a1,0x1d
   10c82:	00369413          	slli	s0,a3,0x3
   10c86:	00896933          	or	s2,s2,s0
   10c8a:	01d6d993          	srli	s3,a3,0x1d
   10c8e:	00359413          	slli	s0,a1,0x3
   10c92:	0089e9b3          	or	s3,s3,s0
   10c96:	0075d493          	srli	s1,a1,0x7
   10c9a:	01969413          	slli	s0,a3,0x19
   10c9e:	8cc1                	or	s1,s1,s0
   10ca0:	0076d413          	srli	s0,a3,0x7
   10ca4:	01959c13          	slli	s8,a1,0x19
   10ca8:	01846433          	or	s0,s0,s8
   10cac:	0089c9b3          	xor	s3,s3,s0
   10cb0:	00994933          	xor	s2,s2,s1
   10cb4:	00b9c9b3          	xor	s3,s3,a1
   10cb8:	00d94933          	xor	s2,s2,a3
   10cbc:	016a9493          	slli	s1,s5,0x16
   10cc0:	00ab5693          	srli	a3,s6,0xa
   10cc4:	8cd5                	or	s1,s1,a3
   10cc6:	016b1413          	slli	s0,s6,0x16
   10cca:	00aad693          	srli	a3,s5,0xa
   10cce:	8c55                	or	s0,s0,a3
   10cd0:	00fa9593          	slli	a1,s5,0xf
   10cd4:	011b5693          	srli	a3,s6,0x11
   10cd8:	8dd5                	or	a1,a1,a3
   10cda:	00fb1693          	slli	a3,s6,0xf
   10cde:	011adc13          	srli	s8,s5,0x11
   10ce2:	0186e6b3          	or	a3,a3,s8
   10ce6:	8cad                	xor	s1,s1,a1
   10ce8:	8c35                	xor	s0,s0,a3
   10cea:	0164c4b3          	xor	s1,s1,s6
   10cee:	01544433          	xor	s0,s0,s5
   10cf2:	01979b13          	slli	s6,a5,0x19
   10cf6:	00775693          	srli	a3,a4,0x7
   10cfa:	00db6b33          	or	s6,s6,a3
   10cfe:	01971a93          	slli	s5,a4,0x19
   10d02:	0077d693          	srli	a3,a5,0x7
   10d06:	00daeab3          	or	s5,s5,a3
   10d0a:	00975593          	srli	a1,a4,0x9
   10d0e:	01779693          	slli	a3,a5,0x17
   10d12:	8dd5                	or	a1,a1,a3
   10d14:	0097d693          	srli	a3,a5,0x9
   10d18:	01771c13          	slli	s8,a4,0x17
   10d1c:	0186e6b3          	or	a3,a3,s8
   10d20:	00db4b33          	xor	s6,s6,a3
   10d24:	00bacab3          	xor	s5,s5,a1
   10d28:	01f29593          	slli	a1,t0,0x1f
   10d2c:	0013d693          	srli	a3,t2,0x1
   10d30:	8dd5                	or	a1,a1,a3
   10d32:	01f39693          	slli	a3,t2,0x1f
   10d36:	0012dc13          	srli	s8,t0,0x1
   10d3a:	0186e6b3          	or	a3,a3,s8
   10d3e:	01a29c93          	slli	s9,t0,0x1a
   10d42:	0063dc13          	srli	s8,t2,0x6
   10d46:	018cecb3          	or	s9,s9,s8
   10d4a:	01a39d13          	slli	s10,t2,0x1a
   10d4e:	0062dc13          	srli	s8,t0,0x6
   10d52:	018d6c33          	or	s8,s10,s8
   10d56:	0195c5b3          	xor	a1,a1,s9
   10d5a:	0186c6b3          	xor	a3,a3,s8
   10d5e:	0075c5b3          	xor	a1,a1,t2
   10d62:	0056c6b3          	xor	a3,a3,t0
   10d66:	0135c5b3          	xor	a1,a1,s3
   10d6a:	0126c6b3          	xor	a3,a3,s2
   10d6e:	016fccb3          	xor	s9,t6,s6
   10d72:	01554c33          	xor	s8,a0,s5
   10d76:	00db9393          	slli	t2,s7,0xd
   10d7a:	013a5513          	srli	a0,s4,0x13
   10d7e:	00a3e3b3          	or	t2,t2,a0
   10d82:	00da1293          	slli	t0,s4,0xd
   10d86:	013bd513          	srli	a0,s7,0x13
   10d8a:	00a2e2b3          	or	t0,t0,a0
   10d8e:	007cccb3          	xor	s9,s9,t2
   10d92:	005c4c33          	xor	s8,s8,t0
   10d96:	004b9513          	slli	a0,s7,0x4
   10d9a:	01ca5f93          	srli	t6,s4,0x1c
   10d9e:	01f56533          	or	a0,a0,t6
   10da2:	0a12                	slli	s4,s4,0x4
   10da4:	01cbdb93          	srli	s7,s7,0x1c
   10da8:	017a6a33          	or	s4,s4,s7
   10dac:	00acccb3          	xor	s9,s9,a0
   10db0:	014c4c33          	xor	s8,s8,s4
   10db4:	01674733          	xor	a4,a4,s6
   10db8:	0157c7b3          	xor	a5,a5,s5
   10dbc:	00974b33          	xor	s6,a4,s1
   10dc0:	0087cab3          	xor	s5,a5,s0
   10dc4:	05a5c793          	xori	a5,a1,90
   10dc8:	fff9cf93          	not	t6,s3
   10dcc:	fff94513          	not	a0,s2
   10dd0:	00ffffb3          	and	t6,t6,a5
   10dd4:	8d75                	and	a0,a0,a3
   10dd6:	019fcfb3          	xor	t6,t6,s9
   10dda:	01854533          	xor	a0,a0,s8
   10dde:	fff4c393          	not	t2,s1
   10de2:	fff44293          	not	t0,s0
   10de6:	0163f3b3          	and	t2,t2,s6
   10dea:	0152f2b3          	and	t0,t0,s5
   10dee:	00f3c3b3          	xor	t2,t2,a5
   10df2:	00d2c2b3          	xor	t0,t0,a3
   10df6:	fffcc713          	not	a4,s9
   10dfa:	fffc4793          	not	a5,s8
   10dfe:	01377733          	and	a4,a4,s3
   10e02:	0127f7b3          	and	a5,a5,s2
   10e06:	01674733          	xor	a4,a4,s6
   10e0a:	0157c7b3          	xor	a5,a5,s5
   10e0e:	fa55c593          	xori	a1,a1,-91
   10e12:	fff6c693          	not	a3,a3
   10e16:	8de5                	and	a1,a1,s1
   10e18:	8ee1                	and	a3,a3,s0
   10e1a:	0135c5b3          	xor	a1,a1,s3
   10e1e:	0126c6b3          	xor	a3,a3,s2
   10e22:	01f5c5b3          	xor	a1,a1,t6
   10e26:	8ea9                	xor	a3,a3,a0
   10e28:	00efca33          	xor	s4,t6,a4
   10e2c:	00f54bb3          	xor	s7,a0,a5
   10e30:	fffb4b13          	not	s6,s6
   10e34:	fffaca93          	not	s5,s5
   10e38:	019b7b33          	and	s6,s6,s9
   10e3c:	018afab3          	and	s5,s5,s8
   10e40:	009b4b33          	xor	s6,s6,s1
   10e44:	008acab3          	xor	s5,s5,s0
   10e48:	007b4b33          	xor	s6,s6,t2
   10e4c:	005acab3          	xor	s5,s5,t0
   10e50:	fff3c393          	not	t2,t2
   10e54:	fff2c293          	not	t0,t0
   10e58:	01d5d913          	srli	s2,a1,0x1d
   10e5c:	00369413          	slli	s0,a3,0x3
   10e60:	00896933          	or	s2,s2,s0
   10e64:	01d6d993          	srli	s3,a3,0x1d
   10e68:	00359413          	slli	s0,a1,0x3
   10e6c:	0089e9b3          	or	s3,s3,s0
   10e70:	0075d493          	srli	s1,a1,0x7
   10e74:	01969413          	slli	s0,a3,0x19
   10e78:	8cc1                	or	s1,s1,s0
   10e7a:	0076d413          	srli	s0,a3,0x7
   10e7e:	01959c13          	slli	s8,a1,0x19
   10e82:	01846433          	or	s0,s0,s8
   10e86:	0089c9b3          	xor	s3,s3,s0
   10e8a:	00994933          	xor	s2,s2,s1
   10e8e:	00b9c9b3          	xor	s3,s3,a1
   10e92:	00d94933          	xor	s2,s2,a3
   10e96:	016a9493          	slli	s1,s5,0x16
   10e9a:	00ab5693          	srli	a3,s6,0xa
   10e9e:	8cd5                	or	s1,s1,a3
   10ea0:	016b1413          	slli	s0,s6,0x16
   10ea4:	00aad693          	srli	a3,s5,0xa
   10ea8:	8c55                	or	s0,s0,a3
   10eaa:	00fa9593          	slli	a1,s5,0xf
   10eae:	011b5693          	srli	a3,s6,0x11
   10eb2:	8dd5                	or	a1,a1,a3
   10eb4:	00fb1693          	slli	a3,s6,0xf
   10eb8:	011adc13          	srli	s8,s5,0x11
   10ebc:	0186e6b3          	or	a3,a3,s8
   10ec0:	8cad                	xor	s1,s1,a1
   10ec2:	8c35                	xor	s0,s0,a3
   10ec4:	0164c4b3          	xor	s1,s1,s6
   10ec8:	01544433          	xor	s0,s0,s5
   10ecc:	01979b13          	slli	s6,a5,0x19
   10ed0:	00775693          	srli	a3,a4,0x7
   10ed4:	00db6b33          	or	s6,s6,a3
   10ed8:	01971a93          	slli	s5,a4,0x19
   10edc:	0077d693          	srli	a3,a5,0x7
   10ee0:	00daeab3          	or	s5,s5,a3
   10ee4:	00975593          	srli	a1,a4,0x9
   10ee8:	01779693          	slli	a3,a5,0x17
   10eec:	8dd5                	or	a1,a1,a3
   10eee:	0097d693          	srli	a3,a5,0x9
   10ef2:	01771c13          	slli	s8,a4,0x17
   10ef6:	0186e6b3          	or	a3,a3,s8
   10efa:	00db4b33          	xor	s6,s6,a3
   10efe:	00bacab3          	xor	s5,s5,a1
   10f02:	01f29593          	slli	a1,t0,0x1f
   10f06:	0013d693          	srli	a3,t2,0x1
   10f0a:	8dd5                	or	a1,a1,a3
   10f0c:	01f39693          	slli	a3,t2,0x1f
   10f10:	0012dc13          	srli	s8,t0,0x1
   10f14:	0186e6b3          	or	a3,a3,s8
   10f18:	01a29c93          	slli	s9,t0,0x1a
   10f1c:	0063dc13          	srli	s8,t2,0x6
   10f20:	018cecb3          	or	s9,s9,s8
   10f24:	01a39d13          	slli	s10,t2,0x1a
   10f28:	0062dc13          	srli	s8,t0,0x6
   10f2c:	018d6c33          	or	s8,s10,s8
   10f30:	0195c5b3          	xor	a1,a1,s9
   10f34:	0186c6b3          	xor	a3,a3,s8
   10f38:	0075c5b3          	xor	a1,a1,t2
   10f3c:	0056c6b3          	xor	a3,a3,t0
   10f40:	0135c5b3          	xor	a1,a1,s3
   10f44:	0126c6b3          	xor	a3,a3,s2
   10f48:	016fcfb3          	xor	t6,t6,s6
   10f4c:	01554533          	xor	a0,a0,s5
   10f50:	00db9393          	slli	t2,s7,0xd
   10f54:	013a5293          	srli	t0,s4,0x13
   10f58:	0053e3b3          	or	t2,t2,t0
   10f5c:	00da1293          	slli	t0,s4,0xd
   10f60:	013bdc13          	srli	s8,s7,0x13
   10f64:	0182e2b3          	or	t0,t0,s8
   10f68:	007fcfb3          	xor	t6,t6,t2
   10f6c:	00554533          	xor	a0,a0,t0
   10f70:	004b9293          	slli	t0,s7,0x4
   10f74:	01ca5393          	srli	t2,s4,0x1c
   10f78:	0072e2b3          	or	t0,t0,t2
   10f7c:	0a12                	slli	s4,s4,0x4
   10f7e:	01cbdb93          	srli	s7,s7,0x1c
   10f82:	017a6a33          	or	s4,s4,s7
   10f86:	005fcfb3          	xor	t6,t6,t0
   10f8a:	01454533          	xor	a0,a0,s4
   10f8e:	01674733          	xor	a4,a4,s6
   10f92:	0157c7b3          	xor	a5,a5,s5
   10f96:	8f25                	xor	a4,a4,s1
   10f98:	8fa1                	xor	a5,a5,s0
   10f9a:	04b5ca13          	xori	s4,a1,75
   10f9e:	fff9cb93          	not	s7,s3
   10fa2:	fff94b13          	not	s6,s2
   10fa6:	014bfbb3          	and	s7,s7,s4
   10faa:	00db7b33          	and	s6,s6,a3
   10fae:	01fbcbb3          	xor	s7,s7,t6
   10fb2:	00ab4b33          	xor	s6,s6,a0
   10fb6:	fff4c393          	not	t2,s1
   10fba:	fff44293          	not	t0,s0
   10fbe:	00e3f3b3          	and	t2,t2,a4
   10fc2:	00f2f2b3          	and	t0,t0,a5
   10fc6:	0143c3b3          	xor	t2,t2,s4
   10fca:	00d2c2b3          	xor	t0,t0,a3
   10fce:	ffffcc93          	not	s9,t6
   10fd2:	fff54c13          	not	s8,a0
   10fd6:	013cfcb3          	and	s9,s9,s3
   10fda:	012c7c33          	and	s8,s8,s2
   10fde:	00ecccb3          	xor	s9,s9,a4
   10fe2:	00fc4c33          	xor	s8,s8,a5
   10fe6:	fb45ca93          	xori	s5,a1,-76
   10fea:	fff6ca13          	not	s4,a3
   10fee:	009afab3          	and	s5,s5,s1
   10ff2:	008a7a33          	and	s4,s4,s0
   10ff6:	013acab3          	xor	s5,s5,s3
   10ffa:	012a4a33          	xor	s4,s4,s2
   10ffe:	017acab3          	xor	s5,s5,s7
   11002:	016a4a33          	xor	s4,s4,s6
   11006:	019bc5b3          	xor	a1,s7,s9
   1100a:	018b46b3          	xor	a3,s6,s8
   1100e:	fff74713          	not	a4,a4
   11012:	fff7c793          	not	a5,a5
   11016:	01f77733          	and	a4,a4,t6
   1101a:	8fe9                	and	a5,a5,a0
   1101c:	8f25                	xor	a4,a4,s1
   1101e:	8fa1                	xor	a5,a5,s0
   11020:	00774733          	xor	a4,a4,t2
   11024:	0057c7b3          	xor	a5,a5,t0
   11028:	fff3c393          	not	t2,t2
   1102c:	fff2c293          	not	t0,t0
   11030:	00d69913          	slli	s2,a3,0xd
   11034:	0135d513          	srli	a0,a1,0x13
   11038:	00a96933          	or	s2,s2,a0
   1103c:	00d59993          	slli	s3,a1,0xd
   11040:	0136d513          	srli	a0,a3,0x13
   11044:	00a9e9b3          	or	s3,s3,a0
   11048:	00469f93          	slli	t6,a3,0x4
   1104c:	01c5d513          	srli	a0,a1,0x1c
   11050:	00afefb3          	or	t6,t6,a0
   11054:	00459513          	slli	a0,a1,0x4
   11058:	01c6d413          	srli	s0,a3,0x1c
   1105c:	8d41                	or	a0,a0,s0
   1105e:	01f94933          	xor	s2,s2,t6
   11062:	00a9c9b3          	xor	s3,s3,a0
   11066:	00b94933          	xor	s2,s2,a1
   1106a:	00d9c9b3          	xor	s3,s3,a3
   1106e:	01dad693          	srli	a3,s5,0x1d
   11072:	003a1593          	slli	a1,s4,0x3
   11076:	8ecd                	or	a3,a3,a1
   11078:	01da5593          	srli	a1,s4,0x1d
   1107c:	003a9513          	slli	a0,s5,0x3
   11080:	8dc9                	or	a1,a1,a0
   11082:	007ad513          	srli	a0,s5,0x7
   11086:	019a1f93          	slli	t6,s4,0x19
   1108a:	01f56533          	or	a0,a0,t6
   1108e:	007a5f93          	srli	t6,s4,0x7
   11092:	019a9413          	slli	s0,s5,0x19
   11096:	008fefb3          	or	t6,t6,s0
   1109a:	01f5c5b3          	xor	a1,a1,t6
   1109e:	8ea9                	xor	a3,a3,a0
   110a0:	0155c5b3          	xor	a1,a1,s5
   110a4:	0146c6b3          	xor	a3,a3,s4
   110a8:	01f29b13          	slli	s6,t0,0x1f
   110ac:	0013d513          	srli	a0,t2,0x1
   110b0:	00ab6b33          	or	s6,s6,a0
   110b4:	01f39b93          	slli	s7,t2,0x1f
   110b8:	0012d513          	srli	a0,t0,0x1
   110bc:	00abebb3          	or	s7,s7,a0
   110c0:	01a29f93          	slli	t6,t0,0x1a
   110c4:	0063d513          	srli	a0,t2,0x6
   110c8:	00afefb3          	or	t6,t6,a0
   110cc:	01a39513          	slli	a0,t2,0x1a
   110d0:	0062d413          	srli	s0,t0,0x6
   110d4:	8d41                	or	a0,a0,s0
   110d6:	01fb4b33          	xor	s6,s6,t6
   110da:	00abcbb3          	xor	s7,s7,a0
   110de:	007b4b33          	xor	s6,s6,t2
   110e2:	005bcbb3          	xor	s7,s7,t0
   110e6:	01679a13          	slli	s4,a5,0x16
   110ea:	00a75513          	srli	a0,a4,0xa
   110ee:	00aa6a33          	or	s4,s4,a0
   110f2:	01671a93          	slli	s5,a4,0x16
   110f6:	00a7d513          	srli	a0,a5,0xa
   110fa:	00aaeab3          	or	s5,s5,a0
   110fe:	00f79f93          	slli	t6,a5,0xf
   11102:	01175513          	srli	a0,a4,0x11
   11106:	00afefb3          	or	t6,t6,a0
   1110a:	00f71513          	slli	a0,a4,0xf
   1110e:	0117d293          	srli	t0,a5,0x11
   11112:	00556533          	or	a0,a0,t0
   11116:	01fa4a33          	xor	s4,s4,t6
   1111a:	00aacab3          	xor	s5,s5,a0
   1111e:	00ea4a33          	xor	s4,s4,a4
   11122:	00facab3          	xor	s5,s5,a5
   11126:	019c1293          	slli	t0,s8,0x19
   1112a:	007cd793          	srli	a5,s9,0x7
   1112e:	00f2e2b3          	or	t0,t0,a5
   11132:	019c9393          	slli	t2,s9,0x19
   11136:	007c5793          	srli	a5,s8,0x7
   1113a:	00f3e3b3          	or	t2,t2,a5
   1113e:	009cd793          	srli	a5,s9,0x9
   11142:	017c1713          	slli	a4,s8,0x17
   11146:	8fd9                	or	a5,a5,a4
   11148:	009c5713          	srli	a4,s8,0x9
   1114c:	017c9513          	slli	a0,s9,0x17
   11150:	8f49                	or	a4,a4,a0
   11152:	00e2c2b3          	xor	t0,t0,a4
   11156:	00f3c3b3          	xor	t2,t2,a5
   1115a:	0192c2b3          	xor	t0,t0,s9
   1115e:	0183c3b3          	xor	t2,t2,s8
   11162:	0f21                	addi	t5,t5,8
   11164:	ff8e8793          	addi	a5,t4,-8
   11168:	01d7b733          	sltu	a4,a5,t4
   1116c:	137d                	addi	t1,t1,-1 # 1013b <frame_dummy+0xf>
   1116e:	8ebe                	mv	t4,a5
   11170:	933a                	add	t1,t1,a4
   11172:	00030963          	beqz	t1,11184 <crypto_hash+0xfac>
   11176:	857a                	mv	a0,t5
   11178:	03800713          	li	a4,56
   1117c:	8446                	mv	s0,a7
   1117e:	8fc6                	mv	t6,a7
   11180:	92eff06f          	j	102ae <crypto_hash+0xd6>
   11184:	00031563          	bnez	t1,1118e <crypto_hash+0xfb6>
   11188:	479d                	li	a5,7
   1118a:	ffd7e6e3          	bltu	a5,t4,11176 <crypto_hash+0xf9e>
   1118e:	4532                	lw	a0,12(sp)
   11190:	ff860793          	addi	a5,a2,-8
   11194:	9be1                	andi	a5,a5,-8
   11196:	07a1                	addi	a5,a5,8
   11198:	9dbe                	add	s11,s11,a5
   1119a:	8a1d                	andi	a2,a2,7
   1119c:	4c72                	lw	s8,28(sp)
   1119e:	4ce2                	lw	s9,24(sp)
   111a0:	4d52                	lw	s10,20(sp)
   111a2:	04c05563          	blez	a2,111ec <crypto_hash+0x1014>
   111a6:	886e                	mv	a6,s11
   111a8:	9db2                	add	s11,s11,a2
   111aa:	03800893          	li	a7,56
   111ae:	4e01                	li	t3,0
   111b0:	4301                	li	t1,0
   111b2:	4ffd                	li	t6,31
   111b4:	4f01                	li	t5,0
   111b6:	a00d                	j	111d8 <crypto_hash+0x1000>
   111b8:	00175793          	srli	a5,a4,0x1
   111bc:	411f8eb3          	sub	t4,t6,a7
   111c0:	01d7d7b3          	srl	a5,a5,t4
   111c4:	01171733          	sll	a4,a4,a7
   111c8:	00ee6e33          	or	t3,t3,a4
   111cc:	00f36333          	or	t1,t1,a5
   111d0:	0805                	addi	a6,a6,1
   111d2:	18e1                	addi	a7,a7,-8
   111d4:	010d8e63          	beq	s11,a6,111f0 <crypto_hash+0x1018>
   111d8:	00084703          	lbu	a4,0(a6)
   111dc:	fe088793          	addi	a5,a7,-32
   111e0:	fc07cce3          	bltz	a5,111b8 <crypto_hash+0xfe0>
   111e4:	00f717b3          	sll	a5,a4,a5
   111e8:	877a                	mv	a4,t5
   111ea:	bff9                	j	111c8 <crypto_hash+0xff0>
   111ec:	4e01                	li	t3,0
   111ee:	4301                	li	t1,0
   111f0:	0165cb33          	xor	s6,a1,s6
   111f4:	0176cbb3          	xor	s7,a3,s7
   111f8:	479d                	li	a5,7
   111fa:	8f91                	sub	a5,a5,a2
   111fc:	078e                	slli	a5,a5,0x3
   111fe:	fe078713          	addi	a4,a5,-32
   11202:	00075463          	bgez	a4,1120a <crypto_hash+0x1032>
   11206:	62c0106f          	j	12832 <crypto_hash+0x265a>
   1120a:	08000f13          	li	t5,128
   1120e:	00ef1f33          	sll	t5,t5,a4
   11212:	4e81                	li	t4,0
   11214:	0122c933          	xor	s2,t0,s2
   11218:	0133c9b3          	xor	s3,t2,s3
   1121c:	012eceb3          	xor	t4,t4,s2
   11220:	013f4f33          	xor	t5,t5,s3
   11224:	01ceceb3          	xor	t4,t4,t3
   11228:	006f4f33          	xor	t5,t5,t1
   1122c:	0142c2b3          	xor	t0,t0,s4
   11230:	0153c3b3          	xor	t2,t2,s5
   11234:	0f0b4793          	xori	a5,s6,240
   11238:	fff5c813          	not	a6,a1
   1123c:	fff6cf93          	not	t6,a3
   11240:	00f87833          	and	a6,a6,a5
   11244:	017fffb3          	and	t6,t6,s7
   11248:	01d84833          	xor	a6,a6,t4
   1124c:	01efcfb3          	xor	t6,t6,t5
   11250:	fffa4e13          	not	t3,s4
   11254:	fffac313          	not	t1,s5
   11258:	005e7e33          	and	t3,t3,t0
   1125c:	00737333          	and	t1,t1,t2
   11260:	00fe4e33          	xor	t3,t3,a5
   11264:	01734333          	xor	t1,t1,s7
   11268:	fffec893          	not	a7,t4
   1126c:	ffff4613          	not	a2,t5
   11270:	00b8f8b3          	and	a7,a7,a1
   11274:	8e75                	and	a2,a2,a3
   11276:	0058c8b3          	xor	a7,a7,t0
   1127a:	00764633          	xor	a2,a2,t2
   1127e:	f0fb4713          	xori	a4,s6,-241
   11282:	fffbc793          	not	a5,s7
   11286:	01477733          	and	a4,a4,s4
   1128a:	0157f7b3          	and	a5,a5,s5
   1128e:	8f2d                	xor	a4,a4,a1
   11290:	8fb5                	xor	a5,a5,a3
   11292:	010746b3          	xor	a3,a4,a6
   11296:	01f7c7b3          	xor	a5,a5,t6
   1129a:	01184833          	xor	a6,a6,a7
   1129e:	00cfc5b3          	xor	a1,t6,a2
   112a2:	fff2cf93          	not	t6,t0
   112a6:	fff3c713          	not	a4,t2
   112aa:	01dfffb3          	and	t6,t6,t4
   112ae:	01e77733          	and	a4,a4,t5
   112b2:	01ca4a33          	xor	s4,s4,t3
   112b6:	006acab3          	xor	s5,s5,t1
   112ba:	014fcfb3          	xor	t6,t6,s4
   112be:	01574733          	xor	a4,a4,s5
   112c2:	fffe4e13          	not	t3,t3
   112c6:	fff34313          	not	t1,t1
   112ca:	01d6d413          	srli	s0,a3,0x1d
   112ce:	00379e93          	slli	t4,a5,0x3
   112d2:	01d46433          	or	s0,s0,t4
   112d6:	01d7d493          	srli	s1,a5,0x1d
   112da:	00369e93          	slli	t4,a3,0x3
   112de:	01d4e4b3          	or	s1,s1,t4
   112e2:	0076de93          	srli	t4,a3,0x7
   112e6:	01979f13          	slli	t5,a5,0x19
   112ea:	01eeeeb3          	or	t4,t4,t5
   112ee:	0077df13          	srli	t5,a5,0x7
   112f2:	01969293          	slli	t0,a3,0x19
   112f6:	005f6f33          	or	t5,t5,t0
   112fa:	01e4c4b3          	xor	s1,s1,t5
   112fe:	01d44433          	xor	s0,s0,t4
   11302:	8cb5                	xor	s1,s1,a3
   11304:	8c3d                	xor	s0,s0,a5
   11306:	01671f13          	slli	t5,a4,0x16
   1130a:	00afd793          	srli	a5,t6,0xa
   1130e:	00ff6f33          	or	t5,t5,a5
   11312:	016f9e93          	slli	t4,t6,0x16
   11316:	00a75793          	srli	a5,a4,0xa
   1131a:	00feeeb3          	or	t4,t4,a5
   1131e:	00f71693          	slli	a3,a4,0xf
   11322:	011fd793          	srli	a5,t6,0x11
   11326:	8edd                	or	a3,a3,a5
   11328:	00ff9793          	slli	a5,t6,0xf
   1132c:	01175293          	srli	t0,a4,0x11
   11330:	0057e7b3          	or	a5,a5,t0
   11334:	00df4f33          	xor	t5,t5,a3
   11338:	00feceb3          	xor	t4,t4,a5
   1133c:	01ff4f33          	xor	t5,t5,t6
   11340:	00eeceb3          	xor	t4,t4,a4
   11344:	01961713          	slli	a4,a2,0x19
   11348:	0078d793          	srli	a5,a7,0x7
   1134c:	8f5d                	or	a4,a4,a5
   1134e:	01989793          	slli	a5,a7,0x19
   11352:	00765693          	srli	a3,a2,0x7
   11356:	8fd5                	or	a5,a5,a3
   11358:	0098d693          	srli	a3,a7,0x9
   1135c:	01761f93          	slli	t6,a2,0x17
   11360:	01f6e6b3          	or	a3,a3,t6
   11364:	00965f93          	srli	t6,a2,0x9
   11368:	01789293          	slli	t0,a7,0x17
   1136c:	005fefb3          	or	t6,t6,t0
   11370:	01f74733          	xor	a4,a4,t6
   11374:	8fb5                	xor	a5,a5,a3
   11376:	01174733          	xor	a4,a4,a7
   1137a:	8fb1                	xor	a5,a5,a2
   1137c:	01f31613          	slli	a2,t1,0x1f
   11380:	001e5693          	srli	a3,t3,0x1
   11384:	8e55                	or	a2,a2,a3
   11386:	01fe1693          	slli	a3,t3,0x1f
   1138a:	00135893          	srli	a7,t1,0x1
   1138e:	0116e6b3          	or	a3,a3,a7
   11392:	01a31f93          	slli	t6,t1,0x1a
   11396:	006e5893          	srli	a7,t3,0x6
   1139a:	011fefb3          	or	t6,t6,a7
   1139e:	01ae1893          	slli	a7,t3,0x1a
   113a2:	00635293          	srli	t0,t1,0x6
   113a6:	0058e8b3          	or	a7,a7,t0
   113aa:	01f64633          	xor	a2,a2,t6
   113ae:	0116c6b3          	xor	a3,a3,a7
   113b2:	01c64633          	xor	a2,a2,t3
   113b6:	0066c6b3          	xor	a3,a3,t1
   113ba:	8e25                	xor	a2,a2,s1
   113bc:	8ea1                	xor	a3,a3,s0
   113be:	00d59393          	slli	t2,a1,0xd
   113c2:	01385893          	srli	a7,a6,0x13
   113c6:	0113e3b3          	or	t2,t2,a7
   113ca:	00d81f93          	slli	t6,a6,0xd
   113ce:	0135d893          	srli	a7,a1,0x13
   113d2:	011fefb3          	or	t6,t6,a7
   113d6:	00459313          	slli	t1,a1,0x4
   113da:	01c85893          	srli	a7,a6,0x1c
   113de:	01136333          	or	t1,t1,a7
   113e2:	00481893          	slli	a7,a6,0x4
   113e6:	01c5de13          	srli	t3,a1,0x1c
   113ea:	01c8e8b3          	or	a7,a7,t3
   113ee:	0063c3b3          	xor	t2,t2,t1
   113f2:	011fcfb3          	xor	t6,t6,a7
   113f6:	0103c3b3          	xor	t2,t2,a6
   113fa:	00bfcfb3          	xor	t6,t6,a1
   113fe:	00e3c3b3          	xor	t2,t2,a4
   11402:	00ffcfb3          	xor	t6,t6,a5
   11406:	00ef4733          	xor	a4,t5,a4
   1140a:	00fec7b3          	xor	a5,t4,a5
   1140e:	0e164893          	xori	a7,a2,225
   11412:	fff4c293          	not	t0,s1
   11416:	fff44813          	not	a6,s0
   1141a:	0112f2b3          	and	t0,t0,a7
   1141e:	00d87833          	and	a6,a6,a3
   11422:	0072c2b3          	xor	t0,t0,t2
   11426:	01f84833          	xor	a6,a6,t6
   1142a:	ffff4e13          	not	t3,t5
   1142e:	fffec593          	not	a1,t4
   11432:	00ee7e33          	and	t3,t3,a4
   11436:	8dfd                	and	a1,a1,a5
   11438:	011e4e33          	xor	t3,t3,a7
   1143c:	8db5                	xor	a1,a1,a3
   1143e:	fff3c313          	not	t1,t2
   11442:	ffffc893          	not	a7,t6
   11446:	00937333          	and	t1,t1,s1
   1144a:	0088f8b3          	and	a7,a7,s0
   1144e:	00e34333          	xor	t1,t1,a4
   11452:	00f8c8b3          	xor	a7,a7,a5
   11456:	f1e64613          	xori	a2,a2,-226
   1145a:	fff6c693          	not	a3,a3
   1145e:	01e67633          	and	a2,a2,t5
   11462:	01d6f6b3          	and	a3,a3,t4
   11466:	8e25                	xor	a2,a2,s1
   11468:	8ea1                	xor	a3,a3,s0
   1146a:	00564633          	xor	a2,a2,t0
   1146e:	0106c6b3          	xor	a3,a3,a6
   11472:	0062c2b3          	xor	t0,t0,t1
   11476:	01184833          	xor	a6,a6,a7
   1147a:	fff74713          	not	a4,a4
   1147e:	fff7c793          	not	a5,a5
   11482:	00777733          	and	a4,a4,t2
   11486:	01f7f7b3          	and	a5,a5,t6
   1148a:	01e74733          	xor	a4,a4,t5
   1148e:	01d7c7b3          	xor	a5,a5,t4
   11492:	01c74733          	xor	a4,a4,t3
   11496:	8fad                	xor	a5,a5,a1
   11498:	fffe4e13          	not	t3,t3
   1149c:	fff5c593          	not	a1,a1
   114a0:	01d65413          	srli	s0,a2,0x1d
   114a4:	00369e93          	slli	t4,a3,0x3
   114a8:	01d46433          	or	s0,s0,t4
   114ac:	01d6d493          	srli	s1,a3,0x1d
   114b0:	00361e93          	slli	t4,a2,0x3
   114b4:	01d4e4b3          	or	s1,s1,t4
   114b8:	00765e93          	srli	t4,a2,0x7
   114bc:	01969f13          	slli	t5,a3,0x19
   114c0:	01eeeeb3          	or	t4,t4,t5
   114c4:	0076df13          	srli	t5,a3,0x7
   114c8:	01961f93          	slli	t6,a2,0x19
   114cc:	01ff6f33          	or	t5,t5,t6
   114d0:	01e4c4b3          	xor	s1,s1,t5
   114d4:	01d44433          	xor	s0,s0,t4
   114d8:	8cb1                	xor	s1,s1,a2
   114da:	8c35                	xor	s0,s0,a3
   114dc:	01679f93          	slli	t6,a5,0x16
   114e0:	00a75693          	srli	a3,a4,0xa
   114e4:	00dfefb3          	or	t6,t6,a3
   114e8:	01671f13          	slli	t5,a4,0x16
   114ec:	00a7d693          	srli	a3,a5,0xa
   114f0:	00df6f33          	or	t5,t5,a3
   114f4:	00f79613          	slli	a2,a5,0xf
   114f8:	01175693          	srli	a3,a4,0x11
   114fc:	8e55                	or	a2,a2,a3
   114fe:	00f71693          	slli	a3,a4,0xf
   11502:	0117de93          	srli	t4,a5,0x11
   11506:	01d6e6b3          	or	a3,a3,t4
   1150a:	00cfcfb3          	xor	t6,t6,a2
   1150e:	00df4f33          	xor	t5,t5,a3
   11512:	00efcfb3          	xor	t6,t6,a4
   11516:	00ff4f33          	xor	t5,t5,a5
   1151a:	01989693          	slli	a3,a7,0x19
   1151e:	00735793          	srli	a5,t1,0x7
   11522:	8edd                	or	a3,a3,a5
   11524:	01931713          	slli	a4,t1,0x19
   11528:	0078d793          	srli	a5,a7,0x7
   1152c:	8f5d                	or	a4,a4,a5
   1152e:	00935793          	srli	a5,t1,0x9
   11532:	01789613          	slli	a2,a7,0x17
   11536:	8fd1                	or	a5,a5,a2
   11538:	0098d613          	srli	a2,a7,0x9
   1153c:	01731e93          	slli	t4,t1,0x17
   11540:	01d66633          	or	a2,a2,t4
   11544:	8eb1                	xor	a3,a3,a2
   11546:	8f3d                	xor	a4,a4,a5
   11548:	0066c6b3          	xor	a3,a3,t1
   1154c:	01174733          	xor	a4,a4,a7
   11550:	01f59793          	slli	a5,a1,0x1f
   11554:	001e5613          	srli	a2,t3,0x1
   11558:	8fd1                	or	a5,a5,a2
   1155a:	01fe1613          	slli	a2,t3,0x1f
   1155e:	0015d893          	srli	a7,a1,0x1
   11562:	01166633          	or	a2,a2,a7
   11566:	01a59313          	slli	t1,a1,0x1a
   1156a:	006e5893          	srli	a7,t3,0x6
   1156e:	01136333          	or	t1,t1,a7
   11572:	01ae1893          	slli	a7,t3,0x1a
   11576:	0065de93          	srli	t4,a1,0x6
   1157a:	01d8e8b3          	or	a7,a7,t4
   1157e:	0067c7b3          	xor	a5,a5,t1
   11582:	01164633          	xor	a2,a2,a7
   11586:	01c7c7b3          	xor	a5,a5,t3
   1158a:	8e2d                	xor	a2,a2,a1
   1158c:	0097c5b3          	xor	a1,a5,s1
   11590:	8e21                	xor	a2,a2,s0
   11592:	00d81393          	slli	t2,a6,0xd
   11596:	0132d793          	srli	a5,t0,0x13
   1159a:	00f3e3b3          	or	t2,t2,a5
   1159e:	00d29793          	slli	a5,t0,0xd
   115a2:	01385893          	srli	a7,a6,0x13
   115a6:	0117e7b3          	or	a5,a5,a7
   115aa:	00481313          	slli	t1,a6,0x4
   115ae:	01c2d893          	srli	a7,t0,0x1c
   115b2:	01136333          	or	t1,t1,a7
   115b6:	00429893          	slli	a7,t0,0x4
   115ba:	01c85e13          	srli	t3,a6,0x1c
   115be:	01c8e8b3          	or	a7,a7,t3
   115c2:	0063c3b3          	xor	t2,t2,t1
   115c6:	0117c7b3          	xor	a5,a5,a7
   115ca:	0053c3b3          	xor	t2,t2,t0
   115ce:	0107c2b3          	xor	t0,a5,a6
   115d2:	00d3c3b3          	xor	t2,t2,a3
   115d6:	00e2c2b3          	xor	t0,t0,a4
   115da:	00dfc6b3          	xor	a3,t6,a3
   115de:	00ef4733          	xor	a4,t5,a4
   115e2:	0d25c793          	xori	a5,a1,210
   115e6:	fff4c313          	not	t1,s1
   115ea:	fff44893          	not	a7,s0
   115ee:	00f37333          	and	t1,t1,a5
   115f2:	00c8f8b3          	and	a7,a7,a2
   115f6:	00734333          	xor	t1,t1,t2
   115fa:	0058c8b3          	xor	a7,a7,t0
   115fe:	ffffce93          	not	t4,t6
   11602:	ffff4e13          	not	t3,t5
   11606:	00defeb3          	and	t4,t4,a3
   1160a:	00ee7e33          	and	t3,t3,a4
   1160e:	00feceb3          	xor	t4,t4,a5
   11612:	00ce4e33          	xor	t3,t3,a2
   11616:	fff3c813          	not	a6,t2
   1161a:	fff2c793          	not	a5,t0
   1161e:	00987833          	and	a6,a6,s1
   11622:	8fe1                	and	a5,a5,s0
   11624:	00d84833          	xor	a6,a6,a3
   11628:	8fb9                	xor	a5,a5,a4
   1162a:	f2d5c593          	xori	a1,a1,-211
   1162e:	fff64613          	not	a2,a2
   11632:	01f5f5b3          	and	a1,a1,t6
   11636:	01e67633          	and	a2,a2,t5
   1163a:	8da5                	xor	a1,a1,s1
   1163c:	8e21                	xor	a2,a2,s0
   1163e:	0065c5b3          	xor	a1,a1,t1
   11642:	01164633          	xor	a2,a2,a7
   11646:	010349b3          	xor	s3,t1,a6
   1164a:	00f8c933          	xor	s2,a7,a5
   1164e:	fff6c693          	not	a3,a3
   11652:	fff74713          	not	a4,a4
   11656:	0076f6b3          	and	a3,a3,t2
   1165a:	00577733          	and	a4,a4,t0
   1165e:	01f6c6b3          	xor	a3,a3,t6
   11662:	01e74733          	xor	a4,a4,t5
   11666:	01d6c6b3          	xor	a3,a3,t4
   1166a:	01c74733          	xor	a4,a4,t3
   1166e:	fffece93          	not	t4,t4
   11672:	fffe4e13          	not	t3,t3
   11676:	01d5d413          	srli	s0,a1,0x1d
   1167a:	00361f13          	slli	t5,a2,0x3
   1167e:	01e46433          	or	s0,s0,t5
   11682:	01d65493          	srli	s1,a2,0x1d
   11686:	00359f13          	slli	t5,a1,0x3
   1168a:	01e4e4b3          	or	s1,s1,t5
   1168e:	0075df13          	srli	t5,a1,0x7
   11692:	01961f93          	slli	t6,a2,0x19
   11696:	01ff6f33          	or	t5,t5,t6
   1169a:	00765f93          	srli	t6,a2,0x7
   1169e:	01959293          	slli	t0,a1,0x19
   116a2:	005fefb3          	or	t6,t6,t0
   116a6:	01f4c4b3          	xor	s1,s1,t6
   116aa:	01e44433          	xor	s0,s0,t5
   116ae:	8cad                	xor	s1,s1,a1
   116b0:	8c31                	xor	s0,s0,a2
   116b2:	01671f93          	slli	t6,a4,0x16
   116b6:	00a6d613          	srli	a2,a3,0xa
   116ba:	00cfefb3          	or	t6,t6,a2
   116be:	01669f13          	slli	t5,a3,0x16
   116c2:	00a75613          	srli	a2,a4,0xa
   116c6:	00cf6f33          	or	t5,t5,a2
   116ca:	00f71593          	slli	a1,a4,0xf
   116ce:	0116d613          	srli	a2,a3,0x11
   116d2:	8dd1                	or	a1,a1,a2
   116d4:	00f69613          	slli	a2,a3,0xf
   116d8:	01175293          	srli	t0,a4,0x11
   116dc:	00566633          	or	a2,a2,t0
   116e0:	00bfcfb3          	xor	t6,t6,a1
   116e4:	00cf4f33          	xor	t5,t5,a2
   116e8:	00dfcfb3          	xor	t6,t6,a3
   116ec:	00ef4f33          	xor	t5,t5,a4
   116f0:	01979693          	slli	a3,a5,0x19
   116f4:	00785713          	srli	a4,a6,0x7
   116f8:	8ed9                	or	a3,a3,a4
   116fa:	01981a13          	slli	s4,a6,0x19
   116fe:	0077d713          	srli	a4,a5,0x7
   11702:	00ea6a33          	or	s4,s4,a4
   11706:	00985713          	srli	a4,a6,0x9
   1170a:	01779613          	slli	a2,a5,0x17
   1170e:	8f51                	or	a4,a4,a2
   11710:	0097d613          	srli	a2,a5,0x9
   11714:	01781593          	slli	a1,a6,0x17
   11718:	8e4d                	or	a2,a2,a1
   1171a:	8eb1                	xor	a3,a3,a2
   1171c:	00ea4a33          	xor	s4,s4,a4
   11720:	01fe1593          	slli	a1,t3,0x1f
   11724:	001ed713          	srli	a4,t4,0x1
   11728:	8dd9                	or	a1,a1,a4
   1172a:	01fe9613          	slli	a2,t4,0x1f
   1172e:	001e5713          	srli	a4,t3,0x1
   11732:	8e59                	or	a2,a2,a4
   11734:	01ae1293          	slli	t0,t3,0x1a
   11738:	006ed713          	srli	a4,t4,0x6
   1173c:	00e2e2b3          	or	t0,t0,a4
   11740:	01ae9713          	slli	a4,t4,0x1a
   11744:	006e5393          	srli	t2,t3,0x6
   11748:	00776733          	or	a4,a4,t2
   1174c:	0055c5b3          	xor	a1,a1,t0
   11750:	8e39                	xor	a2,a2,a4
   11752:	01d5c5b3          	xor	a1,a1,t4
   11756:	01c64633          	xor	a2,a2,t3
   1175a:	8da5                	xor	a1,a1,s1
   1175c:	8e21                	xor	a2,a2,s0
   1175e:	00d343b3          	xor	t2,t1,a3
   11762:	0148c2b3          	xor	t0,a7,s4
   11766:	00d91893          	slli	a7,s2,0xd
   1176a:	0139d713          	srli	a4,s3,0x13
   1176e:	00e8e8b3          	or	a7,a7,a4
   11772:	00d99713          	slli	a4,s3,0xd
   11776:	01395313          	srli	t1,s2,0x13
   1177a:	00676733          	or	a4,a4,t1
   1177e:	0113c3b3          	xor	t2,t2,a7
   11782:	00e2c2b3          	xor	t0,t0,a4
   11786:	00491893          	slli	a7,s2,0x4
   1178a:	01c9d713          	srli	a4,s3,0x1c
   1178e:	00e8e8b3          	or	a7,a7,a4
   11792:	00499713          	slli	a4,s3,0x4
   11796:	01c95913          	srli	s2,s2,0x1c
   1179a:	01276733          	or	a4,a4,s2
   1179e:	0113c3b3          	xor	t2,t2,a7
   117a2:	00e2c2b3          	xor	t0,t0,a4
   117a6:	00d846b3          	xor	a3,a6,a3
   117aa:	0147c733          	xor	a4,a5,s4
   117ae:	01f6c6b3          	xor	a3,a3,t6
   117b2:	01e74733          	xor	a4,a4,t5
   117b6:	0c35c793          	xori	a5,a1,195
   117ba:	fff4c313          	not	t1,s1
   117be:	fff44893          	not	a7,s0
   117c2:	00f37333          	and	t1,t1,a5
   117c6:	00c8f8b3          	and	a7,a7,a2
   117ca:	00734333          	xor	t1,t1,t2
   117ce:	0058c8b3          	xor	a7,a7,t0
   117d2:	ffffce93          	not	t4,t6
   117d6:	ffff4e13          	not	t3,t5
   117da:	00defeb3          	and	t4,t4,a3
   117de:	00ee7e33          	and	t3,t3,a4
   117e2:	00feceb3          	xor	t4,t4,a5
   117e6:	00ce4e33          	xor	t3,t3,a2
   117ea:	fff3c813          	not	a6,t2
   117ee:	fff2c793          	not	a5,t0
   117f2:	00987833          	and	a6,a6,s1
   117f6:	8fe1                	and	a5,a5,s0
   117f8:	00d84833          	xor	a6,a6,a3
   117fc:	8fb9                	xor	a5,a5,a4
   117fe:	f3c5c593          	xori	a1,a1,-196
   11802:	fff64613          	not	a2,a2
   11806:	01f5f5b3          	and	a1,a1,t6
   1180a:	01e67633          	and	a2,a2,t5
   1180e:	8da5                	xor	a1,a1,s1
   11810:	8e21                	xor	a2,a2,s0
   11812:	0065c5b3          	xor	a1,a1,t1
   11816:	01164633          	xor	a2,a2,a7
   1181a:	01034933          	xor	s2,t1,a6
   1181e:	00f8c9b3          	xor	s3,a7,a5
   11822:	fff6c693          	not	a3,a3
   11826:	fff74713          	not	a4,a4
   1182a:	0076f6b3          	and	a3,a3,t2
   1182e:	00577733          	and	a4,a4,t0
   11832:	01f6c6b3          	xor	a3,a3,t6
   11836:	01e74733          	xor	a4,a4,t5
   1183a:	01d6c6b3          	xor	a3,a3,t4
   1183e:	01c74733          	xor	a4,a4,t3
   11842:	fffece93          	not	t4,t4
   11846:	fffe4e13          	not	t3,t3
   1184a:	01d5d413          	srli	s0,a1,0x1d
   1184e:	00361f13          	slli	t5,a2,0x3
   11852:	01e46433          	or	s0,s0,t5
   11856:	01d65493          	srli	s1,a2,0x1d
   1185a:	00359f13          	slli	t5,a1,0x3
   1185e:	01e4e4b3          	or	s1,s1,t5
   11862:	0075df13          	srli	t5,a1,0x7
   11866:	01961f93          	slli	t6,a2,0x19
   1186a:	01ff6f33          	or	t5,t5,t6
   1186e:	00765f93          	srli	t6,a2,0x7
   11872:	01959293          	slli	t0,a1,0x19
   11876:	005fefb3          	or	t6,t6,t0
   1187a:	01f4c4b3          	xor	s1,s1,t6
   1187e:	01e44433          	xor	s0,s0,t5
   11882:	8cad                	xor	s1,s1,a1
   11884:	8c31                	xor	s0,s0,a2
   11886:	01671f93          	slli	t6,a4,0x16
   1188a:	00a6d613          	srli	a2,a3,0xa
   1188e:	00cfefb3          	or	t6,t6,a2
   11892:	01669f13          	slli	t5,a3,0x16
   11896:	00a75613          	srli	a2,a4,0xa
   1189a:	00cf6f33          	or	t5,t5,a2
   1189e:	00f71593          	slli	a1,a4,0xf
   118a2:	0116d613          	srli	a2,a3,0x11
   118a6:	8dd1                	or	a1,a1,a2
   118a8:	00f69613          	slli	a2,a3,0xf
   118ac:	01175293          	srli	t0,a4,0x11
   118b0:	00566633          	or	a2,a2,t0
   118b4:	00bfcfb3          	xor	t6,t6,a1
   118b8:	00cf4f33          	xor	t5,t5,a2
   118bc:	00dfcfb3          	xor	t6,t6,a3
   118c0:	00ef4f33          	xor	t5,t5,a4
   118c4:	01979693          	slli	a3,a5,0x19
   118c8:	00785713          	srli	a4,a6,0x7
   118cc:	8ed9                	or	a3,a3,a4
   118ce:	01981a13          	slli	s4,a6,0x19
   118d2:	0077d713          	srli	a4,a5,0x7
   118d6:	00ea6a33          	or	s4,s4,a4
   118da:	00985713          	srli	a4,a6,0x9
   118de:	01779613          	slli	a2,a5,0x17
   118e2:	8f51                	or	a4,a4,a2
   118e4:	0097d613          	srli	a2,a5,0x9
   118e8:	01781593          	slli	a1,a6,0x17
   118ec:	8e4d                	or	a2,a2,a1
   118ee:	8eb1                	xor	a3,a3,a2
   118f0:	00ea4a33          	xor	s4,s4,a4
   118f4:	01fe1593          	slli	a1,t3,0x1f
   118f8:	001ed713          	srli	a4,t4,0x1
   118fc:	8dd9                	or	a1,a1,a4
   118fe:	01fe9613          	slli	a2,t4,0x1f
   11902:	001e5713          	srli	a4,t3,0x1
   11906:	8e59                	or	a2,a2,a4
   11908:	01ae1293          	slli	t0,t3,0x1a
   1190c:	006ed713          	srli	a4,t4,0x6
   11910:	00e2e2b3          	or	t0,t0,a4
   11914:	01ae9713          	slli	a4,t4,0x1a
   11918:	006e5393          	srli	t2,t3,0x6
   1191c:	00776733          	or	a4,a4,t2
   11920:	0055c5b3          	xor	a1,a1,t0
   11924:	8e39                	xor	a2,a2,a4
   11926:	01d5c5b3          	xor	a1,a1,t4
   1192a:	01c64633          	xor	a2,a2,t3
   1192e:	8da5                	xor	a1,a1,s1
   11930:	8e21                	xor	a2,a2,s0
   11932:	00d343b3          	xor	t2,t1,a3
   11936:	0148c2b3          	xor	t0,a7,s4
   1193a:	00d99893          	slli	a7,s3,0xd
   1193e:	01395713          	srli	a4,s2,0x13
   11942:	00e8e8b3          	or	a7,a7,a4
   11946:	00d91713          	slli	a4,s2,0xd
   1194a:	0139d313          	srli	t1,s3,0x13
   1194e:	00676733          	or	a4,a4,t1
   11952:	0113c3b3          	xor	t2,t2,a7
   11956:	00e2c2b3          	xor	t0,t0,a4
   1195a:	00499893          	slli	a7,s3,0x4
   1195e:	01c95713          	srli	a4,s2,0x1c
   11962:	00e8e8b3          	or	a7,a7,a4
   11966:	00491713          	slli	a4,s2,0x4
   1196a:	01c9d993          	srli	s3,s3,0x1c
   1196e:	01376733          	or	a4,a4,s3
   11972:	0113c3b3          	xor	t2,t2,a7
   11976:	00e2c2b3          	xor	t0,t0,a4
   1197a:	00d846b3          	xor	a3,a6,a3
   1197e:	0147c733          	xor	a4,a5,s4
   11982:	01f6c6b3          	xor	a3,a3,t6
   11986:	01e74733          	xor	a4,a4,t5
   1198a:	0b45c793          	xori	a5,a1,180
   1198e:	fff4c313          	not	t1,s1
   11992:	fff44893          	not	a7,s0
   11996:	00f37333          	and	t1,t1,a5
   1199a:	00c8f8b3          	and	a7,a7,a2
   1199e:	00734333          	xor	t1,t1,t2
   119a2:	0058c8b3          	xor	a7,a7,t0
   119a6:	ffffce93          	not	t4,t6
   119aa:	ffff4e13          	not	t3,t5
   119ae:	00defeb3          	and	t4,t4,a3
   119b2:	00ee7e33          	and	t3,t3,a4
   119b6:	00feceb3          	xor	t4,t4,a5
   119ba:	00ce4e33          	xor	t3,t3,a2
   119be:	fff3c813          	not	a6,t2
   119c2:	fff2c793          	not	a5,t0
   119c6:	00987833          	and	a6,a6,s1
   119ca:	8fe1                	and	a5,a5,s0
   119cc:	00d84833          	xor	a6,a6,a3
   119d0:	8fb9                	xor	a5,a5,a4
   119d2:	f4b5c593          	xori	a1,a1,-181
   119d6:	fff64613          	not	a2,a2
   119da:	01f5f5b3          	and	a1,a1,t6
   119de:	01e67633          	and	a2,a2,t5
   119e2:	8da5                	xor	a1,a1,s1
   119e4:	8e21                	xor	a2,a2,s0
   119e6:	0065c5b3          	xor	a1,a1,t1
   119ea:	01164633          	xor	a2,a2,a7
   119ee:	01034933          	xor	s2,t1,a6
   119f2:	00f8c9b3          	xor	s3,a7,a5
   119f6:	fff6c693          	not	a3,a3
   119fa:	fff74713          	not	a4,a4
   119fe:	0076f6b3          	and	a3,a3,t2
   11a02:	00577733          	and	a4,a4,t0
   11a06:	01f6c6b3          	xor	a3,a3,t6
   11a0a:	01e74733          	xor	a4,a4,t5
   11a0e:	01d6c6b3          	xor	a3,a3,t4
   11a12:	01c74733          	xor	a4,a4,t3
   11a16:	fffece93          	not	t4,t4
   11a1a:	fffe4e13          	not	t3,t3
   11a1e:	01d5d413          	srli	s0,a1,0x1d
   11a22:	00361f13          	slli	t5,a2,0x3
   11a26:	01e46433          	or	s0,s0,t5
   11a2a:	01d65493          	srli	s1,a2,0x1d
   11a2e:	00359f13          	slli	t5,a1,0x3
   11a32:	01e4e4b3          	or	s1,s1,t5
   11a36:	0075df13          	srli	t5,a1,0x7
   11a3a:	01961f93          	slli	t6,a2,0x19
   11a3e:	01ff6f33          	or	t5,t5,t6
   11a42:	00765f93          	srli	t6,a2,0x7
   11a46:	01959293          	slli	t0,a1,0x19
   11a4a:	005fefb3          	or	t6,t6,t0
   11a4e:	01f4c4b3          	xor	s1,s1,t6
   11a52:	01e44433          	xor	s0,s0,t5
   11a56:	8cad                	xor	s1,s1,a1
   11a58:	8c31                	xor	s0,s0,a2
   11a5a:	01671f93          	slli	t6,a4,0x16
   11a5e:	00a6d613          	srli	a2,a3,0xa
   11a62:	00cfefb3          	or	t6,t6,a2
   11a66:	01669f13          	slli	t5,a3,0x16
   11a6a:	00a75613          	srli	a2,a4,0xa
   11a6e:	00cf6f33          	or	t5,t5,a2
   11a72:	00f71593          	slli	a1,a4,0xf
   11a76:	0116d613          	srli	a2,a3,0x11
   11a7a:	8dd1                	or	a1,a1,a2
   11a7c:	00f69613          	slli	a2,a3,0xf
   11a80:	01175293          	srli	t0,a4,0x11
   11a84:	00566633          	or	a2,a2,t0
   11a88:	00bfcfb3          	xor	t6,t6,a1
   11a8c:	00cf4f33          	xor	t5,t5,a2
   11a90:	00dfcfb3          	xor	t6,t6,a3
   11a94:	00ef4f33          	xor	t5,t5,a4
   11a98:	01979693          	slli	a3,a5,0x19
   11a9c:	00785713          	srli	a4,a6,0x7
   11aa0:	8ed9                	or	a3,a3,a4
   11aa2:	01981a13          	slli	s4,a6,0x19
   11aa6:	0077d713          	srli	a4,a5,0x7
   11aaa:	00ea6a33          	or	s4,s4,a4
   11aae:	00985713          	srli	a4,a6,0x9
   11ab2:	01779613          	slli	a2,a5,0x17
   11ab6:	8f51                	or	a4,a4,a2
   11ab8:	0097d613          	srli	a2,a5,0x9
   11abc:	01781593          	slli	a1,a6,0x17
   11ac0:	8e4d                	or	a2,a2,a1
   11ac2:	8eb1                	xor	a3,a3,a2
   11ac4:	00ea4a33          	xor	s4,s4,a4
   11ac8:	01fe1593          	slli	a1,t3,0x1f
   11acc:	001ed713          	srli	a4,t4,0x1
   11ad0:	8dd9                	or	a1,a1,a4
   11ad2:	01fe9613          	slli	a2,t4,0x1f
   11ad6:	001e5713          	srli	a4,t3,0x1
   11ada:	8e59                	or	a2,a2,a4
   11adc:	01ae1293          	slli	t0,t3,0x1a
   11ae0:	006ed713          	srli	a4,t4,0x6
   11ae4:	00e2e2b3          	or	t0,t0,a4
   11ae8:	01ae9713          	slli	a4,t4,0x1a
   11aec:	006e5393          	srli	t2,t3,0x6
   11af0:	00776733          	or	a4,a4,t2
   11af4:	0055c5b3          	xor	a1,a1,t0
   11af8:	8e39                	xor	a2,a2,a4
   11afa:	01d5c5b3          	xor	a1,a1,t4
   11afe:	01c64633          	xor	a2,a2,t3
   11b02:	8da5                	xor	a1,a1,s1
   11b04:	8e21                	xor	a2,a2,s0
   11b06:	00d343b3          	xor	t2,t1,a3
   11b0a:	0148c2b3          	xor	t0,a7,s4
   11b0e:	00d99893          	slli	a7,s3,0xd
   11b12:	01395713          	srli	a4,s2,0x13
   11b16:	00e8e8b3          	or	a7,a7,a4
   11b1a:	00d91713          	slli	a4,s2,0xd
   11b1e:	0139d313          	srli	t1,s3,0x13
   11b22:	00676733          	or	a4,a4,t1
   11b26:	0113c3b3          	xor	t2,t2,a7
   11b2a:	00e2c2b3          	xor	t0,t0,a4
   11b2e:	00499893          	slli	a7,s3,0x4
   11b32:	01c95713          	srli	a4,s2,0x1c
   11b36:	00e8e8b3          	or	a7,a7,a4
   11b3a:	00491713          	slli	a4,s2,0x4
   11b3e:	01c9d993          	srli	s3,s3,0x1c
   11b42:	01376733          	or	a4,a4,s3
   11b46:	0113c3b3          	xor	t2,t2,a7
   11b4a:	00e2c2b3          	xor	t0,t0,a4
   11b4e:	00d846b3          	xor	a3,a6,a3
   11b52:	0147c733          	xor	a4,a5,s4
   11b56:	01f6c6b3          	xor	a3,a3,t6
   11b5a:	01e74733          	xor	a4,a4,t5
   11b5e:	0a55c793          	xori	a5,a1,165
   11b62:	fff4c313          	not	t1,s1
   11b66:	fff44893          	not	a7,s0
   11b6a:	00f37333          	and	t1,t1,a5
   11b6e:	00c8f8b3          	and	a7,a7,a2
   11b72:	00734333          	xor	t1,t1,t2
   11b76:	0058c8b3          	xor	a7,a7,t0
   11b7a:	ffffce93          	not	t4,t6
   11b7e:	ffff4e13          	not	t3,t5
   11b82:	00defeb3          	and	t4,t4,a3
   11b86:	00ee7e33          	and	t3,t3,a4
   11b8a:	00feceb3          	xor	t4,t4,a5
   11b8e:	00ce4e33          	xor	t3,t3,a2
   11b92:	fff3c813          	not	a6,t2
   11b96:	fff2c793          	not	a5,t0
   11b9a:	00987833          	and	a6,a6,s1
   11b9e:	8fe1                	and	a5,a5,s0
   11ba0:	00d84833          	xor	a6,a6,a3
   11ba4:	8fb9                	xor	a5,a5,a4
   11ba6:	f5a5c593          	xori	a1,a1,-166
   11baa:	fff64613          	not	a2,a2
   11bae:	01f5f5b3          	and	a1,a1,t6
   11bb2:	01e67633          	and	a2,a2,t5
   11bb6:	8da5                	xor	a1,a1,s1
   11bb8:	8e21                	xor	a2,a2,s0
   11bba:	0065c5b3          	xor	a1,a1,t1
   11bbe:	01164633          	xor	a2,a2,a7
   11bc2:	01034933          	xor	s2,t1,a6
   11bc6:	00f8c9b3          	xor	s3,a7,a5
   11bca:	fff6c693          	not	a3,a3
   11bce:	fff74713          	not	a4,a4
   11bd2:	0076f6b3          	and	a3,a3,t2
   11bd6:	00577733          	and	a4,a4,t0
   11bda:	01f6c6b3          	xor	a3,a3,t6
   11bde:	01e74733          	xor	a4,a4,t5
   11be2:	01d6c6b3          	xor	a3,a3,t4
   11be6:	01c74733          	xor	a4,a4,t3
   11bea:	fffece93          	not	t4,t4
   11bee:	fffe4e13          	not	t3,t3
   11bf2:	01d5d413          	srli	s0,a1,0x1d
   11bf6:	00361f13          	slli	t5,a2,0x3
   11bfa:	01e46433          	or	s0,s0,t5
   11bfe:	01d65493          	srli	s1,a2,0x1d
   11c02:	00359f13          	slli	t5,a1,0x3
   11c06:	01e4e4b3          	or	s1,s1,t5
   11c0a:	0075df13          	srli	t5,a1,0x7
   11c0e:	01961f93          	slli	t6,a2,0x19
   11c12:	01ff6f33          	or	t5,t5,t6
   11c16:	00765f93          	srli	t6,a2,0x7
   11c1a:	01959293          	slli	t0,a1,0x19
   11c1e:	005fefb3          	or	t6,t6,t0
   11c22:	01f4c4b3          	xor	s1,s1,t6
   11c26:	01e44433          	xor	s0,s0,t5
   11c2a:	8cad                	xor	s1,s1,a1
   11c2c:	8c31                	xor	s0,s0,a2
   11c2e:	01671f93          	slli	t6,a4,0x16
   11c32:	00a6d613          	srli	a2,a3,0xa
   11c36:	00cfefb3          	or	t6,t6,a2
   11c3a:	01669f13          	slli	t5,a3,0x16
   11c3e:	00a75613          	srli	a2,a4,0xa
   11c42:	00cf6f33          	or	t5,t5,a2
   11c46:	00f71593          	slli	a1,a4,0xf
   11c4a:	0116d613          	srli	a2,a3,0x11
   11c4e:	8dd1                	or	a1,a1,a2
   11c50:	00f69613          	slli	a2,a3,0xf
   11c54:	01175293          	srli	t0,a4,0x11
   11c58:	00566633          	or	a2,a2,t0
   11c5c:	00bfcfb3          	xor	t6,t6,a1
   11c60:	00cf4f33          	xor	t5,t5,a2
   11c64:	00dfcfb3          	xor	t6,t6,a3
   11c68:	00ef4f33          	xor	t5,t5,a4
   11c6c:	01979693          	slli	a3,a5,0x19
   11c70:	00785713          	srli	a4,a6,0x7
   11c74:	8ed9                	or	a3,a3,a4
   11c76:	01981a13          	slli	s4,a6,0x19
   11c7a:	0077d713          	srli	a4,a5,0x7
   11c7e:	00ea6a33          	or	s4,s4,a4
   11c82:	00985713          	srli	a4,a6,0x9
   11c86:	01779613          	slli	a2,a5,0x17
   11c8a:	8f51                	or	a4,a4,a2
   11c8c:	0097d613          	srli	a2,a5,0x9
   11c90:	01781593          	slli	a1,a6,0x17
   11c94:	8e4d                	or	a2,a2,a1
   11c96:	8eb1                	xor	a3,a3,a2
   11c98:	00ea4a33          	xor	s4,s4,a4
   11c9c:	01fe1593          	slli	a1,t3,0x1f
   11ca0:	001ed713          	srli	a4,t4,0x1
   11ca4:	8dd9                	or	a1,a1,a4
   11ca6:	01fe9613          	slli	a2,t4,0x1f
   11caa:	001e5713          	srli	a4,t3,0x1
   11cae:	8e59                	or	a2,a2,a4
   11cb0:	01ae1293          	slli	t0,t3,0x1a
   11cb4:	006ed713          	srli	a4,t4,0x6
   11cb8:	00e2e2b3          	or	t0,t0,a4
   11cbc:	01ae9713          	slli	a4,t4,0x1a
   11cc0:	006e5393          	srli	t2,t3,0x6
   11cc4:	00776733          	or	a4,a4,t2
   11cc8:	0055c5b3          	xor	a1,a1,t0
   11ccc:	8e39                	xor	a2,a2,a4
   11cce:	01d5c5b3          	xor	a1,a1,t4
   11cd2:	01c64633          	xor	a2,a2,t3
   11cd6:	8da5                	xor	a1,a1,s1
   11cd8:	8e21                	xor	a2,a2,s0
   11cda:	00d343b3          	xor	t2,t1,a3
   11cde:	0148c2b3          	xor	t0,a7,s4
   11ce2:	00d99893          	slli	a7,s3,0xd
   11ce6:	01395713          	srli	a4,s2,0x13
   11cea:	00e8e8b3          	or	a7,a7,a4
   11cee:	00d91713          	slli	a4,s2,0xd
   11cf2:	0139d313          	srli	t1,s3,0x13
   11cf6:	00676733          	or	a4,a4,t1
   11cfa:	0113c3b3          	xor	t2,t2,a7
   11cfe:	00e2c2b3          	xor	t0,t0,a4
   11d02:	00499893          	slli	a7,s3,0x4
   11d06:	01c95713          	srli	a4,s2,0x1c
   11d0a:	00e8e8b3          	or	a7,a7,a4
   11d0e:	00491713          	slli	a4,s2,0x4
   11d12:	01c9d993          	srli	s3,s3,0x1c
   11d16:	01376733          	or	a4,a4,s3
   11d1a:	0113c3b3          	xor	t2,t2,a7
   11d1e:	00e2c2b3          	xor	t0,t0,a4
   11d22:	00d846b3          	xor	a3,a6,a3
   11d26:	0147c733          	xor	a4,a5,s4
   11d2a:	01f6c6b3          	xor	a3,a3,t6
   11d2e:	01e74733          	xor	a4,a4,t5
   11d32:	0965c793          	xori	a5,a1,150
   11d36:	fff4c313          	not	t1,s1
   11d3a:	fff44893          	not	a7,s0
   11d3e:	00f37333          	and	t1,t1,a5
   11d42:	00c8f8b3          	and	a7,a7,a2
   11d46:	00734333          	xor	t1,t1,t2
   11d4a:	0058c8b3          	xor	a7,a7,t0
   11d4e:	ffffce93          	not	t4,t6
   11d52:	ffff4e13          	not	t3,t5
   11d56:	00defeb3          	and	t4,t4,a3
   11d5a:	00ee7e33          	and	t3,t3,a4
   11d5e:	00feceb3          	xor	t4,t4,a5
   11d62:	00ce4e33          	xor	t3,t3,a2
   11d66:	fff3c813          	not	a6,t2
   11d6a:	fff2c793          	not	a5,t0
   11d6e:	00987833          	and	a6,a6,s1
   11d72:	8fe1                	and	a5,a5,s0
   11d74:	00d84833          	xor	a6,a6,a3
   11d78:	8fb9                	xor	a5,a5,a4
   11d7a:	f695c593          	xori	a1,a1,-151
   11d7e:	fff64613          	not	a2,a2
   11d82:	01f5f5b3          	and	a1,a1,t6
   11d86:	01e67633          	and	a2,a2,t5
   11d8a:	8da5                	xor	a1,a1,s1
   11d8c:	8e21                	xor	a2,a2,s0
   11d8e:	0065c5b3          	xor	a1,a1,t1
   11d92:	01164633          	xor	a2,a2,a7
   11d96:	01034933          	xor	s2,t1,a6
   11d9a:	00f8c9b3          	xor	s3,a7,a5
   11d9e:	fff6c693          	not	a3,a3
   11da2:	fff74713          	not	a4,a4
   11da6:	0076f6b3          	and	a3,a3,t2
   11daa:	00577733          	and	a4,a4,t0
   11dae:	01f6c6b3          	xor	a3,a3,t6
   11db2:	01e74733          	xor	a4,a4,t5
   11db6:	01d6c6b3          	xor	a3,a3,t4
   11dba:	01c74733          	xor	a4,a4,t3
   11dbe:	fffece93          	not	t4,t4
   11dc2:	fffe4e13          	not	t3,t3
   11dc6:	01d5d413          	srli	s0,a1,0x1d
   11dca:	00361f13          	slli	t5,a2,0x3
   11dce:	01e46433          	or	s0,s0,t5
   11dd2:	01d65493          	srli	s1,a2,0x1d
   11dd6:	00359f13          	slli	t5,a1,0x3
   11dda:	01e4e4b3          	or	s1,s1,t5
   11dde:	0075df13          	srli	t5,a1,0x7
   11de2:	01961f93          	slli	t6,a2,0x19
   11de6:	01ff6f33          	or	t5,t5,t6
   11dea:	00765f93          	srli	t6,a2,0x7
   11dee:	01959293          	slli	t0,a1,0x19
   11df2:	005fefb3          	or	t6,t6,t0
   11df6:	01f4c4b3          	xor	s1,s1,t6
   11dfa:	01e44433          	xor	s0,s0,t5
   11dfe:	8cad                	xor	s1,s1,a1
   11e00:	8c31                	xor	s0,s0,a2
   11e02:	01671f93          	slli	t6,a4,0x16
   11e06:	00a6d613          	srli	a2,a3,0xa
   11e0a:	00cfefb3          	or	t6,t6,a2
   11e0e:	01669f13          	slli	t5,a3,0x16
   11e12:	00a75613          	srli	a2,a4,0xa
   11e16:	00cf6f33          	or	t5,t5,a2
   11e1a:	00f71593          	slli	a1,a4,0xf
   11e1e:	0116d613          	srli	a2,a3,0x11
   11e22:	8dd1                	or	a1,a1,a2
   11e24:	00f69613          	slli	a2,a3,0xf
   11e28:	01175293          	srli	t0,a4,0x11
   11e2c:	00566633          	or	a2,a2,t0
   11e30:	00bfcfb3          	xor	t6,t6,a1
   11e34:	00cf4f33          	xor	t5,t5,a2
   11e38:	00dfcfb3          	xor	t6,t6,a3
   11e3c:	00ef4f33          	xor	t5,t5,a4
   11e40:	01979693          	slli	a3,a5,0x19
   11e44:	00785713          	srli	a4,a6,0x7
   11e48:	8ed9                	or	a3,a3,a4
   11e4a:	01981a13          	slli	s4,a6,0x19
   11e4e:	0077d713          	srli	a4,a5,0x7
   11e52:	00ea6a33          	or	s4,s4,a4
   11e56:	00985713          	srli	a4,a6,0x9
   11e5a:	01779613          	slli	a2,a5,0x17
   11e5e:	8f51                	or	a4,a4,a2
   11e60:	0097d613          	srli	a2,a5,0x9
   11e64:	01781593          	slli	a1,a6,0x17
   11e68:	8e4d                	or	a2,a2,a1
   11e6a:	8eb1                	xor	a3,a3,a2
   11e6c:	00ea4a33          	xor	s4,s4,a4
   11e70:	01fe1593          	slli	a1,t3,0x1f
   11e74:	001ed713          	srli	a4,t4,0x1
   11e78:	8dd9                	or	a1,a1,a4
   11e7a:	01fe9613          	slli	a2,t4,0x1f
   11e7e:	001e5713          	srli	a4,t3,0x1
   11e82:	8e59                	or	a2,a2,a4
   11e84:	01ae1293          	slli	t0,t3,0x1a
   11e88:	006ed713          	srli	a4,t4,0x6
   11e8c:	00e2e2b3          	or	t0,t0,a4
   11e90:	01ae9713          	slli	a4,t4,0x1a
   11e94:	006e5393          	srli	t2,t3,0x6
   11e98:	00776733          	or	a4,a4,t2
   11e9c:	0055c5b3          	xor	a1,a1,t0
   11ea0:	8e39                	xor	a2,a2,a4
   11ea2:	01d5c5b3          	xor	a1,a1,t4
   11ea6:	01c64633          	xor	a2,a2,t3
   11eaa:	8da5                	xor	a1,a1,s1
   11eac:	8e21                	xor	a2,a2,s0
   11eae:	00d343b3          	xor	t2,t1,a3
   11eb2:	0148c2b3          	xor	t0,a7,s4
   11eb6:	00d99893          	slli	a7,s3,0xd
   11eba:	01395713          	srli	a4,s2,0x13
   11ebe:	00e8e8b3          	or	a7,a7,a4
   11ec2:	00d91713          	slli	a4,s2,0xd
   11ec6:	0139d313          	srli	t1,s3,0x13
   11eca:	00676733          	or	a4,a4,t1
   11ece:	0113c3b3          	xor	t2,t2,a7
   11ed2:	00e2c2b3          	xor	t0,t0,a4
   11ed6:	00499893          	slli	a7,s3,0x4
   11eda:	01c95713          	srli	a4,s2,0x1c
   11ede:	00e8e8b3          	or	a7,a7,a4
   11ee2:	00491713          	slli	a4,s2,0x4
   11ee6:	01c9d993          	srli	s3,s3,0x1c
   11eea:	01376733          	or	a4,a4,s3
   11eee:	0113c3b3          	xor	t2,t2,a7
   11ef2:	00e2c2b3          	xor	t0,t0,a4
   11ef6:	00d846b3          	xor	a3,a6,a3
   11efa:	0147c733          	xor	a4,a5,s4
   11efe:	01f6c6b3          	xor	a3,a3,t6
   11f02:	01e74733          	xor	a4,a4,t5
   11f06:	0875c793          	xori	a5,a1,135
   11f0a:	fff4c313          	not	t1,s1
   11f0e:	fff44893          	not	a7,s0
   11f12:	00f37333          	and	t1,t1,a5
   11f16:	00c8f8b3          	and	a7,a7,a2
   11f1a:	00734333          	xor	t1,t1,t2
   11f1e:	0058c8b3          	xor	a7,a7,t0
   11f22:	ffffce93          	not	t4,t6
   11f26:	ffff4e13          	not	t3,t5
   11f2a:	00defeb3          	and	t4,t4,a3
   11f2e:	00ee7e33          	and	t3,t3,a4
   11f32:	00feceb3          	xor	t4,t4,a5
   11f36:	00ce4e33          	xor	t3,t3,a2
   11f3a:	fff3c813          	not	a6,t2
   11f3e:	fff2c793          	not	a5,t0
   11f42:	00987833          	and	a6,a6,s1
   11f46:	8fe1                	and	a5,a5,s0
   11f48:	00d84833          	xor	a6,a6,a3
   11f4c:	8fb9                	xor	a5,a5,a4
   11f4e:	f785c593          	xori	a1,a1,-136
   11f52:	fff64613          	not	a2,a2
   11f56:	01f5f5b3          	and	a1,a1,t6
   11f5a:	01e67633          	and	a2,a2,t5
   11f5e:	8da5                	xor	a1,a1,s1
   11f60:	8e21                	xor	a2,a2,s0
   11f62:	0065c5b3          	xor	a1,a1,t1
   11f66:	01164633          	xor	a2,a2,a7
   11f6a:	01034933          	xor	s2,t1,a6
   11f6e:	00f8c9b3          	xor	s3,a7,a5
   11f72:	fff6c693          	not	a3,a3
   11f76:	fff74713          	not	a4,a4
   11f7a:	0076f6b3          	and	a3,a3,t2
   11f7e:	00577733          	and	a4,a4,t0
   11f82:	01f6c6b3          	xor	a3,a3,t6
   11f86:	01e74733          	xor	a4,a4,t5
   11f8a:	01d6c6b3          	xor	a3,a3,t4
   11f8e:	01c74733          	xor	a4,a4,t3
   11f92:	fffece93          	not	t4,t4
   11f96:	fffe4e13          	not	t3,t3
   11f9a:	01d5d413          	srli	s0,a1,0x1d
   11f9e:	00361f13          	slli	t5,a2,0x3
   11fa2:	01e46433          	or	s0,s0,t5
   11fa6:	01d65493          	srli	s1,a2,0x1d
   11faa:	00359f13          	slli	t5,a1,0x3
   11fae:	01e4e4b3          	or	s1,s1,t5
   11fb2:	0075df13          	srli	t5,a1,0x7
   11fb6:	01961f93          	slli	t6,a2,0x19
   11fba:	01ff6f33          	or	t5,t5,t6
   11fbe:	00765f93          	srli	t6,a2,0x7
   11fc2:	01959293          	slli	t0,a1,0x19
   11fc6:	005fefb3          	or	t6,t6,t0
   11fca:	01f4c4b3          	xor	s1,s1,t6
   11fce:	01e44433          	xor	s0,s0,t5
   11fd2:	8cad                	xor	s1,s1,a1
   11fd4:	8c31                	xor	s0,s0,a2
   11fd6:	01671f93          	slli	t6,a4,0x16
   11fda:	00a6d613          	srli	a2,a3,0xa
   11fde:	00cfefb3          	or	t6,t6,a2
   11fe2:	01669f13          	slli	t5,a3,0x16
   11fe6:	00a75613          	srli	a2,a4,0xa
   11fea:	00cf6f33          	or	t5,t5,a2
   11fee:	00f71593          	slli	a1,a4,0xf
   11ff2:	0116d613          	srli	a2,a3,0x11
   11ff6:	8dd1                	or	a1,a1,a2
   11ff8:	00f69613          	slli	a2,a3,0xf
   11ffc:	01175293          	srli	t0,a4,0x11
   12000:	00566633          	or	a2,a2,t0
   12004:	00bfcfb3          	xor	t6,t6,a1
   12008:	00cf4f33          	xor	t5,t5,a2
   1200c:	00dfcfb3          	xor	t6,t6,a3
   12010:	00ef4f33          	xor	t5,t5,a4
   12014:	01979693          	slli	a3,a5,0x19
   12018:	00785713          	srli	a4,a6,0x7
   1201c:	8ed9                	or	a3,a3,a4
   1201e:	01981a13          	slli	s4,a6,0x19
   12022:	0077d713          	srli	a4,a5,0x7
   12026:	00ea6a33          	or	s4,s4,a4
   1202a:	00985713          	srli	a4,a6,0x9
   1202e:	01779613          	slli	a2,a5,0x17
   12032:	8f51                	or	a4,a4,a2
   12034:	0097d613          	srli	a2,a5,0x9
   12038:	01781593          	slli	a1,a6,0x17
   1203c:	8e4d                	or	a2,a2,a1
   1203e:	8eb1                	xor	a3,a3,a2
   12040:	00ea4a33          	xor	s4,s4,a4
   12044:	01fe1593          	slli	a1,t3,0x1f
   12048:	001ed713          	srli	a4,t4,0x1
   1204c:	8dd9                	or	a1,a1,a4
   1204e:	01fe9613          	slli	a2,t4,0x1f
   12052:	001e5713          	srli	a4,t3,0x1
   12056:	8e59                	or	a2,a2,a4
   12058:	01ae1293          	slli	t0,t3,0x1a
   1205c:	006ed713          	srli	a4,t4,0x6
   12060:	00e2e2b3          	or	t0,t0,a4
   12064:	01ae9713          	slli	a4,t4,0x1a
   12068:	006e5393          	srli	t2,t3,0x6
   1206c:	00776733          	or	a4,a4,t2
   12070:	0055c5b3          	xor	a1,a1,t0
   12074:	8e39                	xor	a2,a2,a4
   12076:	01d5c5b3          	xor	a1,a1,t4
   1207a:	01c64633          	xor	a2,a2,t3
   1207e:	8da5                	xor	a1,a1,s1
   12080:	8e21                	xor	a2,a2,s0
   12082:	00d343b3          	xor	t2,t1,a3
   12086:	0148c2b3          	xor	t0,a7,s4
   1208a:	00d99893          	slli	a7,s3,0xd
   1208e:	01395713          	srli	a4,s2,0x13
   12092:	00e8e8b3          	or	a7,a7,a4
   12096:	00d91713          	slli	a4,s2,0xd
   1209a:	0139d313          	srli	t1,s3,0x13
   1209e:	00676733          	or	a4,a4,t1
   120a2:	0113c3b3          	xor	t2,t2,a7
   120a6:	00e2c2b3          	xor	t0,t0,a4
   120aa:	00499893          	slli	a7,s3,0x4
   120ae:	01c95713          	srli	a4,s2,0x1c
   120b2:	00e8e8b3          	or	a7,a7,a4
   120b6:	00491713          	slli	a4,s2,0x4
   120ba:	01c9d993          	srli	s3,s3,0x1c
   120be:	01376733          	or	a4,a4,s3
   120c2:	0113c3b3          	xor	t2,t2,a7
   120c6:	00e2c2b3          	xor	t0,t0,a4
   120ca:	00d846b3          	xor	a3,a6,a3
   120ce:	0147c733          	xor	a4,a5,s4
   120d2:	01f6c6b3          	xor	a3,a3,t6
   120d6:	01e74733          	xor	a4,a4,t5
   120da:	0785c793          	xori	a5,a1,120
   120de:	fff4c313          	not	t1,s1
   120e2:	fff44893          	not	a7,s0
   120e6:	00f37333          	and	t1,t1,a5
   120ea:	00c8f8b3          	and	a7,a7,a2
   120ee:	00734333          	xor	t1,t1,t2
   120f2:	0058c8b3          	xor	a7,a7,t0
   120f6:	ffffce93          	not	t4,t6
   120fa:	ffff4e13          	not	t3,t5
   120fe:	00defeb3          	and	t4,t4,a3
   12102:	00ee7e33          	and	t3,t3,a4
   12106:	00feceb3          	xor	t4,t4,a5
   1210a:	00ce4e33          	xor	t3,t3,a2
   1210e:	fff3c813          	not	a6,t2
   12112:	fff2c793          	not	a5,t0
   12116:	00987833          	and	a6,a6,s1
   1211a:	8fe1                	and	a5,a5,s0
   1211c:	00d84833          	xor	a6,a6,a3
   12120:	8fb9                	xor	a5,a5,a4
   12122:	f875c593          	xori	a1,a1,-121
   12126:	fff64613          	not	a2,a2
   1212a:	01f5f5b3          	and	a1,a1,t6
   1212e:	01e67633          	and	a2,a2,t5
   12132:	8da5                	xor	a1,a1,s1
   12134:	8e21                	xor	a2,a2,s0
   12136:	0065c5b3          	xor	a1,a1,t1
   1213a:	01164633          	xor	a2,a2,a7
   1213e:	01034933          	xor	s2,t1,a6
   12142:	00f8c9b3          	xor	s3,a7,a5
   12146:	fff6c693          	not	a3,a3
   1214a:	fff74713          	not	a4,a4
   1214e:	0076f6b3          	and	a3,a3,t2
   12152:	00577733          	and	a4,a4,t0
   12156:	01f6c6b3          	xor	a3,a3,t6
   1215a:	01e74733          	xor	a4,a4,t5
   1215e:	01d6c6b3          	xor	a3,a3,t4
   12162:	01c74733          	xor	a4,a4,t3
   12166:	fffece93          	not	t4,t4
   1216a:	fffe4e13          	not	t3,t3
   1216e:	01d5df13          	srli	t5,a1,0x1d
   12172:	00361f93          	slli	t6,a2,0x3
   12176:	01ff6f33          	or	t5,t5,t6
   1217a:	01d65493          	srli	s1,a2,0x1d
   1217e:	00359f93          	slli	t6,a1,0x3
   12182:	01f4e4b3          	or	s1,s1,t6
   12186:	0075df93          	srli	t6,a1,0x7
   1218a:	01961293          	slli	t0,a2,0x19
   1218e:	005fefb3          	or	t6,t6,t0
   12192:	00765293          	srli	t0,a2,0x7
   12196:	01959393          	slli	t2,a1,0x19
   1219a:	0072e2b3          	or	t0,t0,t2
   1219e:	0054c4b3          	xor	s1,s1,t0
   121a2:	01ff4f33          	xor	t5,t5,t6
   121a6:	8cad                	xor	s1,s1,a1
   121a8:	00cf4f33          	xor	t5,t5,a2
   121ac:	01671293          	slli	t0,a4,0x16
   121b0:	00a6d613          	srli	a2,a3,0xa
   121b4:	00c2e2b3          	or	t0,t0,a2
   121b8:	01669f93          	slli	t6,a3,0x16
   121bc:	00a75613          	srli	a2,a4,0xa
   121c0:	00cfefb3          	or	t6,t6,a2
   121c4:	00f71593          	slli	a1,a4,0xf
   121c8:	0116d613          	srli	a2,a3,0x11
   121cc:	8dd1                	or	a1,a1,a2
   121ce:	00f69613          	slli	a2,a3,0xf
   121d2:	01175393          	srli	t2,a4,0x11
   121d6:	00766633          	or	a2,a2,t2
   121da:	00b2c2b3          	xor	t0,t0,a1
   121de:	00cfcfb3          	xor	t6,t6,a2
   121e2:	00d2c2b3          	xor	t0,t0,a3
   121e6:	00efcfb3          	xor	t6,t6,a4
   121ea:	01979693          	slli	a3,a5,0x19
   121ee:	00785713          	srli	a4,a6,0x7
   121f2:	8ed9                	or	a3,a3,a4
   121f4:	01981a13          	slli	s4,a6,0x19
   121f8:	0077d713          	srli	a4,a5,0x7
   121fc:	00ea6a33          	or	s4,s4,a4
   12200:	00985713          	srli	a4,a6,0x9
   12204:	01779613          	slli	a2,a5,0x17
   12208:	8f51                	or	a4,a4,a2
   1220a:	0097d613          	srli	a2,a5,0x9
   1220e:	01781593          	slli	a1,a6,0x17
   12212:	8e4d                	or	a2,a2,a1
   12214:	8eb1                	xor	a3,a3,a2
   12216:	00ea4a33          	xor	s4,s4,a4
   1221a:	01fe1593          	slli	a1,t3,0x1f
   1221e:	001ed713          	srli	a4,t4,0x1
   12222:	8dd9                	or	a1,a1,a4
   12224:	01fe9613          	slli	a2,t4,0x1f
   12228:	001e5713          	srli	a4,t3,0x1
   1222c:	8e59                	or	a2,a2,a4
   1222e:	01ae1393          	slli	t2,t3,0x1a
   12232:	006ed713          	srli	a4,t4,0x6
   12236:	00e3e3b3          	or	t2,t2,a4
   1223a:	01ae9713          	slli	a4,t4,0x1a
   1223e:	006e5413          	srli	s0,t3,0x6
   12242:	8f41                	or	a4,a4,s0
   12244:	0075c5b3          	xor	a1,a1,t2
   12248:	8e39                	xor	a2,a2,a4
   1224a:	01d5c5b3          	xor	a1,a1,t4
   1224e:	01c64633          	xor	a2,a2,t3
   12252:	8da5                	xor	a1,a1,s1
   12254:	01e64633          	xor	a2,a2,t5
   12258:	00d34433          	xor	s0,t1,a3
   1225c:	0148c3b3          	xor	t2,a7,s4
   12260:	00d99893          	slli	a7,s3,0xd
   12264:	01395713          	srli	a4,s2,0x13
   12268:	00e8e8b3          	or	a7,a7,a4
   1226c:	00d91713          	slli	a4,s2,0xd
   12270:	0139d313          	srli	t1,s3,0x13
   12274:	00676733          	or	a4,a4,t1
   12278:	01144433          	xor	s0,s0,a7
   1227c:	00e3c3b3          	xor	t2,t2,a4
   12280:	00499893          	slli	a7,s3,0x4
   12284:	01c95713          	srli	a4,s2,0x1c
   12288:	00e8e8b3          	or	a7,a7,a4
   1228c:	00491713          	slli	a4,s2,0x4
   12290:	01c9d993          	srli	s3,s3,0x1c
   12294:	01376733          	or	a4,a4,s3
   12298:	01144433          	xor	s0,s0,a7
   1229c:	00e3c3b3          	xor	t2,t2,a4
   122a0:	00d846b3          	xor	a3,a6,a3
   122a4:	0147c733          	xor	a4,a5,s4
   122a8:	0056c6b3          	xor	a3,a3,t0
   122ac:	01f74733          	xor	a4,a4,t6
   122b0:	0695c793          	xori	a5,a1,105
   122b4:	fff4ce13          	not	t3,s1
   122b8:	ffff4893          	not	a7,t5
   122bc:	00fe7e33          	and	t3,t3,a5
   122c0:	00c8f8b3          	and	a7,a7,a2
   122c4:	008e4e33          	xor	t3,t3,s0
   122c8:	0078c8b3          	xor	a7,a7,t2
   122cc:	fff2ce93          	not	t4,t0
   122d0:	ffffc313          	not	t1,t6
   122d4:	00defeb3          	and	t4,t4,a3
   122d8:	00e37333          	and	t1,t1,a4
   122dc:	00feceb3          	xor	t4,t4,a5
   122e0:	00c34333          	xor	t1,t1,a2
   122e4:	fff44813          	not	a6,s0
   122e8:	fff3c793          	not	a5,t2
   122ec:	00987833          	and	a6,a6,s1
   122f0:	01e7f7b3          	and	a5,a5,t5
   122f4:	00d84833          	xor	a6,a6,a3
   122f8:	8fb9                	xor	a5,a5,a4
   122fa:	f965c593          	xori	a1,a1,-106
   122fe:	fff64613          	not	a2,a2
   12302:	0055f5b3          	and	a1,a1,t0
   12306:	01f67633          	and	a2,a2,t6
   1230a:	8da5                	xor	a1,a1,s1
   1230c:	01e64633          	xor	a2,a2,t5
   12310:	01c5c5b3          	xor	a1,a1,t3
   12314:	01164633          	xor	a2,a2,a7
   12318:	010e4f33          	xor	t5,t3,a6
   1231c:	00f8c9b3          	xor	s3,a7,a5
   12320:	fff6c693          	not	a3,a3
   12324:	fff74713          	not	a4,a4
   12328:	8ee1                	and	a3,a3,s0
   1232a:	00777733          	and	a4,a4,t2
   1232e:	0056c6b3          	xor	a3,a3,t0
   12332:	01f74733          	xor	a4,a4,t6
   12336:	01d6c6b3          	xor	a3,a3,t4
   1233a:	00674733          	xor	a4,a4,t1
   1233e:	fffece93          	not	t4,t4
   12342:	fff34313          	not	t1,t1
   12346:	01d5d413          	srli	s0,a1,0x1d
   1234a:	00361f93          	slli	t6,a2,0x3
   1234e:	01f46433          	or	s0,s0,t6
   12352:	01d65493          	srli	s1,a2,0x1d
   12356:	00359f93          	slli	t6,a1,0x3
   1235a:	01f4e4b3          	or	s1,s1,t6
   1235e:	0075df93          	srli	t6,a1,0x7
   12362:	01961293          	slli	t0,a2,0x19
   12366:	005fefb3          	or	t6,t6,t0
   1236a:	00765293          	srli	t0,a2,0x7
   1236e:	01959393          	slli	t2,a1,0x19
   12372:	0072e2b3          	or	t0,t0,t2
   12376:	0054c4b3          	xor	s1,s1,t0
   1237a:	01f44433          	xor	s0,s0,t6
   1237e:	8cad                	xor	s1,s1,a1
   12380:	8c31                	xor	s0,s0,a2
   12382:	01671293          	slli	t0,a4,0x16
   12386:	00a6d613          	srli	a2,a3,0xa
   1238a:	00c2e2b3          	or	t0,t0,a2
   1238e:	01669f93          	slli	t6,a3,0x16
   12392:	00a75613          	srli	a2,a4,0xa
   12396:	00cfefb3          	or	t6,t6,a2
   1239a:	00f71593          	slli	a1,a4,0xf
   1239e:	0116d613          	srli	a2,a3,0x11
   123a2:	8dd1                	or	a1,a1,a2
   123a4:	00f69613          	slli	a2,a3,0xf
   123a8:	01175393          	srli	t2,a4,0x11
   123ac:	00766633          	or	a2,a2,t2
   123b0:	00b2c2b3          	xor	t0,t0,a1
   123b4:	00cfcfb3          	xor	t6,t6,a2
   123b8:	00d2c2b3          	xor	t0,t0,a3
   123bc:	00efcfb3          	xor	t6,t6,a4
   123c0:	01979613          	slli	a2,a5,0x19
   123c4:	00785713          	srli	a4,a6,0x7
   123c8:	8e59                	or	a2,a2,a4
   123ca:	01981693          	slli	a3,a6,0x19
   123ce:	0077d713          	srli	a4,a5,0x7
   123d2:	8ed9                	or	a3,a3,a4
   123d4:	00985713          	srli	a4,a6,0x9
   123d8:	01779593          	slli	a1,a5,0x17
   123dc:	8f4d                	or	a4,a4,a1
   123de:	0097d593          	srli	a1,a5,0x9
   123e2:	01781393          	slli	t2,a6,0x17
   123e6:	0075e5b3          	or	a1,a1,t2
   123ea:	8e2d                	xor	a2,a2,a1
   123ec:	8eb9                	xor	a3,a3,a4
   123ee:	01f31713          	slli	a4,t1,0x1f
   123f2:	001ed593          	srli	a1,t4,0x1
   123f6:	8f4d                	or	a4,a4,a1
   123f8:	01fe9593          	slli	a1,t4,0x1f
   123fc:	00135393          	srli	t2,t1,0x1
   12400:	0075e5b3          	or	a1,a1,t2
   12404:	01a31913          	slli	s2,t1,0x1a
   12408:	006ed393          	srli	t2,t4,0x6
   1240c:	00796933          	or	s2,s2,t2
   12410:	01ae9393          	slli	t2,t4,0x1a
   12414:	00635a13          	srli	s4,t1,0x6
   12418:	0143e3b3          	or	t2,t2,s4
   1241c:	01274733          	xor	a4,a4,s2
   12420:	0075c5b3          	xor	a1,a1,t2
   12424:	01d74733          	xor	a4,a4,t4
   12428:	0065c5b3          	xor	a1,a1,t1
   1242c:	00974333          	xor	t1,a4,s1
   12430:	8da1                	xor	a1,a1,s0
   12432:	00ce4933          	xor	s2,t3,a2
   12436:	00d8c3b3          	xor	t2,a7,a3
   1243a:	00d99893          	slli	a7,s3,0xd
   1243e:	013f5713          	srli	a4,t5,0x13
   12442:	00e8e8b3          	or	a7,a7,a4
   12446:	00df1713          	slli	a4,t5,0xd
   1244a:	0139de13          	srli	t3,s3,0x13
   1244e:	01c76733          	or	a4,a4,t3
   12452:	01194933          	xor	s2,s2,a7
   12456:	00e3c3b3          	xor	t2,t2,a4
   1245a:	00499893          	slli	a7,s3,0x4
   1245e:	01cf5713          	srli	a4,t5,0x1c
   12462:	00e8e8b3          	or	a7,a7,a4
   12466:	004f1713          	slli	a4,t5,0x4
   1246a:	01c9d993          	srli	s3,s3,0x1c
   1246e:	01376733          	or	a4,a4,s3
   12472:	01194933          	xor	s2,s2,a7
   12476:	00e3c3b3          	xor	t2,t2,a4
   1247a:	00c84633          	xor	a2,a6,a2
   1247e:	8ebd                	xor	a3,a3,a5
   12480:	00564633          	xor	a2,a2,t0
   12484:	01f6c6b3          	xor	a3,a3,t6
   12488:	05a34793          	xori	a5,t1,90
   1248c:	fff4ce93          	not	t4,s1
   12490:	fff44893          	not	a7,s0
   12494:	00fefeb3          	and	t4,t4,a5
   12498:	00b8f8b3          	and	a7,a7,a1
   1249c:	012eceb3          	xor	t4,t4,s2
   124a0:	0078c8b3          	xor	a7,a7,t2
   124a4:	fff2cf13          	not	t5,t0
   124a8:	ffffce13          	not	t3,t6
   124ac:	00cf7f33          	and	t5,t5,a2
   124b0:	00de7e33          	and	t3,t3,a3
   124b4:	00ff4f33          	xor	t5,t5,a5
   124b8:	00be4e33          	xor	t3,t3,a1
   124bc:	fff94713          	not	a4,s2
   124c0:	fff3c793          	not	a5,t2
   124c4:	8f65                	and	a4,a4,s1
   124c6:	8fe1                	and	a5,a5,s0
   124c8:	8f31                	xor	a4,a4,a2
   124ca:	8fb5                	xor	a5,a5,a3
   124cc:	fa534813          	xori	a6,t1,-91
   124d0:	fff5c593          	not	a1,a1
   124d4:	00587833          	and	a6,a6,t0
   124d8:	01f5f5b3          	and	a1,a1,t6
   124dc:	00984833          	xor	a6,a6,s1
   124e0:	8da1                	xor	a1,a1,s0
   124e2:	01d84833          	xor	a6,a6,t4
   124e6:	0115c5b3          	xor	a1,a1,a7
   124ea:	00eec433          	xor	s0,t4,a4
   124ee:	00f8c4b3          	xor	s1,a7,a5
   124f2:	fff64613          	not	a2,a2
   124f6:	fff6c693          	not	a3,a3
   124fa:	01267633          	and	a2,a2,s2
   124fe:	0076f6b3          	and	a3,a3,t2
   12502:	00564633          	xor	a2,a2,t0
   12506:	01f6c6b3          	xor	a3,a3,t6
   1250a:	01e64633          	xor	a2,a2,t5
   1250e:	01c6c6b3          	xor	a3,a3,t3
   12512:	ffff4f13          	not	t5,t5
   12516:	fffe4f93          	not	t6,t3
   1251a:	01d85293          	srli	t0,a6,0x1d
   1251e:	00359313          	slli	t1,a1,0x3
   12522:	0062e2b3          	or	t0,t0,t1
   12526:	01d5d393          	srli	t2,a1,0x1d
   1252a:	00381313          	slli	t1,a6,0x3
   1252e:	0063e3b3          	or	t2,t2,t1
   12532:	00785313          	srli	t1,a6,0x7
   12536:	01959e13          	slli	t3,a1,0x19
   1253a:	01c36333          	or	t1,t1,t3
   1253e:	0075de13          	srli	t3,a1,0x7
   12542:	01981913          	slli	s2,a6,0x19
   12546:	012e6e33          	or	t3,t3,s2
   1254a:	01c3c3b3          	xor	t2,t2,t3
   1254e:	0062c2b3          	xor	t0,t0,t1
   12552:	0103c3b3          	xor	t2,t2,a6
   12556:	00b2c2b3          	xor	t0,t0,a1
   1255a:	01669e13          	slli	t3,a3,0x16
   1255e:	00a65593          	srli	a1,a2,0xa
   12562:	00be6e33          	or	t3,t3,a1
   12566:	01661313          	slli	t1,a2,0x16
   1256a:	00a6d593          	srli	a1,a3,0xa
   1256e:	00b36333          	or	t1,t1,a1
   12572:	00f69813          	slli	a6,a3,0xf
   12576:	01165593          	srli	a1,a2,0x11
   1257a:	00b86833          	or	a6,a6,a1
   1257e:	00f61593          	slli	a1,a2,0xf
   12582:	0116d913          	srli	s2,a3,0x11
   12586:	0125e5b3          	or	a1,a1,s2
   1258a:	010e4e33          	xor	t3,t3,a6
   1258e:	00b34333          	xor	t1,t1,a1
   12592:	00ce4e33          	xor	t3,t3,a2
   12596:	00d34333          	xor	t1,t1,a3
   1259a:	01979913          	slli	s2,a5,0x19
   1259e:	00775693          	srli	a3,a4,0x7
   125a2:	00d96933          	or	s2,s2,a3
   125a6:	01971593          	slli	a1,a4,0x19
   125aa:	0077d693          	srli	a3,a5,0x7
   125ae:	8dd5                	or	a1,a1,a3
   125b0:	00975693          	srli	a3,a4,0x9
   125b4:	01779613          	slli	a2,a5,0x17
   125b8:	8ed1                	or	a3,a3,a2
   125ba:	0097d613          	srli	a2,a5,0x9
   125be:	01771813          	slli	a6,a4,0x17
   125c2:	01066633          	or	a2,a2,a6
   125c6:	00c94933          	xor	s2,s2,a2
   125ca:	8db5                	xor	a1,a1,a3
   125cc:	01ff9813          	slli	a6,t6,0x1f
   125d0:	001f5693          	srli	a3,t5,0x1
   125d4:	00d86833          	or	a6,a6,a3
   125d8:	01ff1693          	slli	a3,t5,0x1f
   125dc:	001fd613          	srli	a2,t6,0x1
   125e0:	8ed1                	or	a3,a3,a2
   125e2:	01af9993          	slli	s3,t6,0x1a
   125e6:	006f5613          	srli	a2,t5,0x6
   125ea:	00c9e9b3          	or	s3,s3,a2
   125ee:	01af1613          	slli	a2,t5,0x1a
   125f2:	006fda13          	srli	s4,t6,0x6
   125f6:	01466633          	or	a2,a2,s4
   125fa:	01384833          	xor	a6,a6,s3
   125fe:	8eb1                	xor	a3,a3,a2
   12600:	01e84833          	xor	a6,a6,t5
   12604:	01f6c6b3          	xor	a3,a3,t6
   12608:	00784833          	xor	a6,a6,t2
   1260c:	0056c6b3          	xor	a3,a3,t0
   12610:	012ecfb3          	xor	t6,t4,s2
   12614:	00b8cf33          	xor	t5,a7,a1
   12618:	00d49893          	slli	a7,s1,0xd
   1261c:	01345613          	srli	a2,s0,0x13
   12620:	00c8e8b3          	or	a7,a7,a2
   12624:	00d41613          	slli	a2,s0,0xd
   12628:	0134de93          	srli	t4,s1,0x13
   1262c:	01d66633          	or	a2,a2,t4
   12630:	011fcfb3          	xor	t6,t6,a7
   12634:	00cf4f33          	xor	t5,t5,a2
   12638:	00449893          	slli	a7,s1,0x4
   1263c:	01c45613          	srli	a2,s0,0x1c
   12640:	00c8e8b3          	or	a7,a7,a2
   12644:	00441613          	slli	a2,s0,0x4
   12648:	80f1                	srli	s1,s1,0x1c
   1264a:	8e45                	or	a2,a2,s1
   1264c:	011fcfb3          	xor	t6,t6,a7
   12650:	00cf4f33          	xor	t5,t5,a2
   12654:	01274733          	xor	a4,a4,s2
   12658:	8fad                	xor	a5,a5,a1
   1265a:	01c74733          	xor	a4,a4,t3
   1265e:	0067c7b3          	xor	a5,a5,t1
   12662:	04b84613          	xori	a2,a6,75
   12666:	fff3c493          	not	s1,t2
   1266a:	fff2c413          	not	s0,t0
   1266e:	8cf1                	and	s1,s1,a2
   12670:	8c75                	and	s0,s0,a3
   12672:	01f4c4b3          	xor	s1,s1,t6
   12676:	01e44433          	xor	s0,s0,t5
   1267a:	fffe4e93          	not	t4,t3
   1267e:	fff34893          	not	a7,t1
   12682:	00eefeb3          	and	t4,t4,a4
   12686:	00f8f8b3          	and	a7,a7,a5
   1268a:	00ceceb3          	xor	t4,t4,a2
   1268e:	00d8c8b3          	xor	a7,a7,a3
   12692:	ffffc593          	not	a1,t6
   12696:	ffff4613          	not	a2,t5
   1269a:	0075f5b3          	and	a1,a1,t2
   1269e:	00567633          	and	a2,a2,t0
   126a2:	8db9                	xor	a1,a1,a4
   126a4:	8e3d                	xor	a2,a2,a5
   126a6:	fb484813          	xori	a6,a6,-76
   126aa:	fff6c693          	not	a3,a3
   126ae:	01c87833          	and	a6,a6,t3
   126b2:	0066f6b3          	and	a3,a3,t1
   126b6:	00784833          	xor	a6,a6,t2
   126ba:	0056c6b3          	xor	a3,a3,t0
   126be:	00984833          	xor	a6,a6,s1
   126c2:	8ea1                	xor	a3,a3,s0
   126c4:	8cad                	xor	s1,s1,a1
   126c6:	00c443b3          	xor	t2,s0,a2
   126ca:	fff74713          	not	a4,a4
   126ce:	fff7c793          	not	a5,a5
   126d2:	01f77733          	and	a4,a4,t6
   126d6:	01e7f7b3          	and	a5,a5,t5
   126da:	01c74733          	xor	a4,a4,t3
   126de:	0067c7b3          	xor	a5,a5,t1
   126e2:	01d74733          	xor	a4,a4,t4
   126e6:	0117c7b3          	xor	a5,a5,a7
   126ea:	fffec313          	not	t1,t4
   126ee:	fff8c893          	not	a7,a7
   126f2:	00d39293          	slli	t0,t2,0xd
   126f6:	0134de13          	srli	t3,s1,0x13
   126fa:	01c2e2b3          	or	t0,t0,t3
   126fe:	00d49e93          	slli	t4,s1,0xd
   12702:	0133de13          	srli	t3,t2,0x13
   12706:	01ceeeb3          	or	t4,t4,t3
   1270a:	00439f13          	slli	t5,t2,0x4
   1270e:	01c4de13          	srli	t3,s1,0x1c
   12712:	01cf6f33          	or	t5,t5,t3
   12716:	00449e13          	slli	t3,s1,0x4
   1271a:	01c3df93          	srli	t6,t2,0x1c
   1271e:	01fe6e33          	or	t3,t3,t6
   12722:	01e2c2b3          	xor	t0,t0,t5
   12726:	01ceceb3          	xor	t4,t4,t3
   1272a:	0092c2b3          	xor	t0,t0,s1
   1272e:	007eceb3          	xor	t4,t4,t2
   12732:	01d85393          	srli	t2,a6,0x1d
   12736:	00369e13          	slli	t3,a3,0x3
   1273a:	01c3e3b3          	or	t2,t2,t3
   1273e:	01d6d413          	srli	s0,a3,0x1d
   12742:	00381e13          	slli	t3,a6,0x3
   12746:	01c46433          	or	s0,s0,t3
   1274a:	00785e13          	srli	t3,a6,0x7
   1274e:	01969f13          	slli	t5,a3,0x19
   12752:	01ee6e33          	or	t3,t3,t5
   12756:	0076df13          	srli	t5,a3,0x7
   1275a:	01981f93          	slli	t6,a6,0x19
   1275e:	01ff6f33          	or	t5,t5,t6
   12762:	01e44433          	xor	s0,s0,t5
   12766:	01c3c3b3          	xor	t2,t2,t3
   1276a:	01044433          	xor	s0,s0,a6
   1276e:	00d3c3b3          	xor	t2,t2,a3
   12772:	01f89913          	slli	s2,a7,0x1f
   12776:	00135693          	srli	a3,t1,0x1
   1277a:	00d96933          	or	s2,s2,a3
   1277e:	01f31493          	slli	s1,t1,0x1f
   12782:	0018d693          	srli	a3,a7,0x1
   12786:	8cd5                	or	s1,s1,a3
   12788:	01a89813          	slli	a6,a7,0x1a
   1278c:	00635693          	srli	a3,t1,0x6
   12790:	00d86833          	or	a6,a6,a3
   12794:	01a31693          	slli	a3,t1,0x1a
   12798:	0068de13          	srli	t3,a7,0x6
   1279c:	01c6e6b3          	or	a3,a3,t3
   127a0:	01094933          	xor	s2,s2,a6
   127a4:	8cb5                	xor	s1,s1,a3
   127a6:	00694933          	xor	s2,s2,t1
   127aa:	0114c4b3          	xor	s1,s1,a7
   127ae:	01679f93          	slli	t6,a5,0x16
   127b2:	00a75693          	srli	a3,a4,0xa
   127b6:	00dfefb3          	or	t6,t6,a3
   127ba:	01671f13          	slli	t5,a4,0x16
   127be:	00a7d693          	srli	a3,a5,0xa
   127c2:	00df6f33          	or	t5,t5,a3
   127c6:	00f79813          	slli	a6,a5,0xf
   127ca:	01175693          	srli	a3,a4,0x11
   127ce:	00d86833          	or	a6,a6,a3
   127d2:	00f71693          	slli	a3,a4,0xf
   127d6:	0117d893          	srli	a7,a5,0x11
   127da:	0116e6b3          	or	a3,a3,a7
   127de:	010fcfb3          	xor	t6,t6,a6
   127e2:	00df4f33          	xor	t5,t5,a3
   127e6:	00efcfb3          	xor	t6,t6,a4
   127ea:	00ff4f33          	xor	t5,t5,a5
   127ee:	01961813          	slli	a6,a2,0x19
   127f2:	0075d793          	srli	a5,a1,0x7
   127f6:	00f86833          	or	a6,a6,a5
   127fa:	01959793          	slli	a5,a1,0x19
   127fe:	00765713          	srli	a4,a2,0x7
   12802:	8fd9                	or	a5,a5,a4
   12804:	0095d713          	srli	a4,a1,0x9
   12808:	01761693          	slli	a3,a2,0x17
   1280c:	8f55                	or	a4,a4,a3
   1280e:	00965693          	srli	a3,a2,0x9
   12812:	01759893          	slli	a7,a1,0x17
   12816:	0116e6b3          	or	a3,a3,a7
   1281a:	00d84833          	xor	a6,a6,a3
   1281e:	8fb9                	xor	a5,a5,a4
   12820:	00b84833          	xor	a6,a6,a1
   12824:	8e3d                	xor	a2,a2,a5
   12826:	01850893          	addi	a7,a0,24
   1282a:	4e7d                	li	t3,31
   1282c:	5361                	li	t1,-8
   1282e:	6cd0006f          	j	136fa <crypto_hash+0x3522>
   12832:	477d                	li	a4,31
   12834:	8f1d                	sub	a4,a4,a5
   12836:	04000f13          	li	t5,64
   1283a:	00ef5f33          	srl	t5,t5,a4
   1283e:	08000e93          	li	t4,128
   12842:	00fe9eb3          	sll	t4,t4,a5
   12846:	9cffe06f          	j	11214 <crypto_hash+0x103c>
   1284a:	40ee05b3          	sub	a1,t3,a4
   1284e:	00b995b3          	sll	a1,s3,a1
   12852:	00e2d7b3          	srl	a5,t0,a4
   12856:	8fcd                	or	a5,a5,a1
   12858:	00f68023          	sb	a5,0(a3)
   1285c:	1761                	addi	a4,a4,-8
   1285e:	0685                	addi	a3,a3,1
   12860:	00670963          	beq	a4,t1,12872 <crypto_hash+0x269a>
   12864:	fe070793          	addi	a5,a4,-32
   12868:	fe07c1e3          	bltz	a5,1284a <crypto_hash+0x2672>
   1286c:	00fed7b3          	srl	a5,t4,a5
   12870:	b7e5                	j	12858 <crypto_hash+0x2680>
   12872:	01244933          	xor	s2,s0,s2
   12876:	0093c4b3          	xor	s1,t2,s1
   1287a:	005842b3          	xor	t0,a6,t0
   1287e:	01d64eb3          	xor	t4,a2,t4
   12882:	01f84733          	xor	a4,a6,t6
   12886:	01e647b3          	xor	a5,a2,t5
   1288a:	0b494693          	xori	a3,s2,180
   1288e:	fff44a93          	not	s5,s0
   12892:	fff3c613          	not	a2,t2
   12896:	00dafab3          	and	s5,s5,a3
   1289a:	8e65                	and	a2,a2,s1
   1289c:	005acab3          	xor	s5,s5,t0
   128a0:	01d64633          	xor	a2,a2,t4
   128a4:	ffffc813          	not	a6,t6
   128a8:	ffff4593          	not	a1,t5
   128ac:	00e87833          	and	a6,a6,a4
   128b0:	8dfd                	and	a1,a1,a5
   128b2:	00d84833          	xor	a6,a6,a3
   128b6:	8da5                	xor	a1,a1,s1
   128b8:	fff2ca13          	not	s4,t0
   128bc:	fffec993          	not	s3,t4
   128c0:	008a7a33          	and	s4,s4,s0
   128c4:	0079f9b3          	and	s3,s3,t2
   128c8:	00ea4a33          	xor	s4,s4,a4
   128cc:	00f9c9b3          	xor	s3,s3,a5
   128d0:	f4b94913          	xori	s2,s2,-181
   128d4:	fff4c493          	not	s1,s1
   128d8:	01f97933          	and	s2,s2,t6
   128dc:	01e4f6b3          	and	a3,s1,t5
   128e0:	00894433          	xor	s0,s2,s0
   128e4:	0076c6b3          	xor	a3,a3,t2
   128e8:	01544433          	xor	s0,s0,s5
   128ec:	8eb1                	xor	a3,a3,a2
   128ee:	014ac3b3          	xor	t2,s5,s4
   128f2:	01364633          	xor	a2,a2,s3
   128f6:	fff74713          	not	a4,a4
   128fa:	fff7c793          	not	a5,a5
   128fe:	00577733          	and	a4,a4,t0
   12902:	01d7f7b3          	and	a5,a5,t4
   12906:	01074733          	xor	a4,a4,a6
   1290a:	8fad                	xor	a5,a5,a1
   1290c:	01f74733          	xor	a4,a4,t6
   12910:	01e7c7b3          	xor	a5,a5,t5
   12914:	fff84f13          	not	t5,a6
   12918:	fff5ce93          	not	t4,a1
   1291c:	01d45493          	srli	s1,s0,0x1d
   12920:	00369593          	slli	a1,a3,0x3
   12924:	8ccd                	or	s1,s1,a1
   12926:	01d6db13          	srli	s6,a3,0x1d
   1292a:	00341593          	slli	a1,s0,0x3
   1292e:	00bb6b33          	or	s6,s6,a1
   12932:	00745593          	srli	a1,s0,0x7
   12936:	01969813          	slli	a6,a3,0x19
   1293a:	0105e5b3          	or	a1,a1,a6
   1293e:	0076d813          	srli	a6,a3,0x7
   12942:	01941f93          	slli	t6,s0,0x19
   12946:	01f86833          	or	a6,a6,t6
   1294a:	010b4b33          	xor	s6,s6,a6
   1294e:	8cad                	xor	s1,s1,a1
   12950:	008b4b33          	xor	s6,s6,s0
   12954:	8cb5                	xor	s1,s1,a3
   12956:	01679913          	slli	s2,a5,0x16
   1295a:	00a75693          	srli	a3,a4,0xa
   1295e:	00d96933          	or	s2,s2,a3
   12962:	01671413          	slli	s0,a4,0x16
   12966:	00a7d693          	srli	a3,a5,0xa
   1296a:	8c55                	or	s0,s0,a3
   1296c:	00f79593          	slli	a1,a5,0xf
   12970:	01175693          	srli	a3,a4,0x11
   12974:	8dd5                	or	a1,a1,a3
   12976:	00f71693          	slli	a3,a4,0xf
   1297a:	0117d813          	srli	a6,a5,0x11
   1297e:	0106e6b3          	or	a3,a3,a6
   12982:	00b94933          	xor	s2,s2,a1
   12986:	8c35                	xor	s0,s0,a3
   12988:	00e94933          	xor	s2,s2,a4
   1298c:	8c3d                	xor	s0,s0,a5
   1298e:	01999813          	slli	a6,s3,0x19
   12992:	007a5793          	srli	a5,s4,0x7
   12996:	00f86833          	or	a6,a6,a5
   1299a:	019a1593          	slli	a1,s4,0x19
   1299e:	0079d793          	srli	a5,s3,0x7
   129a2:	8ddd                	or	a1,a1,a5
   129a4:	009a5793          	srli	a5,s4,0x9
   129a8:	01799713          	slli	a4,s3,0x17
   129ac:	8fd9                	or	a5,a5,a4
   129ae:	0099d713          	srli	a4,s3,0x9
   129b2:	017a1693          	slli	a3,s4,0x17
   129b6:	8f55                	or	a4,a4,a3
   129b8:	00e84833          	xor	a6,a6,a4
   129bc:	8dbd                	xor	a1,a1,a5
   129be:	01484833          	xor	a6,a6,s4
   129c2:	0135c7b3          	xor	a5,a1,s3
   129c6:	01fe9693          	slli	a3,t4,0x1f
   129ca:	001f5713          	srli	a4,t5,0x1
   129ce:	8ed9                	or	a3,a3,a4
   129d0:	01ff1713          	slli	a4,t5,0x1f
   129d4:	001ed593          	srli	a1,t4,0x1
   129d8:	8f4d                	or	a4,a4,a1
   129da:	01ae9f93          	slli	t6,t4,0x1a
   129de:	006f5593          	srli	a1,t5,0x6
   129e2:	00bfefb3          	or	t6,t6,a1
   129e6:	01af1593          	slli	a1,t5,0x1a
   129ea:	006ed293          	srli	t0,t4,0x6
   129ee:	0055e5b3          	or	a1,a1,t0
   129f2:	01f6c6b3          	xor	a3,a3,t6
   129f6:	8f2d                	xor	a4,a4,a1
   129f8:	01e6c6b3          	xor	a3,a3,t5
   129fc:	01d74733          	xor	a4,a4,t4
   12a00:	0166c6b3          	xor	a3,a3,s6
   12a04:	8f25                	xor	a4,a4,s1
   12a06:	00d61a93          	slli	s5,a2,0xd
   12a0a:	0133d593          	srli	a1,t2,0x13
   12a0e:	00baeab3          	or	s5,s5,a1
   12a12:	00d39a13          	slli	s4,t2,0xd
   12a16:	01365593          	srli	a1,a2,0x13
   12a1a:	00ba6a33          	or	s4,s4,a1
   12a1e:	00461e93          	slli	t4,a2,0x4
   12a22:	01c3d593          	srli	a1,t2,0x1c
   12a26:	00beeeb3          	or	t4,t4,a1
   12a2a:	00439593          	slli	a1,t2,0x4
   12a2e:	01c65f13          	srli	t5,a2,0x1c
   12a32:	01e5e5b3          	or	a1,a1,t5
   12a36:	01dacab3          	xor	s5,s5,t4
   12a3a:	00ba4a33          	xor	s4,s4,a1
   12a3e:	007acab3          	xor	s5,s5,t2
   12a42:	00ca4a33          	xor	s4,s4,a2
   12a46:	010acab3          	xor	s5,s5,a6
   12a4a:	00fa4a33          	xor	s4,s4,a5
   12a4e:	01094833          	xor	a6,s2,a6
   12a52:	00f445b3          	xor	a1,s0,a5
   12a56:	0a56c793          	xori	a5,a3,165
   12a5a:	fffb4293          	not	t0,s6
   12a5e:	fff4cf93          	not	t6,s1
   12a62:	00f2f2b3          	and	t0,t0,a5
   12a66:	00efffb3          	and	t6,t6,a4
   12a6a:	0152c2b3          	xor	t0,t0,s5
   12a6e:	014fcfb3          	xor	t6,t6,s4
   12a72:	fff94393          	not	t2,s2
   12a76:	fff44f13          	not	t5,s0
   12a7a:	0103f3b3          	and	t2,t2,a6
   12a7e:	00bf7f33          	and	t5,t5,a1
   12a82:	00f3c3b3          	xor	t2,t2,a5
   12a86:	00ef4f33          	xor	t5,t5,a4
   12a8a:	fffac613          	not	a2,s5
   12a8e:	fffa4793          	not	a5,s4
   12a92:	01667633          	and	a2,a2,s6
   12a96:	8fe5                	and	a5,a5,s1
   12a98:	01064633          	xor	a2,a2,a6
   12a9c:	8fad                	xor	a5,a5,a1
   12a9e:	f5a6c993          	xori	s3,a3,-166
   12aa2:	fff74e93          	not	t4,a4
   12aa6:	0129f9b3          	and	s3,s3,s2
   12aaa:	008efeb3          	and	t4,t4,s0
   12aae:	0169c9b3          	xor	s3,s3,s6
   12ab2:	009eceb3          	xor	t4,t4,s1
   12ab6:	0059c9b3          	xor	s3,s3,t0
   12aba:	01feceb3          	xor	t4,t4,t6
   12abe:	00c2c4b3          	xor	s1,t0,a2
   12ac2:	00ffcb33          	xor	s6,t6,a5
   12ac6:	fff84693          	not	a3,a6
   12aca:	fff5c713          	not	a4,a1
   12ace:	0156f6b3          	and	a3,a3,s5
   12ad2:	01477733          	and	a4,a4,s4
   12ad6:	0126c6b3          	xor	a3,a3,s2
   12ada:	8f21                	xor	a4,a4,s0
   12adc:	0076c6b3          	xor	a3,a3,t2
   12ae0:	01e74733          	xor	a4,a4,t5
   12ae4:	fff3c813          	not	a6,t2
   12ae8:	ffff4f13          	not	t5,t5
   12aec:	01d9da93          	srli	s5,s3,0x1d
   12af0:	003e9593          	slli	a1,t4,0x3
   12af4:	00baeab3          	or	s5,s5,a1
   12af8:	01ded913          	srli	s2,t4,0x1d
   12afc:	00399593          	slli	a1,s3,0x3
   12b00:	00b96933          	or	s2,s2,a1
   12b04:	0079d593          	srli	a1,s3,0x7
   12b08:	019e9393          	slli	t2,t4,0x19
   12b0c:	0075e5b3          	or	a1,a1,t2
   12b10:	007ed393          	srli	t2,t4,0x7
   12b14:	01999413          	slli	s0,s3,0x19
   12b18:	0083e3b3          	or	t2,t2,s0
   12b1c:	00794933          	xor	s2,s2,t2
   12b20:	00bacab3          	xor	s5,s5,a1
   12b24:	01394933          	xor	s2,s2,s3
   12b28:	01dacab3          	xor	s5,s5,t4
   12b2c:	01671413          	slli	s0,a4,0x16
   12b30:	00a6d593          	srli	a1,a3,0xa
   12b34:	8c4d                	or	s0,s0,a1
   12b36:	01669393          	slli	t2,a3,0x16
   12b3a:	00a75593          	srli	a1,a4,0xa
   12b3e:	00b3e3b3          	or	t2,t2,a1
   12b42:	00f71e93          	slli	t4,a4,0xf
   12b46:	0116d593          	srli	a1,a3,0x11
   12b4a:	00beeeb3          	or	t4,t4,a1
   12b4e:	00f69593          	slli	a1,a3,0xf
   12b52:	01175993          	srli	s3,a4,0x11
   12b56:	0135e5b3          	or	a1,a1,s3
   12b5a:	01d44433          	xor	s0,s0,t4
   12b5e:	00b3c3b3          	xor	t2,t2,a1
   12b62:	8c35                	xor	s0,s0,a3
   12b64:	00e3c3b3          	xor	t2,t2,a4
   12b68:	01979693          	slli	a3,a5,0x19
   12b6c:	00765713          	srli	a4,a2,0x7
   12b70:	8ed9                	or	a3,a3,a4
   12b72:	01961713          	slli	a4,a2,0x19
   12b76:	0077d593          	srli	a1,a5,0x7
   12b7a:	8f4d                	or	a4,a4,a1
   12b7c:	00965593          	srli	a1,a2,0x9
   12b80:	01779e93          	slli	t4,a5,0x17
   12b84:	01d5e5b3          	or	a1,a1,t4
   12b88:	0097de93          	srli	t4,a5,0x9
   12b8c:	01761993          	slli	s3,a2,0x17
   12b90:	013eeeb3          	or	t4,t4,s3
   12b94:	01d6c6b3          	xor	a3,a3,t4
   12b98:	8f2d                	xor	a4,a4,a1
   12b9a:	01ff1b93          	slli	s7,t5,0x1f
   12b9e:	00185593          	srli	a1,a6,0x1
   12ba2:	00bbebb3          	or	s7,s7,a1
   12ba6:	01f81593          	slli	a1,a6,0x1f
   12baa:	001f5e93          	srli	t4,t5,0x1
   12bae:	01d5e5b3          	or	a1,a1,t4
   12bb2:	01af1993          	slli	s3,t5,0x1a
   12bb6:	00685e93          	srli	t4,a6,0x6
   12bba:	01d9e9b3          	or	s3,s3,t4
   12bbe:	01a81e93          	slli	t4,a6,0x1a
   12bc2:	006f5a13          	srli	s4,t5,0x6
   12bc6:	014eeeb3          	or	t4,t4,s4
   12bca:	013bcbb3          	xor	s7,s7,s3
   12bce:	01d5c5b3          	xor	a1,a1,t4
   12bd2:	010bcbb3          	xor	s7,s7,a6
   12bd6:	01e5c5b3          	xor	a1,a1,t5
   12bda:	012bcbb3          	xor	s7,s7,s2
   12bde:	0155c5b3          	xor	a1,a1,s5
   12be2:	00d2ca33          	xor	s4,t0,a3
   12be6:	00efc9b3          	xor	s3,t6,a4
   12bea:	00db1e93          	slli	t4,s6,0xd
   12bee:	0134d813          	srli	a6,s1,0x13
   12bf2:	010eeeb3          	or	t4,t4,a6
   12bf6:	00d49813          	slli	a6,s1,0xd
   12bfa:	013b5f13          	srli	t5,s6,0x13
   12bfe:	01e86833          	or	a6,a6,t5
   12c02:	01da4a33          	xor	s4,s4,t4
   12c06:	0109c9b3          	xor	s3,s3,a6
   12c0a:	004b1813          	slli	a6,s6,0x4
   12c0e:	01c4de93          	srli	t4,s1,0x1c
   12c12:	01d86833          	or	a6,a6,t4
   12c16:	0492                	slli	s1,s1,0x4
   12c18:	01cb5b13          	srli	s6,s6,0x1c
   12c1c:	0164e4b3          	or	s1,s1,s6
   12c20:	010a4a33          	xor	s4,s4,a6
   12c24:	0099c9b3          	xor	s3,s3,s1
   12c28:	8e35                	xor	a2,a2,a3
   12c2a:	8fb9                	xor	a5,a5,a4
   12c2c:	8e21                	xor	a2,a2,s0
   12c2e:	0077c733          	xor	a4,a5,t2
   12c32:	096bc793          	xori	a5,s7,150
   12c36:	fff94f93          	not	t6,s2
   12c3a:	fffacf13          	not	t5,s5
   12c3e:	00ffffb3          	and	t6,t6,a5
   12c42:	00bf7f33          	and	t5,t5,a1
   12c46:	014fcfb3          	xor	t6,t6,s4
   12c4a:	013f4f33          	xor	t5,t5,s3
   12c4e:	fff44e93          	not	t4,s0
   12c52:	fff3c813          	not	a6,t2
   12c56:	00cefeb3          	and	t4,t4,a2
   12c5a:	00e87833          	and	a6,a6,a4
   12c5e:	00feceb3          	xor	t4,t4,a5
   12c62:	00b84833          	xor	a6,a6,a1
   12c66:	fffa4693          	not	a3,s4
   12c6a:	fff9c793          	not	a5,s3
   12c6e:	0126f6b3          	and	a3,a3,s2
   12c72:	0157f7b3          	and	a5,a5,s5
   12c76:	8eb1                	xor	a3,a3,a2
   12c78:	8fb9                	xor	a5,a5,a4
   12c7a:	f69bc493          	xori	s1,s7,-151
   12c7e:	fff5c593          	not	a1,a1
   12c82:	8ce1                	and	s1,s1,s0
   12c84:	0075f5b3          	and	a1,a1,t2
   12c88:	0124c4b3          	xor	s1,s1,s2
   12c8c:	0155c5b3          	xor	a1,a1,s5
   12c90:	01f4c4b3          	xor	s1,s1,t6
   12c94:	01e5c5b3          	xor	a1,a1,t5
   12c98:	00dfc2b3          	xor	t0,t6,a3
   12c9c:	00ff4933          	xor	s2,t5,a5
   12ca0:	fff64613          	not	a2,a2
   12ca4:	fff74713          	not	a4,a4
   12ca8:	01467633          	and	a2,a2,s4
   12cac:	01377733          	and	a4,a4,s3
   12cb0:	8e21                	xor	a2,a2,s0
   12cb2:	00774733          	xor	a4,a4,t2
   12cb6:	01d64633          	xor	a2,a2,t4
   12cba:	01074733          	xor	a4,a4,a6
   12cbe:	fffece93          	not	t4,t4
   12cc2:	fff84813          	not	a6,a6
   12cc6:	01d4d393          	srli	t2,s1,0x1d
   12cca:	00359413          	slli	s0,a1,0x3
   12cce:	0083e3b3          	or	t2,t2,s0
   12cd2:	01d5da93          	srli	s5,a1,0x1d
   12cd6:	00349413          	slli	s0,s1,0x3
   12cda:	008aeab3          	or	s5,s5,s0
   12cde:	0074d413          	srli	s0,s1,0x7
   12ce2:	01959993          	slli	s3,a1,0x19
   12ce6:	01346433          	or	s0,s0,s3
   12cea:	0075d993          	srli	s3,a1,0x7
   12cee:	01949a13          	slli	s4,s1,0x19
   12cf2:	0149e9b3          	or	s3,s3,s4
   12cf6:	013acab3          	xor	s5,s5,s3
   12cfa:	0083c3b3          	xor	t2,t2,s0
   12cfe:	009acab3          	xor	s5,s5,s1
   12d02:	00b3c3b3          	xor	t2,t2,a1
   12d06:	01671493          	slli	s1,a4,0x16
   12d0a:	00a65593          	srli	a1,a2,0xa
   12d0e:	8ccd                	or	s1,s1,a1
   12d10:	01661413          	slli	s0,a2,0x16
   12d14:	00a75593          	srli	a1,a4,0xa
   12d18:	8c4d                	or	s0,s0,a1
   12d1a:	00f71993          	slli	s3,a4,0xf
   12d1e:	01165593          	srli	a1,a2,0x11
   12d22:	00b9e9b3          	or	s3,s3,a1
   12d26:	00f61593          	slli	a1,a2,0xf
   12d2a:	01175a13          	srli	s4,a4,0x11
   12d2e:	0145e5b3          	or	a1,a1,s4
   12d32:	0134c4b3          	xor	s1,s1,s3
   12d36:	8c2d                	xor	s0,s0,a1
   12d38:	8cb1                	xor	s1,s1,a2
   12d3a:	8c39                	xor	s0,s0,a4
   12d3c:	01979b13          	slli	s6,a5,0x19
   12d40:	0076d713          	srli	a4,a3,0x7
   12d44:	00eb6b33          	or	s6,s6,a4
   12d48:	01969593          	slli	a1,a3,0x19
   12d4c:	0077d713          	srli	a4,a5,0x7
   12d50:	8dd9                	or	a1,a1,a4
   12d52:	0096d713          	srli	a4,a3,0x9
   12d56:	01779613          	slli	a2,a5,0x17
   12d5a:	8f51                	or	a4,a4,a2
   12d5c:	0097d613          	srli	a2,a5,0x9
   12d60:	01769993          	slli	s3,a3,0x17
   12d64:	01366633          	or	a2,a2,s3
   12d68:	00cb4b33          	xor	s6,s6,a2
   12d6c:	8db9                	xor	a1,a1,a4
   12d6e:	01f81613          	slli	a2,a6,0x1f
   12d72:	001ed713          	srli	a4,t4,0x1
   12d76:	8e59                	or	a2,a2,a4
   12d78:	01fe9713          	slli	a4,t4,0x1f
   12d7c:	00185993          	srli	s3,a6,0x1
   12d80:	01376733          	or	a4,a4,s3
   12d84:	01a81a13          	slli	s4,a6,0x1a
   12d88:	006ed993          	srli	s3,t4,0x6
   12d8c:	013a6a33          	or	s4,s4,s3
   12d90:	01ae9993          	slli	s3,t4,0x1a
   12d94:	00685b93          	srli	s7,a6,0x6
   12d98:	0179e9b3          	or	s3,s3,s7
   12d9c:	01464633          	xor	a2,a2,s4
   12da0:	01374733          	xor	a4,a4,s3
   12da4:	01d64633          	xor	a2,a2,t4
   12da8:	01074733          	xor	a4,a4,a6
   12dac:	01564633          	xor	a2,a2,s5
   12db0:	00774733          	xor	a4,a4,t2
   12db4:	016fca33          	xor	s4,t6,s6
   12db8:	00bf49b3          	xor	s3,t5,a1
   12dbc:	00d91e93          	slli	t4,s2,0xd
   12dc0:	0132d813          	srli	a6,t0,0x13
   12dc4:	010eeeb3          	or	t4,t4,a6
   12dc8:	00d29813          	slli	a6,t0,0xd
   12dcc:	01395f13          	srli	t5,s2,0x13
   12dd0:	01e86833          	or	a6,a6,t5
   12dd4:	01da4a33          	xor	s4,s4,t4
   12dd8:	0109c9b3          	xor	s3,s3,a6
   12ddc:	00491813          	slli	a6,s2,0x4
   12de0:	01c2de93          	srli	t4,t0,0x1c
   12de4:	01d86833          	or	a6,a6,t4
   12de8:	0292                	slli	t0,t0,0x4
   12dea:	01c95913          	srli	s2,s2,0x1c
   12dee:	0122e2b3          	or	t0,t0,s2
   12df2:	010a4a33          	xor	s4,s4,a6
   12df6:	0059c9b3          	xor	s3,s3,t0
   12dfa:	0166c6b3          	xor	a3,a3,s6
   12dfe:	8fad                	xor	a5,a5,a1
   12e00:	8ea5                	xor	a3,a3,s1
   12e02:	8fa1                	xor	a5,a5,s0
   12e04:	08764f13          	xori	t5,a2,135
   12e08:	fffac293          	not	t0,s5
   12e0c:	fff3ce93          	not	t4,t2
   12e10:	01e2f2b3          	and	t0,t0,t5
   12e14:	00eefeb3          	and	t4,t4,a4
   12e18:	0142c2b3          	xor	t0,t0,s4
   12e1c:	013eceb3          	xor	t4,t4,s3
   12e20:	fff4c813          	not	a6,s1
   12e24:	fff44593          	not	a1,s0
   12e28:	00d87833          	and	a6,a6,a3
   12e2c:	8dfd                	and	a1,a1,a5
   12e2e:	01e84833          	xor	a6,a6,t5
   12e32:	8db9                	xor	a1,a1,a4
   12e34:	fffa4f93          	not	t6,s4
   12e38:	fff9cf13          	not	t5,s3
   12e3c:	015fffb3          	and	t6,t6,s5
   12e40:	007f7f33          	and	t5,t5,t2
   12e44:	00dfcfb3          	xor	t6,t6,a3
   12e48:	00ff4f33          	xor	t5,t5,a5
   12e4c:	f7864913          	xori	s2,a2,-136
   12e50:	fff74713          	not	a4,a4
   12e54:	00997933          	and	s2,s2,s1
   12e58:	8f61                	and	a4,a4,s0
   12e5a:	01594933          	xor	s2,s2,s5
   12e5e:	00774733          	xor	a4,a4,t2
   12e62:	00594933          	xor	s2,s2,t0
   12e66:	01d74633          	xor	a2,a4,t4
   12e6a:	01f2c3b3          	xor	t2,t0,t6
   12e6e:	01eecb33          	xor	s6,t4,t5
   12e72:	fff6c713          	not	a4,a3
   12e76:	fff7c793          	not	a5,a5
   12e7a:	01477733          	and	a4,a4,s4
   12e7e:	0137f7b3          	and	a5,a5,s3
   12e82:	8f25                	xor	a4,a4,s1
   12e84:	8fa1                	xor	a5,a5,s0
   12e86:	01074733          	xor	a4,a4,a6
   12e8a:	8fad                	xor	a5,a5,a1
   12e8c:	fff84413          	not	s0,a6
   12e90:	fff5c693          	not	a3,a1
   12e94:	01d95993          	srli	s3,s2,0x1d
   12e98:	00361593          	slli	a1,a2,0x3
   12e9c:	00b9e9b3          	or	s3,s3,a1
   12ea0:	01d65a93          	srli	s5,a2,0x1d
   12ea4:	00391593          	slli	a1,s2,0x3
   12ea8:	00baeab3          	or	s5,s5,a1
   12eac:	00795593          	srli	a1,s2,0x7
   12eb0:	01961813          	slli	a6,a2,0x19
   12eb4:	0105e5b3          	or	a1,a1,a6
   12eb8:	00765813          	srli	a6,a2,0x7
   12ebc:	01991493          	slli	s1,s2,0x19
   12ec0:	00986833          	or	a6,a6,s1
   12ec4:	010acab3          	xor	s5,s5,a6
   12ec8:	00b9c9b3          	xor	s3,s3,a1
   12ecc:	012acab3          	xor	s5,s5,s2
   12ed0:	00c9c9b3          	xor	s3,s3,a2
   12ed4:	01679913          	slli	s2,a5,0x16
   12ed8:	00a75613          	srli	a2,a4,0xa
   12edc:	00c96933          	or	s2,s2,a2
   12ee0:	01671493          	slli	s1,a4,0x16
   12ee4:	00a7d613          	srli	a2,a5,0xa
   12ee8:	8cd1                	or	s1,s1,a2
   12eea:	00f79593          	slli	a1,a5,0xf
   12eee:	01175613          	srli	a2,a4,0x11
   12ef2:	8dd1                	or	a1,a1,a2
   12ef4:	00f71613          	slli	a2,a4,0xf
   12ef8:	0117d813          	srli	a6,a5,0x11
   12efc:	01066633          	or	a2,a2,a6
   12f00:	00b94933          	xor	s2,s2,a1
   12f04:	8cb1                	xor	s1,s1,a2
   12f06:	00e94933          	xor	s2,s2,a4
   12f0a:	8cbd                	xor	s1,s1,a5
   12f0c:	019f1613          	slli	a2,t5,0x19
   12f10:	007fd793          	srli	a5,t6,0x7
   12f14:	8e5d                	or	a2,a2,a5
   12f16:	019f9713          	slli	a4,t6,0x19
   12f1a:	007f5793          	srli	a5,t5,0x7
   12f1e:	8f5d                	or	a4,a4,a5
   12f20:	009fd793          	srli	a5,t6,0x9
   12f24:	017f1593          	slli	a1,t5,0x17
   12f28:	8fcd                	or	a5,a5,a1
   12f2a:	009f5593          	srli	a1,t5,0x9
   12f2e:	017f9813          	slli	a6,t6,0x17
   12f32:	0105e5b3          	or	a1,a1,a6
   12f36:	8e2d                	xor	a2,a2,a1
   12f38:	8f3d                	xor	a4,a4,a5
   12f3a:	01f69813          	slli	a6,a3,0x1f
   12f3e:	00145793          	srli	a5,s0,0x1
   12f42:	00f86833          	or	a6,a6,a5
   12f46:	01f41593          	slli	a1,s0,0x1f
   12f4a:	0016d793          	srli	a5,a3,0x1
   12f4e:	8ddd                	or	a1,a1,a5
   12f50:	01a69a13          	slli	s4,a3,0x1a
   12f54:	00645793          	srli	a5,s0,0x6
   12f58:	00fa6a33          	or	s4,s4,a5
   12f5c:	01a41793          	slli	a5,s0,0x1a
   12f60:	0066db93          	srli	s7,a3,0x6
   12f64:	0177e7b3          	or	a5,a5,s7
   12f68:	01484833          	xor	a6,a6,s4
   12f6c:	8dbd                	xor	a1,a1,a5
   12f6e:	00884833          	xor	a6,a6,s0
   12f72:	8db5                	xor	a1,a1,a3
   12f74:	01584833          	xor	a6,a6,s5
   12f78:	0135c5b3          	xor	a1,a1,s3
   12f7c:	00564a33          	xor	s4,a2,t0
   12f80:	01d74433          	xor	s0,a4,t4
   12f84:	00db1693          	slli	a3,s6,0xd
   12f88:	0133d793          	srli	a5,t2,0x13
   12f8c:	8edd                	or	a3,a3,a5
   12f8e:	00d39793          	slli	a5,t2,0xd
   12f92:	013b5e93          	srli	t4,s6,0x13
   12f96:	01d7e7b3          	or	a5,a5,t4
   12f9a:	00da4a33          	xor	s4,s4,a3
   12f9e:	8c3d                	xor	s0,s0,a5
   12fa0:	004b1793          	slli	a5,s6,0x4
   12fa4:	01c3d693          	srli	a3,t2,0x1c
   12fa8:	8fd5                	or	a5,a5,a3
   12faa:	0392                	slli	t2,t2,0x4
   12fac:	01cb5b13          	srli	s6,s6,0x1c
   12fb0:	0163e3b3          	or	t2,t2,s6
   12fb4:	00fa4a33          	xor	s4,s4,a5
   12fb8:	00744433          	xor	s0,s0,t2
   12fbc:	01f64633          	xor	a2,a2,t6
   12fc0:	01e74733          	xor	a4,a4,t5
   12fc4:	01264633          	xor	a2,a2,s2
   12fc8:	8f25                	xor	a4,a4,s1
   12fca:	07884793          	xori	a5,a6,120
   12fce:	fffacf93          	not	t6,s5
   12fd2:	fff9cf13          	not	t5,s3
   12fd6:	00ffffb3          	and	t6,t6,a5
   12fda:	00bf7f33          	and	t5,t5,a1
   12fde:	014fcfb3          	xor	t6,t6,s4
   12fe2:	008f4f33          	xor	t5,t5,s0
   12fe6:	fff94393          	not	t2,s2
   12fea:	fff4ce93          	not	t4,s1
   12fee:	00c3f3b3          	and	t2,t2,a2
   12ff2:	00eefeb3          	and	t4,t4,a4
   12ff6:	00f3c3b3          	xor	t2,t2,a5
   12ffa:	00beceb3          	xor	t4,t4,a1
   12ffe:	fffa4693          	not	a3,s4
   13002:	fff44793          	not	a5,s0
   13006:	0156f6b3          	and	a3,a3,s5
   1300a:	0137f7b3          	and	a5,a5,s3
   1300e:	8eb1                	xor	a3,a3,a2
   13010:	8fb9                	xor	a5,a5,a4
   13012:	f8784813          	xori	a6,a6,-121
   13016:	fff5c593          	not	a1,a1
   1301a:	01287833          	and	a6,a6,s2
   1301e:	8de5                	and	a1,a1,s1
   13020:	01584833          	xor	a6,a6,s5
   13024:	0135c5b3          	xor	a1,a1,s3
   13028:	01f84833          	xor	a6,a6,t6
   1302c:	01e5c5b3          	xor	a1,a1,t5
   13030:	00dfc2b3          	xor	t0,t6,a3
   13034:	00ff49b3          	xor	s3,t5,a5
   13038:	fff64613          	not	a2,a2
   1303c:	fff74713          	not	a4,a4
   13040:	01467633          	and	a2,a2,s4
   13044:	8f61                	and	a4,a4,s0
   13046:	01264633          	xor	a2,a2,s2
   1304a:	8f25                	xor	a4,a4,s1
   1304c:	00764633          	xor	a2,a2,t2
   13050:	01d74733          	xor	a4,a4,t4
   13054:	fff3c913          	not	s2,t2
   13058:	fffece93          	not	t4,t4
   1305c:	01d85393          	srli	t2,a6,0x1d
   13060:	00359413          	slli	s0,a1,0x3
   13064:	0083e3b3          	or	t2,t2,s0
   13068:	01d5da93          	srli	s5,a1,0x1d
   1306c:	00381413          	slli	s0,a6,0x3
   13070:	008aeab3          	or	s5,s5,s0
   13074:	00785413          	srli	s0,a6,0x7
   13078:	01959493          	slli	s1,a1,0x19
   1307c:	8c45                	or	s0,s0,s1
   1307e:	0075d493          	srli	s1,a1,0x7
   13082:	01981a13          	slli	s4,a6,0x19
   13086:	0144e4b3          	or	s1,s1,s4
   1308a:	009acab3          	xor	s5,s5,s1
   1308e:	0083c3b3          	xor	t2,t2,s0
   13092:	010acab3          	xor	s5,s5,a6
   13096:	00b3c3b3          	xor	t2,t2,a1
   1309a:	01671493          	slli	s1,a4,0x16
   1309e:	00a65593          	srli	a1,a2,0xa
   130a2:	8ccd                	or	s1,s1,a1
   130a4:	01661413          	slli	s0,a2,0x16
   130a8:	00a75593          	srli	a1,a4,0xa
   130ac:	8c4d                	or	s0,s0,a1
   130ae:	00f71813          	slli	a6,a4,0xf
   130b2:	01165593          	srli	a1,a2,0x11
   130b6:	00b86833          	or	a6,a6,a1
   130ba:	00f61593          	slli	a1,a2,0xf
   130be:	01175a13          	srli	s4,a4,0x11
   130c2:	0145e5b3          	or	a1,a1,s4
   130c6:	0104c4b3          	xor	s1,s1,a6
   130ca:	8c2d                	xor	s0,s0,a1
   130cc:	8cb1                	xor	s1,s1,a2
   130ce:	8c39                	xor	s0,s0,a4
   130d0:	01979813          	slli	a6,a5,0x19
   130d4:	0076d713          	srli	a4,a3,0x7
   130d8:	00e86833          	or	a6,a6,a4
   130dc:	01969593          	slli	a1,a3,0x19
   130e0:	0077d713          	srli	a4,a5,0x7
   130e4:	8dd9                	or	a1,a1,a4
   130e6:	0096d713          	srli	a4,a3,0x9
   130ea:	01779613          	slli	a2,a5,0x17
   130ee:	8f51                	or	a4,a4,a2
   130f0:	0097d613          	srli	a2,a5,0x9
   130f4:	01769a13          	slli	s4,a3,0x17
   130f8:	01466633          	or	a2,a2,s4
   130fc:	00c84833          	xor	a6,a6,a2
   13100:	8db9                	xor	a1,a1,a4
   13102:	01fe9613          	slli	a2,t4,0x1f
   13106:	00195713          	srli	a4,s2,0x1
   1310a:	8e59                	or	a2,a2,a4
   1310c:	01f91713          	slli	a4,s2,0x1f
   13110:	001eda13          	srli	s4,t4,0x1
   13114:	01476733          	or	a4,a4,s4
   13118:	01ae9b13          	slli	s6,t4,0x1a
   1311c:	00695a13          	srli	s4,s2,0x6
   13120:	014b6b33          	or	s6,s6,s4
   13124:	01a91a13          	slli	s4,s2,0x1a
   13128:	006edb93          	srli	s7,t4,0x6
   1312c:	017a6a33          	or	s4,s4,s7
   13130:	01664633          	xor	a2,a2,s6
   13134:	01474733          	xor	a4,a4,s4
   13138:	01264633          	xor	a2,a2,s2
   1313c:	01d74733          	xor	a4,a4,t4
   13140:	01564633          	xor	a2,a2,s5
   13144:	00774733          	xor	a4,a4,t2
   13148:	00d99a13          	slli	s4,s3,0xd
   1314c:	0132de93          	srli	t4,t0,0x13
   13150:	01da6a33          	or	s4,s4,t4
   13154:	00d29913          	slli	s2,t0,0xd
   13158:	0139de93          	srli	t4,s3,0x13
   1315c:	01d96933          	or	s2,s2,t4
   13160:	010fcfb3          	xor	t6,t6,a6
   13164:	00bf4f33          	xor	t5,t5,a1
   13168:	01fa4a33          	xor	s4,s4,t6
   1316c:	01e94933          	xor	s2,s2,t5
   13170:	00499e93          	slli	t4,s3,0x4
   13174:	01c2df13          	srli	t5,t0,0x1c
   13178:	01eeeeb3          	or	t4,t4,t5
   1317c:	0292                	slli	t0,t0,0x4
   1317e:	01c9d993          	srli	s3,s3,0x1c
   13182:	0132e2b3          	or	t0,t0,s3
   13186:	01da4a33          	xor	s4,s4,t4
   1318a:	00594933          	xor	s2,s2,t0
   1318e:	0106c6b3          	xor	a3,a3,a6
   13192:	8fad                	xor	a5,a5,a1
   13194:	8ea5                	xor	a3,a3,s1
   13196:	8fa1                	xor	a5,a5,s0
   13198:	06964f13          	xori	t5,a2,105
   1319c:	fffacf93          	not	t6,s5
   131a0:	fff3ce93          	not	t4,t2
   131a4:	01efffb3          	and	t6,t6,t5
   131a8:	00eefeb3          	and	t4,t4,a4
   131ac:	014fcfb3          	xor	t6,t6,s4
   131b0:	012eceb3          	xor	t4,t4,s2
   131b4:	fff4c813          	not	a6,s1
   131b8:	fff44593          	not	a1,s0
   131bc:	00d87833          	and	a6,a6,a3
   131c0:	8dfd                	and	a1,a1,a5
   131c2:	01e84833          	xor	a6,a6,t5
   131c6:	8db9                	xor	a1,a1,a4
   131c8:	fffa4293          	not	t0,s4
   131cc:	fff94f13          	not	t5,s2
   131d0:	0152f2b3          	and	t0,t0,s5
   131d4:	007f7f33          	and	t5,t5,t2
   131d8:	00d2c2b3          	xor	t0,t0,a3
   131dc:	00ff4f33          	xor	t5,t5,a5
   131e0:	f9664993          	xori	s3,a2,-106
   131e4:	fff74713          	not	a4,a4
   131e8:	0099f9b3          	and	s3,s3,s1
   131ec:	8f61                	and	a4,a4,s0
   131ee:	0159c9b3          	xor	s3,s3,s5
   131f2:	00774733          	xor	a4,a4,t2
   131f6:	01f9c9b3          	xor	s3,s3,t6
   131fa:	01d74633          	xor	a2,a4,t4
   131fe:	005fc3b3          	xor	t2,t6,t0
   13202:	01eecab3          	xor	s5,t4,t5
   13206:	fff6c713          	not	a4,a3
   1320a:	fff7c793          	not	a5,a5
   1320e:	01477733          	and	a4,a4,s4
   13212:	0127f7b3          	and	a5,a5,s2
   13216:	8f25                	xor	a4,a4,s1
   13218:	8fa1                	xor	a5,a5,s0
   1321a:	01074733          	xor	a4,a4,a6
   1321e:	8fad                	xor	a5,a5,a1
   13220:	fff84a13          	not	s4,a6
   13224:	fff5c693          	not	a3,a1
   13228:	01d9d493          	srli	s1,s3,0x1d
   1322c:	00361593          	slli	a1,a2,0x3
   13230:	8ccd                	or	s1,s1,a1
   13232:	01d65913          	srli	s2,a2,0x1d
   13236:	00399593          	slli	a1,s3,0x3
   1323a:	00b96933          	or	s2,s2,a1
   1323e:	0079d593          	srli	a1,s3,0x7
   13242:	01961813          	slli	a6,a2,0x19
   13246:	0105e5b3          	or	a1,a1,a6
   1324a:	00765813          	srli	a6,a2,0x7
   1324e:	01999413          	slli	s0,s3,0x19
   13252:	00886833          	or	a6,a6,s0
   13256:	01094933          	xor	s2,s2,a6
   1325a:	8cad                	xor	s1,s1,a1
   1325c:	01394933          	xor	s2,s2,s3
   13260:	8cb1                	xor	s1,s1,a2
   13262:	01679993          	slli	s3,a5,0x16
   13266:	00a75613          	srli	a2,a4,0xa
   1326a:	00c9e9b3          	or	s3,s3,a2
   1326e:	01671413          	slli	s0,a4,0x16
   13272:	00a7d613          	srli	a2,a5,0xa
   13276:	8c51                	or	s0,s0,a2
   13278:	00f79593          	slli	a1,a5,0xf
   1327c:	01175613          	srli	a2,a4,0x11
   13280:	8dd1                	or	a1,a1,a2
   13282:	00f71613          	slli	a2,a4,0xf
   13286:	0117d813          	srli	a6,a5,0x11
   1328a:	01066633          	or	a2,a2,a6
   1328e:	00b9c9b3          	xor	s3,s3,a1
   13292:	8c31                	xor	s0,s0,a2
   13294:	00e9c9b3          	xor	s3,s3,a4
   13298:	8c3d                	xor	s0,s0,a5
   1329a:	019f1613          	slli	a2,t5,0x19
   1329e:	0072d793          	srli	a5,t0,0x7
   132a2:	8e5d                	or	a2,a2,a5
   132a4:	01929713          	slli	a4,t0,0x19
   132a8:	007f5793          	srli	a5,t5,0x7
   132ac:	8f5d                	or	a4,a4,a5
   132ae:	0092d793          	srli	a5,t0,0x9
   132b2:	017f1593          	slli	a1,t5,0x17
   132b6:	8fcd                	or	a5,a5,a1
   132b8:	009f5593          	srli	a1,t5,0x9
   132bc:	01729813          	slli	a6,t0,0x17
   132c0:	0105e5b3          	or	a1,a1,a6
   132c4:	8e2d                	xor	a2,a2,a1
   132c6:	8f3d                	xor	a4,a4,a5
   132c8:	01f69813          	slli	a6,a3,0x1f
   132cc:	001a5793          	srli	a5,s4,0x1
   132d0:	00f86833          	or	a6,a6,a5
   132d4:	01fa1593          	slli	a1,s4,0x1f
   132d8:	0016d793          	srli	a5,a3,0x1
   132dc:	8ddd                	or	a1,a1,a5
   132de:	01a69b13          	slli	s6,a3,0x1a
   132e2:	006a5793          	srli	a5,s4,0x6
   132e6:	00fb6b33          	or	s6,s6,a5
   132ea:	01aa1793          	slli	a5,s4,0x1a
   132ee:	0066db93          	srli	s7,a3,0x6
   132f2:	0177e7b3          	or	a5,a5,s7
   132f6:	01684833          	xor	a6,a6,s6
   132fa:	8dbd                	xor	a1,a1,a5
   132fc:	01484833          	xor	a6,a6,s4
   13300:	8db5                	xor	a1,a1,a3
   13302:	01284833          	xor	a6,a6,s2
   13306:	8da5                	xor	a1,a1,s1
   13308:	01f64a33          	xor	s4,a2,t6
   1330c:	01d74eb3          	xor	t4,a4,t4
   13310:	00da9693          	slli	a3,s5,0xd
   13314:	0133d793          	srli	a5,t2,0x13
   13318:	8edd                	or	a3,a3,a5
   1331a:	00d39793          	slli	a5,t2,0xd
   1331e:	013adf93          	srli	t6,s5,0x13
   13322:	01f7e7b3          	or	a5,a5,t6
   13326:	00da4a33          	xor	s4,s4,a3
   1332a:	00fecfb3          	xor	t6,t4,a5
   1332e:	004a9793          	slli	a5,s5,0x4
   13332:	01c3d693          	srli	a3,t2,0x1c
   13336:	8fd5                	or	a5,a5,a3
   13338:	0392                	slli	t2,t2,0x4
   1333a:	01cada93          	srli	s5,s5,0x1c
   1333e:	0153e3b3          	or	t2,t2,s5
   13342:	00fa4a33          	xor	s4,s4,a5
   13346:	007fcfb3          	xor	t6,t6,t2
   1334a:	00564633          	xor	a2,a2,t0
   1334e:	01e74733          	xor	a4,a4,t5
   13352:	01364633          	xor	a2,a2,s3
   13356:	8f21                	xor	a4,a4,s0
   13358:	05a84793          	xori	a5,a6,90
   1335c:	fff94f13          	not	t5,s2
   13360:	fff4ce93          	not	t4,s1
   13364:	00ff7f33          	and	t5,t5,a5
   13368:	00befeb3          	and	t4,t4,a1
   1336c:	014f4f33          	xor	t5,t5,s4
   13370:	01feceb3          	xor	t4,t4,t6
   13374:	fff9c393          	not	t2,s3
   13378:	fff44293          	not	t0,s0
   1337c:	00c3f3b3          	and	t2,t2,a2
   13380:	00e2f2b3          	and	t0,t0,a4
   13384:	00f3c3b3          	xor	t2,t2,a5
   13388:	00b2c2b3          	xor	t0,t0,a1
   1338c:	fffa4693          	not	a3,s4
   13390:	ffffc793          	not	a5,t6
   13394:	0126f6b3          	and	a3,a3,s2
   13398:	8fe5                	and	a5,a5,s1
   1339a:	8eb1                	xor	a3,a3,a2
   1339c:	8fb9                	xor	a5,a5,a4
   1339e:	fa584813          	xori	a6,a6,-91
   133a2:	fff5c593          	not	a1,a1
   133a6:	01387833          	and	a6,a6,s3
   133aa:	8de1                	and	a1,a1,s0
   133ac:	01284833          	xor	a6,a6,s2
   133b0:	8da5                	xor	a1,a1,s1
   133b2:	01e84833          	xor	a6,a6,t5
   133b6:	01d5c5b3          	xor	a1,a1,t4
   133ba:	00df44b3          	xor	s1,t5,a3
   133be:	00fec933          	xor	s2,t4,a5
   133c2:	fff64613          	not	a2,a2
   133c6:	fff74713          	not	a4,a4
   133ca:	01467633          	and	a2,a2,s4
   133ce:	01f77733          	and	a4,a4,t6
   133d2:	01364633          	xor	a2,a2,s3
   133d6:	8f21                	xor	a4,a4,s0
   133d8:	00764633          	xor	a2,a2,t2
   133dc:	00574733          	xor	a4,a4,t0
   133e0:	fff3c393          	not	t2,t2
   133e4:	fff2c293          	not	t0,t0
   133e8:	01d85a13          	srli	s4,a6,0x1d
   133ec:	00359f93          	slli	t6,a1,0x3
   133f0:	01fa6a33          	or	s4,s4,t6
   133f4:	01d5d993          	srli	s3,a1,0x1d
   133f8:	00381f93          	slli	t6,a6,0x3
   133fc:	01f9e9b3          	or	s3,s3,t6
   13400:	00785f93          	srli	t6,a6,0x7
   13404:	01959413          	slli	s0,a1,0x19
   13408:	008fefb3          	or	t6,t6,s0
   1340c:	0075d413          	srli	s0,a1,0x7
   13410:	01981a93          	slli	s5,a6,0x19
   13414:	01546433          	or	s0,s0,s5
   13418:	0089c9b3          	xor	s3,s3,s0
   1341c:	01fa4a33          	xor	s4,s4,t6
   13420:	0109c9b3          	xor	s3,s3,a6
   13424:	00ba4a33          	xor	s4,s4,a1
   13428:	01671413          	slli	s0,a4,0x16
   1342c:	00a65593          	srli	a1,a2,0xa
   13430:	8c4d                	or	s0,s0,a1
   13432:	01661f93          	slli	t6,a2,0x16
   13436:	00a75593          	srli	a1,a4,0xa
   1343a:	00bfefb3          	or	t6,t6,a1
   1343e:	00f71813          	slli	a6,a4,0xf
   13442:	01165593          	srli	a1,a2,0x11
   13446:	00b86833          	or	a6,a6,a1
   1344a:	00f61593          	slli	a1,a2,0xf
   1344e:	01175a93          	srli	s5,a4,0x11
   13452:	0155e5b3          	or	a1,a1,s5
   13456:	01044433          	xor	s0,s0,a6
   1345a:	00bfcfb3          	xor	t6,t6,a1
   1345e:	8c31                	xor	s0,s0,a2
   13460:	00efcfb3          	xor	t6,t6,a4
   13464:	01979593          	slli	a1,a5,0x19
   13468:	0076d713          	srli	a4,a3,0x7
   1346c:	8dd9                	or	a1,a1,a4
   1346e:	01969613          	slli	a2,a3,0x19
   13472:	0077d713          	srli	a4,a5,0x7
   13476:	8e59                	or	a2,a2,a4
   13478:	0096d713          	srli	a4,a3,0x9
   1347c:	01779813          	slli	a6,a5,0x17
   13480:	01076733          	or	a4,a4,a6
   13484:	0097d813          	srli	a6,a5,0x9
   13488:	01769a93          	slli	s5,a3,0x17
   1348c:	01586833          	or	a6,a6,s5
   13490:	0105c5b3          	xor	a1,a1,a6
   13494:	8e39                	xor	a2,a2,a4
   13496:	01f29813          	slli	a6,t0,0x1f
   1349a:	0013d713          	srli	a4,t2,0x1
   1349e:	00e86833          	or	a6,a6,a4
   134a2:	01f39713          	slli	a4,t2,0x1f
   134a6:	0012da93          	srli	s5,t0,0x1
   134aa:	01576733          	or	a4,a4,s5
   134ae:	01a29b13          	slli	s6,t0,0x1a
   134b2:	0063da93          	srli	s5,t2,0x6
   134b6:	015b6b33          	or	s6,s6,s5
   134ba:	01a39a93          	slli	s5,t2,0x1a
   134be:	0062db93          	srli	s7,t0,0x6
   134c2:	017aeab3          	or	s5,s5,s7
   134c6:	01684833          	xor	a6,a6,s6
   134ca:	01574733          	xor	a4,a4,s5
   134ce:	00784833          	xor	a6,a6,t2
   134d2:	00574733          	xor	a4,a4,t0
   134d6:	01384833          	xor	a6,a6,s3
   134da:	01474733          	xor	a4,a4,s4
   134de:	00bf4f33          	xor	t5,t5,a1
   134e2:	00cec3b3          	xor	t2,t4,a2
   134e6:	00d91293          	slli	t0,s2,0xd
   134ea:	0134de93          	srli	t4,s1,0x13
   134ee:	01d2e2b3          	or	t0,t0,t4
   134f2:	00d49e93          	slli	t4,s1,0xd
   134f6:	01395a93          	srli	s5,s2,0x13
   134fa:	015eeeb3          	or	t4,t4,s5
   134fe:	005f4f33          	xor	t5,t5,t0
   13502:	01d3c3b3          	xor	t2,t2,t4
   13506:	00491e93          	slli	t4,s2,0x4
   1350a:	01c4d293          	srli	t0,s1,0x1c
   1350e:	005eeeb3          	or	t4,t4,t0
   13512:	0492                	slli	s1,s1,0x4
   13514:	01c95913          	srli	s2,s2,0x1c
   13518:	0124e4b3          	or	s1,s1,s2
   1351c:	01df4933          	xor	s2,t5,t4
   13520:	0093c3b3          	xor	t2,t2,s1
   13524:	8ead                	xor	a3,a3,a1
   13526:	8fb1                	xor	a5,a5,a2
   13528:	8ea1                	xor	a3,a3,s0
   1352a:	01f7c7b3          	xor	a5,a5,t6
   1352e:	04b84613          	xori	a2,a6,75
   13532:	fff9ca93          	not	s5,s3
   13536:	fffa4493          	not	s1,s4
   1353a:	00cafab3          	and	s5,s5,a2
   1353e:	8cf9                	and	s1,s1,a4
   13540:	012acab3          	xor	s5,s5,s2
   13544:	0074c4b3          	xor	s1,s1,t2
   13548:	fff44293          	not	t0,s0
   1354c:	ffffce93          	not	t4,t6
   13550:	00d2f2b3          	and	t0,t0,a3
   13554:	00fefeb3          	and	t4,t4,a5
   13558:	00c2c2b3          	xor	t0,t0,a2
   1355c:	00eeceb3          	xor	t4,t4,a4
   13560:	fff94593          	not	a1,s2
   13564:	fff3c613          	not	a2,t2
   13568:	0135f5b3          	and	a1,a1,s3
   1356c:	01467633          	and	a2,a2,s4
   13570:	8db5                	xor	a1,a1,a3
   13572:	8e3d                	xor	a2,a2,a5
   13574:	fb484f13          	xori	t5,a6,-76
   13578:	fff74713          	not	a4,a4
   1357c:	008f7f33          	and	t5,t5,s0
   13580:	01f77733          	and	a4,a4,t6
   13584:	013f4f33          	xor	t5,t5,s3
   13588:	01474733          	xor	a4,a4,s4
   1358c:	015f4f33          	xor	t5,t5,s5
   13590:	00974833          	xor	a6,a4,s1
   13594:	00bacab3          	xor	s5,s5,a1
   13598:	8cb1                	xor	s1,s1,a2
   1359a:	fff6c713          	not	a4,a3
   1359e:	fff7c793          	not	a5,a5
   135a2:	01277733          	and	a4,a4,s2
   135a6:	0077f7b3          	and	a5,a5,t2
   135aa:	8f21                	xor	a4,a4,s0
   135ac:	01f7c7b3          	xor	a5,a5,t6
   135b0:	00574733          	xor	a4,a4,t0
   135b4:	01d7c7b3          	xor	a5,a5,t4
   135b8:	fff2cf93          	not	t6,t0
   135bc:	fffec693          	not	a3,t4
   135c0:	00d49293          	slli	t0,s1,0xd
   135c4:	013ade93          	srli	t4,s5,0x13
   135c8:	01d2e2b3          	or	t0,t0,t4
   135cc:	00da9e93          	slli	t4,s5,0xd
   135d0:	0134d393          	srli	t2,s1,0x13
   135d4:	007eeeb3          	or	t4,t4,t2
   135d8:	00449413          	slli	s0,s1,0x4
   135dc:	01cad393          	srli	t2,s5,0x1c
   135e0:	00746433          	or	s0,s0,t2
   135e4:	004a9393          	slli	t2,s5,0x4
   135e8:	01c4d913          	srli	s2,s1,0x1c
   135ec:	0123e3b3          	or	t2,t2,s2
   135f0:	0082c2b3          	xor	t0,t0,s0
   135f4:	007eceb3          	xor	t4,t4,t2
   135f8:	0152c2b3          	xor	t0,t0,s5
   135fc:	009eceb3          	xor	t4,t4,s1
   13600:	01df5393          	srli	t2,t5,0x1d
   13604:	00381413          	slli	s0,a6,0x3
   13608:	0083e3b3          	or	t2,t2,s0
   1360c:	01d85413          	srli	s0,a6,0x1d
   13610:	003f1493          	slli	s1,t5,0x3
   13614:	8c45                	or	s0,s0,s1
   13616:	007f5493          	srli	s1,t5,0x7
   1361a:	01981913          	slli	s2,a6,0x19
   1361e:	0124e4b3          	or	s1,s1,s2
   13622:	00785913          	srli	s2,a6,0x7
   13626:	019f1993          	slli	s3,t5,0x19
   1362a:	01396933          	or	s2,s2,s3
   1362e:	01244433          	xor	s0,s0,s2
   13632:	0093c3b3          	xor	t2,t2,s1
   13636:	01e44433          	xor	s0,s0,t5
   1363a:	0103c3b3          	xor	t2,t2,a6
   1363e:	01f69913          	slli	s2,a3,0x1f
   13642:	001fd813          	srli	a6,t6,0x1
   13646:	01096933          	or	s2,s2,a6
   1364a:	01ff9493          	slli	s1,t6,0x1f
   1364e:	0016d813          	srli	a6,a3,0x1
   13652:	0104e4b3          	or	s1,s1,a6
   13656:	01a69f13          	slli	t5,a3,0x1a
   1365a:	006fd813          	srli	a6,t6,0x6
   1365e:	010f6f33          	or	t5,t5,a6
   13662:	01af9813          	slli	a6,t6,0x1a
   13666:	0066d993          	srli	s3,a3,0x6
   1366a:	01386833          	or	a6,a6,s3
   1366e:	01e94933          	xor	s2,s2,t5
   13672:	0104c4b3          	xor	s1,s1,a6
   13676:	01f94933          	xor	s2,s2,t6
   1367a:	8cb5                	xor	s1,s1,a3
   1367c:	01679f93          	slli	t6,a5,0x16
   13680:	00a75693          	srli	a3,a4,0xa
   13684:	00dfefb3          	or	t6,t6,a3
   13688:	01671f13          	slli	t5,a4,0x16
   1368c:	00a7d693          	srli	a3,a5,0xa
   13690:	00df6f33          	or	t5,t5,a3
   13694:	00f79813          	slli	a6,a5,0xf
   13698:	01175693          	srli	a3,a4,0x11
   1369c:	00d86833          	or	a6,a6,a3
   136a0:	00f71693          	slli	a3,a4,0xf
   136a4:	0117d993          	srli	s3,a5,0x11
   136a8:	0136e6b3          	or	a3,a3,s3
   136ac:	010fcfb3          	xor	t6,t6,a6
   136b0:	00df4f33          	xor	t5,t5,a3
   136b4:	00efcfb3          	xor	t6,t6,a4
   136b8:	00ff4f33          	xor	t5,t5,a5
   136bc:	01961713          	slli	a4,a2,0x19
   136c0:	0075d793          	srli	a5,a1,0x7
   136c4:	8f5d                	or	a4,a4,a5
   136c6:	01959793          	slli	a5,a1,0x19
   136ca:	00765693          	srli	a3,a2,0x7
   136ce:	8fd5                	or	a5,a5,a3
   136d0:	0095d693          	srli	a3,a1,0x9
   136d4:	01761813          	slli	a6,a2,0x17
   136d8:	0106e6b3          	or	a3,a3,a6
   136dc:	00965813          	srli	a6,a2,0x9
   136e0:	01759993          	slli	s3,a1,0x17
   136e4:	01386833          	or	a6,a6,s3
   136e8:	01074733          	xor	a4,a4,a6
   136ec:	8fb5                	xor	a5,a5,a3
   136ee:	00b74833          	xor	a6,a4,a1
   136f2:	8e3d                	xor	a2,a2,a5
   136f4:	0521                	addi	a0,a0,8
   136f6:	01150963          	beq	a0,a7,13708 <crypto_hash+0x3530>
   136fa:	86aa                	mv	a3,a0
   136fc:	03800713          	li	a4,56
   13700:	001e9993          	slli	s3,t4,0x1
   13704:	960ff06f          	j	12864 <crypto_hash+0x268c>
   13708:	03800713          	li	a4,56
   1370c:	001e9513          	slli	a0,t4,0x1
   13710:	45fd                	li	a1,31
   13712:	5661                	li	a2,-8
   13714:	a831                	j	13730 <crypto_hash+0x3558>
   13716:	40e586b3          	sub	a3,a1,a4
   1371a:	00d516b3          	sll	a3,a0,a3
   1371e:	00e2d7b3          	srl	a5,t0,a4
   13722:	8fd5                	or	a5,a5,a3
   13724:	00f88023          	sb	a5,0(a7)
   13728:	1761                	addi	a4,a4,-8
   1372a:	0885                	addi	a7,a7,1
   1372c:	00c70963          	beq	a4,a2,1373e <crypto_hash+0x3566>
   13730:	fe070793          	addi	a5,a4,-32
   13734:	fe07c1e3          	bltz	a5,13716 <crypto_hash+0x353e>
   13738:	00fed7b3          	srl	a5,t4,a5
   1373c:	b7e5                	j	13724 <crypto_hash+0x354c>
   1373e:	4501                	li	a0,0
   13740:	5472                	lw	s0,60(sp)
   13742:	54e2                	lw	s1,56(sp)
   13744:	5952                	lw	s2,52(sp)
   13746:	59c2                	lw	s3,48(sp)
   13748:	5a32                	lw	s4,44(sp)
   1374a:	5aa2                	lw	s5,40(sp)
   1374c:	5b12                	lw	s6,36(sp)
   1374e:	5b82                	lw	s7,32(sp)
   13750:	4dc2                	lw	s11,16(sp)
   13752:	6121                	addi	sp,sp,64
   13754:	8082                	ret

00013756 <__fp_lock>:
   13756:	4501                	li	a0,0
   13758:	8082                	ret

0001375a <stdio_exit_handler>:
   1375a:	6679                	lui	a2,0x1e
   1375c:	65d9                	lui	a1,0x16
   1375e:	6579                	lui	a0,0x1e
   13760:	01060613          	addi	a2,a2,16 # 1e010 <__sglue>
   13764:	4f858593          	addi	a1,a1,1272 # 164f8 <_fclose_r>
   13768:	02050513          	addi	a0,a0,32 # 1e020 <_impure_data>
   1376c:	aca9                	j	139c6 <_fwalk_sglue>

0001376e <cleanup_stdio>:
   1376e:	414c                	lw	a1,4(a0)
   13770:	1141                	addi	sp,sp,-16
   13772:	c422                	sw	s0,8(sp)
   13774:	c606                	sw	ra,12(sp)
   13776:	f8418793          	addi	a5,gp,-124 # 1e794 <__sf>
   1377a:	842a                	mv	s0,a0
   1377c:	00f58463          	beq	a1,a5,13784 <cleanup_stdio+0x16>
   13780:	579020ef          	jal	164f8 <_fclose_r>
   13784:	440c                	lw	a1,8(s0)
   13786:	fec18793          	addi	a5,gp,-20 # 1e7fc <__sf+0x68>
   1378a:	00f58563          	beq	a1,a5,13794 <cleanup_stdio+0x26>
   1378e:	8522                	mv	a0,s0
   13790:	569020ef          	jal	164f8 <_fclose_r>
   13794:	444c                	lw	a1,12(s0)
   13796:	05418793          	addi	a5,gp,84 # 1e864 <__global_pointer$+0x54>
   1379a:	00f58863          	beq	a1,a5,137aa <cleanup_stdio+0x3c>
   1379e:	8522                	mv	a0,s0
   137a0:	4422                	lw	s0,8(sp)
   137a2:	40b2                	lw	ra,12(sp)
   137a4:	0141                	addi	sp,sp,16
   137a6:	5530206f          	j	164f8 <_fclose_r>
   137aa:	40b2                	lw	ra,12(sp)
   137ac:	4422                	lw	s0,8(sp)
   137ae:	0141                	addi	sp,sp,16
   137b0:	8082                	ret

000137b2 <__fp_unlock>:
   137b2:	4501                	li	a0,0
   137b4:	8082                	ret

000137b6 <global_stdio_init.part.0>:
   137b6:	1101                	addi	sp,sp,-32
   137b8:	67cd                	lui	a5,0x13
   137ba:	cc22                	sw	s0,24(sp)
   137bc:	75a78793          	addi	a5,a5,1882 # 1375a <stdio_exit_handler>
   137c0:	f8418413          	addi	s0,gp,-124 # 1e794 <__sf>
   137c4:	ce06                	sw	ra,28(sp)
   137c6:	ca26                	sw	s1,20(sp)
   137c8:	c84a                	sw	s2,16(sp)
   137ca:	c64e                	sw	s3,12(sp)
   137cc:	c452                	sw	s4,8(sp)
   137ce:	f4f1a423          	sw	a5,-184(gp) # 1e758 <__stdio_exit_handler>
   137d2:	4621                	li	a2,8
   137d4:	4791                	li	a5,4
   137d6:	4581                	li	a1,0
   137d8:	fe018513          	addi	a0,gp,-32 # 1e7f0 <__sf+0x5c>
   137dc:	c45c                	sw	a5,12(s0)
   137de:	00042023          	sw	zero,0(s0)
   137e2:	00042223          	sw	zero,4(s0)
   137e6:	00042423          	sw	zero,8(s0)
   137ea:	06042223          	sw	zero,100(s0)
   137ee:	00042823          	sw	zero,16(s0)
   137f2:	00042a23          	sw	zero,20(s0)
   137f6:	00042c23          	sw	zero,24(s0)
   137fa:	2d85                	jal	13e6a <memset>
   137fc:	67c1                	lui	a5,0x10
   137fe:	6a51                	lui	s4,0x14
   13800:	69d1                	lui	s3,0x14
   13802:	6951                	lui	s2,0x14
   13804:	64d1                	lui	s1,0x14
   13806:	bc2a0a13          	addi	s4,s4,-1086 # 13bc2 <__sread>
   1380a:	bfc98993          	addi	s3,s3,-1028 # 13bfc <__swrite>
   1380e:	c4c90913          	addi	s2,s2,-948 # 13c4c <__sseek>
   13812:	c9448493          	addi	s1,s1,-876 # 13c94 <__sclose>
   13816:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   13818:	4621                	li	a2,8
   1381a:	4581                	li	a1,0
   1381c:	04818513          	addi	a0,gp,72 # 1e858 <__global_pointer$+0x48>
   13820:	03442023          	sw	s4,32(s0)
   13824:	03342223          	sw	s3,36(s0)
   13828:	03242423          	sw	s2,40(s0)
   1382c:	d444                	sw	s1,44(s0)
   1382e:	d87c                	sw	a5,116(s0)
   13830:	cc40                	sw	s0,28(s0)
   13832:	06042423          	sw	zero,104(s0)
   13836:	06042623          	sw	zero,108(s0)
   1383a:	06042823          	sw	zero,112(s0)
   1383e:	0c042623          	sw	zero,204(s0)
   13842:	06042c23          	sw	zero,120(s0)
   13846:	06042e23          	sw	zero,124(s0)
   1384a:	08042023          	sw	zero,128(s0)
   1384e:	2d31                	jal	13e6a <memset>
   13850:	000207b7          	lui	a5,0x20
   13854:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x158e>
   13856:	fec18713          	addi	a4,gp,-20 # 1e7fc <__sf+0x68>
   1385a:	4621                	li	a2,8
   1385c:	4581                	li	a1,0
   1385e:	0b018513          	addi	a0,gp,176 # 1e8c0 <__global_pointer$+0xb0>
   13862:	09442423          	sw	s4,136(s0)
   13866:	09342623          	sw	s3,140(s0)
   1386a:	09242823          	sw	s2,144(s0)
   1386e:	08942a23          	sw	s1,148(s0)
   13872:	0cf42e23          	sw	a5,220(s0)
   13876:	08e42223          	sw	a4,132(s0)
   1387a:	0c042823          	sw	zero,208(s0)
   1387e:	0c042a23          	sw	zero,212(s0)
   13882:	0c042c23          	sw	zero,216(s0)
   13886:	12042a23          	sw	zero,308(s0)
   1388a:	0e042023          	sw	zero,224(s0)
   1388e:	0e042223          	sw	zero,228(s0)
   13892:	0e042423          	sw	zero,232(s0)
   13896:	2bd1                	jal	13e6a <memset>
   13898:	05418793          	addi	a5,gp,84 # 1e864 <__global_pointer$+0x54>
   1389c:	0f442823          	sw	s4,240(s0)
   138a0:	0f342a23          	sw	s3,244(s0)
   138a4:	0f242c23          	sw	s2,248(s0)
   138a8:	0e942e23          	sw	s1,252(s0)
   138ac:	40f2                	lw	ra,28(sp)
   138ae:	0ef42623          	sw	a5,236(s0)
   138b2:	4462                	lw	s0,24(sp)
   138b4:	44d2                	lw	s1,20(sp)
   138b6:	4942                	lw	s2,16(sp)
   138b8:	49b2                	lw	s3,12(sp)
   138ba:	4a22                	lw	s4,8(sp)
   138bc:	6105                	addi	sp,sp,32
   138be:	8082                	ret

000138c0 <__sfp>:
   138c0:	f481a783          	lw	a5,-184(gp) # 1e758 <__stdio_exit_handler>
   138c4:	1101                	addi	sp,sp,-32
   138c6:	c64e                	sw	s3,12(sp)
   138c8:	ce06                	sw	ra,28(sp)
   138ca:	cc22                	sw	s0,24(sp)
   138cc:	ca26                	sw	s1,20(sp)
   138ce:	c84a                	sw	s2,16(sp)
   138d0:	89aa                	mv	s3,a0
   138d2:	c7cd                	beqz	a5,1397c <__sfp+0xbc>
   138d4:	6979                	lui	s2,0x1e
   138d6:	01090913          	addi	s2,s2,16 # 1e010 <__sglue>
   138da:	54fd                	li	s1,-1
   138dc:	00492783          	lw	a5,4(s2)
   138e0:	00892403          	lw	s0,8(s2)
   138e4:	17fd                	addi	a5,a5,-1
   138e6:	0007d763          	bgez	a5,138f4 <__sfp+0x34>
   138ea:	a8b9                	j	13948 <__sfp+0x88>
   138ec:	06840413          	addi	s0,s0,104
   138f0:	04978c63          	beq	a5,s1,13948 <__sfp+0x88>
   138f4:	00c41703          	lh	a4,12(s0)
   138f8:	17fd                	addi	a5,a5,-1
   138fa:	fb6d                	bnez	a4,138ec <__sfp+0x2c>
   138fc:	77c1                	lui	a5,0xffff0
   138fe:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd157d>
   13900:	c45c                	sw	a5,12(s0)
   13902:	06042223          	sw	zero,100(s0)
   13906:	00042023          	sw	zero,0(s0)
   1390a:	00042423          	sw	zero,8(s0)
   1390e:	00042223          	sw	zero,4(s0)
   13912:	00042823          	sw	zero,16(s0)
   13916:	00042a23          	sw	zero,20(s0)
   1391a:	00042c23          	sw	zero,24(s0)
   1391e:	4621                	li	a2,8
   13920:	4581                	li	a1,0
   13922:	05c40513          	addi	a0,s0,92
   13926:	2391                	jal	13e6a <memset>
   13928:	02042823          	sw	zero,48(s0)
   1392c:	02042a23          	sw	zero,52(s0)
   13930:	04042223          	sw	zero,68(s0)
   13934:	04042423          	sw	zero,72(s0)
   13938:	40f2                	lw	ra,28(sp)
   1393a:	8522                	mv	a0,s0
   1393c:	4462                	lw	s0,24(sp)
   1393e:	44d2                	lw	s1,20(sp)
   13940:	4942                	lw	s2,16(sp)
   13942:	49b2                	lw	s3,12(sp)
   13944:	6105                	addi	sp,sp,32
   13946:	8082                	ret
   13948:	00092403          	lw	s0,0(s2)
   1394c:	c019                	beqz	s0,13952 <__sfp+0x92>
   1394e:	8922                	mv	s2,s0
   13950:	b771                	j	138dc <__sfp+0x1c>
   13952:	1ac00593          	li	a1,428
   13956:	854e                	mv	a0,s3
   13958:	183000ef          	jal	142da <_malloc_r>
   1395c:	842a                	mv	s0,a0
   1395e:	c10d                	beqz	a0,13980 <__sfp+0xc0>
   13960:	0531                	addi	a0,a0,12
   13962:	4791                	li	a5,4
   13964:	00042023          	sw	zero,0(s0)
   13968:	c05c                	sw	a5,4(s0)
   1396a:	c408                	sw	a0,8(s0)
   1396c:	1a000613          	li	a2,416
   13970:	4581                	li	a1,0
   13972:	29e5                	jal	13e6a <memset>
   13974:	00892023          	sw	s0,0(s2)
   13978:	8922                	mv	s2,s0
   1397a:	b78d                	j	138dc <__sfp+0x1c>
   1397c:	3d2d                	jal	137b6 <global_stdio_init.part.0>
   1397e:	bf99                	j	138d4 <__sfp+0x14>
   13980:	00092023          	sw	zero,0(s2)
   13984:	47b1                	li	a5,12
   13986:	00f9a023          	sw	a5,0(s3)
   1398a:	b77d                	j	13938 <__sfp+0x78>

0001398c <__sinit>:
   1398c:	595c                	lw	a5,52(a0)
   1398e:	c391                	beqz	a5,13992 <__sinit+0x6>
   13990:	8082                	ret
   13992:	f481a703          	lw	a4,-184(gp) # 1e758 <__stdio_exit_handler>
   13996:	67cd                	lui	a5,0x13
   13998:	76e78793          	addi	a5,a5,1902 # 1376e <cleanup_stdio>
   1399c:	d95c                	sw	a5,52(a0)
   1399e:	fb6d                	bnez	a4,13990 <__sinit+0x4>
   139a0:	bd19                	j	137b6 <global_stdio_init.part.0>

000139a2 <__sfp_lock_acquire>:
   139a2:	8082                	ret

000139a4 <__sfp_lock_release>:
   139a4:	8082                	ret

000139a6 <__fp_lock_all>:
   139a6:	6679                	lui	a2,0x1e
   139a8:	65cd                	lui	a1,0x13
   139aa:	01060613          	addi	a2,a2,16 # 1e010 <__sglue>
   139ae:	75658593          	addi	a1,a1,1878 # 13756 <__fp_lock>
   139b2:	4501                	li	a0,0
   139b4:	a809                	j	139c6 <_fwalk_sglue>

000139b6 <__fp_unlock_all>:
   139b6:	6679                	lui	a2,0x1e
   139b8:	65cd                	lui	a1,0x13
   139ba:	01060613          	addi	a2,a2,16 # 1e010 <__sglue>
   139be:	7b258593          	addi	a1,a1,1970 # 137b2 <__fp_unlock>
   139c2:	4501                	li	a0,0
   139c4:	a009                	j	139c6 <_fwalk_sglue>

000139c6 <_fwalk_sglue>:
   139c6:	7179                	addi	sp,sp,-48
   139c8:	d04a                	sw	s2,32(sp)
   139ca:	ce4e                	sw	s3,28(sp)
   139cc:	cc52                	sw	s4,24(sp)
   139ce:	ca56                	sw	s5,20(sp)
   139d0:	c85a                	sw	s6,16(sp)
   139d2:	c65e                	sw	s7,12(sp)
   139d4:	d606                	sw	ra,44(sp)
   139d6:	d422                	sw	s0,40(sp)
   139d8:	d226                	sw	s1,36(sp)
   139da:	8b2a                	mv	s6,a0
   139dc:	8bae                	mv	s7,a1
   139de:	8ab2                	mv	s5,a2
   139e0:	4a01                	li	s4,0
   139e2:	4985                	li	s3,1
   139e4:	597d                	li	s2,-1
   139e6:	004aa483          	lw	s1,4(s5)
   139ea:	008aa403          	lw	s0,8(s5)
   139ee:	14fd                	addi	s1,s1,-1
   139f0:	0204c463          	bltz	s1,13a18 <_fwalk_sglue+0x52>
   139f4:	00c45783          	lhu	a5,12(s0)
   139f8:	00f9fb63          	bgeu	s3,a5,13a0e <_fwalk_sglue+0x48>
   139fc:	00e41783          	lh	a5,14(s0)
   13a00:	85a2                	mv	a1,s0
   13a02:	855a                	mv	a0,s6
   13a04:	01278563          	beq	a5,s2,13a0e <_fwalk_sglue+0x48>
   13a08:	9b82                	jalr	s7
   13a0a:	00aa6a33          	or	s4,s4,a0
   13a0e:	14fd                	addi	s1,s1,-1
   13a10:	06840413          	addi	s0,s0,104
   13a14:	ff2490e3          	bne	s1,s2,139f4 <_fwalk_sglue+0x2e>
   13a18:	000aaa83          	lw	s5,0(s5)
   13a1c:	fc0a95e3          	bnez	s5,139e6 <_fwalk_sglue+0x20>
   13a20:	50b2                	lw	ra,44(sp)
   13a22:	5422                	lw	s0,40(sp)
   13a24:	5492                	lw	s1,36(sp)
   13a26:	5902                	lw	s2,32(sp)
   13a28:	49f2                	lw	s3,28(sp)
   13a2a:	4ad2                	lw	s5,20(sp)
   13a2c:	4b42                	lw	s6,16(sp)
   13a2e:	4bb2                	lw	s7,12(sp)
   13a30:	8552                	mv	a0,s4
   13a32:	4a62                	lw	s4,24(sp)
   13a34:	6145                	addi	sp,sp,48
   13a36:	8082                	ret

00013a38 <_fwrite_r>:
   13a38:	715d                	addi	sp,sp,-80
   13a3a:	de4e                	sw	s3,60(sp)
   13a3c:	02c689b3          	mul	s3,a3,a2
   13a40:	087c                	addi	a5,sp,28
   13a42:	d23e                	sw	a5,36(sp)
   13a44:	4785                	li	a5,1
   13a46:	c4a2                	sw	s0,72(sp)
   13a48:	c2a6                	sw	s1,68(sp)
   13a4a:	c0ca                	sw	s2,64(sp)
   13a4c:	ce2e                	sw	a1,28(sp)
   13a4e:	c686                	sw	ra,76(sp)
   13a50:	d43e                	sw	a5,40(sp)
   13a52:	d04e                	sw	s3,32(sp)
   13a54:	d64e                	sw	s3,44(sp)
   13a56:	8932                	mv	s2,a2
   13a58:	84b6                	mv	s1,a3
   13a5a:	842a                	mv	s0,a0
   13a5c:	85ba                	mv	a1,a4
   13a5e:	c119                	beqz	a0,13a64 <_fwrite_r+0x2c>
   13a60:	595c                	lw	a5,52(a0)
   13a62:	cfb9                	beqz	a5,13ac0 <_fwrite_r+0x88>
   13a64:	00c59703          	lh	a4,12(a1)
   13a68:	51fc                	lw	a5,100(a1)
   13a6a:	01271693          	slli	a3,a4,0x12
   13a6e:	0006ca63          	bltz	a3,13a82 <_fwrite_r+0x4a>
   13a72:	76f9                	lui	a3,0xffffe
   13a74:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffdf57b>
   13a76:	6609                	lui	a2,0x2
   13a78:	8f51                	or	a4,a4,a2
   13a7a:	8ff5                	and	a5,a5,a3
   13a7c:	00e59623          	sh	a4,12(a1)
   13a80:	d1fc                	sw	a5,100(a1)
   13a82:	01279713          	slli	a4,a5,0x12
   13a86:	4501                	li	a0,0
   13a88:	00075963          	bgez	a4,13a9a <_fwrite_r+0x62>
   13a8c:	40b6                	lw	ra,76(sp)
   13a8e:	4426                	lw	s0,72(sp)
   13a90:	4496                	lw	s1,68(sp)
   13a92:	4906                	lw	s2,64(sp)
   13a94:	59f2                	lw	s3,60(sp)
   13a96:	6161                	addi	sp,sp,80
   13a98:	8082                	ret
   13a9a:	1050                	addi	a2,sp,36
   13a9c:	8522                	mv	a0,s0
   13a9e:	523020ef          	jal	167c0 <__sfvwrite_r>
   13aa2:	87aa                	mv	a5,a0
   13aa4:	8526                	mv	a0,s1
   13aa6:	d3fd                	beqz	a5,13a8c <_fwrite_r+0x54>
   13aa8:	57b2                	lw	a5,44(sp)
   13aaa:	40b6                	lw	ra,76(sp)
   13aac:	4426                	lw	s0,72(sp)
   13aae:	40f989b3          	sub	s3,s3,a5
   13ab2:	0329d533          	divu	a0,s3,s2
   13ab6:	4496                	lw	s1,68(sp)
   13ab8:	4906                	lw	s2,64(sp)
   13aba:	59f2                	lw	s3,60(sp)
   13abc:	6161                	addi	sp,sp,80
   13abe:	8082                	ret
   13ac0:	c63a                	sw	a4,12(sp)
   13ac2:	35e9                	jal	1398c <__sinit>
   13ac4:	45b2                	lw	a1,12(sp)
   13ac6:	bf79                	j	13a64 <_fwrite_r+0x2c>

00013ac8 <fwrite>:
   13ac8:	715d                	addi	sp,sp,-80
   13aca:	c0ca                	sw	s2,64(sp)
   13acc:	02c58933          	mul	s2,a1,a2
   13ad0:	de4e                	sw	s3,60(sp)
   13ad2:	f3c1a983          	lw	s3,-196(gp) # 1e74c <_impure_ptr>
   13ad6:	087c                	addi	a5,sp,28
   13ad8:	d23e                	sw	a5,36(sp)
   13ada:	4785                	li	a5,1
   13adc:	c4a2                	sw	s0,72(sp)
   13ade:	c2a6                	sw	s1,68(sp)
   13ae0:	c686                	sw	ra,76(sp)
   13ae2:	ce2a                	sw	a0,28(sp)
   13ae4:	d43e                	sw	a5,40(sp)
   13ae6:	d04a                	sw	s2,32(sp)
   13ae8:	d64a                	sw	s2,44(sp)
   13aea:	84ae                	mv	s1,a1
   13aec:	8432                	mv	s0,a2
   13aee:	85b6                	mv	a1,a3
   13af0:	00098563          	beqz	s3,13afa <fwrite+0x32>
   13af4:	0349a783          	lw	a5,52(s3)
   13af8:	cfb9                	beqz	a5,13b56 <fwrite+0x8e>
   13afa:	00c59703          	lh	a4,12(a1)
   13afe:	51fc                	lw	a5,100(a1)
   13b00:	01271693          	slli	a3,a4,0x12
   13b04:	0006ca63          	bltz	a3,13b18 <fwrite+0x50>
   13b08:	76f9                	lui	a3,0xffffe
   13b0a:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffdf57b>
   13b0c:	6609                	lui	a2,0x2
   13b0e:	8f51                	or	a4,a4,a2
   13b10:	8ff5                	and	a5,a5,a3
   13b12:	00e59623          	sh	a4,12(a1)
   13b16:	d1fc                	sw	a5,100(a1)
   13b18:	01279713          	slli	a4,a5,0x12
   13b1c:	4501                	li	a0,0
   13b1e:	00075963          	bgez	a4,13b30 <fwrite+0x68>
   13b22:	40b6                	lw	ra,76(sp)
   13b24:	4426                	lw	s0,72(sp)
   13b26:	4496                	lw	s1,68(sp)
   13b28:	4906                	lw	s2,64(sp)
   13b2a:	59f2                	lw	s3,60(sp)
   13b2c:	6161                	addi	sp,sp,80
   13b2e:	8082                	ret
   13b30:	1050                	addi	a2,sp,36
   13b32:	854e                	mv	a0,s3
   13b34:	48d020ef          	jal	167c0 <__sfvwrite_r>
   13b38:	87aa                	mv	a5,a0
   13b3a:	8522                	mv	a0,s0
   13b3c:	d3fd                	beqz	a5,13b22 <fwrite+0x5a>
   13b3e:	57b2                	lw	a5,44(sp)
   13b40:	40b6                	lw	ra,76(sp)
   13b42:	4426                	lw	s0,72(sp)
   13b44:	40f90933          	sub	s2,s2,a5
   13b48:	02995533          	divu	a0,s2,s1
   13b4c:	59f2                	lw	s3,60(sp)
   13b4e:	4496                	lw	s1,68(sp)
   13b50:	4906                	lw	s2,64(sp)
   13b52:	6161                	addi	sp,sp,80
   13b54:	8082                	ret
   13b56:	854e                	mv	a0,s3
   13b58:	c636                	sw	a3,12(sp)
   13b5a:	3d0d                	jal	1398c <__sinit>
   13b5c:	45b2                	lw	a1,12(sp)
   13b5e:	bf71                	j	13afa <fwrite+0x32>

00013b60 <_printf_r>:
   13b60:	7139                	addi	sp,sp,-64
   13b62:	d432                	sw	a2,40(sp)
   13b64:	d636                	sw	a3,44(sp)
   13b66:	d83a                	sw	a4,48(sp)
   13b68:	da3e                	sw	a5,52(sp)
   13b6a:	dc42                	sw	a6,56(sp)
   13b6c:	de46                	sw	a7,60(sp)
   13b6e:	862e                	mv	a2,a1
   13b70:	450c                	lw	a1,8(a0)
   13b72:	1034                	addi	a3,sp,40
   13b74:	ce06                	sw	ra,28(sp)
   13b76:	c636                	sw	a3,12(sp)
   13b78:	50b000ef          	jal	14882 <_vfprintf_r>
   13b7c:	40f2                	lw	ra,28(sp)
   13b7e:	6121                	addi	sp,sp,64
   13b80:	8082                	ret

00013b82 <printf>:
   13b82:	f3c1a303          	lw	t1,-196(gp) # 1e74c <_impure_ptr>
   13b86:	7139                	addi	sp,sp,-64
   13b88:	d432                	sw	a2,40(sp)
   13b8a:	d636                	sw	a3,44(sp)
   13b8c:	d22e                	sw	a1,36(sp)
   13b8e:	d83a                	sw	a4,48(sp)
   13b90:	da3e                	sw	a5,52(sp)
   13b92:	dc42                	sw	a6,56(sp)
   13b94:	de46                	sw	a7,60(sp)
   13b96:	00832583          	lw	a1,8(t1)
   13b9a:	1054                	addi	a3,sp,36
   13b9c:	862a                	mv	a2,a0
   13b9e:	851a                	mv	a0,t1
   13ba0:	ce06                	sw	ra,28(sp)
   13ba2:	c636                	sw	a3,12(sp)
   13ba4:	4df000ef          	jal	14882 <_vfprintf_r>
   13ba8:	40f2                	lw	ra,28(sp)
   13baa:	6121                	addi	sp,sp,64
   13bac:	8082                	ret

00013bae <_putchar_r>:
   13bae:	4510                	lw	a2,8(a0)
   13bb0:	7590206f          	j	16b08 <_putc_r>

00013bb4 <putchar>:
   13bb4:	f3c1a783          	lw	a5,-196(gp) # 1e74c <_impure_ptr>
   13bb8:	85aa                	mv	a1,a0
   13bba:	4790                	lw	a2,8(a5)
   13bbc:	853e                	mv	a0,a5
   13bbe:	74b0206f          	j	16b08 <_putc_r>

00013bc2 <__sread>:
   13bc2:	1141                	addi	sp,sp,-16
   13bc4:	c422                	sw	s0,8(sp)
   13bc6:	842e                	mv	s0,a1
   13bc8:	00e59583          	lh	a1,14(a1)
   13bcc:	c606                	sw	ra,12(sp)
   13bce:	2a6d                	jal	13d88 <_read_r>
   13bd0:	00054963          	bltz	a0,13be2 <__sread+0x20>
   13bd4:	483c                	lw	a5,80(s0)
   13bd6:	40b2                	lw	ra,12(sp)
   13bd8:	97aa                	add	a5,a5,a0
   13bda:	c83c                	sw	a5,80(s0)
   13bdc:	4422                	lw	s0,8(sp)
   13bde:	0141                	addi	sp,sp,16
   13be0:	8082                	ret
   13be2:	00c45783          	lhu	a5,12(s0)
   13be6:	777d                	lui	a4,0xfffff
   13be8:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe057b>
   13bea:	8ff9                	and	a5,a5,a4
   13bec:	40b2                	lw	ra,12(sp)
   13bee:	00f41623          	sh	a5,12(s0)
   13bf2:	4422                	lw	s0,8(sp)
   13bf4:	0141                	addi	sp,sp,16
   13bf6:	8082                	ret

00013bf8 <__seofread>:
   13bf8:	4501                	li	a0,0
   13bfa:	8082                	ret

00013bfc <__swrite>:
   13bfc:	00c59783          	lh	a5,12(a1)
   13c00:	1101                	addi	sp,sp,-32
   13c02:	cc22                	sw	s0,24(sp)
   13c04:	ca26                	sw	s1,20(sp)
   13c06:	c84a                	sw	s2,16(sp)
   13c08:	c64e                	sw	s3,12(sp)
   13c0a:	ce06                	sw	ra,28(sp)
   13c0c:	1007f713          	andi	a4,a5,256
   13c10:	842e                	mv	s0,a1
   13c12:	84aa                	mv	s1,a0
   13c14:	8932                	mv	s2,a2
   13c16:	89b6                	mv	s3,a3
   13c18:	e315                	bnez	a4,13c3c <__swrite+0x40>
   13c1a:	777d                	lui	a4,0xfffff
   13c1c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe057b>
   13c1e:	8ff9                	and	a5,a5,a4
   13c20:	00e41583          	lh	a1,14(s0)
   13c24:	00f41623          	sh	a5,12(s0)
   13c28:	4462                	lw	s0,24(sp)
   13c2a:	40f2                	lw	ra,28(sp)
   13c2c:	86ce                	mv	a3,s3
   13c2e:	864a                	mv	a2,s2
   13c30:	49b2                	lw	s3,12(sp)
   13c32:	4942                	lw	s2,16(sp)
   13c34:	8526                	mv	a0,s1
   13c36:	44d2                	lw	s1,20(sp)
   13c38:	6105                	addi	sp,sp,32
   13c3a:	a269                	j	13dc4 <_write_r>
   13c3c:	00e59583          	lh	a1,14(a1)
   13c40:	4689                	li	a3,2
   13c42:	4601                	li	a2,0
   13c44:	2221                	jal	13d4c <_lseek_r>
   13c46:	00c41783          	lh	a5,12(s0)
   13c4a:	bfc1                	j	13c1a <__swrite+0x1e>

00013c4c <__sseek>:
   13c4c:	1141                	addi	sp,sp,-16
   13c4e:	c422                	sw	s0,8(sp)
   13c50:	842e                	mv	s0,a1
   13c52:	00e59583          	lh	a1,14(a1)
   13c56:	c606                	sw	ra,12(sp)
   13c58:	28d5                	jal	13d4c <_lseek_r>
   13c5a:	57fd                	li	a5,-1
   13c5c:	00f50f63          	beq	a0,a5,13c7a <__sseek+0x2e>
   13c60:	00c45783          	lhu	a5,12(s0)
   13c64:	6705                	lui	a4,0x1
   13c66:	40b2                	lw	ra,12(sp)
   13c68:	8fd9                	or	a5,a5,a4
   13c6a:	07c2                	slli	a5,a5,0x10
   13c6c:	87c1                	srai	a5,a5,0x10
   13c6e:	c828                	sw	a0,80(s0)
   13c70:	00f41623          	sh	a5,12(s0)
   13c74:	4422                	lw	s0,8(sp)
   13c76:	0141                	addi	sp,sp,16
   13c78:	8082                	ret
   13c7a:	00c45783          	lhu	a5,12(s0)
   13c7e:	777d                	lui	a4,0xfffff
   13c80:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe057b>
   13c82:	8ff9                	and	a5,a5,a4
   13c84:	07c2                	slli	a5,a5,0x10
   13c86:	87c1                	srai	a5,a5,0x10
   13c88:	40b2                	lw	ra,12(sp)
   13c8a:	00f41623          	sh	a5,12(s0)
   13c8e:	4422                	lw	s0,8(sp)
   13c90:	0141                	addi	sp,sp,16
   13c92:	8082                	ret

00013c94 <__sclose>:
   13c94:	00e59583          	lh	a1,14(a1)
   13c98:	a009                	j	13c9a <_close_r>

00013c9a <_close_r>:
   13c9a:	1141                	addi	sp,sp,-16
   13c9c:	c422                	sw	s0,8(sp)
   13c9e:	c226                	sw	s1,4(sp)
   13ca0:	842a                	mv	s0,a0
   13ca2:	852e                	mv	a0,a1
   13ca4:	c606                	sw	ra,12(sp)
   13ca6:	f401a623          	sw	zero,-180(gp) # 1e75c <errno>
   13caa:	0e6070ef          	jal	1ad90 <_close>
   13cae:	57fd                	li	a5,-1
   13cb0:	00f50763          	beq	a0,a5,13cbe <_close_r+0x24>
   13cb4:	40b2                	lw	ra,12(sp)
   13cb6:	4422                	lw	s0,8(sp)
   13cb8:	4492                	lw	s1,4(sp)
   13cba:	0141                	addi	sp,sp,16
   13cbc:	8082                	ret
   13cbe:	f4c1a783          	lw	a5,-180(gp) # 1e75c <errno>
   13cc2:	dbed                	beqz	a5,13cb4 <_close_r+0x1a>
   13cc4:	40b2                	lw	ra,12(sp)
   13cc6:	c01c                	sw	a5,0(s0)
   13cc8:	4422                	lw	s0,8(sp)
   13cca:	4492                	lw	s1,4(sp)
   13ccc:	0141                	addi	sp,sp,16
   13cce:	8082                	ret

00013cd0 <_reclaim_reent>:
   13cd0:	f3c1a783          	lw	a5,-196(gp) # 1e74c <_impure_ptr>
   13cd4:	06a78b63          	beq	a5,a0,13d4a <_reclaim_reent+0x7a>
   13cd8:	416c                	lw	a1,68(a0)
   13cda:	1101                	addi	sp,sp,-32
   13cdc:	ca26                	sw	s1,20(sp)
   13cde:	ce06                	sw	ra,28(sp)
   13ce0:	cc22                	sw	s0,24(sp)
   13ce2:	84aa                	mv	s1,a0
   13ce4:	c59d                	beqz	a1,13d12 <_reclaim_reent+0x42>
   13ce6:	c84a                	sw	s2,16(sp)
   13ce8:	c64e                	sw	s3,12(sp)
   13cea:	4901                	li	s2,0
   13cec:	08000993          	li	s3,128
   13cf0:	012587b3          	add	a5,a1,s2
   13cf4:	4380                	lw	s0,0(a5)
   13cf6:	c419                	beqz	s0,13d04 <_reclaim_reent+0x34>
   13cf8:	85a2                	mv	a1,s0
   13cfa:	4000                	lw	s0,0(s0)
   13cfc:	8526                	mv	a0,s1
   13cfe:	2e6d                	jal	140b8 <_free_r>
   13d00:	fc65                	bnez	s0,13cf8 <_reclaim_reent+0x28>
   13d02:	40ec                	lw	a1,68(s1)
   13d04:	0911                	addi	s2,s2,4
   13d06:	ff3915e3          	bne	s2,s3,13cf0 <_reclaim_reent+0x20>
   13d0a:	8526                	mv	a0,s1
   13d0c:	2675                	jal	140b8 <_free_r>
   13d0e:	4942                	lw	s2,16(sp)
   13d10:	49b2                	lw	s3,12(sp)
   13d12:	5c8c                	lw	a1,56(s1)
   13d14:	c199                	beqz	a1,13d1a <_reclaim_reent+0x4a>
   13d16:	8526                	mv	a0,s1
   13d18:	2645                	jal	140b8 <_free_r>
   13d1a:	40a0                	lw	s0,64(s1)
   13d1c:	c411                	beqz	s0,13d28 <_reclaim_reent+0x58>
   13d1e:	85a2                	mv	a1,s0
   13d20:	4000                	lw	s0,0(s0)
   13d22:	8526                	mv	a0,s1
   13d24:	2e51                	jal	140b8 <_free_r>
   13d26:	fc65                	bnez	s0,13d1e <_reclaim_reent+0x4e>
   13d28:	44ec                	lw	a1,76(s1)
   13d2a:	c199                	beqz	a1,13d30 <_reclaim_reent+0x60>
   13d2c:	8526                	mv	a0,s1
   13d2e:	2669                	jal	140b8 <_free_r>
   13d30:	58dc                	lw	a5,52(s1)
   13d32:	c799                	beqz	a5,13d40 <_reclaim_reent+0x70>
   13d34:	4462                	lw	s0,24(sp)
   13d36:	40f2                	lw	ra,28(sp)
   13d38:	8526                	mv	a0,s1
   13d3a:	44d2                	lw	s1,20(sp)
   13d3c:	6105                	addi	sp,sp,32
   13d3e:	8782                	jr	a5
   13d40:	40f2                	lw	ra,28(sp)
   13d42:	4462                	lw	s0,24(sp)
   13d44:	44d2                	lw	s1,20(sp)
   13d46:	6105                	addi	sp,sp,32
   13d48:	8082                	ret
   13d4a:	8082                	ret

00013d4c <_lseek_r>:
   13d4c:	1141                	addi	sp,sp,-16
   13d4e:	872e                	mv	a4,a1
   13d50:	c422                	sw	s0,8(sp)
   13d52:	c226                	sw	s1,4(sp)
   13d54:	85b2                	mv	a1,a2
   13d56:	842a                	mv	s0,a0
   13d58:	8636                	mv	a2,a3
   13d5a:	853a                	mv	a0,a4
   13d5c:	c606                	sw	ra,12(sp)
   13d5e:	f401a623          	sw	zero,-180(gp) # 1e75c <errno>
   13d62:	0f2070ef          	jal	1ae54 <_lseek>
   13d66:	57fd                	li	a5,-1
   13d68:	00f50763          	beq	a0,a5,13d76 <_lseek_r+0x2a>
   13d6c:	40b2                	lw	ra,12(sp)
   13d6e:	4422                	lw	s0,8(sp)
   13d70:	4492                	lw	s1,4(sp)
   13d72:	0141                	addi	sp,sp,16
   13d74:	8082                	ret
   13d76:	f4c1a783          	lw	a5,-180(gp) # 1e75c <errno>
   13d7a:	dbed                	beqz	a5,13d6c <_lseek_r+0x20>
   13d7c:	40b2                	lw	ra,12(sp)
   13d7e:	c01c                	sw	a5,0(s0)
   13d80:	4422                	lw	s0,8(sp)
   13d82:	4492                	lw	s1,4(sp)
   13d84:	0141                	addi	sp,sp,16
   13d86:	8082                	ret

00013d88 <_read_r>:
   13d88:	1141                	addi	sp,sp,-16
   13d8a:	872e                	mv	a4,a1
   13d8c:	c422                	sw	s0,8(sp)
   13d8e:	c226                	sw	s1,4(sp)
   13d90:	85b2                	mv	a1,a2
   13d92:	842a                	mv	s0,a0
   13d94:	8636                	mv	a2,a3
   13d96:	853a                	mv	a0,a4
   13d98:	c606                	sw	ra,12(sp)
   13d9a:	f401a623          	sw	zero,-180(gp) # 1e75c <errno>
   13d9e:	0e2070ef          	jal	1ae80 <_read>
   13da2:	57fd                	li	a5,-1
   13da4:	00f50763          	beq	a0,a5,13db2 <_read_r+0x2a>
   13da8:	40b2                	lw	ra,12(sp)
   13daa:	4422                	lw	s0,8(sp)
   13dac:	4492                	lw	s1,4(sp)
   13dae:	0141                	addi	sp,sp,16
   13db0:	8082                	ret
   13db2:	f4c1a783          	lw	a5,-180(gp) # 1e75c <errno>
   13db6:	dbed                	beqz	a5,13da8 <_read_r+0x20>
   13db8:	40b2                	lw	ra,12(sp)
   13dba:	c01c                	sw	a5,0(s0)
   13dbc:	4422                	lw	s0,8(sp)
   13dbe:	4492                	lw	s1,4(sp)
   13dc0:	0141                	addi	sp,sp,16
   13dc2:	8082                	ret

00013dc4 <_write_r>:
   13dc4:	1141                	addi	sp,sp,-16
   13dc6:	872e                	mv	a4,a1
   13dc8:	c422                	sw	s0,8(sp)
   13dca:	c226                	sw	s1,4(sp)
   13dcc:	85b2                	mv	a1,a2
   13dce:	842a                	mv	s0,a0
   13dd0:	8636                	mv	a2,a3
   13dd2:	853a                	mv	a0,a4
   13dd4:	c606                	sw	ra,12(sp)
   13dd6:	f401a623          	sw	zero,-180(gp) # 1e75c <errno>
   13dda:	126070ef          	jal	1af00 <_write>
   13dde:	57fd                	li	a5,-1
   13de0:	00f50763          	beq	a0,a5,13dee <_write_r+0x2a>
   13de4:	40b2                	lw	ra,12(sp)
   13de6:	4422                	lw	s0,8(sp)
   13de8:	4492                	lw	s1,4(sp)
   13dea:	0141                	addi	sp,sp,16
   13dec:	8082                	ret
   13dee:	f4c1a783          	lw	a5,-180(gp) # 1e75c <errno>
   13df2:	dbed                	beqz	a5,13de4 <_write_r+0x20>
   13df4:	40b2                	lw	ra,12(sp)
   13df6:	c01c                	sw	a5,0(s0)
   13df8:	4422                	lw	s0,8(sp)
   13dfa:	4492                	lw	s1,4(sp)
   13dfc:	0141                	addi	sp,sp,16
   13dfe:	8082                	ret

00013e00 <__libc_init_array>:
   13e00:	1141                	addi	sp,sp,-16
   13e02:	c422                	sw	s0,8(sp)
   13e04:	67f9                	lui	a5,0x1e
   13e06:	6479                	lui	s0,0x1e
   13e08:	c04a                	sw	s2,0(sp)
   13e0a:	00478793          	addi	a5,a5,4 # 1e004 <__init_array_start>
   13e0e:	00440713          	addi	a4,s0,4 # 1e004 <__init_array_start>
   13e12:	c606                	sw	ra,12(sp)
   13e14:	c226                	sw	s1,4(sp)
   13e16:	40e78933          	sub	s2,a5,a4
   13e1a:	00e78d63          	beq	a5,a4,13e34 <__libc_init_array+0x34>
   13e1e:	40295913          	srai	s2,s2,0x2
   13e22:	00440413          	addi	s0,s0,4
   13e26:	4481                	li	s1,0
   13e28:	401c                	lw	a5,0(s0)
   13e2a:	0485                	addi	s1,s1,1
   13e2c:	0411                	addi	s0,s0,4
   13e2e:	9782                	jalr	a5
   13e30:	ff24ece3          	bltu	s1,s2,13e28 <__libc_init_array+0x28>
   13e34:	6479                	lui	s0,0x1e
   13e36:	67f9                	lui	a5,0x1e
   13e38:	00c78793          	addi	a5,a5,12 # 1e00c <__do_global_dtors_aux_fini_array_entry>
   13e3c:	00440713          	addi	a4,s0,4 # 1e004 <__init_array_start>
   13e40:	40e78933          	sub	s2,a5,a4
   13e44:	40295913          	srai	s2,s2,0x2
   13e48:	00e78b63          	beq	a5,a4,13e5e <__libc_init_array+0x5e>
   13e4c:	00440413          	addi	s0,s0,4
   13e50:	4481                	li	s1,0
   13e52:	401c                	lw	a5,0(s0)
   13e54:	0485                	addi	s1,s1,1
   13e56:	0411                	addi	s0,s0,4
   13e58:	9782                	jalr	a5
   13e5a:	ff24ece3          	bltu	s1,s2,13e52 <__libc_init_array+0x52>
   13e5e:	40b2                	lw	ra,12(sp)
   13e60:	4422                	lw	s0,8(sp)
   13e62:	4492                	lw	s1,4(sp)
   13e64:	4902                	lw	s2,0(sp)
   13e66:	0141                	addi	sp,sp,16
   13e68:	8082                	ret

00013e6a <memset>:
   13e6a:	433d                	li	t1,15
   13e6c:	872a                	mv	a4,a0
   13e6e:	02c37363          	bgeu	t1,a2,13e94 <memset+0x2a>
   13e72:	00f77793          	andi	a5,a4,15
   13e76:	efbd                	bnez	a5,13ef4 <memset+0x8a>
   13e78:	e5ad                	bnez	a1,13ee2 <memset+0x78>
   13e7a:	ff067693          	andi	a3,a2,-16
   13e7e:	8a3d                	andi	a2,a2,15
   13e80:	96ba                	add	a3,a3,a4
   13e82:	c30c                	sw	a1,0(a4)
   13e84:	c34c                	sw	a1,4(a4)
   13e86:	c70c                	sw	a1,8(a4)
   13e88:	c74c                	sw	a1,12(a4)
   13e8a:	0741                	addi	a4,a4,16
   13e8c:	fed76be3          	bltu	a4,a3,13e82 <memset+0x18>
   13e90:	e211                	bnez	a2,13e94 <memset+0x2a>
   13e92:	8082                	ret
   13e94:	40c306b3          	sub	a3,t1,a2
   13e98:	068a                	slli	a3,a3,0x2
   13e9a:	00000297          	auipc	t0,0x0
   13e9e:	9696                	add	a3,a3,t0
   13ea0:	00a68067          	jr	10(a3)
   13ea4:	00b70723          	sb	a1,14(a4)
   13ea8:	00b706a3          	sb	a1,13(a4)
   13eac:	00b70623          	sb	a1,12(a4)
   13eb0:	00b705a3          	sb	a1,11(a4)
   13eb4:	00b70523          	sb	a1,10(a4)
   13eb8:	00b704a3          	sb	a1,9(a4)
   13ebc:	00b70423          	sb	a1,8(a4)
   13ec0:	00b703a3          	sb	a1,7(a4)
   13ec4:	00b70323          	sb	a1,6(a4)
   13ec8:	00b702a3          	sb	a1,5(a4)
   13ecc:	00b70223          	sb	a1,4(a4)
   13ed0:	00b701a3          	sb	a1,3(a4)
   13ed4:	00b70123          	sb	a1,2(a4)
   13ed8:	00b700a3          	sb	a1,1(a4)
   13edc:	00b70023          	sb	a1,0(a4)
   13ee0:	8082                	ret
   13ee2:	0ff5f593          	zext.b	a1,a1
   13ee6:	00859693          	slli	a3,a1,0x8
   13eea:	8dd5                	or	a1,a1,a3
   13eec:	01059693          	slli	a3,a1,0x10
   13ef0:	8dd5                	or	a1,a1,a3
   13ef2:	b761                	j	13e7a <memset+0x10>
   13ef4:	00279693          	slli	a3,a5,0x2
   13ef8:	00000297          	auipc	t0,0x0
   13efc:	9696                	add	a3,a3,t0
   13efe:	8286                	mv	t0,ra
   13f00:	fa8680e7          	jalr	-88(a3)
   13f04:	8096                	mv	ra,t0
   13f06:	17c1                	addi	a5,a5,-16
   13f08:	8f1d                	sub	a4,a4,a5
   13f0a:	963e                	add	a2,a2,a5
   13f0c:	f8c374e3          	bgeu	t1,a2,13e94 <memset+0x2a>
   13f10:	b7a5                	j	13e78 <memset+0xe>

00013f12 <__call_exitprocs>:
   13f12:	7179                	addi	sp,sp,-48
   13f14:	cc52                	sw	s4,24(sp)
   13f16:	d04a                	sw	s2,32(sp)
   13f18:	f501a903          	lw	s2,-176(gp) # 1e760 <__atexit>
   13f1c:	d606                	sw	ra,44(sp)
   13f1e:	06090c63          	beqz	s2,13f96 <__call_exitprocs+0x84>
   13f22:	ce4e                	sw	s3,28(sp)
   13f24:	ca56                	sw	s5,20(sp)
   13f26:	c85a                	sw	s6,16(sp)
   13f28:	c65e                	sw	s7,12(sp)
   13f2a:	d422                	sw	s0,40(sp)
   13f2c:	d226                	sw	s1,36(sp)
   13f2e:	c462                	sw	s8,8(sp)
   13f30:	8b2a                	mv	s6,a0
   13f32:	8bae                	mv	s7,a1
   13f34:	59fd                	li	s3,-1
   13f36:	4a85                	li	s5,1
   13f38:	00492483          	lw	s1,4(s2)
   13f3c:	fff48413          	addi	s0,s1,-1
   13f40:	04044463          	bltz	s0,13f88 <__call_exitprocs+0x76>
   13f44:	048a                	slli	s1,s1,0x2
   13f46:	94ca                	add	s1,s1,s2
   13f48:	040b9c63          	bnez	s7,13fa0 <__call_exitprocs+0x8e>
   13f4c:	00492783          	lw	a5,4(s2)
   13f50:	40d4                	lw	a3,4(s1)
   13f52:	17fd                	addi	a5,a5,-1
   13f54:	08878063          	beq	a5,s0,13fd4 <__call_exitprocs+0xc2>
   13f58:	0004a223          	sw	zero,4(s1)
   13f5c:	c295                	beqz	a3,13f80 <__call_exitprocs+0x6e>
   13f5e:	18892783          	lw	a5,392(s2)
   13f62:	008a9733          	sll	a4,s5,s0
   13f66:	00492c03          	lw	s8,4(s2)
   13f6a:	8ff9                	and	a5,a5,a4
   13f6c:	e3b9                	bnez	a5,13fb2 <__call_exitprocs+0xa0>
   13f6e:	9682                	jalr	a3
   13f70:	00492703          	lw	a4,4(s2)
   13f74:	f501a783          	lw	a5,-176(gp) # 1e760 <__atexit>
   13f78:	05871b63          	bne	a4,s8,13fce <__call_exitprocs+0xbc>
   13f7c:	05279963          	bne	a5,s2,13fce <__call_exitprocs+0xbc>
   13f80:	147d                	addi	s0,s0,-1
   13f82:	14f1                	addi	s1,s1,-4
   13f84:	fd3412e3          	bne	s0,s3,13f48 <__call_exitprocs+0x36>
   13f88:	5422                	lw	s0,40(sp)
   13f8a:	5492                	lw	s1,36(sp)
   13f8c:	49f2                	lw	s3,28(sp)
   13f8e:	4ad2                	lw	s5,20(sp)
   13f90:	4b42                	lw	s6,16(sp)
   13f92:	4bb2                	lw	s7,12(sp)
   13f94:	4c22                	lw	s8,8(sp)
   13f96:	50b2                	lw	ra,44(sp)
   13f98:	5902                	lw	s2,32(sp)
   13f9a:	4a62                	lw	s4,24(sp)
   13f9c:	6145                	addi	sp,sp,48
   13f9e:	8082                	ret
   13fa0:	1044a783          	lw	a5,260(s1)
   13fa4:	fb7784e3          	beq	a5,s7,13f4c <__call_exitprocs+0x3a>
   13fa8:	147d                	addi	s0,s0,-1
   13faa:	14f1                	addi	s1,s1,-4
   13fac:	ff341ae3          	bne	s0,s3,13fa0 <__call_exitprocs+0x8e>
   13fb0:	bfe1                	j	13f88 <__call_exitprocs+0x76>
   13fb2:	18c92783          	lw	a5,396(s2)
   13fb6:	0844a583          	lw	a1,132(s1)
   13fba:	8f7d                	and	a4,a4,a5
   13fbc:	ef19                	bnez	a4,13fda <__call_exitprocs+0xc8>
   13fbe:	855a                	mv	a0,s6
   13fc0:	9682                	jalr	a3
   13fc2:	00492703          	lw	a4,4(s2)
   13fc6:	f501a783          	lw	a5,-176(gp) # 1e760 <__atexit>
   13fca:	fb8709e3          	beq	a4,s8,13f7c <__call_exitprocs+0x6a>
   13fce:	dfcd                	beqz	a5,13f88 <__call_exitprocs+0x76>
   13fd0:	893e                	mv	s2,a5
   13fd2:	b79d                	j	13f38 <__call_exitprocs+0x26>
   13fd4:	00892223          	sw	s0,4(s2)
   13fd8:	b751                	j	13f5c <__call_exitprocs+0x4a>
   13fda:	852e                	mv	a0,a1
   13fdc:	9682                	jalr	a3
   13fde:	bf49                	j	13f70 <__call_exitprocs+0x5e>

00013fe0 <atexit>:
   13fe0:	85aa                	mv	a1,a0
   13fe2:	4681                	li	a3,0
   13fe4:	4601                	li	a2,0
   13fe6:	4501                	li	a0,0
   13fe8:	2900306f          	j	17278 <__register_exitproc>

00013fec <_malloc_trim_r>:
   13fec:	1101                	addi	sp,sp,-32
   13fee:	c64e                	sw	s3,12(sp)
   13ff0:	69f9                	lui	s3,0x1e
   13ff2:	cc22                	sw	s0,24(sp)
   13ff4:	ca26                	sw	s1,20(sp)
   13ff6:	c84a                	sw	s2,16(sp)
   13ff8:	c452                	sw	s4,8(sp)
   13ffa:	ce06                	sw	ra,28(sp)
   13ffc:	8a2e                	mv	s4,a1
   13ffe:	892a                	mv	s2,a0
   14000:	14098993          	addi	s3,s3,320 # 1e140 <__malloc_av_>
   14004:	07b000ef          	jal	1487e <__malloc_lock>
   14008:	0089a703          	lw	a4,8(s3)
   1400c:	6785                	lui	a5,0x1
   1400e:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   14010:	4344                	lw	s1,4(a4)
   14012:	6705                	lui	a4,0x1
   14014:	98f1                	andi	s1,s1,-4
   14016:	00f48433          	add	s0,s1,a5
   1401a:	41440433          	sub	s0,s0,s4
   1401e:	8031                	srli	s0,s0,0xc
   14020:	147d                	addi	s0,s0,-1
   14022:	0432                	slli	s0,s0,0xc
   14024:	00e44b63          	blt	s0,a4,1403a <_malloc_trim_r+0x4e>
   14028:	4581                	li	a1,0
   1402a:	854a                	mv	a0,s2
   1402c:	67d020ef          	jal	16ea8 <_sbrk_r>
   14030:	0089a783          	lw	a5,8(s3)
   14034:	97a6                	add	a5,a5,s1
   14036:	00f50e63          	beq	a0,a5,14052 <_malloc_trim_r+0x66>
   1403a:	854a                	mv	a0,s2
   1403c:	045000ef          	jal	14880 <__malloc_unlock>
   14040:	40f2                	lw	ra,28(sp)
   14042:	4462                	lw	s0,24(sp)
   14044:	44d2                	lw	s1,20(sp)
   14046:	4942                	lw	s2,16(sp)
   14048:	49b2                	lw	s3,12(sp)
   1404a:	4a22                	lw	s4,8(sp)
   1404c:	4501                	li	a0,0
   1404e:	6105                	addi	sp,sp,32
   14050:	8082                	ret
   14052:	408005b3          	neg	a1,s0
   14056:	854a                	mv	a0,s2
   14058:	651020ef          	jal	16ea8 <_sbrk_r>
   1405c:	57fd                	li	a5,-1
   1405e:	02f50963          	beq	a0,a5,14090 <_malloc_trim_r+0xa4>
   14062:	0bc18793          	addi	a5,gp,188 # 1e8cc <__malloc_current_mallinfo>
   14066:	4398                	lw	a4,0(a5)
   14068:	0089a683          	lw	a3,8(s3)
   1406c:	8c81                	sub	s1,s1,s0
   1406e:	0014e493          	ori	s1,s1,1
   14072:	8f01                	sub	a4,a4,s0
   14074:	854a                	mv	a0,s2
   14076:	c2c4                	sw	s1,4(a3)
   14078:	c398                	sw	a4,0(a5)
   1407a:	007000ef          	jal	14880 <__malloc_unlock>
   1407e:	40f2                	lw	ra,28(sp)
   14080:	4462                	lw	s0,24(sp)
   14082:	44d2                	lw	s1,20(sp)
   14084:	4942                	lw	s2,16(sp)
   14086:	49b2                	lw	s3,12(sp)
   14088:	4a22                	lw	s4,8(sp)
   1408a:	4505                	li	a0,1
   1408c:	6105                	addi	sp,sp,32
   1408e:	8082                	ret
   14090:	4581                	li	a1,0
   14092:	854a                	mv	a0,s2
   14094:	615020ef          	jal	16ea8 <_sbrk_r>
   14098:	0089a703          	lw	a4,8(s3)
   1409c:	46bd                	li	a3,15
   1409e:	40e507b3          	sub	a5,a0,a4
   140a2:	f8f6dce3          	bge	a3,a5,1403a <_malloc_trim_r+0x4e>
   140a6:	f401a683          	lw	a3,-192(gp) # 1e750 <__malloc_sbrk_base>
   140aa:	0017e793          	ori	a5,a5,1
   140ae:	c35c                	sw	a5,4(a4)
   140b0:	8d15                	sub	a0,a0,a3
   140b2:	0aa1ae23          	sw	a0,188(gp) # 1e8cc <__malloc_current_mallinfo>
   140b6:	b751                	j	1403a <_malloc_trim_r+0x4e>

000140b8 <_free_r>:
   140b8:	10058a63          	beqz	a1,141cc <_free_r+0x114>
   140bc:	1141                	addi	sp,sp,-16
   140be:	c422                	sw	s0,8(sp)
   140c0:	c226                	sw	s1,4(sp)
   140c2:	842e                	mv	s0,a1
   140c4:	84aa                	mv	s1,a0
   140c6:	c606                	sw	ra,12(sp)
   140c8:	7b6000ef          	jal	1487e <__malloc_lock>
   140cc:	ffc42503          	lw	a0,-4(s0)
   140d0:	ff840713          	addi	a4,s0,-8
   140d4:	65f9                	lui	a1,0x1e
   140d6:	ffe57793          	andi	a5,a0,-2
   140da:	00f70633          	add	a2,a4,a5
   140de:	14058593          	addi	a1,a1,320 # 1e140 <__malloc_av_>
   140e2:	4254                	lw	a3,4(a2)
   140e4:	0085a803          	lw	a6,8(a1)
   140e8:	9af1                	andi	a3,a3,-4
   140ea:	12c80363          	beq	a6,a2,14210 <_free_r+0x158>
   140ee:	c254                	sw	a3,4(a2)
   140f0:	8905                	andi	a0,a0,1
   140f2:	00d60833          	add	a6,a2,a3
   140f6:	e935                	bnez	a0,1416a <_free_r+0xb2>
   140f8:	ff842303          	lw	t1,-8(s0)
   140fc:	00482803          	lw	a6,4(a6)
   14100:	6579                	lui	a0,0x1e
   14102:	40670733          	sub	a4,a4,t1
   14106:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   1410a:	14850513          	addi	a0,a0,328 # 1e148 <__malloc_av_+0x8>
   1410e:	979a                	add	a5,a5,t1
   14110:	00187813          	andi	a6,a6,1
   14114:	0ea88163          	beq	a7,a0,141f6 <_free_r+0x13e>
   14118:	00c72303          	lw	t1,12(a4)
   1411c:	0068a623          	sw	t1,12(a7)
   14120:	01132423          	sw	a7,8(t1)
   14124:	10080e63          	beqz	a6,14240 <_free_r+0x188>
   14128:	0017e693          	ori	a3,a5,1
   1412c:	c354                	sw	a3,4(a4)
   1412e:	c21c                	sw	a5,0(a2)
   14130:	1ff00693          	li	a3,511
   14134:	04f6e863          	bltu	a3,a5,14184 <_free_r+0xcc>
   14138:	ff87f693          	andi	a3,a5,-8
   1413c:	06a1                	addi	a3,a3,8
   1413e:	41c8                	lw	a0,4(a1)
   14140:	96ae                	add	a3,a3,a1
   14142:	4290                	lw	a2,0(a3)
   14144:	0057d813          	srli	a6,a5,0x5
   14148:	4785                	li	a5,1
   1414a:	010797b3          	sll	a5,a5,a6
   1414e:	8fc9                	or	a5,a5,a0
   14150:	ff868513          	addi	a0,a3,-8
   14154:	c748                	sw	a0,12(a4)
   14156:	c710                	sw	a2,8(a4)
   14158:	c1dc                	sw	a5,4(a1)
   1415a:	c298                	sw	a4,0(a3)
   1415c:	c658                	sw	a4,12(a2)
   1415e:	4422                	lw	s0,8(sp)
   14160:	40b2                	lw	ra,12(sp)
   14162:	8526                	mv	a0,s1
   14164:	4492                	lw	s1,4(sp)
   14166:	0141                	addi	sp,sp,16
   14168:	af21                	j	14880 <__malloc_unlock>
   1416a:	00482503          	lw	a0,4(a6)
   1416e:	8905                	andi	a0,a0,1
   14170:	cd39                	beqz	a0,141ce <_free_r+0x116>
   14172:	0017e693          	ori	a3,a5,1
   14176:	fed42e23          	sw	a3,-4(s0)
   1417a:	c21c                	sw	a5,0(a2)
   1417c:	1ff00693          	li	a3,511
   14180:	faf6fce3          	bgeu	a3,a5,14138 <_free_r+0x80>
   14184:	0097d693          	srli	a3,a5,0x9
   14188:	4611                	li	a2,4
   1418a:	0ad66d63          	bltu	a2,a3,14244 <_free_r+0x18c>
   1418e:	0067d693          	srli	a3,a5,0x6
   14192:	03968513          	addi	a0,a3,57
   14196:	03868613          	addi	a2,a3,56
   1419a:	050e                	slli	a0,a0,0x3
   1419c:	952e                	add	a0,a0,a1
   1419e:	4114                	lw	a3,0(a0)
   141a0:	1561                	addi	a0,a0,-8
   141a2:	00d51663          	bne	a0,a3,141ae <_free_r+0xf6>
   141a6:	a8f1                	j	14282 <_free_r+0x1ca>
   141a8:	4694                	lw	a3,8(a3)
   141aa:	00d50663          	beq	a0,a3,141b6 <_free_r+0xfe>
   141ae:	42d0                	lw	a2,4(a3)
   141b0:	9a71                	andi	a2,a2,-4
   141b2:	fec7ebe3          	bltu	a5,a2,141a8 <_free_r+0xf0>
   141b6:	46c8                	lw	a0,12(a3)
   141b8:	c748                	sw	a0,12(a4)
   141ba:	c714                	sw	a3,8(a4)
   141bc:	4422                	lw	s0,8(sp)
   141be:	c518                	sw	a4,8(a0)
   141c0:	40b2                	lw	ra,12(sp)
   141c2:	8526                	mv	a0,s1
   141c4:	4492                	lw	s1,4(sp)
   141c6:	c6d8                	sw	a4,12(a3)
   141c8:	0141                	addi	sp,sp,16
   141ca:	ad5d                	j	14880 <__malloc_unlock>
   141cc:	8082                	ret
   141ce:	6579                	lui	a0,0x1e
   141d0:	97b6                	add	a5,a5,a3
   141d2:	14850513          	addi	a0,a0,328 # 1e148 <__malloc_av_+0x8>
   141d6:	4614                	lw	a3,8(a2)
   141d8:	08a68b63          	beq	a3,a0,1426e <_free_r+0x1b6>
   141dc:	00c62803          	lw	a6,12(a2) # 200c <exit-0xe088>
   141e0:	0017e513          	ori	a0,a5,1
   141e4:	00f70633          	add	a2,a4,a5
   141e8:	0106a623          	sw	a6,12(a3)
   141ec:	00d82423          	sw	a3,8(a6)
   141f0:	c348                	sw	a0,4(a4)
   141f2:	c21c                	sw	a5,0(a2)
   141f4:	bf35                	j	14130 <_free_r+0x78>
   141f6:	0c081d63          	bnez	a6,142d0 <_free_r+0x218>
   141fa:	460c                	lw	a1,8(a2)
   141fc:	4650                	lw	a2,12(a2)
   141fe:	96be                	add	a3,a3,a5
   14200:	0016e793          	ori	a5,a3,1
   14204:	c5d0                	sw	a2,12(a1)
   14206:	c60c                	sw	a1,8(a2)
   14208:	c35c                	sw	a5,4(a4)
   1420a:	9736                	add	a4,a4,a3
   1420c:	c314                	sw	a3,0(a4)
   1420e:	bf81                	j	1415e <_free_r+0xa6>
   14210:	8905                	andi	a0,a0,1
   14212:	96be                	add	a3,a3,a5
   14214:	e909                	bnez	a0,14226 <_free_r+0x16e>
   14216:	ff842503          	lw	a0,-8(s0)
   1421a:	8f09                	sub	a4,a4,a0
   1421c:	475c                	lw	a5,12(a4)
   1421e:	4710                	lw	a2,8(a4)
   14220:	96aa                	add	a3,a3,a0
   14222:	c65c                	sw	a5,12(a2)
   14224:	c790                	sw	a2,8(a5)
   14226:	0016e613          	ori	a2,a3,1
   1422a:	f441a783          	lw	a5,-188(gp) # 1e754 <__malloc_trim_threshold>
   1422e:	c350                	sw	a2,4(a4)
   14230:	c598                	sw	a4,8(a1)
   14232:	f2f6e6e3          	bltu	a3,a5,1415e <_free_r+0xa6>
   14236:	f5c1a583          	lw	a1,-164(gp) # 1e76c <__malloc_top_pad>
   1423a:	8526                	mv	a0,s1
   1423c:	3b45                	jal	13fec <_malloc_trim_r>
   1423e:	b705                	j	1415e <_free_r+0xa6>
   14240:	97b6                	add	a5,a5,a3
   14242:	bf51                	j	141d6 <_free_r+0x11e>
   14244:	4651                	li	a2,20
   14246:	00d67e63          	bgeu	a2,a3,14262 <_free_r+0x1aa>
   1424a:	05400613          	li	a2,84
   1424e:	04d66463          	bltu	a2,a3,14296 <_free_r+0x1de>
   14252:	00c7d693          	srli	a3,a5,0xc
   14256:	06f68513          	addi	a0,a3,111
   1425a:	06e68613          	addi	a2,a3,110
   1425e:	050e                	slli	a0,a0,0x3
   14260:	bf35                	j	1419c <_free_r+0xe4>
   14262:	05c68513          	addi	a0,a3,92
   14266:	05b68613          	addi	a2,a3,91
   1426a:	050e                	slli	a0,a0,0x3
   1426c:	bf05                	j	1419c <_free_r+0xe4>
   1426e:	c9d8                	sw	a4,20(a1)
   14270:	c998                	sw	a4,16(a1)
   14272:	0017e693          	ori	a3,a5,1
   14276:	c748                	sw	a0,12(a4)
   14278:	c708                	sw	a0,8(a4)
   1427a:	c354                	sw	a3,4(a4)
   1427c:	973e                	add	a4,a4,a5
   1427e:	c31c                	sw	a5,0(a4)
   14280:	bdf9                	j	1415e <_free_r+0xa6>
   14282:	0045a803          	lw	a6,4(a1)
   14286:	8609                	srai	a2,a2,0x2
   14288:	4785                	li	a5,1
   1428a:	00c797b3          	sll	a5,a5,a2
   1428e:	0107e7b3          	or	a5,a5,a6
   14292:	c1dc                	sw	a5,4(a1)
   14294:	b715                	j	141b8 <_free_r+0x100>
   14296:	15400613          	li	a2,340
   1429a:	00d66a63          	bltu	a2,a3,142ae <_free_r+0x1f6>
   1429e:	00f7d693          	srli	a3,a5,0xf
   142a2:	07868513          	addi	a0,a3,120
   142a6:	07768613          	addi	a2,a3,119
   142aa:	050e                	slli	a0,a0,0x3
   142ac:	bdc5                	j	1419c <_free_r+0xe4>
   142ae:	55400613          	li	a2,1364
   142b2:	00d66a63          	bltu	a2,a3,142c6 <_free_r+0x20e>
   142b6:	0127d693          	srli	a3,a5,0x12
   142ba:	07d68513          	addi	a0,a3,125
   142be:	07c68613          	addi	a2,a3,124
   142c2:	050e                	slli	a0,a0,0x3
   142c4:	bde1                	j	1419c <_free_r+0xe4>
   142c6:	3f800513          	li	a0,1016
   142ca:	07e00613          	li	a2,126
   142ce:	b5f9                	j	1419c <_free_r+0xe4>
   142d0:	0017e693          	ori	a3,a5,1
   142d4:	c354                	sw	a3,4(a4)
   142d6:	c21c                	sw	a5,0(a2)
   142d8:	b559                	j	1415e <_free_r+0xa6>

000142da <_malloc_r>:
   142da:	7179                	addi	sp,sp,-48
   142dc:	ce4e                	sw	s3,28(sp)
   142de:	d606                	sw	ra,44(sp)
   142e0:	d422                	sw	s0,40(sp)
   142e2:	d226                	sw	s1,36(sp)
   142e4:	d04a                	sw	s2,32(sp)
   142e6:	00b58793          	addi	a5,a1,11
   142ea:	4759                	li	a4,22
   142ec:	89aa                	mv	s3,a0
   142ee:	04f76863          	bltu	a4,a5,1433e <_malloc_r+0x64>
   142f2:	47c1                	li	a5,16
   142f4:	16b7e863          	bltu	a5,a1,14464 <_malloc_r+0x18a>
   142f8:	2359                	jal	1487e <__malloc_lock>
   142fa:	47e1                	li	a5,24
   142fc:	4589                	li	a1,2
   142fe:	44c1                	li	s1,16
   14300:	6979                	lui	s2,0x1e
   14302:	14090913          	addi	s2,s2,320 # 1e140 <__malloc_av_>
   14306:	97ca                	add	a5,a5,s2
   14308:	43c0                	lw	s0,4(a5)
   1430a:	ff878713          	addi	a4,a5,-8
   1430e:	24e40d63          	beq	s0,a4,14568 <_malloc_r+0x28e>
   14312:	405c                	lw	a5,4(s0)
   14314:	4454                	lw	a3,12(s0)
   14316:	4410                	lw	a2,8(s0)
   14318:	9bf1                	andi	a5,a5,-4
   1431a:	97a2                	add	a5,a5,s0
   1431c:	43d8                	lw	a4,4(a5)
   1431e:	c654                	sw	a3,12(a2)
   14320:	c690                	sw	a2,8(a3)
   14322:	00176713          	ori	a4,a4,1
   14326:	854e                	mv	a0,s3
   14328:	c3d8                	sw	a4,4(a5)
   1432a:	2b99                	jal	14880 <__malloc_unlock>
   1432c:	00840513          	addi	a0,s0,8
   14330:	50b2                	lw	ra,44(sp)
   14332:	5422                	lw	s0,40(sp)
   14334:	5492                	lw	s1,36(sp)
   14336:	5902                	lw	s2,32(sp)
   14338:	49f2                	lw	s3,28(sp)
   1433a:	6145                	addi	sp,sp,48
   1433c:	8082                	ret
   1433e:	ff87f493          	andi	s1,a5,-8
   14342:	1207c163          	bltz	a5,14464 <_malloc_r+0x18a>
   14346:	10b4ef63          	bltu	s1,a1,14464 <_malloc_r+0x18a>
   1434a:	2b15                	jal	1487e <__malloc_lock>
   1434c:	1f700793          	li	a5,503
   14350:	2c97fb63          	bgeu	a5,s1,14626 <_malloc_r+0x34c>
   14354:	0094d793          	srli	a5,s1,0x9
   14358:	10078b63          	beqz	a5,1446e <_malloc_r+0x194>
   1435c:	4711                	li	a4,4
   1435e:	24f76a63          	bltu	a4,a5,145b2 <_malloc_r+0x2d8>
   14362:	0064d793          	srli	a5,s1,0x6
   14366:	03978593          	addi	a1,a5,57
   1436a:	03878813          	addi	a6,a5,56
   1436e:	00359613          	slli	a2,a1,0x3
   14372:	6979                	lui	s2,0x1e
   14374:	14090913          	addi	s2,s2,320 # 1e140 <__malloc_av_>
   14378:	964a                	add	a2,a2,s2
   1437a:	4240                	lw	s0,4(a2)
   1437c:	1661                	addi	a2,a2,-8
   1437e:	02860163          	beq	a2,s0,143a0 <_malloc_r+0xc6>
   14382:	453d                	li	a0,15
   14384:	a039                	j	14392 <_malloc_r+0xb8>
   14386:	4454                	lw	a3,12(s0)
   14388:	1c075e63          	bgez	a4,14564 <_malloc_r+0x28a>
   1438c:	00d60a63          	beq	a2,a3,143a0 <_malloc_r+0xc6>
   14390:	8436                	mv	s0,a3
   14392:	405c                	lw	a5,4(s0)
   14394:	9bf1                	andi	a5,a5,-4
   14396:	40978733          	sub	a4,a5,s1
   1439a:	fee556e3          	bge	a0,a4,14386 <_malloc_r+0xac>
   1439e:	85c2                	mv	a1,a6
   143a0:	01092403          	lw	s0,16(s2)
   143a4:	6879                	lui	a6,0x1e
   143a6:	14880813          	addi	a6,a6,328 # 1e148 <__malloc_av_+0x8>
   143aa:	1b040a63          	beq	s0,a6,1455e <_malloc_r+0x284>
   143ae:	405c                	lw	a5,4(s0)
   143b0:	46bd                	li	a3,15
   143b2:	9bf1                	andi	a5,a5,-4
   143b4:	40978733          	sub	a4,a5,s1
   143b8:	26e6cc63          	blt	a3,a4,14630 <_malloc_r+0x356>
   143bc:	01092a23          	sw	a6,20(s2)
   143c0:	01092823          	sw	a6,16(s2)
   143c4:	24075763          	bgez	a4,14612 <_malloc_r+0x338>
   143c8:	1ff00713          	li	a4,511
   143cc:	00492503          	lw	a0,4(s2)
   143d0:	1af76163          	bltu	a4,a5,14572 <_malloc_r+0x298>
   143d4:	ff87f713          	andi	a4,a5,-8
   143d8:	0721                	addi	a4,a4,8
   143da:	974a                	add	a4,a4,s2
   143dc:	4314                	lw	a3,0(a4)
   143de:	0057d613          	srli	a2,a5,0x5
   143e2:	4785                	li	a5,1
   143e4:	00c797b3          	sll	a5,a5,a2
   143e8:	8d5d                	or	a0,a0,a5
   143ea:	ff870793          	addi	a5,a4,-8
   143ee:	c45c                	sw	a5,12(s0)
   143f0:	c414                	sw	a3,8(s0)
   143f2:	00a92223          	sw	a0,4(s2)
   143f6:	c300                	sw	s0,0(a4)
   143f8:	c6c0                	sw	s0,12(a3)
   143fa:	4025d793          	srai	a5,a1,0x2
   143fe:	4605                	li	a2,1
   14400:	00f61633          	sll	a2,a2,a5
   14404:	06c56c63          	bltu	a0,a2,1447c <_malloc_r+0x1a2>
   14408:	00a677b3          	and	a5,a2,a0
   1440c:	ef81                	bnez	a5,14424 <_malloc_r+0x14a>
   1440e:	0606                	slli	a2,a2,0x1
   14410:	99f1                	andi	a1,a1,-4
   14412:	00a677b3          	and	a5,a2,a0
   14416:	0591                	addi	a1,a1,4
   14418:	e791                	bnez	a5,14424 <_malloc_r+0x14a>
   1441a:	0606                	slli	a2,a2,0x1
   1441c:	00a677b3          	and	a5,a2,a0
   14420:	0591                	addi	a1,a1,4
   14422:	dfe5                	beqz	a5,1441a <_malloc_r+0x140>
   14424:	48bd                	li	a7,15
   14426:	00359313          	slli	t1,a1,0x3
   1442a:	934a                	add	t1,t1,s2
   1442c:	851a                	mv	a0,t1
   1442e:	455c                	lw	a5,12(a0)
   14430:	8e2e                	mv	t3,a1
   14432:	1af50063          	beq	a0,a5,145d2 <_malloc_r+0x2f8>
   14436:	43d8                	lw	a4,4(a5)
   14438:	843e                	mv	s0,a5
   1443a:	47dc                	lw	a5,12(a5)
   1443c:	9b71                	andi	a4,a4,-4
   1443e:	409706b3          	sub	a3,a4,s1
   14442:	18d8cf63          	blt	a7,a3,145e0 <_malloc_r+0x306>
   14446:	fe06c6e3          	bltz	a3,14432 <_malloc_r+0x158>
   1444a:	9722                	add	a4,a4,s0
   1444c:	4354                	lw	a3,4(a4)
   1444e:	4410                	lw	a2,8(s0)
   14450:	854e                	mv	a0,s3
   14452:	0016e693          	ori	a3,a3,1
   14456:	c354                	sw	a3,4(a4)
   14458:	c65c                	sw	a5,12(a2)
   1445a:	c790                	sw	a2,8(a5)
   1445c:	2115                	jal	14880 <__malloc_unlock>
   1445e:	00840513          	addi	a0,s0,8
   14462:	b5f9                	j	14330 <_malloc_r+0x56>
   14464:	47b1                	li	a5,12
   14466:	00f9a023          	sw	a5,0(s3)
   1446a:	4501                	li	a0,0
   1446c:	b5d1                	j	14330 <_malloc_r+0x56>
   1446e:	20000613          	li	a2,512
   14472:	04000593          	li	a1,64
   14476:	03f00813          	li	a6,63
   1447a:	bde5                	j	14372 <_malloc_r+0x98>
   1447c:	00892403          	lw	s0,8(s2)
   14480:	c85a                	sw	s6,16(sp)
   14482:	405c                	lw	a5,4(s0)
   14484:	ffc7fb13          	andi	s6,a5,-4
   14488:	009b6763          	bltu	s6,s1,14496 <_malloc_r+0x1bc>
   1448c:	409b0733          	sub	a4,s6,s1
   14490:	47bd                	li	a5,15
   14492:	0ae7c163          	blt	a5,a4,14534 <_malloc_r+0x25a>
   14496:	c266                	sw	s9,4(sp)
   14498:	ca56                	sw	s5,20(sp)
   1449a:	f401a703          	lw	a4,-192(gp) # 1e750 <__malloc_sbrk_base>
   1449e:	f5c1aa83          	lw	s5,-164(gp) # 1e76c <__malloc_top_pad>
   144a2:	cc52                	sw	s4,24(sp)
   144a4:	c65e                	sw	s7,12(sp)
   144a6:	57fd                	li	a5,-1
   144a8:	01640a33          	add	s4,s0,s6
   144ac:	9aa6                	add	s5,s5,s1
   144ae:	2cf70763          	beq	a4,a5,1477c <_malloc_r+0x4a2>
   144b2:	6785                	lui	a5,0x1
   144b4:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   144b6:	9abe                	add	s5,s5,a5
   144b8:	77fd                	lui	a5,0xfffff
   144ba:	00fafab3          	and	s5,s5,a5
   144be:	85d6                	mv	a1,s5
   144c0:	854e                	mv	a0,s3
   144c2:	1e7020ef          	jal	16ea8 <_sbrk_r>
   144c6:	57fd                	li	a5,-1
   144c8:	8baa                	mv	s7,a0
   144ca:	32f50963          	beq	a0,a5,147fc <_malloc_r+0x522>
   144ce:	c462                	sw	s8,8(sp)
   144d0:	19456e63          	bltu	a0,s4,1466c <_malloc_r+0x392>
   144d4:	0bc18c13          	addi	s8,gp,188 # 1e8cc <__malloc_current_mallinfo>
   144d8:	000c2583          	lw	a1,0(s8)
   144dc:	95d6                	add	a1,a1,s5
   144de:	00bc2023          	sw	a1,0(s8)
   144e2:	872e                	mv	a4,a1
   144e4:	1eaa1863          	bne	s4,a0,146d4 <_malloc_r+0x3fa>
   144e8:	01451793          	slli	a5,a0,0x14
   144ec:	1e079463          	bnez	a5,146d4 <_malloc_r+0x3fa>
   144f0:	00892b83          	lw	s7,8(s2)
   144f4:	015b07b3          	add	a5,s6,s5
   144f8:	0017e793          	ori	a5,a5,1
   144fc:	00fba223          	sw	a5,4(s7)
   14500:	f581a683          	lw	a3,-168(gp) # 1e768 <__malloc_max_sbrked_mem>
   14504:	00b6f463          	bgeu	a3,a1,1450c <_malloc_r+0x232>
   14508:	f4b1ac23          	sw	a1,-168(gp) # 1e768 <__malloc_max_sbrked_mem>
   1450c:	f541a683          	lw	a3,-172(gp) # 1e764 <__malloc_max_total_mem>
   14510:	00b6f463          	bgeu	a3,a1,14518 <_malloc_r+0x23e>
   14514:	f4b1aa23          	sw	a1,-172(gp) # 1e764 <__malloc_max_total_mem>
   14518:	4c22                	lw	s8,8(sp)
   1451a:	845e                	mv	s0,s7
   1451c:	9bf1                	andi	a5,a5,-4
   1451e:	40978733          	sub	a4,a5,s1
   14522:	2897eb63          	bltu	a5,s1,147b8 <_malloc_r+0x4de>
   14526:	47bd                	li	a5,15
   14528:	28e7d863          	bge	a5,a4,147b8 <_malloc_r+0x4de>
   1452c:	4a62                	lw	s4,24(sp)
   1452e:	4ad2                	lw	s5,20(sp)
   14530:	4bb2                	lw	s7,12(sp)
   14532:	4c92                	lw	s9,4(sp)
   14534:	0014e793          	ori	a5,s1,1
   14538:	c05c                	sw	a5,4(s0)
   1453a:	94a2                	add	s1,s1,s0
   1453c:	00992423          	sw	s1,8(s2)
   14540:	00176713          	ori	a4,a4,1
   14544:	854e                	mv	a0,s3
   14546:	c0d8                	sw	a4,4(s1)
   14548:	2e25                	jal	14880 <__malloc_unlock>
   1454a:	50b2                	lw	ra,44(sp)
   1454c:	00840513          	addi	a0,s0,8
   14550:	5422                	lw	s0,40(sp)
   14552:	4b42                	lw	s6,16(sp)
   14554:	5492                	lw	s1,36(sp)
   14556:	5902                	lw	s2,32(sp)
   14558:	49f2                	lw	s3,28(sp)
   1455a:	6145                	addi	sp,sp,48
   1455c:	8082                	ret
   1455e:	00492503          	lw	a0,4(s2)
   14562:	bd61                	j	143fa <_malloc_r+0x120>
   14564:	4410                	lw	a2,8(s0)
   14566:	bb55                	j	1431a <_malloc_r+0x40>
   14568:	47c0                	lw	s0,12(a5)
   1456a:	0589                	addi	a1,a1,2
   1456c:	e2878ae3          	beq	a5,s0,143a0 <_malloc_r+0xc6>
   14570:	b34d                	j	14312 <_malloc_r+0x38>
   14572:	0097d713          	srli	a4,a5,0x9
   14576:	4691                	li	a3,4
   14578:	0ee6f263          	bgeu	a3,a4,1465c <_malloc_r+0x382>
   1457c:	46d1                	li	a3,20
   1457e:	24e6e663          	bltu	a3,a4,147ca <_malloc_r+0x4f0>
   14582:	05c70613          	addi	a2,a4,92
   14586:	05b70693          	addi	a3,a4,91
   1458a:	060e                	slli	a2,a2,0x3
   1458c:	964a                	add	a2,a2,s2
   1458e:	4218                	lw	a4,0(a2)
   14590:	1661                	addi	a2,a2,-8
   14592:	00e61663          	bne	a2,a4,1459e <_malloc_r+0x2c4>
   14596:	a2ed                	j	14780 <_malloc_r+0x4a6>
   14598:	4718                	lw	a4,8(a4)
   1459a:	00e60663          	beq	a2,a4,145a6 <_malloc_r+0x2cc>
   1459e:	4354                	lw	a3,4(a4)
   145a0:	9af1                	andi	a3,a3,-4
   145a2:	fed7ebe3          	bltu	a5,a3,14598 <_malloc_r+0x2be>
   145a6:	4750                	lw	a2,12(a4)
   145a8:	c450                	sw	a2,12(s0)
   145aa:	c418                	sw	a4,8(s0)
   145ac:	c600                	sw	s0,8(a2)
   145ae:	c740                	sw	s0,12(a4)
   145b0:	b5a9                	j	143fa <_malloc_r+0x120>
   145b2:	4751                	li	a4,20
   145b4:	0cf77363          	bgeu	a4,a5,1467a <_malloc_r+0x3a0>
   145b8:	05400713          	li	a4,84
   145bc:	22f76363          	bltu	a4,a5,147e2 <_malloc_r+0x508>
   145c0:	00c4d793          	srli	a5,s1,0xc
   145c4:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe05eb>
   145c8:	06e78813          	addi	a6,a5,110
   145cc:	00359613          	slli	a2,a1,0x3
   145d0:	b34d                	j	14372 <_malloc_r+0x98>
   145d2:	0e05                	addi	t3,t3,1
   145d4:	003e7793          	andi	a5,t3,3
   145d8:	0521                	addi	a0,a0,8
   145da:	cfc5                	beqz	a5,14692 <_malloc_r+0x3b8>
   145dc:	455c                	lw	a5,12(a0)
   145de:	bd91                	j	14432 <_malloc_r+0x158>
   145e0:	4410                	lw	a2,8(s0)
   145e2:	0014e593          	ori	a1,s1,1
   145e6:	c04c                	sw	a1,4(s0)
   145e8:	c65c                	sw	a5,12(a2)
   145ea:	c790                	sw	a2,8(a5)
   145ec:	94a2                	add	s1,s1,s0
   145ee:	00992a23          	sw	s1,20(s2)
   145f2:	00992823          	sw	s1,16(s2)
   145f6:	0016e793          	ori	a5,a3,1
   145fa:	0104a623          	sw	a6,12(s1)
   145fe:	0104a423          	sw	a6,8(s1)
   14602:	c0dc                	sw	a5,4(s1)
   14604:	9722                	add	a4,a4,s0
   14606:	854e                	mv	a0,s3
   14608:	c314                	sw	a3,0(a4)
   1460a:	2c9d                	jal	14880 <__malloc_unlock>
   1460c:	00840513          	addi	a0,s0,8
   14610:	b305                	j	14330 <_malloc_r+0x56>
   14612:	97a2                	add	a5,a5,s0
   14614:	43d8                	lw	a4,4(a5)
   14616:	854e                	mv	a0,s3
   14618:	00176713          	ori	a4,a4,1
   1461c:	c3d8                	sw	a4,4(a5)
   1461e:	248d                	jal	14880 <__malloc_unlock>
   14620:	00840513          	addi	a0,s0,8
   14624:	b331                	j	14330 <_malloc_r+0x56>
   14626:	0034d593          	srli	a1,s1,0x3
   1462a:	00848793          	addi	a5,s1,8
   1462e:	b9c9                	j	14300 <_malloc_r+0x26>
   14630:	0014e693          	ori	a3,s1,1
   14634:	c054                	sw	a3,4(s0)
   14636:	94a2                	add	s1,s1,s0
   14638:	00992a23          	sw	s1,20(s2)
   1463c:	00992823          	sw	s1,16(s2)
   14640:	00176693          	ori	a3,a4,1
   14644:	0104a623          	sw	a6,12(s1)
   14648:	0104a423          	sw	a6,8(s1)
   1464c:	c0d4                	sw	a3,4(s1)
   1464e:	97a2                	add	a5,a5,s0
   14650:	854e                	mv	a0,s3
   14652:	c398                	sw	a4,0(a5)
   14654:	2435                	jal	14880 <__malloc_unlock>
   14656:	00840513          	addi	a0,s0,8
   1465a:	b9d9                	j	14330 <_malloc_r+0x56>
   1465c:	0067d713          	srli	a4,a5,0x6
   14660:	03970613          	addi	a2,a4,57
   14664:	03870693          	addi	a3,a4,56
   14668:	060e                	slli	a2,a2,0x3
   1466a:	b70d                	j	1458c <_malloc_r+0x2b2>
   1466c:	05240d63          	beq	s0,s2,146c6 <_malloc_r+0x3ec>
   14670:	00892403          	lw	s0,8(s2)
   14674:	4c22                	lw	s8,8(sp)
   14676:	405c                	lw	a5,4(s0)
   14678:	b555                	j	1451c <_malloc_r+0x242>
   1467a:	05c78593          	addi	a1,a5,92
   1467e:	05b78813          	addi	a6,a5,91
   14682:	00359613          	slli	a2,a1,0x3
   14686:	b1f5                	j	14372 <_malloc_r+0x98>
   14688:	00832783          	lw	a5,8(t1)
   1468c:	15fd                	addi	a1,a1,-1
   1468e:	1e679563          	bne	a5,t1,14878 <_malloc_r+0x59e>
   14692:	0035f793          	andi	a5,a1,3
   14696:	1361                	addi	t1,t1,-8
   14698:	fbe5                	bnez	a5,14688 <_malloc_r+0x3ae>
   1469a:	00492703          	lw	a4,4(s2)
   1469e:	fff64793          	not	a5,a2
   146a2:	8ff9                	and	a5,a5,a4
   146a4:	00f92223          	sw	a5,4(s2)
   146a8:	0606                	slli	a2,a2,0x1
   146aa:	dcc7e9e3          	bltu	a5,a2,1447c <_malloc_r+0x1a2>
   146ae:	dc0607e3          	beqz	a2,1447c <_malloc_r+0x1a2>
   146b2:	00f67733          	and	a4,a2,a5
   146b6:	e711                	bnez	a4,146c2 <_malloc_r+0x3e8>
   146b8:	0606                	slli	a2,a2,0x1
   146ba:	00f67733          	and	a4,a2,a5
   146be:	0e11                	addi	t3,t3,4
   146c0:	df65                	beqz	a4,146b8 <_malloc_r+0x3de>
   146c2:	85f2                	mv	a1,t3
   146c4:	b38d                	j	14426 <_malloc_r+0x14c>
   146c6:	0bc18c13          	addi	s8,gp,188 # 1e8cc <__malloc_current_mallinfo>
   146ca:	000c2703          	lw	a4,0(s8)
   146ce:	9756                	add	a4,a4,s5
   146d0:	00ec2023          	sw	a4,0(s8)
   146d4:	f401a683          	lw	a3,-192(gp) # 1e750 <__malloc_sbrk_base>
   146d8:	57fd                	li	a5,-1
   146da:	12f68563          	beq	a3,a5,14804 <_malloc_r+0x52a>
   146de:	414b87b3          	sub	a5,s7,s4
   146e2:	97ba                	add	a5,a5,a4
   146e4:	00fc2023          	sw	a5,0(s8)
   146e8:	007bfc93          	andi	s9,s7,7
   146ec:	0a0c8263          	beqz	s9,14790 <_malloc_r+0x4b6>
   146f0:	419b8bb3          	sub	s7,s7,s9
   146f4:	6785                	lui	a5,0x1
   146f6:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   146f8:	0ba1                	addi	s7,s7,8
   146fa:	419785b3          	sub	a1,a5,s9
   146fe:	9ade                	add	s5,s5,s7
   14700:	415585b3          	sub	a1,a1,s5
   14704:	05d2                	slli	a1,a1,0x14
   14706:	0145da13          	srli	s4,a1,0x14
   1470a:	85d2                	mv	a1,s4
   1470c:	854e                	mv	a0,s3
   1470e:	79a020ef          	jal	16ea8 <_sbrk_r>
   14712:	57fd                	li	a5,-1
   14714:	12f50463          	beq	a0,a5,1483c <_malloc_r+0x562>
   14718:	41750533          	sub	a0,a0,s7
   1471c:	01450ab3          	add	s5,a0,s4
   14720:	000c2703          	lw	a4,0(s8)
   14724:	01792423          	sw	s7,8(s2)
   14728:	001ae793          	ori	a5,s5,1
   1472c:	00ea05b3          	add	a1,s4,a4
   14730:	00bc2023          	sw	a1,0(s8)
   14734:	00fba223          	sw	a5,4(s7)
   14738:	dd2404e3          	beq	s0,s2,14500 <_malloc_r+0x226>
   1473c:	46bd                	li	a3,15
   1473e:	0766f963          	bgeu	a3,s6,147b0 <_malloc_r+0x4d6>
   14742:	4058                	lw	a4,4(s0)
   14744:	ff4b0793          	addi	a5,s6,-12
   14748:	9be1                	andi	a5,a5,-8
   1474a:	8b05                	andi	a4,a4,1
   1474c:	8f5d                	or	a4,a4,a5
   1474e:	c058                	sw	a4,4(s0)
   14750:	4615                	li	a2,5
   14752:	00f40733          	add	a4,s0,a5
   14756:	c350                	sw	a2,4(a4)
   14758:	c710                	sw	a2,8(a4)
   1475a:	00f6e563          	bltu	a3,a5,14764 <_malloc_r+0x48a>
   1475e:	004ba783          	lw	a5,4(s7)
   14762:	bb79                	j	14500 <_malloc_r+0x226>
   14764:	00840593          	addi	a1,s0,8
   14768:	854e                	mv	a0,s3
   1476a:	94fff0ef          	jal	140b8 <_free_r>
   1476e:	00892b83          	lw	s7,8(s2)
   14772:	000c2583          	lw	a1,0(s8)
   14776:	004ba783          	lw	a5,4(s7)
   1477a:	b359                	j	14500 <_malloc_r+0x226>
   1477c:	0ac1                	addi	s5,s5,16
   1477e:	b381                	j	144be <_malloc_r+0x1e4>
   14780:	8689                	srai	a3,a3,0x2
   14782:	4785                	li	a5,1
   14784:	00d797b3          	sll	a5,a5,a3
   14788:	8d5d                	or	a0,a0,a5
   1478a:	00a92223          	sw	a0,4(s2)
   1478e:	bd29                	j	145a8 <_malloc_r+0x2ce>
   14790:	015b85b3          	add	a1,s7,s5
   14794:	40b005b3          	neg	a1,a1
   14798:	05d2                	slli	a1,a1,0x14
   1479a:	0145da13          	srli	s4,a1,0x14
   1479e:	85d2                	mv	a1,s4
   147a0:	854e                	mv	a0,s3
   147a2:	706020ef          	jal	16ea8 <_sbrk_r>
   147a6:	57fd                	li	a5,-1
   147a8:	f6f518e3          	bne	a0,a5,14718 <_malloc_r+0x43e>
   147ac:	4a01                	li	s4,0
   147ae:	bf8d                	j	14720 <_malloc_r+0x446>
   147b0:	4c22                	lw	s8,8(sp)
   147b2:	4785                	li	a5,1
   147b4:	00fba223          	sw	a5,4(s7)
   147b8:	854e                	mv	a0,s3
   147ba:	20d9                	jal	14880 <__malloc_unlock>
   147bc:	4501                	li	a0,0
   147be:	4a62                	lw	s4,24(sp)
   147c0:	4ad2                	lw	s5,20(sp)
   147c2:	4b42                	lw	s6,16(sp)
   147c4:	4bb2                	lw	s7,12(sp)
   147c6:	4c92                	lw	s9,4(sp)
   147c8:	b6a5                	j	14330 <_malloc_r+0x56>
   147ca:	05400693          	li	a3,84
   147ce:	02e6ee63          	bltu	a3,a4,1480a <_malloc_r+0x530>
   147d2:	00c7d713          	srli	a4,a5,0xc
   147d6:	06f70613          	addi	a2,a4,111
   147da:	06e70693          	addi	a3,a4,110
   147de:	060e                	slli	a2,a2,0x3
   147e0:	b375                	j	1458c <_malloc_r+0x2b2>
   147e2:	15400713          	li	a4,340
   147e6:	02f76e63          	bltu	a4,a5,14822 <_malloc_r+0x548>
   147ea:	00f4d793          	srli	a5,s1,0xf
   147ee:	07878593          	addi	a1,a5,120
   147f2:	07778813          	addi	a6,a5,119
   147f6:	00359613          	slli	a2,a1,0x3
   147fa:	bea5                	j	14372 <_malloc_r+0x98>
   147fc:	00892403          	lw	s0,8(s2)
   14800:	405c                	lw	a5,4(s0)
   14802:	bb29                	j	1451c <_malloc_r+0x242>
   14804:	f571a023          	sw	s7,-192(gp) # 1e750 <__malloc_sbrk_base>
   14808:	b5c5                	j	146e8 <_malloc_r+0x40e>
   1480a:	15400693          	li	a3,340
   1480e:	02e6ed63          	bltu	a3,a4,14848 <_malloc_r+0x56e>
   14812:	00f7d713          	srli	a4,a5,0xf
   14816:	07870613          	addi	a2,a4,120
   1481a:	07770693          	addi	a3,a4,119
   1481e:	060e                	slli	a2,a2,0x3
   14820:	b3b5                	j	1458c <_malloc_r+0x2b2>
   14822:	55400713          	li	a4,1364
   14826:	02f76d63          	bltu	a4,a5,14860 <_malloc_r+0x586>
   1482a:	0124d793          	srli	a5,s1,0x12
   1482e:	07d78593          	addi	a1,a5,125
   14832:	07c78813          	addi	a6,a5,124
   14836:	00359613          	slli	a2,a1,0x3
   1483a:	be25                	j	14372 <_malloc_r+0x98>
   1483c:	1ce1                	addi	s9,s9,-8
   1483e:	9ae6                	add	s5,s5,s9
   14840:	417a8ab3          	sub	s5,s5,s7
   14844:	4a01                	li	s4,0
   14846:	bde9                	j	14720 <_malloc_r+0x446>
   14848:	55400693          	li	a3,1364
   1484c:	02e6e163          	bltu	a3,a4,1486e <_malloc_r+0x594>
   14850:	0127d713          	srli	a4,a5,0x12
   14854:	07d70613          	addi	a2,a4,125
   14858:	07c70693          	addi	a3,a4,124
   1485c:	060e                	slli	a2,a2,0x3
   1485e:	b33d                	j	1458c <_malloc_r+0x2b2>
   14860:	3f800613          	li	a2,1016
   14864:	07f00593          	li	a1,127
   14868:	07e00813          	li	a6,126
   1486c:	b619                	j	14372 <_malloc_r+0x98>
   1486e:	3f800613          	li	a2,1016
   14872:	07e00693          	li	a3,126
   14876:	bb19                	j	1458c <_malloc_r+0x2b2>
   14878:	00492783          	lw	a5,4(s2)
   1487c:	b535                	j	146a8 <_malloc_r+0x3ce>

0001487e <__malloc_lock>:
   1487e:	8082                	ret

00014880 <__malloc_unlock>:
   14880:	8082                	ret

00014882 <_vfprintf_r>:
   14882:	7145                	addi	sp,sp,-464
   14884:	1c112623          	sw	ra,460(sp)
   14888:	1c812423          	sw	s0,456(sp)
   1488c:	1c912223          	sw	s1,452(sp)
   14890:	1b612823          	sw	s6,432(sp)
   14894:	84ae                	mv	s1,a1
   14896:	8b32                	mv	s6,a2
   14898:	ca36                	sw	a3,20(sp)
   1489a:	842a                	mv	s0,a0
   1489c:	c42a                	sw	a0,8(sp)
   1489e:	5fe020ef          	jal	16e9c <_localeconv_r>
   148a2:	411c                	lw	a5,0(a0)
   148a4:	853e                	mv	a0,a5
   148a6:	d83e                	sw	a5,48(sp)
   148a8:	07d020ef          	jal	17124 <strlen>
   148ac:	d62a                	sw	a0,44(sp)
   148ae:	c982                	sw	zero,208(sp)
   148b0:	cb82                	sw	zero,212(sp)
   148b2:	cd82                	sw	zero,216(sp)
   148b4:	cf82                	sw	zero,220(sp)
   148b6:	c409                	beqz	s0,148c0 <_vfprintf_r+0x3e>
   148b8:	5858                	lw	a4,52(s0)
   148ba:	e319                	bnez	a4,148c0 <_vfprintf_r+0x3e>
   148bc:	1960106f          	j	15a52 <_vfprintf_r+0x11d0>
   148c0:	00c49683          	lh	a3,12(s1)
   148c4:	50f8                	lw	a4,100(s1)
   148c6:	01269613          	slli	a2,a3,0x12
   148ca:	00064a63          	bltz	a2,148de <_vfprintf_r+0x5c>
   148ce:	7679                	lui	a2,0xffffe
   148d0:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffdf57b>
   148d2:	6589                	lui	a1,0x2
   148d4:	8ecd                	or	a3,a3,a1
   148d6:	8f71                	and	a4,a4,a2
   148d8:	00d49623          	sh	a3,12(s1)
   148dc:	d0f8                	sw	a4,100(s1)
   148de:	01271693          	slli	a3,a4,0x12
   148e2:	0006d463          	bgez	a3,148ea <_vfprintf_r+0x68>
   148e6:	07b0106f          	j	16160 <_vfprintf_r+0x18de>
   148ea:	00c49703          	lh	a4,12(s1)
   148ee:	00877693          	andi	a3,a4,8
   148f2:	22068a63          	beqz	a3,14b26 <_vfprintf_r+0x2a4>
   148f6:	4894                	lw	a3,16(s1)
   148f8:	22068763          	beqz	a3,14b26 <_vfprintf_r+0x2a4>
   148fc:	8b69                	andi	a4,a4,26
   148fe:	46a9                	li	a3,10
   14900:	24d70063          	beq	a4,a3,14b40 <_vfprintf_r+0x2be>
   14904:	1b312e23          	sw	s3,444(sp)
   14908:	1b412c23          	sw	s4,440(sp)
   1490c:	1ba12023          	sw	s10,416(sp)
   14910:	6775                	lui	a4,0x1d
   14912:	1d212023          	sw	s2,448(sp)
   14916:	1b512a23          	sw	s5,436(sp)
   1491a:	1b712623          	sw	s7,428(sp)
   1491e:	1b812423          	sw	s8,424(sp)
   14922:	1b912223          	sw	s9,420(sp)
   14926:	19b12e23          	sw	s11,412(sp)
   1492a:	8d5a                	mv	s10,s6
   1492c:	60470793          	addi	a5,a4,1540 # 1d604 <__clzsi2+0x1e6>
   14930:	000d4703          	lbu	a4,0(s10)
   14934:	0ec10993          	addi	s3,sp,236
   14938:	6a79                	lui	s4,0x1e
   1493a:	c3ce                	sw	s3,196(sp)
   1493c:	c782                	sw	zero,204(sp)
   1493e:	c582                	sw	zero,200(sp)
   14940:	d002                	sw	zero,32(sp)
   14942:	da02                	sw	zero,52(sp)
   14944:	c082                	sw	zero,64(sp)
   14946:	de02                	sw	zero,60(sp)
   14948:	c482                	sw	zero,72(sp)
   1494a:	c282                	sw	zero,68(sp)
   1494c:	c602                	sw	zero,12(sp)
   1494e:	cc3e                	sw	a5,24(sp)
   14950:	844e                	mv	s0,s3
   14952:	808a0a13          	addi	s4,s4,-2040 # 1d808 <zeroes.0>
   14956:	18070063          	beqz	a4,14ad6 <_vfprintf_r+0x254>
   1495a:	896a                	mv	s2,s10
   1495c:	02500693          	li	a3,37
   14960:	2ed70a63          	beq	a4,a3,14c54 <_vfprintf_r+0x3d2>
   14964:	00194703          	lbu	a4,1(s2)
   14968:	0905                	addi	s2,s2,1
   1496a:	fb7d                	bnez	a4,14960 <_vfprintf_r+0xde>
   1496c:	41a90ab3          	sub	s5,s2,s10
   14970:	17a90363          	beq	s2,s10,14ad6 <_vfprintf_r+0x254>
   14974:	46be                	lw	a3,204(sp)
   14976:	472e                	lw	a4,200(sp)
   14978:	01a42023          	sw	s10,0(s0)
   1497c:	96d6                	add	a3,a3,s5
   1497e:	0705                	addi	a4,a4,1
   14980:	01542223          	sw	s5,4(s0)
   14984:	c7b6                	sw	a3,204(sp)
   14986:	c5ba                	sw	a4,200(sp)
   14988:	469d                	li	a3,7
   1498a:	0421                	addi	s0,s0,8
   1498c:	2ce6cb63          	blt	a3,a4,14c62 <_vfprintf_r+0x3e0>
   14990:	47b2                	lw	a5,12(sp)
   14992:	00094703          	lbu	a4,0(s2)
   14996:	97d6                	add	a5,a5,s5
   14998:	c63e                	sw	a5,12(sp)
   1499a:	12070e63          	beqz	a4,14ad6 <_vfprintf_r+0x254>
   1499e:	00194883          	lbu	a7,1(s2)
   149a2:	0a0103a3          	sb	zero,167(sp)
   149a6:	0905                	addi	s2,s2,1
   149a8:	5afd                	li	s5,-1
   149aa:	4b81                	li	s7,0
   149ac:	4c81                	li	s9,0
   149ae:	05a00b13          	li	s6,90
   149b2:	0905                	addi	s2,s2,1
   149b4:	fe088793          	addi	a5,a7,-32
   149b8:	02fb6b63          	bltu	s6,a5,149ee <_vfprintf_r+0x16c>
   149bc:	4762                	lw	a4,24(sp)
   149be:	078a                	slli	a5,a5,0x2
   149c0:	97ba                	add	a5,a5,a4
   149c2:	439c                	lw	a5,0(a5)
   149c4:	8782                	jr	a5
   149c6:	4b81                	li	s7,0
   149c8:	fd088793          	addi	a5,a7,-48
   149cc:	46a5                	li	a3,9
   149ce:	00094883          	lbu	a7,0(s2)
   149d2:	002b9713          	slli	a4,s7,0x2
   149d6:	9bba                	add	s7,s7,a4
   149d8:	0b86                	slli	s7,s7,0x1
   149da:	9bbe                	add	s7,s7,a5
   149dc:	fd088793          	addi	a5,a7,-48
   149e0:	0905                	addi	s2,s2,1
   149e2:	fef6f6e3          	bgeu	a3,a5,149ce <_vfprintf_r+0x14c>
   149e6:	fe088793          	addi	a5,a7,-32
   149ea:	fcfb79e3          	bgeu	s6,a5,149bc <_vfprintf_r+0x13a>
   149ee:	0e088463          	beqz	a7,14ad6 <_vfprintf_r+0x254>
   149f2:	13110623          	sb	a7,300(sp)
   149f6:	0a0103a3          	sb	zero,167(sp)
   149fa:	4d85                	li	s11,1
   149fc:	4b05                	li	s6,1
   149fe:	12c10d13          	addi	s10,sp,300
   14a02:	c802                	sw	zero,16(sp)
   14a04:	4a81                	li	s5,0
   14a06:	d402                	sw	zero,40(sp)
   14a08:	d202                	sw	zero,36(sp)
   14a0a:	ce02                	sw	zero,28(sp)
   14a0c:	002cf293          	andi	t0,s9,2
   14a10:	00028363          	beqz	t0,14a16 <_vfprintf_r+0x194>
   14a14:	0d89                	addi	s11,s11,2
   14a16:	084cff93          	andi	t6,s9,132
   14a1a:	463e                	lw	a2,204(sp)
   14a1c:	000f9663          	bnez	t6,14a28 <_vfprintf_r+0x1a6>
   14a20:	41bb8733          	sub	a4,s7,s11
   14a24:	0ce047e3          	bgtz	a4,152f2 <_vfprintf_r+0xa70>
   14a28:	0a714703          	lbu	a4,167(sp)
   14a2c:	cf19                	beqz	a4,14a4a <_vfprintf_r+0x1c8>
   14a2e:	472e                	lw	a4,200(sp)
   14a30:	0a710593          	addi	a1,sp,167
   14a34:	c00c                	sw	a1,0(s0)
   14a36:	0605                	addi	a2,a2,1
   14a38:	4585                	li	a1,1
   14a3a:	0705                	addi	a4,a4,1
   14a3c:	c04c                	sw	a1,4(s0)
   14a3e:	c7b2                	sw	a2,204(sp)
   14a40:	c5ba                	sw	a4,200(sp)
   14a42:	459d                	li	a1,7
   14a44:	0421                	addi	s0,s0,8
   14a46:	2ee5c763          	blt	a1,a4,14d34 <_vfprintf_r+0x4b2>
   14a4a:	00028f63          	beqz	t0,14a68 <_vfprintf_r+0x1e6>
   14a4e:	472e                	lw	a4,200(sp)
   14a50:	4589                	li	a1,2
   14a52:	0609                	addi	a2,a2,2
   14a54:	0705                	addi	a4,a4,1
   14a56:	113c                	addi	a5,sp,168
   14a58:	c04c                	sw	a1,4(s0)
   14a5a:	c01c                	sw	a5,0(s0)
   14a5c:	c7b2                	sw	a2,204(sp)
   14a5e:	c5ba                	sw	a4,200(sp)
   14a60:	459d                	li	a1,7
   14a62:	0421                	addi	s0,s0,8
   14a64:	12e5cae3          	blt	a1,a4,15398 <_vfprintf_r+0xb16>
   14a68:	08000713          	li	a4,128
   14a6c:	72ef8e63          	beq	t6,a4,151a8 <_vfprintf_r+0x926>
   14a70:	416a8ab3          	sub	s5,s5,s6
   14a74:	7d504a63          	bgtz	s5,15248 <_vfprintf_r+0x9c6>
   14a78:	100cf713          	andi	a4,s9,256
   14a7c:	60071e63          	bnez	a4,15098 <_vfprintf_r+0x816>
   14a80:	47ae                	lw	a5,200(sp)
   14a82:	965a                	add	a2,a2,s6
   14a84:	01a42023          	sw	s10,0(s0)
   14a88:	0785                	addi	a5,a5,1
   14a8a:	01642223          	sw	s6,4(s0)
   14a8e:	c7b2                	sw	a2,204(sp)
   14a90:	c5be                	sw	a5,200(sp)
   14a92:	471d                	li	a4,7
   14a94:	36f74563          	blt	a4,a5,14dfe <_vfprintf_r+0x57c>
   14a98:	0421                	addi	s0,s0,8
   14a9a:	004cfe13          	andi	t3,s9,4
   14a9e:	000e0663          	beqz	t3,14aaa <_vfprintf_r+0x228>
   14aa2:	41bb8ab3          	sub	s5,s7,s11
   14aa6:	115047e3          	bgtz	s5,153b4 <_vfprintf_r+0xb32>
   14aaa:	835e                	mv	t1,s7
   14aac:	01bbd363          	bge	s7,s11,14ab2 <_vfprintf_r+0x230>
   14ab0:	836e                	mv	t1,s11
   14ab2:	47b2                	lw	a5,12(sp)
   14ab4:	979a                	add	a5,a5,t1
   14ab6:	c63e                	sw	a5,12(sp)
   14ab8:	00061ce3          	bnez	a2,152d0 <_vfprintf_r+0xa4e>
   14abc:	47c2                	lw	a5,16(sp)
   14abe:	c582                	sw	zero,200(sp)
   14ac0:	c789                	beqz	a5,14aca <_vfprintf_r+0x248>
   14ac2:	45c2                	lw	a1,16(sp)
   14ac4:	4522                	lw	a0,8(sp)
   14ac6:	df2ff0ef          	jal	140b8 <_free_r>
   14aca:	844e                	mv	s0,s3
   14acc:	8d4a                	mv	s10,s2
   14ace:	000d4703          	lbu	a4,0(s10)
   14ad2:	e80714e3          	bnez	a4,1495a <_vfprintf_r+0xd8>
   14ad6:	47be                	lw	a5,204(sp)
   14ad8:	c399                	beqz	a5,14ade <_vfprintf_r+0x25c>
   14ada:	31a0106f          	j	15df4 <_vfprintf_r+0x1572>
   14ade:	00c4d783          	lhu	a5,12(s1)
   14ae2:	1c012903          	lw	s2,448(sp)
   14ae6:	1bc12983          	lw	s3,444(sp)
   14aea:	0407f793          	andi	a5,a5,64
   14aee:	1b812a03          	lw	s4,440(sp)
   14af2:	1b412a83          	lw	s5,436(sp)
   14af6:	1ac12b83          	lw	s7,428(sp)
   14afa:	1a812c03          	lw	s8,424(sp)
   14afe:	1a412c83          	lw	s9,420(sp)
   14b02:	1a012d03          	lw	s10,416(sp)
   14b06:	19c12d83          	lw	s11,412(sp)
   14b0a:	c399                	beqz	a5,14b10 <_vfprintf_r+0x28e>
   14b0c:	6540106f          	j	16160 <_vfprintf_r+0x18de>
   14b10:	1cc12083          	lw	ra,460(sp)
   14b14:	1c812403          	lw	s0,456(sp)
   14b18:	4532                	lw	a0,12(sp)
   14b1a:	1c412483          	lw	s1,452(sp)
   14b1e:	1b012b03          	lw	s6,432(sp)
   14b22:	6179                	addi	sp,sp,464
   14b24:	8082                	ret
   14b26:	4522                	lw	a0,8(sp)
   14b28:	85a6                	mv	a1,s1
   14b2a:	18a020ef          	jal	16cb4 <__swsetup_r>
   14b2e:	c119                	beqz	a0,14b34 <_vfprintf_r+0x2b2>
   14b30:	6300106f          	j	16160 <_vfprintf_r+0x18de>
   14b34:	00c49703          	lh	a4,12(s1)
   14b38:	46a9                	li	a3,10
   14b3a:	8b69                	andi	a4,a4,26
   14b3c:	dcd714e3          	bne	a4,a3,14904 <_vfprintf_r+0x82>
   14b40:	00e49703          	lh	a4,14(s1)
   14b44:	dc0740e3          	bltz	a4,14904 <_vfprintf_r+0x82>
   14b48:	46d2                	lw	a3,20(sp)
   14b4a:	4522                	lw	a0,8(sp)
   14b4c:	865a                	mv	a2,s6
   14b4e:	85a6                	mv	a1,s1
   14b50:	0e9010ef          	jal	16438 <__sbprintf>
   14b54:	c62a                	sw	a0,12(sp)
   14b56:	bf6d                	j	14b10 <_vfprintf_r+0x28e>
   14b58:	4c22                	lw	s8,8(sp)
   14b5a:	8562                	mv	a0,s8
   14b5c:	340020ef          	jal	16e9c <_localeconv_r>
   14b60:	415c                	lw	a5,4(a0)
   14b62:	853e                	mv	a0,a5
   14b64:	c2be                	sw	a5,68(sp)
   14b66:	5be020ef          	jal	17124 <strlen>
   14b6a:	87aa                	mv	a5,a0
   14b6c:	8562                	mv	a0,s8
   14b6e:	c4be                	sw	a5,72(sp)
   14b70:	8c3e                	mv	s8,a5
   14b72:	32a020ef          	jal	16e9c <_localeconv_r>
   14b76:	451c                	lw	a5,8(a0)
   14b78:	de3e                	sw	a5,60(sp)
   14b7a:	280c16e3          	bnez	s8,15606 <_vfprintf_r+0xd84>
   14b7e:	00094883          	lbu	a7,0(s2)
   14b82:	bd05                	j	149b2 <_vfprintf_r+0x130>
   14b84:	00094883          	lbu	a7,0(s2)
   14b88:	020cec93          	ori	s9,s9,32
   14b8c:	b51d                	j	149b2 <_vfprintf_r+0x130>
   14b8e:	010cec93          	ori	s9,s9,16
   14b92:	020cf793          	andi	a5,s9,32
   14b96:	26078e63          	beqz	a5,14e12 <_vfprintf_r+0x590>
   14b9a:	47d2                	lw	a5,20(sp)
   14b9c:	00778c13          	addi	s8,a5,7
   14ba0:	ff8c7c13          	andi	s8,s8,-8
   14ba4:	004c2783          	lw	a5,4(s8)
   14ba8:	000c2b03          	lw	s6,0(s8)
   14bac:	008c0713          	addi	a4,s8,8
   14bb0:	ca3a                	sw	a4,20(sp)
   14bb2:	8dbe                	mv	s11,a5
   14bb4:	2807c463          	bltz	a5,14e3c <_vfprintf_r+0x5ba>
   14bb8:	8ee6                	mv	t4,s9
   14bba:	380ac563          	bltz	s5,14f44 <_vfprintf_r+0x6c2>
   14bbe:	01bb67b3          	or	a5,s6,s11
   14bc2:	f7fcfe93          	andi	t4,s9,-129
   14bc6:	36079f63          	bnez	a5,14f44 <_vfprintf_r+0x6c2>
   14bca:	380a9263          	bnez	s5,14f4e <_vfprintf_r+0x6cc>
   14bce:	4b01                	li	s6,0
   14bd0:	8cf6                	mv	s9,t4
   14bd2:	19010d13          	addi	s10,sp,400
   14bd6:	0a714703          	lbu	a4,167(sp)
   14bda:	8dd6                	mv	s11,s5
   14bdc:	016ad363          	bge	s5,s6,14be2 <_vfprintf_r+0x360>
   14be0:	8dda                	mv	s11,s6
   14be2:	c802                	sw	zero,16(sp)
   14be4:	d402                	sw	zero,40(sp)
   14be6:	d202                	sw	zero,36(sp)
   14be8:	ce02                	sw	zero,28(sp)
   14bea:	e20701e3          	beqz	a4,14a0c <_vfprintf_r+0x18a>
   14bee:	0d85                	addi	s11,s11,1
   14bf0:	bd31                	j	14a0c <_vfprintf_r+0x18a>
   14bf2:	010cec93          	ori	s9,s9,16
   14bf6:	020cf793          	andi	a5,s9,32
   14bfa:	2a078d63          	beqz	a5,14eb4 <_vfprintf_r+0x632>
   14bfe:	47d2                	lw	a5,20(sp)
   14c00:	00778c13          	addi	s8,a5,7
   14c04:	ff8c7c13          	andi	s8,s8,-8
   14c08:	000c2b03          	lw	s6,0(s8)
   14c0c:	004c2d83          	lw	s11,4(s8)
   14c10:	008c0793          	addi	a5,s8,8
   14c14:	ca3e                	sw	a5,20(sp)
   14c16:	bffcfe93          	andi	t4,s9,-1025
   14c1a:	4781                	li	a5,0
   14c1c:	4701                	li	a4,0
   14c1e:	0ae103a3          	sb	a4,167(sp)
   14c22:	220acd63          	bltz	s5,14e5c <_vfprintf_r+0x5da>
   14c26:	01bb6733          	or	a4,s6,s11
   14c2a:	f7fefc93          	andi	s9,t4,-129
   14c2e:	6c071063          	bnez	a4,152ee <_vfprintf_r+0xa6c>
   14c32:	520a9763          	bnez	s5,15160 <_vfprintf_r+0x8de>
   14c36:	180790e3          	bnez	a5,155b6 <_vfprintf_r+0xd34>
   14c3a:	001efb13          	andi	s6,t4,1
   14c3e:	19010d13          	addi	s10,sp,400
   14c42:	f80b0ae3          	beqz	s6,14bd6 <_vfprintf_r+0x354>
   14c46:	03000793          	li	a5,48
   14c4a:	18f107a3          	sb	a5,399(sp)
   14c4e:	18f10d13          	addi	s10,sp,399
   14c52:	b751                	j	14bd6 <_vfprintf_r+0x354>
   14c54:	41a90ab3          	sub	s5,s2,s10
   14c58:	d1a91ee3          	bne	s2,s10,14974 <_vfprintf_r+0xf2>
   14c5c:	00094703          	lbu	a4,0(s2)
   14c60:	bb2d                	j	1499a <_vfprintf_r+0x118>
   14c62:	4522                	lw	a0,8(sp)
   14c64:	01d0                	addi	a2,sp,196
   14c66:	85a6                	mv	a1,s1
   14c68:	065010ef          	jal	164cc <__sprint_r>
   14c6c:	e60519e3          	bnez	a0,14ade <_vfprintf_r+0x25c>
   14c70:	844e                	mv	s0,s3
   14c72:	bb39                	j	14990 <_vfprintf_r+0x10e>
   14c74:	008cf713          	andi	a4,s9,8
   14c78:	1c0716e3          	bnez	a4,15644 <_vfprintf_r+0xdc2>
   14c7c:	47d2                	lw	a5,20(sp)
   14c7e:	0908                	addi	a0,sp,144
   14c80:	c846                	sw	a7,16(sp)
   14c82:	00778c13          	addi	s8,a5,7
   14c86:	ff8c7c13          	andi	s8,s8,-8
   14c8a:	000c2583          	lw	a1,0(s8)
   14c8e:	004c2603          	lw	a2,4(s8)
   14c92:	008c0793          	addi	a5,s8,8
   14c96:	ca3e                	sw	a5,20(sp)
   14c98:	5fa080ef          	jal	1d292 <__extenddftf2>
   14c9c:	45ca                	lw	a1,144(sp)
   14c9e:	465a                	lw	a2,148(sp)
   14ca0:	46ea                	lw	a3,152(sp)
   14ca2:	477a                	lw	a4,156(sp)
   14ca4:	48c2                	lw	a7,16(sp)
   14ca6:	0988                	addi	a0,sp,208
   14ca8:	c846                	sw	a7,16(sp)
   14caa:	cfba                	sw	a4,220(sp)
   14cac:	c9ae                	sw	a1,208(sp)
   14cae:	cbb2                	sw	a2,212(sp)
   14cb0:	cdb6                	sw	a3,216(sp)
   14cb2:	7d2020ef          	jal	17484 <_ldcheck>
   14cb6:	d72a                	sw	a0,172(sp)
   14cb8:	4709                	li	a4,2
   14cba:	48c2                	lw	a7,16(sp)
   14cbc:	5ce50be3          	beq	a0,a4,15a92 <_vfprintf_r+0x1210>
   14cc0:	4705                	li	a4,1
   14cc2:	6ae505e3          	beq	a0,a4,15b6c <_vfprintf_r+0x12ea>
   14cc6:	06100713          	li	a4,97
   14cca:	2ae88ce3          	beq	a7,a4,15782 <_vfprintf_r+0xf00>
   14cce:	04100713          	li	a4,65
   14cd2:	05800793          	li	a5,88
   14cd6:	2ae888e3          	beq	a7,a4,15786 <_vfprintf_r+0xf04>
   14cda:	577d                	li	a4,-1
   14cdc:	00ea9463          	bne	s5,a4,14ce4 <_vfprintf_r+0x462>
   14ce0:	6260106f          	j	16306 <_vfprintf_r+0x1a84>
   14ce4:	fdf8f713          	andi	a4,a7,-33
   14ce8:	04700693          	li	a3,71
   14cec:	c802                	sw	zero,16(sp)
   14cee:	00d71563          	bne	a4,a3,14cf8 <_vfprintf_r+0x476>
   14cf2:	000a9363          	bnez	s5,14cf8 <_vfprintf_r+0x476>
   14cf6:	4a85                	li	s5,1
   14cf8:	4c7e                	lw	s8,220(sp)
   14cfa:	100ce793          	ori	a5,s9,256
   14cfe:	c6be                	sw	a5,76(sp)
   14d00:	dc02                	sw	zero,56(sp)
   14d02:	4fce                	lw	t6,208(sp)
   14d04:	4f5e                	lw	t5,212(sp)
   14d06:	4eee                	lw	t4,216(sp)
   14d08:	000c5963          	bgez	s8,14d1a <_vfprintf_r+0x498>
   14d0c:	80000737          	lui	a4,0x80000
   14d10:	02d00793          	li	a5,45
   14d14:	01874c33          	xor	s8,a4,s8
   14d18:	dc3e                	sw	a5,56(sp)
   14d1a:	fbf88713          	addi	a4,a7,-65
   14d1e:	02500693          	li	a3,37
   14d22:	28e6eee3          	bltu	a3,a4,157be <_vfprintf_r+0xf3c>
   14d26:	66f5                	lui	a3,0x1d
   14d28:	070a                	slli	a4,a4,0x2
   14d2a:	77068693          	addi	a3,a3,1904 # 1d770 <__clzsi2+0x352>
   14d2e:	9736                	add	a4,a4,a3
   14d30:	4318                	lw	a4,0(a4)
   14d32:	8702                	jr	a4
   14d34:	4522                	lw	a0,8(sp)
   14d36:	01d0                	addi	a2,sp,196
   14d38:	85a6                	mv	a1,s1
   14d3a:	c8c6                	sw	a7,80(sp)
   14d3c:	c6fe                	sw	t6,76(sp)
   14d3e:	dc16                	sw	t0,56(sp)
   14d40:	78c010ef          	jal	164cc <__sprint_r>
   14d44:	58051d63          	bnez	a0,152de <_vfprintf_r+0xa5c>
   14d48:	463e                	lw	a2,204(sp)
   14d4a:	48c6                	lw	a7,80(sp)
   14d4c:	4fb6                	lw	t6,76(sp)
   14d4e:	52e2                	lw	t0,56(sp)
   14d50:	844e                	mv	s0,s3
   14d52:	b9e5                	j	14a4a <_vfprintf_r+0x1c8>
   14d54:	4aae                	lw	s5,200(sp)
   14d56:	5782                	lw	a5,32(sp)
   14d58:	4705                	li	a4,1
   14d5a:	01a42023          	sw	s10,0(s0)
   14d5e:	00160c13          	addi	s8,a2,1
   14d62:	0a85                	addi	s5,s5,1
   14d64:	00840b13          	addi	s6,s0,8
   14d68:	7af75763          	bge	a4,a5,15516 <_vfprintf_r+0xc94>
   14d6c:	4705                	li	a4,1
   14d6e:	c058                	sw	a4,4(s0)
   14d70:	c7e2                	sw	s8,204(sp)
   14d72:	c5d6                	sw	s5,200(sp)
   14d74:	471d                	li	a4,7
   14d76:	395741e3          	blt	a4,s5,158f8 <_vfprintf_r+0x1076>
   14d7a:	57b2                	lw	a5,44(sp)
   14d7c:	5742                	lw	a4,48(sp)
   14d7e:	0a85                	addi	s5,s5,1
   14d80:	9c3e                	add	s8,s8,a5
   14d82:	00eb2023          	sw	a4,0(s6)
   14d86:	00fb2223          	sw	a5,4(s6)
   14d8a:	c7e2                	sw	s8,204(sp)
   14d8c:	c5d6                	sw	s5,200(sp)
   14d8e:	471d                	li	a4,7
   14d90:	0b21                	addi	s6,s6,8
   14d92:	37574fe3          	blt	a4,s5,15910 <_vfprintf_r+0x108e>
   14d96:	474e                	lw	a4,208(sp)
   14d98:	5782                	lw	a5,32(sp)
   14d9a:	010c                	addi	a1,sp,128
   14d9c:	c93a                	sw	a4,144(sp)
   14d9e:	475e                	lw	a4,212(sp)
   14da0:	0908                	addi	a0,sp,144
   14da2:	c102                	sw	zero,128(sp)
   14da4:	cb3a                	sw	a4,148(sp)
   14da6:	476e                	lw	a4,216(sp)
   14da8:	c302                	sw	zero,132(sp)
   14daa:	c502                	sw	zero,136(sp)
   14dac:	cd3a                	sw	a4,152(sp)
   14dae:	477e                	lw	a4,220(sp)
   14db0:	c702                	sw	zero,140(sp)
   14db2:	fff78413          	addi	s0,a5,-1
   14db6:	cf3a                	sw	a4,156(sp)
   14db8:	1f6060ef          	jal	1afae <__eqtf2>
   14dbc:	78050263          	beqz	a0,15540 <_vfprintf_r+0xcbe>
   14dc0:	001d0793          	addi	a5,s10,1
   14dc4:	0a85                	addi	s5,s5,1
   14dc6:	9c22                	add	s8,s8,s0
   14dc8:	00fb2023          	sw	a5,0(s6)
   14dcc:	008b2223          	sw	s0,4(s6)
   14dd0:	c7e2                	sw	s8,204(sp)
   14dd2:	c5d6                	sw	s5,200(sp)
   14dd4:	479d                	li	a5,7
   14dd6:	0b21                	addi	s6,s6,8
   14dd8:	7557c963          	blt	a5,s5,1552a <_vfprintf_r+0xca8>
   14ddc:	4686                	lw	a3,64(sp)
   14dde:	1958                	addi	a4,sp,180
   14de0:	001a8793          	addi	a5,s5,1
   14de4:	01868633          	add	a2,a3,s8
   14de8:	00eb2023          	sw	a4,0(s6)
   14dec:	00db2223          	sw	a3,4(s6)
   14df0:	c7b2                	sw	a2,204(sp)
   14df2:	c5be                	sw	a5,200(sp)
   14df4:	471d                	li	a4,7
   14df6:	008b0413          	addi	s0,s6,8
   14dfa:	caf750e3          	bge	a4,a5,14a9a <_vfprintf_r+0x218>
   14dfe:	4522                	lw	a0,8(sp)
   14e00:	01d0                	addi	a2,sp,196
   14e02:	85a6                	mv	a1,s1
   14e04:	6c8010ef          	jal	164cc <__sprint_r>
   14e08:	4c051b63          	bnez	a0,152de <_vfprintf_r+0xa5c>
   14e0c:	463e                	lw	a2,204(sp)
   14e0e:	844e                	mv	s0,s3
   14e10:	b169                	j	14a9a <_vfprintf_r+0x218>
   14e12:	4752                	lw	a4,20(sp)
   14e14:	010cf793          	andi	a5,s9,16
   14e18:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe157c>
   14e1c:	0711                	addi	a4,a4,4
   14e1e:	ca3a                	sw	a4,20(sp)
   14e20:	7c079e63          	bnez	a5,155fc <_vfprintf_r+0xd7a>
   14e24:	040cf793          	andi	a5,s9,64
   14e28:	7c078663          	beqz	a5,155f4 <_vfprintf_r+0xd72>
   14e2c:	0b42                	slli	s6,s6,0x10
   14e2e:	410b5b13          	srai	s6,s6,0x10
   14e32:	41fb5d93          	srai	s11,s6,0x1f
   14e36:	87ee                	mv	a5,s11
   14e38:	d807d0e3          	bgez	a5,14bb8 <_vfprintf_r+0x336>
   14e3c:	02d00713          	li	a4,45
   14e40:	016037b3          	snez	a5,s6
   14e44:	41b00db3          	neg	s11,s11
   14e48:	0ae103a3          	sb	a4,167(sp)
   14e4c:	40fd8db3          	sub	s11,s11,a5
   14e50:	41600b33          	neg	s6,s6
   14e54:	8ee6                	mv	t4,s9
   14e56:	4785                	li	a5,1
   14e58:	dc0ad7e3          	bgez	s5,14c26 <_vfprintf_r+0x3a4>
   14e5c:	4705                	li	a4,1
   14e5e:	0ee78363          	beq	a5,a4,14f44 <_vfprintf_r+0x6c2>
   14e62:	4709                	li	a4,2
   14e64:	30e78763          	beq	a5,a4,15172 <_vfprintf_r+0x8f0>
   14e68:	19010d13          	addi	s10,sp,400
   14e6c:	01dd9793          	slli	a5,s11,0x1d
   14e70:	007b7713          	andi	a4,s6,7
   14e74:	003b5b13          	srli	s6,s6,0x3
   14e78:	03070713          	addi	a4,a4,48
   14e7c:	0167eb33          	or	s6,a5,s6
   14e80:	003ddd93          	srli	s11,s11,0x3
   14e84:	feed0fa3          	sb	a4,-1(s10)
   14e88:	01bb67b3          	or	a5,s6,s11
   14e8c:	866a                	mv	a2,s10
   14e8e:	1d7d                	addi	s10,s10,-1
   14e90:	fff1                	bnez	a5,14e6c <_vfprintf_r+0x5ea>
   14e92:	001ef693          	andi	a3,t4,1
   14e96:	30068463          	beqz	a3,1519e <_vfprintf_r+0x91c>
   14e9a:	03000693          	li	a3,48
   14e9e:	30d70063          	beq	a4,a3,1519e <_vfprintf_r+0x91c>
   14ea2:	1679                	addi	a2,a2,-2
   14ea4:	0b1c                	addi	a5,sp,400
   14ea6:	fedd0fa3          	sb	a3,-1(s10)
   14eaa:	40c78b33          	sub	s6,a5,a2
   14eae:	8cf6                	mv	s9,t4
   14eb0:	8d32                	mv	s10,a2
   14eb2:	b315                	j	14bd6 <_vfprintf_r+0x354>
   14eb4:	4752                	lw	a4,20(sp)
   14eb6:	010cf793          	andi	a5,s9,16
   14eba:	00072b03          	lw	s6,0(a4)
   14ebe:	0711                	addi	a4,a4,4
   14ec0:	ca3a                	sw	a4,20(sp)
   14ec2:	72079663          	bnez	a5,155ee <_vfprintf_r+0xd6c>
   14ec6:	040cf793          	andi	a5,s9,64
   14eca:	70078e63          	beqz	a5,155e6 <_vfprintf_r+0xd64>
   14ece:	0b42                	slli	s6,s6,0x10
   14ed0:	010b5b13          	srli	s6,s6,0x10
   14ed4:	4d81                	li	s11,0
   14ed6:	b381                	j	14c16 <_vfprintf_r+0x394>
   14ed8:	4752                	lw	a4,20(sp)
   14eda:	0a0103a3          	sb	zero,167(sp)
   14ede:	4d85                	li	s11,1
   14ee0:	431c                	lw	a5,0(a4)
   14ee2:	0711                	addi	a4,a4,4
   14ee4:	ca3a                	sw	a4,20(sp)
   14ee6:	12f10623          	sb	a5,300(sp)
   14eea:	4b05                	li	s6,1
   14eec:	12c10d13          	addi	s10,sp,300
   14ef0:	be09                	j	14a02 <_vfprintf_r+0x180>
   14ef2:	47d2                	lw	a5,20(sp)
   14ef4:	0a0103a3          	sb	zero,167(sp)
   14ef8:	0007ad03          	lw	s10,0(a5)
   14efc:	00478c13          	addi	s8,a5,4
   14f00:	7e0d0a63          	beqz	s10,156f4 <_vfprintf_r+0xe72>
   14f04:	420ac4e3          	bltz	s5,15b2c <_vfprintf_r+0x12aa>
   14f08:	8656                	mv	a2,s5
   14f0a:	4581                	li	a1,0
   14f0c:	856a                	mv	a0,s10
   14f0e:	ca46                	sw	a7,20(sp)
   14f10:	67f010ef          	jal	16d8e <memchr>
   14f14:	c82a                	sw	a0,16(sp)
   14f16:	48d2                	lw	a7,20(sp)
   14f18:	e119                	bnez	a0,14f1e <_vfprintf_r+0x69c>
   14f1a:	25c0106f          	j	16176 <_vfprintf_r+0x18f4>
   14f1e:	47c2                	lw	a5,16(sp)
   14f20:	0a714703          	lbu	a4,167(sp)
   14f24:	ca62                	sw	s8,20(sp)
   14f26:	41a78b33          	sub	s6,a5,s10
   14f2a:	fffb4693          	not	a3,s6
   14f2e:	86fd                	srai	a3,a3,0x1f
   14f30:	c802                	sw	zero,16(sp)
   14f32:	d402                	sw	zero,40(sp)
   14f34:	d202                	sw	zero,36(sp)
   14f36:	ce02                	sw	zero,28(sp)
   14f38:	00db7db3          	and	s11,s6,a3
   14f3c:	4a81                	li	s5,0
   14f3e:	ca0718e3          	bnez	a4,14bee <_vfprintf_r+0x36c>
   14f42:	b4e9                	j	14a0c <_vfprintf_r+0x18a>
   14f44:	1e0d98e3          	bnez	s11,15934 <_vfprintf_r+0x10b2>
   14f48:	47a5                	li	a5,9
   14f4a:	1f67e5e3          	bltu	a5,s6,15934 <_vfprintf_r+0x10b2>
   14f4e:	030b0b13          	addi	s6,s6,48
   14f52:	196107a3          	sb	s6,399(sp)
   14f56:	8cf6                	mv	s9,t4
   14f58:	4b05                	li	s6,1
   14f5a:	18f10d13          	addi	s10,sp,399
   14f5e:	b9a5                	j	14bd6 <_vfprintf_r+0x354>
   14f60:	47d2                	lw	a5,20(sp)
   14f62:	0007ab83          	lw	s7,0(a5)
   14f66:	0791                	addi	a5,a5,4
   14f68:	660bd163          	bgez	s7,155ca <_vfprintf_r+0xd48>
   14f6c:	41700bb3          	neg	s7,s7
   14f70:	ca3e                	sw	a5,20(sp)
   14f72:	00094883          	lbu	a7,0(s2)
   14f76:	004cec93          	ori	s9,s9,4
   14f7a:	bc25                	j	149b2 <_vfprintf_r+0x130>
   14f7c:	02b00793          	li	a5,43
   14f80:	00094883          	lbu	a7,0(s2)
   14f84:	0af103a3          	sb	a5,167(sp)
   14f88:	b42d                	j	149b2 <_vfprintf_r+0x130>
   14f8a:	00094883          	lbu	a7,0(s2)
   14f8e:	080cec93          	ori	s9,s9,128
   14f92:	b405                	j	149b2 <_vfprintf_r+0x130>
   14f94:	00094883          	lbu	a7,0(s2)
   14f98:	02a00793          	li	a5,42
   14f9c:	00190693          	addi	a3,s2,1
   14fa0:	00f89463          	bne	a7,a5,14fa8 <_vfprintf_r+0x726>
   14fa4:	44c0106f          	j	163f0 <_vfprintf_r+0x1b6e>
   14fa8:	fd088793          	addi	a5,a7,-48
   14fac:	4725                	li	a4,9
   14fae:	4a81                	li	s5,0
   14fb0:	4625                	li	a2,9
   14fb2:	02f76063          	bltu	a4,a5,14fd2 <_vfprintf_r+0x750>
   14fb6:	0006c883          	lbu	a7,0(a3)
   14fba:	002a9713          	slli	a4,s5,0x2
   14fbe:	9aba                	add	s5,s5,a4
   14fc0:	0a86                	slli	s5,s5,0x1
   14fc2:	9abe                	add	s5,s5,a5
   14fc4:	fd088793          	addi	a5,a7,-48
   14fc8:	0685                	addi	a3,a3,1
   14fca:	fef676e3          	bgeu	a2,a5,14fb6 <_vfprintf_r+0x734>
   14fce:	680ac963          	bltz	s5,15660 <_vfprintf_r+0xdde>
   14fd2:	8936                	mv	s2,a3
   14fd4:	b2c5                	j	149b4 <_vfprintf_r+0x132>
   14fd6:	00094883          	lbu	a7,0(s2)
   14fda:	001cec93          	ori	s9,s9,1
   14fde:	bad1                	j	149b2 <_vfprintf_r+0x130>
   14fe0:	0a714783          	lbu	a5,167(sp)
   14fe4:	00094883          	lbu	a7,0(s2)
   14fe8:	9c0795e3          	bnez	a5,149b2 <_vfprintf_r+0x130>
   14fec:	02000793          	li	a5,32
   14ff0:	0af103a3          	sb	a5,167(sp)
   14ff4:	ba7d                	j	149b2 <_vfprintf_r+0x130>
   14ff6:	010cee93          	ori	t4,s9,16
   14ffa:	020ef793          	andi	a5,t4,32
   14ffe:	58078a63          	beqz	a5,15592 <_vfprintf_r+0xd10>
   15002:	47d2                	lw	a5,20(sp)
   15004:	00778c13          	addi	s8,a5,7
   15008:	ff8c7c13          	andi	s8,s8,-8
   1500c:	008c0793          	addi	a5,s8,8
   15010:	ca3e                	sw	a5,20(sp)
   15012:	000c2b03          	lw	s6,0(s8)
   15016:	004c2d83          	lw	s11,4(s8)
   1501a:	4785                	li	a5,1
   1501c:	b101                	j	14c1c <_vfprintf_r+0x39a>
   1501e:	00094883          	lbu	a7,0(s2)
   15022:	008cec93          	ori	s9,s9,8
   15026:	b271                	j	149b2 <_vfprintf_r+0x130>
   15028:	4752                	lw	a4,20(sp)
   1502a:	67a1                	lui	a5,0x8
   1502c:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   15030:	0af11423          	sh	a5,168(sp)
   15034:	00470793          	addi	a5,a4,4
   15038:	ca3e                	sw	a5,20(sp)
   1503a:	67f5                	lui	a5,0x1d
   1503c:	4ac78793          	addi	a5,a5,1196 # 1d4ac <__clzsi2+0x8e>
   15040:	da3e                	sw	a5,52(sp)
   15042:	00072b03          	lw	s6,0(a4)
   15046:	4d81                	li	s11,0
   15048:	002cee93          	ori	t4,s9,2
   1504c:	4789                	li	a5,2
   1504e:	07800893          	li	a7,120
   15052:	b6e9                	j	14c1c <_vfprintf_r+0x39a>
   15054:	020cf793          	andi	a5,s9,32
   15058:	5c078463          	beqz	a5,15620 <_vfprintf_r+0xd9e>
   1505c:	47d2                	lw	a5,20(sp)
   1505e:	46b2                	lw	a3,12(sp)
   15060:	439c                	lw	a5,0(a5)
   15062:	41f6d713          	srai	a4,a3,0x1f
   15066:	c394                	sw	a3,0(a5)
   15068:	c3d8                	sw	a4,4(a5)
   1506a:	47d2                	lw	a5,20(sp)
   1506c:	8d4a                	mv	s10,s2
   1506e:	0791                	addi	a5,a5,4
   15070:	ca3e                	sw	a5,20(sp)
   15072:	bcb1                	j	14ace <_vfprintf_r+0x24c>
   15074:	00094883          	lbu	a7,0(s2)
   15078:	06c00793          	li	a5,108
   1507c:	64f88b63          	beq	a7,a5,156d2 <_vfprintf_r+0xe50>
   15080:	010cec93          	ori	s9,s9,16
   15084:	b23d                	j	149b2 <_vfprintf_r+0x130>
   15086:	00094883          	lbu	a7,0(s2)
   1508a:	06800793          	li	a5,104
   1508e:	62f88b63          	beq	a7,a5,156c4 <_vfprintf_r+0xe42>
   15092:	040cec93          	ori	s9,s9,64
   15096:	ba31                	j	149b2 <_vfprintf_r+0x130>
   15098:	06500713          	li	a4,101
   1509c:	cb175ce3          	bge	a4,a7,14d54 <_vfprintf_r+0x4d2>
   150a0:	474e                	lw	a4,208(sp)
   150a2:	010c                	addi	a1,sp,128
   150a4:	0908                	addi	a0,sp,144
   150a6:	c93a                	sw	a4,144(sp)
   150a8:	475e                	lw	a4,212(sp)
   150aa:	dc32                	sw	a2,56(sp)
   150ac:	c102                	sw	zero,128(sp)
   150ae:	cb3a                	sw	a4,148(sp)
   150b0:	476e                	lw	a4,216(sp)
   150b2:	c302                	sw	zero,132(sp)
   150b4:	c502                	sw	zero,136(sp)
   150b6:	cd3a                	sw	a4,152(sp)
   150b8:	477e                	lw	a4,220(sp)
   150ba:	c702                	sw	zero,140(sp)
   150bc:	cf3a                	sw	a4,156(sp)
   150be:	6f1050ef          	jal	1afae <__eqtf2>
   150c2:	5662                	lw	a2,56(sp)
   150c4:	36051363          	bnez	a0,1542a <_vfprintf_r+0xba8>
   150c8:	47ae                	lw	a5,200(sp)
   150ca:	6775                	lui	a4,0x1d
   150cc:	4dc70713          	addi	a4,a4,1244 # 1d4dc <__clzsi2+0xbe>
   150d0:	c018                	sw	a4,0(s0)
   150d2:	0605                	addi	a2,a2,1
   150d4:	4705                	li	a4,1
   150d6:	0785                	addi	a5,a5,1
   150d8:	c058                	sw	a4,4(s0)
   150da:	c7b2                	sw	a2,204(sp)
   150dc:	c5be                	sw	a5,200(sp)
   150de:	471d                	li	a4,7
   150e0:	0421                	addi	s0,s0,8
   150e2:	16f74de3          	blt	a4,a5,15a5c <_vfprintf_r+0x11da>
   150e6:	57ba                	lw	a5,172(sp)
   150e8:	5702                	lw	a4,32(sp)
   150ea:	4ce7db63          	bge	a5,a4,155c0 <_vfprintf_r+0xd3e>
   150ee:	57c2                	lw	a5,48(sp)
   150f0:	5732                	lw	a4,44(sp)
   150f2:	0421                	addi	s0,s0,8
   150f4:	fef42c23          	sw	a5,-8(s0)
   150f8:	47ae                	lw	a5,200(sp)
   150fa:	963a                	add	a2,a2,a4
   150fc:	fee42e23          	sw	a4,-4(s0)
   15100:	0785                	addi	a5,a5,1
   15102:	c7b2                	sw	a2,204(sp)
   15104:	c5be                	sw	a5,200(sp)
   15106:	471d                	li	a4,7
   15108:	5cf74c63          	blt	a4,a5,156e0 <_vfprintf_r+0xe5e>
   1510c:	5782                	lw	a5,32(sp)
   1510e:	fff78a93          	addi	s5,a5,-1
   15112:	995054e3          	blez	s5,14a9a <_vfprintf_r+0x218>
   15116:	6879                	lui	a6,0x1e
   15118:	80880813          	addi	a6,a6,-2040 # 1d808 <zeroes.0>
   1511c:	4741                	li	a4,16
   1511e:	47ae                	lw	a5,200(sp)
   15120:	4b41                	li	s6,16
   15122:	4c1d                	li	s8,7
   15124:	8d42                	mv	s10,a6
   15126:	01574763          	blt	a4,s5,15134 <_vfprintf_r+0x8b2>
   1512a:	14b0006f          	j	15a74 <_vfprintf_r+0x11f2>
   1512e:	1ac1                	addi	s5,s5,-16
   15130:	155b51e3          	bge	s6,s5,15a72 <_vfprintf_r+0x11f0>
   15134:	0641                	addi	a2,a2,16
   15136:	0785                	addi	a5,a5,1
   15138:	01a42023          	sw	s10,0(s0)
   1513c:	01642223          	sw	s6,4(s0)
   15140:	c7b2                	sw	a2,204(sp)
   15142:	c5be                	sw	a5,200(sp)
   15144:	0421                	addi	s0,s0,8
   15146:	fefc54e3          	bge	s8,a5,1512e <_vfprintf_r+0x8ac>
   1514a:	4522                	lw	a0,8(sp)
   1514c:	01d0                	addi	a2,sp,196
   1514e:	85a6                	mv	a1,s1
   15150:	37c010ef          	jal	164cc <__sprint_r>
   15154:	18051563          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15158:	463e                	lw	a2,204(sp)
   1515a:	47ae                	lw	a5,200(sp)
   1515c:	844e                	mv	s0,s3
   1515e:	bfc1                	j	1512e <_vfprintf_r+0x8ac>
   15160:	4705                	li	a4,1
   15162:	00e79463          	bne	a5,a4,1516a <_vfprintf_r+0x8e8>
   15166:	0f20106f          	j	16258 <_vfprintf_r+0x19d6>
   1516a:	4709                	li	a4,2
   1516c:	8ee6                	mv	t4,s9
   1516e:	cee79de3          	bne	a5,a4,14e68 <_vfprintf_r+0x5e6>
   15172:	56d2                	lw	a3,52(sp)
   15174:	19010d13          	addi	s10,sp,400
   15178:	00fb7793          	andi	a5,s6,15
   1517c:	97b6                	add	a5,a5,a3
   1517e:	0007c703          	lbu	a4,0(a5)
   15182:	004b5b13          	srli	s6,s6,0x4
   15186:	01cd9793          	slli	a5,s11,0x1c
   1518a:	0167eb33          	or	s6,a5,s6
   1518e:	004ddd93          	srli	s11,s11,0x4
   15192:	feed0fa3          	sb	a4,-1(s10)
   15196:	01bb67b3          	or	a5,s6,s11
   1519a:	1d7d                	addi	s10,s10,-1
   1519c:	fff1                	bnez	a5,15178 <_vfprintf_r+0x8f6>
   1519e:	0b1c                	addi	a5,sp,400
   151a0:	41a78b33          	sub	s6,a5,s10
   151a4:	8cf6                	mv	s9,t4
   151a6:	bc05                	j	14bd6 <_vfprintf_r+0x354>
   151a8:	41bb8c33          	sub	s8,s7,s11
   151ac:	8d8052e3          	blez	s8,14a70 <_vfprintf_r+0x1ee>
   151b0:	6879                	lui	a6,0x1e
   151b2:	4541                	li	a0,16
   151b4:	45ae                	lw	a1,200(sp)
   151b6:	80880813          	addi	a6,a6,-2040 # 1d808 <zeroes.0>
   151ba:	05855f63          	bge	a0,s8,15218 <_vfprintf_r+0x996>
   151be:	dc4a                	sw	s2,56(sp)
   151c0:	87a2                	mv	a5,s0
   151c2:	4ec1                	li	t4,16
   151c4:	8462                	mv	s0,s8
   151c6:	4f9d                	li	t6,7
   151c8:	8c5a                	mv	s8,s6
   151ca:	8942                	mv	s2,a6
   151cc:	8b56                	mv	s6,s5
   151ce:	8ac6                	mv	s5,a7
   151d0:	a021                	j	151d8 <_vfprintf_r+0x956>
   151d2:	1441                	addi	s0,s0,-16
   151d4:	028edb63          	bge	t4,s0,1520a <_vfprintf_r+0x988>
   151d8:	0641                	addi	a2,a2,16
   151da:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   151dc:	0127a023          	sw	s2,0(a5)
   151e0:	01d7a223          	sw	t4,4(a5)
   151e4:	c7b2                	sw	a2,204(sp)
   151e6:	c5ae                	sw	a1,200(sp)
   151e8:	07a1                	addi	a5,a5,8
   151ea:	febfd4e3          	bge	t6,a1,151d2 <_vfprintf_r+0x950>
   151ee:	4522                	lw	a0,8(sp)
   151f0:	01d0                	addi	a2,sp,196
   151f2:	85a6                	mv	a1,s1
   151f4:	2d8010ef          	jal	164cc <__sprint_r>
   151f8:	e17d                	bnez	a0,152de <_vfprintf_r+0xa5c>
   151fa:	4ec1                	li	t4,16
   151fc:	1441                	addi	s0,s0,-16
   151fe:	463e                	lw	a2,204(sp)
   15200:	45ae                	lw	a1,200(sp)
   15202:	87ce                	mv	a5,s3
   15204:	4f9d                	li	t6,7
   15206:	fc8ec9e3          	blt	t4,s0,151d8 <_vfprintf_r+0x956>
   1520a:	884a                	mv	a6,s2
   1520c:	5962                	lw	s2,56(sp)
   1520e:	88d6                	mv	a7,s5
   15210:	8ada                	mv	s5,s6
   15212:	8b62                	mv	s6,s8
   15214:	8c22                	mv	s8,s0
   15216:	843e                	mv	s0,a5
   15218:	9662                	add	a2,a2,s8
   1521a:	0585                	addi	a1,a1,1
   1521c:	01042023          	sw	a6,0(s0)
   15220:	01842223          	sw	s8,4(s0)
   15224:	c7b2                	sw	a2,204(sp)
   15226:	c5ae                	sw	a1,200(sp)
   15228:	471d                	li	a4,7
   1522a:	0421                	addi	s0,s0,8
   1522c:	84b752e3          	bge	a4,a1,14a70 <_vfprintf_r+0x1ee>
   15230:	4522                	lw	a0,8(sp)
   15232:	01d0                	addi	a2,sp,196
   15234:	85a6                	mv	a1,s1
   15236:	dc46                	sw	a7,56(sp)
   15238:	294010ef          	jal	164cc <__sprint_r>
   1523c:	e14d                	bnez	a0,152de <_vfprintf_r+0xa5c>
   1523e:	463e                	lw	a2,204(sp)
   15240:	58e2                	lw	a7,56(sp)
   15242:	844e                	mv	s0,s3
   15244:	82dff06f          	j	14a70 <_vfprintf_r+0x1ee>
   15248:	6879                	lui	a6,0x1e
   1524a:	4741                	li	a4,16
   1524c:	45ae                	lw	a1,200(sp)
   1524e:	80880813          	addi	a6,a6,-2040 # 1d808 <zeroes.0>
   15252:	05575763          	bge	a4,s5,152a0 <_vfprintf_r+0xa1e>
   15256:	87a2                	mv	a5,s0
   15258:	4741                	li	a4,16
   1525a:	8456                	mv	s0,s5
   1525c:	4c1d                	li	s8,7
   1525e:	dc46                	sw	a7,56(sp)
   15260:	8ad2                	mv	s5,s4
   15262:	a021                	j	1526a <_vfprintf_r+0x9e8>
   15264:	1441                	addi	s0,s0,-16
   15266:	02875963          	bge	a4,s0,15298 <_vfprintf_r+0xa16>
   1526a:	0641                	addi	a2,a2,16
   1526c:	0585                	addi	a1,a1,1
   1526e:	0147a023          	sw	s4,0(a5)
   15272:	c3d8                	sw	a4,4(a5)
   15274:	c7b2                	sw	a2,204(sp)
   15276:	c5ae                	sw	a1,200(sp)
   15278:	07a1                	addi	a5,a5,8
   1527a:	febc55e3          	bge	s8,a1,15264 <_vfprintf_r+0x9e2>
   1527e:	4522                	lw	a0,8(sp)
   15280:	01d0                	addi	a2,sp,196
   15282:	85a6                	mv	a1,s1
   15284:	248010ef          	jal	164cc <__sprint_r>
   15288:	e939                	bnez	a0,152de <_vfprintf_r+0xa5c>
   1528a:	4741                	li	a4,16
   1528c:	1441                	addi	s0,s0,-16
   1528e:	463e                	lw	a2,204(sp)
   15290:	45ae                	lw	a1,200(sp)
   15292:	87ce                	mv	a5,s3
   15294:	fc874be3          	blt	a4,s0,1526a <_vfprintf_r+0x9e8>
   15298:	58e2                	lw	a7,56(sp)
   1529a:	8856                	mv	a6,s5
   1529c:	8aa2                	mv	s5,s0
   1529e:	843e                	mv	s0,a5
   152a0:	9656                	add	a2,a2,s5
   152a2:	0585                	addi	a1,a1,1
   152a4:	01042023          	sw	a6,0(s0)
   152a8:	01542223          	sw	s5,4(s0)
   152ac:	c7b2                	sw	a2,204(sp)
   152ae:	c5ae                	sw	a1,200(sp)
   152b0:	471d                	li	a4,7
   152b2:	0421                	addi	s0,s0,8
   152b4:	fcb75263          	bge	a4,a1,14a78 <_vfprintf_r+0x1f6>
   152b8:	4522                	lw	a0,8(sp)
   152ba:	01d0                	addi	a2,sp,196
   152bc:	85a6                	mv	a1,s1
   152be:	dc46                	sw	a7,56(sp)
   152c0:	20c010ef          	jal	164cc <__sprint_r>
   152c4:	ed09                	bnez	a0,152de <_vfprintf_r+0xa5c>
   152c6:	463e                	lw	a2,204(sp)
   152c8:	58e2                	lw	a7,56(sp)
   152ca:	844e                	mv	s0,s3
   152cc:	facff06f          	j	14a78 <_vfprintf_r+0x1f6>
   152d0:	4522                	lw	a0,8(sp)
   152d2:	01d0                	addi	a2,sp,196
   152d4:	85a6                	mv	a1,s1
   152d6:	1f6010ef          	jal	164cc <__sprint_r>
   152da:	fe050163          	beqz	a0,14abc <_vfprintf_r+0x23a>
   152de:	45c2                	lw	a1,16(sp)
   152e0:	fe058f63          	beqz	a1,14ade <_vfprintf_r+0x25c>
   152e4:	4522                	lw	a0,8(sp)
   152e6:	dd3fe0ef          	jal	140b8 <_free_r>
   152ea:	ff4ff06f          	j	14ade <_vfprintf_r+0x25c>
   152ee:	8ee6                	mv	t4,s9
   152f0:	b6b5                	j	14e5c <_vfprintf_r+0x5da>
   152f2:	6879                	lui	a6,0x1e
   152f4:	4541                	li	a0,16
   152f6:	45ae                	lw	a1,200(sp)
   152f8:	81880c13          	addi	s8,a6,-2024 # 1d818 <blanks.1>
   152fc:	06e55363          	bge	a0,a4,15362 <_vfprintf_r+0xae0>
   15300:	c8ca                	sw	s2,80(sp)
   15302:	87a2                	mv	a5,s0
   15304:	8962                	mv	s2,s8
   15306:	4ec1                	li	t4,16
   15308:	8c5a                	mv	s8,s6
   1530a:	439d                	li	t2,7
   1530c:	8b56                	mv	s6,s5
   1530e:	dc16                	sw	t0,56(sp)
   15310:	c6fe                	sw	t6,76(sp)
   15312:	843a                	mv	s0,a4
   15314:	8ac6                	mv	s5,a7
   15316:	a021                	j	1531e <_vfprintf_r+0xa9c>
   15318:	1441                	addi	s0,s0,-16
   1531a:	028edb63          	bge	t4,s0,15350 <_vfprintf_r+0xace>
   1531e:	0641                	addi	a2,a2,16
   15320:	0585                	addi	a1,a1,1
   15322:	0127a023          	sw	s2,0(a5)
   15326:	01d7a223          	sw	t4,4(a5)
   1532a:	c7b2                	sw	a2,204(sp)
   1532c:	c5ae                	sw	a1,200(sp)
   1532e:	07a1                	addi	a5,a5,8
   15330:	feb3d4e3          	bge	t2,a1,15318 <_vfprintf_r+0xa96>
   15334:	4522                	lw	a0,8(sp)
   15336:	01d0                	addi	a2,sp,196
   15338:	85a6                	mv	a1,s1
   1533a:	192010ef          	jal	164cc <__sprint_r>
   1533e:	f145                	bnez	a0,152de <_vfprintf_r+0xa5c>
   15340:	4ec1                	li	t4,16
   15342:	1441                	addi	s0,s0,-16
   15344:	463e                	lw	a2,204(sp)
   15346:	45ae                	lw	a1,200(sp)
   15348:	87ce                	mv	a5,s3
   1534a:	439d                	li	t2,7
   1534c:	fc8ec9e3          	blt	t4,s0,1531e <_vfprintf_r+0xa9c>
   15350:	88d6                	mv	a7,s5
   15352:	52e2                	lw	t0,56(sp)
   15354:	8ada                	mv	s5,s6
   15356:	4fb6                	lw	t6,76(sp)
   15358:	8b62                	mv	s6,s8
   1535a:	8c4a                	mv	s8,s2
   1535c:	4946                	lw	s2,80(sp)
   1535e:	8722                	mv	a4,s0
   15360:	843e                	mv	s0,a5
   15362:	963a                	add	a2,a2,a4
   15364:	0585                	addi	a1,a1,1
   15366:	c058                	sw	a4,4(s0)
   15368:	01842023          	sw	s8,0(s0)
   1536c:	c7b2                	sw	a2,204(sp)
   1536e:	c5ae                	sw	a1,200(sp)
   15370:	471d                	li	a4,7
   15372:	0421                	addi	s0,s0,8
   15374:	eab75a63          	bge	a4,a1,14a28 <_vfprintf_r+0x1a6>
   15378:	4522                	lw	a0,8(sp)
   1537a:	01d0                	addi	a2,sp,196
   1537c:	85a6                	mv	a1,s1
   1537e:	c8c6                	sw	a7,80(sp)
   15380:	c6fe                	sw	t6,76(sp)
   15382:	dc16                	sw	t0,56(sp)
   15384:	148010ef          	jal	164cc <__sprint_r>
   15388:	f939                	bnez	a0,152de <_vfprintf_r+0xa5c>
   1538a:	463e                	lw	a2,204(sp)
   1538c:	48c6                	lw	a7,80(sp)
   1538e:	4fb6                	lw	t6,76(sp)
   15390:	52e2                	lw	t0,56(sp)
   15392:	844e                	mv	s0,s3
   15394:	e94ff06f          	j	14a28 <_vfprintf_r+0x1a6>
   15398:	4522                	lw	a0,8(sp)
   1539a:	01d0                	addi	a2,sp,196
   1539c:	85a6                	mv	a1,s1
   1539e:	c6c6                	sw	a7,76(sp)
   153a0:	dc7e                	sw	t6,56(sp)
   153a2:	12a010ef          	jal	164cc <__sprint_r>
   153a6:	fd05                	bnez	a0,152de <_vfprintf_r+0xa5c>
   153a8:	463e                	lw	a2,204(sp)
   153aa:	48b6                	lw	a7,76(sp)
   153ac:	5fe2                	lw	t6,56(sp)
   153ae:	844e                	mv	s0,s3
   153b0:	eb8ff06f          	j	14a68 <_vfprintf_r+0x1e6>
   153b4:	6879                	lui	a6,0x1e
   153b6:	4741                	li	a4,16
   153b8:	47ae                	lw	a5,200(sp)
   153ba:	81880c13          	addi	s8,a6,-2024 # 1d818 <blanks.1>
   153be:	05575163          	bge	a4,s5,15400 <_vfprintf_r+0xb7e>
   153c2:	4d22                	lw	s10,8(sp)
   153c4:	4b41                	li	s6,16
   153c6:	4c9d                	li	s9,7
   153c8:	a021                	j	153d0 <_vfprintf_r+0xb4e>
   153ca:	1ac1                	addi	s5,s5,-16
   153cc:	035b5a63          	bge	s6,s5,15400 <_vfprintf_r+0xb7e>
   153d0:	0641                	addi	a2,a2,16
   153d2:	0785                	addi	a5,a5,1
   153d4:	01842023          	sw	s8,0(s0)
   153d8:	01642223          	sw	s6,4(s0)
   153dc:	c7b2                	sw	a2,204(sp)
   153de:	c5be                	sw	a5,200(sp)
   153e0:	0421                	addi	s0,s0,8
   153e2:	fefcd4e3          	bge	s9,a5,153ca <_vfprintf_r+0xb48>
   153e6:	01d0                	addi	a2,sp,196
   153e8:	85a6                	mv	a1,s1
   153ea:	856a                	mv	a0,s10
   153ec:	0e0010ef          	jal	164cc <__sprint_r>
   153f0:	ee0517e3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   153f4:	1ac1                	addi	s5,s5,-16
   153f6:	463e                	lw	a2,204(sp)
   153f8:	47ae                	lw	a5,200(sp)
   153fa:	844e                	mv	s0,s3
   153fc:	fd5b4ae3          	blt	s6,s5,153d0 <_vfprintf_r+0xb4e>
   15400:	9656                	add	a2,a2,s5
   15402:	0785                	addi	a5,a5,1
   15404:	01842023          	sw	s8,0(s0)
   15408:	01542223          	sw	s5,4(s0)
   1540c:	c7b2                	sw	a2,204(sp)
   1540e:	c5be                	sw	a5,200(sp)
   15410:	471d                	li	a4,7
   15412:	e8f75c63          	bge	a4,a5,14aaa <_vfprintf_r+0x228>
   15416:	4522                	lw	a0,8(sp)
   15418:	01d0                	addi	a2,sp,196
   1541a:	85a6                	mv	a1,s1
   1541c:	0b0010ef          	jal	164cc <__sprint_r>
   15420:	ea051fe3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15424:	463e                	lw	a2,204(sp)
   15426:	e84ff06f          	j	14aaa <_vfprintf_r+0x228>
   1542a:	553a                	lw	a0,172(sp)
   1542c:	5ca05e63          	blez	a0,15a08 <_vfprintf_r+0x1186>
   15430:	47f2                	lw	a5,28(sp)
   15432:	5702                	lw	a4,32(sp)
   15434:	8abe                	mv	s5,a5
   15436:	22f74163          	blt	a4,a5,15658 <_vfprintf_r+0xdd6>
   1543a:	01505f63          	blez	s5,15458 <_vfprintf_r+0xbd6>
   1543e:	472e                	lw	a4,200(sp)
   15440:	9656                	add	a2,a2,s5
   15442:	01a42023          	sw	s10,0(s0)
   15446:	0705                	addi	a4,a4,1
   15448:	01542223          	sw	s5,4(s0)
   1544c:	c7b2                	sw	a2,204(sp)
   1544e:	c5ba                	sw	a4,200(sp)
   15450:	459d                	li	a1,7
   15452:	0421                	addi	s0,s0,8
   15454:	14e5c5e3          	blt	a1,a4,15d9e <_vfprintf_r+0x151c>
   15458:	fffac713          	not	a4,s5
   1545c:	47f2                	lw	a5,28(sp)
   1545e:	877d                	srai	a4,a4,0x1f
   15460:	00eafab3          	and	s5,s5,a4
   15464:	41578ab3          	sub	s5,a5,s5
   15468:	2b504163          	bgtz	s5,1570a <_vfprintf_r+0xe88>
   1546c:	47f2                	lw	a5,28(sp)
   1546e:	400cf713          	andi	a4,s9,1024
   15472:	00fd0c33          	add	s8,s10,a5
   15476:	7a071e63          	bnez	a4,15c32 <_vfprintf_r+0x13b0>
   1547a:	5aba                	lw	s5,172(sp)
   1547c:	5782                	lw	a5,32(sp)
   1547e:	2cfaca63          	blt	s5,a5,15752 <_vfprintf_r+0xed0>
   15482:	001cf713          	andi	a4,s9,1
   15486:	2c071663          	bnez	a4,15752 <_vfprintf_r+0xed0>
   1548a:	5702                	lw	a4,32(sp)
   1548c:	00ed07b3          	add	a5,s10,a4
   15490:	41570ab3          	sub	s5,a4,s5
   15494:	41878b33          	sub	s6,a5,s8
   15498:	016ad363          	bge	s5,s6,1549e <_vfprintf_r+0xc1c>
   1549c:	8b56                	mv	s6,s5
   1549e:	01605f63          	blez	s6,154bc <_vfprintf_r+0xc3a>
   154a2:	47ae                	lw	a5,200(sp)
   154a4:	965a                	add	a2,a2,s6
   154a6:	01842023          	sw	s8,0(s0)
   154aa:	0785                	addi	a5,a5,1
   154ac:	01642223          	sw	s6,4(s0)
   154b0:	c7b2                	sw	a2,204(sp)
   154b2:	c5be                	sw	a5,200(sp)
   154b4:	471d                	li	a4,7
   154b6:	0421                	addi	s0,s0,8
   154b8:	4cf74de3          	blt	a4,a5,16192 <_vfprintf_r+0x1910>
   154bc:	fffb4793          	not	a5,s6
   154c0:	87fd                	srai	a5,a5,0x1f
   154c2:	00fb7b33          	and	s6,s6,a5
   154c6:	416a8ab3          	sub	s5,s5,s6
   154ca:	dd505863          	blez	s5,14a9a <_vfprintf_r+0x218>
   154ce:	6879                	lui	a6,0x1e
   154d0:	80880813          	addi	a6,a6,-2040 # 1d808 <zeroes.0>
   154d4:	4741                	li	a4,16
   154d6:	47ae                	lw	a5,200(sp)
   154d8:	4b41                	li	s6,16
   154da:	4c1d                	li	s8,7
   154dc:	8d42                	mv	s10,a6
   154de:	01574663          	blt	a4,s5,154ea <_vfprintf_r+0xc68>
   154e2:	ab49                	j	15a74 <_vfprintf_r+0x11f2>
   154e4:	1ac1                	addi	s5,s5,-16
   154e6:	595b5663          	bge	s6,s5,15a72 <_vfprintf_r+0x11f0>
   154ea:	0641                	addi	a2,a2,16
   154ec:	0785                	addi	a5,a5,1
   154ee:	01a42023          	sw	s10,0(s0)
   154f2:	01642223          	sw	s6,4(s0)
   154f6:	c7b2                	sw	a2,204(sp)
   154f8:	c5be                	sw	a5,200(sp)
   154fa:	0421                	addi	s0,s0,8
   154fc:	fefc54e3          	bge	s8,a5,154e4 <_vfprintf_r+0xc62>
   15500:	4522                	lw	a0,8(sp)
   15502:	01d0                	addi	a2,sp,196
   15504:	85a6                	mv	a1,s1
   15506:	7c7000ef          	jal	164cc <__sprint_r>
   1550a:	dc051ae3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   1550e:	463e                	lw	a2,204(sp)
   15510:	47ae                	lw	a5,200(sp)
   15512:	844e                	mv	s0,s3
   15514:	bfc1                	j	154e4 <_vfprintf_r+0xc62>
   15516:	001cf593          	andi	a1,s9,1
   1551a:	840599e3          	bnez	a1,14d6c <_vfprintf_r+0x4ea>
   1551e:	c058                	sw	a4,4(s0)
   15520:	c7e2                	sw	s8,204(sp)
   15522:	c5d6                	sw	s5,200(sp)
   15524:	479d                	li	a5,7
   15526:	8b57dbe3          	bge	a5,s5,14ddc <_vfprintf_r+0x55a>
   1552a:	4522                	lw	a0,8(sp)
   1552c:	01d0                	addi	a2,sp,196
   1552e:	85a6                	mv	a1,s1
   15530:	79d000ef          	jal	164cc <__sprint_r>
   15534:	da0515e3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15538:	4c3e                	lw	s8,204(sp)
   1553a:	4aae                	lw	s5,200(sp)
   1553c:	8b4e                	mv	s6,s3
   1553e:	b879                	j	14ddc <_vfprintf_r+0x55a>
   15540:	5702                	lw	a4,32(sp)
   15542:	4785                	li	a5,1
   15544:	88e7dce3          	bge	a5,a4,14ddc <_vfprintf_r+0x55a>
   15548:	6879                	lui	a6,0x1e
   1554a:	47c5                	li	a5,17
   1554c:	80880813          	addi	a6,a6,-2040 # 1d808 <zeroes.0>
   15550:	60e7d863          	bge	a5,a4,15b60 <_vfprintf_r+0x12de>
   15554:	ce4a                	sw	s2,28(sp)
   15556:	47c1                	li	a5,16
   15558:	4d1d                	li	s10,7
   1555a:	8942                	mv	s2,a6
   1555c:	a021                	j	15564 <_vfprintf_r+0xce2>
   1555e:	1441                	addi	s0,s0,-16
   15560:	5e87de63          	bge	a5,s0,15b5c <_vfprintf_r+0x12da>
   15564:	0c41                	addi	s8,s8,16
   15566:	0a85                	addi	s5,s5,1
   15568:	012b2023          	sw	s2,0(s6)
   1556c:	00fb2223          	sw	a5,4(s6)
   15570:	c7e2                	sw	s8,204(sp)
   15572:	c5d6                	sw	s5,200(sp)
   15574:	0b21                	addi	s6,s6,8
   15576:	ff5d54e3          	bge	s10,s5,1555e <_vfprintf_r+0xcdc>
   1557a:	4522                	lw	a0,8(sp)
   1557c:	01d0                	addi	a2,sp,196
   1557e:	85a6                	mv	a1,s1
   15580:	74d000ef          	jal	164cc <__sprint_r>
   15584:	d4051de3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15588:	4c3e                	lw	s8,204(sp)
   1558a:	4aae                	lw	s5,200(sp)
   1558c:	8b4e                	mv	s6,s3
   1558e:	47c1                	li	a5,16
   15590:	b7f9                	j	1555e <_vfprintf_r+0xcdc>
   15592:	4752                	lw	a4,20(sp)
   15594:	010ef793          	andi	a5,t4,16
   15598:	00072b03          	lw	s6,0(a4)
   1559c:	0711                	addi	a4,a4,4
   1559e:	ca3a                	sw	a4,20(sp)
   155a0:	ef9d                	bnez	a5,155de <_vfprintf_r+0xd5c>
   155a2:	040ef793          	andi	a5,t4,64
   155a6:	c79d                	beqz	a5,155d4 <_vfprintf_r+0xd52>
   155a8:	0b42                	slli	s6,s6,0x10
   155aa:	010b5b13          	srli	s6,s6,0x10
   155ae:	4d81                	li	s11,0
   155b0:	4785                	li	a5,1
   155b2:	e6aff06f          	j	14c1c <_vfprintf_r+0x39a>
   155b6:	4b01                	li	s6,0
   155b8:	19010d13          	addi	s10,sp,400
   155bc:	e1aff06f          	j	14bd6 <_vfprintf_r+0x354>
   155c0:	001cf793          	andi	a5,s9,1
   155c4:	cc078b63          	beqz	a5,14a9a <_vfprintf_r+0x218>
   155c8:	b61d                	j	150ee <_vfprintf_r+0x86c>
   155ca:	00094883          	lbu	a7,0(s2)
   155ce:	ca3e                	sw	a5,20(sp)
   155d0:	be2ff06f          	j	149b2 <_vfprintf_r+0x130>
   155d4:	200ef793          	andi	a5,t4,512
   155d8:	c399                	beqz	a5,155de <_vfprintf_r+0xd5c>
   155da:	0ffb7b13          	zext.b	s6,s6
   155de:	4d81                	li	s11,0
   155e0:	4785                	li	a5,1
   155e2:	e3aff06f          	j	14c1c <_vfprintf_r+0x39a>
   155e6:	200cf793          	andi	a5,s9,512
   155ea:	7e079563          	bnez	a5,15dd4 <_vfprintf_r+0x1552>
   155ee:	4d81                	li	s11,0
   155f0:	e26ff06f          	j	14c16 <_vfprintf_r+0x394>
   155f4:	200cf793          	andi	a5,s9,512
   155f8:	7c079663          	bnez	a5,15dc4 <_vfprintf_r+0x1542>
   155fc:	41fb5d93          	srai	s11,s6,0x1f
   15600:	87ee                	mv	a5,s11
   15602:	db2ff06f          	j	14bb4 <_vfprintf_r+0x332>
   15606:	57f2                	lw	a5,60(sp)
   15608:	00094883          	lbu	a7,0(s2)
   1560c:	ba078363          	beqz	a5,149b2 <_vfprintf_r+0x130>
   15610:	0007c783          	lbu	a5,0(a5)
   15614:	b8078f63          	beqz	a5,149b2 <_vfprintf_r+0x130>
   15618:	400cec93          	ori	s9,s9,1024
   1561c:	b96ff06f          	j	149b2 <_vfprintf_r+0x130>
   15620:	010cf793          	andi	a5,s9,16
   15624:	4c079063          	bnez	a5,15ae4 <_vfprintf_r+0x1262>
   15628:	040cf793          	andi	a5,s9,64
   1562c:	78079563          	bnez	a5,15db6 <_vfprintf_r+0x1534>
   15630:	200cfe13          	andi	t3,s9,512
   15634:	4a0e0863          	beqz	t3,15ae4 <_vfprintf_r+0x1262>
   15638:	47d2                	lw	a5,20(sp)
   1563a:	4732                	lw	a4,12(sp)
   1563c:	439c                	lw	a5,0(a5)
   1563e:	00e78023          	sb	a4,0(a5)
   15642:	b425                	j	1506a <_vfprintf_r+0x7e8>
   15644:	47d2                	lw	a5,20(sp)
   15646:	4398                	lw	a4,0(a5)
   15648:	0791                	addi	a5,a5,4
   1564a:	ca3e                	sw	a5,20(sp)
   1564c:	430c                	lw	a1,0(a4)
   1564e:	4350                	lw	a2,4(a4)
   15650:	4714                	lw	a3,8(a4)
   15652:	4758                	lw	a4,12(a4)
   15654:	e52ff06f          	j	14ca6 <_vfprintf_r+0x424>
   15658:	8aba                	mv	s5,a4
   1565a:	df5042e3          	bgtz	s5,1543e <_vfprintf_r+0xbbc>
   1565e:	bbed                	j	15458 <_vfprintf_r+0xbd6>
   15660:	5afd                	li	s5,-1
   15662:	8936                	mv	s2,a3
   15664:	b50ff06f          	j	149b4 <_vfprintf_r+0x132>
   15668:	67f5                	lui	a5,0x1d
   1566a:	4c078793          	addi	a5,a5,1216 # 1d4c0 <__clzsi2+0xa2>
   1566e:	da3e                	sw	a5,52(sp)
   15670:	020cf793          	andi	a5,s9,32
   15674:	26078263          	beqz	a5,158d8 <_vfprintf_r+0x1056>
   15678:	47d2                	lw	a5,20(sp)
   1567a:	00778c13          	addi	s8,a5,7
   1567e:	ff8c7c13          	andi	s8,s8,-8
   15682:	000c2b03          	lw	s6,0(s8)
   15686:	004c2d83          	lw	s11,4(s8)
   1568a:	008c0793          	addi	a5,s8,8
   1568e:	ca3e                	sw	a5,20(sp)
   15690:	001cf793          	andi	a5,s9,1
   15694:	cf81                	beqz	a5,156ac <_vfprintf_r+0xe2a>
   15696:	01bb67b3          	or	a5,s6,s11
   1569a:	cb89                	beqz	a5,156ac <_vfprintf_r+0xe2a>
   1569c:	03000793          	li	a5,48
   156a0:	0af10423          	sb	a5,168(sp)
   156a4:	0b1104a3          	sb	a7,169(sp)
   156a8:	002cec93          	ori	s9,s9,2
   156ac:	bffcfe93          	andi	t4,s9,-1025
   156b0:	4789                	li	a5,2
   156b2:	d6aff06f          	j	14c1c <_vfprintf_r+0x39a>
   156b6:	8ee6                	mv	t4,s9
   156b8:	b289                	j	14ffa <_vfprintf_r+0x778>
   156ba:	67f5                	lui	a5,0x1d
   156bc:	4ac78793          	addi	a5,a5,1196 # 1d4ac <__clzsi2+0x8e>
   156c0:	da3e                	sw	a5,52(sp)
   156c2:	b77d                	j	15670 <_vfprintf_r+0xdee>
   156c4:	00194883          	lbu	a7,1(s2)
   156c8:	200cec93          	ori	s9,s9,512
   156cc:	0905                	addi	s2,s2,1
   156ce:	ae4ff06f          	j	149b2 <_vfprintf_r+0x130>
   156d2:	00194883          	lbu	a7,1(s2)
   156d6:	020cec93          	ori	s9,s9,32
   156da:	0905                	addi	s2,s2,1
   156dc:	ad6ff06f          	j	149b2 <_vfprintf_r+0x130>
   156e0:	4522                	lw	a0,8(sp)
   156e2:	01d0                	addi	a2,sp,196
   156e4:	85a6                	mv	a1,s1
   156e6:	5e7000ef          	jal	164cc <__sprint_r>
   156ea:	be051ae3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   156ee:	463e                	lw	a2,204(sp)
   156f0:	844e                	mv	s0,s3
   156f2:	bc29                	j	1510c <_vfprintf_r+0x88a>
   156f4:	4799                	li	a5,6
   156f6:	8b56                	mv	s6,s5
   156f8:	6b57ed63          	bltu	a5,s5,15db2 <_vfprintf_r+0x1530>
   156fc:	67f5                	lui	a5,0x1d
   156fe:	8dda                	mv	s11,s6
   15700:	ca62                	sw	s8,20(sp)
   15702:	4d478d13          	addi	s10,a5,1236 # 1d4d4 <__clzsi2+0xb6>
   15706:	afcff06f          	j	14a02 <_vfprintf_r+0x180>
   1570a:	6879                	lui	a6,0x1e
   1570c:	45c1                	li	a1,16
   1570e:	472e                	lw	a4,200(sp)
   15710:	80880813          	addi	a6,a6,-2040 # 1d808 <zeroes.0>
   15714:	4755db63          	bge	a1,s5,15b8a <_vfprintf_r+0x1308>
   15718:	87a2                	mv	a5,s0
   1571a:	4c41                	li	s8,16
   1571c:	4b1d                	li	s6,7
   1571e:	8442                	mv	s0,a6
   15720:	a021                	j	15728 <_vfprintf_r+0xea6>
   15722:	1ac1                	addi	s5,s5,-16
   15724:	475c5163          	bge	s8,s5,15b86 <_vfprintf_r+0x1304>
   15728:	0641                	addi	a2,a2,16
   1572a:	0705                	addi	a4,a4,1
   1572c:	c380                	sw	s0,0(a5)
   1572e:	0187a223          	sw	s8,4(a5)
   15732:	c7b2                	sw	a2,204(sp)
   15734:	c5ba                	sw	a4,200(sp)
   15736:	07a1                	addi	a5,a5,8
   15738:	feeb55e3          	bge	s6,a4,15722 <_vfprintf_r+0xea0>
   1573c:	4522                	lw	a0,8(sp)
   1573e:	01d0                	addi	a2,sp,196
   15740:	85a6                	mv	a1,s1
   15742:	58b000ef          	jal	164cc <__sprint_r>
   15746:	b8051ce3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   1574a:	463e                	lw	a2,204(sp)
   1574c:	472e                	lw	a4,200(sp)
   1574e:	87ce                	mv	a5,s3
   15750:	bfc9                	j	15722 <_vfprintf_r+0xea0>
   15752:	5742                	lw	a4,48(sp)
   15754:	57b2                	lw	a5,44(sp)
   15756:	459d                	li	a1,7
   15758:	c018                	sw	a4,0(s0)
   1575a:	472e                	lw	a4,200(sp)
   1575c:	963e                	add	a2,a2,a5
   1575e:	c05c                	sw	a5,4(s0)
   15760:	0705                	addi	a4,a4,1
   15762:	c7b2                	sw	a2,204(sp)
   15764:	c5ba                	sw	a4,200(sp)
   15766:	0421                	addi	s0,s0,8
   15768:	d2e5d1e3          	bge	a1,a4,1548a <_vfprintf_r+0xc08>
   1576c:	4522                	lw	a0,8(sp)
   1576e:	01d0                	addi	a2,sp,196
   15770:	85a6                	mv	a1,s1
   15772:	55b000ef          	jal	164cc <__sprint_r>
   15776:	b60514e3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   1577a:	5aba                	lw	s5,172(sp)
   1577c:	463e                	lw	a2,204(sp)
   1577e:	844e                	mv	s0,s3
   15780:	b329                	j	1548a <_vfprintf_r+0xc08>
   15782:	07800793          	li	a5,120
   15786:	03000713          	li	a4,48
   1578a:	0ae10423          	sb	a4,168(sp)
   1578e:	0af104a3          	sb	a5,169(sp)
   15792:	06300713          	li	a4,99
   15796:	c802                	sw	zero,16(sp)
   15798:	002cec93          	ori	s9,s9,2
   1579c:	12c10d13          	addi	s10,sp,300
   157a0:	d5575c63          	bge	a4,s5,14cf8 <_vfprintf_r+0x476>
   157a4:	4522                	lw	a0,8(sp)
   157a6:	001a8593          	addi	a1,s5,1
   157aa:	c846                	sw	a7,16(sp)
   157ac:	b2ffe0ef          	jal	142da <_malloc_r>
   157b0:	48c2                	lw	a7,16(sp)
   157b2:	8d2a                	mv	s10,a0
   157b4:	460502e3          	beqz	a0,16418 <_vfprintf_r+0x1b96>
   157b8:	c82a                	sw	a0,16(sp)
   157ba:	d3eff06f          	j	14cf8 <_vfprintf_r+0x476>
   157be:	4522                	lw	a0,8(sp)
   157c0:	09010b13          	addi	s6,sp,144
   157c4:	1178                	addi	a4,sp,172
   157c6:	0bc10813          	addi	a6,sp,188
   157ca:	191c                	addi	a5,sp,176
   157cc:	86d6                	mv	a3,s5
   157ce:	4609                	li	a2,2
   157d0:	85da                	mv	a1,s6
   157d2:	d446                	sw	a7,40(sp)
   157d4:	c97e                	sw	t6,144(sp)
   157d6:	d27e                	sw	t6,36(sp)
   157d8:	cb7a                	sw	t5,148(sp)
   157da:	d07a                	sw	t5,32(sp)
   157dc:	cd76                	sw	t4,152(sp)
   157de:	ce76                	sw	t4,28(sp)
   157e0:	cf62                	sw	s8,156(sp)
   157e2:	303010ef          	jal	172e4 <_ldtoa_r>
   157e6:	001cf713          	andi	a4,s9,1
   157ea:	4ef2                	lw	t4,28(sp)
   157ec:	5f02                	lw	t5,32(sp)
   157ee:	5f92                	lw	t6,36(sp)
   157f0:	58a2                	lw	a7,40(sp)
   157f2:	8d2a                	mv	s10,a0
   157f4:	62071163          	bnez	a4,15e16 <_vfprintf_r+0x1594>
   157f8:	57ba                	lw	a5,172(sp)
   157fa:	ce3e                	sw	a5,28(sp)
   157fc:	57fa                	lw	a5,188(sp)
   157fe:	8f89                	sub	a5,a5,a0
   15800:	d03e                	sw	a5,32(sp)
   15802:	47f2                	lw	a5,28(sp)
   15804:	5775                	li	a4,-3
   15806:	00e7c463          	blt	a5,a4,1580e <_vfprintf_r+0xf8c>
   1580a:	0efadbe3          	bge	s5,a5,16100 <_vfprintf_r+0x187e>
   1580e:	47f2                	lw	a5,28(sp)
   15810:	18f9                	addi	a7,a7,-2
   15812:	fff78713          	addi	a4,a5,-1
   15816:	d73a                	sw	a4,172(sp)
   15818:	0ff8f693          	zext.b	a3,a7
   1581c:	4601                	li	a2,0
   1581e:	0ad10a23          	sb	a3,180(sp)
   15822:	02b00693          	li	a3,43
   15826:	00075763          	bgez	a4,15834 <_vfprintf_r+0xfb2>
   1582a:	47f2                	lw	a5,28(sp)
   1582c:	4705                	li	a4,1
   1582e:	02d00693          	li	a3,45
   15832:	8f1d                	sub	a4,a4,a5
   15834:	0ad10aa3          	sb	a3,181(sp)
   15838:	46a5                	li	a3,9
   1583a:	2ae6d1e3          	bge	a3,a4,162dc <_vfprintf_r+0x1a5a>
   1583e:	0c310813          	addi	a6,sp,195
   15842:	85c2                	mv	a1,a6
   15844:	4529                	li	a0,10
   15846:	06300f13          	li	t5,99
   1584a:	02a767b3          	rem	a5,a4,a0
   1584e:	862e                	mv	a2,a1
   15850:	86ba                	mv	a3,a4
   15852:	15fd                	addi	a1,a1,-1
   15854:	03078793          	addi	a5,a5,48
   15858:	fef60fa3          	sb	a5,-1(a2)
   1585c:	02a74733          	div	a4,a4,a0
   15860:	fedf45e3          	blt	t5,a3,1584a <_vfprintf_r+0xfc8>
   15864:	03070713          	addi	a4,a4,48
   15868:	ffe60693          	addi	a3,a2,-2
   1586c:	fee58fa3          	sb	a4,-1(a1)
   15870:	3706fce3          	bgeu	a3,a6,163e8 <_vfprintf_r+0x1b66>
   15874:	0b610713          	addi	a4,sp,182
   15878:	0006c783          	lbu	a5,0(a3)
   1587c:	0685                	addi	a3,a3,1
   1587e:	0705                	addi	a4,a4,1
   15880:	fef70fa3          	sb	a5,-1(a4)
   15884:	ff069ae3          	bne	a3,a6,15878 <_vfprintf_r+0xff6>
   15888:	0b1c                	addi	a5,sp,400
   1588a:	40c78733          	sub	a4,a5,a2
   1588e:	f3770793          	addi	a5,a4,-201
   15892:	c0be                	sw	a5,64(sp)
   15894:	5782                	lw	a5,32(sp)
   15896:	4686                	lw	a3,64(sp)
   15898:	4705                	li	a4,1
   1589a:	00d78b33          	add	s6,a5,a3
   1589e:	26f758e3          	bge	a4,a5,1630e <_vfprintf_r+0x1a8c>
   158a2:	57b2                	lw	a5,44(sp)
   158a4:	9b3e                	add	s6,s6,a5
   158a6:	fffb4693          	not	a3,s6
   158aa:	bffcfe13          	andi	t3,s9,-1025
   158ae:	86fd                	srai	a3,a3,0x1f
   158b0:	100e6793          	ori	a5,t3,256
   158b4:	c6be                	sw	a5,76(sp)
   158b6:	00db7db3          	and	s11,s6,a3
   158ba:	d402                	sw	zero,40(sp)
   158bc:	d202                	sw	zero,36(sp)
   158be:	ce02                	sw	zero,28(sp)
   158c0:	57e2                	lw	a5,56(sp)
   158c2:	020786e3          	beqz	a5,160ee <_vfprintf_r+0x186c>
   158c6:	02d00713          	li	a4,45
   158ca:	4cb6                	lw	s9,76(sp)
   158cc:	0ae103a3          	sb	a4,167(sp)
   158d0:	4a81                	li	s5,0
   158d2:	0d85                	addi	s11,s11,1
   158d4:	938ff06f          	j	14a0c <_vfprintf_r+0x18a>
   158d8:	4752                	lw	a4,20(sp)
   158da:	010cf793          	andi	a5,s9,16
   158de:	00072b03          	lw	s6,0(a4)
   158e2:	0711                	addi	a4,a4,4
   158e4:	ca3a                	sw	a4,20(sp)
   158e6:	e7a9                	bnez	a5,15930 <_vfprintf_r+0x10ae>
   158e8:	040cf793          	andi	a5,s9,64
   158ec:	cf95                	beqz	a5,15928 <_vfprintf_r+0x10a6>
   158ee:	0b42                	slli	s6,s6,0x10
   158f0:	010b5b13          	srli	s6,s6,0x10
   158f4:	4d81                	li	s11,0
   158f6:	bb69                	j	15690 <_vfprintf_r+0xe0e>
   158f8:	4522                	lw	a0,8(sp)
   158fa:	01d0                	addi	a2,sp,196
   158fc:	85a6                	mv	a1,s1
   158fe:	3cf000ef          	jal	164cc <__sprint_r>
   15902:	9c051ee3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15906:	4c3e                	lw	s8,204(sp)
   15908:	4aae                	lw	s5,200(sp)
   1590a:	8b4e                	mv	s6,s3
   1590c:	c6eff06f          	j	14d7a <_vfprintf_r+0x4f8>
   15910:	4522                	lw	a0,8(sp)
   15912:	01d0                	addi	a2,sp,196
   15914:	85a6                	mv	a1,s1
   15916:	3b7000ef          	jal	164cc <__sprint_r>
   1591a:	9c0512e3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   1591e:	4c3e                	lw	s8,204(sp)
   15920:	4aae                	lw	s5,200(sp)
   15922:	8b4e                	mv	s6,s3
   15924:	c72ff06f          	j	14d96 <_vfprintf_r+0x514>
   15928:	200cf793          	andi	a5,s9,512
   1592c:	4a079963          	bnez	a5,15dde <_vfprintf_r+0x155c>
   15930:	4d81                	li	s11,0
   15932:	bbb9                	j	15690 <_vfprintf_r+0xe0e>
   15934:	ccccd837          	lui	a6,0xccccd
   15938:	ccccdcb7          	lui	s9,0xccccd
   1593c:	5772                	lw	a4,60(sp)
   1593e:	400eff13          	andi	t5,t4,1024
   15942:	4601                	li	a2,0
   15944:	0b0c                	addi	a1,sp,400
   15946:	4e15                	li	t3,5
   15948:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccae249>
   1594c:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccae248>
   15950:	0ff00c13          	li	s8,255
   15954:	a081                	j	15994 <_vfprintf_r+0x1112>
   15956:	016d37b3          	sltu	a5,s10,s6
   1595a:	97ea                	add	a5,a5,s10
   1595c:	03c7f7b3          	remu	a5,a5,t3
   15960:	40fb07b3          	sub	a5,s6,a5
   15964:	00fb35b3          	sltu	a1,s6,a5
   15968:	40bd85b3          	sub	a1,s11,a1
   1596c:	03978333          	mul	t1,a5,s9
   15970:	030585b3          	mul	a1,a1,a6
   15974:	0307b533          	mulhu	a0,a5,a6
   15978:	959a                	add	a1,a1,t1
   1597a:	030787b3          	mul	a5,a5,a6
   1597e:	95aa                	add	a1,a1,a0
   15980:	01f59513          	slli	a0,a1,0x1f
   15984:	8185                	srli	a1,a1,0x1
   15986:	8385                	srli	a5,a5,0x1
   15988:	8fc9                	or	a5,a5,a0
   1598a:	7c0d8763          	beqz	s11,16158 <_vfprintf_r+0x18d6>
   1598e:	8dae                	mv	s11,a1
   15990:	8b3e                	mv	s6,a5
   15992:	85b6                	mv	a1,a3
   15994:	01bb0d33          	add	s10,s6,s11
   15998:	016d37b3          	sltu	a5,s10,s6
   1599c:	97ea                	add	a5,a5,s10
   1599e:	03c7f7b3          	remu	a5,a5,t3
   159a2:	fff58693          	addi	a3,a1,-1
   159a6:	0605                	addi	a2,a2,1
   159a8:	40fb07b3          	sub	a5,s6,a5
   159ac:	00fb3533          	sltu	a0,s6,a5
   159b0:	40ad8533          	sub	a0,s11,a0
   159b4:	0307b333          	mulhu	t1,a5,a6
   159b8:	03050533          	mul	a0,a0,a6
   159bc:	030787b3          	mul	a5,a5,a6
   159c0:	951a                	add	a0,a0,t1
   159c2:	057e                	slli	a0,a0,0x1f
   159c4:	8385                	srli	a5,a5,0x1
   159c6:	8fc9                	or	a5,a5,a0
   159c8:	00279513          	slli	a0,a5,0x2
   159cc:	97aa                	add	a5,a5,a0
   159ce:	0786                	slli	a5,a5,0x1
   159d0:	40fb07b3          	sub	a5,s6,a5
   159d4:	03078793          	addi	a5,a5,48
   159d8:	fef58fa3          	sb	a5,-1(a1)
   159dc:	f60f0de3          	beqz	t5,15956 <_vfprintf_r+0x10d4>
   159e0:	00074783          	lbu	a5,0(a4)
   159e4:	f6f619e3          	bne	a2,a5,15956 <_vfprintf_r+0x10d4>
   159e8:	f78607e3          	beq	a2,s8,15956 <_vfprintf_r+0x10d4>
   159ec:	1c0d9563          	bnez	s11,15bb6 <_vfprintf_r+0x1334>
   159f0:	47a5                	li	a5,9
   159f2:	1d67e263          	bltu	a5,s6,15bb6 <_vfprintf_r+0x1334>
   159f6:	8d36                	mv	s10,a3
   159f8:	0b1c                	addi	a5,sp,400
   159fa:	d032                	sw	a2,32(sp)
   159fc:	de3a                	sw	a4,60(sp)
   159fe:	41a78b33          	sub	s6,a5,s10
   15a02:	8cf6                	mv	s9,t4
   15a04:	9d2ff06f          	j	14bd6 <_vfprintf_r+0x354>
   15a08:	472e                	lw	a4,200(sp)
   15a0a:	65f5                	lui	a1,0x1d
   15a0c:	4dc58593          	addi	a1,a1,1244 # 1d4dc <__clzsi2+0xbe>
   15a10:	c00c                	sw	a1,0(s0)
   15a12:	0605                	addi	a2,a2,1
   15a14:	4585                	li	a1,1
   15a16:	0705                	addi	a4,a4,1
   15a18:	c04c                	sw	a1,4(s0)
   15a1a:	c7b2                	sw	a2,204(sp)
   15a1c:	c5ba                	sw	a4,200(sp)
   15a1e:	459d                	li	a1,7
   15a20:	0421                	addi	s0,s0,8
   15a22:	36e5c063          	blt	a1,a4,15d82 <_vfprintf_r+0x1500>
   15a26:	e569                	bnez	a0,15af0 <_vfprintf_r+0x126e>
   15a28:	5782                	lw	a5,32(sp)
   15a2a:	001cf713          	andi	a4,s9,1
   15a2e:	8f5d                	or	a4,a4,a5
   15a30:	e319                	bnez	a4,15a36 <_vfprintf_r+0x11b4>
   15a32:	868ff06f          	j	14a9a <_vfprintf_r+0x218>
   15a36:	5742                	lw	a4,48(sp)
   15a38:	57b2                	lw	a5,44(sp)
   15a3a:	459d                	li	a1,7
   15a3c:	c018                	sw	a4,0(s0)
   15a3e:	472e                	lw	a4,200(sp)
   15a40:	963e                	add	a2,a2,a5
   15a42:	c05c                	sw	a5,4(s0)
   15a44:	0705                	addi	a4,a4,1
   15a46:	c7b2                	sw	a2,204(sp)
   15a48:	c5ba                	sw	a4,200(sp)
   15a4a:	3ae5cb63          	blt	a1,a4,15e00 <_vfprintf_r+0x157e>
   15a4e:	0421                	addi	s0,s0,8
   15a50:	a87d                	j	15b0e <_vfprintf_r+0x128c>
   15a52:	4522                	lw	a0,8(sp)
   15a54:	f39fd0ef          	jal	1398c <__sinit>
   15a58:	e69fe06f          	j	148c0 <_vfprintf_r+0x3e>
   15a5c:	4522                	lw	a0,8(sp)
   15a5e:	01d0                	addi	a2,sp,196
   15a60:	85a6                	mv	a1,s1
   15a62:	26b000ef          	jal	164cc <__sprint_r>
   15a66:	86051ce3          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15a6a:	463e                	lw	a2,204(sp)
   15a6c:	844e                	mv	s0,s3
   15a6e:	e78ff06f          	j	150e6 <_vfprintf_r+0x864>
   15a72:	886a                	mv	a6,s10
   15a74:	01042023          	sw	a6,0(s0)
   15a78:	01542223          	sw	s5,4(s0)
   15a7c:	9656                	add	a2,a2,s5
   15a7e:	0785                	addi	a5,a5,1
   15a80:	c7b2                	sw	a2,204(sp)
   15a82:	c5be                	sw	a5,200(sp)
   15a84:	471d                	li	a4,7
   15a86:	00f74463          	blt	a4,a5,15a8e <_vfprintf_r+0x120c>
   15a8a:	80eff06f          	j	14a98 <_vfprintf_r+0x216>
   15a8e:	b70ff06f          	j	14dfe <_vfprintf_r+0x57c>
   15a92:	47ce                	lw	a5,208(sp)
   15a94:	010c                	addi	a1,sp,128
   15a96:	0908                	addi	a0,sp,144
   15a98:	c93e                	sw	a5,144(sp)
   15a9a:	47de                	lw	a5,212(sp)
   15a9c:	c102                	sw	zero,128(sp)
   15a9e:	c302                	sw	zero,132(sp)
   15aa0:	cb3e                	sw	a5,148(sp)
   15aa2:	47ee                	lw	a5,216(sp)
   15aa4:	c502                	sw	zero,136(sp)
   15aa6:	c702                	sw	zero,140(sp)
   15aa8:	cd3e                	sw	a5,152(sp)
   15aaa:	47fe                	lw	a5,220(sp)
   15aac:	cf3e                	sw	a5,156(sp)
   15aae:	6d8050ef          	jal	1b186 <__letf2>
   15ab2:	48c2                	lw	a7,16(sp)
   15ab4:	6a054a63          	bltz	a0,16168 <_vfprintf_r+0x18e6>
   15ab8:	0a714703          	lbu	a4,167(sp)
   15abc:	04700793          	li	a5,71
   15ac0:	2d17db63          	bge	a5,a7,15d96 <_vfprintf_r+0x1514>
   15ac4:	67f5                	lui	a5,0x1d
   15ac6:	4a078d13          	addi	s10,a5,1184 # 1d4a0 <__clzsi2+0x82>
   15aca:	c802                	sw	zero,16(sp)
   15acc:	d402                	sw	zero,40(sp)
   15ace:	d202                	sw	zero,36(sp)
   15ad0:	ce02                	sw	zero,28(sp)
   15ad2:	f7fcfc93          	andi	s9,s9,-129
   15ad6:	4d8d                	li	s11,3
   15ad8:	4b0d                	li	s6,3
   15ada:	4a81                	li	s5,0
   15adc:	90071963          	bnez	a4,14bee <_vfprintf_r+0x36c>
   15ae0:	f2dfe06f          	j	14a0c <_vfprintf_r+0x18a>
   15ae4:	47d2                	lw	a5,20(sp)
   15ae6:	4732                	lw	a4,12(sp)
   15ae8:	439c                	lw	a5,0(a5)
   15aea:	c398                	sw	a4,0(a5)
   15aec:	d7eff06f          	j	1506a <_vfprintf_r+0x7e8>
   15af0:	5742                	lw	a4,48(sp)
   15af2:	57b2                	lw	a5,44(sp)
   15af4:	459d                	li	a1,7
   15af6:	c018                	sw	a4,0(s0)
   15af8:	472e                	lw	a4,200(sp)
   15afa:	963e                	add	a2,a2,a5
   15afc:	c05c                	sw	a5,4(s0)
   15afe:	0705                	addi	a4,a4,1
   15b00:	c7b2                	sw	a2,204(sp)
   15b02:	c5ba                	sw	a4,200(sp)
   15b04:	0421                	addi	s0,s0,8
   15b06:	2ee5cd63          	blt	a1,a4,15e00 <_vfprintf_r+0x157e>
   15b0a:	74054a63          	bltz	a0,1625e <_vfprintf_r+0x19dc>
   15b0e:	5782                	lw	a5,32(sp)
   15b10:	0705                	addi	a4,a4,1
   15b12:	01a42023          	sw	s10,0(s0)
   15b16:	963e                	add	a2,a2,a5
   15b18:	c05c                	sw	a5,4(s0)
   15b1a:	c7b2                	sw	a2,204(sp)
   15b1c:	c5ba                	sw	a4,200(sp)
   15b1e:	479d                	li	a5,7
   15b20:	00e7c463          	blt	a5,a4,15b28 <_vfprintf_r+0x12a6>
   15b24:	f75fe06f          	j	14a98 <_vfprintf_r+0x216>
   15b28:	ad6ff06f          	j	14dfe <_vfprintf_r+0x57c>
   15b2c:	856a                	mv	a0,s10
   15b2e:	dc46                	sw	a7,56(sp)
   15b30:	5f4010ef          	jal	17124 <strlen>
   15b34:	0a714703          	lbu	a4,167(sp)
   15b38:	fff54693          	not	a3,a0
   15b3c:	86fd                	srai	a3,a3,0x1f
   15b3e:	ca62                	sw	s8,20(sp)
   15b40:	c802                	sw	zero,16(sp)
   15b42:	d402                	sw	zero,40(sp)
   15b44:	d202                	sw	zero,36(sp)
   15b46:	ce02                	sw	zero,28(sp)
   15b48:	58e2                	lw	a7,56(sp)
   15b4a:	8b2a                	mv	s6,a0
   15b4c:	00d57db3          	and	s11,a0,a3
   15b50:	4a81                	li	s5,0
   15b52:	c319                	beqz	a4,15b58 <_vfprintf_r+0x12d6>
   15b54:	89aff06f          	j	14bee <_vfprintf_r+0x36c>
   15b58:	eb5fe06f          	j	14a0c <_vfprintf_r+0x18a>
   15b5c:	884a                	mv	a6,s2
   15b5e:	4972                	lw	s2,28(sp)
   15b60:	9c22                	add	s8,s8,s0
   15b62:	0a85                	addi	s5,s5,1
   15b64:	010b2023          	sw	a6,0(s6)
   15b68:	a64ff06f          	j	14dcc <_vfprintf_r+0x54a>
   15b6c:	47fe                	lw	a5,220(sp)
   15b6e:	2607cc63          	bltz	a5,15de6 <_vfprintf_r+0x1564>
   15b72:	0a714703          	lbu	a4,167(sp)
   15b76:	04700793          	li	a5,71
   15b7a:	6317ca63          	blt	a5,a7,161ae <_vfprintf_r+0x192c>
   15b7e:	67f5                	lui	a5,0x1d
   15b80:	4a478d13          	addi	s10,a5,1188 # 1d4a4 <__clzsi2+0x86>
   15b84:	b799                	j	15aca <_vfprintf_r+0x1248>
   15b86:	8822                	mv	a6,s0
   15b88:	843e                	mv	s0,a5
   15b8a:	9656                	add	a2,a2,s5
   15b8c:	0705                	addi	a4,a4,1
   15b8e:	01042023          	sw	a6,0(s0)
   15b92:	01542223          	sw	s5,4(s0)
   15b96:	c7b2                	sw	a2,204(sp)
   15b98:	c5ba                	sw	a4,200(sp)
   15b9a:	459d                	li	a1,7
   15b9c:	0421                	addi	s0,s0,8
   15b9e:	8ce5d7e3          	bge	a1,a4,1546c <_vfprintf_r+0xbea>
   15ba2:	4522                	lw	a0,8(sp)
   15ba4:	01d0                	addi	a2,sp,196
   15ba6:	85a6                	mv	a1,s1
   15ba8:	125000ef          	jal	164cc <__sprint_r>
   15bac:	f2051963          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15bb0:	463e                	lw	a2,204(sp)
   15bb2:	844e                	mv	s0,s3
   15bb4:	b865                	j	1546c <_vfprintf_r+0xbea>
   15bb6:	47a6                	lw	a5,72(sp)
   15bb8:	4596                	lw	a1,68(sp)
   15bba:	dc42                	sw	a6,56(sp)
   15bbc:	8e9d                	sub	a3,a3,a5
   15bbe:	863e                	mv	a2,a5
   15bc0:	8536                	mv	a0,a3
   15bc2:	d47a                	sw	t5,40(sp)
   15bc4:	d276                	sw	t4,36(sp)
   15bc6:	d046                	sw	a7,32(sp)
   15bc8:	ce3a                	sw	a4,28(sp)
   15bca:	c836                	sw	a3,16(sp)
   15bcc:	250010ef          	jal	16e1c <strncpy>
   15bd0:	016d37b3          	sltu	a5,s10,s6
   15bd4:	4615                	li	a2,5
   15bd6:	97ea                	add	a5,a5,s10
   15bd8:	02c7f7b3          	remu	a5,a5,a2
   15bdc:	4772                	lw	a4,28(sp)
   15bde:	ccccd337          	lui	t1,0xccccd
   15be2:	ccccd537          	lui	a0,0xccccd
   15be6:	00174583          	lbu	a1,1(a4)
   15bea:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccae249>
   15bee:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccae248>
   15bf2:	00b035b3          	snez	a1,a1
   15bf6:	972e                	add	a4,a4,a1
   15bf8:	46c2                	lw	a3,16(sp)
   15bfa:	5882                	lw	a7,32(sp)
   15bfc:	5e92                	lw	t4,36(sp)
   15bfe:	5f22                	lw	t5,40(sp)
   15c00:	5862                	lw	a6,56(sp)
   15c02:	4601                	li	a2,0
   15c04:	4e15                	li	t3,5
   15c06:	40fb07b3          	sub	a5,s6,a5
   15c0a:	00fb35b3          	sltu	a1,s6,a5
   15c0e:	40bd85b3          	sub	a1,s11,a1
   15c12:	02a78533          	mul	a0,a5,a0
   15c16:	026585b3          	mul	a1,a1,t1
   15c1a:	0267bfb3          	mulhu	t6,a5,t1
   15c1e:	95aa                	add	a1,a1,a0
   15c20:	02678533          	mul	a0,a5,t1
   15c24:	95fe                	add	a1,a1,t6
   15c26:	01f59793          	slli	a5,a1,0x1f
   15c2a:	8185                	srli	a1,a1,0x1
   15c2c:	8105                	srli	a0,a0,0x1
   15c2e:	8fc9                	or	a5,a5,a0
   15c30:	bbb9                	j	1598e <_vfprintf_r+0x110c>
   15c32:	5782                	lw	a5,32(sp)
   15c34:	5b12                	lw	s6,36(sp)
   15c36:	68f9                	lui	a7,0x1e
   15c38:	97ea                	add	a5,a5,s10
   15c3a:	dc4a                	sw	s2,56(sp)
   15c3c:	c6e6                	sw	s9,76(sp)
   15c3e:	c8de                	sw	s7,80(sp)
   15c40:	d26e                	sw	s11,36(sp)
   15c42:	5da2                	lw	s11,40(sp)
   15c44:	d46a                	sw	s10,40(sp)
   15c46:	5cf2                	lw	s9,60(sp)
   15c48:	8d62                	mv	s10,s8
   15c4a:	4922                	lw	s2,8(sp)
   15c4c:	4c26                	lw	s8,72(sp)
   15c4e:	481d                	li	a6,7
   15c50:	4741                	li	a4,16
   15c52:	80888a93          	addi	s5,a7,-2040 # 1d808 <zeroes.0>
   15c56:	85a2                	mv	a1,s0
   15c58:	8bbe                	mv	s7,a5
   15c5a:	07605363          	blez	s6,15cc0 <_vfprintf_r+0x143e>
   15c5e:	0fb05663          	blez	s11,15d4a <_vfprintf_r+0x14c8>
   15c62:	1dfd                	addi	s11,s11,-1
   15c64:	4796                	lw	a5,68(sp)
   15c66:	9662                	add	a2,a2,s8
   15c68:	0185a223          	sw	s8,4(a1)
   15c6c:	c19c                	sw	a5,0(a1)
   15c6e:	47ae                	lw	a5,200(sp)
   15c70:	c7b2                	sw	a2,204(sp)
   15c72:	05a1                	addi	a1,a1,8
   15c74:	0785                	addi	a5,a5,1
   15c76:	c5be                	sw	a5,200(sp)
   15c78:	0cf84c63          	blt	a6,a5,15d50 <_vfprintf_r+0x14ce>
   15c7c:	000cc683          	lbu	a3,0(s9)
   15c80:	41ab8433          	sub	s0,s7,s10
   15c84:	0086d363          	bge	a3,s0,15c8a <_vfprintf_r+0x1408>
   15c88:	8436                	mv	s0,a3
   15c8a:	00805f63          	blez	s0,15ca8 <_vfprintf_r+0x1426>
   15c8e:	46ae                	lw	a3,200(sp)
   15c90:	9622                	add	a2,a2,s0
   15c92:	01a5a023          	sw	s10,0(a1)
   15c96:	0685                	addi	a3,a3,1
   15c98:	c1c0                	sw	s0,4(a1)
   15c9a:	c7b2                	sw	a2,204(sp)
   15c9c:	c5b6                	sw	a3,200(sp)
   15c9e:	0cd84563          	blt	a6,a3,15d68 <_vfprintf_r+0x14e6>
   15ca2:	000cc683          	lbu	a3,0(s9)
   15ca6:	05a1                	addi	a1,a1,8
   15ca8:	fff44513          	not	a0,s0
   15cac:	857d                	srai	a0,a0,0x1f
   15cae:	00a477b3          	and	a5,s0,a0
   15cb2:	40f68433          	sub	s0,a3,a5
   15cb6:	02804763          	bgtz	s0,15ce4 <_vfprintf_r+0x1462>
   15cba:	9d36                	add	s10,s10,a3
   15cbc:	fb6041e3          	bgtz	s6,15c5e <_vfprintf_r+0x13dc>
   15cc0:	fbb041e3          	bgtz	s11,15c62 <_vfprintf_r+0x13e0>
   15cc4:	5782                	lw	a5,32(sp)
   15cc6:	8c6a                	mv	s8,s10
   15cc8:	5d22                	lw	s10,40(sp)
   15cca:	de66                	sw	s9,60(sp)
   15ccc:	5962                	lw	s2,56(sp)
   15cce:	00fd0733          	add	a4,s10,a5
   15cd2:	4cb6                	lw	s9,76(sp)
   15cd4:	4bc6                	lw	s7,80(sp)
   15cd6:	5d92                	lw	s11,36(sp)
   15cd8:	842e                	mv	s0,a1
   15cda:	fb877063          	bgeu	a4,s8,1547a <_vfprintf_r+0xbf8>
   15cde:	8c3a                	mv	s8,a4
   15ce0:	f9aff06f          	j	1547a <_vfprintf_r+0xbf8>
   15ce4:	6f79                	lui	t5,0x1e
   15ce6:	46ae                	lw	a3,200(sp)
   15ce8:	808f0f13          	addi	t5,t5,-2040 # 1d808 <zeroes.0>
   15cec:	04875163          	bge	a4,s0,15d2e <_vfprintf_r+0x14ac>
   15cf0:	ce56                	sw	s5,28(sp)
   15cf2:	a021                	j	15cfa <_vfprintf_r+0x1478>
   15cf4:	1441                	addi	s0,s0,-16
   15cf6:	02875b63          	bge	a4,s0,15d2c <_vfprintf_r+0x14aa>
   15cfa:	0641                	addi	a2,a2,16
   15cfc:	0685                	addi	a3,a3,1
   15cfe:	0155a023          	sw	s5,0(a1)
   15d02:	c1d8                	sw	a4,4(a1)
   15d04:	c7b2                	sw	a2,204(sp)
   15d06:	c5b6                	sw	a3,200(sp)
   15d08:	05a1                	addi	a1,a1,8
   15d0a:	fed855e3          	bge	a6,a3,15cf4 <_vfprintf_r+0x1472>
   15d0e:	01d0                	addi	a2,sp,196
   15d10:	85a6                	mv	a1,s1
   15d12:	854a                	mv	a0,s2
   15d14:	7b8000ef          	jal	164cc <__sprint_r>
   15d18:	dc051363          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15d1c:	4741                	li	a4,16
   15d1e:	1441                	addi	s0,s0,-16
   15d20:	463e                	lw	a2,204(sp)
   15d22:	46ae                	lw	a3,200(sp)
   15d24:	85ce                	mv	a1,s3
   15d26:	481d                	li	a6,7
   15d28:	fc8749e3          	blt	a4,s0,15cfa <_vfprintf_r+0x1478>
   15d2c:	4f72                	lw	t5,28(sp)
   15d2e:	9622                	add	a2,a2,s0
   15d30:	0685                	addi	a3,a3,1
   15d32:	01e5a023          	sw	t5,0(a1)
   15d36:	c1c0                	sw	s0,4(a1)
   15d38:	c7b2                	sw	a2,204(sp)
   15d3a:	c5b6                	sw	a3,200(sp)
   15d3c:	40d84063          	blt	a6,a3,1613c <_vfprintf_r+0x18ba>
   15d40:	000cc683          	lbu	a3,0(s9)
   15d44:	05a1                	addi	a1,a1,8
   15d46:	9d36                	add	s10,s10,a3
   15d48:	bf95                	j	15cbc <_vfprintf_r+0x143a>
   15d4a:	1cfd                	addi	s9,s9,-1
   15d4c:	1b7d                	addi	s6,s6,-1
   15d4e:	bf19                	j	15c64 <_vfprintf_r+0x13e2>
   15d50:	01d0                	addi	a2,sp,196
   15d52:	85a6                	mv	a1,s1
   15d54:	854a                	mv	a0,s2
   15d56:	776000ef          	jal	164cc <__sprint_r>
   15d5a:	d8051263          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15d5e:	463e                	lw	a2,204(sp)
   15d60:	85ce                	mv	a1,s3
   15d62:	4741                	li	a4,16
   15d64:	481d                	li	a6,7
   15d66:	bf19                	j	15c7c <_vfprintf_r+0x13fa>
   15d68:	01d0                	addi	a2,sp,196
   15d6a:	85a6                	mv	a1,s1
   15d6c:	854a                	mv	a0,s2
   15d6e:	2fb9                	jal	164cc <__sprint_r>
   15d70:	d6051763          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15d74:	000cc683          	lbu	a3,0(s9)
   15d78:	463e                	lw	a2,204(sp)
   15d7a:	85ce                	mv	a1,s3
   15d7c:	4741                	li	a4,16
   15d7e:	481d                	li	a6,7
   15d80:	b725                	j	15ca8 <_vfprintf_r+0x1426>
   15d82:	4522                	lw	a0,8(sp)
   15d84:	01d0                	addi	a2,sp,196
   15d86:	85a6                	mv	a1,s1
   15d88:	2791                	jal	164cc <__sprint_r>
   15d8a:	d4051a63          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15d8e:	553a                	lw	a0,172(sp)
   15d90:	463e                	lw	a2,204(sp)
   15d92:	844e                	mv	s0,s3
   15d94:	b949                	j	15a26 <_vfprintf_r+0x11a4>
   15d96:	67f5                	lui	a5,0x1d
   15d98:	49c78d13          	addi	s10,a5,1180 # 1d49c <__clzsi2+0x7e>
   15d9c:	b33d                	j	15aca <_vfprintf_r+0x1248>
   15d9e:	4522                	lw	a0,8(sp)
   15da0:	01d0                	addi	a2,sp,196
   15da2:	85a6                	mv	a1,s1
   15da4:	2725                	jal	164cc <__sprint_r>
   15da6:	d2051c63          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15daa:	463e                	lw	a2,204(sp)
   15dac:	844e                	mv	s0,s3
   15dae:	eaaff06f          	j	15458 <_vfprintf_r+0xbd6>
   15db2:	4b19                	li	s6,6
   15db4:	b2a1                	j	156fc <_vfprintf_r+0xe7a>
   15db6:	47d2                	lw	a5,20(sp)
   15db8:	4732                	lw	a4,12(sp)
   15dba:	439c                	lw	a5,0(a5)
   15dbc:	00e79023          	sh	a4,0(a5)
   15dc0:	aaaff06f          	j	1506a <_vfprintf_r+0x7e8>
   15dc4:	0b62                	slli	s6,s6,0x18
   15dc6:	418b5b13          	srai	s6,s6,0x18
   15dca:	41fb5d93          	srai	s11,s6,0x1f
   15dce:	87ee                	mv	a5,s11
   15dd0:	de5fe06f          	j	14bb4 <_vfprintf_r+0x332>
   15dd4:	0ffb7b13          	zext.b	s6,s6
   15dd8:	4d81                	li	s11,0
   15dda:	e3dfe06f          	j	14c16 <_vfprintf_r+0x394>
   15dde:	0ffb7b13          	zext.b	s6,s6
   15de2:	4d81                	li	s11,0
   15de4:	b075                	j	15690 <_vfprintf_r+0xe0e>
   15de6:	02d00793          	li	a5,45
   15dea:	0af103a3          	sb	a5,167(sp)
   15dee:	02d00713          	li	a4,45
   15df2:	b351                	j	15b76 <_vfprintf_r+0x12f4>
   15df4:	4522                	lw	a0,8(sp)
   15df6:	01d0                	addi	a2,sp,196
   15df8:	85a6                	mv	a1,s1
   15dfa:	2dc9                	jal	164cc <__sprint_r>
   15dfc:	ce3fe06f          	j	14ade <_vfprintf_r+0x25c>
   15e00:	4522                	lw	a0,8(sp)
   15e02:	01d0                	addi	a2,sp,196
   15e04:	85a6                	mv	a1,s1
   15e06:	25d9                	jal	164cc <__sprint_r>
   15e08:	cc051b63          	bnez	a0,152de <_vfprintf_r+0xa5c>
   15e0c:	553a                	lw	a0,172(sp)
   15e0e:	463e                	lw	a2,204(sp)
   15e10:	472e                	lw	a4,200(sp)
   15e12:	844e                	mv	s0,s3
   15e14:	b9dd                	j	15b0a <_vfprintf_r+0x1288>
   15e16:	01550733          	add	a4,a0,s5
   15e1a:	04700613          	li	a2,71
   15e1e:	010c                	addi	a1,sp,128
   15e20:	855a                	mv	a0,s6
   15e22:	d23a                	sw	a4,36(sp)
   15e24:	d032                	sw	a2,32(sp)
   15e26:	ce46                	sw	a7,28(sp)
   15e28:	c97e                	sw	t6,144(sp)
   15e2a:	cb7a                	sw	t5,148(sp)
   15e2c:	cd76                	sw	t4,152(sp)
   15e2e:	cf62                	sw	s8,156(sp)
   15e30:	c102                	sw	zero,128(sp)
   15e32:	c302                	sw	zero,132(sp)
   15e34:	c502                	sw	zero,136(sp)
   15e36:	c702                	sw	zero,140(sp)
   15e38:	176050ef          	jal	1afae <__eqtf2>
   15e3c:	48f2                	lw	a7,28(sp)
   15e3e:	5602                	lw	a2,32(sp)
   15e40:	5712                	lw	a4,36(sp)
   15e42:	36050a63          	beqz	a0,161b6 <_vfprintf_r+0x1934>
   15e46:	57fa                	lw	a5,188(sp)
   15e48:	00e7fc63          	bgeu	a5,a4,15e60 <_vfprintf_r+0x15de>
   15e4c:	03000593          	li	a1,48
   15e50:	00178693          	addi	a3,a5,1
   15e54:	df36                	sw	a3,188(sp)
   15e56:	00b78023          	sb	a1,0(a5)
   15e5a:	57fa                	lw	a5,188(sp)
   15e5c:	fee7eae3          	bltu	a5,a4,15e50 <_vfprintf_r+0x15ce>
   15e60:	573a                	lw	a4,172(sp)
   15e62:	ce3a                	sw	a4,28(sp)
   15e64:	41a787b3          	sub	a5,a5,s10
   15e68:	04700713          	li	a4,71
   15e6c:	d03e                	sw	a5,32(sp)
   15e6e:	98e60ae3          	beq	a2,a4,15802 <_vfprintf_r+0xf80>
   15e72:	04600713          	li	a4,70
   15e76:	38e60863          	beq	a2,a4,16206 <_vfprintf_r+0x1984>
   15e7a:	47f2                	lw	a5,28(sp)
   15e7c:	fff78713          	addi	a4,a5,-1
   15e80:	ba59                	j	15816 <_vfprintf_r+0xf94>
   15e82:	001a8693          	addi	a3,s5,1
   15e86:	4609                	li	a2,2
   15e88:	4522                	lw	a0,8(sp)
   15e8a:	09010b13          	addi	s6,sp,144
   15e8e:	1178                	addi	a4,sp,172
   15e90:	85da                	mv	a1,s6
   15e92:	0bc10813          	addi	a6,sp,188
   15e96:	191c                	addi	a5,sp,176
   15e98:	c8c6                	sw	a7,80(sp)
   15e9a:	d436                	sw	a3,40(sp)
   15e9c:	c97e                	sw	t6,144(sp)
   15e9e:	d27e                	sw	t6,36(sp)
   15ea0:	cb7a                	sw	t5,148(sp)
   15ea2:	d07a                	sw	t5,32(sp)
   15ea4:	cd76                	sw	t4,152(sp)
   15ea6:	ce76                	sw	t4,28(sp)
   15ea8:	cf62                	sw	s8,156(sp)
   15eaa:	43a010ef          	jal	172e4 <_ldtoa_r>
   15eae:	48c6                	lw	a7,80(sp)
   15eb0:	56a2                	lw	a3,40(sp)
   15eb2:	04600593          	li	a1,70
   15eb6:	fdf8f613          	andi	a2,a7,-33
   15eba:	4ef2                	lw	t4,28(sp)
   15ebc:	5f02                	lw	t5,32(sp)
   15ebe:	5f92                	lw	t6,36(sp)
   15ec0:	8d2a                	mv	s10,a0
   15ec2:	00d50733          	add	a4,a0,a3
   15ec6:	54b61563          	bne	a2,a1,16410 <_vfprintf_r+0x1b8e>
   15eca:	000d4503          	lbu	a0,0(s10)
   15ece:	03000593          	li	a1,48
   15ed2:	2eb50663          	beq	a0,a1,161be <_vfprintf_r+0x193c>
   15ed6:	56ba                	lw	a3,172(sp)
   15ed8:	010c                	addi	a1,sp,128
   15eda:	9736                	add	a4,a4,a3
   15edc:	b791                	j	15e20 <_vfprintf_r+0x159e>
   15ede:	09010b13          	addi	s6,sp,144
   15ee2:	010c                	addi	a1,sp,128
   15ee4:	1170                	addi	a2,sp,172
   15ee6:	855a                	mv	a0,s6
   15ee8:	c0c6                	sw	a7,64(sp)
   15eea:	c17e                	sw	t6,128(sp)
   15eec:	c37a                	sw	t5,132(sp)
   15eee:	c576                	sw	t4,136(sp)
   15ef0:	ce2e                	sw	a1,28(sp)
   15ef2:	c762                	sw	s8,140(sp)
   15ef4:	294010ef          	jal	17188 <frexpl>
   15ef8:	474a                	lw	a4,144(sp)
   15efa:	45f2                	lw	a1,28(sp)
   15efc:	1890                	addi	a2,sp,112
   15efe:	c13a                	sw	a4,128(sp)
   15f00:	475a                	lw	a4,148(sp)
   15f02:	855a                	mv	a0,s6
   15f04:	d882                	sw	zero,112(sp)
   15f06:	c33a                	sw	a4,132(sp)
   15f08:	476a                	lw	a4,152(sp)
   15f0a:	da82                	sw	zero,116(sp)
   15f0c:	dc82                	sw	zero,120(sp)
   15f0e:	c53a                	sw	a4,136(sp)
   15f10:	477a                	lw	a4,156(sp)
   15f12:	c73a                	sw	a4,140(sp)
   15f14:	3ffc0737          	lui	a4,0x3ffc0
   15f18:	deba                	sw	a4,124(sp)
   15f1a:	358050ef          	jal	1b272 <__multf3>
   15f1e:	45f2                	lw	a1,28(sp)
   15f20:	4f4a                	lw	t5,144(sp)
   15f22:	4eda                	lw	t4,148(sp)
   15f24:	486a                	lw	a6,152(sp)
   15f26:	855a                	mv	a0,s6
   15f28:	d42e                	sw	a1,40(sp)
   15f2a:	d27a                	sw	t5,36(sp)
   15f2c:	d076                	sw	t4,32(sp)
   15f2e:	ce42                	sw	a6,28(sp)
   15f30:	c102                	sw	zero,128(sp)
   15f32:	c302                	sw	zero,132(sp)
   15f34:	c502                	sw	zero,136(sp)
   15f36:	c702                	sw	zero,140(sp)
   15f38:	076050ef          	jal	1afae <__eqtf2>
   15f3c:	4dfa                	lw	s11,156(sp)
   15f3e:	4872                	lw	a6,28(sp)
   15f40:	5e82                	lw	t4,32(sp)
   15f42:	5f12                	lw	t5,36(sp)
   15f44:	55a2                	lw	a1,40(sp)
   15f46:	4886                	lw	a7,64(sp)
   15f48:	e119                	bnez	a0,15f4e <_vfprintf_r+0x16cc>
   15f4a:	4705                	li	a4,1
   15f4c:	d73a                	sw	a4,172(sp)
   15f4e:	06100713          	li	a4,97
   15f52:	44e88d63          	beq	a7,a4,163ac <_vfprintf_r+0x1b2a>
   15f56:	6775                	lui	a4,0x1d
   15f58:	4c070793          	addi	a5,a4,1216 # 1d4c0 <__clzsi2+0xa2>
   15f5c:	ce3e                	sw	a5,28(sp)
   15f5e:	d04a                	sw	s2,32(sp)
   15f60:	d466                	sw	s9,40(sp)
   15f62:	c0de                	sw	s7,64(sp)
   15f64:	c6a2                	sw	s0,76(sp)
   15f66:	896a                	mv	s2,s10
   15f68:	c8a6                	sw	s1,80(sp)
   15f6a:	caea                	sw	s10,84(sp)
   15f6c:	44f2                	lw	s1,28(sp)
   15f6e:	1afd                	addi	s5,s5,-1
   15f70:	d246                	sw	a7,36(sp)
   15f72:	8bfa                	mv	s7,t5
   15f74:	8c76                	mv	s8,t4
   15f76:	8cc2                	mv	s9,a6
   15f78:	8d6e                	mv	s10,s11
   15f7a:	842e                	mv	s0,a1
   15f7c:	a015                	j	15fa0 <_vfprintf_r+0x171e>
   15f7e:	85a2                	mv	a1,s0
   15f80:	855a                	mv	a0,s6
   15f82:	c95e                	sw	s7,144(sp)
   15f84:	cb62                	sw	s8,148(sp)
   15f86:	cd66                	sw	s9,152(sp)
   15f88:	cf6a                	sw	s10,156(sp)
   15f8a:	c102                	sw	zero,128(sp)
   15f8c:	c302                	sw	zero,132(sp)
   15f8e:	c502                	sw	zero,136(sp)
   15f90:	c702                	sw	zero,140(sp)
   15f92:	fffa8d93          	addi	s11,s5,-1
   15f96:	018050ef          	jal	1afae <__eqtf2>
   15f9a:	3c050c63          	beqz	a0,16372 <_vfprintf_r+0x1af0>
   15f9e:	8aee                	mv	s5,s11
   15fa0:	400307b7          	lui	a5,0x40030
   15fa4:	1890                	addi	a2,sp,112
   15fa6:	85a2                	mv	a1,s0
   15fa8:	855a                	mv	a0,s6
   15faa:	debe                	sw	a5,124(sp)
   15fac:	c15e                	sw	s7,128(sp)
   15fae:	c362                	sw	s8,132(sp)
   15fb0:	c566                	sw	s9,136(sp)
   15fb2:	c76a                	sw	s10,140(sp)
   15fb4:	d882                	sw	zero,112(sp)
   15fb6:	da82                	sw	zero,116(sp)
   15fb8:	dc82                	sw	zero,120(sp)
   15fba:	2b8050ef          	jal	1b272 <__multf3>
   15fbe:	855a                	mv	a0,s6
   15fc0:	0dc070ef          	jal	1d09c <__fixtfsi>
   15fc4:	85aa                	mv	a1,a0
   15fc6:	8daa                	mv	s11,a0
   15fc8:	855a                	mv	a0,s6
   15fca:	4d4a                	lw	s10,144(sp)
   15fcc:	4cda                	lw	s9,148(sp)
   15fce:	4c6a                	lw	s8,152(sp)
   15fd0:	4bfa                	lw	s7,156(sp)
   15fd2:	1ee070ef          	jal	1d1c0 <__floatsitf>
   15fd6:	46ca                	lw	a3,144(sp)
   15fd8:	1090                	addi	a2,sp,96
   15fda:	188c                	addi	a1,sp,112
   15fdc:	d0b6                	sw	a3,96(sp)
   15fde:	46da                	lw	a3,148(sp)
   15fe0:	8522                	mv	a0,s0
   15fe2:	d8ea                	sw	s10,112(sp)
   15fe4:	d2b6                	sw	a3,100(sp)
   15fe6:	46ea                	lw	a3,152(sp)
   15fe8:	dae6                	sw	s9,116(sp)
   15fea:	dce2                	sw	s8,120(sp)
   15fec:	d4b6                	sw	a3,104(sp)
   15fee:	46fa                	lw	a3,156(sp)
   15ff0:	dede                	sw	s7,124(sp)
   15ff2:	d6b6                	sw	a3,108(sp)
   15ff4:	71b050ef          	jal	1bf0e <__subtf3>
   15ff8:	01b486b3          	add	a3,s1,s11
   15ffc:	0006c603          	lbu	a2,0(a3)
   16000:	8fca                	mv	t6,s2
   16002:	0905                	addi	s2,s2,1
   16004:	4b8a                	lw	s7,128(sp)
   16006:	4c1a                	lw	s8,132(sp)
   16008:	4caa                	lw	s9,136(sp)
   1600a:	4d3a                	lw	s10,140(sp)
   1600c:	57fd                	li	a5,-1
   1600e:	fec90fa3          	sb	a2,-1(s2)
   16012:	f6fa96e3          	bne	s5,a5,15f7e <_vfprintf_r+0x16fc>
   16016:	5892                	lw	a7,36(sp)
   16018:	8f5e                	mv	t5,s7
   1601a:	8ee2                	mv	t4,s8
   1601c:	8866                	mv	a6,s9
   1601e:	85a2                	mv	a1,s0
   16020:	ccee                	sw	s11,88(sp)
   16022:	3ffe0ab7          	lui	s5,0x3ffe0
   16026:	8dea                	mv	s11,s10
   16028:	855a                	mv	a0,s6
   1602a:	cec6                	sw	a7,92(sp)
   1602c:	d27e                	sw	t6,36(sp)
   1602e:	44c6                	lw	s1,80(sp)
   16030:	4b86                	lw	s7,64(sp)
   16032:	5ca2                	lw	s9,40(sp)
   16034:	4436                	lw	s0,76(sp)
   16036:	c97a                	sw	t5,144(sp)
   16038:	c8fa                	sw	t5,80(sp)
   1603a:	cb76                	sw	t4,148(sp)
   1603c:	c6f6                	sw	t4,76(sp)
   1603e:	cd42                	sw	a6,152(sp)
   16040:	c0c2                	sw	a6,64(sp)
   16042:	cf6e                	sw	s11,156(sp)
   16044:	c102                	sw	zero,128(sp)
   16046:	c302                	sw	zero,132(sp)
   16048:	c502                	sw	zero,136(sp)
   1604a:	c756                	sw	s5,140(sp)
   1604c:	d42e                	sw	a1,40(sp)
   1604e:	04c050ef          	jal	1b09a <__getf2>
   16052:	8c4a                	mv	s8,s2
   16054:	4d56                	lw	s10,84(sp)
   16056:	5902                	lw	s2,32(sp)
   16058:	5f92                	lw	t6,36(sp)
   1605a:	48f6                	lw	a7,92(sp)
   1605c:	00a04e63          	bgtz	a0,16078 <_vfprintf_r+0x17f6>
   16060:	55a2                	lw	a1,40(sp)
   16062:	855a                	mv	a0,s6
   16064:	d046                	sw	a7,32(sp)
   16066:	749040ef          	jal	1afae <__eqtf2>
   1606a:	5882                	lw	a7,32(sp)
   1606c:	e529                	bnez	a0,160b6 <_vfprintf_r+0x1834>
   1606e:	47e6                	lw	a5,88(sp)
   16070:	5f92                	lw	t6,36(sp)
   16072:	0017f693          	andi	a3,a5,1
   16076:	c2a1                	beqz	a3,160b6 <_vfprintf_r+0x1834>
   16078:	47f2                	lw	a5,28(sp)
   1607a:	df7e                	sw	t6,188(sp)
   1607c:	fffc4603          	lbu	a2,-1(s8)
   16080:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x4001158b>
   16084:	86e2                	mv	a3,s8
   16086:	00b61e63          	bne	a2,a1,160a2 <_vfprintf_r+0x1820>
   1608a:	03000513          	li	a0,48
   1608e:	fea68fa3          	sb	a0,-1(a3)
   16092:	56fa                	lw	a3,188(sp)
   16094:	fff68793          	addi	a5,a3,-1
   16098:	df3e                	sw	a5,188(sp)
   1609a:	fff6c603          	lbu	a2,-1(a3)
   1609e:	fec588e3          	beq	a1,a2,1608e <_vfprintf_r+0x180c>
   160a2:	00160593          	addi	a1,a2,1
   160a6:	03900513          	li	a0,57
   160aa:	0ff5f593          	zext.b	a1,a1
   160ae:	02a60c63          	beq	a2,a0,160e6 <_vfprintf_r+0x1864>
   160b2:	feb68fa3          	sb	a1,-1(a3)
   160b6:	57ba                	lw	a5,172(sp)
   160b8:	41ac0733          	sub	a4,s8,s10
   160bc:	d03a                	sw	a4,32(sp)
   160be:	fff78713          	addi	a4,a5,-1
   160c2:	ce3e                	sw	a5,28(sp)
   160c4:	06100613          	li	a2,97
   160c8:	d73a                	sw	a4,172(sp)
   160ca:	07000693          	li	a3,112
   160ce:	00c88663          	beq	a7,a2,160da <_vfprintf_r+0x1858>
   160d2:	05000693          	li	a3,80
   160d6:	04100893          	li	a7,65
   160da:	4605                	li	a2,1
   160dc:	f42ff06f          	j	1581e <_vfprintf_r+0xf9c>
   160e0:	86d6                	mv	a3,s5
   160e2:	460d                	li	a2,3
   160e4:	b355                	j	15e88 <_vfprintf_r+0x1606>
   160e6:	47f2                	lw	a5,28(sp)
   160e8:	00a7c583          	lbu	a1,10(a5)
   160ec:	b7d9                	j	160b2 <_vfprintf_r+0x1830>
   160ee:	0a714703          	lbu	a4,167(sp)
   160f2:	4cb6                	lw	s9,76(sp)
   160f4:	4a81                	li	s5,0
   160f6:	c319                	beqz	a4,160fc <_vfprintf_r+0x187a>
   160f8:	af7fe06f          	j	14bee <_vfprintf_r+0x36c>
   160fc:	911fe06f          	j	14a0c <_vfprintf_r+0x18a>
   16100:	5782                	lw	a5,32(sp)
   16102:	4772                	lw	a4,28(sp)
   16104:	12f74763          	blt	a4,a5,16232 <_vfprintf_r+0x19b0>
   16108:	47f2                	lw	a5,28(sp)
   1610a:	001cf713          	andi	a4,s9,1
   1610e:	8b3e                	mv	s6,a5
   16110:	c701                	beqz	a4,16118 <_vfprintf_r+0x1896>
   16112:	5732                	lw	a4,44(sp)
   16114:	00e78b33          	add	s6,a5,a4
   16118:	400cfe13          	andi	t3,s9,1024
   1611c:	000e0563          	beqz	t3,16126 <_vfprintf_r+0x18a4>
   16120:	47f2                	lw	a5,28(sp)
   16122:	1ef04c63          	bgtz	a5,1631a <_vfprintf_r+0x1a98>
   16126:	fffb4693          	not	a3,s6
   1612a:	86fd                	srai	a3,a3,0x1f
   1612c:	00db7db3          	and	s11,s6,a3
   16130:	06700893          	li	a7,103
   16134:	d402                	sw	zero,40(sp)
   16136:	d202                	sw	zero,36(sp)
   16138:	f88ff06f          	j	158c0 <_vfprintf_r+0x103e>
   1613c:	01d0                	addi	a2,sp,196
   1613e:	85a6                	mv	a1,s1
   16140:	854a                	mv	a0,s2
   16142:	2669                	jal	164cc <__sprint_r>
   16144:	98051d63          	bnez	a0,152de <_vfprintf_r+0xa5c>
   16148:	000cc683          	lbu	a3,0(s9)
   1614c:	463e                	lw	a2,204(sp)
   1614e:	85ce                	mv	a1,s3
   16150:	4741                	li	a4,16
   16152:	481d                	li	a6,7
   16154:	9d36                	add	s10,s10,a3
   16156:	b69d                	j	15cbc <_vfprintf_r+0x143a>
   16158:	4525                	li	a0,9
   1615a:	83656ae3          	bltu	a0,s6,1598e <_vfprintf_r+0x110c>
   1615e:	b861                	j	159f6 <_vfprintf_r+0x1174>
   16160:	57fd                	li	a5,-1
   16162:	c63e                	sw	a5,12(sp)
   16164:	9adfe06f          	j	14b10 <_vfprintf_r+0x28e>
   16168:	02d00793          	li	a5,45
   1616c:	0af103a3          	sb	a5,167(sp)
   16170:	02d00713          	li	a4,45
   16174:	b2a1                	j	15abc <_vfprintf_r+0x123a>
   16176:	0a714703          	lbu	a4,167(sp)
   1617a:	ca62                	sw	s8,20(sp)
   1617c:	d402                	sw	zero,40(sp)
   1617e:	d202                	sw	zero,36(sp)
   16180:	ce02                	sw	zero,28(sp)
   16182:	8dd6                	mv	s11,s5
   16184:	8b56                	mv	s6,s5
   16186:	4a81                	li	s5,0
   16188:	c319                	beqz	a4,1618e <_vfprintf_r+0x190c>
   1618a:	a65fe06f          	j	14bee <_vfprintf_r+0x36c>
   1618e:	87ffe06f          	j	14a0c <_vfprintf_r+0x18a>
   16192:	4522                	lw	a0,8(sp)
   16194:	01d0                	addi	a2,sp,196
   16196:	85a6                	mv	a1,s1
   16198:	2e15                	jal	164cc <__sprint_r>
   1619a:	94051263          	bnez	a0,152de <_vfprintf_r+0xa5c>
   1619e:	5aba                	lw	s5,172(sp)
   161a0:	5782                	lw	a5,32(sp)
   161a2:	463e                	lw	a2,204(sp)
   161a4:	844e                	mv	s0,s3
   161a6:	41578ab3          	sub	s5,a5,s5
   161aa:	b12ff06f          	j	154bc <_vfprintf_r+0xc3a>
   161ae:	67f5                	lui	a5,0x1d
   161b0:	4a878d13          	addi	s10,a5,1192 # 1d4a8 <__clzsi2+0x8a>
   161b4:	ba19                	j	15aca <_vfprintf_r+0x1248>
   161b6:	57ba                	lw	a5,172(sp)
   161b8:	ce3e                	sw	a5,28(sp)
   161ba:	87ba                	mv	a5,a4
   161bc:	b165                	j	15e64 <_vfprintf_r+0x15e2>
   161be:	010c                	addi	a1,sp,128
   161c0:	855a                	mv	a0,s6
   161c2:	ceba                	sw	a4,92(sp)
   161c4:	ccb2                	sw	a2,88(sp)
   161c6:	cac6                	sw	a7,84(sp)
   161c8:	c8b6                	sw	a3,80(sp)
   161ca:	c97e                	sw	t6,144(sp)
   161cc:	d47e                	sw	t6,40(sp)
   161ce:	cb7a                	sw	t5,148(sp)
   161d0:	d27a                	sw	t5,36(sp)
   161d2:	cd76                	sw	t4,152(sp)
   161d4:	d076                	sw	t4,32(sp)
   161d6:	ce2e                	sw	a1,28(sp)
   161d8:	cf62                	sw	s8,156(sp)
   161da:	c102                	sw	zero,128(sp)
   161dc:	c302                	sw	zero,132(sp)
   161de:	c502                	sw	zero,136(sp)
   161e0:	c702                	sw	zero,140(sp)
   161e2:	5cd040ef          	jal	1afae <__eqtf2>
   161e6:	45f2                	lw	a1,28(sp)
   161e8:	5e82                	lw	t4,32(sp)
   161ea:	5f12                	lw	t5,36(sp)
   161ec:	5fa2                	lw	t6,40(sp)
   161ee:	46c6                	lw	a3,80(sp)
   161f0:	48d6                	lw	a7,84(sp)
   161f2:	4666                	lw	a2,88(sp)
   161f4:	4776                	lw	a4,92(sp)
   161f6:	1c051063          	bnez	a0,163b6 <_vfprintf_r+0x1b34>
   161fa:	57ba                	lw	a5,172(sp)
   161fc:	973e                	add	a4,a4,a5
   161fe:	ce3e                	sw	a5,28(sp)
   16200:	41a707b3          	sub	a5,a4,s10
   16204:	d03e                	sw	a5,32(sp)
   16206:	47f2                	lw	a5,28(sp)
   16208:	001cf713          	andi	a4,s9,1
   1620c:	01576733          	or	a4,a4,s5
   16210:	1af05963          	blez	a5,163c2 <_vfprintf_r+0x1b40>
   16214:	18071463          	bnez	a4,1639c <_vfprintf_r+0x1b1a>
   16218:	4b72                	lw	s6,28(sp)
   1621a:	06600893          	li	a7,102
   1621e:	400cfe13          	andi	t3,s9,1024
   16222:	0e0e1e63          	bnez	t3,1631e <_vfprintf_r+0x1a9c>
   16226:	fffb4693          	not	a3,s6
   1622a:	86fd                	srai	a3,a3,0x1f
   1622c:	00db7db3          	and	s11,s6,a3
   16230:	b711                	j	16134 <_vfprintf_r+0x18b2>
   16232:	5782                	lw	a5,32(sp)
   16234:	5732                	lw	a4,44(sp)
   16236:	06700893          	li	a7,103
   1623a:	00e78b33          	add	s6,a5,a4
   1623e:	47f2                	lw	a5,28(sp)
   16240:	fcf04fe3          	bgtz	a5,1621e <_vfprintf_r+0x199c>
   16244:	40fb0f33          	sub	t5,s6,a5
   16248:	001f0b13          	addi	s6,t5,1
   1624c:	fffb4693          	not	a3,s6
   16250:	86fd                	srai	a3,a3,0x1f
   16252:	00db7db3          	and	s11,s6,a3
   16256:	bdf9                	j	16134 <_vfprintf_r+0x18b2>
   16258:	8ee6                	mv	t4,s9
   1625a:	cf5fe06f          	j	14f4e <_vfprintf_r+0x6cc>
   1625e:	6879                	lui	a6,0x1e
   16260:	55c1                	li	a1,-16
   16262:	40a00ab3          	neg	s5,a0
   16266:	80880813          	addi	a6,a6,-2040 # 1d808 <zeroes.0>
   1626a:	04b55263          	bge	a0,a1,162ae <_vfprintf_r+0x1a2c>
   1626e:	ce4a                	sw	s2,28(sp)
   16270:	4b41                	li	s6,16
   16272:	4c1d                	li	s8,7
   16274:	8942                	mv	s2,a6
   16276:	a021                	j	1627e <_vfprintf_r+0x19fc>
   16278:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc156c>
   1627a:	035b5863          	bge	s6,s5,162aa <_vfprintf_r+0x1a28>
   1627e:	0641                	addi	a2,a2,16
   16280:	0705                	addi	a4,a4,1
   16282:	01242023          	sw	s2,0(s0)
   16286:	01642223          	sw	s6,4(s0)
   1628a:	c7b2                	sw	a2,204(sp)
   1628c:	c5ba                	sw	a4,200(sp)
   1628e:	0421                	addi	s0,s0,8
   16290:	feec54e3          	bge	s8,a4,16278 <_vfprintf_r+0x19f6>
   16294:	4522                	lw	a0,8(sp)
   16296:	01d0                	addi	a2,sp,196
   16298:	85a6                	mv	a1,s1
   1629a:	2c0d                	jal	164cc <__sprint_r>
   1629c:	c119                	beqz	a0,162a2 <_vfprintf_r+0x1a20>
   1629e:	840ff06f          	j	152de <_vfprintf_r+0xa5c>
   162a2:	463e                	lw	a2,204(sp)
   162a4:	472e                	lw	a4,200(sp)
   162a6:	844e                	mv	s0,s3
   162a8:	bfc1                	j	16278 <_vfprintf_r+0x19f6>
   162aa:	884a                	mv	a6,s2
   162ac:	4972                	lw	s2,28(sp)
   162ae:	9656                	add	a2,a2,s5
   162b0:	0705                	addi	a4,a4,1
   162b2:	01042023          	sw	a6,0(s0)
   162b6:	01542223          	sw	s5,4(s0)
   162ba:	c7b2                	sw	a2,204(sp)
   162bc:	c5ba                	sw	a4,200(sp)
   162be:	459d                	li	a1,7
   162c0:	f8e5d763          	bge	a1,a4,15a4e <_vfprintf_r+0x11cc>
   162c4:	4522                	lw	a0,8(sp)
   162c6:	01d0                	addi	a2,sp,196
   162c8:	85a6                	mv	a1,s1
   162ca:	2409                	jal	164cc <__sprint_r>
   162cc:	c119                	beqz	a0,162d2 <_vfprintf_r+0x1a50>
   162ce:	810ff06f          	j	152de <_vfprintf_r+0xa5c>
   162d2:	463e                	lw	a2,204(sp)
   162d4:	472e                	lw	a4,200(sp)
   162d6:	844e                	mv	s0,s3
   162d8:	837ff06f          	j	15b0e <_vfprintf_r+0x128c>
   162dc:	0b610693          	addi	a3,sp,182
   162e0:	e619                	bnez	a2,162ee <_vfprintf_r+0x1a6c>
   162e2:	03000693          	li	a3,48
   162e6:	0ad10b23          	sb	a3,182(sp)
   162ea:	0b710693          	addi	a3,sp,183
   162ee:	0b1c                	addi	a5,sp,400
   162f0:	40f68633          	sub	a2,a3,a5
   162f4:	03070713          	addi	a4,a4,48
   162f8:	0dd60793          	addi	a5,a2,221
   162fc:	00e68023          	sb	a4,0(a3)
   16300:	c0be                	sw	a5,64(sp)
   16302:	d92ff06f          	j	15894 <_vfprintf_r+0x1012>
   16306:	c802                	sw	zero,16(sp)
   16308:	4a99                	li	s5,6
   1630a:	9effe06f          	j	14cf8 <_vfprintf_r+0x476>
   1630e:	001cf713          	andi	a4,s9,1
   16312:	d8070a63          	beqz	a4,158a6 <_vfprintf_r+0x1024>
   16316:	d8cff06f          	j	158a2 <_vfprintf_r+0x1020>
   1631a:	06700893          	li	a7,103
   1631e:	5672                	lw	a2,60(sp)
   16320:	0ff00693          	li	a3,255
   16324:	00064703          	lbu	a4,0(a2)
   16328:	0ed70163          	beq	a4,a3,1640a <_vfprintf_r+0x1b88>
   1632c:	47f2                	lw	a5,28(sp)
   1632e:	4501                	li	a0,0
   16330:	4581                	li	a1,0
   16332:	00f75a63          	bge	a4,a5,16346 <_vfprintf_r+0x1ac4>
   16336:	8f99                	sub	a5,a5,a4
   16338:	00164703          	lbu	a4,1(a2)
   1633c:	c71d                	beqz	a4,1636a <_vfprintf_r+0x1ae8>
   1633e:	0585                	addi	a1,a1,1
   16340:	0605                	addi	a2,a2,1
   16342:	fed718e3          	bne	a4,a3,16332 <_vfprintf_r+0x1ab0>
   16346:	de32                	sw	a2,60(sp)
   16348:	d22e                	sw	a1,36(sp)
   1634a:	d42a                	sw	a0,40(sp)
   1634c:	ce3e                	sw	a5,28(sp)
   1634e:	57a2                	lw	a5,40(sp)
   16350:	5712                	lw	a4,36(sp)
   16352:	973e                	add	a4,a4,a5
   16354:	47a6                	lw	a5,72(sp)
   16356:	02f70733          	mul	a4,a4,a5
   1635a:	9b3a                	add	s6,s6,a4
   1635c:	fffb4693          	not	a3,s6
   16360:	86fd                	srai	a3,a3,0x1f
   16362:	00db7db3          	and	s11,s6,a3
   16366:	d5aff06f          	j	158c0 <_vfprintf_r+0x103e>
   1636a:	00064703          	lbu	a4,0(a2)
   1636e:	0505                	addi	a0,a0,1
   16370:	bfc9                	j	16342 <_vfprintf_r+0x1ac0>
   16372:	8c4a                	mv	s8,s2
   16374:	001a8693          	addi	a3,s5,1
   16378:	5892                	lw	a7,36(sp)
   1637a:	5ca2                	lw	s9,40(sp)
   1637c:	4b86                	lw	s7,64(sp)
   1637e:	4436                	lw	s0,76(sp)
   16380:	5902                	lw	s2,32(sp)
   16382:	44c6                	lw	s1,80(sp)
   16384:	4d56                	lw	s10,84(sp)
   16386:	96e2                	add	a3,a3,s8
   16388:	03000613          	li	a2,48
   1638c:	d20ac5e3          	bltz	s5,160b6 <_vfprintf_r+0x1834>
   16390:	0c05                	addi	s8,s8,1
   16392:	fecc0fa3          	sb	a2,-1(s8)
   16396:	fedc1de3          	bne	s8,a3,16390 <_vfprintf_r+0x1b0e>
   1639a:	bb31                	j	160b6 <_vfprintf_r+0x1834>
   1639c:	5732                	lw	a4,44(sp)
   1639e:	06600893          	li	a7,102
   163a2:	00ea8f33          	add	t5,s5,a4
   163a6:	00ff0b33          	add	s6,t5,a5
   163aa:	bd95                	j	1621e <_vfprintf_r+0x199c>
   163ac:	6775                	lui	a4,0x1d
   163ae:	4ac70793          	addi	a5,a4,1196 # 1d4ac <__clzsi2+0x8e>
   163b2:	ce3e                	sw	a5,28(sp)
   163b4:	b66d                	j	15f5e <_vfprintf_r+0x16dc>
   163b6:	4505                	li	a0,1
   163b8:	40d506b3          	sub	a3,a0,a3
   163bc:	d736                	sw	a3,172(sp)
   163be:	9736                	add	a4,a4,a3
   163c0:	b485                	j	15e20 <_vfprintf_r+0x159e>
   163c2:	e711                	bnez	a4,163ce <_vfprintf_r+0x1b4c>
   163c4:	4d85                	li	s11,1
   163c6:	06600893          	li	a7,102
   163ca:	4b05                	li	s6,1
   163cc:	b3a5                	j	16134 <_vfprintf_r+0x18b2>
   163ce:	57b2                	lw	a5,44(sp)
   163d0:	06600893          	li	a7,102
   163d4:	00178f13          	addi	t5,a5,1
   163d8:	015f0b33          	add	s6,t5,s5
   163dc:	fffb4693          	not	a3,s6
   163e0:	86fd                	srai	a3,a3,0x1f
   163e2:	00db7db3          	and	s11,s6,a3
   163e6:	b3b9                	j	16134 <_vfprintf_r+0x18b2>
   163e8:	4789                	li	a5,2
   163ea:	c0be                	sw	a5,64(sp)
   163ec:	ca8ff06f          	j	15894 <_vfprintf_r+0x1012>
   163f0:	47d2                	lw	a5,20(sp)
   163f2:	0007aa83          	lw	s5,0(a5)
   163f6:	0791                	addi	a5,a5,4
   163f8:	000ad363          	bgez	s5,163fe <_vfprintf_r+0x1b7c>
   163fc:	5afd                	li	s5,-1
   163fe:	00194883          	lbu	a7,1(s2)
   16402:	ca3e                	sw	a5,20(sp)
   16404:	8936                	mv	s2,a3
   16406:	dacfe06f          	j	149b2 <_vfprintf_r+0x130>
   1640a:	d402                	sw	zero,40(sp)
   1640c:	d202                	sw	zero,36(sp)
   1640e:	b781                	j	1634e <_vfprintf_r+0x1acc>
   16410:	04500613          	li	a2,69
   16414:	010c                	addi	a1,sp,128
   16416:	b429                	j	15e20 <_vfprintf_r+0x159e>
   16418:	00c4d783          	lhu	a5,12(s1)
   1641c:	0407e793          	ori	a5,a5,64
   16420:	00f49623          	sh	a5,12(s1)
   16424:	ebafe06f          	j	14ade <_vfprintf_r+0x25c>

00016428 <vfprintf>:
   16428:	87aa                	mv	a5,a0
   1642a:	f3c1a503          	lw	a0,-196(gp) # 1e74c <_impure_ptr>
   1642e:	86b2                	mv	a3,a2
   16430:	862e                	mv	a2,a1
   16432:	85be                	mv	a1,a5
   16434:	c4efe06f          	j	14882 <_vfprintf_r>

00016438 <__sbprintf>:
   16438:	b8010113          	addi	sp,sp,-1152
   1643c:	00c59783          	lh	a5,12(a1)
   16440:	00e5d703          	lhu	a4,14(a1)
   16444:	46812c23          	sw	s0,1144(sp)
   16448:	842e                	mv	s0,a1
   1644a:	65c1                	lui	a1,0x10
   1644c:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   1644e:	06442e03          	lw	t3,100(s0)
   16452:	01c42303          	lw	t1,28(s0)
   16456:	02442883          	lw	a7,36(s0)
   1645a:	0742                	slli	a4,a4,0x10
   1645c:	8fed                	and	a5,a5,a1
   1645e:	8fd9                	or	a5,a5,a4
   16460:	40000813          	li	a6,1024
   16464:	ca3e                	sw	a5,20(sp)
   16466:	002c                	addi	a1,sp,8
   16468:	189c                	addi	a5,sp,112
   1646a:	46912a23          	sw	s1,1140(sp)
   1646e:	47212823          	sw	s2,1136(sp)
   16472:	46112e23          	sw	ra,1148(sp)
   16476:	892a                	mv	s2,a0
   16478:	d6f2                	sw	t3,108(sp)
   1647a:	d21a                	sw	t1,36(sp)
   1647c:	d646                	sw	a7,44(sp)
   1647e:	c43e                	sw	a5,8(sp)
   16480:	cc3e                	sw	a5,24(sp)
   16482:	c842                	sw	a6,16(sp)
   16484:	ce42                	sw	a6,28(sp)
   16486:	d002                	sw	zero,32(sp)
   16488:	bfafe0ef          	jal	14882 <_vfprintf_r>
   1648c:	84aa                	mv	s1,a0
   1648e:	02055963          	bgez	a0,164c0 <__sbprintf+0x88>
   16492:	01415783          	lhu	a5,20(sp)
   16496:	0407f793          	andi	a5,a5,64
   1649a:	c799                	beqz	a5,164a8 <__sbprintf+0x70>
   1649c:	00c45783          	lhu	a5,12(s0)
   164a0:	0407e793          	ori	a5,a5,64
   164a4:	00f41623          	sh	a5,12(s0)
   164a8:	47c12083          	lw	ra,1148(sp)
   164ac:	47812403          	lw	s0,1144(sp)
   164b0:	47012903          	lw	s2,1136(sp)
   164b4:	8526                	mv	a0,s1
   164b6:	47412483          	lw	s1,1140(sp)
   164ba:	48010113          	addi	sp,sp,1152
   164be:	8082                	ret
   164c0:	002c                	addi	a1,sp,8
   164c2:	854a                	mv	a0,s2
   164c4:	2c9d                	jal	1673a <_fflush_r>
   164c6:	d571                	beqz	a0,16492 <__sbprintf+0x5a>
   164c8:	54fd                	li	s1,-1
   164ca:	b7e1                	j	16492 <__sbprintf+0x5a>

000164cc <__sprint_r>:
   164cc:	461c                	lw	a5,8(a2)
   164ce:	1141                	addi	sp,sp,-16
   164d0:	c422                	sw	s0,8(sp)
   164d2:	c606                	sw	ra,12(sp)
   164d4:	8432                	mv	s0,a2
   164d6:	eb81                	bnez	a5,164e6 <__sprint_r+0x1a>
   164d8:	40b2                	lw	ra,12(sp)
   164da:	00042223          	sw	zero,4(s0)
   164de:	4422                	lw	s0,8(sp)
   164e0:	4501                	li	a0,0
   164e2:	0141                	addi	sp,sp,16
   164e4:	8082                	ret
   164e6:	2ce9                	jal	167c0 <__sfvwrite_r>
   164e8:	40b2                	lw	ra,12(sp)
   164ea:	00042423          	sw	zero,8(s0)
   164ee:	00042223          	sw	zero,4(s0)
   164f2:	4422                	lw	s0,8(sp)
   164f4:	0141                	addi	sp,sp,16
   164f6:	8082                	ret

000164f8 <_fclose_r>:
   164f8:	1141                	addi	sp,sp,-16
   164fa:	c606                	sw	ra,12(sp)
   164fc:	c04a                	sw	s2,0(sp)
   164fe:	cd89                	beqz	a1,16518 <_fclose_r+0x20>
   16500:	c422                	sw	s0,8(sp)
   16502:	c226                	sw	s1,4(sp)
   16504:	842e                	mv	s0,a1
   16506:	84aa                	mv	s1,a0
   16508:	c119                	beqz	a0,1650e <_fclose_r+0x16>
   1650a:	595c                	lw	a5,52(a0)
   1650c:	c7d1                	beqz	a5,16598 <_fclose_r+0xa0>
   1650e:	00c41783          	lh	a5,12(s0)
   16512:	eb89                	bnez	a5,16524 <_fclose_r+0x2c>
   16514:	4422                	lw	s0,8(sp)
   16516:	4492                	lw	s1,4(sp)
   16518:	40b2                	lw	ra,12(sp)
   1651a:	4901                	li	s2,0
   1651c:	854a                	mv	a0,s2
   1651e:	4902                	lw	s2,0(sp)
   16520:	0141                	addi	sp,sp,16
   16522:	8082                	ret
   16524:	85a2                	mv	a1,s0
   16526:	8526                	mv	a0,s1
   16528:	28bd                	jal	165a6 <__sflush_r>
   1652a:	545c                	lw	a5,44(s0)
   1652c:	892a                	mv	s2,a0
   1652e:	c791                	beqz	a5,1653a <_fclose_r+0x42>
   16530:	4c4c                	lw	a1,28(s0)
   16532:	8526                	mv	a0,s1
   16534:	9782                	jalr	a5
   16536:	04054663          	bltz	a0,16582 <_fclose_r+0x8a>
   1653a:	00c45783          	lhu	a5,12(s0)
   1653e:	0807f793          	andi	a5,a5,128
   16542:	e7b1                	bnez	a5,1658e <_fclose_r+0x96>
   16544:	580c                	lw	a1,48(s0)
   16546:	c991                	beqz	a1,1655a <_fclose_r+0x62>
   16548:	04040793          	addi	a5,s0,64
   1654c:	00f58563          	beq	a1,a5,16556 <_fclose_r+0x5e>
   16550:	8526                	mv	a0,s1
   16552:	b67fd0ef          	jal	140b8 <_free_r>
   16556:	02042823          	sw	zero,48(s0)
   1655a:	406c                	lw	a1,68(s0)
   1655c:	c591                	beqz	a1,16568 <_fclose_r+0x70>
   1655e:	8526                	mv	a0,s1
   16560:	b59fd0ef          	jal	140b8 <_free_r>
   16564:	04042223          	sw	zero,68(s0)
   16568:	c3afd0ef          	jal	139a2 <__sfp_lock_acquire>
   1656c:	00041623          	sh	zero,12(s0)
   16570:	c34fd0ef          	jal	139a4 <__sfp_lock_release>
   16574:	40b2                	lw	ra,12(sp)
   16576:	4422                	lw	s0,8(sp)
   16578:	4492                	lw	s1,4(sp)
   1657a:	854a                	mv	a0,s2
   1657c:	4902                	lw	s2,0(sp)
   1657e:	0141                	addi	sp,sp,16
   16580:	8082                	ret
   16582:	00c45783          	lhu	a5,12(s0)
   16586:	597d                	li	s2,-1
   16588:	0807f793          	andi	a5,a5,128
   1658c:	dfc5                	beqz	a5,16544 <_fclose_r+0x4c>
   1658e:	480c                	lw	a1,16(s0)
   16590:	8526                	mv	a0,s1
   16592:	b27fd0ef          	jal	140b8 <_free_r>
   16596:	b77d                	j	16544 <_fclose_r+0x4c>
   16598:	bf4fd0ef          	jal	1398c <__sinit>
   1659c:	bf8d                	j	1650e <_fclose_r+0x16>

0001659e <fclose>:
   1659e:	85aa                	mv	a1,a0
   165a0:	f3c1a503          	lw	a0,-196(gp) # 1e74c <_impure_ptr>
   165a4:	bf91                	j	164f8 <_fclose_r>

000165a6 <__sflush_r>:
   165a6:	00c59703          	lh	a4,12(a1)
   165aa:	1101                	addi	sp,sp,-32
   165ac:	cc22                	sw	s0,24(sp)
   165ae:	c64e                	sw	s3,12(sp)
   165b0:	ce06                	sw	ra,28(sp)
   165b2:	00877793          	andi	a5,a4,8
   165b6:	842e                	mv	s0,a1
   165b8:	89aa                	mv	s3,a0
   165ba:	e7e1                	bnez	a5,16682 <__sflush_r+0xdc>
   165bc:	6785                	lui	a5,0x1
   165be:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   165c2:	41d4                	lw	a3,4(a1)
   165c4:	8fd9                	or	a5,a5,a4
   165c6:	00f59623          	sh	a5,12(a1)
   165ca:	10d05563          	blez	a3,166d4 <__sflush_r+0x12e>
   165ce:	02842803          	lw	a6,40(s0)
   165d2:	0a080263          	beqz	a6,16676 <__sflush_r+0xd0>
   165d6:	ca26                	sw	s1,20(sp)
   165d8:	01371693          	slli	a3,a4,0x13
   165dc:	0009a483          	lw	s1,0(s3)
   165e0:	0009a023          	sw	zero,0(s3)
   165e4:	4c4c                	lw	a1,28(s0)
   165e6:	0e06ce63          	bltz	a3,166e2 <__sflush_r+0x13c>
   165ea:	4601                	li	a2,0
   165ec:	4685                	li	a3,1
   165ee:	854e                	mv	a0,s3
   165f0:	9802                	jalr	a6
   165f2:	57fd                	li	a5,-1
   165f4:	862a                	mv	a2,a0
   165f6:	10f50f63          	beq	a0,a5,16714 <__sflush_r+0x16e>
   165fa:	00c41783          	lh	a5,12(s0)
   165fe:	02842803          	lw	a6,40(s0)
   16602:	4c4c                	lw	a1,28(s0)
   16604:	8b91                	andi	a5,a5,4
   16606:	c799                	beqz	a5,16614 <__sflush_r+0x6e>
   16608:	4058                	lw	a4,4(s0)
   1660a:	581c                	lw	a5,48(s0)
   1660c:	8e19                	sub	a2,a2,a4
   1660e:	c399                	beqz	a5,16614 <__sflush_r+0x6e>
   16610:	5c5c                	lw	a5,60(s0)
   16612:	8e1d                	sub	a2,a2,a5
   16614:	4681                	li	a3,0
   16616:	854e                	mv	a0,s3
   16618:	9802                	jalr	a6
   1661a:	57fd                	li	a5,-1
   1661c:	0cf51563          	bne	a0,a5,166e6 <__sflush_r+0x140>
   16620:	0009a683          	lw	a3,0(s3)
   16624:	47f5                	li	a5,29
   16626:	00c41703          	lh	a4,12(s0)
   1662a:	10d7e163          	bltu	a5,a3,1672c <__sflush_r+0x186>
   1662e:	204007b7          	lui	a5,0x20400
   16632:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e157d>
   16634:	00d7d7b3          	srl	a5,a5,a3
   16638:	8b85                	andi	a5,a5,1
   1663a:	cbed                	beqz	a5,1672c <__sflush_r+0x186>
   1663c:	4810                	lw	a2,16(s0)
   1663e:	77fd                	lui	a5,0xfffff
   16640:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe0d7b>
   16644:	8ff9                	and	a5,a5,a4
   16646:	00f41623          	sh	a5,12(s0)
   1664a:	00042223          	sw	zero,4(s0)
   1664e:	c010                	sw	a2,0(s0)
   16650:	01371793          	slli	a5,a4,0x13
   16654:	0007d363          	bgez	a5,1665a <__sflush_r+0xb4>
   16658:	c6dd                	beqz	a3,16706 <__sflush_r+0x160>
   1665a:	580c                	lw	a1,48(s0)
   1665c:	0099a023          	sw	s1,0(s3)
   16660:	c9c5                	beqz	a1,16710 <__sflush_r+0x16a>
   16662:	04040793          	addi	a5,s0,64
   16666:	00f58563          	beq	a1,a5,16670 <__sflush_r+0xca>
   1666a:	854e                	mv	a0,s3
   1666c:	a4dfd0ef          	jal	140b8 <_free_r>
   16670:	44d2                	lw	s1,20(sp)
   16672:	02042823          	sw	zero,48(s0)
   16676:	4501                	li	a0,0
   16678:	40f2                	lw	ra,28(sp)
   1667a:	4462                	lw	s0,24(sp)
   1667c:	49b2                	lw	s3,12(sp)
   1667e:	6105                	addi	sp,sp,32
   16680:	8082                	ret
   16682:	c84a                	sw	s2,16(sp)
   16684:	0105a903          	lw	s2,16(a1)
   16688:	04090b63          	beqz	s2,166de <__sflush_r+0x138>
   1668c:	ca26                	sw	s1,20(sp)
   1668e:	4184                	lw	s1,0(a1)
   16690:	8b0d                	andi	a4,a4,3
   16692:	0125a023          	sw	s2,0(a1)
   16696:	412484b3          	sub	s1,s1,s2
   1669a:	4781                	li	a5,0
   1669c:	e311                	bnez	a4,166a0 <__sflush_r+0xfa>
   1669e:	49dc                	lw	a5,20(a1)
   166a0:	c41c                	sw	a5,8(s0)
   166a2:	00904663          	bgtz	s1,166ae <__sflush_r+0x108>
   166a6:	a81d                	j	166dc <__sflush_r+0x136>
   166a8:	992a                	add	s2,s2,a0
   166aa:	02905963          	blez	s1,166dc <__sflush_r+0x136>
   166ae:	505c                	lw	a5,36(s0)
   166b0:	4c4c                	lw	a1,28(s0)
   166b2:	86a6                	mv	a3,s1
   166b4:	864a                	mv	a2,s2
   166b6:	854e                	mv	a0,s3
   166b8:	9782                	jalr	a5
   166ba:	8c89                	sub	s1,s1,a0
   166bc:	fea046e3          	bgtz	a0,166a8 <__sflush_r+0x102>
   166c0:	00c41703          	lh	a4,12(s0)
   166c4:	4942                	lw	s2,16(sp)
   166c6:	04076713          	ori	a4,a4,64
   166ca:	44d2                	lw	s1,20(sp)
   166cc:	00e41623          	sh	a4,12(s0)
   166d0:	557d                	li	a0,-1
   166d2:	b75d                	j	16678 <__sflush_r+0xd2>
   166d4:	5dd4                	lw	a3,60(a1)
   166d6:	eed04ce3          	bgtz	a3,165ce <__sflush_r+0x28>
   166da:	bf71                	j	16676 <__sflush_r+0xd0>
   166dc:	44d2                	lw	s1,20(sp)
   166de:	4942                	lw	s2,16(sp)
   166e0:	bf59                	j	16676 <__sflush_r+0xd0>
   166e2:	4830                	lw	a2,80(s0)
   166e4:	b705                	j	16604 <__sflush_r+0x5e>
   166e6:	00c41703          	lh	a4,12(s0)
   166ea:	4814                	lw	a3,16(s0)
   166ec:	77fd                	lui	a5,0xfffff
   166ee:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe0d7b>
   166f2:	8ff9                	and	a5,a5,a4
   166f4:	00f41623          	sh	a5,12(s0)
   166f8:	00042223          	sw	zero,4(s0)
   166fc:	c014                	sw	a3,0(s0)
   166fe:	01371793          	slli	a5,a4,0x13
   16702:	f407dce3          	bgez	a5,1665a <__sflush_r+0xb4>
   16706:	580c                	lw	a1,48(s0)
   16708:	c828                	sw	a0,80(s0)
   1670a:	0099a023          	sw	s1,0(s3)
   1670e:	f9b1                	bnez	a1,16662 <__sflush_r+0xbc>
   16710:	44d2                	lw	s1,20(sp)
   16712:	b795                	j	16676 <__sflush_r+0xd0>
   16714:	0009a783          	lw	a5,0(s3)
   16718:	ee0781e3          	beqz	a5,165fa <__sflush_r+0x54>
   1671c:	4775                	li	a4,29
   1671e:	00e78a63          	beq	a5,a4,16732 <__sflush_r+0x18c>
   16722:	4759                	li	a4,22
   16724:	00e78763          	beq	a5,a4,16732 <__sflush_r+0x18c>
   16728:	00c41703          	lh	a4,12(s0)
   1672c:	04076713          	ori	a4,a4,64
   16730:	bf69                	j	166ca <__sflush_r+0x124>
   16732:	0099a023          	sw	s1,0(s3)
   16736:	44d2                	lw	s1,20(sp)
   16738:	bf3d                	j	16676 <__sflush_r+0xd0>

0001673a <_fflush_r>:
   1673a:	1101                	addi	sp,sp,-32
   1673c:	cc22                	sw	s0,24(sp)
   1673e:	ce06                	sw	ra,28(sp)
   16740:	842a                	mv	s0,a0
   16742:	c119                	beqz	a0,16748 <_fflush_r+0xe>
   16744:	595c                	lw	a5,52(a0)
   16746:	cf91                	beqz	a5,16762 <_fflush_r+0x28>
   16748:	00c59783          	lh	a5,12(a1)
   1674c:	e791                	bnez	a5,16758 <_fflush_r+0x1e>
   1674e:	40f2                	lw	ra,28(sp)
   16750:	4462                	lw	s0,24(sp)
   16752:	4501                	li	a0,0
   16754:	6105                	addi	sp,sp,32
   16756:	8082                	ret
   16758:	8522                	mv	a0,s0
   1675a:	4462                	lw	s0,24(sp)
   1675c:	40f2                	lw	ra,28(sp)
   1675e:	6105                	addi	sp,sp,32
   16760:	b599                	j	165a6 <__sflush_r>
   16762:	c62e                	sw	a1,12(sp)
   16764:	a28fd0ef          	jal	1398c <__sinit>
   16768:	45b2                	lw	a1,12(sp)
   1676a:	bff9                	j	16748 <_fflush_r+0xe>

0001676c <fflush>:
   1676c:	cd05                	beqz	a0,167a4 <fflush+0x38>
   1676e:	85aa                	mv	a1,a0
   16770:	f3c1a503          	lw	a0,-196(gp) # 1e74c <_impure_ptr>
   16774:	c119                	beqz	a0,1677a <fflush+0xe>
   16776:	595c                	lw	a5,52(a0)
   16778:	c799                	beqz	a5,16786 <fflush+0x1a>
   1677a:	00c59783          	lh	a5,12(a1)
   1677e:	e399                	bnez	a5,16784 <fflush+0x18>
   16780:	4501                	li	a0,0
   16782:	8082                	ret
   16784:	b50d                	j	165a6 <__sflush_r>
   16786:	1101                	addi	sp,sp,-32
   16788:	c62e                	sw	a1,12(sp)
   1678a:	c42a                	sw	a0,8(sp)
   1678c:	ce06                	sw	ra,28(sp)
   1678e:	9fefd0ef          	jal	1398c <__sinit>
   16792:	45b2                	lw	a1,12(sp)
   16794:	4522                	lw	a0,8(sp)
   16796:	00c59783          	lh	a5,12(a1)
   1679a:	e385                	bnez	a5,167ba <fflush+0x4e>
   1679c:	40f2                	lw	ra,28(sp)
   1679e:	4501                	li	a0,0
   167a0:	6105                	addi	sp,sp,32
   167a2:	8082                	ret
   167a4:	6679                	lui	a2,0x1e
   167a6:	65d9                	lui	a1,0x16
   167a8:	6579                	lui	a0,0x1e
   167aa:	01060613          	addi	a2,a2,16 # 1e010 <__sglue>
   167ae:	73a58593          	addi	a1,a1,1850 # 1673a <_fflush_r>
   167b2:	02050513          	addi	a0,a0,32 # 1e020 <_impure_data>
   167b6:	a10fd06f          	j	139c6 <_fwalk_sglue>
   167ba:	40f2                	lw	ra,28(sp)
   167bc:	6105                	addi	sp,sp,32
   167be:	b3e5                	j	165a6 <__sflush_r>

000167c0 <__sfvwrite_r>:
   167c0:	461c                	lw	a5,8(a2)
   167c2:	1c078c63          	beqz	a5,1699a <__sfvwrite_r+0x1da>
   167c6:	00c59683          	lh	a3,12(a1)
   167ca:	7179                	addi	sp,sp,-48
   167cc:	d422                	sw	s0,40(sp)
   167ce:	cc52                	sw	s4,24(sp)
   167d0:	c85a                	sw	s6,16(sp)
   167d2:	d606                	sw	ra,44(sp)
   167d4:	0086f793          	andi	a5,a3,8
   167d8:	8b32                	mv	s6,a2
   167da:	8a2a                	mv	s4,a0
   167dc:	842e                	mv	s0,a1
   167de:	c7ad                	beqz	a5,16848 <__sfvwrite_r+0x88>
   167e0:	499c                	lw	a5,16(a1)
   167e2:	c3bd                	beqz	a5,16848 <__sfvwrite_r+0x88>
   167e4:	d226                	sw	s1,36(sp)
   167e6:	d04a                	sw	s2,32(sp)
   167e8:	ce4e                	sw	s3,28(sp)
   167ea:	ca56                	sw	s5,20(sp)
   167ec:	0026f793          	andi	a5,a3,2
   167f0:	000b2483          	lw	s1,0(s6)
   167f4:	cbb5                	beqz	a5,16868 <__sfvwrite_r+0xa8>
   167f6:	505c                	lw	a5,36(s0)
   167f8:	4c4c                	lw	a1,28(s0)
   167fa:	80000ab7          	lui	s5,0x80000
   167fe:	4981                	li	s3,0
   16800:	4901                	li	s2,0
   16802:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe117c>
   16806:	864e                	mv	a2,s3
   16808:	8552                	mv	a0,s4
   1680a:	02090963          	beqz	s2,1683c <__sfvwrite_r+0x7c>
   1680e:	86ca                	mv	a3,s2
   16810:	012af363          	bgeu	s5,s2,16816 <__sfvwrite_r+0x56>
   16814:	86d6                	mv	a3,s5
   16816:	9782                	jalr	a5
   16818:	2ca05c63          	blez	a0,16af0 <__sfvwrite_r+0x330>
   1681c:	008b2783          	lw	a5,8(s6)
   16820:	99aa                	add	s3,s3,a0
   16822:	40a90933          	sub	s2,s2,a0
   16826:	8f89                	sub	a5,a5,a0
   16828:	00fb2423          	sw	a5,8(s6)
   1682c:	12078563          	beqz	a5,16956 <__sfvwrite_r+0x196>
   16830:	505c                	lw	a5,36(s0)
   16832:	4c4c                	lw	a1,28(s0)
   16834:	864e                	mv	a2,s3
   16836:	8552                	mv	a0,s4
   16838:	fc091be3          	bnez	s2,1680e <__sfvwrite_r+0x4e>
   1683c:	0004a983          	lw	s3,0(s1)
   16840:	0044a903          	lw	s2,4(s1)
   16844:	04a1                	addi	s1,s1,8
   16846:	b7c1                	j	16806 <__sfvwrite_r+0x46>
   16848:	85a2                	mv	a1,s0
   1684a:	8552                	mv	a0,s4
   1684c:	21a5                	jal	16cb4 <__swsetup_r>
   1684e:	12051f63          	bnez	a0,1698c <__sfvwrite_r+0x1cc>
   16852:	00c41683          	lh	a3,12(s0)
   16856:	d226                	sw	s1,36(sp)
   16858:	d04a                	sw	s2,32(sp)
   1685a:	ce4e                	sw	s3,28(sp)
   1685c:	ca56                	sw	s5,20(sp)
   1685e:	0026f793          	andi	a5,a3,2
   16862:	000b2483          	lw	s1,0(s6)
   16866:	fbc1                	bnez	a5,167f6 <__sfvwrite_r+0x36>
   16868:	c65e                	sw	s7,12(sp)
   1686a:	c462                	sw	s8,8(sp)
   1686c:	0016f793          	andi	a5,a3,1
   16870:	12079763          	bnez	a5,1699e <__sfvwrite_r+0x1de>
   16874:	401c                	lw	a5,0(s0)
   16876:	4418                	lw	a4,8(s0)
   16878:	80000ab7          	lui	s5,0x80000
   1687c:	c266                	sw	s9,4(sp)
   1687e:	4b81                	li	s7,0
   16880:	4981                	li	s3,0
   16882:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe157b>
   16884:	853e                	mv	a0,a5
   16886:	8c3a                	mv	s8,a4
   16888:	0a098e63          	beqz	s3,16944 <__sfvwrite_r+0x184>
   1688c:	2006f613          	andi	a2,a3,512
   16890:	1a060563          	beqz	a2,16a3a <__sfvwrite_r+0x27a>
   16894:	8cba                	mv	s9,a4
   16896:	20e9e563          	bltu	s3,a4,16aa0 <__sfvwrite_r+0x2e0>
   1689a:	4806f713          	andi	a4,a3,1152
   1689e:	c73d                	beqz	a4,1690c <__sfvwrite_r+0x14c>
   168a0:	4850                	lw	a2,20(s0)
   168a2:	480c                	lw	a1,16(s0)
   168a4:	00161713          	slli	a4,a2,0x1
   168a8:	9732                	add	a4,a4,a2
   168aa:	40b78933          	sub	s2,a5,a1
   168ae:	01f75c13          	srli	s8,a4,0x1f
   168b2:	9c3a                	add	s8,s8,a4
   168b4:	00190793          	addi	a5,s2,1
   168b8:	401c5c13          	srai	s8,s8,0x1
   168bc:	97ce                	add	a5,a5,s3
   168be:	8662                	mv	a2,s8
   168c0:	00fc7463          	bgeu	s8,a5,168c8 <__sfvwrite_r+0x108>
   168c4:	8c3e                	mv	s8,a5
   168c6:	863e                	mv	a2,a5
   168c8:	4006f693          	andi	a3,a3,1024
   168cc:	1e068963          	beqz	a3,16abe <__sfvwrite_r+0x2fe>
   168d0:	85b2                	mv	a1,a2
   168d2:	8552                	mv	a0,s4
   168d4:	a07fd0ef          	jal	142da <_malloc_r>
   168d8:	8caa                	mv	s9,a0
   168da:	20050e63          	beqz	a0,16af6 <__sfvwrite_r+0x336>
   168de:	480c                	lw	a1,16(s0)
   168e0:	864a                	mv	a2,s2
   168e2:	2df5                	jal	16fde <memcpy>
   168e4:	00c45783          	lhu	a5,12(s0)
   168e8:	b7f7f793          	andi	a5,a5,-1153
   168ec:	0807e793          	ori	a5,a5,128
   168f0:	00f41623          	sh	a5,12(s0)
   168f4:	012c8533          	add	a0,s9,s2
   168f8:	412c07b3          	sub	a5,s8,s2
   168fc:	01942823          	sw	s9,16(s0)
   16900:	01842a23          	sw	s8,20(s0)
   16904:	c008                	sw	a0,0(s0)
   16906:	8c4e                	mv	s8,s3
   16908:	c41c                	sw	a5,8(s0)
   1690a:	8cce                	mv	s9,s3
   1690c:	8666                	mv	a2,s9
   1690e:	85de                	mv	a1,s7
   16910:	2509                	jal	16f12 <memmove>
   16912:	4418                	lw	a4,8(s0)
   16914:	401c                	lw	a5,0(s0)
   16916:	894e                	mv	s2,s3
   16918:	41870733          	sub	a4,a4,s8
   1691c:	97e6                	add	a5,a5,s9
   1691e:	c418                	sw	a4,8(s0)
   16920:	c01c                	sw	a5,0(s0)
   16922:	4981                	li	s3,0
   16924:	008b2783          	lw	a5,8(s6)
   16928:	9bca                	add	s7,s7,s2
   1692a:	412787b3          	sub	a5,a5,s2
   1692e:	00fb2423          	sw	a5,8(s6)
   16932:	cf99                	beqz	a5,16950 <__sfvwrite_r+0x190>
   16934:	401c                	lw	a5,0(s0)
   16936:	4418                	lw	a4,8(s0)
   16938:	00c41683          	lh	a3,12(s0)
   1693c:	853e                	mv	a0,a5
   1693e:	8c3a                	mv	s8,a4
   16940:	f40996e3          	bnez	s3,1688c <__sfvwrite_r+0xcc>
   16944:	0004ab83          	lw	s7,0(s1)
   16948:	0044a983          	lw	s3,4(s1)
   1694c:	04a1                	addi	s1,s1,8
   1694e:	bf1d                	j	16884 <__sfvwrite_r+0xc4>
   16950:	4bb2                	lw	s7,12(sp)
   16952:	4c22                	lw	s8,8(sp)
   16954:	4c92                	lw	s9,4(sp)
   16956:	50b2                	lw	ra,44(sp)
   16958:	5422                	lw	s0,40(sp)
   1695a:	5492                	lw	s1,36(sp)
   1695c:	5902                	lw	s2,32(sp)
   1695e:	49f2                	lw	s3,28(sp)
   16960:	4ad2                	lw	s5,20(sp)
   16962:	4a62                	lw	s4,24(sp)
   16964:	4b42                	lw	s6,16(sp)
   16966:	4501                	li	a0,0
   16968:	6145                	addi	sp,sp,48
   1696a:	8082                	ret
   1696c:	85a2                	mv	a1,s0
   1696e:	8552                	mv	a0,s4
   16970:	33e9                	jal	1673a <_fflush_r>
   16972:	c93d                	beqz	a0,169e8 <__sfvwrite_r+0x228>
   16974:	00c41783          	lh	a5,12(s0)
   16978:	4bb2                	lw	s7,12(sp)
   1697a:	4c22                	lw	s8,8(sp)
   1697c:	5492                	lw	s1,36(sp)
   1697e:	5902                	lw	s2,32(sp)
   16980:	49f2                	lw	s3,28(sp)
   16982:	4ad2                	lw	s5,20(sp)
   16984:	0407e793          	ori	a5,a5,64
   16988:	00f41623          	sh	a5,12(s0)
   1698c:	50b2                	lw	ra,44(sp)
   1698e:	5422                	lw	s0,40(sp)
   16990:	4a62                	lw	s4,24(sp)
   16992:	4b42                	lw	s6,16(sp)
   16994:	557d                	li	a0,-1
   16996:	6145                	addi	sp,sp,48
   16998:	8082                	ret
   1699a:	4501                	li	a0,0
   1699c:	8082                	ret
   1699e:	4a81                	li	s5,0
   169a0:	4501                	li	a0,0
   169a2:	4c01                	li	s8,0
   169a4:	4981                	li	s3,0
   169a6:	04098e63          	beqz	s3,16a02 <__sfvwrite_r+0x242>
   169aa:	c525                	beqz	a0,16a12 <__sfvwrite_r+0x252>
   169ac:	87d6                	mv	a5,s5
   169ae:	8bce                	mv	s7,s3
   169b0:	0137f363          	bgeu	a5,s3,169b6 <__sfvwrite_r+0x1f6>
   169b4:	8bbe                	mv	s7,a5
   169b6:	4008                	lw	a0,0(s0)
   169b8:	481c                	lw	a5,16(s0)
   169ba:	00842903          	lw	s2,8(s0)
   169be:	4854                	lw	a3,20(s0)
   169c0:	00a7f563          	bgeu	a5,a0,169ca <__sfvwrite_r+0x20a>
   169c4:	9936                	add	s2,s2,a3
   169c6:	05794f63          	blt	s2,s7,16a24 <__sfvwrite_r+0x264>
   169ca:	0cdbce63          	blt	s7,a3,16aa6 <__sfvwrite_r+0x2e6>
   169ce:	505c                	lw	a5,36(s0)
   169d0:	4c4c                	lw	a1,28(s0)
   169d2:	8662                	mv	a2,s8
   169d4:	8552                	mv	a0,s4
   169d6:	9782                	jalr	a5
   169d8:	892a                	mv	s2,a0
   169da:	f8a05de3          	blez	a0,16974 <__sfvwrite_r+0x1b4>
   169de:	412a8ab3          	sub	s5,s5,s2
   169e2:	4505                	li	a0,1
   169e4:	f80a84e3          	beqz	s5,1696c <__sfvwrite_r+0x1ac>
   169e8:	008b2783          	lw	a5,8(s6)
   169ec:	9c4a                	add	s8,s8,s2
   169ee:	412989b3          	sub	s3,s3,s2
   169f2:	412787b3          	sub	a5,a5,s2
   169f6:	00fb2423          	sw	a5,8(s6)
   169fa:	f7d5                	bnez	a5,169a6 <__sfvwrite_r+0x1e6>
   169fc:	4bb2                	lw	s7,12(sp)
   169fe:	4c22                	lw	s8,8(sp)
   16a00:	bf99                	j	16956 <__sfvwrite_r+0x196>
   16a02:	0044a983          	lw	s3,4(s1)
   16a06:	87a6                	mv	a5,s1
   16a08:	04a1                	addi	s1,s1,8
   16a0a:	fe098ce3          	beqz	s3,16a02 <__sfvwrite_r+0x242>
   16a0e:	0007ac03          	lw	s8,0(a5)
   16a12:	864e                	mv	a2,s3
   16a14:	45a9                	li	a1,10
   16a16:	8562                	mv	a0,s8
   16a18:	2e9d                	jal	16d8e <memchr>
   16a1a:	c579                	beqz	a0,16ae8 <__sfvwrite_r+0x328>
   16a1c:	0505                	addi	a0,a0,1
   16a1e:	41850ab3          	sub	s5,a0,s8
   16a22:	b769                	j	169ac <__sfvwrite_r+0x1ec>
   16a24:	85e2                	mv	a1,s8
   16a26:	864a                	mv	a2,s2
   16a28:	21ed                	jal	16f12 <memmove>
   16a2a:	401c                	lw	a5,0(s0)
   16a2c:	85a2                	mv	a1,s0
   16a2e:	8552                	mv	a0,s4
   16a30:	97ca                	add	a5,a5,s2
   16a32:	c01c                	sw	a5,0(s0)
   16a34:	3319                	jal	1673a <_fflush_r>
   16a36:	d545                	beqz	a0,169de <__sfvwrite_r+0x21e>
   16a38:	bf35                	j	16974 <__sfvwrite_r+0x1b4>
   16a3a:	4814                	lw	a3,16(s0)
   16a3c:	02f6e863          	bltu	a3,a5,16a6c <__sfvwrite_r+0x2ac>
   16a40:	4850                	lw	a2,20(s0)
   16a42:	02c9e563          	bltu	s3,a2,16a6c <__sfvwrite_r+0x2ac>
   16a46:	87ce                	mv	a5,s3
   16a48:	013af363          	bgeu	s5,s3,16a4e <__sfvwrite_r+0x28e>
   16a4c:	87d6                	mv	a5,s5
   16a4e:	02c7e6b3          	rem	a3,a5,a2
   16a52:	5058                	lw	a4,36(s0)
   16a54:	4c4c                	lw	a1,28(s0)
   16a56:	865e                	mv	a2,s7
   16a58:	8552                	mv	a0,s4
   16a5a:	40d786b3          	sub	a3,a5,a3
   16a5e:	9702                	jalr	a4
   16a60:	892a                	mv	s2,a0
   16a62:	02a05963          	blez	a0,16a94 <__sfvwrite_r+0x2d4>
   16a66:	412989b3          	sub	s3,s3,s2
   16a6a:	bd6d                	j	16924 <__sfvwrite_r+0x164>
   16a6c:	893a                	mv	s2,a4
   16a6e:	00e9f363          	bgeu	s3,a4,16a74 <__sfvwrite_r+0x2b4>
   16a72:	894e                	mv	s2,s3
   16a74:	853e                	mv	a0,a5
   16a76:	864a                	mv	a2,s2
   16a78:	85de                	mv	a1,s7
   16a7a:	2961                	jal	16f12 <memmove>
   16a7c:	4418                	lw	a4,8(s0)
   16a7e:	401c                	lw	a5,0(s0)
   16a80:	41270733          	sub	a4,a4,s2
   16a84:	97ca                	add	a5,a5,s2
   16a86:	c418                	sw	a4,8(s0)
   16a88:	c01c                	sw	a5,0(s0)
   16a8a:	ff71                	bnez	a4,16a66 <__sfvwrite_r+0x2a6>
   16a8c:	85a2                	mv	a1,s0
   16a8e:	8552                	mv	a0,s4
   16a90:	316d                	jal	1673a <_fflush_r>
   16a92:	d971                	beqz	a0,16a66 <__sfvwrite_r+0x2a6>
   16a94:	00c41783          	lh	a5,12(s0)
   16a98:	4bb2                	lw	s7,12(sp)
   16a9a:	4c22                	lw	s8,8(sp)
   16a9c:	4c92                	lw	s9,4(sp)
   16a9e:	bdf9                	j	1697c <__sfvwrite_r+0x1bc>
   16aa0:	8c4e                	mv	s8,s3
   16aa2:	8cce                	mv	s9,s3
   16aa4:	b5a5                	j	1690c <__sfvwrite_r+0x14c>
   16aa6:	865e                	mv	a2,s7
   16aa8:	85e2                	mv	a1,s8
   16aaa:	21a5                	jal	16f12 <memmove>
   16aac:	4418                	lw	a4,8(s0)
   16aae:	401c                	lw	a5,0(s0)
   16ab0:	895e                	mv	s2,s7
   16ab2:	41770733          	sub	a4,a4,s7
   16ab6:	97de                	add	a5,a5,s7
   16ab8:	c418                	sw	a4,8(s0)
   16aba:	c01c                	sw	a5,0(s0)
   16abc:	b70d                	j	169de <__sfvwrite_r+0x21e>
   16abe:	8552                	mv	a0,s4
   16ac0:	111020ef          	jal	193d0 <_realloc_r>
   16ac4:	8caa                	mv	s9,a0
   16ac6:	e20517e3          	bnez	a0,168f4 <__sfvwrite_r+0x134>
   16aca:	480c                	lw	a1,16(s0)
   16acc:	8552                	mv	a0,s4
   16ace:	deafd0ef          	jal	140b8 <_free_r>
   16ad2:	00c41783          	lh	a5,12(s0)
   16ad6:	4731                	li	a4,12
   16ad8:	4bb2                	lw	s7,12(sp)
   16ada:	4c22                	lw	s8,8(sp)
   16adc:	4c92                	lw	s9,4(sp)
   16ade:	00ea2023          	sw	a4,0(s4)
   16ae2:	f7f7f793          	andi	a5,a5,-129
   16ae6:	bd59                	j	1697c <__sfvwrite_r+0x1bc>
   16ae8:	00198793          	addi	a5,s3,1
   16aec:	8abe                	mv	s5,a5
   16aee:	b5c1                	j	169ae <__sfvwrite_r+0x1ee>
   16af0:	00c41783          	lh	a5,12(s0)
   16af4:	b561                	j	1697c <__sfvwrite_r+0x1bc>
   16af6:	4731                	li	a4,12
   16af8:	00c41783          	lh	a5,12(s0)
   16afc:	4bb2                	lw	s7,12(sp)
   16afe:	4c22                	lw	s8,8(sp)
   16b00:	4c92                	lw	s9,4(sp)
   16b02:	00ea2023          	sw	a4,0(s4)
   16b06:	bd9d                	j	1697c <__sfvwrite_r+0x1bc>

00016b08 <_putc_r>:
   16b08:	1101                	addi	sp,sp,-32
   16b0a:	cc22                	sw	s0,24(sp)
   16b0c:	ce06                	sw	ra,28(sp)
   16b0e:	842a                	mv	s0,a0
   16b10:	c119                	beqz	a0,16b16 <_putc_r+0xe>
   16b12:	595c                	lw	a5,52(a0)
   16b14:	cf9d                	beqz	a5,16b52 <_putc_r+0x4a>
   16b16:	461c                	lw	a5,8(a2)
   16b18:	17fd                	addi	a5,a5,-1
   16b1a:	c61c                	sw	a5,8(a2)
   16b1c:	0007da63          	bgez	a5,16b30 <_putc_r+0x28>
   16b20:	4e18                	lw	a4,24(a2)
   16b22:	02e7c363          	blt	a5,a4,16b48 <_putc_r+0x40>
   16b26:	0ff5f793          	zext.b	a5,a1
   16b2a:	4729                	li	a4,10
   16b2c:	00e78e63          	beq	a5,a4,16b48 <_putc_r+0x40>
   16b30:	421c                	lw	a5,0(a2)
   16b32:	0ff5f513          	zext.b	a0,a1
   16b36:	00178713          	addi	a4,a5,1
   16b3a:	c218                	sw	a4,0(a2)
   16b3c:	00b78023          	sb	a1,0(a5)
   16b40:	40f2                	lw	ra,28(sp)
   16b42:	4462                	lw	s0,24(sp)
   16b44:	6105                	addi	sp,sp,32
   16b46:	8082                	ret
   16b48:	8522                	mv	a0,s0
   16b4a:	4462                	lw	s0,24(sp)
   16b4c:	40f2                	lw	ra,28(sp)
   16b4e:	6105                	addi	sp,sp,32
   16b50:	a8a5                	j	16bc8 <__swbuf_r>
   16b52:	c632                	sw	a2,12(sp)
   16b54:	c42e                	sw	a1,8(sp)
   16b56:	e37fc0ef          	jal	1398c <__sinit>
   16b5a:	4632                	lw	a2,12(sp)
   16b5c:	45a2                	lw	a1,8(sp)
   16b5e:	bf65                	j	16b16 <_putc_r+0xe>

00016b60 <putc>:
   16b60:	1101                	addi	sp,sp,-32
   16b62:	ca4a                	sw	s2,20(sp)
   16b64:	f3c1a903          	lw	s2,-196(gp) # 1e74c <_impure_ptr>
   16b68:	cc26                	sw	s1,24(sp)
   16b6a:	ce06                	sw	ra,28(sp)
   16b6c:	84aa                	mv	s1,a0
   16b6e:	00090563          	beqz	s2,16b78 <putc+0x18>
   16b72:	03492783          	lw	a5,52(s2)
   16b76:	c3b9                	beqz	a5,16bbc <putc+0x5c>
   16b78:	459c                	lw	a5,8(a1)
   16b7a:	17fd                	addi	a5,a5,-1
   16b7c:	c59c                	sw	a5,8(a1)
   16b7e:	0007da63          	bgez	a5,16b92 <putc+0x32>
   16b82:	4d98                	lw	a4,24(a1)
   16b84:	02e7c463          	blt	a5,a4,16bac <putc+0x4c>
   16b88:	0ff4f793          	zext.b	a5,s1
   16b8c:	4729                	li	a4,10
   16b8e:	00e78f63          	beq	a5,a4,16bac <putc+0x4c>
   16b92:	419c                	lw	a5,0(a1)
   16b94:	0ff4f513          	zext.b	a0,s1
   16b98:	00178713          	addi	a4,a5,1
   16b9c:	c198                	sw	a4,0(a1)
   16b9e:	00978023          	sb	s1,0(a5)
   16ba2:	40f2                	lw	ra,28(sp)
   16ba4:	44e2                	lw	s1,24(sp)
   16ba6:	4952                	lw	s2,20(sp)
   16ba8:	6105                	addi	sp,sp,32
   16baa:	8082                	ret
   16bac:	40f2                	lw	ra,28(sp)
   16bae:	862e                	mv	a2,a1
   16bb0:	854a                	mv	a0,s2
   16bb2:	85a6                	mv	a1,s1
   16bb4:	4952                	lw	s2,20(sp)
   16bb6:	44e2                	lw	s1,24(sp)
   16bb8:	6105                	addi	sp,sp,32
   16bba:	a039                	j	16bc8 <__swbuf_r>
   16bbc:	854a                	mv	a0,s2
   16bbe:	c62e                	sw	a1,12(sp)
   16bc0:	dcdfc0ef          	jal	1398c <__sinit>
   16bc4:	45b2                	lw	a1,12(sp)
   16bc6:	bf4d                	j	16b78 <putc+0x18>

00016bc8 <__swbuf_r>:
   16bc8:	1101                	addi	sp,sp,-32
   16bca:	cc22                	sw	s0,24(sp)
   16bcc:	ca26                	sw	s1,20(sp)
   16bce:	c84a                	sw	s2,16(sp)
   16bd0:	ce06                	sw	ra,28(sp)
   16bd2:	892a                	mv	s2,a0
   16bd4:	84ae                	mv	s1,a1
   16bd6:	8432                	mv	s0,a2
   16bd8:	c119                	beqz	a0,16bde <__swbuf_r+0x16>
   16bda:	595c                	lw	a5,52(a0)
   16bdc:	c3f9                	beqz	a5,16ca2 <__swbuf_r+0xda>
   16bde:	4c18                	lw	a4,24(s0)
   16be0:	00c41783          	lh	a5,12(s0)
   16be4:	c418                	sw	a4,8(s0)
   16be6:	0087f713          	andi	a4,a5,8
   16bea:	c325                	beqz	a4,16c4a <__swbuf_r+0x82>
   16bec:	4818                	lw	a4,16(s0)
   16bee:	cf31                	beqz	a4,16c4a <__swbuf_r+0x82>
   16bf0:	c64e                	sw	s3,12(sp)
   16bf2:	01279693          	slli	a3,a5,0x12
   16bf6:	0ff4f993          	zext.b	s3,s1
   16bfa:	5078                	lw	a4,100(s0)
   16bfc:	0ff4f493          	zext.b	s1,s1
   16c00:	0606d563          	bgez	a3,16c6a <__swbuf_r+0xa2>
   16c04:	01271793          	slli	a5,a4,0x12
   16c08:	0807c263          	bltz	a5,16c8c <__swbuf_r+0xc4>
   16c0c:	4018                	lw	a4,0(s0)
   16c0e:	481c                	lw	a5,16(s0)
   16c10:	4854                	lw	a3,20(s0)
   16c12:	40f707b3          	sub	a5,a4,a5
   16c16:	06d7de63          	bge	a5,a3,16c92 <__swbuf_r+0xca>
   16c1a:	0785                	addi	a5,a5,1
   16c1c:	4414                	lw	a3,8(s0)
   16c1e:	00170613          	addi	a2,a4,1
   16c22:	c010                	sw	a2,0(s0)
   16c24:	16fd                	addi	a3,a3,-1
   16c26:	c414                	sw	a3,8(s0)
   16c28:	01370023          	sb	s3,0(a4)
   16c2c:	4858                	lw	a4,20(s0)
   16c2e:	04f70a63          	beq	a4,a5,16c82 <__swbuf_r+0xba>
   16c32:	00c45783          	lhu	a5,12(s0)
   16c36:	8b85                	andi	a5,a5,1
   16c38:	e3b1                	bnez	a5,16c7c <__swbuf_r+0xb4>
   16c3a:	49b2                	lw	s3,12(sp)
   16c3c:	40f2                	lw	ra,28(sp)
   16c3e:	4462                	lw	s0,24(sp)
   16c40:	4942                	lw	s2,16(sp)
   16c42:	8526                	mv	a0,s1
   16c44:	44d2                	lw	s1,20(sp)
   16c46:	6105                	addi	sp,sp,32
   16c48:	8082                	ret
   16c4a:	85a2                	mv	a1,s0
   16c4c:	854a                	mv	a0,s2
   16c4e:	209d                	jal	16cb4 <__swsetup_r>
   16c50:	ed1d                	bnez	a0,16c8e <__swbuf_r+0xc6>
   16c52:	00c41783          	lh	a5,12(s0)
   16c56:	c64e                	sw	s3,12(sp)
   16c58:	5078                	lw	a4,100(s0)
   16c5a:	01279693          	slli	a3,a5,0x12
   16c5e:	0ff4f993          	zext.b	s3,s1
   16c62:	0ff4f493          	zext.b	s1,s1
   16c66:	f806cfe3          	bltz	a3,16c04 <__swbuf_r+0x3c>
   16c6a:	76f9                	lui	a3,0xffffe
   16c6c:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffdf57b>
   16c6e:	6609                	lui	a2,0x2
   16c70:	8fd1                	or	a5,a5,a2
   16c72:	8f75                	and	a4,a4,a3
   16c74:	00f41623          	sh	a5,12(s0)
   16c78:	d078                	sw	a4,100(s0)
   16c7a:	b769                	j	16c04 <__swbuf_r+0x3c>
   16c7c:	47a9                	li	a5,10
   16c7e:	faf49ee3          	bne	s1,a5,16c3a <__swbuf_r+0x72>
   16c82:	85a2                	mv	a1,s0
   16c84:	854a                	mv	a0,s2
   16c86:	ab5ff0ef          	jal	1673a <_fflush_r>
   16c8a:	d945                	beqz	a0,16c3a <__swbuf_r+0x72>
   16c8c:	49b2                	lw	s3,12(sp)
   16c8e:	54fd                	li	s1,-1
   16c90:	b775                	j	16c3c <__swbuf_r+0x74>
   16c92:	85a2                	mv	a1,s0
   16c94:	854a                	mv	a0,s2
   16c96:	aa5ff0ef          	jal	1673a <_fflush_r>
   16c9a:	f96d                	bnez	a0,16c8c <__swbuf_r+0xc4>
   16c9c:	4018                	lw	a4,0(s0)
   16c9e:	4785                	li	a5,1
   16ca0:	bfb5                	j	16c1c <__swbuf_r+0x54>
   16ca2:	cebfc0ef          	jal	1398c <__sinit>
   16ca6:	bf25                	j	16bde <__swbuf_r+0x16>

00016ca8 <__swbuf>:
   16ca8:	87aa                	mv	a5,a0
   16caa:	f3c1a503          	lw	a0,-196(gp) # 1e74c <_impure_ptr>
   16cae:	862e                	mv	a2,a1
   16cb0:	85be                	mv	a1,a5
   16cb2:	bf19                	j	16bc8 <__swbuf_r>

00016cb4 <__swsetup_r>:
   16cb4:	f3c1a783          	lw	a5,-196(gp) # 1e74c <_impure_ptr>
   16cb8:	1141                	addi	sp,sp,-16
   16cba:	c422                	sw	s0,8(sp)
   16cbc:	c226                	sw	s1,4(sp)
   16cbe:	c606                	sw	ra,12(sp)
   16cc0:	84aa                	mv	s1,a0
   16cc2:	842e                	mv	s0,a1
   16cc4:	c399                	beqz	a5,16cca <__swsetup_r+0x16>
   16cc6:	5bd8                	lw	a4,52(a5)
   16cc8:	c75d                	beqz	a4,16d76 <__swsetup_r+0xc2>
   16cca:	00c41783          	lh	a5,12(s0)
   16cce:	0087f713          	andi	a4,a5,8
   16cd2:	c721                	beqz	a4,16d1a <__swsetup_r+0x66>
   16cd4:	4818                	lw	a4,16(s0)
   16cd6:	cf31                	beqz	a4,16d32 <__swsetup_r+0x7e>
   16cd8:	0017f693          	andi	a3,a5,1
   16cdc:	ce91                	beqz	a3,16cf8 <__swsetup_r+0x44>
   16cde:	4854                	lw	a3,20(s0)
   16ce0:	00042423          	sw	zero,8(s0)
   16ce4:	4501                	li	a0,0
   16ce6:	40d006b3          	neg	a3,a3
   16cea:	cc14                	sw	a3,24(s0)
   16cec:	cf11                	beqz	a4,16d08 <__swsetup_r+0x54>
   16cee:	40b2                	lw	ra,12(sp)
   16cf0:	4422                	lw	s0,8(sp)
   16cf2:	4492                	lw	s1,4(sp)
   16cf4:	0141                	addi	sp,sp,16
   16cf6:	8082                	ret
   16cf8:	0027f693          	andi	a3,a5,2
   16cfc:	4601                	li	a2,0
   16cfe:	e291                	bnez	a3,16d02 <__swsetup_r+0x4e>
   16d00:	4850                	lw	a2,20(s0)
   16d02:	c410                	sw	a2,8(s0)
   16d04:	4501                	li	a0,0
   16d06:	f765                	bnez	a4,16cee <__swsetup_r+0x3a>
   16d08:	0807f713          	andi	a4,a5,128
   16d0c:	d36d                	beqz	a4,16cee <__swsetup_r+0x3a>
   16d0e:	0407e793          	ori	a5,a5,64
   16d12:	00f41623          	sh	a5,12(s0)
   16d16:	557d                	li	a0,-1
   16d18:	bfd9                	j	16cee <__swsetup_r+0x3a>
   16d1a:	0107f713          	andi	a4,a5,16
   16d1e:	c325                	beqz	a4,16d7e <__swsetup_r+0xca>
   16d20:	0047f713          	andi	a4,a5,4
   16d24:	e70d                	bnez	a4,16d4e <__swsetup_r+0x9a>
   16d26:	4818                	lw	a4,16(s0)
   16d28:	0087e793          	ori	a5,a5,8
   16d2c:	00f41623          	sh	a5,12(s0)
   16d30:	f745                	bnez	a4,16cd8 <__swsetup_r+0x24>
   16d32:	2807f693          	andi	a3,a5,640
   16d36:	20000613          	li	a2,512
   16d3a:	f8c68fe3          	beq	a3,a2,16cd8 <__swsetup_r+0x24>
   16d3e:	85a2                	mv	a1,s0
   16d40:	8526                	mv	a0,s1
   16d42:	269020ef          	jal	197aa <__smakebuf_r>
   16d46:	00c41783          	lh	a5,12(s0)
   16d4a:	4818                	lw	a4,16(s0)
   16d4c:	b771                	j	16cd8 <__swsetup_r+0x24>
   16d4e:	580c                	lw	a1,48(s0)
   16d50:	cd81                	beqz	a1,16d68 <__swsetup_r+0xb4>
   16d52:	04040713          	addi	a4,s0,64
   16d56:	00e58763          	beq	a1,a4,16d64 <__swsetup_r+0xb0>
   16d5a:	8526                	mv	a0,s1
   16d5c:	b5cfd0ef          	jal	140b8 <_free_r>
   16d60:	00c41783          	lh	a5,12(s0)
   16d64:	02042823          	sw	zero,48(s0)
   16d68:	4818                	lw	a4,16(s0)
   16d6a:	fdb7f793          	andi	a5,a5,-37
   16d6e:	00042223          	sw	zero,4(s0)
   16d72:	c018                	sw	a4,0(s0)
   16d74:	bf55                	j	16d28 <__swsetup_r+0x74>
   16d76:	853e                	mv	a0,a5
   16d78:	c15fc0ef          	jal	1398c <__sinit>
   16d7c:	b7b9                	j	16cca <__swsetup_r+0x16>
   16d7e:	4725                	li	a4,9
   16d80:	c098                	sw	a4,0(s1)
   16d82:	0407e793          	ori	a5,a5,64
   16d86:	00f41623          	sh	a5,12(s0)
   16d8a:	557d                	li	a0,-1
   16d8c:	b78d                	j	16cee <__swsetup_r+0x3a>

00016d8e <memchr>:
   16d8e:	00357793          	andi	a5,a0,3
   16d92:	0ff5f693          	zext.b	a3,a1
   16d96:	c395                	beqz	a5,16dba <memchr+0x2c>
   16d98:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   16d9c:	c605                	beqz	a2,16dc4 <memchr+0x36>
   16d9e:	567d                	li	a2,-1
   16da0:	a801                	j	16db0 <memchr+0x22>
   16da2:	0505                	addi	a0,a0,1
   16da4:	00357713          	andi	a4,a0,3
   16da8:	cb11                	beqz	a4,16dbc <memchr+0x2e>
   16daa:	17fd                	addi	a5,a5,-1
   16dac:	00c78c63          	beq	a5,a2,16dc4 <memchr+0x36>
   16db0:	00054703          	lbu	a4,0(a0)
   16db4:	fed717e3          	bne	a4,a3,16da2 <memchr+0x14>
   16db8:	8082                	ret
   16dba:	87b2                	mv	a5,a2
   16dbc:	470d                	li	a4,3
   16dbe:	00f76563          	bltu	a4,a5,16dc8 <memchr+0x3a>
   16dc2:	e3b9                	bnez	a5,16e08 <memchr+0x7a>
   16dc4:	4501                	li	a0,0
   16dc6:	8082                	ret
   16dc8:	0ff5f593          	zext.b	a1,a1
   16dcc:	00859713          	slli	a4,a1,0x8
   16dd0:	95ba                	add	a1,a1,a4
   16dd2:	01059713          	slli	a4,a1,0x10
   16dd6:	feff08b7          	lui	a7,0xfeff0
   16dda:	80808837          	lui	a6,0x80808
   16dde:	95ba                	add	a1,a1,a4
   16de0:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd147b>
   16de4:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807e95fc>
   16de8:	430d                	li	t1,3
   16dea:	a029                	j	16df4 <memchr+0x66>
   16dec:	17f1                	addi	a5,a5,-4
   16dee:	0511                	addi	a0,a0,4
   16df0:	fcf379e3          	bgeu	t1,a5,16dc2 <memchr+0x34>
   16df4:	4118                	lw	a4,0(a0)
   16df6:	8f2d                	xor	a4,a4,a1
   16df8:	01170633          	add	a2,a4,a7
   16dfc:	fff74713          	not	a4,a4
   16e00:	8f71                	and	a4,a4,a2
   16e02:	01077733          	and	a4,a4,a6
   16e06:	d37d                	beqz	a4,16dec <memchr+0x5e>
   16e08:	97aa                	add	a5,a5,a0
   16e0a:	a021                	j	16e12 <memchr+0x84>
   16e0c:	0505                	addi	a0,a0,1
   16e0e:	faa78be3          	beq	a5,a0,16dc4 <memchr+0x36>
   16e12:	00054703          	lbu	a4,0(a0)
   16e16:	fed71be3          	bne	a4,a3,16e0c <memchr+0x7e>
   16e1a:	8082                	ret

00016e1c <strncpy>:
   16e1c:	00a5e7b3          	or	a5,a1,a0
   16e20:	8b8d                	andi	a5,a5,3
   16e22:	e781                	bnez	a5,16e2a <strncpy+0xe>
   16e24:	478d                	li	a5,3
   16e26:	02c7eb63          	bltu	a5,a2,16e5c <strncpy+0x40>
   16e2a:	872a                	mv	a4,a0
   16e2c:	a811                	j	16e40 <strncpy+0x24>
   16e2e:	fff5c683          	lbu	a3,-1(a1)
   16e32:	fff60813          	addi	a6,a2,-1
   16e36:	fed78fa3          	sb	a3,-1(a5)
   16e3a:	ca81                	beqz	a3,16e4a <strncpy+0x2e>
   16e3c:	873e                	mv	a4,a5
   16e3e:	8642                	mv	a2,a6
   16e40:	0585                	addi	a1,a1,1
   16e42:	00170793          	addi	a5,a4,1
   16e46:	f665                	bnez	a2,16e2e <strncpy+0x12>
   16e48:	8082                	ret
   16e4a:	9732                	add	a4,a4,a2
   16e4c:	04080463          	beqz	a6,16e94 <strncpy+0x78>
   16e50:	0785                	addi	a5,a5,1
   16e52:	fe078fa3          	sb	zero,-1(a5)
   16e56:	fee79de3          	bne	a5,a4,16e50 <strncpy+0x34>
   16e5a:	8082                	ret
   16e5c:	feff0337          	lui	t1,0xfeff0
   16e60:	808088b7          	lui	a7,0x80808
   16e64:	872a                	mv	a4,a0
   16e66:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd147b>
   16e6a:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e95fc>
   16e6e:	4e0d                	li	t3,3
   16e70:	a039                	j	16e7e <strncpy+0x62>
   16e72:	c314                	sw	a3,0(a4)
   16e74:	1671                	addi	a2,a2,-4
   16e76:	0711                	addi	a4,a4,4
   16e78:	0591                	addi	a1,a1,4
   16e7a:	fcce73e3          	bgeu	t3,a2,16e40 <strncpy+0x24>
   16e7e:	4194                	lw	a3,0(a1)
   16e80:	006687b3          	add	a5,a3,t1
   16e84:	fff6c813          	not	a6,a3
   16e88:	0107f7b3          	and	a5,a5,a6
   16e8c:	0117f7b3          	and	a5,a5,a7
   16e90:	d3ed                	beqz	a5,16e72 <strncpy+0x56>
   16e92:	b77d                	j	16e40 <strncpy+0x24>
   16e94:	8082                	ret

00016e96 <__localeconv_l>:
   16e96:	0f050513          	addi	a0,a0,240
   16e9a:	8082                	ret

00016e9c <_localeconv_r>:
   16e9c:	e2818513          	addi	a0,gp,-472 # 1e638 <__global_locale+0xf0>
   16ea0:	8082                	ret

00016ea2 <localeconv>:
   16ea2:	e2818513          	addi	a0,gp,-472 # 1e638 <__global_locale+0xf0>
   16ea6:	8082                	ret

00016ea8 <_sbrk_r>:
   16ea8:	1141                	addi	sp,sp,-16
   16eaa:	c422                	sw	s0,8(sp)
   16eac:	c226                	sw	s1,4(sp)
   16eae:	842a                	mv	s0,a0
   16eb0:	852e                	mv	a0,a1
   16eb2:	c606                	sw	ra,12(sp)
   16eb4:	f401a623          	sw	zero,-180(gp) # 1e75c <errno>
   16eb8:	7f5030ef          	jal	1aeac <_sbrk>
   16ebc:	57fd                	li	a5,-1
   16ebe:	00f50763          	beq	a0,a5,16ecc <_sbrk_r+0x24>
   16ec2:	40b2                	lw	ra,12(sp)
   16ec4:	4422                	lw	s0,8(sp)
   16ec6:	4492                	lw	s1,4(sp)
   16ec8:	0141                	addi	sp,sp,16
   16eca:	8082                	ret
   16ecc:	f4c1a783          	lw	a5,-180(gp) # 1e75c <errno>
   16ed0:	dbed                	beqz	a5,16ec2 <_sbrk_r+0x1a>
   16ed2:	40b2                	lw	ra,12(sp)
   16ed4:	c01c                	sw	a5,0(s0)
   16ed6:	4422                	lw	s0,8(sp)
   16ed8:	4492                	lw	s1,4(sp)
   16eda:	0141                	addi	sp,sp,16
   16edc:	8082                	ret

00016ede <__libc_fini_array>:
   16ede:	1141                	addi	sp,sp,-16
   16ee0:	c422                	sw	s0,8(sp)
   16ee2:	67f9                	lui	a5,0x1e
   16ee4:	6479                	lui	s0,0x1e
   16ee6:	00c78793          	addi	a5,a5,12 # 1e00c <__do_global_dtors_aux_fini_array_entry>
   16eea:	01040413          	addi	s0,s0,16 # 1e010 <__sglue>
   16eee:	8c1d                	sub	s0,s0,a5
   16ef0:	c226                	sw	s1,4(sp)
   16ef2:	c606                	sw	ra,12(sp)
   16ef4:	40245493          	srai	s1,s0,0x2
   16ef8:	c881                	beqz	s1,16f08 <__libc_fini_array+0x2a>
   16efa:	1471                	addi	s0,s0,-4
   16efc:	943e                	add	s0,s0,a5
   16efe:	401c                	lw	a5,0(s0)
   16f00:	14fd                	addi	s1,s1,-1
   16f02:	1471                	addi	s0,s0,-4
   16f04:	9782                	jalr	a5
   16f06:	fce5                	bnez	s1,16efe <__libc_fini_array+0x20>
   16f08:	40b2                	lw	ra,12(sp)
   16f0a:	4422                	lw	s0,8(sp)
   16f0c:	4492                	lw	s1,4(sp)
   16f0e:	0141                	addi	sp,sp,16
   16f10:	8082                	ret

00016f12 <memmove>:
   16f12:	02a5f263          	bgeu	a1,a0,16f36 <memmove+0x24>
   16f16:	00c58733          	add	a4,a1,a2
   16f1a:	00e57e63          	bgeu	a0,a4,16f36 <memmove+0x24>
   16f1e:	00c507b3          	add	a5,a0,a2
   16f22:	ca1d                	beqz	a2,16f58 <memmove+0x46>
   16f24:	fff74683          	lbu	a3,-1(a4)
   16f28:	17fd                	addi	a5,a5,-1
   16f2a:	177d                	addi	a4,a4,-1
   16f2c:	00d78023          	sb	a3,0(a5)
   16f30:	fef51ae3          	bne	a0,a5,16f24 <memmove+0x12>
   16f34:	8082                	ret
   16f36:	47bd                	li	a5,15
   16f38:	02c7e163          	bltu	a5,a2,16f5a <memmove+0x48>
   16f3c:	87aa                	mv	a5,a0
   16f3e:	fff60693          	addi	a3,a2,-1
   16f42:	ca59                	beqz	a2,16fd8 <memmove+0xc6>
   16f44:	0685                	addi	a3,a3,1
   16f46:	96be                	add	a3,a3,a5
   16f48:	0005c703          	lbu	a4,0(a1)
   16f4c:	0785                	addi	a5,a5,1
   16f4e:	0585                	addi	a1,a1,1
   16f50:	fee78fa3          	sb	a4,-1(a5)
   16f54:	fed79ae3          	bne	a5,a3,16f48 <memmove+0x36>
   16f58:	8082                	ret
   16f5a:	00b567b3          	or	a5,a0,a1
   16f5e:	8b8d                	andi	a5,a5,3
   16f60:	eba5                	bnez	a5,16fd0 <memmove+0xbe>
   16f62:	ff060893          	addi	a7,a2,-16
   16f66:	ff08f893          	andi	a7,a7,-16
   16f6a:	08c1                	addi	a7,a7,16
   16f6c:	011506b3          	add	a3,a0,a7
   16f70:	872e                	mv	a4,a1
   16f72:	87aa                	mv	a5,a0
   16f74:	00072803          	lw	a6,0(a4)
   16f78:	0741                	addi	a4,a4,16
   16f7a:	07c1                	addi	a5,a5,16
   16f7c:	ff07a823          	sw	a6,-16(a5)
   16f80:	ff472803          	lw	a6,-12(a4)
   16f84:	ff07aa23          	sw	a6,-12(a5)
   16f88:	ff872803          	lw	a6,-8(a4)
   16f8c:	ff07ac23          	sw	a6,-8(a5)
   16f90:	ffc72803          	lw	a6,-4(a4)
   16f94:	ff07ae23          	sw	a6,-4(a5)
   16f98:	fcd79ee3          	bne	a5,a3,16f74 <memmove+0x62>
   16f9c:	00c67813          	andi	a6,a2,12
   16fa0:	95c6                	add	a1,a1,a7
   16fa2:	00f67713          	andi	a4,a2,15
   16fa6:	02080a63          	beqz	a6,16fda <memmove+0xc8>
   16faa:	ffc70813          	addi	a6,a4,-4
   16fae:	ffc87813          	andi	a6,a6,-4
   16fb2:	0811                	addi	a6,a6,4
   16fb4:	010687b3          	add	a5,a3,a6
   16fb8:	872e                	mv	a4,a1
   16fba:	00072883          	lw	a7,0(a4)
   16fbe:	0691                	addi	a3,a3,4
   16fc0:	0711                	addi	a4,a4,4
   16fc2:	ff16ae23          	sw	a7,-4(a3)
   16fc6:	fef69ae3          	bne	a3,a5,16fba <memmove+0xa8>
   16fca:	8a0d                	andi	a2,a2,3
   16fcc:	95c2                	add	a1,a1,a6
   16fce:	bf85                	j	16f3e <memmove+0x2c>
   16fd0:	fff60693          	addi	a3,a2,-1
   16fd4:	87aa                	mv	a5,a0
   16fd6:	b7bd                	j	16f44 <memmove+0x32>
   16fd8:	8082                	ret
   16fda:	863a                	mv	a2,a4
   16fdc:	b78d                	j	16f3e <memmove+0x2c>

00016fde <memcpy>:
   16fde:	00a5c7b3          	xor	a5,a1,a0
   16fe2:	8b8d                	andi	a5,a5,3
   16fe4:	00c508b3          	add	a7,a0,a2
   16fe8:	e7b1                	bnez	a5,17034 <memcpy+0x56>
   16fea:	478d                	li	a5,3
   16fec:	04c7f463          	bgeu	a5,a2,17034 <memcpy+0x56>
   16ff0:	00357793          	andi	a5,a0,3
   16ff4:	872a                	mv	a4,a0
   16ff6:	ebb9                	bnez	a5,1704c <memcpy+0x6e>
   16ff8:	ffc8f613          	andi	a2,a7,-4
   16ffc:	40e606b3          	sub	a3,a2,a4
   17000:	02000793          	li	a5,32
   17004:	06d7c863          	blt	a5,a3,17074 <memcpy+0x96>
   17008:	86ae                	mv	a3,a1
   1700a:	87ba                	mv	a5,a4
   1700c:	02c77163          	bgeu	a4,a2,1702e <memcpy+0x50>
   17010:	0006a803          	lw	a6,0(a3)
   17014:	0791                	addi	a5,a5,4
   17016:	0691                	addi	a3,a3,4
   17018:	ff07ae23          	sw	a6,-4(a5)
   1701c:	fec7eae3          	bltu	a5,a2,17010 <memcpy+0x32>
   17020:	fff60793          	addi	a5,a2,-1
   17024:	8f99                	sub	a5,a5,a4
   17026:	9bf1                	andi	a5,a5,-4
   17028:	0791                	addi	a5,a5,4
   1702a:	973e                	add	a4,a4,a5
   1702c:	95be                	add	a1,a1,a5
   1702e:	01176663          	bltu	a4,a7,1703a <memcpy+0x5c>
   17032:	8082                	ret
   17034:	872a                	mv	a4,a0
   17036:	03157e63          	bgeu	a0,a7,17072 <memcpy+0x94>
   1703a:	0005c783          	lbu	a5,0(a1)
   1703e:	0705                	addi	a4,a4,1
   17040:	0585                	addi	a1,a1,1
   17042:	fef70fa3          	sb	a5,-1(a4)
   17046:	fee89ae3          	bne	a7,a4,1703a <memcpy+0x5c>
   1704a:	8082                	ret
   1704c:	0005c683          	lbu	a3,0(a1)
   17050:	0705                	addi	a4,a4,1
   17052:	00377793          	andi	a5,a4,3
   17056:	fed70fa3          	sb	a3,-1(a4)
   1705a:	0585                	addi	a1,a1,1
   1705c:	dfd1                	beqz	a5,16ff8 <memcpy+0x1a>
   1705e:	0005c683          	lbu	a3,0(a1)
   17062:	0705                	addi	a4,a4,1
   17064:	00377793          	andi	a5,a4,3
   17068:	fed70fa3          	sb	a3,-1(a4)
   1706c:	0585                	addi	a1,a1,1
   1706e:	fff9                	bnez	a5,1704c <memcpy+0x6e>
   17070:	b761                	j	16ff8 <memcpy+0x1a>
   17072:	8082                	ret
   17074:	1141                	addi	sp,sp,-16
   17076:	c622                	sw	s0,12(sp)
   17078:	02000413          	li	s0,32
   1707c:	0005a383          	lw	t2,0(a1)
   17080:	0045a283          	lw	t0,4(a1)
   17084:	0085af83          	lw	t6,8(a1)
   17088:	00c5af03          	lw	t5,12(a1)
   1708c:	0105ae83          	lw	t4,16(a1)
   17090:	0145ae03          	lw	t3,20(a1)
   17094:	0185a303          	lw	t1,24(a1)
   17098:	01c5a803          	lw	a6,28(a1)
   1709c:	5194                	lw	a3,32(a1)
   1709e:	02470713          	addi	a4,a4,36
   170a2:	40e607b3          	sub	a5,a2,a4
   170a6:	fc772e23          	sw	t2,-36(a4)
   170aa:	fe572023          	sw	t0,-32(a4)
   170ae:	fff72223          	sw	t6,-28(a4)
   170b2:	ffe72423          	sw	t5,-24(a4)
   170b6:	ffd72623          	sw	t4,-20(a4)
   170ba:	ffc72823          	sw	t3,-16(a4)
   170be:	fe672a23          	sw	t1,-12(a4)
   170c2:	ff072c23          	sw	a6,-8(a4)
   170c6:	fed72e23          	sw	a3,-4(a4)
   170ca:	02458593          	addi	a1,a1,36
   170ce:	faf447e3          	blt	s0,a5,1707c <memcpy+0x9e>
   170d2:	86ae                	mv	a3,a1
   170d4:	87ba                	mv	a5,a4
   170d6:	02c77163          	bgeu	a4,a2,170f8 <memcpy+0x11a>
   170da:	0006a803          	lw	a6,0(a3)
   170de:	0791                	addi	a5,a5,4
   170e0:	0691                	addi	a3,a3,4
   170e2:	ff07ae23          	sw	a6,-4(a5)
   170e6:	fec7eae3          	bltu	a5,a2,170da <memcpy+0xfc>
   170ea:	fff60793          	addi	a5,a2,-1
   170ee:	8f99                	sub	a5,a5,a4
   170f0:	9bf1                	andi	a5,a5,-4
   170f2:	0791                	addi	a5,a5,4
   170f4:	973e                	add	a4,a4,a5
   170f6:	95be                	add	a1,a1,a5
   170f8:	01176563          	bltu	a4,a7,17102 <memcpy+0x124>
   170fc:	4432                	lw	s0,12(sp)
   170fe:	0141                	addi	sp,sp,16
   17100:	8082                	ret
   17102:	0005c783          	lbu	a5,0(a1)
   17106:	0705                	addi	a4,a4,1
   17108:	0585                	addi	a1,a1,1
   1710a:	fef70fa3          	sb	a5,-1(a4)
   1710e:	fee887e3          	beq	a7,a4,170fc <memcpy+0x11e>
   17112:	0005c783          	lbu	a5,0(a1)
   17116:	0705                	addi	a4,a4,1
   17118:	0585                	addi	a1,a1,1
   1711a:	fef70fa3          	sb	a5,-1(a4)
   1711e:	fee892e3          	bne	a7,a4,17102 <memcpy+0x124>
   17122:	bfe9                	j	170fc <memcpy+0x11e>

00017124 <strlen>:
   17124:	00357793          	andi	a5,a0,3
   17128:	872a                	mv	a4,a0
   1712a:	ef9d                	bnez	a5,17168 <strlen+0x44>
   1712c:	7f7f86b7          	lui	a3,0x7f7f8
   17130:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d94fb>
   17134:	55fd                	li	a1,-1
   17136:	4310                	lw	a2,0(a4)
   17138:	0711                	addi	a4,a4,4
   1713a:	00d677b3          	and	a5,a2,a3
   1713e:	97b6                	add	a5,a5,a3
   17140:	8fd1                	or	a5,a5,a2
   17142:	8fd5                	or	a5,a5,a3
   17144:	feb789e3          	beq	a5,a1,17136 <strlen+0x12>
   17148:	ffc74683          	lbu	a3,-4(a4)
   1714c:	40a707b3          	sub	a5,a4,a0
   17150:	ca8d                	beqz	a3,17182 <strlen+0x5e>
   17152:	ffd74683          	lbu	a3,-3(a4)
   17156:	c29d                	beqz	a3,1717c <strlen+0x58>
   17158:	ffe74503          	lbu	a0,-2(a4)
   1715c:	00a03533          	snez	a0,a0
   17160:	953e                	add	a0,a0,a5
   17162:	1579                	addi	a0,a0,-2
   17164:	8082                	ret
   17166:	d2f9                	beqz	a3,1712c <strlen+0x8>
   17168:	00074783          	lbu	a5,0(a4)
   1716c:	0705                	addi	a4,a4,1
   1716e:	00377693          	andi	a3,a4,3
   17172:	fbf5                	bnez	a5,17166 <strlen+0x42>
   17174:	8f09                	sub	a4,a4,a0
   17176:	fff70513          	addi	a0,a4,-1
   1717a:	8082                	ret
   1717c:	ffd78513          	addi	a0,a5,-3
   17180:	8082                	ret
   17182:	ffc78513          	addi	a0,a5,-4
   17186:	8082                	ret

00017188 <frexpl>:
   17188:	7159                	addi	sp,sp,-112
   1718a:	d0ca                	sw	s2,96(sp)
   1718c:	00c5a903          	lw	s2,12(a1)
   17190:	ccd2                	sw	s4,88(sp)
   17192:	cad6                	sw	s5,84(sp)
   17194:	c8da                	sw	s6,80(sp)
   17196:	0045aa83          	lw	s5,4(a1)
   1719a:	0005ab03          	lw	s6,0(a1)
   1719e:	0085aa03          	lw	s4,8(a1)
   171a2:	cece                	sw	s3,92(sp)
   171a4:	69a1                	lui	s3,0x8
   171a6:	d4a2                	sw	s0,104(sp)
   171a8:	d2a6                	sw	s1,100(sp)
   171aa:	d686                	sw	ra,108(sp)
   171ac:	01095493          	srli	s1,s2,0x10
   171b0:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   171b2:	d85a                	sw	s6,48(sp)
   171b4:	da56                	sw	s5,52(sp)
   171b6:	dc52                	sw	s4,56(sp)
   171b8:	de4a                	sw	s2,60(sp)
   171ba:	0134f4b3          	and	s1,s1,s3
   171be:	00062023          	sw	zero,0(a2)
   171c2:	842a                	mv	s0,a0
   171c4:	05348763          	beq	s1,s3,17212 <frexpl+0x8a>
   171c8:	080c                	addi	a1,sp,16
   171ca:	1008                	addi	a0,sp,32
   171cc:	c6de                	sw	s7,76(sp)
   171ce:	d05a                	sw	s6,32(sp)
   171d0:	8bb2                	mv	s7,a2
   171d2:	d256                	sw	s5,36(sp)
   171d4:	d452                	sw	s4,40(sp)
   171d6:	d64a                	sw	s2,44(sp)
   171d8:	c802                	sw	zero,16(sp)
   171da:	ca02                	sw	zero,20(sp)
   171dc:	cc02                	sw	zero,24(sp)
   171de:	ce02                	sw	zero,28(sp)
   171e0:	5cf030ef          	jal	1afae <__eqtf2>
   171e4:	c941                	beqz	a0,17274 <frexpl+0xec>
   171e6:	4681                	li	a3,0
   171e8:	c8a1                	beqz	s1,17238 <frexpl+0xb0>
   171ea:	7771                	lui	a4,0xffffc
   171ec:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffdd57e>
   171ee:	5972                	lw	s2,60(sp)
   171f0:	94ba                	add	s1,s1,a4
   171f2:	800107b7          	lui	a5,0x80010
   171f6:	94b6                	add	s1,s1,a3
   171f8:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff157b>
   171fa:	009ba023          	sw	s1,0(s7)
   171fe:	5b42                	lw	s6,48(sp)
   17200:	5ad2                	lw	s5,52(sp)
   17202:	5a62                	lw	s4,56(sp)
   17204:	4bb6                	lw	s7,76(sp)
   17206:	00f97933          	and	s2,s2,a5
   1720a:	3ffe07b7          	lui	a5,0x3ffe0
   1720e:	00f96933          	or	s2,s2,a5
   17212:	01642023          	sw	s6,0(s0)
   17216:	01542223          	sw	s5,4(s0)
   1721a:	01442423          	sw	s4,8(s0)
   1721e:	01242623          	sw	s2,12(s0)
   17222:	50b6                	lw	ra,108(sp)
   17224:	8522                	mv	a0,s0
   17226:	5426                	lw	s0,104(sp)
   17228:	5496                	lw	s1,100(sp)
   1722a:	5906                	lw	s2,96(sp)
   1722c:	49f6                	lw	s3,92(sp)
   1722e:	4a66                	lw	s4,88(sp)
   17230:	4ad6                	lw	s5,84(sp)
   17232:	4b46                	lw	s6,80(sp)
   17234:	6165                	addi	sp,sp,112
   17236:	8082                	ret
   17238:	407107b7          	lui	a5,0x40710
   1723c:	860a                	mv	a2,sp
   1723e:	080c                	addi	a1,sp,16
   17240:	1008                	addi	a0,sp,32
   17242:	c63e                	sw	a5,12(sp)
   17244:	c85a                	sw	s6,16(sp)
   17246:	ca56                	sw	s5,20(sp)
   17248:	cc52                	sw	s4,24(sp)
   1724a:	ce4a                	sw	s2,28(sp)
   1724c:	c002                	sw	zero,0(sp)
   1724e:	c202                	sw	zero,4(sp)
   17250:	c402                	sw	zero,8(sp)
   17252:	020040ef          	jal	1b272 <__multf3>
   17256:	5702                	lw	a4,32(sp)
   17258:	57b2                	lw	a5,44(sp)
   1725a:	f8e00693          	li	a3,-114
   1725e:	d83a                	sw	a4,48(sp)
   17260:	5712                	lw	a4,36(sp)
   17262:	0107d493          	srli	s1,a5,0x10
   17266:	de3e                	sw	a5,60(sp)
   17268:	da3a                	sw	a4,52(sp)
   1726a:	5722                	lw	a4,40(sp)
   1726c:	0134f4b3          	and	s1,s1,s3
   17270:	dc3a                	sw	a4,56(sp)
   17272:	bfa5                	j	171ea <frexpl+0x62>
   17274:	4bb6                	lw	s7,76(sp)
   17276:	bf71                	j	17212 <frexpl+0x8a>

00017278 <__register_exitproc>:
   17278:	f501a783          	lw	a5,-176(gp) # 1e760 <__atexit>
   1727c:	c3a1                	beqz	a5,172bc <__register_exitproc+0x44>
   1727e:	43d8                	lw	a4,4(a5)
   17280:	487d                	li	a6,31
   17282:	04e84f63          	blt	a6,a4,172e0 <__register_exitproc+0x68>
   17286:	00271813          	slli	a6,a4,0x2
   1728a:	c11d                	beqz	a0,172b0 <__register_exitproc+0x38>
   1728c:	01078333          	add	t1,a5,a6
   17290:	08c32423          	sw	a2,136(t1)
   17294:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f1704>
   17298:	4605                	li	a2,1
   1729a:	00e61633          	sll	a2,a2,a4
   1729e:	00c8e8b3          	or	a7,a7,a2
   172a2:	1917a423          	sw	a7,392(a5)
   172a6:	10d32423          	sw	a3,264(t1)
   172aa:	4689                	li	a3,2
   172ac:	00d50f63          	beq	a0,a3,172ca <__register_exitproc+0x52>
   172b0:	0705                	addi	a4,a4,1
   172b2:	c3d8                	sw	a4,4(a5)
   172b4:	97c2                	add	a5,a5,a6
   172b6:	c78c                	sw	a1,8(a5)
   172b8:	4501                	li	a0,0
   172ba:	8082                	ret
   172bc:	0e418813          	addi	a6,gp,228 # 1e8f4 <__atexit0>
   172c0:	f501a823          	sw	a6,-176(gp) # 1e760 <__atexit>
   172c4:	0e418793          	addi	a5,gp,228 # 1e8f4 <__atexit0>
   172c8:	bf5d                	j	1727e <__register_exitproc+0x6>
   172ca:	18c7a683          	lw	a3,396(a5)
   172ce:	0705                	addi	a4,a4,1
   172d0:	c3d8                	sw	a4,4(a5)
   172d2:	8ed1                	or	a3,a3,a2
   172d4:	18d7a623          	sw	a3,396(a5)
   172d8:	97c2                	add	a5,a5,a6
   172da:	c78c                	sw	a1,8(a5)
   172dc:	4501                	li	a0,0
   172de:	8082                	ret
   172e0:	557d                	li	a0,-1
   172e2:	8082                	ret

000172e4 <_ldtoa_r>:
   172e4:	68f9                	lui	a7,0x1e
   172e6:	82888893          	addi	a7,a7,-2008 # 1d828 <blanks.1+0x10>
   172ea:	0008af83          	lw	t6,0(a7)
   172ee:	0048af03          	lw	t5,4(a7)
   172f2:	0088ae83          	lw	t4,8(a7)
   172f6:	00c8ae03          	lw	t3,12(a7)
   172fa:	0108a303          	lw	t1,16(a7)
   172fe:	03852883          	lw	a7,56(a0)
   17302:	7171                	addi	sp,sp,-176
   17304:	d14a                	sw	s2,160(sp)
   17306:	cf4e                	sw	s3,156(sp)
   17308:	cd52                	sw	s4,152(sp)
   1730a:	c95a                	sw	s6,144(sp)
   1730c:	c75e                	sw	s7,140(sp)
   1730e:	c562                	sw	s8,136(sp)
   17310:	c366                	sw	s9,132(sp)
   17312:	c16a                	sw	s10,128(sp)
   17314:	d706                	sw	ra,172(sp)
   17316:	d522                	sw	s0,168(sp)
   17318:	d326                	sw	s1,164(sp)
   1731a:	cb56                	sw	s5,148(sp)
   1731c:	deee                	sw	s11,124(sp)
   1731e:	cefe                	sw	t6,92(sp)
   17320:	d0fa                	sw	t5,96(sp)
   17322:	d2f6                	sw	t4,100(sp)
   17324:	d4f2                	sw	t3,104(sp)
   17326:	d69a                	sw	t1,108(sp)
   17328:	cc32                	sw	a2,24(sp)
   1732a:	ce36                	sw	a3,28(sp)
   1732c:	0005aa03          	lw	s4,0(a1)
   17330:	0045a983          	lw	s3,4(a1)
   17334:	0085a903          	lw	s2,8(a1)
   17338:	00c5ac03          	lw	s8,12(a1)
   1733c:	8b2a                	mv	s6,a0
   1733e:	8bba                	mv	s7,a4
   17340:	8cbe                	mv	s9,a5
   17342:	8d42                	mv	s10,a6
   17344:	00088763          	beqz	a7,17352 <_ldtoa_r+0x6e>
   17348:	85c6                	mv	a1,a7
   1734a:	246010ef          	jal	18590 <__freedtoa>
   1734e:	020b2c23          	sw	zero,56(s6)
   17352:	5626                	lw	a2,104(sp)
   17354:	01fc5693          	srli	a3,s8,0x1f
   17358:	001c1a93          	slli	s5,s8,0x1
   1735c:	40165713          	srai	a4,a2,0x1
   17360:	74f1                	lui	s1,0xffffc
   17362:	001c1413          	slli	s0,s8,0x1
   17366:	8f75                	and	a4,a4,a3
   17368:	011ada93          	srli	s5,s5,0x11
   1736c:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffdd50d>
   17370:	010c1d93          	slli	s11,s8,0x10
   17374:	00dca023          	sw	a3,0(s9)
   17378:	8005                	srli	s0,s0,0x1
   1737a:	8f31                	xor	a4,a4,a2
   1737c:	010ddd93          	srli	s11,s11,0x10
   17380:	009a87b3          	add	a5,s5,s1
   17384:	100c                	addi	a1,sp,32
   17386:	1808                	addi	a0,sp,48
   17388:	d852                	sw	s4,48(sp)
   1738a:	da4e                	sw	s3,52(sp)
   1738c:	dc4a                	sw	s2,56(sp)
   1738e:	de22                	sw	s0,60(sp)
   17390:	d052                	sw	s4,32(sp)
   17392:	d24e                	sw	s3,36(sp)
   17394:	d44a                	sw	s2,40(sp)
   17396:	d622                	sw	s0,44(sp)
   17398:	d4ba                	sw	a4,104(sp)
   1739a:	ca3e                	sw	a5,20(sp)
   1739c:	c6d2                	sw	s4,76(sp)
   1739e:	c8ce                	sw	s3,80(sp)
   173a0:	caca                	sw	s2,84(sp)
   173a2:	ccee                	sw	s11,88(sp)
   173a4:	44d050ef          	jal	1cff0 <__unordtf2>
   173a8:	e979                	bnez	a0,1747e <_ldtoa_r+0x19a>
   173aa:	7fff0cb7          	lui	s9,0x7fff0
   173ae:	54fd                	li	s1,-1
   173b0:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd157b>
   173b2:	100c                	addi	a1,sp,32
   173b4:	1808                	addi	a0,sp,48
   173b6:	d852                	sw	s4,48(sp)
   173b8:	da4e                	sw	s3,52(sp)
   173ba:	dc4a                	sw	s2,56(sp)
   173bc:	de22                	sw	s0,60(sp)
   173be:	d026                	sw	s1,32(sp)
   173c0:	d226                	sw	s1,36(sp)
   173c2:	d426                	sw	s1,40(sp)
   173c4:	d666                	sw	s9,44(sp)
   173c6:	42b050ef          	jal	1cff0 <__unordtf2>
   173ca:	ed21                	bnez	a0,17422 <_ldtoa_r+0x13e>
   173cc:	100c                	addi	a1,sp,32
   173ce:	1808                	addi	a0,sp,48
   173d0:	5b7030ef          	jal	1b186 <__letf2>
   173d4:	04a05763          	blez	a0,17422 <_ldtoa_r+0x13e>
   173d8:	478d                	li	a5,3
   173da:	c4be                	sw	a5,72(sp)
   173dc:	47e2                	lw	a5,24(sp)
   173de:	4872                	lw	a6,28(sp)
   173e0:	4652                	lw	a2,20(sp)
   173e2:	00b8                	addi	a4,sp,72
   173e4:	c06a                	sw	s10,0(sp)
   173e6:	88de                	mv	a7,s7
   173e8:	00f4                	addi	a3,sp,76
   173ea:	08ec                	addi	a1,sp,92
   173ec:	855a                	mv	a0,s6
   173ee:	2235                	jal	1751a <__gdtoa>
   173f0:	000ba703          	lw	a4,0(s7)
   173f4:	77e1                	lui	a5,0xffff8
   173f6:	00f71763          	bne	a4,a5,17404 <_ldtoa_r+0x120>
   173fa:	800007b7          	lui	a5,0x80000
   173fe:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe157b>
   17400:	00fba023          	sw	a5,0(s7)
   17404:	50ba                	lw	ra,172(sp)
   17406:	542a                	lw	s0,168(sp)
   17408:	549a                	lw	s1,164(sp)
   1740a:	590a                	lw	s2,160(sp)
   1740c:	49fa                	lw	s3,156(sp)
   1740e:	4a6a                	lw	s4,152(sp)
   17410:	4ada                	lw	s5,148(sp)
   17412:	4b4a                	lw	s6,144(sp)
   17414:	4bba                	lw	s7,140(sp)
   17416:	4c2a                	lw	s8,136(sp)
   17418:	4c9a                	lw	s9,132(sp)
   1741a:	4d0a                	lw	s10,128(sp)
   1741c:	5df6                	lw	s11,124(sp)
   1741e:	614d                	addi	sp,sp,176
   17420:	8082                	ret
   17422:	67c1                	lui	a5,0x10
   17424:	100c                	addi	a1,sp,32
   17426:	1808                	addi	a0,sp,48
   17428:	d852                	sw	s4,48(sp)
   1742a:	da4e                	sw	s3,52(sp)
   1742c:	dc4a                	sw	s2,56(sp)
   1742e:	de22                	sw	s0,60(sp)
   17430:	d002                	sw	zero,32(sp)
   17432:	d202                	sw	zero,36(sp)
   17434:	d402                	sw	zero,40(sp)
   17436:	d63e                	sw	a5,44(sp)
   17438:	463030ef          	jal	1b09a <__getf2>
   1743c:	00054963          	bltz	a0,1744e <_ldtoa_r+0x16a>
   17440:	67c1                	lui	a5,0x10
   17442:	00fdedb3          	or	s11,s11,a5
   17446:	4785                	li	a5,1
   17448:	c4be                	sw	a5,72(sp)
   1744a:	ccee                	sw	s11,88(sp)
   1744c:	bf41                	j	173dc <_ldtoa_r+0xf8>
   1744e:	100c                	addi	a1,sp,32
   17450:	1808                	addi	a0,sp,48
   17452:	d852                	sw	s4,48(sp)
   17454:	da4e                	sw	s3,52(sp)
   17456:	dc4a                	sw	s2,56(sp)
   17458:	de62                	sw	s8,60(sp)
   1745a:	d002                	sw	zero,32(sp)
   1745c:	d202                	sw	zero,36(sp)
   1745e:	d402                	sw	zero,40(sp)
   17460:	d602                	sw	zero,44(sp)
   17462:	34d030ef          	jal	1afae <__eqtf2>
   17466:	e119                	bnez	a0,1746c <_ldtoa_r+0x188>
   17468:	c482                	sw	zero,72(sp)
   1746a:	bf8d                	j	173dc <_ldtoa_r+0xf8>
   1746c:	74f1                	lui	s1,0xffffc
   1746e:	4789                	li	a5,2
   17470:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffdd50e>
   17474:	c4be                	sw	a5,72(sp)
   17476:	009a87b3          	add	a5,s5,s1
   1747a:	ca3e                	sw	a5,20(sp)
   1747c:	b785                	j	173dc <_ldtoa_r+0xf8>
   1747e:	4791                	li	a5,4
   17480:	c4be                	sw	a5,72(sp)
   17482:	bfa9                	j	173dc <_ldtoa_r+0xf8>

00017484 <_ldcheck>:
   17484:	7139                	addi	sp,sp,-64
   17486:	da26                	sw	s1,52(sp)
   17488:	4544                	lw	s1,12(a0)
   1748a:	d64e                	sw	s3,44(sp)
   1748c:	d452                	sw	s4,40(sp)
   1748e:	00852983          	lw	s3,8(a0)
   17492:	00452a03          	lw	s4,4(a0)
   17496:	d256                	sw	s5,36(sp)
   17498:	00052a83          	lw	s5,0(a0)
   1749c:	0486                	slli	s1,s1,0x1
   1749e:	8085                	srli	s1,s1,0x1
   174a0:	858a                	mv	a1,sp
   174a2:	0808                	addi	a0,sp,16
   174a4:	de06                	sw	ra,60(sp)
   174a6:	c856                	sw	s5,16(sp)
   174a8:	ca52                	sw	s4,20(sp)
   174aa:	cc4e                	sw	s3,24(sp)
   174ac:	ce26                	sw	s1,28(sp)
   174ae:	c056                	sw	s5,0(sp)
   174b0:	c252                	sw	s4,4(sp)
   174b2:	c44e                	sw	s3,8(sp)
   174b4:	c626                	sw	s1,12(sp)
   174b6:	33b050ef          	jal	1cff0 <__unordtf2>
   174ba:	e921                	bnez	a0,1750a <_ldcheck+0x86>
   174bc:	d05a                	sw	s6,32(sp)
   174be:	7fff0b37          	lui	s6,0x7fff0
   174c2:	d84a                	sw	s2,48(sp)
   174c4:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd157b>
   174c6:	597d                	li	s2,-1
   174c8:	858a                	mv	a1,sp
   174ca:	0808                	addi	a0,sp,16
   174cc:	dc22                	sw	s0,56(sp)
   174ce:	c04a                	sw	s2,0(sp)
   174d0:	c24a                	sw	s2,4(sp)
   174d2:	c44a                	sw	s2,8(sp)
   174d4:	c65a                	sw	s6,12(sp)
   174d6:	4405                	li	s0,1
   174d8:	319050ef          	jal	1cff0 <__unordtf2>
   174dc:	c105                	beqz	a0,174fc <_ldcheck+0x78>
   174de:	50f2                	lw	ra,60(sp)
   174e0:	00144513          	xori	a0,s0,1
   174e4:	5462                	lw	s0,56(sp)
   174e6:	0ff57513          	zext.b	a0,a0
   174ea:	5942                	lw	s2,48(sp)
   174ec:	5b02                	lw	s6,32(sp)
   174ee:	54d2                	lw	s1,52(sp)
   174f0:	59b2                	lw	s3,44(sp)
   174f2:	5a22                	lw	s4,40(sp)
   174f4:	5a92                	lw	s5,36(sp)
   174f6:	0506                	slli	a0,a0,0x1
   174f8:	6121                	addi	sp,sp,64
   174fa:	8082                	ret
   174fc:	858a                	mv	a1,sp
   174fe:	0808                	addi	a0,sp,16
   17500:	487030ef          	jal	1b186 <__letf2>
   17504:	00152413          	slti	s0,a0,1
   17508:	bfd9                	j	174de <_ldcheck+0x5a>
   1750a:	50f2                	lw	ra,60(sp)
   1750c:	54d2                	lw	s1,52(sp)
   1750e:	59b2                	lw	s3,44(sp)
   17510:	5a22                	lw	s4,40(sp)
   17512:	5a92                	lw	s5,36(sp)
   17514:	4505                	li	a0,1
   17516:	6121                	addi	sp,sp,64
   17518:	8082                	ret

0001751a <__gdtoa>:
   1751a:	7171                	addi	sp,sp,-176
   1751c:	cb56                	sw	s5,148(sp)
   1751e:	00072a83          	lw	s5,0(a4)
   17522:	d326                	sw	s1,164(sp)
   17524:	c75e                	sw	s7,140(sp)
   17526:	fcfafe13          	andi	t3,s5,-49
   1752a:	d706                	sw	ra,172(sp)
   1752c:	01c72023          	sw	t3,0(a4)
   17530:	8bba                	mv	s7,a4
   17532:	574a                	lw	a4,176(sp)
   17534:	00fafe13          	andi	t3,s5,15
   17538:	4e8d                	li	t4,3
   1753a:	c63a                	sw	a4,12(sp)
   1753c:	c832                	sw	a2,16(sp)
   1753e:	d442                	sw	a6,40(sp)
   17540:	84c6                	mv	s1,a7
   17542:	4fde0263          	beq	t3,t4,17a26 <__gdtoa+0x50c>
   17546:	c95a                	sw	s6,144(sp)
   17548:	00cafb13          	andi	s6,s5,12
   1754c:	460b1b63          	bnez	s6,179c2 <__gdtoa+0x4a8>
   17550:	d522                	sw	s0,168(sp)
   17552:	842a                	mv	s0,a0
   17554:	4a0e0563          	beqz	t3,179fe <__gdtoa+0x4e4>
   17558:	c16a                	sw	s10,128(sp)
   1755a:	0005ad03          	lw	s10,0(a1)
   1755e:	d14a                	sw	s2,160(sp)
   17560:	cf4e                	sw	s3,156(sp)
   17562:	cd52                	sw	s4,152(sp)
   17564:	c366                	sw	s9,132(sp)
   17566:	02000613          	li	a2,32
   1756a:	8a2e                	mv	s4,a1
   1756c:	893e                	mv	s2,a5
   1756e:	89b6                	mv	s3,a3
   17570:	4581                	li	a1,0
   17572:	02000793          	li	a5,32
   17576:	01a65663          	bge	a2,s10,17582 <__gdtoa+0x68>
   1757a:	0786                	slli	a5,a5,0x1
   1757c:	0585                	addi	a1,a1,1
   1757e:	ffa7cee3          	blt	a5,s10,1757a <__gdtoa+0x60>
   17582:	8522                	mv	a0,s0
   17584:	24e010ef          	jal	187d2 <_Balloc>
   17588:	8caa                	mv	s9,a0
   1758a:	68050163          	beqz	a0,17c0c <__gdtoa+0x6f2>
   1758e:	fffd0893          	addi	a7,s10,-1
   17592:	4058d893          	srai	a7,a7,0x5
   17596:	00289513          	slli	a0,a7,0x2
   1759a:	c562                	sw	s8,136(sp)
   1759c:	deee                	sw	s11,124(sp)
   1759e:	954e                	add	a0,a0,s3
   175a0:	014c8613          	addi	a2,s9,20
   175a4:	87ce                	mv	a5,s3
   175a6:	4398                	lw	a4,0(a5)
   175a8:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   175aa:	0611                	addi	a2,a2,4
   175ac:	fee62e23          	sw	a4,-4(a2)
   175b0:	fef57be3          	bgeu	a0,a5,175a6 <__gdtoa+0x8c>
   175b4:	0505                	addi	a0,a0,1
   175b6:	00198793          	addi	a5,s3,1
   175ba:	4611                	li	a2,4
   175bc:	00f56563          	bltu	a0,a5,175c6 <__gdtoa+0xac>
   175c0:	088a                	slli	a7,a7,0x2
   175c2:	00488613          	addi	a2,a7,4
   175c6:	40265d93          	srai	s11,a2,0x2
   175ca:	9666                	add	a2,a2,s9
   175cc:	a021                	j	175d4 <__gdtoa+0xba>
   175ce:	1671                	addi	a2,a2,-4
   175d0:	480d8f63          	beqz	s11,17a6e <__gdtoa+0x554>
   175d4:	4a1c                	lw	a5,16(a2)
   175d6:	8c6e                	mv	s8,s11
   175d8:	1dfd                	addi	s11,s11,-1
   175da:	dbf5                	beqz	a5,175ce <__gdtoa+0xb4>
   175dc:	004d8793          	addi	a5,s11,4
   175e0:	078a                	slli	a5,a5,0x2
   175e2:	97e6                	add	a5,a5,s9
   175e4:	43c8                	lw	a0,4(a5)
   175e6:	018ca823          	sw	s8,16(s9)
   175ea:	0c16                	slli	s8,s8,0x5
   175ec:	40a010ef          	jal	189f6 <__hi0bits>
   175f0:	40ac0db3          	sub	s11,s8,a0
   175f4:	8566                	mv	a0,s9
   175f6:	1a2010ef          	jal	18798 <__trailz_D2A>
   175fa:	d6aa                	sw	a0,108(sp)
   175fc:	4c42                	lw	s8,16(sp)
   175fe:	48051c63          	bnez	a0,17a96 <__gdtoa+0x57c>
   17602:	010ca603          	lw	a2,16(s9)
   17606:	3e060163          	beqz	a2,179e8 <__gdtoa+0x4ce>
   1760a:	10ec                	addi	a1,sp,108
   1760c:	8566                	mv	a0,s9
   1760e:	2db010ef          	jal	190e8 <__b2d>
   17612:	00c59613          	slli	a2,a1,0xc
   17616:	8231                	srli	a2,a2,0xc
   17618:	3ff005b7          	lui	a1,0x3ff00
   1761c:	8f2a                	mv	t5,a0
   1761e:	8e4d                	or	a2,a2,a1
   17620:	cc7a                	sw	t5,24(sp)
   17622:	ce32                	sw	a2,28(sp)
   17624:	ed01b707          	fld	fa4,-304(gp) # 1e6e0 <__SDATA_BEGIN__+0x28>
   17628:	27e2                	fld	fa5,24(sp)
   1762a:	ed81b687          	fld	fa3,-296(gp) # 1e6e8 <__SDATA_BEGIN__+0x30>
   1762e:	0ae7f753          	fsub.d	fa4,fa5,fa4
   17632:	ee01b787          	fld	fa5,-288(gp) # 1e6f0 <__SDATA_BEGIN__+0x38>
   17636:	01bc08b3          	add	a7,s8,s11
   1763a:	fff88593          	addi	a1,a7,-1
   1763e:	852e                	mv	a0,a1
   17640:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   17644:	d20587d3          	fcvt.d.w	fa5,a1
   17648:	ee81b687          	fld	fa3,-280(gp) # 1e6f8 <__SDATA_BEGIN__+0x40>
   1764c:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   17650:	0005d563          	bgez	a1,1765a <__gdtoa+0x140>
   17654:	4505                	li	a0,1
   17656:	41150533          	sub	a0,a0,a7
   1765a:	bcb50513          	addi	a0,a0,-1077
   1765e:	00a05863          	blez	a0,1766e <__gdtoa+0x154>
   17662:	d20506d3          	fcvt.d.w	fa3,a0
   17666:	ef01b707          	fld	fa4,-272(gp) # 1e700 <__SDATA_BEGIN__+0x48>
   1766a:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   1766e:	d2000753          	fcvt.d.w	fa4,zero
   17672:	c2079853          	fcvt.w.d	a6,fa5,rtz
   17676:	a2e79553          	flt.d	a0,fa5,fa4
   1767a:	c909                	beqz	a0,1768c <__gdtoa+0x172>
   1767c:	d2080753          	fcvt.d.w	fa4,a6
   17680:	a2f72553          	feq.d	a0,fa4,fa5
   17684:	00153513          	seqz	a0,a0
   17688:	40a80833          	sub	a6,a6,a0
   1768c:	01459e93          	slli	t4,a1,0x14
   17690:	40bd8533          	sub	a0,s11,a1
   17694:	45d9                	li	a1,22
   17696:	00ce8fb3          	add	t6,t4,a2
   1769a:	fff50e93          	addi	t4,a0,-1
   1769e:	3d05eb63          	bltu	a1,a6,17a74 <__gdtoa+0x55a>
   176a2:	65f9                	lui	a1,0x1e
   176a4:	00381613          	slli	a2,a6,0x3
   176a8:	89858593          	addi	a1,a1,-1896 # 1d898 <__mprec_tens>
   176ac:	962e                	add	a2,a2,a1
   176ae:	cc7a                	sw	t5,24(sp)
   176b0:	ce7e                	sw	t6,28(sp)
   176b2:	221c                	fld	fa5,0(a2)
   176b4:	2762                	fld	fa4,24(sp)
   176b6:	a2f71653          	flt.d	a2,fa4,fa5
   176ba:	58061163          	bnez	a2,17c3c <__gdtoa+0x722>
   176be:	ca82                	sw	zero,84(sp)
   176c0:	cc02                	sw	zero,24(sp)
   176c2:	00a04763          	bgtz	a0,176d0 <__gdtoa+0x1b6>
   176c6:	4605                	li	a2,1
   176c8:	40a607b3          	sub	a5,a2,a0
   176cc:	cc3e                	sw	a5,24(sp)
   176ce:	4e81                	li	t4,0
   176d0:	9ec2                	add	t4,t4,a6
   176d2:	da42                	sw	a6,52(sp)
   176d4:	d802                	sw	zero,48(sp)
   176d6:	4625                	li	a2,9
   176d8:	3d266a63          	bltu	a2,s2,17aac <__gdtoa+0x592>
   176dc:	4615                	li	a2,5
   176de:	57264263          	blt	a2,s2,17c42 <__gdtoa+0x728>
   176e2:	3fd88893          	addi	a7,a7,1021
   176e6:	7f88b793          	sltiu	a5,a7,2040
   176ea:	4591                	li	a1,4
   176ec:	ccbe                	sw	a5,88(sp)
   176ee:	18b909e3          	beq	s2,a1,18080 <__gdtoa+0xb66>
   176f2:	18c903e3          	beq	s2,a2,18078 <__gdtoa+0xb5e>
   176f6:	4609                	li	a2,2
   176f8:	18c907e3          	beq	s2,a2,18086 <__gdtoa+0xb6c>
   176fc:	460d                	li	a2,3
   176fe:	c882                	sw	zero,80(sp)
   17700:	3ac91c63          	bne	s2,a2,17ab8 <__gdtoa+0x59e>
   17704:	57d2                	lw	a5,52(sp)
   17706:	5722                	lw	a4,40(sp)
   17708:	97ba                	add	a5,a5,a4
   1770a:	cebe                	sw	a5,92(sp)
   1770c:	0785                	addi	a5,a5,1
   1770e:	d63e                	sw	a5,44(sp)
   17710:	00f05ce3          	blez	a5,17f28 <__gdtoa+0xa0e>
   17714:	863e                	mv	a2,a5
   17716:	85be                	mv	a1,a5
   17718:	8522                	mv	a0,s0
   1771a:	c4fa                	sw	t5,72(sp)
   1771c:	c6fe                	sw	t6,76(sp)
   1771e:	c0f6                	sw	t4,64(sp)
   17720:	dc42                	sw	a6,56(sp)
   17722:	d6b2                	sw	a2,108(sp)
   17724:	5bd000ef          	jal	184e0 <__rv_alloc_D2A>
   17728:	88aa                	mv	a7,a0
   1772a:	32050863          	beqz	a0,17a5a <__gdtoa+0x540>
   1772e:	00ca2783          	lw	a5,12(s4)
   17732:	5862                	lw	a6,56(sp)
   17734:	4e86                	lw	t4,64(sp)
   17736:	17fd                	addi	a5,a5,-1
   17738:	d03e                	sw	a5,32(sp)
   1773a:	4f26                	lw	t5,72(sp)
   1773c:	4fb6                	lw	t6,76(sp)
   1773e:	3a078363          	beqz	a5,17ae4 <__gdtoa+0x5ca>
   17742:	4e07ca63          	bltz	a5,17c36 <__gdtoa+0x71c>
   17746:	100af313          	andi	t1,s5,256
   1774a:	38031863          	bnez	t1,17ada <__gdtoa+0x5c0>
   1774e:	000c4663          	bltz	s8,1775a <__gdtoa+0x240>
   17752:	57d2                	lw	a5,52(sp)
   17754:	4639                	li	a2,14
   17756:	50f65363          	bge	a2,a5,17c5c <__gdtoa+0x742>
   1775a:	47c6                	lw	a5,80(sp)
   1775c:	4c078863          	beqz	a5,17c2c <__gdtoa+0x712>
   17760:	41bd06b3          	sub	a3,s10,s11
   17764:	004a2603          	lw	a2,4(s4)
   17768:	00168593          	addi	a1,a3,1
   1776c:	d6ae                	sw	a1,108(sp)
   1776e:	40dc06b3          	sub	a3,s8,a3
   17772:	7ec6dd63          	bge	a3,a2,17f6c <__gdtoa+0xa52>
   17776:	ffd90693          	addi	a3,s2,-3
   1777a:	9af5                	andi	a3,a3,-3
   1777c:	72068863          	beqz	a3,17eac <__gdtoa+0x992>
   17780:	40cc06b3          	sub	a3,s8,a2
   17784:	0685                	addi	a3,a3,1
   17786:	d6b6                	sw	a3,108(sp)
   17788:	4605                	li	a2,1
   1778a:	01265863          	bge	a2,s2,1779a <__gdtoa+0x280>
   1778e:	57b2                	lw	a5,44(sp)
   17790:	00f05563          	blez	a5,1779a <__gdtoa+0x280>
   17794:	57b2                	lw	a5,44(sp)
   17796:	40d7c1e3          	blt	a5,a3,18398 <__gdtoa+0xe7e>
   1779a:	47e2                	lw	a5,24(sp)
   1779c:	5d42                	lw	s10,48(sp)
   1779e:	9eb6                	add	t4,t4,a3
   177a0:	dc3e                	sw	a5,56(sp)
   177a2:	97b6                	add	a5,a5,a3
   177a4:	cc3e                	sw	a5,24(sp)
   177a6:	4585                	li	a1,1
   177a8:	8522                	mv	a0,s0
   177aa:	ccc6                	sw	a7,88(sp)
   177ac:	c4f6                	sw	t4,72(sp)
   177ae:	c0c2                	sw	a6,64(sp)
   177b0:	324010ef          	jal	18ad4 <__i2b>
   177b4:	4806                	lw	a6,64(sp)
   177b6:	4ea6                	lw	t4,72(sp)
   177b8:	48e6                	lw	a7,88(sp)
   177ba:	8c2a                	mv	s8,a0
   177bc:	28050f63          	beqz	a0,17a5a <__gdtoa+0x540>
   177c0:	57e2                	lw	a5,56(sp)
   177c2:	c385                	beqz	a5,177e2 <__gdtoa+0x2c8>
   177c4:	01d05f63          	blez	t4,177e2 <__gdtoa+0x2c8>
   177c8:	86be                	mv	a3,a5
   177ca:	00fed363          	bge	t4,a5,177d0 <__gdtoa+0x2b6>
   177ce:	86f6                	mv	a3,t4
   177d0:	47e2                	lw	a5,24(sp)
   177d2:	d6b6                	sw	a3,108(sp)
   177d4:	40de8eb3          	sub	t4,t4,a3
   177d8:	8f95                	sub	a5,a5,a3
   177da:	cc3e                	sw	a5,24(sp)
   177dc:	57e2                	lw	a5,56(sp)
   177de:	8f95                	sub	a5,a5,a3
   177e0:	dc3e                	sw	a5,56(sp)
   177e2:	57c2                	lw	a5,48(sp)
   177e4:	c39d                	beqz	a5,1780a <__gdtoa+0x2f0>
   177e6:	47c6                	lw	a5,80(sp)
   177e8:	c399                	beqz	a5,177ee <__gdtoa+0x2d4>
   177ea:	7e0d1863          	bnez	s10,17fda <__gdtoa+0xac0>
   177ee:	5642                	lw	a2,48(sp)
   177f0:	85e6                	mv	a1,s9
   177f2:	8522                	mv	a0,s0
   177f4:	ccc6                	sw	a7,88(sp)
   177f6:	c4f6                	sw	t4,72(sp)
   177f8:	c0c2                	sw	a6,64(sp)
   177fa:	4d8010ef          	jal	18cd2 <__pow5mult>
   177fe:	4806                	lw	a6,64(sp)
   17800:	4ea6                	lw	t4,72(sp)
   17802:	48e6                	lw	a7,88(sp)
   17804:	8caa                	mv	s9,a0
   17806:	24050a63          	beqz	a0,17a5a <__gdtoa+0x540>
   1780a:	4585                	li	a1,1
   1780c:	8522                	mv	a0,s0
   1780e:	c4c6                	sw	a7,72(sp)
   17810:	c0f6                	sw	t4,64(sp)
   17812:	d842                	sw	a6,48(sp)
   17814:	2c0010ef          	jal	18ad4 <__i2b>
   17818:	8d2a                	mv	s10,a0
   1781a:	24050063          	beqz	a0,17a5a <__gdtoa+0x540>
   1781e:	5842                	lw	a6,48(sp)
   17820:	4e86                	lw	t4,64(sp)
   17822:	48a6                	lw	a7,72(sp)
   17824:	70081663          	bnez	a6,17f30 <__gdtoa+0xa16>
   17828:	4685                	li	a3,1
   1782a:	5126d263          	bge	a3,s2,17d2e <__gdtoa+0x814>
   1782e:	4a7d                	li	s4,31
   17830:	47e2                	lw	a5,24(sp)
   17832:	41da0a33          	sub	s4,s4,t4
   17836:	1a71                	addi	s4,s4,-4
   17838:	01fa7a13          	andi	s4,s4,31
   1783c:	00fa0633          	add	a2,s4,a5
   17840:	d6d2                	sw	s4,108(sp)
   17842:	87d2                	mv	a5,s4
   17844:	58c04d63          	bgtz	a2,17dde <__gdtoa+0x8c4>
   17848:	00fe8633          	add	a2,t4,a5
   1784c:	1ec04c63          	bgtz	a2,17a44 <__gdtoa+0x52a>
   17850:	47d6                	lw	a5,84(sp)
   17852:	5a079563          	bnez	a5,17dfc <__gdtoa+0x8e2>
   17856:	57b2                	lw	a5,44(sp)
   17858:	66f05a63          	blez	a5,17ecc <__gdtoa+0x9b2>
   1785c:	47c6                	lw	a5,80(sp)
   1785e:	5c078d63          	beqz	a5,17e38 <__gdtoa+0x91e>
   17862:	57e2                	lw	a5,56(sp)
   17864:	00fa0633          	add	a2,s4,a5
   17868:	7ec04763          	bgtz	a2,18056 <__gdtoa+0xb3c>
   1786c:	8a62                	mv	s4,s8
   1786e:	02081ce3          	bnez	a6,180a6 <__gdtoa+0xb8c>
   17872:	5b32                	lw	s6,44(sp)
   17874:	8dc6                	mv	s11,a7
   17876:	4685                	li	a3,1
   17878:	d446                	sw	a7,40(sp)
   1787a:	cc5e                	sw	s7,24(sp)
   1787c:	d626                	sw	s1,44(sp)
   1787e:	a885                	j	178ee <__gdtoa+0x3d4>
   17880:	8522                	mv	a0,s0
   17882:	7bd000ef          	jal	1883e <_Bfree>
   17886:	100ac3e3          	bltz	s5,1818c <__gdtoa+0xc72>
   1788a:	01596ab3          	or	s5,s2,s5
   1788e:	000a9763          	bnez	s5,1789c <__gdtoa+0x382>
   17892:	0009a783          	lw	a5,0(s3)
   17896:	8b85                	andi	a5,a5,1
   17898:	0e078ae3          	beqz	a5,1818c <__gdtoa+0xc72>
   1789c:	5782                	lw	a5,32(sp)
   1789e:	4709                	li	a4,2
   178a0:	26e798e3          	bne	a5,a4,18310 <__gdtoa+0xdf6>
   178a4:	017d8023          	sb	s7,0(s11)
   178a8:	57b6                	lw	a5,108(sp)
   178aa:	0d85                	addi	s11,s11,1
   178ac:	1efb0fe3          	beq	s6,a5,182aa <__gdtoa+0xd90>
   178b0:	85e6                	mv	a1,s9
   178b2:	4681                	li	a3,0
   178b4:	4629                	li	a2,10
   178b6:	8522                	mv	a0,s0
   178b8:	799000ef          	jal	18850 <__multadd>
   178bc:	8caa                	mv	s9,a0
   178be:	18050e63          	beqz	a0,17a5a <__gdtoa+0x540>
   178c2:	4681                	li	a3,0
   178c4:	4629                	li	a2,10
   178c6:	85e2                	mv	a1,s8
   178c8:	8522                	mv	a0,s0
   178ca:	494c0c63          	beq	s8,s4,17d62 <__gdtoa+0x848>
   178ce:	783000ef          	jal	18850 <__multadd>
   178d2:	8c2a                	mv	s8,a0
   178d4:	18050363          	beqz	a0,17a5a <__gdtoa+0x540>
   178d8:	85d2                	mv	a1,s4
   178da:	4681                	li	a3,0
   178dc:	4629                	li	a2,10
   178de:	8522                	mv	a0,s0
   178e0:	771000ef          	jal	18850 <__multadd>
   178e4:	8a2a                	mv	s4,a0
   178e6:	16050a63          	beqz	a0,17a5a <__gdtoa+0x540>
   178ea:	56b6                	lw	a3,108(sp)
   178ec:	0685                	addi	a3,a3,1
   178ee:	85ea                	mv	a1,s10
   178f0:	8566                	mv	a0,s9
   178f2:	d6b6                	sw	a3,108(sp)
   178f4:	4ab000ef          	jal	1859e <__quorem_D2A>
   178f8:	84aa                	mv	s1,a0
   178fa:	85e2                	mv	a1,s8
   178fc:	8566                	mv	a0,s9
   178fe:	5b6010ef          	jal	18eb4 <__mcmp>
   17902:	85ea                	mv	a1,s10
   17904:	8aaa                	mv	s5,a0
   17906:	8652                	mv	a2,s4
   17908:	8522                	mv	a0,s0
   1790a:	5e6010ef          	jal	18ef0 <__mdiff>
   1790e:	03048b93          	addi	s7,s1,48
   17912:	85aa                	mv	a1,a0
   17914:	14050363          	beqz	a0,17a5a <__gdtoa+0x540>
   17918:	455c                	lw	a5,12(a0)
   1791a:	f3bd                	bnez	a5,17880 <__gdtoa+0x366>
   1791c:	c82a                	sw	a0,16(sp)
   1791e:	8566                	mv	a0,s9
   17920:	594010ef          	jal	18eb4 <__mcmp>
   17924:	45c2                	lw	a1,16(sp)
   17926:	86aa                	mv	a3,a0
   17928:	8522                	mv	a0,s0
   1792a:	c836                	sw	a3,16(sp)
   1792c:	713000ef          	jal	1883e <_Bfree>
   17930:	46c2                	lw	a3,16(sp)
   17932:	00d96733          	or	a4,s2,a3
   17936:	340711e3          	bnez	a4,18478 <__gdtoa+0xf5e>
   1793a:	0009a783          	lw	a5,0(s3)
   1793e:	8b85                	andi	a5,a5,1
   17940:	42079863          	bnez	a5,17d70 <__gdtoa+0x856>
   17944:	5782                	lw	a5,32(sp)
   17946:	280787e3          	beqz	a5,183d4 <__gdtoa+0xeba>
   1794a:	f5504de3          	bgtz	s5,178a4 <__gdtoa+0x38a>
   1794e:	010ca603          	lw	a2,16(s9)
   17952:	4685                	li	a3,1
   17954:	835e                	mv	t1,s7
   17956:	58a2                	lw	a7,40(sp)
   17958:	4be2                	lw	s7,24(sp)
   1795a:	54b2                	lw	s1,44(sp)
   1795c:	8b3a                	mv	s6,a4
   1795e:	2ec6dae3          	bge	a3,a2,18452 <__gdtoa+0xf38>
   17962:	5782                	lw	a5,32(sp)
   17964:	4689                	li	a3,2
   17966:	8a9a                	mv	s5,t1
   17968:	8b46                	mv	s6,a7
   1796a:	02d79063          	bne	a5,a3,1798a <__gdtoa+0x470>
   1796e:	2cb0006f          	j	18438 <__gdtoa+0xf1e>
   17972:	6df000ef          	jal	18850 <__multadd>
   17976:	85ea                	mv	a1,s10
   17978:	8caa                	mv	s9,a0
   1797a:	0e050063          	beqz	a0,17a5a <__gdtoa+0x540>
   1797e:	421000ef          	jal	1859e <__quorem_D2A>
   17982:	03050a93          	addi	s5,a0,48
   17986:	8dca                	mv	s11,s2
   17988:	8a4e                	mv	s4,s3
   1798a:	85d2                	mv	a1,s4
   1798c:	856a                	mv	a0,s10
   1798e:	526010ef          	jal	18eb4 <__mcmp>
   17992:	87aa                	mv	a5,a0
   17994:	4681                	li	a3,0
   17996:	4629                	li	a2,10
   17998:	85d2                	mv	a1,s4
   1799a:	8522                	mv	a0,s0
   1799c:	001d8913          	addi	s2,s11,1
   179a0:	28f052e3          	blez	a5,18424 <__gdtoa+0xf0a>
   179a4:	ff590fa3          	sb	s5,-1(s2)
   179a8:	6a9000ef          	jal	18850 <__multadd>
   179ac:	89aa                	mv	s3,a0
   179ae:	4681                	li	a3,0
   179b0:	4629                	li	a2,10
   179b2:	85e6                	mv	a1,s9
   179b4:	8522                	mv	a0,s0
   179b6:	0a098263          	beqz	s3,17a5a <__gdtoa+0x540>
   179ba:	fb4c1ce3          	bne	s8,s4,17972 <__gdtoa+0x458>
   179be:	8c4e                	mv	s8,s3
   179c0:	bf4d                	j	17972 <__gdtoa+0x458>
   179c2:	4791                	li	a5,4
   179c4:	0afe1363          	bne	t3,a5,17a6a <__gdtoa+0x550>
   179c8:	4632                	lw	a2,12(sp)
   179ca:	4b4a                	lw	s6,144(sp)
   179cc:	50ba                	lw	ra,172(sp)
   179ce:	549a                	lw	s1,164(sp)
   179d0:	4ada                	lw	s5,148(sp)
   179d2:	4bba                	lw	s7,140(sp)
   179d4:	77e1                	lui	a5,0xffff8
   179d6:	00f8a023          	sw	a5,0(a7)
   179da:	65f5                	lui	a1,0x1d
   179dc:	468d                	li	a3,3
   179de:	4ec58593          	addi	a1,a1,1260 # 1d4ec <__clzsi2+0xce>
   179e2:	614d                	addi	sp,sp,176
   179e4:	33b0006f          	j	1851e <__nrv_alloc_D2A>
   179e8:	85e6                	mv	a1,s9
   179ea:	8522                	mv	a0,s0
   179ec:	653000ef          	jal	1883e <_Bfree>
   179f0:	590a                	lw	s2,160(sp)
   179f2:	49fa                	lw	s3,156(sp)
   179f4:	4a6a                	lw	s4,152(sp)
   179f6:	4c2a                	lw	s8,136(sp)
   179f8:	4c9a                	lw	s9,132(sp)
   179fa:	4d0a                	lw	s10,128(sp)
   179fc:	5df6                	lw	s11,124(sp)
   179fe:	4632                	lw	a2,12(sp)
   17a00:	4785                	li	a5,1
   17a02:	65f5                	lui	a1,0x1d
   17a04:	8522                	mv	a0,s0
   17a06:	c09c                	sw	a5,0(s1)
   17a08:	4685                	li	a3,1
   17a0a:	4dc58593          	addi	a1,a1,1244 # 1d4dc <__clzsi2+0xbe>
   17a0e:	311000ef          	jal	1851e <__nrv_alloc_D2A>
   17a12:	542a                	lw	s0,168(sp)
   17a14:	88aa                	mv	a7,a0
   17a16:	50ba                	lw	ra,172(sp)
   17a18:	4b4a                	lw	s6,144(sp)
   17a1a:	549a                	lw	s1,164(sp)
   17a1c:	4ada                	lw	s5,148(sp)
   17a1e:	4bba                	lw	s7,140(sp)
   17a20:	8546                	mv	a0,a7
   17a22:	614d                	addi	sp,sp,176
   17a24:	8082                	ret
   17a26:	4632                	lw	a2,12(sp)
   17a28:	50ba                	lw	ra,172(sp)
   17a2a:	549a                	lw	s1,164(sp)
   17a2c:	4ada                	lw	s5,148(sp)
   17a2e:	4bba                	lw	s7,140(sp)
   17a30:	77e1                	lui	a5,0xffff8
   17a32:	00f8a023          	sw	a5,0(a7)
   17a36:	65f5                	lui	a1,0x1d
   17a38:	46a1                	li	a3,8
   17a3a:	4e058593          	addi	a1,a1,1248 # 1d4e0 <__clzsi2+0xc2>
   17a3e:	614d                	addi	sp,sp,176
   17a40:	2df0006f          	j	1851e <__nrv_alloc_D2A>
   17a44:	85ea                	mv	a1,s10
   17a46:	8522                	mv	a0,s0
   17a48:	cc46                	sw	a7,24(sp)
   17a4a:	c842                	sw	a6,16(sp)
   17a4c:	35a010ef          	jal	18da6 <__lshift>
   17a50:	4842                	lw	a6,16(sp)
   17a52:	48e2                	lw	a7,24(sp)
   17a54:	8d2a                	mv	s10,a0
   17a56:	de051de3          	bnez	a0,17850 <__gdtoa+0x336>
   17a5a:	542a                	lw	s0,168(sp)
   17a5c:	590a                	lw	s2,160(sp)
   17a5e:	49fa                	lw	s3,156(sp)
   17a60:	4a6a                	lw	s4,152(sp)
   17a62:	4c2a                	lw	s8,136(sp)
   17a64:	4c9a                	lw	s9,132(sp)
   17a66:	4d0a                	lw	s10,128(sp)
   17a68:	5df6                	lw	s11,124(sp)
   17a6a:	4881                	li	a7,0
   17a6c:	b76d                	j	17a16 <__gdtoa+0x4fc>
   17a6e:	000ca823          	sw	zero,16(s9)
   17a72:	b649                	j	175f4 <__gdtoa+0xda>
   17a74:	4785                	li	a5,1
   17a76:	cabe                	sw	a5,84(sp)
   17a78:	cc02                	sw	zero,24(sp)
   17a7a:	1a0ec163          	bltz	t4,17c1c <__gdtoa+0x702>
   17a7e:	c40859e3          	bgez	a6,176d0 <__gdtoa+0x1b6>
   17a82:	47e2                	lw	a5,24(sp)
   17a84:	da42                	sw	a6,52(sp)
   17a86:	410787b3          	sub	a5,a5,a6
   17a8a:	cc3e                	sw	a5,24(sp)
   17a8c:	410007b3          	neg	a5,a6
   17a90:	d83e                	sw	a5,48(sp)
   17a92:	4801                	li	a6,0
   17a94:	b189                	j	176d6 <__gdtoa+0x1bc>
   17a96:	85aa                	mv	a1,a0
   17a98:	8566                	mv	a0,s9
   17a9a:	45b000ef          	jal	186f4 <__rshift_D2A>
   17a9e:	5636                	lw	a2,108(sp)
   17aa0:	47c2                	lw	a5,16(sp)
   17aa2:	40cd8db3          	sub	s11,s11,a2
   17aa6:	00f60c33          	add	s8,a2,a5
   17aaa:	bea1                	j	17602 <__gdtoa+0xe8>
   17aac:	3fd88893          	addi	a7,a7,1021
   17ab0:	7f88b793          	sltiu	a5,a7,2040
   17ab4:	ccbe                	sw	a5,88(sp)
   17ab6:	4901                	li	s2,0
   17ab8:	ef81b707          	fld	fa4,-264(gp) # 1e708 <__SDATA_BEGIN__+0x50>
   17abc:	d20d07d3          	fcvt.d.w	fa5,s10
   17ac0:	4785                	li	a5,1
   17ac2:	c8be                	sw	a5,80(sp)
   17ac4:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   17ac8:	57fd                	li	a5,-1
   17aca:	d402                	sw	zero,40(sp)
   17acc:	cebe                	sw	a5,92(sp)
   17ace:	d63e                	sw	a5,44(sp)
   17ad0:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   17ad4:	058d                	addi	a1,a1,3
   17ad6:	862e                	mv	a2,a1
   17ad8:	b181                	j	17718 <__gdtoa+0x1fe>
   17ada:	5782                	lw	a5,32(sp)
   17adc:	460d                	li	a2,3
   17ade:	40f607b3          	sub	a5,a2,a5
   17ae2:	d03e                	sw	a5,32(sp)
   17ae4:	57b2                	lw	a5,44(sp)
   17ae6:	4639                	li	a2,14
   17ae8:	c6f663e3          	bltu	a2,a5,1774e <__gdtoa+0x234>
   17aec:	4766                	lw	a4,88(sp)
   17aee:	c60700e3          	beqz	a4,1774e <__gdtoa+0x234>
   17af2:	5752                	lw	a4,52(sp)
   17af4:	5682                	lw	a3,32(sp)
   17af6:	00d76633          	or	a2,a4,a3
   17afa:	c4061ae3          	bnez	a2,1774e <__gdtoa+0x234>
   17afe:	4756                	lw	a4,84(sp)
   17b00:	d682                	sw	zero,108(sp)
   17b02:	d07a                	sw	t5,32(sp)
   17b04:	d27e                	sw	t6,36(sp)
   17b06:	cb11                	beqz	a4,17b1a <__gdtoa+0x600>
   17b08:	dc7a                	sw	t5,56(sp)
   17b0a:	de7e                	sw	t6,60(sp)
   17b0c:	f001b787          	fld	fa5,-256(gp) # 1e710 <__SDATA_BEGIN__+0x58>
   17b10:	3762                	fld	fa4,56(sp)
   17b12:	a2f71653          	flt.d	a2,fa4,fa5
   17b16:	7a061163          	bnez	a2,182b8 <__gdtoa+0xd9e>
   17b1a:	f201b707          	fld	fa4,-224(gp) # 1e730 <__SDATA_BEGIN__+0x78>
   17b1e:	f181b787          	fld	fa5,-232(gp) # 1e728 <__SDATA_BEGIN__+0x70>
   17b22:	3682                	fld	fa3,32(sp)
   17b24:	57b2                	lw	a5,44(sp)
   17b26:	fcc00637          	lui	a2,0xfcc00
   17b2a:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   17b2e:	bc3e                	fsd	fa5,56(sp)
   17b30:	5562                	lw	a0,56(sp)
   17b32:	55f2                	lw	a1,60(sp)
   17b34:	832a                	mv	t1,a0
   17b36:	962e                	add	a2,a2,a1
   17b38:	5c078063          	beqz	a5,180f8 <__gdtoa+0xbde>
   17b3c:	3782                	fld	fa5,32(sp)
   17b3e:	5532                	lw	a0,44(sp)
   17b40:	4381                	li	t2,0
   17b42:	bc3e                	fsd	fa5,56(sp)
   17b44:	65f9                	lui	a1,0x1e
   17b46:	fff50793          	addi	a5,a0,-1
   17b4a:	078e                	slli	a5,a5,0x3
   17b4c:	89858293          	addi	t0,a1,-1896 # 1d898 <__mprec_tens>
   17b50:	005786b3          	add	a3,a5,t0
   17b54:	229c                	fld	fa5,0(a3)
   17b56:	46c6                	lw	a3,80(sp)
   17b58:	871a                	mv	a4,t1
   17b5a:	87b2                	mv	a5,a2
   17b5c:	6c068163          	beqz	a3,1821e <__gdtoa+0xd04>
   17b60:	3762                	fld	fa4,56(sp)
   17b62:	36e2                	fld	fa3,56(sp)
   17b64:	c2071353          	fcvt.w.d	t1,fa4,rtz
   17b68:	f301b707          	fld	fa4,-208(gp) # 1e740 <__SDATA_BEGIN__+0x88>
   17b6c:	dc3a                	sw	a4,56(sp)
   17b6e:	de3e                	sw	a5,60(sp)
   17b70:	1af77753          	fdiv.d	fa4,fa4,fa5
   17b74:	d20307d3          	fcvt.d.w	fa5,t1
   17b78:	03030313          	addi	t1,t1,48
   17b7c:	00688023          	sb	t1,0(a7)
   17b80:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   17b84:	36e2                	fld	fa3,56(sp)
   17b86:	00188613          	addi	a2,a7,1
   17b8a:	0ad77753          	fsub.d	fa4,fa4,fa3
   17b8e:	a2e79353          	flt.d	t1,fa5,fa4
   17b92:	7c031e63          	bnez	t1,1836e <__gdtoa+0xe54>
   17b96:	f001b587          	fld	fa1,-256(gp) # 1e710 <__SDATA_BEGIN__+0x58>
   17b9a:	f081b607          	fld	fa2,-248(gp) # 1e718 <__SDATA_BEGIN__+0x60>
   17b9e:	a80d                	j	17bd0 <__gdtoa+0x6b6>
   17ba0:	57b6                	lw	a5,108(sp)
   17ba2:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe157d>
   17ba4:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffd957d>
   17ba6:	d6be                	sw	a5,108(sp)
   17ba8:	7ea7d163          	bge	a5,a0,1838a <__gdtoa+0xe70>
   17bac:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   17bb0:	12c77753          	fmul.d	fa4,fa4,fa2
   17bb4:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   17bb8:	d20786d3          	fcvt.d.w	fa3,a5
   17bbc:	03078793          	addi	a5,a5,48
   17bc0:	fef60fa3          	sb	a5,-1(a2)
   17bc4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   17bc8:	a2e797d3          	flt.d	a5,fa5,fa4
   17bcc:	7a079163          	bnez	a5,1836e <__gdtoa+0xe54>
   17bd0:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   17bd4:	a2e697d3          	flt.d	a5,fa3,fa4
   17bd8:	d7e1                	beqz	a5,17ba0 <__gdtoa+0x686>
   17bda:	fff64683          	lbu	a3,-1(a2)
   17bde:	00138513          	addi	a0,t2,1
   17be2:	03900593          	li	a1,57
   17be6:	a031                	j	17bf2 <__gdtoa+0x6d8>
   17be8:	62f88763          	beq	a7,a5,18216 <__gdtoa+0xcfc>
   17bec:	fff7c683          	lbu	a3,-1(a5)
   17bf0:	863e                	mv	a2,a5
   17bf2:	fff60793          	addi	a5,a2,-1
   17bf6:	feb689e3          	beq	a3,a1,17be8 <__gdtoa+0x6ce>
   17bfa:	0685                	addi	a3,a3,1
   17bfc:	0ff6f693          	zext.b	a3,a3
   17c00:	00d78023          	sb	a3,0(a5)
   17c04:	892a                	mv	s2,a0
   17c06:	02000b13          	li	s6,32
   17c0a:	a0e5                	j	17cf2 <__gdtoa+0x7d8>
   17c0c:	542a                	lw	s0,168(sp)
   17c0e:	590a                	lw	s2,160(sp)
   17c10:	49fa                	lw	s3,156(sp)
   17c12:	4a6a                	lw	s4,152(sp)
   17c14:	4c9a                	lw	s9,132(sp)
   17c16:	4d0a                	lw	s10,128(sp)
   17c18:	4881                	li	a7,0
   17c1a:	bbf5                	j	17a16 <__gdtoa+0x4fc>
   17c1c:	4605                	li	a2,1
   17c1e:	40a607b3          	sub	a5,a2,a0
   17c22:	cc3e                	sw	a5,24(sp)
   17c24:	4e81                	li	t4,0
   17c26:	e4084ee3          	bltz	a6,17a82 <__gdtoa+0x568>
   17c2a:	b45d                	j	176d0 <__gdtoa+0x1b6>
   17c2c:	47e2                	lw	a5,24(sp)
   17c2e:	5d42                	lw	s10,48(sp)
   17c30:	4c01                	li	s8,0
   17c32:	dc3e                	sw	a5,56(sp)
   17c34:	b671                	j	177c0 <__gdtoa+0x2a6>
   17c36:	4789                	li	a5,2
   17c38:	d03e                	sw	a5,32(sp)
   17c3a:	b631                	j	17746 <__gdtoa+0x22c>
   17c3c:	187d                	addi	a6,a6,-1
   17c3e:	ca82                	sw	zero,84(sp)
   17c40:	bd25                	j	17a78 <__gdtoa+0x55e>
   17c42:	1971                	addi	s2,s2,-4
   17c44:	4591                	li	a1,4
   17c46:	10b90263          	beq	s2,a1,17d4a <__gdtoa+0x830>
   17c4a:	42c90263          	beq	s2,a2,1806e <__gdtoa+0xb54>
   17c4e:	4609                	li	a2,2
   17c50:	cc82                	sw	zero,88(sp)
   17c52:	c882                	sw	zero,80(sp)
   17c54:	0ec90e63          	beq	s2,a2,17d50 <__gdtoa+0x836>
   17c58:	490d                	li	s2,3
   17c5a:	b46d                	j	17704 <__gdtoa+0x1ea>
   17c5c:	66f9                	lui	a3,0x1e
   17c5e:	078e                	slli	a5,a5,0x3
   17c60:	89868693          	addi	a3,a3,-1896 # 1d898 <__mprec_tens>
   17c64:	97b6                	add	a5,a5,a3
   17c66:	2398                	fld	fa4,0(a5)
   17c68:	57a2                	lw	a5,40(sp)
   17c6a:	3207c263          	bltz	a5,17f8e <__gdtoa+0xa74>
   17c6e:	c87a                	sw	t5,16(sp)
   17c70:	ca7e                	sw	t6,20(sp)
   17c72:	27c2                	fld	fa5,16(sp)
   17c74:	4785                	li	a5,1
   17c76:	d6be                	sw	a5,108(sp)
   17c78:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   17c7c:	57d2                	lw	a5,52(sp)
   17c7e:	26c2                	fld	fa3,16(sp)
   17c80:	00188613          	addi	a2,a7,1
   17c84:	00178513          	addi	a0,a5,1
   17c88:	892a                	mv	s2,a0
   17c8a:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   17c8e:	d20787d3          	fcvt.d.w	fa5,a5
   17c92:	03078693          	addi	a3,a5,48
   17c96:	00d88023          	sb	a3,0(a7)
   17c9a:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   17c9e:	d20006d3          	fcvt.d.w	fa3,zero
   17ca2:	a2d7a6d3          	feq.d	a3,fa5,fa3
   17ca6:	e6b1                	bnez	a3,17cf2 <__gdtoa+0x7d8>
   17ca8:	f081b587          	fld	fa1,-248(gp) # 1e718 <__SDATA_BEGIN__+0x60>
   17cac:	22d68653          	fmv.d	fa2,fa3
   17cb0:	55b2                	lw	a1,44(sp)
   17cb2:	a025                	j	17cda <__gdtoa+0x7c0>
   17cb4:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   17cb8:	d6b6                	sw	a3,108(sp)
   17cba:	0605                	addi	a2,a2,1
   17cbc:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   17cc0:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   17cc4:	d20786d3          	fcvt.d.w	fa3,a5
   17cc8:	03078713          	addi	a4,a5,48
   17ccc:	fee60fa3          	sb	a4,-1(a2)
   17cd0:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   17cd4:	a2c7a753          	feq.d	a4,fa5,fa2
   17cd8:	ef09                	bnez	a4,17cf2 <__gdtoa+0x7d8>
   17cda:	5736                	lw	a4,108(sp)
   17cdc:	00170693          	addi	a3,a4,1
   17ce0:	fcb71ae3          	bne	a4,a1,17cb4 <__gdtoa+0x79a>
   17ce4:	5702                	lw	a4,32(sp)
   17ce6:	4e070e63          	beqz	a4,181e2 <__gdtoa+0xcc8>
   17cea:	4785                	li	a5,1
   17cec:	4b41                	li	s6,16
   17cee:	60f70263          	beq	a4,a5,182f2 <__gdtoa+0xdd8>
   17cf2:	85e6                	mv	a1,s9
   17cf4:	8522                	mv	a0,s0
   17cf6:	d446                	sw	a7,40(sp)
   17cf8:	c832                	sw	a2,16(sp)
   17cfa:	345000ef          	jal	1883e <_Bfree>
   17cfe:	4642                	lw	a2,16(sp)
   17d00:	47b2                	lw	a5,12(sp)
   17d02:	58a2                	lw	a7,40(sp)
   17d04:	00060023          	sb	zero,0(a2)
   17d08:	0124a023          	sw	s2,0(s1)
   17d0c:	c391                	beqz	a5,17d10 <__gdtoa+0x7f6>
   17d0e:	c390                	sw	a2,0(a5)
   17d10:	000ba783          	lw	a5,0(s7)
   17d14:	542a                	lw	s0,168(sp)
   17d16:	590a                	lw	s2,160(sp)
   17d18:	0167e7b3          	or	a5,a5,s6
   17d1c:	49fa                	lw	s3,156(sp)
   17d1e:	4a6a                	lw	s4,152(sp)
   17d20:	4c2a                	lw	s8,136(sp)
   17d22:	4c9a                	lw	s9,132(sp)
   17d24:	4d0a                	lw	s10,128(sp)
   17d26:	5df6                	lw	s11,124(sp)
   17d28:	00fba023          	sw	a5,0(s7)
   17d2c:	b1ed                	j	17a16 <__gdtoa+0x4fc>
   17d2e:	b0dd90e3          	bne	s11,a3,1782e <__gdtoa+0x314>
   17d32:	004a2783          	lw	a5,4(s4)
   17d36:	4742                	lw	a4,16(sp)
   17d38:	0785                	addi	a5,a5,1
   17d3a:	aee7dae3          	bge	a5,a4,1782e <__gdtoa+0x314>
   17d3e:	47e2                	lw	a5,24(sp)
   17d40:	0e85                	addi	t4,t4,1
   17d42:	4805                	li	a6,1
   17d44:	0785                	addi	a5,a5,1
   17d46:	cc3e                	sw	a5,24(sp)
   17d48:	b4dd                	j	1782e <__gdtoa+0x314>
   17d4a:	4785                	li	a5,1
   17d4c:	cc82                	sw	zero,88(sp)
   17d4e:	c8be                	sw	a5,80(sp)
   17d50:	55a2                	lw	a1,40(sp)
   17d52:	00b04363          	bgtz	a1,17d58 <__gdtoa+0x83e>
   17d56:	4585                	li	a1,1
   17d58:	862e                	mv	a2,a1
   17d5a:	ceae                	sw	a1,92(sp)
   17d5c:	d62e                	sw	a1,44(sp)
   17d5e:	d42e                	sw	a1,40(sp)
   17d60:	ba65                	j	17718 <__gdtoa+0x1fe>
   17d62:	2ef000ef          	jal	18850 <__multadd>
   17d66:	8c2a                	mv	s8,a0
   17d68:	ce0509e3          	beqz	a0,17a5a <__gdtoa+0x540>
   17d6c:	8a2a                	mv	s4,a0
   17d6e:	beb5                	j	178ea <__gdtoa+0x3d0>
   17d70:	b20adae3          	bgez	s5,178a4 <__gdtoa+0x38a>
   17d74:	5782                	lw	a5,32(sp)
   17d76:	835e                	mv	t1,s7
   17d78:	58a2                	lw	a7,40(sp)
   17d7a:	4be2                	lw	s7,24(sp)
   17d7c:	54b2                	lw	s1,44(sp)
   17d7e:	8b3a                	mv	s6,a4
   17d80:	6c079463          	bnez	a5,18448 <__gdtoa+0xf2e>
   17d84:	010ca603          	lw	a2,16(s9)
   17d88:	4685                	li	a3,1
   17d8a:	4b41                	li	s6,16
   17d8c:	001d8913          	addi	s2,s11,1
   17d90:	68c6d463          	bge	a3,a2,18418 <__gdtoa+0xefe>
   17d94:	89e2                	mv	s3,s8
   17d96:	864a                	mv	a2,s2
   17d98:	006d8023          	sb	t1,0(s11)
   17d9c:	8c52                	mv	s8,s4
   17d9e:	85ea                	mv	a1,s10
   17da0:	8522                	mv	a0,s0
   17da2:	d446                	sw	a7,40(sp)
   17da4:	c832                	sw	a2,16(sp)
   17da6:	299000ef          	jal	1883e <_Bfree>
   17daa:	57d2                	lw	a5,52(sp)
   17dac:	4642                	lw	a2,16(sp)
   17dae:	58a2                	lw	a7,40(sp)
   17db0:	00178913          	addi	s2,a5,1
   17db4:	f20c0fe3          	beqz	s8,17cf2 <__gdtoa+0x7d8>
   17db8:	00098a63          	beqz	s3,17dcc <__gdtoa+0x8b2>
   17dbc:	01898863          	beq	s3,s8,17dcc <__gdtoa+0x8b2>
   17dc0:	85ce                	mv	a1,s3
   17dc2:	8522                	mv	a0,s0
   17dc4:	27b000ef          	jal	1883e <_Bfree>
   17dc8:	58a2                	lw	a7,40(sp)
   17dca:	4642                	lw	a2,16(sp)
   17dcc:	85e2                	mv	a1,s8
   17dce:	8522                	mv	a0,s0
   17dd0:	d446                	sw	a7,40(sp)
   17dd2:	c832                	sw	a2,16(sp)
   17dd4:	26b000ef          	jal	1883e <_Bfree>
   17dd8:	58a2                	lw	a7,40(sp)
   17dda:	4642                	lw	a2,16(sp)
   17ddc:	bf19                	j	17cf2 <__gdtoa+0x7d8>
   17dde:	85e6                	mv	a1,s9
   17de0:	8522                	mv	a0,s0
   17de2:	d846                	sw	a7,48(sp)
   17de4:	cc76                	sw	t4,24(sp)
   17de6:	c842                	sw	a6,16(sp)
   17de8:	7bf000ef          	jal	18da6 <__lshift>
   17dec:	8caa                	mv	s9,a0
   17dee:	c60506e3          	beqz	a0,17a5a <__gdtoa+0x540>
   17df2:	57b6                	lw	a5,108(sp)
   17df4:	58c2                	lw	a7,48(sp)
   17df6:	4ee2                	lw	t4,24(sp)
   17df8:	4842                	lw	a6,16(sp)
   17dfa:	b4b9                	j	17848 <__gdtoa+0x32e>
   17dfc:	85ea                	mv	a1,s10
   17dfe:	8566                	mv	a0,s9
   17e00:	cc46                	sw	a7,24(sp)
   17e02:	c842                	sw	a6,16(sp)
   17e04:	0b0010ef          	jal	18eb4 <__mcmp>
   17e08:	4842                	lw	a6,16(sp)
   17e0a:	48e2                	lw	a7,24(sp)
   17e0c:	a40555e3          	bgez	a0,17856 <__gdtoa+0x33c>
   17e10:	57d2                	lw	a5,52(sp)
   17e12:	85e6                	mv	a1,s9
   17e14:	4681                	li	a3,0
   17e16:	17fd                	addi	a5,a5,-1
   17e18:	4629                	li	a2,10
   17e1a:	8522                	mv	a0,s0
   17e1c:	da3e                	sw	a5,52(sp)
   17e1e:	233000ef          	jal	18850 <__multadd>
   17e22:	8caa                	mv	s9,a0
   17e24:	c2050be3          	beqz	a0,17a5a <__gdtoa+0x540>
   17e28:	47c6                	lw	a5,80(sp)
   17e2a:	48e2                	lw	a7,24(sp)
   17e2c:	50079a63          	bnez	a5,18340 <__gdtoa+0xe26>
   17e30:	47f6                	lw	a5,92(sp)
   17e32:	14f05863          	blez	a5,17f82 <__gdtoa+0xa68>
   17e36:	d63e                	sw	a5,44(sp)
   17e38:	5932                	lw	s2,44(sp)
   17e3a:	8dc6                	mv	s11,a7
   17e3c:	4685                	li	a3,1
   17e3e:	89c6                	mv	s3,a7
   17e40:	a801                	j	17e50 <__gdtoa+0x936>
   17e42:	20f000ef          	jal	18850 <__multadd>
   17e46:	8caa                	mv	s9,a0
   17e48:	c00509e3          	beqz	a0,17a5a <__gdtoa+0x540>
   17e4c:	56b6                	lw	a3,108(sp)
   17e4e:	0685                	addi	a3,a3,1
   17e50:	85ea                	mv	a1,s10
   17e52:	8566                	mv	a0,s9
   17e54:	d6b6                	sw	a3,108(sp)
   17e56:	27a1                	jal	1859e <__quorem_D2A>
   17e58:	03050313          	addi	t1,a0,48
   17e5c:	006d8023          	sb	t1,0(s11)
   17e60:	57b6                	lw	a5,108(sp)
   17e62:	4681                	li	a3,0
   17e64:	4629                	li	a2,10
   17e66:	85e6                	mv	a1,s9
   17e68:	8522                	mv	a0,s0
   17e6a:	0d85                	addi	s11,s11,1
   17e6c:	fd27cbe3          	blt	a5,s2,17e42 <__gdtoa+0x928>
   17e70:	88ce                	mv	a7,s3
   17e72:	4981                	li	s3,0
   17e74:	5782                	lw	a5,32(sp)
   17e76:	2c078263          	beqz	a5,1813a <__gdtoa+0xc20>
   17e7a:	4689                	li	a3,2
   17e7c:	010ca603          	lw	a2,16(s9)
   17e80:	2ed78363          	beq	a5,a3,18166 <__gdtoa+0xc4c>
   17e84:	4685                	li	a3,1
   17e86:	1ac6c763          	blt	a3,a2,18034 <__gdtoa+0xb1a>
   17e8a:	014ca683          	lw	a3,20(s9)
   17e8e:	1a069363          	bnez	a3,18034 <__gdtoa+0xb1a>
   17e92:	00d036b3          	snez	a3,a3
   17e96:	00469b13          	slli	s6,a3,0x4
   17e9a:	03000593          	li	a1,48
   17e9e:	fffdc783          	lbu	a5,-1(s11)
   17ea2:	866e                	mv	a2,s11
   17ea4:	1dfd                	addi	s11,s11,-1
   17ea6:	feb78ce3          	beq	a5,a1,17e9e <__gdtoa+0x984>
   17eaa:	bdd5                	j	17d9e <__gdtoa+0x884>
   17eac:	57b2                	lw	a5,44(sp)
   17eae:	5742                	lw	a4,48(sp)
   17eb0:	fff78693          	addi	a3,a5,-1
   17eb4:	10d74463          	blt	a4,a3,17fbc <__gdtoa+0xaa2>
   17eb8:	40d70d33          	sub	s10,a4,a3
   17ebc:	4407d263          	bgez	a5,18300 <__gdtoa+0xde6>
   17ec0:	47e2                	lw	a5,24(sp)
   17ec2:	5732                	lw	a4,44(sp)
   17ec4:	d682                	sw	zero,108(sp)
   17ec6:	8f99                	sub	a5,a5,a4
   17ec8:	dc3e                	sw	a5,56(sp)
   17eca:	b8f1                	j	177a6 <__gdtoa+0x28c>
   17ecc:	4789                	li	a5,2
   17ece:	9927d7e3          	bge	a5,s2,1785c <__gdtoa+0x342>
   17ed2:	85ea                	mv	a1,s10
   17ed4:	4681                	li	a3,0
   17ed6:	4615                	li	a2,5
   17ed8:	8522                	mv	a0,s0
   17eda:	c846                	sw	a7,16(sp)
   17edc:	175000ef          	jal	18850 <__multadd>
   17ee0:	85aa                	mv	a1,a0
   17ee2:	b6050ce3          	beqz	a0,17a5a <__gdtoa+0x540>
   17ee6:	57b2                	lw	a5,44(sp)
   17ee8:	48c2                	lw	a7,16(sp)
   17eea:	e3f9                	bnez	a5,17fb0 <__gdtoa+0xa96>
   17eec:	c82a                	sw	a0,16(sp)
   17eee:	8566                	mv	a0,s9
   17ef0:	cc46                	sw	a7,24(sp)
   17ef2:	7c3000ef          	jal	18eb4 <__mcmp>
   17ef6:	45c2                	lw	a1,16(sp)
   17ef8:	48e2                	lw	a7,24(sp)
   17efa:	0aa05b63          	blez	a0,17fb0 <__gdtoa+0xa96>
   17efe:	57d2                	lw	a5,52(sp)
   17f00:	00278913          	addi	s2,a5,2
   17f04:	03100793          	li	a5,49
   17f08:	00188613          	addi	a2,a7,1
   17f0c:	00f88023          	sb	a5,0(a7)
   17f10:	02000b13          	li	s6,32
   17f14:	8522                	mv	a0,s0
   17f16:	d446                	sw	a7,40(sp)
   17f18:	c832                	sw	a2,16(sp)
   17f1a:	125000ef          	jal	1883e <_Bfree>
   17f1e:	4642                	lw	a2,16(sp)
   17f20:	58a2                	lw	a7,40(sp)
   17f22:	dc0c08e3          	beqz	s8,17cf2 <__gdtoa+0x7d8>
   17f26:	b55d                	j	17dcc <__gdtoa+0x8b2>
   17f28:	4605                	li	a2,1
   17f2a:	4585                	li	a1,1
   17f2c:	fecff06f          	j	17718 <__gdtoa+0x1fe>
   17f30:	85aa                	mv	a1,a0
   17f32:	8642                	mv	a2,a6
   17f34:	8522                	mv	a0,s0
   17f36:	c0c6                	sw	a7,64(sp)
   17f38:	d876                	sw	t4,48(sp)
   17f3a:	599000ef          	jal	18cd2 <__pow5mult>
   17f3e:	8d2a                	mv	s10,a0
   17f40:	b0050de3          	beqz	a0,17a5a <__gdtoa+0x540>
   17f44:	4685                	li	a3,1
   17f46:	5ec2                	lw	t4,48(sp)
   17f48:	4886                	lw	a7,64(sp)
   17f4a:	1526d063          	bge	a3,s2,1808a <__gdtoa+0xb70>
   17f4e:	010d2783          	lw	a5,16(s10)
   17f52:	d846                	sw	a7,48(sp)
   17f54:	c876                	sw	t4,16(sp)
   17f56:	078d                	addi	a5,a5,3
   17f58:	078a                	slli	a5,a5,0x2
   17f5a:	97ea                	add	a5,a5,s10
   17f5c:	43c8                	lw	a0,4(a5)
   17f5e:	299000ef          	jal	189f6 <__hi0bits>
   17f62:	58c2                	lw	a7,48(sp)
   17f64:	4ec2                	lw	t4,16(sp)
   17f66:	8a2a                	mv	s4,a0
   17f68:	885a                	mv	a6,s6
   17f6a:	b0d9                	j	17830 <__gdtoa+0x316>
   17f6c:	4685                	li	a3,1
   17f6e:	f326cfe3          	blt	a3,s2,17eac <__gdtoa+0x992>
   17f72:	47e2                	lw	a5,24(sp)
   17f74:	5d42                	lw	s10,48(sp)
   17f76:	9eae                	add	t4,t4,a1
   17f78:	dc3e                	sw	a5,56(sp)
   17f7a:	97ae                	add	a5,a5,a1
   17f7c:	cc3e                	sw	a5,24(sp)
   17f7e:	829ff06f          	j	177a6 <__gdtoa+0x28c>
   17f82:	4789                	li	a5,2
   17f84:	4727ce63          	blt	a5,s2,18400 <__gdtoa+0xee6>
   17f88:	47f6                	lw	a5,92(sp)
   17f8a:	d63e                	sw	a5,44(sp)
   17f8c:	b575                	j	17e38 <__gdtoa+0x91e>
   17f8e:	57b2                	lw	a5,44(sp)
   17f90:	ccf04fe3          	bgtz	a5,17c6e <__gdtoa+0x754>
   17f94:	ef81                	bnez	a5,17fac <__gdtoa+0xa92>
   17f96:	f281b787          	fld	fa5,-216(gp) # 1e738 <__SDATA_BEGIN__+0x80>
   17f9a:	c87a                	sw	t5,16(sp)
   17f9c:	ca7e                	sw	t6,20(sp)
   17f9e:	12f77753          	fmul.d	fa4,fa4,fa5
   17fa2:	27c2                	fld	fa5,16(sp)
   17fa4:	a2e787d3          	fle.d	a5,fa5,fa4
   17fa8:	38078663          	beqz	a5,18334 <__gdtoa+0xe1a>
   17fac:	4581                	li	a1,0
   17fae:	4c01                	li	s8,0
   17fb0:	57a2                	lw	a5,40(sp)
   17fb2:	8646                	mv	a2,a7
   17fb4:	4b41                	li	s6,16
   17fb6:	40f00933          	neg	s2,a5
   17fba:	bfa9                	j	17f14 <__gdtoa+0x9fa>
   17fbc:	57c2                	lw	a5,48(sp)
   17fbe:	4762                	lw	a4,24(sp)
   17fc0:	4d01                	li	s10,0
   17fc2:	40f68633          	sub	a2,a3,a5
   17fc6:	57b2                	lw	a5,44(sp)
   17fc8:	dc3a                	sw	a4,56(sp)
   17fca:	9832                	add	a6,a6,a2
   17fcc:	d6be                	sw	a5,108(sp)
   17fce:	9ebe                	add	t4,t4,a5
   17fd0:	97ba                	add	a5,a5,a4
   17fd2:	cc3e                	sw	a5,24(sp)
   17fd4:	d836                	sw	a3,48(sp)
   17fd6:	fd0ff06f          	j	177a6 <__gdtoa+0x28c>
   17fda:	85e2                	mv	a1,s8
   17fdc:	866a                	mv	a2,s10
   17fde:	8522                	mv	a0,s0
   17fe0:	ccc6                	sw	a7,88(sp)
   17fe2:	c4f6                	sw	t4,72(sp)
   17fe4:	c0c2                	sw	a6,64(sp)
   17fe6:	4ed000ef          	jal	18cd2 <__pow5mult>
   17fea:	8c2a                	mv	s8,a0
   17fec:	a60507e3          	beqz	a0,17a5a <__gdtoa+0x540>
   17ff0:	85aa                	mv	a1,a0
   17ff2:	8666                	mv	a2,s9
   17ff4:	8522                	mv	a0,s0
   17ff6:	347000ef          	jal	18b3c <__multiply>
   17ffa:	8aaa                	mv	s5,a0
   17ffc:	a4050fe3          	beqz	a0,17a5a <__gdtoa+0x540>
   18000:	85e6                	mv	a1,s9
   18002:	8522                	mv	a0,s0
   18004:	03b000ef          	jal	1883e <_Bfree>
   18008:	57c2                	lw	a5,48(sp)
   1800a:	4806                	lw	a6,64(sp)
   1800c:	4ea6                	lw	t4,72(sp)
   1800e:	41a787b3          	sub	a5,a5,s10
   18012:	d83e                	sw	a5,48(sp)
   18014:	48e6                	lw	a7,88(sp)
   18016:	8cd6                	mv	s9,s5
   18018:	fe078963          	beqz	a5,1780a <__gdtoa+0x2f0>
   1801c:	fd2ff06f          	j	177ee <__gdtoa+0x2d4>
   18020:	89e2                	mv	s3,s8
   18022:	86ee                	mv	a3,s11
   18024:	001d8913          	addi	s2,s11,1
   18028:	8c52                	mv	s8,s4
   1802a:	03900613          	li	a2,57
   1802e:	8dca                	mv	s11,s2
   18030:	00c68023          	sb	a2,0(a3)
   18034:	03900593          	li	a1,57
   18038:	a019                	j	1803e <__gdtoa+0xb24>
   1803a:	13b88f63          	beq	a7,s11,18178 <__gdtoa+0xc5e>
   1803e:	fffdc683          	lbu	a3,-1(s11)
   18042:	866e                	mv	a2,s11
   18044:	1dfd                	addi	s11,s11,-1
   18046:	feb68ae3          	beq	a3,a1,1803a <__gdtoa+0xb20>
   1804a:	0685                	addi	a3,a3,1
   1804c:	00dd8023          	sb	a3,0(s11)
   18050:	02000b13          	li	s6,32
   18054:	b3a9                	j	17d9e <__gdtoa+0x884>
   18056:	85e2                	mv	a1,s8
   18058:	8522                	mv	a0,s0
   1805a:	d446                	sw	a7,40(sp)
   1805c:	c842                	sw	a6,16(sp)
   1805e:	549000ef          	jal	18da6 <__lshift>
   18062:	4842                	lw	a6,16(sp)
   18064:	58a2                	lw	a7,40(sp)
   18066:	8c2a                	mv	s8,a0
   18068:	800512e3          	bnez	a0,1786c <__gdtoa+0x352>
   1806c:	b2fd                	j	17a5a <__gdtoa+0x540>
   1806e:	4785                	li	a5,1
   18070:	cc82                	sw	zero,88(sp)
   18072:	c8be                	sw	a5,80(sp)
   18074:	e90ff06f          	j	17704 <__gdtoa+0x1ea>
   18078:	4785                	li	a5,1
   1807a:	c8be                	sw	a5,80(sp)
   1807c:	e88ff06f          	j	17704 <__gdtoa+0x1ea>
   18080:	4785                	li	a5,1
   18082:	c8be                	sw	a5,80(sp)
   18084:	b1f1                	j	17d50 <__gdtoa+0x836>
   18086:	c882                	sw	zero,80(sp)
   18088:	b1e1                	j	17d50 <__gdtoa+0x836>
   1808a:	ecdd92e3          	bne	s11,a3,17f4e <__gdtoa+0xa34>
   1808e:	004a2783          	lw	a5,4(s4)
   18092:	4742                	lw	a4,16(sp)
   18094:	0785                	addi	a5,a5,1
   18096:	eae7dce3          	bge	a5,a4,17f4e <__gdtoa+0xa34>
   1809a:	47e2                	lw	a5,24(sp)
   1809c:	0e85                	addi	t4,t4,1
   1809e:	4b05                	li	s6,1
   180a0:	0785                	addi	a5,a5,1
   180a2:	cc3e                	sw	a5,24(sp)
   180a4:	b56d                	j	17f4e <__gdtoa+0xa34>
   180a6:	004c2583          	lw	a1,4(s8)
   180aa:	8522                	mv	a0,s0
   180ac:	c846                	sw	a7,16(sp)
   180ae:	2715                	jal	187d2 <_Balloc>
   180b0:	8a2a                	mv	s4,a0
   180b2:	9a0504e3          	beqz	a0,17a5a <__gdtoa+0x540>
   180b6:	010c2603          	lw	a2,16(s8)
   180ba:	00cc0593          	addi	a1,s8,12
   180be:	0531                	addi	a0,a0,12
   180c0:	0609                	addi	a2,a2,2
   180c2:	060a                	slli	a2,a2,0x2
   180c4:	f1bfe0ef          	jal	16fde <memcpy>
   180c8:	85d2                	mv	a1,s4
   180ca:	4605                	li	a2,1
   180cc:	8522                	mv	a0,s0
   180ce:	4d9000ef          	jal	18da6 <__lshift>
   180d2:	48c2                	lw	a7,16(sp)
   180d4:	8a2a                	mv	s4,a0
   180d6:	f8051e63          	bnez	a0,17872 <__gdtoa+0x358>
   180da:	b241                	j	17a5a <__gdtoa+0x540>
   180dc:	f201b707          	fld	fa4,-224(gp) # 1e730 <__SDATA_BEGIN__+0x78>
   180e0:	f181b787          	fld	fa5,-232(gp) # 1e728 <__SDATA_BEGIN__+0x70>
   180e4:	3682                	fld	fa3,32(sp)
   180e6:	fcc00637          	lui	a2,0xfcc00
   180ea:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   180ee:	bc3e                	fsd	fa5,56(sp)
   180f0:	5562                	lw	a0,56(sp)
   180f2:	55f2                	lw	a1,60(sp)
   180f4:	832a                	mv	t1,a0
   180f6:	962e                	add	a2,a2,a1
   180f8:	de32                	sw	a2,60(sp)
   180fa:	f281b707          	fld	fa4,-216(gp) # 1e738 <__SDATA_BEGIN__+0x80>
   180fe:	3782                	fld	fa5,32(sp)
   18100:	dc1a                	sw	t1,56(sp)
   18102:	0ae7f753          	fsub.d	fa4,fa5,fa4
   18106:	37e2                	fld	fa5,56(sp)
   18108:	a2e79653          	flt.d	a2,fa5,fa4
   1810c:	1e061663          	bnez	a2,182f8 <__gdtoa+0xdde>
   18110:	22f797d3          	fneg.d	fa5,fa5
   18114:	a2f71653          	flt.d	a2,fa4,fa5
   18118:	e8061ae3          	bnez	a2,17fac <__gdtoa+0xa92>
   1811c:	5f02                	lw	t5,32(sp)
   1811e:	5f92                	lw	t6,36(sp)
   18120:	65f9                	lui	a1,0x1e
   18122:	280c4b63          	bltz	s8,183b8 <__gdtoa+0xe9e>
   18126:	57a2                	lw	a5,40(sp)
   18128:	d002                	sw	zero,32(sp)
   1812a:	8985b707          	fld	fa4,-1896(a1) # 1d898 <__mprec_tens>
   1812e:	b407d0e3          	bgez	a5,17c6e <__gdtoa+0x754>
   18132:	57b2                	lw	a5,44(sp)
   18134:	b2079de3          	bnez	a5,17c6e <__gdtoa+0x754>
   18138:	bdb9                	j	17f96 <__gdtoa+0xa7c>
   1813a:	85e6                	mv	a1,s9
   1813c:	4605                	li	a2,1
   1813e:	8522                	mv	a0,s0
   18140:	c846                	sw	a7,16(sp)
   18142:	d41a                	sw	t1,40(sp)
   18144:	463000ef          	jal	18da6 <__lshift>
   18148:	8caa                	mv	s9,a0
   1814a:	900508e3          	beqz	a0,17a5a <__gdtoa+0x540>
   1814e:	85ea                	mv	a1,s10
   18150:	565000ef          	jal	18eb4 <__mcmp>
   18154:	48c2                	lw	a7,16(sp)
   18156:	eca04fe3          	bgtz	a0,18034 <__gdtoa+0xb1a>
   1815a:	e511                	bnez	a0,18166 <__gdtoa+0xc4c>
   1815c:	5322                	lw	t1,40(sp)
   1815e:	00137313          	andi	t1,t1,1
   18162:	ec0319e3          	bnez	t1,18034 <__gdtoa+0xb1a>
   18166:	010ca603          	lw	a2,16(s9)
   1816a:	4685                	li	a3,1
   1816c:	4b41                	li	s6,16
   1816e:	d2c6c6e3          	blt	a3,a2,17e9a <__gdtoa+0x980>
   18172:	014ca683          	lw	a3,20(s9)
   18176:	bb31                	j	17e92 <__gdtoa+0x978>
   18178:	57d2                	lw	a5,52(sp)
   1817a:	02000b13          	li	s6,32
   1817e:	0785                	addi	a5,a5,1
   18180:	da3e                	sw	a5,52(sp)
   18182:	03100793          	li	a5,49
   18186:	00f88023          	sb	a5,0(a7)
   1818a:	b911                	j	17d9e <__gdtoa+0x884>
   1818c:	5782                	lw	a5,32(sp)
   1818e:	8926                	mv	s2,s1
   18190:	835e                	mv	t1,s7
   18192:	58a2                	lw	a7,40(sp)
   18194:	4be2                	lw	s7,24(sp)
   18196:	54b2                	lw	s1,44(sp)
   18198:	cb91                	beqz	a5,181ac <__gdtoa+0xc92>
   1819a:	010ca603          	lw	a2,16(s9)
   1819e:	4685                	li	a3,1
   181a0:	fcc6c163          	blt	a3,a2,17962 <__gdtoa+0x448>
   181a4:	014ca683          	lw	a3,20(s9)
   181a8:	fa069d63          	bnez	a3,17962 <__gdtoa+0x448>
   181ac:	85e6                	mv	a1,s9
   181ae:	4605                	li	a2,1
   181b0:	8522                	mv	a0,s0
   181b2:	d446                	sw	a7,40(sp)
   181b4:	c81a                	sw	t1,16(sp)
   181b6:	3f1000ef          	jal	18da6 <__lshift>
   181ba:	8caa                	mv	s9,a0
   181bc:	88050fe3          	beqz	a0,17a5a <__gdtoa+0x540>
   181c0:	85ea                	mv	a1,s10
   181c2:	4f3000ef          	jal	18eb4 <__mcmp>
   181c6:	4342                	lw	t1,16(sp)
   181c8:	58a2                	lw	a7,40(sp)
   181ca:	22a05e63          	blez	a0,18406 <__gdtoa+0xeec>
   181ce:	03900693          	li	a3,57
   181d2:	e4d307e3          	beq	t1,a3,18020 <__gdtoa+0xb06>
   181d6:	02000793          	li	a5,32
   181da:	03190313          	addi	t1,s2,49
   181de:	d03e                	sw	a5,32(sp)
   181e0:	b655                	j	17d84 <__gdtoa+0x86a>
   181e2:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   181e6:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe157b>
   181ea:	a2f715d3          	flt.d	a1,fa4,fa5
   181ee:	9e059ae3          	bnez	a1,17be2 <__gdtoa+0x6c8>
   181f2:	a2e7a5d3          	feq.d	a1,fa5,fa4
   181f6:	c581                	beqz	a1,181fe <__gdtoa+0xce4>
   181f8:	8b85                	andi	a5,a5,1
   181fa:	9e0794e3          	bnez	a5,17be2 <__gdtoa+0x6c8>
   181fe:	87b2                	mv	a5,a2
   18200:	4b41                	li	s6,16
   18202:	03000593          	li	a1,48
   18206:	fff7c703          	lbu	a4,-1(a5)
   1820a:	863e                	mv	a2,a5
   1820c:	17fd                	addi	a5,a5,-1
   1820e:	feb70ce3          	beq	a4,a1,18206 <__gdtoa+0xcec>
   18212:	892a                	mv	s2,a0
   18214:	bcf9                	j	17cf2 <__gdtoa+0x7d8>
   18216:	03100693          	li	a3,49
   1821a:	0505                	addi	a0,a0,1
   1821c:	b2d5                	j	17c00 <__gdtoa+0x6e6>
   1821e:	de32                	sw	a2,60(sp)
   18220:	dc1a                	sw	t1,56(sp)
   18222:	3762                	fld	fa4,56(sp)
   18224:	de7e                	sw	t6,60(sp)
   18226:	dc7a                	sw	t5,56(sp)
   18228:	35e2                	fld	fa1,56(sp)
   1822a:	12e7f653          	fmul.d	fa2,fa5,fa4
   1822e:	f081b707          	fld	fa4,-248(gp) # 1e718 <__SDATA_BEGIN__+0x60>
   18232:	4685                	li	a3,1
   18234:	22b587d3          	fmv.d	fa5,fa1
   18238:	d6b6                	sw	a3,108(sp)
   1823a:	8646                	mv	a2,a7
   1823c:	4f81                	li	t6,0
   1823e:	a029                	j	18248 <__gdtoa+0xd2e>
   18240:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   18244:	d6ba                	sw	a4,108(sp)
   18246:	4f85                	li	t6,1
   18248:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1824c:	0605                	addi	a2,a2,1
   1824e:	03078693          	addi	a3,a5,48
   18252:	0ff6f693          	zext.b	a3,a3
   18256:	c791                	beqz	a5,18262 <__gdtoa+0xd48>
   18258:	d20786d3          	fcvt.d.w	fa3,a5
   1825c:	4f85                	li	t6,1
   1825e:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   18262:	fed60fa3          	sb	a3,-1(a2)
   18266:	57b6                	lw	a5,108(sp)
   18268:	00178713          	addi	a4,a5,1
   1826c:	fca79ae3          	bne	a5,a0,18240 <__gdtoa+0xd26>
   18270:	000f8463          	beqz	t6,18278 <__gdtoa+0xd5e>
   18274:	22f785d3          	fmv.d	fa1,fa5
   18278:	f301b787          	fld	fa5,-208(gp) # 1e740 <__SDATA_BEGIN__+0x88>
   1827c:	02f67753          	fadd.d	fa4,fa2,fa5
   18280:	a2b71553          	flt.d	a0,fa4,fa1
   18284:	0e051f63          	bnez	a0,18382 <__gdtoa+0xe68>
   18288:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   1828c:	a2f596d3          	flt.d	a3,fa1,fa5
   18290:	12069763          	bnez	a3,183be <__gdtoa+0xea4>
   18294:	5f02                	lw	t5,32(sp)
   18296:	5f92                	lw	t6,36(sp)
   18298:	e80c57e3          	bgez	s8,18126 <__gdtoa+0xc0c>
   1829c:	47e2                	lw	a5,24(sp)
   1829e:	5d42                	lw	s10,48(sp)
   182a0:	d002                	sw	zero,32(sp)
   182a2:	dc3e                	sw	a5,56(sp)
   182a4:	4c01                	li	s8,0
   182a6:	d1aff06f          	j	177c0 <__gdtoa+0x2a6>
   182aa:	835e                	mv	t1,s7
   182ac:	89e2                	mv	s3,s8
   182ae:	58a2                	lw	a7,40(sp)
   182b0:	4be2                	lw	s7,24(sp)
   182b2:	54b2                	lw	s1,44(sp)
   182b4:	8c52                	mv	s8,s4
   182b6:	be7d                	j	17e74 <__gdtoa+0x95a>
   182b8:	e20782e3          	beqz	a5,180dc <__gdtoa+0xbc2>
   182bc:	4576                	lw	a0,92(sp)
   182be:	e4a05fe3          	blez	a0,1811c <__gdtoa+0xc02>
   182c2:	f081b787          	fld	fa5,-248(gp) # 1e718 <__SDATA_BEGIN__+0x60>
   182c6:	53fd                	li	t2,-1
   182c8:	12f777d3          	fmul.d	fa5,fa4,fa5
   182cc:	f101b707          	fld	fa4,-240(gp) # 1e720 <__SDATA_BEGIN__+0x68>
   182d0:	bc3e                	fsd	fa5,56(sp)
   182d2:	36e2                	fld	fa3,56(sp)
   182d4:	f181b787          	fld	fa5,-232(gp) # 1e728 <__SDATA_BEGIN__+0x70>
   182d8:	fcc00637          	lui	a2,0xfcc00
   182dc:	5f62                	lw	t5,56(sp)
   182de:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   182e2:	5ff2                	lw	t6,60(sp)
   182e4:	a0be                	fsd	fa5,64(sp)
   182e6:	4706                	lw	a4,64(sp)
   182e8:	4796                	lw	a5,68(sp)
   182ea:	833a                	mv	t1,a4
   182ec:	963e                	add	a2,a2,a5
   182ee:	857ff06f          	j	17b44 <__gdtoa+0x62a>
   182f2:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe157b>
   182f6:	b0f5                	j	17be2 <__gdtoa+0x6c8>
   182f8:	4909                	li	s2,2
   182fa:	4581                	li	a1,0
   182fc:	4c01                	li	s8,0
   182fe:	b119                	j	17f04 <__gdtoa+0x9ea>
   18300:	4762                	lw	a4,24(sp)
   18302:	d6be                	sw	a5,108(sp)
   18304:	9ebe                	add	t4,t4,a5
   18306:	97ba                	add	a5,a5,a4
   18308:	dc3a                	sw	a4,56(sp)
   1830a:	cc3e                	sw	a5,24(sp)
   1830c:	c9aff06f          	j	177a6 <__gdtoa+0x28c>
   18310:	835e                	mv	t1,s7
   18312:	03900693          	li	a3,57
   18316:	58a2                	lw	a7,40(sp)
   18318:	4be2                	lw	s7,24(sp)
   1831a:	54b2                	lw	s1,44(sp)
   1831c:	d0d302e3          	beq	t1,a3,18020 <__gdtoa+0xb06>
   18320:	0305                	addi	t1,t1,1
   18322:	89e2                	mv	s3,s8
   18324:	001d8613          	addi	a2,s11,1
   18328:	006d8023          	sb	t1,0(s11)
   1832c:	8c52                	mv	s8,s4
   1832e:	02000b13          	li	s6,32
   18332:	b4b5                	j	17d9e <__gdtoa+0x884>
   18334:	57d2                	lw	a5,52(sp)
   18336:	4581                	li	a1,0
   18338:	4c01                	li	s8,0
   1833a:	00278913          	addi	s2,a5,2
   1833e:	b6d9                	j	17f04 <__gdtoa+0x9ea>
   18340:	85e2                	mv	a1,s8
   18342:	4681                	li	a3,0
   18344:	4629                	li	a2,10
   18346:	8522                	mv	a0,s0
   18348:	2321                	jal	18850 <__multadd>
   1834a:	8c2a                	mv	s8,a0
   1834c:	f0050763          	beqz	a0,17a5a <__gdtoa+0x540>
   18350:	47f6                	lw	a5,92(sp)
   18352:	4842                	lw	a6,16(sp)
   18354:	48e2                	lw	a7,24(sp)
   18356:	00f05563          	blez	a5,18360 <__gdtoa+0xe46>
   1835a:	d63e                	sw	a5,44(sp)
   1835c:	d06ff06f          	j	17862 <__gdtoa+0x348>
   18360:	4789                	li	a5,2
   18362:	0927cf63          	blt	a5,s2,18400 <__gdtoa+0xee6>
   18366:	47f6                	lw	a5,92(sp)
   18368:	d63e                	sw	a5,44(sp)
   1836a:	cf8ff06f          	j	17862 <__gdtoa+0x348>
   1836e:	d2000753          	fcvt.d.w	fa4,zero
   18372:	00138913          	addi	s2,t2,1
   18376:	a2e7ab53          	feq.d	s6,fa5,fa4
   1837a:	001b3b13          	seqz	s6,s6
   1837e:	0b12                	slli	s6,s6,0x4
   18380:	ba8d                	j	17cf2 <__gdtoa+0x7d8>
   18382:	00138513          	addi	a0,t2,1
   18386:	85dff06f          	j	17be2 <__gdtoa+0x6c8>
   1838a:	5f02                	lw	t5,32(sp)
   1838c:	5f92                	lw	t6,36(sp)
   1838e:	d80c5ce3          	bgez	s8,18126 <__gdtoa+0xc0c>
   18392:	d002                	sw	zero,32(sp)
   18394:	bccff06f          	j	17760 <__gdtoa+0x246>
   18398:	57b2                	lw	a5,44(sp)
   1839a:	5742                	lw	a4,48(sp)
   1839c:	fff78693          	addi	a3,a5,-1
   183a0:	c0d74ee3          	blt	a4,a3,17fbc <__gdtoa+0xaa2>
   183a4:	4662                	lw	a2,24(sp)
   183a6:	9ebe                	add	t4,t4,a5
   183a8:	d6be                	sw	a5,108(sp)
   183aa:	97b2                	add	a5,a5,a2
   183ac:	dc32                	sw	a2,56(sp)
   183ae:	40d70d33          	sub	s10,a4,a3
   183b2:	cc3e                	sw	a5,24(sp)
   183b4:	bf2ff06f          	j	177a6 <__gdtoa+0x28c>
   183b8:	d002                	sw	zero,32(sp)
   183ba:	ba0ff06f          	j	1775a <__gdtoa+0x240>
   183be:	d20007d3          	fcvt.d.w	fa5,zero
   183c2:	87b2                	mv	a5,a2
   183c4:	00138513          	addi	a0,t2,1
   183c8:	a2f5ab53          	feq.d	s6,fa1,fa5
   183cc:	001b3b13          	seqz	s6,s6
   183d0:	0b12                	slli	s6,s6,0x4
   183d2:	bd05                	j	18202 <__gdtoa+0xce8>
   183d4:	835e                	mv	t1,s7
   183d6:	03900693          	li	a3,57
   183da:	8926                	mv	s2,s1
   183dc:	58a2                	lw	a7,40(sp)
   183de:	4be2                	lw	s7,24(sp)
   183e0:	54b2                	lw	s1,44(sp)
   183e2:	c2d30fe3          	beq	t1,a3,18020 <__gdtoa+0xb06>
   183e6:	07505d63          	blez	s5,18460 <__gdtoa+0xf46>
   183ea:	03190313          	addi	t1,s2,49
   183ee:	02000b13          	li	s6,32
   183f2:	89e2                	mv	s3,s8
   183f4:	001d8613          	addi	a2,s11,1
   183f8:	006d8023          	sb	t1,0(s11)
   183fc:	8c52                	mv	s8,s4
   183fe:	b245                	j	17d9e <__gdtoa+0x884>
   18400:	47f6                	lw	a5,92(sp)
   18402:	d63e                	sw	a5,44(sp)
   18404:	b4f9                	j	17ed2 <__gdtoa+0x9b8>
   18406:	e509                	bnez	a0,18410 <__gdtoa+0xef6>
   18408:	00137693          	andi	a3,t1,1
   1840c:	dc0691e3          	bnez	a3,181ce <__gdtoa+0xcb4>
   18410:	02000793          	li	a5,32
   18414:	d03e                	sw	a5,32(sp)
   18416:	b2bd                	j	17d84 <__gdtoa+0x86a>
   18418:	014ca683          	lw	a3,20(s9)
   1841c:	96069ce3          	bnez	a3,17d94 <__gdtoa+0x87a>
   18420:	5b02                	lw	s6,32(sp)
   18422:	ba8d                	j	17d94 <__gdtoa+0x87a>
   18424:	03900693          	li	a3,57
   18428:	88da                	mv	a7,s6
   1842a:	00da8b63          	beq	s5,a3,18440 <__gdtoa+0xf26>
   1842e:	001a8313          	addi	t1,s5,1
   18432:	02000b13          	li	s6,32
   18436:	bab9                	j	17d94 <__gdtoa+0x87a>
   18438:	4b41                	li	s6,16
   1843a:	001d8913          	addi	s2,s11,1
   1843e:	ba99                	j	17d94 <__gdtoa+0x87a>
   18440:	89e2                	mv	s3,s8
   18442:	86ee                	mv	a3,s11
   18444:	8c52                	mv	s8,s4
   18446:	b6d5                	j	1802a <__gdtoa+0xb10>
   18448:	010ca603          	lw	a2,16(s9)
   1844c:	4685                	li	a3,1
   1844e:	d0c6ca63          	blt	a3,a2,17962 <__gdtoa+0x448>
   18452:	014ca683          	lw	a3,20(s9)
   18456:	d0069663          	bnez	a3,17962 <__gdtoa+0x448>
   1845a:	001d8913          	addi	s2,s11,1
   1845e:	ba1d                	j	17d94 <__gdtoa+0x87a>
   18460:	010ca603          	lw	a2,16(s9)
   18464:	4685                	li	a3,1
   18466:	4b41                	li	s6,16
   18468:	f8c6c5e3          	blt	a3,a2,183f2 <__gdtoa+0xed8>
   1846c:	014cab03          	lw	s6,20(s9)
   18470:	01603b33          	snez	s6,s6
   18474:	0b12                	slli	s6,s6,0x4
   18476:	bfb5                	j	183f2 <__gdtoa+0xed8>
   18478:	000ace63          	bltz	s5,18494 <__gdtoa+0xf7a>
   1847c:	01596ab3          	or	s5,s2,s5
   18480:	000a9663          	bnez	s5,1848c <__gdtoa+0xf72>
   18484:	0009a783          	lw	a5,0(s3)
   18488:	8b85                	andi	a5,a5,1
   1848a:	c789                	beqz	a5,18494 <__gdtoa+0xf7a>
   1848c:	c0d05c63          	blez	a3,178a4 <__gdtoa+0x38a>
   18490:	c0cff06f          	j	1789c <__gdtoa+0x382>
   18494:	5782                	lw	a5,32(sp)
   18496:	8926                	mv	s2,s1
   18498:	835e                	mv	t1,s7
   1849a:	58a2                	lw	a7,40(sp)
   1849c:	4be2                	lw	s7,24(sp)
   1849e:	54b2                	lw	s1,44(sp)
   184a0:	c385                	beqz	a5,184c0 <__gdtoa+0xfa6>
   184a2:	010ca583          	lw	a1,16(s9)
   184a6:	4605                	li	a2,1
   184a8:	cab64d63          	blt	a2,a1,17962 <__gdtoa+0x448>
   184ac:	014ca603          	lw	a2,20(s9)
   184b0:	ca061963          	bnez	a2,17962 <__gdtoa+0x448>
   184b4:	ced04ce3          	bgtz	a3,181ac <__gdtoa+0xc92>
   184b8:	4b01                	li	s6,0
   184ba:	001d8913          	addi	s2,s11,1
   184be:	b8d9                	j	17d94 <__gdtoa+0x87a>
   184c0:	8cd052e3          	blez	a3,17d84 <__gdtoa+0x86a>
   184c4:	b1e5                	j	181ac <__gdtoa+0xc92>

000184c6 <__rv_alloc_D2A.part.0>:
   184c6:	66f5                	lui	a3,0x1d
   184c8:	6575                	lui	a0,0x1d
   184ca:	1141                	addi	sp,sp,-16
   184cc:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   184d0:	4601                	li	a2,0
   184d2:	03900593          	li	a1,57
   184d6:	50450513          	addi	a0,a0,1284 # 1d504 <__clzsi2+0xe6>
   184da:	c606                	sw	ra,12(sp)
   184dc:	684010ef          	jal	19b60 <__assert_func>

000184e0 <__rv_alloc_D2A>:
   184e0:	1141                	addi	sp,sp,-16
   184e2:	c422                	sw	s0,8(sp)
   184e4:	c606                	sw	ra,12(sp)
   184e6:	46dd                	li	a3,23
   184e8:	842a                	mv	s0,a0
   184ea:	4705                	li	a4,1
   184ec:	4791                	li	a5,4
   184ee:	02b6f363          	bgeu	a3,a1,18514 <__rv_alloc_D2A+0x34>
   184f2:	0786                	slli	a5,a5,0x1
   184f4:	01478693          	addi	a3,a5,20
   184f8:	863a                	mv	a2,a4
   184fa:	0705                	addi	a4,a4,1
   184fc:	fed5fbe3          	bgeu	a1,a3,184f2 <__rv_alloc_D2A+0x12>
   18500:	85b2                	mv	a1,a2
   18502:	dc50                	sw	a2,60(s0)
   18504:	8522                	mv	a0,s0
   18506:	24f1                	jal	187d2 <_Balloc>
   18508:	c911                	beqz	a0,1851c <__rv_alloc_D2A+0x3c>
   1850a:	40b2                	lw	ra,12(sp)
   1850c:	dc08                	sw	a0,56(s0)
   1850e:	4422                	lw	s0,8(sp)
   18510:	0141                	addi	sp,sp,16
   18512:	8082                	ret
   18514:	02052e23          	sw	zero,60(a0)
   18518:	4581                	li	a1,0
   1851a:	b7ed                	j	18504 <__rv_alloc_D2A+0x24>
   1851c:	376d                	jal	184c6 <__rv_alloc_D2A.part.0>

0001851e <__nrv_alloc_D2A>:
   1851e:	1141                	addi	sp,sp,-16
   18520:	c422                	sw	s0,8(sp)
   18522:	c226                	sw	s1,4(sp)
   18524:	c04a                	sw	s2,0(sp)
   18526:	c606                	sw	ra,12(sp)
   18528:	485d                	li	a6,23
   1852a:	84aa                	mv	s1,a0
   1852c:	842e                	mv	s0,a1
   1852e:	8932                	mv	s2,a2
   18530:	4705                	li	a4,1
   18532:	4791                	li	a5,4
   18534:	04d87763          	bgeu	a6,a3,18582 <__nrv_alloc_D2A+0x64>
   18538:	0786                	slli	a5,a5,0x1
   1853a:	01478813          	addi	a6,a5,20
   1853e:	85ba                	mv	a1,a4
   18540:	0705                	addi	a4,a4,1
   18542:	ff06fbe3          	bgeu	a3,a6,18538 <__nrv_alloc_D2A+0x1a>
   18546:	dccc                	sw	a1,60(s1)
   18548:	8526                	mv	a0,s1
   1854a:	2461                	jal	187d2 <_Balloc>
   1854c:	c129                	beqz	a0,1858e <__nrv_alloc_D2A+0x70>
   1854e:	dc88                	sw	a0,56(s1)
   18550:	00044783          	lbu	a5,0(s0)
   18554:	00140593          	addi	a1,s0,1
   18558:	00f50023          	sb	a5,0(a0)
   1855c:	c79d                	beqz	a5,1858a <__nrv_alloc_D2A+0x6c>
   1855e:	87aa                	mv	a5,a0
   18560:	0005c703          	lbu	a4,0(a1)
   18564:	0785                	addi	a5,a5,1
   18566:	0585                	addi	a1,a1,1
   18568:	00e78023          	sb	a4,0(a5)
   1856c:	fb75                	bnez	a4,18560 <__nrv_alloc_D2A+0x42>
   1856e:	00090463          	beqz	s2,18576 <__nrv_alloc_D2A+0x58>
   18572:	00f92023          	sw	a5,0(s2)
   18576:	40b2                	lw	ra,12(sp)
   18578:	4422                	lw	s0,8(sp)
   1857a:	4492                	lw	s1,4(sp)
   1857c:	4902                	lw	s2,0(sp)
   1857e:	0141                	addi	sp,sp,16
   18580:	8082                	ret
   18582:	02052e23          	sw	zero,60(a0)
   18586:	4581                	li	a1,0
   18588:	b7c1                	j	18548 <__nrv_alloc_D2A+0x2a>
   1858a:	87aa                	mv	a5,a0
   1858c:	b7cd                	j	1856e <__nrv_alloc_D2A+0x50>
   1858e:	3f25                	jal	184c6 <__rv_alloc_D2A.part.0>

00018590 <__freedtoa>:
   18590:	5d54                	lw	a3,60(a0)
   18592:	4705                	li	a4,1
   18594:	00d71733          	sll	a4,a4,a3
   18598:	c1d4                	sw	a3,4(a1)
   1859a:	c598                	sw	a4,8(a1)
   1859c:	a44d                	j	1883e <_Bfree>

0001859e <__quorem_D2A>:
   1859e:	1101                	addi	sp,sp,-32
   185a0:	ca26                	sw	s1,20(sp)
   185a2:	491c                	lw	a5,16(a0)
   185a4:	4984                	lw	s1,16(a1)
   185a6:	ce06                	sw	ra,28(sp)
   185a8:	1497c163          	blt	a5,s1,186ea <__quorem_D2A+0x14c>
   185ac:	14fd                	addi	s1,s1,-1
   185ae:	00249313          	slli	t1,s1,0x2
   185b2:	cc22                	sw	s0,24(sp)
   185b4:	01458413          	addi	s0,a1,20
   185b8:	c64e                	sw	s3,12(sp)
   185ba:	c452                	sw	s4,8(sp)
   185bc:	006409b3          	add	s3,s0,t1
   185c0:	01450a13          	addi	s4,a0,20
   185c4:	0009a783          	lw	a5,0(s3)
   185c8:	9352                	add	t1,t1,s4
   185ca:	00032703          	lw	a4,0(t1)
   185ce:	c84a                	sw	s2,16(sp)
   185d0:	c256                	sw	s5,4(sp)
   185d2:	0785                	addi	a5,a5,1
   185d4:	02f75933          	divu	s2,a4,a5
   185d8:	8aaa                	mv	s5,a0
   185da:	08f76663          	bltu	a4,a5,18666 <__quorem_D2A+0xc8>
   185de:	6541                	lui	a0,0x10
   185e0:	88a2                	mv	a7,s0
   185e2:	8852                	mv	a6,s4
   185e4:	4f01                	li	t5,0
   185e6:	4e81                	li	t4,0
   185e8:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   185ea:	0008a783          	lw	a5,0(a7)
   185ee:	00082603          	lw	a2,0(a6)
   185f2:	0811                	addi	a6,a6,4
   185f4:	00a7f6b3          	and	a3,a5,a0
   185f8:	83c1                	srli	a5,a5,0x10
   185fa:	00a67733          	and	a4,a2,a0
   185fe:	01065e13          	srli	t3,a2,0x10
   18602:	0891                	addi	a7,a7,4
   18604:	032686b3          	mul	a3,a3,s2
   18608:	032787b3          	mul	a5,a5,s2
   1860c:	96fa                	add	a3,a3,t5
   1860e:	00a6f633          	and	a2,a3,a0
   18612:	8f11                	sub	a4,a4,a2
   18614:	41d70733          	sub	a4,a4,t4
   18618:	82c1                	srli	a3,a3,0x10
   1861a:	01075613          	srli	a2,a4,0x10
   1861e:	8a05                	andi	a2,a2,1
   18620:	8f69                	and	a4,a4,a0
   18622:	97b6                	add	a5,a5,a3
   18624:	00a7f6b3          	and	a3,a5,a0
   18628:	9636                	add	a2,a2,a3
   1862a:	40ce06b3          	sub	a3,t3,a2
   1862e:	01069613          	slli	a2,a3,0x10
   18632:	8f51                	or	a4,a4,a2
   18634:	82c1                	srli	a3,a3,0x10
   18636:	fee82e23          	sw	a4,-4(a6)
   1863a:	0107df13          	srli	t5,a5,0x10
   1863e:	0016fe93          	andi	t4,a3,1
   18642:	fb19f4e3          	bgeu	s3,a7,185ea <__quorem_D2A+0x4c>
   18646:	00032783          	lw	a5,0(t1)
   1864a:	ef91                	bnez	a5,18666 <__quorem_D2A+0xc8>
   1864c:	1371                	addi	t1,t1,-4
   1864e:	006a6663          	bltu	s4,t1,1865a <__quorem_D2A+0xbc>
   18652:	a801                	j	18662 <__quorem_D2A+0xc4>
   18654:	14fd                	addi	s1,s1,-1
   18656:	006a7663          	bgeu	s4,t1,18662 <__quorem_D2A+0xc4>
   1865a:	00032783          	lw	a5,0(t1)
   1865e:	1371                	addi	t1,t1,-4
   18660:	dbf5                	beqz	a5,18654 <__quorem_D2A+0xb6>
   18662:	009aa823          	sw	s1,16(s5)
   18666:	8556                	mv	a0,s5
   18668:	04d000ef          	jal	18eb4 <__mcmp>
   1866c:	06054563          	bltz	a0,186d6 <__quorem_D2A+0x138>
   18670:	6541                	lui	a0,0x10
   18672:	85d2                	mv	a1,s4
   18674:	4681                	li	a3,0
   18676:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   18678:	419c                	lw	a5,0(a1)
   1867a:	4010                	lw	a2,0(s0)
   1867c:	0591                	addi	a1,a1,4
   1867e:	00a7f733          	and	a4,a5,a0
   18682:	00a67833          	and	a6,a2,a0
   18686:	41070733          	sub	a4,a4,a6
   1868a:	8f15                	sub	a4,a4,a3
   1868c:	01075693          	srli	a3,a4,0x10
   18690:	8a85                	andi	a3,a3,1
   18692:	8241                	srli	a2,a2,0x10
   18694:	96b2                	add	a3,a3,a2
   18696:	83c1                	srli	a5,a5,0x10
   18698:	8f95                	sub	a5,a5,a3
   1869a:	01079693          	slli	a3,a5,0x10
   1869e:	8f69                	and	a4,a4,a0
   186a0:	8f55                	or	a4,a4,a3
   186a2:	83c1                	srli	a5,a5,0x10
   186a4:	0411                	addi	s0,s0,4
   186a6:	fee5ae23          	sw	a4,-4(a1)
   186aa:	0017f693          	andi	a3,a5,1
   186ae:	fc89f5e3          	bgeu	s3,s0,18678 <__quorem_D2A+0xda>
   186b2:	00249793          	slli	a5,s1,0x2
   186b6:	97d2                	add	a5,a5,s4
   186b8:	4398                	lw	a4,0(a5)
   186ba:	ef09                	bnez	a4,186d4 <__quorem_D2A+0x136>
   186bc:	17f1                	addi	a5,a5,-4
   186be:	00fa6663          	bltu	s4,a5,186ca <__quorem_D2A+0x12c>
   186c2:	a039                	j	186d0 <__quorem_D2A+0x132>
   186c4:	14fd                	addi	s1,s1,-1
   186c6:	00fa7563          	bgeu	s4,a5,186d0 <__quorem_D2A+0x132>
   186ca:	4398                	lw	a4,0(a5)
   186cc:	17f1                	addi	a5,a5,-4
   186ce:	db7d                	beqz	a4,186c4 <__quorem_D2A+0x126>
   186d0:	009aa823          	sw	s1,16(s5)
   186d4:	0905                	addi	s2,s2,1
   186d6:	4462                	lw	s0,24(sp)
   186d8:	40f2                	lw	ra,28(sp)
   186da:	49b2                	lw	s3,12(sp)
   186dc:	4a22                	lw	s4,8(sp)
   186de:	4a92                	lw	s5,4(sp)
   186e0:	44d2                	lw	s1,20(sp)
   186e2:	854a                	mv	a0,s2
   186e4:	4942                	lw	s2,16(sp)
   186e6:	6105                	addi	sp,sp,32
   186e8:	8082                	ret
   186ea:	40f2                	lw	ra,28(sp)
   186ec:	44d2                	lw	s1,20(sp)
   186ee:	4501                	li	a0,0
   186f0:	6105                	addi	sp,sp,32
   186f2:	8082                	ret

000186f4 <__rshift_D2A>:
   186f4:	01052803          	lw	a6,16(a0)
   186f8:	4055de13          	srai	t3,a1,0x5
   186fc:	010e4763          	blt	t3,a6,1870a <__rshift_D2A+0x16>
   18700:	00052823          	sw	zero,16(a0)
   18704:	00052a23          	sw	zero,20(a0)
   18708:	8082                	ret
   1870a:	01450313          	addi	t1,a0,20
   1870e:	00281613          	slli	a2,a6,0x2
   18712:	002e1793          	slli	a5,t3,0x2
   18716:	89fd                	andi	a1,a1,31
   18718:	961a                	add	a2,a2,t1
   1871a:	979a                	add	a5,a5,t1
   1871c:	c5a1                	beqz	a1,18764 <__rshift_D2A+0x70>
   1871e:	4394                	lw	a3,0(a5)
   18720:	02000e93          	li	t4,32
   18724:	0791                	addi	a5,a5,4
   18726:	40be8eb3          	sub	t4,t4,a1
   1872a:	00b6d6b3          	srl	a3,a3,a1
   1872e:	06c7f063          	bgeu	a5,a2,1878e <__rshift_D2A+0x9a>
   18732:	889a                	mv	a7,t1
   18734:	4398                	lw	a4,0(a5)
   18736:	0891                	addi	a7,a7,4
   18738:	0791                	addi	a5,a5,4
   1873a:	01d71733          	sll	a4,a4,t4
   1873e:	8f55                	or	a4,a4,a3
   18740:	fee8ae23          	sw	a4,-4(a7)
   18744:	ffc7a683          	lw	a3,-4(a5)
   18748:	00b6d6b3          	srl	a3,a3,a1
   1874c:	fec7e4e3          	bltu	a5,a2,18734 <__rshift_D2A+0x40>
   18750:	41c80833          	sub	a6,a6,t3
   18754:	080a                	slli	a6,a6,0x2
   18756:	1871                	addi	a6,a6,-4
   18758:	981a                	add	a6,a6,t1
   1875a:	00d82023          	sw	a3,0(a6)
   1875e:	c28d                	beqz	a3,18780 <__rshift_D2A+0x8c>
   18760:	0811                	addi	a6,a6,4
   18762:	a839                	j	18780 <__rshift_D2A+0x8c>
   18764:	871a                	mv	a4,t1
   18766:	f8c7fde3          	bgeu	a5,a2,18700 <__rshift_D2A+0xc>
   1876a:	4394                	lw	a3,0(a5)
   1876c:	0791                	addi	a5,a5,4
   1876e:	0711                	addi	a4,a4,4
   18770:	fed72e23          	sw	a3,-4(a4)
   18774:	fec7ebe3          	bltu	a5,a2,1876a <__rshift_D2A+0x76>
   18778:	41c80833          	sub	a6,a6,t3
   1877c:	080a                	slli	a6,a6,0x2
   1877e:	981a                	add	a6,a6,t1
   18780:	406807b3          	sub	a5,a6,t1
   18784:	8789                	srai	a5,a5,0x2
   18786:	c91c                	sw	a5,16(a0)
   18788:	f6680ee3          	beq	a6,t1,18704 <__rshift_D2A+0x10>
   1878c:	8082                	ret
   1878e:	c954                	sw	a3,20(a0)
   18790:	daa5                	beqz	a3,18700 <__rshift_D2A+0xc>
   18792:	881a                	mv	a6,t1
   18794:	0811                	addi	a6,a6,4
   18796:	b7ed                	j	18780 <__rshift_D2A+0x8c>

00018798 <__trailz_D2A>:
   18798:	4918                	lw	a4,16(a0)
   1879a:	1101                	addi	sp,sp,-32
   1879c:	0551                	addi	a0,a0,20
   1879e:	070a                	slli	a4,a4,0x2
   187a0:	cc22                	sw	s0,24(sp)
   187a2:	ce06                	sw	ra,28(sp)
   187a4:	972a                	add	a4,a4,a0
   187a6:	4401                	li	s0,0
   187a8:	00e56863          	bltu	a0,a4,187b8 <__trailz_D2A+0x20>
   187ac:	a831                	j	187c8 <__trailz_D2A+0x30>
   187ae:	0511                	addi	a0,a0,4
   187b0:	02040413          	addi	s0,s0,32
   187b4:	00e57a63          	bgeu	a0,a4,187c8 <__trailz_D2A+0x30>
   187b8:	411c                	lw	a5,0(a0)
   187ba:	dbf5                	beqz	a5,187ae <__trailz_D2A+0x16>
   187bc:	00e57663          	bgeu	a0,a4,187c8 <__trailz_D2A+0x30>
   187c0:	0068                	addi	a0,sp,12
   187c2:	c63e                	sw	a5,12(sp)
   187c4:	2459                	jal	18a4a <__lo0bits>
   187c6:	942a                	add	s0,s0,a0
   187c8:	40f2                	lw	ra,28(sp)
   187ca:	8522                	mv	a0,s0
   187cc:	4462                	lw	s0,24(sp)
   187ce:	6105                	addi	sp,sp,32
   187d0:	8082                	ret

000187d2 <_Balloc>:
   187d2:	417c                	lw	a5,68(a0)
   187d4:	1141                	addi	sp,sp,-16
   187d6:	c422                	sw	s0,8(sp)
   187d8:	c226                	sw	s1,4(sp)
   187da:	c606                	sw	ra,12(sp)
   187dc:	842a                	mv	s0,a0
   187de:	84ae                	mv	s1,a1
   187e0:	c38d                	beqz	a5,18802 <_Balloc+0x30>
   187e2:	00249713          	slli	a4,s1,0x2
   187e6:	97ba                	add	a5,a5,a4
   187e8:	4388                	lw	a0,0(a5)
   187ea:	c515                	beqz	a0,18816 <_Balloc+0x44>
   187ec:	4118                	lw	a4,0(a0)
   187ee:	c398                	sw	a4,0(a5)
   187f0:	00052823          	sw	zero,16(a0)
   187f4:	00052623          	sw	zero,12(a0)
   187f8:	40b2                	lw	ra,12(sp)
   187fa:	4422                	lw	s0,8(sp)
   187fc:	4492                	lw	s1,4(sp)
   187fe:	0141                	addi	sp,sp,16
   18800:	8082                	ret
   18802:	02100613          	li	a2,33
   18806:	4591                	li	a1,4
   18808:	39e010ef          	jal	19ba6 <_calloc_r>
   1880c:	c068                	sw	a0,68(s0)
   1880e:	87aa                	mv	a5,a0
   18810:	f969                	bnez	a0,187e2 <_Balloc+0x10>
   18812:	4501                	li	a0,0
   18814:	b7d5                	j	187f8 <_Balloc+0x26>
   18816:	c04a                	sw	s2,0(sp)
   18818:	4905                	li	s2,1
   1881a:	00991933          	sll	s2,s2,s1
   1881e:	00590613          	addi	a2,s2,5
   18822:	060a                	slli	a2,a2,0x2
   18824:	4585                	li	a1,1
   18826:	8522                	mv	a0,s0
   18828:	37e010ef          	jal	19ba6 <_calloc_r>
   1882c:	c511                	beqz	a0,18838 <_Balloc+0x66>
   1882e:	01252423          	sw	s2,8(a0)
   18832:	c144                	sw	s1,4(a0)
   18834:	4902                	lw	s2,0(sp)
   18836:	bf6d                	j	187f0 <_Balloc+0x1e>
   18838:	4902                	lw	s2,0(sp)
   1883a:	4501                	li	a0,0
   1883c:	bf75                	j	187f8 <_Balloc+0x26>

0001883e <_Bfree>:
   1883e:	c981                	beqz	a1,1884e <_Bfree+0x10>
   18840:	41d8                	lw	a4,4(a1)
   18842:	417c                	lw	a5,68(a0)
   18844:	070a                	slli	a4,a4,0x2
   18846:	97ba                	add	a5,a5,a4
   18848:	4398                	lw	a4,0(a5)
   1884a:	c198                	sw	a4,0(a1)
   1884c:	c38c                	sw	a1,0(a5)
   1884e:	8082                	ret

00018850 <__multadd>:
   18850:	1101                	addi	sp,sp,-32
   18852:	ca26                	sw	s1,20(sp)
   18854:	4984                	lw	s1,16(a1)
   18856:	6341                	lui	t1,0x10
   18858:	cc22                	sw	s0,24(sp)
   1885a:	c84a                	sw	s2,16(sp)
   1885c:	c64e                	sw	s3,12(sp)
   1885e:	ce06                	sw	ra,28(sp)
   18860:	892e                	mv	s2,a1
   18862:	89aa                	mv	s3,a0
   18864:	8436                	mv	s0,a3
   18866:	01458813          	addi	a6,a1,20
   1886a:	4881                	li	a7,0
   1886c:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   1886e:	00082783          	lw	a5,0(a6)
   18872:	0811                	addi	a6,a6,4
   18874:	0885                	addi	a7,a7,1
   18876:	0067f733          	and	a4,a5,t1
   1887a:	02c70733          	mul	a4,a4,a2
   1887e:	0107d693          	srli	a3,a5,0x10
   18882:	02c686b3          	mul	a3,a3,a2
   18886:	008707b3          	add	a5,a4,s0
   1888a:	0107d713          	srli	a4,a5,0x10
   1888e:	0067f7b3          	and	a5,a5,t1
   18892:	96ba                	add	a3,a3,a4
   18894:	01069713          	slli	a4,a3,0x10
   18898:	97ba                	add	a5,a5,a4
   1889a:	fef82e23          	sw	a5,-4(a6)
   1889e:	0106d413          	srli	s0,a3,0x10
   188a2:	fc98c6e3          	blt	a7,s1,1886e <__multadd+0x1e>
   188a6:	cc09                	beqz	s0,188c0 <__multadd+0x70>
   188a8:	00892783          	lw	a5,8(s2)
   188ac:	02f4d263          	bge	s1,a5,188d0 <__multadd+0x80>
   188b0:	00448793          	addi	a5,s1,4
   188b4:	078a                	slli	a5,a5,0x2
   188b6:	97ca                	add	a5,a5,s2
   188b8:	c3c0                	sw	s0,4(a5)
   188ba:	0485                	addi	s1,s1,1
   188bc:	00992823          	sw	s1,16(s2)
   188c0:	40f2                	lw	ra,28(sp)
   188c2:	4462                	lw	s0,24(sp)
   188c4:	44d2                	lw	s1,20(sp)
   188c6:	49b2                	lw	s3,12(sp)
   188c8:	854a                	mv	a0,s2
   188ca:	4942                	lw	s2,16(sp)
   188cc:	6105                	addi	sp,sp,32
   188ce:	8082                	ret
   188d0:	00492583          	lw	a1,4(s2)
   188d4:	854e                	mv	a0,s3
   188d6:	c452                	sw	s4,8(sp)
   188d8:	0585                	addi	a1,a1,1
   188da:	3de5                	jal	187d2 <_Balloc>
   188dc:	8a2a                	mv	s4,a0
   188de:	c121                	beqz	a0,1891e <__multadd+0xce>
   188e0:	01092603          	lw	a2,16(s2)
   188e4:	00c90593          	addi	a1,s2,12
   188e8:	0531                	addi	a0,a0,12
   188ea:	0609                	addi	a2,a2,2
   188ec:	060a                	slli	a2,a2,0x2
   188ee:	ef0fe0ef          	jal	16fde <memcpy>
   188f2:	00492703          	lw	a4,4(s2)
   188f6:	0449a783          	lw	a5,68(s3)
   188fa:	070a                	slli	a4,a4,0x2
   188fc:	97ba                	add	a5,a5,a4
   188fe:	4398                	lw	a4,0(a5)
   18900:	00e92023          	sw	a4,0(s2)
   18904:	0127a023          	sw	s2,0(a5)
   18908:	00448793          	addi	a5,s1,4
   1890c:	8952                	mv	s2,s4
   1890e:	078a                	slli	a5,a5,0x2
   18910:	97ca                	add	a5,a5,s2
   18912:	4a22                	lw	s4,8(sp)
   18914:	0485                	addi	s1,s1,1
   18916:	c3c0                	sw	s0,4(a5)
   18918:	00992823          	sw	s1,16(s2)
   1891c:	b755                	j	188c0 <__multadd+0x70>
   1891e:	66f5                	lui	a3,0x1d
   18920:	6575                	lui	a0,0x1d
   18922:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   18926:	4601                	li	a2,0
   18928:	0ba00593          	li	a1,186
   1892c:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   18930:	230010ef          	jal	19b60 <__assert_func>

00018934 <__s2b>:
   18934:	1101                	addi	sp,sp,-32
   18936:	cc22                	sw	s0,24(sp)
   18938:	ca26                	sw	s1,20(sp)
   1893a:	c84a                	sw	s2,16(sp)
   1893c:	c64e                	sw	s3,12(sp)
   1893e:	c452                	sw	s4,8(sp)
   18940:	89b6                	mv	s3,a3
   18942:	47a5                	li	a5,9
   18944:	06a1                	addi	a3,a3,8
   18946:	ce06                	sw	ra,28(sp)
   18948:	02f6c6b3          	div	a3,a3,a5
   1894c:	892a                	mv	s2,a0
   1894e:	842e                	mv	s0,a1
   18950:	8a32                	mv	s4,a2
   18952:	84ba                	mv	s1,a4
   18954:	0937d363          	bge	a5,s3,189da <__s2b+0xa6>
   18958:	4785                	li	a5,1
   1895a:	4581                	li	a1,0
   1895c:	0786                	slli	a5,a5,0x1
   1895e:	0585                	addi	a1,a1,1
   18960:	fed7cee3          	blt	a5,a3,1895c <__s2b+0x28>
   18964:	854a                	mv	a0,s2
   18966:	e6dff0ef          	jal	187d2 <_Balloc>
   1896a:	85aa                	mv	a1,a0
   1896c:	c92d                	beqz	a0,189de <__s2b+0xaa>
   1896e:	4785                	li	a5,1
   18970:	c91c                	sw	a5,16(a0)
   18972:	c944                	sw	s1,20(a0)
   18974:	47a5                	li	a5,9
   18976:	0547df63          	bge	a5,s4,189d4 <__s2b+0xa0>
   1897a:	c256                	sw	s5,4(sp)
   1897c:	00940a93          	addi	s5,s0,9
   18980:	84d6                	mv	s1,s5
   18982:	9452                	add	s0,s0,s4
   18984:	0004c683          	lbu	a3,0(s1)
   18988:	4629                	li	a2,10
   1898a:	854a                	mv	a0,s2
   1898c:	fd068693          	addi	a3,a3,-48
   18990:	35c1                	jal	18850 <__multadd>
   18992:	0485                	addi	s1,s1,1
   18994:	85aa                	mv	a1,a0
   18996:	fe8497e3          	bne	s1,s0,18984 <__s2b+0x50>
   1899a:	ff8a0413          	addi	s0,s4,-8
   1899e:	9456                	add	s0,s0,s5
   189a0:	4a92                	lw	s5,4(sp)
   189a2:	033a5063          	bge	s4,s3,189c2 <__s2b+0x8e>
   189a6:	414989b3          	sub	s3,s3,s4
   189aa:	99a2                	add	s3,s3,s0
   189ac:	00044683          	lbu	a3,0(s0)
   189b0:	4629                	li	a2,10
   189b2:	854a                	mv	a0,s2
   189b4:	fd068693          	addi	a3,a3,-48
   189b8:	3d61                	jal	18850 <__multadd>
   189ba:	0405                	addi	s0,s0,1
   189bc:	85aa                	mv	a1,a0
   189be:	ff3417e3          	bne	s0,s3,189ac <__s2b+0x78>
   189c2:	40f2                	lw	ra,28(sp)
   189c4:	4462                	lw	s0,24(sp)
   189c6:	44d2                	lw	s1,20(sp)
   189c8:	4942                	lw	s2,16(sp)
   189ca:	49b2                	lw	s3,12(sp)
   189cc:	4a22                	lw	s4,8(sp)
   189ce:	852e                	mv	a0,a1
   189d0:	6105                	addi	sp,sp,32
   189d2:	8082                	ret
   189d4:	0429                	addi	s0,s0,10
   189d6:	4a25                	li	s4,9
   189d8:	b7e9                	j	189a2 <__s2b+0x6e>
   189da:	4581                	li	a1,0
   189dc:	b761                	j	18964 <__s2b+0x30>
   189de:	66f5                	lui	a3,0x1d
   189e0:	6575                	lui	a0,0x1d
   189e2:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   189e6:	4601                	li	a2,0
   189e8:	0d300593          	li	a1,211
   189ec:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   189f0:	c256                	sw	s5,4(sp)
   189f2:	16e010ef          	jal	19b60 <__assert_func>

000189f6 <__hi0bits>:
   189f6:	87aa                	mv	a5,a0
   189f8:	6741                	lui	a4,0x10
   189fa:	4501                	li	a0,0
   189fc:	00e7f463          	bgeu	a5,a4,18a04 <__hi0bits+0xe>
   18a00:	07c2                	slli	a5,a5,0x10
   18a02:	4541                	li	a0,16
   18a04:	01000737          	lui	a4,0x1000
   18a08:	00e7f463          	bgeu	a5,a4,18a10 <__hi0bits+0x1a>
   18a0c:	0521                	addi	a0,a0,8
   18a0e:	07a2                	slli	a5,a5,0x8
   18a10:	10000737          	lui	a4,0x10000
   18a14:	00e7f463          	bgeu	a5,a4,18a1c <__hi0bits+0x26>
   18a18:	0511                	addi	a0,a0,4
   18a1a:	0792                	slli	a5,a5,0x4
   18a1c:	40000737          	lui	a4,0x40000
   18a20:	00e7e763          	bltu	a5,a4,18a2e <__hi0bits+0x38>
   18a24:	fff7c793          	not	a5,a5
   18a28:	83fd                	srli	a5,a5,0x1f
   18a2a:	953e                	add	a0,a0,a5
   18a2c:	8082                	ret
   18a2e:	078a                	slli	a5,a5,0x2
   18a30:	0007c963          	bltz	a5,18a42 <__hi0bits+0x4c>
   18a34:	00179713          	slli	a4,a5,0x1
   18a38:	00074763          	bltz	a4,18a46 <__hi0bits+0x50>
   18a3c:	02000513          	li	a0,32
   18a40:	8082                	ret
   18a42:	0509                	addi	a0,a0,2
   18a44:	8082                	ret
   18a46:	050d                	addi	a0,a0,3
   18a48:	8082                	ret

00018a4a <__lo0bits>:
   18a4a:	411c                	lw	a5,0(a0)
   18a4c:	872a                	mv	a4,a0
   18a4e:	0077f693          	andi	a3,a5,7
   18a52:	ce81                	beqz	a3,18a6a <__lo0bits+0x20>
   18a54:	0017f693          	andi	a3,a5,1
   18a58:	4501                	li	a0,0
   18a5a:	ee95                	bnez	a3,18a96 <__lo0bits+0x4c>
   18a5c:	0027f693          	andi	a3,a5,2
   18a60:	c6b5                	beqz	a3,18acc <__lo0bits+0x82>
   18a62:	8385                	srli	a5,a5,0x1
   18a64:	c31c                	sw	a5,0(a4)
   18a66:	4505                	li	a0,1
   18a68:	8082                	ret
   18a6a:	01079693          	slli	a3,a5,0x10
   18a6e:	82c1                	srli	a3,a3,0x10
   18a70:	4501                	li	a0,0
   18a72:	c6b9                	beqz	a3,18ac0 <__lo0bits+0x76>
   18a74:	0ff7f693          	zext.b	a3,a5
   18a78:	ce95                	beqz	a3,18ab4 <__lo0bits+0x6a>
   18a7a:	00f7f693          	andi	a3,a5,15
   18a7e:	c68d                	beqz	a3,18aa8 <__lo0bits+0x5e>
   18a80:	0037f693          	andi	a3,a5,3
   18a84:	ce81                	beqz	a3,18a9c <__lo0bits+0x52>
   18a86:	0017f693          	andi	a3,a5,1
   18a8a:	e699                	bnez	a3,18a98 <__lo0bits+0x4e>
   18a8c:	8385                	srli	a5,a5,0x1
   18a8e:	0505                	addi	a0,a0,1
   18a90:	e781                	bnez	a5,18a98 <__lo0bits+0x4e>
   18a92:	02000513          	li	a0,32
   18a96:	8082                	ret
   18a98:	c31c                	sw	a5,0(a4)
   18a9a:	8082                	ret
   18a9c:	8389                	srli	a5,a5,0x2
   18a9e:	0017f693          	andi	a3,a5,1
   18aa2:	0509                	addi	a0,a0,2
   18aa4:	faf5                	bnez	a3,18a98 <__lo0bits+0x4e>
   18aa6:	b7dd                	j	18a8c <__lo0bits+0x42>
   18aa8:	8391                	srli	a5,a5,0x4
   18aaa:	0037f693          	andi	a3,a5,3
   18aae:	0511                	addi	a0,a0,4
   18ab0:	faf9                	bnez	a3,18a86 <__lo0bits+0x3c>
   18ab2:	b7ed                	j	18a9c <__lo0bits+0x52>
   18ab4:	83a1                	srli	a5,a5,0x8
   18ab6:	00f7f693          	andi	a3,a5,15
   18aba:	0521                	addi	a0,a0,8
   18abc:	f2f1                	bnez	a3,18a80 <__lo0bits+0x36>
   18abe:	b7ed                	j	18aa8 <__lo0bits+0x5e>
   18ac0:	83c1                	srli	a5,a5,0x10
   18ac2:	0ff7f693          	zext.b	a3,a5
   18ac6:	4541                	li	a0,16
   18ac8:	facd                	bnez	a3,18a7a <__lo0bits+0x30>
   18aca:	b7ed                	j	18ab4 <__lo0bits+0x6a>
   18acc:	8389                	srli	a5,a5,0x2
   18ace:	c31c                	sw	a5,0(a4)
   18ad0:	4509                	li	a0,2
   18ad2:	8082                	ret

00018ad4 <__i2b>:
   18ad4:	417c                	lw	a5,68(a0)
   18ad6:	1141                	addi	sp,sp,-16
   18ad8:	c422                	sw	s0,8(sp)
   18ada:	c226                	sw	s1,4(sp)
   18adc:	c606                	sw	ra,12(sp)
   18ade:	842a                	mv	s0,a0
   18ae0:	84ae                	mv	s1,a1
   18ae2:	cf99                	beqz	a5,18b00 <__i2b+0x2c>
   18ae4:	43c8                	lw	a0,4(a5)
   18ae6:	c121                	beqz	a0,18b26 <__i2b+0x52>
   18ae8:	4118                	lw	a4,0(a0)
   18aea:	c3d8                	sw	a4,4(a5)
   18aec:	40b2                	lw	ra,12(sp)
   18aee:	4422                	lw	s0,8(sp)
   18af0:	4785                	li	a5,1
   18af2:	c944                	sw	s1,20(a0)
   18af4:	00052623          	sw	zero,12(a0)
   18af8:	c91c                	sw	a5,16(a0)
   18afa:	4492                	lw	s1,4(sp)
   18afc:	0141                	addi	sp,sp,16
   18afe:	8082                	ret
   18b00:	02100613          	li	a2,33
   18b04:	4591                	li	a1,4
   18b06:	0a0010ef          	jal	19ba6 <_calloc_r>
   18b0a:	c068                	sw	a0,68(s0)
   18b0c:	87aa                	mv	a5,a0
   18b0e:	f979                	bnez	a0,18ae4 <__i2b+0x10>
   18b10:	66f5                	lui	a3,0x1d
   18b12:	6575                	lui	a0,0x1d
   18b14:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   18b18:	4601                	li	a2,0
   18b1a:	14500593          	li	a1,325
   18b1e:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   18b22:	03e010ef          	jal	19b60 <__assert_func>
   18b26:	4671                	li	a2,28
   18b28:	4585                	li	a1,1
   18b2a:	8522                	mv	a0,s0
   18b2c:	07a010ef          	jal	19ba6 <_calloc_r>
   18b30:	d165                	beqz	a0,18b10 <__i2b+0x3c>
   18b32:	4785                	li	a5,1
   18b34:	c15c                	sw	a5,4(a0)
   18b36:	4789                	li	a5,2
   18b38:	c51c                	sw	a5,8(a0)
   18b3a:	bf4d                	j	18aec <__i2b+0x18>

00018b3c <__multiply>:
   18b3c:	1101                	addi	sp,sp,-32
   18b3e:	c84a                	sw	s2,16(sp)
   18b40:	c64e                	sw	s3,12(sp)
   18b42:	0105a903          	lw	s2,16(a1)
   18b46:	01062983          	lw	s3,16(a2)
   18b4a:	ca26                	sw	s1,20(sp)
   18b4c:	c452                	sw	s4,8(sp)
   18b4e:	ce06                	sw	ra,28(sp)
   18b50:	cc22                	sw	s0,24(sp)
   18b52:	8a2e                	mv	s4,a1
   18b54:	84b2                	mv	s1,a2
   18b56:	01394763          	blt	s2,s3,18b64 <__multiply+0x28>
   18b5a:	874e                	mv	a4,s3
   18b5c:	84ae                	mv	s1,a1
   18b5e:	89ca                	mv	s3,s2
   18b60:	8a32                	mv	s4,a2
   18b62:	893a                	mv	s2,a4
   18b64:	449c                	lw	a5,8(s1)
   18b66:	40cc                	lw	a1,4(s1)
   18b68:	01298433          	add	s0,s3,s2
   18b6c:	0087a7b3          	slt	a5,a5,s0
   18b70:	95be                	add	a1,a1,a5
   18b72:	c61ff0ef          	jal	187d2 <_Balloc>
   18b76:	14050363          	beqz	a0,18cbc <__multiply+0x180>
   18b7a:	01450313          	addi	t1,a0,20
   18b7e:	00241893          	slli	a7,s0,0x2
   18b82:	989a                	add	a7,a7,t1
   18b84:	879a                	mv	a5,t1
   18b86:	01137763          	bgeu	t1,a7,18b94 <__multiply+0x58>
   18b8a:	0007a023          	sw	zero,0(a5)
   18b8e:	0791                	addi	a5,a5,4
   18b90:	ff17ede3          	bltu	a5,a7,18b8a <__multiply+0x4e>
   18b94:	014a0813          	addi	a6,s4,20
   18b98:	00291e13          	slli	t3,s2,0x2
   18b9c:	01448e93          	addi	t4,s1,20
   18ba0:	00299593          	slli	a1,s3,0x2
   18ba4:	9e42                	add	t3,t3,a6
   18ba6:	95f6                	add	a1,a1,t4
   18ba8:	0fc87163          	bgeu	a6,t3,18c8a <__multiply+0x14e>
   18bac:	01548793          	addi	a5,s1,21
   18bb0:	4f11                	li	t5,4
   18bb2:	0ef5fe63          	bgeu	a1,a5,18cae <__multiply+0x172>
   18bb6:	66c1                	lui	a3,0x10
   18bb8:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   18bba:	a809                	j	18bcc <__multiply+0x90>
   18bbc:	010fdf93          	srli	t6,t6,0x10
   18bc0:	060f9863          	bnez	t6,18c30 <__multiply+0xf4>
   18bc4:	0811                	addi	a6,a6,4
   18bc6:	0311                	addi	t1,t1,4
   18bc8:	0dc87163          	bgeu	a6,t3,18c8a <__multiply+0x14e>
   18bcc:	00082f83          	lw	t6,0(a6)
   18bd0:	00dff3b3          	and	t2,t6,a3
   18bd4:	fe0384e3          	beqz	t2,18bbc <__multiply+0x80>
   18bd8:	829a                	mv	t0,t1
   18bda:	8ff6                	mv	t6,t4
   18bdc:	4481                	li	s1,0
   18bde:	000fa783          	lw	a5,0(t6)
   18be2:	0002a603          	lw	a2,0(t0) # 13ef8 <memset+0x8e>
   18be6:	0291                	addi	t0,t0,4
   18be8:	00d7f733          	and	a4,a5,a3
   18bec:	02770733          	mul	a4,a4,t2
   18bf0:	83c1                	srli	a5,a5,0x10
   18bf2:	00d67933          	and	s2,a2,a3
   18bf6:	8241                	srli	a2,a2,0x10
   18bf8:	0f91                	addi	t6,t6,4
   18bfa:	027787b3          	mul	a5,a5,t2
   18bfe:	974a                	add	a4,a4,s2
   18c00:	9726                	add	a4,a4,s1
   18c02:	01075493          	srli	s1,a4,0x10
   18c06:	8f75                	and	a4,a4,a3
   18c08:	97b2                	add	a5,a5,a2
   18c0a:	97a6                	add	a5,a5,s1
   18c0c:	01079613          	slli	a2,a5,0x10
   18c10:	8f51                	or	a4,a4,a2
   18c12:	fee2ae23          	sw	a4,-4(t0)
   18c16:	0107d493          	srli	s1,a5,0x10
   18c1a:	fcbfe2e3          	bltu	t6,a1,18bde <__multiply+0xa2>
   18c1e:	01e307b3          	add	a5,t1,t5
   18c22:	c384                	sw	s1,0(a5)
   18c24:	00082f83          	lw	t6,0(a6)
   18c28:	010fdf93          	srli	t6,t6,0x10
   18c2c:	f80f8ce3          	beqz	t6,18bc4 <__multiply+0x88>
   18c30:	00032703          	lw	a4,0(t1)
   18c34:	829a                	mv	t0,t1
   18c36:	8676                	mv	a2,t4
   18c38:	84ba                	mv	s1,a4
   18c3a:	4381                	li	t2,0
   18c3c:	421c                	lw	a5,0(a2)
   18c3e:	0104d993          	srli	s3,s1,0x10
   18c42:	8f75                	and	a4,a4,a3
   18c44:	8ff5                	and	a5,a5,a3
   18c46:	03f787b3          	mul	a5,a5,t6
   18c4a:	0042a483          	lw	s1,4(t0)
   18c4e:	0291                	addi	t0,t0,4
   18c50:	0611                	addi	a2,a2,4
   18c52:	00d4f933          	and	s2,s1,a3
   18c56:	979e                	add	a5,a5,t2
   18c58:	97ce                	add	a5,a5,s3
   18c5a:	01079393          	slli	t2,a5,0x10
   18c5e:	00e3e733          	or	a4,t2,a4
   18c62:	fee2ae23          	sw	a4,-4(t0)
   18c66:	ffe65703          	lhu	a4,-2(a2)
   18c6a:	83c1                	srli	a5,a5,0x10
   18c6c:	03f70733          	mul	a4,a4,t6
   18c70:	974a                	add	a4,a4,s2
   18c72:	973e                	add	a4,a4,a5
   18c74:	01075393          	srli	t2,a4,0x10
   18c78:	fcb662e3          	bltu	a2,a1,18c3c <__multiply+0x100>
   18c7c:	01e307b3          	add	a5,t1,t5
   18c80:	c398                	sw	a4,0(a5)
   18c82:	0811                	addi	a6,a6,4
   18c84:	0311                	addi	t1,t1,4
   18c86:	f5c863e3          	bltu	a6,t3,18bcc <__multiply+0x90>
   18c8a:	00804563          	bgtz	s0,18c94 <__multiply+0x158>
   18c8e:	a039                	j	18c9c <__multiply+0x160>
   18c90:	147d                	addi	s0,s0,-1
   18c92:	c409                	beqz	s0,18c9c <__multiply+0x160>
   18c94:	ffc8a783          	lw	a5,-4(a7)
   18c98:	18f1                	addi	a7,a7,-4
   18c9a:	dbfd                	beqz	a5,18c90 <__multiply+0x154>
   18c9c:	40f2                	lw	ra,28(sp)
   18c9e:	c900                	sw	s0,16(a0)
   18ca0:	4462                	lw	s0,24(sp)
   18ca2:	44d2                	lw	s1,20(sp)
   18ca4:	4942                	lw	s2,16(sp)
   18ca6:	49b2                	lw	s3,12(sp)
   18ca8:	4a22                	lw	s4,8(sp)
   18caa:	6105                	addi	sp,sp,32
   18cac:	8082                	ret
   18cae:	409587b3          	sub	a5,a1,s1
   18cb2:	17ad                	addi	a5,a5,-21
   18cb4:	9bf1                	andi	a5,a5,-4
   18cb6:	00478f13          	addi	t5,a5,4
   18cba:	bdf5                	j	18bb6 <__multiply+0x7a>
   18cbc:	66f5                	lui	a3,0x1d
   18cbe:	6575                	lui	a0,0x1d
   18cc0:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   18cc4:	4601                	li	a2,0
   18cc6:	16200593          	li	a1,354
   18cca:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   18cce:	693000ef          	jal	19b60 <__assert_func>

00018cd2 <__pow5mult>:
   18cd2:	1101                	addi	sp,sp,-32
   18cd4:	cc22                	sw	s0,24(sp)
   18cd6:	c84a                	sw	s2,16(sp)
   18cd8:	c64e                	sw	s3,12(sp)
   18cda:	ce06                	sw	ra,28(sp)
   18cdc:	00367793          	andi	a5,a2,3
   18ce0:	8432                	mv	s0,a2
   18ce2:	89aa                	mv	s3,a0
   18ce4:	892e                	mv	s2,a1
   18ce6:	ebad                	bnez	a5,18d58 <__pow5mult+0x86>
   18ce8:	8409                	srai	s0,s0,0x2
   18cea:	c431                	beqz	s0,18d36 <__pow5mult+0x64>
   18cec:	ca26                	sw	s1,20(sp)
   18cee:	0409a483          	lw	s1,64(s3)
   18cf2:	ccbd                	beqz	s1,18d70 <__pow5mult+0x9e>
   18cf4:	00147793          	andi	a5,s0,1
   18cf8:	eb89                	bnez	a5,18d0a <__pow5mult+0x38>
   18cfa:	8405                	srai	s0,s0,0x1
   18cfc:	cc05                	beqz	s0,18d34 <__pow5mult+0x62>
   18cfe:	4088                	lw	a0,0(s1)
   18d00:	c131                	beqz	a0,18d44 <__pow5mult+0x72>
   18d02:	84aa                	mv	s1,a0
   18d04:	00147793          	andi	a5,s0,1
   18d08:	dbed                	beqz	a5,18cfa <__pow5mult+0x28>
   18d0a:	8626                	mv	a2,s1
   18d0c:	85ca                	mv	a1,s2
   18d0e:	854e                	mv	a0,s3
   18d10:	e2dff0ef          	jal	18b3c <__multiply>
   18d14:	00090d63          	beqz	s2,18d2e <__pow5mult+0x5c>
   18d18:	00492703          	lw	a4,4(s2)
   18d1c:	0449a783          	lw	a5,68(s3)
   18d20:	070a                	slli	a4,a4,0x2
   18d22:	97ba                	add	a5,a5,a4
   18d24:	4398                	lw	a4,0(a5)
   18d26:	00e92023          	sw	a4,0(s2)
   18d2a:	0127a023          	sw	s2,0(a5)
   18d2e:	8405                	srai	s0,s0,0x1
   18d30:	892a                	mv	s2,a0
   18d32:	f471                	bnez	s0,18cfe <__pow5mult+0x2c>
   18d34:	44d2                	lw	s1,20(sp)
   18d36:	40f2                	lw	ra,28(sp)
   18d38:	4462                	lw	s0,24(sp)
   18d3a:	49b2                	lw	s3,12(sp)
   18d3c:	854a                	mv	a0,s2
   18d3e:	4942                	lw	s2,16(sp)
   18d40:	6105                	addi	sp,sp,32
   18d42:	8082                	ret
   18d44:	8626                	mv	a2,s1
   18d46:	85a6                	mv	a1,s1
   18d48:	854e                	mv	a0,s3
   18d4a:	df3ff0ef          	jal	18b3c <__multiply>
   18d4e:	c088                	sw	a0,0(s1)
   18d50:	00052023          	sw	zero,0(a0)
   18d54:	84aa                	mv	s1,a0
   18d56:	b77d                	j	18d04 <__pow5mult+0x32>
   18d58:	17fd                	addi	a5,a5,-1
   18d5a:	6779                	lui	a4,0x1e
   18d5c:	83c70713          	addi	a4,a4,-1988 # 1d83c <p05.0>
   18d60:	078a                	slli	a5,a5,0x2
   18d62:	97ba                	add	a5,a5,a4
   18d64:	4390                	lw	a2,0(a5)
   18d66:	4681                	li	a3,0
   18d68:	ae9ff0ef          	jal	18850 <__multadd>
   18d6c:	892a                	mv	s2,a0
   18d6e:	bfad                	j	18ce8 <__pow5mult+0x16>
   18d70:	4585                	li	a1,1
   18d72:	854e                	mv	a0,s3
   18d74:	a5fff0ef          	jal	187d2 <_Balloc>
   18d78:	84aa                	mv	s1,a0
   18d7a:	c919                	beqz	a0,18d90 <__pow5mult+0xbe>
   18d7c:	27100793          	li	a5,625
   18d80:	c95c                	sw	a5,20(a0)
   18d82:	4785                	li	a5,1
   18d84:	c91c                	sw	a5,16(a0)
   18d86:	04a9a023          	sw	a0,64(s3)
   18d8a:	00052023          	sw	zero,0(a0)
   18d8e:	b79d                	j	18cf4 <__pow5mult+0x22>
   18d90:	66f5                	lui	a3,0x1d
   18d92:	6575                	lui	a0,0x1d
   18d94:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   18d98:	4601                	li	a2,0
   18d9a:	14500593          	li	a1,325
   18d9e:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   18da2:	5bf000ef          	jal	19b60 <__assert_func>

00018da6 <__lshift>:
   18da6:	1101                	addi	sp,sp,-32
   18da8:	c256                	sw	s5,4(sp)
   18daa:	0105aa83          	lw	s5,16(a1)
   18dae:	459c                	lw	a5,8(a1)
   18db0:	c64e                	sw	s3,12(sp)
   18db2:	40565993          	srai	s3,a2,0x5
   18db6:	9ace                	add	s5,s5,s3
   18db8:	cc22                	sw	s0,24(sp)
   18dba:	ca26                	sw	s1,20(sp)
   18dbc:	c84a                	sw	s2,16(sp)
   18dbe:	c452                	sw	s4,8(sp)
   18dc0:	ce06                	sw	ra,28(sp)
   18dc2:	001a8913          	addi	s2,s5,1
   18dc6:	84ae                	mv	s1,a1
   18dc8:	8432                	mv	s0,a2
   18dca:	41cc                	lw	a1,4(a1)
   18dcc:	8a2a                	mv	s4,a0
   18dce:	0127d663          	bge	a5,s2,18dda <__lshift+0x34>
   18dd2:	0786                	slli	a5,a5,0x1
   18dd4:	0585                	addi	a1,a1,1
   18dd6:	ff27cee3          	blt	a5,s2,18dd2 <__lshift+0x2c>
   18dda:	8552                	mv	a0,s4
   18ddc:	9f7ff0ef          	jal	187d2 <_Balloc>
   18de0:	cd5d                	beqz	a0,18e9e <__lshift+0xf8>
   18de2:	01450813          	addi	a6,a0,20
   18de6:	01305e63          	blez	s3,18e02 <__lshift+0x5c>
   18dea:	0995                	addi	s3,s3,5
   18dec:	098a                	slli	s3,s3,0x2
   18dee:	01350733          	add	a4,a0,s3
   18df2:	87c2                	mv	a5,a6
   18df4:	0791                	addi	a5,a5,4
   18df6:	fe07ae23          	sw	zero,-4(a5)
   18dfa:	fee79de3          	bne	a5,a4,18df4 <__lshift+0x4e>
   18dfe:	19b1                	addi	s3,s3,-20
   18e00:	984e                	add	a6,a6,s3
   18e02:	0104a883          	lw	a7,16(s1)
   18e06:	01448793          	addi	a5,s1,20
   18e0a:	01f47613          	andi	a2,s0,31
   18e0e:	088a                	slli	a7,a7,0x2
   18e10:	98be                	add	a7,a7,a5
   18e12:	c63d                	beqz	a2,18e80 <__lshift+0xda>
   18e14:	02000593          	li	a1,32
   18e18:	8d91                	sub	a1,a1,a2
   18e1a:	8342                	mv	t1,a6
   18e1c:	4681                	li	a3,0
   18e1e:	4398                	lw	a4,0(a5)
   18e20:	0311                	addi	t1,t1,4
   18e22:	0791                	addi	a5,a5,4
   18e24:	00c71733          	sll	a4,a4,a2
   18e28:	8f55                	or	a4,a4,a3
   18e2a:	fee32e23          	sw	a4,-4(t1)
   18e2e:	ffc7a683          	lw	a3,-4(a5)
   18e32:	00b6d6b3          	srl	a3,a3,a1
   18e36:	ff17e4e3          	bltu	a5,a7,18e1e <__lshift+0x78>
   18e3a:	01548793          	addi	a5,s1,21
   18e3e:	4711                	li	a4,4
   18e40:	00f8e863          	bltu	a7,a5,18e50 <__lshift+0xaa>
   18e44:	409887b3          	sub	a5,a7,s1
   18e48:	17ad                	addi	a5,a5,-21
   18e4a:	9bf1                	andi	a5,a5,-4
   18e4c:	00478713          	addi	a4,a5,4
   18e50:	983a                	add	a6,a6,a4
   18e52:	00d82023          	sw	a3,0(a6)
   18e56:	e291                	bnez	a3,18e5a <__lshift+0xb4>
   18e58:	8956                	mv	s2,s5
   18e5a:	40d8                	lw	a4,4(s1)
   18e5c:	044a2783          	lw	a5,68(s4)
   18e60:	40f2                	lw	ra,28(sp)
   18e62:	070a                	slli	a4,a4,0x2
   18e64:	97ba                	add	a5,a5,a4
   18e66:	4398                	lw	a4,0(a5)
   18e68:	01252823          	sw	s2,16(a0)
   18e6c:	4462                	lw	s0,24(sp)
   18e6e:	c098                	sw	a4,0(s1)
   18e70:	c384                	sw	s1,0(a5)
   18e72:	4942                	lw	s2,16(sp)
   18e74:	44d2                	lw	s1,20(sp)
   18e76:	49b2                	lw	s3,12(sp)
   18e78:	4a22                	lw	s4,8(sp)
   18e7a:	4a92                	lw	s5,4(sp)
   18e7c:	6105                	addi	sp,sp,32
   18e7e:	8082                	ret
   18e80:	4398                	lw	a4,0(a5)
   18e82:	0791                	addi	a5,a5,4
   18e84:	0811                	addi	a6,a6,4
   18e86:	fee82e23          	sw	a4,-4(a6)
   18e8a:	fd17f7e3          	bgeu	a5,a7,18e58 <__lshift+0xb2>
   18e8e:	4398                	lw	a4,0(a5)
   18e90:	0791                	addi	a5,a5,4
   18e92:	0811                	addi	a6,a6,4
   18e94:	fee82e23          	sw	a4,-4(a6)
   18e98:	ff17e4e3          	bltu	a5,a7,18e80 <__lshift+0xda>
   18e9c:	bf75                	j	18e58 <__lshift+0xb2>
   18e9e:	66f5                	lui	a3,0x1d
   18ea0:	6575                	lui	a0,0x1d
   18ea2:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   18ea6:	4601                	li	a2,0
   18ea8:	1de00593          	li	a1,478
   18eac:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   18eb0:	4b1000ef          	jal	19b60 <__assert_func>

00018eb4 <__mcmp>:
   18eb4:	4918                	lw	a4,16(a0)
   18eb6:	499c                	lw	a5,16(a1)
   18eb8:	882a                	mv	a6,a0
   18eba:	40f70533          	sub	a0,a4,a5
   18ebe:	02f71863          	bne	a4,a5,18eee <__mcmp+0x3a>
   18ec2:	078a                	slli	a5,a5,0x2
   18ec4:	0851                	addi	a6,a6,20
   18ec6:	05d1                	addi	a1,a1,20
   18ec8:	00f80733          	add	a4,a6,a5
   18ecc:	97ae                	add	a5,a5,a1
   18ece:	a019                	j	18ed4 <__mcmp+0x20>
   18ed0:	00e87f63          	bgeu	a6,a4,18eee <__mcmp+0x3a>
   18ed4:	ffc72603          	lw	a2,-4(a4)
   18ed8:	ffc7a683          	lw	a3,-4(a5)
   18edc:	1771                	addi	a4,a4,-4
   18ede:	17f1                	addi	a5,a5,-4
   18ee0:	fed608e3          	beq	a2,a3,18ed0 <__mcmp+0x1c>
   18ee4:	4505                	li	a0,1
   18ee6:	00d67463          	bgeu	a2,a3,18eee <__mcmp+0x3a>
   18eea:	557d                	li	a0,-1
   18eec:	8082                	ret
   18eee:	8082                	ret

00018ef0 <__mdiff>:
   18ef0:	4998                	lw	a4,16(a1)
   18ef2:	4a1c                	lw	a5,16(a2)
   18ef4:	1141                	addi	sp,sp,-16
   18ef6:	c422                	sw	s0,8(sp)
   18ef8:	c226                	sw	s1,4(sp)
   18efa:	c606                	sw	ra,12(sp)
   18efc:	c04a                	sw	s2,0(sp)
   18efe:	842e                	mv	s0,a1
   18f00:	84b2                	mv	s1,a2
   18f02:	40f706b3          	sub	a3,a4,a5
   18f06:	12f71863          	bne	a4,a5,19036 <__mdiff+0x146>
   18f0a:	00279693          	slli	a3,a5,0x2
   18f0e:	01458613          	addi	a2,a1,20
   18f12:	01448713          	addi	a4,s1,20
   18f16:	00d607b3          	add	a5,a2,a3
   18f1a:	9736                	add	a4,a4,a3
   18f1c:	a019                	j	18f22 <__mdiff+0x32>
   18f1e:	12f67463          	bgeu	a2,a5,19046 <__mdiff+0x156>
   18f22:	ffc7a583          	lw	a1,-4(a5)
   18f26:	ffc72683          	lw	a3,-4(a4)
   18f2a:	17f1                	addi	a5,a5,-4
   18f2c:	1771                	addi	a4,a4,-4
   18f2e:	fed588e3          	beq	a1,a3,18f1e <__mdiff+0x2e>
   18f32:	4905                	li	s2,1
   18f34:	00d5e663          	bltu	a1,a3,18f40 <__mdiff+0x50>
   18f38:	87a6                	mv	a5,s1
   18f3a:	4901                	li	s2,0
   18f3c:	84a2                	mv	s1,s0
   18f3e:	843e                	mv	s0,a5
   18f40:	40cc                	lw	a1,4(s1)
   18f42:	891ff0ef          	jal	187d2 <_Balloc>
   18f46:	12050763          	beqz	a0,19074 <__mdiff+0x184>
   18f4a:	0104a883          	lw	a7,16(s1)
   18f4e:	01042283          	lw	t0,16(s0)
   18f52:	01448f93          	addi	t6,s1,20
   18f56:	00289313          	slli	t1,a7,0x2
   18f5a:	01440813          	addi	a6,s0,20
   18f5e:	028a                	slli	t0,t0,0x2
   18f60:	01450593          	addi	a1,a0,20
   18f64:	6e41                	lui	t3,0x10
   18f66:	01252623          	sw	s2,12(a0)
   18f6a:	937e                	add	t1,t1,t6
   18f6c:	92c2                	add	t0,t0,a6
   18f6e:	8f2e                	mv	t5,a1
   18f70:	8efe                	mv	t4,t6
   18f72:	4681                	li	a3,0
   18f74:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   18f76:	000ea703          	lw	a4,0(t4)
   18f7a:	00082603          	lw	a2,0(a6)
   18f7e:	0f11                	addi	t5,t5,4
   18f80:	01c777b3          	and	a5,a4,t3
   18f84:	01c673b3          	and	t2,a2,t3
   18f88:	407787b3          	sub	a5,a5,t2
   18f8c:	97b6                	add	a5,a5,a3
   18f8e:	8341                	srli	a4,a4,0x10
   18f90:	8241                	srli	a2,a2,0x10
   18f92:	4107d693          	srai	a3,a5,0x10
   18f96:	8f11                	sub	a4,a4,a2
   18f98:	9736                	add	a4,a4,a3
   18f9a:	01071693          	slli	a3,a4,0x10
   18f9e:	01c7f7b3          	and	a5,a5,t3
   18fa2:	8fd5                	or	a5,a5,a3
   18fa4:	0811                	addi	a6,a6,4
   18fa6:	feff2e23          	sw	a5,-4(t5)
   18faa:	0e91                	addi	t4,t4,4
   18fac:	41075693          	srai	a3,a4,0x10
   18fb0:	fc5863e3          	bltu	a6,t0,18f76 <__mdiff+0x86>
   18fb4:	01540713          	addi	a4,s0,21
   18fb8:	40828433          	sub	s0,t0,s0
   18fbc:	142d                	addi	s0,s0,-21
   18fbe:	00e2b2b3          	sltu	t0,t0,a4
   18fc2:	0012cf13          	xori	t5,t0,1
   18fc6:	8009                	srli	s0,s0,0x2
   18fc8:	4711                	li	a4,4
   18fca:	06028a63          	beqz	t0,1903e <__mdiff+0x14e>
   18fce:	9fba                	add	t6,t6,a4
   18fd0:	00e58833          	add	a6,a1,a4
   18fd4:	6ec1                	lui	t4,0x10
   18fd6:	8e42                	mv	t3,a6
   18fd8:	867e                	mv	a2,t6
   18fda:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   18fdc:	086ff363          	bgeu	t6,t1,19062 <__mdiff+0x172>
   18fe0:	421c                	lw	a5,0(a2)
   18fe2:	0e11                	addi	t3,t3,4
   18fe4:	0611                	addi	a2,a2,4
   18fe6:	01d7f733          	and	a4,a5,t4
   18fea:	9736                	add	a4,a4,a3
   18fec:	0107d593          	srli	a1,a5,0x10
   18ff0:	8741                	srai	a4,a4,0x10
   18ff2:	972e                	add	a4,a4,a1
   18ff4:	97b6                	add	a5,a5,a3
   18ff6:	01d7f7b3          	and	a5,a5,t4
   18ffa:	01071693          	slli	a3,a4,0x10
   18ffe:	8fd5                	or	a5,a5,a3
   19000:	fefe2e23          	sw	a5,-4(t3)
   19004:	41075693          	srai	a3,a4,0x10
   19008:	fc666ce3          	bltu	a2,t1,18fe0 <__mdiff+0xf0>
   1900c:	137d                	addi	t1,t1,-1
   1900e:	41f30333          	sub	t1,t1,t6
   19012:	ffc37313          	andi	t1,t1,-4
   19016:	00680733          	add	a4,a6,t1
   1901a:	e791                	bnez	a5,19026 <__mdiff+0x136>
   1901c:	ffc72783          	lw	a5,-4(a4)
   19020:	18fd                	addi	a7,a7,-1
   19022:	1771                	addi	a4,a4,-4
   19024:	dfe5                	beqz	a5,1901c <__mdiff+0x12c>
   19026:	40b2                	lw	ra,12(sp)
   19028:	4422                	lw	s0,8(sp)
   1902a:	01152823          	sw	a7,16(a0)
   1902e:	4492                	lw	s1,4(sp)
   19030:	4902                	lw	s2,0(sp)
   19032:	0141                	addi	sp,sp,16
   19034:	8082                	ret
   19036:	4905                	li	s2,1
   19038:	f006d0e3          	bgez	a3,18f38 <__mdiff+0x48>
   1903c:	b711                	j	18f40 <__mdiff+0x50>
   1903e:	00140713          	addi	a4,s0,1
   19042:	070a                	slli	a4,a4,0x2
   19044:	b769                	j	18fce <__mdiff+0xde>
   19046:	4581                	li	a1,0
   19048:	f8aff0ef          	jal	187d2 <_Balloc>
   1904c:	cd1d                	beqz	a0,1908a <__mdiff+0x19a>
   1904e:	40b2                	lw	ra,12(sp)
   19050:	4422                	lw	s0,8(sp)
   19052:	4785                	li	a5,1
   19054:	c91c                	sw	a5,16(a0)
   19056:	00052a23          	sw	zero,20(a0)
   1905a:	4492                	lw	s1,4(sp)
   1905c:	4902                	lw	s2,0(sp)
   1905e:	0141                	addi	sp,sp,16
   19060:	8082                	ret
   19062:	4701                	li	a4,0
   19064:	000f1463          	bnez	t5,1906c <__mdiff+0x17c>
   19068:	972e                	add	a4,a4,a1
   1906a:	bf45                	j	1901a <__mdiff+0x12a>
   1906c:	00241713          	slli	a4,s0,0x2
   19070:	972e                	add	a4,a4,a1
   19072:	b765                	j	1901a <__mdiff+0x12a>
   19074:	66f5                	lui	a3,0x1d
   19076:	6575                	lui	a0,0x1d
   19078:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   1907c:	4601                	li	a2,0
   1907e:	24500593          	li	a1,581
   19082:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   19086:	2db000ef          	jal	19b60 <__assert_func>
   1908a:	66f5                	lui	a3,0x1d
   1908c:	6575                	lui	a0,0x1d
   1908e:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   19092:	4601                	li	a2,0
   19094:	23700593          	li	a1,567
   19098:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   1909c:	2c5000ef          	jal	19b60 <__assert_func>

000190a0 <__ulp>:
   190a0:	7ff007b7          	lui	a5,0x7ff00
   190a4:	8dfd                	and	a1,a1,a5
   190a6:	fcc007b7          	lui	a5,0xfcc00
   190aa:	95be                	add	a1,a1,a5
   190ac:	4781                	li	a5,0
   190ae:	00b05463          	blez	a1,190b6 <__ulp+0x16>
   190b2:	853e                	mv	a0,a5
   190b4:	8082                	ret
   190b6:	40b005b3          	neg	a1,a1
   190ba:	85d1                	srai	a1,a1,0x14
   190bc:	47cd                	li	a5,19
   190be:	00b7c963          	blt	a5,a1,190d0 <__ulp+0x30>
   190c2:	000807b7          	lui	a5,0x80
   190c6:	40b7d5b3          	sra	a1,a5,a1
   190ca:	4781                	li	a5,0
   190cc:	853e                	mv	a0,a5
   190ce:	8082                	ret
   190d0:	15b1                	addi	a1,a1,-20
   190d2:	4779                	li	a4,30
   190d4:	4785                	li	a5,1
   190d6:	00b74663          	blt	a4,a1,190e2 <__ulp+0x42>
   190da:	800007b7          	lui	a5,0x80000
   190de:	00b7d7b3          	srl	a5,a5,a1
   190e2:	4581                	li	a1,0
   190e4:	853e                	mv	a0,a5
   190e6:	8082                	ret

000190e8 <__b2d>:
   190e8:	1101                	addi	sp,sp,-32
   190ea:	ca26                	sw	s1,20(sp)
   190ec:	4904                	lw	s1,16(a0)
   190ee:	cc22                	sw	s0,24(sp)
   190f0:	01450413          	addi	s0,a0,20
   190f4:	048a                	slli	s1,s1,0x2
   190f6:	94a2                	add	s1,s1,s0
   190f8:	c84a                	sw	s2,16(sp)
   190fa:	ffc4a903          	lw	s2,-4(s1)
   190fe:	c64e                	sw	s3,12(sp)
   19100:	c452                	sw	s4,8(sp)
   19102:	854a                	mv	a0,s2
   19104:	89ae                	mv	s3,a1
   19106:	ce06                	sw	ra,28(sp)
   19108:	8efff0ef          	jal	189f6 <__hi0bits>
   1910c:	02000713          	li	a4,32
   19110:	40a707b3          	sub	a5,a4,a0
   19114:	00f9a023          	sw	a5,0(s3)
   19118:	47a9                	li	a5,10
   1911a:	ffc48a13          	addi	s4,s1,-4
   1911e:	06a7db63          	bge	a5,a0,19194 <__b2d+0xac>
   19122:	ff550613          	addi	a2,a0,-11
   19126:	03447d63          	bgeu	s0,s4,19160 <__b2d+0x78>
   1912a:	ff84a783          	lw	a5,-8(s1)
   1912e:	c629                	beqz	a2,19178 <__b2d+0x90>
   19130:	40c706b3          	sub	a3,a4,a2
   19134:	00d7d733          	srl	a4,a5,a3
   19138:	00c91933          	sll	s2,s2,a2
   1913c:	00e96933          	or	s2,s2,a4
   19140:	ff848593          	addi	a1,s1,-8
   19144:	3ff00737          	lui	a4,0x3ff00
   19148:	00e96733          	or	a4,s2,a4
   1914c:	00c797b3          	sll	a5,a5,a2
   19150:	02b47863          	bgeu	s0,a1,19180 <__b2d+0x98>
   19154:	ff44a603          	lw	a2,-12(s1)
   19158:	00d656b3          	srl	a3,a2,a3
   1915c:	8fd5                	or	a5,a5,a3
   1915e:	a00d                	j	19180 <__b2d+0x98>
   19160:	47ad                	li	a5,11
   19162:	00f50a63          	beq	a0,a5,19176 <__b2d+0x8e>
   19166:	00c91933          	sll	s2,s2,a2
   1916a:	3ff00737          	lui	a4,0x3ff00
   1916e:	00e96733          	or	a4,s2,a4
   19172:	4781                	li	a5,0
   19174:	a031                	j	19180 <__b2d+0x98>
   19176:	4781                	li	a5,0
   19178:	3ff00737          	lui	a4,0x3ff00
   1917c:	00e96733          	or	a4,s2,a4
   19180:	40f2                	lw	ra,28(sp)
   19182:	4462                	lw	s0,24(sp)
   19184:	44d2                	lw	s1,20(sp)
   19186:	4942                	lw	s2,16(sp)
   19188:	49b2                	lw	s3,12(sp)
   1918a:	4a22                	lw	s4,8(sp)
   1918c:	853e                	mv	a0,a5
   1918e:	85ba                	mv	a1,a4
   19190:	6105                	addi	sp,sp,32
   19192:	8082                	ret
   19194:	46ad                	li	a3,11
   19196:	8e89                	sub	a3,a3,a0
   19198:	3ff007b7          	lui	a5,0x3ff00
   1919c:	00d95733          	srl	a4,s2,a3
   191a0:	8f5d                	or	a4,a4,a5
   191a2:	4781                	li	a5,0
   191a4:	01447663          	bgeu	s0,s4,191b0 <__b2d+0xc8>
   191a8:	ff84a783          	lw	a5,-8(s1)
   191ac:	00d7d7b3          	srl	a5,a5,a3
   191b0:	0555                	addi	a0,a0,21
   191b2:	00a91933          	sll	s2,s2,a0
   191b6:	00f967b3          	or	a5,s2,a5
   191ba:	b7d9                	j	19180 <__b2d+0x98>

000191bc <__d2b>:
   191bc:	7179                	addi	sp,sp,-48
   191be:	ca56                	sw	s5,20(sp)
   191c0:	8aae                	mv	s5,a1
   191c2:	4585                	li	a1,1
   191c4:	d226                	sw	s1,36(sp)
   191c6:	ce4e                	sw	s3,28(sp)
   191c8:	cc52                	sw	s4,24(sp)
   191ca:	d606                	sw	ra,44(sp)
   191cc:	d422                	sw	s0,40(sp)
   191ce:	d04a                	sw	s2,32(sp)
   191d0:	84b2                	mv	s1,a2
   191d2:	8a36                	mv	s4,a3
   191d4:	89ba                	mv	s3,a4
   191d6:	dfcff0ef          	jal	187d2 <_Balloc>
   191da:	c955                	beqz	a0,1928e <__d2b+0xd2>
   191dc:	00100737          	lui	a4,0x100
   191e0:	0144d913          	srli	s2,s1,0x14
   191e4:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe157b>
   191e8:	7ff97913          	andi	s2,s2,2047
   191ec:	842a                	mv	s0,a0
   191ee:	8fe5                	and	a5,a5,s1
   191f0:	00090363          	beqz	s2,191f6 <__d2b+0x3a>
   191f4:	8fd9                	or	a5,a5,a4
   191f6:	c63e                	sw	a5,12(sp)
   191f8:	040a9263          	bnez	s5,1923c <__d2b+0x80>
   191fc:	0068                	addi	a0,sp,12
   191fe:	84dff0ef          	jal	18a4a <__lo0bits>
   19202:	4732                	lw	a4,12(sp)
   19204:	4485                	li	s1,1
   19206:	c804                	sw	s1,16(s0)
   19208:	c858                	sw	a4,20(s0)
   1920a:	02050793          	addi	a5,a0,32
   1920e:	06090063          	beqz	s2,1926e <__d2b+0xb2>
   19212:	bcd90913          	addi	s2,s2,-1075
   19216:	993e                	add	s2,s2,a5
   19218:	03500493          	li	s1,53
   1921c:	012a2023          	sw	s2,0(s4)
   19220:	40f48533          	sub	a0,s1,a5
   19224:	00a9a023          	sw	a0,0(s3)
   19228:	50b2                	lw	ra,44(sp)
   1922a:	8522                	mv	a0,s0
   1922c:	5422                	lw	s0,40(sp)
   1922e:	5492                	lw	s1,36(sp)
   19230:	5902                	lw	s2,32(sp)
   19232:	49f2                	lw	s3,28(sp)
   19234:	4a62                	lw	s4,24(sp)
   19236:	4ad2                	lw	s5,20(sp)
   19238:	6145                	addi	sp,sp,48
   1923a:	8082                	ret
   1923c:	0028                	addi	a0,sp,8
   1923e:	c456                	sw	s5,8(sp)
   19240:	80bff0ef          	jal	18a4a <__lo0bits>
   19244:	4732                	lw	a4,12(sp)
   19246:	87aa                	mv	a5,a0
   19248:	c129                	beqz	a0,1928a <__d2b+0xce>
   1924a:	4622                	lw	a2,8(sp)
   1924c:	02000693          	li	a3,32
   19250:	8e89                	sub	a3,a3,a0
   19252:	00d716b3          	sll	a3,a4,a3
   19256:	00a75733          	srl	a4,a4,a0
   1925a:	8ed1                	or	a3,a3,a2
   1925c:	c63a                	sw	a4,12(sp)
   1925e:	00e034b3          	snez	s1,a4
   19262:	0485                	addi	s1,s1,1
   19264:	c854                	sw	a3,20(s0)
   19266:	cc18                	sw	a4,24(s0)
   19268:	c804                	sw	s1,16(s0)
   1926a:	fa0914e3          	bnez	s2,19212 <__d2b+0x56>
   1926e:	00249713          	slli	a4,s1,0x2
   19272:	9722                	add	a4,a4,s0
   19274:	4b08                	lw	a0,16(a4)
   19276:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee114a>
   1927a:	00fa2023          	sw	a5,0(s4)
   1927e:	f78ff0ef          	jal	189f6 <__hi0bits>
   19282:	0496                	slli	s1,s1,0x5
   19284:	40a48533          	sub	a0,s1,a0
   19288:	bf71                	j	19224 <__d2b+0x68>
   1928a:	46a2                	lw	a3,8(sp)
   1928c:	bfc9                	j	1925e <__d2b+0xa2>
   1928e:	66f5                	lui	a3,0x1d
   19290:	6575                	lui	a0,0x1d
   19292:	4f068693          	addi	a3,a3,1264 # 1d4f0 <__clzsi2+0xd2>
   19296:	4601                	li	a2,0
   19298:	30f00593          	li	a1,783
   1929c:	56050513          	addi	a0,a0,1376 # 1d560 <__clzsi2+0x142>
   192a0:	0c1000ef          	jal	19b60 <__assert_func>

000192a4 <__ratio>:
   192a4:	7179                	addi	sp,sp,-48
   192a6:	d422                	sw	s0,40(sp)
   192a8:	842e                	mv	s0,a1
   192aa:	082c                	addi	a1,sp,24
   192ac:	d606                	sw	ra,44(sp)
   192ae:	d226                	sw	s1,36(sp)
   192b0:	84aa                	mv	s1,a0
   192b2:	e37ff0ef          	jal	190e8 <__b2d>
   192b6:	c02a                	sw	a0,0(sp)
   192b8:	c22e                	sw	a1,4(sp)
   192ba:	2782                	fld	fa5,0(sp)
   192bc:	086c                	addi	a1,sp,28
   192be:	8522                	mv	a0,s0
   192c0:	a43e                	fsd	fa5,8(sp)
   192c2:	e27ff0ef          	jal	190e8 <__b2d>
   192c6:	4818                	lw	a4,16(s0)
   192c8:	489c                	lw	a5,16(s1)
   192ca:	46f2                	lw	a3,28(sp)
   192cc:	c02a                	sw	a0,0(sp)
   192ce:	8f99                	sub	a5,a5,a4
   192d0:	4762                	lw	a4,24(sp)
   192d2:	0796                	slli	a5,a5,0x5
   192d4:	c22e                	sw	a1,4(sp)
   192d6:	8f15                	sub	a4,a4,a3
   192d8:	97ba                	add	a5,a5,a4
   192da:	02f05263          	blez	a5,192fe <__ratio+0x5a>
   192de:	46b2                	lw	a3,12(sp)
   192e0:	07d2                	slli	a5,a5,0x14
   192e2:	97b6                	add	a5,a5,a3
   192e4:	c63e                	sw	a5,12(sp)
   192e6:	2702                	fld	fa4,0(sp)
   192e8:	27a2                	fld	fa5,8(sp)
   192ea:	50b2                	lw	ra,44(sp)
   192ec:	5422                	lw	s0,40(sp)
   192ee:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   192f2:	5492                	lw	s1,36(sp)
   192f4:	a03e                	fsd	fa5,0(sp)
   192f6:	4502                	lw	a0,0(sp)
   192f8:	4592                	lw	a1,4(sp)
   192fa:	6145                	addi	sp,sp,48
   192fc:	8082                	ret
   192fe:	4692                	lw	a3,4(sp)
   19300:	07d2                	slli	a5,a5,0x14
   19302:	40f687b3          	sub	a5,a3,a5
   19306:	c23e                	sw	a5,4(sp)
   19308:	bff9                	j	192e6 <__ratio+0x42>

0001930a <_mprec_log10>:
   1930a:	47dd                	li	a5,23
   1930c:	1141                	addi	sp,sp,-16
   1930e:	00a7df63          	bge	a5,a0,1932c <_mprec_log10+0x22>
   19312:	f001b787          	fld	fa5,-256(gp) # 1e710 <__SDATA_BEGIN__+0x58>
   19316:	f081b707          	fld	fa4,-248(gp) # 1e718 <__SDATA_BEGIN__+0x60>
   1931a:	157d                	addi	a0,a0,-1
   1931c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   19320:	fd6d                	bnez	a0,1931a <_mprec_log10+0x10>
   19322:	a43e                	fsd	fa5,8(sp)
   19324:	4522                	lw	a0,8(sp)
   19326:	45b2                	lw	a1,12(sp)
   19328:	0141                	addi	sp,sp,16
   1932a:	8082                	ret
   1932c:	67f9                	lui	a5,0x1e
   1932e:	050e                	slli	a0,a0,0x3
   19330:	89878793          	addi	a5,a5,-1896 # 1d898 <__mprec_tens>
   19334:	97aa                	add	a5,a5,a0
   19336:	239c                	fld	fa5,0(a5)
   19338:	a43e                	fsd	fa5,8(sp)
   1933a:	4522                	lw	a0,8(sp)
   1933c:	45b2                	lw	a1,12(sp)
   1933e:	0141                	addi	sp,sp,16
   19340:	8082                	ret

00019342 <__copybits>:
   19342:	4a14                	lw	a3,16(a2)
   19344:	15fd                	addi	a1,a1,-1
   19346:	8595                	srai	a1,a1,0x5
   19348:	0585                	addi	a1,a1,1
   1934a:	01460793          	addi	a5,a2,20
   1934e:	068a                	slli	a3,a3,0x2
   19350:	058a                	slli	a1,a1,0x2
   19352:	96be                	add	a3,a3,a5
   19354:	95aa                	add	a1,a1,a0
   19356:	02d7f163          	bgeu	a5,a3,19378 <__copybits+0x36>
   1935a:	872a                	mv	a4,a0
   1935c:	0007a803          	lw	a6,0(a5)
   19360:	0791                	addi	a5,a5,4
   19362:	0711                	addi	a4,a4,4
   19364:	ff072e23          	sw	a6,-4(a4)
   19368:	fed7eae3          	bltu	a5,a3,1935c <__copybits+0x1a>
   1936c:	40c687b3          	sub	a5,a3,a2
   19370:	17ad                	addi	a5,a5,-21
   19372:	9bf1                	andi	a5,a5,-4
   19374:	0791                	addi	a5,a5,4
   19376:	953e                	add	a0,a0,a5
   19378:	00b57763          	bgeu	a0,a1,19386 <__copybits+0x44>
   1937c:	0511                	addi	a0,a0,4
   1937e:	fe052e23          	sw	zero,-4(a0)
   19382:	feb56de3          	bltu	a0,a1,1937c <__copybits+0x3a>
   19386:	8082                	ret

00019388 <__any_on>:
   19388:	4918                	lw	a4,16(a0)
   1938a:	4055d613          	srai	a2,a1,0x5
   1938e:	01450693          	addi	a3,a0,20
   19392:	00c75d63          	bge	a4,a2,193ac <__any_on+0x24>
   19396:	070a                	slli	a4,a4,0x2
   19398:	00e687b3          	add	a5,a3,a4
   1939c:	02f6f863          	bgeu	a3,a5,193cc <__any_on+0x44>
   193a0:	ffc7a703          	lw	a4,-4(a5)
   193a4:	17f1                	addi	a5,a5,-4
   193a6:	db7d                	beqz	a4,1939c <__any_on+0x14>
   193a8:	4505                	li	a0,1
   193aa:	8082                	ret
   193ac:	00261793          	slli	a5,a2,0x2
   193b0:	97b6                	add	a5,a5,a3
   193b2:	fee655e3          	bge	a2,a4,1939c <__any_on+0x14>
   193b6:	89fd                	andi	a1,a1,31
   193b8:	d1f5                	beqz	a1,1939c <__any_on+0x14>
   193ba:	4390                	lw	a2,0(a5)
   193bc:	4505                	li	a0,1
   193be:	00b65733          	srl	a4,a2,a1
   193c2:	00b71733          	sll	a4,a4,a1
   193c6:	fce60be3          	beq	a2,a4,1939c <__any_on+0x14>
   193ca:	8082                	ret
   193cc:	4501                	li	a0,0
   193ce:	8082                	ret

000193d0 <_realloc_r>:
   193d0:	7179                	addi	sp,sp,-48
   193d2:	d226                	sw	s1,36(sp)
   193d4:	d606                	sw	ra,44(sp)
   193d6:	84b2                	mv	s1,a2
   193d8:	14058d63          	beqz	a1,19532 <_realloc_r+0x162>
   193dc:	d422                	sw	s0,40(sp)
   193de:	d04a                	sw	s2,32(sp)
   193e0:	842e                	mv	s0,a1
   193e2:	ce4e                	sw	s3,28(sp)
   193e4:	ca56                	sw	s5,20(sp)
   193e6:	cc52                	sw	s4,24(sp)
   193e8:	892a                	mv	s2,a0
   193ea:	c94fb0ef          	jal	1487e <__malloc_lock>
   193ee:	ffc42703          	lw	a4,-4(s0)
   193f2:	00b48793          	addi	a5,s1,11
   193f6:	46d9                	li	a3,22
   193f8:	ff840a93          	addi	s5,s0,-8
   193fc:	ffc77993          	andi	s3,a4,-4
   19400:	0af6ff63          	bgeu	a3,a5,194be <_realloc_r+0xee>
   19404:	ff87fa13          	andi	s4,a5,-8
   19408:	0a07ce63          	bltz	a5,194c4 <_realloc_r+0xf4>
   1940c:	0a9a6c63          	bltu	s4,s1,194c4 <_realloc_r+0xf4>
   19410:	0d49d563          	bge	s3,s4,194da <_realloc_r+0x10a>
   19414:	67f9                	lui	a5,0x1e
   19416:	c462                	sw	s8,8(sp)
   19418:	14078c13          	addi	s8,a5,320 # 1e140 <__malloc_av_>
   1941c:	008c2603          	lw	a2,8(s8)
   19420:	013a86b3          	add	a3,s5,s3
   19424:	42dc                	lw	a5,4(a3)
   19426:	12d60e63          	beq	a2,a3,19562 <_realloc_r+0x192>
   1942a:	ffe7f613          	andi	a2,a5,-2
   1942e:	9636                	add	a2,a2,a3
   19430:	4250                	lw	a2,4(a2)
   19432:	8a05                	andi	a2,a2,1
   19434:	e27d                	bnez	a2,1951a <_realloc_r+0x14a>
   19436:	9bf1                	andi	a5,a5,-4
   19438:	00f98633          	add	a2,s3,a5
   1943c:	09465963          	bge	a2,s4,194ce <_realloc_r+0xfe>
   19440:	8b05                	andi	a4,a4,1
   19442:	e70d                	bnez	a4,1946c <_realloc_r+0x9c>
   19444:	c65e                	sw	s7,12(sp)
   19446:	ff842b83          	lw	s7,-8(s0)
   1944a:	c85a                	sw	s6,16(sp)
   1944c:	417a8bb3          	sub	s7,s5,s7
   19450:	004ba703          	lw	a4,4(s7)
   19454:	9b71                	andi	a4,a4,-4
   19456:	97ba                	add	a5,a5,a4
   19458:	01378b33          	add	s6,a5,s3
   1945c:	234b5f63          	bge	s6,s4,1969a <_realloc_r+0x2ca>
   19460:	00e98b33          	add	s6,s3,a4
   19464:	1d4b5463          	bge	s6,s4,1962c <_realloc_r+0x25c>
   19468:	4b42                	lw	s6,16(sp)
   1946a:	4bb2                	lw	s7,12(sp)
   1946c:	85a6                	mv	a1,s1
   1946e:	854a                	mv	a0,s2
   19470:	e6bfa0ef          	jal	142da <_malloc_r>
   19474:	84aa                	mv	s1,a0
   19476:	2e050063          	beqz	a0,19756 <_realloc_r+0x386>
   1947a:	ffc42783          	lw	a5,-4(s0)
   1947e:	ff850713          	addi	a4,a0,-8
   19482:	9bf9                	andi	a5,a5,-2
   19484:	97d6                	add	a5,a5,s5
   19486:	18e78d63          	beq	a5,a4,19620 <_realloc_r+0x250>
   1948a:	ffc98613          	addi	a2,s3,-4
   1948e:	02400793          	li	a5,36
   19492:	20c7e063          	bltu	a5,a2,19692 <_realloc_r+0x2c2>
   19496:	474d                	li	a4,19
   19498:	16c76863          	bltu	a4,a2,19608 <_realloc_r+0x238>
   1949c:	87aa                	mv	a5,a0
   1949e:	8722                	mv	a4,s0
   194a0:	4314                	lw	a3,0(a4)
   194a2:	c394                	sw	a3,0(a5)
   194a4:	4354                	lw	a3,4(a4)
   194a6:	c3d4                	sw	a3,4(a5)
   194a8:	4718                	lw	a4,8(a4)
   194aa:	c798                	sw	a4,8(a5)
   194ac:	85a2                	mv	a1,s0
   194ae:	854a                	mv	a0,s2
   194b0:	c09fa0ef          	jal	140b8 <_free_r>
   194b4:	854a                	mv	a0,s2
   194b6:	bcafb0ef          	jal	14880 <__malloc_unlock>
   194ba:	4c22                	lw	s8,8(sp)
   194bc:	a0a9                	j	19506 <_realloc_r+0x136>
   194be:	4a41                	li	s4,16
   194c0:	f49a78e3          	bgeu	s4,s1,19410 <_realloc_r+0x40>
   194c4:	47b1                	li	a5,12
   194c6:	00f92023          	sw	a5,0(s2)
   194ca:	4481                	li	s1,0
   194cc:	a82d                	j	19506 <_realloc_r+0x136>
   194ce:	46dc                	lw	a5,12(a3)
   194d0:	4698                	lw	a4,8(a3)
   194d2:	4c22                	lw	s8,8(sp)
   194d4:	89b2                	mv	s3,a2
   194d6:	c75c                	sw	a5,12(a4)
   194d8:	c798                	sw	a4,8(a5)
   194da:	004aa783          	lw	a5,4(s5)
   194de:	414986b3          	sub	a3,s3,s4
   194e2:	463d                	li	a2,15
   194e4:	8b85                	andi	a5,a5,1
   194e6:	013a8733          	add	a4,s5,s3
   194ea:	04d66a63          	bltu	a2,a3,1953e <_realloc_r+0x16e>
   194ee:	0137e7b3          	or	a5,a5,s3
   194f2:	00faa223          	sw	a5,4(s5)
   194f6:	435c                	lw	a5,4(a4)
   194f8:	0017e793          	ori	a5,a5,1
   194fc:	c35c                	sw	a5,4(a4)
   194fe:	854a                	mv	a0,s2
   19500:	b80fb0ef          	jal	14880 <__malloc_unlock>
   19504:	84a2                	mv	s1,s0
   19506:	5422                	lw	s0,40(sp)
   19508:	50b2                	lw	ra,44(sp)
   1950a:	5902                	lw	s2,32(sp)
   1950c:	49f2                	lw	s3,28(sp)
   1950e:	4a62                	lw	s4,24(sp)
   19510:	4ad2                	lw	s5,20(sp)
   19512:	8526                	mv	a0,s1
   19514:	5492                	lw	s1,36(sp)
   19516:	6145                	addi	sp,sp,48
   19518:	8082                	ret
   1951a:	8b05                	andi	a4,a4,1
   1951c:	fb21                	bnez	a4,1946c <_realloc_r+0x9c>
   1951e:	c65e                	sw	s7,12(sp)
   19520:	ff842b83          	lw	s7,-8(s0)
   19524:	c85a                	sw	s6,16(sp)
   19526:	417a8bb3          	sub	s7,s5,s7
   1952a:	004ba703          	lw	a4,4(s7)
   1952e:	9b71                	andi	a4,a4,-4
   19530:	bf05                	j	19460 <_realloc_r+0x90>
   19532:	50b2                	lw	ra,44(sp)
   19534:	5492                	lw	s1,36(sp)
   19536:	85b2                	mv	a1,a2
   19538:	6145                	addi	sp,sp,48
   1953a:	da1fa06f          	j	142da <_malloc_r>
   1953e:	0147e7b3          	or	a5,a5,s4
   19542:	00faa223          	sw	a5,4(s5)
   19546:	014a85b3          	add	a1,s5,s4
   1954a:	0016e693          	ori	a3,a3,1
   1954e:	c1d4                	sw	a3,4(a1)
   19550:	435c                	lw	a5,4(a4)
   19552:	05a1                	addi	a1,a1,8
   19554:	854a                	mv	a0,s2
   19556:	0017e793          	ori	a5,a5,1
   1955a:	c35c                	sw	a5,4(a4)
   1955c:	b5dfa0ef          	jal	140b8 <_free_r>
   19560:	bf79                	j	194fe <_realloc_r+0x12e>
   19562:	9bf1                	andi	a5,a5,-4
   19564:	013786b3          	add	a3,a5,s3
   19568:	010a0613          	addi	a2,s4,16
   1956c:	1ac6db63          	bge	a3,a2,19722 <_realloc_r+0x352>
   19570:	8b05                	andi	a4,a4,1
   19572:	ee071de3          	bnez	a4,1946c <_realloc_r+0x9c>
   19576:	c65e                	sw	s7,12(sp)
   19578:	ff842b83          	lw	s7,-8(s0)
   1957c:	c85a                	sw	s6,16(sp)
   1957e:	417a8bb3          	sub	s7,s5,s7
   19582:	004ba703          	lw	a4,4(s7)
   19586:	9b71                	andi	a4,a4,-4
   19588:	97ba                	add	a5,a5,a4
   1958a:	01378b33          	add	s6,a5,s3
   1958e:	eccb49e3          	blt	s6,a2,19460 <_realloc_r+0x90>
   19592:	00cba783          	lw	a5,12(s7)
   19596:	008ba703          	lw	a4,8(s7)
   1959a:	ffc98613          	addi	a2,s3,-4
   1959e:	02400693          	li	a3,36
   195a2:	c75c                	sw	a5,12(a4)
   195a4:	c798                	sw	a4,8(a5)
   195a6:	008b8493          	addi	s1,s7,8
   195aa:	1cc6e563          	bltu	a3,a2,19774 <_realloc_r+0x3a4>
   195ae:	474d                	li	a4,19
   195b0:	87a6                	mv	a5,s1
   195b2:	00c77e63          	bgeu	a4,a2,195ce <_realloc_r+0x1fe>
   195b6:	4018                	lw	a4,0(s0)
   195b8:	47ed                	li	a5,27
   195ba:	00eba423          	sw	a4,8(s7)
   195be:	4058                	lw	a4,4(s0)
   195c0:	00eba623          	sw	a4,12(s7)
   195c4:	1ac7ed63          	bltu	a5,a2,1977e <_realloc_r+0x3ae>
   195c8:	0421                	addi	s0,s0,8
   195ca:	010b8793          	addi	a5,s7,16
   195ce:	4018                	lw	a4,0(s0)
   195d0:	c398                	sw	a4,0(a5)
   195d2:	4058                	lw	a4,4(s0)
   195d4:	c3d8                	sw	a4,4(a5)
   195d6:	4418                	lw	a4,8(s0)
   195d8:	c798                	sw	a4,8(a5)
   195da:	014b8733          	add	a4,s7,s4
   195de:	414b0b33          	sub	s6,s6,s4
   195e2:	00ec2423          	sw	a4,8(s8)
   195e6:	001b6793          	ori	a5,s6,1
   195ea:	c35c                	sw	a5,4(a4)
   195ec:	004ba783          	lw	a5,4(s7)
   195f0:	854a                	mv	a0,s2
   195f2:	8b85                	andi	a5,a5,1
   195f4:	0147e7b3          	or	a5,a5,s4
   195f8:	00fba223          	sw	a5,4(s7)
   195fc:	a84fb0ef          	jal	14880 <__malloc_unlock>
   19600:	4b42                	lw	s6,16(sp)
   19602:	4bb2                	lw	s7,12(sp)
   19604:	4c22                	lw	s8,8(sp)
   19606:	b701                	j	19506 <_realloc_r+0x136>
   19608:	4014                	lw	a3,0(s0)
   1960a:	476d                	li	a4,27
   1960c:	c114                	sw	a3,0(a0)
   1960e:	4054                	lw	a3,4(s0)
   19610:	c154                	sw	a3,4(a0)
   19612:	0ec76d63          	bltu	a4,a2,1970c <_realloc_r+0x33c>
   19616:	00840713          	addi	a4,s0,8
   1961a:	00850793          	addi	a5,a0,8
   1961e:	b549                	j	194a0 <_realloc_r+0xd0>
   19620:	ffc52783          	lw	a5,-4(a0)
   19624:	4c22                	lw	s8,8(sp)
   19626:	9bf1                	andi	a5,a5,-4
   19628:	99be                	add	s3,s3,a5
   1962a:	bd45                	j	194da <_realloc_r+0x10a>
   1962c:	00cba783          	lw	a5,12(s7)
   19630:	008ba703          	lw	a4,8(s7)
   19634:	ffc98613          	addi	a2,s3,-4
   19638:	02400693          	li	a3,36
   1963c:	c75c                	sw	a5,12(a4)
   1963e:	c798                	sw	a4,8(a5)
   19640:	008b8493          	addi	s1,s7,8
   19644:	0ac6ef63          	bltu	a3,a2,19702 <_realloc_r+0x332>
   19648:	474d                	li	a4,19
   1964a:	87a6                	mv	a5,s1
   1964c:	02c77663          	bgeu	a4,a2,19678 <_realloc_r+0x2a8>
   19650:	4018                	lw	a4,0(s0)
   19652:	47ed                	li	a5,27
   19654:	00eba423          	sw	a4,8(s7)
   19658:	4058                	lw	a4,4(s0)
   1965a:	00eba623          	sw	a4,12(s7)
   1965e:	0ec7f863          	bgeu	a5,a2,1974e <_realloc_r+0x37e>
   19662:	441c                	lw	a5,8(s0)
   19664:	00fba823          	sw	a5,16(s7)
   19668:	445c                	lw	a5,12(s0)
   1966a:	00fbaa23          	sw	a5,20(s7)
   1966e:	06d60f63          	beq	a2,a3,196ec <_realloc_r+0x31c>
   19672:	0441                	addi	s0,s0,16
   19674:	018b8793          	addi	a5,s7,24
   19678:	4018                	lw	a4,0(s0)
   1967a:	c398                	sw	a4,0(a5)
   1967c:	4058                	lw	a4,4(s0)
   1967e:	c3d8                	sw	a4,4(a5)
   19680:	4418                	lw	a4,8(s0)
   19682:	c798                	sw	a4,8(a5)
   19684:	89da                	mv	s3,s6
   19686:	8ade                	mv	s5,s7
   19688:	4b42                	lw	s6,16(sp)
   1968a:	4bb2                	lw	s7,12(sp)
   1968c:	4c22                	lw	s8,8(sp)
   1968e:	8426                	mv	s0,s1
   19690:	b5a9                	j	194da <_realloc_r+0x10a>
   19692:	85a2                	mv	a1,s0
   19694:	87ffd0ef          	jal	16f12 <memmove>
   19698:	bd11                	j	194ac <_realloc_r+0xdc>
   1969a:	46dc                	lw	a5,12(a3)
   1969c:	4698                	lw	a4,8(a3)
   1969e:	ffc98613          	addi	a2,s3,-4
   196a2:	02400693          	li	a3,36
   196a6:	c75c                	sw	a5,12(a4)
   196a8:	c798                	sw	a4,8(a5)
   196aa:	008ba703          	lw	a4,8(s7)
   196ae:	00cba783          	lw	a5,12(s7)
   196b2:	008b8493          	addi	s1,s7,8
   196b6:	c75c                	sw	a5,12(a4)
   196b8:	c798                	sw	a4,8(a5)
   196ba:	04c6e463          	bltu	a3,a2,19702 <_realloc_r+0x332>
   196be:	474d                	li	a4,19
   196c0:	87a6                	mv	a5,s1
   196c2:	fac77be3          	bgeu	a4,a2,19678 <_realloc_r+0x2a8>
   196c6:	4018                	lw	a4,0(s0)
   196c8:	47ed                	li	a5,27
   196ca:	00eba423          	sw	a4,8(s7)
   196ce:	4058                	lw	a4,4(s0)
   196d0:	00eba623          	sw	a4,12(s7)
   196d4:	06c7fd63          	bgeu	a5,a2,1974e <_realloc_r+0x37e>
   196d8:	4418                	lw	a4,8(s0)
   196da:	02400793          	li	a5,36
   196de:	00eba823          	sw	a4,16(s7)
   196e2:	4458                	lw	a4,12(s0)
   196e4:	00ebaa23          	sw	a4,20(s7)
   196e8:	f8f615e3          	bne	a2,a5,19672 <_realloc_r+0x2a2>
   196ec:	4818                	lw	a4,16(s0)
   196ee:	020b8793          	addi	a5,s7,32
   196f2:	0461                	addi	s0,s0,24
   196f4:	00ebac23          	sw	a4,24(s7)
   196f8:	ffc42703          	lw	a4,-4(s0)
   196fc:	00ebae23          	sw	a4,28(s7)
   19700:	bfa5                	j	19678 <_realloc_r+0x2a8>
   19702:	85a2                	mv	a1,s0
   19704:	8526                	mv	a0,s1
   19706:	80dfd0ef          	jal	16f12 <memmove>
   1970a:	bfad                	j	19684 <_realloc_r+0x2b4>
   1970c:	4418                	lw	a4,8(s0)
   1970e:	c518                	sw	a4,8(a0)
   19710:	4458                	lw	a4,12(s0)
   19712:	c558                	sw	a4,12(a0)
   19714:	04f60763          	beq	a2,a5,19762 <_realloc_r+0x392>
   19718:	01040713          	addi	a4,s0,16
   1971c:	01050793          	addi	a5,a0,16
   19720:	b341                	j	194a0 <_realloc_r+0xd0>
   19722:	9ad2                	add	s5,s5,s4
   19724:	414686b3          	sub	a3,a3,s4
   19728:	015c2423          	sw	s5,8(s8)
   1972c:	0016e793          	ori	a5,a3,1
   19730:	00faa223          	sw	a5,4(s5)
   19734:	ffc42783          	lw	a5,-4(s0)
   19738:	854a                	mv	a0,s2
   1973a:	84a2                	mv	s1,s0
   1973c:	8b85                	andi	a5,a5,1
   1973e:	0147e7b3          	or	a5,a5,s4
   19742:	fef42e23          	sw	a5,-4(s0)
   19746:	93afb0ef          	jal	14880 <__malloc_unlock>
   1974a:	4c22                	lw	s8,8(sp)
   1974c:	bb6d                	j	19506 <_realloc_r+0x136>
   1974e:	0421                	addi	s0,s0,8
   19750:	010b8793          	addi	a5,s7,16
   19754:	b715                	j	19678 <_realloc_r+0x2a8>
   19756:	854a                	mv	a0,s2
   19758:	928fb0ef          	jal	14880 <__malloc_unlock>
   1975c:	4481                	li	s1,0
   1975e:	4c22                	lw	s8,8(sp)
   19760:	b35d                	j	19506 <_realloc_r+0x136>
   19762:	4814                	lw	a3,16(s0)
   19764:	01840713          	addi	a4,s0,24
   19768:	01850793          	addi	a5,a0,24
   1976c:	c914                	sw	a3,16(a0)
   1976e:	4854                	lw	a3,20(s0)
   19770:	c954                	sw	a3,20(a0)
   19772:	b33d                	j	194a0 <_realloc_r+0xd0>
   19774:	85a2                	mv	a1,s0
   19776:	8526                	mv	a0,s1
   19778:	f9afd0ef          	jal	16f12 <memmove>
   1977c:	bdb9                	j	195da <_realloc_r+0x20a>
   1977e:	441c                	lw	a5,8(s0)
   19780:	00fba823          	sw	a5,16(s7)
   19784:	445c                	lw	a5,12(s0)
   19786:	00fbaa23          	sw	a5,20(s7)
   1978a:	00d60663          	beq	a2,a3,19796 <_realloc_r+0x3c6>
   1978e:	0441                	addi	s0,s0,16
   19790:	018b8793          	addi	a5,s7,24
   19794:	bd2d                	j	195ce <_realloc_r+0x1fe>
   19796:	4818                	lw	a4,16(s0)
   19798:	020b8793          	addi	a5,s7,32
   1979c:	00ebac23          	sw	a4,24(s7)
   197a0:	4858                	lw	a4,20(s0)
   197a2:	0461                	addi	s0,s0,24
   197a4:	00ebae23          	sw	a4,28(s7)
   197a8:	b51d                	j	195ce <_realloc_r+0x1fe>

000197aa <__smakebuf_r>:
   197aa:	00c59783          	lh	a5,12(a1)
   197ae:	7119                	addi	sp,sp,-128
   197b0:	dca2                	sw	s0,120(sp)
   197b2:	de86                	sw	ra,124(sp)
   197b4:	0027f713          	andi	a4,a5,2
   197b8:	842e                	mv	s0,a1
   197ba:	cb19                	beqz	a4,197d0 <__smakebuf_r+0x26>
   197bc:	04358793          	addi	a5,a1,67
   197c0:	c19c                	sw	a5,0(a1)
   197c2:	c99c                	sw	a5,16(a1)
   197c4:	4785                	li	a5,1
   197c6:	c9dc                	sw	a5,20(a1)
   197c8:	50f6                	lw	ra,124(sp)
   197ca:	5466                	lw	s0,120(sp)
   197cc:	6109                	addi	sp,sp,128
   197ce:	8082                	ret
   197d0:	00e59583          	lh	a1,14(a1)
   197d4:	daa6                	sw	s1,116(sp)
   197d6:	d8ca                	sw	s2,112(sp)
   197d8:	d6ce                	sw	s3,108(sp)
   197da:	d4d2                	sw	s4,104(sp)
   197dc:	84aa                	mv	s1,a0
   197de:	0605c263          	bltz	a1,19842 <__smakebuf_r+0x98>
   197e2:	0030                	addi	a2,sp,8
   197e4:	22fd                	jal	199d2 <_fstat_r>
   197e6:	04054c63          	bltz	a0,1983e <__smakebuf_r+0x94>
   197ea:	47b2                	lw	a5,12(sp)
   197ec:	693d                	lui	s2,0xf
   197ee:	6985                	lui	s3,0x1
   197f0:	00f97933          	and	s2,s2,a5
   197f4:	77f9                	lui	a5,0xffffe
   197f6:	993e                	add	s2,s2,a5
   197f8:	00193913          	seqz	s2,s2
   197fc:	40000a13          	li	s4,1024
   19800:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   19804:	85d2                	mv	a1,s4
   19806:	8526                	mv	a0,s1
   19808:	ad3fa0ef          	jal	142da <_malloc_r>
   1980c:	00c41783          	lh	a5,12(s0)
   19810:	c539                	beqz	a0,1985e <__smakebuf_r+0xb4>
   19812:	0807e793          	ori	a5,a5,128
   19816:	c008                	sw	a0,0(s0)
   19818:	c808                	sw	a0,16(s0)
   1981a:	00f41623          	sh	a5,12(s0)
   1981e:	01442a23          	sw	s4,20(s0)
   19822:	06091563          	bnez	s2,1988c <__smakebuf_r+0xe2>
   19826:	0137e7b3          	or	a5,a5,s3
   1982a:	50f6                	lw	ra,124(sp)
   1982c:	00f41623          	sh	a5,12(s0)
   19830:	5466                	lw	s0,120(sp)
   19832:	54d6                	lw	s1,116(sp)
   19834:	5946                	lw	s2,112(sp)
   19836:	59b6                	lw	s3,108(sp)
   19838:	5a26                	lw	s4,104(sp)
   1983a:	6109                	addi	sp,sp,128
   1983c:	8082                	ret
   1983e:	00c41783          	lh	a5,12(s0)
   19842:	0807f793          	andi	a5,a5,128
   19846:	4901                	li	s2,0
   19848:	cf95                	beqz	a5,19884 <__smakebuf_r+0xda>
   1984a:	04000a13          	li	s4,64
   1984e:	85d2                	mv	a1,s4
   19850:	8526                	mv	a0,s1
   19852:	a89fa0ef          	jal	142da <_malloc_r>
   19856:	00c41783          	lh	a5,12(s0)
   1985a:	4981                	li	s3,0
   1985c:	f95d                	bnez	a0,19812 <__smakebuf_r+0x68>
   1985e:	2007f713          	andi	a4,a5,512
   19862:	ef0d                	bnez	a4,1989c <__smakebuf_r+0xf2>
   19864:	9bf1                	andi	a5,a5,-4
   19866:	0027e793          	ori	a5,a5,2
   1986a:	04340713          	addi	a4,s0,67
   1986e:	00f41623          	sh	a5,12(s0)
   19872:	4785                	li	a5,1
   19874:	54d6                	lw	s1,116(sp)
   19876:	5946                	lw	s2,112(sp)
   19878:	59b6                	lw	s3,108(sp)
   1987a:	5a26                	lw	s4,104(sp)
   1987c:	c018                	sw	a4,0(s0)
   1987e:	c818                	sw	a4,16(s0)
   19880:	c85c                	sw	a5,20(s0)
   19882:	b799                	j	197c8 <__smakebuf_r+0x1e>
   19884:	40000a13          	li	s4,1024
   19888:	4981                	li	s3,0
   1988a:	bfad                	j	19804 <__smakebuf_r+0x5a>
   1988c:	00e41583          	lh	a1,14(s0)
   19890:	8526                	mv	a0,s1
   19892:	2aad                	jal	19a0c <_isatty_r>
   19894:	e909                	bnez	a0,198a6 <__smakebuf_r+0xfc>
   19896:	00c41783          	lh	a5,12(s0)
   1989a:	b771                	j	19826 <__smakebuf_r+0x7c>
   1989c:	54d6                	lw	s1,116(sp)
   1989e:	5946                	lw	s2,112(sp)
   198a0:	59b6                	lw	s3,108(sp)
   198a2:	5a26                	lw	s4,104(sp)
   198a4:	b715                	j	197c8 <__smakebuf_r+0x1e>
   198a6:	00c45783          	lhu	a5,12(s0)
   198aa:	9bf1                	andi	a5,a5,-4
   198ac:	0017e793          	ori	a5,a5,1
   198b0:	07c2                	slli	a5,a5,0x10
   198b2:	87c1                	srai	a5,a5,0x10
   198b4:	bf8d                	j	19826 <__smakebuf_r+0x7c>

000198b6 <__swhatbuf_r>:
   198b6:	7159                	addi	sp,sp,-112
   198b8:	d4a2                	sw	s0,104(sp)
   198ba:	842e                	mv	s0,a1
   198bc:	00e59583          	lh	a1,14(a1)
   198c0:	d2a6                	sw	s1,100(sp)
   198c2:	d0ca                	sw	s2,96(sp)
   198c4:	d686                	sw	ra,108(sp)
   198c6:	84b2                	mv	s1,a2
   198c8:	8936                	mv	s2,a3
   198ca:	0205cb63          	bltz	a1,19900 <__swhatbuf_r+0x4a>
   198ce:	0030                	addi	a2,sp,8
   198d0:	2209                	jal	199d2 <_fstat_r>
   198d2:	02054763          	bltz	a0,19900 <__swhatbuf_r+0x4a>
   198d6:	4732                	lw	a4,12(sp)
   198d8:	67bd                	lui	a5,0xf
   198da:	50b6                	lw	ra,108(sp)
   198dc:	8ff9                	and	a5,a5,a4
   198de:	7779                	lui	a4,0xffffe
   198e0:	97ba                	add	a5,a5,a4
   198e2:	5426                	lw	s0,104(sp)
   198e4:	0017b793          	seqz	a5,a5
   198e8:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   198ec:	40000713          	li	a4,1024
   198f0:	c098                	sw	a4,0(s1)
   198f2:	6505                	lui	a0,0x1
   198f4:	5496                	lw	s1,100(sp)
   198f6:	5906                	lw	s2,96(sp)
   198f8:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   198fc:	6165                	addi	sp,sp,112
   198fe:	8082                	ret
   19900:	00c45783          	lhu	a5,12(s0)
   19904:	0807f793          	andi	a5,a5,128
   19908:	cf91                	beqz	a5,19924 <__swhatbuf_r+0x6e>
   1990a:	50b6                	lw	ra,108(sp)
   1990c:	5426                	lw	s0,104(sp)
   1990e:	4781                	li	a5,0
   19910:	00f92023          	sw	a5,0(s2)
   19914:	04000713          	li	a4,64
   19918:	c098                	sw	a4,0(s1)
   1991a:	5906                	lw	s2,96(sp)
   1991c:	5496                	lw	s1,100(sp)
   1991e:	4501                	li	a0,0
   19920:	6165                	addi	sp,sp,112
   19922:	8082                	ret
   19924:	50b6                	lw	ra,108(sp)
   19926:	5426                	lw	s0,104(sp)
   19928:	00f92023          	sw	a5,0(s2)
   1992c:	40000713          	li	a4,1024
   19930:	c098                	sw	a4,0(s1)
   19932:	5906                	lw	s2,96(sp)
   19934:	5496                	lw	s1,100(sp)
   19936:	4501                	li	a0,0
   19938:	6165                	addi	sp,sp,112
   1993a:	8082                	ret

0001993c <_setlocale_r>:
   1993c:	1141                	addi	sp,sp,-16
   1993e:	c606                	sw	ra,12(sp)
   19940:	c226                	sw	s1,4(sp)
   19942:	c20d                	beqz	a2,19964 <_setlocale_r+0x28>
   19944:	65f5                	lui	a1,0x1d
   19946:	5b858593          	addi	a1,a1,1464 # 1d5b8 <__clzsi2+0x19a>
   1994a:	8532                	mv	a0,a2
   1994c:	c422                	sw	s0,8(sp)
   1994e:	8432                	mv	s0,a2
   19950:	28cd                	jal	19a42 <strcmp>
   19952:	64f5                	lui	s1,0x1d
   19954:	e911                	bnez	a0,19968 <_setlocale_r+0x2c>
   19956:	4422                	lw	s0,8(sp)
   19958:	5b448513          	addi	a0,s1,1460 # 1d5b4 <__clzsi2+0x196>
   1995c:	40b2                	lw	ra,12(sp)
   1995e:	4492                	lw	s1,4(sp)
   19960:	0141                	addi	sp,sp,16
   19962:	8082                	ret
   19964:	64f5                	lui	s1,0x1d
   19966:	bfcd                	j	19958 <_setlocale_r+0x1c>
   19968:	5b448593          	addi	a1,s1,1460 # 1d5b4 <__clzsi2+0x196>
   1996c:	8522                	mv	a0,s0
   1996e:	28d1                	jal	19a42 <strcmp>
   19970:	d17d                	beqz	a0,19956 <_setlocale_r+0x1a>
   19972:	65f5                	lui	a1,0x1d
   19974:	5d058593          	addi	a1,a1,1488 # 1d5d0 <__clzsi2+0x1b2>
   19978:	8522                	mv	a0,s0
   1997a:	20e1                	jal	19a42 <strcmp>
   1997c:	dd69                	beqz	a0,19956 <_setlocale_r+0x1a>
   1997e:	4422                	lw	s0,8(sp)
   19980:	4501                	li	a0,0
   19982:	bfe9                	j	1995c <_setlocale_r+0x20>

00019984 <__locale_mb_cur_max>:
   19984:	e601c503          	lbu	a0,-416(gp) # 1e670 <__global_locale+0x128>
   19988:	8082                	ret

0001998a <setlocale>:
   1998a:	1141                	addi	sp,sp,-16
   1998c:	c606                	sw	ra,12(sp)
   1998e:	c226                	sw	s1,4(sp)
   19990:	c18d                	beqz	a1,199b2 <setlocale+0x28>
   19992:	c422                	sw	s0,8(sp)
   19994:	842e                	mv	s0,a1
   19996:	65f5                	lui	a1,0x1d
   19998:	5b858593          	addi	a1,a1,1464 # 1d5b8 <__clzsi2+0x19a>
   1999c:	8522                	mv	a0,s0
   1999e:	2055                	jal	19a42 <strcmp>
   199a0:	64f5                	lui	s1,0x1d
   199a2:	e911                	bnez	a0,199b6 <setlocale+0x2c>
   199a4:	4422                	lw	s0,8(sp)
   199a6:	5b448513          	addi	a0,s1,1460 # 1d5b4 <__clzsi2+0x196>
   199aa:	40b2                	lw	ra,12(sp)
   199ac:	4492                	lw	s1,4(sp)
   199ae:	0141                	addi	sp,sp,16
   199b0:	8082                	ret
   199b2:	64f5                	lui	s1,0x1d
   199b4:	bfcd                	j	199a6 <setlocale+0x1c>
   199b6:	5b448593          	addi	a1,s1,1460 # 1d5b4 <__clzsi2+0x196>
   199ba:	8522                	mv	a0,s0
   199bc:	2059                	jal	19a42 <strcmp>
   199be:	d17d                	beqz	a0,199a4 <setlocale+0x1a>
   199c0:	65f5                	lui	a1,0x1d
   199c2:	5d058593          	addi	a1,a1,1488 # 1d5d0 <__clzsi2+0x1b2>
   199c6:	8522                	mv	a0,s0
   199c8:	28ad                	jal	19a42 <strcmp>
   199ca:	dd69                	beqz	a0,199a4 <setlocale+0x1a>
   199cc:	4422                	lw	s0,8(sp)
   199ce:	4501                	li	a0,0
   199d0:	bfe9                	j	199aa <setlocale+0x20>

000199d2 <_fstat_r>:
   199d2:	1141                	addi	sp,sp,-16
   199d4:	872e                	mv	a4,a1
   199d6:	c422                	sw	s0,8(sp)
   199d8:	c226                	sw	s1,4(sp)
   199da:	842a                	mv	s0,a0
   199dc:	85b2                	mv	a1,a2
   199de:	853a                	mv	a0,a4
   199e0:	c606                	sw	ra,12(sp)
   199e2:	f401a623          	sw	zero,-180(gp) # 1e75c <errno>
   199e6:	3f8010ef          	jal	1adde <_fstat>
   199ea:	57fd                	li	a5,-1
   199ec:	00f50763          	beq	a0,a5,199fa <_fstat_r+0x28>
   199f0:	40b2                	lw	ra,12(sp)
   199f2:	4422                	lw	s0,8(sp)
   199f4:	4492                	lw	s1,4(sp)
   199f6:	0141                	addi	sp,sp,16
   199f8:	8082                	ret
   199fa:	f4c1a783          	lw	a5,-180(gp) # 1e75c <errno>
   199fe:	dbed                	beqz	a5,199f0 <_fstat_r+0x1e>
   19a00:	40b2                	lw	ra,12(sp)
   19a02:	c01c                	sw	a5,0(s0)
   19a04:	4422                	lw	s0,8(sp)
   19a06:	4492                	lw	s1,4(sp)
   19a08:	0141                	addi	sp,sp,16
   19a0a:	8082                	ret

00019a0c <_isatty_r>:
   19a0c:	1141                	addi	sp,sp,-16
   19a0e:	c422                	sw	s0,8(sp)
   19a10:	c226                	sw	s1,4(sp)
   19a12:	842a                	mv	s0,a0
   19a14:	852e                	mv	a0,a1
   19a16:	c606                	sw	ra,12(sp)
   19a18:	f401a623          	sw	zero,-180(gp) # 1e75c <errno>
   19a1c:	400010ef          	jal	1ae1c <_isatty>
   19a20:	57fd                	li	a5,-1
   19a22:	00f50763          	beq	a0,a5,19a30 <_isatty_r+0x24>
   19a26:	40b2                	lw	ra,12(sp)
   19a28:	4422                	lw	s0,8(sp)
   19a2a:	4492                	lw	s1,4(sp)
   19a2c:	0141                	addi	sp,sp,16
   19a2e:	8082                	ret
   19a30:	f4c1a783          	lw	a5,-180(gp) # 1e75c <errno>
   19a34:	dbed                	beqz	a5,19a26 <_isatty_r+0x1a>
   19a36:	40b2                	lw	ra,12(sp)
   19a38:	c01c                	sw	a5,0(s0)
   19a3a:	4422                	lw	s0,8(sp)
   19a3c:	4492                	lw	s1,4(sp)
   19a3e:	0141                	addi	sp,sp,16
   19a40:	8082                	ret

00019a42 <strcmp>:
   19a42:	00b56733          	or	a4,a0,a1
   19a46:	53fd                	li	t2,-1
   19a48:	8b0d                	andi	a4,a4,3
   19a4a:	e779                	bnez	a4,19b18 <strcmp+0xd6>
   19a4c:	7f7f87b7          	lui	a5,0x7f7f8
   19a50:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d94fb>
   19a54:	4110                	lw	a2,0(a0)
   19a56:	4194                	lw	a3,0(a1)
   19a58:	00f672b3          	and	t0,a2,a5
   19a5c:	00f66333          	or	t1,a2,a5
   19a60:	92be                	add	t0,t0,a5
   19a62:	0062e2b3          	or	t0,t0,t1
   19a66:	0c729763          	bne	t0,t2,19b34 <strcmp+0xf2>
   19a6a:	06d61863          	bne	a2,a3,19ada <strcmp+0x98>
   19a6e:	4150                	lw	a2,4(a0)
   19a70:	41d4                	lw	a3,4(a1)
   19a72:	00f672b3          	and	t0,a2,a5
   19a76:	00f66333          	or	t1,a2,a5
   19a7a:	92be                	add	t0,t0,a5
   19a7c:	0062e2b3          	or	t0,t0,t1
   19a80:	0a729863          	bne	t0,t2,19b30 <strcmp+0xee>
   19a84:	04d61b63          	bne	a2,a3,19ada <strcmp+0x98>
   19a88:	4510                	lw	a2,8(a0)
   19a8a:	4594                	lw	a3,8(a1)
   19a8c:	00f672b3          	and	t0,a2,a5
   19a90:	00f66333          	or	t1,a2,a5
   19a94:	92be                	add	t0,t0,a5
   19a96:	0062e2b3          	or	t0,t0,t1
   19a9a:	0a729163          	bne	t0,t2,19b3c <strcmp+0xfa>
   19a9e:	02d61e63          	bne	a2,a3,19ada <strcmp+0x98>
   19aa2:	4550                	lw	a2,12(a0)
   19aa4:	45d4                	lw	a3,12(a1)
   19aa6:	00f672b3          	and	t0,a2,a5
   19aaa:	00f66333          	or	t1,a2,a5
   19aae:	92be                	add	t0,t0,a5
   19ab0:	0062e2b3          	or	t0,t0,t1
   19ab4:	08729a63          	bne	t0,t2,19b48 <strcmp+0x106>
   19ab8:	02d61163          	bne	a2,a3,19ada <strcmp+0x98>
   19abc:	4910                	lw	a2,16(a0)
   19abe:	4994                	lw	a3,16(a1)
   19ac0:	00f672b3          	and	t0,a2,a5
   19ac4:	00f66333          	or	t1,a2,a5
   19ac8:	92be                	add	t0,t0,a5
   19aca:	0062e2b3          	or	t0,t0,t1
   19ace:	08729363          	bne	t0,t2,19b54 <strcmp+0x112>
   19ad2:	0551                	addi	a0,a0,20
   19ad4:	05d1                	addi	a1,a1,20
   19ad6:	f6d60fe3          	beq	a2,a3,19a54 <strcmp+0x12>
   19ada:	01061713          	slli	a4,a2,0x10
   19ade:	01069793          	slli	a5,a3,0x10
   19ae2:	00f71c63          	bne	a4,a5,19afa <strcmp+0xb8>
   19ae6:	01065713          	srli	a4,a2,0x10
   19aea:	0106d793          	srli	a5,a3,0x10
   19aee:	40f70533          	sub	a0,a4,a5
   19af2:	0ff57593          	zext.b	a1,a0
   19af6:	e991                	bnez	a1,19b0a <strcmp+0xc8>
   19af8:	8082                	ret
   19afa:	8341                	srli	a4,a4,0x10
   19afc:	83c1                	srli	a5,a5,0x10
   19afe:	40f70533          	sub	a0,a4,a5
   19b02:	0ff57593          	zext.b	a1,a0
   19b06:	e191                	bnez	a1,19b0a <strcmp+0xc8>
   19b08:	8082                	ret
   19b0a:	0ff77713          	zext.b	a4,a4
   19b0e:	0ff7f793          	zext.b	a5,a5
   19b12:	40f70533          	sub	a0,a4,a5
   19b16:	8082                	ret
   19b18:	00054603          	lbu	a2,0(a0)
   19b1c:	0005c683          	lbu	a3,0(a1)
   19b20:	0505                	addi	a0,a0,1
   19b22:	0585                	addi	a1,a1,1
   19b24:	00d61363          	bne	a2,a3,19b2a <strcmp+0xe8>
   19b28:	fa65                	bnez	a2,19b18 <strcmp+0xd6>
   19b2a:	40d60533          	sub	a0,a2,a3
   19b2e:	8082                	ret
   19b30:	0511                	addi	a0,a0,4
   19b32:	0591                	addi	a1,a1,4
   19b34:	fed612e3          	bne	a2,a3,19b18 <strcmp+0xd6>
   19b38:	4501                	li	a0,0
   19b3a:	8082                	ret
   19b3c:	0521                	addi	a0,a0,8
   19b3e:	05a1                	addi	a1,a1,8
   19b40:	fcd61ce3          	bne	a2,a3,19b18 <strcmp+0xd6>
   19b44:	4501                	li	a0,0
   19b46:	8082                	ret
   19b48:	0531                	addi	a0,a0,12
   19b4a:	05b1                	addi	a1,a1,12
   19b4c:	fcd616e3          	bne	a2,a3,19b18 <strcmp+0xd6>
   19b50:	4501                	li	a0,0
   19b52:	8082                	ret
   19b54:	0541                	addi	a0,a0,16
   19b56:	05c1                	addi	a1,a1,16
   19b58:	fcd610e3          	bne	a2,a3,19b18 <strcmp+0xd6>
   19b5c:	4501                	li	a0,0
   19b5e:	8082                	ret

00019b60 <__assert_func>:
   19b60:	f3c1a703          	lw	a4,-196(gp) # 1e74c <_impure_ptr>
   19b64:	1141                	addi	sp,sp,-16
   19b66:	87b6                	mv	a5,a3
   19b68:	8832                	mv	a6,a2
   19b6a:	c606                	sw	ra,12(sp)
   19b6c:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffdf588>
   19b70:	86aa                	mv	a3,a0
   19b72:	872e                	mv	a4,a1
   19b74:	863e                	mv	a2,a5
   19b76:	00080c63          	beqz	a6,19b8e <__assert_func+0x2e>
   19b7a:	67f5                	lui	a5,0x1d
   19b7c:	5c478793          	addi	a5,a5,1476 # 1d5c4 <__clzsi2+0x1a6>
   19b80:	65f5                	lui	a1,0x1d
   19b82:	5d458593          	addi	a1,a1,1492 # 1d5d4 <__clzsi2+0x1b6>
   19b86:	8546                	mv	a0,a7
   19b88:	2a81                	jal	19cd8 <fiprintf>
   19b8a:	691000ef          	jal	1aa1a <abort>
   19b8e:	6875                	lui	a6,0x1d
   19b90:	5d080793          	addi	a5,a6,1488 # 1d5d0 <__clzsi2+0x1b2>
   19b94:	5d080813          	addi	a6,a6,1488
   19b98:	b7e5                	j	19b80 <__assert_func+0x20>

00019b9a <__assert>:
   19b9a:	1141                	addi	sp,sp,-16
   19b9c:	86b2                	mv	a3,a2
   19b9e:	4601                	li	a2,0
   19ba0:	c606                	sw	ra,12(sp)
   19ba2:	fbfff0ef          	jal	19b60 <__assert_func>

00019ba6 <_calloc_r>:
   19ba6:	02c5b7b3          	mulhu	a5,a1,a2
   19baa:	1141                	addi	sp,sp,-16
   19bac:	c606                	sw	ra,12(sp)
   19bae:	c422                	sw	s0,8(sp)
   19bb0:	02c585b3          	mul	a1,a1,a2
   19bb4:	efa5                	bnez	a5,19c2c <_calloc_r+0x86>
   19bb6:	f24fa0ef          	jal	142da <_malloc_r>
   19bba:	842a                	mv	s0,a0
   19bbc:	cd25                	beqz	a0,19c34 <_calloc_r+0x8e>
   19bbe:	ffc52603          	lw	a2,-4(a0)
   19bc2:	02400713          	li	a4,36
   19bc6:	9a71                	andi	a2,a2,-4
   19bc8:	1671                	addi	a2,a2,-4
   19bca:	04c76063          	bltu	a4,a2,19c0a <_calloc_r+0x64>
   19bce:	46cd                	li	a3,19
   19bd0:	87aa                	mv	a5,a0
   19bd2:	02c6f163          	bgeu	a3,a2,19bf4 <_calloc_r+0x4e>
   19bd6:	00052023          	sw	zero,0(a0)
   19bda:	00052223          	sw	zero,4(a0)
   19bde:	47ed                	li	a5,27
   19be0:	02c7fd63          	bgeu	a5,a2,19c1a <_calloc_r+0x74>
   19be4:	00052423          	sw	zero,8(a0)
   19be8:	00052623          	sw	zero,12(a0)
   19bec:	01050793          	addi	a5,a0,16
   19bf0:	04e60863          	beq	a2,a4,19c40 <_calloc_r+0x9a>
   19bf4:	0007a023          	sw	zero,0(a5)
   19bf8:	0007a223          	sw	zero,4(a5)
   19bfc:	0007a423          	sw	zero,8(a5)
   19c00:	40b2                	lw	ra,12(sp)
   19c02:	8522                	mv	a0,s0
   19c04:	4422                	lw	s0,8(sp)
   19c06:	0141                	addi	sp,sp,16
   19c08:	8082                	ret
   19c0a:	4581                	li	a1,0
   19c0c:	a5efa0ef          	jal	13e6a <memset>
   19c10:	40b2                	lw	ra,12(sp)
   19c12:	8522                	mv	a0,s0
   19c14:	4422                	lw	s0,8(sp)
   19c16:	0141                	addi	sp,sp,16
   19c18:	8082                	ret
   19c1a:	00850793          	addi	a5,a0,8
   19c1e:	0007a023          	sw	zero,0(a5)
   19c22:	0007a223          	sw	zero,4(a5)
   19c26:	0007a423          	sw	zero,8(a5)
   19c2a:	bfd9                	j	19c00 <_calloc_r+0x5a>
   19c2c:	5e9000ef          	jal	1aa14 <__errno>
   19c30:	47b1                	li	a5,12
   19c32:	c11c                	sw	a5,0(a0)
   19c34:	4401                	li	s0,0
   19c36:	40b2                	lw	ra,12(sp)
   19c38:	8522                	mv	a0,s0
   19c3a:	4422                	lw	s0,8(sp)
   19c3c:	0141                	addi	sp,sp,16
   19c3e:	8082                	ret
   19c40:	00052823          	sw	zero,16(a0)
   19c44:	01850793          	addi	a5,a0,24
   19c48:	00052a23          	sw	zero,20(a0)
   19c4c:	b765                	j	19bf4 <_calloc_r+0x4e>

00019c4e <_mbtowc_r>:
   19c4e:	e1c1a783          	lw	a5,-484(gp) # 1e62c <__global_locale+0xe4>
   19c52:	8782                	jr	a5

00019c54 <__ascii_mbtowc>:
   19c54:	c999                	beqz	a1,19c6a <__ascii_mbtowc+0x16>
   19c56:	c61d                	beqz	a2,19c84 <__ascii_mbtowc+0x30>
   19c58:	ca95                	beqz	a3,19c8c <__ascii_mbtowc+0x38>
   19c5a:	00064783          	lbu	a5,0(a2)
   19c5e:	c19c                	sw	a5,0(a1)
   19c60:	00064503          	lbu	a0,0(a2)
   19c64:	00a03533          	snez	a0,a0
   19c68:	8082                	ret
   19c6a:	1141                	addi	sp,sp,-16
   19c6c:	006c                	addi	a1,sp,12
   19c6e:	ce09                	beqz	a2,19c88 <__ascii_mbtowc+0x34>
   19c70:	c285                	beqz	a3,19c90 <__ascii_mbtowc+0x3c>
   19c72:	00064783          	lbu	a5,0(a2)
   19c76:	c19c                	sw	a5,0(a1)
   19c78:	00064503          	lbu	a0,0(a2)
   19c7c:	00a03533          	snez	a0,a0
   19c80:	0141                	addi	sp,sp,16
   19c82:	8082                	ret
   19c84:	4501                	li	a0,0
   19c86:	8082                	ret
   19c88:	4501                	li	a0,0
   19c8a:	bfdd                	j	19c80 <__ascii_mbtowc+0x2c>
   19c8c:	5579                	li	a0,-2
   19c8e:	8082                	ret
   19c90:	5579                	li	a0,-2
   19c92:	b7fd                	j	19c80 <__ascii_mbtowc+0x2c>

00019c94 <_wctomb_r>:
   19c94:	e181a783          	lw	a5,-488(gp) # 1e628 <__global_locale+0xe0>
   19c98:	8782                	jr	a5

00019c9a <__ascii_wctomb>:
   19c9a:	cd91                	beqz	a1,19cb6 <__ascii_wctomb+0x1c>
   19c9c:	0ff00793          	li	a5,255
   19ca0:	00c7e663          	bltu	a5,a2,19cac <__ascii_wctomb+0x12>
   19ca4:	00c58023          	sb	a2,0(a1)
   19ca8:	4505                	li	a0,1
   19caa:	8082                	ret
   19cac:	08a00793          	li	a5,138
   19cb0:	c11c                	sw	a5,0(a0)
   19cb2:	557d                	li	a0,-1
   19cb4:	8082                	ret
   19cb6:	4501                	li	a0,0
   19cb8:	8082                	ret

00019cba <_fiprintf_r>:
   19cba:	7139                	addi	sp,sp,-64
   19cbc:	02c10313          	addi	t1,sp,44
   19cc0:	d636                	sw	a3,44(sp)
   19cc2:	869a                	mv	a3,t1
   19cc4:	ce06                	sw	ra,28(sp)
   19cc6:	d83a                	sw	a4,48(sp)
   19cc8:	da3e                	sw	a5,52(sp)
   19cca:	dc42                	sw	a6,56(sp)
   19ccc:	de46                	sw	a7,60(sp)
   19cce:	c61a                	sw	t1,12(sp)
   19cd0:	280d                	jal	19d02 <_vfiprintf_r>
   19cd2:	40f2                	lw	ra,28(sp)
   19cd4:	6121                	addi	sp,sp,64
   19cd6:	8082                	ret

00019cd8 <fiprintf>:
   19cd8:	8e2a                	mv	t3,a0
   19cda:	7139                	addi	sp,sp,-64
   19cdc:	f3c1a503          	lw	a0,-196(gp) # 1e74c <_impure_ptr>
   19ce0:	02810313          	addi	t1,sp,40
   19ce4:	d432                	sw	a2,40(sp)
   19ce6:	d636                	sw	a3,44(sp)
   19ce8:	862e                	mv	a2,a1
   19cea:	869a                	mv	a3,t1
   19cec:	85f2                	mv	a1,t3
   19cee:	ce06                	sw	ra,28(sp)
   19cf0:	d83a                	sw	a4,48(sp)
   19cf2:	da3e                	sw	a5,52(sp)
   19cf4:	dc42                	sw	a6,56(sp)
   19cf6:	de46                	sw	a7,60(sp)
   19cf8:	c61a                	sw	t1,12(sp)
   19cfa:	2021                	jal	19d02 <_vfiprintf_r>
   19cfc:	40f2                	lw	ra,28(sp)
   19cfe:	6121                	addi	sp,sp,64
   19d00:	8082                	ret

00019d02 <_vfiprintf_r>:
   19d02:	7169                	addi	sp,sp,-304
   19d04:	11312e23          	sw	s3,284(sp)
   19d08:	11512a23          	sw	s5,276(sp)
   19d0c:	11612823          	sw	s6,272(sp)
   19d10:	11712623          	sw	s7,268(sp)
   19d14:	12112623          	sw	ra,300(sp)
   19d18:	11a12023          	sw	s10,256(sp)
   19d1c:	8baa                	mv	s7,a0
   19d1e:	8aae                	mv	s5,a1
   19d20:	89b2                	mv	s3,a2
   19d22:	8b36                	mv	s6,a3
   19d24:	c501                	beqz	a0,19d2c <_vfiprintf_r+0x2a>
   19d26:	595c                	lw	a5,52(a0)
   19d28:	300783e3          	beqz	a5,1a82e <_vfiprintf_r+0xb2c>
   19d2c:	00ca9703          	lh	a4,12(s5)
   19d30:	064aa783          	lw	a5,100(s5)
   19d34:	01271693          	slli	a3,a4,0x12
   19d38:	0006cb63          	bltz	a3,19d4e <_vfiprintf_r+0x4c>
   19d3c:	76f9                	lui	a3,0xffffe
   19d3e:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffdf57b>
   19d40:	6609                	lui	a2,0x2
   19d42:	8f51                	or	a4,a4,a2
   19d44:	8ff5                	and	a5,a5,a3
   19d46:	00ea9623          	sh	a4,12(s5)
   19d4a:	06faa223          	sw	a5,100(s5)
   19d4e:	01279713          	slli	a4,a5,0x12
   19d52:	400740e3          	bltz	a4,1a952 <_vfiprintf_r+0xc50>
   19d56:	00ca9783          	lh	a5,12(s5)
   19d5a:	0087f713          	andi	a4,a5,8
   19d5e:	22070363          	beqz	a4,19f84 <_vfiprintf_r+0x282>
   19d62:	010aa703          	lw	a4,16(s5)
   19d66:	20070f63          	beqz	a4,19f84 <_vfiprintf_r+0x282>
   19d6a:	8be9                	andi	a5,a5,26
   19d6c:	4729                	li	a4,10
   19d6e:	22e78763          	beq	a5,a4,19f9c <_vfiprintf_r+0x29a>
   19d72:	67f9                	lui	a5,0x1e
   19d74:	4d01                	li	s10,0
   19d76:	11812423          	sw	s8,264(sp)
   19d7a:	11912223          	sw	s9,260(sp)
   19d7e:	04c10c13          	addi	s8,sp,76
   19d82:	a6478793          	addi	a5,a5,-1436 # 1da64 <_ctype_+0x104>
   19d86:	6cf9                	lui	s9,0x1e
   19d88:	12812423          	sw	s0,296(sp)
   19d8c:	13212023          	sw	s2,288(sp)
   19d90:	11412c23          	sw	s4,280(sp)
   19d94:	896a                	mv	s2,s10
   19d96:	12912223          	sw	s1,292(sp)
   19d9a:	dfee                	sw	s11,252(sp)
   19d9c:	c0e2                	sw	s8,64(sp)
   19d9e:	c482                	sw	zero,72(sp)
   19da0:	c282                	sw	zero,68(sp)
   19da2:	8462                	mv	s0,s8
   19da4:	c202                	sw	zero,4(sp)
   19da6:	ca02                	sw	zero,20(sp)
   19da8:	cc02                	sw	zero,24(sp)
   19daa:	ce02                	sw	zero,28(sp)
   19dac:	c03e                	sw	a5,0(sp)
   19dae:	4a41                	li	s4,16
   19db0:	bd0c8c93          	addi	s9,s9,-1072 # 1dbd0 <zeroes.0>
   19db4:	8d5a                	mv	s10,s6
   19db6:	0009c783          	lbu	a5,0(s3)
   19dba:	14078563          	beqz	a5,19f04 <_vfiprintf_r+0x202>
   19dbe:	84ce                	mv	s1,s3
   19dc0:	02500713          	li	a4,37
   19dc4:	20e78363          	beq	a5,a4,19fca <_vfiprintf_r+0x2c8>
   19dc8:	0014c783          	lbu	a5,1(s1)
   19dcc:	0485                	addi	s1,s1,1
   19dce:	fbfd                	bnez	a5,19dc4 <_vfiprintf_r+0xc2>
   19dd0:	41348b33          	sub	s6,s1,s3
   19dd4:	13348863          	beq	s1,s3,19f04 <_vfiprintf_r+0x202>
   19dd8:	4726                	lw	a4,72(sp)
   19dda:	4796                	lw	a5,68(sp)
   19ddc:	01342023          	sw	s3,0(s0)
   19de0:	975a                	add	a4,a4,s6
   19de2:	0785                	addi	a5,a5,1
   19de4:	01642223          	sw	s6,4(s0)
   19de8:	c4ba                	sw	a4,72(sp)
   19dea:	c2be                	sw	a5,68(sp)
   19dec:	471d                	li	a4,7
   19dee:	0421                	addi	s0,s0,8
   19df0:	1ef74463          	blt	a4,a5,19fd8 <_vfiprintf_r+0x2d6>
   19df4:	0004c783          	lbu	a5,0(s1)
   19df8:	995a                	add	s2,s2,s6
   19dfa:	10078563          	beqz	a5,19f04 <_vfiprintf_r+0x202>
   19dfe:	0014c783          	lbu	a5,1(s1)
   19e02:	00148993          	addi	s3,s1,1
   19e06:	02010da3          	sb	zero,59(sp)
   19e0a:	5dfd                	li	s11,-1
   19e0c:	4b01                	li	s6,0
   19e0e:	4801                	li	a6,0
   19e10:	05a00493          	li	s1,90
   19e14:	0985                	addi	s3,s3,1
   19e16:	863e                	mv	a2,a5
   19e18:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   19e1c:	02e4eb63          	bltu	s1,a4,19e52 <_vfiprintf_r+0x150>
   19e20:	4782                	lw	a5,0(sp)
   19e22:	070a                	slli	a4,a4,0x2
   19e24:	973e                	add	a4,a4,a5
   19e26:	431c                	lw	a5,0(a4)
   19e28:	8782                	jr	a5
   19e2a:	4b01                	li	s6,0
   19e2c:	fd060793          	addi	a5,a2,-48
   19e30:	46a5                	li	a3,9
   19e32:	0009c603          	lbu	a2,0(s3)
   19e36:	002b1713          	slli	a4,s6,0x2
   19e3a:	9b3a                	add	s6,s6,a4
   19e3c:	0b06                	slli	s6,s6,0x1
   19e3e:	9b3e                	add	s6,s6,a5
   19e40:	fd060793          	addi	a5,a2,-48
   19e44:	0985                	addi	s3,s3,1
   19e46:	fef6f6e3          	bgeu	a3,a5,19e32 <_vfiprintf_r+0x130>
   19e4a:	fe060713          	addi	a4,a2,-32
   19e4e:	fce4f9e3          	bgeu	s1,a4,19e20 <_vfiprintf_r+0x11e>
   19e52:	ca4d                	beqz	a2,19f04 <_vfiprintf_r+0x202>
   19e54:	08c10623          	sb	a2,140(sp)
   19e58:	02010da3          	sb	zero,59(sp)
   19e5c:	4885                	li	a7,1
   19e5e:	4e05                	li	t3,1
   19e60:	0164                	addi	s1,sp,140
   19e62:	4d81                	li	s11,0
   19e64:	4281                	li	t0,0
   19e66:	08487f93          	andi	t6,a6,132
   19e6a:	4726                	lw	a4,72(sp)
   19e6c:	4796                	lw	a5,68(sp)
   19e6e:	000f9663          	bnez	t6,19e7a <_vfiprintf_r+0x178>
   19e72:	411b0eb3          	sub	t4,s6,a7
   19e76:	71d04b63          	bgtz	t4,1a58c <_vfiprintf_r+0x88a>
   19e7a:	03b14603          	lbu	a2,59(sp)
   19e7e:	ce11                	beqz	a2,19e9a <_vfiprintf_r+0x198>
   19e80:	03b10613          	addi	a2,sp,59
   19e84:	c010                	sw	a2,0(s0)
   19e86:	0785                	addi	a5,a5,1
   19e88:	4605                	li	a2,1
   19e8a:	0705                	addi	a4,a4,1
   19e8c:	c050                	sw	a2,4(s0)
   19e8e:	c4ba                	sw	a4,72(sp)
   19e90:	c2be                	sw	a5,68(sp)
   19e92:	461d                	li	a2,7
   19e94:	0421                	addi	s0,s0,8
   19e96:	1af64363          	blt	a2,a5,1a03c <_vfiprintf_r+0x33a>
   19e9a:	00028e63          	beqz	t0,19eb6 <_vfiprintf_r+0x1b4>
   19e9e:	1870                	addi	a2,sp,60
   19ea0:	c010                	sw	a2,0(s0)
   19ea2:	0785                	addi	a5,a5,1
   19ea4:	4609                	li	a2,2
   19ea6:	0709                	addi	a4,a4,2
   19ea8:	c050                	sw	a2,4(s0)
   19eaa:	c4ba                	sw	a4,72(sp)
   19eac:	c2be                	sw	a5,68(sp)
   19eae:	461d                	li	a2,7
   19eb0:	0421                	addi	s0,s0,8
   19eb2:	78f64663          	blt	a2,a5,1a63e <_vfiprintf_r+0x93c>
   19eb6:	08000613          	li	a2,128
   19eba:	52cf8a63          	beq	t6,a2,1a3ee <_vfiprintf_r+0x6ec>
   19ebe:	41cd8db3          	sub	s11,s11,t3
   19ec2:	5db04d63          	bgtz	s11,1a49c <_vfiprintf_r+0x79a>
   19ec6:	9772                	add	a4,a4,t3
   19ec8:	0785                	addi	a5,a5,1
   19eca:	c004                	sw	s1,0(s0)
   19ecc:	01c42223          	sw	t3,4(s0)
   19ed0:	c4ba                	sw	a4,72(sp)
   19ed2:	c2be                	sw	a5,68(sp)
   19ed4:	461d                	li	a2,7
   19ed6:	0421                	addi	s0,s0,8
   19ed8:	64f64e63          	blt	a2,a5,1a534 <_vfiprintf_r+0x832>
   19edc:	00487813          	andi	a6,a6,4
   19ee0:	00080663          	beqz	a6,19eec <_vfiprintf_r+0x1ea>
   19ee4:	411b04b3          	sub	s1,s6,a7
   19ee8:	16904e63          	bgtz	s1,1a064 <_vfiprintf_r+0x362>
   19eec:	011b5363          	bge	s6,a7,19ef2 <_vfiprintf_r+0x1f0>
   19ef0:	8b46                	mv	s6,a7
   19ef2:	995a                	add	s2,s2,s6
   19ef4:	0e071a63          	bnez	a4,19fe8 <_vfiprintf_r+0x2e6>
   19ef8:	0009c783          	lbu	a5,0(s3)
   19efc:	c282                	sw	zero,68(sp)
   19efe:	8462                	mv	s0,s8
   19f00:	ea079fe3          	bnez	a5,19dbe <_vfiprintf_r+0xbc>
   19f04:	47a6                	lw	a5,72(sp)
   19f06:	8d4a                	mv	s10,s2
   19f08:	0e078863          	beqz	a5,19ff8 <_vfiprintf_r+0x2f6>
   19f0c:	0090                	addi	a2,sp,64
   19f0e:	85d6                	mv	a1,s5
   19f10:	855e                	mv	a0,s7
   19f12:	dbafc0ef          	jal	164cc <__sprint_r>
   19f16:	a0cd                	j	19ff8 <_vfiprintf_r+0x2f6>
   19f18:	000d2b03          	lw	s6,0(s10)
   19f1c:	0d11                	addi	s10,s10,4
   19f1e:	280b4c63          	bltz	s6,1a1b6 <_vfiprintf_r+0x4b4>
   19f22:	0009c783          	lbu	a5,0(s3)
   19f26:	b5fd                	j	19e14 <_vfiprintf_r+0x112>
   19f28:	0009c783          	lbu	a5,0(s3)
   19f2c:	02086813          	ori	a6,a6,32
   19f30:	b5d5                	j	19e14 <_vfiprintf_r+0x112>
   19f32:	01086813          	ori	a6,a6,16
   19f36:	02087793          	andi	a5,a6,32
   19f3a:	1a078363          	beqz	a5,1a0e0 <_vfiprintf_r+0x3de>
   19f3e:	0d1d                	addi	s10,s10,7
   19f40:	ff8d7d13          	andi	s10,s10,-8
   19f44:	004d2703          	lw	a4,4(s10)
   19f48:	000d2783          	lw	a5,0(s10)
   19f4c:	0d21                	addi	s10,s10,8
   19f4e:	88ba                	mv	a7,a4
   19f50:	1a074863          	bltz	a4,1a100 <_vfiprintf_r+0x3fe>
   19f54:	1c0dc663          	bltz	s11,1a120 <_vfiprintf_r+0x41e>
   19f58:	0117e733          	or	a4,a5,a7
   19f5c:	f7f87813          	andi	a6,a6,-129
   19f60:	1c071063          	bnez	a4,1a120 <_vfiprintf_r+0x41e>
   19f64:	1e0d93e3          	bnez	s11,1a94a <_vfiprintf_r+0xc48>
   19f68:	03b14783          	lbu	a5,59(sp)
   19f6c:	4881                	li	a7,0
   19f6e:	4e01                	li	t3,0
   19f70:	1984                	addi	s1,sp,240
   19f72:	c391                	beqz	a5,19f76 <_vfiprintf_r+0x274>
   19f74:	0885                	addi	a7,a7,1
   19f76:	00287293          	andi	t0,a6,2
   19f7a:	ee0286e3          	beqz	t0,19e66 <_vfiprintf_r+0x164>
   19f7e:	0889                	addi	a7,a7,2
   19f80:	4289                	li	t0,2
   19f82:	b5d5                	j	19e66 <_vfiprintf_r+0x164>
   19f84:	85d6                	mv	a1,s5
   19f86:	855e                	mv	a0,s7
   19f88:	d2dfc0ef          	jal	16cb4 <__swsetup_r>
   19f8c:	1c0513e3          	bnez	a0,1a952 <_vfiprintf_r+0xc50>
   19f90:	00ca9783          	lh	a5,12(s5)
   19f94:	4729                	li	a4,10
   19f96:	8be9                	andi	a5,a5,26
   19f98:	dce79de3          	bne	a5,a4,19d72 <_vfiprintf_r+0x70>
   19f9c:	00ea9783          	lh	a5,14(s5)
   19fa0:	dc07c9e3          	bltz	a5,19d72 <_vfiprintf_r+0x70>
   19fa4:	12c12083          	lw	ra,300(sp)
   19fa8:	10012d03          	lw	s10,256(sp)
   19fac:	86da                	mv	a3,s6
   19fae:	864e                	mv	a2,s3
   19fb0:	11012b03          	lw	s6,272(sp)
   19fb4:	11c12983          	lw	s3,284(sp)
   19fb8:	85d6                	mv	a1,s5
   19fba:	855e                	mv	a0,s7
   19fbc:	11412a83          	lw	s5,276(sp)
   19fc0:	10c12b83          	lw	s7,268(sp)
   19fc4:	6155                	addi	sp,sp,304
   19fc6:	1b90006f          	j	1a97e <__sbprintf>
   19fca:	41348b33          	sub	s6,s1,s3
   19fce:	e13495e3          	bne	s1,s3,19dd8 <_vfiprintf_r+0xd6>
   19fd2:	0004c783          	lbu	a5,0(s1)
   19fd6:	b515                	j	19dfa <_vfiprintf_r+0xf8>
   19fd8:	0090                	addi	a2,sp,64
   19fda:	85d6                	mv	a1,s5
   19fdc:	855e                	mv	a0,s7
   19fde:	ceefc0ef          	jal	164cc <__sprint_r>
   19fe2:	e911                	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   19fe4:	8462                	mv	s0,s8
   19fe6:	b539                	j	19df4 <_vfiprintf_r+0xf2>
   19fe8:	0090                	addi	a2,sp,64
   19fea:	85d6                	mv	a1,s5
   19fec:	855e                	mv	a0,s7
   19fee:	cdefc0ef          	jal	164cc <__sprint_r>
   19ff2:	f00503e3          	beqz	a0,19ef8 <_vfiprintf_r+0x1f6>
   19ff6:	8d4a                	mv	s10,s2
   19ff8:	00cad783          	lhu	a5,12(s5)
   19ffc:	12812403          	lw	s0,296(sp)
   1a000:	12412483          	lw	s1,292(sp)
   1a004:	0407f793          	andi	a5,a5,64
   1a008:	12012903          	lw	s2,288(sp)
   1a00c:	11812a03          	lw	s4,280(sp)
   1a010:	10812c03          	lw	s8,264(sp)
   1a014:	10412c83          	lw	s9,260(sp)
   1a018:	5dfe                	lw	s11,252(sp)
   1a01a:	12079ce3          	bnez	a5,1a952 <_vfiprintf_r+0xc50>
   1a01e:	12c12083          	lw	ra,300(sp)
   1a022:	11c12983          	lw	s3,284(sp)
   1a026:	11412a83          	lw	s5,276(sp)
   1a02a:	11012b03          	lw	s6,272(sp)
   1a02e:	10c12b83          	lw	s7,268(sp)
   1a032:	856a                	mv	a0,s10
   1a034:	10012d03          	lw	s10,256(sp)
   1a038:	6155                	addi	sp,sp,304
   1a03a:	8082                	ret
   1a03c:	0090                	addi	a2,sp,64
   1a03e:	85d6                	mv	a1,s5
   1a040:	855e                	mv	a0,s7
   1a042:	d246                	sw	a7,36(sp)
   1a044:	d072                	sw	t3,32(sp)
   1a046:	c842                	sw	a6,16(sp)
   1a048:	c67e                	sw	t6,12(sp)
   1a04a:	c416                	sw	t0,8(sp)
   1a04c:	c80fc0ef          	jal	164cc <__sprint_r>
   1a050:	f15d                	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a052:	4726                	lw	a4,72(sp)
   1a054:	4796                	lw	a5,68(sp)
   1a056:	5892                	lw	a7,36(sp)
   1a058:	5e02                	lw	t3,32(sp)
   1a05a:	4842                	lw	a6,16(sp)
   1a05c:	4fb2                	lw	t6,12(sp)
   1a05e:	42a2                	lw	t0,8(sp)
   1a060:	8462                	mv	s0,s8
   1a062:	bd25                	j	19e9a <_vfiprintf_r+0x198>
   1a064:	6379                	lui	t1,0x1e
   1a066:	4641                	li	a2,16
   1a068:	4796                	lw	a5,68(sp)
   1a06a:	be030313          	addi	t1,t1,-1056 # 1dbe0 <blanks.1>
   1a06e:	04965563          	bge	a2,s1,1a0b8 <_vfiprintf_r+0x3b6>
   1a072:	86a2                	mv	a3,s0
   1a074:	4dc1                	li	s11,16
   1a076:	481d                	li	a6,7
   1a078:	c446                	sw	a7,8(sp)
   1a07a:	841a                	mv	s0,t1
   1a07c:	a021                	j	1a084 <_vfiprintf_r+0x382>
   1a07e:	14c1                	addi	s1,s1,-16
   1a080:	029dd963          	bge	s11,s1,1a0b2 <_vfiprintf_r+0x3b0>
   1a084:	0741                	addi	a4,a4,16
   1a086:	0785                	addi	a5,a5,1
   1a088:	c280                	sw	s0,0(a3)
   1a08a:	01b6a223          	sw	s11,4(a3)
   1a08e:	c4ba                	sw	a4,72(sp)
   1a090:	c2be                	sw	a5,68(sp)
   1a092:	06a1                	addi	a3,a3,8
   1a094:	fef855e3          	bge	a6,a5,1a07e <_vfiprintf_r+0x37c>
   1a098:	0090                	addi	a2,sp,64
   1a09a:	85d6                	mv	a1,s5
   1a09c:	855e                	mv	a0,s7
   1a09e:	c2efc0ef          	jal	164cc <__sprint_r>
   1a0a2:	f931                	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a0a4:	14c1                	addi	s1,s1,-16
   1a0a6:	4726                	lw	a4,72(sp)
   1a0a8:	4796                	lw	a5,68(sp)
   1a0aa:	86e2                	mv	a3,s8
   1a0ac:	481d                	li	a6,7
   1a0ae:	fc9dcbe3          	blt	s11,s1,1a084 <_vfiprintf_r+0x382>
   1a0b2:	48a2                	lw	a7,8(sp)
   1a0b4:	8322                	mv	t1,s0
   1a0b6:	8436                	mv	s0,a3
   1a0b8:	9726                	add	a4,a4,s1
   1a0ba:	0785                	addi	a5,a5,1
   1a0bc:	00642023          	sw	t1,0(s0)
   1a0c0:	c044                	sw	s1,4(s0)
   1a0c2:	c4ba                	sw	a4,72(sp)
   1a0c4:	c2be                	sw	a5,68(sp)
   1a0c6:	461d                	li	a2,7
   1a0c8:	e2f652e3          	bge	a2,a5,19eec <_vfiprintf_r+0x1ea>
   1a0cc:	0090                	addi	a2,sp,64
   1a0ce:	85d6                	mv	a1,s5
   1a0d0:	855e                	mv	a0,s7
   1a0d2:	c446                	sw	a7,8(sp)
   1a0d4:	bf8fc0ef          	jal	164cc <__sprint_r>
   1a0d8:	fd19                	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a0da:	4726                	lw	a4,72(sp)
   1a0dc:	48a2                	lw	a7,8(sp)
   1a0de:	b539                	j	19eec <_vfiprintf_r+0x1ea>
   1a0e0:	01087713          	andi	a4,a6,16
   1a0e4:	000d2783          	lw	a5,0(s10)
   1a0e8:	0d11                	addi	s10,s10,4
   1a0ea:	e371                	bnez	a4,1a1ae <_vfiprintf_r+0x4ac>
   1a0ec:	04087713          	andi	a4,a6,64
   1a0f0:	cb5d                	beqz	a4,1a1a6 <_vfiprintf_r+0x4a4>
   1a0f2:	07c2                	slli	a5,a5,0x10
   1a0f4:	87c1                	srai	a5,a5,0x10
   1a0f6:	41f7d893          	srai	a7,a5,0x1f
   1a0fa:	8746                	mv	a4,a7
   1a0fc:	e4075ce3          	bgez	a4,19f54 <_vfiprintf_r+0x252>
   1a100:	02d00613          	li	a2,45
   1a104:	00f03733          	snez	a4,a5
   1a108:	411008b3          	neg	a7,a7
   1a10c:	02c10da3          	sb	a2,59(sp)
   1a110:	40e888b3          	sub	a7,a7,a4
   1a114:	40f007b3          	neg	a5,a5
   1a118:	000dc463          	bltz	s11,1a120 <_vfiprintf_r+0x41e>
   1a11c:	f7f87813          	andi	a6,a6,-129
   1a120:	62089c63          	bnez	a7,1a758 <_vfiprintf_r+0xa56>
   1a124:	4725                	li	a4,9
   1a126:	62f76963          	bltu	a4,a5,1a758 <_vfiprintf_r+0xa56>
   1a12a:	03078793          	addi	a5,a5,48
   1a12e:	0ff7f793          	zext.b	a5,a5
   1a132:	0ef107a3          	sb	a5,239(sp)
   1a136:	88ee                	mv	a7,s11
   1a138:	01b04363          	bgtz	s11,1a13e <_vfiprintf_r+0x43c>
   1a13c:	4885                	li	a7,1
   1a13e:	4e05                	li	t3,1
   1a140:	0ef10493          	addi	s1,sp,239
   1a144:	03b14783          	lbu	a5,59(sp)
   1a148:	e20796e3          	bnez	a5,19f74 <_vfiprintf_r+0x272>
   1a14c:	b52d                	j	19f76 <_vfiprintf_r+0x274>
   1a14e:	000d2483          	lw	s1,0(s10)
   1a152:	02010da3          	sb	zero,59(sp)
   1a156:	0d11                	addi	s10,s10,4
   1a158:	70048463          	beqz	s1,1a860 <_vfiprintf_r+0xb5e>
   1a15c:	c442                	sw	a6,8(sp)
   1a15e:	5e0dc163          	bltz	s11,1a740 <_vfiprintf_r+0xa3e>
   1a162:	866e                	mv	a2,s11
   1a164:	4581                	li	a1,0
   1a166:	8526                	mv	a0,s1
   1a168:	c27fc0ef          	jal	16d8e <memchr>
   1a16c:	4822                	lw	a6,8(sp)
   1a16e:	8e6e                	mv	t3,s11
   1a170:	c119                	beqz	a0,1a176 <_vfiprintf_r+0x474>
   1a172:	40950e33          	sub	t3,a0,s1
   1a176:	03b14783          	lbu	a5,59(sp)
   1a17a:	fffe4893          	not	a7,t3
   1a17e:	41f8d893          	srai	a7,a7,0x1f
   1a182:	011e78b3          	and	a7,t3,a7
   1a186:	4d81                	li	s11,0
   1a188:	4281                	li	t0,0
   1a18a:	de0795e3          	bnez	a5,19f74 <_vfiprintf_r+0x272>
   1a18e:	b9e1                	j	19e66 <_vfiprintf_r+0x164>
   1a190:	000d2783          	lw	a5,0(s10)
   1a194:	02010da3          	sb	zero,59(sp)
   1a198:	0d11                	addi	s10,s10,4
   1a19a:	08f10623          	sb	a5,140(sp)
   1a19e:	4885                	li	a7,1
   1a1a0:	4e05                	li	t3,1
   1a1a2:	0164                	addi	s1,sp,140
   1a1a4:	b97d                	j	19e62 <_vfiprintf_r+0x160>
   1a1a6:	20087713          	andi	a4,a6,512
   1a1aa:	76071e63          	bnez	a4,1a926 <_vfiprintf_r+0xc24>
   1a1ae:	41f7d893          	srai	a7,a5,0x1f
   1a1b2:	8746                	mv	a4,a7
   1a1b4:	bb71                	j	19f50 <_vfiprintf_r+0x24e>
   1a1b6:	41600b33          	neg	s6,s6
   1a1ba:	0009c783          	lbu	a5,0(s3)
   1a1be:	00486813          	ori	a6,a6,4
   1a1c2:	b989                	j	19e14 <_vfiprintf_r+0x112>
   1a1c4:	02b00713          	li	a4,43
   1a1c8:	0009c783          	lbu	a5,0(s3)
   1a1cc:	02e10da3          	sb	a4,59(sp)
   1a1d0:	b191                	j	19e14 <_vfiprintf_r+0x112>
   1a1d2:	0009c783          	lbu	a5,0(s3)
   1a1d6:	08086813          	ori	a6,a6,128
   1a1da:	b92d                	j	19e14 <_vfiprintf_r+0x112>
   1a1dc:	0009c603          	lbu	a2,0(s3)
   1a1e0:	02a00793          	li	a5,42
   1a1e4:	00198693          	addi	a3,s3,1
   1a1e8:	76f60863          	beq	a2,a5,1a958 <_vfiprintf_r+0xc56>
   1a1ec:	fd060793          	addi	a5,a2,-48
   1a1f0:	4725                	li	a4,9
   1a1f2:	4d81                	li	s11,0
   1a1f4:	45a5                	li	a1,9
   1a1f6:	02f76063          	bltu	a4,a5,1a216 <_vfiprintf_r+0x514>
   1a1fa:	0006c603          	lbu	a2,0(a3)
   1a1fe:	002d9713          	slli	a4,s11,0x2
   1a202:	9dba                	add	s11,s11,a4
   1a204:	0d86                	slli	s11,s11,0x1
   1a206:	9dbe                	add	s11,s11,a5
   1a208:	fd060793          	addi	a5,a2,-48
   1a20c:	0685                	addi	a3,a3,1
   1a20e:	fef5f6e3          	bgeu	a1,a5,1a1fa <_vfiprintf_r+0x4f8>
   1a212:	4a0dcb63          	bltz	s11,1a6c8 <_vfiprintf_r+0x9c6>
   1a216:	89b6                	mv	s3,a3
   1a218:	b101                	j	19e18 <_vfiprintf_r+0x116>
   1a21a:	855e                	mv	a0,s7
   1a21c:	c442                	sw	a6,8(sp)
   1a21e:	c7ffc0ef          	jal	16e9c <_localeconv_r>
   1a222:	415c                	lw	a5,4(a0)
   1a224:	853e                	mv	a0,a5
   1a226:	ce3e                	sw	a5,28(sp)
   1a228:	efdfc0ef          	jal	17124 <strlen>
   1a22c:	87aa                	mv	a5,a0
   1a22e:	855e                	mv	a0,s7
   1a230:	cc3e                	sw	a5,24(sp)
   1a232:	c6bfc0ef          	jal	16e9c <_localeconv_r>
   1a236:	4518                	lw	a4,8(a0)
   1a238:	47e2                	lw	a5,24(sp)
   1a23a:	4822                	lw	a6,8(sp)
   1a23c:	ca3a                	sw	a4,20(sp)
   1a23e:	ce0782e3          	beqz	a5,19f22 <_vfiprintf_r+0x220>
   1a242:	4752                	lw	a4,20(sp)
   1a244:	0009c783          	lbu	a5,0(s3)
   1a248:	bc0706e3          	beqz	a4,19e14 <_vfiprintf_r+0x112>
   1a24c:	00074703          	lbu	a4,0(a4)
   1a250:	bc0702e3          	beqz	a4,19e14 <_vfiprintf_r+0x112>
   1a254:	40086813          	ori	a6,a6,1024
   1a258:	be75                	j	19e14 <_vfiprintf_r+0x112>
   1a25a:	0009c783          	lbu	a5,0(s3)
   1a25e:	00186813          	ori	a6,a6,1
   1a262:	be4d                	j	19e14 <_vfiprintf_r+0x112>
   1a264:	03b14703          	lbu	a4,59(sp)
   1a268:	0009c783          	lbu	a5,0(s3)
   1a26c:	ba0714e3          	bnez	a4,19e14 <_vfiprintf_r+0x112>
   1a270:	02000713          	li	a4,32
   1a274:	02e10da3          	sb	a4,59(sp)
   1a278:	be71                	j	19e14 <_vfiprintf_r+0x112>
   1a27a:	01086713          	ori	a4,a6,16
   1a27e:	02077793          	andi	a5,a4,32
   1a282:	40078063          	beqz	a5,1a682 <_vfiprintf_r+0x980>
   1a286:	0d1d                	addi	s10,s10,7
   1a288:	ff8d7d13          	andi	s10,s10,-8
   1a28c:	000d2783          	lw	a5,0(s10)
   1a290:	004d2583          	lw	a1,4(s10)
   1a294:	0d21                	addi	s10,s10,8
   1a296:	02010da3          	sb	zero,59(sp)
   1a29a:	bff77813          	andi	a6,a4,-1025
   1a29e:	0a0dc163          	bltz	s11,1a340 <_vfiprintf_r+0x63e>
   1a2a2:	00b7e633          	or	a2,a5,a1
   1a2a6:	b7f77713          	andi	a4,a4,-1153
   1a2aa:	56061d63          	bnez	a2,1a824 <_vfiprintf_r+0xb22>
   1a2ae:	8e42                	mv	t3,a6
   1a2b0:	4781                	li	a5,0
   1a2b2:	883a                	mv	a6,a4
   1a2b4:	060d9e63          	bnez	s11,1a330 <_vfiprintf_r+0x62e>
   1a2b8:	ca0798e3          	bnez	a5,19f68 <_vfiprintf_r+0x266>
   1a2bc:	001e7e13          	andi	t3,t3,1
   1a2c0:	3e0e0463          	beqz	t3,1a6a8 <_vfiprintf_r+0x9a6>
   1a2c4:	03000793          	li	a5,48
   1a2c8:	0ef107a3          	sb	a5,239(sp)
   1a2cc:	88f2                	mv	a7,t3
   1a2ce:	0ef10493          	addi	s1,sp,239
   1a2d2:	bd8d                	j	1a144 <_vfiprintf_r+0x442>
   1a2d4:	0009c783          	lbu	a5,0(s3)
   1a2d8:	06c00713          	li	a4,108
   1a2dc:	56e78463          	beq	a5,a4,1a844 <_vfiprintf_r+0xb42>
   1a2e0:	01086813          	ori	a6,a6,16
   1a2e4:	be05                	j	19e14 <_vfiprintf_r+0x112>
   1a2e6:	0009c783          	lbu	a5,0(s3)
   1a2ea:	06800713          	li	a4,104
   1a2ee:	54e78463          	beq	a5,a4,1a836 <_vfiprintf_r+0xb34>
   1a2f2:	04086813          	ori	a6,a6,64
   1a2f6:	be39                	j	19e14 <_vfiprintf_r+0x112>
   1a2f8:	01086e13          	ori	t3,a6,16
   1a2fc:	020e7793          	andi	a5,t3,32
   1a300:	36078363          	beqz	a5,1a666 <_vfiprintf_r+0x964>
   1a304:	0d1d                	addi	s10,s10,7
   1a306:	ff8d7d13          	andi	s10,s10,-8
   1a30a:	000d2783          	lw	a5,0(s10)
   1a30e:	004d2883          	lw	a7,4(s10)
   1a312:	0d21                	addi	s10,s10,8
   1a314:	02010da3          	sb	zero,59(sp)
   1a318:	8872                	mv	a6,t3
   1a31a:	e00dc3e3          	bltz	s11,1a120 <_vfiprintf_r+0x41e>
   1a31e:	0117e733          	or	a4,a5,a7
   1a322:	f7fe7813          	andi	a6,t3,-129
   1a326:	de071de3          	bnez	a4,1a120 <_vfiprintf_r+0x41e>
   1a32a:	4785                	li	a5,1
   1a32c:	f80d86e3          	beqz	s11,1a2b8 <_vfiprintf_r+0x5b6>
   1a330:	4705                	li	a4,1
   1a332:	60e78c63          	beq	a5,a4,1a94a <_vfiprintf_r+0xc48>
   1a336:	4709                	li	a4,2
   1a338:	54e78663          	beq	a5,a4,1a884 <_vfiprintf_r+0xb82>
   1a33c:	4781                	li	a5,0
   1a33e:	4581                	li	a1,0
   1a340:	1984                	addi	s1,sp,240
   1a342:	01d59693          	slli	a3,a1,0x1d
   1a346:	0077f713          	andi	a4,a5,7
   1a34a:	838d                	srli	a5,a5,0x3
   1a34c:	03070713          	addi	a4,a4,48
   1a350:	8fd5                	or	a5,a5,a3
   1a352:	818d                	srli	a1,a1,0x3
   1a354:	fee48fa3          	sb	a4,-1(s1)
   1a358:	00b7e6b3          	or	a3,a5,a1
   1a35c:	8526                	mv	a0,s1
   1a35e:	14fd                	addi	s1,s1,-1
   1a360:	f2ed                	bnez	a3,1a342 <_vfiprintf_r+0x640>
   1a362:	00187793          	andi	a5,a6,1
   1a366:	20078b63          	beqz	a5,1a57c <_vfiprintf_r+0x87a>
   1a36a:	03000793          	li	a5,48
   1a36e:	20f70763          	beq	a4,a5,1a57c <_vfiprintf_r+0x87a>
   1a372:	1579                	addi	a0,a0,-2
   1a374:	fef48fa3          	sb	a5,-1(s1)
   1a378:	199c                	addi	a5,sp,240
   1a37a:	40a78e33          	sub	t3,a5,a0
   1a37e:	88ee                	mv	a7,s11
   1a380:	35cdc163          	blt	s11,t3,1a6c2 <_vfiprintf_r+0x9c0>
   1a384:	84aa                	mv	s1,a0
   1a386:	bb7d                	j	1a144 <_vfiprintf_r+0x442>
   1a388:	6721                	lui	a4,0x8
   1a38a:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   1a38e:	02e11e23          	sh	a4,60(sp)
   1a392:	6775                	lui	a4,0x1d
   1a394:	4ac70713          	addi	a4,a4,1196 # 1d4ac <__clzsi2+0x8e>
   1a398:	000d2783          	lw	a5,0(s10)
   1a39c:	4581                	li	a1,0
   1a39e:	00286813          	ori	a6,a6,2
   1a3a2:	0d11                	addi	s10,s10,4
   1a3a4:	c23a                	sw	a4,4(sp)
   1a3a6:	02010da3          	sb	zero,59(sp)
   1a3aa:	1a0dc763          	bltz	s11,1a558 <_vfiprintf_r+0x856>
   1a3ae:	00b7e733          	or	a4,a5,a1
   1a3b2:	f7f87613          	andi	a2,a6,-129
   1a3b6:	18071d63          	bnez	a4,1a550 <_vfiprintf_r+0x84e>
   1a3ba:	8e42                	mv	t3,a6
   1a3bc:	4789                	li	a5,2
   1a3be:	8832                	mv	a6,a2
   1a3c0:	bdd5                	j	1a2b4 <_vfiprintf_r+0x5b2>
   1a3c2:	02087793          	andi	a5,a6,32
   1a3c6:	2e079463          	bnez	a5,1a6ae <_vfiprintf_r+0x9ac>
   1a3ca:	01087793          	andi	a5,a6,16
   1a3ce:	48079263          	bnez	a5,1a852 <_vfiprintf_r+0xb50>
   1a3d2:	04087793          	andi	a5,a6,64
   1a3d6:	54079f63          	bnez	a5,1a934 <_vfiprintf_r+0xc32>
   1a3da:	20087813          	andi	a6,a6,512
   1a3de:	46080a63          	beqz	a6,1a852 <_vfiprintf_r+0xb50>
   1a3e2:	000d2783          	lw	a5,0(s10)
   1a3e6:	0d11                	addi	s10,s10,4
   1a3e8:	01278023          	sb	s2,0(a5)
   1a3ec:	b2e9                	j	19db6 <_vfiprintf_r+0xb4>
   1a3ee:	411b0333          	sub	t1,s6,a7
   1a3f2:	ac6056e3          	blez	t1,19ebe <_vfiprintf_r+0x1bc>
   1a3f6:	6f79                	lui	t5,0x1e
   1a3f8:	4641                	li	a2,16
   1a3fa:	bd0f0f13          	addi	t5,t5,-1072 # 1dbd0 <zeroes.0>
   1a3fe:	04665f63          	bge	a2,t1,1a45c <_vfiprintf_r+0x75a>
   1a402:	c426                	sw	s1,8(sp)
   1a404:	86a2                	mv	a3,s0
   1a406:	4ec1                	li	t4,16
   1a408:	4f9d                	li	t6,7
   1a40a:	c642                	sw	a6,12(sp)
   1a40c:	c872                	sw	t3,16(sp)
   1a40e:	841a                	mv	s0,t1
   1a410:	d046                	sw	a7,32(sp)
   1a412:	84fa                	mv	s1,t5
   1a414:	a021                	j	1a41c <_vfiprintf_r+0x71a>
   1a416:	1441                	addi	s0,s0,-16
   1a418:	028edb63          	bge	t4,s0,1a44e <_vfiprintf_r+0x74c>
   1a41c:	0741                	addi	a4,a4,16
   1a41e:	0785                	addi	a5,a5,1
   1a420:	c284                	sw	s1,0(a3)
   1a422:	01d6a223          	sw	t4,4(a3)
   1a426:	c4ba                	sw	a4,72(sp)
   1a428:	c2be                	sw	a5,68(sp)
   1a42a:	06a1                	addi	a3,a3,8
   1a42c:	feffd5e3          	bge	t6,a5,1a416 <_vfiprintf_r+0x714>
   1a430:	0090                	addi	a2,sp,64
   1a432:	85d6                	mv	a1,s5
   1a434:	855e                	mv	a0,s7
   1a436:	896fc0ef          	jal	164cc <__sprint_r>
   1a43a:	ba051ee3          	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a43e:	4ec1                	li	t4,16
   1a440:	1441                	addi	s0,s0,-16
   1a442:	4726                	lw	a4,72(sp)
   1a444:	4796                	lw	a5,68(sp)
   1a446:	86e2                	mv	a3,s8
   1a448:	4f9d                	li	t6,7
   1a44a:	fc8ec9e3          	blt	t4,s0,1a41c <_vfiprintf_r+0x71a>
   1a44e:	8f26                	mv	t5,s1
   1a450:	4832                	lw	a6,12(sp)
   1a452:	4e42                	lw	t3,16(sp)
   1a454:	5882                	lw	a7,32(sp)
   1a456:	44a2                	lw	s1,8(sp)
   1a458:	8322                	mv	t1,s0
   1a45a:	8436                	mv	s0,a3
   1a45c:	971a                	add	a4,a4,t1
   1a45e:	0785                	addi	a5,a5,1
   1a460:	01e42023          	sw	t5,0(s0)
   1a464:	00642223          	sw	t1,4(s0)
   1a468:	c4ba                	sw	a4,72(sp)
   1a46a:	c2be                	sw	a5,68(sp)
   1a46c:	461d                	li	a2,7
   1a46e:	0421                	addi	s0,s0,8
   1a470:	a4f657e3          	bge	a2,a5,19ebe <_vfiprintf_r+0x1bc>
   1a474:	0090                	addi	a2,sp,64
   1a476:	85d6                	mv	a1,s5
   1a478:	855e                	mv	a0,s7
   1a47a:	c846                	sw	a7,16(sp)
   1a47c:	c672                	sw	t3,12(sp)
   1a47e:	c442                	sw	a6,8(sp)
   1a480:	84cfc0ef          	jal	164cc <__sprint_r>
   1a484:	b60519e3          	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a488:	4e32                	lw	t3,12(sp)
   1a48a:	4726                	lw	a4,72(sp)
   1a48c:	4796                	lw	a5,68(sp)
   1a48e:	41cd8db3          	sub	s11,s11,t3
   1a492:	48c2                	lw	a7,16(sp)
   1a494:	4822                	lw	a6,8(sp)
   1a496:	8462                	mv	s0,s8
   1a498:	a3b057e3          	blez	s11,19ec6 <_vfiprintf_r+0x1c4>
   1a49c:	6f79                	lui	t5,0x1e
   1a49e:	bd0f0f13          	addi	t5,t5,-1072 # 1dbd0 <zeroes.0>
   1a4a2:	05ba5c63          	bge	s4,s11,1a4fa <_vfiprintf_r+0x7f8>
   1a4a6:	86a2                	mv	a3,s0
   1a4a8:	431d                	li	t1,7
   1a4aa:	846e                	mv	s0,s11
   1a4ac:	c442                	sw	a6,8(sp)
   1a4ae:	c672                	sw	t3,12(sp)
   1a4b0:	c846                	sw	a7,16(sp)
   1a4b2:	8de6                	mv	s11,s9
   1a4b4:	a021                	j	1a4bc <_vfiprintf_r+0x7ba>
   1a4b6:	1441                	addi	s0,s0,-16
   1a4b8:	028a5b63          	bge	s4,s0,1a4ee <_vfiprintf_r+0x7ec>
   1a4bc:	0741                	addi	a4,a4,16
   1a4be:	0785                	addi	a5,a5,1
   1a4c0:	0196a023          	sw	s9,0(a3)
   1a4c4:	0146a223          	sw	s4,4(a3)
   1a4c8:	c4ba                	sw	a4,72(sp)
   1a4ca:	c2be                	sw	a5,68(sp)
   1a4cc:	06a1                	addi	a3,a3,8
   1a4ce:	fef354e3          	bge	t1,a5,1a4b6 <_vfiprintf_r+0x7b4>
   1a4d2:	0090                	addi	a2,sp,64
   1a4d4:	85d6                	mv	a1,s5
   1a4d6:	855e                	mv	a0,s7
   1a4d8:	ff5fb0ef          	jal	164cc <__sprint_r>
   1a4dc:	b0051de3          	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a4e0:	1441                	addi	s0,s0,-16
   1a4e2:	4726                	lw	a4,72(sp)
   1a4e4:	4796                	lw	a5,68(sp)
   1a4e6:	86e2                	mv	a3,s8
   1a4e8:	431d                	li	t1,7
   1a4ea:	fc8a49e3          	blt	s4,s0,1a4bc <_vfiprintf_r+0x7ba>
   1a4ee:	4822                	lw	a6,8(sp)
   1a4f0:	4e32                	lw	t3,12(sp)
   1a4f2:	48c2                	lw	a7,16(sp)
   1a4f4:	8f6e                	mv	t5,s11
   1a4f6:	8da2                	mv	s11,s0
   1a4f8:	8436                	mv	s0,a3
   1a4fa:	976e                	add	a4,a4,s11
   1a4fc:	0785                	addi	a5,a5,1
   1a4fe:	01e42023          	sw	t5,0(s0)
   1a502:	01b42223          	sw	s11,4(s0)
   1a506:	c4ba                	sw	a4,72(sp)
   1a508:	c2be                	sw	a5,68(sp)
   1a50a:	461d                	li	a2,7
   1a50c:	0421                	addi	s0,s0,8
   1a50e:	9af65ce3          	bge	a2,a5,19ec6 <_vfiprintf_r+0x1c4>
   1a512:	0090                	addi	a2,sp,64
   1a514:	85d6                	mv	a1,s5
   1a516:	855e                	mv	a0,s7
   1a518:	c846                	sw	a7,16(sp)
   1a51a:	c672                	sw	t3,12(sp)
   1a51c:	c442                	sw	a6,8(sp)
   1a51e:	faffb0ef          	jal	164cc <__sprint_r>
   1a522:	ac051ae3          	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a526:	4726                	lw	a4,72(sp)
   1a528:	4796                	lw	a5,68(sp)
   1a52a:	48c2                	lw	a7,16(sp)
   1a52c:	4e32                	lw	t3,12(sp)
   1a52e:	4822                	lw	a6,8(sp)
   1a530:	8462                	mv	s0,s8
   1a532:	ba51                	j	19ec6 <_vfiprintf_r+0x1c4>
   1a534:	0090                	addi	a2,sp,64
   1a536:	85d6                	mv	a1,s5
   1a538:	855e                	mv	a0,s7
   1a53a:	c646                	sw	a7,12(sp)
   1a53c:	c442                	sw	a6,8(sp)
   1a53e:	f8ffb0ef          	jal	164cc <__sprint_r>
   1a542:	aa051ae3          	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a546:	4726                	lw	a4,72(sp)
   1a548:	48b2                	lw	a7,12(sp)
   1a54a:	4822                	lw	a6,8(sp)
   1a54c:	8462                	mv	s0,s8
   1a54e:	b279                	j	19edc <_vfiprintf_r+0x1da>
   1a550:	4709                	li	a4,2
   1a552:	8832                	mv	a6,a2
   1a554:	de0706e3          	beqz	a4,1a340 <_vfiprintf_r+0x63e>
   1a558:	4612                	lw	a2,4(sp)
   1a55a:	1984                	addi	s1,sp,240
   1a55c:	00f7f713          	andi	a4,a5,15
   1a560:	9732                	add	a4,a4,a2
   1a562:	00074683          	lbu	a3,0(a4)
   1a566:	8391                	srli	a5,a5,0x4
   1a568:	01c59713          	slli	a4,a1,0x1c
   1a56c:	8fd9                	or	a5,a5,a4
   1a56e:	8191                	srli	a1,a1,0x4
   1a570:	fed48fa3          	sb	a3,-1(s1)
   1a574:	00b7e733          	or	a4,a5,a1
   1a578:	14fd                	addi	s1,s1,-1
   1a57a:	f36d                	bnez	a4,1a55c <_vfiprintf_r+0x85a>
   1a57c:	199c                	addi	a5,sp,240
   1a57e:	40978e33          	sub	t3,a5,s1
   1a582:	88ee                	mv	a7,s11
   1a584:	bdcdd0e3          	bge	s11,t3,1a144 <_vfiprintf_r+0x442>
   1a588:	88f2                	mv	a7,t3
   1a58a:	be6d                	j	1a144 <_vfiprintf_r+0x442>
   1a58c:	6379                	lui	t1,0x1e
   1a58e:	4641                	li	a2,16
   1a590:	be030313          	addi	t1,t1,-1056 # 1dbe0 <blanks.1>
   1a594:	07d65363          	bge	a2,t4,1a5fa <_vfiprintf_r+0x8f8>
   1a598:	c826                	sw	s1,16(sp)
   1a59a:	86a2                	mv	a3,s0
   1a59c:	4f41                	li	t5,16
   1a59e:	439d                	li	t2,7
   1a5a0:	c416                	sw	t0,8(sp)
   1a5a2:	c67e                	sw	t6,12(sp)
   1a5a4:	d042                	sw	a6,32(sp)
   1a5a6:	d272                	sw	t3,36(sp)
   1a5a8:	8476                	mv	s0,t4
   1a5aa:	d446                	sw	a7,40(sp)
   1a5ac:	849a                	mv	s1,t1
   1a5ae:	a021                	j	1a5b6 <_vfiprintf_r+0x8b4>
   1a5b0:	1441                	addi	s0,s0,-16
   1a5b2:	028f5b63          	bge	t5,s0,1a5e8 <_vfiprintf_r+0x8e6>
   1a5b6:	0741                	addi	a4,a4,16
   1a5b8:	0785                	addi	a5,a5,1
   1a5ba:	c284                	sw	s1,0(a3)
   1a5bc:	01e6a223          	sw	t5,4(a3)
   1a5c0:	c4ba                	sw	a4,72(sp)
   1a5c2:	c2be                	sw	a5,68(sp)
   1a5c4:	06a1                	addi	a3,a3,8
   1a5c6:	fef3d5e3          	bge	t2,a5,1a5b0 <_vfiprintf_r+0x8ae>
   1a5ca:	0090                	addi	a2,sp,64
   1a5cc:	85d6                	mv	a1,s5
   1a5ce:	855e                	mv	a0,s7
   1a5d0:	efdfb0ef          	jal	164cc <__sprint_r>
   1a5d4:	a20511e3          	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a5d8:	4f41                	li	t5,16
   1a5da:	1441                	addi	s0,s0,-16
   1a5dc:	4726                	lw	a4,72(sp)
   1a5de:	4796                	lw	a5,68(sp)
   1a5e0:	86e2                	mv	a3,s8
   1a5e2:	439d                	li	t2,7
   1a5e4:	fc8f49e3          	blt	t5,s0,1a5b6 <_vfiprintf_r+0x8b4>
   1a5e8:	8326                	mv	t1,s1
   1a5ea:	42a2                	lw	t0,8(sp)
   1a5ec:	4fb2                	lw	t6,12(sp)
   1a5ee:	5802                	lw	a6,32(sp)
   1a5f0:	5e12                	lw	t3,36(sp)
   1a5f2:	58a2                	lw	a7,40(sp)
   1a5f4:	44c2                	lw	s1,16(sp)
   1a5f6:	8ea2                	mv	t4,s0
   1a5f8:	8436                	mv	s0,a3
   1a5fa:	9776                	add	a4,a4,t4
   1a5fc:	0785                	addi	a5,a5,1
   1a5fe:	00642023          	sw	t1,0(s0)
   1a602:	01d42223          	sw	t4,4(s0)
   1a606:	c4ba                	sw	a4,72(sp)
   1a608:	c2be                	sw	a5,68(sp)
   1a60a:	461d                	li	a2,7
   1a60c:	0421                	addi	s0,s0,8
   1a60e:	86f656e3          	bge	a2,a5,19e7a <_vfiprintf_r+0x178>
   1a612:	0090                	addi	a2,sp,64
   1a614:	85d6                	mv	a1,s5
   1a616:	855e                	mv	a0,s7
   1a618:	d246                	sw	a7,36(sp)
   1a61a:	d072                	sw	t3,32(sp)
   1a61c:	c842                	sw	a6,16(sp)
   1a61e:	c67e                	sw	t6,12(sp)
   1a620:	c416                	sw	t0,8(sp)
   1a622:	eabfb0ef          	jal	164cc <__sprint_r>
   1a626:	9c0518e3          	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a62a:	4726                	lw	a4,72(sp)
   1a62c:	4796                	lw	a5,68(sp)
   1a62e:	5892                	lw	a7,36(sp)
   1a630:	5e02                	lw	t3,32(sp)
   1a632:	4842                	lw	a6,16(sp)
   1a634:	4fb2                	lw	t6,12(sp)
   1a636:	42a2                	lw	t0,8(sp)
   1a638:	8462                	mv	s0,s8
   1a63a:	841ff06f          	j	19e7a <_vfiprintf_r+0x178>
   1a63e:	0090                	addi	a2,sp,64
   1a640:	85d6                	mv	a1,s5
   1a642:	855e                	mv	a0,s7
   1a644:	d046                	sw	a7,32(sp)
   1a646:	c872                	sw	t3,16(sp)
   1a648:	c642                	sw	a6,12(sp)
   1a64a:	c47e                	sw	t6,8(sp)
   1a64c:	e81fb0ef          	jal	164cc <__sprint_r>
   1a650:	9a0513e3          	bnez	a0,19ff6 <_vfiprintf_r+0x2f4>
   1a654:	4726                	lw	a4,72(sp)
   1a656:	4796                	lw	a5,68(sp)
   1a658:	5882                	lw	a7,32(sp)
   1a65a:	4e42                	lw	t3,16(sp)
   1a65c:	4832                	lw	a6,12(sp)
   1a65e:	4fa2                	lw	t6,8(sp)
   1a660:	8462                	mv	s0,s8
   1a662:	855ff06f          	j	19eb6 <_vfiprintf_r+0x1b4>
   1a666:	010e7713          	andi	a4,t3,16
   1a66a:	000d2783          	lw	a5,0(s10)
   1a66e:	0d11                	addi	s10,s10,4
   1a670:	e719                	bnez	a4,1a67e <_vfiprintf_r+0x97c>
   1a672:	040e7713          	andi	a4,t3,64
   1a676:	1e070f63          	beqz	a4,1a874 <_vfiprintf_r+0xb72>
   1a67a:	07c2                	slli	a5,a5,0x10
   1a67c:	83c1                	srli	a5,a5,0x10
   1a67e:	4881                	li	a7,0
   1a680:	b951                	j	1a314 <_vfiprintf_r+0x612>
   1a682:	01077613          	andi	a2,a4,16
   1a686:	000d2783          	lw	a5,0(s10)
   1a68a:	0d11                	addi	s10,s10,4
   1a68c:	ee01                	bnez	a2,1a6a4 <_vfiprintf_r+0x9a2>
   1a68e:	04077613          	andi	a2,a4,64
   1a692:	c609                	beqz	a2,1a69c <_vfiprintf_r+0x99a>
   1a694:	07c2                	slli	a5,a5,0x10
   1a696:	83c1                	srli	a5,a5,0x10
   1a698:	4581                	li	a1,0
   1a69a:	bef5                	j	1a296 <_vfiprintf_r+0x594>
   1a69c:	20077613          	andi	a2,a4,512
   1a6a0:	2a061163          	bnez	a2,1a942 <_vfiprintf_r+0xc40>
   1a6a4:	4581                	li	a1,0
   1a6a6:	bec5                	j	1a296 <_vfiprintf_r+0x594>
   1a6a8:	4881                	li	a7,0
   1a6aa:	1984                	addi	s1,sp,240
   1a6ac:	bc61                	j	1a144 <_vfiprintf_r+0x442>
   1a6ae:	000d2783          	lw	a5,0(s10)
   1a6b2:	41f95713          	srai	a4,s2,0x1f
   1a6b6:	0d11                	addi	s10,s10,4
   1a6b8:	0127a023          	sw	s2,0(a5)
   1a6bc:	c3d8                	sw	a4,4(a5)
   1a6be:	ef8ff06f          	j	19db6 <_vfiprintf_r+0xb4>
   1a6c2:	88f2                	mv	a7,t3
   1a6c4:	84aa                	mv	s1,a0
   1a6c6:	bcbd                	j	1a144 <_vfiprintf_r+0x442>
   1a6c8:	5dfd                	li	s11,-1
   1a6ca:	89b6                	mv	s3,a3
   1a6cc:	f4cff06f          	j	19e18 <_vfiprintf_r+0x116>
   1a6d0:	8e42                	mv	t3,a6
   1a6d2:	b12d                	j	1a2fc <_vfiprintf_r+0x5fa>
   1a6d4:	8742                	mv	a4,a6
   1a6d6:	b665                	j	1a27e <_vfiprintf_r+0x57c>
   1a6d8:	67f5                	lui	a5,0x1d
   1a6da:	4c078793          	addi	a5,a5,1216 # 1d4c0 <__clzsi2+0xa2>
   1a6de:	c23e                	sw	a5,4(sp)
   1a6e0:	02087793          	andi	a5,a6,32
   1a6e4:	c3a9                	beqz	a5,1a726 <_vfiprintf_r+0xa24>
   1a6e6:	0d1d                	addi	s10,s10,7
   1a6e8:	ff8d7d13          	andi	s10,s10,-8
   1a6ec:	000d2783          	lw	a5,0(s10)
   1a6f0:	004d2583          	lw	a1,4(s10)
   1a6f4:	0d21                	addi	s10,s10,8
   1a6f6:	00187713          	andi	a4,a6,1
   1a6fa:	cf01                	beqz	a4,1a712 <_vfiprintf_r+0xa10>
   1a6fc:	00b7e733          	or	a4,a5,a1
   1a700:	cb09                	beqz	a4,1a712 <_vfiprintf_r+0xa10>
   1a702:	03000713          	li	a4,48
   1a706:	02e10e23          	sb	a4,60(sp)
   1a70a:	02c10ea3          	sb	a2,61(sp)
   1a70e:	00286813          	ori	a6,a6,2
   1a712:	bff87813          	andi	a6,a6,-1025
   1a716:	b941                	j	1a3a6 <_vfiprintf_r+0x6a4>
   1a718:	67f5                	lui	a5,0x1d
   1a71a:	4ac78793          	addi	a5,a5,1196 # 1d4ac <__clzsi2+0x8e>
   1a71e:	c23e                	sw	a5,4(sp)
   1a720:	02087793          	andi	a5,a6,32
   1a724:	f3e9                	bnez	a5,1a6e6 <_vfiprintf_r+0x9e4>
   1a726:	01087713          	andi	a4,a6,16
   1a72a:	000d2783          	lw	a5,0(s10)
   1a72e:	0d11                	addi	s10,s10,4
   1a730:	e315                	bnez	a4,1a754 <_vfiprintf_r+0xa52>
   1a732:	04087713          	andi	a4,a6,64
   1a736:	cb19                	beqz	a4,1a74c <_vfiprintf_r+0xa4a>
   1a738:	07c2                	slli	a5,a5,0x10
   1a73a:	83c1                	srli	a5,a5,0x10
   1a73c:	4581                	li	a1,0
   1a73e:	bf65                	j	1a6f6 <_vfiprintf_r+0x9f4>
   1a740:	8526                	mv	a0,s1
   1a742:	9e3fc0ef          	jal	17124 <strlen>
   1a746:	4822                	lw	a6,8(sp)
   1a748:	8e2a                	mv	t3,a0
   1a74a:	b435                	j	1a176 <_vfiprintf_r+0x474>
   1a74c:	20087713          	andi	a4,a6,512
   1a750:	1c071763          	bnez	a4,1a91e <_vfiprintf_r+0xc1c>
   1a754:	4581                	li	a1,0
   1a756:	b745                	j	1a6f6 <_vfiprintf_r+0x9f4>
   1a758:	ccccdf37          	lui	t5,0xccccd
   1a75c:	ccccdfb7          	lui	t6,0xccccd
   1a760:	42d2                	lw	t0,20(sp)
   1a762:	40087e13          	andi	t3,a6,1024
   1a766:	4581                	li	a1,0
   1a768:	1988                	addi	a0,sp,240
   1a76a:	4315                	li	t1,5
   1a76c:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccae249>
   1a770:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccae248>
   1a774:	0ff00e93          	li	t4,255
   1a778:	a081                	j	1a7b8 <_vfiprintf_r+0xab6>
   1a77a:	00f4b733          	sltu	a4,s1,a5
   1a77e:	9726                	add	a4,a4,s1
   1a780:	02677733          	remu	a4,a4,t1
   1a784:	40e78733          	sub	a4,a5,a4
   1a788:	00e7b633          	sltu	a2,a5,a4
   1a78c:	40c88633          	sub	a2,a7,a2
   1a790:	03f703b3          	mul	t2,a4,t6
   1a794:	03e60633          	mul	a2,a2,t5
   1a798:	03e73533          	mulhu	a0,a4,t5
   1a79c:	961e                	add	a2,a2,t2
   1a79e:	03e70733          	mul	a4,a4,t5
   1a7a2:	962a                	add	a2,a2,a0
   1a7a4:	01f61513          	slli	a0,a2,0x1f
   1a7a8:	8205                	srli	a2,a2,0x1
   1a7aa:	8305                	srli	a4,a4,0x1
   1a7ac:	8f49                	or	a4,a4,a0
   1a7ae:	16088263          	beqz	a7,1a912 <_vfiprintf_r+0xc10>
   1a7b2:	87ba                	mv	a5,a4
   1a7b4:	88b2                	mv	a7,a2
   1a7b6:	8536                	mv	a0,a3
   1a7b8:	011784b3          	add	s1,a5,a7
   1a7bc:	00f4b733          	sltu	a4,s1,a5
   1a7c0:	9726                	add	a4,a4,s1
   1a7c2:	02677733          	remu	a4,a4,t1
   1a7c6:	fff50693          	addi	a3,a0,-1
   1a7ca:	0585                	addi	a1,a1,1
   1a7cc:	40e78733          	sub	a4,a5,a4
   1a7d0:	00e7b3b3          	sltu	t2,a5,a4
   1a7d4:	407883b3          	sub	t2,a7,t2
   1a7d8:	03e73633          	mulhu	a2,a4,t5
   1a7dc:	03e383b3          	mul	t2,t2,t5
   1a7e0:	03e70733          	mul	a4,a4,t5
   1a7e4:	93b2                	add	t2,t2,a2
   1a7e6:	03fe                	slli	t2,t2,0x1f
   1a7e8:	00175613          	srli	a2,a4,0x1
   1a7ec:	00c3e633          	or	a2,t2,a2
   1a7f0:	00261713          	slli	a4,a2,0x2
   1a7f4:	9732                	add	a4,a4,a2
   1a7f6:	0706                	slli	a4,a4,0x1
   1a7f8:	40e78733          	sub	a4,a5,a4
   1a7fc:	03070713          	addi	a4,a4,48
   1a800:	fee50fa3          	sb	a4,-1(a0)
   1a804:	f60e0be3          	beqz	t3,1a77a <_vfiprintf_r+0xa78>
   1a808:	0002c703          	lbu	a4,0(t0)
   1a80c:	f6b717e3          	bne	a4,a1,1a77a <_vfiprintf_r+0xa78>
   1a810:	f7d585e3          	beq	a1,t4,1a77a <_vfiprintf_r+0xa78>
   1a814:	06089b63          	bnez	a7,1a88a <_vfiprintf_r+0xb88>
   1a818:	4725                	li	a4,9
   1a81a:	06f76863          	bltu	a4,a5,1a88a <_vfiprintf_r+0xb88>
   1a81e:	84b6                	mv	s1,a3
   1a820:	ca16                	sw	t0,20(sp)
   1a822:	bba9                	j	1a57c <_vfiprintf_r+0x87a>
   1a824:	883a                	mv	a6,a4
   1a826:	4701                	li	a4,0
   1a828:	b0070ce3          	beqz	a4,1a340 <_vfiprintf_r+0x63e>
   1a82c:	b335                	j	1a558 <_vfiprintf_r+0x856>
   1a82e:	95ef90ef          	jal	1398c <__sinit>
   1a832:	cfaff06f          	j	19d2c <_vfiprintf_r+0x2a>
   1a836:	0019c783          	lbu	a5,1(s3)
   1a83a:	20086813          	ori	a6,a6,512
   1a83e:	0985                	addi	s3,s3,1
   1a840:	dd4ff06f          	j	19e14 <_vfiprintf_r+0x112>
   1a844:	0019c783          	lbu	a5,1(s3)
   1a848:	02086813          	ori	a6,a6,32
   1a84c:	0985                	addi	s3,s3,1
   1a84e:	dc6ff06f          	j	19e14 <_vfiprintf_r+0x112>
   1a852:	000d2783          	lw	a5,0(s10)
   1a856:	0d11                	addi	s10,s10,4
   1a858:	0127a023          	sw	s2,0(a5)
   1a85c:	d5aff06f          	j	19db6 <_vfiprintf_r+0xb4>
   1a860:	4799                	li	a5,6
   1a862:	8e6e                	mv	t3,s11
   1a864:	0bb7eb63          	bltu	a5,s11,1a91a <_vfiprintf_r+0xc18>
   1a868:	64f5                	lui	s1,0x1d
   1a86a:	88f2                	mv	a7,t3
   1a86c:	4d448493          	addi	s1,s1,1236 # 1d4d4 <__clzsi2+0xb6>
   1a870:	df2ff06f          	j	19e62 <_vfiprintf_r+0x160>
   1a874:	200e7713          	andi	a4,t3,512
   1a878:	e00703e3          	beqz	a4,1a67e <_vfiprintf_r+0x97c>
   1a87c:	0ff7f793          	zext.b	a5,a5
   1a880:	4881                	li	a7,0
   1a882:	bc49                	j	1a314 <_vfiprintf_r+0x612>
   1a884:	4781                	li	a5,0
   1a886:	4581                	li	a1,0
   1a888:	b9c1                	j	1a558 <_vfiprintf_r+0x856>
   1a88a:	d43e                	sw	a5,40(sp)
   1a88c:	47e2                	lw	a5,24(sp)
   1a88e:	45f2                	lw	a1,28(sp)
   1a890:	d646                	sw	a7,44(sp)
   1a892:	8e9d                	sub	a3,a3,a5
   1a894:	863e                	mv	a2,a5
   1a896:	8536                	mv	a0,a3
   1a898:	d27e                	sw	t6,36(sp)
   1a89a:	d07a                	sw	t5,32(sp)
   1a89c:	ca72                	sw	t3,20(sp)
   1a89e:	c842                	sw	a6,16(sp)
   1a8a0:	c616                	sw	t0,12(sp)
   1a8a2:	c436                	sw	a3,8(sp)
   1a8a4:	d78fc0ef          	jal	16e1c <strncpy>
   1a8a8:	57a2                	lw	a5,40(sp)
   1a8aa:	4615                	li	a2,5
   1a8ac:	42b2                	lw	t0,12(sp)
   1a8ae:	00f4b733          	sltu	a4,s1,a5
   1a8b2:	9726                	add	a4,a4,s1
   1a8b4:	02c77733          	remu	a4,a4,a2
   1a8b8:	0012c603          	lbu	a2,1(t0)
   1a8bc:	58b2                	lw	a7,44(sp)
   1a8be:	ccccd537          	lui	a0,0xccccd
   1a8c2:	00c03633          	snez	a2,a2
   1a8c6:	ccccd3b7          	lui	t2,0xccccd
   1a8ca:	92b2                	add	t0,t0,a2
   1a8cc:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccae249>
   1a8d0:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccae248>
   1a8d4:	46a2                	lw	a3,8(sp)
   1a8d6:	4842                	lw	a6,16(sp)
   1a8d8:	4e52                	lw	t3,20(sp)
   1a8da:	5f02                	lw	t5,32(sp)
   1a8dc:	5f92                	lw	t6,36(sp)
   1a8de:	4581                	li	a1,0
   1a8e0:	4315                	li	t1,5
   1a8e2:	0ff00e93          	li	t4,255
   1a8e6:	40e78733          	sub	a4,a5,a4
   1a8ea:	00e7b633          	sltu	a2,a5,a4
   1a8ee:	40c88633          	sub	a2,a7,a2
   1a8f2:	027703b3          	mul	t2,a4,t2
   1a8f6:	02a60633          	mul	a2,a2,a0
   1a8fa:	02a738b3          	mulhu	a7,a4,a0
   1a8fe:	961e                	add	a2,a2,t2
   1a900:	02a707b3          	mul	a5,a4,a0
   1a904:	9646                	add	a2,a2,a7
   1a906:	01f61713          	slli	a4,a2,0x1f
   1a90a:	8205                	srli	a2,a2,0x1
   1a90c:	8385                	srli	a5,a5,0x1
   1a90e:	8f5d                	or	a4,a4,a5
   1a910:	b54d                	j	1a7b2 <_vfiprintf_r+0xab0>
   1a912:	4525                	li	a0,9
   1a914:	e8f56fe3          	bltu	a0,a5,1a7b2 <_vfiprintf_r+0xab0>
   1a918:	b719                	j	1a81e <_vfiprintf_r+0xb1c>
   1a91a:	4e19                	li	t3,6
   1a91c:	b7b1                	j	1a868 <_vfiprintf_r+0xb66>
   1a91e:	0ff7f793          	zext.b	a5,a5
   1a922:	4581                	li	a1,0
   1a924:	bbc9                	j	1a6f6 <_vfiprintf_r+0x9f4>
   1a926:	07e2                	slli	a5,a5,0x18
   1a928:	87e1                	srai	a5,a5,0x18
   1a92a:	41f7d893          	srai	a7,a5,0x1f
   1a92e:	8746                	mv	a4,a7
   1a930:	e20ff06f          	j	19f50 <_vfiprintf_r+0x24e>
   1a934:	000d2783          	lw	a5,0(s10)
   1a938:	0d11                	addi	s10,s10,4
   1a93a:	01279023          	sh	s2,0(a5)
   1a93e:	c78ff06f          	j	19db6 <_vfiprintf_r+0xb4>
   1a942:	0ff7f793          	zext.b	a5,a5
   1a946:	4581                	li	a1,0
   1a948:	b2b9                	j	1a296 <_vfiprintf_r+0x594>
   1a94a:	03000793          	li	a5,48
   1a94e:	fe4ff06f          	j	1a132 <_vfiprintf_r+0x430>
   1a952:	5d7d                	li	s10,-1
   1a954:	ecaff06f          	j	1a01e <_vfiprintf_r+0x31c>
   1a958:	000d2d83          	lw	s11,0(s10)
   1a95c:	0d11                	addi	s10,s10,4
   1a95e:	000dd363          	bgez	s11,1a964 <_vfiprintf_r+0xc62>
   1a962:	5dfd                	li	s11,-1
   1a964:	0019c783          	lbu	a5,1(s3)
   1a968:	89b6                	mv	s3,a3
   1a96a:	caaff06f          	j	19e14 <_vfiprintf_r+0x112>

0001a96e <vfiprintf>:
   1a96e:	87aa                	mv	a5,a0
   1a970:	f3c1a503          	lw	a0,-196(gp) # 1e74c <_impure_ptr>
   1a974:	86b2                	mv	a3,a2
   1a976:	862e                	mv	a2,a1
   1a978:	85be                	mv	a1,a5
   1a97a:	b88ff06f          	j	19d02 <_vfiprintf_r>

0001a97e <__sbprintf>:
   1a97e:	b8010113          	addi	sp,sp,-1152
   1a982:	00c59783          	lh	a5,12(a1)
   1a986:	00e5d703          	lhu	a4,14(a1)
   1a98a:	46812c23          	sw	s0,1144(sp)
   1a98e:	842e                	mv	s0,a1
   1a990:	65c1                	lui	a1,0x10
   1a992:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   1a994:	06442e03          	lw	t3,100(s0)
   1a998:	01c42303          	lw	t1,28(s0)
   1a99c:	02442883          	lw	a7,36(s0)
   1a9a0:	0742                	slli	a4,a4,0x10
   1a9a2:	8fed                	and	a5,a5,a1
   1a9a4:	8fd9                	or	a5,a5,a4
   1a9a6:	40000813          	li	a6,1024
   1a9aa:	ca3e                	sw	a5,20(sp)
   1a9ac:	002c                	addi	a1,sp,8
   1a9ae:	189c                	addi	a5,sp,112
   1a9b0:	46912a23          	sw	s1,1140(sp)
   1a9b4:	47212823          	sw	s2,1136(sp)
   1a9b8:	46112e23          	sw	ra,1148(sp)
   1a9bc:	892a                	mv	s2,a0
   1a9be:	d6f2                	sw	t3,108(sp)
   1a9c0:	d21a                	sw	t1,36(sp)
   1a9c2:	d646                	sw	a7,44(sp)
   1a9c4:	c43e                	sw	a5,8(sp)
   1a9c6:	cc3e                	sw	a5,24(sp)
   1a9c8:	c842                	sw	a6,16(sp)
   1a9ca:	ce42                	sw	a6,28(sp)
   1a9cc:	d002                	sw	zero,32(sp)
   1a9ce:	b34ff0ef          	jal	19d02 <_vfiprintf_r>
   1a9d2:	84aa                	mv	s1,a0
   1a9d4:	02055963          	bgez	a0,1aa06 <__sbprintf+0x88>
   1a9d8:	01415783          	lhu	a5,20(sp)
   1a9dc:	0407f793          	andi	a5,a5,64
   1a9e0:	c799                	beqz	a5,1a9ee <__sbprintf+0x70>
   1a9e2:	00c45783          	lhu	a5,12(s0)
   1a9e6:	0407e793          	ori	a5,a5,64
   1a9ea:	00f41623          	sh	a5,12(s0)
   1a9ee:	47c12083          	lw	ra,1148(sp)
   1a9f2:	47812403          	lw	s0,1144(sp)
   1a9f6:	47012903          	lw	s2,1136(sp)
   1a9fa:	8526                	mv	a0,s1
   1a9fc:	47412483          	lw	s1,1140(sp)
   1aa00:	48010113          	addi	sp,sp,1152
   1aa04:	8082                	ret
   1aa06:	002c                	addi	a1,sp,8
   1aa08:	854a                	mv	a0,s2
   1aa0a:	d31fb0ef          	jal	1673a <_fflush_r>
   1aa0e:	d569                	beqz	a0,1a9d8 <__sbprintf+0x5a>
   1aa10:	54fd                	li	s1,-1
   1aa12:	b7d9                	j	1a9d8 <__sbprintf+0x5a>

0001aa14 <__errno>:
   1aa14:	f3c1a503          	lw	a0,-196(gp) # 1e74c <_impure_ptr>
   1aa18:	8082                	ret

0001aa1a <abort>:
   1aa1a:	1141                	addi	sp,sp,-16
   1aa1c:	4519                	li	a0,6
   1aa1e:	c606                	sw	ra,12(sp)
   1aa20:	2a59                	jal	1abb6 <raise>
   1aa22:	4505                	li	a0,1
   1aa24:	2e61                	jal	1adbc <_exit>

0001aa26 <_init_signal_r>:
   1aa26:	11852783          	lw	a5,280(a0)
   1aa2a:	c399                	beqz	a5,1aa30 <_init_signal_r+0xa>
   1aa2c:	4501                	li	a0,0
   1aa2e:	8082                	ret
   1aa30:	1141                	addi	sp,sp,-16
   1aa32:	08000593          	li	a1,128
   1aa36:	c422                	sw	s0,8(sp)
   1aa38:	c606                	sw	ra,12(sp)
   1aa3a:	842a                	mv	s0,a0
   1aa3c:	89ff90ef          	jal	142da <_malloc_r>
   1aa40:	10a42c23          	sw	a0,280(s0)
   1aa44:	cd09                	beqz	a0,1aa5e <_init_signal_r+0x38>
   1aa46:	08050793          	addi	a5,a0,128
   1aa4a:	00052023          	sw	zero,0(a0)
   1aa4e:	0511                	addi	a0,a0,4
   1aa50:	fef51de3          	bne	a0,a5,1aa4a <_init_signal_r+0x24>
   1aa54:	4501                	li	a0,0
   1aa56:	40b2                	lw	ra,12(sp)
   1aa58:	4422                	lw	s0,8(sp)
   1aa5a:	0141                	addi	sp,sp,16
   1aa5c:	8082                	ret
   1aa5e:	557d                	li	a0,-1
   1aa60:	bfdd                	j	1aa56 <_init_signal_r+0x30>

0001aa62 <_signal_r>:
   1aa62:	1101                	addi	sp,sp,-32
   1aa64:	ca26                	sw	s1,20(sp)
   1aa66:	ce06                	sw	ra,28(sp)
   1aa68:	47fd                	li	a5,31
   1aa6a:	84aa                	mv	s1,a0
   1aa6c:	02b7e063          	bltu	a5,a1,1aa8c <_signal_r+0x2a>
   1aa70:	11852783          	lw	a5,280(a0)
   1aa74:	cc22                	sw	s0,24(sp)
   1aa76:	842e                	mv	s0,a1
   1aa78:	cf91                	beqz	a5,1aa94 <_signal_r+0x32>
   1aa7a:	040a                	slli	s0,s0,0x2
   1aa7c:	97a2                	add	a5,a5,s0
   1aa7e:	4462                	lw	s0,24(sp)
   1aa80:	4388                	lw	a0,0(a5)
   1aa82:	c390                	sw	a2,0(a5)
   1aa84:	40f2                	lw	ra,28(sp)
   1aa86:	44d2                	lw	s1,20(sp)
   1aa88:	6105                	addi	sp,sp,32
   1aa8a:	8082                	ret
   1aa8c:	47d9                	li	a5,22
   1aa8e:	c11c                	sw	a5,0(a0)
   1aa90:	557d                	li	a0,-1
   1aa92:	bfcd                	j	1aa84 <_signal_r+0x22>
   1aa94:	08000593          	li	a1,128
   1aa98:	c632                	sw	a2,12(sp)
   1aa9a:	841f90ef          	jal	142da <_malloc_r>
   1aa9e:	10a4ac23          	sw	a0,280(s1)
   1aaa2:	4632                	lw	a2,12(sp)
   1aaa4:	87aa                	mv	a5,a0
   1aaa6:	872a                	mv	a4,a0
   1aaa8:	08050693          	addi	a3,a0,128
   1aaac:	c519                	beqz	a0,1aaba <_signal_r+0x58>
   1aaae:	00072023          	sw	zero,0(a4)
   1aab2:	0711                	addi	a4,a4,4
   1aab4:	fed71de3          	bne	a4,a3,1aaae <_signal_r+0x4c>
   1aab8:	b7c9                	j	1aa7a <_signal_r+0x18>
   1aaba:	4462                	lw	s0,24(sp)
   1aabc:	557d                	li	a0,-1
   1aabe:	b7d9                	j	1aa84 <_signal_r+0x22>

0001aac0 <_raise_r>:
   1aac0:	1141                	addi	sp,sp,-16
   1aac2:	c226                	sw	s1,4(sp)
   1aac4:	c606                	sw	ra,12(sp)
   1aac6:	47fd                	li	a5,31
   1aac8:	84aa                	mv	s1,a0
   1aaca:	04b7ee63          	bltu	a5,a1,1ab26 <_raise_r+0x66>
   1aace:	11852783          	lw	a5,280(a0)
   1aad2:	c422                	sw	s0,8(sp)
   1aad4:	842e                	mv	s0,a1
   1aad6:	c795                	beqz	a5,1ab02 <_raise_r+0x42>
   1aad8:	00259713          	slli	a4,a1,0x2
   1aadc:	97ba                	add	a5,a5,a4
   1aade:	4398                	lw	a4,0(a5)
   1aae0:	c30d                	beqz	a4,1ab02 <_raise_r+0x42>
   1aae2:	4685                	li	a3,1
   1aae4:	00d70963          	beq	a4,a3,1aaf6 <_raise_r+0x36>
   1aae8:	56fd                	li	a3,-1
   1aaea:	02d70663          	beq	a4,a3,1ab16 <_raise_r+0x56>
   1aaee:	0007a023          	sw	zero,0(a5)
   1aaf2:	852e                	mv	a0,a1
   1aaf4:	9702                	jalr	a4
   1aaf6:	4422                	lw	s0,8(sp)
   1aaf8:	4501                	li	a0,0
   1aafa:	40b2                	lw	ra,12(sp)
   1aafc:	4492                	lw	s1,4(sp)
   1aafe:	0141                	addi	sp,sp,16
   1ab00:	8082                	ret
   1ab02:	8526                	mv	a0,s1
   1ab04:	2469                	jal	1ad8e <_getpid_r>
   1ab06:	8622                	mv	a2,s0
   1ab08:	4422                	lw	s0,8(sp)
   1ab0a:	40b2                	lw	ra,12(sp)
   1ab0c:	85aa                	mv	a1,a0
   1ab0e:	8526                	mv	a0,s1
   1ab10:	4492                	lw	s1,4(sp)
   1ab12:	0141                	addi	sp,sp,16
   1ab14:	a489                	j	1ad56 <_kill_r>
   1ab16:	4422                	lw	s0,8(sp)
   1ab18:	40b2                	lw	ra,12(sp)
   1ab1a:	47d9                	li	a5,22
   1ab1c:	c11c                	sw	a5,0(a0)
   1ab1e:	4492                	lw	s1,4(sp)
   1ab20:	4505                	li	a0,1
   1ab22:	0141                	addi	sp,sp,16
   1ab24:	8082                	ret
   1ab26:	47d9                	li	a5,22
   1ab28:	c11c                	sw	a5,0(a0)
   1ab2a:	557d                	li	a0,-1
   1ab2c:	b7f9                	j	1aafa <_raise_r+0x3a>

0001ab2e <__sigtramp_r>:
   1ab2e:	47fd                	li	a5,31
   1ab30:	08b7e163          	bltu	a5,a1,1abb2 <__sigtramp_r+0x84>
   1ab34:	11852783          	lw	a5,280(a0)
   1ab38:	1141                	addi	sp,sp,-16
   1ab3a:	c422                	sw	s0,8(sp)
   1ab3c:	c226                	sw	s1,4(sp)
   1ab3e:	c606                	sw	ra,12(sp)
   1ab40:	842e                	mv	s0,a1
   1ab42:	84aa                	mv	s1,a0
   1ab44:	c7a1                	beqz	a5,1ab8c <__sigtramp_r+0x5e>
   1ab46:	00241713          	slli	a4,s0,0x2
   1ab4a:	97ba                	add	a5,a5,a4
   1ab4c:	4398                	lw	a4,0(a5)
   1ab4e:	c30d                	beqz	a4,1ab70 <__sigtramp_r+0x42>
   1ab50:	56fd                	li	a3,-1
   1ab52:	02d70b63          	beq	a4,a3,1ab88 <__sigtramp_r+0x5a>
   1ab56:	4685                	li	a3,1
   1ab58:	02d70263          	beq	a4,a3,1ab7c <__sigtramp_r+0x4e>
   1ab5c:	8522                	mv	a0,s0
   1ab5e:	0007a023          	sw	zero,0(a5)
   1ab62:	9702                	jalr	a4
   1ab64:	4501                	li	a0,0
   1ab66:	40b2                	lw	ra,12(sp)
   1ab68:	4422                	lw	s0,8(sp)
   1ab6a:	4492                	lw	s1,4(sp)
   1ab6c:	0141                	addi	sp,sp,16
   1ab6e:	8082                	ret
   1ab70:	40b2                	lw	ra,12(sp)
   1ab72:	4422                	lw	s0,8(sp)
   1ab74:	4492                	lw	s1,4(sp)
   1ab76:	4505                	li	a0,1
   1ab78:	0141                	addi	sp,sp,16
   1ab7a:	8082                	ret
   1ab7c:	40b2                	lw	ra,12(sp)
   1ab7e:	4422                	lw	s0,8(sp)
   1ab80:	4492                	lw	s1,4(sp)
   1ab82:	450d                	li	a0,3
   1ab84:	0141                	addi	sp,sp,16
   1ab86:	8082                	ret
   1ab88:	4509                	li	a0,2
   1ab8a:	bff1                	j	1ab66 <__sigtramp_r+0x38>
   1ab8c:	08000593          	li	a1,128
   1ab90:	f4af90ef          	jal	142da <_malloc_r>
   1ab94:	10a4ac23          	sw	a0,280(s1)
   1ab98:	87aa                	mv	a5,a0
   1ab9a:	c911                	beqz	a0,1abae <__sigtramp_r+0x80>
   1ab9c:	872a                	mv	a4,a0
   1ab9e:	08050693          	addi	a3,a0,128
   1aba2:	00072023          	sw	zero,0(a4)
   1aba6:	0711                	addi	a4,a4,4
   1aba8:	fed71de3          	bne	a4,a3,1aba2 <__sigtramp_r+0x74>
   1abac:	bf69                	j	1ab46 <__sigtramp_r+0x18>
   1abae:	557d                	li	a0,-1
   1abb0:	bf5d                	j	1ab66 <__sigtramp_r+0x38>
   1abb2:	557d                	li	a0,-1
   1abb4:	8082                	ret

0001abb6 <raise>:
   1abb6:	1141                	addi	sp,sp,-16
   1abb8:	c226                	sw	s1,4(sp)
   1abba:	c606                	sw	ra,12(sp)
   1abbc:	47fd                	li	a5,31
   1abbe:	f3c1a483          	lw	s1,-196(gp) # 1e74c <_impure_ptr>
   1abc2:	04a7ed63          	bltu	a5,a0,1ac1c <raise+0x66>
   1abc6:	1184a783          	lw	a5,280(s1)
   1abca:	c422                	sw	s0,8(sp)
   1abcc:	842a                	mv	s0,a0
   1abce:	c78d                	beqz	a5,1abf8 <raise+0x42>
   1abd0:	00251713          	slli	a4,a0,0x2
   1abd4:	97ba                	add	a5,a5,a4
   1abd6:	4398                	lw	a4,0(a5)
   1abd8:	c305                	beqz	a4,1abf8 <raise+0x42>
   1abda:	4685                	li	a3,1
   1abdc:	00d70863          	beq	a4,a3,1abec <raise+0x36>
   1abe0:	56fd                	li	a3,-1
   1abe2:	02d70563          	beq	a4,a3,1ac0c <raise+0x56>
   1abe6:	0007a023          	sw	zero,0(a5)
   1abea:	9702                	jalr	a4
   1abec:	4422                	lw	s0,8(sp)
   1abee:	4501                	li	a0,0
   1abf0:	40b2                	lw	ra,12(sp)
   1abf2:	4492                	lw	s1,4(sp)
   1abf4:	0141                	addi	sp,sp,16
   1abf6:	8082                	ret
   1abf8:	8526                	mv	a0,s1
   1abfa:	2a51                	jal	1ad8e <_getpid_r>
   1abfc:	8622                	mv	a2,s0
   1abfe:	4422                	lw	s0,8(sp)
   1ac00:	40b2                	lw	ra,12(sp)
   1ac02:	85aa                	mv	a1,a0
   1ac04:	8526                	mv	a0,s1
   1ac06:	4492                	lw	s1,4(sp)
   1ac08:	0141                	addi	sp,sp,16
   1ac0a:	a2b1                	j	1ad56 <_kill_r>
   1ac0c:	4422                	lw	s0,8(sp)
   1ac0e:	40b2                	lw	ra,12(sp)
   1ac10:	47d9                	li	a5,22
   1ac12:	c09c                	sw	a5,0(s1)
   1ac14:	4505                	li	a0,1
   1ac16:	4492                	lw	s1,4(sp)
   1ac18:	0141                	addi	sp,sp,16
   1ac1a:	8082                	ret
   1ac1c:	47d9                	li	a5,22
   1ac1e:	c09c                	sw	a5,0(s1)
   1ac20:	557d                	li	a0,-1
   1ac22:	b7f9                	j	1abf0 <raise+0x3a>

0001ac24 <signal>:
   1ac24:	1141                	addi	sp,sp,-16
   1ac26:	c04a                	sw	s2,0(sp)
   1ac28:	c606                	sw	ra,12(sp)
   1ac2a:	47fd                	li	a5,31
   1ac2c:	f3c1a903          	lw	s2,-196(gp) # 1e74c <_impure_ptr>
   1ac30:	02a7e463          	bltu	a5,a0,1ac58 <signal+0x34>
   1ac34:	c422                	sw	s0,8(sp)
   1ac36:	842a                	mv	s0,a0
   1ac38:	11892503          	lw	a0,280(s2)
   1ac3c:	c226                	sw	s1,4(sp)
   1ac3e:	84ae                	mv	s1,a1
   1ac40:	c10d                	beqz	a0,1ac62 <signal+0x3e>
   1ac42:	040a                	slli	s0,s0,0x2
   1ac44:	008507b3          	add	a5,a0,s0
   1ac48:	4388                	lw	a0,0(a5)
   1ac4a:	4422                	lw	s0,8(sp)
   1ac4c:	c384                	sw	s1,0(a5)
   1ac4e:	4492                	lw	s1,4(sp)
   1ac50:	40b2                	lw	ra,12(sp)
   1ac52:	4902                	lw	s2,0(sp)
   1ac54:	0141                	addi	sp,sp,16
   1ac56:	8082                	ret
   1ac58:	47d9                	li	a5,22
   1ac5a:	00f92023          	sw	a5,0(s2)
   1ac5e:	557d                	li	a0,-1
   1ac60:	bfc5                	j	1ac50 <signal+0x2c>
   1ac62:	08000593          	li	a1,128
   1ac66:	854a                	mv	a0,s2
   1ac68:	e72f90ef          	jal	142da <_malloc_r>
   1ac6c:	10a92c23          	sw	a0,280(s2)
   1ac70:	87aa                	mv	a5,a0
   1ac72:	08050713          	addi	a4,a0,128
   1ac76:	c519                	beqz	a0,1ac84 <signal+0x60>
   1ac78:	0007a023          	sw	zero,0(a5)
   1ac7c:	0791                	addi	a5,a5,4
   1ac7e:	fef71de3          	bne	a4,a5,1ac78 <signal+0x54>
   1ac82:	b7c1                	j	1ac42 <signal+0x1e>
   1ac84:	4422                	lw	s0,8(sp)
   1ac86:	4492                	lw	s1,4(sp)
   1ac88:	557d                	li	a0,-1
   1ac8a:	b7d9                	j	1ac50 <signal+0x2c>

0001ac8c <_init_signal>:
   1ac8c:	1141                	addi	sp,sp,-16
   1ac8e:	c422                	sw	s0,8(sp)
   1ac90:	f3c1a403          	lw	s0,-196(gp) # 1e74c <_impure_ptr>
   1ac94:	c606                	sw	ra,12(sp)
   1ac96:	11842783          	lw	a5,280(s0)
   1ac9a:	c791                	beqz	a5,1aca6 <_init_signal+0x1a>
   1ac9c:	4501                	li	a0,0
   1ac9e:	40b2                	lw	ra,12(sp)
   1aca0:	4422                	lw	s0,8(sp)
   1aca2:	0141                	addi	sp,sp,16
   1aca4:	8082                	ret
   1aca6:	08000593          	li	a1,128
   1acaa:	8522                	mv	a0,s0
   1acac:	e2ef90ef          	jal	142da <_malloc_r>
   1acb0:	10a42c23          	sw	a0,280(s0)
   1acb4:	c909                	beqz	a0,1acc6 <_init_signal+0x3a>
   1acb6:	08050793          	addi	a5,a0,128
   1acba:	00052023          	sw	zero,0(a0)
   1acbe:	0511                	addi	a0,a0,4
   1acc0:	fef51de3          	bne	a0,a5,1acba <_init_signal+0x2e>
   1acc4:	bfe1                	j	1ac9c <_init_signal+0x10>
   1acc6:	557d                	li	a0,-1
   1acc8:	bfd9                	j	1ac9e <_init_signal+0x12>

0001acca <__sigtramp>:
   1acca:	1141                	addi	sp,sp,-16
   1accc:	c226                	sw	s1,4(sp)
   1acce:	c606                	sw	ra,12(sp)
   1acd0:	47fd                	li	a5,31
   1acd2:	f3c1a483          	lw	s1,-196(gp) # 1e74c <_impure_ptr>
   1acd6:	06a7ee63          	bltu	a5,a0,1ad52 <__sigtramp+0x88>
   1acda:	1184a783          	lw	a5,280(s1)
   1acde:	c422                	sw	s0,8(sp)
   1ace0:	842a                	mv	s0,a0
   1ace2:	c7a9                	beqz	a5,1ad2c <__sigtramp+0x62>
   1ace4:	00241713          	slli	a4,s0,0x2
   1ace8:	97ba                	add	a5,a5,a4
   1acea:	4398                	lw	a4,0(a5)
   1acec:	c30d                	beqz	a4,1ad0e <__sigtramp+0x44>
   1acee:	56fd                	li	a3,-1
   1acf0:	02d70b63          	beq	a4,a3,1ad26 <__sigtramp+0x5c>
   1acf4:	4685                	li	a3,1
   1acf6:	02d70263          	beq	a4,a3,1ad1a <__sigtramp+0x50>
   1acfa:	8522                	mv	a0,s0
   1acfc:	0007a023          	sw	zero,0(a5)
   1ad00:	9702                	jalr	a4
   1ad02:	4422                	lw	s0,8(sp)
   1ad04:	4501                	li	a0,0
   1ad06:	40b2                	lw	ra,12(sp)
   1ad08:	4492                	lw	s1,4(sp)
   1ad0a:	0141                	addi	sp,sp,16
   1ad0c:	8082                	ret
   1ad0e:	4422                	lw	s0,8(sp)
   1ad10:	40b2                	lw	ra,12(sp)
   1ad12:	4492                	lw	s1,4(sp)
   1ad14:	4505                	li	a0,1
   1ad16:	0141                	addi	sp,sp,16
   1ad18:	8082                	ret
   1ad1a:	4422                	lw	s0,8(sp)
   1ad1c:	40b2                	lw	ra,12(sp)
   1ad1e:	4492                	lw	s1,4(sp)
   1ad20:	450d                	li	a0,3
   1ad22:	0141                	addi	sp,sp,16
   1ad24:	8082                	ret
   1ad26:	4422                	lw	s0,8(sp)
   1ad28:	4509                	li	a0,2
   1ad2a:	bff1                	j	1ad06 <__sigtramp+0x3c>
   1ad2c:	08000593          	li	a1,128
   1ad30:	8526                	mv	a0,s1
   1ad32:	da8f90ef          	jal	142da <_malloc_r>
   1ad36:	10a4ac23          	sw	a0,280(s1)
   1ad3a:	87aa                	mv	a5,a0
   1ad3c:	c911                	beqz	a0,1ad50 <__sigtramp+0x86>
   1ad3e:	872a                	mv	a4,a0
   1ad40:	08050693          	addi	a3,a0,128
   1ad44:	00072023          	sw	zero,0(a4)
   1ad48:	0711                	addi	a4,a4,4
   1ad4a:	fee69de3          	bne	a3,a4,1ad44 <__sigtramp+0x7a>
   1ad4e:	bf59                	j	1ace4 <__sigtramp+0x1a>
   1ad50:	4422                	lw	s0,8(sp)
   1ad52:	557d                	li	a0,-1
   1ad54:	bf4d                	j	1ad06 <__sigtramp+0x3c>

0001ad56 <_kill_r>:
   1ad56:	1141                	addi	sp,sp,-16
   1ad58:	872e                	mv	a4,a1
   1ad5a:	c422                	sw	s0,8(sp)
   1ad5c:	c226                	sw	s1,4(sp)
   1ad5e:	842a                	mv	s0,a0
   1ad60:	85b2                	mv	a1,a2
   1ad62:	853a                	mv	a0,a4
   1ad64:	c606                	sw	ra,12(sp)
   1ad66:	f401a623          	sw	zero,-180(gp) # 1e75c <errno>
   1ad6a:	28d9                	jal	1ae40 <_kill>
   1ad6c:	57fd                	li	a5,-1
   1ad6e:	00f50763          	beq	a0,a5,1ad7c <_kill_r+0x26>
   1ad72:	40b2                	lw	ra,12(sp)
   1ad74:	4422                	lw	s0,8(sp)
   1ad76:	4492                	lw	s1,4(sp)
   1ad78:	0141                	addi	sp,sp,16
   1ad7a:	8082                	ret
   1ad7c:	f4c1a783          	lw	a5,-180(gp) # 1e75c <errno>
   1ad80:	dbed                	beqz	a5,1ad72 <_kill_r+0x1c>
   1ad82:	40b2                	lw	ra,12(sp)
   1ad84:	c01c                	sw	a5,0(s0)
   1ad86:	4422                	lw	s0,8(sp)
   1ad88:	4492                	lw	s1,4(sp)
   1ad8a:	0141                	addi	sp,sp,16
   1ad8c:	8082                	ret

0001ad8e <_getpid_r>:
   1ad8e:	a069                	j	1ae18 <_getpid>

0001ad90 <_close>:
   1ad90:	1141                	addi	sp,sp,-16
   1ad92:	c606                	sw	ra,12(sp)
   1ad94:	c422                	sw	s0,8(sp)
   1ad96:	03900893          	li	a7,57
   1ad9a:	00000073          	ecall
   1ad9e:	842a                	mv	s0,a0
   1ada0:	00054763          	bltz	a0,1adae <_close+0x1e>
   1ada4:	40b2                	lw	ra,12(sp)
   1ada6:	8522                	mv	a0,s0
   1ada8:	4422                	lw	s0,8(sp)
   1adaa:	0141                	addi	sp,sp,16
   1adac:	8082                	ret
   1adae:	40800433          	neg	s0,s0
   1adb2:	c63ff0ef          	jal	1aa14 <__errno>
   1adb6:	c100                	sw	s0,0(a0)
   1adb8:	547d                	li	s0,-1
   1adba:	b7ed                	j	1ada4 <_close+0x14>

0001adbc <_exit>:
   1adbc:	05d00893          	li	a7,93
   1adc0:	00000073          	ecall
   1adc4:	00054363          	bltz	a0,1adca <_exit+0xe>
   1adc8:	a001                	j	1adc8 <_exit+0xc>
   1adca:	1141                	addi	sp,sp,-16
   1adcc:	c422                	sw	s0,8(sp)
   1adce:	842a                	mv	s0,a0
   1add0:	c606                	sw	ra,12(sp)
   1add2:	40800433          	neg	s0,s0
   1add6:	c3fff0ef          	jal	1aa14 <__errno>
   1adda:	c100                	sw	s0,0(a0)
   1addc:	a001                	j	1addc <_exit+0x20>

0001adde <_fstat>:
   1adde:	7175                	addi	sp,sp,-144
   1ade0:	c326                	sw	s1,132(sp)
   1ade2:	c706                	sw	ra,140(sp)
   1ade4:	84ae                	mv	s1,a1
   1ade6:	c522                	sw	s0,136(sp)
   1ade8:	05000893          	li	a7,80
   1adec:	858a                	mv	a1,sp
   1adee:	00000073          	ecall
   1adf2:	842a                	mv	s0,a0
   1adf4:	00054b63          	bltz	a0,1ae0a <_fstat+0x2c>
   1adf8:	8526                	mv	a0,s1
   1adfa:	858a                	mv	a1,sp
   1adfc:	2a05                	jal	1af2c <_conv_stat>
   1adfe:	40ba                	lw	ra,140(sp)
   1ae00:	8522                	mv	a0,s0
   1ae02:	442a                	lw	s0,136(sp)
   1ae04:	449a                	lw	s1,132(sp)
   1ae06:	6149                	addi	sp,sp,144
   1ae08:	8082                	ret
   1ae0a:	40800433          	neg	s0,s0
   1ae0e:	c07ff0ef          	jal	1aa14 <__errno>
   1ae12:	c100                	sw	s0,0(a0)
   1ae14:	547d                	li	s0,-1
   1ae16:	b7cd                	j	1adf8 <_fstat+0x1a>

0001ae18 <_getpid>:
   1ae18:	4505                	li	a0,1
   1ae1a:	8082                	ret

0001ae1c <_isatty>:
   1ae1c:	7159                	addi	sp,sp,-112
   1ae1e:	002c                	addi	a1,sp,8
   1ae20:	d686                	sw	ra,108(sp)
   1ae22:	fbdff0ef          	jal	1adde <_fstat>
   1ae26:	57fd                	li	a5,-1
   1ae28:	00f50863          	beq	a0,a5,1ae38 <_isatty+0x1c>
   1ae2c:	4532                	lw	a0,12(sp)
   1ae2e:	50b6                	lw	ra,108(sp)
   1ae30:	8135                	srli	a0,a0,0xd
   1ae32:	8905                	andi	a0,a0,1
   1ae34:	6165                	addi	sp,sp,112
   1ae36:	8082                	ret
   1ae38:	50b6                	lw	ra,108(sp)
   1ae3a:	4501                	li	a0,0
   1ae3c:	6165                	addi	sp,sp,112
   1ae3e:	8082                	ret

0001ae40 <_kill>:
   1ae40:	1141                	addi	sp,sp,-16
   1ae42:	c606                	sw	ra,12(sp)
   1ae44:	bd1ff0ef          	jal	1aa14 <__errno>
   1ae48:	40b2                	lw	ra,12(sp)
   1ae4a:	47d9                	li	a5,22
   1ae4c:	c11c                	sw	a5,0(a0)
   1ae4e:	557d                	li	a0,-1
   1ae50:	0141                	addi	sp,sp,16
   1ae52:	8082                	ret

0001ae54 <_lseek>:
   1ae54:	1141                	addi	sp,sp,-16
   1ae56:	c606                	sw	ra,12(sp)
   1ae58:	c422                	sw	s0,8(sp)
   1ae5a:	03e00893          	li	a7,62
   1ae5e:	00000073          	ecall
   1ae62:	842a                	mv	s0,a0
   1ae64:	00054763          	bltz	a0,1ae72 <_lseek+0x1e>
   1ae68:	40b2                	lw	ra,12(sp)
   1ae6a:	8522                	mv	a0,s0
   1ae6c:	4422                	lw	s0,8(sp)
   1ae6e:	0141                	addi	sp,sp,16
   1ae70:	8082                	ret
   1ae72:	40800433          	neg	s0,s0
   1ae76:	b9fff0ef          	jal	1aa14 <__errno>
   1ae7a:	c100                	sw	s0,0(a0)
   1ae7c:	547d                	li	s0,-1
   1ae7e:	b7ed                	j	1ae68 <_lseek+0x14>

0001ae80 <_read>:
   1ae80:	1141                	addi	sp,sp,-16
   1ae82:	c606                	sw	ra,12(sp)
   1ae84:	c422                	sw	s0,8(sp)
   1ae86:	03f00893          	li	a7,63
   1ae8a:	00000073          	ecall
   1ae8e:	842a                	mv	s0,a0
   1ae90:	00054763          	bltz	a0,1ae9e <_read+0x1e>
   1ae94:	40b2                	lw	ra,12(sp)
   1ae96:	8522                	mv	a0,s0
   1ae98:	4422                	lw	s0,8(sp)
   1ae9a:	0141                	addi	sp,sp,16
   1ae9c:	8082                	ret
   1ae9e:	40800433          	neg	s0,s0
   1aea2:	b73ff0ef          	jal	1aa14 <__errno>
   1aea6:	c100                	sw	s0,0(a0)
   1aea8:	547d                	li	s0,-1
   1aeaa:	b7ed                	j	1ae94 <_read+0x14>

0001aeac <_sbrk>:
   1aeac:	f641a703          	lw	a4,-156(gp) # 1e774 <heap_end.0>
   1aeb0:	1141                	addi	sp,sp,-16
   1aeb2:	c606                	sw	ra,12(sp)
   1aeb4:	87aa                	mv	a5,a0
   1aeb6:	ef01                	bnez	a4,1aece <_sbrk+0x22>
   1aeb8:	0d600893          	li	a7,214
   1aebc:	4501                	li	a0,0
   1aebe:	00000073          	ecall
   1aec2:	567d                	li	a2,-1
   1aec4:	872a                	mv	a4,a0
   1aec6:	02c50563          	beq	a0,a2,1aef0 <_sbrk+0x44>
   1aeca:	f6a1a223          	sw	a0,-156(gp) # 1e774 <heap_end.0>
   1aece:	0d600893          	li	a7,214
   1aed2:	00e78533          	add	a0,a5,a4
   1aed6:	00000073          	ecall
   1aeda:	f641a703          	lw	a4,-156(gp) # 1e774 <heap_end.0>
   1aede:	97ba                	add	a5,a5,a4
   1aee0:	00f51863          	bne	a0,a5,1aef0 <_sbrk+0x44>
   1aee4:	40b2                	lw	ra,12(sp)
   1aee6:	f6a1a223          	sw	a0,-156(gp) # 1e774 <heap_end.0>
   1aeea:	853a                	mv	a0,a4
   1aeec:	0141                	addi	sp,sp,16
   1aeee:	8082                	ret
   1aef0:	b25ff0ef          	jal	1aa14 <__errno>
   1aef4:	40b2                	lw	ra,12(sp)
   1aef6:	47b1                	li	a5,12
   1aef8:	c11c                	sw	a5,0(a0)
   1aefa:	557d                	li	a0,-1
   1aefc:	0141                	addi	sp,sp,16
   1aefe:	8082                	ret

0001af00 <_write>:
   1af00:	1141                	addi	sp,sp,-16
   1af02:	c606                	sw	ra,12(sp)
   1af04:	c422                	sw	s0,8(sp)
   1af06:	04000893          	li	a7,64
   1af0a:	00000073          	ecall
   1af0e:	842a                	mv	s0,a0
   1af10:	00054763          	bltz	a0,1af1e <_write+0x1e>
   1af14:	40b2                	lw	ra,12(sp)
   1af16:	8522                	mv	a0,s0
   1af18:	4422                	lw	s0,8(sp)
   1af1a:	0141                	addi	sp,sp,16
   1af1c:	8082                	ret
   1af1e:	40800433          	neg	s0,s0
   1af22:	af3ff0ef          	jal	1aa14 <__errno>
   1af26:	c100                	sw	s0,0(a0)
   1af28:	547d                	li	s0,-1
   1af2a:	b7ed                	j	1af14 <_write+0x14>

0001af2c <_conv_stat>:
   1af2c:	0185d703          	lhu	a4,24(a1)
   1af30:	0145d783          	lhu	a5,20(a1)
   1af34:	1141                	addi	sp,sp,-16
   1af36:	01c5a283          	lw	t0,28(a1)
   1af3a:	0205af83          	lw	t6,32(a1)
   1af3e:	0305af03          	lw	t5,48(a1)
   1af42:	0405ae83          	lw	t4,64(a1)
   1af46:	0385ae03          	lw	t3,56(a1)
   1af4a:	0485a303          	lw	t1,72(a1)
   1af4e:	04c5a383          	lw	t2,76(a1)
   1af52:	0585a803          	lw	a6,88(a1)
   1af56:	05c5a883          	lw	a7,92(a1)
   1af5a:	c622                	sw	s0,12(sp)
   1af5c:	c426                	sw	s1,8(sp)
   1af5e:	4980                	lw	s0,16(a1)
   1af60:	4584                	lw	s1,8(a1)
   1af62:	c24a                	sw	s2,4(sp)
   1af64:	0005a903          	lw	s2,0(a1)
   1af68:	55b0                	lw	a2,104(a1)
   1af6a:	0742                	slli	a4,a4,0x10
   1af6c:	8fd9                	or	a5,a5,a4
   1af6e:	55f4                	lw	a3,108(a1)
   1af70:	01251023          	sh	s2,0(a0)
   1af74:	00951123          	sh	s1,2(a0)
   1af78:	c140                	sw	s0,4(a0)
   1af7a:	c51c                	sw	a5,8(a0)
   1af7c:	00551623          	sh	t0,12(a0)
   1af80:	01f51723          	sh	t6,14(a0)
   1af84:	01e52823          	sw	t5,16(a0)
   1af88:	05d52623          	sw	t4,76(a0)
   1af8c:	05c52423          	sw	t3,72(a0)
   1af90:	00652c23          	sw	t1,24(a0)
   1af94:	00752e23          	sw	t2,28(a0)
   1af98:	03052423          	sw	a6,40(a0)
   1af9c:	03152623          	sw	a7,44(a0)
   1afa0:	dd10                	sw	a2,56(a0)
   1afa2:	4432                	lw	s0,12(sp)
   1afa4:	dd54                	sw	a3,60(a0)
   1afa6:	44a2                	lw	s1,8(sp)
   1afa8:	4912                	lw	s2,4(sp)
   1afaa:	0141                	addi	sp,sp,16
   1afac:	8082                	ret

0001afae <__eqtf2>:
   1afae:	411c                	lw	a5,0(a0)
   1afb0:	00452e03          	lw	t3,4(a0)
   1afb4:	00852e83          	lw	t4,8(a0)
   1afb8:	4554                	lw	a3,12(a0)
   1afba:	4198                	lw	a4,0(a1)
   1afbc:	0045af83          	lw	t6,4(a1)
   1afc0:	0085af03          	lw	t5,8(a1)
   1afc4:	00c5a883          	lw	a7,12(a1)
   1afc8:	1141                	addi	sp,sp,-16
   1afca:	00202673          	frrm	a2
   1afce:	6521                	lui	a0,0x8
   1afd0:	0106d613          	srli	a2,a3,0x10
   1afd4:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1afd6:	01069313          	slli	t1,a3,0x10
   1afda:	01089593          	slli	a1,a7,0x10
   1afde:	01f6d813          	srli	a6,a3,0x1f
   1afe2:	8e69                	and	a2,a2,a0
   1afe4:	0108d693          	srli	a3,a7,0x10
   1afe8:	01035313          	srli	t1,t1,0x10
   1afec:	81c1                	srli	a1,a1,0x10
   1afee:	8ee9                	and	a3,a3,a0
   1aff0:	01f8d893          	srli	a7,a7,0x1f
   1aff4:	00a61c63          	bne	a2,a0,1b00c <__eqtf2+0x5e>
   1aff8:	01c7e533          	or	a0,a5,t3
   1affc:	01d56533          	or	a0,a0,t4
   1b000:	00656533          	or	a0,a0,t1
   1b004:	e51d                	bnez	a0,1b032 <__eqtf2+0x84>
   1b006:	04c69b63          	bne	a3,a2,1b05c <__eqtf2+0xae>
   1b00a:	a019                	j	1b010 <__eqtf2+0x62>
   1b00c:	04a69a63          	bne	a3,a0,1b060 <__eqtf2+0xb2>
   1b010:	01f76533          	or	a0,a4,t6
   1b014:	01e56533          	or	a0,a0,t5
   1b018:	8d4d                	or	a0,a0,a1
   1b01a:	c139                	beqz	a0,1b060 <__eqtf2+0xb2>
   1b01c:	6521                	lui	a0,0x8
   1b01e:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1b020:	02a61a63          	bne	a2,a0,1b054 <__eqtf2+0xa6>
   1b024:	01c7e7b3          	or	a5,a5,t3
   1b028:	01d7e7b3          	or	a5,a5,t4
   1b02c:	0067e7b3          	or	a5,a5,t1
   1b030:	cb99                	beqz	a5,1b046 <__eqtf2+0x98>
   1b032:	0342                	slli	t1,t1,0x10
   1b034:	41035313          	srai	t1,t1,0x10
   1b038:	04035c63          	bgez	t1,1b090 <__eqtf2+0xe2>
   1b03c:	67a1                	lui	a5,0x8
   1b03e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b040:	4505                	li	a0,1
   1b042:	04f69563          	bne	a3,a5,1b08c <__eqtf2+0xde>
   1b046:	01f76733          	or	a4,a4,t6
   1b04a:	01e76733          	or	a4,a4,t5
   1b04e:	8f4d                	or	a4,a4,a1
   1b050:	4505                	li	a0,1
   1b052:	cf0d                	beqz	a4,1b08c <__eqtf2+0xde>
   1b054:	05c2                	slli	a1,a1,0x10
   1b056:	85c1                	srai	a1,a1,0x10
   1b058:	0205dc63          	bgez	a1,1b090 <__eqtf2+0xe2>
   1b05c:	4505                	li	a0,1
   1b05e:	a03d                	j	1b08c <__eqtf2+0xde>
   1b060:	4505                	li	a0,1
   1b062:	02c69563          	bne	a3,a2,1b08c <__eqtf2+0xde>
   1b066:	02e79363          	bne	a5,a4,1b08c <__eqtf2+0xde>
   1b06a:	03fe1163          	bne	t3,t6,1b08c <__eqtf2+0xde>
   1b06e:	01ee9f63          	bne	t4,t5,1b08c <__eqtf2+0xde>
   1b072:	00b31d63          	bne	t1,a1,1b08c <__eqtf2+0xde>
   1b076:	03180063          	beq	a6,a7,1b096 <__eqtf2+0xe8>
   1b07a:	ea89                	bnez	a3,1b08c <__eqtf2+0xde>
   1b07c:	01c7e533          	or	a0,a5,t3
   1b080:	01d56533          	or	a0,a0,t4
   1b084:	00656533          	or	a0,a0,t1
   1b088:	00a03533          	snez	a0,a0
   1b08c:	0141                	addi	sp,sp,16
   1b08e:	8082                	ret
   1b090:	00186073          	csrsi	fflags,16
   1b094:	b7e1                	j	1b05c <__eqtf2+0xae>
   1b096:	4501                	li	a0,0
   1b098:	bfd5                	j	1b08c <__eqtf2+0xde>

0001b09a <__getf2>:
   1b09a:	00052883          	lw	a7,0(a0)
   1b09e:	00452303          	lw	t1,4(a0)
   1b0a2:	00852e03          	lw	t3,8(a0)
   1b0a6:	455c                	lw	a5,12(a0)
   1b0a8:	0005ae83          	lw	t4,0(a1)
   1b0ac:	0045af03          	lw	t5,4(a1)
   1b0b0:	0085af83          	lw	t6,8(a1)
   1b0b4:	45d4                	lw	a3,12(a1)
   1b0b6:	1141                	addi	sp,sp,-16
   1b0b8:	00202773          	frrm	a4
   1b0bc:	6721                	lui	a4,0x8
   1b0be:	0107d613          	srli	a2,a5,0x10
   1b0c2:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b0c4:	01079813          	slli	a6,a5,0x10
   1b0c8:	01069293          	slli	t0,a3,0x10
   1b0cc:	0106d513          	srli	a0,a3,0x10
   1b0d0:	8e79                	and	a2,a2,a4
   1b0d2:	01085813          	srli	a6,a6,0x10
   1b0d6:	83fd                	srli	a5,a5,0x1f
   1b0d8:	0102d293          	srli	t0,t0,0x10
   1b0dc:	8d79                	and	a0,a0,a4
   1b0de:	82fd                	srli	a3,a3,0x1f
   1b0e0:	00e61963          	bne	a2,a4,1b0f2 <__getf2+0x58>
   1b0e4:	01136733          	or	a4,t1,a7
   1b0e8:	01c76733          	or	a4,a4,t3
   1b0ec:	01076733          	or	a4,a4,a6
   1b0f0:	ef35                	bnez	a4,1b16c <__getf2+0xd2>
   1b0f2:	6721                	lui	a4,0x8
   1b0f4:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b0f6:	00e51963          	bne	a0,a4,1b108 <__getf2+0x6e>
   1b0fa:	01eee733          	or	a4,t4,t5
   1b0fe:	01f76733          	or	a4,a4,t6
   1b102:	00576733          	or	a4,a4,t0
   1b106:	e33d                	bnez	a4,1b16c <__getf2+0xd2>
   1b108:	4701                	li	a4,0
   1b10a:	ea09                	bnez	a2,1b11c <__getf2+0x82>
   1b10c:	01136733          	or	a4,t1,a7
   1b110:	01c76733          	or	a4,a4,t3
   1b114:	01076733          	or	a4,a4,a6
   1b118:	00173713          	seqz	a4,a4
   1b11c:	ed21                	bnez	a0,1b174 <__getf2+0xda>
   1b11e:	01eee5b3          	or	a1,t4,t5
   1b122:	01f5e5b3          	or	a1,a1,t6
   1b126:	0055e5b3          	or	a1,a1,t0
   1b12a:	c711                	beqz	a4,1b136 <__getf2+0x9c>
   1b12c:	c981                	beqz	a1,1b13c <__getf2+0xa2>
   1b12e:	4505                	li	a0,1
   1b130:	e691                	bnez	a3,1b13c <__getf2+0xa2>
   1b132:	557d                	li	a0,-1
   1b134:	a021                	j	1b13c <__getf2+0xa2>
   1b136:	e1a1                	bnez	a1,1b176 <__getf2+0xdc>
   1b138:	557d                	li	a0,-1
   1b13a:	c7a1                	beqz	a5,1b182 <__getf2+0xe8>
   1b13c:	0141                	addi	sp,sp,16
   1b13e:	8082                	ret
   1b140:	fea647e3          	blt	a2,a0,1b12e <__getf2+0x94>
   1b144:	ff02eae3          	bltu	t0,a6,1b138 <__getf2+0x9e>
   1b148:	00581f63          	bne	a6,t0,1b166 <__getf2+0xcc>
   1b14c:	ffcfe6e3          	bltu	t6,t3,1b138 <__getf2+0x9e>
   1b150:	01fe1b63          	bne	t3,t6,1b166 <__getf2+0xcc>
   1b154:	fe6f62e3          	bltu	t5,t1,1b138 <__getf2+0x9e>
   1b158:	01e31763          	bne	t1,t5,1b166 <__getf2+0xcc>
   1b15c:	fd1eeee3          	bltu	t4,a7,1b138 <__getf2+0x9e>
   1b160:	4501                	li	a0,0
   1b162:	fdd8fde3          	bgeu	a7,t4,1b13c <__getf2+0xa2>
   1b166:	4505                	li	a0,1
   1b168:	fbf1                	bnez	a5,1b13c <__getf2+0xa2>
   1b16a:	b7e1                	j	1b132 <__getf2+0x98>
   1b16c:	00186073          	csrsi	fflags,16
   1b170:	5579                	li	a0,-2
   1b172:	b7e9                	j	1b13c <__getf2+0xa2>
   1b174:	ff4d                	bnez	a4,1b12e <__getf2+0x94>
   1b176:	fcf691e3          	bne	a3,a5,1b138 <__getf2+0x9e>
   1b17a:	fcc553e3          	bge	a0,a2,1b140 <__getf2+0xa6>
   1b17e:	557d                	li	a0,-1
   1b180:	fed5                	bnez	a3,1b13c <__getf2+0xa2>
   1b182:	4505                	li	a0,1
   1b184:	bf65                	j	1b13c <__getf2+0xa2>

0001b186 <__letf2>:
   1b186:	00052883          	lw	a7,0(a0)
   1b18a:	00452303          	lw	t1,4(a0)
   1b18e:	00852e03          	lw	t3,8(a0)
   1b192:	455c                	lw	a5,12(a0)
   1b194:	0005ae83          	lw	t4,0(a1)
   1b198:	0045af03          	lw	t5,4(a1)
   1b19c:	0085af83          	lw	t6,8(a1)
   1b1a0:	45d4                	lw	a3,12(a1)
   1b1a2:	1141                	addi	sp,sp,-16
   1b1a4:	00202773          	frrm	a4
   1b1a8:	6721                	lui	a4,0x8
   1b1aa:	0107d613          	srli	a2,a5,0x10
   1b1ae:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b1b0:	01079813          	slli	a6,a5,0x10
   1b1b4:	01069293          	slli	t0,a3,0x10
   1b1b8:	0106d513          	srli	a0,a3,0x10
   1b1bc:	8e79                	and	a2,a2,a4
   1b1be:	01085813          	srli	a6,a6,0x10
   1b1c2:	83fd                	srli	a5,a5,0x1f
   1b1c4:	0102d293          	srli	t0,t0,0x10
   1b1c8:	8d79                	and	a0,a0,a4
   1b1ca:	82fd                	srli	a3,a3,0x1f
   1b1cc:	00e61963          	bne	a2,a4,1b1de <__letf2+0x58>
   1b1d0:	01136733          	or	a4,t1,a7
   1b1d4:	01c76733          	or	a4,a4,t3
   1b1d8:	01076733          	or	a4,a4,a6
   1b1dc:	ef35                	bnez	a4,1b258 <__letf2+0xd2>
   1b1de:	6721                	lui	a4,0x8
   1b1e0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b1e2:	00e51963          	bne	a0,a4,1b1f4 <__letf2+0x6e>
   1b1e6:	01eee733          	or	a4,t4,t5
   1b1ea:	01f76733          	or	a4,a4,t6
   1b1ee:	00576733          	or	a4,a4,t0
   1b1f2:	e33d                	bnez	a4,1b258 <__letf2+0xd2>
   1b1f4:	4701                	li	a4,0
   1b1f6:	ea09                	bnez	a2,1b208 <__letf2+0x82>
   1b1f8:	01136733          	or	a4,t1,a7
   1b1fc:	01c76733          	or	a4,a4,t3
   1b200:	01076733          	or	a4,a4,a6
   1b204:	00173713          	seqz	a4,a4
   1b208:	ed21                	bnez	a0,1b260 <__letf2+0xda>
   1b20a:	01eee5b3          	or	a1,t4,t5
   1b20e:	01f5e5b3          	or	a1,a1,t6
   1b212:	0055e5b3          	or	a1,a1,t0
   1b216:	c711                	beqz	a4,1b222 <__letf2+0x9c>
   1b218:	c981                	beqz	a1,1b228 <__letf2+0xa2>
   1b21a:	4505                	li	a0,1
   1b21c:	e691                	bnez	a3,1b228 <__letf2+0xa2>
   1b21e:	557d                	li	a0,-1
   1b220:	a021                	j	1b228 <__letf2+0xa2>
   1b222:	e1a1                	bnez	a1,1b262 <__letf2+0xdc>
   1b224:	557d                	li	a0,-1
   1b226:	c7a1                	beqz	a5,1b26e <__letf2+0xe8>
   1b228:	0141                	addi	sp,sp,16
   1b22a:	8082                	ret
   1b22c:	fea647e3          	blt	a2,a0,1b21a <__letf2+0x94>
   1b230:	ff02eae3          	bltu	t0,a6,1b224 <__letf2+0x9e>
   1b234:	00581f63          	bne	a6,t0,1b252 <__letf2+0xcc>
   1b238:	ffcfe6e3          	bltu	t6,t3,1b224 <__letf2+0x9e>
   1b23c:	01fe1b63          	bne	t3,t6,1b252 <__letf2+0xcc>
   1b240:	fe6f62e3          	bltu	t5,t1,1b224 <__letf2+0x9e>
   1b244:	01e31763          	bne	t1,t5,1b252 <__letf2+0xcc>
   1b248:	fd1eeee3          	bltu	t4,a7,1b224 <__letf2+0x9e>
   1b24c:	4501                	li	a0,0
   1b24e:	fdd8fde3          	bgeu	a7,t4,1b228 <__letf2+0xa2>
   1b252:	4505                	li	a0,1
   1b254:	fbf1                	bnez	a5,1b228 <__letf2+0xa2>
   1b256:	b7e1                	j	1b21e <__letf2+0x98>
   1b258:	00186073          	csrsi	fflags,16
   1b25c:	4509                	li	a0,2
   1b25e:	b7e9                	j	1b228 <__letf2+0xa2>
   1b260:	ff4d                	bnez	a4,1b21a <__letf2+0x94>
   1b262:	fcf691e3          	bne	a3,a5,1b224 <__letf2+0x9e>
   1b266:	fcc553e3          	bge	a0,a2,1b22c <__letf2+0xa6>
   1b26a:	557d                	li	a0,-1
   1b26c:	fed5                	bnez	a3,1b228 <__letf2+0xa2>
   1b26e:	4505                	li	a0,1
   1b270:	bf65                	j	1b228 <__letf2+0xa2>

0001b272 <__multf3>:
   1b272:	7131                	addi	sp,sp,-192
   1b274:	d552                	sw	s4,168(sp)
   1b276:	d356                	sw	s5,164(sp)
   1b278:	d15a                	sw	s6,160(sp)
   1b27a:	cf5e                	sw	s7,156(sp)
   1b27c:	c62a                	sw	a0,12(sp)
   1b27e:	419c                	lw	a5,0(a1)
   1b280:	41c8                	lw	a0,4(a1)
   1b282:	4594                	lw	a3,8(a1)
   1b284:	45d8                	lw	a4,12(a1)
   1b286:	00062a83          	lw	s5,0(a2)
   1b28a:	00462b83          	lw	s7,4(a2)
   1b28e:	00862b03          	lw	s6,8(a2)
   1b292:	00c62a03          	lw	s4,12(a2)
   1b296:	df06                	sw	ra,188(sp)
   1b298:	dd22                	sw	s0,184(sp)
   1b29a:	db26                	sw	s1,180(sp)
   1b29c:	d94a                	sw	s2,176(sp)
   1b29e:	d74e                	sw	s3,172(sp)
   1b2a0:	cd62                	sw	s8,152(sp)
   1b2a2:	cb66                	sw	s9,148(sp)
   1b2a4:	c96a                	sw	s10,144(sp)
   1b2a6:	c76e                	sw	s11,140(sp)
   1b2a8:	002024f3          	frrm	s1
   1b2ac:	6621                	lui	a2,0x8
   1b2ae:	01071413          	slli	s0,a4,0x10
   1b2b2:	8041                	srli	s0,s0,0x10
   1b2b4:	01075913          	srli	s2,a4,0x10
   1b2b8:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   1b2ba:	d0be                	sw	a5,96(sp)
   1b2bc:	d2aa                	sw	a0,100(sp)
   1b2be:	d4b6                	sw	a3,104(sp)
   1b2c0:	d6ba                	sw	a4,108(sp)
   1b2c2:	d83e                	sw	a5,48(sp)
   1b2c4:	da2a                	sw	a0,52(sp)
   1b2c6:	dc36                	sw	a3,56(sp)
   1b2c8:	de22                	sw	s0,60(sp)
   1b2ca:	00c97933          	and	s2,s2,a2
   1b2ce:	01f75993          	srli	s3,a4,0x1f
   1b2d2:	02090a63          	beqz	s2,1b306 <__multf3+0x94>
   1b2d6:	10c90d63          	beq	s2,a2,1b3f0 <__multf3+0x17e>
   1b2da:	6741                	lui	a4,0x10
   1b2dc:	8c59                	or	s0,s0,a4
   1b2de:	de22                	sw	s0,60(sp)
   1b2e0:	1818                	addi	a4,sp,48
   1b2e2:	104c                	addi	a1,sp,36
   1b2e4:	4754                	lw	a3,12(a4)
   1b2e6:	4710                	lw	a2,8(a4)
   1b2e8:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1b2ea:	068e                	slli	a3,a3,0x3
   1b2ec:	8275                	srli	a2,a2,0x1d
   1b2ee:	8ed1                	or	a3,a3,a2
   1b2f0:	cb14                	sw	a3,16(a4)
   1b2f2:	fee599e3          	bne	a1,a4,1b2e4 <__multf3+0x72>
   1b2f6:	078e                	slli	a5,a5,0x3
   1b2f8:	d83e                	sw	a5,48(sp)
   1b2fa:	77f1                	lui	a5,0xffffc
   1b2fc:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffdd57d>
   1b2fe:	993e                	add	s2,s2,a5
   1b300:	4c01                	li	s8,0
   1b302:	4401                	li	s0,0
   1b304:	a211                	j	1b408 <__multf3+0x196>
   1b306:	00a7e733          	or	a4,a5,a0
   1b30a:	8f55                	or	a4,a4,a3
   1b30c:	8f41                	or	a4,a4,s0
   1b30e:	70070d63          	beqz	a4,1ba28 <__multf3+0x7b6>
   1b312:	cc2d                	beqz	s0,1b38c <__multf3+0x11a>
   1b314:	8522                	mv	a0,s0
   1b316:	108020ef          	jal	1d41e <__clzsi2>
   1b31a:	ff450693          	addi	a3,a0,-12
   1b31e:	4056d793          	srai	a5,a3,0x5
   1b322:	8afd                	andi	a3,a3,31
   1b324:	c6d9                	beqz	a3,1b3b2 <__multf3+0x140>
   1b326:	5671                	li	a2,-4
   1b328:	02c78633          	mul	a2,a5,a2
   1b32c:	02000813          	li	a6,32
   1b330:	03010313          	addi	t1,sp,48
   1b334:	40d80833          	sub	a6,a6,a3
   1b338:	00c60713          	addi	a4,a2,12
   1b33c:	971a                	add	a4,a4,t1
   1b33e:	40c00633          	neg	a2,a2
   1b342:	08e31863          	bne	t1,a4,1b3d2 <__multf3+0x160>
   1b346:	fff78713          	addi	a4,a5,-1
   1b34a:	078a                	slli	a5,a5,0x2
   1b34c:	1810                	addi	a2,sp,48
   1b34e:	05078793          	addi	a5,a5,80
   1b352:	97b2                	add	a5,a5,a2
   1b354:	5642                	lw	a2,48(sp)
   1b356:	00d616b3          	sll	a3,a2,a3
   1b35a:	fad7a823          	sw	a3,-80(a5)
   1b35e:	00170793          	addi	a5,a4,1
   1b362:	078a                	slli	a5,a5,0x2
   1b364:	46a1                	li	a3,8
   1b366:	1818                	addi	a4,sp,48
   1b368:	00d7e863          	bltu	a5,a3,1b378 <__multf3+0x106>
   1b36c:	00072023          	sw	zero,0(a4)
   1b370:	00072223          	sw	zero,4(a4)
   1b374:	17e1                	addi	a5,a5,-8
   1b376:	1838                	addi	a4,sp,56
   1b378:	4691                	li	a3,4
   1b37a:	00d7e463          	bltu	a5,a3,1b382 <__multf3+0x110>
   1b37e:	00072023          	sw	zero,0(a4)
   1b382:	7971                	lui	s2,0xffffc
   1b384:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffdd58d>
   1b386:	40a90933          	sub	s2,s2,a0
   1b38a:	bf9d                	j	1b300 <__multf3+0x8e>
   1b38c:	c699                	beqz	a3,1b39a <__multf3+0x128>
   1b38e:	8536                	mv	a0,a3
   1b390:	08e020ef          	jal	1d41e <__clzsi2>
   1b394:	02050513          	addi	a0,a0,32
   1b398:	b749                	j	1b31a <__multf3+0xa8>
   1b39a:	c511                	beqz	a0,1b3a6 <__multf3+0x134>
   1b39c:	082020ef          	jal	1d41e <__clzsi2>
   1b3a0:	04050513          	addi	a0,a0,64
   1b3a4:	bf9d                	j	1b31a <__multf3+0xa8>
   1b3a6:	853e                	mv	a0,a5
   1b3a8:	076020ef          	jal	1d41e <__clzsi2>
   1b3ac:	06050513          	addi	a0,a0,96
   1b3b0:	b7ad                	j	1b31a <__multf3+0xa8>
   1b3b2:	5671                	li	a2,-4
   1b3b4:	02c78633          	mul	a2,a5,a2
   1b3b8:	1878                	addi	a4,sp,60
   1b3ba:	468d                	li	a3,3
   1b3bc:	00c705b3          	add	a1,a4,a2
   1b3c0:	418c                	lw	a1,0(a1)
   1b3c2:	16fd                	addi	a3,a3,-1
   1b3c4:	1771                	addi	a4,a4,-4
   1b3c6:	c34c                	sw	a1,4(a4)
   1b3c8:	fef6dae3          	bge	a3,a5,1b3bc <__multf3+0x14a>
   1b3cc:	fff78713          	addi	a4,a5,-1
   1b3d0:	b779                	j	1b35e <__multf3+0xec>
   1b3d2:	430c                	lw	a1,0(a4)
   1b3d4:	ffc72883          	lw	a7,-4(a4)
   1b3d8:	00c70e33          	add	t3,a4,a2
   1b3dc:	00d595b3          	sll	a1,a1,a3
   1b3e0:	0108d8b3          	srl	a7,a7,a6
   1b3e4:	0115e5b3          	or	a1,a1,a7
   1b3e8:	00be2023          	sw	a1,0(t3)
   1b3ec:	1771                	addi	a4,a4,-4
   1b3ee:	bf91                	j	1b342 <__multf3+0xd0>
   1b3f0:	8fc9                	or	a5,a5,a0
   1b3f2:	8fd5                	or	a5,a5,a3
   1b3f4:	8fc1                	or	a5,a5,s0
   1b3f6:	62078c63          	beqz	a5,1ba2e <__multf3+0x7bc>
   1b3fa:	0442                	slli	s0,s0,0x10
   1b3fc:	8441                	srai	s0,s0,0x10
   1b3fe:	fff44413          	not	s0,s0
   1b402:	807d                	srli	s0,s0,0x1f
   1b404:	0412                	slli	s0,s0,0x4
   1b406:	4c0d                	li	s8,3
   1b408:	010a1513          	slli	a0,s4,0x10
   1b40c:	6721                	lui	a4,0x8
   1b40e:	010a5793          	srli	a5,s4,0x10
   1b412:	8141                	srli	a0,a0,0x10
   1b414:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b416:	d6d2                	sw	s4,108(sp)
   1b418:	d0d6                	sw	s5,96(sp)
   1b41a:	d2de                	sw	s7,100(sp)
   1b41c:	d4da                	sw	s6,104(sp)
   1b41e:	c0d6                	sw	s5,64(sp)
   1b420:	c2de                	sw	s7,68(sp)
   1b422:	c4da                	sw	s6,72(sp)
   1b424:	c6aa                	sw	a0,76(sp)
   1b426:	8ff9                	and	a5,a5,a4
   1b428:	01fa5a13          	srli	s4,s4,0x1f
   1b42c:	60078363          	beqz	a5,1ba32 <__multf3+0x7c0>
   1b430:	6ee78863          	beq	a5,a4,1bb20 <__multf3+0x8ae>
   1b434:	6741                	lui	a4,0x10
   1b436:	8d59                	or	a0,a0,a4
   1b438:	c6aa                	sw	a0,76(sp)
   1b43a:	0098                	addi	a4,sp,64
   1b43c:	184c                	addi	a1,sp,52
   1b43e:	4754                	lw	a3,12(a4)
   1b440:	4710                	lw	a2,8(a4)
   1b442:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1b444:	068e                	slli	a3,a3,0x3
   1b446:	8275                	srli	a2,a2,0x1d
   1b448:	8ed1                	or	a3,a3,a2
   1b44a:	cb14                	sw	a3,16(a4)
   1b44c:	fee599e3          	bne	a1,a4,1b43e <__multf3+0x1cc>
   1b450:	7771                	lui	a4,0xffffc
   1b452:	0a8e                	slli	s5,s5,0x3
   1b454:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffdd57d>
   1b456:	c0d6                	sw	s5,64(sp)
   1b458:	97ba                	add	a5,a5,a4
   1b45a:	4681                	li	a3,0
   1b45c:	97ca                	add	a5,a5,s2
   1b45e:	ca3e                	sw	a5,20(sp)
   1b460:	0785                	addi	a5,a5,1
   1b462:	c83e                	sw	a5,16(sp)
   1b464:	002c1793          	slli	a5,s8,0x2
   1b468:	8fd5                	or	a5,a5,a3
   1b46a:	4729                	li	a4,10
   1b46c:	70f74363          	blt	a4,a5,1bb72 <__multf3+0x900>
   1b470:	4609                	li	a2,2
   1b472:	0149c733          	xor	a4,s3,s4
   1b476:	6cf64863          	blt	a2,a5,1bb46 <__multf3+0x8d4>
   1b47a:	17fd                	addi	a5,a5,-1
   1b47c:	4605                	li	a2,1
   1b47e:	70f67263          	bgeu	a2,a5,1bb82 <__multf3+0x910>
   1b482:	5542                	lw	a0,48(sp)
   1b484:	4306                	lw	t1,64(sp)
   1b486:	6841                	lui	a6,0x10
   1b488:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   1b48c:	01055913          	srli	s2,a0,0x10
   1b490:	01035393          	srli	t2,t1,0x10
   1b494:	8d6d                	and	a0,a0,a1
   1b496:	00b37333          	and	t1,t1,a1
   1b49a:	02a30633          	mul	a2,t1,a0
   1b49e:	026908b3          	mul	a7,s2,t1
   1b4a2:	01065793          	srli	a5,a2,0x10
   1b4a6:	02a386b3          	mul	a3,t2,a0
   1b4aa:	96c6                	add	a3,a3,a7
   1b4ac:	97b6                	add	a5,a5,a3
   1b4ae:	02790bb3          	mul	s7,s2,t2
   1b4b2:	0117f363          	bgeu	a5,a7,1b4b8 <__multf3+0x246>
   1b4b6:	9bc2                	add	s7,s7,a6
   1b4b8:	4896                	lw	a7,68(sp)
   1b4ba:	0107d693          	srli	a3,a5,0x10
   1b4be:	8fed                	and	a5,a5,a1
   1b4c0:	8e6d                	and	a2,a2,a1
   1b4c2:	07c2                	slli	a5,a5,0x10
   1b4c4:	97b2                	add	a5,a5,a2
   1b4c6:	0108df93          	srli	t6,a7,0x10
   1b4ca:	00b8f8b3          	and	a7,a7,a1
   1b4ce:	031905b3          	mul	a1,s2,a7
   1b4d2:	d03e                	sw	a5,32(sp)
   1b4d4:	d0be                	sw	a5,96(sp)
   1b4d6:	02af8633          	mul	a2,t6,a0
   1b4da:	02a887b3          	mul	a5,a7,a0
   1b4de:	962e                	add	a2,a2,a1
   1b4e0:	0107d813          	srli	a6,a5,0x10
   1b4e4:	9832                	add	a6,a6,a2
   1b4e6:	03f90b33          	mul	s6,s2,t6
   1b4ea:	00b87463          	bgeu	a6,a1,1b4f2 <__multf3+0x280>
   1b4ee:	6641                	lui	a2,0x10
   1b4f0:	9b32                	add	s6,s6,a2
   1b4f2:	01085613          	srli	a2,a6,0x10
   1b4f6:	55d2                	lw	a1,52(sp)
   1b4f8:	cc32                	sw	a2,24(sp)
   1b4fa:	6641                	lui	a2,0x10
   1b4fc:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   1b500:	01d87833          	and	a6,a6,t4
   1b504:	01d7f7b3          	and	a5,a5,t4
   1b508:	0105d293          	srli	t0,a1,0x10
   1b50c:	0842                	slli	a6,a6,0x10
   1b50e:	01d5f5b3          	and	a1,a1,t4
   1b512:	983e                	add	a6,a6,a5
   1b514:	02628a33          	mul	s4,t0,t1
   1b518:	96c2                	add	a3,a3,a6
   1b51a:	026587b3          	mul	a5,a1,t1
   1b51e:	02b38eb3          	mul	t4,t2,a1
   1b522:	0107d993          	srli	s3,a5,0x10
   1b526:	9ed2                	add	t4,t4,s4
   1b528:	99f6                	add	s3,s3,t4
   1b52a:	02538f33          	mul	t5,t2,t0
   1b52e:	0149f363          	bgeu	s3,s4,1b534 <__multf3+0x2c2>
   1b532:	9f32                	add	t5,t5,a2
   1b534:	6c41                	lui	s8,0x10
   1b536:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   1b53a:	8ff1                	and	a5,a5,a2
   1b53c:	0109da13          	srli	s4,s3,0x10
   1b540:	00c9f9b3          	and	s3,s3,a2
   1b544:	09c2                	slli	s3,s3,0x10
   1b546:	99be                	add	s3,s3,a5
   1b548:	02b88eb3          	mul	t4,a7,a1
   1b54c:	9a7a                	add	s4,s4,t5
   1b54e:	03128633          	mul	a2,t0,a7
   1b552:	010ed793          	srli	a5,t4,0x10
   1b556:	02bf8ab3          	mul	s5,t6,a1
   1b55a:	9ab2                	add	s5,s5,a2
   1b55c:	97d6                	add	a5,a5,s5
   1b55e:	025f8f33          	mul	t5,t6,t0
   1b562:	00c7f363          	bgeu	a5,a2,1b568 <__multf3+0x2f6>
   1b566:	9f62                	add	t5,t5,s8
   1b568:	0107d613          	srli	a2,a5,0x10
   1b56c:	967a                	add	a2,a2,t5
   1b56e:	6ac1                	lui	s5,0x10
   1b570:	ce32                	sw	a2,28(sp)
   1b572:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   1b576:	8ff1                	and	a5,a5,a2
   1b578:	00cefeb3          	and	t4,t4,a2
   1b57c:	07c2                	slli	a5,a5,0x10
   1b57e:	97f6                	add	a5,a5,t4
   1b580:	d23e                	sw	a5,36(sp)
   1b582:	47a6                	lw	a5,72(sp)
   1b584:	0107dd93          	srli	s11,a5,0x10
   1b588:	00c7fd33          	and	s10,a5,a2
   1b58c:	02ad0633          	mul	a2,s10,a0
   1b590:	03a90c33          	mul	s8,s2,s10
   1b594:	01065793          	srli	a5,a2,0x10
   1b598:	02ad8f33          	mul	t5,s11,a0
   1b59c:	9f62                	add	t5,t5,s8
   1b59e:	97fa                	add	a5,a5,t5
   1b5a0:	03b90eb3          	mul	t4,s2,s11
   1b5a4:	0187f363          	bgeu	a5,s8,1b5aa <__multf3+0x338>
   1b5a8:	9ed6                	add	t4,t4,s5
   1b5aa:	0107df13          	srli	t5,a5,0x10
   1b5ae:	6cc1                	lui	s9,0x10
   1b5b0:	01df0e33          	add	t3,t5,t4
   1b5b4:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   1b5b8:	01d7f7b3          	and	a5,a5,t4
   1b5bc:	01d67633          	and	a2,a2,t4
   1b5c0:	07c2                	slli	a5,a5,0x10
   1b5c2:	97b2                	add	a5,a5,a2
   1b5c4:	5662                	lw	a2,56(sp)
   1b5c6:	d472                	sw	t3,40(sp)
   1b5c8:	d63e                	sw	a5,44(sp)
   1b5ca:	01065f13          	srli	t5,a2,0x10
   1b5ce:	01d67633          	and	a2,a2,t4
   1b5d2:	02660ab3          	mul	s5,a2,t1
   1b5d6:	026f0e33          	mul	t3,t5,t1
   1b5da:	010ad793          	srli	a5,s5,0x10
   1b5de:	02c38eb3          	mul	t4,t2,a2
   1b5e2:	9ef2                	add	t4,t4,t3
   1b5e4:	9ebe                	add	t4,t4,a5
   1b5e6:	03e38c33          	mul	s8,t2,t5
   1b5ea:	01cef363          	bgeu	t4,t3,1b5f0 <__multf3+0x37e>
   1b5ee:	9c66                	add	s8,s8,s9
   1b5f0:	47e2                	lw	a5,24(sp)
   1b5f2:	96de                	add	a3,a3,s7
   1b5f4:	0106b833          	sltu	a6,a3,a6
   1b5f8:	010edc93          	srli	s9,t4,0x10
   1b5fc:	6e41                	lui	t3,0x10
   1b5fe:	9c66                	add	s8,s8,s9
   1b600:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   1b604:	01078e33          	add	t3,a5,a6
   1b608:	013687b3          	add	a5,a3,s3
   1b60c:	9e5a                	add	t3,t3,s6
   1b60e:	00d7b6b3          	sltu	a3,a5,a3
   1b612:	cc3e                	sw	a5,24(sp)
   1b614:	d2be                	sw	a5,100(sp)
   1b616:	5792                	lw	a5,36(sp)
   1b618:	9a72                	add	s4,s4,t3
   1b61a:	96d2                	add	a3,a3,s4
   1b61c:	01ca39b3          	sltu	s3,s4,t3
   1b620:	0146ba33          	sltu	s4,a3,s4
   1b624:	010e3e33          	sltu	t3,t3,a6
   1b628:	00f68833          	add	a6,a3,a5
   1b62c:	47f2                	lw	a5,28(sp)
   1b62e:	0149e9b3          	or	s3,s3,s4
   1b632:	9e4e                	add	t3,t3,s3
   1b634:	00fe09b3          	add	s3,t3,a5
   1b638:	57b2                	lw	a5,44(sp)
   1b63a:	5a22                	lw	s4,40(sp)
   1b63c:	00d836b3          	sltu	a3,a6,a3
   1b640:	019efeb3          	and	t4,t4,s9
   1b644:	96ce                	add	a3,a3,s3
   1b646:	97c2                	add	a5,a5,a6
   1b648:	0ec2                	slli	t4,t4,0x10
   1b64a:	019afab3          	and	s5,s5,s9
   1b64e:	9a36                	add	s4,s4,a3
   1b650:	0107b833          	sltu	a6,a5,a6
   1b654:	9ed6                	add	t4,t4,s5
   1b656:	9ebe                	add	t4,t4,a5
   1b658:	9852                	add	a6,a6,s4
   1b65a:	9c42                	add	s8,s8,a6
   1b65c:	00feb7b3          	sltu	a5,t4,a5
   1b660:	ce76                	sw	t4,28(sp)
   1b662:	d4f6                	sw	t4,104(sp)
   1b664:	4eb6                	lw	t4,76(sp)
   1b666:	01c9be33          	sltu	t3,s3,t3
   1b66a:	97e2                	add	a5,a5,s8
   1b66c:	0136b9b3          	sltu	s3,a3,s3
   1b670:	00da36b3          	sltu	a3,s4,a3
   1b674:	01483a33          	sltu	s4,a6,s4
   1b678:	013e69b3          	or	s3,t3,s3
   1b67c:	0146e6b3          	or	a3,a3,s4
   1b680:	010c3833          	sltu	a6,s8,a6
   1b684:	0187bc33          	sltu	s8,a5,s8
   1b688:	96ce                	add	a3,a3,s3
   1b68a:	01886833          	or	a6,a6,s8
   1b68e:	010ed993          	srli	s3,t4,0x10
   1b692:	019efeb3          	and	t4,t4,s9
   1b696:	03d90a33          	mul	s4,s2,t4
   1b69a:	00d80e33          	add	t3,a6,a3
   1b69e:	02ae86b3          	mul	a3,t4,a0
   1b6a2:	02a98533          	mul	a0,s3,a0
   1b6a6:	0106d813          	srli	a6,a3,0x10
   1b6aa:	9552                	add	a0,a0,s4
   1b6ac:	982a                	add	a6,a6,a0
   1b6ae:	03390933          	mul	s2,s2,s3
   1b6b2:	01487463          	bgeu	a6,s4,1b6ba <__multf3+0x448>
   1b6b6:	6541                	lui	a0,0x10
   1b6b8:	992a                	add	s2,s2,a0
   1b6ba:	01085513          	srli	a0,a6,0x10
   1b6be:	954a                	add	a0,a0,s2
   1b6c0:	5a72                	lw	s4,60(sp)
   1b6c2:	6ac1                	lui	s5,0x10
   1b6c4:	d22a                	sw	a0,36(sp)
   1b6c6:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   1b6ca:	00a87833          	and	a6,a6,a0
   1b6ce:	010a5913          	srli	s2,s4,0x10
   1b6d2:	0842                	slli	a6,a6,0x10
   1b6d4:	8ee9                	and	a3,a3,a0
   1b6d6:	00aa7a33          	and	s4,s4,a0
   1b6da:	96c2                	add	a3,a3,a6
   1b6dc:	026a0533          	mul	a0,s4,t1
   1b6e0:	d436                	sw	a3,40(sp)
   1b6e2:	02690333          	mul	t1,s2,t1
   1b6e6:	01055693          	srli	a3,a0,0x10
   1b6ea:	03238833          	mul	a6,t2,s2
   1b6ee:	034383b3          	mul	t2,t2,s4
   1b6f2:	939a                	add	t2,t2,t1
   1b6f4:	969e                	add	a3,a3,t2
   1b6f6:	0066f363          	bgeu	a3,t1,1b6fc <__multf3+0x48a>
   1b6fa:	9856                	add	a6,a6,s5
   1b6fc:	0106da93          	srli	s5,a3,0x10
   1b700:	6bc1                	lui	s7,0x10
   1b702:	9ac2                	add	s5,s5,a6
   1b704:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   1b708:	01057533          	and	a0,a0,a6
   1b70c:	0106f6b3          	and	a3,a3,a6
   1b710:	03a28333          	mul	t1,t0,s10
   1b714:	06c2                	slli	a3,a3,0x10
   1b716:	96aa                	add	a3,a3,a0
   1b718:	03a58833          	mul	a6,a1,s10
   1b71c:	02bd83b3          	mul	t2,s11,a1
   1b720:	01085513          	srli	a0,a6,0x10
   1b724:	939a                	add	t2,t2,t1
   1b726:	951e                	add	a0,a0,t2
   1b728:	03b28b33          	mul	s6,t0,s11
   1b72c:	00657363          	bgeu	a0,t1,1b732 <__multf3+0x4c0>
   1b730:	9b5e                	add	s6,s6,s7
   1b732:	6c41                	lui	s8,0x10
   1b734:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   1b738:	01055393          	srli	t2,a0,0x10
   1b73c:	00657533          	and	a0,a0,t1
   1b740:	00687833          	and	a6,a6,t1
   1b744:	0542                	slli	a0,a0,0x10
   1b746:	93da                	add	t2,t2,s6
   1b748:	02cf8333          	mul	t1,t6,a2
   1b74c:	9542                	add	a0,a0,a6
   1b74e:	031f0b33          	mul	s6,t5,a7
   1b752:	02c88833          	mul	a6,a7,a2
   1b756:	935a                	add	t1,t1,s6
   1b758:	01085c93          	srli	s9,a6,0x10
   1b75c:	9366                	add	t1,t1,s9
   1b75e:	03ef8bb3          	mul	s7,t6,t5
   1b762:	01637363          	bgeu	t1,s6,1b768 <__multf3+0x4f6>
   1b766:	9be2                	add	s7,s7,s8
   1b768:	01035b13          	srli	s6,t1,0x10
   1b76c:	9b5e                	add	s6,s6,s7
   1b76e:	6bc1                	lui	s7,0x10
   1b770:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   1b774:	01837333          	and	t1,t1,s8
   1b778:	0342                	slli	t1,t1,0x10
   1b77a:	01887833          	and	a6,a6,s8
   1b77e:	981a                	add	a6,a6,t1
   1b780:	5322                	lw	t1,40(sp)
   1b782:	5c12                	lw	s8,36(sp)
   1b784:	933e                	add	t1,t1,a5
   1b786:	9c72                	add	s8,s8,t3
   1b788:	00f337b3          	sltu	a5,t1,a5
   1b78c:	97e2                	add	a5,a5,s8
   1b78e:	969a                	add	a3,a3,t1
   1b790:	9abe                	add	s5,s5,a5
   1b792:	0066b333          	sltu	t1,a3,t1
   1b796:	9356                	add	t1,t1,s5
   1b798:	9536                	add	a0,a0,a3
   1b79a:	939a                	add	t2,t2,t1
   1b79c:	00d536b3          	sltu	a3,a0,a3
   1b7a0:	969e                	add	a3,a3,t2
   1b7a2:	982a                	add	a6,a6,a0
   1b7a4:	01cc3e33          	sltu	t3,s8,t3
   1b7a8:	9b36                	add	s6,s6,a3
   1b7aa:	0187bc33          	sltu	s8,a5,s8
   1b7ae:	00a83533          	sltu	a0,a6,a0
   1b7b2:	00fab7b3          	sltu	a5,s5,a5
   1b7b6:	01533ab3          	sltu	s5,t1,s5
   1b7ba:	018e6c33          	or	s8,t3,s8
   1b7be:	0157e7b3          	or	a5,a5,s5
   1b7c2:	0063b333          	sltu	t1,t2,t1
   1b7c6:	955a                	add	a0,a0,s6
   1b7c8:	0076b3b3          	sltu	t2,a3,t2
   1b7cc:	97e2                	add	a5,a5,s8
   1b7ce:	00736333          	or	t1,t1,t2
   1b7d2:	00db36b3          	sltu	a3,s6,a3
   1b7d6:	01653b33          	sltu	s6,a0,s6
   1b7da:	00f303b3          	add	t2,t1,a5
   1b7de:	0166e6b3          	or	a3,a3,s6
   1b7e2:	00768333          	add	t1,a3,t2
   1b7e6:	03af0e33          	mul	t3,t5,s10
   1b7ea:	d6c2                	sw	a6,108(sp)
   1b7ec:	03a606b3          	mul	a3,a2,s10
   1b7f0:	02cd8ab3          	mul	s5,s11,a2
   1b7f4:	0106d793          	srli	a5,a3,0x10
   1b7f8:	9af2                	add	s5,s5,t3
   1b7fa:	97d6                	add	a5,a5,s5
   1b7fc:	03ed83b3          	mul	t2,s11,t5
   1b800:	01c7f363          	bgeu	a5,t3,1b806 <__multf3+0x594>
   1b804:	93de                	add	t2,t2,s7
   1b806:	0107de13          	srli	t3,a5,0x10
   1b80a:	6ac1                	lui	s5,0x10
   1b80c:	9e1e                	add	t3,t3,t2
   1b80e:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   1b812:	0077f7b3          	and	a5,a5,t2
   1b816:	0076f6b3          	and	a3,a3,t2
   1b81a:	07c2                	slli	a5,a5,0x10
   1b81c:	03d28b33          	mul	s6,t0,t4
   1b820:	97b6                	add	a5,a5,a3
   1b822:	02be86b3          	mul	a3,t4,a1
   1b826:	02b985b3          	mul	a1,s3,a1
   1b82a:	0106d393          	srli	t2,a3,0x10
   1b82e:	95da                	add	a1,a1,s6
   1b830:	93ae                	add	t2,t2,a1
   1b832:	033282b3          	mul	t0,t0,s3
   1b836:	0163f363          	bgeu	t2,s6,1b83c <__multf3+0x5ca>
   1b83a:	92d6                	add	t0,t0,s5
   1b83c:	0103d593          	srli	a1,t2,0x10
   1b840:	6b41                	lui	s6,0x10
   1b842:	92ae                	add	t0,t0,a1
   1b844:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   1b848:	8eed                	and	a3,a3,a1
   1b84a:	00b3f3b3          	and	t2,t2,a1
   1b84e:	03c2                	slli	t2,t2,0x10
   1b850:	031a05b3          	mul	a1,s4,a7
   1b854:	93b6                	add	t2,t2,a3
   1b856:	031908b3          	mul	a7,s2,a7
   1b85a:	0105d693          	srli	a3,a1,0x10
   1b85e:	032f8ab3          	mul	s5,t6,s2
   1b862:	034f8fb3          	mul	t6,t6,s4
   1b866:	9fc6                	add	t6,t6,a7
   1b868:	96fe                	add	a3,a3,t6
   1b86a:	0116f363          	bgeu	a3,a7,1b870 <__multf3+0x5fe>
   1b86e:	9ada                	add	s5,s5,s6
   1b870:	0106df93          	srli	t6,a3,0x10
   1b874:	68c1                	lui	a7,0x10
   1b876:	9fd6                	add	t6,t6,s5
   1b878:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   1b87c:	0156f6b3          	and	a3,a3,s5
   1b880:	0155f5b3          	and	a1,a1,s5
   1b884:	06c2                	slli	a3,a3,0x10
   1b886:	03df0ab3          	mul	s5,t5,t4
   1b88a:	96ae                	add	a3,a3,a1
   1b88c:	03d605b3          	mul	a1,a2,t4
   1b890:	02c98633          	mul	a2,s3,a2
   1b894:	01560b33          	add	s6,a2,s5
   1b898:	0105d613          	srli	a2,a1,0x10
   1b89c:	965a                	add	a2,a2,s6
   1b89e:	033f0f33          	mul	t5,t5,s3
   1b8a2:	01567363          	bgeu	a2,s5,1b8a8 <__multf3+0x636>
   1b8a6:	9f46                	add	t5,t5,a7
   1b8a8:	6ac1                	lui	s5,0x10
   1b8aa:	01065893          	srli	a7,a2,0x10
   1b8ae:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   1b8b2:	9f46                	add	t5,t5,a7
   1b8b4:	016678b3          	and	a7,a2,s6
   1b8b8:	0165f5b3          	and	a1,a1,s6
   1b8bc:	08c2                	slli	a7,a7,0x10
   1b8be:	03aa0633          	mul	a2,s4,s10
   1b8c2:	98ae                	add	a7,a7,a1
   1b8c4:	03a90bb3          	mul	s7,s2,s10
   1b8c8:	01065c13          	srli	s8,a2,0x10
   1b8cc:	034d85b3          	mul	a1,s11,s4
   1b8d0:	95de                	add	a1,a1,s7
   1b8d2:	95e2                	add	a1,a1,s8
   1b8d4:	032d8b33          	mul	s6,s11,s2
   1b8d8:	0175f363          	bgeu	a1,s7,1b8de <__multf3+0x66c>
   1b8dc:	9b56                	add	s6,s6,s5
   1b8de:	97aa                	add	a5,a5,a0
   1b8e0:	9e1a                	add	t3,t3,t1
   1b8e2:	00a7b533          	sltu	a0,a5,a0
   1b8e6:	9572                	add	a0,a0,t3
   1b8e8:	93be                	add	t2,t2,a5
   1b8ea:	92aa                	add	t0,t0,a0
   1b8ec:	00f3b7b3          	sltu	a5,t2,a5
   1b8f0:	9796                	add	a5,a5,t0
   1b8f2:	006e3333          	sltu	t1,t3,t1
   1b8f6:	01c53e33          	sltu	t3,a0,t3
   1b8fa:	00a2b533          	sltu	a0,t0,a0
   1b8fe:	0057b2b3          	sltu	t0,a5,t0
   1b902:	00556533          	or	a0,a0,t0
   1b906:	01c36333          	or	t1,t1,t3
   1b90a:	932a                	add	t1,t1,a0
   1b90c:	03da0533          	mul	a0,s4,t4
   1b910:	969e                	add	a3,a3,t2
   1b912:	9fbe                	add	t6,t6,a5
   1b914:	0105da93          	srli	s5,a1,0x10
   1b918:	d8b6                	sw	a3,112(sp)
   1b91a:	0076b6b3          	sltu	a3,a3,t2
   1b91e:	96fe                	add	a3,a3,t6
   1b920:	9ada                	add	s5,s5,s6
   1b922:	6b41                	lui	s6,0x10
   1b924:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   1b928:	03d90eb3          	mul	t4,s2,t4
   1b92c:	00ffb7b3          	sltu	a5,t6,a5
   1b930:	01f6bfb3          	sltu	t6,a3,t6
   1b934:	0175f5b3          	and	a1,a1,s7
   1b938:	01f7e7b3          	or	a5,a5,t6
   1b93c:	98b6                	add	a7,a7,a3
   1b93e:	05c2                	slli	a1,a1,0x10
   1b940:	979a                	add	a5,a5,t1
   1b942:	01767633          	and	a2,a2,s7
   1b946:	9f3e                	add	t5,t5,a5
   1b948:	03298933          	mul	s2,s3,s2
   1b94c:	962e                	add	a2,a2,a1
   1b94e:	00d8b6b3          	sltu	a3,a7,a3
   1b952:	96fa                	add	a3,a3,t5
   1b954:	9646                	add	a2,a2,a7
   1b956:	00ff37b3          	sltu	a5,t5,a5
   1b95a:	9ab6                	add	s5,s5,a3
   1b95c:	01e6bf33          	sltu	t5,a3,t5
   1b960:	dab2                	sw	a2,116(sp)
   1b962:	01163633          	sltu	a2,a2,a7
   1b966:	034989b3          	mul	s3,s3,s4
   1b96a:	01e7e5b3          	or	a1,a5,t5
   1b96e:	9656                	add	a2,a2,s5
   1b970:	01055793          	srli	a5,a0,0x10
   1b974:	00dab6b3          	sltu	a3,s5,a3
   1b978:	01563ab3          	sltu	s5,a2,s5
   1b97c:	0156e6b3          	or	a3,a3,s5
   1b980:	99f6                	add	s3,s3,t4
   1b982:	97ce                	add	a5,a5,s3
   1b984:	01d7f363          	bgeu	a5,t4,1b98a <__multf3+0x718>
   1b988:	995a                	add	s2,s2,s6
   1b98a:	0107d893          	srli	a7,a5,0x10
   1b98e:	95c6                	add	a1,a1,a7
   1b990:	68c1                	lui	a7,0x10
   1b992:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   1b994:	0117f7b3          	and	a5,a5,a7
   1b998:	07c2                	slli	a5,a5,0x10
   1b99a:	01157533          	and	a0,a0,a7
   1b99e:	97aa                	add	a5,a5,a0
   1b9a0:	97b2                	add	a5,a5,a2
   1b9a2:	96ae                	add	a3,a3,a1
   1b9a4:	00c7b633          	sltu	a2,a5,a2
   1b9a8:	9636                	add	a2,a2,a3
   1b9aa:	dcbe                	sw	a5,120(sp)
   1b9ac:	46e2                	lw	a3,24(sp)
   1b9ae:	5782                	lw	a5,32(sp)
   1b9b0:	964a                	add	a2,a2,s2
   1b9b2:	0836                	slli	a6,a6,0xd
   1b9b4:	8fd5                	or	a5,a5,a3
   1b9b6:	46f2                	lw	a3,28(sp)
   1b9b8:	deb2                	sw	a2,124(sp)
   1b9ba:	188c                	addi	a1,sp,112
   1b9bc:	8fd5                	or	a5,a5,a3
   1b9be:	00f86833          	or	a6,a6,a5
   1b9c2:	109c                	addi	a5,sp,96
   1b9c4:	47d4                	lw	a3,12(a5)
   1b9c6:	4b90                	lw	a2,16(a5)
   1b9c8:	82cd                	srli	a3,a3,0x13
   1b9ca:	0636                	slli	a2,a2,0xd
   1b9cc:	8ed1                	or	a3,a3,a2
   1b9ce:	c394                	sw	a3,0(a5)
   1b9d0:	0791                	addi	a5,a5,4
   1b9d2:	fef599e3          	bne	a1,a5,1b9c4 <__multf3+0x752>
   1b9d6:	5786                	lw	a5,96(sp)
   1b9d8:	01003833          	snez	a6,a6
   1b9dc:	56b6                	lw	a3,108(sp)
   1b9de:	00f86833          	or	a6,a6,a5
   1b9e2:	57a6                	lw	a5,104(sp)
   1b9e4:	ceb6                	sw	a3,92(sp)
   1b9e6:	c8c2                	sw	a6,80(sp)
   1b9e8:	ccbe                	sw	a5,88(sp)
   1b9ea:	5796                	lw	a5,100(sp)
   1b9ec:	cabe                	sw	a5,84(sp)
   1b9ee:	00b69793          	slli	a5,a3,0xb
   1b9f2:	0207d863          	bgez	a5,1ba22 <__multf3+0x7b0>
   1b9f6:	087e                	slli	a6,a6,0x1f
   1b9f8:	089c                	addi	a5,sp,80
   1b9fa:	08e8                	addi	a0,sp,92
   1b9fc:	4390                	lw	a2,0(a5)
   1b9fe:	43cc                	lw	a1,4(a5)
   1ba00:	8205                	srli	a2,a2,0x1
   1ba02:	05fe                	slli	a1,a1,0x1f
   1ba04:	8e4d                	or	a2,a2,a1
   1ba06:	c390                	sw	a2,0(a5)
   1ba08:	0791                	addi	a5,a5,4
   1ba0a:	fef519e3          	bne	a0,a5,1b9fc <__multf3+0x78a>
   1ba0e:	47c6                	lw	a5,80(sp)
   1ba10:	01003833          	snez	a6,a6
   1ba14:	8285                	srli	a3,a3,0x1
   1ba16:	0107e7b3          	or	a5,a5,a6
   1ba1a:	c8be                	sw	a5,80(sp)
   1ba1c:	47c2                	lw	a5,16(sp)
   1ba1e:	ceb6                	sw	a3,92(sp)
   1ba20:	ca3e                	sw	a5,20(sp)
   1ba22:	47d2                	lw	a5,20(sp)
   1ba24:	c83e                	sw	a5,16(sp)
   1ba26:	aa41                	j	1bbb6 <__multf3+0x944>
   1ba28:	4901                	li	s2,0
   1ba2a:	4c05                	li	s8,1
   1ba2c:	b8d9                	j	1b302 <__multf3+0x90>
   1ba2e:	4c09                	li	s8,2
   1ba30:	b8c9                	j	1b302 <__multf3+0x90>
   1ba32:	017ae7b3          	or	a5,s5,s7
   1ba36:	0167e7b3          	or	a5,a5,s6
   1ba3a:	8fc9                	or	a5,a5,a0
   1ba3c:	10078263          	beqz	a5,1bb40 <__multf3+0x8ce>
   1ba40:	c93d                	beqz	a0,1bab6 <__multf3+0x844>
   1ba42:	1dd010ef          	jal	1d41e <__clzsi2>
   1ba46:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   1ba4a:	4056d793          	srai	a5,a3,0x5
   1ba4e:	8afd                	andi	a3,a3,31
   1ba50:	cac9                	beqz	a3,1bae2 <__multf3+0x870>
   1ba52:	5671                	li	a2,-4
   1ba54:	02c78633          	mul	a2,a5,a2
   1ba58:	02000813          	li	a6,32
   1ba5c:	04010313          	addi	t1,sp,64
   1ba60:	40d80833          	sub	a6,a6,a3
   1ba64:	00c60713          	addi	a4,a2,12
   1ba68:	971a                	add	a4,a4,t1
   1ba6a:	40c00633          	neg	a2,a2
   1ba6e:	08e31a63          	bne	t1,a4,1bb02 <__multf3+0x890>
   1ba72:	fff78713          	addi	a4,a5,-1
   1ba76:	078a                	slli	a5,a5,0x2
   1ba78:	1810                	addi	a2,sp,48
   1ba7a:	05078793          	addi	a5,a5,80
   1ba7e:	97b2                	add	a5,a5,a2
   1ba80:	4606                	lw	a2,64(sp)
   1ba82:	00d616b3          	sll	a3,a2,a3
   1ba86:	fcd7a023          	sw	a3,-64(a5)
   1ba8a:	00170793          	addi	a5,a4,1
   1ba8e:	078a                	slli	a5,a5,0x2
   1ba90:	46a1                	li	a3,8
   1ba92:	0098                	addi	a4,sp,64
   1ba94:	00d7e863          	bltu	a5,a3,1baa4 <__multf3+0x832>
   1ba98:	00072023          	sw	zero,0(a4)
   1ba9c:	00072223          	sw	zero,4(a4)
   1baa0:	17e1                	addi	a5,a5,-8
   1baa2:	00b8                	addi	a4,sp,72
   1baa4:	4691                	li	a3,4
   1baa6:	00d7e463          	bltu	a5,a3,1baae <__multf3+0x83c>
   1baaa:	00072023          	sw	zero,0(a4)
   1baae:	77f1                	lui	a5,0xffffc
   1bab0:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffdd58d>
   1bab2:	8f89                	sub	a5,a5,a0
   1bab4:	b25d                	j	1b45a <__multf3+0x1e8>
   1bab6:	000b0863          	beqz	s6,1bac6 <__multf3+0x854>
   1baba:	855a                	mv	a0,s6
   1babc:	163010ef          	jal	1d41e <__clzsi2>
   1bac0:	02050513          	addi	a0,a0,32
   1bac4:	b749                	j	1ba46 <__multf3+0x7d4>
   1bac6:	000b8863          	beqz	s7,1bad6 <__multf3+0x864>
   1baca:	855e                	mv	a0,s7
   1bacc:	153010ef          	jal	1d41e <__clzsi2>
   1bad0:	04050513          	addi	a0,a0,64
   1bad4:	bf8d                	j	1ba46 <__multf3+0x7d4>
   1bad6:	8556                	mv	a0,s5
   1bad8:	147010ef          	jal	1d41e <__clzsi2>
   1badc:	06050513          	addi	a0,a0,96
   1bae0:	b79d                	j	1ba46 <__multf3+0x7d4>
   1bae2:	5671                	li	a2,-4
   1bae4:	02c78633          	mul	a2,a5,a2
   1bae8:	00f8                	addi	a4,sp,76
   1baea:	468d                	li	a3,3
   1baec:	00c705b3          	add	a1,a4,a2
   1baf0:	418c                	lw	a1,0(a1)
   1baf2:	16fd                	addi	a3,a3,-1
   1baf4:	1771                	addi	a4,a4,-4
   1baf6:	c34c                	sw	a1,4(a4)
   1baf8:	fef6dae3          	bge	a3,a5,1baec <__multf3+0x87a>
   1bafc:	fff78713          	addi	a4,a5,-1
   1bb00:	b769                	j	1ba8a <__multf3+0x818>
   1bb02:	430c                	lw	a1,0(a4)
   1bb04:	ffc72883          	lw	a7,-4(a4)
   1bb08:	00c70e33          	add	t3,a4,a2
   1bb0c:	00d595b3          	sll	a1,a1,a3
   1bb10:	0108d8b3          	srl	a7,a7,a6
   1bb14:	0115e5b3          	or	a1,a1,a7
   1bb18:	00be2023          	sw	a1,0(t3)
   1bb1c:	1771                	addi	a4,a4,-4
   1bb1e:	bf81                	j	1ba6e <__multf3+0x7fc>
   1bb20:	017aeab3          	or	s5,s5,s7
   1bb24:	016aeab3          	or	s5,s5,s6
   1bb28:	00aaeab3          	or	s5,s5,a0
   1bb2c:	4689                	li	a3,2
   1bb2e:	920a87e3          	beqz	s5,1b45c <__multf3+0x1ea>
   1bb32:	0542                	slli	a0,a0,0x10
   1bb34:	8541                	srai	a0,a0,0x10
   1bb36:	468d                	li	a3,3
   1bb38:	920542e3          	bltz	a0,1b45c <__multf3+0x1ea>
   1bb3c:	4441                	li	s0,16
   1bb3e:	ba39                	j	1b45c <__multf3+0x1ea>
   1bb40:	4781                	li	a5,0
   1bb42:	4685                	li	a3,1
   1bb44:	ba21                	j	1b45c <__multf3+0x1ea>
   1bb46:	4605                	li	a2,1
   1bb48:	00f617b3          	sll	a5,a2,a5
   1bb4c:	5307f613          	andi	a2,a5,1328
   1bb50:	e231                	bnez	a2,1bb94 <__multf3+0x922>
   1bb52:	0887f613          	andi	a2,a5,136
   1bb56:	e60d                	bnez	a2,1bb80 <__multf3+0x90e>
   1bb58:	2407f793          	andi	a5,a5,576
   1bb5c:	920783e3          	beqz	a5,1b482 <__multf3+0x210>
   1bb60:	4441                	li	s0,16
   1bb62:	67a1                	lui	a5,0x8
   1bb64:	cebe                	sw	a5,92(sp)
   1bb66:	cc82                	sw	zero,88(sp)
   1bb68:	ca82                	sw	zero,84(sp)
   1bb6a:	c882                	sw	zero,80(sp)
   1bb6c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1bb6e:	4701                	li	a4,0
   1bb70:	a8e1                	j	1bc48 <__multf3+0x9d6>
   1bb72:	473d                	li	a4,15
   1bb74:	fee787e3          	beq	a5,a4,1bb62 <__multf3+0x8f0>
   1bb78:	462d                	li	a2,11
   1bb7a:	874e                	mv	a4,s3
   1bb7c:	00c79c63          	bne	a5,a2,1bb94 <__multf3+0x922>
   1bb80:	8752                	mv	a4,s4
   1bb82:	4786                	lw	a5,64(sp)
   1bb84:	8c36                	mv	s8,a3
   1bb86:	c8be                	sw	a5,80(sp)
   1bb88:	4796                	lw	a5,68(sp)
   1bb8a:	cabe                	sw	a5,84(sp)
   1bb8c:	47a6                	lw	a5,72(sp)
   1bb8e:	ccbe                	sw	a5,88(sp)
   1bb90:	47b6                	lw	a5,76(sp)
   1bb92:	a801                	j	1bba2 <__multf3+0x930>
   1bb94:	57c2                	lw	a5,48(sp)
   1bb96:	c8be                	sw	a5,80(sp)
   1bb98:	57d2                	lw	a5,52(sp)
   1bb9a:	cabe                	sw	a5,84(sp)
   1bb9c:	57e2                	lw	a5,56(sp)
   1bb9e:	ccbe                	sw	a5,88(sp)
   1bba0:	57f2                	lw	a5,60(sp)
   1bba2:	cebe                	sw	a5,92(sp)
   1bba4:	4789                	li	a5,2
   1bba6:	34fc0d63          	beq	s8,a5,1bf00 <__multf3+0xc8e>
   1bbaa:	478d                	li	a5,3
   1bbac:	fafc0be3          	beq	s8,a5,1bb62 <__multf3+0x8f0>
   1bbb0:	4785                	li	a5,1
   1bbb2:	34fc0263          	beq	s8,a5,1bef6 <__multf3+0xc84>
   1bbb6:	46c2                	lw	a3,16(sp)
   1bbb8:	6791                	lui	a5,0x4
   1bbba:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   1bbbc:	97b6                	add	a5,a5,a3
   1bbbe:	10f05763          	blez	a5,1bccc <__multf3+0xa5a>
   1bbc2:	4646                	lw	a2,80(sp)
   1bbc4:	00767693          	andi	a3,a2,7
   1bbc8:	c2a1                	beqz	a3,1bc08 <__multf3+0x996>
   1bbca:	4509                	li	a0,2
   1bbcc:	46d6                	lw	a3,84(sp)
   1bbce:	45f6                	lw	a1,92(sp)
   1bbd0:	0ca48563          	beq	s1,a0,1bc9a <__multf3+0xa28>
   1bbd4:	450d                	li	a0,3
   1bbd6:	0aa48c63          	beq	s1,a0,1bc8e <__multf3+0xa1c>
   1bbda:	e48d                	bnez	s1,1bc04 <__multf3+0x992>
   1bbdc:	00f67513          	andi	a0,a2,15
   1bbe0:	4811                	li	a6,4
   1bbe2:	03050163          	beq	a0,a6,1bc04 <__multf3+0x992>
   1bbe6:	0611                	addi	a2,a2,4
   1bbe8:	c8b2                	sw	a2,80(sp)
   1bbea:	00463613          	sltiu	a2,a2,4
   1bbee:	96b2                	add	a3,a3,a2
   1bbf0:	cab6                	sw	a3,84(sp)
   1bbf2:	00c6b6b3          	sltu	a3,a3,a2
   1bbf6:	4666                	lw	a2,88(sp)
   1bbf8:	96b2                	add	a3,a3,a2
   1bbfa:	ccb6                	sw	a3,88(sp)
   1bbfc:	00c6b6b3          	sltu	a3,a3,a2
   1bc00:	96ae                	add	a3,a3,a1
   1bc02:	ceb6                	sw	a3,92(sp)
   1bc04:	00146413          	ori	s0,s0,1
   1bc08:	46f6                	lw	a3,92(sp)
   1bc0a:	00b69613          	slli	a2,a3,0xb
   1bc0e:	00065a63          	bgez	a2,1bc22 <__multf3+0x9b0>
   1bc12:	fff007b7          	lui	a5,0xfff00
   1bc16:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee157b>
   1bc18:	8efd                	and	a3,a3,a5
   1bc1a:	ceb6                	sw	a3,92(sp)
   1bc1c:	46c2                	lw	a3,16(sp)
   1bc1e:	6791                	lui	a5,0x4
   1bc20:	97b6                	add	a5,a5,a3
   1bc22:	0894                	addi	a3,sp,80
   1bc24:	08e8                	addi	a0,sp,92
   1bc26:	4290                	lw	a2,0(a3)
   1bc28:	42cc                	lw	a1,4(a3)
   1bc2a:	820d                	srli	a2,a2,0x3
   1bc2c:	05f6                	slli	a1,a1,0x1d
   1bc2e:	8e4d                	or	a2,a2,a1
   1bc30:	c290                	sw	a2,0(a3)
   1bc32:	0691                	addi	a3,a3,4
   1bc34:	fed519e3          	bne	a0,a3,1bc26 <__multf3+0x9b4>
   1bc38:	6621                	lui	a2,0x8
   1bc3a:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   1bc3c:	46f6                	lw	a3,92(sp)
   1bc3e:	65a1                	lui	a1,0x8
   1bc40:	04f64f63          	blt	a2,a5,1bc9e <__multf3+0xa2c>
   1bc44:	828d                	srli	a3,a3,0x3
   1bc46:	ceb6                	sw	a3,92(sp)
   1bc48:	4576                	lw	a0,92(sp)
   1bc4a:	073e                	slli	a4,a4,0xf
   1bc4c:	8f5d                	or	a4,a4,a5
   1bc4e:	06a11623          	sh	a0,108(sp)
   1bc52:	06e11723          	sh	a4,110(sp)
   1bc56:	45c6                	lw	a1,80(sp)
   1bc58:	4656                	lw	a2,84(sp)
   1bc5a:	46e6                	lw	a3,88(sp)
   1bc5c:	57b6                	lw	a5,108(sp)
   1bc5e:	c019                	beqz	s0,1bc64 <__multf3+0x9f2>
   1bc60:	00142073          	csrs	fflags,s0
   1bc64:	4732                	lw	a4,12(sp)
   1bc66:	50fa                	lw	ra,188(sp)
   1bc68:	546a                	lw	s0,184(sp)
   1bc6a:	c30c                	sw	a1,0(a4)
   1bc6c:	c350                	sw	a2,4(a4)
   1bc6e:	c714                	sw	a3,8(a4)
   1bc70:	c75c                	sw	a5,12(a4)
   1bc72:	54da                	lw	s1,180(sp)
   1bc74:	594a                	lw	s2,176(sp)
   1bc76:	59ba                	lw	s3,172(sp)
   1bc78:	5a2a                	lw	s4,168(sp)
   1bc7a:	5a9a                	lw	s5,164(sp)
   1bc7c:	5b0a                	lw	s6,160(sp)
   1bc7e:	4bfa                	lw	s7,156(sp)
   1bc80:	4c6a                	lw	s8,152(sp)
   1bc82:	4cda                	lw	s9,148(sp)
   1bc84:	4d4a                	lw	s10,144(sp)
   1bc86:	4dba                	lw	s11,140(sp)
   1bc88:	853a                	mv	a0,a4
   1bc8a:	6129                	addi	sp,sp,192
   1bc8c:	8082                	ret
   1bc8e:	fb3d                	bnez	a4,1bc04 <__multf3+0x992>
   1bc90:	0621                	addi	a2,a2,8
   1bc92:	c8b2                	sw	a2,80(sp)
   1bc94:	00863613          	sltiu	a2,a2,8
   1bc98:	bf99                	j	1bbee <__multf3+0x97c>
   1bc9a:	d72d                	beqz	a4,1bc04 <__multf3+0x992>
   1bc9c:	bfd5                	j	1bc90 <__multf3+0xa1e>
   1bc9e:	4789                	li	a5,2
   1bca0:	02f48463          	beq	s1,a5,1bcc8 <__multf3+0xa56>
   1bca4:	478d                	li	a5,3
   1bca6:	00f48763          	beq	s1,a5,1bcb4 <__multf3+0xa42>
   1bcaa:	e491                	bnez	s1,1bcb6 <__multf3+0xa44>
   1bcac:	4681                	li	a3,0
   1bcae:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   1bcb2:	a021                	j	1bcba <__multf3+0xa48>
   1bcb4:	df65                	beqz	a4,1bcac <__multf3+0xa3a>
   1bcb6:	56fd                	li	a3,-1
   1bcb8:	87b2                	mv	a5,a2
   1bcba:	ceb6                	sw	a3,92(sp)
   1bcbc:	ccb6                	sw	a3,88(sp)
   1bcbe:	cab6                	sw	a3,84(sp)
   1bcc0:	c8b6                	sw	a3,80(sp)
   1bcc2:	00546413          	ori	s0,s0,5
   1bcc6:	b749                	j	1bc48 <__multf3+0x9d6>
   1bcc8:	f375                	bnez	a4,1bcac <__multf3+0xa3a>
   1bcca:	b7f5                	j	1bcb6 <__multf3+0xa44>
   1bccc:	4685                	li	a3,1
   1bcce:	ebb9                	bnez	a5,1bd24 <__multf3+0xab2>
   1bcd0:	4646                	lw	a2,80(sp)
   1bcd2:	46f6                	lw	a3,92(sp)
   1bcd4:	00767593          	andi	a1,a2,7
   1bcd8:	c1b1                	beqz	a1,1bd1c <__multf3+0xaaa>
   1bcda:	4809                	li	a6,2
   1bcdc:	45d6                	lw	a1,84(sp)
   1bcde:	4566                	lw	a0,88(sp)
   1bce0:	00146413          	ori	s0,s0,1
   1bce4:	03048b63          	beq	s1,a6,1bd1a <__multf3+0xaa8>
   1bce8:	480d                	li	a6,3
   1bcea:	03048363          	beq	s1,a6,1bd10 <__multf3+0xa9e>
   1bcee:	e49d                	bnez	s1,1bd1c <__multf3+0xaaa>
   1bcf0:	00f67813          	andi	a6,a2,15
   1bcf4:	4891                	li	a7,4
   1bcf6:	03180363          	beq	a6,a7,1bd1c <__multf3+0xaaa>
   1bcfa:	0611                	addi	a2,a2,4
   1bcfc:	00463613          	sltiu	a2,a2,4
   1bd00:	95b2                	add	a1,a1,a2
   1bd02:	00c5b5b3          	sltu	a1,a1,a2
   1bd06:	952e                	add	a0,a0,a1
   1bd08:	00b53533          	sltu	a0,a0,a1
   1bd0c:	96aa                	add	a3,a3,a0
   1bd0e:	a039                	j	1bd1c <__multf3+0xaaa>
   1bd10:	e711                	bnez	a4,1bd1c <__multf3+0xaaa>
   1bd12:	0621                	addi	a2,a2,8
   1bd14:	00863613          	sltiu	a2,a2,8
   1bd18:	b7e5                	j	1bd00 <__multf3+0xa8e>
   1bd1a:	ff65                	bnez	a4,1bd12 <__multf3+0xaa0>
   1bd1c:	82d1                	srli	a3,a3,0x14
   1bd1e:	0016c693          	xori	a3,a3,1
   1bd22:	8a85                	andi	a3,a3,1
   1bd24:	4605                	li	a2,1
   1bd26:	40f607b3          	sub	a5,a2,a5
   1bd2a:	07400593          	li	a1,116
   1bd2e:	18f5c163          	blt	a1,a5,1beb0 <__multf3+0xc3e>
   1bd32:	0890                	addi	a2,sp,80
   1bd34:	4057d593          	srai	a1,a5,0x5
   1bd38:	01f7f513          	andi	a0,a5,31
   1bd3c:	88b2                	mv	a7,a2
   1bd3e:	4781                	li	a5,0
   1bd40:	4801                	li	a6,0
   1bd42:	02b81763          	bne	a6,a1,1bd70 <__multf3+0xafe>
   1bd46:	480d                	li	a6,3
   1bd48:	40b80833          	sub	a6,a6,a1
   1bd4c:	00259893          	slli	a7,a1,0x2
   1bd50:	e51d                	bnez	a0,1bd7e <__multf3+0xb0c>
   1bd52:	8332                	mv	t1,a2
   1bd54:	01130e33          	add	t3,t1,a7
   1bd58:	000e2e03          	lw	t3,0(t3)
   1bd5c:	0505                	addi	a0,a0,1
   1bd5e:	0311                	addi	t1,t1,4
   1bd60:	ffc32e23          	sw	t3,-4(t1)
   1bd64:	fea858e3          	bge	a6,a0,1bd54 <__multf3+0xae2>
   1bd68:	4511                	li	a0,4
   1bd6a:	40b505b3          	sub	a1,a0,a1
   1bd6e:	a8a1                	j	1bdc6 <__multf3+0xb54>
   1bd70:	0008a303          	lw	t1,0(a7)
   1bd74:	0805                	addi	a6,a6,1
   1bd76:	0891                	addi	a7,a7,4
   1bd78:	0067e7b3          	or	a5,a5,t1
   1bd7c:	b7d9                	j	1bd42 <__multf3+0xad0>
   1bd7e:	05088313          	addi	t1,a7,80
   1bd82:	03010e13          	addi	t3,sp,48
   1bd86:	9372                	add	t1,t1,t3
   1bd88:	fd032303          	lw	t1,-48(t1)
   1bd8c:	02000e93          	li	t4,32
   1bd90:	40ae8eb3          	sub	t4,t4,a0
   1bd94:	01d31333          	sll	t1,t1,t4
   1bd98:	0067e7b3          	or	a5,a5,t1
   1bd9c:	4f01                	li	t5,0
   1bd9e:	01160333          	add	t1,a2,a7
   1bda2:	411008b3          	neg	a7,a7
   1bda6:	0b0f4d63          	blt	t5,a6,1be60 <__multf3+0xbee>
   1bdaa:	4891                	li	a7,4
   1bdac:	080a                	slli	a6,a6,0x2
   1bdae:	40b885b3          	sub	a1,a7,a1
   1bdb2:	05080813          	addi	a6,a6,80
   1bdb6:	03010893          	addi	a7,sp,48
   1bdba:	9846                	add	a6,a6,a7
   1bdbc:	48f6                	lw	a7,92(sp)
   1bdbe:	00a8d533          	srl	a0,a7,a0
   1bdc2:	fca82823          	sw	a0,-48(a6)
   1bdc6:	4511                	li	a0,4
   1bdc8:	8d0d                	sub	a0,a0,a1
   1bdca:	050a                	slli	a0,a0,0x2
   1bdcc:	058a                	slli	a1,a1,0x2
   1bdce:	4821                	li	a6,8
   1bdd0:	95b2                	add	a1,a1,a2
   1bdd2:	01056863          	bltu	a0,a6,1bde2 <__multf3+0xb70>
   1bdd6:	0005a023          	sw	zero,0(a1)
   1bdda:	0005a223          	sw	zero,4(a1)
   1bdde:	1561                	addi	a0,a0,-8
   1bde0:	05a1                	addi	a1,a1,8
   1bde2:	4811                	li	a6,4
   1bde4:	01056463          	bltu	a0,a6,1bdec <__multf3+0xb7a>
   1bde8:	0005a023          	sw	zero,0(a1)
   1bdec:	45c6                	lw	a1,80(sp)
   1bdee:	00f037b3          	snez	a5,a5
   1bdf2:	8fcd                	or	a5,a5,a1
   1bdf4:	c8be                	sw	a5,80(sp)
   1bdf6:	0077f593          	andi	a1,a5,7
   1bdfa:	c1a1                	beqz	a1,1be3a <__multf3+0xbc8>
   1bdfc:	4509                	li	a0,2
   1bdfe:	45f6                	lw	a1,92(sp)
   1be00:	08a48763          	beq	s1,a0,1be8e <__multf3+0xc1c>
   1be04:	450d                	li	a0,3
   1be06:	06a48e63          	beq	s1,a0,1be82 <__multf3+0xc10>
   1be0a:	e495                	bnez	s1,1be36 <__multf3+0xbc4>
   1be0c:	00f7f513          	andi	a0,a5,15
   1be10:	4811                	li	a6,4
   1be12:	03050263          	beq	a0,a6,1be36 <__multf3+0xbc4>
   1be16:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   1be18:	c8be                	sw	a5,80(sp)
   1be1a:	0047b793          	sltiu	a5,a5,4
   1be1e:	4556                	lw	a0,84(sp)
   1be20:	97aa                	add	a5,a5,a0
   1be22:	cabe                	sw	a5,84(sp)
   1be24:	00a7b7b3          	sltu	a5,a5,a0
   1be28:	4566                	lw	a0,88(sp)
   1be2a:	97aa                	add	a5,a5,a0
   1be2c:	ccbe                	sw	a5,88(sp)
   1be2e:	00a7b7b3          	sltu	a5,a5,a0
   1be32:	97ae                	add	a5,a5,a1
   1be34:	cebe                	sw	a5,92(sp)
   1be36:	00146413          	ori	s0,s0,1
   1be3a:	45f6                	lw	a1,92(sp)
   1be3c:	00c59793          	slli	a5,a1,0xc
   1be40:	0407d963          	bgez	a5,1be92 <__multf3+0xc20>
   1be44:	ce82                	sw	zero,92(sp)
   1be46:	cc82                	sw	zero,88(sp)
   1be48:	ca82                	sw	zero,84(sp)
   1be4a:	c882                	sw	zero,80(sp)
   1be4c:	00146413          	ori	s0,s0,1
   1be50:	4785                	li	a5,1
   1be52:	de068be3          	beqz	a3,1bc48 <__multf3+0x9d6>
   1be56:	00147693          	andi	a3,s0,1
   1be5a:	0686                	slli	a3,a3,0x1
   1be5c:	8c55                	or	s0,s0,a3
   1be5e:	b3ed                	j	1bc48 <__multf3+0x9d6>
   1be60:	00032e03          	lw	t3,0(t1)
   1be64:	00432f83          	lw	t6,4(t1)
   1be68:	011302b3          	add	t0,t1,a7
   1be6c:	00ae5e33          	srl	t3,t3,a0
   1be70:	01df9fb3          	sll	t6,t6,t4
   1be74:	01fe6e33          	or	t3,t3,t6
   1be78:	01c2a023          	sw	t3,0(t0)
   1be7c:	0f05                	addi	t5,t5,1
   1be7e:	0311                	addi	t1,t1,4
   1be80:	b71d                	j	1bda6 <__multf3+0xb34>
   1be82:	fb55                	bnez	a4,1be36 <__multf3+0xbc4>
   1be84:	07a1                	addi	a5,a5,8
   1be86:	c8be                	sw	a5,80(sp)
   1be88:	0087b793          	sltiu	a5,a5,8
   1be8c:	bf49                	j	1be1e <__multf3+0xbac>
   1be8e:	d745                	beqz	a4,1be36 <__multf3+0xbc4>
   1be90:	bfd5                	j	1be84 <__multf3+0xc12>
   1be92:	00c60813          	addi	a6,a2,12
   1be96:	421c                	lw	a5,0(a2)
   1be98:	4248                	lw	a0,4(a2)
   1be9a:	838d                	srli	a5,a5,0x3
   1be9c:	0576                	slli	a0,a0,0x1d
   1be9e:	8fc9                	or	a5,a5,a0
   1bea0:	c21c                	sw	a5,0(a2)
   1bea2:	0611                	addi	a2,a2,4
   1bea4:	fec819e3          	bne	a6,a2,1be96 <__multf3+0xc24>
   1bea8:	818d                	srli	a1,a1,0x3
   1beaa:	ceae                	sw	a1,92(sp)
   1beac:	4781                	li	a5,0
   1beae:	b755                	j	1be52 <__multf3+0xbe0>
   1beb0:	46d6                	lw	a3,84(sp)
   1beb2:	47c6                	lw	a5,80(sp)
   1beb4:	8fd5                	or	a5,a5,a3
   1beb6:	46e6                	lw	a3,88(sp)
   1beb8:	8fd5                	or	a5,a5,a3
   1beba:	46f6                	lw	a3,92(sp)
   1bebc:	8fd5                	or	a5,a5,a3
   1bebe:	c395                	beqz	a5,1bee2 <__multf3+0xc70>
   1bec0:	ce82                	sw	zero,92(sp)
   1bec2:	cc82                	sw	zero,88(sp)
   1bec4:	ca82                	sw	zero,84(sp)
   1bec6:	c8b2                	sw	a2,80(sp)
   1bec8:	4789                	li	a5,2
   1beca:	00146413          	ori	s0,s0,1
   1bece:	02f48263          	beq	s1,a5,1bef2 <__multf3+0xc80>
   1bed2:	478d                	li	a5,3
   1bed4:	00f48b63          	beq	s1,a5,1beea <__multf3+0xc78>
   1bed8:	4795                	li	a5,5
   1beda:	c891                	beqz	s1,1beee <__multf3+0xc7c>
   1bedc:	47c6                	lw	a5,80(sp)
   1bede:	838d                	srli	a5,a5,0x3
   1bee0:	c8be                	sw	a5,80(sp)
   1bee2:	00246413          	ori	s0,s0,2
   1bee6:	4781                	li	a5,0
   1bee8:	b385                	j	1bc48 <__multf3+0x9d6>
   1beea:	fb6d                	bnez	a4,1bedc <__multf3+0xc6a>
   1beec:	47a5                	li	a5,9
   1beee:	c8be                	sw	a5,80(sp)
   1bef0:	b7f5                	j	1bedc <__multf3+0xc6a>
   1bef2:	ff6d                	bnez	a4,1beec <__multf3+0xc7a>
   1bef4:	b7e5                	j	1bedc <__multf3+0xc6a>
   1bef6:	ce82                	sw	zero,92(sp)
   1bef8:	cc82                	sw	zero,88(sp)
   1befa:	ca82                	sw	zero,84(sp)
   1befc:	c882                	sw	zero,80(sp)
   1befe:	b7e5                	j	1bee6 <__multf3+0xc74>
   1bf00:	67a1                	lui	a5,0x8
   1bf02:	ce82                	sw	zero,92(sp)
   1bf04:	cc82                	sw	zero,88(sp)
   1bf06:	ca82                	sw	zero,84(sp)
   1bf08:	c882                	sw	zero,80(sp)
   1bf0a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1bf0c:	bb35                	j	1bc48 <__multf3+0x9d6>

0001bf0e <__subtf3>:
   1bf0e:	7159                	addi	sp,sp,-112
   1bf10:	d2a6                	sw	s1,100(sp)
   1bf12:	d0ca                	sw	s2,96(sp)
   1bf14:	cece                	sw	s3,92(sp)
   1bf16:	c2e6                	sw	s9,68(sp)
   1bf18:	d686                	sw	ra,108(sp)
   1bf1a:	d4a2                	sw	s0,104(sp)
   1bf1c:	ccd2                	sw	s4,88(sp)
   1bf1e:	cad6                	sw	s5,84(sp)
   1bf20:	c8da                	sw	s6,80(sp)
   1bf22:	c6de                	sw	s7,76(sp)
   1bf24:	c4e2                	sw	s8,72(sp)
   1bf26:	892a                	mv	s2,a0
   1bf28:	4198                	lw	a4,0(a1)
   1bf2a:	41d4                	lw	a3,4(a1)
   1bf2c:	459c                	lw	a5,8(a1)
   1bf2e:	00c5a983          	lw	s3,12(a1)
   1bf32:	4204                	lw	s1,0(a2)
   1bf34:	00462883          	lw	a7,4(a2)
   1bf38:	00862803          	lw	a6,8(a2)
   1bf3c:	00c62c83          	lw	s9,12(a2)
   1bf40:	00202a73          	frrm	s4
   1bf44:	dc3e                	sw	a5,56(sp)
   1bf46:	c43e                	sw	a5,8(sp)
   1bf48:	01099793          	slli	a5,s3,0x10
   1bf4c:	83c1                	srli	a5,a5,0x10
   1bf4e:	00199413          	slli	s0,s3,0x1
   1bf52:	858a                	mv	a1,sp
   1bf54:	de4e                	sw	s3,60(sp)
   1bf56:	c63e                	sw	a5,12(sp)
   1bf58:	d83a                	sw	a4,48(sp)
   1bf5a:	da36                	sw	a3,52(sp)
   1bf5c:	c03a                	sw	a4,0(sp)
   1bf5e:	c236                	sw	a3,4(sp)
   1bf60:	8045                	srli	s0,s0,0x11
   1bf62:	01f9d993          	srli	s3,s3,0x1f
   1bf66:	ff410313          	addi	t1,sp,-12
   1bf6a:	87ae                	mv	a5,a1
   1bf6c:	852e                	mv	a0,a1
   1bf6e:	47d4                	lw	a3,12(a5)
   1bf70:	4790                	lw	a2,8(a5)
   1bf72:	17f1                	addi	a5,a5,-4
   1bf74:	068e                	slli	a3,a3,0x3
   1bf76:	8275                	srli	a2,a2,0x1d
   1bf78:	8ed1                	or	a3,a3,a2
   1bf7a:	cb94                	sw	a3,16(a5)
   1bf7c:	fef319e3          	bne	t1,a5,1bf6e <__subtf3+0x60>
   1bf80:	010c9793          	slli	a5,s9,0x10
   1bf84:	83c1                	srli	a5,a5,0x10
   1bf86:	001c9a93          	slli	s5,s9,0x1
   1bf8a:	070e                	slli	a4,a4,0x3
   1bf8c:	dc42                	sw	a6,56(sp)
   1bf8e:	cc42                	sw	a6,24(sp)
   1bf90:	01010813          	addi	a6,sp,16
   1bf94:	da46                	sw	a7,52(sp)
   1bf96:	de66                	sw	s9,60(sp)
   1bf98:	ca46                	sw	a7,20(sp)
   1bf9a:	ce3e                	sw	a5,28(sp)
   1bf9c:	c03a                	sw	a4,0(sp)
   1bf9e:	d826                	sw	s1,48(sp)
   1bfa0:	c826                	sw	s1,16(sp)
   1bfa2:	011ada93          	srli	s5,s5,0x11
   1bfa6:	01fcdc93          	srli	s9,s9,0x1f
   1bfaa:	00410893          	addi	a7,sp,4
   1bfae:	87c2                	mv	a5,a6
   1bfb0:	8e42                	mv	t3,a6
   1bfb2:	47d4                	lw	a3,12(a5)
   1bfb4:	4790                	lw	a2,8(a5)
   1bfb6:	17f1                	addi	a5,a5,-4
   1bfb8:	068e                	slli	a3,a3,0x3
   1bfba:	8275                	srli	a2,a2,0x1d
   1bfbc:	8ed1                	or	a3,a3,a2
   1bfbe:	cb94                	sw	a3,16(a5)
   1bfc0:	fef899e3          	bne	a7,a5,1bfb2 <__subtf3+0xa4>
   1bfc4:	048e                	slli	s1,s1,0x3
   1bfc6:	67a1                	lui	a5,0x8
   1bfc8:	c826                	sw	s1,16(sp)
   1bfca:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1bfcc:	00fa9963          	bne	s5,a5,1bfde <__subtf3+0xd0>
   1bfd0:	46e2                	lw	a3,24(sp)
   1bfd2:	47d2                	lw	a5,20(sp)
   1bfd4:	8fd5                	or	a5,a5,a3
   1bfd6:	46f2                	lw	a3,28(sp)
   1bfd8:	8fd5                	or	a5,a5,a3
   1bfda:	8fc5                	or	a5,a5,s1
   1bfdc:	e399                	bnez	a5,1bfe2 <__subtf3+0xd4>
   1bfde:	001ccc93          	xori	s9,s9,1
   1bfe2:	415407b3          	sub	a5,s0,s5
   1bfe6:	5d3c9c63          	bne	s9,s3,1c5be <__subtf3+0x6b0>
   1bfea:	24f05963          	blez	a5,1c23c <__subtf3+0x32e>
   1bfee:	4312                	lw	t1,4(sp)
   1bff0:	48a2                	lw	a7,8(sp)
   1bff2:	45b2                	lw	a1,12(sp)
   1bff4:	080a9963          	bnez	s5,1c086 <__subtf3+0x178>
   1bff8:	4552                	lw	a0,20(sp)
   1bffa:	46e2                	lw	a3,24(sp)
   1bffc:	4ef2                	lw	t4,28(sp)
   1bffe:	00d56633          	or	a2,a0,a3
   1c002:	01d66633          	or	a2,a2,t4
   1c006:	8e45                	or	a2,a2,s1
   1c008:	e61d                	bnez	a2,1c036 <__subtf3+0x128>
   1c00a:	66a1                	lui	a3,0x8
   1c00c:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c00e:	00d79e63          	bne	a5,a3,1c02a <__subtf3+0x11c>
   1c012:	011366b3          	or	a3,t1,a7
   1c016:	8ecd                	or	a3,a3,a1
   1c018:	8ed9                	or	a3,a3,a4
   1c01a:	ca81                	beqz	a3,1c02a <__subtf3+0x11c>
   1c01c:	0125da93          	srli	s5,a1,0x12
   1c020:	001aca93          	xori	s5,s5,1
   1c024:	001afa93          	andi	s5,s5,1
   1c028:	0a92                	slli	s5,s5,0x4
   1c02a:	d03a                	sw	a4,32(sp)
   1c02c:	d21a                	sw	t1,36(sp)
   1c02e:	d446                	sw	a7,40(sp)
   1c030:	d62e                	sw	a1,44(sp)
   1c032:	8456                	mv	s0,s5
   1c034:	ac99                	j	1c28a <__subtf3+0x37c>
   1c036:	fff78613          	addi	a2,a5,-1
   1c03a:	ea0d                	bnez	a2,1c06c <__subtf3+0x15e>
   1c03c:	94ba                	add	s1,s1,a4
   1c03e:	932a                	add	t1,t1,a0
   1c040:	d026                	sw	s1,32(sp)
   1c042:	00e4b4b3          	sltu	s1,s1,a4
   1c046:	949a                	add	s1,s1,t1
   1c048:	d226                	sw	s1,36(sp)
   1c04a:	00a33533          	sltu	a0,t1,a0
   1c04e:	0064b4b3          	sltu	s1,s1,t1
   1c052:	98b6                	add	a7,a7,a3
   1c054:	8d45                	or	a0,a0,s1
   1c056:	9546                	add	a0,a0,a7
   1c058:	d42a                	sw	a0,40(sp)
   1c05a:	00d8b733          	sltu	a4,a7,a3
   1c05e:	01153533          	sltu	a0,a0,a7
   1c062:	8f49                	or	a4,a4,a0
   1c064:	9eae                	add	t4,t4,a1
   1c066:	9776                	add	a4,a4,t4
   1c068:	4785                	li	a5,1
   1c06a:	a299                	j	1c1b0 <__subtf3+0x2a2>
   1c06c:	66a1                	lui	a3,0x8
   1c06e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c070:	fad781e3          	beq	a5,a3,1c012 <__subtf3+0x104>
   1c074:	07400793          	li	a5,116
   1c078:	04c7d863          	bge	a5,a2,1c0c8 <__subtf3+0x1ba>
   1c07c:	ce02                	sw	zero,28(sp)
   1c07e:	cc02                	sw	zero,24(sp)
   1c080:	ca02                	sw	zero,20(sp)
   1c082:	4785                	li	a5,1
   1c084:	a8dd                	j	1c17a <__subtf3+0x26c>
   1c086:	66a1                	lui	a3,0x8
   1c088:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c08a:	02d41563          	bne	s0,a3,1c0b4 <__subtf3+0x1a6>
   1c08e:	011367b3          	or	a5,t1,a7
   1c092:	8fcd                	or	a5,a5,a1
   1c094:	8fd9                	or	a5,a5,a4
   1c096:	4681                	li	a3,0
   1c098:	c799                	beqz	a5,1c0a6 <__subtf3+0x198>
   1c09a:	0125d693          	srli	a3,a1,0x12
   1c09e:	0016c693          	xori	a3,a3,1
   1c0a2:	8a85                	andi	a3,a3,1
   1c0a4:	0692                	slli	a3,a3,0x4
   1c0a6:	d03a                	sw	a4,32(sp)
   1c0a8:	d21a                	sw	t1,36(sp)
   1c0aa:	d446                	sw	a7,40(sp)
   1c0ac:	d62e                	sw	a1,44(sp)
   1c0ae:	87a2                	mv	a5,s0
   1c0b0:	8436                	mv	s0,a3
   1c0b2:	aae1                	j	1c28a <__subtf3+0x37c>
   1c0b4:	46f2                	lw	a3,28(sp)
   1c0b6:	00080637          	lui	a2,0x80
   1c0ba:	8ed1                	or	a3,a3,a2
   1c0bc:	ce36                	sw	a3,28(sp)
   1c0be:	07400693          	li	a3,116
   1c0c2:	faf6cde3          	blt	a3,a5,1c07c <__subtf3+0x16e>
   1c0c6:	863e                	mv	a2,a5
   1c0c8:	40565693          	srai	a3,a2,0x5
   1c0cc:	8ec2                	mv	t4,a6
   1c0ce:	8a7d                	andi	a2,a2,31
   1c0d0:	4781                	li	a5,0
   1c0d2:	4501                	li	a0,0
   1c0d4:	02d51563          	bne	a0,a3,1c0fe <__subtf3+0x1f0>
   1c0d8:	450d                	li	a0,3
   1c0da:	8d15                	sub	a0,a0,a3
   1c0dc:	00269e93          	slli	t4,a3,0x2
   1c0e0:	e615                	bnez	a2,1c10c <__subtf3+0x1fe>
   1c0e2:	01d80f33          	add	t5,a6,t4
   1c0e6:	000f2f03          	lw	t5,0(t5)
   1c0ea:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x6157d>
   1c0ec:	0811                	addi	a6,a6,4
   1c0ee:	ffe82e23          	sw	t5,-4(a6)
   1c0f2:	fec558e3          	bge	a0,a2,1c0e2 <__subtf3+0x1d4>
   1c0f6:	4611                	li	a2,4
   1c0f8:	40d606b3          	sub	a3,a2,a3
   1c0fc:	a881                	j	1c14c <__subtf3+0x23e>
   1c0fe:	000eaf03          	lw	t5,0(t4)
   1c102:	0505                	addi	a0,a0,1
   1c104:	0e91                	addi	t4,t4,4
   1c106:	01e7e7b3          	or	a5,a5,t5
   1c10a:	b7e9                	j	1c0d4 <__subtf3+0x1c6>
   1c10c:	040e8493          	addi	s1,t4,64
   1c110:	00248f33          	add	t5,s1,sp
   1c114:	fd0f2f03          	lw	t5,-48(t5)
   1c118:	02000393          	li	t2,32
   1c11c:	40c383b3          	sub	t2,t2,a2
   1c120:	007f1f33          	sll	t5,t5,t2
   1c124:	9876                	add	a6,a6,t4
   1c126:	01e7e7b3          	or	a5,a5,t5
   1c12a:	41d00eb3          	neg	t4,t4
   1c12e:	4f81                	li	t6,0
   1c130:	0eafc563          	blt	t6,a0,1c21a <__subtf3+0x30c>
   1c134:	4811                	li	a6,4
   1c136:	40d806b3          	sub	a3,a6,a3
   1c13a:	4872                	lw	a6,28(sp)
   1c13c:	050a                	slli	a0,a0,0x2
   1c13e:	04050513          	addi	a0,a0,64
   1c142:	950a                	add	a0,a0,sp
   1c144:	00c85633          	srl	a2,a6,a2
   1c148:	fcc52823          	sw	a2,-48(a0)
   1c14c:	4611                	li	a2,4
   1c14e:	8e15                	sub	a2,a2,a3
   1c150:	060a                	slli	a2,a2,0x2
   1c152:	068a                	slli	a3,a3,0x2
   1c154:	4521                	li	a0,8
   1c156:	96f2                	add	a3,a3,t3
   1c158:	00a66863          	bltu	a2,a0,1c168 <__subtf3+0x25a>
   1c15c:	0006a023          	sw	zero,0(a3)
   1c160:	0006a223          	sw	zero,4(a3)
   1c164:	1661                	addi	a2,a2,-8
   1c166:	06a1                	addi	a3,a3,8
   1c168:	4511                	li	a0,4
   1c16a:	00a66463          	bltu	a2,a0,1c172 <__subtf3+0x264>
   1c16e:	0006a023          	sw	zero,0(a3)
   1c172:	46c2                	lw	a3,16(sp)
   1c174:	00f037b3          	snez	a5,a5
   1c178:	8fd5                	or	a5,a5,a3
   1c17a:	46d2                	lw	a3,20(sp)
   1c17c:	c83e                	sw	a5,16(sp)
   1c17e:	97ba                	add	a5,a5,a4
   1c180:	9336                	add	t1,t1,a3
   1c182:	d03e                	sw	a5,32(sp)
   1c184:	00e7b7b3          	sltu	a5,a5,a4
   1c188:	4762                	lw	a4,24(sp)
   1c18a:	979a                	add	a5,a5,t1
   1c18c:	d23e                	sw	a5,36(sp)
   1c18e:	00d336b3          	sltu	a3,t1,a3
   1c192:	0067b7b3          	sltu	a5,a5,t1
   1c196:	98ba                	add	a7,a7,a4
   1c198:	8fd5                	or	a5,a5,a3
   1c19a:	97c6                	add	a5,a5,a7
   1c19c:	d43e                	sw	a5,40(sp)
   1c19e:	00e8b733          	sltu	a4,a7,a4
   1c1a2:	0117b7b3          	sltu	a5,a5,a7
   1c1a6:	8f5d                	or	a4,a4,a5
   1c1a8:	47f2                	lw	a5,28(sp)
   1c1aa:	97ae                	add	a5,a5,a1
   1c1ac:	973e                	add	a4,a4,a5
   1c1ae:	87a2                	mv	a5,s0
   1c1b0:	d63a                	sw	a4,44(sp)
   1c1b2:	00c71693          	slli	a3,a4,0xc
   1c1b6:	4401                	li	s0,0
   1c1b8:	0c06d963          	bgez	a3,1c28a <__subtf3+0x37c>
   1c1bc:	5602                	lw	a2,32(sp)
   1c1be:	fff806b7          	lui	a3,0xfff80
   1c1c2:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff6157b>
   1c1c4:	8f75                	and	a4,a4,a3
   1c1c6:	d63a                	sw	a4,44(sp)
   1c1c8:	0785                	addi	a5,a5,1
   1c1ca:	067e                	slli	a2,a2,0x1f
   1c1cc:	1014                	addi	a3,sp,32
   1c1ce:	02c10813          	addi	a6,sp,44
   1c1d2:	428c                	lw	a1,0(a3)
   1c1d4:	42c8                	lw	a0,4(a3)
   1c1d6:	8185                	srli	a1,a1,0x1
   1c1d8:	057e                	slli	a0,a0,0x1f
   1c1da:	8dc9                	or	a1,a1,a0
   1c1dc:	c28c                	sw	a1,0(a3)
   1c1de:	0691                	addi	a3,a3,4
   1c1e0:	fed819e3          	bne	a6,a3,1c1d2 <__subtf3+0x2c4>
   1c1e4:	5682                	lw	a3,32(sp)
   1c1e6:	8305                	srli	a4,a4,0x1
   1c1e8:	d63a                	sw	a4,44(sp)
   1c1ea:	00c03733          	snez	a4,a2
   1c1ee:	8f55                	or	a4,a4,a3
   1c1f0:	d03a                	sw	a4,32(sp)
   1c1f2:	6721                	lui	a4,0x8
   1c1f4:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c1f6:	4401                	li	s0,0
   1c1f8:	08e79963          	bne	a5,a4,1c28a <__subtf3+0x37c>
   1c1fc:	3a0a0963          	beqz	s4,1c5ae <__subtf3+0x6a0>
   1c200:	478d                	li	a5,3
   1c202:	3afa1163          	bne	s4,a5,1c5a4 <__subtf3+0x696>
   1c206:	3a098463          	beqz	s3,1c5ae <__subtf3+0x6a0>
   1c20a:	57fd                	li	a5,-1
   1c20c:	d63e                	sw	a5,44(sp)
   1c20e:	d43e                	sw	a5,40(sp)
   1c210:	d23e                	sw	a5,36(sp)
   1c212:	d03e                	sw	a5,32(sp)
   1c214:	67a1                	lui	a5,0x8
   1c216:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1c218:	a64d                	j	1c5ba <__subtf3+0x6ac>
   1c21a:	00082f03          	lw	t5,0(a6)
   1c21e:	00482283          	lw	t0,4(a6)
   1c222:	01d804b3          	add	s1,a6,t4
   1c226:	00cf5f33          	srl	t5,t5,a2
   1c22a:	007292b3          	sll	t0,t0,t2
   1c22e:	005f6f33          	or	t5,t5,t0
   1c232:	01e4a023          	sw	t5,0(s1)
   1c236:	0f85                	addi	t6,t6,1
   1c238:	0811                	addi	a6,a6,4
   1c23a:	bddd                	j	1c130 <__subtf3+0x222>
   1c23c:	4bd2                	lw	s7,20(sp)
   1c23e:	4c62                	lw	s8,24(sp)
   1c240:	4b72                	lw	s6,28(sp)
   1c242:	1e078363          	beqz	a5,1c428 <__subtf3+0x51a>
   1c246:	408a87b3          	sub	a5,s5,s0
   1c24a:	e859                	bnez	s0,1c2e0 <__subtf3+0x3d2>
   1c24c:	4612                	lw	a2,4(sp)
   1c24e:	46a2                	lw	a3,8(sp)
   1c250:	48b2                	lw	a7,12(sp)
   1c252:	00d66833          	or	a6,a2,a3
   1c256:	01186833          	or	a6,a6,a7
   1c25a:	00e86833          	or	a6,a6,a4
   1c25e:	02081963          	bnez	a6,1c290 <__subtf3+0x382>
   1c262:	6721                	lui	a4,0x8
   1c264:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c266:	00e79e63          	bne	a5,a4,1c282 <__subtf3+0x374>
   1c26a:	018be733          	or	a4,s7,s8
   1c26e:	01676733          	or	a4,a4,s6
   1c272:	8f45                	or	a4,a4,s1
   1c274:	c719                	beqz	a4,1c282 <__subtf3+0x374>
   1c276:	012b5413          	srli	s0,s6,0x12
   1c27a:	00144413          	xori	s0,s0,1
   1c27e:	8805                	andi	s0,s0,1
   1c280:	0412                	slli	s0,s0,0x4
   1c282:	d026                	sw	s1,32(sp)
   1c284:	d25e                	sw	s7,36(sp)
   1c286:	d462                	sw	s8,40(sp)
   1c288:	d65a                	sw	s6,44(sp)
   1c28a:	4681                	li	a3,0
   1c28c:	3fb0006f          	j	1ce86 <__subtf3+0xf78>
   1c290:	fff78813          	addi	a6,a5,-1
   1c294:	02081963          	bnez	a6,1c2c6 <__subtf3+0x3b8>
   1c298:	94ba                	add	s1,s1,a4
   1c29a:	9bb2                	add	s7,s7,a2
   1c29c:	d026                	sw	s1,32(sp)
   1c29e:	00e4b4b3          	sltu	s1,s1,a4
   1c2a2:	94de                	add	s1,s1,s7
   1c2a4:	d226                	sw	s1,36(sp)
   1c2a6:	00cbb633          	sltu	a2,s7,a2
   1c2aa:	0174b4b3          	sltu	s1,s1,s7
   1c2ae:	9c36                	add	s8,s8,a3
   1c2b0:	8e45                	or	a2,a2,s1
   1c2b2:	9662                	add	a2,a2,s8
   1c2b4:	d432                	sw	a2,40(sp)
   1c2b6:	00dc3733          	sltu	a4,s8,a3
   1c2ba:	01863633          	sltu	a2,a2,s8
   1c2be:	8f51                	or	a4,a4,a2
   1c2c0:	98da                	add	a7,a7,s6
   1c2c2:	9746                	add	a4,a4,a7
   1c2c4:	b355                	j	1c068 <__subtf3+0x15a>
   1c2c6:	6721                	lui	a4,0x8
   1c2c8:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c2ca:	fae780e3          	beq	a5,a4,1c26a <__subtf3+0x35c>
   1c2ce:	07400793          	li	a5,116
   1c2d2:	0507d863          	bge	a5,a6,1c322 <__subtf3+0x414>
   1c2d6:	c602                	sw	zero,12(sp)
   1c2d8:	c402                	sw	zero,8(sp)
   1c2da:	c202                	sw	zero,4(sp)
   1c2dc:	4785                	li	a5,1
   1c2de:	a8cd                	j	1c3d0 <__subtf3+0x4c2>
   1c2e0:	6721                	lui	a4,0x8
   1c2e2:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c2e4:	02ea9563          	bne	s5,a4,1c30e <__subtf3+0x400>
   1c2e8:	018be7b3          	or	a5,s7,s8
   1c2ec:	0167e7b3          	or	a5,a5,s6
   1c2f0:	8fc5                	or	a5,a5,s1
   1c2f2:	4401                	li	s0,0
   1c2f4:	c799                	beqz	a5,1c302 <__subtf3+0x3f4>
   1c2f6:	012b5413          	srli	s0,s6,0x12
   1c2fa:	00144413          	xori	s0,s0,1
   1c2fe:	8805                	andi	s0,s0,1
   1c300:	0412                	slli	s0,s0,0x4
   1c302:	d026                	sw	s1,32(sp)
   1c304:	d25e                	sw	s7,36(sp)
   1c306:	d462                	sw	s8,40(sp)
   1c308:	d65a                	sw	s6,44(sp)
   1c30a:	87d6                	mv	a5,s5
   1c30c:	bfbd                	j	1c28a <__subtf3+0x37c>
   1c30e:	4732                	lw	a4,12(sp)
   1c310:	000806b7          	lui	a3,0x80
   1c314:	8f55                	or	a4,a4,a3
   1c316:	c63a                	sw	a4,12(sp)
   1c318:	07400713          	li	a4,116
   1c31c:	faf74de3          	blt	a4,a5,1c2d6 <__subtf3+0x3c8>
   1c320:	883e                	mv	a6,a5
   1c322:	02000713          	li	a4,32
   1c326:	02e84733          	div	a4,a6,a4
   1c32a:	86ae                	mv	a3,a1
   1c32c:	4401                	li	s0,0
   1c32e:	4781                	li	a5,0
   1c330:	02e7c663          	blt	a5,a4,1c35c <__subtf3+0x44e>
   1c334:	478d                	li	a5,3
   1c336:	01f87893          	andi	a7,a6,31
   1c33a:	8f99                	sub	a5,a5,a4
   1c33c:	00271613          	slli	a2,a4,0x2
   1c340:	02089363          	bnez	a7,1c366 <__subtf3+0x458>
   1c344:	00c586b3          	add	a3,a1,a2
   1c348:	4294                	lw	a3,0(a3)
   1c34a:	0885                	addi	a7,a7,1
   1c34c:	c194                	sw	a3,0(a1)
   1c34e:	0591                	addi	a1,a1,4
   1c350:	ff17dae3          	bge	a5,a7,1c344 <__subtf3+0x436>
   1c354:	4791                	li	a5,4
   1c356:	40e78733          	sub	a4,a5,a4
   1c35a:	a899                	j	1c3b0 <__subtf3+0x4a2>
   1c35c:	4290                	lw	a2,0(a3)
   1c35e:	0785                	addi	a5,a5,1
   1c360:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x61580>
   1c362:	8c51                	or	s0,s0,a2
   1c364:	b7f1                	j	1c330 <__subtf3+0x422>
   1c366:	02000693          	li	a3,32
   1c36a:	02d86833          	rem	a6,a6,a3
   1c36e:	41068833          	sub	a6,a3,a6
   1c372:	86ba                	mv	a3,a4
   1c374:	00075363          	bgez	a4,1c37a <__subtf3+0x46c>
   1c378:	4681                	li	a3,0
   1c37a:	068a                	slli	a3,a3,0x2
   1c37c:	04068693          	addi	a3,a3,64
   1c380:	968a                	add	a3,a3,sp
   1c382:	fc06a683          	lw	a3,-64(a3)
   1c386:	95b2                	add	a1,a1,a2
   1c388:	4301                	li	t1,0
   1c38a:	010696b3          	sll	a3,a3,a6
   1c38e:	8c55                	or	s0,s0,a3
   1c390:	40c00633          	neg	a2,a2
   1c394:	06f34a63          	blt	t1,a5,1c408 <__subtf3+0x4fa>
   1c398:	4691                	li	a3,4
   1c39a:	40e68733          	sub	a4,a3,a4
   1c39e:	46b2                	lw	a3,12(sp)
   1c3a0:	078a                	slli	a5,a5,0x2
   1c3a2:	04078793          	addi	a5,a5,64
   1c3a6:	978a                	add	a5,a5,sp
   1c3a8:	0116d6b3          	srl	a3,a3,a7
   1c3ac:	fcd7a023          	sw	a3,-64(a5)
   1c3b0:	00572793          	slti	a5,a4,5
   1c3b4:	4601                	li	a2,0
   1c3b6:	c781                	beqz	a5,1c3be <__subtf3+0x4b0>
   1c3b8:	4611                	li	a2,4
   1c3ba:	8e19                	sub	a2,a2,a4
   1c3bc:	060a                	slli	a2,a2,0x2
   1c3be:	070a                	slli	a4,a4,0x2
   1c3c0:	953a                	add	a0,a0,a4
   1c3c2:	4581                	li	a1,0
   1c3c4:	aa7f70ef          	jal	13e6a <memset>
   1c3c8:	4702                	lw	a4,0(sp)
   1c3ca:	008037b3          	snez	a5,s0
   1c3ce:	8fd9                	or	a5,a5,a4
   1c3d0:	4692                	lw	a3,4(sp)
   1c3d2:	c03e                	sw	a5,0(sp)
   1c3d4:	97a6                	add	a5,a5,s1
   1c3d6:	9bb6                	add	s7,s7,a3
   1c3d8:	4722                	lw	a4,8(sp)
   1c3da:	d03e                	sw	a5,32(sp)
   1c3dc:	0097b7b3          	sltu	a5,a5,s1
   1c3e0:	97de                	add	a5,a5,s7
   1c3e2:	d23e                	sw	a5,36(sp)
   1c3e4:	00dbb6b3          	sltu	a3,s7,a3
   1c3e8:	0177b7b3          	sltu	a5,a5,s7
   1c3ec:	9c3a                	add	s8,s8,a4
   1c3ee:	8fd5                	or	a5,a5,a3
   1c3f0:	97e2                	add	a5,a5,s8
   1c3f2:	d43e                	sw	a5,40(sp)
   1c3f4:	00ec3733          	sltu	a4,s8,a4
   1c3f8:	0187b7b3          	sltu	a5,a5,s8
   1c3fc:	8f5d                	or	a4,a4,a5
   1c3fe:	47b2                	lw	a5,12(sp)
   1c400:	97da                	add	a5,a5,s6
   1c402:	973e                	add	a4,a4,a5
   1c404:	87d6                	mv	a5,s5
   1c406:	b36d                	j	1c1b0 <__subtf3+0x2a2>
   1c408:	4194                	lw	a3,0(a1)
   1c40a:	0045ae03          	lw	t3,4(a1)
   1c40e:	00c58eb3          	add	t4,a1,a2
   1c412:	0116d6b3          	srl	a3,a3,a7
   1c416:	010e1e33          	sll	t3,t3,a6
   1c41a:	01c6e6b3          	or	a3,a3,t3
   1c41e:	00dea023          	sw	a3,0(t4)
   1c422:	0305                	addi	t1,t1,1
   1c424:	0591                	addi	a1,a1,4
   1c426:	b7bd                	j	1c394 <__subtf3+0x486>
   1c428:	00140793          	addi	a5,s0,1
   1c42c:	01179513          	slli	a0,a5,0x11
   1c430:	8149                	srli	a0,a0,0x12
   1c432:	4612                	lw	a2,4(sp)
   1c434:	46a2                	lw	a3,8(sp)
   1c436:	45b2                	lw	a1,12(sp)
   1c438:	10051c63          	bnez	a0,1c550 <__subtf3+0x642>
   1c43c:	00d667b3          	or	a5,a2,a3
   1c440:	8fcd                	or	a5,a5,a1
   1c442:	8fd9                	or	a5,a5,a4
   1c444:	e049                	bnez	s0,1c4c6 <__subtf3+0x5b8>
   1c446:	e785                	bnez	a5,1c46e <__subtf3+0x560>
   1c448:	d026                	sw	s1,32(sp)
   1c44a:	d25e                	sw	s7,36(sp)
   1c44c:	d462                	sw	s8,40(sp)
   1c44e:	d65a                	sw	s6,44(sp)
   1c450:	5782                	lw	a5,32(sp)
   1c452:	5592                	lw	a1,36(sp)
   1c454:	5622                	lw	a2,40(sp)
   1c456:	56b2                	lw	a3,44(sp)
   1c458:	00b7e733          	or	a4,a5,a1
   1c45c:	8f51                	or	a4,a4,a2
   1c45e:	8f55                	or	a4,a4,a3
   1c460:	1a071de3          	bnez	a4,1ce1a <__subtf3+0xf0c>
   1c464:	4781                	li	a5,0
   1c466:	4681                	li	a3,0
   1c468:	4401                	li	s0,0
   1c46a:	21d0006f          	j	1ce86 <__subtf3+0xf78>
   1c46e:	018be7b3          	or	a5,s7,s8
   1c472:	0167e7b3          	or	a5,a5,s6
   1c476:	8fc5                	or	a5,a5,s1
   1c478:	e791                	bnez	a5,1c484 <__subtf3+0x576>
   1c47a:	d03a                	sw	a4,32(sp)
   1c47c:	d232                	sw	a2,36(sp)
   1c47e:	d436                	sw	a3,40(sp)
   1c480:	d62e                	sw	a1,44(sp)
   1c482:	b7f9                	j	1c450 <__subtf3+0x542>
   1c484:	94ba                	add	s1,s1,a4
   1c486:	9bb2                	add	s7,s7,a2
   1c488:	d026                	sw	s1,32(sp)
   1c48a:	00e4b4b3          	sltu	s1,s1,a4
   1c48e:	94de                	add	s1,s1,s7
   1c490:	d226                	sw	s1,36(sp)
   1c492:	00cbb633          	sltu	a2,s7,a2
   1c496:	0174b4b3          	sltu	s1,s1,s7
   1c49a:	9c36                	add	s8,s8,a3
   1c49c:	8e45                	or	a2,a2,s1
   1c49e:	9662                	add	a2,a2,s8
   1c4a0:	d432                	sw	a2,40(sp)
   1c4a2:	00dc36b3          	sltu	a3,s8,a3
   1c4a6:	01863633          	sltu	a2,a2,s8
   1c4aa:	8ed1                	or	a3,a3,a2
   1c4ac:	95da                	add	a1,a1,s6
   1c4ae:	96ae                	add	a3,a3,a1
   1c4b0:	00c69793          	slli	a5,a3,0xc
   1c4b4:	3207d2e3          	bgez	a5,1cfd8 <__subtf3+0x10ca>
   1c4b8:	fff807b7          	lui	a5,0xfff80
   1c4bc:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff6157b>
   1c4be:	8efd                	and	a3,a3,a5
   1c4c0:	d636                	sw	a3,44(sp)
   1c4c2:	4785                	li	a5,1
   1c4c4:	b3d9                	j	1c28a <__subtf3+0x37c>
   1c4c6:	6521                	lui	a0,0x8
   1c4c8:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1c4ca:	04a41363          	bne	s0,a0,1c510 <__subtf3+0x602>
   1c4ce:	300788e3          	beqz	a5,1cfde <__subtf3+0x10d0>
   1c4d2:	0125d413          	srli	s0,a1,0x12
   1c4d6:	00144413          	xori	s0,s0,1
   1c4da:	8805                	andi	s0,s0,1
   1c4dc:	0412                	slli	s0,s0,0x4
   1c4de:	02aa9d63          	bne	s5,a0,1c518 <__subtf3+0x60a>
   1c4e2:	018be533          	or	a0,s7,s8
   1c4e6:	01656533          	or	a0,a0,s6
   1c4ea:	8d45                	or	a0,a0,s1
   1c4ec:	c50d                	beqz	a0,1c516 <__subtf3+0x608>
   1c4ee:	00db1513          	slli	a0,s6,0xd
   1c4f2:	02054263          	bltz	a0,1c516 <__subtf3+0x608>
   1c4f6:	4441                	li	s0,16
   1c4f8:	eb85                	bnez	a5,1c528 <__subtf3+0x61a>
   1c4fa:	8726                	mv	a4,s1
   1c4fc:	865e                	mv	a2,s7
   1c4fe:	86e2                	mv	a3,s8
   1c500:	85da                	mv	a1,s6
   1c502:	d03a                	sw	a4,32(sp)
   1c504:	d232                	sw	a2,36(sp)
   1c506:	d436                	sw	a3,40(sp)
   1c508:	d62e                	sw	a1,44(sp)
   1c50a:	67a1                	lui	a5,0x8
   1c50c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c50e:	bbb5                	j	1c28a <__subtf3+0x37c>
   1c510:	4401                	li	s0,0
   1c512:	fcaa88e3          	beq	s5,a0,1c4e2 <__subtf3+0x5d4>
   1c516:	d3f5                	beqz	a5,1c4fa <__subtf3+0x5ec>
   1c518:	018bebb3          	or	s7,s7,s8
   1c51c:	016bebb3          	or	s7,s7,s6
   1c520:	009bebb3          	or	s7,s7,s1
   1c524:	fc0b8fe3          	beqz	s7,1c502 <__subtf3+0x5f4>
   1c528:	67a1                	lui	a5,0x8
   1c52a:	d63e                	sw	a5,44(sp)
   1c52c:	d402                	sw	zero,40(sp)
   1c52e:	d202                	sw	zero,36(sp)
   1c530:	d002                	sw	zero,32(sp)
   1c532:	101c                	addi	a5,sp,32
   1c534:	0850                	addi	a2,sp,20
   1c536:	47d8                	lw	a4,12(a5)
   1c538:	4794                	lw	a3,8(a5)
   1c53a:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1c53c:	070e                	slli	a4,a4,0x3
   1c53e:	82f5                	srli	a3,a3,0x1d
   1c540:	8f55                	or	a4,a4,a3
   1c542:	cb98                	sw	a4,16(a5)
   1c544:	fef619e3          	bne	a2,a5,1c536 <__subtf3+0x628>
   1c548:	4981                	li	s3,0
   1c54a:	b7c1                	j	1c50a <__subtf3+0x5fc>
   1c54c:	4401                	li	s0,0
   1c54e:	bf51                	j	1c4e2 <__subtf3+0x5d4>
   1c550:	94ba                	add	s1,s1,a4
   1c552:	9bb2                	add	s7,s7,a2
   1c554:	d026                	sw	s1,32(sp)
   1c556:	00e4b4b3          	sltu	s1,s1,a4
   1c55a:	94de                	add	s1,s1,s7
   1c55c:	d226                	sw	s1,36(sp)
   1c55e:	00cbb633          	sltu	a2,s7,a2
   1c562:	0174b4b3          	sltu	s1,s1,s7
   1c566:	9c36                	add	s8,s8,a3
   1c568:	8e45                	or	a2,a2,s1
   1c56a:	9662                	add	a2,a2,s8
   1c56c:	d432                	sw	a2,40(sp)
   1c56e:	00dc36b3          	sltu	a3,s8,a3
   1c572:	01863633          	sltu	a2,a2,s8
   1c576:	8ed1                	or	a3,a3,a2
   1c578:	95da                	add	a1,a1,s6
   1c57a:	96ae                	add	a3,a3,a1
   1c57c:	d636                	sw	a3,44(sp)
   1c57e:	1018                	addi	a4,sp,32
   1c580:	1068                	addi	a0,sp,44
   1c582:	4310                	lw	a2,0(a4)
   1c584:	434c                	lw	a1,4(a4)
   1c586:	8205                	srli	a2,a2,0x1
   1c588:	05fe                	slli	a1,a1,0x1f
   1c58a:	8e4d                	or	a2,a2,a1
   1c58c:	c310                	sw	a2,0(a4)
   1c58e:	0711                	addi	a4,a4,4
   1c590:	fee519e3          	bne	a0,a4,1c582 <__subtf3+0x674>
   1c594:	6721                	lui	a4,0x8
   1c596:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c598:	c6e782e3          	beq	a5,a4,1c1fc <__subtf3+0x2ee>
   1c59c:	8285                	srli	a3,a3,0x1
   1c59e:	d636                	sw	a3,44(sp)
   1c5a0:	4401                	li	s0,0
   1c5a2:	b1e5                	j	1c28a <__subtf3+0x37c>
   1c5a4:	4789                	li	a5,2
   1c5a6:	c6fa12e3          	bne	s4,a5,1c20a <__subtf3+0x2fc>
   1c5aa:	c60980e3          	beqz	s3,1c20a <__subtf3+0x2fc>
   1c5ae:	67a1                	lui	a5,0x8
   1c5b0:	d602                	sw	zero,44(sp)
   1c5b2:	d402                	sw	zero,40(sp)
   1c5b4:	d202                	sw	zero,36(sp)
   1c5b6:	d002                	sw	zero,32(sp)
   1c5b8:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c5ba:	4415                	li	s0,5
   1c5bc:	b1f9                	j	1c28a <__subtf3+0x37c>
   1c5be:	22f05b63          	blez	a5,1c7f4 <__subtf3+0x8e6>
   1c5c2:	4592                	lw	a1,4(sp)
   1c5c4:	4522                	lw	a0,8(sp)
   1c5c6:	48b2                	lw	a7,12(sp)
   1c5c8:	0a0a9563          	bnez	s5,1c672 <__subtf3+0x764>
   1c5cc:	4ed2                	lw	t4,20(sp)
   1c5ce:	4fe2                	lw	t6,24(sp)
   1c5d0:	4672                	lw	a2,28(sp)
   1c5d2:	01fee6b3          	or	a3,t4,t6
   1c5d6:	8ed1                	or	a3,a3,a2
   1c5d8:	8ec5                	or	a3,a3,s1
   1c5da:	e69d                	bnez	a3,1c608 <__subtf3+0x6fa>
   1c5dc:	66a1                	lui	a3,0x8
   1c5de:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c5e0:	00d79f63          	bne	a5,a3,1c5fe <__subtf3+0x6f0>
   1c5e4:	00a5e6b3          	or	a3,a1,a0
   1c5e8:	0116e6b3          	or	a3,a3,a7
   1c5ec:	8ed9                	or	a3,a3,a4
   1c5ee:	ca81                	beqz	a3,1c5fe <__subtf3+0x6f0>
   1c5f0:	0128da93          	srli	s5,a7,0x12
   1c5f4:	001aca93          	xori	s5,s5,1
   1c5f8:	001afa93          	andi	s5,s5,1
   1c5fc:	0a92                	slli	s5,s5,0x4
   1c5fe:	d03a                	sw	a4,32(sp)
   1c600:	d22e                	sw	a1,36(sp)
   1c602:	d42a                	sw	a0,40(sp)
   1c604:	d646                	sw	a7,44(sp)
   1c606:	b435                	j	1c032 <__subtf3+0x124>
   1c608:	fff78f13          	addi	t5,a5,-1
   1c60c:	040f1663          	bnez	t5,1c658 <__subtf3+0x74a>
   1c610:	409706b3          	sub	a3,a4,s1
   1c614:	41d58833          	sub	a6,a1,t4
   1c618:	00d73333          	sltu	t1,a4,a3
   1c61c:	0105b7b3          	sltu	a5,a1,a6
   1c620:	40680833          	sub	a6,a6,t1
   1c624:	4301                	li	t1,0
   1c626:	00d77663          	bgeu	a4,a3,1c632 <__subtf3+0x724>
   1c62a:	40be8eb3          	sub	t4,t4,a1
   1c62e:	001eb313          	seqz	t1,t4
   1c632:	00f36733          	or	a4,t1,a5
   1c636:	41f505b3          	sub	a1,a0,t6
   1c63a:	00b53333          	sltu	t1,a0,a1
   1c63e:	8d99                	sub	a1,a1,a4
   1c640:	c709                	beqz	a4,1c64a <__subtf3+0x73c>
   1c642:	40af87b3          	sub	a5,t6,a0
   1c646:	0017bf13          	seqz	t5,a5
   1c64a:	40c88733          	sub	a4,a7,a2
   1c64e:	006f67b3          	or	a5,t5,t1
   1c652:	8f1d                	sub	a4,a4,a5
   1c654:	4785                	li	a5,1
   1c656:	aab9                	j	1c7b4 <__subtf3+0x8a6>
   1c658:	66a1                	lui	a3,0x8
   1c65a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c65c:	f8d784e3          	beq	a5,a3,1c5e4 <__subtf3+0x6d6>
   1c660:	07400793          	li	a5,116
   1c664:	05e7d763          	bge	a5,t5,1c6b2 <__subtf3+0x7a4>
   1c668:	ce02                	sw	zero,28(sp)
   1c66a:	cc02                	sw	zero,24(sp)
   1c66c:	ca02                	sw	zero,20(sp)
   1c66e:	4685                	li	a3,1
   1c670:	a8e5                	j	1c768 <__subtf3+0x85a>
   1c672:	66a1                	lui	a3,0x8
   1c674:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c676:	02d41463          	bne	s0,a3,1c69e <__subtf3+0x790>
   1c67a:	00a5e7b3          	or	a5,a1,a0
   1c67e:	0117e7b3          	or	a5,a5,a7
   1c682:	8fd9                	or	a5,a5,a4
   1c684:	4681                	li	a3,0
   1c686:	c799                	beqz	a5,1c694 <__subtf3+0x786>
   1c688:	0128d693          	srli	a3,a7,0x12
   1c68c:	0016c693          	xori	a3,a3,1
   1c690:	8a85                	andi	a3,a3,1
   1c692:	0692                	slli	a3,a3,0x4
   1c694:	d03a                	sw	a4,32(sp)
   1c696:	d22e                	sw	a1,36(sp)
   1c698:	d42a                	sw	a0,40(sp)
   1c69a:	d646                	sw	a7,44(sp)
   1c69c:	bc09                	j	1c0ae <__subtf3+0x1a0>
   1c69e:	46f2                	lw	a3,28(sp)
   1c6a0:	00080637          	lui	a2,0x80
   1c6a4:	8ed1                	or	a3,a3,a2
   1c6a6:	ce36                	sw	a3,28(sp)
   1c6a8:	07400693          	li	a3,116
   1c6ac:	faf6cee3          	blt	a3,a5,1c668 <__subtf3+0x75a>
   1c6b0:	8f3e                	mv	t5,a5
   1c6b2:	405f5793          	srai	a5,t5,0x5
   1c6b6:	8342                	mv	t1,a6
   1c6b8:	01ff7f13          	andi	t5,t5,31
   1c6bc:	4681                	li	a3,0
   1c6be:	4601                	li	a2,0
   1c6c0:	02f61663          	bne	a2,a5,1c6ec <__subtf3+0x7de>
   1c6c4:	460d                	li	a2,3
   1c6c6:	8e1d                	sub	a2,a2,a5
   1c6c8:	00279313          	slli	t1,a5,0x2
   1c6cc:	020f1763          	bnez	t5,1c6fa <__subtf3+0x7ec>
   1c6d0:	00680eb3          	add	t4,a6,t1
   1c6d4:	000eae83          	lw	t4,0(t4)
   1c6d8:	0f05                	addi	t5,t5,1
   1c6da:	0811                	addi	a6,a6,4
   1c6dc:	ffd82e23          	sw	t4,-4(a6)
   1c6e0:	ffe658e3          	bge	a2,t5,1c6d0 <__subtf3+0x7c2>
   1c6e4:	4611                	li	a2,4
   1c6e6:	40f607b3          	sub	a5,a2,a5
   1c6ea:	a881                	j	1c73a <__subtf3+0x82c>
   1c6ec:	00032e83          	lw	t4,0(t1)
   1c6f0:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x6157d>
   1c6f2:	0311                	addi	t1,t1,4
   1c6f4:	01d6e6b3          	or	a3,a3,t4
   1c6f8:	b7e1                	j	1c6c0 <__subtf3+0x7b2>
   1c6fa:	04030493          	addi	s1,t1,64
   1c6fe:	00248eb3          	add	t4,s1,sp
   1c702:	fd0eae83          	lw	t4,-48(t4)
   1c706:	02000393          	li	t2,32
   1c70a:	41e383b3          	sub	t2,t2,t5
   1c70e:	007e9eb3          	sll	t4,t4,t2
   1c712:	981a                	add	a6,a6,t1
   1c714:	01d6e6b3          	or	a3,a3,t4
   1c718:	40600333          	neg	t1,t1
   1c71c:	4f81                	li	t6,0
   1c71e:	0acfca63          	blt	t6,a2,1c7d2 <__subtf3+0x8c4>
   1c722:	4811                	li	a6,4
   1c724:	40f807b3          	sub	a5,a6,a5
   1c728:	4872                	lw	a6,28(sp)
   1c72a:	060a                	slli	a2,a2,0x2
   1c72c:	04060613          	addi	a2,a2,64
   1c730:	960a                	add	a2,a2,sp
   1c732:	01e85833          	srl	a6,a6,t5
   1c736:	fd062823          	sw	a6,-48(a2)
   1c73a:	4611                	li	a2,4
   1c73c:	8e1d                	sub	a2,a2,a5
   1c73e:	060a                	slli	a2,a2,0x2
   1c740:	078a                	slli	a5,a5,0x2
   1c742:	4821                	li	a6,8
   1c744:	97f2                	add	a5,a5,t3
   1c746:	01066863          	bltu	a2,a6,1c756 <__subtf3+0x848>
   1c74a:	0007a023          	sw	zero,0(a5)
   1c74e:	0007a223          	sw	zero,4(a5)
   1c752:	1661                	addi	a2,a2,-8
   1c754:	07a1                	addi	a5,a5,8
   1c756:	4811                	li	a6,4
   1c758:	01066463          	bltu	a2,a6,1c760 <__subtf3+0x852>
   1c75c:	0007a023          	sw	zero,0(a5)
   1c760:	47c2                	lw	a5,16(sp)
   1c762:	00d036b3          	snez	a3,a3
   1c766:	8edd                	or	a3,a3,a5
   1c768:	4652                	lw	a2,20(sp)
   1c76a:	c836                	sw	a3,16(sp)
   1c76c:	40d706b3          	sub	a3,a4,a3
   1c770:	40c58833          	sub	a6,a1,a2
   1c774:	00d737b3          	sltu	a5,a4,a3
   1c778:	0105b333          	sltu	t1,a1,a6
   1c77c:	40f80833          	sub	a6,a6,a5
   1c780:	4781                	li	a5,0
   1c782:	00d77563          	bgeu	a4,a3,1c78c <__subtf3+0x87e>
   1c786:	8e0d                	sub	a2,a2,a1
   1c788:	00163793          	seqz	a5,a2
   1c78c:	4762                	lw	a4,24(sp)
   1c78e:	0067e7b3          	or	a5,a5,t1
   1c792:	4601                	li	a2,0
   1c794:	40e505b3          	sub	a1,a0,a4
   1c798:	00b53333          	sltu	t1,a0,a1
   1c79c:	8d9d                	sub	a1,a1,a5
   1c79e:	c781                	beqz	a5,1c7a6 <__subtf3+0x898>
   1c7a0:	8f09                	sub	a4,a4,a0
   1c7a2:	00173613          	seqz	a2,a4
   1c7a6:	4772                	lw	a4,28(sp)
   1c7a8:	00666633          	or	a2,a2,t1
   1c7ac:	87a2                	mv	a5,s0
   1c7ae:	40e88733          	sub	a4,a7,a4
   1c7b2:	8f11                	sub	a4,a4,a2
   1c7b4:	d036                	sw	a3,32(sp)
   1c7b6:	d63a                	sw	a4,44(sp)
   1c7b8:	d42e                	sw	a1,40(sp)
   1c7ba:	d242                	sw	a6,36(sp)
   1c7bc:	00c71693          	slli	a3,a4,0xc
   1c7c0:	de06d0e3          	bgez	a3,1c5a0 <__subtf3+0x692>
   1c7c4:	000806b7          	lui	a3,0x80
   1c7c8:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x6157b>
   1c7ca:	8f75                	and	a4,a4,a3
   1c7cc:	d63a                	sw	a4,44(sp)
   1c7ce:	843e                	mv	s0,a5
   1c7d0:	a1bd                	j	1cc3e <__subtf3+0xd30>
   1c7d2:	00082e83          	lw	t4,0(a6)
   1c7d6:	00482283          	lw	t0,4(a6)
   1c7da:	006804b3          	add	s1,a6,t1
   1c7de:	01eedeb3          	srl	t4,t4,t5
   1c7e2:	007292b3          	sll	t0,t0,t2
   1c7e6:	005eeeb3          	or	t4,t4,t0
   1c7ea:	01d4a023          	sw	t4,0(s1)
   1c7ee:	0f85                	addi	t6,t6,1
   1c7f0:	0811                	addi	a6,a6,4
   1c7f2:	b735                	j	1c71e <__subtf3+0x810>
   1c7f4:	4bd2                	lw	s7,20(sp)
   1c7f6:	4b62                	lw	s6,24(sp)
   1c7f8:	4c72                	lw	s8,28(sp)
   1c7fa:	20078763          	beqz	a5,1ca08 <__subtf3+0xafa>
   1c7fe:	408a87b3          	sub	a5,s5,s0
   1c802:	e05d                	bnez	s0,1c8a8 <__subtf3+0x99a>
   1c804:	4892                	lw	a7,4(sp)
   1c806:	4e22                	lw	t3,8(sp)
   1c808:	4632                	lw	a2,12(sp)
   1c80a:	01c8e6b3          	or	a3,a7,t3
   1c80e:	8ed1                	or	a3,a3,a2
   1c810:	8ed9                	or	a3,a3,a4
   1c812:	e69d                	bnez	a3,1c840 <__subtf3+0x932>
   1c814:	6721                	lui	a4,0x8
   1c816:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c818:	00e79e63          	bne	a5,a4,1c834 <__subtf3+0x926>
   1c81c:	016be733          	or	a4,s7,s6
   1c820:	01876733          	or	a4,a4,s8
   1c824:	8f45                	or	a4,a4,s1
   1c826:	c719                	beqz	a4,1c834 <__subtf3+0x926>
   1c828:	012c5413          	srli	s0,s8,0x12
   1c82c:	00144413          	xori	s0,s0,1
   1c830:	8805                	andi	s0,s0,1
   1c832:	0412                	slli	s0,s0,0x4
   1c834:	d026                	sw	s1,32(sp)
   1c836:	d25e                	sw	s7,36(sp)
   1c838:	d45a                	sw	s6,40(sp)
   1c83a:	d662                	sw	s8,44(sp)
   1c83c:	89e6                	mv	s3,s9
   1c83e:	b4b1                	j	1c28a <__subtf3+0x37c>
   1c840:	fff78313          	addi	t1,a5,-1
   1c844:	04031563          	bnez	t1,1c88e <__subtf3+0x980>
   1c848:	40e486b3          	sub	a3,s1,a4
   1c84c:	411b8833          	sub	a6,s7,a7
   1c850:	00d4b733          	sltu	a4,s1,a3
   1c854:	010bb7b3          	sltu	a5,s7,a6
   1c858:	40e80833          	sub	a6,a6,a4
   1c85c:	4701                	li	a4,0
   1c85e:	00d4f663          	bgeu	s1,a3,1c86a <__subtf3+0x95c>
   1c862:	417888b3          	sub	a7,a7,s7
   1c866:	0018b713          	seqz	a4,a7
   1c86a:	41cb05b3          	sub	a1,s6,t3
   1c86e:	8f5d                	or	a4,a4,a5
   1c870:	00bb3533          	sltu	a0,s6,a1
   1c874:	8d99                	sub	a1,a1,a4
   1c876:	c709                	beqz	a4,1c880 <__subtf3+0x972>
   1c878:	416e07b3          	sub	a5,t3,s6
   1c87c:	0017b313          	seqz	t1,a5
   1c880:	40cc0733          	sub	a4,s8,a2
   1c884:	00a367b3          	or	a5,t1,a0
   1c888:	8f1d                	sub	a4,a4,a5
   1c88a:	89e6                	mv	s3,s9
   1c88c:	b3e1                	j	1c654 <__subtf3+0x746>
   1c88e:	6721                	lui	a4,0x8
   1c890:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c892:	f8e785e3          	beq	a5,a4,1c81c <__subtf3+0x90e>
   1c896:	07400793          	li	a5,116
   1c89a:	0467d863          	bge	a5,t1,1c8ea <__subtf3+0x9dc>
   1c89e:	c602                	sw	zero,12(sp)
   1c8a0:	c402                	sw	zero,8(sp)
   1c8a2:	c202                	sw	zero,4(sp)
   1c8a4:	4685                	li	a3,1
   1c8a6:	a8cd                	j	1c998 <__subtf3+0xa8a>
   1c8a8:	6721                	lui	a4,0x8
   1c8aa:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c8ac:	02ea9563          	bne	s5,a4,1c8d6 <__subtf3+0x9c8>
   1c8b0:	016be7b3          	or	a5,s7,s6
   1c8b4:	0187e7b3          	or	a5,a5,s8
   1c8b8:	8fc5                	or	a5,a5,s1
   1c8ba:	4401                	li	s0,0
   1c8bc:	c799                	beqz	a5,1c8ca <__subtf3+0x9bc>
   1c8be:	012c5413          	srli	s0,s8,0x12
   1c8c2:	00144413          	xori	s0,s0,1
   1c8c6:	8805                	andi	s0,s0,1
   1c8c8:	0412                	slli	s0,s0,0x4
   1c8ca:	d026                	sw	s1,32(sp)
   1c8cc:	d25e                	sw	s7,36(sp)
   1c8ce:	d45a                	sw	s6,40(sp)
   1c8d0:	d662                	sw	s8,44(sp)
   1c8d2:	87d6                	mv	a5,s5
   1c8d4:	b7a5                	j	1c83c <__subtf3+0x92e>
   1c8d6:	4732                	lw	a4,12(sp)
   1c8d8:	000806b7          	lui	a3,0x80
   1c8dc:	8f55                	or	a4,a4,a3
   1c8de:	c63a                	sw	a4,12(sp)
   1c8e0:	07400713          	li	a4,116
   1c8e4:	faf74de3          	blt	a4,a5,1c89e <__subtf3+0x990>
   1c8e8:	833e                	mv	t1,a5
   1c8ea:	02000793          	li	a5,32
   1c8ee:	02f347b3          	div	a5,t1,a5
   1c8f2:	86ae                	mv	a3,a1
   1c8f4:	4401                	li	s0,0
   1c8f6:	4701                	li	a4,0
   1c8f8:	02f74663          	blt	a4,a5,1c924 <__subtf3+0xa16>
   1c8fc:	470d                	li	a4,3
   1c8fe:	01f37813          	andi	a6,t1,31
   1c902:	8f1d                	sub	a4,a4,a5
   1c904:	00279613          	slli	a2,a5,0x2
   1c908:	02081363          	bnez	a6,1c92e <__subtf3+0xa20>
   1c90c:	00c586b3          	add	a3,a1,a2
   1c910:	4294                	lw	a3,0(a3)
   1c912:	0805                	addi	a6,a6,1
   1c914:	c194                	sw	a3,0(a1)
   1c916:	0591                	addi	a1,a1,4
   1c918:	ff075ae3          	bge	a4,a6,1c90c <__subtf3+0x9fe>
   1c91c:	4711                	li	a4,4
   1c91e:	40f707b3          	sub	a5,a4,a5
   1c922:	a899                	j	1c978 <__subtf3+0xa6a>
   1c924:	4290                	lw	a2,0(a3)
   1c926:	0705                	addi	a4,a4,1
   1c928:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x61580>
   1c92a:	8c51                	or	s0,s0,a2
   1c92c:	b7f1                	j	1c8f8 <__subtf3+0x9ea>
   1c92e:	02000693          	li	a3,32
   1c932:	02d36333          	rem	t1,t1,a3
   1c936:	40668333          	sub	t1,a3,t1
   1c93a:	86be                	mv	a3,a5
   1c93c:	0007d363          	bgez	a5,1c942 <__subtf3+0xa34>
   1c940:	4681                	li	a3,0
   1c942:	068a                	slli	a3,a3,0x2
   1c944:	04068693          	addi	a3,a3,64
   1c948:	968a                	add	a3,a3,sp
   1c94a:	fc06a683          	lw	a3,-64(a3)
   1c94e:	95b2                	add	a1,a1,a2
   1c950:	4881                	li	a7,0
   1c952:	006696b3          	sll	a3,a3,t1
   1c956:	8c55                	or	s0,s0,a3
   1c958:	40c00633          	neg	a2,a2
   1c95c:	08e8c663          	blt	a7,a4,1c9e8 <__subtf3+0xada>
   1c960:	4691                	li	a3,4
   1c962:	40f687b3          	sub	a5,a3,a5
   1c966:	46b2                	lw	a3,12(sp)
   1c968:	070a                	slli	a4,a4,0x2
   1c96a:	04070713          	addi	a4,a4,64
   1c96e:	970a                	add	a4,a4,sp
   1c970:	0106d6b3          	srl	a3,a3,a6
   1c974:	fcd72023          	sw	a3,-64(a4)
   1c978:	0057a713          	slti	a4,a5,5
   1c97c:	4601                	li	a2,0
   1c97e:	c701                	beqz	a4,1c986 <__subtf3+0xa78>
   1c980:	4611                	li	a2,4
   1c982:	8e1d                	sub	a2,a2,a5
   1c984:	060a                	slli	a2,a2,0x2
   1c986:	078a                	slli	a5,a5,0x2
   1c988:	953e                	add	a0,a0,a5
   1c98a:	4581                	li	a1,0
   1c98c:	cdef70ef          	jal	13e6a <memset>
   1c990:	4782                	lw	a5,0(sp)
   1c992:	008036b3          	snez	a3,s0
   1c996:	8edd                	or	a3,a3,a5
   1c998:	4712                	lw	a4,4(sp)
   1c99a:	c036                	sw	a3,0(sp)
   1c99c:	40d486b3          	sub	a3,s1,a3
   1c9a0:	40eb8833          	sub	a6,s7,a4
   1c9a4:	00d4b7b3          	sltu	a5,s1,a3
   1c9a8:	010bb633          	sltu	a2,s7,a6
   1c9ac:	40f80833          	sub	a6,a6,a5
   1c9b0:	4781                	li	a5,0
   1c9b2:	00d4f663          	bgeu	s1,a3,1c9be <__subtf3+0xab0>
   1c9b6:	41770733          	sub	a4,a4,s7
   1c9ba:	00173793          	seqz	a5,a4
   1c9be:	4722                	lw	a4,8(sp)
   1c9c0:	8fd1                	or	a5,a5,a2
   1c9c2:	4601                	li	a2,0
   1c9c4:	40eb05b3          	sub	a1,s6,a4
   1c9c8:	00bb3533          	sltu	a0,s6,a1
   1c9cc:	8d9d                	sub	a1,a1,a5
   1c9ce:	c789                	beqz	a5,1c9d8 <__subtf3+0xaca>
   1c9d0:	41670733          	sub	a4,a4,s6
   1c9d4:	00173613          	seqz	a2,a4
   1c9d8:	4732                	lw	a4,12(sp)
   1c9da:	8e49                	or	a2,a2,a0
   1c9dc:	87d6                	mv	a5,s5
   1c9de:	40ec0733          	sub	a4,s8,a4
   1c9e2:	8f11                	sub	a4,a4,a2
   1c9e4:	89e6                	mv	s3,s9
   1c9e6:	b3f9                	j	1c7b4 <__subtf3+0x8a6>
   1c9e8:	4194                	lw	a3,0(a1)
   1c9ea:	0045ae03          	lw	t3,4(a1)
   1c9ee:	00c58eb3          	add	t4,a1,a2
   1c9f2:	0106d6b3          	srl	a3,a3,a6
   1c9f6:	006e1e33          	sll	t3,t3,t1
   1c9fa:	01c6e6b3          	or	a3,a3,t3
   1c9fe:	00dea023          	sw	a3,0(t4)
   1ca02:	0885                	addi	a7,a7,1
   1ca04:	0591                	addi	a1,a1,4
   1ca06:	bf99                	j	1c95c <__subtf3+0xa4e>
   1ca08:	00140693          	addi	a3,s0,1
   1ca0c:	01169813          	slli	a6,a3,0x11
   1ca10:	01285813          	srli	a6,a6,0x12
   1ca14:	4612                	lw	a2,4(sp)
   1ca16:	45a2                	lw	a1,8(sp)
   1ca18:	4532                	lw	a0,12(sp)
   1ca1a:	18081363          	bnez	a6,1cba0 <__subtf3+0xc92>
   1ca1e:	016be7b3          	or	a5,s7,s6
   1ca22:	00b666b3          	or	a3,a2,a1
   1ca26:	0187e7b3          	or	a5,a5,s8
   1ca2a:	8ec9                	or	a3,a3,a0
   1ca2c:	8fc5                	or	a5,a5,s1
   1ca2e:	8ed9                	or	a3,a3,a4
   1ca30:	e869                	bnez	s0,1cb02 <__subtf3+0xbf4>
   1ca32:	ea99                	bnez	a3,1ca48 <__subtf3+0xb3a>
   1ca34:	d026                	sw	s1,32(sp)
   1ca36:	d25e                	sw	s7,36(sp)
   1ca38:	d45a                	sw	s6,40(sp)
   1ca3a:	d662                	sw	s8,44(sp)
   1ca3c:	ebcd                	bnez	a5,1caee <__subtf3+0xbe0>
   1ca3e:	ffea0993          	addi	s3,s4,-2
   1ca42:	0019b993          	seqz	s3,s3
   1ca46:	b429                	j	1c450 <__subtf3+0x542>
   1ca48:	e791                	bnez	a5,1ca54 <__subtf3+0xb46>
   1ca4a:	d03a                	sw	a4,32(sp)
   1ca4c:	d232                	sw	a2,36(sp)
   1ca4e:	d42e                	sw	a1,40(sp)
   1ca50:	d62a                	sw	a0,44(sp)
   1ca52:	bafd                	j	1c450 <__subtf3+0x542>
   1ca54:	409707b3          	sub	a5,a4,s1
   1ca58:	41760e33          	sub	t3,a2,s7
   1ca5c:	00f73833          	sltu	a6,a4,a5
   1ca60:	01c638b3          	sltu	a7,a2,t3
   1ca64:	410e0833          	sub	a6,t3,a6
   1ca68:	4681                	li	a3,0
   1ca6a:	00f77463          	bgeu	a4,a5,1ca72 <__subtf3+0xb64>
   1ca6e:	001e3693          	seqz	a3,t3
   1ca72:	0116e6b3          	or	a3,a3,a7
   1ca76:	416588b3          	sub	a7,a1,s6
   1ca7a:	0115bf33          	sltu	t5,a1,a7
   1ca7e:	40d88eb3          	sub	t4,a7,a3
   1ca82:	4301                	li	t1,0
   1ca84:	c299                	beqz	a3,1ca8a <__subtf3+0xb7c>
   1ca86:	0018b313          	seqz	t1,a7
   1ca8a:	01e36333          	or	t1,t1,t5
   1ca8e:	418506b3          	sub	a3,a0,s8
   1ca92:	406686b3          	sub	a3,a3,t1
   1ca96:	d636                	sw	a3,44(sp)
   1ca98:	d476                	sw	t4,40(sp)
   1ca9a:	d242                	sw	a6,36(sp)
   1ca9c:	d03e                	sw	a5,32(sp)
   1ca9e:	00c69313          	slli	t1,a3,0xc
   1caa2:	04035863          	bgez	t1,1caf2 <__subtf3+0xbe4>
   1caa6:	40e48733          	sub	a4,s1,a4
   1caaa:	40cb8633          	sub	a2,s7,a2
   1caae:	00e4b7b3          	sltu	a5,s1,a4
   1cab2:	00cbbbb3          	sltu	s7,s7,a2
   1cab6:	8e1d                	sub	a2,a2,a5
   1cab8:	4781                	li	a5,0
   1caba:	00e4f463          	bgeu	s1,a4,1cac2 <__subtf3+0xbb4>
   1cabe:	001e3793          	seqz	a5,t3
   1cac2:	40bb05b3          	sub	a1,s6,a1
   1cac6:	0177ebb3          	or	s7,a5,s7
   1caca:	00bb3b33          	sltu	s6,s6,a1
   1cace:	417585b3          	sub	a1,a1,s7
   1cad2:	000b8463          	beqz	s7,1cada <__subtf3+0xbcc>
   1cad6:	0018b413          	seqz	s0,a7
   1cada:	40ac0533          	sub	a0,s8,a0
   1cade:	01646b33          	or	s6,s0,s6
   1cae2:	41650533          	sub	a0,a0,s6
   1cae6:	d62a                	sw	a0,44(sp)
   1cae8:	d42e                	sw	a1,40(sp)
   1caea:	d232                	sw	a2,36(sp)
   1caec:	d03a                	sw	a4,32(sp)
   1caee:	89e6                	mv	s3,s9
   1caf0:	b285                	j	1c450 <__subtf3+0x542>
   1caf2:	0107e7b3          	or	a5,a5,a6
   1caf6:	01d7e7b3          	or	a5,a5,t4
   1cafa:	8fd5                	or	a5,a5,a3
   1cafc:	94079ae3          	bnez	a5,1c450 <__subtf3+0x542>
   1cb00:	bf3d                	j	1ca3e <__subtf3+0xb30>
   1cb02:	6821                	lui	a6,0x8
   1cb04:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   1cb06:	03041263          	bne	s0,a6,1cb2a <__subtf3+0xc1c>
   1cb0a:	4c068f63          	beqz	a3,1cfe8 <__subtf3+0x10da>
   1cb0e:	01255413          	srli	s0,a0,0x12
   1cb12:	00144413          	xori	s0,s0,1
   1cb16:	8805                	andi	s0,s0,1
   1cb18:	0412                	slli	s0,s0,0x4
   1cb1a:	010a8b63          	beq	s5,a6,1cb30 <__subtf3+0xc22>
   1cb1e:	ebb1                	bnez	a5,1cb72 <__subtf3+0xc64>
   1cb20:	d03a                	sw	a4,32(sp)
   1cb22:	d232                	sw	a2,36(sp)
   1cb24:	d42e                	sw	a1,40(sp)
   1cb26:	d62a                	sw	a0,44(sp)
   1cb28:	b2cd                	j	1c50a <__subtf3+0x5fc>
   1cb2a:	4401                	li	s0,0
   1cb2c:	010a9363          	bne	s5,a6,1cb32 <__subtf3+0xc24>
   1cb30:	eb9d                	bnez	a5,1cb66 <__subtf3+0xc58>
   1cb32:	f6f5                	bnez	a3,1cb1e <__subtf3+0xc10>
   1cb34:	e3a5                	bnez	a5,1cb94 <__subtf3+0xc86>
   1cb36:	67a1                	lui	a5,0x8
   1cb38:	d63e                	sw	a5,44(sp)
   1cb3a:	d402                	sw	zero,40(sp)
   1cb3c:	d202                	sw	zero,36(sp)
   1cb3e:	d002                	sw	zero,32(sp)
   1cb40:	101c                	addi	a5,sp,32
   1cb42:	0850                	addi	a2,sp,20
   1cb44:	47d8                	lw	a4,12(a5)
   1cb46:	4794                	lw	a3,8(a5)
   1cb48:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1cb4a:	070e                	slli	a4,a4,0x3
   1cb4c:	82f5                	srli	a3,a3,0x1d
   1cb4e:	8f55                	or	a4,a4,a3
   1cb50:	cb98                	sw	a4,16(a5)
   1cb52:	fef619e3          	bne	a2,a5,1cb44 <__subtf3+0xc36>
   1cb56:	67a1                	lui	a5,0x8
   1cb58:	4981                	li	s3,0
   1cb5a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1cb5c:	4441                	li	s0,16
   1cb5e:	f2cff06f          	j	1c28a <__subtf3+0x37c>
   1cb62:	4401                	li	s0,0
   1cb64:	b7f1                	j	1cb30 <__subtf3+0xc22>
   1cb66:	00dc1813          	slli	a6,s8,0xd
   1cb6a:	fc0844e3          	bltz	a6,1cb32 <__subtf3+0xc24>
   1cb6e:	4441                	li	s0,16
   1cb70:	c295                	beqz	a3,1cb94 <__subtf3+0xc86>
   1cb72:	67a1                	lui	a5,0x8
   1cb74:	d63e                	sw	a5,44(sp)
   1cb76:	d402                	sw	zero,40(sp)
   1cb78:	d202                	sw	zero,36(sp)
   1cb7a:	d002                	sw	zero,32(sp)
   1cb7c:	101c                	addi	a5,sp,32
   1cb7e:	0850                	addi	a2,sp,20
   1cb80:	47d8                	lw	a4,12(a5)
   1cb82:	4794                	lw	a3,8(a5)
   1cb84:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1cb86:	070e                	slli	a4,a4,0x3
   1cb88:	82f5                	srli	a3,a3,0x1d
   1cb8a:	8f55                	or	a4,a4,a3
   1cb8c:	cb98                	sw	a4,16(a5)
   1cb8e:	fef619e3          	bne	a2,a5,1cb80 <__subtf3+0xc72>
   1cb92:	ba5d                	j	1c548 <__subtf3+0x63a>
   1cb94:	d026                	sw	s1,32(sp)
   1cb96:	d25e                	sw	s7,36(sp)
   1cb98:	d45a                	sw	s6,40(sp)
   1cb9a:	d662                	sw	s8,44(sp)
   1cb9c:	89e6                	mv	s3,s9
   1cb9e:	b2b5                	j	1c50a <__subtf3+0x5fc>
   1cba0:	409706b3          	sub	a3,a4,s1
   1cba4:	41760e33          	sub	t3,a2,s7
   1cba8:	00d73eb3          	sltu	t4,a4,a3
   1cbac:	01c638b3          	sltu	a7,a2,t3
   1cbb0:	41de0eb3          	sub	t4,t3,t4
   1cbb4:	4801                	li	a6,0
   1cbb6:	00d77463          	bgeu	a4,a3,1cbbe <__subtf3+0xcb0>
   1cbba:	001e3813          	seqz	a6,t3
   1cbbe:	01186833          	or	a6,a6,a7
   1cbc2:	416588b3          	sub	a7,a1,s6
   1cbc6:	0115bf33          	sltu	t5,a1,a7
   1cbca:	41088fb3          	sub	t6,a7,a6
   1cbce:	4301                	li	t1,0
   1cbd0:	00080463          	beqz	a6,1cbd8 <__subtf3+0xcca>
   1cbd4:	0018b313          	seqz	t1,a7
   1cbd8:	01e36333          	or	t1,t1,t5
   1cbdc:	41850833          	sub	a6,a0,s8
   1cbe0:	40680833          	sub	a6,a6,t1
   1cbe4:	d642                	sw	a6,44(sp)
   1cbe6:	d47e                	sw	t6,40(sp)
   1cbe8:	d276                	sw	t4,36(sp)
   1cbea:	d036                	sw	a3,32(sp)
   1cbec:	00c81313          	slli	t1,a6,0xc
   1cbf0:	10035163          	bgez	t1,1ccf2 <__subtf3+0xde4>
   1cbf4:	40e48733          	sub	a4,s1,a4
   1cbf8:	40cb8633          	sub	a2,s7,a2
   1cbfc:	00e4b6b3          	sltu	a3,s1,a4
   1cc00:	00cbbbb3          	sltu	s7,s7,a2
   1cc04:	8e15                	sub	a2,a2,a3
   1cc06:	4681                	li	a3,0
   1cc08:	00e4f463          	bgeu	s1,a4,1cc10 <__subtf3+0xd02>
   1cc0c:	001e3693          	seqz	a3,t3
   1cc10:	40bb05b3          	sub	a1,s6,a1
   1cc14:	0176ebb3          	or	s7,a3,s7
   1cc18:	00bb3b33          	sltu	s6,s6,a1
   1cc1c:	417585b3          	sub	a1,a1,s7
   1cc20:	000b8463          	beqz	s7,1cc28 <__subtf3+0xd1a>
   1cc24:	0018b793          	seqz	a5,a7
   1cc28:	40ac0533          	sub	a0,s8,a0
   1cc2c:	0167eb33          	or	s6,a5,s6
   1cc30:	41650533          	sub	a0,a0,s6
   1cc34:	d62a                	sw	a0,44(sp)
   1cc36:	d42e                	sw	a1,40(sp)
   1cc38:	d232                	sw	a2,36(sp)
   1cc3a:	d03a                	sw	a4,32(sp)
   1cc3c:	89e6                	mv	s3,s9
   1cc3e:	5532                	lw	a0,44(sp)
   1cc40:	c169                	beqz	a0,1cd02 <__subtf3+0xdf4>
   1cc42:	7dc000ef          	jal	1d41e <__clzsi2>
   1cc46:	ff450793          	addi	a5,a0,-12
   1cc4a:	02000693          	li	a3,32
   1cc4e:	01f7f813          	andi	a6,a5,31
   1cc52:	02d7c733          	div	a4,a5,a3
   1cc56:	0c080763          	beqz	a6,1cd24 <__subtf3+0xe16>
   1cc5a:	02010313          	addi	t1,sp,32
   1cc5e:	02d7e633          	rem	a2,a5,a3
   1cc62:	40c685b3          	sub	a1,a3,a2
   1cc66:	5671                	li	a2,-4
   1cc68:	02c70633          	mul	a2,a4,a2
   1cc6c:	00c60693          	addi	a3,a2,12
   1cc70:	969a                	add	a3,a3,t1
   1cc72:	40c00633          	neg	a2,a2
   1cc76:	0cd31763          	bne	t1,a3,1cd44 <__subtf3+0xe36>
   1cc7a:	5602                	lw	a2,32(sp)
   1cc7c:	fff70693          	addi	a3,a4,-1
   1cc80:	070a                	slli	a4,a4,0x2
   1cc82:	04070713          	addi	a4,a4,64
   1cc86:	970a                	add	a4,a4,sp
   1cc88:	01061633          	sll	a2,a2,a6
   1cc8c:	fec72023          	sw	a2,-32(a4)
   1cc90:	00168713          	addi	a4,a3,1
   1cc94:	070a                	slli	a4,a4,0x2
   1cc96:	1014                	addi	a3,sp,32
   1cc98:	4621                	li	a2,8
   1cc9a:	88b6                	mv	a7,a3
   1cc9c:	00c76863          	bltu	a4,a2,1ccac <__subtf3+0xd9e>
   1cca0:	0006a023          	sw	zero,0(a3)
   1cca4:	0006a223          	sw	zero,4(a3)
   1cca8:	1761                	addi	a4,a4,-8
   1ccaa:	1034                	addi	a3,sp,40
   1ccac:	4611                	li	a2,4
   1ccae:	00c76463          	bltu	a4,a2,1ccb6 <__subtf3+0xda8>
   1ccb2:	0006a023          	sw	zero,0(a3)
   1ccb6:	1487c863          	blt	a5,s0,1ce06 <__subtf3+0xef8>
   1ccba:	8f81                	sub	a5,a5,s0
   1ccbc:	0785                	addi	a5,a5,1
   1ccbe:	4057d713          	srai	a4,a5,0x5
   1ccc2:	85c6                	mv	a1,a7
   1ccc4:	8bfd                	andi	a5,a5,31
   1ccc6:	8646                	mv	a2,a7
   1ccc8:	4301                	li	t1,0
   1ccca:	4681                	li	a3,0
   1cccc:	08e69b63          	bne	a3,a4,1cd62 <__subtf3+0xe54>
   1ccd0:	468d                	li	a3,3
   1ccd2:	8e99                	sub	a3,a3,a4
   1ccd4:	00271613          	slli	a2,a4,0x2
   1ccd8:	ebd9                	bnez	a5,1cd6e <__subtf3+0xe60>
   1ccda:	00c58533          	add	a0,a1,a2
   1ccde:	4108                	lw	a0,0(a0)
   1cce0:	0785                	addi	a5,a5,1
   1cce2:	c188                	sw	a0,0(a1)
   1cce4:	0591                	addi	a1,a1,4
   1cce6:	fef6dae3          	bge	a3,a5,1ccda <__subtf3+0xdcc>
   1ccea:	4791                	li	a5,4
   1ccec:	40e78733          	sub	a4,a5,a4
   1ccf0:	a87d                	j	1cdae <__subtf3+0xea0>
   1ccf2:	01d6e6b3          	or	a3,a3,t4
   1ccf6:	01f6e6b3          	or	a3,a3,t6
   1ccfa:	0106e6b3          	or	a3,a3,a6
   1ccfe:	f2a1                	bnez	a3,1cc3e <__subtf3+0xd30>
   1cd00:	bb3d                	j	1ca3e <__subtf3+0xb30>
   1cd02:	5522                	lw	a0,40(sp)
   1cd04:	c509                	beqz	a0,1cd0e <__subtf3+0xe00>
   1cd06:	2f21                	jal	1d41e <__clzsi2>
   1cd08:	02050513          	addi	a0,a0,32
   1cd0c:	bf2d                	j	1cc46 <__subtf3+0xd38>
   1cd0e:	5512                	lw	a0,36(sp)
   1cd10:	c509                	beqz	a0,1cd1a <__subtf3+0xe0c>
   1cd12:	2731                	jal	1d41e <__clzsi2>
   1cd14:	04050513          	addi	a0,a0,64
   1cd18:	b73d                	j	1cc46 <__subtf3+0xd38>
   1cd1a:	5502                	lw	a0,32(sp)
   1cd1c:	2709                	jal	1d41e <__clzsi2>
   1cd1e:	06050513          	addi	a0,a0,96
   1cd22:	b715                	j	1cc46 <__subtf3+0xd38>
   1cd24:	55f1                	li	a1,-4
   1cd26:	02b705b3          	mul	a1,a4,a1
   1cd2a:	1074                	addi	a3,sp,44
   1cd2c:	460d                	li	a2,3
   1cd2e:	00b68533          	add	a0,a3,a1
   1cd32:	4108                	lw	a0,0(a0)
   1cd34:	167d                	addi	a2,a2,-1
   1cd36:	16f1                	addi	a3,a3,-4
   1cd38:	c2c8                	sw	a0,4(a3)
   1cd3a:	fee65ae3          	bge	a2,a4,1cd2e <__subtf3+0xe20>
   1cd3e:	fff70693          	addi	a3,a4,-1
   1cd42:	b7b9                	j	1cc90 <__subtf3+0xd82>
   1cd44:	4288                	lw	a0,0(a3)
   1cd46:	ffc6a883          	lw	a7,-4(a3)
   1cd4a:	00c68e33          	add	t3,a3,a2
   1cd4e:	01051533          	sll	a0,a0,a6
   1cd52:	00b8d8b3          	srl	a7,a7,a1
   1cd56:	01156533          	or	a0,a0,a7
   1cd5a:	00ae2023          	sw	a0,0(t3)
   1cd5e:	16f1                	addi	a3,a3,-4
   1cd60:	bf19                	j	1cc76 <__subtf3+0xd68>
   1cd62:	4208                	lw	a0,0(a2)
   1cd64:	0685                	addi	a3,a3,1
   1cd66:	0611                	addi	a2,a2,4
   1cd68:	00a36333          	or	t1,t1,a0
   1cd6c:	b785                	j	1cccc <__subtf3+0xdbe>
   1cd6e:	04060593          	addi	a1,a2,64
   1cd72:	958a                	add	a1,a1,sp
   1cd74:	fe05a583          	lw	a1,-32(a1)
   1cd78:	02000813          	li	a6,32
   1cd7c:	40f80833          	sub	a6,a6,a5
   1cd80:	010595b3          	sll	a1,a1,a6
   1cd84:	00b36333          	or	t1,t1,a1
   1cd88:	4e01                	li	t3,0
   1cd8a:	00c885b3          	add	a1,a7,a2
   1cd8e:	40c00633          	neg	a2,a2
   1cd92:	04de4a63          	blt	t3,a3,1cde6 <__subtf3+0xed8>
   1cd96:	4611                	li	a2,4
   1cd98:	40e60733          	sub	a4,a2,a4
   1cd9c:	5632                	lw	a2,44(sp)
   1cd9e:	068a                	slli	a3,a3,0x2
   1cda0:	04068693          	addi	a3,a3,64
   1cda4:	968a                	add	a3,a3,sp
   1cda6:	00f657b3          	srl	a5,a2,a5
   1cdaa:	fef6a023          	sw	a5,-32(a3)
   1cdae:	4691                	li	a3,4
   1cdb0:	8e99                	sub	a3,a3,a4
   1cdb2:	070a                	slli	a4,a4,0x2
   1cdb4:	00e887b3          	add	a5,a7,a4
   1cdb8:	00269713          	slli	a4,a3,0x2
   1cdbc:	46a1                	li	a3,8
   1cdbe:	00d76863          	bltu	a4,a3,1cdce <__subtf3+0xec0>
   1cdc2:	0007a023          	sw	zero,0(a5)
   1cdc6:	0007a223          	sw	zero,4(a5)
   1cdca:	1761                	addi	a4,a4,-8
   1cdcc:	07a1                	addi	a5,a5,8
   1cdce:	4691                	li	a3,4
   1cdd0:	00d76463          	bltu	a4,a3,1cdd8 <__subtf3+0xeca>
   1cdd4:	0007a023          	sw	zero,0(a5)
   1cdd8:	5702                	lw	a4,32(sp)
   1cdda:	006037b3          	snez	a5,t1
   1cdde:	8fd9                	or	a5,a5,a4
   1cde0:	d03e                	sw	a5,32(sp)
   1cde2:	e6eff06f          	j	1c450 <__subtf3+0x542>
   1cde6:	4188                	lw	a0,0(a1)
   1cde8:	0045ae83          	lw	t4,4(a1)
   1cdec:	00c58f33          	add	t5,a1,a2
   1cdf0:	00f55533          	srl	a0,a0,a5
   1cdf4:	010e9eb3          	sll	t4,t4,a6
   1cdf8:	01d56533          	or	a0,a0,t4
   1cdfc:	00af2023          	sw	a0,0(t5)
   1ce00:	0e05                	addi	t3,t3,1
   1ce02:	0591                	addi	a1,a1,4
   1ce04:	b779                	j	1cd92 <__subtf3+0xe84>
   1ce06:	5732                	lw	a4,44(sp)
   1ce08:	fff806b7          	lui	a3,0xfff80
   1ce0c:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff6157b>
   1ce0e:	8f75                	and	a4,a4,a3
   1ce10:	40f407b3          	sub	a5,s0,a5
   1ce14:	d63a                	sw	a4,44(sp)
   1ce16:	f8aff06f          	j	1c5a0 <__subtf3+0x692>
   1ce1a:	da2e                	sw	a1,52(sp)
   1ce1c:	d83e                	sw	a5,48(sp)
   1ce1e:	dc32                	sw	a2,56(sp)
   1ce20:	de36                	sw	a3,60(sp)
   1ce22:	1818                	addi	a4,sp,48
   1ce24:	104c                	addi	a1,sp,36
   1ce26:	4754                	lw	a3,12(a4)
   1ce28:	4710                	lw	a2,8(a4)
   1ce2a:	1771                	addi	a4,a4,-4
   1ce2c:	0686                	slli	a3,a3,0x1
   1ce2e:	827d                	srli	a2,a2,0x1f
   1ce30:	8ed1                	or	a3,a3,a2
   1ce32:	cb14                	sw	a3,16(a4)
   1ce34:	fee599e3          	bne	a1,a4,1ce26 <__subtf3+0xf18>
   1ce38:	0786                	slli	a5,a5,0x1
   1ce3a:	0077f713          	andi	a4,a5,7
   1ce3e:	4401                	li	s0,0
   1ce40:	cf0d                	beqz	a4,1ce7a <__subtf3+0xf6c>
   1ce42:	4709                	li	a4,2
   1ce44:	56f2                	lw	a3,60(sp)
   1ce46:	14ea0463          	beq	s4,a4,1cf8e <__subtf3+0x1080>
   1ce4a:	470d                	li	a4,3
   1ce4c:	12ea0b63          	beq	s4,a4,1cf82 <__subtf3+0x1074>
   1ce50:	020a1463          	bnez	s4,1ce78 <__subtf3+0xf6a>
   1ce54:	00f7f713          	andi	a4,a5,15
   1ce58:	4611                	li	a2,4
   1ce5a:	00c70f63          	beq	a4,a2,1ce78 <__subtf3+0xf6a>
   1ce5e:	0791                	addi	a5,a5,4
   1ce60:	0047b793          	sltiu	a5,a5,4
   1ce64:	5752                	lw	a4,52(sp)
   1ce66:	973e                	add	a4,a4,a5
   1ce68:	00f73733          	sltu	a4,a4,a5
   1ce6c:	57e2                	lw	a5,56(sp)
   1ce6e:	97ba                	add	a5,a5,a4
   1ce70:	00e7b7b3          	sltu	a5,a5,a4
   1ce74:	97b6                	add	a5,a5,a3
   1ce76:	de3e                	sw	a5,60(sp)
   1ce78:	4405                	li	s0,1
   1ce7a:	56f2                	lw	a3,60(sp)
   1ce7c:	4781                	li	a5,0
   1ce7e:	82d1                	srli	a3,a3,0x14
   1ce80:	0016c693          	xori	a3,a3,1
   1ce84:	8a85                	andi	a3,a3,1
   1ce86:	5702                	lw	a4,32(sp)
   1ce88:	00777613          	andi	a2,a4,7
   1ce8c:	c229                	beqz	a2,1cece <__subtf3+0xfc0>
   1ce8e:	4589                	li	a1,2
   1ce90:	5632                	lw	a2,44(sp)
   1ce92:	10ba0863          	beq	s4,a1,1cfa2 <__subtf3+0x1094>
   1ce96:	458d                	li	a1,3
   1ce98:	0eba0e63          	beq	s4,a1,1cf94 <__subtf3+0x1086>
   1ce9c:	020a1763          	bnez	s4,1ceca <__subtf3+0xfbc>
   1cea0:	00f77593          	andi	a1,a4,15
   1cea4:	4511                	li	a0,4
   1cea6:	02a58263          	beq	a1,a0,1ceca <__subtf3+0xfbc>
   1ceaa:	0711                	addi	a4,a4,4
   1ceac:	d03a                	sw	a4,32(sp)
   1ceae:	00473713          	sltiu	a4,a4,4
   1ceb2:	5592                	lw	a1,36(sp)
   1ceb4:	972e                	add	a4,a4,a1
   1ceb6:	d23a                	sw	a4,36(sp)
   1ceb8:	00b73733          	sltu	a4,a4,a1
   1cebc:	55a2                	lw	a1,40(sp)
   1cebe:	972e                	add	a4,a4,a1
   1cec0:	d43a                	sw	a4,40(sp)
   1cec2:	00b73733          	sltu	a4,a4,a1
   1cec6:	9732                	add	a4,a4,a2
   1cec8:	d63a                	sw	a4,44(sp)
   1ceca:	00146413          	ori	s0,s0,1
   1cece:	c689                	beqz	a3,1ced8 <__subtf3+0xfca>
   1ced0:	00147713          	andi	a4,s0,1
   1ced4:	0706                	slli	a4,a4,0x1
   1ced6:	8c59                	or	s0,s0,a4
   1ced8:	5732                	lw	a4,44(sp)
   1ceda:	00c71693          	slli	a3,a4,0xc
   1cede:	0006dc63          	bgez	a3,1cef6 <__subtf3+0xfe8>
   1cee2:	66a1                	lui	a3,0x8
   1cee4:	0785                	addi	a5,a5,1
   1cee6:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1cee8:	0cd78063          	beq	a5,a3,1cfa8 <__subtf3+0x109a>
   1ceec:	fff806b7          	lui	a3,0xfff80
   1cef0:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff6157b>
   1cef2:	8f75                	and	a4,a4,a3
   1cef4:	d63a                	sw	a4,44(sp)
   1cef6:	1018                	addi	a4,sp,32
   1cef8:	106c                	addi	a1,sp,44
   1cefa:	4314                	lw	a3,0(a4)
   1cefc:	4350                	lw	a2,4(a4)
   1cefe:	828d                	srli	a3,a3,0x3
   1cf00:	0676                	slli	a2,a2,0x1d
   1cf02:	8ed1                	or	a3,a3,a2
   1cf04:	c314                	sw	a3,0(a4)
   1cf06:	0711                	addi	a4,a4,4
   1cf08:	feb719e3          	bne	a4,a1,1cefa <__subtf3+0xfec>
   1cf0c:	56b2                	lw	a3,44(sp)
   1cf0e:	6621                	lui	a2,0x8
   1cf10:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   1cf14:	828d                	srli	a3,a3,0x3
   1cf16:	d636                	sw	a3,44(sp)
   1cf18:	00e79e63          	bne	a5,a4,1cf34 <__subtf3+0x1026>
   1cf1c:	5592                	lw	a1,36(sp)
   1cf1e:	5702                	lw	a4,32(sp)
   1cf20:	8f4d                	or	a4,a4,a1
   1cf22:	55a2                	lw	a1,40(sp)
   1cf24:	8f4d                	or	a4,a4,a1
   1cf26:	8f55                	or	a4,a4,a3
   1cf28:	c711                	beqz	a4,1cf34 <__subtf3+0x1026>
   1cf2a:	d632                	sw	a2,44(sp)
   1cf2c:	d402                	sw	zero,40(sp)
   1cf2e:	d202                	sw	zero,36(sp)
   1cf30:	d002                	sw	zero,32(sp)
   1cf32:	4981                	li	s3,0
   1cf34:	55b2                	lw	a1,44(sp)
   1cf36:	07c6                	slli	a5,a5,0x11
   1cf38:	83c5                	srli	a5,a5,0x11
   1cf3a:	09be                	slli	s3,s3,0xf
   1cf3c:	00f9e9b3          	or	s3,s3,a5
   1cf40:	02b11e23          	sh	a1,60(sp)
   1cf44:	03311f23          	sh	s3,62(sp)
   1cf48:	5602                	lw	a2,32(sp)
   1cf4a:	5692                	lw	a3,36(sp)
   1cf4c:	5722                	lw	a4,40(sp)
   1cf4e:	57f2                	lw	a5,60(sp)
   1cf50:	c019                	beqz	s0,1cf56 <__subtf3+0x1048>
   1cf52:	00142073          	csrs	fflags,s0
   1cf56:	50b6                	lw	ra,108(sp)
   1cf58:	5426                	lw	s0,104(sp)
   1cf5a:	00c92023          	sw	a2,0(s2)
   1cf5e:	00d92223          	sw	a3,4(s2)
   1cf62:	00e92423          	sw	a4,8(s2)
   1cf66:	00f92623          	sw	a5,12(s2)
   1cf6a:	5496                	lw	s1,100(sp)
   1cf6c:	49f6                	lw	s3,92(sp)
   1cf6e:	4a66                	lw	s4,88(sp)
   1cf70:	4ad6                	lw	s5,84(sp)
   1cf72:	4b46                	lw	s6,80(sp)
   1cf74:	4bb6                	lw	s7,76(sp)
   1cf76:	4c26                	lw	s8,72(sp)
   1cf78:	4c96                	lw	s9,68(sp)
   1cf7a:	854a                	mv	a0,s2
   1cf7c:	5906                	lw	s2,96(sp)
   1cf7e:	6165                	addi	sp,sp,112
   1cf80:	8082                	ret
   1cf82:	ee099be3          	bnez	s3,1ce78 <__subtf3+0xf6a>
   1cf86:	07a1                	addi	a5,a5,8
   1cf88:	0087b793          	sltiu	a5,a5,8
   1cf8c:	bde1                	j	1ce64 <__subtf3+0xf56>
   1cf8e:	ee0985e3          	beqz	s3,1ce78 <__subtf3+0xf6a>
   1cf92:	bfd5                	j	1cf86 <__subtf3+0x1078>
   1cf94:	f2099be3          	bnez	s3,1ceca <__subtf3+0xfbc>
   1cf98:	0721                	addi	a4,a4,8
   1cf9a:	d03a                	sw	a4,32(sp)
   1cf9c:	00873713          	sltiu	a4,a4,8
   1cfa0:	bf09                	j	1ceb2 <__subtf3+0xfa4>
   1cfa2:	f20984e3          	beqz	s3,1ceca <__subtf3+0xfbc>
   1cfa6:	bfcd                	j	1cf98 <__subtf3+0x108a>
   1cfa8:	4701                	li	a4,0
   1cfaa:	020a0063          	beqz	s4,1cfca <__subtf3+0x10bc>
   1cfae:	468d                	li	a3,3
   1cfb0:	00da1863          	bne	s4,a3,1cfc0 <__subtf3+0x10b2>
   1cfb4:	00098b63          	beqz	s3,1cfca <__subtf3+0x10bc>
   1cfb8:	67a1                	lui	a5,0x8
   1cfba:	577d                	li	a4,-1
   1cfbc:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1cfbe:	a031                	j	1cfca <__subtf3+0x10bc>
   1cfc0:	4689                	li	a3,2
   1cfc2:	feda1be3          	bne	s4,a3,1cfb8 <__subtf3+0x10aa>
   1cfc6:	fe0989e3          	beqz	s3,1cfb8 <__subtf3+0x10aa>
   1cfca:	d63a                	sw	a4,44(sp)
   1cfcc:	d43a                	sw	a4,40(sp)
   1cfce:	d23a                	sw	a4,36(sp)
   1cfd0:	d03a                	sw	a4,32(sp)
   1cfd2:	00546413          	ori	s0,s0,5
   1cfd6:	b705                	j	1cef6 <__subtf3+0xfe8>
   1cfd8:	d636                	sw	a3,44(sp)
   1cfda:	c76ff06f          	j	1c450 <__subtf3+0x542>
   1cfde:	d68a8763          	beq	s5,s0,1c54c <__subtf3+0x63e>
   1cfe2:	4401                	li	s0,0
   1cfe4:	d16ff06f          	j	1c4fa <__subtf3+0x5ec>
   1cfe8:	b68a8de3          	beq	s5,s0,1cb62 <__subtf3+0xc54>
   1cfec:	4401                	li	s0,0
   1cfee:	b699                	j	1cb34 <__subtf3+0xc26>

0001cff0 <__unordtf2>:
   1cff0:	4114                	lw	a3,0(a0)
   1cff2:	00452f03          	lw	t5,4(a0)
   1cff6:	00852e83          	lw	t4,8(a0)
   1cffa:	4550                	lw	a2,12(a0)
   1cffc:	419c                	lw	a5,0(a1)
   1cffe:	0045ae03          	lw	t3,4(a1)
   1d002:	0085a303          	lw	t1,8(a1)
   1d006:	45d8                	lw	a4,12(a1)
   1d008:	1141                	addi	sp,sp,-16
   1d00a:	002025f3          	frrm	a1
   1d00e:	6521                	lui	a0,0x8
   1d010:	01061813          	slli	a6,a2,0x10
   1d014:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1d016:	8241                	srli	a2,a2,0x10
   1d018:	01071593          	slli	a1,a4,0x10
   1d01c:	8e69                	and	a2,a2,a0
   1d01e:	8341                	srli	a4,a4,0x10
   1d020:	01085813          	srli	a6,a6,0x10
   1d024:	81c1                	srli	a1,a1,0x10
   1d026:	8f69                	and	a4,a4,a0
   1d028:	00a61963          	bne	a2,a0,1d03a <__unordtf2+0x4a>
   1d02c:	01e6e533          	or	a0,a3,t5
   1d030:	01d56533          	or	a0,a0,t4
   1d034:	01056533          	or	a0,a0,a6
   1d038:	e51d                	bnez	a0,1d066 <__unordtf2+0x76>
   1d03a:	68a1                	lui	a7,0x8
   1d03c:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   1d03e:	4501                	li	a0,0
   1d040:	05171c63          	bne	a4,a7,1d098 <__unordtf2+0xa8>
   1d044:	01c7e8b3          	or	a7,a5,t3
   1d048:	0068e8b3          	or	a7,a7,t1
   1d04c:	00b8e8b3          	or	a7,a7,a1
   1d050:	04088463          	beqz	a7,1d098 <__unordtf2+0xa8>
   1d054:	02e61a63          	bne	a2,a4,1d088 <__unordtf2+0x98>
   1d058:	01e6e6b3          	or	a3,a3,t5
   1d05c:	01d6e6b3          	or	a3,a3,t4
   1d060:	0106e6b3          	or	a3,a3,a6
   1d064:	ca99                	beqz	a3,1d07a <__unordtf2+0x8a>
   1d066:	0842                	slli	a6,a6,0x10
   1d068:	41085813          	srai	a6,a6,0x10
   1d06c:	02085363          	bgez	a6,1d092 <__unordtf2+0xa2>
   1d070:	66a1                	lui	a3,0x8
   1d072:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1d074:	4505                	li	a0,1
   1d076:	02d71163          	bne	a4,a3,1d098 <__unordtf2+0xa8>
   1d07a:	01c7e7b3          	or	a5,a5,t3
   1d07e:	0067e7b3          	or	a5,a5,t1
   1d082:	8fcd                	or	a5,a5,a1
   1d084:	4505                	li	a0,1
   1d086:	cb89                	beqz	a5,1d098 <__unordtf2+0xa8>
   1d088:	05c2                	slli	a1,a1,0x10
   1d08a:	85c1                	srai	a1,a1,0x10
   1d08c:	4505                	li	a0,1
   1d08e:	0005c563          	bltz	a1,1d098 <__unordtf2+0xa8>
   1d092:	00186073          	csrsi	fflags,16
   1d096:	4505                	li	a0,1
   1d098:	0141                	addi	sp,sp,16
   1d09a:	8082                	ret

0001d09c <__fixtfsi>:
   1d09c:	411c                	lw	a5,0(a0)
   1d09e:	00452803          	lw	a6,4(a0)
   1d0a2:	4518                	lw	a4,8(a0)
   1d0a4:	4550                	lw	a2,12(a0)
   1d0a6:	1101                	addi	sp,sp,-32
   1d0a8:	002026f3          	frrm	a3
   1d0ac:	01061693          	slli	a3,a2,0x10
   1d0b0:	00161593          	slli	a1,a2,0x1
   1d0b4:	c632                	sw	a2,12(sp)
   1d0b6:	01f65893          	srli	a7,a2,0x1f
   1d0ba:	6611                	lui	a2,0x4
   1d0bc:	c03e                	sw	a5,0(sp)
   1d0be:	c242                	sw	a6,4(sp)
   1d0c0:	c43a                	sw	a4,8(sp)
   1d0c2:	c83e                	sw	a5,16(sp)
   1d0c4:	ca42                	sw	a6,20(sp)
   1d0c6:	cc3a                	sw	a4,24(sp)
   1d0c8:	81c5                	srli	a1,a1,0x11
   1d0ca:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   1d0cc:	82c1                	srli	a3,a3,0x10
   1d0ce:	00b64a63          	blt	a2,a1,1d0e2 <__fixtfsi+0x46>
   1d0d2:	e9f9                	bnez	a1,1d1a8 <__fixtfsi+0x10c>
   1d0d4:	0107e533          	or	a0,a5,a6
   1d0d8:	8d59                	or	a0,a0,a4
   1d0da:	8d55                	or	a0,a0,a3
   1d0dc:	e571                	bnez	a0,1d1a8 <__fixtfsi+0x10c>
   1d0de:	6105                	addi	sp,sp,32
   1d0e0:	8082                	ret
   1d0e2:	6511                	lui	a0,0x4
   1d0e4:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   1d0e6:	8646                	mv	a2,a7
   1d0e8:	02b55763          	bge	a0,a1,1d116 <__fixtfsi+0x7a>
   1d0ec:	0c088163          	beqz	a7,1d1ae <__fixtfsi+0x112>
   1d0f0:	6511                	lui	a0,0x4
   1d0f2:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   1d0f4:	0ca59263          	bne	a1,a0,1d1b8 <__fixtfsi+0x11c>
   1d0f8:	01175593          	srli	a1,a4,0x11
   1d0fc:	06be                	slli	a3,a3,0xf
   1d0fe:	8ecd                	or	a3,a3,a1
   1d100:	eec5                	bnez	a3,1d1b8 <__fixtfsi+0x11c>
   1d102:	0107e7b3          	or	a5,a5,a6
   1d106:	073e                	slli	a4,a4,0xf
   1d108:	8f5d                	or	a4,a4,a5
   1d10a:	80000537          	lui	a0,0x80000
   1d10e:	db61                	beqz	a4,1d0de <__fixtfsi+0x42>
   1d110:	00162073          	csrs	fflags,a2
   1d114:	b7e9                	j	1d0de <__fixtfsi+0x42>
   1d116:	67c1                	lui	a5,0x10
   1d118:	8fd5                	or	a5,a5,a3
   1d11a:	6691                	lui	a3,0x4
   1d11c:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   1d120:	8e8d                	sub	a3,a3,a1
   1d122:	4056d513          	srai	a0,a3,0x5
   1d126:	ce3e                	sw	a5,28(sp)
   1d128:	8afd                	andi	a3,a3,31
   1d12a:	080c                	addi	a1,sp,16
   1d12c:	4801                	li	a6,0
   1d12e:	4601                	li	a2,0
   1d130:	0005a303          	lw	t1,0(a1)
   1d134:	0605                	addi	a2,a2,1
   1d136:	0591                	addi	a1,a1,4
   1d138:	00686833          	or	a6,a6,t1
   1d13c:	fec51ae3          	bne	a0,a2,1d130 <__fixtfsi+0x94>
   1d140:	00251613          	slli	a2,a0,0x2
   1d144:	e28d                	bnez	a3,1d166 <__fixtfsi+0xca>
   1d146:	02060793          	addi	a5,a2,32
   1d14a:	00278633          	add	a2,a5,sp
   1d14e:	ff062783          	lw	a5,-16(a2)
   1d152:	c83e                	sw	a5,16(sp)
   1d154:	4542                	lw	a0,16(sp)
   1d156:	00088463          	beqz	a7,1d15e <__fixtfsi+0xc2>
   1d15a:	40a00533          	neg	a0,a0
   1d15e:	4605                	li	a2,1
   1d160:	fa0818e3          	bnez	a6,1d110 <__fixtfsi+0x74>
   1d164:	bfad                	j	1d0de <__fixtfsi+0x42>
   1d166:	02060613          	addi	a2,a2,32
   1d16a:	960a                	add	a2,a2,sp
   1d16c:	ff062603          	lw	a2,-16(a2)
   1d170:	02000593          	li	a1,32
   1d174:	8d95                	sub	a1,a1,a3
   1d176:	00b61633          	sll	a2,a2,a1
   1d17a:	4309                	li	t1,2
   1d17c:	00c86833          	or	a6,a6,a2
   1d180:	4601                	li	a2,0
   1d182:	00651963          	bne	a0,t1,1d194 <__fixtfsi+0xf8>
   1d186:	00d75733          	srl	a4,a4,a3
   1d18a:	00b795b3          	sll	a1,a5,a1
   1d18e:	8f4d                	or	a4,a4,a1
   1d190:	c83a                	sw	a4,16(sp)
   1d192:	4605                	li	a2,1
   1d194:	060a                	slli	a2,a2,0x2
   1d196:	02060713          	addi	a4,a2,32
   1d19a:	00270633          	add	a2,a4,sp
   1d19e:	00d7d7b3          	srl	a5,a5,a3
   1d1a2:	fef62823          	sw	a5,-16(a2)
   1d1a6:	b77d                	j	1d154 <__fixtfsi+0xb8>
   1d1a8:	4605                	li	a2,1
   1d1aa:	4501                	li	a0,0
   1d1ac:	b795                	j	1d110 <__fixtfsi+0x74>
   1d1ae:	80000537          	lui	a0,0x80000
   1d1b2:	4641                	li	a2,16
   1d1b4:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe157b>
   1d1b6:	bfa9                	j	1d110 <__fixtfsi+0x74>
   1d1b8:	4641                	li	a2,16
   1d1ba:	80000537          	lui	a0,0x80000
   1d1be:	bf89                	j	1d110 <__fixtfsi+0x74>

0001d1c0 <__floatsitf>:
   1d1c0:	7179                	addi	sp,sp,-48
   1d1c2:	d226                	sw	s1,36(sp)
   1d1c4:	d606                	sw	ra,44(sp)
   1d1c6:	d422                	sw	s0,40(sp)
   1d1c8:	d04a                	sw	s2,32(sp)
   1d1ca:	84aa                	mv	s1,a0
   1d1cc:	cdcd                	beqz	a1,1d286 <__floatsitf+0xc6>
   1d1ce:	41f5d793          	srai	a5,a1,0x1f
   1d1d2:	00b7c433          	xor	s0,a5,a1
   1d1d6:	8c1d                	sub	s0,s0,a5
   1d1d8:	8522                	mv	a0,s0
   1d1da:	01f5d913          	srli	s2,a1,0x1f
   1d1de:	2481                	jal	1d41e <__clzsi2>
   1d1e0:	6711                	lui	a4,0x4
   1d1e2:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1d1e4:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe15cd>
   1d1e8:	40a70633          	sub	a2,a4,a0
   1d1ec:	c822                	sw	s0,16(sp)
   1d1ee:	4057d713          	srai	a4,a5,0x5
   1d1f2:	ca02                	sw	zero,20(sp)
   1d1f4:	cc02                	sw	zero,24(sp)
   1d1f6:	ce02                	sw	zero,28(sp)
   1d1f8:	8bfd                	andi	a5,a5,31
   1d1fa:	c78d                	beqz	a5,1d224 <__floatsitf+0x64>
   1d1fc:	4689                	li	a3,2
   1d1fe:	08d71263          	bne	a4,a3,1d282 <__floatsitf+0xc2>
   1d202:	02000693          	li	a3,32
   1d206:	8e9d                	sub	a3,a3,a5
   1d208:	00d456b3          	srl	a3,s0,a3
   1d20c:	ce36                	sw	a3,28(sp)
   1d20e:	fff70693          	addi	a3,a4,-1
   1d212:	070a                	slli	a4,a4,0x2
   1d214:	02070713          	addi	a4,a4,32
   1d218:	970a                	add	a4,a4,sp
   1d21a:	00f41433          	sll	s0,s0,a5
   1d21e:	fe872823          	sw	s0,-16(a4)
   1d222:	a005                	j	1d242 <__floatsitf+0x82>
   1d224:	478d                	li	a5,3
   1d226:	8f99                	sub	a5,a5,a4
   1d228:	078a                	slli	a5,a5,0x2
   1d22a:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1d22e:	978a                	add	a5,a5,sp
   1d230:	ff07a783          	lw	a5,-16(a5)
   1d234:	4689                	li	a3,2
   1d236:	ce3e                	sw	a5,28(sp)
   1d238:	4789                	li	a5,2
   1d23a:	00f71463          	bne	a4,a5,1d242 <__floatsitf+0x82>
   1d23e:	cc22                	sw	s0,24(sp)
   1d240:	4685                	li	a3,1
   1d242:	068a                	slli	a3,a3,0x2
   1d244:	c802                	sw	zero,16(sp)
   1d246:	ca02                	sw	zero,20(sp)
   1d248:	16f1                	addi	a3,a3,-4
   1d24a:	4791                	li	a5,4
   1d24c:	00f6e363          	bltu	a3,a5,1d252 <__floatsitf+0x92>
   1d250:	cc02                	sw	zero,24(sp)
   1d252:	85ca                	mv	a1,s2
   1d254:	47f2                	lw	a5,28(sp)
   1d256:	00f59413          	slli	s0,a1,0xf
   1d25a:	8c51                	or	s0,s0,a2
   1d25c:	00811723          	sh	s0,14(sp)
   1d260:	00f11623          	sh	a5,12(sp)
   1d264:	4542                	lw	a0,16(sp)
   1d266:	46d2                	lw	a3,20(sp)
   1d268:	4762                	lw	a4,24(sp)
   1d26a:	47b2                	lw	a5,12(sp)
   1d26c:	50b2                	lw	ra,44(sp)
   1d26e:	5422                	lw	s0,40(sp)
   1d270:	c088                	sw	a0,0(s1)
   1d272:	c0d4                	sw	a3,4(s1)
   1d274:	c498                	sw	a4,8(s1)
   1d276:	c4dc                	sw	a5,12(s1)
   1d278:	5902                	lw	s2,32(sp)
   1d27a:	8526                	mv	a0,s1
   1d27c:	5492                	lw	s1,36(sp)
   1d27e:	6145                	addi	sp,sp,48
   1d280:	8082                	ret
   1d282:	470d                	li	a4,3
   1d284:	b769                	j	1d20e <__floatsitf+0x4e>
   1d286:	ce02                	sw	zero,28(sp)
   1d288:	cc02                	sw	zero,24(sp)
   1d28a:	ca02                	sw	zero,20(sp)
   1d28c:	c802                	sw	zero,16(sp)
   1d28e:	4601                	li	a2,0
   1d290:	b7d1                	j	1d254 <__floatsitf+0x94>

0001d292 <__extenddftf2>:
   1d292:	7139                	addi	sp,sp,-64
   1d294:	d84a                	sw	s2,48(sp)
   1d296:	d64e                	sw	s3,44(sp)
   1d298:	de06                	sw	ra,60(sp)
   1d29a:	dc22                	sw	s0,56(sp)
   1d29c:	da26                	sw	s1,52(sp)
   1d29e:	89aa                	mv	s3,a0
   1d2a0:	892e                	mv	s2,a1
   1d2a2:	002027f3          	frrm	a5
   1d2a6:	01465413          	srli	s0,a2,0x14
   1d2aa:	00c61793          	slli	a5,a2,0xc
   1d2ae:	7ff47413          	andi	s0,s0,2047
   1d2b2:	83b1                	srli	a5,a5,0xc
   1d2b4:	00140713          	addi	a4,s0,1
   1d2b8:	c82e                	sw	a1,16(sp)
   1d2ba:	ca3e                	sw	a5,20(sp)
   1d2bc:	ce02                	sw	zero,28(sp)
   1d2be:	cc02                	sw	zero,24(sp)
   1d2c0:	7fe77713          	andi	a4,a4,2046
   1d2c4:	01f65493          	srli	s1,a2,0x1f
   1d2c8:	c325                	beqz	a4,1d328 <__extenddftf2+0x96>
   1d2ca:	0047d693          	srli	a3,a5,0x4
   1d2ce:	6711                	lui	a4,0x4
   1d2d0:	ce36                	sw	a3,28(sp)
   1d2d2:	07f2                	slli	a5,a5,0x1c
   1d2d4:	0045d693          	srli	a3,a1,0x4
   1d2d8:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1d2dc:	8fd5                	or	a5,a5,a3
   1d2de:	01c59913          	slli	s2,a1,0x1c
   1d2e2:	9722                	add	a4,a4,s0
   1d2e4:	cc3e                	sw	a5,24(sp)
   1d2e6:	ca4a                	sw	s2,20(sp)
   1d2e8:	c802                	sw	zero,16(sp)
   1d2ea:	4401                	li	s0,0
   1d2ec:	47f2                	lw	a5,28(sp)
   1d2ee:	04be                	slli	s1,s1,0xf
   1d2f0:	8cd9                	or	s1,s1,a4
   1d2f2:	00f11623          	sh	a5,12(sp)
   1d2f6:	00911723          	sh	s1,14(sp)
   1d2fa:	45c2                	lw	a1,16(sp)
   1d2fc:	4652                	lw	a2,20(sp)
   1d2fe:	46e2                	lw	a3,24(sp)
   1d300:	47b2                	lw	a5,12(sp)
   1d302:	c019                	beqz	s0,1d308 <__extenddftf2+0x76>
   1d304:	00186073          	csrsi	fflags,16
   1d308:	50f2                	lw	ra,60(sp)
   1d30a:	5462                	lw	s0,56(sp)
   1d30c:	00b9a023          	sw	a1,0(s3)
   1d310:	00c9a223          	sw	a2,4(s3)
   1d314:	00d9a423          	sw	a3,8(s3)
   1d318:	00f9a623          	sw	a5,12(s3)
   1d31c:	54d2                	lw	s1,52(sp)
   1d31e:	5942                	lw	s2,48(sp)
   1d320:	854e                	mv	a0,s3
   1d322:	59b2                	lw	s3,44(sp)
   1d324:	6121                	addi	sp,sp,64
   1d326:	8082                	ret
   1d328:	00b7e533          	or	a0,a5,a1
   1d32c:	e061                	bnez	s0,1d3ec <__extenddftf2+0x15a>
   1d32e:	4701                	li	a4,0
   1d330:	dd55                	beqz	a0,1d2ec <__extenddftf2+0x5a>
   1d332:	c7a1                	beqz	a5,1d37a <__extenddftf2+0xe8>
   1d334:	853e                	mv	a0,a5
   1d336:	20e5                	jal	1d41e <__clzsi2>
   1d338:	03150693          	addi	a3,a0,49
   1d33c:	4056d793          	srai	a5,a3,0x5
   1d340:	8afd                	andi	a3,a3,31
   1d342:	c2a1                	beqz	a3,1d382 <__extenddftf2+0xf0>
   1d344:	5671                	li	a2,-4
   1d346:	02c78633          	mul	a2,a5,a2
   1d34a:	02000813          	li	a6,32
   1d34e:	01010313          	addi	t1,sp,16
   1d352:	40d80833          	sub	a6,a6,a3
   1d356:	00c60713          	addi	a4,a2,12
   1d35a:	971a                	add	a4,a4,t1
   1d35c:	40c00633          	neg	a2,a2
   1d360:	06e31763          	bne	t1,a4,1d3ce <__extenddftf2+0x13c>
   1d364:	fff78713          	addi	a4,a5,-1
   1d368:	078a                	slli	a5,a5,0x2
   1d36a:	02078793          	addi	a5,a5,32
   1d36e:	978a                	add	a5,a5,sp
   1d370:	00d916b3          	sll	a3,s2,a3
   1d374:	fed7a823          	sw	a3,-16(a5)
   1d378:	a025                	j	1d3a0 <__extenddftf2+0x10e>
   1d37a:	2055                	jal	1d41e <__clzsi2>
   1d37c:	02050513          	addi	a0,a0,32
   1d380:	bf65                	j	1d338 <__extenddftf2+0xa6>
   1d382:	5671                	li	a2,-4
   1d384:	02c78633          	mul	a2,a5,a2
   1d388:	0878                	addi	a4,sp,28
   1d38a:	468d                	li	a3,3
   1d38c:	00c705b3          	add	a1,a4,a2
   1d390:	418c                	lw	a1,0(a1)
   1d392:	16fd                	addi	a3,a3,-1
   1d394:	1771                	addi	a4,a4,-4
   1d396:	c34c                	sw	a1,4(a4)
   1d398:	fef6dae3          	bge	a3,a5,1d38c <__extenddftf2+0xfa>
   1d39c:	fff78713          	addi	a4,a5,-1
   1d3a0:	00170793          	addi	a5,a4,1
   1d3a4:	078a                	slli	a5,a5,0x2
   1d3a6:	46a1                	li	a3,8
   1d3a8:	0818                	addi	a4,sp,16
   1d3aa:	00d7e863          	bltu	a5,a3,1d3ba <__extenddftf2+0x128>
   1d3ae:	00072023          	sw	zero,0(a4)
   1d3b2:	00072223          	sw	zero,4(a4)
   1d3b6:	17e1                	addi	a5,a5,-8
   1d3b8:	0838                	addi	a4,sp,24
   1d3ba:	4691                	li	a3,4
   1d3bc:	00d7e463          	bltu	a5,a3,1d3c4 <__extenddftf2+0x132>
   1d3c0:	00072023          	sw	zero,0(a4)
   1d3c4:	6711                	lui	a4,0x4
   1d3c6:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1d3ca:	8f09                	sub	a4,a4,a0
   1d3cc:	b705                	j	1d2ec <__extenddftf2+0x5a>
   1d3ce:	430c                	lw	a1,0(a4)
   1d3d0:	ffc72883          	lw	a7,-4(a4)
   1d3d4:	00c70e33          	add	t3,a4,a2
   1d3d8:	00d595b3          	sll	a1,a1,a3
   1d3dc:	0108d8b3          	srl	a7,a7,a6
   1d3e0:	0115e5b3          	or	a1,a1,a7
   1d3e4:	00be2023          	sw	a1,0(t3)
   1d3e8:	1771                	addi	a4,a4,-4
   1d3ea:	bf9d                	j	1d360 <__extenddftf2+0xce>
   1d3ec:	c515                	beqz	a0,1d418 <__extenddftf2+0x186>
   1d3ee:	01c79713          	slli	a4,a5,0x1c
   1d3f2:	0045d693          	srli	a3,a1,0x4
   1d3f6:	8f55                	or	a4,a4,a3
   1d3f8:	00080437          	lui	s0,0x80
   1d3fc:	0087b433          	sltu	s0,a5,s0
   1d400:	cc3a                	sw	a4,24(sp)
   1d402:	8391                	srli	a5,a5,0x4
   1d404:	6721                	lui	a4,0x8
   1d406:	01c59913          	slli	s2,a1,0x1c
   1d40a:	8fd9                	or	a5,a5,a4
   1d40c:	0412                	slli	s0,s0,0x4
   1d40e:	ca4a                	sw	s2,20(sp)
   1d410:	c802                	sw	zero,16(sp)
   1d412:	ce3e                	sw	a5,28(sp)
   1d414:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1d416:	bdd9                	j	1d2ec <__extenddftf2+0x5a>
   1d418:	4401                	li	s0,0
   1d41a:	6721                	lui	a4,0x8
   1d41c:	bfe5                	j	1d414 <__extenddftf2+0x182>

0001d41e <__clzsi2>:
   1d41e:	67c1                	lui	a5,0x10
   1d420:	02f57563          	bgeu	a0,a5,1d44a <__clzsi2+0x2c>
   1d424:	10053793          	sltiu	a5,a0,256
   1d428:	0017b793          	seqz	a5,a5
   1d42c:	078e                	slli	a5,a5,0x3
   1d42e:	6779                	lui	a4,0x1e
   1d430:	02000693          	li	a3,32
   1d434:	8e9d                	sub	a3,a3,a5
   1d436:	00f55533          	srl	a0,a0,a5
   1d43a:	bf070793          	addi	a5,a4,-1040 # 1dbf0 <__clz_tab>
   1d43e:	97aa                	add	a5,a5,a0
   1d440:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1d444:	40a68533          	sub	a0,a3,a0
   1d448:	8082                	ret
   1d44a:	01000737          	lui	a4,0x1000
   1d44e:	47e1                	li	a5,24
   1d450:	fce57fe3          	bgeu	a0,a4,1d42e <__clzsi2+0x10>
   1d454:	47c1                	li	a5,16
   1d456:	bfe1                	j	1d42e <__clzsi2+0x10>
